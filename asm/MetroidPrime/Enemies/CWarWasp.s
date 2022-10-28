.include "macros.inc"

.section .data
.balign 8

.global lbl_803DFF90
lbl_803DFF90:
	# ROM: 0x3DCF90
	.4byte 0
	.4byte 0
	.4byte __dt__8CWarWaspFv
	.4byte Accept__8CWarWaspFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__8CWarWaspFfR13CStateManager
	.4byte AcceptScriptMsg__8CWarWaspF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__8CWarWaspCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__8CWarWaspFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__8CWarWaspCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__8CWarWaspFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__8CWarWaspCFv
	.4byte Listen__8CWarWaspFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__8CWarWaspCFv
	.4byte Patrol__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Deactivate__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Attack__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__8CWarWaspFR13CStateManager9EStateMsgf
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
	.4byte ProjectileAttack__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Retreat__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__8CWarWaspFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__8CWarWaspFR13CStateManagerf
	.4byte Leash__8CWarWaspFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__8CWarWaspFR13CStateManagerf
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
	.4byte AnimOver__8CWarWaspFR13CStateManagerf
	.4byte ShouldAttack__8CWarWaspFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__8CWarWaspFR13CStateManagerf
	.4byte ShouldTurn__8CWarWaspFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__8CWarWaspFR13CStateManagerf
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
	.4byte ShouldFire__8CWarWaspFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__8CWarWaspFR13CStateManagerf
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
	.4byte ShouldSpecialAttack__8CWarWaspFR13CStateManagerf
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
	.4byte GetSearchPath__8CWarWaspFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte ProjectileInfo__8CWarWaspFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E025C
lbl_803E025C:
	# ROM: 0x3DD25C
	.4byte lbl_801103C4
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_801106D4
	.4byte lbl_801106EC
	.4byte lbl_80110700
	.4byte lbl_80110710
	.4byte lbl_801106A4
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte lbl_80110710
	.4byte 0

.section .sdata
.balign 8


.global lbl_805A75C8
lbl_805A75C8:
	# ROM: 0x3F4F68
	.4byte 0x00000013

.global lbl_805A75CC
lbl_805A75CC:
	# ROM: 0x3F4F6C
	.4byte 0x00000013

.global lbl_805A75D0
lbl_805A75D0:
	# ROM: 0x3F4F70
	.4byte 0x00000013

.global lbl_805A75D4
lbl_805A75D4:
	# ROM: 0x3F4F74
	.4byte 0x00000020

.global lbl_805A75D8
lbl_805A75D8:
	# ROM: 0x3F4F78
	.4byte 0x00000023

.global lbl_805A75DC
lbl_805A75DC:
	# ROM: 0x3F4F7C
	.float 1.0

.global lbl_805A75E0
lbl_805A75E0:
	# ROM: 0x3F4F80
	.4byte 0x00000021

.global lbl_805A75E4
lbl_805A75E4:
	# ROM: 0x3F4F84
	.4byte 0x00000013

.global lbl_805A75E8
lbl_805A75E8:
	# ROM: 0x3F4F88
	.4byte 0x00000020
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AB1E0
lbl_805AB1E0:
	# ROM: 0x3F7A80
	.4byte lbl_803CF1E4

.global lbl_805AB1E4
lbl_805AB1E4:
	# ROM: 0x3F7A84
	.4byte 0x3E32B8C2

.global lbl_805AB1E8
lbl_805AB1E8:
	# ROM: 0x3F7A88
	.4byte 0x3EB6DB6E

.global lbl_805AB1EC
lbl_805AB1EC:
	# ROM: 0x3F7A8C
	.4byte 0x40333333

.global lbl_805AB1F0
lbl_805AB1F0:
	# ROM: 0x3F7A90
	.float 2.0

.global lbl_805AB1F4
lbl_805AB1F4:
	# ROM: 0x3F7A94
	.4byte 0x3F4CCCCD

.global lbl_805AB1F8
lbl_805AB1F8:
	# ROM: 0x3F7A98
	.float 0.7

.global lbl_805AB1FC
lbl_805AB1FC:
	# ROM: 0x3F7A9C
	.float 1.0

.global lbl_805AB200
lbl_805AB200:
	# ROM: 0x3F7AA0
	.double 4.503601774854144E15

.global lbl_805AB208
lbl_805AB208:
	# ROM: 0x3F7AA8
	.4byte 0x3E32B8C2

.global lbl_805AB20C
lbl_805AB20C:
	# ROM: 0x3F7AAC
	.4byte 0x3FB2B8C4

.global lbl_805AB210
lbl_805AB210:
	# ROM: 0x3F7AB0
	.4byte 0

.global lbl_805AB214
lbl_805AB214:
	# ROM: 0x3F7AB4
	.4byte 0xC0400000

.global lbl_805AB218
lbl_805AB218:
	# ROM: 0x3F7AB8
	.4byte 0x40400000

.global lbl_805AB21C
lbl_805AB21C:
	# ROM: 0x3F7ABC
	.4byte 0xBF000000

.global lbl_805AB220
lbl_805AB220:
	# ROM: 0x3F7AC0
	.4byte 0x3EB2B8C2

.global lbl_805AB224
lbl_805AB224:
	# ROM: 0x3F7AC4
	.4byte 0x3F32B8C2

.global lbl_805AB228
lbl_805AB228:
	# ROM: 0x3F7AC8
	.float 0.9

.global lbl_805AB22C
lbl_805AB22C:
	# ROM: 0x3F7ACC
	.float 6.2831855

.global lbl_805AB230
lbl_805AB230:
	# ROM: 0x3F7AD0
	.float 0.5

.global lbl_805AB234
lbl_805AB234:
	# ROM: 0x3F7AD4
	.4byte 0xBFA00000

.global lbl_805AB238
lbl_805AB238:
	# ROM: 0x3F7AD8
	.4byte 0x40F00000

.global lbl_805AB23C
lbl_805AB23C:
	# ROM: 0x3F7ADC
	.4byte 0x42800000

.global lbl_805AB240
lbl_805AB240:
	# ROM: 0x3F7AE0
	.4byte 0x41200000

.global lbl_805AB244
lbl_805AB244:
	# ROM: 0x3F7AE4
	.float 15.0

.global lbl_805AB248
lbl_805AB248:
	# ROM: 0x3F7AE8
	.float 2.5

.global lbl_805AB24C
lbl_805AB24C:
	# ROM: 0x3F7AEC
	.float 0.01

.global lbl_805AB250
lbl_805AB250:
	# ROM: 0x3F7AF0
	.4byte 0x40490FDB

.global lbl_805AB254
lbl_805AB254:
	# ROM: 0x3F7AF4
	.float 0.1

.global lbl_805AB258
lbl_805AB258:
	# ROM: 0x3F7AF8
	.4byte 0x41F00000

.global lbl_805AB25C
lbl_805AB25C:
	# ROM: 0x3F7AFC
	.float -1.0

.global lbl_805AB260
lbl_805AB260:
	# ROM: 0x3F7B00
	.float 5.0

.global lbl_805AB264
lbl_805AB264:
	# ROM: 0x3F7B04
	.4byte 0x41100000

.global lbl_805AB268
lbl_805AB268:
	# ROM: 0x3F7B08
	.4byte 0xBD8F5C29

.global lbl_805AB26C
lbl_805AB26C:
	# ROM: 0x3F7B0C
	.float 0.7853982

.global lbl_805AB270
lbl_805AB270:
	# ROM: 0x3F7B10
	.4byte 0x3EC90FDB

.global lbl_805AB274
lbl_805AB274:
	# ROM: 0x3F7B14
	.float 0.017453292

.global lbl_805AB278
lbl_805AB278:
	# ROM: 0x3F7B18
	.4byte 0x42B48000

.global lbl_805AB27C
lbl_805AB27C:
	# ROM: 0x3F7B1C
	.4byte 0x3FC90FDB

.global lbl_805AB280
lbl_805AB280:
	# ROM: 0x3F7B20
	.4byte 0x3F67EF9E

.global lbl_805AB284
lbl_805AB284:
	# ROM: 0x3F7B24
	.4byte 0x42340000

.global lbl_805AB288
lbl_805AB288:
	# ROM: 0x3F7B28
	.4byte 0x3F2A7EFA

.global lbl_805AB28C
lbl_805AB28C:
	# ROM: 0x3F7B2C
	.4byte 0x3FE66666

.section .text, "ax"

.global GetSearchPath__8CWarWaspFv
GetSearchPath__8CWarWaspFv:
/* 8010ADC4 00107D24  38 63 05 90 */	addi r3, r3, 0x590
/* 8010ADC8 00107D28  4E 80 00 20 */	blr

.global IsListening__8CWarWaspCFv
IsListening__8CWarWaspCFv:
/* 8010ADCC 00107D2C  38 60 00 01 */	li r3, 1
/* 8010ADD0 00107D30  4E 80 00 20 */	blr

.global UpdateTelegraphMoveSpeed__8CWarWaspFR13CStateManager
UpdateTelegraphMoveSpeed__8CWarWaspFR13CStateManager:
/* 8010ADD4 00107D34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010ADD8 00107D38  7C 08 02 A6 */	mflr r0
/* 8010ADDC 00107D3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010ADE0 00107D40  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010ADE4 00107D44  7C 9F 23 78 */	mr r31, r4
/* 8010ADE8 00107D48  7F E5 FB 78 */	mr r5, r31
/* 8010ADEC 00107D4C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8010ADF0 00107D50  7C 7E 1B 78 */	mr r30, r3
/* 8010ADF4 00107D54  7F C4 F3 78 */	mr r4, r30
/* 8010ADF8 00107D58  80 C3 07 08 */	lwz r6, 0x708(r3)
/* 8010ADFC 00107D5C  38 61 00 0C */	addi r3, r1, 0xc
/* 8010AE00 00107D60  48 00 02 89 */	bl GetAttackTeamLeader__8CWarWaspFR13CStateManageri
/* 8010AE04 00107D64  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8010AE08 00107D68  7F E3 FB 78 */	mr r3, r31
/* 8010AE0C 00107D6C  38 81 00 08 */	addi r4, r1, 8
/* 8010AE10 00107D70  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010AE14 00107D74  B0 01 00 08 */	sth r0, 8(r1)
/* 8010AE18 00107D78  4B F4 17 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010AE1C 00107D7C  7C 64 1B 78 */	mr r4, r3
/* 8010AE20 00107D80  38 61 00 14 */	addi r3, r1, 0x14
/* 8010AE24 00107D84  4B F9 A5 45 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010AE28 00107D88  4B F9 A5 15 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010AE2C 00107D8C  28 03 00 00 */	cmplwi r3, 0
/* 8010AE30 00107D90  41 82 00 A4 */	beq lbl_8010AED4
/* 8010AE34 00107D94  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 8010AE38 00107D98  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010AE3C 00107D9C  7C 04 00 40 */	cmplw r4, r0
/* 8010AE40 00107DA0  40 82 00 88 */	bne lbl_8010AEC8
/* 8010AE44 00107DA4  C0 7E 03 38 */	lfs f3, 0x338(r30)
/* 8010AE48 00107DA8  3C 00 43 30 */	lis r0, 0x4330
/* 8010AE4C 00107DAC  C0 02 94 C8 */	lfs f0, lbl_805AB1E8@sda21(r2)
/* 8010AE50 00107DB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8010AE54 00107DB4  EC 23 00 32 */	fmuls f1, f3, f0
/* 8010AE58 00107DB8  C8 42 94 E0 */	lfd f2, lbl_805AB200@sda21(r2)
/* 8010AE5C 00107DBC  C0 02 94 CC */	lfs f0, lbl_805AB1EC@sda21(r2)
/* 8010AE60 00107DC0  C0 82 94 D0 */	lfs f4, lbl_805AB1F0@sda21(r2)
/* 8010AE64 00107DC4  FC 20 08 1E */	fctiwz f1, f1
/* 8010AE68 00107DC8  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 8010AE6C 00107DCC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8010AE70 00107DD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8010AE74 00107DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010AE78 00107DD8  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8010AE7C 00107DDC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8010AE80 00107DE0  EC 01 18 3C */	fnmsubs f0, f1, f0, f3
/* 8010AE84 00107DE4  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8010AE88 00107DE8  40 80 00 10 */	bge lbl_8010AE98
/* 8010AE8C 00107DEC  C0 1E 06 FC */	lfs f0, 0x6fc(r30)
/* 8010AE90 00107DF0  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 8010AE94 00107DF4  48 00 00 48 */	b lbl_8010AEDC
lbl_8010AE98:
/* 8010AE98 00107DF8  EC 60 20 28 */	fsubs f3, f0, f4
/* 8010AE9C 00107DFC  C0 22 94 D4 */	lfs f1, lbl_805AB1F4@sda21(r2)
/* 8010AEA0 00107E00  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010AEA4 00107E04  C0 42 94 D8 */	lfs f2, lbl_805AB1F8@sda21(r2)
/* 8010AEA8 00107E08  EC A3 08 24 */	fdivs f5, f3, f1
/* 8010AEAC 00107E0C  C0 7E 06 FC */	lfs f3, 0x6fc(r30)
/* 8010AEB0 00107E10  EC 20 28 28 */	fsubs f1, f0, f5
/* 8010AEB4 00107E14  EC 04 01 72 */	fmuls f0, f4, f5
/* 8010AEB8 00107E18  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8010AEBC 00107E1C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8010AEC0 00107E20  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 8010AEC4 00107E24  48 00 00 18 */	b lbl_8010AEDC
lbl_8010AEC8:
/* 8010AEC8 00107E28  C0 03 03 B4 */	lfs f0, 0x3b4(r3)
/* 8010AECC 00107E2C  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 8010AED0 00107E30  48 00 00 0C */	b lbl_8010AEDC
lbl_8010AED4:
/* 8010AED4 00107E34  C0 1E 06 FC */	lfs f0, 0x6fc(r30)
/* 8010AED8 00107E38  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_8010AEDC:
/* 8010AEDC 00107E3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010AEE0 00107E40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010AEE4 00107E44  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8010AEE8 00107E48  7C 08 03 A6 */	mtlr r0
/* 8010AEEC 00107E4C  38 21 00 30 */	addi r1, r1, 0x30
/* 8010AEF0 00107E50  4E 80 00 20 */	blr

.global CalcOffTotemAngle__8CWarWaspFR13CStateManager
CalcOffTotemAngle__8CWarWaspFR13CStateManager:
/* 8010AEF4 00107E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010AEF8 00107E58  7C 08 02 A6 */	mflr r0
/* 8010AEFC 00107E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010AF00 00107E60  80 64 09 00 */	lwz r3, 0x900(r4)
/* 8010AF04 00107E64  48 20 75 D9 */	bl Float__9CRandom16Fv
/* 8010AF08 00107E68  C0 42 94 EC */	lfs f2, lbl_805AB20C@sda21(r2)
/* 8010AF0C 00107E6C  C0 02 94 E8 */	lfs f0, lbl_805AB208@sda21(r2)
/* 8010AF10 00107E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010AF14 00107E74  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8010AF18 00107E78  7C 08 03 A6 */	mtlr r0
/* 8010AF1C 00107E7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8010AF20 00107E80  4E 80 00 20 */	blr

.global GetTeamZStratum__8CWarWaspFi
GetTeamZStratum__8CWarWaspFi:
/* 8010AF24 00107E84  2C 04 00 00 */	cmpwi r4, 0
/* 8010AF28 00107E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010AF2C 00107E8C  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010AF30 00107E90  40 81 00 68 */	ble lbl_8010AF98
/* 8010AF34 00107E94  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 8010AF38 00107E98  2C 00 00 01 */	cmpwi r0, 1
/* 8010AF3C 00107E9C  40 82 00 34 */	bne lbl_8010AF70
/* 8010AF40 00107EA0  7C 83 0E 70 */	srawi r3, r4, 1
/* 8010AF44 00107EA4  3C 00 43 30 */	lis r0, 0x4330
/* 8010AF48 00107EA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8010AF4C 00107EAC  90 01 00 08 */	stw r0, 8(r1)
/* 8010AF50 00107EB0  C8 42 94 E0 */	lfd f2, lbl_805AB200@sda21(r2)
/* 8010AF54 00107EB4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8010AF58 00107EB8  C0 62 94 F8 */	lfs f3, lbl_805AB218@sda21(r2)
/* 8010AF5C 00107EBC  C8 21 00 08 */	lfd f1, 8(r1)
/* 8010AF60 00107EC0  C0 02 94 F4 */	lfs f0, lbl_805AB214@sda21(r2)
/* 8010AF64 00107EC4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8010AF68 00107EC8  EC 23 00 7C */	fnmsubs f1, f3, f1, f0
/* 8010AF6C 00107ECC  48 00 00 2C */	b lbl_8010AF98
lbl_8010AF70:
/* 8010AF70 00107ED0  7C 83 0E 70 */	srawi r3, r4, 1
/* 8010AF74 00107ED4  3C 00 43 30 */	lis r0, 0x4330
/* 8010AF78 00107ED8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8010AF7C 00107EDC  90 01 00 08 */	stw r0, 8(r1)
/* 8010AF80 00107EE0  C8 22 94 E0 */	lfd f1, lbl_805AB200@sda21(r2)
/* 8010AF84 00107EE4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8010AF88 00107EE8  C0 42 94 F8 */	lfs f2, lbl_805AB218@sda21(r2)
/* 8010AF8C 00107EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8010AF90 00107EF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8010AF94 00107EF4  EC 22 00 32 */	fmuls f1, f2, f0
lbl_8010AF98:
/* 8010AF98 00107EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010AF9C 00107EFC  4E 80 00 20 */	blr

.global GetAttackTeamSize__8CWarWaspFR13CStateManageri
GetAttackTeamSize__8CWarWaspFR13CStateManageri:
/* 8010AFA0 00107F00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010AFA4 00107F04  7C 08 02 A6 */	mflr r0
/* 8010AFA8 00107F08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010AFAC 00107F0C  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8010AFB0 00107F10  7C 9E 23 78 */	mr r30, r4
/* 8010AFB4 00107F14  7C 7D 1B 78 */	mr r29, r3
/* 8010AFB8 00107F18  7C BF 2B 78 */	mr r31, r5
/* 8010AFBC 00107F1C  38 81 00 18 */	addi r4, r1, 0x18
/* 8010AFC0 00107F20  3B 80 00 00 */	li r28, 0
/* 8010AFC4 00107F24  A0 03 06 74 */	lhz r0, 0x674(r3)
/* 8010AFC8 00107F28  7F C3 F3 78 */	mr r3, r30
/* 8010AFCC 00107F2C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010AFD0 00107F30  4B F4 15 D5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010AFD4 00107F34  7C 64 1B 78 */	mr r4, r3
/* 8010AFD8 00107F38  38 61 00 20 */	addi r3, r1, 0x20
/* 8010AFDC 00107F3C  4B F9 C5 99 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010AFE0 00107F40  83 63 00 04 */	lwz r27, 4(r3)
/* 8010AFE4 00107F44  28 1B 00 00 */	cmplwi r27, 0
/* 8010AFE8 00107F48  41 82 00 88 */	beq lbl_8010B070
/* 8010AFEC 00107F4C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010AFF0 00107F50  7F 63 DB 78 */	mr r3, r27
/* 8010AFF4 00107F54  38 81 00 14 */	addi r4, r1, 0x14
/* 8010AFF8 00107F58  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010AFFC 00107F5C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010B000 00107F60  48 12 DF F1 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010B004 00107F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B008 00107F68  41 82 00 68 */	beq lbl_8010B070
/* 8010B00C 00107F6C  83 BB 00 64 */	lwz r29, 0x64(r27)
/* 8010B010 00107F70  48 00 00 48 */	b lbl_8010B058
lbl_8010B014:
/* 8010B014 00107F74  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8010B018 00107F78  7F C3 F3 78 */	mr r3, r30
/* 8010B01C 00107F7C  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B020 00107F80  B0 01 00 08 */	sth r0, 8(r1)
/* 8010B024 00107F84  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010B028 00107F88  4B F4 15 7D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B02C 00107F8C  7C 64 1B 78 */	mr r4, r3
/* 8010B030 00107F90  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010B034 00107F94  4B F9 A3 35 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B038 00107F98  4B F9 A3 05 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B03C 00107F9C  28 03 00 00 */	cmplwi r3, 0
/* 8010B040 00107FA0  41 82 00 14 */	beq lbl_8010B054
/* 8010B044 00107FA4  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B048 00107FA8  7C 1F 00 00 */	cmpw r31, r0
/* 8010B04C 00107FAC  40 82 00 08 */	bne lbl_8010B054
/* 8010B050 00107FB0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8010B054:
/* 8010B054 00107FB4  3B BD 00 28 */	addi r29, r29, 0x28
lbl_8010B058:
/* 8010B058 00107FB8  80 1B 00 5C */	lwz r0, 0x5c(r27)
/* 8010B05C 00107FBC  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 8010B060 00107FC0  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B064 00107FC4  7C 03 02 14 */	add r0, r3, r0
/* 8010B068 00107FC8  7C 1D 00 40 */	cmplw r29, r0
/* 8010B06C 00107FCC  40 82 FF A8 */	bne lbl_8010B014
lbl_8010B070:
/* 8010B070 00107FD0  7F 83 E3 78 */	mr r3, r28
/* 8010B074 00107FD4  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8010B078 00107FD8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010B07C 00107FDC  7C 08 03 A6 */	mtlr r0
/* 8010B080 00107FE0  38 21 00 40 */	addi r1, r1, 0x40
/* 8010B084 00107FE4  4E 80 00 20 */	blr

.global GetAttackTeamLeader__8CWarWaspFR13CStateManageri
GetAttackTeamLeader__8CWarWaspFR13CStateManageri:
/* 8010B088 00107FE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010B08C 00107FEC  7C 08 02 A6 */	mflr r0
/* 8010B090 00107FF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010B094 00107FF4  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8010B098 00107FF8  7C BE 2B 78 */	mr r30, r5
/* 8010B09C 00107FFC  7C 7D 1B 78 */	mr r29, r3
/* 8010B0A0 00108000  7C 9C 23 78 */	mr r28, r4
/* 8010B0A4 00108004  7C DF 33 78 */	mr r31, r6
/* 8010B0A8 00108008  7F C3 F3 78 */	mr r3, r30
/* 8010B0AC 0010800C  A0 04 06 74 */	lhz r0, 0x674(r4)
/* 8010B0B0 00108010  38 81 00 18 */	addi r4, r1, 0x18
/* 8010B0B4 00108014  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010B0B8 00108018  4B F4 14 ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B0BC 0010801C  7C 64 1B 78 */	mr r4, r3
/* 8010B0C0 00108020  38 61 00 20 */	addi r3, r1, 0x20
/* 8010B0C4 00108024  4B F9 C4 B1 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010B0C8 00108028  83 63 00 04 */	lwz r27, 4(r3)
/* 8010B0CC 0010802C  28 1B 00 00 */	cmplwi r27, 0
/* 8010B0D0 00108030  41 82 00 90 */	beq lbl_8010B160
/* 8010B0D4 00108034  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8010B0D8 00108038  7F 63 DB 78 */	mr r3, r27
/* 8010B0DC 0010803C  38 81 00 14 */	addi r4, r1, 0x14
/* 8010B0E0 00108040  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010B0E4 00108044  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010B0E8 00108048  48 12 DF 09 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010B0EC 0010804C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B0F0 00108050  41 82 00 70 */	beq lbl_8010B160
/* 8010B0F4 00108054  83 9B 00 64 */	lwz r28, 0x64(r27)
/* 8010B0F8 00108058  48 00 00 50 */	b lbl_8010B148
lbl_8010B0FC:
/* 8010B0FC 0010805C  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8010B100 00108060  7F C3 F3 78 */	mr r3, r30
/* 8010B104 00108064  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B108 00108068  B0 01 00 08 */	sth r0, 8(r1)
/* 8010B10C 0010806C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010B110 00108070  4B F4 14 95 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B114 00108074  7C 64 1B 78 */	mr r4, r3
/* 8010B118 00108078  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010B11C 0010807C  4B F9 A2 4D */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B120 00108080  4B F9 A2 1D */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B124 00108084  28 03 00 00 */	cmplwi r3, 0
/* 8010B128 00108088  41 82 00 1C */	beq lbl_8010B144
/* 8010B12C 0010808C  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B130 00108090  7C 1F 00 00 */	cmpw r31, r0
/* 8010B134 00108094  40 82 00 10 */	bne lbl_8010B144
/* 8010B138 00108098  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8010B13C 0010809C  B0 1D 00 00 */	sth r0, 0(r29)
/* 8010B140 001080A0  48 00 00 28 */	b lbl_8010B168
lbl_8010B144:
/* 8010B144 001080A4  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_8010B148:
/* 8010B148 001080A8  80 1B 00 5C */	lwz r0, 0x5c(r27)
/* 8010B14C 001080AC  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 8010B150 001080B0  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B154 001080B4  7C 03 02 14 */	add r0, r3, r0
/* 8010B158 001080B8  7C 1C 00 40 */	cmplw r28, r0
/* 8010B15C 001080BC  40 82 FF A0 */	bne lbl_8010B0FC
lbl_8010B160:
/* 8010B160 001080C0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010B164 001080C4  B0 1D 00 00 */	sth r0, 0(r29)
lbl_8010B168:
/* 8010B168 001080C8  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 8010B16C 001080CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010B170 001080D0  7C 08 03 A6 */	mtlr r0
/* 8010B174 001080D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8010B178 001080D8  4E 80 00 20 */	blr

.global TryCircleTeamMerge__8CWarWaspFR13CStateManager
TryCircleTeamMerge__8CWarWaspFR13CStateManager:
/* 8010B17C 001080DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010B180 001080E0  7C 08 02 A6 */	mflr r0
/* 8010B184 001080E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010B188 001080E8  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 8010B18C 001080EC  7C 7B 1B 78 */	mr r27, r3
/* 8010B190 001080F0  7C 9F 23 78 */	mr r31, r4
/* 8010B194 001080F4  83 A3 07 08 */	lwz r29, 0x708(r3)
/* 8010B198 001080F8  2C 1D 00 00 */	cmpwi r29, 0
/* 8010B19C 001080FC  40 81 00 F8 */	ble lbl_8010B294
/* 8010B1A0 00108100  A0 1B 06 74 */	lhz r0, 0x674(r27)
/* 8010B1A4 00108104  7F E3 FB 78 */	mr r3, r31
/* 8010B1A8 00108108  38 81 00 1C */	addi r4, r1, 0x1c
/* 8010B1AC 0010810C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010B1B0 00108110  4B F4 13 F5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B1B4 00108114  7C 64 1B 78 */	mr r4, r3
/* 8010B1B8 00108118  38 61 00 24 */	addi r3, r1, 0x24
/* 8010B1BC 0010811C  4B F9 C3 B9 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010B1C0 00108120  83 83 00 04 */	lwz r28, 4(r3)
/* 8010B1C4 00108124  28 1C 00 00 */	cmplwi r28, 0
/* 8010B1C8 00108128  41 82 00 CC */	beq lbl_8010B294
/* 8010B1CC 0010812C  A0 1B 00 08 */	lhz r0, 8(r27)
/* 8010B1D0 00108130  7F 83 E3 78 */	mr r3, r28
/* 8010B1D4 00108134  38 81 00 18 */	addi r4, r1, 0x18
/* 8010B1D8 00108138  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010B1DC 0010813C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010B1E0 00108140  48 12 DE 11 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010B1E4 00108144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B1E8 00108148  41 82 00 AC */	beq lbl_8010B294
/* 8010B1EC 0010814C  A3 DB 00 08 */	lhz r30, 8(r27)
/* 8010B1F0 00108150  7F 64 DB 78 */	mr r4, r27
/* 8010B1F4 00108154  7F E5 FB 78 */	mr r5, r31
/* 8010B1F8 00108158  7F A6 EB 78 */	mr r6, r29
/* 8010B1FC 0010815C  38 61 00 10 */	addi r3, r1, 0x10
/* 8010B200 00108160  4B FF FE 89 */	bl GetAttackTeamLeader__8CWarWaspFR13CStateManageri
/* 8010B204 00108164  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8010B208 00108168  7C 00 F0 40 */	cmplw r0, r30
/* 8010B20C 0010816C  40 82 00 88 */	bne lbl_8010B294
/* 8010B210 00108170  7F 63 DB 78 */	mr r3, r27
/* 8010B214 00108174  7F E4 FB 78 */	mr r4, r31
/* 8010B218 00108178  38 BD FF FF */	addi r5, r29, -1
/* 8010B21C 0010817C  4B FF FD 85 */	bl GetAttackTeamSize__8CWarWaspFR13CStateManageri
/* 8010B220 00108180  2C 03 00 00 */	cmpwi r3, 0
/* 8010B224 00108184  40 82 00 70 */	bne lbl_8010B294
/* 8010B228 00108188  83 DC 00 64 */	lwz r30, 0x64(r28)
/* 8010B22C 0010818C  48 00 00 50 */	b lbl_8010B27C
lbl_8010B230:
/* 8010B230 00108190  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8010B234 00108194  7F E3 FB 78 */	mr r3, r31
/* 8010B238 00108198  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B23C 0010819C  B0 01 00 08 */	sth r0, 8(r1)
/* 8010B240 001081A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010B244 001081A4  4B F4 13 31 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8010B248 001081A8  7C 64 1B 78 */	mr r4, r3
/* 8010B24C 001081AC  38 61 00 20 */	addi r3, r1, 0x20
/* 8010B250 001081B0  4B F9 A1 19 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B254 001081B4  4B F9 A0 E9 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B258 001081B8  28 03 00 00 */	cmplwi r3, 0
/* 8010B25C 001081BC  41 82 00 1C */	beq lbl_8010B278
/* 8010B260 001081C0  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B264 001081C4  7C 1D 00 00 */	cmpw r29, r0
/* 8010B268 001081C8  40 82 00 10 */	bne lbl_8010B278
/* 8010B26C 001081CC  7F E5 FB 78 */	mr r5, r31
/* 8010B270 001081D0  38 9D FF FF */	addi r4, r29, -1
/* 8010B274 001081D4  48 00 23 41 */	bl JoinCircleAttackTeam__8CWarWaspFiR13CStateManager
lbl_8010B278:
/* 8010B278 001081D8  3B DE 00 28 */	addi r30, r30, 0x28
lbl_8010B27C:
/* 8010B27C 001081DC  80 1C 00 5C */	lwz r0, 0x5c(r28)
/* 8010B280 001081E0  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8010B284 001081E4  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B288 001081E8  7C 03 02 14 */	add r0, r3, r0
/* 8010B28C 001081EC  7C 1E 00 40 */	cmplw r30, r0
/* 8010B290 001081F0  40 82 FF A0 */	bne lbl_8010B230
lbl_8010B294:
/* 8010B294 001081F4  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 8010B298 001081F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010B29C 001081FC  7C 08 03 A6 */	mtlr r0
/* 8010B2A0 00108200  38 21 00 50 */	addi r1, r1, 0x50
/* 8010B2A4 00108204  4E 80 00 20 */	blr

.global SetUpCircleTelegraphTeam__8CWarWaspFR13CStateManager
SetUpCircleTelegraphTeam__8CWarWaspFR13CStateManager:
/* 8010B2A8 00108208  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010B2AC 0010820C  7C 08 02 A6 */	mflr r0
/* 8010B2B0 00108210  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010B2B4 00108214  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8010B2B8 00108218  7C 7A 1B 78 */	mr r26, r3
/* 8010B2BC 0010821C  7C 9B 23 78 */	mr r27, r4
/* 8010B2C0 00108220  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B2C4 00108224  2C 00 FF FF */	cmpwi r0, -1
/* 8010B2C8 00108228  40 82 01 54 */	bne lbl_8010B41C
/* 8010B2CC 0010822C  A0 1A 06 74 */	lhz r0, 0x674(r26)
/* 8010B2D0 00108230  7F 63 DB 78 */	mr r3, r27
/* 8010B2D4 00108234  38 81 00 18 */	addi r4, r1, 0x18
/* 8010B2D8 00108238  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010B2DC 0010823C  4B F4 12 C9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B2E0 00108240  7C 64 1B 78 */	mr r4, r3
/* 8010B2E4 00108244  38 61 00 20 */	addi r3, r1, 0x20
/* 8010B2E8 00108248  4B F9 C2 8D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010B2EC 0010824C  83 E3 00 04 */	lwz r31, 4(r3)
/* 8010B2F0 00108250  28 1F 00 00 */	cmplwi r31, 0
/* 8010B2F4 00108254  41 82 01 28 */	beq lbl_8010B41C
/* 8010B2F8 00108258  A0 1A 00 08 */	lhz r0, 8(r26)
/* 8010B2FC 0010825C  7F E3 FB 78 */	mr r3, r31
/* 8010B300 00108260  38 81 00 14 */	addi r4, r1, 0x14
/* 8010B304 00108264  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010B308 00108268  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010B30C 0010826C  48 12 DC E5 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010B310 00108270  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B314 00108274  41 82 01 08 */	beq lbl_8010B41C
/* 8010B318 00108278  83 3F 00 44 */	lwz r25, 0x44(r31)
/* 8010B31C 0010827C  2C 19 00 00 */	cmpwi r25, 0
/* 8010B320 00108280  40 81 00 FC */	ble lbl_8010B41C
/* 8010B324 00108284  83 1F 00 64 */	lwz r24, 0x64(r31)
/* 8010B328 00108288  3B C0 00 00 */	li r30, 0
/* 8010B32C 0010828C  3B A0 00 00 */	li r29, 0
/* 8010B330 00108290  3B 80 00 00 */	li r28, 0
/* 8010B334 00108294  48 00 00 8C */	b lbl_8010B3C0
lbl_8010B338:
/* 8010B338 00108298  A0 18 00 00 */	lhz r0, 0(r24)
/* 8010B33C 0010829C  7F 63 DB 78 */	mr r3, r27
/* 8010B340 001082A0  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B344 001082A4  B0 01 00 08 */	sth r0, 8(r1)
/* 8010B348 001082A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010B34C 001082AC  4B F4 12 59 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B350 001082B0  7C 64 1B 78 */	mr r4, r3
/* 8010B354 001082B4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010B358 001082B8  4B F9 A0 11 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B35C 001082BC  4B F9 9F E1 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B360 001082C0  28 03 00 00 */	cmplwi r3, 0
/* 8010B364 001082C4  41 82 00 58 */	beq lbl_8010B3BC
/* 8010B368 001082C8  80 9A 07 0C */	lwz r4, 0x70c(r26)
/* 8010B36C 001082CC  2C 04 FF FF */	cmpwi r4, -1
/* 8010B370 001082D0  41 82 00 28 */	beq lbl_8010B398
/* 8010B374 001082D4  80 03 07 0C */	lwz r0, 0x70c(r3)
/* 8010B378 001082D8  7C 04 00 00 */	cmpw r4, r0
/* 8010B37C 001082DC  40 82 00 1C */	bne lbl_8010B398
/* 8010B380 001082E0  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B384 001082E4  2C 00 00 00 */	cmpwi r0, 0
/* 8010B388 001082E8  41 80 00 10 */	blt lbl_8010B398
/* 8010B38C 001082EC  7C 1E 03 78 */	mr r30, r0
/* 8010B390 001082F0  3B 80 00 01 */	li r28, 1
/* 8010B394 001082F4  48 00 00 44 */	b lbl_8010B3D8
lbl_8010B398:
/* 8010B398 001082F8  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B39C 001082FC  7C 00 F0 00 */	cmpw r0, r30
/* 8010B3A0 00108300  40 81 00 10 */	ble lbl_8010B3B0
/* 8010B3A4 00108304  7C 1E 03 78 */	mr r30, r0
/* 8010B3A8 00108308  3B A0 00 01 */	li r29, 1
/* 8010B3AC 0010830C  48 00 00 10 */	b lbl_8010B3BC
lbl_8010B3B0:
/* 8010B3B0 00108310  7C 1E 00 00 */	cmpw r30, r0
/* 8010B3B4 00108314  40 82 00 08 */	bne lbl_8010B3BC
/* 8010B3B8 00108318  3B BD 00 01 */	addi r29, r29, 1
lbl_8010B3BC:
/* 8010B3BC 0010831C  3B 18 00 28 */	addi r24, r24, 0x28
lbl_8010B3C0:
/* 8010B3C0 00108320  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8010B3C4 00108324  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8010B3C8 00108328  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B3CC 0010832C  7C 03 02 14 */	add r0, r3, r0
/* 8010B3D0 00108330  7C 18 00 40 */	cmplw r24, r0
/* 8010B3D4 00108334  40 82 FF 64 */	bne lbl_8010B338
lbl_8010B3D8:
/* 8010B3D8 00108338  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8010B3DC 0010833C  40 82 00 1C */	bne lbl_8010B3F8
/* 8010B3E0 00108340  80 1A 07 0C */	lwz r0, 0x70c(r26)
/* 8010B3E4 00108344  2C 00 FF FF */	cmpwi r0, -1
/* 8010B3E8 00108348  40 82 00 0C */	bne lbl_8010B3F4
/* 8010B3EC 0010834C  7C 1D C8 00 */	cmpw r29, r25
/* 8010B3F0 00108350  41 80 00 08 */	blt lbl_8010B3F8
lbl_8010B3F4:
/* 8010B3F4 00108354  3B DE 00 01 */	addi r30, r30, 1
lbl_8010B3F8:
/* 8010B3F8 00108358  7F 43 D3 78 */	mr r3, r26
/* 8010B3FC 0010835C  7F C4 F3 78 */	mr r4, r30
/* 8010B400 00108360  7F 65 DB 78 */	mr r5, r27
/* 8010B404 00108364  48 00 21 B1 */	bl JoinCircleAttackTeam__8CWarWaspFiR13CStateManager
/* 8010B408 00108368  80 7B 09 00 */	lwz r3, 0x900(r27)
/* 8010B40C 0010836C  48 20 70 D1 */	bl Float__9CRandom16Fv
/* 8010B410 00108370  C0 02 94 FC */	lfs f0, lbl_805AB21C@sda21(r2)
/* 8010B414 00108374  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010B418 00108378  D0 1A 07 14 */	stfs f0, 0x714(r26)
lbl_8010B41C:
/* 8010B41C 0010837C  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 8010B420 00108380  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010B424 00108384  7C 08 03 A6 */	mtlr r0
/* 8010B428 00108388  38 21 00 50 */	addi r1, r1, 0x50
/* 8010B42C 0010838C  4E 80 00 20 */	blr

.global CheckCircleAttackSpread__8CWarWaspFR13CStateManageri
CheckCircleAttackSpread__8CWarWaspFR13CStateManageri:
/* 8010B430 00108390  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8010B434 00108394  7C 08 02 A6 */	mflr r0
/* 8010B438 00108398  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8010B43C 0010839C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8010B440 001083A0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8010B444 001083A4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8010B448 001083A8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8010B44C 001083AC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8010B450 001083B0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8010B454 001083B4  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 8010B458 001083B8  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 8010B45C 001083BC  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 8010B460 001083C0  F3 61 00 98 */	psq_st f27, 152(r1), 0, qr0
/* 8010B464 001083C4  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 8010B468 001083C8  F3 41 00 88 */	psq_st f26, 136(r1), 0, qr0
/* 8010B46C 001083CC  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 8010B470 001083D0  F3 21 00 78 */	psq_st f25, 120(r1), 0, qr0
/* 8010B474 001083D4  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 8010B478 001083D8  7C 7C 1B 78 */	mr r28, r3
/* 8010B47C 001083DC  7C 9D 23 78 */	mr r29, r4
/* 8010B480 001083E0  A0 03 06 74 */	lhz r0, 0x674(r3)
/* 8010B484 001083E4  7C BE 2B 78 */	mr r30, r5
/* 8010B488 001083E8  7F A3 EB 78 */	mr r3, r29
/* 8010B48C 001083EC  38 81 00 18 */	addi r4, r1, 0x18
/* 8010B490 001083F0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010B494 001083F4  4B F4 11 11 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B498 001083F8  7C 64 1B 78 */	mr r4, r3
/* 8010B49C 001083FC  38 61 00 28 */	addi r3, r1, 0x28
/* 8010B4A0 00108400  4B F9 C0 D5 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010B4A4 00108404  83 E3 00 04 */	lwz r31, 4(r3)
/* 8010B4A8 00108408  28 1F 00 00 */	cmplwi r31, 0
/* 8010B4AC 0010840C  41 82 01 C8 */	beq lbl_8010B674
/* 8010B4B0 00108410  7F 83 E3 78 */	mr r3, r28
/* 8010B4B4 00108414  7F A4 EB 78 */	mr r4, r29
/* 8010B4B8 00108418  7F C5 F3 78 */	mr r5, r30
/* 8010B4BC 0010841C  4B FF FA E5 */	bl GetAttackTeamSize__8CWarWaspFR13CStateManageri
/* 8010B4C0 00108420  7C 7A 1B 78 */	mr r26, r3
/* 8010B4C4 00108424  2C 1A 00 01 */	cmpwi r26, 1
/* 8010B4C8 00108428  40 82 00 0C */	bne lbl_8010B4D4
/* 8010B4CC 0010842C  38 60 00 01 */	li r3, 1
/* 8010B4D0 00108430  48 00 01 A8 */	b lbl_8010B678
lbl_8010B4D4:
/* 8010B4D4 00108434  7F 84 E3 78 */	mr r4, r28
/* 8010B4D8 00108438  7F A5 EB 78 */	mr r5, r29
/* 8010B4DC 0010843C  7F C6 F3 78 */	mr r6, r30
/* 8010B4E0 00108440  38 61 00 14 */	addi r3, r1, 0x14
/* 8010B4E4 00108444  4B FF FB A5 */	bl GetAttackTeamLeader__8CWarWaspFR13CStateManageri
/* 8010B4E8 00108448  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8010B4EC 0010844C  7F A3 EB 78 */	mr r3, r29
/* 8010B4F0 00108450  38 81 00 10 */	addi r4, r1, 0x10
/* 8010B4F4 00108454  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010B4F8 00108458  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010B4FC 0010845C  4B F4 10 A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B500 00108460  7C 64 1B 78 */	mr r4, r3
/* 8010B504 00108464  38 61 00 24 */	addi r3, r1, 0x24
/* 8010B508 00108468  4B F9 9E 61 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B50C 0010846C  4B F9 9E 31 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B510 00108470  28 03 00 00 */	cmplwi r3, 0
/* 8010B514 00108474  41 82 01 60 */	beq lbl_8010B674
/* 8010B518 00108478  C3 A3 00 60 */	lfs f29, 0x60(r3)
/* 8010B51C 0010847C  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 8010B520 00108480  C3 C3 00 50 */	lfs f30, 0x50(r3)
/* 8010B524 00108484  C0 3C 06 B4 */	lfs f1, 0x6b4(r28)
/* 8010B528 00108488  EC 5D 00 28 */	fsubs f2, f29, f0
/* 8010B52C 0010848C  C3 E3 00 40 */	lfs f31, 0x40(r3)
/* 8010B530 00108490  C0 1C 06 B0 */	lfs f0, 0x6b0(r28)
/* 8010B534 00108494  EC 3E 08 28 */	fsubs f1, f30, f1
/* 8010B538 00108498  C3 83 00 38 */	lfs f28, 0x38(r3)
/* 8010B53C 0010849C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8010B540 001084A0  C3 63 00 48 */	lfs f27, 0x48(r3)
/* 8010B544 001084A4  C3 43 00 58 */	lfs f26, 0x58(r3)
/* 8010B548 001084A8  C3 22 94 F0 */	lfs f25, lbl_805AB210@sda21(r2)
/* 8010B54C 001084AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010B550 001084B0  A3 61 00 1C */	lhz r27, 0x1c(r1)
/* 8010B554 001084B4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8010B558 001084B8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8010B55C 001084BC  83 3F 00 64 */	lwz r25, 0x64(r31)
/* 8010B560 001084C0  48 00 00 C0 */	b lbl_8010B620
lbl_8010B564:
/* 8010B564 001084C4  A0 19 00 00 */	lhz r0, 0(r25)
/* 8010B568 001084C8  7C 00 D8 40 */	cmplw r0, r27
/* 8010B56C 001084CC  41 82 00 B0 */	beq lbl_8010B61C
/* 8010B570 001084D0  B0 01 00 08 */	sth r0, 8(r1)
/* 8010B574 001084D4  7F A3 EB 78 */	mr r3, r29
/* 8010B578 001084D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B57C 001084DC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010B580 001084E0  4B F4 10 25 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B584 001084E4  7C 64 1B 78 */	mr r4, r3
/* 8010B588 001084E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8010B58C 001084EC  4B F9 9D DD */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B590 001084F0  4B F9 9D AD */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B594 001084F4  28 03 00 00 */	cmplwi r3, 0
/* 8010B598 001084F8  41 82 00 84 */	beq lbl_8010B61C
/* 8010B59C 001084FC  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010B5A0 00108500  7C 1E 00 00 */	cmpw r30, r0
/* 8010B5A4 00108504  40 82 00 78 */	bne lbl_8010B61C
/* 8010B5A8 00108508  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 8010B5AC 0010850C  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 8010B5B0 00108510  EC 25 F0 28 */	fsubs f1, f5, f30
/* 8010B5B4 00108514  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 8010B5B8 00108518  EC 44 F8 28 */	fsubs f2, f4, f31
/* 8010B5BC 0010851C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010B5C0 00108520  EC 66 E8 28 */	fsubs f3, f6, f29
/* 8010B5C4 00108524  EC 3B 00 72 */	fmuls f1, f27, f1
/* 8010B5C8 00108528  EC 3C 08 BA */	fmadds f1, f28, f2, f1
/* 8010B5CC 0010852C  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 8010B5D0 00108530  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010B5D4 00108534  40 81 00 0C */	ble lbl_8010B5E0
/* 8010B5D8 00108538  38 60 00 00 */	li r3, 0
/* 8010B5DC 0010853C  48 00 00 9C */	b lbl_8010B678
lbl_8010B5E0:
/* 8010B5E0 00108540  C0 5C 06 B4 */	lfs f2, 0x6b4(r28)
/* 8010B5E4 00108544  38 61 00 30 */	addi r3, r1, 0x30
/* 8010B5E8 00108548  C0 3C 06 B8 */	lfs f1, 0x6b8(r28)
/* 8010B5EC 0010854C  38 81 00 3C */	addi r4, r1, 0x3c
/* 8010B5F0 00108550  C0 1C 06 B0 */	lfs f0, 0x6b0(r28)
/* 8010B5F4 00108554  EC 45 10 28 */	fsubs f2, f5, f2
/* 8010B5F8 00108558  EC 26 08 28 */	fsubs f1, f6, f1
/* 8010B5FC 0010855C  EC 04 00 28 */	fsubs f0, f4, f0
/* 8010B600 00108560  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8010B604 00108564  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8010B608 00108568  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8010B60C 0010856C  48 20 90 25 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 8010B610 00108570  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 8010B614 00108574  40 81 00 08 */	ble lbl_8010B61C
/* 8010B618 00108578  FF 20 08 90 */	fmr f25, f1
lbl_8010B61C:
/* 8010B61C 0010857C  3B 39 00 28 */	addi r25, r25, 0x28
lbl_8010B620:
/* 8010B620 00108580  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8010B624 00108584  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8010B628 00108588  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B62C 0010858C  7C 03 02 14 */	add r0, r3, r0
/* 8010B630 00108590  7C 19 00 40 */	cmplw r25, r0
/* 8010B634 00108594  40 82 FF 30 */	bne lbl_8010B564
/* 8010B638 00108598  38 7A FF FF */	addi r3, r26, -1
/* 8010B63C 0010859C  3C 00 43 30 */	lis r0, 0x4330
/* 8010B640 001085A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8010B644 001085A4  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010B648 001085A8  C8 42 94 E0 */	lfd f2, lbl_805AB200@sda21(r2)
/* 8010B64C 001085AC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8010B650 001085B0  C0 62 95 04 */	lfs f3, lbl_805AB224@sda21(r2)
/* 8010B654 001085B4  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 8010B658 001085B8  C0 02 95 00 */	lfs f0, lbl_805AB220@sda21(r2)
/* 8010B65C 001085BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 8010B660 001085C0  EC 03 00 7A */	fmadds f0, f3, f1, f0
/* 8010B664 001085C4  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 8010B668 001085C8  7C 00 00 26 */	mfcr r0
/* 8010B66C 001085CC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8010B670 001085D0  48 00 00 08 */	b lbl_8010B678
lbl_8010B674:
/* 8010B674 001085D4  38 60 00 00 */	li r3, 0
lbl_8010B678:
/* 8010B678 001085D8  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8010B67C 001085DC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8010B680 001085E0  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8010B684 001085E4  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8010B688 001085E8  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8010B68C 001085EC  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8010B690 001085F0  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 8010B694 001085F4  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 8010B698 001085F8  E3 61 00 98 */	psq_l f27, 152(r1), 0, qr0
/* 8010B69C 001085FC  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 8010B6A0 00108600  E3 41 00 88 */	psq_l f26, 136(r1), 0, qr0
/* 8010B6A4 00108604  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 8010B6A8 00108608  E3 21 00 78 */	psq_l f25, 120(r1), 0, qr0
/* 8010B6AC 0010860C  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 8010B6B0 00108610  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 8010B6B4 00108614  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8010B6B8 00108618  7C 08 03 A6 */	mtlr r0
/* 8010B6BC 0010861C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8010B6C0 00108620  4E 80 00 20 */	blr

.global CalcSeekMagnitude__8CWarWaspFR13CStateManager
CalcSeekMagnitude__8CWarWaspFR13CStateManager:
/* 8010B6C4 00108624  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8010B6C8 00108628  7C 08 02 A6 */	mflr r0
/* 8010B6CC 0010862C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8010B6D0 00108630  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8010B6D4 00108634  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8010B6D8 00108638  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8010B6DC 0010863C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 8010B6E0 00108640  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 8010B6E4 00108644  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 8010B6E8 00108648  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 8010B6EC 0010864C  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 8010B6F0 00108650  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 8010B6F4 00108654  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 8010B6F8 00108658  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 8010B6FC 0010865C  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 8010B700 00108660  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010B704 00108664  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8010B708 00108668  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8010B70C 0010866C  93 81 00 50 */	stw r28, 0x50(r1)
/* 8010B710 00108670  7C 7D 1B 78 */	mr r29, r3
/* 8010B714 00108674  C0 22 95 08 */	lfs f1, lbl_805AB228@sda21(r2)
/* 8010B718 00108678  80 A3 07 08 */	lwz r5, 0x708(r3)
/* 8010B71C 0010867C  7C 9E 23 78 */	mr r30, r4
/* 8010B720 00108680  38 00 00 00 */	li r0, 0
/* 8010B724 00108684  2C 05 00 00 */	cmpwi r5, 0
/* 8010B728 00108688  41 80 00 10 */	blt lbl_8010B738
/* 8010B72C 0010868C  2C 05 00 03 */	cmpwi r5, 3
/* 8010B730 00108690  40 80 00 08 */	bge lbl_8010B738
/* 8010B734 00108694  38 00 00 01 */	li r0, 1
lbl_8010B738:
/* 8010B738 00108698  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8010B73C 0010869C  41 82 00 18 */	beq lbl_8010B754
/* 8010B740 001086A0  3C 60 80 3D */	lis r3, lbl_803CF1D8@ha
/* 8010B744 001086A4  54 A0 10 3A */	slwi r0, r5, 2
/* 8010B748 001086A8  38 63 F1 D8 */	addi r3, r3, lbl_803CF1D8@l
/* 8010B74C 001086AC  7C 03 04 2E */	lfsx f0, r3, r0
/* 8010B750 001086B0  48 00 00 08 */	b lbl_8010B758
lbl_8010B754:
/* 8010B754 001086B4  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
lbl_8010B758:
/* 8010B758 001086B8  A0 1D 06 74 */	lhz r0, 0x674(r29)
/* 8010B75C 001086BC  EF 81 00 32 */	fmuls f28, f1, f0
/* 8010B760 001086C0  7F C3 F3 78 */	mr r3, r30
/* 8010B764 001086C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8010B768 001086C8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010B76C 001086CC  4B F4 0E 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B770 001086D0  7C 64 1B 78 */	mr r4, r3
/* 8010B774 001086D4  38 61 00 28 */	addi r3, r1, 0x28
/* 8010B778 001086D8  4B F9 BD FD */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010B77C 001086DC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8010B780 001086E0  28 1F 00 00 */	cmplwi r31, 0
/* 8010B784 001086E4  41 82 02 00 */	beq lbl_8010B984
/* 8010B788 001086E8  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010B78C 001086EC  7F E3 FB 78 */	mr r3, r31
/* 8010B790 001086F0  38 81 00 18 */	addi r4, r1, 0x18
/* 8010B794 001086F4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010B798 001086F8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010B79C 001086FC  48 12 D8 55 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010B7A0 00108700  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B7A4 00108704  41 82 01 E0 */	beq lbl_8010B984
/* 8010B7A8 00108708  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 8010B7AC 0010870C  28 00 00 01 */	cmplwi r0, 1
/* 8010B7B0 00108710  40 81 01 D4 */	ble lbl_8010B984
/* 8010B7B4 00108714  80 DD 07 08 */	lwz r6, 0x708(r29)
/* 8010B7B8 00108718  7F A4 EB 78 */	mr r4, r29
/* 8010B7BC 0010871C  7F C5 F3 78 */	mr r5, r30
/* 8010B7C0 00108720  38 61 00 10 */	addi r3, r1, 0x10
/* 8010B7C4 00108724  4B FF F8 C5 */	bl GetAttackTeamLeader__8CWarWaspFR13CStateManageri
/* 8010B7C8 00108728  A0 7D 00 08 */	lhz r3, 8(r29)
/* 8010B7CC 0010872C  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8010B7D0 00108730  7C 03 00 40 */	cmplw r3, r0
/* 8010B7D4 00108734  41 82 01 B0 */	beq lbl_8010B984
/* 8010B7D8 00108738  80 BD 07 08 */	lwz r5, 0x708(r29)
/* 8010B7DC 0010873C  7F A3 EB 78 */	mr r3, r29
/* 8010B7E0 00108740  7F C4 F3 78 */	mr r4, r30
/* 8010B7E4 00108744  4B FF F7 BD */	bl GetAttackTeamSize__8CWarWaspFR13CStateManageri
/* 8010B7E8 00108748  38 63 FF FF */	addi r3, r3, -1
/* 8010B7EC 0010874C  3C 00 43 30 */	lis r0, 0x4330
/* 8010B7F0 00108750  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8010B7F4 00108754  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010B7F8 00108758  C8 62 94 E0 */	lfd f3, lbl_805AB200@sda21(r2)
/* 8010B7FC 0010875C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 8010B800 00108760  C0 22 95 04 */	lfs f1, lbl_805AB224@sda21(r2)
/* 8010B804 00108764  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 8010B808 00108768  C0 02 94 C4 */	lfs f0, lbl_805AB1E4@sda21(r2)
/* 8010B80C 0010876C  EC 42 18 28 */	fsubs f2, f2, f3
/* 8010B810 00108770  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8010B814 00108774  EC 21 10 24 */	fdivs f1, f1, f2
/* 8010B818 00108778  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8010B81C 0010877C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010B820 00108780  40 80 00 0C */	bge lbl_8010B82C
/* 8010B824 00108784  38 61 00 24 */	addi r3, r1, 0x24
/* 8010B828 00108788  48 00 00 08 */	b lbl_8010B830
lbl_8010B82C:
/* 8010B82C 0010878C  38 62 94 C4 */	addi r3, r2, lbl_805AB1E4@sda21
lbl_8010B830:
/* 8010B830 00108790  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 8010B834 00108794  C0 5D 06 B4 */	lfs f2, 0x6b4(r29)
/* 8010B838 00108798  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 8010B83C 0010879C  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8010B840 001087A0  EC 63 10 28 */	fsubs f3, f3, f2
/* 8010B844 001087A4  C3 63 00 00 */	lfs f27, 0(r3)
/* 8010B848 001087A8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8010B84C 001087AC  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8010B850 001087B0  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 8010B854 001087B4  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8010B858 001087B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010B85C 001087BC  C3 FD 00 38 */	lfs f31, 0x38(r29)
/* 8010B860 001087C0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8010B864 001087C4  C3 DD 00 48 */	lfs f30, 0x48(r29)
/* 8010B868 001087C8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010B86C 001087CC  C3 BD 00 58 */	lfs f29, 0x58(r29)
/* 8010B870 001087D0  C3 42 95 0C */	lfs f26, lbl_805AB22C@sda21(r2)
/* 8010B874 001087D4  83 9F 00 64 */	lwz r28, 0x64(r31)
/* 8010B878 001087D8  48 00 00 CC */	b lbl_8010B944
lbl_8010B87C:
/* 8010B87C 001087DC  A0 BC 00 00 */	lhz r5, 0(r28)
/* 8010B880 001087E0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010B884 001087E4  7C 05 00 40 */	cmplw r5, r0
/* 8010B888 001087E8  41 82 00 B8 */	beq lbl_8010B940
/* 8010B88C 001087EC  B0 A1 00 08 */	sth r5, 8(r1)
/* 8010B890 001087F0  7F C3 F3 78 */	mr r3, r30
/* 8010B894 001087F4  38 81 00 0C */	addi r4, r1, 0xc
/* 8010B898 001087F8  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 8010B89C 001087FC  4B F4 0D 09 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010B8A0 00108800  7C 64 1B 78 */	mr r4, r3
/* 8010B8A4 00108804  38 61 00 20 */	addi r3, r1, 0x20
/* 8010B8A8 00108808  4B F9 9A C1 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010B8AC 0010880C  4B F9 9A 91 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010B8B0 00108810  28 03 00 00 */	cmplwi r3, 0
/* 8010B8B4 00108814  41 82 00 8C */	beq lbl_8010B940
/* 8010B8B8 00108818  80 83 07 08 */	lwz r4, 0x708(r3)
/* 8010B8BC 0010881C  80 1D 07 08 */	lwz r0, 0x708(r29)
/* 8010B8C0 00108820  7C 04 00 00 */	cmpw r4, r0
/* 8010B8C4 00108824  40 82 00 7C */	bne lbl_8010B940
/* 8010B8C8 00108828  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 8010B8CC 0010882C  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8010B8D0 00108830  C0 C3 00 40 */	lfs f6, 0x40(r3)
/* 8010B8D4 00108834  EC 05 00 28 */	fsubs f0, f5, f0
/* 8010B8D8 00108838  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8010B8DC 0010883C  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 8010B8E0 00108840  EC 46 08 28 */	fsubs f2, f6, f1
/* 8010B8E4 00108844  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8010B8E8 00108848  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8010B8EC 0010884C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010B8F0 00108850  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010B8F4 00108854  EC 3F 08 BA */	fmadds f1, f31, f2, f1
/* 8010B8F8 00108858  EC 3D 08 FA */	fmadds f1, f29, f3, f1
/* 8010B8FC 0010885C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010B900 00108860  40 81 00 40 */	ble lbl_8010B940
/* 8010B904 00108864  C0 5D 06 B4 */	lfs f2, 0x6b4(r29)
/* 8010B908 00108868  38 61 00 3C */	addi r3, r1, 0x3c
/* 8010B90C 0010886C  C0 3D 06 B8 */	lfs f1, 0x6b8(r29)
/* 8010B910 00108870  38 81 00 30 */	addi r4, r1, 0x30
/* 8010B914 00108874  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 8010B918 00108878  EC 45 10 28 */	fsubs f2, f5, f2
/* 8010B91C 0010887C  EC 24 08 28 */	fsubs f1, f4, f1
/* 8010B920 00108880  EC 06 00 28 */	fsubs f0, f6, f0
/* 8010B924 00108884  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8010B928 00108888  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8010B92C 0010888C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8010B930 00108890  48 20 8D 01 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 8010B934 00108894  FC 01 D0 40 */	fcmpo cr0, f1, f26
/* 8010B938 00108898  40 80 00 08 */	bge lbl_8010B940
/* 8010B93C 0010889C  FF 40 08 90 */	fmr f26, f1
lbl_8010B940:
/* 8010B940 001088A0  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_8010B944:
/* 8010B944 001088A4  80 1F 00 5C */	lwz r0, 0x5c(r31)
/* 8010B948 001088A8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8010B94C 001088AC  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8010B950 001088B0  7C 03 02 14 */	add r0, r3, r0
/* 8010B954 001088B4  7C 1C 00 40 */	cmplw r28, r0
/* 8010B958 001088B8  40 82 FF 24 */	bne lbl_8010B87C
/* 8010B95C 001088BC  C0 22 94 E8 */	lfs f1, lbl_805AB208@sda21(r2)
/* 8010B960 001088C0  EC 1B 08 28 */	fsubs f0, f27, f1
/* 8010B964 001088C4  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8010B968 001088C8  40 80 00 0C */	bge lbl_8010B974
/* 8010B96C 001088CC  C3 82 94 D4 */	lfs f28, lbl_805AB1F4@sda21(r2)
/* 8010B970 001088D0  48 00 00 14 */	b lbl_8010B984
lbl_8010B974:
/* 8010B974 001088D4  EC 01 D8 2A */	fadds f0, f1, f27
/* 8010B978 001088D8  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8010B97C 001088DC  40 81 00 08 */	ble lbl_8010B984
/* 8010B980 001088E0  C3 82 94 DC */	lfs f28, lbl_805AB1FC@sda21(r2)
lbl_8010B984:
/* 8010B984 001088E4  FC 20 E0 90 */	fmr f1, f28
/* 8010B988 001088E8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8010B98C 001088EC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8010B990 001088F0  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8010B994 001088F4  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 8010B998 001088F8  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8010B99C 001088FC  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8010B9A0 00108900  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 8010B9A4 00108904  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 8010B9A8 00108908  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 8010B9AC 0010890C  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 8010B9B0 00108910  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 8010B9B4 00108914  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 8010B9B8 00108918  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010B9BC 0010891C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8010B9C0 00108920  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8010B9C4 00108924  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8010B9C8 00108928  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8010B9CC 0010892C  7C 08 03 A6 */	mtlr r0
/* 8010B9D0 00108930  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8010B9D4 00108934  4E 80 00 20 */	blr

.global SetUpCircleBurstWaypoint__8CWarWaspFR13CStateManager
SetUpCircleBurstWaypoint__8CWarWaspFR13CStateManager:
/* 8010B9D8 00108938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010B9DC 0010893C  7C 08 02 A6 */	mflr r0
/* 8010B9E0 00108940  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010B9E4 00108944  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010B9E8 00108948  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8010B9EC 0010894C  7C 9E 23 78 */	mr r30, r4
/* 8010B9F0 00108950  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8010B9F4 00108954  7C 7D 1B 78 */	mr r29, r3
/* 8010B9F8 00108958  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8010B9FC 0010895C  48 00 00 B0 */	b lbl_8010BAAC
lbl_8010BA00:
/* 8010BA00 00108960  80 1F 00 00 */	lwz r0, 0(r31)
/* 8010BA04 00108964  2C 00 00 0B */	cmpwi r0, 0xb
/* 8010BA08 00108968  40 82 00 A0 */	bne lbl_8010BAA8
/* 8010BA0C 0010896C  80 1F 00 04 */	lwz r0, 4(r31)
/* 8010BA10 00108970  2C 00 00 06 */	cmpwi r0, 6
/* 8010BA14 00108974  40 82 00 94 */	bne lbl_8010BAA8
/* 8010BA18 00108978  80 1F 00 08 */	lwz r0, 8(r31)
/* 8010BA1C 0010897C  7F C4 F3 78 */	mr r4, r30
/* 8010BA20 00108980  38 61 00 08 */	addi r3, r1, 8
/* 8010BA24 00108984  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010BA28 00108988  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010BA2C 0010898C  4B F3 C4 F1 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 8010BA30 00108990  A0 01 00 08 */	lhz r0, 8(r1)
/* 8010BA34 00108994  7F C3 F3 78 */	mr r3, r30
/* 8010BA38 00108998  38 81 00 0C */	addi r4, r1, 0xc
/* 8010BA3C 0010899C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010BA40 001089A0  4B F4 0B 65 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010BA44 001089A4  7C 64 1B 78 */	mr r4, r3
/* 8010BA48 001089A8  38 61 00 14 */	addi r3, r1, 0x14
/* 8010BA4C 001089AC  4B F9 AB 01 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8010BA50 001089B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8010BA54 001089B4  28 03 00 00 */	cmplwi r3, 0
/* 8010BA58 001089B8  41 82 00 50 */	beq lbl_8010BAA8
/* 8010BA5C 001089BC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010BA60 001089C0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8010BA64 001089C4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8010BA68 001089C8  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 8010BA6C 001089CC  D0 3D 06 B4 */	stfs f1, 0x6b4(r29)
/* 8010BA70 001089D0  D0 5D 06 B8 */	stfs f2, 0x6b8(r29)
/* 8010BA74 001089D4  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 8010BA78 001089D8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8010BA7C 001089DC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8010BA80 001089E0  D0 1D 06 BC */	stfs f0, 0x6bc(r29)
/* 8010BA84 001089E4  D0 3D 06 C0 */	stfs f1, 0x6c0(r29)
/* 8010BA88 001089E8  D0 5D 06 C4 */	stfs f2, 0x6c4(r29)
/* 8010BA8C 001089EC  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 8010BA90 001089F0  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 8010BA94 001089F4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8010BA98 001089F8  D0 1D 06 C8 */	stfs f0, 0x6c8(r29)
/* 8010BA9C 001089FC  D0 3D 06 CC */	stfs f1, 0x6cc(r29)
/* 8010BAA0 00108A00  D0 5D 06 D0 */	stfs f2, 0x6d0(r29)
/* 8010BAA4 00108A04  48 00 00 20 */	b lbl_8010BAC4
lbl_8010BAA8:
/* 8010BAA8 00108A08  3B FF 00 0C */	addi r31, r31, 0xc
lbl_8010BAAC:
/* 8010BAAC 00108A0C  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 8010BAB0 00108A10  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8010BAB4 00108A14  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8010BAB8 00108A18  7C 03 02 14 */	add r0, r3, r0
/* 8010BABC 00108A1C  7C 1F 00 40 */	cmplw r31, r0
/* 8010BAC0 00108A20  40 82 FF 40 */	bne lbl_8010BA00
lbl_8010BAC4:
/* 8010BAC4 00108A24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010BAC8 00108A28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010BACC 00108A2C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8010BAD0 00108A30  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8010BAD4 00108A34  7C 08 03 A6 */	mtlr r0
/* 8010BAD8 00108A38  38 21 00 30 */	addi r1, r1, 0x30
/* 8010BADC 00108A3C  4E 80 00 20 */	blr

.global GetCloseInPos__8CWarWaspCFR13CStateManagerRC9CVector3f
GetCloseInPos__8CWarWaspCFR13CStateManagerRC9CVector3f:
/* 8010BAE0 00108A40  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8010BAE4 00108A44  7C 08 02 A6 */	mflr r0
/* 8010BAE8 00108A48  90 01 00 94 */	stw r0, 0x94(r1)
/* 8010BAEC 00108A4C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8010BAF0 00108A50  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8010BAF4 00108A54  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8010BAF8 00108A58  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8010BAFC 00108A5C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8010BB00 00108A60  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8010BB04 00108A64  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010BB08 00108A68  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8010BB0C 00108A6C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8010BB10 00108A70  7C 9E 23 78 */	mr r30, r4
/* 8010BB14 00108A74  7C BF 2B 78 */	mr r31, r5
/* 8010BB18 00108A78  C0 24 02 FC */	lfs f1, 0x2fc(r4)
/* 8010BB1C 00108A7C  7C 7D 1B 78 */	mr r29, r3
/* 8010BB20 00108A80  C0 04 03 00 */	lfs f0, 0x300(r4)
/* 8010BB24 00108A84  80 65 08 4C */	lwz r3, 0x84c(r5)
/* 8010BB28 00108A88  EC 01 00 2A */	fadds f0, f1, f0
/* 8010BB2C 00108A8C  C0 22 95 10 */	lfs f1, lbl_805AB230@sda21(r2)
/* 8010BB30 00108A90  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8010BB34 00108A94  C3 E6 00 00 */	lfs f31, 0(r6)
/* 8010BB38 00108A98  2C 00 00 00 */	cmpwi r0, 0
/* 8010BB3C 00108A9C  EF A1 00 32 */	fmuls f29, f1, f0
/* 8010BB40 00108AA0  C3 C6 00 04 */	lfs f30, 4(r6)
/* 8010BB44 00108AA4  C0 66 00 08 */	lfs f3, 8(r6)
/* 8010BB48 00108AA8  40 82 00 20 */	bne lbl_8010BB68
/* 8010BB4C 00108AAC  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 8010BB50 00108AB0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 8010BB54 00108AB4  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8010BB58 00108AB8  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8010BB5C 00108ABC  EF BF 08 2A */	fadds f29, f31, f1
/* 8010BB60 00108AC0  EF DE 00 2A */	fadds f30, f30, f0
/* 8010BB64 00108AC4  48 00 00 B4 */	b lbl_8010BC18
lbl_8010BB68:
/* 8010BB68 00108AC8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8010BB6C 00108ACC  38 61 00 38 */	addi r3, r1, 0x38
/* 8010BB70 00108AD0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8010BB74 00108AD4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010BB78 00108AD8  EC 42 F0 28 */	fsubs f2, f2, f30
/* 8010BB7C 00108ADC  EC 21 18 28 */	fsubs f1, f1, f3
/* 8010BB80 00108AE0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8010BB84 00108AE4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8010BB88 00108AE8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8010BB8C 00108AEC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8010BB90 00108AF0  48 20 8B 69 */	bl CanBeNormalized__9CVector3fCFv
/* 8010BB94 00108AF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010BB98 00108AF8  41 82 00 3C */	beq lbl_8010BBD4
/* 8010BB9C 00108AFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8010BBA0 00108B00  38 81 00 38 */	addi r4, r1, 0x38
/* 8010BBA4 00108B04  48 20 8C AD */	bl AsNormalized__9CVector3fCFv
/* 8010BBA8 00108B08  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8010BBAC 00108B0C  38 61 00 20 */	addi r3, r1, 0x20
/* 8010BBB0 00108B10  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8010BBB4 00108B14  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8010BBB8 00108B18  EC 5D 00 B2 */	fmuls f2, f29, f2
/* 8010BBBC 00108B1C  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8010BBC0 00108B20  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8010BBC4 00108B24  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010BBC8 00108B28  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010BBCC 00108B2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010BBD0 00108B30  48 00 00 38 */	b lbl_8010BC08
lbl_8010BBD4:
/* 8010BBD4 00108B34  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 8010BBD8 00108B38  38 61 00 08 */	addi r3, r1, 8
/* 8010BBDC 00108B3C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 8010BBE0 00108B40  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8010BBE4 00108B44  EC 5D 01 32 */	fmuls f2, f29, f4
/* 8010BBE8 00108B48  EC 7D 00 32 */	fmuls f3, f29, f0
/* 8010BBEC 00108B4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8010BBF0 00108B50  EC 1D 00 72 */	fmuls f0, f29, f1
/* 8010BBF4 00108B54  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8010BBF8 00108B58  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8010BBFC 00108B5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8010BC00 00108B60  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8010BC04 00108B64  D0 41 00 10 */	stfs f2, 0x10(r1)
lbl_8010BC08:
/* 8010BC08 00108B68  C0 23 00 00 */	lfs f1, 0(r3)
/* 8010BC0C 00108B6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010BC10 00108B70  EF BF 08 2A */	fadds f29, f31, f1
/* 8010BC14 00108B74  EF DE 00 2A */	fadds f30, f30, f0
lbl_8010BC18:
/* 8010BC18 00108B78  7F C3 F3 78 */	mr r3, r30
/* 8010BC1C 00108B7C  7F E4 FB 78 */	mr r4, r31
/* 8010BC20 00108B80  48 00 00 4D */	bl GetCloseInZBasis__8CWarWaspCFR13CStateManager
/* 8010BC24 00108B84  C0 02 95 10 */	lfs f0, lbl_805AB230@sda21(r2)
/* 8010BC28 00108B88  D3 BD 00 00 */	stfs f29, 0(r29)
/* 8010BC2C 00108B8C  EC 00 08 2A */	fadds f0, f0, f1
/* 8010BC30 00108B90  D3 DD 00 04 */	stfs f30, 4(r29)
/* 8010BC34 00108B94  D0 1D 00 08 */	stfs f0, 8(r29)
/* 8010BC38 00108B98  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8010BC3C 00108B9C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8010BC40 00108BA0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8010BC44 00108BA4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8010BC48 00108BA8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8010BC4C 00108BAC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8010BC50 00108BB0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010BC54 00108BB4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8010BC58 00108BB8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8010BC5C 00108BBC  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8010BC60 00108BC0  7C 08 03 A6 */	mtlr r0
/* 8010BC64 00108BC4  38 21 00 90 */	addi r1, r1, 0x90
/* 8010BC68 00108BC8  4E 80 00 20 */	blr

.global GetCloseInZBasis__8CWarWaspCFR13CStateManager
GetCloseInZBasis__8CWarWaspCFR13CStateManager:
/* 8010BC6C 00108BCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010BC70 00108BD0  7C 08 02 A6 */	mflr r0
/* 8010BC74 00108BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010BC78 00108BD8  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8010BC7C 00108BDC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010BC80 00108BE0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8010BC84 00108BE4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8010BC88 00108BE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010BC8C 00108BEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8010BC90 00108BF0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8010BC94 00108BF4  48 17 91 4D */	bl GetEyeHeight__7CPlayerCFv
/* 8010BC98 00108BF8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8010BC9C 00108BFC  C0 02 94 FC */	lfs f0, lbl_805AB21C@sda21(r2)
/* 8010BCA0 00108C00  EC 22 08 2A */	fadds f1, f2, f1
/* 8010BCA4 00108C04  EC 20 08 2A */	fadds f1, f0, f1
/* 8010BCA8 00108C08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010BCAC 00108C0C  7C 08 03 A6 */	mtlr r0
/* 8010BCB0 00108C10  38 21 00 20 */	addi r1, r1, 0x20
/* 8010BCB4 00108C14  4E 80 00 20 */	blr

.global CalcShuffleDest__8CWarWaspFR13CStateManager
CalcShuffleDest__8CWarWaspFR13CStateManager:
/* 8010BCB8 00108C18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010BCBC 00108C1C  7C 08 02 A6 */	mflr r0
/* 8010BCC0 00108C20  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010BCC4 00108C24  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8010BCC8 00108C28  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8010BCCC 00108C2C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 8010BCD0 00108C30  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 8010BCD4 00108C34  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8010BCD8 00108C38  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8010BCDC 00108C3C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8010BCE0 00108C40  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010BCE4 00108C44  7C 7D 1B 78 */	mr r29, r3
/* 8010BCE8 00108C48  7C 9E 23 78 */	mr r30, r4
/* 8010BCEC 00108C4C  7C BF 2B 78 */	mr r31, r5
/* 8010BCF0 00108C50  38 61 00 14 */	addi r3, r1, 0x14
/* 8010BCF4 00108C54  48 00 01 AD */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010BCF8 00108C58  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8010BCFC 00108C5C  38 61 00 20 */	addi r3, r1, 0x20
/* 8010BD00 00108C60  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010BD04 00108C64  C0 64 00 58 */	lfs f3, 0x58(r4)
/* 8010BD08 00108C68  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 8010BD0C 00108C6C  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 8010BD10 00108C70  C3 C1 00 14 */	lfs f30, 0x14(r1)
/* 8010BD14 00108C74  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8010BD18 00108C78  C3 E1 00 18 */	lfs f31, 0x18(r1)
/* 8010BD1C 00108C7C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010BD20 00108C80  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8010BD24 00108C84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010BD28 00108C88  48 20 89 D1 */	bl CanBeNormalized__9CVector3fCFv
/* 8010BD2C 00108C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010BD30 00108C90  41 82 00 18 */	beq lbl_8010BD48
/* 8010BD34 00108C94  38 61 00 08 */	addi r3, r1, 8
/* 8010BD38 00108C98  38 81 00 20 */	addi r4, r1, 0x20
/* 8010BD3C 00108C9C  48 20 8B 15 */	bl AsNormalized__9CVector3fCFv
/* 8010BD40 00108CA0  38 A1 00 08 */	addi r5, r1, 8
/* 8010BD44 00108CA4  48 00 00 0C */	b lbl_8010BD50
lbl_8010BD48:
/* 8010BD48 00108CA8  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 8010BD4C 00108CAC  38 A3 67 24 */	addi r5, r3, sForwardVector__9CVector3f@l
lbl_8010BD50:
/* 8010BD50 00108CB0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8010BD54 00108CB4  7F C3 F3 78 */	mr r3, r30
/* 8010BD58 00108CB8  C0 22 95 18 */	lfs f1, lbl_805AB238@sda21(r2)
/* 8010BD5C 00108CBC  7F E4 FB 78 */	mr r4, r31
/* 8010BD60 00108CC0  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 8010BD64 00108CC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010BD68 00108CC8  EC 61 00 2A */	fadds f3, f1, f0
/* 8010BD6C 00108CCC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8010BD70 00108CD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010BD74 00108CD4  EC 23 00 B2 */	fmuls f1, f3, f2
/* 8010BD78 00108CD8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8010BD7C 00108CDC  C0 45 00 08 */	lfs f2, 8(r5)
/* 8010BD80 00108CE0  EF DE 08 2A */	fadds f30, f30, f1
/* 8010BD84 00108CE4  EF FF 00 2A */	fadds f31, f31, f0
/* 8010BD88 00108CE8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8010BD8C 00108CEC  4B FF FE E1 */	bl GetCloseInZBasis__8CWarWaspCFR13CStateManager
/* 8010BD90 00108CF0  D3 DD 00 00 */	stfs f30, 0(r29)
/* 8010BD94 00108CF4  D3 FD 00 04 */	stfs f31, 4(r29)
/* 8010BD98 00108CF8  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8010BD9C 00108CFC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8010BDA0 00108D00  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8010BDA4 00108D04  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 8010BDA8 00108D08  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8010BDAC 00108D0C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8010BDB0 00108D10  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8010BDB4 00108D14  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010BDB8 00108D18  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8010BDBC 00108D1C  7C 08 03 A6 */	mtlr r0
/* 8010BDC0 00108D20  38 21 00 60 */	addi r1, r1, 0x60
/* 8010BDC4 00108D24  4E 80 00 20 */	blr

.global CalcTimeToNextAttack__8CWarWaspFR13CStateManager
CalcTimeToNextAttack__8CWarWaspFR13CStateManager:
/* 8010BDC8 00108D28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010BDCC 00108D2C  7C 08 02 A6 */	mflr r0
/* 8010BDD0 00108D30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010BDD4 00108D34  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8010BDD8 00108D38  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8010BDDC 00108D3C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010BDE0 00108D40  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8010BDE4 00108D44  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8010BDE8 00108D48  7C 7D 1B 78 */	mr r29, r3
/* 8010BDEC 00108D4C  7C 9E 23 78 */	mr r30, r4
/* 8010BDF0 00108D50  A0 03 06 74 */	lhz r0, 0x674(r3)
/* 8010BDF4 00108D54  7F C3 F3 78 */	mr r3, r30
/* 8010BDF8 00108D58  C3 E2 94 DC */	lfs f31, lbl_805AB1FC@sda21(r2)
/* 8010BDFC 00108D5C  38 81 00 08 */	addi r4, r1, 8
/* 8010BE00 00108D60  B0 01 00 08 */	sth r0, 8(r1)
/* 8010BE04 00108D64  4B F4 07 A1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010BE08 00108D68  7C 64 1B 78 */	mr r4, r3
/* 8010BE0C 00108D6C  38 61 00 0C */	addi r3, r1, 0xc
/* 8010BE10 00108D70  4B F9 B7 65 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010BE14 00108D74  80 63 00 04 */	lwz r3, 4(r3)
/* 8010BE18 00108D78  28 03 00 00 */	cmplwi r3, 0
/* 8010BE1C 00108D7C  41 82 00 48 */	beq lbl_8010BE64
/* 8010BE20 00108D80  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 8010BE24 00108D84  2C 00 00 02 */	cmpwi r0, 2
/* 8010BE28 00108D88  40 82 00 0C */	bne lbl_8010BE34
/* 8010BE2C 00108D8C  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 8010BE30 00108D90  48 00 00 08 */	b lbl_8010BE38
lbl_8010BE34:
/* 8010BE34 00108D94  83 E3 00 44 */	lwz r31, 0x44(r3)
lbl_8010BE38:
/* 8010BE38 00108D98  2C 00 00 02 */	cmpwi r0, 2
/* 8010BE3C 00108D9C  40 82 00 10 */	bne lbl_8010BE4C
/* 8010BE40 00108DA0  38 80 00 02 */	li r4, 2
/* 8010BE44 00108DA4  48 12 D6 1D */	bl GetNumAssignedOfRole__10CTeamAiMgrCFQ211CTeamAiRole11ETeamAiRole
/* 8010BE48 00108DA8  48 00 00 0C */	b lbl_8010BE54
lbl_8010BE4C:
/* 8010BE4C 00108DAC  38 80 00 01 */	li r4, 1
/* 8010BE50 00108DB0  48 12 D6 11 */	bl GetNumAssignedOfRole__10CTeamAiMgrCFQ211CTeamAiRole11ETeamAiRole
lbl_8010BE54:
/* 8010BE54 00108DB4  7C 03 F8 40 */	cmplw r3, r31
/* 8010BE58 00108DB8  41 81 00 0C */	bgt lbl_8010BE64
/* 8010BE5C 00108DBC  C0 02 95 10 */	lfs f0, lbl_805AB230@sda21(r2)
/* 8010BE60 00108DC0  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8010BE64:
/* 8010BE64 00108DC4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8010BE68 00108DC8  48 20 66 75 */	bl Float__9CRandom16Fv
/* 8010BE6C 00108DCC  C0 5D 03 08 */	lfs f2, 0x308(r29)
/* 8010BE70 00108DD0  C0 1D 03 04 */	lfs f0, 0x304(r29)
/* 8010BE74 00108DD4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8010BE78 00108DD8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8010BE7C 00108DDC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8010BE80 00108DE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010BE84 00108DE4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8010BE88 00108DE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010BE8C 00108DEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8010BE90 00108DF0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8010BE94 00108DF4  7C 08 03 A6 */	mtlr r0
/* 8010BE98 00108DF8  38 21 00 40 */	addi r1, r1, 0x40
/* 8010BE9C 00108DFC  4E 80 00 20 */	blr

.global GetProjectileAimPos__8CWarWaspFR13CStateManagerf
GetProjectileAimPos__8CWarWaspFR13CStateManagerf:
/* 8010BEA0 00108E00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010BEA4 00108E04  7C 08 02 A6 */	mflr r0
/* 8010BEA8 00108E08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010BEAC 00108E0C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8010BEB0 00108E10  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8010BEB4 00108E14  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010BEB8 00108E18  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010BEBC 00108E1C  7C BF 2B 78 */	mr r31, r5
/* 8010BEC0 00108E20  FF E0 08 90 */	fmr f31, f1
/* 8010BEC4 00108E24  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 8010BEC8 00108E28  7C 7E 1B 78 */	mr r30, r3
/* 8010BECC 00108E2C  38 61 00 08 */	addi r3, r1, 8
/* 8010BED0 00108E30  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010BED4 00108E34  81 84 00 00 */	lwz r12, 0(r4)
/* 8010BED8 00108E38  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8010BEDC 00108E3C  7D 89 03 A6 */	mtctr r12
/* 8010BEE0 00108E40  4E 80 04 21 */	bctrl
/* 8010BEE4 00108E44  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010BEE8 00108E48  C0 21 00 08 */	lfs f1, 8(r1)
/* 8010BEEC 00108E4C  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8010BEF0 00108E50  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8010BEF4 00108E54  2C 00 00 01 */	cmpwi r0, 1
/* 8010BEF8 00108E58  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8010BEFC 00108E5C  41 82 00 14 */	beq lbl_8010BF10
/* 8010BF00 00108E60  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010BF04 00108E64  EC 63 F8 2A */	fadds f3, f3, f31
/* 8010BF08 00108E68  EC 21 00 2A */	fadds f1, f1, f0
/* 8010BF0C 00108E6C  EC 42 00 2A */	fadds f2, f2, f0
lbl_8010BF10:
/* 8010BF10 00108E70  D0 3E 00 00 */	stfs f1, 0(r30)
/* 8010BF14 00108E74  D0 5E 00 04 */	stfs f2, 4(r30)
/* 8010BF18 00108E78  D0 7E 00 08 */	stfs f3, 8(r30)
/* 8010BF1C 00108E7C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8010BF20 00108E80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010BF24 00108E84  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8010BF28 00108E88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010BF2C 00108E8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010BF30 00108E90  7C 08 03 A6 */	mtlr r0
/* 8010BF34 00108E94  38 21 00 30 */	addi r1, r1, 0x30
/* 8010BF38 00108E98  4E 80 00 20 */	blr

.global ApplyDamage__8CWarWaspFR13CStateManager
ApplyDamage__8CWarWaspFR13CStateManager:
/* 8010BF3C 00108E9C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8010BF40 00108EA0  7C 08 02 A6 */	mflr r0
/* 8010BF44 00108EA4  90 01 01 44 */	stw r0, 0x144(r1)
/* 8010BF48 00108EA8  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8010BF4C 00108EAC  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 8010BF50 00108EB0  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8010BF54 00108EB4  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 8010BF58 00108EB8  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8010BF5C 00108EBC  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 8010BF60 00108EC0  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8010BF64 00108EC4  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 8010BF68 00108EC8  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 8010BF6C 00108ECC  F3 61 00 F8 */	psq_st f27, 248(r1), 0, qr0
/* 8010BF70 00108ED0  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 8010BF74 00108ED4  F3 41 00 E8 */	psq_st f26, 232(r1), 0, qr0
/* 8010BF78 00108ED8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8010BF7C 00108EDC  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8010BF80 00108EE0  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010BF84 00108EE4  7C 7F 1B 78 */	mr r31, r3
/* 8010BF88 00108EE8  7C 9E 23 78 */	mr r30, r4
/* 8010BF8C 00108EEC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8010BF90 00108EF0  41 82 01 5C */	beq lbl_8010C0EC
/* 8010BF94 00108EF4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010BF98 00108EF8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8010BF9C 00108EFC  2C 00 00 07 */	cmpwi r0, 7
/* 8010BFA0 00108F00  40 82 01 4C */	bne lbl_8010C0EC
/* 8010BFA4 00108F04  80 FF 00 64 */	lwz r7, 0x64(r31)
/* 8010BFA8 00108F08  38 61 00 30 */	addi r3, r1, 0x30
/* 8010BFAC 00108F0C  80 82 94 C0 */	lwz r4, lbl_805AB1E0@sda21(r2)
/* 8010BFB0 00108F10  38 C1 00 08 */	addi r6, r1, 8
/* 8010BFB4 00108F14  C3 87 00 00 */	lfs f28, 0(r7)
/* 8010BFB8 00108F18  38 A0 FF FF */	li r5, -1
/* 8010BFBC 00108F1C  C3 67 00 04 */	lfs f27, 4(r7)
/* 8010BFC0 00108F20  C3 47 00 08 */	lfs f26, 8(r7)
/* 8010BFC4 00108F24  48 23 21 D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 8010BFC8 00108F28  7F E4 FB 78 */	mr r4, r31
/* 8010BFCC 00108F2C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8010BFD0 00108F30  38 A1 00 30 */	addi r5, r1, 0x30
/* 8010BFD4 00108F34  4B F4 6F 2D */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8010BFD8 00108F38  C3 A1 00 C8 */	lfs f29, 0xc8(r1)
/* 8010BFDC 00108F3C  38 61 00 30 */	addi r3, r1, 0x30
/* 8010BFE0 00108F40  C3 C1 00 B8 */	lfs f30, 0xb8(r1)
/* 8010BFE4 00108F44  C3 E1 00 A8 */	lfs f31, 0xa8(r1)
/* 8010BFE8 00108F48  48 23 1A F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8010BFEC 00108F4C  EC 5C 07 F2 */	fmuls f2, f28, f31
/* 8010BFF0 00108F50  38 61 00 24 */	addi r3, r1, 0x24
/* 8010BFF4 00108F54  EC 3B 07 B2 */	fmuls f1, f27, f30
/* 8010BFF8 00108F58  38 9F 00 34 */	addi r4, r31, 0x34
/* 8010BFFC 00108F5C  EC 1A 07 72 */	fmuls f0, f26, f29
/* 8010C000 00108F60  38 A1 00 40 */	addi r5, r1, 0x40
/* 8010C004 00108F64  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8010C008 00108F68  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8010C00C 00108F6C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8010C010 00108F70  48 20 6A D9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8010C014 00108F74  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8010C018 00108F78  38 61 00 84 */	addi r3, r1, 0x84
/* 8010C01C 00108F7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8010C020 00108F80  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8010C024 00108F84  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8010C028 00108F88  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8010C02C 00108F8C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8010C030 00108F90  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8010C034 00108F94  48 00 E8 F9 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8010C038 00108F98  38 61 00 84 */	addi r3, r1, 0x84
/* 8010C03C 00108F9C  38 81 00 40 */	addi r4, r1, 0x40
/* 8010C040 00108FA0  48 22 B4 F5 */	bl PointInside__6CAABoxCFRC9CVector3f
/* 8010C044 00108FA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C048 00108FA8  41 82 00 A4 */	beq lbl_8010C0EC
/* 8010C04C 00108FAC  80 AD 8A 08 */	lwz r5, lbl_805A75C8@sda21(r13)
/* 8010C050 00108FB0  38 60 00 00 */	li r3, 0
/* 8010C054 00108FB4  38 80 00 01 */	li r4, 1
/* 8010C058 00108FB8  48 27 DE 9D */	bl __shl2i
/* 8010C05C 00108FBC  38 A0 00 00 */	li r5, 0
/* 8010C060 00108FC0  38 00 00 03 */	li r0, 3
/* 8010C064 00108FC4  90 81 00 54 */	stw r4, 0x54(r1)
/* 8010C068 00108FC8  7F E4 FB 78 */	mr r4, r31
/* 8010C06C 00108FCC  90 61 00 50 */	stw r3, 0x50(r1)
/* 8010C070 00108FD0  38 61 00 68 */	addi r3, r1, 0x68
/* 8010C074 00108FD4  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8010C078 00108FD8  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8010C07C 00108FDC  90 01 00 60 */	stw r0, 0x60(r1)
/* 8010C080 00108FE0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8010C084 00108FE4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010C088 00108FE8  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 8010C08C 00108FEC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010C090 00108FF0  A0 A5 00 08 */	lhz r5, 8(r5)
/* 8010C094 00108FF4  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 8010C098 00108FF8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8010C09C 00108FFC  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 8010C0A0 00109000  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8010C0A4 00109004  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010C0A8 00109008  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010C0AC 0010900C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8010C0B0 00109010  7D 89 03 A6 */	mtctr r12
/* 8010C0B4 00109014  4E 80 04 21 */	bctrl
/* 8010C0B8 00109018  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8010C0BC 0010901C  7F C3 F3 78 */	mr r3, r30
/* 8010C0C0 00109020  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8010C0C4 00109024  38 A1 00 18 */	addi r5, r1, 0x18
/* 8010C0C8 00109028  38 81 00 20 */	addi r4, r1, 0x20
/* 8010C0CC 0010902C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8010C0D0 00109030  38 E1 00 68 */	addi r7, r1, 0x68
/* 8010C0D4 00109034  39 01 00 50 */	addi r8, r1, 0x50
/* 8010C0D8 00109038  4B F3 DF C9 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8010C0DC 0010903C  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010C0E0 00109040  38 60 00 00 */	li r3, 0
/* 8010C0E4 00109044  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8010C0E8 00109048  98 1F 07 2E */	stb r0, 0x72e(r31)
lbl_8010C0EC:
/* 8010C0EC 0010904C  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 8010C0F0 00109050  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8010C0F4 00109054  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 8010C0F8 00109058  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8010C0FC 0010905C  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 8010C100 00109060  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8010C104 00109064  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 8010C108 00109068  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8010C10C 0010906C  E3 61 00 F8 */	psq_l f27, 248(r1), 0, qr0
/* 8010C110 00109070  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 8010C114 00109074  E3 41 00 E8 */	psq_l f26, 232(r1), 0, qr0
/* 8010C118 00109078  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 8010C11C 0010907C  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8010C120 00109080  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8010C124 00109084  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8010C128 00109088  7C 08 03 A6 */	mtlr r0
/* 8010C12C 0010908C  38 21 01 40 */	addi r1, r1, 0x140
/* 8010C130 00109090  4E 80 00 20 */	blr

.global UpdateTouchBounds__8CWarWaspFv
UpdateTouchBounds__8CWarWaspFv:
/* 8010C134 00109094  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8010C138 00109098  7C 08 02 A6 */	mflr r0
/* 8010C13C 0010909C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8010C140 001090A0  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8010C144 001090A4  7C 7F 1B 78 */	mr r31, r3
/* 8010C148 001090A8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8010C14C 001090AC  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8010C150 001090B0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8010C154 001090B4  4B F2 27 61 */	bl GetBoundingBox__9CAnimDataCFv
/* 8010C158 001090B8  C0 A1 00 3C */	lfs f5, 0x3c(r1)
/* 8010C15C 001090BC  38 61 00 18 */	addi r3, r1, 0x18
/* 8010C160 001090C0  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 8010C164 001090C4  38 81 00 54 */	addi r4, r1, 0x54
/* 8010C168 001090C8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 8010C16C 001090CC  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8010C170 001090D0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8010C174 001090D4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8010C178 001090D8  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 8010C17C 001090DC  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8010C180 001090E0  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 8010C184 001090E4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8010C188 001090E8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8010C18C 001090EC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8010C190 001090F0  48 22 B4 7D */	bl GetCenterPoint__6CAABoxCFv
/* 8010C194 001090F4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8010C198 001090F8  38 61 00 6C */	addi r3, r1, 0x6c
/* 8010C19C 001090FC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8010C1A0 00109100  38 9F 00 34 */	addi r4, r31, 0x34
/* 8010C1A4 00109104  D0 21 00 08 */	stfs f1, 8(r1)
/* 8010C1A8 00109108  C0 3F 05 8C */	lfs f1, 0x58c(r31)
/* 8010C1AC 0010910C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8010C1B0 00109110  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8010C1B4 00109114  80 01 00 08 */	lwz r0, 8(r1)
/* 8010C1B8 00109118  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010C1BC 0010911C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 8010C1C0 00109120  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8010C1C4 00109124  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8010C1C8 00109128  90 BF 05 84 */	stw r5, 0x584(r31)
/* 8010C1CC 0010912C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 8010C1D0 00109130  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8010C1D4 00109134  D0 3F 05 8C */	stfs f1, 0x58c(r31)
/* 8010C1D8 00109138  48 20 6F 1D */	bl BuildMatrix3f__12CTransform4fCFv
/* 8010C1DC 0010913C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8010C1E0 00109140  38 61 00 90 */	addi r3, r1, 0x90
/* 8010C1E4 00109144  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8010C1E8 00109148  38 81 00 6C */	addi r4, r1, 0x6c
/* 8010C1EC 0010914C  48 20 70 8D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 8010C1F0 00109150  38 61 00 24 */	addi r3, r1, 0x24
/* 8010C1F4 00109154  38 81 00 54 */	addi r4, r1, 0x54
/* 8010C1F8 00109158  38 A1 00 90 */	addi r5, r1, 0x90
/* 8010C1FC 0010915C  48 22 B7 01 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 8010C200 00109160  7F E3 FB 78 */	mr r3, r31
/* 8010C204 00109164  38 81 00 24 */	addi r4, r1, 0x24
/* 8010C208 00109168  48 00 E4 51 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 8010C20C 0010916C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8010C210 00109170  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8010C214 00109174  7C 08 03 A6 */	mtlr r0
/* 8010C218 00109178  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8010C21C 0010917C  4E 80 00 20 */	blr

.global SetUpPathFindBehavior__8CWarWaspFR13CStateManager
SetUpPathFindBehavior__8CWarWaspFR13CStateManager:
/* 8010C220 00109180  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8010C224 00109184  7C 08 02 A6 */	mflr r0
/* 8010C228 00109188  38 A0 00 00 */	li r5, 0
/* 8010C22C 0010918C  90 01 01 14 */	stw r0, 0x114(r1)
/* 8010C230 00109190  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8010C234 00109194  7C 7F 1B 78 */	mr r31, r3
/* 8010C238 00109198  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8010C23C 0010919C  93 A1 01 04 */	stw r29, 0x104(r1)
/* 8010C240 001091A0  93 81 01 00 */	stw r28, 0x100(r1)
/* 8010C244 001091A4  7C 9C 23 78 */	mr r28, r4
/* 8010C248 001091A8  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010C24C 001091AC  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8010C250 001091B0  98 03 07 2E */	stb r0, 0x72e(r3)
/* 8010C254 001091B4  81 83 00 00 */	lwz r12, 0(r3)
/* 8010C258 001091B8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010C25C 001091BC  7D 89 03 A6 */	mtctr r12
/* 8010C260 001091C0  4E 80 04 21 */	bctrl
/* 8010C264 001091C4  28 03 00 00 */	cmplwi r3, 0
/* 8010C268 001091C8  41 82 02 8C */	beq lbl_8010C4F4
/* 8010C26C 001091CC  7F E3 FB 78 */	mr r3, r31
/* 8010C270 001091D0  7F 84 E3 78 */	mr r4, r28
/* 8010C274 001091D4  48 00 12 81 */	bl SwarmAdd__8CWarWaspFR13CStateManager
/* 8010C278 001091D8  A0 DF 00 08 */	lhz r6, 8(r31)
/* 8010C27C 001091DC  7F 83 E3 78 */	mr r3, r28
/* 8010C280 001091E0  38 81 00 10 */	addi r4, r1, 0x10
/* 8010C284 001091E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 8010C288 001091E8  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8010C28C 001091EC  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010C290 001091F0  B0 C1 00 08 */	sth r6, 8(r1)
/* 8010C294 001091F4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010C298 001091F8  48 12 DE E9 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8010C29C 001091FC  28 03 00 00 */	cmplwi r3, 0
/* 8010C2A0 00109200  41 82 00 0C */	beq lbl_8010C2AC
/* 8010C2A4 00109204  38 A3 00 1C */	addi r5, r3, 0x1c
/* 8010C2A8 00109208  48 00 00 30 */	b lbl_8010C2D8
lbl_8010C2AC:
/* 8010C2AC 0010920C  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010C2B0 00109210  7F E4 FB 78 */	mr r4, r31
/* 8010C2B4 00109214  7F 85 E3 78 */	mr r5, r28
/* 8010C2B8 00109218  38 61 00 5C */	addi r3, r1, 0x5c
/* 8010C2BC 0010921C  4B FF FB E5 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010C2C0 00109220  7F E4 FB 78 */	mr r4, r31
/* 8010C2C4 00109224  7F 85 E3 78 */	mr r5, r28
/* 8010C2C8 00109228  38 61 00 50 */	addi r3, r1, 0x50
/* 8010C2CC 0010922C  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8010C2D0 00109230  4B FF F8 11 */	bl GetCloseInPos__8CWarWaspCFR13CStateManagerRC9CVector3f
/* 8010C2D4 00109234  38 A1 00 50 */	addi r5, r1, 0x50
lbl_8010C2D8:
/* 8010C2D8 00109238  C0 05 00 00 */	lfs f0, 0(r5)
/* 8010C2DC 0010923C  7F E3 FB 78 */	mr r3, r31
/* 8010C2E0 00109240  38 81 00 8C */	addi r4, r1, 0x8c
/* 8010C2E4 00109244  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8010C2E8 00109248  C0 05 00 04 */	lfs f0, 4(r5)
/* 8010C2EC 0010924C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8010C2F0 00109250  C0 05 00 08 */	lfs f0, 8(r5)
/* 8010C2F4 00109254  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8010C2F8 00109258  4B F7 08 65 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8010C2FC 0010925C  38 DF 02 E0 */	addi r6, r31, 0x2e0
/* 8010C300 00109260  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 8010C304 00109264  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 8010C308 00109268  C0 DF 00 40 */	lfs f6, 0x40(r31)
/* 8010C30C 0010926C  EC 40 28 28 */	fsubs f2, f0, f5
/* 8010C310 00109270  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 8010C314 00109274  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8010C318 00109278  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 8010C31C 0010927C  EC 61 30 28 */	fsubs f3, f1, f6
/* 8010C320 00109280  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8010C324 00109284  EC 40 20 28 */	fsubs f2, f0, f4
/* 8010C328 00109288  C0 02 95 1C */	lfs f0, lbl_805AB23C@sda21(r2)
/* 8010C32C 0010928C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8010C330 00109290  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010C334 00109294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C338 00109298  41 81 00 28 */	bgt lbl_8010C360
/* 8010C33C 0010929C  D0 C1 00 44 */	stfs f6, 0x44(r1)
/* 8010C340 001092A0  7F E3 FB 78 */	mr r3, r31
/* 8010C344 001092A4  7F 84 E3 78 */	mr r4, r28
/* 8010C348 001092A8  38 A1 00 44 */	addi r5, r1, 0x44
/* 8010C34C 001092AC  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 8010C350 001092B0  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 8010C354 001092B4  48 0E 8A 7D */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 8010C358 001092B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C35C 001092BC  41 82 01 98 */	beq lbl_8010C4F4
lbl_8010C360:
/* 8010C360 001092C0  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010C364 001092C4  7F E4 FB 78 */	mr r4, r31
/* 8010C368 001092C8  7F 85 E3 78 */	mr r5, r28
/* 8010C36C 001092CC  38 61 00 38 */	addi r3, r1, 0x38
/* 8010C370 001092D0  4B FF FB 31 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010C374 001092D4  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 8010C378 001092D8  38 61 00 74 */	addi r3, r1, 0x74
/* 8010C37C 001092DC  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 8010C380 001092E0  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8010C384 001092E4  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 8010C388 001092E8  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 8010C38C 001092EC  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 8010C390 001092F0  C0 5F 02 E4 */	lfs f2, 0x2e4(r31)
/* 8010C394 001092F4  C0 3F 02 E8 */	lfs f1, 0x2e8(r31)
/* 8010C398 001092F8  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 8010C39C 001092FC  EC 42 20 28 */	fsubs f2, f2, f4
/* 8010C3A0 00109300  EC 21 18 28 */	fsubs f1, f1, f3
/* 8010C3A4 00109304  EC 00 28 28 */	fsubs f0, f0, f5
/* 8010C3A8 00109308  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8010C3AC 0010930C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8010C3B0 00109310  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8010C3B4 00109314  48 20 83 45 */	bl CanBeNormalized__9CVector3fCFv
/* 8010C3B8 00109318  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C3BC 0010931C  41 82 01 24 */	beq lbl_8010C4E0
/* 8010C3C0 00109320  80 AD 8A 28 */	lwz r5, lbl_805A75E8@sda21(r13)
/* 8010C3C4 00109324  38 60 00 00 */	li r3, 0
/* 8010C3C8 00109328  38 80 00 01 */	li r4, 1
/* 8010C3CC 0010932C  48 27 DB 29 */	bl __shl2i
/* 8010C3D0 00109330  80 AD 8A 24 */	lwz r5, lbl_805A75E4@sda21(r13)
/* 8010C3D4 00109334  7C 9D 23 78 */	mr r29, r4
/* 8010C3D8 00109338  7C 7E 1B 78 */	mr r30, r3
/* 8010C3DC 0010933C  38 60 00 00 */	li r3, 0
/* 8010C3E0 00109340  38 80 00 01 */	li r4, 1
/* 8010C3E4 00109344  48 27 DB 11 */	bl __shl2i
/* 8010C3E8 00109348  38 00 00 03 */	li r0, 3
/* 8010C3EC 0010934C  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8010C3F0 00109350  38 61 00 74 */	addi r3, r1, 0x74
/* 8010C3F4 00109354  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8010C3F8 00109358  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 8010C3FC 0010935C  93 A1 00 BC */	stw r29, 0xbc(r1)
/* 8010C400 00109360  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8010C404 00109364  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8010C408 00109368  48 20 84 B1 */	bl Magnitude__9CVector3fCFv
/* 8010C40C 0010936C  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010C410 00109370  7F 84 E3 78 */	mr r4, r28
/* 8010C414 00109374  C0 61 00 74 */	lfs f3, 0x74(r1)
/* 8010C418 00109378  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8010C41C 0010937C  EC 80 08 24 */	fdivs f4, f0, f1
/* 8010C420 00109380  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8010C424 00109384  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8010C428 00109388  38 A1 00 80 */	addi r5, r1, 0x80
/* 8010C42C 0010938C  38 C1 00 68 */	addi r6, r1, 0x68
/* 8010C430 00109390  38 E1 00 B0 */	addi r7, r1, 0xb0
/* 8010C434 00109394  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8010C438 00109398  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8010C43C 0010939C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8010C440 001093A0  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8010C444 001093A4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8010C448 001093A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8010C44C 001093AC  4B F4 0B 4D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8010C450 001093B0  88 01 00 E8 */	lbz r0, 0xe8(r1)
/* 8010C454 001093B4  C0 61 00 C8 */	lfs f3, 0xc8(r1)
/* 8010C458 001093B8  28 00 00 00 */	cmplwi r0, 0
/* 8010C45C 001093BC  41 82 00 84 */	beq lbl_8010C4E0
/* 8010C460 001093C0  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8010C464 001093C4  7F E3 FB 78 */	mr r3, r31
/* 8010C468 001093C8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8010C46C 001093CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8010C470 001093D0  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8010C474 001093D4  EC C3 00 B2 */	fmuls f6, f3, f2
/* 8010C478 001093D8  EC A3 00 32 */	fmuls f5, f3, f0
/* 8010C47C 001093DC  C0 02 95 10 */	lfs f0, lbl_805AB230@sda21(r2)
/* 8010C480 001093E0  EC 83 00 72 */	fmuls f4, f3, f1
/* 8010C484 001093E4  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 8010C488 001093E8  ED 00 01 B2 */	fmuls f8, f0, f6
/* 8010C48C 001093EC  EC E0 01 72 */	fmuls f7, f0, f5
/* 8010C490 001093F0  EC 60 01 32 */	fmuls f3, f0, f4
/* 8010C494 001093F4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8010C498 001093F8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8010C49C 001093FC  EC 42 40 2A */	fadds f2, f2, f8
/* 8010C4A0 00109400  EC 21 38 2A */	fadds f1, f1, f7
/* 8010C4A4 00109404  EC 00 18 2A */	fadds f0, f0, f3
/* 8010C4A8 00109408  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8010C4AC 0010940C  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8010C4B0 00109410  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 8010C4B4 00109414  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8010C4B8 00109418  D1 01 00 24 */	stfs f8, 0x24(r1)
/* 8010C4BC 0010941C  D0 E1 00 28 */	stfs f7, 0x28(r1)
/* 8010C4C0 00109420  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8010C4C4 00109424  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8010C4C8 00109428  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8010C4CC 0010942C  4B F7 06 91 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8010C4D0 00109430  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010C4D4 00109434  38 60 00 01 */	li r3, 1
/* 8010C4D8 00109438  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8010C4DC 0010943C  98 1F 07 2E */	stb r0, 0x72e(r31)
lbl_8010C4E0:
/* 8010C4E0 00109440  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010C4E4 00109444  7F E3 FB 78 */	mr r3, r31
/* 8010C4E8 00109448  7F 84 E3 78 */	mr r4, r28
/* 8010C4EC 0010944C  38 A0 00 00 */	li r5, 0
/* 8010C4F0 00109450  48 0E A1 DD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
lbl_8010C4F4:
/* 8010C4F4 00109454  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8010C4F8 00109458  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8010C4FC 0010945C  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8010C500 00109460  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 8010C504 00109464  83 81 01 00 */	lwz r28, 0x100(r1)
/* 8010C508 00109468  7C 08 03 A6 */	mtlr r0
/* 8010C50C 0010946C  38 21 01 10 */	addi r1, r1, 0x110
/* 8010C510 00109470  4E 80 00 20 */	blr

.global PathToHiveIsClear__8CWarWaspFR13CStateManager
PathToHiveIsClear__8CWarWaspFR13CStateManager:
/* 8010C514 00109474  94 21 F7 10 */	stwu r1, -0x8f0(r1)
/* 8010C518 00109478  7C 08 02 A6 */	mflr r0
/* 8010C51C 0010947C  90 01 08 F4 */	stw r0, 0x8f4(r1)
/* 8010C520 00109480  DB E1 08 E0 */	stfd f31, 0x8e0(r1)
/* 8010C524 00109484  F3 E1 08 E8 */	psq_st f31, -1816(r1), 0, qr0
/* 8010C528 00109488  DB C1 08 D0 */	stfd f30, 0x8d0(r1)
/* 8010C52C 0010948C  F3 C1 08 D8 */	psq_st f30, -1832(r1), 0, qr0
/* 8010C530 00109490  DB A1 08 C0 */	stfd f29, 0x8c0(r1)
/* 8010C534 00109494  F3 A1 08 C8 */	psq_st f29, -1848(r1), 0, qr0
/* 8010C538 00109498  DB 81 08 B0 */	stfd f28, 0x8b0(r1)
/* 8010C53C 0010949C  F3 81 08 B8 */	psq_st f28, -1864(r1), 0, qr0
/* 8010C540 001094A0  DB 61 08 A0 */	stfd f27, 0x8a0(r1)
/* 8010C544 001094A4  F3 61 08 A8 */	psq_st f27, -1880(r1), 0, qr0
/* 8010C548 001094A8  DB 41 08 90 */	stfd f26, 0x890(r1)
/* 8010C54C 001094AC  F3 41 08 98 */	psq_st f26, -1896(r1), 0, qr0
/* 8010C550 001094B0  BF 61 08 7C */	stmw r27, 0x87c(r1)
/* 8010C554 001094B4  7C 7E 1B 78 */	mr r30, r3
/* 8010C558 001094B8  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010C55C 001094BC  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 8010C560 001094C0  7C 9F 23 78 */	mr r31, r4
/* 8010C564 001094C4  C0 23 03 A4 */	lfs f1, 0x3a4(r3)
/* 8010C568 001094C8  C1 03 00 40 */	lfs f8, 0x40(r3)
/* 8010C56C 001094CC  C0 43 03 A0 */	lfs f2, 0x3a0(r3)
/* 8010C570 001094D0  EF C1 38 28 */	fsubs f30, f1, f7
/* 8010C574 001094D4  C3 63 00 48 */	lfs f27, 0x48(r3)
/* 8010C578 001094D8  EF A2 40 28 */	fsubs f29, f2, f8
/* 8010C57C 001094DC  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 8010C580 001094E0  C0 43 03 A8 */	lfs f2, 0x3a8(r3)
/* 8010C584 001094E4  EC 3B 07 B2 */	fmuls f1, f27, f30
/* 8010C588 001094E8  C3 83 00 38 */	lfs f28, 0x38(r3)
/* 8010C58C 001094EC  EF E2 30 28 */	fsubs f31, f2, f6
/* 8010C590 001094F0  EC 3C 0F 7A */	fmadds f1, f28, f29, f1
/* 8010C594 001094F4  C3 43 00 58 */	lfs f26, 0x58(r3)
/* 8010C598 001094F8  EC 3A 0F FA */	fmadds f1, f26, f31, f1
/* 8010C59C 001094FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C5A0 00109500  40 81 02 64 */	ble lbl_8010C804
/* 8010C5A4 00109504  C0 A2 95 20 */	lfs f5, lbl_805AB240@sda21(r2)
/* 8010C5A8 00109508  38 61 00 58 */	addi r3, r1, 0x58
/* 8010C5AC 0010950C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8010C5B0 00109510  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010C5B4 00109514  EC 08 28 2A */	fadds f0, f8, f5
/* 8010C5B8 00109518  EC 87 28 2A */	fadds f4, f7, f5
/* 8010C5BC 0010951C  EC 66 28 2A */	fadds f3, f6, f5
/* 8010C5C0 00109520  EC 48 28 28 */	fsubs f2, f8, f5
/* 8010C5C4 00109524  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010C5C8 00109528  EC 27 28 28 */	fsubs f1, f7, f5
/* 8010C5CC 0010952C  EC 06 28 28 */	fsubs f0, f6, f5
/* 8010C5D0 00109530  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8010C5D4 00109534  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8010C5D8 00109538  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8010C5DC 0010953C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010C5E0 00109540  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010C5E4 00109544  48 22 BF 25 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8010C5E8 00109548  38 00 00 00 */	li r0, 0
/* 8010C5EC 0010954C  80 AD 8A 20 */	lwz r5, lbl_805A75E0@sda21(r13)
/* 8010C5F0 00109550  90 01 00 70 */	stw r0, 0x70(r1)
/* 8010C5F4 00109554  38 60 00 00 */	li r3, 0
/* 8010C5F8 00109558  38 80 00 01 */	li r4, 1
/* 8010C5FC 0010955C  48 27 D8 F9 */	bl __shl2i
/* 8010C600 00109560  39 00 00 01 */	li r8, 1
/* 8010C604 00109564  38 00 00 00 */	li r0, 0
/* 8010C608 00109568  90 81 00 44 */	stw r4, 0x44(r1)
/* 8010C60C 0010956C  38 81 00 70 */	addi r4, r1, 0x70
/* 8010C610 00109570  38 A1 00 58 */	addi r5, r1, 0x58
/* 8010C614 00109574  38 C1 00 40 */	addi r6, r1, 0x40
/* 8010C618 00109578  90 61 00 40 */	stw r3, 0x40(r1)
/* 8010C61C 0010957C  7F E3 FB 78 */	mr r3, r31
/* 8010C620 00109580  38 E0 00 00 */	li r7, 0
/* 8010C624 00109584  91 01 00 38 */	stw r8, 0x38(r1)
/* 8010C628 00109588  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8010C62C 0010958C  90 01 00 48 */	stw r0, 0x48(r1)
/* 8010C630 00109590  91 01 00 50 */	stw r8, 0x50(r1)
/* 8010C634 00109594  4B F4 00 ED */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8010C638 00109598  80 01 00 70 */	lwz r0, 0x70(r1)
/* 8010C63C 0010959C  2C 00 00 00 */	cmpwi r0, 0
/* 8010C640 001095A0  40 81 01 70 */	ble lbl_8010C7B0
/* 8010C644 001095A4  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 8010C648 001095A8  3B 81 00 74 */	addi r28, r1, 0x74
/* 8010C64C 001095AC  7F 9B E3 78 */	mr r27, r28
/* 8010C650 001095B0  EC 1D 07 7A */	fmadds f0, f29, f29, f0
/* 8010C654 001095B4  EF BF 07 FA */	fmadds f29, f31, f31, f0
/* 8010C658 001095B8  48 00 01 44 */	b lbl_8010C79C
lbl_8010C65C:
/* 8010C65C 001095BC  A0 1B 00 00 */	lhz r0, 0(r27)
/* 8010C660 001095C0  7F E3 FB 78 */	mr r3, r31
/* 8010C664 001095C4  38 81 00 08 */	addi r4, r1, 8
/* 8010C668 001095C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8010C66C 001095CC  4B F3 FF 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010C670 001095D0  7C 64 1B 78 */	mr r4, r3
/* 8010C674 001095D4  38 61 00 0C */	addi r3, r1, 0xc
/* 8010C678 001095D8  4B F9 8C F1 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010C67C 001095DC  4B F9 8C C1 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010C680 001095E0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8010C684 001095E4  41 82 01 14 */	beq lbl_8010C798
/* 8010C688 001095E8  A0 7D 00 08 */	lhz r3, 8(r29)
/* 8010C68C 001095EC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010C690 001095F0  7C 03 00 40 */	cmplw r3, r0
/* 8010C694 001095F4  41 82 01 04 */	beq lbl_8010C798
/* 8010C698 001095F8  88 1D 07 2E */	lbz r0, 0x72e(r29)
/* 8010C69C 001095FC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8010C6A0 00109600  41 82 00 F8 */	beq lbl_8010C798
/* 8010C6A4 00109604  C0 22 94 F8 */	lfs f1, lbl_805AB218@sda21(r2)
/* 8010C6A8 00109608  38 7D 03 A0 */	addi r3, r29, 0x3a0
/* 8010C6AC 0010960C  38 9E 03 A0 */	addi r4, r30, 0x3a0
/* 8010C6B0 00109610  48 20 38 B5 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8010C6B4 00109614  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C6B8 00109618  41 82 00 E0 */	beq lbl_8010C798
/* 8010C6BC 0010961C  C1 1D 00 50 */	lfs f8, 0x50(r29)
/* 8010C6C0 00109620  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8010C6C4 00109624  C0 DD 00 40 */	lfs f6, 0x40(r29)
/* 8010C6C8 00109628  EC 48 00 28 */	fsubs f2, f8, f0
/* 8010C6CC 0010962C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010C6D0 00109630  C0 FD 00 60 */	lfs f7, 0x60(r29)
/* 8010C6D4 00109634  EC A6 00 28 */	fsubs f5, f6, f0
/* 8010C6D8 00109638  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8010C6DC 0010963C  EC 3B 00 B2 */	fmuls f1, f27, f2
/* 8010C6E0 00109640  EC 87 00 28 */	fsubs f4, f7, f0
/* 8010C6E4 00109644  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010C6E8 00109648  EC 3C 09 7A */	fmadds f1, f28, f5, f1
/* 8010C6EC 0010964C  EC 3A 09 3A */	fmadds f1, f26, f4, f1
/* 8010C6F0 00109650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C6F4 00109654  40 81 00 A4 */	ble lbl_8010C798
/* 8010C6F8 00109658  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8010C6FC 0010965C  C0 3E 03 A0 */	lfs f1, 0x3a0(r30)
/* 8010C700 00109660  C0 7E 03 A4 */	lfs f3, 0x3a4(r30)
/* 8010C704 00109664  C0 5E 03 A8 */	lfs f2, 0x3a8(r30)
/* 8010C708 00109668  EC C6 08 28 */	fsubs f6, f6, f1
/* 8010C70C 0010966C  EC 25 01 7A */	fmadds f1, f5, f5, f0
/* 8010C710 00109670  C0 02 94 F8 */	lfs f0, lbl_805AB218@sda21(r2)
/* 8010C714 00109674  EC 68 18 28 */	fsubs f3, f8, f3
/* 8010C718 00109678  EC 47 10 28 */	fsubs f2, f7, f2
/* 8010C71C 0010967C  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8010C720 00109680  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010C724 00109684  40 80 00 74 */	bge lbl_8010C798
/* 8010C728 00109688  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8010C72C 0010968C  EC 06 01 BA */	fmadds f0, f6, f6, f0
/* 8010C730 00109690  EC 02 00 BA */	fmadds f0, f2, f2, f0
/* 8010C734 00109694  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8010C738 00109698  40 80 00 60 */	bge lbl_8010C798
/* 8010C73C 0010969C  80 A1 00 70 */	lwz r5, 0x70(r1)
/* 8010C740 001096A0  38 60 00 00 */	li r3, 0
/* 8010C744 001096A4  2C 05 00 00 */	cmpwi r5, 0
/* 8010C748 001096A8  40 81 00 40 */	ble lbl_8010C788
/* 8010C74C 001096AC  2C 05 00 08 */	cmpwi r5, 8
/* 8010C750 001096B0  38 85 FF F8 */	addi r4, r5, -8
/* 8010C754 001096B4  40 81 00 20 */	ble lbl_8010C774
/* 8010C758 001096B8  38 04 00 07 */	addi r0, r4, 7
/* 8010C75C 001096BC  54 00 E8 FE */	srwi r0, r0, 3
/* 8010C760 001096C0  7C 09 03 A6 */	mtctr r0
/* 8010C764 001096C4  2C 04 00 00 */	cmpwi r4, 0
/* 8010C768 001096C8  40 81 00 0C */	ble lbl_8010C774
lbl_8010C76C:
/* 8010C76C 001096CC  38 63 00 08 */	addi r3, r3, 8
/* 8010C770 001096D0  42 00 FF FC */	bdnz lbl_8010C76C
lbl_8010C774:
/* 8010C774 001096D4  7C 03 28 50 */	subf r0, r3, r5
/* 8010C778 001096D8  7C 09 03 A6 */	mtctr r0
/* 8010C77C 001096DC  7C 03 28 00 */	cmpw r3, r5
/* 8010C780 001096E0  40 80 00 08 */	bge lbl_8010C788
lbl_8010C784:
/* 8010C784 001096E4  42 00 00 00 */	bdnz lbl_8010C784
lbl_8010C788:
/* 8010C788 001096E8  38 00 00 00 */	li r0, 0
/* 8010C78C 001096EC  38 60 00 00 */	li r3, 0
/* 8010C790 001096F0  90 01 00 70 */	stw r0, 0x70(r1)
/* 8010C794 001096F4  48 00 00 74 */	b lbl_8010C808
lbl_8010C798:
/* 8010C798 001096F8  3B 7B 00 02 */	addi r27, r27, 2
lbl_8010C79C:
/* 8010C79C 001096FC  80 01 00 70 */	lwz r0, 0x70(r1)
/* 8010C7A0 00109700  54 00 08 3C */	slwi r0, r0, 1
/* 8010C7A4 00109704  7C 1C 02 14 */	add r0, r28, r0
/* 8010C7A8 00109708  7C 1B 00 40 */	cmplw r27, r0
/* 8010C7AC 0010970C  40 82 FE B0 */	bne lbl_8010C65C
lbl_8010C7B0:
/* 8010C7B0 00109710  80 A1 00 70 */	lwz r5, 0x70(r1)
/* 8010C7B4 00109714  38 60 00 00 */	li r3, 0
/* 8010C7B8 00109718  2C 05 00 00 */	cmpwi r5, 0
/* 8010C7BC 0010971C  40 81 00 40 */	ble lbl_8010C7FC
/* 8010C7C0 00109720  2C 05 00 08 */	cmpwi r5, 8
/* 8010C7C4 00109724  38 85 FF F8 */	addi r4, r5, -8
/* 8010C7C8 00109728  40 81 00 20 */	ble lbl_8010C7E8
/* 8010C7CC 0010972C  38 04 00 07 */	addi r0, r4, 7
/* 8010C7D0 00109730  54 00 E8 FE */	srwi r0, r0, 3
/* 8010C7D4 00109734  7C 09 03 A6 */	mtctr r0
/* 8010C7D8 00109738  2C 04 00 00 */	cmpwi r4, 0
/* 8010C7DC 0010973C  40 81 00 0C */	ble lbl_8010C7E8
lbl_8010C7E0:
/* 8010C7E0 00109740  38 63 00 08 */	addi r3, r3, 8
/* 8010C7E4 00109744  42 00 FF FC */	bdnz lbl_8010C7E0
lbl_8010C7E8:
/* 8010C7E8 00109748  7C 03 28 50 */	subf r0, r3, r5
/* 8010C7EC 0010974C  7C 09 03 A6 */	mtctr r0
/* 8010C7F0 00109750  7C 03 28 00 */	cmpw r3, r5
/* 8010C7F4 00109754  40 80 00 08 */	bge lbl_8010C7FC
lbl_8010C7F8:
/* 8010C7F8 00109758  42 00 00 00 */	bdnz lbl_8010C7F8
lbl_8010C7FC:
/* 8010C7FC 0010975C  38 00 00 00 */	li r0, 0
/* 8010C800 00109760  90 01 00 70 */	stw r0, 0x70(r1)
lbl_8010C804:
/* 8010C804 00109764  38 60 00 01 */	li r3, 1
lbl_8010C808:
/* 8010C808 00109768  E3 E1 08 E8 */	psq_l f31, -1816(r1), 0, qr0
/* 8010C80C 0010976C  CB E1 08 E0 */	lfd f31, 0x8e0(r1)
/* 8010C810 00109770  E3 C1 08 D8 */	psq_l f30, -1832(r1), 0, qr0
/* 8010C814 00109774  CB C1 08 D0 */	lfd f30, 0x8d0(r1)
/* 8010C818 00109778  E3 A1 08 C8 */	psq_l f29, -1848(r1), 0, qr0
/* 8010C81C 0010977C  CB A1 08 C0 */	lfd f29, 0x8c0(r1)
/* 8010C820 00109780  E3 81 08 B8 */	psq_l f28, -1864(r1), 0, qr0
/* 8010C824 00109784  CB 81 08 B0 */	lfd f28, 0x8b0(r1)
/* 8010C828 00109788  E3 61 08 A8 */	psq_l f27, -1880(r1), 0, qr0
/* 8010C82C 0010978C  CB 61 08 A0 */	lfd f27, 0x8a0(r1)
/* 8010C830 00109790  E3 41 08 98 */	psq_l f26, -1896(r1), 0, qr0
/* 8010C834 00109794  CB 41 08 90 */	lfd f26, 0x890(r1)
/* 8010C838 00109798  BB 61 08 7C */	lmw r27, 0x87c(r1)
/* 8010C83C 0010979C  80 01 08 F4 */	lwz r0, 0x8f4(r1)
/* 8010C840 001097A0  7C 08 03 A6 */	mtlr r0
/* 8010C844 001097A4  38 21 08 F0 */	addi r1, r1, 0x8f0
/* 8010C848 001097A8  4E 80 00 20 */	blr

.global SteerToDeactivatePos__8CWarWaspFR13CStateManager9EStateMsgf
SteerToDeactivatePos__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010C84C 001097AC  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 8010C850 001097B0  7C 08 02 A6 */	mflr r0
/* 8010C854 001097B4  90 01 02 14 */	stw r0, 0x214(r1)
/* 8010C858 001097B8  DB E1 02 00 */	stfd f31, 0x200(r1)
/* 8010C85C 001097BC  F3 E1 02 08 */	psq_st f31, 520(r1), 0, qr0
/* 8010C860 001097C0  DB C1 01 F0 */	stfd f30, 0x1f0(r1)
/* 8010C864 001097C4  F3 C1 01 F8 */	psq_st f30, 504(r1), 0, qr0
/* 8010C868 001097C8  DB A1 01 E0 */	stfd f29, 0x1e0(r1)
/* 8010C86C 001097CC  F3 A1 01 E8 */	psq_st f29, 488(r1), 0, qr0
/* 8010C870 001097D0  DB 81 01 D0 */	stfd f28, 0x1d0(r1)
/* 8010C874 001097D4  F3 81 01 D8 */	psq_st f28, 472(r1), 0, qr0
/* 8010C878 001097D8  DB 61 01 C0 */	stfd f27, 0x1c0(r1)
/* 8010C87C 001097DC  F3 61 01 C8 */	psq_st f27, 456(r1), 0, qr0
/* 8010C880 001097E0  DB 41 01 B0 */	stfd f26, 0x1b0(r1)
/* 8010C884 001097E4  F3 41 01 B8 */	psq_st f26, 440(r1), 0, qr0
/* 8010C888 001097E8  DB 21 01 A0 */	stfd f25, 0x1a0(r1)
/* 8010C88C 001097EC  F3 21 01 A8 */	psq_st f25, 424(r1), 0, qr0
/* 8010C890 001097F0  93 E1 01 9C */	stw r31, 0x19c(r1)
/* 8010C894 001097F4  93 C1 01 98 */	stw r30, 0x198(r1)
/* 8010C898 001097F8  93 A1 01 94 */	stw r29, 0x194(r1)
/* 8010C89C 001097FC  7C 7F 1B 78 */	mr r31, r3
/* 8010C8A0 00109800  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010C8A4 00109804  C0 43 03 A4 */	lfs f2, 0x3a4(r3)
/* 8010C8A8 00109808  FF 20 08 90 */	fmr f25, f1
/* 8010C8AC 0010980C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8010C8B0 00109810  7C 9D 23 78 */	mr r29, r4
/* 8010C8B4 00109814  C3 C3 05 8C */	lfs f30, 0x58c(r3)
/* 8010C8B8 00109818  7C BE 2B 78 */	mr r30, r5
/* 8010C8BC 0010981C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8010C8C0 00109820  C0 83 03 A0 */	lfs f4, 0x3a0(r3)
/* 8010C8C4 00109824  EC 00 F0 2A */	fadds f0, f0, f30
/* 8010C8C8 00109828  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8010C8CC 0010982C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8010C8D0 00109830  C0 63 03 A8 */	lfs f3, 0x3a8(r3)
/* 8010C8D4 00109834  EC 84 10 28 */	fsubs f4, f4, f2
/* 8010C8D8 00109838  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010C8DC 0010983C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8010C8E0 00109840  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8010C8E4 00109844  EF E2 08 BA */	fmadds f31, f2, f2, f1
/* 8010C8E8 00109848  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010C8EC 0010984C  40 81 03 1C */	ble lbl_8010CC08
/* 8010C8F0 00109850  4B FF FC 25 */	bl PathToHiveIsClear__8CWarWaspFR13CStateManager
/* 8010C8F4 00109854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C8F8 00109858  41 82 03 08 */	beq lbl_8010CC00
/* 8010C8FC 0010985C  C0 22 95 24 */	lfs f1, lbl_805AB244@sda21(r2)
/* 8010C900 00109860  7F E5 FB 78 */	mr r5, r31
/* 8010C904 00109864  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8010C908 00109868  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010C90C 0010986C  38 DF 03 A0 */	addi r6, r31, 0x3a0
/* 8010C910 00109870  48 03 22 0D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010C914 00109874  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 8010C918 00109878  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 8010C91C 0010987C  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8010C920 00109880  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 8010C924 00109884  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 8010C928 00109888  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 8010C92C 0010988C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010C930 00109890  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8010C934 00109894  48 02 75 79 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8010C938 00109898  FF 40 08 90 */	fmr f26, f1
/* 8010C93C 0010989C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010C940 001098A0  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8010C944 001098A4  40 81 00 24 */	ble lbl_8010C968
/* 8010C948 001098A8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010C94C 001098AC  38 80 00 01 */	li r4, 1
/* 8010C950 001098B0  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8010C954 001098B4  48 02 74 81 */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 8010C958 001098B8  C0 02 95 10 */	lfs f0, lbl_805AB230@sda21(r2)
/* 8010C95C 001098BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010C960 001098C0  EC 00 D0 24 */	fdivs f0, f0, f26
/* 8010C964 001098C4  48 00 00 08 */	b lbl_8010C96C
lbl_8010C968:
/* 8010C968 001098C8  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
lbl_8010C96C:
/* 8010C96C 001098CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8010C970 001098D0  38 61 00 FC */	addi r3, r1, 0xfc
/* 8010C974 001098D4  48 20 7F 45 */	bl Magnitude__9CVector3fCFv
/* 8010C978 001098D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010C97C 001098DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8010C980 001098E0  38 81 00 0C */	addi r4, r1, 0xc
/* 8010C984 001098E4  38 AD 8A 1C */	addi r5, r13, lbl_805A75DC@sda21
/* 8010C988 001098E8  4B EF F9 2D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8010C98C 001098EC  C3 43 00 00 */	lfs f26, 0(r3)
/* 8010C990 001098F0  38 61 00 FC */	addi r3, r1, 0xfc
/* 8010C994 001098F4  48 20 7D 65 */	bl CanBeNormalized__9CVector3fCFv
/* 8010C998 001098F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010C99C 001098FC  41 82 00 3C */	beq lbl_8010C9D8
/* 8010C9A0 00109900  38 61 00 AC */	addi r3, r1, 0xac
/* 8010C9A4 00109904  38 81 00 FC */	addi r4, r1, 0xfc
/* 8010C9A8 00109908  48 20 7E A9 */	bl AsNormalized__9CVector3fCFv
/* 8010C9AC 0010990C  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 8010C9B0 00109910  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8010C9B4 00109914  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 8010C9B8 00109918  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8010C9BC 0010991C  EC 5A 00 B2 */	fmuls f2, f26, f2
/* 8010C9C0 00109920  EC 3A 00 72 */	fmuls f1, f26, f1
/* 8010C9C4 00109924  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8010C9C8 00109928  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8010C9CC 0010992C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8010C9D0 00109930  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8010C9D4 00109934  48 00 00 38 */	b lbl_8010CA0C
lbl_8010C9D8:
/* 8010C9D8 00109938  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 8010C9DC 0010993C  38 61 00 88 */	addi r3, r1, 0x88
/* 8010C9E0 00109940  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8010C9E4 00109944  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8010C9E8 00109948  EC 5A 01 32 */	fmuls f2, f26, f4
/* 8010C9EC 0010994C  EC 7A 00 32 */	fmuls f3, f26, f0
/* 8010C9F0 00109950  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8010C9F4 00109954  EC 1A 00 72 */	fmuls f0, f26, f1
/* 8010C9F8 00109958  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8010C9FC 0010995C  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 8010CA00 00109960  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8010CA04 00109964  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8010CA08 00109968  D0 41 00 90 */	stfs f2, 0x90(r1)
lbl_8010CA0C:
/* 8010CA0C 0010996C  C3 A3 00 00 */	lfs f29, 0(r3)
/* 8010CA10 00109970  38 00 00 01 */	li r0, 1
/* 8010CA14 00109974  C3 83 00 04 */	lfs f28, 4(r3)
/* 8010CA18 00109978  FC 20 D0 90 */	fmr f1, f26
/* 8010CA1C 0010997C  C3 63 00 08 */	lfs f27, 8(r3)
/* 8010CA20 00109980  FC 40 D0 90 */	fmr f2, f26
/* 8010CA24 00109984  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CA28 00109988  90 03 00 34 */	stw r0, 0x34(r3)
/* 8010CA2C 0010998C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CA30 00109990  38 63 00 04 */	addi r3, r3, 4
/* 8010CA34 00109994  48 02 4D B5 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8010CA38 00109998  C0 02 95 1C */	lfs f0, lbl_805AB23C@sda21(r2)
/* 8010CA3C 0010999C  EC 00 F0 2A */	fadds f0, f0, f30
/* 8010CA40 001099A0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010CA44 001099A4  40 81 00 C8 */	ble lbl_8010CB0C
/* 8010CA48 001099A8  7F E3 FB 78 */	mr r3, r31
/* 8010CA4C 001099AC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010CA50 001099B0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010CA54 001099B4  7D 89 03 A6 */	mtctr r12
/* 8010CA58 001099B8  4E 80 04 21 */	bctrl
/* 8010CA5C 001099BC  28 03 00 00 */	cmplwi r3, 0
/* 8010CA60 001099C0  41 82 00 68 */	beq lbl_8010CAC8
/* 8010CA64 001099C4  7F E3 FB 78 */	mr r3, r31
/* 8010CA68 001099C8  7F A4 EB 78 */	mr r4, r29
/* 8010CA6C 001099CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010CA70 001099D0  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010CA74 001099D4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8010CA78 001099D8  7D 89 03 A6 */	mtctr r12
/* 8010CA7C 001099DC  4E 80 04 21 */	bctrl
/* 8010CA80 001099E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010CA84 001099E4  40 82 00 44 */	bne lbl_8010CAC8
/* 8010CA88 001099E8  7F E3 FB 78 */	mr r3, r31
/* 8010CA8C 001099EC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010CA90 001099F0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010CA94 001099F4  7D 89 03 A6 */	mtctr r12
/* 8010CA98 001099F8  4E 80 04 21 */	bctrl
/* 8010CA9C 001099FC  80 83 00 04 */	lwz r4, 4(r3)
/* 8010CAA0 00109A00  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8010CAA4 00109A04  38 04 FF FF */	addi r0, r4, -1
/* 8010CAA8 00109A08  7C 03 00 00 */	cmpw r3, r0
/* 8010CAAC 00109A0C  40 80 00 1C */	bge lbl_8010CAC8
/* 8010CAB0 00109A10  FC 20 C8 90 */	fmr f1, f25
/* 8010CAB4 00109A14  7F E3 FB 78 */	mr r3, r31
/* 8010CAB8 00109A18  7F A4 EB 78 */	mr r4, r29
/* 8010CABC 00109A1C  7F C5 F3 78 */	mr r5, r30
/* 8010CAC0 00109A20  48 0E 9C 0D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8010CAC4 00109A24  48 00 01 3C */	b lbl_8010CC00
lbl_8010CAC8:
/* 8010CAC8 00109A28  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010CACC 00109A2C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010CAD0 00109A30  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010CAD4 00109A34  38 81 01 40 */	addi r4, r1, 0x140
/* 8010CAD8 00109A38  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010CADC 00109A3C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010CAE0 00109A40  D3 A1 01 40 */	stfs f29, 0x140(r1)
/* 8010CAE4 00109A44  D3 81 01 44 */	stfs f28, 0x144(r1)
/* 8010CAE8 00109A48  D3 61 01 48 */	stfs f27, 0x148(r1)
/* 8010CAEC 00109A4C  D0 61 01 4C */	stfs f3, 0x14c(r1)
/* 8010CAF0 00109A50  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 8010CAF4 00109A54  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 8010CAF8 00109A58  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 8010CAFC 00109A5C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CB00 00109A60  38 63 00 04 */	addi r3, r3, 4
/* 8010CB04 00109A64  48 02 4C 15 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010CB08 00109A68  48 00 00 F8 */	b lbl_8010CC00
lbl_8010CB0C:
/* 8010CB0C 00109A6C  7F E3 FB 78 */	mr r3, r31
/* 8010CB10 00109A70  7F A5 EB 78 */	mr r5, r29
/* 8010CB14 00109A74  38 80 00 13 */	li r4, 0x13
/* 8010CB18 00109A78  4B F4 74 69 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8010CB1C 00109A7C  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8010CB20 00109A80  7F E5 FB 78 */	mr r5, r31
/* 8010CB24 00109A84  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8010CB28 00109A88  38 61 00 70 */	addi r3, r1, 0x70
/* 8010CB2C 00109A8C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010CB30 00109A90  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010CB34 00109A94  C0 5F 03 A8 */	lfs f2, 0x3a8(r31)
/* 8010CB38 00109A98  38 C1 00 F0 */	addi r6, r1, 0xf0
/* 8010CB3C 00109A9C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8010CB40 00109AA0  C0 22 95 28 */	lfs f1, lbl_805AB248@sda21(r2)
/* 8010CB44 00109AA4  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8010CB48 00109AA8  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 8010CB4C 00109AAC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8010CB50 00109AB0  D0 61 00 F4 */	stfs f3, 0xf4(r1)
/* 8010CB54 00109AB4  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 8010CB58 00109AB8  48 03 1F C5 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010CB5C 00109ABC  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 8010CB60 00109AC0  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8010CB64 00109AC4  EC 24 01 32 */	fmuls f1, f4, f4
/* 8010CB68 00109AC8  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 8010CB6C 00109ACC  C0 02 95 2C */	lfs f0, lbl_805AB24C@sda21(r2)
/* 8010CB70 00109AD0  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010CB74 00109AD4  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8010CB78 00109AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010CB7C 00109ADC  40 81 00 44 */	ble lbl_8010CBC0
/* 8010CB80 00109AE0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010CB84 00109AE4  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010CB88 00109AE8  C0 02 94 F8 */	lfs f0, lbl_805AB218@sda21(r2)
/* 8010CB8C 00109AEC  38 81 01 24 */	addi r4, r1, 0x124
/* 8010CB90 00109AF0  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 8010CB94 00109AF4  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010CB98 00109AF8  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010CB9C 00109AFC  D0 81 01 28 */	stfs f4, 0x128(r1)
/* 8010CBA0 00109B00  D0 A1 01 2C */	stfs f5, 0x12c(r1)
/* 8010CBA4 00109B04  D0 61 01 30 */	stfs f3, 0x130(r1)
/* 8010CBA8 00109B08  D0 41 01 34 */	stfs f2, 0x134(r1)
/* 8010CBAC 00109B0C  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 8010CBB0 00109B10  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8010CBB4 00109B14  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CBB8 00109B18  38 63 00 04 */	addi r3, r3, 4
/* 8010CBBC 00109B1C  48 02 4B 5D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8010CBC0:
/* 8010CBC0 00109B20  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010CBC4 00109B24  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010CBC8 00109B28  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010CBCC 00109B2C  38 81 01 08 */	addi r4, r1, 0x108
/* 8010CBD0 00109B30  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010CBD4 00109B34  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010CBD8 00109B38  D3 A1 01 08 */	stfs f29, 0x108(r1)
/* 8010CBDC 00109B3C  D3 81 01 0C */	stfs f28, 0x10c(r1)
/* 8010CBE0 00109B40  D3 61 01 10 */	stfs f27, 0x110(r1)
/* 8010CBE4 00109B44  D0 61 01 14 */	stfs f3, 0x114(r1)
/* 8010CBE8 00109B48  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 8010CBEC 00109B4C  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 8010CBF0 00109B50  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 8010CBF4 00109B54  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CBF8 00109B58  38 63 00 04 */	addi r3, r3, 4
/* 8010CBFC 00109B5C  48 02 4B 1D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8010CC00:
/* 8010CC00 00109B60  38 60 00 00 */	li r3, 0
/* 8010CC04 00109B64  48 00 01 64 */	b lbl_8010CD68
lbl_8010CC08:
/* 8010CC08 00109B68  C0 02 95 2C */	lfs f0, lbl_805AB24C@sda21(r2)
/* 8010CC0C 00109B6C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010CC10 00109B70  40 81 01 54 */	ble lbl_8010CD64
/* 8010CC14 00109B74  7F A5 EB 78 */	mr r5, r29
/* 8010CC18 00109B78  38 80 00 13 */	li r4, 0x13
/* 8010CC1C 00109B7C  4B F4 73 65 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8010CC20 00109B80  C0 02 95 30 */	lfs f0, lbl_805AB250@sda21(r2)
/* 8010CC24 00109B84  38 61 00 50 */	addi r3, r1, 0x50
/* 8010CC28 00109B88  38 81 00 08 */	addi r4, r1, 8
/* 8010CC2C 00109B8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8010CC30 00109B90  48 20 44 C9 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8010CC34 00109B94  38 61 00 60 */	addi r3, r1, 0x60
/* 8010CC38 00109B98  38 9F 06 A0 */	addi r4, r31, 0x6a0
/* 8010CC3C 00109B9C  38 A1 00 50 */	addi r5, r1, 0x50
/* 8010CC40 00109BA0  48 20 45 61 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8010CC44 00109BA4  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 8010CC48 00109BA8  38 61 00 30 */	addi r3, r1, 0x30
/* 8010CC4C 00109BAC  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8010CC50 00109BB0  38 9F 00 34 */	addi r4, r31, 0x34
/* 8010CC54 00109BB4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8010CC58 00109BB8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8010CC5C 00109BBC  D0 61 00 E0 */	stfs f3, 0xe0(r1)
/* 8010CC60 00109BC0  C0 A2 95 34 */	lfs f5, lbl_805AB254@sda21(r2)
/* 8010CC64 00109BC4  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 8010CC68 00109BC8  C0 C2 95 08 */	lfs f6, lbl_805AB228@sda21(r2)
/* 8010CC6C 00109BCC  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 8010CC70 00109BD0  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 8010CC74 00109BD4  C0 5F 03 A4 */	lfs f2, 0x3a4(r31)
/* 8010CC78 00109BD8  C0 3F 03 A8 */	lfs f1, 0x3a8(r31)
/* 8010CC7C 00109BDC  C0 1F 03 A0 */	lfs f0, 0x3a0(r31)
/* 8010CC80 00109BE0  EC 82 01 72 */	fmuls f4, f2, f5
/* 8010CC84 00109BE4  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 8010CC88 00109BE8  EC 41 01 72 */	fmuls f2, f1, f5
/* 8010CC8C 00109BEC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8010CC90 00109BF0  EC 00 01 72 */	fmuls f0, f0, f5
/* 8010CC94 00109BF4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8010CC98 00109BF8  EC 87 21 BA */	fmadds f4, f7, f6, f4
/* 8010CC9C 00109BFC  EC 43 11 BA */	fmadds f2, f3, f6, f2
/* 8010CCA0 00109C00  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 8010CCA4 00109C04  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 8010CCA8 00109C08  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8010CCAC 00109C0C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 8010CCB0 00109C10  48 20 54 79 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8010CCB4 00109C14  C0 22 95 34 */	lfs f1, lbl_805AB254@sda21(r2)
/* 8010CCB8 00109C18  38 61 00 40 */	addi r3, r1, 0x40
/* 8010CCBC 00109C1C  38 81 00 30 */	addi r4, r1, 0x30
/* 8010CCC0 00109C20  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8010CCC4 00109C24  48 20 48 F5 */	bl SlerpLocal__11CQuaternionFRC11CQuaternionRC11CQuaternionf
/* 8010CCC8 00109C28  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8010CCCC 00109C2C  7F E3 FB 78 */	mr r3, r31
/* 8010CCD0 00109C30  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8010CCD4 00109C34  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8010CCD8 00109C38  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8010CCDC 00109C3C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8010CCE0 00109C40  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8010CCE4 00109C44  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8010CCE8 00109C48  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 8010CCEC 00109C4C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8010CCF0 00109C50  4B F4 61 9D */	bl SetTranslation__6CActorFRC9CVector3f
/* 8010CCF4 00109C54  38 61 00 20 */	addi r3, r1, 0x20
/* 8010CCF8 00109C58  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8010CCFC 00109C5C  48 20 46 A1 */	bl BuildNormalized__11CQuaternionCFv
/* 8010CD00 00109C60  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8010CD04 00109C64  38 61 01 5C */	addi r3, r1, 0x15c
/* 8010CD08 00109C68  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8010CD0C 00109C6C  38 81 00 20 */	addi r4, r1, 0x20
/* 8010CD10 00109C70  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010CD14 00109C74  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010CD18 00109C78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8010CD1C 00109C7C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8010CD20 00109C80  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8010CD24 00109C84  48 20 51 99 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8010CD28 00109C88  38 7F 00 34 */	addi r3, r31, 0x34
/* 8010CD2C 00109C8C  38 81 01 5C */	addi r4, r1, 0x15c
/* 8010CD30 00109C90  48 20 5E 11 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8010CD34 00109C94  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8010CD38 00109C98  38 80 00 01 */	li r4, 1
/* 8010CD3C 00109C9C  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8010CD40 00109CA0  38 60 00 00 */	li r3, 0
/* 8010CD44 00109CA4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8010CD48 00109CA8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8010CD4C 00109CAC  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8010CD50 00109CB0  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8010CD54 00109CB4  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8010CD58 00109CB8  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8010CD5C 00109CBC  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8010CD60 00109CC0  48 00 00 08 */	b lbl_8010CD68
lbl_8010CD64:
/* 8010CD64 00109CC4  38 60 00 01 */	li r3, 1
lbl_8010CD68:
/* 8010CD68 00109CC8  E3 E1 02 08 */	psq_l f31, 520(r1), 0, qr0
/* 8010CD6C 00109CCC  CB E1 02 00 */	lfd f31, 0x200(r1)
/* 8010CD70 00109CD0  E3 C1 01 F8 */	psq_l f30, 504(r1), 0, qr0
/* 8010CD74 00109CD4  CB C1 01 F0 */	lfd f30, 0x1f0(r1)
/* 8010CD78 00109CD8  E3 A1 01 E8 */	psq_l f29, 488(r1), 0, qr0
/* 8010CD7C 00109CDC  CB A1 01 E0 */	lfd f29, 0x1e0(r1)
/* 8010CD80 00109CE0  E3 81 01 D8 */	psq_l f28, 472(r1), 0, qr0
/* 8010CD84 00109CE4  CB 81 01 D0 */	lfd f28, 0x1d0(r1)
/* 8010CD88 00109CE8  E3 61 01 C8 */	psq_l f27, 456(r1), 0, qr0
/* 8010CD8C 00109CEC  CB 61 01 C0 */	lfd f27, 0x1c0(r1)
/* 8010CD90 00109CF0  E3 41 01 B8 */	psq_l f26, 440(r1), 0, qr0
/* 8010CD94 00109CF4  CB 41 01 B0 */	lfd f26, 0x1b0(r1)
/* 8010CD98 00109CF8  E3 21 01 A8 */	psq_l f25, 424(r1), 0, qr0
/* 8010CD9C 00109CFC  CB 21 01 A0 */	lfd f25, 0x1a0(r1)
/* 8010CDA0 00109D00  83 E1 01 9C */	lwz r31, 0x19c(r1)
/* 8010CDA4 00109D04  83 C1 01 98 */	lwz r30, 0x198(r1)
/* 8010CDA8 00109D08  80 01 02 14 */	lwz r0, 0x214(r1)
/* 8010CDAC 00109D0C  83 A1 01 94 */	lwz r29, 0x194(r1)
/* 8010CDB0 00109D10  7C 08 03 A6 */	mtlr r0
/* 8010CDB4 00109D14  38 21 02 10 */	addi r1, r1, 0x210
/* 8010CDB8 00109D18  4E 80 00 20 */	blr

.global ApplyNormalSteering__8CWarWaspFR13CStateManager
ApplyNormalSteering__8CWarWaspFR13CStateManager:
/* 8010CDBC 00109D1C  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 8010CDC0 00109D20  7C 08 02 A6 */	mflr r0
/* 8010CDC4 00109D24  90 01 01 54 */	stw r0, 0x154(r1)
/* 8010CDC8 00109D28  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 8010CDCC 00109D2C  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 8010CDD0 00109D30  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 8010CDD4 00109D34  93 C1 01 38 */	stw r30, 0x138(r1)
/* 8010CDD8 00109D38  7C 9E 23 78 */	mr r30, r4
/* 8010CDDC 00109D3C  7C 7F 1B 78 */	mr r31, r3
/* 8010CDE0 00109D40  80 C4 08 4C */	lwz r6, 0x84c(r4)
/* 8010CDE4 00109D44  7F C3 F3 78 */	mr r3, r30
/* 8010CDE8 00109D48  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8010CDEC 00109D4C  38 81 00 10 */	addi r4, r1, 0x10
/* 8010CDF0 00109D50  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 8010CDF4 00109D54  38 A1 00 0C */	addi r5, r1, 0xc
/* 8010CDF8 00109D58  C0 66 00 60 */	lfs f3, 0x60(r6)
/* 8010CDFC 00109D5C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8010CE00 00109D60  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010CE04 00109D64  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 8010CE08 00109D68  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010CE0C 00109D6C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8010CE10 00109D70  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010CE14 00109D74  D0 81 00 D0 */	stfs f4, 0xd0(r1)
/* 8010CE18 00109D78  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 8010CE1C 00109D7C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8010CE20 00109D80  A0 DF 00 08 */	lhz r6, 8(r31)
/* 8010CE24 00109D84  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8010CE28 00109D88  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010CE2C 00109D8C  B0 C1 00 08 */	sth r6, 8(r1)
/* 8010CE30 00109D90  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010CE34 00109D94  48 12 D3 4D */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8010CE38 00109D98  28 03 00 00 */	cmplwi r3, 0
/* 8010CE3C 00109D9C  41 82 00 0C */	beq lbl_8010CE48
/* 8010CE40 00109DA0  38 83 00 1C */	addi r4, r3, 0x1c
/* 8010CE44 00109DA4  48 00 00 1C */	b lbl_8010CE60
lbl_8010CE48:
/* 8010CE48 00109DA8  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010CE4C 00109DAC  7F E4 FB 78 */	mr r4, r31
/* 8010CE50 00109DB0  7F C5 F3 78 */	mr r5, r30
/* 8010CE54 00109DB4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8010CE58 00109DB8  4B FF F0 49 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010CE5C 00109DBC  38 81 00 A8 */	addi r4, r1, 0xa8
lbl_8010CE60:
/* 8010CE60 00109DC0  C0 A4 00 00 */	lfs f5, 0(r4)
/* 8010CE64 00109DC4  38 61 00 14 */	addi r3, r1, 0x14
/* 8010CE68 00109DC8  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 8010CE6C 00109DCC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8010CE70 00109DD0  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 8010CE74 00109DD4  C0 84 00 08 */	lfs f4, 8(r4)
/* 8010CE78 00109DD8  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 8010CE7C 00109DDC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8010CE80 00109DE0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010CE84 00109DE4  EC 42 08 28 */	fsubs f2, f2, f1
/* 8010CE88 00109DE8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8010CE8C 00109DEC  EC 25 00 28 */	fsubs f1, f5, f0
/* 8010CE90 00109DF0  EC 04 18 28 */	fsubs f0, f4, f3
/* 8010CE94 00109DF4  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8010CE98 00109DF8  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8010CE9C 00109DFC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8010CEA0 00109E00  48 20 73 61 */	bl __ct__9CVector2fFff
/* 8010CEA4 00109E04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8010CEA8 00109E08  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010CEAC 00109E0C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8010CEB0 00109E10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8010CEB4 00109E14  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8010CEB8 00109E18  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010CEBC 00109E1C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8010CEC0 00109E20  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8010CEC4 00109E24  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8010CEC8 00109E28  EF E0 18 28 */	fsubs f31, f0, f3
/* 8010CECC 00109E2C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8010CED0 00109E30  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8010CED4 00109E34  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8010CED8 00109E38  48 20 72 05 */	bl MagSquared__9CVector2fCFv
/* 8010CEDC 00109E3C  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010CEE0 00109E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010CEE4 00109E44  41 81 00 18 */	bgt lbl_8010CEFC
/* 8010CEE8 00109E48  FC 20 FA 10 */	fabs f1, f31
/* 8010CEEC 00109E4C  C0 02 95 28 */	lfs f0, lbl_805AB248@sda21(r2)
/* 8010CEF0 00109E50  FC 20 08 18 */	frsp f1, f1
/* 8010CEF4 00109E54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010CEF8 00109E58  40 81 01 B4 */	ble lbl_8010D0AC
lbl_8010CEFC:
/* 8010CEFC 00109E5C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8010CF00 00109E60  7F E3 FB 78 */	mr r3, r31
/* 8010CF04 00109E64  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8010CF08 00109E68  38 81 00 84 */	addi r4, r1, 0x84
/* 8010CF0C 00109E6C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010CF10 00109E70  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8010CF14 00109E74  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8010CF18 00109E78  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8010CF1C 00109E7C  48 0E 7D F1 */	bl GetStepDirection__10CPatternedFRC9CVector3f
/* 8010CF20 00109E80  2C 03 00 00 */	cmpwi r3, 0
/* 8010CF24 00109E84  41 82 00 78 */	beq lbl_8010CF9C
/* 8010CF28 00109E88  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8010CF2C 00109E8C  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 8010CF30 00109E90  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 8010CF34 00109E94  3C A0 80 3E */	lis r5, lbl_803DA9E4@ha
/* 8010CF38 00109E98  90 01 00 74 */	stw r0, 0x74(r1)
/* 8010CF3C 00109E9C  38 A5 A9 E4 */	addi r5, r5, lbl_803DA9E4@l
/* 8010CF40 00109EA0  38 C0 00 01 */	li r6, 1
/* 8010CF44 00109EA4  38 00 00 00 */	li r0, 0
/* 8010CF48 00109EA8  90 C1 00 78 */	stw r6, 0x78(r1)
/* 8010CF4C 00109EAC  3B C4 00 04 */	addi r30, r4, 4
/* 8010CF50 00109EB0  38 80 00 01 */	li r4, 1
/* 8010CF54 00109EB4  90 61 00 7C */	stw r3, 0x7c(r1)
/* 8010CF58 00109EB8  7F C3 F3 78 */	mr r3, r30
/* 8010CF5C 00109EBC  90 A1 00 74 */	stw r5, 0x74(r1)
/* 8010CF60 00109EC0  90 01 00 80 */	stw r0, 0x80(r1)
/* 8010CF64 00109EC4  48 02 44 D5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010CF68 00109EC8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 8010CF6C 00109ECC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010CF70 00109ED0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010CF74 00109ED4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010CF78 00109ED8  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8010CF7C 00109EDC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010CF80 00109EE0  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 8010CF84 00109EE4  90 81 00 74 */	stw r4, 0x74(r1)
/* 8010CF88 00109EE8  80 61 00 80 */	lwz r3, 0x80(r1)
/* 8010CF8C 00109EEC  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 8010CF90 00109EF0  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 8010CF94 00109EF4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8010CF98 00109EF8  48 00 02 C4 */	b lbl_8010D25C
lbl_8010CF9C:
/* 8010CF9C 00109EFC  C0 22 94 F8 */	lfs f1, lbl_805AB218@sda21(r2)
/* 8010CFA0 00109F00  7F E5 FB 78 */	mr r5, r31
/* 8010CFA4 00109F04  38 61 00 68 */	addi r3, r1, 0x68
/* 8010CFA8 00109F08  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010CFAC 00109F0C  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 8010CFB0 00109F10  48 03 1B 6D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010CFB4 00109F14  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010CFB8 00109F18  C0 C1 00 68 */	lfs f6, 0x68(r1)
/* 8010CFBC 00109F1C  3B C3 66 A0 */	addi r30, r3, sZeroVector__9CVector3f@l
/* 8010CFC0 00109F20  C0 A1 00 6C */	lfs f5, 0x6c(r1)
/* 8010CFC4 00109F24  C0 81 00 70 */	lfs f4, 0x70(r1)
/* 8010CFC8 00109F28  38 81 01 10 */	addi r4, r1, 0x110
/* 8010CFCC 00109F2C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8010CFD0 00109F30  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8010CFD4 00109F34  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8010CFD8 00109F38  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010CFDC 00109F3C  D0 C1 01 10 */	stfs f6, 0x110(r1)
/* 8010CFE0 00109F40  D0 A1 01 14 */	stfs f5, 0x114(r1)
/* 8010CFE4 00109F44  D0 81 01 18 */	stfs f4, 0x118(r1)
/* 8010CFE8 00109F48  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 8010CFEC 00109F4C  D0 41 01 20 */	stfs f2, 0x120(r1)
/* 8010CFF0 00109F50  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 8010CFF4 00109F54  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 8010CFF8 00109F58  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010CFFC 00109F5C  38 63 00 04 */	addi r3, r3, 4
/* 8010D000 00109F60  48 02 47 19 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010D004 00109F64  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8010D008 00109F68  7F E5 FB 78 */	mr r5, r31
/* 8010D00C 00109F6C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8010D010 00109F70  38 61 00 50 */	addi r3, r1, 0x50
/* 8010D014 00109F74  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8010D018 00109F78  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010D01C 00109F7C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8010D020 00109F80  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 8010D024 00109F84  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8010D028 00109F88  C0 22 95 28 */	lfs f1, lbl_805AB248@sda21(r2)
/* 8010D02C 00109F8C  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8010D030 00109F90  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 8010D034 00109F94  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8010D038 00109F98  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8010D03C 00109F9C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8010D040 00109FA0  48 03 1A DD */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010D044 00109FA4  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 8010D048 00109FA8  C0 C1 00 50 */	lfs f6, 0x50(r1)
/* 8010D04C 00109FAC  EC 24 01 32 */	fmuls f1, f4, f4
/* 8010D050 00109FB0  C0 A1 00 58 */	lfs f5, 0x58(r1)
/* 8010D054 00109FB4  C0 02 95 2C */	lfs f0, lbl_805AB24C@sda21(r2)
/* 8010D058 00109FB8  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 8010D05C 00109FBC  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8010D060 00109FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010D064 00109FC4  40 81 01 F8 */	ble lbl_8010D25C
/* 8010D068 00109FC8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010D06C 00109FCC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8010D070 00109FD0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8010D074 00109FD4  38 81 00 F4 */	addi r4, r1, 0xf4
/* 8010D078 00109FD8  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 8010D07C 00109FDC  C0 02 94 F8 */	lfs f0, lbl_805AB218@sda21(r2)
/* 8010D080 00109FE0  D0 C1 00 F4 */	stfs f6, 0xf4(r1)
/* 8010D084 00109FE4  D0 81 00 F8 */	stfs f4, 0xf8(r1)
/* 8010D088 00109FE8  D0 A1 00 FC */	stfs f5, 0xfc(r1)
/* 8010D08C 00109FEC  D0 61 01 00 */	stfs f3, 0x100(r1)
/* 8010D090 00109FF0  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 8010D094 00109FF4  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 8010D098 00109FF8  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 8010D09C 00109FFC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D0A0 0010A000  38 63 00 04 */	addi r3, r3, 4
/* 8010D0A4 0010A004  48 02 46 75 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010D0A8 0010A008  48 00 01 B4 */	b lbl_8010D25C
lbl_8010D0AC:
/* 8010D0AC 0010A00C  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8010D0B0 0010A010  38 80 00 00 */	li r4, 0
/* 8010D0B4 0010A014  38 A0 00 02 */	li r5, 2
/* 8010D0B8 0010A018  48 20 54 DD */	bl Range__9CRandom16Fii
/* 8010D0BC 0010A01C  2C 03 00 01 */	cmpwi r3, 1
/* 8010D0C0 0010A020  41 82 00 98 */	beq lbl_8010D158
/* 8010D0C4 0010A024  40 80 00 10 */	bge lbl_8010D0D4
/* 8010D0C8 0010A028  2C 03 00 00 */	cmpwi r3, 0
/* 8010D0CC 0010A02C  40 80 00 14 */	bge lbl_8010D0E0
/* 8010D0D0 0010A030  48 00 01 8C */	b lbl_8010D25C
lbl_8010D0D4:
/* 8010D0D4 0010A034  2C 03 00 03 */	cmpwi r3, 3
/* 8010D0D8 0010A038  40 80 01 84 */	bge lbl_8010D25C
/* 8010D0DC 0010A03C  48 00 00 F4 */	b lbl_8010D1D0
lbl_8010D0E0:
/* 8010D0E0 0010A040  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8010D0E4 0010A044  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D0E8 0010A048  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8010D0EC 0010A04C  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8010D0F0 0010A050  90 01 00 40 */	stw r0, 0x40(r1)
/* 8010D0F4 0010A054  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 8010D0F8 0010A058  38 80 00 01 */	li r4, 1
/* 8010D0FC 0010A05C  38 A0 00 02 */	li r5, 2
/* 8010D100 0010A060  38 00 00 00 */	li r0, 0
/* 8010D104 0010A064  3B C3 00 04 */	addi r30, r3, 4
/* 8010D108 0010A068  90 81 00 44 */	stw r4, 0x44(r1)
/* 8010D10C 0010A06C  7F C3 F3 78 */	mr r3, r30
/* 8010D110 0010A070  38 80 00 01 */	li r4, 1
/* 8010D114 0010A074  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8010D118 0010A078  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8010D11C 0010A07C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8010D120 0010A080  48 02 43 19 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010D124 0010A084  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010D128 0010A088  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010D12C 0010A08C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010D130 0010A090  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010D134 0010A094  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8010D138 0010A098  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010D13C 0010A09C  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 8010D140 0010A0A0  90 81 00 40 */	stw r4, 0x40(r1)
/* 8010D144 0010A0A4  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8010D148 0010A0A8  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 8010D14C 0010A0AC  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 8010D150 0010A0B0  90 01 00 40 */	stw r0, 0x40(r1)
/* 8010D154 0010A0B4  48 00 01 08 */	b lbl_8010D25C
lbl_8010D158:
/* 8010D158 0010A0B8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8010D15C 0010A0BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D160 0010A0C0  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8010D164 0010A0C4  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8010D168 0010A0C8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8010D16C 0010A0CC  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 8010D170 0010A0D0  38 80 00 01 */	li r4, 1
/* 8010D174 0010A0D4  38 A0 00 03 */	li r5, 3
/* 8010D178 0010A0D8  38 00 00 00 */	li r0, 0
/* 8010D17C 0010A0DC  3B C3 00 04 */	addi r30, r3, 4
/* 8010D180 0010A0E0  90 81 00 34 */	stw r4, 0x34(r1)
/* 8010D184 0010A0E4  7F C3 F3 78 */	mr r3, r30
/* 8010D188 0010A0E8  38 80 00 01 */	li r4, 1
/* 8010D18C 0010A0EC  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8010D190 0010A0F0  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8010D194 0010A0F4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8010D198 0010A0F8  48 02 42 A1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010D19C 0010A0FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010D1A0 0010A100  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010D1A4 0010A104  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010D1A8 0010A108  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010D1AC 0010A10C  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8010D1B0 0010A110  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010D1B4 0010A114  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8010D1B8 0010A118  90 81 00 30 */	stw r4, 0x30(r1)
/* 8010D1BC 0010A11C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8010D1C0 0010A120  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 8010D1C4 0010A124  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 8010D1C8 0010A128  90 01 00 30 */	stw r0, 0x30(r1)
/* 8010D1CC 0010A12C  48 00 00 90 */	b lbl_8010D25C
lbl_8010D1D0:
/* 8010D1D0 0010A130  7F E3 FB 78 */	mr r3, r31
/* 8010D1D4 0010A134  7F C4 F3 78 */	mr r4, r30
/* 8010D1D8 0010A138  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010D1DC 0010A13C  C0 22 95 38 */	lfs f1, lbl_805AB258@sda21(r2)
/* 8010D1E0 0010A140  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8010D1E4 0010A144  7D 89 03 A6 */	mtctr r12
/* 8010D1E8 0010A148  4E 80 04 21 */	bctrl
/* 8010D1EC 0010A14C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D1F0 0010A150  41 82 00 6C */	beq lbl_8010D25C
/* 8010D1F4 0010A154  38 61 00 CC */	addi r3, r1, 0xcc
/* 8010D1F8 0010A158  48 20 75 01 */	bl CanBeNormalized__9CVector3fCFv
/* 8010D1FC 0010A15C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D200 0010A160  41 82 00 5C */	beq lbl_8010D25C
/* 8010D204 0010A164  38 61 00 24 */	addi r3, r1, 0x24
/* 8010D208 0010A168  38 81 00 CC */	addi r4, r1, 0xcc
/* 8010D20C 0010A16C  48 20 76 45 */	bl AsNormalized__9CVector3fCFv
/* 8010D210 0010A170  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010D214 0010A174  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 8010D218 0010A178  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8010D21C 0010A17C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8010D220 0010A180  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8010D224 0010A184  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8010D228 0010A188  C0 83 00 08 */	lfs f4, 8(r3)
/* 8010D22C 0010A18C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8010D230 0010A190  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010D234 0010A194  D0 C1 00 D8 */	stfs f6, 0xd8(r1)
/* 8010D238 0010A198  D0 A1 00 DC */	stfs f5, 0xdc(r1)
/* 8010D23C 0010A19C  D0 81 00 E0 */	stfs f4, 0xe0(r1)
/* 8010D240 0010A1A0  D0 61 00 E4 */	stfs f3, 0xe4(r1)
/* 8010D244 0010A1A4  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 8010D248 0010A1A8  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 8010D24C 0010A1AC  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 8010D250 0010A1B0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D254 0010A1B4  38 63 00 04 */	addi r3, r3, 4
/* 8010D258 0010A1B8  48 02 44 C1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8010D25C:
/* 8010D25C 0010A1BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D260 0010A1C0  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8010D264 0010A1C4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8010D268 0010A1C8  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8010D26C 0010A1CC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8010D270 0010A1D0  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8010D274 0010A1D4  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8010D278 0010A1D8  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 8010D27C 0010A1DC  80 01 01 54 */	lwz r0, 0x154(r1)
/* 8010D280 0010A1E0  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 8010D284 0010A1E4  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 8010D288 0010A1E8  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 8010D28C 0010A1EC  7C 08 03 A6 */	mtlr r0
/* 8010D290 0010A1F0  38 21 01 50 */	addi r1, r1, 0x150
/* 8010D294 0010A1F4  4E 80 00 20 */	blr

.global ApplySeparationBehavior__8CWarWaspFR13CStateManagerf
ApplySeparationBehavior__8CWarWaspFR13CStateManagerf:
/* 8010D298 0010A1F8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8010D29C 0010A1FC  7C 08 02 A6 */	mflr r0
/* 8010D2A0 0010A200  90 01 00 94 */	stw r0, 0x94(r1)
/* 8010D2A4 0010A204  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8010D2A8 0010A208  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8010D2AC 0010A20C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8010D2B0 0010A210  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8010D2B4 0010A214  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 8010D2B8 0010A218  7C 9C 23 78 */	mr r28, r4
/* 8010D2BC 0010A21C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8010D2C0 0010A220  83 DC 08 38 */	lwz r30, 0x838(r28)
/* 8010D2C4 0010A224  FF C0 08 90 */	fmr f30, f1
/* 8010D2C8 0010A228  7C 7B 1B 78 */	mr r27, r3
/* 8010D2CC 0010A22C  3B E4 66 A0 */	addi r31, r4, sZeroVector__9CVector3f@l
/* 8010D2D0 0010A230  AB BE 20 08 */	lha r29, 0x2008(r30)
/* 8010D2D4 0010A234  48 00 01 50 */	b lbl_8010D424
lbl_8010D2D8:
/* 8010D2D8 0010A238  7F C3 F3 78 */	mr r3, r30
/* 8010D2DC 0010A23C  7F A4 EB 78 */	mr r4, r29
/* 8010D2E0 0010A240  4B F0 29 FD */	bl __vc__11CObjectListCFi
/* 8010D2E4 0010A244  7C 64 1B 78 */	mr r4, r3
/* 8010D2E8 0010A248  38 61 00 14 */	addi r3, r1, 0x14
/* 8010D2EC 0010A24C  4B F9 F7 71 */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 8010D2F0 0010A250  83 43 00 04 */	lwz r26, 4(r3)
/* 8010D2F4 0010A254  28 1A 00 00 */	cmplwi r26, 0
/* 8010D2F8 0010A258  41 82 01 10 */	beq lbl_8010D408
/* 8010D2FC 0010A25C  7C 1A D8 40 */	cmplw r26, r27
/* 8010D300 0010A260  41 82 01 08 */	beq lbl_8010D408
/* 8010D304 0010A264  80 7A 00 04 */	lwz r3, 4(r26)
/* 8010D308 0010A268  80 1B 00 04 */	lwz r0, 4(r27)
/* 8010D30C 0010A26C  7C 03 00 00 */	cmpw r3, r0
/* 8010D310 0010A270  40 82 00 F8 */	bne lbl_8010D408
/* 8010D314 0010A274  A0 DA 00 08 */	lhz r6, 8(r26)
/* 8010D318 0010A278  FF E0 F0 90 */	fmr f31, f30
/* 8010D31C 0010A27C  7F 83 E3 78 */	mr r3, r28
/* 8010D320 0010A280  38 81 00 10 */	addi r4, r1, 0x10
/* 8010D324 0010A284  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8010D328 0010A288  38 A1 00 0C */	addi r5, r1, 0xc
/* 8010D32C 0010A28C  A0 1B 06 74 */	lhz r0, 0x674(r27)
/* 8010D330 0010A290  B0 C1 00 08 */	sth r6, 8(r1)
/* 8010D334 0010A294  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010D338 0010A298  48 12 CE 49 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8010D33C 0010A29C  28 03 00 00 */	cmplwi r3, 0
/* 8010D340 0010A2A0  41 82 00 20 */	beq lbl_8010D360
/* 8010D344 0010A2A4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8010D348 0010A2A8  2C 00 00 01 */	cmpwi r0, 1
/* 8010D34C 0010A2AC  41 82 00 0C */	beq lbl_8010D358
/* 8010D350 0010A2B0  2C 00 00 02 */	cmpwi r0, 2
/* 8010D354 0010A2B4  40 82 00 0C */	bne lbl_8010D360
lbl_8010D358:
/* 8010D358 0010A2B8  C0 02 94 D0 */	lfs f0, lbl_805AB1F0@sda21(r2)
/* 8010D35C 0010A2BC  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8010D360:
/* 8010D360 0010A2C0  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 8010D364 0010A2C4  FC 20 F8 90 */	fmr f1, f31
/* 8010D368 0010A2C8  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 8010D36C 0010A2CC  7F 65 DB 78 */	mr r5, r27
/* 8010D370 0010A2D0  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8010D374 0010A2D4  38 61 00 28 */	addi r3, r1, 0x28
/* 8010D378 0010A2D8  38 9B 04 5C */	addi r4, r27, 0x45c
/* 8010D37C 0010A2DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8010D380 0010A2E0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8010D384 0010A2E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010D388 0010A2E8  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8010D38C 0010A2EC  48 03 15 65 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010D390 0010A2F0  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 8010D394 0010A2F4  38 00 00 00 */	li r0, 0
/* 8010D398 0010A2F8  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010D39C 0010A2FC  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8010D3A0 0010A300  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8010D3A4 0010A304  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 8010D3A8 0010A308  40 82 00 14 */	bne lbl_8010D3BC
/* 8010D3AC 0010A30C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8010D3B0 0010A310  40 82 00 0C */	bne lbl_8010D3BC
/* 8010D3B4 0010A314  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8010D3B8 0010A318  41 82 00 08 */	beq lbl_8010D3C0
lbl_8010D3BC:
/* 8010D3BC 0010A31C  38 00 00 01 */	li r0, 1
lbl_8010D3C0:
/* 8010D3C0 0010A320  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8010D3C4 0010A324  41 82 00 44 */	beq lbl_8010D408
/* 8010D3C8 0010A328  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010D3CC 0010A32C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8010D3D0 0010A330  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8010D3D4 0010A334  38 81 00 34 */	addi r4, r1, 0x34
/* 8010D3D8 0010A338  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 8010D3DC 0010A33C  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010D3E0 0010A340  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8010D3E4 0010A344  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8010D3E8 0010A348  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8010D3EC 0010A34C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8010D3F0 0010A350  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8010D3F4 0010A354  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8010D3F8 0010A358  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8010D3FC 0010A35C  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 8010D400 0010A360  38 63 00 04 */	addi r3, r3, 4
/* 8010D404 0010A364  48 02 43 15 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8010D408:
/* 8010D408 0010A368  2C 1D FF FF */	cmpwi r29, -1
/* 8010D40C 0010A36C  41 82 00 14 */	beq lbl_8010D420
/* 8010D410 0010A370  57 A3 18 38 */	slwi r3, r29, 3
/* 8010D414 0010A374  38 03 00 08 */	addi r0, r3, 8
/* 8010D418 0010A378  7F BE 02 AE */	lhax r29, r30, r0
/* 8010D41C 0010A37C  48 00 00 08 */	b lbl_8010D424
lbl_8010D420:
/* 8010D420 0010A380  3B A0 FF FF */	li r29, -1
lbl_8010D424:
/* 8010D424 0010A384  2C 1D FF FF */	cmpwi r29, -1
/* 8010D428 0010A388  40 82 FE B0 */	bne lbl_8010D2D8
/* 8010D42C 0010A38C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8010D430 0010A390  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8010D434 0010A394  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8010D438 0010A398  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8010D43C 0010A39C  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 8010D440 0010A3A0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8010D444 0010A3A4  7C 08 03 A6 */	mtlr r0
/* 8010D448 0010A3A8  38 21 00 90 */	addi r1, r1, 0x90
/* 8010D44C 0010A3AC  4E 80 00 20 */	blr

.global SwarmRemove__8CWarWaspFR13CStateManager
SwarmRemove__8CWarWaspFR13CStateManager:
/* 8010D450 0010A3B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010D454 0010A3B4  7C 08 02 A6 */	mflr r0
/* 8010D458 0010A3B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010D45C 0010A3BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010D460 0010A3C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8010D464 0010A3C4  7C 7E 1B 78 */	mr r30, r3
/* 8010D468 0010A3C8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010D46C 0010A3CC  A0 63 06 74 */	lhz r3, 0x674(r3)
/* 8010D470 0010A3D0  7C 03 00 40 */	cmplw r3, r0
/* 8010D474 0010A3D4  41 82 00 68 */	beq lbl_8010D4DC
/* 8010D478 0010A3D8  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010D47C 0010A3DC  7C 83 23 78 */	mr r3, r4
/* 8010D480 0010A3E0  38 81 00 18 */	addi r4, r1, 0x18
/* 8010D484 0010A3E4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8010D488 0010A3E8  4B F3 F0 ED */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8010D48C 0010A3EC  7C 64 1B 78 */	mr r4, r3
/* 8010D490 0010A3F0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010D494 0010A3F4  4B F9 A0 E1 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010D498 0010A3F8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8010D49C 0010A3FC  28 1F 00 00 */	cmplwi r31, 0
/* 8010D4A0 0010A400  41 82 00 3C */	beq lbl_8010D4DC
/* 8010D4A4 0010A404  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010D4A8 0010A408  7F E3 FB 78 */	mr r3, r31
/* 8010D4AC 0010A40C  38 81 00 14 */	addi r4, r1, 0x14
/* 8010D4B0 0010A410  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010D4B4 0010A414  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010D4B8 0010A418  48 12 BB 39 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010D4BC 0010A41C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D4C0 0010A420  41 82 00 1C */	beq lbl_8010D4DC
/* 8010D4C4 0010A424  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010D4C8 0010A428  7F E3 FB 78 */	mr r3, r31
/* 8010D4CC 0010A42C  38 81 00 0C */	addi r4, r1, 0xc
/* 8010D4D0 0010A430  B0 01 00 08 */	sth r0, 8(r1)
/* 8010D4D4 0010A434  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010D4D8 0010A438  48 12 C0 1D */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_8010D4DC:
/* 8010D4DC 0010A43C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010D4E0 0010A440  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010D4E4 0010A444  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8010D4E8 0010A448  7C 08 03 A6 */	mtlr r0
/* 8010D4EC 0010A44C  38 21 00 30 */	addi r1, r1, 0x30
/* 8010D4F0 0010A450  4E 80 00 20 */	blr

.global SwarmAdd__8CWarWaspFR13CStateManager
SwarmAdd__8CWarWaspFR13CStateManager:
/* 8010D4F4 0010A454  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010D4F8 0010A458  7C 08 02 A6 */	mflr r0
/* 8010D4FC 0010A45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010D500 0010A460  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010D504 0010A464  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8010D508 0010A468  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8010D50C 0010A46C  7C 7D 1B 78 */	mr r29, r3
/* 8010D510 0010A470  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010D514 0010A474  A0 63 06 74 */	lhz r3, 0x674(r3)
/* 8010D518 0010A478  7C 03 00 40 */	cmplw r3, r0
/* 8010D51C 0010A47C  41 82 00 7C */	beq lbl_8010D598
/* 8010D520 0010A480  A0 1D 06 74 */	lhz r0, 0x674(r29)
/* 8010D524 0010A484  7C 83 23 78 */	mr r3, r4
/* 8010D528 0010A488  38 81 00 10 */	addi r4, r1, 0x10
/* 8010D52C 0010A48C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010D530 0010A490  4B F3 F0 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8010D534 0010A494  7C 64 1B 78 */	mr r4, r3
/* 8010D538 0010A498  38 61 00 14 */	addi r3, r1, 0x14
/* 8010D53C 0010A49C  4B F9 A0 39 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010D540 0010A4A0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8010D544 0010A4A4  28 1E 00 00 */	cmplwi r30, 0
/* 8010D548 0010A4A8  41 82 00 50 */	beq lbl_8010D598
/* 8010D54C 0010A4AC  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 8010D550 0010A4B0  3B E0 00 01 */	li r31, 1
/* 8010D554 0010A4B4  2C 00 00 02 */	cmpwi r0, 2
/* 8010D558 0010A4B8  40 82 00 08 */	bne lbl_8010D560
/* 8010D55C 0010A4BC  3B E0 00 02 */	li r31, 2
lbl_8010D560:
/* 8010D560 0010A4C0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010D564 0010A4C4  7F C3 F3 78 */	mr r3, r30
/* 8010D568 0010A4C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8010D56C 0010A4CC  B0 01 00 08 */	sth r0, 8(r1)
/* 8010D570 0010A4D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010D574 0010A4D4  48 12 BA 7D */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8010D578 0010A4D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010D57C 0010A4DC  40 82 00 1C */	bne lbl_8010D598
/* 8010D580 0010A4E0  7F C3 F3 78 */	mr r3, r30
/* 8010D584 0010A4E4  7F A4 EB 78 */	mr r4, r29
/* 8010D588 0010A4E8  7F E5 FB 78 */	mr r5, r31
/* 8010D58C 0010A4EC  38 C0 FF FF */	li r6, -1
/* 8010D590 0010A4F0  38 E0 FF FF */	li r7, -1
/* 8010D594 0010A4F4  48 12 C2 19 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_8010D598:
/* 8010D598 0010A4F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010D59C 0010A4FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010D5A0 0010A500  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8010D5A4 0010A504  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8010D5A8 0010A508  7C 08 03 A6 */	mtlr r0
/* 8010D5AC 0010A50C  38 21 00 30 */	addi r1, r1, 0x30
/* 8010D5B0 0010A510  4E 80 00 20 */	blr

.global JoinCircleAttackTeam__8CWarWaspFiR13CStateManager
JoinCircleAttackTeam__8CWarWaspFiR13CStateManager:
/* 8010D5B4 0010A514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010D5B8 0010A518  7C 08 02 A6 */	mflr r0
/* 8010D5BC 0010A51C  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010D5C0 0010A520  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010D5C4 0010A524  38 00 00 00 */	li r0, 0
/* 8010D5C8 0010A528  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010D5CC 0010A52C  7C BF 2B 78 */	mr r31, r5
/* 8010D5D0 0010A530  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010D5D4 0010A534  7C 9E 23 78 */	mr r30, r4
/* 8010D5D8 0010A538  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010D5DC 0010A53C  7C 7D 1B 78 */	mr r29, r3
/* 8010D5E0 0010A540  C0 03 06 B0 */	lfs f0, 0x6b0(r3)
/* 8010D5E4 0010A544  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D5E8 0010A548  40 82 00 1C */	bne lbl_8010D604
/* 8010D5EC 0010A54C  C0 1D 06 B4 */	lfs f0, 0x6b4(r29)
/* 8010D5F0 0010A550  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D5F4 0010A554  40 82 00 10 */	bne lbl_8010D604
/* 8010D5F8 0010A558  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8010D5FC 0010A55C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D600 0010A560  41 82 00 08 */	beq lbl_8010D608
lbl_8010D604:
/* 8010D604 0010A564  38 00 00 01 */	li r0, 1
lbl_8010D608:
/* 8010D608 0010A568  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8010D60C 0010A56C  41 82 00 4C */	beq lbl_8010D658
/* 8010D610 0010A570  80 1D 07 0C */	lwz r0, 0x70c(r29)
/* 8010D614 0010A574  2C 00 FF FF */	cmpwi r0, -1
/* 8010D618 0010A578  40 82 00 1C */	bne lbl_8010D634
/* 8010D61C 0010A57C  7F A3 EB 78 */	mr r3, r29
/* 8010D620 0010A580  7F E4 FB 78 */	mr r4, r31
/* 8010D624 0010A584  7F C5 F3 78 */	mr r5, r30
/* 8010D628 0010A588  4B FF D9 79 */	bl GetAttackTeamSize__8CWarWaspFR13CStateManageri
/* 8010D62C 0010A58C  90 7D 07 10 */	stw r3, 0x710(r29)
/* 8010D630 0010A590  93 DD 07 0C */	stw r30, 0x70c(r29)
lbl_8010D634:
/* 8010D634 0010A594  93 DD 07 08 */	stw r30, 0x708(r29)
/* 8010D638 0010A598  7F A3 EB 78 */	mr r3, r29
/* 8010D63C 0010A59C  7F E4 FB 78 */	mr r4, r31
/* 8010D640 0010A5A0  4B FF E7 89 */	bl CalcTimeToNextAttack__8CWarWaspFR13CStateManager
/* 8010D644 0010A5A4  D0 3D 07 00 */	stfs f1, 0x700(r29)
/* 8010D648 0010A5A8  7F A3 EB 78 */	mr r3, r29
/* 8010D64C 0010A5AC  7F E4 FB 78 */	mr r4, r31
/* 8010D650 0010A5B0  4B FF D8 A5 */	bl CalcOffTotemAngle__8CWarWaspFR13CStateManager
/* 8010D654 0010A5B4  D0 3D 07 18 */	stfs f1, 0x718(r29)
lbl_8010D658:
/* 8010D658 0010A5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010D65C 0010A5BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010D660 0010A5C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010D664 0010A5C4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010D668 0010A5C8  7C 08 03 A6 */	mtlr r0
/* 8010D66C 0010A5CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8010D670 0010A5D0  4E 80 00 20 */	blr

.global SpecialAttack__8CWarWaspFR13CStateManager9EStateMsgf
SpecialAttack__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010D674 0010A5D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010D678 0010A5D8  7C 08 02 A6 */	mflr r0
/* 8010D67C 0010A5DC  2C 05 00 01 */	cmpwi r5, 1
/* 8010D680 0010A5E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010D684 0010A5E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8010D688 0010A5E8  7C 7F 1B 78 */	mr r31, r3
/* 8010D68C 0010A5EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8010D690 0010A5F0  7C 9E 23 78 */	mr r30, r4
/* 8010D694 0010A5F4  41 82 00 50 */	beq lbl_8010D6E4
/* 8010D698 0010A5F8  40 80 00 10 */	bge lbl_8010D6A8
/* 8010D69C 0010A5FC  2C 05 00 00 */	cmpwi r5, 0
/* 8010D6A0 0010A600  40 80 00 14 */	bge lbl_8010D6B4
/* 8010D6A4 0010A604  48 00 01 F0 */	b lbl_8010D894
lbl_8010D6A8:
/* 8010D6A8 0010A608  2C 05 00 03 */	cmpwi r5, 3
/* 8010D6AC 0010A60C  40 80 01 E8 */	bge lbl_8010D894
/* 8010D6B0 0010A610  48 00 01 94 */	b lbl_8010D844
lbl_8010D6B4:
/* 8010D6B4 0010A614  88 7F 07 2E */	lbz r3, 0x72e(r31)
/* 8010D6B8 0010A618  38 80 00 01 */	li r4, 1
/* 8010D6BC 0010A61C  50 83 26 F6 */	rlwimi r3, r4, 4, 0x1b, 0x1b
/* 8010D6C0 0010A620  38 00 00 00 */	li r0, 0
/* 8010D6C4 0010A624  98 7F 07 2E */	stb r3, 0x72e(r31)
/* 8010D6C8 0010A628  88 7F 07 2E */	lbz r3, 0x72e(r31)
/* 8010D6CC 0010A62C  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 8010D6D0 0010A630  98 7F 07 2E */	stb r3, 0x72e(r31)
/* 8010D6D4 0010A634  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010D6D8 0010A638  C0 1F 06 FC */	lfs f0, 0x6fc(r31)
/* 8010D6DC 0010A63C  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 8010D6E0 0010A640  48 00 01 B4 */	b lbl_8010D894
lbl_8010D6E4:
/* 8010D6E4 0010A644  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8010D6E8 0010A648  2C 00 00 01 */	cmpwi r0, 1
/* 8010D6EC 0010A64C  41 82 01 A8 */	beq lbl_8010D894
/* 8010D6F0 0010A650  40 80 00 10 */	bge lbl_8010D700
/* 8010D6F4 0010A654  2C 00 00 00 */	cmpwi r0, 0
/* 8010D6F8 0010A658  40 80 00 14 */	bge lbl_8010D70C
/* 8010D6FC 0010A65C  48 00 01 98 */	b lbl_8010D894
lbl_8010D700:
/* 8010D700 0010A660  2C 00 00 03 */	cmpwi r0, 3
/* 8010D704 0010A664  40 80 01 90 */	bge lbl_8010D894
/* 8010D708 0010A668  48 00 00 C8 */	b lbl_8010D7D0
lbl_8010D70C:
/* 8010D70C 0010A66C  81 1F 04 50 */	lwz r8, 0x450(r31)
/* 8010D710 0010A670  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 8010D714 0010A674  2C 00 00 07 */	cmpwi r0, 7
/* 8010D718 0010A678  40 82 00 10 */	bne lbl_8010D728
/* 8010D71C 0010A67C  38 00 00 02 */	li r0, 2
/* 8010D720 0010A680  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010D724 0010A684  48 00 01 70 */	b lbl_8010D894
lbl_8010D728:
/* 8010D728 0010A688  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8010D72C 0010A68C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010D730 0010A690  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8010D734 0010A694  38 C5 AA 68 */	addi r6, r5, lbl_803DAA68@l
/* 8010D738 0010A698  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 8010D73C 0010A69C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8010D740 0010A6A0  38 C4 A9 D8 */	addi r6, r4, lbl_803DA9D8@l
/* 8010D744 0010A6A4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8010D748 0010A6A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010D74C 0010A6AC  38 E0 00 05 */	li r7, 5
/* 8010D750 0010A6B0  38 A0 00 08 */	li r5, 8
/* 8010D754 0010A6B4  38 00 00 00 */	li r0, 0
/* 8010D758 0010A6B8  3B E8 00 04 */	addi r31, r8, 4
/* 8010D75C 0010A6BC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8010D760 0010A6C0  7F E3 FB 78 */	mr r3, r31
/* 8010D764 0010A6C4  38 80 00 05 */	li r4, 5
/* 8010D768 0010A6C8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8010D76C 0010A6CC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8010D770 0010A6D0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010D774 0010A6D4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010D778 0010A6D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010D77C 0010A6DC  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8010D780 0010A6E0  48 02 3C B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010D784 0010A6E4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8010D788 0010A6E8  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8010D78C 0010A6EC  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8010D790 0010A6F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010D794 0010A6F4  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8010D798 0010A6F8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010D79C 0010A6FC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8010D7A0 0010A700  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8010D7A4 0010A704  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8010D7A8 0010A708  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8010D7AC 0010A70C  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8010D7B0 0010A710  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8010D7B4 0010A714  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8010D7B8 0010A718  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 8010D7BC 0010A71C  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8010D7C0 0010A720  90 81 00 14 */	stw r4, 0x14(r1)
/* 8010D7C4 0010A724  98 7F 01 24 */	stb r3, 0x124(r31)
/* 8010D7C8 0010A728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010D7CC 0010A72C  48 00 00 C8 */	b lbl_8010D894
lbl_8010D7D0:
/* 8010D7D0 0010A730  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010D7D4 0010A734  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8010D7D8 0010A738  2C 00 00 07 */	cmpwi r0, 7
/* 8010D7DC 0010A73C  41 82 00 10 */	beq lbl_8010D7EC
/* 8010D7E0 0010A740  38 00 00 03 */	li r0, 3
/* 8010D7E4 0010A744  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010D7E8 0010A748  48 00 00 AC */	b lbl_8010D894
lbl_8010D7EC:
/* 8010D7EC 0010A74C  C0 3F 06 B4 */	lfs f1, 0x6b4(r31)
/* 8010D7F0 0010A750  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8010D7F4 0010A754  C0 7F 06 B0 */	lfs f3, 0x6b0(r31)
/* 8010D7F8 0010A758  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8010D7FC 0010A75C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010D800 0010A760  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 8010D804 0010A764  EC A3 10 28 */	fsubs f5, f3, f2
/* 8010D808 0010A768  C0 7F 06 B8 */	lfs f3, 0x6b8(r31)
/* 8010D80C 0010A76C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8010D810 0010A770  EC 00 01 32 */	fmuls f0, f0, f4
/* 8010D814 0010A774  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8010D818 0010A778  EC 63 10 28 */	fsubs f3, f3, f2
/* 8010D81C 0010A77C  EC 21 01 7A */	fmadds f1, f1, f5, f0
/* 8010D820 0010A780  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8010D824 0010A784  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010D828 0010A788  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 8010D82C 0010A78C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010D830 0010A790  40 81 00 64 */	ble lbl_8010D894
/* 8010D834 0010A794  D0 A3 00 1C */	stfs f5, 0x1c(r3)
/* 8010D838 0010A798  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 8010D83C 0010A79C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 8010D840 0010A7A0  48 00 00 54 */	b lbl_8010D894
lbl_8010D844:
/* 8010D844 0010A7A4  A1 1F 00 08 */	lhz r8, 8(r31)
/* 8010D848 0010A7A8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010D84C 0010A7AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8010D850 0010A7B0  38 60 00 00 */	li r3, 0
/* 8010D854 0010A7B4  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8010D858 0010A7B8  38 E0 00 00 */	li r7, 0
/* 8010D85C 0010A7BC  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010D860 0010A7C0  B1 01 00 08 */	sth r8, 8(r1)
/* 8010D864 0010A7C4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010D868 0010A7C8  48 12 C6 69 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 8010D86C 0010A7CC  88 7F 07 2E */	lbz r3, 0x72e(r31)
/* 8010D870 0010A7D0  38 00 00 00 */	li r0, 0
/* 8010D874 0010A7D4  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8010D878 0010A7D8  38 00 FF FF */	li r0, -1
/* 8010D87C 0010A7DC  98 7F 07 2E */	stb r3, 0x72e(r31)
/* 8010D880 0010A7E0  7F E3 FB 78 */	mr r3, r31
/* 8010D884 0010A7E4  7F C4 F3 78 */	mr r4, r30
/* 8010D888 0010A7E8  90 1F 07 08 */	stw r0, 0x708(r31)
/* 8010D88C 0010A7EC  4B FF D6 69 */	bl CalcOffTotemAngle__8CWarWaspFR13CStateManager
/* 8010D890 0010A7F0  D0 3F 07 18 */	stfs f1, 0x718(r31)
lbl_8010D894:
/* 8010D894 0010A7F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010D898 0010A7F8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8010D89C 0010A7FC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8010D8A0 0010A800  7C 08 03 A6 */	mtlr r0
/* 8010D8A4 0010A804  38 21 00 40 */	addi r1, r1, 0x40
/* 8010D8A8 0010A808  4E 80 00 20 */	blr

.global TelegraphAttack__8CWarWaspFR13CStateManager9EStateMsgf
TelegraphAttack__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010D8AC 0010A80C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8010D8B0 0010A810  7C 08 02 A6 */	mflr r0
/* 8010D8B4 0010A814  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8010D8B8 0010A818  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8010D8BC 0010A81C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8010D8C0 0010A820  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8010D8C4 0010A824  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 8010D8C8 0010A828  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8010D8CC 0010A82C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 8010D8D0 0010A830  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 8010D8D4 0010A834  F3 81 00 B8 */	psq_st f28, 184(r1), 0, qr0
/* 8010D8D8 0010A838  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 8010D8DC 0010A83C  F3 61 00 A8 */	psq_st f27, 168(r1), 0, qr0
/* 8010D8E0 0010A840  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 8010D8E4 0010A844  F3 41 00 98 */	psq_st f26, 152(r1), 0, qr0
/* 8010D8E8 0010A848  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 8010D8EC 0010A84C  F3 21 00 88 */	psq_st f25, 136(r1), 0, qr0
/* 8010D8F0 0010A850  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 8010D8F4 0010A854  F3 01 00 78 */	psq_st f24, 120(r1), 0, qr0
/* 8010D8F8 0010A858  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8010D8FC 0010A85C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8010D900 0010A860  2C 05 00 01 */	cmpwi r5, 1
/* 8010D904 0010A864  7C 7E 1B 78 */	mr r30, r3
/* 8010D908 0010A868  7C 9F 23 78 */	mr r31, r4
/* 8010D90C 0010A86C  41 82 00 78 */	beq lbl_8010D984
/* 8010D910 0010A870  40 80 00 10 */	bge lbl_8010D920
/* 8010D914 0010A874  2C 05 00 00 */	cmpwi r5, 0
/* 8010D918 0010A878  40 80 00 14 */	bge lbl_8010D92C
/* 8010D91C 0010A87C  48 00 02 64 */	b lbl_8010DB80
lbl_8010D920:
/* 8010D920 0010A880  2C 05 00 03 */	cmpwi r5, 3
/* 8010D924 0010A884  40 80 02 5C */	bge lbl_8010DB80
/* 8010D928 0010A888  48 00 02 4C */	b lbl_8010DB74
lbl_8010D92C:
/* 8010D92C 0010A88C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010D930 0010A890  38 80 00 03 */	li r4, 3
/* 8010D934 0010A894  48 02 D0 A5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010D938 0010A898  7F C3 F3 78 */	mr r3, r30
/* 8010D93C 0010A89C  7F E5 FB 78 */	mr r5, r31
/* 8010D940 0010A8A0  38 80 00 29 */	li r4, 0x29
/* 8010D944 0010A8A4  4B F4 66 3D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8010D948 0010A8A8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010D94C 0010A8AC  7F E6 FB 78 */	mr r6, r31
/* 8010D950 0010A8B0  38 81 00 0C */	addi r4, r1, 0xc
/* 8010D954 0010A8B4  38 A0 00 08 */	li r5, 8
/* 8010D958 0010A8B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010D95C 0010A8BC  B0 01 00 08 */	sth r0, 8(r1)
/* 8010D960 0010A8C0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010D964 0010A8C4  48 06 D8 F1 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 8010D968 0010A8C8  7F C3 F3 78 */	mr r3, r30
/* 8010D96C 0010A8CC  7F E4 FB 78 */	mr r4, r31
/* 8010D970 0010A8D0  4B FF FB 85 */	bl SwarmAdd__8CWarWaspFR13CStateManager
/* 8010D974 0010A8D4  7F C3 F3 78 */	mr r3, r30
/* 8010D978 0010A8D8  7F E4 FB 78 */	mr r4, r31
/* 8010D97C 0010A8DC  4B FF D9 2D */	bl SetUpCircleTelegraphTeam__8CWarWaspFR13CStateManager
/* 8010D980 0010A8E0  48 00 02 00 */	b lbl_8010DB80
lbl_8010D984:
/* 8010D984 0010A8E4  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010D988 0010A8E8  38 00 00 00 */	li r0, 0
/* 8010D98C 0010A8EC  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 8010D990 0010A8F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D994 0010A8F4  40 82 00 1C */	bne lbl_8010D9B0
/* 8010D998 0010A8F8  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 8010D99C 0010A8FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D9A0 0010A900  40 82 00 10 */	bne lbl_8010D9B0
/* 8010D9A4 0010A904  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8010D9A8 0010A908  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010D9AC 0010A90C  41 82 00 08 */	beq lbl_8010D9B4
lbl_8010D9B0:
/* 8010D9B0 0010A910  38 00 00 01 */	li r0, 1
lbl_8010D9B4:
/* 8010D9B4 0010A914  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8010D9B8 0010A918  41 82 01 C8 */	beq lbl_8010DB80
/* 8010D9BC 0010A91C  7F C3 F3 78 */	mr r3, r30
/* 8010D9C0 0010A920  7F E4 FB 78 */	mr r4, r31
/* 8010D9C4 0010A924  4B FF D7 B9 */	bl TryCircleTeamMerge__8CWarWaspFR13CStateManager
/* 8010D9C8 0010A928  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8010D9CC 0010A92C  38 61 00 34 */	addi r3, r1, 0x34
/* 8010D9D0 0010A930  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8010D9D4 0010A934  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8010D9D8 0010A938  C0 7E 06 B4 */	lfs f3, 0x6b4(r30)
/* 8010D9DC 0010A93C  EC A1 00 28 */	fsubs f5, f1, f0
/* 8010D9E0 0010A940  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8010D9E4 0010A944  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8010D9E8 0010A948  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010D9EC 0010A94C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010D9F0 0010A950  EC 22 08 28 */	fsubs f1, f2, f1
/* 8010D9F4 0010A954  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8010D9F8 0010A958  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8010D9FC 0010A95C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8010DA00 0010A960  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010DA04 0010A964  C3 3E 00 38 */	lfs f25, 0x38(r30)
/* 8010DA08 0010A968  C3 5E 00 48 */	lfs f26, 0x48(r30)
/* 8010DA0C 0010A96C  C3 7E 00 58 */	lfs f27, 0x58(r30)
/* 8010DA10 0010A970  48 20 6C E9 */	bl CanBeNormalized__9CVector3fCFv
/* 8010DA14 0010A974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010DA18 0010A978  41 82 01 0C */	beq lbl_8010DB24
/* 8010DA1C 0010A97C  38 61 00 28 */	addi r3, r1, 0x28
/* 8010DA20 0010A980  38 81 00 34 */	addi r4, r1, 0x34
/* 8010DA24 0010A984  48 20 6E 2D */	bl AsNormalized__9CVector3fCFv
/* 8010DA28 0010A988  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8010DA2C 0010A98C  C5 23 66 F4 */	lfsu f9, sUpVector__9CVector3f@l(r3)
/* 8010DA30 0010A990  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 8010DA34 0010A994  C0 E1 00 30 */	lfs f7, 0x30(r1)
/* 8010DA38 0010A998  C0 63 00 04 */	lfs f3, 4(r3)
/* 8010DA3C 0010A99C  EC 29 01 72 */	fmuls f1, f9, f5
/* 8010DA40 0010A9A0  C1 01 00 28 */	lfs f8, 0x28(r1)
/* 8010DA44 0010A9A4  C0 DE 02 FC */	lfs f6, 0x2fc(r30)
/* 8010DA48 0010A9A8  EC 03 01 F2 */	fmuls f0, f3, f7
/* 8010DA4C 0010A9AC  C0 83 00 08 */	lfs f4, 8(r3)
/* 8010DA50 0010A9B0  EF 28 08 F8 */	fmsubs f25, f8, f3, f1
/* 8010DA54 0010A9B4  EC 46 01 72 */	fmuls f2, f6, f5
/* 8010DA58 0010A9B8  80 9E 07 08 */	lwz r4, 0x708(r30)
/* 8010DA5C 0010A9BC  EF 65 01 38 */	fmsubs f27, f5, f4, f0
/* 8010DA60 0010A9C0  EC 24 02 32 */	fmuls f1, f4, f8
/* 8010DA64 0010A9C4  C0 7E 06 B4 */	lfs f3, 0x6b4(r30)
/* 8010DA68 0010A9C8  EC A6 02 32 */	fmuls f5, f6, f8
/* 8010DA6C 0010A9CC  C0 9E 06 B0 */	lfs f4, 0x6b0(r30)
/* 8010DA70 0010A9D0  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8010DA74 0010A9D4  EF 47 0A 78 */	fmsubs f26, f7, f9, f1
/* 8010DA78 0010A9D8  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8010DA7C 0010A9DC  2C 04 00 00 */	cmpwi r4, 0
/* 8010DA80 0010A9E0  EF 84 28 2A */	fadds f28, f4, f5
/* 8010DA84 0010A9E4  EF A3 10 2A */	fadds f29, f3, f2
/* 8010DA88 0010A9E8  EF C1 00 2A */	fadds f30, f1, f0
/* 8010DA8C 0010A9EC  40 81 00 14 */	ble lbl_8010DAA0
/* 8010DA90 0010A9F0  C0 02 95 3C */	lfs f0, lbl_805AB25C@sda21(r2)
/* 8010DA94 0010A9F4  EF 60 06 F2 */	fmuls f27, f0, f27
/* 8010DA98 0010A9F8  EF 40 06 B2 */	fmuls f26, f0, f26
/* 8010DA9C 0010A9FC  EF 20 06 72 */	fmuls f25, f0, f25
lbl_8010DAA0:
/* 8010DAA0 0010AA00  7F C3 F3 78 */	mr r3, r30
/* 8010DAA4 0010AA04  4B FF D4 81 */	bl GetTeamZStratum__8CWarWaspFi
/* 8010DAA8 0010AA08  C0 1E 07 14 */	lfs f0, 0x714(r30)
/* 8010DAAC 0010AA0C  7F C3 F3 78 */	mr r3, r30
/* 8010DAB0 0010AA10  7F E4 FB 78 */	mr r4, r31
/* 8010DAB4 0010AA14  EF 00 08 2A */	fadds f24, f0, f1
/* 8010DAB8 0010AA18  4B FF DC 0D */	bl CalcSeekMagnitude__8CWarWaspFR13CStateManager
/* 8010DABC 0010AA1C  C0 02 95 40 */	lfs f0, lbl_805AB260@sda21(r2)
/* 8010DAC0 0010AA20  FF E0 08 90 */	fmr f31, f1
/* 8010DAC4 0010AA24  C0 62 94 F0 */	lfs f3, lbl_805AB210@sda21(r2)
/* 8010DAC8 0010AA28  7F C5 F3 78 */	mr r5, r30
/* 8010DACC 0010AA2C  EC 40 06 F2 */	fmuls f2, f0, f27
/* 8010DAD0 0010AA30  38 61 00 1C */	addi r3, r1, 0x1c
/* 8010DAD4 0010AA34  EC 20 06 B2 */	fmuls f1, f0, f26
/* 8010DAD8 0010AA38  EC 00 06 72 */	fmuls f0, f0, f25
/* 8010DADC 0010AA3C  38 9E 04 5C */	addi r4, r30, 0x45c
/* 8010DAE0 0010AA40  EC 5C 10 2A */	fadds f2, f28, f2
/* 8010DAE4 0010AA44  EC 3D 08 2A */	fadds f1, f29, f1
/* 8010DAE8 0010AA48  38 C1 00 10 */	addi r6, r1, 0x10
/* 8010DAEC 0010AA4C  EC 1E 00 2A */	fadds f0, f30, f0
/* 8010DAF0 0010AA50  EC 42 18 2A */	fadds f2, f2, f3
/* 8010DAF4 0010AA54  EC 21 18 2A */	fadds f1, f1, f3
/* 8010DAF8 0010AA58  EC 00 C0 2A */	fadds f0, f0, f24
/* 8010DAFC 0010AA5C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8010DB00 0010AA60  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8010DB04 0010AA64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8010DB08 0010AA68  48 03 11 19 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 8010DB0C 0010AA6C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8010DB10 0010AA70  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8010DB14 0010AA74  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8010DB18 0010AA78  EF 3F 00 B2 */	fmuls f25, f31, f2
/* 8010DB1C 0010AA7C  EF 5F 00 72 */	fmuls f26, f31, f1
/* 8010DB20 0010AA80  EF 7F 00 32 */	fmuls f27, f31, f0
lbl_8010DB24:
/* 8010DB24 0010AA84  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010DB28 0010AA88  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010DB2C 0010AA8C  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010DB30 0010AA90  38 81 00 40 */	addi r4, r1, 0x40
/* 8010DB34 0010AA94  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010DB38 0010AA98  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010DB3C 0010AA9C  D3 21 00 40 */	stfs f25, 0x40(r1)
/* 8010DB40 0010AAA0  D3 41 00 44 */	stfs f26, 0x44(r1)
/* 8010DB44 0010AAA4  D3 61 00 48 */	stfs f27, 0x48(r1)
/* 8010DB48 0010AAA8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8010DB4C 0010AAAC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8010DB50 0010AAB0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8010DB54 0010AAB4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8010DB58 0010AAB8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010DB5C 0010AABC  38 63 00 04 */	addi r3, r3, 4
/* 8010DB60 0010AAC0  48 02 3B B9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010DB64 0010AAC4  7F C3 F3 78 */	mr r3, r30
/* 8010DB68 0010AAC8  7F E4 FB 78 */	mr r4, r31
/* 8010DB6C 0010AACC  4B FF D2 69 */	bl UpdateTelegraphMoveSpeed__8CWarWaspFR13CStateManager
/* 8010DB70 0010AAD0  48 00 00 10 */	b lbl_8010DB80
lbl_8010DB74:
/* 8010DB74 0010AAD4  7F E5 FB 78 */	mr r5, r31
/* 8010DB78 0010AAD8  38 80 00 29 */	li r4, 0x29
/* 8010DB7C 0010AADC  4B F4 67 D5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8010DB80:
/* 8010DB80 0010AAE0  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8010DB84 0010AAE4  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8010DB88 0010AAE8  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 8010DB8C 0010AAEC  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8010DB90 0010AAF0  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 8010DB94 0010AAF4  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 8010DB98 0010AAF8  E3 81 00 B8 */	psq_l f28, 184(r1), 0, qr0
/* 8010DB9C 0010AAFC  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 8010DBA0 0010AB00  E3 61 00 A8 */	psq_l f27, 168(r1), 0, qr0
/* 8010DBA4 0010AB04  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 8010DBA8 0010AB08  E3 41 00 98 */	psq_l f26, 152(r1), 0, qr0
/* 8010DBAC 0010AB0C  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 8010DBB0 0010AB10  E3 21 00 88 */	psq_l f25, 136(r1), 0, qr0
/* 8010DBB4 0010AB14  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 8010DBB8 0010AB18  E3 01 00 78 */	psq_l f24, 120(r1), 0, qr0
/* 8010DBBC 0010AB1C  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 8010DBC0 0010AB20  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8010DBC4 0010AB24  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8010DBC8 0010AB28  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8010DBCC 0010AB2C  7C 08 03 A6 */	mtlr r0
/* 8010DBD0 0010AB30  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8010DBD4 0010AB34  4E 80 00 20 */	blr

.global TargetPatrol__8CWarWaspFR13CStateManager9EStateMsgf
TargetPatrol__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010DBD8 0010AB38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010DBDC 0010AB3C  7C 08 02 A6 */	mflr r0
/* 8010DBE0 0010AB40  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010DBE4 0010AB44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8010DBE8 0010AB48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8010DBEC 0010AB4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010DBF0 0010AB50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010DBF4 0010AB54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010DBF8 0010AB58  7C BF 2B 78 */	mr r31, r5
/* 8010DBFC 0010AB5C  FF E0 08 90 */	fmr f31, f1
/* 8010DC00 0010AB60  2C 1F 00 01 */	cmpwi r31, 1
/* 8010DC04 0010AB64  7C 7D 1B 78 */	mr r29, r3
/* 8010DC08 0010AB68  7C 9E 23 78 */	mr r30, r4
/* 8010DC0C 0010AB6C  41 82 00 98 */	beq lbl_8010DCA4
/* 8010DC10 0010AB70  40 80 01 0C */	bge lbl_8010DD1C
/* 8010DC14 0010AB74  2C 1F 00 00 */	cmpwi r31, 0
/* 8010DC18 0010AB78  40 80 00 08 */	bge lbl_8010DC20
/* 8010DC1C 0010AB7C  48 00 01 00 */	b lbl_8010DD1C
lbl_8010DC20:
/* 8010DC20 0010AB80  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010DC24 0010AB84  38 80 00 01 */	li r4, 1
/* 8010DC28 0010AB88  48 02 CD B1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010DC2C 0010AB8C  7F A3 EB 78 */	mr r3, r29
/* 8010DC30 0010AB90  7F C4 F3 78 */	mr r4, r30
/* 8010DC34 0010AB94  4B FF F8 1D */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 8010DC38 0010AB98  FC 20 F8 90 */	fmr f1, f31
/* 8010DC3C 0010AB9C  7F A3 EB 78 */	mr r3, r29
/* 8010DC40 0010ABA0  7F C4 F3 78 */	mr r4, r30
/* 8010DC44 0010ABA4  7F E5 FB 78 */	mr r5, r31
/* 8010DC48 0010ABA8  48 0E 92 2D */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8010DC4C 0010ABAC  7F A3 EB 78 */	mr r3, r29
/* 8010DC50 0010ABB0  7F C4 F3 78 */	mr r4, r30
/* 8010DC54 0010ABB4  48 0E 76 3D */	bl UpdateDest__10CPatternedFR13CStateManager
/* 8010DC58 0010ABB8  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 8010DC5C 0010ABBC  7F A3 EB 78 */	mr r3, r29
/* 8010DC60 0010ABC0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8010DC64 0010ABC4  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 8010DC68 0010ABC8  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8010DC6C 0010ABCC  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 8010DC70 0010ABD0  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8010DC74 0010ABD4  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010DC78 0010ABD8  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010DC7C 0010ABDC  7D 89 03 A6 */	mtctr r12
/* 8010DC80 0010ABE0  4E 80 04 21 */	bctrl
/* 8010DC84 0010ABE4  28 03 00 00 */	cmplwi r3, 0
/* 8010DC88 0010ABE8  41 82 00 94 */	beq lbl_8010DD1C
/* 8010DC8C 0010ABEC  FC 20 F8 90 */	fmr f1, f31
/* 8010DC90 0010ABF0  7F A3 EB 78 */	mr r3, r29
/* 8010DC94 0010ABF4  7F C4 F3 78 */	mr r4, r30
/* 8010DC98 0010ABF8  7F E5 FB 78 */	mr r5, r31
/* 8010DC9C 0010ABFC  48 0E 8A 31 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8010DCA0 0010AC00  48 00 00 7C */	b lbl_8010DD1C
lbl_8010DCA4:
/* 8010DCA4 0010AC04  81 83 00 00 */	lwz r12, 0(r3)
/* 8010DCA8 0010AC08  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010DCAC 0010AC0C  7D 89 03 A6 */	mtctr r12
/* 8010DCB0 0010AC10  4E 80 04 21 */	bctrl
/* 8010DCB4 0010AC14  28 03 00 00 */	cmplwi r3, 0
/* 8010DCB8 0010AC18  41 82 00 40 */	beq lbl_8010DCF8
/* 8010DCBC 0010AC1C  7F A3 EB 78 */	mr r3, r29
/* 8010DCC0 0010AC20  7F C4 F3 78 */	mr r4, r30
/* 8010DCC4 0010AC24  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010DCC8 0010AC28  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010DCCC 0010AC2C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8010DCD0 0010AC30  7D 89 03 A6 */	mtctr r12
/* 8010DCD4 0010AC34  4E 80 04 21 */	bctrl
/* 8010DCD8 0010AC38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010DCDC 0010AC3C  40 82 00 1C */	bne lbl_8010DCF8
/* 8010DCE0 0010AC40  FC 20 F8 90 */	fmr f1, f31
/* 8010DCE4 0010AC44  7F A3 EB 78 */	mr r3, r29
/* 8010DCE8 0010AC48  7F C4 F3 78 */	mr r4, r30
/* 8010DCEC 0010AC4C  7F E5 FB 78 */	mr r5, r31
/* 8010DCF0 0010AC50  48 0E 89 DD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8010DCF4 0010AC54  48 00 00 18 */	b lbl_8010DD0C
lbl_8010DCF8:
/* 8010DCF8 0010AC58  FC 20 F8 90 */	fmr f1, f31
/* 8010DCFC 0010AC5C  7F A3 EB 78 */	mr r3, r29
/* 8010DD00 0010AC60  7F C4 F3 78 */	mr r4, r30
/* 8010DD04 0010AC64  7F E5 FB 78 */	mr r5, r31
/* 8010DD08 0010AC68  48 0E 91 6D */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
lbl_8010DD0C:
/* 8010DD0C 0010AC6C  C0 22 95 44 */	lfs f1, lbl_805AB264@sda21(r2)
/* 8010DD10 0010AC70  7F A3 EB 78 */	mr r3, r29
/* 8010DD14 0010AC74  7F C4 F3 78 */	mr r4, r30
/* 8010DD18 0010AC78  4B FF F5 81 */	bl ApplySeparationBehavior__8CWarWaspFR13CStateManagerf
lbl_8010DD1C:
/* 8010DD1C 0010AC7C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8010DD20 0010AC80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010DD24 0010AC84  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8010DD28 0010AC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010DD2C 0010AC8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010DD30 0010AC90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010DD34 0010AC94  7C 08 03 A6 */	mtlr r0
/* 8010DD38 0010AC98  38 21 00 30 */	addi r1, r1, 0x30
/* 8010DD3C 0010AC9C  4E 80 00 20 */	blr

.global Dodge__8CWarWaspFR13CStateManager9EStateMsgf
Dodge__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010DD40 0010ACA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010DD44 0010ACA4  7C 08 02 A6 */	mflr r0
/* 8010DD48 0010ACA8  2C 05 00 01 */	cmpwi r5, 1
/* 8010DD4C 0010ACAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010DD50 0010ACB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010DD54 0010ACB4  7C 7F 1B 78 */	mr r31, r3
/* 8010DD58 0010ACB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010DD5C 0010ACBC  41 82 00 A4 */	beq lbl_8010DE00
/* 8010DD60 0010ACC0  40 80 00 10 */	bge lbl_8010DD70
/* 8010DD64 0010ACC4  2C 05 00 00 */	cmpwi r5, 0
/* 8010DD68 0010ACC8  40 80 00 14 */	bge lbl_8010DD7C
/* 8010DD6C 0010ACCC  48 00 00 F0 */	b lbl_8010DE5C
lbl_8010DD70:
/* 8010DD70 0010ACD0  2C 05 00 03 */	cmpwi r5, 3
/* 8010DD74 0010ACD4  40 80 00 E8 */	bge lbl_8010DE5C
/* 8010DD78 0010ACD8  48 00 00 DC */	b lbl_8010DE54
lbl_8010DD7C:
/* 8010DD7C 0010ACDC  80 DF 07 04 */	lwz r6, 0x704(r31)
/* 8010DD80 0010ACE0  2C 06 FF FF */	cmpwi r6, -1
/* 8010DD84 0010ACE4  41 82 00 D8 */	beq lbl_8010DE5C
/* 8010DD88 0010ACE8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010DD8C 0010ACEC  38 A0 00 01 */	li r5, 1
/* 8010DD90 0010ACF0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010DD94 0010ACF4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010DD98 0010ACF8  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8010DD9C 0010ACFC  90 01 00 08 */	stw r0, 8(r1)
/* 8010DDA0 0010AD00  38 04 A9 E4 */	addi r0, r4, lbl_803DA9E4@l
/* 8010DDA4 0010AD04  3B C3 00 04 */	addi r30, r3, 4
/* 8010DDA8 0010AD08  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8010DDAC 0010AD0C  7F C3 F3 78 */	mr r3, r30
/* 8010DDB0 0010AD10  38 80 00 01 */	li r4, 1
/* 8010DDB4 0010AD14  90 01 00 08 */	stw r0, 8(r1)
/* 8010DDB8 0010AD18  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8010DDBC 0010AD1C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8010DDC0 0010AD20  48 02 36 79 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010DDC4 0010AD24  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8010DDC8 0010AD28  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010DDCC 0010AD2C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010DDD0 0010AD30  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010DDD4 0010AD34  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8010DDD8 0010AD38  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 8010DDDC 0010AD3C  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8010DDE0 0010AD40  38 00 00 02 */	li r0, 2
/* 8010DDE4 0010AD44  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8010DDE8 0010AD48  90 DE 00 CC */	stw r6, 0xcc(r30)
/* 8010DDEC 0010AD4C  90 BE 00 D0 */	stw r5, 0xd0(r30)
/* 8010DDF0 0010AD50  90 81 00 08 */	stw r4, 8(r1)
/* 8010DDF4 0010AD54  90 61 00 08 */	stw r3, 8(r1)
/* 8010DDF8 0010AD58  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010DDFC 0010AD5C  48 00 00 60 */	b lbl_8010DE5C
lbl_8010DE00:
/* 8010DE00 0010AD60  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8010DE04 0010AD64  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8010DE08 0010AD68  2C 00 00 03 */	cmpwi r0, 3
/* 8010DE0C 0010AD6C  41 82 00 10 */	beq lbl_8010DE1C
/* 8010DE10 0010AD70  38 00 00 03 */	li r0, 3
/* 8010DE14 0010AD74  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010DE18 0010AD78  48 00 00 44 */	b lbl_8010DE5C
lbl_8010DE1C:
/* 8010DE1C 0010AD7C  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8010DE20 0010AD80  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010DE24 0010AD84  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8010DE28 0010AD88  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8010DE2C 0010AD8C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8010DE30 0010AD90  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010DE34 0010AD94  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010DE38 0010AD98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8010DE3C 0010AD9C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010DE40 0010ADA0  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8010DE44 0010ADA4  EC 02 08 28 */	fsubs f0, f2, f1
/* 8010DE48 0010ADA8  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 8010DE4C 0010ADAC  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8010DE50 0010ADB0  48 00 00 0C */	b lbl_8010DE5C
lbl_8010DE54:
/* 8010DE54 0010ADB4  38 00 FF FF */	li r0, -1
/* 8010DE58 0010ADB8  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_8010DE5C:
/* 8010DE5C 0010ADBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010DE60 0010ADC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010DE64 0010ADC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010DE68 0010ADC8  7C 08 03 A6 */	mtlr r0
/* 8010DE6C 0010ADCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8010DE70 0010ADD0  4E 80 00 20 */	blr

.global Deactivate__8CWarWaspFR13CStateManager9EStateMsgf
Deactivate__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010DE74 0010ADD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010DE78 0010ADD8  7C 08 02 A6 */	mflr r0
/* 8010DE7C 0010ADDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010DE80 0010ADE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8010DE84 0010ADE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8010DE88 0010ADE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8010DE8C 0010ADEC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8010DE90 0010ADF0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8010DE94 0010ADF4  7C BF 2B 78 */	mr r31, r5
/* 8010DE98 0010ADF8  7C 7D 1B 78 */	mr r29, r3
/* 8010DE9C 0010ADFC  FF E0 08 90 */	fmr f31, f1
/* 8010DEA0 0010AE00  2C 1F 00 01 */	cmpwi r31, 1
/* 8010DEA4 0010AE04  81 43 04 50 */	lwz r10, 0x450(r3)
/* 8010DEA8 0010AE08  7C 9E 23 78 */	mr r30, r4
/* 8010DEAC 0010AE0C  41 82 00 A0 */	beq lbl_8010DF4C
/* 8010DEB0 0010AE10  40 80 02 1C */	bge lbl_8010E0CC
/* 8010DEB4 0010AE14  2C 1F 00 00 */	cmpwi r31, 0
/* 8010DEB8 0010AE18  40 80 00 08 */	bge lbl_8010DEC0
/* 8010DEBC 0010AE1C  48 00 02 10 */	b lbl_8010E0CC
lbl_8010DEC0:
/* 8010DEC0 0010AE20  38 60 00 01 */	li r3, 1
/* 8010DEC4 0010AE24  38 80 00 01 */	li r4, 1
/* 8010DEC8 0010AE28  90 7D 05 68 */	stw r3, 0x568(r29)
/* 8010DECC 0010AE2C  88 1D 07 2E */	lbz r0, 0x72e(r29)
/* 8010DED0 0010AE30  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8010DED4 0010AE34  98 1D 07 2E */	stb r0, 0x72e(r29)
/* 8010DED8 0010AE38  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010DEDC 0010AE3C  48 02 CA FD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010DEE0 0010AE40  7F A3 EB 78 */	mr r3, r29
/* 8010DEE4 0010AE44  7F C4 F3 78 */	mr r4, r30
/* 8010DEE8 0010AE48  4B FF F5 69 */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 8010DEEC 0010AE4C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010DEF0 0010AE50  7F A3 EB 78 */	mr r3, r29
/* 8010DEF4 0010AE54  38 9D 06 78 */	addi r4, r29, 0x678
/* 8010DEF8 0010AE58  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 8010DEFC 0010AE5C  C0 1D 03 A0 */	lfs f0, 0x3a0(r29)
/* 8010DF00 0010AE60  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8010DF04 0010AE64  C0 1D 03 A4 */	lfs f0, 0x3a4(r29)
/* 8010DF08 0010AE68  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8010DF0C 0010AE6C  C0 1D 03 A8 */	lfs f0, 0x3a8(r29)
/* 8010DF10 0010AE70  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8010DF14 0010AE74  4B F6 EC 49 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8010DF18 0010AE78  7F A3 EB 78 */	mr r3, r29
/* 8010DF1C 0010AE7C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010DF20 0010AE80  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010DF24 0010AE84  7D 89 03 A6 */	mtctr r12
/* 8010DF28 0010AE88  4E 80 04 21 */	bctrl
/* 8010DF2C 0010AE8C  28 03 00 00 */	cmplwi r3, 0
/* 8010DF30 0010AE90  41 82 01 9C */	beq lbl_8010E0CC
/* 8010DF34 0010AE94  FC 20 F8 90 */	fmr f1, f31
/* 8010DF38 0010AE98  7F A3 EB 78 */	mr r3, r29
/* 8010DF3C 0010AE9C  7F C4 F3 78 */	mr r4, r30
/* 8010DF40 0010AEA0  7F E5 FB 78 */	mr r5, r31
/* 8010DF44 0010AEA4  48 0E 87 89 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8010DF48 0010AEA8  48 00 01 84 */	b lbl_8010E0CC
lbl_8010DF4C:
/* 8010DF4C 0010AEAC  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 8010DF50 0010AEB0  2C 00 00 01 */	cmpwi r0, 1
/* 8010DF54 0010AEB4  41 82 00 20 */	beq lbl_8010DF74
/* 8010DF58 0010AEB8  40 80 00 10 */	bge lbl_8010DF68
/* 8010DF5C 0010AEBC  2C 00 00 00 */	cmpwi r0, 0
/* 8010DF60 0010AEC0  40 80 00 3C */	bge lbl_8010DF9C
/* 8010DF64 0010AEC4  48 00 01 68 */	b lbl_8010E0CC
lbl_8010DF68:
/* 8010DF68 0010AEC8  2C 00 00 03 */	cmpwi r0, 3
/* 8010DF6C 0010AECC  40 80 01 60 */	bge lbl_8010E0CC
/* 8010DF70 0010AED0  48 00 01 48 */	b lbl_8010E0B8
lbl_8010DF74:
/* 8010DF74 0010AED4  4B FF E8 D9 */	bl SteerToDeactivatePos__8CWarWaspFR13CStateManager9EStateMsgf
/* 8010DF78 0010AED8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010DF7C 0010AEDC  41 82 01 50 */	beq lbl_8010E0CC
/* 8010DF80 0010AEE0  7F A3 EB 78 */	mr r3, r29
/* 8010DF84 0010AEE4  7F C5 F3 78 */	mr r5, r30
/* 8010DF88 0010AEE8  38 80 00 13 */	li r4, 0x13
/* 8010DF8C 0010AEEC  4B F4 5F F5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8010DF90 0010AEF0  38 00 00 00 */	li r0, 0
/* 8010DF94 0010AEF4  90 1D 05 68 */	stw r0, 0x568(r29)
/* 8010DF98 0010AEF8  48 00 01 34 */	b lbl_8010E0CC
lbl_8010DF9C:
/* 8010DF9C 0010AEFC  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8010DFA0 0010AF00  2C 00 00 0C */	cmpwi r0, 0xc
/* 8010DFA4 0010AF04  40 82 00 44 */	bne lbl_8010DFE8
/* 8010DFA8 0010AF08  7F C7 F3 78 */	mr r7, r30
/* 8010DFAC 0010AF0C  38 80 00 21 */	li r4, 0x21
/* 8010DFB0 0010AF10  38 A0 00 28 */	li r5, 0x28
/* 8010DFB4 0010AF14  38 C0 00 29 */	li r6, 0x29
/* 8010DFB8 0010AF18  4B F4 5E 35 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8010DFBC 0010AF1C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010DFC0 0010AF20  7F C6 F3 78 */	mr r6, r30
/* 8010DFC4 0010AF24  38 81 00 0C */	addi r4, r1, 0xc
/* 8010DFC8 0010AF28  38 A0 00 08 */	li r5, 8
/* 8010DFCC 0010AF2C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8010DFD0 0010AF30  B0 01 00 08 */	sth r0, 8(r1)
/* 8010DFD4 0010AF34  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8010DFD8 0010AF38  48 06 D2 7D */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 8010DFDC 0010AF3C  38 00 00 02 */	li r0, 2
/* 8010DFE0 0010AF40  90 1D 05 68 */	stw r0, 0x568(r29)
/* 8010DFE4 0010AF44  48 00 00 E8 */	b lbl_8010E0CC
lbl_8010DFE8:
/* 8010DFE8 0010AF48  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8010DFEC 0010AF4C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010DFF0 0010AF50  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8010DFF4 0010AF54  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8010DFF8 0010AF58  38 60 00 00 */	li r3, 0
/* 8010DFFC 0010AF5C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 8010E000 0010AF60  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 8010E004 0010AF64  C0 45 00 00 */	lfs f2, 0(r5)
/* 8010E008 0010AF68  C0 25 00 04 */	lfs f1, 4(r5)
/* 8010E00C 0010AF6C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8010E010 0010AF70  C0 05 00 08 */	lfs f0, 8(r5)
/* 8010E014 0010AF74  7C 80 23 78 */	mr r0, r4
/* 8010E018 0010AF78  39 00 00 0E */	li r8, 0xe
/* 8010E01C 0010AF7C  38 C0 00 01 */	li r6, 1
/* 8010E020 0010AF80  38 A0 FF FF */	li r5, -1
/* 8010E024 0010AF84  3B EA 00 04 */	addi r31, r10, 4
/* 8010E028 0010AF88  91 21 00 10 */	stw r9, 0x10(r1)
/* 8010E02C 0010AF8C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8010E030 0010AF90  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 8010E034 0010AF94  7F E3 FB 78 */	mr r3, r31
/* 8010E038 0010AF98  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8010E03C 0010AF9C  38 80 00 0E */	li r4, 0xe
/* 8010E040 0010AFA0  91 01 00 14 */	stw r8, 0x14(r1)
/* 8010E044 0010AFA4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8010E048 0010AFA8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8010E04C 0010AFAC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8010E050 0010AFB0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010E054 0010AFB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010E058 0010AFB8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8010E05C 0010AFBC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8010E060 0010AFC0  48 02 33 D9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010E064 0010AFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010E068 0010AFC8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8010E06C 0010AFCC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8010E070 0010AFD0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010E074 0010AFD4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8010E078 0010AFD8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010E07C 0010AFDC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8010E080 0010AFE0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8010E084 0010AFE4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8010E088 0010AFE8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8010E08C 0010AFEC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8010E090 0010AFF0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8010E094 0010AFF4  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8010E098 0010AFF8  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8010E09C 0010AFFC  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8010E0A0 0010B000  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8010E0A4 0010B004  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8010E0A8 0010B008  90 81 00 10 */	stw r4, 0x10(r1)
/* 8010E0AC 0010B00C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8010E0B0 0010B010  90 01 00 10 */	stw r0, 0x10(r1)
/* 8010E0B4 0010B014  48 00 00 18 */	b lbl_8010E0CC
lbl_8010E0B8:
/* 8010E0B8 0010B018  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8010E0BC 0010B01C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8010E0C0 0010B020  41 82 00 0C */	beq lbl_8010E0CC
/* 8010E0C4 0010B024  38 00 00 03 */	li r0, 3
/* 8010E0C8 0010B028  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_8010E0CC:
/* 8010E0CC 0010B02C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8010E0D0 0010B030  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010E0D4 0010B034  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8010E0D8 0010B038  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8010E0DC 0010B03C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8010E0E0 0010B040  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8010E0E4 0010B044  7C 08 03 A6 */	mtlr r0
/* 8010E0E8 0010B048  38 21 00 50 */	addi r1, r1, 0x50
/* 8010E0EC 0010B04C  4E 80 00 20 */	blr

.global Patrol__8CWarWaspFR13CStateManager9EStateMsgf
Patrol__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E0F0 0010B050  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010E0F4 0010B054  7C 08 02 A6 */	mflr r0
/* 8010E0F8 0010B058  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010E0FC 0010B05C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8010E100 0010B060  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8010E104 0010B064  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8010E108 0010B068  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8010E10C 0010B06C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010E110 0010B070  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010E114 0010B074  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010E118 0010B078  7C BF 2B 78 */	mr r31, r5
/* 8010E11C 0010B07C  FF C0 08 90 */	fmr f30, f1
/* 8010E120 0010B080  2C 1F 00 01 */	cmpwi r31, 1
/* 8010E124 0010B084  7C 7D 1B 78 */	mr r29, r3
/* 8010E128 0010B088  7C 9E 23 78 */	mr r30, r4
/* 8010E12C 0010B08C  41 82 00 A0 */	beq lbl_8010E1CC
/* 8010E130 0010B090  40 80 00 10 */	bge lbl_8010E140
/* 8010E134 0010B094  2C 1F 00 00 */	cmpwi r31, 0
/* 8010E138 0010B098  40 80 00 14 */	bge lbl_8010E14C
/* 8010E13C 0010B09C  48 00 00 90 */	b lbl_8010E1CC
lbl_8010E140:
/* 8010E140 0010B0A0  2C 1F 00 03 */	cmpwi r31, 3
/* 8010E144 0010B0A4  40 80 00 88 */	bge lbl_8010E1CC
/* 8010E148 0010B0A8  48 00 00 78 */	b lbl_8010E1C0
lbl_8010E14C:
/* 8010E14C 0010B0AC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E150 0010B0B0  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8010E154 0010B0B4  48 02 5D 59 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8010E158 0010B0B8  FF E0 08 90 */	fmr f31, f1
/* 8010E15C 0010B0BC  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010E160 0010B0C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8010E164 0010B0C4  40 81 00 3C */	ble lbl_8010E1A0
/* 8010E168 0010B0C8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E16C 0010B0CC  38 00 00 01 */	li r0, 1
/* 8010E170 0010B0D0  38 80 00 01 */	li r4, 1
/* 8010E174 0010B0D4  90 03 00 34 */	stw r0, 0x34(r3)
/* 8010E178 0010B0D8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E17C 0010B0DC  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8010E180 0010B0E0  48 02 5C 55 */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 8010E184 0010B0E4  C0 02 95 08 */	lfs f0, lbl_805AB228@sda21(r2)
/* 8010E188 0010B0E8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E18C 0010B0EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8010E190 0010B0F0  38 63 00 04 */	addi r3, r3, 4
/* 8010E194 0010B0F4  EC 20 F8 24 */	fdivs f1, f0, f31
/* 8010E198 0010B0F8  FC 40 08 90 */	fmr f2, f1
/* 8010E19C 0010B0FC  48 02 36 4D */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
lbl_8010E1A0:
/* 8010E1A0 0010B100  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E1A4 0010B104  38 80 00 01 */	li r4, 1
/* 8010E1A8 0010B108  48 02 C8 31 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010E1AC 0010B10C  88 1D 07 2E */	lbz r0, 0x72e(r29)
/* 8010E1B0 0010B110  38 60 00 00 */	li r3, 0
/* 8010E1B4 0010B114  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8010E1B8 0010B118  98 1D 07 2E */	stb r0, 0x72e(r29)
/* 8010E1BC 0010B11C  48 00 00 10 */	b lbl_8010E1CC
lbl_8010E1C0:
/* 8010E1C0 0010B120  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E1C4 0010B124  38 00 00 00 */	li r0, 0
/* 8010E1C8 0010B128  90 03 00 34 */	stw r0, 0x34(r3)
lbl_8010E1CC:
/* 8010E1CC 0010B12C  FC 20 F0 90 */	fmr f1, f30
/* 8010E1D0 0010B130  7F A3 EB 78 */	mr r3, r29
/* 8010E1D4 0010B134  7F C4 F3 78 */	mr r4, r30
/* 8010E1D8 0010B138  7F E5 FB 78 */	mr r5, r31
/* 8010E1DC 0010B13C  48 0E 8C 99 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8010E1E0 0010B140  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8010E1E4 0010B144  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8010E1E8 0010B148  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8010E1EC 0010B14C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8010E1F0 0010B150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010E1F4 0010B154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010E1F8 0010B158  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010E1FC 0010B15C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010E200 0010B160  7C 08 03 A6 */	mtlr r0
/* 8010E204 0010B164  38 21 00 40 */	addi r1, r1, 0x40
/* 8010E208 0010B168  4E 80 00 20 */	blr

.global Retreat__8CWarWaspFR13CStateManager9EStateMsgf
Retreat__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E20C 0010B16C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010E210 0010B170  7C 08 02 A6 */	mflr r0
/* 8010E214 0010B174  2C 05 00 01 */	cmpwi r5, 1
/* 8010E218 0010B178  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010E21C 0010B17C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8010E220 0010B180  7C 7F 1B 78 */	mr r31, r3
/* 8010E224 0010B184  41 82 00 34 */	beq lbl_8010E258
/* 8010E228 0010B188  40 80 00 10 */	bge lbl_8010E238
/* 8010E22C 0010B18C  2C 05 00 00 */	cmpwi r5, 0
/* 8010E230 0010B190  40 80 00 14 */	bge lbl_8010E244
/* 8010E234 0010B194  48 00 00 C8 */	b lbl_8010E2FC
lbl_8010E238:
/* 8010E238 0010B198  2C 05 00 03 */	cmpwi r5, 3
/* 8010E23C 0010B19C  40 80 00 C0 */	bge lbl_8010E2FC
/* 8010E240 0010B1A0  48 00 00 A0 */	b lbl_8010E2E0
lbl_8010E244:
/* 8010E244 0010B1A4  4B FF F2 0D */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 8010E248 0010B1A8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010E24C 0010B1AC  38 80 00 05 */	li r4, 5
/* 8010E250 0010B1B0  48 02 C7 89 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010E254 0010B1B4  48 00 00 A8 */	b lbl_8010E2FC
lbl_8010E258:
/* 8010E258 0010B1B8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8010E25C 0010B1BC  38 61 00 08 */	addi r3, r1, 8
/* 8010E260 0010B1C0  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8010E264 0010B1C4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8010E268 0010B1C8  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 8010E26C 0010B1CC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8010E270 0010B1D0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8010E274 0010B1D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8010E278 0010B1D8  48 20 5F 89 */	bl __ct__9CVector2fFff
/* 8010E27C 0010B1DC  7F E5 FB 78 */	mr r5, r31
/* 8010E280 0010B1E0  38 61 00 10 */	addi r3, r1, 0x10
/* 8010E284 0010B1E4  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010E288 0010B1E8  38 C1 00 08 */	addi r6, r1, 8
/* 8010E28C 0010B1EC  48 03 02 D1 */	bl Flee2D__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector2f
/* 8010E290 0010B1F0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010E294 0010B1F4  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010E298 0010B1F8  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 8010E29C 0010B1FC  38 81 00 24 */	addi r4, r1, 0x24
/* 8010E2A0 0010B200  C0 A1 00 14 */	lfs f5, 0x14(r1)
/* 8010E2A4 0010B204  C0 82 94 F0 */	lfs f4, lbl_805AB210@sda21(r2)
/* 8010E2A8 0010B208  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010E2AC 0010B20C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010E2B0 0010B210  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010E2B4 0010B214  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 8010E2B8 0010B218  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8010E2BC 0010B21C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8010E2C0 0010B220  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8010E2C4 0010B224  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8010E2C8 0010B228  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8010E2CC 0010B22C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010E2D0 0010B230  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010E2D4 0010B234  38 63 00 04 */	addi r3, r3, 4
/* 8010E2D8 0010B238  48 02 34 41 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010E2DC 0010B23C  48 00 00 20 */	b lbl_8010E2FC
lbl_8010E2E0:
/* 8010E2E0 0010B240  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 8010E2E4 0010B244  38 60 00 00 */	li r3, 0
/* 8010E2E8 0010B248  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8010E2EC 0010B24C  38 80 00 01 */	li r4, 1
/* 8010E2F0 0010B250  98 1F 04 00 */	stb r0, 0x400(r31)
/* 8010E2F4 0010B254  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010E2F8 0010B258  48 02 C6 E1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_8010E2FC:
/* 8010E2FC 0010B25C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010E300 0010B260  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8010E304 0010B264  7C 08 03 A6 */	mtlr r0
/* 8010E308 0010B268  38 21 00 50 */	addi r1, r1, 0x50
/* 8010E30C 0010B26C  4E 80 00 20 */	blr

.global JumpBack__8CWarWaspFR13CStateManager9EStateMsgf
JumpBack__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E310 0010B270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010E314 0010B274  7C 08 02 A6 */	mflr r0
/* 8010E318 0010B278  2C 05 00 01 */	cmpwi r5, 1
/* 8010E31C 0010B27C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010E320 0010B280  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8010E324 0010B284  41 82 00 34 */	beq lbl_8010E358
/* 8010E328 0010B288  40 80 01 60 */	bge lbl_8010E488
/* 8010E32C 0010B28C  2C 05 00 00 */	cmpwi r5, 0
/* 8010E330 0010B290  40 80 00 08 */	bge lbl_8010E338
/* 8010E334 0010B294  48 00 01 54 */	b lbl_8010E488
lbl_8010E338:
/* 8010E338 0010B298  38 00 00 00 */	li r0, 0
/* 8010E33C 0010B29C  38 A0 00 01 */	li r5, 1
/* 8010E340 0010B2A0  90 03 05 68 */	stw r0, 0x568(r3)
/* 8010E344 0010B2A4  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010E348 0010B2A8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8010E34C 0010B2AC  98 03 07 2E */	stb r0, 0x72e(r3)
/* 8010E350 0010B2B0  4B FF F1 01 */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 8010E354 0010B2B4  48 00 01 34 */	b lbl_8010E488
lbl_8010E358:
/* 8010E358 0010B2B8  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8010E35C 0010B2BC  2C 00 00 01 */	cmpwi r0, 1
/* 8010E360 0010B2C0  41 82 01 28 */	beq lbl_8010E488
/* 8010E364 0010B2C4  40 80 00 10 */	bge lbl_8010E374
/* 8010E368 0010B2C8  2C 00 00 00 */	cmpwi r0, 0
/* 8010E36C 0010B2CC  40 80 00 14 */	bge lbl_8010E380
/* 8010E370 0010B2D0  48 00 01 18 */	b lbl_8010E488
lbl_8010E374:
/* 8010E374 0010B2D4  2C 00 00 03 */	cmpwi r0, 3
/* 8010E378 0010B2D8  40 80 01 10 */	bge lbl_8010E488
/* 8010E37C 0010B2DC  48 00 00 90 */	b lbl_8010E40C
lbl_8010E380:
/* 8010E380 0010B2E0  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8010E384 0010B2E4  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8010E388 0010B2E8  2C 00 00 03 */	cmpwi r0, 3
/* 8010E38C 0010B2EC  40 82 00 10 */	bne lbl_8010E39C
/* 8010E390 0010B2F0  38 00 00 02 */	li r0, 2
/* 8010E394 0010B2F4  90 03 05 68 */	stw r0, 0x568(r3)
/* 8010E398 0010B2F8  48 00 00 F0 */	b lbl_8010E488
lbl_8010E39C:
/* 8010E39C 0010B2FC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010E3A0 0010B300  38 C0 00 01 */	li r6, 1
/* 8010E3A4 0010B304  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010E3A8 0010B308  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010E3AC 0010B30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E3B0 0010B310  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 8010E3B4 0010B314  38 00 00 00 */	li r0, 0
/* 8010E3B8 0010B318  3B E4 00 04 */	addi r31, r4, 4
/* 8010E3BC 0010B31C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8010E3C0 0010B320  7F E3 FB 78 */	mr r3, r31
/* 8010E3C4 0010B324  38 80 00 01 */	li r4, 1
/* 8010E3C8 0010B328  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8010E3CC 0010B32C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8010E3D0 0010B330  90 01 00 20 */	stw r0, 0x20(r1)
/* 8010E3D4 0010B334  48 02 30 65 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010E3D8 0010B338  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8010E3DC 0010B33C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010E3E0 0010B340  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010E3E4 0010B344  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010E3E8 0010B348  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8010E3EC 0010B34C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010E3F0 0010B350  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8010E3F4 0010B354  90 81 00 14 */	stw r4, 0x14(r1)
/* 8010E3F8 0010B358  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8010E3FC 0010B35C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8010E400 0010B360  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8010E404 0010B364  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010E408 0010B368  48 00 00 80 */	b lbl_8010E488
lbl_8010E40C:
/* 8010E40C 0010B36C  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8010E410 0010B370  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8010E414 0010B374  2C 00 00 03 */	cmpwi r0, 3
/* 8010E418 0010B378  41 82 00 30 */	beq lbl_8010E448
/* 8010E41C 0010B37C  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010E420 0010B380  38 80 00 03 */	li r4, 3
/* 8010E424 0010B384  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8010E428 0010B388  41 82 00 08 */	beq lbl_8010E430
/* 8010E42C 0010B38C  38 80 00 00 */	li r4, 0
lbl_8010E430:
/* 8010E430 0010B390  90 83 05 68 */	stw r4, 0x568(r3)
/* 8010E434 0010B394  38 80 00 00 */	li r4, 0
/* 8010E438 0010B398  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010E43C 0010B39C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8010E440 0010B3A0  98 03 07 2E */	stb r0, 0x72e(r3)
/* 8010E444 0010B3A4  48 00 00 44 */	b lbl_8010E488
lbl_8010E448:
/* 8010E448 0010B3A8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8010E44C 0010B3AC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8010E450 0010B3B0  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 8010E454 0010B3B4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8010E458 0010B3B8  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8010E45C 0010B3BC  EC 03 00 28 */	fsubs f0, f3, f0
/* 8010E460 0010B3C0  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8010E464 0010B3C4  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8010E468 0010B3C8  EC 44 10 28 */	fsubs f2, f4, f2
/* 8010E46C 0010B3CC  D0 61 00 08 */	stfs f3, 8(r1)
/* 8010E470 0010B3D0  EC 25 08 28 */	fsubs f1, f5, f1
/* 8010E474 0010B3D4  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8010E478 0010B3D8  D0 45 00 20 */	stfs f2, 0x20(r5)
/* 8010E47C 0010B3DC  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8010E480 0010B3E0  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8010E484 0010B3E4  D0 25 00 24 */	stfs f1, 0x24(r5)
lbl_8010E488:
/* 8010E488 0010B3E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010E48C 0010B3EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8010E490 0010B3F0  7C 08 03 A6 */	mtlr r0
/* 8010E494 0010B3F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8010E498 0010B3F8  4E 80 00 20 */	blr

.global Shuffle__8CWarWaspFR13CStateManager9EStateMsgf
Shuffle__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E49C 0010B3FC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8010E4A0 0010B400  7C 08 02 A6 */	mflr r0
/* 8010E4A4 0010B404  2C 05 00 01 */	cmpwi r5, 1
/* 8010E4A8 0010B408  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8010E4AC 0010B40C  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8010E4B0 0010B410  7C 9F 23 78 */	mr r31, r4
/* 8010E4B4 0010B414  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 8010E4B8 0010B418  7C 7E 1B 78 */	mr r30, r3
/* 8010E4BC 0010B41C  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 8010E4C0 0010B420  41 82 00 38 */	beq lbl_8010E4F8
/* 8010E4C4 0010B424  40 80 00 10 */	bge lbl_8010E4D4
/* 8010E4C8 0010B428  2C 05 00 00 */	cmpwi r5, 0
/* 8010E4CC 0010B42C  40 80 00 14 */	bge lbl_8010E4E0
/* 8010E4D0 0010B430  48 00 02 F4 */	b lbl_8010E7C4
lbl_8010E4D4:
/* 8010E4D4 0010B434  2C 05 00 03 */	cmpwi r5, 3
/* 8010E4D8 0010B438  40 80 02 EC */	bge lbl_8010E7C4
/* 8010E4DC 0010B43C  48 00 02 DC */	b lbl_8010E7B8
lbl_8010E4E0:
/* 8010E4E0 0010B440  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010E4E4 0010B444  38 80 00 02 */	li r4, 2
/* 8010E4E8 0010B448  48 02 C4 F1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010E4EC 0010B44C  38 00 00 02 */	li r0, 2
/* 8010E4F0 0010B450  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8010E4F4 0010B454  48 00 02 D0 */	b lbl_8010E7C4
lbl_8010E4F8:
/* 8010E4F8 0010B458  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010E4FC 0010B45C  7F E3 FB 78 */	mr r3, r31
/* 8010E500 0010B460  38 81 00 08 */	addi r4, r1, 8
/* 8010E504 0010B464  3B A0 00 00 */	li r29, 0
/* 8010E508 0010B468  B0 01 00 08 */	sth r0, 8(r1)
/* 8010E50C 0010B46C  4B F3 E0 99 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010E510 0010B470  7C 64 1B 78 */	mr r4, r3
/* 8010E514 0010B474  38 61 00 0C */	addi r3, r1, 0xc
/* 8010E518 0010B478  4B F9 90 5D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010E51C 0010B47C  80 63 00 04 */	lwz r3, 4(r3)
/* 8010E520 0010B480  28 03 00 00 */	cmplwi r3, 0
/* 8010E524 0010B484  41 82 00 0C */	beq lbl_8010E530
/* 8010E528 0010B488  48 12 AF 75 */	bl GetNumAssignedAiRoles__10CTeamAiMgrCFv
/* 8010E52C 0010B48C  7C 7D 1B 78 */	mr r29, r3
lbl_8010E530:
/* 8010E530 0010B490  28 1D 00 00 */	cmplwi r29, 0
/* 8010E534 0010B494  41 82 02 78 */	beq lbl_8010E7AC
/* 8010E538 0010B498  C0 3E 07 00 */	lfs f1, 0x700(r30)
/* 8010E53C 0010B49C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010E540 0010B4A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E544 0010B4A4  40 81 02 68 */	ble lbl_8010E7AC
/* 8010E548 0010B4A8  7F C4 F3 78 */	mr r4, r30
/* 8010E54C 0010B4AC  7F E5 FB 78 */	mr r5, r31
/* 8010E550 0010B4B0  38 61 00 60 */	addi r3, r1, 0x60
/* 8010E554 0010B4B4  4B FF D7 65 */	bl CalcShuffleDest__8CWarWaspFR13CStateManager
/* 8010E558 0010B4B8  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 8010E55C 0010B4BC  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 8010E560 0010B4C0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8010E564 0010B4C4  D0 C1 00 84 */	stfs f6, 0x84(r1)
/* 8010E568 0010B4C8  C0 22 94 DC */	lfs f1, lbl_805AB1FC@sda21(r2)
/* 8010E56C 0010B4CC  D0 A1 00 88 */	stfs f5, 0x88(r1)
/* 8010E570 0010B4D0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8010E574 0010B4D4  C1 1E 00 60 */	lfs f8, 0x60(r30)
/* 8010E578 0010B4D8  C0 FE 00 50 */	lfs f7, 0x50(r30)
/* 8010E57C 0010B4DC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8010E580 0010B4E0  EC 40 40 28 */	fsubs f2, f0, f8
/* 8010E584 0010B4E4  D0 E1 00 4C */	stfs f7, 0x4c(r1)
/* 8010E588 0010B4E8  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8010E58C 0010B4EC  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8010E590 0010B4F0  D1 01 00 50 */	stfs f8, 0x50(r1)
/* 8010E594 0010B4F4  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 8010E598 0010B4F8  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 8010E59C 0010B4FC  D0 E1 00 58 */	stfs f7, 0x58(r1)
/* 8010E5A0 0010B500  D1 01 00 5C */	stfs f8, 0x5c(r1)
/* 8010E5A4 0010B504  40 81 00 98 */	ble lbl_8010E63C
/* 8010E5A8 0010B508  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8010E5AC 0010B50C  7F C5 F3 78 */	mr r5, r30
/* 8010E5B0 0010B510  38 61 00 30 */	addi r3, r1, 0x30
/* 8010E5B4 0010B514  38 9E 04 5C */	addi r4, r30, 0x45c
/* 8010E5B8 0010B518  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 8010E5BC 0010B51C  38 C1 00 78 */	addi r6, r1, 0x78
/* 8010E5C0 0010B520  D1 01 00 44 */	stfs f8, 0x44(r1)
/* 8010E5C4 0010B524  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 8010E5C8 0010B528  D0 E1 00 7C */	stfs f7, 0x7c(r1)
/* 8010E5CC 0010B52C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8010E5D0 0010B530  48 03 05 4D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010E5D4 0010B534  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 8010E5D8 0010B538  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8010E5DC 0010B53C  EC 24 01 32 */	fmuls f1, f4, f4
/* 8010E5E0 0010B540  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 8010E5E4 0010B544  C0 02 95 2C */	lfs f0, lbl_805AB24C@sda21(r2)
/* 8010E5E8 0010B548  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010E5EC 0010B54C  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8010E5F0 0010B550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E5F4 0010B554  40 81 01 7C */	ble lbl_8010E770
/* 8010E5F8 0010B558  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010E5FC 0010B55C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010E600 0010B560  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010E604 0010B564  38 81 00 AC */	addi r4, r1, 0xac
/* 8010E608 0010B568  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 8010E60C 0010B56C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010E610 0010B570  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010E614 0010B574  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 8010E618 0010B578  D0 A1 00 B4 */	stfs f5, 0xb4(r1)
/* 8010E61C 0010B57C  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 8010E620 0010B580  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 8010E624 0010B584  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 8010E628 0010B588  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8010E62C 0010B58C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010E630 0010B590  38 63 00 04 */	addi r3, r3, 4
/* 8010E634 0010B594  48 02 30 E5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010E638 0010B598  48 00 01 38 */	b lbl_8010E770
lbl_8010E63C:
/* 8010E63C 0010B59C  EC A5 38 28 */	fsubs f5, f5, f7
/* 8010E640 0010B5A0  C0 02 95 1C */	lfs f0, lbl_805AB23C@sda21(r2)
/* 8010E644 0010B5A4  EC 66 18 28 */	fsubs f3, f6, f3
/* 8010E648 0010B5A8  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8010E64C 0010B5AC  EC 25 01 72 */	fmuls f1, f5, f5
/* 8010E650 0010B5B0  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 8010E654 0010B5B4  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8010E658 0010B5B8  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8010E65C 0010B5BC  EC 22 08 2A */	fadds f1, f2, f1
/* 8010E660 0010B5C0  EC 24 08 2A */	fadds f1, f4, f1
/* 8010E664 0010B5C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E668 0010B5C8  40 81 01 00 */	ble lbl_8010E768
/* 8010E66C 0010B5CC  7F C3 F3 78 */	mr r3, r30
/* 8010E670 0010B5D0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8010E674 0010B5D4  48 0E 66 99 */	bl GetStepDirection__10CPatternedFRC9CVector3f
/* 8010E678 0010B5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8010E67C 0010B5DC  41 82 00 78 */	beq lbl_8010E6F4
/* 8010E680 0010B5E0  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8010E684 0010B5E4  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 8010E688 0010B5E8  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 8010E68C 0010B5EC  3C A0 80 3E */	lis r5, lbl_803DA9E4@ha
/* 8010E690 0010B5F0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8010E694 0010B5F4  38 A5 A9 E4 */	addi r5, r5, lbl_803DA9E4@l
/* 8010E698 0010B5F8  38 C0 00 01 */	li r6, 1
/* 8010E69C 0010B5FC  38 00 00 00 */	li r0, 0
/* 8010E6A0 0010B600  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8010E6A4 0010B604  3B A4 00 04 */	addi r29, r4, 4
/* 8010E6A8 0010B608  38 80 00 01 */	li r4, 1
/* 8010E6AC 0010B60C  90 61 00 28 */	stw r3, 0x28(r1)
/* 8010E6B0 0010B610  7F A3 EB 78 */	mr r3, r29
/* 8010E6B4 0010B614  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8010E6B8 0010B618  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8010E6BC 0010B61C  48 02 2D 7D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010E6C0 0010B620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010E6C4 0010B624  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8010E6C8 0010B628  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8010E6CC 0010B62C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010E6D0 0010B630  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 8010E6D4 0010B634  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010E6D8 0010B638  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8010E6DC 0010B63C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8010E6E0 0010B640  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8010E6E4 0010B644  90 BD 00 CC */	stw r5, 0xcc(r29)
/* 8010E6E8 0010B648  90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 8010E6EC 0010B64C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8010E6F0 0010B650  48 00 00 80 */	b lbl_8010E770
lbl_8010E6F4:
/* 8010E6F4 0010B654  7F C5 F3 78 */	mr r5, r30
/* 8010E6F8 0010B658  38 61 00 14 */	addi r3, r1, 0x14
/* 8010E6FC 0010B65C  38 9E 04 5C */	addi r4, r30, 0x45c
/* 8010E700 0010B660  38 C1 00 84 */	addi r6, r1, 0x84
/* 8010E704 0010B664  48 03 05 1D */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 8010E708 0010B668  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010E70C 0010B66C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 8010E710 0010B670  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 8010E714 0010B674  38 81 00 90 */	addi r4, r1, 0x90
/* 8010E718 0010B678  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 8010E71C 0010B67C  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8010E720 0010B680  C0 43 00 04 */	lfs f2, 4(r3)
/* 8010E724 0010B684  C0 23 00 08 */	lfs f1, 8(r3)
/* 8010E728 0010B688  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010E72C 0010B68C  D0 C1 00 90 */	stfs f6, 0x90(r1)
/* 8010E730 0010B690  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8010E734 0010B694  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 8010E738 0010B698  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 8010E73C 0010B69C  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 8010E740 0010B6A0  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8010E744 0010B6A4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8010E748 0010B6A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010E74C 0010B6AC  38 63 00 04 */	addi r3, r3, 4
/* 8010E750 0010B6B0  48 02 2F C9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8010E754 0010B6B4  C0 22 95 24 */	lfs f1, lbl_805AB244@sda21(r2)
/* 8010E758 0010B6B8  7F C3 F3 78 */	mr r3, r30
/* 8010E75C 0010B6BC  7F E4 FB 78 */	mr r4, r31
/* 8010E760 0010B6C0  4B FF EB 39 */	bl ApplySeparationBehavior__8CWarWaspFR13CStateManagerf
/* 8010E764 0010B6C4  48 00 00 0C */	b lbl_8010E770
lbl_8010E768:
/* 8010E768 0010B6C8  38 00 00 03 */	li r0, 3
/* 8010E76C 0010B6CC  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_8010E770:
/* 8010E770 0010B6D0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010E774 0010B6D4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010E778 0010B6D8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8010E77C 0010B6DC  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8010E780 0010B6E0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8010E784 0010B6E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010E788 0010B6E8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010E78C 0010B6EC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8010E790 0010B6F0  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010E794 0010B6F4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010E798 0010B6F8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8010E79C 0010B6FC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8010E7A0 0010B700  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8010E7A4 0010B704  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8010E7A8 0010B708  48 00 00 1C */	b lbl_8010E7C4
lbl_8010E7AC:
/* 8010E7AC 0010B70C  38 00 00 03 */	li r0, 3
/* 8010E7B0 0010B710  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8010E7B4 0010B714  48 00 00 10 */	b lbl_8010E7C4
lbl_8010E7B8:
/* 8010E7B8 0010B718  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8010E7BC 0010B71C  38 80 00 01 */	li r4, 1
/* 8010E7C0 0010B720  48 02 C2 19 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_8010E7C4:
/* 8010E7C4 0010B724  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8010E7C8 0010B728  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8010E7CC 0010B72C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8010E7D0 0010B730  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 8010E7D4 0010B734  7C 08 03 A6 */	mtlr r0
/* 8010E7D8 0010B738  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8010E7DC 0010B73C  4E 80 00 20 */	blr

.global PathFind__8CWarWaspFR13CStateManager9EStateMsgf
PathFind__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E7E0 0010B740  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8010E7E4 0010B744  7C 08 02 A6 */	mflr r0
/* 8010E7E8 0010B748  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010E7EC 0010B74C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8010E7F0 0010B750  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8010E7F4 0010B754  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010E7F8 0010B758  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010E7FC 0010B75C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8010E800 0010B760  7C BF 2B 78 */	mr r31, r5
/* 8010E804 0010B764  FF E0 08 90 */	fmr f31, f1
/* 8010E808 0010B768  2C 1F 00 01 */	cmpwi r31, 1
/* 8010E80C 0010B76C  7C 7D 1B 78 */	mr r29, r3
/* 8010E810 0010B770  7C 9E 23 78 */	mr r30, r4
/* 8010E814 0010B774  41 82 00 28 */	beq lbl_8010E83C
/* 8010E818 0010B778  40 80 00 10 */	bge lbl_8010E828
/* 8010E81C 0010B77C  2C 1F 00 00 */	cmpwi r31, 0
/* 8010E820 0010B780  40 80 00 14 */	bge lbl_8010E834
/* 8010E824 0010B784  48 00 01 7C */	b lbl_8010E9A0
lbl_8010E828:
/* 8010E828 0010B788  2C 1F 00 03 */	cmpwi r31, 3
/* 8010E82C 0010B78C  40 80 01 74 */	bge lbl_8010E9A0
/* 8010E830 0010B790  48 00 01 64 */	b lbl_8010E994
lbl_8010E834:
/* 8010E834 0010B794  4B FF D9 ED */	bl SetUpPathFindBehavior__8CWarWaspFR13CStateManager
/* 8010E838 0010B798  48 00 01 68 */	b lbl_8010E9A0
lbl_8010E83C:
/* 8010E83C 0010B79C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8010E840 0010B7A0  80 03 03 04 */	lwz r0, 0x304(r3)
/* 8010E844 0010B7A4  2C 00 00 00 */	cmpwi r0, 0
/* 8010E848 0010B7A8  41 82 00 24 */	beq lbl_8010E86C
/* 8010E84C 0010B7AC  A0 63 03 10 */	lhz r3, 0x310(r3)
/* 8010E850 0010B7B0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8010E854 0010B7B4  7C 03 00 40 */	cmplw r3, r0
/* 8010E858 0010B7B8  40 82 00 14 */	bne lbl_8010E86C
/* 8010E85C 0010B7BC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E860 0010B7C0  38 80 00 01 */	li r4, 1
/* 8010E864 0010B7C4  48 02 C1 75 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8010E868 0010B7C8  48 00 00 10 */	b lbl_8010E878
lbl_8010E86C:
/* 8010E86C 0010B7CC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E870 0010B7D0  38 80 00 02 */	li r4, 2
/* 8010E874 0010B7D4  48 02 C1 65 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_8010E878:
/* 8010E878 0010B7D8  7F A3 EB 78 */	mr r3, r29
/* 8010E87C 0010B7DC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010E880 0010B7E0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010E884 0010B7E4  7D 89 03 A6 */	mtctr r12
/* 8010E888 0010B7E8  4E 80 04 21 */	bctrl
/* 8010E88C 0010B7EC  28 03 00 00 */	cmplwi r3, 0
/* 8010E890 0010B7F0  41 82 00 68 */	beq lbl_8010E8F8
/* 8010E894 0010B7F4  7F A3 EB 78 */	mr r3, r29
/* 8010E898 0010B7F8  7F C4 F3 78 */	mr r4, r30
/* 8010E89C 0010B7FC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010E8A0 0010B800  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010E8A4 0010B804  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8010E8A8 0010B808  7D 89 03 A6 */	mtctr r12
/* 8010E8AC 0010B80C  4E 80 04 21 */	bctrl
/* 8010E8B0 0010B810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010E8B4 0010B814  40 82 00 44 */	bne lbl_8010E8F8
/* 8010E8B8 0010B818  7F A3 EB 78 */	mr r3, r29
/* 8010E8BC 0010B81C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8010E8C0 0010B820  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010E8C4 0010B824  7D 89 03 A6 */	mtctr r12
/* 8010E8C8 0010B828  4E 80 04 21 */	bctrl
/* 8010E8CC 0010B82C  80 83 00 04 */	lwz r4, 4(r3)
/* 8010E8D0 0010B830  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8010E8D4 0010B834  38 04 FF FF */	addi r0, r4, -1
/* 8010E8D8 0010B838  7C 03 00 00 */	cmpw r3, r0
/* 8010E8DC 0010B83C  40 80 00 1C */	bge lbl_8010E8F8
/* 8010E8E0 0010B840  FC 20 F8 90 */	fmr f1, f31
/* 8010E8E4 0010B844  7F A3 EB 78 */	mr r3, r29
/* 8010E8E8 0010B848  7F C4 F3 78 */	mr r4, r30
/* 8010E8EC 0010B84C  7F E5 FB 78 */	mr r5, r31
/* 8010E8F0 0010B850  48 0E 7D DD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8010E8F4 0010B854  48 00 00 10 */	b lbl_8010E904
lbl_8010E8F8:
/* 8010E8F8 0010B858  7F A3 EB 78 */	mr r3, r29
/* 8010E8FC 0010B85C  7F C4 F3 78 */	mr r4, r30
/* 8010E900 0010B860  4B FF E4 BD */	bl ApplyNormalSteering__8CWarWaspFR13CStateManager
lbl_8010E904:
/* 8010E904 0010B864  C0 22 95 44 */	lfs f1, lbl_805AB264@sda21(r2)
/* 8010E908 0010B868  7F A3 EB 78 */	mr r3, r29
/* 8010E90C 0010B86C  7F C4 F3 78 */	mr r4, r30
/* 8010E910 0010B870  4B FF E9 89 */	bl ApplySeparationBehavior__8CWarWaspFR13CStateManagerf
/* 8010E914 0010B874  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8010E918 0010B878  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8010E91C 0010B87C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8010E920 0010B880  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8010E924 0010B884  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010E928 0010B888  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8010E92C 0010B88C  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8010E930 0010B890  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 8010E934 0010B894  EC A2 00 28 */	fsubs f5, f2, f0
/* 8010E938 0010B898  EC 04 01 32 */	fmuls f0, f4, f4
/* 8010E93C 0010B89C  C0 42 94 D0 */	lfs f2, lbl_805AB1F0@sda21(r2)
/* 8010E940 0010B8A0  EC 63 08 28 */	fsubs f3, f3, f1
/* 8010E944 0010B8A4  C0 3D 03 00 */	lfs f1, 0x300(r29)
/* 8010E948 0010B8A8  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 8010E94C 0010B8AC  EC 42 00 72 */	fmuls f2, f2, f1
/* 8010E950 0010B8B0  EC 23 00 FA */	fmadds f1, f3, f3, f0
/* 8010E954 0010B8B4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8010E958 0010B8B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010E95C 0010B8BC  40 81 00 28 */	ble lbl_8010E984
/* 8010E960 0010B8C0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E964 0010B8C4  38 00 00 01 */	li r0, 1
/* 8010E968 0010B8C8  C0 22 94 DC */	lfs f1, lbl_805AB1FC@sda21(r2)
/* 8010E96C 0010B8CC  90 03 00 34 */	stw r0, 0x34(r3)
/* 8010E970 0010B8D0  FC 40 08 90 */	fmr f2, f1
/* 8010E974 0010B8D4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E978 0010B8D8  38 63 00 04 */	addi r3, r3, 4
/* 8010E97C 0010B8DC  48 02 2E 6D */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8010E980 0010B8E0  48 00 00 20 */	b lbl_8010E9A0
lbl_8010E984:
/* 8010E984 0010B8E4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E988 0010B8E8  38 00 00 00 */	li r0, 0
/* 8010E98C 0010B8EC  90 03 00 34 */	stw r0, 0x34(r3)
/* 8010E990 0010B8F0  48 00 00 10 */	b lbl_8010E9A0
lbl_8010E994:
/* 8010E994 0010B8F4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8010E998 0010B8F8  38 00 00 00 */	li r0, 0
/* 8010E99C 0010B8FC  90 03 00 34 */	stw r0, 0x34(r3)
lbl_8010E9A0:
/* 8010E9A0 0010B900  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8010E9A4 0010B904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8010E9A8 0010B908  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8010E9AC 0010B90C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010E9B0 0010B910  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010E9B4 0010B914  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8010E9B8 0010B918  7C 08 03 A6 */	mtlr r0
/* 8010E9BC 0010B91C  38 21 00 30 */	addi r1, r1, 0x30
/* 8010E9C0 0010B920  4E 80 00 20 */	blr

.global ProjectileAttack__8CWarWaspFR13CStateManager9EStateMsgf
ProjectileAttack__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010E9C4 0010B924  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8010E9C8 0010B928  7C 08 02 A6 */	mflr r0
/* 8010E9CC 0010B92C  2C 05 00 01 */	cmpwi r5, 1
/* 8010E9D0 0010B930  90 01 00 54 */	stw r0, 0x54(r1)
/* 8010E9D4 0010B934  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8010E9D8 0010B938  7C 7F 1B 78 */	mr r31, r3
/* 8010E9DC 0010B93C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8010E9E0 0010B940  7C 9E 23 78 */	mr r30, r4
/* 8010E9E4 0010B944  41 82 00 88 */	beq lbl_8010EA6C
/* 8010E9E8 0010B948  40 80 00 10 */	bge lbl_8010E9F8
/* 8010E9EC 0010B94C  2C 05 00 00 */	cmpwi r5, 0
/* 8010E9F0 0010B950  40 80 00 14 */	bge lbl_8010EA04
/* 8010E9F4 0010B954  48 00 02 18 */	b lbl_8010EC0C
lbl_8010E9F8:
/* 8010E9F8 0010B958  2C 05 00 03 */	cmpwi r5, 3
/* 8010E9FC 0010B95C  40 80 02 10 */	bge lbl_8010EC0C
/* 8010EA00 0010B960  48 00 01 C4 */	b lbl_8010EBC4
lbl_8010EA04:
/* 8010EA04 0010B964  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EA08 0010B968  38 60 00 01 */	li r3, 1
/* 8010EA0C 0010B96C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8010EA10 0010B970  98 1F 07 2E */	stb r0, 0x72e(r31)
/* 8010EA14 0010B974  A0 7F 06 74 */	lhz r3, 0x674(r31)
/* 8010EA18 0010B978  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010EA1C 0010B97C  7C 03 00 40 */	cmplw r3, r0
/* 8010EA20 0010B980  41 82 00 40 */	beq lbl_8010EA60
/* 8010EA24 0010B984  A0 FF 00 08 */	lhz r7, 8(r31)
/* 8010EA28 0010B988  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8010EA2C 0010B98C  38 C1 00 18 */	addi r6, r1, 0x18
/* 8010EA30 0010B990  38 60 00 01 */	li r3, 1
/* 8010EA34 0010B994  B0 E1 00 18 */	sth r7, 0x18(r1)
/* 8010EA38 0010B998  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010EA3C 0010B99C  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 8010EA40 0010B9A0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010EA44 0010B9A4  48 12 B5 AD */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 8010EA48 0010B9A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010EA4C 0010B9AC  38 60 00 03 */	li r3, 3
/* 8010EA50 0010B9B0  41 82 00 08 */	beq lbl_8010EA58
/* 8010EA54 0010B9B4  38 60 00 00 */	li r3, 0
lbl_8010EA58:
/* 8010EA58 0010B9B8  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8010EA5C 0010B9BC  48 00 01 B0 */	b lbl_8010EC0C
lbl_8010EA60:
/* 8010EA60 0010B9C0  38 00 00 00 */	li r0, 0
/* 8010EA64 0010B9C4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010EA68 0010B9C8  48 00 01 A4 */	b lbl_8010EC0C
lbl_8010EA6C:
/* 8010EA6C 0010B9CC  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8010EA70 0010B9D0  2C 00 00 01 */	cmpwi r0, 1
/* 8010EA74 0010B9D4  41 82 01 98 */	beq lbl_8010EC0C
/* 8010EA78 0010B9D8  40 80 00 10 */	bge lbl_8010EA88
/* 8010EA7C 0010B9DC  2C 00 00 00 */	cmpwi r0, 0
/* 8010EA80 0010B9E0  40 80 00 14 */	bge lbl_8010EA94
/* 8010EA84 0010B9E4  48 00 01 88 */	b lbl_8010EC0C
lbl_8010EA88:
/* 8010EA88 0010B9E8  2C 00 00 03 */	cmpwi r0, 3
/* 8010EA8C 0010B9EC  40 80 01 80 */	bge lbl_8010EC0C
/* 8010EA90 0010B9F0  48 00 00 E8 */	b lbl_8010EB78
lbl_8010EA94:
/* 8010EA94 0010B9F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010EA98 0010B9F8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8010EA9C 0010B9FC  2C 00 00 12 */	cmpwi r0, 0x12
/* 8010EAA0 0010BA00  40 82 00 10 */	bne lbl_8010EAB0
/* 8010EAA4 0010BA04  38 00 00 02 */	li r0, 2
/* 8010EAA8 0010BA08  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010EAAC 0010BA0C  48 00 01 60 */	b lbl_8010EC0C
lbl_8010EAB0:
/* 8010EAB0 0010BA10  C0 22 95 48 */	lfs f1, lbl_805AB268@sda21(r2)
/* 8010EAB4 0010BA14  7F E4 FB 78 */	mr r4, r31
/* 8010EAB8 0010BA18  7F C5 F3 78 */	mr r5, r30
/* 8010EABC 0010BA1C  38 61 00 20 */	addi r3, r1, 0x20
/* 8010EAC0 0010BA20  4B FF D3 E1 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010EAC4 0010BA24  7F E3 FB 78 */	mr r3, r31
/* 8010EAC8 0010BA28  38 81 00 20 */	addi r4, r1, 0x20
/* 8010EACC 0010BA2C  4B F6 E0 91 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8010EAD0 0010BA30  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010EAD4 0010BA34  C0 5F 02 E0 */	lfs f2, 0x2e0(r31)
/* 8010EAD8 0010BA38  38 C3 AA 68 */	addi r6, r3, lbl_803DAA68@l
/* 8010EADC 0010BA3C  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 8010EAE0 0010BA40  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 8010EAE4 0010BA44  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 8010EAE8 0010BA48  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010EAEC 0010BA4C  38 E0 00 06 */	li r7, 6
/* 8010EAF0 0010BA50  38 A0 00 01 */	li r5, 1
/* 8010EAF4 0010BA54  38 00 00 00 */	li r0, 0
/* 8010EAF8 0010BA58  3B E3 00 04 */	addi r31, r3, 4
/* 8010EAFC 0010BA5C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8010EB00 0010BA60  38 C4 A9 CC */	addi r6, r4, lbl_803DA9CC@l
/* 8010EB04 0010BA64  38 80 00 06 */	li r4, 6
/* 8010EB08 0010BA68  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8010EB0C 0010BA6C  7F E3 FB 78 */	mr r3, r31
/* 8010EB10 0010BA70  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8010EB14 0010BA74  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8010EB18 0010BA78  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8010EB1C 0010BA7C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8010EB20 0010BA80  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8010EB24 0010BA84  98 01 00 44 */	stb r0, 0x44(r1)
/* 8010EB28 0010BA88  48 02 29 11 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010EB2C 0010BA8C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8010EB30 0010BA90  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8010EB34 0010BA94  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 8010EB38 0010BA98  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010EB3C 0010BA9C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8010EB40 0010BAA0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010EB44 0010BAA4  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8010EB48 0010BAA8  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8010EB4C 0010BAAC  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8010EB50 0010BAB0  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8010EB54 0010BAB4  90 BF 01 34 */	stw r5, 0x134(r31)
/* 8010EB58 0010BAB8  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 8010EB5C 0010BABC  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8010EB60 0010BAC0  88 61 00 44 */	lbz r3, 0x44(r1)
/* 8010EB64 0010BAC4  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 8010EB68 0010BAC8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8010EB6C 0010BACC  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8010EB70 0010BAD0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8010EB74 0010BAD4  48 00 00 98 */	b lbl_8010EC0C
lbl_8010EB78:
/* 8010EB78 0010BAD8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010EB7C 0010BADC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8010EB80 0010BAE0  2C 00 00 12 */	cmpwi r0, 0x12
/* 8010EB84 0010BAE4  41 82 00 88 */	beq lbl_8010EC0C
/* 8010EB88 0010BAE8  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 8010EB8C 0010BAEC  38 00 00 03 */	li r0, 3
/* 8010EB90 0010BAF0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010EB94 0010BAF4  C0 9F 02 E4 */	lfs f4, 0x2e4(r31)
/* 8010EB98 0010BAF8  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8010EB9C 0010BAFC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010EBA0 0010BB00  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 8010EBA4 0010BB04  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8010EBA8 0010BB08  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010EBAC 0010BB0C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8010EBB0 0010BB10  EC 02 08 28 */	fsubs f0, f2, f1
/* 8010EBB4 0010BB14  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8010EBB8 0010BB18  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8010EBBC 0010BB1C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010EBC0 0010BB20  48 00 00 4C */	b lbl_8010EC0C
lbl_8010EBC4:
/* 8010EBC4 0010BB24  A1 1F 00 08 */	lhz r8, 8(r31)
/* 8010EBC8 0010BB28  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010EBCC 0010BB2C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8010EBD0 0010BB30  38 60 00 01 */	li r3, 1
/* 8010EBD4 0010BB34  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8010EBD8 0010BB38  38 E0 00 00 */	li r7, 0
/* 8010EBDC 0010BB3C  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010EBE0 0010BB40  B1 01 00 08 */	sth r8, 8(r1)
/* 8010EBE4 0010BB44  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010EBE8 0010BB48  48 12 B2 E9 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 8010EBEC 0010BB4C  7F E3 FB 78 */	mr r3, r31
/* 8010EBF0 0010BB50  7F C4 F3 78 */	mr r4, r30
/* 8010EBF4 0010BB54  4B FF D1 D5 */	bl CalcTimeToNextAttack__8CWarWaspFR13CStateManager
/* 8010EBF8 0010BB58  D0 3F 07 00 */	stfs f1, 0x700(r31)
/* 8010EBFC 0010BB5C  38 60 00 00 */	li r3, 0
/* 8010EC00 0010BB60  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EC04 0010BB64  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8010EC08 0010BB68  98 1F 07 2E */	stb r0, 0x72e(r31)
lbl_8010EC0C:
/* 8010EC0C 0010BB6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8010EC10 0010BB70  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8010EC14 0010BB74  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8010EC18 0010BB78  7C 08 03 A6 */	mtlr r0
/* 8010EC1C 0010BB7C  38 21 00 50 */	addi r1, r1, 0x50
/* 8010EC20 0010BB80  4E 80 00 20 */	blr

.global Attack__8CWarWaspFR13CStateManager9EStateMsgf
Attack__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010EC24 0010BB84  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8010EC28 0010BB88  7C 08 02 A6 */	mflr r0
/* 8010EC2C 0010BB8C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8010EC30 0010BB90  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8010EC34 0010BB94  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8010EC38 0010BB98  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8010EC3C 0010BB9C  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8010EC40 0010BBA0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8010EC44 0010BBA4  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8010EC48 0010BBA8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8010EC4C 0010BBAC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8010EC50 0010BBB0  2C 05 00 01 */	cmpwi r5, 1
/* 8010EC54 0010BBB4  7C 7F 1B 78 */	mr r31, r3
/* 8010EC58 0010BBB8  7C 9E 23 78 */	mr r30, r4
/* 8010EC5C 0010BBBC  41 82 00 94 */	beq lbl_8010ECF0
/* 8010EC60 0010BBC0  40 80 00 10 */	bge lbl_8010EC70
/* 8010EC64 0010BBC4  2C 05 00 00 */	cmpwi r5, 0
/* 8010EC68 0010BBC8  40 80 00 14 */	bge lbl_8010EC7C
/* 8010EC6C 0010BBCC  48 00 02 84 */	b lbl_8010EEF0
lbl_8010EC70:
/* 8010EC70 0010BBD0  2C 05 00 03 */	cmpwi r5, 3
/* 8010EC74 0010BBD4  40 80 02 7C */	bge lbl_8010EEF0
/* 8010EC78 0010BBD8  48 00 02 30 */	b lbl_8010EEA8
lbl_8010EC7C:
/* 8010EC7C 0010BBDC  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EC80 0010BBE0  38 60 00 01 */	li r3, 1
/* 8010EC84 0010BBE4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8010EC88 0010BBE8  38 A0 00 00 */	li r5, 0
/* 8010EC8C 0010BBEC  98 1F 07 2E */	stb r0, 0x72e(r31)
/* 8010EC90 0010BBF0  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EC94 0010BBF4  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8010EC98 0010BBF8  98 1F 07 2E */	stb r0, 0x72e(r31)
/* 8010EC9C 0010BBFC  A0 7F 06 74 */	lhz r3, 0x674(r31)
/* 8010ECA0 0010BC00  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8010ECA4 0010BC04  7C 03 00 40 */	cmplw r3, r0
/* 8010ECA8 0010BC08  41 82 00 40 */	beq lbl_8010ECE8
/* 8010ECAC 0010BC0C  A0 FF 00 08 */	lhz r7, 8(r31)
/* 8010ECB0 0010BC10  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8010ECB4 0010BC14  38 C1 00 18 */	addi r6, r1, 0x18
/* 8010ECB8 0010BC18  38 60 00 00 */	li r3, 0
/* 8010ECBC 0010BC1C  B0 E1 00 18 */	sth r7, 0x18(r1)
/* 8010ECC0 0010BC20  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010ECC4 0010BC24  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 8010ECC8 0010BC28  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8010ECCC 0010BC2C  48 12 B3 25 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 8010ECD0 0010BC30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010ECD4 0010BC34  38 60 00 03 */	li r3, 3
/* 8010ECD8 0010BC38  41 82 00 08 */	beq lbl_8010ECE0
/* 8010ECDC 0010BC3C  38 60 00 00 */	li r3, 0
lbl_8010ECE0:
/* 8010ECE0 0010BC40  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8010ECE4 0010BC44  48 00 02 0C */	b lbl_8010EEF0
lbl_8010ECE8:
/* 8010ECE8 0010BC48  90 BF 05 68 */	stw r5, 0x568(r31)
/* 8010ECEC 0010BC4C  48 00 02 04 */	b lbl_8010EEF0
lbl_8010ECF0:
/* 8010ECF0 0010BC50  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8010ECF4 0010BC54  2C 00 00 01 */	cmpwi r0, 1
/* 8010ECF8 0010BC58  41 82 01 F8 */	beq lbl_8010EEF0
/* 8010ECFC 0010BC5C  40 80 00 10 */	bge lbl_8010ED0C
/* 8010ED00 0010BC60  2C 00 00 00 */	cmpwi r0, 0
/* 8010ED04 0010BC64  40 80 00 14 */	bge lbl_8010ED18
/* 8010ED08 0010BC68  48 00 01 E8 */	b lbl_8010EEF0
lbl_8010ED0C:
/* 8010ED0C 0010BC6C  2C 00 00 03 */	cmpwi r0, 3
/* 8010ED10 0010BC70  40 80 01 E0 */	bge lbl_8010EEF0
/* 8010ED14 0010BC74  48 00 01 40 */	b lbl_8010EE54
lbl_8010ED18:
/* 8010ED18 0010BC78  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010ED1C 0010BC7C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8010ED20 0010BC80  2C 00 00 07 */	cmpwi r0, 7
/* 8010ED24 0010BC84  40 82 00 10 */	bne lbl_8010ED34
/* 8010ED28 0010BC88  38 00 00 02 */	li r0, 2
/* 8010ED2C 0010BC8C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010ED30 0010BC90  48 00 01 C0 */	b lbl_8010EEF0
lbl_8010ED34:
/* 8010ED34 0010BC94  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010ED38 0010BC98  7F E4 FB 78 */	mr r4, r31
/* 8010ED3C 0010BC9C  7F C5 F3 78 */	mr r5, r30
/* 8010ED40 0010BCA0  38 61 00 2C */	addi r3, r1, 0x2c
/* 8010ED44 0010BCA4  4B FF D1 5D */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010ED48 0010BCA8  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 8010ED4C 0010BCAC  38 61 00 38 */	addi r3, r1, 0x38
/* 8010ED50 0010BCB0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010ED54 0010BCB4  C3 E1 00 30 */	lfs f31, 0x30(r1)
/* 8010ED58 0010BCB8  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8010ED5C 0010BCBC  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8010ED60 0010BCC0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8010ED64 0010BCC4  EC 5F 10 28 */	fsubs f2, f31, f2
/* 8010ED68 0010BCC8  C3 C1 00 34 */	lfs f30, 0x34(r1)
/* 8010ED6C 0010BCCC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8010ED70 0010BCD0  EC 1E 08 28 */	fsubs f0, f30, f1
/* 8010ED74 0010BCD4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8010ED78 0010BCD8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8010ED7C 0010BCDC  48 20 59 7D */	bl CanBeNormalized__9CVector3fCFv
/* 8010ED80 0010BCE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010ED84 0010BCE4  41 82 00 38 */	beq lbl_8010EDBC
/* 8010ED88 0010BCE8  38 61 00 20 */	addi r3, r1, 0x20
/* 8010ED8C 0010BCEC  38 81 00 38 */	addi r4, r1, 0x38
/* 8010ED90 0010BCF0  48 20 5A C1 */	bl AsNormalized__9CVector3fCFv
/* 8010ED94 0010BCF4  C0 62 95 18 */	lfs f3, lbl_805AB238@sda21(r2)
/* 8010ED98 0010BCF8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8010ED9C 0010BCFC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8010EDA0 0010BD00  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8010EDA4 0010BD04  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8010EDA8 0010BD08  EC 23 00 72 */	fmuls f1, f3, f1
/* 8010EDAC 0010BD0C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8010EDB0 0010BD10  EF BD 10 2A */	fadds f29, f29, f2
/* 8010EDB4 0010BD14  EF FF 08 2A */	fadds f31, f31, f1
/* 8010EDB8 0010BD18  EF DE 00 2A */	fadds f30, f30, f0
lbl_8010EDBC:
/* 8010EDBC 0010BD1C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010EDC0 0010BD20  38 00 00 01 */	li r0, 1
/* 8010EDC4 0010BD24  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8010EDC8 0010BD28  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8010EDCC 0010BD2C  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 8010EDD0 0010BD30  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8010EDD4 0010BD34  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 8010EDD8 0010BD38  38 80 00 05 */	li r4, 5
/* 8010EDDC 0010BD3C  3B E3 00 04 */	addi r31, r3, 4
/* 8010EDE0 0010BD40  90 81 00 48 */	stw r4, 0x48(r1)
/* 8010EDE4 0010BD44  7F E3 FB 78 */	mr r3, r31
/* 8010EDE8 0010BD48  38 80 00 05 */	li r4, 5
/* 8010EDEC 0010BD4C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8010EDF0 0010BD50  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8010EDF4 0010BD54  D3 A1 00 50 */	stfs f29, 0x50(r1)
/* 8010EDF8 0010BD58  D3 E1 00 54 */	stfs f31, 0x54(r1)
/* 8010EDFC 0010BD5C  D3 C1 00 58 */	stfs f30, 0x58(r1)
/* 8010EE00 0010BD60  98 01 00 5C */	stb r0, 0x5c(r1)
/* 8010EE04 0010BD64  48 02 26 35 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010EE08 0010BD68  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8010EE0C 0010BD6C  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8010EE10 0010BD70  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8010EE14 0010BD74  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010EE18 0010BD78  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8010EE1C 0010BD7C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010EE20 0010BD80  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8010EE24 0010BD84  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 8010EE28 0010BD88  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8010EE2C 0010BD8C  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8010EE30 0010BD90  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8010EE34 0010BD94  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 8010EE38 0010BD98  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8010EE3C 0010BD9C  88 61 00 5C */	lbz r3, 0x5c(r1)
/* 8010EE40 0010BDA0  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8010EE44 0010BDA4  90 81 00 44 */	stw r4, 0x44(r1)
/* 8010EE48 0010BDA8  98 7F 01 24 */	stb r3, 0x124(r31)
/* 8010EE4C 0010BDAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010EE50 0010BDB0  48 00 00 A0 */	b lbl_8010EEF0
lbl_8010EE54:
/* 8010EE54 0010BDB4  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 8010EE58 0010BDB8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8010EE5C 0010BDBC  2C 00 00 07 */	cmpwi r0, 7
/* 8010EE60 0010BDC0  41 82 00 10 */	beq lbl_8010EE70
/* 8010EE64 0010BDC4  38 00 00 03 */	li r0, 3
/* 8010EE68 0010BDC8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010EE6C 0010BDCC  48 00 00 84 */	b lbl_8010EEF0
lbl_8010EE70:
/* 8010EE70 0010BDD0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8010EE74 0010BDD4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010EE78 0010BDD8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8010EE7C 0010BDDC  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8010EE80 0010BDE0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 8010EE84 0010BDE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010EE88 0010BDE8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8010EE8C 0010BDEC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8010EE90 0010BDF0  EC 64 18 28 */	fsubs f3, f4, f3
/* 8010EE94 0010BDF4  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8010EE98 0010BDF8  EC 02 08 28 */	fsubs f0, f2, f1
/* 8010EE9C 0010BDFC  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 8010EEA0 0010BE00  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 8010EEA4 0010BE04  48 00 00 4C */	b lbl_8010EEF0
lbl_8010EEA8:
/* 8010EEA8 0010BE08  A1 1F 00 08 */	lhz r8, 8(r31)
/* 8010EEAC 0010BE0C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010EEB0 0010BE10  38 C1 00 0C */	addi r6, r1, 0xc
/* 8010EEB4 0010BE14  38 60 00 00 */	li r3, 0
/* 8010EEB8 0010BE18  B1 01 00 0C */	sth r8, 0xc(r1)
/* 8010EEBC 0010BE1C  38 E0 00 00 */	li r7, 0
/* 8010EEC0 0010BE20  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 8010EEC4 0010BE24  B1 01 00 08 */	sth r8, 8(r1)
/* 8010EEC8 0010BE28  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010EECC 0010BE2C  48 12 B0 05 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 8010EED0 0010BE30  7F E3 FB 78 */	mr r3, r31
/* 8010EED4 0010BE34  7F C4 F3 78 */	mr r4, r30
/* 8010EED8 0010BE38  4B FF CE F1 */	bl CalcTimeToNextAttack__8CWarWaspFR13CStateManager
/* 8010EEDC 0010BE3C  D0 3F 07 00 */	stfs f1, 0x700(r31)
/* 8010EEE0 0010BE40  38 60 00 00 */	li r3, 0
/* 8010EEE4 0010BE44  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EEE8 0010BE48  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8010EEEC 0010BE4C  98 1F 07 2E */	stb r0, 0x72e(r31)
lbl_8010EEF0:
/* 8010EEF0 0010BE50  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8010EEF4 0010BE54  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8010EEF8 0010BE58  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8010EEFC 0010BE5C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8010EF00 0010BE60  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8010EF04 0010BE64  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8010EF08 0010BE68  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8010EF0C 0010BE6C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8010EF10 0010BE70  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8010EF14 0010BE74  7C 08 03 A6 */	mtlr r0
/* 8010EF18 0010BE78  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8010EF1C 0010BE7C  4E 80 00 20 */	blr

.global Generate__8CWarWaspFR13CStateManager9EStateMsgf
Generate__8CWarWaspFR13CStateManager9EStateMsgf:
/* 8010EF20 0010BE80  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8010EF24 0010BE84  7C 08 02 A6 */	mflr r0
/* 8010EF28 0010BE88  90 01 01 34 */	stw r0, 0x134(r1)
/* 8010EF2C 0010BE8C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8010EF30 0010BE90  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 8010EF34 0010BE94  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8010EF38 0010BE98  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 8010EF3C 0010BE9C  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8010EF40 0010BEA0  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8010EF44 0010BEA4  93 A1 01 04 */	stw r29, 0x104(r1)
/* 8010EF48 0010BEA8  7C 7F 1B 78 */	mr r31, r3
/* 8010EF4C 0010BEAC  FF C0 08 90 */	fmr f30, f1
/* 8010EF50 0010BEB0  2C 05 00 01 */	cmpwi r5, 1
/* 8010EF54 0010BEB4  81 03 04 50 */	lwz r8, 0x450(r3)
/* 8010EF58 0010BEB8  7C 9D 23 78 */	mr r29, r4
/* 8010EF5C 0010BEBC  41 82 01 68 */	beq lbl_8010F0C4
/* 8010EF60 0010BEC0  40 80 00 10 */	bge lbl_8010EF70
/* 8010EF64 0010BEC4  2C 05 00 00 */	cmpwi r5, 0
/* 8010EF68 0010BEC8  40 80 00 14 */	bge lbl_8010EF7C
/* 8010EF6C 0010BECC  48 00 04 30 */	b lbl_8010F39C
lbl_8010EF70:
/* 8010EF70 0010BED0  2C 05 00 03 */	cmpwi r5, 3
/* 8010EF74 0010BED4  40 80 04 28 */	bge lbl_8010F39C
/* 8010EF78 0010BED8  48 00 03 EC */	b lbl_8010F364
lbl_8010EF7C:
/* 8010EF7C 0010BEDC  7D 03 43 78 */	mr r3, r8
/* 8010EF80 0010BEE0  48 02 BD 71 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8010EF84 0010BEE4  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010EF88 0010BEE8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8010EF8C 0010BEEC  41 82 01 2C */	beq lbl_8010F0B8
/* 8010EF90 0010BEF0  7F E3 FB 78 */	mr r3, r31
/* 8010EF94 0010BEF4  7F A6 EB 78 */	mr r6, r29
/* 8010EF98 0010BEF8  38 80 00 21 */	li r4, 0x21
/* 8010EF9C 0010BEFC  38 A0 00 13 */	li r5, 0x13
/* 8010EFA0 0010BF00  4B F4 4F 35 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8010EFA4 0010BF04  38 61 00 74 */	addi r3, r1, 0x74
/* 8010EFA8 0010BF08  38 9F 00 34 */	addi r4, r31, 0x34
/* 8010EFAC 0010BF0C  48 20 31 7D */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 8010EFB0 0010BF10  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8010EFB4 0010BF14  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 8010EFB8 0010BF18  80 61 00 78 */	lwz r3, 0x78(r1)
/* 8010EFBC 0010BF1C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8010EFC0 0010BF20  90 7F 06 A4 */	stw r3, 0x6a4(r31)
/* 8010EFC4 0010BF24  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 8010EFC8 0010BF28  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8010EFCC 0010BF2C  90 1F 06 AC */	stw r0, 0x6ac(r31)
/* 8010EFD0 0010BF30  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 8010EFD4 0010BF34  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8010EFD8 0010BF38  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 8010EFDC 0010BF3C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8010EFE0 0010BF40  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 8010EFE4 0010BF44  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8010EFE8 0010BF48  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 8010EFEC 0010BF4C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8010EFF0 0010BF50  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8010EFF4 0010BF54  48 20 34 E9 */	bl Float__9CRandom16Fv
/* 8010EFF8 0010BF58  C0 42 95 4C */	lfs f2, lbl_805AB26C@sda21(r2)
/* 8010EFFC 0010BF5C  38 61 00 64 */	addi r3, r1, 0x64
/* 8010F000 0010BF60  C0 02 95 50 */	lfs f0, lbl_805AB270@sda21(r2)
/* 8010F004 0010BF64  38 81 00 08 */	addi r4, r1, 8
/* 8010F008 0010BF68  EC 02 00 78 */	fmsubs f0, f2, f1, f0
/* 8010F00C 0010BF6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8010F010 0010BF70  48 20 20 E9 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8010F014 0010BF74  38 61 00 20 */	addi r3, r1, 0x20
/* 8010F018 0010BF78  38 81 00 9C */	addi r4, r1, 0x9c
/* 8010F01C 0010BF7C  38 A1 00 64 */	addi r5, r1, 0x64
/* 8010F020 0010BF80  48 20 21 81 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8010F024 0010BF84  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8010F028 0010BF88  38 61 00 54 */	addi r3, r1, 0x54
/* 8010F02C 0010BF8C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 8010F030 0010BF90  38 81 00 9C */	addi r4, r1, 0x9c
/* 8010F034 0010BF94  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8010F038 0010BF98  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8010F03C 0010BF9C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8010F040 0010BFA0  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 8010F044 0010BFA4  90 A1 00 A4 */	stw r5, 0xa4(r1)
/* 8010F048 0010BFA8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8010F04C 0010BFAC  48 20 23 51 */	bl BuildNormalized__11CQuaternionCFv
/* 8010F050 0010BFB0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8010F054 0010BFB4  38 61 00 CC */	addi r3, r1, 0xcc
/* 8010F058 0010BFB8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8010F05C 0010BFBC  38 81 00 54 */	addi r4, r1, 0x54
/* 8010F060 0010BFC0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010F064 0010BFC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010F068 0010BFC8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8010F06C 0010BFCC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8010F070 0010BFD0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8010F074 0010BFD4  48 20 2E 49 */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 8010F078 0010BFD8  38 7F 00 34 */	addi r3, r31, 0x34
/* 8010F07C 0010BFDC  38 81 00 CC */	addi r4, r1, 0xcc
/* 8010F080 0010BFE0  48 20 3A C1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8010F084 0010BFE4  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8010F088 0010BFE8  38 80 00 01 */	li r4, 1
/* 8010F08C 0010BFEC  50 83 26 F6 */	rlwimi r3, r4, 4, 0x1b, 0x1b
/* 8010F090 0010BFF0  38 00 00 00 */	li r0, 0
/* 8010F094 0010BFF4  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8010F098 0010BFF8  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8010F09C 0010BFFC  50 83 1F 38 */	rlwimi r3, r4, 3, 0x1c, 0x1c
/* 8010F0A0 0010C000  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8010F0A4 0010C004  88 7F 00 E4 */	lbz r3, 0xe4(r31)
/* 8010F0A8 0010C008  50 83 17 7A */	rlwimi r3, r4, 2, 0x1d, 0x1d
/* 8010F0AC 0010C00C  98 7F 00 E4 */	stb r3, 0xe4(r31)
/* 8010F0B0 0010C010  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010F0B4 0010C014  48 00 02 E8 */	b lbl_8010F39C
lbl_8010F0B8:
/* 8010F0B8 0010C018  38 00 00 03 */	li r0, 3
/* 8010F0BC 0010C01C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010F0C0 0010C020  48 00 02 DC */	b lbl_8010F39C
lbl_8010F0C4:
/* 8010F0C4 0010C024  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8010F0C8 0010C028  2C 00 00 01 */	cmpwi r0, 1
/* 8010F0CC 0010C02C  41 82 02 D0 */	beq lbl_8010F39C
/* 8010F0D0 0010C030  40 80 00 10 */	bge lbl_8010F0E0
/* 8010F0D4 0010C034  2C 00 00 00 */	cmpwi r0, 0
/* 8010F0D8 0010C038  40 80 00 14 */	bge lbl_8010F0EC
/* 8010F0DC 0010C03C  48 00 02 C0 */	b lbl_8010F39C
lbl_8010F0E0:
/* 8010F0E0 0010C040  2C 00 00 03 */	cmpwi r0, 3
/* 8010F0E4 0010C044  40 80 02 B8 */	bge lbl_8010F39C
/* 8010F0E8 0010C048  48 00 00 EC */	b lbl_8010F1D4
lbl_8010F0EC:
/* 8010F0EC 0010C04C  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 8010F0F0 0010C050  2C 00 00 0C */	cmpwi r0, 0xc
/* 8010F0F4 0010C054  40 82 00 10 */	bne lbl_8010F104
/* 8010F0F8 0010C058  38 00 00 02 */	li r0, 2
/* 8010F0FC 0010C05C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010F100 0010C060  48 00 02 9C */	b lbl_8010F39C
lbl_8010F104:
/* 8010F104 0010C064  81 3F 03 88 */	lwz r9, 0x388(r31)
/* 8010F108 0010C068  3C E0 80 3E */	lis r7, lbl_803DAA68@ha
/* 8010F10C 0010C06C  38 C0 00 00 */	li r6, 0
/* 8010F110 0010C070  80 A1 00 C8 */	lwz r5, 0xc8(r1)
/* 8010F114 0010C074  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8010F118 0010C078  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 8010F11C 0010C07C  50 C5 F8 00 */	rlwimi r5, r6, 0x1f, 0, 0
/* 8010F120 0010C080  38 E7 AA 68 */	addi r7, r7, lbl_803DAA68@l
/* 8010F124 0010C084  C0 24 00 04 */	lfs f1, 4(r4)
/* 8010F128 0010C088  20 69 FF FF */	subfic r3, r9, -1
/* 8010F12C 0010C08C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8010F130 0010C090  38 09 00 01 */	addi r0, r9, 1
/* 8010F134 0010C094  7C 60 03 78 */	or r0, r3, r0
/* 8010F138 0010C098  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8010F13C 0010C09C  38 80 00 0E */	li r4, 0xe
/* 8010F140 0010C0A0  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8010F144 0010C0A4  90 E1 00 AC */	stw r7, 0xac(r1)
/* 8010F148 0010C0A8  38 E3 A9 F0 */	addi r7, r3, lbl_803DA9F0@l
/* 8010F14C 0010C0AC  50 05 F8 42 */	rlwimi r5, r0, 0x1f, 1, 1
/* 8010F150 0010C0B0  3B E8 00 04 */	addi r31, r8, 4
/* 8010F154 0010C0B4  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 8010F158 0010C0B8  7F E3 FB 78 */	mr r3, r31
/* 8010F15C 0010C0BC  38 80 00 0E */	li r4, 0xe
/* 8010F160 0010C0C0  90 E1 00 AC */	stw r7, 0xac(r1)
/* 8010F164 0010C0C4  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 8010F168 0010C0C8  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8010F16C 0010C0CC  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8010F170 0010C0D0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8010F174 0010C0D4  91 21 00 C4 */	stw r9, 0xc4(r1)
/* 8010F178 0010C0D8  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 8010F17C 0010C0DC  48 02 22 BD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8010F180 0010C0E0  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 8010F184 0010C0E4  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8010F188 0010C0E8  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8010F18C 0010C0EC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8010F190 0010C0F0  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8010F194 0010C0F4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8010F198 0010C0F8  80 A1 00 B4 */	lwz r5, 0xb4(r1)
/* 8010F19C 0010C0FC  80 61 00 B8 */	lwz r3, 0xb8(r1)
/* 8010F1A0 0010C100  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8010F1A4 0010C104  80 A1 00 BC */	lwz r5, 0xbc(r1)
/* 8010F1A8 0010C108  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8010F1AC 0010C10C  80 61 00 C0 */	lwz r3, 0xc0(r1)
/* 8010F1B0 0010C110  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8010F1B4 0010C114  80 A1 00 C4 */	lwz r5, 0xc4(r1)
/* 8010F1B8 0010C118  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8010F1BC 0010C11C  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 8010F1C0 0010C120  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8010F1C4 0010C124  90 81 00 AC */	stw r4, 0xac(r1)
/* 8010F1C8 0010C128  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8010F1CC 0010C12C  90 01 00 AC */	stw r0, 0xac(r1)
/* 8010F1D0 0010C130  48 00 01 CC */	b lbl_8010F39C
lbl_8010F1D4:
/* 8010F1D4 0010C134  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 8010F1D8 0010C138  2C 00 00 0C */	cmpwi r0, 0xc
/* 8010F1DC 0010C13C  41 82 00 10 */	beq lbl_8010F1EC
/* 8010F1E0 0010C140  38 00 00 03 */	li r0, 3
/* 8010F1E4 0010C144  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8010F1E8 0010C148  48 00 01 B4 */	b lbl_8010F39C
lbl_8010F1EC:
/* 8010F1EC 0010C14C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8010F1F0 0010C150  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8010F1F4 0010C154  C0 02 95 40 */	lfs f0, lbl_805AB260@sda21(r2)
/* 8010F1F8 0010C158  C0 23 00 04 */	lfs f1, 4(r3)
/* 8010F1FC 0010C15C  EF E0 07 B2 */	fmuls f31, f0, f30
/* 8010F200 0010C160  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010F204 0010C164  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8010F208 0010C168  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8010F20C 0010C16C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8010F210 0010C170  83 DD 08 38 */	lwz r30, 0x838(r29)
/* 8010F214 0010C174  AB BE 20 08 */	lha r29, 0x2008(r30)
/* 8010F218 0010C178  48 00 00 C8 */	b lbl_8010F2E0
lbl_8010F21C:
/* 8010F21C 0010C17C  7F C3 F3 78 */	mr r3, r30
/* 8010F220 0010C180  7F A4 EB 78 */	mr r4, r29
/* 8010F224 0010C184  4B F0 0A B9 */	bl __vc__11CObjectListCFi
/* 8010F228 0010C188  7C 64 1B 78 */	mr r4, r3
/* 8010F22C 0010C18C  38 61 00 0C */	addi r3, r1, 0xc
/* 8010F230 0010C190  4B F9 D8 2D */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 8010F234 0010C194  80 83 00 04 */	lwz r4, 4(r3)
/* 8010F238 0010C198  28 04 00 00 */	cmplwi r4, 0
/* 8010F23C 0010C19C  41 82 00 88 */	beq lbl_8010F2C4
/* 8010F240 0010C1A0  7C 04 F8 40 */	cmplw r4, r31
/* 8010F244 0010C1A4  41 82 00 80 */	beq lbl_8010F2C4
/* 8010F248 0010C1A8  80 64 00 04 */	lwz r3, 4(r4)
/* 8010F24C 0010C1AC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8010F250 0010C1B0  7C 03 00 00 */	cmpw r3, r0
/* 8010F254 0010C1B4  40 82 00 70 */	bne lbl_8010F2C4
/* 8010F258 0010C1B8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8010F25C 0010C1BC  7F E5 FB 78 */	mr r5, r31
/* 8010F260 0010C1C0  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8010F264 0010C1C4  38 61 00 48 */	addi r3, r1, 0x48
/* 8010F268 0010C1C8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8010F26C 0010C1CC  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8010F270 0010C1D0  C0 22 95 40 */	lfs f1, lbl_805AB260@sda21(r2)
/* 8010F274 0010C1D4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8010F278 0010C1D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010F27C 0010C1DC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8010F280 0010C1E0  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8010F284 0010C1E4  48 02 F6 6D */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8010F288 0010C1E8  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 8010F28C 0010C1EC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8010F290 0010C1F0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 8010F294 0010C1F4  EC BF 00 72 */	fmuls f5, f31, f1
/* 8010F298 0010C1F8  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 8010F29C 0010C1FC  EC 9F 00 32 */	fmuls f4, f31, f0
/* 8010F2A0 0010C200  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8010F2A4 0010C204  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8010F2A8 0010C208  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 8010F2AC 0010C20C  EC 21 28 2A */	fadds f1, f1, f5
/* 8010F2B0 0010C210  EC 43 10 2A */	fadds f2, f3, f2
/* 8010F2B4 0010C214  EC 00 20 2A */	fadds f0, f0, f4
/* 8010F2B8 0010C218  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8010F2BC 0010C21C  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8010F2C0 0010C220  D0 01 00 98 */	stfs f0, 0x98(r1)
lbl_8010F2C4:
/* 8010F2C4 0010C224  2C 1D FF FF */	cmpwi r29, -1
/* 8010F2C8 0010C228  41 82 00 14 */	beq lbl_8010F2DC
/* 8010F2CC 0010C22C  57 A3 18 38 */	slwi r3, r29, 3
/* 8010F2D0 0010C230  38 03 00 08 */	addi r0, r3, 8
/* 8010F2D4 0010C234  7F BE 02 AE */	lhax r29, r30, r0
/* 8010F2D8 0010C238  48 00 00 08 */	b lbl_8010F2E0
lbl_8010F2DC:
/* 8010F2DC 0010C23C  3B A0 FF FF */	li r29, -1
lbl_8010F2E0:
/* 8010F2E0 0010C240  2C 1D FF FF */	cmpwi r29, -1
/* 8010F2E4 0010C244  40 82 FF 38 */	bne lbl_8010F21C
/* 8010F2E8 0010C248  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8010F2EC 0010C24C  38 00 00 00 */	li r0, 0
/* 8010F2F0 0010C250  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8010F2F4 0010C254  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010F2F8 0010C258  40 82 00 1C */	bne lbl_8010F314
/* 8010F2FC 0010C25C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8010F300 0010C260  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010F304 0010C264  40 82 00 10 */	bne lbl_8010F314
/* 8010F308 0010C268  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8010F30C 0010C26C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010F310 0010C270  41 82 00 08 */	beq lbl_8010F318
lbl_8010F314:
/* 8010F314 0010C274  38 00 00 01 */	li r0, 1
lbl_8010F318:
/* 8010F318 0010C278  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8010F31C 0010C27C  41 82 00 80 */	beq lbl_8010F39C
/* 8010F320 0010C280  FC 20 F0 90 */	fmr f1, f30
/* 8010F324 0010C284  7F E4 FB 78 */	mr r4, r31
/* 8010F328 0010C288  38 61 00 30 */	addi r3, r1, 0x30
/* 8010F32C 0010C28C  38 A1 00 90 */	addi r5, r1, 0x90
/* 8010F330 0010C290  48 00 BC D9 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8010F334 0010C294  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8010F338 0010C298  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8010F33C 0010C29C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8010F340 0010C2A0  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8010F344 0010C2A4  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8010F348 0010C2A8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8010F34C 0010C2AC  4B F0 C1 E9 */	bl Identity__10CAxisAngleFv
/* 8010F350 0010C2B0  7C 65 1B 78 */	mr r5, r3
/* 8010F354 0010C2B4  7F E3 FB 78 */	mr r3, r31
/* 8010F358 0010C2B8  38 81 00 84 */	addi r4, r1, 0x84
/* 8010F35C 0010C2BC  48 00 D0 3D */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8010F360 0010C2C0  48 00 00 3C */	b lbl_8010F39C
lbl_8010F364:
/* 8010F364 0010C2C4  88 1F 07 2E */	lbz r0, 0x72e(r31)
/* 8010F368 0010C2C8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8010F36C 0010C2CC  41 82 00 30 */	beq lbl_8010F39C
/* 8010F370 0010C2D0  7F A6 EB 78 */	mr r6, r29
/* 8010F374 0010C2D4  38 80 00 21 */	li r4, 0x21
/* 8010F378 0010C2D8  38 A0 00 13 */	li r5, 0x13
/* 8010F37C 0010C2DC  4B F4 4F 39 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8010F380 0010C2E0  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8010F384 0010C2E4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8010F388 0010C2E8  41 82 00 14 */	beq lbl_8010F39C
/* 8010F38C 0010C2EC  88 1F 04 01 */	lbz r0, 0x401(r31)
/* 8010F390 0010C2F0  38 60 00 01 */	li r3, 1
/* 8010F394 0010C2F4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8010F398 0010C2F8  98 1F 04 01 */	stb r0, 0x401(r31)
lbl_8010F39C:
/* 8010F39C 0010C2FC  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 8010F3A0 0010C300  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8010F3A4 0010C304  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 8010F3A8 0010C308  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8010F3AC 0010C30C  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8010F3B0 0010C310  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8010F3B4 0010C314  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8010F3B8 0010C318  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 8010F3BC 0010C31C  7C 08 03 A6 */	mtlr r0
/* 8010F3C0 0010C320  38 21 01 30 */	addi r1, r1, 0x130
/* 8010F3C4 0010C324  4E 80 00 20 */	blr

.global AnimOver__8CWarWaspFR13CStateManagerf
AnimOver__8CWarWaspFR13CStateManagerf:
/* 8010F3C8 0010C328  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8010F3CC 0010C32C  20 00 00 03 */	subfic r0, r0, 3
/* 8010F3D0 0010C330  7C 00 00 34 */	cntlzw r0, r0
/* 8010F3D4 0010C334  54 03 D9 7E */	srwi r3, r0, 5
/* 8010F3D8 0010C338  4E 80 00 20 */	blr

.global InPosition__8CWarWaspFR13CStateManagerf
InPosition__8CWarWaspFR13CStateManagerf:
/* 8010F3DC 0010C33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010F3E0 0010C340  7C 08 02 A6 */	mflr r0
/* 8010F3E4 0010C344  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F3E8 0010C348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F3EC 0010C34C  7C 7F 1B 78 */	mr r31, r3
/* 8010F3F0 0010C350  81 83 00 00 */	lwz r12, 0(r3)
/* 8010F3F4 0010C354  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010F3F8 0010C358  7D 89 03 A6 */	mtctr r12
/* 8010F3FC 0010C35C  4E 80 04 21 */	bctrl
/* 8010F400 0010C360  28 03 00 00 */	cmplwi r3, 0
/* 8010F404 0010C364  41 82 00 38 */	beq lbl_8010F43C
/* 8010F408 0010C368  7F E3 FB 78 */	mr r3, r31
/* 8010F40C 0010C36C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8010F410 0010C370  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8010F414 0010C374  7D 89 03 A6 */	mtctr r12
/* 8010F418 0010C378  4E 80 04 21 */	bctrl
/* 8010F41C 0010C37C  80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 8010F420 0010C380  80 63 00 04 */	lwz r3, 4(r3)
/* 8010F424 0010C384  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 8010F428 0010C388  38 03 FF FF */	addi r0, r3, -1
/* 8010F42C 0010C38C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8010F430 0010C390  7C 00 28 10 */	subfc r0, r0, r5
/* 8010F434 0010C394  7C 64 19 14 */	adde r3, r4, r3
/* 8010F438 0010C398  48 00 00 44 */	b lbl_8010F47C
lbl_8010F43C:
/* 8010F43C 0010C39C  C0 3F 06 7C */	lfs f1, 0x67c(r31)
/* 8010F440 0010C3A0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8010F444 0010C3A4  C0 7F 06 78 */	lfs f3, 0x678(r31)
/* 8010F448 0010C3A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 8010F44C 0010C3AC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8010F450 0010C3B0  C0 5F 06 80 */	lfs f2, 0x680(r31)
/* 8010F454 0010C3B4  EC 63 00 28 */	fsubs f3, f3, f0
/* 8010F458 0010C3B8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8010F45C 0010C3BC  EC 21 00 72 */	fmuls f1, f1, f1
/* 8010F460 0010C3C0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8010F464 0010C3C4  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8010F468 0010C3C8  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8010F46C 0010C3CC  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010F470 0010C3D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F474 0010C3D4  7C 00 00 26 */	mfcr r0
/* 8010F478 0010C3D8  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8010F47C:
/* 8010F47C 0010C3DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010F480 0010C3E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010F484 0010C3E4  7C 08 03 A6 */	mtlr r0
/* 8010F488 0010C3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8010F48C 0010C3EC  4E 80 00 20 */	blr

.global Leash__8CWarWaspFR13CStateManagerf
Leash__8CWarWaspFR13CStateManagerf:
/* 8010F490 0010C3F0  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 8010F494 0010C3F4  C0 03 03 A4 */	lfs f0, 0x3a4(r3)
/* 8010F498 0010C3F8  C0 43 03 C8 */	lfs f2, 0x3c8(r3)
/* 8010F49C 0010C3FC  EC 60 30 28 */	fsubs f3, f0, f6
/* 8010F4A0 0010C400  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 8010F4A4 0010C404  C0 23 03 A0 */	lfs f1, 0x3a0(r3)
/* 8010F4A8 0010C408  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8010F4AC 0010C40C  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 8010F4B0 0010C410  C0 43 03 A8 */	lfs f2, 0x3a8(r3)
/* 8010F4B4 0010C414  EC 81 38 28 */	fsubs f4, f1, f7
/* 8010F4B8 0010C418  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8010F4BC 0010C41C  EC 42 28 28 */	fsubs f2, f2, f5
/* 8010F4C0 0010C420  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8010F4C4 0010C424  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010F4C8 0010C428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F4CC 0010C42C  40 81 00 5C */	ble lbl_8010F528
/* 8010F4D0 0010C430  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8010F4D4 0010C434  38 00 00 00 */	li r0, 0
/* 8010F4D8 0010C438  C0 03 03 CC */	lfs f0, 0x3cc(r3)
/* 8010F4DC 0010C43C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8010F4E0 0010C440  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 8010F4E4 0010C444  EC 00 00 32 */	fmuls f0, f0, f0
/* 8010F4E8 0010C448  EC 61 30 28 */	fsubs f3, f1, f6
/* 8010F4EC 0010C44C  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 8010F4F0 0010C450  EC 82 38 28 */	fsubs f4, f2, f7
/* 8010F4F4 0010C454  EC 41 28 28 */	fsubs f2, f1, f5
/* 8010F4F8 0010C458  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8010F4FC 0010C45C  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8010F500 0010C460  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8010F504 0010C464  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F508 0010C468  40 81 00 18 */	ble lbl_8010F520
/* 8010F50C 0010C46C  C0 23 03 D4 */	lfs f1, 0x3d4(r3)
/* 8010F510 0010C470  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 8010F514 0010C474  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F518 0010C478  40 81 00 08 */	ble lbl_8010F520
/* 8010F51C 0010C47C  38 00 00 01 */	li r0, 1
lbl_8010F520:
/* 8010F520 0010C480  7C 03 03 78 */	mr r3, r0
/* 8010F524 0010C484  4E 80 00 20 */	blr
lbl_8010F528:
/* 8010F528 0010C488  38 60 00 00 */	li r3, 0
/* 8010F52C 0010C48C  4E 80 00 20 */	blr

.global ShouldDodge__8CWarWaspFR13CStateManagerf
ShouldDodge__8CWarWaspFR13CStateManagerf:
/* 8010F530 0010C490  94 21 F7 50 */	stwu r1, -0x8b0(r1)
/* 8010F534 0010C494  7C 08 02 A6 */	mflr r0
/* 8010F538 0010C498  C0 A2 95 18 */	lfs f5, lbl_805AB238@sda21(r2)
/* 8010F53C 0010C49C  90 01 08 B4 */	stw r0, 0x8b4(r1)
/* 8010F540 0010C4A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010F544 0010C4A4  93 E1 08 AC */	stw r31, 0x8ac(r1)
/* 8010F548 0010C4A8  7C 9F 23 78 */	mr r31, r4
/* 8010F54C 0010C4AC  38 81 00 20 */	addi r4, r1, 0x20
/* 8010F550 0010C4B0  93 C1 08 A8 */	stw r30, 0x8a8(r1)
/* 8010F554 0010C4B4  7C 7E 1B 78 */	mr r30, r3
/* 8010F558 0010C4B8  93 A1 08 A4 */	stw r29, 0x8a4(r1)
/* 8010F55C 0010C4BC  93 81 08 A0 */	stw r28, 0x8a0(r1)
/* 8010F560 0010C4C0  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 8010F564 0010C4C4  38 61 00 78 */	addi r3, r1, 0x78
/* 8010F568 0010C4C8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8010F56C 0010C4CC  EC 07 28 2A */	fadds f0, f7, f5
/* 8010F570 0010C4D0  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 8010F574 0010C4D4  EC 81 28 2A */	fadds f4, f1, f5
/* 8010F578 0010C4D8  EC 41 28 28 */	fsubs f2, f1, f5
/* 8010F57C 0010C4DC  EC 66 28 2A */	fadds f3, f6, f5
/* 8010F580 0010C4E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8010F584 0010C4E4  EC 26 28 28 */	fsubs f1, f6, f5
/* 8010F588 0010C4E8  EC 07 28 28 */	fsubs f0, f7, f5
/* 8010F58C 0010C4EC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8010F590 0010C4F0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8010F594 0010C4F4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8010F598 0010C4F8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010F59C 0010C4FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8010F5A0 0010C500  48 22 8F 69 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8010F5A4 0010C504  38 00 00 00 */	li r0, 0
/* 8010F5A8 0010C508  80 AD 8A 18 */	lwz r5, lbl_805A75D8@sda21(r13)
/* 8010F5AC 0010C50C  90 01 00 90 */	stw r0, 0x90(r1)
/* 8010F5B0 0010C510  38 60 00 00 */	li r3, 0
/* 8010F5B4 0010C514  38 80 00 01 */	li r4, 1
/* 8010F5B8 0010C518  48 27 A9 3D */	bl __shl2i
/* 8010F5BC 0010C51C  39 00 00 01 */	li r8, 1
/* 8010F5C0 0010C520  38 00 00 00 */	li r0, 0
/* 8010F5C4 0010C524  90 81 00 64 */	stw r4, 0x64(r1)
/* 8010F5C8 0010C528  38 81 00 90 */	addi r4, r1, 0x90
/* 8010F5CC 0010C52C  38 A1 00 78 */	addi r5, r1, 0x78
/* 8010F5D0 0010C530  38 C1 00 60 */	addi r6, r1, 0x60
/* 8010F5D4 0010C534  90 61 00 60 */	stw r3, 0x60(r1)
/* 8010F5D8 0010C538  7F E3 FB 78 */	mr r3, r31
/* 8010F5DC 0010C53C  38 E0 00 00 */	li r7, 0
/* 8010F5E0 0010C540  91 01 00 58 */	stw r8, 0x58(r1)
/* 8010F5E4 0010C544  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8010F5E8 0010C548  90 01 00 68 */	stw r0, 0x68(r1)
/* 8010F5EC 0010C54C  91 01 00 70 */	stw r8, 0x70(r1)
/* 8010F5F0 0010C550  4B F3 D1 31 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8010F5F4 0010C554  80 01 00 90 */	lwz r0, 0x90(r1)
/* 8010F5F8 0010C558  2C 00 00 00 */	cmpwi r0, 0
/* 8010F5FC 0010C55C  40 81 01 64 */	ble lbl_8010F760
/* 8010F600 0010C560  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8010F604 0010C564  3B A1 00 94 */	addi r29, r1, 0x94
/* 8010F608 0010C568  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8010F60C 0010C56C  7F BC EB 78 */	mr r28, r29
/* 8010F610 0010C570  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8010F614 0010C574  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8010F618 0010C578  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8010F61C 0010C57C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8010F620 0010C580  48 00 01 2C */	b lbl_8010F74C
lbl_8010F624:
/* 8010F624 0010C584  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8010F628 0010C588  7F E3 FB 78 */	mr r3, r31
/* 8010F62C 0010C58C  38 81 00 08 */	addi r4, r1, 8
/* 8010F630 0010C590  B0 01 00 08 */	sth r0, 8(r1)
/* 8010F634 0010C594  4B F3 CF 71 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010F638 0010C598  7C 64 1B 78 */	mr r4, r3
/* 8010F63C 0010C59C  38 61 00 0C */	addi r3, r1, 0xc
/* 8010F640 0010C5A0  4B F9 E0 CD */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8010F644 0010C5A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8010F648 0010C5A8  28 05 00 00 */	cmplwi r5, 0
/* 8010F64C 0010C5AC  41 82 00 FC */	beq lbl_8010F748
/* 8010F650 0010C5B0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010F654 0010C5B4  A0 85 00 EC */	lhz r4, 0xec(r5)
/* 8010F658 0010C5B8  A0 03 00 08 */	lhz r0, 8(r3)
/* 8010F65C 0010C5BC  7C 04 00 40 */	cmplw r4, r0
/* 8010F660 0010C5C0  40 82 00 E8 */	bne lbl_8010F748
/* 8010F664 0010C5C4  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8010F668 0010C5C8  38 61 00 38 */	addi r3, r1, 0x38
/* 8010F66C 0010C5CC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8010F670 0010C5D0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8010F674 0010C5D4  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 8010F678 0010C5D8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8010F67C 0010C5DC  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010F680 0010C5E0  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8010F684 0010C5E4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010F688 0010C5E8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8010F68C 0010C5EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010F690 0010C5F0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8010F694 0010C5F4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8010F698 0010C5F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8010F69C 0010C5FC  48 20 4F 95 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 8010F6A0 0010C600  C0 02 95 4C */	lfs f0, lbl_805AB26C@sda21(r2)
/* 8010F6A4 0010C604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F6A8 0010C608  40 80 00 A0 */	bge lbl_8010F748
/* 8010F6AC 0010C60C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8010F6B0 0010C610  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8010F6B4 0010C614  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8010F6B8 0010C618  EC 01 00 32 */	fmuls f0, f1, f0
/* 8010F6BC 0010C61C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8010F6C0 0010C620  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 8010F6C4 0010C624  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8010F6C8 0010C628  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8010F6CC 0010C62C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010F6D0 0010C630  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8010F6D4 0010C634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F6D8 0010C638  40 81 00 0C */	ble lbl_8010F6E4
/* 8010F6DC 0010C63C  38 00 00 03 */	li r0, 3
/* 8010F6E0 0010C640  48 00 00 08 */	b lbl_8010F6E8
lbl_8010F6E4:
/* 8010F6E4 0010C644  38 00 00 02 */	li r0, 2
lbl_8010F6E8:
/* 8010F6E8 0010C648  90 1E 07 04 */	stw r0, 0x704(r30)
/* 8010F6EC 0010C64C  38 60 00 00 */	li r3, 0
/* 8010F6F0 0010C650  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 8010F6F4 0010C654  2C 05 00 00 */	cmpwi r5, 0
/* 8010F6F8 0010C658  40 81 00 40 */	ble lbl_8010F738
/* 8010F6FC 0010C65C  2C 05 00 08 */	cmpwi r5, 8
/* 8010F700 0010C660  38 85 FF F8 */	addi r4, r5, -8
/* 8010F704 0010C664  40 81 00 20 */	ble lbl_8010F724
/* 8010F708 0010C668  38 04 00 07 */	addi r0, r4, 7
/* 8010F70C 0010C66C  54 00 E8 FE */	srwi r0, r0, 3
/* 8010F710 0010C670  7C 09 03 A6 */	mtctr r0
/* 8010F714 0010C674  2C 04 00 00 */	cmpwi r4, 0
/* 8010F718 0010C678  40 81 00 0C */	ble lbl_8010F724
lbl_8010F71C:
/* 8010F71C 0010C67C  38 63 00 08 */	addi r3, r3, 8
/* 8010F720 0010C680  42 00 FF FC */	bdnz lbl_8010F71C
lbl_8010F724:
/* 8010F724 0010C684  7C 03 28 50 */	subf r0, r3, r5
/* 8010F728 0010C688  7C 09 03 A6 */	mtctr r0
/* 8010F72C 0010C68C  7C 03 28 00 */	cmpw r3, r5
/* 8010F730 0010C690  40 80 00 08 */	bge lbl_8010F738
lbl_8010F734:
/* 8010F734 0010C694  42 00 00 00 */	bdnz lbl_8010F734
lbl_8010F738:
/* 8010F738 0010C698  38 00 00 00 */	li r0, 0
/* 8010F73C 0010C69C  38 60 00 01 */	li r3, 1
/* 8010F740 0010C6A0  90 01 00 90 */	stw r0, 0x90(r1)
/* 8010F744 0010C6A4  48 00 00 74 */	b lbl_8010F7B8
lbl_8010F748:
/* 8010F748 0010C6A8  3B 9C 00 02 */	addi r28, r28, 2
lbl_8010F74C:
/* 8010F74C 0010C6AC  80 01 00 90 */	lwz r0, 0x90(r1)
/* 8010F750 0010C6B0  54 00 08 3C */	slwi r0, r0, 1
/* 8010F754 0010C6B4  7C 1D 02 14 */	add r0, r29, r0
/* 8010F758 0010C6B8  7C 1C 00 40 */	cmplw r28, r0
/* 8010F75C 0010C6BC  40 82 FE C8 */	bne lbl_8010F624
lbl_8010F760:
/* 8010F760 0010C6C0  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 8010F764 0010C6C4  38 60 00 00 */	li r3, 0
/* 8010F768 0010C6C8  2C 05 00 00 */	cmpwi r5, 0
/* 8010F76C 0010C6CC  40 81 00 40 */	ble lbl_8010F7AC
/* 8010F770 0010C6D0  2C 05 00 08 */	cmpwi r5, 8
/* 8010F774 0010C6D4  38 85 FF F8 */	addi r4, r5, -8
/* 8010F778 0010C6D8  40 81 00 20 */	ble lbl_8010F798
/* 8010F77C 0010C6DC  38 04 00 07 */	addi r0, r4, 7
/* 8010F780 0010C6E0  54 00 E8 FE */	srwi r0, r0, 3
/* 8010F784 0010C6E4  7C 09 03 A6 */	mtctr r0
/* 8010F788 0010C6E8  2C 04 00 00 */	cmpwi r4, 0
/* 8010F78C 0010C6EC  40 81 00 0C */	ble lbl_8010F798
lbl_8010F790:
/* 8010F790 0010C6F0  38 63 00 08 */	addi r3, r3, 8
/* 8010F794 0010C6F4  42 00 FF FC */	bdnz lbl_8010F790
lbl_8010F798:
/* 8010F798 0010C6F8  7C 03 28 50 */	subf r0, r3, r5
/* 8010F79C 0010C6FC  7C 09 03 A6 */	mtctr r0
/* 8010F7A0 0010C700  7C 03 28 00 */	cmpw r3, r5
/* 8010F7A4 0010C704  40 80 00 08 */	bge lbl_8010F7AC
lbl_8010F7A8:
/* 8010F7A8 0010C708  42 00 00 00 */	bdnz lbl_8010F7A8
lbl_8010F7AC:
/* 8010F7AC 0010C70C  38 00 00 00 */	li r0, 0
/* 8010F7B0 0010C710  38 60 00 00 */	li r3, 0
/* 8010F7B4 0010C714  90 01 00 90 */	stw r0, 0x90(r1)
lbl_8010F7B8:
/* 8010F7B8 0010C718  80 01 08 B4 */	lwz r0, 0x8b4(r1)
/* 8010F7BC 0010C71C  83 E1 08 AC */	lwz r31, 0x8ac(r1)
/* 8010F7C0 0010C720  83 C1 08 A8 */	lwz r30, 0x8a8(r1)
/* 8010F7C4 0010C724  83 A1 08 A4 */	lwz r29, 0x8a4(r1)
/* 8010F7C8 0010C728  83 81 08 A0 */	lwz r28, 0x8a0(r1)
/* 8010F7CC 0010C72C  7C 08 03 A6 */	mtlr r0
/* 8010F7D0 0010C730  38 21 08 B0 */	addi r1, r1, 0x8b0
/* 8010F7D4 0010C734  4E 80 00 20 */	blr

.global ShouldTurn__8CWarWaspFR13CStateManagerf
ShouldTurn__8CWarWaspFR13CStateManagerf:
/* 8010F7D8 0010C738  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8010F7DC 0010C73C  7C 08 02 A6 */	mflr r0
/* 8010F7E0 0010C740  90 01 00 74 */	stw r0, 0x74(r1)
/* 8010F7E4 0010C744  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8010F7E8 0010C748  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8010F7EC 0010C74C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010F7F0 0010C750  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8010F7F4 0010C754  7C 7F 1B 78 */	mr r31, r3
/* 8010F7F8 0010C758  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8010F7FC 0010C75C  FF E0 08 90 */	fmr f31, f1
/* 8010F800 0010C760  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8010F804 0010C764  38 61 00 10 */	addi r3, r1, 0x10
/* 8010F808 0010C768  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8010F80C 0010C76C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8010F810 0010C770  EC 44 10 28 */	fsubs f2, f4, f2
/* 8010F814 0010C774  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8010F818 0010C778  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8010F81C 0010C77C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8010F820 0010C780  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8010F824 0010C784  EC 65 18 28 */	fsubs f3, f5, f3
/* 8010F828 0010C788  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8010F82C 0010C78C  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8010F830 0010C790  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8010F834 0010C794  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8010F838 0010C798  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8010F83C 0010C79C  48 20 49 C5 */	bl __ct__9CVector2fFff
/* 8010F840 0010C7A0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8010F844 0010C7A4  38 61 00 08 */	addi r3, r1, 8
/* 8010F848 0010C7A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8010F84C 0010C7AC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010F850 0010C7B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8010F854 0010C7B4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8010F858 0010C7B8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8010F85C 0010C7BC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8010F860 0010C7C0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8010F864 0010C7C4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8010F868 0010C7C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8010F86C 0010C7CC  48 20 49 95 */	bl __ct__9CVector2fFff
/* 8010F870 0010C7D0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8010F874 0010C7D4  38 61 00 18 */	addi r3, r1, 0x18
/* 8010F878 0010C7D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8010F87C 0010C7DC  38 81 00 20 */	addi r4, r1, 0x20
/* 8010F880 0010C7E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8010F884 0010C7E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8010F888 0010C7E8  48 20 47 3D */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 8010F88C 0010C7EC  C0 02 95 54 */	lfs f0, lbl_805AB274@sda21(r2)
/* 8010F890 0010C7F0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8010F894 0010C7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F898 0010C7F8  7C 00 00 26 */	mfcr r0
/* 8010F89C 0010C7FC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8010F8A0 0010C800  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8010F8A4 0010C804  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8010F8A8 0010C808  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8010F8AC 0010C80C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010F8B0 0010C810  7C 08 03 A6 */	mtlr r0
/* 8010F8B4 0010C814  38 21 00 70 */	addi r1, r1, 0x70
/* 8010F8B8 0010C818  4E 80 00 20 */	blr

.global ShouldSpecialAttack__8CWarWaspFR13CStateManagerf
ShouldSpecialAttack__8CWarWaspFR13CStateManagerf:
/* 8010F8BC 0010C81C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8010F8C0 0010C820  7C 08 02 A6 */	mflr r0
/* 8010F8C4 0010C824  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8010F8C8 0010C828  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8010F8CC 0010C82C  7C 9F 23 78 */	mr r31, r4
/* 8010F8D0 0010C830  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8010F8D4 0010C834  7C 7E 1B 78 */	mr r30, r3
/* 8010F8D8 0010C838  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8010F8DC 0010C83C  2C 00 00 00 */	cmpwi r0, 0
/* 8010F8E0 0010C840  40 82 02 88 */	bne lbl_8010FB68
/* 8010F8E4 0010C844  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010F8E8 0010C848  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 8010F8EC 0010C84C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8010F8F0 0010C850  40 82 02 78 */	bne lbl_8010FB68
/* 8010F8F4 0010C854  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010F8F8 0010C858  7F E3 FB 78 */	mr r3, r31
/* 8010F8FC 0010C85C  38 81 00 28 */	addi r4, r1, 0x28
/* 8010F900 0010C860  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8010F904 0010C864  4B F3 CC A1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010F908 0010C868  7C 64 1B 78 */	mr r4, r3
/* 8010F90C 0010C86C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8010F910 0010C870  4B F9 7C 65 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010F914 0010C874  80 03 00 04 */	lwz r0, 4(r3)
/* 8010F918 0010C878  28 00 00 00 */	cmplwi r0, 0
/* 8010F91C 0010C87C  41 82 02 4C */	beq lbl_8010FB68
/* 8010F920 0010C880  80 BE 07 08 */	lwz r5, 0x708(r30)
/* 8010F924 0010C884  7F C3 F3 78 */	mr r3, r30
/* 8010F928 0010C888  7F E4 FB 78 */	mr r4, r31
/* 8010F92C 0010C88C  4B FF BB 05 */	bl CheckCircleAttackSpread__8CWarWaspFR13CStateManageri
/* 8010F930 0010C890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010F934 0010C894  41 82 02 34 */	beq lbl_8010FB68
/* 8010F938 0010C898  80 DE 07 08 */	lwz r6, 0x708(r30)
/* 8010F93C 0010C89C  7F C4 F3 78 */	mr r4, r30
/* 8010F940 0010C8A0  7F E5 FB 78 */	mr r5, r31
/* 8010F944 0010C8A4  38 61 00 24 */	addi r3, r1, 0x24
/* 8010F948 0010C8A8  4B FF B7 41 */	bl GetAttackTeamLeader__8CWarWaspFR13CStateManageri
/* 8010F94C 0010C8AC  A0 61 00 24 */	lhz r3, 0x24(r1)
/* 8010F950 0010C8B0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8010F954 0010C8B4  B0 61 00 2C */	sth r3, 0x2c(r1)
/* 8010F958 0010C8B8  7C 03 00 40 */	cmplw r3, r0
/* 8010F95C 0010C8BC  40 82 01 AC */	bne lbl_8010FB08
/* 8010F960 0010C8C0  C0 3E 07 00 */	lfs f1, 0x700(r30)
/* 8010F964 0010C8C4  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010F968 0010C8C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F96C 0010C8CC  4C 40 13 82 */	cror 2, 0, 2
/* 8010F970 0010C8D0  40 82 01 F8 */	bne lbl_8010FB68
/* 8010F974 0010C8D4  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8010F978 0010C8D8  38 61 00 44 */	addi r3, r1, 0x44
/* 8010F97C 0010C8DC  C0 5E 06 B4 */	lfs f2, 0x6b4(r30)
/* 8010F980 0010C8E0  48 20 48 81 */	bl __ct__9CVector2fFff
/* 8010F984 0010C8E4  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8010F988 0010C8E8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8010F98C 0010C8EC  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8010F990 0010C8F0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8010F994 0010C8F4  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 8010F998 0010C8F8  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8010F99C 0010C8FC  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8010F9A0 0010C900  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8010F9A4 0010C904  48 20 48 5D */	bl __ct__9CVector2fFff
/* 8010F9A8 0010C908  38 61 00 54 */	addi r3, r1, 0x54
/* 8010F9AC 0010C90C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8010F9B0 0010C910  38 A1 00 44 */	addi r5, r1, 0x44
/* 8010F9B4 0010C914  48 20 45 85 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 8010F9B8 0010C918  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8010F9BC 0010C91C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8010F9C0 0010C920  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8010F9C4 0010C924  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8010F9C8 0010C928  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8010F9CC 0010C92C  48 20 47 11 */	bl MagSquared__9CVector2fCFv
/* 8010F9D0 0010C930  C0 02 95 58 */	lfs f0, lbl_805AB278@sda21(r2)
/* 8010F9D4 0010C934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F9D8 0010C938  40 80 01 90 */	bge lbl_8010FB68
/* 8010F9DC 0010C93C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8010F9E0 0010C940  C0 3E 06 B4 */	lfs f1, 0x6b4(r30)
/* 8010F9E4 0010C944  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8010F9E8 0010C948  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 8010F9EC 0010C94C  EC 82 08 28 */	fsubs f4, f2, f1
/* 8010F9F0 0010C950  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8010F9F4 0010C954  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 8010F9F8 0010C958  EC 63 00 28 */	fsubs f3, f3, f0
/* 8010F9FC 0010C95C  C0 02 95 5C */	lfs f0, lbl_805AB27C@sda21(r2)
/* 8010FA00 0010C960  EC 22 08 28 */	fsubs f1, f2, f1
/* 8010FA04 0010C964  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 8010FA08 0010C968  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 8010FA0C 0010C96C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8010FA10 0010C970  C0 3E 06 BC */	lfs f1, 0x6bc(r30)
/* 8010FA14 0010C974  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8010FA18 0010C978  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 8010FA1C 0010C97C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8010FA20 0010C980  C0 3E 06 C4 */	lfs f1, 0x6c4(r30)
/* 8010FA24 0010C984  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8010FA28 0010C988  C0 3E 07 18 */	lfs f1, 0x718(r30)
/* 8010FA2C 0010C98C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FA30 0010C990  4C 40 13 82 */	cror 2, 0, 2
/* 8010FA34 0010C994  40 82 00 38 */	bne lbl_8010FA6C
/* 8010FA38 0010C998  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8010FA3C 0010C99C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8010FA40 0010C9A0  38 9E 06 C8 */	addi r4, r30, 0x6c8
/* 8010FA44 0010C9A4  38 BE 06 BC */	addi r5, r30, 0x6bc
/* 8010FA48 0010C9A8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8010FA4C 0010C9AC  48 20 4F 09 */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 8010FA50 0010C9B0  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8010FA54 0010C9B4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8010FA58 0010C9B8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8010FA5C 0010C9BC  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8010FA60 0010C9C0  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8010FA64 0010C9C4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8010FA68 0010C9C8  48 00 00 5C */	b lbl_8010FAC4
lbl_8010FA6C:
/* 8010FA6C 0010C9CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FA70 0010C9D0  38 61 00 70 */	addi r3, r1, 0x70
/* 8010FA74 0010C9D4  38 9E 06 BC */	addi r4, r30, 0x6bc
/* 8010FA78 0010C9D8  38 A1 00 64 */	addi r5, r1, 0x64
/* 8010FA7C 0010C9DC  38 C1 00 34 */	addi r6, r1, 0x34
/* 8010FA80 0010C9E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8010FA84 0010C9E4  C0 5E 06 D0 */	lfs f2, 0x6d0(r30)
/* 8010FA88 0010C9E8  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 8010FA8C 0010C9EC  C0 1E 06 C8 */	lfs f0, 0x6c8(r30)
/* 8010FA90 0010C9F0  FC 40 10 50 */	fneg f2, f2
/* 8010FA94 0010C9F4  FC 20 08 50 */	fneg f1, f1
/* 8010FA98 0010C9F8  FC 00 00 50 */	fneg f0, f0
/* 8010FA9C 0010C9FC  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8010FAA0 0010CA00  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8010FAA4 0010CA04  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8010FAA8 0010CA08  48 20 4E AD */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 8010FAAC 0010CA0C  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8010FAB0 0010CA10  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8010FAB4 0010CA14  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8010FAB8 0010CA18  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8010FABC 0010CA1C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8010FAC0 0010CA20  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_8010FAC4:
/* 8010FAC4 0010CA24  38 61 00 94 */	addi r3, r1, 0x94
/* 8010FAC8 0010CA28  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8010FACC 0010CA2C  48 20 4B 65 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 8010FAD0 0010CA30  C0 02 94 E8 */	lfs f0, lbl_805AB208@sda21(r2)
/* 8010FAD4 0010CA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FAD8 0010CA38  40 80 00 90 */	bge lbl_8010FB68
/* 8010FADC 0010CA3C  A0 FE 00 08 */	lhz r7, 8(r30)
/* 8010FAE0 0010CA40  7F E4 FB 78 */	mr r4, r31
/* 8010FAE4 0010CA44  38 A1 00 20 */	addi r5, r1, 0x20
/* 8010FAE8 0010CA48  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8010FAEC 0010CA4C  B0 E1 00 1C */	sth r7, 0x1c(r1)
/* 8010FAF0 0010CA50  38 60 00 00 */	li r3, 0
/* 8010FAF4 0010CA54  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FAF8 0010CA58  B0 E1 00 18 */	sth r7, 0x18(r1)
/* 8010FAFC 0010CA5C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8010FB00 0010CA60  48 12 A4 F1 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 8010FB04 0010CA64  48 00 00 68 */	b lbl_8010FB6C
lbl_8010FB08:
/* 8010FB08 0010CA68  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8010FB0C 0010CA6C  7F E3 FB 78 */	mr r3, r31
/* 8010FB10 0010CA70  38 81 00 14 */	addi r4, r1, 0x14
/* 8010FB14 0010CA74  4B F3 CA 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8010FB18 0010CA78  7C 64 1B 78 */	mr r4, r3
/* 8010FB1C 0010CA7C  38 61 00 30 */	addi r3, r1, 0x30
/* 8010FB20 0010CA80  4B F9 58 49 */	bl "__ct__25TPatternedCast<8CWarWasp>FP7CEntity"
/* 8010FB24 0010CA84  4B F9 58 19 */	bl "CastTo<8CWarWasp>__10CPatternedFRC25TPatternedCast<8CWarWasp>"
/* 8010FB28 0010CA88  28 03 00 00 */	cmplwi r3, 0
/* 8010FB2C 0010CA8C  41 82 00 3C */	beq lbl_8010FB68
/* 8010FB30 0010CA90  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 8010FB34 0010CA94  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8010FB38 0010CA98  41 82 00 30 */	beq lbl_8010FB68
/* 8010FB3C 0010CA9C  A0 FE 00 08 */	lhz r7, 8(r30)
/* 8010FB40 0010CAA0  7F E4 FB 78 */	mr r4, r31
/* 8010FB44 0010CAA4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010FB48 0010CAA8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8010FB4C 0010CAAC  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 8010FB50 0010CAB0  38 60 00 00 */	li r3, 0
/* 8010FB54 0010CAB4  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FB58 0010CAB8  B0 E1 00 08 */	sth r7, 8(r1)
/* 8010FB5C 0010CABC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8010FB60 0010CAC0  48 12 A4 91 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 8010FB64 0010CAC4  48 00 00 08 */	b lbl_8010FB6C
lbl_8010FB68:
/* 8010FB68 0010CAC8  38 60 00 00 */	li r3, 0
lbl_8010FB6C:
/* 8010FB6C 0010CACC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8010FB70 0010CAD0  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8010FB74 0010CAD4  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8010FB78 0010CAD8  7C 08 03 A6 */	mtlr r0
/* 8010FB7C 0010CADC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8010FB80 0010CAE0  4E 80 00 20 */	blr

.global ShouldFire__8CWarWaspFR13CStateManagerf
ShouldFire__8CWarWaspFR13CStateManagerf:
/* 8010FB84 0010CAE4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8010FB88 0010CAE8  7C 08 02 A6 */	mflr r0
/* 8010FB8C 0010CAEC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8010FB90 0010CAF0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8010FB94 0010CAF4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8010FB98 0010CAF8  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8010FB9C 0010CAFC  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8010FBA0 0010CB00  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 8010FBA4 0010CB04  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8010FBA8 0010CB08  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8010FBAC 0010CB0C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8010FBB0 0010CB10  7C 7E 1B 78 */	mr r30, r3
/* 8010FBB4 0010CB14  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010FBB8 0010CB18  C0 23 07 00 */	lfs f1, 0x700(r3)
/* 8010FBBC 0010CB1C  7C 9F 23 78 */	mr r31, r4
/* 8010FBC0 0010CB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FBC4 0010CB24  4C 40 13 82 */	cror 2, 0, 2
/* 8010FBC8 0010CB28  40 82 01 B4 */	bne lbl_8010FD7C
/* 8010FBCC 0010CB2C  A0 DE 00 08 */	lhz r6, 8(r30)
/* 8010FBD0 0010CB30  7F E3 FB 78 */	mr r3, r31
/* 8010FBD4 0010CB34  38 81 00 14 */	addi r4, r1, 0x14
/* 8010FBD8 0010CB38  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010FBDC 0010CB3C  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8010FBE0 0010CB40  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FBE4 0010CB44  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8010FBE8 0010CB48  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010FBEC 0010CB4C  48 12 A5 95 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8010FBF0 0010CB50  28 03 00 00 */	cmplwi r3, 0
/* 8010FBF4 0010CB54  41 82 00 E0 */	beq lbl_8010FCD4
/* 8010FBF8 0010CB58  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8010FBFC 0010CB5C  2C 00 00 02 */	cmpwi r0, 2
/* 8010FC00 0010CB60  40 82 01 7C */	bne lbl_8010FD7C
/* 8010FC04 0010CB64  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010FC08 0010CB68  7F C4 F3 78 */	mr r4, r30
/* 8010FC0C 0010CB6C  7F E5 FB 78 */	mr r5, r31
/* 8010FC10 0010CB70  38 61 00 44 */	addi r3, r1, 0x44
/* 8010FC14 0010CB74  4B FF C2 8D */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010FC18 0010CB78  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8010FC1C 0010CB7C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8010FC20 0010CB80  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8010FC24 0010CB84  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 8010FC28 0010CB88  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8010FC2C 0010CB8C  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010FC30 0010CB90  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010FC34 0010CB94  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8010FC38 0010CB98  EC 43 10 28 */	fsubs f2, f3, f2
/* 8010FC3C 0010CB9C  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8010FC40 0010CBA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FC44 0010CBA4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8010FC48 0010CBA8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8010FC4C 0010CBAC  C3 BE 00 58 */	lfs f29, 0x58(r30)
/* 8010FC50 0010CBB0  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 8010FC54 0010CBB4  C3 FE 00 38 */	lfs f31, 0x38(r30)
/* 8010FC58 0010CBB8  48 20 4A A1 */	bl CanBeNormalized__9CVector3fCFv
/* 8010FC5C 0010CBBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010FC60 0010CBC0  41 82 01 1C */	beq lbl_8010FD7C
/* 8010FC64 0010CBC4  38 61 00 38 */	addi r3, r1, 0x38
/* 8010FC68 0010CBC8  38 81 00 5C */	addi r4, r1, 0x5c
/* 8010FC6C 0010CBCC  48 20 4B E5 */	bl AsNormalized__9CVector3fCFv
/* 8010FC70 0010CBD0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8010FC74 0010CBD4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8010FC78 0010CBD8  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8010FC7C 0010CBDC  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8010FC80 0010CBE0  C0 02 95 60 */	lfs f0, lbl_805AB280@sda21(r2)
/* 8010FC84 0010CBE4  EC 3F 08 BA */	fmadds f1, f31, f2, f1
/* 8010FC88 0010CBE8  EC 3D 08 FA */	fmadds f1, f29, f3, f1
/* 8010FC8C 0010CBEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FC90 0010CBF0  4C 41 13 82 */	cror 2, 1, 2
/* 8010FC94 0010CBF4  40 82 00 E8 */	bne lbl_8010FD7C
/* 8010FC98 0010CBF8  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FC9C 0010CBFC  7F E3 FB 78 */	mr r3, r31
/* 8010FCA0 0010CC00  38 81 00 08 */	addi r4, r1, 8
/* 8010FCA4 0010CC04  B0 01 00 08 */	sth r0, 8(r1)
/* 8010FCA8 0010CC08  4B F3 C8 CD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8010FCAC 0010CC0C  7C 64 1B 78 */	mr r4, r3
/* 8010FCB0 0010CC10  38 61 00 18 */	addi r3, r1, 0x18
/* 8010FCB4 0010CC14  4B F9 78 C1 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010FCB8 0010CC18  80 63 00 04 */	lwz r3, 4(r3)
/* 8010FCBC 0010CC1C  28 03 00 00 */	cmplwi r3, 0
/* 8010FCC0 0010CC20  41 82 00 BC */	beq lbl_8010FD7C
/* 8010FCC4 0010CC24  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 8010FCC8 0010CC28  7C 00 00 34 */	cntlzw r0, r0
/* 8010FCCC 0010CC2C  54 03 D9 7E */	srwi r3, r0, 5
/* 8010FCD0 0010CC30  48 00 00 B0 */	b lbl_8010FD80
lbl_8010FCD4:
/* 8010FCD4 0010CC34  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8010FCD8 0010CC38  2C 00 00 02 */	cmpwi r0, 2
/* 8010FCDC 0010CC3C  40 82 00 A0 */	bne lbl_8010FD7C
/* 8010FCE0 0010CC40  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010FCE4 0010CC44  7F C4 F3 78 */	mr r4, r30
/* 8010FCE8 0010CC48  7F E5 FB 78 */	mr r5, r31
/* 8010FCEC 0010CC4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8010FCF0 0010CC50  4B FF C1 B1 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010FCF4 0010CC54  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8010FCF8 0010CC58  38 61 00 50 */	addi r3, r1, 0x50
/* 8010FCFC 0010CC5C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8010FD00 0010CC60  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8010FD04 0010CC64  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8010FD08 0010CC68  EC 81 00 28 */	fsubs f4, f1, f0
/* 8010FD0C 0010CC6C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010FD10 0010CC70  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8010FD14 0010CC74  EC 43 10 28 */	fsubs f2, f3, f2
/* 8010FD18 0010CC78  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8010FD1C 0010CC7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FD20 0010CC80  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8010FD24 0010CC84  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8010FD28 0010CC88  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 8010FD2C 0010CC8C  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 8010FD30 0010CC90  C3 BE 00 38 */	lfs f29, 0x38(r30)
/* 8010FD34 0010CC94  48 20 49 C5 */	bl CanBeNormalized__9CVector3fCFv
/* 8010FD38 0010CC98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010FD3C 0010CC9C  41 82 00 40 */	beq lbl_8010FD7C
/* 8010FD40 0010CCA0  38 61 00 20 */	addi r3, r1, 0x20
/* 8010FD44 0010CCA4  38 81 00 50 */	addi r4, r1, 0x50
/* 8010FD48 0010CCA8  48 20 4B 09 */	bl AsNormalized__9CVector3fCFv
/* 8010FD4C 0010CCAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8010FD50 0010CCB0  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8010FD54 0010CCB4  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8010FD58 0010CCB8  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8010FD5C 0010CCBC  C0 02 95 60 */	lfs f0, lbl_805AB280@sda21(r2)
/* 8010FD60 0010CCC0  EC 3D 08 BA */	fmadds f1, f29, f2, f1
/* 8010FD64 0010CCC4  EC 3F 08 FA */	fmadds f1, f31, f3, f1
/* 8010FD68 0010CCC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FD6C 0010CCCC  4C 41 13 82 */	cror 2, 1, 2
/* 8010FD70 0010CCD0  7C 00 00 26 */	mfcr r0
/* 8010FD74 0010CCD4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8010FD78 0010CCD8  48 00 00 08 */	b lbl_8010FD80
lbl_8010FD7C:
/* 8010FD7C 0010CCDC  38 60 00 00 */	li r3, 0
lbl_8010FD80:
/* 8010FD80 0010CCE0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8010FD84 0010CCE4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8010FD88 0010CCE8  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8010FD8C 0010CCEC  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8010FD90 0010CCF0  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8010FD94 0010CCF4  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 8010FD98 0010CCF8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8010FD9C 0010CCFC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8010FDA0 0010CD00  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8010FDA4 0010CD04  7C 08 03 A6 */	mtlr r0
/* 8010FDA8 0010CD08  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8010FDAC 0010CD0C  4E 80 00 20 */	blr

.global ShouldAttack__8CWarWaspFR13CStateManagerf
ShouldAttack__8CWarWaspFR13CStateManagerf:
/* 8010FDB0 0010CD10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8010FDB4 0010CD14  7C 08 02 A6 */	mflr r0
/* 8010FDB8 0010CD18  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 8010FDBC 0010CD1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8010FDC0 0010CD20  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8010FDC4 0010CD24  7C 9F 23 78 */	mr r31, r4
/* 8010FDC8 0010CD28  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8010FDCC 0010CD2C  7C 7E 1B 78 */	mr r30, r3
/* 8010FDD0 0010CD30  C0 23 07 00 */	lfs f1, 0x700(r3)
/* 8010FDD4 0010CD34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FDD8 0010CD38  4C 40 13 82 */	cror 2, 0, 2
/* 8010FDDC 0010CD3C  40 82 01 40 */	bne lbl_8010FF1C
/* 8010FDE0 0010CD40  A0 DE 00 08 */	lhz r6, 8(r30)
/* 8010FDE4 0010CD44  7F E3 FB 78 */	mr r3, r31
/* 8010FDE8 0010CD48  38 81 00 14 */	addi r4, r1, 0x14
/* 8010FDEC 0010CD4C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8010FDF0 0010CD50  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 8010FDF4 0010CD54  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FDF8 0010CD58  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 8010FDFC 0010CD5C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8010FE00 0010CD60  48 12 A3 81 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 8010FE04 0010CD64  28 03 00 00 */	cmplwi r3, 0
/* 8010FE08 0010CD68  41 82 00 A8 */	beq lbl_8010FEB0
/* 8010FE0C 0010CD6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8010FE10 0010CD70  2C 00 00 01 */	cmpwi r0, 1
/* 8010FE14 0010CD74  40 82 01 08 */	bne lbl_8010FF1C
/* 8010FE18 0010CD78  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010FE1C 0010CD7C  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 8010FE20 0010CD80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8010FE24 0010CD84  40 82 00 F8 */	bne lbl_8010FF1C
/* 8010FE28 0010CD88  A0 1E 06 74 */	lhz r0, 0x674(r30)
/* 8010FE2C 0010CD8C  7F E3 FB 78 */	mr r3, r31
/* 8010FE30 0010CD90  38 81 00 08 */	addi r4, r1, 8
/* 8010FE34 0010CD94  B0 01 00 08 */	sth r0, 8(r1)
/* 8010FE38 0010CD98  4B F3 C7 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8010FE3C 0010CD9C  7C 64 1B 78 */	mr r4, r3
/* 8010FE40 0010CDA0  38 61 00 18 */	addi r3, r1, 0x18
/* 8010FE44 0010CDA4  4B F9 77 31 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8010FE48 0010CDA8  80 63 00 04 */	lwz r3, 4(r3)
/* 8010FE4C 0010CDAC  28 03 00 00 */	cmplwi r3, 0
/* 8010FE50 0010CDB0  41 82 00 CC */	beq lbl_8010FF1C
/* 8010FE54 0010CDB4  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8010FE58 0010CDB8  28 00 00 00 */	cmplwi r0, 0
/* 8010FE5C 0010CDBC  40 82 00 C0 */	bne lbl_8010FF1C
/* 8010FE60 0010CDC0  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8010FE64 0010CDC4  7F C4 F3 78 */	mr r4, r30
/* 8010FE68 0010CDC8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8010FE6C 0010CDCC  7F E5 FB 78 */	mr r5, r31
/* 8010FE70 0010CDD0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010FE74 0010CDD4  38 61 00 38 */	addi r3, r1, 0x38
/* 8010FE78 0010CDD8  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010FE7C 0010CDDC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8010FE80 0010CDE0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8010FE84 0010CDE4  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8010FE88 0010CDE8  4B FF C0 19 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010FE8C 0010CDEC  7F C3 F3 78 */	mr r3, r30
/* 8010FE90 0010CDF0  7F E4 FB 78 */	mr r4, r31
/* 8010FE94 0010CDF4  38 A1 00 44 */	addi r5, r1, 0x44
/* 8010FE98 0010CDF8  38 C1 00 38 */	addi r6, r1, 0x38
/* 8010FE9C 0010CDFC  48 0E 4F 35 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 8010FEA0 0010CE00  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8010FEA4 0010CE04  7C 00 00 34 */	cntlzw r0, r0
/* 8010FEA8 0010CE08  54 03 D9 7E */	srwi r3, r0, 5
/* 8010FEAC 0010CE0C  48 00 00 74 */	b lbl_8010FF20
lbl_8010FEB0:
/* 8010FEB0 0010CE10  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8010FEB4 0010CE14  2C 00 00 02 */	cmpwi r0, 2
/* 8010FEB8 0010CE18  41 82 00 64 */	beq lbl_8010FF1C
/* 8010FEBC 0010CE1C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8010FEC0 0010CE20  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 8010FEC4 0010CE24  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8010FEC8 0010CE28  40 82 00 54 */	bne lbl_8010FF1C
/* 8010FECC 0010CE2C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8010FED0 0010CE30  7F C4 F3 78 */	mr r4, r30
/* 8010FED4 0010CE34  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8010FED8 0010CE38  7F E5 FB 78 */	mr r5, r31
/* 8010FEDC 0010CE3C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8010FEE0 0010CE40  38 61 00 20 */	addi r3, r1, 0x20
/* 8010FEE4 0010CE44  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010FEE8 0010CE48  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8010FEEC 0010CE4C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8010FEF0 0010CE50  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8010FEF4 0010CE54  4B FF BF AD */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010FEF8 0010CE58  7F C3 F3 78 */	mr r3, r30
/* 8010FEFC 0010CE5C  7F E4 FB 78 */	mr r4, r31
/* 8010FF00 0010CE60  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8010FF04 0010CE64  38 C1 00 20 */	addi r6, r1, 0x20
/* 8010FF08 0010CE68  48 0E 4E C9 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 8010FF0C 0010CE6C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8010FF10 0010CE70  7C 00 00 34 */	cntlzw r0, r0
/* 8010FF14 0010CE74  54 03 D9 7E */	srwi r3, r0, 5
/* 8010FF18 0010CE78  48 00 00 08 */	b lbl_8010FF20
lbl_8010FF1C:
/* 8010FF1C 0010CE7C  38 60 00 00 */	li r3, 0
lbl_8010FF20:
/* 8010FF20 0010CE80  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8010FF24 0010CE84  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8010FF28 0010CE88  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8010FF2C 0010CE8C  7C 08 03 A6 */	mtlr r0
/* 8010FF30 0010CE90  38 21 00 60 */	addi r1, r1, 0x60
/* 8010FF34 0010CE94  4E 80 00 20 */	blr

.global InAttackPosition__8CWarWaspFR13CStateManagerf
InAttackPosition__8CWarWaspFR13CStateManagerf:
/* 8010FF38 0010CE98  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8010FF3C 0010CE9C  7C 08 02 A6 */	mflr r0
/* 8010FF40 0010CEA0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8010FF44 0010CEA4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8010FF48 0010CEA8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8010FF4C 0010CEAC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8010FF50 0010CEB0  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8010FF54 0010CEB4  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8010FF58 0010CEB8  93 81 00 B0 */	stw r28, 0xb0(r1)
/* 8010FF5C 0010CEBC  7C 7C 1B 78 */	mr r28, r3
/* 8010FF60 0010CEC0  7C 9D 23 78 */	mr r29, r4
/* 8010FF64 0010CEC4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8010FF68 0010CEC8  7F 84 E3 78 */	mr r4, r28
/* 8010FF6C 0010CECC  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8010FF70 0010CED0  7F A5 EB 78 */	mr r5, r29
/* 8010FF74 0010CED4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8010FF78 0010CED8  38 61 00 20 */	addi r3, r1, 0x20
/* 8010FF7C 0010CEDC  C0 22 95 14 */	lfs f1, lbl_805AB234@sda21(r2)
/* 8010FF80 0010CEE0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8010FF84 0010CEE4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8010FF88 0010CEE8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8010FF8C 0010CEEC  4B FF BF 15 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 8010FF90 0010CEF0  C3 E1 00 28 */	lfs f31, 0x28(r1)
/* 8010FF94 0010CEF4  3B E0 00 00 */	li r31, 0
/* 8010FF98 0010CEF8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8010FF9C 0010CEFC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8010FFA0 0010CF00  EC 9F 00 28 */	fsubs f4, f31, f0
/* 8010FFA4 0010CF04  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8010FFA8 0010CF08  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8010FFAC 0010CF0C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8010FFB0 0010CF10  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8010FFB4 0010CF14  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8010FFB8 0010CF18  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010FFBC 0010CF1C  C0 22 95 40 */	lfs f1, lbl_805AB260@sda21(r2)
/* 8010FFC0 0010CF20  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8010FFC4 0010CF24  EC 42 00 B2 */	fmuls f2, f2, f2
/* 8010FFC8 0010CF28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8010FFCC 0010CF2C  EC 60 00 32 */	fmuls f3, f0, f0
/* 8010FFD0 0010CF30  EC 84 01 32 */	fmuls f4, f4, f4
/* 8010FFD4 0010CF34  C0 1C 02 FC */	lfs f0, 0x2fc(r28)
/* 8010FFD8 0010CF38  EC 43 10 2A */	fadds f2, f3, f2
/* 8010FFDC 0010CF3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8010FFE0 0010CF40  EC 44 10 2A */	fadds f2, f4, f2
/* 8010FFE4 0010CF44  EC 00 00 32 */	fmuls f0, f0, f0
/* 8010FFE8 0010CF48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8010FFEC 0010CF4C  40 81 00 40 */	ble lbl_8011002C
/* 8010FFF0 0010CF50  C0 1C 03 00 */	lfs f0, 0x300(r28)
/* 8010FFF4 0010CF54  EC 01 00 2A */	fadds f0, f1, f0
/* 8010FFF8 0010CF58  EC 00 00 32 */	fmuls f0, f0, f0
/* 8010FFFC 0010CF5C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80110000 0010CF60  40 80 00 2C */	bge lbl_8011002C
/* 80110004 0010CF64  7F 83 E3 78 */	mr r3, r28
/* 80110008 0010CF68  7F A4 EB 78 */	mr r4, r29
/* 8011000C 0010CF6C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80110010 0010CF70  C0 22 95 64 */	lfs f1, lbl_805AB284@sda21(r2)
/* 80110014 0010CF74  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 80110018 0010CF78  7D 89 03 A6 */	mtctr r12
/* 8011001C 0010CF7C  4E 80 04 21 */	bctrl
/* 80110020 0010CF80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80110024 0010CF84  40 82 00 08 */	bne lbl_8011002C
/* 80110028 0010CF88  3B E0 00 01 */	li r31, 1
lbl_8011002C:
/* 8011002C 0010CF8C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80110030 0010CF90  7F FE FB 78 */	mr r30, r31
/* 80110034 0010CF94  41 82 01 14 */	beq lbl_80110148
/* 80110038 0010CF98  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 8011003C 0010CF9C  38 60 00 00 */	li r3, 0
/* 80110040 0010CFA0  C0 7C 00 60 */	lfs f3, 0x60(r28)
/* 80110044 0010CFA4  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80110048 0010CFA8  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 8011004C 0010CFAC  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 80110050 0010CFB0  FC 03 28 40 */	fcmpo cr0, f3, f5
/* 80110054 0010CFB4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80110058 0010CFB8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8011005C 0010CFBC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80110060 0010CFC0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80110064 0010CFC4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80110068 0010CFC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8011006C 0010CFCC  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80110070 0010CFD0  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80110074 0010CFD4  40 81 00 18 */	ble lbl_8011008C
/* 80110078 0010CFD8  C0 02 95 28 */	lfs f0, lbl_805AB248@sda21(r2)
/* 8011007C 0010CFDC  EC 00 F8 2A */	fadds f0, f0, f31
/* 80110080 0010CFE0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80110084 0010CFE4  40 80 00 08 */	bge lbl_8011008C
/* 80110088 0010CFE8  38 60 00 01 */	li r3, 1
lbl_8011008C:
/* 8011008C 0010CFEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80110090 0010CFF0  7C 7E 1B 78 */	mr r30, r3
/* 80110094 0010CFF4  41 82 00 B4 */	beq lbl_80110148
/* 80110098 0010CFF8  38 61 00 38 */	addi r3, r1, 0x38
/* 8011009C 0010CFFC  48 20 46 5D */	bl CanBeNormalized__9CVector3fCFv
/* 801100A0 0010D000  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801100A4 0010D004  41 82 00 A4 */	beq lbl_80110148
/* 801100A8 0010D008  80 AD 8A 14 */	lwz r5, lbl_805A75D4@sda21(r13)
.global lbl_801100AC
lbl_801100AC:
/* 801100AC 0010D00C  38 60 00 00 */	li r3, 0
/* 801100B0 0010D010  38 80 00 01 */	li r4, 1
/* 801100B4 0010D014  48 27 9E 41 */	bl __shl2i
/* 801100B8 0010D018  80 AD 8A 10 */	lwz r5, lbl_805A75D0@sda21(r13)
/* 801100BC 0010D01C  7C 9E 23 78 */	mr r30, r4
/* 801100C0 0010D020  7C 7F 1B 78 */	mr r31, r3
/* 801100C4 0010D024  38 60 00 00 */	li r3, 0
/* 801100C8 0010D028  38 80 00 01 */	li r4, 1
/* 801100CC 0010D02C  48 27 9E 29 */	bl __shl2i
/* 801100D0 0010D030  38 00 00 03 */	li r0, 3
/* 801100D4 0010D034  90 61 00 68 */	stw r3, 0x68(r1)
/* 801100D8 0010D038  38 61 00 38 */	addi r3, r1, 0x38
/* 801100DC 0010D03C  90 01 00 60 */	stw r0, 0x60(r1)
/* 801100E0 0010D040  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801100E4 0010D044  93 C1 00 74 */	stw r30, 0x74(r1)
/* 801100E8 0010D048  93 E1 00 70 */	stw r31, 0x70(r1)
/* 801100EC 0010D04C  90 01 00 78 */	stw r0, 0x78(r1)
/* 801100F0 0010D050  48 20 47 C9 */	bl Magnitude__9CVector3fCFv
/* 801100F4 0010D054  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 801100F8 0010D058  7F A4 EB 78 */	mr r4, r29
/* 801100FC 0010D05C  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 80110100 0010D060  38 61 00 80 */	addi r3, r1, 0x80
/* 80110104 0010D064  EC 80 08 24 */	fdivs f4, f0, f1
/* 80110108 0010D068  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8011010C 0010D06C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80110110 0010D070  38 A1 00 44 */	addi r5, r1, 0x44
/* 80110114 0010D074  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80110118 0010D078  38 E1 00 68 */	addi r7, r1, 0x68
/* 8011011C 0010D07C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80110120 0010D080  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80110124 0010D084  EC 04 00 32 */	fmuls f0, f4, f0
/* 80110128 0010D088  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8011012C 0010D08C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80110130 0010D090  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80110134 0010D094  4B F3 CE 65 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80110138 0010D098  88 01 00 A0 */	lbz r0, 0xa0(r1)
/* 8011013C 0010D09C  7C 00 00 34 */	cntlzw r0, r0
/* 80110140 0010D0A0  54 00 D9 7E */	srwi r0, r0, 5
/* 80110144 0010D0A4  7C 1E 03 78 */	mr r30, r0
lbl_80110148:
/* 80110148 0010D0A8  7F C3 F3 78 */	mr r3, r30
/* 8011014C 0010D0AC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80110150 0010D0B0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80110154 0010D0B4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80110158 0010D0B8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8011015C 0010D0BC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80110160 0010D0C0  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 80110164 0010D0C4  83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 80110168 0010D0C8  7C 08 03 A6 */	mtlr r0
/* 8011016C 0010D0CC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80110170 0010D0D0  4E 80 00 20 */	blr

.global HearShot__8CWarWaspFR13CStateManagerf
HearShot__8CWarWaspFR13CStateManagerf:
/* 80110174 0010D0D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80110178 0010D0D8  7C 08 02 A6 */	mflr r0
/* 8011017C 0010D0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80110180 0010D0E0  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 80110184 0010D0E4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80110188 0010D0E8  40 82 00 10 */	bne lbl_80110198
/* 8011018C 0010D0EC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80110190 0010D0F0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80110194 0010D0F4  41 82 00 0C */	beq lbl_801101A0
lbl_80110198:
/* 80110198 0010D0F8  38 60 00 01 */	li r3, 1
/* 8011019C 0010D0FC  48 00 00 48 */	b lbl_801101E4
lbl_801101A0:
/* 801101A0 0010D100  A0 03 06 74 */	lhz r0, 0x674(r3)
/* 801101A4 0010D104  7C 83 23 78 */	mr r3, r4
/* 801101A8 0010D108  38 81 00 08 */	addi r4, r1, 8
/* 801101AC 0010D10C  B0 01 00 08 */	sth r0, 8(r1)
/* 801101B0 0010D110  4B F3 C3 F5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801101B4 0010D114  7C 64 1B 78 */	mr r4, r3
/* 801101B8 0010D118  38 61 00 0C */	addi r3, r1, 0xc
/* 801101BC 0010D11C  4B F9 73 B9 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801101C0 0010D120  80 63 00 04 */	lwz r3, 4(r3)
/* 801101C4 0010D124  28 03 00 00 */	cmplwi r3, 0
/* 801101C8 0010D128  41 82 00 18 */	beq lbl_801101E0
/* 801101CC 0010D12C  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 801101D0 0010D130  7C 03 00 D0 */	neg r0, r3
/* 801101D4 0010D134  7C 00 1B 78 */	or r0, r0, r3
/* 801101D8 0010D138  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801101DC 0010D13C  48 00 00 08 */	b lbl_801101E4
lbl_801101E0:
/* 801101E0 0010D140  38 60 00 00 */	li r3, 0
lbl_801101E4:
/* 801101E4 0010D144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801101E8 0010D148  7C 08 03 A6 */	mtlr r0
/* 801101EC 0010D14C  38 21 00 20 */	addi r1, r1, 0x20
/* 801101F0 0010D150  4E 80 00 20 */	blr

.global PathShagged__8CWarWaspFR13CStateManagerf
PathShagged__8CWarWaspFR13CStateManagerf:
/* 801101F4 0010D154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801101F8 0010D158  7C 08 02 A6 */	mflr r0
/* 801101FC 0010D15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110200 0010D160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80110204 0010D164  7C 7F 1B 78 */	mr r31, r3
/* 80110208 0010D168  81 83 00 00 */	lwz r12, 0(r3)
/* 8011020C 0010D16C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80110210 0010D170  7D 89 03 A6 */	mtctr r12
/* 80110214 0010D174  4E 80 04 21 */	bctrl
/* 80110218 0010D178  28 03 00 00 */	cmplwi r3, 0
/* 8011021C 0010D17C  41 82 00 2C */	beq lbl_80110248
/* 80110220 0010D180  7F E3 FB 78 */	mr r3, r31
/* 80110224 0010D184  81 9F 00 00 */	lwz r12, 0(r31)
/* 80110228 0010D188  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8011022C 0010D18C  7D 89 03 A6 */	mtctr r12
/* 80110230 0010D190  4E 80 04 21 */	bctrl
/* 80110234 0010D194  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 80110238 0010D198  7C 03 00 D0 */	neg r0, r3
/* 8011023C 0010D19C  7C 00 1B 78 */	or r0, r0, r3
/* 80110240 0010D1A0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80110244 0010D1A4  48 00 00 08 */	b lbl_8011024C
lbl_80110248:
/* 80110248 0010D1A8  38 60 00 00 */	li r3, 0
lbl_8011024C:
/* 8011024C 0010D1AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110250 0010D1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80110254 0010D1B4  7C 08 03 A6 */	mtlr r0
/* 80110258 0010D1B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011025C 0010D1BC  4E 80 00 20 */	blr

.global GetOrigin__8CWarWaspCFv
GetOrigin__8CWarWaspCFv:
/* 80110260 0010D1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80110264 0010D1C4  7C 08 02 A6 */	mflr r0
/* 80110268 0010D1C8  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 8011026C 0010D1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80110270 0010D1D0  38 00 00 00 */	li r0, 0
/* 80110274 0010D1D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80110278 0010D1D8  7C 7F 1B 78 */	mr r31, r3
/* 8011027C 0010D1DC  C0 04 06 B0 */	lfs f0, 0x6b0(r4)
/* 80110280 0010D1E0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80110284 0010D1E4  40 82 00 1C */	bne lbl_801102A0
/* 80110288 0010D1E8  C0 04 06 B4 */	lfs f0, 0x6b4(r4)
/* 8011028C 0010D1EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80110290 0010D1F0  40 82 00 10 */	bne lbl_801102A0
/* 80110294 0010D1F4  C0 04 06 B8 */	lfs f0, 0x6b8(r4)
/* 80110298 0010D1F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8011029C 0010D1FC  41 82 00 08 */	beq lbl_801102A4
lbl_801102A0:
/* 801102A0 0010D200  38 00 00 01 */	li r0, 1
lbl_801102A4:
/* 801102A4 0010D204  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801102A8 0010D208  40 82 00 2C */	bne lbl_801102D4
/* 801102AC 0010D20C  7C E6 3B 78 */	mr r6, r7
/* 801102B0 0010D210  38 61 00 08 */	addi r3, r1, 8
/* 801102B4 0010D214  4B FF B8 2D */	bl GetCloseInPos__8CWarWaspCFR13CStateManagerRC9CVector3f
/* 801102B8 0010D218  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801102BC 0010D21C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801102C0 0010D220  C0 01 00 08 */	lfs f0, 8(r1)
/* 801102C4 0010D224  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801102C8 0010D228  D0 3F 00 04 */	stfs f1, 4(r31)
/* 801102CC 0010D22C  D0 5F 00 08 */	stfs f2, 8(r31)
/* 801102D0 0010D230  48 00 00 1C */	b lbl_801102EC
lbl_801102D4:
/* 801102D4 0010D234  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801102D8 0010D238  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801102DC 0010D23C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801102E0 0010D240  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801102E4 0010D244  D0 3F 00 04 */	stfs f1, 4(r31)
/* 801102E8 0010D248  D0 5F 00 08 */	stfs f2, 8(r31)
lbl_801102EC:
/* 801102EC 0010D24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801102F0 0010D250  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801102F4 0010D254  7C 08 03 A6 */	mtlr r0
/* 801102F8 0010D258  38 21 00 20 */	addi r1, r1, 0x20
/* 801102FC 0010D25C  4E 80 00 20 */	blr

.global Listen__8CWarWaspFRC9CVector3f16EListenNoiseType
Listen__8CWarWaspFRC9CVector3f16EListenNoiseType:
/* 80110300 0010D260  2C 05 00 03 */	cmpwi r5, 3
/* 80110304 0010D264  40 80 00 68 */	bge lbl_8011036C
/* 80110308 0010D268  2C 05 00 00 */	cmpwi r5, 0
/* 8011030C 0010D26C  40 80 00 08 */	bge lbl_80110314
/* 80110310 0010D270  48 00 00 5C */	b lbl_8011036C
lbl_80110314:
/* 80110314 0010D274  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80110318 0010D278  C0 04 00 04 */	lfs f0, 4(r4)
/* 8011031C 0010D27C  C0 43 03 BC */	lfs f2, 0x3bc(r3)
/* 80110320 0010D280  EC A1 00 28 */	fsubs f5, f1, f0
/* 80110324 0010D284  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 80110328 0010D288  C0 24 00 00 */	lfs f1, 0(r4)
/* 8011032C 0010D28C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80110330 0010D290  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80110334 0010D294  C0 44 00 08 */	lfs f2, 8(r4)
/* 80110338 0010D298  EC 84 08 28 */	fsubs f4, f4, f1
/* 8011033C 0010D29C  EC 25 01 72 */	fmuls f1, f5, f5
/* 80110340 0010D2A0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80110344 0010D2A4  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80110348 0010D2A8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8011034C 0010D2AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110350 0010D2B0  40 80 00 1C */	bge lbl_8011036C
/* 80110354 0010D2B4  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 80110358 0010D2B8  38 80 00 01 */	li r4, 1
/* 8011035C 0010D2BC  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80110360 0010D2C0  98 03 07 2E */	stb r0, 0x72e(r3)
/* 80110364 0010D2C4  38 60 00 01 */	li r3, 1
/* 80110368 0010D2C8  4E 80 00 20 */	blr
lbl_8011036C:
/* 8011036C 0010D2CC  38 60 00 00 */	li r3, 0
/* 80110370 0010D2D0  4E 80 00 20 */	blr

.global DoUserAnimEvent__8CWarWaspFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__8CWarWaspFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80110374 0010D2D4  94 21 F5 E0 */	stwu r1, -0xa20(r1)
/* 80110378 0010D2D8  7C 08 02 A6 */	mflr r0
/* 8011037C 0010D2DC  90 01 0A 24 */	stw r0, 0xa24(r1)
/* 80110380 0010D2E0  DB E1 0A 10 */	stfd f31, 0xa10(r1)
/* 80110384 0010D2E4  F3 E1 0A 18 */	psq_st f31, -1512(r1), 0, qr0
/* 80110388 0010D2E8  BF 61 09 FC */	stmw r27, 0x9fc(r1)
/* 8011038C 0010D2EC  7C DF 33 78 */	mr r31, r6
/* 80110390 0010D2F0  FF E0 08 90 */	fmr f31, f1
/* 80110394 0010D2F4  28 1F 00 11 */	cmplwi r31, 0x11
/* 80110398 0010D2F8  7C 7C 1B 78 */	mr r28, r3
/* 8011039C 0010D2FC  7C 9D 23 78 */	mr r29, r4
/* 801103A0 0010D300  7C BE 2B 78 */	mr r30, r5
/* 801103A4 0010D304  38 A0 00 00 */	li r5, 0
/* 801103A8 0010D308  41 81 03 68 */	bgt lbl_80110710
/* 801103AC 0010D30C  3C 80 80 3E */	lis r4, lbl_803E025C@ha
/* 801103B0 0010D310  57 E0 10 3A */	slwi r0, r31, 2
/* 801103B4 0010D314  38 84 02 5C */	addi r4, r4, lbl_803E025C@l
/* 801103B8 0010D318  7C 04 00 2E */	lwzx r0, r4, r0
/* 801103BC 0010D31C  7C 09 03 A6 */	mtctr r0
/* 801103C0 0010D320  4E 80 04 20 */	bctr
.global lbl_801103C4
lbl_801103C4:
/* 801103C4 0010D324  7F 84 E3 78 */	mr r4, r28
/* 801103C8 0010D328  38 61 01 30 */	addi r3, r1, 0x130
/* 801103CC 0010D32C  38 BE 00 3C */	addi r5, r30, 0x3c
/* 801103D0 0010D330  4B F6 85 A9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801103D4 0010D334  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 801103D8 0010D338  38 81 01 30 */	addi r4, r1, 0x130
/* 801103DC 0010D33C  48 20 27 99 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801103E0 0010D340  C0 22 95 48 */	lfs f1, lbl_805AB268@sda21(r2)
/* 801103E4 0010D344  7F 84 E3 78 */	mr r4, r28
/* 801103E8 0010D348  7F A5 EB 78 */	mr r5, r29
/* 801103EC 0010D34C  38 61 00 64 */	addi r3, r1, 0x64
/* 801103F0 0010D350  4B FF BA B1 */	bl GetProjectileAimPos__8CWarWaspFR13CStateManagerf
/* 801103F4 0010D354  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 801103F8 0010D358  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 801103FC 0010D35C  C0 81 00 6C */	lfs f4, 0x6c(r1)
/* 80110400 0010D360  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 80110404 0010D364  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 80110408 0010D368  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 8011040C 0010D36C  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 80110410 0010D370  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 80110414 0010D374  2C 00 00 01 */	cmpwi r0, 1
/* 80110418 0010D378  41 82 01 9C */	beq lbl_801105B4
/* 8011041C 0010D37C  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 80110420 0010D380  38 61 00 88 */	addi r3, r1, 0x88
/* 80110424 0010D384  C0 21 01 DC */	lfs f1, 0x1dc(r1)
/* 80110428 0010D388  C0 41 01 CC */	lfs f2, 0x1cc(r1)
/* 8011042C 0010D38C  EC 04 00 28 */	fsubs f0, f4, f0
/* 80110430 0010D390  EC 23 08 28 */	fsubs f1, f3, f1
/* 80110434 0010D394  EC 45 10 28 */	fsubs f2, f5, f2
/* 80110438 0010D398  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8011043C 0010D39C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80110440 0010D3A0  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80110444 0010D3A4  48 20 42 B5 */	bl CanBeNormalized__9CVector3fCFv
/* 80110448 0010D3A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011044C 0010D3AC  41 82 01 68 */	beq lbl_801105B4
/* 80110450 0010D3B0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80110454 0010D3B4  38 80 00 00 */	li r4, 0
/* 80110458 0010D3B8  90 81 01 F0 */	stw r4, 0x1f0(r1)
/* 8011045C 0010D3BC  38 60 00 00 */	li r3, 0
/* 80110460 0010D3C0  80 AD 8A 0C */	lwz r5, lbl_805A75CC@sda21(r13)
/* 80110464 0010D3C4  38 80 00 01 */	li r4, 1
/* 80110468 0010D3C8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8011046C 0010D3CC  48 27 9A 89 */	bl __shl2i
/* 80110470 0010D3D0  38 A0 00 01 */	li r5, 1
/* 80110474 0010D3D4  38 00 00 00 */	li r0, 0
/* 80110478 0010D3D8  90 81 00 BC */	stw r4, 0xbc(r1)
/* 8011047C 0010D3DC  38 81 00 88 */	addi r4, r1, 0x88
/* 80110480 0010D3E0  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 80110484 0010D3E4  38 61 00 58 */	addi r3, r1, 0x58
/* 80110488 0010D3E8  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 8011048C 0010D3EC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80110490 0010D3F0  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80110494 0010D3F4  90 A1 00 C8 */	stw r5, 0xc8(r1)
/* 80110498 0010D3F8  48 20 43 B9 */	bl AsNormalized__9CVector3fCFv
/* 8011049C 0010D3FC  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801104A0 0010D400  38 61 00 88 */	addi r3, r1, 0x88
/* 801104A4 0010D404  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801104A8 0010D408  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801104AC 0010D40C  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801104B0 0010D410  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801104B4 0010D414  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801104B8 0010D418  48 20 44 01 */	bl Magnitude__9CVector3fCFv
/* 801104BC 0010D41C  C0 61 01 CC */	lfs f3, 0x1cc(r1)
/* 801104C0 0010D420  7F A4 EB 78 */	mr r4, r29
/* 801104C4 0010D424  C0 41 01 DC */	lfs f2, 0x1dc(r1)
/* 801104C8 0010D428  38 61 01 00 */	addi r3, r1, 0x100
/* 801104CC 0010D42C  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 801104D0 0010D430  38 A1 00 18 */	addi r5, r1, 0x18
/* 801104D4 0010D434  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801104D8 0010D438  38 C1 00 4C */	addi r6, r1, 0x4c
/* 801104DC 0010D43C  38 E1 00 7C */	addi r7, r1, 0x7c
/* 801104E0 0010D440  39 01 00 B8 */	addi r8, r1, 0xb8
/* 801104E4 0010D444  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801104E8 0010D448  39 21 01 F0 */	addi r9, r1, 0x1f0
/* 801104EC 0010D44C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801104F0 0010D450  4B F3 CA D5 */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 801104F4 0010D454  88 81 01 20 */	lbz r4, 0x120(r1)
/* 801104F8 0010D458  C0 E1 01 00 */	lfs f7, 0x100(r1)
/* 801104FC 0010D45C  C0 C1 01 04 */	lfs f6, 0x104(r1)
/* 80110500 0010D460  28 04 00 00 */	cmplwi r4, 0
/* 80110504 0010D464  C0 A1 01 08 */	lfs f5, 0x108(r1)
/* 80110508 0010D468  C0 81 01 0C */	lfs f4, 0x10c(r1)
/* 8011050C 0010D46C  C0 61 01 10 */	lfs f3, 0x110(r1)
/* 80110510 0010D470  C0 41 01 14 */	lfs f2, 0x114(r1)
/* 80110514 0010D474  C0 21 01 18 */	lfs f1, 0x118(r1)
/* 80110518 0010D478  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8011051C 0010D47C  80 01 01 28 */	lwz r0, 0x128(r1)
/* 80110520 0010D480  80 61 01 2C */	lwz r3, 0x12c(r1)
/* 80110524 0010D484  D0 E1 01 90 */	stfs f7, 0x190(r1)
/* 80110528 0010D488  D0 C1 01 94 */	stfs f6, 0x194(r1)
/* 8011052C 0010D48C  D0 A1 01 98 */	stfs f5, 0x198(r1)
/* 80110530 0010D490  D0 81 01 9C */	stfs f4, 0x19c(r1)
/* 80110534 0010D494  D0 61 01 A0 */	stfs f3, 0x1a0(r1)
/* 80110538 0010D498  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 8011053C 0010D49C  D0 21 01 A8 */	stfs f1, 0x1a8(r1)
/* 80110540 0010D4A0  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80110544 0010D4A4  98 81 01 B0 */	stb r4, 0x1b0(r1)
/* 80110548 0010D4A8  90 61 01 BC */	stw r3, 0x1bc(r1)
/* 8011054C 0010D4AC  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 80110550 0010D4B0  41 82 00 10 */	beq lbl_80110560
/* 80110554 0010D4B4  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 80110558 0010D4B8  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 8011055C 0010D4BC  D0 81 00 9C */	stfs f4, 0x9c(r1)
lbl_80110560:
/* 80110560 0010D4C0  80 A1 01 F0 */	lwz r5, 0x1f0(r1)
/* 80110564 0010D4C4  38 60 00 00 */	li r3, 0
/* 80110568 0010D4C8  2C 05 00 00 */	cmpwi r5, 0
/* 8011056C 0010D4CC  40 81 00 40 */	ble lbl_801105AC
/* 80110570 0010D4D0  2C 05 00 08 */	cmpwi r5, 8
/* 80110574 0010D4D4  38 85 FF F8 */	addi r4, r5, -8
/* 80110578 0010D4D8  40 81 00 20 */	ble lbl_80110598
/* 8011057C 0010D4DC  38 04 00 07 */	addi r0, r4, 7
/* 80110580 0010D4E0  54 00 E8 FE */	srwi r0, r0, 3
/* 80110584 0010D4E4  7C 09 03 A6 */	mtctr r0
/* 80110588 0010D4E8  2C 04 00 00 */	cmpwi r4, 0
/* 8011058C 0010D4EC  40 81 00 0C */	ble lbl_80110598
lbl_80110590:
/* 80110590 0010D4F0  38 63 00 08 */	addi r3, r3, 8
/* 80110594 0010D4F4  42 00 FF FC */	bdnz lbl_80110590
lbl_80110598:
/* 80110598 0010D4F8  7C 03 28 50 */	subf r0, r3, r5
/* 8011059C 0010D4FC  7C 09 03 A6 */	mtctr r0
/* 801105A0 0010D500  7C 03 28 00 */	cmpw r3, r5
/* 801105A4 0010D504  40 80 00 08 */	bge lbl_801105AC
lbl_801105A8:
/* 801105A8 0010D508  42 00 00 00 */	bdnz lbl_801105A8
lbl_801105AC:
/* 801105AC 0010D50C  38 00 00 00 */	li r0, 0
/* 801105B0 0010D510  90 01 01 F0 */	stw r0, 0x1f0(r1)
lbl_801105B4:
/* 801105B4 0010D514  83 7D 08 4C */	lwz r27, 0x84c(r29)
/* 801105B8 0010D518  7F 83 E3 78 */	mr r3, r28
/* 801105BC 0010D51C  C0 41 01 CC */	lfs f2, 0x1cc(r1)
/* 801105C0 0010D520  C0 21 01 DC */	lfs f1, 0x1dc(r1)
/* 801105C4 0010D524  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 801105C8 0010D528  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801105CC 0010D52C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801105D0 0010D530  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801105D4 0010D534  81 9C 00 00 */	lwz r12, 0(r28)
/* 801105D8 0010D538  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801105DC 0010D53C  7D 89 03 A6 */	mtctr r12
/* 801105E0 0010D540  4E 80 04 21 */	bctrl
/* 801105E4 0010D544  FC 20 F8 90 */	fmr f1, f31
/* 801105E8 0010D548  7C 64 1B 78 */	mr r4, r3
/* 801105EC 0010D54C  7F 67 DB 78 */	mr r7, r27
/* 801105F0 0010D550  38 61 00 40 */	addi r3, r1, 0x40
/* 801105F4 0010D554  38 A1 00 34 */	addi r5, r1, 0x34
/* 801105F8 0010D558  38 C1 00 94 */	addi r6, r1, 0x94
/* 801105FC 0010D55C  39 00 00 01 */	li r8, 1
/* 80110600 0010D560  48 10 B8 ED */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 80110604 0010D564  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 80110608 0010D568  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 8011060C 0010D56C  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 80110610 0010D570  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 80110614 0010D574  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 80110618 0010D578  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8011061C 0010D57C  C0 41 01 CC */	lfs f2, 0x1cc(r1)
/* 80110620 0010D580  38 81 00 28 */	addi r4, r1, 0x28
/* 80110624 0010D584  C0 21 01 DC */	lfs f1, 0x1dc(r1)
/* 80110628 0010D588  38 A1 00 70 */	addi r5, r1, 0x70
/* 8011062C 0010D58C  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 80110630 0010D590  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80110634 0010D594  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80110638 0010D598  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 8011063C 0010D59C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80110640 0010D5A0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80110644 0010D5A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80110648 0010D5A8  48 20 34 C9 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8011064C 0010D5AC  38 61 01 60 */	addi r3, r1, 0x160
/* 80110650 0010D5B0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80110654 0010D5B4  48 20 25 21 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80110658 0010D5B8  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 8011065C 0010D5BC  39 40 00 01 */	li r10, 1
/* 80110660 0010D5C0  38 01 00 1C */	addi r0, r1, 0x1c
/* 80110664 0010D5C4  7F 83 E3 78 */	mr r3, r28
/* 80110668 0010D5C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8011066C 0010D5CC  7F A5 EB 78 */	mr r5, r29
/* 80110670 0010D5D0  38 81 01 60 */	addi r4, r1, 0x160
/* 80110674 0010D5D4  39 3C 07 1C */	addi r9, r28, 0x71c
/* 80110678 0010D5D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8011067C 0010D5DC  38 C0 00 04 */	li r6, 4
/* 80110680 0010D5E0  38 E0 00 00 */	li r7, 0
/* 80110684 0010D5E4  39 00 00 00 */	li r8, 0
/* 80110688 0010D5E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8011068C 0010D5EC  91 41 00 08 */	stw r10, 8(r1)
/* 80110690 0010D5F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80110694 0010D5F4  A1 5C 07 2C */	lhz r10, 0x72c(r28)
/* 80110698 0010D5F8  4B F6 73 61 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 8011069C 0010D5FC  38 A0 00 01 */	li r5, 1
/* 801106A0 0010D600  48 00 00 70 */	b lbl_80110710
.global lbl_801106A4
lbl_801106A4:
/* 801106A4 0010D604  7F A5 EB 78 */	mr r5, r29
/* 801106A8 0010D608  38 80 00 11 */	li r4, 0x11
/* 801106AC 0010D60C  38 C0 FF FF */	li r6, -1
/* 801106B0 0010D610  4B F4 0A 11 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801106B4 0010D614  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801106B8 0010D618  7F A3 EB 78 */	mr r3, r29
/* 801106BC 0010D61C  38 81 00 14 */	addi r4, r1, 0x14
/* 801106C0 0010D620  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801106C4 0010D624  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801106C8 0010D628  4B F3 BB A5 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801106CC 0010D62C  38 A0 00 01 */	li r5, 1
/* 801106D0 0010D630  48 00 00 40 */	b lbl_80110710
.global lbl_801106D4
lbl_801106D4:
/* 801106D4 0010D634  7F A6 EB 78 */	mr r6, r29
/* 801106D8 0010D638  38 80 00 21 */	li r4, 0x21
/* 801106DC 0010D63C  38 A0 00 13 */	li r5, 0x13
/* 801106E0 0010D640  4B F4 3B D5 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801106E4 0010D644  38 A0 00 01 */	li r5, 1
/* 801106E8 0010D648  48 00 00 28 */	b lbl_80110710
.global lbl_801106EC
lbl_801106EC:
/* 801106EC 0010D64C  88 1C 07 2E */	lbz r0, 0x72e(r28)
/* 801106F0 0010D650  38 60 00 01 */	li r3, 1
/* 801106F4 0010D654  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801106F8 0010D658  98 1C 07 2E */	stb r0, 0x72e(r28)
/* 801106FC 0010D65C  48 00 00 14 */	b lbl_80110710
.global lbl_80110700
lbl_80110700:
/* 80110700 0010D660  88 1C 07 2E */	lbz r0, 0x72e(r28)
/* 80110704 0010D664  38 60 00 00 */	li r3, 0
/* 80110708 0010D668  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8011070C 0010D66C  98 1C 07 2E */	stb r0, 0x72e(r28)
.global lbl_80110710
lbl_80110710:
/* 80110710 0010D670  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80110714 0010D674  40 82 00 1C */	bne lbl_80110730
/* 80110718 0010D678  FC 20 F8 90 */	fmr f1, f31
/* 8011071C 0010D67C  7F 83 E3 78 */	mr r3, r28
/* 80110720 0010D680  7F A4 EB 78 */	mr r4, r29
/* 80110724 0010D684  7F C5 F3 78 */	mr r5, r30
/* 80110728 0010D688  7F E6 FB 78 */	mr r6, r31
/* 8011072C 0010D68C  4B F6 87 85 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80110730:
/* 80110730 0010D690  E3 E1 0A 18 */	psq_l f31, -1512(r1), 0, qr0
/* 80110734 0010D694  CB E1 0A 10 */	lfd f31, 0xa10(r1)
/* 80110738 0010D698  BB 61 09 FC */	lmw r27, 0x9fc(r1)
/* 8011073C 0010D69C  80 01 0A 24 */	lwz r0, 0xa24(r1)
/* 80110740 0010D6A0  7C 08 03 A6 */	mtlr r0
/* 80110744 0010D6A4  38 21 0A 20 */	addi r1, r1, 0xa20
/* 80110748 0010D6A8  4E 80 00 20 */	blr

.global GetCollisionPrimitive__8CWarWaspCFv
GetCollisionPrimitive__8CWarWaspCFv:
/* 8011074C 0010D6AC  38 63 05 70 */	addi r3, r3, 0x570
/* 80110750 0010D6B0  4E 80 00 20 */	blr

.global GetTouchBounds__8CWarWaspCFv
GetTouchBounds__8CWarWaspCFv:
/* 80110754 0010D6B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80110758 0010D6B8  7C 08 02 A6 */	mflr r0
/* 8011075C 0010D6BC  7C 85 23 78 */	mr r5, r4
/* 80110760 0010D6C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80110764 0010D6C4  38 85 05 70 */	addi r4, r5, 0x570
/* 80110768 0010D6C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011076C 0010D6CC  7C 7F 1B 78 */	mr r31, r3
/* 80110770 0010D6D0  38 61 00 08 */	addi r3, r1, 8
/* 80110774 0010D6D4  81 85 05 70 */	lwz r12, 0x570(r5)
/* 80110778 0010D6D8  38 A5 00 34 */	addi r5, r5, 0x34
/* 8011077C 0010D6DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80110780 0010D6E0  7D 89 03 A6 */	mtctr r12
/* 80110784 0010D6E4  4E 80 04 21 */	bctrl
/* 80110788 0010D6E8  38 00 00 01 */	li r0, 1
/* 8011078C 0010D6EC  28 1F 00 00 */	cmplwi r31, 0
/* 80110790 0010D6F0  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80110794 0010D6F4  41 82 00 34 */	beq lbl_801107C8
/* 80110798 0010D6F8  C0 01 00 08 */	lfs f0, 8(r1)
/* 8011079C 0010D6FC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801107A0 0010D700  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801107A4 0010D704  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801107A8 0010D708  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801107AC 0010D70C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801107B0 0010D710  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801107B4 0010D714  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801107B8 0010D718  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801107BC 0010D71C  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801107C0 0010D720  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801107C4 0010D724  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_801107C8:
/* 801107C8 0010D728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801107CC 0010D72C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801107D0 0010D730  7C 08 03 A6 */	mtlr r0
/* 801107D4 0010D734  38 21 00 30 */	addi r1, r1, 0x30
/* 801107D8 0010D738  4E 80 00 20 */	blr

.global ProjectileInfo__8CWarWaspFv
ProjectileInfo__8CWarWaspFv:
/* 801107DC 0010D73C  38 63 06 D4 */	addi r3, r3, 0x6d4
/* 801107E0 0010D740  4E 80 00 20 */	blr

.global Think__8CWarWaspFfR13CStateManager
Think__8CWarWaspFfR13CStateManager:
/* 801107E4 0010D744  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801107E8 0010D748  7C 08 02 A6 */	mflr r0
/* 801107EC 0010D74C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801107F0 0010D750  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801107F4 0010D754  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801107F8 0010D758  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801107FC 0010D75C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80110800 0010D760  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80110804 0010D764  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80110808 0010D768  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8011080C 0010D76C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80110810 0010D770  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80110814 0010D774  FF A0 08 90 */	fmr f29, f1
/* 80110818 0010D778  7C 7E 1B 78 */	mr r30, r3
/* 8011081C 0010D77C  7C 9F 23 78 */	mr r31, r4
/* 80110820 0010D780  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80110824 0010D784  41 82 00 A8 */	beq lbl_801108CC
/* 80110828 0010D788  C0 3E 07 00 */	lfs f1, 0x700(r30)
/* 8011082C 0010D78C  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 80110830 0010D790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80110834 0010D794  40 81 00 7C */	ble lbl_801108B0
/* 80110838 0010D798  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8011083C 0010D79C  C0 22 94 DC */	lfs f1, lbl_805AB1FC@sda21(r2)
/* 80110840 0010D7A0  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 80110844 0010D7A4  2C 00 00 00 */	cmpwi r0, 0
/* 80110848 0010D7A8  40 82 00 5C */	bne lbl_801108A4
/* 8011084C 0010D7AC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80110850 0010D7B0  38 61 00 08 */	addi r3, r1, 8
/* 80110854 0010D7B4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80110858 0010D7B8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8011085C 0010D7BC  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80110860 0010D7C0  EC 23 08 28 */	fsubs f1, f3, f1
/* 80110864 0010D7C4  C3 C4 00 48 */	lfs f30, 0x48(r4)
/* 80110868 0010D7C8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8011086C 0010D7CC  C3 E4 00 38 */	lfs f31, 0x38(r4)
/* 80110870 0010D7D0  48 20 39 91 */	bl __ct__9CVector2fFff
/* 80110874 0010D7D4  FC 20 F8 90 */	fmr f1, f31
/* 80110878 0010D7D8  38 61 00 10 */	addi r3, r1, 0x10
/* 8011087C 0010D7DC  FC 40 F0 90 */	fmr f2, f30
/* 80110880 0010D7E0  48 20 39 81 */	bl __ct__9CVector2fFff
/* 80110884 0010D7E4  38 61 00 10 */	addi r3, r1, 0x10
/* 80110888 0010D7E8  38 81 00 08 */	addi r4, r1, 8
/* 8011088C 0010D7EC  48 20 37 39 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 80110890 0010D7F0  C0 02 95 30 */	lfs f0, lbl_805AB250@sda21(r2)
/* 80110894 0010D7F4  C0 42 95 68 */	lfs f2, lbl_805AB288@sda21(r2)
/* 80110898 0010D7F8  EC 21 00 24 */	fdivs f1, f1, f0
/* 8011089C 0010D7FC  C0 02 94 DC */	lfs f0, lbl_805AB1FC@sda21(r2)
/* 801108A0 0010D800  EC 22 00 7C */	fnmsubs f1, f2, f1, f0
lbl_801108A4:
/* 801108A4 0010D804  C0 1E 07 00 */	lfs f0, 0x700(r30)
/* 801108A8 0010D808  EC 1D 00 7C */	fnmsubs f0, f29, f1, f0
/* 801108AC 0010D80C  D0 1E 07 00 */	stfs f0, 0x700(r30)
lbl_801108B0:
/* 801108B0 0010D810  7F C3 F3 78 */	mr r3, r30
/* 801108B4 0010D814  7F E4 FB 78 */	mr r4, r31
/* 801108B8 0010D818  4B FF B6 85 */	bl ApplyDamage__8CWarWaspFR13CStateManager
/* 801108BC 0010D81C  FC 20 E8 90 */	fmr f1, f29
/* 801108C0 0010D820  7F C3 F3 78 */	mr r3, r30
/* 801108C4 0010D824  7F E4 FB 78 */	mr r4, r31
/* 801108C8 0010D828  4B F6 92 51 */	bl Think__10CPatternedFfR13CStateManager
lbl_801108CC:
/* 801108CC 0010D82C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801108D0 0010D830  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801108D4 0010D834  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801108D8 0010D838  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801108DC 0010D83C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 801108E0 0010D840  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 801108E4 0010D844  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801108E8 0010D848  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801108EC 0010D84C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801108F0 0010D850  7C 08 03 A6 */	mtlr r0
/* 801108F4 0010D854  38 21 00 50 */	addi r1, r1, 0x50
/* 801108F8 0010D858  4E 80 00 20 */	blr

.global Death__8CWarWaspFRC9CVector3fR13CStateManager
Death__8CWarWaspFRC9CVector3fR13CStateManager:
/* 801108FC 0010D85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110900 0010D860  7C 08 02 A6 */	mflr r0
/* 80110904 0010D864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110908 0010D868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011090C 0010D86C  7C 9F 23 78 */	mr r31, r4
/* 80110910 0010D870  93 C1 00 08 */	stw r30, 8(r1)
/* 80110914 0010D874  7C 7E 1B 78 */	mr r30, r3
/* 80110918 0010D878  4B F6 AA 8D */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8011091C 0010D87C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80110920 0010D880  38 60 00 00 */	li r3, 0
/* 80110924 0010D884  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80110928 0010D888  7F C3 F3 78 */	mr r3, r30
/* 8011092C 0010D88C  98 1E 03 28 */	stb r0, 0x328(r30)
/* 80110930 0010D890  7F E5 FB 78 */	mr r5, r31
/* 80110934 0010D894  38 80 00 25 */	li r4, 0x25
/* 80110938 0010D898  4B F4 3A 19 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8011093C 0010D89C  7F C3 F3 78 */	mr r3, r30
/* 80110940 0010D8A0  7F E4 FB 78 */	mr r4, r31
/* 80110944 0010D8A4  4B FF CB 0D */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 80110948 0010D8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011094C 0010D8AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80110950 0010D8B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80110954 0010D8B4  7C 08 03 A6 */	mtlr r0
/* 80110958 0010D8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011095C 0010D8BC  4E 80 00 20 */	blr

.global AcceptScriptMsg__8CWarWaspF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__8CWarWaspF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80110960 0010D8C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80110964 0010D8C4  7C 08 02 A6 */	mflr r0
/* 80110968 0010D8C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011096C 0010D8CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80110970 0010D8D0  7C DF 33 78 */	mr r31, r6
/* 80110974 0010D8D4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80110978 0010D8D8  7C 9E 23 78 */	mr r30, r4
/* 8011097C 0010D8DC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80110980 0010D8E0  7C 7D 1B 78 */	mr r29, r3
/* 80110984 0010D8E4  A0 05 00 00 */	lhz r0, 0(r5)
/* 80110988 0010D8E8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8011098C 0010D8EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80110990 0010D8F0  4B F6 C1 E9 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80110994 0010D8F4  2C 1E 00 22 */	cmpwi r30, 0x22
/* 80110998 0010D8F8  41 82 00 20 */	beq lbl_801109B8
/* 8011099C 0010D8FC  40 80 00 10 */	bge lbl_801109AC
/* 801109A0 0010D900  2C 1E 00 04 */	cmpwi r30, 4
/* 801109A4 0010D904  41 82 00 14 */	beq lbl_801109B8
/* 801109A8 0010D908  48 00 00 B8 */	b lbl_80110A60
lbl_801109AC:
/* 801109AC 0010D90C  2C 1E 00 24 */	cmpwi r30, 0x24
/* 801109B0 0010D910  40 80 00 B0 */	bge lbl_80110A60
/* 801109B4 0010D914  48 00 00 14 */	b lbl_801109C8
lbl_801109B8:
/* 801109B8 0010D918  7F A3 EB 78 */	mr r3, r29
/* 801109BC 0010D91C  7F E4 FB 78 */	mr r4, r31
/* 801109C0 0010D920  4B FF CA 91 */	bl SwarmRemove__8CWarWaspFR13CStateManager
/* 801109C4 0010D924  48 00 00 9C */	b lbl_80110A60
lbl_801109C8:
/* 801109C8 0010D928  A0 7D 06 74 */	lhz r3, 0x674(r29)
/* 801109CC 0010D92C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801109D0 0010D930  7C 03 00 40 */	cmplw r3, r0
/* 801109D4 0010D934  40 82 00 1C */	bne lbl_801109F0
/* 801109D8 0010D938  7F A4 EB 78 */	mr r4, r29
/* 801109DC 0010D93C  7F E5 FB 78 */	mr r5, r31
/* 801109E0 0010D940  38 61 00 08 */	addi r3, r1, 8
/* 801109E4 0010D944  48 12 98 05 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 801109E8 0010D948  A0 01 00 08 */	lhz r0, 8(r1)
/* 801109EC 0010D94C  B0 1D 06 74 */	sth r0, 0x674(r29)
lbl_801109F0:
/* 801109F0 0010D950  80 BD 00 04 */	lwz r5, 4(r29)
/* 801109F4 0010D954  38 00 00 00 */	li r0, 0
/* 801109F8 0010D958  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 801109FC 0010D95C  54 A3 18 38 */	slwi r3, r5, 3
/* 80110A00 0010D960  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 80110A04 0010D964  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80110A08 0010D968  38 63 00 04 */	addi r3, r3, 4
/* 80110A0C 0010D96C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80110A10 0010D970  7C 64 18 2E */	lwzx r3, r4, r3
/* 80110A14 0010D974  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80110A18 0010D978  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80110A1C 0010D97C  80 63 10 BC */	lwz r3, 0x10bc(r3)
/* 80110A20 0010D980  90 7D 05 90 */	stw r3, 0x590(r29)
/* 80110A24 0010D984  C0 1D 06 B0 */	lfs f0, 0x6b0(r29)
/* 80110A28 0010D988  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80110A2C 0010D98C  40 82 00 1C */	bne lbl_80110A48
/* 80110A30 0010D990  C0 1D 06 B4 */	lfs f0, 0x6b4(r29)
/* 80110A34 0010D994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80110A38 0010D998  40 82 00 10 */	bne lbl_80110A48
/* 80110A3C 0010D99C  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 80110A40 0010D9A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80110A44 0010D9A4  41 82 00 08 */	beq lbl_80110A4C
lbl_80110A48:
/* 80110A48 0010D9A8  38 00 00 01 */	li r0, 1
lbl_80110A4C:
/* 80110A4C 0010D9AC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80110A50 0010D9B0  40 82 00 10 */	bne lbl_80110A60
/* 80110A54 0010D9B4  7F A3 EB 78 */	mr r3, r29
/* 80110A58 0010D9B8  7F E4 FB 78 */	mr r4, r31
/* 80110A5C 0010D9BC  4B FF AF 7D */	bl SetUpCircleBurstWaypoint__8CWarWaspFR13CStateManager
lbl_80110A60:
/* 80110A60 0010D9C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80110A64 0010D9C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80110A68 0010D9C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80110A6C 0010D9CC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80110A70 0010D9D0  7C 08 03 A6 */	mtlr r0
/* 80110A74 0010D9D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80110A78 0010D9D8  4E 80 00 20 */	blr

.global Accept__8CWarWaspFR8IVisitor
Accept__8CWarWaspFR8IVisitor:
/* 80110A7C 0010D9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110A80 0010D9E0  7C 08 02 A6 */	mflr r0
/* 80110A84 0010D9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110A88 0010D9E8  7C 60 1B 78 */	mr r0, r3
/* 80110A8C 0010D9EC  7C 83 23 78 */	mr r3, r4
/* 80110A90 0010D9F0  81 84 00 00 */	lwz r12, 0(r4)
/* 80110A94 0010D9F4  7C 04 03 78 */	mr r4, r0
/* 80110A98 0010D9F8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80110A9C 0010D9FC  7D 89 03 A6 */	mtctr r12
/* 80110AA0 0010DA00  4E 80 04 21 */	bctrl
/* 80110AA4 0010DA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110AA8 0010DA08  7C 08 03 A6 */	mtlr r0
/* 80110AAC 0010DA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80110AB0 0010DA10  4E 80 00 20 */	blr

.global __dt__8CWarWaspFv
__dt__8CWarWaspFv:
/* 80110AB4 0010DA14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110AB8 0010DA18  7C 08 02 A6 */	mflr r0
/* 80110ABC 0010DA1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110AC0 0010DA20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80110AC4 0010DA24  7C 9F 23 78 */	mr r31, r4
/* 80110AC8 0010DA28  93 C1 00 08 */	stw r30, 8(r1)
/* 80110ACC 0010DA2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80110AD0 0010DA30  41 82 01 10 */	beq lbl_80110BE0
/* 80110AD4 0010DA34  3C 60 80 3E */	lis r3, lbl_803DFF90@ha
/* 80110AD8 0010DA38  34 1E 07 1C */	addic. r0, r30, 0x71c
/* 80110ADC 0010DA3C  38 03 FF 90 */	addi r0, r3, lbl_803DFF90@l
/* 80110AE0 0010DA40  90 1E 00 00 */	stw r0, 0(r30)
/* 80110AE4 0010DA44  41 82 00 30 */	beq lbl_80110B14
/* 80110AE8 0010DA48  88 1E 07 28 */	lbz r0, 0x728(r30)
/* 80110AEC 0010DA4C  28 00 00 00 */	cmplwi r0, 0
/* 80110AF0 0010DA50  41 82 00 1C */	beq lbl_80110B0C
/* 80110AF4 0010DA54  34 7E 07 1C */	addic. r3, r30, 0x71c
/* 80110AF8 0010DA58  41 82 00 14 */	beq lbl_80110B0C
/* 80110AFC 0010DA5C  28 03 00 00 */	cmplwi r3, 0
/* 80110B00 0010DA60  41 82 00 0C */	beq lbl_80110B0C
/* 80110B04 0010DA64  38 80 00 00 */	li r4, 0
/* 80110B08 0010DA68  48 23 03 39 */	bl __dt__6CTokenFv
lbl_80110B0C:
/* 80110B0C 0010DA6C  38 00 00 00 */	li r0, 0
/* 80110B10 0010DA70  98 1E 07 28 */	stb r0, 0x728(r30)
lbl_80110B14:
/* 80110B14 0010DA74  34 1E 06 D4 */	addic. r0, r30, 0x6d4
/* 80110B18 0010DA78  41 82 00 20 */	beq lbl_80110B38
/* 80110B1C 0010DA7C  34 1E 06 D4 */	addic. r0, r30, 0x6d4
/* 80110B20 0010DA80  41 82 00 18 */	beq lbl_80110B38
/* 80110B24 0010DA84  34 1E 06 D4 */	addic. r0, r30, 0x6d4
/* 80110B28 0010DA88  41 82 00 10 */	beq lbl_80110B38
/* 80110B2C 0010DA8C  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 80110B30 0010DA90  38 80 00 00 */	li r4, 0
/* 80110B34 0010DA94  48 23 03 0D */	bl __dt__6CTokenFv
lbl_80110B38:
/* 80110B38 0010DA98  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80110B3C 0010DA9C  41 82 00 60 */	beq lbl_80110B9C
/* 80110B40 0010DAA0  34 1E 05 94 */	addic. r0, r30, 0x594
/* 80110B44 0010DAA4  41 82 00 58 */	beq lbl_80110B9C
/* 80110B48 0010DAA8  80 BE 05 94 */	lwz r5, 0x594(r30)
/* 80110B4C 0010DAAC  38 60 00 00 */	li r3, 0
/* 80110B50 0010DAB0  2C 05 00 00 */	cmpwi r5, 0
/* 80110B54 0010DAB4  40 81 00 40 */	ble lbl_80110B94
/* 80110B58 0010DAB8  2C 05 00 08 */	cmpwi r5, 8
/* 80110B5C 0010DABC  38 85 FF F8 */	addi r4, r5, -8
/* 80110B60 0010DAC0  40 81 00 20 */	ble lbl_80110B80
/* 80110B64 0010DAC4  38 04 00 07 */	addi r0, r4, 7
/* 80110B68 0010DAC8  54 00 E8 FE */	srwi r0, r0, 3
/* 80110B6C 0010DACC  7C 09 03 A6 */	mtctr r0
/* 80110B70 0010DAD0  2C 04 00 00 */	cmpwi r4, 0
/* 80110B74 0010DAD4  40 81 00 0C */	ble lbl_80110B80
lbl_80110B78:
/* 80110B78 0010DAD8  38 63 00 08 */	addi r3, r3, 8
/* 80110B7C 0010DADC  42 00 FF FC */	bdnz lbl_80110B78
lbl_80110B80:
/* 80110B80 0010DAE0  7C 03 28 50 */	subf r0, r3, r5
/* 80110B84 0010DAE4  7C 09 03 A6 */	mtctr r0
/* 80110B88 0010DAE8  7C 03 28 00 */	cmpw r3, r5
/* 80110B8C 0010DAEC  40 80 00 08 */	bge lbl_80110B94
lbl_80110B90:
/* 80110B90 0010DAF0  42 00 00 00 */	bdnz lbl_80110B90
lbl_80110B94:
/* 80110B94 0010DAF4  38 00 00 00 */	li r0, 0
/* 80110B98 0010DAF8  90 1E 05 94 */	stw r0, 0x594(r30)
lbl_80110B9C:
/* 80110B9C 0010DAFC  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80110BA0 0010DB00  41 82 00 24 */	beq lbl_80110BC4
/* 80110BA4 0010DB04  3C 60 80 3F */	lis r3, __vt__17CCollidableSphere@ha
/* 80110BA8 0010DB08  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80110BAC 0010DB0C  38 03 CA F8 */	addi r0, r3, __vt__17CCollidableSphere@l
/* 80110BB0 0010DB10  90 1E 05 70 */	stw r0, 0x570(r30)
/* 80110BB4 0010DB14  41 82 00 10 */	beq lbl_80110BC4
/* 80110BB8 0010DB18  3C 60 80 3E */	lis r3, __vt__19CCollisionPrimitive@ha
/* 80110BBC 0010DB1C  38 03 97 E4 */	addi r0, r3, __vt__19CCollisionPrimitive@l
/* 80110BC0 0010DB20  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_80110BC4:
/* 80110BC4 0010DB24  7F C3 F3 78 */	mr r3, r30
/* 80110BC8 0010DB28  38 80 00 00 */	li r4, 0
/* 80110BCC 0010DB2C  4B F6 69 A5 */	bl __dt__10CPatternedFv
/* 80110BD0 0010DB30  7F E0 07 35 */	extsh. r0, r31
/* 80110BD4 0010DB34  40 81 00 0C */	ble lbl_80110BE0
/* 80110BD8 0010DB38  7F C3 F3 78 */	mr r3, r30
/* 80110BDC 0010DB3C  48 20 4D 55 */	bl Free__7CMemoryFPCv
lbl_80110BE0:
/* 80110BE0 0010DB40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110BE4 0010DB44  7F C3 F3 78 */	mr r3, r30
/* 80110BE8 0010DB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80110BEC 0010DB4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80110BF0 0010DB50  7C 08 03 A6 */	mtlr r0
/* 80110BF4 0010DB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80110BF8 0010DB58  4E 80 00 20 */	blr

.global "__ct__8CWarWaspF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned11EFlavorTypeQ210CPatterned13EColliderTypeRC11CDamageInfoRC16CActorParametersUiRC11CDamageInfoUiUi"
"__ct__8CWarWaspF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned11EFlavorTypeQ210CPatterned13EColliderTypeRC11CDamageInfoRC16CActorParametersUiRC11CDamageInfoUiUi":
/* 80110BFC 0010DB5C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80110C00 0010DB60  7C 08 02 A6 */	mflr r0
/* 80110C04 0010DB64  7C CC 33 78 */	mr r12, r6
/* 80110C08 0010DB68  7D 0B 43 78 */	mr r11, r8
/* 80110C0C 0010DB6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80110C10 0010DB70  7D 88 63 78 */	mr r8, r12
/* 80110C14 0010DB74  80 C1 00 78 */	lwz r6, 0x78(r1)
/* 80110C18 0010DB78  BE E1 00 4C */	stmw r23, 0x4c(r1)
/* 80110C1C 0010DB7C  7D 39 4B 78 */	mr r25, r9
/* 80110C20 0010DB80  7D 5A 53 78 */	mr r26, r10
/* 80110C24 0010DB84  7C E9 3B 78 */	mr r9, r7
/* 80110C28 0010DB88  81 41 00 80 */	lwz r10, 0x80(r1)
/* 80110C2C 0010DB8C  7C 78 1B 78 */	mr r24, r3
/* 80110C30 0010DB90  83 61 00 7C */	lwz r27, 0x7c(r1)
/* 80110C34 0010DB94  7F 47 D3 78 */	mr r7, r26
/* 80110C38 0010DB98  83 81 00 84 */	lwz r28, 0x84(r1)
/* 80110C3C 0010DB9C  83 A1 00 88 */	lwz r29, 0x88(r1)
/* 80110C40 0010DBA0  83 C1 00 8C */	lwz r30, 0x8c(r1)
/* 80110C44 0010DBA4  83 E1 00 90 */	lwz r31, 0x90(r1)
/* 80110C48 0010DBA8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80110C4C 0010DBAC  38 80 00 03 */	li r4, 3
/* 80110C50 0010DBB0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80110C54 0010DBB4  38 00 00 01 */	li r0, 1
/* 80110C58 0010DBB8  93 21 00 08 */	stw r25, 8(r1)
/* 80110C5C 0010DBBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80110C60 0010DBC0  38 00 00 00 */	li r0, 0
/* 80110C64 0010DBC4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80110C68 0010DBC8  7C A6 2B 78 */	mr r6, r5
/* 80110C6C 0010DBCC  38 A1 00 20 */	addi r5, r1, 0x20
/* 80110C70 0010DBD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80110C74 0010DBD4  38 80 00 27 */	li r4, 0x27
/* 80110C78 0010DBD8  91 41 00 18 */	stw r10, 0x18(r1)
/* 80110C7C 0010DBDC  7D 6A 5B 78 */	mr r10, r11
/* 80110C80 0010DBE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80110C84 0010DBE4  4B F6 C7 CD */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 80110C88 0010DBE8  3C 60 80 3E */	lis r3, lbl_803DFF90@ha
/* 80110C8C 0010DBEC  3A F8 05 70 */	addi r23, r24, 0x570
/* 80110C90 0010DBF0  38 03 FF 90 */	addi r0, r3, lbl_803DFF90@l
/* 80110C94 0010DBF4  38 98 00 68 */	addi r4, r24, 0x68
/* 80110C98 0010DBF8  90 18 00 00 */	stw r0, 0(r24)
/* 80110C9C 0010DBFC  38 00 FF FF */	li r0, -1
/* 80110CA0 0010DC00  7E E3 BB 78 */	mr r3, r23
/* 80110CA4 0010DC04  90 18 05 68 */	stw r0, 0x568(r24)
/* 80110CA8 0010DC08  48 1B EC 0D */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80110CAC 0010DC0C  3C 60 80 3F */	lis r3, __vt__17CCollidableSphere@ha
/* 80110CB0 0010DC10  C0 22 94 DC */	lfs f1, lbl_805AB1FC@sda21(r2)
/* 80110CB4 0010DC14  38 03 CA F8 */	addi r0, r3, __vt__17CCollidableSphere@l
/* 80110CB8 0010DC18  C0 62 94 F0 */	lfs f3, lbl_805AB210@sda21(r2)
/* 80110CBC 0010DC1C  90 17 00 00 */	stw r0, 0(r23)
/* 80110CC0 0010DC20  FC 40 08 90 */	fmr f2, f1
/* 80110CC4 0010DC24  C0 02 95 6C */	lfs f0, lbl_805AB28C@sda21(r2)
/* 80110CC8 0010DC28  38 78 05 90 */	addi r3, r24, 0x590
/* 80110CCC 0010DC2C  D0 77 00 10 */	stfs f3, 0x10(r23)
/* 80110CD0 0010DC30  38 80 00 00 */	li r4, 0
/* 80110CD4 0010DC34  38 A0 00 03 */	li r5, 3
/* 80110CD8 0010DC38  D0 77 00 14 */	stfs f3, 0x14(r23)
/* 80110CDC 0010DC3C  D0 17 00 18 */	stfs f0, 0x18(r23)
/* 80110CE0 0010DC40  D0 37 00 1C */	stfs f1, 0x1c(r23)
/* 80110CE4 0010DC44  80 D9 01 0C */	lwz r6, 0x10c(r25)
/* 80110CE8 0010DC48  48 0B 80 AD */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80110CEC 0010DC4C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80110CF0 0010DC50  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80110CF4 0010DC54  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 80110CF8 0010DC58  C0 02 94 F0 */	lfs f0, lbl_805AB210@sda21(r2)
/* 80110CFC 0010DC5C  B0 18 06 74 */	sth r0, 0x674(r24)
/* 80110D00 0010DC60  38 E4 66 A0 */	addi r7, r4, sZeroVector__9CVector3f@l
/* 80110D04 0010DC64  38 C3 66 60 */	addi r6, r3, sNoRotation__11CQuaternion@l
/* 80110D08 0010DC68  7F 84 E3 78 */	mr r4, r28
/* 80110D0C 0010DC6C  C0 27 00 00 */	lfs f1, 0(r7)
/* 80110D10 0010DC70  7F A5 EB 78 */	mr r5, r29
/* 80110D14 0010DC74  38 78 06 D4 */	addi r3, r24, 0x6d4
/* 80110D18 0010DC78  D0 38 06 78 */	stfs f1, 0x678(r24)
/* 80110D1C 0010DC7C  C0 27 00 04 */	lfs f1, 4(r7)
/* 80110D20 0010DC80  D0 38 06 7C */	stfs f1, 0x67c(r24)
/* 80110D24 0010DC84  C0 27 00 08 */	lfs f1, 8(r7)
/* 80110D28 0010DC88  D0 38 06 80 */	stfs f1, 0x680(r24)
/* 80110D2C 0010DC8C  80 1B 00 00 */	lwz r0, 0(r27)
/* 80110D30 0010DC90  90 18 06 84 */	stw r0, 0x684(r24)
/* 80110D34 0010DC94  88 1B 00 04 */	lbz r0, 4(r27)
/* 80110D38 0010DC98  98 18 06 88 */	stb r0, 0x688(r24)
/* 80110D3C 0010DC9C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80110D40 0010DCA0  D0 38 06 8C */	stfs f1, 0x68c(r24)
/* 80110D44 0010DCA4  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 80110D48 0010DCA8  D0 38 06 90 */	stfs f1, 0x690(r24)
/* 80110D4C 0010DCAC  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 80110D50 0010DCB0  D0 38 06 94 */	stfs f1, 0x694(r24)
/* 80110D54 0010DCB4  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80110D58 0010DCB8  D0 38 06 98 */	stfs f1, 0x698(r24)
/* 80110D5C 0010DCBC  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 80110D60 0010DCC0  98 18 06 9C */	stb r0, 0x69c(r24)
/* 80110D64 0010DCC4  C0 26 00 00 */	lfs f1, 0(r6)
/* 80110D68 0010DCC8  D0 38 06 A0 */	stfs f1, 0x6a0(r24)
/* 80110D6C 0010DCCC  C0 26 00 04 */	lfs f1, 4(r6)
/* 80110D70 0010DCD0  D0 38 06 A4 */	stfs f1, 0x6a4(r24)
/* 80110D74 0010DCD4  C0 26 00 08 */	lfs f1, 8(r6)
/* 80110D78 0010DCD8  D0 38 06 A8 */	stfs f1, 0x6a8(r24)
/* 80110D7C 0010DCDC  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80110D80 0010DCE0  D0 38 06 AC */	stfs f1, 0x6ac(r24)
/* 80110D84 0010DCE4  C0 27 00 00 */	lfs f1, 0(r7)
/* 80110D88 0010DCE8  D0 38 06 B0 */	stfs f1, 0x6b0(r24)
/* 80110D8C 0010DCEC  C0 27 00 04 */	lfs f1, 4(r7)
/* 80110D90 0010DCF0  D0 38 06 B4 */	stfs f1, 0x6b4(r24)
/* 80110D94 0010DCF4  C0 27 00 08 */	lfs f1, 8(r7)
/* 80110D98 0010DCF8  D0 38 06 B8 */	stfs f1, 0x6b8(r24)
/* 80110D9C 0010DCFC  D0 18 06 BC */	stfs f0, 0x6bc(r24)
/* 80110DA0 0010DD00  D0 18 06 C0 */	stfs f0, 0x6c0(r24)
/* 80110DA4 0010DD04  D0 18 06 C4 */	stfs f0, 0x6c4(r24)
/* 80110DA8 0010DD08  D0 18 06 C8 */	stfs f0, 0x6c8(r24)
/* 80110DAC 0010DD0C  D0 18 06 CC */	stfs f0, 0x6cc(r24)
/* 80110DB0 0010DD10  D0 18 06 D0 */	stfs f0, 0x6d0(r24)
/* 80110DB4 0010DD14  48 10 B2 F5 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80110DB8 0010DD18  C0 18 03 B4 */	lfs f0, 0x3b4(r24)
/* 80110DBC 0010DD1C  38 80 FF FF */	li r4, -1
/* 80110DC0 0010DD20  C0 22 94 F0 */	lfs f1, lbl_805AB210@sda21(r2)
/* 80110DC4 0010DD24  38 00 00 00 */	li r0, 0
/* 80110DC8 0010DD28  D0 18 06 FC */	stfs f0, 0x6fc(r24)
/* 80110DCC 0010DD2C  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80110DD0 0010DD30  C0 02 95 5C */	lfs f0, lbl_805AB27C@sda21(r2)
/* 80110DD4 0010DD34  D0 38 07 00 */	stfs f1, 0x700(r24)
/* 80110DD8 0010DD38  90 98 07 04 */	stw r4, 0x704(r24)
/* 80110DDC 0010DD3C  90 98 07 08 */	stw r4, 0x708(r24)
/* 80110DE0 0010DD40  90 98 07 0C */	stw r4, 0x70c(r24)
/* 80110DE4 0010DD44  90 98 07 10 */	stw r4, 0x710(r24)
/* 80110DE8 0010DD48  D0 38 07 14 */	stfs f1, 0x714(r24)
/* 80110DEC 0010DD4C  D0 18 07 18 */	stfs f0, 0x718(r24)
/* 80110DF0 0010DD50  98 18 07 28 */	stb r0, 0x728(r24)
/* 80110DF4 0010DD54  48 1D 7B BD */	bl TranslateSFXID__11CSfxManagerFUs
/* 80110DF8 0010DD58  B0 78 07 2C */	sth r3, 0x72c(r24)
/* 80110DFC 0010DD5C  38 60 00 01 */	li r3, 1
/* 80110E00 0010DD60  38 80 00 00 */	li r4, 0
/* 80110E04 0010DD64  2C 1A 00 02 */	cmpwi r26, 2
/* 80110E08 0010DD68  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E0C 0010DD6C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80110E10 0010DD70  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E14 0010DD74  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E18 0010DD78  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80110E1C 0010DD7C  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E20 0010DD80  88 79 00 F8 */	lbz r3, 0xf8(r25)
/* 80110E24 0010DD84  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E28 0010DD88  7C 63 00 34 */	cntlzw r3, r3
/* 80110E2C 0010DD8C  50 60 06 B4 */	rlwimi r0, r3, 0, 0x1a, 0x1a
/* 80110E30 0010DD90  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E34 0010DD94  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E38 0010DD98  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80110E3C 0010DD9C  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E40 0010DDA0  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E44 0010DDA4  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80110E48 0010DDA8  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E4C 0010DDAC  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E50 0010DDB0  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80110E54 0010DDB4  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E58 0010DDB8  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E5C 0010DDBC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 80110E60 0010DDC0  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E64 0010DDC4  88 18 07 2E */	lbz r0, 0x72e(r24)
/* 80110E68 0010DDC8  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80110E6C 0010DDCC  98 18 07 2E */	stb r0, 0x72e(r24)
/* 80110E70 0010DDD0  40 82 00 0C */	bne lbl_80110E7C
/* 80110E74 0010DDD4  38 78 06 D4 */	addi r3, r24, 0x6d4
/* 80110E78 0010DDD8  48 22 FF 0D */	bl Lock__6CTokenFv
lbl_80110E7C:
/* 80110E7C 0010DDDC  7F 03 C3 78 */	mr r3, r24
/* 80110E80 0010DDE0  4B FF B2 B5 */	bl UpdateTouchBounds__8CWarWaspFv
/* 80110E84 0010DDE4  C0 22 95 34 */	lfs f1, lbl_805AB254@sda21(r2)
/* 80110E88 0010DDE8  7F 03 C3 78 */	mr r3, r24
/* 80110E8C 0010DDEC  48 00 96 55 */	bl SetCoefficientOfRestitutionModifier__13CPhysicsActorFf
/* 80110E90 0010DDF0  3C 1E 00 01 */	addis r0, r30, 1
/* 80110E94 0010DDF4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80110E98 0010DDF8  41 82 00 BC */	beq lbl_80110F54
/* 80110E9C 0010DDFC  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80110EA0 0010DE00  93 C1 00 30 */	stw r30, 0x30(r1)
/* 80110EA4 0010DE04  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80110EA8 0010DE08  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80110EAC 0010DE0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80110EB0 0010DE10  38 61 00 24 */	addi r3, r1, 0x24
/* 80110EB4 0010DE14  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80110EB8 0010DE18  81 84 00 00 */	lwz r12, 0(r4)
/* 80110EBC 0010DE1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80110EC0 0010DE20  7D 89 03 A6 */	mtctr r12
/* 80110EC4 0010DE24  4E 80 04 21 */	bctrl
/* 80110EC8 0010DE28  3A E1 00 34 */	addi r23, r1, 0x34
/* 80110ECC 0010DE2C  38 81 00 24 */	addi r4, r1, 0x24
/* 80110ED0 0010DE30  7E E3 BB 78 */	mr r3, r23
/* 80110ED4 0010DE34  48 22 FF D5 */	bl __ct__6CTokenFRC6CToken
/* 80110ED8 0010DE38  7E E3 BB 78 */	mr r3, r23
/* 80110EDC 0010DE3C  48 22 FF 31 */	bl GetObj__6CTokenFv
/* 80110EE0 0010DE40  80 03 00 04 */	lwz r0, 4(r3)
/* 80110EE4 0010DE44  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80110EE8 0010DE48  88 18 07 28 */	lbz r0, 0x728(r24)
/* 80110EEC 0010DE4C  28 00 00 00 */	cmplwi r0, 0
/* 80110EF0 0010DE50  40 82 00 34 */	bne lbl_80110F24
/* 80110EF4 0010DE54  37 38 07 1C */	addic. r25, r24, 0x71c
/* 80110EF8 0010DE58  41 82 00 20 */	beq lbl_80110F18
/* 80110EFC 0010DE5C  7F 23 CB 78 */	mr r3, r25
/* 80110F00 0010DE60  7E E4 BB 78 */	mr r4, r23
/* 80110F04 0010DE64  48 22 FF A5 */	bl __ct__6CTokenFRC6CToken
/* 80110F08 0010DE68  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80110F0C 0010DE6C  7F 23 CB 78 */	mr r3, r25
/* 80110F10 0010DE70  90 19 00 08 */	stw r0, 8(r25)
/* 80110F14 0010DE74  48 22 FE 71 */	bl Lock__6CTokenFv
lbl_80110F18:
/* 80110F18 0010DE78  38 00 00 01 */	li r0, 1
/* 80110F1C 0010DE7C  98 18 07 28 */	stb r0, 0x728(r24)
/* 80110F20 0010DE80  48 00 00 1C */	b lbl_80110F3C
lbl_80110F24:
/* 80110F24 0010DE84  3B 38 07 1C */	addi r25, r24, 0x71c
/* 80110F28 0010DE88  7E E4 BB 78 */	mr r4, r23
/* 80110F2C 0010DE8C  7F 23 CB 78 */	mr r3, r25
/* 80110F30 0010DE90  48 22 FD 95 */	bl __as__6CTokenFRC6CToken
/* 80110F34 0010DE94  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80110F38 0010DE98  90 19 00 08 */	stw r0, 8(r25)
lbl_80110F3C:
/* 80110F3C 0010DE9C  38 61 00 34 */	addi r3, r1, 0x34
/* 80110F40 0010DEA0  38 80 00 00 */	li r4, 0
/* 80110F44 0010DEA4  48 22 FE FD */	bl __dt__6CTokenFv
/* 80110F48 0010DEA8  38 61 00 24 */	addi r3, r1, 0x24
/* 80110F4C 0010DEAC  38 80 FF FF */	li r4, -1
/* 80110F50 0010DEB0  48 22 FE F1 */	bl __dt__6CTokenFv
lbl_80110F54:
/* 80110F54 0010DEB4  88 18 03 28 */	lbz r0, 0x328(r24)
/* 80110F58 0010DEB8  38 60 00 01 */	li r3, 1
/* 80110F5C 0010DEBC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80110F60 0010DEC0  38 78 04 60 */	addi r3, r24, 0x460
/* 80110F64 0010DEC4  98 18 03 28 */	stb r0, 0x328(r24)
/* 80110F68 0010DEC8  38 80 00 02 */	li r4, 2
/* 80110F6C 0010DECC  38 A0 00 02 */	li r5, 2
/* 80110F70 0010DED0  48 12 2E 25 */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
/* 80110F74 0010DED4  7F 03 C3 78 */	mr r3, r24
/* 80110F78 0010DED8  BA E1 00 4C */	lmw r23, 0x4c(r1)
/* 80110F7C 0010DEDC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80110F80 0010DEE0  7C 08 03 A6 */	mtlr r0
/* 80110F84 0010DEE4  38 21 00 70 */	addi r1, r1, 0x70
/* 80110F88 0010DEE8  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CF1D8
lbl_803CF1D8:
	# ROM: 0x3CC1D8
	.float 0.4
	.float 0.6
	.float 1.0

.global lbl_803CF1E4
lbl_803CF1E4:

	# ROM: 0x3CC1E4
	.asciz "LCTR_WARTAIL"
	.balign 4
	.4byte 0

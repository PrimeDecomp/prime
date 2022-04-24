.include "macros.inc"

.section .data


.global lbl_803E9A10
lbl_803E9A10:
	# ROM: 0x3E6A10
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9A1C
lbl_803E9A1C:
	# ROM: 0x3E6A1C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9A28
lbl_803E9A28:
	# ROM: 0x3E6A28
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri

.global lbl_803E9A34
lbl_803E9A34:
	# ROM: 0x3E6A34
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9A40
lbl_803E9A40:
	# ROM: 0x3E6A40
	.4byte 0
	.4byte 0
	.4byte __dt__9CTryclopsFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__9CTryclopsFfR13CStateManager
	.4byte sub_80260bf0
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte sub_8025e764
	.4byte sub_8025e72c
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
	.4byte sub_8025e79c
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte sub_8025e640
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte sub_8025dbc8
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte sub_8025e264
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte sub_8025f648
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte sub_8025fdcc
	.4byte sub_8025e5c8
	.4byte sub_8025e1b4
	.4byte sub_80260674
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f130
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f740
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f61c
	.4byte sub_8025e8ac
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f87c
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f068
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025fe4c
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
	.4byte sub_8025e550
	.4byte sub_8025f5ac
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_8025f494
	.4byte sub_8025e034
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte sub_80260584
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte sub_802604c0
	.4byte sub_802608a8
	.4byte sub_802607fc
	.4byte sub_8025ebd8
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
	.4byte sub_8025ff7c
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte sub_8025fedc
	.4byte HearPlayer__3CAiFR13CStateManagerf
	.4byte CoverCheck__3CAiFR13CStateManagerf
	.4byte CoverFind__3CAiFR13CStateManagerf
	.4byte sub_8025e4f4
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__3CAiFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__3CAiFR13CStateManagerf
	.4byte AggressionCheck__3CAiFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte sub_80260024
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte sub_8025e43c
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
	.4byte sub_8025e4e8
	.4byte ShouldCallForBackup__3CAiFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__10CPatternedCFv
	.4byte MassiveDeath__10CPatternedFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte sub_8025dbc0
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata

.global lbl_805A83A0
lbl_805A83A0:
	# ROM: 0x3F5D40
	.4byte 0x00000013

.global lbl_805A83A4
lbl_805A83A4:
	# ROM: 0x3F5D44
	.4byte 0x00000024

.global lbl_805A83A8
lbl_805A83A8:
	# ROM: 0x3F5D48
	.4byte 0x00000013

.global lbl_805A83AC
lbl_805A83AC:
	# ROM: 0x3F5D4C
	.4byte 0x00000021

.global lbl_805A83B0
lbl_805A83B0:
	# ROM: 0x3F5D50
	.4byte 0x00000020

.global lbl_805A83B4
lbl_805A83B4:
	# ROM: 0x3F5D54
	.4byte 0x00000012

.global lbl_805A83B8
lbl_805A83B8:
	# ROM: 0x3F5D58
	.4byte 0x00000013

.global lbl_805A83BC
lbl_805A83BC:
	# ROM: 0x3F5D5C
	.4byte 0x00000012

.global lbl_805A83C0
lbl_805A83C0:
	# ROM: 0x3F5D60
	.4byte 0x00000020

.global lbl_805A83C4
lbl_805A83C4:
	# ROM: 0x3F5D64
	.4byte 0x00000013

.section .bss

.global lbl_8046DC90
lbl_8046DC90:
	.skip 0x18
	
.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global sub_8025dbc0
sub_8025dbc0:
/* 8025DBC0 0025AB20  38 63 05 68 */	addi r3, r3, 0x568
/* 8025DBC4 0025AB24  4E 80 00 20 */	blr 

.global sub_8025dbc8
sub_8025dbc8:
/* 8025DBC8 0025AB28  38 60 00 01 */	li r3, 1
/* 8025DBCC 0025AB2C  4E 80 00 20 */	blr 

.global sub_8025dbd0
sub_8025dbd0:
/* 8025DBD0 0025AB30  94 21 F5 E0 */	stwu r1, -0xa20(r1)
/* 8025DBD4 0025AB34  7C 08 02 A6 */	mflr r0
/* 8025DBD8 0025AB38  90 01 0A 24 */	stw r0, 0xa24(r1)
/* 8025DBDC 0025AB3C  DB E1 0A 10 */	stfd f31, 0xa10(r1)
/* 8025DBE0 0025AB40  F3 E1 0A 18 */	psq_st f31, -1512(r1), 0, qr0
/* 8025DBE4 0025AB44  DB C1 0A 00 */	stfd f30, 0xa00(r1)
/* 8025DBE8 0025AB48  F3 C1 0A 08 */	psq_st f30, -1528(r1), 0, qr0
/* 8025DBEC 0025AB4C  DB A1 09 F0 */	stfd f29, 0x9f0(r1)
/* 8025DBF0 0025AB50  F3 A1 09 F8 */	psq_st f29, -1544(r1), 0, qr0
/* 8025DBF4 0025AB54  DB 81 09 E0 */	stfd f28, 0x9e0(r1)
/* 8025DBF8 0025AB58  F3 81 09 E8 */	psq_st f28, -1560(r1), 0, qr0
/* 8025DBFC 0025AB5C  BF 21 09 C4 */	stmw r25, 0x9c4(r1)
/* 8025DC00 0025AB60  7C 9B 23 78 */	mr r27, r4
/* 8025DC04 0025AB64  80 82 BA 2C */	lwz r4, lbl_805AD74C@sda21(r2)
/* 8025DC08 0025AB68  7C 7A 1B 78 */	mr r26, r3
/* 8025DC0C 0025AB6C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025DC10 0025AB70  4B DA 70 A9 */	bl string_l__4rstlFPCc
/* 8025DC14 0025AB74  7F 44 D3 78 */	mr r4, r26
/* 8025DC18 0025AB78  38 61 01 80 */	addi r3, r1, 0x180
/* 8025DC1C 0025AB7C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8025DC20 0025AB80  4B E1 AD 59 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025DC24 0025AB84  C0 41 01 AC */	lfs f2, 0x1ac(r1)
/* 8025DC28 0025AB88  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025DC2C 0025AB8C  C0 21 01 9C */	lfs f1, 0x19c(r1)
/* 8025DC30 0025AB90  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8025DC34 0025AB94  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8025DC38 0025AB98  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8025DC3C 0025AB9C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8025DC40 0025ABA0  48 0D FE A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025DC44 0025ABA4  C0 5A 00 58 */	lfs f2, 0x58(r26)
/* 8025DC48 0025ABA8  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 8025DC4C 0025ABAC  C0 3A 00 48 */	lfs f1, 0x48(r26)
/* 8025DC50 0025ABB0  38 E3 FD 18 */	addi r7, r3, lbl_8059FD18@l
/* 8025DC54 0025ABB4  C0 1A 00 38 */	lfs f0, 0x38(r26)
/* 8025DC58 0025ABB8  7F 64 DB 78 */	mr r4, r27
/* 8025DC5C 0025ABBC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8025DC60 0025ABC0  38 61 01 50 */	addi r3, r1, 0x150
/* 8025DC64 0025ABC4  C0 22 BA 30 */	lfs f1, lbl_805AD750@sda21(r2)
/* 8025DC68 0025ABC8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8025DC6C 0025ABCC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8025DC70 0025ABD0  38 C1 00 20 */	addi r6, r1, 0x20
/* 8025DC74 0025ABD4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8025DC78 0025ABD8  4B DE F3 21 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8025DC7C 0025ABDC  88 01 01 70 */	lbz r0, 0x170(r1)
/* 8025DC80 0025ABE0  28 00 00 00 */	cmplwi r0, 0
/* 8025DC84 0025ABE4  41 82 00 0C */	beq lbl_8025DC90
/* 8025DC88 0025ABE8  38 60 00 01 */	li r3, 1
/* 8025DC8C 0025ABEC  48 00 03 74 */	b lbl_8025E000
lbl_8025DC90:
/* 8025DC90 0025ABF0  83 FB 08 4C */	lwz r31, 0x84c(r27)
/* 8025DC94 0025ABF4  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8025DC98 0025ABF8  4B E9 B1 6D */	bl GetBallRadius__10CMorphBallCFv
/* 8025DC9C 0025ABFC  FF E0 08 90 */	fmr f31, f1
/* 8025DCA0 0025AC00  80 AD 97 FC */	lwz r5, lbl_805A83BC@sda21(r13)
/* 8025DCA4 0025AC04  38 60 00 00 */	li r3, 0
/* 8025DCA8 0025AC08  38 80 00 01 */	li r4, 1
/* 8025DCAC 0025AC0C  48 12 C2 49 */	bl __shl2i
/* 8025DCB0 0025AC10  80 AD 97 F8 */	lwz r5, lbl_805A83B8@sda21(r13)
/* 8025DCB4 0025AC14  7C 9D 23 78 */	mr r29, r4
/* 8025DCB8 0025AC18  7C 7C 1B 78 */	mr r28, r3
/* 8025DCBC 0025AC1C  38 60 00 00 */	li r3, 0
/* 8025DCC0 0025AC20  38 80 00 01 */	li r4, 1
/* 8025DCC4 0025AC24  48 12 C2 31 */	bl __shl2i
/* 8025DCC8 0025AC28  38 C0 00 03 */	li r6, 3
/* 8025DCCC 0025AC2C  38 00 00 00 */	li r0, 0
/* 8025DCD0 0025AC30  90 81 00 9C */	stw r4, 0x9c(r1)
/* 8025DCD4 0025AC34  38 80 00 01 */	li r4, 1
/* 8025DCD8 0025AC38  80 AD 98 00 */	lwz r5, lbl_805A83C0@sda21(r13)
/* 8025DCDC 0025AC3C  90 61 00 98 */	stw r3, 0x98(r1)
/* 8025DCE0 0025AC40  38 60 00 00 */	li r3, 0
/* 8025DCE4 0025AC44  90 C1 00 70 */	stw r6, 0x70(r1)
/* 8025DCE8 0025AC48  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8025DCEC 0025AC4C  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 8025DCF0 0025AC50  90 C1 00 A8 */	stw r6, 0xa8(r1)
/* 8025DCF4 0025AC54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025DCF8 0025AC58  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025DCFC 0025AC5C  48 12 C1 F9 */	bl __shl2i
/* 8025DD00 0025AC60  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8025DD04 0025AC64  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8025DD08 0025AC68  7C 00 1B 78 */	or r0, r0, r3
/* 8025DD0C 0025AC6C  80 AD 98 04 */	lwz r5, lbl_805A83C4@sda21(r13)
/* 8025DD10 0025AC70  7C C4 23 78 */	or r4, r6, r4
/* 8025DD14 0025AC74  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025DD18 0025AC78  38 60 00 00 */	li r3, 0
/* 8025DD1C 0025AC7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8025DD20 0025AC80  38 80 00 01 */	li r4, 1
/* 8025DD24 0025AC84  48 12 C1 D1 */	bl __shl2i
/* 8025DD28 0025AC88  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8025DD2C 0025AC8C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8025DD30 0025AC90  7C 00 1B 78 */	or r0, r0, r3
/* 8025DD34 0025AC94  C0 42 BA 34 */	lfs f2, lbl_805AD754@sda21(r2)
/* 8025DD38 0025AC98  7C A5 23 78 */	or r5, r5, r4
/* 8025DD3C 0025AC9C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025DD40 0025ACA0  38 61 00 78 */	addi r3, r1, 0x78
/* 8025DD44 0025ACA4  38 81 00 18 */	addi r4, r1, 0x18
/* 8025DD48 0025ACA8  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8025DD4C 0025ACAC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8025DD50 0025ACB0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8025DD54 0025ACB4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8025DD58 0025ACB8  EF 83 10 2A */	fadds f28, f3, f2
/* 8025DD5C 0025ACBC  EF A1 10 2A */	fadds f29, f1, f2
/* 8025DD60 0025ACC0  EF C0 F8 2A */	fadds f30, f0, f31
/* 8025DD64 0025ACC4  48 07 1B 51 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 8025DD68 0025ACC8  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 8025DD6C 0025ACCC  38 00 00 00 */	li r0, 0
/* 8025DD70 0025ACD0  38 A3 CA F8 */	addi r5, r3, lbl_803ECAF8@l
/* 8025DD74 0025ACD4  D3 81 00 88 */	stfs f28, 0x88(r1)
/* 8025DD78 0025ACD8  38 61 00 48 */	addi r3, r1, 0x48
/* 8025DD7C 0025ACDC  38 81 00 78 */	addi r4, r1, 0x78
/* 8025DD80 0025ACE0  90 A1 00 78 */	stw r5, 0x78(r1)
/* 8025DD84 0025ACE4  D3 A1 00 8C */	stfs f29, 0x8c(r1)
/* 8025DD88 0025ACE8  D3 C1 00 90 */	stfs f30, 0x90(r1)
/* 8025DD8C 0025ACEC  D3 E1 00 94 */	stfs f31, 0x94(r1)
/* 8025DD90 0025ACF0  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 8025DD94 0025ACF4  48 07 66 39 */	bl CalculateLocalAABox__17CCollidableSphereCFv
/* 8025DD98 0025ACF8  7F 63 DB 78 */	mr r3, r27
/* 8025DD9C 0025ACFC  7F E5 FB 78 */	mr r5, r31
/* 8025DDA0 0025AD00  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 8025DDA4 0025AD04  38 C1 00 48 */	addi r6, r1, 0x48
/* 8025DDA8 0025AD08  4B DE E9 55 */	bl "BuildColliderList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CActorRC6CAABox"
/* 8025DDAC 0025AD0C  3C 80 80 5A */	lis r4, skIdentity4f@ha
/* 8025DDB0 0025AD10  7F 63 DB 78 */	mr r3, r27
/* 8025DDB4 0025AD14  38 A4 66 70 */	addi r5, r4, skIdentity4f@l
/* 8025DDB8 0025AD18  38 C1 00 98 */	addi r6, r1, 0x98
/* 8025DDBC 0025AD1C  38 81 00 78 */	addi r4, r1, 0x78
/* 8025DDC0 0025AD20  4B F2 55 E1 */	bl DetectStaticCollisionBoolean__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilter
/* 8025DDC4 0025AD24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025DDC8 0025AD28  41 82 00 78 */	beq lbl_8025DE40
/* 8025DDCC 0025AD2C  80 A1 01 B0 */	lwz r5, 0x1b0(r1)
/* 8025DDD0 0025AD30  38 60 00 00 */	li r3, 0
/* 8025DDD4 0025AD34  2C 05 00 00 */	cmpwi r5, 0
/* 8025DDD8 0025AD38  40 81 00 40 */	ble lbl_8025DE18
/* 8025DDDC 0025AD3C  2C 05 00 08 */	cmpwi r5, 8
/* 8025DDE0 0025AD40  38 85 FF F8 */	addi r4, r5, -8
/* 8025DDE4 0025AD44  40 81 00 20 */	ble lbl_8025DE04
/* 8025DDE8 0025AD48  38 04 00 07 */	addi r0, r4, 7
/* 8025DDEC 0025AD4C  54 00 E8 FE */	srwi r0, r0, 3
/* 8025DDF0 0025AD50  7C 09 03 A6 */	mtctr r0
/* 8025DDF4 0025AD54  2C 04 00 00 */	cmpwi r4, 0
/* 8025DDF8 0025AD58  40 81 00 0C */	ble lbl_8025DE04
lbl_8025DDFC:
/* 8025DDFC 0025AD5C  38 63 00 08 */	addi r3, r3, 8
/* 8025DE00 0025AD60  42 00 FF FC */	bdnz lbl_8025DDFC
lbl_8025DE04:
/* 8025DE04 0025AD64  7C 03 28 50 */	subf r0, r3, r5
/* 8025DE08 0025AD68  7C 09 03 A6 */	mtctr r0
/* 8025DE0C 0025AD6C  7C 03 28 00 */	cmpw r3, r5
/* 8025DE10 0025AD70  40 80 00 08 */	bge lbl_8025DE18
lbl_8025DE14:
/* 8025DE14 0025AD74  42 00 00 00 */	bdnz lbl_8025DE14
lbl_8025DE18:
/* 8025DE18 0025AD78  3C 80 80 3F */	lis r4, lbl_803ECAF8@ha
/* 8025DE1C 0025AD7C  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8025DE20 0025AD80  38 04 CA F8 */	addi r0, r4, lbl_803ECAF8@l
/* 8025DE24 0025AD84  38 80 00 00 */	li r4, 0
/* 8025DE28 0025AD88  90 01 00 78 */	stw r0, 0x78(r1)
/* 8025DE2C 0025AD8C  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8025DE30 0025AD90  38 60 00 01 */	li r3, 1
/* 8025DE34 0025AD94  90 81 01 B0 */	stw r4, 0x1b0(r1)
/* 8025DE38 0025AD98  90 01 00 78 */	stw r0, 0x78(r1)
/* 8025DE3C 0025AD9C  48 00 01 C4 */	b lbl_8025E000
lbl_8025DE40:
/* 8025DE40 0025ADA0  3B A1 01 B4 */	addi r29, r1, 0x1b4
/* 8025DE44 0025ADA4  3B E1 00 E8 */	addi r31, r1, 0xe8
/* 8025DE48 0025ADA8  7F BC EB 78 */	mr r28, r29
/* 8025DE4C 0025ADAC  3B C1 01 20 */	addi r30, r1, 0x120
/* 8025DE50 0025ADB0  48 00 01 30 */	b lbl_8025DF80
lbl_8025DE54:
/* 8025DE54 0025ADB4  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8025DE58 0025ADB8  A0 1A 00 08 */	lhz r0, 8(r26)
/* 8025DE5C 0025ADBC  7C 03 00 40 */	cmplw r3, r0
/* 8025DE60 0025ADC0  41 82 01 1C */	beq lbl_8025DF7C
/* 8025DE64 0025ADC4  B0 61 00 08 */	sth r3, 8(r1)
/* 8025DE68 0025ADC8  7F 63 DB 78 */	mr r3, r27
/* 8025DE6C 0025ADCC  38 81 00 08 */	addi r4, r1, 8
/* 8025DE70 0025ADD0  4B DE E7 35 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025DE74 0025ADD4  7C 64 1B 78 */	mr r4, r3
/* 8025DE78 0025ADD8  38 61 00 0C */	addi r3, r1, 0xc
/* 8025DE7C 0025ADDC  4B E4 E8 69 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 8025DE80 0025ADE0  83 23 00 04 */	lwz r25, 4(r3)
/* 8025DE84 0025ADE4  28 19 00 00 */	cmplwi r25, 0
/* 8025DE88 0025ADE8  41 82 00 F4 */	beq lbl_8025DF7C
/* 8025DE8C 0025ADEC  7F 24 CB 78 */	mr r4, r25
/* 8025DE90 0025ADF0  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8025DE94 0025ADF4  81 99 00 00 */	lwz r12, 0(r25)
/* 8025DE98 0025ADF8  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8025DE9C 0025ADFC  7D 89 03 A6 */	mtctr r12
/* 8025DEA0 0025AE00  4E 80 04 21 */	bctrl 
/* 8025DEA4 0025AE04  7F 23 CB 78 */	mr r3, r25
/* 8025DEA8 0025AE08  81 99 00 00 */	lwz r12, 0(r25)
/* 8025DEAC 0025AE0C  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 8025DEB0 0025AE10  7D 89 03 A6 */	mtctr r12
/* 8025DEB4 0025AE14  4E 80 04 21 */	bctrl 
/* 8025DEB8 0025AE18  3C 80 80 5A */	lis r4, lbl_8059FD18@ha
/* 8025DEBC 0025AE1C  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 8025DEC0 0025AE20  38 04 FD 18 */	addi r0, r4, lbl_8059FD18@l
/* 8025DEC4 0025AE24  7F E3 FB 78 */	mr r3, r31
/* 8025DEC8 0025AE28  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8025DECC 0025AE2C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8025DED0 0025AE30  48 0B 4C A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025DED4 0025AE34  38 81 00 78 */	addi r4, r1, 0x78
/* 8025DED8 0025AE38  38 01 00 98 */	addi r0, r1, 0x98
/* 8025DEDC 0025AE3C  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 8025DEE0 0025AE40  90 81 01 18 */	stw r4, 0x118(r1)
/* 8025DEE4 0025AE44  38 83 66 70 */	addi r4, r3, skIdentity4f@l
/* 8025DEE8 0025AE48  90 01 01 1C */	stw r0, 0x11c(r1)
/* 8025DEEC 0025AE4C  7F C3 F3 78 */	mr r3, r30
/* 8025DEF0 0025AE50  48 0B 4C 85 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025DEF4 0025AE54  38 61 01 18 */	addi r3, r1, 0x118
/* 8025DEF8 0025AE58  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8025DEFC 0025AE5C  48 07 09 31 */	bl CollideBoolean__19CCollisionPrimitiveFRCQ227CInternalCollisionStructure9CPrimDescRCQ227CInternalCollisionStructure9CPrimDesc
/* 8025DF00 0025AE60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025DF04 0025AE64  41 82 00 78 */	beq lbl_8025DF7C
/* 8025DF08 0025AE68  80 A1 01 B0 */	lwz r5, 0x1b0(r1)
/* 8025DF0C 0025AE6C  38 60 00 00 */	li r3, 0
/* 8025DF10 0025AE70  2C 05 00 00 */	cmpwi r5, 0
/* 8025DF14 0025AE74  40 81 00 40 */	ble lbl_8025DF54
/* 8025DF18 0025AE78  2C 05 00 08 */	cmpwi r5, 8
/* 8025DF1C 0025AE7C  38 85 FF F8 */	addi r4, r5, -8
/* 8025DF20 0025AE80  40 81 00 20 */	ble lbl_8025DF40
/* 8025DF24 0025AE84  38 04 00 07 */	addi r0, r4, 7
/* 8025DF28 0025AE88  54 00 E8 FE */	srwi r0, r0, 3
/* 8025DF2C 0025AE8C  7C 09 03 A6 */	mtctr r0
/* 8025DF30 0025AE90  2C 04 00 00 */	cmpwi r4, 0
/* 8025DF34 0025AE94  40 81 00 0C */	ble lbl_8025DF40
lbl_8025DF38:
/* 8025DF38 0025AE98  38 63 00 08 */	addi r3, r3, 8
/* 8025DF3C 0025AE9C  42 00 FF FC */	bdnz lbl_8025DF38
lbl_8025DF40:
/* 8025DF40 0025AEA0  7C 03 28 50 */	subf r0, r3, r5
/* 8025DF44 0025AEA4  7C 09 03 A6 */	mtctr r0
/* 8025DF48 0025AEA8  7C 03 28 00 */	cmpw r3, r5
/* 8025DF4C 0025AEAC  40 80 00 08 */	bge lbl_8025DF54
lbl_8025DF50:
/* 8025DF50 0025AEB0  42 00 00 00 */	bdnz lbl_8025DF50
lbl_8025DF54:
/* 8025DF54 0025AEB4  3C 80 80 3F */	lis r4, lbl_803ECAF8@ha
/* 8025DF58 0025AEB8  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8025DF5C 0025AEBC  38 04 CA F8 */	addi r0, r4, lbl_803ECAF8@l
/* 8025DF60 0025AEC0  38 80 00 00 */	li r4, 0
/* 8025DF64 0025AEC4  90 01 00 78 */	stw r0, 0x78(r1)
/* 8025DF68 0025AEC8  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8025DF6C 0025AECC  38 60 00 01 */	li r3, 1
/* 8025DF70 0025AED0  90 81 01 B0 */	stw r4, 0x1b0(r1)
/* 8025DF74 0025AED4  90 01 00 78 */	stw r0, 0x78(r1)
/* 8025DF78 0025AED8  48 00 00 88 */	b lbl_8025E000
lbl_8025DF7C:
/* 8025DF7C 0025AEDC  3B 9C 00 02 */	addi r28, r28, 2
lbl_8025DF80:
/* 8025DF80 0025AEE0  80 A1 01 B0 */	lwz r5, 0x1b0(r1)
/* 8025DF84 0025AEE4  54 A0 08 3C */	slwi r0, r5, 1
/* 8025DF88 0025AEE8  7C 1D 02 14 */	add r0, r29, r0
/* 8025DF8C 0025AEEC  7C 1C 00 40 */	cmplw r28, r0
/* 8025DF90 0025AEF0  40 82 FE C4 */	bne lbl_8025DE54
/* 8025DF94 0025AEF4  2C 05 00 00 */	cmpwi r5, 0
/* 8025DF98 0025AEF8  38 60 00 00 */	li r3, 0
/* 8025DF9C 0025AEFC  40 81 00 40 */	ble lbl_8025DFDC
/* 8025DFA0 0025AF00  2C 05 00 08 */	cmpwi r5, 8
/* 8025DFA4 0025AF04  38 85 FF F8 */	addi r4, r5, -8
/* 8025DFA8 0025AF08  40 81 00 20 */	ble lbl_8025DFC8
/* 8025DFAC 0025AF0C  38 04 00 07 */	addi r0, r4, 7
/* 8025DFB0 0025AF10  54 00 E8 FE */	srwi r0, r0, 3
/* 8025DFB4 0025AF14  7C 09 03 A6 */	mtctr r0
/* 8025DFB8 0025AF18  2C 04 00 00 */	cmpwi r4, 0
/* 8025DFBC 0025AF1C  40 81 00 0C */	ble lbl_8025DFC8
lbl_8025DFC0:
/* 8025DFC0 0025AF20  38 63 00 08 */	addi r3, r3, 8
/* 8025DFC4 0025AF24  42 00 FF FC */	bdnz lbl_8025DFC0
lbl_8025DFC8:
/* 8025DFC8 0025AF28  7C 03 28 50 */	subf r0, r3, r5
/* 8025DFCC 0025AF2C  7C 09 03 A6 */	mtctr r0
/* 8025DFD0 0025AF30  7C 03 28 00 */	cmpw r3, r5
/* 8025DFD4 0025AF34  40 80 00 08 */	bge lbl_8025DFDC
lbl_8025DFD8:
/* 8025DFD8 0025AF38  42 00 00 00 */	bdnz lbl_8025DFD8
lbl_8025DFDC:
/* 8025DFDC 0025AF3C  3C 80 80 3F */	lis r4, lbl_803ECAF8@ha
/* 8025DFE0 0025AF40  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8025DFE4 0025AF44  38 04 CA F8 */	addi r0, r4, lbl_803ECAF8@l
/* 8025DFE8 0025AF48  38 80 00 00 */	li r4, 0
/* 8025DFEC 0025AF4C  90 01 00 78 */	stw r0, 0x78(r1)
/* 8025DFF0 0025AF50  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8025DFF4 0025AF54  38 60 00 00 */	li r3, 0
/* 8025DFF8 0025AF58  90 81 01 B0 */	stw r4, 0x1b0(r1)
/* 8025DFFC 0025AF5C  90 01 00 78 */	stw r0, 0x78(r1)
lbl_8025E000:
/* 8025E000 0025AF60  E3 E1 0A 18 */	psq_l f31, -1512(r1), 0, qr0
/* 8025E004 0025AF64  CB E1 0A 10 */	lfd f31, 0xa10(r1)
/* 8025E008 0025AF68  E3 C1 0A 08 */	psq_l f30, -1528(r1), 0, qr0
/* 8025E00C 0025AF6C  CB C1 0A 00 */	lfd f30, 0xa00(r1)
/* 8025E010 0025AF70  E3 A1 09 F8 */	psq_l f29, -1544(r1), 0, qr0
/* 8025E014 0025AF74  CB A1 09 F0 */	lfd f29, 0x9f0(r1)
/* 8025E018 0025AF78  E3 81 09 E8 */	psq_l f28, -1560(r1), 0, qr0
/* 8025E01C 0025AF7C  CB 81 09 E0 */	lfd f28, 0x9e0(r1)
/* 8025E020 0025AF80  BB 21 09 C4 */	lmw r25, 0x9c4(r1)
/* 8025E024 0025AF84  80 01 0A 24 */	lwz r0, 0xa24(r1)
/* 8025E028 0025AF88  7C 08 03 A6 */	mtlr r0
/* 8025E02C 0025AF8C  38 21 0A 20 */	addi r1, r1, 0xa20
/* 8025E030 0025AF90  4E 80 00 20 */	blr 

.global sub_8025e034
sub_8025e034:
/* 8025E034 0025AF94  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8025E038 0025AF98  7C 08 02 A6 */	mflr r0
/* 8025E03C 0025AF9C  2C 05 00 01 */	cmpwi r5, 1
/* 8025E040 0025AFA0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8025E044 0025AFA4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8025E048 0025AFA8  7C 7F 1B 78 */	mr r31, r3
/* 8025E04C 0025AFAC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8025E050 0025AFB0  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8025E054 0025AFB4  7C 9D 23 78 */	mr r29, r4
/* 8025E058 0025AFB8  83 C4 08 4C */	lwz r30, 0x84c(r4)
/* 8025E05C 0025AFBC  41 82 00 5C */	beq lbl_8025E0B8
/* 8025E060 0025AFC0  40 80 00 10 */	bge lbl_8025E070
/* 8025E064 0025AFC4  2C 05 00 00 */	cmpwi r5, 0
/* 8025E068 0025AFC8  40 80 00 14 */	bge lbl_8025E07C
/* 8025E06C 0025AFCC  48 00 01 2C */	b lbl_8025E198
lbl_8025E070:
/* 8025E070 0025AFD0  2C 05 00 03 */	cmpwi r5, 3
/* 8025E074 0025AFD4  40 80 01 24 */	bge lbl_8025E198
/* 8025E078 0025AFD8  48 00 00 D8 */	b lbl_8025E150
lbl_8025E07C:
/* 8025E07C 0025AFDC  7F C3 F3 78 */	mr r3, r30
/* 8025E080 0025AFE0  4B EB D2 F9 */	bl Stop__13CPhysicsActorFv
/* 8025E084 0025AFE4  7F C3 F3 78 */	mr r3, r30
/* 8025E088 0025AFE8  7F A5 EB 78 */	mr r5, r29
/* 8025E08C 0025AFEC  38 80 00 13 */	li r4, 0x13
/* 8025E090 0025AFF0  4B DF 5E F1 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025E094 0025AFF4  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8025E098 0025AFF8  38 80 00 00 */	li r4, 0
/* 8025E09C 0025AFFC  38 00 00 01 */	li r0, 1
/* 8025E0A0 0025B000  98 83 05 90 */	stb r4, 0x590(r3)
/* 8025E0A4 0025B004  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8025E0A8 0025B008  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025E0AC 0025B00C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8025E0B0 0025B010  98 1F 06 98 */	stb r0, 0x698(r31)
/* 8025E0B4 0025B014  48 00 00 E4 */	b lbl_8025E198
lbl_8025E0B8:
/* 8025E0B8 0025B018  3C A0 80 3F */	lis r5, lbl_803E9A34@ha
/* 8025E0BC 0025B01C  38 C1 00 24 */	addi r6, r1, 0x24
/* 8025E0C0 0025B020  39 45 9A 34 */	addi r10, r5, lbl_803E9A34@l
/* 8025E0C4 0025B024  38 A0 00 07 */	li r5, 7
/* 8025E0C8 0025B028  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025E0CC 0025B02C  38 E0 00 00 */	li r7, 0
/* 8025E0D0 0025B030  81 0A 00 04 */	lwz r8, 4(r10)
/* 8025E0D4 0025B034  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025E0D8 0025B038  91 21 00 24 */	stw r9, 0x24(r1)
/* 8025E0DC 0025B03C  91 01 00 28 */	stw r8, 0x28(r1)
/* 8025E0E0 0025B040  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8025E0E4 0025B044  4B E1 E6 D1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025E0E8 0025B048  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025E0EC 0025B04C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8025E0F0 0025B050  40 82 00 A8 */	bne lbl_8025E198
/* 8025E0F4 0025B054  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025E0F8 0025B058  38 61 00 14 */	addi r3, r1, 0x14
/* 8025E0FC 0025B05C  4B DA 6B BD */	bl string_l__4rstlFPCc
/* 8025E100 0025B060  7F E4 FB 78 */	mr r4, r31
/* 8025E104 0025B064  38 61 00 30 */	addi r3, r1, 0x30
/* 8025E108 0025B068  38 A1 00 14 */	addi r5, r1, 0x14
/* 8025E10C 0025B06C  4B E1 A8 6D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025E110 0025B070  38 61 00 60 */	addi r3, r1, 0x60
/* 8025E114 0025B074  38 81 00 30 */	addi r4, r1, 0x30
/* 8025E118 0025B078  48 0B 4A 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025E11C 0025B07C  38 61 00 14 */	addi r3, r1, 0x14
/* 8025E120 0025B080  48 0D F9 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025E124 0025B084  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8025E128 0025B088  7F E3 FB 78 */	mr r3, r31
/* 8025E12C 0025B08C  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8025E130 0025B090  7F A4 EB 78 */	mr r4, r29
/* 8025E134 0025B094  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8025E138 0025B098  38 A1 00 08 */	addi r5, r1, 8
/* 8025E13C 0025B09C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8025E140 0025B0A0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025E144 0025B0A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8025E148 0025B0A8  48 00 12 55 */	bl sub_8025f39c
/* 8025E14C 0025B0AC  48 00 00 4C */	b lbl_8025E198
lbl_8025E150:
/* 8025E150 0025B0B0  38 00 00 00 */	li r0, 0
/* 8025E154 0025B0B4  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8025E158 0025B0B8  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8025E15C 0025B0BC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8025E160 0025B0C0  A0 83 02 6C */	lhz r4, 0x26c(r3)
/* 8025E164 0025B0C4  7C 04 00 40 */	cmplw r4, r0
/* 8025E168 0025B0C8  40 82 00 30 */	bne lbl_8025E198
/* 8025E16C 0025B0CC  38 00 00 01 */	li r0, 1
/* 8025E170 0025B0D0  7F A5 EB 78 */	mr r5, r29
/* 8025E174 0025B0D4  98 03 05 90 */	stb r0, 0x590(r3)
/* 8025E178 0025B0D8  38 80 00 13 */	li r4, 0x13
/* 8025E17C 0025B0DC  4B DF 61 D5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025E180 0025B0E0  7F C3 F3 78 */	mr r3, r30
/* 8025E184 0025B0E4  4B DB 68 21 */	bl DetachActorFromPlayer__7CPlayerFv
/* 8025E188 0025B0E8  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025E18C 0025B0EC  38 60 00 00 */	li r3, 0
/* 8025E190 0025B0F0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8025E194 0025B0F4  98 1F 06 98 */	stb r0, 0x698(r31)
lbl_8025E198:
/* 8025E198 0025B0F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8025E19C 0025B0FC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8025E1A0 0025B100  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8025E1A4 0025B104  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8025E1A8 0025B108  7C 08 03 A6 */	mtlr r0
/* 8025E1AC 0025B10C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8025E1B0 0025B110  4E 80 00 20 */	blr 

.global sub_8025e1b4
sub_8025e1b4:
/* 8025E1B4 0025B114  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025E1B8 0025B118  7C 08 02 A6 */	mflr r0
/* 8025E1BC 0025B11C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025E1C0 0025B120  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025E1C4 0025B124  7C BF 2B 78 */	mr r31, r5
/* 8025E1C8 0025B128  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8025E1CC 0025B12C  7C 9E 23 78 */	mr r30, r4
/* 8025E1D0 0025B130  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8025E1D4 0025B134  7C 7D 1B 78 */	mr r29, r3
/* 8025E1D8 0025B138  4B F9 89 05 */	bl TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
/* 8025E1DC 0025B13C  2C 1F 00 00 */	cmpwi r31, 0
/* 8025E1E0 0025B140  41 82 00 08 */	beq lbl_8025E1E8
/* 8025E1E4 0025B144  48 00 00 64 */	b lbl_8025E248
lbl_8025E1E8:
/* 8025E1E8 0025B148  A0 7D 06 94 */	lhz r3, 0x694(r29)
/* 8025E1EC 0025B14C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E1F0 0025B150  7C 03 00 40 */	cmplw r3, r0
/* 8025E1F4 0025B154  41 82 00 54 */	beq lbl_8025E248
/* 8025E1F8 0025B158  A0 1D 06 94 */	lhz r0, 0x694(r29)
/* 8025E1FC 0025B15C  7F C3 F3 78 */	mr r3, r30
/* 8025E200 0025B160  38 81 00 08 */	addi r4, r1, 8
/* 8025E204 0025B164  B0 01 00 08 */	sth r0, 8(r1)
/* 8025E208 0025B168  4B DE E3 6D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025E20C 0025B16C  7C 64 1B 78 */	mr r4, r3
/* 8025E210 0025B170  38 61 00 0C */	addi r3, r1, 0xc
/* 8025E214 0025B174  4B E5 18 29 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025E218 0025B178  80 83 00 04 */	lwz r4, 4(r3)
/* 8025E21C 0025B17C  28 04 00 00 */	cmplwi r4, 0
/* 8025E220 0025B180  41 82 00 28 */	beq lbl_8025E248
/* 8025E224 0025B184  88 04 01 90 */	lbz r0, 0x190(r4)
/* 8025E228 0025B188  38 60 00 00 */	li r3, 0
/* 8025E22C 0025B18C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025E230 0025B190  98 04 01 90 */	stb r0, 0x190(r4)
/* 8025E234 0025B194  88 04 01 90 */	lbz r0, 0x190(r4)
/* 8025E238 0025B198  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8025E23C 0025B19C  98 04 01 90 */	stb r0, 0x190(r4)
/* 8025E240 0025B1A0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E244 0025B1A4  B0 1D 06 94 */	sth r0, 0x694(r29)
lbl_8025E248:
/* 8025E248 0025B1A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025E24C 0025B1AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8025E250 0025B1B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025E254 0025B1B4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8025E258 0025B1B8  7C 08 03 A6 */	mtlr r0
/* 8025E25C 0025B1BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8025E260 0025B1C0  4E 80 00 20 */	blr 

.global sub_8025e264
sub_8025e264:
/* 8025E264 0025B1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025E268 0025B1C8  7C 08 02 A6 */	mflr r0
/* 8025E26C 0025B1CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025E270 0025B1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025E274 0025B1D4  7C BF 2B 78 */	mr r31, r5
/* 8025E278 0025B1D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025E27C 0025B1DC  7C 9E 23 78 */	mr r30, r4
/* 8025E280 0025B1E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025E284 0025B1E4  7C 7D 1B 78 */	mr r29, r3
/* 8025E288 0025B1E8  4B F9 8B ED */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8025E28C 0025B1EC  2C 1F 00 01 */	cmpwi r31, 1
/* 8025E290 0025B1F0  41 82 00 28 */	beq lbl_8025E2B8
/* 8025E294 0025B1F4  40 80 00 30 */	bge lbl_8025E2C4
/* 8025E298 0025B1F8  2C 1F 00 00 */	cmpwi r31, 0
/* 8025E29C 0025B1FC  40 80 00 0C */	bge lbl_8025E2A8
/* 8025E2A0 0025B200  48 00 00 24 */	b lbl_8025E2C4
/* 8025E2A4 0025B204  48 00 00 20 */	b lbl_8025E2C4
lbl_8025E2A8:
/* 8025E2A8 0025B208  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8025E2AC 0025B20C  38 80 00 01 */	li r4, 1
/* 8025E2B0 0025B210  4B ED C7 29 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8025E2B4 0025B214  48 00 00 10 */	b lbl_8025E2C4
lbl_8025E2B8:
/* 8025E2B8 0025B218  7F A3 EB 78 */	mr r3, r29
/* 8025E2BC 0025B21C  7F C4 F3 78 */	mr r4, r30
/* 8025E2C0 0025B220  48 00 00 21 */	bl sub_8025e2e0
lbl_8025E2C4:
/* 8025E2C4 0025B224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025E2C8 0025B228  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025E2CC 0025B22C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025E2D0 0025B230  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025E2D4 0025B234  7C 08 03 A6 */	mtlr r0
/* 8025E2D8 0025B238  38 21 00 20 */	addi r1, r1, 0x20
/* 8025E2DC 0025B23C  4E 80 00 20 */	blr 

.global sub_8025e2e0
sub_8025e2e0:
/* 8025E2E0 0025B240  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8025E2E4 0025B244  7C 08 02 A6 */	mflr r0
/* 8025E2E8 0025B248  90 01 00 64 */	stw r0, 0x64(r1)
/* 8025E2EC 0025B24C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8025E2F0 0025B250  7C 7F 1B 78 */	mr r31, r3
/* 8025E2F4 0025B254  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8025E2F8 0025B258  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8025E2FC 0025B25C  93 81 00 50 */	stw r28, 0x50(r1)
/* 8025E300 0025B260  83 A4 08 38 */	lwz r29, 0x838(r4)
/* 8025E304 0025B264  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8025E308 0025B268  3B C4 66 A0 */	addi r30, r4, skZero3f@l
/* 8025E30C 0025B26C  AB 9D 20 08 */	lha r28, 0x2008(r29)
/* 8025E310 0025B270  48 00 01 04 */	b lbl_8025E414
lbl_8025E314:
/* 8025E314 0025B274  7F A3 EB 78 */	mr r3, r29
/* 8025E318 0025B278  7F 84 E3 78 */	mr r4, r28
/* 8025E31C 0025B27C  4B DB 19 C1 */	bl __vc__11CObjectListCFi
/* 8025E320 0025B280  7C 64 1B 78 */	mr r4, r3
/* 8025E324 0025B284  38 61 00 08 */	addi r3, r1, 8
/* 8025E328 0025B288  4B E4 E7 35 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 8025E32C 0025B28C  80 83 00 04 */	lwz r4, 4(r3)
/* 8025E330 0025B290  28 04 00 00 */	cmplwi r4, 0
/* 8025E334 0025B294  41 82 00 C4 */	beq lbl_8025E3F8
/* 8025E338 0025B298  7C 04 F8 40 */	cmplw r4, r31
/* 8025E33C 0025B29C  41 82 00 BC */	beq lbl_8025E3F8
/* 8025E340 0025B2A0  80 64 00 04 */	lwz r3, 4(r4)
/* 8025E344 0025B2A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 8025E348 0025B2A8  7C 03 00 00 */	cmpw r3, r0
/* 8025E34C 0025B2AC  40 82 00 AC */	bne lbl_8025E3F8
/* 8025E350 0025B2B0  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8025E354 0025B2B4  7F E5 FB 78 */	mr r5, r31
/* 8025E358 0025B2B8  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8025E35C 0025B2BC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8025E360 0025B2C0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8025E364 0025B2C4  38 9F 04 5C */	addi r4, r31, 0x45c
/* 8025E368 0025B2C8  C0 22 BA 38 */	lfs f1, lbl_805AD758@sda21(r2)
/* 8025E36C 0025B2CC  38 C1 00 10 */	addi r6, r1, 0x10
/* 8025E370 0025B2D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8025E374 0025B2D4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8025E378 0025B2D8  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8025E37C 0025B2DC  4B EE 05 75 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8025E380 0025B2E0  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 8025E384 0025B2E4  38 00 00 00 */	li r0, 0
/* 8025E388 0025B2E8  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 8025E38C 0025B2EC  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 8025E390 0025B2F0  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8025E394 0025B2F4  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 8025E398 0025B2F8  40 82 00 14 */	bne lbl_8025E3AC
/* 8025E39C 0025B2FC  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8025E3A0 0025B300  40 82 00 0C */	bne lbl_8025E3AC
/* 8025E3A4 0025B304  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8025E3A8 0025B308  41 82 00 08 */	beq lbl_8025E3B0
lbl_8025E3AC:
/* 8025E3AC 0025B30C  38 00 00 01 */	li r0, 1
lbl_8025E3B0:
/* 8025E3B0 0025B310  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8025E3B4 0025B314  41 82 00 44 */	beq lbl_8025E3F8
/* 8025E3B8 0025B318  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8025E3BC 0025B31C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8025E3C0 0025B320  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8025E3C4 0025B324  38 81 00 28 */	addi r4, r1, 0x28
/* 8025E3C8 0025B328  C0 63 66 A0 */	lfs f3, skZero3f@l(r3)
/* 8025E3CC 0025B32C  C0 02 BA 3C */	lfs f0, lbl_805AD75C@sda21(r2)
/* 8025E3D0 0025B330  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 8025E3D4 0025B334  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8025E3D8 0025B338  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8025E3DC 0025B33C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8025E3E0 0025B340  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8025E3E4 0025B344  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8025E3E8 0025B348  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8025E3EC 0025B34C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8025E3F0 0025B350  38 63 00 04 */	addi r3, r3, 4
/* 8025E3F4 0025B354  4B ED 33 25 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8025E3F8:
/* 8025E3F8 0025B358  2C 1C FF FF */	cmpwi r28, -1
/* 8025E3FC 0025B35C  41 82 00 14 */	beq lbl_8025E410
/* 8025E400 0025B360  57 83 18 38 */	slwi r3, r28, 3
/* 8025E404 0025B364  38 03 00 08 */	addi r0, r3, 8
/* 8025E408 0025B368  7F 9D 02 AE */	lhax r28, r29, r0
/* 8025E40C 0025B36C  48 00 00 08 */	b lbl_8025E414
lbl_8025E410:
/* 8025E410 0025B370  3B 80 FF FF */	li r28, -1
lbl_8025E414:
/* 8025E414 0025B374  2C 1C FF FF */	cmpwi r28, -1
/* 8025E418 0025B378  40 82 FE FC */	bne lbl_8025E314
/* 8025E41C 0025B37C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8025E420 0025B380  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8025E424 0025B384  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8025E428 0025B388  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8025E42C 0025B38C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8025E430 0025B390  7C 08 03 A6 */	mtlr r0
/* 8025E434 0025B394  38 21 00 60 */	addi r1, r1, 0x60
/* 8025E438 0025B398  4E 80 00 20 */	blr 

.global sub_8025e43c
sub_8025e43c:
/* 8025E43C 0025B39C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025E440 0025B3A0  7C 08 02 A6 */	mflr r0
/* 8025E444 0025B3A4  38 C0 00 19 */	li r6, 0x19
/* 8025E448 0025B3A8  38 E0 00 08 */	li r7, 8
/* 8025E44C 0025B3AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025E450 0025B3B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025E454 0025B3B4  7C 9F 23 78 */	mr r31, r4
/* 8025E458 0025B3B8  7F E5 FB 78 */	mr r5, r31
/* 8025E45C 0025B3BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8025E460 0025B3C0  7C 7E 1B 78 */	mr r30, r3
/* 8025E464 0025B3C4  7F C4 F3 78 */	mr r4, r30
/* 8025E468 0025B3C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8025E46C 0025B3CC  4B F9 6B 2D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8025E470 0025B3D0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8025E474 0025B3D4  7F E3 FB 78 */	mr r3, r31
/* 8025E478 0025B3D8  38 81 00 08 */	addi r4, r1, 8
/* 8025E47C 0025B3DC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8025E480 0025B3E0  B0 01 00 08 */	sth r0, 8(r1)
/* 8025E484 0025B3E4  4B DE E1 21 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025E488 0025B3E8  7C 64 1B 78 */	mr r4, r3
/* 8025E48C 0025B3EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8025E490 0025B3F0  4B E5 18 01 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8025E494 0025B3F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8025E498 0025B3F8  28 05 00 00 */	cmplwi r5, 0
/* 8025E49C 0025B3FC  41 82 00 30 */	beq lbl_8025E4CC
/* 8025E4A0 0025B400  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8025E4A4 0025B404  7F C3 F3 78 */	mr r3, r30
/* 8025E4A8 0025B408  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8025E4AC 0025B40C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8025E4B0 0025B410  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8025E4B4 0025B414  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8025E4B8 0025B418  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8025E4BC 0025B41C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8025E4C0 0025B420  4B E1 E6 9D */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8025E4C4 0025B424  38 60 00 01 */	li r3, 1
/* 8025E4C8 0025B428  48 00 00 08 */	b lbl_8025E4D0
lbl_8025E4CC:
/* 8025E4CC 0025B42C  38 60 00 00 */	li r3, 0
lbl_8025E4D0:
/* 8025E4D0 0025B430  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025E4D4 0025B434  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8025E4D8 0025B438  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025E4DC 0025B43C  7C 08 03 A6 */	mtlr r0
/* 8025E4E0 0025B440  38 21 00 30 */	addi r1, r1, 0x30
/* 8025E4E4 0025B444  4E 80 00 20 */	blr 

.global sub_8025e4e8
sub_8025e4e8:
/* 8025E4E8 0025B448  88 03 06 98 */	lbz r0, 0x698(r3)
/* 8025E4EC 0025B44C  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 8025E4F0 0025B450  4E 80 00 20 */	blr 

.global sub_8025e4f4
sub_8025e4f4:
/* 8025E4F4 0025B454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025E4F8 0025B458  7C 08 02 A6 */	mflr r0
/* 8025E4FC 0025B45C  7C 65 1B 78 */	mr r5, r3
/* 8025E500 0025B460  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025E504 0025B464  38 81 00 08 */	addi r4, r1, 8
/* 8025E508 0025B468  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8025E50C 0025B46C  38 65 05 68 */	addi r3, r5, 0x568
/* 8025E510 0025B470  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8025E514 0025B474  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8025E518 0025B478  D0 01 00 08 */	stfs f0, 8(r1)
/* 8025E51C 0025B47C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025E520 0025B480  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8025E524 0025B484  4B F6 86 11 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 8025E528 0025B488  2C 03 00 01 */	cmpwi r3, 1
/* 8025E52C 0025B48C  41 82 00 08 */	beq lbl_8025E534
/* 8025E530 0025B490  48 00 00 0C */	b lbl_8025E53C
lbl_8025E534:
/* 8025E534 0025B494  38 60 00 00 */	li r3, 0
/* 8025E538 0025B498  48 00 00 08 */	b lbl_8025E540
lbl_8025E53C:
/* 8025E53C 0025B49C  38 60 00 01 */	li r3, 1
lbl_8025E540:
/* 8025E540 0025B4A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025E544 0025B4A4  7C 08 03 A6 */	mtlr r0
/* 8025E548 0025B4A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025E54C 0025B4AC  4E 80 00 20 */	blr 

.global sub_8025e550
sub_8025e550:
/* 8025E550 0025B4B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E554 0025B4B4  7C 08 02 A6 */	mflr r0
/* 8025E558 0025B4B8  2C 05 00 00 */	cmpwi r5, 0
/* 8025E55C 0025B4BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E560 0025B4C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E564 0025B4C4  41 82 00 08 */	beq lbl_8025E56C
/* 8025E568 0025B4C8  48 00 00 4C */	b lbl_8025E5B4
lbl_8025E56C:
/* 8025E56C 0025B4CC  88 03 06 98 */	lbz r0, 0x698(r3)
/* 8025E570 0025B4D0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8025E574 0025B4D4  40 82 00 0C */	bne lbl_8025E580
/* 8025E578 0025B4D8  C0 02 BA 40 */	lfs f0, lbl_805AD760@sda21(r2)
/* 8025E57C 0025B4DC  D0 03 06 8C */	stfs f0, 0x68c(r3)
lbl_8025E580:
/* 8025E580 0025B4E0  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025E584 0025B4E4  A0 03 00 08 */	lhz r0, 8(r3)
/* 8025E588 0025B4E8  A0 7F 02 6C */	lhz r3, 0x26c(r31)
/* 8025E58C 0025B4EC  7C 03 00 40 */	cmplw r3, r0
/* 8025E590 0025B4F0  40 82 00 24 */	bne lbl_8025E5B4
/* 8025E594 0025B4F4  38 00 00 01 */	li r0, 1
/* 8025E598 0025B4F8  7F E3 FB 78 */	mr r3, r31
/* 8025E59C 0025B4FC  98 1F 05 90 */	stb r0, 0x590(r31)
/* 8025E5A0 0025B500  7C 85 23 78 */	mr r5, r4
/* 8025E5A4 0025B504  38 80 00 13 */	li r4, 0x13
/* 8025E5A8 0025B508  4B DF 5D A9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025E5AC 0025B50C  7F E3 FB 78 */	mr r3, r31
/* 8025E5B0 0025B510  4B DB 63 F5 */	bl DetachActorFromPlayer__7CPlayerFv
lbl_8025E5B4:
/* 8025E5B4 0025B514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E5B8 0025B518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E5BC 0025B51C  7C 08 03 A6 */	mtlr r0
/* 8025E5C0 0025B520  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E5C4 0025B524  4E 80 00 20 */	blr 

.global sub_8025e5c8
sub_8025e5c8:
/* 8025E5C8 0025B528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025E5CC 0025B52C  7C 08 02 A6 */	mflr r0
/* 8025E5D0 0025B530  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025E5D4 0025B534  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8025E5D8 0025B538  FF E0 08 90 */	fmr f31, f1
/* 8025E5DC 0025B53C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8025E5E0 0025B540  7C BF 2B 79 */	or. r31, r5, r5
/* 8025E5E4 0025B544  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8025E5E8 0025B548  7C 9E 23 78 */	mr r30, r4
/* 8025E5EC 0025B54C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8025E5F0 0025B550  7C 7D 1B 78 */	mr r29, r3
/* 8025E5F4 0025B554  41 82 00 0C */	beq lbl_8025E600
/* 8025E5F8 0025B558  41 80 00 14 */	blt lbl_8025E60C
/* 8025E5FC 0025B55C  48 00 00 10 */	b lbl_8025E60C
lbl_8025E600:
/* 8025E600 0025B560  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8025E604 0025B564  38 80 00 01 */	li r4, 1
/* 8025E608 0025B568  4B ED C3 D1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_8025E60C:
/* 8025E60C 0025B56C  FC 20 F8 90 */	fmr f1, f31
/* 8025E610 0025B570  7F A3 EB 78 */	mr r3, r29
/* 8025E614 0025B574  7F C4 F3 78 */	mr r4, r30
/* 8025E618 0025B578  7F E5 FB 78 */	mr r5, r31
/* 8025E61C 0025B57C  4B F9 85 4D */	bl TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8025E620 0025B580  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025E624 0025B584  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8025E628 0025B588  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8025E62C 0025B58C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8025E630 0025B590  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8025E634 0025B594  7C 08 03 A6 */	mtlr r0
/* 8025E638 0025B598  38 21 00 20 */	addi r1, r1, 0x20
/* 8025E63C 0025B59C  4E 80 00 20 */	blr 

.global sub_8025e640
sub_8025e640:
/* 8025E640 0025B5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8025E644 0025B5A4  7C 08 02 A6 */	mflr r0
/* 8025E648 0025B5A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025E64C 0025B5AC  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 8025E650 0025B5B0  7C 7C 1B 78 */	mr r28, r3
/* 8025E654 0025B5B4  7C 9D 23 78 */	mr r29, r4
/* 8025E658 0025B5B8  7C BE 2B 78 */	mr r30, r5
/* 8025E65C 0025B5BC  7C DF 33 78 */	mr r31, r6
/* 8025E660 0025B5C0  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8025E664 0025B5C4  83 64 08 4C */	lwz r27, 0x84c(r4)
/* 8025E668 0025B5C8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8025E66C 0025B5CC  41 82 00 98 */	beq lbl_8025E704
/* 8025E670 0025B5D0  A0 7B 02 6C */	lhz r3, 0x26c(r27)
/* 8025E674 0025B5D4  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025E678 0025B5D8  7C 03 00 40 */	cmplw r3, r0
/* 8025E67C 0025B5DC  40 82 00 28 */	bne lbl_8025E6A4
/* 8025E680 0025B5E0  38 00 00 01 */	li r0, 1
/* 8025E684 0025B5E4  7F 63 DB 78 */	mr r3, r27
/* 8025E688 0025B5E8  98 1B 05 90 */	stb r0, 0x590(r27)
/* 8025E68C 0025B5EC  7F A5 EB 78 */	mr r5, r29
/* 8025E690 0025B5F0  38 80 00 13 */	li r4, 0x13
/* 8025E694 0025B5F4  4B DF 5C BD */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025E698 0025B5F8  7F 63 DB 78 */	mr r3, r27
/* 8025E69C 0025B5FC  4B DB 63 09 */	bl DetachActorFromPlayer__7CPlayerFv
/* 8025E6A0 0025B600  48 00 00 64 */	b lbl_8025E704
lbl_8025E6A4:
/* 8025E6A4 0025B604  A0 7C 06 94 */	lhz r3, 0x694(r28)
/* 8025E6A8 0025B608  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E6AC 0025B60C  7C 03 00 40 */	cmplw r3, r0
/* 8025E6B0 0025B610  41 82 00 54 */	beq lbl_8025E704
/* 8025E6B4 0025B614  A0 1C 06 94 */	lhz r0, 0x694(r28)
/* 8025E6B8 0025B618  7F A3 EB 78 */	mr r3, r29
/* 8025E6BC 0025B61C  38 81 00 08 */	addi r4, r1, 8
/* 8025E6C0 0025B620  B0 01 00 08 */	sth r0, 8(r1)
/* 8025E6C4 0025B624  4B DE DE B1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025E6C8 0025B628  7C 64 1B 78 */	mr r4, r3
/* 8025E6CC 0025B62C  38 61 00 0C */	addi r3, r1, 0xc
/* 8025E6D0 0025B630  4B E5 13 6D */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025E6D4 0025B634  80 83 00 04 */	lwz r4, 4(r3)
/* 8025E6D8 0025B638  28 04 00 00 */	cmplwi r4, 0
/* 8025E6DC 0025B63C  41 82 00 20 */	beq lbl_8025E6FC
/* 8025E6E0 0025B640  88 04 01 90 */	lbz r0, 0x190(r4)
/* 8025E6E4 0025B644  38 60 00 00 */	li r3, 0
/* 8025E6E8 0025B648  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025E6EC 0025B64C  98 04 01 90 */	stb r0, 0x190(r4)
/* 8025E6F0 0025B650  88 04 01 90 */	lbz r0, 0x190(r4)
/* 8025E6F4 0025B654  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8025E6F8 0025B658  98 04 01 90 */	stb r0, 0x190(r4)
lbl_8025E6FC:
/* 8025E6FC 0025B65C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E700 0025B660  B0 1C 06 94 */	sth r0, 0x694(r28)
lbl_8025E704:
/* 8025E704 0025B664  7F 83 E3 78 */	mr r3, r28
/* 8025E708 0025B668  7F A4 EB 78 */	mr r4, r29
/* 8025E70C 0025B66C  7F C5 F3 78 */	mr r5, r30
/* 8025E710 0025B670  7F E6 FB 78 */	mr r6, r31
/* 8025E714 0025B674  4B E1 CC 91 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8025E718 0025B678  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 8025E71C 0025B67C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025E720 0025B680  7C 08 03 A6 */	mtlr r0
/* 8025E724 0025B684  38 21 00 30 */	addi r1, r1, 0x30
/* 8025E728 0025B688  4E 80 00 20 */	blr 

.global sub_8025e72c
sub_8025e72c:
/* 8025E72C 0025B68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E730 0025B690  7C 08 02 A6 */	mflr r0
/* 8025E734 0025B694  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E738 0025B698  88 03 06 98 */	lbz r0, 0x698(r3)
/* 8025E73C 0025B69C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8025E740 0025B6A0  41 82 00 0C */	beq lbl_8025E74C
/* 8025E744 0025B6A4  4B E4 46 2D */	bl GetDamageVulnerability__3CAiCFv
/* 8025E748 0025B6A8  48 00 00 0C */	b lbl_8025E754
lbl_8025E74C:
/* 8025E74C 0025B6AC  3C 60 80 57 */	lis r3, lbl_80572614@ha
/* 8025E750 0025B6B0  38 63 26 14 */	addi r3, r3, lbl_80572614@l
lbl_8025E754:
/* 8025E754 0025B6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E758 0025B6B8  7C 08 03 A6 */	mtlr r0
/* 8025E75C 0025B6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E760 0025B6C0  4E 80 00 20 */	blr 

.global sub_8025e764
sub_8025e764:
/* 8025E764 0025B6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E768 0025B6C8  7C 08 02 A6 */	mflr r0
/* 8025E76C 0025B6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E770 0025B6D0  88 03 06 98 */	lbz r0, 0x698(r3)
/* 8025E774 0025B6D4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8025E778 0025B6D8  41 82 00 0C */	beq lbl_8025E784
/* 8025E77C 0025B6DC  4B E4 45 F5 */	bl GetDamageVulnerability__3CAiCFv
/* 8025E780 0025B6E0  48 00 00 0C */	b lbl_8025E78C
lbl_8025E784:
/* 8025E784 0025B6E4  3C 60 80 57 */	lis r3, lbl_80572614@ha
/* 8025E788 0025B6E8  38 63 26 14 */	addi r3, r3, lbl_80572614@l
lbl_8025E78C:
/* 8025E78C 0025B6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E790 0025B6F0  7C 08 03 A6 */	mtlr r0
/* 8025E794 0025B6F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E798 0025B6F8  4E 80 00 20 */	blr 

.global sub_8025e79c
sub_8025e79c:
/* 8025E79C 0025B6FC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8025E7A0 0025B700  7C 08 02 A6 */	mflr r0
/* 8025E7A4 0025B704  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8025E7A8 0025B708  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8025E7AC 0025B70C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8025E7B0 0025B710  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 8025E7B4 0025B714  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 8025E7B8 0025B718  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8025E7BC 0025B71C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8025E7C0 0025B720  93 A1 00 74 */	stw r29, 0x74(r1)
/* 8025E7C4 0025B724  93 81 00 70 */	stw r28, 0x70(r1)
/* 8025E7C8 0025B728  7C DF 33 79 */	or. r31, r6, r6
/* 8025E7CC 0025B72C  FF C0 08 90 */	fmr f30, f1
/* 8025E7D0 0025B730  7C 7C 1B 78 */	mr r28, r3
/* 8025E7D4 0025B734  7C 9D 23 78 */	mr r29, r4
/* 8025E7D8 0025B738  7C BE 2B 78 */	mr r30, r5
/* 8025E7DC 0025B73C  38 00 00 00 */	li r0, 0
/* 8025E7E0 0025B740  41 82 00 08 */	beq lbl_8025E7E8
/* 8025E7E4 0025B744  48 00 00 78 */	b lbl_8025E85C
lbl_8025E7E8:
/* 8025E7E8 0025B748  A0 7C 06 94 */	lhz r3, 0x694(r28)
/* 8025E7EC 0025B74C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E7F0 0025B750  7C 03 00 40 */	cmplw r3, r0
/* 8025E7F4 0025B754  40 82 00 44 */	bne lbl_8025E838
/* 8025E7F8 0025B758  88 1C 06 98 */	lbz r0, 0x698(r28)
/* 8025E7FC 0025B75C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8025E800 0025B760  41 82 00 0C */	beq lbl_8025E80C
/* 8025E804 0025B764  C3 E2 BA 44 */	lfs f31, lbl_805AD764@sda21(r2)
/* 8025E808 0025B768  48 00 00 08 */	b lbl_8025E810
lbl_8025E80C:
/* 8025E80C 0025B76C  C3 FC 06 88 */	lfs f31, 0x688(r28)
lbl_8025E810:
/* 8025E810 0025B770  7F 84 E3 78 */	mr r4, r28
/* 8025E814 0025B774  38 61 00 38 */	addi r3, r1, 0x38
/* 8025E818 0025B778  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8025E81C 0025B77C  4B E1 A1 5D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025E820 0025B780  FC 20 F8 90 */	fmr f1, f31
/* 8025E824 0025B784  7F 83 E3 78 */	mr r3, r28
/* 8025E828 0025B788  7F A4 EB 78 */	mr r4, r29
/* 8025E82C 0025B78C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8025E830 0025B790  48 00 05 F9 */	bl sub_8025ee28
/* 8025E834 0025B794  48 00 00 24 */	b lbl_8025E858
lbl_8025E838:
/* 8025E838 0025B798  7F 84 E3 78 */	mr r4, r28
/* 8025E83C 0025B79C  38 61 00 08 */	addi r3, r1, 8
/* 8025E840 0025B7A0  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8025E844 0025B7A4  4B E1 A1 35 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025E848 0025B7A8  7F 83 E3 78 */	mr r3, r28
/* 8025E84C 0025B7AC  7F A4 EB 78 */	mr r4, r29
/* 8025E850 0025B7B0  38 A1 00 08 */	addi r5, r1, 8
/* 8025E854 0025B7B4  48 00 04 91 */	bl sub_8025ece4
lbl_8025E858:
/* 8025E858 0025B7B8  38 00 00 01 */	li r0, 1
lbl_8025E85C:
/* 8025E85C 0025B7BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8025E860 0025B7C0  40 82 00 1C */	bne lbl_8025E87C
/* 8025E864 0025B7C4  FC 20 F0 90 */	fmr f1, f30
/* 8025E868 0025B7C8  7F 83 E3 78 */	mr r3, r28
/* 8025E86C 0025B7CC  7F A4 EB 78 */	mr r4, r29
/* 8025E870 0025B7D0  7F C5 F3 78 */	mr r5, r30
/* 8025E874 0025B7D4  7F E6 FB 78 */	mr r6, r31
/* 8025E878 0025B7D8  4B E1 A6 39 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8025E87C:
/* 8025E87C 0025B7DC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8025E880 0025B7E0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8025E884 0025B7E4  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 8025E888 0025B7E8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 8025E88C 0025B7EC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8025E890 0025B7F0  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8025E894 0025B7F4  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 8025E898 0025B7F8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8025E89C 0025B7FC  83 81 00 70 */	lwz r28, 0x70(r1)
/* 8025E8A0 0025B800  7C 08 03 A6 */	mtlr r0
/* 8025E8A4 0025B804  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8025E8A8 0025B808  4E 80 00 20 */	blr 

.global sub_8025e8ac
sub_8025e8ac:
/* 8025E8AC 0025B80C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8025E8B0 0025B810  7C 08 02 A6 */	mflr r0
/* 8025E8B4 0025B814  90 01 01 24 */	stw r0, 0x124(r1)
/* 8025E8B8 0025B818  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 8025E8BC 0025B81C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 8025E8C0 0025B820  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8025E8C4 0025B824  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 8025E8C8 0025B828  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8025E8CC 0025B82C  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8025E8D0 0025B830  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8025E8D4 0025B834  2C 05 00 01 */	cmpwi r5, 1
/* 8025E8D8 0025B838  83 A4 08 4C */	lwz r29, 0x84c(r4)
/* 8025E8DC 0025B83C  7C 9F 23 78 */	mr r31, r4
/* 8025E8E0 0025B840  7C 7E 1B 78 */	mr r30, r3
/* 8025E8E4 0025B844  41 82 01 E0 */	beq lbl_8025EAC4
/* 8025E8E8 0025B848  40 80 00 10 */	bge lbl_8025E8F8
/* 8025E8EC 0025B84C  2C 05 00 00 */	cmpwi r5, 0
/* 8025E8F0 0025B850  40 80 00 14 */	bge lbl_8025E904
/* 8025E8F4 0025B854  48 00 02 B8 */	b lbl_8025EBAC
lbl_8025E8F8:
/* 8025E8F8 0025B858  2C 05 00 03 */	cmpwi r5, 3
/* 8025E8FC 0025B85C  40 80 02 B0 */	bge lbl_8025EBAC
/* 8025E900 0025B860  48 00 02 70 */	b lbl_8025EB70
lbl_8025E904:
/* 8025E904 0025B864  A0 7E 06 94 */	lhz r3, 0x694(r30)
/* 8025E908 0025B868  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E90C 0025B86C  7C 03 00 40 */	cmplw r3, r0
/* 8025E910 0025B870  40 82 00 28 */	bne lbl_8025E938
/* 8025E914 0025B874  7F A3 EB 78 */	mr r3, r29
/* 8025E918 0025B878  4B EB CA 61 */	bl Stop__13CPhysicsActorFv
/* 8025E91C 0025B87C  7F A3 EB 78 */	mr r3, r29
/* 8025E920 0025B880  7F E5 FB 78 */	mr r5, r31
/* 8025E924 0025B884  38 80 00 13 */	li r4, 0x13
/* 8025E928 0025B888  4B DF 56 59 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025E92C 0025B88C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8025E930 0025B890  38 00 00 00 */	li r0, 0
/* 8025E934 0025B894  98 03 05 90 */	stb r0, 0x590(r3)
lbl_8025E938:
/* 8025E938 0025B898  7F C4 F3 78 */	mr r4, r30
/* 8025E93C 0025B89C  7F E5 FB 78 */	mr r5, r31
/* 8025E940 0025B8A0  38 61 00 10 */	addi r3, r1, 0x10
/* 8025E944 0025B8A4  38 C0 00 19 */	li r6, 0x19
/* 8025E948 0025B8A8  38 E0 00 06 */	li r7, 6
/* 8025E94C 0025B8AC  4B F9 66 4D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8025E950 0025B8B0  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8025E954 0025B8B4  3B A0 00 00 */	li r29, 0
/* 8025E958 0025B8B8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025E95C 0025B8BC  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8025E960 0025B8C0  7C 03 00 40 */	cmplw r3, r0
/* 8025E964 0025B8C4  40 82 00 28 */	bne lbl_8025E98C
/* 8025E968 0025B8C8  7F C4 F3 78 */	mr r4, r30
/* 8025E96C 0025B8CC  7F E5 FB 78 */	mr r5, r31
/* 8025E970 0025B8D0  38 61 00 0C */	addi r3, r1, 0xc
/* 8025E974 0025B8D4  38 C0 00 0C */	li r6, 0xc
/* 8025E978 0025B8D8  38 E0 00 06 */	li r7, 6
/* 8025E97C 0025B8DC  4B F9 66 1D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8025E980 0025B8E0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8025E984 0025B8E4  3B A0 00 01 */	li r29, 1
/* 8025E988 0025B8E8  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_8025E98C:
/* 8025E98C 0025B8EC  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8025E990 0025B8F0  7F E3 FB 78 */	mr r3, r31
/* 8025E994 0025B8F4  38 81 00 08 */	addi r4, r1, 8
/* 8025E998 0025B8F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8025E99C 0025B8FC  4B DE DC 09 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025E9A0 0025B900  7C 64 1B 78 */	mr r4, r3
/* 8025E9A4 0025B904  38 61 00 18 */	addi r3, r1, 0x18
/* 8025E9A8 0025B908  4B E5 12 E9 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8025E9AC 0025B90C  80 63 00 04 */	lwz r3, 4(r3)
/* 8025E9B0 0025B910  28 03 00 00 */	cmplwi r3, 0
/* 8025E9B4 0025B914  41 82 01 F8 */	beq lbl_8025EBAC
/* 8025E9B8 0025B918  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8025E9BC 0025B91C  41 82 00 24 */	beq lbl_8025E9E0
/* 8025E9C0 0025B920  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 8025E9C4 0025B924  38 81 00 6C */	addi r4, r1, 0x6c
/* 8025E9C8 0025B928  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8025E9CC 0025B92C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8025E9D0 0025B930  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8025E9D4 0025B934  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8025E9D8 0025B938  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8025E9DC 0025B93C  48 00 00 44 */	b lbl_8025EA20
lbl_8025E9E0:
/* 8025E9E0 0025B940  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 8025E9E4 0025B944  38 81 00 54 */	addi r4, r1, 0x54
/* 8025E9E8 0025B948  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8025E9EC 0025B94C  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8025E9F0 0025B950  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8025E9F4 0025B954  EC 25 00 28 */	fsubs f1, f5, f0
/* 8025E9F8 0025B958  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8025E9FC 0025B95C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 8025EA00 0025B960  EC 44 10 28 */	fsubs f2, f4, f2
/* 8025EA04 0025B964  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8025EA08 0025B968  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025EA0C 0025B96C  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 8025EA10 0025B970  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 8025EA14 0025B974  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8025EA18 0025B978  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8025EA1C 0025B97C  D0 21 00 5C */	stfs f1, 0x5c(r1)
lbl_8025EA20:
/* 8025EA20 0025B980  C0 04 00 00 */	lfs f0, 0(r4)
/* 8025EA24 0025B984  38 61 00 78 */	addi r3, r1, 0x78
/* 8025EA28 0025B988  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8025EA2C 0025B98C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8025EA30 0025B990  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8025EA34 0025B994  C0 04 00 08 */	lfs f0, 8(r4)
/* 8025EA38 0025B998  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8025EA3C 0025B99C  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 8025EA40 0025B9A0  C3 FE 00 38 */	lfs f31, 0x38(r30)
/* 8025EA44 0025B9A4  48 0B 5E B5 */	bl Normalize__9CVector3fFv
/* 8025EA48 0025B9A8  C0 A2 BA 34 */	lfs f5, lbl_805AD754@sda21(r2)
/* 8025EA4C 0025B9AC  7F C3 F3 78 */	mr r3, r30
/* 8025EA50 0025B9B0  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 8025EA54 0025B9B4  38 81 00 48 */	addi r4, r1, 0x48
/* 8025EA58 0025B9B8  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 8025EA5C 0025B9BC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8025EA60 0025B9C0  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8025EA64 0025B9C4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8025EA68 0025B9C8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8025EA6C 0025B9CC  EC 64 18 2A */	fadds f3, f4, f3
/* 8025EA70 0025B9D0  EC 42 28 2A */	fadds f2, f2, f5
/* 8025EA74 0025B9D4  EC 01 00 2A */	fadds f0, f1, f0
/* 8025EA78 0025B9D8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8025EA7C 0025B9DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8025EA80 0025B9E0  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8025EA84 0025B9E4  4B E1 E0 D9 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8025EA88 0025B9E8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8025EA8C 0025B9EC  C0 41 00 78 */	lfs f2, 0x78(r1)
/* 8025EA90 0025B9F0  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8025EA94 0025B9F4  C0 82 BA 34 */	lfs f4, lbl_805AD754@sda21(r2)
/* 8025EA98 0025B9F8  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 8025EA9C 0025B9FC  C0 02 BA 48 */	lfs f0, lbl_805AD768@sda21(r2)
/* 8025EAA0 0025BA00  EC 3F 08 BA */	fmadds f1, f31, f2, f1
/* 8025EAA4 0025BA04  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8025EAA8 0025BA08  FC 20 0A 10 */	fabs f1, f1
/* 8025EAAC 0025BA0C  FC 20 08 18 */	frsp f1, f1
/* 8025EAB0 0025BA10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025EAB4 0025BA14  40 80 00 F8 */	bge lbl_8025EBAC
/* 8025EAB8 0025BA18  38 00 00 01 */	li r0, 1
/* 8025EABC 0025BA1C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 8025EAC0 0025BA20  48 00 00 EC */	b lbl_8025EBAC
lbl_8025EAC4:
/* 8025EAC4 0025BA24  3C A0 80 3F */	lis r5, lbl_803E9A28@ha
/* 8025EAC8 0025BA28  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8025EACC 0025BA2C  39 45 9A 28 */	addi r10, r5, lbl_803E9A28@l
/* 8025EAD0 0025BA30  38 A0 00 08 */	li r5, 8
/* 8025EAD4 0025BA34  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025EAD8 0025BA38  38 E0 00 00 */	li r7, 0
/* 8025EADC 0025BA3C  81 0A 00 04 */	lwz r8, 4(r10)
/* 8025EAE0 0025BA40  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025EAE4 0025BA44  91 21 00 3C */	stw r9, 0x3c(r1)
/* 8025EAE8 0025BA48  91 01 00 40 */	stw r8, 0x40(r1)
/* 8025EAEC 0025BA4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025EAF0 0025BA50  4B E1 DC C5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025EAF4 0025BA54  A0 7E 06 94 */	lhz r3, 0x694(r30)
/* 8025EAF8 0025BA58  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025EAFC 0025BA5C  7C 03 00 40 */	cmplw r3, r0
/* 8025EB00 0025BA60  40 82 00 60 */	bne lbl_8025EB60
/* 8025EB04 0025BA64  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025EB08 0025BA68  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025EB0C 0025BA6C  4B DA 61 AD */	bl string_l__4rstlFPCc
/* 8025EB10 0025BA70  7F C4 F3 78 */	mr r4, r30
/* 8025EB14 0025BA74  38 61 00 84 */	addi r3, r1, 0x84
/* 8025EB18 0025BA78  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8025EB1C 0025BA7C  4B E1 9E 5D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025EB20 0025BA80  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8025EB24 0025BA84  38 81 00 84 */	addi r4, r1, 0x84
/* 8025EB28 0025BA88  48 0B 40 4D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025EB2C 0025BA8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025EB30 0025BA90  48 0D EF B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025EB34 0025BA94  C0 41 00 C0 */	lfs f2, 0xc0(r1)
/* 8025EB38 0025BA98  7F C3 F3 78 */	mr r3, r30
/* 8025EB3C 0025BA9C  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 8025EB40 0025BAA0  7F E4 FB 78 */	mr r4, r31
/* 8025EB44 0025BAA4  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 8025EB48 0025BAA8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8025EB4C 0025BAAC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8025EB50 0025BAB0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8025EB54 0025BAB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8025EB58 0025BAB8  48 00 08 45 */	bl sub_8025f39c
/* 8025EB5C 0025BABC  48 00 00 50 */	b lbl_8025EBAC
lbl_8025EB60:
/* 8025EB60 0025BAC0  7F C3 F3 78 */	mr r3, r30
/* 8025EB64 0025BAC4  7F E4 FB 78 */	mr r4, r31
/* 8025EB68 0025BAC8  48 00 07 3D */	bl sub_8025f2a4
/* 8025EB6C 0025BACC  48 00 00 40 */	b lbl_8025EBAC
lbl_8025EB70:
/* 8025EB70 0025BAD0  38 60 00 00 */	li r3, 0
/* 8025EB74 0025BAD4  38 00 00 01 */	li r0, 1
/* 8025EB78 0025BAD8  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 8025EB7C 0025BADC  7F E5 FB 78 */	mr r5, r31
/* 8025EB80 0025BAE0  38 80 00 13 */	li r4, 0x13
/* 8025EB84 0025BAE4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8025EB88 0025BAE8  98 03 05 90 */	stb r0, 0x590(r3)
/* 8025EB8C 0025BAEC  4B DF 57 C5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025EB90 0025BAF0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8025EB94 0025BAF4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8025EB98 0025BAF8  A0 63 02 6C */	lhz r3, 0x26c(r3)
/* 8025EB9C 0025BAFC  7C 03 00 40 */	cmplw r3, r0
/* 8025EBA0 0025BB00  40 82 00 0C */	bne lbl_8025EBAC
/* 8025EBA4 0025BB04  7F A3 EB 78 */	mr r3, r29
/* 8025EBA8 0025BB08  4B DB 5D FD */	bl DetachActorFromPlayer__7CPlayerFv
lbl_8025EBAC:
/* 8025EBAC 0025BB0C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 8025EBB0 0025BB10  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8025EBB4 0025BB14  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 8025EBB8 0025BB18  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 8025EBBC 0025BB1C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8025EBC0 0025BB20  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8025EBC4 0025BB24  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8025EBC8 0025BB28  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8025EBCC 0025BB2C  7C 08 03 A6 */	mtlr r0
/* 8025EBD0 0025BB30  38 21 01 20 */	addi r1, r1, 0x120
/* 8025EBD4 0025BB34  4E 80 00 20 */	blr 

.global sub_8025ebd8
sub_8025ebd8:
/* 8025EBD8 0025BB38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025EBDC 0025BB3C  7C 08 02 A6 */	mflr r0
/* 8025EBE0 0025BB40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025EBE4 0025BB44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025EBE8 0025BB48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025EBEC 0025BB4C  7C 7E 1B 78 */	mr r30, r3
/* 8025EBF0 0025BB50  A0 63 06 94 */	lhz r3, 0x694(r3)
/* 8025EBF4 0025BB54  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025EBF8 0025BB58  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025EBFC 0025BB5C  7C 03 00 40 */	cmplw r3, r0
/* 8025EC00 0025BB60  41 82 00 C8 */	beq lbl_8025ECC8
/* 8025EC04 0025BB64  A0 1E 06 94 */	lhz r0, 0x694(r30)
/* 8025EC08 0025BB68  7C 83 23 78 */	mr r3, r4
/* 8025EC0C 0025BB6C  38 81 00 08 */	addi r4, r1, 8
/* 8025EC10 0025BB70  B0 01 00 08 */	sth r0, 8(r1)
/* 8025EC14 0025BB74  4B DE D9 61 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025EC18 0025BB78  7C 64 1B 78 */	mr r4, r3
/* 8025EC1C 0025BB7C  38 61 00 0C */	addi r3, r1, 0xc
/* 8025EC20 0025BB80  4B E5 0E 1D */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025EC24 0025BB84  80 A3 00 04 */	lwz r5, 4(r3)
/* 8025EC28 0025BB88  28 05 00 00 */	cmplwi r5, 0
/* 8025EC2C 0025BB8C  41 82 00 9C */	beq lbl_8025ECC8
/* 8025EC30 0025BB90  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8025EC34 0025BB94  2C 00 00 01 */	cmpwi r0, 1
/* 8025EC38 0025BB98  40 82 00 90 */	bne lbl_8025ECC8
/* 8025EC3C 0025BB9C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8025EC40 0025BBA0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8025EC44 0025BBA4  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 8025EC48 0025BBA8  EC 41 18 28 */	fsubs f2, f1, f3
/* 8025EC4C 0025BBAC  C0 DE 00 40 */	lfs f6, 0x40(r30)
/* 8025EC50 0025BBB0  EC A0 18 28 */	fsubs f5, f0, f3
/* 8025EC54 0025BBB4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8025EC58 0025BBB8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8025EC5C 0025BBBC  EC 81 30 28 */	fsubs f4, f1, f6
/* 8025EC60 0025BBC0  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8025EC64 0025BBC4  C0 FE 00 60 */	lfs f7, 0x60(r30)
/* 8025EC68 0025BBC8  EC C0 30 28 */	fsubs f6, f0, f6
/* 8025EC6C 0025BBCC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8025EC70 0025BBD0  EC 05 01 72 */	fmuls f0, f5, f5
/* 8025EC74 0025BBD4  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8025EC78 0025BBD8  EC 63 38 28 */	fsubs f3, f3, f7
/* 8025EC7C 0025BBDC  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8025EC80 0025BBE0  EC 42 38 28 */	fsubs f2, f2, f7
/* 8025EC84 0025BBE4  EC 06 01 BA */	fmadds f0, f6, f6, f0
/* 8025EC88 0025BBE8  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8025EC8C 0025BBEC  EC 02 00 BA */	fmadds f0, f2, f2, f0
/* 8025EC90 0025BBF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025EC94 0025BBF4  7C 00 00 26 */	mfcr r0
/* 8025EC98 0025BBF8  54 03 0F FF */	rlwinm. r3, r0, 1, 0x1f, 0x1f
/* 8025EC9C 0025BBFC  41 82 00 30 */	beq lbl_8025ECCC
/* 8025ECA0 0025BC00  88 05 01 90 */	lbz r0, 0x190(r5)
/* 8025ECA4 0025BC04  38 80 00 00 */	li r4, 0
/* 8025ECA8 0025BC08  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8025ECAC 0025BC0C  98 05 01 90 */	stb r0, 0x190(r5)
/* 8025ECB0 0025BC10  88 05 01 90 */	lbz r0, 0x190(r5)
/* 8025ECB4 0025BC14  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8025ECB8 0025BC18  98 05 01 90 */	stb r0, 0x190(r5)
/* 8025ECBC 0025BC1C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025ECC0 0025BC20  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8025ECC4 0025BC24  48 00 00 08 */	b lbl_8025ECCC
lbl_8025ECC8:
/* 8025ECC8 0025BC28  38 60 00 01 */	li r3, 1
lbl_8025ECCC:
/* 8025ECCC 0025BC2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025ECD0 0025BC30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025ECD4 0025BC34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025ECD8 0025BC38  7C 08 03 A6 */	mtlr r0
/* 8025ECDC 0025BC3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8025ECE0 0025BC40  4E 80 00 20 */	blr 

.global sub_8025ece4
sub_8025ece4:
/* 8025ECE4 0025BC44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8025ECE8 0025BC48  7C 08 02 A6 */	mflr r0
/* 8025ECEC 0025BC4C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8025ECF0 0025BC50  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8025ECF4 0025BC54  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8025ECF8 0025BC58  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8025ECFC 0025BC5C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8025ED00 0025BC60  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8025ED04 0025BC64  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 8025ED08 0025BC68  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8025ED0C 0025BC6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8025ED10 0025BC70  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8025ED14 0025BC74  7C 7D 1B 78 */	mr r29, r3
/* 8025ED18 0025BC78  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025ED1C 0025BC7C  A0 63 06 94 */	lhz r3, 0x694(r3)
/* 8025ED20 0025BC80  7C 9E 23 78 */	mr r30, r4
/* 8025ED24 0025BC84  7C 03 00 40 */	cmplw r3, r0
/* 8025ED28 0025BC88  41 82 00 A4 */	beq lbl_8025EDCC
/* 8025ED2C 0025BC8C  C0 45 00 24 */	lfs f2, 0x24(r5)
/* 8025ED30 0025BC90  38 61 00 20 */	addi r3, r1, 0x20
/* 8025ED34 0025BC94  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8025ED38 0025BC98  38 81 00 14 */	addi r4, r1, 0x14
/* 8025ED3C 0025BC9C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8025ED40 0025BCA0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8025ED44 0025BCA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8025ED48 0025BCA8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8025ED4C 0025BCAC  48 0B 5B 05 */	bl AsNormalized__9CVector3fCFv
/* 8025ED50 0025BCB0  A0 1D 06 94 */	lhz r0, 0x694(r29)
/* 8025ED54 0025BCB4  7F C3 F3 78 */	mr r3, r30
/* 8025ED58 0025BCB8  C3 E1 00 20 */	lfs f31, 0x20(r1)
/* 8025ED5C 0025BCBC  38 81 00 08 */	addi r4, r1, 8
/* 8025ED60 0025BCC0  B0 01 00 08 */	sth r0, 8(r1)
/* 8025ED64 0025BCC4  C3 C1 00 24 */	lfs f30, 0x24(r1)
/* 8025ED68 0025BCC8  C3 A1 00 28 */	lfs f29, 0x28(r1)
/* 8025ED6C 0025BCCC  4B DE D8 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025ED70 0025BCD0  7C 64 1B 78 */	mr r4, r3
/* 8025ED74 0025BCD4  38 61 00 0C */	addi r3, r1, 0xc
/* 8025ED78 0025BCD8  4B E5 0C C5 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025ED7C 0025BCDC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8025ED80 0025BCE0  28 1F 00 00 */	cmplwi r31, 0
/* 8025ED84 0025BCE4  41 82 00 48 */	beq lbl_8025EDCC
/* 8025ED88 0025BCE8  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8025ED8C 0025BCEC  48 0B 37 51 */	bl Float__9CRandom16Fv
/* 8025ED90 0025BCF0  C0 62 BA 44 */	lfs f3, lbl_805AD764@sda21(r2)
/* 8025ED94 0025BCF4  C0 02 BA 4C */	lfs f0, lbl_805AD76C@sda21(r2)
/* 8025ED98 0025BCF8  C0 42 96 A0 */	lfs f2, lbl_805AB3C0@sda21(r2)
/* 8025ED9C 0025BCFC  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 8025EDA0 0025BD00  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 8025EDA4 0025BD04  FC 80 10 50 */	fneg f4, f2
/* 8025EDA8 0025BD08  EC 61 07 F2 */	fmuls f3, f1, f31
/* 8025EDAC 0025BD0C  EC 41 07 B2 */	fmuls f2, f1, f30
/* 8025EDB0 0025BD10  EC 21 07 72 */	fmuls f1, f1, f29
/* 8025EDB4 0025BD14  D0 7F 01 58 */	stfs f3, 0x158(r31)
/* 8025EDB8 0025BD18  D0 5F 01 5C */	stfs f2, 0x15c(r31)
/* 8025EDBC 0025BD1C  D0 3F 01 60 */	stfs f1, 0x160(r31)
/* 8025EDC0 0025BD20  D0 1F 01 64 */	stfs f0, 0x164(r31)
/* 8025EDC4 0025BD24  D0 1F 01 68 */	stfs f0, 0x168(r31)
/* 8025EDC8 0025BD28  D0 9F 01 6C */	stfs f4, 0x16c(r31)
lbl_8025EDCC:
/* 8025EDCC 0025BD2C  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 8025EDD0 0025BD30  38 60 00 00 */	li r3, 0
/* 8025EDD4 0025BD34  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025EDD8 0025BD38  38 60 00 01 */	li r3, 1
/* 8025EDDC 0025BD3C  98 1D 06 98 */	stb r0, 0x698(r29)
/* 8025EDE0 0025BD40  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 8025EDE4 0025BD44  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8025EDE8 0025BD48  98 1D 06 98 */	stb r0, 0x698(r29)
/* 8025EDEC 0025BD4C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025EDF0 0025BD50  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8025EDF4 0025BD54  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8025EDF8 0025BD58  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8025EDFC 0025BD5C  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8025EE00 0025BD60  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8025EE04 0025BD64  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 8025EE08 0025BD68  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8025EE0C 0025BD6C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8025EE10 0025BD70  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8025EE14 0025BD74  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8025EE18 0025BD78  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8025EE1C 0025BD7C  7C 08 03 A6 */	mtlr r0
/* 8025EE20 0025BD80  38 21 00 70 */	addi r1, r1, 0x70
/* 8025EE24 0025BD84  4E 80 00 20 */	blr 

.global sub_8025ee28
sub_8025ee28:
/* 8025EE28 0025BD88  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8025EE2C 0025BD8C  7C 08 02 A6 */	mflr r0
/* 8025EE30 0025BD90  90 01 01 44 */	stw r0, 0x144(r1)
/* 8025EE34 0025BD94  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8025EE38 0025BD98  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 8025EE3C 0025BD9C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8025EE40 0025BDA0  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 8025EE44 0025BDA4  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8025EE48 0025BDA8  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 8025EE4C 0025BDAC  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8025EE50 0025BDB0  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 8025EE54 0025BDB4  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8025EE58 0025BDB8  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8025EE5C 0025BDBC  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8025EE60 0025BDC0  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 8025EE64 0025BDC4  7C BE 2B 78 */	mr r30, r5
/* 8025EE68 0025BDC8  7C 9D 23 78 */	mr r29, r4
/* 8025EE6C 0025BDCC  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025EE70 0025BDD0  7C 7C 1B 78 */	mr r28, r3
/* 8025EE74 0025BDD4  C0 45 00 24 */	lfs f2, 0x24(r5)
/* 8025EE78 0025BDD8  FF E0 08 90 */	fmr f31, f1
/* 8025EE7C 0025BDDC  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8025EE80 0025BDE0  38 61 00 44 */	addi r3, r1, 0x44
/* 8025EE84 0025BDE4  C0 05 00 04 */	lfs f0, 4(r5)
/* 8025EE88 0025BDE8  38 81 00 38 */	addi r4, r1, 0x38
/* 8025EE8C 0025BDEC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8025EE90 0025BDF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8025EE94 0025BDF4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8025EE98 0025BDF8  48 0B 59 B9 */	bl AsNormalized__9CVector3fCFv
/* 8025EE9C 0025BDFC  C3 C1 00 44 */	lfs f30, 0x44(r1)
/* 8025EEA0 0025BE00  38 60 00 01 */	li r3, 1
/* 8025EEA4 0025BE04  C3 A1 00 48 */	lfs f29, 0x48(r1)
/* 8025EEA8 0025BE08  C3 81 00 4C */	lfs f28, 0x4c(r1)
/* 8025EEAC 0025BE0C  98 7F 05 90 */	stb r3, 0x590(r31)
/* 8025EEB0 0025BE10  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8025EEB4 0025BE14  2C 00 00 01 */	cmpwi r0, 1
/* 8025EEB8 0025BE18  40 82 01 70 */	bne lbl_8025F028
/* 8025EEBC 0025BE1C  88 1C 06 98 */	lbz r0, 0x698(r28)
/* 8025EEC0 0025BE20  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8025EEC4 0025BE24  C0 02 BA 40 */	lfs f0, lbl_805AD760@sda21(r2)
/* 8025EEC8 0025BE28  7F E3 FB 78 */	mr r3, r31
/* 8025EECC 0025BE2C  98 1C 06 98 */	stb r0, 0x698(r28)
/* 8025EED0 0025BE30  D0 1C 06 8C */	stfs f0, 0x68c(r28)
/* 8025EED4 0025BE34  4B EB C4 A5 */	bl Stop__13CPhysicsActorFv
/* 8025EED8 0025BE38  7F C4 F3 78 */	mr r4, r30
/* 8025EEDC 0025BE3C  38 61 00 84 */	addi r3, r1, 0x84
/* 8025EEE0 0025BE40  38 BC 06 4C */	addi r5, r28, 0x64c
/* 8025EEE4 0025BE44  48 0B 3A 6D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8025EEE8 0025BE48  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8025EEEC 0025BE4C  38 81 00 84 */	addi r4, r1, 0x84
/* 8025EEF0 0025BE50  48 0B 3C 85 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025EEF4 0025BE54  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8025EEF8 0025BE58  7F E3 FB 78 */	mr r3, r31
/* 8025EEFC 0025BE5C  C0 82 BA 34 */	lfs f4, lbl_805AD754@sda21(r2)
/* 8025EF00 0025BE60  7F A5 EB 78 */	mr r5, r29
/* 8025EF04 0025BE64  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 8025EF08 0025BE68  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8025EF0C 0025BE6C  EC 60 20 2A */	fadds f3, f0, f4
/* 8025EF10 0025BE70  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 8025EF14 0025BE74  C0 02 BA 50 */	lfs f0, lbl_805AD770@sda21(r2)
/* 8025EF18 0025BE78  EC 42 20 2A */	fadds f2, f2, f4
/* 8025EF1C 0025BE7C  38 C0 00 00 */	li r6, 0
/* 8025EF20 0025BE80  EC 01 00 2A */	fadds f0, f1, f0
/* 8025EF24 0025BE84  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 8025EF28 0025BE88  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 8025EF2C 0025BE8C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8025EF30 0025BE90  48 02 61 6D */	bl Teleport__7CPlayerFRC12CTransform4fR13CStateManagerb
/* 8025EF34 0025BE94  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8025EF38 0025BE98  EC 60 07 B2 */	fmuls f3, f0, f30
/* 8025EF3C 0025BE9C  EC 40 07 72 */	fmuls f2, f0, f29
/* 8025EF40 0025BEA0  EC 20 07 32 */	fmuls f1, f0, f28
/* 8025EF44 0025BEA4  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8025EF48 0025BEA8  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8025EF4C 0025BEAC  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 8025EF50 0025BEB0  EC 7F 00 72 */	fmuls f3, f31, f1
/* 8025EF54 0025BEB4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8025EF58 0025BEB8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8025EF5C 0025BEBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8025EF60 0025BEC0  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8025EF64 0025BEC4  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8025EF68 0025BEC8  4B DB C5 CD */	bl Identity__10CAxisAngleFv
/* 8025EF6C 0025BECC  7C 65 1B 78 */	mr r5, r3
/* 8025EF70 0025BED0  7F E3 FB 78 */	mr r3, r31
/* 8025EF74 0025BED4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8025EF78 0025BED8  4B EB D4 21 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8025EF7C 0025BEDC  7F E3 FB 78 */	mr r3, r31
/* 8025EF80 0025BEE0  7F A5 EB 78 */	mr r5, r29
/* 8025EF84 0025BEE4  38 80 00 02 */	li r4, 2
/* 8025EF88 0025BEE8  48 02 74 65 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
/* 8025EF8C 0025BEEC  7F E3 FB 78 */	mr r3, r31
/* 8025EF90 0025BEF0  7F A5 EB 78 */	mr r5, r29
/* 8025EF94 0025BEF4  38 80 00 13 */	li r4, 0x13
/* 8025EF98 0025BEF8  4B DF 53 B9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025EF9C 0025BEFC  80 AD 97 E0 */	lwz r5, lbl_805A83A0@sda21(r13)
/* 8025EFA0 0025BF00  38 60 00 00 */	li r3, 0
/* 8025EFA4 0025BF04  38 80 00 01 */	li r4, 1
/* 8025EFA8 0025BF08  48 12 AF 4D */	bl __shl2i
/* 8025EFAC 0025BF0C  38 A0 00 00 */	li r5, 0
/* 8025EFB0 0025BF10  38 00 00 03 */	li r0, 3
/* 8025EFB4 0025BF14  90 81 00 54 */	stw r4, 0x54(r1)
/* 8025EFB8 0025BF18  7F 84 E3 78 */	mr r4, r28
/* 8025EFBC 0025BF1C  90 61 00 50 */	stw r3, 0x50(r1)
/* 8025EFC0 0025BF20  38 61 00 68 */	addi r3, r1, 0x68
/* 8025EFC4 0025BF24  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8025EFC8 0025BF28  90 A1 00 58 */	stw r5, 0x58(r1)
/* 8025EFCC 0025BF2C  90 01 00 60 */	stw r0, 0x60(r1)
/* 8025EFD0 0025BF30  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025EFD4 0025BF34  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8025EFD8 0025BF38  A0 BF 00 08 */	lhz r5, 8(r31)
/* 8025EFDC 0025BF3C  B0 01 00 08 */	sth r0, 8(r1)
/* 8025EFE0 0025BF40  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 8025EFE4 0025BF44  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025EFE8 0025BF48  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8025EFEC 0025BF4C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8025EFF0 0025BF50  81 9C 00 00 */	lwz r12, 0(r28)
/* 8025EFF4 0025BF54  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8025EFF8 0025BF58  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8025EFFC 0025BF5C  7D 89 03 A6 */	mtctr r12
/* 8025F000 0025BF60  4E 80 04 21 */	bctrl 
/* 8025F004 0025BF64  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8025F008 0025BF68  7F A3 EB 78 */	mr r3, r29
/* 8025F00C 0025BF6C  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 8025F010 0025BF70  38 A1 00 14 */	addi r5, r1, 0x14
/* 8025F014 0025BF74  38 81 00 1C */	addi r4, r1, 0x1c
/* 8025F018 0025BF78  38 C1 00 0C */	addi r6, r1, 0xc
/* 8025F01C 0025BF7C  38 E1 00 68 */	addi r7, r1, 0x68
/* 8025F020 0025BF80  39 01 00 50 */	addi r8, r1, 0x50
/* 8025F024 0025BF84  4B DE B0 7D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8025F028:
/* 8025F028 0025BF88  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 8025F02C 0025BF8C  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8025F030 0025BF90  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 8025F034 0025BF94  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8025F038 0025BF98  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 8025F03C 0025BF9C  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8025F040 0025BFA0  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 8025F044 0025BFA4  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8025F048 0025BFA8  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8025F04C 0025BFAC  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8025F050 0025BFB0  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8025F054 0025BFB4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8025F058 0025BFB8  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 8025F05C 0025BFBC  7C 08 03 A6 */	mtlr r0
/* 8025F060 0025BFC0  38 21 01 40 */	addi r1, r1, 0x140
/* 8025F064 0025BFC4  4E 80 00 20 */	blr 

.global sub_8025f068
sub_8025f068:
/* 8025F068 0025BFC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025F06C 0025BFCC  7C 08 02 A6 */	mflr r0
/* 8025F070 0025BFD0  2C 05 00 01 */	cmpwi r5, 1
/* 8025F074 0025BFD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025F078 0025BFD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025F07C 0025BFDC  7C 9F 23 78 */	mr r31, r4
/* 8025F080 0025BFE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025F084 0025BFE4  7C 7E 1B 78 */	mr r30, r3
/* 8025F088 0025BFE8  41 82 00 3C */	beq lbl_8025F0C4
/* 8025F08C 0025BFEC  40 80 00 10 */	bge lbl_8025F09C
/* 8025F090 0025BFF0  2C 05 00 00 */	cmpwi r5, 0
/* 8025F094 0025BFF4  40 80 00 14 */	bge lbl_8025F0A8
/* 8025F098 0025BFF8  48 00 00 80 */	b lbl_8025F118
lbl_8025F09C:
/* 8025F09C 0025BFFC  2C 05 00 03 */	cmpwi r5, 3
/* 8025F0A0 0025C000  40 80 00 78 */	bge lbl_8025F118
/* 8025F0A4 0025C004  48 00 00 6C */	b lbl_8025F110
lbl_8025F0A8:
/* 8025F0A8 0025C008  38 00 00 01 */	li r0, 1
/* 8025F0AC 0025C00C  38 60 00 00 */	li r3, 0
/* 8025F0B0 0025C010  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 8025F0B4 0025C014  88 1E 06 98 */	lbz r0, 0x698(r30)
/* 8025F0B8 0025C018  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8025F0BC 0025C01C  98 1E 06 98 */	stb r0, 0x698(r30)
/* 8025F0C0 0025C020  48 00 00 58 */	b lbl_8025F118
lbl_8025F0C4:
/* 8025F0C4 0025C024  3C A0 80 3F */	lis r5, lbl_803E9A1C@ha
/* 8025F0C8 0025C028  38 C1 00 08 */	addi r6, r1, 8
/* 8025F0CC 0025C02C  39 45 9A 1C */	addi r10, r5, lbl_803E9A1C@l
/* 8025F0D0 0025C030  38 A0 00 07 */	li r5, 7
/* 8025F0D4 0025C034  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025F0D8 0025C038  38 E0 00 01 */	li r7, 1
/* 8025F0DC 0025C03C  81 0A 00 04 */	lwz r8, 4(r10)
/* 8025F0E0 0025C040  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025F0E4 0025C044  91 21 00 08 */	stw r9, 8(r1)
/* 8025F0E8 0025C048  91 01 00 0C */	stw r8, 0xc(r1)
/* 8025F0EC 0025C04C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025F0F0 0025C050  4B E1 D6 C5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025F0F4 0025C054  88 1E 06 98 */	lbz r0, 0x698(r30)
/* 8025F0F8 0025C058  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8025F0FC 0025C05C  40 82 00 1C */	bne lbl_8025F118
/* 8025F100 0025C060  7F C3 F3 78 */	mr r3, r30
/* 8025F104 0025C064  7F E4 FB 78 */	mr r4, r31
/* 8025F108 0025C068  48 00 01 9D */	bl sub_8025f2a4
/* 8025F10C 0025C06C  48 00 00 0C */	b lbl_8025F118
lbl_8025F110:
/* 8025F110 0025C070  38 00 00 00 */	li r0, 0
/* 8025F114 0025C074  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_8025F118:
/* 8025F118 0025C078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025F11C 0025C07C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025F120 0025C080  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025F124 0025C084  7C 08 03 A6 */	mtlr r0
/* 8025F128 0025C088  38 21 00 20 */	addi r1, r1, 0x20
/* 8025F12C 0025C08C  4E 80 00 20 */	blr 

.global sub_8025f130
sub_8025f130:
/* 8025F130 0025C090  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8025F134 0025C094  7C 08 02 A6 */	mflr r0
/* 8025F138 0025C098  2C 05 00 01 */	cmpwi r5, 1
/* 8025F13C 0025C09C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8025F140 0025C0A0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8025F144 0025C0A4  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8025F148 0025C0A8  7C 9E 23 78 */	mr r30, r4
/* 8025F14C 0025C0AC  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8025F150 0025C0B0  7C 7D 1B 78 */	mr r29, r3
/* 8025F154 0025C0B4  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025F158 0025C0B8  41 82 00 5C */	beq lbl_8025F1B4
/* 8025F15C 0025C0BC  40 80 00 10 */	bge lbl_8025F16C
/* 8025F160 0025C0C0  2C 05 00 00 */	cmpwi r5, 0
/* 8025F164 0025C0C4  40 80 00 14 */	bge lbl_8025F178
/* 8025F168 0025C0C8  48 00 01 20 */	b lbl_8025F288
lbl_8025F16C:
/* 8025F16C 0025C0CC  2C 05 00 03 */	cmpwi r5, 3
/* 8025F170 0025C0D0  40 80 01 18 */	bge lbl_8025F288
/* 8025F174 0025C0D4  48 00 00 D8 */	b lbl_8025F24C
lbl_8025F178:
/* 8025F178 0025C0D8  7F E3 FB 78 */	mr r3, r31
/* 8025F17C 0025C0DC  4B EB C1 FD */	bl Stop__13CPhysicsActorFv
/* 8025F180 0025C0E0  7F E3 FB 78 */	mr r3, r31
/* 8025F184 0025C0E4  7F C5 F3 78 */	mr r5, r30
/* 8025F188 0025C0E8  38 80 00 13 */	li r4, 0x13
/* 8025F18C 0025C0EC  4B DF 4D F5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025F190 0025C0F0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8025F194 0025C0F4  38 80 00 00 */	li r4, 0
/* 8025F198 0025C0F8  38 00 00 01 */	li r0, 1
/* 8025F19C 0025C0FC  98 83 05 90 */	stb r4, 0x590(r3)
/* 8025F1A0 0025C100  90 1D 03 2C */	stw r0, 0x32c(r29)
/* 8025F1A4 0025C104  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 8025F1A8 0025C108  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8025F1AC 0025C10C  98 1D 06 98 */	stb r0, 0x698(r29)
/* 8025F1B0 0025C110  48 00 00 D8 */	b lbl_8025F288
lbl_8025F1B4:
/* 8025F1B4 0025C114  3C A0 80 3F */	lis r5, lbl_803E9A10@ha
/* 8025F1B8 0025C118  38 C1 00 24 */	addi r6, r1, 0x24
/* 8025F1BC 0025C11C  39 45 9A 10 */	addi r10, r5, lbl_803E9A10@l
/* 8025F1C0 0025C120  38 A0 00 07 */	li r5, 7
/* 8025F1C4 0025C124  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025F1C8 0025C128  38 E0 00 01 */	li r7, 1
/* 8025F1CC 0025C12C  81 0A 00 04 */	lwz r8, 4(r10)
/* 8025F1D0 0025C130  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025F1D4 0025C134  91 21 00 24 */	stw r9, 0x24(r1)
/* 8025F1D8 0025C138  91 01 00 28 */	stw r8, 0x28(r1)
/* 8025F1DC 0025C13C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8025F1E0 0025C140  4B E1 D5 D5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025F1E4 0025C144  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 8025F1E8 0025C148  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8025F1EC 0025C14C  40 82 00 9C */	bne lbl_8025F288
/* 8025F1F0 0025C150  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025F1F4 0025C154  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F1F8 0025C158  4B DA 5A C1 */	bl string_l__4rstlFPCc
/* 8025F1FC 0025C15C  7F A4 EB 78 */	mr r4, r29
/* 8025F200 0025C160  38 61 00 30 */	addi r3, r1, 0x30
/* 8025F204 0025C164  38 A1 00 14 */	addi r5, r1, 0x14
/* 8025F208 0025C168  4B E1 97 71 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025F20C 0025C16C  38 61 00 60 */	addi r3, r1, 0x60
/* 8025F210 0025C170  38 81 00 30 */	addi r4, r1, 0x30
/* 8025F214 0025C174  48 0B 39 61 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025F218 0025C178  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F21C 0025C17C  48 0D E8 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025F220 0025C180  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8025F224 0025C184  7F A3 EB 78 */	mr r3, r29
/* 8025F228 0025C188  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8025F22C 0025C18C  7F C4 F3 78 */	mr r4, r30
/* 8025F230 0025C190  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8025F234 0025C194  38 A1 00 08 */	addi r5, r1, 8
/* 8025F238 0025C198  D0 41 00 08 */	stfs f2, 8(r1)
/* 8025F23C 0025C19C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8025F240 0025C1A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8025F244 0025C1A4  48 00 01 59 */	bl sub_8025f39c
/* 8025F248 0025C1A8  48 00 00 40 */	b lbl_8025F288
lbl_8025F24C:
/* 8025F24C 0025C1AC  38 00 00 00 */	li r0, 0
/* 8025F250 0025C1B0  90 1D 03 2C */	stw r0, 0x32c(r29)
/* 8025F254 0025C1B4  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8025F258 0025C1B8  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8025F25C 0025C1BC  A0 63 02 6C */	lhz r3, 0x26c(r3)
/* 8025F260 0025C1C0  7C 03 00 40 */	cmplw r3, r0
/* 8025F264 0025C1C4  40 82 00 0C */	bne lbl_8025F270
/* 8025F268 0025C1C8  7F E3 FB 78 */	mr r3, r31
/* 8025F26C 0025C1CC  4B DB 57 39 */	bl DetachActorFromPlayer__7CPlayerFv
lbl_8025F270:
/* 8025F270 0025C1D0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8025F274 0025C1D4  38 00 00 01 */	li r0, 1
/* 8025F278 0025C1D8  7F C5 F3 78 */	mr r5, r30
/* 8025F27C 0025C1DC  38 80 00 13 */	li r4, 0x13
/* 8025F280 0025C1E0  98 03 05 90 */	stb r0, 0x590(r3)
/* 8025F284 0025C1E4  4B DF 50 CD */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8025F288:
/* 8025F288 0025C1E8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8025F28C 0025C1EC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8025F290 0025C1F0  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8025F294 0025C1F4  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8025F298 0025C1F8  7C 08 03 A6 */	mtlr r0
/* 8025F29C 0025C1FC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8025F2A0 0025C200  4E 80 00 20 */	blr 

.global sub_8025f2a4
sub_8025f2a4:
/* 8025F2A4 0025C204  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8025F2A8 0025C208  7C 08 02 A6 */	mflr r0
/* 8025F2AC 0025C20C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8025F2B0 0025C210  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8025F2B4 0025C214  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8025F2B8 0025C218  7C 7E 1B 78 */	mr r30, r3
/* 8025F2BC 0025C21C  A0 03 06 94 */	lhz r0, 0x694(r3)
/* 8025F2C0 0025C220  7C 83 23 78 */	mr r3, r4
/* 8025F2C4 0025C224  38 81 00 08 */	addi r4, r1, 8
/* 8025F2C8 0025C228  B0 01 00 08 */	sth r0, 8(r1)
/* 8025F2CC 0025C22C  4B DE D2 A9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025F2D0 0025C230  7C 64 1B 78 */	mr r4, r3
/* 8025F2D4 0025C234  38 61 00 0C */	addi r3, r1, 0xc
/* 8025F2D8 0025C238  4B E5 07 65 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025F2DC 0025C23C  83 E3 00 04 */	lwz r31, 4(r3)
/* 8025F2E0 0025C240  28 1F 00 00 */	cmplwi r31, 0
/* 8025F2E4 0025C244  41 82 00 A0 */	beq lbl_8025F384
/* 8025F2E8 0025C248  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025F2EC 0025C24C  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F2F0 0025C250  4B DA 59 C9 */	bl string_l__4rstlFPCc
/* 8025F2F4 0025C254  7F C4 F3 78 */	mr r4, r30
/* 8025F2F8 0025C258  38 61 00 24 */	addi r3, r1, 0x24
/* 8025F2FC 0025C25C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8025F300 0025C260  4B E1 96 79 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025F304 0025C264  38 61 00 54 */	addi r3, r1, 0x54
/* 8025F308 0025C268  38 81 00 24 */	addi r4, r1, 0x24
/* 8025F30C 0025C26C  48 0B 38 69 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025F310 0025C270  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F314 0025C274  48 0D E7 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025F318 0025C278  3C 60 80 57 */	lis r3, lbl_80572688@ha
/* 8025F31C 0025C27C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8025F320 0025C280  38 A3 26 88 */	addi r5, r3, lbl_80572688@l
/* 8025F324 0025C284  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8025F328 0025C288  C0 05 00 00 */	lfs f0, 0(r5)
/* 8025F32C 0025C28C  38 7F 00 34 */	addi r3, r31, 0x34
/* 8025F330 0025C290  C0 45 00 04 */	lfs f2, 4(r5)
/* 8025F334 0025C294  38 81 00 54 */	addi r4, r1, 0x54
/* 8025F338 0025C298  EC 81 00 2A */	fadds f4, f1, f0
/* 8025F33C 0025C29C  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 8025F340 0025C2A0  C0 05 00 08 */	lfs f0, 8(r5)
/* 8025F344 0025C2A4  EC 43 10 2A */	fadds f2, f3, f2
/* 8025F348 0025C2A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8025F34C 0025C2AC  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 8025F350 0025C2B0  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8025F354 0025C2B4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8025F358 0025C2B8  48 0B 37 E9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8025F35C 0025C2BC  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F360 0025C2C0  38 60 00 01 */	li r3, 1
/* 8025F364 0025C2C4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8025F368 0025C2C8  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8025F36C 0025C2CC  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F370 0025C2D0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8025F374 0025C2D4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8025F378 0025C2D8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F37C 0025C2DC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8025F380 0025C2E0  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_8025F384:
/* 8025F384 0025C2E4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8025F388 0025C2E8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8025F38C 0025C2EC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8025F390 0025C2F0  7C 08 03 A6 */	mtlr r0
/* 8025F394 0025C2F4  38 21 00 90 */	addi r1, r1, 0x90
/* 8025F398 0025C2F8  4E 80 00 20 */	blr 

.global sub_8025f39c
sub_8025f39c:
/* 8025F39C 0025C2FC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8025F3A0 0025C300  7C 08 02 A6 */	mflr r0
/* 8025F3A4 0025C304  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8025F3A8 0025C308  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8025F3AC 0025C30C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8025F3B0 0025C310  7C 9E 23 78 */	mr r30, r4
/* 8025F3B4 0025C314  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8025F3B8 0025C318  7C 7D 1B 78 */	mr r29, r3
/* 8025F3BC 0025C31C  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025F3C0 0025C320  7F E3 FB 78 */	mr r3, r31
/* 8025F3C4 0025C324  4B EB BF B5 */	bl Stop__13CPhysicsActorFv
/* 8025F3C8 0025C328  7F E3 FB 78 */	mr r3, r31
/* 8025F3CC 0025C32C  7F C5 F3 78 */	mr r5, r30
/* 8025F3D0 0025C330  38 80 00 13 */	li r4, 0x13
/* 8025F3D4 0025C334  4B DF 4B AD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025F3D8 0025C338  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025F3DC 0025C33C  38 61 00 08 */	addi r3, r1, 8
/* 8025F3E0 0025C340  4B DA 58 D9 */	bl string_l__4rstlFPCc
/* 8025F3E4 0025C344  7F A4 EB 78 */	mr r4, r29
/* 8025F3E8 0025C348  38 61 00 18 */	addi r3, r1, 0x18
/* 8025F3EC 0025C34C  38 A1 00 08 */	addi r5, r1, 8
/* 8025F3F0 0025C350  4B E1 95 89 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025F3F4 0025C354  38 61 00 48 */	addi r3, r1, 0x48
/* 8025F3F8 0025C358  38 81 00 18 */	addi r4, r1, 0x18
/* 8025F3FC 0025C35C  38 BD 06 4C */	addi r5, r29, 0x64c
/* 8025F400 0025C360  48 0B 35 51 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8025F404 0025C364  38 61 00 78 */	addi r3, r1, 0x78
/* 8025F408 0025C368  38 81 00 48 */	addi r4, r1, 0x48
/* 8025F40C 0025C36C  48 0B 37 69 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025F410 0025C370  38 61 00 08 */	addi r3, r1, 8
/* 8025F414 0025C374  48 0D E6 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025F418 0025C378  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8025F41C 0025C37C  38 7F 00 34 */	addi r3, r31, 0x34
/* 8025F420 0025C380  C0 82 BA 34 */	lfs f4, lbl_805AD754@sda21(r2)
/* 8025F424 0025C384  38 81 00 78 */	addi r4, r1, 0x78
/* 8025F428 0025C388  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 8025F42C 0025C38C  EC 60 20 2A */	fadds f3, f0, f4
/* 8025F430 0025C390  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8025F434 0025C394  C0 02 BA 50 */	lfs f0, lbl_805AD770@sda21(r2)
/* 8025F438 0025C398  EC 42 20 2A */	fadds f2, f2, f4
/* 8025F43C 0025C39C  EC 01 00 2A */	fadds f0, f1, f0
/* 8025F440 0025C3A0  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 8025F444 0025C3A4  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8025F448 0025C3A8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8025F44C 0025C3AC  48 0B 36 F5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8025F450 0025C3B0  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F454 0025C3B4  38 60 00 01 */	li r3, 1
/* 8025F458 0025C3B8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8025F45C 0025C3BC  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8025F460 0025C3C0  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F464 0025C3C4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8025F468 0025C3C8  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8025F46C 0025C3CC  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8025F470 0025C3D0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8025F474 0025C3D4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8025F478 0025C3D8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8025F47C 0025C3DC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8025F480 0025C3E0  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8025F484 0025C3E4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8025F488 0025C3E8  7C 08 03 A6 */	mtlr r0
/* 8025F48C 0025C3EC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8025F490 0025C3F0  4E 80 00 20 */	blr 

.global sub_8025f494
sub_8025f494:
/* 8025F494 0025C3F4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8025F498 0025C3F8  7C 08 02 A6 */	mflr r0
/* 8025F49C 0025C3FC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8025F4A0 0025C400  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8025F4A4 0025C404  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8025F4A8 0025C408  7C BE 2B 78 */	mr r30, r5
/* 8025F4AC 0025C40C  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8025F4B0 0025C410  7C 9D 23 78 */	mr r29, r4
/* 8025F4B4 0025C414  93 81 00 90 */	stw r28, 0x90(r1)
/* 8025F4B8 0025C418  7C 7C 1B 78 */	mr r28, r3
/* 8025F4BC 0025C41C  4B F9 72 11 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8025F4C0 0025C420  7F 83 E3 78 */	mr r3, r28
/* 8025F4C4 0025C424  7F A4 EB 78 */	mr r4, r29
/* 8025F4C8 0025C428  4B FF EE 19 */	bl sub_8025e2e0
/* 8025F4CC 0025C42C  2C 1E 00 01 */	cmpwi r30, 1
/* 8025F4D0 0025C430  83 FD 08 4C */	lwz r31, 0x84c(r29)
/* 8025F4D4 0025C434  41 82 00 60 */	beq lbl_8025F534
/* 8025F4D8 0025C438  40 80 00 B4 */	bge lbl_8025F58C
/* 8025F4DC 0025C43C  2C 1E 00 00 */	cmpwi r30, 0
/* 8025F4E0 0025C440  40 80 00 0C */	bge lbl_8025F4EC
/* 8025F4E4 0025C444  48 00 00 A8 */	b lbl_8025F58C
/* 8025F4E8 0025C448  48 00 00 A4 */	b lbl_8025F58C
lbl_8025F4EC:
/* 8025F4EC 0025C44C  7F E3 FB 78 */	mr r3, r31
/* 8025F4F0 0025C450  4B EB BE 89 */	bl Stop__13CPhysicsActorFv
/* 8025F4F4 0025C454  7F E3 FB 78 */	mr r3, r31
/* 8025F4F8 0025C458  7F A5 EB 78 */	mr r5, r29
/* 8025F4FC 0025C45C  38 80 00 13 */	li r4, 0x13
/* 8025F500 0025C460  4B DF 4A 81 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025F504 0025C464  38 00 00 00 */	li r0, 0
/* 8025F508 0025C468  98 1F 05 90 */	stb r0, 0x590(r31)
/* 8025F50C 0025C46C  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8025F510 0025C470  4B E9 23 E5 */	bl DisableHalfPipeStatus__10CMorphBallFv
/* 8025F514 0025C474  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025F518 0025C478  38 81 00 0C */	addi r4, r1, 0xc
/* 8025F51C 0025C47C  38 A0 00 01 */	li r5, 1
/* 8025F520 0025C480  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8025F524 0025C484  B0 01 00 08 */	sth r0, 8(r1)
/* 8025F528 0025C488  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8025F52C 0025C48C  4B DB 54 A5 */	bl AttachActorToPlayer__7CPlayerF9TUniqueId
/* 8025F530 0025C490  48 00 00 5C */	b lbl_8025F58C
lbl_8025F534:
/* 8025F534 0025C494  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025F538 0025C498  38 61 00 1C */	addi r3, r1, 0x1c
/* 8025F53C 0025C49C  4B DA 57 7D */	bl string_l__4rstlFPCc
/* 8025F540 0025C4A0  7F 84 E3 78 */	mr r4, r28
/* 8025F544 0025C4A4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025F548 0025C4A8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8025F54C 0025C4AC  4B E1 94 2D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025F550 0025C4B0  38 61 00 5C */	addi r3, r1, 0x5c
/* 8025F554 0025C4B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8025F558 0025C4B8  48 0B 36 1D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025F55C 0025C4BC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8025F560 0025C4C0  48 0D E5 81 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025F564 0025C4C4  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8025F568 0025C4C8  7F 83 E3 78 */	mr r3, r28
/* 8025F56C 0025C4CC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8025F570 0025C4D0  7F A4 EB 78 */	mr r4, r29
/* 8025F574 0025C4D4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8025F578 0025C4D8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8025F57C 0025C4DC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8025F580 0025C4E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8025F584 0025C4E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8025F588 0025C4E8  4B FF FE 15 */	bl sub_8025f39c
lbl_8025F58C:
/* 8025F58C 0025C4EC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8025F590 0025C4F0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8025F594 0025C4F4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8025F598 0025C4F8  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8025F59C 0025C4FC  83 81 00 90 */	lwz r28, 0x90(r1)
/* 8025F5A0 0025C500  7C 08 03 A6 */	mtlr r0
/* 8025F5A4 0025C504  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8025F5A8 0025C508  4E 80 00 20 */	blr 

.global sub_8025f5ac
sub_8025f5ac:
/* 8025F5AC 0025C50C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025F5B0 0025C510  7C 08 02 A6 */	mflr r0
/* 8025F5B4 0025C514  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025F5B8 0025C518  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025F5BC 0025C51C  7C BF 2B 78 */	mr r31, r5
/* 8025F5C0 0025C520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025F5C4 0025C524  7C 9E 23 78 */	mr r30, r4
/* 8025F5C8 0025C528  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025F5CC 0025C52C  7C 7D 1B 78 */	mr r29, r3
/* 8025F5D0 0025C530  4B F9 70 FD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8025F5D4 0025C534  7F A3 EB 78 */	mr r3, r29
/* 8025F5D8 0025C538  7F C4 F3 78 */	mr r4, r30
/* 8025F5DC 0025C53C  4B FF ED 05 */	bl sub_8025e2e0
/* 8025F5E0 0025C540  2C 1F 00 01 */	cmpwi r31, 1
/* 8025F5E4 0025C544  41 82 00 10 */	beq lbl_8025F5F4
/* 8025F5E8 0025C548  40 80 00 18 */	bge lbl_8025F600
/* 8025F5EC 0025C54C  48 00 00 14 */	b lbl_8025F600
/* 8025F5F0 0025C550  48 00 00 10 */	b lbl_8025F600
lbl_8025F5F4:
/* 8025F5F4 0025C554  7F A3 EB 78 */	mr r3, r29
/* 8025F5F8 0025C558  7F C4 F3 78 */	mr r4, r30
/* 8025F5FC 0025C55C  4B FF FC A9 */	bl sub_8025f2a4
lbl_8025F600:
/* 8025F600 0025C560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025F604 0025C564  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025F608 0025C568  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025F60C 0025C56C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025F610 0025C570  7C 08 03 A6 */	mtlr r0
/* 8025F614 0025C574  38 21 00 20 */	addi r1, r1, 0x20
/* 8025F618 0025C578  4E 80 00 20 */	blr 

.global sub_8025f61c
sub_8025f61c:
/* 8025F61C 0025C57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025F620 0025C580  7C 08 02 A6 */	mflr r0
/* 8025F624 0025C584  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025F628 0025C588  81 83 00 00 */	lwz r12, 0(r3)
/* 8025F62C 0025C58C  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 8025F630 0025C590  7D 89 03 A6 */	mtctr r12
/* 8025F634 0025C594  4E 80 04 21 */	bctrl 
/* 8025F638 0025C598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025F63C 0025C59C  7C 08 03 A6 */	mtlr r0
/* 8025F640 0025C5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025F644 0025C5A4  4E 80 00 20 */	blr 

.global sub_8025f648
sub_8025f648:
/* 8025F648 0025C5A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8025F64C 0025C5AC  7C 08 02 A6 */	mflr r0
/* 8025F650 0025C5B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8025F654 0025C5B4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8025F658 0025C5B8  7C 9F 23 78 */	mr r31, r4
/* 8025F65C 0025C5BC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8025F660 0025C5C0  7C 7E 1B 78 */	mr r30, r3
/* 8025F664 0025C5C4  4B F9 70 69 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8025F668 0025C5C8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025F66C 0025C5CC  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 8025F670 0025C5D0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8025F674 0025C5D4  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 8025F678 0025C5D8  C0 63 00 04 */	lfs f3, 4(r3)
/* 8025F67C 0025C5DC  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 8025F680 0025C5E0  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8025F684 0025C5E4  C0 43 00 08 */	lfs f2, 8(r3)
/* 8025F688 0025C5E8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8025F68C 0025C5EC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8025F690 0025C5F0  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8025F694 0025C5F4  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8025F698 0025C5F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8025F69C 0025C5FC  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 8025F6A0 0025C600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025F6A4 0025C604  40 80 00 78 */	bge lbl_8025F71C
/* 8025F6A8 0025C608  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F6AC 0025C60C  48 0B 50 4D */	bl CanBeNormalized__9CVector3fCFv
/* 8025F6B0 0025C610  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025F6B4 0025C614  41 82 00 68 */	beq lbl_8025F71C
/* 8025F6B8 0025C618  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025F6BC 0025C61C  38 63 00 04 */	addi r3, r3, 4
/* 8025F6C0 0025C620  4B ED 1D E9 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8025F6C4 0025C624  38 61 00 08 */	addi r3, r1, 8
/* 8025F6C8 0025C628  38 81 00 14 */	addi r4, r1, 0x14
/* 8025F6CC 0025C62C  48 0B 51 85 */	bl AsNormalized__9CVector3fCFv
/* 8025F6D0 0025C630  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8025F6D4 0025C634  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8025F6D8 0025C638  C0 61 00 08 */	lfs f3, 8(r1)
/* 8025F6DC 0025C63C  38 81 00 20 */	addi r4, r1, 0x20
/* 8025F6E0 0025C640  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8025F6E4 0025C644  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8025F6E8 0025C648  C0 83 00 08 */	lfs f4, 8(r3)
/* 8025F6EC 0025C64C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8025F6F0 0025C650  C0 02 BA 3C */	lfs f0, lbl_805AD75C@sda21(r2)
/* 8025F6F4 0025C654  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8025F6F8 0025C658  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8025F6FC 0025C65C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8025F700 0025C660  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8025F704 0025C664  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8025F708 0025C668  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8025F70C 0025C66C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8025F710 0025C670  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025F714 0025C674  38 63 00 04 */	addi r3, r3, 4
/* 8025F718 0025C678  4B ED 20 01 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8025F71C:
/* 8025F71C 0025C67C  7F C3 F3 78 */	mr r3, r30
/* 8025F720 0025C680  7F E4 FB 78 */	mr r4, r31
/* 8025F724 0025C684  4B FF EB BD */	bl sub_8025e2e0
/* 8025F728 0025C688  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8025F72C 0025C68C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8025F730 0025C690  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8025F734 0025C694  7C 08 03 A6 */	mtlr r0
/* 8025F738 0025C698  38 21 00 50 */	addi r1, r1, 0x50
/* 8025F73C 0025C69C  4E 80 00 20 */	blr 

.global sub_8025f740
sub_8025f740:
/* 8025F740 0025C6A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025F744 0025C6A4  7C 08 02 A6 */	mflr r0
/* 8025F748 0025C6A8  2C 05 00 01 */	cmpwi r5, 1
/* 8025F74C 0025C6AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025F750 0025C6B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8025F754 0025C6B4  7C 9F 23 78 */	mr r31, r4
/* 8025F758 0025C6B8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8025F75C 0025C6BC  7C 7E 1B 78 */	mr r30, r3
/* 8025F760 0025C6C0  41 82 01 00 */	beq lbl_8025F860
/* 8025F764 0025C6C4  40 80 01 00 */	bge lbl_8025F864
/* 8025F768 0025C6C8  2C 05 00 00 */	cmpwi r5, 0
/* 8025F76C 0025C6CC  40 80 00 0C */	bge lbl_8025F778
/* 8025F770 0025C6D0  48 00 00 F4 */	b lbl_8025F864
/* 8025F774 0025C6D4  48 00 00 F0 */	b lbl_8025F864
lbl_8025F778:
/* 8025F778 0025C6D8  7F C4 F3 78 */	mr r4, r30
/* 8025F77C 0025C6DC  7F E5 FB 78 */	mr r5, r31
/* 8025F780 0025C6E0  38 61 00 10 */	addi r3, r1, 0x10
/* 8025F784 0025C6E4  38 C0 00 0C */	li r6, 0xc
/* 8025F788 0025C6E8  38 E0 00 06 */	li r7, 6
/* 8025F78C 0025C6EC  4B F9 58 0D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8025F790 0025C6F0  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8025F794 0025C6F4  7F E3 FB 78 */	mr r3, r31
/* 8025F798 0025C6F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8025F79C 0025C6FC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8025F7A0 0025C700  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8025F7A4 0025C704  4B DE CE 01 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025F7A8 0025C708  7C 64 1B 78 */	mr r4, r3
/* 8025F7AC 0025C70C  38 61 00 18 */	addi r3, r1, 0x18
/* 8025F7B0 0025C710  4B E5 04 E1 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8025F7B4 0025C714  80 A3 00 04 */	lwz r5, 4(r3)
/* 8025F7B8 0025C718  28 05 00 00 */	cmplwi r5, 0
/* 8025F7BC 0025C71C  41 82 00 28 */	beq lbl_8025F7E4
/* 8025F7C0 0025C720  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8025F7C4 0025C724  7F C3 F3 78 */	mr r3, r30
/* 8025F7C8 0025C728  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8025F7CC 0025C72C  38 81 00 28 */	addi r4, r1, 0x28
/* 8025F7D0 0025C730  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8025F7D4 0025C734  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8025F7D8 0025C738  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8025F7DC 0025C73C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8025F7E0 0025C740  4B E1 D3 7D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_8025F7E4:
/* 8025F7E4 0025C744  A0 7E 06 94 */	lhz r3, 0x694(r30)
/* 8025F7E8 0025C748  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025F7EC 0025C74C  7C 03 00 40 */	cmplw r3, r0
/* 8025F7F0 0025C750  41 82 00 4C */	beq lbl_8025F83C
/* 8025F7F4 0025C754  A0 1E 06 94 */	lhz r0, 0x694(r30)
/* 8025F7F8 0025C758  7F E3 FB 78 */	mr r3, r31
/* 8025F7FC 0025C75C  38 81 00 08 */	addi r4, r1, 8
/* 8025F800 0025C760  B0 01 00 08 */	sth r0, 8(r1)
/* 8025F804 0025C764  4B DE CD 71 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025F808 0025C768  7C 64 1B 78 */	mr r4, r3
/* 8025F80C 0025C76C  38 61 00 20 */	addi r3, r1, 0x20
/* 8025F810 0025C770  4B E5 02 2D */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025F814 0025C774  80 83 00 04 */	lwz r4, 4(r3)
/* 8025F818 0025C778  28 04 00 00 */	cmplwi r4, 0
/* 8025F81C 0025C77C  41 82 00 18 */	beq lbl_8025F834
/* 8025F820 0025C780  88 04 01 90 */	lbz r0, 0x190(r4)
/* 8025F824 0025C784  38 60 00 00 */	li r3, 0
/* 8025F828 0025C788  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025F82C 0025C78C  98 04 01 90 */	stb r0, 0x190(r4)
/* 8025F830 0025C790  48 00 00 0C */	b lbl_8025F83C
lbl_8025F834:
/* 8025F834 0025C794  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025F838 0025C798  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_8025F83C:
/* 8025F83C 0025C79C  7F C3 F3 78 */	mr r3, r30
/* 8025F840 0025C7A0  7F E5 FB 78 */	mr r5, r31
/* 8025F844 0025C7A4  38 80 00 06 */	li r4, 6
/* 8025F848 0025C7A8  38 C0 FF FF */	li r6, -1
/* 8025F84C 0025C7AC  4B DF 18 75 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8025F850 0025C7B0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025F854 0025C7B4  38 80 00 03 */	li r4, 3
/* 8025F858 0025C7B8  4B ED B1 81 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8025F85C 0025C7BC  48 00 00 08 */	b lbl_8025F864
lbl_8025F860:
/* 8025F860 0025C7C0  4B FF FA 45 */	bl sub_8025f2a4
lbl_8025F864:
/* 8025F864 0025C7C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8025F868 0025C7C8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8025F86C 0025C7CC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8025F870 0025C7D0  7C 08 03 A6 */	mtlr r0
/* 8025F874 0025C7D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8025F878 0025C7D8  4E 80 00 20 */	blr 

.global sub_8025f87c
sub_8025f87c:
/* 8025F87C 0025C7DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8025F880 0025C7E0  7C 08 02 A6 */	mflr r0
/* 8025F884 0025C7E4  2C 05 00 01 */	cmpwi r5, 1
/* 8025F888 0025C7E8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8025F88C 0025C7EC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8025F890 0025C7F0  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8025F894 0025C7F4  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8025F898 0025C7F8  7C 9D 23 78 */	mr r29, r4
/* 8025F89C 0025C7FC  93 81 00 B0 */	stw r28, 0xb0(r1)
/* 8025F8A0 0025C800  7C 7C 1B 78 */	mr r28, r3
/* 8025F8A4 0025C804  83 C4 08 4C */	lwz r30, 0x84c(r4)
/* 8025F8A8 0025C808  41 82 00 F8 */	beq lbl_8025F9A0
/* 8025F8AC 0025C80C  40 80 00 10 */	bge lbl_8025F8BC
/* 8025F8B0 0025C810  2C 05 00 00 */	cmpwi r5, 0
/* 8025F8B4 0025C814  40 80 00 14 */	bge lbl_8025F8C8
/* 8025F8B8 0025C818  48 00 01 74 */	b lbl_8025FA2C
lbl_8025F8BC:
/* 8025F8BC 0025C81C  2C 05 00 03 */	cmpwi r5, 3
/* 8025F8C0 0025C820  40 80 01 6C */	bge lbl_8025FA2C
/* 8025F8C4 0025C824  48 00 01 38 */	b lbl_8025F9FC
lbl_8025F8C8:
/* 8025F8C8 0025C828  7F 84 E3 78 */	mr r4, r28
/* 8025F8CC 0025C82C  7F A5 EB 78 */	mr r5, r29
/* 8025F8D0 0025C830  38 61 00 14 */	addi r3, r1, 0x14
/* 8025F8D4 0025C834  38 C0 00 0C */	li r6, 0xc
/* 8025F8D8 0025C838  38 E0 00 06 */	li r7, 6
/* 8025F8DC 0025C83C  4B F9 56 BD */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8025F8E0 0025C840  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8025F8E4 0025C844  7F A3 EB 78 */	mr r3, r29
/* 8025F8E8 0025C848  38 81 00 10 */	addi r4, r1, 0x10
/* 8025F8EC 0025C84C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8025F8F0 0025C850  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8025F8F4 0025C854  4B DE CC B1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025F8F8 0025C858  7C 64 1B 78 */	mr r4, r3
/* 8025F8FC 0025C85C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8025F900 0025C860  4B E5 03 91 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8025F904 0025C864  80 A3 00 04 */	lwz r5, 4(r3)
/* 8025F908 0025C868  28 05 00 00 */	cmplwi r5, 0
/* 8025F90C 0025C86C  41 82 00 28 */	beq lbl_8025F934
/* 8025F910 0025C870  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8025F914 0025C874  7F 83 E3 78 */	mr r3, r28
/* 8025F918 0025C878  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8025F91C 0025C87C  38 81 00 40 */	addi r4, r1, 0x40
/* 8025F920 0025C880  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8025F924 0025C884  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8025F928 0025C888  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8025F92C 0025C88C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8025F930 0025C890  4B E1 D2 2D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_8025F934:
/* 8025F934 0025C894  83 FD 08 4C */	lwz r31, 0x84c(r29)
/* 8025F938 0025C898  7F E3 FB 78 */	mr r3, r31
/* 8025F93C 0025C89C  4B EB BA 3D */	bl Stop__13CPhysicsActorFv
/* 8025F940 0025C8A0  7F E3 FB 78 */	mr r3, r31
/* 8025F944 0025C8A4  7F A5 EB 78 */	mr r5, r29
/* 8025F948 0025C8A8  38 80 00 13 */	li r4, 0x13
/* 8025F94C 0025C8AC  4B DF 46 35 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025F950 0025C8B0  7F 83 E3 78 */	mr r3, r28
/* 8025F954 0025C8B4  7F A5 EB 78 */	mr r5, r29
/* 8025F958 0025C8B8  38 80 00 06 */	li r4, 6
/* 8025F95C 0025C8BC  38 C0 FF FF */	li r6, -1
/* 8025F960 0025C8C0  4B DF 17 61 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8025F964 0025C8C4  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025F968 0025C8C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8025F96C 0025C8CC  38 A0 00 01 */	li r5, 1
/* 8025F970 0025C8D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8025F974 0025C8D4  B0 01 00 08 */	sth r0, 8(r1)
/* 8025F978 0025C8D8  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8025F97C 0025C8DC  4B DB 50 55 */	bl AttachActorToPlayer__7CPlayerF9TUniqueId
/* 8025F980 0025C8E0  38 00 00 00 */	li r0, 0
/* 8025F984 0025C8E4  98 1E 05 90 */	stb r0, 0x590(r30)
/* 8025F988 0025C8E8  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8025F98C 0025C8EC  4B E9 1F 69 */	bl DisableHalfPipeStatus__10CMorphBallFv
/* 8025F990 0025C8F0  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8025F994 0025C8F4  38 80 00 03 */	li r4, 3
/* 8025F998 0025C8F8  4B ED B0 41 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8025F99C 0025C8FC  48 00 00 90 */	b lbl_8025FA2C
lbl_8025F9A0:
/* 8025F9A0 0025C900  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025F9A4 0025C904  38 61 00 30 */	addi r3, r1, 0x30
/* 8025F9A8 0025C908  4B DA 53 11 */	bl string_l__4rstlFPCc
/* 8025F9AC 0025C90C  7F 84 E3 78 */	mr r4, r28
/* 8025F9B0 0025C910  38 61 00 4C */	addi r3, r1, 0x4c
/* 8025F9B4 0025C914  38 A1 00 30 */	addi r5, r1, 0x30
/* 8025F9B8 0025C918  4B E1 8F C1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025F9BC 0025C91C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8025F9C0 0025C920  38 81 00 4C */	addi r4, r1, 0x4c
/* 8025F9C4 0025C924  48 0B 31 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025F9C8 0025C928  38 61 00 30 */	addi r3, r1, 0x30
/* 8025F9CC 0025C92C  48 0D E1 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025F9D0 0025C930  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8025F9D4 0025C934  7F 83 E3 78 */	mr r3, r28
/* 8025F9D8 0025C938  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 8025F9DC 0025C93C  7F A4 EB 78 */	mr r4, r29
/* 8025F9E0 0025C940  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8025F9E4 0025C944  38 A1 00 24 */	addi r5, r1, 0x24
/* 8025F9E8 0025C948  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8025F9EC 0025C94C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8025F9F0 0025C950  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8025F9F4 0025C954  4B FF F9 A9 */	bl sub_8025f39c
/* 8025F9F8 0025C958  48 00 00 34 */	b lbl_8025FA2C
lbl_8025F9FC:
/* 8025F9FC 0025C95C  A0 7E 02 6C */	lhz r3, 0x26c(r30)
/* 8025FA00 0025C960  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8025FA04 0025C964  7C 03 00 40 */	cmplw r3, r0
/* 8025FA08 0025C968  40 82 00 0C */	bne lbl_8025FA14
/* 8025FA0C 0025C96C  7F C3 F3 78 */	mr r3, r30
/* 8025FA10 0025C970  4B DB 4F 95 */	bl DetachActorFromPlayer__7CPlayerFv
lbl_8025FA14:
/* 8025FA14 0025C974  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 8025FA18 0025C978  38 00 00 01 */	li r0, 1
/* 8025FA1C 0025C97C  7F A5 EB 78 */	mr r5, r29
/* 8025FA20 0025C980  38 80 00 13 */	li r4, 0x13
/* 8025FA24 0025C984  98 03 05 90 */	stb r0, 0x590(r3)
/* 8025FA28 0025C988  4B DF 49 29 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8025FA2C:
/* 8025FA2C 0025C98C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8025FA30 0025C990  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8025FA34 0025C994  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8025FA38 0025C998  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8025FA3C 0025C99C  83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 8025FA40 0025C9A0  7C 08 03 A6 */	mtlr r0
/* 8025FA44 0025C9A4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8025FA48 0025C9A8  4E 80 00 20 */	blr 

.global sub_8025fa4c
sub_8025fa4c:
/* 8025FA4C 0025C9AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8025FA50 0025C9B0  7C 08 02 A6 */	mflr r0
/* 8025FA54 0025C9B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8025FA58 0025C9B8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8025FA5C 0025C9BC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8025FA60 0025C9C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8025FA64 0025C9C4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8025FA68 0025C9C8  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025FA6C 0025C9CC  FF E0 08 90 */	fmr f31, f1
/* 8025FA70 0025C9D0  7C BE 2B 78 */	mr r30, r5
/* 8025FA74 0025C9D4  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8025FA78 0025C9D8  4B E9 93 8D */	bl GetBallRadius__10CMorphBallCFv
/* 8025FA7C 0025C9DC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8025FA80 0025C9E0  38 61 00 14 */	addi r3, r1, 0x14
/* 8025FA84 0025C9E4  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8025FA88 0025C9E8  38 81 00 08 */	addi r4, r1, 8
/* 8025FA8C 0025C9EC  C0 A2 BA 34 */	lfs f5, lbl_805AD754@sda21(r2)
/* 8025FA90 0025C9F0  EC 40 08 2A */	fadds f2, f0, f1
/* 8025FA94 0025C9F4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8025FA98 0025C9F8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8025FA9C 0025C9FC  EC 84 28 2A */	fadds f4, f4, f5
/* 8025FAA0 0025CA00  C0 DE 00 04 */	lfs f6, 4(r30)
/* 8025FAA4 0025CA04  EC 00 28 2A */	fadds f0, f0, f5
/* 8025FAA8 0025CA08  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8025FAAC 0025CA0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025FAB0 0025CA10  EC 66 20 28 */	fsubs f3, f6, f4
/* 8025FAB4 0025CA14  EC 01 00 28 */	fsubs f0, f1, f0
/* 8025FAB8 0025CA18  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8025FABC 0025CA1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8025FAC0 0025CA20  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8025FAC4 0025CA24  48 0B 4D 8D */	bl AsNormalized__9CVector3fCFv
/* 8025FAC8 0025CA28  C0 02 BA 54 */	lfs f0, lbl_805AD774@sda21(r2)
/* 8025FACC 0025CA2C  7F E3 FB 78 */	mr r3, r31
/* 8025FAD0 0025CA30  C0 82 BA 3C */	lfs f4, lbl_805AD75C@sda21(r2)
/* 8025FAD4 0025CA34  38 81 00 20 */	addi r4, r1, 0x20
/* 8025FAD8 0025CA38  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8025FADC 0025CA3C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8025FAE0 0025CA40  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8025FAE4 0025CA44  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8025FAE8 0025CA48  EC 64 18 24 */	fdivs f3, f4, f3
/* 8025FAEC 0025CA4C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8025FAF0 0025CA50  EC 23 00 72 */	fmuls f1, f3, f1
/* 8025FAF4 0025CA54  EC 03 00 32 */	fmuls f0, f3, f0
/* 8025FAF8 0025CA58  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8025FAFC 0025CA5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8025FB00 0025CA60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8025FB04 0025CA64  4B EB B1 9D */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8025FB08 0025CA68  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8025FB0C 0025CA6C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8025FB10 0025CA70  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8025FB14 0025CA74  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8025FB18 0025CA78  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8025FB1C 0025CA7C  7C 08 03 A6 */	mtlr r0
/* 8025FB20 0025CA80  38 21 00 50 */	addi r1, r1, 0x50
/* 8025FB24 0025CA84  4E 80 00 20 */	blr 

.global sub_8025fb28
sub_8025fb28:
/* 8025FB28 0025CA88  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8025FB2C 0025CA8C  7C 08 02 A6 */	mflr r0
/* 8025FB30 0025CA90  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8025FB34 0025CA94  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8025FB38 0025CA98  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8025FB3C 0025CA9C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8025FB40 0025CAA0  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8025FB44 0025CAA4  A0 03 06 94 */	lhz r0, 0x694(r3)
/* 8025FB48 0025CAA8  7C 7E 1B 78 */	mr r30, r3
/* 8025FB4C 0025CAAC  FF E0 08 90 */	fmr f31, f1
/* 8025FB50 0025CAB0  7C 83 23 78 */	mr r3, r4
/* 8025FB54 0025CAB4  B0 01 00 08 */	sth r0, 8(r1)
/* 8025FB58 0025CAB8  38 81 00 08 */	addi r4, r1, 8
/* 8025FB5C 0025CABC  4B DE CA 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025FB60 0025CAC0  7C 64 1B 78 */	mr r4, r3
/* 8025FB64 0025CAC4  38 61 00 0C */	addi r3, r1, 0xc
/* 8025FB68 0025CAC8  4B E4 FE D5 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025FB6C 0025CACC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8025FB70 0025CAD0  28 1F 00 00 */	cmplwi r31, 0
/* 8025FB74 0025CAD4  41 82 00 C4 */	beq lbl_8025FC38
/* 8025FB78 0025CAD8  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025FB7C 0025CADC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025FB80 0025CAE0  4B DA 51 39 */	bl string_l__4rstlFPCc
/* 8025FB84 0025CAE4  7F C4 F3 78 */	mr r4, r30
/* 8025FB88 0025CAE8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8025FB8C 0025CAEC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8025FB90 0025CAF0  4B E1 8D E9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025FB94 0025CAF4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8025FB98 0025CAF8  38 81 00 3C */	addi r4, r1, 0x3c
/* 8025FB9C 0025CAFC  48 0B 2F D9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025FBA0 0025CB00  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025FBA4 0025CB04  48 0D DF 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025FBA8 0025CB08  3C 60 80 57 */	lis r3, lbl_80572688@ha
/* 8025FBAC 0025CB0C  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 8025FBB0 0025CB10  38 A3 26 88 */	addi r5, r3, lbl_80572688@l
/* 8025FBB4 0025CB14  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 8025FBB8 0025CB18  C0 05 00 04 */	lfs f0, 4(r5)
/* 8025FBBC 0025CB1C  38 61 00 20 */	addi r3, r1, 0x20
/* 8025FBC0 0025CB20  C0 45 00 08 */	lfs f2, 8(r5)
/* 8025FBC4 0025CB24  38 81 00 14 */	addi r4, r1, 0x14
/* 8025FBC8 0025CB28  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8025FBCC 0025CB2C  EC A4 00 2A */	fadds f5, f4, f0
/* 8025FBD0 0025CB30  C0 05 00 00 */	lfs f0, 0(r5)
/* 8025FBD4 0025CB34  EC 63 10 2A */	fadds f3, f3, f2
/* 8025FBD8 0025CB38  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 8025FBDC 0025CB3C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8025FBE0 0025CB40  EC 21 00 2A */	fadds f1, f1, f0
/* 8025FBE4 0025CB44  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8025FBE8 0025CB48  EC 85 20 28 */	fsubs f4, f5, f4
/* 8025FBEC 0025CB4C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025FBF0 0025CB50  EC 01 00 28 */	fsubs f0, f1, f0
/* 8025FBF4 0025CB54  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8025FBF8 0025CB58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8025FBFC 0025CB5C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8025FC00 0025CB60  48 0B 4C 51 */	bl AsNormalized__9CVector3fCFv
/* 8025FC04 0025CB64  C0 02 BA 54 */	lfs f0, lbl_805AD774@sda21(r2)
/* 8025FC08 0025CB68  C0 82 BA 3C */	lfs f4, lbl_805AD75C@sda21(r2)
/* 8025FC0C 0025CB6C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 8025FC10 0025CB70  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8025FC14 0025CB74  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8025FC18 0025CB78  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8025FC1C 0025CB7C  EC 64 18 24 */	fdivs f3, f4, f3
/* 8025FC20 0025CB80  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8025FC24 0025CB84  EC 23 00 72 */	fmuls f1, f3, f1
/* 8025FC28 0025CB88  EC 03 00 32 */	fmuls f0, f3, f0
/* 8025FC2C 0025CB8C  D0 5F 01 58 */	stfs f2, 0x158(r31)
/* 8025FC30 0025CB90  D0 3F 01 5C */	stfs f1, 0x15c(r31)
/* 8025FC34 0025CB94  D0 1F 01 60 */	stfs f0, 0x160(r31)
lbl_8025FC38:
/* 8025FC38 0025CB98  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8025FC3C 0025CB9C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8025FC40 0025CBA0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8025FC44 0025CBA4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8025FC48 0025CBA8  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8025FC4C 0025CBAC  7C 08 03 A6 */	mtlr r0
/* 8025FC50 0025CBB0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8025FC54 0025CBB4  4E 80 00 20 */	blr 

.global sub_8025fc58
sub_8025fc58:
/* 8025FC58 0025CBB8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8025FC5C 0025CBBC  7C 08 02 A6 */	mflr r0
/* 8025FC60 0025CBC0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8025FC64 0025CBC4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8025FC68 0025CBC8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 8025FC6C 0025CBCC  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8025FC70 0025CBD0  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8025FC74 0025CBD4  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8025FC78 0025CBD8  7C 9E 23 78 */	mr r30, r4
/* 8025FC7C 0025CBDC  FF E0 08 90 */	fmr f31, f1
/* 8025FC80 0025CBE0  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8025FC84 0025CBE4  7C 7D 1B 78 */	mr r29, r3
/* 8025FC88 0025CBE8  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 8025FC8C 0025CBEC  38 61 00 14 */	addi r3, r1, 0x14
/* 8025FC90 0025CBF0  4B DA 50 29 */	bl string_l__4rstlFPCc
/* 8025FC94 0025CBF4  7F A4 EB 78 */	mr r4, r29
/* 8025FC98 0025CBF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8025FC9C 0025CBFC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8025FCA0 0025CC00  4B E1 8C D9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025FCA4 0025CC04  38 61 00 6C */	addi r3, r1, 0x6c
/* 8025FCA8 0025CC08  38 81 00 3C */	addi r4, r1, 0x3c
/* 8025FCAC 0025CC0C  48 0B 2E C9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025FCB0 0025CC10  38 61 00 14 */	addi r3, r1, 0x14
/* 8025FCB4 0025CC14  48 0D DE 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025FCB8 0025CC18  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8025FCBC 0025CC1C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8025FCC0 0025CC20  C0 81 00 88 */	lfs f4, 0x88(r1)
/* 8025FCC4 0025CC24  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8025FCC8 0025CC28  EC 40 10 28 */	fsubs f2, f0, f2
/* 8025FCCC 0025CC2C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8025FCD0 0025CC30  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 8025FCD4 0025CC34  EC 21 20 28 */	fsubs f1, f1, f4
/* 8025FCD8 0025CC38  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8025FCDC 0025CC3C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8025FCE0 0025CC40  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8025FCE4 0025CC44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8025FCE8 0025CC48  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8025FCEC 0025CC4C  2C 00 00 01 */	cmpwi r0, 1
/* 8025FCF0 0025CC50  40 82 00 B8 */	bne lbl_8025FDA8
/* 8025FCF4 0025CC54  38 61 00 30 */	addi r3, r1, 0x30
/* 8025FCF8 0025CC58  48 0B 4B C1 */	bl Magnitude__9CVector3fCFv
/* 8025FCFC 0025CC5C  C0 02 BA 30 */	lfs f0, lbl_805AD750@sda21(r2)
/* 8025FD00 0025CC60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025FD04 0025CC64  40 80 00 3C */	bge lbl_8025FD40
/* 8025FD08 0025CC68  7F E3 FB 78 */	mr r3, r31
/* 8025FD0C 0025CC6C  4B EB B6 6D */	bl Stop__13CPhysicsActorFv
/* 8025FD10 0025CC70  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 8025FD14 0025CC74  FC 20 F8 90 */	fmr f1, f31
/* 8025FD18 0025CC78  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 8025FD1C 0025CC7C  7F A3 EB 78 */	mr r3, r29
/* 8025FD20 0025CC80  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8025FD24 0025CC84  7F C4 F3 78 */	mr r4, r30
/* 8025FD28 0025CC88  D0 61 00 08 */	stfs f3, 8(r1)
/* 8025FD2C 0025CC8C  38 A1 00 08 */	addi r5, r1, 8
/* 8025FD30 0025CC90  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8025FD34 0025CC94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8025FD38 0025CC98  4B FF FD 15 */	bl sub_8025fa4c
/* 8025FD3C 0025CC9C  48 00 00 6C */	b lbl_8025FDA8
lbl_8025FD40:
/* 8025FD40 0025CCA0  EC 01 00 72 */	fmuls f0, f1, f1
/* 8025FD44 0025CCA4  C0 7D 06 84 */	lfs f3, 0x684(r29)
/* 8025FD48 0025CCA8  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8025FD4C 0025CCAC  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8025FD50 0025CCB0  EC 63 00 24 */	fdivs f3, f3, f0
/* 8025FD54 0025CCB4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8025FD58 0025CCB8  C0 9D 06 7C */	lfs f4, 0x67c(r29)
/* 8025FD5C 0025CCBC  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 8025FD60 0025CCC0  FC 40 10 50 */	fneg f2, f2
/* 8025FD64 0025CCC4  FC 20 08 50 */	fneg f1, f1
/* 8025FD68 0025CCC8  FC 00 00 50 */	fneg f0, f0
/* 8025FD6C 0025CCCC  EC 64 00 F2 */	fmuls f3, f4, f3
/* 8025FD70 0025CCD0  EC 45 00 B2 */	fmuls f2, f5, f2
/* 8025FD74 0025CCD4  EC 25 00 72 */	fmuls f1, f5, f1
/* 8025FD78 0025CCD8  EC 05 00 32 */	fmuls f0, f5, f0
/* 8025FD7C 0025CCDC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8025FD80 0025CCE0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8025FD84 0025CCE4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8025FD88 0025CCE8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8025FD8C 0025CCEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8025FD90 0025CCF0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8025FD94 0025CCF4  4B DB B7 A1 */	bl Identity__10CAxisAngleFv
/* 8025FD98 0025CCF8  7C 65 1B 78 */	mr r5, r3
/* 8025FD9C 0025CCFC  7F E3 FB 78 */	mr r3, r31
/* 8025FDA0 0025CD00  38 81 00 24 */	addi r4, r1, 0x24
/* 8025FDA4 0025CD04  4B EB C5 21 */	bl ApplyForceWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8025FDA8:
/* 8025FDA8 0025CD08  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8025FDAC 0025CD0C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8025FDB0 0025CD10  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8025FDB4 0025CD14  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8025FDB8 0025CD18  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8025FDBC 0025CD1C  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8025FDC0 0025CD20  7C 08 03 A6 */	mtlr r0
/* 8025FDC4 0025CD24  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8025FDC8 0025CD28  4E 80 00 20 */	blr 

.global sub_8025fdcc
sub_8025fdcc:
/* 8025FDCC 0025CD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FDD0 0025CD30  7C 08 02 A6 */	mflr r0
/* 8025FDD4 0025CD34  2C 05 00 01 */	cmpwi r5, 1
/* 8025FDD8 0025CD38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FDDC 0025CD3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025FDE0 0025CD40  7C 7F 1B 78 */	mr r31, r3
/* 8025FDE4 0025CD44  41 82 00 50 */	beq lbl_8025FE34
/* 8025FDE8 0025CD48  40 80 00 50 */	bge lbl_8025FE38
/* 8025FDEC 0025CD4C  2C 05 00 00 */	cmpwi r5, 0
/* 8025FDF0 0025CD50  40 80 00 0C */	bge lbl_8025FDFC
/* 8025FDF4 0025CD54  48 00 00 44 */	b lbl_8025FE38
/* 8025FDF8 0025CD58  48 00 00 40 */	b lbl_8025FE38
lbl_8025FDFC:
/* 8025FDFC 0025CD5C  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8025FE00 0025CD60  38 00 00 01 */	li r0, 1
/* 8025FE04 0025CD64  7C 85 23 78 */	mr r5, r4
/* 8025FE08 0025CD68  38 80 00 13 */	li r4, 0x13
/* 8025FE0C 0025CD6C  98 03 05 90 */	stb r0, 0x590(r3)
/* 8025FE10 0025CD70  4B DF 45 41 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8025FE14 0025CD74  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025FE18 0025CD78  38 60 00 01 */	li r3, 1
/* 8025FE1C 0025CD7C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8025FE20 0025CD80  38 80 00 06 */	li r4, 6
/* 8025FE24 0025CD84  98 1F 06 98 */	stb r0, 0x698(r31)
/* 8025FE28 0025CD88  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8025FE2C 0025CD8C  4B ED AB AD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8025FE30 0025CD90  48 00 00 08 */	b lbl_8025FE38
lbl_8025FE34:
/* 8025FE34 0025CD94  4B FF FC F5 */	bl sub_8025fb28
lbl_8025FE38:
/* 8025FE38 0025CD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FE3C 0025CD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025FE40 0025CDA0  7C 08 03 A6 */	mtlr r0
/* 8025FE44 0025CDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FE48 0025CDA8  4E 80 00 20 */	blr 

.global sub_8025fe4c
sub_8025fe4c:
/* 8025FE4C 0025CDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FE50 0025CDB0  7C 08 02 A6 */	mflr r0
/* 8025FE54 0025CDB4  2C 05 00 01 */	cmpwi r5, 1
/* 8025FE58 0025CDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FE5C 0025CDBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025FE60 0025CDC0  7C 7F 1B 78 */	mr r31, r3
/* 8025FE64 0025CDC4  80 C4 08 4C */	lwz r6, 0x84c(r4)
/* 8025FE68 0025CDC8  41 82 00 40 */	beq lbl_8025FEA8
/* 8025FE6C 0025CDCC  40 80 00 10 */	bge lbl_8025FE7C
/* 8025FE70 0025CDD0  2C 05 00 00 */	cmpwi r5, 0
/* 8025FE74 0025CDD4  40 80 00 14 */	bge lbl_8025FE88
/* 8025FE78 0025CDD8  48 00 00 50 */	b lbl_8025FEC8
lbl_8025FE7C:
/* 8025FE7C 0025CDDC  2C 05 00 03 */	cmpwi r5, 3
/* 8025FE80 0025CDE0  40 80 00 48 */	bge lbl_8025FEC8
/* 8025FE84 0025CDE4  48 00 00 2C */	b lbl_8025FEB0
lbl_8025FE88:
/* 8025FE88 0025CDE8  38 00 00 00 */	li r0, 0
/* 8025FE8C 0025CDEC  98 06 05 90 */	stb r0, 0x590(r6)
/* 8025FE90 0025CDF0  80 66 07 68 */	lwz r3, 0x768(r6)
/* 8025FE94 0025CDF4  4B E9 1A 61 */	bl DisableHalfPipeStatus__10CMorphBallFv
/* 8025FE98 0025CDF8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8025FE9C 0025CDFC  38 80 00 06 */	li r4, 6
/* 8025FEA0 0025CE00  4B ED AB 39 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8025FEA4 0025CE04  48 00 00 24 */	b lbl_8025FEC8
lbl_8025FEA8:
/* 8025FEA8 0025CE08  4B FF FD B1 */	bl sub_8025fc58
/* 8025FEAC 0025CE0C  48 00 00 1C */	b lbl_8025FEC8
lbl_8025FEB0:
/* 8025FEB0 0025CE10  38 00 00 01 */	li r0, 1
/* 8025FEB4 0025CE14  7C C3 33 78 */	mr r3, r6
/* 8025FEB8 0025CE18  98 06 05 90 */	stb r0, 0x590(r6)
/* 8025FEBC 0025CE1C  7C 85 23 78 */	mr r5, r4
/* 8025FEC0 0025CE20  38 80 00 13 */	li r4, 0x13
/* 8025FEC4 0025CE24  4B DF 44 8D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8025FEC8:
/* 8025FEC8 0025CE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FECC 0025CE2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025FED0 0025CE30  7C 08 03 A6 */	mtlr r0
/* 8025FED4 0025CE34  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FED8 0025CE38  4E 80 00 20 */	blr 

.global sub_8025fedc
sub_8025fedc:
/* 8025FEDC 0025CE3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025FEE0 0025CE40  7C 08 02 A6 */	mflr r0
/* 8025FEE4 0025CE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025FEE8 0025CE48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025FEEC 0025CE4C  7C 7F 1B 78 */	mr r31, r3
/* 8025FEF0 0025CE50  38 60 00 00 */	li r3, 0
/* 8025FEF4 0025CE54  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025FEF8 0025CE58  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025FEFC 0025CE5C  98 1F 06 98 */	stb r0, 0x698(r31)
/* 8025FF00 0025CE60  A0 7F 06 94 */	lhz r3, 0x694(r31)
/* 8025FF04 0025CE64  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025FF08 0025CE68  7C 03 00 40 */	cmplw r3, r0
/* 8025FF0C 0025CE6C  41 82 00 58 */	beq lbl_8025FF64
/* 8025FF10 0025CE70  A0 1F 06 94 */	lhz r0, 0x694(r31)
/* 8025FF14 0025CE74  7C 83 23 78 */	mr r3, r4
/* 8025FF18 0025CE78  38 81 00 08 */	addi r4, r1, 8
/* 8025FF1C 0025CE7C  B0 01 00 08 */	sth r0, 8(r1)
/* 8025FF20 0025CE80  4B DE C6 85 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025FF24 0025CE84  7C 64 1B 78 */	mr r4, r3
/* 8025FF28 0025CE88  38 61 00 0C */	addi r3, r1, 0xc
/* 8025FF2C 0025CE8C  4B E4 FB 11 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025FF30 0025CE90  80 03 00 04 */	lwz r0, 4(r3)
/* 8025FF34 0025CE94  28 00 00 00 */	cmplwi r0, 0
/* 8025FF38 0025CE98  41 82 00 1C */	beq lbl_8025FF54
/* 8025FF3C 0025CE9C  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 8025FF40 0025CEA0  38 60 00 01 */	li r3, 1
/* 8025FF44 0025CEA4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025FF48 0025CEA8  38 60 00 00 */	li r3, 0
/* 8025FF4C 0025CEAC  98 1F 06 98 */	stb r0, 0x698(r31)
/* 8025FF50 0025CEB0  48 00 00 18 */	b lbl_8025FF68
lbl_8025FF54:
/* 8025FF54 0025CEB4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025FF58 0025CEB8  38 60 00 01 */	li r3, 1
/* 8025FF5C 0025CEBC  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 8025FF60 0025CEC0  48 00 00 08 */	b lbl_8025FF68
lbl_8025FF64:
/* 8025FF64 0025CEC4  38 60 00 01 */	li r3, 1
lbl_8025FF68:
/* 8025FF68 0025CEC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025FF6C 0025CECC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025FF70 0025CED0  7C 08 03 A6 */	mtlr r0
/* 8025FF74 0025CED4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025FF78 0025CED8  4E 80 00 20 */	blr 

.global sub_8025ff7c
sub_8025ff7c:
/* 8025FF7C 0025CEDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025FF80 0025CEE0  7C 08 02 A6 */	mflr r0
/* 8025FF84 0025CEE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025FF88 0025CEE8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8025FF8C 0025CEEC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8025FF90 0025CEF0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025FF94 0025CEF4  7C 7F 1B 78 */	mr r31, r3
/* 8025FF98 0025CEF8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025FF9C 0025CEFC  A0 63 06 94 */	lhz r3, 0x694(r3)
/* 8025FFA0 0025CF00  FF E0 08 90 */	fmr f31, f1
/* 8025FFA4 0025CF04  7C 03 00 40 */	cmplw r3, r0
/* 8025FFA8 0025CF08  41 82 00 5C */	beq lbl_80260004
/* 8025FFAC 0025CF0C  A0 1F 06 94 */	lhz r0, 0x694(r31)
/* 8025FFB0 0025CF10  7C 83 23 78 */	mr r3, r4
/* 8025FFB4 0025CF14  38 81 00 08 */	addi r4, r1, 8
/* 8025FFB8 0025CF18  B0 01 00 08 */	sth r0, 8(r1)
/* 8025FFBC 0025CF1C  4B DE C5 E9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8025FFC0 0025CF20  7C 64 1B 78 */	mr r4, r3
/* 8025FFC4 0025CF24  38 61 00 0C */	addi r3, r1, 0xc
/* 8025FFC8 0025CF28  4B E4 FA 75 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8025FFCC 0025CF2C  80 83 00 04 */	lwz r4, 4(r3)
/* 8025FFD0 0025CF30  28 04 00 00 */	cmplwi r4, 0
/* 8025FFD4 0025CF34  41 82 00 30 */	beq lbl_80260004
/* 8025FFD8 0025CF38  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8025FFDC 0025CF3C  FC 20 F8 90 */	fmr f1, f31
/* 8025FFE0 0025CF40  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8025FFE4 0025CF44  7F E3 FB 78 */	mr r3, r31
/* 8025FFE8 0025CF48  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8025FFEC 0025CF4C  38 81 00 14 */	addi r4, r1, 0x14
/* 8025FFF0 0025CF50  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8025FFF4 0025CF54  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8025FFF8 0025CF58  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8025FFFC 0025CF5C  48 00 00 CD */	bl sub_802600c8
/* 80260000 0025CF60  48 00 00 08 */	b lbl_80260008
lbl_80260004:
/* 80260004 0025CF64  38 60 00 00 */	li r3, 0
lbl_80260008:
/* 80260008 0025CF68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8026000C 0025CF6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80260010 0025CF70  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80260014 0025CF74  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80260018 0025CF78  7C 08 03 A6 */	mtlr r0
/* 8026001C 0025CF7C  38 21 00 40 */	addi r1, r1, 0x40
/* 80260020 0025CF80  4E 80 00 20 */	blr 

.global sub_80260024
sub_80260024:
/* 80260024 0025CF84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80260028 0025CF88  7C 08 02 A6 */	mflr r0
/* 8026002C 0025CF8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80260030 0025CF90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80260034 0025CF94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80260038 0025CF98  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8026003C 0025CF9C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80260040 0025CFA0  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80260044 0025CFA4  7C 7E 1B 78 */	mr r30, r3
/* 80260048 0025CFA8  FF E0 08 90 */	fmr f31, f1
/* 8026004C 0025CFAC  80 64 07 68 */	lwz r3, 0x768(r4)
/* 80260050 0025CFB0  3B E4 00 34 */	addi r31, r4, 0x34
/* 80260054 0025CFB4  4B E9 8D B1 */	bl GetBallRadius__10CMorphBallCFv
/* 80260058 0025CFB8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8026005C 0025CFBC  7F E4 FB 78 */	mr r4, r31
/* 80260060 0025CFC0  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80260064 0025CFC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80260068 0025CFC8  C0 42 BA 34 */	lfs f2, lbl_805AD754@sda21(r2)
/* 8026006C 0025CFCC  EC 20 08 2A */	fadds f1, f0, f1
/* 80260070 0025CFD0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80260074 0025CFD4  EC 63 10 2A */	fadds f3, f3, f2
/* 80260078 0025CFD8  EC 00 10 2A */	fadds f0, f0, f2
/* 8026007C 0025CFDC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80260080 0025CFE0  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80260084 0025CFE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80260088 0025CFE8  48 0B 2B B9 */	bl GetRotation__12CTransform4fCFv
/* 8026008C 0025CFEC  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80260090 0025CFF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80260094 0025CFF4  48 0B 2A AD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80260098 0025CFF8  FC 20 F8 90 */	fmr f1, f31
/* 8026009C 0025CFFC  7F C3 F3 78 */	mr r3, r30
/* 802600A0 0025D000  38 81 00 08 */	addi r4, r1, 8
/* 802600A4 0025D004  48 00 00 25 */	bl sub_802600c8
/* 802600A8 0025D008  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 802600AC 0025D00C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802600B0 0025D010  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802600B4 0025D014  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802600B8 0025D018  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802600BC 0025D01C  7C 08 03 A6 */	mtlr r0
/* 802600C0 0025D020  38 21 00 60 */	addi r1, r1, 0x60
/* 802600C4 0025D024  4E 80 00 20 */	blr 

.global sub_802600c8
sub_802600c8:
/* 802600C8 0025D028  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802600CC 0025D02C  7C 08 02 A6 */	mflr r0
/* 802600D0 0025D030  90 01 00 94 */	stw r0, 0x94(r1)
/* 802600D4 0025D034  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802600D8 0025D038  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802600DC 0025D03C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802600E0 0025D040  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802600E4 0025D044  FF E0 08 90 */	fmr f31, f1
/* 802600E8 0025D048  7C 9F 23 78 */	mr r31, r4
/* 802600EC 0025D04C  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 802600F0 0025D050  7C 7E 1B 78 */	mr r30, r3
/* 802600F4 0025D054  38 61 00 08 */	addi r3, r1, 8
/* 802600F8 0025D058  4B DA 4B C1 */	bl string_l__4rstlFPCc
/* 802600FC 0025D05C  7F C4 F3 78 */	mr r4, r30
/* 80260100 0025D060  38 61 00 18 */	addi r3, r1, 0x18
/* 80260104 0025D064  38 A1 00 08 */	addi r5, r1, 8
/* 80260108 0025D068  4B E1 88 71 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8026010C 0025D06C  38 61 00 48 */	addi r3, r1, 0x48
/* 80260110 0025D070  38 81 00 18 */	addi r4, r1, 0x18
/* 80260114 0025D074  48 0B 2A 61 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80260118 0025D078  38 61 00 08 */	addi r3, r1, 8
/* 8026011C 0025D07C  48 0D D9 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80260120 0025D080  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80260124 0025D084  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80260128 0025D088  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8026012C 0025D08C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80260130 0025D090  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80260134 0025D094  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80260138 0025D098  EC 63 00 28 */	fsubs f3, f3, f0
/* 8026013C 0025D09C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80260140 0025D0A0  EC 04 01 32 */	fmuls f0, f4, f4
/* 80260144 0025D0A4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80260148 0025D0A8  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 8026014C 0025D0AC  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 80260150 0025D0B0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80260154 0025D0B4  4C 40 13 82 */	cror 2, 0, 2
/* 80260158 0025D0B8  7C 00 00 26 */	mfcr r0
/* 8026015C 0025D0BC  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80260160 0025D0C0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80260164 0025D0C4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80260168 0025D0C8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8026016C 0025D0CC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80260170 0025D0D0  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80260174 0025D0D4  7C 08 03 A6 */	mtlr r0
/* 80260178 0025D0D8  38 21 00 90 */	addi r1, r1, 0x90
/* 8026017C 0025D0DC  4E 80 00 20 */	blr 

.global sub_80260180
sub_80260180:
/* 80260180 0025D0E0  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 80260184 0025D0E4  7C 08 02 A6 */	mflr r0
/* 80260188 0025D0E8  90 01 01 94 */	stw r0, 0x194(r1)
/* 8026018C 0025D0EC  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 80260190 0025D0F0  F3 E1 01 88 */	psq_st f31, 392(r1), 0, qr0
/* 80260194 0025D0F4  DB C1 01 70 */	stfd f30, 0x170(r1)
/* 80260198 0025D0F8  F3 C1 01 78 */	psq_st f30, 376(r1), 0, qr0
/* 8026019C 0025D0FC  DB A1 01 60 */	stfd f29, 0x160(r1)
/* 802601A0 0025D100  F3 A1 01 68 */	psq_st f29, 360(r1), 0, qr0
/* 802601A4 0025D104  DB 81 01 50 */	stfd f28, 0x150(r1)
/* 802601A8 0025D108  F3 81 01 58 */	psq_st f28, 344(r1), 0, qr0
/* 802601AC 0025D10C  BF 61 01 3C */	stmw r27, 0x13c(r1)
/* 802601B0 0025D110  7C 7E 1B 78 */	mr r30, r3
/* 802601B4 0025D114  7C 9B 23 78 */	mr r27, r4
/* 802601B8 0025D118  7C BD 2B 78 */	mr r29, r5
/* 802601BC 0025D11C  7C DC 33 78 */	mr r28, r6
/* 802601C0 0025D120  7C FF 3B 78 */	mr r31, r7
/* 802601C4 0025D124  7F C4 F3 78 */	mr r4, r30
/* 802601C8 0025D128  38 61 00 78 */	addi r3, r1, 0x78
/* 802601CC 0025D12C  4B EB A7 61 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 802601D0 0025D130  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 802601D4 0025D134  7F 83 E3 78 */	mr r3, r28
/* 802601D8 0025D138  C0 81 00 7C */	lfs f4, 0x7c(r1)
/* 802601DC 0025D13C  38 81 00 90 */	addi r4, r1, 0x90
/* 802601E0 0025D140  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 802601E4 0025D144  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 802601E8 0025D148  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 802601EC 0025D14C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 802601F0 0025D150  D0 A1 00 90 */	stfs f5, 0x90(r1)
/* 802601F4 0025D154  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 802601F8 0025D158  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 802601FC 0025D15C  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80260200 0025D160  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 80260204 0025D164  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80260208 0025D168  48 0D 79 7D */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 8026020C 0025D16C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80260210 0025D170  41 82 00 0C */	beq lbl_8026021C
/* 80260214 0025D174  38 60 00 01 */	li r3, 1
/* 80260218 0025D178  48 00 02 74 */	b lbl_8026048C
lbl_8026021C:
/* 8026021C 0025D17C  80 82 BA 28 */	lwz r4, lbl_805AD748@sda21(r2)
/* 80260220 0025D180  38 61 00 38 */	addi r3, r1, 0x38
/* 80260224 0025D184  4B DA 4A 95 */	bl string_l__4rstlFPCc
/* 80260228 0025D188  7F C4 F3 78 */	mr r4, r30
/* 8026022C 0025D18C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80260230 0025D190  38 A1 00 38 */	addi r5, r1, 0x38
/* 80260234 0025D194  4B E1 87 45 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80260238 0025D198  38 61 01 08 */	addi r3, r1, 0x108
/* 8026023C 0025D19C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80260240 0025D1A0  48 0B 29 35 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80260244 0025D1A4  38 61 00 38 */	addi r3, r1, 0x38
/* 80260248 0025D1A8  48 0D D8 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8026024C 0025D1AC  C3 BE 00 58 */	lfs f29, 0x58(r30)
/* 80260250 0025D1B0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80260254 0025D1B4  C0 62 BA 3C */	lfs f3, lbl_805AD75C@sda21(r2)
/* 80260258 0025D1B8  38 81 00 54 */	addi r4, r1, 0x54
/* 8026025C 0025D1BC  C3 DE 00 48 */	lfs f30, 0x48(r30)
/* 80260260 0025D1C0  C0 02 BA 58 */	lfs f0, lbl_805AD778@sda21(r2)
/* 80260264 0025D1C4  EC 83 07 72 */	fmuls f4, f3, f29
/* 80260268 0025D1C8  C3 FE 00 38 */	lfs f31, 0x38(r30)
/* 8026026C 0025D1CC  EC A3 07 B2 */	fmuls f5, f3, f30
/* 80260270 0025D1D0  C1 81 01 34 */	lfs f12, 0x134(r1)
/* 80260274 0025D1D4  EC 40 07 72 */	fmuls f2, f0, f29
/* 80260278 0025D1D8  C1 A1 01 24 */	lfs f13, 0x124(r1)
/* 8026027C 0025D1DC  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80260280 0025D1E0  C3 81 01 14 */	lfs f28, 0x114(r1)
/* 80260284 0025D1E4  EC 63 07 F2 */	fmuls f3, f3, f31
/* 80260288 0025D1E8  C1 7D 00 04 */	lfs f11, 4(r29)
/* 8026028C 0025D1EC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80260290 0025D1F0  C1 3D 00 08 */	lfs f9, 8(r29)
/* 80260294 0025D1F4  ED 4D 28 28 */	fsubs f10, f13, f5
/* 80260298 0025D1F8  C0 FD 00 00 */	lfs f7, 0(r29)
/* 8026029C 0025D1FC  ED 0C 20 28 */	fsubs f8, f12, f4
/* 802602A0 0025D200  C0 BB 00 04 */	lfs f5, 4(r27)
/* 802602A4 0025D204  EC DC 18 28 */	fsubs f6, f28, f3
/* 802602A8 0025D208  C0 7B 00 08 */	lfs f3, 8(r27)
/* 802602AC 0025D20C  EC 8D 08 28 */	fsubs f4, f13, f1
/* 802602B0 0025D210  C0 3B 00 00 */	lfs f1, 0(r27)
/* 802602B4 0025D214  EC 4C 10 28 */	fsubs f2, f12, f2
/* 802602B8 0025D218  EC 1C 00 28 */	fsubs f0, f28, f0
/* 802602BC 0025D21C  ED 4B 50 28 */	fsubs f10, f11, f10
/* 802602C0 0025D220  ED 09 40 28 */	fsubs f8, f9, f8
/* 802602C4 0025D224  EC C7 30 28 */	fsubs f6, f7, f6
/* 802602C8 0025D228  EC 85 20 28 */	fsubs f4, f5, f4
/* 802602CC 0025D22C  D1 41 00 58 */	stfs f10, 0x58(r1)
/* 802602D0 0025D230  EC 43 10 28 */	fsubs f2, f3, f2
/* 802602D4 0025D234  EC 01 00 28 */	fsubs f0, f1, f0
/* 802602D8 0025D238  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 802602DC 0025D23C  D1 01 00 5C */	stfs f8, 0x5c(r1)
/* 802602E0 0025D240  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802602E4 0025D244  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 802602E8 0025D248  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 802602EC 0025D24C  48 0B 45 65 */	bl AsNormalized__9CVector3fCFv
/* 802602F0 0025D250  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802602F4 0025D254  38 61 00 20 */	addi r3, r1, 0x20
/* 802602F8 0025D258  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802602FC 0025D25C  38 81 00 48 */	addi r4, r1, 0x48
/* 80260300 0025D260  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80260304 0025D264  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80260308 0025D268  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 8026030C 0025D26C  EF 82 07 7A */	fmadds f28, f2, f29, f0
/* 80260310 0025D270  48 0B 45 41 */	bl AsNormalized__9CVector3fCFv
/* 80260314 0025D274  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80260318 0025D278  38 61 00 54 */	addi r3, r1, 0x54
/* 8026031C 0025D27C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80260320 0025D280  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80260324 0025D284  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80260328 0025D288  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 8026032C 0025D28C  EF C2 07 7A */	fmadds f30, f2, f29, f0
/* 80260330 0025D290  48 0B 45 89 */	bl Magnitude__9CVector3fCFv
/* 80260334 0025D294  88 0D A5 60 */	lbz r0, lbl_805A9120@sda21(r13)
/* 80260338 0025D298  FF A0 08 90 */	fmr f29, f1
/* 8026033C 0025D29C  7C 00 07 75 */	extsb. r0, r0
/* 80260340 0025D2A0  40 82 00 88 */	bne lbl_802603C8
/* 80260344 0025D2A4  80 AD 97 EC */	lwz r5, lbl_805A83AC@sda21(r13)
/* 80260348 0025D2A8  38 60 00 00 */	li r3, 0
/* 8026034C 0025D2AC  38 80 00 01 */	li r4, 1
/* 80260350 0025D2B0  48 12 9B A5 */	bl __shl2i
/* 80260354 0025D2B4  80 AD 97 F0 */	lwz r5, lbl_805A83B0@sda21(r13)
/* 80260358 0025D2B8  7C 9C 23 78 */	mr r28, r4
/* 8026035C 0025D2BC  7C 7D 1B 78 */	mr r29, r3
/* 80260360 0025D2C0  38 60 00 00 */	li r3, 0
/* 80260364 0025D2C4  38 80 00 01 */	li r4, 1
/* 80260368 0025D2C8  48 12 9B 8D */	bl __shl2i
/* 8026036C 0025D2CC  80 AD 97 F4 */	lwz r5, lbl_805A83B4@sda21(r13)
/* 80260370 0025D2D0  7F 9C 23 78 */	or r28, r28, r4
/* 80260374 0025D2D4  7F BD 1B 78 */	or r29, r29, r3
/* 80260378 0025D2D8  38 60 00 00 */	li r3, 0
/* 8026037C 0025D2DC  38 80 00 01 */	li r4, 1
/* 80260380 0025D2E0  48 12 9B 75 */	bl __shl2i
/* 80260384 0025D2E4  80 AD 97 E8 */	lwz r5, lbl_805A83A8@sda21(r13)
/* 80260388 0025D2E8  7F 9C 23 78 */	or r28, r28, r4
/* 8026038C 0025D2EC  7F BD 1B 78 */	or r29, r29, r3
/* 80260390 0025D2F0  38 60 00 00 */	li r3, 0
/* 80260394 0025D2F4  38 80 00 01 */	li r4, 1
/* 80260398 0025D2F8  48 12 9B 5D */	bl __shl2i
/* 8026039C 0025D2FC  3C A0 80 47 */	lis r5, lbl_8046DC90@ha
/* 802603A0 0025D300  38 C0 00 03 */	li r6, 3
/* 802603A4 0025D304  38 A5 DC 90 */	addi r5, r5, lbl_8046DC90@l
/* 802603A8 0025D308  38 00 00 01 */	li r0, 1
/* 802603AC 0025D30C  90 C1 00 70 */	stw r6, 0x70(r1)
/* 802603B0 0025D310  90 85 00 04 */	stw r4, 4(r5)
/* 802603B4 0025D314  90 65 00 00 */	stw r3, 0(r5)
/* 802603B8 0025D318  93 85 00 0C */	stw r28, 0xc(r5)
/* 802603BC 0025D31C  93 A5 00 08 */	stw r29, 8(r5)
/* 802603C0 0025D320  90 C5 00 10 */	stw r6, 0x10(r5)
/* 802603C4 0025D324  98 0D A5 60 */	stb r0, lbl_805A9120@sda21(r13)
lbl_802603C8:
/* 802603C8 0025D328  C0 02 BA 54 */	lfs f0, lbl_805AD774@sda21(r2)
/* 802603CC 0025D32C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802603D0 0025D330  40 81 00 88 */	ble lbl_80260458
/* 802603D4 0025D334  C0 02 BA 3C */	lfs f0, lbl_805AD75C@sda21(r2)
/* 802603D8 0025D338  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 802603DC 0025D33C  EC C0 E8 24 */	fdivs f6, f0, f29
/* 802603E0 0025D340  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 802603E4 0025D344  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 802603E8 0025D348  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 802603EC 0025D34C  80 63 07 68 */	lwz r3, 0x768(r3)
/* 802603F0 0025D350  C0 41 01 14 */	lfs f2, 0x114(r1)
/* 802603F4 0025D354  EC A6 00 72 */	fmuls f5, f6, f1
/* 802603F8 0025D358  C0 21 01 24 */	lfs f1, 0x124(r1)
/* 802603FC 0025D35C  EC 86 00 32 */	fmuls f4, f6, f0
/* 80260400 0025D360  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 80260404 0025D364  EC 66 00 F2 */	fmuls f3, f6, f3
/* 80260408 0025D368  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8026040C 0025D36C  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80260410 0025D370  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80260414 0025D374  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80260418 0025D378  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8026041C 0025D37C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80260420 0025D380  4B E9 89 E5 */	bl GetBallRadius__10CMorphBallCFv
/* 80260424 0025D384  EC 3D 08 28 */	fsubs f1, f29, f1
/* 80260428 0025D388  3C 60 80 47 */	lis r3, lbl_8046DC90@ha
/* 8026042C 0025D38C  38 E3 DC 90 */	addi r7, r3, lbl_8046DC90@l
/* 80260430 0025D390  7F E4 FB 78 */	mr r4, r31
/* 80260434 0025D394  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80260438 0025D398  38 A1 00 14 */	addi r5, r1, 0x14
/* 8026043C 0025D39C  38 C1 00 08 */	addi r6, r1, 8
/* 80260440 0025D3A0  4B DE CB 59 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80260444 0025D3A4  88 01 00 C8 */	lbz r0, 0xc8(r1)
/* 80260448 0025D3A8  28 00 00 00 */	cmplwi r0, 0
/* 8026044C 0025D3AC  41 82 00 0C */	beq lbl_80260458
/* 80260450 0025D3B0  38 60 00 00 */	li r3, 0
/* 80260454 0025D3B4  48 00 00 38 */	b lbl_8026048C
lbl_80260458:
/* 80260458 0025D3B8  C0 1E 06 84 */	lfs f0, 0x684(r30)
/* 8026045C 0025D3BC  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80260460 0025D3C0  40 80 00 28 */	bge lbl_80260488
/* 80260464 0025D3C4  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260468 0025D3C8  38 60 00 00 */	li r3, 0
/* 8026046C 0025D3CC  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80260470 0025D3D0  40 81 00 1C */	ble lbl_8026048C
/* 80260474 0025D3D4  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80260478 0025D3D8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8026047C 0025D3DC  40 81 00 10 */	ble lbl_8026048C
/* 80260480 0025D3E0  38 60 00 01 */	li r3, 1
/* 80260484 0025D3E4  48 00 00 08 */	b lbl_8026048C
lbl_80260488:
/* 80260488 0025D3E8  38 60 00 00 */	li r3, 0
lbl_8026048C:
/* 8026048C 0025D3EC  E3 E1 01 88 */	psq_l f31, 392(r1), 0, qr0
/* 80260490 0025D3F0  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 80260494 0025D3F4  E3 C1 01 78 */	psq_l f30, 376(r1), 0, qr0
/* 80260498 0025D3F8  CB C1 01 70 */	lfd f30, 0x170(r1)
/* 8026049C 0025D3FC  E3 A1 01 68 */	psq_l f29, 360(r1), 0, qr0
/* 802604A0 0025D400  CB A1 01 60 */	lfd f29, 0x160(r1)
/* 802604A4 0025D404  E3 81 01 58 */	psq_l f28, 344(r1), 0, qr0
/* 802604A8 0025D408  CB 81 01 50 */	lfd f28, 0x150(r1)
/* 802604AC 0025D40C  BB 61 01 3C */	lmw r27, 0x13c(r1)
/* 802604B0 0025D410  80 01 01 94 */	lwz r0, 0x194(r1)
/* 802604B4 0025D414  7C 08 03 A6 */	mtlr r0
/* 802604B8 0025D418  38 21 01 90 */	addi r1, r1, 0x190
/* 802604BC 0025D41C  4E 80 00 20 */	blr 

.global sub_802604c0
sub_802604c0:
/* 802604C0 0025D420  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802604C4 0025D424  7C 08 02 A6 */	mflr r0
/* 802604C8 0025D428  90 01 00 54 */	stw r0, 0x54(r1)
/* 802604CC 0025D42C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802604D0 0025D430  7C 9F 23 78 */	mr r31, r4
/* 802604D4 0025D434  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802604D8 0025D438  7C 7E 1B 78 */	mr r30, r3
/* 802604DC 0025D43C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802604E0 0025D440  A0 63 06 94 */	lhz r3, 0x694(r3)
/* 802604E4 0025D444  7C 03 00 40 */	cmplw r3, r0
/* 802604E8 0025D448  41 82 00 80 */	beq lbl_80260568
/* 802604EC 0025D44C  A0 1E 06 94 */	lhz r0, 0x694(r30)
/* 802604F0 0025D450  7F E3 FB 78 */	mr r3, r31
/* 802604F4 0025D454  38 81 00 08 */	addi r4, r1, 8
/* 802604F8 0025D458  B0 01 00 08 */	sth r0, 8(r1)
/* 802604FC 0025D45C  4B DE C0 A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80260500 0025D460  7C 64 1B 78 */	mr r4, r3
/* 80260504 0025D464  38 61 00 0C */	addi r3, r1, 0xc
/* 80260508 0025D468  4B E4 F5 35 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 8026050C 0025D46C  80 83 00 04 */	lwz r4, 4(r3)
/* 80260510 0025D470  28 04 00 00 */	cmplwi r4, 0
/* 80260514 0025D474  41 82 00 54 */	beq lbl_80260568
/* 80260518 0025D478  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8026051C 0025D47C  38 61 00 20 */	addi r3, r1, 0x20
/* 80260520 0025D480  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80260524 0025D484  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80260528 0025D488  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8026052C 0025D48C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80260530 0025D490  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80260534 0025D494  81 84 00 00 */	lwz r12, 0(r4)
/* 80260538 0025D498  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8026053C 0025D49C  7D 89 03 A6 */	mtctr r12
/* 80260540 0025D4A0  4E 80 04 21 */	bctrl 
/* 80260544 0025D4A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80260548 0025D4A8  7F C3 F3 78 */	mr r3, r30
/* 8026054C 0025D4AC  7C 85 23 78 */	mr r5, r4
/* 80260550 0025D4B0  7F E7 FB 78 */	mr r7, r31
/* 80260554 0025D4B4  38 C1 00 20 */	addi r6, r1, 0x20
/* 80260558 0025D4B8  4B FF FC 29 */	bl sub_80260180
/* 8026055C 0025D4BC  38 00 00 00 */	li r0, 0
/* 80260560 0025D4C0  98 01 00 38 */	stb r0, 0x38(r1)
/* 80260564 0025D4C4  48 00 00 08 */	b lbl_8026056C
lbl_80260568:
/* 80260568 0025D4C8  38 60 00 00 */	li r3, 0
lbl_8026056C:
/* 8026056C 0025D4CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80260570 0025D4D0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80260574 0025D4D4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80260578 0025D4D8  7C 08 03 A6 */	mtlr r0
/* 8026057C 0025D4DC  38 21 00 50 */	addi r1, r1, 0x50
/* 80260580 0025D4E0  4E 80 00 20 */	blr 

.global sub_80260584
sub_80260584:
/* 80260584 0025D4E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80260588 0025D4E8  7C 08 02 A6 */	mflr r0
/* 8026058C 0025D4EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80260590 0025D4F0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80260594 0025D4F4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80260598 0025D4F8  7C 9E 23 78 */	mr r30, r4
/* 8026059C 0025D4FC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 802605A0 0025D500  7C 7D 1B 78 */	mr r29, r3
/* 802605A4 0025D504  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 802605A8 0025D508  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 802605AC 0025D50C  2C 00 00 01 */	cmpwi r0, 1
/* 802605B0 0025D510  40 82 00 A4 */	bne lbl_80260654
/* 802605B4 0025D514  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 802605B8 0025D518  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802605BC 0025D51C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802605C0 0025D520  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802605C4 0025D524  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802605C8 0025D528  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802605CC 0025D52C  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 802605D0 0025D530  4B E9 88 35 */	bl GetBallRadius__10CMorphBallCFv
/* 802605D4 0025D534  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 802605D8 0025D538  7F E4 FB 78 */	mr r4, r31
/* 802605DC 0025D53C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 802605E0 0025D540  38 61 00 20 */	addi r3, r1, 0x20
/* 802605E4 0025D544  C0 42 BA 34 */	lfs f2, lbl_805AD754@sda21(r2)
/* 802605E8 0025D548  EC 20 08 2A */	fadds f1, f0, f1
/* 802605EC 0025D54C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802605F0 0025D550  EC 63 10 2A */	fadds f3, f3, f2
/* 802605F4 0025D554  EC 00 10 2A */	fadds f0, f0, f2
/* 802605F8 0025D558  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802605FC 0025D55C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80260600 0025D560  D0 01 00 08 */	stfs f0, 8(r1)
/* 80260604 0025D564  4B EB A3 29 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80260608 0025D568  C0 A1 00 20 */	lfs f5, 0x20(r1)
/* 8026060C 0025D56C  7F A3 EB 78 */	mr r3, r29
/* 80260610 0025D570  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 80260614 0025D574  7F C7 F3 78 */	mr r7, r30
/* 80260618 0025D578  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8026061C 0025D57C  38 81 00 14 */	addi r4, r1, 0x14
/* 80260620 0025D580  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80260624 0025D584  38 A1 00 08 */	addi r5, r1, 8
/* 80260628 0025D588  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8026062C 0025D58C  38 C1 00 38 */	addi r6, r1, 0x38
/* 80260630 0025D590  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80260634 0025D594  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 80260638 0025D598  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8026063C 0025D59C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80260640 0025D5A0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80260644 0025D5A4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80260648 0025D5A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8026064C 0025D5AC  4B FF FB 35 */	bl sub_80260180
/* 80260650 0025D5B0  48 00 00 08 */	b lbl_80260658
lbl_80260654:
/* 80260654 0025D5B4  38 60 00 00 */	li r3, 0
lbl_80260658:
/* 80260658 0025D5B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8026065C 0025D5BC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80260660 0025D5C0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80260664 0025D5C4  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80260668 0025D5C8  7C 08 03 A6 */	mtlr r0
/* 8026066C 0025D5CC  38 21 00 60 */	addi r1, r1, 0x60
/* 80260670 0025D5D0  4E 80 00 20 */	blr 

.global sub_80260674
sub_80260674:
/* 80260674 0025D5D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80260678 0025D5D8  7C 08 02 A6 */	mflr r0
/* 8026067C 0025D5DC  2C 05 00 00 */	cmpwi r5, 0
/* 80260680 0025D5E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80260684 0025D5E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80260688 0025D5E8  7C 9F 23 78 */	mr r31, r4
/* 8026068C 0025D5EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80260690 0025D5F0  7C 7E 1B 78 */	mr r30, r3
/* 80260694 0025D5F4  41 82 00 08 */	beq lbl_8026069C
/* 80260698 0025D5F8  48 00 00 7C */	b lbl_80260714
lbl_8026069C:
/* 8026069C 0025D5FC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802606A0 0025D600  38 80 00 01 */	li r4, 1
/* 802606A4 0025D604  4B ED A3 35 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802606A8 0025D608  A0 7E 06 94 */	lhz r3, 0x694(r30)
/* 802606AC 0025D60C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802606B0 0025D610  7C 03 00 40 */	cmplw r3, r0
/* 802606B4 0025D614  41 82 00 60 */	beq lbl_80260714
/* 802606B8 0025D618  A0 1E 06 94 */	lhz r0, 0x694(r30)
/* 802606BC 0025D61C  7F E3 FB 78 */	mr r3, r31
/* 802606C0 0025D620  38 81 00 08 */	addi r4, r1, 8
/* 802606C4 0025D624  B0 01 00 08 */	sth r0, 8(r1)
/* 802606C8 0025D628  4B DE BE DD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802606CC 0025D62C  7C 64 1B 78 */	mr r4, r3
/* 802606D0 0025D630  38 61 00 0C */	addi r3, r1, 0xc
/* 802606D4 0025D634  4B E4 F3 69 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 802606D8 0025D638  80 A3 00 04 */	lwz r5, 4(r3)
/* 802606DC 0025D63C  28 05 00 00 */	cmplwi r5, 0
/* 802606E0 0025D640  41 82 00 2C */	beq lbl_8026070C
/* 802606E4 0025D644  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 802606E8 0025D648  7F C3 F3 78 */	mr r3, r30
/* 802606EC 0025D64C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 802606F0 0025D650  38 81 00 14 */	addi r4, r1, 0x14
/* 802606F4 0025D654  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 802606F8 0025D658  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802606FC 0025D65C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80260700 0025D660  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80260704 0025D664  4B E1 C4 59 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80260708 0025D668  48 00 00 0C */	b lbl_80260714
lbl_8026070C:
/* 8026070C 0025D66C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80260710 0025D670  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_80260714:
/* 80260714 0025D674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80260718 0025D678  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8026071C 0025D67C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80260720 0025D680  7C 08 03 A6 */	mtlr r0
/* 80260724 0025D684  38 21 00 30 */	addi r1, r1, 0x30
/* 80260728 0025D688  4E 80 00 20 */	blr 

.global Think__9CTryclopsFfR13CStateManager
Think__9CTryclopsFfR13CStateManager:
/* 8026072C 0025D68C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80260730 0025D690  7C 08 02 A6 */	mflr r0
/* 80260734 0025D694  90 01 00 34 */	stw r0, 0x34(r1)
/* 80260738 0025D698  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8026073C 0025D69C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80260740 0025D6A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80260744 0025D6A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80260748 0025D6A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026074C 0025D6AC  FF E0 08 90 */	fmr f31, f1
/* 80260750 0025D6B0  7C 7D 1B 78 */	mr r29, r3
/* 80260754 0025D6B4  7C 9E 23 78 */	mr r30, r4
/* 80260758 0025D6B8  4B E1 93 C1 */	bl Think__10CPatternedFfR13CStateManager
/* 8026075C 0025D6BC  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80260760 0025D6C0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80260764 0025D6C4  41 82 00 1C */	beq lbl_80260780
/* 80260768 0025D6C8  C0 3D 06 8C */	lfs f1, 0x68c(r29)
/* 8026076C 0025D6CC  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260770 0025D6D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80260774 0025D6D4  40 81 00 0C */	ble lbl_80260780
/* 80260778 0025D6D8  EC 01 F8 28 */	fsubs f0, f1, f31
/* 8026077C 0025D6DC  D0 1D 06 8C */	stfs f0, 0x68c(r29)
lbl_80260780:
/* 80260780 0025D6E0  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80260784 0025D6E4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80260788 0025D6E8  A0 83 02 6C */	lhz r4, 0x26c(r3)
/* 8026078C 0025D6EC  7C 04 00 40 */	cmplw r4, r0
/* 80260790 0025D6F0  40 82 00 48 */	bne lbl_802607D8
/* 80260794 0025D6F4  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 80260798 0025D6F8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8026079C 0025D6FC  40 82 00 3C */	bne lbl_802607D8
/* 802607A0 0025D700  3B E0 00 00 */	li r31, 0
/* 802607A4 0025D704  4B DB 04 B5 */	bl GetAttachedActorStruggle__7CPlayerCFv
/* 802607A8 0025D708  C0 02 BA 3C */	lfs f0, lbl_805AD75C@sda21(r2)
/* 802607AC 0025D70C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802607B0 0025D710  40 82 00 1C */	bne lbl_802607CC
/* 802607B4 0025D714  7F A3 EB 78 */	mr r3, r29
/* 802607B8 0025D718  7F C4 F3 78 */	mr r4, r30
/* 802607BC 0025D71C  4B FF D4 15 */	bl sub_8025dbd0
/* 802607C0 0025D720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802607C4 0025D724  40 82 00 08 */	bne lbl_802607CC
/* 802607C8 0025D728  3B E0 00 01 */	li r31, 1
lbl_802607CC:
/* 802607CC 0025D72C  88 1D 06 98 */	lbz r0, 0x698(r29)
/* 802607D0 0025D730  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 802607D4 0025D734  98 1D 06 98 */	stb r0, 0x698(r29)
lbl_802607D8:
/* 802607D8 0025D738  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802607DC 0025D73C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802607E0 0025D740  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802607E4 0025D744  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802607E8 0025D748  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802607EC 0025D74C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802607F0 0025D750  7C 08 03 A6 */	mtlr r0
/* 802607F4 0025D754  38 21 00 30 */	addi r1, r1, 0x30
/* 802607F8 0025D758  4E 80 00 20 */	blr 

.global sub_802607fc
sub_802607fc:
/* 802607FC 0025D75C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80260800 0025D760  7C 08 02 A6 */	mflr r0
/* 80260804 0025D764  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260808 0025D768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026080C 0025D76C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80260810 0025D770  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80260814 0025D774  7C 7E 1B 78 */	mr r30, r3
/* 80260818 0025D778  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8026081C 0025D77C  C0 43 06 8C */	lfs f2, 0x68c(r3)
/* 80260820 0025D780  A0 BF 02 6C */	lhz r5, 0x26c(r31)
/* 80260824 0025D784  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80260828 0025D788  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026082C 0025D78C  7C 05 00 50 */	subf r0, r5, r0
/* 80260830 0025D790  7C 00 00 34 */	cntlzw r0, r0
/* 80260834 0025D794  54 06 D9 7E */	srwi r6, r0, 5
/* 80260838 0025D798  7C A0 00 26 */	mfcr r5
/* 8026083C 0025D79C  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80260840 0025D7A0  54 A5 17 FE */	rlwinm r5, r5, 2, 0x1f, 0x1f
/* 80260844 0025D7A4  2C 00 00 01 */	cmpwi r0, 1
/* 80260848 0025D7A8  40 82 00 44 */	bne lbl_8026088C
/* 8026084C 0025D7AC  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80260850 0025D7B0  41 82 00 3C */	beq lbl_8026088C
/* 80260854 0025D7B4  28 05 00 00 */	cmplwi r5, 0
/* 80260858 0025D7B8  40 82 00 34 */	bne lbl_8026088C
/* 8026085C 0025D7BC  4B F9 5B 11 */	bl InDetectionRange__10CPatternedFR13CStateManagerf
/* 80260860 0025D7C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80260864 0025D7C4  41 82 00 28 */	beq lbl_8026088C
/* 80260868 0025D7C8  7F E4 FB 78 */	mr r4, r31
/* 8026086C 0025D7CC  38 61 00 08 */	addi r3, r1, 8
/* 80260870 0025D7D0  48 02 44 D9 */	bl GetBallPosition__7CPlayerCFv
/* 80260874 0025D7D4  38 7E 05 68 */	addi r3, r30, 0x568
/* 80260878 0025D7D8  38 81 00 08 */	addi r4, r1, 8
/* 8026087C 0025D7DC  4B F6 62 B9 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 80260880 0025D7E0  7C 60 00 34 */	cntlzw r0, r3
/* 80260884 0025D7E4  54 03 D9 7E */	srwi r3, r0, 5
/* 80260888 0025D7E8  48 00 00 08 */	b lbl_80260890
lbl_8026088C:
/* 8026088C 0025D7EC  38 60 00 00 */	li r3, 0
lbl_80260890:
/* 80260890 0025D7F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80260894 0025D7F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80260898 0025D7F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026089C 0025D7FC  7C 08 03 A6 */	mtlr r0
/* 802608A0 0025D800  38 21 00 20 */	addi r1, r1, 0x20
/* 802608A4 0025D804  4E 80 00 20 */	blr 

.global sub_802608a8
sub_802608a8:
/* 802608A8 0025D808  94 21 F7 10 */	stwu r1, -0x8f0(r1)
/* 802608AC 0025D80C  7C 08 02 A6 */	mflr r0
/* 802608B0 0025D810  90 01 08 F4 */	stw r0, 0x8f4(r1)
/* 802608B4 0025D814  DB E1 08 E0 */	stfd f31, 0x8e0(r1)
/* 802608B8 0025D818  F3 E1 08 E8 */	psq_st f31, -1816(r1), 0, qr0
/* 802608BC 0025D81C  DB C1 08 D0 */	stfd f30, 0x8d0(r1)
/* 802608C0 0025D820  F3 C1 08 D8 */	psq_st f30, -1832(r1), 0, qr0
/* 802608C4 0025D824  DB A1 08 C0 */	stfd f29, 0x8c0(r1)
/* 802608C8 0025D828  F3 A1 08 C8 */	psq_st f29, -1848(r1), 0, qr0
/* 802608CC 0025D82C  DB 81 08 B0 */	stfd f28, 0x8b0(r1)
/* 802608D0 0025D830  F3 81 08 B8 */	psq_st f28, -1864(r1), 0, qr0
/* 802608D4 0025D834  BF 61 08 9C */	stmw r27, 0x89c(r1)
/* 802608D8 0025D838  7C 7E 1B 78 */	mr r30, r3
/* 802608DC 0025D83C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802608E0 0025D840  A0 63 06 94 */	lhz r3, 0x694(r3)
/* 802608E4 0025D844  7C 9F 23 78 */	mr r31, r4
/* 802608E8 0025D848  7C 03 00 40 */	cmplw r3, r0
/* 802608EC 0025D84C  41 82 00 0C */	beq lbl_802608F8
/* 802608F0 0025D850  38 60 00 01 */	li r3, 1
/* 802608F4 0025D854  48 00 02 C8 */	b lbl_80260BBC
lbl_802608F8:
/* 802608F8 0025D858  C1 3E 03 BC */	lfs f9, 0x3bc(r30)
/* 802608FC 0025D85C  38 61 00 78 */	addi r3, r1, 0x78
/* 80260900 0025D860  C0 FE 00 50 */	lfs f7, 0x50(r30)
/* 80260904 0025D864  38 81 00 50 */	addi r4, r1, 0x50
/* 80260908 0025D868  FD 40 48 50 */	fneg f10, f9
/* 8026090C 0025D86C  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80260910 0025D870  C1 1E 00 60 */	lfs f8, 0x60(r30)
/* 80260914 0025D874  EC C7 48 2A */	fadds f6, f7, f9
/* 80260918 0025D878  C3 FE 03 C0 */	lfs f31, 0x3c0(r30)
/* 8026091C 0025D87C  EC 22 48 2A */	fadds f1, f2, f9
/* 80260920 0025D880  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260924 0025D884  EC A8 F8 2A */	fadds f5, f8, f31
/* 80260928 0025D888  EC 87 50 2A */	fadds f4, f7, f10
/* 8026092C 0025D88C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80260930 0025D890  EC 68 00 2A */	fadds f3, f8, f0
/* 80260934 0025D894  38 A1 00 38 */	addi r5, r1, 0x38
/* 80260938 0025D898  EC 02 50 2A */	fadds f0, f2, f10
/* 8026093C 0025D89C  EF C9 02 72 */	fmuls f30, f9, f9
/* 80260940 0025D8A0  EF BF 07 F2 */	fmuls f29, f31, f31
/* 80260944 0025D8A4  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 80260948 0025D8A8  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 8026094C 0025D8AC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80260950 0025D8B0  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 80260954 0025D8B4  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 80260958 0025D8B8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8026095C 0025D8BC  D0 E1 00 48 */	stfs f7, 0x48(r1)
/* 80260960 0025D8C0  D1 01 00 4C */	stfs f8, 0x4c(r1)
/* 80260964 0025D8C4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80260968 0025D8C8  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8026096C 0025D8CC  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80260970 0025D8D0  48 0D 7B 99 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80260974 0025D8D4  38 00 00 00 */	li r0, 0
/* 80260978 0025D8D8  80 AD 97 E4 */	lwz r5, lbl_805A83A4@sda21(r13)
/* 8026097C 0025D8DC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80260980 0025D8E0  38 60 00 00 */	li r3, 0
/* 80260984 0025D8E4  38 80 00 01 */	li r4, 1
/* 80260988 0025D8E8  48 12 95 6D */	bl __shl2i
/* 8026098C 0025D8EC  39 00 00 00 */	li r8, 0
/* 80260990 0025D8F0  38 00 00 01 */	li r0, 1
/* 80260994 0025D8F4  90 81 00 64 */	stw r4, 0x64(r1)
/* 80260998 0025D8F8  7F C7 F3 78 */	mr r7, r30
/* 8026099C 0025D8FC  38 81 00 90 */	addi r4, r1, 0x90
/* 802609A0 0025D900  38 A1 00 78 */	addi r5, r1, 0x78
/* 802609A4 0025D904  90 61 00 60 */	stw r3, 0x60(r1)
/* 802609A8 0025D908  7F E3 FB 78 */	mr r3, r31
/* 802609AC 0025D90C  38 C1 00 60 */	addi r6, r1, 0x60
/* 802609B0 0025D910  91 01 00 6C */	stw r8, 0x6c(r1)
/* 802609B4 0025D914  91 01 00 68 */	stw r8, 0x68(r1)
/* 802609B8 0025D918  90 01 00 70 */	stw r0, 0x70(r1)
/* 802609BC 0025D91C  4B DE BD 65 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 802609C0 0025D920  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802609C4 0025D924  3B A1 00 94 */	addi r29, r1, 0x94
/* 802609C8 0025D928  7F BC EB 78 */	mr r28, r29
/* 802609CC 0025D92C  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 802609D0 0025D930  48 00 00 CC */	b lbl_80260A9C
lbl_802609D4:
/* 802609D4 0025D934  A0 1C 00 00 */	lhz r0, 0(r28)
/* 802609D8 0025D938  7F E3 FB 78 */	mr r3, r31
/* 802609DC 0025D93C  38 81 00 0C */	addi r4, r1, 0xc
/* 802609E0 0025D940  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802609E4 0025D944  4B DE BB C1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802609E8 0025D948  7C 64 1B 78 */	mr r4, r3
/* 802609EC 0025D94C  38 61 00 10 */	addi r3, r1, 0x10
/* 802609F0 0025D950  4B E4 F0 4D */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 802609F4 0025D954  83 63 00 04 */	lwz r27, 4(r3)
/* 802609F8 0025D958  28 1B 00 00 */	cmplwi r27, 0
/* 802609FC 0025D95C  41 82 00 9C */	beq lbl_80260A98
/* 80260A00 0025D960  88 1B 01 90 */	lbz r0, 0x190(r27)
/* 80260A04 0025D964  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80260A08 0025D968  40 82 00 90 */	bne lbl_80260A98
/* 80260A0C 0025D96C  C0 BB 00 50 */	lfs f5, 0x50(r27)
/* 80260A10 0025D970  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80260A14 0025D974  C0 9B 00 60 */	lfs f4, 0x60(r27)
/* 80260A18 0025D978  EC 65 00 28 */	fsubs f3, f5, f0
/* 80260A1C 0025D97C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80260A20 0025D980  C0 DB 00 40 */	lfs f6, 0x40(r27)
/* 80260A24 0025D984  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80260A28 0025D988  EC 44 00 28 */	fsubs f2, f4, f0
/* 80260A2C 0025D98C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80260A30 0025D990  EC 26 08 28 */	fsubs f1, f6, f1
/* 80260A34 0025D994  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80260A38 0025D998  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 80260A3C 0025D99C  EF 82 00 2A */	fadds f28, f2, f0
/* 80260A40 0025D9A0  FC 1C F0 40 */	fcmpo cr0, f28, f30
/* 80260A44 0025D9A4  40 80 00 54 */	bge lbl_80260A98
/* 80260A48 0025D9A8  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260A4C 0025D9AC  38 00 00 01 */	li r0, 1
/* 80260A50 0025D9B0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80260A54 0025D9B4  40 81 00 10 */	ble lbl_80260A64
/* 80260A58 0025D9B8  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80260A5C 0025D9BC  7C 00 00 26 */	mfcr r0
/* 80260A60 0025D9C0  54 00 0F FE */	srwi r0, r0, 0x1f
lbl_80260A64:
/* 80260A64 0025D9C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80260A68 0025D9C8  41 82 00 30 */	beq lbl_80260A98
/* 80260A6C 0025D9CC  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80260A70 0025D9D0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80260A74 0025D9D4  38 81 00 20 */	addi r4, r1, 0x20
/* 80260A78 0025D9D8  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80260A7C 0025D9DC  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80260A80 0025D9E0  4B F6 60 B5 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 80260A84 0025D9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80260A88 0025D9E8  40 82 00 10 */	bne lbl_80260A98
/* 80260A8C 0025D9EC  A0 1B 00 08 */	lhz r0, 8(r27)
/* 80260A90 0025D9F0  FF C0 E0 90 */	fmr f30, f28
/* 80260A94 0025D9F4  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_80260A98:
/* 80260A98 0025D9F8  3B 9C 00 02 */	addi r28, r28, 2
lbl_80260A9C:
/* 80260A9C 0025D9FC  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80260AA0 0025DA00  54 00 08 3C */	slwi r0, r0, 1
/* 80260AA4 0025DA04  7C 1D 02 14 */	add r0, r29, r0
/* 80260AA8 0025DA08  7C 1C 00 40 */	cmplw r28, r0
/* 80260AAC 0025DA0C  40 82 FF 28 */	bne lbl_802609D4
/* 80260AB0 0025DA10  A0 7E 06 94 */	lhz r3, 0x694(r30)
/* 80260AB4 0025DA14  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80260AB8 0025DA18  7C 03 00 40 */	cmplw r3, r0
/* 80260ABC 0025DA1C  41 82 00 A8 */	beq lbl_80260B64
/* 80260AC0 0025DA20  A0 1E 06 94 */	lhz r0, 0x694(r30)
/* 80260AC4 0025DA24  7F E3 FB 78 */	mr r3, r31
/* 80260AC8 0025DA28  38 81 00 08 */	addi r4, r1, 8
/* 80260ACC 0025DA2C  B0 01 00 08 */	sth r0, 8(r1)
/* 80260AD0 0025DA30  4B DE BA A5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80260AD4 0025DA34  7C 64 1B 78 */	mr r4, r3
/* 80260AD8 0025DA38  38 61 00 18 */	addi r3, r1, 0x18
/* 80260ADC 0025DA3C  4B E4 EF 61 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 80260AE0 0025DA40  80 A3 00 04 */	lwz r5, 4(r3)
/* 80260AE4 0025DA44  28 05 00 00 */	cmplwi r5, 0
/* 80260AE8 0025DA48  41 82 00 7C */	beq lbl_80260B64
/* 80260AEC 0025DA4C  88 05 01 90 */	lbz r0, 0x190(r5)
/* 80260AF0 0025DA50  38 60 00 01 */	li r3, 1
/* 80260AF4 0025DA54  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80260AF8 0025DA58  38 80 00 00 */	li r4, 0
/* 80260AFC 0025DA5C  98 05 01 90 */	stb r0, 0x190(r5)
/* 80260B00 0025DA60  88 05 01 90 */	lbz r0, 0x190(r5)
/* 80260B04 0025DA64  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80260B08 0025DA68  98 05 01 90 */	stb r0, 0x190(r5)
/* 80260B0C 0025DA6C  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 80260B10 0025DA70  2C 05 00 00 */	cmpwi r5, 0
/* 80260B14 0025DA74  40 81 00 40 */	ble lbl_80260B54
/* 80260B18 0025DA78  2C 05 00 08 */	cmpwi r5, 8
/* 80260B1C 0025DA7C  38 65 FF F8 */	addi r3, r5, -8
/* 80260B20 0025DA80  40 81 00 20 */	ble lbl_80260B40
/* 80260B24 0025DA84  38 03 00 07 */	addi r0, r3, 7
/* 80260B28 0025DA88  54 00 E8 FE */	srwi r0, r0, 3
/* 80260B2C 0025DA8C  7C 09 03 A6 */	mtctr r0
/* 80260B30 0025DA90  2C 03 00 00 */	cmpwi r3, 0
/* 80260B34 0025DA94  40 81 00 0C */	ble lbl_80260B40
lbl_80260B38:
/* 80260B38 0025DA98  38 84 00 08 */	addi r4, r4, 8
/* 80260B3C 0025DA9C  42 00 FF FC */	bdnz lbl_80260B38
lbl_80260B40:
/* 80260B40 0025DAA0  7C 04 28 50 */	subf r0, r4, r5
/* 80260B44 0025DAA4  7C 09 03 A6 */	mtctr r0
/* 80260B48 0025DAA8  7C 04 28 00 */	cmpw r4, r5
/* 80260B4C 0025DAAC  40 80 00 08 */	bge lbl_80260B54
lbl_80260B50:
/* 80260B50 0025DAB0  42 00 00 00 */	bdnz lbl_80260B50
lbl_80260B54:
/* 80260B54 0025DAB4  38 00 00 00 */	li r0, 0
/* 80260B58 0025DAB8  38 60 00 01 */	li r3, 1
/* 80260B5C 0025DABC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80260B60 0025DAC0  48 00 00 5C */	b lbl_80260BBC
lbl_80260B64:
/* 80260B64 0025DAC4  80 A1 00 90 */	lwz r5, 0x90(r1)
/* 80260B68 0025DAC8  38 60 00 00 */	li r3, 0
/* 80260B6C 0025DACC  2C 05 00 00 */	cmpwi r5, 0
/* 80260B70 0025DAD0  40 81 00 40 */	ble lbl_80260BB0
/* 80260B74 0025DAD4  2C 05 00 08 */	cmpwi r5, 8
/* 80260B78 0025DAD8  38 85 FF F8 */	addi r4, r5, -8
/* 80260B7C 0025DADC  40 81 00 20 */	ble lbl_80260B9C
/* 80260B80 0025DAE0  38 04 00 07 */	addi r0, r4, 7
/* 80260B84 0025DAE4  54 00 E8 FE */	srwi r0, r0, 3
/* 80260B88 0025DAE8  7C 09 03 A6 */	mtctr r0
/* 80260B8C 0025DAEC  2C 04 00 00 */	cmpwi r4, 0
/* 80260B90 0025DAF0  40 81 00 0C */	ble lbl_80260B9C
lbl_80260B94:
/* 80260B94 0025DAF4  38 63 00 08 */	addi r3, r3, 8
/* 80260B98 0025DAF8  42 00 FF FC */	bdnz lbl_80260B94
lbl_80260B9C:
/* 80260B9C 0025DAFC  7C 03 28 50 */	subf r0, r3, r5
/* 80260BA0 0025DB00  7C 09 03 A6 */	mtctr r0
/* 80260BA4 0025DB04  7C 03 28 00 */	cmpw r3, r5
/* 80260BA8 0025DB08  40 80 00 08 */	bge lbl_80260BB0
lbl_80260BAC:
/* 80260BAC 0025DB0C  42 00 00 00 */	bdnz lbl_80260BAC
lbl_80260BB0:
/* 80260BB0 0025DB10  38 00 00 00 */	li r0, 0
/* 80260BB4 0025DB14  38 60 00 00 */	li r3, 0
/* 80260BB8 0025DB18  90 01 00 90 */	stw r0, 0x90(r1)
lbl_80260BBC:
/* 80260BBC 0025DB1C  E3 E1 08 E8 */	psq_l f31, -1816(r1), 0, qr0
/* 80260BC0 0025DB20  CB E1 08 E0 */	lfd f31, 0x8e0(r1)
/* 80260BC4 0025DB24  E3 C1 08 D8 */	psq_l f30, -1832(r1), 0, qr0
/* 80260BC8 0025DB28  CB C1 08 D0 */	lfd f30, 0x8d0(r1)
/* 80260BCC 0025DB2C  E3 A1 08 C8 */	psq_l f29, -1848(r1), 0, qr0
/* 80260BD0 0025DB30  CB A1 08 C0 */	lfd f29, 0x8c0(r1)
/* 80260BD4 0025DB34  E3 81 08 B8 */	psq_l f28, -1864(r1), 0, qr0
/* 80260BD8 0025DB38  CB 81 08 B0 */	lfd f28, 0x8b0(r1)
/* 80260BDC 0025DB3C  BB 61 08 9C */	lmw r27, 0x89c(r1)
/* 80260BE0 0025DB40  80 01 08 F4 */	lwz r0, 0x8f4(r1)
/* 80260BE4 0025DB44  7C 08 03 A6 */	mtlr r0
/* 80260BE8 0025DB48  38 21 08 F0 */	addi r1, r1, 0x8f0
/* 80260BEC 0025DB4C  4E 80 00 20 */	blr 

.global sub_80260bf0
sub_80260bf0:
/* 80260BF0 0025DB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80260BF4 0025DB54  7C 08 02 A6 */	mflr r0
/* 80260BF8 0025DB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 80260BFC 0025DB5C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80260C00 0025DB60  7C DF 33 78 */	mr r31, r6
/* 80260C04 0025DB64  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80260C08 0025DB68  7C 9E 23 78 */	mr r30, r4
/* 80260C0C 0025DB6C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80260C10 0025DB70  7C 7D 1B 78 */	mr r29, r3
/* 80260C14 0025DB74  A0 05 00 00 */	lhz r0, 0(r5)
/* 80260C18 0025DB78  38 A1 00 08 */	addi r5, r1, 8
/* 80260C1C 0025DB7C  B0 01 00 08 */	sth r0, 8(r1)
/* 80260C20 0025DB80  4B E1 BF 59 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80260C24 0025DB84  2C 1E 00 22 */	cmpwi r30, 0x22
/* 80260C28 0025DB88  41 82 00 5C */	beq lbl_80260C84
/* 80260C2C 0025DB8C  40 80 00 10 */	bge lbl_80260C3C
/* 80260C30 0025DB90  2C 1E 00 21 */	cmpwi r30, 0x21
/* 80260C34 0025DB94  40 80 00 14 */	bge lbl_80260C48
/* 80260C38 0025DB98  48 00 00 4C */	b lbl_80260C84
lbl_80260C3C:
/* 80260C3C 0025DB9C  2C 1E 00 24 */	cmpwi r30, 0x24
/* 80260C40 0025DBA0  40 80 00 44 */	bge lbl_80260C84
/* 80260C44 0025DBA4  48 00 00 14 */	b lbl_80260C58
lbl_80260C48:
/* 80260C48 0025DBA8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80260C4C 0025DBAC  7F E4 FB 78 */	mr r4, r31
/* 80260C50 0025DBB0  4B ED A0 A1 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80260C54 0025DBB4  48 00 00 30 */	b lbl_80260C84
lbl_80260C58:
/* 80260C58 0025DBB8  80 BD 00 04 */	lwz r5, 4(r29)
/* 80260C5C 0025DBBC  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 80260C60 0025DBC0  54 A3 18 38 */	slwi r3, r5, 3
/* 80260C64 0025DBC4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80260C68 0025DBC8  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80260C6C 0025DBCC  38 03 00 04 */	addi r0, r3, 4
/* 80260C70 0025DBD0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80260C74 0025DBD4  7C 64 00 2E */	lwzx r3, r4, r0
/* 80260C78 0025DBD8  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80260C7C 0025DBDC  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80260C80 0025DBE0  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_80260C84:
/* 80260C84 0025DBE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80260C88 0025DBE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80260C8C 0025DBEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80260C90 0025DBF0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80260C94 0025DBF4  7C 08 03 A6 */	mtlr r0
/* 80260C98 0025DBF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80260C9C 0025DBFC  4E 80 00 20 */	blr 

.global __dt__9CTryclopsFv
__dt__9CTryclopsFv:
/* 80260CA0 0025DC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260CA4 0025DC04  7C 08 02 A6 */	mflr r0
/* 80260CA8 0025DC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260CAC 0025DC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80260CB0 0025DC10  7C 9F 23 78 */	mr r31, r4
/* 80260CB4 0025DC14  93 C1 00 08 */	stw r30, 8(r1)
/* 80260CB8 0025DC18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80260CBC 0025DC1C  41 82 00 90 */	beq lbl_80260D4C
/* 80260CC0 0025DC20  3C 60 80 3F */	lis r3, lbl_803E9A40@ha
/* 80260CC4 0025DC24  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80260CC8 0025DC28  38 03 9A 40 */	addi r0, r3, lbl_803E9A40@l
/* 80260CCC 0025DC2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80260CD0 0025DC30  41 82 00 60 */	beq lbl_80260D30
/* 80260CD4 0025DC34  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80260CD8 0025DC38  41 82 00 58 */	beq lbl_80260D30
/* 80260CDC 0025DC3C  80 BE 05 6C */	lwz r5, 0x56c(r30)
/* 80260CE0 0025DC40  38 60 00 00 */	li r3, 0
/* 80260CE4 0025DC44  2C 05 00 00 */	cmpwi r5, 0
/* 80260CE8 0025DC48  40 81 00 40 */	ble lbl_80260D28
/* 80260CEC 0025DC4C  2C 05 00 08 */	cmpwi r5, 8
/* 80260CF0 0025DC50  38 85 FF F8 */	addi r4, r5, -8
/* 80260CF4 0025DC54  40 81 00 20 */	ble lbl_80260D14
/* 80260CF8 0025DC58  38 04 00 07 */	addi r0, r4, 7
/* 80260CFC 0025DC5C  54 00 E8 FE */	srwi r0, r0, 3
/* 80260D00 0025DC60  7C 09 03 A6 */	mtctr r0
/* 80260D04 0025DC64  2C 04 00 00 */	cmpwi r4, 0
/* 80260D08 0025DC68  40 81 00 0C */	ble lbl_80260D14
lbl_80260D0C:
/* 80260D0C 0025DC6C  38 63 00 08 */	addi r3, r3, 8
/* 80260D10 0025DC70  42 00 FF FC */	bdnz lbl_80260D0C
lbl_80260D14:
/* 80260D14 0025DC74  7C 03 28 50 */	subf r0, r3, r5
/* 80260D18 0025DC78  7C 09 03 A6 */	mtctr r0
/* 80260D1C 0025DC7C  7C 03 28 00 */	cmpw r3, r5
/* 80260D20 0025DC80  40 80 00 08 */	bge lbl_80260D28
lbl_80260D24:
/* 80260D24 0025DC84  42 00 00 00 */	bdnz lbl_80260D24
lbl_80260D28:
/* 80260D28 0025DC88  38 00 00 00 */	li r0, 0
/* 80260D2C 0025DC8C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80260D30:
/* 80260D30 0025DC90  7F C3 F3 78 */	mr r3, r30
/* 80260D34 0025DC94  38 80 00 00 */	li r4, 0
/* 80260D38 0025DC98  4B E1 68 39 */	bl __dt__10CPatternedFv
/* 80260D3C 0025DC9C  7F E0 07 35 */	extsh. r0, r31
/* 80260D40 0025DCA0  40 81 00 0C */	ble lbl_80260D4C
/* 80260D44 0025DCA4  7F C3 F3 78 */	mr r3, r30
/* 80260D48 0025DCA8  48 0B 4B E9 */	bl Free__7CMemoryFPCv
lbl_80260D4C:
/* 80260D4C 0025DCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260D50 0025DCB0  7F C3 F3 78 */	mr r3, r30
/* 80260D54 0025DCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80260D58 0025DCB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80260D5C 0025DCBC  7C 08 03 A6 */	mtlr r0
/* 80260D60 0025DCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80260D64 0025DCC4  4E 80 00 20 */	blr 

.global __ct__9CTryclops
__ct__9CTryclops:
/* 80260D68 0025DCC8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80260D6C 0025DCCC  7C 08 02 A6 */	mflr r0
/* 80260D70 0025DCD0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80260D74 0025DCD4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80260D78 0025DCD8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80260D7C 0025DCDC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80260D80 0025DCE0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 80260D84 0025DCE4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80260D88 0025DCE8  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 80260D8C 0025DCEC  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 80260D90 0025DCF0  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 80260D94 0025DCF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80260D98 0025DCF8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80260D9C 0025DCFC  A0 04 00 00 */	lhz r0, 0(r4)
/* 80260DA0 0025DD00  7D 3E 4B 78 */	mr r30, r9
/* 80260DA4 0025DD04  7C C4 33 78 */	mr r4, r6
/* 80260DA8 0025DD08  7D 0C 43 78 */	mr r12, r8
/* 80260DAC 0025DD0C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80260DB0 0025DD10  7C A6 2B 78 */	mr r6, r5
/* 80260DB4 0025DD14  7C 88 23 78 */	mr r8, r4
/* 80260DB8 0025DD18  7C E9 3B 78 */	mr r9, r7
/* 80260DBC 0025DD1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80260DC0 0025DD20  39 60 00 00 */	li r11, 0
/* 80260DC4 0025DD24  38 00 00 01 */	li r0, 1
/* 80260DC8 0025DD28  FF 80 08 90 */	fmr f28, f1
/* 80260DCC 0025DD2C  91 61 00 0C */	stw r11, 0xc(r1)
/* 80260DD0 0025DD30  FF A0 10 90 */	fmr f29, f2
/* 80260DD4 0025DD34  FF C0 18 90 */	fmr f30, f3
/* 80260DD8 0025DD38  7C 7F 1B 78 */	mr r31, r3
/* 80260DDC 0025DD3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80260DE0 0025DD40  FF E0 20 90 */	fmr f31, f4
/* 80260DE4 0025DD44  38 A1 00 20 */	addi r5, r1, 0x20
/* 80260DE8 0025DD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260DEC 0025DD4C  38 80 00 26 */	li r4, 0x26
/* 80260DF0 0025DD50  38 E0 00 00 */	li r7, 0
/* 80260DF4 0025DD54  91 41 00 18 */	stw r10, 0x18(r1)
/* 80260DF8 0025DD58  7D 8A 63 78 */	mr r10, r12
/* 80260DFC 0025DD5C  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80260E00 0025DD60  4B E1 C6 51 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80260E04 0025DD64  3C 60 80 3F */	lis r3, lbl_803E9A40@ha
/* 80260E08 0025DD68  C0 22 BA 3C */	lfs f1, lbl_805AD75C@sda21(r2)
/* 80260E0C 0025DD6C  38 03 9A 40 */	addi r0, r3, lbl_803E9A40@l
/* 80260E10 0025DD70  38 7F 05 68 */	addi r3, r31, 0x568
/* 80260E14 0025DD74  90 1F 00 00 */	stw r0, 0(r31)
/* 80260E18 0025DD78  FC 40 08 90 */	fmr f2, f1
/* 80260E1C 0025DD7C  38 80 00 00 */	li r4, 0
/* 80260E20 0025DD80  38 A0 00 01 */	li r5, 1
/* 80260E24 0025DD84  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 80260E28 0025DD88  4B F6 7F 6D */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80260E2C 0025DD8C  3C 80 80 5A */	lis r4, skIdentity4f@ha
/* 80260E30 0025DD90  38 7F 06 4C */	addi r3, r31, 0x64c
/* 80260E34 0025DD94  38 84 66 70 */	addi r4, r4, skIdentity4f@l
/* 80260E38 0025DD98  48 0B 1D 3D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80260E3C 0025DD9C  C0 02 BA 60 */	lfs f0, lbl_805AD780@sda21(r2)
/* 80260E40 0025DDA0  C0 22 BA 5C */	lfs f1, lbl_805AD77C@sda21(r2)
/* 80260E44 0025DDA4  EC 00 07 72 */	fmuls f0, f0, f29
/* 80260E48 0025DDA8  D3 9F 06 7C */	stfs f28, 0x67c(r31)
/* 80260E4C 0025DDAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80260E50 0025DDB0  48 13 35 A1 */	bl cos
/* 80260E54 0025DDB4  FC 20 08 18 */	frsp f1, f1
/* 80260E58 0025DDB8  C0 02 BA 34 */	lfs f0, lbl_805AD754@sda21(r2)
/* 80260E5C 0025DDBC  38 A0 00 00 */	li r5, 0
/* 80260E60 0025DDC0  7F E3 FB 78 */	mr r3, r31
/* 80260E64 0025DDC4  38 80 00 00 */	li r4, 0
/* 80260E68 0025DDC8  D0 3F 06 80 */	stfs f1, 0x680(r31)
/* 80260E6C 0025DDCC  D3 DF 06 84 */	stfs f30, 0x684(r31)
/* 80260E70 0025DDD0  D3 FF 06 88 */	stfs f31, 0x688(r31)
/* 80260E74 0025DDD4  D0 1F 06 8C */	stfs f0, 0x68c(r31)
/* 80260E78 0025DDD8  90 BF 06 90 */	stw r5, 0x690(r31)
/* 80260E7C 0025DDDC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80260E80 0025DDE0  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 80260E84 0025DDE4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80260E88 0025DDE8  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 80260E8C 0025DDEC  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 80260E90 0025DDF0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80260E94 0025DDF4  98 1F 06 98 */	stb r0, 0x698(r31)
/* 80260E98 0025DDF8  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 80260E9C 0025DDFC  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80260EA0 0025DE00  98 1F 06 98 */	stb r0, 0x698(r31)
/* 80260EA4 0025DE04  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 80260EA8 0025DE08  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80260EAC 0025DE0C  98 1F 06 98 */	stb r0, 0x698(r31)
/* 80260EB0 0025DE10  88 1F 06 98 */	lbz r0, 0x698(r31)
/* 80260EB4 0025DE14  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80260EB8 0025DE18  98 1F 06 98 */	stb r0, 0x698(r31)
/* 80260EBC 0025DE1C  4B DF 1E B1 */	bl CreateShadow__6CActorFb
/* 80260EC0 0025DE20  7F E3 FB 78 */	mr r3, r31
/* 80260EC4 0025DE24  4B E1 69 D1 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 80260EC8 0025DE28  38 7F 04 60 */	addi r3, r31, 0x460
/* 80260ECC 0025DE2C  38 80 00 00 */	li r4, 0
/* 80260ED0 0025DE30  4B FD 2E 95 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 80260ED4 0025DE34  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80260ED8 0025DE38  38 60 00 00 */	li r3, 0
/* 80260EDC 0025DE3C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80260EE0 0025DE40  7F E3 FB 78 */	mr r3, r31
/* 80260EE4 0025DE44  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80260EE8 0025DE48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80260EEC 0025DE4C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80260EF0 0025DE50  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80260EF4 0025DE54  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80260EF8 0025DE58  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80260EFC 0025DE5C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80260F00 0025DE60  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 80260F04 0025DE64  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80260F08 0025DE68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80260F0C 0025DE6C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80260F10 0025DE70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80260F14 0025DE74  7C 08 03 A6 */	mtlr r0
/* 80260F18 0025DE78  38 21 00 70 */	addi r1, r1, 0x70
/* 80260F1C 0025DE7C  4E 80 00 20 */	blr 

.global __sinit_CTryclops_cpp
__sinit_CTryclops_cpp:
/* 80260F20 0025DE80  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80260F24 0025DE84  7C 08 02 A6 */	mflr r0
/* 80260F28 0025DE88  39 60 00 02 */	li r11, 2
/* 80260F2C 0025DE8C  38 80 00 02 */	li r4, 2
/* 80260F30 0025DE90  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80260F34 0025DE94  38 00 00 00 */	li r0, 0
/* 80260F38 0025DE98  38 61 00 30 */	addi r3, r1, 0x30
/* 80260F3C 0025DE9C  38 A0 00 02 */	li r5, 2
/* 80260F40 0025DEA0  BD E1 00 9C */	stmw r15, 0x9c(r1)
/* 80260F44 0025DEA4  38 C0 00 02 */	li r6, 2
/* 80260F48 0025DEA8  38 E0 00 02 */	li r7, 2
/* 80260F4C 0025DEAC  39 00 00 02 */	li r8, 2
/* 80260F50 0025DEB0  39 20 00 01 */	li r9, 1
/* 80260F54 0025DEB4  39 40 00 02 */	li r10, 2
/* 80260F58 0025DEB8  91 61 00 08 */	stw r11, 8(r1)
/* 80260F5C 0025DEBC  91 61 00 0C */	stw r11, 0xc(r1)
/* 80260F60 0025DEC0  91 61 00 10 */	stw r11, 0x10(r1)
/* 80260F64 0025DEC4  91 61 00 14 */	stw r11, 0x14(r1)
/* 80260F68 0025DEC8  91 61 00 18 */	stw r11, 0x18(r1)
/* 80260F6C 0025DECC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80260F70 0025DED0  91 61 00 20 */	stw r11, 0x20(r1)
/* 80260F74 0025DED4  91 61 00 24 */	stw r11, 0x24(r1)
/* 80260F78 0025DED8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80260F7C 0025DEDC  4B EA 19 B9 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 80260F80 0025DEE0  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80260F84 0025DEE4  3C 80 80 57 */	lis r4, lbl_80572614@ha
/* 80260F88 0025DEE8  C0 22 BA 34 */	lfs f1, lbl_805AD754@sda21(r2)
/* 80260F8C 0025DEEC  3C A0 80 57 */	lis r5, lbl_80572688@ha
/* 80260F90 0025DEF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80260F94 0025DEF4  94 64 26 14 */	stwu r3, lbl_80572614@l(r4)
/* 80260F98 0025DEF8  81 E1 00 38 */	lwz r15, 0x38(r1)
/* 80260F9C 0025DEFC  82 01 00 3C */	lwz r16, 0x3c(r1)
/* 80260FA0 0025DF00  82 21 00 40 */	lwz r17, 0x40(r1)
/* 80260FA4 0025DF04  82 41 00 44 */	lwz r18, 0x44(r1)
/* 80260FA8 0025DF08  82 61 00 48 */	lwz r19, 0x48(r1)
/* 80260FAC 0025DF0C  82 81 00 4C */	lwz r20, 0x4c(r1)
/* 80260FB0 0025DF10  82 A1 00 50 */	lwz r21, 0x50(r1)
/* 80260FB4 0025DF14  82 C1 00 54 */	lwz r22, 0x54(r1)
/* 80260FB8 0025DF18  82 E1 00 58 */	lwz r23, 0x58(r1)
/* 80260FBC 0025DF1C  83 01 00 5C */	lwz r24, 0x5c(r1)
/* 80260FC0 0025DF20  83 21 00 60 */	lwz r25, 0x60(r1)
/* 80260FC4 0025DF24  83 41 00 64 */	lwz r26, 0x64(r1)
/* 80260FC8 0025DF28  83 61 00 68 */	lwz r27, 0x68(r1)
/* 80260FCC 0025DF2C  83 81 00 6C */	lwz r28, 0x6c(r1)
/* 80260FD0 0025DF30  83 A1 00 70 */	lwz r29, 0x70(r1)
/* 80260FD4 0025DF34  83 C1 00 74 */	lwz r30, 0x74(r1)
/* 80260FD8 0025DF38  83 E1 00 78 */	lwz r31, 0x78(r1)
/* 80260FDC 0025DF3C  81 81 00 7C */	lwz r12, 0x7c(r1)
/* 80260FE0 0025DF40  81 61 00 80 */	lwz r11, 0x80(r1)
/* 80260FE4 0025DF44  81 41 00 84 */	lwz r10, 0x84(r1)
/* 80260FE8 0025DF48  81 21 00 88 */	lwz r9, 0x88(r1)
/* 80260FEC 0025DF4C  81 01 00 8C */	lwz r8, 0x8c(r1)
/* 80260FF0 0025DF50  80 E1 00 90 */	lwz r7, 0x90(r1)
/* 80260FF4 0025DF54  80 C1 00 94 */	lwz r6, 0x94(r1)
/* 80260FF8 0025DF58  D4 25 26 88 */	stfsu f1, lbl_80572688@l(r5)
/* 80260FFC 0025DF5C  C0 02 BA 64 */	lfs f0, lbl_805AD784@sda21(r2)
/* 80261000 0025DF60  90 04 00 04 */	stw r0, 4(r4)
/* 80261004 0025DF64  91 E4 00 08 */	stw r15, 8(r4)
/* 80261008 0025DF68  92 04 00 0C */	stw r16, 0xc(r4)
/* 8026100C 0025DF6C  92 24 00 10 */	stw r17, 0x10(r4)
/* 80261010 0025DF70  92 44 00 14 */	stw r18, 0x14(r4)
/* 80261014 0025DF74  92 64 00 18 */	stw r19, 0x18(r4)
/* 80261018 0025DF78  92 84 00 1C */	stw r20, 0x1c(r4)
/* 8026101C 0025DF7C  92 A4 00 20 */	stw r21, 0x20(r4)
/* 80261020 0025DF80  92 C4 00 24 */	stw r22, 0x24(r4)
/* 80261024 0025DF84  92 E4 00 28 */	stw r23, 0x28(r4)
/* 80261028 0025DF88  93 04 00 2C */	stw r24, 0x2c(r4)
/* 8026102C 0025DF8C  93 24 00 30 */	stw r25, 0x30(r4)
/* 80261030 0025DF90  93 44 00 34 */	stw r26, 0x34(r4)
/* 80261034 0025DF94  93 64 00 38 */	stw r27, 0x38(r4)
/* 80261038 0025DF98  93 84 00 3C */	stw r28, 0x3c(r4)
/* 8026103C 0025DF9C  93 A4 00 40 */	stw r29, 0x40(r4)
/* 80261040 0025DFA0  93 C4 00 44 */	stw r30, 0x44(r4)
/* 80261044 0025DFA4  93 E4 00 48 */	stw r31, 0x48(r4)
/* 80261048 0025DFA8  91 84 00 4C */	stw r12, 0x4c(r4)
/* 8026104C 0025DFAC  91 64 00 50 */	stw r11, 0x50(r4)
/* 80261050 0025DFB0  91 44 00 54 */	stw r10, 0x54(r4)
/* 80261054 0025DFB4  91 24 00 58 */	stw r9, 0x58(r4)
/* 80261058 0025DFB8  91 04 00 5C */	stw r8, 0x5c(r4)
/* 8026105C 0025DFBC  90 E4 00 60 */	stw r7, 0x60(r4)
/* 80261060 0025DFC0  90 C4 00 64 */	stw r6, 0x64(r4)
/* 80261064 0025DFC4  D0 25 00 04 */	stfs f1, 4(r5)
/* 80261068 0025DFC8  D0 05 00 08 */	stfs f0, 8(r5)
/* 8026106C 0025DFCC  B9 E1 00 9C */	lmw r15, 0x9c(r1)
/* 80261070 0025DFD0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80261074 0025DFD4  7C 08 03 A6 */	mtlr r0
/* 80261078 0025DFD8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8026107C 0025DFDC  4E 80 00 20 */	blr

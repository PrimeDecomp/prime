.include "macros.inc"

.section .data
.balign 8

.global skGasJetLocators
skGasJetLocators:
	# ROM: 0x3E6650
	.4byte lbl_803D5100
	.4byte lbl_803D5109
	.4byte lbl_803D5112
	.4byte lbl_803D511B
	.4byte lbl_803D5124
	.4byte lbl_803D512D
	.4byte lbl_803D5136
	.4byte lbl_803D513F
	.4byte lbl_803D5148
	.4byte lbl_803D5151
	.4byte lbl_803D515A
	.4byte lbl_803D5163
	.4byte lbl_803D516C
	.4byte lbl_803D5175

.global skGasLocators
skGasLocators:
	# ROM: 0x3E6688
	.4byte lbl_803D517E
	.4byte lbl_803D518A
	.4byte lbl_803D5196
	.4byte lbl_803D51A2
	.4byte lbl_803D51AE
	.4byte lbl_803D51BA
	.4byte lbl_803D51C6
	.4byte lbl_803D51D2
	.4byte lbl_803D51DE
	.4byte lbl_803D51EA
	.4byte lbl_803D51F6
	.4byte lbl_803D5202
	.4byte lbl_803D520E
	.4byte lbl_803D521A

.global __vt__7CPuffer
__vt__7CPuffer:
	# ROM: 0x3E66C0
	.4byte 0
	.4byte 0
	.4byte __dt__7CPufferFv
	.4byte Accept__7CPufferFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__7CPufferFfR13CStateManager
	.4byte AcceptScriptMsg__7CPufferF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__7CPufferCFv
	.4byte Touch__7CPufferFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__7CPufferFR13CStateManagerRC9CVector3f18EScriptObjectState
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

.section .sdata
.balign 8

.global lbl_805A8380
lbl_805A8380:
	# ROM: 0x3F5D20
	.4byte 0x00000013

.global lbl_805A8384
lbl_805A8384:
	# ROM: 0x3F5D24
	.4byte 0x00000020

.global lbl_805A8388
lbl_805A8388:
	# ROM: 0x3F5D28
	.4byte 0x00000026
	.4byte 0

.section .text, "ax"

.global sub8025bfa4__7CPufferFR13CStateManager
sub8025bfa4__7CPufferFR13CStateManager:
/* 8025BFA4 00258F04  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8025BFA8 00258F08  7C 08 02 A6 */	mflr r0
/* 8025BFAC 00258F0C  90 01 01 14 */	stw r0, 0x114(r1)
/* 8025BFB0 00258F10  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8025BFB4 00258F14  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8025BFB8 00258F18  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 8025BFBC 00258F1C  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 8025BFC0 00258F20  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 8025BFC4 00258F24  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 8025BFC8 00258F28  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 8025BFCC 00258F2C  F3 81 00 D8 */	psq_st f28, 216(r1), 0, qr0
/* 8025BFD0 00258F30  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 8025BFD4 00258F34  F3 61 00 C8 */	psq_st f27, 200(r1), 0, qr0
/* 8025BFD8 00258F38  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 8025BFDC 00258F3C  F3 41 00 B8 */	psq_st f26, 184(r1), 0, qr0
/* 8025BFE0 00258F40  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 8025BFE4 00258F44  7C 7D 1B 78 */	mr r29, r3
/* 8025BFE8 00258F48  7C 9E 23 78 */	mr r30, r4
/* 8025BFEC 00258F4C  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8025BFF0 00258F50  C0 03 00 04 */	lfs f0, 4(r3)
/* 8025BFF4 00258F54  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8025BFF8 00258F58  C0 03 00 08 */	lfs f0, 8(r3)
/* 8025BFFC 00258F5C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8025C000 00258F60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8025C004 00258F64  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8025C008 00258F68  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 8025C00C 00258F6C  2C 00 00 00 */	cmpwi r0, 0
/* 8025C010 00258F70  40 82 00 7C */	bne lbl_8025C08C
/* 8025C014 00258F74  3C 60 80 3F */	lis r3, skGasLocators@ha
/* 8025C018 00258F78  3B 9D 05 D8 */	addi r28, r29, 0x5d8
/* 8025C01C 00258F7C  3B E3 96 88 */	addi r31, r3, skGasLocators@l
/* 8025C020 00258F80  3B 40 00 00 */	li r26, 0
lbl_8025C024:
/* 8025C024 00258F84  80 9F 00 00 */	lwz r4, 0(r31)
/* 8025C028 00258F88  38 61 00 40 */	addi r3, r1, 0x40
/* 8025C02C 00258F8C  4B DA 8C 8D */	bl string_l__4rstlFPCc
/* 8025C030 00258F90  7F A4 EB 78 */	mr r4, r29
/* 8025C034 00258F94  38 61 00 5C */	addi r3, r1, 0x5c
/* 8025C038 00258F98  38 A1 00 40 */	addi r5, r1, 0x40
/* 8025C03C 00258F9C  4B DF 6E 95 */	bl "GetScaledLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025C040 00258FA0  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 8025C044 00258FA4  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8025C048 00258FA8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8025C04C 00258FAC  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8025C050 00258FB0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8025C054 00258FB4  7C 7C 02 15 */	add. r3, r28, r0
/* 8025C058 00258FB8  41 82 00 10 */	beq lbl_8025C068
/* 8025C05C 00258FBC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8025C060 00258FC0  D0 23 00 04 */	stfs f1, 4(r3)
/* 8025C064 00258FC4  D0 43 00 08 */	stfs f2, 8(r3)
lbl_8025C068:
/* 8025C068 00258FC8  80 9D 05 D4 */	lwz r4, 0x5d4(r29)
/* 8025C06C 00258FCC  38 61 00 40 */	addi r3, r1, 0x40
/* 8025C070 00258FD0  38 04 00 01 */	addi r0, r4, 1
/* 8025C074 00258FD4  90 1D 05 D4 */	stw r0, 0x5d4(r29)
/* 8025C078 00258FD8  48 0E 1A 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025C07C 00258FDC  3B 5A 00 01 */	addi r26, r26, 1
/* 8025C080 00258FE0  3B FF 00 04 */	addi r31, r31, 4
/* 8025C084 00258FE4  2C 1A 00 0E */	cmpwi r26, 0xe
/* 8025C088 00258FE8  41 80 FF 9C */	blt lbl_8025C024
lbl_8025C08C:
/* 8025C08C 00258FEC  38 61 00 50 */	addi r3, r1, 0x50
/* 8025C090 00258FF0  48 0B 86 69 */	bl CanBeNormalized__9CVector3fCFv
/* 8025C094 00258FF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025C098 00258FF8  41 82 00 FC */	beq lbl_8025C194
/* 8025C09C 00258FFC  38 61 00 34 */	addi r3, r1, 0x34
/* 8025C0A0 00259000  38 81 00 50 */	addi r4, r1, 0x50
/* 8025C0A4 00259004  48 0B 87 AD */	bl AsNormalized__9CVector3fCFv
/* 8025C0A8 00259008  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 8025C0AC 0025900C  3C 60 80 3F */	lis r3, skGasJetLocators@ha
/* 8025C0B0 00259010  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8025C0B4 00259014  3B 63 96 50 */	addi r27, r3, skGasJetLocators@l
/* 8025C0B8 00259018  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8025C0BC 0025901C  FF E0 10 50 */	fneg f31, f2
/* 8025C0C0 00259020  FF C0 08 50 */	fneg f30, f1
/* 8025C0C4 00259024  3B 9D 05 D8 */	addi r28, r29, 0x5d8
/* 8025C0C8 00259028  FF A0 00 50 */	fneg f29, f0
/* 8025C0CC 0025902C  3B E0 00 00 */	li r31, 0
lbl_8025C0D0:
/* 8025C0D0 00259030  7F 85 E3 78 */	mr r5, r28
/* 8025C0D4 00259034  38 61 00 28 */	addi r3, r1, 0x28
/* 8025C0D8 00259038  38 9D 00 34 */	addi r4, r29, 0x34
/* 8025C0DC 0025903C  48 0B 69 A5 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8025C0E0 00259040  C3 81 00 28 */	lfs f28, 0x28(r1)
/* 8025C0E4 00259044  C3 61 00 2C */	lfs f27, 0x2c(r1)
/* 8025C0E8 00259048  C3 41 00 30 */	lfs f26, 0x30(r1)
/* 8025C0EC 0025904C  C0 22 B9 E8 */	lfs f1, lbl_805AD708@sda21(r2)
/* 8025C0F0 00259050  48 0B 8C 55 */	bl FastCosR__5CMathFf
/* 8025C0F4 00259054  EC 1E 06 F2 */	fmuls f0, f30, f27
/* 8025C0F8 00259058  EC 1F 07 3A */	fmadds f0, f31, f28, f0
/* 8025C0FC 0025905C  EC 1D 06 BA */	fmadds f0, f29, f26, f0
/* 8025C100 00259060  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8025C104 00259064  7C 80 00 26 */	mfcr r4
/* 8025C108 00259068  38 00 00 01 */	li r0, 1
/* 8025C10C 0025906C  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8025C110 00259070  7C 1A F8 30 */	slw r26, r0, r31
/* 8025C114 00259074  54 99 17 FE */	rlwinm r25, r4, 2, 0x1f, 0x1f
/* 8025C118 00259078  7C 63 D0 38 */	and r3, r3, r26
/* 8025C11C 0025907C  7C 03 00 D0 */	neg r0, r3
/* 8025C120 00259080  7C 00 1B 78 */	or r0, r0, r3
/* 8025C124 00259084  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8025C128 00259088  7C 00 C8 40 */	cmplw r0, r25
/* 8025C12C 0025908C  41 82 00 30 */	beq lbl_8025C15C
/* 8025C130 00259090  80 9B 00 00 */	lwz r4, 0(r27)
/* 8025C134 00259094  38 61 00 18 */	addi r3, r1, 0x18
/* 8025C138 00259098  4B DA 8B 81 */	bl string_l__4rstlFPCc
/* 8025C13C 0025909C  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8025C140 002590A0  7F 25 CB 78 */	mr r5, r25
/* 8025C144 002590A4  7F C6 F3 78 */	mr r6, r30
/* 8025C148 002590A8  38 81 00 18 */	addi r4, r1, 0x18
/* 8025C14C 002590AC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025C150 002590B0  4B DC EC 71 */	bl "SetParticleEffectState__9CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager"
/* 8025C154 002590B4  38 61 00 18 */	addi r3, r1, 0x18
/* 8025C158 002590B8  48 0E 19 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8025C15C:
/* 8025C15C 002590BC  28 19 00 00 */	cmplwi r25, 0
/* 8025C160 002590C0  41 82 00 10 */	beq lbl_8025C170
/* 8025C164 002590C4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 8025C168 002590C8  7C 00 D3 78 */	or r0, r0, r26
/* 8025C16C 002590CC  48 00 00 0C */	b lbl_8025C178
lbl_8025C170:
/* 8025C170 002590D0  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8025C174 002590D4  7C 60 D0 78 */	andc r0, r3, r26
lbl_8025C178:
/* 8025C178 002590D8  3B FF 00 01 */	addi r31, r31, 1
/* 8025C17C 002590DC  90 1D 05 D0 */	stw r0, 0x5d0(r29)
/* 8025C180 002590E0  2C 1F 00 0E */	cmpwi r31, 0xe
/* 8025C184 002590E4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8025C188 002590E8  3B 7B 00 04 */	addi r27, r27, 4
/* 8025C18C 002590EC  41 80 FF 44 */	blt lbl_8025C0D0
/* 8025C190 002590F0  48 00 00 68 */	b lbl_8025C1F8
lbl_8025C194:
/* 8025C194 002590F4  3C 60 80 3F */	lis r3, skGasJetLocators@ha
/* 8025C198 002590F8  3B 20 00 00 */	li r25, 0
/* 8025C19C 002590FC  3B 63 96 50 */	addi r27, r3, skGasJetLocators@l
/* 8025C1A0 00259100  3B E0 00 01 */	li r31, 1
lbl_8025C1A4:
/* 8025C1A4 00259104  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 8025C1A8 00259108  7F E0 C8 30 */	slw r0, r31, r25
/* 8025C1AC 0025910C  7C 60 00 39 */	and. r0, r3, r0
/* 8025C1B0 00259110  41 82 00 30 */	beq lbl_8025C1E0
/* 8025C1B4 00259114  80 9B 00 00 */	lwz r4, 0(r27)
/* 8025C1B8 00259118  38 61 00 08 */	addi r3, r1, 8
/* 8025C1BC 0025911C  4B DA 8A FD */	bl string_l__4rstlFPCc
/* 8025C1C0 00259120  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8025C1C4 00259124  7F C6 F3 78 */	mr r6, r30
/* 8025C1C8 00259128  38 81 00 08 */	addi r4, r1, 8
/* 8025C1CC 0025912C  38 A0 00 00 */	li r5, 0
/* 8025C1D0 00259130  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025C1D4 00259134  4B DC EB ED */	bl "SetParticleEffectState__9CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager"
/* 8025C1D8 00259138  38 61 00 08 */	addi r3, r1, 8
/* 8025C1DC 0025913C  48 0E 19 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8025C1E0:
/* 8025C1E0 00259140  3B 39 00 01 */	addi r25, r25, 1
/* 8025C1E4 00259144  3B 7B 00 04 */	addi r27, r27, 4
/* 8025C1E8 00259148  2C 19 00 0E */	cmpwi r25, 0xe
/* 8025C1EC 0025914C  41 80 FF B8 */	blt lbl_8025C1A4
/* 8025C1F0 00259150  38 00 00 00 */	li r0, 0
/* 8025C1F4 00259154  90 1D 05 D0 */	stw r0, 0x5d0(r29)
lbl_8025C1F8:
/* 8025C1F8 00259158  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8025C1FC 0025915C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8025C200 00259160  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 8025C204 00259164  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 8025C208 00259168  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 8025C20C 0025916C  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 8025C210 00259170  E3 81 00 D8 */	psq_l f28, 216(r1), 0, qr0
/* 8025C214 00259174  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 8025C218 00259178  E3 61 00 C8 */	psq_l f27, 200(r1), 0, qr0
/* 8025C21C 0025917C  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 8025C220 00259180  E3 41 00 B8 */	psq_l f26, 184(r1), 0, qr0
/* 8025C224 00259184  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 8025C228 00259188  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 8025C22C 0025918C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8025C230 00259190  7C 08 03 A6 */	mtlr r0
/* 8025C234 00259194  38 21 01 10 */	addi r1, r1, 0x110
/* 8025C238 00259198  4E 80 00 20 */	blr

.global Think__7CPufferFfR13CStateManager
Think__7CPufferFfR13CStateManager:
/* 8025C23C 0025919C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8025C240 002591A0  7C 08 02 A6 */	mflr r0
/* 8025C244 002591A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8025C248 002591A8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8025C24C 002591AC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8025C250 002591B0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8025C254 002591B4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8025C258 002591B8  FF E0 08 90 */	fmr f31, f1
/* 8025C25C 002591BC  7C 7E 1B 78 */	mr r30, r3
/* 8025C260 002591C0  7C 9F 23 78 */	mr r31, r4
/* 8025C264 002591C4  4B E1 D8 B5 */	bl Think__10CPatternedFfR13CStateManager
/* 8025C268 002591C8  7F C3 F3 78 */	mr r3, r30
/* 8025C26C 002591CC  7F E4 FB 78 */	mr r4, r31
/* 8025C270 002591D0  4B FF FD 35 */	bl sub8025bfa4__7CPufferFR13CStateManager
/* 8025C274 002591D4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025C278 002591D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8025C27C 002591DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8025C280 002591E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8025C284 002591E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8025C288 002591E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8025C28C 002591EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8025C290 002591F0  A0 1E 05 CC */	lhz r0, 0x5cc(r30)
/* 8025C294 002591F4  A0 7E 02 DC */	lhz r3, 0x2dc(r30)
/* 8025C298 002591F8  7C 00 18 40 */	cmplw r0, r3
/* 8025C29C 002591FC  41 82 00 48 */	beq lbl_8025C2E4
/* 8025C2A0 00259200  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8025C2A4 00259204  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8025C2A8 00259208  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8025C2AC 0025920C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8025C2B0 00259210  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8025C2B4 00259214  38 61 00 08 */	addi r3, r1, 8
/* 8025C2B8 00259218  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8025C2BC 0025921C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8025C2C0 00259220  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8025C2C4 00259224  38 E0 00 01 */	li r7, 1
/* 8025C2C8 00259228  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8025C2CC 0025922C  39 00 00 00 */	li r8, 0
/* 8025C2D0 00259230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8025C2D4 00259234  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8025C2D8 00259238  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8025C2DC 0025923C  A0 9E 05 9A */	lhz r4, 0x59a(r30)
/* 8025C2E0 00259240  48 08 DF D1 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_8025C2E4:
/* 8025C2E4 00259244  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025C2E8 00259248  38 63 00 04 */	addi r3, r3, 4
/* 8025C2EC 0025924C  4B ED 51 BD */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8025C2F0 00259250  38 61 00 30 */	addi r3, r1, 0x30
/* 8025C2F4 00259254  48 0B 84 05 */	bl CanBeNormalized__9CVector3fCFv
/* 8025C2F8 00259258  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025C2FC 0025925C  41 82 00 BC */	beq lbl_8025C3B8
/* 8025C300 00259260  C0 02 B9 F0 */	lfs f0, lbl_805AD710@sda21(r2)
/* 8025C304 00259264  38 61 00 18 */	addi r3, r1, 0x18
/* 8025C308 00259268  C0 22 B9 EC */	lfs f1, lbl_805AD70C@sda21(r2)
/* 8025C30C 0025926C  38 81 00 0C */	addi r4, r1, 0xc
/* 8025C310 00259270  EC FF 00 24 */	fdivs f7, f31, f0
/* 8025C314 00259274  C0 81 00 34 */	lfs f4, 0x34(r1)
/* 8025C318 00259278  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8025C31C 0025927C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8025C320 00259280  C0 BE 05 C4 */	lfs f5, 0x5c4(r30)
/* 8025C324 00259284  C0 7E 05 C8 */	lfs f3, 0x5c8(r30)
/* 8025C328 00259288  EC C1 38 28 */	fsubs f6, f1, f7
/* 8025C32C 0025928C  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 8025C330 00259290  EC 84 01 F2 */	fmuls f4, f4, f7
/* 8025C334 00259294  EC 42 01 F2 */	fmuls f2, f2, f7
/* 8025C338 00259298  EC 00 01 F2 */	fmuls f0, f0, f7
/* 8025C33C 0025929C  EC 85 21 BA */	fmadds f4, f5, f6, f4
/* 8025C340 002592A0  EC 43 11 BA */	fmadds f2, f3, f6, f2
/* 8025C344 002592A4  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 8025C348 002592A8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8025C34C 002592AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8025C350 002592B0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8025C354 002592B4  48 0B 84 FD */	bl AsNormalized__9CVector3fCFv
/* 8025C358 002592B8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8025C35C 002592BC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8025C360 002592C0  C0 02 B9 EC */	lfs f0, lbl_805AD70C@sda21(r2)
/* 8025C364 002592C4  D0 3E 05 C0 */	stfs f1, 0x5c0(r30)
/* 8025C368 002592C8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8025C36C 002592CC  D0 3E 05 C4 */	stfs f1, 0x5c4(r30)
/* 8025C370 002592D0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8025C374 002592D4  D0 3E 05 C8 */	stfs f1, 0x5c8(r30)
/* 8025C378 002592D8  C0 3E 05 C0 */	lfs f1, 0x5c0(r30)
/* 8025C37C 002592DC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8025C380 002592E0  C0 3E 05 C4 */	lfs f1, 0x5c4(r30)
/* 8025C384 002592E4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8025C388 002592E8  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 8025C38C 002592EC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8025C390 002592F0  C0 3E 05 68 */	lfs f1, 0x568(r30)
/* 8025C394 002592F4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8025C398 002592F8  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 8025C39C 002592FC  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8025C3A0 00259300  C0 3E 05 70 */	lfs f1, 0x570(r30)
/* 8025C3A4 00259304  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8025C3A8 00259308  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8025C3AC 0025930C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8025C3B0 00259310  38 63 00 04 */	addi r3, r3, 4
/* 8025C3B4 00259314  4B ED 53 65 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8025C3B8:
/* 8025C3B8 00259318  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8025C3BC 0025931C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8025C3C0 00259320  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8025C3C4 00259324  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8025C3C8 00259328  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8025C3CC 0025932C  7C 08 03 A6 */	mtlr r0
/* 8025C3D0 00259330  38 21 00 70 */	addi r1, r1, 0x70
/* 8025C3D4 00259334  4E 80 00 20 */	blr

.global Death__7CPufferFR13CStateManagerRC9CVector3f18EScriptObjectState
Death__7CPufferFR13CStateManagerRC9CVector3f18EScriptObjectState:
/* 8025C3D8 00259338  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 8025C3DC 0025933C  7C 08 02 A6 */	mflr r0
/* 8025C3E0 00259340  90 01 01 64 */	stw r0, 0x164(r1)
/* 8025C3E4 00259344  BF 61 01 4C */	stmw r27, 0x14c(r1)
/* 8025C3E8 00259348  7C 7E 1B 78 */	mr r30, r3
/* 8025C3EC 0025934C  7C 9F 23 78 */	mr r31, r4
/* 8025C3F0 00259350  4B E1 EF B5 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8025C3F4 00259354  80 AD 97 C0 */	lwz r5, lbl_805A8380@sda21(r13)
/* 8025C3F8 00259358  38 60 00 00 */	li r3, 0
/* 8025C3FC 0025935C  38 80 00 01 */	li r4, 1
/* 8025C400 00259360  48 12 DA F5 */	bl __shl2i
/* 8025C404 00259364  39 20 00 00 */	li r9, 0
/* 8025C408 00259368  38 00 00 03 */	li r0, 3
/* 8025C40C 0025936C  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 8025C410 00259370  7F C5 F3 78 */	mr r5, r30
/* 8025C414 00259374  38 81 00 3C */	addi r4, r1, 0x3c
/* 8025C418 00259378  38 C1 00 70 */	addi r6, r1, 0x70
/* 8025C41C 0025937C  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8025C420 00259380  7F E3 FB 78 */	mr r3, r31
/* 8025C424 00259384  38 FE 05 9C */	addi r7, r30, 0x59c
/* 8025C428 00259388  39 01 00 B0 */	addi r8, r1, 0xb0
/* 8025C42C 0025938C  91 21 00 BC */	stw r9, 0xbc(r1)
/* 8025C430 00259390  91 21 00 B8 */	stw r9, 0xb8(r1)
/* 8025C434 00259394  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8025C438 00259398  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8025C43C 0025939C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8025C440 002593A0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8025C444 002593A4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8025C448 002593A8  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8025C44C 002593AC  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8025C450 002593B0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8025C454 002593B4  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8025C458 002593B8  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8025C45C 002593BC  4B DE C8 51 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 8025C460 002593C0  7F E4 FB 78 */	mr r4, r31
/* 8025C464 002593C4  38 61 00 34 */	addi r3, r1, 0x34
/* 8025C468 002593C8  4B DF 0C 75 */	bl AllocateUniqueId__13CStateManagerFv
/* 8025C46C 002593CC  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8025C470 002593D0  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8025C474 002593D4  C0 3E 05 8C */	lfs f1, 0x58c(r30)
/* 8025C478 002593D8  C0 42 B9 EC */	lfs f2, lbl_805AD70C@sda21(r2)
/* 8025C47C 002593DC  C0 02 B9 F4 */	lfs f0, lbl_805AD714@sda21(r2)
/* 8025C480 002593E0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8025C484 002593E4  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8025C488 002593E8  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8025C48C 002593EC  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8025C490 002593F0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8025C494 002593F4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8025C498 002593F8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8025C49C 002593FC  48 0B 6D A5 */	bl Scale__12CTransform4fFf
/* 8025C4A0 00259400  38 61 01 10 */	addi r3, r1, 0x110
/* 8025C4A4 00259404  38 9E 00 34 */	addi r4, r30, 0x34
/* 8025C4A8 00259408  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8025C4AC 0025940C  48 0B 64 A5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8025C4B0 00259410  38 61 00 7C */	addi r3, r1, 0x7c
/* 8025C4B4 00259414  38 81 00 64 */	addi r4, r1, 0x64
/* 8025C4B8 00259418  38 A1 00 58 */	addi r5, r1, 0x58
/* 8025C4BC 0025941C  48 0D C0 4D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8025C4C0 00259420  7C 64 1B 78 */	mr r4, r3
/* 8025C4C4 00259424  38 61 00 94 */	addi r3, r1, 0x94
/* 8025C4C8 00259428  38 A1 01 10 */	addi r5, r1, 0x110
/* 8025C4CC 0025942C  48 0D B4 31 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 8025C4D0 00259430  C0 A1 00 94 */	lfs f5, 0x94(r1)
/* 8025C4D4 00259434  3C 60 80 3D */	lis r3, lbl_803D5100@ha
/* 8025C4D8 00259438  C0 81 00 98 */	lfs f4, 0x98(r1)
/* 8025C4DC 0025943C  38 63 51 00 */	addi r3, r3, lbl_803D5100@l
/* 8025C4E0 00259440  C0 61 00 9C */	lfs f3, 0x9c(r1)
/* 8025C4E4 00259444  38 83 01 26 */	addi r4, r3, 0x126
/* 8025C4E8 00259448  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 8025C4EC 0025944C  38 60 01 60 */	li r3, 0x160
/* 8025C4F0 00259450  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 8025C4F4 00259454  38 A0 00 00 */	li r5, 0
/* 8025C4F8 00259458  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8025C4FC 0025945C  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 8025C500 00259460  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 8025C504 00259464  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 8025C508 00259468  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 8025C50C 0025946C  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 8025C510 00259470  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8025C514 00259474  48 0B 93 59 */	bl __nw__FUlPCcPCc
/* 8025C518 00259478  7C 64 1B 79 */	or. r4, r3, r3
/* 8025C51C 0025947C  41 82 00 A8 */	beq lbl_8025C5C4
/* 8025C520 00259480  C0 22 B9 EC */	lfs f1, lbl_805AD70C@sda21(r2)
/* 8025C524 00259484  39 81 00 C8 */	addi r12, r1, 0xc8
/* 8025C528 00259488  A3 A1 00 40 */	lhz r29, 0x40(r1)
/* 8025C52C 0025948C  39 61 00 4C */	addi r11, r1, 0x4c
/* 8025C530 00259490  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8025C534 00259494  38 00 00 01 */	li r0, 1
/* 8025C538 00259498  FC 60 08 90 */	fmr f3, f1
/* 8025C53C 0025949C  38 9E 05 74 */	addi r4, r30, 0x574
/* 8025C540 002594A0  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8025C544 002594A4  FC 80 08 90 */	fmr f4, f1
/* 8025C548 002594A8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8025C54C 002594AC  38 C1 00 48 */	addi r6, r1, 0x48
/* 8025C550 002594B0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8025C554 002594B4  39 01 00 30 */	addi r8, r1, 0x30
/* 8025C558 002594B8  39 3E 00 34 */	addi r9, r30, 0x34
/* 8025C55C 002594BC  39 5E 05 7C */	addi r10, r30, 0x57c
/* 8025C560 002594C0  A3 7E 00 08 */	lhz r27, 8(r30)
/* 8025C564 002594C4  38 E0 00 01 */	li r7, 1
/* 8025C568 002594C8  B3 61 00 30 */	sth r27, 0x30(r1)
/* 8025C56C 002594CC  83 9E 00 04 */	lwz r28, 4(r30)
/* 8025C570 002594D0  B3 61 00 2C */	sth r27, 0x2c(r1)
/* 8025C574 002594D4  93 81 00 48 */	stw r28, 0x48(r1)
/* 8025C578 002594D8  B3 A1 00 28 */	sth r29, 0x28(r1)
/* 8025C57C 002594DC  91 81 00 08 */	stw r12, 8(r1)
/* 8025C580 002594E0  91 61 00 0C */	stw r11, 0xc(r1)
/* 8025C584 002594E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025C588 002594E8  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 8025C58C 002594EC  93 81 00 44 */	stw r28, 0x44(r1)
/* 8025C590 002594F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C594 002594F4  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 8025C598 002594F8  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 8025C59C 002594FC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025C5A0 00259500  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 8025C5A4 00259504  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 8025C5A8 00259508  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025C5AC 0025950C  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 8025C5B0 00259510  54 00 D7 FE */	rlwinm r0, r0, 0x1a, 0x1f, 0x1f
/* 8025C5B4 00259514  90 01 00 20 */	stw r0, 0x20(r1)
/* 8025C5B8 00259518  C0 5E 05 B8 */	lfs f2, 0x5b8(r30)
/* 8025C5BC 0025951C  48 00 0C 21 */	bl "__ct__5CFireFRC25TToken<15CGenDescription>9TUniqueId7TAreaIdb9TUniqueIdRC12CTransform4fRC11CDamageInfoRC6CAABoxRC9CVector3fbUibbbffff"
/* 8025C5C0 00259520  7C 64 1B 78 */	mr r4, r3
lbl_8025C5C4:
/* 8025C5C4 00259524  7F E3 FB 78 */	mr r3, r31
/* 8025C5C8 00259528  4B DF 07 2D */	bl AddObject__13CStateManagerFP7CEntity
/* 8025C5CC 0025952C  BB 61 01 4C */	lmw r27, 0x14c(r1)
/* 8025C5D0 00259530  80 01 01 64 */	lwz r0, 0x164(r1)
/* 8025C5D4 00259534  7C 08 03 A6 */	mtlr r0
/* 8025C5D8 00259538  38 21 01 60 */	addi r1, r1, 0x160
/* 8025C5DC 0025953C  4E 80 00 20 */	blr

.global GetTouchBounds__7CPufferCFv
GetTouchBounds__7CPufferCFv:
/* 8025C5E0 00259540  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8025C5E4 00259544  7C 08 02 A6 */	mflr r0
/* 8025C5E8 00259548  90 01 00 84 */	stw r0, 0x84(r1)
/* 8025C5EC 0025954C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8025C5F0 00259550  7C 7F 1B 78 */	mr r31, r3
/* 8025C5F4 00259554  38 61 00 20 */	addi r3, r1, 0x20
/* 8025C5F8 00259558  4B E1 B1 79 */	bl GetTouchBounds__10CPatternedCFv
/* 8025C5FC 0025955C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 8025C600 00259560  28 00 00 00 */	cmplwi r0, 0
/* 8025C604 00259564  98 01 00 6C */	stb r0, 0x6c(r1)
/* 8025C608 00259568  41 82 00 3C */	beq lbl_8025C644
/* 8025C60C 0025956C  34 61 00 54 */	addic. r3, r1, 0x54
/* 8025C610 00259570  41 82 00 34 */	beq lbl_8025C644
/* 8025C614 00259574  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8025C618 00259578  D0 03 00 00 */	stfs f0, 0(r3)
/* 8025C61C 0025957C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8025C620 00259580  D0 03 00 04 */	stfs f0, 4(r3)
/* 8025C624 00259584  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8025C628 00259588  D0 03 00 08 */	stfs f0, 8(r3)
/* 8025C62C 0025958C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8025C630 00259590  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8025C634 00259594  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8025C638 00259598  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8025C63C 0025959C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8025C640 002595A0  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8025C644:
/* 8025C644 002595A4  88 61 00 6C */	lbz r3, 0x6c(r1)
/* 8025C648 002595A8  38 00 00 00 */	li r0, 0
/* 8025C64C 002595AC  98 01 00 38 */	stb r0, 0x38(r1)
/* 8025C650 002595B0  28 03 00 00 */	cmplwi r3, 0
/* 8025C654 002595B4  41 82 00 DC */	beq lbl_8025C730
/* 8025C658 002595B8  C0 C1 00 54 */	lfs f6, 0x54(r1)
/* 8025C65C 002595BC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8025C660 002595C0  C0 A1 00 58 */	lfs f5, 0x58(r1)
/* 8025C664 002595C4  38 81 00 14 */	addi r4, r1, 0x14
/* 8025C668 002595C8  C0 02 B9 F0 */	lfs f0, lbl_805AD710@sda21(r2)
/* 8025C66C 002595CC  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 8025C670 002595D0  ED 05 00 28 */	fsubs f8, f5, f0
/* 8025C674 002595D4  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 8025C678 002595D8  EC E4 00 28 */	fsubs f7, f4, f0
/* 8025C67C 002595DC  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8025C680 002595E0  EC 06 00 28 */	fsubs f0, f6, f0
/* 8025C684 002595E4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 8025C688 002595E8  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 8025C68C 002595EC  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8025C690 002595F0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8025C694 002595F4  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8025C698 002595F8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8025C69C 002595FC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8025C6A0 00259600  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8025C6A4 00259604  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 8025C6A8 00259608  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 8025C6AC 0025960C  48 0D B4 5D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8025C6B0 00259610  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 8025C6B4 00259614  38 61 00 3C */	addi r3, r1, 0x3c
/* 8025C6B8 00259618  C0 42 B9 F0 */	lfs f2, lbl_805AD710@sda21(r2)
/* 8025C6BC 0025961C  38 81 00 08 */	addi r4, r1, 8
/* 8025C6C0 00259620  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8025C6C4 00259624  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8025C6C8 00259628  EC 63 10 2A */	fadds f3, f3, f2
/* 8025C6CC 0025962C  EC 21 10 2A */	fadds f1, f1, f2
/* 8025C6D0 00259630  EC 00 10 2A */	fadds f0, f0, f2
/* 8025C6D4 00259634  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8025C6D8 00259638  D0 01 00 08 */	stfs f0, 8(r1)
/* 8025C6DC 0025963C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8025C6E0 00259640  48 0D B4 29 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 8025C6E4 00259644  38 00 00 01 */	li r0, 1
/* 8025C6E8 00259648  28 1F 00 00 */	cmplwi r31, 0
/* 8025C6EC 0025964C  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8025C6F0 00259650  41 82 00 34 */	beq lbl_8025C724
/* 8025C6F4 00259654  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8025C6F8 00259658  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8025C6FC 0025965C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8025C700 00259660  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8025C704 00259664  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8025C708 00259668  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8025C70C 0025966C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8025C710 00259670  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8025C714 00259674  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8025C718 00259678  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8025C71C 0025967C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8025C720 00259680  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8025C724:
/* 8025C724 00259684  38 00 00 00 */	li r0, 0
/* 8025C728 00259688  98 01 00 6C */	stb r0, 0x6c(r1)
/* 8025C72C 0025968C  48 00 00 4C */	b lbl_8025C778
lbl_8025C730:
/* 8025C730 00259690  98 7F 00 18 */	stb r3, 0x18(r31)
/* 8025C734 00259694  41 82 00 3C */	beq lbl_8025C770
/* 8025C738 00259698  28 1F 00 00 */	cmplwi r31, 0
/* 8025C73C 0025969C  41 82 00 34 */	beq lbl_8025C770
/* 8025C740 002596A0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8025C744 002596A4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8025C748 002596A8  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8025C74C 002596AC  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8025C750 002596B0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8025C754 002596B4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8025C758 002596B8  D0 3F 00 08 */	stfs f1, 8(r31)
/* 8025C75C 002596BC  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8025C760 002596C0  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8025C764 002596C4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8025C768 002596C8  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8025C76C 002596CC  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8025C770:
/* 8025C770 002596D0  38 00 00 00 */	li r0, 0
/* 8025C774 002596D4  98 01 00 6C */	stb r0, 0x6c(r1)
lbl_8025C778:
/* 8025C778 002596D8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8025C77C 002596DC  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8025C780 002596E0  7C 08 03 A6 */	mtlr r0
/* 8025C784 002596E4  38 21 00 80 */	addi r1, r1, 0x80
/* 8025C788 002596E8  4E 80 00 20 */	blr

.global Touch__7CPufferFR6CActorR13CStateManager
Touch__7CPufferFR6CActorR13CStateManager:
/* 8025C78C 002596EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025C790 002596F0  7C 08 02 A6 */	mflr r0
/* 8025C794 002596F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025C798 002596F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8025C79C 002596FC  7C BF 2B 78 */	mr r31, r5
/* 8025C7A0 00259700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025C7A4 00259704  7C 9E 23 78 */	mr r30, r4
/* 8025C7A8 00259708  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8025C7AC 0025970C  7C 7D 1B 78 */	mr r29, r3
/* 8025C7B0 00259710  4B E1 D2 F1 */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 8025C7B4 00259714  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8025C7B8 00259718  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8025C7BC 0025971C  41 82 00 28 */	beq lbl_8025C7E4
/* 8025C7C0 00259720  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8025C7C4 00259724  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8025C7C8 00259728  A0 63 00 08 */	lhz r3, 8(r3)
/* 8025C7CC 0025972C  7C 03 00 40 */	cmplw r3, r0
/* 8025C7D0 00259730  40 82 00 14 */	bne lbl_8025C7E4
/* 8025C7D4 00259734  88 1D 04 01 */	lbz r0, 0x401(r29)
/* 8025C7D8 00259738  38 60 00 01 */	li r3, 1
/* 8025C7DC 0025973C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8025C7E0 00259740  98 1D 04 01 */	stb r0, 0x401(r29)
lbl_8025C7E4:
/* 8025C7E4 00259744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025C7E8 00259748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025C7EC 0025974C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025C7F0 00259750  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8025C7F4 00259754  7C 08 03 A6 */	mtlr r0
/* 8025C7F8 00259758  38 21 00 20 */	addi r1, r1, 0x20
/* 8025C7FC 0025975C  4E 80 00 20 */	blr

.global AcceptScriptMsg__7CPufferF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__7CPufferF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8025C800 00259760  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8025C804 00259764  7C 08 02 A6 */	mflr r0
/* 8025C808 00259768  90 01 00 44 */	stw r0, 0x44(r1)
/* 8025C80C 0025976C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8025C810 00259770  7C 9F 23 78 */	mr r31, r4
/* 8025C814 00259774  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8025C818 00259778  7C DE 33 78 */	mr r30, r6
/* 8025C81C 0025977C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8025C820 00259780  7C 7D 1B 78 */	mr r29, r3
/* 8025C824 00259784  A0 05 00 00 */	lhz r0, 0(r5)
/* 8025C828 00259788  38 A1 00 08 */	addi r5, r1, 8
/* 8025C82C 0025978C  B0 01 00 08 */	sth r0, 8(r1)
/* 8025C830 00259790  4B E2 03 49 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8025C834 00259794  2C 1F 00 21 */	cmpwi r31, 0x21
/* 8025C838 00259798  41 82 00 14 */	beq lbl_8025C84C
/* 8025C83C 0025979C  40 80 00 88 */	bge lbl_8025C8C4
/* 8025C840 002597A0  2C 1F 00 13 */	cmpwi r31, 0x13
/* 8025C844 002597A4  41 82 00 64 */	beq lbl_8025C8A8
/* 8025C848 002597A8  48 00 00 7C */	b lbl_8025C8C4
lbl_8025C84C:
/* 8025C84C 002597AC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8025C850 002597B0  7F C4 F3 78 */	mr r4, r30
/* 8025C854 002597B4  4B ED E4 9D */	bl Activate__15CBodyControllerFR13CStateManager
/* 8025C858 002597B8  80 AD 97 C8 */	lwz r5, lbl_805A8388@sda21(r13)
/* 8025C85C 002597BC  38 60 00 00 */	li r3, 0
/* 8025C860 002597C0  38 80 00 01 */	li r4, 1
/* 8025C864 002597C4  48 12 D6 91 */	bl __shl2i
/* 8025C868 002597C8  80 AD 97 C4 */	lwz r5, lbl_805A8384@sda21(r13)
/* 8025C86C 002597CC  7C 9E 23 78 */	mr r30, r4
/* 8025C870 002597D0  7C 7F 1B 78 */	mr r31, r3
/* 8025C874 002597D4  38 60 00 00 */	li r3, 0
/* 8025C878 002597D8  38 80 00 01 */	li r4, 1
/* 8025C87C 002597DC  48 12 D6 79 */	bl __shl2i
/* 8025C880 002597E0  38 00 00 03 */	li r0, 3
/* 8025C884 002597E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8025C888 002597E8  38 81 00 10 */	addi r4, r1, 0x10
/* 8025C88C 002597EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 8025C890 002597F0  7F A3 EB 78 */	mr r3, r29
/* 8025C894 002597F4  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 8025C898 002597F8  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8025C89C 002597FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8025C8A0 00259800  4B DF 70 01 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8025C8A4 00259804  48 00 00 20 */	b lbl_8025C8C4
lbl_8025C8A8:
/* 8025C8A8 00259808  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8025C8AC 0025980C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8025C8B0 00259810  41 82 00 14 */	beq lbl_8025C8C4
/* 8025C8B4 00259814  88 1D 04 01 */	lbz r0, 0x401(r29)
/* 8025C8B8 00259818  38 60 00 01 */	li r3, 1
/* 8025C8BC 0025981C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8025C8C0 00259820  98 1D 04 01 */	stb r0, 0x401(r29)
lbl_8025C8C4:
/* 8025C8C4 00259824  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8025C8C8 00259828  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8025C8CC 0025982C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8025C8D0 00259830  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8025C8D4 00259834  7C 08 03 A6 */	mtlr r0
/* 8025C8D8 00259838  38 21 00 40 */	addi r1, r1, 0x40
/* 8025C8DC 0025983C  4E 80 00 20 */	blr

.global Accept__7CPufferFR8IVisitor
Accept__7CPufferFR8IVisitor:
/* 8025C8E0 00259840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C8E4 00259844  7C 08 02 A6 */	mflr r0
/* 8025C8E8 00259848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C8EC 0025984C  7C 60 1B 78 */	mr r0, r3
/* 8025C8F0 00259850  7C 83 23 78 */	mr r3, r4
/* 8025C8F4 00259854  81 84 00 00 */	lwz r12, 0(r4)
/* 8025C8F8 00259858  7C 04 03 78 */	mr r4, r0
/* 8025C8FC 0025985C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8025C900 00259860  7D 89 03 A6 */	mtctr r12
/* 8025C904 00259864  4E 80 04 21 */	bctrl
/* 8025C908 00259868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C90C 0025986C  7C 08 03 A6 */	mtlr r0
/* 8025C910 00259870  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C914 00259874  4E 80 00 20 */	blr

.global __dt__7CPufferFv
__dt__7CPufferFv:
/* 8025C918 00259878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C91C 0025987C  7C 08 02 A6 */	mflr r0
/* 8025C920 00259880  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C924 00259884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C928 00259888  7C 9F 23 78 */	mr r31, r4
/* 8025C92C 0025988C  93 C1 00 08 */	stw r30, 8(r1)
/* 8025C930 00259890  7C 7E 1B 79 */	or. r30, r3, r3
/* 8025C934 00259894  41 82 00 9C */	beq lbl_8025C9D0
/* 8025C938 00259898  3C 60 80 3F */	lis r3, __vt__7CPuffer@ha
/* 8025C93C 0025989C  34 1E 05 D4 */	addic. r0, r30, 0x5d4
/* 8025C940 002598A0  38 03 96 C0 */	addi r0, r3, __vt__7CPuffer@l
/* 8025C944 002598A4  90 1E 00 00 */	stw r0, 0(r30)
/* 8025C948 002598A8  41 82 00 58 */	beq lbl_8025C9A0
/* 8025C94C 002598AC  80 BE 05 D4 */	lwz r5, 0x5d4(r30)
/* 8025C950 002598B0  38 60 00 00 */	li r3, 0
/* 8025C954 002598B4  2C 05 00 00 */	cmpwi r5, 0
/* 8025C958 002598B8  40 81 00 40 */	ble lbl_8025C998
/* 8025C95C 002598BC  2C 05 00 08 */	cmpwi r5, 8
/* 8025C960 002598C0  38 85 FF F8 */	addi r4, r5, -8
/* 8025C964 002598C4  40 81 00 20 */	ble lbl_8025C984
/* 8025C968 002598C8  38 04 00 07 */	addi r0, r4, 7
/* 8025C96C 002598CC  54 00 E8 FE */	srwi r0, r0, 3
/* 8025C970 002598D0  7C 09 03 A6 */	mtctr r0
/* 8025C974 002598D4  2C 04 00 00 */	cmpwi r4, 0
/* 8025C978 002598D8  40 81 00 0C */	ble lbl_8025C984
lbl_8025C97C:
/* 8025C97C 002598DC  38 63 00 08 */	addi r3, r3, 8
/* 8025C980 002598E0  42 00 FF FC */	bdnz lbl_8025C97C
lbl_8025C984:
/* 8025C984 002598E4  7C 03 28 50 */	subf r0, r3, r5
/* 8025C988 002598E8  7C 09 03 A6 */	mtctr r0
/* 8025C98C 002598EC  7C 03 28 00 */	cmpw r3, r5
/* 8025C990 002598F0  40 80 00 08 */	bge lbl_8025C998
lbl_8025C994:
/* 8025C994 002598F4  42 00 00 00 */	bdnz lbl_8025C994
lbl_8025C998:
/* 8025C998 002598F8  38 00 00 00 */	li r0, 0
/* 8025C99C 002598FC  90 1E 05 D4 */	stw r0, 0x5d4(r30)
lbl_8025C9A0:
/* 8025C9A0 00259900  34 1E 05 74 */	addic. r0, r30, 0x574
/* 8025C9A4 00259904  41 82 00 10 */	beq lbl_8025C9B4
/* 8025C9A8 00259908  38 7E 05 74 */	addi r3, r30, 0x574
/* 8025C9AC 0025990C  38 80 00 00 */	li r4, 0
/* 8025C9B0 00259910  48 0E 44 91 */	bl __dt__6CTokenFv
lbl_8025C9B4:
/* 8025C9B4 00259914  7F C3 F3 78 */	mr r3, r30
/* 8025C9B8 00259918  38 80 00 00 */	li r4, 0
/* 8025C9BC 0025991C  4B E1 AB B5 */	bl __dt__10CPatternedFv
/* 8025C9C0 00259920  7F E0 07 35 */	extsh. r0, r31
/* 8025C9C4 00259924  40 81 00 0C */	ble lbl_8025C9D0
/* 8025C9C8 00259928  7F C3 F3 78 */	mr r3, r30
/* 8025C9CC 0025992C  48 0B 8F 65 */	bl Free__7CMemoryFPCv
lbl_8025C9D0:
/* 8025C9D0 00259930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C9D4 00259934  7F C3 F3 78 */	mr r3, r30
/* 8025C9D8 00259938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C9DC 0025993C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025C9E0 00259940  7C 08 03 A6 */	mtlr r0
/* 8025C9E4 00259944  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C9E8 00259948  4E 80 00 20 */	blr

.global "__ct__7CPufferF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfofUiRC11CDamageInfoUifbbbRC11CDamageInfoUs"
"__ct__7CPufferF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfofUiRC11CDamageInfoUifbbbRC11CDamageInfoUs":
/* 8025C9EC 0025994C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8025C9F0 00259950  7C 08 02 A6 */	mflr r0
/* 8025C9F4 00259954  90 01 00 84 */	stw r0, 0x84(r1)
/* 8025C9F8 00259958  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8025C9FC 0025995C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 8025CA00 00259960  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8025CA04 00259964  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 8025CA08 00259968  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 8025CA0C 0025996C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8025CA10 00259970  7C CB 33 78 */	mr r11, r6
/* 8025CA14 00259974  7C F8 3B 78 */	mr r24, r7
/* 8025CA18 00259978  7D 07 43 78 */	mr r7, r8
/* 8025CA1C 0025997C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8025CA20 00259980  38 C0 00 01 */	li r6, 1
/* 8025CA24 00259984  38 80 00 05 */	li r4, 5
/* 8025CA28 00259988  FF C0 08 90 */	fmr f30, f1
/* 8025CA2C 0025998C  91 41 00 08 */	stw r10, 8(r1)
/* 8025CA30 00259990  7C EA 3B 78 */	mr r10, r7
/* 8025CA34 00259994  FF E0 10 90 */	fmr f31, f2
/* 8025CA38 00259998  38 00 00 00 */	li r0, 0
/* 8025CA3C 0025999C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8025CA40 002599A0  83 21 00 88 */	lwz r25, 0x88(r1)
/* 8025CA44 002599A4  7C 77 1B 78 */	mr r23, r3
/* 8025CA48 002599A8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8025CA4C 002599AC  7C A6 2B 78 */	mr r6, r5
/* 8025CA50 002599B0  83 41 00 8C */	lwz r26, 0x8c(r1)
/* 8025CA54 002599B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8025CA58 002599B8  7D 68 5B 78 */	mr r8, r11
/* 8025CA5C 002599BC  83 61 00 90 */	lwz r27, 0x90(r1)
/* 8025CA60 002599C0  38 A1 00 20 */	addi r5, r1, 0x20
/* 8025CA64 002599C4  91 21 00 18 */	stw r9, 0x18(r1)
/* 8025CA68 002599C8  7F 09 C3 78 */	mr r9, r24
/* 8025CA6C 002599CC  8B 81 00 97 */	lbz r28, 0x97(r1)
/* 8025CA70 002599D0  38 80 00 1D */	li r4, 0x1d
/* 8025CA74 002599D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025CA78 002599D8  38 E0 00 00 */	li r7, 0
/* 8025CA7C 002599DC  8B A1 00 9B */	lbz r29, 0x9b(r1)
/* 8025CA80 002599E0  8B C1 00 9F */	lbz r30, 0x9f(r1)
/* 8025CA84 002599E4  83 E1 00 A0 */	lwz r31, 0xa0(r1)
/* 8025CA88 002599E8  A2 C1 00 A6 */	lhz r22, 0xa6(r1)
/* 8025CA8C 002599EC  4B E2 09 C5 */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 8025CA90 002599F0  3C 60 80 3F */	lis r3, __vt__7CPuffer@ha
/* 8025CA94 002599F4  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 8025CA98 002599F8  38 03 96 C0 */	addi r0, r3, __vt__7CPuffer@l
/* 8025CA9C 002599FC  38 61 00 24 */	addi r3, r1, 0x24
/* 8025CAA0 00259A00  90 17 00 00 */	stw r0, 0(r23)
/* 8025CAA4 00259A04  38 04 52 54 */	addi r0, r4, 0x50415254@l
/* 8025CAA8 00259A08  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8025CAAC 00259A0C  C0 58 00 24 */	lfs f2, 0x24(r24)
/* 8025CAB0 00259A10  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 8025CAB4 00259A14  C0 18 00 04 */	lfs f0, 4(r24)
/* 8025CAB8 00259A18  D0 17 05 68 */	stfs f0, 0x568(r23)
/* 8025CABC 00259A1C  D0 37 05 6C */	stfs f1, 0x56c(r23)
/* 8025CAC0 00259A20  D0 57 05 70 */	stfs f2, 0x570(r23)
/* 8025CAC4 00259A24  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8025CAC8 00259A28  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8025CACC 00259A2C  93 21 00 30 */	stw r25, 0x30(r1)
/* 8025CAD0 00259A30  81 84 00 00 */	lwz r12, 0(r4)
/* 8025CAD4 00259A34  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025CAD8 00259A38  7D 89 03 A6 */	mtctr r12
/* 8025CADC 00259A3C  4E 80 04 21 */	bctrl
/* 8025CAE0 00259A40  38 77 05 74 */	addi r3, r23, 0x574
/* 8025CAE4 00259A44  38 81 00 24 */	addi r4, r1, 0x24
/* 8025CAE8 00259A48  48 0E 43 C1 */	bl __ct__6CTokenFRC6CToken
/* 8025CAEC 00259A4C  38 61 00 24 */	addi r3, r1, 0x24
/* 8025CAF0 00259A50  38 80 FF FF */	li r4, -1
/* 8025CAF4 00259A54  48 0E 43 4D */	bl __dt__6CTokenFv
/* 8025CAF8 00259A58  80 1A 00 00 */	lwz r0, 0(r26)
/* 8025CAFC 00259A5C  7E C3 B3 78 */	mr r3, r22
/* 8025CB00 00259A60  90 17 05 7C */	stw r0, 0x57c(r23)
/* 8025CB04 00259A64  88 1A 00 04 */	lbz r0, 4(r26)
/* 8025CB08 00259A68  98 17 05 80 */	stb r0, 0x580(r23)
/* 8025CB0C 00259A6C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 8025CB10 00259A70  D0 17 05 84 */	stfs f0, 0x584(r23)
/* 8025CB14 00259A74  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8025CB18 00259A78  D0 17 05 88 */	stfs f0, 0x588(r23)
/* 8025CB1C 00259A7C  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 8025CB20 00259A80  D0 17 05 8C */	stfs f0, 0x58c(r23)
/* 8025CB24 00259A84  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 8025CB28 00259A88  D0 17 05 90 */	stfs f0, 0x590(r23)
/* 8025CB2C 00259A8C  88 1A 00 18 */	lbz r0, 0x18(r26)
/* 8025CB30 00259A90  98 17 05 94 */	stb r0, 0x594(r23)
/* 8025CB34 00259A94  88 17 05 98 */	lbz r0, 0x598(r23)
/* 8025CB38 00259A98  53 80 3E 30 */	rlwimi r0, r28, 7, 0x18, 0x18
/* 8025CB3C 00259A9C  98 17 05 98 */	stb r0, 0x598(r23)
/* 8025CB40 00259AA0  88 17 05 98 */	lbz r0, 0x598(r23)
/* 8025CB44 00259AA4  53 C0 36 72 */	rlwimi r0, r30, 6, 0x19, 0x19
/* 8025CB48 00259AA8  98 17 05 98 */	stb r0, 0x598(r23)
/* 8025CB4C 00259AAC  88 17 05 98 */	lbz r0, 0x598(r23)
/* 8025CB50 00259AB0  53 A0 2E B4 */	rlwimi r0, r29, 5, 0x1a, 0x1a
/* 8025CB54 00259AB4  98 17 05 98 */	stb r0, 0x598(r23)
/* 8025CB58 00259AB8  48 08 BE 59 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8025CB5C 00259ABC  B0 77 05 9A */	sth r3, 0x59a(r23)
/* 8025CB60 00259AC0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8025CB64 00259AC4  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8025CB68 00259AC8  38 00 00 00 */	li r0, 0
/* 8025CB6C 00259ACC  80 DF 00 00 */	lwz r6, 0(r31)
/* 8025CB70 00259AD0  7E E3 BB 78 */	mr r3, r23
/* 8025CB74 00259AD4  38 80 00 00 */	li r4, 0
/* 8025CB78 00259AD8  90 D7 05 9C */	stw r6, 0x59c(r23)
/* 8025CB7C 00259ADC  88 DF 00 04 */	lbz r6, 4(r31)
/* 8025CB80 00259AE0  98 D7 05 A0 */	stb r6, 0x5a0(r23)
/* 8025CB84 00259AE4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8025CB88 00259AE8  D0 17 05 A4 */	stfs f0, 0x5a4(r23)
/* 8025CB8C 00259AEC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8025CB90 00259AF0  D0 17 05 A8 */	stfs f0, 0x5a8(r23)
/* 8025CB94 00259AF4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8025CB98 00259AF8  D0 17 05 AC */	stfs f0, 0x5ac(r23)
/* 8025CB9C 00259AFC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8025CBA0 00259B00  D0 17 05 B0 */	stfs f0, 0x5b0(r23)
/* 8025CBA4 00259B04  88 DF 00 18 */	lbz r6, 0x18(r31)
/* 8025CBA8 00259B08  98 D7 05 B4 */	stb r6, 0x5b4(r23)
/* 8025CBAC 00259B0C  D3 F7 05 B8 */	stfs f31, 0x5b8(r23)
/* 8025CBB0 00259B10  93 77 05 BC */	stw r27, 0x5bc(r23)
/* 8025CBB4 00259B14  C0 05 00 00 */	lfs f0, 0(r5)
/* 8025CBB8 00259B18  D0 17 05 C0 */	stfs f0, 0x5c0(r23)
/* 8025CBBC 00259B1C  C0 05 00 04 */	lfs f0, 4(r5)
/* 8025CBC0 00259B20  D0 17 05 C4 */	stfs f0, 0x5c4(r23)
/* 8025CBC4 00259B24  C0 05 00 08 */	lfs f0, 8(r5)
/* 8025CBC8 00259B28  D0 17 05 C8 */	stfs f0, 0x5c8(r23)
/* 8025CBCC 00259B2C  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 8025CBD0 00259B30  B0 B7 05 CC */	sth r5, 0x5cc(r23)
/* 8025CBD4 00259B34  90 17 05 D0 */	stw r0, 0x5d0(r23)
/* 8025CBD8 00259B38  90 17 05 D4 */	stw r0, 0x5d4(r23)
/* 8025CBDC 00259B3C  4B DF 61 91 */	bl CreateShadow__6CActorFb
/* 8025CBE0 00259B40  38 77 04 60 */	addi r3, r23, 0x460
/* 8025CBE4 00259B44  38 80 00 01 */	li r4, 1
/* 8025CBE8 00259B48  4B FD 71 A5 */	bl SetImpulseDurationIdx__20CKnockBackControllerFi
/* 8025CBEC 00259B4C  38 77 05 74 */	addi r3, r23, 0x574
/* 8025CBF0 00259B50  48 0E 41 95 */	bl Lock__6CTokenFv
/* 8025CBF4 00259B54  80 97 04 50 */	lwz r4, 0x450(r23)
/* 8025CBF8 00259B58  7E E3 BB 78 */	mr r3, r23
/* 8025CBFC 00259B5C  D3 C4 03 30 */	stfs f30, 0x330(r4)
/* 8025CC00 00259B60  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8025CC04 00259B64  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8025CC08 00259B68  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8025CC0C 00259B6C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8025CC10 00259B70  BA C1 00 38 */	lmw r22, 0x38(r1)
/* 8025CC14 00259B74  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8025CC18 00259B78  7C 08 03 A6 */	mtlr r0
/* 8025CC1C 00259B7C  38 21 00 80 */	addi r1, r1, 0x80
/* 8025CC20 00259B80  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8

.global lbl_805AD708
lbl_805AD708:
	# ROM: 0x3F9FA8
	.float 0.7853982
	
.global lbl_805AD70C
lbl_805AD70C:
	# ROM: 0x3F9FAC
	.float 1.0

.global lbl_805AD710
lbl_805AD710:
	# ROM: 0x3F9FB0
	.float 0.5

.global lbl_805AD714
lbl_805AD714:
	# ROM: 0x3F9FB4
	.float -1.0

.rodata
.balign 8

.global lbl_803D5100
lbl_803D5100:

	# ROM: 0x3D2100
	.asciz "GasJet01"

.global lbl_803D5109
lbl_803D5109:

	# ROM: 0x3D2109
	.byte 0x47, 0x61, 0x73
	.asciz "Jet02"

.global lbl_803D5112
lbl_803D5112:

	# ROM: 0x3D2112
	.byte 0x47, 0x61
	.asciz "sJet03"

.global lbl_803D511B
lbl_803D511B:

	# ROM: 0x3D211B
	.byte 0x47
	.asciz "asJet04"

.global lbl_803D5124
lbl_803D5124:

	# ROM: 0x3D2124
	.asciz "GasJet05"

.global lbl_803D512D
lbl_803D512D:

	# ROM: 0x3D212D
	.byte 0x47, 0x61, 0x73
	.asciz "Jet06"

.global lbl_803D5136
lbl_803D5136:

	# ROM: 0x3D2136
	.byte 0x47, 0x61
	.asciz "sJet07"

.global lbl_803D513F
lbl_803D513F:

	# ROM: 0x3D213F
	.byte 0x47
	.asciz "asJet08"

.global lbl_803D5148
lbl_803D5148:

	# ROM: 0x3D2148
	.asciz "GasJet09"

.global lbl_803D5151
lbl_803D5151:

	# ROM: 0x3D2151
	.byte 0x47, 0x61, 0x73
	.asciz "Jet10"

.global lbl_803D515A
lbl_803D515A:

	# ROM: 0x3D215A
	.byte 0x47, 0x61
	.asciz "sJet11"

.global lbl_803D5163
lbl_803D5163:

	# ROM: 0x3D2163
	.byte 0x47
	.asciz "asJet12"

.global lbl_803D516C
lbl_803D516C:

	# ROM: 0x3D216C
	.asciz "GasJet13"

.global lbl_803D5175
lbl_803D5175:

	# ROM: 0x3D2175
	.byte 0x47, 0x61, 0x73
	.asciz "Jet14"

.global lbl_803D517E
lbl_803D517E:

	# ROM: 0x3D217E
	.byte 0x47, 0x61
	.asciz "s_01_LCTR"

.global lbl_803D518A
lbl_803D518A:

	# ROM: 0x3D218A
	.byte 0x47, 0x61
	.asciz "s_02_LCTR"

.global lbl_803D5196
lbl_803D5196:

	# ROM: 0x3D2196
	.byte 0x47, 0x61
	.asciz "s_03_LCTR"

.global lbl_803D51A2
lbl_803D51A2:

	# ROM: 0x3D21A2
	.byte 0x47, 0x61
	.asciz "s_04_LCTR"

.global lbl_803D51AE
lbl_803D51AE:

	# ROM: 0x3D21AE
	.byte 0x47, 0x61
	.asciz "s_05_LCTR"

.global lbl_803D51BA
lbl_803D51BA:

	# ROM: 0x3D21BA
	.byte 0x47, 0x61
	.asciz "s_06_LCTR"

.global lbl_803D51C6
lbl_803D51C6:

	# ROM: 0x3D21C6
	.byte 0x47, 0x61
	.asciz "s_07_LCTR"

.global lbl_803D51D2
lbl_803D51D2:

	# ROM: 0x3D21D2
	.byte 0x47, 0x61
	.asciz "s_08_LCTR"

.global lbl_803D51DE
lbl_803D51DE:

	# ROM: 0x3D21DE
	.byte 0x47, 0x61
	.asciz "s_09_LCTR"

.global lbl_803D51EA
lbl_803D51EA:

	# ROM: 0x3D21EA
	.byte 0x47, 0x61
	.asciz "s_10_LCTR"

.global lbl_803D51F6
lbl_803D51F6:

	# ROM: 0x3D21F6
	.byte 0x47, 0x61
	.asciz "s_11_LCTR"

.global lbl_803D5202
lbl_803D5202:

	# ROM: 0x3D2202
	.byte 0x47, 0x61
	.asciz "s_12_LCTR"

.global lbl_803D520E
lbl_803D520E:

	# ROM: 0x3D220E
	.byte 0x47, 0x61
	.asciz "s_13_LCTR"

.global lbl_803D521A
lbl_803D521A:

	# ROM: 0x3D221A
	.byte 0x47, 0x61
	.asciz "s_14_LCTR"
	.byte 0x3F, 0x3F
	.asciz "(??)"

.include "macros.inc"

.section .data

.global lbl_803E6408
lbl_803E6408:
	# ROM: 0x3E3408
	.4byte 0
	.4byte 0
	.4byte __dt__17CFlaahgraTentacleFv
	.4byte Accept__17CFlaahgraTentacleFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__17CFlaahgraTentacleFfR13CStateManager
	.4byte AcceptScriptMsg__17CFlaahgraTentacleF20EScriptObjectMessage9TUniqueIdR13CStateManager
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
	.4byte GetAimPosition__17CFlaahgraTentacleCFRC13CStateManagerf
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
	.4byte Death__17CFlaahgraTentacleFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
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
	.4byte Attack__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
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
	.4byte Retreat__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
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
	.4byte AnimOver__17CFlaahgraTentacleFR13CStateManagerf
	.4byte ShouldAttack__17CFlaahgraTentacleFR13CStateManagerf
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
	.4byte Inside__17CFlaahgraTentacleFR13CStateManagerf
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

.global lbl_803E66D4
lbl_803E66D4:
	# ROM: 0x3E36D4
	.4byte lbl_801F0E2C
	.4byte lbl_801F0E14
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E20
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E08
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0D10
	.4byte lbl_801F0E40
	.4byte lbl_801F0E40
	.4byte lbl_801F0C94
	.4byte lbl_801F0CB0
	.4byte lbl_801F0E38

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global SaveBombSlotInfo__17CFlaahgraTentacleFR13CStateManager
SaveBombSlotInfo__17CFlaahgraTentacleFR13CStateManager:
/* 801F0068 001ECFC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F006C 001ECFCC  7C 08 02 A6 */	mflr r0
/* 801F0070 001ECFD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F0074 001ECFD4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F0078 001ECFD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F007C 001ECFDC  7C 9E 23 78 */	mr r30, r4
/* 801F0080 001ECFE0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F0084 001ECFE4  7C 7D 1B 78 */	mr r29, r3
/* 801F0088 001ECFE8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 801F008C 001ECFEC  48 00 00 8C */	b lbl_801F0118
lbl_801F0090:
/* 801F0090 001ECFF0  80 1F 00 00 */	lwz r0, 0(r31)
/* 801F0094 001ECFF4  2C 00 00 19 */	cmpwi r0, 0x19
/* 801F0098 001ECFF8  40 82 00 7C */	bne lbl_801F0114
/* 801F009C 001ECFFC  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F00A0 001ED000  2C 00 00 11 */	cmpwi r0, 0x11
/* 801F00A4 001ED004  40 82 00 70 */	bne lbl_801F0114
/* 801F00A8 001ED008  80 1F 00 08 */	lwz r0, 8(r31)
/* 801F00AC 001ED00C  7F C4 F3 78 */	mr r4, r30
/* 801F00B0 001ED010  38 61 00 0C */	addi r3, r1, 0xc
/* 801F00B4 001ED014  38 A1 00 14 */	addi r5, r1, 0x14
/* 801F00B8 001ED018  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F00BC 001ED01C  4B E5 7E 61 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801F00C0 001ED020  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801F00C4 001ED024  7F C3 F3 78 */	mr r3, r30
/* 801F00C8 001ED028  38 81 00 08 */	addi r4, r1, 8
/* 801F00CC 001ED02C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F00D0 001ED030  B0 01 00 08 */	sth r0, 8(r1)
/* 801F00D4 001ED034  4B E5 C4 D1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F00D8 001ED038  7C 64 1B 78 */	mr r4, r3
/* 801F00DC 001ED03C  38 61 00 18 */	addi r3, r1, 0x18
/* 801F00E0 001ED040  4B EB 6E 09 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F00E4 001ED044  80 63 00 04 */	lwz r3, 4(r3)
/* 801F00E8 001ED048  28 03 00 00 */	cmplwi r3, 0
/* 801F00EC 001ED04C  41 82 00 28 */	beq lbl_801F0114
/* 801F00F0 001ED050  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801F00F4 001ED054  B0 1D 05 8C */	sth r0, 0x58c(r29)
/* 801F00F8 001ED058  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 801F00FC 001ED05C  D0 1D 05 80 */	stfs f0, 0x580(r29)
/* 801F0100 001ED060  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 801F0104 001ED064  D0 1D 05 84 */	stfs f0, 0x584(r29)
/* 801F0108 001ED068  C0 03 01 24 */	lfs f0, 0x124(r3)
/* 801F010C 001ED06C  D0 1D 05 88 */	stfs f0, 0x588(r29)
/* 801F0110 001ED070  48 00 00 20 */	b lbl_801F0130
lbl_801F0114:
/* 801F0114 001ED074  3B FF 00 0C */	addi r31, r31, 0xc
lbl_801F0118:
/* 801F0118 001ED078  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 801F011C 001ED07C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801F0120 001ED080  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801F0124 001ED084  7C 03 02 14 */	add r0, r3, r0
/* 801F0128 001ED088  7C 1F 00 40 */	cmplw r31, r0
/* 801F012C 001ED08C  40 82 FF 64 */	bne lbl_801F0090
lbl_801F0130:
/* 801F0130 001ED090  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F0134 001ED094  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F0138 001ED098  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F013C 001ED09C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F0140 001ED0A0  7C 08 03 A6 */	mtlr r0
/* 801F0144 001ED0A4  38 21 00 30 */	addi r1, r1, 0x30
/* 801F0148 001ED0A8  4E 80 00 20 */	blr 

.global RetractTentacle__17CFlaahgraTentacleFR13CStateManager
RetractTentacle__17CFlaahgraTentacleFR13CStateManager:
/* 801F014C 001ED0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0150 001ED0B0  7C 08 02 A6 */	mflr r0
/* 801F0154 001ED0B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0158 001ED0B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F015C 001ED0BC  7C 9F 23 78 */	mr r31, r4
/* 801F0160 001ED0C0  38 80 00 00 */	li r4, 0
/* 801F0164 001ED0C4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F0168 001ED0C8  7C 7E 1B 78 */	mr r30, r3
/* 801F016C 001ED0CC  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801F0170 001ED0D0  4B F4 A8 69 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F0174 001ED0D4  A0 1E 05 8C */	lhz r0, 0x58c(r30)
/* 801F0178 001ED0D8  7F E3 FB 78 */	mr r3, r31
/* 801F017C 001ED0DC  38 81 00 08 */	addi r4, r1, 8
/* 801F0180 001ED0E0  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0184 001ED0E4  4B E5 C3 F1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F0188 001ED0E8  7C 64 1B 78 */	mr r4, r3
/* 801F018C 001ED0EC  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0190 001ED0F0  4B EB 6D 59 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F0194 001ED0F4  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F0198 001ED0F8  28 1F 00 00 */	cmplwi r31, 0
/* 801F019C 001ED0FC  41 82 00 28 */	beq lbl_801F01C4
/* 801F01A0 001ED100  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801F01A4 001ED104  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801F01A8 001ED108  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801F01AC 001ED10C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801F01B0 001ED110  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 801F01B4 001ED114  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F01B8 001ED118  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 801F01BC 001ED11C  48 12 46 FD */	bl Magnitude__9CVector3fCFv
/* 801F01C0 001ED120  D0 3F 01 28 */	stfs f1, 0x128(r31)
lbl_801F01C4:
/* 801F01C4 001ED124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F01C8 001ED128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F01CC 001ED12C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F01D0 001ED130  7C 08 03 A6 */	mtlr r0
/* 801F01D4 001ED134  38 21 00 20 */	addi r1, r1, 0x20
/* 801F01D8 001ED138  4E 80 00 20 */	blr 

.global ExtractTentacle__17CFlaahgraTentacleFR13CStateManager
ExtractTentacle__17CFlaahgraTentacleFR13CStateManager:
/* 801F01DC 001ED13C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F01E0 001ED140  7C 08 02 A6 */	mflr r0
/* 801F01E4 001ED144  C0 22 AE B4 */	lfs f1, lbl_805ACBD4@sda21(r2)
/* 801F01E8 001ED148  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F01EC 001ED14C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F01F0 001ED150  7C 9F 23 78 */	mr r31, r4
/* 801F01F4 001ED154  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F01F8 001ED158  7C 7E 1B 78 */	mr r30, r3
/* 801F01FC 001ED15C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0200 001ED160  81 8C 02 30 */	lwz r12, 0x230(r12)
/* 801F0204 001ED164  7D 89 03 A6 */	mtctr r12
/* 801F0208 001ED168  4E 80 04 21 */	bctrl 
/* 801F020C 001ED16C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F0210 001ED170  41 82 00 64 */	beq lbl_801F0274
/* 801F0214 001ED174  88 1E 05 8E */	lbz r0, 0x58e(r30)
/* 801F0218 001ED178  38 60 00 01 */	li r3, 1
/* 801F021C 001ED17C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F0220 001ED180  7F E3 FB 78 */	mr r3, r31
/* 801F0224 001ED184  98 1E 05 8E */	stb r0, 0x58e(r30)
/* 801F0228 001ED188  38 81 00 08 */	addi r4, r1, 8
/* 801F022C 001ED18C  A0 1E 05 8C */	lhz r0, 0x58c(r30)
/* 801F0230 001ED190  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0234 001ED194  4B E5 C3 41 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F0238 001ED198  7C 64 1B 78 */	mr r4, r3
/* 801F023C 001ED19C  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0240 001ED1A0  4B EB 6C A9 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F0244 001ED1A4  83 E3 00 04 */	lwz r31, 4(r3)
/* 801F0248 001ED1A8  28 1F 00 00 */	cmplwi r31, 0
/* 801F024C 001ED1AC  41 82 00 28 */	beq lbl_801F0274
/* 801F0250 001ED1B0  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 801F0254 001ED1B4  38 7E 05 80 */	addi r3, r30, 0x580
/* 801F0258 001ED1B8  D0 1F 01 1C */	stfs f0, 0x11c(r31)
/* 801F025C 001ED1BC  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 801F0260 001ED1C0  D0 1F 01 20 */	stfs f0, 0x120(r31)
/* 801F0264 001ED1C4  C0 1E 05 88 */	lfs f0, 0x588(r30)
/* 801F0268 001ED1C8  D0 1F 01 24 */	stfs f0, 0x124(r31)
/* 801F026C 001ED1CC  48 12 46 4D */	bl Magnitude__9CVector3fCFv
/* 801F0270 001ED1D0  D0 3F 01 28 */	stfs f1, 0x128(r31)
lbl_801F0274:
/* 801F0274 001ED1D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F0278 001ED1D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F027C 001ED1DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F0280 001ED1E0  7C 08 03 A6 */	mtlr r0
/* 801F0284 001ED1E4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F0288 001ED1E8  4E 80 00 20 */	blr 

.global "AddSphereCollisionList__17CFlaahgraTentacleFPCQ217CFlaahgraTentacle16SSphereJointInfoiRQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>"
"AddSphereCollisionList__17CFlaahgraTentacleFPCQ217CFlaahgraTentacle16SSphereJointInfoiRQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>":
/* 801F028C 001ED1EC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801F0290 001ED1F0  7C 08 02 A6 */	mflr r0
/* 801F0294 001ED1F4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801F0298 001ED1F8  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 801F029C 001ED1FC  7C B9 2B 78 */	mr r25, r5
/* 801F02A0 001ED200  7C DA 33 78 */	mr r26, r6
/* 801F02A4 001ED204  7C 9E 23 78 */	mr r30, r4
/* 801F02A8 001ED208  3B A1 00 60 */	addi r29, r1, 0x60
/* 801F02AC 001ED20C  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 801F02B0 001ED210  3B 60 00 00 */	li r27, 0
/* 801F02B4 001ED214  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801F02B8 001ED218  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801F02BC 001ED21C  48 00 01 20 */	b lbl_801F03DC
lbl_801F02C0:
/* 801F02C0 001ED220  80 9E 00 00 */	lwz r4, 0(r30)
/* 801F02C4 001ED224  38 61 00 24 */	addi r3, r1, 0x24
/* 801F02C8 001ED228  4B E1 49 F1 */	bl string_l__4rstlFPCc
/* 801F02CC 001ED22C  7F E4 FB 78 */	mr r4, r31
/* 801F02D0 001ED230  38 61 00 0C */	addi r3, r1, 0xc
/* 801F02D4 001ED234  38 A1 00 24 */	addi r5, r1, 0x24
/* 801F02D8 001ED238  4B E3 E5 61 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801F02DC 001ED23C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801F02E0 001ED240  38 61 00 24 */	addi r3, r1, 0x24
/* 801F02E4 001ED244  98 01 00 10 */	stb r0, 0x10(r1)
/* 801F02E8 001ED248  48 14 D7 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801F02EC 001ED24C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801F02F0 001ED250  28 00 00 FF */	cmplwi r0, 0xff
/* 801F02F4 001ED254  41 82 00 E0 */	beq lbl_801F03D4
/* 801F02F8 001ED258  80 9E 00 00 */	lwz r4, 0(r30)
/* 801F02FC 001ED25C  38 61 00 14 */	addi r3, r1, 0x14
/* 801F0300 001ED260  4B E1 49 B9 */	bl string_l__4rstlFPCc
/* 801F0304 001ED264  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801F0308 001ED268  38 61 00 34 */	addi r3, r1, 0x34
/* 801F030C 001ED26C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801F0310 001ED270  38 81 00 08 */	addi r4, r1, 8
/* 801F0314 001ED274  98 01 00 08 */	stb r0, 8(r1)
/* 801F0318 001ED278  38 A1 00 14 */	addi r5, r1, 0x14
/* 801F031C 001ED27C  C0 42 AE B8 */	lfs f2, lbl_805ACBD8@sda21(r2)
/* 801F0320 001ED280  4B FB 84 ED */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801F0324 001ED284  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 801F0328 001ED288  7F 83 E3 78 */	mr r3, r28
/* 801F032C 001ED28C  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 801F0330 001ED290  7F A4 EB 78 */	mr r4, r29
/* 801F0334 001ED294  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 801F0338 001ED298  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 801F033C 001ED29C  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 801F0340 001ED2A0  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 801F0344 001ED2A4  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 801F0348 001ED2A8  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 801F034C 001ED2AC  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 801F0350 001ED2B0  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801F0354 001ED2B4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801F0358 001ED2B8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801F035C 001ED2BC  90 E1 00 78 */	stw r7, 0x78(r1)
/* 801F0360 001ED2C0  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 801F0364 001ED2C4  98 A1 00 80 */	stb r5, 0x80(r1)
/* 801F0368 001ED2C8  98 01 00 81 */	stb r0, 0x81(r1)
/* 801F036C 001ED2CC  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 801F0370 001ED2D0  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 801F0374 001ED2D4  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 801F0378 001ED2D8  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801F037C 001ED2DC  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801F0380 001ED2E0  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801F0384 001ED2E4  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801F0388 001ED2E8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801F038C 001ED2EC  48 14 DD D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801F0390 001ED2F0  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 801F0394 001ED2F4  28 1D 00 00 */	cmplwi r29, 0
/* 801F0398 001ED2F8  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801F039C 001ED2FC  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 801F03A0 001ED300  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801F03A4 001ED304  41 82 00 0C */	beq lbl_801F03B0
/* 801F03A8 001ED308  7F A3 EB 78 */	mr r3, r29
/* 801F03AC 001ED30C  48 14 D7 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801F03B0:
/* 801F03B0 001ED310  38 61 00 14 */	addi r3, r1, 0x14
/* 801F03B4 001ED314  48 14 D7 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801F03B8 001ED318  7F 43 D3 78 */	mr r3, r26
/* 801F03BC 001ED31C  38 81 00 78 */	addi r4, r1, 0x78
/* 801F03C0 001ED320  4B F6 5E 71 */	bl sub_80156230
/* 801F03C4 001ED324  28 1C 00 00 */	cmplwi r28, 0
/* 801F03C8 001ED328  41 82 00 0C */	beq lbl_801F03D4
/* 801F03CC 001ED32C  7F 83 E3 78 */	mr r3, r28
/* 801F03D0 001ED330  48 14 D7 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801F03D4:
/* 801F03D4 001ED334  3B DE 00 08 */	addi r30, r30, 8
/* 801F03D8 001ED338  3B 7B 00 01 */	addi r27, r27, 1
lbl_801F03DC:
/* 801F03DC 001ED33C  7C 1B C8 00 */	cmpw r27, r25
/* 801F03E0 001ED340  41 80 FE E0 */	blt lbl_801F02C0
/* 801F03E4 001ED344  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 801F03E8 001ED348  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801F03EC 001ED34C  7C 08 03 A6 */	mtlr r0
/* 801F03F0 001ED350  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801F03F4 001ED354  4E 80 00 20 */	blr 

.global SetupCollisionManager__17CFlaahgraTentacleFR13CStateManager
SetupCollisionManager__17CFlaahgraTentacleFR13CStateManager:
/* 801F03F8 001ED358  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801F03FC 001ED35C  7C 08 02 A6 */	mflr r0
/* 801F0400 001ED360  90 01 00 84 */	stw r0, 0x84(r1)
/* 801F0404 001ED364  38 00 00 00 */	li r0, 0
/* 801F0408 001ED368  BF 21 00 64 */	stmw r25, 0x64(r1)
/* 801F040C 001ED36C  7C 7D 1B 78 */	mr r29, r3
/* 801F0410 001ED370  7C 9E 23 78 */	mr r30, r4
/* 801F0414 001ED374  38 61 00 38 */	addi r3, r1, 0x38
/* 801F0418 001ED378  38 80 00 03 */	li r4, 3
/* 801F041C 001ED37C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801F0420 001ED380  90 01 00 40 */	stw r0, 0x40(r1)
/* 801F0424 001ED384  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F0428 001ED388  4B F6 63 91 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801F042C 001ED38C  3C 80 80 3D */	lis r4, lbl_803D2000@ha
/* 801F0430 001ED390  7F A3 EB 78 */	mr r3, r29
/* 801F0434 001ED394  38 84 20 00 */	addi r4, r4, lbl_803D2000@l
/* 801F0438 001ED398  38 C1 00 38 */	addi r6, r1, 0x38
/* 801F043C 001ED39C  38 A0 00 03 */	li r5, 3
/* 801F0440 001ED3A0  4B FF FE 4D */	bl "AddSphereCollisionList__17CFlaahgraTentacleFPCQ217CFlaahgraTentacle16SSphereJointInfoiRQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>"
/* 801F0444 001ED3A4  3C 80 80 3D */	lis r4, lbl_803D2018@ha
/* 801F0448 001ED3A8  38 60 00 18 */	li r3, 0x18
/* 801F044C 001ED3AC  38 84 20 18 */	addi r4, r4, lbl_803D2018@l
/* 801F0450 001ED3B0  38 A0 00 00 */	li r5, 0
/* 801F0454 001ED3B4  38 84 00 14 */	addi r4, r4, 0x14
/* 801F0458 001ED3B8  48 12 54 15 */	bl __nw__FUlPCcPCc
/* 801F045C 001ED3BC  7C 7C 1B 79 */	or. r28, r3, r3
/* 801F0460 001ED3C0  41 82 00 38 */	beq lbl_801F0498
/* 801F0464 001ED3C4  81 3D 00 04 */	lwz r9, 4(r29)
/* 801F0468 001ED3C8  7F C4 F3 78 */	mr r4, r30
/* 801F046C 001ED3CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 801F0470 001ED3D0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801F0474 001ED3D4  91 21 00 1C */	stw r9, 0x1c(r1)
/* 801F0478 001ED3D8  38 E1 00 38 */	addi r7, r1, 0x38
/* 801F047C 001ED3DC  39 00 00 01 */	li r8, 1
/* 801F0480 001ED3E0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801F0484 001ED3E4  91 21 00 18 */	stw r9, 0x18(r1)
/* 801F0488 001ED3E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F048C 001ED3EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F0490 001ED3F0  4B FB 74 A1 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801F0494 001ED3F4  7C 7C 1B 78 */	mr r28, r3
lbl_801F0498:
/* 801F0498 001ED3F8  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 801F049C 001ED3FC  38 80 00 01 */	li r4, 1
/* 801F04A0 001ED400  4B FB 74 3D */	bl sub_801a78dc
/* 801F04A4 001ED404  93 9D 05 6C */	stw r28, 0x56c(r29)
/* 801F04A8 001ED408  3B E0 00 00 */	li r31, 0
/* 801F04AC 001ED40C  48 00 01 50 */	b lbl_801F05FC
lbl_801F04B0:
/* 801F04B0 001ED410  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 801F04B4 001ED414  7F E4 FB 78 */	mr r4, r31
/* 801F04B8 001ED418  4B FB 6D 81 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801F04BC 001ED41C  7C 7C 1B 78 */	mr r28, r3
/* 801F04C0 001ED420  7F C3 F3 78 */	mr r3, r30
/* 801F04C4 001ED424  A0 1C 00 3C */	lhz r0, 0x3c(r28)
/* 801F04C8 001ED428  38 81 00 08 */	addi r4, r1, 8
/* 801F04CC 001ED42C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801F04D0 001ED430  B0 01 00 08 */	sth r0, 8(r1)
/* 801F04D4 001ED434  4B E5 C0 A1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F04D8 001ED438  7C 64 1B 78 */	mr r4, r3
/* 801F04DC 001ED43C  38 61 00 20 */	addi r3, r1, 0x20
/* 801F04E0 001ED440  4B EB EE 6D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801F04E4 001ED444  83 23 00 04 */	lwz r25, 4(r3)
/* 801F04E8 001ED448  28 19 00 00 */	cmplwi r25, 0
/* 801F04EC 001ED44C  41 82 01 0C */	beq lbl_801F05F8
/* 801F04F0 001ED450  80 AD 92 88 */	lwz r5, lbl_805A7E48@sda21(r13)
/* 801F04F4 001ED454  38 60 00 00 */	li r3, 0
/* 801F04F8 001ED458  38 80 00 01 */	li r4, 1
/* 801F04FC 001ED45C  48 19 99 F9 */	bl __shl2i
/* 801F0500 001ED460  80 AD 92 8C */	lwz r5, lbl_805A7E4C@sda21(r13)
/* 801F0504 001ED464  7C 9A 23 78 */	mr r26, r4
/* 801F0508 001ED468  7C 7B 1B 78 */	mr r27, r3
/* 801F050C 001ED46C  38 60 00 00 */	li r3, 0
/* 801F0510 001ED470  38 80 00 01 */	li r4, 1
/* 801F0514 001ED474  48 19 99 E1 */	bl __shl2i
/* 801F0518 001ED478  80 AD 92 90 */	lwz r5, lbl_805A7E50@sda21(r13)
/* 801F051C 001ED47C  7F 5A 23 78 */	or r26, r26, r4
/* 801F0520 001ED480  7F 7B 1B 78 */	or r27, r27, r3
/* 801F0524 001ED484  38 60 00 00 */	li r3, 0
/* 801F0528 001ED488  38 80 00 01 */	li r4, 1
/* 801F052C 001ED48C  48 19 99 C9 */	bl __shl2i
/* 801F0530 001ED490  80 AD 92 94 */	lwz r5, lbl_805A7E54@sda21(r13)
/* 801F0534 001ED494  7F 5A 23 78 */	or r26, r26, r4
/* 801F0538 001ED498  7F 7B 1B 78 */	or r27, r27, r3
/* 801F053C 001ED49C  38 60 00 00 */	li r3, 0
/* 801F0540 001ED4A0  38 80 00 01 */	li r4, 1
/* 801F0544 001ED4A4  48 19 99 B1 */	bl __shl2i
/* 801F0548 001ED4A8  80 AD 92 84 */	lwz r5, lbl_805A7E44@sda21(r13)
/* 801F054C 001ED4AC  7F 5A 23 78 */	or r26, r26, r4
/* 801F0550 001ED4B0  7F 7B 1B 78 */	or r27, r27, r3
/* 801F0554 001ED4B4  38 60 00 00 */	li r3, 0
/* 801F0558 001ED4B8  38 80 00 01 */	li r4, 1
/* 801F055C 001ED4BC  48 19 99 99 */	bl __shl2i
/* 801F0560 001ED4C0  38 00 00 03 */	li r0, 3
/* 801F0564 001ED4C4  90 81 00 4C */	stw r4, 0x4c(r1)
/* 801F0568 001ED4C8  38 81 00 48 */	addi r4, r1, 0x48
/* 801F056C 001ED4CC  90 61 00 48 */	stw r3, 0x48(r1)
/* 801F0570 001ED4D0  7F 23 CB 78 */	mr r3, r25
/* 801F0574 001ED4D4  93 41 00 54 */	stw r26, 0x54(r1)
/* 801F0578 001ED4D8  93 61 00 50 */	stw r27, 0x50(r1)
/* 801F057C 001ED4DC  90 01 00 58 */	stw r0, 0x58(r1)
/* 801F0580 001ED4E0  4B E6 33 21 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801F0584 001ED4E4  7F 23 CB 78 */	mr r3, r25
/* 801F0588 001ED4E8  7F C5 F3 78 */	mr r5, r30
/* 801F058C 001ED4EC  38 80 00 1B */	li r4, 0x1b
/* 801F0590 001ED4F0  4B E6 3D C1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801F0594 001ED4F4  7F A3 EB 78 */	mr r3, r29
/* 801F0598 001ED4F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801F059C 001ED4FC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801F05A0 001ED500  7D 89 03 A6 */	mtctr r12
/* 801F05A4 001ED504  4E 80 04 21 */	bctrl 
/* 801F05A8 001ED508  7C 64 1B 78 */	mr r4, r3
/* 801F05AC 001ED50C  7F 23 CB 78 */	mr r3, r25
/* 801F05B0 001ED510  4B FB 85 E9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801F05B4 001ED514  A0 7D 05 7C */	lhz r3, 0x57c(r29)
/* 801F05B8 001ED518  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 801F05BC 001ED51C  7C 03 00 40 */	cmplw r3, r0
/* 801F05C0 001ED520  40 82 00 38 */	bne lbl_801F05F8
/* 801F05C4 001ED524  80 82 AE B0 */	lwz r4, lbl_805ACBD0@sda21(r2)
/* 801F05C8 001ED528  38 61 00 28 */	addi r3, r1, 0x28
/* 801F05CC 001ED52C  4B E1 46 ED */	bl string_l__4rstlFPCc
/* 801F05D0 001ED530  38 7C 00 2C */	addi r3, r28, 0x2c
/* 801F05D4 001ED534  38 81 00 28 */	addi r4, r1, 0x28
/* 801F05D8 001ED538  4B E6 20 09 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801F05DC 001ED53C  7C 7C 1B 78 */	mr r28, r3
/* 801F05E0 001ED540  38 61 00 28 */	addi r3, r1, 0x28
/* 801F05E4 001ED544  48 14 D4 FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801F05E8 001ED548  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801F05EC 001ED54C  41 82 00 0C */	beq lbl_801F05F8
/* 801F05F0 001ED550  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801F05F4 001ED554  B0 1D 05 7C */	sth r0, 0x57c(r29)
lbl_801F05F8:
/* 801F05F8 001ED558  3B FF 00 01 */	addi r31, r31, 1
lbl_801F05FC:
/* 801F05FC 001ED55C  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 801F0600 001ED560  4B FB 6C 49 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801F0604 001ED564  7C 1F 18 40 */	cmplw r31, r3
/* 801F0608 001ED568  41 80 FE A8 */	blt lbl_801F04B0
/* 801F060C 001ED56C  7F A3 EB 78 */	mr r3, r29
/* 801F0610 001ED570  7F C7 F3 78 */	mr r7, r30
/* 801F0614 001ED574  38 80 00 13 */	li r4, 0x13
/* 801F0618 001ED578  38 A0 00 28 */	li r5, 0x28
/* 801F061C 001ED57C  38 C0 00 29 */	li r6, 0x29
/* 801F0620 001ED580  4B E6 37 CD */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801F0624 001ED584  7F A3 EB 78 */	mr r3, r29
/* 801F0628 001ED588  7F C5 F3 78 */	mr r5, r30
/* 801F062C 001ED58C  38 80 00 27 */	li r4, 0x27
/* 801F0630 001ED590  4B E6 3D 21 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801F0634 001ED594  38 61 00 38 */	addi r3, r1, 0x38
/* 801F0638 001ED598  38 80 FF FF */	li r4, -1
/* 801F063C 001ED59C  4B F6 5C F1 */	bl sub_8015632c
/* 801F0640 001ED5A0  BB 21 00 64 */	lmw r25, 0x64(r1)
/* 801F0644 001ED5A4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801F0648 001ED5A8  7C 08 03 A6 */	mtlr r0
/* 801F064C 001ED5AC  38 21 00 80 */	addi r1, r1, 0x80
/* 801F0650 001ED5B0  4E 80 00 20 */	blr 

.global Dead__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
Dead__17CFlaahgraTentacleFR13CStateManager9EStateMsgf:
/* 801F0654 001ED5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0658 001ED5B8  7C 08 02 A6 */	mflr r0
/* 801F065C 001ED5BC  38 80 00 00 */	li r4, 0
/* 801F0660 001ED5C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0664 001ED5C4  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801F0668 001ED5C8  4B F4 A3 71 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F066C 001ED5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0670 001ED5D0  7C 08 03 A6 */	mtlr r0
/* 801F0674 001ED5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0678 001ED5D8  4E 80 00 20 */	blr 

.global Attack__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
Attack__17CFlaahgraTentacleFR13CStateManager9EStateMsgf:
/* 801F067C 001ED5DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F0680 001ED5E0  7C 08 02 A6 */	mflr r0
/* 801F0684 001ED5E4  2C 05 00 01 */	cmpwi r5, 1
/* 801F0688 001ED5E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F068C 001ED5EC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F0690 001ED5F0  7C 7F 1B 78 */	mr r31, r3
/* 801F0694 001ED5F4  41 82 00 2C */	beq lbl_801F06C0
/* 801F0698 001ED5F8  40 80 00 10 */	bge lbl_801F06A8
/* 801F069C 001ED5FC  2C 05 00 00 */	cmpwi r5, 0
/* 801F06A0 001ED600  40 80 00 14 */	bge lbl_801F06B4
/* 801F06A4 001ED604  48 00 01 64 */	b lbl_801F0808
lbl_801F06A8:
/* 801F06A8 001ED608  2C 05 00 03 */	cmpwi r5, 3
/* 801F06AC 001ED60C  40 80 01 5C */	bge lbl_801F0808
/* 801F06B0 001ED610  48 00 01 38 */	b lbl_801F07E8
lbl_801F06B4:
/* 801F06B4 001ED614  38 00 00 00 */	li r0, 0
/* 801F06B8 001ED618  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801F06BC 001ED61C  48 00 01 4C */	b lbl_801F0808
lbl_801F06C0:
/* 801F06C0 001ED620  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801F06C4 001ED624  2C 00 00 01 */	cmpwi r0, 1
/* 801F06C8 001ED628  41 82 01 40 */	beq lbl_801F0808
/* 801F06CC 001ED62C  40 80 00 10 */	bge lbl_801F06DC
/* 801F06D0 001ED630  2C 00 00 00 */	cmpwi r0, 0
/* 801F06D4 001ED634  40 80 00 14 */	bge lbl_801F06E8
/* 801F06D8 001ED638  48 00 01 30 */	b lbl_801F0808
lbl_801F06DC:
/* 801F06DC 001ED63C  2C 00 00 03 */	cmpwi r0, 3
/* 801F06E0 001ED640  40 80 01 28 */	bge lbl_801F0808
/* 801F06E4 001ED644  48 00 00 E8 */	b lbl_801F07CC
lbl_801F06E8:
/* 801F06E8 001ED648  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F06EC 001ED64C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801F06F0 001ED650  2C 00 00 07 */	cmpwi r0, 7
/* 801F06F4 001ED654  40 82 00 10 */	bne lbl_801F0704
/* 801F06F8 001ED658  38 00 00 02 */	li r0, 2
/* 801F06FC 001ED65C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801F0700 001ED660  48 00 01 08 */	b lbl_801F0808
lbl_801F0704:
/* 801F0704 001ED664  C0 3F 05 78 */	lfs f1, 0x578(r31)
/* 801F0708 001ED668  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F070C 001ED66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0710 001ED670  40 81 00 0C */	ble lbl_801F071C
/* 801F0714 001ED674  39 00 00 00 */	li r8, 0
/* 801F0718 001ED678  48 00 00 08 */	b lbl_801F0720
lbl_801F071C:
/* 801F071C 001ED67C  39 00 00 01 */	li r8, 1
lbl_801F0720:
/* 801F0720 001ED680  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801F0724 001ED684  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801F0728 001ED688  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801F072C 001ED68C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F0730 001ED690  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 801F0734 001ED694  C0 44 00 00 */	lfs f2, 0(r4)
/* 801F0738 001ED698  C0 24 00 04 */	lfs f1, 4(r4)
/* 801F073C 001ED69C  3C A0 80 3E */	lis r5, lbl_803DA9D8@ha
/* 801F0740 001ED6A0  C0 04 00 08 */	lfs f0, 8(r4)
/* 801F0744 001ED6A4  38 C0 00 05 */	li r6, 5
/* 801F0748 001ED6A8  38 00 00 00 */	li r0, 0
/* 801F074C 001ED6AC  3B E3 00 04 */	addi r31, r3, 4
/* 801F0750 001ED6B0  90 E1 00 08 */	stw r7, 8(r1)
/* 801F0754 001ED6B4  38 A5 A9 D8 */	addi r5, r5, lbl_803DA9D8@l
/* 801F0758 001ED6B8  7F E3 FB 78 */	mr r3, r31
/* 801F075C 001ED6BC  38 80 00 05 */	li r4, 5
/* 801F0760 001ED6C0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801F0764 001ED6C4  90 A1 00 08 */	stw r5, 8(r1)
/* 801F0768 001ED6C8  91 01 00 10 */	stw r8, 0x10(r1)
/* 801F076C 001ED6CC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801F0770 001ED6D0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801F0774 001ED6D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801F0778 001ED6D8  98 01 00 20 */	stb r0, 0x20(r1)
/* 801F077C 001ED6DC  4B F4 0C BD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F0780 001ED6E0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801F0784 001ED6E4  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801F0788 001ED6E8  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801F078C 001ED6EC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801F0790 001ED6F0  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801F0794 001ED6F4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801F0798 001ED6F8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801F079C 001ED6FC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801F07A0 001ED700  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801F07A4 001ED704  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801F07A8 001ED708  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801F07AC 001ED70C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801F07B0 001ED710  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801F07B4 001ED714  88 61 00 20 */	lbz r3, 0x20(r1)
/* 801F07B8 001ED718  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801F07BC 001ED71C  90 81 00 08 */	stw r4, 8(r1)
/* 801F07C0 001ED720  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801F07C4 001ED724  90 01 00 08 */	stw r0, 8(r1)
/* 801F07C8 001ED728  48 00 00 40 */	b lbl_801F0808
lbl_801F07CC:
/* 801F07CC 001ED72C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F07D0 001ED730  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801F07D4 001ED734  2C 00 00 07 */	cmpwi r0, 7
/* 801F07D8 001ED738  41 82 00 30 */	beq lbl_801F0808
/* 801F07DC 001ED73C  38 00 00 03 */	li r0, 3
/* 801F07E0 001ED740  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801F07E4 001ED744  48 00 00 24 */	b lbl_801F0808
lbl_801F07E8:
/* 801F07E8 001ED748  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801F07EC 001ED74C  48 12 1C F1 */	bl Float__9CRandom16Fv
/* 801F07F0 001ED750  C0 7F 03 08 */	lfs f3, 0x308(r31)
/* 801F07F4 001ED754  C0 5F 03 04 */	lfs f2, 0x304(r31)
/* 801F07F8 001ED758  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F07FC 001ED75C  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 801F0800 001ED760  D0 3F 05 74 */	stfs f1, 0x574(r31)
/* 801F0804 001ED764  D0 1F 05 78 */	stfs f0, 0x578(r31)
lbl_801F0808:
/* 801F0808 001ED768  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F080C 001ED76C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F0810 001ED770  7C 08 03 A6 */	mtlr r0
/* 801F0814 001ED774  38 21 00 30 */	addi r1, r1, 0x30
/* 801F0818 001ED778  4E 80 00 20 */	blr 

.global Retreat__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
Retreat__17CFlaahgraTentacleFR13CStateManager9EStateMsgf:
/* 801F081C 001ED77C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0820 001ED780  7C 08 02 A6 */	mflr r0
/* 801F0824 001ED784  2C 05 00 02 */	cmpwi r5, 2
/* 801F0828 001ED788  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F082C 001ED78C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F0830 001ED790  7C 7F 1B 78 */	mr r31, r3
/* 801F0834 001ED794  41 82 00 78 */	beq lbl_801F08AC
/* 801F0838 001ED798  40 80 00 84 */	bge lbl_801F08BC
/* 801F083C 001ED79C  2C 05 00 01 */	cmpwi r5, 1
/* 801F0840 001ED7A0  40 80 00 08 */	bge lbl_801F0848
/* 801F0844 001ED7A4  48 00 00 78 */	b lbl_801F08BC
lbl_801F0848:
/* 801F0848 001ED7A8  88 1F 05 8E */	lbz r0, 0x58e(r31)
/* 801F084C 001ED7AC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F0850 001ED7B0  41 82 00 6C */	beq lbl_801F08BC
/* 801F0854 001ED7B4  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 801F0858 001ED7B8  C0 02 AE BC */	lfs f0, lbl_805ACBDC@sda21(r2)
/* 801F085C 001ED7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0860 001ED7C0  40 81 00 5C */	ble lbl_801F08BC
/* 801F0864 001ED7C4  A0 1F 05 8C */	lhz r0, 0x58c(r31)
/* 801F0868 001ED7C8  7C 83 23 78 */	mr r3, r4
/* 801F086C 001ED7CC  38 81 00 08 */	addi r4, r1, 8
/* 801F0870 001ED7D0  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0874 001ED7D4  4B E5 BD 01 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F0878 001ED7D8  7C 64 1B 78 */	mr r4, r3
/* 801F087C 001ED7DC  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0880 001ED7E0  4B EB 66 69 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F0884 001ED7E4  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0888 001ED7E8  28 03 00 00 */	cmplwi r3, 0
/* 801F088C 001ED7EC  41 82 00 30 */	beq lbl_801F08BC
/* 801F0890 001ED7F0  88 03 01 48 */	lbz r0, 0x148(r3)
/* 801F0894 001ED7F4  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F0898 001ED7F8  40 82 00 24 */	bne lbl_801F08BC
/* 801F089C 001ED7FC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801F08A0 001ED800  38 80 00 01 */	li r4, 1
/* 801F08A4 001ED804  4B F4 A1 35 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801F08A8 001ED808  48 00 00 14 */	b lbl_801F08BC
lbl_801F08AC:
/* 801F08AC 001ED80C  88 1F 05 8E */	lbz r0, 0x58e(r31)
/* 801F08B0 001ED810  38 60 00 00 */	li r3, 0
/* 801F08B4 001ED814  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801F08B8 001ED818  98 1F 05 8E */	stb r0, 0x58e(r31)
lbl_801F08BC:
/* 801F08BC 001ED81C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F08C0 001ED820  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F08C4 001ED824  7C 08 03 A6 */	mtlr r0
/* 801F08C8 001ED828  38 21 00 20 */	addi r1, r1, 0x20

.global sub_801f08cc
sub_801f08cc:
/* 801F08CC 001ED82C  4E 80 00 20 */	blr 

.global InActive__17CFlaahgraTentacleFR13CStateManager9EStateMsgf
InActive__17CFlaahgraTentacleFR13CStateManager9EStateMsgf:
/* 801F08D0 001ED830  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F08D4 001ED834  7C 08 02 A6 */	mflr r0
/* 801F08D8 001ED838  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F08DC 001ED83C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801F08E0 001ED840  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801F08E4 001ED844  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F08E8 001ED848  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F08EC 001ED84C  FF E0 08 90 */	fmr f31, f1
/* 801F08F0 001ED850  2C 05 00 01 */	cmpwi r5, 1
/* 801F08F4 001ED854  7C 7E 1B 78 */	mr r30, r3
/* 801F08F8 001ED858  7C 9F 23 78 */	mr r31, r4
/* 801F08FC 001ED85C  41 82 00 20 */	beq lbl_801F091C
/* 801F0900 001ED860  40 80 00 A4 */	bge lbl_801F09A4
/* 801F0904 001ED864  2C 05 00 00 */	cmpwi r5, 0
/* 801F0908 001ED868  40 80 00 08 */	bge lbl_801F0910
/* 801F090C 001ED86C  48 00 00 98 */	b lbl_801F09A4
lbl_801F0910:
/* 801F0910 001ED870  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F0914 001ED874  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 801F0918 001ED878  48 00 00 8C */	b lbl_801F09A4
lbl_801F091C:
/* 801F091C 001ED87C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F0920 001ED880  C0 22 AE B4 */	lfs f1, lbl_805ACBD4@sda21(r2)
/* 801F0924 001ED884  81 8C 02 30 */	lwz r12, 0x230(r12)
/* 801F0928 001ED888  7D 89 03 A6 */	mtctr r12
/* 801F092C 001ED88C  4E 80 04 21 */	bctrl 
/* 801F0930 001ED890  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F0934 001ED894  40 82 00 70 */	bne lbl_801F09A4
/* 801F0938 001ED898  A0 1E 05 8C */	lhz r0, 0x58c(r30)
/* 801F093C 001ED89C  7F E3 FB 78 */	mr r3, r31
/* 801F0940 001ED8A0  38 81 00 08 */	addi r4, r1, 8
/* 801F0944 001ED8A4  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0948 001ED8A8  4B E5 BC 2D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F094C 001ED8AC  7C 64 1B 78 */	mr r4, r3
/* 801F0950 001ED8B0  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0954 001ED8B4  4B EB 65 95 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F0958 001ED8B8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F095C 001ED8BC  28 03 00 00 */	cmplwi r3, 0
/* 801F0960 001ED8C0  41 82 00 44 */	beq lbl_801F09A4
/* 801F0964 001ED8C4  88 03 01 48 */	lbz r0, 0x148(r3)
/* 801F0968 001ED8C8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801F096C 001ED8CC  41 82 00 38 */	beq lbl_801F09A4
/* 801F0970 001ED8D0  C0 3E 05 70 */	lfs f1, 0x570(r30)
/* 801F0974 001ED8D4  C0 02 AE BC */	lfs f0, lbl_805ACBDC@sda21(r2)
/* 801F0978 001ED8D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F097C 001ED8DC  40 81 00 20 */	ble lbl_801F099C
/* 801F0980 001ED8E0  7F C3 F3 78 */	mr r3, r30
/* 801F0984 001ED8E4  7F E4 FB 78 */	mr r4, r31
/* 801F0988 001ED8E8  4B FF F7 C5 */	bl RetractTentacle__17CFlaahgraTentacleFR13CStateManager
/* 801F098C 001ED8EC  7F C3 F3 78 */	mr r3, r30
/* 801F0990 001ED8F0  7F E4 FB 78 */	mr r4, r31
/* 801F0994 001ED8F4  4B FF F8 49 */	bl ExtractTentacle__17CFlaahgraTentacleFR13CStateManager
/* 801F0998 001ED8F8  48 00 00 0C */	b lbl_801F09A4
lbl_801F099C:
/* 801F099C 001ED8FC  EC 01 F8 2A */	fadds f0, f1, f31
/* 801F09A0 001ED900  D0 1E 05 70 */	stfs f0, 0x570(r30)
lbl_801F09A4:
/* 801F09A4 001ED904  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801F09A8 001ED908  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F09AC 001ED90C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801F09B0 001ED910  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F09B4 001ED914  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F09B8 001ED918  7C 08 03 A6 */	mtlr r0
/* 801F09BC 001ED91C  38 21 00 30 */	addi r1, r1, 0x30
/* 801F09C0 001ED920  4E 80 00 20 */	blr 

.global AnimOver__17CFlaahgraTentacleFR13CStateManagerf
AnimOver__17CFlaahgraTentacleFR13CStateManagerf:
/* 801F09C4 001ED924  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801F09C8 001ED928  20 00 00 03 */	subfic r0, r0, 3
/* 801F09CC 001ED92C  7C 00 00 34 */	cntlzw r0, r0
/* 801F09D0 001ED930  54 03 D9 7E */	srwi r3, r0, 5
/* 801F09D4 001ED934  4E 80 00 20 */	blr 

.global ShouldAttack__17CFlaahgraTentacleFR13CStateManagerf
ShouldAttack__17CFlaahgraTentacleFR13CStateManagerf:
/* 801F09D8 001ED938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F09DC 001ED93C  7C 08 02 A6 */	mflr r0
/* 801F09E0 001ED940  C0 22 AE B4 */	lfs f1, lbl_805ACBD4@sda21(r2)
/* 801F09E4 001ED944  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F09E8 001ED948  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F09EC 001ED94C  7C 9F 23 78 */	mr r31, r4
/* 801F09F0 001ED950  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F09F4 001ED954  7C 7E 1B 78 */	mr r30, r3
/* 801F09F8 001ED958  C0 03 05 78 */	lfs f0, 0x578(r3)
/* 801F09FC 001ED95C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F0A00 001ED960  40 81 00 0C */	ble lbl_801F0A0C
/* 801F0A04 001ED964  38 60 00 01 */	li r3, 1
/* 801F0A08 001ED968  48 00 00 C4 */	b lbl_801F0ACC
lbl_801F0A0C:
/* 801F0A0C 001ED96C  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 801F0A10 001ED970  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801F0A14 001ED974  4C 40 13 82 */	cror 2, 0, 2
/* 801F0A18 001ED978  40 82 00 B0 */	bne lbl_801F0AC8
/* 801F0A1C 001ED97C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801F0A20 001ED980  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 801F0A24 001ED984  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801F0A28 001ED988  40 82 00 A0 */	bne lbl_801F0AC8
/* 801F0A2C 001ED98C  A0 1E 05 7C */	lhz r0, 0x57c(r30)
/* 801F0A30 001ED990  7F E3 FB 78 */	mr r3, r31
/* 801F0A34 001ED994  38 81 00 08 */	addi r4, r1, 8
/* 801F0A38 001ED998  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0A3C 001ED99C  4B E5 BB 69 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F0A40 001ED9A0  7C 64 1B 78 */	mr r4, r3
/* 801F0A44 001ED9A4  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0A48 001ED9A8  4B EB E9 05 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801F0A4C 001ED9AC  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0A50 001ED9B0  28 04 00 00 */	cmplwi r4, 0
/* 801F0A54 001ED9B4  41 82 00 74 */	beq lbl_801F0AC8
/* 801F0A58 001ED9B8  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801F0A5C 001ED9BC  38 61 00 14 */	addi r3, r1, 0x14
/* 801F0A60 001ED9C0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801F0A64 001ED9C4  C0 65 00 40 */	lfs f3, 0x40(r5)
/* 801F0A68 001ED9C8  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801F0A6C 001ED9CC  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 801F0A70 001ED9D0  EC 23 08 28 */	fsubs f1, f3, f1
/* 801F0A74 001ED9D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 801F0A78 001ED9D8  48 12 37 89 */	bl __ct__9CVector2fFff
/* 801F0A7C 001ED9DC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801F0A80 001ED9E0  38 61 00 1C */	addi r3, r1, 0x1c
/* 801F0A84 001ED9E4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801F0A88 001ED9E8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801F0A8C 001ED9EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801F0A90 001ED9F0  48 12 36 4D */	bl MagSquared__9CVector2fCFv
/* 801F0A94 001ED9F4  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 801F0A98 001ED9F8  38 60 00 00 */	li r3, 0
/* 801F0A9C 001ED9FC  C0 5E 03 00 */	lfs f2, 0x300(r30)
/* 801F0AA0 001EDA00  EC 00 00 32 */	fmuls f0, f0, f0
/* 801F0AA4 001EDA04  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801F0AA8 001EDA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0AAC 001EDA0C  4C 41 13 82 */	cror 2, 1, 2
/* 801F0AB0 001EDA10  40 82 00 1C */	bne lbl_801F0ACC
/* 801F0AB4 001EDA14  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801F0AB8 001EDA18  4C 40 13 82 */	cror 2, 0, 2
/* 801F0ABC 001EDA1C  40 82 00 10 */	bne lbl_801F0ACC
/* 801F0AC0 001EDA20  38 60 00 01 */	li r3, 1
/* 801F0AC4 001EDA24  48 00 00 08 */	b lbl_801F0ACC
lbl_801F0AC8:
/* 801F0AC8 001EDA28  38 60 00 00 */	li r3, 0
lbl_801F0ACC:
/* 801F0ACC 001EDA2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F0AD0 001EDA30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F0AD4 001EDA34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F0AD8 001EDA38  7C 08 03 A6 */	mtlr r0
/* 801F0ADC 001EDA3C  38 21 00 30 */	addi r1, r1, 0x30
/* 801F0AE0 001EDA40  4E 80 00 20 */	blr 

.global Inside__17CFlaahgraTentacleFR13CStateManagerf
Inside__17CFlaahgraTentacleFR13CStateManagerf:
/* 801F0AE4 001EDA44  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801F0AE8 001EDA48  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 801F0AEC 001EDA4C  7C 00 00 34 */	cntlzw r0, r0
/* 801F0AF0 001EDA50  54 03 D9 7E */	srwi r3, r0, 5
/* 801F0AF4 001EDA54  4E 80 00 20 */	blr 

.global Death__17CFlaahgraTentacleFRC9CVector3fR13CStateManager
Death__17CFlaahgraTentacleFRC9CVector3fR13CStateManager:
/* 801F0AF8 001EDA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0AFC 001EDA5C  7C 08 02 A6 */	mflr r0
/* 801F0B00 001EDA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0B04 001EDA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F0B08 001EDA68  7C 9F 23 78 */	mr r31, r4
/* 801F0B0C 001EDA6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F0B10 001EDA70  7C 7E 1B 78 */	mr r30, r3
/* 801F0B14 001EDA74  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801F0B18 001EDA78  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801F0B1C 001EDA7C  41 82 00 6C */	beq lbl_801F0B88
/* 801F0B20 001EDA80  3C 80 80 3D */	lis r4, lbl_803D2018@ha
/* 801F0B24 001EDA84  38 61 00 08 */	addi r3, r1, 8
/* 801F0B28 001EDA88  38 84 20 18 */	addi r4, r4, lbl_803D2018@l
/* 801F0B2C 001EDA8C  38 84 00 1B */	addi r4, r4, 0x1b
/* 801F0B30 001EDA90  4B E1 41 89 */	bl string_l__4rstlFPCc
/* 801F0B34 001EDA94  7F C3 F3 78 */	mr r3, r30
/* 801F0B38 001EDA98  4B EB 1D C1 */	bl GetStateMachine__3CAiFv
/* 801F0B3C 001EDA9C  7C 66 1B 78 */	mr r6, r3
/* 801F0B40 001EDAA0  7F E4 FB 78 */	mr r4, r31
/* 801F0B44 001EDAA4  7F C5 F3 78 */	mr r5, r30
/* 801F0B48 001EDAA8  38 7E 03 30 */	addi r3, r30, 0x330
/* 801F0B4C 001EDAAC  38 E1 00 08 */	addi r7, r1, 8
/* 801F0B50 001EDAB0  4B E8 F0 B5 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801F0B54 001EDAB4  38 61 00 08 */	addi r3, r1, 8
/* 801F0B58 001EDAB8  48 14 CF 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801F0B5C 001EDABC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F0B60 001EDAC0  4B F4 95 6D */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801F0B64 001EDAC4  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F0B68 001EDAC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0B6C 001EDACC  40 81 00 0C */	ble lbl_801F0B78
/* 801F0B70 001EDAD0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801F0B74 001EDAD4  4B F4 95 E1 */	bl UnFreeze__15CBodyControllerFv
lbl_801F0B78:
/* 801F0B78 001EDAD8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801F0B7C 001EDADC  38 60 00 00 */	li r3, 0
/* 801F0B80 001EDAE0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801F0B84 001EDAE4  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_801F0B88:
/* 801F0B88 001EDAE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F0B8C 001EDAEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F0B90 001EDAF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F0B94 001EDAF4  7C 08 03 A6 */	mtlr r0
/* 801F0B98 001EDAF8  38 21 00 20 */	addi r1, r1, 0x20
/* 801F0B9C 001EDAFC  4E 80 00 20 */	blr 

.global GetAimPosition__17CFlaahgraTentacleCFRC13CStateManagerf
GetAimPosition__17CFlaahgraTentacleCFRC13CStateManagerf:
/* 801F0BA0 001EDB00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F0BA4 001EDB04  7C 08 02 A6 */	mflr r0
/* 801F0BA8 001EDB08  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F0BAC 001EDB0C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801F0BB0 001EDB10  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801F0BB4 001EDB14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F0BB8 001EDB18  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F0BBC 001EDB1C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801F0BC0 001EDB20  7C 9E 23 78 */	mr r30, r4
/* 801F0BC4 001EDB24  FF E0 08 90 */	fmr f31, f1
/* 801F0BC8 001EDB28  A0 04 05 7C */	lhz r0, 0x57c(r4)
/* 801F0BCC 001EDB2C  7C BF 2B 78 */	mr r31, r5
/* 801F0BD0 001EDB30  7C 7D 1B 78 */	mr r29, r3
/* 801F0BD4 001EDB34  38 81 00 08 */	addi r4, r1, 8
/* 801F0BD8 001EDB38  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0BDC 001EDB3C  7F E3 FB 78 */	mr r3, r31
/* 801F0BE0 001EDB40  4B E5 B9 C5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F0BE4 001EDB44  7C 64 1B 78 */	mr r4, r3
/* 801F0BE8 001EDB48  38 61 00 0C */	addi r3, r1, 0xc
/* 801F0BEC 001EDB4C  4B EB E7 61 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801F0BF0 001EDB50  80 63 00 04 */	lwz r3, 4(r3)
/* 801F0BF4 001EDB54  28 03 00 00 */	cmplwi r3, 0
/* 801F0BF8 001EDB58  41 82 00 20 */	beq lbl_801F0C18
/* 801F0BFC 001EDB5C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801F0C00 001EDB60  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801F0C04 001EDB64  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801F0C08 001EDB68  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801F0C0C 001EDB6C  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801F0C10 001EDB70  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801F0C14 001EDB74  48 00 00 18 */	b lbl_801F0C2C
lbl_801F0C18:
/* 801F0C18 001EDB78  FC 20 F8 90 */	fmr f1, f31
/* 801F0C1C 001EDB7C  7F A3 EB 78 */	mr r3, r29
/* 801F0C20 001EDB80  7F C4 F3 78 */	mr r4, r30
/* 801F0C24 001EDB84  7F E5 FB 78 */	mr r5, r31
/* 801F0C28 001EDB88  4B E8 79 C1 */	bl GetAimPosition__10CPatternedCFRC13CStateManagerf
lbl_801F0C2C:
/* 801F0C2C 001EDB8C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801F0C30 001EDB90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F0C34 001EDB94  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801F0C38 001EDB98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F0C3C 001EDB9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F0C40 001EDBA0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801F0C44 001EDBA4  7C 08 03 A6 */	mtlr r0
/* 801F0C48 001EDBA8  38 21 00 40 */	addi r1, r1, 0x40
/* 801F0C4C 001EDBAC  4E 80 00 20 */	blr 

.global AcceptScriptMsg__17CFlaahgraTentacleF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__17CFlaahgraTentacleF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801F0C50 001EDBB0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801F0C54 001EDBB4  7C 08 02 A6 */	mflr r0
/* 801F0C58 001EDBB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801F0C5C 001EDBBC  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 801F0C60 001EDBC0  7C 9D 23 78 */	mr r29, r4
/* 801F0C64 001EDBC4  38 1D FF FD */	addi r0, r29, -3
/* 801F0C68 001EDBC8  7C 7C 1B 78 */	mr r28, r3
/* 801F0C6C 001EDBCC  28 00 00 20 */	cmplwi r0, 0x20
/* 801F0C70 001EDBD0  7C BE 2B 78 */	mr r30, r5
/* 801F0C74 001EDBD4  7C DF 33 78 */	mr r31, r6
/* 801F0C78 001EDBD8  41 81 01 C8 */	bgt lbl_801F0E40
/* 801F0C7C 001EDBDC  3C 80 80 3E */	lis r4, lbl_803E66D4@ha
/* 801F0C80 001EDBE0  54 00 10 3A */	slwi r0, r0, 2
/* 801F0C84 001EDBE4  38 84 66 D4 */	addi r4, r4, lbl_803E66D4@l
/* 801F0C88 001EDBE8  7C 04 00 2E */	lwzx r0, r4, r0
/* 801F0C8C 001EDBEC  7C 09 03 A6 */	mtctr r0
/* 801F0C90 001EDBF0  4E 80 04 20 */	bctr 
.global lbl_801F0C94
lbl_801F0C94:
/* 801F0C94 001EDBF4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801F0C98 001EDBF8  7F E4 FB 78 */	mr r4, r31
/* 801F0C9C 001EDBFC  4B F4 A0 55 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801F0CA0 001EDC00  7F 83 E3 78 */	mr r3, r28
/* 801F0CA4 001EDC04  7F E4 FB 78 */	mr r4, r31
/* 801F0CA8 001EDC08  4B FF F7 51 */	bl SetupCollisionManager__17CFlaahgraTentacleFR13CStateManager
/* 801F0CAC 001EDC0C  48 00 01 94 */	b lbl_801F0E40
.global lbl_801F0CB0
lbl_801F0CB0:
/* 801F0CB0 001EDC10  80 7C 05 6C */	lwz r3, 0x56c(r28)
/* 801F0CB4 001EDC14  7F E4 FB 78 */	mr r4, r31
/* 801F0CB8 001EDC18  4B FB 67 0D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801F0CBC 001EDC1C  A0 1C 05 8C */	lhz r0, 0x58c(r28)
/* 801F0CC0 001EDC20  7F E3 FB 78 */	mr r3, r31
/* 801F0CC4 001EDC24  38 81 00 2C */	addi r4, r1, 0x2c
/* 801F0CC8 001EDC28  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801F0CCC 001EDC2C  4B E5 B8 A9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801F0CD0 001EDC30  7C 64 1B 78 */	mr r4, r3
/* 801F0CD4 001EDC34  38 61 00 38 */	addi r3, r1, 0x38
/* 801F0CD8 001EDC38  4B EB 62 11 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 801F0CDC 001EDC3C  83 63 00 04 */	lwz r27, 4(r3)
/* 801F0CE0 001EDC40  28 1B 00 00 */	cmplwi r27, 0
/* 801F0CE4 001EDC44  41 82 01 5C */	beq lbl_801F0E40
/* 801F0CE8 001EDC48  C0 1C 05 80 */	lfs f0, 0x580(r28)
/* 801F0CEC 001EDC4C  38 7C 05 80 */	addi r3, r28, 0x580
/* 801F0CF0 001EDC50  D0 1B 01 1C */	stfs f0, 0x11c(r27)
/* 801F0CF4 001EDC54  C0 1C 05 84 */	lfs f0, 0x584(r28)
/* 801F0CF8 001EDC58  D0 1B 01 20 */	stfs f0, 0x120(r27)
/* 801F0CFC 001EDC5C  C0 1C 05 88 */	lfs f0, 0x588(r28)
/* 801F0D00 001EDC60  D0 1B 01 24 */	stfs f0, 0x124(r27)
/* 801F0D04 001EDC64  48 12 3B B5 */	bl Magnitude__9CVector3fCFv
/* 801F0D08 001EDC68  D0 3B 01 28 */	stfs f1, 0x128(r27)
/* 801F0D0C 001EDC6C  48 00 01 34 */	b lbl_801F0E40
.global lbl_801F0D10
lbl_801F0D10:
/* 801F0D10 001EDC70  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801F0D14 001EDC74  7F E3 FB 78 */	mr r3, r31
/* 801F0D18 001EDC78  38 81 00 28 */	addi r4, r1, 0x28
/* 801F0D1C 001EDC7C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801F0D20 001EDC80  4B E5 B8 85 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801F0D24 001EDC84  7C 64 1B 78 */	mr r4, r3
/* 801F0D28 001EDC88  38 61 00 30 */	addi r3, r1, 0x30
/* 801F0D2C 001EDC8C  4B EB E6 21 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801F0D30 001EDC90  80 83 00 04 */	lwz r4, 4(r3)
/* 801F0D34 001EDC94  28 04 00 00 */	cmplwi r4, 0
/* 801F0D38 001EDC98  41 82 01 08 */	beq lbl_801F0E40
/* 801F0D3C 001EDC9C  38 61 00 24 */	addi r3, r1, 0x24
/* 801F0D40 001EDCA0  4B FB 7E 4D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801F0D44 001EDCA4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801F0D48 001EDCA8  A0 81 00 24 */	lhz r4, 0x24(r1)
/* 801F0D4C 001EDCAC  A0 03 00 08 */	lhz r0, 8(r3)
/* 801F0D50 001EDCB0  7C 04 00 40 */	cmplw r4, r0
/* 801F0D54 001EDCB4  40 82 00 EC */	bne lbl_801F0E40
/* 801F0D58 001EDCB8  C0 3C 04 20 */	lfs f1, 0x420(r28)
/* 801F0D5C 001EDCBC  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F0D60 001EDCC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0D64 001EDCC4  4C 40 13 82 */	cror 2, 0, 2
/* 801F0D68 001EDCC8  40 82 00 D8 */	bne lbl_801F0E40
/* 801F0D6C 001EDCCC  80 AD 92 80 */	lwz r5, lbl_805A7E40@sda21(r13)
/* 801F0D70 001EDCD0  38 60 00 00 */	li r3, 0
/* 801F0D74 001EDCD4  38 80 00 01 */	li r4, 1
/* 801F0D78 001EDCD8  48 19 91 7D */	bl __shl2i
/* 801F0D7C 001EDCDC  38 A0 00 00 */	li r5, 0
/* 801F0D80 001EDCE0  38 00 00 03 */	li r0, 3
/* 801F0D84 001EDCE4  90 81 00 44 */	stw r4, 0x44(r1)
/* 801F0D88 001EDCE8  7F 84 E3 78 */	mr r4, r28
/* 801F0D8C 001EDCEC  90 61 00 40 */	stw r3, 0x40(r1)
/* 801F0D90 001EDCF0  38 61 00 58 */	addi r3, r1, 0x58
/* 801F0D94 001EDCF4  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 801F0D98 001EDCF8  90 A1 00 48 */	stw r5, 0x48(r1)
/* 801F0D9C 001EDCFC  90 01 00 50 */	stw r0, 0x50(r1)
/* 801F0DA0 001EDD00  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801F0DA4 001EDD04  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801F0DA8 001EDD08  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801F0DAC 001EDD0C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801F0DB0 001EDD10  A0 A5 00 08 */	lhz r5, 8(r5)
/* 801F0DB4 001EDD14  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 801F0DB8 001EDD18  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801F0DBC 001EDD1C  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801F0DC0 001EDD20  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801F0DC4 001EDD24  81 9C 00 00 */	lwz r12, 0(r28)
/* 801F0DC8 001EDD28  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801F0DCC 001EDD2C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801F0DD0 001EDD30  7D 89 03 A6 */	mtctr r12
/* 801F0DD4 001EDD34  4E 80 04 21 */	bctrl 
/* 801F0DD8 001EDD38  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801F0DDC 001EDD3C  7F E3 FB 78 */	mr r3, r31
/* 801F0DE0 001EDD40  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801F0DE4 001EDD44  38 A1 00 18 */	addi r5, r1, 0x18
/* 801F0DE8 001EDD48  38 81 00 20 */	addi r4, r1, 0x20
/* 801F0DEC 001EDD4C  38 C1 00 10 */	addi r6, r1, 0x10
/* 801F0DF0 001EDD50  38 E1 00 58 */	addi r7, r1, 0x58
/* 801F0DF4 001EDD54  39 01 00 40 */	addi r8, r1, 0x40
/* 801F0DF8 001EDD58  4B E5 92 A9 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801F0DFC 001EDD5C  C0 1C 04 24 */	lfs f0, 0x424(r28)
/* 801F0E00 001EDD60  D0 1C 04 20 */	stfs f0, 0x420(r28)
/* 801F0E04 001EDD64  48 00 00 3C */	b lbl_801F0E40
.global lbl_801F0E08
lbl_801F0E08:
/* 801F0E08 001EDD68  C0 02 AE C0 */	lfs f0, lbl_805ACBE0@sda21(r2)
/* 801F0E0C 001EDD6C  D0 1C 05 78 */	stfs f0, 0x578(r28)
/* 801F0E10 001EDD70  48 00 00 30 */	b lbl_801F0E40
.global lbl_801F0E14
lbl_801F0E14:
/* 801F0E14 001EDD74  7F E4 FB 78 */	mr r4, r31
/* 801F0E18 001EDD78  4B E8 7B E9 */	bl DeathDelete__10CPatternedFR13CStateManager
/* 801F0E1C 001EDD7C  48 00 00 24 */	b lbl_801F0E40
.global lbl_801F0E20
lbl_801F0E20:
/* 801F0E20 001EDD80  7F E4 FB 78 */	mr r4, r31
/* 801F0E24 001EDD84  4B FF F3 B9 */	bl ExtractTentacle__17CFlaahgraTentacleFR13CStateManager
/* 801F0E28 001EDD88  48 00 00 18 */	b lbl_801F0E40
.global lbl_801F0E2C
lbl_801F0E2C:
/* 801F0E2C 001EDD8C  7F E4 FB 78 */	mr r4, r31
/* 801F0E30 001EDD90  4B FF F3 1D */	bl RetractTentacle__17CFlaahgraTentacleFR13CStateManager
/* 801F0E34 001EDD94  48 00 00 0C */	b lbl_801F0E40
.global lbl_801F0E38
lbl_801F0E38:
/* 801F0E38 001EDD98  7F E4 FB 78 */	mr r4, r31
/* 801F0E3C 001EDD9C  4B FF F2 2D */	bl SaveBombSlotInfo__17CFlaahgraTentacleFR13CStateManager
.global lbl_801F0E40
lbl_801F0E40:
/* 801F0E40 001EDDA0  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801F0E44 001EDDA4  7F 83 E3 78 */	mr r3, r28
/* 801F0E48 001EDDA8  7F A4 EB 78 */	mr r4, r29
/* 801F0E4C 001EDDAC  7F E6 FB 78 */	mr r6, r31
/* 801F0E50 001EDDB0  B0 01 00 08 */	sth r0, 8(r1)
/* 801F0E54 001EDDB4  38 A1 00 08 */	addi r5, r1, 8
/* 801F0E58 001EDDB8  4B E8 BD 21 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801F0E5C 001EDDBC  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 801F0E60 001EDDC0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801F0E64 001EDDC4  7C 08 03 A6 */	mtlr r0
/* 801F0E68 001EDDC8  38 21 00 90 */	addi r1, r1, 0x90
/* 801F0E6C 001EDDCC  4E 80 00 20 */	blr 

.global Accept__17CFlaahgraTentacleFR8IVisitor
Accept__17CFlaahgraTentacleFR8IVisitor:
/* 801F0E70 001EDDD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0E74 001EDDD4  7C 08 02 A6 */	mflr r0
/* 801F0E78 001EDDD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0E7C 001EDDDC  7C 60 1B 78 */	mr r0, r3
/* 801F0E80 001EDDE0  7C 83 23 78 */	mr r3, r4
/* 801F0E84 001EDDE4  81 84 00 00 */	lwz r12, 0(r4)
/* 801F0E88 001EDDE8  7C 04 03 78 */	mr r4, r0
/* 801F0E8C 001EDDEC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801F0E90 001EDDF0  7D 89 03 A6 */	mtctr r12
/* 801F0E94 001EDDF4  4E 80 04 21 */	bctrl 
/* 801F0E98 001EDDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0E9C 001EDDFC  7C 08 03 A6 */	mtlr r0
/* 801F0EA0 001EDE00  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0EA4 001EDE04  4E 80 00 20 */	blr 

.global Think__17CFlaahgraTentacleFfR13CStateManager
Think__17CFlaahgraTentacleFfR13CStateManager:
/* 801F0EA8 001EDE08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F0EAC 001EDE0C  7C 08 02 A6 */	mflr r0
/* 801F0EB0 001EDE10  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F0EB4 001EDE14  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801F0EB8 001EDE18  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801F0EBC 001EDE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F0EC0 001EDE20  93 C1 00 08 */	stw r30, 8(r1)
/* 801F0EC4 001EDE24  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801F0EC8 001EDE28  FF E0 08 90 */	fmr f31, f1
/* 801F0ECC 001EDE2C  7C 7E 1B 78 */	mr r30, r3
/* 801F0ED0 001EDE30  7C 9F 23 78 */	mr r31, r4
/* 801F0ED4 001EDE34  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801F0ED8 001EDE38  41 82 00 4C */	beq lbl_801F0F24
/* 801F0EDC 001EDE3C  4B E8 8C 3D */	bl Think__10CPatternedFfR13CStateManager
/* 801F0EE0 001EDE40  FC 20 F8 90 */	fmr f1, f31
/* 801F0EE4 001EDE44  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 801F0EE8 001EDE48  7F E4 FB 78 */	mr r4, r31
/* 801F0EEC 001EDE4C  38 A0 00 00 */	li r5, 0
/* 801F0EF0 001EDE50  4B FB 65 61 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801F0EF4 001EDE54  C0 3E 05 74 */	lfs f1, 0x574(r30)
/* 801F0EF8 001EDE58  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F0EFC 001EDE5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0F00 001EDE60  40 81 00 0C */	ble lbl_801F0F0C
/* 801F0F04 001EDE64  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801F0F08 001EDE68  D0 1E 05 74 */	stfs f0, 0x574(r30)
lbl_801F0F0C:
/* 801F0F0C 001EDE6C  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 801F0F10 001EDE70  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F0F14 001EDE74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F0F18 001EDE78  40 81 00 0C */	ble lbl_801F0F24
/* 801F0F1C 001EDE7C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801F0F20 001EDE80  D0 1E 05 78 */	stfs f0, 0x578(r30)
lbl_801F0F24:
/* 801F0F24 001EDE84  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801F0F28 001EDE88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F0F2C 001EDE8C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801F0F30 001EDE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F0F34 001EDE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F0F38 001EDE98  7C 08 03 A6 */	mtlr r0
/* 801F0F3C 001EDE9C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F0F40 001EDEA0  4E 80 00 20 */	blr 

.global __dt__17CFlaahgraTentacleFv
__dt__17CFlaahgraTentacleFv:
/* 801F0F44 001EDEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F0F48 001EDEA8  7C 08 02 A6 */	mflr r0
/* 801F0F4C 001EDEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F0F50 001EDEB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F0F54 001EDEB4  7C 9F 23 78 */	mr r31, r4
/* 801F0F58 001EDEB8  93 C1 00 08 */	stw r30, 8(r1)
/* 801F0F5C 001EDEBC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801F0F60 001EDEC0  41 82 00 40 */	beq lbl_801F0FA0
/* 801F0F64 001EDEC4  3C 60 80 3E */	lis r3, lbl_803E6408@ha
/* 801F0F68 001EDEC8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 801F0F6C 001EDECC  38 03 64 08 */	addi r0, r3, lbl_803E6408@l
/* 801F0F70 001EDED0  90 1E 00 00 */	stw r0, 0(r30)
/* 801F0F74 001EDED4  41 82 00 10 */	beq lbl_801F0F84
/* 801F0F78 001EDED8  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 801F0F7C 001EDEDC  38 80 00 01 */	li r4, 1
/* 801F0F80 001EDEE0  4B FB 69 5D */	bl sub_801a78dc
lbl_801F0F84:
/* 801F0F84 001EDEE4  7F C3 F3 78 */	mr r3, r30
/* 801F0F88 001EDEE8  38 80 00 00 */	li r4, 0
/* 801F0F8C 001EDEEC  4B E8 65 E5 */	bl __dt__10CPatternedFv
/* 801F0F90 001EDEF0  7F E0 07 35 */	extsh. r0, r31
/* 801F0F94 001EDEF4  40 81 00 0C */	ble lbl_801F0FA0
/* 801F0F98 001EDEF8  7F C3 F3 78 */	mr r3, r30
/* 801F0F9C 001EDEFC  48 12 49 95 */	bl Free__7CMemoryFPCv
lbl_801F0FA0:
/* 801F0FA0 001EDF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0FA4 001EDF04  7F C3 F3 78 */	mr r3, r30
/* 801F0FA8 001EDF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F0FAC 001EDF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F0FB0 001EDF10  7C 08 03 A6 */	mtlr r0
/* 801F0FB4 001EDF14  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0FB8 001EDF18  4E 80 00 20 */	blr 

.global "__ct__17CFlaahgraTentacleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParameters"
"__ct__17CFlaahgraTentacleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParameters":
/* 801F0FBC 001EDF1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F0FC0 001EDF20  7C 08 02 A6 */	mflr r0
/* 801F0FC4 001EDF24  39 60 00 01 */	li r11, 1
/* 801F0FC8 001EDF28  7D 0C 43 78 */	mr r12, r8
/* 801F0FCC 001EDF2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F0FD0 001EDF30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F0FD4 001EDF34  7C 7F 1B 78 */	mr r31, r3
/* 801F0FD8 001EDF38  A0 04 00 00 */	lhz r0, 0(r4)
/* 801F0FDC 001EDF3C  7C C4 33 78 */	mr r4, r6
/* 801F0FE0 001EDF40  7C A6 2B 78 */	mr r6, r5
/* 801F0FE4 001EDF44  38 A1 00 20 */	addi r5, r1, 0x20
/* 801F0FE8 001EDF48  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801F0FEC 001EDF4C  7C 88 23 78 */	mr r8, r4
/* 801F0FF0 001EDF50  38 00 00 02 */	li r0, 2
/* 801F0FF4 001EDF54  38 80 00 0C */	li r4, 0xc
/* 801F0FF8 001EDF58  91 21 00 08 */	stw r9, 8(r1)
/* 801F0FFC 001EDF5C  7C E9 3B 78 */	mr r9, r7
/* 801F1000 001EDF60  38 E0 00 00 */	li r7, 0
/* 801F1004 001EDF64  91 61 00 0C */	stw r11, 0xc(r1)
/* 801F1008 001EDF68  91 61 00 10 */	stw r11, 0x10(r1)
/* 801F100C 001EDF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1010 001EDF70  91 41 00 18 */	stw r10, 0x18(r1)
/* 801F1014 001EDF74  7D 8A 63 78 */	mr r10, r12
/* 801F1018 001EDF78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801F101C 001EDF7C  4B E8 C4 35 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801F1020 001EDF80  3C 80 80 3E */	lis r4, lbl_803E6408@ha
/* 801F1024 001EDF84  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801F1028 001EDF88  38 84 64 08 */	addi r4, r4, lbl_803E6408@l
/* 801F102C 001EDF8C  38 00 FF FF */	li r0, -1
/* 801F1030 001EDF90  90 9F 00 00 */	stw r4, 0(r31)
/* 801F1034 001EDF94  38 C0 00 00 */	li r6, 0
/* 801F1038 001EDF98  C0 02 AE B4 */	lfs f0, lbl_805ACBD4@sda21(r2)
/* 801F103C 001EDF9C  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 801F1040 001EDFA0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801F1044 001EDFA4  38 7F 04 60 */	addi r3, r31, 0x460
/* 801F1048 001EDFA8  38 80 00 00 */	li r4, 0
/* 801F104C 001EDFAC  90 DF 05 6C */	stw r6, 0x56c(r31)
/* 801F1050 001EDFB0  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 801F1054 001EDFB4  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 801F1058 001EDFB8  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 801F105C 001EDFBC  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 801F1060 001EDFC0  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 801F1064 001EDFC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 801F1068 001EDFC8  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 801F106C 001EDFCC  C0 05 00 04 */	lfs f0, 4(r5)
/* 801F1070 001EDFD0  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 801F1074 001EDFD4  C0 05 00 08 */	lfs f0, 8(r5)
/* 801F1078 001EDFD8  D0 1F 05 88 */	stfs f0, 0x588(r31)
/* 801F107C 001EDFDC  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 801F1080 001EDFE0  B0 1F 05 8C */	sth r0, 0x58c(r31)
/* 801F1084 001EDFE4  88 1F 05 8E */	lbz r0, 0x58e(r31)
/* 801F1088 001EDFE8  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 801F108C 001EDFEC  98 1F 05 8E */	stb r0, 0x58e(r31)
/* 801F1090 001EDFF0  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 801F1094 001EDFF4  88 05 02 98 */	lbz r0, 0x298(r5)
/* 801F1098 001EDFF8  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801F109C 001EDFFC  98 05 02 98 */	stb r0, 0x298(r5)
/* 801F10A0 001EE000  48 04 2C C5 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 801F10A4 001EE004  7F E3 FB 78 */	mr r3, r31
/* 801F10A8 001EE008  38 80 00 00 */	li r4, 0
/* 801F10AC 001EE00C  4B E6 1C C1 */	bl CreateShadow__6CActorFb
/* 801F10B0 001EE010  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F10B4 001EE014  7F E3 FB 78 */	mr r3, r31
/* 801F10B8 001EE018  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F10BC 001EE01C  7C 08 03 A6 */	mtlr r0
/* 801F10C0 001EE020  38 21 00 30 */	addi r1, r1, 0x30
/* 801F10C4 001EE024  4E 80 00 20 */	blr

.include "macros.inc"

.section .data
.balign 8

.global lbl_803E0338
lbl_803E0338:
	# ROM: 0x3DD338
	.4byte 0x803CF2FF
	.4byte 0x803CF305
	.4byte 0x803CF30B

.global lbl_803E0344
lbl_803E0344:
	# ROM: 0x3DD344
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryLoopReaction__10CPatternedFR13CStateManageri

.global lbl_803E0350
lbl_803E0350:
	# ROM: 0x3DD350
	.4byte 0
	.4byte 0
	.4byte __dt__12CBloodFlowerFv
	.4byte Accept__12CBloodFlowerFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CBloodFlowerFfR13CStateManager
	.4byte AcceptScriptMsg__12CBloodFlowerF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CBloodFlowerCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__12CBloodFlowerFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__12CBloodFlowerCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__12CBloodFlowerFR13CStateManagerRC13CInt32POINode14EUserEventType
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
	.4byte Active__12CBloodFlowerFR13CStateManager9EStateMsgf
	.4byte InActive__12CBloodFlowerFR13CStateManager9EStateMsgf
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
	.4byte BulbAttack__12CBloodFlowerFR13CStateManager9EStateMsgf
	.4byte PodAttack__12CBloodFlowerFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__12CBloodFlowerFR13CStateManager9EStateMsgf
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
	.4byte ShouldAttack__12CBloodFlowerFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__12CBloodFlowerFR13CStateManagerf
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
	.4byte ProjectileInfo__12CBloodFlowerFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E061C
lbl_803E061C:
	# ROM: 0x3DD61C
	.4byte 0
	.4byte 0
	.4byte __dt__17CBCAdditiveAimCmd

.section .sdata
.balign 8

.global lbl_805A7628
lbl_805A7628:
	# ROM: 0x3F4FC8
	.4byte 0x00000013
	.4byte 0

.section .sbss
.balign 8

# CBloodFlower
.global lbl_805A8F40
lbl_805A8F40:
	.skip 0x4
.global lbl_805A8F44
lbl_805A8F44:
	.skip 0x4

.section .sdata2, "a"
.balign 8

.global lbl_805AB398
lbl_805AB398:
	# ROM: 0x3F7C38
	.4byte lbl_803CF2F0

.global lbl_805AB39C
lbl_805AB39C:
	# ROM: 0x3F7C3C
	.float 0.0

.global lbl_805AB3A0
lbl_805AB3A0:
	# ROM: 0x3F7C40
	.float 2.0

.global lbl_805AB3A4
lbl_805AB3A4:
	# ROM: 0x3F7C44
	.float 4.905

.global lbl_805AB3A8
lbl_805AB3A8:
	# ROM: 0x3F7C48
	.float 2.4525

.global lbl_805AB3AC
lbl_805AB3AC:
	# ROM: 0x3F7C4C
	.float 1.0

.global lbl_805AB3B0
lbl_805AB3B0:
	# ROM: 0x3F7C50
	.float -4.905

.global lbl_805AB3B4
lbl_805AB3B4:
	# ROM: 0x3F7C54
	.float 0.5

.global lbl_805AB3B8
lbl_805AB3B8:
	# ROM: 0x3F7C58
	.float 0.996
	.4byte 0

.section .text, "ax"

.global __dt__12CBloodFlowerFv
__dt__12CBloodFlowerFv:
/* 80118BE0 00115B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80118BE4 00115B44  7C 08 02 A6 */	mflr r0
/* 80118BE8 00115B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80118BEC 00115B4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80118BF0 00115B50  7C 9F 23 78 */	mr r31, r4
/* 80118BF4 00115B54  93 C1 00 08 */	stw r30, 8(r1)
/* 80118BF8 00115B58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80118BFC 00115B5C  41 82 00 E4 */	beq lbl_80118CE0
/* 80118C00 00115B60  3C 60 80 3E */	lis r3, lbl_803E0350@ha
/* 80118C04 00115B64  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80118C08 00115B68  38 03 03 50 */	addi r0, r3, lbl_803E0350@l
/* 80118C0C 00115B6C  90 1E 00 00 */	stw r0, 0(r30)
/* 80118C10 00115B70  41 82 00 30 */	beq lbl_80118C40
/* 80118C14 00115B74  88 1E 05 D0 */	lbz r0, 0x5d0(r30)
/* 80118C18 00115B78  28 00 00 00 */	cmplwi r0, 0
/* 80118C1C 00115B7C  41 82 00 1C */	beq lbl_80118C38
/* 80118C20 00115B80  34 7E 05 C4 */	addic. r3, r30, 0x5c4
/* 80118C24 00115B84  41 82 00 14 */	beq lbl_80118C38
/* 80118C28 00115B88  28 03 00 00 */	cmplwi r3, 0
/* 80118C2C 00115B8C  41 82 00 0C */	beq lbl_80118C38
/* 80118C30 00115B90  38 80 00 00 */	li r4, 0
/* 80118C34 00115B94  48 22 82 0D */	bl __dt__6CTokenFv
lbl_80118C38:
/* 80118C38 00115B98  38 00 00 00 */	li r0, 0
/* 80118C3C 00115B9C  98 1E 05 D0 */	stb r0, 0x5d0(r30)
lbl_80118C40:
/* 80118C40 00115BA0  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80118C44 00115BA4  41 82 00 20 */	beq lbl_80118C64
/* 80118C48 00115BA8  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80118C4C 00115BAC  41 82 00 18 */	beq lbl_80118C64
/* 80118C50 00115BB0  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80118C54 00115BB4  41 82 00 10 */	beq lbl_80118C64
/* 80118C58 00115BB8  38 7E 05 90 */	addi r3, r30, 0x590
/* 80118C5C 00115BBC  38 80 00 00 */	li r4, 0
/* 80118C60 00115BC0  48 22 81 E1 */	bl __dt__6CTokenFv
lbl_80118C64:
/* 80118C64 00115BC4  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80118C68 00115BC8  41 82 00 18 */	beq lbl_80118C80
/* 80118C6C 00115BCC  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80118C70 00115BD0  41 82 00 10 */	beq lbl_80118C80
/* 80118C74 00115BD4  38 7E 05 78 */	addi r3, r30, 0x578
/* 80118C78 00115BD8  38 80 00 00 */	li r4, 0
/* 80118C7C 00115BDC  48 22 81 C5 */	bl __dt__6CTokenFv
lbl_80118C80:
/* 80118C80 00115BE0  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80118C84 00115BE4  41 82 00 24 */	beq lbl_80118CA8
/* 80118C88 00115BE8  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80118C8C 00115BEC  28 03 00 00 */	cmplwi r3, 0
/* 80118C90 00115BF0  41 82 00 18 */	beq lbl_80118CA8
/* 80118C94 00115BF4  81 83 00 00 */	lwz r12, 0(r3)
/* 80118C98 00115BF8  38 80 00 01 */	li r4, 1
/* 80118C9C 00115BFC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80118CA0 00115C00  7D 89 03 A6 */	mtctr r12
/* 80118CA4 00115C04  4E 80 04 21 */	bctrl
lbl_80118CA8:
/* 80118CA8 00115C08  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80118CAC 00115C0C  41 82 00 18 */	beq lbl_80118CC4
/* 80118CB0 00115C10  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80118CB4 00115C14  41 82 00 10 */	beq lbl_80118CC4
/* 80118CB8 00115C18  38 7E 05 68 */	addi r3, r30, 0x568
/* 80118CBC 00115C1C  38 80 00 00 */	li r4, 0
/* 80118CC0 00115C20  48 22 81 81 */	bl __dt__6CTokenFv
lbl_80118CC4:
/* 80118CC4 00115C24  7F C3 F3 78 */	mr r3, r30
/* 80118CC8 00115C28  38 80 00 00 */	li r4, 0
/* 80118CCC 00115C2C  4B F5 E8 A5 */	bl __dt__10CPatternedFv
/* 80118CD0 00115C30  7F E0 07 35 */	extsh. r0, r31
/* 80118CD4 00115C34  40 81 00 0C */	ble lbl_80118CE0
/* 80118CD8 00115C38  7F C3 F3 78 */	mr r3, r30
/* 80118CDC 00115C3C  48 1F CC 55 */	bl Free__7CMemoryFPCv
lbl_80118CE0:
/* 80118CE0 00115C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80118CE4 00115C44  7F C3 F3 78 */	mr r3, r30
/* 80118CE8 00115C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80118CEC 00115C4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80118CF0 00115C50  7C 08 03 A6 */	mtlr r0
/* 80118CF4 00115C54  38 21 00 10 */	addi r1, r1, 0x10
/* 80118CF8 00115C58  4E 80 00 20 */	blr

.global sub_80118cfc
sub_80118cfc:
/* 80118CFC 00115C5C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80118D00 00115C60  7C 08 02 A6 */	mflr r0
/* 80118D04 00115C64  90 01 01 24 */	stw r0, 0x124(r1)
/* 80118D08 00115C68  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80118D0C 00115C6C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80118D10 00115C70  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80118D14 00115C74  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80118D18 00115C78  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80118D1C 00115C7C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 80118D20 00115C80  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 80118D24 00115C84  F3 81 00 E8 */	psq_st f28, 232(r1), 0, qr0
/* 80118D28 00115C88  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 80118D2C 00115C8C  F3 61 00 D8 */	psq_st f27, 216(r1), 0, qr0
/* 80118D30 00115C90  BF 61 00 BC */	stmw r27, 0xbc(r1)
/* 80118D34 00115C94  88 0D A3 84 */	lbz r0, lbl_805A8F44@sda21(r13)
/* 80118D38 00115C98  FF 80 08 90 */	fmr f28, f1
/* 80118D3C 00115C9C  7C 7E 1B 78 */	mr r30, r3
/* 80118D40 00115CA0  7C 9B 23 78 */	mr r27, r4
/* 80118D44 00115CA4  7C 00 07 75 */	extsb. r0, r0
/* 80118D48 00115CA8  7C BF 2B 78 */	mr r31, r5
/* 80118D4C 00115CAC  7C DC 33 78 */	mr r28, r6
/* 80118D50 00115CB0  40 82 00 14 */	bne lbl_80118D64
/* 80118D54 00115CB4  48 19 83 E9 */	bl GetTickPeriod__17CProjectileWeaponFv
/* 80118D58 00115CB8  38 00 00 01 */	li r0, 1
/* 80118D5C 00115CBC  D0 2D A3 80 */	stfs f1, lbl_805A8F40@sda21(r13)
/* 80118D60 00115CC0  98 0D A3 84 */	stb r0, lbl_805A8F44@sda21(r13)
lbl_80118D64:
/* 80118D64 00115CC4  7F C3 F3 78 */	mr r3, r30
/* 80118D68 00115CC8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80118D6C 00115CCC  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80118D70 00115CD0  7D 89 03 A6 */	mtctr r12
/* 80118D74 00115CD4  4E 80 04 21 */	bctrl
/* 80118D78 00115CD8  7C 7D 1B 78 */	mr r29, r3
/* 80118D7C 00115CDC  80 03 00 08 */	lwz r0, 8(r3)
/* 80118D80 00115CE0  28 00 00 00 */	cmplwi r0, 0
/* 80118D84 00115CE4  41 82 00 0C */	beq lbl_80118D90
/* 80118D88 00115CE8  38 60 00 01 */	li r3, 1
/* 80118D8C 00115CEC  48 00 00 38 */	b lbl_80118DC4
lbl_80118D90:
/* 80118D90 00115CF0  88 1D 00 04 */	lbz r0, 4(r29)
/* 80118D94 00115CF4  28 00 00 00 */	cmplwi r0, 0
/* 80118D98 00115CF8  41 82 00 28 */	beq lbl_80118DC0
/* 80118D9C 00115CFC  80 9D 00 00 */	lwz r4, 0(r29)
/* 80118DA0 00115D00  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80118DA4 00115D04  28 00 00 00 */	cmplwi r0, 0
/* 80118DA8 00115D08  41 82 00 18 */	beq lbl_80118DC0
/* 80118DAC 00115D0C  48 22 80 61 */	bl GetObj__6CTokenFv
/* 80118DB0 00115D10  80 03 00 04 */	lwz r0, 4(r3)
/* 80118DB4 00115D14  38 60 00 01 */	li r3, 1
/* 80118DB8 00115D18  90 1D 00 08 */	stw r0, 8(r29)
/* 80118DBC 00115D1C  48 00 00 08 */	b lbl_80118DC4
lbl_80118DC0:
/* 80118DC0 00115D20  38 60 00 00 */	li r3, 0
lbl_80118DC4:
/* 80118DC4 00115D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118DC8 00115D28  41 82 01 E4 */	beq lbl_80118FAC
/* 80118DCC 00115D2C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80118DD0 00115D30  7F E3 FB 78 */	mr r3, r31
/* 80118DD4 00115D34  7F 86 E3 78 */	mr r6, r28
/* 80118DD8 00115D38  38 81 00 10 */	addi r4, r1, 0x10
/* 80118DDC 00115D3C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80118DE0 00115D40  38 A0 00 09 */	li r5, 9
/* 80118DE4 00115D44  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80118DE8 00115D48  4B F2 C9 49 */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 80118DEC 00115D4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80118DF0 00115D50  41 82 01 BC */	beq lbl_80118FAC
/* 80118DF4 00115D54  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80118DF8 00115D58  7F E5 FB 78 */	mr r5, r31
/* 80118DFC 00115D5C  38 61 00 44 */	addi r3, r1, 0x44
/* 80118E00 00115D60  C0 22 96 7C */	lfs f1, lbl_805AB39C@sda21(r2)
/* 80118E04 00115D64  81 84 00 00 */	lwz r12, 0(r4)
/* 80118E08 00115D68  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80118E0C 00115D6C  7D 89 03 A6 */	mtctr r12
/* 80118E10 00115D70  4E 80 04 21 */	bctrl
/* 80118E14 00115D74  C0 7B 00 2C */	lfs f3, 0x2c(r27)
/* 80118E18 00115D78  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80118E1C 00115D7C  C0 5B 00 1C */	lfs f2, 0x1c(r27)
/* 80118E20 00115D80  EF C3 00 28 */	fsubs f30, f3, f0
/* 80118E24 00115D84  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80118E28 00115D88  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 80118E2C 00115D8C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80118E30 00115D90  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80118E34 00115D94  C3 E1 00 44 */	lfs f31, 0x44(r1)
/* 80118E38 00115D98  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80118E3C 00115D9C  C3 61 00 48 */	lfs f27, 0x48(r1)
/* 80118E40 00115DA0  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80118E44 00115DA4  40 81 00 0C */	ble lbl_80118E50
/* 80118E48 00115DA8  FC 40 E0 90 */	fmr f2, f28
/* 80118E4C 00115DAC  48 00 00 0C */	b lbl_80118E58
lbl_80118E50:
/* 80118E50 00115DB0  FC 00 F0 50 */	fneg f0, f30
/* 80118E54 00115DB4  EC 40 E0 2A */	fadds f2, f0, f28
lbl_80118E58:
/* 80118E58 00115DB8  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80118E5C 00115DBC  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80118E60 00115DC0  40 81 00 08 */	ble lbl_80118E68
/* 80118E64 00115DC4  EF 9E E0 2A */	fadds f28, f30, f28
lbl_80118E68:
/* 80118E68 00115DC8  C0 22 96 80 */	lfs f1, lbl_805AB3A0@sda21(r2)
/* 80118E6C 00115DCC  C0 02 96 84 */	lfs f0, lbl_805AB3A4@sda21(r2)
/* 80118E70 00115DD0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80118E74 00115DD4  EC 21 00 24 */	fdivs f1, f1, f0
/* 80118E78 00115DD8  48 1F C6 89 */	bl SqrtF__5CMathFf
/* 80118E7C 00115DDC  C0 42 96 80 */	lfs f2, lbl_805AB3A0@sda21(r2)
/* 80118E80 00115DE0  FF A0 08 90 */	fmr f29, f1
/* 80118E84 00115DE4  C0 02 96 84 */	lfs f0, lbl_805AB3A4@sda21(r2)
/* 80118E88 00115DE8  EC 22 07 32 */	fmuls f1, f2, f28
/* 80118E8C 00115DEC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80118E90 00115DF0  48 1F C6 71 */	bl SqrtF__5CMathFf
/* 80118E94 00115DF4  EC FD 08 2A */	fadds f7, f29, f1
/* 80118E98 00115DF8  C0 BB 00 1C */	lfs f5, 0x1c(r27)
/* 80118E9C 00115DFC  FC 40 F0 50 */	fneg f2, f30
/* 80118EA0 00115E00  C0 22 96 8C */	lfs f1, lbl_805AB3AC@sda21(r2)
/* 80118EA4 00115E04  C0 DB 00 0C */	lfs f6, 0xc(r27)
/* 80118EA8 00115E08  EC 1B 28 28 */	fsubs f0, f27, f5
/* 80118EAC 00115E0C  EC 81 38 24 */	fdivs f4, f1, f7
/* 80118EB0 00115E10  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 80118EB4 00115E14  C0 62 96 88 */	lfs f3, lbl_805AB3A8@sda21(r2)
/* 80118EB8 00115E18  38 61 00 50 */	addi r3, r1, 0x50
/* 80118EBC 00115E1C  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 80118EC0 00115E20  38 81 00 2C */	addi r4, r1, 0x2c
/* 80118EC4 00115E24  EC 42 38 24 */	fdivs f2, f2, f7
/* 80118EC8 00115E28  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80118ECC 00115E2C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80118ED0 00115E30  EC 3F 30 28 */	fsubs f1, f31, f6
/* 80118ED4 00115E34  EF 63 11 FA */	fmadds f27, f3, f7, f2
/* 80118ED8 00115E38  EF A4 00 32 */	fmuls f29, f4, f0
/* 80118EDC 00115E3C  EF C4 00 72 */	fmuls f30, f4, f1
/* 80118EE0 00115E40  48 1F A2 61 */	bl Translate__12CTransform4fFRC9CVector3f
/* 80118EE4 00115E44  38 61 00 80 */	addi r3, r1, 0x80
/* 80118EE8 00115E48  38 81 00 50 */	addi r4, r1, 0x50
/* 80118EEC 00115E4C  48 1F 9C 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80118EF0 00115E50  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80118EF4 00115E54  7F C3 F3 78 */	mr r3, r30
/* 80118EF8 00115E58  B0 01 00 08 */	sth r0, 8(r1)
/* 80118EFC 00115E5C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80118F00 00115E60  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80118F04 00115E64  7D 89 03 A6 */	mtctr r12
/* 80118F08 00115E68  4E 80 04 21 */	bctrl
/* 80118F0C 00115E6C  7C 7D 1B 78 */	mr r29, r3
/* 80118F10 00115E70  7F C3 F3 78 */	mr r3, r30
/* 80118F14 00115E74  81 9E 00 00 */	lwz r12, 0(r30)
/* 80118F18 00115E78  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80118F1C 00115E7C  7D 89 03 A6 */	mtctr r12
/* 80118F20 00115E80  4E 80 04 21 */	bctrl
/* 80118F24 00115E84  7C 65 1B 78 */	mr r5, r3
/* 80118F28 00115E88  7F C3 F3 78 */	mr r3, r30
/* 80118F2C 00115E8C  7F E4 FB 78 */	mr r4, r31
/* 80118F30 00115E90  38 C1 00 80 */	addi r6, r1, 0x80
/* 80118F34 00115E94  38 FD 00 0C */	addi r7, r29, 0xc
/* 80118F38 00115E98  39 01 00 08 */	addi r8, r1, 8
/* 80118F3C 00115E9C  48 00 02 3D */	bl sub_80119178
/* 80118F40 00115EA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80118F44 00115EA4  41 82 00 68 */	beq lbl_80118FAC
/* 80118F48 00115EA8  C0 0D A3 80 */	lfs f0, lbl_805A8F40@sda21(r13)
/* 80118F4C 00115EAC  3B BE 01 70 */	addi r29, r30, 0x170
/* 80118F50 00115EB0  7F A3 EB 78 */	mr r3, r29
/* 80118F54 00115EB4  38 81 00 20 */	addi r4, r1, 0x20
/* 80118F58 00115EB8  EC 40 07 B2 */	fmuls f2, f0, f30
/* 80118F5C 00115EBC  EC 20 07 72 */	fmuls f1, f0, f29
/* 80118F60 00115EC0  EC 00 06 F2 */	fmuls f0, f0, f27
/* 80118F64 00115EC4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80118F68 00115EC8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80118F6C 00115ECC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80118F70 00115ED0  48 19 61 CD */	bl SetVelocity__17CProjectileWeaponFRC9CVector3f
/* 80118F74 00115ED4  C0 4D A3 80 */	lfs f2, lbl_805A8F40@sda21(r13)
/* 80118F78 00115ED8  7F A3 EB 78 */	mr r3, r29
/* 80118F7C 00115EDC  C0 22 96 7C */	lfs f1, lbl_805AB39C@sda21(r2)
/* 80118F80 00115EE0  38 81 00 14 */	addi r4, r1, 0x14
/* 80118F84 00115EE4  C0 02 96 90 */	lfs f0, lbl_805AB3B0@sda21(r2)
/* 80118F88 00115EE8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80118F8C 00115EEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80118F90 00115EF0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80118F94 00115EF4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80118F98 00115EF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80118F9C 00115EFC  48 19 61 7D */	bl SetGravity__17CProjectileWeaponFRC9CVector3f
/* 80118FA0 00115F00  7F E3 FB 78 */	mr r3, r31
/* 80118FA4 00115F04  7F C4 F3 78 */	mr r4, r30
/* 80118FA8 00115F08  4B F3 3B 6D */	bl AddObject__13CStateManagerFR7CEntity
lbl_80118FAC:
/* 80118FAC 00115F0C  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80118FB0 00115F10  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80118FB4 00115F14  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80118FB8 00115F18  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80118FBC 00115F1C  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 80118FC0 00115F20  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 80118FC4 00115F24  E3 81 00 E8 */	psq_l f28, 232(r1), 0, qr0
/* 80118FC8 00115F28  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 80118FCC 00115F2C  E3 61 00 D8 */	psq_l f27, 216(r1), 0, qr0
/* 80118FD0 00115F30  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 80118FD4 00115F34  BB 61 00 BC */	lmw r27, 0xbc(r1)
/* 80118FD8 00115F38  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80118FDC 00115F3C  7C 08 03 A6 */	mtlr r0
/* 80118FE0 00115F40  38 21 01 20 */	addi r1, r1, 0x120
/* 80118FE4 00115F44  4E 80 00 20 */	blr

.global Touch__12CBloodFlowerFR6CActorR13CStateManager
Touch__12CBloodFlowerFR6CActorR13CStateManager:
/* 80118FE8 00115F48  4E 80 00 20 */	blr

.global sub_80118fec
sub_80118fec:
/* 80118FEC 00115F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80118FF0 00115F50  7C 08 02 A6 */	mflr r0
/* 80118FF4 00115F54  3C C0 80 3E */	lis r6, lbl_803E0338@ha
/* 80118FF8 00115F58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80118FFC 00115F5C  54 80 10 3A */	slwi r0, r4, 2
/* 80119000 00115F60  38 86 03 38 */	addi r4, r6, lbl_803E0338@l
/* 80119004 00115F64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80119008 00115F68  7C BF 2B 78 */	mr r31, r5
/* 8011900C 00115F6C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80119010 00115F70  7C 7E 1B 78 */	mr r30, r3
/* 80119014 00115F74  38 61 00 08 */	addi r3, r1, 8
/* 80119018 00115F78  7C 84 00 2E */	lwzx r4, r4, r0
/* 8011901C 00115F7C  4B EE BC 9D */	bl string_l__4rstlFPCc
/* 80119020 00115F80  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80119024 00115F84  7F E6 FB 78 */	mr r6, r31
/* 80119028 00115F88  38 81 00 08 */	addi r4, r1, 8
/* 8011902C 00115F8C  38 A0 00 00 */	li r5, 0
/* 80119030 00115F90  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80119034 00115F94  4B F1 1D 8D */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 80119038 00115F98  38 61 00 08 */	addi r3, r1, 8
/* 8011903C 00115F9C  48 22 4A A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80119040 00115FA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80119044 00115FA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80119048 00115FA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8011904C 00115FAC  7C 08 03 A6 */	mtlr r0
/* 80119050 00115FB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80119054 00115FB4  4E 80 00 20 */	blr

.global sub_80119058
sub_80119058:
/* 80119058 00115FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8011905C 00115FBC  7C 08 02 A6 */	mflr r0
/* 80119060 00115FC0  3C C0 80 3E */	lis r6, lbl_803E0338@ha
/* 80119064 00115FC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119068 00115FC8  54 80 10 3A */	slwi r0, r4, 2
/* 8011906C 00115FCC  38 86 03 38 */	addi r4, r6, lbl_803E0338@l
/* 80119070 00115FD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80119074 00115FD4  7C BF 2B 78 */	mr r31, r5
/* 80119078 00115FD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8011907C 00115FDC  7C 7E 1B 78 */	mr r30, r3
/* 80119080 00115FE0  38 61 00 08 */	addi r3, r1, 8
/* 80119084 00115FE4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80119088 00115FE8  4B EE BC 31 */	bl string_l__4rstlFPCc
/* 8011908C 00115FEC  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80119090 00115FF0  7F E6 FB 78 */	mr r6, r31
/* 80119094 00115FF4  38 81 00 08 */	addi r4, r1, 8
/* 80119098 00115FF8  38 A0 00 01 */	li r5, 1
/* 8011909C 00115FFC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801190A0 00116000  4B F1 1D 21 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 801190A4 00116004  38 61 00 08 */	addi r3, r1, 8
/* 801190A8 00116008  48 22 4A 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801190AC 0011600C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801190B0 00116010  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801190B4 00116014  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801190B8 00116018  7C 08 03 A6 */	mtlr r0
/* 801190BC 0011601C  38 21 00 20 */	addi r1, r1, 0x20
/* 801190C0 00116020  4E 80 00 20 */	blr

.global sub_801190c4
sub_801190c4:
/* 801190C4 00116024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801190C8 00116028  7C 08 02 A6 */	mflr r0
/* 801190CC 0011602C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801190D0 00116030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801190D4 00116034  7C 9F 23 78 */	mr r31, r4
/* 801190D8 00116038  93 C1 00 08 */	stw r30, 8(r1)
/* 801190DC 0011603C  7C 7E 1B 78 */	mr r30, r3
/* 801190E0 00116040  80 03 05 D8 */	lwz r0, 0x5d8(r3)
/* 801190E4 00116044  2C 00 00 01 */	cmpwi r0, 1
/* 801190E8 00116048  41 82 00 30 */	beq lbl_80119118
/* 801190EC 0011604C  40 80 00 10 */	bge lbl_801190FC
/* 801190F0 00116050  2C 00 00 00 */	cmpwi r0, 0
/* 801190F4 00116054  40 80 00 14 */	bge lbl_80119108
/* 801190F8 00116058  48 00 00 5C */	b lbl_80119154
lbl_801190FC:
/* 801190FC 0011605C  2C 00 00 03 */	cmpwi r0, 3
/* 80119100 00116060  40 80 00 54 */	bge lbl_80119154
/* 80119104 00116064  48 00 00 34 */	b lbl_80119138
lbl_80119108:
/* 80119108 00116068  7F E5 FB 78 */	mr r5, r31
/* 8011910C 0011606C  38 80 00 00 */	li r4, 0
/* 80119110 00116070  4B FF FF 49 */	bl sub_80119058
/* 80119114 00116074  48 00 00 40 */	b lbl_80119154
lbl_80119118:
/* 80119118 00116078  7F E5 FB 78 */	mr r5, r31
/* 8011911C 0011607C  38 80 00 00 */	li r4, 0
/* 80119120 00116080  4B FF FE CD */	bl sub_80118fec
/* 80119124 00116084  7F C3 F3 78 */	mr r3, r30
/* 80119128 00116088  7F E5 FB 78 */	mr r5, r31
/* 8011912C 0011608C  38 80 00 01 */	li r4, 1
/* 80119130 00116090  4B FF FF 29 */	bl sub_80119058
/* 80119134 00116094  48 00 00 20 */	b lbl_80119154
lbl_80119138:
/* 80119138 00116098  7F E5 FB 78 */	mr r5, r31
/* 8011913C 0011609C  38 80 00 01 */	li r4, 1
/* 80119140 001160A0  4B FF FE AD */	bl sub_80118fec
/* 80119144 001160A4  7F C3 F3 78 */	mr r3, r30
/* 80119148 001160A8  7F E5 FB 78 */	mr r5, r31
/* 8011914C 001160AC  38 80 00 02 */	li r4, 2
/* 80119150 001160B0  4B FF FF 09 */	bl sub_80119058
lbl_80119154:
/* 80119154 001160B4  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 80119158 001160B8  38 03 00 01 */	addi r0, r3, 1
/* 8011915C 001160BC  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80119160 001160C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119164 001160C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80119168 001160C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011916C 001160CC  7C 08 03 A6 */	mtlr r0
/* 80119170 001160D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80119174 001160D4  4E 80 00 20 */	blr

.global sub_80119178
sub_80119178:
/* 80119178 001160D8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8011917C 001160DC  7C 08 02 A6 */	mflr r0
/* 80119180 001160E0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80119184 001160E4  BE E1 00 5C */	stmw r23, 0x5c(r1)
/* 80119188 001160E8  7C 7B 1B 78 */	mr r27, r3
/* 8011918C 001160EC  7C 9C 23 78 */	mr r28, r4
/* 80119190 001160F0  7C BD 2B 78 */	mr r29, r5
/* 80119194 001160F4  7C DE 33 78 */	mr r30, r6
/* 80119198 001160F8  7C FF 3B 78 */	mr r31, r7
/* 8011919C 001160FC  7D 18 43 78 */	mr r24, r8
/* 801191A0 00116100  80 03 05 80 */	lwz r0, 0x580(r3)
/* 801191A4 00116104  28 00 00 00 */	cmplwi r0, 0
/* 801191A8 00116108  41 82 00 0C */	beq lbl_801191B4
/* 801191AC 0011610C  38 60 00 01 */	li r3, 1
/* 801191B0 00116110  48 00 00 3C */	b lbl_801191EC
lbl_801191B4:
/* 801191B4 00116114  88 1B 05 7C */	lbz r0, 0x57c(r27)
/* 801191B8 00116118  28 00 00 00 */	cmplwi r0, 0
/* 801191BC 0011611C  41 82 00 2C */	beq lbl_801191E8
/* 801191C0 00116120  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 801191C4 00116124  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801191C8 00116128  28 00 00 00 */	cmplwi r0, 0
/* 801191CC 0011612C  41 82 00 1C */	beq lbl_801191E8
/* 801191D0 00116130  38 7B 05 78 */	addi r3, r27, 0x578
/* 801191D4 00116134  48 22 7C 39 */	bl GetObj__6CTokenFv
/* 801191D8 00116138  80 03 00 04 */	lwz r0, 4(r3)
/* 801191DC 0011613C  38 60 00 01 */	li r3, 1
/* 801191E0 00116140  90 1B 05 80 */	stw r0, 0x580(r27)
/* 801191E4 00116144  48 00 00 08 */	b lbl_801191EC
lbl_801191E8:
/* 801191E8 00116148  38 60 00 00 */	li r3, 0
lbl_801191EC:
/* 801191EC 0011614C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801191F0 00116150  41 82 01 08 */	beq lbl_801192F8
/* 801191F4 00116154  7F 84 E3 78 */	mr r4, r28
/* 801191F8 00116158  38 61 00 40 */	addi r3, r1, 0x40
/* 801191FC 0011615C  4B F3 3E E1 */	bl AllocateUniqueId__13CStateManagerFv
/* 80119200 00116160  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 80119204 00116164  3C 60 80 3D */	lis r3, lbl_803CF2F0@ha
/* 80119208 00116168  38 83 F2 F0 */	addi r4, r3, lbl_803CF2F0@l
/* 8011920C 0011616C  38 60 04 00 */	li r3, 0x400
/* 80119210 00116170  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80119214 00116174  38 84 00 21 */	addi r4, r4, 0x21
/* 80119218 00116178  38 A0 00 00 */	li r5, 0
/* 8011921C 0011617C  48 1F C6 51 */	bl __nw__FUlPCcPCc
/* 80119220 00116180  7C 77 1B 79 */	or. r23, r3, r3
/* 80119224 00116184  41 82 00 8C */	beq lbl_801192B0
/* 80119228 00116188  A0 18 00 00 */	lhz r0, 0(r24)
/* 8011922C 0011618C  3B 01 00 4C */	addi r24, r1, 0x4c
/* 80119230 00116190  A2 E1 00 44 */	lhz r23, 0x44(r1)
/* 80119234 00116194  3B 21 00 38 */	addi r25, r1, 0x38
/* 80119238 00116198  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8011923C 0011619C  3B 5B 05 78 */	addi r26, r27, 0x578
/* 80119240 001161A0  39 81 00 3C */	addi r12, r1, 0x3c
/* 80119244 001161A4  39 60 00 00 */	li r11, 0
/* 80119248 001161A8  A0 FB 00 08 */	lhz r7, 8(r27)
/* 8011924C 001161AC  38 1B 05 C4 */	addi r0, r27, 0x5c4
/* 80119250 001161B0  7F A4 EB 78 */	mr r4, r29
/* 80119254 001161B4  7F C6 F3 78 */	mr r6, r30
/* 80119258 001161B8  B0 E1 00 38 */	sth r7, 0x38(r1)
/* 8011925C 001161BC  7F E8 FB 78 */	mr r8, r31
/* 80119260 001161C0  39 3B 05 DC */	addi r9, r27, 0x5dc
/* 80119264 001161C4  39 41 00 30 */	addi r10, r1, 0x30
/* 80119268 001161C8  83 BB 00 04 */	lwz r29, 4(r27)
/* 8011926C 001161CC  38 A0 00 09 */	li r5, 9
/* 80119270 001161D0  B0 E1 00 34 */	sth r7, 0x34(r1)
/* 80119274 001161D4  38 E0 00 21 */	li r7, 0x21
/* 80119278 001161D8  93 A1 00 4C */	stw r29, 0x4c(r1)
/* 8011927C 001161DC  B2 E1 00 30 */	sth r23, 0x30(r1)
/* 80119280 001161E0  93 01 00 08 */	stw r24, 8(r1)
/* 80119284 001161E4  93 21 00 0C */	stw r25, 0xc(r1)
/* 80119288 001161E8  93 41 00 10 */	stw r26, 0x10(r1)
/* 8011928C 001161EC  91 81 00 14 */	stw r12, 0x14(r1)
/* 80119290 001161F0  91 61 00 18 */	stw r11, 0x18(r1)
/* 80119294 001161F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80119298 001161F8  A0 1B 05 D4 */	lhz r0, 0x5d4(r27)
/* 8011929C 001161FC  93 A1 00 48 */	stw r29, 0x48(r1)
/* 801192A0 00116200  90 01 00 20 */	stw r0, 0x20(r1)
/* 801192A4 00116204  91 61 00 24 */	stw r11, 0x24(r1)
/* 801192A8 00116208  48 02 2C 4D */	bl "__ct__21CTargetableProjectileFRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfoRC11CDamageInfo9TUniqueId9TUniqueIdRC28TToken<18CWeaponDescription>9TUniqueIdUi"
/* 801192AC 0011620C  7C 77 1B 78 */	mr r23, r3
lbl_801192B0:
/* 801192B0 00116210  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 801192B4 00116214  A0 1B 00 08 */	lhz r0, 8(r27)
/* 801192B8 00116218  A0 63 03 10 */	lhz r3, 0x310(r3)
/* 801192BC 0011621C  7C 03 00 40 */	cmplw r3, r0
/* 801192C0 00116220  40 82 00 30 */	bne lbl_801192F0
/* 801192C4 00116224  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 801192C8 00116228  38 81 00 2C */	addi r4, r1, 0x2c
/* 801192CC 0011622C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801192D0 00116230  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 801192D4 00116234  4B F0 0A D1 */	bl ResetAimTargetPrediction__7CPlayerF9TUniqueId
/* 801192D8 00116238  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 801192DC 0011623C  7F 85 E3 78 */	mr r5, r28
/* 801192E0 00116240  38 81 00 28 */	addi r4, r1, 0x28
/* 801192E4 00116244  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801192E8 00116248  80 7C 08 4C */	lwz r3, 0x84c(r28)
/* 801192EC 0011624C  48 06 23 01 */	bl SetOrbitTargetId__7CPlayerF9TUniqueIdR13CStateManager
lbl_801192F0:
/* 801192F0 00116250  7E E3 BB 78 */	mr r3, r23
/* 801192F4 00116254  48 00 00 08 */	b lbl_801192FC
lbl_801192F8:
/* 801192F8 00116258  38 60 00 00 */	li r3, 0
lbl_801192FC:
/* 801192FC 0011625C  BA E1 00 5C */	lmw r23, 0x5c(r1)
/* 80119300 00116260  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80119304 00116264  7C 08 03 A6 */	mtlr r0
/* 80119308 00116268  38 21 00 80 */	addi r1, r1, 0x80
/* 8011930C 0011626C  4E 80 00 20 */	blr

.global GetCollisionResponseType__12CBloodFlowerCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__12CBloodFlowerCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 80119310 00116270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119314 00116274  7C 08 02 A6 */	mflr r0
/* 80119318 00116278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011931C 0011627C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119320 00116280  7C DF 33 78 */	mr r31, r6
/* 80119324 00116284  81 83 00 00 */	lwz r12, 0(r3)
/* 80119328 00116288  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8011932C 0011628C  7D 89 03 A6 */	mtctr r12
/* 80119330 00116290  4E 80 04 21 */	bctrl
/* 80119334 00116294  7F E4 FB 78 */	mr r4, r31
/* 80119338 00116298  38 A0 00 00 */	li r5, 0
/* 8011933C 0011629C  4B FE 93 CD */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponMode
/* 80119340 001162A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80119344 001162A4  38 60 00 4E */	li r3, 0x4e
/* 80119348 001162A8  41 82 00 08 */	beq lbl_80119350
/* 8011934C 001162AC  38 60 00 1C */	li r3, 0x1c
lbl_80119350:
/* 80119350 001162B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119354 001162B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119358 001162B8  7C 08 03 A6 */	mtlr r0
/* 8011935C 001162BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80119360 001162C0  4E 80 00 20 */	blr

.global sub_80119364
sub_80119364:
/* 80119364 001162C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119368 001162C8  7C 08 02 A6 */	mflr r0
/* 8011936C 001162CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119370 001162D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119374 001162D4  7C 7F 1B 78 */	mr r31, r3
/* 80119378 001162D8  80 64 09 00 */	lwz r3, 0x900(r4)
/* 8011937C 001162DC  48 1F 91 61 */	bl Float__9CRandom16Fv
/* 80119380 001162E0  FC 20 08 50 */	fneg f1, f1
/* 80119384 001162E4  C0 1F 03 08 */	lfs f0, 0x308(r31)
/* 80119388 001162E8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8011938C 001162EC  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 80119390 001162F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119394 001162F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119398 001162F8  7C 08 03 A6 */	mtlr r0
/* 8011939C 001162FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801193A0 00116300  4E 80 00 20 */	blr

.global Render__12CBloodFlowerCFRC13CStateManager
Render__12CBloodFlowerCFRC13CStateManager:
/* 801193A4 00116304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801193A8 00116308  7C 08 02 A6 */	mflr r0
/* 801193AC 0011630C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801193B0 00116310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801193B4 00116314  7C 7F 1B 78 */	mr r31, r3
/* 801193B8 00116318  4B F5 EC 75 */	bl Render__10CPatternedCFRC13CStateManager
/* 801193BC 0011631C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 801193C0 00116320  81 83 00 00 */	lwz r12, 0(r3)
/* 801193C4 00116324  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801193C8 00116328  7D 89 03 A6 */	mtctr r12
/* 801193CC 0011632C  4E 80 04 21 */	bctrl
/* 801193D0 00116330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801193D4 00116334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801193D8 00116338  7C 08 03 A6 */	mtlr r0
/* 801193DC 0011633C  38 21 00 10 */	addi r1, r1, 0x10
/* 801193E0 00116340  4E 80 00 20 */	blr

.global Think__12CBloodFlowerFfR13CStateManager
Think__12CBloodFlowerFfR13CStateManager:
/* 801193E4 00116344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801193E8 00116348  7C 08 02 A6 */	mflr r0
/* 801193EC 0011634C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801193F0 00116350  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801193F4 00116354  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801193F8 00116358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801193FC 0011635C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80119400 00116360  FF E0 08 90 */	fmr f31, f1
/* 80119404 00116364  7C 7F 1B 78 */	mr r31, r3
/* 80119408 00116368  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8011940C 0011636C  41 82 00 44 */	beq lbl_80119450
/* 80119410 00116370  4B F6 07 09 */	bl Think__10CPatternedFfR13CStateManager
/* 80119414 00116374  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80119418 00116378  FC 20 F8 90 */	fmr f1, f31
/* 8011941C 0011637C  81 83 00 00 */	lwz r12, 0(r3)
/* 80119420 00116380  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80119424 00116384  7D 89 03 A6 */	mtctr r12
/* 80119428 00116388  4E 80 04 21 */	bctrl
/* 8011942C 0011638C  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80119430 00116390  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80119434 00116394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80119438 00116398  40 81 00 0C */	ble lbl_80119444
/* 8011943C 0011639C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80119440 001163A0  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
lbl_80119444:
/* 80119444 001163A4  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 80119448 001163A8  EC 00 F8 2A */	fadds f0, f0, f31
/* 8011944C 001163AC  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
lbl_80119450:
/* 80119450 001163B0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80119454 001163B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80119458 001163B8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8011945C 001163BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119460 001163C0  7C 08 03 A6 */	mtlr r0
/* 80119464 001163C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80119468 001163C8  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CBloodFlowerFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CBloodFlowerFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8011946C 001163CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80119470 001163D0  7C 08 02 A6 */	mflr r0
/* 80119474 001163D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80119478 001163D8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8011947C 001163DC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80119480 001163E0  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 80119484 001163E4  7C DE 33 78 */	mr r30, r6
/* 80119488 001163E8  FF E0 08 90 */	fmr f31, f1
/* 8011948C 001163EC  2C 1E 00 06 */	cmpwi r30, 6
/* 80119490 001163F0  7C 7B 1B 78 */	mr r27, r3
/* 80119494 001163F4  7C 9C 23 78 */	mr r28, r4
/* 80119498 001163F8  7C BD 2B 78 */	mr r29, r5
/* 8011949C 001163FC  3B E0 00 00 */	li r31, 0
/* 801194A0 00116400  41 82 00 14 */	beq lbl_801194B4
/* 801194A4 00116404  40 80 00 A4 */	bge lbl_80119548
/* 801194A8 00116408  2C 1E 00 00 */	cmpwi r30, 0
/* 801194AC 0011640C  41 82 00 30 */	beq lbl_801194DC
/* 801194B0 00116410  48 00 00 98 */	b lbl_80119548
lbl_801194B4:
/* 801194B4 00116414  80 BB 05 D8 */	lwz r5, 0x5d8(r27)
/* 801194B8 00116418  2C 05 00 00 */	cmpwi r5, 0
/* 801194BC 0011641C  40 81 00 8C */	ble lbl_80119548
/* 801194C0 00116420  2C 05 00 03 */	cmpwi r5, 3
/* 801194C4 00116424  38 80 00 02 */	li r4, 2
/* 801194C8 00116428  41 81 00 08 */	bgt lbl_801194D0
/* 801194CC 0011642C  38 85 FF FF */	addi r4, r5, -1
lbl_801194D0:
/* 801194D0 00116430  7F 85 E3 78 */	mr r5, r28
/* 801194D4 00116434  4B FF FB 19 */	bl sub_80118fec
/* 801194D8 00116438  48 00 00 70 */	b lbl_80119548
lbl_801194DC:
/* 801194DC 0011643C  80 1B 05 8C */	lwz r0, 0x58c(r27)
/* 801194E0 00116440  2C 00 00 02 */	cmpwi r0, 2
/* 801194E4 00116444  41 82 00 60 */	beq lbl_80119544
/* 801194E8 00116448  40 80 00 5C */	bge lbl_80119544
/* 801194EC 0011644C  2C 00 00 01 */	cmpwi r0, 1
/* 801194F0 00116450  40 80 00 08 */	bge lbl_801194F8
/* 801194F4 00116454  48 00 00 50 */	b lbl_80119544
lbl_801194F8:
/* 801194F8 00116458  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 801194FC 0011645C  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80119500 00116460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80119504 00116464  4C 40 13 82 */	cror 2, 0, 2
/* 80119508 00116468  40 82 00 3C */	bne lbl_80119544
/* 8011950C 0011646C  7F 64 DB 78 */	mr r4, r27
/* 80119510 00116470  38 61 00 08 */	addi r3, r1, 8
/* 80119514 00116474  38 BD 00 3C */	addi r5, r29, 0x3c
/* 80119518 00116478  4B F5 F4 61 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8011951C 0011647C  C0 3B 06 14 */	lfs f1, 0x614(r27)
/* 80119520 00116480  7F 63 DB 78 */	mr r3, r27
/* 80119524 00116484  7F 85 E3 78 */	mr r5, r28
/* 80119528 00116488  38 81 00 08 */	addi r4, r1, 8
/* 8011952C 0011648C  38 C0 00 05 */	li r6, 5
/* 80119530 00116490  4B FF F7 CD */	bl sub_80118cfc
/* 80119534 00116494  38 00 00 00 */	li r0, 0
/* 80119538 00116498  C0 02 96 94 */	lfs f0, lbl_805AB3B4@sda21(r2)
/* 8011953C 0011649C  90 1B 05 8C */	stw r0, 0x58c(r27)
/* 80119540 001164A0  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
lbl_80119544:
/* 80119544 001164A4  3B E0 00 01 */	li r31, 1
lbl_80119548:
/* 80119548 001164A8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8011954C 001164AC  40 82 00 1C */	bne lbl_80119568
/* 80119550 001164B0  FC 20 F8 90 */	fmr f1, f31
/* 80119554 001164B4  7F 63 DB 78 */	mr r3, r27
/* 80119558 001164B8  7F 84 E3 78 */	mr r4, r28
/* 8011955C 001164BC  7F A5 EB 78 */	mr r5, r29
/* 80119560 001164C0  7F C6 F3 78 */	mr r6, r30
/* 80119564 001164C4  4B F5 F9 4D */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80119568:
/* 80119568 001164C8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8011956C 001164CC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80119570 001164D0  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 80119574 001164D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80119578 001164D8  7C 08 03 A6 */	mtlr r0
/* 8011957C 001164DC  38 21 00 60 */	addi r1, r1, 0x60
/* 80119580 001164E0  4E 80 00 20 */	blr

.global ShouldAttack__12CBloodFlowerFR13CStateManagerf
ShouldAttack__12CBloodFlowerFR13CStateManagerf:
/* 80119584 001164E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80119588 001164E8  7C 08 02 A6 */	mflr r0
/* 8011958C 001164EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80119590 001164F0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80119594 001164F4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80119598 001164F8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8011959C 001164FC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801195A0 00116500  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801195A4 00116504  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801195A8 00116508  81 83 00 00 */	lwz r12, 0(r3)
/* 801195AC 0011650C  7C 7E 1B 78 */	mr r30, r3
/* 801195B0 00116510  7C 9F 23 78 */	mr r31, r4
/* 801195B4 00116514  C0 22 96 7C */	lfs f1, lbl_805AB39C@sda21(r2)
/* 801195B8 00116518  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 801195BC 0011651C  7D 89 03 A6 */	mtctr r12
/* 801195C0 00116520  4E 80 04 21 */	bctrl
/* 801195C4 00116524  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801195C8 00116528  41 82 00 0C */	beq lbl_801195D4
/* 801195CC 0011652C  38 60 00 00 */	li r3, 0
/* 801195D0 00116530  48 00 00 6C */	b lbl_8011963C
lbl_801195D4:
/* 801195D4 00116534  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 801195D8 00116538  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 801195DC 0011653C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801195E0 00116540  40 81 00 58 */	ble lbl_80119638
/* 801195E4 00116544  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801195E8 00116548  C3 E3 00 60 */	lfs f31, 0x60(r3)
/* 801195EC 0011654C  48 16 B7 F5 */	bl GetEyeHeight__7CPlayerCFv
/* 801195F0 00116550  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 801195F4 00116554  EF FF 08 2A */	fadds f31, f31, f1
/* 801195F8 00116558  C0 1E 06 14 */	lfs f0, 0x614(r30)
/* 801195FC 0011655C  7F C3 F3 78 */	mr r3, r30
/* 80119600 00116560  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80119604 00116564  7F E4 FB 78 */	mr r4, r31
/* 80119608 00116568  EC 00 20 2A */	fadds f0, f0, f4
/* 8011960C 0011656C  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80119610 00116570  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80119614 00116574  EF C1 00 2A */	fadds f30, f1, f0
/* 80119618 00116578  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8011961C 0011657C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80119620 00116580  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80119624 00116584  4B FF FD 41 */	bl sub_80119364
/* 80119628 00116588  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8011962C 0011658C  40 80 00 0C */	bge lbl_80119638
/* 80119630 00116590  38 60 00 01 */	li r3, 1
/* 80119634 00116594  48 00 00 08 */	b lbl_8011963C
lbl_80119638:
/* 80119638 00116598  38 60 00 00 */	li r3, 0
lbl_8011963C:
/* 8011963C 0011659C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80119640 001165A0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80119644 001165A4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80119648 001165A8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8011964C 001165AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80119650 001165B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80119654 001165B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80119658 001165B8  7C 08 03 A6 */	mtlr r0
/* 8011965C 001165BC  38 21 00 40 */	addi r1, r1, 0x40
/* 80119660 001165C0  4E 80 00 20 */	blr

.global ShouldTurn__12CBloodFlowerFR13CStateManagerf
ShouldTurn__12CBloodFlowerFR13CStateManagerf:
/* 80119664 001165C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80119668 001165C8  7C 08 02 A6 */	mflr r0
/* 8011966C 001165CC  C0 22 96 7C */	lfs f1, lbl_805AB39C@sda21(r2)
/* 80119670 001165D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80119674 001165D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80119678 001165D8  7C 9F 23 78 */	mr r31, r4
/* 8011967C 001165DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80119680 001165E0  7C 7E 1B 78 */	mr r30, r3
/* 80119684 001165E4  81 83 00 00 */	lwz r12, 0(r3)
/* 80119688 001165E8  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8011968C 001165EC  7D 89 03 A6 */	mtctr r12
/* 80119690 001165F0  4E 80 04 21 */	bctrl
/* 80119694 001165F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80119698 001165F8  41 82 00 0C */	beq lbl_801196A4
/* 8011969C 001165FC  38 60 00 00 */	li r3, 0
/* 801196A0 00116600  48 00 00 A4 */	b lbl_80119744
lbl_801196A4:
/* 801196A4 00116604  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 801196A8 00116608  38 61 00 14 */	addi r3, r1, 0x14
/* 801196AC 0011660C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 801196B0 00116610  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801196B4 00116614  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 801196B8 00116618  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801196BC 0011661C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801196C0 00116620  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801196C4 00116624  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801196C8 00116628  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801196CC 0011662C  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801196D0 00116630  C0 84 00 60 */	lfs f4, 0x60(r4)
/* 801196D4 00116634  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801196D8 00116638  EC A2 08 28 */	fsubs f5, f2, f1
/* 801196DC 0011663C  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 801196E0 00116640  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801196E4 00116644  EC 64 18 28 */	fsubs f3, f4, f3
/* 801196E8 00116648  EC 22 08 28 */	fsubs f1, f2, f1
/* 801196EC 0011664C  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 801196F0 00116650  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801196F4 00116654  D0 21 00 08 */	stfs f1, 8(r1)
/* 801196F8 00116658  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801196FC 0011665C  48 1F B1 FD */	bl Normalize__9CVector3fFv
/* 80119700 00116660  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80119704 00116664  38 61 00 08 */	addi r3, r1, 8
/* 80119708 00116668  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8011970C 0011666C  48 1F B1 ED */	bl Normalize__9CVector3fFv
/* 80119710 00116670  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80119714 00116674  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80119718 00116678  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8011971C 0011667C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80119720 00116680  C0 21 00 08 */	lfs f1, 8(r1)
/* 80119724 00116684  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 80119728 00116688  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8011972C 0011668C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80119730 00116690  C0 02 96 98 */	lfs f0, lbl_805AB3B8@sda21(r2)
/* 80119734 00116694  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80119738 00116698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011973C 0011669C  7C 00 00 26 */	mfcr r0
/* 80119740 001166A0  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_80119744:
/* 80119744 001166A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80119748 001166A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011974C 001166AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80119750 001166B0  7C 08 03 A6 */	mtlr r0
/* 80119754 001166B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80119758 001166B8  4E 80 00 20 */	blr

.global Leash__12CBloodFlowerFR13CStateManager9EStateMsgf
Leash__12CBloodFlowerFR13CStateManager9EStateMsgf:
/* 8011975C 001166BC  C0 23 05 C0 */	lfs f1, 0x5c0(r3)
/* 80119760 001166C0  C0 03 03 D0 */	lfs f0, 0x3d0(r3)
/* 80119764 001166C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80119768 001166C8  7C 00 00 26 */	mfcr r0
/* 8011976C 001166CC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80119770 001166D0  4E 80 00 20 */	blr

.global PodAttack__12CBloodFlowerFR13CStateManager9EStateMsgf
PodAttack__12CBloodFlowerFR13CStateManager9EStateMsgf:
/* 80119774 001166D4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80119778 001166D8  7C 08 02 A6 */	mflr r0
/* 8011977C 001166DC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80119780 001166E0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80119784 001166E4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80119788 001166E8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8011978C 001166EC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80119790 001166F0  93 A1 00 94 */	stw r29, 0x94(r1)
/* 80119794 001166F4  FF E0 08 90 */	fmr f31, f1
/* 80119798 001166F8  2C 05 00 01 */	cmpwi r5, 1
/* 8011979C 001166FC  7C 7E 1B 78 */	mr r30, r3
/* 801197A0 00116700  7C 9F 23 78 */	mr r31, r4
/* 801197A4 00116704  41 82 00 F8 */	beq lbl_8011989C
/* 801197A8 00116708  40 80 00 10 */	bge lbl_801197B8
/* 801197AC 0011670C  2C 05 00 00 */	cmpwi r5, 0
/* 801197B0 00116710  40 80 00 14 */	bge lbl_801197C4
/* 801197B4 00116714  48 00 02 54 */	b lbl_80119A08
lbl_801197B8:
/* 801197B8 00116718  2C 05 00 03 */	cmpwi r5, 3
/* 801197BC 0011671C  40 80 02 4C */	bge lbl_80119A08
/* 801197C0 00116720  48 00 01 84 */	b lbl_80119944
lbl_801197C4:
/* 801197C4 00116724  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801197C8 00116728  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801197CC 0011672C  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801197D0 00116730  38 E4 AA 68 */	addi r7, r4, lbl_803DAA68@l
/* 801197D4 00116734  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801197D8 00116738  90 E1 00 6C */	stw r7, 0x6c(r1)
/* 801197DC 0011673C  38 00 00 00 */	li r0, 0
/* 801197E0 00116740  C0 23 00 04 */	lfs f1, 4(r3)
/* 801197E4 00116744  C0 03 00 08 */	lfs f0, 8(r3)
/* 801197E8 00116748  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801197EC 0011674C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801197F0 00116750  38 C0 00 05 */	li r6, 5
/* 801197F4 00116754  90 C1 00 70 */	stw r6, 0x70(r1)
/* 801197F8 00116758  38 80 00 05 */	li r4, 5
/* 801197FC 0011675C  3B A3 00 04 */	addi r29, r3, 4
/* 80119800 00116760  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 80119804 00116764  7F A3 EB 78 */	mr r3, r29
/* 80119808 00116768  90 01 00 74 */	stw r0, 0x74(r1)
/* 8011980C 0011676C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80119810 00116770  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80119814 00116774  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80119818 00116778  98 01 00 84 */	stb r0, 0x84(r1)
/* 8011981C 0011677C  48 01 7C 1D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80119820 00116780  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80119824 00116784  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 80119828 00116788  38 C3 A9 D8 */	addi r6, r3, lbl_803DA9D8@l
/* 8011982C 0011678C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119830 00116790  90 1D 01 10 */	stw r0, 0x110(r29)
/* 80119834 00116794  38 00 00 02 */	li r0, 2
/* 80119838 00116798  81 01 00 74 */	lwz r8, 0x74(r1)
/* 8011983C 0011679C  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 80119840 001167A0  80 E1 00 78 */	lwz r7, 0x78(r1)
/* 80119844 001167A4  38 80 00 01 */	li r4, 1
/* 80119848 001167A8  91 1D 01 14 */	stw r8, 0x114(r29)
/* 8011984C 001167AC  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80119850 001167B0  90 FD 01 18 */	stw r7, 0x118(r29)
/* 80119854 001167B4  80 E1 00 80 */	lwz r7, 0x80(r1)
/* 80119858 001167B8  90 7D 01 1C */	stw r3, 0x11c(r29)
/* 8011985C 001167BC  88 61 00 84 */	lbz r3, 0x84(r1)
/* 80119860 001167C0  90 FD 01 20 */	stw r7, 0x120(r29)
/* 80119864 001167C4  98 7D 01 24 */	stb r3, 0x124(r29)
/* 80119868 001167C8  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 8011986C 001167CC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80119870 001167D0  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 80119874 001167D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80119878 001167D8  90 A1 00 6C */	stw r5, 0x6c(r1)
/* 8011987C 001167DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80119880 001167E0  7D 89 03 A6 */	mtctr r12
/* 80119884 001167E4  4E 80 04 21 */	bctrl
/* 80119888 001167E8  7F C3 F3 78 */	mr r3, r30
/* 8011988C 001167EC  7F E4 FB 78 */	mr r4, r31
/* 80119890 001167F0  38 A0 00 01 */	li r5, 1
/* 80119894 001167F4  48 00 01 99 */	bl sub_80119a2c
/* 80119898 001167F8  48 00 01 70 */	b lbl_80119A08
lbl_8011989C:
/* 8011989C 001167FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801198A0 00116800  C0 22 96 7C */	lfs f1, lbl_805AB39C@sda21(r2)
/* 801198A4 00116804  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 801198A8 00116808  7D 89 03 A6 */	mtctr r12
/* 801198AC 0011680C  4E 80 04 21 */	bctrl
/* 801198B0 00116810  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801198B4 00116814  41 82 01 54 */	beq lbl_80119A08
/* 801198B8 00116818  80 AD 8A 68 */	lwz r5, lbl_805A7628@sda21(r13)
/* 801198BC 0011681C  38 60 00 00 */	li r3, 0
/* 801198C0 00116820  38 80 00 01 */	li r4, 1
/* 801198C4 00116824  48 27 06 31 */	bl __shl2i
/* 801198C8 00116828  38 A0 00 00 */	li r5, 0
/* 801198CC 0011682C  38 00 00 03 */	li r0, 3
/* 801198D0 00116830  90 81 00 3C */	stw r4, 0x3c(r1)
/* 801198D4 00116834  FC 20 F8 90 */	fmr f1, f31
/* 801198D8 00116838  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 801198DC 0011683C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801198E0 00116840  38 61 00 50 */	addi r3, r1, 0x50
/* 801198E4 00116844  90 A1 00 44 */	stw r5, 0x44(r1)
/* 801198E8 00116848  90 A1 00 40 */	stw r5, 0x40(r1)
/* 801198EC 0011684C  90 01 00 48 */	stw r0, 0x48(r1)
/* 801198F0 00116850  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801198F4 00116854  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801198F8 00116858  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801198FC 0011685C  B0 01 00 08 */	sth r0, 8(r1)
/* 80119900 00116860  A0 A5 00 08 */	lhz r5, 8(r5)
/* 80119904 00116864  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 80119908 00116868  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8011990C 0011686C  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80119910 00116870  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80119914 00116874  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80119918 00116878  4B FA 9B 31 */	bl __ct__11CDamageInfoFRC11CDamageInfof
/* 8011991C 0011687C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80119920 00116880  7F E3 FB 78 */	mr r3, r31
/* 80119924 00116884  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80119928 00116888  38 A1 00 14 */	addi r5, r1, 0x14
/* 8011992C 0011688C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80119930 00116890  38 C1 00 0C */	addi r6, r1, 0xc
/* 80119934 00116894  38 E1 00 50 */	addi r7, r1, 0x50
/* 80119938 00116898  39 01 00 38 */	addi r8, r1, 0x38
/* 8011993C 0011689C  4B F3 07 65 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80119940 001168A0  48 00 00 C8 */	b lbl_80119A08
lbl_80119944:
/* 80119944 001168A4  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80119948 001168A8  38 80 00 00 */	li r4, 0
/* 8011994C 001168AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80119950 001168B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80119954 001168B4  7D 89 03 A6 */	mtctr r12
/* 80119958 001168B8  4E 80 04 21 */	bctrl
/* 8011995C 001168BC  7F C3 F3 78 */	mr r3, r30
/* 80119960 001168C0  7F E4 FB 78 */	mr r4, r31
/* 80119964 001168C4  38 A0 00 00 */	li r5, 0
/* 80119968 001168C8  48 00 00 C5 */	bl sub_80119a2c
/* 8011996C 001168CC  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 80119970 001168D0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80119974 001168D4  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 80119978 001168D8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8011997C 001168DC  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 80119980 001168E0  C0 44 00 00 */	lfs f2, 0(r4)
/* 80119984 001168E4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80119988 001168E8  3C A0 80 3E */	lis r5, lbl_803DAA44@ha
/* 8011998C 001168EC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80119990 001168F0  38 C0 00 04 */	li r6, 4
/* 80119994 001168F4  38 00 00 01 */	li r0, 1
/* 80119998 001168F8  3B A3 00 04 */	addi r29, r3, 4
/* 8011999C 001168FC  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801199A0 00116900  38 A5 AA 44 */	addi r5, r5, lbl_803DAA44@l
/* 801199A4 00116904  7F A3 EB 78 */	mr r3, r29
/* 801199A8 00116908  38 80 00 04 */	li r4, 4
/* 801199AC 0011690C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 801199B0 00116910  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801199B4 00116914  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801199B8 00116918  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801199BC 0011691C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801199C0 00116920  90 01 00 34 */	stw r0, 0x34(r1)
/* 801199C4 00116924  48 01 7A 75 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801199C8 00116928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801199CC 0011692C  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801199D0 00116930  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801199D4 00116934  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801199D8 00116938  90 1D 00 F8 */	stw r0, 0xf8(r29)
/* 801199DC 0011693C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801199E0 00116940  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801199E4 00116944  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801199E8 00116948  90 BD 00 FC */	stw r5, 0xfc(r29)
/* 801199EC 0011694C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801199F0 00116950  90 7D 01 00 */	stw r3, 0x100(r29)
/* 801199F4 00116954  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801199F8 00116958  90 BD 01 04 */	stw r5, 0x104(r29)
/* 801199FC 0011695C  90 81 00 20 */	stw r4, 0x20(r1)
/* 80119A00 00116960  90 7D 01 08 */	stw r3, 0x108(r29)
/* 80119A04 00116964  90 01 00 20 */	stw r0, 0x20(r1)
lbl_80119A08:
/* 80119A08 00116968  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80119A0C 0011696C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80119A10 00116970  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80119A14 00116974  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80119A18 00116978  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80119A1C 0011697C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80119A20 00116980  7C 08 03 A6 */	mtlr r0
/* 80119A24 00116984  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80119A28 00116988  4E 80 00 20 */	blr

.global sub_80119a2c
sub_80119a2c:
/* 80119A2C 0011698C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80119A30 00116990  7C 08 02 A6 */	mflr r0
/* 80119A34 00116994  90 01 00 44 */	stw r0, 0x44(r1)
/* 80119A38 00116998  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80119A3C 0011699C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80119A40 001169A0  7C BE 2B 78 */	mr r30, r5
/* 80119A44 001169A4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80119A48 001169A8  7C 9D 23 78 */	mr r29, r4
/* 80119A4C 001169AC  93 81 00 30 */	stw r28, 0x30(r1)
/* 80119A50 001169B0  7C 7C 1B 78 */	mr r28, r3
/* 80119A54 001169B4  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 80119A58 001169B8  48 00 00 A4 */	b lbl_80119AFC
lbl_80119A5C:
/* 80119A5C 001169BC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80119A60 001169C0  7F A4 EB 78 */	mr r4, r29
/* 80119A64 001169C4  38 61 00 20 */	addi r3, r1, 0x20
/* 80119A68 001169C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80119A6C 001169CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119A70 001169D0  4B F2 E5 59 */	bl GetIdListForScript__13CStateManagerCF9TEditorId
/* 80119A74 001169D4  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80119A78 001169D8  38 60 00 00 */	li r3, 0
/* 80119A7C 001169DC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80119A80 001169E0  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80119A84 001169E4  7C 05 00 40 */	cmplw r5, r0
/* 80119A88 001169E8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80119A8C 001169EC  40 82 00 0C */	bne lbl_80119A98
/* 80119A90 001169F0  7C 04 00 40 */	cmplw r4, r0
/* 80119A94 001169F4  41 82 00 08 */	beq lbl_80119A9C
lbl_80119A98:
/* 80119A98 001169F8  38 60 00 01 */	li r3, 1
lbl_80119A9C:
/* 80119A9C 001169FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80119AA0 00116A00  41 82 00 58 */	beq lbl_80119AF8
/* 80119AA4 00116A04  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 80119AA8 00116A08  7F A3 EB 78 */	mr r3, r29
/* 80119AAC 00116A0C  38 81 00 10 */	addi r4, r1, 0x10
/* 80119AB0 00116A10  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80119AB4 00116A14  4B F3 2A C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80119AB8 00116A18  7C 64 1B 78 */	mr r4, r3
/* 80119ABC 00116A1C  38 61 00 18 */	addi r3, r1, 0x18
/* 80119AC0 00116A20  4B F8 D4 29 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FP7CEntity"
/* 80119AC4 00116A24  80 83 00 04 */	lwz r4, 4(r3)
/* 80119AC8 00116A28  28 04 00 00 */	cmplwi r4, 0
/* 80119ACC 00116A2C  41 82 00 2C */	beq lbl_80119AF8
/* 80119AD0 00116A30  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80119AD4 00116A34  38 C0 00 04 */	li r6, 4
/* 80119AD8 00116A38  41 82 00 08 */	beq lbl_80119AE0
/* 80119ADC 00116A3C  38 C0 00 01 */	li r6, 1
lbl_80119AE0:
/* 80119AE0 00116A40  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80119AE4 00116A44  7F A3 EB 78 */	mr r3, r29
/* 80119AE8 00116A48  38 A1 00 0C */	addi r5, r1, 0xc
/* 80119AEC 00116A4C  B0 01 00 08 */	sth r0, 8(r1)
/* 80119AF0 00116A50  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80119AF4 00116A54  4B F2 A3 DD */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_80119AF8:
/* 80119AF8 00116A58  3B FF 00 0C */	addi r31, r31, 0xc
lbl_80119AFC:
/* 80119AFC 00116A5C  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80119B00 00116A60  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80119B04 00116A64  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80119B08 00116A68  7C 03 02 14 */	add r0, r3, r0
/* 80119B0C 00116A6C  7C 1F 00 40 */	cmplw r31, r0
/* 80119B10 00116A70  40 82 FF 4C */	bne lbl_80119A5C
/* 80119B14 00116A74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80119B18 00116A78  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80119B1C 00116A7C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80119B20 00116A80  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80119B24 00116A84  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80119B28 00116A88  7C 08 03 A6 */	mtlr r0
/* 80119B2C 00116A8C  38 21 00 40 */	addi r1, r1, 0x40
/* 80119B30 00116A90  4E 80 00 20 */	blr

.global BulbAttack__12CBloodFlowerFR13CStateManager9EStateMsgf
BulbAttack__12CBloodFlowerFR13CStateManager9EStateMsgf:
/* 80119B34 00116A94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80119B38 00116A98  7C 08 02 A6 */	mflr r0
/* 80119B3C 00116A9C  2C 05 00 00 */	cmpwi r5, 0
/* 80119B40 00116AA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80119B44 00116AA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80119B48 00116AA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80119B4C 00116AAC  7C 7E 1B 78 */	mr r30, r3
/* 80119B50 00116AB0  41 82 00 0C */	beq lbl_80119B5C
/* 80119B54 00116AB4  41 80 00 B8 */	blt lbl_80119C0C
/* 80119B58 00116AB8  48 00 00 B4 */	b lbl_80119C0C
lbl_80119B5C:
/* 80119B5C 00116ABC  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 80119B60 00116AC0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119B64 00116AC4  38 C3 AA 68 */	addi r6, r3, lbl_803DAA68@l
/* 80119B68 00116AC8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80119B6C 00116ACC  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80119B70 00116AD0  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 80119B74 00116AD4  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80119B78 00116AD8  38 E0 00 06 */	li r7, 6
/* 80119B7C 00116ADC  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80119B80 00116AE0  38 A0 00 00 */	li r5, 0
/* 80119B84 00116AE4  38 00 00 01 */	li r0, 1
/* 80119B88 00116AE8  3B E3 00 04 */	addi r31, r3, 4
/* 80119B8C 00116AEC  90 C1 00 08 */	stw r6, 8(r1)
/* 80119B90 00116AF0  38 C4 A9 CC */	addi r6, r4, lbl_803DA9CC@l
/* 80119B94 00116AF4  7F E3 FB 78 */	mr r3, r31
/* 80119B98 00116AF8  38 80 00 06 */	li r4, 6
/* 80119B9C 00116AFC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80119BA0 00116B00  90 C1 00 08 */	stw r6, 8(r1)
/* 80119BA4 00116B04  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80119BA8 00116B08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80119BAC 00116B0C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80119BB0 00116B10  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80119BB4 00116B14  98 01 00 20 */	stb r0, 0x20(r1)
/* 80119BB8 00116B18  48 01 78 81 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80119BBC 00116B1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80119BC0 00116B20  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80119BC4 00116B24  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 80119BC8 00116B28  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119BCC 00116B2C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 80119BD0 00116B30  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80119BD4 00116B34  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80119BD8 00116B38  38 00 00 01 */	li r0, 1
/* 80119BDC 00116B3C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80119BE0 00116B40  90 BF 01 30 */	stw r5, 0x130(r31)
/* 80119BE4 00116B44  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80119BE8 00116B48  90 DF 01 34 */	stw r6, 0x134(r31)
/* 80119BEC 00116B4C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80119BF0 00116B50  90 BF 01 38 */	stw r5, 0x138(r31)
/* 80119BF4 00116B54  88 A1 00 20 */	lbz r5, 0x20(r1)
/* 80119BF8 00116B58  90 DF 01 3C */	stw r6, 0x13c(r31)
/* 80119BFC 00116B5C  98 BF 01 40 */	stb r5, 0x140(r31)
/* 80119C00 00116B60  90 81 00 08 */	stw r4, 8(r1)
/* 80119C04 00116B64  90 61 00 08 */	stw r3, 8(r1)
/* 80119C08 00116B68  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80119C0C:
/* 80119C0C 00116B6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80119C10 00116B70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80119C14 00116B74  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80119C18 00116B78  7C 08 03 A6 */	mtlr r0
/* 80119C1C 00116B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80119C20 00116B80  4E 80 00 20 */	blr

.global Active__12CBloodFlowerFR13CStateManager9EStateMsgf
Active__12CBloodFlowerFR13CStateManager9EStateMsgf:
/* 80119C24 00116B84  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80119C28 00116B88  7C 08 02 A6 */	mflr r0
/* 80119C2C 00116B8C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80119C30 00116B90  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80119C34 00116B94  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80119C38 00116B98  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80119C3C 00116B9C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80119C40 00116BA0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80119C44 00116BA4  FF E0 08 90 */	fmr f31, f1
/* 80119C48 00116BA8  2C 05 00 01 */	cmpwi r5, 1
/* 80119C4C 00116BAC  7C 7E 1B 78 */	mr r30, r3
/* 80119C50 00116BB0  7C 9F 23 78 */	mr r31, r4
/* 80119C54 00116BB4  41 82 00 30 */	beq lbl_80119C84
/* 80119C58 00116BB8  40 80 00 10 */	bge lbl_80119C68
/* 80119C5C 00116BBC  2C 05 00 00 */	cmpwi r5, 0
/* 80119C60 00116BC0  40 80 00 14 */	bge lbl_80119C74
/* 80119C64 00116BC4  48 00 01 84 */	b lbl_80119DE8
lbl_80119C68:
/* 80119C68 00116BC8  2C 05 00 03 */	cmpwi r5, 3
/* 80119C6C 00116BCC  40 80 01 7C */	bge lbl_80119DE8
/* 80119C70 00116BD0  48 00 01 10 */	b lbl_80119D80
lbl_80119C74:
/* 80119C74 00116BD4  38 00 00 01 */	li r0, 1
/* 80119C78 00116BD8  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80119C7C 00116BDC  4B FF F6 E9 */	bl sub_80119364
/* 80119C80 00116BE0  48 00 01 68 */	b lbl_80119DE8
lbl_80119C84:
/* 80119C84 00116BE4  3C A0 80 3E */	lis r5, lbl_803E0344@ha
/* 80119C88 00116BE8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80119C8C 00116BEC  39 45 03 44 */	addi r10, r5, lbl_803E0344@l
/* 80119C90 00116BF0  38 A0 00 0A */	li r5, 0xa
/* 80119C94 00116BF4  81 2A 00 00 */	lwz r9, 0(r10)
/* 80119C98 00116BF8  38 E0 00 00 */	li r7, 0
/* 80119C9C 00116BFC  81 0A 00 04 */	lwz r8, 4(r10)
/* 80119CA0 00116C00  80 0A 00 08 */	lwz r0, 8(r10)
/* 80119CA4 00116C04  91 21 00 2C */	stw r9, 0x2c(r1)
/* 80119CA8 00116C08  91 01 00 30 */	stw r8, 0x30(r1)
/* 80119CAC 00116C0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80119CB0 00116C10  4B F6 2B 05 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80119CB4 00116C14  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80119CB8 00116C18  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80119CBC 00116C1C  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80119CC0 00116C20  3C 80 80 3E */	lis r4, lbl_803E061C@ha
/* 80119CC4 00116C24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80119CC8 00116C28  38 04 06 1C */	addi r0, r4, lbl_803E061C@l
/* 80119CCC 00116C2C  38 80 00 18 */	li r4, 0x18
/* 80119CD0 00116C30  3B A3 00 04 */	addi r29, r3, 4
/* 80119CD4 00116C34  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80119CD8 00116C38  7F A3 EB 78 */	mr r3, r29
/* 80119CDC 00116C3C  38 80 00 18 */	li r4, 0x18
/* 80119CE0 00116C40  90 01 00 18 */	stw r0, 0x18(r1)
/* 80119CE4 00116C44  48 01 77 55 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80119CE8 00116C48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80119CEC 00116C4C  3C 60 80 3E */	lis r3, lbl_803E061C@ha
/* 80119CF0 00116C50  38 C3 06 1C */	addi r6, r3, lbl_803E061C@l
/* 80119CF4 00116C54  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119CF8 00116C58  90 1D 02 74 */	stw r0, 0x274(r29)
/* 80119CFC 00116C5C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80119D00 00116C60  38 61 00 20 */	addi r3, r1, 0x20
/* 80119D04 00116C64  38 9E 00 34 */	addi r4, r30, 0x34
/* 80119D08 00116C68  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80119D0C 00116C6C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80119D10 00116C70  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80119D14 00116C74  EC 00 F8 2A */	fadds f0, f0, f31
/* 80119D18 00116C78  90 01 00 18 */	stw r0, 0x18(r1)
/* 80119D1C 00116C7C  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80119D20 00116C80  80 DF 08 4C */	lwz r6, 0x84c(r31)
/* 80119D24 00116C84  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80119D28 00116C88  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 80119D2C 00116C8C  C0 66 00 60 */	lfs f3, 0x60(r6)
/* 80119D30 00116C90  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80119D34 00116C94  EC 81 00 28 */	fsubs f4, f1, f0
/* 80119D38 00116C98  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80119D3C 00116C9C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80119D40 00116CA0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80119D44 00116CA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80119D48 00116CA8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80119D4C 00116CAC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80119D50 00116CB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80119D54 00116CB4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80119D58 00116CB8  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80119D5C 00116CBC  48 1F 8C C9 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80119D60 00116CC0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80119D64 00116CC4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80119D68 00116CC8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80119D6C 00116CCC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80119D70 00116CD0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80119D74 00116CD4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 80119D78 00116CD8  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80119D7C 00116CDC  48 00 00 6C */	b lbl_80119DE8
lbl_80119D80:
/* 80119D80 00116CE0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119D84 00116CE4  38 00 00 0A */	li r0, 0xa
/* 80119D88 00116CE8  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80119D8C 00116CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119D90 00116CF0  38 81 00 10 */	addi r4, r1, 0x10
/* 80119D94 00116CF4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80119D98 00116CF8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80119D9C 00116CFC  38 63 00 04 */	addi r3, r3, 4
/* 80119DA0 00116D00  48 01 7A 19 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80119DA4 00116D04  34 01 00 10 */	addic. r0, r1, 0x10
/* 80119DA8 00116D08  41 82 00 10 */	beq lbl_80119DB8
/* 80119DAC 00116D0C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119DB0 00116D10  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80119DB4 00116D14  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80119DB8:
/* 80119DB8 00116D18  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119DBC 00116D1C  38 00 00 17 */	li r0, 0x17
/* 80119DC0 00116D20  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80119DC4 00116D24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80119DC8 00116D28  38 81 00 08 */	addi r4, r1, 8
/* 80119DCC 00116D2C  90 61 00 08 */	stw r3, 8(r1)
/* 80119DD0 00116D30  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80119DD4 00116D34  38 63 00 04 */	addi r3, r3, 4
/* 80119DD8 00116D38  48 01 79 E1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80119DDC 00116D3C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119DE0 00116D40  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80119DE4 00116D44  90 01 00 08 */	stw r0, 8(r1)
lbl_80119DE8:
/* 80119DE8 00116D48  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80119DEC 00116D4C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80119DF0 00116D50  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80119DF4 00116D54  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80119DF8 00116D58  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80119DFC 00116D5C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80119E00 00116D60  7C 08 03 A6 */	mtlr r0
/* 80119E04 00116D64  38 21 00 70 */	addi r1, r1, 0x70
/* 80119E08 00116D68  4E 80 00 20 */	blr

.global __dt__17CBCAdditiveAimCmd
__dt__17CBCAdditiveAimCmd:
/* 80119E0C 00116D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119E10 00116D70  7C 08 02 A6 */	mflr r0
/* 80119E14 00116D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119E18 00116D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119E1C 00116D7C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80119E20 00116D80  41 82 00 30 */	beq lbl_80119E50
/* 80119E24 00116D84  3C 60 80 3E */	lis r3, lbl_803E061C@ha
/* 80119E28 00116D88  38 03 06 1C */	addi r0, r3, lbl_803E061C@l
/* 80119E2C 00116D8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80119E30 00116D90  41 82 00 10 */	beq lbl_80119E40
/* 80119E34 00116D94  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80119E38 00116D98  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80119E3C 00116D9C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80119E40:
/* 80119E40 00116DA0  7C 80 07 35 */	extsh. r0, r4
/* 80119E44 00116DA4  40 81 00 0C */	ble lbl_80119E50
/* 80119E48 00116DA8  7F E3 FB 78 */	mr r3, r31
/* 80119E4C 00116DAC  48 1F BA E5 */	bl Free__7CMemoryFPCv
lbl_80119E50:
/* 80119E50 00116DB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119E54 00116DB4  7F E3 FB 78 */	mr r3, r31
/* 80119E58 00116DB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119E5C 00116DBC  7C 08 03 A6 */	mtlr r0
/* 80119E60 00116DC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80119E64 00116DC4  4E 80 00 20 */	blr

.global InActive__12CBloodFlowerFR13CStateManager9EStateMsgf
InActive__12CBloodFlowerFR13CStateManager9EStateMsgf:
/* 80119E68 00116DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119E6C 00116DCC  7C 08 02 A6 */	mflr r0
/* 80119E70 00116DD0  2C 05 00 01 */	cmpwi r5, 1
/* 80119E74 00116DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119E78 00116DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80119E7C 00116DDC  7C 7F 1B 78 */	mr r31, r3
/* 80119E80 00116DE0  41 82 00 48 */	beq lbl_80119EC8
/* 80119E84 00116DE4  40 80 00 10 */	bge lbl_80119E94
/* 80119E88 00116DE8  2C 05 00 00 */	cmpwi r5, 0
/* 80119E8C 00116DEC  40 80 00 14 */	bge lbl_80119EA0
/* 80119E90 00116DF0  48 00 00 38 */	b lbl_80119EC8
lbl_80119E94:
/* 80119E94 00116DF4  2C 05 00 03 */	cmpwi r5, 3
/* 80119E98 00116DF8  40 80 00 30 */	bge lbl_80119EC8
/* 80119E9C 00116DFC  48 00 00 24 */	b lbl_80119EC0
lbl_80119EA0:
/* 80119EA0 00116E00  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80119EA4 00116E04  38 80 00 01 */	li r4, 1
/* 80119EA8 00116E08  48 02 0B 31 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80119EAC 00116E0C  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80119EB0 00116E10  38 60 00 00 */	li r3, 0
/* 80119EB4 00116E14  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80119EB8 00116E18  98 1F 04 00 */	stb r0, 0x400(r31)
/* 80119EBC 00116E1C  48 00 00 0C */	b lbl_80119EC8
lbl_80119EC0:
/* 80119EC0 00116E20  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 80119EC4 00116E24  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
lbl_80119EC8:
/* 80119EC8 00116E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119ECC 00116E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80119ED0 00116E30  7C 08 03 A6 */	mtlr r0
/* 80119ED4 00116E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80119ED8 00116E38  4E 80 00 20 */	blr

.global ProjectileInfo__12CBloodFlowerFv
ProjectileInfo__12CBloodFlowerFv:
/* 80119EDC 00116E3C  38 63 05 90 */	addi r3, r3, 0x590
/* 80119EE0 00116E40  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CBloodFlowerF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CBloodFlowerF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80119EE4 00116E44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80119EE8 00116E48  7C 08 02 A6 */	mflr r0
/* 80119EEC 00116E4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80119EF0 00116E50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80119EF4 00116E54  7C DF 33 78 */	mr r31, r6
/* 80119EF8 00116E58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80119EFC 00116E5C  7C 9E 23 78 */	mr r30, r4
/* 80119F00 00116E60  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80119F04 00116E64  7C 7D 1B 78 */	mr r29, r3
/* 80119F08 00116E68  A0 05 00 00 */	lhz r0, 0(r5)
/* 80119F0C 00116E6C  38 A1 00 08 */	addi r5, r1, 8
/* 80119F10 00116E70  B0 01 00 08 */	sth r0, 8(r1)
/* 80119F14 00116E74  4B F6 2C 65 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80119F18 00116E78  2C 1E 00 21 */	cmpwi r30, 0x21
/* 80119F1C 00116E7C  41 82 00 20 */	beq lbl_80119F3C
/* 80119F20 00116E80  40 80 00 10 */	bge lbl_80119F30
/* 80119F24 00116E84  2C 1E 00 01 */	cmpwi r30, 1
/* 80119F28 00116E88  41 82 00 70 */	beq lbl_80119F98
/* 80119F2C 00116E8C  48 00 00 6C */	b lbl_80119F98
lbl_80119F30:
/* 80119F30 00116E90  2C 1E 00 29 */	cmpwi r30, 0x29
/* 80119F34 00116E94  41 82 00 38 */	beq lbl_80119F6C
/* 80119F38 00116E98  48 00 00 60 */	b lbl_80119F98
lbl_80119F3C:
/* 80119F3C 00116E9C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80119F40 00116EA0  7F E4 FB 78 */	mr r4, r31
/* 80119F44 00116EA4  48 02 0D AD */	bl Activate__15CBodyControllerFR13CStateManager
/* 80119F48 00116EA8  7F A3 EB 78 */	mr r3, r29
/* 80119F4C 00116EAC  7F E4 FB 78 */	mr r4, r31
/* 80119F50 00116EB0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80119F54 00116EB4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80119F58 00116EB8  7D 89 03 A6 */	mtctr r12
/* 80119F5C 00116EBC  4E 80 04 21 */	bctrl
/* 80119F60 00116EC0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80119F64 00116EC4  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80119F68 00116EC8  48 00 00 30 */	b lbl_80119F98
lbl_80119F6C:
/* 80119F6C 00116ECC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80119F70 00116ED0  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80119F74 00116ED4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80119F78 00116ED8  41 82 00 08 */	beq lbl_80119F80
/* 80119F7C 00116EDC  48 02 02 99 */	bl FrozenBreakout__15CBodyControllerFv
lbl_80119F80:
/* 80119F80 00116EE0  7F A3 EB 78 */	mr r3, r29
/* 80119F84 00116EE4  7F E4 FB 78 */	mr r4, r31
/* 80119F88 00116EE8  4B FF F3 DD */	bl sub_80119364
/* 80119F8C 00116EEC  7F A3 EB 78 */	mr r3, r29
/* 80119F90 00116EF0  7F E4 FB 78 */	mr r4, r31
/* 80119F94 00116EF4  4B FF F1 31 */	bl sub_801190c4
lbl_80119F98:
/* 80119F98 00116EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80119F9C 00116EFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80119FA0 00116F00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80119FA4 00116F04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80119FA8 00116F08  7C 08 03 A6 */	mtlr r0
/* 80119FAC 00116F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80119FB0 00116F10  4E 80 00 20 */	blr

.global Accept__12CBloodFlowerFR8IVisitor
Accept__12CBloodFlowerFR8IVisitor:
/* 80119FB4 00116F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80119FB8 00116F18  7C 08 02 A6 */	mflr r0
/* 80119FBC 00116F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80119FC0 00116F20  7C 60 1B 78 */	mr r0, r3
/* 80119FC4 00116F24  7C 83 23 78 */	mr r3, r4
/* 80119FC8 00116F28  81 84 00 00 */	lwz r12, 0(r4)
/* 80119FCC 00116F2C  7C 04 03 78 */	mr r4, r0
/* 80119FD0 00116F30  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80119FD4 00116F34  7D 89 03 A6 */	mtctr r12
/* 80119FD8 00116F38  4E 80 04 21 */	bctrl
/* 80119FDC 00116F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80119FE0 00116F40  7C 08 03 A6 */	mtlr r0
/* 80119FE4 00116F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80119FE8 00116F48  4E 80 00 20 */	blr

.global "__ct__12CBloodFlowerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoUiUiRC16CActorParametersUiRC11CDamageInfoRC11CDamageInfoUiUiUi"
"__ct__12CBloodFlowerF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoUiUiRC16CActorParametersUiRC11CDamageInfoRC11CDamageInfoUiUiUi":
/* 80119FEC 00116F4C  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80119FF0 00116F50  7C 08 02 A6 */	mflr r0
/* 80119FF4 00116F54  90 01 01 74 */	stw r0, 0x174(r1)
/* 80119FF8 00116F58  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80119FFC 00116F5C  F3 E1 01 68 */	psq_st f31, 360(r1), 0, qr0
/* 8011A000 00116F60  BE 21 01 24 */	stmw r17, 0x124(r1)
/* 8011A004 00116F64  A0 04 00 00 */	lhz r0, 0(r4)
/* 8011A008 00116F68  7C CB 33 78 */	mr r11, r6
/* 8011A00C 00116F6C  7C FE 3B 78 */	mr r30, r7
/* 8011A010 00116F70  7D 1F 43 78 */	mr r31, r8
/* 8011A014 00116F74  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8011A018 00116F78  7D 52 53 78 */	mr r18, r10
/* 8011A01C 00116F7C  38 C0 00 00 */	li r6, 0
/* 8011A020 00116F80  38 80 00 01 */	li r4, 1
/* 8011A024 00116F84  91 21 00 08 */	stw r9, 8(r1)
/* 8011A028 00116F88  38 00 00 02 */	li r0, 2
/* 8011A02C 00116F8C  80 E1 01 7C */	lwz r7, 0x17c(r1)
/* 8011A030 00116F90  FF E0 08 90 */	fmr f31, f1
/* 8011A034 00116F94  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8011A038 00116F98  7C A6 2B 78 */	mr r6, r5
/* 8011A03C 00116F9C  82 61 01 78 */	lwz r19, 0x178(r1)
/* 8011A040 00116FA0  7C 7D 1B 78 */	mr r29, r3
/* 8011A044 00116FA4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8011A048 00116FA8  82 81 01 80 */	lwz r20, 0x180(r1)
/* 8011A04C 00116FAC  7D 68 5B 78 */	mr r8, r11
/* 8011A050 00116FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A054 00116FB4  7F C9 F3 78 */	mr r9, r30
/* 8011A058 00116FB8  82 A1 01 84 */	lwz r21, 0x184(r1)
/* 8011A05C 00116FBC  7F EA FB 78 */	mr r10, r31
/* 8011A060 00116FC0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8011A064 00116FC4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8011A068 00116FC8  82 C1 01 88 */	lwz r22, 0x188(r1)
/* 8011A06C 00116FCC  38 E0 00 00 */	li r7, 0
/* 8011A070 00116FD0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8011A074 00116FD4  38 80 00 04 */	li r4, 4
/* 8011A078 00116FD8  82 E1 01 8C */	lwz r23, 0x18c(r1)
/* 8011A07C 00116FDC  83 01 01 90 */	lwz r24, 0x190(r1)
/* 8011A080 00116FE0  83 21 01 94 */	lwz r25, 0x194(r1)
/* 8011A084 00116FE4  83 41 01 98 */	lwz r26, 0x198(r1)
/* 8011A088 00116FE8  83 61 01 9C */	lwz r27, 0x19c(r1)
/* 8011A08C 00116FEC  83 81 01 A0 */	lwz r28, 0x1a0(r1)
/* 8011A090 00116FF0  4B F6 33 C1 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8011A094 00116FF4  3C 60 80 3E */	lis r3, lbl_803E0350@ha
/* 8011A098 00116FF8  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 8011A09C 00116FFC  38 03 03 50 */	addi r0, r3, lbl_803E0350@l
/* 8011A0A0 00117000  38 61 00 4C */	addi r3, r1, 0x4c
/* 8011A0A4 00117004  90 1D 00 00 */	stw r0, 0(r29)
/* 8011A0A8 00117008  38 04 52 54 */	addi r0, r4, 0x50415254@l
/* 8011A0AC 0011700C  38 A1 00 54 */	addi r5, r1, 0x54
/* 8011A0B0 00117010  90 01 00 54 */	stw r0, 0x54(r1)
/* 8011A0B4 00117014  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8011A0B8 00117018  92 41 00 58 */	stw r18, 0x58(r1)
/* 8011A0BC 0011701C  81 84 00 00 */	lwz r12, 0(r4)
/* 8011A0C0 00117020  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8011A0C4 00117024  7D 89 03 A6 */	mtctr r12
/* 8011A0C8 00117028  4E 80 04 21 */	bctrl
/* 8011A0CC 0011702C  3A 3D 05 68 */	addi r17, r29, 0x568
/* 8011A0D0 00117030  38 81 00 4C */	addi r4, r1, 0x4c
/* 8011A0D4 00117034  7E 23 8B 78 */	mr r3, r17
/* 8011A0D8 00117038  48 22 6D D1 */	bl __ct__6CTokenFRC6CToken
/* 8011A0DC 0011703C  7E 23 8B 78 */	mr r3, r17
/* 8011A0E0 00117040  48 22 6D 2D */	bl GetObj__6CTokenFv
/* 8011A0E4 00117044  80 03 00 04 */	lwz r0, 4(r3)
/* 8011A0E8 00117048  38 61 00 4C */	addi r3, r1, 0x4c
/* 8011A0EC 0011704C  38 80 FF FF */	li r4, -1
/* 8011A0F0 00117050  90 11 00 08 */	stw r0, 8(r17)
/* 8011A0F4 00117054  48 22 6D 4D */	bl __dt__6CTokenFv
/* 8011A0F8 00117058  3C 60 80 3D */	lis r3, lbl_803CF2F0@ha
/* 8011A0FC 0011705C  3A 40 00 00 */	li r18, 0
/* 8011A100 00117060  38 83 F2 F0 */	addi r4, r3, lbl_803CF2F0@l
/* 8011A104 00117064  38 60 03 40 */	li r3, 0x340
/* 8011A108 00117068  38 84 00 21 */	addi r4, r4, 0x21
/* 8011A10C 0011706C  38 A0 00 00 */	li r5, 0
/* 8011A110 00117070  48 1F B7 5D */	bl __nw__FUlPCcPCc
/* 8011A114 00117074  7C 71 1B 79 */	or. r17, r3, r3
/* 8011A118 00117078  41 82 00 2C */	beq lbl_8011A144
/* 8011A11C 0011707C  38 61 00 44 */	addi r3, r1, 0x44
/* 8011A120 00117080  38 9D 05 68 */	addi r4, r29, 0x568
/* 8011A124 00117084  48 22 6D 85 */	bl __ct__6CTokenFRC6CToken
/* 8011A128 00117088  7E 23 8B 78 */	mr r3, r17
/* 8011A12C 0011708C  38 81 00 44 */	addi r4, r1, 0x44
/* 8011A130 00117090  3A 40 00 01 */	li r18, 1
/* 8011A134 00117094  38 A0 00 00 */	li r5, 0
/* 8011A138 00117098  38 C0 00 01 */	li r6, 1
/* 8011A13C 0011709C  48 20 52 A5 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 8011A140 001170A0  7C 71 1B 78 */	mr r17, r3
lbl_8011A144:
/* 8011A144 001170A4  7E 40 07 75 */	extsb. r0, r18
/* 8011A148 001170A8  92 3D 05 74 */	stw r17, 0x574(r29)
/* 8011A14C 001170AC  41 82 00 10 */	beq lbl_8011A15C
/* 8011A150 001170B0  38 61 00 44 */	addi r3, r1, 0x44
/* 8011A154 001170B4  38 80 00 00 */	li r4, 0
/* 8011A158 001170B8  48 22 6C E9 */	bl __dt__6CTokenFv
lbl_8011A15C:
/* 8011A15C 001170BC  3C 60 57 50 */	lis r3, 0x57505343@ha
/* 8011A160 001170C0  92 61 00 40 */	stw r19, 0x40(r1)
/* 8011A164 001170C4  38 03 53 43 */	addi r0, r3, 0x57505343@l
/* 8011A168 001170C8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8011A16C 001170CC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8011A170 001170D0  38 61 00 34 */	addi r3, r1, 0x34
/* 8011A174 001170D4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8011A178 001170D8  81 84 00 00 */	lwz r12, 0(r4)
/* 8011A17C 001170DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8011A180 001170E0  7D 89 03 A6 */	mtctr r12
/* 8011A184 001170E4  4E 80 04 21 */	bctrl
/* 8011A188 001170E8  3A 3D 05 78 */	addi r17, r29, 0x578
/* 8011A18C 001170EC  38 81 00 34 */	addi r4, r1, 0x34
/* 8011A190 001170F0  7E 23 8B 78 */	mr r3, r17
/* 8011A194 001170F4  48 22 6D 15 */	bl __ct__6CTokenFRC6CToken
/* 8011A198 001170F8  38 00 00 00 */	li r0, 0
/* 8011A19C 001170FC  38 61 00 34 */	addi r3, r1, 0x34
/* 8011A1A0 00117100  90 11 00 08 */	stw r0, 8(r17)
/* 8011A1A4 00117104  38 80 FF FF */	li r4, -1
/* 8011A1A8 00117108  48 22 6C 99 */	bl __dt__6CTokenFv
/* 8011A1AC 0011710C  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 8011A1B0 00117110  38 00 00 00 */	li r0, 0
/* 8011A1B4 00117114  7E 84 A3 78 */	mr r4, r20
/* 8011A1B8 00117118  7E A5 AB 78 */	mr r5, r21
/* 8011A1BC 0011711C  D0 1D 05 84 */	stfs f0, 0x584(r29)
/* 8011A1C0 00117120  38 7D 05 90 */	addi r3, r29, 0x590
/* 8011A1C4 00117124  D0 1D 05 88 */	stfs f0, 0x588(r29)
/* 8011A1C8 00117128  90 1D 05 8C */	stw r0, 0x58c(r29)
/* 8011A1CC 0011712C  48 10 1E DD */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8011A1D0 00117130  C0 02 96 7C */	lfs f0, lbl_805AB39C@sda21(r2)
/* 8011A1D4 00117134  38 00 00 00 */	li r0, 0
/* 8011A1D8 00117138  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8011A1DC 0011713C  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 8011A1E0 00117140  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 8011A1E4 00117144  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 8011A1E8 00117148  98 1D 05 D0 */	stb r0, 0x5d0(r29)
/* 8011A1EC 0011714C  48 1C E7 C5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8011A1F0 00117150  B0 7D 05 D4 */	sth r3, 0x5d4(r29)
/* 8011A1F4 00117154  38 00 00 00 */	li r0, 0
/* 8011A1F8 00117158  80 82 96 78 */	lwz r4, lbl_805AB398@sda21(r2)
/* 8011A1FC 0011715C  38 61 00 80 */	addi r3, r1, 0x80
/* 8011A200 00117160  90 1D 05 D8 */	stw r0, 0x5d8(r29)
/* 8011A204 00117164  80 16 00 00 */	lwz r0, 0(r22)
/* 8011A208 00117168  90 1D 05 DC */	stw r0, 0x5dc(r29)
/* 8011A20C 0011716C  88 16 00 04 */	lbz r0, 4(r22)
/* 8011A210 00117170  98 1D 05 E0 */	stb r0, 0x5e0(r29)
/* 8011A214 00117174  C0 16 00 08 */	lfs f0, 8(r22)
/* 8011A218 00117178  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 8011A21C 0011717C  C0 16 00 0C */	lfs f0, 0xc(r22)
/* 8011A220 00117180  D0 1D 05 E8 */	stfs f0, 0x5e8(r29)
/* 8011A224 00117184  C0 16 00 10 */	lfs f0, 0x10(r22)
/* 8011A228 00117188  D0 1D 05 EC */	stfs f0, 0x5ec(r29)
/* 8011A22C 0011718C  C0 16 00 14 */	lfs f0, 0x14(r22)
/* 8011A230 00117190  D0 1D 05 F0 */	stfs f0, 0x5f0(r29)
/* 8011A234 00117194  88 16 00 18 */	lbz r0, 0x18(r22)
/* 8011A238 00117198  98 1D 05 F4 */	stb r0, 0x5f4(r29)
/* 8011A23C 0011719C  80 17 00 00 */	lwz r0, 0(r23)
/* 8011A240 001171A0  90 1D 05 F8 */	stw r0, 0x5f8(r29)
/* 8011A244 001171A4  88 17 00 04 */	lbz r0, 4(r23)
/* 8011A248 001171A8  98 1D 05 FC */	stb r0, 0x5fc(r29)
/* 8011A24C 001171AC  C0 17 00 08 */	lfs f0, 8(r23)
/* 8011A250 001171B0  D0 1D 06 00 */	stfs f0, 0x600(r29)
/* 8011A254 001171B4  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 8011A258 001171B8  D0 1D 06 04 */	stfs f0, 0x604(r29)
/* 8011A25C 001171BC  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 8011A260 001171C0  D0 1D 06 08 */	stfs f0, 0x608(r29)
/* 8011A264 001171C4  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 8011A268 001171C8  D0 1D 06 0C */	stfs f0, 0x60c(r29)
/* 8011A26C 001171CC  88 17 00 18 */	lbz r0, 0x18(r23)
/* 8011A270 001171D0  98 1D 06 10 */	stb r0, 0x610(r29)
/* 8011A274 001171D4  D3 FD 06 14 */	stfs f31, 0x614(r29)
/* 8011A278 001171D8  93 1D 06 18 */	stw r24, 0x618(r29)
/* 8011A27C 001171DC  93 3D 06 1C */	stw r25, 0x61c(r29)
/* 8011A280 001171E0  93 5D 06 20 */	stw r26, 0x620(r29)
/* 8011A284 001171E4  4B EE AA 35 */	bl string_l__4rstlFPCc
/* 8011A288 001171E8  7F A4 EB 78 */	mr r4, r29
/* 8011A28C 001171EC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8011A290 001171F0  38 A1 00 80 */	addi r5, r1, 0x80
/* 8011A294 001171F4  4B F3 8C 6D */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8011A298 001171F8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8011A29C 001171FC  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8011A2A0 00117200  48 1F 88 D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8011A2A4 00117204  38 61 00 80 */	addi r3, r1, 0x80
/* 8011A2A8 00117208  48 22 38 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8011A2AC 0011720C  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8011A2B0 00117210  38 80 00 00 */	li r4, 0
/* 8011A2B4 00117214  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8011A2B8 00117218  C0 23 00 08 */	lfs f1, 8(r3)
/* 8011A2BC 0011721C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8011A2C0 00117220  D0 1D 05 88 */	stfs f0, 0x588(r29)
/* 8011A2C4 00117224  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8011A2C8 00117228  81 83 00 00 */	lwz r12, 0(r3)
/* 8011A2CC 0011722C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8011A2D0 00117230  7D 89 03 A6 */	mtctr r12
/* 8011A2D4 00117234  4E 80 04 21 */	bctrl
/* 8011A2D8 00117238  82 3D 05 74 */	lwz r17, 0x574(r29)
/* 8011A2DC 0011723C  7F C4 F3 78 */	mr r4, r30
/* 8011A2E0 00117240  38 61 00 90 */	addi r3, r1, 0x90
/* 8011A2E4 00117244  48 1F 89 5D */	bl GetRotation__12CTransform4fCFv
/* 8011A2E8 00117248  7E 23 8B 78 */	mr r3, r17
/* 8011A2EC 0011724C  38 81 00 90 */	addi r4, r1, 0x90
/* 8011A2F0 00117250  81 91 00 00 */	lwz r12, 0(r17)
/* 8011A2F4 00117254  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8011A2F8 00117258  7D 89 03 A6 */	mtctr r12
/* 8011A2FC 0011725C  4E 80 04 21 */	bctrl
/* 8011A300 00117260  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 8011A304 00117264  38 81 00 74 */	addi r4, r1, 0x74
/* 8011A308 00117268  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8011A30C 0011726C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8011A310 00117270  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8011A314 00117274  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8011A318 00117278  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8011A31C 0011727C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8011A320 00117280  81 83 00 00 */	lwz r12, 0(r3)
/* 8011A324 00117284  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8011A328 00117288  7D 89 03 A6 */	mtctr r12
/* 8011A32C 0011728C  4E 80 04 21 */	bctrl
/* 8011A330 00117290  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8011A334 00117294  38 81 00 68 */	addi r4, r1, 0x68
/* 8011A338 00117298  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8011A33C 0011729C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8011A340 001172A0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8011A344 001172A4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8011A348 001172A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8011A34C 001172AC  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 8011A350 001172B0  81 83 00 00 */	lwz r12, 0(r3)
/* 8011A354 001172B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8011A358 001172B8  7D 89 03 A6 */	mtctr r12
/* 8011A35C 001172BC  4E 80 04 21 */	bctrl
/* 8011A360 001172C0  38 7D 05 78 */	addi r3, r29, 0x578
/* 8011A364 001172C4  48 22 6A 21 */	bl Lock__6CTokenFv
/* 8011A368 001172C8  38 7D 05 90 */	addi r3, r29, 0x590
/* 8011A36C 001172CC  48 22 6A 19 */	bl Lock__6CTokenFv
/* 8011A370 001172D0  38 7D 04 60 */	addi r3, r29, 0x460
/* 8011A374 001172D4  38 80 00 00 */	li r4, 0
/* 8011A378 001172D8  48 11 99 ED */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 8011A37C 001172DC  3C 1B 00 01 */	addis r0, r27, 1
/* 8011A380 001172E0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8011A384 001172E4  41 82 00 BC */	beq lbl_8011A440
/* 8011A388 001172E8  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 8011A38C 001172EC  93 61 00 30 */	stw r27, 0x30(r1)
/* 8011A390 001172F0  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8011A394 001172F4  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8011A398 001172F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8011A39C 001172FC  38 61 00 24 */	addi r3, r1, 0x24
/* 8011A3A0 00117300  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8011A3A4 00117304  81 84 00 00 */	lwz r12, 0(r4)
/* 8011A3A8 00117308  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8011A3AC 0011730C  7D 89 03 A6 */	mtctr r12
/* 8011A3B0 00117310  4E 80 04 21 */	bctrl
/* 8011A3B4 00117314  3A 21 00 5C */	addi r17, r1, 0x5c
/* 8011A3B8 00117318  38 81 00 24 */	addi r4, r1, 0x24
/* 8011A3BC 0011731C  7E 23 8B 78 */	mr r3, r17
/* 8011A3C0 00117320  48 22 6A E9 */	bl __ct__6CTokenFRC6CToken
/* 8011A3C4 00117324  7E 23 8B 78 */	mr r3, r17
/* 8011A3C8 00117328  48 22 6A 45 */	bl GetObj__6CTokenFv
/* 8011A3CC 0011732C  80 03 00 04 */	lwz r0, 4(r3)
/* 8011A3D0 00117330  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011A3D4 00117334  88 1D 05 D0 */	lbz r0, 0x5d0(r29)
/* 8011A3D8 00117338  28 00 00 00 */	cmplwi r0, 0
/* 8011A3DC 0011733C  40 82 00 34 */	bne lbl_8011A410
/* 8011A3E0 00117340  36 3D 05 C4 */	addic. r17, r29, 0x5c4
/* 8011A3E4 00117344  41 82 00 20 */	beq lbl_8011A404
/* 8011A3E8 00117348  7E 23 8B 78 */	mr r3, r17
/* 8011A3EC 0011734C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8011A3F0 00117350  48 22 6A B9 */	bl __ct__6CTokenFRC6CToken
/* 8011A3F4 00117354  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011A3F8 00117358  7E 23 8B 78 */	mr r3, r17
/* 8011A3FC 0011735C  90 11 00 08 */	stw r0, 8(r17)
/* 8011A400 00117360  48 22 69 85 */	bl Lock__6CTokenFv
lbl_8011A404:
/* 8011A404 00117364  38 00 00 01 */	li r0, 1
/* 8011A408 00117368  98 1D 05 D0 */	stb r0, 0x5d0(r29)
/* 8011A40C 0011736C  48 00 00 1C */	b lbl_8011A428
lbl_8011A410:
/* 8011A410 00117370  3A 3D 05 C4 */	addi r17, r29, 0x5c4
/* 8011A414 00117374  38 81 00 5C */	addi r4, r1, 0x5c
/* 8011A418 00117378  7E 23 8B 78 */	mr r3, r17
/* 8011A41C 0011737C  48 22 68 A9 */	bl __as__6CTokenFRC6CToken
/* 8011A420 00117380  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011A424 00117384  90 11 00 08 */	stw r0, 8(r17)
lbl_8011A428:
/* 8011A428 00117388  38 61 00 5C */	addi r3, r1, 0x5c
/* 8011A42C 0011738C  38 80 00 00 */	li r4, 0
/* 8011A430 00117390  48 22 6A 11 */	bl __dt__6CTokenFv
/* 8011A434 00117394  38 61 00 24 */	addi r3, r1, 0x24
/* 8011A438 00117398  38 80 FF FF */	li r4, -1
/* 8011A43C 0011739C  48 22 6A 05 */	bl __dt__6CTokenFv
lbl_8011A440:
/* 8011A440 001173A0  7F A3 EB 78 */	mr r3, r29
/* 8011A444 001173A4  E3 E1 01 68 */	psq_l f31, 360(r1), 0, qr0
/* 8011A448 001173A8  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8011A44C 001173AC  BA 21 01 24 */	lmw r17, 0x124(r1)
/* 8011A450 001173B0  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8011A454 001173B4  7C 08 03 A6 */	mtlr r0
/* 8011A458 001173B8  38 21 01 70 */	addi r1, r1, 0x170
/* 8011A45C 001173BC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CF2F0
lbl_803CF2F0:

	# ROM: 0x3CC2F0
	.asciz "LCTR_FLOFLOWER"

.global lbl_803CF2FF
lbl_803CF2FF:

	# ROM: 0x3CC2FF
	.byte 0x46
	.asciz "ire1"

.global lbl_803CF305
lbl_803CF305:

	# ROM: 0x3CC305
	.byte 0x46, 0x69, 0x72
	.byte 0x65, 0x32, 0x00

.global lbl_803CF30B
lbl_803CF30B:

	# ROM: 0x3CC30B
	.byte 0x46
	.asciz "ire3"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900

.include "macros.inc"

.section .data
.balign 8


.global lbl_803E2078
lbl_803E2078:
	# ROM: 0x3DF078
	.4byte lbl_803D00A0
	.4byte lbl_803D00AC
	.4byte lbl_803D00B8
	.4byte lbl_803D00C4
	.4byte lbl_803D00D0
	.4byte lbl_803D00DC
	.4byte lbl_803D00E8
	.4byte lbl_803D00F4
	.4byte lbl_803D0100
	.4byte lbl_803D010C
	.4byte lbl_803D0119
	.4byte lbl_803D0126
	.4byte lbl_803D0133
	.4byte lbl_803D0140
	.4byte lbl_803D014D
	.4byte lbl_803D015A

.global lbl_803E20B8
lbl_803E20B8:
	# ROM: 0x3DF0B8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E20C4
lbl_803E20C4:
	# ROM: 0x3DF0C4
	.4byte 0
	.4byte 0
	.4byte __dt__12CPuddleSporeFv
	.4byte Accept__12CPuddleSporeFR8IVisitor
	.4byte PreThink__12CPuddleSporeFfR13CStateManager
	.4byte Think__12CPuddleSporeFfR13CStateManager
	.4byte AcceptScriptMsg__12CPuddleSporeF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CPuddleSporeCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__12CPuddleSporeFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__12CPuddleSporeCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__12CPuddleSporeFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__12CPuddleSporeFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__12CPuddleSporeCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__12CPuddleSporeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__12CPuddleSporeFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
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
	.4byte Run__12CPuddleSporeFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__12CPuddleSporeFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__12CPuddleSporeFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__12CPuddleSporeFR13CStateManager9EStateMsgf
	.4byte InActive__12CPuddleSporeFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__12CPuddleSporeFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__12CPuddleSporeFR13CStateManagerf
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
	.4byte AnimOver__12CPuddleSporeFR13CStateManagerf
	.4byte ShouldAttack__12CPuddleSporeFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__12CPuddleSporeFR13CStateManagerf
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
	.4byte ProjectileInfo__12CPuddleSporeFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.section .sdata
.balign 8

.global lbl_805A77A0
lbl_805A77A0:
	# ROM: 0x3F5140
	.4byte 0x00000010
	.4byte 0


.section .text, "ax"

.global __dt__12CPuddleSporeFv
__dt__12CPuddleSporeFv:
/* 80146AAC 00143A0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80146AB0 00143A10  7C 08 02 A6 */	mflr r0
/* 80146AB4 00143A14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80146AB8 00143A18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80146ABC 00143A1C  7C 9F 23 78 */	mr r31, r4
/* 80146AC0 00143A20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80146AC4 00143A24  7C 7E 1B 79 */	or. r30, r3, r3
/* 80146AC8 00143A28  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80146ACC 00143A2C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80146AD0 00143A30  41 82 00 F4 */	beq lbl_80146BC4
/* 80146AD4 00143A34  3C 60 80 3E */	lis r3, lbl_803E20C4@ha
/* 80146AD8 00143A38  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80146ADC 00143A3C  38 03 20 C4 */	addi r0, r3, lbl_803E20C4@l
/* 80146AE0 00143A40  90 1E 00 00 */	stw r0, 0(r30)
/* 80146AE4 00143A44  41 82 00 20 */	beq lbl_80146B04
/* 80146AE8 00143A48  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80146AEC 00143A4C  41 82 00 18 */	beq lbl_80146B04
/* 80146AF0 00143A50  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80146AF4 00143A54  41 82 00 10 */	beq lbl_80146B04
/* 80146AF8 00143A58  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 80146AFC 00143A5C  38 80 00 00 */	li r4, 0
/* 80146B00 00143A60  48 1F A3 41 */	bl __dt__6CTokenFv
lbl_80146B04:
/* 80146B04 00143A64  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80146B08 00143A68  41 82 00 5C */	beq lbl_80146B64
/* 80146B0C 00143A6C  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80146B10 00143A70  83 9E 05 E8 */	lwz r28, 0x5e8(r30)
/* 80146B14 00143A74  1C 00 03 40 */	mulli r0, r0, 0x340
/* 80146B18 00143A78  93 81 00 0C */	stw r28, 0xc(r1)
/* 80146B1C 00143A7C  7F BC 02 14 */	add r29, r28, r0
/* 80146B20 00143A80  93 81 00 08 */	stw r28, 8(r1)
/* 80146B24 00143A84  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80146B28 00143A88  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80146B2C 00143A8C  48 00 00 20 */	b lbl_80146B4C
lbl_80146B30:
/* 80146B30 00143A90  7F 83 E3 78 */	mr r3, r28
/* 80146B34 00143A94  38 80 FF FF */	li r4, -1
/* 80146B38 00143A98  81 9C 00 00 */	lwz r12, 0(r28)
/* 80146B3C 00143A9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80146B40 00143AA0  7D 89 03 A6 */	mtctr r12
/* 80146B44 00143AA4  4E 80 04 21 */	bctrl
/* 80146B48 00143AA8  3B 9C 03 40 */	addi r28, r28, 0x340
lbl_80146B4C:
/* 80146B4C 00143AAC  7C 1C E8 40 */	cmplw r28, r29
/* 80146B50 00143AB0  40 82 FF E0 */	bne lbl_80146B30
/* 80146B54 00143AB4  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80146B58 00143AB8  28 03 00 00 */	cmplwi r3, 0
/* 80146B5C 00143ABC  41 82 00 08 */	beq lbl_80146B64
/* 80146B60 00143AC0  48 1C ED D1 */	bl Free__7CMemoryFPCv
lbl_80146B64:
/* 80146B64 00143AC4  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80146B68 00143AC8  41 82 00 18 */	beq lbl_80146B80
/* 80146B6C 00143ACC  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80146B70 00143AD0  41 82 00 10 */	beq lbl_80146B80
/* 80146B74 00143AD4  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80146B78 00143AD8  38 80 00 00 */	li r4, 0
/* 80146B7C 00143ADC  48 1F A2 C5 */	bl __dt__6CTokenFv
lbl_80146B80:
/* 80146B80 00143AE0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80146B84 00143AE4  41 82 00 24 */	beq lbl_80146BA8
/* 80146B88 00143AE8  3C 60 80 3F */	lis r3, __vt__16CCollidableAABox@ha
/* 80146B8C 00143AEC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80146B90 00143AF0  38 03 CA D0 */	addi r0, r3, __vt__16CCollidableAABox@l
/* 80146B94 00143AF4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80146B98 00143AF8  41 82 00 10 */	beq lbl_80146BA8
/* 80146B9C 00143AFC  3C 60 80 3E */	lis r3, __vt__19CCollisionPrimitive@ha
/* 80146BA0 00143B00  38 03 97 E4 */	addi r0, r3, __vt__19CCollisionPrimitive@l
/* 80146BA4 00143B04  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80146BA8:
/* 80146BA8 00143B08  7F C3 F3 78 */	mr r3, r30
/* 80146BAC 00143B0C  38 80 00 00 */	li r4, 0
/* 80146BB0 00143B10  4B F3 09 C1 */	bl __dt__10CPatternedFv
/* 80146BB4 00143B14  7F E0 07 35 */	extsh. r0, r31
/* 80146BB8 00143B18  40 81 00 0C */	ble lbl_80146BC4
/* 80146BBC 00143B1C  7F C3 F3 78 */	mr r3, r30
/* 80146BC0 00143B20  48 1C ED 71 */	bl Free__7CMemoryFPCv
lbl_80146BC4:
/* 80146BC4 00143B24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80146BC8 00143B28  7F C3 F3 78 */	mr r3, r30
/* 80146BCC 00143B2C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80146BD0 00143B30  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80146BD4 00143B34  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80146BD8 00143B38  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80146BDC 00143B3C  7C 08 03 A6 */	mtlr r0
/* 80146BE0 00143B40  38 21 00 30 */	addi r1, r1, 0x30
/* 80146BE4 00143B44  4E 80 00 20 */	blr

.global Attack__12CPuddleSporeFR13CStateManager9EStateMsgf
Attack__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 80146BE8 00143B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80146BEC 00143B4C  7C 08 02 A6 */	mflr r0
/* 80146BF0 00143B50  2C 05 00 01 */	cmpwi r5, 1
/* 80146BF4 00143B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80146BF8 00143B58  41 82 00 34 */	beq lbl_80146C2C
/* 80146BFC 00143B5C  40 80 00 10 */	bge lbl_80146C0C
/* 80146C00 00143B60  2C 05 00 00 */	cmpwi r5, 0
/* 80146C04 00143B64  40 80 00 14 */	bge lbl_80146C18
/* 80146C08 00143B68  48 00 00 60 */	b lbl_80146C68
lbl_80146C0C:
/* 80146C0C 00143B6C  2C 05 00 03 */	cmpwi r5, 3
/* 80146C10 00143B70  40 80 00 58 */	bge lbl_80146C68
/* 80146C14 00143B74  48 00 00 4C */	b lbl_80146C60
lbl_80146C18:
/* 80146C18 00143B78  38 00 00 01 */	li r0, 1
/* 80146C1C 00143B7C  C0 02 9C 88 */	lfs f0, lbl_805AB9A8@sda21(r2)
/* 80146C20 00143B80  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80146C24 00143B84  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80146C28 00143B88  48 00 00 40 */	b lbl_80146C68
lbl_80146C2C:
/* 80146C2C 00143B8C  3C A0 80 3E */	lis r5, lbl_803E20B8@ha
/* 80146C30 00143B90  38 C1 00 08 */	addi r6, r1, 8
/* 80146C34 00143B94  39 45 20 B8 */	addi r10, r5, lbl_803E20B8@l
/* 80146C38 00143B98  38 A0 00 07 */	li r5, 7
/* 80146C3C 00143B9C  81 2A 00 00 */	lwz r9, 0(r10)
/* 80146C40 00143BA0  38 E0 00 01 */	li r7, 1
/* 80146C44 00143BA4  81 0A 00 04 */	lwz r8, 4(r10)
/* 80146C48 00143BA8  80 0A 00 08 */	lwz r0, 8(r10)
/* 80146C4C 00143BAC  91 21 00 08 */	stw r9, 8(r1)
/* 80146C50 00143BB0  91 01 00 0C */	stw r8, 0xc(r1)
/* 80146C54 00143BB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80146C58 00143BB8  4B F3 5B 5D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80146C5C 00143BBC  48 00 00 0C */	b lbl_80146C68
lbl_80146C60:
/* 80146C60 00143BC0  38 00 00 00 */	li r0, 0
/* 80146C64 00143BC4  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_80146C68:
/* 80146C68 00143BC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80146C6C 00143BCC  7C 08 03 A6 */	mtlr r0
/* 80146C70 00143BD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80146C74 00143BD4  4E 80 00 20 */	blr

.global GetUp__12CPuddleSporeFR13CStateManager9EStateMsgf
GetUp__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 80146C78 00143BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80146C7C 00143BDC  7C 08 02 A6 */	mflr r0
/* 80146C80 00143BE0  2C 05 00 01 */	cmpwi r5, 1
/* 80146C84 00143BE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80146C88 00143BE8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80146C8C 00143BEC  7C 7F 1B 78 */	mr r31, r3
/* 80146C90 00143BF0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80146C94 00143BF4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80146C98 00143BF8  7C 9D 23 78 */	mr r29, r4
/* 80146C9C 00143BFC  41 82 00 AC */	beq lbl_80146D48
/* 80146CA0 00143C00  40 80 00 10 */	bge lbl_80146CB0
/* 80146CA4 00143C04  2C 05 00 00 */	cmpwi r5, 0
/* 80146CA8 00143C08  40 80 00 14 */	bge lbl_80146CBC
/* 80146CAC 00143C0C  48 00 01 68 */	b lbl_80146E14
lbl_80146CB0:
/* 80146CB0 00143C10  2C 05 00 03 */	cmpwi r5, 3
/* 80146CB4 00143C14  40 80 01 60 */	bge lbl_80146E14
/* 80146CB8 00143C18  48 00 01 54 */	b lbl_80146E0C
lbl_80146CBC:
/* 80146CBC 00143C1C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146CC0 00143C20  38 A0 00 00 */	li r5, 0
/* 80146CC4 00143C24  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146CC8 00143C28  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80146CCC 00143C2C  3C 80 80 3E */	lis r4, lbl_803DAA20@ha
/* 80146CD0 00143C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80146CD4 00143C34  38 04 AA 20 */	addi r0, r4, lbl_803DAA20@l
/* 80146CD8 00143C38  3B C3 00 04 */	addi r30, r3, 4
/* 80146CDC 00143C3C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80146CE0 00143C40  7F C3 F3 78 */	mr r3, r30
/* 80146CE4 00143C44  38 80 00 00 */	li r4, 0
/* 80146CE8 00143C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80146CEC 00143C4C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80146CF0 00143C50  4B FE A7 49 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80146CF4 00143C54  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80146CF8 00143C58  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 80146CFC 00143C5C  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 80146D00 00143C60  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146D04 00143C64  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80146D08 00143C68  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146D0C 00143C6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80146D10 00143C70  7F E3 FB 78 */	mr r3, r31
/* 80146D14 00143C74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80146D18 00143C78  7F A4 EB 78 */	mr r4, r29
/* 80146D1C 00143C7C  90 BE 00 C0 */	stw r5, 0xc0(r30)
/* 80146D20 00143C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80146D24 00143C84  C0 3F 05 80 */	lfs f1, 0x580(r31)
/* 80146D28 00143C88  48 00 0B 39 */	bl KnockPlayer__12CPuddleSporeFR13CStateManagerf
/* 80146D2C 00143C8C  C0 22 9C 88 */	lfs f1, lbl_805AB9A8@sda21(r2)
/* 80146D30 00143C90  38 00 00 00 */	li r0, 0
/* 80146D34 00143C94  C0 02 9C 8C */	lfs f0, lbl_805AB9AC@sda21(r2)
/* 80146D38 00143C98  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 80146D3C 00143C9C  D0 1F 05 98 */	stfs f0, 0x598(r31)
/* 80146D40 00143CA0  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80146D44 00143CA4  48 00 00 D0 */	b lbl_80146E14
lbl_80146D48:
/* 80146D48 00143CA8  C0 3F 05 80 */	lfs f1, 0x580(r31)
/* 80146D4C 00143CAC  C0 02 9C 90 */	lfs f0, lbl_805AB9B0@sda21(r2)
/* 80146D50 00143CB0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80146D54 00143CB4  48 00 0B 0D */	bl KnockPlayer__12CPuddleSporeFR13CStateManagerf
/* 80146D58 00143CB8  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 80146D5C 00143CBC  2C 00 00 01 */	cmpwi r0, 1
/* 80146D60 00143CC0  41 82 00 90 */	beq lbl_80146DF0
/* 80146D64 00143CC4  40 80 00 B0 */	bge lbl_80146E14
/* 80146D68 00143CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80146D6C 00143CCC  40 80 00 08 */	bge lbl_80146D74
/* 80146D70 00143CD0  48 00 00 A4 */	b lbl_80146E14
lbl_80146D74:
/* 80146D74 00143CD4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146D78 00143CD8  38 A0 00 00 */	li r5, 0
/* 80146D7C 00143CDC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146D80 00143CE0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80146D84 00143CE4  3C 80 80 3E */	lis r4, lbl_803DAA20@ha
/* 80146D88 00143CE8  90 01 00 08 */	stw r0, 8(r1)
/* 80146D8C 00143CEC  38 04 AA 20 */	addi r0, r4, lbl_803DAA20@l
/* 80146D90 00143CF0  3B C3 00 04 */	addi r30, r3, 4
/* 80146D94 00143CF4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80146D98 00143CF8  7F C3 F3 78 */	mr r3, r30
/* 80146D9C 00143CFC  38 80 00 00 */	li r4, 0
/* 80146DA0 00143D00  90 01 00 08 */	stw r0, 8(r1)
/* 80146DA4 00143D04  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80146DA8 00143D08  4B FE A6 91 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80146DAC 00143D0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80146DB0 00143D10  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 80146DB4 00143D14  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 80146DB8 00143D18  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146DBC 00143D1C  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 80146DC0 00143D20  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146DC4 00143D24  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80146DC8 00143D28  90 81 00 08 */	stw r4, 8(r1)
/* 80146DCC 00143D2C  90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 80146DD0 00143D30  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80146DD4 00143D34  90 01 00 08 */	stw r0, 8(r1)
/* 80146DD8 00143D38  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80146DDC 00143D3C  2C 00 00 01 */	cmpwi r0, 1
/* 80146DE0 00143D40  40 82 00 34 */	bne lbl_80146E14
/* 80146DE4 00143D44  38 00 00 01 */	li r0, 1
/* 80146DE8 00143D48  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80146DEC 00143D4C  48 00 00 28 */	b lbl_80146E14
lbl_80146DF0:
/* 80146DF0 00143D50  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80146DF4 00143D54  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80146DF8 00143D58  2C 00 00 01 */	cmpwi r0, 1
/* 80146DFC 00143D5C  41 82 00 18 */	beq lbl_80146E14
/* 80146E00 00143D60  38 00 00 01 */	li r0, 1
/* 80146E04 00143D64  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80146E08 00143D68  48 00 00 0C */	b lbl_80146E14
lbl_80146E0C:
/* 80146E0C 00143D6C  38 00 00 00 */	li r0, 0
/* 80146E10 00143D70  90 1F 05 C8 */	stw r0, 0x5c8(r31)
lbl_80146E14:
/* 80146E14 00143D74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80146E18 00143D78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80146E1C 00143D7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80146E20 00143D80  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80146E24 00143D84  7C 08 03 A6 */	mtlr r0
/* 80146E28 00143D88  38 21 00 30 */	addi r1, r1, 0x30
/* 80146E2C 00143D8C  4E 80 00 20 */	blr

.global TurnAround__12CPuddleSporeFR13CStateManager9EStateMsgf
TurnAround__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 80146E30 00143D90  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80146E34 00143D94  7C 08 02 A6 */	mflr r0
/* 80146E38 00143D98  2C 05 00 01 */	cmpwi r5, 1
/* 80146E3C 00143D9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80146E40 00143DA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80146E44 00143DA4  41 82 00 60 */	beq lbl_80146EA4
/* 80146E48 00143DA8  40 80 00 10 */	bge lbl_80146E58
/* 80146E4C 00143DAC  2C 05 00 00 */	cmpwi r5, 0
/* 80146E50 00143DB0  40 80 00 14 */	bge lbl_80146E64
/* 80146E54 00143DB4  48 00 01 54 */	b lbl_80146FA8
lbl_80146E58:
/* 80146E58 00143DB8  2C 05 00 03 */	cmpwi r5, 3
/* 80146E5C 00143DBC  40 80 01 4C */	bge lbl_80146FA8
/* 80146E60 00143DC0  48 00 01 38 */	b lbl_80146F98
lbl_80146E64:
/* 80146E64 00143DC4  C0 22 9C 88 */	lfs f1, lbl_805AB9A8@sda21(r2)
/* 80146E68 00143DC8  38 A0 00 00 */	li r5, 0
/* 80146E6C 00143DCC  C0 02 9C 94 */	lfs f0, lbl_805AB9B4@sda21(r2)
/* 80146E70 00143DD0  38 00 00 02 */	li r0, 2
/* 80146E74 00143DD4  D0 23 05 68 */	stfs f1, 0x568(r3)
/* 80146E78 00143DD8  D0 23 05 6C */	stfs f1, 0x56c(r3)
/* 80146E7C 00143DDC  88 83 04 00 */	lbz r4, 0x400(r3)
/* 80146E80 00143DE0  50 A4 3E 30 */	rlwimi r4, r5, 7, 0x18, 0x18
/* 80146E84 00143DE4  98 83 04 00 */	stb r4, 0x400(r3)
/* 80146E88 00143DE8  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80146E8C 00143DEC  90 03 05 C8 */	stw r0, 0x5c8(r3)
/* 80146E90 00143DF0  90 A3 05 CC */	stw r5, 0x5cc(r3)
/* 80146E94 00143DF4  88 03 06 14 */	lbz r0, 0x614(r3)
/* 80146E98 00143DF8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80146E9C 00143DFC  98 03 06 14 */	stb r0, 0x614(r3)
/* 80146EA0 00143E00  48 00 01 08 */	b lbl_80146FA8
lbl_80146EA4:
/* 80146EA4 00143E04  80 03 05 CC */	lwz r0, 0x5cc(r3)
/* 80146EA8 00143E08  2C 00 00 01 */	cmpwi r0, 1
/* 80146EAC 00143E0C  41 82 00 D0 */	beq lbl_80146F7C
/* 80146EB0 00143E10  40 80 00 F8 */	bge lbl_80146FA8
/* 80146EB4 00143E14  2C 00 00 00 */	cmpwi r0, 0
/* 80146EB8 00143E18  40 80 00 0C */	bge lbl_80146EC4
/* 80146EBC 00143E1C  48 00 00 EC */	b lbl_80146FA8
/* 80146EC0 00143E20  48 00 00 E8 */	b lbl_80146FA8
lbl_80146EC4:
/* 80146EC4 00143E24  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80146EC8 00143E28  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80146ECC 00143E2C  2C 00 00 02 */	cmpwi r0, 2
/* 80146ED0 00143E30  40 82 00 1C */	bne lbl_80146EEC
/* 80146ED4 00143E34  38 80 00 01 */	li r4, 1
/* 80146ED8 00143E38  90 83 05 CC */	stw r4, 0x5cc(r3)
/* 80146EDC 00143E3C  88 03 06 14 */	lbz r0, 0x614(r3)
/* 80146EE0 00143E40  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80146EE4 00143E44  98 03 06 14 */	stb r0, 0x614(r3)
/* 80146EE8 00143E48  48 00 00 C0 */	b lbl_80146FA8
lbl_80146EEC:
/* 80146EEC 00143E4C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146EF0 00143E50  C0 02 9C 88 */	lfs f0, lbl_805AB9A8@sda21(r2)
/* 80146EF4 00143E54  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146EF8 00143E58  C0 22 9C 98 */	lfs f1, lbl_805AB9B8@sda21(r2)
/* 80146EFC 00143E5C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 80146F00 00143E60  90 01 00 08 */	stw r0, 8(r1)
/* 80146F04 00143E64  38 A3 AA 50 */	addi r5, r3, lbl_803DAA50@l
/* 80146F08 00143E68  38 60 00 03 */	li r3, 3
/* 80146F0C 00143E6C  38 00 00 01 */	li r0, 1
/* 80146F10 00143E70  3B E4 00 04 */	addi r31, r4, 4
/* 80146F14 00143E74  90 61 00 0C */	stw r3, 0xc(r1)
/* 80146F18 00143E78  7F E3 FB 78 */	mr r3, r31
/* 80146F1C 00143E7C  38 80 00 03 */	li r4, 3
/* 80146F20 00143E80  90 A1 00 08 */	stw r5, 8(r1)
/* 80146F24 00143E84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80146F28 00143E88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80146F2C 00143E8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80146F30 00143E90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80146F34 00143E94  4B FE A5 05 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80146F38 00143E98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80146F3C 00143E9C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 80146F40 00143EA0  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 80146F44 00143EA4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80146F48 00143EA8  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80146F4C 00143EAC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80146F50 00143EB0  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80146F54 00143EB4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80146F58 00143EB8  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 80146F5C 00143EBC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80146F60 00143EC0  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 80146F64 00143EC4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80146F68 00143EC8  90 BF 00 EC */	stw r5, 0xec(r31)
/* 80146F6C 00143ECC  90 81 00 08 */	stw r4, 8(r1)
/* 80146F70 00143ED0  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 80146F74 00143ED4  90 01 00 08 */	stw r0, 8(r1)
/* 80146F78 00143ED8  48 00 00 30 */	b lbl_80146FA8
lbl_80146F7C:
/* 80146F7C 00143EDC  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80146F80 00143EE0  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80146F84 00143EE4  2C 00 00 02 */	cmpwi r0, 2
/* 80146F88 00143EE8  41 82 00 20 */	beq lbl_80146FA8
/* 80146F8C 00143EEC  38 00 00 02 */	li r0, 2
/* 80146F90 00143EF0  90 03 05 CC */	stw r0, 0x5cc(r3)
/* 80146F94 00143EF4  48 00 00 14 */	b lbl_80146FA8
lbl_80146F98:
/* 80146F98 00143EF8  88 03 06 14 */	lbz r0, 0x614(r3)
/* 80146F9C 00143EFC  38 80 00 00 */	li r4, 0
/* 80146FA0 00143F00  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80146FA4 00143F04  98 03 06 14 */	stb r0, 0x614(r3)
lbl_80146FA8:
/* 80146FA8 00143F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80146FAC 00143F0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80146FB0 00143F10  7C 08 03 A6 */	mtlr r0
/* 80146FB4 00143F14  38 21 00 30 */	addi r1, r1, 0x30
/* 80146FB8 00143F18  4E 80 00 20 */	blr

.global Run__12CPuddleSporeFR13CStateManager9EStateMsgf
Run__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 80146FBC 00143F1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80146FC0 00143F20  7C 08 02 A6 */	mflr r0
/* 80146FC4 00143F24  2C 05 00 01 */	cmpwi r5, 1
/* 80146FC8 00143F28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80146FCC 00143F2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80146FD0 00143F30  7C 7F 1B 78 */	mr r31, r3
/* 80146FD4 00143F34  41 82 00 54 */	beq lbl_80147028
/* 80146FD8 00143F38  40 80 00 10 */	bge lbl_80146FE8
/* 80146FDC 00143F3C  2C 05 00 00 */	cmpwi r5, 0
/* 80146FE0 00143F40  40 80 00 14 */	bge lbl_80146FF4
/* 80146FE4 00143F44  48 00 01 60 */	b lbl_80147144
lbl_80146FE8:
/* 80146FE8 00143F48  2C 05 00 03 */	cmpwi r5, 3
/* 80146FEC 00143F4C  40 80 01 58 */	bge lbl_80147144
/* 80146FF0 00143F50  48 00 01 00 */	b lbl_801470F0
lbl_80146FF4:
/* 80146FF4 00143F54  38 00 00 01 */	li r0, 1
/* 80146FF8 00143F58  38 60 00 00 */	li r3, 0
/* 80146FFC 00143F5C  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80147000 00143F60  C0 22 9C 88 */	lfs f1, lbl_805AB9A8@sda21(r2)
/* 80147004 00143F64  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 80147008 00143F68  C0 02 9C 9C */	lfs f0, lbl_805AB9BC@sda21(r2)
/* 8014700C 00143F6C  D0 3F 05 68 */	stfs f1, 0x568(r31)
/* 80147010 00143F70  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 80147014 00143F74  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80147018 00143F78  98 1F 06 14 */	stb r0, 0x614(r31)
/* 8014701C 00143F7C  D0 3F 05 98 */	stfs f1, 0x598(r31)
/* 80147020 00143F80  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 80147024 00143F84  48 00 01 20 */	b lbl_80147144
lbl_80147028:
/* 80147028 00143F88  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 8014702C 00143F8C  2C 00 00 01 */	cmpwi r0, 1
/* 80147030 00143F90  41 82 00 A4 */	beq lbl_801470D4
/* 80147034 00143F94  40 80 01 10 */	bge lbl_80147144
/* 80147038 00143F98  2C 00 00 00 */	cmpwi r0, 0
/* 8014703C 00143F9C  40 80 00 0C */	bge lbl_80147048
/* 80147040 00143FA0  48 00 01 04 */	b lbl_80147144
/* 80147044 00143FA4  48 00 01 00 */	b lbl_80147144
lbl_80147048:
/* 80147048 00143FA8  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 8014704C 00143FAC  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 80147050 00143FB0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80147054 00143FB4  40 82 00 1C */	bne lbl_80147070
/* 80147058 00143FB8  38 60 00 01 */	li r3, 1
/* 8014705C 00143FBC  90 7F 05 CC */	stw r3, 0x5cc(r31)
/* 80147060 00143FC0  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 80147064 00143FC4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80147068 00143FC8  98 1F 06 14 */	stb r0, 0x614(r31)
/* 8014706C 00143FCC  48 00 00 D8 */	b lbl_80147144
lbl_80147070:
/* 80147070 00143FD0  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80147074 00143FD4  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 80147078 00143FD8  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8014707C 00143FDC  38 80 00 08 */	li r4, 8
/* 80147080 00143FE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80147084 00143FE4  38 A3 AA 2C */	addi r5, r3, lbl_803DAA2C@l
/* 80147088 00143FE8  38 00 00 00 */	li r0, 0
/* 8014708C 00143FEC  3B E6 00 04 */	addi r31, r6, 4
/* 80147090 00143FF0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80147094 00143FF4  7F E3 FB 78 */	mr r3, r31
/* 80147098 00143FF8  38 80 00 08 */	li r4, 8
/* 8014709C 00143FFC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801470A0 00144000  90 01 00 18 */	stw r0, 0x18(r1)
/* 801470A4 00144004  4B FE A3 95 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801470A8 00144008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801470AC 0014400C  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 801470B0 00144010  38 83 AA 2C */	addi r4, r3, lbl_803DAA2C@l
/* 801470B4 00144014  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801470B8 00144018  90 1F 01 58 */	stw r0, 0x158(r31)
/* 801470BC 0014401C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801470C0 00144020  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801470C4 00144024  90 81 00 10 */	stw r4, 0x10(r1)
/* 801470C8 00144028  90 7F 01 5C */	stw r3, 0x15c(r31)
/* 801470CC 0014402C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801470D0 00144030  48 00 00 74 */	b lbl_80147144
lbl_801470D4:
/* 801470D4 00144034  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801470D8 00144038  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801470DC 0014403C  2C 00 00 0A */	cmpwi r0, 0xa
/* 801470E0 00144040  41 82 00 64 */	beq lbl_80147144
/* 801470E4 00144044  38 00 00 02 */	li r0, 2
/* 801470E8 00144048  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 801470EC 0014404C  48 00 00 58 */	b lbl_80147144
lbl_801470F0:
/* 801470F0 00144050  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801470F4 00144054  38 00 00 0A */	li r0, 0xa
/* 801470F8 00144058  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801470FC 0014405C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80147100 00144060  38 81 00 08 */	addi r4, r1, 8
/* 80147104 00144064  90 61 00 08 */	stw r3, 8(r1)
/* 80147108 00144068  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8014710C 0014406C  38 63 00 04 */	addi r3, r3, 4
/* 80147110 00144070  4B FE A6 A9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80147114 00144074  34 01 00 08 */	addic. r0, r1, 8
/* 80147118 00144078  41 82 00 10 */	beq lbl_80147128
/* 8014711C 0014407C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80147120 00144080  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80147124 00144084  90 01 00 08 */	stw r0, 8(r1)
lbl_80147128:
/* 80147128 00144088  38 60 00 00 */	li r3, 0
/* 8014712C 0014408C  C0 02 9C 98 */	lfs f0, lbl_805AB9B8@sda21(r2)
/* 80147130 00144090  90 7F 05 C8 */	stw r3, 0x5c8(r31)
/* 80147134 00144094  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 80147138 00144098  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 8014713C 0014409C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80147140 001440A0  98 1F 06 14 */	stb r0, 0x614(r31)
lbl_80147144:
/* 80147144 001440A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80147148 001440A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8014714C 001440AC  7C 08 03 A6 */	mtlr r0
/* 80147150 001440B0  38 21 00 30 */	addi r1, r1, 0x30
/* 80147154 001440B4  4E 80 00 20 */	blr

.global Active__12CPuddleSporeFR13CStateManager9EStateMsgf
Active__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 80147158 001440B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014715C 001440BC  7C 08 02 A6 */	mflr r0
/* 80147160 001440C0  2C 05 00 01 */	cmpwi r5, 1
/* 80147164 001440C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80147168 001440C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014716C 001440CC  7C 7F 1B 78 */	mr r31, r3
/* 80147170 001440D0  41 82 00 78 */	beq lbl_801471E8
/* 80147174 001440D4  40 80 00 10 */	bge lbl_80147184
/* 80147178 001440D8  2C 05 00 00 */	cmpwi r5, 0
/* 8014717C 001440DC  40 80 00 14 */	bge lbl_80147190
/* 80147180 001440E0  48 00 00 68 */	b lbl_801471E8
lbl_80147184:
/* 80147184 001440E4  2C 05 00 03 */	cmpwi r5, 3
/* 80147188 001440E8  40 80 00 60 */	bge lbl_801471E8
/* 8014718C 001440EC  48 00 00 40 */	b lbl_801471CC
lbl_80147190:
/* 80147190 001440F0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80147194 001440F4  38 80 00 02 */	li r4, 2
/* 80147198 001440F8  4B FF 38 41 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8014719C 001440FC  C0 02 9C 88 */	lfs f0, lbl_805AB9A8@sda21(r2)
/* 801471A0 00144100  38 60 00 01 */	li r3, 1
/* 801471A4 00144104  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 801471A8 00144108  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 801471AC 0014410C  D0 1F 05 98 */	stfs f0, 0x598(r31)
/* 801471B0 00144110  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 801471B4 00144114  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801471B8 00144118  98 1F 06 14 */	stb r0, 0x614(r31)
/* 801471BC 0014411C  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 801471C0 00144120  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801471C4 00144124  98 1F 06 14 */	stb r0, 0x614(r31)
/* 801471C8 00144128  48 00 00 20 */	b lbl_801471E8
lbl_801471CC:
/* 801471CC 0014412C  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 801471D0 00144130  38 60 00 00 */	li r3, 0
/* 801471D4 00144134  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801471D8 00144138  98 1F 06 14 */	stb r0, 0x614(r31)
/* 801471DC 0014413C  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 801471E0 00144140  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801471E4 00144144  98 1F 06 14 */	stb r0, 0x614(r31)
lbl_801471E8:
/* 801471E8 00144148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801471EC 0014414C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801471F0 00144150  7C 08 03 A6 */	mtlr r0
/* 801471F4 00144154  38 21 00 10 */	addi r1, r1, 0x10
/* 801471F8 00144158  4E 80 00 20 */	blr

.global InActive__12CPuddleSporeFR13CStateManager9EStateMsgf
InActive__12CPuddleSporeFR13CStateManager9EStateMsgf:
/* 801471FC 0014415C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80147200 00144160  7C 08 02 A6 */	mflr r0
/* 80147204 00144164  2C 05 00 01 */	cmpwi r5, 1
/* 80147208 00144168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014720C 0014416C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80147210 00144170  7C 7F 1B 78 */	mr r31, r3
/* 80147214 00144174  41 82 00 34 */	beq lbl_80147248
/* 80147218 00144178  40 80 00 30 */	bge lbl_80147248
/* 8014721C 0014417C  2C 05 00 00 */	cmpwi r5, 0
/* 80147220 00144180  40 80 00 0C */	bge lbl_8014722C
/* 80147224 00144184  48 00 00 24 */	b lbl_80147248
/* 80147228 00144188  48 00 00 20 */	b lbl_80147248
lbl_8014722C:
/* 8014722C 0014418C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80147230 00144190  38 80 00 01 */	li r4, 1
/* 80147234 00144194  4B FF 37 A5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80147238 00144198  C0 22 9C 88 */	lfs f1, lbl_805AB9A8@sda21(r2)
/* 8014723C 0014419C  C0 02 9C 8C */	lfs f0, lbl_805AB9AC@sda21(r2)
/* 80147240 001441A0  D0 3F 05 6C */	stfs f1, 0x56c(r31)
/* 80147244 001441A4  D0 1F 05 98 */	stfs f0, 0x598(r31)
lbl_80147248:
/* 80147248 001441A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014724C 001441AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80147250 001441B0  7C 08 03 A6 */	mtlr r0
/* 80147254 001441B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80147258 001441B8  4E 80 00 20 */	blr

.global AnimOver__12CPuddleSporeFR13CStateManagerf
AnimOver__12CPuddleSporeFR13CStateManagerf:
/* 8014725C 001441BC  80 03 05 CC */	lwz r0, 0x5cc(r3)
/* 80147260 001441C0  20 00 00 02 */	subfic r0, r0, 2
/* 80147264 001441C4  7C 00 00 34 */	cntlzw r0, r0
/* 80147268 001441C8  54 03 D9 7E */	srwi r3, r0, 5
/* 8014726C 001441CC  4E 80 00 20 */	blr

.global ShouldTurn__12CPuddleSporeFR13CStateManagerf
ShouldTurn__12CPuddleSporeFR13CStateManagerf:
/* 80147270 001441D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80147274 001441D4  7C 08 02 A6 */	mflr r0
/* 80147278 001441D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8014727C 001441DC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80147280 001441E0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80147284 001441E4  7C 7E 1B 78 */	mr r30, r3
/* 80147288 001441E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8014728C 001441EC  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 80147290 001441F0  7F C4 F3 78 */	mr r4, r30
/* 80147294 001441F4  4B FD 36 99 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80147298 001441F8  7F E4 FB 78 */	mr r4, r31
/* 8014729C 001441FC  38 61 00 08 */	addi r3, r1, 8
/* 801472A0 00144200  4B FD 36 8D */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801472A4 00144204  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801472A8 00144208  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801472AC 0014420C  C0 02 9C A0 */	lfs f0, lbl_805AB9C0@sda21(r2)
/* 801472B0 00144210  EC 22 08 2A */	fadds f1, f2, f1
/* 801472B4 00144214  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801472B8 00144218  EC 01 00 32 */	fmuls f0, f1, f0
/* 801472BC 0014421C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801472C0 00144220  40 80 00 68 */	bge lbl_80147328
/* 801472C4 00144224  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801472C8 00144228  C0 01 00 08 */	lfs f0, 8(r1)
/* 801472CC 0014422C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801472D0 00144230  4C 41 13 82 */	cror 2, 1, 2
/* 801472D4 00144234  40 82 00 54 */	bne lbl_80147328
/* 801472D8 00144238  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801472DC 0014423C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801472E0 00144240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801472E4 00144244  4C 41 13 82 */	cror 2, 1, 2
/* 801472E8 00144248  40 82 00 40 */	bne lbl_80147328
/* 801472EC 0014424C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801472F0 00144250  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801472F4 00144254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801472F8 00144258  4C 41 13 82 */	cror 2, 1, 2
/* 801472FC 0014425C  40 82 00 2C */	bne lbl_80147328
/* 80147300 00144260  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80147304 00144264  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80147308 00144268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8014730C 0014426C  4C 41 13 82 */	cror 2, 1, 2
/* 80147310 00144270  40 82 00 18 */	bne lbl_80147328
/* 80147314 00144274  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80147318 00144278  2C 00 00 01 */	cmpwi r0, 1
/* 8014731C 0014427C  40 82 00 0C */	bne lbl_80147328
/* 80147320 00144280  38 60 00 01 */	li r3, 1
/* 80147324 00144284  48 00 00 1C */	b lbl_80147340
lbl_80147328:
/* 80147328 00144288  C0 3E 05 68 */	lfs f1, 0x568(r30)
/* 8014732C 0014428C  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80147330 00144290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147334 00144294  4C 41 13 82 */	cror 2, 1, 2
/* 80147338 00144298  7C 00 00 26 */	mfcr r0
/* 8014733C 0014429C  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_80147340:
/* 80147340 001442A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80147344 001442A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80147348 001442A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014734C 001442AC  7C 08 03 A6 */	mtlr r0
/* 80147350 001442B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80147354 001442B4  4E 80 00 20 */	blr

.global ShouldAttack__12CPuddleSporeFR13CStateManagerf
ShouldAttack__12CPuddleSporeFR13CStateManagerf:
/* 80147358 001442B8  C0 23 05 68 */	lfs f1, 0x568(r3)
/* 8014735C 001442BC  C0 03 05 74 */	lfs f0, 0x574(r3)
/* 80147360 001442C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147364 001442C4  4C 41 13 82 */	cror 2, 1, 2
/* 80147368 001442C8  7C 00 00 26 */	mfcr r0
/* 8014736C 001442CC  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80147370 001442D0  4E 80 00 20 */	blr

.global InAttackPosition__12CPuddleSporeFR13CStateManagerf
InAttackPosition__12CPuddleSporeFR13CStateManagerf:
/* 80147374 001442D4  C0 23 05 68 */	lfs f1, 0x568(r3)
/* 80147378 001442D8  C0 03 05 70 */	lfs f0, 0x570(r3)
/* 8014737C 001442DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147380 001442E0  4C 41 13 82 */	cror 2, 1, 2
/* 80147384 001442E4  7C 00 00 26 */	mfcr r0
/* 80147388 001442E8  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8014738C 001442EC  4E 80 00 20 */	blr

.global UpdateBoundingState__12CPuddleSporeFRC6CAABoxR13CStateManager
UpdateBoundingState__12CPuddleSporeFRC6CAABoxR13CStateManager:
/* 80147390 001442F0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80147394 001442F4  7C 08 02 A6 */	mflr r0
/* 80147398 001442F8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8014739C 001442FC  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 801473A0 00144300  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, qr0
/* 801473A4 00144304  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 801473A8 00144308  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, qr0
/* 801473AC 0014430C  93 E1 01 AC */	stw r31, 0x1ac(r1)
/* 801473B0 00144310  93 C1 01 A8 */	stw r30, 0x1a8(r1)
/* 801473B4 00144314  93 A1 01 A4 */	stw r29, 0x1a4(r1)
/* 801473B8 00144318  93 81 01 A0 */	stw r28, 0x1a0(r1)
/* 801473BC 0014431C  FF E0 08 90 */	fmr f31, f1
/* 801473C0 00144320  7C 7D 1B 78 */	mr r29, r3
/* 801473C4 00144324  7C 9C 23 78 */	mr r28, r4
/* 801473C8 00144328  7C BE 2B 78 */	mr r30, r5
/* 801473CC 0014432C  4B FD 32 8D */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 801473D0 00144330  38 61 00 90 */	addi r3, r1, 0x90
/* 801473D4 00144334  38 9D 00 68 */	addi r4, r29, 0x68
/* 801473D8 00144338  48 18 84 DD */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 801473DC 0014433C  C0 DC 00 00 */	lfs f6, 0(r28)
/* 801473E0 00144340  3C 60 80 3F */	lis r3, __vt__16CCollidableAABox@ha
/* 801473E4 00144344  39 03 CA D0 */	addi r8, r3, __vt__16CCollidableAABox@l
/* 801473E8 00144348  C0 BC 00 04 */	lfs f5, 4(r28)
/* 801473EC 0014434C  C0 9C 00 08 */	lfs f4, 8(r28)
/* 801473F0 00144350  3C A0 80 3E */	lis r5, __vt__19CCollisionPrimitive@ha
/* 801473F4 00144354  C0 7C 00 0C */	lfs f3, 0xc(r28)
/* 801473F8 00144358  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801473FC 0014435C  C0 5C 00 10 */	lfs f2, 0x10(r28)
/* 80147400 00144360  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 80147404 00144364  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80147408 00144368  38 05 97 E4 */	addi r0, r5, __vt__19CCollisionPrimitive@l
/* 8014740C 0014436C  91 01 00 90 */	stw r8, 0x90(r1)
/* 80147410 00144370  7C 85 23 78 */	mr r5, r4
/* 80147414 00144374  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80147418 00144378  38 61 00 74 */	addi r3, r1, 0x74
/* 8014741C 0014437C  D0 C1 00 A0 */	stfs f6, 0xa0(r1)
/* 80147420 00144380  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 80147424 00144384  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80147428 00144388  D0 61 00 AC */	stfs f3, 0xac(r1)
/* 8014742C 0014438C  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80147430 00144390  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 80147434 00144394  D8 1D 05 A8 */	stfd f0, 0x5a8(r29)
/* 80147438 00144398  80 E1 00 A0 */	lwz r7, 0xa0(r1)
/* 8014743C 0014439C  80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 80147440 001443A0  90 FD 05 B0 */	stw r7, 0x5b0(r29)
/* 80147444 001443A4  90 DD 05 B4 */	stw r6, 0x5b4(r29)
/* 80147448 001443A8  80 E1 00 A8 */	lwz r7, 0xa8(r1)
/* 8014744C 001443AC  80 C1 00 AC */	lwz r6, 0xac(r1)
/* 80147450 001443B0  90 FD 05 B8 */	stw r7, 0x5b8(r29)
/* 80147454 001443B4  90 DD 05 BC */	stw r6, 0x5bc(r29)
/* 80147458 001443B8  80 E1 00 B0 */	lwz r7, 0xb0(r1)
/* 8014745C 001443BC  80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 80147460 001443C0  90 FD 05 C0 */	stw r7, 0x5c0(r29)
/* 80147464 001443C4  90 DD 05 C4 */	stw r6, 0x5c4(r29)
/* 80147468 001443C8  91 01 00 90 */	stw r8, 0x90(r1)
/* 8014746C 001443CC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80147470 001443D0  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 80147474 001443D4  48 1F 10 95 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80147478 001443D8  7F A4 EB 78 */	mr r4, r29
/* 8014747C 001443DC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80147480 001443E0  4B FD 34 AD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80147484 001443E4  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80147488 001443E8  3B 81 00 5C */	addi r28, r1, 0x5c
/* 8014748C 001443EC  2C 00 00 01 */	cmpwi r0, 1
/* 80147490 001443F0  40 82 00 A0 */	bne lbl_80147530
/* 80147494 001443F4  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 80147498 001443F8  4B FB 19 6D */	bl GetBallRadius__10CMorphBallCFv
/* 8014749C 001443FC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801474A0 00144400  FD 00 08 50 */	fneg f8, f1
/* 801474A4 00144404  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 801474A8 00144408  38 61 00 44 */	addi r3, r1, 0x44
/* 801474AC 0014440C  EC A0 08 2A */	fadds f5, f0, f1
/* 801474B0 00144410  C0 42 9C 88 */	lfs f2, lbl_805AB9A8@sda21(r2)
/* 801474B4 00144414  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801474B8 00144418  EC E3 10 2A */	fadds f7, f3, f2
/* 801474BC 0014441C  38 81 00 20 */	addi r4, r1, 0x20
/* 801474C0 00144420  EC C0 10 2A */	fadds f6, f0, f2
/* 801474C4 00144424  EC 05 08 2A */	fadds f0, f5, f1
/* 801474C8 00144428  38 A1 00 14 */	addi r5, r1, 0x14
/* 801474CC 0014442C  EC 87 08 2A */	fadds f4, f7, f1
/* 801474D0 00144430  EC 66 08 2A */	fadds f3, f6, f1
/* 801474D4 00144434  EC 47 40 2A */	fadds f2, f7, f8
/* 801474D8 00144438  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801474DC 0014443C  EC 26 40 2A */	fadds f1, f6, f8
/* 801474E0 00144440  EC 05 40 2A */	fadds f0, f5, f8
/* 801474E4 00144444  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801474E8 00144448  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801474EC 0014444C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801474F0 00144450  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801474F4 00144454  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801474F8 00144458  48 1F 10 11 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801474FC 0014445C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 80147500 00144460  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 80147504 00144464  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 80147508 00144468  80 81 00 50 */	lwz r4, 0x50(r1)
/* 8014750C 0014446C  80 61 00 54 */	lwz r3, 0x54(r1)
/* 80147510 00144470  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80147514 00144474  90 E1 00 74 */	stw r7, 0x74(r1)
/* 80147518 00144478  90 C1 00 78 */	stw r6, 0x78(r1)
/* 8014751C 0014447C  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80147520 00144480  90 81 00 80 */	stw r4, 0x80(r1)
/* 80147524 00144484  90 61 00 84 */	stw r3, 0x84(r1)
/* 80147528 00144488  90 01 00 88 */	stw r0, 0x88(r1)
/* 8014752C 0014448C  48 00 00 40 */	b lbl_8014756C
lbl_80147530:
/* 80147530 00144490  7F E4 FB 78 */	mr r4, r31
/* 80147534 00144494  38 61 00 2C */	addi r3, r1, 0x2c
/* 80147538 00144498  4B FD 33 F5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8014753C 0014449C  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 80147540 001444A0  80 C1 00 30 */	lwz r6, 0x30(r1)
/* 80147544 001444A4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80147548 001444A8  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8014754C 001444AC  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80147550 001444B0  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80147554 001444B4  90 E1 00 74 */	stw r7, 0x74(r1)
/* 80147558 001444B8  90 C1 00 78 */	stw r6, 0x78(r1)
/* 8014755C 001444BC  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80147560 001444C0  90 81 00 80 */	stw r4, 0x80(r1)
/* 80147564 001444C4  90 61 00 84 */	stw r3, 0x84(r1)
/* 80147568 001444C8  90 01 00 88 */	stw r0, 0x88(r1)
lbl_8014756C:
/* 8014756C 001444CC  7F 83 E3 78 */	mr r3, r28
/* 80147570 001444D0  38 81 00 74 */	addi r4, r1, 0x74
/* 80147574 001444D4  48 1F 06 11 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 80147578 001444D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8014757C 001444DC  41 82 01 3C */	beq lbl_801476B8
/* 80147580 001444E0  80 1D 05 C8 */	lwz r0, 0x5c8(r29)
/* 80147584 001444E4  2C 00 00 02 */	cmpwi r0, 2
/* 80147588 001444E8  40 82 00 0C */	bne lbl_80147594
/* 8014758C 001444EC  C0 42 9C A4 */	lfs f2, lbl_805AB9C4@sda21(r2)
/* 80147590 001444F0  48 00 00 08 */	b lbl_80147598
lbl_80147594:
/* 80147594 001444F4  C0 42 9C A8 */	lfs f2, lbl_805AB9C8@sda21(r2)
lbl_80147598:
/* 80147598 001444F8  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8014759C 001444FC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801475A0 00144500  C0 02 9C 88 */	lfs f0, lbl_805AB9A8@sda21(r2)
/* 801475A4 00144504  EC 23 08 28 */	fsubs f1, f3, f1
/* 801475A8 00144508  EF C2 08 2A */	fadds f30, f2, f1
/* 801475AC 0014450C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801475B0 00144510  40 81 01 08 */	ble lbl_801476B8
/* 801475B4 00144514  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801475B8 00144518  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801475BC 0014451C  40 80 00 FC */	bge lbl_801476B8
/* 801475C0 00144520  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 801475C4 00144524  38 00 00 20 */	li r0, 0x20
/* 801475C8 00144528  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 801475CC 0014452C  3B A0 00 00 */	li r29, 0
/* 801475D0 00144530  7C 60 00 38 */	and r0, r3, r0
/* 801475D4 00144534  7C 83 E8 38 */	and r3, r4, r29
/* 801475D8 00144538  7C 63 EA 78 */	xor r3, r3, r29
/* 801475DC 0014453C  7C 00 EA 78 */	xor r0, r0, r29
/* 801475E0 00144540  7C 60 03 79 */	or. r0, r3, r0
/* 801475E4 00144544  41 82 00 08 */	beq lbl_801475EC
/* 801475E8 00144548  3B A0 00 01 */	li r29, 1
lbl_801475EC:
/* 801475EC 0014454C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801475F0 00144550  41 82 00 14 */	beq lbl_80147604
/* 801475F4 00144554  7F E3 FB 78 */	mr r3, r31
/* 801475F8 00144558  7F C5 F3 78 */	mr r5, r30
/* 801475FC 0014455C  38 80 00 25 */	li r4, 0x25
/* 80147600 00144560  4B F0 C9 81 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80147604:
/* 80147604 00144564  7F E3 FB 78 */	mr r3, r31
/* 80147608 00144568  7F C5 F3 78 */	mr r5, r30
/* 8014760C 0014456C  38 80 00 20 */	li r4, 0x20
/* 80147610 00144570  4B F0 C9 71 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80147614 00144574  7F E4 FB 78 */	mr r4, r31
/* 80147618 00144578  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8014761C 0014457C  4B FD 49 D1 */	bl GetPhysicsState__13CPhysicsActorCFv
/* 80147620 00144580  38 61 01 28 */	addi r3, r1, 0x128
/* 80147624 00144584  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80147628 00144588  4B F6 BE 99 */	bl __ct__13CPhysicsStateFRC13CPhysicsState
/* 8014762C 0014458C  C0 42 9C 88 */	lfs f2, lbl_805AB9A8@sda21(r2)
/* 80147630 00144590  FC 20 F8 90 */	fmr f1, f31
/* 80147634 00144594  C0 02 9C 98 */	lfs f0, lbl_805AB9B8@sda21(r2)
/* 80147638 00144598  7F E3 FB 78 */	mr r3, r31
/* 8014763C 0014459C  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 80147640 001445A0  38 81 00 08 */	addi r4, r1, 8
/* 80147644 001445A4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80147648 001445A8  D0 41 00 08 */	stfs f2, 8(r1)
/* 8014764C 001445AC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80147650 001445B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80147654 001445B4  4B FD 38 25 */	bl MoveToOR__13CPhysicsActorFRC9CVector3ff
/* 80147658 001445B8  FC 20 F8 90 */	fmr f1, f31
/* 8014765C 001445BC  7F C3 F3 78 */	mr r3, r30
/* 80147660 001445C0  7F E4 FB 78 */	mr r4, r31
/* 80147664 001445C4  38 A0 00 00 */	li r5, 0
/* 80147668 001445C8  48 03 A6 D1 */	bl "Move__14CGameCollisionFR13CStateManagerR13CPhysicsActorfPCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 8014766C 001445CC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80147670 001445D0  7F E3 FB 78 */	mr r3, r31
/* 80147674 001445D4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80147678 001445D8  38 81 01 28 */	addi r4, r1, 0x128
/* 8014767C 001445DC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80147680 001445E0  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80147684 001445E4  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 80147688 001445E8  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 8014768C 001445EC  4B FD 47 99 */	bl SetPhysicsState__13CPhysicsActorFRC13CPhysicsState
/* 80147690 001445F0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80147694 001445F4  41 82 00 14 */	beq lbl_801476A8
/* 80147698 001445F8  7F E3 FB 78 */	mr r3, r31
/* 8014769C 001445FC  7F C5 F3 78 */	mr r5, r30
/* 801476A0 00144600  38 80 00 25 */	li r4, 0x25
/* 801476A4 00144604  4B F0 CC AD */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801476A8:
/* 801476A8 00144608  7F E3 FB 78 */	mr r3, r31
/* 801476AC 0014460C  7F C5 F3 78 */	mr r5, r30
/* 801476B0 00144610  38 80 00 20 */	li r4, 0x20
/* 801476B4 00144614  4B F0 CC 9D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801476B8:
/* 801476B8 00144618  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, qr0
/* 801476BC 0014461C  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 801476C0 00144620  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, qr0
/* 801476C4 00144624  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 801476C8 00144628  83 E1 01 AC */	lwz r31, 0x1ac(r1)
/* 801476CC 0014462C  83 C1 01 A8 */	lwz r30, 0x1a8(r1)
/* 801476D0 00144630  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
/* 801476D4 00144634  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 801476D8 00144638  83 81 01 A0 */	lwz r28, 0x1a0(r1)
/* 801476DC 0014463C  7C 08 03 A6 */	mtlr r0
/* 801476E0 00144640  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 801476E4 00144644  4E 80 00 20 */	blr

.global CalculateBoundingBox__12CPuddleSporeCFv
CalculateBoundingBox__12CPuddleSporeCFv:
/* 801476E8 00144648  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801476EC 0014464C  7C 08 02 A6 */	mflr r0
/* 801476F0 00144650  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801476F4 00144654  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801476F8 00144658  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801476FC 0014465C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80147700 00144660  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 80147704 00144664  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80147708 00144668  F3 A1 00 78 */	psq_st f29, 120(r1), 0, qr0
/* 8014770C 0014466C  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80147710 00144670  F3 81 00 68 */	psq_st f28, 104(r1), 0, qr0
/* 80147714 00144674  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 80147718 00144678  F3 61 00 58 */	psq_st f27, 88(r1), 0, qr0
/* 8014771C 0014467C  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 80147720 00144680  F3 41 00 48 */	psq_st f26, 72(r1), 0, qr0
/* 80147724 00144684  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 80147728 00144688  F3 21 00 38 */	psq_st f25, 56(r1), 0, qr0
/* 8014772C 0014468C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80147730 00144690  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80147734 00144694  7C 9F 23 78 */	mr r31, r4
/* 80147738 00144698  7C 7E 1B 78 */	mr r30, r3
/* 8014773C 0014469C  C3 44 05 90 */	lfs f26, 0x590(r4)
/* 80147740 001446A0  7F E3 FB 78 */	mr r3, r31
/* 80147744 001446A4  C0 84 05 98 */	lfs f4, 0x598(r4)
/* 80147748 001446A8  C0 24 05 94 */	lfs f1, 0x594(r4)
/* 8014774C 001446AC  FC 40 D0 50 */	fneg f2, f26
/* 80147750 001446B0  C0 04 05 9C */	lfs f0, 0x59c(r4)
/* 80147754 001446B4  C0 64 05 8C */	lfs f3, 0x58c(r4)
/* 80147758 001446B8  EC 01 20 3A */	fmadds f0, f1, f0, f4
/* 8014775C 001446BC  C3 64 05 88 */	lfs f27, 0x588(r4)
/* 80147760 001446C0  C3 24 05 84 */	lfs f25, 0x584(r4)
/* 80147764 001446C4  EF A4 18 2A */	fadds f29, f4, f3
/* 80147768 001446C8  EF C2 D8 2A */	fadds f30, f2, f27
/* 8014776C 001446CC  EF E2 C8 2A */	fadds f31, f2, f25
/* 80147770 001446D0  EF 80 18 2A */	fadds f28, f0, f3
/* 80147774 001446D4  4B FD 32 4D */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 80147778 001446D8  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 8014777C 001446DC  EC DA D8 2A */	fadds f6, f26, f27
/* 80147780 001446E0  C0 82 9C B0 */	lfs f4, lbl_805AB9D0@sda21(r2)
/* 80147784 001446E4  EC 3A C8 2A */	fadds f1, f26, f25
/* 80147788 001446E8  C0 43 00 14 */	lfs f2, 0x14(r3)
/* 8014778C 001446EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80147790 001446F0  EC 63 01 32 */	fmuls f3, f3, f4
/* 80147794 001446F4  C0 A2 9C AC */	lfs f5, lbl_805AB9CC@sda21(r2)
/* 80147798 001446F8  EC 42 01 32 */	fmuls f2, f2, f4
/* 8014779C 001446FC  EC 00 01 32 */	fmuls f0, f0, f4
/* 801477A0 00144700  7F E3 FB 78 */	mr r3, r31
/* 801477A4 00144704  EC 66 19 7A */	fmadds f3, f6, f5, f3
/* 801477A8 00144708  EC 5C 11 7A */	fmadds f2, f28, f5, f2
/* 801477AC 0014470C  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 801477B0 00144710  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801477B4 00144714  D0 01 00 08 */	stfs f0, 8(r1)
/* 801477B8 00144718  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801477BC 0014471C  4B FD 32 05 */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 801477C0 00144720  C0 43 00 04 */	lfs f2, 4(r3)
/* 801477C4 00144724  38 81 00 14 */	addi r4, r1, 0x14
/* 801477C8 00144728  C0 62 9C B0 */	lfs f3, lbl_805AB9D0@sda21(r2)
/* 801477CC 0014472C  38 A1 00 08 */	addi r5, r1, 8
/* 801477D0 00144730  C0 23 00 08 */	lfs f1, 8(r3)
/* 801477D4 00144734  C0 03 00 00 */	lfs f0, 0(r3)
/* 801477D8 00144738  EC 42 00 F2 */	fmuls f2, f2, f3
/* 801477DC 0014473C  C0 82 9C AC */	lfs f4, lbl_805AB9CC@sda21(r2)
/* 801477E0 00144740  EC 21 00 F2 */	fmuls f1, f1, f3
/* 801477E4 00144744  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801477E8 00144748  7F C3 F3 78 */	mr r3, r30
/* 801477EC 0014474C  EC 5E 11 3A */	fmadds f2, f30, f4, f2
/* 801477F0 00144750  EC 3D 09 3A */	fmadds f1, f29, f4, f1
/* 801477F4 00144754  EC 1F 01 3A */	fmadds f0, f31, f4, f0
/* 801477F8 00144758  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801477FC 0014475C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80147800 00144760  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80147804 00144764  48 1F 0D 05 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80147808 00144768  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8014780C 0014476C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80147810 00144770  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 80147814 00144774  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80147818 00144778  E3 A1 00 78 */	psq_l f29, 120(r1), 0, qr0
/* 8014781C 0014477C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80147820 00144780  E3 81 00 68 */	psq_l f28, 104(r1), 0, qr0
/* 80147824 00144784  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80147828 00144788  E3 61 00 58 */	psq_l f27, 88(r1), 0, qr0
/* 8014782C 0014478C  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 80147830 00144790  E3 41 00 48 */	psq_l f26, 72(r1), 0, qr0
/* 80147834 00144794  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 80147838 00144798  E3 21 00 38 */	psq_l f25, 56(r1), 0, qr0
/* 8014783C 0014479C  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 80147840 001447A0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80147844 001447A4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80147848 001447A8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8014784C 001447AC  7C 08 03 A6 */	mtlr r0
/* 80147850 001447B0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80147854 001447B4  4E 80 00 20 */	blr

.global GetCollisionPrimitive__12CPuddleSporeCFv
GetCollisionPrimitive__12CPuddleSporeCFv:
/* 80147858 001447B8  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 8014785C 001447BC  4E 80 00 20 */	blr

.global KnockPlayer__12CPuddleSporeFR13CStateManagerf
KnockPlayer__12CPuddleSporeFR13CStateManagerf:
/* 80147860 001447C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80147864 001447C4  7C 08 02 A6 */	mflr r0
/* 80147868 001447C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8014786C 001447CC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80147870 001447D0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80147874 001447D4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80147878 001447D8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8014787C 001447DC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80147880 001447E0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80147884 001447E4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80147888 001447E8  FF E0 08 90 */	fmr f31, f1
/* 8014788C 001447EC  7C 7D 1B 78 */	mr r29, r3
/* 80147890 001447F0  7C 9E 23 78 */	mr r30, r4
/* 80147894 001447F4  38 61 00 44 */	addi r3, r1, 0x44
/* 80147898 001447F8  7F A4 EB 78 */	mr r4, r29
/* 8014789C 001447FC  4B FD 30 91 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801478A0 00144800  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801478A4 00144804  38 61 00 2C */	addi r3, r1, 0x2c
/* 801478A8 00144808  4B FD 30 85 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801478AC 0014480C  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801478B0 00144810  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801478B4 00144814  C0 02 9C A0 */	lfs f0, lbl_805AB9C0@sda21(r2)
/* 801478B8 00144818  EC 23 08 2A */	fadds f1, f3, f1
/* 801478BC 0014481C  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801478C0 00144820  EC 01 00 32 */	fmuls f0, f1, f0
/* 801478C4 00144824  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801478C8 00144828  40 80 00 F4 */	bge lbl_801479BC
/* 801478CC 0014482C  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801478D0 00144830  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801478D4 00144834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801478D8 00144838  4C 41 13 82 */	cror 2, 1, 2
/* 801478DC 0014483C  40 82 00 E0 */	bne lbl_801479BC
/* 801478E0 00144840  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801478E4 00144844  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801478E8 00144848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801478EC 0014484C  4C 41 13 82 */	cror 2, 1, 2
/* 801478F0 00144850  40 82 00 CC */	bne lbl_801479BC
/* 801478F4 00144854  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801478F8 00144858  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801478FC 0014485C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147900 00144860  4C 41 13 82 */	cror 2, 1, 2
/* 80147904 00144864  40 82 00 B8 */	bne lbl_801479BC
/* 80147908 00144868  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 8014790C 0014486C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80147910 00144870  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147914 00144874  4C 41 13 82 */	cror 2, 1, 2
/* 80147918 00144878  40 82 00 A4 */	bne lbl_801479BC
/* 8014791C 0014487C  EC 23 10 28 */	fsubs f1, f3, f2
/* 80147920 00144880  C0 02 9C B4 */	lfs f0, lbl_805AB9D4@sda21(r2)
/* 80147924 00144884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147928 00144888  40 80 00 94 */	bge lbl_801479BC
/* 8014792C 0014488C  C3 C2 9C 98 */	lfs f30, lbl_805AB9B8@sda21(r2)
/* 80147930 00144890  C0 22 9C 88 */	lfs f1, lbl_805AB9A8@sda21(r2)
/* 80147934 00144894  C0 02 9C B8 */	lfs f0, lbl_805AB9D8@sda21(r2)
/* 80147938 00144898  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 8014793C 0014489C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80147940 001448A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80147944 001448A4  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 80147948 001448A8  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8014794C 001448AC  2C 00 00 01 */	cmpwi r0, 1
/* 80147950 001448B0  40 82 00 08 */	bne lbl_80147958
/* 80147954 001448B4  C3 C2 9C 9C */	lfs f30, lbl_805AB9BC@sda21(r2)
lbl_80147958:
/* 80147958 001448B8  38 61 00 08 */	addi r3, r1, 8
/* 8014795C 001448BC  38 9D 00 34 */	addi r4, r29, 0x34
/* 80147960 001448C0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80147964 001448C4  48 1C B1 1D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80147968 001448C8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8014796C 001448CC  C0 41 00 08 */	lfs f2, 8(r1)
/* 80147970 001448D0  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80147974 001448D4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80147978 001448D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8014797C 001448DC  EC 7E 00 F2 */	fmuls f3, f30, f3
/* 80147980 001448E0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80147984 001448E4  EC 23 00 72 */	fmuls f1, f3, f1
/* 80147988 001448E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8014798C 001448EC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80147990 001448F0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80147994 001448F4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80147998 001448F8  4B ED 3B 9D */	bl Identity__10CAxisAngleFv
/* 8014799C 001448FC  7C 65 1B 78 */	mr r5, r3
/* 801479A0 00144900  7F E3 FB 78 */	mr r3, r31
/* 801479A4 00144904  38 81 00 14 */	addi r4, r1, 0x14
/* 801479A8 00144908  4B FD 49 F1 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801479AC 0014490C  7F E3 FB 78 */	mr r3, r31
/* 801479B0 00144910  7F C5 F3 78 */	mr r5, r30
/* 801479B4 00144914  38 80 00 02 */	li r4, 2
/* 801479B8 00144918  48 13 EA 35 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
lbl_801479BC:
/* 801479BC 0014491C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801479C0 00144920  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801479C4 00144924  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 801479C8 00144928  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801479CC 0014492C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801479D0 00144930  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801479D4 00144934  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801479D8 00144938  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801479DC 0014493C  7C 08 03 A6 */	mtlr r0
/* 801479E0 00144940  38 21 00 90 */	addi r1, r1, 0x90
/* 801479E4 00144944  4E 80 00 20 */	blr

.global CollidedWith__12CPuddleSporeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__12CPuddleSporeFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 801479E8 00144948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801479EC 0014494C  7C 08 02 A6 */	mflr r0
/* 801479F0 00144950  90 01 00 14 */	stw r0, 0x14(r1)
/* 801479F4 00144954  80 03 05 C8 */	lwz r0, 0x5c8(r3)
/* 801479F8 00144958  2C 00 00 02 */	cmpwi r0, 2
/* 801479FC 0014495C  41 82 00 08 */	beq lbl_80147A04
/* 80147A00 00144960  4B F3 1C 51 */	bl CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
lbl_80147A04:
/* 80147A04 00144964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80147A08 00144968  7C 08 03 A6 */	mtlr r0
/* 80147A0C 0014496C  38 21 00 10 */	addi r1, r1, 0x10
/* 80147A10 00144970  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CPuddleSporeFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CPuddleSporeFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80147A14 00144974  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 80147A18 00144978  7C 08 02 A6 */	mflr r0
/* 80147A1C 0014497C  90 01 01 54 */	stw r0, 0x154(r1)
/* 80147A20 00144980  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 80147A24 00144984  F3 E1 01 48 */	psq_st f31, 328(r1), 0, qr0
/* 80147A28 00144988  BE E1 01 1C */	stmw r23, 0x11c(r1)
/* 80147A2C 0014498C  7C DE 33 79 */	or. r30, r6, r6
/* 80147A30 00144990  FF E0 08 90 */	fmr f31, f1
/* 80147A34 00144994  7C 7B 1B 78 */	mr r27, r3
/* 80147A38 00144998  7C 9C 23 78 */	mr r28, r4
/* 80147A3C 0014499C  7C BD 2B 78 */	mr r29, r5
/* 80147A40 001449A0  38 00 00 00 */	li r0, 0
/* 80147A44 001449A4  41 82 00 08 */	beq lbl_80147A4C
/* 80147A48 001449A8  48 00 02 50 */	b lbl_80147C98
lbl_80147A4C:
/* 80147A4C 001449AC  C0 02 9C 88 */	lfs f0, lbl_805AB9A8@sda21(r2)
/* 80147A50 001449B0  D0 1B 05 6C */	stfs f0, 0x56c(r27)
/* 80147A54 001449B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80147A58 001449B8  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80147A5C 001449BC  7D 89 03 A6 */	mtctr r12
/* 80147A60 001449C0  4E 80 04 21 */	bctrl
/* 80147A64 001449C4  7C 78 1B 78 */	mr r24, r3
/* 80147A68 001449C8  80 03 00 08 */	lwz r0, 8(r3)
/* 80147A6C 001449CC  28 00 00 00 */	cmplwi r0, 0
/* 80147A70 001449D0  41 82 00 0C */	beq lbl_80147A7C
/* 80147A74 001449D4  38 60 00 01 */	li r3, 1
/* 80147A78 001449D8  48 00 00 38 */	b lbl_80147AB0
lbl_80147A7C:
/* 80147A7C 001449DC  88 18 00 04 */	lbz r0, 4(r24)
/* 80147A80 001449E0  28 00 00 00 */	cmplwi r0, 0
/* 80147A84 001449E4  41 82 00 28 */	beq lbl_80147AAC
/* 80147A88 001449E8  80 98 00 00 */	lwz r4, 0(r24)
/* 80147A8C 001449EC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80147A90 001449F0  28 00 00 00 */	cmplwi r0, 0
/* 80147A94 001449F4  41 82 00 18 */	beq lbl_80147AAC
/* 80147A98 001449F8  48 1F 93 75 */	bl GetObj__6CTokenFv
/* 80147A9C 001449FC  80 03 00 04 */	lwz r0, 4(r3)
/* 80147AA0 00144A00  38 60 00 01 */	li r3, 1
/* 80147AA4 00144A04  90 18 00 08 */	stw r0, 8(r24)
/* 80147AA8 00144A08  48 00 00 08 */	b lbl_80147AB0
lbl_80147AAC:
/* 80147AAC 00144A0C  38 60 00 00 */	li r3, 0
lbl_80147AB0:
/* 80147AB0 00144A10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80147AB4 00144A14  41 82 01 E0 */	beq lbl_80147C94
/* 80147AB8 00144A18  A0 1B 00 08 */	lhz r0, 8(r27)
/* 80147ABC 00144A1C  7F 83 E3 78 */	mr r3, r28
/* 80147AC0 00144A20  80 CD 8B E0 */	lwz r6, lbl_805A77A0@sda21(r13)
/* 80147AC4 00144A24  38 81 00 48 */	addi r4, r1, 0x48
/* 80147AC8 00144A28  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80147ACC 00144A2C  38 A0 00 09 */	li r5, 9
/* 80147AD0 00144A30  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80147AD4 00144A34  4B EF DC 5D */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 80147AD8 00144A38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80147ADC 00144A3C  41 82 01 B8 */	beq lbl_80147C94
/* 80147AE0 00144A40  7F 64 DB 78 */	mr r4, r27
/* 80147AE4 00144A44  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80147AE8 00144A48  38 BD 00 3C */	addi r5, r29, 0x3c
/* 80147AEC 00144A4C  4B F3 0E 8D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80147AF0 00144A50  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80147AF4 00144A54  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80147AF8 00144A58  48 1C B0 7D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80147AFC 00144A5C  3C 60 80 3D */	lis r3, lbl_803D00A0@ha
/* 80147B00 00144A60  3B 40 00 00 */	li r26, 0
/* 80147B04 00144A64  38 83 00 A0 */	addi r4, r3, lbl_803D00A0@l
/* 80147B08 00144A68  38 60 03 D8 */	li r3, 0x3d8
/* 80147B0C 00144A6C  38 84 00 C7 */	addi r4, r4, 0xc7
/* 80147B10 00144A70  38 A0 00 00 */	li r5, 0
/* 80147B14 00144A74  48 1C DD 59 */	bl __nw__FUlPCcPCc
/* 80147B18 00144A78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80147B1C 00144A7C  41 82 01 10 */	beq lbl_80147C2C
/* 80147B20 00144A80  C0 02 9C 98 */	lfs f0, lbl_805AB9B8@sda21(r2)
/* 80147B24 00144A84  38 60 00 00 */	li r3, 0
/* 80147B28 00144A88  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80147B2C 00144A8C  7F 84 E3 78 */	mr r4, r28
/* 80147B30 00144A90  98 61 00 84 */	stb r3, 0x84(r1)
/* 80147B34 00144A94  38 61 00 30 */	addi r3, r1, 0x30
/* 80147B38 00144A98  3B 40 00 01 */	li r26, 1
/* 80147B3C 00144A9C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80147B40 00144AA0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80147B44 00144AA4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80147B48 00144AA8  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80147B4C 00144AAC  A0 BB 00 08 */	lhz r5, 8(r27)
/* 80147B50 00144AB0  B0 A1 00 3C */	sth r5, 0x3c(r1)
/* 80147B54 00144AB4  80 1B 00 04 */	lwz r0, 4(r27)
/* 80147B58 00144AB8  B0 A1 00 38 */	sth r5, 0x38(r1)
/* 80147B5C 00144ABC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80147B60 00144AC0  90 01 00 50 */	stw r0, 0x50(r1)
/* 80147B64 00144AC4  4B F0 55 79 */	bl AllocateUniqueId__13CStateManagerFv
/* 80147B68 00144AC8  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 80147B6C 00144ACC  7F 63 DB 78 */	mr r3, r27
/* 80147B70 00144AD0  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80147B74 00144AD4  81 9B 00 00 */	lwz r12, 0(r27)
/* 80147B78 00144AD8  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80147B7C 00144ADC  7D 89 03 A6 */	mtctr r12
/* 80147B80 00144AE0  4E 80 04 21 */	bctrl
/* 80147B84 00144AE4  C0 41 00 F4 */	lfs f2, 0xf4(r1)
/* 80147B88 00144AE8  7C 78 1B 78 */	mr r24, r3
/* 80147B8C 00144AEC  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 80147B90 00144AF0  7F 63 DB 78 */	mr r3, r27
/* 80147B94 00144AF4  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80147B98 00144AF8  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80147B9C 00144AFC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80147BA0 00144B00  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80147BA4 00144B04  81 9B 00 00 */	lwz r12, 0(r27)
/* 80147BA8 00144B08  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80147BAC 00144B0C  7D 89 03 A6 */	mtctr r12
/* 80147BB0 00144B10  4E 80 04 21 */	bctrl
/* 80147BB4 00144B14  7C 77 1B 78 */	mr r23, r3
/* 80147BB8 00144B18  38 61 00 88 */	addi r3, r1, 0x88
/* 80147BBC 00144B1C  38 81 00 60 */	addi r4, r1, 0x60
/* 80147BC0 00144B20  48 1C B5 81 */	bl Translate__12CTransform4fFRC9CVector3f
/* 80147BC4 00144B24  38 61 00 50 */	addi r3, r1, 0x50
/* 80147BC8 00144B28  38 01 00 3C */	addi r0, r1, 0x3c
/* 80147BCC 00144B2C  90 61 00 08 */	stw r3, 8(r1)
/* 80147BD0 00144B30  38 81 00 40 */	addi r4, r1, 0x40
/* 80147BD4 00144B34  3B 20 00 00 */	li r25, 0
/* 80147BD8 00144B38  39 81 00 6C */	addi r12, r1, 0x6c
/* 80147BDC 00144B3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80147BE0 00144B40  39 61 00 78 */	addi r11, r1, 0x78
/* 80147BE4 00144B44  A0 02 C5 FC */	lhz r0, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 80147BE8 00144B48  7F E3 FB 78 */	mr r3, r31
/* 80147BEC 00144B4C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80147BF0 00144B50  7E E5 BB 78 */	mr r5, r23
/* 80147BF4 00144B54  38 E1 00 88 */	addi r7, r1, 0x88
/* 80147BF8 00144B58  39 38 00 0C */	addi r9, r24, 0xc
/* 80147BFC 00144B5C  93 21 00 14 */	stw r25, 0x14(r1)
/* 80147C00 00144B60  39 41 00 34 */	addi r10, r1, 0x34
/* 80147C04 00144B64  38 80 00 01 */	li r4, 1
/* 80147C08 00144B68  38 C0 00 09 */	li r6, 9
/* 80147C0C 00144B6C  93 21 00 18 */	stw r25, 0x18(r1)
/* 80147C10 00144B70  39 00 00 21 */	li r8, 0x21
/* 80147C14 00144B74  91 81 00 1C */	stw r12, 0x1c(r1)
/* 80147C18 00144B78  91 61 00 20 */	stw r11, 0x20(r1)
/* 80147C1C 00144B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80147C20 00144B80  93 21 00 28 */	stw r25, 0x28(r1)
/* 80147C24 00144B84  48 0C DA 75 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 80147C28 00144B88  7C 7F 1B 78 */	mr r31, r3
lbl_80147C2C:
/* 80147C2C 00144B8C  7F 40 07 75 */	extsb. r0, r26
/* 80147C30 00144B90  41 82 00 30 */	beq lbl_80147C60
/* 80147C34 00144B94  88 01 00 84 */	lbz r0, 0x84(r1)
/* 80147C38 00144B98  28 00 00 00 */	cmplwi r0, 0
/* 80147C3C 00144B9C  41 82 00 1C */	beq lbl_80147C58
/* 80147C40 00144BA0  34 61 00 78 */	addic. r3, r1, 0x78
/* 80147C44 00144BA4  41 82 00 14 */	beq lbl_80147C58
/* 80147C48 00144BA8  28 03 00 00 */	cmplwi r3, 0
/* 80147C4C 00144BAC  41 82 00 0C */	beq lbl_80147C58
/* 80147C50 00144BB0  38 80 00 00 */	li r4, 0
/* 80147C54 00144BB4  48 1F 91 ED */	bl __dt__6CTokenFv
lbl_80147C58:
/* 80147C58 00144BB8  38 00 00 00 */	li r0, 0
/* 80147C5C 00144BBC  98 01 00 84 */	stb r0, 0x84(r1)
lbl_80147C60:
/* 80147C60 00144BC0  3A FF 01 70 */	addi r23, r31, 0x170
/* 80147C64 00144BC4  7E E3 BB 78 */	mr r3, r23
/* 80147C68 00144BC8  48 16 74 CD */	bl GetVelocity__17CProjectileWeaponCFv
/* 80147C6C 00144BCC  7C 65 1B 78 */	mr r5, r3
/* 80147C70 00144BD0  38 61 00 54 */	addi r3, r1, 0x54
/* 80147C74 00144BD4  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80147C78 00144BD8  48 1C AE 09 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80147C7C 00144BDC  7E E3 BB 78 */	mr r3, r23
/* 80147C80 00144BE0  38 81 00 54 */	addi r4, r1, 0x54
/* 80147C84 00144BE4  48 16 74 B9 */	bl SetVelocity__17CProjectileWeaponFRC9CVector3f
/* 80147C88 00144BE8  7F 83 E3 78 */	mr r3, r28
/* 80147C8C 00144BEC  7F E4 FB 78 */	mr r4, r31
/* 80147C90 00144BF0  4B F0 50 65 */	bl AddObject__13CStateManagerFP7CEntity
lbl_80147C94:
/* 80147C94 00144BF4  38 00 00 01 */	li r0, 1
lbl_80147C98:
/* 80147C98 00144BF8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80147C9C 00144BFC  40 82 00 1C */	bne lbl_80147CB8
/* 80147CA0 00144C00  FC 20 F8 90 */	fmr f1, f31
/* 80147CA4 00144C04  7F 63 DB 78 */	mr r3, r27
/* 80147CA8 00144C08  7F 84 E3 78 */	mr r4, r28
/* 80147CAC 00144C0C  7F A5 EB 78 */	mr r5, r29
/* 80147CB0 00144C10  7F C6 F3 78 */	mr r6, r30
/* 80147CB4 00144C14  4B F3 11 FD */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80147CB8:
/* 80147CB8 00144C18  E3 E1 01 48 */	psq_l f31, 328(r1), 0, qr0
/* 80147CBC 00144C1C  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 80147CC0 00144C20  BA E1 01 1C */	lmw r23, 0x11c(r1)
/* 80147CC4 00144C24  80 01 01 54 */	lwz r0, 0x154(r1)
/* 80147CC8 00144C28  7C 08 03 A6 */	mtlr r0
/* 80147CCC 00144C2C  38 21 01 50 */	addi r1, r1, 0x150
/* 80147CD0 00144C30  4E 80 00 20 */	blr

.global KnockBack__12CPuddleSporeFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__12CPuddleSporeFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80147CD4 00144C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80147CD8 00144C38  7C 08 02 A6 */	mflr r0
/* 80147CDC 00144C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80147CE0 00144C40  80 03 05 C8 */	lwz r0, 0x5c8(r3)
/* 80147CE4 00144C44  2C 00 00 01 */	cmpwi r0, 1
/* 80147CE8 00144C48  41 82 00 08 */	beq lbl_80147CF0
/* 80147CEC 00144C4C  4B F3 2A 91 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
lbl_80147CF0:
/* 80147CF0 00144C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80147CF4 00144C54  7C 08 03 A6 */	mtlr r0
/* 80147CF8 00144C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80147CFC 00144C5C  4E 80 00 20 */	blr

.global Touch__12CPuddleSporeFR6CActorR13CStateManager
Touch__12CPuddleSporeFR6CActorR13CStateManager:
/* 80147D00 00144C60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80147D04 00144C64  7C 08 02 A6 */	mflr r0
/* 80147D08 00144C68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80147D0C 00144C6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80147D10 00144C70  7C BF 2B 78 */	mr r31, r5
/* 80147D14 00144C74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80147D18 00144C78  7C 7E 1B 78 */	mr r30, r3
/* 80147D1C 00144C7C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80147D20 00144C80  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80147D24 00144C84  41 82 00 64 */	beq lbl_80147D88
/* 80147D28 00144C88  38 61 00 08 */	addi r3, r1, 8
/* 80147D2C 00144C8C  4B F6 5A 4D */	bl "__ct__29TCastToPtr<15CGameProjectile>FR7CEntity"
/* 80147D30 00144C90  80 A3 00 04 */	lwz r5, 4(r3)
/* 80147D34 00144C94  28 05 00 00 */	cmplwi r5, 0
/* 80147D38 00144C98  41 82 00 50 */	beq lbl_80147D88
/* 80147D3C 00144C9C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80147D40 00144CA0  A0 85 00 EC */	lhz r4, 0xec(r5)
/* 80147D44 00144CA4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80147D48 00144CA8  7C 04 00 40 */	cmplw r4, r0
/* 80147D4C 00144CAC  40 82 00 3C */	bne lbl_80147D88
/* 80147D50 00144CB0  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80147D54 00144CB4  7F C3 F3 78 */	mr r3, r30
/* 80147D58 00144CB8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80147D5C 00144CBC  38 81 00 10 */	addi r4, r1, 0x10
/* 80147D60 00144CC0  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80147D64 00144CC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80147D68 00144CC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80147D6C 00144CCC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80147D70 00144CD0  48 00 00 6D */	bl HitShell__12CPuddleSporeCFRC9CVector3f
/* 80147D74 00144CD4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80147D78 00144CD8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80147D7C 00144CDC  7C 63 00 34 */	cntlzw r3, r3
/* 80147D80 00144CE0  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 80147D84 00144CE4  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_80147D88:
/* 80147D88 00144CE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80147D8C 00144CEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80147D90 00144CF0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80147D94 00144CF4  7C 08 03 A6 */	mtlr r0
/* 80147D98 00144CF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80147D9C 00144CFC  4E 80 00 20 */	blr

.global GetCollisionResponseType__12CPuddleSporeCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__12CPuddleSporeCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 80147DA0 00144D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80147DA4 00144D04  7C 08 02 A6 */	mflr r0
/* 80147DA8 00144D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80147DAC 00144D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80147DB0 00144D10  3B E0 00 22 */	li r31, 0x22
/* 80147DB4 00144D14  48 00 00 29 */	bl HitShell__12CPuddleSporeCFRC9CVector3f
/* 80147DB8 00144D18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80147DBC 00144D1C  41 82 00 08 */	beq lbl_80147DC4
/* 80147DC0 00144D20  3B E0 00 54 */	li r31, 0x54
lbl_80147DC4:
/* 80147DC4 00144D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80147DC8 00144D28  7F E3 FB 78 */	mr r3, r31
/* 80147DCC 00144D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80147DD0 00144D30  7C 08 03 A6 */	mtlr r0
/* 80147DD4 00144D34  38 21 00 10 */	addi r1, r1, 0x10
/* 80147DD8 00144D38  4E 80 00 20 */	blr

.global HitShell__12CPuddleSporeCFRC9CVector3f
HitShell__12CPuddleSporeCFRC9CVector3f:
/* 80147DDC 00144D3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80147DE0 00144D40  7C 08 02 A6 */	mflr r0
/* 80147DE4 00144D44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80147DE8 00144D48  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80147DEC 00144D4C  7C 9F 23 78 */	mr r31, r4
/* 80147DF0 00144D50  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80147DF4 00144D54  7C 7E 1B 78 */	mr r30, r3
/* 80147DF8 00144D58  80 03 05 C8 */	lwz r0, 0x5c8(r3)
/* 80147DFC 00144D5C  2C 00 00 01 */	cmpwi r0, 1
/* 80147E00 00144D60  40 82 00 9C */	bne lbl_80147E9C
/* 80147E04 00144D64  7F C4 F3 78 */	mr r4, r30
/* 80147E08 00144D68  38 61 00 2C */	addi r3, r1, 0x2c
/* 80147E0C 00144D6C  4B FD 2B 21 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80147E10 00144D70  38 61 00 08 */	addi r3, r1, 8
/* 80147E14 00144D74  38 81 00 2C */	addi r4, r1, 0x2c
/* 80147E18 00144D78  48 1E F7 F5 */	bl GetCenterPoint__6CAABoxCFv
/* 80147E1C 00144D7C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80147E20 00144D80  38 61 00 20 */	addi r3, r1, 0x20
/* 80147E24 00144D84  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80147E28 00144D88  38 81 00 14 */	addi r4, r1, 0x14
/* 80147E2C 00144D8C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80147E30 00144D90  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80147E34 00144D94  EC 81 00 28 */	fsubs f4, f1, f0
/* 80147E38 00144D98  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80147E3C 00144D9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80147E40 00144DA0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80147E44 00144DA4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80147E48 00144DA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80147E4C 00144DAC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80147E50 00144DB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80147E54 00144DB4  48 1C BF 7D */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 80147E58 00144DB8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80147E5C 00144DBC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80147E60 00144DC0  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80147E64 00144DC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80147E68 00144DC8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80147E6C 00144DCC  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80147E70 00144DD0  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 80147E74 00144DD4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80147E78 00144DD8  C0 02 9C BC */	lfs f0, lbl_805AB9DC@sda21(r2)
/* 80147E7C 00144DDC  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80147E80 00144DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147E84 00144DE4  40 81 00 18 */	ble lbl_80147E9C
/* 80147E88 00144DE8  C0 02 9C A0 */	lfs f0, lbl_805AB9C0@sda21(r2)
/* 80147E8C 00144DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147E90 00144DF0  40 80 00 0C */	bge lbl_80147E9C
/* 80147E94 00144DF4  38 60 00 00 */	li r3, 0
/* 80147E98 00144DF8  48 00 00 08 */	b lbl_80147EA0
lbl_80147E9C:
/* 80147E9C 00144DFC  38 60 00 01 */	li r3, 1
lbl_80147EA0:
/* 80147EA0 00144E00  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80147EA4 00144E04  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80147EA8 00144E08  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80147EAC 00144E0C  7C 08 03 A6 */	mtlr r0
/* 80147EB0 00144E10  38 21 00 50 */	addi r1, r1, 0x50
/* 80147EB4 00144E14  4E 80 00 20 */	blr

.global ProjectileInfo__12CPuddleSporeFv
ProjectileInfo__12CPuddleSporeFv:
/* 80147EB8 00144E18  38 63 05 EC */	addi r3, r3, 0x5ec
/* 80147EBC 00144E1C  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CPuddleSporeF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CPuddleSporeF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80147EC0 00144E20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80147EC4 00144E24  7C 08 02 A6 */	mflr r0
/* 80147EC8 00144E28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80147ECC 00144E2C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80147ED0 00144E30  7C 9C 23 78 */	mr r28, r4
/* 80147ED4 00144E34  2C 1C 00 2A */	cmpwi r28, 0x2a
/* 80147ED8 00144E38  7C 7B 1B 78 */	mr r27, r3
/* 80147EDC 00144E3C  7C BD 2B 78 */	mr r29, r5
/* 80147EE0 00144E40  7C DE 33 78 */	mr r30, r6
/* 80147EE4 00144E44  3B E0 00 00 */	li r31, 0
/* 80147EE8 00144E48  41 82 00 14 */	beq lbl_80147EFC
/* 80147EEC 00144E4C  40 80 00 24 */	bge lbl_80147F10
/* 80147EF0 00144E50  2C 1C 00 21 */	cmpwi r28, 0x21
/* 80147EF4 00144E54  41 82 00 10 */	beq lbl_80147F04
/* 80147EF8 00144E58  48 00 00 18 */	b lbl_80147F10
lbl_80147EFC:
/* 80147EFC 00144E5C  3B E0 00 01 */	li r31, 1
/* 80147F00 00144E60  48 00 00 10 */	b lbl_80147F10
lbl_80147F04:
/* 80147F04 00144E64  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 80147F08 00144E68  7F C4 F3 78 */	mr r4, r30
/* 80147F0C 00144E6C  4B FF 2D E5 */	bl Activate__15CBodyControllerFR13CStateManager
lbl_80147F10:
/* 80147F10 00144E70  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80147F14 00144E74  40 82 00 20 */	bne lbl_80147F34
/* 80147F18 00144E78  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80147F1C 00144E7C  7F 63 DB 78 */	mr r3, r27
/* 80147F20 00144E80  7F 84 E3 78 */	mr r4, r28
/* 80147F24 00144E84  7F C6 F3 78 */	mr r6, r30
/* 80147F28 00144E88  B0 01 00 08 */	sth r0, 8(r1)
/* 80147F2C 00144E8C  38 A1 00 08 */	addi r5, r1, 8
/* 80147F30 00144E90  4B F3 4C 49 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_80147F34:
/* 80147F34 00144E94  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 80147F38 00144E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80147F3C 00144E9C  7C 08 03 A6 */	mtlr r0
/* 80147F40 00144EA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80147F44 00144EA4  4E 80 00 20 */	blr

.global FluidFXThink__12CPuddleSporeFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
FluidFXThink__12CPuddleSporeFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager:
/* 80147F48 00144EA8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80147F4C 00144EAC  7C 08 02 A6 */	mflr r0
/* 80147F50 00144EB0  2C 04 00 01 */	cmpwi r4, 1
/* 80147F54 00144EB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80147F58 00144EB8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80147F5C 00144EBC  7C DF 33 78 */	mr r31, r6
/* 80147F60 00144EC0  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80147F64 00144EC4  7C BE 2B 78 */	mr r30, r5
/* 80147F68 00144EC8  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80147F6C 00144ECC  7C 7D 1B 78 */	mr r29, r3
/* 80147F70 00144ED0  40 82 00 94 */	bne lbl_80148004
/* 80147F74 00144ED4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80147F78 00144ED8  38 81 00 14 */	addi r4, r1, 0x14
/* 80147F7C 00144EDC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80147F80 00144EE0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80147F84 00144EE4  80 7F 08 7C */	lwz r3, 0x87c(r31)
/* 80147F88 00144EE8  4B FE 75 F9 */	bl GetLastRippleDeltaTime__18CFluidPlaneManagerCF9TUniqueId
/* 80147F8C 00144EEC  C0 02 9C C0 */	lfs f0, lbl_805AB9E0@sda21(r2)
/* 80147F90 00144EF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147F94 00144EF4  4C 41 13 82 */	cror 2, 1, 2
/* 80147F98 00144EF8  40 82 00 6C */	bne lbl_80148004
/* 80147F9C 00144EFC  7F C4 F3 78 */	mr r4, r30
/* 80147FA0 00144F00  38 61 00 30 */	addi r3, r1, 0x30
/* 80147FA4 00144F04  4B F2 E7 29 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 80147FA8 00144F08  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80147FAC 00144F0C  7F C6 F3 78 */	mr r6, r30
/* 80147FB0 00144F10  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 80147FB4 00144F14  7F E7 FB 78 */	mr r7, r31
/* 80147FB8 00144F18  C0 9D 00 40 */	lfs f4, 0x40(r29)
/* 80147FBC 00144F1C  38 81 00 0C */	addi r4, r1, 0xc
/* 80147FC0 00144F20  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80147FC4 00144F24  38 A1 00 24 */	addi r5, r1, 0x24
/* 80147FC8 00144F28  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80147FCC 00144F2C  C0 22 9C C4 */	lfs f1, lbl_805AB9E4@sda21(r2)
/* 80147FD0 00144F30  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80147FD4 00144F34  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80147FD8 00144F38  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80147FDC 00144F3C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80147FE0 00144F40  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80147FE4 00144F44  80 7E 01 B4 */	lwz r3, 0x1b4(r30)
/* 80147FE8 00144F48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80147FEC 00144F4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80147FF0 00144F50  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80147FF4 00144F54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80147FF8 00144F58  B0 01 00 08 */	sth r0, 8(r1)
/* 80147FFC 00144F5C  7D 89 03 A6 */	mtctr r12
/* 80148000 00144F60  4E 80 04 21 */	bctrl
lbl_80148004:
/* 80148004 00144F64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80148008 00144F68  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8014800C 00144F6C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80148010 00144F70  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80148014 00144F74  7C 08 03 A6 */	mtlr r0
/* 80148018 00144F78  38 21 00 60 */	addi r1, r1, 0x60
/* 8014801C 00144F7C  4E 80 00 20 */	blr

.global Render__12CPuddleSporeCFRC13CStateManager
Render__12CPuddleSporeCFRC13CStateManager:
/* 80148020 00144F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148024 00144F84  7C 08 02 A6 */	mflr r0
/* 80148028 00144F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014802C 00144F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148030 00144F90  93 C1 00 08 */	stw r30, 8(r1)
/* 80148034 00144F94  7C 7E 1B 78 */	mr r30, r3
/* 80148038 00144F98  4B F2 FF F5 */	bl Render__10CPatternedCFRC13CStateManager
/* 8014803C 00144F9C  C0 3E 05 6C */	lfs f1, 0x56c(r30)
/* 80148040 00144FA0  C0 02 9C C8 */	lfs f0, lbl_805AB9E8@sda21(r2)
/* 80148044 00144FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80148048 00144FA8  40 81 00 3C */	ble lbl_80148084
/* 8014804C 00144FAC  83 FE 05 E8 */	lwz r31, 0x5e8(r30)
/* 80148050 00144FB0  48 00 00 1C */	b lbl_8014806C
lbl_80148054:
/* 80148054 00144FB4  7F E3 FB 78 */	mr r3, r31
/* 80148058 00144FB8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8014805C 00144FBC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80148060 00144FC0  7D 89 03 A6 */	mtctr r12
/* 80148064 00144FC4  4E 80 04 21 */	bctrl
/* 80148068 00144FC8  3B FF 03 40 */	addi r31, r31, 0x340
lbl_8014806C:
/* 8014806C 00144FCC  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 80148070 00144FD0  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80148074 00144FD4  1C 00 03 40 */	mulli r0, r0, 0x340
/* 80148078 00144FD8  7C 03 02 14 */	add r0, r3, r0
/* 8014807C 00144FDC  7C 1F 00 40 */	cmplw r31, r0
/* 80148080 00144FE0  40 82 FF D4 */	bne lbl_80148054
lbl_80148084:
/* 80148084 00144FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148088 00144FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014808C 00144FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80148090 00144FF0  7C 08 03 A6 */	mtlr r0
/* 80148094 00144FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80148098 00144FF8  4E 80 00 20 */	blr

.global Think__12CPuddleSporeFfR13CStateManager
Think__12CPuddleSporeFfR13CStateManager:
/* 8014809C 00144FFC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801480A0 00145000  7C 08 02 A6 */	mflr r0
/* 801480A4 00145004  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801480A8 00145008  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801480AC 0014500C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 801480B0 00145010  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 801480B4 00145014  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 801480B8 00145018  BF 61 00 9C */	stmw r27, 0x9c(r1)
/* 801480BC 0014501C  88 03 06 14 */	lbz r0, 0x614(r3)
/* 801480C0 00145020  FF C0 08 90 */	fmr f30, f1
/* 801480C4 00145024  7C 7E 1B 78 */	mr r30, r3
/* 801480C8 00145028  7C 9F 23 78 */	mr r31, r4
/* 801480CC 0014502C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801480D0 00145030  41 82 00 10 */	beq lbl_801480E0
/* 801480D4 00145034  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 801480D8 00145038  EC 00 F0 2A */	fadds f0, f0, f30
/* 801480DC 0014503C  D0 1E 05 6C */	stfs f0, 0x56c(r30)
lbl_801480E0:
/* 801480E0 00145040  88 1E 06 14 */	lbz r0, 0x614(r30)
/* 801480E4 00145044  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801480E8 00145048  41 82 00 10 */	beq lbl_801480F8
/* 801480EC 0014504C  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 801480F0 00145050  EC 00 F0 2A */	fadds f0, f0, f30
/* 801480F4 00145054  D0 1E 05 68 */	stfs f0, 0x568(r30)
lbl_801480F8:
/* 801480F8 00145058  7F C3 F3 78 */	mr r3, r30
/* 801480FC 0014505C  7F E4 FB 78 */	mr r4, r31
/* 80148100 00145060  81 9E 00 00 */	lwz r12, 0(r30)
/* 80148104 00145064  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80148108 00145068  7D 89 03 A6 */	mtctr r12
/* 8014810C 0014506C  4E 80 04 21 */	bctrl
/* 80148110 00145070  C0 02 9C CC */	lfs f0, lbl_805AB9EC@sda21(r2)
/* 80148114 00145074  C0 22 9C 98 */	lfs f1, lbl_805AB9B8@sda21(r2)
/* 80148118 00145078  D0 03 00 00 */	stfs f0, 0(r3)
/* 8014811C 0014507C  38 61 00 0C */	addi r3, r1, 0xc
/* 80148120 00145080  FC 40 08 90 */	fmr f2, f1
/* 80148124 00145084  C0 BE 05 6C */	lfs f5, 0x56c(r30)
/* 80148128 00145088  FC 60 08 90 */	fmr f3, f1
/* 8014812C 0014508C  C0 1E 05 70 */	lfs f0, 0x570(r30)
/* 80148130 00145090  FC 80 08 90 */	fmr f4, f1
/* 80148134 00145094  EC A5 00 24 */	fdivs f5, f5, f0
/* 80148138 00145098  EC 05 08 28 */	fsubs f0, f5, f1
/* 8014813C 0014509C  FF E0 28 6E */	fsel f31, f0, f1, f5
/* 80148140 001450A0  48 21 B2 AD */	bl __ct__6CColorFffff
/* 80148144 001450A4  C0 22 9C 98 */	lfs f1, lbl_805AB9B8@sda21(r2)
/* 80148148 001450A8  7C 7D 1B 78 */	mr r29, r3
/* 8014814C 001450AC  C0 82 9C 88 */	lfs f4, lbl_805AB9A8@sda21(r2)
/* 80148150 001450B0  38 61 00 10 */	addi r3, r1, 0x10
/* 80148154 001450B4  FC 40 08 90 */	fmr f2, f1
/* 80148158 001450B8  FC 60 08 90 */	fmr f3, f1
/* 8014815C 001450BC  48 21 B2 91 */	bl __ct__6CColorFffff
/* 80148160 001450C0  FC 20 F8 90 */	fmr f1, f31
/* 80148164 001450C4  7C 64 1B 78 */	mr r4, r3
/* 80148168 001450C8  7F A5 EB 78 */	mr r5, r29
/* 8014816C 001450CC  38 61 00 14 */	addi r3, r1, 0x14
/* 80148170 001450D0  48 21 B1 3D */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80148174 001450D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148178 001450D8  3C 60 80 3E */	lis r3, lbl_803E2078@ha
/* 8014817C 001450DC  3B A3 20 78 */	addi r29, r3, lbl_803E2078@l
/* 80148180 001450E0  3B 60 00 00 */	li r27, 0
/* 80148184 001450E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80148188 001450E8  3B 80 00 00 */	li r28, 0
/* 8014818C 001450EC  48 00 00 B4 */	b lbl_80148240
lbl_80148190:
/* 80148190 001450F0  80 9D 00 00 */	lwz r4, 0(r29)
/* 80148194 001450F4  38 61 00 28 */	addi r3, r1, 0x28
/* 80148198 001450F8  38 C1 00 08 */	addi r6, r1, 8
/* 8014819C 001450FC  38 A0 FF FF */	li r5, -1
/* 801481A0 00145100  48 1F 5F F5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801481A4 00145104  7F C4 F3 78 */	mr r4, r30
/* 801481A8 00145108  38 61 00 38 */	addi r3, r1, 0x38
/* 801481AC 0014510C  38 A1 00 28 */	addi r5, r1, 0x28
/* 801481B0 00145110  4B F3 07 C9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801481B4 00145114  38 61 00 68 */	addi r3, r1, 0x68
/* 801481B8 00145118  38 81 00 38 */	addi r4, r1, 0x38
/* 801481BC 0014511C  48 1C A9 B9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801481C0 00145120  38 61 00 28 */	addi r3, r1, 0x28
/* 801481C4 00145124  48 1F 59 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801481C8 00145128  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 801481CC 0014512C  38 81 00 18 */	addi r4, r1, 0x18
/* 801481D0 00145130  7C 60 E2 14 */	add r3, r0, r28
/* 801481D4 00145134  81 83 00 00 */	lwz r12, 0(r3)
/* 801481D8 00145138  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801481DC 0014513C  7D 89 03 A6 */	mtctr r12
/* 801481E0 00145140  4E 80 04 21 */	bctrl
/* 801481E4 00145144  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 801481E8 00145148  38 81 00 1C */	addi r4, r1, 0x1c
/* 801481EC 0014514C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 801481F0 00145150  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 801481F4 00145154  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801481F8 00145158  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801481FC 0014515C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80148200 00145160  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 80148204 00145164  7C 60 E2 14 */	add r3, r0, r28
/* 80148208 00145168  81 83 00 00 */	lwz r12, 0(r3)
/* 8014820C 0014516C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80148210 00145170  7D 89 03 A6 */	mtctr r12
/* 80148214 00145174  4E 80 04 21 */	bctrl
/* 80148218 00145178  80 1E 05 E8 */	lwz r0, 0x5e8(r30)
/* 8014821C 0014517C  FC 20 F0 90 */	fmr f1, f30
/* 80148220 00145180  7C 60 E2 14 */	add r3, r0, r28
/* 80148224 00145184  81 83 00 00 */	lwz r12, 0(r3)
/* 80148228 00145188  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8014822C 0014518C  7D 89 03 A6 */	mtctr r12
/* 80148230 00145190  4E 80 04 21 */	bctrl
/* 80148234 00145194  3B BD 00 04 */	addi r29, r29, 4
/* 80148238 00145198  3B 9C 03 40 */	addi r28, r28, 0x340
/* 8014823C 0014519C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80148240:
/* 80148240 001451A0  80 0D 8B E0 */	lwz r0, lbl_805A77A0@sda21(r13)
/* 80148244 001451A4  7C 1B 00 00 */	cmpw r27, r0
/* 80148248 001451A8  41 80 FF 48 */	blt lbl_80148190
/* 8014824C 001451AC  FC 20 F0 90 */	fmr f1, f30
/* 80148250 001451B0  7F C3 F3 78 */	mr r3, r30
/* 80148254 001451B4  7F E4 FB 78 */	mr r4, r31
/* 80148258 001451B8  4B F3 18 C1 */	bl Think__10CPatternedFfR13CStateManager
/* 8014825C 001451BC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80148260 001451C0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80148264 001451C4  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80148268 001451C8  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8014826C 001451CC  BB 61 00 9C */	lmw r27, 0x9c(r1)
/* 80148270 001451D0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80148274 001451D4  7C 08 03 A6 */	mtlr r0
/* 80148278 001451D8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8014827C 001451DC  4E 80 00 20 */	blr

.global PreThink__12CPuddleSporeFfR13CStateManager
PreThink__12CPuddleSporeFfR13CStateManager:
/* 80148280 001451E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80148284 001451E4  7C 08 02 A6 */	mflr r0
/* 80148288 001451E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014828C 001451EC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80148290 001451F0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80148294 001451F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80148298 001451F8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8014829C 001451FC  FF E0 08 90 */	fmr f31, f1
/* 801482A0 00145200  7C 7E 1B 78 */	mr r30, r3
/* 801482A4 00145204  7C 9F 23 78 */	mr r31, r4
/* 801482A8 00145208  38 61 00 08 */	addi r3, r1, 8
/* 801482AC 0014520C  7F C4 F3 78 */	mr r4, r30
/* 801482B0 00145210  4B FF F4 39 */	bl CalculateBoundingBox__12CPuddleSporeCFv
/* 801482B4 00145214  C0 A1 00 08 */	lfs f5, 8(r1)
/* 801482B8 00145218  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 801482BC 0014521C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801482C0 00145220  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801482C4 00145224  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801482C8 00145228  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801482CC 0014522C  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801482D0 00145230  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801482D4 00145234  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 801482D8 00145238  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801482DC 0014523C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801482E0 00145240  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801482E4 00145244  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 801482E8 00145248  2C 00 00 02 */	cmpwi r0, 2
/* 801482EC 0014524C  40 82 00 18 */	bne lbl_80148304
/* 801482F0 00145250  7F C3 F3 78 */	mr r3, r30
/* 801482F4 00145254  7F E5 FB 78 */	mr r5, r31
/* 801482F8 00145258  38 80 00 37 */	li r4, 0x37
/* 801482FC 0014525C  4B F0 C0 55 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80148300 00145260  48 00 00 14 */	b lbl_80148314
lbl_80148304:
/* 80148304 00145264  7F C3 F3 78 */	mr r3, r30
/* 80148308 00145268  7F E5 FB 78 */	mr r5, r31
/* 8014830C 0014526C  38 80 00 37 */	li r4, 0x37
/* 80148310 00145270  4B F0 BC 71 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80148314:
/* 80148314 00145274  FC 20 F8 90 */	fmr f1, f31
/* 80148318 00145278  7F C3 F3 78 */	mr r3, r30
/* 8014831C 0014527C  7F E5 FB 78 */	mr r5, r31
/* 80148320 00145280  38 81 00 20 */	addi r4, r1, 0x20
/* 80148324 00145284  4B FF F0 6D */	bl UpdateBoundingState__12CPuddleSporeFRC6CAABoxR13CStateManager
/* 80148328 00145288  FC 20 F8 90 */	fmr f1, f31
/* 8014832C 0014528C  7F C3 F3 78 */	mr r3, r30
/* 80148330 00145290  7F E4 FB 78 */	mr r4, r31
/* 80148334 00145294  4B F2 F6 5D */	bl PreThink__10CPatternedFfR13CStateManager
/* 80148338 00145298  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8014833C 0014529C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80148340 001452A0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80148344 001452A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80148348 001452A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8014834C 001452AC  7C 08 03 A6 */	mtlr r0
/* 80148350 001452B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80148354 001452B4  4E 80 00 20 */	blr

.global Accept__12CPuddleSporeFR8IVisitor
Accept__12CPuddleSporeFR8IVisitor:
/* 80148358 001452B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014835C 001452BC  7C 08 02 A6 */	mflr r0
/* 80148360 001452C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148364 001452C4  7C 60 1B 78 */	mr r0, r3
/* 80148368 001452C8  7C 83 23 78 */	mr r3, r4
/* 8014836C 001452CC  81 84 00 00 */	lwz r12, 0(r4)
/* 80148370 001452D0  7C 04 03 78 */	mr r4, r0
/* 80148374 001452D4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80148378 001452D8  7D 89 03 A6 */	mtctr r12
/* 8014837C 001452DC  4E 80 04 21 */	bctrl
/* 80148380 001452E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148384 001452E4  7C 08 03 A6 */	mtlr r0
/* 80148388 001452E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8014838C 001452EC  4E 80 00 20 */	blr

.global "__ct__12CPuddleSporeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EColliderTypeUifffffRC16CActorParametersUiRC11CDamageInfo"
"__ct__12CPuddleSporeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EColliderTypeUifffffRC16CActorParametersUiRC11CDamageInfo":
/* 80148390 001452F0  94 21 FC 00 */	stwu r1, -0x400(r1)
/* 80148394 001452F4  7C 08 02 A6 */	mflr r0
/* 80148398 001452F8  90 01 04 04 */	stw r0, 0x404(r1)
/* 8014839C 001452FC  DB E1 03 F0 */	stfd f31, 0x3f0(r1)
/* 801483A0 00145300  F3 E1 03 F8 */	psq_st f31, 1016(r1), 0, qr0
/* 801483A4 00145304  DB C1 03 E0 */	stfd f30, 0x3e0(r1)
/* 801483A8 00145308  F3 C1 03 E8 */	psq_st f30, 1000(r1), 0, qr0
/* 801483AC 0014530C  DB A1 03 D0 */	stfd f29, 0x3d0(r1)
/* 801483B0 00145310  F3 A1 03 D8 */	psq_st f29, 984(r1), 0, qr0
/* 801483B4 00145314  DB 81 03 C0 */	stfd f28, 0x3c0(r1)
/* 801483B8 00145318  F3 81 03 C8 */	psq_st f28, 968(r1), 0, qr0
/* 801483BC 0014531C  DB 61 03 B0 */	stfd f27, 0x3b0(r1)
/* 801483C0 00145320  F3 61 03 B8 */	psq_st f27, 952(r1), 0, qr0
/* 801483C4 00145324  BF 41 03 98 */	stmw r26, 0x398(r1)
/* 801483C8 00145328  A0 04 00 00 */	lhz r0, 0(r4)
/* 801483CC 0014532C  7D 5A 53 78 */	mr r26, r10
/* 801483D0 00145330  7C EC 3B 78 */	mr r12, r7
/* 801483D4 00145334  7C DD 33 78 */	mr r29, r6
/* 801483D8 00145338  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801483DC 0014533C  7D 0B 43 78 */	mr r11, r8
/* 801483E0 00145340  7D 2A 4B 78 */	mr r10, r9
/* 801483E4 00145344  38 80 00 01 */	li r4, 1
/* 801483E8 00145348  93 41 00 08 */	stw r26, 8(r1)
/* 801483EC 0014534C  38 00 00 02 */	li r0, 2
/* 801483F0 00145350  80 E1 04 08 */	lwz r7, 0x408(r1)
/* 801483F4 00145354  FF 60 08 90 */	fmr f27, f1
/* 801483F8 00145358  90 81 00 0C */	stw r4, 0xc(r1)
/* 801483FC 0014535C  FF 80 10 90 */	fmr f28, f2
/* 80148400 00145360  80 C1 04 10 */	lwz r6, 0x410(r1)
/* 80148404 00145364  FF A0 18 90 */	fmr f29, f3
/* 80148408 00145368  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8014840C 0014536C  7F A7 EB 78 */	mr r7, r29
/* 80148410 00145370  FF C0 20 90 */	fmr f30, f4
/* 80148414 00145374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148418 00145378  FF E0 28 90 */	fmr f31, f5
/* 8014841C 0014537C  83 61 04 0C */	lwz r27, 0x40c(r1)
/* 80148420 00145380  7C 7F 1B 78 */	mr r31, r3
/* 80148424 00145384  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80148428 00145388  7C A6 2B 78 */	mr r6, r5
/* 8014842C 0014538C  83 81 04 14 */	lwz r28, 0x414(r1)
/* 80148430 00145390  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80148434 00145394  7D 88 63 78 */	mr r8, r12
/* 80148438 00145398  83 A1 04 18 */	lwz r29, 0x418(r1)
/* 8014843C 0014539C  7D 69 5B 78 */	mr r9, r11
/* 80148440 001453A0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80148444 001453A4  38 80 00 1B */	li r4, 0x1b
/* 80148448 001453A8  4B F3 50 09 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8014844C 001453AC  3C 60 80 3E */	lis r3, lbl_803E20C4@ha
/* 80148450 001453B0  C0 42 9C 88 */	lfs f2, lbl_805AB9A8@sda21(r2)
/* 80148454 001453B4  38 03 20 C4 */	addi r0, r3, lbl_803E20C4@l
/* 80148458 001453B8  C0 02 9C 98 */	lfs f0, lbl_805AB9B8@sda21(r2)
/* 8014845C 001453BC  90 1F 00 00 */	stw r0, 0(r31)
/* 80148460 001453C0  7F E4 FB 78 */	mr r4, r31
/* 80148464 001453C4  3B DF 00 68 */	addi r30, r31, 0x68
/* 80148468 001453C8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8014846C 001453CC  D0 5F 05 68 */	stfs f2, 0x568(r31)
/* 80148470 001453D0  D0 5F 05 6C */	stfs f2, 0x56c(r31)
/* 80148474 001453D4  D3 7F 05 70 */	stfs f27, 0x570(r31)
/* 80148478 001453D8  D3 9F 05 74 */	stfs f28, 0x574(r31)
/* 8014847C 001453DC  D3 BF 05 78 */	stfs f29, 0x578(r31)
/* 80148480 001453E0  D3 DF 05 7C */	stfs f30, 0x57c(r31)
/* 80148484 001453E4  D3 FF 05 80 */	stfs f31, 0x580(r31)
/* 80148488 001453E8  C0 3A 00 CC */	lfs f1, 0xcc(r26)
/* 8014848C 001453EC  D0 3F 05 84 */	stfs f1, 0x584(r31)
/* 80148490 001453F0  C0 3A 00 D0 */	lfs f1, 0xd0(r26)
/* 80148494 001453F4  D0 3F 05 88 */	stfs f1, 0x588(r31)
/* 80148498 001453F8  C0 3A 00 D4 */	lfs f1, 0xd4(r26)
/* 8014849C 001453FC  D0 3F 05 8C */	stfs f1, 0x58c(r31)
/* 801484A0 00145400  C0 3A 00 C4 */	lfs f1, 0xc4(r26)
/* 801484A4 00145404  D0 3F 05 90 */	stfs f1, 0x590(r31)
/* 801484A8 00145408  C0 3A 00 C8 */	lfs f1, 0xc8(r26)
/* 801484AC 0014540C  D0 3F 05 94 */	stfs f1, 0x594(r31)
/* 801484B0 00145410  D0 5F 05 98 */	stfs f2, 0x598(r31)
/* 801484B4 00145414  D0 1F 05 9C */	stfs f0, 0x59c(r31)
/* 801484B8 00145418  4B FF F2 31 */	bl CalculateBoundingBox__12CPuddleSporeCFv
/* 801484BC 0014541C  3B 5F 05 A0 */	addi r26, r31, 0x5a0
/* 801484C0 00145420  7F C4 F3 78 */	mr r4, r30
/* 801484C4 00145424  7F 43 D3 78 */	mr r3, r26
/* 801484C8 00145428  48 18 73 ED */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 801484CC 0014542C  3C 80 80 3F */	lis r4, __vt__16CCollidableAABox@ha
/* 801484D0 00145430  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801484D4 00145434  38 04 CA D0 */	addi r0, r4, __vt__16CCollidableAABox@l
/* 801484D8 00145438  38 80 00 00 */	li r4, 0
/* 801484DC 0014543C  90 1A 00 00 */	stw r0, 0(r26)
/* 801484E0 00145440  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801484E4 00145444  38 61 00 2C */	addi r3, r1, 0x2c
/* 801484E8 00145448  38 A1 00 34 */	addi r5, r1, 0x34
/* 801484EC 0014544C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801484F0 00145450  D0 1A 00 10 */	stfs f0, 0x10(r26)
/* 801484F4 00145454  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801484F8 00145458  D0 1A 00 14 */	stfs f0, 0x14(r26)
/* 801484FC 0014545C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80148500 00145460  D0 1A 00 18 */	stfs f0, 0x18(r26)
/* 80148504 00145464  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80148508 00145468  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 8014850C 0014546C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80148510 00145470  D0 1A 00 20 */	stfs f0, 0x20(r26)
/* 80148514 00145474  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80148518 00145478  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 8014851C 0014547C  90 9F 05 C8 */	stw r4, 0x5c8(r31)
/* 80148520 00145480  90 9F 05 CC */	stw r4, 0x5cc(r31)
/* 80148524 00145484  90 01 00 34 */	stw r0, 0x34(r1)
/* 80148528 00145488  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8014852C 0014548C  93 61 00 38 */	stw r27, 0x38(r1)
/* 80148530 00145490  81 84 00 00 */	lwz r12, 0(r4)
/* 80148534 00145494  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80148538 00145498  7D 89 03 A6 */	mtctr r12
/* 8014853C 0014549C  4E 80 04 21 */	bctrl
/* 80148540 001454A0  3B 5F 05 D0 */	addi r26, r31, 0x5d0
/* 80148544 001454A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80148548 001454A8  7F 43 D3 78 */	mr r3, r26
/* 8014854C 001454AC  48 1F 89 5D */	bl __ct__6CTokenFRC6CToken
/* 80148550 001454B0  7F 43 D3 78 */	mr r3, r26
/* 80148554 001454B4  48 1F 88 B9 */	bl GetObj__6CTokenFv
/* 80148558 001454B8  80 03 00 04 */	lwz r0, 4(r3)
/* 8014855C 001454BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80148560 001454C0  38 80 FF FF */	li r4, -1
/* 80148564 001454C4  90 1A 00 08 */	stw r0, 8(r26)
/* 80148568 001454C8  48 1F 88 D9 */	bl __dt__6CTokenFv
/* 8014856C 001454CC  38 00 00 00 */	li r0, 0
/* 80148570 001454D0  7F 84 E3 78 */	mr r4, r28
/* 80148574 001454D4  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80148578 001454D8  7F A5 EB 78 */	mr r5, r29
/* 8014857C 001454DC  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80148580 001454E0  90 1F 05 E4 */	stw r0, 0x5e4(r31)
/* 80148584 001454E4  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80148588 001454E8  48 0D 3B 21 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8014858C 001454EC  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 80148590 001454F0  38 80 00 00 */	li r4, 0
/* 80148594 001454F4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80148598 001454F8  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8014859C 001454FC  98 1F 06 14 */	stb r0, 0x614(r31)
/* 801485A0 00145500  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 801485A4 00145504  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801485A8 00145508  98 1F 06 14 */	stb r0, 0x614(r31)
/* 801485AC 0014550C  80 8D 8B E0 */	lwz r4, lbl_805A77A0@sda21(r13)
/* 801485B0 00145510  48 00 0B 35 */	bl sub_801490e4
/* 801485B4 00145514  3B C0 00 00 */	li r30, 0
/* 801485B8 00145518  48 00 00 4C */	b lbl_80148604
lbl_801485BC:
/* 801485BC 0014551C  38 61 00 24 */	addi r3, r1, 0x24
/* 801485C0 00145520  38 9F 05 D0 */	addi r4, r31, 0x5d0
/* 801485C4 00145524  48 1F 88 E5 */	bl __ct__6CTokenFRC6CToken
/* 801485C8 00145528  38 61 00 58 */	addi r3, r1, 0x58
/* 801485CC 0014552C  38 81 00 24 */	addi r4, r1, 0x24
/* 801485D0 00145530  38 A0 00 00 */	li r5, 0
/* 801485D4 00145534  38 C0 00 01 */	li r6, 1
/* 801485D8 00145538  48 1D 6E 09 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801485DC 0014553C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 801485E0 00145540  38 81 00 58 */	addi r4, r1, 0x58
/* 801485E4 00145544  48 00 00 81 */	bl sub_80148664
/* 801485E8 00145548  38 61 00 58 */	addi r3, r1, 0x58
/* 801485EC 0014554C  38 80 FF FF */	li r4, -1
/* 801485F0 00145550  48 1D 6B 9D */	bl __dt__11CElementGenFv
/* 801485F4 00145554  38 61 00 24 */	addi r3, r1, 0x24
/* 801485F8 00145558  38 80 00 00 */	li r4, 0
/* 801485FC 0014555C  48 1F 88 45 */	bl __dt__6CTokenFv
/* 80148600 00145560  3B DE 00 01 */	addi r30, r30, 1
lbl_80148604:
/* 80148604 00145564  80 0D 8B E0 */	lwz r0, lbl_805A77A0@sda21(r13)
/* 80148608 00145568  7C 1E 00 00 */	cmpw r30, r0
/* 8014860C 0014556C  41 80 FF B0 */	blt lbl_801485BC
/* 80148610 00145570  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80148614 00145574  48 1F 87 71 */	bl Lock__6CTokenFv
/* 80148618 00145578  38 7F 04 60 */	addi r3, r31, 0x460
/* 8014861C 0014557C  38 80 00 00 */	li r4, 0
/* 80148620 00145580  48 0E B7 45 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 80148624 00145584  7F E3 FB 78 */	mr r3, r31
/* 80148628 00145588  E3 E1 03 F8 */	psq_l f31, 1016(r1), 0, qr0
/* 8014862C 0014558C  CB E1 03 F0 */	lfd f31, 0x3f0(r1)
/* 80148630 00145590  E3 C1 03 E8 */	psq_l f30, 1000(r1), 0, qr0
/* 80148634 00145594  CB C1 03 E0 */	lfd f30, 0x3e0(r1)
/* 80148638 00145598  E3 A1 03 D8 */	psq_l f29, 984(r1), 0, qr0
/* 8014863C 0014559C  CB A1 03 D0 */	lfd f29, 0x3d0(r1)
/* 80148640 001455A0  E3 81 03 C8 */	psq_l f28, 968(r1), 0, qr0
/* 80148644 001455A4  CB 81 03 C0 */	lfd f28, 0x3c0(r1)
/* 80148648 001455A8  E3 61 03 B8 */	psq_l f27, 952(r1), 0, qr0
/* 8014864C 001455AC  CB 61 03 B0 */	lfd f27, 0x3b0(r1)
/* 80148650 001455B0  BB 41 03 98 */	lmw r26, 0x398(r1)
/* 80148654 001455B4  80 01 04 04 */	lwz r0, 0x404(r1)
/* 80148658 001455B8  7C 08 03 A6 */	mtlr r0
/* 8014865C 001455BC  38 21 04 00 */	addi r1, r1, 0x400
/* 80148660 001455C0  4E 80 00 20 */	blr

.global sub_80148664
sub_80148664:
/* 80148664 001455C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148668 001455C8  7C 08 02 A6 */	mflr r0
/* 8014866C 001455CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148670 001455D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148674 001455D4  7C 9F 23 78 */	mr r31, r4
/* 80148678 001455D8  93 C1 00 08 */	stw r30, 8(r1)
/* 8014867C 001455DC  7C 7E 1B 78 */	mr r30, r3
/* 80148680 001455E0  80 03 00 04 */	lwz r0, 4(r3)
/* 80148684 001455E4  80 A3 00 08 */	lwz r5, 8(r3)
/* 80148688 001455E8  7C 00 28 00 */	cmpw r0, r5
/* 8014868C 001455EC  41 80 00 18 */	blt lbl_801486A4
/* 80148690 001455F0  2C 05 00 00 */	cmpwi r5, 0
/* 80148694 001455F4  38 80 00 04 */	li r4, 4
/* 80148698 001455F8  41 82 00 08 */	beq lbl_801486A0
/* 8014869C 001455FC  54 A4 08 3C */	slwi r4, r5, 1
lbl_801486A0:
/* 801486A0 00145600  48 00 0A 45 */	bl sub_801490e4
lbl_801486A4:
/* 801486A4 00145604  80 1E 00 04 */	lwz r0, 4(r30)
/* 801486A8 00145608  7F E4 FB 78 */	mr r4, r31
/* 801486AC 0014560C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801486B0 00145610  1C 00 03 40 */	mulli r0, r0, 0x340
/* 801486B4 00145614  7C 63 02 14 */	add r3, r3, r0
/* 801486B8 00145618  48 00 00 29 */	bl sub_801486e0
/* 801486BC 0014561C  80 7E 00 04 */	lwz r3, 4(r30)
/* 801486C0 00145620  38 03 00 01 */	addi r0, r3, 1
/* 801486C4 00145624  90 1E 00 04 */	stw r0, 4(r30)
/* 801486C8 00145628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801486CC 0014562C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801486D0 00145630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801486D4 00145634  7C 08 03 A6 */	mtlr r0
/* 801486D8 00145638  38 21 00 10 */	addi r1, r1, 0x10
/* 801486DC 0014563C  4E 80 00 20 */	blr

.global sub_801486e0
sub_801486e0:
/* 801486E0 00145640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801486E4 00145644  7C 08 02 A6 */	mflr r0
/* 801486E8 00145648  28 03 00 00 */	cmplwi r3, 0
/* 801486EC 0014564C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801486F0 00145650  41 82 00 08 */	beq lbl_801486F8
/* 801486F4 00145654  48 00 00 15 */	bl sub_80148708
lbl_801486F8:
/* 801486F8 00145658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801486FC 0014565C  7C 08 03 A6 */	mtlr r0
/* 80148700 00145660  38 21 00 10 */	addi r1, r1, 0x10
/* 80148704 00145664  4E 80 00 20 */	blr

.global sub_80148708
sub_80148708:
/* 80148708 00145668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014870C 0014566C  7C 08 02 A6 */	mflr r0
/* 80148710 00145670  90 01 00 24 */	stw r0, 0x24(r1)
/* 80148714 00145674  BF 41 00 08 */	stmw r26, 8(r1)
/* 80148718 00145678  7C 7E 1B 78 */	mr r30, r3
/* 8014871C 0014567C  7C 9F 23 78 */	mr r31, r4
/* 80148720 00145680  48 00 07 A9 */	bl sub_80148ec8
/* 80148724 00145684  3C 60 80 3F */	lis r3, lbl_803EDA80@ha
/* 80148728 00145688  3B 5E 00 1C */	addi r26, r30, 0x1c
/* 8014872C 0014568C  38 03 DA 80 */	addi r0, r3, lbl_803EDA80@l
/* 80148730 00145690  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80148734 00145694  90 1E 00 00 */	stw r0, 0(r30)
/* 80148738 00145698  7F 43 D3 78 */	mr r3, r26
/* 8014873C 0014569C  48 1F 87 6D */	bl __ct__6CTokenFRC6CToken
/* 80148740 001456A0  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80148744 001456A4  7F 43 D3 78 */	mr r3, r26
/* 80148748 001456A8  90 1A 00 08 */	stw r0, 8(r26)
/* 8014874C 001456AC  48 1F 86 39 */	bl Lock__6CTokenFv
/* 80148750 001456B0  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80148754 001456B4  38 7E 00 30 */	addi r3, r30, 0x30
/* 80148758 001456B8  38 9F 00 30 */	addi r4, r31, 0x30
/* 8014875C 001456BC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80148760 001456C0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80148764 001456C4  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80148768 001456C8  48 00 06 19 */	bl sub_80148d80
/* 8014876C 001456CC  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80148770 001456D0  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80148774 001456D4  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80148778 001456D8  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8014877C 001456DC  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80148780 001456E0  2C 00 00 00 */	cmpwi r0, 0
/* 80148784 001456E4  40 82 00 1C */	bne lbl_801487A0
/* 80148788 001456E8  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 8014878C 001456EC  2C 00 00 00 */	cmpwi r0, 0
/* 80148790 001456F0  40 82 00 10 */	bne lbl_801487A0
/* 80148794 001456F4  38 00 00 00 */	li r0, 0
/* 80148798 001456F8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8014879C 001456FC  48 00 00 7C */	b lbl_80148818
lbl_801487A0:
/* 801487A0 00145700  80 1E 00 48 */	lwz r0, 0x48(r30)
/* 801487A4 00145704  1C 60 00 0C */	mulli r3, r0, 0xc
/* 801487A8 00145708  2C 03 00 00 */	cmpwi r3, 0
/* 801487AC 0014570C  40 82 00 10 */	bne lbl_801487BC
/* 801487B0 00145710  38 00 00 00 */	li r0, 0
/* 801487B4 00145714  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 801487B8 00145718  48 00 00 1C */	b lbl_801487D4
lbl_801487BC:
/* 801487BC 0014571C  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 801487C0 00145720  38 A0 00 00 */	li r5, 0
/* 801487C4 00145724  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 801487C8 00145728  38 84 00 C7 */	addi r4, r4, 0xc7
/* 801487CC 0014572C  48 1C D0 4D */	bl __nwa__FUlPCcPCc
/* 801487D0 00145730  90 7E 00 4C */	stw r3, 0x4c(r30)
lbl_801487D4:
/* 801487D4 00145734  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 801487D8 00145738  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 801487DC 0014573C  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 801487E0 00145740  7C 09 03 A6 */	mtctr r0
/* 801487E4 00145744  2C 00 00 00 */	cmpwi r0, 0
/* 801487E8 00145748  40 81 00 30 */	ble lbl_80148818
lbl_801487EC:
/* 801487EC 0014574C  28 03 00 00 */	cmplwi r3, 0
/* 801487F0 00145750  41 82 00 1C */	beq lbl_8014880C
/* 801487F4 00145754  C0 04 00 00 */	lfs f0, 0(r4)
/* 801487F8 00145758  D0 03 00 00 */	stfs f0, 0(r3)
/* 801487FC 0014575C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80148800 00145760  D0 03 00 04 */	stfs f0, 4(r3)
/* 80148804 00145764  C0 04 00 08 */	lfs f0, 8(r4)
/* 80148808 00145768  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8014880C:
/* 8014880C 0014576C  38 63 00 0C */	addi r3, r3, 0xc
/* 80148810 00145770  38 84 00 0C */	addi r4, r4, 0xc
/* 80148814 00145774  42 00 FF D8 */	bdnz lbl_801487EC
lbl_80148818:
/* 80148818 00145778  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8014881C 0014577C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 80148820 00145780  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80148824 00145784  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80148828 00145788  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8014882C 0014578C  2C 00 00 00 */	cmpwi r0, 0
/* 80148830 00145790  40 82 00 1C */	bne lbl_8014884C
/* 80148834 00145794  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 80148838 00145798  2C 00 00 00 */	cmpwi r0, 0
/* 8014883C 0014579C  40 82 00 10 */	bne lbl_8014884C
/* 80148840 001457A0  38 00 00 00 */	li r0, 0
/* 80148844 001457A4  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80148848 001457A8  48 00 00 74 */	b lbl_801488BC
lbl_8014884C:
/* 8014884C 001457AC  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 80148850 001457B0  1C 60 00 24 */	mulli r3, r0, 0x24
/* 80148854 001457B4  2C 03 00 00 */	cmpwi r3, 0
/* 80148858 001457B8  40 82 00 10 */	bne lbl_80148868
/* 8014885C 001457BC  38 00 00 00 */	li r0, 0
/* 80148860 001457C0  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80148864 001457C4  48 00 00 1C */	b lbl_80148880
lbl_80148868:
/* 80148868 001457C8  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 8014886C 001457CC  38 A0 00 00 */	li r5, 0
/* 80148870 001457D0  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 80148874 001457D4  38 84 00 C7 */	addi r4, r4, 0xc7
/* 80148878 001457D8  48 1C CF A1 */	bl __nwa__FUlPCcPCc
/* 8014887C 001457DC  90 7E 00 5C */	stw r3, 0x5c(r30)
lbl_80148880:
/* 80148880 001457E0  83 5E 00 54 */	lwz r26, 0x54(r30)
/* 80148884 001457E4  3B A0 00 00 */	li r29, 0
/* 80148888 001457E8  83 7F 00 5C */	lwz r27, 0x5c(r31)
/* 8014888C 001457EC  83 9E 00 5C */	lwz r28, 0x5c(r30)
/* 80148890 001457F0  48 00 00 24 */	b lbl_801488B4
lbl_80148894:
/* 80148894 001457F4  28 1C 00 00 */	cmplwi r28, 0
/* 80148898 001457F8  41 82 00 10 */	beq lbl_801488A8
/* 8014889C 001457FC  7F 83 E3 78 */	mr r3, r28
/* 801488A0 00145800  7F 64 DB 78 */	mr r4, r27
/* 801488A4 00145804  48 1C 77 81 */	bl __ct__9CMatrix3fFRC9CMatrix3f
lbl_801488A8:
/* 801488A8 00145808  3B 9C 00 24 */	addi r28, r28, 0x24
/* 801488AC 0014580C  3B BD 00 01 */	addi r29, r29, 1
/* 801488B0 00145810  3B 7B 00 24 */	addi r27, r27, 0x24
lbl_801488B4:
/* 801488B4 00145814  7C 1D D0 00 */	cmpw r29, r26
/* 801488B8 00145818  41 80 FF DC */	blt lbl_80148894
lbl_801488BC:
/* 801488BC 0014581C  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 801488C0 00145820  90 1E 00 64 */	stw r0, 0x64(r30)
/* 801488C4 00145824  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 801488C8 00145828  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801488CC 0014582C  80 1F 00 64 */	lwz r0, 0x64(r31)
/* 801488D0 00145830  2C 00 00 00 */	cmpwi r0, 0
/* 801488D4 00145834  40 82 00 1C */	bne lbl_801488F0
/* 801488D8 00145838  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 801488DC 0014583C  2C 00 00 00 */	cmpwi r0, 0
/* 801488E0 00145840  40 82 00 10 */	bne lbl_801488F0
/* 801488E4 00145844  38 00 00 00 */	li r0, 0
/* 801488E8 00145848  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 801488EC 0014584C  48 00 00 A0 */	b lbl_8014898C
lbl_801488F0:
/* 801488F0 00145850  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 801488F4 00145854  54 03 28 35 */	rlwinm. r3, r0, 5, 0, 0x1a
/* 801488F8 00145858  40 82 00 10 */	bne lbl_80148908
/* 801488FC 0014585C  38 00 00 00 */	li r0, 0
/* 80148900 00145860  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 80148904 00145864  48 00 00 1C */	b lbl_80148920
lbl_80148908:
/* 80148908 00145868  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 8014890C 0014586C  38 A0 00 00 */	li r5, 0
/* 80148910 00145870  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 80148914 00145874  38 84 00 C7 */	addi r4, r4, 0xc7
/* 80148918 00145878  48 1C CF 01 */	bl __nwa__FUlPCcPCc
/* 8014891C 0014587C  90 7E 00 6C */	stw r3, 0x6c(r30)
lbl_80148920:
/* 80148920 00145880  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 80148924 00145884  80 BF 00 6C */	lwz r5, 0x6c(r31)
/* 80148928 00145888  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8014892C 0014588C  7C 09 03 A6 */	mtctr r0
/* 80148930 00145890  2C 00 00 00 */	cmpwi r0, 0
/* 80148934 00145894  40 81 00 58 */	ble lbl_8014898C
lbl_80148938:
/* 80148938 00145898  28 04 00 00 */	cmplwi r4, 0
/* 8014893C 0014589C  41 82 00 44 */	beq lbl_80148980
/* 80148940 001458A0  80 65 00 00 */	lwz r3, 0(r5)
/* 80148944 001458A4  80 05 00 04 */	lwz r0, 4(r5)
/* 80148948 001458A8  90 64 00 00 */	stw r3, 0(r4)
/* 8014894C 001458AC  90 04 00 04 */	stw r0, 4(r4)
/* 80148950 001458B0  80 65 00 08 */	lwz r3, 8(r5)
/* 80148954 001458B4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80148958 001458B8  90 64 00 08 */	stw r3, 8(r4)
/* 8014895C 001458BC  90 04 00 0C */	stw r0, 0xc(r4)
/* 80148960 001458C0  80 65 00 10 */	lwz r3, 0x10(r5)
/* 80148964 001458C4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80148968 001458C8  90 64 00 10 */	stw r3, 0x10(r4)
/* 8014896C 001458CC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80148970 001458D0  80 65 00 18 */	lwz r3, 0x18(r5)
/* 80148974 001458D4  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80148978 001458D8  90 64 00 18 */	stw r3, 0x18(r4)
/* 8014897C 001458DC  90 04 00 1C */	stw r0, 0x1c(r4)
lbl_80148980:
/* 80148980 001458E0  38 84 00 20 */	addi r4, r4, 0x20
/* 80148984 001458E4  38 A5 00 20 */	addi r5, r5, 0x20
/* 80148988 001458E8  42 00 FF B0 */	bdnz lbl_80148938
lbl_8014898C:
/* 8014898C 001458EC  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 80148990 001458F0  38 7E 01 0C */	addi r3, r30, 0x10c
/* 80148994 001458F4  38 9F 01 0C */	addi r4, r31, 0x10c
/* 80148998 001458F8  90 1E 00 70 */	stw r0, 0x70(r30)
/* 8014899C 001458FC  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 801489A0 00145900  90 1E 00 74 */	stw r0, 0x74(r30)
/* 801489A4 00145904  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 801489A8 00145908  D8 1E 00 78 */	stfd f0, 0x78(r30)
/* 801489AC 0014590C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 801489B0 00145910  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 801489B4 00145914  80 1F 00 84 */	lwz r0, 0x84(r31)
/* 801489B8 00145918  90 1E 00 84 */	stw r0, 0x84(r30)
/* 801489BC 0014591C  88 1F 00 88 */	lbz r0, 0x88(r31)
/* 801489C0 00145920  98 1E 00 88 */	stb r0, 0x88(r30)
/* 801489C4 00145924  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 801489C8 00145928  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 801489CC 0014592C  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 801489D0 00145930  90 1E 00 90 */	stw r0, 0x90(r30)
/* 801489D4 00145934  A8 1F 00 94 */	lha r0, 0x94(r31)
/* 801489D8 00145938  B0 1E 00 94 */	sth r0, 0x94(r30)
/* 801489DC 0014593C  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 801489E0 00145940  D0 1E 00 98 */	stfs f0, 0x98(r30)
/* 801489E4 00145944  80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 801489E8 00145948  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 801489EC 0014594C  90 BE 00 9C */	stw r5, 0x9c(r30)
/* 801489F0 00145950  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 801489F4 00145954  80 BF 00 A4 */	lwz r5, 0xa4(r31)
/* 801489F8 00145958  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 801489FC 0014595C  90 BE 00 A4 */	stw r5, 0xa4(r30)
/* 80148A00 00145960  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 80148A04 00145964  80 BF 00 AC */	lwz r5, 0xac(r31)
/* 80148A08 00145968  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80148A0C 0014596C  90 BE 00 AC */	stw r5, 0xac(r30)
/* 80148A10 00145970  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 80148A14 00145974  80 BF 00 B4 */	lwz r5, 0xb4(r31)
/* 80148A18 00145978  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80148A1C 0014597C  90 BE 00 B4 */	stw r5, 0xb4(r30)
/* 80148A20 00145980  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 80148A24 00145984  80 BF 00 BC */	lwz r5, 0xbc(r31)
/* 80148A28 00145988  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80148A2C 0014598C  90 BE 00 BC */	stw r5, 0xbc(r30)
/* 80148A30 00145990  90 1E 00 C0 */	stw r0, 0xc0(r30)
/* 80148A34 00145994  80 BF 00 C4 */	lwz r5, 0xc4(r31)
/* 80148A38 00145998  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80148A3C 0014599C  90 BE 00 C4 */	stw r5, 0xc4(r30)
/* 80148A40 001459A0  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 80148A44 001459A4  80 BF 00 CC */	lwz r5, 0xcc(r31)
/* 80148A48 001459A8  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80148A4C 001459AC  90 BE 00 CC */	stw r5, 0xcc(r30)
/* 80148A50 001459B0  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 80148A54 001459B4  80 BF 00 D4 */	lwz r5, 0xd4(r31)
/* 80148A58 001459B8  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80148A5C 001459BC  90 BE 00 D4 */	stw r5, 0xd4(r30)
/* 80148A60 001459C0  90 1E 00 D8 */	stw r0, 0xd8(r30)
/* 80148A64 001459C4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80148A68 001459C8  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 80148A6C 001459CC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80148A70 001459D0  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 80148A74 001459D4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80148A78 001459D8  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 80148A7C 001459DC  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80148A80 001459E0  D0 1E 00 E8 */	stfs f0, 0xe8(r30)
/* 80148A84 001459E4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80148A88 001459E8  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 80148A8C 001459EC  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80148A90 001459F0  D0 1E 00 F0 */	stfs f0, 0xf0(r30)
/* 80148A94 001459F4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80148A98 001459F8  D0 1E 00 F4 */	stfs f0, 0xf4(r30)
/* 80148A9C 001459FC  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80148AA0 00145A00  D0 1E 00 F8 */	stfs f0, 0xf8(r30)
/* 80148AA4 00145A04  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80148AA8 00145A08  D0 1E 00 FC */	stfs f0, 0xfc(r30)
/* 80148AAC 00145A0C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80148AB0 00145A10  D0 1E 01 00 */	stfs f0, 0x100(r30)
/* 80148AB4 00145A14  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80148AB8 00145A18  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 80148ABC 00145A1C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80148AC0 00145A20  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 80148AC4 00145A24  48 1C A0 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148AC8 00145A28  38 7E 01 3C */	addi r3, r30, 0x13c
/* 80148ACC 00145A2C  38 9F 01 3C */	addi r4, r31, 0x13c
/* 80148AD0 00145A30  48 1C A0 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148AD4 00145A34  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80148AD8 00145A38  38 7E 01 78 */	addi r3, r30, 0x178
/* 80148ADC 00145A3C  38 9F 01 78 */	addi r4, r31, 0x178
/* 80148AE0 00145A40  D0 1E 01 6C */	stfs f0, 0x16c(r30)
/* 80148AE4 00145A44  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80148AE8 00145A48  D0 1E 01 70 */	stfs f0, 0x170(r30)
/* 80148AEC 00145A4C  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80148AF0 00145A50  D0 1E 01 74 */	stfs f0, 0x174(r30)
/* 80148AF4 00145A54  48 1C A0 81 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148AF8 00145A58  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 80148AFC 00145A5C  38 9F 01 A8 */	addi r4, r31, 0x1a8
/* 80148B00 00145A60  48 1C A0 75 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148B04 00145A64  38 7E 01 D8 */	addi r3, r30, 0x1d8
/* 80148B08 00145A68  38 9F 01 D8 */	addi r4, r31, 0x1d8
/* 80148B0C 00145A6C  48 1C A0 69 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148B10 00145A70  38 7E 02 08 */	addi r3, r30, 0x208
/* 80148B14 00145A74  38 9F 02 08 */	addi r4, r31, 0x208
/* 80148B18 00145A78  48 1C 75 0D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 80148B1C 00145A7C  38 7E 02 2C */	addi r3, r30, 0x22c
/* 80148B20 00145A80  38 9F 02 2C */	addi r4, r31, 0x22c
/* 80148B24 00145A84  48 1C A0 51 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80148B28 00145A88  80 1F 02 5C */	lwz r0, 0x25c(r31)
/* 80148B2C 00145A8C  90 1E 02 5C */	stw r0, 0x25c(r30)
/* 80148B30 00145A90  80 1F 02 60 */	lwz r0, 0x260(r31)
/* 80148B34 00145A94  90 1E 02 60 */	stw r0, 0x260(r30)
/* 80148B38 00145A98  80 1F 02 64 */	lwz r0, 0x264(r31)
/* 80148B3C 00145A9C  90 1E 02 64 */	stw r0, 0x264(r30)
/* 80148B40 00145AA0  80 1F 02 68 */	lwz r0, 0x268(r31)
/* 80148B44 00145AA4  90 1E 02 68 */	stw r0, 0x268(r30)
/* 80148B48 00145AA8  88 1F 02 6C */	lbz r0, 0x26c(r31)
/* 80148B4C 00145AAC  98 1E 02 6C */	stb r0, 0x26c(r30)
/* 80148B50 00145AB0  88 1F 02 6D */	lbz r0, 0x26d(r31)
/* 80148B54 00145AB4  98 1E 02 6D */	stb r0, 0x26d(r30)
/* 80148B58 00145AB8  80 1F 02 70 */	lwz r0, 0x270(r31)
/* 80148B5C 00145ABC  90 1E 02 70 */	stw r0, 0x270(r30)
/* 80148B60 00145AC0  88 1F 02 74 */	lbz r0, 0x274(r31)
/* 80148B64 00145AC4  98 1E 02 74 */	stb r0, 0x274(r30)
/* 80148B68 00145AC8  80 1F 02 78 */	lwz r0, 0x278(r31)
/* 80148B6C 00145ACC  90 1E 02 78 */	stw r0, 0x278(r30)
/* 80148B70 00145AD0  80 1F 02 7C */	lwz r0, 0x27c(r31)
/* 80148B74 00145AD4  90 1E 02 7C */	stw r0, 0x27c(r30)
/* 80148B78 00145AD8  80 7F 02 80 */	lwz r3, 0x280(r31)
/* 80148B7C 00145ADC  80 1F 02 84 */	lwz r0, 0x284(r31)
/* 80148B80 00145AE0  90 7E 02 80 */	stw r3, 0x280(r30)
/* 80148B84 00145AE4  90 1E 02 84 */	stw r0, 0x284(r30)
/* 80148B88 00145AE8  80 7F 02 88 */	lwz r3, 0x288(r31)
/* 80148B8C 00145AEC  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 80148B90 00145AF0  90 7E 02 88 */	stw r3, 0x288(r30)
/* 80148B94 00145AF4  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 80148B98 00145AF8  80 1F 02 94 */	lwz r0, 0x294(r31)
/* 80148B9C 00145AFC  90 1E 02 94 */	stw r0, 0x294(r30)
/* 80148BA0 00145B00  80 1F 02 98 */	lwz r0, 0x298(r31)
/* 80148BA4 00145B04  90 1E 02 98 */	stw r0, 0x298(r30)
/* 80148BA8 00145B08  80 1F 02 94 */	lwz r0, 0x294(r31)
/* 80148BAC 00145B0C  2C 00 00 00 */	cmpwi r0, 0
/* 80148BB0 00145B10  40 82 00 1C */	bne lbl_80148BCC
/* 80148BB4 00145B14  80 1F 02 98 */	lwz r0, 0x298(r31)
/* 80148BB8 00145B18  2C 00 00 00 */	cmpwi r0, 0
/* 80148BBC 00145B1C  40 82 00 10 */	bne lbl_80148BCC
/* 80148BC0 00145B20  38 00 00 00 */	li r0, 0
/* 80148BC4 00145B24  90 1E 02 9C */	stw r0, 0x29c(r30)
/* 80148BC8 00145B28  48 00 00 68 */	b lbl_80148C30
lbl_80148BCC:
/* 80148BCC 00145B2C  80 1E 02 98 */	lwz r0, 0x298(r30)
/* 80148BD0 00145B30  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 80148BD4 00145B34  40 82 00 10 */	bne lbl_80148BE4
/* 80148BD8 00145B38  38 00 00 00 */	li r0, 0
/* 80148BDC 00145B3C  90 1E 02 9C */	stw r0, 0x29c(r30)
/* 80148BE0 00145B40  48 00 00 1C */	b lbl_80148BFC
lbl_80148BE4:
/* 80148BE4 00145B44  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 80148BE8 00145B48  38 A0 00 00 */	li r5, 0
/* 80148BEC 00145B4C  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 80148BF0 00145B50  38 84 00 C7 */	addi r4, r4, 0xc7
/* 80148BF4 00145B54  48 1C CC 25 */	bl __nwa__FUlPCcPCc
/* 80148BF8 00145B58  90 7E 02 9C */	stw r3, 0x29c(r30)
lbl_80148BFC:
/* 80148BFC 00145B5C  80 1E 02 94 */	lwz r0, 0x294(r30)
/* 80148C00 00145B60  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 80148C04 00145B64  80 7E 02 9C */	lwz r3, 0x29c(r30)
/* 80148C08 00145B68  7C 09 03 A6 */	mtctr r0
/* 80148C0C 00145B6C  2C 00 00 00 */	cmpwi r0, 0
/* 80148C10 00145B70  40 81 00 20 */	ble lbl_80148C30
lbl_80148C14:
/* 80148C14 00145B74  28 03 00 00 */	cmplwi r3, 0
/* 80148C18 00145B78  41 82 00 0C */	beq lbl_80148C24
/* 80148C1C 00145B7C  80 04 00 00 */	lwz r0, 0(r4)
/* 80148C20 00145B80  90 03 00 00 */	stw r0, 0(r3)
lbl_80148C24:
/* 80148C24 00145B84  38 63 00 04 */	addi r3, r3, 4
/* 80148C28 00145B88  38 84 00 04 */	addi r4, r4, 4
/* 80148C2C 00145B8C  42 00 FF E8 */	bdnz lbl_80148C14
lbl_80148C30:
/* 80148C30 00145B90  80 1F 02 A0 */	lwz r0, 0x2a0(r31)
/* 80148C34 00145B94  7F C3 F3 78 */	mr r3, r30
/* 80148C38 00145B98  90 1E 02 A0 */	stw r0, 0x2a0(r30)
/* 80148C3C 00145B9C  80 1F 02 A4 */	lwz r0, 0x2a4(r31)
/* 80148C40 00145BA0  90 1E 02 A4 */	stw r0, 0x2a4(r30)
/* 80148C44 00145BA4  80 1F 02 A8 */	lwz r0, 0x2a8(r31)
/* 80148C48 00145BA8  90 1E 02 A8 */	stw r0, 0x2a8(r30)
/* 80148C4C 00145BAC  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 80148C50 00145BB0  90 1E 02 AC */	stw r0, 0x2ac(r30)
/* 80148C54 00145BB4  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 80148C58 00145BB8  D0 1E 02 B0 */	stfs f0, 0x2b0(r30)
/* 80148C5C 00145BBC  C0 1F 02 B4 */	lfs f0, 0x2b4(r31)
/* 80148C60 00145BC0  D0 1E 02 B4 */	stfs f0, 0x2b4(r30)
/* 80148C64 00145BC4  C0 1F 02 B8 */	lfs f0, 0x2b8(r31)
/* 80148C68 00145BC8  D0 1E 02 B8 */	stfs f0, 0x2b8(r30)
/* 80148C6C 00145BCC  80 1F 02 BC */	lwz r0, 0x2bc(r31)
/* 80148C70 00145BD0  90 1E 02 BC */	stw r0, 0x2bc(r30)
/* 80148C74 00145BD4  C0 1F 02 C0 */	lfs f0, 0x2c0(r31)
/* 80148C78 00145BD8  D0 1E 02 C0 */	stfs f0, 0x2c0(r30)
/* 80148C7C 00145BDC  C0 1F 02 C4 */	lfs f0, 0x2c4(r31)
/* 80148C80 00145BE0  D0 1E 02 C4 */	stfs f0, 0x2c4(r30)
/* 80148C84 00145BE4  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 80148C88 00145BE8  D0 1E 02 C8 */	stfs f0, 0x2c8(r30)
/* 80148C8C 00145BEC  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 80148C90 00145BF0  D0 1E 02 CC */	stfs f0, 0x2cc(r30)
/* 80148C94 00145BF4  C0 1F 02 D0 */	lfs f0, 0x2d0(r31)
/* 80148C98 00145BF8  D0 1E 02 D0 */	stfs f0, 0x2d0(r30)
/* 80148C9C 00145BFC  C0 1F 02 D4 */	lfs f0, 0x2d4(r31)
/* 80148CA0 00145C00  D0 1E 02 D4 */	stfs f0, 0x2d4(r30)
/* 80148CA4 00145C04  C0 1F 02 D8 */	lfs f0, 0x2d8(r31)
/* 80148CA8 00145C08  D0 1E 02 D8 */	stfs f0, 0x2d8(r30)
/* 80148CAC 00145C0C  C0 1F 02 DC */	lfs f0, 0x2dc(r31)
/* 80148CB0 00145C10  D0 1E 02 DC */	stfs f0, 0x2dc(r30)
/* 80148CB4 00145C14  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 80148CB8 00145C18  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 80148CBC 00145C1C  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 80148CC0 00145C20  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 80148CC4 00145C24  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 80148CC8 00145C28  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 80148CCC 00145C2C  C0 1F 02 EC */	lfs f0, 0x2ec(r31)
/* 80148CD0 00145C30  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 80148CD4 00145C34  C0 1F 02 F0 */	lfs f0, 0x2f0(r31)
/* 80148CD8 00145C38  D0 1E 02 F0 */	stfs f0, 0x2f0(r30)
/* 80148CDC 00145C3C  C0 1F 02 F4 */	lfs f0, 0x2f4(r31)
/* 80148CE0 00145C40  D0 1E 02 F4 */	stfs f0, 0x2f4(r30)
/* 80148CE4 00145C44  C0 1F 02 F8 */	lfs f0, 0x2f8(r31)
/* 80148CE8 00145C48  D0 1E 02 F8 */	stfs f0, 0x2f8(r30)
/* 80148CEC 00145C4C  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 80148CF0 00145C50  D0 1E 02 FC */	stfs f0, 0x2fc(r30)
/* 80148CF4 00145C54  C0 1F 03 00 */	lfs f0, 0x300(r31)
/* 80148CF8 00145C58  D0 1E 03 00 */	stfs f0, 0x300(r30)
/* 80148CFC 00145C5C  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 80148D00 00145C60  D0 1E 03 04 */	stfs f0, 0x304(r30)
/* 80148D04 00145C64  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80148D08 00145C68  90 1E 03 08 */	stw r0, 0x308(r30)
/* 80148D0C 00145C6C  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80148D10 00145C70  90 1E 03 0C */	stw r0, 0x30c(r30)
/* 80148D14 00145C74  C0 1F 03 10 */	lfs f0, 0x310(r31)
/* 80148D18 00145C78  D0 1E 03 10 */	stfs f0, 0x310(r30)
/* 80148D1C 00145C7C  C0 1F 03 14 */	lfs f0, 0x314(r31)
/* 80148D20 00145C80  D0 1E 03 14 */	stfs f0, 0x314(r30)
/* 80148D24 00145C84  C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 80148D28 00145C88  D0 1E 03 18 */	stfs f0, 0x318(r30)
/* 80148D2C 00145C8C  C0 1F 03 1C */	lfs f0, 0x31c(r31)
/* 80148D30 00145C90  D0 1E 03 1C */	stfs f0, 0x31c(r30)
/* 80148D34 00145C94  C0 1F 03 20 */	lfs f0, 0x320(r31)
/* 80148D38 00145C98  D0 1E 03 20 */	stfs f0, 0x320(r30)
/* 80148D3C 00145C9C  C0 1F 03 24 */	lfs f0, 0x324(r31)
/* 80148D40 00145CA0  D0 1E 03 24 */	stfs f0, 0x324(r30)
/* 80148D44 00145CA4  C0 1F 03 28 */	lfs f0, 0x328(r31)
/* 80148D48 00145CA8  D0 1E 03 28 */	stfs f0, 0x328(r30)
/* 80148D4C 00145CAC  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80148D50 00145CB0  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80148D54 00145CB4  C0 1F 03 30 */	lfs f0, 0x330(r31)
/* 80148D58 00145CB8  D0 1E 03 30 */	stfs f0, 0x330(r30)
/* 80148D5C 00145CBC  C0 1F 03 34 */	lfs f0, 0x334(r31)
/* 80148D60 00145CC0  D0 1E 03 34 */	stfs f0, 0x334(r30)
/* 80148D64 00145CC4  80 1F 03 38 */	lwz r0, 0x338(r31)
/* 80148D68 00145CC8  90 1E 03 38 */	stw r0, 0x338(r30)
/* 80148D6C 00145CCC  BB 41 00 08 */	lmw r26, 8(r1)
/* 80148D70 00145CD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80148D74 00145CD4  7C 08 03 A6 */	mtlr r0
/* 80148D78 00145CD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80148D7C 00145CDC  4E 80 00 20 */	blr

.global sub_80148d80
sub_80148d80:
/* 80148D80 00145CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148D84 00145CE4  7C 08 02 A6 */	mflr r0
/* 80148D88 00145CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148D8C 00145CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148D90 00145CF0  7C 9F 23 78 */	mr r31, r4
/* 80148D94 00145CF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80148D98 00145CF8  7C 7E 1B 78 */	mr r30, r3
/* 80148D9C 00145CFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80148DA0 00145D00  90 03 00 04 */	stw r0, 4(r3)
/* 80148DA4 00145D04  80 04 00 08 */	lwz r0, 8(r4)
/* 80148DA8 00145D08  90 03 00 08 */	stw r0, 8(r3)
/* 80148DAC 00145D0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80148DB0 00145D10  2C 00 00 00 */	cmpwi r0, 0
/* 80148DB4 00145D14  40 82 00 1C */	bne lbl_80148DD0
/* 80148DB8 00145D18  80 1F 00 08 */	lwz r0, 8(r31)
/* 80148DBC 00145D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80148DC0 00145D20  40 82 00 10 */	bne lbl_80148DD0
/* 80148DC4 00145D24  38 00 00 00 */	li r0, 0
/* 80148DC8 00145D28  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80148DCC 00145D2C  48 00 00 48 */	b lbl_80148E14
lbl_80148DD0:
/* 80148DD0 00145D30  80 1E 00 08 */	lwz r0, 8(r30)
/* 80148DD4 00145D34  1C 60 00 38 */	mulli r3, r0, 0x38
/* 80148DD8 00145D38  2C 03 00 00 */	cmpwi r3, 0
/* 80148DDC 00145D3C  40 82 00 10 */	bne lbl_80148DEC
/* 80148DE0 00145D40  38 00 00 00 */	li r0, 0
/* 80148DE4 00145D44  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80148DE8 00145D48  48 00 00 1C */	b lbl_80148E04
lbl_80148DEC:
/* 80148DEC 00145D4C  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 80148DF0 00145D50  38 A0 00 00 */	li r5, 0
/* 80148DF4 00145D54  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 80148DF8 00145D58  38 84 00 C7 */	addi r4, r4, 0xc7
/* 80148DFC 00145D5C  48 1C CA 1D */	bl __nwa__FUlPCcPCc
/* 80148E00 00145D60  90 7E 00 0C */	stw r3, 0xc(r30)
lbl_80148E04:
/* 80148E04 00145D64  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80148E08 00145D68  80 9E 00 04 */	lwz r4, 4(r30)
/* 80148E0C 00145D6C  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 80148E10 00145D70  48 00 00 21 */	bl sub_80148e30
lbl_80148E14:
/* 80148E14 00145D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148E18 00145D78  7F C3 F3 78 */	mr r3, r30
/* 80148E1C 00145D7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80148E20 00145D80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80148E24 00145D84  7C 08 03 A6 */	mtlr r0
/* 80148E28 00145D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80148E2C 00145D8C  4E 80 00 20 */	blr

.global sub_80148e30
sub_80148e30:
/* 80148E30 00145D90  7C 89 03 A6 */	mtctr r4
/* 80148E34 00145D94  2C 04 00 00 */	cmpwi r4, 0
/* 80148E38 00145D98  40 81 00 88 */	ble lbl_80148EC0
lbl_80148E3C:
/* 80148E3C 00145D9C  28 05 00 00 */	cmplwi r5, 0
/* 80148E40 00145DA0  41 82 00 74 */	beq lbl_80148EB4
/* 80148E44 00145DA4  80 03 00 00 */	lwz r0, 0(r3)
/* 80148E48 00145DA8  90 05 00 00 */	stw r0, 0(r5)
/* 80148E4C 00145DAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80148E50 00145DB0  D0 05 00 04 */	stfs f0, 4(r5)
/* 80148E54 00145DB4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80148E58 00145DB8  D0 05 00 08 */	stfs f0, 8(r5)
/* 80148E5C 00145DBC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80148E60 00145DC0  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 80148E64 00145DC4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80148E68 00145DC8  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80148E6C 00145DCC  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80148E70 00145DD0  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 80148E74 00145DD4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80148E78 00145DD8  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 80148E7C 00145DDC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80148E80 00145DE0  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80148E84 00145DE4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80148E88 00145DE8  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80148E8C 00145DEC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80148E90 00145DF0  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80148E94 00145DF4  80 03 00 28 */	lwz r0, 0x28(r3)
/* 80148E98 00145DF8  90 05 00 28 */	stw r0, 0x28(r5)
/* 80148E9C 00145DFC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80148EA0 00145E00  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 80148EA4 00145E04  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80148EA8 00145E08  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 80148EAC 00145E0C  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80148EB0 00145E10  90 05 00 34 */	stw r0, 0x34(r5)
lbl_80148EB4:
/* 80148EB4 00145E14  38 A5 00 38 */	addi r5, r5, 0x38
/* 80148EB8 00145E18  38 63 00 38 */	addi r3, r3, 0x38
/* 80148EBC 00145E1C  42 00 FF 80 */	bdnz lbl_80148E3C
lbl_80148EC0:
/* 80148EC0 00145E20  7C A3 2B 78 */	mr r3, r5
/* 80148EC4 00145E24  4E 80 00 20 */	blr

.global sub_80148ec8
sub_80148ec8:
/* 80148EC8 00145E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148ECC 00145E2C  7C 08 02 A6 */	mflr r0
/* 80148ED0 00145E30  3C A0 80 3F */	lis r5, __vt__12CParticleGen@ha
/* 80148ED4 00145E34  38 84 00 04 */	addi r4, r4, 4
/* 80148ED8 00145E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148EDC 00145E3C  38 05 DD 08 */	addi r0, r5, __vt__12CParticleGen@l
/* 80148EE0 00145E40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80148EE4 00145E44  7C 7F 1B 78 */	mr r31, r3
/* 80148EE8 00145E48  90 03 00 00 */	stw r0, 0(r3)
/* 80148EEC 00145E4C  38 7F 00 04 */	addi r3, r31, 4
/* 80148EF0 00145E50  48 00 00 1D */	bl sub_80148f0c
/* 80148EF4 00145E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148EF8 00145E58  7F E3 FB 78 */	mr r3, r31
/* 80148EFC 00145E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80148F00 00145E60  7C 08 03 A6 */	mtlr r0
/* 80148F04 00145E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80148F08 00145E68  4E 80 00 20 */	blr

.global sub_80148f0c
sub_80148f0c:
/* 80148F0C 00145E6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80148F10 00145E70  7C 08 02 A6 */	mflr r0
/* 80148F14 00145E74  38 E0 00 00 */	li r7, 0
/* 80148F18 00145E78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80148F1C 00145E7C  38 00 00 01 */	li r0, 1
/* 80148F20 00145E80  38 A1 00 14 */	addi r5, r1, 0x14
/* 80148F24 00145E84  38 C1 00 0C */	addi r6, r1, 0xc
/* 80148F28 00145E88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80148F2C 00145E8C  7C 7F 1B 78 */	mr r31, r3
/* 80148F30 00145E90  39 1F 00 0C */	addi r8, r31, 0xc
/* 80148F34 00145E94  91 03 00 04 */	stw r8, 4(r3)
/* 80148F38 00145E98  91 03 00 08 */	stw r8, 8(r3)
/* 80148F3C 00145E9C  91 03 00 0C */	stw r8, 0xc(r3)
/* 80148F40 00145EA0  91 03 00 10 */	stw r8, 0x10(r3)
/* 80148F44 00145EA4  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80148F48 00145EA8  81 04 00 08 */	lwz r8, 8(r4)
/* 80148F4C 00145EAC  80 E4 00 04 */	lwz r7, 4(r4)
/* 80148F50 00145EB0  38 81 00 18 */	addi r4, r1, 0x18
/* 80148F54 00145EB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80148F58 00145EB8  98 01 00 20 */	stb r0, 0x20(r1)
/* 80148F5C 00145EBC  91 01 00 0C */	stw r8, 0xc(r1)
/* 80148F60 00145EC0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80148F64 00145EC4  80 03 00 08 */	lwz r0, 8(r3)
/* 80148F68 00145EC8  91 01 00 08 */	stw r8, 8(r1)
/* 80148F6C 00145ECC  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80148F70 00145ED0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80148F74 00145ED4  48 00 00 31 */	bl sub_80148fa4
/* 80148F78 00145ED8  38 00 00 00 */	li r0, 0
/* 80148F7C 00145EDC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80148F80 00145EE0  98 01 00 20 */	stb r0, 0x20(r1)
/* 80148F84 00145EE4  38 80 FF FF */	li r4, -1
/* 80148F88 00145EE8  48 00 00 D1 */	bl sub_80149058
/* 80148F8C 00145EEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80148F90 00145EF0  7F E3 FB 78 */	mr r3, r31
/* 80148F94 00145EF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80148F98 00145EF8  7C 08 03 A6 */	mtlr r0
/* 80148F9C 00145EFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80148FA0 00145F00  4E 80 00 20 */	blr

.global sub_80148fa4
sub_80148fa4:
/* 80148FA4 00145F04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80148FA8 00145F08  7C 08 02 A6 */	mflr r0
/* 80148FAC 00145F0C  3C E0 80 3D */	lis r7, lbl_803D00A0@ha
/* 80148FB0 00145F10  90 01 00 34 */	stw r0, 0x34(r1)
/* 80148FB4 00145F14  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80148FB8 00145F18  7C 79 1B 78 */	mr r25, r3
/* 80148FBC 00145F1C  7C 9A 23 78 */	mr r26, r4
/* 80148FC0 00145F20  7C DB 33 78 */	mr r27, r6
/* 80148FC4 00145F24  3B E7 00 A0 */	addi r31, r7, lbl_803D00A0@l
/* 80148FC8 00145F28  83 85 00 00 */	lwz r28, 0(r5)
/* 80148FCC 00145F2C  48 00 00 6C */	b lbl_80149038
lbl_80148FD0:
/* 80148FD0 00145F30  83 DA 00 00 */	lwz r30, 0(r26)
/* 80148FD4 00145F34  38 9F 00 C7 */	addi r4, r31, 0xc7
/* 80148FD8 00145F38  38 60 00 0C */	li r3, 0xc
/* 80148FDC 00145F3C  38 A0 00 00 */	li r5, 0
/* 80148FE0 00145F40  83 BE 00 00 */	lwz r29, 0(r30)
/* 80148FE4 00145F44  48 1C C8 35 */	bl __nwa__FUlPCcPCc
/* 80148FE8 00145F48  28 03 00 00 */	cmplwi r3, 0
/* 80148FEC 00145F4C  41 82 00 0C */	beq lbl_80148FF8
/* 80148FF0 00145F50  93 A3 00 00 */	stw r29, 0(r3)
/* 80148FF4 00145F54  93 C3 00 04 */	stw r30, 4(r3)
lbl_80148FF8:
/* 80148FF8 00145F58  34 83 00 08 */	addic. r4, r3, 8
/* 80148FFC 00145F5C  41 82 00 0C */	beq lbl_80149008
/* 80149000 00145F60  80 1C 00 08 */	lwz r0, 8(r28)
/* 80149004 00145F64  90 04 00 00 */	stw r0, 0(r4)
lbl_80149008:
/* 80149008 00145F68  80 19 00 04 */	lwz r0, 4(r25)
/* 8014900C 00145F6C  7C 1E 00 40 */	cmplw r30, r0
/* 80149010 00145F70  40 82 00 08 */	bne lbl_80149018
/* 80149014 00145F74  90 79 00 04 */	stw r3, 4(r25)
lbl_80149018:
/* 80149018 00145F78  80 83 00 00 */	lwz r4, 0(r3)
/* 8014901C 00145F7C  90 64 00 04 */	stw r3, 4(r4)
/* 80149020 00145F80  80 83 00 04 */	lwz r4, 4(r3)
/* 80149024 00145F84  90 64 00 00 */	stw r3, 0(r4)
/* 80149028 00145F88  80 79 00 14 */	lwz r3, 0x14(r25)
/* 8014902C 00145F8C  38 03 00 01 */	addi r0, r3, 1
/* 80149030 00145F90  90 19 00 14 */	stw r0, 0x14(r25)
/* 80149034 00145F94  83 9C 00 04 */	lwz r28, 4(r28)
lbl_80149038:
/* 80149038 00145F98  80 1B 00 00 */	lwz r0, 0(r27)
/* 8014903C 00145F9C  7C 1C 00 40 */	cmplw r28, r0
/* 80149040 00145FA0  40 82 FF 90 */	bne lbl_80148FD0
/* 80149044 00145FA4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80149048 00145FA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8014904C 00145FAC  7C 08 03 A6 */	mtlr r0
/* 80149050 00145FB0  38 21 00 30 */	addi r1, r1, 0x30
/* 80149054 00145FB4  4E 80 00 20 */	blr

.global sub_80149058
sub_80149058:
/* 80149058 00145FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8014905C 00145FBC  7C 08 02 A6 */	mflr r0
/* 80149060 00145FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80149064 00145FC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80149068 00145FC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8014906C 00145FCC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80149070 00145FD0  7C 9D 23 78 */	mr r29, r4
/* 80149074 00145FD4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80149078 00145FD8  7C 7C 1B 79 */	or. r28, r3, r3
/* 8014907C 00145FDC  41 82 00 44 */	beq lbl_801490C0
/* 80149080 00145FE0  88 1C 00 04 */	lbz r0, 4(r28)
/* 80149084 00145FE4  28 00 00 00 */	cmplwi r0, 0
/* 80149088 00145FE8  41 82 00 28 */	beq lbl_801490B0
/* 8014908C 00145FEC  83 FC 00 00 */	lwz r31, 0(r28)
/* 80149090 00145FF0  83 DF 00 08 */	lwz r30, 8(r31)
/* 80149094 00145FF4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80149098 00145FF8  48 00 00 10 */	b lbl_801490A8
lbl_8014909C:
/* 8014909C 00145FFC  7F E3 FB 78 */	mr r3, r31
/* 801490A0 00146000  48 00 01 95 */	bl sub_80149234
/* 801490A4 00146004  7C 64 1B 78 */	mr r4, r3
lbl_801490A8:
/* 801490A8 00146008  7C 04 F0 40 */	cmplw r4, r30
/* 801490AC 0014600C  40 82 FF F0 */	bne lbl_8014909C
lbl_801490B0:
/* 801490B0 00146010  7F A0 07 35 */	extsh. r0, r29
/* 801490B4 00146014  40 81 00 0C */	ble lbl_801490C0
/* 801490B8 00146018  7F 83 E3 78 */	mr r3, r28
/* 801490BC 0014601C  48 1C C8 75 */	bl Free__7CMemoryFPCv
lbl_801490C0:
/* 801490C0 00146020  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801490C4 00146024  7F 83 E3 78 */	mr r3, r28
/* 801490C8 00146028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801490CC 0014602C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801490D0 00146030  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801490D4 00146034  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801490D8 00146038  7C 08 03 A6 */	mtlr r0
/* 801490DC 0014603C  38 21 00 20 */	addi r1, r1, 0x20
/* 801490E0 00146040  4E 80 00 20 */	blr

.global sub_801490e4
sub_801490e4:
/* 801490E4 00146044  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801490E8 00146048  7C 08 02 A6 */	mflr r0
/* 801490EC 0014604C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801490F0 00146050  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801490F4 00146054  7C 9F 23 78 */	mr r31, r4
/* 801490F8 00146058  7C 7E 1B 78 */	mr r30, r3
/* 801490FC 0014605C  80 03 00 08 */	lwz r0, 8(r3)
/* 80149100 00146060  7C 1F 00 00 */	cmpw r31, r0
/* 80149104 00146064  40 81 00 B4 */	ble lbl_801491B8
/* 80149108 00146068  1C 7F 03 40 */	mulli r3, r31, 0x340
/* 8014910C 0014606C  2C 03 00 00 */	cmpwi r3, 0
/* 80149110 00146070  40 82 00 0C */	bne lbl_8014911C
/* 80149114 00146074  3B A0 00 00 */	li r29, 0
/* 80149118 00146078  48 00 00 1C */	b lbl_80149134
lbl_8014911C:
/* 8014911C 0014607C  3C 80 80 3D */	lis r4, lbl_803D00A0@ha
/* 80149120 00146080  38 A0 00 00 */	li r5, 0
/* 80149124 00146084  38 84 00 A0 */	addi r4, r4, lbl_803D00A0@l
/* 80149128 00146088  38 84 00 C7 */	addi r4, r4, 0xc7
/* 8014912C 0014608C  48 1C C6 ED */	bl __nwa__FUlPCcPCc
/* 80149130 00146090  7C 7D 1B 78 */	mr r29, r3
lbl_80149134:
/* 80149134 00146094  80 1E 00 04 */	lwz r0, 4(r30)
/* 80149138 00146098  7F A5 EB 78 */	mr r5, r29
/* 8014913C 0014609C  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 80149140 001460A0  38 61 00 14 */	addi r3, r1, 0x14
/* 80149144 001460A4  1C 00 03 40 */	mulli r0, r0, 0x340
/* 80149148 001460A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8014914C 001460AC  7C C6 02 14 */	add r6, r6, r0
/* 80149150 001460B0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80149154 001460B4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 80149158 001460B8  90 C1 00 08 */	stw r6, 8(r1)
/* 8014915C 001460BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80149160 001460C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80149164 001460C4  48 00 00 69 */	bl sub_801491cc
/* 80149168 001460C8  80 1E 00 04 */	lwz r0, 4(r30)
/* 8014916C 001460CC  83 7E 00 0C */	lwz r27, 0xc(r30)
/* 80149170 001460D0  1C 00 03 40 */	mulli r0, r0, 0x340
/* 80149174 001460D4  7F 9B 02 14 */	add r28, r27, r0
/* 80149178 001460D8  48 00 00 20 */	b lbl_80149198
lbl_8014917C:
/* 8014917C 001460DC  7F 63 DB 78 */	mr r3, r27
/* 80149180 001460E0  38 80 FF FF */	li r4, -1
/* 80149184 001460E4  81 9B 00 00 */	lwz r12, 0(r27)
/* 80149188 001460E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8014918C 001460EC  7D 89 03 A6 */	mtctr r12
/* 80149190 001460F0  4E 80 04 21 */	bctrl
/* 80149194 001460F4  3B 7B 03 40 */	addi r27, r27, 0x340
lbl_80149198:
/* 80149198 001460F8  7C 1B E0 40 */	cmplw r27, r28
/* 8014919C 001460FC  40 82 FF E0 */	bne lbl_8014917C
/* 801491A0 00146100  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801491A4 00146104  28 03 00 00 */	cmplwi r3, 0
/* 801491A8 00146108  41 82 00 08 */	beq lbl_801491B0
/* 801491AC 0014610C  48 1C C7 85 */	bl Free__7CMemoryFPCv
lbl_801491B0:
/* 801491B0 00146110  93 BE 00 0C */	stw r29, 0xc(r30)
/* 801491B4 00146114  93 FE 00 08 */	stw r31, 8(r30)
lbl_801491B8:
/* 801491B8 00146118  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801491BC 0014611C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801491C0 00146120  7C 08 03 A6 */	mtlr r0
/* 801491C4 00146124  38 21 00 30 */	addi r1, r1, 0x30
/* 801491C8 00146128  4E 80 00 20 */	blr

.global sub_801491cc
sub_801491cc:
/* 801491CC 0014612C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801491D0 00146130  7C 08 02 A6 */	mflr r0
/* 801491D4 00146134  90 01 00 24 */	stw r0, 0x24(r1)
/* 801491D8 00146138  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801491DC 0014613C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801491E0 00146140  7C BE 2B 78 */	mr r30, r5
/* 801491E4 00146144  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801491E8 00146148  7C 9D 23 78 */	mr r29, r4
/* 801491EC 0014614C  83 E3 00 00 */	lwz r31, 0(r3)
/* 801491F0 00146150  48 00 00 18 */	b lbl_80149208
lbl_801491F4:
/* 801491F4 00146154  7F C3 F3 78 */	mr r3, r30
/* 801491F8 00146158  7F E4 FB 78 */	mr r4, r31
/* 801491FC 0014615C  4B FF F4 E5 */	bl sub_801486e0
/* 80149200 00146160  3B DE 03 40 */	addi r30, r30, 0x340
/* 80149204 00146164  3B FF 03 40 */	addi r31, r31, 0x340
lbl_80149208:
/* 80149208 00146168  80 1D 00 00 */	lwz r0, 0(r29)
/* 8014920C 0014616C  7C 1F 00 40 */	cmplw r31, r0
/* 80149210 00146170  40 82 FF E4 */	bne lbl_801491F4
/* 80149214 00146174  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80149218 00146178  7F C3 F3 78 */	mr r3, r30
/* 8014921C 0014617C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80149220 00146180  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80149224 00146184  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80149228 00146188  7C 08 03 A6 */	mtlr r0
/* 8014922C 0014618C  38 21 00 20 */	addi r1, r1, 0x20
/* 80149230 00146190  4E 80 00 20 */	blr

.global sub_80149234
sub_80149234:
/* 80149234 00146194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80149238 00146198  7C 08 02 A6 */	mflr r0
/* 8014923C 0014619C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80149240 001461A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80149244 001461A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80149248 001461A8  7C 7E 1B 78 */	mr r30, r3
/* 8014924C 001461AC  80 03 00 04 */	lwz r0, 4(r3)
/* 80149250 001461B0  83 E4 00 04 */	lwz r31, 4(r4)
/* 80149254 001461B4  7C 04 00 40 */	cmplw r4, r0
/* 80149258 001461B8  40 82 00 08 */	bne lbl_80149260
/* 8014925C 001461BC  93 FE 00 04 */	stw r31, 4(r30)
lbl_80149260:
/* 80149260 001461C0  80 04 00 04 */	lwz r0, 4(r4)
/* 80149264 001461C4  28 04 00 00 */	cmplwi r4, 0
/* 80149268 001461C8  80 64 00 00 */	lwz r3, 0(r4)
/* 8014926C 001461CC  90 03 00 04 */	stw r0, 4(r3)
/* 80149270 001461D0  80 04 00 00 */	lwz r0, 0(r4)
/* 80149274 001461D4  80 64 00 04 */	lwz r3, 4(r4)
/* 80149278 001461D8  90 03 00 00 */	stw r0, 0(r3)
/* 8014927C 001461DC  41 82 00 0C */	beq lbl_80149288
/* 80149280 001461E0  7C 83 23 78 */	mr r3, r4
/* 80149284 001461E4  48 1C C6 AD */	bl Free__7CMemoryFPCv
lbl_80149288:
/* 80149288 001461E8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8014928C 001461EC  7F E3 FB 78 */	mr r3, r31
/* 80149290 001461F0  38 04 FF FF */	addi r0, r4, -1
/* 80149294 001461F4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80149298 001461F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014929C 001461FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801492A0 00146200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801492A4 00146204  7C 08 03 A6 */	mtlr r0
/* 801492A8 00146208  38 21 00 10 */	addi r1, r1, 0x10
/* 801492AC 0014620C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB9A8
lbl_805AB9A8:
	# ROM: 0x3F8248
	.4byte 0

.global lbl_805AB9AC
lbl_805AB9AC:
	# ROM: 0x3F824C
	.float -1.0

.global lbl_805AB9B0
lbl_805AB9B0:
	# ROM: 0x3F8250
	.float 0.25

.global lbl_805AB9B4
lbl_805AB9B4:
	# ROM: 0x3F8254
	.4byte 0xC0200000

.global lbl_805AB9B8
lbl_805AB9B8:
	# ROM: 0x3F8258
	.float 1.0

.global lbl_805AB9BC
lbl_805AB9BC:
	# ROM: 0x3F825C
	.float 1.5

.global lbl_805AB9C0
lbl_805AB9C0:
	# ROM: 0x3F8260
	.float 0.5

.global lbl_805AB9C4
lbl_805AB9C4:
	# ROM: 0x3F8264
	.float 0.001

.global lbl_805AB9C8
lbl_805AB9C8:
	# ROM: 0x3F8268
	.4byte 0xB8D1B717

.global lbl_805AB9CC
lbl_805AB9CC:
	# ROM: 0x3F826C
	.4byte 0x3D4CCCD0

.global lbl_805AB9D0
lbl_805AB9D0:
	# ROM: 0x3F8270
	.4byte 0x3F733333

.global lbl_805AB9D4
lbl_805AB9D4:
	# ROM: 0x3F8274
	.float 0.2

.global lbl_805AB9D8
lbl_805AB9D8:
	# ROM: 0x3F8278
	.float 0.3

.global lbl_805AB9DC
lbl_805AB9DC:
	# ROM: 0x3F827C
	.4byte 0xBF000000

.global lbl_805AB9E0
lbl_805AB9E0:
	# ROM: 0x3F8280
	.4byte 0x4039999A

.global lbl_805AB9E4
lbl_805AB9E4:
	# ROM: 0x3F8284
	.float 2.0

.global lbl_805AB9E8
lbl_805AB9E8:
	# ROM: 0x3F8288
	.float 0.01

.global lbl_805AB9EC
lbl_805AB9EC:
	# ROM: 0x3F828C
	.float 1000000.0


.section .rodata
.balign 8
.global lbl_803D00A0
lbl_803D00A0:

	# ROM: 0x3CD0A0
	.asciz "Glow_1_LCTR"

.global lbl_803D00AC
lbl_803D00AC:

	# ROM: 0x3CD0AC
	.asciz "Glow_2_LCTR"

.global lbl_803D00B8
lbl_803D00B8:

	# ROM: 0x3CD0B8
	.asciz "Glow_3_LCTR"

.global lbl_803D00C4
lbl_803D00C4:

	# ROM: 0x3CD0C4
	.asciz "Glow_4_LCTR"

.global lbl_803D00D0
lbl_803D00D0:

	# ROM: 0x3CD0D0
	.asciz "Glow_5_LCTR"

.global lbl_803D00DC
lbl_803D00DC:

	# ROM: 0x3CD0DC
	.asciz "Glow_6_LCTR"

.global lbl_803D00E8
lbl_803D00E8:

	# ROM: 0x3CD0E8
	.asciz "Glow_7_LCTR"

.global lbl_803D00F4
lbl_803D00F4:

	# ROM: 0x3CD0F4
	.asciz "Glow_8_LCTR"

.global lbl_803D0100
lbl_803D0100:

	# ROM: 0x3CD100
	.asciz "Glow_9_LCTR"

.global lbl_803D010C
lbl_803D010C:

	# ROM: 0x3CD10C
	.asciz "Glow_10_LCTR"

.global lbl_803D0119
lbl_803D0119:

	# ROM: 0x3CD119
	.byte 0x47, 0x6C, 0x6F
	.asciz "w_11_LCTR"

.global lbl_803D0126
lbl_803D0126:

	# ROM: 0x3CD126
	.byte 0x47, 0x6C
	.asciz "ow_12_LCTR"

.global lbl_803D0133
lbl_803D0133:

	# ROM: 0x3CD133
	.byte 0x47
	.asciz "low_13_LCTR"

.global lbl_803D0140
lbl_803D0140:

	# ROM: 0x3CD140
	.asciz "Glow_14_LCTR"

.global lbl_803D014D
lbl_803D014D:

	# ROM: 0x3CD14D
	.byte 0x47, 0x6C, 0x6F
	.asciz "w_15_LCTR"

.global lbl_803D015A
lbl_803D015A:

	# ROM: 0x3CD15A
	.byte 0x47, 0x6C
	.asciz "ow_16_LCTR"
	.byte 0x3F
	.asciz "?(??)"
	.balign 4

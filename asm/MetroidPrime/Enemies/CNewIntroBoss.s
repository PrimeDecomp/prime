.include "macros.inc"

.section .data

.global lbl_803E4018
lbl_803E4018:
	# ROM: 0x3E1018
	.4byte 0
	.4byte 0
	.4byte __dt__13CNewIntroBossFv
	.4byte Accept__13CNewIntroBossFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__13CNewIntroBossFfR13CStateManager
	.4byte AcceptScriptMsg__13CNewIntroBossF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__13CNewIntroBossCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__13CNewIntroBossCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__13CNewIntroBossFQ26CActor10EScanStateR13CStateManager
	.4byte GetRenderBounds__13CNewIntroBossCFRC12CTransform4f
	.4byte DoUserAnimEvent__13CNewIntroBossFR13CStateManagerRC13CInt32POINode14EUserEventType
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
	.4byte Patrol__13CNewIntroBossFR13CStateManager9EStateMsgf
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
	.4byte Generate__13CNewIntroBossFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__13CNewIntroBossFR13CStateManager9EStateMsgf
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
	.4byte InAttackPosition__13CNewIntroBossFR13CStateManagerf
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
	.4byte AnimOver__13CNewIntroBossFR13CStateManagerf
	.4byte ShouldAttack__13CNewIntroBossFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__13CNewIntroBossFR13CStateManagerf
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
	.4byte AIStage__13CNewIntroBossFR13CStateManagerf
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
	.4byte ProjectileInfo__13CNewIntroBossFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata

.global lbl_805A7AA0
lbl_805A7AA0:
	# ROM: 0x3F5440
	.4byte 0x00000013

.global lbl_805A7AA4
lbl_805A7AA4:
	# ROM: 0x3F5444
	.4byte 0x3F800000


.section .text, "ax"

.global __dt__13CNewIntroBossFv
__dt__13CNewIntroBossFv:
/* 80189D94 00186CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189D98 00186CF8  7C 08 02 A6 */	mflr r0
/* 80189D9C 00186CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189DA0 00186D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80189DA4 00186D04  7C 9F 23 78 */	mr r31, r4
/* 80189DA8 00186D08  93 C1 00 08 */	stw r30, 8(r1)
/* 80189DAC 00186D0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80189DB0 00186D10  41 82 00 8C */	beq lbl_80189E3C
/* 80189DB4 00186D14  3C 60 80 3E */	lis r3, lbl_803E4018@ha
/* 80189DB8 00186D18  34 1E 05 EC */	addic. r0, r30, 0x5ec
/* 80189DBC 00186D1C  38 03 40 18 */	addi r0, r3, lbl_803E4018@l
/* 80189DC0 00186D20  90 1E 00 00 */	stw r0, 0(r30)
/* 80189DC4 00186D24  41 82 00 10 */	beq lbl_80189DD4
/* 80189DC8 00186D28  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 80189DCC 00186D2C  38 80 00 01 */	li r4, 1
/* 80189DD0 00186D30  48 01 DB 0D */	bl sub_801a78dc
lbl_80189DD4:
/* 80189DD4 00186D34  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80189DD8 00186D38  41 82 00 0C */	beq lbl_80189DE4
/* 80189DDC 00186D3C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80189DE0 00186D40  48 1B 3D 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80189DE4:
/* 80189DE4 00186D44  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80189DE8 00186D48  41 82 00 20 */	beq lbl_80189E08
/* 80189DEC 00186D4C  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80189DF0 00186D50  41 82 00 18 */	beq lbl_80189E08
/* 80189DF4 00186D54  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80189DF8 00186D58  41 82 00 10 */	beq lbl_80189E08
/* 80189DFC 00186D5C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80189E00 00186D60  38 80 00 00 */	li r4, 0
/* 80189E04 00186D64  48 1B 70 3D */	bl __dt__6CTokenFv
lbl_80189E08:
/* 80189E08 00186D68  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80189E0C 00186D6C  41 82 00 14 */	beq lbl_80189E20
/* 80189E10 00186D70  34 1E 05 98 */	addic. r0, r30, 0x598
/* 80189E14 00186D74  41 82 00 0C */	beq lbl_80189E20
/* 80189E18 00186D78  38 00 00 00 */	li r0, 0
/* 80189E1C 00186D7C  98 1E 05 A4 */	stb r0, 0x5a4(r30)
lbl_80189E20:
/* 80189E20 00186D80  7F C3 F3 78 */	mr r3, r30
/* 80189E24 00186D84  38 80 00 00 */	li r4, 0
/* 80189E28 00186D88  4B EE D7 49 */	bl __dt__10CPatternedFv
/* 80189E2C 00186D8C  7F E0 07 35 */	extsh. r0, r31
/* 80189E30 00186D90  40 81 00 0C */	ble lbl_80189E3C
/* 80189E34 00186D94  7F C3 F3 78 */	mr r3, r30
/* 80189E38 00186D98  48 18 BA F9 */	bl Free__7CMemoryFPCv
lbl_80189E3C:
/* 80189E3C 00186D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189E40 00186DA0  7F C3 F3 78 */	mr r3, r30
/* 80189E44 00186DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80189E48 00186DA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80189E4C 00186DAC  7C 08 03 A6 */	mtlr r0
/* 80189E50 00186DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80189E54 00186DB4  4E 80 00 20 */	blr 

.global StopRumble__13CNewIntroBossFR13CStateManager
StopRumble__13CNewIntroBossFR13CStateManager:
/* 80189E58 00186DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189E5C 00186DBC  7C 08 02 A6 */	mflr r0
/* 80189E60 00186DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189E64 00186DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80189E68 00186DC8  7C 7F 1B 78 */	mr r31, r3
/* 80189E6C 00186DCC  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80189E70 00186DD0  2C 00 FF FF */	cmpwi r0, -1
/* 80189E74 00186DD4  41 82 00 18 */	beq lbl_80189E8C
/* 80189E78 00186DD8  80 64 08 8C */	lwz r3, 0x88c(r4)
/* 80189E7C 00186DDC  7C 04 03 78 */	mr r4, r0
/* 80189E80 00186DE0  48 0A 42 95 */	bl StopRumble__14CRumbleManagerFs
/* 80189E84 00186DE4  38 00 FF FF */	li r0, -1
/* 80189E88 00186DE8  B0 1F 06 74 */	sth r0, 0x674(r31)
lbl_80189E8C:
/* 80189E8C 00186DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189E90 00186DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80189E94 00186DF4  7C 08 03 A6 */	mtlr r0
/* 80189E98 00186DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80189E9C 00186DFC  4E 80 00 20 */	blr 

.global DeleteBeam__13CNewIntroBossFR13CStateManager
DeleteBeam__13CNewIntroBossFR13CStateManager:
/* 80189EA0 00186E00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80189EA4 00186E04  7C 08 02 A6 */	mflr r0
/* 80189EA8 00186E08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80189EAC 00186E0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80189EB0 00186E10  7C 9F 23 78 */	mr r31, r4
/* 80189EB4 00186E14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80189EB8 00186E18  7C 7E 1B 78 */	mr r30, r3
/* 80189EBC 00186E1C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189EC0 00186E20  A0 63 05 D4 */	lhz r3, 0x5d4(r3)
/* 80189EC4 00186E24  7C 03 00 40 */	cmplw r3, r0
/* 80189EC8 00186E28  41 82 00 20 */	beq lbl_80189EE8
/* 80189ECC 00186E2C  A0 1E 05 D4 */	lhz r0, 0x5d4(r30)
/* 80189ED0 00186E30  7F E3 FB 78 */	mr r3, r31
/* 80189ED4 00186E34  38 81 00 10 */	addi r4, r1, 0x10
/* 80189ED8 00186E38  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80189EDC 00186E3C  4B EC 23 91 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80189EE0 00186E40  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189EE4 00186E44  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
lbl_80189EE8:
/* 80189EE8 00186E48  A0 7E 05 D6 */	lhz r3, 0x5d6(r30)
/* 80189EEC 00186E4C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189EF0 00186E50  7C 03 00 40 */	cmplw r3, r0
/* 80189EF4 00186E54  41 82 00 20 */	beq lbl_80189F14
/* 80189EF8 00186E58  A0 1E 05 D6 */	lhz r0, 0x5d6(r30)
/* 80189EFC 00186E5C  7F E3 FB 78 */	mr r3, r31
/* 80189F00 00186E60  38 81 00 0C */	addi r4, r1, 0xc
/* 80189F04 00186E64  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80189F08 00186E68  4B EC 23 65 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80189F0C 00186E6C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189F10 00186E70  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
lbl_80189F14:
/* 80189F14 00186E74  A0 7E 05 D8 */	lhz r3, 0x5d8(r30)
/* 80189F18 00186E78  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189F1C 00186E7C  7C 03 00 40 */	cmplw r3, r0
/* 80189F20 00186E80  41 82 00 20 */	beq lbl_80189F40
/* 80189F24 00186E84  A0 1E 05 D8 */	lhz r0, 0x5d8(r30)
/* 80189F28 00186E88  7F E3 FB 78 */	mr r3, r31
/* 80189F2C 00186E8C  38 81 00 08 */	addi r4, r1, 8
/* 80189F30 00186E90  B0 01 00 08 */	sth r0, 8(r1)
/* 80189F34 00186E94  4B EC 23 39 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80189F38 00186E98  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80189F3C 00186E9C  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
lbl_80189F40:
/* 80189F40 00186EA0  7F C3 F3 78 */	mr r3, r30
/* 80189F44 00186EA4  7F E4 FB 78 */	mr r4, r31
/* 80189F48 00186EA8  4B FF FF 11 */	bl StopRumble__13CNewIntroBossFR13CStateManager
/* 80189F4C 00186EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80189F50 00186EB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80189F54 00186EB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80189F58 00186EB8  7C 08 03 A6 */	mtlr r0
/* 80189F5C 00186EBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80189F60 00186EC0  4E 80 00 20 */	blr 

.global Accept__13CNewIntroBossFR8IVisitor
Accept__13CNewIntroBossFR8IVisitor:
/* 80189F64 00186EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189F68 00186EC8  7C 08 02 A6 */	mflr r0
/* 80189F6C 00186ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189F70 00186ED0  7C 60 1B 78 */	mr r0, r3
/* 80189F74 00186ED4  7C 83 23 78 */	mr r3, r4
/* 80189F78 00186ED8  81 84 00 00 */	lwz r12, 0(r4)
/* 80189F7C 00186EDC  7C 04 03 78 */	mr r4, r0
/* 80189F80 00186EE0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80189F84 00186EE4  7D 89 03 A6 */	mtctr r12
/* 80189F88 00186EE8  4E 80 04 21 */	bctrl 
/* 80189F8C 00186EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189F90 00186EF0  7C 08 03 A6 */	mtlr r0
/* 80189F94 00186EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80189F98 00186EF8  4E 80 00 20 */	blr 

.global GetRenderBounds__13CNewIntroBossCFRC12CTransform4f
GetRenderBounds__13CNewIntroBossCFRC12CTransform4f:
/* 80189F9C 00186EFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80189FA0 00186F00  7C 08 02 A6 */	mflr r0
/* 80189FA4 00186F04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80189FA8 00186F08  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80189FAC 00186F0C  7C 9F 23 78 */	mr r31, r4
/* 80189FB0 00186F10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80189FB4 00186F14  7C 7E 1B 78 */	mr r30, r3
/* 80189FB8 00186F18  38 61 00 20 */	addi r3, r1, 0x20
/* 80189FBC 00186F1C  80 84 00 64 */	lwz r4, 0x64(r4)
/* 80189FC0 00186F20  4B F8 B6 05 */	bl GetBounds__10CModelDataCFv
/* 80189FC4 00186F24  C0 62 A3 88 */	lfs f3, lbl_805AC0A8@sda21(r2)
/* 80189FC8 00186F28  7F C3 F3 78 */	mr r3, r30
/* 80189FCC 00186F2C  C0 22 A3 8C */	lfs f1, lbl_805AC0AC@sda21(r2)
/* 80189FD0 00186F30  38 81 00 08 */	addi r4, r1, 8
/* 80189FD4 00186F34  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80189FD8 00186F38  38 BF 00 34 */	addi r5, r31, 0x34
/* 80189FDC 00186F3C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80189FE0 00186F40  D0 61 00 08 */	stfs f3, 8(r1)
/* 80189FE4 00186F44  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80189FE8 00186F48  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80189FEC 00186F4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80189FF0 00186F50  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80189FF4 00186F54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80189FF8 00186F58  48 1A D9 05 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 80189FFC 00186F5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8018A000 00186F60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8018A004 00186F64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8018A008 00186F68  7C 08 03 A6 */	mtlr r0
/* 8018A00C 00186F6C  38 21 00 40 */	addi r1, r1, 0x40
/* 8018A010 00186F70  4E 80 00 20 */	blr 

.global AddToRenderer__13CNewIntroBossCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__13CNewIntroBossCFRC14CFrustumPlanesRC13CStateManager:
/* 8018A014 00186F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A018 00186F78  7C 08 02 A6 */	mflr r0
/* 8018A01C 00186F7C  7C A4 2B 78 */	mr r4, r5
/* 8018A020 00186F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A024 00186F84  4B EC A9 A9 */	bl EnsureRendered__6CActorCFRC13CStateManager
/* 8018A028 00186F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A02C 00186F8C  7C 08 03 A6 */	mtlr r0
/* 8018A030 00186F90  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A034 00186F94  4E 80 00 20 */	blr 

.global OnScanStateChange__13CNewIntroBossFQ26CActor10EScanStateR13CStateManager
OnScanStateChange__13CNewIntroBossFQ26CActor10EScanStateR13CStateManager:
/* 8018A038 00186F98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018A03C 00186F9C  7C 08 02 A6 */	mflr r0
/* 8018A040 00186FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018A044 00186FA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018A048 00186FA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8018A04C 00186FAC  7C 9E 23 78 */	mr r30, r4
/* 8018A050 00186FB0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8018A054 00186FB4  7C BD 2B 78 */	mr r29, r5
/* 8018A058 00186FB8  93 81 00 20 */	stw r28, 0x20(r1)
/* 8018A05C 00186FBC  7C 7C 1B 78 */	mr r28, r3
/* 8018A060 00186FC0  4B EC 95 11 */	bl OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
/* 8018A064 00186FC4  2C 1E 00 02 */	cmpwi r30, 2
/* 8018A068 00186FC8  40 82 00 7C */	bne lbl_8018A0E4
/* 8018A06C 00186FCC  A0 1C 06 00 */	lhz r0, 0x600(r28)
/* 8018A070 00186FD0  7F A3 EB 78 */	mr r3, r29
/* 8018A074 00186FD4  38 81 00 0C */	addi r4, r1, 0xc
/* 8018A078 00186FD8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8018A07C 00186FDC  4B EC 24 F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018A080 00186FE0  7C 64 1B 78 */	mr r4, r3
/* 8018A084 00186FE4  38 61 00 18 */	addi r3, r1, 0x18
/* 8018A088 00186FE8  4B F2 52 C5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8018A08C 00186FEC  83 E3 00 04 */	lwz r31, 4(r3)
/* 8018A090 00186FF0  7F A3 EB 78 */	mr r3, r29
/* 8018A094 00186FF4  A0 1C 06 02 */	lhz r0, 0x602(r28)
/* 8018A098 00186FF8  38 81 00 08 */	addi r4, r1, 8
/* 8018A09C 00186FFC  B0 01 00 08 */	sth r0, 8(r1)
/* 8018A0A0 00187000  4B EC 24 D5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018A0A4 00187004  7C 64 1B 78 */	mr r4, r3
/* 8018A0A8 00187008  38 61 00 10 */	addi r3, r1, 0x10
/* 8018A0AC 0018700C  4B F2 52 A1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8018A0B0 00187010  28 1F 00 00 */	cmplwi r31, 0
/* 8018A0B4 00187014  83 C3 00 04 */	lwz r30, 4(r3)
/* 8018A0B8 00187018  41 82 00 14 */	beq lbl_8018A0CC
/* 8018A0BC 0018701C  7F E3 FB 78 */	mr r3, r31
/* 8018A0C0 00187020  7F A5 EB 78 */	mr r5, r29
/* 8018A0C4 00187024  38 80 00 29 */	li r4, 0x29
/* 8018A0C8 00187028  4B EC A2 89 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8018A0CC:
/* 8018A0CC 0018702C  28 1E 00 00 */	cmplwi r30, 0
/* 8018A0D0 00187030  41 82 00 14 */	beq lbl_8018A0E4
/* 8018A0D4 00187034  7F C3 F3 78 */	mr r3, r30
/* 8018A0D8 00187038  7F A5 EB 78 */	mr r5, r29
/* 8018A0DC 0018703C  38 80 00 29 */	li r4, 0x29
/* 8018A0E0 00187040  4B EC 9E A1 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8018A0E4:
/* 8018A0E4 00187044  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018A0E8 00187048  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018A0EC 0018704C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8018A0F0 00187050  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8018A0F4 00187054  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8018A0F8 00187058  7C 08 03 A6 */	mtlr r0
/* 8018A0FC 0018705C  38 21 00 30 */	addi r1, r1, 0x30
/* 8018A100 00187060  4E 80 00 20 */	blr 

.global AcceptScriptMsg__13CNewIntroBossF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__13CNewIntroBossF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8018A104 00187064  94 21 FC 00 */	stwu r1, -0x400(r1)
/* 8018A108 00187068  7C 08 02 A6 */	mflr r0
/* 8018A10C 0018706C  90 01 04 04 */	stw r0, 0x404(r1)
/* 8018A110 00187070  BE E1 03 DC */	stmw r23, 0x3dc(r1)
/* 8018A114 00187074  7C 9D 23 78 */	mr r29, r4
/* 8018A118 00187078  2C 1D 00 22 */	cmpwi r29, 0x22
/* 8018A11C 0018707C  7C 7F 1B 78 */	mr r31, r3
/* 8018A120 00187080  7C BC 2B 78 */	mr r28, r5
/* 8018A124 00187084  7C DE 33 78 */	mr r30, r6
/* 8018A128 00187088  41 82 0A E4 */	beq lbl_8018AC0C
/* 8018A12C 0018708C  40 80 00 10 */	bge lbl_8018A13C
/* 8018A130 00187090  2C 1D 00 21 */	cmpwi r29, 0x21
/* 8018A134 00187094  40 80 00 14 */	bge lbl_8018A148
/* 8018A138 00187098  48 00 0B 28 */	b lbl_8018AC60
lbl_8018A13C:
/* 8018A13C 0018709C  2C 1D 00 29 */	cmpwi r29, 0x29
/* 8018A140 001870A0  41 82 0A E4 */	beq lbl_8018AC24
/* 8018A144 001870A4  48 00 0B 1C */	b lbl_8018AC60
lbl_8018A148:
/* 8018A148 001870A8  7F C5 F3 78 */	mr r5, r30
/* 8018A14C 001870AC  38 80 00 13 */	li r4, 0x13
/* 8018A150 001870B0  4B EC 9E 31 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8018A154 001870B4  7F E3 FB 78 */	mr r3, r31
/* 8018A158 001870B8  7F C5 F3 78 */	mr r5, r30
/* 8018A15C 001870BC  38 80 00 28 */	li r4, 0x28
/* 8018A160 001870C0  4B EC 9E 21 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8018A164 001870C4  7F E3 FB 78 */	mr r3, r31
/* 8018A168 001870C8  7F C5 F3 78 */	mr r5, r30
/* 8018A16C 001870CC  38 80 00 29 */	li r4, 0x29
/* 8018A170 001870D0  4B EC 9E 11 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8018A174 001870D4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8018A178 001870D8  7F C4 F3 78 */	mr r4, r30
/* 8018A17C 001870DC  4B FB 0B 75 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8018A180 001870E0  A0 7F 05 D4 */	lhz r3, 0x5d4(r31)
/* 8018A184 001870E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8018A188 001870E8  7C 03 00 40 */	cmplw r3, r0
/* 8018A18C 001870EC  40 82 05 4C */	bne lbl_8018A6D8
/* 8018A190 001870F0  C0 22 A3 90 */	lfs f1, lbl_805AC0B0@sda21(r2)
/* 8018A194 001870F4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8018A198 001870F8  C0 42 A3 94 */	lfs f2, lbl_805AC0B4@sda21(r2)
/* 8018A19C 001870FC  C0 62 A3 98 */	lfs f3, lbl_805AC0B8@sda21(r2)
/* 8018A1A0 00187100  C0 82 A3 9C */	lfs f4, lbl_805AC0BC@sda21(r2)
/* 8018A1A4 00187104  48 1D 92 49 */	bl __ct__6CColorFffff
/* 8018A1A8 00187108  48 1B FD E5 */	bl Yellow__6CColorFv
/* 8018A1AC 0018710C  C0 82 A3 9C */	lfs f4, lbl_805AC0BC@sda21(r2)
/* 8018A1B0 00187110  38 00 00 03 */	li r0, 3
/* 8018A1B4 00187114  81 1F 05 FC */	lwz r8, 0x5fc(r31)
/* 8018A1B8 00187118  38 80 00 32 */	li r4, 0x32
/* 8018A1BC 0018711C  80 FF 05 F8 */	lwz r7, 0x5f8(r31)
/* 8018A1C0 00187120  80 DF 05 F4 */	lwz r6, 0x5f4(r31)
/* 8018A1C4 00187124  80 BF 05 F0 */	lwz r5, 0x5f0(r31)
/* 8018A1C8 00187128  C1 02 A3 A0 */	lfs f8, lbl_805AC0C0@sda21(r2)
/* 8018A1CC 0018712C  C0 E2 A3 A4 */	lfs f7, lbl_805AC0C4@sda21(r2)
/* 8018A1D0 00187130  C0 C2 A3 A8 */	lfs f6, lbl_805AC0C8@sda21(r2)
/* 8018A1D4 00187134  C0 A2 A3 AC */	lfs f5, lbl_805AC0CC@sda21(r2)
/* 8018A1D8 00187138  C0 02 A3 B0 */	lfs f0, lbl_805AC0D0@sda21(r2)
/* 8018A1DC 0018713C  90 01 03 90 */	stw r0, 0x390(r1)
/* 8018A1E0 00187140  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8018A1E4 00187144  90 A1 03 94 */	stw r5, 0x394(r1)
/* 8018A1E8 00187148  C0 22 A3 90 */	lfs f1, lbl_805AC0B0@sda21(r2)
/* 8018A1EC 0018714C  90 C1 03 98 */	stw r6, 0x398(r1)
/* 8018A1F0 00187150  C0 42 A3 94 */	lfs f2, lbl_805AC0B4@sda21(r2)
/* 8018A1F4 00187154  90 E1 03 9C */	stw r7, 0x39c(r1)
/* 8018A1F8 00187158  C0 62 A3 98 */	lfs f3, lbl_805AC0B8@sda21(r2)
/* 8018A1FC 0018715C  91 01 03 A0 */	stw r8, 0x3a0(r1)
/* 8018A200 00187160  90 81 03 A4 */	stw r4, 0x3a4(r1)
/* 8018A204 00187164  D0 81 03 A8 */	stfs f4, 0x3a8(r1)
/* 8018A208 00187168  D0 81 03 AC */	stfs f4, 0x3ac(r1)
/* 8018A20C 0018716C  D1 01 03 B0 */	stfs f8, 0x3b0(r1)
/* 8018A210 00187170  D0 E1 03 B4 */	stfs f7, 0x3b4(r1)
/* 8018A214 00187174  D0 81 03 B8 */	stfs f4, 0x3b8(r1)
/* 8018A218 00187178  D0 C1 03 BC */	stfs f6, 0x3bc(r1)
/* 8018A21C 0018717C  D0 A1 03 C0 */	stfs f5, 0x3c0(r1)
/* 8018A220 00187180  D0 01 03 C4 */	stfs f0, 0x3c4(r1)
/* 8018A224 00187184  80 83 00 00 */	lwz r4, 0(r3)
/* 8018A228 00187188  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8018A22C 0018718C  90 81 03 C8 */	stw r4, 0x3c8(r1)
/* 8018A230 00187190  90 01 03 CC */	stw r0, 0x3cc(r1)
/* 8018A234 00187194  48 1D 91 B9 */	bl __ct__6CColorFffff
/* 8018A238 00187198  48 1B FD 55 */	bl Yellow__6CColorFv
/* 8018A23C 0018719C  C0 82 A3 9C */	lfs f4, lbl_805AC0BC@sda21(r2)
/* 8018A240 001871A0  38 00 00 03 */	li r0, 3
/* 8018A244 001871A4  81 1F 05 FC */	lwz r8, 0x5fc(r31)
/* 8018A248 001871A8  38 80 00 32 */	li r4, 0x32
/* 8018A24C 001871AC  80 FF 05 F8 */	lwz r7, 0x5f8(r31)
/* 8018A250 001871B0  80 DF 05 F4 */	lwz r6, 0x5f4(r31)
/* 8018A254 001871B4  80 BF 05 F0 */	lwz r5, 0x5f0(r31)
/* 8018A258 001871B8  C1 02 A3 B4 */	lfs f8, lbl_805AC0D4@sda21(r2)
/* 8018A25C 001871BC  C0 E2 A3 A4 */	lfs f7, lbl_805AC0C4@sda21(r2)
/* 8018A260 001871C0  C0 C2 A3 A8 */	lfs f6, lbl_805AC0C8@sda21(r2)
/* 8018A264 001871C4  C0 A2 A3 AC */	lfs f5, lbl_805AC0CC@sda21(r2)
/* 8018A268 001871C8  C0 02 A3 B0 */	lfs f0, lbl_805AC0D0@sda21(r2)
/* 8018A26C 001871CC  90 01 03 4C */	stw r0, 0x34c(r1)
/* 8018A270 001871D0  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 8018A274 001871D4  90 A1 03 50 */	stw r5, 0x350(r1)
/* 8018A278 001871D8  C0 22 A3 90 */	lfs f1, lbl_805AC0B0@sda21(r2)
/* 8018A27C 001871DC  90 C1 03 54 */	stw r6, 0x354(r1)
/* 8018A280 001871E0  C0 42 A3 94 */	lfs f2, lbl_805AC0B4@sda21(r2)
/* 8018A284 001871E4  90 E1 03 58 */	stw r7, 0x358(r1)
/* 8018A288 001871E8  C0 62 A3 98 */	lfs f3, lbl_805AC0B8@sda21(r2)
/* 8018A28C 001871EC  91 01 03 5C */	stw r8, 0x35c(r1)
/* 8018A290 001871F0  90 81 03 60 */	stw r4, 0x360(r1)
/* 8018A294 001871F4  D0 81 03 64 */	stfs f4, 0x364(r1)
/* 8018A298 001871F8  D0 81 03 68 */	stfs f4, 0x368(r1)
/* 8018A29C 001871FC  D1 01 03 6C */	stfs f8, 0x36c(r1)
/* 8018A2A0 00187200  D0 E1 03 70 */	stfs f7, 0x370(r1)
/* 8018A2A4 00187204  D0 81 03 74 */	stfs f4, 0x374(r1)
/* 8018A2A8 00187208  D0 C1 03 78 */	stfs f6, 0x378(r1)
/* 8018A2AC 0018720C  D0 A1 03 7C */	stfs f5, 0x37c(r1)
/* 8018A2B0 00187210  D0 01 03 80 */	stfs f0, 0x380(r1)
/* 8018A2B4 00187214  80 83 00 00 */	lwz r4, 0(r3)
/* 8018A2B8 00187218  38 61 00 9C */	addi r3, r1, 0x9c
/* 8018A2BC 0018721C  90 81 03 84 */	stw r4, 0x384(r1)
/* 8018A2C0 00187220  90 01 03 88 */	stw r0, 0x388(r1)
/* 8018A2C4 00187224  48 1D 91 29 */	bl __ct__6CColorFffff
/* 8018A2C8 00187228  48 1B FC C5 */	bl Yellow__6CColorFv
/* 8018A2CC 0018722C  81 3F 05 FC */	lwz r9, 0x5fc(r31)
/* 8018A2D0 00187230  38 00 00 03 */	li r0, 3
/* 8018A2D4 00187234  81 1F 05 F8 */	lwz r8, 0x5f8(r31)
/* 8018A2D8 00187238  38 A0 00 32 */	li r5, 0x32
/* 8018A2DC 0018723C  80 FF 05 F4 */	lwz r7, 0x5f4(r31)
/* 8018A2E0 00187240  7F C4 F3 78 */	mr r4, r30
/* 8018A2E4 00187244  80 DF 05 F0 */	lwz r6, 0x5f0(r31)
/* 8018A2E8 00187248  C0 A2 A3 9C */	lfs f5, lbl_805AC0BC@sda21(r2)
/* 8018A2EC 0018724C  C0 82 A3 B4 */	lfs f4, lbl_805AC0D4@sda21(r2)
/* 8018A2F0 00187250  C0 62 A3 A4 */	lfs f3, lbl_805AC0C4@sda21(r2)
/* 8018A2F4 00187254  C0 42 A3 A8 */	lfs f2, lbl_805AC0C8@sda21(r2)
/* 8018A2F8 00187258  C0 22 A3 AC */	lfs f1, lbl_805AC0CC@sda21(r2)
/* 8018A2FC 0018725C  C0 02 A3 B0 */	lfs f0, lbl_805AC0D0@sda21(r2)
/* 8018A300 00187260  90 01 03 08 */	stw r0, 0x308(r1)
/* 8018A304 00187264  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8018A308 00187268  90 C1 03 0C */	stw r6, 0x30c(r1)
/* 8018A30C 0018726C  90 E1 03 10 */	stw r7, 0x310(r1)
/* 8018A310 00187270  91 01 03 14 */	stw r8, 0x314(r1)
/* 8018A314 00187274  91 21 03 18 */	stw r9, 0x318(r1)
/* 8018A318 00187278  90 A1 03 1C */	stw r5, 0x31c(r1)
/* 8018A31C 0018727C  D0 A1 03 20 */	stfs f5, 0x320(r1)
/* 8018A320 00187280  D0 A1 03 24 */	stfs f5, 0x324(r1)
/* 8018A324 00187284  D0 81 03 28 */	stfs f4, 0x328(r1)
/* 8018A328 00187288  D0 61 03 2C */	stfs f3, 0x32c(r1)
/* 8018A32C 0018728C  D0 A1 03 30 */	stfs f5, 0x330(r1)
/* 8018A330 00187290  D0 41 03 34 */	stfs f2, 0x334(r1)
/* 8018A334 00187294  D0 21 03 38 */	stfs f1, 0x338(r1)
/* 8018A338 00187298  D0 01 03 3C */	stfs f0, 0x33c(r1)
/* 8018A33C 0018729C  80 A3 00 00 */	lwz r5, 0(r3)
/* 8018A340 001872A0  38 61 00 78 */	addi r3, r1, 0x78
/* 8018A344 001872A4  90 A1 03 40 */	stw r5, 0x340(r1)
/* 8018A348 001872A8  90 01 03 44 */	stw r0, 0x344(r1)
/* 8018A34C 001872AC  4B EC 2D 91 */	bl AllocateUniqueId__13CStateManagerFv
/* 8018A350 001872B0  A0 01 00 78 */	lhz r0, 0x78(r1)
/* 8018A354 001872B4  7F C4 F3 78 */	mr r4, r30
/* 8018A358 001872B8  38 61 00 74 */	addi r3, r1, 0x74
/* 8018A35C 001872BC  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 8018A360 001872C0  4B EC 2D 7D */	bl AllocateUniqueId__13CStateManagerFv
/* 8018A364 001872C4  A0 01 00 74 */	lhz r0, 0x74(r1)
/* 8018A368 001872C8  7F C4 F3 78 */	mr r4, r30
/* 8018A36C 001872CC  38 61 00 70 */	addi r3, r1, 0x70
/* 8018A370 001872D0  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 8018A374 001872D4  4B EC 2D 69 */	bl AllocateUniqueId__13CStateManagerFv
/* 8018A378 001872D8  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 8018A37C 001872DC  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A380 001872E0  38 63 07 E4 */	addi r3, r3, lbl_803D07E4@l
/* 8018A384 001872E4  3A E0 00 00 */	li r23, 0
/* 8018A388 001872E8  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 8018A38C 001872EC  38 83 00 E7 */	addi r4, r3, 0xe7
/* 8018A390 001872F0  38 60 05 50 */	li r3, 0x550
/* 8018A394 001872F4  38 A0 00 00 */	li r5, 0
/* 8018A398 001872F8  48 18 B4 D5 */	bl __nw__FUlPCcPCc
/* 8018A39C 001872FC  7C 7B 1B 79 */	or. r27, r3, r3
/* 8018A3A0 00187300  41 82 00 C4 */	beq lbl_8018A464
/* 8018A3A4 00187304  38 00 FF FF */	li r0, -1
/* 8018A3A8 00187308  38 60 00 08 */	li r3, 8
/* 8018A3AC 0018730C  90 61 01 D0 */	stw r3, 0x1d0(r1)
/* 8018A3B0 00187310  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A3B4 00187314  38 83 07 E4 */	addi r4, r3, lbl_803D07E4@l
/* 8018A3B8 00187318  38 61 01 4C */	addi r3, r1, 0x14c
/* 8018A3BC 0018731C  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 8018A3C0 00187320  38 84 00 EE */	addi r4, r4, 0xee
/* 8018A3C4 00187324  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 8018A3C8 00187328  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 8018A3CC 0018732C  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 8018A3D0 00187330  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 8018A3D4 00187334  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 8018A3D8 00187338  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 8018A3DC 0018733C  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 8018A3E0 00187340  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8018A3E4 00187344  B0 01 00 6C */	sth r0, 0x6c(r1)
/* 8018A3E8 00187348  80 BF 00 04 */	lwz r5, 4(r31)
/* 8018A3EC 0018734C  B0 01 00 68 */	sth r0, 0x68(r1)
/* 8018A3F0 00187350  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8018A3F4 00187354  A0 1F 05 D4 */	lhz r0, 0x5d4(r31)
/* 8018A3F8 00187358  90 A1 00 94 */	stw r5, 0x94(r1)
/* 8018A3FC 0018735C  B0 01 00 64 */	sth r0, 0x64(r1)
/* 8018A400 00187360  4B E7 A8 B9 */	bl string_l__4rstlFPCc
/* 8018A404 00187364  38 01 00 64 */	addi r0, r1, 0x64
/* 8018A408 00187368  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 8018A40C 0018736C  90 01 00 08 */	stw r0, 8(r1)
/* 8018A410 00187370  38 01 00 98 */	addi r0, r1, 0x98
/* 8018A414 00187374  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 8018A418 00187378  38 61 00 6C */	addi r3, r1, 0x6c
/* 8018A41C 0018737C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018A420 00187380  38 A1 01 D0 */	addi r5, r1, 0x1d0
/* 8018A424 00187384  38 C0 00 01 */	li r6, 1
/* 8018A428 00187388  3C 00 00 02 */	lis r0, 2
/* 8018A42C 0018738C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8018A430 00187390  7F 63 DB 78 */	mr r3, r27
/* 8018A434 00187394  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 8018A438 00187398  38 E1 03 8C */	addi r7, r1, 0x38c
/* 8018A43C 0018739C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8018A440 001873A0  38 A1 01 4C */	addi r5, r1, 0x14c
/* 8018A444 001873A4  39 5F 05 B8 */	addi r10, r31, 0x5b8
/* 8018A448 001873A8  3A E0 00 01 */	li r23, 1
/* 8018A44C 001873AC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8018A450 001873B0  38 C0 00 09 */	li r6, 9
/* 8018A454 001873B4  39 20 00 21 */	li r9, 0x21
/* 8018A458 001873B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018A45C 001873BC  4B FE E7 CD */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdbUi"
/* 8018A460 001873C0  7C 7B 1B 78 */	mr r27, r3
lbl_8018A464:
/* 8018A464 001873C4  7E E0 07 75 */	extsb. r0, r23
/* 8018A468 001873C8  7F 7A DB 78 */	mr r26, r27
/* 8018A46C 001873CC  41 82 00 0C */	beq lbl_8018A478
/* 8018A470 001873D0  38 61 01 4C */	addi r3, r1, 0x14c
/* 8018A474 001873D4  48 1B 36 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A478:
/* 8018A478 001873D8  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A47C 001873DC  3A E0 00 00 */	li r23, 0
/* 8018A480 001873E0  38 83 07 E4 */	addi r4, r3, lbl_803D07E4@l
/* 8018A484 001873E4  38 60 05 50 */	li r3, 0x550
/* 8018A488 001873E8  38 84 00 E7 */	addi r4, r4, 0xe7
/* 8018A48C 001873EC  38 A0 00 00 */	li r5, 0
/* 8018A490 001873F0  48 18 B3 DD */	bl __nw__FUlPCcPCc
/* 8018A494 001873F4  7C 7B 1B 79 */	or. r27, r3, r3
/* 8018A498 001873F8  41 82 00 C4 */	beq lbl_8018A55C
/* 8018A49C 001873FC  38 00 FF FF */	li r0, -1
/* 8018A4A0 00187400  38 60 00 08 */	li r3, 8
/* 8018A4A4 00187404  90 61 01 AC */	stw r3, 0x1ac(r1)
/* 8018A4A8 00187408  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A4AC 0018740C  38 83 07 E4 */	addi r4, r3, lbl_803D07E4@l
/* 8018A4B0 00187410  38 61 01 3C */	addi r3, r1, 0x13c
/* 8018A4B4 00187414  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 8018A4B8 00187418  38 84 00 FD */	addi r4, r4, 0xfd
/* 8018A4BC 0018741C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8018A4C0 00187420  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 8018A4C4 00187424  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 8018A4C8 00187428  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 8018A4CC 0018742C  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 8018A4D0 00187430  90 01 01 C8 */	stw r0, 0x1c8(r1)
/* 8018A4D4 00187434  90 01 01 CC */	stw r0, 0x1cc(r1)
/* 8018A4D8 00187438  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8018A4DC 0018743C  B0 01 00 60 */	sth r0, 0x60(r1)
/* 8018A4E0 00187440  80 BF 00 04 */	lwz r5, 4(r31)
/* 8018A4E4 00187444  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 8018A4E8 00187448  90 A1 00 90 */	stw r5, 0x90(r1)
/* 8018A4EC 0018744C  A0 1F 05 D6 */	lhz r0, 0x5d6(r31)
/* 8018A4F0 00187450  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8018A4F4 00187454  B0 01 00 58 */	sth r0, 0x58(r1)
/* 8018A4F8 00187458  4B E7 A7 C1 */	bl string_l__4rstlFPCc
/* 8018A4FC 0018745C  38 01 00 58 */	addi r0, r1, 0x58
/* 8018A500 00187460  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 8018A504 00187464  90 01 00 08 */	stw r0, 8(r1)
/* 8018A508 00187468  38 01 00 90 */	addi r0, r1, 0x90
/* 8018A50C 0018746C  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 8018A510 00187470  38 61 00 60 */	addi r3, r1, 0x60
/* 8018A514 00187474  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018A518 00187478  38 A1 01 AC */	addi r5, r1, 0x1ac
/* 8018A51C 0018747C  38 C0 00 01 */	li r6, 1
/* 8018A520 00187480  3C 00 00 02 */	lis r0, 2
/* 8018A524 00187484  90 61 00 10 */	stw r3, 0x10(r1)
/* 8018A528 00187488  7F 63 DB 78 */	mr r3, r27
/* 8018A52C 0018748C  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 8018A530 00187490  38 E1 03 48 */	addi r7, r1, 0x348
/* 8018A534 00187494  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8018A538 00187498  38 A1 01 3C */	addi r5, r1, 0x13c
/* 8018A53C 0018749C  39 5F 05 B8 */	addi r10, r31, 0x5b8
/* 8018A540 001874A0  3A E0 00 01 */	li r23, 1
/* 8018A544 001874A4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8018A548 001874A8  38 C0 00 09 */	li r6, 9
/* 8018A54C 001874AC  39 20 00 21 */	li r9, 0x21
/* 8018A550 001874B0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018A554 001874B4  4B FE E6 D5 */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdbUi"
/* 8018A558 001874B8  7C 7B 1B 78 */	mr r27, r3
lbl_8018A55C:
/* 8018A55C 001874BC  7E E0 07 75 */	extsb. r0, r23
/* 8018A560 001874C0  7F 79 DB 78 */	mr r25, r27
/* 8018A564 001874C4  41 82 00 0C */	beq lbl_8018A570
/* 8018A568 001874C8  38 61 01 3C */	addi r3, r1, 0x13c
/* 8018A56C 001874CC  48 1B 35 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A570:
/* 8018A570 001874D0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8018A574 001874D4  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A578 001874D8  38 63 07 E4 */	addi r3, r3, lbl_803D07E4@l
/* 8018A57C 001874DC  C0 02 A3 B8 */	lfs f0, lbl_805AC0D8@sda21(r2)
/* 8018A580 001874E0  90 01 01 6C */	stw r0, 0x16c(r1)
/* 8018A584 001874E4  38 83 00 E7 */	addi r4, r3, 0xe7
/* 8018A588 001874E8  3A E0 00 00 */	li r23, 0
/* 8018A58C 001874EC  38 60 05 50 */	li r3, 0x550
/* 8018A590 001874F0  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 8018A594 001874F4  38 A0 00 00 */	li r5, 0
/* 8018A598 001874F8  98 01 01 70 */	stb r0, 0x170(r1)
/* 8018A59C 001874FC  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 8018A5A0 00187500  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 8018A5A4 00187504  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018A5A8 00187508  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 8018A5AC 0018750C  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 8018A5B0 00187510  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 8018A5B4 00187514  D0 21 01 7C */	stfs f1, 0x17c(r1)
/* 8018A5B8 00187518  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 8018A5BC 0018751C  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 8018A5C0 00187520  88 1F 05 D0 */	lbz r0, 0x5d0(r31)
/* 8018A5C4 00187524  98 01 01 84 */	stb r0, 0x184(r1)
/* 8018A5C8 00187528  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8018A5CC 0018752C  48 18 B2 A1 */	bl __nw__FUlPCcPCc
/* 8018A5D0 00187530  7C 7B 1B 79 */	or. r27, r3, r3
/* 8018A5D4 00187534  41 82 00 C4 */	beq lbl_8018A698
/* 8018A5D8 00187538  38 00 FF FF */	li r0, -1
/* 8018A5DC 0018753C  38 60 00 08 */	li r3, 8
/* 8018A5E0 00187540  90 61 01 88 */	stw r3, 0x188(r1)
/* 8018A5E4 00187544  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018A5E8 00187548  38 83 07 E4 */	addi r4, r3, lbl_803D07E4@l
/* 8018A5EC 0018754C  38 61 01 2C */	addi r3, r1, 0x12c
/* 8018A5F0 00187550  90 01 01 8C */	stw r0, 0x18c(r1)
/* 8018A5F4 00187554  38 84 00 FD */	addi r4, r4, 0xfd
/* 8018A5F8 00187558  90 01 01 90 */	stw r0, 0x190(r1)
/* 8018A5FC 0018755C  90 01 01 94 */	stw r0, 0x194(r1)
/* 8018A600 00187560  90 01 01 98 */	stw r0, 0x198(r1)
/* 8018A604 00187564  90 01 01 9C */	stw r0, 0x19c(r1)
/* 8018A608 00187568  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 8018A60C 0018756C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 8018A610 00187570  90 01 01 A8 */	stw r0, 0x1a8(r1)
/* 8018A614 00187574  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8018A618 00187578  B0 01 00 54 */	sth r0, 0x54(r1)
/* 8018A61C 0018757C  80 BF 00 04 */	lwz r5, 4(r31)
/* 8018A620 00187580  B0 01 00 50 */	sth r0, 0x50(r1)
/* 8018A624 00187584  90 A1 00 88 */	stw r5, 0x88(r1)
/* 8018A628 00187588  A0 1F 05 D8 */	lhz r0, 0x5d8(r31)
/* 8018A62C 0018758C  90 A1 00 84 */	stw r5, 0x84(r1)
/* 8018A630 00187590  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 8018A634 00187594  4B E7 A6 85 */	bl string_l__4rstlFPCc
/* 8018A638 00187598  38 01 00 4C */	addi r0, r1, 0x4c
/* 8018A63C 0018759C  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 8018A640 001875A0  90 01 00 08 */	stw r0, 8(r1)
/* 8018A644 001875A4  38 01 00 88 */	addi r0, r1, 0x88
/* 8018A648 001875A8  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 8018A64C 001875AC  38 61 00 54 */	addi r3, r1, 0x54
/* 8018A650 001875B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018A654 001875B4  38 A1 01 88 */	addi r5, r1, 0x188
/* 8018A658 001875B8  38 C0 00 01 */	li r6, 1
/* 8018A65C 001875BC  3C 00 00 02 */	lis r0, 2
/* 8018A660 001875C0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8018A664 001875C4  7F 63 DB 78 */	mr r3, r27
/* 8018A668 001875C8  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 8018A66C 001875CC  38 E1 03 04 */	addi r7, r1, 0x304
/* 8018A670 001875D0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8018A674 001875D4  38 A1 01 2C */	addi r5, r1, 0x12c
/* 8018A678 001875D8  39 41 01 6C */	addi r10, r1, 0x16c
/* 8018A67C 001875DC  3A E0 00 01 */	li r23, 1
/* 8018A680 001875E0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8018A684 001875E4  38 C0 00 09 */	li r6, 9
/* 8018A688 001875E8  39 20 00 21 */	li r9, 0x21
/* 8018A68C 001875EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8018A690 001875F0  4B FE E5 99 */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdbUi"
/* 8018A694 001875F4  7C 7B 1B 78 */	mr r27, r3
lbl_8018A698:
/* 8018A698 001875F8  7E E0 07 75 */	extsb. r0, r23
/* 8018A69C 001875FC  7F 77 DB 78 */	mr r23, r27
/* 8018A6A0 00187600  41 82 00 0C */	beq lbl_8018A6AC
/* 8018A6A4 00187604  38 61 01 2C */	addi r3, r1, 0x12c
/* 8018A6A8 00187608  48 1B 34 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A6AC:
/* 8018A6AC 0018760C  7F C3 F3 78 */	mr r3, r30
/* 8018A6B0 00187610  7F 44 D3 78 */	mr r4, r26
/* 8018A6B4 00187614  4B EC 24 61 */	bl AddObject__13CStateManagerFR7CEntity
/* 8018A6B8 00187618  7F C3 F3 78 */	mr r3, r30
/* 8018A6BC 0018761C  7F 24 CB 78 */	mr r4, r25
/* 8018A6C0 00187620  4B EC 24 55 */	bl AddObject__13CStateManagerFR7CEntity
/* 8018A6C4 00187624  7F C3 F3 78 */	mr r3, r30
/* 8018A6C8 00187628  7E E4 BB 78 */	mr r4, r23
/* 8018A6CC 0018762C  4B EC 24 49 */	bl AddObject__13CStateManagerFR7CEntity
/* 8018A6D0 00187630  A0 1F 05 D4 */	lhz r0, 0x5d4(r31)
/* 8018A6D4 00187634  B0 1F 06 76 */	sth r0, 0x676(r31)
lbl_8018A6D8:
/* 8018A6D8 00187638  38 00 00 00 */	li r0, 0
/* 8018A6DC 0018763C  38 61 01 5C */	addi r3, r1, 0x15c
/* 8018A6E0 00187640  90 01 01 60 */	stw r0, 0x160(r1)
/* 8018A6E4 00187644  38 80 00 0F */	li r4, 0xf
/* 8018A6E8 00187648  90 01 01 64 */	stw r0, 0x164(r1)
/* 8018A6EC 0018764C  90 01 01 68 */	stw r0, 0x168(r1)
/* 8018A6F0 00187650  4B FC C0 C9 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 8018A6F4 00187654  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8018A6F8 00187658  3C 60 80 3D */	lis r3, lbl_803D07D4@ha
/* 8018A6FC 0018765C  3A E3 07 D4 */	addi r23, r3, lbl_803D07D4@l
/* 8018A700 00187660  3B 01 02 64 */	addi r24, r1, 0x264
/* 8018A704 00187664  83 64 00 10 */	lwz r27, 0x10(r4)
/* 8018A708 00187668  3B 21 02 EC */	addi r25, r1, 0x2ec
/* 8018A70C 0018766C  3B 40 00 00 */	li r26, 0
lbl_8018A710:
/* 8018A710 00187670  80 97 00 00 */	lwz r4, 0(r23)
/* 8018A714 00187674  38 61 01 1C */	addi r3, r1, 0x11c
/* 8018A718 00187678  4B E7 A5 A1 */	bl string_l__4rstlFPCc
/* 8018A71C 0018767C  80 97 00 00 */	lwz r4, 0(r23)
/* 8018A720 00187680  38 61 01 0C */	addi r3, r1, 0x10c
/* 8018A724 00187684  4B E7 A5 95 */	bl string_l__4rstlFPCc
/* 8018A728 00187688  7F 64 DB 78 */	mr r4, r27
/* 8018A72C 0018768C  38 61 00 30 */	addi r3, r1, 0x30
/* 8018A730 00187690  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8018A734 00187694  4B EA 41 05 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018A738 00187698  88 01 00 30 */	lbz r0, 0x30(r1)
/* 8018A73C 0018769C  38 61 02 38 */	addi r3, r1, 0x238
/* 8018A740 001876A0  C0 37 00 04 */	lfs f1, 4(r23)
/* 8018A744 001876A4  38 81 00 34 */	addi r4, r1, 0x34
/* 8018A748 001876A8  98 01 00 34 */	stb r0, 0x34(r1)
/* 8018A74C 001876AC  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8018A750 001876B0  C0 42 A3 BC */	lfs f2, lbl_805AC0DC@sda21(r2)
/* 8018A754 001876B4  48 01 E0 B9 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8018A758 001876B8  80 E1 02 38 */	lwz r7, 0x238(r1)
/* 8018A75C 001876BC  7F 23 CB 78 */	mr r3, r25
/* 8018A760 001876C0  80 C1 02 3C */	lwz r6, 0x23c(r1)
/* 8018A764 001876C4  7F 04 C3 78 */	mr r4, r24
/* 8018A768 001876C8  88 A1 02 40 */	lbz r5, 0x240(r1)
/* 8018A76C 001876CC  88 01 02 41 */	lbz r0, 0x241(r1)
/* 8018A770 001876D0  C0 E1 02 44 */	lfs f7, 0x244(r1)
/* 8018A774 001876D4  C0 C1 02 48 */	lfs f6, 0x248(r1)
/* 8018A778 001876D8  C0 A1 02 4C */	lfs f5, 0x24c(r1)
/* 8018A77C 001876DC  C0 81 02 50 */	lfs f4, 0x250(r1)
/* 8018A780 001876E0  C0 61 02 54 */	lfs f3, 0x254(r1)
/* 8018A784 001876E4  C0 41 02 58 */	lfs f2, 0x258(r1)
/* 8018A788 001876E8  C0 21 02 5C */	lfs f1, 0x25c(r1)
/* 8018A78C 001876EC  C0 01 02 60 */	lfs f0, 0x260(r1)
/* 8018A790 001876F0  90 E1 02 C0 */	stw r7, 0x2c0(r1)
/* 8018A794 001876F4  90 C1 02 C4 */	stw r6, 0x2c4(r1)
/* 8018A798 001876F8  98 A1 02 C8 */	stb r5, 0x2c8(r1)
/* 8018A79C 001876FC  98 01 02 C9 */	stb r0, 0x2c9(r1)
/* 8018A7A0 00187700  D0 E1 02 CC */	stfs f7, 0x2cc(r1)
/* 8018A7A4 00187704  D0 C1 02 D0 */	stfs f6, 0x2d0(r1)
/* 8018A7A8 00187708  D0 A1 02 D4 */	stfs f5, 0x2d4(r1)
/* 8018A7AC 0018770C  D0 81 02 D8 */	stfs f4, 0x2d8(r1)
/* 8018A7B0 00187710  D0 61 02 DC */	stfs f3, 0x2dc(r1)
/* 8018A7B4 00187714  D0 41 02 E0 */	stfs f2, 0x2e0(r1)
/* 8018A7B8 00187718  D0 21 02 E4 */	stfs f1, 0x2e4(r1)
/* 8018A7BC 0018771C  D0 01 02 E8 */	stfs f0, 0x2e8(r1)
/* 8018A7C0 00187720  48 1B 39 A1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018A7C4 00187724  A0 01 02 74 */	lhz r0, 0x274(r1)
/* 8018A7C8 00187728  28 18 00 00 */	cmplwi r24, 0
/* 8018A7CC 0018772C  C0 01 02 78 */	lfs f0, 0x278(r1)
/* 8018A7D0 00187730  B0 01 02 FC */	sth r0, 0x2fc(r1)
/* 8018A7D4 00187734  D0 01 03 00 */	stfs f0, 0x300(r1)
/* 8018A7D8 00187738  41 82 00 0C */	beq lbl_8018A7E4
/* 8018A7DC 0018773C  7F 03 C3 78 */	mr r3, r24
/* 8018A7E0 00187740  48 1B 33 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A7E4:
/* 8018A7E4 00187744  38 61 01 0C */	addi r3, r1, 0x10c
/* 8018A7E8 00187748  48 1B 32 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018A7EC 0018774C  38 61 01 1C */	addi r3, r1, 0x11c
/* 8018A7F0 00187750  48 1B 32 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018A7F4 00187754  38 61 01 5C */	addi r3, r1, 0x15c
/* 8018A7F8 00187758  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 8018A7FC 0018775C  4B FC BA 35 */	bl sub_80156230
/* 8018A800 00187760  28 19 00 00 */	cmplwi r25, 0
/* 8018A804 00187764  41 82 00 0C */	beq lbl_8018A810
/* 8018A808 00187768  7F 23 CB 78 */	mr r3, r25
/* 8018A80C 0018776C  48 1B 32 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A810:
/* 8018A810 00187770  3B 5A 00 01 */	addi r26, r26, 1
/* 8018A814 00187774  3A F7 00 08 */	addi r23, r23, 8
/* 8018A818 00187778  28 1A 00 02 */	cmplwi r26, 2
/* 8018A81C 0018777C  41 80 FE F4 */	blt lbl_8018A710
/* 8018A820 00187780  3C 60 80 3D */	lis r3, lbl_803D06D0@ha
/* 8018A824 00187784  3B 01 02 20 */	addi r24, r1, 0x220
/* 8018A828 00187788  3A E3 06 D0 */	addi r23, r3, lbl_803D06D0@l
/* 8018A82C 0018778C  3B 21 02 A8 */	addi r25, r1, 0x2a8
/* 8018A830 00187790  3B 40 00 00 */	li r26, 0
lbl_8018A834:
/* 8018A834 00187794  80 97 00 00 */	lwz r4, 0(r23)
/* 8018A838 00187798  38 61 00 FC */	addi r3, r1, 0xfc
/* 8018A83C 0018779C  4B E7 A4 7D */	bl string_l__4rstlFPCc
/* 8018A840 001877A0  80 97 00 04 */	lwz r4, 4(r23)
/* 8018A844 001877A4  38 61 00 EC */	addi r3, r1, 0xec
/* 8018A848 001877A8  4B E7 A4 71 */	bl string_l__4rstlFPCc
/* 8018A84C 001877AC  80 97 00 00 */	lwz r4, 0(r23)
/* 8018A850 001877B0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8018A854 001877B4  4B E7 A4 65 */	bl string_l__4rstlFPCc
/* 8018A858 001877B8  C0 57 00 10 */	lfs f2, 0x10(r23)
/* 8018A85C 001877BC  7F 64 DB 78 */	mr r4, r27
/* 8018A860 001877C0  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 8018A864 001877C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8018A868 001877C8  C0 17 00 08 */	lfs f0, 8(r23)
/* 8018A86C 001877CC  38 A1 00 EC */	addi r5, r1, 0xec
/* 8018A870 001877D0  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 8018A874 001877D4  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8018A878 001877D8  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 8018A87C 001877DC  4B EA 3F BD */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018A880 001877E0  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8018A884 001877E4  7F 64 DB 78 */	mr r4, r27
/* 8018A888 001877E8  38 61 00 28 */	addi r3, r1, 0x28
/* 8018A88C 001877EC  38 A1 00 FC */	addi r5, r1, 0xfc
/* 8018A890 001877F0  98 01 00 24 */	stb r0, 0x24(r1)
/* 8018A894 001877F4  4B EA 3F A5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018A898 001877F8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8018A89C 001877FC  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 8018A8A0 00187800  C0 22 A3 BC */	lfs f1, lbl_805AC0DC@sda21(r2)
/* 8018A8A4 00187804  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018A8A8 00187808  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8018A8AC 0018780C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8018A8B0 00187810  38 C1 00 E0 */	addi r6, r1, 0xe0
/* 8018A8B4 00187814  39 01 00 D0 */	addi r8, r1, 0xd0
/* 8018A8B8 00187818  38 E0 00 01 */	li r7, 1
/* 8018A8BC 0018781C  48 01 DD 19 */	bl "OBBAutoSizeCollision__26CJointCollisionDescriptionF6CSegId6CSegIdRC9CVector3fQ226CJointCollisionDescription16EOrientationTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8018A8C0 00187820  80 E1 01 F4 */	lwz r7, 0x1f4(r1)
/* 8018A8C4 00187824  7F 23 CB 78 */	mr r3, r25
/* 8018A8C8 00187828  80 C1 01 F8 */	lwz r6, 0x1f8(r1)
/* 8018A8CC 0018782C  7F 04 C3 78 */	mr r4, r24
/* 8018A8D0 00187830  88 A1 01 FC */	lbz r5, 0x1fc(r1)
/* 8018A8D4 00187834  88 01 01 FD */	lbz r0, 0x1fd(r1)
/* 8018A8D8 00187838  C0 E1 02 00 */	lfs f7, 0x200(r1)
/* 8018A8DC 0018783C  C0 C1 02 04 */	lfs f6, 0x204(r1)
/* 8018A8E0 00187840  C0 A1 02 08 */	lfs f5, 0x208(r1)
/* 8018A8E4 00187844  C0 81 02 0C */	lfs f4, 0x20c(r1)
/* 8018A8E8 00187848  C0 61 02 10 */	lfs f3, 0x210(r1)
/* 8018A8EC 0018784C  C0 41 02 14 */	lfs f2, 0x214(r1)
/* 8018A8F0 00187850  C0 21 02 18 */	lfs f1, 0x218(r1)
/* 8018A8F4 00187854  C0 01 02 1C */	lfs f0, 0x21c(r1)
/* 8018A8F8 00187858  90 E1 02 7C */	stw r7, 0x27c(r1)
/* 8018A8FC 0018785C  90 C1 02 80 */	stw r6, 0x280(r1)
/* 8018A900 00187860  98 A1 02 84 */	stb r5, 0x284(r1)
/* 8018A904 00187864  98 01 02 85 */	stb r0, 0x285(r1)
/* 8018A908 00187868  D0 E1 02 88 */	stfs f7, 0x288(r1)
/* 8018A90C 0018786C  D0 C1 02 8C */	stfs f6, 0x28c(r1)
/* 8018A910 00187870  D0 A1 02 90 */	stfs f5, 0x290(r1)
/* 8018A914 00187874  D0 81 02 94 */	stfs f4, 0x294(r1)
/* 8018A918 00187878  D0 61 02 98 */	stfs f3, 0x298(r1)
/* 8018A91C 0018787C  D0 41 02 9C */	stfs f2, 0x29c(r1)
/* 8018A920 00187880  D0 21 02 A0 */	stfs f1, 0x2a0(r1)
/* 8018A924 00187884  D0 01 02 A4 */	stfs f0, 0x2a4(r1)
/* 8018A928 00187888  48 1B 38 39 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018A92C 0018788C  A0 01 02 30 */	lhz r0, 0x230(r1)
/* 8018A930 00187890  28 18 00 00 */	cmplwi r24, 0
/* 8018A934 00187894  C0 01 02 34 */	lfs f0, 0x234(r1)
/* 8018A938 00187898  B0 01 02 B8 */	sth r0, 0x2b8(r1)
/* 8018A93C 0018789C  D0 01 02 BC */	stfs f0, 0x2bc(r1)
/* 8018A940 001878A0  41 82 00 0C */	beq lbl_8018A94C
/* 8018A944 001878A4  7F 03 C3 78 */	mr r3, r24
/* 8018A948 001878A8  48 1B 31 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A94C:
/* 8018A94C 001878AC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8018A950 001878B0  48 1B 31 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018A954 001878B4  38 61 00 EC */	addi r3, r1, 0xec
/* 8018A958 001878B8  48 1B 31 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018A95C 001878BC  38 61 00 FC */	addi r3, r1, 0xfc
/* 8018A960 001878C0  48 1B 31 81 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018A964 001878C4  38 61 01 5C */	addi r3, r1, 0x15c
/* 8018A968 001878C8  38 81 02 7C */	addi r4, r1, 0x27c
/* 8018A96C 001878CC  4B FC B8 C5 */	bl sub_80156230
/* 8018A970 001878D0  28 19 00 00 */	cmplwi r25, 0
/* 8018A974 001878D4  41 82 00 0C */	beq lbl_8018A980
/* 8018A978 001878D8  7F 23 CB 78 */	mr r3, r25
/* 8018A97C 001878DC  48 1B 31 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8018A980:
/* 8018A980 001878E0  3B 5A 00 01 */	addi r26, r26, 1
/* 8018A984 001878E4  3A F7 00 14 */	addi r23, r23, 0x14
/* 8018A988 001878E8  28 1A 00 0D */	cmplwi r26, 0xd
/* 8018A98C 001878EC  41 80 FE A8 */	blt lbl_8018A834
/* 8018A990 001878F0  3C 80 80 3D */	lis r4, lbl_803D07E4@ha
/* 8018A994 001878F4  38 60 00 18 */	li r3, 0x18
/* 8018A998 001878F8  38 84 07 E4 */	addi r4, r4, lbl_803D07E4@l
/* 8018A99C 001878FC  38 A0 00 00 */	li r5, 0
/* 8018A9A0 00187900  38 84 00 E7 */	addi r4, r4, 0xe7
/* 8018A9A4 00187904  48 18 AE C9 */	bl __nw__FUlPCcPCc
/* 8018A9A8 00187908  7C 77 1B 79 */	or. r23, r3, r3
/* 8018A9AC 0018790C  41 82 00 3C */	beq lbl_8018A9E8
/* 8018A9B0 00187910  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8018A9B4 00187914  7F C4 F3 78 */	mr r4, r30
/* 8018A9B8 00187918  81 3F 00 04 */	lwz r9, 4(r31)
/* 8018A9BC 0018791C  38 A1 00 48 */	addi r5, r1, 0x48
/* 8018A9C0 00187920  54 08 CF FE */	rlwinm r8, r0, 0x19, 0x1f, 0x1f
/* 8018A9C4 00187924  38 C1 00 80 */	addi r6, r1, 0x80
/* 8018A9C8 00187928  91 21 00 80 */	stw r9, 0x80(r1)
/* 8018A9CC 0018792C  38 E1 01 5C */	addi r7, r1, 0x15c
/* 8018A9D0 00187930  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8018A9D4 00187934  91 21 00 7C */	stw r9, 0x7c(r1)
/* 8018A9D8 00187938  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8018A9DC 0018793C  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8018A9E0 00187940  48 01 CF 51 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 8018A9E4 00187944  7C 77 1B 78 */	mr r23, r3
lbl_8018A9E8:
/* 8018A9E8 00187948  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 8018A9EC 0018794C  38 80 00 01 */	li r4, 1
/* 8018A9F0 00187950  48 01 CE ED */	bl sub_801a78dc
/* 8018A9F4 00187954  92 FF 05 EC */	stw r23, 0x5ec(r31)
/* 8018A9F8 00187958  38 61 01 5C */	addi r3, r1, 0x15c
/* 8018A9FC 0018795C  38 80 FF FF */	li r4, -1
/* 8018AA00 00187960  4B FC B9 2D */	bl sub_8015632c
/* 8018AA04 00187964  7F E3 FB 78 */	mr r3, r31
/* 8018AA08 00187968  7F C4 F3 78 */	mr r4, r30
/* 8018AA0C 0018796C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018AA10 00187970  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018AA14 00187974  7D 89 03 A6 */	mtctr r12
/* 8018AA18 00187978  4E 80 04 21 */	bctrl 
/* 8018AA1C 0018797C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018AA20 00187980  3C 60 80 3D */	lis r3, lbl_803D07D4@ha
/* 8018AA24 00187984  3B 63 07 D4 */	addi r27, r3, lbl_803D07D4@l
/* 8018AA28 00187988  3B 20 00 00 */	li r25, 0
/* 8018AA2C 0018798C  D0 1F 06 40 */	stfs f0, 0x640(r31)
/* 8018AA30 00187990  48 00 01 C8 */	b lbl_8018ABF8
lbl_8018AA34:
/* 8018AA34 00187994  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 8018AA38 00187998  7F 24 CB 78 */	mr r4, r25
/* 8018AA3C 0018799C  48 01 C7 FD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8018AA40 001879A0  7C 77 1B 78 */	mr r23, r3
/* 8018AA44 001879A4  7F C3 F3 78 */	mr r3, r30
/* 8018AA48 001879A8  A0 17 00 3C */	lhz r0, 0x3c(r23)
/* 8018AA4C 001879AC  38 81 00 40 */	addi r4, r1, 0x40
/* 8018AA50 001879B0  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8018AA54 001879B4  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8018AA58 001879B8  4B EC 1B 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018AA5C 001879BC  7C 64 1B 78 */	mr r4, r3
/* 8018AA60 001879C0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8018AA64 001879C4  4B F2 48 E9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8018AA68 001879C8  83 43 00 04 */	lwz r26, 4(r3)
/* 8018AA6C 001879CC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8018AA70 001879D0  80 9B 00 00 */	lwz r4, 0(r27)
/* 8018AA74 001879D4  4B E7 A2 45 */	bl string_l__4rstlFPCc
/* 8018AA78 001879D8  38 77 00 2C */	addi r3, r23, 0x2c
/* 8018AA7C 001879DC  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8018AA80 001879E0  4B EC 7B 61 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8018AA84 001879E4  7C 78 1B 78 */	mr r24, r3
/* 8018AA88 001879E8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8018AA8C 001879EC  48 1B 30 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018AA90 001879F0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8018AA94 001879F4  41 82 00 8C */	beq lbl_8018AB20
/* 8018AA98 001879F8  A0 17 00 3C */	lhz r0, 0x3c(r23)
/* 8018AA9C 001879FC  28 1A 00 00 */	cmplwi r26, 0
/* 8018AAA0 00187A00  B0 1F 06 00 */	sth r0, 0x600(r31)
/* 8018AAA4 00187A04  41 82 01 50 */	beq lbl_8018ABF4
/* 8018AAA8 00187A08  7F E3 FB 78 */	mr r3, r31
/* 8018AAAC 00187A0C  7F C4 F3 78 */	mr r4, r30
/* 8018AAB0 00187A10  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018AAB4 00187A14  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018AAB8 00187A18  7D 89 03 A6 */	mtctr r12
/* 8018AABC 00187A1C  4E 80 04 21 */	bctrl 
/* 8018AAC0 00187A20  7C 78 1B 78 */	mr r24, r3
/* 8018AAC4 00187A24  7F 43 D3 78 */	mr r3, r26
/* 8018AAC8 00187A28  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018AACC 00187A2C  7F C4 F3 78 */	mr r4, r30
/* 8018AAD0 00187A30  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018AAD4 00187A34  7D 89 03 A6 */	mtctr r12
/* 8018AAD8 00187A38  4E 80 04 21 */	bctrl 
/* 8018AADC 00187A3C  C0 18 00 00 */	lfs f0, 0(r24)
/* 8018AAE0 00187A40  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018AAE4 00187A44  C0 18 00 04 */	lfs f0, 4(r24)
/* 8018AAE8 00187A48  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018AAEC 00187A4C  7F E3 FB 78 */	mr r3, r31
/* 8018AAF0 00187A50  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018AAF4 00187A54  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8018AAF8 00187A58  7D 89 03 A6 */	mtctr r12
/* 8018AAFC 00187A5C  4E 80 04 21 */	bctrl 
/* 8018AB00 00187A60  7C 64 1B 78 */	mr r4, r3
/* 8018AB04 00187A64  7F 43 D3 78 */	mr r3, r26
/* 8018AB08 00187A68  48 01 E0 91 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 8018AB0C 00187A6C  7F 43 D3 78 */	mr r3, r26
/* 8018AB10 00187A70  7F C5 F3 78 */	mr r5, r30
/* 8018AB14 00187A74  38 80 00 29 */	li r4, 0x29
/* 8018AB18 00187A78  4B EC 94 69 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8018AB1C 00187A7C  48 00 00 D8 */	b lbl_8018ABF4
lbl_8018AB20:
/* 8018AB20 00187A80  3C 80 80 3D */	lis r4, lbl_803D06D0@ha
/* 8018AB24 00187A84  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8018AB28 00187A88  38 84 06 D0 */	addi r4, r4, lbl_803D06D0@l
/* 8018AB2C 00187A8C  80 84 00 00 */	lwz r4, 0(r4)
/* 8018AB30 00187A90  4B E7 A1 89 */	bl string_l__4rstlFPCc
/* 8018AB34 00187A94  38 77 00 2C */	addi r3, r23, 0x2c
/* 8018AB38 00187A98  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8018AB3C 00187A9C  4B EC 7A A5 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8018AB40 00187AA0  7C 78 1B 78 */	mr r24, r3
/* 8018AB44 00187AA4  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8018AB48 00187AA8  48 1B 2F 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018AB4C 00187AAC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8018AB50 00187AB0  41 82 00 8C */	beq lbl_8018ABDC
/* 8018AB54 00187AB4  A0 17 00 3C */	lhz r0, 0x3c(r23)
/* 8018AB58 00187AB8  28 1A 00 00 */	cmplwi r26, 0
/* 8018AB5C 00187ABC  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 8018AB60 00187AC0  41 82 00 94 */	beq lbl_8018ABF4
/* 8018AB64 00187AC4  7F E3 FB 78 */	mr r3, r31
/* 8018AB68 00187AC8  7F C4 F3 78 */	mr r4, r30
/* 8018AB6C 00187ACC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018AB70 00187AD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018AB74 00187AD4  7D 89 03 A6 */	mtctr r12
/* 8018AB78 00187AD8  4E 80 04 21 */	bctrl 
/* 8018AB7C 00187ADC  7C 78 1B 78 */	mr r24, r3
/* 8018AB80 00187AE0  7F 43 D3 78 */	mr r3, r26
/* 8018AB84 00187AE4  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018AB88 00187AE8  7F C4 F3 78 */	mr r4, r30
/* 8018AB8C 00187AEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018AB90 00187AF0  7D 89 03 A6 */	mtctr r12
/* 8018AB94 00187AF4  4E 80 04 21 */	bctrl 
/* 8018AB98 00187AF8  C0 18 00 00 */	lfs f0, 0(r24)
/* 8018AB9C 00187AFC  3C 80 80 57 */	lis r4, lbl_8056D578@ha
/* 8018ABA0 00187B00  38 84 D5 78 */	addi r4, r4, lbl_8056D578@l
/* 8018ABA4 00187B04  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018ABA8 00187B08  C0 18 00 04 */	lfs f0, 4(r24)
/* 8018ABAC 00187B0C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018ABB0 00187B10  7F 43 D3 78 */	mr r3, r26
/* 8018ABB4 00187B14  48 01 DF E5 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 8018ABB8 00187B18  7F 43 D3 78 */	mr r3, r26
/* 8018ABBC 00187B1C  7F C5 F3 78 */	mr r5, r30
/* 8018ABC0 00187B20  38 80 00 29 */	li r4, 0x29
/* 8018ABC4 00187B24  4B EC 97 8D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8018ABC8 00187B28  7F E3 FB 78 */	mr r3, r31
/* 8018ABCC 00187B2C  7F 44 D3 78 */	mr r4, r26
/* 8018ABD0 00187B30  7F C5 F3 78 */	mr r5, r30
/* 8018ABD4 00187B34  4B EC 88 45 */	bl MoveScannableObjectInfoToActor__6CActorFP6CActorR13CStateManager
/* 8018ABD8 00187B38  48 00 00 1C */	b lbl_8018ABF4
lbl_8018ABDC:
/* 8018ABDC 00187B3C  28 1A 00 00 */	cmplwi r26, 0
/* 8018ABE0 00187B40  41 82 00 14 */	beq lbl_8018ABF4
/* 8018ABE4 00187B44  7F 43 D3 78 */	mr r3, r26
/* 8018ABE8 00187B48  7F C5 F3 78 */	mr r5, r30
/* 8018ABEC 00187B4C  38 80 00 29 */	li r4, 0x29
/* 8018ABF0 00187B50  4B EC 93 91 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8018ABF4:
/* 8018ABF4 00187B54  3B 39 00 01 */	addi r25, r25, 1
lbl_8018ABF8:
/* 8018ABF8 00187B58  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 8018ABFC 00187B5C  48 01 C6 4D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8018AC00 00187B60  7C 19 18 40 */	cmplw r25, r3
/* 8018AC04 00187B64  41 80 FE 30 */	blt lbl_8018AA34
/* 8018AC08 00187B68  48 00 00 58 */	b lbl_8018AC60
lbl_8018AC0C:
/* 8018AC0C 00187B6C  7F C4 F3 78 */	mr r4, r30
/* 8018AC10 00187B70  4B FF F2 91 */	bl DeleteBeam__13CNewIntroBossFR13CStateManager
/* 8018AC14 00187B74  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 8018AC18 00187B78  7F C4 F3 78 */	mr r4, r30
/* 8018AC1C 00187B7C  48 01 C7 A9 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 8018AC20 00187B80  48 00 00 40 */	b lbl_8018AC60
lbl_8018AC24:
/* 8018AC24 00187B84  A0 7C 00 00 */	lhz r3, 0(r28)
/* 8018AC28 00187B88  A0 1F 06 00 */	lhz r0, 0x600(r31)
/* 8018AC2C 00187B8C  7C 03 00 40 */	cmplw r3, r0
/* 8018AC30 00187B90  41 82 00 10 */	beq lbl_8018AC40
/* 8018AC34 00187B94  A0 1F 06 02 */	lhz r0, 0x602(r31)
/* 8018AC38 00187B98  7C 03 00 40 */	cmplw r3, r0
/* 8018AC3C 00187B9C  40 82 00 24 */	bne lbl_8018AC60
lbl_8018AC40:
/* 8018AC40 00187BA0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018AC44 00187BA4  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8018AC48 00187BA8  7F E3 FB 78 */	mr r3, r31
/* 8018AC4C 00187BAC  C0 22 A3 C0 */	lfs f1, lbl_805AC0E0@sda21(r2)
/* 8018AC50 00187BB0  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8018AC54 00187BB4  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8018AC58 00187BB8  7D 89 03 A6 */	mtctr r12
/* 8018AC5C 00187BBC  4E 80 04 21 */	bctrl 
lbl_8018AC60:
/* 8018AC60 00187BC0  88 BF 00 30 */	lbz r5, 0x30(r31)
/* 8018AC64 00187BC4  7F E3 FB 78 */	mr r3, r31
/* 8018AC68 00187BC8  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8018AC6C 00187BCC  7F A4 EB 78 */	mr r4, r29
/* 8018AC70 00187BD0  7F C6 F3 78 */	mr r6, r30
/* 8018AC74 00187BD4  54 B7 CF FE */	rlwinm r23, r5, 0x19, 0x1f, 0x1f
/* 8018AC78 00187BD8  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8018AC7C 00187BDC  38 A1 00 38 */	addi r5, r1, 0x38
/* 8018AC80 00187BE0  4B EF 1E F9 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8018AC84 00187BE4  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8018AC88 00187BE8  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 8018AC8C 00187BEC  7C 17 28 40 */	cmplw r23, r5
/* 8018AC90 00187BF0  41 82 00 20 */	beq lbl_8018ACB0
/* 8018AC94 00187BF4  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 8018AC98 00187BF8  28 03 00 00 */	cmplwi r3, 0
/* 8018AC9C 00187BFC  41 82 00 0C */	beq lbl_8018ACA8
/* 8018ACA0 00187C00  7F C4 F3 78 */	mr r4, r30
/* 8018ACA4 00187C04  48 01 C6 55 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_8018ACA8:
/* 8018ACA8 00187C08  C0 02 A3 AC */	lfs f0, lbl_805AC0CC@sda21(r2)
/* 8018ACAC 00187C0C  D0 1F 06 3C */	stfs f0, 0x63c(r31)
lbl_8018ACB0:
/* 8018ACB0 00187C10  BA E1 03 DC */	lmw r23, 0x3dc(r1)
/* 8018ACB4 00187C14  80 01 04 04 */	lwz r0, 0x404(r1)
/* 8018ACB8 00187C18  7C 08 03 A6 */	mtlr r0
/* 8018ACBC 00187C1C  38 21 04 00 */	addi r1, r1, 0x400
/* 8018ACC0 00187C20  4E 80 00 20 */	blr 

.global Generate__13CNewIntroBossFR13CStateManager9EStateMsgf
Generate__13CNewIntroBossFR13CStateManager9EStateMsgf:
/* 8018ACC4 00187C24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018ACC8 00187C28  7C 08 02 A6 */	mflr r0
/* 8018ACCC 00187C2C  2C 05 00 01 */	cmpwi r5, 1
/* 8018ACD0 00187C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018ACD4 00187C34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018ACD8 00187C38  7C 7F 1B 78 */	mr r31, r3
/* 8018ACDC 00187C3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8018ACE0 00187C40  7C 9E 23 78 */	mr r30, r4
/* 8018ACE4 00187C44  41 82 00 40 */	beq lbl_8018AD24
/* 8018ACE8 00187C48  40 80 01 78 */	bge lbl_8018AE60
/* 8018ACEC 00187C4C  2C 05 00 00 */	cmpwi r5, 0
/* 8018ACF0 00187C50  40 80 00 0C */	bge lbl_8018ACFC
/* 8018ACF4 00187C54  48 00 01 6C */	b lbl_8018AE60
/* 8018ACF8 00187C58  48 00 01 68 */	b lbl_8018AE60
lbl_8018ACFC:
/* 8018ACFC 00187C5C  38 00 00 00 */	li r0, 0
/* 8018AD00 00187C60  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018AD04 00187C64  48 00 14 B1 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018AD08 00187C68  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8018AD0C 00187C6C  7F E3 FB 78 */	mr r3, r31
/* 8018AD10 00187C70  7F C5 F3 78 */	mr r5, r30
/* 8018AD14 00187C74  38 80 00 03 */	li r4, 3
/* 8018AD18 00187C78  38 C0 FF FF */	li r6, -1
/* 8018AD1C 00187C7C  4B EC 63 A5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8018AD20 00187C80  48 00 01 40 */	b lbl_8018AE60
lbl_8018AD24:
/* 8018AD24 00187C84  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8018AD28 00187C88  2C 00 00 01 */	cmpwi r0, 1
/* 8018AD2C 00187C8C  41 82 01 34 */	beq lbl_8018AE60
/* 8018AD30 00187C90  40 80 00 10 */	bge lbl_8018AD40
/* 8018AD34 00187C94  2C 00 00 00 */	cmpwi r0, 0
/* 8018AD38 00187C98  40 80 00 14 */	bge lbl_8018AD4C
/* 8018AD3C 00187C9C  48 00 01 24 */	b lbl_8018AE60
lbl_8018AD40:
/* 8018AD40 00187CA0  2C 00 00 03 */	cmpwi r0, 3
/* 8018AD44 00187CA4  40 80 01 1C */	bge lbl_8018AE60
/* 8018AD48 00187CA8  48 00 00 F0 */	b lbl_8018AE38
lbl_8018AD4C:
/* 8018AD4C 00187CAC  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8018AD50 00187CB0  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8018AD54 00187CB4  2C 00 00 0C */	cmpwi r0, 0xc
/* 8018AD58 00187CB8  40 82 00 10 */	bne lbl_8018AD68
/* 8018AD5C 00187CBC  38 00 00 02 */	li r0, 2
/* 8018AD60 00187CC0  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018AD64 00187CC4  48 00 00 FC */	b lbl_8018AE60
lbl_8018AD68:
/* 8018AD68 00187CC8  48 00 13 F1 */	bl GetGenerateForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018AD6C 00187CCC  3C E0 80 3E */	lis r7, lbl_803DAA68@ha
/* 8018AD70 00187CD0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8018AD74 00187CD4  C4 44 66 A0 */	lfsu f2, skZero3f@l(r4)
/* 8018AD78 00187CD8  39 47 AA 68 */	addi r10, r7, lbl_803DAA68@l
/* 8018AD7C 00187CDC  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 8018AD80 00187CE0  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8018AD84 00187CE4  38 C0 00 00 */	li r6, 0
/* 8018AD88 00187CE8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8018AD8C 00187CEC  50 C5 F8 00 */	rlwimi r5, r6, 0x1f, 0, 0
/* 8018AD90 00187CF0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8018AD94 00187CF4  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 8018AD98 00187CF8  7C A0 2B 78 */	mr r0, r5
/* 8018AD9C 00187CFC  39 20 00 0E */	li r9, 0xe
/* 8018ADA0 00187D00  38 E0 FF FF */	li r7, -1
/* 8018ADA4 00187D04  3B E4 00 04 */	addi r31, r4, 4
/* 8018ADA8 00187D08  90 61 00 10 */	stw r3, 0x10(r1)
/* 8018ADAC 00187D0C  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 8018ADB0 00187D10  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8018ADB4 00187D14  91 41 00 08 */	stw r10, 8(r1)
/* 8018ADB8 00187D18  38 80 00 0E */	li r4, 0xe
/* 8018ADBC 00187D1C  7F E3 FB 78 */	mr r3, r31
/* 8018ADC0 00187D20  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8018ADC4 00187D24  91 21 00 0C */	stw r9, 0xc(r1)
/* 8018ADC8 00187D28  91 01 00 08 */	stw r8, 8(r1)
/* 8018ADCC 00187D2C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8018ADD0 00187D30  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8018ADD4 00187D34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8018ADD8 00187D38  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8018ADDC 00187D3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018ADE0 00187D40  4B FA 66 59 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8018ADE4 00187D44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8018ADE8 00187D48  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8018ADEC 00187D4C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8018ADF0 00187D50  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8018ADF4 00187D54  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8018ADF8 00187D58  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8018ADFC 00187D5C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8018AE00 00187D60  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8018AE04 00187D64  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8018AE08 00187D68  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8018AE0C 00187D6C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8018AE10 00187D70  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8018AE14 00187D74  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8018AE18 00187D78  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8018AE1C 00187D7C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8018AE20 00187D80  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8018AE24 00187D84  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8018AE28 00187D88  90 81 00 08 */	stw r4, 8(r1)
/* 8018AE2C 00187D8C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8018AE30 00187D90  90 01 00 08 */	stw r0, 8(r1)
/* 8018AE34 00187D94  48 00 00 2C */	b lbl_8018AE60
lbl_8018AE38:
/* 8018AE38 00187D98  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 8018AE3C 00187D9C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8018AE40 00187DA0  2C 00 00 0C */	cmpwi r0, 0xc
/* 8018AE44 00187DA4  41 82 00 1C */	beq lbl_8018AE60
/* 8018AE48 00187DA8  38 00 00 03 */	li r0, 3
/* 8018AE4C 00187DAC  7F C5 F3 78 */	mr r5, r30
/* 8018AE50 00187DB0  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018AE54 00187DB4  38 80 00 04 */	li r4, 4
/* 8018AE58 00187DB8  38 C0 FF FF */	li r6, -1
/* 8018AE5C 00187DBC  4B EC 62 65 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8018AE60:
/* 8018AE60 00187DC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018AE64 00187DC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018AE68 00187DC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8018AE6C 00187DCC  7C 08 03 A6 */	mtlr r0
/* 8018AE70 00187DD0  38 21 00 30 */	addi r1, r1, 0x30
/* 8018AE74 00187DD4  4E 80 00 20 */	blr 

.global AIStage__13CNewIntroBossFR13CStateManagerf
AIStage__13CNewIntroBossFR13CStateManagerf:
/* 8018AE78 00187DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018AE7C 00187DDC  7C 08 02 A6 */	mflr r0
/* 8018AE80 00187DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018AE84 00187DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018AE88 00187DE8  7C 7F 1B 78 */	mr r31, r3
/* 8018AE8C 00187DEC  48 00 13 29 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018AE90 00187DF0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8018AE94 00187DF4  7C 80 18 50 */	subf r4, r0, r3
/* 8018AE98 00187DF8  7C 03 00 50 */	subf r0, r3, r0
/* 8018AE9C 00187DFC  7C 80 03 78 */	or r0, r4, r0
/* 8018AEA0 00187E00  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8018AEA4 00187E04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018AEA8 00187E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018AEAC 00187E0C  7C 08 03 A6 */	mtlr r0
/* 8018AEB0 00187E10  38 21 00 10 */	addi r1, r1, 0x10
/* 8018AEB4 00187E14  4E 80 00 20 */	blr 

.global AnimOver__13CNewIntroBossFR13CStateManagerf
AnimOver__13CNewIntroBossFR13CStateManagerf:
/* 8018AEB8 00187E18  80 03 05 6C */	lwz r0, 0x56c(r3)
/* 8018AEBC 00187E1C  20 00 00 03 */	subfic r0, r0, 3
/* 8018AEC0 00187E20  7C 00 00 34 */	cntlzw r0, r0
/* 8018AEC4 00187E24  54 03 D9 7E */	srwi r3, r0, 5
/* 8018AEC8 00187E28  4E 80 00 20 */	blr 

.global InAttackPosition__13CNewIntroBossFR13CStateManagerf
InAttackPosition__13CNewIntroBossFR13CStateManagerf:
/* 8018AECC 00187E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018AED0 00187E30  7C 08 02 A6 */	mflr r0
/* 8018AED4 00187E34  C0 02 A3 C4 */	lfs f0, lbl_805AC0E4@sda21(r2)
/* 8018AED8 00187E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018AEDC 00187E3C  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 8018AEE0 00187E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018AEE4 00187E44  40 81 00 44 */	ble lbl_8018AF28
/* 8018AEE8 00187E48  88 03 06 78 */	lbz r0, 0x678(r3)
/* 8018AEEC 00187E4C  28 00 00 00 */	cmplwi r0, 0
/* 8018AEF0 00187E50  41 82 00 38 */	beq lbl_8018AF28
/* 8018AEF4 00187E54  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8018AEF8 00187E58  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8018AEFC 00187E5C  2C 00 00 08 */	cmpwi r0, 8
/* 8018AF00 00187E60  41 82 00 28 */	beq lbl_8018AF28
/* 8018AF04 00187E64  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AF08 00187E68  C0 22 A3 C0 */	lfs f1, lbl_805AC0E0@sda21(r2)
/* 8018AF0C 00187E6C  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8018AF10 00187E70  7D 89 03 A6 */	mtctr r12
/* 8018AF14 00187E74  4E 80 04 21 */	bctrl 
/* 8018AF18 00187E78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018AF1C 00187E7C  40 82 00 0C */	bne lbl_8018AF28
/* 8018AF20 00187E80  38 60 00 01 */	li r3, 1
/* 8018AF24 00187E84  48 00 00 08 */	b lbl_8018AF2C
lbl_8018AF28:
/* 8018AF28 00187E88  38 60 00 00 */	li r3, 0
lbl_8018AF2C:
/* 8018AF2C 00187E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018AF30 00187E90  7C 08 03 A6 */	mtlr r0
/* 8018AF34 00187E94  38 21 00 10 */	addi r1, r1, 0x10
/* 8018AF38 00187E98  4E 80 00 20 */	blr 

.global ShouldAttack__13CNewIntroBossFR13CStateManagerf
ShouldAttack__13CNewIntroBossFR13CStateManagerf:
/* 8018AF3C 00187E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018AF40 00187EA0  7C 08 02 A6 */	mflr r0
/* 8018AF44 00187EA4  C0 22 A3 C0 */	lfs f1, lbl_805AC0E0@sda21(r2)
/* 8018AF48 00187EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018AF4C 00187EAC  C0 03 06 3C */	lfs f0, 0x63c(r3)
/* 8018AF50 00187EB0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8018AF54 00187EB4  4C 40 13 82 */	cror 2, 0, 2
/* 8018AF58 00187EB8  40 82 00 34 */	bne lbl_8018AF8C
/* 8018AF5C 00187EBC  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8018AF60 00187EC0  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8018AF64 00187EC4  2C 00 00 08 */	cmpwi r0, 8
/* 8018AF68 00187EC8  41 82 00 24 */	beq lbl_8018AF8C
/* 8018AF6C 00187ECC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AF70 00187ED0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8018AF74 00187ED4  7D 89 03 A6 */	mtctr r12
/* 8018AF78 00187ED8  4E 80 04 21 */	bctrl 
/* 8018AF7C 00187EDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018AF80 00187EE0  40 82 00 0C */	bne lbl_8018AF8C
/* 8018AF84 00187EE4  38 60 00 01 */	li r3, 1
/* 8018AF88 00187EE8  48 00 00 08 */	b lbl_8018AF90
lbl_8018AF8C:
/* 8018AF8C 00187EEC  38 60 00 00 */	li r3, 0
lbl_8018AF90:
/* 8018AF90 00187EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018AF94 00187EF4  7C 08 03 A6 */	mtlr r0
/* 8018AF98 00187EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018AF9C 00187EFC  4E 80 00 20 */	blr 

.global Attack__13CNewIntroBossFR13CStateManager9EStateMsgf
Attack__13CNewIntroBossFR13CStateManager9EStateMsgf:
/* 8018AFA0 00187F00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018AFA4 00187F04  7C 08 02 A6 */	mflr r0
/* 8018AFA8 00187F08  2C 05 00 01 */	cmpwi r5, 1
/* 8018AFAC 00187F0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018AFB0 00187F10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8018AFB4 00187F14  7C 7F 1B 78 */	mr r31, r3
/* 8018AFB8 00187F18  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8018AFBC 00187F1C  7C 9E 23 78 */	mr r30, r4
/* 8018AFC0 00187F20  41 82 00 2C */	beq lbl_8018AFEC
/* 8018AFC4 00187F24  40 80 00 10 */	bge lbl_8018AFD4
/* 8018AFC8 00187F28  2C 05 00 00 */	cmpwi r5, 0
/* 8018AFCC 00187F2C  40 80 00 14 */	bge lbl_8018AFE0
/* 8018AFD0 00187F30  48 00 01 AC */	b lbl_8018B17C
lbl_8018AFD4:
/* 8018AFD4 00187F34  2C 05 00 03 */	cmpwi r5, 3
/* 8018AFD8 00187F38  40 80 01 A4 */	bge lbl_8018B17C
/* 8018AFDC 00187F3C  48 00 01 64 */	b lbl_8018B140
lbl_8018AFE0:
/* 8018AFE0 00187F40  38 00 00 00 */	li r0, 0
/* 8018AFE4 00187F44  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018AFE8 00187F48  48 00 01 94 */	b lbl_8018B17C
lbl_8018AFEC:
/* 8018AFEC 00187F4C  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8018AFF0 00187F50  2C 00 00 01 */	cmpwi r0, 1
/* 8018AFF4 00187F54  41 82 01 88 */	beq lbl_8018B17C
/* 8018AFF8 00187F58  40 80 00 10 */	bge lbl_8018B008
/* 8018AFFC 00187F5C  2C 00 00 00 */	cmpwi r0, 0
/* 8018B000 00187F60  40 80 00 14 */	bge lbl_8018B014
/* 8018B004 00187F64  48 00 01 78 */	b lbl_8018B17C
lbl_8018B008:
/* 8018B008 00187F68  2C 00 00 03 */	cmpwi r0, 3
/* 8018B00C 00187F6C  40 80 01 70 */	bge lbl_8018B17C
/* 8018B010 00187F70  48 00 00 C8 */	b lbl_8018B0D8
lbl_8018B014:
/* 8018B014 00187F74  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 8018B018 00187F78  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 8018B01C 00187F7C  2C 00 00 12 */	cmpwi r0, 0x12
/* 8018B020 00187F80  40 82 00 10 */	bne lbl_8018B030
/* 8018B024 00187F84  38 00 00 02 */	li r0, 2
/* 8018B028 00187F88  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018B02C 00187F8C  48 00 01 50 */	b lbl_8018B17C
lbl_8018B030:
/* 8018B030 00187F90  81 1E 08 4C */	lwz r8, 0x84c(r30)
/* 8018B034 00187F94  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8018B038 00187F98  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 8018B03C 00187F9C  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8018B040 00187FA0  C0 48 00 60 */	lfs f2, 0x60(r8)
/* 8018B044 00187FA4  38 E0 00 06 */	li r7, 6
/* 8018B048 00187FA8  C0 28 00 50 */	lfs f1, 0x50(r8)
/* 8018B04C 00187FAC  38 A0 00 01 */	li r5, 1
/* 8018B050 00187FB0  C0 08 00 40 */	lfs f0, 0x40(r8)
/* 8018B054 00187FB4  38 00 00 00 */	li r0, 0
/* 8018B058 00187FB8  3B E6 00 04 */	addi r31, r6, 4
/* 8018B05C 00187FBC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8018B060 00187FC0  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 8018B064 00187FC4  38 80 00 06 */	li r4, 6
/* 8018B068 00187FC8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8018B06C 00187FCC  7F E3 FB 78 */	mr r3, r31
/* 8018B070 00187FD0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8018B074 00187FD4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8018B078 00187FD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8018B07C 00187FDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8018B080 00187FE0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8018B084 00187FE4  98 01 00 24 */	stb r0, 0x24(r1)
/* 8018B088 00187FE8  4B FA 63 B1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8018B08C 00187FEC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8018B090 00187FF0  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8018B094 00187FF4  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 8018B098 00187FF8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8018B09C 00187FFC  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8018B0A0 00188000  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8018B0A4 00188004  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8018B0A8 00188008  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8018B0AC 0018800C  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8018B0B0 00188010  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8018B0B4 00188014  90 BF 01 34 */	stw r5, 0x134(r31)
/* 8018B0B8 00188018  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8018B0BC 0018801C  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8018B0C0 00188020  88 61 00 24 */	lbz r3, 0x24(r1)
/* 8018B0C4 00188024  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 8018B0C8 00188028  90 81 00 0C */	stw r4, 0xc(r1)
/* 8018B0CC 0018802C  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8018B0D0 00188030  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018B0D4 00188034  48 00 00 A8 */	b lbl_8018B17C
lbl_8018B0D8:
/* 8018B0D8 00188038  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8018B0DC 0018803C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8018B0E0 00188040  2C 00 00 12 */	cmpwi r0, 0x12
/* 8018B0E4 00188044  41 82 00 14 */	beq lbl_8018B0F8
/* 8018B0E8 00188048  38 00 00 03 */	li r0, 3
/* 8018B0EC 0018804C  C0 02 A3 C0 */	lfs f0, lbl_805AC0E0@sda21(r2)
/* 8018B0F0 00188050  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 8018B0F4 00188054  D0 1F 06 38 */	stfs f0, 0x638(r31)
lbl_8018B0F8:
/* 8018B0F8 00188058  A0 1F 06 76 */	lhz r0, 0x676(r31)
/* 8018B0FC 0018805C  7F C3 F3 78 */	mr r3, r30
/* 8018B100 00188060  38 81 00 08 */	addi r4, r1, 8
/* 8018B104 00188064  B0 01 00 08 */	sth r0, 8(r1)
/* 8018B108 00188068  4B EC 14 9D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8018B10C 0018806C  28 03 00 00 */	cmplwi r3, 0
/* 8018B110 00188070  41 82 00 6C */	beq lbl_8018B17C
/* 8018B114 00188074  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8018B118 00188078  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8018B11C 0018807C  40 82 00 60 */	bne lbl_8018B17C
/* 8018B120 00188080  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8018B124 00188084  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8018B128 00188088  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8018B12C 0018808C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8018B130 00188090  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 8018B134 00188094  D0 3F 06 30 */	stfs f1, 0x630(r31)
/* 8018B138 00188098  D0 5F 06 34 */	stfs f2, 0x634(r31)
/* 8018B13C 0018809C  48 00 00 40 */	b lbl_8018B17C
lbl_8018B140:
/* 8018B140 001880A0  48 00 10 75 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018B144 001880A4  2C 03 00 02 */	cmpwi r3, 2
/* 8018B148 001880A8  41 82 00 18 */	beq lbl_8018B160
/* 8018B14C 001880AC  7F E3 FB 78 */	mr r3, r31
/* 8018B150 001880B0  7F C4 F3 78 */	mr r4, r30
/* 8018B154 001880B4  48 00 10 61 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018B158 001880B8  2C 03 00 03 */	cmpwi r3, 3
/* 8018B15C 001880BC  40 82 00 18 */	bne lbl_8018B174
lbl_8018B160:
/* 8018B160 001880C0  88 1F 06 78 */	lbz r0, 0x678(r31)
/* 8018B164 001880C4  7C 00 00 34 */	cntlzw r0, r0
/* 8018B168 001880C8  54 00 D9 7E */	srwi r0, r0, 5
/* 8018B16C 001880CC  98 1F 06 78 */	stb r0, 0x678(r31)
/* 8018B170 001880D0  48 00 00 0C */	b lbl_8018B17C
lbl_8018B174:
/* 8018B174 001880D4  38 00 00 00 */	li r0, 0
/* 8018B178 001880D8  98 1F 06 78 */	stb r0, 0x678(r31)
lbl_8018B17C:
/* 8018B17C 001880DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018B180 001880E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8018B184 001880E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8018B188 001880E8  7C 08 03 A6 */	mtlr r0
/* 8018B18C 001880EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8018B190 001880F0  4E 80 00 20 */	blr 

.global Patrol__13CNewIntroBossFR13CStateManager9EStateMsgf
Patrol__13CNewIntroBossFR13CStateManager9EStateMsgf:
/* 8018B194 001880F4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8018B198 001880F8  7C 08 02 A6 */	mflr r0
/* 8018B19C 001880FC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8018B1A0 00188100  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8018B1A4 00188104  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8018B1A8 00188108  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8018B1AC 0018810C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8018B1B0 00188110  2C 05 00 02 */	cmpwi r5, 2
/* 8018B1B4 00188114  7C 7E 1B 78 */	mr r30, r3
/* 8018B1B8 00188118  7C 9F 23 78 */	mr r31, r4
/* 8018B1BC 0018811C  40 80 01 68 */	bge lbl_8018B324
/* 8018B1C0 00188120  2C 05 00 00 */	cmpwi r5, 0
/* 8018B1C4 00188124  40 80 00 08 */	bge lbl_8018B1CC
/* 8018B1C8 00188128  48 00 01 5C */	b lbl_8018B324
lbl_8018B1CC:
/* 8018B1CC 0018812C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8018B1D0 00188130  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8018B1D4 00188134  4B FA F8 05 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8018B1D8 00188138  C0 3E 06 38 */	lfs f1, 0x638(r30)
/* 8018B1DC 0018813C  C0 02 A3 C8 */	lfs f0, lbl_805AC0E8@sda21(r2)
/* 8018B1E0 00188140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B1E4 00188144  40 81 00 30 */	ble lbl_8018B214
/* 8018B1E8 00188148  7F C4 F3 78 */	mr r4, r30
/* 8018B1EC 0018814C  7F E5 FB 78 */	mr r5, r31
/* 8018B1F0 00188150  38 61 00 20 */	addi r3, r1, 0x20
/* 8018B1F4 00188154  48 00 0A E9 */	bl PlayerPos__13CNewIntroBossCFRC13CStateManager
/* 8018B1F8 00188158  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8018B1FC 0018815C  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 8018B200 00188160  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8018B204 00188164  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 8018B208 00188168  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8018B20C 0018816C  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 8018B210 00188170  48 00 00 60 */	b lbl_8018B270
lbl_8018B214:
/* 8018B214 00188174  EF E1 00 24 */	fdivs f31, f1, f0
/* 8018B218 00188178  7F C4 F3 78 */	mr r4, r30
/* 8018B21C 0018817C  7F E5 FB 78 */	mr r5, r31
/* 8018B220 00188180  38 61 00 14 */	addi r3, r1, 0x14
/* 8018B224 00188184  48 00 0A B9 */	bl PlayerPos__13CNewIntroBossCFRC13CStateManager
/* 8018B228 00188188  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8018B22C 0018818C  C0 9E 06 10 */	lfs f4, 0x610(r30)
/* 8018B230 00188190  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8018B234 00188194  EC 61 20 28 */	fsubs f3, f1, f4
/* 8018B238 00188198  C0 BE 06 14 */	lfs f5, 0x614(r30)
/* 8018B23C 0018819C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8018B240 001881A0  EC 40 28 28 */	fsubs f2, f0, f5
/* 8018B244 001881A4  C0 DE 06 18 */	lfs f6, 0x618(r30)
/* 8018B248 001881A8  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8018B24C 001881AC  EC 61 30 28 */	fsubs f3, f1, f6
/* 8018B250 001881B0  EC 3F 00 B2 */	fmuls f1, f31, f2
/* 8018B254 001881B4  EC 44 00 2A */	fadds f2, f4, f0
/* 8018B258 001881B8  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8018B25C 001881BC  EC 25 08 2A */	fadds f1, f5, f1
/* 8018B260 001881C0  D0 5E 06 2C */	stfs f2, 0x62c(r30)
/* 8018B264 001881C4  EC 06 00 2A */	fadds f0, f6, f0
/* 8018B268 001881C8  D0 3E 06 30 */	stfs f1, 0x630(r30)
/* 8018B26C 001881CC  D0 1E 06 34 */	stfs f0, 0x634(r30)
lbl_8018B270:
/* 8018B270 001881D0  7F C3 F3 78 */	mr r3, r30
/* 8018B274 001881D4  7F E4 FB 78 */	mr r4, r31
/* 8018B278 001881D8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8018B27C 001881DC  C0 22 A3 C0 */	lfs f1, lbl_805AC0E0@sda21(r2)
/* 8018B280 001881E0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8018B284 001881E4  7D 89 03 A6 */	mtctr r12
/* 8018B288 001881E8  4E 80 04 21 */	bctrl 
/* 8018B28C 001881EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018B290 001881F0  41 82 00 94 */	beq lbl_8018B324
/* 8018B294 001881F4  38 00 00 00 */	li r0, 0
/* 8018B298 001881F8  38 61 00 08 */	addi r3, r1, 8
/* 8018B29C 001881FC  90 1E 05 6C */	stw r0, 0x56c(r30)
/* 8018B2A0 00188200  38 81 00 2C */	addi r4, r1, 0x2c
/* 8018B2A4 00188204  C0 3E 06 08 */	lfs f1, 0x608(r30)
/* 8018B2A8 00188208  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8018B2AC 0018820C  C0 7E 06 0C */	lfs f3, 0x60c(r30)
/* 8018B2B0 00188210  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8018B2B4 00188214  EC 81 00 28 */	fsubs f4, f1, f0
/* 8018B2B8 00188218  C0 3E 06 04 */	lfs f1, 0x604(r30)
/* 8018B2BC 0018821C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8018B2C0 00188220  EC 43 10 28 */	fsubs f2, f3, f2
/* 8018B2C4 00188224  EC 01 00 28 */	fsubs f0, f1, f0
/* 8018B2C8 00188228  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8018B2CC 0018822C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8018B2D0 00188230  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8018B2D4 00188234  48 18 95 7D */	bl AsNormalized__9CVector3fCFv
/* 8018B2D8 00188238  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8018B2DC 0018823C  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8018B2E0 00188240  C0 61 00 08 */	lfs f3, 8(r1)
/* 8018B2E4 00188244  38 81 00 38 */	addi r4, r1, 0x38
/* 8018B2E8 00188248  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8018B2EC 0018824C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8018B2F0 00188250  C0 83 00 08 */	lfs f4, 8(r3)
/* 8018B2F4 00188254  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8018B2F8 00188258  C0 02 A3 9C */	lfs f0, lbl_805AC0BC@sda21(r2)
/* 8018B2FC 0018825C  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 8018B300 00188260  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8018B304 00188264  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8018B308 00188268  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8018B30C 0018826C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8018B310 00188270  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8018B314 00188274  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8018B318 00188278  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8018B31C 0018827C  38 63 00 04 */	addi r3, r3, 4
/* 8018B320 00188280  4B FA 63 F9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8018B324:
/* 8018B324 00188284  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8018B328 00188288  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8018B32C 0018828C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8018B330 00188290  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8018B334 00188294  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8018B338 00188298  7C 08 03 A6 */	mtlr r0
/* 8018B33C 0018829C  38 21 00 70 */	addi r1, r1, 0x70
/* 8018B340 001882A0  4E 80 00 20 */	blr 

.global ShouldTurn__13CNewIntroBossFR13CStateManagerf
ShouldTurn__13CNewIntroBossFR13CStateManagerf:
/* 8018B344 001882A4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8018B348 001882A8  7C 08 02 A6 */	mflr r0
/* 8018B34C 001882AC  90 01 00 94 */	stw r0, 0x94(r1)
/* 8018B350 001882B0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8018B354 001882B4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8018B358 001882B8  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8018B35C 001882BC  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8018B360 001882C0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8018B364 001882C4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 8018B368 001882C8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8018B36C 001882CC  80 C4 08 4C */	lwz r6, 0x84c(r4)
/* 8018B370 001882D0  7C 7F 1B 78 */	mr r31, r3
/* 8018B374 001882D4  7C 85 23 78 */	mr r5, r4
/* 8018B378 001882D8  C0 62 A3 9C */	lfs f3, lbl_805AC0BC@sda21(r2)
/* 8018B37C 001882DC  C0 46 01 38 */	lfs f2, 0x138(r6)
/* 8018B380 001882E0  7F E4 FB 78 */	mr r4, r31
/* 8018B384 001882E4  C0 26 01 3C */	lfs f1, 0x13c(r6)
/* 8018B388 001882E8  38 61 00 40 */	addi r3, r1, 0x40
/* 8018B38C 001882EC  C0 06 01 40 */	lfs f0, 0x140(r6)
/* 8018B390 001882F0  EF A3 00 B2 */	fmuls f29, f3, f2
/* 8018B394 001882F4  EF C3 00 72 */	fmuls f30, f3, f1
/* 8018B398 001882F8  EF E3 00 32 */	fmuls f31, f3, f0
/* 8018B39C 001882FC  48 00 09 41 */	bl PlayerPos__13CNewIntroBossCFRC13CStateManager
/* 8018B3A0 00188300  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8018B3A4 00188304  38 61 00 10 */	addi r3, r1, 0x10
/* 8018B3A8 00188308  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8018B3AC 0018830C  EC 00 E8 2A */	fadds f0, f0, f29
/* 8018B3B0 00188310  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8018B3B4 00188314  EC 42 F0 2A */	fadds f2, f2, f30
/* 8018B3B8 00188318  EC 21 F8 2A */	fadds f1, f1, f31
/* 8018B3BC 0018831C  D0 1F 06 04 */	stfs f0, 0x604(r31)
/* 8018B3C0 00188320  D0 5F 06 08 */	stfs f2, 0x608(r31)
/* 8018B3C4 00188324  D0 3F 06 0C */	stfs f1, 0x60c(r31)
/* 8018B3C8 00188328  C0 5F 06 08 */	lfs f2, 0x608(r31)
/* 8018B3CC 0018832C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8018B3D0 00188330  C0 3F 06 04 */	lfs f1, 0x604(r31)
/* 8018B3D4 00188334  EC 42 00 28 */	fsubs f2, f2, f0
/* 8018B3D8 00188338  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8018B3DC 0018833C  C0 7F 06 0C */	lfs f3, 0x60c(r31)
/* 8018B3E0 00188340  EC 21 00 28 */	fsubs f1, f1, f0
/* 8018B3E4 00188344  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8018B3E8 00188348  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8018B3EC 0018834C  EC 03 00 28 */	fsubs f0, f3, f0
/* 8018B3F0 00188350  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8018B3F4 00188354  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8018B3F8 00188358  48 18 8E 09 */	bl __ct__9CVector2fFff
/* 8018B3FC 0018835C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8018B400 00188360  38 61 00 08 */	addi r3, r1, 8
/* 8018B404 00188364  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8018B408 00188368  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8018B40C 0018836C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8018B410 00188370  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8018B414 00188374  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8018B418 00188378  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8018B41C 0018837C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8018B420 00188380  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8018B424 00188384  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8018B428 00188388  48 18 8D D9 */	bl __ct__9CVector2fFff
/* 8018B42C 0018838C  C0 21 00 08 */	lfs f1, 8(r1)
/* 8018B430 00188390  38 61 00 18 */	addi r3, r1, 0x18
/* 8018B434 00188394  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8018B438 00188398  38 81 00 20 */	addi r4, r1, 0x20
/* 8018B43C 0018839C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8018B440 001883A0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8018B444 001883A4  48 18 8B 81 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 8018B448 001883A8  C0 42 A3 CC */	lfs f2, lbl_805AC0EC@sda21(r2)
/* 8018B44C 001883AC  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 8018B450 001883B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8018B454 001883B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B458 001883B8  7C 00 00 26 */	mfcr r0
/* 8018B45C 001883BC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8018B460 001883C0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 8018B464 001883C4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8018B468 001883C8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8018B46C 001883CC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8018B470 001883D0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 8018B474 001883D4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8018B478 001883D8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8018B47C 001883DC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8018B480 001883E0  7C 08 03 A6 */	mtlr r0
/* 8018B484 001883E4  38 21 00 90 */	addi r1, r1, 0x90
/* 8018B488 001883E8  4E 80 00 20 */	blr 

.global Think__13CNewIntroBossFfR13CStateManager
Think__13CNewIntroBossFfR13CStateManager:
/* 8018B48C 001883EC  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 8018B490 001883F0  7C 08 02 A6 */	mflr r0
/* 8018B494 001883F4  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 8018B498 001883F8  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 8018B49C 001883FC  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, qr0
/* 8018B4A0 00188400  BF 41 01 C8 */	stmw r26, 0x1c8(r1)
/* 8018B4A4 00188404  FF E0 08 90 */	fmr f31, f1
/* 8018B4A8 00188408  7C 7D 1B 78 */	mr r29, r3
/* 8018B4AC 0018840C  7C 9E 23 78 */	mr r30, r4
/* 8018B4B0 00188410  4B EE E6 69 */	bl Think__10CPatternedFfR13CStateManager
/* 8018B4B4 00188414  C0 3D 06 38 */	lfs f1, 0x638(r29)
/* 8018B4B8 00188418  C0 02 A3 C8 */	lfs f0, lbl_805AC0E8@sda21(r2)
/* 8018B4BC 0018841C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B4C0 00188420  40 80 00 0C */	bge lbl_8018B4CC
/* 8018B4C4 00188424  EC 01 F8 2A */	fadds f0, f1, f31
/* 8018B4C8 00188428  D0 1D 06 38 */	stfs f0, 0x638(r29)
lbl_8018B4CC:
/* 8018B4CC 0018842C  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8018B4D0 00188430  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8018B4D4 00188434  41 82 00 48 */	beq lbl_8018B51C
/* 8018B4D8 00188438  C0 3D 06 30 */	lfs f1, 0x630(r29)
/* 8018B4DC 0018843C  38 7D 05 74 */	addi r3, r29, 0x574
/* 8018B4E0 00188440  C0 62 A3 C0 */	lfs f3, lbl_805AC0E0@sda21(r2)
/* 8018B4E4 00188444  38 81 00 84 */	addi r4, r1, 0x84
/* 8018B4E8 00188448  C0 1D 06 2C */	lfs f0, 0x62c(r29)
/* 8018B4EC 0018844C  C0 5D 06 34 */	lfs f2, 0x634(r29)
/* 8018B4F0 00188450  EC 81 18 2A */	fadds f4, f1, f3
/* 8018B4F4 00188454  C0 22 A3 D0 */	lfs f1, lbl_805AC0F0@sda21(r2)
/* 8018B4F8 00188458  EC 00 18 2A */	fadds f0, f0, f3
/* 8018B4FC 0018845C  EC 22 08 2A */	fadds f1, f2, f1
/* 8018B500 00188460  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 8018B504 00188464  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8018B508 00188468  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8018B50C 0018846C  4B FE 9C AD */	bl SetTargetPosition__13CBoneTrackingFRC9CVector3f
/* 8018B510 00188470  FC 20 F8 90 */	fmr f1, f31
/* 8018B514 00188474  38 7D 05 74 */	addi r3, r29, 0x574
/* 8018B518 00188478  4B FE A4 91 */	bl Update__13CBoneTrackingFf
lbl_8018B51C:
/* 8018B51C 0018847C  C0 3D 06 3C */	lfs f1, 0x63c(r29)
/* 8018B520 00188480  C0 02 A3 C0 */	lfs f0, lbl_805AC0E0@sda21(r2)
/* 8018B524 00188484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B528 00188488  40 81 00 0C */	ble lbl_8018B534
/* 8018B52C 0018848C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 8018B530 00188490  D0 1D 06 3C */	stfs f0, 0x63c(r29)
lbl_8018B534:
/* 8018B534 00188494  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8018B538 00188498  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8018B53C 0018849C  4B EA 14 C9 */	bl PreRender__9CAnimDataFv
/* 8018B540 001884A0  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8018B544 001884A4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8018B548 001884A8  41 82 00 40 */	beq lbl_8018B588
/* 8018B54C 001884AC  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8018B550 001884B0  7F C4 F3 78 */	mr r4, r30
/* 8018B554 001884B4  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 8018B558 001884B8  38 7D 05 74 */	addi r3, r29, 0x574
/* 8018B55C 001884BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8018B560 001884C0  38 DD 00 34 */	addi r6, r29, 0x34
/* 8018B564 001884C4  38 E1 00 78 */	addi r7, r1, 0x78
/* 8018B568 001884C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8018B56C 001884CC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8018B570 001884D0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8018B574 001884D4  C0 05 00 08 */	lfs f0, 8(r5)
/* 8018B578 001884D8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8018B57C 001884DC  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8018B580 001884E0  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8018B584 001884E4  4B FE A3 8D */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
lbl_8018B588:
/* 8018B588 001884E8  FC 20 F8 90 */	fmr f1, f31
/* 8018B58C 001884EC  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 8018B590 001884F0  7F C4 F3 78 */	mr r4, r30
/* 8018B594 001884F4  38 A0 00 00 */	li r5, 0
/* 8018B598 001884F8  48 01 BE B9 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 8018B59C 001884FC  A0 1D 06 76 */	lhz r0, 0x676(r29)
/* 8018B5A0 00188500  7F C3 F3 78 */	mr r3, r30
/* 8018B5A4 00188504  38 81 00 10 */	addi r4, r1, 0x10
/* 8018B5A8 00188508  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8018B5AC 0018850C  4B EC 0F C9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018B5B0 00188510  7C 7F 1B 79 */	or. r31, r3, r3
/* 8018B5B4 00188514  41 82 01 D0 */	beq lbl_8018B784
/* 8018B5B8 00188518  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8018B5BC 0018851C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8018B5C0 00188520  41 82 01 C4 */	beq lbl_8018B784
/* 8018B5C4 00188524  C0 1D 06 28 */	lfs f0, 0x628(r29)
/* 8018B5C8 00188528  7F A4 EB 78 */	mr r4, r29
/* 8018B5CC 0018852C  38 61 01 30 */	addi r3, r1, 0x130
/* 8018B5D0 00188530  38 BD 05 DC */	addi r5, r29, 0x5dc
/* 8018B5D4 00188534  EC 00 F8 2A */	fadds f0, f0, f31
/* 8018B5D8 00188538  D0 1D 06 28 */	stfs f0, 0x628(r29)
/* 8018B5DC 0018853C  4B EE D3 9D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018B5E0 00188540  38 61 01 90 */	addi r3, r1, 0x190
/* 8018B5E4 00188544  38 81 01 30 */	addi r4, r1, 0x130
/* 8018B5E8 00188548  48 18 75 8D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8018B5EC 0018854C  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8018B5F0 00188550  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8018B5F4 00188554  41 82 01 70 */	beq lbl_8018B764
/* 8018B5F8 00188558  C0 5D 06 28 */	lfs f2, 0x628(r29)
/* 8018B5FC 0018855C  C0 22 A3 A0 */	lfs f1, lbl_805AC0C0@sda21(r2)
/* 8018B600 00188560  C0 0D 8E E4 */	lfs f0, lbl_805A7AA4@sda21(r13)
/* 8018B604 00188564  EC 22 08 24 */	fdivs f1, f2, f1
/* 8018B608 00188568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B60C 0018856C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8018B610 00188570  40 80 00 0C */	bge lbl_8018B61C
/* 8018B614 00188574  38 A1 00 18 */	addi r5, r1, 0x18
/* 8018B618 00188578  48 00 00 08 */	b lbl_8018B620
lbl_8018B61C:
/* 8018B61C 0018857C  38 AD 8E E4 */	addi r5, r13, lbl_805A7AA4@sda21
lbl_8018B620:
/* 8018B620 00188580  C0 3D 06 1C */	lfs f1, 0x61c(r29)
/* 8018B624 00188584  38 61 00 44 */	addi r3, r1, 0x44
/* 8018B628 00188588  C0 FD 06 10 */	lfs f7, 0x610(r29)
/* 8018B62C 0018858C  38 81 00 38 */	addi r4, r1, 0x38
/* 8018B630 00188590  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 8018B634 00188594  C1 3D 06 14 */	lfs f9, 0x614(r29)
/* 8018B638 00188598  EC 81 38 28 */	fsubs f4, f1, f7
/* 8018B63C 0018859C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8018B640 001885A0  EC 60 48 28 */	fsubs f3, f0, f9
/* 8018B644 001885A4  C0 3D 06 24 */	lfs f1, 0x624(r29)
/* 8018B648 001885A8  C1 5D 06 18 */	lfs f10, 0x618(r29)
/* 8018B64C 001885AC  EC 02 01 32 */	fmuls f0, f2, f4
/* 8018B650 001885B0  C0 C2 A3 D4 */	lfs f6, lbl_805AC0F4@sda21(r2)
/* 8018B654 001885B4  EC A1 50 28 */	fsubs f5, f1, f10
/* 8018B658 001885B8  EC 82 00 F2 */	fmuls f4, f2, f3
/* 8018B65C 001885BC  C1 01 01 BC */	lfs f8, 0x1bc(r1)
/* 8018B660 001885C0  EC 27 00 2A */	fadds f1, f7, f0
/* 8018B664 001885C4  C0 61 01 9C */	lfs f3, 0x19c(r1)
/* 8018B668 001885C8  EC 02 01 72 */	fmuls f0, f2, f5
/* 8018B66C 001885CC  C0 41 01 94 */	lfs f2, 0x194(r1)
/* 8018B670 001885D0  EC A1 18 28 */	fsubs f5, f1, f3
/* 8018B674 001885D4  C0 21 01 A4 */	lfs f1, 0x1a4(r1)
/* 8018B678 001885D8  EC 6A 00 2A */	fadds f3, f10, f0
/* 8018B67C 001885DC  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 8018B680 001885E0  EC 89 20 2A */	fadds f4, f9, f4
/* 8018B684 001885E4  C0 E1 01 AC */	lfs f7, 0x1ac(r1)
/* 8018B688 001885E8  EC 63 40 28 */	fsubs f3, f3, f8
/* 8018B68C 001885EC  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8018B690 001885F0  EC 84 38 28 */	fsubs f4, f4, f7
/* 8018B694 001885F4  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8018B698 001885F8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8018B69C 001885FC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8018B6A0 00188600  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8018B6A4 00188604  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8018B6A8 00188608  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8018B6AC 0018860C  48 18 87 25 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 8018B6B0 00188610  7C 7C 1B 78 */	mr r28, r3
/* 8018B6B4 00188614  38 61 00 5C */	addi r3, r1, 0x5c
/* 8018B6B8 00188618  38 81 00 50 */	addi r4, r1, 0x50
/* 8018B6BC 0018861C  48 18 87 15 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 8018B6C0 00188620  7C 64 1B 78 */	mr r4, r3
/* 8018B6C4 00188624  7F 85 E3 78 */	mr r5, r28
/* 8018B6C8 00188628  38 61 00 68 */	addi r3, r1, 0x68
/* 8018B6CC 0018862C  38 C1 00 14 */	addi r6, r1, 0x14
/* 8018B6D0 00188630  48 18 59 51 */	bl ClampedRotateTo__11CQuaternionFRC10UnitVectorRC10UnitVectorRC9CRelAngle
/* 8018B6D4 00188634  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 8018B6D8 00188638  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8018B6DC 0018863C  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8018B6E0 00188640  38 81 01 90 */	addi r4, r1, 0x190
/* 8018B6E4 00188644  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8018B6E8 00188648  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8018B6EC 0018864C  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 8018B6F0 00188650  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8018B6F4 00188654  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 8018B6F8 00188658  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8018B6FC 0018865C  48 18 75 45 */	bl GetRotation__12CTransform4fCFv
/* 8018B700 00188660  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8018B704 00188664  38 81 00 90 */	addi r4, r1, 0x90
/* 8018B708 00188668  48 18 68 B1 */	bl BuildTransform4f__11CQuaternionCFv
/* 8018B70C 0018866C  38 61 01 00 */	addi r3, r1, 0x100
/* 8018B710 00188670  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8018B714 00188674  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 8018B718 00188678  48 18 72 39 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8018B71C 0018867C  38 61 01 60 */	addi r3, r1, 0x160
/* 8018B720 00188680  38 81 01 00 */	addi r4, r1, 0x100
/* 8018B724 00188684  48 18 74 51 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8018B728 00188688  C0 61 01 BC */	lfs f3, 0x1bc(r1)
/* 8018B72C 0018868C  7F E3 FB 78 */	mr r3, r31
/* 8018B730 00188690  C0 41 01 AC */	lfs f2, 0x1ac(r1)
/* 8018B734 00188694  FC 20 F8 90 */	fmr f1, f31
/* 8018B738 00188698  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8018B73C 0018869C  7F C5 F3 78 */	mr r5, r30
/* 8018B740 001886A0  D0 41 01 7C */	stfs f2, 0x17c(r1)
/* 8018B744 001886A4  38 81 01 60 */	addi r4, r1, 0x160
/* 8018B748 001886A8  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 8018B74C 001886AC  D0 61 01 8C */	stfs f3, 0x18c(r1)
/* 8018B750 001886B0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018B754 001886B4  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018B758 001886B8  7D 89 03 A6 */	mtctr r12
/* 8018B75C 001886BC  4E 80 04 21 */	bctrl 
/* 8018B760 001886C0  48 00 00 24 */	b lbl_8018B784
lbl_8018B764:
/* 8018B764 001886C4  7F E3 FB 78 */	mr r3, r31
/* 8018B768 001886C8  FC 20 F8 90 */	fmr f1, f31
/* 8018B76C 001886CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018B770 001886D0  7F C5 F3 78 */	mr r5, r30
/* 8018B774 001886D4  38 81 01 90 */	addi r4, r1, 0x190
/* 8018B778 001886D8  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 8018B77C 001886DC  7D 89 03 A6 */	mtctr r12
/* 8018B780 001886E0  4E 80 04 21 */	bctrl 
lbl_8018B784:
/* 8018B784 001886E4  A0 1D 06 00 */	lhz r0, 0x600(r29)
/* 8018B788 001886E8  7F C3 F3 78 */	mr r3, r30
/* 8018B78C 001886EC  38 81 00 0C */	addi r4, r1, 0xc
/* 8018B790 001886F0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8018B794 001886F4  4B EC 0D E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018B798 001886F8  7C 64 1B 78 */	mr r4, r3
/* 8018B79C 001886FC  38 61 00 24 */	addi r3, r1, 0x24
/* 8018B7A0 00188700  4B F2 3B AD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8018B7A4 00188704  83 63 00 04 */	lwz r27, 4(r3)
/* 8018B7A8 00188708  7F C3 F3 78 */	mr r3, r30
/* 8018B7AC 0018870C  A0 1D 06 02 */	lhz r0, 0x602(r29)
/* 8018B7B0 00188710  38 81 00 08 */	addi r4, r1, 8
/* 8018B7B4 00188714  B0 01 00 08 */	sth r0, 8(r1)
/* 8018B7B8 00188718  4B EC 0D BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018B7BC 0018871C  7C 64 1B 78 */	mr r4, r3
/* 8018B7C0 00188720  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018B7C4 00188724  4B F2 3B 89 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8018B7C8 00188728  28 1B 00 00 */	cmplwi r27, 0
/* 8018B7CC 0018872C  83 43 00 04 */	lwz r26, 4(r3)
/* 8018B7D0 00188730  41 82 01 68 */	beq lbl_8018B938
/* 8018B7D4 00188734  28 1A 00 00 */	cmplwi r26, 0
/* 8018B7D8 00188738  41 82 01 60 */	beq lbl_8018B938
/* 8018B7DC 0018873C  7F 43 D3 78 */	mr r3, r26
/* 8018B7E0 00188740  7F C4 F3 78 */	mr r4, r30
/* 8018B7E4 00188744  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018B7E8 00188748  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B7EC 0018874C  7D 89 03 A6 */	mtctr r12
/* 8018B7F0 00188750  4E 80 04 21 */	bctrl 
/* 8018B7F4 00188754  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8018B7F8 00188758  7F 63 DB 78 */	mr r3, r27
/* 8018B7FC 0018875C  81 9B 00 00 */	lwz r12, 0(r27)
/* 8018B800 00188760  7F C4 F3 78 */	mr r4, r30
/* 8018B804 00188764  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B808 00188768  7D 89 03 A6 */	mtctr r12
/* 8018B80C 0018876C  4E 80 04 21 */	bctrl 
/* 8018B810 00188770  C0 03 00 00 */	lfs f0, 0(r3)
/* 8018B814 00188774  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8018B818 00188778  40 80 00 90 */	bge lbl_8018B8A8
/* 8018B81C 0018877C  7F 63 DB 78 */	mr r3, r27
/* 8018B820 00188780  7F C4 F3 78 */	mr r4, r30
/* 8018B824 00188784  81 9B 00 00 */	lwz r12, 0(r27)
/* 8018B828 00188788  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B82C 0018878C  7D 89 03 A6 */	mtctr r12
/* 8018B830 00188790  4E 80 04 21 */	bctrl 
/* 8018B834 00188794  7C 7C 1B 78 */	mr r28, r3
/* 8018B838 00188798  7F A3 EB 78 */	mr r3, r29
/* 8018B83C 0018879C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018B840 001887A0  7F C4 F3 78 */	mr r4, r30
/* 8018B844 001887A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B848 001887A8  7D 89 03 A6 */	mtctr r12
/* 8018B84C 001887AC  4E 80 04 21 */	bctrl 
/* 8018B850 001887B0  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8018B854 001887B4  7F C4 F3 78 */	mr r4, r30
/* 8018B858 001887B8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018B85C 001887BC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8018B860 001887C0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018B864 001887C4  7F 63 DB 78 */	mr r3, r27
/* 8018B868 001887C8  81 9B 00 00 */	lwz r12, 0(r27)
/* 8018B86C 001887CC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B870 001887D0  7D 89 03 A6 */	mtctr r12
/* 8018B874 001887D4  4E 80 04 21 */	bctrl 
/* 8018B878 001887D8  7C 7C 1B 78 */	mr r28, r3
/* 8018B87C 001887DC  7F 43 D3 78 */	mr r3, r26
/* 8018B880 001887E0  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018B884 001887E4  7F C4 F3 78 */	mr r4, r30
/* 8018B888 001887E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B88C 001887EC  7D 89 03 A6 */	mtctr r12
/* 8018B890 001887F0  4E 80 04 21 */	bctrl 
/* 8018B894 001887F4  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8018B898 001887F8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018B89C 001887FC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8018B8A0 00188800  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018B8A4 00188804  48 00 00 94 */	b lbl_8018B938
lbl_8018B8A8:
/* 8018B8A8 00188808  28 1A 00 00 */	cmplwi r26, 0
/* 8018B8AC 0018880C  41 82 00 8C */	beq lbl_8018B938
/* 8018B8B0 00188810  7F 43 D3 78 */	mr r3, r26
/* 8018B8B4 00188814  7F C4 F3 78 */	mr r4, r30
/* 8018B8B8 00188818  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018B8BC 0018881C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B8C0 00188820  7D 89 03 A6 */	mtctr r12
/* 8018B8C4 00188824  4E 80 04 21 */	bctrl 
/* 8018B8C8 00188828  7C 7C 1B 78 */	mr r28, r3
/* 8018B8CC 0018882C  7F A3 EB 78 */	mr r3, r29
/* 8018B8D0 00188830  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018B8D4 00188834  7F C4 F3 78 */	mr r4, r30
/* 8018B8D8 00188838  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B8DC 0018883C  7D 89 03 A6 */	mtctr r12
/* 8018B8E0 00188840  4E 80 04 21 */	bctrl 
/* 8018B8E4 00188844  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8018B8E8 00188848  7F C4 F3 78 */	mr r4, r30
/* 8018B8EC 0018884C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018B8F0 00188850  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8018B8F4 00188854  D0 03 00 04 */	stfs f0, 4(r3)
/* 8018B8F8 00188858  7F 43 D3 78 */	mr r3, r26
/* 8018B8FC 0018885C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8018B900 00188860  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B904 00188864  7D 89 03 A6 */	mtctr r12
/* 8018B908 00188868  4E 80 04 21 */	bctrl 
/* 8018B90C 0018886C  7C 7C 1B 78 */	mr r28, r3
/* 8018B910 00188870  7F 63 DB 78 */	mr r3, r27
/* 8018B914 00188874  81 9B 00 00 */	lwz r12, 0(r27)
/* 8018B918 00188878  7F C4 F3 78 */	mr r4, r30
/* 8018B91C 0018887C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B920 00188880  7D 89 03 A6 */	mtctr r12
/* 8018B924 00188884  4E 80 04 21 */	bctrl 
/* 8018B928 00188888  C0 1C 00 00 */	lfs f0, 0(r28)
/* 8018B92C 0018888C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8018B930 00188890  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8018B934 00188894  D0 03 00 04 */	stfs f0, 4(r3)
lbl_8018B938:
/* 8018B938 00188898  7F A3 EB 78 */	mr r3, r29
/* 8018B93C 0018889C  7F C4 F3 78 */	mr r4, r30
/* 8018B940 001888A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018B944 001888A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018B948 001888A8  7D 89 03 A6 */	mtctr r12
/* 8018B94C 001888AC  4E 80 04 21 */	bctrl 
/* 8018B950 001888B0  C0 23 00 00 */	lfs f1, 0(r3)
/* 8018B954 001888B4  C0 02 A3 C0 */	lfs f0, lbl_805AC0E0@sda21(r2)
/* 8018B958 001888B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8018B95C 001888BC  4C 40 13 82 */	cror 2, 0, 2
/* 8018B960 001888C0  40 82 00 B8 */	bne lbl_8018BA18
/* 8018B964 001888C4  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8018B968 001888C8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8018B96C 001888CC  41 82 00 AC */	beq lbl_8018BA18
/* 8018B970 001888D0  28 1F 00 00 */	cmplwi r31, 0
/* 8018B974 001888D4  41 82 00 20 */	beq lbl_8018B994
/* 8018B978 001888D8  7F E3 FB 78 */	mr r3, r31
/* 8018B97C 001888DC  7F C4 F3 78 */	mr r4, r30
/* 8018B980 001888E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8018B984 001888E4  38 A0 00 01 */	li r5, 1
/* 8018B988 001888E8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8018B98C 001888EC  7D 89 03 A6 */	mtctr r12
/* 8018B990 001888F0  4E 80 04 21 */	bctrl 
lbl_8018B994:
/* 8018B994 001888F4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8018B998 001888F8  C0 22 A3 9C */	lfs f1, lbl_805AC0BC@sda21(r2)
/* 8018B99C 001888FC  4B FA EE F1 */	bl SetPlaybackRate__15CBodyControllerFf
/* 8018B9A0 00188900  38 7D 00 34 */	addi r3, r29, 0x34
/* 8018B9A4 00188904  38 9D 06 44 */	addi r4, r29, 0x644
/* 8018B9A8 00188908  48 18 71 99 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8018B9AC 0018890C  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8018B9B0 00188910  38 A0 00 01 */	li r5, 1
/* 8018B9B4 00188914  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8018B9B8 00188918  7F A3 EB 78 */	mr r3, r29
/* 8018B9BC 0018891C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8018B9C0 00188920  7F C4 F3 78 */	mr r4, r30
/* 8018B9C4 00188924  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8018B9C8 00188928  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8018B9CC 0018892C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8018B9D0 00188930  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8018B9D4 00188934  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8018B9D8 00188938  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8018B9DC 0018893C  4B FF E4 7D */	bl StopRumble__13CNewIntroBossFR13CStateManager
/* 8018B9E0 00188940  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 8018B9E4 00188944  7F A3 EB 78 */	mr r3, r29
/* 8018B9E8 00188948  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8018B9EC 0018894C  7F C4 F3 78 */	mr r4, r30
/* 8018B9F0 00188950  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8018B9F4 00188954  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8018B9F8 00188958  38 C0 00 14 */	li r6, 0x14
/* 8018B9FC 0018895C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8018BA00 00188960  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8018BA04 00188964  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8018BA08 00188968  81 9D 00 00 */	lwz r12, 0(r29)
/* 8018BA0C 0018896C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8018BA10 00188970  7D 89 03 A6 */	mtctr r12
/* 8018BA14 00188974  4E 80 04 21 */	bctrl 
lbl_8018BA18:
/* 8018BA18 00188978  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, qr0
/* 8018BA1C 0018897C  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 8018BA20 00188980  BB 41 01 C8 */	lmw r26, 0x1c8(r1)
/* 8018BA24 00188984  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8018BA28 00188988  7C 08 03 A6 */	mtlr r0
/* 8018BA2C 0018898C  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 8018BA30 00188990  4E 80 00 20 */	blr 

.global GetTouchBounds__13CNewIntroBossCFv
GetTouchBounds__13CNewIntroBossCFv:
/* 8018BA34 00188994  38 00 00 00 */	li r0, 0
/* 8018BA38 00188998  98 03 00 18 */	stb r0, 0x18(r3)
/* 8018BA3C 0018899C  4E 80 00 20 */	blr 

.global DoUserAnimEvent__13CNewIntroBossFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__13CNewIntroBossFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8018BA40 001889A0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8018BA44 001889A4  7C 08 02 A6 */	mflr r0
/* 8018BA48 001889A8  90 01 01 14 */	stw r0, 0x114(r1)
/* 8018BA4C 001889AC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8018BA50 001889B0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 8018BA54 001889B4  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8018BA58 001889B8  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8018BA5C 001889BC  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8018BA60 001889C0  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 8018BA64 001889C4  7C DF 33 78 */	mr r31, r6
/* 8018BA68 001889C8  FF E0 08 90 */	fmr f31, f1
/* 8018BA6C 001889CC  2C 1F 00 08 */	cmpwi r31, 8
/* 8018BA70 001889D0  7C 7C 1B 78 */	mr r28, r3
/* 8018BA74 001889D4  7C 9D 23 78 */	mr r29, r4
/* 8018BA78 001889D8  7C BE 2B 78 */	mr r30, r5
/* 8018BA7C 001889DC  38 00 00 00 */	li r0, 0
/* 8018BA80 001889E0  41 82 00 20 */	beq lbl_8018BAA0
/* 8018BA84 001889E4  40 80 00 10 */	bge lbl_8018BA94
/* 8018BA88 001889E8  2C 1F 00 00 */	cmpwi r31, 0
/* 8018BA8C 001889EC  41 82 02 08 */	beq lbl_8018BC94
/* 8018BA90 001889F0  48 00 02 04 */	b lbl_8018BC94
lbl_8018BA94:
/* 8018BA94 001889F4  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8018BA98 001889F8  40 80 01 FC */	bge lbl_8018BC94
/* 8018BA9C 001889FC  48 00 01 90 */	b lbl_8018BC2C
lbl_8018BAA0:
/* 8018BAA0 00188A00  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 8018BAA4 00188A04  38 9E 00 3C */	addi r4, r30, 0x3c
/* 8018BAA8 00188A08  48 1B 22 B5 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018BAAC 00188A0C  7F 84 E3 78 */	mr r4, r28
/* 8018BAB0 00188A10  38 61 00 58 */	addi r3, r1, 0x58
/* 8018BAB4 00188A14  38 BC 05 DC */	addi r5, r28, 0x5dc
/* 8018BAB8 00188A18  4B EE CE C1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8018BABC 00188A1C  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8018BAC0 00188A20  38 81 00 58 */	addi r4, r1, 0x58
/* 8018BAC4 00188A24  48 18 70 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8018BAC8 00188A28  7F 84 E3 78 */	mr r4, r28
/* 8018BACC 00188A2C  7F A5 EB 78 */	mr r5, r29
/* 8018BAD0 00188A30  38 61 00 1C */	addi r3, r1, 0x1c
/* 8018BAD4 00188A34  48 00 02 09 */	bl PlayerPos__13CNewIntroBossCFRC13CStateManager
/* 8018BAD8 00188A38  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 8018BADC 00188A3C  7F 83 E3 78 */	mr r3, r28
/* 8018BAE0 00188A40  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8018BAE4 00188A44  7F A4 EB 78 */	mr r4, r29
/* 8018BAE8 00188A48  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8018BAEC 00188A4C  C0 02 A3 C0 */	lfs f0, lbl_805AC0E0@sda21(r2)
/* 8018BAF0 00188A50  D0 9C 06 04 */	stfs f4, 0x604(r28)
/* 8018BAF4 00188A54  D0 5C 06 08 */	stfs f2, 0x608(r28)
/* 8018BAF8 00188A58  D0 7C 06 0C */	stfs f3, 0x60c(r28)
/* 8018BAFC 00188A5C  C0 3C 06 04 */	lfs f1, 0x604(r28)
/* 8018BB00 00188A60  D0 3C 06 10 */	stfs f1, 0x610(r28)
/* 8018BB04 00188A64  C0 3C 06 08 */	lfs f1, 0x608(r28)
/* 8018BB08 00188A68  D0 3C 06 14 */	stfs f1, 0x614(r28)
/* 8018BB0C 00188A6C  C0 3C 06 0C */	lfs f1, 0x60c(r28)
/* 8018BB10 00188A70  D0 3C 06 18 */	stfs f1, 0x618(r28)
/* 8018BB14 00188A74  C0 3C 06 10 */	lfs f1, 0x610(r28)
/* 8018BB18 00188A78  D0 3C 06 2C */	stfs f1, 0x62c(r28)
/* 8018BB1C 00188A7C  C0 3C 06 14 */	lfs f1, 0x614(r28)
/* 8018BB20 00188A80  D0 3C 06 30 */	stfs f1, 0x630(r28)
/* 8018BB24 00188A84  C0 3C 06 18 */	lfs f1, 0x618(r28)
/* 8018BB28 00188A88  D0 3C 06 34 */	stfs f1, 0x634(r28)
/* 8018BB2C 00188A8C  D0 9C 06 1C */	stfs f4, 0x61c(r28)
/* 8018BB30 00188A90  D0 5C 06 20 */	stfs f2, 0x620(r28)
/* 8018BB34 00188A94  D0 7C 06 24 */	stfs f3, 0x624(r28)
/* 8018BB38 00188A98  D0 1C 06 28 */	stfs f0, 0x628(r28)
/* 8018BB3C 00188A9C  48 00 06 79 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018BB40 00188AA0  2C 03 00 03 */	cmpwi r3, 3
/* 8018BB44 00188AA4  40 82 00 10 */	bne lbl_8018BB54
/* 8018BB48 00188AA8  A0 1C 05 D8 */	lhz r0, 0x5d8(r28)
/* 8018BB4C 00188AAC  B0 1C 06 76 */	sth r0, 0x676(r28)
/* 8018BB50 00188AB0  48 00 00 2C */	b lbl_8018BB7C
lbl_8018BB54:
/* 8018BB54 00188AB4  7F 83 E3 78 */	mr r3, r28
/* 8018BB58 00188AB8  7F A4 EB 78 */	mr r4, r29
/* 8018BB5C 00188ABC  48 00 06 59 */	bl GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
/* 8018BB60 00188AC0  2C 03 00 02 */	cmpwi r3, 2
/* 8018BB64 00188AC4  40 82 00 10 */	bne lbl_8018BB74
/* 8018BB68 00188AC8  A0 1C 05 D6 */	lhz r0, 0x5d6(r28)
/* 8018BB6C 00188ACC  B0 1C 06 76 */	sth r0, 0x676(r28)
/* 8018BB70 00188AD0  48 00 00 0C */	b lbl_8018BB7C
lbl_8018BB74:
/* 8018BB74 00188AD4  A0 1C 05 D4 */	lhz r0, 0x5d4(r28)
/* 8018BB78 00188AD8  B0 1C 06 76 */	sth r0, 0x676(r28)
lbl_8018BB7C:
/* 8018BB7C 00188ADC  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 8018BB80 00188AE0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 8018BB84 00188AE4  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 8018BB88 00188AE8  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 8018BB8C 00188AEC  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 8018BB90 00188AF0  38 61 00 28 */	addi r3, r1, 0x28
/* 8018BB94 00188AF4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8018BB98 00188AF8  38 81 00 10 */	addi r4, r1, 0x10
/* 8018BB9C 00188AFC  38 BC 06 10 */	addi r5, r28, 0x610
/* 8018BBA0 00188B00  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8018BBA4 00188B04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8018BBA8 00188B08  48 18 7F 69 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8018BBAC 00188B0C  38 61 00 88 */	addi r3, r1, 0x88
/* 8018BBB0 00188B10  38 81 00 28 */	addi r4, r1, 0x28
/* 8018BBB4 00188B14  48 18 6F C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8018BBB8 00188B18  A0 1C 06 76 */	lhz r0, 0x676(r28)
/* 8018BBBC 00188B1C  7F A3 EB 78 */	mr r3, r29
/* 8018BBC0 00188B20  38 81 00 0C */	addi r4, r1, 0xc
/* 8018BBC4 00188B24  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8018BBC8 00188B28  4B EC 09 AD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018BBCC 00188B2C  28 03 00 00 */	cmplwi r3, 0
/* 8018BBD0 00188B30  41 82 00 54 */	beq lbl_8018BC24
/* 8018BBD4 00188B34  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8018BBD8 00188B38  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8018BBDC 00188B3C  40 82 00 48 */	bne lbl_8018BC24
/* 8018BBE0 00188B40  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BBE4 00188B44  7F A5 EB 78 */	mr r5, r29
/* 8018BBE8 00188B48  38 81 00 88 */	addi r4, r1, 0x88
/* 8018BBEC 00188B4C  38 C0 00 00 */	li r6, 0
/* 8018BBF0 00188B50  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8018BBF4 00188B54  7D 89 03 A6 */	mtctr r12
/* 8018BBF8 00188B58  4E 80 04 21 */	bctrl 
/* 8018BBFC 00188B5C  A8 1C 06 74 */	lha r0, 0x674(r28)
/* 8018BC00 00188B60  2C 00 FF FF */	cmpwi r0, -1
/* 8018BC04 00188B64  40 82 00 20 */	bne lbl_8018BC24
/* 8018BC08 00188B68  80 7D 08 8C */	lwz r3, 0x88c(r29)
/* 8018BC0C 00188B6C  7F A4 EB 78 */	mr r4, r29
/* 8018BC10 00188B70  C0 22 A3 9C */	lfs f1, lbl_805AC0BC@sda21(r2)
/* 8018BC14 00188B74  38 A0 00 13 */	li r5, 0x13
/* 8018BC18 00188B78  38 C0 00 02 */	li r6, 2
/* 8018BC1C 00188B7C  48 0A 26 29 */	bl Rumble__14CRumbleManagerFR13CStateManager11ERumbleFxIdf15ERumblePriority
/* 8018BC20 00188B80  B0 7C 06 74 */	sth r3, 0x674(r28)
lbl_8018BC24:
/* 8018BC24 00188B84  38 00 00 01 */	li r0, 1
/* 8018BC28 00188B88  48 00 00 6C */	b lbl_8018BC94
lbl_8018BC2C:
/* 8018BC2C 00188B8C  A0 1C 06 76 */	lhz r0, 0x676(r28)
/* 8018BC30 00188B90  7F A3 EB 78 */	mr r3, r29
/* 8018BC34 00188B94  38 81 00 08 */	addi r4, r1, 8
/* 8018BC38 00188B98  B0 01 00 08 */	sth r0, 8(r1)
/* 8018BC3C 00188B9C  4B EC 09 39 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8018BC40 00188BA0  28 03 00 00 */	cmplwi r3, 0
/* 8018BC44 00188BA4  41 82 00 1C */	beq lbl_8018BC60
/* 8018BC48 00188BA8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018BC4C 00188BAC  7F A4 EB 78 */	mr r4, r29
/* 8018BC50 00188BB0  38 A0 00 00 */	li r5, 0
/* 8018BC54 00188BB4  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8018BC58 00188BB8  7D 89 03 A6 */	mtctr r12
/* 8018BC5C 00188BBC  4E 80 04 21 */	bctrl 
lbl_8018BC60:
/* 8018BC60 00188BC0  7F 83 E3 78 */	mr r3, r28
/* 8018BC64 00188BC4  7F A4 EB 78 */	mr r4, r29
/* 8018BC68 00188BC8  4B FF E1 F1 */	bl StopRumble__13CNewIntroBossFR13CStateManager
/* 8018BC6C 00188BCC  7F 83 E3 78 */	mr r3, r28
/* 8018BC70 00188BD0  7F A4 EB 78 */	mr r4, r29
/* 8018BC74 00188BD4  48 00 04 31 */	bl GetNextAttackTime__13CNewIntroBossCFR13CStateManager
/* 8018BC78 00188BD8  D0 3C 06 3C */	stfs f1, 0x63c(r28)
/* 8018BC7C 00188BDC  7F 83 E3 78 */	mr r3, r28
/* 8018BC80 00188BE0  7F A5 EB 78 */	mr r5, r29
/* 8018BC84 00188BE4  38 80 00 0A */	li r4, 0xa
/* 8018BC88 00188BE8  38 C0 FF FF */	li r6, -1
/* 8018BC8C 00188BEC  4B EC 54 35 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8018BC90 00188BF0  38 00 00 01 */	li r0, 1
lbl_8018BC94:
/* 8018BC94 00188BF4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8018BC98 00188BF8  40 82 00 1C */	bne lbl_8018BCB4
/* 8018BC9C 00188BFC  FC 20 F8 90 */	fmr f1, f31
/* 8018BCA0 00188C00  7F 83 E3 78 */	mr r3, r28
/* 8018BCA4 00188C04  7F A4 EB 78 */	mr r4, r29
/* 8018BCA8 00188C08  7F C5 F3 78 */	mr r5, r30
/* 8018BCAC 00188C0C  7F E6 FB 78 */	mr r6, r31
/* 8018BCB0 00188C10  4B EE D2 01 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8018BCB4:
/* 8018BCB4 00188C14  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 8018BCB8 00188C18  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8018BCBC 00188C1C  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8018BCC0 00188C20  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8018BCC4 00188C24  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 8018BCC8 00188C28  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 8018BCCC 00188C2C  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 8018BCD0 00188C30  7C 08 03 A6 */	mtlr r0
/* 8018BCD4 00188C34  38 21 01 10 */	addi r1, r1, 0x110
/* 8018BCD8 00188C38  4E 80 00 20 */	blr 

.global PlayerPos__13CNewIntroBossCFRC13CStateManager
PlayerPos__13CNewIntroBossCFRC13CStateManager:
/* 8018BCDC 00188C3C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8018BCE0 00188C40  7C 08 02 A6 */	mflr r0
/* 8018BCE4 00188C44  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8018BCE8 00188C48  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8018BCEC 00188C4C  7C BF 2B 78 */	mr r31, r5
/* 8018BCF0 00188C50  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8018BCF4 00188C54  7C 7E 1B 78 */	mr r30, r3
/* 8018BCF8 00188C58  80 65 08 4C */	lwz r3, 0x84c(r5)
/* 8018BCFC 00188C5C  48 0F 90 E5 */	bl GetEyeHeight__7CPlayerCFv
/* 8018BD00 00188C60  C0 02 A3 8C */	lfs f0, lbl_805AC0AC@sda21(r2)
/* 8018BD04 00188C64  38 60 00 00 */	li r3, 0
/* 8018BD08 00188C68  80 DF 08 4C */	lwz r6, 0x84c(r31)
/* 8018BD0C 00188C6C  38 80 00 01 */	li r4, 1
/* 8018BD10 00188C70  EC 81 00 32 */	fmuls f4, f1, f0
/* 8018BD14 00188C74  C0 42 A3 C0 */	lfs f2, lbl_805AC0E0@sda21(r2)
/* 8018BD18 00188C78  C0 26 00 60 */	lfs f1, 0x60(r6)
/* 8018BD1C 00188C7C  C0 66 00 50 */	lfs f3, 0x50(r6)
/* 8018BD20 00188C80  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 8018BD24 00188C84  EC 21 20 2A */	fadds f1, f1, f4
/* 8018BD28 00188C88  EC 63 10 2A */	fadds f3, f3, f2
/* 8018BD2C 00188C8C  80 AD 8E E0 */	lwz r5, lbl_805A7AA0@sda21(r13)
/* 8018BD30 00188C90  EC 00 10 2A */	fadds f0, f0, f2
/* 8018BD34 00188C94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8018BD38 00188C98  D0 01 00 08 */	stfs f0, 8(r1)
/* 8018BD3C 00188C9C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8018BD40 00188CA0  48 1F E1 B5 */	bl __shl2i
/* 8018BD44 00188CA4  39 00 00 00 */	li r8, 0
/* 8018BD48 00188CA8  38 00 00 01 */	li r0, 1
/* 8018BD4C 00188CAC  3C A0 80 5A */	lis r5, lbl_805A6700@ha
/* 8018BD50 00188CB0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8018BD54 00188CB4  38 C5 67 00 */	addi r6, r5, lbl_805A6700@l
/* 8018BD58 00188CB8  C0 22 A3 D8 */	lfs f1, lbl_805AC0F8@sda21(r2)
/* 8018BD5C 00188CBC  90 61 00 18 */	stw r3, 0x18(r1)
/* 8018BD60 00188CC0  7F E4 FB 78 */	mr r4, r31
/* 8018BD64 00188CC4  38 61 00 30 */	addi r3, r1, 0x30
/* 8018BD68 00188CC8  38 A1 00 08 */	addi r5, r1, 8
/* 8018BD6C 00188CCC  91 01 00 24 */	stw r8, 0x24(r1)
/* 8018BD70 00188CD0  38 E1 00 18 */	addi r7, r1, 0x18
/* 8018BD74 00188CD4  91 01 00 20 */	stw r8, 0x20(r1)
/* 8018BD78 00188CD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8018BD7C 00188CDC  4B FF 8A 8D */	bl RayStaticIntersection__14CGameCollisionFRC13CStateManagerRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8018BD80 00188CE0  88 81 00 50 */	lbz r4, 0x50(r1)
/* 8018BD84 00188CE4  C0 E1 00 30 */	lfs f7, 0x30(r1)
/* 8018BD88 00188CE8  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 8018BD8C 00188CEC  28 04 00 00 */	cmplwi r4, 0
/* 8018BD90 00188CF0  C0 A1 00 38 */	lfs f5, 0x38(r1)
/* 8018BD94 00188CF4  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 8018BD98 00188CF8  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 8018BD9C 00188CFC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 8018BDA0 00188D00  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8018BDA4 00188D04  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8018BDA8 00188D08  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8018BDAC 00188D0C  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 8018BDB0 00188D10  D0 E1 00 60 */	stfs f7, 0x60(r1)
/* 8018BDB4 00188D14  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 8018BDB8 00188D18  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 8018BDBC 00188D1C  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 8018BDC0 00188D20  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 8018BDC4 00188D24  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8018BDC8 00188D28  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8018BDCC 00188D2C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8018BDD0 00188D30  98 81 00 80 */	stb r4, 0x80(r1)
/* 8018BDD4 00188D34  90 61 00 8C */	stw r3, 0x8c(r1)
/* 8018BDD8 00188D38  90 01 00 88 */	stw r0, 0x88(r1)
/* 8018BDDC 00188D3C  40 82 00 48 */	bne lbl_8018BE24
/* 8018BDE0 00188D40  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8018BDE4 00188D44  48 0F 8F FD */	bl GetEyeHeight__7CPlayerCFv
/* 8018BDE8 00188D48  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8018BDEC 00188D4C  C0 62 A3 C0 */	lfs f3, lbl_805AC0E0@sda21(r2)
/* 8018BDF0 00188D50  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8018BDF4 00188D54  C0 C2 A3 8C */	lfs f6, lbl_805AC0AC@sda21(r2)
/* 8018BDF8 00188D58  C0 A2 A3 C8 */	lfs f5, lbl_805AC0E8@sda21(r2)
/* 8018BDFC 00188D5C  EC 00 18 2A */	fadds f0, f0, f3
/* 8018BE00 00188D60  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8018BE04 00188D64  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8018BE08 00188D68  EC A1 29 BA */	fmadds f5, f1, f6, f5
/* 8018BE0C 00188D6C  EC 24 18 2A */	fadds f1, f4, f3
/* 8018BE10 00188D70  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8018BE14 00188D74  EC 02 28 2A */	fadds f0, f2, f5
/* 8018BE18 00188D78  D0 3E 00 04 */	stfs f1, 4(r30)
/* 8018BE1C 00188D7C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8018BE20 00188D80  48 00 00 40 */	b lbl_8018BE60
lbl_8018BE24:
/* 8018BE24 00188D84  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8018BE28 00188D88  48 0F 8F B9 */	bl GetEyeHeight__7CPlayerCFv
/* 8018BE2C 00188D8C  C0 42 A3 C0 */	lfs f2, lbl_805AC0E0@sda21(r2)
/* 8018BE30 00188D90  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8018BE34 00188D94  C0 61 00 68 */	lfs f3, 0x68(r1)
/* 8018BE38 00188D98  EC 00 10 2A */	fadds f0, f0, f2
/* 8018BE3C 00188D9C  C0 A2 A3 8C */	lfs f5, lbl_805AC0AC@sda21(r2)
/* 8018BE40 00188DA0  C0 82 A3 C8 */	lfs f4, lbl_805AC0E8@sda21(r2)
/* 8018BE44 00188DA4  EC 63 10 2A */	fadds f3, f3, f2
/* 8018BE48 00188DA8  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8018BE4C 00188DAC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8018BE50 00188DB0  EC 21 21 7A */	fmadds f1, f1, f5, f4
/* 8018BE54 00188DB4  D0 7E 00 04 */	stfs f3, 4(r30)
/* 8018BE58 00188DB8  EC 02 08 2A */	fadds f0, f2, f1
/* 8018BE5C 00188DBC  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_8018BE60:
/* 8018BE60 00188DC0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8018BE64 00188DC4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8018BE68 00188DC8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8018BE6C 00188DCC  7C 08 03 A6 */	mtlr r0
/* 8018BE70 00188DD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8018BE74 00188DD4  4E 80 00 20 */	blr 

.global ProjectileInfo__13CNewIntroBossFv
ProjectileInfo__13CNewIntroBossFv:
/* 8018BE78 00188DD8  38 63 05 AC */	addi r3, r3, 0x5ac
/* 8018BE7C 00188DDC  4E 80 00 20 */	blr 

.global "__ct__13CNewIntroBossF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersfUiRC11CDamageInfoUiUiUiUi"
"__ct__13CNewIntroBossF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersfUiRC11CDamageInfoUiUiUiUi":
/* 8018BE80 00188DE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8018BE84 00188DE4  7C 08 02 A6 */	mflr r0
/* 8018BE88 00188DE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8018BE8C 00188DEC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8018BE90 00188DF0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8018BE94 00188DF4  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 8018BE98 00188DF8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8018BE9C 00188DFC  7C C4 33 78 */	mr r4, r6
/* 8018BEA0 00188E00  7C F9 3B 78 */	mr r25, r7
/* 8018BEA4 00188E04  7D 07 43 78 */	mr r7, r8
/* 8018BEA8 00188E08  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8018BEAC 00188E0C  7C A6 2B 78 */	mr r6, r5
/* 8018BEB0 00188E10  7C 88 23 78 */	mr r8, r4
/* 8018BEB4 00188E14  39 60 00 01 */	li r11, 1
/* 8018BEB8 00188E18  91 21 00 08 */	stw r9, 8(r1)
/* 8018BEBC 00188E1C  38 00 00 02 */	li r0, 2
/* 8018BEC0 00188E20  FF E0 08 90 */	fmr f31, f1
/* 8018BEC4 00188E24  83 41 00 78 */	lwz r26, 0x78(r1)
/* 8018BEC8 00188E28  91 61 00 0C */	stw r11, 0xc(r1)
/* 8018BECC 00188E2C  7C 78 1B 78 */	mr r24, r3
/* 8018BED0 00188E30  83 61 00 7C */	lwz r27, 0x7c(r1)
/* 8018BED4 00188E34  7F 29 CB 78 */	mr r9, r25
/* 8018BED8 00188E38  91 61 00 10 */	stw r11, 0x10(r1)
/* 8018BEDC 00188E3C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8018BEE0 00188E40  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8018BEE4 00188E44  38 80 00 17 */	li r4, 0x17
/* 8018BEE8 00188E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018BEEC 00188E4C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8018BEF0 00188E50  91 41 00 18 */	stw r10, 0x18(r1)
/* 8018BEF4 00188E54  7C EA 3B 78 */	mr r10, r7
/* 8018BEF8 00188E58  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8018BEFC 00188E5C  38 E0 00 00 */	li r7, 0
/* 8018BF00 00188E60  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8018BF04 00188E64  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8018BF08 00188E68  4B EF 15 49 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8018BF0C 00188E6C  3C 80 80 3E */	lis r4, lbl_803E4018@ha
/* 8018BF10 00188E70  3C 60 80 3D */	lis r3, lbl_803D07E4@ha
/* 8018BF14 00188E74  38 04 40 18 */	addi r0, r4, lbl_803E4018@l
/* 8018BF18 00188E78  38 A0 00 01 */	li r5, 1
/* 8018BF1C 00188E7C  90 18 00 00 */	stw r0, 0(r24)
/* 8018BF20 00188E80  38 83 07 E4 */	addi r4, r3, lbl_803D07E4@l
/* 8018BF24 00188E84  38 00 00 00 */	li r0, 0
/* 8018BF28 00188E88  38 61 00 24 */	addi r3, r1, 0x24
/* 8018BF2C 00188E8C  90 B8 05 68 */	stw r5, 0x568(r24)
/* 8018BF30 00188E90  38 84 00 D9 */	addi r4, r4, 0xd9
/* 8018BF34 00188E94  90 18 05 6C */	stw r0, 0x56c(r24)
/* 8018BF38 00188E98  D3 F8 05 70 */	stfs f31, 0x570(r24)
/* 8018BF3C 00188E9C  4B E7 8D 7D */	bl string_l__4rstlFPCc
/* 8018BF40 00188EA0  80 98 00 64 */	lwz r4, 0x64(r24)
/* 8018BF44 00188EA4  38 78 05 74 */	addi r3, r24, 0x574
/* 8018BF48 00188EA8  C0 22 A3 DC */	lfs f1, lbl_805AC0FC@sda21(r2)
/* 8018BF4C 00188EAC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8018BF50 00188EB0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8018BF54 00188EB4  38 C0 00 00 */	li r6, 0
/* 8018BF58 00188EB8  C0 42 A3 E0 */	lfs f2, lbl_805AC100@sda21(r2)
/* 8018BF5C 00188EBC  4B FE 9A 5D */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 8018BF60 00188EC0  38 61 00 24 */	addi r3, r1, 0x24
/* 8018BF64 00188EC4  48 1B 1B 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8018BF68 00188EC8  7F 44 D3 78 */	mr r4, r26
/* 8018BF6C 00188ECC  7F 65 DB 78 */	mr r5, r27
/* 8018BF70 00188ED0  38 78 05 AC */	addi r3, r24, 0x5ac
/* 8018BF74 00188ED4  48 09 01 35 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8018BF78 00188ED8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8018BF7C 00188EDC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8018BF80 00188EE0  38 CD A9 18 */	addi r6, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8018BF84 00188EE4  38 00 00 00 */	li r0, 0
/* 8018BF88 00188EE8  B0 98 05 D4 */	sth r4, 0x5d4(r24)
/* 8018BF8C 00188EEC  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 8018BF90 00188EF0  C0 62 A3 C0 */	lfs f3, lbl_805AC0E0@sda21(r2)
/* 8018BF94 00188EF4  7F 24 CB 78 */	mr r4, r25
/* 8018BF98 00188EF8  A0 ED A3 8C */	lhz r7, kInvalidUniqueId@sda21(r13)
/* 8018BF9C 00188EFC  38 78 06 44 */	addi r3, r24, 0x644
/* 8018BFA0 00188F00  C0 22 A3 C8 */	lfs f1, lbl_805AC0E8@sda21(r2)
/* 8018BFA4 00188F04  B0 F8 05 D6 */	sth r7, 0x5d6(r24)
/* 8018BFA8 00188F08  C0 02 A3 AC */	lfs f0, lbl_805AC0CC@sda21(r2)
/* 8018BFAC 00188F0C  A0 ED A3 8C */	lhz r7, kInvalidUniqueId@sda21(r13)
/* 8018BFB0 00188F10  B0 F8 05 D8 */	sth r7, 0x5d8(r24)
/* 8018BFB4 00188F14  90 D8 05 DC */	stw r6, 0x5dc(r24)
/* 8018BFB8 00188F18  90 18 05 E0 */	stw r0, 0x5e0(r24)
/* 8018BFBC 00188F1C  90 18 05 E4 */	stw r0, 0x5e4(r24)
/* 8018BFC0 00188F20  90 18 05 EC */	stw r0, 0x5ec(r24)
/* 8018BFC4 00188F24  93 98 05 F0 */	stw r28, 0x5f0(r24)
/* 8018BFC8 00188F28  93 B8 05 F4 */	stw r29, 0x5f4(r24)
/* 8018BFCC 00188F2C  93 D8 05 F8 */	stw r30, 0x5f8(r24)
/* 8018BFD0 00188F30  93 F8 05 FC */	stw r31, 0x5fc(r24)
/* 8018BFD4 00188F34  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8018BFD8 00188F38  B0 18 06 00 */	sth r0, 0x600(r24)
/* 8018BFDC 00188F3C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8018BFE0 00188F40  B0 18 06 02 */	sth r0, 0x602(r24)
/* 8018BFE4 00188F44  C0 45 00 00 */	lfs f2, 0(r5)
/* 8018BFE8 00188F48  D0 58 06 04 */	stfs f2, 0x604(r24)
/* 8018BFEC 00188F4C  C0 45 00 04 */	lfs f2, 4(r5)
/* 8018BFF0 00188F50  D0 58 06 08 */	stfs f2, 0x608(r24)
/* 8018BFF4 00188F54  C0 45 00 08 */	lfs f2, 8(r5)
/* 8018BFF8 00188F58  D0 58 06 0C */	stfs f2, 0x60c(r24)
/* 8018BFFC 00188F5C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8018C000 00188F60  D0 58 06 10 */	stfs f2, 0x610(r24)
/* 8018C004 00188F64  C0 45 00 04 */	lfs f2, 4(r5)
/* 8018C008 00188F68  D0 58 06 14 */	stfs f2, 0x614(r24)
/* 8018C00C 00188F6C  C0 45 00 08 */	lfs f2, 8(r5)
/* 8018C010 00188F70  D0 58 06 18 */	stfs f2, 0x618(r24)
/* 8018C014 00188F74  C0 45 00 00 */	lfs f2, 0(r5)
/* 8018C018 00188F78  D0 58 06 1C */	stfs f2, 0x61c(r24)
/* 8018C01C 00188F7C  C0 45 00 04 */	lfs f2, 4(r5)
/* 8018C020 00188F80  D0 58 06 20 */	stfs f2, 0x620(r24)
/* 8018C024 00188F84  C0 45 00 08 */	lfs f2, 8(r5)
/* 8018C028 00188F88  D0 58 06 24 */	stfs f2, 0x624(r24)
/* 8018C02C 00188F8C  D0 78 06 28 */	stfs f3, 0x628(r24)
/* 8018C030 00188F90  C0 45 00 00 */	lfs f2, 0(r5)
/* 8018C034 00188F94  D0 58 06 2C */	stfs f2, 0x62c(r24)
/* 8018C038 00188F98  C0 45 00 04 */	lfs f2, 4(r5)
/* 8018C03C 00188F9C  D0 58 06 30 */	stfs f2, 0x630(r24)
/* 8018C040 00188FA0  C0 45 00 08 */	lfs f2, 8(r5)
/* 8018C044 00188FA4  D0 58 06 34 */	stfs f2, 0x634(r24)
/* 8018C048 00188FA8  D0 38 06 38 */	stfs f1, 0x638(r24)
/* 8018C04C 00188FAC  D0 18 06 3C */	stfs f0, 0x63c(r24)
/* 8018C050 00188FB0  D0 78 06 40 */	stfs f3, 0x640(r24)
/* 8018C054 00188FB4  48 18 6B 21 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8018C058 00188FB8  38 60 FF FF */	li r3, -1
/* 8018C05C 00188FBC  38 00 00 00 */	li r0, 0
/* 8018C060 00188FC0  B0 78 06 74 */	sth r3, 0x674(r24)
/* 8018C064 00188FC4  38 78 05 AC */	addi r3, r24, 0x5ac
/* 8018C068 00188FC8  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8018C06C 00188FCC  B0 98 06 76 */	sth r4, 0x676(r24)
/* 8018C070 00188FD0  98 18 06 78 */	stb r0, 0x678(r24)
/* 8018C074 00188FD4  48 1B 4D 11 */	bl Lock__6CTokenFv
/* 8018C078 00188FD8  38 78 05 74 */	addi r3, r24, 0x574
/* 8018C07C 00188FDC  38 80 00 01 */	li r4, 1
/* 8018C080 00188FE0  4B FE 91 A5 */	bl SetActive__13CBoneTrackingFb
/* 8018C084 00188FE4  7F 03 C3 78 */	mr r3, r24
/* 8018C088 00188FE8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8018C08C 00188FEC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8018C090 00188FF0  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 8018C094 00188FF4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8018C098 00188FF8  7C 08 03 A6 */	mtlr r0
/* 8018C09C 00188FFC  38 21 00 70 */	addi r1, r1, 0x70
/* 8018C0A0 00189000  4E 80 00 20 */	blr 

.global GetNextAttackTime__13CNewIntroBossCFR13CStateManager
GetNextAttackTime__13CNewIntroBossCFR13CStateManager:
/* 8018C0A4 00189004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018C0A8 00189008  7C 08 02 A6 */	mflr r0
/* 8018C0AC 0018900C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018C0B0 00189010  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8018C0B4 00189014  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8018C0B8 00189018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018C0BC 0018901C  93 C1 00 08 */	stw r30, 8(r1)
/* 8018C0C0 00189020  7C 9F 23 78 */	mr r31, r4
/* 8018C0C4 00189024  7C 7E 1B 78 */	mr r30, r3
/* 8018C0C8 00189028  80 64 09 00 */	lwz r3, 0x900(r4)
/* 8018C0CC 0018902C  48 18 64 11 */	bl Float__9CRandom16Fv
/* 8018C0D0 00189030  7F C3 F3 78 */	mr r3, r30
/* 8018C0D4 00189034  C0 42 A3 B4 */	lfs f2, lbl_805AC0D4@sda21(r2)
/* 8018C0D8 00189038  81 9E 00 00 */	lwz r12, 0(r30)
/* 8018C0DC 0018903C  7F E4 FB 78 */	mr r4, r31
/* 8018C0E0 00189040  C0 02 A3 E4 */	lfs f0, lbl_805AC104@sda21(r2)
/* 8018C0E4 00189044  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018C0E8 00189048  EF E2 00 7A */	fmadds f31, f2, f1, f0
/* 8018C0EC 0018904C  7D 89 03 A6 */	mtctr r12
/* 8018C0F0 00189050  4E 80 04 21 */	bctrl 
/* 8018C0F4 00189054  C0 02 A3 E8 */	lfs f0, lbl_805AC108@sda21(r2)
/* 8018C0F8 00189058  C0 3E 06 40 */	lfs f1, 0x640(r30)
/* 8018C0FC 0018905C  C0 43 00 00 */	lfs f2, 0(r3)
/* 8018C100 00189060  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018C104 00189064  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018C108 00189068  40 81 00 0C */	ble lbl_8018C114
/* 8018C10C 0018906C  FC 20 F8 90 */	fmr f1, f31
/* 8018C110 00189070  48 00 00 28 */	b lbl_8018C138
lbl_8018C114:
/* 8018C114 00189074  C0 02 A3 F4 */	lfs f0, lbl_805AC114@sda21(r2)
/* 8018C118 00189078  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018C11C 0018907C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018C120 00189080  40 81 00 10 */	ble lbl_8018C130
/* 8018C124 00189084  C0 02 A3 EC */	lfs f0, lbl_805AC10C@sda21(r2)
/* 8018C128 00189088  EC 20 FF FC */	fnmsubs f1, f0, f31, f31
/* 8018C12C 0018908C  48 00 00 0C */	b lbl_8018C138
lbl_8018C130:
/* 8018C130 00189090  C0 02 A3 F0 */	lfs f0, lbl_805AC110@sda21(r2)
/* 8018C134 00189094  EC 20 FF FC */	fnmsubs f1, f0, f31, f31
lbl_8018C138:
/* 8018C138 00189098  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8018C13C 0018909C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018C140 001890A0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8018C144 001890A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018C148 001890A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018C14C 001890AC  7C 08 03 A6 */	mtlr r0
/* 8018C150 001890B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018C154 001890B4  4E 80 00 20 */	blr 

.global GetGenerateForHealth__13CNewIntroBossCFRC13CStateManager
GetGenerateForHealth__13CNewIntroBossCFRC13CStateManager:
/* 8018C158 001890B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018C15C 001890BC  7C 08 02 A6 */	mflr r0
/* 8018C160 001890C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018C164 001890C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018C168 001890C8  7C 7F 1B 78 */	mr r31, r3
/* 8018C16C 001890CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C170 001890D0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018C174 001890D4  7D 89 03 A6 */	mtctr r12
/* 8018C178 001890D8  4E 80 04 21 */	bctrl 
/* 8018C17C 001890DC  C0 22 A3 F4 */	lfs f1, lbl_805AC114@sda21(r2)
/* 8018C180 001890E0  C0 1F 06 40 */	lfs f0, 0x640(r31)
/* 8018C184 001890E4  C0 43 00 00 */	lfs f2, 0(r3)
/* 8018C188 001890E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8018C18C 001890EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018C190 001890F0  40 81 00 0C */	ble lbl_8018C19C
/* 8018C194 001890F4  38 60 00 03 */	li r3, 3
/* 8018C198 001890F8  48 00 00 08 */	b lbl_8018C1A0
lbl_8018C19C:
/* 8018C19C 001890FC  38 60 00 04 */	li r3, 4
lbl_8018C1A0:
/* 8018C1A0 00189100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018C1A4 00189104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018C1A8 00189108  7C 08 03 A6 */	mtlr r0
/* 8018C1AC 0018910C  38 21 00 10 */	addi r1, r1, 0x10
/* 8018C1B0 00189110  4E 80 00 20 */	blr 

.global GetLocoForHealth__13CNewIntroBossCFRC13CStateManager
GetLocoForHealth__13CNewIntroBossCFRC13CStateManager:
/* 8018C1B4 00189114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018C1B8 00189118  7C 08 02 A6 */	mflr r0
/* 8018C1BC 0018911C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018C1C0 00189120  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018C1C4 00189124  7C 7F 1B 78 */	mr r31, r3
/* 8018C1C8 00189128  81 83 00 00 */	lwz r12, 0(r3)
/* 8018C1CC 0018912C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8018C1D0 00189130  7D 89 03 A6 */	mtctr r12
/* 8018C1D4 00189134  4E 80 04 21 */	bctrl 
/* 8018C1D8 00189138  C0 02 A3 E8 */	lfs f0, lbl_805AC108@sda21(r2)
/* 8018C1DC 0018913C  C0 3F 06 40 */	lfs f1, 0x640(r31)
/* 8018C1E0 00189140  C0 43 00 00 */	lfs f2, 0(r3)
/* 8018C1E4 00189144  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018C1E8 00189148  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018C1EC 0018914C  40 81 00 0C */	ble lbl_8018C1F8
/* 8018C1F0 00189150  38 60 00 01 */	li r3, 1
/* 8018C1F4 00189154  48 00 00 20 */	b lbl_8018C214
lbl_8018C1F8:
/* 8018C1F8 00189158  C0 02 A3 F4 */	lfs f0, lbl_805AC114@sda21(r2)
/* 8018C1FC 0018915C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8018C200 00189160  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8018C204 00189164  40 81 00 0C */	ble lbl_8018C210
/* 8018C208 00189168  38 60 00 02 */	li r3, 2
/* 8018C20C 0018916C  48 00 00 08 */	b lbl_8018C214
lbl_8018C210:
/* 8018C210 00189170  38 60 00 03 */	li r3, 3
lbl_8018C214:
/* 8018C214 00189174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018C218 00189178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018C21C 0018917C  7C 08 03 A6 */	mtlr r0
/* 8018C220 00189180  38 21 00 10 */	addi r1, r1, 0x10
/* 8018C224 00189184  4E 80 00 20 */	blr 

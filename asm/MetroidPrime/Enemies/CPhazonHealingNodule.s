.include "macros.inc"

.section .data
.balign 8

.global lbl_803EBC70
lbl_803EBC70:
	# ROM: 0x3E8C70
	.4byte 0
	.4byte 0
	.4byte __dt__20CPhazonHealingNoduleFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__20CPhazonHealingNoduleFfR13CStateManager
	.4byte AcceptScriptMsg__20CPhazonHealingNoduleF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__20CPhazonHealingNoduleCFRC13CStateManager
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
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__20CPhazonHealingNoduleFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__20CPhazonHealingNoduleFRC9CVector3fR13CStateManager
	.4byte KnockBack__20CPhazonHealingNoduleFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
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
	.4byte Lurk__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
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
	.4byte Growth__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
	.4byte Faint__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
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
	.4byte sub_80295314
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte sub_80295324
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
	.4byte sub_80295058
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
	.4byte sub_80294e6c
	.4byte sub_80294e34
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__10CPatternedFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte sub_80294dfc
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803EBF3C
lbl_803EBF3C:
	# ROM: 0x3E8F3C
	.4byte lbl_80295884
	.4byte lbl_802958E0
	.4byte lbl_80295878
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958B8
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802958E0
	.4byte lbl_802956AC
	.4byte lbl_802958E0
	.4byte lbl_802957F8

.section .sdata
.balign 8

.global lbl_805A8588
lbl_805A8588:
	# ROM: 0x3F5F28
	.4byte 0x00000021
	.4byte 0

.section .text, "ax"

.global __dt__20CPhazonHealingNoduleFv
__dt__20CPhazonHealingNoduleFv:
/* 80294D50 00291CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294D54 00291CB4  7C 08 02 A6 */	mflr r0
/* 80294D58 00291CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294D5C 00291CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294D60 00291CC0  7C 9F 23 78 */	mr r31, r4
/* 80294D64 00291CC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80294D68 00291CC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80294D6C 00291CCC  41 82 00 70 */	beq lbl_80294DDC
/* 80294D70 00291CD0  3C 60 80 3F */	lis r3, lbl_803EBC70@ha
/* 80294D74 00291CD4  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80294D78 00291CD8  38 03 BC 70 */	addi r0, r3, lbl_803EBC70@l
/* 80294D7C 00291CDC  90 1E 00 00 */	stw r0, 0(r30)
/* 80294D80 00291CE0  41 82 00 0C */	beq lbl_80294D8C
/* 80294D84 00291CE4  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80294D88 00291CE8  48 0A 8D 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80294D8C:
/* 80294D8C 00291CEC  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80294D90 00291CF0  41 82 00 14 */	beq lbl_80294DA4
/* 80294D94 00291CF4  34 1E 05 7C */	addic. r0, r30, 0x57c
/* 80294D98 00291CF8  41 82 00 0C */	beq lbl_80294DA4
/* 80294D9C 00291CFC  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80294DA0 00291D00  48 00 0D 31 */	bl sub_80295ad0
lbl_80294DA4:
/* 80294DA4 00291D04  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80294DA8 00291D08  41 82 00 18 */	beq lbl_80294DC0
/* 80294DAC 00291D0C  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80294DB0 00291D10  41 82 00 10 */	beq lbl_80294DC0
/* 80294DB4 00291D14  38 7E 05 70 */	addi r3, r30, 0x570
/* 80294DB8 00291D18  38 80 00 00 */	li r4, 0
/* 80294DBC 00291D1C  48 0A C0 85 */	bl __dt__6CTokenFv
lbl_80294DC0:
/* 80294DC0 00291D20  7F C3 F3 78 */	mr r3, r30
/* 80294DC4 00291D24  38 80 00 00 */	li r4, 0
/* 80294DC8 00291D28  4B DE 27 A9 */	bl __dt__10CPatternedFv
/* 80294DCC 00291D2C  7F E0 07 35 */	extsh. r0, r31
/* 80294DD0 00291D30  40 81 00 0C */	ble lbl_80294DDC
/* 80294DD4 00291D34  7F C3 F3 78 */	mr r3, r30
/* 80294DD8 00291D38  48 08 0B 59 */	bl Free__7CMemoryFPCv
lbl_80294DDC:
/* 80294DDC 00291D3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294DE0 00291D40  7F C3 F3 78 */	mr r3, r30
/* 80294DE4 00291D44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294DE8 00291D48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80294DEC 00291D4C  7C 08 03 A6 */	mtlr r0
/* 80294DF0 00291D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80294DF4 00291D54  4E 80 00 20 */	blr

.global KnockBack__20CPhazonHealingNoduleFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__20CPhazonHealingNoduleFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80294DF8 00291D58  4E 80 00 20 */	blr

.global sub_80294dfc
sub_80294dfc:
/* 80294DFC 00291D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294E00 00291D60  7C 08 02 A6 */	mflr r0
/* 80294E04 00291D64  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80294E08 00291D68  38 C0 00 0E */	li r6, 0xe
/* 80294E0C 00291D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294E10 00291D70  38 A5 66 A0 */	addi r5, r5, sZeroVector__9CVector3f@l
/* 80294E14 00291D74  81 83 00 00 */	lwz r12, 0(r3)
/* 80294E18 00291D78  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80294E1C 00291D7C  7D 89 03 A6 */	mtctr r12
/* 80294E20 00291D80  4E 80 04 21 */	bctrl
/* 80294E24 00291D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294E28 00291D88  7C 08 03 A6 */	mtlr r0
/* 80294E2C 00291D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80294E30 00291D90  4E 80 00 20 */	blr

.global sub_80294e34
sub_80294e34:
/* 80294E34 00291D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294E38 00291D98  7C 08 02 A6 */	mflr r0
/* 80294E3C 00291D9C  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80294E40 00291DA0  38 C0 00 0E */	li r6, 0xe
/* 80294E44 00291DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294E48 00291DA8  38 A5 66 A0 */	addi r5, r5, sZeroVector__9CVector3f@l
/* 80294E4C 00291DAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80294E50 00291DB0  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80294E54 00291DB4  7D 89 03 A6 */	mtctr r12
/* 80294E58 00291DB8  4E 80 04 21 */	bctrl
/* 80294E5C 00291DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294E60 00291DC0  7C 08 03 A6 */	mtlr r0
/* 80294E64 00291DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80294E68 00291DC8  4E 80 00 20 */	blr

.global sub_80294e6c
sub_80294e6c:
/* 80294E6C 00291DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294E70 00291DD0  7C 08 02 A6 */	mflr r0
/* 80294E74 00291DD4  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80294E78 00291DD8  38 C0 00 0E */	li r6, 0xe
/* 80294E7C 00291DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294E80 00291DE0  38 A5 66 A0 */	addi r5, r5, sZeroVector__9CVector3f@l
/* 80294E84 00291DE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80294E88 00291DE8  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80294E8C 00291DEC  7D 89 03 A6 */	mtctr r12
/* 80294E90 00291DF0  4E 80 04 21 */	bctrl
/* 80294E94 00291DF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294E98 00291DF8  7C 08 03 A6 */	mtlr r0
/* 80294E9C 00291DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294EA0 00291E00  4E 80 00 20 */	blr

.global Death__20CPhazonHealingNoduleFRC9CVector3fR13CStateManager
Death__20CPhazonHealingNoduleFRC9CVector3fR13CStateManager:
/* 80294EA4 00291E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294EA8 00291E08  7C 08 02 A6 */	mflr r0
/* 80294EAC 00291E0C  38 C0 FF FF */	li r6, -1
/* 80294EB0 00291E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294EB4 00291E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294EB8 00291E18  7C 9F 23 78 */	mr r31, r4
/* 80294EBC 00291E1C  7F E5 FB 78 */	mr r5, r31
/* 80294EC0 00291E20  38 80 00 0E */	li r4, 0xe
/* 80294EC4 00291E24  93 C1 00 08 */	stw r30, 8(r1)
/* 80294EC8 00291E28  7C 7E 1B 78 */	mr r30, r3
/* 80294ECC 00291E2C  4B DB C1 F5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80294ED0 00291E30  7F C3 F3 78 */	mr r3, r30
/* 80294ED4 00291E34  7F E5 FB 78 */	mr r5, r31
/* 80294ED8 00291E38  38 80 00 14 */	li r4, 0x14
/* 80294EDC 00291E3C  38 C0 FF FF */	li r6, -1
/* 80294EE0 00291E40  4B DB C1 E1 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80294EE4 00291E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294EE8 00291E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294EEC 00291E4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80294EF0 00291E50  7C 08 03 A6 */	mtlr r0
/* 80294EF4 00291E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80294EF8 00291E58  4E 80 00 20 */	blr

.global sub_80294efc
sub_80294efc:
/* 80294EFC 00291E5C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80294F00 00291E60  7C 08 02 A6 */	mflr r0
/* 80294F04 00291E64  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80294F08 00291E68  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80294F0C 00291E6C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80294F10 00291E70  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80294F14 00291E74  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80294F18 00291E78  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80294F1C 00291E7C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80294F20 00291E80  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80294F24 00291E84  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80294F28 00291E88  7C 7E 1B 78 */	mr r30, r3
/* 80294F2C 00291E8C  80 63 05 7C */	lwz r3, 0x57c(r3)
/* 80294F30 00291E90  80 03 00 00 */	lwz r0, 0(r3)
/* 80294F34 00291E94  28 00 00 00 */	cmplwi r0, 0
/* 80294F38 00291E98  41 82 00 F0 */	beq lbl_80295028
/* 80294F3C 00291E9C  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 80294F40 00291EA0  7C 83 23 78 */	mr r3, r4
/* 80294F44 00291EA4  38 81 00 08 */	addi r4, r1, 8
/* 80294F48 00291EA8  B0 01 00 08 */	sth r0, 8(r1)
/* 80294F4C 00291EAC  4B DB 76 59 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80294F50 00291EB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80294F54 00291EB4  41 82 00 D4 */	beq lbl_80295028
/* 80294F58 00291EB8  3C 80 80 3D */	lis r4, lbl_803D5BB0@ha
/* 80294F5C 00291EBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80294F60 00291EC0  38 84 5B B0 */	addi r4, r4, lbl_803D5BB0@l
/* 80294F64 00291EC4  4B D6 FD 55 */	bl string_l__4rstlFPCc
/* 80294F68 00291EC8  7F C4 F3 78 */	mr r4, r30
/* 80294F6C 00291ECC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80294F70 00291ED0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80294F74 00291ED4  4B DE 3A 05 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80294F78 00291ED8  C3 A1 00 78 */	lfs f29, 0x78(r1)
/* 80294F7C 00291EDC  38 61 00 0C */	addi r3, r1, 0xc
/* 80294F80 00291EE0  C3 C1 00 68 */	lfs f30, 0x68(r1)
/* 80294F84 00291EE4  C3 E1 00 58 */	lfs f31, 0x58(r1)
/* 80294F88 00291EE8  48 0A 8B 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80294F8C 00291EEC  7F E4 FB 78 */	mr r4, r31
/* 80294F90 00291EF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80294F94 00291EF4  38 BE 05 8C */	addi r5, r30, 0x58c
/* 80294F98 00291EF8  4B DE 39 E1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80294F9C 00291EFC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80294FA0 00291F00  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80294FA4 00291F04  80 63 00 00 */	lwz r3, 0(r3)
/* 80294FA8 00291F08  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80294FAC 00291F0C  88 03 01 84 */	lbz r0, 0x184(r3)
/* 80294FB0 00291F10  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80294FB4 00291F14  28 00 00 00 */	cmplwi r0, 0
/* 80294FB8 00291F18  40 82 00 24 */	bne lbl_80294FDC
/* 80294FBC 00291F1C  34 83 01 78 */	addic. r4, r3, 0x178
/* 80294FC0 00291F20  41 82 00 10 */	beq lbl_80294FD0
/* 80294FC4 00291F24  D3 E4 00 00 */	stfs f31, 0(r4)
/* 80294FC8 00291F28  D3 C4 00 04 */	stfs f30, 4(r4)
/* 80294FCC 00291F2C  D3 A4 00 08 */	stfs f29, 8(r4)
lbl_80294FD0:
/* 80294FD0 00291F30  38 00 00 01 */	li r0, 1
/* 80294FD4 00291F34  98 03 01 84 */	stb r0, 0x184(r3)
/* 80294FD8 00291F38  48 00 00 10 */	b lbl_80294FE8
lbl_80294FDC:
/* 80294FDC 00291F3C  D3 E3 01 78 */	stfs f31, 0x178(r3)
/* 80294FE0 00291F40  D3 C3 01 7C */	stfs f30, 0x17c(r3)
/* 80294FE4 00291F44  D3 A3 01 80 */	stfs f29, 0x180(r3)
lbl_80294FE8:
/* 80294FE8 00291F48  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80294FEC 00291F4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80294FF0 00291F50  88 03 01 A4 */	lbz r0, 0x1a4(r3)
/* 80294FF4 00291F54  28 00 00 00 */	cmplwi r0, 0
/* 80294FF8 00291F58  40 82 00 24 */	bne lbl_8029501C
/* 80294FFC 00291F5C  34 83 01 98 */	addic. r4, r3, 0x198
/* 80295000 00291F60  41 82 00 10 */	beq lbl_80295010
/* 80295004 00291F64  D0 04 00 00 */	stfs f0, 0(r4)
/* 80295008 00291F68  D0 24 00 04 */	stfs f1, 4(r4)
/* 8029500C 00291F6C  D0 44 00 08 */	stfs f2, 8(r4)
lbl_80295010:
/* 80295010 00291F70  38 00 00 01 */	li r0, 1
/* 80295014 00291F74  98 03 01 A4 */	stb r0, 0x1a4(r3)
/* 80295018 00291F78  48 00 00 10 */	b lbl_80295028
lbl_8029501C:
/* 8029501C 00291F7C  D0 03 01 98 */	stfs f0, 0x198(r3)
/* 80295020 00291F80  D0 23 01 9C */	stfs f1, 0x19c(r3)
/* 80295024 00291F84  D0 43 01 A0 */	stfs f2, 0x1a0(r3)
lbl_80295028:
/* 80295028 00291F88  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 8029502C 00291F8C  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80295030 00291F90  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 80295034 00291F94  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80295038 00291F98  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 8029503C 00291F9C  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80295040 00291FA0  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80295044 00291FA4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80295048 00291FA8  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8029504C 00291FAC  7C 08 03 A6 */	mtlr r0
/* 80295050 00291FB0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80295054 00291FB4  4E 80 00 20 */	blr

.global sub_80295058
sub_80295058:
/* 80295058 00291FB8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8029505C 00291FBC  20 00 00 03 */	subfic r0, r0, 3
/* 80295060 00291FC0  7C 00 00 34 */	cntlzw r0, r0
/* 80295064 00291FC4  54 03 D9 7E */	srwi r3, r0, 5
/* 80295068 00291FC8  4E 80 00 20 */	blr

.global Faint__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
Faint__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf:
/* 8029506C 00291FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80295070 00291FD0  7C 08 02 A6 */	mflr r0
/* 80295074 00291FD4  2C 05 00 01 */	cmpwi r5, 1
/* 80295078 00291FD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029507C 00291FDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80295080 00291FE0  41 82 00 24 */	beq lbl_802950A4
/* 80295084 00291FE4  40 80 00 F8 */	bge lbl_8029517C
/* 80295088 00291FE8  2C 05 00 00 */	cmpwi r5, 0
/* 8029508C 00291FEC  40 80 00 0C */	bge lbl_80295098
/* 80295090 00291FF0  48 00 00 EC */	b lbl_8029517C
/* 80295094 00291FF4  48 00 00 E8 */	b lbl_8029517C
lbl_80295098:
/* 80295098 00291FF8  38 00 00 00 */	li r0, 0
/* 8029509C 00291FFC  90 03 05 88 */	stw r0, 0x588(r3)
/* 802950A0 00292000  48 00 00 DC */	b lbl_8029517C
lbl_802950A4:
/* 802950A4 00292004  80 03 05 88 */	lwz r0, 0x588(r3)
/* 802950A8 00292008  2C 00 00 01 */	cmpwi r0, 1
/* 802950AC 0029200C  41 82 00 D0 */	beq lbl_8029517C
/* 802950B0 00292010  40 80 00 10 */	bge lbl_802950C0
/* 802950B4 00292014  2C 00 00 00 */	cmpwi r0, 0
/* 802950B8 00292018  40 80 00 14 */	bge lbl_802950CC
/* 802950BC 0029201C  48 00 00 C0 */	b lbl_8029517C
lbl_802950C0:
/* 802950C0 00292020  2C 00 00 03 */	cmpwi r0, 3
/* 802950C4 00292024  40 80 00 B8 */	bge lbl_8029517C
/* 802950C8 00292028  48 00 00 9C */	b lbl_80295164
lbl_802950CC:
/* 802950CC 0029202C  80 83 04 50 */	lwz r4, 0x450(r3)
/* 802950D0 00292030  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 802950D4 00292034  2C 00 00 03 */	cmpwi r0, 3
/* 802950D8 00292038  40 82 00 1C */	bne lbl_802950F4
/* 802950DC 0029203C  38 00 00 02 */	li r0, 2
/* 802950E0 00292040  38 80 00 01 */	li r4, 1
/* 802950E4 00292044  90 03 05 88 */	stw r0, 0x588(r3)
/* 802950E8 00292048  80 63 04 50 */	lwz r3, 0x450(r3)
/* 802950EC 0029204C  4B EA 58 ED */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802950F0 00292050  48 00 00 8C */	b lbl_8029517C
lbl_802950F4:
/* 802950F4 00292054  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802950F8 00292058  38 C0 00 01 */	li r6, 1
/* 802950FC 0029205C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80295100 00292060  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80295104 00292064  90 01 00 08 */	stw r0, 8(r1)
/* 80295108 00292068  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 8029510C 0029206C  38 00 00 00 */	li r0, 0
/* 80295110 00292070  3B E4 00 04 */	addi r31, r4, 4
/* 80295114 00292074  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80295118 00292078  7F E3 FB 78 */	mr r3, r31
/* 8029511C 0029207C  38 80 00 01 */	li r4, 1
/* 80295120 00292080  90 A1 00 08 */	stw r5, 8(r1)
/* 80295124 00292084  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80295128 00292088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029512C 0029208C  4B E9 C3 0D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80295130 00292090  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80295134 00292094  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80295138 00292098  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8029513C 0029209C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80295140 002920A0  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80295144 002920A4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80295148 002920A8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8029514C 002920AC  90 81 00 08 */	stw r4, 8(r1)
/* 80295150 002920B0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80295154 002920B4  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80295158 002920B8  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8029515C 002920BC  90 01 00 08 */	stw r0, 8(r1)
/* 80295160 002920C0  48 00 00 1C */	b lbl_8029517C
lbl_80295164:
/* 80295164 002920C4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80295168 002920C8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8029516C 002920CC  2C 00 00 03 */	cmpwi r0, 3
/* 80295170 002920D0  41 82 00 0C */	beq lbl_8029517C
/* 80295174 002920D4  38 00 00 03 */	li r0, 3
/* 80295178 002920D8  90 03 05 88 */	stw r0, 0x588(r3)
lbl_8029517C:
/* 8029517C 002920DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80295180 002920E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80295184 002920E4  7C 08 03 A6 */	mtlr r0
/* 80295188 002920E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029518C 002920EC  4E 80 00 20 */	blr

.global Growth__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
Growth__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf:
/* 80295190 002920F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80295194 002920F4  7C 08 02 A6 */	mflr r0
/* 80295198 002920F8  2C 05 00 01 */	cmpwi r5, 1
/* 8029519C 002920FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802951A0 00292100  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802951A4 00292104  41 82 00 30 */	beq lbl_802951D4
/* 802951A8 00292108  40 80 00 F8 */	bge lbl_802952A0
/* 802951AC 0029210C  2C 05 00 00 */	cmpwi r5, 0
/* 802951B0 00292110  40 80 00 0C */	bge lbl_802951BC
/* 802951B4 00292114  48 00 00 EC */	b lbl_802952A0
/* 802951B8 00292118  48 00 00 E8 */	b lbl_802952A0
lbl_802951BC:
/* 802951BC 0029211C  38 00 00 00 */	li r0, 0
/* 802951C0 00292120  38 80 00 02 */	li r4, 2
/* 802951C4 00292124  90 03 05 88 */	stw r0, 0x588(r3)
/* 802951C8 00292128  80 63 04 50 */	lwz r3, 0x450(r3)
/* 802951CC 0029212C  4B EA 58 0D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802951D0 00292130  48 00 00 D0 */	b lbl_802952A0
lbl_802951D4:
/* 802951D4 00292134  80 03 05 88 */	lwz r0, 0x588(r3)
/* 802951D8 00292138  2C 00 00 01 */	cmpwi r0, 1
/* 802951DC 0029213C  41 82 00 C4 */	beq lbl_802952A0
/* 802951E0 00292140  40 80 00 10 */	bge lbl_802951F0
/* 802951E4 00292144  2C 00 00 00 */	cmpwi r0, 0
/* 802951E8 00292148  40 80 00 14 */	bge lbl_802951FC
/* 802951EC 0029214C  48 00 00 B4 */	b lbl_802952A0
lbl_802951F0:
/* 802951F0 00292150  2C 00 00 03 */	cmpwi r0, 3
/* 802951F4 00292154  40 80 00 AC */	bge lbl_802952A0
/* 802951F8 00292158  48 00 00 90 */	b lbl_80295288
lbl_802951FC:
/* 802951FC 0029215C  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 80295200 00292160  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 80295204 00292164  2C 00 00 03 */	cmpwi r0, 3
/* 80295208 00292168  40 82 00 10 */	bne lbl_80295218
/* 8029520C 0029216C  38 00 00 02 */	li r0, 2
/* 80295210 00292170  90 03 05 88 */	stw r0, 0x588(r3)
/* 80295214 00292174  48 00 00 8C */	b lbl_802952A0
lbl_80295218:
/* 80295218 00292178  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8029521C 0029217C  38 00 00 00 */	li r0, 0
/* 80295220 00292180  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80295224 00292184  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80295228 00292188  90 81 00 08 */	stw r4, 8(r1)
/* 8029522C 0029218C  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 80295230 00292190  38 60 00 01 */	li r3, 1
/* 80295234 00292194  3B E6 00 04 */	addi r31, r6, 4
/* 80295238 00292198  90 61 00 0C */	stw r3, 0xc(r1)
/* 8029523C 0029219C  7F E3 FB 78 */	mr r3, r31
/* 80295240 002921A0  38 80 00 01 */	li r4, 1
/* 80295244 002921A4  90 A1 00 08 */	stw r5, 8(r1)
/* 80295248 002921A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8029524C 002921AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295250 002921B0  4B E9 C1 E9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80295254 002921B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80295258 002921B8  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8029525C 002921BC  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80295260 002921C0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80295264 002921C4  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 80295268 002921C8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8029526C 002921CC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80295270 002921D0  90 81 00 08 */	stw r4, 8(r1)
/* 80295274 002921D4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80295278 002921D8  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8029527C 002921DC  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80295280 002921E0  90 01 00 08 */	stw r0, 8(r1)
/* 80295284 002921E4  48 00 00 1C */	b lbl_802952A0
lbl_80295288:
/* 80295288 002921E8  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8029528C 002921EC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80295290 002921F0  2C 00 00 03 */	cmpwi r0, 3
/* 80295294 002921F4  41 82 00 0C */	beq lbl_802952A0
/* 80295298 002921F8  38 00 00 03 */	li r0, 3
/* 8029529C 002921FC  90 03 05 88 */	stw r0, 0x588(r3)
lbl_802952A0:
/* 802952A0 00292200  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802952A4 00292204  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802952A8 00292208  7C 08 03 A6 */	mtlr r0
/* 802952AC 0029220C  38 21 00 20 */	addi r1, r1, 0x20
/* 802952B0 00292210  4E 80 00 20 */	blr

.global Render__20CPhazonHealingNoduleCFRC13CStateManager
Render__20CPhazonHealingNoduleCFRC13CStateManager:
/* 802952B4 00292214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802952B8 00292218  7C 08 02 A6 */	mflr r0
/* 802952BC 0029221C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802952C0 00292220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802952C4 00292224  7C 9F 23 78 */	mr r31, r4
/* 802952C8 00292228  93 C1 00 08 */	stw r30, 8(r1)
/* 802952CC 0029222C  7C 7E 1B 78 */	mr r30, r3
/* 802952D0 00292230  80 63 05 7C */	lwz r3, 0x57c(r3)
/* 802952D4 00292234  80 63 00 00 */	lwz r3, 0(r3)
/* 802952D8 00292238  28 03 00 00 */	cmplwi r3, 0
/* 802952DC 0029223C  41 82 00 14 */	beq lbl_802952F0
/* 802952E0 00292240  81 83 00 00 */	lwz r12, 0(r3)
/* 802952E4 00292244  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802952E8 00292248  7D 89 03 A6 */	mtctr r12
/* 802952EC 0029224C  4E 80 04 21 */	bctrl
lbl_802952F0:
/* 802952F0 00292250  7F C3 F3 78 */	mr r3, r30
/* 802952F4 00292254  7F E4 FB 78 */	mr r4, r31
/* 802952F8 00292258  4B DE 2D 35 */	bl Render__10CPatternedCFRC13CStateManager
/* 802952FC 0029225C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295300 00292260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80295304 00292264  83 C1 00 08 */	lwz r30, 8(r1)
/* 80295308 00292268  7C 08 03 A6 */	mtlr r0
/* 8029530C 0029226C  38 21 00 10 */	addi r1, r1, 0x10
/* 80295310 00292270  4E 80 00 20 */	blr

.global sub_80295314
sub_80295314:
/* 80295314 00292274  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80295318 00292278  7C 00 00 34 */	cntlzw r0, r0
/* 8029531C 0029227C  54 03 D9 7E */	srwi r3, r0, 5
/* 80295320 00292280  4E 80 00 20 */	blr

.global sub_80295324
sub_80295324:
/* 80295324 00292284  80 03 05 68 */	lwz r0, 0x568(r3)
/* 80295328 00292288  20 00 00 01 */	subfic r0, r0, 1
/* 8029532C 0029228C  7C 00 00 34 */	cntlzw r0, r0
/* 80295330 00292290  54 03 D9 7E */	srwi r3, r0, 5
/* 80295334 00292294  4E 80 00 20 */	blr

.global Lurk__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
Lurk__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf:
/* 80295338 00292298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029533C 0029229C  7C 08 02 A6 */	mflr r0
/* 80295340 002922A0  2C 05 00 00 */	cmpwi r5, 0
/* 80295344 002922A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295348 002922A8  41 82 00 0C */	beq lbl_80295354
/* 8029534C 002922AC  41 80 00 14 */	blt lbl_80295360
/* 80295350 002922B0  48 00 00 10 */	b lbl_80295360
lbl_80295354:
/* 80295354 002922B4  80 63 04 50 */	lwz r3, 0x450(r3)
/* 80295358 002922B8  38 80 00 02 */	li r4, 2
/* 8029535C 002922BC  4B EA 56 7D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80295360:
/* 80295360 002922C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295364 002922C4  7C 08 03 A6 */	mtlr r0
/* 80295368 002922C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029536C 002922CC  4E 80 00 20 */	blr

.global Patrol__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf
Patrol__20CPhazonHealingNoduleFR13CStateManager9EStateMsgf:
/* 80295370 002922D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295374 002922D4  7C 08 02 A6 */	mflr r0
/* 80295378 002922D8  2C 05 00 00 */	cmpwi r5, 0
/* 8029537C 002922DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295380 002922E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80295384 002922E4  7C 9F 23 78 */	mr r31, r4
/* 80295388 002922E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8029538C 002922EC  7C 7E 1B 78 */	mr r30, r3
/* 80295390 002922F0  41 82 00 0C */	beq lbl_8029539C
/* 80295394 002922F4  41 80 00 34 */	blt lbl_802953C8
/* 80295398 002922F8  48 00 00 30 */	b lbl_802953C8
lbl_8029539C:
/* 8029539C 002922FC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802953A0 00292300  38 80 00 01 */	li r4, 1
/* 802953A4 00292304  4B EA 56 35 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802953A8 00292308  7F C3 F3 78 */	mr r3, r30
/* 802953AC 0029230C  7F E5 FB 78 */	mr r5, r31
/* 802953B0 00292310  38 80 00 28 */	li r4, 0x28
/* 802953B4 00292314  4B DB EB CD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802953B8 00292318  7F C3 F3 78 */	mr r3, r30
/* 802953BC 0029231C  7F E5 FB 78 */	mr r5, r31
/* 802953C0 00292320  38 80 00 29 */	li r4, 0x29
/* 802953C4 00292324  4B DB EB BD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_802953C8:
/* 802953C8 00292328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802953CC 0029232C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802953D0 00292330  83 C1 00 08 */	lwz r30, 8(r1)
/* 802953D4 00292334  7C 08 03 A6 */	mtlr r0
/* 802953D8 00292338  38 21 00 10 */	addi r1, r1, 0x10
/* 802953DC 0029233C  4E 80 00 20 */	blr

.global Think__20CPhazonHealingNoduleFfR13CStateManager
Think__20CPhazonHealingNoduleFfR13CStateManager:
/* 802953E0 00292340  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802953E4 00292344  7C 08 02 A6 */	mflr r0
/* 802953E8 00292348  90 01 00 34 */	stw r0, 0x34(r1)
/* 802953EC 0029234C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802953F0 00292350  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802953F4 00292354  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802953F8 00292358  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802953FC 0029235C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80295400 00292360  FF E0 08 90 */	fmr f31, f1
/* 80295404 00292364  7C 7E 1B 78 */	mr r30, r3
/* 80295408 00292368  7C 9F 23 78 */	mr r31, r4
/* 8029540C 0029236C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80295410 00292370  41 82 00 D8 */	beq lbl_802954E8
/* 80295414 00292374  4B DE 47 05 */	bl Think__10CPatternedFfR13CStateManager
/* 80295418 00292378  7F C3 F3 78 */	mr r3, r30
/* 8029541C 0029237C  7F E4 FB 78 */	mr r4, r31
/* 80295420 00292380  81 9E 00 00 */	lwz r12, 0(r30)
/* 80295424 00292384  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80295428 00292388  7D 89 03 A6 */	mtctr r12
/* 8029542C 0029238C  4E 80 04 21 */	bctrl
/* 80295430 00292390  C0 23 00 00 */	lfs f1, 0(r3)
/* 80295434 00292394  C0 02 BF 90 */	lfs f0, lbl_805ADCB0@sda21(r2)
/* 80295438 00292398  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8029543C 0029239C  4C 40 13 82 */	cror 2, 0, 2
/* 80295440 002923A0  40 82 00 70 */	bne lbl_802954B0
/* 80295444 002923A4  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80295448 002923A8  48 00 06 89 */	bl sub_80295ad0
/* 8029544C 002923AC  38 0D A9 28 */	addi r0, r13, sNull__Q24rstl8CRefData@sda21
/* 80295450 002923B0  3C 60 80 3D */	lis r3, lbl_803D5BB0@ha
/* 80295454 002923B4  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 80295458 002923B8  38 83 5B B0 */	addi r4, r3, lbl_803D5BB0@l
/* 8029545C 002923BC  38 00 00 00 */	li r0, 0
/* 80295460 002923C0  38 61 00 08 */	addi r3, r1, 8
/* 80295464 002923C4  80 DE 05 7C */	lwz r6, 0x57c(r30)
/* 80295468 002923C8  38 84 00 11 */	addi r4, r4, 0x11
/* 8029546C 002923CC  80 A6 00 04 */	lwz r5, 4(r6)
/* 80295470 002923D0  38 A5 00 01 */	addi r5, r5, 1
/* 80295474 002923D4  90 A6 00 04 */	stw r5, 4(r6)
/* 80295478 002923D8  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 8029547C 002923DC  4B D6 F8 3D */	bl string_l__4rstlFPCc
/* 80295480 002923E0  7F C3 F3 78 */	mr r3, r30
/* 80295484 002923E4  4B E0 D4 75 */	bl GetStateMachine__3CAiFv
/* 80295488 002923E8  7C 66 1B 78 */	mr r6, r3
/* 8029548C 002923EC  7F E4 FB 78 */	mr r4, r31
/* 80295490 002923F0  7F C5 F3 78 */	mr r5, r30
/* 80295494 002923F4  38 7E 03 30 */	addi r3, r30, 0x330
/* 80295498 002923F8  38 E1 00 08 */	addi r7, r1, 8
/* 8029549C 002923FC  4B DE A7 69 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802954A0 00292400  38 61 00 08 */	addi r3, r1, 8
/* 802954A4 00292404  48 0A 86 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802954A8 00292408  38 00 00 00 */	li r0, 0
/* 802954AC 0029240C  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_802954B0:
/* 802954B0 00292410  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 802954B4 00292414  80 03 00 00 */	lwz r0, 0(r3)
/* 802954B8 00292418  28 00 00 00 */	cmplwi r0, 0
/* 802954BC 0029241C  41 82 00 2C */	beq lbl_802954E8
/* 802954C0 00292420  7F C3 F3 78 */	mr r3, r30
/* 802954C4 00292424  7F E4 FB 78 */	mr r4, r31
/* 802954C8 00292428  4B FF FA 35 */	bl sub_80294efc
/* 802954CC 0029242C  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 802954D0 00292430  FC 20 F8 90 */	fmr f1, f31
/* 802954D4 00292434  80 63 00 00 */	lwz r3, 0(r3)
/* 802954D8 00292438  81 83 00 00 */	lwz r12, 0(r3)
/* 802954DC 0029243C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802954E0 00292440  7D 89 03 A6 */	mtctr r12
/* 802954E4 00292444  4E 80 04 21 */	bctrl
lbl_802954E8:
/* 802954E8 00292448  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802954EC 0029244C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802954F0 00292450  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802954F4 00292454  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802954F8 00292458  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802954FC 0029245C  7C 08 03 A6 */	mtlr r0
/* 80295500 00292460  38 21 00 30 */	addi r1, r1, 0x30
/* 80295504 00292464  4E 80 00 20 */	blr

.global DoUserAnimEvent__20CPhazonHealingNoduleFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__20CPhazonHealingNoduleFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80295508 00292468  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8029550C 0029246C  7C 08 02 A6 */	mflr r0
/* 80295510 00292470  2C 06 00 12 */	cmpwi r6, 0x12
/* 80295514 00292474  90 01 00 34 */	stw r0, 0x34(r1)
/* 80295518 00292478  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8029551C 0029247C  7C 7F 1B 78 */	mr r31, r3
/* 80295520 00292480  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80295524 00292484  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80295528 00292488  41 82 00 F8 */	beq lbl_80295620
/* 8029552C 0029248C  40 80 01 20 */	bge lbl_8029564C
/* 80295530 00292490  2C 06 00 11 */	cmpwi r6, 0x11
/* 80295534 00292494  40 80 00 08 */	bge lbl_8029553C
/* 80295538 00292498  48 00 01 14 */	b lbl_8029564C
lbl_8029553C:
/* 8029553C 0029249C  38 00 00 01 */	li r0, 1
/* 80295540 002924A0  3C 60 80 3D */	lis r3, lbl_803D5BB0@ha
/* 80295544 002924A4  38 63 5B B0 */	addi r3, r3, lbl_803D5BB0@l
/* 80295548 002924A8  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 8029554C 002924AC  38 83 00 18 */	addi r4, r3, 0x18
/* 80295550 002924B0  3B A0 00 00 */	li r29, 0
/* 80295554 002924B4  38 60 04 58 */	li r3, 0x458
/* 80295558 002924B8  38 A0 00 00 */	li r5, 0
/* 8029555C 002924BC  48 08 03 11 */	bl __nw__FUlPCcPCc
/* 80295560 002924C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80295564 002924C4  41 82 00 24 */	beq lbl_80295588
/* 80295568 002924C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8029556C 002924CC  38 9F 05 70 */	addi r4, r31, 0x570
/* 80295570 002924D0  48 0A B9 39 */	bl __ct__6CTokenFRC6CToken
/* 80295574 002924D4  7F C3 F3 78 */	mr r3, r30
/* 80295578 002924D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8029557C 002924DC  3B A0 00 01 */	li r29, 1
/* 80295580 002924E0  48 0C CB F1 */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 80295584 002924E4  7C 7E 1B 78 */	mr r30, r3
lbl_80295588:
/* 80295588 002924E8  3C 80 80 3D */	lis r4, lbl_803D5BB0@ha
/* 8029558C 002924EC  38 60 00 08 */	li r3, 8
/* 80295590 002924F0  38 84 5B B0 */	addi r4, r4, lbl_803D5BB0@l
/* 80295594 002924F4  38 A0 00 00 */	li r5, 0
/* 80295598 002924F8  38 84 00 18 */	addi r4, r4, 0x18
/* 8029559C 002924FC  48 08 02 D1 */	bl __nw__FUlPCcPCc
/* 802955A0 00292500  28 03 00 00 */	cmplwi r3, 0
/* 802955A4 00292504  41 82 00 10 */	beq lbl_802955B4
/* 802955A8 00292508  93 C3 00 00 */	stw r30, 0(r3)
/* 802955AC 0029250C  38 00 00 01 */	li r0, 1
/* 802955B0 00292510  90 03 00 04 */	stw r0, 4(r3)
lbl_802955B4:
/* 802955B4 00292514  90 61 00 08 */	stw r3, 8(r1)
/* 802955B8 00292518  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 802955BC 0029251C  7C 00 18 40 */	cmplw r0, r3
/* 802955C0 00292520  41 82 00 24 */	beq lbl_802955E4
/* 802955C4 00292524  38 7F 05 7C */	addi r3, r31, 0x57c
/* 802955C8 00292528  48 00 05 09 */	bl sub_80295ad0
/* 802955CC 0029252C  80 01 00 08 */	lwz r0, 8(r1)
/* 802955D0 00292530  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 802955D4 00292534  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 802955D8 00292538  80 64 00 04 */	lwz r3, 4(r4)
/* 802955DC 0029253C  38 03 00 01 */	addi r0, r3, 1
/* 802955E0 00292540  90 04 00 04 */	stw r0, 4(r4)
lbl_802955E4:
/* 802955E4 00292544  38 61 00 08 */	addi r3, r1, 8
/* 802955E8 00292548  48 00 04 E9 */	bl sub_80295ad0
/* 802955EC 0029254C  7F A0 07 75 */	extsb. r0, r29
/* 802955F0 00292550  41 82 00 10 */	beq lbl_80295600
/* 802955F4 00292554  38 61 00 0C */	addi r3, r1, 0xc
/* 802955F8 00292558  38 80 00 00 */	li r4, 0
/* 802955FC 0029255C  48 0A B8 45 */	bl __dt__6CTokenFv
lbl_80295600:
/* 80295600 00292560  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80295604 00292564  38 80 00 01 */	li r4, 1
/* 80295608 00292568  80 63 00 00 */	lwz r3, 0(r3)
/* 8029560C 0029256C  81 83 00 00 */	lwz r12, 0(r3)
/* 80295610 00292570  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80295614 00292574  7D 89 03 A6 */	mtctr r12
/* 80295618 00292578  4E 80 04 21 */	bctrl
/* 8029561C 0029257C  48 00 00 38 */	b lbl_80295654
lbl_80295620:
/* 80295620 00292580  38 00 00 00 */	li r0, 0
/* 80295624 00292584  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80295628 00292588  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 8029562C 0029258C  48 00 04 A5 */	bl sub_80295ad0
/* 80295630 00292590  38 0D A9 28 */	addi r0, r13, sNull__Q24rstl8CRefData@sda21
/* 80295634 00292594  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80295638 00292598  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 8029563C 0029259C  80 64 00 04 */	lwz r3, 4(r4)
/* 80295640 002925A0  38 03 00 01 */	addi r0, r3, 1
/* 80295644 002925A4  90 04 00 04 */	stw r0, 4(r4)
/* 80295648 002925A8  48 00 00 0C */	b lbl_80295654
lbl_8029564C:
/* 8029564C 002925AC  7F E3 FB 78 */	mr r3, r31
/* 80295650 002925B0  4B DE 38 61 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80295654:
/* 80295654 002925B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80295658 002925B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8029565C 002925BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80295660 002925C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80295664 002925C4  7C 08 03 A6 */	mtlr r0
/* 80295668 002925C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8029566C 002925CC  4E 80 00 20 */	blr

.global AcceptScriptMsg__20CPhazonHealingNoduleF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__20CPhazonHealingNoduleF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80295670 002925D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80295674 002925D4  7C 08 02 A6 */	mflr r0
/* 80295678 002925D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8029567C 002925DC  38 04 FF FB */	addi r0, r4, -5
/* 80295680 002925E0  28 00 00 1E */	cmplwi r0, 0x1e
/* 80295684 002925E4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 80295688 002925E8  7C 7E 1B 78 */	mr r30, r3
/* 8029568C 002925EC  7C DF 33 78 */	mr r31, r6
/* 80295690 002925F0  41 81 02 50 */	bgt lbl_802958E0
/* 80295694 002925F4  3C E0 80 3F */	lis r7, lbl_803EBF3C@ha
/* 80295698 002925F8  54 00 10 3A */	slwi r0, r0, 2
/* 8029569C 002925FC  38 E7 BF 3C */	addi r7, r7, lbl_803EBF3C@l
/* 802956A0 00292600  7C 07 00 2E */	lwzx r0, r7, r0
/* 802956A4 00292604  7C 09 03 A6 */	mtctr r0
/* 802956A8 00292608  4E 80 04 20 */	bctr
.global lbl_802956AC
lbl_802956AC:
/* 802956AC 0029260C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802956B0 00292610  88 03 03 00 */	lbz r0, 0x300(r3)
/* 802956B4 00292614  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802956B8 00292618  40 82 00 0C */	bne lbl_802956C4
/* 802956BC 0029261C  7F E4 FB 78 */	mr r4, r31
/* 802956C0 00292620  4B EA 56 31 */	bl Activate__15CBodyControllerFR13CStateManager
lbl_802956C4:
/* 802956C4 00292624  7F C3 F3 78 */	mr r3, r30
/* 802956C8 00292628  81 9E 00 00 */	lwz r12, 0(r30)
/* 802956CC 0029262C  81 8C 00 8C */	lwz r12, 0x8c(r12)
/* 802956D0 00292630  7D 89 03 A6 */	mtctr r12
/* 802956D4 00292634  4E 80 04 21 */	bctrl
/* 802956D8 00292638  3C A0 80 57 */	lis r5, lbl_80570004@ha
/* 802956DC 0029263C  84 C5 D7 18 */	lwzu r6, -0x28e8(r5)
/* 802956E0 00292640  38 80 00 00 */	li r4, 0
/* 802956E4 00292644  80 05 00 04 */	lwz r0, lbl_80570004@l(r5)
/* 802956E8 00292648  90 C3 00 00 */	stw r6, 0(r3)
/* 802956EC 0029264C  90 03 00 04 */	stw r0, 4(r3)
/* 802956F0 00292650  80 C5 00 08 */	lwz r6, 8(r5)
/* 802956F4 00292654  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802956F8 00292658  90 C3 00 08 */	stw r6, 8(r3)
/* 802956FC 0029265C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80295700 00292660  80 C5 00 10 */	lwz r6, 0x10(r5)
/* 80295704 00292664  80 05 00 14 */	lwz r0, 0x14(r5)
/* 80295708 00292668  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8029570C 0029266C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80295710 00292670  80 C5 00 18 */	lwz r6, 0x18(r5)
/* 80295714 00292674  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80295718 00292678  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8029571C 0029267C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80295720 00292680  80 C5 00 20 */	lwz r6, 0x20(r5)
/* 80295724 00292684  80 05 00 24 */	lwz r0, 0x24(r5)
/* 80295728 00292688  90 C3 00 20 */	stw r6, 0x20(r3)
/* 8029572C 0029268C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80295730 00292690  80 C5 00 28 */	lwz r6, 0x28(r5)
/* 80295734 00292694  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 80295738 00292698  90 C3 00 28 */	stw r6, 0x28(r3)
/* 8029573C 0029269C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80295740 002926A0  80 C5 00 30 */	lwz r6, 0x30(r5)
/* 80295744 002926A4  80 05 00 34 */	lwz r0, 0x34(r5)
/* 80295748 002926A8  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8029574C 002926AC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80295750 002926B0  80 05 00 38 */	lwz r0, 0x38(r5)
/* 80295754 002926B4  90 03 00 38 */	stw r0, 0x38(r3)
/* 80295758 002926B8  80 C5 00 3C */	lwz r6, 0x3c(r5)
/* 8029575C 002926BC  80 05 00 40 */	lwz r0, 0x40(r5)
/* 80295760 002926C0  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 80295764 002926C4  90 03 00 40 */	stw r0, 0x40(r3)
/* 80295768 002926C8  80 C5 00 44 */	lwz r6, 0x44(r5)
/* 8029576C 002926CC  80 05 00 48 */	lwz r0, 0x48(r5)
/* 80295770 002926D0  90 C3 00 44 */	stw r6, 0x44(r3)
/* 80295774 002926D4  90 03 00 48 */	stw r0, 0x48(r3)
/* 80295778 002926D8  80 C5 00 4C */	lwz r6, 0x4c(r5)
/* 8029577C 002926DC  80 05 00 50 */	lwz r0, 0x50(r5)
/* 80295780 002926E0  90 C3 00 4C */	stw r6, 0x4c(r3)
/* 80295784 002926E4  90 03 00 50 */	stw r0, 0x50(r3)
/* 80295788 002926E8  80 C5 00 54 */	lwz r6, 0x54(r5)
/* 8029578C 002926EC  80 05 00 58 */	lwz r0, 0x58(r5)
/* 80295790 002926F0  90 C3 00 54 */	stw r6, 0x54(r3)
/* 80295794 002926F4  90 03 00 58 */	stw r0, 0x58(r3)
/* 80295798 002926F8  80 05 00 5C */	lwz r0, 0x5c(r5)
/* 8029579C 002926FC  90 03 00 5C */	stw r0, 0x5c(r3)
/* 802957A0 00292700  80 05 00 60 */	lwz r0, 0x60(r5)
/* 802957A4 00292704  90 03 00 60 */	stw r0, 0x60(r3)
/* 802957A8 00292708  80 05 00 64 */	lwz r0, 0x64(r5)
/* 802957AC 0029270C  90 03 00 64 */	stw r0, 0x64(r3)
/* 802957B0 00292710  38 7E 04 60 */	addi r3, r30, 0x460
/* 802957B4 00292714  4B F9 E5 B1 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 802957B8 00292718  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802957BC 0029271C  38 80 00 01 */	li r4, 1
/* 802957C0 00292720  4B EA 52 19 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802957C4 00292724  7F C3 F3 78 */	mr r3, r30
/* 802957C8 00292728  7F E5 FB 78 */	mr r5, r31
/* 802957CC 0029272C  38 80 00 28 */	li r4, 0x28
/* 802957D0 00292730  4B DB E7 B1 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802957D4 00292734  7F C3 F3 78 */	mr r3, r30
/* 802957D8 00292738  7F E5 FB 78 */	mr r5, r31
/* 802957DC 0029273C  38 80 00 29 */	li r4, 0x29
/* 802957E0 00292740  4B DB E7 A1 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802957E4 00292744  7F C3 F3 78 */	mr r3, r30
/* 802957E8 00292748  7F E5 FB 78 */	mr r5, r31
/* 802957EC 0029274C  38 80 00 2B */	li r4, 0x2b
/* 802957F0 00292750  4B DB EB 61 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802957F4 00292754  48 00 01 04 */	b lbl_802958F8
.global lbl_802957F8
lbl_802957F8:
/* 802957F8 00292758  A0 05 00 00 */	lhz r0, 0(r5)
/* 802957FC 0029275C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80295800 00292760  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80295804 00292764  4B DE 73 75 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80295808 00292768  83 7E 00 24 */	lwz r27, 0x24(r30)
/* 8029580C 0029276C  3B 40 00 00 */	li r26, 0
/* 80295810 00292770  3B A0 00 00 */	li r29, 0
/* 80295814 00292774  48 00 00 58 */	b lbl_8029586C
lbl_80295818:
/* 80295818 00292778  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 8029581C 0029277C  7F E4 FB 78 */	mr r4, r31
/* 80295820 00292780  38 61 00 0C */	addi r3, r1, 0xc
/* 80295824 00292784  38 A1 00 14 */	addi r5, r1, 0x14
/* 80295828 00292788  7F 80 EA 14 */	add r28, r0, r29
/* 8029582C 0029278C  80 1C 00 08 */	lwz r0, 8(r28)
/* 80295830 00292790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295834 00292794  4B DB 26 E9 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80295838 00292798  80 1C 00 00 */	lwz r0, 0(r28)
/* 8029583C 0029279C  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 80295840 002927A0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80295844 002927A4  40 82 00 20 */	bne lbl_80295864
/* 80295848 002927A8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8029584C 002927AC  7C 03 00 40 */	cmplw r3, r0
/* 80295850 002927B0  41 82 00 14 */	beq lbl_80295864
/* 80295854 002927B4  80 1C 00 04 */	lwz r0, 4(r28)
/* 80295858 002927B8  2C 00 00 01 */	cmpwi r0, 1
/* 8029585C 002927BC  40 82 00 08 */	bne lbl_80295864
/* 80295860 002927C0  B0 7E 05 6E */	sth r3, 0x56e(r30)
lbl_80295864:
/* 80295864 002927C4  3B 5A 00 01 */	addi r26, r26, 1
/* 80295868 002927C8  3B BD 00 0C */	addi r29, r29, 0xc
lbl_8029586C:
/* 8029586C 002927CC  7C 1A D8 40 */	cmplw r26, r27
/* 80295870 002927D0  41 80 FF A8 */	blt lbl_80295818
/* 80295874 002927D4  48 00 00 84 */	b lbl_802958F8
.global lbl_80295878
lbl_80295878:
/* 80295878 002927D8  38 00 00 01 */	li r0, 1
/* 8029587C 002927DC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80295880 002927E0  48 00 00 78 */	b lbl_802958F8
.global lbl_80295884
lbl_80295884:
/* 80295884 002927E4  38 00 00 00 */	li r0, 0
/* 80295888 002927E8  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8029588C 002927EC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80295890 002927F0  48 00 02 41 */	bl sub_80295ad0
/* 80295894 002927F4  38 6D A9 28 */	addi r3, r13, sNull__Q24rstl8CRefData@sda21
/* 80295898 002927F8  38 00 00 00 */	li r0, 0
/* 8029589C 002927FC  90 7E 05 7C */	stw r3, 0x57c(r30)
/* 802958A0 00292800  80 9E 05 7C */	lwz r4, 0x57c(r30)
/* 802958A4 00292804  80 64 00 04 */	lwz r3, 4(r4)
/* 802958A8 00292808  38 63 00 01 */	addi r3, r3, 1
/* 802958AC 0029280C  90 64 00 04 */	stw r3, 4(r4)
/* 802958B0 00292810  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 802958B4 00292814  48 00 00 44 */	b lbl_802958F8
.global lbl_802958B8
lbl_802958B8:
/* 802958B8 00292818  81 83 00 00 */	lwz r12, 0(r3)
/* 802958BC 0029281C  7F E4 FB 78 */	mr r4, r31
/* 802958C0 00292820  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802958C4 00292824  7D 89 03 A6 */	mtctr r12
/* 802958C8 00292828  4E 80 04 21 */	bctrl
/* 802958CC 0029282C  C0 1E 05 80 */	lfs f0, 0x580(r30)
/* 802958D0 00292830  D0 03 00 00 */	stfs f0, 0(r3)
/* 802958D4 00292834  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 802958D8 00292838  D0 03 00 04 */	stfs f0, 4(r3)
/* 802958DC 0029283C  48 00 00 1C */	b lbl_802958F8
.global lbl_802958E0
lbl_802958E0:
/* 802958E0 00292840  A0 05 00 00 */	lhz r0, 0(r5)
/* 802958E4 00292844  7F C3 F3 78 */	mr r3, r30
/* 802958E8 00292848  7F E6 FB 78 */	mr r6, r31
/* 802958EC 0029284C  38 A1 00 08 */	addi r5, r1, 8
/* 802958F0 00292850  B0 01 00 08 */	sth r0, 8(r1)
/* 802958F4 00292854  4B DE 72 85 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_802958F8:
/* 802958F8 00292858  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802958FC 0029285C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80295900 00292860  7C 08 03 A6 */	mtlr r0
/* 80295904 00292864  38 21 00 30 */	addi r1, r1, 0x30
/* 80295908 00292868  4E 80 00 20 */	blr

.global "__ct__20CPhazonHealingNoduleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfo"
"__ct__20CPhazonHealingNoduleF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfo":
/* 8029590C 0029286C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80295910 00292870  7C 08 02 A6 */	mflr r0
/* 80295914 00292874  7C EC 3B 78 */	mr r12, r7
/* 80295918 00292878  39 60 00 01 */	li r11, 1
/* 8029591C 0029287C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80295920 00292880  38 E0 00 00 */	li r7, 0
/* 80295924 00292884  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80295928 00292888  7D 5F 53 78 */	mr r31, r10
/* 8029592C 0029288C  7D 0A 43 78 */	mr r10, r8
/* 80295930 00292890  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80295934 00292894  7C 7E 1B 78 */	mr r30, r3
/* 80295938 00292898  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8029593C 0029289C  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 80295940 002928A0  93 81 00 50 */	stw r28, 0x50(r1)
/* 80295944 002928A4  83 81 00 68 */	lwz r28, 0x68(r1)
/* 80295948 002928A8  A0 04 00 00 */	lhz r0, 0(r4)
/* 8029594C 002928AC  7C C4 33 78 */	mr r4, r6
/* 80295950 002928B0  7C A6 2B 78 */	mr r6, r5
/* 80295954 002928B4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80295958 002928B8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8029595C 002928BC  7C 88 23 78 */	mr r8, r4
/* 80295960 002928C0  38 00 00 02 */	li r0, 2
/* 80295964 002928C4  38 80 00 23 */	li r4, 0x23
/* 80295968 002928C8  93 E1 00 08 */	stw r31, 8(r1)
/* 8029596C 002928CC  91 61 00 0C */	stw r11, 0xc(r1)
/* 80295970 002928D0  91 61 00 10 */	stw r11, 0x10(r1)
/* 80295974 002928D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295978 002928D8  91 21 00 18 */	stw r9, 0x18(r1)
/* 8029597C 002928DC  7D 89 63 78 */	mr r9, r12
/* 80295980 002928E0  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80295984 002928E4  4B DE 7A CD */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80295988 002928E8  3C 80 80 3F */	lis r4, lbl_803EBC70@ha
/* 8029598C 002928EC  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 80295990 002928F0  38 04 BC 70 */	addi r0, r4, lbl_803EBC70@l
/* 80295994 002928F4  38 80 00 00 */	li r4, 0
/* 80295998 002928F8  90 1E 00 00 */	stw r0, 0(r30)
/* 8029599C 002928FC  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 802959A0 00292900  38 61 00 24 */	addi r3, r1, 0x24
/* 802959A4 00292904  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802959A8 00292908  90 9E 05 68 */	stw r4, 0x568(r30)
/* 802959AC 0029290C  98 9E 05 6C */	stb r4, 0x56c(r30)
/* 802959B0 00292910  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 802959B4 00292914  B0 9E 05 6E */	sth r4, 0x56e(r30)
/* 802959B8 00292918  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802959BC 0029291C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 802959C0 00292920  93 81 00 30 */	stw r28, 0x30(r1)
/* 802959C4 00292924  81 84 00 00 */	lwz r12, 0(r4)
/* 802959C8 00292928  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802959CC 0029292C  7D 89 03 A6 */	mtctr r12
/* 802959D0 00292930  4E 80 04 21 */	bctrl
/* 802959D4 00292934  3B 9E 05 70 */	addi r28, r30, 0x570
/* 802959D8 00292938  38 81 00 24 */	addi r4, r1, 0x24
/* 802959DC 0029293C  7F 83 E3 78 */	mr r3, r28
/* 802959E0 00292940  48 0A B4 C9 */	bl __ct__6CTokenFRC6CToken
/* 802959E4 00292944  7F 83 E3 78 */	mr r3, r28
/* 802959E8 00292948  48 0A B4 25 */	bl GetObj__6CTokenFv
/* 802959EC 0029294C  80 03 00 04 */	lwz r0, 4(r3)
/* 802959F0 00292950  38 61 00 24 */	addi r3, r1, 0x24
/* 802959F4 00292954  38 80 FF FF */	li r4, -1
/* 802959F8 00292958  90 1C 00 08 */	stw r0, 8(r28)
/* 802959FC 0029295C  48 0A B4 45 */	bl __dt__6CTokenFv
/* 80295A00 00292960  3C 80 80 3D */	lis r4, lbl_803D5BB0@ha
/* 80295A04 00292964  38 60 00 08 */	li r3, 8
/* 80295A08 00292968  38 84 5B B0 */	addi r4, r4, lbl_803D5BB0@l
/* 80295A0C 0029296C  38 A0 00 00 */	li r5, 0
/* 80295A10 00292970  38 84 00 18 */	addi r4, r4, 0x18
/* 80295A14 00292974  48 07 FE 59 */	bl __nw__FUlPCcPCc
/* 80295A18 00292978  28 03 00 00 */	cmplwi r3, 0
/* 80295A1C 0029297C  41 82 00 14 */	beq lbl_80295A30
/* 80295A20 00292980  38 80 00 00 */	li r4, 0
/* 80295A24 00292984  38 00 00 01 */	li r0, 1
/* 80295A28 00292988  90 83 00 00 */	stw r4, 0(r3)
/* 80295A2C 0029298C  90 03 00 04 */	stw r0, 4(r3)
lbl_80295A30:
/* 80295A30 00292990  90 7E 05 7C */	stw r3, 0x57c(r30)
/* 80295A34 00292994  7F A4 EB 78 */	mr r4, r29
/* 80295A38 00292998  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80295A3C 0029299C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80295A40 002929A0  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 80295A44 002929A4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80295A48 002929A8  D0 1E 05 84 */	stfs f0, 0x584(r30)
/* 80295A4C 002929AC  48 0A 87 15 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80295A50 002929B0  7F C3 F3 78 */	mr r3, r30
/* 80295A54 002929B4  4B DB DE 69 */	bl GetMaterialFilter__6CActorCFv
/* 80295A58 002929B8  80 AD 99 C8 */	lwz r5, lbl_805A8588@sda21(r13)
/* 80295A5C 002929BC  38 80 00 01 */	li r4, 1
/* 80295A60 002929C0  83 E3 00 08 */	lwz r31, 8(r3)
/* 80295A64 002929C4  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 80295A68 002929C8  38 60 00 00 */	li r3, 0
/* 80295A6C 002929CC  48 0F 44 89 */	bl __shl2i
/* 80295A70 002929D0  7F FF 1B 78 */	or r31, r31, r3
/* 80295A74 002929D4  7F C3 F3 78 */	mr r3, r30
/* 80295A78 002929D8  7F BD 23 78 */	or r29, r29, r4
/* 80295A7C 002929DC  4B DB DE 41 */	bl GetMaterialFilter__6CActorCFv
/* 80295A80 002929E0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80295A84 002929E4  38 00 00 03 */	li r0, 3
/* 80295A88 002929E8  80 C3 00 04 */	lwz r6, 4(r3)
/* 80295A8C 002929EC  7F C3 F3 78 */	mr r3, r30
/* 80295A90 002929F0  38 81 00 38 */	addi r4, r1, 0x38
/* 80295A94 002929F4  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80295A98 002929F8  90 A1 00 38 */	stw r5, 0x38(r1)
/* 80295A9C 002929FC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80295AA0 00292A00  93 E1 00 40 */	stw r31, 0x40(r1)
/* 80295AA4 00292A04  90 01 00 48 */	stw r0, 0x48(r1)
/* 80295AA8 00292A08  4B DB DD F9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80295AAC 00292A0C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80295AB0 00292A10  7F C3 F3 78 */	mr r3, r30
/* 80295AB4 00292A14  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80295AB8 00292A18  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80295ABC 00292A1C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80295AC0 00292A20  83 81 00 50 */	lwz r28, 0x50(r1)
/* 80295AC4 00292A24  7C 08 03 A6 */	mtlr r0
/* 80295AC8 00292A28  38 21 00 60 */	addi r1, r1, 0x60
/* 80295ACC 00292A2C  4E 80 00 20 */	blr

.global sub_80295ad0
sub_80295ad0:
/* 80295AD0 00292A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295AD4 00292A34  7C 08 02 A6 */	mflr r0
/* 80295AD8 00292A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295ADC 00292A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80295AE0 00292A40  7C 7F 1B 78 */	mr r31, r3
/* 80295AE4 00292A44  80 83 00 00 */	lwz r4, 0(r3)
/* 80295AE8 00292A48  80 64 00 04 */	lwz r3, 4(r4)
/* 80295AEC 00292A4C  34 03 FF FF */	addic. r0, r3, -1
/* 80295AF0 00292A50  90 04 00 04 */	stw r0, 4(r4)
/* 80295AF4 00292A54  41 81 00 38 */	bgt lbl_80295B2C
/* 80295AF8 00292A58  80 7F 00 00 */	lwz r3, 0(r31)
/* 80295AFC 00292A5C  80 63 00 00 */	lwz r3, 0(r3)
/* 80295B00 00292A60  28 03 00 00 */	cmplwi r3, 0
/* 80295B04 00292A64  41 82 00 18 */	beq lbl_80295B1C
/* 80295B08 00292A68  81 83 00 00 */	lwz r12, 0(r3)
/* 80295B0C 00292A6C  38 80 00 01 */	li r4, 1
/* 80295B10 00292A70  81 8C 00 08 */	lwz r12, 8(r12)
/* 80295B14 00292A74  7D 89 03 A6 */	mtctr r12
/* 80295B18 00292A78  4E 80 04 21 */	bctrl
lbl_80295B1C:
/* 80295B1C 00292A7C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80295B20 00292A80  28 03 00 00 */	cmplwi r3, 0
/* 80295B24 00292A84  41 82 00 08 */	beq lbl_80295B2C
/* 80295B28 00292A88  48 07 FE 09 */	bl Free__7CMemoryFPCv
lbl_80295B2C:
/* 80295B2C 00292A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295B30 00292A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80295B34 00292A94  7C 08 03 A6 */	mtlr r0
/* 80295B38 00292A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80295B3C 00292A9C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADCB0
lbl_805ADCB0:
	# ROM: 0x3FA550
	.4byte 0
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D5BB0
lbl_803D5BB0:
	# ROM: 0x3D2BB0
	.asciz "Electricity_LCTR"
	.byte 0x50, 0x61, 0x74
	.4byte 0x726F6C00
	.asciz "??(??)"
	.balign 4


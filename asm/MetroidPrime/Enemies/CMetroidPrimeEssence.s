.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CMetroidPrimeEssence_cpp

.section .data
.balign 8

.global lbl_803EB1F0
lbl_803EB1F0:
	# ROM: 0x3E81F0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803EB1FC
lbl_803EB1FC:
	# ROM: 0x3E81FC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803EB208
lbl_803EB208:
	# ROM: 0x3E8208
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803EB214
lbl_803EB214:
	# ROM: 0x3E8214
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c418

.global lbl_803EB220
lbl_803EB220:
	# ROM: 0x3E8220
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c418

.global lbl_803EB22C
lbl_803EB22C:
	# ROM: 0x3E822C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c418

.global lbl_803EB238
lbl_803EB238:
	# ROM: 0x3E8238
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTaunt__10CPatternedFR13CStateManageri

.global lbl_803EB244
lbl_803EB244:
	# ROM: 0x3E8244
	.4byte 0
	.4byte 0
	.4byte __dt__20CMetroidPrimeEssenceFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__20CMetroidPrimeEssenceFfR13CStateManager
	.4byte AcceptScriptMsg__20CMetroidPrimeEssenceF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__20CMetroidPrimeEssenceFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__20CMetroidPrimeEssenceCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__20CMetroidPrimeEssenceCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__20CMetroidPrimeEssenceCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__20CMetroidPrimeEssenceFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__20CMetroidPrimeEssenceFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte PathFind__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__3CAiFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte FadeOut__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
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
	.4byte PathFindEx__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
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
	.4byte HasPatrolPath__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__10CPatternedFR13CStateManagerf
	.4byte ShouldAttack__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__3CAiFR13CStateManagerf
	.4byte HearPlayer__3CAiFR13CStateManagerf
	.4byte CoverCheck__3CAiFR13CStateManagerf
	.4byte CoverFind__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte CoverBlown__3CAiFR13CStateManagerf
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__3CAiFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__3CAiFR13CStateManagerf
	.4byte AggressionCheck__3CAiFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__20CMetroidPrimeEssenceFR13CStateManagerf
	.4byte ShouldMove__20CMetroidPrimeEssenceFR13CStateManagerf
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
	.4byte GetSearchPath__20CMetroidPrimeEssenceFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803EB510
lbl_803EB510:
	# ROM: 0x3E8510
	.4byte lbl_8027E814
	.4byte lbl_8027E618
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E574
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E814
	.4byte lbl_8027E53C
	.4byte lbl_8027E814
	.4byte lbl_8027E60C
	.4byte lbl_8027E804

.global lbl_803EB58C
lbl_803EB58C:
	# ROM: 0x3E858C
	.4byte lbl_80280078
	.4byte lbl_8027FCD4
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_8027FCE8
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280054
	.4byte lbl_80280068
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_8027FD28
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_8027FBDC
	.4byte lbl_8027FCFC
	.4byte lbl_8027FC84
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_80280078
	.4byte lbl_8027FE20
	.4byte lbl_80280078

.section .sdata
.balign 8

.global lbl_805A84A0
lbl_805A84A0:
	# ROM: 0x3F5E40
	.4byte 0x00000013

.global lbl_805A84A4
lbl_805A84A4:
	# ROM: 0x3F5E44
	.4byte 0
	.float 1.5

.global lbl_805A84AC
lbl_805A84AC:
	# ROM: 0x3F5E4C
	.4byte 0x00000013

.global lbl_805A84B0
lbl_805A84B0:
	# ROM: 0x3F5E50
	.4byte 0x0000002F

.global lbl_805A84B4
lbl_805A84B4:
	# ROM: 0x3F5E54
	.4byte 0x00000020

.global lbl_805A84B8
lbl_805A84B8:
	# ROM: 0x3F5E58
	.4byte 0x00000021

.global lbl_805A84BC
lbl_805A84BC:
	# ROM: 0x3F5E5C
	.4byte 0x00000020

.global lbl_805A84C0
lbl_805A84C0:
	# ROM: 0x3F5E60
	.4byte 0x00000021

.global lbl_805A84C4
lbl_805A84C4:
	# ROM: 0x3F5E64
	.4byte 0x00000030

.global lbl_805A84C8
lbl_805A84C8:
	# ROM: 0x3F5E68
	.4byte 0x00000013

.global lbl_805A84CC
lbl_805A84CC:
	# ROM: 0x3F5E6C
	.4byte 0x00000020

.global lbl_805A84D0
lbl_805A84D0:
	# ROM: 0x3F5E70
	.4byte 0x00000021

.global lbl_805A84D4
lbl_805A84D4:
	# ROM: 0x3F5E74
	.4byte 0x00000030

.global lbl_805A84D8
lbl_805A84D8:
	# ROM: 0x3F5E78
	.4byte 0x00000012

.global lbl_805A84DC
lbl_805A84DC:
	# ROM: 0x3F5E7C
	.4byte 0x00000013

.global lbl_805A84E0
lbl_805A84E0:
	# ROM: 0x3F5E80
	.4byte 0x00000030

.global lbl_805A84E4
lbl_805A84E4:
	# ROM: 0x3F5E84
	.4byte 0x00000012

.section .text, "ax"

.global GetSearchPath__20CMetroidPrimeEssenceFv
GetSearchPath__20CMetroidPrimeEssenceFv:
/* 8027CB38 00279A98  38 63 05 74 */	addi r3, r3, 0x574
/* 8027CB3C 00279A9C  4E 80 00 20 */	blr

.global sub_8027cb40
sub_8027cb40:
/* 8027CB40 00279AA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8027CB44 00279AA4  7C 08 02 A6 */	mflr r0
/* 8027CB48 00279AA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027CB4C 00279AAC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8027CB50 00279AB0  7C 9F 23 78 */	mr r31, r4
/* 8027CB54 00279AB4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8027CB58 00279AB8  7C 7E 1B 78 */	mr r30, r3
/* 8027CB5C 00279ABC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8027CB60 00279AC0  93 81 00 50 */	stw r28, 0x50(r1)
/* 8027CB64 00279AC4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8027CB68 00279AC8  38 84 00 04 */	addi r4, r4, 4
/* 8027CB6C 00279ACC  4B F7 81 A1 */	bl GetStepDirection__10CPatternedFRC9CVector3f
/* 8027CB70 00279AD0  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 8027CB74 00279AD4  7C 7C 1B 78 */	mr r28, r3
/* 8027CB78 00279AD8  38 64 00 04 */	addi r3, r4, 4
/* 8027CB7C 00279ADC  4B EB 49 2D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8027CB80 00279AE0  2C 1C 00 00 */	cmpwi r28, 0
/* 8027CB84 00279AE4  40 82 00 98 */	bne lbl_8027CC1C
/* 8027CB88 00279AE8  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 8027CB8C 00279AEC  38 61 00 18 */	addi r3, r1, 0x18
/* 8027CB90 00279AF0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8027CB94 00279AF4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8027CB98 00279AF8  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 8027CB9C 00279AFC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8027CBA0 00279B00  EC 81 00 28 */	fsubs f4, f1, f0
/* 8027CBA4 00279B04  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 8027CBA8 00279B08  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8027CBAC 00279B0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8027CBB0 00279B10  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CBB4 00279B14  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 8027CBB8 00279B18  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8027CBBC 00279B1C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8027CBC0 00279B20  48 09 7C 91 */	bl AsNormalized__9CVector3fCFv
/* 8027CBC4 00279B24  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8027CBC8 00279B28  38 61 00 30 */	addi r3, r1, 0x30
/* 8027CBCC 00279B2C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8027CBD0 00279B30  38 81 00 24 */	addi r4, r1, 0x24
/* 8027CBD4 00279B34  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8027CBD8 00279B38  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8027CBDC 00279B3C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8027CBE0 00279B40  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8027CBE4 00279B44  48 09 7C 6D */	bl AsNormalized__9CVector3fCFv
/* 8027CBE8 00279B48  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8027CBEC 00279B4C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8027CBF0 00279B50  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8027CBF4 00279B54  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027CBF8 00279B58  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8027CBFC 00279B5C  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 8027CC00 00279B60  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 8027CC04 00279B64  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8027CC08 00279B68  C0 02 BD 0C */	lfs f0, lbl_805ADA2C@sda21(r2)
/* 8027CC0C 00279B6C  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8027CC10 00279B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CC14 00279B74  40 80 00 08 */	bge lbl_8027CC1C
/* 8027CC18 00279B78  3B 80 00 01 */	li r28, 1
lbl_8027CC1C:
/* 8027CC1C 00279B7C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8027CC20 00279B80  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8027CC24 00279B84  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8027CC28 00279B88  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8027CC2C 00279B8C  90 01 00 08 */	stw r0, 8(r1)
/* 8027CC30 00279B90  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 8027CC34 00279B94  38 80 00 01 */	li r4, 1
/* 8027CC38 00279B98  38 00 00 00 */	li r0, 0
/* 8027CC3C 00279B9C  3B A3 00 04 */	addi r29, r3, 4
/* 8027CC40 00279BA0  90 81 00 0C */	stw r4, 0xc(r1)
/* 8027CC44 00279BA4  7F A3 EB 78 */	mr r3, r29
/* 8027CC48 00279BA8  38 80 00 01 */	li r4, 1
/* 8027CC4C 00279BAC  90 A1 00 08 */	stw r5, 8(r1)
/* 8027CC50 00279BB0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8027CC54 00279BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CC58 00279BB8  4B EB 47 E1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8027CC5C 00279BBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8027CC60 00279BC0  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8027CC64 00279BC4  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8027CC68 00279BC8  7F 85 E3 78 */	mr r5, r28
/* 8027CC6C 00279BCC  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 8027CC70 00279BD0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8027CC74 00279BD4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8027CC78 00279BD8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8027CC7C 00279BDC  90 BD 00 CC */	stw r5, 0xcc(r29)
/* 8027CC80 00279BE0  90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 8027CC84 00279BE4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8027CC88 00279BE8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8027CC8C 00279BEC  C0 9F 00 04 */	lfs f4, 4(r31)
/* 8027CC90 00279BF0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8027CC94 00279BF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027CC98 00279BF8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8027CC9C 00279BFC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8027CCA0 00279C00  EC 64 18 28 */	fsubs f3, f4, f3
/* 8027CCA4 00279C04  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8027CCA8 00279C08  EC 22 08 28 */	fsubs f1, f2, f1
/* 8027CCAC 00279C0C  90 81 00 08 */	stw r4, 8(r1)
/* 8027CCB0 00279C10  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8027CCB4 00279C14  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8027CCB8 00279C18  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8027CCBC 00279C1C  90 01 00 08 */	stw r0, 8(r1)
/* 8027CCC0 00279C20  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8027CCC4 00279C24  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8027CCC8 00279C28  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8027CCCC 00279C2C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8027CCD0 00279C30  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8027CCD4 00279C34  7C 08 03 A6 */	mtlr r0
/* 8027CCD8 00279C38  38 21 00 60 */	addi r1, r1, 0x60
/* 8027CCDC 00279C3C  4E 80 00 20 */	blr

.global sub_8027cce0
sub_8027cce0:
/* 8027CCE0 00279C40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8027CCE4 00279C44  7C 08 02 A6 */	mflr r0
/* 8027CCE8 00279C48  90 01 00 54 */	stw r0, 0x54(r1)
/* 8027CCEC 00279C4C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8027CCF0 00279C50  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8027CCF4 00279C54  7C 9E 23 78 */	mr r30, r4
/* 8027CCF8 00279C58  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8027CCFC 00279C5C  7C 7D 1B 78 */	mr r29, r3
/* 8027CD00 00279C60  80 03 07 08 */	lwz r0, 0x708(r3)
/* 8027CD04 00279C64  38 61 00 0C */	addi r3, r1, 0xc
/* 8027CD08 00279C68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027CD0C 00279C6C  48 06 C0 C9 */	bl IsPlaying__11CSfxManagerF10CSfxHandle
/* 8027CD10 00279C70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027CD14 00279C74  40 82 00 CC */	bne lbl_8027CDE0
/* 8027CD18 00279C78  83 FD 00 04 */	lwz r31, 4(r29)
/* 8027CD1C 00279C7C  38 E0 00 00 */	li r7, 0
/* 8027CD20 00279C80  C0 42 BD 10 */	lfs f2, lbl_805ADA30@sda21(r2)
/* 8027CD24 00279C84  39 00 00 01 */	li r8, 1
/* 8027CD28 00279C88  C0 22 BD 14 */	lfs f1, lbl_805ADA34@sda21(r2)
/* 8027CD2C 00279C8C  38 C0 00 7F */	li r6, 0x7f
/* 8027CD30 00279C90  C0 02 BD 18 */	lfs f0, lbl_805ADA38@sda21(r2)
/* 8027CD34 00279C94  38 A0 00 14 */	li r5, 0x14
/* 8027CD38 00279C98  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 8027CD3C 00279C9C  7F A3 EB 78 */	mr r3, r29
/* 8027CD40 00279CA0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8027CD44 00279CA4  7F C4 F3 78 */	mr r4, r30
/* 8027CD48 00279CA8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8027CD4C 00279CAC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8027CD50 00279CB0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8027CD54 00279CB4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8027CD58 00279CB8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8027CD5C 00279CBC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8027CD60 00279CC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8027CD64 00279CC4  91 01 00 30 */	stw r8, 0x30(r1)
/* 8027CD68 00279CC8  B0 E1 00 34 */	sth r7, 0x34(r1)
/* 8027CD6C 00279CCC  98 C1 00 36 */	stb r6, 0x36(r1)
/* 8027CD70 00279CD0  98 A1 00 37 */	stb r5, 0x37(r1)
/* 8027CD74 00279CD4  98 E1 00 38 */	stb r7, 0x38(r1)
/* 8027CD78 00279CD8  98 01 00 39 */	stb r0, 0x39(r1)
/* 8027CD7C 00279CDC  48 00 00 81 */	bl sub_8027cdfc
/* 8027CD80 00279CE0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8027CD84 00279CE4  C4 44 66 A0 */	lfsu f2, skZero3f@l(r4)
/* 8027CD88 00279CE8  C0 A3 00 2C */	lfs f5, 0x2c(r3)
/* 8027CD8C 00279CEC  38 00 0B 67 */	li r0, 0xb67
/* 8027CD90 00279CF0  C0 83 00 1C */	lfs f4, 0x1c(r3)
/* 8027CD94 00279CF4  7F E8 FB 78 */	mr r8, r31
/* 8027CD98 00279CF8  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 8027CD9C 00279CFC  38 61 00 08 */	addi r3, r1, 8
/* 8027CDA0 00279D00  C0 24 00 04 */	lfs f1, 4(r4)
/* 8027CDA4 00279D04  38 A0 00 01 */	li r5, 1
/* 8027CDA8 00279D08  C0 04 00 08 */	lfs f0, 8(r4)
/* 8027CDAC 00279D0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8027CDB0 00279D10  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8027CDB4 00279D14  38 E0 00 00 */	li r7, 0
/* 8027CDB8 00279D18  A8 C2 C5 FA */	lha r6, lbl_805AE31A@sda21(r2)
/* 8027CDBC 00279D1C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8027CDC0 00279D20  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8027CDC4 00279D24  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8027CDC8 00279D28  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8027CDCC 00279D2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8027CDD0 00279D30  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8027CDD4 00279D34  48 06 D2 0D */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 8027CDD8 00279D38  80 01 00 08 */	lwz r0, 8(r1)
/* 8027CDDC 00279D3C  90 1D 07 08 */	stw r0, 0x708(r29)
lbl_8027CDE0:
/* 8027CDE0 00279D40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8027CDE4 00279D44  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8027CDE8 00279D48  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8027CDEC 00279D4C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8027CDF0 00279D50  7C 08 03 A6 */	mtlr r0
/* 8027CDF4 00279D54  38 21 00 50 */	addi r1, r1, 0x50
/* 8027CDF8 00279D58  4E 80 00 20 */	blr

.global sub_8027cdfc
sub_8027cdfc:
/* 8027CDFC 00279D5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027CE00 00279D60  7C 08 02 A6 */	mflr r0
/* 8027CE04 00279D64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027CE08 00279D68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027CE0C 00279D6C  7C 7F 1B 78 */	mr r31, r3
/* 8027CE10 00279D70  A0 03 07 06 */	lhz r0, 0x706(r3)
/* 8027CE14 00279D74  7C 83 23 78 */	mr r3, r4
/* 8027CE18 00279D78  38 81 00 08 */	addi r4, r1, 8
/* 8027CE1C 00279D7C  B0 01 00 08 */	sth r0, 8(r1)
/* 8027CE20 00279D80  4B DC F7 85 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8027CE24 00279D84  7C 64 1B 78 */	mr r4, r3
/* 8027CE28 00279D88  38 61 00 0C */	addi r3, r1, 0xc
/* 8027CE2C 00279D8C  4B E3 25 21 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027CE30 00279D90  80 63 00 04 */	lwz r3, 4(r3)
/* 8027CE34 00279D94  28 03 00 00 */	cmplwi r3, 0
/* 8027CE38 00279D98  41 82 00 0C */	beq lbl_8027CE44
/* 8027CE3C 00279D9C  38 63 00 34 */	addi r3, r3, 0x34
/* 8027CE40 00279DA0  48 00 00 08 */	b lbl_8027CE48
lbl_8027CE44:
/* 8027CE44 00279DA4  38 7F 00 34 */	addi r3, r31, 0x34
lbl_8027CE48:
/* 8027CE48 00279DA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027CE4C 00279DAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027CE50 00279DB0  7C 08 03 A6 */	mtlr r0
/* 8027CE54 00279DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8027CE58 00279DB8  4E 80 00 20 */	blr

.global sub_8027ce5c
sub_8027ce5c:
/* 8027CE5C 00279DBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027CE60 00279DC0  7C 08 02 A6 */	mflr r0
/* 8027CE64 00279DC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027CE68 00279DC8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8027CE6C 00279DCC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8027CE70 00279DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027CE74 00279DD4  7C 7F 1B 78 */	mr r31, r3
/* 8027CE78 00279DD8  FF E0 08 90 */	fmr f31, f1
/* 8027CE7C 00279DDC  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8027CE80 00279DE0  4B E9 7D C9 */	bl GetNumMaterialSets__10CModelDataCFv
/* 8027CE84 00279DE4  38 63 FF FE */	addi r3, r3, -2
/* 8027CE88 00279DE8  3C 00 43 30 */	lis r0, 0x4330
/* 8027CE8C 00279DEC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8027CE90 00279DF0  90 01 00 08 */	stw r0, 8(r1)
/* 8027CE94 00279DF4  C8 22 BD 20 */	lfd f1, lbl_805ADA40@sda21(r2)
/* 8027CE98 00279DF8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8027CE9C 00279DFC  80 1F 06 FC */	lwz r0, 0x6fc(r31)
/* 8027CEA0 00279E00  C8 01 00 08 */	lfd f0, 8(r1)
/* 8027CEA4 00279E04  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027CEA8 00279E08  EC 00 07 FC */	fnmsubs f0, f0, f31, f0
/* 8027CEAC 00279E0C  FC 00 00 1E */	fctiwz f0, f0
/* 8027CEB0 00279E10  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8027CEB4 00279E14  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8027CEB8 00279E18  7C 00 18 00 */	cmpw r0, r3
/* 8027CEBC 00279E1C  41 82 00 08 */	beq lbl_8027CEC4
/* 8027CEC0 00279E20  90 7F 06 FC */	stw r3, 0x6fc(r31)
lbl_8027CEC4:
/* 8027CEC4 00279E24  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8027CEC8 00279E28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027CECC 00279E2C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8027CED0 00279E30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027CED4 00279E34  7C 08 03 A6 */	mtlr r0
/* 8027CED8 00279E38  38 21 00 30 */	addi r1, r1, 0x30
/* 8027CEDC 00279E3C  4E 80 00 20 */	blr

.global sub_8027cee0
sub_8027cee0:
/* 8027CEE0 00279E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027CEE4 00279E44  7C 08 02 A6 */	mflr r0
/* 8027CEE8 00279E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027CEEC 00279E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027CEF0 00279E50  7C 9F 23 78 */	mr r31, r4
/* 8027CEF4 00279E54  93 C1 00 08 */	stw r30, 8(r1)
/* 8027CEF8 00279E58  7C 7E 1B 78 */	mr r30, r3
/* 8027CEFC 00279E5C  81 83 00 00 */	lwz r12, 0(r3)
/* 8027CF00 00279E60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027CF04 00279E64  7D 89 03 A6 */	mtctr r12
/* 8027CF08 00279E68  4E 80 04 21 */	bctrl
/* 8027CF0C 00279E6C  C0 5E 06 C4 */	lfs f2, 0x6c4(r30)
/* 8027CF10 00279E70  C0 23 00 00 */	lfs f1, 0(r3)
/* 8027CF14 00279E74  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027CF18 00279E78  EC 22 00 72 */	fmuls f1, f2, f1
/* 8027CF1C 00279E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CF20 00279E80  4C 41 13 82 */	cror 2, 1, 2
/* 8027CF24 00279E84  40 82 00 98 */	bne lbl_8027CFBC
/* 8027CF28 00279E88  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 8027CF2C 00279E8C  38 60 00 00 */	li r3, 0
/* 8027CF30 00279E90  2C 00 00 01 */	cmpwi r0, 1
/* 8027CF34 00279E94  41 82 00 38 */	beq lbl_8027CF6C
/* 8027CF38 00279E98  40 80 00 10 */	bge lbl_8027CF48
/* 8027CF3C 00279E9C  2C 00 00 00 */	cmpwi r0, 0
/* 8027CF40 00279EA0  40 80 00 14 */	bge lbl_8027CF54
/* 8027CF44 00279EA4  48 00 00 5C */	b lbl_8027CFA0
lbl_8027CF48:
/* 8027CF48 00279EA8  2C 00 00 03 */	cmpwi r0, 3
/* 8027CF4C 00279EAC  40 80 00 54 */	bge lbl_8027CFA0
/* 8027CF50 00279EB0  48 00 00 38 */	b lbl_8027CF88
lbl_8027CF54:
/* 8027CF54 00279EB4  C0 02 BD 28 */	lfs f0, lbl_805ADA48@sda21(r2)
/* 8027CF58 00279EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CF5C 00279EBC  40 80 00 44 */	bge lbl_8027CFA0
/* 8027CF60 00279EC0  38 00 00 01 */	li r0, 1
/* 8027CF64 00279EC4  90 1E 06 D8 */	stw r0, 0x6d8(r30)
/* 8027CF68 00279EC8  48 00 00 38 */	b lbl_8027CFA0
lbl_8027CF6C:
/* 8027CF6C 00279ECC  C0 02 BD 2C */	lfs f0, lbl_805ADA4C@sda21(r2)
/* 8027CF70 00279ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CF74 00279ED4  40 80 00 2C */	bge lbl_8027CFA0
/* 8027CF78 00279ED8  38 00 00 02 */	li r0, 2
/* 8027CF7C 00279EDC  38 60 00 01 */	li r3, 1
/* 8027CF80 00279EE0  90 1E 06 D8 */	stw r0, 0x6d8(r30)
/* 8027CF84 00279EE4  48 00 00 1C */	b lbl_8027CFA0
lbl_8027CF88:
/* 8027CF88 00279EE8  C0 02 BD 30 */	lfs f0, lbl_805ADA50@sda21(r2)
/* 8027CF8C 00279EEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027CF90 00279EF0  40 80 00 10 */	bge lbl_8027CFA0
/* 8027CF94 00279EF4  38 00 00 03 */	li r0, 3
/* 8027CF98 00279EF8  38 60 00 01 */	li r3, 1
/* 8027CF9C 00279EFC  90 1E 06 D8 */	stw r0, 0x6d8(r30)
lbl_8027CFA0:
/* 8027CFA0 00279F00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027CFA4 00279F04  41 82 00 18 */	beq lbl_8027CFBC
/* 8027CFA8 00279F08  7F C3 F3 78 */	mr r3, r30
/* 8027CFAC 00279F0C  7F E5 FB 78 */	mr r5, r31
/* 8027CFB0 00279F10  38 80 00 11 */	li r4, 0x11
/* 8027CFB4 00279F14  38 C0 FF FF */	li r6, -1
/* 8027CFB8 00279F18  4B DD 41 09 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8027CFBC:
/* 8027CFBC 00279F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027CFC0 00279F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027CFC4 00279F24  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027CFC8 00279F28  7C 08 03 A6 */	mtlr r0
/* 8027CFCC 00279F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027CFD0 00279F30  4E 80 00 20 */	blr

.global sub_8027cfd4
sub_8027cfd4:
/* 8027CFD4 00279F34  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8027CFD8 00279F38  7C 08 02 A6 */	mflr r0
/* 8027CFDC 00279F3C  90 01 00 94 */	stw r0, 0x94(r1)
/* 8027CFE0 00279F40  BF 01 00 70 */	stmw r24, 0x70(r1)
/* 8027CFE4 00279F44  7C 9D 23 78 */	mr r29, r4
/* 8027CFE8 00279F48  7C B8 2B 78 */	mr r24, r5
/* 8027CFEC 00279F4C  4B FF FE 11 */	bl sub_8027cdfc
/* 8027CFF0 00279F50  7C 7A 1B 78 */	mr r26, r3
/* 8027CFF4 00279F54  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8027CFF8 00279F58  C0 43 00 24 */	lfs f2, 0x24(r3)
/* 8027CFFC 00279F5C  7C 00 00 34 */	cntlzw r0, r0
/* 8027D000 00279F60  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8027D004 00279F64  54 1F D9 7E */	srwi r31, r0, 5
/* 8027D008 00279F68  C0 03 00 04 */	lfs f0, 4(r3)
/* 8027D00C 00279F6C  FC 40 10 50 */	fneg f2, f2
/* 8027D010 00279F70  FC 20 08 50 */	fneg f1, f1
/* 8027D014 00279F74  3B 60 00 01 */	li r27, 1
/* 8027D018 00279F78  FC 00 00 50 */	fneg f0, f0
/* 8027D01C 00279F7C  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 8027D020 00279F80  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8027D024 00279F84  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8027D028 00279F88  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8027D02C 00279F8C  3B 21 00 48 */	addi r25, r1, 0x48
/* 8027D030 00279F90  7F F8 FB 78 */	mr r24, r31
/* 8027D034 00279F94  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8027D038 00279F98  7F 7E F8 30 */	slw r30, r27, r31
/* 8027D03C 00279F9C  7F 39 02 14 */	add r25, r25, r0
/* 8027D040 00279FA0  3B 83 FD 18 */	addi r28, r3, lbl_8059FD18@l
/* 8027D044 00279FA4  C0 7A 00 20 */	lfs f3, 0x20(r26)
/* 8027D048 00279FA8  C0 5A 00 10 */	lfs f2, 0x10(r26)
/* 8027D04C 00279FAC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 8027D050 00279FB0  FC A0 18 50 */	fneg f5, f3
/* 8027D054 00279FB4  FC 80 10 50 */	fneg f4, f2
/* 8027D058 00279FB8  FC 00 08 50 */	fneg f0, f1
/* 8027D05C 00279FBC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8027D060 00279FC0  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8027D064 00279FC4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8027D068 00279FC8  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 8027D06C 00279FCC  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8027D070 00279FD0  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8027D074 00279FD4  48 00 00 54 */	b lbl_8027D0C8
lbl_8027D078:
/* 8027D078 00279FD8  C0 7A 00 2C */	lfs f3, 0x2c(r26)
/* 8027D07C 00279FDC  7F A4 EB 78 */	mr r4, r29
/* 8027D080 00279FE0  C0 5A 00 1C */	lfs f2, 0x1c(r26)
/* 8027D084 00279FE4  7F 26 CB 78 */	mr r6, r25
/* 8027D088 00279FE8  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8027D08C 00279FEC  7F 87 E3 78 */	mr r7, r28
/* 8027D090 00279FF0  C0 22 BD 34 */	lfs f1, lbl_805ADA54@sda21(r2)
/* 8027D094 00279FF4  38 61 00 18 */	addi r3, r1, 0x18
/* 8027D098 00279FF8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027D09C 00279FFC  38 A1 00 08 */	addi r5, r1, 8
/* 8027D0A0 0027A000  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8027D0A4 0027A004  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8027D0A8 0027A008  4B DC FE F1 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8027D0AC 0027A00C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 8027D0B0 0027A010  28 00 00 00 */	cmplwi r0, 0
/* 8027D0B4 0027A014  40 82 00 0C */	bne lbl_8027D0C0
/* 8027D0B8 0027A018  7F 60 C0 30 */	slw r0, r27, r24
/* 8027D0BC 0027A01C  7F DE 03 78 */	or r30, r30, r0
lbl_8027D0C0:
/* 8027D0C0 0027A020  3B 39 00 0C */	addi r25, r25, 0xc
/* 8027D0C4 0027A024  3B 18 00 01 */	addi r24, r24, 1
lbl_8027D0C8:
/* 8027D0C8 0027A028  2C 18 00 03 */	cmpwi r24, 3
/* 8027D0CC 0027A02C  41 80 FF AC */	blt lbl_8027D078
/* 8027D0D0 0027A030  2C 1E 00 07 */	cmpwi r30, 7
/* 8027D0D4 0027A034  38 60 00 00 */	li r3, 0
/* 8027D0D8 0027A038  41 81 00 F8 */	bgt lbl_8027D1D0
/* 8027D0DC 0027A03C  3C 80 AA AB */	lis r4, 0xAAAAAAAA@ha
/* 8027D0E0 0027A040  3C C0 55 55 */	lis r6, 0x55555555@ha
/* 8027D0E4 0027A044  38 04 AA AA */	addi r0, r4, 0xAAAAAAAA@l
/* 8027D0E8 0027A048  3C A0 CC CD */	lis r5, 0xCCCCCCCC@ha
/* 8027D0EC 0027A04C  39 06 55 55 */	addi r8, r6, 0x55555555@l
/* 8027D0F0 0027A050  3C C0 33 33 */	lis r6, 0x33333333@ha
/* 8027D0F4 0027A054  7F C7 00 38 */	and r7, r30, r0
/* 8027D0F8 0027A058  38 05 CC CC */	addi r0, r5, 0xCCCCCCCC@l
/* 8027D0FC 0027A05C  54 E5 F8 7E */	srwi r5, r7, 1
/* 8027D100 0027A060  7F C8 40 38 */	and r8, r30, r8
/* 8027D104 0027A064  7D 08 2A 14 */	add r8, r8, r5
/* 8027D108 0027A068  38 E6 33 33 */	addi r7, r6, 0x33333333@l
/* 8027D10C 0027A06C  7D 06 00 38 */	and r6, r8, r0
/* 8027D110 0027A070  3C 80 F0 F1 */	lis r4, 0xF0F0F0F0@ha
/* 8027D114 0027A074  38 04 F0 F0 */	addi r0, r4, 0xF0F0F0F0@l
/* 8027D118 0027A078  3C A0 0F 0F */	lis r5, 0x0F0F0F0F@ha
/* 8027D11C 0027A07C  7D 08 38 38 */	and r8, r8, r7
/* 8027D120 0027A080  3C 80 FF 01 */	lis r4, 0xFF00FF00@ha
/* 8027D124 0027A084  38 E5 0F 0F */	addi r7, r5, 0x0F0F0F0F@l
/* 8027D128 0027A088  54 C5 F0 BE */	srwi r5, r6, 2
/* 8027D12C 0027A08C  7D 08 2A 14 */	add r8, r8, r5
/* 8027D130 0027A090  7D 06 00 38 */	and r6, r8, r0
/* 8027D134 0027A094  3C A0 00 FF */	lis r5, 0x00FF00FF@ha
/* 8027D138 0027A098  38 04 FF 00 */	addi r0, r4, 0xFF00FF00@l
/* 8027D13C 0027A09C  7D 07 38 38 */	and r7, r8, r7
/* 8027D140 0027A0A0  38 85 00 FF */	addi r4, r5, 0x00FF00FF@l
/* 8027D144 0027A0A4  54 C5 E1 3E */	srwi r5, r6, 4
/* 8027D148 0027A0A8  7C A7 2A 14 */	add r5, r7, r5
/* 8027D14C 0027A0AC  7C A0 00 38 */	and r0, r5, r0
/* 8027D150 0027A0B0  7C A4 20 38 */	and r4, r5, r4
/* 8027D154 0027A0B4  54 00 C2 3E */	srwi r0, r0, 8
/* 8027D158 0027A0B8  7C 04 02 14 */	add r0, r4, r0
/* 8027D15C 0027A0BC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8027D160 0027A0C0  54 00 84 3E */	srwi r0, r0, 0x10
/* 8027D164 0027A0C4  7C 04 02 14 */	add r0, r4, r0
/* 8027D168 0027A0C8  2C 00 00 02 */	cmpwi r0, 2
/* 8027D16C 0027A0CC  41 82 00 28 */	beq lbl_8027D194
/* 8027D170 0027A0D0  40 80 00 10 */	bge lbl_8027D180
/* 8027D174 0027A0D4  2C 00 00 01 */	cmpwi r0, 1
/* 8027D178 0027A0D8  40 80 00 14 */	bge lbl_8027D18C
/* 8027D17C 0027A0DC  48 00 00 54 */	b lbl_8027D1D0
lbl_8027D180:
/* 8027D180 0027A0E0  2C 00 00 04 */	cmpwi r0, 4
/* 8027D184 0027A0E4  40 80 00 4C */	bge lbl_8027D1D0
/* 8027D188 0027A0E8  48 00 00 38 */	b lbl_8027D1C0
lbl_8027D18C:
/* 8027D18C 0027A0EC  7F C3 0E 70 */	srawi r3, r30, 1
/* 8027D190 0027A0F0  48 00 00 40 */	b lbl_8027D1D0
lbl_8027D194:
/* 8027D194 0027A0F4  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8027D198 0027A0F8  48 09 53 89 */	bl Next__9CRandom16Fv
/* 8027D19C 0027A0FC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8027D1A0 0027A100  41 82 00 14 */	beq lbl_8027D1B4
/* 8027D1A4 0027A104  57 C3 F7 FE */	rlwinm r3, r30, 0x1e, 0x1f, 0x1f
/* 8027D1A8 0027A108  38 03 00 01 */	addi r0, r3, 1
/* 8027D1AC 0027A10C  7C 03 03 78 */	mr r3, r0
/* 8027D1B0 0027A110  48 00 00 20 */	b lbl_8027D1D0
lbl_8027D1B4:
/* 8027D1B4 0027A114  57 C0 07 FE */	clrlwi r0, r30, 0x1f
/* 8027D1B8 0027A118  68 03 00 01 */	xori r3, r0, 1
/* 8027D1BC 0027A11C  48 00 00 14 */	b lbl_8027D1D0
lbl_8027D1C0:
/* 8027D1C0 0027A120  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8027D1C4 0027A124  7F E4 FB 78 */	mr r4, r31
/* 8027D1C8 0027A128  38 A0 00 02 */	li r5, 2
/* 8027D1CC 0027A12C  48 09 53 C9 */	bl Range__9CRandom16Fii
lbl_8027D1D0:
/* 8027D1D0 0027A130  3C 80 80 3D */	lis r4, lbl_803D5890@ha
/* 8027D1D4 0027A134  54 60 10 3A */	slwi r0, r3, 2
/* 8027D1D8 0027A138  38 64 58 90 */	addi r3, r4, lbl_803D5890@l
/* 8027D1DC 0027A13C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027D1E0 0027A140  BB 01 00 70 */	lmw r24, 0x70(r1)
/* 8027D1E4 0027A144  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8027D1E8 0027A148  7C 08 03 A6 */	mtlr r0
/* 8027D1EC 0027A14C  38 21 00 90 */	addi r1, r1, 0x90
/* 8027D1F0 0027A150  4E 80 00 20 */	blr

.global sub_8027d1f4
sub_8027d1f4:
/* 8027D1F4 0027A154  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8027D1F8 0027A158  7C 08 02 A6 */	mflr r0
/* 8027D1FC 0027A15C  C0 02 BD 38 */	lfs f0, lbl_805ADA58@sda21(r2)
/* 8027D200 0027A160  38 C0 00 01 */	li r6, 1
/* 8027D204 0027A164  90 01 00 84 */	stw r0, 0x84(r1)
/* 8027D208 0027A168  38 A0 00 00 */	li r5, 0
/* 8027D20C 0027A16C  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 8027D210 0027A170  7C 7E 1B 78 */	mr r30, r3
/* 8027D214 0027A174  3C 60 80 3D */	lis r3, lbl_803D5880@ha
/* 8027D218 0027A178  7C 9F 23 78 */	mr r31, r4
/* 8027D21C 0027A17C  38 63 58 80 */	addi r3, r3, lbl_803D5880@l
/* 8027D220 0027A180  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 8027D224 0027A184  C0 02 BD 3C */	lfs f0, lbl_805ADA5C@sda21(r2)
/* 8027D228 0027A188  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027D22C 0027A18C  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8027D230 0027A190  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027D234 0027A194  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027D238 0027A198  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 8027D23C 0027A19C  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027D240 0027A1A0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 8027D244 0027A1A4  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027D248 0027A1A8  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8027D24C 0027A1AC  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027D250 0027A1B0  80 84 08 B8 */	lwz r4, 0x8b8(r4)
/* 8027D254 0027A1B4  80 BE 06 DC */	lwz r5, 0x6dc(r30)
/* 8027D258 0027A1B8  80 84 00 00 */	lwz r4, 0(r4)
/* 8027D25C 0027A1BC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 8027D260 0027A1C0  54 00 10 3A */	slwi r0, r0, 2
/* 8027D264 0027A1C4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8027D268 0027A1C8  7C 03 28 50 */	subf r0, r3, r5
/* 8027D26C 0027A1CC  7C 03 28 00 */	cmpw r3, r5
/* 8027D270 0027A1D0  7C 00 00 34 */	cntlzw r0, r0
/* 8027D274 0027A1D4  54 03 D9 7E */	srwi r3, r0, 5
/* 8027D278 0027A1D8  3B 83 0B 7D */	addi r28, r3, 0xb7d
/* 8027D27C 0027A1DC  40 82 01 30 */	bne lbl_8027D3AC
/* 8027D280 0027A1E0  3C 60 80 3D */	lis r3, lbl_803D589C@ha
/* 8027D284 0027A1E4  3B 60 00 00 */	li r27, 0
/* 8027D288 0027A1E8  38 83 58 9C */	addi r4, r3, lbl_803D589C@l
/* 8027D28C 0027A1EC  38 60 03 40 */	li r3, 0x340
/* 8027D290 0027A1F0  38 84 00 1D */	addi r4, r4, 0x1d
/* 8027D294 0027A1F4  38 A0 00 00 */	li r5, 0
/* 8027D298 0027A1F8  48 09 85 D5 */	bl __nw__FUlPCcPCc
/* 8027D29C 0027A1FC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8027D2A0 0027A200  41 82 00 2C */	beq lbl_8027D2CC
/* 8027D2A4 0027A204  38 61 00 0C */	addi r3, r1, 0xc
/* 8027D2A8 0027A208  38 9E 05 68 */	addi r4, r30, 0x568
/* 8027D2AC 0027A20C  48 0C 3B FD */	bl __ct__6CTokenFRC6CToken
/* 8027D2B0 0027A210  7F A3 EB 78 */	mr r3, r29
/* 8027D2B4 0027A214  38 81 00 0C */	addi r4, r1, 0xc
/* 8027D2B8 0027A218  3B 60 00 01 */	li r27, 1
/* 8027D2BC 0027A21C  38 A0 00 00 */	li r5, 0
/* 8027D2C0 0027A220  38 C0 00 01 */	li r6, 1
/* 8027D2C4 0027A224  48 0A 21 1D */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 8027D2C8 0027A228  7C 7D 1B 78 */	mr r29, r3
lbl_8027D2CC:
/* 8027D2CC 0027A22C  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027D2D0 0027A230  28 03 00 00 */	cmplwi r3, 0
/* 8027D2D4 0027A234  41 82 00 18 */	beq lbl_8027D2EC
/* 8027D2D8 0027A238  81 83 00 00 */	lwz r12, 0(r3)
/* 8027D2DC 0027A23C  38 80 00 01 */	li r4, 1
/* 8027D2E0 0027A240  81 8C 00 08 */	lwz r12, 8(r12)
/* 8027D2E4 0027A244  7D 89 03 A6 */	mtctr r12
/* 8027D2E8 0027A248  4E 80 04 21 */	bctrl
lbl_8027D2EC:
/* 8027D2EC 0027A24C  7F 60 07 75 */	extsb. r0, r27
/* 8027D2F0 0027A250  93 BE 06 5C */	stw r29, 0x65c(r30)
/* 8027D2F4 0027A254  41 82 00 10 */	beq lbl_8027D304
/* 8027D2F8 0027A258  38 61 00 0C */	addi r3, r1, 0xc
/* 8027D2FC 0027A25C  38 80 00 00 */	li r4, 0
/* 8027D300 0027A260  48 0C 3B 41 */	bl __dt__6CTokenFv
lbl_8027D304:
/* 8027D304 0027A264  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 8027D308 0027A268  28 00 00 00 */	cmplwi r0, 0
/* 8027D30C 0027A26C  41 82 00 A0 */	beq lbl_8027D3AC
/* 8027D310 0027A270  7F C3 F3 78 */	mr r3, r30
/* 8027D314 0027A274  7F E4 FB 78 */	mr r4, r31
/* 8027D318 0027A278  4B FF FA E5 */	bl sub_8027cdfc
/* 8027D31C 0027A27C  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8027D320 0027A280  7C 7F 1B 78 */	mr r31, r3
/* 8027D324 0027A284  38 81 00 2C */	addi r4, r1, 0x2c
/* 8027D328 0027A288  C0 05 00 00 */	lfs f0, 0(r5)
/* 8027D32C 0027A28C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8027D330 0027A290  C0 05 00 04 */	lfs f0, 4(r5)
/* 8027D334 0027A294  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8027D338 0027A298  C0 05 00 08 */	lfs f0, 8(r5)
/* 8027D33C 0027A29C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8027D340 0027A2A0  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027D344 0027A2A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8027D348 0027A2A8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8027D34C 0027A2AC  7D 89 03 A6 */	mtctr r12
/* 8027D350 0027A2B0  4E 80 04 21 */	bctrl
/* 8027D354 0027A2B4  83 BE 06 5C */	lwz r29, 0x65c(r30)
/* 8027D358 0027A2B8  7F E4 FB 78 */	mr r4, r31
/* 8027D35C 0027A2BC  38 61 00 38 */	addi r3, r1, 0x38
/* 8027D360 0027A2C0  48 09 58 E1 */	bl GetRotation__12CTransform4fCFv
/* 8027D364 0027A2C4  7F A3 EB 78 */	mr r3, r29
/* 8027D368 0027A2C8  38 81 00 38 */	addi r4, r1, 0x38
/* 8027D36C 0027A2CC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027D370 0027A2D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8027D374 0027A2D4  7D 89 03 A6 */	mtctr r12
/* 8027D378 0027A2D8  4E 80 04 21 */	bctrl
/* 8027D37C 0027A2DC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8027D380 0027A2E0  38 81 00 20 */	addi r4, r1, 0x20
/* 8027D384 0027A2E4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8027D388 0027A2E8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8027D38C 0027A2EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8027D390 0027A2F0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8027D394 0027A2F4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8027D398 0027A2F8  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027D39C 0027A2FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8027D3A0 0027A300  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8027D3A4 0027A304  7D 89 03 A6 */	mtctr r12
/* 8027D3A8 0027A308  4E 80 04 21 */	bctrl
lbl_8027D3AC:
/* 8027D3AC 0027A30C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8027D3B0 0027A310  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8027D3B4 0027A314  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8027D3B8 0027A318  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 8027D3BC 0027A31C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8027D3C0 0027A320  7F 84 E3 78 */	mr r4, r28
/* 8027D3C4 0027A324  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 8027D3C8 0027A328  38 61 00 08 */	addi r3, r1, 8
/* 8027D3CC 0027A32C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027D3D0 0027A330  38 A1 00 14 */	addi r5, r1, 0x14
/* 8027D3D4 0027A334  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8027D3D8 0027A338  38 E0 00 01 */	li r7, 1
/* 8027D3DC 0027A33C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8027D3E0 0027A340  39 00 00 00 */	li r8, 0
/* 8027D3E4 0027A344  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8027D3E8 0027A348  48 06 CE C9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8027D3EC 0027A34C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 8027D3F0 0027A350  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 8027D3F4 0027A354  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 8027D3F8 0027A358  38 03 00 01 */	addi r0, r3, 1
/* 8027D3FC 0027A35C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 8027D400 0027A360  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 8027D404 0027A364  2C 00 00 02 */	cmpwi r0, 2
/* 8027D408 0027A368  40 81 00 0C */	ble lbl_8027D414
/* 8027D40C 0027A36C  38 00 00 00 */	li r0, 0
/* 8027D410 0027A370  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_8027D414:
/* 8027D414 0027A374  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 8027D418 0027A378  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8027D41C 0027A37C  7C 08 03 A6 */	mtlr r0
/* 8027D420 0027A380  38 21 00 80 */	addi r1, r1, 0x80
/* 8027D424 0027A384  4E 80 00 20 */	blr

.global sub_8027d428
sub_8027d428:
/* 8027D428 0027A388  38 60 00 02 */	li r3, 2
/* 8027D42C 0027A38C  4E 80 00 20 */	blr

.global sub_8027d430
sub_8027d430:
/* 8027D430 0027A390  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8027D434 0027A394  7C 08 02 A6 */	mflr r0
/* 8027D438 0027A398  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8027D43C 0027A39C  93 E1 00 EC */	stw r31, 0xec(r1)
/* 8027D440 0027A3A0  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 8027D444 0027A3A4  7C 9E 23 78 */	mr r30, r4
/* 8027D448 0027A3A8  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 8027D44C 0027A3AC  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8027D450 0027A3B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8027D454 0027A3B4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8027D458 0027A3B8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8027D45C 0027A3BC  EC 84 00 28 */	fsubs f4, f4, f0
/* 8027D460 0027A3C0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8027D464 0027A3C4  38 61 00 08 */	addi r3, r1, 8
/* 8027D468 0027A3C8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8027D46C 0027A3CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 8027D470 0027A3D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027D474 0027A3D4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8027D478 0027A3D8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8027D47C 0027A3DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027D480 0027A3E0  48 09 74 39 */	bl Magnitude__9CVector3fCFv
/* 8027D484 0027A3E4  C0 62 BD 40 */	lfs f3, lbl_805ADA60@sda21(r2)
/* 8027D488 0027A3E8  C0 42 BD 2C */	lfs f2, lbl_805ADA4C@sda21(r2)
/* 8027D48C 0027A3EC  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027D490 0027A3F0  EC 43 10 7C */	fnmsubs f2, f3, f1, f2
/* 8027D494 0027A3F4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8027D498 0027A3F8  40 81 00 7C */	ble lbl_8027D514
/* 8027D49C 0027A3FC  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 8027D4A0 0027A400  2C 00 00 02 */	cmpwi r0, 2
/* 8027D4A4 0027A404  40 82 00 0C */	bne lbl_8027D4B0
/* 8027D4A8 0027A408  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 8027D4AC 0027A40C  48 00 00 08 */	b lbl_8027D4B4
lbl_8027D4B0:
/* 8027D4B0 0027A410  38 00 00 04 */	li r0, 4
lbl_8027D4B4:
/* 8027D4B4 0027A414  2C 00 00 01 */	cmpwi r0, 1
/* 8027D4B8 0027A418  41 82 00 5C */	beq lbl_8027D514
/* 8027D4BC 0027A41C  C0 22 BD 2C */	lfs f1, lbl_805ADA4C@sda21(r2)
/* 8027D4C0 0027A420  38 61 00 14 */	addi r3, r1, 0x14
/* 8027D4C4 0027A424  4B EE 03 6D */	bl __ct__16CCameraShakeDataFff
/* 8027D4C8 0027A428  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 8027D4CC 0027A42C  38 81 00 14 */	addi r4, r1, 0x14
/* 8027D4D0 0027A430  38 A0 00 01 */	li r5, 1
/* 8027D4D4 0027A434  4B D8 D5 4D */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 8027D4D8 0027A438  34 81 00 94 */	addic. r4, r1, 0x94
/* 8027D4DC 0027A43C  41 82 00 10 */	beq lbl_8027D4EC
/* 8027D4E0 0027A440  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8027D4E4 0027A444  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8027D4E8 0027A448  90 04 00 00 */	stw r0, 0(r4)
lbl_8027D4EC:
/* 8027D4EC 0027A44C  34 81 00 58 */	addic. r4, r1, 0x58
/* 8027D4F0 0027A450  41 82 00 10 */	beq lbl_8027D500
/* 8027D4F4 0027A454  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8027D4F8 0027A458  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8027D4FC 0027A45C  90 04 00 00 */	stw r0, 0(r4)
lbl_8027D500:
/* 8027D500 0027A460  34 81 00 1C */	addic. r4, r1, 0x1c
/* 8027D504 0027A464  41 82 00 10 */	beq lbl_8027D514
/* 8027D508 0027A468  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8027D50C 0027A46C  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8027D510 0027A470  90 04 00 00 */	stw r0, 0(r4)
lbl_8027D514:
/* 8027D514 0027A474  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8027D518 0027A478  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 8027D51C 0027A47C  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 8027D520 0027A480  7C 08 03 A6 */	mtlr r0
/* 8027D524 0027A484  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8027D528 0027A488  4E 80 00 20 */	blr

.global sub_8027d52c
sub_8027d52c:
/* 8027D52C 0027A48C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8027D530 0027A490  7C 08 02 A6 */	mflr r0
/* 8027D534 0027A494  90 01 01 14 */	stw r0, 0x114(r1)
/* 8027D538 0027A498  BF 21 00 F4 */	stmw r25, 0xf4(r1)
/* 8027D53C 0027A49C  7C 7B 1B 78 */	mr r27, r3
/* 8027D540 0027A4A0  7C 9D 23 78 */	mr r29, r4
/* 8027D544 0027A4A4  7C BE 2B 78 */	mr r30, r5
/* 8027D548 0027A4A8  38 61 00 90 */	addi r3, r1, 0x90
/* 8027D54C 0027A4AC  7F 64 DB 78 */	mr r4, r27
/* 8027D550 0027A4B0  7F A5 EB 78 */	mr r5, r29
/* 8027D554 0027A4B4  48 00 01 B1 */	bl sub_8027d704
/* 8027D558 0027A4B8  88 81 00 B0 */	lbz r4, 0xb0(r1)
/* 8027D55C 0027A4BC  3B E1 00 C4 */	addi r31, r1, 0xc4
/* 8027D560 0027A4C0  C0 E1 00 90 */	lfs f7, 0x90(r1)
/* 8027D564 0027A4C4  C0 C1 00 94 */	lfs f6, 0x94(r1)
/* 8027D568 0027A4C8  28 04 00 00 */	cmplwi r4, 0
/* 8027D56C 0027A4CC  C0 A1 00 98 */	lfs f5, 0x98(r1)
/* 8027D570 0027A4D0  C0 81 00 9C */	lfs f4, 0x9c(r1)
/* 8027D574 0027A4D4  C0 61 00 A0 */	lfs f3, 0xa0(r1)
/* 8027D578 0027A4D8  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 8027D57C 0027A4DC  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8027D580 0027A4E0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8027D584 0027A4E4  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 8027D588 0027A4E8  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 8027D58C 0027A4EC  D0 E1 00 C0 */	stfs f7, 0xc0(r1)
/* 8027D590 0027A4F0  D0 C1 00 C4 */	stfs f6, 0xc4(r1)
/* 8027D594 0027A4F4  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 8027D598 0027A4F8  D0 81 00 CC */	stfs f4, 0xcc(r1)
/* 8027D59C 0027A4FC  D0 61 00 D0 */	stfs f3, 0xd0(r1)
/* 8027D5A0 0027A500  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 8027D5A4 0027A504  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 8027D5A8 0027A508  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8027D5AC 0027A50C  98 81 00 E0 */	stb r4, 0xe0(r1)
/* 8027D5B0 0027A510  90 61 00 EC */	stw r3, 0xec(r1)
/* 8027D5B4 0027A514  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8027D5B8 0027A518  41 82 01 38 */	beq lbl_8027D6F0
/* 8027D5BC 0027A51C  3C 60 80 3D */	lis r3, lbl_803D589C@ha
/* 8027D5C0 0027A520  3B 40 00 00 */	li r26, 0
/* 8027D5C4 0027A524  38 63 58 9C */	addi r3, r3, lbl_803D589C@l
/* 8027D5C8 0027A528  3B 20 00 00 */	li r25, 0
/* 8027D5CC 0027A52C  38 83 00 1D */	addi r4, r3, 0x1d
/* 8027D5D0 0027A530  38 60 09 88 */	li r3, 0x988
/* 8027D5D4 0027A534  38 A0 00 00 */	li r5, 0
/* 8027D5D8 0027A538  48 09 82 95 */	bl __nw__FUlPCcPCc
/* 8027D5DC 0027A53C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8027D5E0 0027A540  41 82 00 A4 */	beq lbl_8027D684
/* 8027D5E4 0027A544  A0 FB 00 08 */	lhz r7, 8(r27)
/* 8027D5E8 0027A548  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 8027D5EC 0027A54C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8027D5F0 0027A550  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 8027D5F4 0027A554  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 8027D5F8 0027A558  38 61 00 44 */	addi r3, r1, 0x44
/* 8027D5FC 0027A55C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8027D600 0027A560  38 C1 00 30 */	addi r6, r1, 0x30
/* 8027D604 0027A564  90 01 00 30 */	stw r0, 0x30(r1)
/* 8027D608 0027A568  80 1B 00 04 */	lwz r0, 4(r27)
/* 8027D60C 0027A56C  B0 E1 00 10 */	sth r7, 0x10(r1)
/* 8027D610 0027A570  90 01 00 28 */	stw r0, 0x28(r1)
/* 8027D614 0027A574  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8027D618 0027A578  4B DD 3E 6D */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8027D61C 0027A57C  3C 80 80 3D */	lis r4, lbl_803D589C@ha
/* 8027D620 0027A580  38 61 00 34 */	addi r3, r1, 0x34
/* 8027D624 0027A584  38 84 58 9C */	addi r4, r4, lbl_803D589C@l
/* 8027D628 0027A588  3B 40 00 01 */	li r26, 1
/* 8027D62C 0027A58C  38 84 00 24 */	addi r4, r4, 0x24
/* 8027D630 0027A590  4B D8 76 89 */	bl string_l__4rstlFPCc
/* 8027D634 0027A594  7F A4 EB 78 */	mr r4, r29
/* 8027D638 0027A598  38 61 00 08 */	addi r3, r1, 8
/* 8027D63C 0027A59C  3B 20 00 01 */	li r25, 1
/* 8027D640 0027A5A0  4B DC FA 9D */	bl AllocateUniqueId__13CStateManagerFv
/* 8027D644 0027A5A4  A0 01 00 08 */	lhz r0, 8(r1)
/* 8027D648 0027A5A8  7F E4 FB 78 */	mr r4, r31
/* 8027D64C 0027A5AC  38 61 00 5C */	addi r3, r1, 0x5c
/* 8027D650 0027A5B0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8027D654 0027A5B4  48 09 5A ED */	bl Translate__12CTransform4fFRC9CVector3f
/* 8027D658 0027A5B8  C0 22 BD 44 */	lfs f1, lbl_805ADA64@sda21(r2)
/* 8027D65C 0027A5BC  7F 83 E3 78 */	mr r3, r28
/* 8027D660 0027A5C0  C0 42 BD 2C */	lfs f2, lbl_805ADA4C@sda21(r2)
/* 8027D664 0027A5C4  7F C9 F3 78 */	mr r9, r30
/* 8027D668 0027A5C8  38 81 00 0C */	addi r4, r1, 0xc
/* 8027D66C 0027A5CC  38 A1 00 34 */	addi r5, r1, 0x34
/* 8027D670 0027A5D0  38 C1 00 44 */	addi r6, r1, 0x44
/* 8027D674 0027A5D4  38 E1 00 5C */	addi r7, r1, 0x5c
/* 8027D678 0027A5D8  39 01 00 14 */	addi r8, r1, 0x14
/* 8027D67C 0027A5DC  4B FB 4C DD */	bl __ct__10CShockWaveFv
/* 8027D680 0027A5E0  7C 7C 1B 78 */	mr r28, r3
lbl_8027D684:
/* 8027D684 0027A5E4  7F 20 07 75 */	extsb. r0, r25
/* 8027D688 0027A5E8  41 82 00 0C */	beq lbl_8027D694
/* 8027D68C 0027A5EC  38 61 00 34 */	addi r3, r1, 0x34
/* 8027D690 0027A5F0  48 0C 04 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8027D694:
/* 8027D694 0027A5F4  7F 40 07 75 */	extsb. r0, r26
/* 8027D698 0027A5F8  41 82 00 44 */	beq lbl_8027D6DC
/* 8027D69C 0027A5FC  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8027D6A0 0027A600  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8027D6A4 0027A604  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027D6A8 0027A608  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8027D6AC 0027A60C  7C 64 1B 78 */	mr r4, r3
/* 8027D6B0 0027A610  7C 03 02 14 */	add r0, r3, r0
/* 8027D6B4 0027A614  90 61 00 18 */	stw r3, 0x18(r1)
/* 8027D6B8 0027A618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027D6BC 0027A61C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8027D6C0 0027A620  48 00 00 08 */	b lbl_8027D6C8
lbl_8027D6C4:
/* 8027D6C4 0027A624  38 84 00 0C */	addi r4, r4, 0xc
lbl_8027D6C8:
/* 8027D6C8 0027A628  7C 04 00 40 */	cmplw r4, r0
/* 8027D6CC 0027A62C  40 82 FF F8 */	bne lbl_8027D6C4
/* 8027D6D0 0027A630  28 03 00 00 */	cmplwi r3, 0
/* 8027D6D4 0027A634  41 82 00 08 */	beq lbl_8027D6DC
/* 8027D6D8 0027A638  48 09 82 59 */	bl Free__7CMemoryFPCv
lbl_8027D6DC:
/* 8027D6DC 0027A63C  28 1C 00 00 */	cmplwi r28, 0
/* 8027D6E0 0027A640  41 82 00 10 */	beq lbl_8027D6F0
/* 8027D6E4 0027A644  7F A3 EB 78 */	mr r3, r29
/* 8027D6E8 0027A648  7F 84 E3 78 */	mr r4, r28
/* 8027D6EC 0027A64C  4B DC F6 09 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_8027D6F0:
/* 8027D6F0 0027A650  BB 21 00 F4 */	lmw r25, 0xf4(r1)
/* 8027D6F4 0027A654  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8027D6F8 0027A658  7C 08 03 A6 */	mtlr r0
/* 8027D6FC 0027A65C  38 21 01 10 */	addi r1, r1, 0x110
/* 8027D700 0027A660  4E 80 00 20 */	blr

.global sub_8027d704
sub_8027d704:
/* 8027D704 0027A664  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027D708 0027A668  7C 08 02 A6 */	mflr r0
/* 8027D70C 0027A66C  3C E0 80 5A */	lis r7, lbl_805A66F4@ha
/* 8027D710 0027A670  3C C0 80 5A */	lis r6, lbl_8059FD18@ha
/* 8027D714 0027A674  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027D718 0027A678  39 07 66 F4 */	addi r8, r7, lbl_805A66F4@l
/* 8027D71C 0027A67C  7C A0 2B 78 */	mr r0, r5
/* 8027D720 0027A680  38 E6 FD 18 */	addi r7, r6, lbl_8059FD18@l
/* 8027D724 0027A684  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027D728 0027A688  7C 7F 1B 78 */	mr r31, r3
/* 8027D72C 0027A68C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8027D730 0027A690  38 C1 00 08 */	addi r6, r1, 8
/* 8027D734 0027A694  C0 48 00 00 */	lfs f2, 0(r8)
/* 8027D738 0027A698  C0 08 00 08 */	lfs f0, 8(r8)
/* 8027D73C 0027A69C  FC 60 10 50 */	fneg f3, f2
/* 8027D740 0027A6A0  C0 28 00 04 */	lfs f1, 4(r8)
/* 8027D744 0027A6A4  FC 00 00 50 */	fneg f0, f0
/* 8027D748 0027A6A8  FC 40 08 50 */	fneg f2, f1
/* 8027D74C 0027A6AC  C0 22 BD 48 */	lfs f1, lbl_805ADA68@sda21(r2)
/* 8027D750 0027A6B0  D0 61 00 08 */	stfs f3, 8(r1)
/* 8027D754 0027A6B4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8027D758 0027A6B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8027D75C 0027A6BC  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8027D760 0027A6C0  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 8027D764 0027A6C4  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8027D768 0027A6C8  7C 04 03 78 */	mr r4, r0
/* 8027D76C 0027A6CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027D770 0027A6D0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8027D774 0027A6D4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8027D778 0027A6D8  4B DC F8 21 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8027D77C 0027A6DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027D780 0027A6E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027D784 0027A6E4  7C 08 03 A6 */	mtlr r0
/* 8027D788 0027A6E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8027D78C 0027A6EC  4E 80 00 20 */	blr

.global sub_8027d790
sub_8027d790:
/* 8027D790 0027A6F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027D794 0027A6F4  7C 08 02 A6 */	mflr r0
/* 8027D798 0027A6F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027D79C 0027A6FC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8027D7A0 0027A700  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8027D7A4 0027A704  7C BE 2B 78 */	mr r30, r5
/* 8027D7A8 0027A708  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8027D7AC 0027A70C  7C 9D 23 78 */	mr r29, r4
/* 8027D7B0 0027A710  80 82 BD 04 */	lwz r4, lbl_805ADA24@sda21(r2)
/* 8027D7B4 0027A714  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8027D7B8 0027A718  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8027D7BC 0027A71C  38 61 00 18 */	addi r3, r1, 0x18
/* 8027D7C0 0027A720  4B D8 74 F9 */	bl string_l__4rstlFPCc
/* 8027D7C4 0027A724  7F E3 FB 78 */	mr r3, r31
/* 8027D7C8 0027A728  7F C5 F3 78 */	mr r5, r30
/* 8027D7CC 0027A72C  7F A6 EB 78 */	mr r6, r29
/* 8027D7D0 0027A730  38 81 00 18 */	addi r4, r1, 0x18
/* 8027D7D4 0027A734  4B DA D5 ED */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 8027D7D8 0027A738  38 61 00 18 */	addi r3, r1, 0x18
/* 8027D7DC 0027A73C  48 0C 03 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027D7E0 0027A740  80 82 BD 08 */	lwz r4, lbl_805ADA28@sda21(r2)
/* 8027D7E4 0027A744  38 61 00 08 */	addi r3, r1, 8
/* 8027D7E8 0027A748  4B D8 74 D1 */	bl string_l__4rstlFPCc
/* 8027D7EC 0027A74C  7F E3 FB 78 */	mr r3, r31
/* 8027D7F0 0027A750  7F C5 F3 78 */	mr r5, r30
/* 8027D7F4 0027A754  7F A6 EB 78 */	mr r6, r29
/* 8027D7F8 0027A758  38 81 00 08 */	addi r4, r1, 8
/* 8027D7FC 0027A75C  4B DA D5 C5 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 8027D800 0027A760  38 61 00 08 */	addi r3, r1, 8
/* 8027D804 0027A764  48 0C 02 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027D808 0027A768  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027D80C 0027A76C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8027D810 0027A770  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8027D814 0027A774  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8027D818 0027A778  7C 08 03 A6 */	mtlr r0
/* 8027D81C 0027A77C  38 21 00 40 */	addi r1, r1, 0x40
/* 8027D820 0027A780  4E 80 00 20 */	blr

.global sub_8027d824
sub_8027d824:
/* 8027D824 0027A784  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8027D828 0027A788  7C 08 02 A6 */	mflr r0
/* 8027D82C 0027A78C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8027D830 0027A790  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8027D834 0027A794  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8027D838 0027A798  7C 9E 23 78 */	mr r30, r4
/* 8027D83C 0027A79C  7F C5 F3 78 */	mr r5, r30
/* 8027D840 0027A7A0  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8027D844 0027A7A4  7C 7D 1B 78 */	mr r29, r3
/* 8027D848 0027A7A8  7F A4 EB 78 */	mr r4, r29
/* 8027D84C 0027A7AC  38 61 00 48 */	addi r3, r1, 0x48
/* 8027D850 0027A7B0  4B FF FE B5 */	bl sub_8027d704
/* 8027D854 0027A7B4  88 A1 00 68 */	lbz r5, 0x68(r1)
/* 8027D858 0027A7B8  38 81 00 7C */	addi r4, r1, 0x7c
/* 8027D85C 0027A7BC  C0 E1 00 48 */	lfs f7, 0x48(r1)
/* 8027D860 0027A7C0  C0 C1 00 4C */	lfs f6, 0x4c(r1)
/* 8027D864 0027A7C4  28 05 00 00 */	cmplwi r5, 0
/* 8027D868 0027A7C8  C0 A1 00 50 */	lfs f5, 0x50(r1)
/* 8027D86C 0027A7CC  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 8027D870 0027A7D0  C0 61 00 58 */	lfs f3, 0x58(r1)
/* 8027D874 0027A7D4  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8027D878 0027A7D8  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8027D87C 0027A7DC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8027D880 0027A7E0  80 01 00 70 */	lwz r0, 0x70(r1)
/* 8027D884 0027A7E4  80 61 00 74 */	lwz r3, 0x74(r1)
/* 8027D888 0027A7E8  D0 E1 00 78 */	stfs f7, 0x78(r1)
/* 8027D88C 0027A7EC  D0 C1 00 7C */	stfs f6, 0x7c(r1)
/* 8027D890 0027A7F0  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 8027D894 0027A7F4  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 8027D898 0027A7F8  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 8027D89C 0027A7FC  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8027D8A0 0027A800  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 8027D8A4 0027A804  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8027D8A8 0027A808  98 A1 00 98 */	stb r5, 0x98(r1)
/* 8027D8AC 0027A80C  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 8027D8B0 0027A810  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 8027D8B4 0027A814  41 82 00 9C */	beq lbl_8027D950
/* 8027D8B8 0027A818  38 61 00 14 */	addi r3, r1, 0x14
/* 8027D8BC 0027A81C  48 09 58 85 */	bl Translate__12CTransform4fFRC9CVector3f
/* 8027D8C0 0027A820  38 7D 06 68 */	addi r3, r29, 0x668
/* 8027D8C4 0027A824  38 81 00 14 */	addi r4, r1, 0x14
/* 8027D8C8 0027A828  48 09 52 79 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8027D8CC 0027A82C  A0 1D 07 04 */	lhz r0, 0x704(r29)
/* 8027D8D0 0027A830  7F C3 F3 78 */	mr r3, r30
/* 8027D8D4 0027A834  38 81 00 08 */	addi r4, r1, 8
/* 8027D8D8 0027A838  B0 01 00 08 */	sth r0, 8(r1)
/* 8027D8DC 0027A83C  4B DC EC 99 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027D8E0 0027A840  7C 64 1B 78 */	mr r4, r3
/* 8027D8E4 0027A844  38 61 00 0C */	addi r3, r1, 0xc
/* 8027D8E8 0027A848  4B E2 8C 65 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8027D8EC 0027A84C  83 E3 00 04 */	lwz r31, 4(r3)
/* 8027D8F0 0027A850  28 1F 00 00 */	cmplwi r31, 0
/* 8027D8F4 0027A854  41 82 00 5C */	beq lbl_8027D950
/* 8027D8F8 0027A858  38 7F 00 34 */	addi r3, r31, 0x34
/* 8027D8FC 0027A85C  38 9D 06 68 */	addi r4, r29, 0x668
/* 8027D900 0027A860  48 09 52 41 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8027D904 0027A864  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8027D908 0027A868  38 E0 00 01 */	li r7, 1
/* 8027D90C 0027A86C  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 8027D910 0027A870  7F A3 EB 78 */	mr r3, r29
/* 8027D914 0027A874  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8027D918 0027A878  7F C5 F3 78 */	mr r5, r30
/* 8027D91C 0027A87C  38 80 00 15 */	li r4, 0x15
/* 8027D920 0027A880  38 C0 FF FF */	li r6, -1
/* 8027D924 0027A884  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8027D928 0027A888  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 8027D92C 0027A88C  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8027D930 0027A890  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8027D934 0027A894  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 8027D938 0027A898  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8027D93C 0027A89C  4B DD 37 85 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8027D940 0027A8A0  88 1D 07 0E */	lbz r0, 0x70e(r29)
/* 8027D944 0027A8A4  38 60 00 01 */	li r3, 1
/* 8027D948 0027A8A8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8027D94C 0027A8AC  98 1D 07 0E */	stb r0, 0x70e(r29)
lbl_8027D950:
/* 8027D950 0027A8B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8027D954 0027A8B4  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8027D958 0027A8B8  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8027D95C 0027A8BC  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8027D960 0027A8C0  7C 08 03 A6 */	mtlr r0
/* 8027D964 0027A8C4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8027D968 0027A8C8  4E 80 00 20 */	blr

.global Death__20CMetroidPrimeEssenceFRC9CVector3fR13CStateManager
Death__20CMetroidPrimeEssenceFRC9CVector3fR13CStateManager:
/* 8027D96C 0027A8CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027D970 0027A8D0  7C 08 02 A6 */	mflr r0
/* 8027D974 0027A8D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027D978 0027A8D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027D97C 0027A8DC  7C DF 33 78 */	mr r31, r6
/* 8027D980 0027A8E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027D984 0027A8E4  7C BE 2B 78 */	mr r30, r5
/* 8027D988 0027A8E8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027D98C 0027A8EC  7C 9D 23 78 */	mr r29, r4
/* 8027D990 0027A8F0  93 81 00 20 */	stw r28, 0x20(r1)
/* 8027D994 0027A8F4  7C 7C 1B 78 */	mr r28, r3
/* 8027D998 0027A8F8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8027D99C 0027A8FC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8027D9A0 0027A900  41 82 00 64 */	beq lbl_8027DA04
/* 8027D9A4 0027A904  48 00 14 E5 */	bl sub_8027ee88
/* 8027D9A8 0027A908  7F 83 E3 78 */	mr r3, r28
/* 8027D9AC 0027A90C  7F A4 EB 78 */	mr r4, r29
/* 8027D9B0 0027A910  38 A0 00 00 */	li r5, 0
/* 8027D9B4 0027A914  4B FF FD DD */	bl sub_8027d790
/* 8027D9B8 0027A918  A0 1C 07 06 */	lhz r0, 0x706(r28)
/* 8027D9BC 0027A91C  7F A3 EB 78 */	mr r3, r29
/* 8027D9C0 0027A920  38 81 00 08 */	addi r4, r1, 8
/* 8027D9C4 0027A924  B0 01 00 08 */	sth r0, 8(r1)
/* 8027D9C8 0027A928  4B DC EB AD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027D9CC 0027A92C  7C 64 1B 78 */	mr r4, r3
/* 8027D9D0 0027A930  38 61 00 0C */	addi r3, r1, 0xc
/* 8027D9D4 0027A934  4B E3 19 79 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027D9D8 0027A938  80 63 00 04 */	lwz r3, 4(r3)
/* 8027D9DC 0027A93C  28 03 00 00 */	cmplwi r3, 0
/* 8027D9E0 0027A940  41 82 00 10 */	beq lbl_8027D9F0
/* 8027D9E4 0027A944  7F A5 EB 78 */	mr r5, r29
/* 8027D9E8 0027A948  38 80 00 12 */	li r4, 0x12
/* 8027D9EC 0027A94C  4B DD 69 65 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8027D9F0:
/* 8027D9F0 0027A950  7F 83 E3 78 */	mr r3, r28
/* 8027D9F4 0027A954  7F A4 EB 78 */	mr r4, r29
/* 8027D9F8 0027A958  7F C5 F3 78 */	mr r5, r30
/* 8027D9FC 0027A95C  7F E6 FB 78 */	mr r6, r31
/* 8027DA00 0027A960  4B DF D9 A5 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
lbl_8027DA04:
/* 8027DA04 0027A964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027DA08 0027A968  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027DA0C 0027A96C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027DA10 0027A970  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027DA14 0027A974  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8027DA18 0027A978  7C 08 03 A6 */	mtlr r0
/* 8027DA1C 0027A97C  38 21 00 30 */	addi r1, r1, 0x30
/* 8027DA20 0027A980  4E 80 00 20 */	blr

.global CoverFind__20CMetroidPrimeEssenceFR13CStateManagerf
CoverFind__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DA24 0027A984  C0 23 02 E4 */	lfs f1, 0x2e4(r3)
/* 8027DA28 0027A988  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8027DA2C 0027A98C  C0 63 02 E0 */	lfs f3, 0x2e0(r3)
/* 8027DA30 0027A990  EC 21 00 28 */	fsubs f1, f1, f0
/* 8027DA34 0027A994  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8027DA38 0027A998  C0 43 02 E8 */	lfs f2, 0x2e8(r3)
/* 8027DA3C 0027A99C  EC 63 00 28 */	fsubs f3, f3, f0
/* 8027DA40 0027A9A0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8027DA44 0027A9A4  EC 21 00 72 */	fmuls f1, f1, f1
/* 8027DA48 0027A9A8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8027DA4C 0027A9AC  C0 02 BD 4C */	lfs f0, lbl_805ADA6C@sda21(r2)
/* 8027DA50 0027A9B0  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8027DA54 0027A9B4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8027DA58 0027A9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027DA5C 0027A9BC  7C 00 00 26 */	mfcr r0
/* 8027DA60 0027A9C0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8027DA64 0027A9C4  4E 80 00 20 */	blr

.global ShouldMove__20CMetroidPrimeEssenceFR13CStateManagerf
ShouldMove__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DA68 0027A9C8  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027DA6C 0027A9CC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8027DA70 0027A9D0  7C 00 00 34 */	cntlzw r0, r0
/* 8027DA74 0027A9D4  54 03 D9 7E */	srwi r3, r0, 5
/* 8027DA78 0027A9D8  4E 80 00 20 */	blr

.global HasPatrolPath__20CMetroidPrimeEssenceFR13CStateManagerf
HasPatrolPath__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DA7C 0027A9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027DA80 0027A9E0  7C 08 02 A6 */	mflr r0
/* 8027DA84 0027A9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027DA88 0027A9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027DA8C 0027A9EC  3B E0 00 00 */	li r31, 0
/* 8027DA90 0027A9F0  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027DA94 0027A9F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8027DA98 0027A9F8  40 82 00 14 */	bne lbl_8027DAAC
/* 8027DA9C 0027A9FC  4B F7 80 F9 */	bl HasPatrolPath__10CPatternedFR13CStateManagerf
/* 8027DAA0 0027AA00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027DAA4 0027AA04  41 82 00 08 */	beq lbl_8027DAAC
/* 8027DAA8 0027AA08  3B E0 00 01 */	li r31, 1
lbl_8027DAAC:
/* 8027DAAC 0027AA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027DAB0 0027AA10  7F E3 FB 78 */	mr r3, r31
/* 8027DAB4 0027AA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027DAB8 0027AA18  7C 08 03 A6 */	mtlr r0
/* 8027DABC 0027AA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027DAC0 0027AA20  4E 80 00 20 */	blr

.global InPosition__20CMetroidPrimeEssenceFR13CStateManagerf
InPosition__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DAC4 0027AA24  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8027DAC8 0027AA28  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8027DACC 0027AA2C  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 8027DAD0 0027AA30  C0 02 BD 30 */	lfs f0, lbl_805ADA50@sda21(r2)
/* 8027DAD4 0027AA34  EC 22 08 28 */	fsubs f1, f2, f1
/* 8027DAD8 0027AA38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027DADC 0027AA3C  7C 00 00 26 */	mfcr r0
/* 8027DAE0 0027AA40  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8027DAE4 0027AA44  4E 80 00 20 */	blr

.global ShouldTaunt__20CMetroidPrimeEssenceFR13CStateManagerf
ShouldTaunt__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DAE8 0027AA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027DAEC 0027AA4C  7C 08 02 A6 */	mflr r0
/* 8027DAF0 0027AA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027DAF4 0027AA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027DAF8 0027AA58  7C 9F 23 78 */	mr r31, r4
/* 8027DAFC 0027AA5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8027DB00 0027AA60  7C 7E 1B 78 */	mr r30, r3
/* 8027DB04 0027AA64  81 83 00 00 */	lwz r12, 0(r3)
/* 8027DB08 0027AA68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027DB0C 0027AA6C  7D 89 03 A6 */	mtctr r12
/* 8027DB10 0027AA70  4E 80 04 21 */	bctrl
/* 8027DB14 0027AA74  28 03 00 00 */	cmplwi r3, 0
/* 8027DB18 0027AA78  41 82 00 58 */	beq lbl_8027DB70
/* 8027DB1C 0027AA7C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8027DB20 0027AA80  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 8027DB24 0027AA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027DB28 0027AA88  40 81 00 48 */	ble lbl_8027DB70
/* 8027DB2C 0027AA8C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8027DB30 0027AA90  48 09 49 F1 */	bl Next__9CRandom16Fv
/* 8027DB34 0027AA94  3C A0 51 EC */	lis r5, 0x51EB851F@ha
/* 8027DB38 0027AA98  38 80 00 32 */	li r4, 0x32
/* 8027DB3C 0027AA9C  38 05 85 1F */	addi r0, r5, 0x51EB851F@l
/* 8027DB40 0027AAA0  7C 00 18 96 */	mulhw r0, r0, r3
/* 8027DB44 0027AAA4  7C 00 2E 70 */	srawi r0, r0, 5
/* 8027DB48 0027AAA8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8027DB4C 0027AAAC  7C 00 2A 14 */	add r0, r0, r5
/* 8027DB50 0027AAB0  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8027DB54 0027AAB4  7C 00 18 50 */	subf r0, r0, r3
/* 8027DB58 0027AAB8  7C 80 02 78 */	xor r0, r4, r0
/* 8027DB5C 0027AABC  7C 03 0E 70 */	srawi r3, r0, 1
/* 8027DB60 0027AAC0  7C 00 20 38 */	and r0, r0, r4
/* 8027DB64 0027AAC4  7C 00 18 50 */	subf r0, r0, r3
/* 8027DB68 0027AAC8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8027DB6C 0027AACC  48 00 00 08 */	b lbl_8027DB74
lbl_8027DB70:
/* 8027DB70 0027AAD0  38 60 00 00 */	li r3, 0
lbl_8027DB74:
/* 8027DB74 0027AAD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027DB78 0027AAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027DB7C 0027AADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027DB80 0027AAE0  7C 08 03 A6 */	mtlr r0
/* 8027DB84 0027AAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027DB88 0027AAE8  4E 80 00 20 */	blr

.global ShouldCrouch__20CMetroidPrimeEssenceFR13CStateManagerf
ShouldCrouch__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DB8C 0027AAEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DB90 0027AAF0  7C 08 02 A6 */	mflr r0
/* 8027DB94 0027AAF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DB98 0027AAF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027DB9C 0027AAFC  7C 7F 1B 78 */	mr r31, r3
/* 8027DBA0 0027AB00  80 A3 06 F0 */	lwz r5, 0x6f0(r3)
/* 8027DBA4 0027AB04  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 8027DBA8 0027AB08  7C 05 00 00 */	cmpw r5, r0
/* 8027DBAC 0027AB0C  40 80 00 14 */	bge lbl_8027DBC0
/* 8027DBB0 0027AB10  38 05 00 01 */	addi r0, r5, 1
/* 8027DBB4 0027AB14  38 60 00 00 */	li r3, 0
/* 8027DBB8 0027AB18  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 8027DBBC 0027AB1C  48 00 00 74 */	b lbl_8027DC30
lbl_8027DBC0:
/* 8027DBC0 0027AB20  81 83 00 00 */	lwz r12, 0(r3)
/* 8027DBC4 0027AB24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027DBC8 0027AB28  7D 89 03 A6 */	mtctr r12
/* 8027DBCC 0027AB2C  4E 80 04 21 */	bctrl
/* 8027DBD0 0027AB30  C0 3F 06 C4 */	lfs f1, 0x6c4(r31)
/* 8027DBD4 0027AB34  C0 03 00 00 */	lfs f0, 0(r3)
/* 8027DBD8 0027AB38  C0 42 BD 3C */	lfs f2, lbl_805ADA5C@sda21(r2)
/* 8027DBDC 0027AB3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027DBE0 0027AB40  C0 22 BD 50 */	lfs f1, lbl_805ADA70@sda21(r2)
/* 8027DBE4 0027AB44  80 7F 06 E8 */	lwz r3, 0x6e8(r31)
/* 8027DBE8 0027AB48  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027DBEC 0027AB4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027DBF0 0027AB50  FC 00 00 1E */	fctiwz f0, f0
/* 8027DBF4 0027AB54  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8027DBF8 0027AB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027DBFC 0027AB5C  7C 63 02 14 */	add r3, r3, r0
/* 8027DC00 0027AB60  90 61 00 08 */	stw r3, 8(r1)
/* 8027DC04 0027AB64  80 1F 06 EC */	lwz r0, 0x6ec(r31)
/* 8027DC08 0027AB68  7C 00 18 00 */	cmpw r0, r3
/* 8027DC0C 0027AB6C  40 80 00 0C */	bge lbl_8027DC18
/* 8027DC10 0027AB70  38 7F 06 EC */	addi r3, r31, 0x6ec
/* 8027DC14 0027AB74  48 00 00 08 */	b lbl_8027DC1C
lbl_8027DC18:
/* 8027DC18 0027AB78  38 61 00 08 */	addi r3, r1, 8
lbl_8027DC1C:
/* 8027DC1C 0027AB7C  80 83 00 00 */	lwz r4, 0(r3)
/* 8027DC20 0027AB80  38 00 00 00 */	li r0, 0
/* 8027DC24 0027AB84  38 60 00 01 */	li r3, 1
/* 8027DC28 0027AB88  90 9F 06 F4 */	stw r4, 0x6f4(r31)
/* 8027DC2C 0027AB8C  90 1F 06 F0 */	stw r0, 0x6f0(r31)
lbl_8027DC30:
/* 8027DC30 0027AB90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027DC34 0027AB94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027DC38 0027AB98  7C 08 03 A6 */	mtlr r0
/* 8027DC3C 0027AB9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027DC40 0027ABA0  4E 80 00 20 */	blr

.global ShouldAttack__20CMetroidPrimeEssenceFR13CStateManagerf
ShouldAttack__20CMetroidPrimeEssenceFR13CStateManagerf:
/* 8027DC44 0027ABA4  88 63 07 0E */	lbz r3, 0x70e(r3)
/* 8027DC48 0027ABA8  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8027DC4C 0027ABAC  41 82 00 0C */	beq lbl_8027DC58
/* 8027DC50 0027ABB0  54 63 D7 FE */	rlwinm r3, r3, 0x1a, 0x1f, 0x1f
/* 8027DC54 0027ABB4  4E 80 00 20 */	blr
lbl_8027DC58:
/* 8027DC58 0027ABB8  38 60 00 01 */	li r3, 1
/* 8027DC5C 0027ABBC  4E 80 00 20 */	blr

.global Dead__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Dead__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DC60 0027ABC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027DC64 0027ABC4  7C 08 02 A6 */	mflr r0
/* 8027DC68 0027ABC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027DC6C 0027ABCC  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8027DC70 0027ABD0  FF E0 08 90 */	fmr f31, f1
/* 8027DC74 0027ABD4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8027DC78 0027ABD8  7C BF 2B 78 */	mr r31, r5
/* 8027DC7C 0027ABDC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8027DC80 0027ABE0  7C 9E 23 78 */	mr r30, r4
/* 8027DC84 0027ABE4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8027DC88 0027ABE8  7C 7D 1B 78 */	mr r29, r3
/* 8027DC8C 0027ABEC  4B F7 8D 39 */	bl Dead__10CPatternedFR13CStateManager9EStateMsgf
/* 8027DC90 0027ABF0  2C 1F 00 01 */	cmpwi r31, 1
/* 8027DC94 0027ABF4  41 82 00 08 */	beq lbl_8027DC9C
/* 8027DC98 0027ABF8  48 00 00 4C */	b lbl_8027DCE4
lbl_8027DC9C:
/* 8027DC9C 0027ABFC  3C 80 80 3D */	lis r4, lbl_803D589C@ha
/* 8027DCA0 0027AC00  38 61 00 08 */	addi r3, r1, 8
/* 8027DCA4 0027AC04  38 84 58 9C */	addi r4, r4, lbl_803D589C@l
/* 8027DCA8 0027AC08  38 84 00 2E */	addi r4, r4, 0x2e
/* 8027DCAC 0027AC0C  4B D8 70 0D */	bl string_l__4rstlFPCc
/* 8027DCB0 0027AC10  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8027DCB4 0027AC14  FC 20 F8 90 */	fmr f1, f31
/* 8027DCB8 0027AC18  38 81 00 08 */	addi r4, r1, 8
/* 8027DCBC 0027AC1C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8027DCC0 0027AC20  4B DA E7 2D */	bl "IsAnimTimeRemaining__9CAnimDataCFfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8027DCC4 0027AC24  7C 7F 1B 78 */	mr r31, r3
/* 8027DCC8 0027AC28  38 61 00 08 */	addi r3, r1, 8
/* 8027DCCC 0027AC2C  48 0B FE 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027DCD0 0027AC30  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8027DCD4 0027AC34  40 82 00 10 */	bne lbl_8027DCE4
/* 8027DCD8 0027AC38  7F A3 EB 78 */	mr r3, r29
/* 8027DCDC 0027AC3C  7F C4 F3 78 */	mr r4, r30
/* 8027DCE0 0027AC40  4B DF AD 21 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_8027DCE4:
/* 8027DCE4 0027AC44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027DCE8 0027AC48  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 8027DCEC 0027AC4C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8027DCF0 0027AC50  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8027DCF4 0027AC54  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8027DCF8 0027AC58  7C 08 03 A6 */	mtlr r0
/* 8027DCFC 0027AC5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8027DD00 0027AC60  4E 80 00 20 */	blr

.global Taunt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Taunt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DD04 0027AC64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DD08 0027AC68  7C 08 02 A6 */	mflr r0
/* 8027DD0C 0027AC6C  2C 05 00 01 */	cmpwi r5, 1
/* 8027DD10 0027AC70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DD14 0027AC74  41 82 00 2C */	beq lbl_8027DD40
/* 8027DD18 0027AC78  40 80 00 10 */	bge lbl_8027DD28
/* 8027DD1C 0027AC7C  2C 05 00 00 */	cmpwi r5, 0
/* 8027DD20 0027AC80  40 80 00 14 */	bge lbl_8027DD34
/* 8027DD24 0027AC84  48 00 00 58 */	b lbl_8027DD7C
lbl_8027DD28:
/* 8027DD28 0027AC88  2C 05 00 03 */	cmpwi r5, 3
/* 8027DD2C 0027AC8C  40 80 00 50 */	bge lbl_8027DD7C
/* 8027DD30 0027AC90  48 00 00 44 */	b lbl_8027DD74
lbl_8027DD34:
/* 8027DD34 0027AC94  38 00 00 01 */	li r0, 1
/* 8027DD38 0027AC98  90 03 03 2C */	stw r0, 0x32c(r3)
/* 8027DD3C 0027AC9C  48 00 00 40 */	b lbl_8027DD7C
lbl_8027DD40:
/* 8027DD40 0027ACA0  3C A0 80 3F */	lis r5, lbl_803EB238@ha
/* 8027DD44 0027ACA4  38 C1 00 08 */	addi r6, r1, 8
/* 8027DD48 0027ACA8  39 45 B2 38 */	addi r10, r5, lbl_803EB238@l
/* 8027DD4C 0027ACAC  38 A0 00 10 */	li r5, 0x10
/* 8027DD50 0027ACB0  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027DD54 0027ACB4  38 E0 00 02 */	li r7, 2
/* 8027DD58 0027ACB8  81 0A 00 04 */	lwz r8, 4(r10)
/* 8027DD5C 0027ACBC  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027DD60 0027ACC0  91 21 00 08 */	stw r9, 8(r1)
/* 8027DD64 0027ACC4  91 01 00 0C */	stw r8, 0xc(r1)
/* 8027DD68 0027ACC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027DD6C 0027ACCC  4B DF EA 49 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027DD70 0027ACD0  48 00 00 0C */	b lbl_8027DD7C
lbl_8027DD74:
/* 8027DD74 0027ACD4  38 00 00 00 */	li r0, 0
/* 8027DD78 0027ACD8  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_8027DD7C:
/* 8027DD7C 0027ACDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027DD80 0027ACE0  7C 08 03 A6 */	mtlr r0
/* 8027DD84 0027ACE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8027DD88 0027ACE8  4E 80 00 20 */	blr

.global Skid__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Skid__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DD8C 0027ACEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DD90 0027ACF0  7C 08 02 A6 */	mflr r0
/* 8027DD94 0027ACF4  2C 05 00 01 */	cmpwi r5, 1
/* 8027DD98 0027ACF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DD9C 0027ACFC  41 82 00 2C */	beq lbl_8027DDC8
/* 8027DDA0 0027AD00  40 80 00 10 */	bge lbl_8027DDB0
/* 8027DDA4 0027AD04  2C 05 00 00 */	cmpwi r5, 0
/* 8027DDA8 0027AD08  40 80 00 14 */	bge lbl_8027DDBC
/* 8027DDAC 0027AD0C  48 00 00 58 */	b lbl_8027DE04
lbl_8027DDB0:
/* 8027DDB0 0027AD10  2C 05 00 03 */	cmpwi r5, 3
/* 8027DDB4 0027AD14  40 80 00 50 */	bge lbl_8027DE04
/* 8027DDB8 0027AD18  48 00 00 44 */	b lbl_8027DDFC
lbl_8027DDBC:
/* 8027DDBC 0027AD1C  38 00 00 01 */	li r0, 1
/* 8027DDC0 0027AD20  90 03 03 2C */	stw r0, 0x32c(r3)
/* 8027DDC4 0027AD24  48 00 00 40 */	b lbl_8027DE04
lbl_8027DDC8:
/* 8027DDC8 0027AD28  3C A0 80 3F */	lis r5, lbl_803EB22C@ha
/* 8027DDCC 0027AD2C  38 C1 00 08 */	addi r6, r1, 8
/* 8027DDD0 0027AD30  39 45 B2 2C */	addi r10, r5, lbl_803EB22C@l
/* 8027DDD4 0027AD34  38 A0 00 03 */	li r5, 3
/* 8027DDD8 0027AD38  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027DDDC 0027AD3C  38 E0 00 05 */	li r7, 5
/* 8027DDE0 0027AD40  81 0A 00 04 */	lwz r8, 4(r10)
/* 8027DDE4 0027AD44  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027DDE8 0027AD48  91 21 00 08 */	stw r9, 8(r1)
/* 8027DDEC 0027AD4C  91 01 00 0C */	stw r8, 0xc(r1)
/* 8027DDF0 0027AD50  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027DDF4 0027AD54  4B DF E9 C1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027DDF8 0027AD58  48 00 00 0C */	b lbl_8027DE04
lbl_8027DDFC:
/* 8027DDFC 0027AD5C  38 00 00 00 */	li r0, 0
/* 8027DE00 0027AD60  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_8027DE04:
/* 8027DE04 0027AD64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027DE08 0027AD68  7C 08 03 A6 */	mtlr r0
/* 8027DE0C 0027AD6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027DE10 0027AD70  4E 80 00 20 */	blr

.global JumpBack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
JumpBack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DE14 0027AD74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DE18 0027AD78  7C 08 02 A6 */	mflr r0
/* 8027DE1C 0027AD7C  2C 05 00 01 */	cmpwi r5, 1
/* 8027DE20 0027AD80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DE24 0027AD84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027DE28 0027AD88  7C 7F 1B 78 */	mr r31, r3
/* 8027DE2C 0027AD8C  41 82 00 38 */	beq lbl_8027DE64
/* 8027DE30 0027AD90  40 80 00 10 */	bge lbl_8027DE40
/* 8027DE34 0027AD94  2C 05 00 00 */	cmpwi r5, 0
/* 8027DE38 0027AD98  40 80 00 14 */	bge lbl_8027DE4C
/* 8027DE3C 0027AD9C  48 00 00 64 */	b lbl_8027DEA0
lbl_8027DE40:
/* 8027DE40 0027ADA0  2C 05 00 03 */	cmpwi r5, 3
/* 8027DE44 0027ADA4  40 80 00 5C */	bge lbl_8027DEA0
/* 8027DE48 0027ADA8  48 00 00 50 */	b lbl_8027DE98
lbl_8027DE4C:
/* 8027DE4C 0027ADAC  38 00 00 01 */	li r0, 1
/* 8027DE50 0027ADB0  38 A0 00 01 */	li r5, 1
/* 8027DE54 0027ADB4  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8027DE58 0027ADB8  4B FF F1 7D */	bl sub_8027cfd4
/* 8027DE5C 0027ADBC  90 7F 07 00 */	stw r3, 0x700(r31)
/* 8027DE60 0027ADC0  48 00 00 40 */	b lbl_8027DEA0
lbl_8027DE64:
/* 8027DE64 0027ADC4  3C A0 80 3F */	lis r5, lbl_803EB220@ha
/* 8027DE68 0027ADC8  38 C1 00 08 */	addi r6, r1, 8
/* 8027DE6C 0027ADCC  39 25 B2 20 */	addi r9, r5, lbl_803EB220@l
/* 8027DE70 0027ADD0  38 A0 00 03 */	li r5, 3
/* 8027DE74 0027ADD4  81 09 00 00 */	lwz r8, 0(r9)
/* 8027DE78 0027ADD8  80 E9 00 04 */	lwz r7, 4(r9)
/* 8027DE7C 0027ADDC  80 09 00 08 */	lwz r0, 8(r9)
/* 8027DE80 0027ADE0  91 01 00 08 */	stw r8, 8(r1)
/* 8027DE84 0027ADE4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8027DE88 0027ADE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027DE8C 0027ADEC  80 FF 07 00 */	lwz r7, 0x700(r31)
/* 8027DE90 0027ADF0  4B DF E9 25 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027DE94 0027ADF4  48 00 00 0C */	b lbl_8027DEA0
lbl_8027DE98:
/* 8027DE98 0027ADF8  38 00 00 00 */	li r0, 0
/* 8027DE9C 0027ADFC  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_8027DEA0:
/* 8027DEA0 0027AE00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027DEA4 0027AE04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027DEA8 0027AE08  7C 08 03 A6 */	mtlr r0
/* 8027DEAC 0027AE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027DEB0 0027AE10  4E 80 00 20 */	blr

.global PathFindEx__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
PathFindEx__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DEB4 0027AE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027DEB8 0027AE18  7C 08 02 A6 */	mflr r0
/* 8027DEBC 0027AE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027DEC0 0027AE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027DEC4 0027AE24  7C BF 2B 78 */	mr r31, r5
/* 8027DEC8 0027AE28  93 C1 00 08 */	stw r30, 8(r1)
/* 8027DECC 0027AE2C  7C 7E 1B 78 */	mr r30, r3
/* 8027DED0 0027AE30  4B F7 87 FD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8027DED4 0027AE34  2C 1F 00 01 */	cmpwi r31, 1
/* 8027DED8 0027AE38  41 82 00 34 */	beq lbl_8027DF0C
/* 8027DEDC 0027AE3C  40 80 00 10 */	bge lbl_8027DEEC
/* 8027DEE0 0027AE40  2C 1F 00 00 */	cmpwi r31, 0
/* 8027DEE4 0027AE44  40 80 00 14 */	bge lbl_8027DEF8
/* 8027DEE8 0027AE48  48 00 00 44 */	b lbl_8027DF2C
lbl_8027DEEC:
/* 8027DEEC 0027AE4C  2C 1F 00 03 */	cmpwi r31, 3
/* 8027DEF0 0027AE50  40 80 00 3C */	bge lbl_8027DF2C
/* 8027DEF4 0027AE54  48 00 00 28 */	b lbl_8027DF1C
lbl_8027DEF8:
/* 8027DEF8 0027AE58  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027DEFC 0027AE5C  38 60 00 01 */	li r3, 1
/* 8027DF00 0027AE60  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8027DF04 0027AE64  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027DF08 0027AE68  48 00 00 24 */	b lbl_8027DF2C
lbl_8027DF0C:
/* 8027DF0C 0027AE6C  7F C3 F3 78 */	mr r3, r30
/* 8027DF10 0027AE70  38 9E 02 E0 */	addi r4, r30, 0x2e0
/* 8027DF14 0027AE74  4B FF EC 2D */	bl sub_8027cb40
/* 8027DF18 0027AE78  48 00 00 14 */	b lbl_8027DF2C
lbl_8027DF1C:
/* 8027DF1C 0027AE7C  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027DF20 0027AE80  38 60 00 00 */	li r3, 0
/* 8027DF24 0027AE84  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8027DF28 0027AE88  98 1E 07 0E */	stb r0, 0x70e(r30)
lbl_8027DF2C:
/* 8027DF2C 0027AE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027DF30 0027AE90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027DF34 0027AE94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027DF38 0027AE98  7C 08 03 A6 */	mtlr r0
/* 8027DF3C 0027AE9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027DF40 0027AEA0  4E 80 00 20 */	blr

.global PathFind__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
PathFind__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DF44 0027AEA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027DF48 0027AEA8  7C 08 02 A6 */	mflr r0
/* 8027DF4C 0027AEAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027DF50 0027AEB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027DF54 0027AEB4  7C BF 2B 78 */	mr r31, r5
/* 8027DF58 0027AEB8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027DF5C 0027AEBC  7C 9E 23 78 */	mr r30, r4
/* 8027DF60 0027AEC0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027DF64 0027AEC4  7C 7D 1B 78 */	mr r29, r3
/* 8027DF68 0027AEC8  4B F7 87 65 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8027DF6C 0027AECC  2C 1F 00 01 */	cmpwi r31, 1
/* 8027DF70 0027AED0  41 82 00 08 */	beq lbl_8027DF78
/* 8027DF74 0027AED4  48 00 00 2C */	b lbl_8027DFA0
lbl_8027DF78:
/* 8027DF78 0027AED8  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 8027DF7C 0027AEDC  7F A3 EB 78 */	mr r3, r29
/* 8027DF80 0027AEE0  38 81 00 08 */	addi r4, r1, 8
/* 8027DF84 0027AEE4  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8027DF88 0027AEE8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8027DF8C 0027AEEC  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8027DF90 0027AEF0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027DF94 0027AEF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8027DF98 0027AEF8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8027DF9C 0027AEFC  4B FF EB A5 */	bl sub_8027cb40
lbl_8027DFA0:
/* 8027DFA0 0027AF00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027DFA4 0027AF04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027DFA8 0027AF08  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027DFAC 0027AF0C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027DFB0 0027AF10  7C 08 03 A6 */	mtlr r0
/* 8027DFB4 0027AF14  38 21 00 30 */	addi r1, r1, 0x30
/* 8027DFB8 0027AF18  4E 80 00 20 */	blr

.global Halt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Halt__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DFBC 0027AF1C  4E 80 00 20 */	blr

.global Dodge__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Dodge__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027DFC0 0027AF20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027DFC4 0027AF24  7C 08 02 A6 */	mflr r0
/* 8027DFC8 0027AF28  2C 05 00 01 */	cmpwi r5, 1
/* 8027DFCC 0027AF2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027DFD0 0027AF30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027DFD4 0027AF34  7C 7F 1B 78 */	mr r31, r3
/* 8027DFD8 0027AF38  41 82 00 38 */	beq lbl_8027E010
/* 8027DFDC 0027AF3C  40 80 00 10 */	bge lbl_8027DFEC
/* 8027DFE0 0027AF40  2C 05 00 00 */	cmpwi r5, 0
/* 8027DFE4 0027AF44  40 80 00 14 */	bge lbl_8027DFF8
/* 8027DFE8 0027AF48  48 00 00 64 */	b lbl_8027E04C
lbl_8027DFEC:
/* 8027DFEC 0027AF4C  2C 05 00 03 */	cmpwi r5, 3
/* 8027DFF0 0027AF50  40 80 00 5C */	bge lbl_8027E04C
/* 8027DFF4 0027AF54  48 00 00 50 */	b lbl_8027E044
lbl_8027DFF8:
/* 8027DFF8 0027AF58  38 00 00 01 */	li r0, 1
/* 8027DFFC 0027AF5C  38 A0 00 00 */	li r5, 0
/* 8027E000 0027AF60  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8027E004 0027AF64  4B FF EF D1 */	bl sub_8027cfd4
/* 8027E008 0027AF68  90 7F 07 00 */	stw r3, 0x700(r31)
/* 8027E00C 0027AF6C  48 00 00 40 */	b lbl_8027E04C
lbl_8027E010:
/* 8027E010 0027AF70  3C A0 80 3F */	lis r5, lbl_803EB214@ha
/* 8027E014 0027AF74  38 C1 00 08 */	addi r6, r1, 8
/* 8027E018 0027AF78  39 25 B2 14 */	addi r9, r5, lbl_803EB214@l
/* 8027E01C 0027AF7C  38 A0 00 03 */	li r5, 3
/* 8027E020 0027AF80  81 09 00 00 */	lwz r8, 0(r9)
/* 8027E024 0027AF84  80 E9 00 04 */	lwz r7, 4(r9)
/* 8027E028 0027AF88  80 09 00 08 */	lwz r0, 8(r9)
/* 8027E02C 0027AF8C  91 01 00 08 */	stw r8, 8(r1)
/* 8027E030 0027AF90  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8027E034 0027AF94  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027E038 0027AF98  80 FF 07 00 */	lwz r7, 0x700(r31)
/* 8027E03C 0027AF9C  4B DF E7 79 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027E040 0027AFA0  48 00 00 0C */	b lbl_8027E04C
lbl_8027E044:
/* 8027E044 0027AFA4  38 00 00 00 */	li r0, 0
/* 8027E048 0027AFA8  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_8027E04C:
/* 8027E04C 0027AFAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E050 0027AFB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027E054 0027AFB4  7C 08 03 A6 */	mtlr r0
/* 8027E058 0027AFB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E05C 0027AFBC  4E 80 00 20 */	blr

.global FadeOut__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
FadeOut__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027E060 0027AFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E064 0027AFC4  7C 08 02 A6 */	mflr r0
/* 8027E068 0027AFC8  2C 05 00 00 */	cmpwi r5, 0
/* 8027E06C 0027AFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E070 0027AFD0  41 82 00 0C */	beq lbl_8027E07C
/* 8027E074 0027AFD4  41 80 00 0C */	blt lbl_8027E080
/* 8027E078 0027AFD8  48 00 00 08 */	b lbl_8027E080
lbl_8027E07C:
/* 8027E07C 0027AFDC  4B FF F1 79 */	bl sub_8027d1f4
lbl_8027E080:
/* 8027E080 0027AFE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E084 0027AFE4  7C 08 03 A6 */	mtlr r0
/* 8027E088 0027AFE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E08C 0027AFEC  4E 80 00 20 */	blr

.global FadeIn__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
FadeIn__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027E090 0027AFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027E094 0027AFF4  7C 08 02 A6 */	mflr r0
/* 8027E098 0027AFF8  2C 05 00 01 */	cmpwi r5, 1
/* 8027E09C 0027AFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027E0A0 0027B000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027E0A4 0027B004  7C 7F 1B 78 */	mr r31, r3
/* 8027E0A8 0027B008  41 82 00 40 */	beq lbl_8027E0E8
/* 8027E0AC 0027B00C  40 80 00 10 */	bge lbl_8027E0BC
/* 8027E0B0 0027B010  2C 05 00 00 */	cmpwi r5, 0
/* 8027E0B4 0027B014  40 80 00 14 */	bge lbl_8027E0C8
/* 8027E0B8 0027B018  48 00 00 9C */	b lbl_8027E154
lbl_8027E0BC:
/* 8027E0BC 0027B01C  2C 05 00 03 */	cmpwi r5, 3
/* 8027E0C0 0027B020  40 80 00 94 */	bge lbl_8027E154
/* 8027E0C4 0027B024  48 00 00 58 */	b lbl_8027E11C
lbl_8027E0C8:
/* 8027E0C8 0027B028  4B FF F3 61 */	bl sub_8027d428
/* 8027E0CC 0027B02C  90 7F 06 F8 */	stw r3, 0x6f8(r31)
/* 8027E0D0 0027B030  38 60 00 01 */	li r3, 1
/* 8027E0D4 0027B034  90 7F 03 2C */	stw r3, 0x32c(r31)
/* 8027E0D8 0027B038  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027E0DC 0027B03C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8027E0E0 0027B040  98 1F 07 0E */	stb r0, 0x70e(r31)
/* 8027E0E4 0027B044  48 00 00 70 */	b lbl_8027E154
lbl_8027E0E8:
/* 8027E0E8 0027B048  3C A0 80 3F */	lis r5, lbl_803EB208@ha
/* 8027E0EC 0027B04C  38 C1 00 08 */	addi r6, r1, 8
/* 8027E0F0 0027B050  39 45 B2 08 */	addi r10, r5, lbl_803EB208@l
/* 8027E0F4 0027B054  38 A0 00 12 */	li r5, 0x12
/* 8027E0F8 0027B058  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027E0FC 0027B05C  38 E0 00 00 */	li r7, 0
/* 8027E100 0027B060  81 0A 00 04 */	lwz r8, 4(r10)
/* 8027E104 0027B064  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027E108 0027B068  91 21 00 08 */	stw r9, 8(r1)
/* 8027E10C 0027B06C  91 01 00 0C */	stw r8, 0xc(r1)
/* 8027E110 0027B070  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027E114 0027B074  4B DF E6 A1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027E118 0027B078  48 00 00 3C */	b lbl_8027E154
lbl_8027E11C:
/* 8027E11C 0027B07C  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027E120 0027B080  38 60 00 00 */	li r3, 0
/* 8027E124 0027B084  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8027E128 0027B088  98 1F 07 0E */	stb r0, 0x70e(r31)
/* 8027E12C 0027B08C  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027E130 0027B090  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8027E134 0027B094  98 1F 07 0E */	stb r0, 0x70e(r31)
/* 8027E138 0027B098  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027E13C 0027B09C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8027E140 0027B0A0  98 1F 07 0E */	stb r0, 0x70e(r31)
/* 8027E144 0027B0A4  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027E148 0027B0A8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8027E14C 0027B0AC  98 1F 07 0E */	stb r0, 0x70e(r31)
/* 8027E150 0027B0B0  90 7F 03 2C */	stw r3, 0x32c(r31)
lbl_8027E154:
/* 8027E154 0027B0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E158 0027B0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027E15C 0027B0BC  7C 08 03 A6 */	mtlr r0
/* 8027E160 0027B0C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E164 0027B0C4  4E 80 00 20 */	blr

.global TelegraphAttack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
TelegraphAttack__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027E168 0027B0C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027E16C 0027B0CC  7C 08 02 A6 */	mflr r0
/* 8027E170 0027B0D0  2C 05 00 01 */	cmpwi r5, 1
/* 8027E174 0027B0D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027E178 0027B0D8  41 82 00 38 */	beq lbl_8027E1B0
/* 8027E17C 0027B0DC  40 80 00 10 */	bge lbl_8027E18C
/* 8027E180 0027B0E0  2C 05 00 00 */	cmpwi r5, 0
/* 8027E184 0027B0E4  40 80 00 14 */	bge lbl_8027E198
/* 8027E188 0027B0E8  48 00 00 B8 */	b lbl_8027E240
lbl_8027E18C:
/* 8027E18C 0027B0EC  2C 05 00 03 */	cmpwi r5, 3
/* 8027E190 0027B0F0  40 80 00 B0 */	bge lbl_8027E240
/* 8027E194 0027B0F4  48 00 00 90 */	b lbl_8027E224
lbl_8027E198:
/* 8027E198 0027B0F8  38 80 00 01 */	li r4, 1
/* 8027E19C 0027B0FC  90 83 03 2C */	stw r4, 0x32c(r3)
/* 8027E1A0 0027B100  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027E1A4 0027B104  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8027E1A8 0027B108  98 03 07 0E */	stb r0, 0x70e(r3)
/* 8027E1AC 0027B10C  48 00 00 94 */	b lbl_8027E240
lbl_8027E1B0:
/* 8027E1B0 0027B110  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027E1B4 0027B114  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8027E1B8 0027B118  41 82 00 38 */	beq lbl_8027E1F0
/* 8027E1BC 0027B11C  3C A0 80 3F */	lis r5, lbl_803EB1F0@ha
/* 8027E1C0 0027B120  38 C1 00 14 */	addi r6, r1, 0x14
/* 8027E1C4 0027B124  39 45 B1 F0 */	addi r10, r5, lbl_803EB1F0@l
/* 8027E1C8 0027B128  38 A0 00 12 */	li r5, 0x12
/* 8027E1CC 0027B12C  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027E1D0 0027B130  38 E0 00 05 */	li r7, 5
/* 8027E1D4 0027B134  81 0A 00 04 */	lwz r8, 4(r10)
/* 8027E1D8 0027B138  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027E1DC 0027B13C  91 21 00 14 */	stw r9, 0x14(r1)
/* 8027E1E0 0027B140  91 01 00 18 */	stw r8, 0x18(r1)
/* 8027E1E4 0027B144  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027E1E8 0027B148  4B DF E5 CD */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027E1EC 0027B14C  48 00 00 54 */	b lbl_8027E240
lbl_8027E1F0:
/* 8027E1F0 0027B150  3C A0 80 3F */	lis r5, lbl_803EB1FC@ha
/* 8027E1F4 0027B154  38 C1 00 08 */	addi r6, r1, 8
/* 8027E1F8 0027B158  39 45 B1 FC */	addi r10, r5, lbl_803EB1FC@l
/* 8027E1FC 0027B15C  38 A0 00 07 */	li r5, 7
/* 8027E200 0027B160  81 2A 00 00 */	lwz r9, 0(r10)
/* 8027E204 0027B164  38 E0 00 02 */	li r7, 2
/* 8027E208 0027B168  81 0A 00 04 */	lwz r8, 4(r10)
/* 8027E20C 0027B16C  80 0A 00 08 */	lwz r0, 8(r10)
/* 8027E210 0027B170  91 21 00 08 */	stw r9, 8(r1)
/* 8027E214 0027B174  91 01 00 0C */	stw r8, 0xc(r1)
/* 8027E218 0027B178  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027E21C 0027B17C  4B DF E5 99 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8027E220 0027B180  48 00 00 20 */	b lbl_8027E240
lbl_8027E224:
/* 8027E224 0027B184  38 80 00 00 */	li r4, 0
/* 8027E228 0027B188  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 8027E22C 0027B18C  90 83 03 2C */	stw r4, 0x32c(r3)
/* 8027E230 0027B190  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027E234 0027B194  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8027E238 0027B198  98 03 07 0E */	stb r0, 0x70e(r3)
/* 8027E23C 0027B19C  4B FF EC 21 */	bl sub_8027ce5c
lbl_8027E240:
/* 8027E240 0027B1A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E244 0027B1A4  7C 08 03 A6 */	mtlr r0
/* 8027E248 0027B1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E24C 0027B1AC  4E 80 00 20 */	blr

.global Generate__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf
Generate__20CMetroidPrimeEssenceFR13CStateManager9EStateMsgf:
/* 8027E250 0027B1B0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8027E254 0027B1B4  7C 08 02 A6 */	mflr r0
/* 8027E258 0027B1B8  2C 05 00 01 */	cmpwi r5, 1
/* 8027E25C 0027B1BC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8027E260 0027B1C0  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8027E264 0027B1C4  7C 9F 23 78 */	mr r31, r4
/* 8027E268 0027B1C8  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8027E26C 0027B1CC  7C 7E 1B 78 */	mr r30, r3
/* 8027E270 0027B1D0  41 82 01 18 */	beq lbl_8027E388
/* 8027E274 0027B1D4  40 80 00 10 */	bge lbl_8027E284
/* 8027E278 0027B1D8  2C 05 00 00 */	cmpwi r5, 0
/* 8027E27C 0027B1DC  40 80 00 14 */	bge lbl_8027E290
/* 8027E280 0027B1E0  48 00 01 08 */	b lbl_8027E388
lbl_8027E284:
/* 8027E284 0027B1E4  2C 05 00 03 */	cmpwi r5, 3
/* 8027E288 0027B1E8  40 80 01 00 */	bge lbl_8027E388
/* 8027E28C 0027B1EC  48 00 00 BC */	b lbl_8027E348
lbl_8027E290:
/* 8027E290 0027B1F0  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8027E294 0027B1F4  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 8027E298 0027B1F8  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 8027E29C 0027B1FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8027E2A0 0027B200  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8027E2A4 0027B204  38 61 00 34 */	addi r3, r1, 0x34
/* 8027E2A8 0027B208  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8027E2AC 0027B20C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8027E2B0 0027B210  38 A1 00 28 */	addi r5, r1, 0x28
/* 8027E2B4 0027B214  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8027E2B8 0027B218  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8027E2BC 0027B21C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8027E2C0 0027B220  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8027E2C4 0027B224  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8027E2C8 0027B228  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8027E2CC 0027B22C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8027E2D0 0027B230  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8027E2D4 0027B234  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8027E2D8 0027B238  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8027E2DC 0027B23C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8027E2E0 0027B240  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8027E2E4 0027B244  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8027E2E8 0027B248  48 09 58 29 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8027E2EC 0027B24C  38 61 00 64 */	addi r3, r1, 0x64
/* 8027E2F0 0027B250  38 81 00 34 */	addi r4, r1, 0x34
/* 8027E2F4 0027B254  48 09 48 81 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8027E2F8 0027B258  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8027E2FC 0027B25C  38 7E 00 34 */	addi r3, r30, 0x34
/* 8027E300 0027B260  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8027E304 0027B264  38 81 00 64 */	addi r4, r1, 0x64
/* 8027E308 0027B268  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8027E30C 0027B26C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8027E310 0027B270  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8027E314 0027B274  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8027E318 0027B278  48 09 48 29 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8027E31C 0027B27C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8027E320 0027B280  38 60 00 01 */	li r3, 1
/* 8027E324 0027B284  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8027E328 0027B288  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8027E32C 0027B28C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8027E330 0027B290  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8027E334 0027B294  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8027E338 0027B298  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8027E33C 0027B29C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8027E340 0027B2A0  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8027E344 0027B2A4  48 00 00 44 */	b lbl_8027E388
lbl_8027E348:
/* 8027E348 0027B2A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8027E34C 0027B2AC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027E350 0027B2B0  7D 89 03 A6 */	mtctr r12
/* 8027E354 0027B2B4  4E 80 04 21 */	bctrl
/* 8027E358 0027B2B8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8027E35C 0027B2BC  7F E3 FB 78 */	mr r3, r31
/* 8027E360 0027B2C0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8027E364 0027B2C4  38 81 00 0C */	addi r4, r1, 0xc
/* 8027E368 0027B2C8  38 A0 00 5B */	li r5, 0x5b
/* 8027E36C 0027B2CC  B0 01 00 08 */	sth r0, 8(r1)
/* 8027E370 0027B2D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8027E374 0027B2D4  4B DC 5B D1 */	bl SetBossParams__13CStateManagerF9TUniqueIdfUi
/* 8027E378 0027B2D8  7F C3 F3 78 */	mr r3, r30
/* 8027E37C 0027B2DC  7F E4 FB 78 */	mr r4, r31
/* 8027E380 0027B2E0  38 A0 00 01 */	li r5, 1
/* 8027E384 0027B2E4  4B FF F4 0D */	bl sub_8027d790
lbl_8027E388:
/* 8027E388 0027B2E8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8027E38C 0027B2EC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8027E390 0027B2F0  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8027E394 0027B2F4  7C 08 03 A6 */	mtlr r0
/* 8027E398 0027B2F8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8027E39C 0027B2FC  4E 80 00 20 */	blr

.global AddToRenderer__20CMetroidPrimeEssenceCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__20CMetroidPrimeEssenceCFRC14CFrustumPlanesRC13CStateManager:
/* 8027E3A0 0027B300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027E3A4 0027B304  7C 08 02 A6 */	mflr r0
/* 8027E3A8 0027B308  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027E3AC 0027B30C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027E3B0 0027B310  7C BF 2B 78 */	mr r31, r5
/* 8027E3B4 0027B314  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027E3B8 0027B318  7C 9E 23 78 */	mr r30, r4
/* 8027E3BC 0027B31C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027E3C0 0027B320  7C 7D 1B 78 */	mr r29, r3
/* 8027E3C4 0027B324  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027E3C8 0027B328  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027E3CC 0027B32C  41 82 00 24 */	beq lbl_8027E3F0
/* 8027E3D0 0027B330  80 9D 06 5C */	lwz r4, 0x65c(r29)
/* 8027E3D4 0027B334  28 04 00 00 */	cmplwi r4, 0
/* 8027E3D8 0027B338  41 82 00 18 */	beq lbl_8027E3F0
/* 8027E3DC 0027B33C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8027E3E0 0027B340  81 83 00 00 */	lwz r12, 0(r3)
/* 8027E3E4 0027B344  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027E3E8 0027B348  7D 89 03 A6 */	mtctr r12
/* 8027E3EC 0027B34C  4E 80 04 21 */	bctrl
lbl_8027E3F0:
/* 8027E3F0 0027B350  7F A3 EB 78 */	mr r3, r29
/* 8027E3F4 0027B354  7F C4 F3 78 */	mr r4, r30
/* 8027E3F8 0027B358  7F E5 FB 78 */	mr r5, r31
/* 8027E3FC 0027B35C  4B DF 94 BD */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 8027E400 0027B360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027E404 0027B364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027E408 0027B368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027E40C 0027B36C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8027E410 0027B370  7C 08 03 A6 */	mtlr r0
/* 8027E414 0027B374  38 21 00 20 */	addi r1, r1, 0x20
/* 8027E418 0027B378  4E 80 00 20 */	blr

.global GetAimPosition__20CMetroidPrimeEssenceCFRC13CStateManagerf
GetAimPosition__20CMetroidPrimeEssenceCFRC13CStateManagerf:
/* 8027E41C 0027B37C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027E420 0027B380  7C 08 02 A6 */	mflr r0
/* 8027E424 0027B384  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027E428 0027B388  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8027E42C 0027B38C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8027E430 0027B390  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027E434 0027B394  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027E438 0027B398  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027E43C 0027B39C  7C 9E 23 78 */	mr r30, r4
/* 8027E440 0027B3A0  FF E0 08 90 */	fmr f31, f1
/* 8027E444 0027B3A4  A0 04 07 06 */	lhz r0, 0x706(r4)
/* 8027E448 0027B3A8  7C BF 2B 78 */	mr r31, r5
/* 8027E44C 0027B3AC  7C 7D 1B 78 */	mr r29, r3
/* 8027E450 0027B3B0  38 81 00 08 */	addi r4, r1, 8
/* 8027E454 0027B3B4  B0 01 00 08 */	sth r0, 8(r1)
/* 8027E458 0027B3B8  7F E3 FB 78 */	mr r3, r31
/* 8027E45C 0027B3BC  4B DC E1 49 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8027E460 0027B3C0  7C 64 1B 78 */	mr r4, r3
/* 8027E464 0027B3C4  38 61 00 0C */	addi r3, r1, 0xc
/* 8027E468 0027B3C8  4B E3 0E E5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027E46C 0027B3CC  80 63 00 04 */	lwz r3, 4(r3)
/* 8027E470 0027B3D0  28 03 00 00 */	cmplwi r3, 0
/* 8027E474 0027B3D4  41 82 00 20 */	beq lbl_8027E494
/* 8027E478 0027B3D8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8027E47C 0027B3DC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8027E480 0027B3E0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8027E484 0027B3E4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8027E488 0027B3E8  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8027E48C 0027B3EC  D0 5D 00 08 */	stfs f2, 8(r29)
/* 8027E490 0027B3F0  48 00 00 18 */	b lbl_8027E4A8
lbl_8027E494:
/* 8027E494 0027B3F4  FC 20 F8 90 */	fmr f1, f31
/* 8027E498 0027B3F8  7F A3 EB 78 */	mr r3, r29
/* 8027E49C 0027B3FC  7F C4 F3 78 */	mr r4, r30
/* 8027E4A0 0027B400  7F E5 FB 78 */	mr r5, r31
/* 8027E4A4 0027B404  4B DF A1 45 */	bl GetAimPosition__10CPatternedCFRC13CStateManagerf
lbl_8027E4A8:
/* 8027E4A8 0027B408  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8027E4AC 0027B40C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027E4B0 0027B410  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8027E4B4 0027B414  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027E4B8 0027B418  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027E4BC 0027B41C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027E4C0 0027B420  7C 08 03 A6 */	mtlr r0
/* 8027E4C4 0027B424  38 21 00 40 */	addi r1, r1, 0x40
/* 8027E4C8 0027B428  4E 80 00 20 */	blr

.global DoUserAnimEvent__20CMetroidPrimeEssenceFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__20CMetroidPrimeEssenceFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8027E4CC 0027B42C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8027E4D0 0027B430  7C 08 02 A6 */	mflr r0
/* 8027E4D4 0027B434  90 01 01 34 */	stw r0, 0x134(r1)
/* 8027E4D8 0027B438  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8027E4DC 0027B43C  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 8027E4E0 0027B440  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8027E4E4 0027B444  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 8027E4E8 0027B448  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8027E4EC 0027B44C  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 8027E4F0 0027B450  DB 81 00 F0 */	stfd f28, 0xf0(r1)
/* 8027E4F4 0027B454  F3 81 00 F8 */	psq_st f28, 248(r1), 0, qr0
/* 8027E4F8 0027B458  DB 61 00 E0 */	stfd f27, 0xe0(r1)
/* 8027E4FC 0027B45C  F3 61 00 E8 */	psq_st f27, 232(r1), 0, qr0
/* 8027E500 0027B460  BF 61 00 CC */	stmw r27, 0xcc(r1)
/* 8027E504 0027B464  7C DF 33 78 */	mr r31, r6
/* 8027E508 0027B468  FF E0 08 90 */	fmr f31, f1
/* 8027E50C 0027B46C  28 1F 00 1E */	cmplwi r31, 0x1e
/* 8027E510 0027B470  7C 7C 1B 78 */	mr r28, r3
/* 8027E514 0027B474  7C 9D 23 78 */	mr r29, r4
/* 8027E518 0027B478  7C BE 2B 78 */	mr r30, r5
/* 8027E51C 0027B47C  38 C0 00 00 */	li r6, 0
/* 8027E520 0027B480  41 81 02 F4 */	bgt lbl_8027E814
/* 8027E524 0027B484  3C A0 80 3F */	lis r5, lbl_803EB510@ha
/* 8027E528 0027B488  57 E0 10 3A */	slwi r0, r31, 2
/* 8027E52C 0027B48C  38 A5 B5 10 */	addi r5, r5, lbl_803EB510@l
/* 8027E530 0027B490  7C 05 00 2E */	lwzx r0, r5, r0
/* 8027E534 0027B494  7C 09 03 A6 */	mtctr r0
/* 8027E538 0027B498  4E 80 04 20 */	bctr
.global lbl_8027E53C
lbl_8027E53C:
/* 8027E53C 0027B49C  88 1C 07 0E */	lbz r0, 0x70e(r28)
/* 8027E540 0027B4A0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8027E544 0027B4A4  28 00 00 01 */	cmplwi r0, 1
/* 8027E548 0027B4A8  41 82 00 24 */	beq lbl_8027E56C
/* 8027E54C 0027B4AC  7F A5 EB 78 */	mr r5, r29
/* 8027E550 0027B4B0  38 80 00 10 */	li r4, 0x10
/* 8027E554 0027B4B4  38 C0 FF FF */	li r6, -1
/* 8027E558 0027B4B8  4B DD 2B 69 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8027E55C 0027B4BC  88 1C 07 0E */	lbz r0, 0x70e(r28)
/* 8027E560 0027B4C0  38 60 00 01 */	li r3, 1
/* 8027E564 0027B4C4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8027E568 0027B4C8  98 1C 07 0E */	stb r0, 0x70e(r28)
lbl_8027E56C:
/* 8027E56C 0027B4CC  38 C0 00 01 */	li r6, 1
/* 8027E570 0027B4D0  48 00 02 A4 */	b lbl_8027E814
.global lbl_8027E574
lbl_8027E574:
/* 8027E574 0027B4D4  A0 DC 07 0C */	lhz r6, 0x70c(r28)
/* 8027E578 0027B4D8  38 00 00 08 */	li r0, 8
/* 8027E57C 0027B4DC  81 1C 06 64 */	lwz r8, 0x664(r28)
/* 8027E580 0027B4E0  38 A1 00 74 */	addi r5, r1, 0x74
/* 8027E584 0027B4E4  80 FC 06 60 */	lwz r7, 0x660(r28)
/* 8027E588 0027B4E8  C0 62 BD 10 */	lfs f3, lbl_805ADA30@sda21(r2)
/* 8027E58C 0027B4EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027E590 0027B4F0  C0 42 BD 2C */	lfs f2, lbl_805ADA4C@sda21(r2)
/* 8027E594 0027B4F4  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8027E598 0027B4F8  C0 22 BD 38 */	lfs f1, lbl_805ADA58@sda21(r2)
/* 8027E59C 0027B4FC  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 8027E5A0 0027B500  C0 02 BD 54 */	lfs f0, lbl_805ADA74@sda21(r2)
/* 8027E5A4 0027B504  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8027E5A8 0027B508  88 1C 06 9C */	lbz r0, 0x69c(r28)
/* 8027E5AC 0027B50C  98 01 00 80 */	stb r0, 0x80(r1)
/* 8027E5B0 0027B510  C0 9C 06 A0 */	lfs f4, 0x6a0(r28)
/* 8027E5B4 0027B514  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 8027E5B8 0027B518  C0 9C 06 A4 */	lfs f4, 0x6a4(r28)
/* 8027E5BC 0027B51C  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 8027E5C0 0027B520  C0 9C 06 A8 */	lfs f4, 0x6a8(r28)
/* 8027E5C4 0027B524  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 8027E5C8 0027B528  C0 9C 06 AC */	lfs f4, 0x6ac(r28)
/* 8027E5CC 0027B52C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8027E5D0 0027B530  88 1C 06 B0 */	lbz r0, 0x6b0(r28)
/* 8027E5D4 0027B534  98 01 00 94 */	stb r0, 0x94(r1)
/* 8027E5D8 0027B538  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8027E5DC 0027B53C  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8027E5E0 0027B540  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8027E5E4 0027B544  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8027E5E8 0027B548  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 8027E5EC 0027B54C  B0 C1 00 AC */	sth r6, 0xac(r1)
/* 8027E5F0 0027B550  4B FF EF 3D */	bl sub_8027d52c
/* 8027E5F4 0027B554  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 8027E5F8 0027B558  7F 83 E3 78 */	mr r3, r28
/* 8027E5FC 0027B55C  7F A4 EB 78 */	mr r4, r29
/* 8027E600 0027B560  4B FF EE 31 */	bl sub_8027d430
/* 8027E604 0027B564  38 C0 00 01 */	li r6, 1
/* 8027E608 0027B568  48 00 02 0C */	b lbl_8027E814
.global lbl_8027E60C
lbl_8027E60C:
/* 8027E60C 0027B56C  4B FF F2 19 */	bl sub_8027d824
/* 8027E610 0027B570  38 C0 00 01 */	li r6, 1
/* 8027E614 0027B574  48 00 02 00 */	b lbl_8027E814
.global lbl_8027E618
lbl_8027E618:
/* 8027E618 0027B578  88 1C 07 0E */	lbz r0, 0x70e(r28)
/* 8027E61C 0027B57C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8027E620 0027B580  41 82 01 DC */	beq lbl_8027E7FC
/* 8027E624 0027B584  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 8027E628 0027B588  2C 00 00 00 */	cmpwi r0, 0
/* 8027E62C 0027B58C  41 82 01 D0 */	beq lbl_8027E7FC
/* 8027E630 0027B590  80 7C 06 E4 */	lwz r3, 0x6e4(r28)
/* 8027E634 0027B594  80 1C 06 F8 */	lwz r0, 0x6f8(r28)
/* 8027E638 0027B598  7C 03 00 00 */	cmpw r3, r0
/* 8027E63C 0027B59C  40 80 01 C0 */	bge lbl_8027E7FC
/* 8027E640 0027B5A0  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8027E644 0027B5A4  38 80 FF FF */	li r4, -1
/* 8027E648 0027B5A8  38 A0 00 01 */	li r5, 1
/* 8027E64C 0027B5AC  48 09 3F 49 */	bl Range__9CRandom16Fii
/* 8027E650 0027B5B0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8027E654 0027B5B4  3C 00 43 30 */	lis r0, 0x4330
/* 8027E658 0027B5B8  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 8027E65C 0027B5BC  38 80 FF FF */	li r4, -1
/* 8027E660 0027B5C0  C8 42 BD 20 */	lfd f2, lbl_805ADA40@sda21(r2)
/* 8027E664 0027B5C4  38 A0 00 01 */	li r5, 1
/* 8027E668 0027B5C8  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 8027E66C 0027B5CC  C0 02 BD 58 */	lfs f0, lbl_805ADA78@sda21(r2)
/* 8027E670 0027B5D0  C8 21 00 B0 */	lfd f1, 0xb0(r1)
/* 8027E674 0027B5D4  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8027E678 0027B5D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027E67C 0027B5DC  EF C0 00 72 */	fmuls f30, f0, f1
/* 8027E680 0027B5E0  48 09 3F 15 */	bl Range__9CRandom16Fii
/* 8027E684 0027B5E4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8027E688 0027B5E8  3C 00 43 30 */	lis r0, 0x4330
/* 8027E68C 0027B5EC  90 61 00 BC */	stw r3, 0xbc(r1)
/* 8027E690 0027B5F0  FC 20 F0 90 */	fmr f1, f30
/* 8027E694 0027B5F4  C8 62 BD 20 */	lfd f3, lbl_805ADA40@sda21(r2)
/* 8027E698 0027B5F8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 8027E69C 0027B5FC  C0 02 BD 5C */	lfs f0, lbl_805ADA7C@sda21(r2)
/* 8027E6A0 0027B600  C8 41 00 B8 */	lfd f2, 0xb8(r1)
/* 8027E6A4 0027B604  EC 42 18 28 */	fsubs f2, f2, f3
/* 8027E6A8 0027B608  EF 80 00 B2 */	fmuls f28, f0, f2
/* 8027E6AC 0027B60C  48 09 66 99 */	bl FastCosR__5CMathFf
/* 8027E6B0 0027B610  C0 02 BD 38 */	lfs f0, lbl_805ADA58@sda21(r2)
/* 8027E6B4 0027B614  EF 60 00 72 */	fmuls f27, f0, f1
/* 8027E6B8 0027B618  FC 20 E0 90 */	fmr f1, f28
/* 8027E6BC 0027B61C  48 09 66 89 */	bl FastCosR__5CMathFf
/* 8027E6C0 0027B620  EF BB 00 72 */	fmuls f29, f27, f1
/* 8027E6C4 0027B624  FC 20 F0 90 */	fmr f1, f30
/* 8027E6C8 0027B628  48 09 67 29 */	bl FastSinR__5CMathFf
/* 8027E6CC 0027B62C  FF C0 08 50 */	fneg f30, f1
/* 8027E6D0 0027B630  FC 20 E0 90 */	fmr f1, f28
/* 8027E6D4 0027B634  48 09 67 1D */	bl FastSinR__5CMathFf
/* 8027E6D8 0027B638  EC 5B 00 72 */	fmuls f2, f27, f1
/* 8027E6DC 0027B63C  C0 02 BD 38 */	lfs f0, lbl_805ADA58@sda21(r2)
/* 8027E6E0 0027B640  38 61 00 2C */	addi r3, r1, 0x2c
/* 8027E6E4 0027B644  38 9C 06 68 */	addi r4, r28, 0x668
/* 8027E6E8 0027B648  EC 20 07 B2 */	fmuls f1, f0, f30
/* 8027E6EC 0027B64C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8027E6F0 0027B650  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8027E6F4 0027B654  EC 00 07 72 */	fmuls f0, f0, f29
/* 8027E6F8 0027B658  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8027E6FC 0027B65C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8027E700 0027B660  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8027E704 0027B664  48 09 43 E5 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8027E708 0027B668  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8027E70C 0027B66C  7F A3 EB 78 */	mr r3, r29
/* 8027E710 0027B670  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8027E714 0027B674  38 81 00 08 */	addi r4, r1, 8
/* 8027E718 0027B678  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8027E71C 0027B67C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8027E720 0027B680  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8027E724 0027B684  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8027E728 0027B688  A0 1C 07 04 */	lhz r0, 0x704(r28)
/* 8027E72C 0027B68C  B0 01 00 08 */	sth r0, 8(r1)
/* 8027E730 0027B690  4B DC DE 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027E734 0027B694  7C 64 1B 78 */	mr r4, r3
/* 8027E738 0027B698  38 61 00 0C */	addi r3, r1, 0xc
/* 8027E73C 0027B69C  4B E2 7E 11 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8027E740 0027B6A0  83 63 00 04 */	lwz r27, 4(r3)
/* 8027E744 0027B6A4  28 1B 00 00 */	cmplwi r27, 0
/* 8027E748 0027B6A8  41 82 00 B4 */	beq lbl_8027E7FC
/* 8027E74C 0027B6AC  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 8027E750 0027B6B0  7F A5 EB 78 */	mr r5, r29
/* 8027E754 0027B6B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8027E758 0027B6B8  C0 22 BD 10 */	lfs f1, lbl_805ADA30@sda21(r2)
/* 8027E75C 0027B6BC  81 84 00 00 */	lwz r12, 0(r4)
/* 8027E760 0027B6C0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8027E764 0027B6C4  7D 89 03 A6 */	mtctr r12
/* 8027E768 0027B6C8  4E 80 04 21 */	bctrl
/* 8027E76C 0027B6CC  3C 80 80 5A */	lis r4, lbl_805A66F4@ha
/* 8027E770 0027B6D0  38 61 00 44 */	addi r3, r1, 0x44
/* 8027E774 0027B6D4  38 C4 66 F4 */	addi r6, r4, lbl_805A66F4@l
/* 8027E778 0027B6D8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8027E77C 0027B6DC  38 81 00 38 */	addi r4, r1, 0x38
/* 8027E780 0027B6E0  48 09 53 91 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8027E784 0027B6E4  38 7B 00 34 */	addi r3, r27, 0x34
/* 8027E788 0027B6E8  38 81 00 44 */	addi r4, r1, 0x44
/* 8027E78C 0027B6EC  48 09 43 B5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8027E790 0027B6F0  88 1B 00 E4 */	lbz r0, 0xe4(r27)
/* 8027E794 0027B6F4  38 C0 00 01 */	li r6, 1
/* 8027E798 0027B6F8  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 8027E79C 0027B6FC  7F 83 E3 78 */	mr r3, r28
/* 8027E7A0 0027B700  98 1B 00 E4 */	stb r0, 0xe4(r27)
/* 8027E7A4 0027B704  7F A5 EB 78 */	mr r5, r29
/* 8027E7A8 0027B708  38 9B 00 34 */	addi r4, r27, 0x34
/* 8027E7AC 0027B70C  88 1B 00 E4 */	lbz r0, 0xe4(r27)
/* 8027E7B0 0027B710  50 C0 1F 38 */	rlwimi r0, r6, 3, 0x1c, 0x1c
/* 8027E7B4 0027B714  98 1B 00 E4 */	stb r0, 0xe4(r27)
/* 8027E7B8 0027B718  88 1B 00 E4 */	lbz r0, 0xe4(r27)
/* 8027E7BC 0027B71C  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 8027E7C0 0027B720  98 1B 00 E4 */	stb r0, 0xe4(r27)
/* 8027E7C4 0027B724  48 00 00 AD */	bl sub_8027e870
/* 8027E7C8 0027B728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027E7CC 0027B72C  41 82 00 30 */	beq lbl_8027E7FC
/* 8027E7D0 0027B730  7F 83 E3 78 */	mr r3, r28
/* 8027E7D4 0027B734  7F A5 EB 78 */	mr r5, r29
/* 8027E7D8 0027B738  38 80 00 09 */	li r4, 9
/* 8027E7DC 0027B73C  38 C0 FF FF */	li r6, -1
/* 8027E7E0 0027B740  4B DD 28 E1 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8027E7E4 0027B744  C0 5B 00 60 */	lfs f2, 0x60(r27)
/* 8027E7E8 0027B748  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 8027E7EC 0027B74C  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 8027E7F0 0027B750  D0 1C 06 B4 */	stfs f0, 0x6b4(r28)
/* 8027E7F4 0027B754  D0 3C 06 B8 */	stfs f1, 0x6b8(r28)
/* 8027E7F8 0027B758  D0 5C 06 BC */	stfs f2, 0x6bc(r28)
lbl_8027E7FC:
/* 8027E7FC 0027B75C  38 C0 00 01 */	li r6, 1
/* 8027E800 0027B760  48 00 00 14 */	b lbl_8027E814
.global lbl_8027E804
lbl_8027E804:
/* 8027E804 0027B764  88 1C 07 0E */	lbz r0, 0x70e(r28)
/* 8027E808 0027B768  38 60 00 00 */	li r3, 0
/* 8027E80C 0027B76C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8027E810 0027B770  98 1C 07 0E */	stb r0, 0x70e(r28)
.global lbl_8027E814
lbl_8027E814:
/* 8027E814 0027B774  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8027E818 0027B778  40 82 00 1C */	bne lbl_8027E834
/* 8027E81C 0027B77C  FC 20 F8 90 */	fmr f1, f31
/* 8027E820 0027B780  7F 83 E3 78 */	mr r3, r28
/* 8027E824 0027B784  7F A4 EB 78 */	mr r4, r29
/* 8027E828 0027B788  7F C5 F3 78 */	mr r5, r30
/* 8027E82C 0027B78C  7F E6 FB 78 */	mr r6, r31
/* 8027E830 0027B790  4B DF A6 81 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8027E834:
/* 8027E834 0027B794  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 8027E838 0027B798  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8027E83C 0027B79C  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 8027E840 0027B7A0  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8027E844 0027B7A4  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 8027E848 0027B7A8  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 8027E84C 0027B7AC  E3 81 00 F8 */	psq_l f28, 248(r1), 0, qr0
/* 8027E850 0027B7B0  CB 81 00 F0 */	lfd f28, 0xf0(r1)
/* 8027E854 0027B7B4  E3 61 00 E8 */	psq_l f27, 232(r1), 0, qr0
/* 8027E858 0027B7B8  CB 61 00 E0 */	lfd f27, 0xe0(r1)
/* 8027E85C 0027B7BC  BB 61 00 CC */	lmw r27, 0xcc(r1)
/* 8027E860 0027B7C0  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8027E864 0027B7C4  7C 08 03 A6 */	mtlr r0
/* 8027E868 0027B7C8  38 21 01 30 */	addi r1, r1, 0x130
/* 8027E86C 0027B7CC  4E 80 00 20 */	blr

.global sub_8027e870
sub_8027e870:
/* 8027E870 0027B7D0  94 21 EA 30 */	stwu r1, -0x15d0(r1)
/* 8027E874 0027B7D4  7C 08 02 A6 */	mflr r0
/* 8027E878 0027B7D8  90 01 15 D4 */	stw r0, 0x15d4(r1)
/* 8027E87C 0027B7DC  38 00 15 C8 */	li r0, 0x15c8
/* 8027E880 0027B7E0  DB E1 15 C0 */	stfd f31, 0x15c0(r1)
/* 8027E884 0027B7E4  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 8027E888 0027B7E8  38 00 15 B8 */	li r0, 0x15b8
/* 8027E88C 0027B7EC  DB C1 15 B0 */	stfd f30, 0x15b0(r1)
/* 8027E890 0027B7F0  13 C1 00 0E */	psq_stx f30, r1, r0, 0, qr0
/* 8027E894 0027B7F4  38 00 15 A8 */	li r0, 0x15a8
/* 8027E898 0027B7F8  DB A1 15 A0 */	stfd f29, 0x15a0(r1)
/* 8027E89C 0027B7FC  13 A1 00 0E */	psq_stx f29, r1, r0, 0, qr0
/* 8027E8A0 0027B800  38 00 15 98 */	li r0, 0x1598
/* 8027E8A4 0027B804  DB 81 15 90 */	stfd f28, 0x1590(r1)
/* 8027E8A8 0027B808  13 81 00 0E */	psq_stx f28, r1, r0, 0, qr0
/* 8027E8AC 0027B80C  38 00 15 88 */	li r0, 0x1588
/* 8027E8B0 0027B810  DB 61 15 80 */	stfd f27, 0x1580(r1)
/* 8027E8B4 0027B814  13 61 00 0E */	psq_stx f27, r1, r0, 0, qr0
/* 8027E8B8 0027B818  38 00 15 78 */	li r0, 0x1578
/* 8027E8BC 0027B81C  DB 41 15 70 */	stfd f26, 0x1570(r1)
/* 8027E8C0 0027B820  13 41 00 0E */	psq_stx f26, r1, r0, 0, qr0
/* 8027E8C4 0027B824  BF 21 15 54 */	stmw r25, 0x1554(r1)
/* 8027E8C8 0027B828  38 00 00 00 */	li r0, 0
/* 8027E8CC 0027B82C  80 CD 98 FC */	lwz r6, lbl_805A84BC@sda21(r13)
/* 8027E8D0 0027B830  90 01 0D 44 */	stw r0, 0xd44(r1)
/* 8027E8D4 0027B834  7C 7D 1B 78 */	mr r29, r3
/* 8027E8D8 0027B838  7C 9E 23 78 */	mr r30, r4
/* 8027E8DC 0027B83C  7C BF 2B 78 */	mr r31, r5
/* 8027E8E0 0027B840  7C C5 33 78 */	mr r5, r6
/* 8027E8E4 0027B844  38 60 00 00 */	li r3, 0
/* 8027E8E8 0027B848  38 80 00 01 */	li r4, 1
/* 8027E8EC 0027B84C  48 10 B6 09 */	bl __shl2i
/* 8027E8F0 0027B850  80 AD 99 00 */	lwz r5, lbl_805A84C0@sda21(r13)
/* 8027E8F4 0027B854  7C 9B 23 78 */	mr r27, r4
/* 8027E8F8 0027B858  7C 7C 1B 78 */	mr r28, r3
/* 8027E8FC 0027B85C  38 60 00 00 */	li r3, 0
/* 8027E900 0027B860  38 80 00 01 */	li r4, 1
/* 8027E904 0027B864  48 10 B5 F1 */	bl __shl2i
/* 8027E908 0027B868  80 AD 99 04 */	lwz r5, lbl_805A84C4@sda21(r13)
/* 8027E90C 0027B86C  7F 7B 23 78 */	or r27, r27, r4
/* 8027E910 0027B870  7F 9C 1B 78 */	or r28, r28, r3
/* 8027E914 0027B874  38 60 00 00 */	li r3, 0
/* 8027E918 0027B878  38 80 00 01 */	li r4, 1
/* 8027E91C 0027B87C  48 10 B5 D9 */	bl __shl2i
/* 8027E920 0027B880  C3 BE 00 2C */	lfs f29, 0x2c(r30)
/* 8027E924 0027B884  7F 7B 23 78 */	or r27, r27, r4
/* 8027E928 0027B888  C0 02 BD 38 */	lfs f0, lbl_805ADA58@sda21(r2)
/* 8027E92C 0027B88C  7F 9C 1B 78 */	or r28, r28, r3
/* 8027E930 0027B890  C3 DE 00 1C */	lfs f30, 0x1c(r30)
/* 8027E934 0027B894  38 C0 00 01 */	li r6, 1
/* 8027E938 0027B898  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 8027E93C 0027B89C  EC 7D 00 2A */	fadds f3, f29, f0
/* 8027E940 0027B8A0  38 00 00 00 */	li r0, 0
/* 8027E944 0027B8A4  EC 9E 00 2A */	fadds f4, f30, f0
/* 8027E948 0027B8A8  EC BF 00 2A */	fadds f5, f31, f0
/* 8027E94C 0027B8AC  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 8027E950 0027B8B0  EC 5F 00 28 */	fsubs f2, f31, f0
/* 8027E954 0027B8B4  EC 3E 00 28 */	fsubs f1, f30, f0
/* 8027E958 0027B8B8  93 61 00 FC */	stw r27, 0xfc(r1)
/* 8027E95C 0027B8BC  EC 1D 00 28 */	fsubs f0, f29, f0
/* 8027E960 0027B8C0  93 81 00 F8 */	stw r28, 0xf8(r1)
/* 8027E964 0027B8C4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8027E968 0027B8C8  38 81 00 44 */	addi r4, r1, 0x44
/* 8027E96C 0027B8CC  90 01 01 04 */	stw r0, 0x104(r1)
/* 8027E970 0027B8D0  38 A1 00 38 */	addi r5, r1, 0x38
/* 8027E974 0027B8D4  90 01 01 00 */	stw r0, 0x100(r1)
/* 8027E978 0027B8D8  90 C1 01 08 */	stw r6, 0x108(r1)
/* 8027E97C 0027B8DC  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8027E980 0027B8E0  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 8027E984 0027B8E4  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8027E988 0027B8E8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8027E98C 0027B8EC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8027E990 0027B8F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8027E994 0027B8F4  48 0B 9B 75 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8027E998 0027B8F8  80 AD 99 18 */	lwz r5, lbl_805A84D8@sda21(r13)
/* 8027E99C 0027B8FC  38 60 00 00 */	li r3, 0
/* 8027E9A0 0027B900  38 80 00 01 */	li r4, 1
/* 8027E9A4 0027B904  48 10 B5 51 */	bl __shl2i
/* 8027E9A8 0027B908  80 AD 99 08 */	lwz r5, lbl_805A84C8@sda21(r13)
/* 8027E9AC 0027B90C  7C 9C 23 78 */	mr r28, r4
/* 8027E9B0 0027B910  7C 7B 1B 78 */	mr r27, r3
/* 8027E9B4 0027B914  38 60 00 00 */	li r3, 0
/* 8027E9B8 0027B918  38 80 00 01 */	li r4, 1
/* 8027E9BC 0027B91C  48 10 B5 39 */	bl __shl2i
/* 8027E9C0 0027B920  80 AD 99 0C */	lwz r5, lbl_805A84CC@sda21(r13)
/* 8027E9C4 0027B924  7C 99 23 78 */	mr r25, r4
/* 8027E9C8 0027B928  7C 7A 1B 78 */	mr r26, r3
/* 8027E9CC 0027B92C  38 60 00 00 */	li r3, 0
/* 8027E9D0 0027B930  38 80 00 01 */	li r4, 1
/* 8027E9D4 0027B934  48 10 B5 21 */	bl __shl2i
/* 8027E9D8 0027B938  80 AD 99 10 */	lwz r5, lbl_805A84D0@sda21(r13)
/* 8027E9DC 0027B93C  7F 39 23 78 */	or r25, r25, r4
/* 8027E9E0 0027B940  7F 5A 1B 78 */	or r26, r26, r3
/* 8027E9E4 0027B944  38 60 00 00 */	li r3, 0
/* 8027E9E8 0027B948  38 80 00 01 */	li r4, 1
/* 8027E9EC 0027B94C  48 10 B5 09 */	bl __shl2i
/* 8027E9F0 0027B950  80 AD 99 14 */	lwz r5, lbl_805A84D4@sda21(r13)
/* 8027E9F4 0027B954  7F 39 23 78 */	or r25, r25, r4
/* 8027E9F8 0027B958  7F 5A 1B 78 */	or r26, r26, r3
/* 8027E9FC 0027B95C  38 60 00 00 */	li r3, 0
/* 8027EA00 0027B960  38 80 00 01 */	li r4, 1
/* 8027EA04 0027B964  48 10 B4 F1 */	bl __shl2i
/* 8027EA08 0027B968  7F 39 23 78 */	or r25, r25, r4
/* 8027EA0C 0027B96C  7F 5A 1B 78 */	or r26, r26, r3
/* 8027EA10 0027B970  38 00 00 03 */	li r0, 3
/* 8027EA14 0027B974  93 21 00 CC */	stw r25, 0xcc(r1)
/* 8027EA18 0027B978  7F E3 FB 78 */	mr r3, r31
/* 8027EA1C 0027B97C  7F A7 EB 78 */	mr r7, r29
/* 8027EA20 0027B980  90 01 00 88 */	stw r0, 0x88(r1)
/* 8027EA24 0027B984  38 81 0D 44 */	addi r4, r1, 0xd44
/* 8027EA28 0027B988  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8027EA2C 0027B98C  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 8027EA30 0027B990  93 41 00 C8 */	stw r26, 0xc8(r1)
/* 8027EA34 0027B994  93 81 00 D4 */	stw r28, 0xd4(r1)
/* 8027EA38 0027B998  93 61 00 D0 */	stw r27, 0xd0(r1)
/* 8027EA3C 0027B99C  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8027EA40 0027B9A0  4B DC DC E1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8027EA44 0027B9A4  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8027EA48 0027B9A8  38 00 00 00 */	li r0, 0
/* 8027EA4C 0027B9AC  80 AD 99 1C */	lwz r5, lbl_805A84DC@sda21(r13)
/* 8027EA50 0027B9B0  38 60 00 00 */	li r3, 0
/* 8027EA54 0027B9B4  B0 81 00 0C */	sth r4, 0xc(r1)
/* 8027EA58 0027B9B8  38 80 00 01 */	li r4, 1
/* 8027EA5C 0027B9BC  90 01 01 40 */	stw r0, 0x140(r1)
/* 8027EA60 0027B9C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027EA64 0027B9C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027EA68 0027B9C8  48 10 B4 8D */	bl __shl2i
/* 8027EA6C 0027B9CC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8027EA70 0027B9D0  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8027EA74 0027B9D4  7C 00 1B 78 */	or r0, r0, r3
/* 8027EA78 0027B9D8  80 AD 99 20 */	lwz r5, lbl_805A84E0@sda21(r13)
/* 8027EA7C 0027B9DC  7C C4 23 78 */	or r4, r6, r4
/* 8027EA80 0027B9E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027EA84 0027B9E4  38 60 00 00 */	li r3, 0
/* 8027EA88 0027B9E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8027EA8C 0027B9EC  38 80 00 01 */	li r4, 1
/* 8027EA90 0027B9F0  48 10 B4 65 */	bl __shl2i
/* 8027EA94 0027B9F4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8027EA98 0027B9F8  3C A0 80 5A */	lis r5, skZero3f@ha
/* 8027EA9C 0027B9FC  C7 85 66 A0 */	lfsu f28, skZero3f@l(r5)
/* 8027EAA0 0027BA00  7C 00 1B 78 */	or r0, r0, r3
/* 8027EAA4 0027BA04  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8027EAA8 0027BA08  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027EAAC 0027BA0C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8027EAB0 0027BA10  7C C4 23 78 */	or r4, r6, r4
/* 8027EAB4 0027BA14  C3 65 00 04 */	lfs f27, 4(r5)
/* 8027EAB8 0027BA18  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8027EABC 0027BA1C  38 81 00 18 */	addi r4, r1, 0x18
/* 8027EAC0 0027BA20  C3 45 00 08 */	lfs f26, 8(r5)
/* 8027EAC4 0027BA24  48 05 0D F1 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 8027EAC8 0027BA28  C0 02 BD 38 */	lfs f0, lbl_805ADA58@sda21(r2)
/* 8027EACC 0027BA2C  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 8027EAD0 0027BA30  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 8027EAD4 0027BA34  D3 81 00 B8 */	stfs f28, 0xb8(r1)
/* 8027EAD8 0027BA38  7F E3 FB 78 */	mr r3, r31
/* 8027EADC 0027BA3C  7F C5 F3 78 */	mr r5, r30
/* 8027EAE0 0027BA40  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027EAE4 0027BA44  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8027EAE8 0027BA48  38 C1 00 C8 */	addi r6, r1, 0xc8
/* 8027EAEC 0027BA4C  38 E1 0D 44 */	addi r7, r1, 0xd44
/* 8027EAF0 0027BA50  D3 61 00 BC */	stfs f27, 0xbc(r1)
/* 8027EAF4 0027BA54  39 01 00 0C */	addi r8, r1, 0xc
/* 8027EAF8 0027BA58  39 21 01 40 */	addi r9, r1, 0x140
/* 8027EAFC 0027BA5C  D3 41 00 C0 */	stfs f26, 0xc0(r1)
/* 8027EB00 0027BA60  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8027EB04 0027BA64  4B F0 59 A1 */	bl "DetectCollision__14CGameCollisionFRC13CStateManagerRC19CCollisionPrimitiveRC12CTransform4fRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>R9TUniqueIdR18CCollisionInfoList"
/* 8027EB08 0027BA68  80 A1 01 40 */	lwz r5, 0x140(r1)
/* 8027EB0C 0027BA6C  2C 05 00 00 */	cmpwi r5, 0
/* 8027EB10 0027BA70  40 81 00 C0 */	ble lbl_8027EBD0
/* 8027EB14 0027BA74  3C 80 80 3F */	lis r4, lbl_803ECAF8@ha
/* 8027EB18 0027BA78  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8027EB1C 0027BA7C  38 04 CA F8 */	addi r0, r4, lbl_803ECAF8@l
/* 8027EB20 0027BA80  38 80 00 00 */	li r4, 0
/* 8027EB24 0027BA84  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027EB28 0027BA88  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8027EB2C 0027BA8C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027EB30 0027BA90  40 81 00 40 */	ble lbl_8027EB70
/* 8027EB34 0027BA94  2C 05 00 08 */	cmpwi r5, 8
/* 8027EB38 0027BA98  38 65 FF F8 */	addi r3, r5, -8
/* 8027EB3C 0027BA9C  40 81 00 20 */	ble lbl_8027EB5C
/* 8027EB40 0027BAA0  38 03 00 07 */	addi r0, r3, 7
/* 8027EB44 0027BAA4  54 00 E8 FE */	srwi r0, r0, 3
/* 8027EB48 0027BAA8  7C 09 03 A6 */	mtctr r0
/* 8027EB4C 0027BAAC  2C 03 00 00 */	cmpwi r3, 0
/* 8027EB50 0027BAB0  40 81 00 0C */	ble lbl_8027EB5C
lbl_8027EB54:
/* 8027EB54 0027BAB4  38 84 00 08 */	addi r4, r4, 8
/* 8027EB58 0027BAB8  42 00 FF FC */	bdnz lbl_8027EB54
lbl_8027EB5C:
/* 8027EB5C 0027BABC  7C 04 28 50 */	subf r0, r4, r5
/* 8027EB60 0027BAC0  7C 09 03 A6 */	mtctr r0
/* 8027EB64 0027BAC4  7C 04 28 00 */	cmpw r4, r5
/* 8027EB68 0027BAC8  40 80 00 08 */	bge lbl_8027EB70
lbl_8027EB6C:
/* 8027EB6C 0027BACC  42 00 00 00 */	bdnz lbl_8027EB6C
lbl_8027EB70:
/* 8027EB70 0027BAD0  80 A1 0D 44 */	lwz r5, 0xd44(r1)
/* 8027EB74 0027BAD4  38 60 00 00 */	li r3, 0
/* 8027EB78 0027BAD8  90 61 01 40 */	stw r3, 0x140(r1)
/* 8027EB7C 0027BADC  2C 05 00 00 */	cmpwi r5, 0
/* 8027EB80 0027BAE0  40 81 00 40 */	ble lbl_8027EBC0
/* 8027EB84 0027BAE4  2C 05 00 08 */	cmpwi r5, 8
/* 8027EB88 0027BAE8  38 85 FF F8 */	addi r4, r5, -8
/* 8027EB8C 0027BAEC  40 81 00 20 */	ble lbl_8027EBAC
/* 8027EB90 0027BAF0  38 04 00 07 */	addi r0, r4, 7
/* 8027EB94 0027BAF4  54 00 E8 FE */	srwi r0, r0, 3
/* 8027EB98 0027BAF8  7C 09 03 A6 */	mtctr r0
/* 8027EB9C 0027BAFC  2C 04 00 00 */	cmpwi r4, 0
/* 8027EBA0 0027BB00  40 81 00 0C */	ble lbl_8027EBAC
lbl_8027EBA4:
/* 8027EBA4 0027BB04  38 63 00 08 */	addi r3, r3, 8
/* 8027EBA8 0027BB08  42 00 FF FC */	bdnz lbl_8027EBA4
lbl_8027EBAC:
/* 8027EBAC 0027BB0C  7C 03 28 50 */	subf r0, r3, r5
/* 8027EBB0 0027BB10  7C 09 03 A6 */	mtctr r0
/* 8027EBB4 0027BB14  7C 03 28 00 */	cmpw r3, r5
/* 8027EBB8 0027BB18  40 80 00 08 */	bge lbl_8027EBC0
lbl_8027EBBC:
/* 8027EBBC 0027BB1C  42 00 00 00 */	bdnz lbl_8027EBBC
lbl_8027EBC0:
/* 8027EBC0 0027BB20  38 00 00 00 */	li r0, 0
/* 8027EBC4 0027BB24  38 60 00 00 */	li r3, 0
/* 8027EBC8 0027BB28  90 01 0D 44 */	stw r0, 0xd44(r1)
/* 8027EBCC 0027BB2C  48 00 02 60 */	b lbl_8027EE2C
lbl_8027EBD0:
/* 8027EBD0 0027BB30  A0 1D 07 06 */	lhz r0, 0x706(r29)
/* 8027EBD4 0027BB34  7F E3 FB 78 */	mr r3, r31
/* 8027EBD8 0027BB38  38 81 00 08 */	addi r4, r1, 8
/* 8027EBDC 0027BB3C  B0 01 00 08 */	sth r0, 8(r1)
/* 8027EBE0 0027BB40  4B DC D9 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027EBE4 0027BB44  7C 64 1B 78 */	mr r4, r3
/* 8027EBE8 0027BB48  38 61 00 10 */	addi r3, r1, 0x10
/* 8027EBEC 0027BB4C  4B E3 07 61 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027EBF0 0027BB50  83 23 00 04 */	lwz r25, 4(r3)
/* 8027EBF4 0027BB54  28 19 00 00 */	cmplwi r25, 0
/* 8027EBF8 0027BB58  41 82 01 74 */	beq lbl_8027ED6C
/* 8027EBFC 0027BB5C  C0 59 00 50 */	lfs f2, 0x50(r25)
/* 8027EC00 0027BB60  38 61 00 50 */	addi r3, r1, 0x50
/* 8027EC04 0027BB64  C0 39 00 60 */	lfs f1, 0x60(r25)
/* 8027EC08 0027BB68  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 8027EC0C 0027BB6C  EC 5E 10 28 */	fsubs f2, f30, f2
/* 8027EC10 0027BB70  EC 3D 08 28 */	fsubs f1, f29, f1
/* 8027EC14 0027BB74  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8027EC18 0027BB78  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8027EC1C 0027BB7C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8027EC20 0027BB80  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8027EC24 0027BB84  48 09 5C 95 */	bl Magnitude__9CVector3fCFv
/* 8027EC28 0027BB88  FF 40 08 90 */	fmr f26, f1
/* 8027EC2C 0027BB8C  80 AD 99 24 */	lwz r5, lbl_805A84E4@sda21(r13)
/* 8027EC30 0027BB90  38 60 00 00 */	li r3, 0
/* 8027EC34 0027BB94  38 80 00 01 */	li r4, 1
/* 8027EC38 0027BB98  48 10 B2 BD */	bl __shl2i
/* 8027EC3C 0027BB9C  38 C0 FF FF */	li r6, -1
/* 8027EC40 0027BBA0  38 A0 00 00 */	li r5, 0
/* 8027EC44 0027BBA4  38 00 00 02 */	li r0, 2
/* 8027EC48 0027BBA8  90 81 00 6C */	stw r4, 0x6c(r1)
/* 8027EC4C 0027BBAC  38 81 00 50 */	addi r4, r1, 0x50
/* 8027EC50 0027BBB0  90 61 00 68 */	stw r3, 0x68(r1)
/* 8027EC54 0027BBB4  38 61 00 20 */	addi r3, r1, 0x20
/* 8027EC58 0027BBB8  90 C1 00 64 */	stw r6, 0x64(r1)
/* 8027EC5C 0027BBBC  90 A1 00 60 */	stw r5, 0x60(r1)
/* 8027EC60 0027BBC0  90 01 00 70 */	stw r0, 0x70(r1)
/* 8027EC64 0027BBC4  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 8027EC68 0027BBC8  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 8027EC6C 0027BBCC  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 8027EC70 0027BBD0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8027EC74 0027BBD4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8027EC78 0027BBD8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8027EC7C 0027BBDC  48 09 5B D5 */	bl AsNormalized__9CVector3fCFv
/* 8027EC80 0027BBE0  FC 20 D0 90 */	fmr f1, f26
/* 8027EC84 0027BBE4  7F E4 FB 78 */	mr r4, r31
/* 8027EC88 0027BBE8  38 61 01 10 */	addi r3, r1, 0x110
/* 8027EC8C 0027BBEC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8027EC90 0027BBF0  38 C1 00 20 */	addi r6, r1, 0x20
/* 8027EC94 0027BBF4  38 E1 00 60 */	addi r7, r1, 0x60
/* 8027EC98 0027BBF8  4B DC E3 01 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 8027EC9C 0027BBFC  88 01 01 30 */	lbz r0, 0x130(r1)
/* 8027ECA0 0027BC00  28 00 00 00 */	cmplwi r0, 0
/* 8027ECA4 0027BC04  40 82 00 C8 */	bne lbl_8027ED6C
/* 8027ECA8 0027BC08  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 8027ECAC 0027BC0C  80 A1 01 40 */	lwz r5, 0x140(r1)
/* 8027ECB0 0027BC10  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 8027ECB4 0027BC14  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8027ECB8 0027BC18  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027ECBC 0027BC1C  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8027ECC0 0027BC20  2C 05 00 00 */	cmpwi r5, 0
/* 8027ECC4 0027BC24  38 60 00 00 */	li r3, 0
/* 8027ECC8 0027BC28  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027ECCC 0027BC2C  40 81 00 40 */	ble lbl_8027ED0C
/* 8027ECD0 0027BC30  2C 05 00 08 */	cmpwi r5, 8
/* 8027ECD4 0027BC34  38 85 FF F8 */	addi r4, r5, -8
/* 8027ECD8 0027BC38  40 81 00 20 */	ble lbl_8027ECF8
/* 8027ECDC 0027BC3C  38 04 00 07 */	addi r0, r4, 7
/* 8027ECE0 0027BC40  54 00 E8 FE */	srwi r0, r0, 3
/* 8027ECE4 0027BC44  7C 09 03 A6 */	mtctr r0
/* 8027ECE8 0027BC48  2C 04 00 00 */	cmpwi r4, 0
/* 8027ECEC 0027BC4C  40 81 00 0C */	ble lbl_8027ECF8
lbl_8027ECF0:
/* 8027ECF0 0027BC50  38 63 00 08 */	addi r3, r3, 8
/* 8027ECF4 0027BC54  42 00 FF FC */	bdnz lbl_8027ECF0
lbl_8027ECF8:
/* 8027ECF8 0027BC58  7C 03 28 50 */	subf r0, r3, r5
/* 8027ECFC 0027BC5C  7C 09 03 A6 */	mtctr r0
/* 8027ED00 0027BC60  7C 03 28 00 */	cmpw r3, r5
/* 8027ED04 0027BC64  40 80 00 08 */	bge lbl_8027ED0C
lbl_8027ED08:
/* 8027ED08 0027BC68  42 00 00 00 */	bdnz lbl_8027ED08
lbl_8027ED0C:
/* 8027ED0C 0027BC6C  80 A1 0D 44 */	lwz r5, 0xd44(r1)
/* 8027ED10 0027BC70  38 60 00 00 */	li r3, 0
/* 8027ED14 0027BC74  90 61 01 40 */	stw r3, 0x140(r1)
/* 8027ED18 0027BC78  2C 05 00 00 */	cmpwi r5, 0
/* 8027ED1C 0027BC7C  40 81 00 40 */	ble lbl_8027ED5C
/* 8027ED20 0027BC80  2C 05 00 08 */	cmpwi r5, 8
/* 8027ED24 0027BC84  38 85 FF F8 */	addi r4, r5, -8
/* 8027ED28 0027BC88  40 81 00 20 */	ble lbl_8027ED48
/* 8027ED2C 0027BC8C  38 04 00 07 */	addi r0, r4, 7
/* 8027ED30 0027BC90  54 00 E8 FE */	srwi r0, r0, 3
/* 8027ED34 0027BC94  7C 09 03 A6 */	mtctr r0
/* 8027ED38 0027BC98  2C 04 00 00 */	cmpwi r4, 0
/* 8027ED3C 0027BC9C  40 81 00 0C */	ble lbl_8027ED48
lbl_8027ED40:
/* 8027ED40 0027BCA0  38 63 00 08 */	addi r3, r3, 8
/* 8027ED44 0027BCA4  42 00 FF FC */	bdnz lbl_8027ED40
lbl_8027ED48:
/* 8027ED48 0027BCA8  7C 03 28 50 */	subf r0, r3, r5
/* 8027ED4C 0027BCAC  7C 09 03 A6 */	mtctr r0
/* 8027ED50 0027BCB0  7C 03 28 00 */	cmpw r3, r5
/* 8027ED54 0027BCB4  40 80 00 08 */	bge lbl_8027ED5C
lbl_8027ED58:
/* 8027ED58 0027BCB8  42 00 00 00 */	bdnz lbl_8027ED58
lbl_8027ED5C:
/* 8027ED5C 0027BCBC  38 00 00 00 */	li r0, 0
/* 8027ED60 0027BCC0  38 60 00 01 */	li r3, 1
/* 8027ED64 0027BCC4  90 01 0D 44 */	stw r0, 0xd44(r1)
/* 8027ED68 0027BCC8  48 00 00 C4 */	b lbl_8027EE2C
lbl_8027ED6C:
/* 8027ED6C 0027BCCC  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 8027ED70 0027BCD0  80 A1 01 40 */	lwz r5, 0x140(r1)
/* 8027ED74 0027BCD4  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 8027ED78 0027BCD8  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8027ED7C 0027BCDC  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027ED80 0027BCE0  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8027ED84 0027BCE4  2C 05 00 00 */	cmpwi r5, 0
/* 8027ED88 0027BCE8  38 60 00 00 */	li r3, 0
/* 8027ED8C 0027BCEC  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8027ED90 0027BCF0  40 81 00 40 */	ble lbl_8027EDD0
/* 8027ED94 0027BCF4  2C 05 00 08 */	cmpwi r5, 8
/* 8027ED98 0027BCF8  38 85 FF F8 */	addi r4, r5, -8
/* 8027ED9C 0027BCFC  40 81 00 20 */	ble lbl_8027EDBC
/* 8027EDA0 0027BD00  38 04 00 07 */	addi r0, r4, 7
/* 8027EDA4 0027BD04  54 00 E8 FE */	srwi r0, r0, 3
/* 8027EDA8 0027BD08  7C 09 03 A6 */	mtctr r0
/* 8027EDAC 0027BD0C  2C 04 00 00 */	cmpwi r4, 0
/* 8027EDB0 0027BD10  40 81 00 0C */	ble lbl_8027EDBC
lbl_8027EDB4:
/* 8027EDB4 0027BD14  38 63 00 08 */	addi r3, r3, 8
/* 8027EDB8 0027BD18  42 00 FF FC */	bdnz lbl_8027EDB4
lbl_8027EDBC:
/* 8027EDBC 0027BD1C  7C 03 28 50 */	subf r0, r3, r5
/* 8027EDC0 0027BD20  7C 09 03 A6 */	mtctr r0
/* 8027EDC4 0027BD24  7C 03 28 00 */	cmpw r3, r5
/* 8027EDC8 0027BD28  40 80 00 08 */	bge lbl_8027EDD0
lbl_8027EDCC:
/* 8027EDCC 0027BD2C  42 00 00 00 */	bdnz lbl_8027EDCC
lbl_8027EDD0:
/* 8027EDD0 0027BD30  80 A1 0D 44 */	lwz r5, 0xd44(r1)
/* 8027EDD4 0027BD34  38 60 00 00 */	li r3, 0
/* 8027EDD8 0027BD38  90 61 01 40 */	stw r3, 0x140(r1)
/* 8027EDDC 0027BD3C  2C 05 00 00 */	cmpwi r5, 0
/* 8027EDE0 0027BD40  40 81 00 40 */	ble lbl_8027EE20
/* 8027EDE4 0027BD44  2C 05 00 08 */	cmpwi r5, 8
/* 8027EDE8 0027BD48  38 85 FF F8 */	addi r4, r5, -8
/* 8027EDEC 0027BD4C  40 81 00 20 */	ble lbl_8027EE0C
/* 8027EDF0 0027BD50  38 04 00 07 */	addi r0, r4, 7
/* 8027EDF4 0027BD54  54 00 E8 FE */	srwi r0, r0, 3
/* 8027EDF8 0027BD58  7C 09 03 A6 */	mtctr r0
/* 8027EDFC 0027BD5C  2C 04 00 00 */	cmpwi r4, 0
/* 8027EE00 0027BD60  40 81 00 0C */	ble lbl_8027EE0C
lbl_8027EE04:
/* 8027EE04 0027BD64  38 63 00 08 */	addi r3, r3, 8
/* 8027EE08 0027BD68  42 00 FF FC */	bdnz lbl_8027EE04
lbl_8027EE0C:
/* 8027EE0C 0027BD6C  7C 03 28 50 */	subf r0, r3, r5
/* 8027EE10 0027BD70  7C 09 03 A6 */	mtctr r0
/* 8027EE14 0027BD74  7C 03 28 00 */	cmpw r3, r5
/* 8027EE18 0027BD78  40 80 00 08 */	bge lbl_8027EE20
lbl_8027EE1C:
/* 8027EE1C 0027BD7C  42 00 00 00 */	bdnz lbl_8027EE1C
lbl_8027EE20:
/* 8027EE20 0027BD80  38 00 00 00 */	li r0, 0
/* 8027EE24 0027BD84  38 60 00 00 */	li r3, 0
/* 8027EE28 0027BD88  90 01 0D 44 */	stw r0, 0xd44(r1)
lbl_8027EE2C:
/* 8027EE2C 0027BD8C  38 00 15 C8 */	li r0, 0x15c8
/* 8027EE30 0027BD90  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 8027EE34 0027BD94  CB E1 15 C0 */	lfd f31, 0x15c0(r1)
/* 8027EE38 0027BD98  38 00 15 B8 */	li r0, 0x15b8
/* 8027EE3C 0027BD9C  13 C1 00 0C */	psq_lx f30, r1, r0, 0, qr0
/* 8027EE40 0027BDA0  CB C1 15 B0 */	lfd f30, 0x15b0(r1)
/* 8027EE44 0027BDA4  38 00 15 A8 */	li r0, 0x15a8
/* 8027EE48 0027BDA8  13 A1 00 0C */	psq_lx f29, r1, r0, 0, qr0
/* 8027EE4C 0027BDAC  CB A1 15 A0 */	lfd f29, 0x15a0(r1)
/* 8027EE50 0027BDB0  38 00 15 98 */	li r0, 0x1598
/* 8027EE54 0027BDB4  13 81 00 0C */	psq_lx f28, r1, r0, 0, qr0
/* 8027EE58 0027BDB8  CB 81 15 90 */	lfd f28, 0x1590(r1)
/* 8027EE5C 0027BDBC  38 00 15 88 */	li r0, 0x1588
/* 8027EE60 0027BDC0  13 61 00 0C */	psq_lx f27, r1, r0, 0, qr0
/* 8027EE64 0027BDC4  CB 61 15 80 */	lfd f27, 0x1580(r1)
/* 8027EE68 0027BDC8  38 00 15 78 */	li r0, 0x1578
/* 8027EE6C 0027BDCC  13 41 00 0C */	psq_lx f26, r1, r0, 0, qr0
/* 8027EE70 0027BDD0  CB 41 15 70 */	lfd f26, 0x1570(r1)
/* 8027EE74 0027BDD4  BB 21 15 54 */	lmw r25, 0x1554(r1)
/* 8027EE78 0027BDD8  80 01 15 D4 */	lwz r0, 0x15d4(r1)
/* 8027EE7C 0027BDDC  7C 08 03 A6 */	mtlr r0
/* 8027EE80 0027BDE0  38 21 15 D0 */	addi r1, r1, 0x15d0
/* 8027EE84 0027BDE4  4E 80 00 20 */	blr

.global sub_8027ee88
sub_8027ee88:
/* 8027EE88 0027BDE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027EE8C 0027BDEC  7C 08 02 A6 */	mflr r0
/* 8027EE90 0027BDF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027EE94 0027BDF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027EE98 0027BDF8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027EE9C 0027BDFC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027EEA0 0027BE00  7C 9D 23 78 */	mr r29, r4
/* 8027EEA4 0027BE04  93 81 00 10 */	stw r28, 0x10(r1)
/* 8027EEA8 0027BE08  7C 7C 1B 78 */	mr r28, r3
/* 8027EEAC 0027BE0C  83 E4 08 38 */	lwz r31, 0x838(r4)
/* 8027EEB0 0027BE10  AB DF 20 08 */	lha r30, 0x2008(r31)
/* 8027EEB4 0027BE14  48 00 00 7C */	b lbl_8027EF30
lbl_8027EEB8:
/* 8027EEB8 0027BE18  7F E3 FB 78 */	mr r3, r31
/* 8027EEBC 0027BE1C  7F C4 F3 78 */	mr r4, r30
/* 8027EEC0 0027BE20  4B D9 0E 55 */	bl __vc__11CObjectListFi
/* 8027EEC4 0027BE24  7C 64 1B 78 */	mr r4, r3
/* 8027EEC8 0027BE28  38 61 00 08 */	addi r3, r1, 8
/* 8027EECC 0027BE2C  4B E2 DB 91 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 8027EED0 0027BE30  80 63 00 04 */	lwz r3, 4(r3)
/* 8027EED4 0027BE34  28 03 00 00 */	cmplwi r3, 0
/* 8027EED8 0027BE38  41 82 00 3C */	beq lbl_8027EF14
/* 8027EEDC 0027BE3C  7C 03 E0 40 */	cmplw r3, r28
/* 8027EEE0 0027BE40  41 82 00 34 */	beq lbl_8027EF14
/* 8027EEE4 0027BE44  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027EEE8 0027BE48  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027EEEC 0027BE4C  41 82 00 28 */	beq lbl_8027EF14
/* 8027EEF0 0027BE50  80 83 00 04 */	lwz r4, 4(r3)
/* 8027EEF4 0027BE54  80 1C 00 04 */	lwz r0, 4(r28)
/* 8027EEF8 0027BE58  7C 04 00 00 */	cmpw r4, r0
/* 8027EEFC 0027BE5C  40 82 00 18 */	bne lbl_8027EF14
/* 8027EF00 0027BE60  81 83 00 00 */	lwz r12, 0(r3)
/* 8027EF04 0027BE64  7F A4 EB 78 */	mr r4, r29
/* 8027EF08 0027BE68  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8027EF0C 0027BE6C  7D 89 03 A6 */	mtctr r12
/* 8027EF10 0027BE70  4E 80 04 21 */	bctrl
lbl_8027EF14:
/* 8027EF14 0027BE74  2C 1E FF FF */	cmpwi r30, -1
/* 8027EF18 0027BE78  41 82 00 14 */	beq lbl_8027EF2C
/* 8027EF1C 0027BE7C  57 C3 18 38 */	slwi r3, r30, 3
/* 8027EF20 0027BE80  38 03 00 08 */	addi r0, r3, 8
/* 8027EF24 0027BE84  7F DF 02 AE */	lhax r30, r31, r0
/* 8027EF28 0027BE88  48 00 00 08 */	b lbl_8027EF30
lbl_8027EF2C:
/* 8027EF2C 0027BE8C  3B C0 FF FF */	li r30, -1
lbl_8027EF30:
/* 8027EF30 0027BE90  2C 1E FF FF */	cmpwi r30, -1
/* 8027EF34 0027BE94  40 82 FF 84 */	bne lbl_8027EEB8
/* 8027EF38 0027BE98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027EF3C 0027BE9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027EF40 0027BEA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027EF44 0027BEA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8027EF48 0027BEA8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8027EF4C 0027BEAC  7C 08 03 A6 */	mtlr r0
/* 8027EF50 0027BEB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8027EF54 0027BEB4  4E 80 00 20 */	blr

.global sub_8027ef58
sub_8027ef58:
/* 8027EF58 0027BEB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027EF5C 0027BEBC  7C 08 02 A6 */	mflr r0
/* 8027EF60 0027BEC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027EF64 0027BEC4  38 00 00 00 */	li r0, 0
/* 8027EF68 0027BEC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027EF6C 0027BECC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027EF70 0027BED0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8027EF74 0027BED4  7C 7D 1B 78 */	mr r29, r3
/* 8027EF78 0027BED8  90 03 06 E4 */	stw r0, 0x6e4(r3)
/* 8027EF7C 0027BEDC  83 E4 08 38 */	lwz r31, 0x838(r4)
/* 8027EF80 0027BEE0  AB DF 20 08 */	lha r30, 0x2008(r31)
/* 8027EF84 0027BEE4  48 00 00 74 */	b lbl_8027EFF8
lbl_8027EF88:
/* 8027EF88 0027BEE8  7F E3 FB 78 */	mr r3, r31
/* 8027EF8C 0027BEEC  7F C4 F3 78 */	mr r4, r30
/* 8027EF90 0027BEF0  4B D9 0D 85 */	bl __vc__11CObjectListFi
/* 8027EF94 0027BEF4  7C 64 1B 78 */	mr r4, r3
/* 8027EF98 0027BEF8  38 61 00 08 */	addi r3, r1, 8
/* 8027EF9C 0027BEFC  4B E2 DA C1 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 8027EFA0 0027BF00  80 63 00 04 */	lwz r3, 4(r3)
/* 8027EFA4 0027BF04  28 03 00 00 */	cmplwi r3, 0
/* 8027EFA8 0027BF08  41 82 00 34 */	beq lbl_8027EFDC
/* 8027EFAC 0027BF0C  7C 03 E8 40 */	cmplw r3, r29
/* 8027EFB0 0027BF10  41 82 00 2C */	beq lbl_8027EFDC
/* 8027EFB4 0027BF14  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027EFB8 0027BF18  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027EFBC 0027BF1C  41 82 00 20 */	beq lbl_8027EFDC
/* 8027EFC0 0027BF20  80 63 00 04 */	lwz r3, 4(r3)
/* 8027EFC4 0027BF24  80 1D 00 04 */	lwz r0, 4(r29)
/* 8027EFC8 0027BF28  7C 03 00 00 */	cmpw r3, r0
/* 8027EFCC 0027BF2C  40 82 00 10 */	bne lbl_8027EFDC
/* 8027EFD0 0027BF30  80 7D 06 E4 */	lwz r3, 0x6e4(r29)
/* 8027EFD4 0027BF34  38 03 00 01 */	addi r0, r3, 1
/* 8027EFD8 0027BF38  90 1D 06 E4 */	stw r0, 0x6e4(r29)
lbl_8027EFDC:
/* 8027EFDC 0027BF3C  2C 1E FF FF */	cmpwi r30, -1
/* 8027EFE0 0027BF40  41 82 00 14 */	beq lbl_8027EFF4
/* 8027EFE4 0027BF44  57 C3 18 38 */	slwi r3, r30, 3
/* 8027EFE8 0027BF48  38 03 00 08 */	addi r0, r3, 8
/* 8027EFEC 0027BF4C  7F DF 02 AE */	lhax r30, r31, r0
/* 8027EFF0 0027BF50  48 00 00 08 */	b lbl_8027EFF8
lbl_8027EFF4:
/* 8027EFF4 0027BF54  3B C0 FF FF */	li r30, -1
lbl_8027EFF8:
/* 8027EFF8 0027BF58  2C 1E FF FF */	cmpwi r30, -1
/* 8027EFFC 0027BF5C  40 82 FF 8C */	bne lbl_8027EF88
/* 8027F000 0027BF60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027F004 0027BF64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027F008 0027BF68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027F00C 0027BF6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8027F010 0027BF70  7C 08 03 A6 */	mtlr r0
/* 8027F014 0027BF74  38 21 00 20 */	addi r1, r1, 0x20
/* 8027F018 0027BF78  4E 80 00 20 */	blr

.global Render__20CMetroidPrimeEssenceCFRC13CStateManager
Render__20CMetroidPrimeEssenceCFRC13CStateManager:
/* 8027F01C 0027BF7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027F020 0027BF80  7C 08 02 A6 */	mflr r0
/* 8027F024 0027BF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027F028 0027BF88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027F02C 0027BF8C  7C 9F 23 78 */	mr r31, r4
/* 8027F030 0027BF90  93 C1 00 08 */	stw r30, 8(r1)
/* 8027F034 0027BF94  7C 7E 1B 78 */	mr r30, r3
/* 8027F038 0027BF98  88 03 07 0E */	lbz r0, 0x70e(r3)
/* 8027F03C 0027BF9C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8027F040 0027BFA0  41 82 00 14 */	beq lbl_8027F054
/* 8027F044 0027BFA4  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 8027F048 0027BFA8  7F E3 FB 78 */	mr r3, r31
/* 8027F04C 0027BFAC  38 9E 06 B4 */	addi r4, r30, 0x6b4
/* 8027F050 0027BFB0  4B DC 63 AD */	bl DrawSpaceWarp__13CStateManagerCFRC9CVector3ff
lbl_8027F054:
/* 8027F054 0027BFB4  7F C3 F3 78 */	mr r3, r30
/* 8027F058 0027BFB8  7F E4 FB 78 */	mr r4, r31
/* 8027F05C 0027BFBC  4B DF 8F D1 */	bl Render__10CPatternedCFRC13CStateManager
/* 8027F060 0027BFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027F064 0027BFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027F068 0027BFC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027F06C 0027BFCC  7C 08 03 A6 */	mtlr r0
/* 8027F070 0027BFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8027F074 0027BFD4  4E 80 00 20 */	blr

.global PreRender__20CMetroidPrimeEssenceFR13CStateManagerRC14CFrustumPlanes
PreRender__20CMetroidPrimeEssenceFR13CStateManagerRC14CFrustumPlanes:
/* 8027F078 0027BFD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027F07C 0027BFDC  7C 08 02 A6 */	mflr r0
/* 8027F080 0027BFE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027F084 0027BFE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8027F088 0027BFE8  7C 7F 1B 78 */	mr r31, r3
/* 8027F08C 0027BFEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8027F090 0027BFF0  7C 9E 23 78 */	mr r30, r4
/* 8027F094 0027BFF4  4B DF 92 49 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 8027F098 0027BFF8  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 8027F09C 0027BFFC  7F C4 F3 78 */	mr r4, r30
/* 8027F0A0 0027C000  80 63 00 00 */	lwz r3, 0(r3)
/* 8027F0A4 0027C004  4B E1 24 B5 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 8027F0A8 0027C008  88 1F 07 0E */	lbz r0, 0x70e(r31)
/* 8027F0AC 0027C00C  3C A0 80 3D */	lis r5, lbl_803D5880@ha
/* 8027F0B0 0027C010  20 83 00 01 */	subfic r4, r3, 1
/* 8027F0B4 0027C014  54 66 10 3A */	slwi r6, r3, 2
/* 8027F0B8 0027C018  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8027F0BC 0027C01C  38 65 58 80 */	addi r3, r5, lbl_803D5880@l
/* 8027F0C0 0027C020  7C 80 00 34 */	cntlzw r0, r4
/* 8027F0C4 0027C024  7C A3 30 2E */	lwzx r5, r3, r6
/* 8027F0C8 0027C028  54 03 D9 7E */	srwi r3, r0, 5
/* 8027F0CC 0027C02C  41 82 00 B0 */	beq lbl_8027F17C
/* 8027F0D0 0027C030  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 8027F0D4 0027C034  C0 02 BD 3C */	lfs f0, lbl_805ADA5C@sda21(r2)
/* 8027F0D8 0027C038  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 8027F0DC 0027C03C  7C 05 00 00 */	cmpw r5, r0
/* 8027F0E0 0027C040  EC 80 08 28 */	fsubs f4, f0, f1
/* 8027F0E4 0027C044  41 82 00 1C */	beq lbl_8027F100
/* 8027F0E8 0027C048  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 8027F0EC 0027C04C  7C 05 00 00 */	cmpw r5, r0
/* 8027F0F0 0027C050  40 82 00 0C */	bne lbl_8027F0FC
/* 8027F0F4 0027C054  FC 80 08 90 */	fmr f4, f1
/* 8027F0F8 0027C058  48 00 00 08 */	b lbl_8027F100
lbl_8027F0FC:
/* 8027F0FC 0027C05C  C0 82 BD 10 */	lfs f4, lbl_805ADA30@sda21(r2)
lbl_8027F100:
/* 8027F100 0027C060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027F104 0027C064  41 82 00 0C */	beq lbl_8027F110
/* 8027F108 0027C068  3B C0 00 00 */	li r30, 0
/* 8027F10C 0027C06C  48 00 00 08 */	b lbl_8027F114
lbl_8027F110:
/* 8027F110 0027C070  83 DF 06 FC */	lwz r30, 0x6fc(r31)
lbl_8027F114:
/* 8027F114 0027C074  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 8027F118 0027C078  38 A0 00 05 */	li r5, 5
/* 8027F11C 0027C07C  38 80 00 00 */	li r4, 0
/* 8027F120 0027C080  38 00 00 03 */	li r0, 3
/* 8027F124 0027C084  FC 40 08 90 */	fmr f2, f1
/* 8027F128 0027C088  98 A1 00 08 */	stb r5, 8(r1)
/* 8027F12C 0027C08C  FC 60 08 90 */	fmr f3, f1
/* 8027F130 0027C090  38 61 00 0C */	addi r3, r1, 0xc
/* 8027F134 0027C094  98 81 00 09 */	stb r4, 9(r1)
/* 8027F138 0027C098  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8027F13C 0027C09C  48 0E 42 B1 */	bl __ct__6CColorFffff
/* 8027F140 0027C0A0  88 A1 00 08 */	lbz r5, 8(r1)
/* 8027F144 0027C0A4  88 81 00 09 */	lbz r4, 9(r1)
/* 8027F148 0027C0A8  A0 61 00 0A */	lhz r3, 0xa(r1)
/* 8027F14C 0027C0AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8027F150 0027C0B0  54 63 00 3A */	rlwinm r3, r3, 0, 0, 0x1d
/* 8027F154 0027C0B4  98 A1 00 10 */	stb r5, 0x10(r1)
/* 8027F158 0027C0B8  60 63 00 01 */	ori r3, r3, 1
/* 8027F15C 0027C0BC  98 BF 00 B4 */	stb r5, 0xb4(r31)
/* 8027F160 0027C0C0  9B DF 00 B5 */	stb r30, 0xb5(r31)
/* 8027F164 0027C0C4  B0 7F 00 B6 */	sth r3, 0xb6(r31)
/* 8027F168 0027C0C8  98 81 00 11 */	stb r4, 0x11(r1)
/* 8027F16C 0027C0CC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8027F170 0027C0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027F174 0027C0D4  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8027F178 0027C0D8  48 00 00 60 */	b lbl_8027F1D8
lbl_8027F17C:
/* 8027F17C 0027C0DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027F180 0027C0E0  41 82 00 0C */	beq lbl_8027F18C
/* 8027F184 0027C0E4  38 60 00 00 */	li r3, 0
/* 8027F188 0027C0E8  48 00 00 08 */	b lbl_8027F190
lbl_8027F18C:
/* 8027F18C 0027C0EC  80 7F 06 FC */	lwz r3, 0x6fc(r31)
lbl_8027F190:
/* 8027F190 0027C0F0  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 8027F194 0027C0F4  7C 64 07 74 */	extsb r4, r3
/* 8027F198 0027C0F8  88 7F 00 B4 */	lbz r3, 0xb4(r31)
/* 8027F19C 0027C0FC  7C 05 00 00 */	cmpw r5, r0
/* 8027F1A0 0027C100  A0 1F 00 B6 */	lhz r0, 0xb6(r31)
/* 8027F1A4 0027C104  80 BF 00 B8 */	lwz r5, 0xb8(r31)
/* 8027F1A8 0027C108  41 82 00 20 */	beq lbl_8027F1C8
/* 8027F1AC 0027C10C  98 7F 00 B4 */	stb r3, 0xb4(r31)
/* 8027F1B0 0027C110  54 00 04 3A */	rlwinm r0, r0, 0, 0x10, 0x1d
/* 8027F1B4 0027C114  60 00 00 01 */	ori r0, r0, 1
/* 8027F1B8 0027C118  98 9F 00 B5 */	stb r4, 0xb5(r31)
/* 8027F1BC 0027C11C  B0 1F 00 B6 */	sth r0, 0xb6(r31)
/* 8027F1C0 0027C120  90 BF 00 B8 */	stw r5, 0xb8(r31)
/* 8027F1C4 0027C124  48 00 00 14 */	b lbl_8027F1D8
lbl_8027F1C8:
/* 8027F1C8 0027C128  98 7F 00 B4 */	stb r3, 0xb4(r31)
/* 8027F1CC 0027C12C  98 9F 00 B5 */	stb r4, 0xb5(r31)
/* 8027F1D0 0027C130  B0 1F 00 B6 */	sth r0, 0xb6(r31)
/* 8027F1D4 0027C134  90 BF 00 B8 */	stw r5, 0xb8(r31)
lbl_8027F1D8:
/* 8027F1D8 0027C138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8027F1DC 0027C13C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8027F1E0 0027C140  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8027F1E4 0027C144  7C 08 03 A6 */	mtlr r0
/* 8027F1E8 0027C148  38 21 00 20 */	addi r1, r1, 0x20
/* 8027F1EC 0027C14C  4E 80 00 20 */	blr

.global sub_8027f1f0
sub_8027f1f0:
/* 8027F1F0 0027C150  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8027F1F4 0027C154  7C 08 02 A6 */	mflr r0
/* 8027F1F8 0027C158  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027F1FC 0027C15C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8027F200 0027C160  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8027F204 0027C164  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8027F208 0027C168  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8027F20C 0027C16C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8027F210 0027C170  7C 9F 23 78 */	mr r31, r4
/* 8027F214 0027C174  3C 80 80 3D */	lis r4, lbl_803D5880@ha
/* 8027F218 0027C178  80 BF 08 B8 */	lwz r5, 0x8b8(r31)
/* 8027F21C 0027C17C  7C 7E 1B 78 */	mr r30, r3
/* 8027F220 0027C180  38 84 58 80 */	addi r4, r4, lbl_803D5880@l
/* 8027F224 0027C184  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 8027F228 0027C188  80 A5 00 00 */	lwz r5, 0(r5)
/* 8027F22C 0027C18C  FF E0 08 90 */	fmr f31, f1
/* 8027F230 0027C190  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 8027F234 0027C194  54 A5 10 3A */	slwi r5, r5, 2
/* 8027F238 0027C198  7C 84 28 2E */	lwzx r4, r4, r5
/* 8027F23C 0027C19C  7C 04 00 00 */	cmpw r4, r0
/* 8027F240 0027C1A0  40 82 00 88 */	bne lbl_8027F2C8
/* 8027F244 0027C1A4  C0 42 BD 3C */	lfs f2, lbl_805ADA5C@sda21(r2)
/* 8027F248 0027C1A8  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 8027F24C 0027C1AC  C0 02 BD 60 */	lfs f0, lbl_805ADA80@sda21(r2)
/* 8027F250 0027C1B0  EC 42 08 28 */	fsubs f2, f2, f1
/* 8027F254 0027C1B4  EC 60 00 B2 */	fmuls f3, f0, f2
/* 8027F258 0027C1B8  F0 61 A0 09 */	psq_st f3, 9(r1), 1, qr2
/* 8027F25C 0027C1BC  88 01 00 09 */	lbz r0, 9(r1)
/* 8027F260 0027C1C0  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 8027F264 0027C1C4  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 8027F268 0027C1C8  C0 1E 06 CC */	lfs f0, 0x6cc(r30)
/* 8027F26C 0027C1CC  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8027F270 0027C1D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027F274 0027C1D4  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 8027F278 0027C1D8  D0 04 00 00 */	stfs f0, 0(r4)
/* 8027F27C 0027C1DC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8027F280 0027C1E0  D0 04 00 08 */	stfs f0, 8(r4)
/* 8027F284 0027C1E4  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F288 0027C1E8  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 8027F28C 0027C1EC  28 00 00 01 */	cmplwi r0, 1
/* 8027F290 0027C1F0  41 82 00 C4 */	beq lbl_8027F354
/* 8027F294 0027C1F4  7F E6 FB 78 */	mr r6, r31
/* 8027F298 0027C1F8  38 80 00 29 */	li r4, 0x29
/* 8027F29C 0027C1FC  38 A0 00 28 */	li r5, 0x28
/* 8027F2A0 0027C200  4B DD 50 15 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8027F2A4 0027C204  7F C3 F3 78 */	mr r3, r30
/* 8027F2A8 0027C208  7F E4 FB 78 */	mr r4, r31
/* 8027F2AC 0027C20C  38 A0 00 01 */	li r5, 1
/* 8027F2B0 0027C210  4B FF E4 E1 */	bl sub_8027d790
/* 8027F2B4 0027C214  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F2B8 0027C218  38 60 00 01 */	li r3, 1
/* 8027F2BC 0027C21C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8027F2C0 0027C220  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027F2C4 0027C224  48 00 00 90 */	b lbl_8027F354
lbl_8027F2C8:
/* 8027F2C8 0027C228  80 1E 06 E0 */	lwz r0, 0x6e0(r30)
/* 8027F2CC 0027C22C  7C 04 00 00 */	cmpw r4, r0
/* 8027F2D0 0027C230  40 82 00 0C */	bne lbl_8027F2DC
/* 8027F2D4 0027C234  C0 5E 06 C8 */	lfs f2, 0x6c8(r30)
/* 8027F2D8 0027C238  48 00 00 08 */	b lbl_8027F2E0
lbl_8027F2DC:
/* 8027F2DC 0027C23C  C0 42 BD 10 */	lfs f2, lbl_805ADA30@sda21(r2)
lbl_8027F2E0:
/* 8027F2E0 0027C240  C0 02 BD 60 */	lfs f0, lbl_805ADA80@sda21(r2)
/* 8027F2E4 0027C244  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8027F2E8 0027C248  F0 21 A0 08 */	psq_st f1, 8(r1), 1, qr2
/* 8027F2EC 0027C24C  88 01 00 08 */	lbz r0, 8(r1)
/* 8027F2F0 0027C250  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 8027F2F4 0027C254  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 8027F2F8 0027C258  C0 1E 06 CC */	lfs f0, 0x6cc(r30)
/* 8027F2FC 0027C25C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8027F300 0027C260  EC 00 08 28 */	fsubs f0, f0, f1
/* 8027F304 0027C264  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 8027F308 0027C268  D0 03 00 00 */	stfs f0, 0(r3)
/* 8027F30C 0027C26C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8027F310 0027C270  D0 03 00 08 */	stfs f0, 8(r3)
/* 8027F314 0027C274  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F318 0027C278  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8027F31C 0027C27C  41 82 00 38 */	beq lbl_8027F354
/* 8027F320 0027C280  7F C3 F3 78 */	mr r3, r30
/* 8027F324 0027C284  7F E6 FB 78 */	mr r6, r31
/* 8027F328 0027C288  38 80 00 29 */	li r4, 0x29
/* 8027F32C 0027C28C  38 A0 00 28 */	li r5, 0x28
/* 8027F330 0027C290  4B DD 4B A5 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8027F334 0027C294  7F C3 F3 78 */	mr r3, r30
/* 8027F338 0027C298  7F E4 FB 78 */	mr r4, r31
/* 8027F33C 0027C29C  38 A0 00 00 */	li r5, 0
/* 8027F340 0027C2A0  4B FF E4 51 */	bl sub_8027d790
/* 8027F344 0027C2A4  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F348 0027C2A8  38 60 00 00 */	li r3, 0
/* 8027F34C 0027C2AC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8027F350 0027C2B0  98 1E 07 0E */	stb r0, 0x70e(r30)
lbl_8027F354:
/* 8027F354 0027C2B4  7F C3 F3 78 */	mr r3, r30
/* 8027F358 0027C2B8  7F E4 FB 78 */	mr r4, r31
/* 8027F35C 0027C2BC  4B FF DA A1 */	bl sub_8027cdfc
/* 8027F360 0027C2C0  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F364 0027C2C4  7C 7D 1B 78 */	mr r29, r3
/* 8027F368 0027C2C8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8027F36C 0027C2CC  41 82 00 5C */	beq lbl_8027F3C8
/* 8027F370 0027C2D0  C0 42 BD 2C */	lfs f2, lbl_805ADA4C@sda21(r2)
/* 8027F374 0027C2D4  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 8027F378 0027C2D8  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027F37C 0027C2DC  EC 22 0F FC */	fnmsubs f1, f2, f31, f1
/* 8027F380 0027C2E0  D0 3E 06 C8 */	stfs f1, 0x6c8(r30)
/* 8027F384 0027C2E4  C0 7D 00 2C */	lfs f3, 0x2c(r29)
/* 8027F388 0027C2E8  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 8027F38C 0027C2EC  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8027F390 0027C2F0  D0 3E 06 B4 */	stfs f1, 0x6b4(r30)
/* 8027F394 0027C2F4  D0 5E 06 B8 */	stfs f2, 0x6b8(r30)
/* 8027F398 0027C2F8  D0 7E 06 BC */	stfs f3, 0x6bc(r30)
/* 8027F39C 0027C2FC  C0 3E 06 C8 */	lfs f1, 0x6c8(r30)
/* 8027F3A0 0027C300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027F3A4 0027C304  40 80 00 24 */	bge lbl_8027F3C8
/* 8027F3A8 0027C308  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 8027F3AC 0027C30C  38 60 00 00 */	li r3, 0
/* 8027F3B0 0027C310  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F3B4 0027C314  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8027F3B8 0027C318  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 8027F3BC 0027C31C  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F3C0 0027C320  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8027F3C4 0027C324  98 1E 07 0E */	stb r0, 0x70e(r30)
lbl_8027F3C8:
/* 8027F3C8 0027C328  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027F3CC 0027C32C  28 03 00 00 */	cmplwi r3, 0
/* 8027F3D0 0027C330  41 82 00 B8 */	beq lbl_8027F488
/* 8027F3D4 0027C334  81 83 00 00 */	lwz r12, 0(r3)
/* 8027F3D8 0027C338  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8027F3DC 0027C33C  7D 89 03 A6 */	mtctr r12
/* 8027F3E0 0027C340  4E 80 04 21 */	bctrl
/* 8027F3E4 0027C344  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027F3E8 0027C348  40 82 00 78 */	bne lbl_8027F460
/* 8027F3EC 0027C34C  83 FE 06 5C */	lwz r31, 0x65c(r30)
/* 8027F3F0 0027C350  7F A4 EB 78 */	mr r4, r29
/* 8027F3F4 0027C354  38 61 00 18 */	addi r3, r1, 0x18
/* 8027F3F8 0027C358  48 09 38 49 */	bl GetRotation__12CTransform4fCFv
/* 8027F3FC 0027C35C  7F E3 FB 78 */	mr r3, r31
/* 8027F400 0027C360  38 81 00 18 */	addi r4, r1, 0x18
/* 8027F404 0027C364  81 9F 00 00 */	lwz r12, 0(r31)
/* 8027F408 0027C368  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8027F40C 0027C36C  7D 89 03 A6 */	mtctr r12
/* 8027F410 0027C370  4E 80 04 21 */	bctrl
/* 8027F414 0027C374  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 8027F418 0027C378  38 81 00 0C */	addi r4, r1, 0xc
/* 8027F41C 0027C37C  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8027F420 0027C380  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8027F424 0027C384  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8027F428 0027C388  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8027F42C 0027C38C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8027F430 0027C390  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027F434 0027C394  81 83 00 00 */	lwz r12, 0(r3)
/* 8027F438 0027C398  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8027F43C 0027C39C  7D 89 03 A6 */	mtctr r12
/* 8027F440 0027C3A0  4E 80 04 21 */	bctrl
/* 8027F444 0027C3A4  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027F448 0027C3A8  FC 20 F8 90 */	fmr f1, f31
/* 8027F44C 0027C3AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8027F450 0027C3B0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8027F454 0027C3B4  7D 89 03 A6 */	mtctr r12
/* 8027F458 0027C3B8  4E 80 04 21 */	bctrl
/* 8027F45C 0027C3BC  48 00 00 2C */	b lbl_8027F488
lbl_8027F460:
/* 8027F460 0027C3C0  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 8027F464 0027C3C4  28 03 00 00 */	cmplwi r3, 0
/* 8027F468 0027C3C8  41 82 00 18 */	beq lbl_8027F480
/* 8027F46C 0027C3CC  81 83 00 00 */	lwz r12, 0(r3)
/* 8027F470 0027C3D0  38 80 00 01 */	li r4, 1
/* 8027F474 0027C3D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 8027F478 0027C3D8  7D 89 03 A6 */	mtctr r12
/* 8027F47C 0027C3DC  4E 80 04 21 */	bctrl
lbl_8027F480:
/* 8027F480 0027C3E0  38 00 00 00 */	li r0, 0
/* 8027F484 0027C3E4  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_8027F488:
/* 8027F488 0027C3E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8027F48C 0027C3EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8027F490 0027C3F0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8027F494 0027C3F4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8027F498 0027C3F8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8027F49C 0027C3FC  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8027F4A0 0027C400  7C 08 03 A6 */	mtlr r0
/* 8027F4A4 0027C404  38 21 00 70 */	addi r1, r1, 0x70
/* 8027F4A8 0027C408  4E 80 00 20 */	blr

.global Think__20CMetroidPrimeEssenceFfR13CStateManager
Think__20CMetroidPrimeEssenceFfR13CStateManager:
/* 8027F4AC 0027C40C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027F4B0 0027C410  7C 08 02 A6 */	mflr r0
/* 8027F4B4 0027C414  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027F4B8 0027C418  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8027F4BC 0027C41C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8027F4C0 0027C420  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027F4C4 0027C424  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027F4C8 0027C428  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8027F4CC 0027C42C  FF E0 08 90 */	fmr f31, f1
/* 8027F4D0 0027C430  7C 7E 1B 78 */	mr r30, r3
/* 8027F4D4 0027C434  7C 9F 23 78 */	mr r31, r4
/* 8027F4D8 0027C438  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8027F4DC 0027C43C  41 82 00 F8 */	beq lbl_8027F5D4
/* 8027F4E0 0027C440  4B DF A6 39 */	bl Think__10CPatternedFfR13CStateManager
/* 8027F4E4 0027C444  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8027F4E8 0027C448  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8027F4EC 0027C44C  41 82 00 14 */	beq lbl_8027F500
/* 8027F4F0 0027C450  FC 20 F8 90 */	fmr f1, f31
/* 8027F4F4 0027C454  7F C3 F3 78 */	mr r3, r30
/* 8027F4F8 0027C458  7F E4 FB 78 */	mr r4, r31
/* 8027F4FC 0027C45C  4B FF FC F5 */	bl sub_8027f1f0
lbl_8027F500:
/* 8027F500 0027C460  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8027F504 0027C464  FC 20 F8 90 */	fmr f1, f31
/* 8027F508 0027C468  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8027F50C 0027C46C  38 81 00 14 */	addi r4, r1, 0x14
/* 8027F510 0027C470  C0 C3 00 60 */	lfs f6, 0x60(r3)
/* 8027F514 0027C474  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 8027F518 0027C478  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8027F51C 0027C47C  EC 46 00 28 */	fsubs f2, f6, f0
/* 8027F520 0027C480  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8027F524 0027C484  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 8027F528 0027C488  EC 65 18 28 */	fsubs f3, f5, f3
/* 8027F52C 0027C48C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027F530 0027C490  EC 00 20 28 */	fsubs f0, f0, f4
/* 8027F534 0027C494  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8027F538 0027C498  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8027F53C 0027C49C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8027F540 0027C4A0  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8027F544 0027C4A4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8027F548 0027C4A8  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 8027F54C 0027C4AC  4B EB B1 59 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 8027F550 0027C4B0  FC 20 F8 90 */	fmr f1, f31
/* 8027F554 0027C4B4  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8027F558 0027C4B8  7F E4 FB 78 */	mr r4, r31
/* 8027F55C 0027C4BC  38 A0 00 00 */	li r5, 0
/* 8027F560 0027C4C0  4B F2 7E F1 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 8027F564 0027C4C4  7F C3 F3 78 */	mr r3, r30
/* 8027F568 0027C4C8  7F E4 FB 78 */	mr r4, r31
/* 8027F56C 0027C4CC  48 00 00 89 */	bl sub_8027f5f4
/* 8027F570 0027C4D0  7F C3 F3 78 */	mr r3, r30
/* 8027F574 0027C4D4  7F E4 FB 78 */	mr r4, r31
/* 8027F578 0027C4D8  4B FF F9 E1 */	bl sub_8027ef58
/* 8027F57C 0027C4DC  88 1E 07 0E */	lbz r0, 0x70e(r30)
/* 8027F580 0027C4E0  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8027F584 0027C4E4  41 82 00 50 */	beq lbl_8027F5D4
/* 8027F588 0027C4E8  C0 42 BD 38 */	lfs f2, lbl_805ADA58@sda21(r2)
/* 8027F58C 0027C4EC  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 8027F590 0027C4F0  C0 02 BD 3C */	lfs f0, lbl_805ADA5C@sda21(r2)
/* 8027F594 0027C4F4  EC 22 0F FA */	fmadds f1, f2, f31, f1
/* 8027F598 0027C4F8  D0 3E 06 D4 */	stfs f1, 0x6d4(r30)
/* 8027F59C 0027C4FC  C0 3E 06 D4 */	lfs f1, 0x6d4(r30)
/* 8027F5A0 0027C500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027F5A4 0027C504  4C 41 13 82 */	cror 2, 1, 2
/* 8027F5A8 0027C508  40 82 00 0C */	bne lbl_8027F5B4
/* 8027F5AC 0027C50C  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027F5B0 0027C510  D0 1E 06 D4 */	stfs f0, 0x6d4(r30)
lbl_8027F5B4:
/* 8027F5B4 0027C514  C0 5E 06 D4 */	lfs f2, 0x6d4(r30)
/* 8027F5B8 0027C518  7F C3 F3 78 */	mr r3, r30
/* 8027F5BC 0027C51C  C0 22 BD 64 */	lfs f1, lbl_805ADA84@sda21(r2)
/* 8027F5C0 0027C520  C0 02 BD 3C */	lfs f0, lbl_805ADA5C@sda21(r2)
/* 8027F5C4 0027C524  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8027F5C8 0027C528  EC 02 00 28 */	fsubs f0, f2, f0
/* 8027F5CC 0027C52C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8027F5D0 0027C530  4B FF D8 8D */	bl sub_8027ce5c
lbl_8027F5D4:
/* 8027F5D4 0027C534  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8027F5D8 0027C538  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027F5DC 0027C53C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8027F5E0 0027C540  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027F5E4 0027C544  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027F5E8 0027C548  7C 08 03 A6 */	mtlr r0
/* 8027F5EC 0027C54C  38 21 00 40 */	addi r1, r1, 0x40
/* 8027F5F0 0027C550  4E 80 00 20 */	blr

.global sub_8027f5f4
sub_8027f5f4:
/* 8027F5F4 0027C554  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027F5F8 0027C558  7C 08 02 A6 */	mflr r0
/* 8027F5FC 0027C55C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027F600 0027C560  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8027F604 0027C564  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8027F608 0027C568  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027F60C 0027C56C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027F610 0027C570  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027F614 0027C574  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8027F618 0027C578  7C 7D 1B 78 */	mr r29, r3
/* 8027F61C 0027C57C  7C 9E 23 78 */	mr r30, r4
/* 8027F620 0027C580  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8027F624 0027C584  41 82 00 E0 */	beq lbl_8027F704
/* 8027F628 0027C588  A0 1D 07 06 */	lhz r0, 0x706(r29)
/* 8027F62C 0027C58C  7F C3 F3 78 */	mr r3, r30
/* 8027F630 0027C590  38 81 00 08 */	addi r4, r1, 8
/* 8027F634 0027C594  B0 01 00 08 */	sth r0, 8(r1)
/* 8027F638 0027C598  4B DC CF 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027F63C 0027C59C  7C 64 1B 78 */	mr r4, r3
/* 8027F640 0027C5A0  38 61 00 0C */	addi r3, r1, 0xc
/* 8027F644 0027C5A4  4B E2 FD 09 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027F648 0027C5A8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8027F64C 0027C5AC  28 1F 00 00 */	cmplwi r31, 0
/* 8027F650 0027C5B0  41 82 00 50 */	beq lbl_8027F6A0
/* 8027F654 0027C5B4  7F A3 EB 78 */	mr r3, r29
/* 8027F658 0027C5B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027F65C 0027C5BC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8027F660 0027C5C0  7D 89 03 A6 */	mtctr r12
/* 8027F664 0027C5C4  4E 80 04 21 */	bctrl
/* 8027F668 0027C5C8  7C 64 1B 78 */	mr r4, r3
/* 8027F66C 0027C5CC  7F E3 FB 78 */	mr r3, r31
/* 8027F670 0027C5D0  4B F2 95 29 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 8027F674 0027C5D4  7F E3 FB 78 */	mr r3, r31
/* 8027F678 0027C5D8  7F C4 F3 78 */	mr r4, r30
/* 8027F67C 0027C5DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8027F680 0027C5E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027F684 0027C5E4  7D 89 03 A6 */	mtctr r12
/* 8027F688 0027C5E8  4E 80 04 21 */	bctrl
/* 8027F68C 0027C5EC  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8027F690 0027C5F0  7F A3 EB 78 */	mr r3, r29
/* 8027F694 0027C5F4  7F C4 F3 78 */	mr r4, r30
/* 8027F698 0027C5F8  4B E2 36 E1 */	bl HealthInfo__3CAiFR13CStateManager
/* 8027F69C 0027C5FC  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_8027F6A0:
/* 8027F6A0 0027C600  7F A3 EB 78 */	mr r3, r29
/* 8027F6A4 0027C604  7F C4 F3 78 */	mr r4, r30
/* 8027F6A8 0027C608  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027F6AC 0027C60C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027F6B0 0027C610  7D 89 03 A6 */	mtctr r12
/* 8027F6B4 0027C614  4E 80 04 21 */	bctrl
/* 8027F6B8 0027C618  C0 23 00 00 */	lfs f1, 0(r3)
/* 8027F6BC 0027C61C  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027F6C0 0027C620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027F6C4 0027C624  4C 40 13 82 */	cror 2, 0, 2
/* 8027F6C8 0027C628  40 82 00 3C */	bne lbl_8027F704
/* 8027F6CC 0027C62C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027F6D0 0027C630  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8027F6D4 0027C634  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 8027F6D8 0027C638  7F A3 EB 78 */	mr r3, r29
/* 8027F6DC 0027C63C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8027F6E0 0027C640  7F C4 F3 78 */	mr r4, r30
/* 8027F6E4 0027C644  38 C0 00 14 */	li r6, 0x14
/* 8027F6E8 0027C648  7D 89 03 A6 */	mtctr r12
/* 8027F6EC 0027C64C  4E 80 04 21 */	bctrl
/* 8027F6F0 0027C650  7F A3 EB 78 */	mr r3, r29
/* 8027F6F4 0027C654  7F C6 F3 78 */	mr r6, r30
/* 8027F6F8 0027C658  38 80 00 29 */	li r4, 0x29
/* 8027F6FC 0027C65C  38 A0 00 28 */	li r5, 0x28
/* 8027F700 0027C660  4B DD 47 D5 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_8027F704:
/* 8027F704 0027C664  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8027F708 0027C668  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027F70C 0027C66C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8027F710 0027C670  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027F714 0027C674  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027F718 0027C678  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027F71C 0027C67C  7C 08 03 A6 */	mtlr r0
/* 8027F720 0027C680  38 21 00 40 */	addi r1, r1, 0x40
/* 8027F724 0027C684  4E 80 00 20 */	blr

.global sub_8027f728
sub_8027f728:
/* 8027F728 0027C688  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8027F72C 0027C68C  7C 08 02 A6 */	mflr r0
/* 8027F730 0027C690  90 01 00 34 */	stw r0, 0x34(r1)
/* 8027F734 0027C694  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8027F738 0027C698  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8027F73C 0027C69C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8027F740 0027C6A0  7C 9D 23 78 */	mr r29, r4
/* 8027F744 0027C6A4  93 81 00 20 */	stw r28, 0x20(r1)
/* 8027F748 0027C6A8  7C 7C 1B 78 */	mr r28, r3
/* 8027F74C 0027C6AC  81 83 00 00 */	lwz r12, 0(r3)
/* 8027F750 0027C6B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027F754 0027C6B4  7D 89 03 A6 */	mtctr r12
/* 8027F758 0027C6B8  4E 80 04 21 */	bctrl
/* 8027F75C 0027C6BC  A0 1C 07 06 */	lhz r0, 0x706(r28)
/* 8027F760 0027C6C0  7C 7F 1B 78 */	mr r31, r3
/* 8027F764 0027C6C4  7F A3 EB 78 */	mr r3, r29
/* 8027F768 0027C6C8  38 81 00 08 */	addi r4, r1, 8
/* 8027F76C 0027C6CC  B0 01 00 08 */	sth r0, 8(r1)
/* 8027F770 0027C6D0  4B DC CE 05 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027F774 0027C6D4  7C 64 1B 78 */	mr r4, r3
/* 8027F778 0027C6D8  38 61 00 0C */	addi r3, r1, 0xc
/* 8027F77C 0027C6DC  4B E2 FB D1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027F780 0027C6E0  83 C3 00 04 */	lwz r30, 4(r3)
/* 8027F784 0027C6E4  28 1E 00 00 */	cmplwi r30, 0
/* 8027F788 0027C6E8  41 82 00 4C */	beq lbl_8027F7D4
/* 8027F78C 0027C6EC  7F C3 F3 78 */	mr r3, r30
/* 8027F790 0027C6F0  7F A4 EB 78 */	mr r4, r29
/* 8027F794 0027C6F4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8027F798 0027C6F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027F79C 0027C6FC  7D 89 03 A6 */	mtctr r12
/* 8027F7A0 0027C700  4E 80 04 21 */	bctrl
/* 8027F7A4 0027C704  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8027F7A8 0027C708  D0 03 00 00 */	stfs f0, 0(r3)
/* 8027F7AC 0027C70C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8027F7B0 0027C710  D0 03 00 04 */	stfs f0, 4(r3)
/* 8027F7B4 0027C714  7F 83 E3 78 */	mr r3, r28
/* 8027F7B8 0027C718  81 9C 00 00 */	lwz r12, 0(r28)
/* 8027F7BC 0027C71C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8027F7C0 0027C720  7D 89 03 A6 */	mtctr r12
/* 8027F7C4 0027C724  4E 80 04 21 */	bctrl
/* 8027F7C8 0027C728  7C 64 1B 78 */	mr r4, r3
/* 8027F7CC 0027C72C  7F C3 F3 78 */	mr r3, r30
/* 8027F7D0 0027C730  4B F2 93 C9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8027F7D4:
/* 8027F7D4 0027C734  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8027F7D8 0027C738  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8027F7DC 0027C73C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8027F7E0 0027C740  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8027F7E4 0027C744  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8027F7E8 0027C748  7C 08 03 A6 */	mtlr r0
/* 8027F7EC 0027C74C  38 21 00 30 */	addi r1, r1, 0x30
/* 8027F7F0 0027C750  4E 80 00 20 */	blr

.global sub_8027f7f4
sub_8027f7f4:
/* 8027F7F4 0027C754  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8027F7F8 0027C758  7C 08 02 A6 */	mflr r0
/* 8027F7FC 0027C75C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8027F800 0027C760  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 8027F804 0027C764  7C B9 2B 78 */	mr r25, r5
/* 8027F808 0027C768  7C DA 33 78 */	mr r26, r6
/* 8027F80C 0027C76C  7C 9E 23 78 */	mr r30, r4
/* 8027F810 0027C770  3B A1 00 60 */	addi r29, r1, 0x60
/* 8027F814 0027C774  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 8027F818 0027C778  3B 60 00 00 */	li r27, 0
/* 8027F81C 0027C77C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8027F820 0027C780  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8027F824 0027C784  48 00 01 20 */	b lbl_8027F944
lbl_8027F828:
/* 8027F828 0027C788  80 9E 00 00 */	lwz r4, 0(r30)
/* 8027F82C 0027C78C  38 61 00 24 */	addi r3, r1, 0x24
/* 8027F830 0027C790  4B D8 54 89 */	bl string_l__4rstlFPCc
/* 8027F834 0027C794  7F E4 FB 78 */	mr r4, r31
/* 8027F838 0027C798  38 61 00 0C */	addi r3, r1, 0xc
/* 8027F83C 0027C79C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8027F840 0027C7A0  4B DA EF F9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8027F844 0027C7A4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8027F848 0027C7A8  38 61 00 24 */	addi r3, r1, 0x24
/* 8027F84C 0027C7AC  98 01 00 10 */	stb r0, 0x10(r1)
/* 8027F850 0027C7B0  48 0B E2 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027F854 0027C7B4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8027F858 0027C7B8  28 00 00 FF */	cmplwi r0, 0xff
/* 8027F85C 0027C7BC  41 82 00 E0 */	beq lbl_8027F93C
/* 8027F860 0027C7C0  80 9E 00 00 */	lwz r4, 0(r30)
/* 8027F864 0027C7C4  38 61 00 14 */	addi r3, r1, 0x14
/* 8027F868 0027C7C8  4B D8 54 51 */	bl string_l__4rstlFPCc
/* 8027F86C 0027C7CC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8027F870 0027C7D0  38 61 00 34 */	addi r3, r1, 0x34
/* 8027F874 0027C7D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8027F878 0027C7D8  38 81 00 08 */	addi r4, r1, 8
/* 8027F87C 0027C7DC  98 01 00 08 */	stb r0, 8(r1)
/* 8027F880 0027C7E0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8027F884 0027C7E4  C0 42 BD 14 */	lfs f2, lbl_805ADA34@sda21(r2)
/* 8027F888 0027C7E8  4B F2 8F 85 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8027F88C 0027C7EC  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 8027F890 0027C7F0  7F 83 E3 78 */	mr r3, r28
/* 8027F894 0027C7F4  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 8027F898 0027C7F8  7F A4 EB 78 */	mr r4, r29
/* 8027F89C 0027C7FC  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 8027F8A0 0027C800  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 8027F8A4 0027C804  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 8027F8A8 0027C808  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 8027F8AC 0027C80C  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 8027F8B0 0027C810  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 8027F8B4 0027C814  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 8027F8B8 0027C818  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8027F8BC 0027C81C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8027F8C0 0027C820  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8027F8C4 0027C824  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8027F8C8 0027C828  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8027F8CC 0027C82C  98 A1 00 80 */	stb r5, 0x80(r1)
/* 8027F8D0 0027C830  98 01 00 81 */	stb r0, 0x81(r1)
/* 8027F8D4 0027C834  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 8027F8D8 0027C838  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 8027F8DC 0027C83C  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8027F8E0 0027C840  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8027F8E4 0027C844  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8027F8E8 0027C848  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8027F8EC 0027C84C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8027F8F0 0027C850  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8027F8F4 0027C854  48 0B E8 6D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8027F8F8 0027C858  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 8027F8FC 0027C85C  28 1D 00 00 */	cmplwi r29, 0
/* 8027F900 0027C860  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8027F904 0027C864  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 8027F908 0027C868  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8027F90C 0027C86C  41 82 00 0C */	beq lbl_8027F918
/* 8027F910 0027C870  7F A3 EB 78 */	mr r3, r29
/* 8027F914 0027C874  48 0B E1 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8027F918:
/* 8027F918 0027C878  38 61 00 14 */	addi r3, r1, 0x14
/* 8027F91C 0027C87C  48 0B E1 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027F920 0027C880  7F 43 D3 78 */	mr r3, r26
/* 8027F924 0027C884  38 81 00 78 */	addi r4, r1, 0x78
/* 8027F928 0027C888  4B ED 69 09 */	bl sub_80156230
/* 8027F92C 0027C88C  28 1C 00 00 */	cmplwi r28, 0
/* 8027F930 0027C890  41 82 00 0C */	beq lbl_8027F93C
/* 8027F934 0027C894  7F 83 E3 78 */	mr r3, r28
/* 8027F938 0027C898  48 0B E1 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8027F93C:
/* 8027F93C 0027C89C  3B DE 00 08 */	addi r30, r30, 8
/* 8027F940 0027C8A0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8027F944:
/* 8027F944 0027C8A4  7C 1B C8 00 */	cmpw r27, r25
/* 8027F948 0027C8A8  41 80 FE E0 */	blt lbl_8027F828
/* 8027F94C 0027C8AC  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 8027F950 0027C8B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8027F954 0027C8B4  7C 08 03 A6 */	mtlr r0
/* 8027F958 0027C8B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8027F95C 0027C8BC  4E 80 00 20 */	blr

.global sub_8027f960
sub_8027f960:
/* 8027F960 0027C8C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8027F964 0027C8C4  7C 08 02 A6 */	mflr r0
/* 8027F968 0027C8C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027F96C 0027C8CC  38 00 00 00 */	li r0, 0
/* 8027F970 0027C8D0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8027F974 0027C8D4  7C 9F 23 78 */	mr r31, r4
/* 8027F978 0027C8D8  38 80 00 01 */	li r4, 1
/* 8027F97C 0027C8DC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8027F980 0027C8E0  7C 7E 1B 78 */	mr r30, r3
/* 8027F984 0027C8E4  38 61 00 38 */	addi r3, r1, 0x38
/* 8027F988 0027C8E8  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8027F98C 0027C8EC  93 81 00 60 */	stw r28, 0x60(r1)
/* 8027F990 0027C8F0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8027F994 0027C8F4  90 01 00 40 */	stw r0, 0x40(r1)
/* 8027F998 0027C8F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027F99C 0027C8FC  4B ED 6E 1D */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 8027F9A0 0027C900  7F C3 F3 78 */	mr r3, r30
/* 8027F9A4 0027C904  38 C1 00 38 */	addi r6, r1, 0x38
/* 8027F9A8 0027C908  38 8D 98 E4 */	addi r4, r13, lbl_805A84A4@sda21
/* 8027F9AC 0027C90C  38 A0 00 01 */	li r5, 1
/* 8027F9B0 0027C910  4B FF FE 45 */	bl sub_8027f7f4
/* 8027F9B4 0027C914  3C 80 80 3D */	lis r4, lbl_803D589C@ha
/* 8027F9B8 0027C918  38 60 00 18 */	li r3, 0x18
/* 8027F9BC 0027C91C  38 84 58 9C */	addi r4, r4, lbl_803D589C@l
/* 8027F9C0 0027C920  38 A0 00 00 */	li r5, 0
/* 8027F9C4 0027C924  38 84 00 1D */	addi r4, r4, 0x1d
/* 8027F9C8 0027C928  48 09 5E A5 */	bl __nw__FUlPCcPCc
/* 8027F9CC 0027C92C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8027F9D0 0027C930  41 82 00 38 */	beq lbl_8027FA08
/* 8027F9D4 0027C934  81 3E 00 04 */	lwz r9, 4(r30)
/* 8027F9D8 0027C938  7F E4 FB 78 */	mr r4, r31
/* 8027F9DC 0027C93C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8027F9E0 0027C940  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8027F9E4 0027C944  91 21 00 1C */	stw r9, 0x1c(r1)
/* 8027F9E8 0027C948  38 E1 00 38 */	addi r7, r1, 0x38
/* 8027F9EC 0027C94C  39 00 00 00 */	li r8, 0
/* 8027F9F0 0027C950  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8027F9F4 0027C954  91 21 00 18 */	stw r9, 0x18(r1)
/* 8027F9F8 0027C958  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8027F9FC 0027C95C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8027FA00 0027C960  4B F2 7F 31 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 8027FA04 0027C964  7C 7D 1B 78 */	mr r29, r3
lbl_8027FA08:
/* 8027FA08 0027C968  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8027FA0C 0027C96C  38 80 00 01 */	li r4, 1
/* 8027FA10 0027C970  4B F2 7E CD */	bl sub_801a78dc
/* 8027FA14 0027C974  93 BE 06 58 */	stw r29, 0x658(r30)
/* 8027FA18 0027C978  7F E4 FB 78 */	mr r4, r31
/* 8027FA1C 0027C97C  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8027FA20 0027C980  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8027FA24 0027C984  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 8027FA28 0027C988  4B F2 78 D1 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8027FA2C 0027C98C  3B 80 00 00 */	li r28, 0
/* 8027FA30 0027C990  48 00 00 7C */	b lbl_8027FAAC
lbl_8027FA34:
/* 8027FA34 0027C994  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8027FA38 0027C998  7F 84 E3 78 */	mr r4, r28
/* 8027FA3C 0027C99C  4B F2 77 FD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8027FA40 0027C9A0  7C 7D 1B 78 */	mr r29, r3
/* 8027FA44 0027C9A4  7F E3 FB 78 */	mr r3, r31
/* 8027FA48 0027C9A8  A0 1D 00 3C */	lhz r0, 0x3c(r29)
/* 8027FA4C 0027C9AC  38 81 00 08 */	addi r4, r1, 8
/* 8027FA50 0027C9B0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8027FA54 0027C9B4  B0 01 00 08 */	sth r0, 8(r1)
/* 8027FA58 0027C9B8  4B DC CB 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027FA5C 0027C9BC  7C 64 1B 78 */	mr r4, r3
/* 8027FA60 0027C9C0  38 61 00 20 */	addi r3, r1, 0x20
/* 8027FA64 0027C9C4  4B E2 F8 E9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027FA68 0027C9C8  80 03 00 04 */	lwz r0, 4(r3)
/* 8027FA6C 0027C9CC  28 00 00 00 */	cmplwi r0, 0
/* 8027FA70 0027C9D0  41 82 00 38 */	beq lbl_8027FAA8
/* 8027FA74 0027C9D4  80 82 BD 00 */	lwz r4, lbl_805ADA20@sda21(r2)
/* 8027FA78 0027C9D8  38 61 00 28 */	addi r3, r1, 0x28
/* 8027FA7C 0027C9DC  4B D8 52 3D */	bl string_l__4rstlFPCc
/* 8027FA80 0027C9E0  38 7D 00 2C */	addi r3, r29, 0x2c
/* 8027FA84 0027C9E4  38 81 00 28 */	addi r4, r1, 0x28
/* 8027FA88 0027C9E8  4B DD 2B 59 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 8027FA8C 0027C9EC  7C 7D 1B 78 */	mr r29, r3
/* 8027FA90 0027C9F0  38 61 00 28 */	addi r3, r1, 0x28
/* 8027FA94 0027C9F4  48 0B E0 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8027FA98 0027C9F8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8027FA9C 0027C9FC  41 82 00 0C */	beq lbl_8027FAA8
/* 8027FAA0 0027CA00  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8027FAA4 0027CA04  B0 1E 07 06 */	sth r0, 0x706(r30)
lbl_8027FAA8:
/* 8027FAA8 0027CA08  3B 9C 00 01 */	addi r28, r28, 1
lbl_8027FAAC:
/* 8027FAAC 0027CA0C  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 8027FAB0 0027CA10  4B F2 77 99 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8027FAB4 0027CA14  7C 1C 18 40 */	cmplw r28, r3
/* 8027FAB8 0027CA18  41 80 FF 7C */	blt lbl_8027FA34
/* 8027FABC 0027CA1C  7F C3 F3 78 */	mr r3, r30
/* 8027FAC0 0027CA20  7F E4 FB 78 */	mr r4, r31
/* 8027FAC4 0027CA24  4B FF FC 65 */	bl sub_8027f728
/* 8027FAC8 0027CA28  80 AD 98 F0 */	lwz r5, lbl_805A84B0@sda21(r13)
/* 8027FACC 0027CA2C  38 60 00 00 */	li r3, 0
/* 8027FAD0 0027CA30  38 80 00 01 */	li r4, 1
/* 8027FAD4 0027CA34  48 10 A4 21 */	bl __shl2i
/* 8027FAD8 0027CA38  80 AD 98 F4 */	lwz r5, lbl_805A84B4@sda21(r13)
/* 8027FADC 0027CA3C  7C 9C 23 78 */	mr r28, r4
/* 8027FAE0 0027CA40  7C 7D 1B 78 */	mr r29, r3
/* 8027FAE4 0027CA44  38 60 00 00 */	li r3, 0
/* 8027FAE8 0027CA48  38 80 00 01 */	li r4, 1
/* 8027FAEC 0027CA4C  48 10 A4 09 */	bl __shl2i
/* 8027FAF0 0027CA50  80 AD 98 F8 */	lwz r5, lbl_805A84B8@sda21(r13)
/* 8027FAF4 0027CA54  7F 9C 23 78 */	or r28, r28, r4
/* 8027FAF8 0027CA58  7F BD 1B 78 */	or r29, r29, r3
/* 8027FAFC 0027CA5C  38 60 00 00 */	li r3, 0
/* 8027FB00 0027CA60  38 80 00 01 */	li r4, 1
/* 8027FB04 0027CA64  48 10 A3 F1 */	bl __shl2i
/* 8027FB08 0027CA68  80 AD 98 EC */	lwz r5, lbl_805A84AC@sda21(r13)
/* 8027FB0C 0027CA6C  7F 9C 23 78 */	or r28, r28, r4
/* 8027FB10 0027CA70  7F BD 1B 78 */	or r29, r29, r3
/* 8027FB14 0027CA74  38 60 00 00 */	li r3, 0
/* 8027FB18 0027CA78  38 80 00 01 */	li r4, 1
/* 8027FB1C 0027CA7C  48 10 A3 D9 */	bl __shl2i
/* 8027FB20 0027CA80  38 00 00 03 */	li r0, 3
/* 8027FB24 0027CA84  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8027FB28 0027CA88  38 81 00 48 */	addi r4, r1, 0x48
/* 8027FB2C 0027CA8C  90 61 00 48 */	stw r3, 0x48(r1)
/* 8027FB30 0027CA90  7F C3 F3 78 */	mr r3, r30
/* 8027FB34 0027CA94  93 81 00 54 */	stw r28, 0x54(r1)
/* 8027FB38 0027CA98  93 A1 00 50 */	stw r29, 0x50(r1)
/* 8027FB3C 0027CA9C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8027FB40 0027CAA0  4B DD 3D 61 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8027FB44 0027CAA4  7F C3 F3 78 */	mr r3, r30
/* 8027FB48 0027CAA8  7F E5 FB 78 */	mr r5, r31
/* 8027FB4C 0027CAAC  38 80 00 12 */	li r4, 0x12
/* 8027FB50 0027CAB0  4B DD 48 01 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8027FB54 0027CAB4  38 61 00 38 */	addi r3, r1, 0x38
/* 8027FB58 0027CAB8  38 80 FF FF */	li r4, -1
/* 8027FB5C 0027CABC  4B ED 67 D1 */	bl sub_8015632c
/* 8027FB60 0027CAC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8027FB64 0027CAC4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8027FB68 0027CAC8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8027FB6C 0027CACC  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8027FB70 0027CAD0  83 81 00 60 */	lwz r28, 0x60(r1)
/* 8027FB74 0027CAD4  7C 08 03 A6 */	mtlr r0
/* 8027FB78 0027CAD8  38 21 00 70 */	addi r1, r1, 0x70
/* 8027FB7C 0027CADC  4E 80 00 20 */	blr

.global AcceptScriptMsg__20CMetroidPrimeEssenceF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__20CMetroidPrimeEssenceF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8027FB80 0027CAE0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8027FB84 0027CAE4  7C 08 02 A6 */	mflr r0
/* 8027FB88 0027CAE8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8027FB8C 0027CAEC  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8027FB90 0027CAF0  7C DF 33 78 */	mr r31, r6
/* 8027FB94 0027CAF4  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8027FB98 0027CAF8  7C BE 2B 78 */	mr r30, r5
/* 8027FB9C 0027CAFC  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8027FBA0 0027CB00  7C 7D 1B 78 */	mr r29, r3
/* 8027FBA4 0027CB04  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 8027FBA8 0027CB08  7C 9C 23 78 */	mr r28, r4
/* 8027FBAC 0027CB0C  A0 05 00 00 */	lhz r0, 0(r5)
/* 8027FBB0 0027CB10  38 A1 00 50 */	addi r5, r1, 0x50
/* 8027FBB4 0027CB14  B0 01 00 50 */	sth r0, 0x50(r1)
/* 8027FBB8 0027CB18  4B DF CF C1 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8027FBBC 0027CB1C  28 1C 00 2A */	cmplwi r28, 0x2a
/* 8027FBC0 0027CB20  41 81 04 B8 */	bgt lbl_80280078
/* 8027FBC4 0027CB24  3C 60 80 3F */	lis r3, lbl_803EB58C@ha
/* 8027FBC8 0027CB28  57 80 10 3A */	slwi r0, r28, 2
/* 8027FBCC 0027CB2C  38 63 B5 8C */	addi r3, r3, lbl_803EB58C@l
/* 8027FBD0 0027CB30  7C 03 00 2E */	lwzx r0, r3, r0
/* 8027FBD4 0027CB34  7C 09 03 A6 */	mtctr r0
/* 8027FBD8 0027CB38  4E 80 04 20 */	bctr
.global lbl_8027FBDC
lbl_8027FBDC:
/* 8027FBDC 0027CB3C  7F A3 EB 78 */	mr r3, r29
/* 8027FBE0 0027CB40  7F E4 FB 78 */	mr r4, r31
/* 8027FBE4 0027CB44  4B FF FD 7D */	bl sub_8027f960
/* 8027FBE8 0027CB48  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 8027FBEC 0027CB4C  7F E4 FB 78 */	mr r4, r31
/* 8027FBF0 0027CB50  38 A0 00 01 */	li r5, 1
/* 8027FBF4 0027CB54  4B F2 77 05 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8027FBF8 0027CB58  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8027FBFC 0027CB5C  7F A3 EB 78 */	mr r3, r29
/* 8027FC00 0027CB60  C0 02 BD 68 */	lfs f0, lbl_805ADA88@sda21(r2)
/* 8027FC04 0027CB64  7F E4 FB 78 */	mr r4, r31
/* 8027FC08 0027CB68  C0 45 00 00 */	lfs f2, 0(r5)
/* 8027FC0C 0027CB6C  C0 22 BD 6C */	lfs f1, lbl_805ADA8C@sda21(r2)
/* 8027FC10 0027CB70  D0 5D 06 CC */	stfs f2, 0x6cc(r29)
/* 8027FC14 0027CB74  C0 42 BD 3C */	lfs f2, lbl_805ADA5C@sda21(r2)
/* 8027FC18 0027CB78  C0 7D 06 CC */	lfs f3, 0x6cc(r29)
/* 8027FC1C 0027CB7C  EC 00 18 FA */	fmadds f0, f0, f3, f3
/* 8027FC20 0027CB80  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 8027FC24 0027CB84  C0 1D 06 CC */	lfs f0, 0x6cc(r29)
/* 8027FC28 0027CB88  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FC2C 0027CB8C  EC 02 00 24 */	fdivs f0, f2, f0
/* 8027FC30 0027CB90  D0 1D 05 5C */	stfs f0, 0x55c(r29)
/* 8027FC34 0027CB94  D0 1D 05 60 */	stfs f0, 0x560(r29)
/* 8027FC38 0027CB98  D0 1D 05 64 */	stfs f0, 0x564(r29)
/* 8027FC3C 0027CB9C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027FC40 0027CBA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8027FC44 0027CBA4  7D 89 03 A6 */	mtctr r12
/* 8027FC48 0027CBA8  4E 80 04 21 */	bctrl
/* 8027FC4C 0027CBAC  C0 43 00 00 */	lfs f2, 0(r3)
/* 8027FC50 0027CBB0  C0 22 BD 70 */	lfs f1, lbl_805ADA90@sda21(r2)
/* 8027FC54 0027CBB4  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027FC58 0027CBB8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8027FC5C 0027CBBC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8027FC60 0027CBC0  D0 3D 06 C0 */	stfs f1, 0x6c0(r29)
/* 8027FC64 0027CBC4  40 81 00 10 */	ble lbl_8027FC74
/* 8027FC68 0027CBC8  C0 02 BD 3C */	lfs f0, lbl_805ADA5C@sda21(r2)
/* 8027FC6C 0027CBCC  EC 00 10 24 */	fdivs f0, f0, f2
/* 8027FC70 0027CBD0  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
lbl_8027FC74:
/* 8027FC74 0027CBD4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8027FC78 0027CBD8  7F E4 FB 78 */	mr r4, r31
/* 8027FC7C 0027CBDC  4B EB B0 75 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8027FC80 0027CBE0  48 00 03 F8 */	b lbl_80280078
.global lbl_8027FC84
lbl_8027FC84:
/* 8027FC84 0027CBE4  80 FD 00 04 */	lwz r7, 4(r29)
/* 8027FC88 0027CBE8  7F A4 EB 78 */	mr r4, r29
/* 8027FC8C 0027CBEC  80 DF 08 50 */	lwz r6, 0x850(r31)
/* 8027FC90 0027CBF0  7F E5 FB 78 */	mr r5, r31
/* 8027FC94 0027CBF4  54 E3 18 38 */	slwi r3, r7, 3
/* 8027FC98 0027CBF8  90 E1 00 5C */	stw r7, 0x5c(r1)
/* 8027FC9C 0027CBFC  80 C6 00 20 */	lwz r6, 0x20(r6)
/* 8027FCA0 0027CC00  38 03 00 04 */	addi r0, r3, 4
/* 8027FCA4 0027CC04  90 E1 00 58 */	stw r7, 0x58(r1)
/* 8027FCA8 0027CC08  38 61 00 4C */	addi r3, r1, 0x4c
/* 8027FCAC 0027CC0C  7D 06 00 2E */	lwzx r8, r6, r0
/* 8027FCB0 0027CC10  38 C0 00 12 */	li r6, 0x12
/* 8027FCB4 0027CC14  38 E0 00 01 */	li r7, 1
/* 8027FCB8 0027CC18  81 08 01 2C */	lwz r8, 0x12c(r8)
/* 8027FCBC 0027CC1C  80 08 10 BC */	lwz r0, 0x10bc(r8)
/* 8027FCC0 0027CC20  90 1D 05 74 */	stw r0, 0x574(r29)
/* 8027FCC4 0027CC24  4B F7 52 D5 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8027FCC8 0027CC28  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 8027FCCC 0027CC2C  B0 1D 07 04 */	sth r0, 0x704(r29)
/* 8027FCD0 0027CC30  48 00 03 A8 */	b lbl_80280078
.global lbl_8027FCD4
lbl_8027FCD4:
/* 8027FCD4 0027CC34  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 8027FCD8 0027CC38  7F E4 FB 78 */	mr r4, r31
/* 8027FCDC 0027CC3C  38 A0 00 01 */	li r5, 1
/* 8027FCE0 0027CC40  4B F2 76 19 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8027FCE4 0027CC44  48 00 03 94 */	b lbl_80280078
.global lbl_8027FCE8
lbl_8027FCE8:
/* 8027FCE8 0027CC48  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 8027FCEC 0027CC4C  7F E4 FB 78 */	mr r4, r31
/* 8027FCF0 0027CC50  38 A0 00 00 */	li r5, 0
/* 8027FCF4 0027CC54  4B F2 76 05 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8027FCF8 0027CC58  48 00 03 80 */	b lbl_80280078
.global lbl_8027FCFC
lbl_8027FCFC:
/* 8027FCFC 0027CC5C  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 8027FD00 0027CC60  7F E4 FB 78 */	mr r4, r31
/* 8027FD04 0027CC64  4B F2 76 C1 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 8027FD08 0027CC68  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8027FD0C 0027CC6C  7F E3 FB 78 */	mr r3, r31
/* 8027FD10 0027CC70  C0 22 BD 10 */	lfs f1, lbl_805ADA30@sda21(r2)
/* 8027FD14 0027CC74  38 81 00 48 */	addi r4, r1, 0x48
/* 8027FD18 0027CC78  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8027FD1C 0027CC7C  38 A0 00 00 */	li r5, 0
/* 8027FD20 0027CC80  4B DC 42 25 */	bl SetBossParams__13CStateManagerF9TUniqueIdfUi
/* 8027FD24 0027CC84  48 00 03 54 */	b lbl_80280078
.global lbl_8027FD28
lbl_8027FD28:
/* 8027FD28 0027CC88  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8027FD2C 0027CC8C  7F E3 FB 78 */	mr r3, r31
/* 8027FD30 0027CC90  38 81 00 44 */	addi r4, r1, 0x44
/* 8027FD34 0027CC94  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8027FD38 0027CC98  4B DC C8 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027FD3C 0027CC9C  7C 64 1B 78 */	mr r4, r3
/* 8027FD40 0027CCA0  38 61 00 78 */	addi r3, r1, 0x78
/* 8027FD44 0027CCA4  4B E2 F6 09 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027FD48 0027CCA8  80 83 00 04 */	lwz r4, 4(r3)
/* 8027FD4C 0027CCAC  28 04 00 00 */	cmplwi r4, 0
/* 8027FD50 0027CCB0  41 82 03 28 */	beq lbl_80280078
/* 8027FD54 0027CCB4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8027FD58 0027CCB8  38 61 00 40 */	addi r3, r1, 0x40
/* 8027FD5C 0027CCBC  A3 85 00 08 */	lhz r28, 8(r5)
/* 8027FD60 0027CCC0  4B F2 8E 2D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8027FD64 0027CCC4  A0 01 00 40 */	lhz r0, 0x40(r1)
/* 8027FD68 0027CCC8  7C 00 E0 40 */	cmplw r0, r28
/* 8027FD6C 0027CCCC  40 82 03 0C */	bne lbl_80280078
/* 8027FD70 0027CCD0  C0 3D 04 20 */	lfs f1, 0x420(r29)
/* 8027FD74 0027CCD4  C0 02 BD 10 */	lfs f0, lbl_805ADA30@sda21(r2)
/* 8027FD78 0027CCD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027FD7C 0027CCDC  4C 40 13 82 */	cror 2, 0, 2
/* 8027FD80 0027CCE0  40 82 02 F8 */	bne lbl_80280078
/* 8027FD84 0027CCE4  80 AD 98 E0 */	lwz r5, lbl_805A84A0@sda21(r13)
/* 8027FD88 0027CCE8  38 60 00 00 */	li r3, 0
/* 8027FD8C 0027CCEC  38 80 00 01 */	li r4, 1
/* 8027FD90 0027CCF0  48 10 A1 65 */	bl __shl2i
/* 8027FD94 0027CCF4  38 A0 00 00 */	li r5, 0
/* 8027FD98 0027CCF8  38 00 00 03 */	li r0, 3
/* 8027FD9C 0027CCFC  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 8027FDA0 0027CD00  7F A4 EB 78 */	mr r4, r29
/* 8027FDA4 0027CD04  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8027FDA8 0027CD08  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8027FDAC 0027CD0C  90 A1 00 BC */	stw r5, 0xbc(r1)
/* 8027FDB0 0027CD10  90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 8027FDB4 0027CD14  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8027FDB8 0027CD18  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8027FDBC 0027CD1C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8027FDC0 0027CD20  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8027FDC4 0027CD24  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8027FDC8 0027CD28  A0 A5 00 08 */	lhz r5, 8(r5)
/* 8027FDCC 0027CD2C  B0 A1 00 34 */	sth r5, 0x34(r1)
/* 8027FDD0 0027CD30  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8027FDD4 0027CD34  B0 A1 00 30 */	sth r5, 0x30(r1)
/* 8027FDD8 0027CD38  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8027FDDC 0027CD3C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027FDE0 0027CD40  B0 01 00 38 */	sth r0, 0x38(r1)
/* 8027FDE4 0027CD44  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8027FDE8 0027CD48  7D 89 03 A6 */	mtctr r12
/* 8027FDEC 0027CD4C  4E 80 04 21 */	bctrl
/* 8027FDF0 0027CD50  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8027FDF4 0027CD54  7F E3 FB 78 */	mr r3, r31
/* 8027FDF8 0027CD58  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 8027FDFC 0027CD5C  38 A1 00 34 */	addi r5, r1, 0x34
/* 8027FE00 0027CD60  38 81 00 3C */	addi r4, r1, 0x3c
/* 8027FE04 0027CD64  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8027FE08 0027CD68  38 E1 00 C8 */	addi r7, r1, 0xc8
/* 8027FE0C 0027CD6C  39 01 00 B0 */	addi r8, r1, 0xb0
/* 8027FE10 0027CD70  4B DC A2 91 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8027FE14 0027CD74  C0 1D 04 24 */	lfs f0, 0x424(r29)
/* 8027FE18 0027CD78  D0 1D 04 20 */	stfs f0, 0x420(r29)
/* 8027FE1C 0027CD7C  48 00 02 5C */	b lbl_80280078
.global lbl_8027FE20
lbl_8027FE20:
/* 8027FE20 0027CD80  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8027FE24 0027CD84  7F E3 FB 78 */	mr r3, r31
/* 8027FE28 0027CD88  38 81 00 24 */	addi r4, r1, 0x24
/* 8027FE2C 0027CD8C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8027FE30 0027CD90  4B DC C7 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8027FE34 0027CD94  7C 64 1B 78 */	mr r4, r3
/* 8027FE38 0027CD98  38 61 00 70 */	addi r3, r1, 0x70
/* 8027FE3C 0027CD9C  4B E2 F5 11 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8027FE40 0027CDA0  83 83 00 04 */	lwz r28, 4(r3)
/* 8027FE44 0027CDA4  28 1C 00 00 */	cmplwi r28, 0
/* 8027FE48 0027CDA8  41 82 01 70 */	beq lbl_8027FFB8
/* 8027FE4C 0027CDAC  7F 84 E3 78 */	mr r4, r28
/* 8027FE50 0027CDB0  38 61 00 20 */	addi r3, r1, 0x20
/* 8027FE54 0027CDB4  4B F2 8D 39 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8027FE58 0027CDB8  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8027FE5C 0027CDBC  7F E3 FB 78 */	mr r3, r31
/* 8027FE60 0027CDC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8027FE64 0027CDC4  B0 01 00 54 */	sth r0, 0x54(r1)
/* 8027FE68 0027CDC8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8027FE6C 0027CDCC  4B DC C7 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8027FE70 0027CDD0  7C 64 1B 78 */	mr r4, r3
/* 8027FE74 0027CDD4  38 61 00 68 */	addi r3, r1, 0x68
/* 8027FE78 0027CDD8  4B E2 D8 95 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8027FE7C 0027CDDC  83 C3 00 04 */	lwz r30, 4(r3)
/* 8027FE80 0027CDE0  28 1E 00 00 */	cmplwi r30, 0
/* 8027FE84 0027CDE4  41 82 01 F4 */	beq lbl_80280078
/* 8027FE88 0027CDE8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8027FE8C 0027CDEC  A0 9E 00 EC */	lhz r4, 0xec(r30)
/* 8027FE90 0027CDF0  A0 03 00 08 */	lhz r0, 8(r3)
/* 8027FE94 0027CDF4  7C 04 00 40 */	cmplw r4, r0
/* 8027FE98 0027CDF8  40 82 01 E0 */	bne lbl_80280078
/* 8027FE9C 0027CDFC  7F 83 E3 78 */	mr r3, r28
/* 8027FEA0 0027CE00  81 9C 00 00 */	lwz r12, 0(r28)
/* 8027FEA4 0027CE04  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8027FEA8 0027CE08  7D 89 03 A6 */	mtctr r12
/* 8027FEAC 0027CE0C  4E 80 04 21 */	bctrl
/* 8027FEB0 0027CE10  3B DE 01 2C */	addi r30, r30, 0x12c
/* 8027FEB4 0027CE14  38 A0 00 00 */	li r5, 0
/* 8027FEB8 0027CE18  7F C4 F3 78 */	mr r4, r30
/* 8027FEBC 0027CE1C  4B E8 26 C9 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8027FEC0 0027CE20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8027FEC4 0027CE24  41 82 01 B4 */	beq lbl_80280078
/* 8027FEC8 0027CE28  80 1E 00 00 */	lwz r0, 0(r30)
/* 8027FECC 0027CE2C  2C 00 00 08 */	cmpwi r0, 8
/* 8027FED0 0027CE30  40 82 01 A8 */	bne lbl_80280078
/* 8027FED4 0027CE34  7F A3 EB 78 */	mr r3, r29
/* 8027FED8 0027CE38  7F E4 FB 78 */	mr r4, r31
/* 8027FEDC 0027CE3C  4B FF D0 05 */	bl sub_8027cee0
/* 8027FEE0 0027CE40  81 9D 00 00 */	lwz r12, 0(r29)
/* 8027FEE4 0027CE44  3C 80 80 5A */	lis r4, lbl_805A6724@ha
/* 8027FEE8 0027CE48  7F A3 EB 78 */	mr r3, r29
/* 8027FEEC 0027CE4C  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 8027FEF0 0027CE50  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 8027FEF4 0027CE54  38 84 67 24 */	addi r4, r4, lbl_805A6724@l
/* 8027FEF8 0027CE58  7D 89 03 A6 */	mtctr r12
/* 8027FEFC 0027CE5C  4E 80 04 21 */	bctrl
/* 8027FF00 0027CE60  88 7D 07 0E */	lbz r3, 0x70e(r29)
/* 8027FF04 0027CE64  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8027FF08 0027CE68  40 82 01 70 */	bne lbl_80280078
/* 8027FF0C 0027CE6C  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 8027FF10 0027CE70  40 82 01 68 */	bne lbl_80280078
/* 8027FF14 0027CE74  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8027FF18 0027CE78  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 8027FF1C 0027CE7C  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8027FF20 0027CE80  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8027FF24 0027CE84  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8027FF28 0027CE88  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 8027FF2C 0027CE8C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8027FF30 0027CE90  38 C0 00 04 */	li r6, 4
/* 8027FF34 0027CE94  38 00 00 01 */	li r0, 1
/* 8027FF38 0027CE98  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8027FF3C 0027CE9C  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 8027FF40 0027CEA0  3B C3 00 04 */	addi r30, r3, 4
/* 8027FF44 0027CEA4  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 8027FF48 0027CEA8  7F C3 F3 78 */	mr r3, r30
/* 8027FF4C 0027CEAC  38 80 00 04 */	li r4, 4
/* 8027FF50 0027CEB0  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8027FF54 0027CEB4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8027FF58 0027CEB8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8027FF5C 0027CEBC  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 8027FF60 0027CEC0  90 01 00 AC */	stw r0, 0xac(r1)
/* 8027FF64 0027CEC4  4B EB 14 D5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8027FF68 0027CEC8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8027FF6C 0027CECC  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8027FF70 0027CED0  38 A3 AA 44 */	addi r5, r3, lbl_803DAA44@l
/* 8027FF74 0027CED4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8027FF78 0027CED8  90 1E 00 F8 */	stw r0, 0xf8(r30)
/* 8027FF7C 0027CEDC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8027FF80 0027CEE0  80 E1 00 A0 */	lwz r7, 0xa0(r1)
/* 8027FF84 0027CEE4  7F A3 EB 78 */	mr r3, r29
/* 8027FF88 0027CEE8  80 C1 00 A4 */	lwz r6, 0xa4(r1)
/* 8027FF8C 0027CEEC  7F E4 FB 78 */	mr r4, r31
/* 8027FF90 0027CEF0  90 FE 00 FC */	stw r7, 0xfc(r30)
/* 8027FF94 0027CEF4  80 E1 00 A8 */	lwz r7, 0xa8(r1)
/* 8027FF98 0027CEF8  90 DE 01 00 */	stw r6, 0x100(r30)
/* 8027FF9C 0027CEFC  80 C1 00 AC */	lwz r6, 0xac(r1)
/* 8027FFA0 0027CF00  90 FE 01 04 */	stw r7, 0x104(r30)
/* 8027FFA4 0027CF04  90 A1 00 98 */	stw r5, 0x98(r1)
/* 8027FFA8 0027CF08  90 DE 01 08 */	stw r6, 0x108(r30)
/* 8027FFAC 0027CF0C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8027FFB0 0027CF10  4B FF CD 31 */	bl sub_8027cce0
/* 8027FFB4 0027CF14  48 00 00 C4 */	b lbl_80280078
lbl_8027FFB8:
/* 8027FFB8 0027CF18  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8027FFBC 0027CF1C  7F E3 FB 78 */	mr r3, r31
/* 8027FFC0 0027CF20  38 81 00 18 */	addi r4, r1, 0x18
/* 8027FFC4 0027CF24  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8027FFC8 0027CF28  4B DC C5 DD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8027FFCC 0027CF2C  7C 64 1B 78 */	mr r4, r3
/* 8027FFD0 0027CF30  38 61 00 60 */	addi r3, r1, 0x60
/* 8027FFD4 0027CF34  4B E2 D7 39 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8027FFD8 0027CF38  83 83 00 04 */	lwz r28, 4(r3)
/* 8027FFDC 0027CF3C  28 1C 00 00 */	cmplwi r28, 0
/* 8027FFE0 0027CF40  41 82 00 98 */	beq lbl_80280078
/* 8027FFE4 0027CF44  80 AD 98 E0 */	lwz r5, lbl_805A84A0@sda21(r13)
/* 8027FFE8 0027CF48  38 60 00 00 */	li r3, 0
/* 8027FFEC 0027CF4C  38 80 00 01 */	li r4, 1
/* 8027FFF0 0027CF50  48 10 9F 05 */	bl __shl2i
/* 8027FFF4 0027CF54  39 00 00 00 */	li r8, 0
/* 8027FFF8 0027CF58  39 40 00 03 */	li r10, 3
/* 8027FFFC 0027CF5C  90 81 00 84 */	stw r4, 0x84(r1)
/* 80280000 0027CF60  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80280004 0027CF64  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80280008 0027CF68  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8028000C 0027CF6C  90 61 00 80 */	stw r3, 0x80(r1)
/* 80280010 0027CF70  7F E3 FB 78 */	mr r3, r31
/* 80280014 0027CF74  38 81 00 14 */	addi r4, r1, 0x14
/* 80280018 0027CF78  38 A1 00 10 */	addi r5, r1, 0x10
/* 8028001C 0027CF7C  91 01 00 8C */	stw r8, 0x8c(r1)
/* 80280020 0027CF80  38 C1 00 0C */	addi r6, r1, 0xc
/* 80280024 0027CF84  38 FC 01 2C */	addi r7, r28, 0x12c
/* 80280028 0027CF88  91 01 00 88 */	stw r8, 0x88(r1)
/* 8028002C 0027CF8C  39 01 00 80 */	addi r8, r1, 0x80
/* 80280030 0027CF90  91 41 00 90 */	stw r10, 0x90(r1)
/* 80280034 0027CF94  A1 7C 00 EC */	lhz r11, 0xec(r28)
/* 80280038 0027CF98  B1 61 00 0C */	sth r11, 0xc(r1)
/* 8028003C 0027CF9C  A1 5D 07 06 */	lhz r10, 0x706(r29)
/* 80280040 0027CFA0  B1 61 00 08 */	sth r11, 8(r1)
/* 80280044 0027CFA4  B1 41 00 10 */	sth r10, 0x10(r1)
/* 80280048 0027CFA8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8028004C 0027CFAC  4B DC A0 55 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80280050 0027CFB0  48 00 00 28 */	b lbl_80280078
.global lbl_80280054
lbl_80280054:
/* 80280054 0027CFB4  88 1D 07 0E */	lbz r0, 0x70e(r29)
/* 80280058 0027CFB8  38 60 00 01 */	li r3, 1
/* 8028005C 0027CFBC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80280060 0027CFC0  98 1D 07 0E */	stb r0, 0x70e(r29)
/* 80280064 0027CFC4  48 00 00 14 */	b lbl_80280078
.global lbl_80280068
lbl_80280068:
/* 80280068 0027CFC8  88 1D 07 0E */	lbz r0, 0x70e(r29)
/* 8028006C 0027CFCC  38 60 00 00 */	li r3, 0
/* 80280070 0027CFD0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80280074 0027CFD4  98 1D 07 0E */	stb r0, 0x70e(r29)
.global lbl_80280078
lbl_80280078:
/* 80280078 0027CFD8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8028007C 0027CFDC  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80280080 0027CFE0  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80280084 0027CFE4  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 80280088 0027CFE8  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 8028008C 0027CFEC  7C 08 03 A6 */	mtlr r0
/* 80280090 0027CFF0  38 21 01 00 */	addi r1, r1, 0x100
/* 80280094 0027CFF4  4E 80 00 20 */	blr

.global __dt__20CMetroidPrimeEssenceFv
__dt__20CMetroidPrimeEssenceFv:
/* 80280098 0027CFF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028009C 0027CFFC  7C 08 02 A6 */	mflr r0
/* 802800A0 0027D000  90 01 00 14 */	stw r0, 0x14(r1)
/* 802800A4 0027D004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802800A8 0027D008  7C 9F 23 78 */	mr r31, r4
/* 802800AC 0027D00C  93 C1 00 08 */	stw r30, 8(r1)
/* 802800B0 0027D010  7C 7E 1B 79 */	or. r30, r3, r3
/* 802800B4 0027D014  41 82 00 E8 */	beq lbl_8028019C
/* 802800B8 0027D018  3C 60 80 3F */	lis r3, lbl_803EB244@ha
/* 802800BC 0027D01C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 802800C0 0027D020  38 03 B2 44 */	addi r0, r3, lbl_803EB244@l
/* 802800C4 0027D024  90 1E 00 00 */	stw r0, 0(r30)
/* 802800C8 0027D028  41 82 00 24 */	beq lbl_802800EC
/* 802800CC 0027D02C  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 802800D0 0027D030  28 03 00 00 */	cmplwi r3, 0
/* 802800D4 0027D034  41 82 00 18 */	beq lbl_802800EC
/* 802800D8 0027D038  81 83 00 00 */	lwz r12, 0(r3)
/* 802800DC 0027D03C  38 80 00 01 */	li r4, 1
/* 802800E0 0027D040  81 8C 00 08 */	lwz r12, 8(r12)
/* 802800E4 0027D044  7D 89 03 A6 */	mtctr r12
/* 802800E8 0027D048  4E 80 04 21 */	bctrl
lbl_802800EC:
/* 802800EC 0027D04C  34 1E 06 58 */	addic. r0, r30, 0x658
/* 802800F0 0027D050  41 82 00 10 */	beq lbl_80280100
/* 802800F4 0027D054  80 7E 06 58 */	lwz r3, 0x658(r30)
/* 802800F8 0027D058  38 80 00 01 */	li r4, 1
/* 802800FC 0027D05C  4B F2 77 E1 */	bl sub_801a78dc
lbl_80280100:
/* 80280100 0027D060  34 1E 05 74 */	addic. r0, r30, 0x574
/* 80280104 0027D064  41 82 00 60 */	beq lbl_80280164
/* 80280108 0027D068  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8028010C 0027D06C  41 82 00 58 */	beq lbl_80280164
/* 80280110 0027D070  80 BE 05 78 */	lwz r5, 0x578(r30)
/* 80280114 0027D074  38 60 00 00 */	li r3, 0
/* 80280118 0027D078  2C 05 00 00 */	cmpwi r5, 0
/* 8028011C 0027D07C  40 81 00 40 */	ble lbl_8028015C
/* 80280120 0027D080  2C 05 00 08 */	cmpwi r5, 8
/* 80280124 0027D084  38 85 FF F8 */	addi r4, r5, -8
/* 80280128 0027D088  40 81 00 20 */	ble lbl_80280148
/* 8028012C 0027D08C  38 04 00 07 */	addi r0, r4, 7
/* 80280130 0027D090  54 00 E8 FE */	srwi r0, r0, 3
/* 80280134 0027D094  7C 09 03 A6 */	mtctr r0
/* 80280138 0027D098  2C 04 00 00 */	cmpwi r4, 0
/* 8028013C 0027D09C  40 81 00 0C */	ble lbl_80280148
lbl_80280140:
/* 80280140 0027D0A0  38 63 00 08 */	addi r3, r3, 8
/* 80280144 0027D0A4  42 00 FF FC */	bdnz lbl_80280140
lbl_80280148:
/* 80280148 0027D0A8  7C 03 28 50 */	subf r0, r3, r5
/* 8028014C 0027D0AC  7C 09 03 A6 */	mtctr r0
/* 80280150 0027D0B0  7C 03 28 00 */	cmpw r3, r5
/* 80280154 0027D0B4  40 80 00 08 */	bge lbl_8028015C
lbl_80280158:
/* 80280158 0027D0B8  42 00 00 00 */	bdnz lbl_80280158
lbl_8028015C:
/* 8028015C 0027D0BC  38 00 00 00 */	li r0, 0
/* 80280160 0027D0C0  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80280164:
/* 80280164 0027D0C4  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80280168 0027D0C8  41 82 00 18 */	beq lbl_80280180
/* 8028016C 0027D0CC  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80280170 0027D0D0  41 82 00 10 */	beq lbl_80280180
/* 80280174 0027D0D4  38 7E 05 68 */	addi r3, r30, 0x568
/* 80280178 0027D0D8  38 80 00 00 */	li r4, 0
/* 8028017C 0027D0DC  48 0C 0C C5 */	bl __dt__6CTokenFv
lbl_80280180:
/* 80280180 0027D0E0  7F C3 F3 78 */	mr r3, r30
/* 80280184 0027D0E4  38 80 00 00 */	li r4, 0
/* 80280188 0027D0E8  4B DF 73 E9 */	bl __dt__10CPatternedFv
/* 8028018C 0027D0EC  7F E0 07 35 */	extsh. r0, r31
/* 80280190 0027D0F0  40 81 00 0C */	ble lbl_8028019C
/* 80280194 0027D0F4  7F C3 F3 78 */	mr r3, r30
/* 80280198 0027D0F8  48 09 57 99 */	bl Free__7CMemoryFPCv
lbl_8028019C:
/* 8028019C 0027D0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802801A0 0027D100  7F C3 F3 78 */	mr r3, r30
/* 802801A4 0027D104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802801A8 0027D108  83 C1 00 08 */	lwz r30, 8(r1)
/* 802801AC 0027D10C  7C 08 03 A6 */	mtlr r0
/* 802801B0 0027D110  38 21 00 10 */	addi r1, r1, 0x10
/* 802801B4 0027D114  4E 80 00 20 */	blr

.global __ct__20CMetroidPrimeEssence
__ct__20CMetroidPrimeEssence:
/* 802801B8 0027D118  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802801BC 0027D11C  7C 08 02 A6 */	mflr r0
/* 802801C0 0027D120  39 60 00 01 */	li r11, 1
/* 802801C4 0027D124  7D 0C 43 78 */	mr r12, r8
/* 802801C8 0027D128  90 01 00 64 */	stw r0, 0x64(r1)
/* 802801CC 0027D12C  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 802801D0 0027D130  7C FB 3B 78 */	mr r27, r7
/* 802801D4 0027D134  7D 38 4B 78 */	mr r24, r9
/* 802801D8 0027D138  83 81 00 68 */	lwz r28, 0x68(r1)
/* 802801DC 0027D13C  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 802801E0 0027D140  7C 7A 1B 78 */	mr r26, r3
/* 802801E4 0027D144  83 C1 00 70 */	lwz r30, 0x70(r1)
/* 802801E8 0027D148  7F 69 DB 78 */	mr r9, r27
/* 802801EC 0027D14C  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 802801F0 0027D150  38 E0 00 00 */	li r7, 0
/* 802801F4 0027D154  83 21 00 78 */	lwz r25, 0x78(r1)
/* 802801F8 0027D158  A0 04 00 00 */	lhz r0, 0(r4)
/* 802801FC 0027D15C  7C C4 33 78 */	mr r4, r6
/* 80280200 0027D160  7C A6 2B 78 */	mr r6, r5
/* 80280204 0027D164  38 A1 00 20 */	addi r5, r1, 0x20
/* 80280208 0027D168  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8028020C 0027D16C  7C 88 23 78 */	mr r8, r4
/* 80280210 0027D170  38 00 00 03 */	li r0, 3
/* 80280214 0027D174  38 80 00 16 */	li r4, 0x16
/* 80280218 0027D178  93 01 00 08 */	stw r24, 8(r1)
/* 8028021C 0027D17C  91 61 00 0C */	stw r11, 0xc(r1)
/* 80280220 0027D180  91 61 00 10 */	stw r11, 0x10(r1)
/* 80280224 0027D184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280228 0027D188  91 41 00 18 */	stw r10, 0x18(r1)
/* 8028022C 0027D18C  7D 8A 63 78 */	mr r10, r12
/* 80280230 0027D190  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80280234 0027D194  4B DF D2 1D */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80280238 0027D198  3C 60 80 3F */	lis r3, lbl_803EB244@ha
/* 8028023C 0027D19C  3C 80 50 41 */	lis r4, 0x50415254@ha
/* 80280240 0027D1A0  38 03 B2 44 */	addi r0, r3, lbl_803EB244@l
/* 80280244 0027D1A4  38 61 00 24 */	addi r3, r1, 0x24
/* 80280248 0027D1A8  90 1A 00 00 */	stw r0, 0(r26)
/* 8028024C 0027D1AC  38 04 52 54 */	addi r0, r4, 0x50415254@l
/* 80280250 0027D1B0  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80280254 0027D1B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80280258 0027D1B8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8028025C 0027D1BC  93 21 00 30 */	stw r25, 0x30(r1)
/* 80280260 0027D1C0  81 84 00 00 */	lwz r12, 0(r4)
/* 80280264 0027D1C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80280268 0027D1C8  7D 89 03 A6 */	mtctr r12
/* 8028026C 0027D1CC  4E 80 04 21 */	bctrl
/* 80280270 0027D1D0  3B 3A 05 68 */	addi r25, r26, 0x568
/* 80280274 0027D1D4  38 81 00 24 */	addi r4, r1, 0x24
/* 80280278 0027D1D8  7F 23 CB 78 */	mr r3, r25
/* 8028027C 0027D1DC  48 0C 0C 2D */	bl __ct__6CTokenFRC6CToken
/* 80280280 0027D1E0  7F 23 CB 78 */	mr r3, r25
/* 80280284 0027D1E4  48 0C 0B 89 */	bl GetObj__6CTokenFv
/* 80280288 0027D1E8  80 03 00 04 */	lwz r0, 4(r3)
/* 8028028C 0027D1EC  38 61 00 24 */	addi r3, r1, 0x24
/* 80280290 0027D1F0  38 80 FF FF */	li r4, -1
/* 80280294 0027D1F4  90 19 00 08 */	stw r0, 8(r25)
/* 80280298 0027D1F8  48 0C 0B A9 */	bl __dt__6CTokenFv
/* 8028029C 0027D1FC  C0 22 BD 3C */	lfs f1, lbl_805ADA5C@sda21(r2)
/* 802802A0 0027D200  38 7A 05 74 */	addi r3, r26, 0x574
/* 802802A4 0027D204  80 D8 01 0C */	lwz r6, 0x10c(r24)
/* 802802A8 0027D208  38 80 00 00 */	li r4, 0
/* 802802AC 0027D20C  FC 40 08 90 */	fmr f2, f1
/* 802802B0 0027D210  38 A0 00 03 */	li r5, 3
/* 802802B4 0027D214  4B F4 8A E1 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 802802B8 0027D218  38 00 00 00 */	li r0, 0
/* 802802BC 0027D21C  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 802802C0 0027D220  90 1A 06 58 */	stw r0, 0x658(r26)
/* 802802C4 0027D224  38 83 66 70 */	addi r4, r3, skIdentity4f@l
/* 802802C8 0027D228  38 7A 06 68 */	addi r3, r26, 0x668
/* 802802CC 0027D22C  90 1A 06 5C */	stw r0, 0x65c(r26)
/* 802802D0 0027D230  93 9A 06 60 */	stw r28, 0x660(r26)
/* 802802D4 0027D234  93 DA 06 64 */	stw r30, 0x664(r26)
/* 802802D8 0027D238  48 09 28 9D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802802DC 0027D23C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802802E0 0027D240  38 E0 00 00 */	li r7, 0
/* 802802E4 0027D244  C0 42 BD 10 */	lfs f2, lbl_805ADA30@sda21(r2)
/* 802802E8 0027D248  38 A0 00 02 */	li r5, 2
/* 802802EC 0027D24C  90 1A 06 98 */	stw r0, 0x698(r26)
/* 802802F0 0027D250  38 80 00 04 */	li r4, 4
/* 802802F4 0027D254  C0 22 BD 74 */	lfs f1, lbl_805ADA94@sda21(r2)
/* 802802F8 0027D258  38 00 00 01 */	li r0, 1
/* 802802FC 0027D25C  88 DD 00 04 */	lbz r6, 4(r29)
/* 80280300 0027D260  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 80280304 0027D264  C0 02 BD 68 */	lfs f0, lbl_805ADA88@sda21(r2)
/* 80280308 0027D268  98 DA 06 9C */	stb r6, 0x69c(r26)
/* 8028030C 0027D26C  C0 7D 00 08 */	lfs f3, 8(r29)
/* 80280310 0027D270  D0 7A 06 A0 */	stfs f3, 0x6a0(r26)
/* 80280314 0027D274  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 80280318 0027D278  D0 7A 06 A4 */	stfs f3, 0x6a4(r26)
/* 8028031C 0027D27C  C0 7D 00 10 */	lfs f3, 0x10(r29)
/* 80280320 0027D280  D0 7A 06 A8 */	stfs f3, 0x6a8(r26)
/* 80280324 0027D284  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80280328 0027D288  D0 7A 06 AC */	stfs f3, 0x6ac(r26)
/* 8028032C 0027D28C  88 DD 00 18 */	lbz r6, 0x18(r29)
/* 80280330 0027D290  98 DA 06 B0 */	stb r6, 0x6b0(r26)
/* 80280334 0027D294  C0 BB 00 2C */	lfs f5, 0x2c(r27)
/* 80280338 0027D298  C0 9B 00 1C */	lfs f4, 0x1c(r27)
/* 8028033C 0027D29C  C0 7B 00 0C */	lfs f3, 0xc(r27)
/* 80280340 0027D2A0  D0 7A 06 B4 */	stfs f3, 0x6b4(r26)
/* 80280344 0027D2A4  D0 9A 06 B8 */	stfs f4, 0x6b8(r26)
/* 80280348 0027D2A8  D0 BA 06 BC */	stfs f5, 0x6bc(r26)
/* 8028034C 0027D2AC  D0 5A 06 C0 */	stfs f2, 0x6c0(r26)
/* 80280350 0027D2B0  D0 5A 06 C4 */	stfs f2, 0x6c4(r26)
/* 80280354 0027D2B4  D0 5A 06 C8 */	stfs f2, 0x6c8(r26)
/* 80280358 0027D2B8  D0 3A 06 CC */	stfs f1, 0x6cc(r26)
/* 8028035C 0027D2BC  C0 3A 06 CC */	lfs f1, 0x6cc(r26)
/* 80280360 0027D2C0  EC 00 08 7A */	fmadds f0, f0, f1, f1
/* 80280364 0027D2C4  D0 1A 06 D0 */	stfs f0, 0x6d0(r26)
/* 80280368 0027D2C8  D0 5A 06 D4 */	stfs f2, 0x6d4(r26)
/* 8028036C 0027D2CC  90 FA 06 D8 */	stw r7, 0x6d8(r26)
/* 80280370 0027D2D0  90 FA 06 DC */	stw r7, 0x6dc(r26)
/* 80280374 0027D2D4  80 DA 06 DC */	lwz r6, 0x6dc(r26)
/* 80280378 0027D2D8  90 DA 06 E0 */	stw r6, 0x6e0(r26)
/* 8028037C 0027D2DC  90 FA 06 E4 */	stw r7, 0x6e4(r26)
/* 80280380 0027D2E0  90 BA 06 E8 */	stw r5, 0x6e8(r26)
/* 80280384 0027D2E4  90 9A 06 EC */	stw r4, 0x6ec(r26)
/* 80280388 0027D2E8  90 FA 06 F0 */	stw r7, 0x6f0(r26)
/* 8028038C 0027D2EC  80 9A 06 E8 */	lwz r4, 0x6e8(r26)
/* 80280390 0027D2F0  38 84 FF FF */	addi r4, r4, -1
/* 80280394 0027D2F4  90 9A 06 F4 */	stw r4, 0x6f4(r26)
/* 80280398 0027D2F8  90 BA 06 F8 */	stw r5, 0x6f8(r26)
/* 8028039C 0027D2FC  90 FA 06 FC */	stw r7, 0x6fc(r26)
/* 802803A0 0027D300  90 1A 07 00 */	stw r0, 0x700(r26)
/* 802803A4 0027D304  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802803A8 0027D308  B0 1A 07 04 */	sth r0, 0x704(r26)
/* 802803AC 0027D30C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802803B0 0027D310  B0 1A 07 06 */	sth r0, 0x706(r26)
/* 802803B4 0027D314  90 FA 07 08 */	stw r7, 0x708(r26)
/* 802803B8 0027D318  48 06 85 F9 */	bl TranslateSFXID__11CSfxManagerFUs
/* 802803BC 0027D31C  B0 7A 07 0C */	sth r3, 0x70c(r26)
/* 802803C0 0027D320  38 C0 00 00 */	li r6, 0
/* 802803C4 0027D324  38 A0 00 01 */	li r5, 1
/* 802803C8 0027D328  7F 43 D3 78 */	mr r3, r26
/* 802803CC 0027D32C  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 802803D0 0027D330  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 802803D4 0027D334  38 80 00 00 */	li r4, 0
/* 802803D8 0027D338  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 802803DC 0027D33C  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 802803E0 0027D340  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 802803E4 0027D344  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 802803E8 0027D348  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 802803EC 0027D34C  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 802803F0 0027D350  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 802803F4 0027D354  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 802803F8 0027D358  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 802803FC 0027D35C  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 80280400 0027D360  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 80280404 0027D364  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80280408 0027D368  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 8028040C 0027D36C  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 80280410 0027D370  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 80280414 0027D374  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 80280418 0027D378  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 8028041C 0027D37C  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 80280420 0027D380  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 80280424 0027D384  88 1A 07 0E */	lbz r0, 0x70e(r26)
/* 80280428 0027D388  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 8028042C 0027D38C  98 1A 07 0E */	stb r0, 0x70e(r26)
/* 80280430 0027D390  4B DD 29 3D */	bl CreateShadow__6CActorFb
/* 80280434 0027D394  7F 43 D3 78 */	mr r3, r26
/* 80280438 0027D398  4B DF 74 5D */	bl MakeThermalColdAndHot__10CPatternedFv
/* 8028043C 0027D39C  7F 43 D3 78 */	mr r3, r26
/* 80280440 0027D3A0  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 80280444 0027D3A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80280448 0027D3A8  7C 08 03 A6 */	mtlr r0
/* 8028044C 0027D3AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80280450 0027D3B0  4E 80 00 20 */	blr

.global __sinit_CMetroidPrimeEssence_cpp
__sinit_CMetroidPrimeEssence_cpp:
/* 80280454 0027D3B4  80 02 BD 00 */	lwz r0, lbl_805ADA20@sda21(r2)
/* 80280458 0027D3B8  90 0D 98 E4 */	stw r0, lbl_805A84A4@sda21(r13)
/* 8028045C 0027D3BC  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ADA20
lbl_805ADA20:
	# ROM: 0x3FA2C0
	.4byte 0x803D589C

.global lbl_805ADA24
lbl_805ADA24:
	# ROM: 0x3FA2C4
	.4byte 0x803D58AF

.global lbl_805ADA28
lbl_805ADA28:
	# ROM: 0x3FA2C8
	.4byte 0x803D58B4

.global lbl_805ADA2C
lbl_805ADA2C:
	# ROM: 0x3FA2CC
	.4byte 0xBE8483ED

.global lbl_805ADA30
lbl_805ADA30:
	# ROM: 0x3FA2D0
	.4byte 0

.global lbl_805ADA34
lbl_805ADA34:
	# ROM: 0x3FA2D4
	.4byte 0x447A0000

.global lbl_805ADA38
lbl_805ADA38:
	# ROM: 0x3FA2D8
	.float 0.1
	.4byte 0

.global lbl_805ADA40
lbl_805ADA40:
	# ROM: 0x3FA2E0
	.double 4.503601774854144E15

.global lbl_805ADA48
lbl_805ADA48:
	# ROM: 0x3FA2E8
	.float 0.75

.global lbl_805ADA4C
lbl_805ADA4C:
	# ROM: 0x3FA2EC
	.float 0.5

.global lbl_805ADA50
lbl_805ADA50:
	# ROM: 0x3FA2F0
	.float 0.25

.global lbl_805ADA54
lbl_805ADA54:
	# ROM: 0x3FA2F4
	.4byte 0x41A00000

.global lbl_805ADA58
lbl_805ADA58:
	# ROM: 0x3FA2F8
	.float 2.0

.global lbl_805ADA5C
lbl_805ADA5C:
	# ROM: 0x3FA2FC
	.float 1.0

.global lbl_805ADA60
lbl_805ADA60:
	# ROM: 0x3FA300
	.float 0.01

.global lbl_805ADA64
lbl_805ADA64:
	# ROM: 0x3FA304
	.float 1.5

.global lbl_805ADA68
lbl_805ADA68:
	# ROM: 0x3FA308
	.4byte 0x41F00000

.global lbl_805ADA6C
lbl_805ADA6C:
	# ROM: 0x3FA30C
	.float 90.0

.global lbl_805ADA70
lbl_805ADA70:
	# ROM: 0x3FA310
	.4byte 0x40400000

.global lbl_805ADA74
lbl_805ADA74:
	# ROM: 0x3FA314
	.4byte 0x43340000

.global lbl_805ADA78
lbl_805ADA78:
	# ROM: 0x3FA318
	.4byte 0x3EC90FDB

.global lbl_805ADA7C
lbl_805ADA7C:
	# ROM: 0x3FA31C
	.float 0.7853982

.global lbl_805ADA80
lbl_805ADA80:
	# ROM: 0x3FA320
	.float 255.0

.global lbl_805ADA84
lbl_805ADA84:
	# ROM: 0x3FA324
	.4byte 0xC0800000

.global lbl_805ADA88
lbl_805ADA88:
	# ROM: 0x3FA328
	.float 0.9

.global lbl_805ADA8C
lbl_805ADA8C:
	# ROM: 0x3FA32C
	.4byte 0x3F200000

.global lbl_805ADA90
lbl_805ADA90:
	# ROM: 0x3FA330
	.float 0.3

.global lbl_805ADA94
lbl_805ADA94:
	# ROM: 0x3FA334
	.float 4.0


.section .rodata
.balign 8
.global lbl_803D5880
lbl_803D5880:
	# ROM: 0x3D2880
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000002

.global lbl_803D5890
lbl_803D5890:
	# ROM: 0x3D2890
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003

.global lbl_803D589C
lbl_803D589C:
	# ROM: 0x3D289C
	.asciz "lockon_target_LCTR"
	.byte 0x45
	.4byte 0x79657300
	.asciz "Head"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.asciz "Shockwave"
	.byte 0x57, 0x68
	.asciz "ole Body"
	.balign 4


.include "macros.inc"

.comm lbl_80572024, 0x18, 4
.comm lbl_8057203C, 0xC, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CFlaahgra_cpp

.section .data
.balign 8

.global lbl_803E4D08
lbl_803E4D08:
	# ROM: 0x3E1D08
	.4byte 0
	.4byte 0
	.4byte __dt__17CFlaahgraRendererFv
	.4byte Accept__17CFlaahgraRendererFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__17CFlaahgraRendererCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CActorCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__17CFlaahgraRendererCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef

.global lbl_803E4D74
lbl_803E4D74:
	# ROM: 0x3E1D74
	.4byte lbl_801B22CC
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B27F8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2868
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B27AC
	.4byte lbl_801B2790
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AF8
	.4byte lbl_801B2AE8

.global lbl_803E4DE0
lbl_803E4DE0:
	# ROM: 0x3E1DE0
	.4byte lbl_801B345C
	.4byte lbl_801B2CE4
	.4byte lbl_801B345C
	.4byte lbl_801B33B8
	.4byte lbl_801B345C
	.4byte lbl_801B33AC
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B344C
	.4byte lbl_801B345C
	.4byte lbl_801B3440
	.4byte lbl_801B345C
	.4byte lbl_801B33C4
	.4byte lbl_801B33D8
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B3408
	.4byte lbl_801B33EC
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B2EAC
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B2E4C
	.4byte lbl_801B2C80
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B345C
	.4byte lbl_801B3084

.global lbl_803E4E88
lbl_803E4E88:
	# ROM: 0x3E1E88
	.4byte 0
	.4byte 0
	.4byte __dt__9CFlaahgraFv
	.4byte Accept__9CFlaahgraFR8IVisitor
	.4byte PreThink__9CFlaahgraFfR13CStateManager
	.4byte Think__9CFlaahgraFfR13CStateManager
	.4byte AcceptScriptMsg__9CFlaahgraF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__9CFlaahgraCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__9CFlaahgraCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__9CFlaahgraCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__9CFlaahgraCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__9CFlaahgraFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__9CFlaahgraFRC9CVector3fR13CStateManager
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte FadeOut__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte GetUp__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Growth__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Faint__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__9CFlaahgraFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__9CFlaahgraFR13CStateManagerf
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
	.4byte sub_801b1c78
	.4byte ShouldAttack__9CFlaahgraFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__9CFlaahgraFR13CStateManagerf
	.4byte HitSomething__9CFlaahgraFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__3CAiFR13CStateManagerf
	.4byte HearPlayer__3CAiFR13CStateManagerf
	.4byte CoverCheck__9CFlaahgraFR13CStateManagerf
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
	.4byte ShouldFire__9CFlaahgraFR13CStateManagerf
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
	.4byte AIStage__9CFlaahgraFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__9CFlaahgraFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__9CFlaahgraFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__9CFlaahgraFR13CStateManagerf
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
	.4byte ProjectileInfo__9CFlaahgraFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E5154
lbl_803E5154:
	# ROM: 0x3E2154
	.4byte 0
	.4byte 0
	.4byte __dt__19CFlaahgraProjectileFv
	.4byte Accept__17CEnergyProjectileFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__17CEnergyProjectileFfR13CStateManager
	.4byte AcceptScriptMsg__19CFlaahgraProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__17CEnergyProjectileCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__17CEnergyProjectileCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__15CGameProjectileCFv
	.4byte Touch__17CEnergyProjectileFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CWeaponCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__15CGameProjectileFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
	.4byte ResolveCollisionWithActor__17CEnergyProjectileFRC14CRayCastResultR6CActorR13CStateManager
	.4byte Explode__17CEnergyProjectileFRC9CVector3fRC9CVector3f29EWeaponCollisionResponseTypesR13CStateManagerRC20CDamageVulnerability9TUniqueId

.section .sdata
.balign 8

.global lbl_805A7C40
lbl_805A7C40:
	# ROM: 0x3F55E0
	.4byte 0x00000004

.global lbl_805A7C44
lbl_805A7C44:
	# ROM: 0x3F55E4
	.float 1.0

.global lbl_805A7C48
lbl_805A7C48:
	# ROM: 0x3F55E8
	.4byte 0x00000013

.global lbl_805A7C4C
lbl_805A7C4C:
	# ROM: 0x3F55EC
	.4byte 0x0000001F

.global lbl_805A7C50
lbl_805A7C50:
	# ROM: 0x3F55F0
	.4byte 0x00000013

.global lbl_805A7C54
lbl_805A7C54:
	# ROM: 0x3F55F4
	.4byte 0x0000002F

.global lbl_805A7C58
lbl_805A7C58:
	# ROM: 0x3F55F8
	.4byte 0x0000001C

.global lbl_805A7C5C
lbl_805A7C5C:
	# ROM: 0x3F55FC
	.4byte 0x00000020

.global lbl_805A7C60
lbl_805A7C60:
	# ROM: 0x3F5600
	.4byte 0x00000035

.global lbl_805A7C64
lbl_805A7C64:
	# ROM: 0x3F5604
	.4byte 0x00000015

.global lbl_805A7C68
lbl_805A7C68:
	# ROM: 0x3F5608
	.4byte 0x00000035

.global lbl_805A7C6C
lbl_805A7C6C:
	# ROM: 0x3F560C
	.4byte 0x00000015

.global lbl_805A7C70
lbl_805A7C70:
	# ROM: 0x3F5610
	.4byte 0x00000035

.global lbl_805A7C74
lbl_805A7C74:
	# ROM: 0x3F5614
	.4byte 0x00000015

.global lbl_805A7C78
lbl_805A7C78:
	# ROM: 0x3F5618
	.4byte 0x00000020

.global lbl_805A7C7C
lbl_805A7C7C:
	# ROM: 0x3F561C
	.4byte 0x00000022

.global lbl_805A7C80
lbl_805A7C80:
	# ROM: 0x3F5620
	.4byte 0x0000002F

.global lbl_805A7C84
lbl_805A7C84:
	# ROM: 0x3F5624
	.4byte 0x00000026

.global lbl_805A7C88
lbl_805A7C88:
	# ROM: 0x3F5628
	.4byte 0x0000002B

.global lbl_805A7C8C
lbl_805A7C8C:
	# ROM: 0x3F562C
	.4byte 0x00000021

.section .sbss, "wa"
.balign 8

.global lbl_805A9058
lbl_805A9058:
	.skip 0x4
.global lbl_805A905C
lbl_805A905C:
	.skip 0x4

.section .text, "ax"

.global __dt__17CFlaahgraRendererFv
__dt__17CFlaahgraRendererFv:
/* 801AD580 001AA4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AD584 001AA4E4  7C 08 02 A6 */	mflr r0
/* 801AD588 001AA4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AD58C 001AA4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AD590 001AA4F0  7C 9F 23 78 */	mr r31, r4
/* 801AD594 001AA4F4  93 C1 00 08 */	stw r30, 8(r1)
/* 801AD598 001AA4F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 801AD59C 001AA4FC  41 82 00 28 */	beq lbl_801AD5C4
/* 801AD5A0 001AA500  3C A0 80 3E */	lis r5, lbl_803E4D08@ha
/* 801AD5A4 001AA504  38 80 00 00 */	li r4, 0
/* 801AD5A8 001AA508  38 05 4D 08 */	addi r0, r5, lbl_803E4D08@l
/* 801AD5AC 001AA50C  90 1E 00 00 */	stw r0, 0(r30)
/* 801AD5B0 001AA510  4B EA 81 41 */	bl __dt__6CActorFv
/* 801AD5B4 001AA514  7F E0 07 35 */	extsh. r0, r31
/* 801AD5B8 001AA518  40 81 00 0C */	ble lbl_801AD5C4
/* 801AD5BC 001AA51C  7F C3 F3 78 */	mr r3, r30
/* 801AD5C0 001AA520  48 16 83 71 */	bl Free__7CMemoryFPCv
lbl_801AD5C4:
/* 801AD5C4 001AA524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AD5C8 001AA528  7F C3 F3 78 */	mr r3, r30
/* 801AD5CC 001AA52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AD5D0 001AA530  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AD5D4 001AA534  7C 08 03 A6 */	mtlr r0
/* 801AD5D8 001AA538  38 21 00 10 */	addi r1, r1, 0x10
/* 801AD5DC 001AA53C  4E 80 00 20 */	blr

.global GetTouchBounds__17CFlaahgraRendererCFv
GetTouchBounds__17CFlaahgraRendererCFv:
/* 801AD5E0 001AA540  38 00 00 00 */	li r0, 0
/* 801AD5E4 001AA544  98 03 00 18 */	stb r0, 0x18(r3)
/* 801AD5E8 001AA548  4E 80 00 20 */	blr

.global AddToRenderer__17CFlaahgraRendererCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__17CFlaahgraRendererCFRC14CFrustumPlanesRC13CStateManager:
/* 801AD5EC 001AA54C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AD5F0 001AA550  7C 08 02 A6 */	mflr r0
/* 801AD5F4 001AA554  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AD5F8 001AA558  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AD5FC 001AA55C  7C 9F 23 78 */	mr r31, r4
/* 801AD600 001AA560  38 81 00 08 */	addi r4, r1, 8
/* 801AD604 001AA564  A0 03 00 E8 */	lhz r0, 0xe8(r3)
/* 801AD608 001AA568  7C A3 2B 78 */	mr r3, r5
/* 801AD60C 001AA56C  B0 01 00 08 */	sth r0, 8(r1)
/* 801AD610 001AA570  4B E9 EF 95 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AD614 001AA574  28 03 00 00 */	cmplwi r3, 0
/* 801AD618 001AA578  41 82 00 38 */	beq lbl_801AD650
/* 801AD61C 001AA57C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801AD620 001AA580  38 80 00 00 */	li r4, 0
/* 801AD624 001AA584  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801AD628 001AA588  28 00 00 00 */	cmplwi r0, 0
/* 801AD62C 001AA58C  40 82 00 14 */	bne lbl_801AD640
/* 801AD630 001AA590  88 03 00 28 */	lbz r0, 0x28(r3)
/* 801AD634 001AA594  28 00 00 00 */	cmplwi r0, 0
/* 801AD638 001AA598  40 82 00 08 */	bne lbl_801AD640
/* 801AD63C 001AA59C  38 80 00 01 */	li r4, 1
lbl_801AD640:
/* 801AD640 001AA5A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801AD644 001AA5A4  40 82 00 0C */	bne lbl_801AD650
/* 801AD648 001AA5A8  7F E4 FB 78 */	mr r4, r31
/* 801AD64C 001AA5AC  4B F6 86 35 */	bl RenderParticles__10CModelDataCFRC14CFrustumPlanes
lbl_801AD650:
/* 801AD650 001AA5B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AD654 001AA5B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AD658 001AA5B8  7C 08 03 A6 */	mtlr r0
/* 801AD65C 001AA5BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801AD660 001AA5C0  4E 80 00 20 */	blr

.global Accept__17CFlaahgraRendererFR8IVisitor
Accept__17CFlaahgraRendererFR8IVisitor:
/* 801AD664 001AA5C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AD668 001AA5C8  7C 08 02 A6 */	mflr r0
/* 801AD66C 001AA5CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AD670 001AA5D0  7C 60 1B 78 */	mr r0, r3
/* 801AD674 001AA5D4  7C 83 23 78 */	mr r3, r4
/* 801AD678 001AA5D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801AD67C 001AA5DC  7C 04 03 78 */	mr r4, r0
/* 801AD680 001AA5E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801AD684 001AA5E4  7D 89 03 A6 */	mtctr r12
/* 801AD688 001AA5E8  4E 80 04 21 */	bctrl
/* 801AD68C 001AA5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AD690 001AA5F0  7C 08 03 A6 */	mtlr r0
/* 801AD694 001AA5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801AD698 001AA5F8  4E 80 00 20 */	blr

.global "__ct__17CFlaahgraRendererF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4f"
"__ct__17CFlaahgraRendererF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4f":
/* 801AD69C 001AA5FC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801AD6A0 001AA600  7C 08 02 A6 */	mflr r0
/* 801AD6A4 001AA604  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801AD6A8 001AA608  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 801AD6AC 001AA60C  7C 7F 1B 78 */	mr r31, r3
/* 801AD6B0 001AA610  7C 9A 23 78 */	mr r26, r4
/* 801AD6B4 001AA614  7C BB 2B 78 */	mr r27, r5
/* 801AD6B8 001AA618  7C DC 33 78 */	mr r28, r6
/* 801AD6BC 001AA61C  7C FD 3B 78 */	mr r29, r7
/* 801AD6C0 001AA620  7D 1E 43 78 */	mr r30, r8
/* 801AD6C4 001AA624  38 61 00 88 */	addi r3, r1, 0x88
/* 801AD6C8 001AA628  4B E8 D0 DD */	bl CModelDataNull__10CModelDataFv
/* 801AD6CC 001AA62C  38 61 00 20 */	addi r3, r1, 0x20
/* 801AD6D0 001AA630  4B E6 D7 69 */	bl None__16CActorParametersFv
/* 801AD6D4 001AA634  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801AD6D8 001AA638  38 00 00 00 */	li r0, 0
/* 801AD6DC 001AA63C  80 AD 90 CC */	lwz r5, lbl_805A7C8C@sda21(r13)
/* 801AD6E0 001AA640  38 60 00 00 */	li r3, 0
/* 801AD6E4 001AA644  B0 81 00 10 */	sth r4, 0x10(r1)
/* 801AD6E8 001AA648  38 80 00 01 */	li r4, 1
/* 801AD6EC 001AA64C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AD6F0 001AA650  90 01 00 18 */	stw r0, 0x18(r1)
/* 801AD6F4 001AA654  48 1D C8 01 */	bl __shl2i
/* 801AD6F8 001AA658  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801AD6FC 001AA65C  39 61 00 20 */	addi r11, r1, 0x20
/* 801AD700 001AA660  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801AD704 001AA664  38 01 00 10 */	addi r0, r1, 0x10
/* 801AD708 001AA668  7C A3 1B 78 */	or r3, r5, r3
/* 801AD70C 001AA66C  A0 BA 00 00 */	lhz r5, 0(r26)
/* 801AD710 001AA670  7C C4 23 78 */	or r4, r6, r4
/* 801AD714 001AA674  90 61 00 18 */	stw r3, 0x18(r1)
/* 801AD718 001AA678  7F E3 FB 78 */	mr r3, r31
/* 801AD71C 001AA67C  7F 86 E3 78 */	mr r6, r28
/* 801AD720 001AA680  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801AD724 001AA684  7F A7 EB 78 */	mr r7, r29
/* 801AD728 001AA688  7F C8 F3 78 */	mr r8, r30
/* 801AD72C 001AA68C  38 81 00 14 */	addi r4, r1, 0x14
/* 801AD730 001AA690  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801AD734 001AA694  39 21 00 88 */	addi r9, r1, 0x88
/* 801AD738 001AA698  39 41 00 18 */	addi r10, r1, 0x18
/* 801AD73C 001AA69C  38 A0 00 01 */	li r5, 1
/* 801AD740 001AA6A0  91 61 00 08 */	stw r11, 8(r1)
/* 801AD744 001AA6A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AD748 001AA6A8  4B EA 80 D9 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 801AD74C 001AA6AC  38 61 00 20 */	addi r3, r1, 0x20
/* 801AD750 001AA6B0  38 80 FF FF */	li r4, -1
/* 801AD754 001AA6B4  4B F5 8E B5 */	bl __dt__16CLightParametersFv
/* 801AD758 001AA6B8  38 61 00 88 */	addi r3, r1, 0x88
/* 801AD75C 001AA6BC  38 80 FF FF */	li r4, -1
/* 801AD760 001AA6C0  4B F6 92 ED */	bl __dt__10CModelDataFv
/* 801AD764 001AA6C4  3C 80 80 3E */	lis r4, lbl_803E4D08@ha
/* 801AD768 001AA6C8  7F E3 FB 78 */	mr r3, r31
/* 801AD76C 001AA6CC  38 04 4D 08 */	addi r0, r4, lbl_803E4D08@l
/* 801AD770 001AA6D0  90 1F 00 00 */	stw r0, 0(r31)
/* 801AD774 001AA6D4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 801AD778 001AA6D8  B0 1F 00 E8 */	sth r0, 0xe8(r31)
/* 801AD77C 001AA6DC  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 801AD780 001AA6E0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801AD784 001AA6E4  7C 08 03 A6 */	mtlr r0
/* 801AD788 001AA6E8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801AD78C 001AA6EC  4E 80 00 20 */	blr

.global sub_801ad790
sub_801ad790:
/* 801AD790 001AA6F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801AD794 001AA6F4  7C 08 02 A6 */	mflr r0
/* 801AD798 001AA6F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801AD79C 001AA6FC  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801AD7A0 001AA700  7C 7F 1B 78 */	mr r31, r3
/* 801AD7A4 001AA704  38 61 00 20 */	addi r3, r1, 0x20
/* 801AD7A8 001AA708  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801AD7AC 001AA70C  38 9F 08 AC */	addi r4, r31, 0x8ac
/* 801AD7B0 001AA710  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801AD7B4 001AA714  4B F6 93 A1 */	bl __ct__10CModelDataFRC8CAnimRes
/* 801AD7B8 001AA718  7F E3 FB 78 */	mr r3, r31
/* 801AD7BC 001AA71C  38 81 00 20 */	addi r4, r1, 0x20
/* 801AD7C0 001AA720  4B EA 78 71 */	bl SetModelData__6CActorFRC10CModelData
/* 801AD7C4 001AA724  38 61 00 20 */	addi r3, r1, 0x20
/* 801AD7C8 001AA728  38 80 FF FF */	li r4, -1
/* 801AD7CC 001AA72C  4B F6 92 81 */	bl __dt__10CModelDataFv
/* 801AD7D0 001AA730  7F E3 FB 78 */	mr r3, r31
/* 801AD7D4 001AA734  4B EA 56 09 */	bl CreateShadow__6CActorFv
/* 801AD7D8 001AA738  7F E3 FB 78 */	mr r3, r31
/* 801AD7DC 001AA73C  38 80 00 01 */	li r4, 1
/* 801AD7E0 001AA740  4B EA 55 8D */	bl CreateShadow__6CActorFb
/* 801AD7E4 001AA744  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801AD7E8 001AA748  38 80 00 00 */	li r4, 0
/* 801AD7EC 001AA74C  4B F5 85 05 */	bl sub_80105cf0
/* 801AD7F0 001AA750  7F E3 FB 78 */	mr r3, r31
/* 801AD7F4 001AA754  38 80 00 02 */	li r4, 2
/* 801AD7F8 001AA758  4B EC F9 19 */	bl BuildBodyController__10CPatternedF9EBodyType
/* 801AD7FC 001AA75C  3C 60 80 3D */	lis r3, lbl_803D1590@ha
/* 801AD800 001AA760  3B C0 00 00 */	li r30, 0
/* 801AD804 001AA764  38 83 15 90 */	addi r4, r3, lbl_803D1590@l
/* 801AD808 001AA768  38 60 00 38 */	li r3, 0x38
/* 801AD80C 001AA76C  38 84 00 7E */	addi r4, r4, 0x7e
/* 801AD810 001AA770  38 A0 00 00 */	li r5, 0
/* 801AD814 001AA774  48 16 80 59 */	bl __nw__FUlPCcPCc
/* 801AD818 001AA778  7C 7D 1B 79 */	or. r29, r3, r3
/* 801AD81C 001AA77C  41 82 00 40 */	beq lbl_801AD85C
/* 801AD820 001AA780  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801AD824 001AA784  38 61 00 10 */	addi r3, r1, 0x10
/* 801AD828 001AA788  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801AD82C 001AA78C  38 84 00 58 */	addi r4, r4, 0x58
/* 801AD830 001AA790  4B E5 74 89 */	bl string_l__4rstlFPCc
/* 801AD834 001AA794  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801AD838 001AA798  7F A3 EB 78 */	mr r3, r29
/* 801AD83C 001AA79C  C0 22 A8 AC */	lfs f1, lbl_805AC5CC@sda21(r2)
/* 801AD840 001AA7A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801AD844 001AA7A4  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801AD848 001AA7A8  3B C0 00 01 */	li r30, 1
/* 801AD84C 001AA7AC  C0 42 A8 B0 */	lfs f2, lbl_805AC5D0@sda21(r2)
/* 801AD850 001AA7B0  38 C0 00 00 */	li r6, 0
/* 801AD854 001AA7B4  4B FC 81 65 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 801AD858 001AA7B8  7C 7D 1B 78 */	mr r29, r3
lbl_801AD85C:
/* 801AD85C 001AA7BC  7C 1D 00 D0 */	neg r0, r29
/* 801AD860 001AA7C0  38 61 00 08 */	addi r3, r1, 8
/* 801AD864 001AA7C4  7C 04 EB 78 */	or r4, r0, r29
/* 801AD868 001AA7C8  38 1F 06 C8 */	addi r0, r31, 0x6c8
/* 801AD86C 001AA7CC  54 84 0F FE */	srwi r4, r4, 0x1f
/* 801AD870 001AA7D0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801AD874 001AA7D4  7C 03 00 40 */	cmplw r3, r0
/* 801AD878 001AA7D8  98 81 00 08 */	stb r4, 8(r1)
/* 801AD87C 001AA7DC  41 82 00 48 */	beq lbl_801AD8C4
/* 801AD880 001AA7E0  88 1F 06 C8 */	lbz r0, 0x6c8(r31)
/* 801AD884 001AA7E4  28 00 00 00 */	cmplwi r0, 0
/* 801AD888 001AA7E8  41 82 00 24 */	beq lbl_801AD8AC
/* 801AD88C 001AA7EC  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 801AD890 001AA7F0  28 03 00 00 */	cmplwi r3, 0
/* 801AD894 001AA7F4  41 82 00 18 */	beq lbl_801AD8AC
/* 801AD898 001AA7F8  34 03 00 24 */	addic. r0, r3, 0x24
/* 801AD89C 001AA7FC  41 82 00 0C */	beq lbl_801AD8A8
/* 801AD8A0 001AA800  38 00 00 00 */	li r0, 0
/* 801AD8A4 001AA804  98 03 00 30 */	stb r0, 0x30(r3)
lbl_801AD8A8:
/* 801AD8A8 001AA808  48 16 80 89 */	bl Free__7CMemoryFPCv
lbl_801AD8AC:
/* 801AD8AC 001AA80C  88 61 00 08 */	lbz r3, 8(r1)
/* 801AD8B0 001AA810  38 00 00 00 */	li r0, 0
/* 801AD8B4 001AA814  98 7F 06 C8 */	stb r3, 0x6c8(r31)
/* 801AD8B8 001AA818  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801AD8BC 001AA81C  90 7F 06 CC */	stw r3, 0x6cc(r31)
/* 801AD8C0 001AA820  98 01 00 08 */	stb r0, 8(r1)
lbl_801AD8C4:
/* 801AD8C4 001AA824  88 01 00 08 */	lbz r0, 8(r1)
/* 801AD8C8 001AA828  28 00 00 00 */	cmplwi r0, 0
/* 801AD8CC 001AA82C  41 82 00 24 */	beq lbl_801AD8F0
/* 801AD8D0 001AA830  80 61 00 0C */	lwz r3, 0xc(r1)
/* 801AD8D4 001AA834  28 03 00 00 */	cmplwi r3, 0
/* 801AD8D8 001AA838  41 82 00 18 */	beq lbl_801AD8F0
/* 801AD8DC 001AA83C  34 03 00 24 */	addic. r0, r3, 0x24
/* 801AD8E0 001AA840  41 82 00 0C */	beq lbl_801AD8EC
/* 801AD8E4 001AA844  38 00 00 00 */	li r0, 0
/* 801AD8E8 001AA848  98 03 00 30 */	stb r0, 0x30(r3)
lbl_801AD8EC:
/* 801AD8EC 001AA84C  48 16 80 45 */	bl Free__7CMemoryFPCv
lbl_801AD8F0:
/* 801AD8F0 001AA850  7F C0 07 75 */	extsb. r0, r30
/* 801AD8F4 001AA854  41 82 00 0C */	beq lbl_801AD900
/* 801AD8F8 001AA858  38 61 00 10 */	addi r3, r1, 0x10
/* 801AD8FC 001AA85C  48 19 01 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801AD900:
/* 801AD900 001AA860  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801AD904 001AA864  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801AD908 001AA868  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801AD90C 001AA86C  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801AD910 001AA870  7C 08 03 A6 */	mtlr r0
/* 801AD914 001AA874  38 21 00 80 */	addi r1, r1, 0x80
/* 801AD918 001AA878  4E 80 00 20 */	blr

.global sub_801ad91c
sub_801ad91c:
/* 801AD91C 001AA87C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AD920 001AA880  7C 08 02 A6 */	mflr r0
/* 801AD924 001AA884  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AD928 001AA888  3C 04 00 01 */	addis r0, r4, 1
/* 801AD92C 001AA88C  28 00 FF FF */	cmplwi r0, 0xffff
/* 801AD930 001AA890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AD934 001AA894  7C 7F 1B 78 */	mr r31, r3
/* 801AD938 001AA898  40 82 00 1C */	bne lbl_801AD954
/* 801AD93C 001AA89C  4B FF FE 55 */	bl sub_801ad790
/* 801AD940 001AA8A0  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801AD944 001AA8A4  38 60 00 01 */	li r3, 1
/* 801AD948 001AA8A8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801AD94C 001AA8AC  98 1F 08 E4 */	stb r0, 0x8e4(r31)
/* 801AD950 001AA8B0  48 00 00 78 */	b lbl_801AD9C8
lbl_801AD954:
/* 801AD954 001AA8B4  3C 60 44 47 */	lis r3, 0x44475250@ha
/* 801AD958 001AA8B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 801AD95C 001AA8BC  38 03 52 50 */	addi r0, r3, 0x44475250@l
/* 801AD960 001AA8C0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801AD964 001AA8C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801AD968 001AA8C8  38 61 00 08 */	addi r3, r1, 8
/* 801AD96C 001AA8CC  38 A1 00 10 */	addi r5, r1, 0x10
/* 801AD970 001AA8D0  81 84 00 00 */	lwz r12, 0(r4)
/* 801AD974 001AA8D4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801AD978 001AA8D8  7D 89 03 A6 */	mtctr r12
/* 801AD97C 001AA8DC  4E 80 04 21 */	bctrl
/* 801AD980 001AA8E0  88 1F 08 D0 */	lbz r0, 0x8d0(r31)
/* 801AD984 001AA8E4  28 00 00 00 */	cmplwi r0, 0
/* 801AD988 001AA8E8  40 82 00 20 */	bne lbl_801AD9A8
/* 801AD98C 001AA8EC  34 7F 08 C8 */	addic. r3, r31, 0x8c8
/* 801AD990 001AA8F0  41 82 00 0C */	beq lbl_801AD99C
/* 801AD994 001AA8F4  38 81 00 08 */	addi r4, r1, 8
/* 801AD998 001AA8F8  48 19 35 11 */	bl __ct__6CTokenFRC6CToken
lbl_801AD99C:
/* 801AD99C 001AA8FC  38 00 00 01 */	li r0, 1
/* 801AD9A0 001AA900  98 1F 08 D0 */	stb r0, 0x8d0(r31)
/* 801AD9A4 001AA904  48 00 00 10 */	b lbl_801AD9B4
lbl_801AD9A8:
/* 801AD9A8 001AA908  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 801AD9AC 001AA90C  38 81 00 08 */	addi r4, r1, 8
/* 801AD9B0 001AA910  48 19 33 15 */	bl __as__6CTokenFRC6CToken
lbl_801AD9B4:
/* 801AD9B4 001AA914  38 61 00 08 */	addi r3, r1, 8
/* 801AD9B8 001AA918  38 80 FF FF */	li r4, -1
/* 801AD9BC 001AA91C  48 19 34 85 */	bl __dt__6CTokenFv
/* 801AD9C0 001AA920  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 801AD9C4 001AA924  48 19 33 C1 */	bl Lock__6CTokenFv
lbl_801AD9C8:
/* 801AD9C8 001AA928  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AD9CC 001AA92C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AD9D0 001AA930  7C 08 03 A6 */	mtlr r0
/* 801AD9D4 001AA934  38 21 00 20 */	addi r1, r1, 0x20
/* 801AD9D8 001AA938  4E 80 00 20 */	blr

.global sub_801ad9dc
sub_801ad9dc:
/* 801AD9DC 001AA93C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AD9E0 001AA940  7C 08 02 A6 */	mflr r0
/* 801AD9E4 001AA944  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AD9E8 001AA948  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AD9EC 001AA94C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801AD9F0 001AA950  7C 9E 23 78 */	mr r30, r4
/* 801AD9F4 001AA954  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801AD9F8 001AA958  7C 7D 1B 78 */	mr r29, r3
/* 801AD9FC 001AA95C  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801ADA00 001AA960  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801ADA04 001AA964  40 82 00 5C */	bne lbl_801ADA60
/* 801ADA08 001AA968  38 7D 08 C8 */	addi r3, r29, 0x8c8
/* 801ADA0C 001AA96C  48 19 34 01 */	bl GetObj__6CTokenFv
/* 801ADA10 001AA970  7F A3 EB 78 */	mr r3, r29
/* 801ADA14 001AA974  7F C4 F3 78 */	mr r4, r30
/* 801ADA18 001AA978  48 00 00 E1 */	bl sub_801adaf8
/* 801ADA1C 001AA97C  88 1D 08 E4 */	lbz r0, 0x8e4(r29)
/* 801ADA20 001AA980  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801ADA24 001AA984  40 82 00 3C */	bne lbl_801ADA60
/* 801ADA28 001AA988  83 FD 08 E0 */	lwz r31, 0x8e0(r29)
/* 801ADA2C 001AA98C  48 00 00 10 */	b lbl_801ADA3C
lbl_801ADA30:
/* 801ADA30 001AA990  7F E3 FB 78 */	mr r3, r31
/* 801ADA34 001AA994  48 19 33 D9 */	bl GetObj__6CTokenFv
/* 801ADA38 001AA998  3B FF 00 08 */	addi r31, r31, 8
lbl_801ADA3C:
/* 801ADA3C 001AA99C  80 1D 08 D8 */	lwz r0, 0x8d8(r29)
/* 801ADA40 001AA9A0  80 7D 08 E0 */	lwz r3, 0x8e0(r29)
/* 801ADA44 001AA9A4  54 00 18 38 */	slwi r0, r0, 3
/* 801ADA48 001AA9A8  7C 03 02 14 */	add r0, r3, r0
/* 801ADA4C 001AA9AC  7C 1F 00 40 */	cmplw r31, r0
/* 801ADA50 001AA9B0  40 82 FF E0 */	bne lbl_801ADA30
/* 801ADA54 001AA9B4  7F A3 EB 78 */	mr r3, r29
/* 801ADA58 001AA9B8  7F C4 F3 78 */	mr r4, r30
/* 801ADA5C 001AA9BC  48 00 00 21 */	bl sub_801ada7c
lbl_801ADA60:
/* 801ADA60 001AA9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801ADA64 001AA9C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801ADA68 001AA9C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801ADA6C 001AA9CC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801ADA70 001AA9D0  7C 08 03 A6 */	mtlr r0
/* 801ADA74 001AA9D4  38 21 00 20 */	addi r1, r1, 0x20
/* 801ADA78 001AA9D8  4E 80 00 20 */	blr

.global sub_801ada7c
sub_801ada7c:
/* 801ADA7C 001AA9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADA80 001AA9E0  7C 08 02 A6 */	mflr r0
/* 801ADA84 001AA9E4  38 A0 00 01 */	li r5, 1
/* 801ADA88 001AA9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADA8C 001AA9EC  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801ADA90 001AA9F0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801ADA94 001AA9F4  98 03 08 E4 */	stb r0, 0x8e4(r3)
/* 801ADA98 001AA9F8  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801ADA9C 001AA9FC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801ADAA0 001AAA00  41 82 00 44 */	beq lbl_801ADAE4
/* 801ADAA4 001AAA04  80 E3 00 04 */	lwz r7, 4(r3)
/* 801ADAA8 001AAA08  38 A0 00 00 */	li r5, 0
/* 801ADAAC 001AAA0C  80 C4 08 50 */	lwz r6, 0x850(r4)
/* 801ADAB0 001AAA10  54 E4 18 38 */	slwi r4, r7, 3
/* 801ADAB4 001AAA14  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801ADAB8 001AAA18  80 C6 00 20 */	lwz r6, 0x20(r6)
/* 801ADABC 001AAA1C  38 04 00 04 */	addi r0, r4, 4
/* 801ADAC0 001AAA20  90 E1 00 08 */	stw r7, 8(r1)
/* 801ADAC4 001AAA24  7C 86 00 2E */	lwzx r4, r6, r0
/* 801ADAC8 001AAA28  80 C4 01 2C */	lwz r6, 0x12c(r4)
/* 801ADACC 001AAA2C  80 86 11 3C */	lwz r4, 0x113c(r6)
/* 801ADAD0 001AAA30  38 04 FF FF */	addi r0, r4, -1
/* 801ADAD4 001AAA34  90 06 11 3C */	stw r0, 0x113c(r6)
/* 801ADAD8 001AAA38  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801ADADC 001AAA3C  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801ADAE0 001AAA40  98 03 08 E4 */	stb r0, 0x8e4(r3)
lbl_801ADAE4:
/* 801ADAE4 001AAA44  4B FF FC AD */	bl sub_801ad790
/* 801ADAE8 001AAA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADAEC 001AAA4C  7C 08 03 A6 */	mtlr r0
/* 801ADAF0 001AAA50  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADAF4 001AAA54  4E 80 00 20 */	blr

.global sub_801adaf8
sub_801adaf8:
/* 801ADAF8 001AAA58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801ADAFC 001AAA5C  7C 08 02 A6 */	mflr r0
/* 801ADB00 001AAA60  90 01 00 44 */	stw r0, 0x44(r1)
/* 801ADB04 001AAA64  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801ADB08 001AAA68  7C 7F 1B 78 */	mr r31, r3
/* 801ADB0C 001AAA6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801ADB10 001AAA70  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801ADB14 001AAA74  93 81 00 30 */	stw r28, 0x30(r1)
/* 801ADB18 001AAA78  7C 9C 23 78 */	mr r28, r4
/* 801ADB1C 001AAA7C  80 03 08 D8 */	lwz r0, 0x8d8(r3)
/* 801ADB20 001AAA80  2C 00 00 00 */	cmpwi r0, 0
/* 801ADB24 001AAA84  41 82 00 3C */	beq lbl_801ADB60
/* 801ADB28 001AAA88  80 BF 08 E0 */	lwz r5, 0x8e0(r31)
/* 801ADB2C 001AAA8C  54 00 18 38 */	slwi r0, r0, 3
/* 801ADB30 001AAA90  7C 85 02 14 */	add r4, r5, r0
/* 801ADB34 001AAA94  48 00 00 18 */	b lbl_801ADB4C
lbl_801ADB38:
/* 801ADB38 001AAA98  80 65 00 00 */	lwz r3, 0(r5)
/* 801ADB3C 001AAA9C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801ADB40 001AAAA0  28 00 00 00 */	cmplwi r0, 0
/* 801ADB44 001AAAA4  41 82 01 50 */	beq lbl_801ADC94
/* 801ADB48 001AAAA8  38 A5 00 08 */	addi r5, r5, 8
lbl_801ADB4C:
/* 801ADB4C 001AAAAC  7C 05 20 40 */	cmplw r5, r4
/* 801ADB50 001AAAB0  40 82 FF E8 */	bne lbl_801ADB38
/* 801ADB54 001AAAB4  7F E3 FB 78 */	mr r3, r31
/* 801ADB58 001AAAB8  7F 84 E3 78 */	mr r4, r28
/* 801ADB5C 001AAABC  4B FF FF 21 */	bl sub_801ada7c
lbl_801ADB60:
/* 801ADB60 001AAAC0  80 7F 08 C8 */	lwz r3, 0x8c8(r31)
/* 801ADB64 001AAAC4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801ADB68 001AAAC8  28 00 00 00 */	cmplwi r0, 0
/* 801ADB6C 001AAACC  41 82 01 28 */	beq lbl_801ADC94
/* 801ADB70 001AAAD0  3B A1 00 18 */	addi r29, r1, 0x18
/* 801ADB74 001AAAD4  38 9F 08 C8 */	addi r4, r31, 0x8c8
/* 801ADB78 001AAAD8  7F A3 EB 78 */	mr r3, r29
/* 801ADB7C 001AAADC  48 19 33 2D */	bl __ct__6CTokenFRC6CToken
/* 801ADB80 001AAAE0  7F A3 EB 78 */	mr r3, r29
/* 801ADB84 001AAAE4  48 19 32 89 */	bl GetObj__6CTokenFv
/* 801ADB88 001AAAE8  83 C3 00 04 */	lwz r30, 4(r3)
/* 801ADB8C 001AAAEC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801ADB90 001AAAF0  80 9E 00 04 */	lwz r4, 4(r30)
/* 801ADB94 001AAAF4  2C 04 00 00 */	cmpwi r4, 0
/* 801ADB98 001AAAF8  40 82 00 20 */	bne lbl_801ADBB8
/* 801ADB9C 001AAAFC  7F E3 FB 78 */	mr r3, r31
/* 801ADBA0 001AAB00  7F 84 E3 78 */	mr r4, r28
/* 801ADBA4 001AAB04  4B FF FE D9 */	bl sub_801ada7c
/* 801ADBA8 001AAB08  7F A3 EB 78 */	mr r3, r29
/* 801ADBAC 001AAB0C  38 80 00 00 */	li r4, 0
/* 801ADBB0 001AAB10  48 19 32 91 */	bl __dt__6CTokenFv
/* 801ADBB4 001AAB14  48 00 00 E0 */	b lbl_801ADC94
lbl_801ADBB8:
/* 801ADBB8 001AAB18  80 1F 08 D8 */	lwz r0, 0x8d8(r31)
/* 801ADBBC 001AAB1C  2C 00 00 00 */	cmpwi r0, 0
/* 801ADBC0 001AAB20  40 82 00 C8 */	bne lbl_801ADC88
/* 801ADBC4 001AAB24  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 801ADBC8 001AAB28  4B E5 AD 95 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
/* 801ADBCC 001AAB2C  3B 80 00 00 */	li r28, 0
/* 801ADBD0 001AAB30  3B A0 00 00 */	li r29, 0
/* 801ADBD4 001AAB34  48 00 00 A8 */	b lbl_801ADC7C
lbl_801ADBD8:
/* 801ADBD8 001AAB38  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801ADBDC 001AAB3C  38 61 00 08 */	addi r3, r1, 8
/* 801ADBE0 001AAB40  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 801ADBE4 001AAB44  81 84 00 00 */	lwz r12, 0(r4)
/* 801ADBE8 001AAB48  7C A0 EA 14 */	add r5, r0, r29
/* 801ADBEC 001AAB4C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801ADBF0 001AAB50  7D 89 03 A6 */	mtctr r12
/* 801ADBF4 001AAB54  4E 80 04 21 */	bctrl
/* 801ADBF8 001AAB58  38 61 00 10 */	addi r3, r1, 0x10
/* 801ADBFC 001AAB5C  38 81 00 08 */	addi r4, r1, 8
/* 801ADC00 001AAB60  48 19 32 A9 */	bl __ct__6CTokenFRC6CToken
/* 801ADC04 001AAB64  38 61 00 08 */	addi r3, r1, 8
/* 801ADC08 001AAB68  38 80 FF FF */	li r4, -1
/* 801ADC0C 001AAB6C  48 19 32 35 */	bl __dt__6CTokenFv
/* 801ADC10 001AAB70  38 61 00 10 */	addi r3, r1, 0x10
/* 801ADC14 001AAB74  48 19 31 71 */	bl Lock__6CTokenFv
/* 801ADC18 001AAB78  80 1F 08 D8 */	lwz r0, 0x8d8(r31)
/* 801ADC1C 001AAB7C  80 BF 08 DC */	lwz r5, 0x8dc(r31)
/* 801ADC20 001AAB80  7C 00 28 00 */	cmpw r0, r5
/* 801ADC24 001AAB84  41 80 00 1C */	blt lbl_801ADC40
/* 801ADC28 001AAB88  2C 05 00 00 */	cmpwi r5, 0
/* 801ADC2C 001AAB8C  38 7F 08 D4 */	addi r3, r31, 0x8d4
/* 801ADC30 001AAB90  38 80 00 04 */	li r4, 4
/* 801ADC34 001AAB94  41 82 00 08 */	beq lbl_801ADC3C
/* 801ADC38 001AAB98  54 A4 08 3C */	slwi r4, r5, 1
lbl_801ADC3C:
/* 801ADC3C 001AAB9C  4B E5 AD 21 */	bl "reserve__Q24rstl42vector<6CToken,Q24rstl17rmemory_allocator>Fi"
lbl_801ADC40:
/* 801ADC40 001AABA0  80 1F 08 D8 */	lwz r0, 0x8d8(r31)
/* 801ADC44 001AABA4  80 7F 08 E0 */	lwz r3, 0x8e0(r31)
/* 801ADC48 001AABA8  54 00 18 38 */	slwi r0, r0, 3
/* 801ADC4C 001AABAC  7C 63 02 15 */	add. r3, r3, r0
/* 801ADC50 001AABB0  41 82 00 0C */	beq lbl_801ADC5C
/* 801ADC54 001AABB4  38 81 00 10 */	addi r4, r1, 0x10
/* 801ADC58 001AABB8  48 19 32 51 */	bl __ct__6CTokenFRC6CToken
lbl_801ADC5C:
/* 801ADC5C 001AABBC  80 BF 08 D8 */	lwz r5, 0x8d8(r31)
/* 801ADC60 001AABC0  38 61 00 10 */	addi r3, r1, 0x10
/* 801ADC64 001AABC4  38 80 FF FF */	li r4, -1
/* 801ADC68 001AABC8  38 05 00 01 */	addi r0, r5, 1
/* 801ADC6C 001AABCC  90 1F 08 D8 */	stw r0, 0x8d8(r31)
/* 801ADC70 001AABD0  48 19 31 D1 */	bl __dt__6CTokenFv
/* 801ADC74 001AABD4  3B BD 00 08 */	addi r29, r29, 8
/* 801ADC78 001AABD8  3B 9C 00 01 */	addi r28, r28, 1
lbl_801ADC7C:
/* 801ADC7C 001AABDC  80 1E 00 04 */	lwz r0, 4(r30)
/* 801ADC80 001AABE0  7C 1C 00 00 */	cmpw r28, r0
/* 801ADC84 001AABE4  41 80 FF 54 */	blt lbl_801ADBD8
lbl_801ADC88:
/* 801ADC88 001AABE8  38 61 00 18 */	addi r3, r1, 0x18
/* 801ADC8C 001AABEC  38 80 00 00 */	li r4, 0
/* 801ADC90 001AABF0  48 19 31 B1 */	bl __dt__6CTokenFv
lbl_801ADC94:
/* 801ADC94 001AABF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801ADC98 001AABF8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801ADC9C 001AABFC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801ADCA0 001AAC00  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801ADCA4 001AAC04  83 81 00 30 */	lwz r28, 0x30(r1)
/* 801ADCA8 001AAC08  7C 08 03 A6 */	mtlr r0
/* 801ADCAC 001AAC0C  38 21 00 40 */	addi r1, r1, 0x40
/* 801ADCB0 001AAC10  4E 80 00 20 */	blr

.global sub_801adcb4
sub_801adcb4:
/* 801ADCB4 001AAC14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801ADCB8 001AAC18  7C 08 02 A6 */	mflr r0
/* 801ADCBC 001AAC1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801ADCC0 001AAC20  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 801ADCC4 001AAC24  7C 7D 1B 78 */	mr r29, r3
/* 801ADCC8 001AAC28  7C 9E 23 78 */	mr r30, r4
/* 801ADCCC 001AAC2C  7C BF 2B 78 */	mr r31, r5
/* 801ADCD0 001AAC30  3B 60 00 00 */	li r27, 0
/* 801ADCD4 001AAC34  81 83 00 00 */	lwz r12, 0(r3)
/* 801ADCD8 001AAC38  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801ADCDC 001AAC3C  7D 89 03 A6 */	mtctr r12
/* 801ADCE0 001AAC40  4E 80 04 21 */	bctrl
/* 801ADCE4 001AAC44  7C 7C 1B 78 */	mr r28, r3
/* 801ADCE8 001AAC48  80 03 00 08 */	lwz r0, 8(r3)
/* 801ADCEC 001AAC4C  28 00 00 00 */	cmplwi r0, 0
/* 801ADCF0 001AAC50  41 82 00 0C */	beq lbl_801ADCFC
/* 801ADCF4 001AAC54  38 60 00 01 */	li r3, 1
/* 801ADCF8 001AAC58  48 00 00 38 */	b lbl_801ADD30
lbl_801ADCFC:
/* 801ADCFC 001AAC5C  88 1C 00 04 */	lbz r0, 4(r28)
/* 801ADD00 001AAC60  28 00 00 00 */	cmplwi r0, 0
/* 801ADD04 001AAC64  41 82 00 28 */	beq lbl_801ADD2C
/* 801ADD08 001AAC68  80 9C 00 00 */	lwz r4, 0(r28)
/* 801ADD0C 001AAC6C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 801ADD10 001AAC70  28 00 00 00 */	cmplwi r0, 0
/* 801ADD14 001AAC74  41 82 00 18 */	beq lbl_801ADD2C
/* 801ADD18 001AAC78  48 19 30 F5 */	bl GetObj__6CTokenFv
/* 801ADD1C 001AAC7C  80 03 00 04 */	lwz r0, 4(r3)
/* 801ADD20 001AAC80  38 60 00 01 */	li r3, 1
/* 801ADD24 001AAC84  90 1C 00 08 */	stw r0, 8(r28)
/* 801ADD28 001AAC88  48 00 00 08 */	b lbl_801ADD30
lbl_801ADD2C:
/* 801ADD2C 001AAC8C  38 60 00 00 */	li r3, 0
lbl_801ADD30:
/* 801ADD30 001AAC90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801ADD34 001AAC94  41 82 01 34 */	beq lbl_801ADE68
/* 801ADD38 001AAC98  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801ADD3C 001AAC9C  7F E3 FB 78 */	mr r3, r31
/* 801ADD40 001AACA0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801ADD44 001AACA4  38 A0 00 09 */	li r5, 9
/* 801ADD48 001AACA8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801ADD4C 001AACAC  38 C0 00 06 */	li r6, 6
/* 801ADD50 001AACB0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801ADD54 001AACB4  4B E9 79 DD */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 801ADD58 001AACB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801ADD5C 001AACBC  41 82 01 0C */	beq lbl_801ADE68
/* 801ADD60 001AACC0  7F A3 EB 78 */	mr r3, r29
/* 801ADD64 001AACC4  81 9D 00 00 */	lwz r12, 0(r29)
/* 801ADD68 001AACC8  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801ADD6C 001AACCC  7D 89 03 A6 */	mtctr r12
/* 801ADD70 001AACD0  4E 80 04 21 */	bctrl
/* 801ADD74 001AACD4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801ADD78 001AACD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 801ADD7C 001AACDC  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801ADD80 001AACE0  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801ADD84 001AACE4  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 801ADD88 001AACE8  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801ADD8C 001AACEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 801ADD90 001AACF0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801ADD94 001AACF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801ADD98 001AACF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801ADD9C 001AACFC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801ADDA0 001AAD00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801ADDA4 001AAD04  88 03 00 24 */	lbz r0, 0x24(r3)
/* 801ADDA8 001AAD08  98 01 00 40 */	stb r0, 0x40(r1)
/* 801ADDAC 001AAD0C  80 1D 07 88 */	lwz r0, 0x788(r29)
/* 801ADDB0 001AAD10  2C 00 00 02 */	cmpwi r0, 2
/* 801ADDB4 001AAD14  41 80 00 10 */	blt lbl_801ADDC4
/* 801ADDB8 001AAD18  C0 02 A8 B4 */	lfs f0, lbl_805AC5D4@sda21(r2)
/* 801ADDBC 001AAD1C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801ADDC0 001AAD20  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_801ADDC4:
/* 801ADDC4 001AAD24  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801ADDC8 001AAD28  38 60 03 E0 */	li r3, 0x3e0
/* 801ADDCC 001AAD2C  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801ADDD0 001AAD30  38 A0 00 00 */	li r5, 0
/* 801ADDD4 001AAD34  38 84 00 7E */	addi r4, r4, 0x7e
/* 801ADDD8 001AAD38  48 16 7A 95 */	bl __nw__FUlPCcPCc
/* 801ADDDC 001AAD3C  7C 7C 1B 79 */	or. r28, r3, r3
/* 801ADDE0 001AAD40  41 82 00 70 */	beq lbl_801ADE50
/* 801ADDE4 001AAD44  A0 BD 00 08 */	lhz r5, 8(r29)
/* 801ADDE8 001AAD48  7F E4 FB 78 */	mr r4, r31
/* 801ADDEC 001AAD4C  38 61 00 08 */	addi r3, r1, 8
/* 801ADDF0 001AAD50  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801ADDF4 001AAD54  80 1D 00 04 */	lwz r0, 4(r29)
/* 801ADDF8 001AAD58  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801ADDFC 001AAD5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801ADE00 001AAD60  90 01 00 24 */	stw r0, 0x24(r1)
/* 801ADE04 001AAD64  4B E9 F2 D9 */	bl AllocateUniqueId__13CStateManagerFv
/* 801ADE08 001AAD68  A0 01 00 08 */	lhz r0, 8(r1)
/* 801ADE0C 001AAD6C  7F A3 EB 78 */	mr r3, r29
/* 801ADE10 001AAD70  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801ADE14 001AAD74  81 9D 00 00 */	lwz r12, 0(r29)
/* 801ADE18 001AAD78  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801ADE1C 001AAD7C  7D 89 03 A6 */	mtctr r12
/* 801ADE20 001AAD80  4E 80 04 21 */	bctrl
/* 801ADE24 001AAD84  88 1D 08 E4 */	lbz r0, 0x8e4(r29)
/* 801ADE28 001AAD88  7C 65 1B 78 */	mr r5, r3
/* 801ADE2C 001AAD8C  7F 83 E3 78 */	mr r3, r28
/* 801ADE30 001AAD90  7F C6 F3 78 */	mr r6, r30
/* 801ADE34 001AAD94  54 04 FF FE */	rlwinm r4, r0, 0x1f, 0x1f, 0x1f
/* 801ADE38 001AAD98  38 E1 00 28 */	addi r7, r1, 0x28
/* 801ADE3C 001AAD9C  39 01 00 0C */	addi r8, r1, 0xc
/* 801ADE40 001AADA0  39 21 00 24 */	addi r9, r1, 0x24
/* 801ADE44 001AADA4  39 41 00 14 */	addi r10, r1, 0x14
/* 801ADE48 001AADA8  48 00 65 7D */	bl "__ct__19CFlaahgraProjectileFbRC28TToken<18CWeaponDescription>RC12CTransform4fRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId"
/* 801ADE4C 001AADAC  7C 7C 1B 78 */	mr r28, r3
lbl_801ADE50:
/* 801ADE50 001AADB0  28 1C 00 00 */	cmplwi r28, 0
/* 801ADE54 001AADB4  7F 9B E3 78 */	mr r27, r28
/* 801ADE58 001AADB8  41 82 00 10 */	beq lbl_801ADE68
/* 801ADE5C 001AADBC  7F E3 FB 78 */	mr r3, r31
/* 801ADE60 001AADC0  7F 84 E3 78 */	mr r4, r28
/* 801ADE64 001AADC4  4B E9 EE 91 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_801ADE68:
/* 801ADE68 001AADC8  7F 63 DB 78 */	mr r3, r27
/* 801ADE6C 001AADCC  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 801ADE70 001AADD0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801ADE74 001AADD4  7C 08 03 A6 */	mtlr r0
/* 801ADE78 001AADD8  38 21 00 60 */	addi r1, r1, 0x60
/* 801ADE7C 001AADDC  4E 80 00 20 */	blr

.global sub_801ade80
sub_801ade80:
/* 801ADE80 001AADE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801ADE84 001AADE4  80 03 07 AC */	lwz r0, 0x7ac(r3)
/* 801ADE88 001AADE8  C0 A3 00 38 */	lfs f5, 0x38(r3)
/* 801ADE8C 001AADEC  2C 00 00 00 */	cmpwi r0, 0
/* 801ADE90 001AADF0  C0 C3 00 48 */	lfs f6, 0x48(r3)
/* 801ADE94 001AADF4  C0 E3 00 58 */	lfs f7, 0x58(r3)
/* 801ADE98 001AADF8  40 82 00 3C */	bne lbl_801ADED4
/* 801ADE9C 001AADFC  C0 83 00 54 */	lfs f4, 0x54(r3)
/* 801ADEA0 001AAE00  38 81 00 14 */	addi r4, r1, 0x14
/* 801ADEA4 001AAE04  C0 43 00 44 */	lfs f2, 0x44(r3)
/* 801ADEA8 001AAE08  C0 63 00 34 */	lfs f3, 0x34(r3)
/* 801ADEAC 001AAE0C  FC 00 20 50 */	fneg f0, f4
/* 801ADEB0 001AAE10  FC 20 10 50 */	fneg f1, f2
/* 801ADEB4 001AAE14  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801ADEB8 001AAE18  FC 40 18 50 */	fneg f2, f3
/* 801ADEBC 001AAE1C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801ADEC0 001AAE20  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801ADEC4 001AAE24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801ADEC8 001AAE28  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801ADECC 001AAE2C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801ADED0 001AAE30  48 00 00 20 */	b lbl_801ADEF0
lbl_801ADED4:
/* 801ADED4 001AAE34  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 801ADED8 001AAE38  38 81 00 08 */	addi r4, r1, 8
/* 801ADEDC 001AAE3C  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 801ADEE0 001AAE40  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 801ADEE4 001AAE44  D0 01 00 08 */	stfs f0, 8(r1)
/* 801ADEE8 001AAE48  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801ADEEC 001AAE4C  D0 41 00 10 */	stfs f2, 0x10(r1)
lbl_801ADEF0:
/* 801ADEF0 001AAE50  C0 44 00 00 */	lfs f2, 0(r4)
/* 801ADEF4 001AAE54  C0 64 00 04 */	lfs f3, 4(r4)
/* 801ADEF8 001AAE58  C0 84 00 08 */	lfs f4, 8(r4)
/* 801ADEFC 001AAE5C  C1 62 A8 B8 */	lfs f11, lbl_805AC5D8@sda21(r2)
/* 801ADF00 001AAE60  D0 43 08 94 */	stfs f2, 0x894(r3)
/* 801ADF04 001AAE64  D0 63 08 98 */	stfs f3, 0x898(r3)
/* 801ADF08 001AAE68  D0 83 08 9C */	stfs f4, 0x89c(r3)
/* 801ADF0C 001AAE6C  80 03 07 AC */	lwz r0, 0x7ac(r3)
/* 801ADF10 001AAE70  2C 00 00 00 */	cmpwi r0, 0
/* 801ADF14 001AAE74  40 82 00 0C */	bne lbl_801ADF20
/* 801ADF18 001AAE78  38 A3 08 60 */	addi r5, r3, 0x860
/* 801ADF1C 001AAE7C  48 00 00 08 */	b lbl_801ADF24
lbl_801ADF20:
/* 801ADF20 001AAE80  38 A3 08 2C */	addi r5, r3, 0x82c
lbl_801ADF24:
/* 801ADF24 001AAE84  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801ADF28 001AAE88  38 C5 00 04 */	addi r6, r5, 4
/* 801ADF2C 001AAE8C  48 00 00 58 */	b lbl_801ADF84
lbl_801ADF30:
/* 801ADF30 001AAE90  C1 06 00 04 */	lfs f8, 4(r6)
/* 801ADF34 001AAE94  C1 26 00 00 */	lfs f9, 0(r6)
/* 801ADF38 001AAE98  EC 03 02 32 */	fmuls f0, f3, f8
/* 801ADF3C 001AAE9C  C1 46 00 08 */	lfs f10, 8(r6)
/* 801ADF40 001AAEA0  EC 02 02 7A */	fmadds f0, f2, f9, f0
/* 801ADF44 001AAEA4  EC 04 02 BA */	fmadds f0, f4, f10, f0
/* 801ADF48 001AAEA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801ADF4C 001AAEAC  4C 41 13 82 */	cror 2, 1, 2
/* 801ADF50 001AAEB0  40 82 00 30 */	bne lbl_801ADF80
/* 801ADF54 001AAEB4  EC 06 02 32 */	fmuls f0, f6, f8
/* 801ADF58 001AAEB8  EC 05 02 7A */	fmadds f0, f5, f9, f0
/* 801ADF5C 001AAEBC  EC 07 02 BA */	fmadds f0, f7, f10, f0
/* 801ADF60 001AAEC0  FC 00 58 40 */	fcmpo cr0, f0, f11
/* 801ADF64 001AAEC4  40 81 00 1C */	ble lbl_801ADF80
/* 801ADF68 001AAEC8  D1 23 08 94 */	stfs f9, 0x894(r3)
/* 801ADF6C 001AAECC  FD 60 00 90 */	fmr f11, f0
/* 801ADF70 001AAED0  C0 06 00 04 */	lfs f0, 4(r6)
/* 801ADF74 001AAED4  D0 03 08 98 */	stfs f0, 0x898(r3)
/* 801ADF78 001AAED8  C0 06 00 08 */	lfs f0, 8(r6)
/* 801ADF7C 001AAEDC  D0 03 08 9C */	stfs f0, 0x89c(r3)
lbl_801ADF80:
/* 801ADF80 001AAEE0  38 C6 00 0C */	addi r6, r6, 0xc
lbl_801ADF84:
/* 801ADF84 001AAEE4  80 05 00 00 */	lwz r0, 0(r5)
/* 801ADF88 001AAEE8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801ADF8C 001AAEEC  7C 85 02 14 */	add r4, r5, r0
/* 801ADF90 001AAEF0  38 04 00 04 */	addi r0, r4, 4
/* 801ADF94 001AAEF4  7C 06 00 40 */	cmplw r6, r0
/* 801ADF98 001AAEF8  40 82 FF 98 */	bne lbl_801ADF30
/* 801ADF9C 001AAEFC  38 21 00 30 */	addi r1, r1, 0x30
/* 801ADFA0 001AAF00  4E 80 00 20 */	blr

.global sub_801adfa4
sub_801adfa4:
/* 801ADFA4 001AAF04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801ADFA8 001AAF08  7C 08 02 A6 */	mflr r0
/* 801ADFAC 001AAF0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801ADFB0 001AAF10  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801ADFB4 001AAF14  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801ADFB8 001AAF18  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801ADFBC 001AAF1C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801ADFC0 001AAF20  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801ADFC4 001AAF24  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801ADFC8 001AAF28  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 801ADFCC 001AAF2C  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 801ADFD0 001AAF30  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801ADFD4 001AAF34  7C BC 2B 78 */	mr r28, r5
/* 801ADFD8 001AAF38  7C 9B 23 78 */	mr r27, r4
/* 801ADFDC 001AAF3C  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801ADFE0 001AAF40  3B DB 07 74 */	addi r30, r27, 0x774
/* 801ADFE4 001AAF44  A3 ED A3 8C */	lhz r31, kInvalidUniqueId@sda21(r13)
/* 801ADFE8 001AAF48  7C 7A 1B 78 */	mr r26, r3
/* 801ADFEC 001AAF4C  C3 82 A8 C0 */	lfs f28, lbl_805AC5E0@sda21(r2)
/* 801ADFF0 001AAF50  7F DD F3 78 */	mr r29, r30
/* 801ADFF4 001AAF54  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 801ADFF8 001AAF58  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 801ADFFC 001AAF5C  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 801AE000 001AAF60  48 00 00 64 */	b lbl_801AE064
lbl_801AE004:
/* 801AE004 001AAF64  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801AE008 001AAF68  7F 83 E3 78 */	mr r3, r28
/* 801AE00C 001AAF6C  38 81 00 08 */	addi r4, r1, 8
/* 801AE010 001AAF70  B0 01 00 08 */	sth r0, 8(r1)
/* 801AE014 001AAF74  4B E9 E5 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AE018 001AAF78  28 03 00 00 */	cmplwi r3, 0
/* 801AE01C 001AAF7C  41 82 00 44 */	beq lbl_801AE060
/* 801AE020 001AAF80  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801AE024 001AAF84  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801AE028 001AAF88  41 82 00 38 */	beq lbl_801AE060
/* 801AE02C 001AAF8C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801AE030 001AAF90  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801AE034 001AAF94  EC 40 F0 28 */	fsubs f2, f0, f30
/* 801AE038 001AAF98  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801AE03C 001AAF9C  EC 61 F8 28 */	fsubs f3, f1, f31
/* 801AE040 001AAFA0  EC 20 E8 28 */	fsubs f1, f0, f29
/* 801AE044 001AAFA4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801AE048 001AAFA8  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 801AE04C 001AAFAC  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 801AE050 001AAFB0  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 801AE054 001AAFB4  40 81 00 0C */	ble lbl_801AE060
/* 801AE058 001AAFB8  A3 FD 00 00 */	lhz r31, 0(r29)
/* 801AE05C 001AAFBC  FF 80 00 90 */	fmr f28, f0
lbl_801AE060:
/* 801AE060 001AAFC0  3B BD 00 02 */	addi r29, r29, 2
lbl_801AE064:
/* 801AE064 001AAFC4  80 1B 07 70 */	lwz r0, 0x770(r27)
/* 801AE068 001AAFC8  54 00 08 3C */	slwi r0, r0, 1
/* 801AE06C 001AAFCC  7C 1E 02 14 */	add r0, r30, r0
/* 801AE070 001AAFD0  7C 1D 00 40 */	cmplw r29, r0
/* 801AE074 001AAFD4  40 82 FF 90 */	bne lbl_801AE004
/* 801AE078 001AAFD8  B3 FA 00 00 */	sth r31, 0(r26)
/* 801AE07C 001AAFDC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801AE080 001AAFE0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801AE084 001AAFE4  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801AE088 001AAFE8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801AE08C 001AAFEC  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801AE090 001AAFF0  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801AE094 001AAFF4  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 801AE098 001AAFF8  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 801AE09C 001AAFFC  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801AE0A0 001AB000  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801AE0A4 001AB004  7C 08 03 A6 */	mtlr r0
/* 801AE0A8 001AB008  38 21 00 70 */	addi r1, r1, 0x70
/* 801AE0AC 001AB00C  4E 80 00 20 */	blr

.global sub_801ae0b0
sub_801ae0b0:
/* 801AE0B0 001AB010  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AE0B4 001AB014  7C 08 02 A6 */	mflr r0
/* 801AE0B8 001AB018  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AE0BC 001AB01C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801AE0C0 001AB020  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801AE0C4 001AB024  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801AE0C8 001AB028  7C 9D 23 78 */	mr r29, r4
/* 801AE0CC 001AB02C  93 81 00 20 */	stw r28, 0x20(r1)
/* 801AE0D0 001AB030  7C 7C 1B 78 */	mr r28, r3
/* 801AE0D4 001AB034  3B DC 07 74 */	addi r30, r28, 0x774
/* 801AE0D8 001AB038  80 A3 07 70 */	lwz r5, 0x770(r3)
/* 801AE0DC 001AB03C  38 60 00 00 */	li r3, 0
/* 801AE0E0 001AB040  2C 05 00 00 */	cmpwi r5, 0
/* 801AE0E4 001AB044  40 81 00 40 */	ble lbl_801AE124
/* 801AE0E8 001AB048  2C 05 00 08 */	cmpwi r5, 8
/* 801AE0EC 001AB04C  38 85 FF F8 */	addi r4, r5, -8
/* 801AE0F0 001AB050  40 81 00 20 */	ble lbl_801AE110
/* 801AE0F4 001AB054  38 04 00 07 */	addi r0, r4, 7
/* 801AE0F8 001AB058  54 00 E8 FE */	srwi r0, r0, 3
/* 801AE0FC 001AB05C  7C 09 03 A6 */	mtctr r0
/* 801AE100 001AB060  2C 04 00 00 */	cmpwi r4, 0
/* 801AE104 001AB064  40 81 00 0C */	ble lbl_801AE110
lbl_801AE108:
/* 801AE108 001AB068  38 63 00 08 */	addi r3, r3, 8
/* 801AE10C 001AB06C  42 00 FF FC */	bdnz lbl_801AE108
lbl_801AE110:
/* 801AE110 001AB070  7C 03 28 50 */	subf r0, r3, r5
/* 801AE114 001AB074  7C 09 03 A6 */	mtctr r0
/* 801AE118 001AB078  7C 03 28 00 */	cmpw r3, r5
/* 801AE11C 001AB07C  40 80 00 08 */	bge lbl_801AE124
lbl_801AE120:
/* 801AE120 001AB080  42 00 00 00 */	bdnz lbl_801AE120
lbl_801AE124:
/* 801AE124 001AB084  38 00 00 00 */	li r0, 0
/* 801AE128 001AB088  90 1C 07 70 */	stw r0, 0x770(r28)
/* 801AE12C 001AB08C  83 FC 00 2C */	lwz r31, 0x2c(r28)
/* 801AE130 001AB090  48 00 00 8C */	b lbl_801AE1BC
lbl_801AE134:
/* 801AE134 001AB094  80 1F 00 00 */	lwz r0, 0(r31)
/* 801AE138 001AB098  2C 00 00 19 */	cmpwi r0, 0x19
/* 801AE13C 001AB09C  40 82 00 7C */	bne lbl_801AE1B8
/* 801AE140 001AB0A0  80 1F 00 04 */	lwz r0, 4(r31)
/* 801AE144 001AB0A4  2C 00 00 06 */	cmpwi r0, 6
/* 801AE148 001AB0A8  40 82 00 70 */	bne lbl_801AE1B8
/* 801AE14C 001AB0AC  80 1F 00 08 */	lwz r0, 8(r31)
/* 801AE150 001AB0B0  7F A4 EB 78 */	mr r4, r29
/* 801AE154 001AB0B4  38 61 00 0C */	addi r3, r1, 0xc
/* 801AE158 001AB0B8  38 A1 00 14 */	addi r5, r1, 0x14
/* 801AE15C 001AB0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE160 001AB0C0  4B E9 9D BD */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801AE164 001AB0C4  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801AE168 001AB0C8  7F A3 EB 78 */	mr r3, r29
/* 801AE16C 001AB0CC  38 81 00 08 */	addi r4, r1, 8
/* 801AE170 001AB0D0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801AE174 001AB0D4  B0 01 00 08 */	sth r0, 8(r1)
/* 801AE178 001AB0D8  4B E9 E4 2D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AE17C 001AB0DC  7C 64 1B 78 */	mr r4, r3
/* 801AE180 001AB0E0  38 61 00 18 */	addi r3, r1, 0x18
/* 801AE184 001AB0E4  4B EF 83 C9 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801AE188 001AB0E8  80 03 00 04 */	lwz r0, 4(r3)
/* 801AE18C 001AB0EC  28 00 00 00 */	cmplwi r0, 0
/* 801AE190 001AB0F0  41 82 00 28 */	beq lbl_801AE1B8
/* 801AE194 001AB0F4  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 801AE198 001AB0F8  54 00 08 3C */	slwi r0, r0, 1
/* 801AE19C 001AB0FC  7C 7E 02 15 */	add. r3, r30, r0
/* 801AE1A0 001AB100  41 82 00 0C */	beq lbl_801AE1AC
/* 801AE1A4 001AB104  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801AE1A8 001AB108  B0 03 00 00 */	sth r0, 0(r3)
lbl_801AE1AC:
/* 801AE1AC 001AB10C  80 7C 07 70 */	lwz r3, 0x770(r28)
/* 801AE1B0 001AB110  38 03 00 01 */	addi r0, r3, 1
/* 801AE1B4 001AB114  90 1C 07 70 */	stw r0, 0x770(r28)
lbl_801AE1B8:
/* 801AE1B8 001AB118  3B FF 00 0C */	addi r31, r31, 0xc
lbl_801AE1BC:
/* 801AE1BC 001AB11C  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 801AE1C0 001AB120  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 801AE1C4 001AB124  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801AE1C8 001AB128  7C 03 02 14 */	add r0, r3, r0
/* 801AE1CC 001AB12C  7C 1F 00 40 */	cmplw r31, r0
/* 801AE1D0 001AB130  40 82 FF 64 */	bne lbl_801AE134
/* 801AE1D4 001AB134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AE1D8 001AB138  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801AE1DC 001AB13C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801AE1E0 001AB140  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801AE1E4 001AB144  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801AE1E8 001AB148  7C 08 03 A6 */	mtlr r0
/* 801AE1EC 001AB14C  38 21 00 30 */	addi r1, r1, 0x30
/* 801AE1F0 001AB150  4E 80 00 20 */	blr

.global sub_801ae1f4
sub_801ae1f4:
/* 801AE1F4 001AB154  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801AE1F8 001AB158  7C 08 02 A6 */	mflr r0
/* 801AE1FC 001AB15C  90 01 01 04 */	stw r0, 0x104(r1)
/* 801AE200 001AB160  38 61 00 18 */	addi r3, r1, 0x18
/* 801AE204 001AB164  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801AE208 001AB168  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801AE20C 001AB16C  7C 9E 23 78 */	mr r30, r4
/* 801AE210 001AB170  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801AE214 001AB174  C0 85 00 04 */	lfs f4, 4(r5)
/* 801AE218 001AB178  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801AE21C 001AB17C  C0 65 00 08 */	lfs f3, 8(r5)
/* 801AE220 001AB180  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801AE224 001AB184  EC 84 00 28 */	fsubs f4, f4, f0
/* 801AE228 001AB188  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801AE22C 001AB18C  C0 25 00 00 */	lfs f1, 0(r5)
/* 801AE230 001AB190  EC 43 10 28 */	fsubs f2, f3, f2
/* 801AE234 001AB194  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801AE238 001AB198  EC 01 00 28 */	fsubs f0, f1, f0
/* 801AE23C 001AB19C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801AE240 001AB1A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801AE244 001AB1A4  48 16 66 75 */	bl Magnitude__9CVector3fCFv
/* 801AE248 001AB1A8  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 801AE24C 001AB1AC  2C 00 00 02 */	cmpwi r0, 2
/* 801AE250 001AB1B0  40 82 00 0C */	bne lbl_801AE25C
/* 801AE254 001AB1B4  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 801AE258 001AB1B8  48 00 00 08 */	b lbl_801AE260
lbl_801AE25C:
/* 801AE25C 001AB1BC  38 00 00 04 */	li r0, 4
lbl_801AE260:
/* 801AE260 001AB1C0  2C 00 00 01 */	cmpwi r0, 1
/* 801AE264 001AB1C4  41 82 01 0C */	beq lbl_801AE370
/* 801AE268 001AB1C8  88 1F 09 C4 */	lbz r0, 0x9c4(r31)
/* 801AE26C 001AB1CC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801AE270 001AB1D0  40 82 01 00 */	bne lbl_801AE370
/* 801AE274 001AB1D4  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801AE278 001AB1D8  2C 00 00 01 */	cmpwi r0, 1
/* 801AE27C 001AB1DC  41 82 00 84 */	beq lbl_801AE300
/* 801AE280 001AB1E0  80 9E 08 70 */	lwz r4, 0x870(r30)
/* 801AE284 001AB1E4  38 61 00 08 */	addi r3, r1, 8
/* 801AE288 001AB1E8  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801AE28C 001AB1EC  A3 E5 00 08 */	lhz r31, 8(r5)
/* 801AE290 001AB1F0  4B E5 D9 49 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 801AE294 001AB1F4  A0 01 00 08 */	lhz r0, 8(r1)
/* 801AE298 001AB1F8  7C 00 F8 40 */	cmplw r0, r31
/* 801AE29C 001AB1FC  40 82 00 D4 */	bne lbl_801AE370
/* 801AE2A0 001AB200  C0 22 A8 C4 */	lfs f1, lbl_805AC5E4@sda21(r2)
/* 801AE2A4 001AB204  38 61 00 24 */	addi r3, r1, 0x24
/* 801AE2A8 001AB208  C0 42 A8 C8 */	lfs f2, lbl_805AC5E8@sda21(r2)
/* 801AE2AC 001AB20C  4B FA F5 85 */	bl __ct__16CCameraShakeDataFff
/* 801AE2B0 001AB210  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 801AE2B4 001AB214  38 81 00 24 */	addi r4, r1, 0x24
/* 801AE2B8 001AB218  38 A0 00 01 */	li r5, 1
/* 801AE2BC 001AB21C  4B E5 C7 65 */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 801AE2C0 001AB220  34 81 00 A4 */	addic. r4, r1, 0xa4
/* 801AE2C4 001AB224  41 82 00 10 */	beq lbl_801AE2D4
/* 801AE2C8 001AB228  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801AE2CC 001AB22C  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801AE2D0 001AB230  90 04 00 00 */	stw r0, 0(r4)
lbl_801AE2D4:
/* 801AE2D4 001AB234  34 81 00 68 */	addic. r4, r1, 0x68
/* 801AE2D8 001AB238  41 82 00 10 */	beq lbl_801AE2E8
/* 801AE2DC 001AB23C  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801AE2E0 001AB240  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801AE2E4 001AB244  90 04 00 00 */	stw r0, 0(r4)
lbl_801AE2E8:
/* 801AE2E8 001AB248  34 81 00 2C */	addic. r4, r1, 0x2c
/* 801AE2EC 001AB24C  41 82 00 84 */	beq lbl_801AE370
/* 801AE2F0 001AB250  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801AE2F4 001AB254  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801AE2F8 001AB258  90 04 00 00 */	stw r0, 0(r4)
/* 801AE2FC 001AB25C  48 00 00 74 */	b lbl_801AE370
lbl_801AE300:
/* 801AE300 001AB260  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801AE304 001AB264  C4 43 66 F4 */	lfsu f2, sUpVector__9CVector3f@l(r3)
/* 801AE308 001AB268  C0 62 A8 CC */	lfs f3, lbl_805AC5EC@sda21(r2)
/* 801AE30C 001AB26C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801AE310 001AB270  C0 03 00 08 */	lfs f0, 8(r3)
/* 801AE314 001AB274  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801AE318 001AB278  EC 23 00 72 */	fmuls f1, f3, f1
/* 801AE31C 001AB27C  C0 82 A8 C8 */	lfs f4, lbl_805AC5E8@sda21(r2)
/* 801AE320 001AB280  EC 03 00 32 */	fmuls f0, f3, f0
/* 801AE324 001AB284  C0 BF 00 E8 */	lfs f5, 0xe8(r31)
/* 801AE328 001AB288  EC 44 00 B2 */	fmuls f2, f4, f2
/* 801AE32C 001AB28C  EC 24 00 72 */	fmuls f1, f4, f1
/* 801AE330 001AB290  EC 04 00 32 */	fmuls f0, f4, f0
/* 801AE334 001AB294  EC 45 00 B2 */	fmuls f2, f5, f2
/* 801AE338 001AB298  EC 25 00 72 */	fmuls f1, f5, f1
/* 801AE33C 001AB29C  EC 05 00 32 */	fmuls f0, f5, f0
/* 801AE340 001AB2A0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 801AE344 001AB2A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801AE348 001AB2A8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801AE34C 001AB2AC  4B E6 D1 E9 */	bl Identity__10CAxisAngleFv
/* 801AE350 001AB2B0  7C 65 1B 78 */	mr r5, r3
/* 801AE354 001AB2B4  7F E3 FB 78 */	mr r3, r31
/* 801AE358 001AB2B8  38 81 00 0C */	addi r4, r1, 0xc
/* 801AE35C 001AB2BC  4B F6 E0 3D */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801AE360 001AB2C0  7F E3 FB 78 */	mr r3, r31
/* 801AE364 001AB2C4  7F C5 F3 78 */	mr r5, r30
/* 801AE368 001AB2C8  38 80 00 02 */	li r4, 2
/* 801AE36C 001AB2CC  48 0D 80 81 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
lbl_801AE370:
/* 801AE370 001AB2D0  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801AE374 001AB2D4  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801AE378 001AB2D8  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801AE37C 001AB2DC  7C 08 03 A6 */	mtlr r0
/* 801AE380 001AB2E0  38 21 01 00 */	addi r1, r1, 0x100
/* 801AE384 001AB2E4  4E 80 00 20 */	blr

.global sub_801ae388
sub_801ae388:
/* 801AE388 001AB2E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AE38C 001AB2EC  7C 08 02 A6 */	mflr r0
/* 801AE390 001AB2F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AE394 001AB2F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801AE398 001AB2F8  3B E0 00 00 */	li r31, 0
/* 801AE39C 001AB2FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801AE3A0 001AB300  7C DE 33 78 */	mr r30, r6
/* 801AE3A4 001AB304  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801AE3A8 001AB308  7C BD 2B 78 */	mr r29, r5
/* 801AE3AC 001AB30C  93 81 00 20 */	stw r28, 0x20(r1)
/* 801AE3B0 001AB310  7C 9C 23 78 */	mr r28, r4
/* 801AE3B4 001AB314  48 00 00 5C */	b lbl_801AE410
lbl_801AE3B8:
/* 801AE3B8 001AB318  80 7D 00 00 */	lwz r3, 0(r29)
/* 801AE3BC 001AB31C  7F E4 FB 78 */	mr r4, r31
/* 801AE3C0 001AB320  4B FF 8E 79 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801AE3C4 001AB324  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801AE3C8 001AB328  7F 83 E3 78 */	mr r3, r28
/* 801AE3CC 001AB32C  38 81 00 08 */	addi r4, r1, 8
/* 801AE3D0 001AB330  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AE3D4 001AB334  B0 01 00 08 */	sth r0, 8(r1)
/* 801AE3D8 001AB338  4B E9 E1 9D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AE3DC 001AB33C  7C 64 1B 78 */	mr r4, r3
/* 801AE3E0 001AB340  38 61 00 10 */	addi r3, r1, 0x10
/* 801AE3E4 001AB344  4B F0 0F 69 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AE3E8 001AB348  80 63 00 04 */	lwz r3, 4(r3)
/* 801AE3EC 001AB34C  28 03 00 00 */	cmplwi r3, 0
/* 801AE3F0 001AB350  41 82 00 1C */	beq lbl_801AE40C
/* 801AE3F4 001AB354  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801AE3F8 001AB358  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 801AE3FC 001AB35C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801AE400 001AB360  D0 03 03 08 */	stfs f0, 0x308(r3)
/* 801AE404 001AB364  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801AE408 001AB368  D0 03 03 0C */	stfs f0, 0x30c(r3)
lbl_801AE40C:
/* 801AE40C 001AB36C  3B FF 00 01 */	addi r31, r31, 1
lbl_801AE410:
/* 801AE410 001AB370  80 7D 00 00 */	lwz r3, 0(r29)
/* 801AE414 001AB374  4B FF 8E 35 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801AE418 001AB378  7C 1F 18 40 */	cmplw r31, r3
/* 801AE41C 001AB37C  41 80 FF 9C */	blt lbl_801AE3B8
/* 801AE420 001AB380  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AE424 001AB384  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801AE428 001AB388  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801AE42C 001AB38C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801AE430 001AB390  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801AE434 001AB394  7C 08 03 A6 */	mtlr r0
/* 801AE438 001AB398  38 21 00 30 */	addi r1, r1, 0x30
/* 801AE43C 001AB39C  4E 80 00 20 */	blr

.global sub_801ae440
sub_801ae440:
/* 801AE440 001AB3A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801AE444 001AB3A4  7C 08 02 A6 */	mflr r0
/* 801AE448 001AB3A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 801AE44C 001AB3AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801AE450 001AB3B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801AE454 001AB3B4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801AE458 001AB3B8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801AE45C 001AB3BC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801AE460 001AB3C0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801AE464 001AB3C4  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 801AE468 001AB3C8  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 801AE46C 001AB3CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801AE470 001AB3D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801AE474 001AB3D4  A0 03 08 0C */	lhz r0, 0x80c(r3)
/* 801AE478 001AB3D8  7C 7E 1B 78 */	mr r30, r3
/* 801AE47C 001AB3DC  FF E0 08 90 */	fmr f31, f1
/* 801AE480 001AB3E0  7C 83 23 78 */	mr r3, r4
/* 801AE484 001AB3E4  B0 01 00 08 */	sth r0, 8(r1)
/* 801AE488 001AB3E8  38 81 00 08 */	addi r4, r1, 8
/* 801AE48C 001AB3EC  4B E9 E1 19 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AE490 001AB3F0  7C 64 1B 78 */	mr r4, r3
/* 801AE494 001AB3F4  38 61 00 0C */	addi r3, r1, 0xc
/* 801AE498 001AB3F8  4B F0 0E B5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AE49C 001AB3FC  83 E3 00 04 */	lwz r31, 4(r3)
/* 801AE4A0 001AB400  28 1F 00 00 */	cmplwi r31, 0
/* 801AE4A4 001AB404  41 82 01 5C */	beq lbl_801AE600
/* 801AE4A8 001AB408  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801AE4AC 001AB40C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801AE4B0 001AB410  2C 00 00 0B */	cmpwi r0, 0xb
/* 801AE4B4 001AB414  41 82 01 4C */	beq lbl_801AE600
/* 801AE4B8 001AB418  2C 00 00 02 */	cmpwi r0, 2
/* 801AE4BC 001AB41C  41 82 01 44 */	beq lbl_801AE600
/* 801AE4C0 001AB420  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 801AE4C4 001AB424  2C 00 00 00 */	cmpwi r0, 0
/* 801AE4C8 001AB428  41 82 00 30 */	beq lbl_801AE4F8
/* 801AE4CC 001AB42C  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801AE4D0 001AB430  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801AE4D4 001AB434  40 82 00 24 */	bne lbl_801AE4F8
/* 801AE4D8 001AB438  7F C3 F3 78 */	mr r3, r30
/* 801AE4DC 001AB43C  48 00 01 5D */	bl sub_801ae638
/* 801AE4E0 001AB440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AE4E4 001AB444  40 82 00 14 */	bne lbl_801AE4F8
/* 801AE4E8 001AB448  7F C3 F3 78 */	mr r3, r30
/* 801AE4EC 001AB44C  48 00 01 65 */	bl sub_801ae650
/* 801AE4F0 001AB450  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AE4F4 001AB454  41 82 00 14 */	beq lbl_801AE508
lbl_801AE4F8:
/* 801AE4F8 001AB458  C3 DF 00 40 */	lfs f30, 0x40(r31)
/* 801AE4FC 001AB45C  C3 BF 00 50 */	lfs f29, 0x50(r31)
/* 801AE500 001AB460  C3 9F 00 60 */	lfs f28, 0x60(r31)
/* 801AE504 001AB464  48 00 00 50 */	b lbl_801AE554
lbl_801AE508:
/* 801AE508 001AB468  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801AE50C 001AB46C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801AE510 001AB470  C0 82 A8 BC */	lfs f4, lbl_805AC5DC@sda21(r2)
/* 801AE514 001AB474  C0 43 00 00 */	lfs f2, 0(r3)
/* 801AE518 001AB478  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801AE51C 001AB47C  EC E0 20 2A */	fadds f7, f0, f4
/* 801AE520 001AB480  C0 03 00 04 */	lfs f0, 4(r3)
/* 801AE524 001AB484  EC C4 00 B2 */	fmuls f6, f4, f2
/* 801AE528 001AB488  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801AE52C 001AB48C  EC A1 20 2A */	fadds f5, f1, f4
/* 801AE530 001AB490  C0 42 A8 D0 */	lfs f2, lbl_805AC5F0@sda21(r2)
/* 801AE534 001AB494  EC 84 00 32 */	fmuls f4, f4, f0
/* 801AE538 001AB498  C0 22 A8 D4 */	lfs f1, lbl_805AC5F4@sda21(r2)
/* 801AE53C 001AB49C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801AE540 001AB4A0  EC 43 10 2A */	fadds f2, f3, f2
/* 801AE544 001AB4A4  EF C7 30 2A */	fadds f30, f7, f6
/* 801AE548 001AB4A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE54C 001AB4AC  EF A5 20 2A */	fadds f29, f5, f4
/* 801AE550 001AB4B0  EF 82 00 2A */	fadds f28, f2, f0
lbl_801AE554:
/* 801AE554 001AB4B4  C0 5E 08 24 */	lfs f2, 0x824(r30)
/* 801AE558 001AB4B8  38 61 00 14 */	addi r3, r1, 0x14
/* 801AE55C 001AB4BC  C0 3E 08 28 */	lfs f1, 0x828(r30)
/* 801AE560 001AB4C0  C0 1E 08 20 */	lfs f0, 0x820(r30)
/* 801AE564 001AB4C4  EC 5D 10 28 */	fsubs f2, f29, f2
/* 801AE568 001AB4C8  EC 3C 08 28 */	fsubs f1, f28, f1
/* 801AE56C 001AB4CC  EC 1E 00 28 */	fsubs f0, f30, f0
/* 801AE570 001AB4D0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801AE574 001AB4D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801AE578 001AB4D8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801AE57C 001AB4DC  48 16 61 7D */	bl CanBeNormalized__9CVector3fCFv
/* 801AE580 001AB4E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AE584 001AB4E4  41 82 00 7C */	beq lbl_801AE600
/* 801AE588 001AB4E8  38 61 00 14 */	addi r3, r1, 0x14
/* 801AE58C 001AB4EC  48 16 63 2D */	bl Magnitude__9CVector3fCFv
/* 801AE590 001AB4F0  C0 02 A8 D8 */	lfs f0, lbl_805AC5F8@sda21(r2)
/* 801AE594 001AB4F4  EC C0 07 F2 */	fmuls f6, f0, f31
/* 801AE598 001AB4F8  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 801AE59C 001AB4FC  40 81 00 58 */	ble lbl_801AE5F4
/* 801AE5A0 001AB500  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801AE5A4 001AB504  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 801AE5A8 001AB508  EC A0 08 24 */	fdivs f5, f0, f1
/* 801AE5AC 001AB50C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801AE5B0 001AB510  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801AE5B4 001AB514  C0 3E 08 20 */	lfs f1, 0x820(r30)
/* 801AE5B8 001AB518  EC 85 00 F2 */	fmuls f4, f5, f3
/* 801AE5BC 001AB51C  EC 65 00 B2 */	fmuls f3, f5, f2
/* 801AE5C0 001AB520  EC 45 00 32 */	fmuls f2, f5, f0
/* 801AE5C4 001AB524  EC 06 01 32 */	fmuls f0, f6, f4
/* 801AE5C8 001AB528  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801AE5CC 001AB52C  EC 46 00 B2 */	fmuls f2, f6, f2
/* 801AE5D0 001AB530  EC 01 00 2A */	fadds f0, f1, f0
/* 801AE5D4 001AB534  D0 1E 08 20 */	stfs f0, 0x820(r30)
/* 801AE5D8 001AB538  C0 1E 08 24 */	lfs f0, 0x824(r30)
/* 801AE5DC 001AB53C  EC 00 18 2A */	fadds f0, f0, f3
/* 801AE5E0 001AB540  D0 1E 08 24 */	stfs f0, 0x824(r30)
/* 801AE5E4 001AB544  C0 1E 08 28 */	lfs f0, 0x828(r30)
/* 801AE5E8 001AB548  EC 00 10 2A */	fadds f0, f0, f2
/* 801AE5EC 001AB54C  D0 1E 08 28 */	stfs f0, 0x828(r30)
/* 801AE5F0 001AB550  48 00 00 10 */	b lbl_801AE600
lbl_801AE5F4:
/* 801AE5F4 001AB554  D3 DE 08 20 */	stfs f30, 0x820(r30)
/* 801AE5F8 001AB558  D3 BE 08 24 */	stfs f29, 0x824(r30)
/* 801AE5FC 001AB55C  D3 9E 08 28 */	stfs f28, 0x828(r30)
lbl_801AE600:
/* 801AE600 001AB560  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801AE604 001AB564  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801AE608 001AB568  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801AE60C 001AB56C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801AE610 001AB570  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801AE614 001AB574  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801AE618 001AB578  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 801AE61C 001AB57C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 801AE620 001AB580  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801AE624 001AB584  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801AE628 001AB588  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801AE62C 001AB58C  7C 08 03 A6 */	mtlr r0
/* 801AE630 001AB590  38 21 00 70 */	addi r1, r1, 0x70
/* 801AE634 001AB594  4E 80 00 20 */	blr

.global sub_801ae638
sub_801ae638:
/* 801AE638 001AB598  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801AE63C 001AB59C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801AE640 001AB5A0  20 00 00 12 */	subfic r0, r0, 0x12
/* 801AE644 001AB5A4  7C 00 00 34 */	cntlzw r0, r0
/* 801AE648 001AB5A8  54 03 D9 7E */	srwi r3, r0, 5
/* 801AE64C 001AB5AC  4E 80 00 20 */	blr

.global sub_801ae650
sub_801ae650:
/* 801AE650 001AB5B0  80 03 07 A8 */	lwz r0, 0x7a8(r3)
/* 801AE654 001AB5B4  38 60 00 00 */	li r3, 0
/* 801AE658 001AB5B8  2C 00 00 00 */	cmpwi r0, 0
/* 801AE65C 001AB5BC  41 82 00 0C */	beq lbl_801AE668
/* 801AE660 001AB5C0  2C 00 00 01 */	cmpwi r0, 1
/* 801AE664 001AB5C4  4C 82 00 20 */	bnelr
lbl_801AE668:
/* 801AE668 001AB5C8  38 60 00 01 */	li r3, 1
/* 801AE66C 001AB5CC  4E 80 00 20 */	blr

.global sub_801ae670
sub_801ae670:
/* 801AE670 001AB5D0  80 03 07 A8 */	lwz r0, 0x7a8(r3)
/* 801AE674 001AB5D4  38 60 00 00 */	li r3, 0
/* 801AE678 001AB5D8  2C 00 00 02 */	cmpwi r0, 2
/* 801AE67C 001AB5DC  41 82 00 14 */	beq lbl_801AE690
/* 801AE680 001AB5E0  2C 00 00 03 */	cmpwi r0, 3
/* 801AE684 001AB5E4  41 82 00 0C */	beq lbl_801AE690
/* 801AE688 001AB5E8  2C 00 00 04 */	cmpwi r0, 4
/* 801AE68C 001AB5EC  4C 82 00 20 */	bnelr
lbl_801AE690:
/* 801AE690 001AB5F0  38 60 00 01 */	li r3, 1
/* 801AE694 001AB5F4  4E 80 00 20 */	blr

.global sub_801ae698
sub_801ae698:
/* 801AE698 001AB5F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801AE69C 001AB5FC  7C 08 02 A6 */	mflr r0
/* 801AE6A0 001AB600  90 01 00 74 */	stw r0, 0x74(r1)
/* 801AE6A4 001AB604  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801AE6A8 001AB608  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801AE6AC 001AB60C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801AE6B0 001AB610  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801AE6B4 001AB614  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801AE6B8 001AB618  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801AE6BC 001AB61C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801AE6C0 001AB620  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801AE6C4 001AB624  7C 7F 1B 78 */	mr r31, r3
/* 801AE6C8 001AB628  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801AE6CC 001AB62C  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 801AE6D0 001AB630  2C 00 00 01 */	cmpwi r0, 1
/* 801AE6D4 001AB634  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 801AE6D8 001AB638  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 801AE6DC 001AB63C  41 82 00 28 */	beq lbl_801AE704
/* 801AE6E0 001AB640  7C 83 23 78 */	mr r3, r4
/* 801AE6E4 001AB644  48 0D 66 FD */	bl GetEyeHeight__7CPlayerCFv
/* 801AE6E8 001AB648  C0 42 A8 E0 */	lfs f2, lbl_805AC600@sda21(r2)
/* 801AE6EC 001AB64C  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AE6F0 001AB650  EC 22 08 2A */	fadds f1, f2, f1
/* 801AE6F4 001AB654  EF FF 00 2A */	fadds f31, f31, f0
/* 801AE6F8 001AB658  EF DE 00 2A */	fadds f30, f30, f0
/* 801AE6FC 001AB65C  EF BD 08 2A */	fadds f29, f29, f1
/* 801AE700 001AB660  48 00 00 1C */	b lbl_801AE71C
lbl_801AE704:
/* 801AE704 001AB664  80 84 07 68 */	lwz r4, 0x768(r4)
/* 801AE708 001AB668  38 61 00 08 */	addi r3, r1, 8
/* 801AE70C 001AB66C  4B F4 7F E9 */	bl GetBallToWorld__10CMorphBallCFv
/* 801AE710 001AB670  C3 E1 00 14 */	lfs f31, 0x14(r1)
/* 801AE714 001AB674  C3 C1 00 24 */	lfs f30, 0x24(r1)
/* 801AE718 001AB678  C3 A1 00 34 */	lfs f29, 0x34(r1)
lbl_801AE71C:
/* 801AE71C 001AB67C  D3 FF 00 00 */	stfs f31, 0(r31)
/* 801AE720 001AB680  D3 DF 00 04 */	stfs f30, 4(r31)
/* 801AE724 001AB684  D3 BF 00 08 */	stfs f29, 8(r31)
/* 801AE728 001AB688  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801AE72C 001AB68C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801AE730 001AB690  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801AE734 001AB694  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801AE738 001AB698  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801AE73C 001AB69C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801AE740 001AB6A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801AE744 001AB6A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801AE748 001AB6A8  7C 08 03 A6 */	mtlr r0
/* 801AE74C 001AB6AC  38 21 00 70 */	addi r1, r1, 0x70
/* 801AE750 001AB6B0  4E 80 00 20 */	blr

.global sub_801ae754
sub_801ae754:
/* 801AE754 001AB6B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801AE758 001AB6B8  7C 08 02 A6 */	mflr r0
/* 801AE75C 001AB6BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801AE760 001AB6C0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801AE764 001AB6C4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801AE768 001AB6C8  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801AE76C 001AB6CC  7C BD 2B 78 */	mr r29, r5
/* 801AE770 001AB6D0  7C 9C 23 78 */	mr r28, r4
/* 801AE774 001AB6D4  83 C5 08 4C */	lwz r30, 0x84c(r5)
/* 801AE778 001AB6D8  7C 7B 1B 78 */	mr r27, r3
/* 801AE77C 001AB6DC  7F 83 E3 78 */	mr r3, r28
/* 801AE780 001AB6E0  3B E0 00 00 */	li r31, 0
/* 801AE784 001AB6E4  4B FF FE CD */	bl sub_801ae650
/* 801AE788 001AB6E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AE78C 001AB6EC  41 82 00 14 */	beq lbl_801AE7A0
/* 801AE790 001AB6F0  80 1E 02 F8 */	lwz r0, 0x2f8(r30)
/* 801AE794 001AB6F4  2C 00 00 01 */	cmpwi r0, 1
/* 801AE798 001AB6F8  41 82 00 08 */	beq lbl_801AE7A0
/* 801AE79C 001AB6FC  3B E0 00 01 */	li r31, 1
lbl_801AE7A0:
/* 801AE7A0 001AB700  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801AE7A4 001AB704  41 82 00 0C */	beq lbl_801AE7B0
/* 801AE7A8 001AB708  C3 E2 A8 C8 */	lfs f31, lbl_805AC5E8@sda21(r2)
/* 801AE7AC 001AB70C  48 00 00 08 */	b lbl_801AE7B4
lbl_801AE7B0:
/* 801AE7B0 001AB710  C3 E2 A8 E4 */	lfs f31, lbl_805AC604@sda21(r2)
lbl_801AE7B4:
/* 801AE7B4 001AB714  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801AE7B8 001AB718  4B F8 C1 01 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 801AE7BC 001AB71C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801AE7C0 001AB720  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801AE7C4 001AB724  7F C4 F3 78 */	mr r4, r30
/* 801AE7C8 001AB728  7F A5 EB 78 */	mr r5, r29
/* 801AE7CC 001AB72C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801AE7D0 001AB730  38 61 00 08 */	addi r3, r1, 8
/* 801AE7D4 001AB734  7D 89 03 A6 */	mtctr r12
/* 801AE7D8 001AB738  4E 80 04 21 */	bctrl
/* 801AE7DC 001AB73C  C0 21 00 08 */	lfs f1, 8(r1)
/* 801AE7E0 001AB740  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801AE7E4 001AB744  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 801AE7E8 001AB748  C0 7C 00 50 */	lfs f3, 0x50(r28)
/* 801AE7EC 001AB74C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801AE7F0 001AB750  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801AE7F4 001AB754  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 801AE7F8 001AB758  EC 64 18 28 */	fsubs f3, f4, f3
/* 801AE7FC 001AB75C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 801AE800 001AB760  EC 02 08 28 */	fsubs f0, f2, f1
/* 801AE804 001AB764  D0 7B 00 04 */	stfs f3, 4(r27)
/* 801AE808 001AB768  D0 1B 00 08 */	stfs f0, 8(r27)
/* 801AE80C 001AB76C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801AE810 001AB770  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801AE814 001AB774  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801AE818 001AB778  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801AE81C 001AB77C  7C 08 03 A6 */	mtlr r0
/* 801AE820 001AB780  38 21 00 40 */	addi r1, r1, 0x40
/* 801AE824 001AB784  4E 80 00 20 */	blr

.global sub_801ae828
sub_801ae828:
/* 801AE828 001AB788  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801AE82C 001AB78C  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801AE830 001AB790  2C 00 00 01 */	cmpwi r0, 1
/* 801AE834 001AB794  41 82 00 48 */	beq lbl_801AE87C
/* 801AE838 001AB798  C0 23 07 CC */	lfs f1, 0x7cc(r3)
/* 801AE83C 001AB79C  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AE840 001AB7A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE844 001AB7A4  4C 40 13 82 */	cror 2, 0, 2
/* 801AE848 001AB7A8  40 82 00 74 */	bne lbl_801AE8BC
/* 801AE84C 001AB7AC  C0 24 01 38 */	lfs f1, 0x138(r4)
/* 801AE850 001AB7B0  C0 04 01 3C */	lfs f0, 0x13c(r4)
/* 801AE854 001AB7B4  EC 41 00 72 */	fmuls f2, f1, f1
/* 801AE858 001AB7B8  C0 64 01 40 */	lfs f3, 0x140(r4)
/* 801AE85C 001AB7BC  EC 20 00 32 */	fmuls f1, f0, f0
/* 801AE860 001AB7C0  C0 02 A8 CC */	lfs f0, lbl_805AC5EC@sda21(r2)
/* 801AE864 001AB7C4  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801AE868 001AB7C8  EC 22 08 2A */	fadds f1, f2, f1
/* 801AE86C 001AB7CC  EC 23 08 2A */	fadds f1, f3, f1
/* 801AE870 001AB7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE874 001AB7D4  4C 41 13 82 */	cror 2, 1, 2
/* 801AE878 001AB7D8  40 82 00 44 */	bne lbl_801AE8BC
lbl_801AE87C:
/* 801AE87C 001AB7DC  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 801AE880 001AB7E0  C0 04 01 3C */	lfs f0, 0x13c(r4)
/* 801AE884 001AB7E4  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 801AE888 001AB7E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AE88C 001AB7EC  C0 24 01 38 */	lfs f1, 0x138(r4)
/* 801AE890 001AB7F0  C0 83 00 54 */	lfs f4, 0x54(r3)
/* 801AE894 001AB7F4  C0 64 01 40 */	lfs f3, 0x140(r4)
/* 801AE898 001AB7F8  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 801AE89C 001AB7FC  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AE8A0 001AB800  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 801AE8A4 001AB804  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AE8A8 001AB808  40 81 00 0C */	ble lbl_801AE8B4
/* 801AE8AC 001AB80C  38 60 00 01 */	li r3, 1
/* 801AE8B0 001AB810  4E 80 00 20 */	blr
lbl_801AE8B4:
/* 801AE8B4 001AB814  38 60 00 00 */	li r3, 0
/* 801AE8B8 001AB818  4E 80 00 20 */	blr
lbl_801AE8BC:
/* 801AE8BC 001AB81C  38 60 00 03 */	li r3, 3
/* 801AE8C0 001AB820  4E 80 00 20 */	blr

.global sub_801ae8c4
sub_801ae8c4:
/* 801AE8C4 001AB824  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AE8C8 001AB828  7C 08 02 A6 */	mflr r0
/* 801AE8CC 001AB82C  7C 64 1B 78 */	mr r4, r3
/* 801AE8D0 001AB830  38 A0 00 12 */	li r5, 0x12
/* 801AE8D4 001AB834  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AE8D8 001AB838  38 61 00 18 */	addi r3, r1, 0x18
/* 801AE8DC 001AB83C  38 C1 00 10 */	addi r6, r1, 0x10
/* 801AE8E0 001AB840  C0 0D 90 84 */	lfs f0, lbl_805A7C44@sda21(r13)
/* 801AE8E4 001AB844  80 0D 90 80 */	lwz r0, lbl_805A7C40@sda21(r13)
/* 801AE8E8 001AB848  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AE8EC 001AB84C  80 84 00 64 */	lwz r4, 0x64(r4)
/* 801AE8F0 001AB850  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AE8F4 001AB854  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801AE8F8 001AB858  4B E7 C6 E1 */	bl GetTimeOfUserEvent__9CAnimDataCF14EUserEventTypeRC13CCharAnimTime
/* 801AE8FC 001AB85C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801AE900 001AB860  38 61 00 20 */	addi r3, r1, 0x20
/* 801AE904 001AB864  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801AE908 001AB868  38 81 00 08 */	addi r4, r1, 8
/* 801AE90C 001AB86C  C0 0D 90 84 */	lfs f0, lbl_805A7C44@sda21(r13)
/* 801AE910 001AB870  80 0D 90 80 */	lwz r0, lbl_805A7C40@sda21(r13)
/* 801AE914 001AB874  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801AE918 001AB878  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801AE91C 001AB87C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801AE920 001AB880  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AE924 001AB884  48 19 A1 DD */	bl __eq__13CCharAnimTimeCFRC13CCharAnimTime
/* 801AE928 001AB888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AE92C 001AB88C  41 82 00 0C */	beq lbl_801AE938
/* 801AE930 001AB890  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801AE934 001AB894  48 00 00 08 */	b lbl_801AE93C
lbl_801AE938:
/* 801AE938 001AB898  C0 21 00 20 */	lfs f1, 0x20(r1)
lbl_801AE93C:
/* 801AE93C 001AB89C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AE940 001AB8A0  7C 08 03 A6 */	mtlr r0
/* 801AE944 001AB8A4  38 21 00 30 */	addi r1, r1, 0x30
/* 801AE948 001AB8A8  4E 80 00 20 */	blr

.global sub_801ae94c
sub_801ae94c:
/* 801AE94C 001AB8AC  EC 03 10 28 */	fsubs f0, f3, f2
/* 801AE950 001AB8B0  C0 62 A8 DC */	lfs f3, lbl_805AC5FC@sda21(r2)
/* 801AE954 001AB8B4  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801AE958 001AB8B8  FC 80 18 90 */	fmr f4, f3
/* 801AE95C 001AB8BC  EC 21 10 3A */	fmadds f1, f1, f0, f2
/* 801AE960 001AB8C0  FC 00 18 90 */	fmr f0, f3
/* 801AE964 001AB8C4  EC 63 00 72 */	fmuls f3, f3, f1
/* 801AE968 001AB8C8  EC 84 00 72 */	fmuls f4, f4, f1
/* 801AE96C 001AB8CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801AE970 001AB8D0  D0 63 00 00 */	stfs f3, 0(r3)
/* 801AE974 001AB8D4  D0 83 00 04 */	stfs f4, 4(r3)
/* 801AE978 001AB8D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801AE97C 001AB8DC  4E 80 00 20 */	blr

.global sub_801ae980
sub_801ae980:
/* 801AE980 001AB8E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AE984 001AB8E4  7C 08 02 A6 */	mflr r0
/* 801AE988 001AB8E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AE98C 001AB8EC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801AE990 001AB8F0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801AE994 001AB8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AE998 001AB8F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801AE99C 001AB8FC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801AE9A0 001AB900  38 A0 00 00 */	li r5, 0
/* 801AE9A4 001AB904  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801AE9A8 001AB908  81 83 00 00 */	lwz r12, 0(r3)
/* 801AE9AC 001AB90C  98 01 00 0C */	stb r0, 0xc(r1)
/* 801AE9B0 001AB910  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801AE9B4 001AB914  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801AE9B8 001AB918  38 C0 00 04 */	li r6, 4
/* 801AE9BC 001AB91C  98 01 00 0C */	stb r0, 0xc(r1)
/* 801AE9C0 001AB920  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801AE9C4 001AB924  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 801AE9C8 001AB928  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AE9CC 001AB92C  7C 7E 1B 78 */	mr r30, r3
/* 801AE9D0 001AB930  7C 9F 23 78 */	mr r31, r4
/* 801AE9D4 001AB934  90 C1 00 08 */	stw r6, 8(r1)
/* 801AE9D8 001AB938  98 01 00 0C */	stb r0, 0xc(r1)
/* 801AE9DC 001AB93C  7D 89 03 A6 */	mtctr r12
/* 801AE9E0 001AB940  4E 80 04 21 */	bctrl
/* 801AE9E4 001AB944  C0 23 00 00 */	lfs f1, 0(r3)
/* 801AE9E8 001AB948  7F C3 F3 78 */	mr r3, r30
/* 801AE9EC 001AB94C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801AE9F0 001AB950  7F E4 FB 78 */	mr r4, r31
/* 801AE9F4 001AB954  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 801AE9F8 001AB958  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AE9FC 001AB95C  EF E1 00 28 */	fsubs f31, f1, f0
/* 801AEA00 001AB960  7D 89 03 A6 */	mtctr r12
/* 801AEA04 001AB964  4E 80 04 21 */	bctrl
/* 801AEA08 001AB968  D3 E3 00 00 */	stfs f31, 0(r3)
/* 801AEA0C 001AB96C  38 60 00 01 */	li r3, 1
/* 801AEA10 001AB970  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEA14 001AB974  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 801AEA18 001AB978  D0 3E 07 D4 */	stfs f1, 0x7d4(r30)
/* 801AEA1C 001AB97C  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801AEA20 001AB980  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801AEA24 001AB984  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801AEA28 001AB988  D0 1E 07 D8 */	stfs f0, 0x7d8(r30)
/* 801AEA2C 001AB98C  80 0D A4 9C */	lwz r0, lbl_805A905C@sda21(r13)
/* 801AEA30 001AB990  90 1E 04 30 */	stw r0, 0x430(r30)
/* 801AEA34 001AB994  80 7E 07 88 */	lwz r3, 0x788(r30)
/* 801AEA38 001AB998  38 03 00 01 */	addi r0, r3, 1
/* 801AEA3C 001AB99C  90 1E 07 88 */	stw r0, 0x788(r30)
/* 801AEA40 001AB9A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801AEA44 001AB9A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AEA48 001AB9A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801AEA4C 001AB9AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AEA50 001AB9B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801AEA54 001AB9B4  7C 08 03 A6 */	mtlr r0
/* 801AEA58 001AB9B8  38 21 00 30 */	addi r1, r1, 0x30
/* 801AEA5C 001AB9BC  4E 80 00 20 */	blr

.global sub_801aea60
sub_801aea60:
/* 801AEA60 001AB9C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801AEA64 001AB9C4  7C 08 02 A6 */	mflr r0
/* 801AEA68 001AB9C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801AEA6C 001AB9CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801AEA70 001AB9D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801AEA74 001AB9D4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801AEA78 001AB9D8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801AEA7C 001AB9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AEA80 001AB9E0  7C 7F 1B 78 */	mr r31, r3
/* 801AEA84 001AB9E4  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEA88 001AB9E8  C0 43 07 C0 */	lfs f2, 0x7c0(r3)
/* 801AEA8C 001AB9EC  FF E0 08 90 */	fmr f31, f1
/* 801AEA90 001AB9F0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801AEA94 001AB9F4  40 81 00 28 */	ble lbl_801AEABC
/* 801AEA98 001AB9F8  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 801AEA9C 001AB9FC  2C 00 00 02 */	cmpwi r0, 2
/* 801AEAA0 001ABA00  40 80 00 08 */	bge lbl_801AEAA8
/* 801AEAA4 001ABA04  48 00 00 0C */	b lbl_801AEAB0
lbl_801AEAA8:
/* 801AEAA8 001ABA08  C0 02 A8 E8 */	lfs f0, lbl_805AC608@sda21(r2)
/* 801AEAAC 001ABA0C  EC 20 07 F2 */	fmuls f1, f0, f31
lbl_801AEAB0:
/* 801AEAB0 001ABA10  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 801AEAB4 001ABA14  EC 00 08 28 */	fsubs f0, f0, f1
/* 801AEAB8 001ABA18  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
lbl_801AEABC:
/* 801AEABC 001ABA1C  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 801AEAC0 001ABA20  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEAC4 001ABA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AEAC8 001ABA28  40 81 00 0C */	ble lbl_801AEAD4
/* 801AEACC 001ABA2C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801AEAD0 001ABA30  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
lbl_801AEAD4:
/* 801AEAD4 001ABA34  C0 3F 07 D0 */	lfs f1, 0x7d0(r31)
/* 801AEAD8 001ABA38  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEADC 001ABA3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AEAE0 001ABA40  40 81 00 0C */	ble lbl_801AEAEC
/* 801AEAE4 001ABA44  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801AEAE8 001ABA48  D0 1F 07 D0 */	stfs f0, 0x7d0(r31)
lbl_801AEAEC:
/* 801AEAEC 001ABA4C  C0 3F 07 CC */	lfs f1, 0x7cc(r31)
/* 801AEAF0 001ABA50  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEAF4 001ABA54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AEAF8 001ABA58  40 81 00 0C */	ble lbl_801AEB04
/* 801AEAFC 001ABA5C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 801AEB00 001ABA60  D0 1F 07 CC */	stfs f0, 0x7cc(r31)
lbl_801AEB04:
/* 801AEB04 001ABA64  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801AEB08 001ABA68  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801AEB0C 001ABA6C  41 82 00 88 */	beq lbl_801AEB94
/* 801AEB10 001ABA70  C0 3F 07 D8 */	lfs f1, 0x7d8(r31)
/* 801AEB14 001ABA74  C0 02 A8 EC */	lfs f0, lbl_805AC60C@sda21(r2)
/* 801AEB18 001ABA78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AEB1C 001ABA7C  4C 40 13 82 */	cror 2, 0, 2
/* 801AEB20 001ABA80  40 82 00 74 */	bne lbl_801AEB94
/* 801AEB24 001ABA84  48 16 62 21 */	bl FastCosR__5CMathFf
/* 801AEB28 001ABA88  C0 02 A8 B0 */	lfs f0, lbl_805AC5D0@sda21(r2)
/* 801AEB2C 001ABA8C  38 61 00 08 */	addi r3, r1, 8
/* 801AEB30 001ABA90  C0 82 A8 DC */	lfs f4, lbl_805AC5FC@sda21(r2)
/* 801AEB34 001ABA94  EC 00 00 72 */	fmuls f0, f0, f1
/* 801AEB38 001ABA98  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801AEB3C 001ABA9C  FC 40 08 90 */	fmr f2, f1
/* 801AEB40 001ABAA0  FC 60 08 90 */	fmr f3, f1
/* 801AEB44 001ABAA4  FF C0 02 10 */	fabs f30, f0
/* 801AEB48 001ABAA8  48 1B 48 A5 */	bl __ct__6CColorFffff
/* 801AEB4C 001ABAAC  FC 20 F0 18 */	frsp f1, f30
/* 801AEB50 001ABAB0  7C 64 1B 78 */	mr r4, r3
/* 801AEB54 001ABAB4  38 61 00 0C */	addi r3, r1, 0xc
/* 801AEB58 001ABAB8  38 AD A4 9C */	addi r5, r13, lbl_805A905C@sda21
/* 801AEB5C 001ABABC  48 1B 47 51 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 801AEB60 001ABAC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801AEB64 001ABAC4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801AEB68 001ABAC8  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 801AEB6C 001ABACC  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801AEB70 001ABAD0  90 1F 04 30 */	stw r0, 0x430(r31)
/* 801AEB74 001ABAD4  7F E3 FB 78 */	mr r3, r31
/* 801AEB78 001ABAD8  81 9F 00 00 */	lwz r12, 0(r31)
/* 801AEB7C 001ABADC  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801AEB80 001ABAE0  7D 89 03 A6 */	mtctr r12
/* 801AEB84 001ABAE4  4E 80 04 21 */	bctrl
/* 801AEB88 001ABAE8  C0 1F 07 D8 */	lfs f0, 0x7d8(r31)
/* 801AEB8C 001ABAEC  EC 00 F8 2A */	fadds f0, f0, f31
/* 801AEB90 001ABAF0  D0 1F 07 D8 */	stfs f0, 0x7d8(r31)
lbl_801AEB94:
/* 801AEB94 001ABAF4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801AEB98 001ABAF8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801AEB9C 001ABAFC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 801AEBA0 001ABB00  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801AEBA4 001ABB04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801AEBA8 001ABB08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AEBAC 001ABB0C  7C 08 03 A6 */	mtlr r0
/* 801AEBB0 001ABB10  38 21 00 40 */	addi r1, r1, 0x40
/* 801AEBB4 001ABB14  4E 80 00 20 */	blr

.global sub_801aebb8
sub_801aebb8:
/* 801AEBB8 001ABB18  80 03 07 FC */	lwz r0, 0x7fc(r3)
/* 801AEBBC 001ABB1C  38 63 08 00 */	addi r3, r3, 0x800
/* 801AEBC0 001ABB20  7C 66 1B 78 */	mr r6, r3
/* 801AEBC4 001ABB24  54 00 08 3C */	slwi r0, r0, 1
/* 801AEBC8 001ABB28  7C A3 02 14 */	add r5, r3, r0
/* 801AEBCC 001ABB2C  48 00 00 20 */	b lbl_801AEBEC
lbl_801AEBD0:
/* 801AEBD0 001ABB30  A0 66 00 00 */	lhz r3, 0(r6)
/* 801AEBD4 001ABB34  A0 04 00 00 */	lhz r0, 0(r4)
/* 801AEBD8 001ABB38  7C 03 00 40 */	cmplw r3, r0
/* 801AEBDC 001ABB3C  40 82 00 0C */	bne lbl_801AEBE8
/* 801AEBE0 001ABB40  38 60 00 01 */	li r3, 1
/* 801AEBE4 001ABB44  4E 80 00 20 */	blr
lbl_801AEBE8:
/* 801AEBE8 001ABB48  38 C6 00 02 */	addi r6, r6, 2
lbl_801AEBEC:
/* 801AEBEC 001ABB4C  7C 06 28 40 */	cmplw r6, r5
/* 801AEBF0 001ABB50  40 82 FF E0 */	bne lbl_801AEBD0
/* 801AEBF4 001ABB54  38 60 00 00 */	li r3, 0
/* 801AEBF8 001ABB58  4E 80 00 20 */	blr

.global sub_801aebfc
sub_801aebfc:
/* 801AEBFC 001ABB5C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AEC00 001ABB60  7C 08 02 A6 */	mflr r0
/* 801AEC04 001ABB64  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AEC08 001ABB68  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801AEC0C 001ABB6C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801AEC10 001ABB70  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801AEC14 001ABB74  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801AEC18 001ABB78  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801AEC1C 001ABB7C  93 81 00 30 */	stw r28, 0x30(r1)
/* 801AEC20 001ABB80  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AEC24 001ABB84  7C 7E 1B 78 */	mr r30, r3
/* 801AEC28 001ABB88  3B BE 08 00 */	addi r29, r30, 0x800
/* 801AEC2C 001ABB8C  7C 9F 23 78 */	mr r31, r4
/* 801AEC30 001ABB90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801AEC34 001ABB94  7F BC EB 78 */	mr r28, r29
/* 801AEC38 001ABB98  48 00 00 6C */	b lbl_801AECA4
lbl_801AEC3C:
/* 801AEC3C 001ABB9C  A0 1C 00 00 */	lhz r0, 0(r28)
/* 801AEC40 001ABBA0  7F E3 FB 78 */	mr r3, r31
/* 801AEC44 001ABBA4  38 81 00 0C */	addi r4, r1, 0xc
/* 801AEC48 001ABBA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AEC4C 001ABBAC  4B E9 D9 29 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AEC50 001ABBB0  7C 64 1B 78 */	mr r4, r3
/* 801AEC54 001ABBB4  38 61 00 20 */	addi r3, r1, 0x20
/* 801AEC58 001ABBB8  4B F0 06 F5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AEC5C 001ABBBC  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEC60 001ABBC0  28 03 00 00 */	cmplwi r3, 0
/* 801AEC64 001ABBC4  41 82 00 3C */	beq lbl_801AECA0
/* 801AEC68 001ABBC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEC6C 001ABBCC  7F E4 FB 78 */	mr r4, r31
/* 801AEC70 001ABBD0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AEC74 001ABBD4  7D 89 03 A6 */	mtctr r12
/* 801AEC78 001ABBD8  4E 80 04 21 */	bctrl
/* 801AEC7C 001ABBDC  C0 03 00 00 */	lfs f0, 0(r3)
/* 801AEC80 001ABBE0  38 61 00 14 */	addi r3, r1, 0x14
/* 801AEC84 001ABBE4  C0 3E 08 18 */	lfs f1, 0x818(r30)
/* 801AEC88 001ABBE8  38 81 00 10 */	addi r4, r1, 0x10
/* 801AEC8C 001ABBEC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801AEC90 001ABBF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801AEC94 001ABBF4  4B EA 0A 9D */	bl "Max<f>__5CMathFRCfRCf"
/* 801AEC98 001ABBF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801AEC9C 001ABBFC  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_801AECA0:
/* 801AECA0 001ABC00  3B 9C 00 02 */	addi r28, r28, 2
lbl_801AECA4:
/* 801AECA4 001ABC04  80 1E 07 FC */	lwz r0, 0x7fc(r30)
/* 801AECA8 001ABC08  54 00 08 3C */	slwi r0, r0, 1
/* 801AECAC 001ABC0C  7C 1D 02 14 */	add r0, r29, r0
/* 801AECB0 001ABC10  7C 1C 00 40 */	cmplw r28, r0
/* 801AECB4 001ABC14  40 82 FF 88 */	bne lbl_801AEC3C
/* 801AECB8 001ABC18  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 801AECBC 001ABC1C  2C 00 00 03 */	cmpwi r0, 3
/* 801AECC0 001ABC20  40 82 00 50 */	bne lbl_801AED10
/* 801AECC4 001ABC24  7F C3 F3 78 */	mr r3, r30
/* 801AECC8 001ABC28  7F E4 FB 78 */	mr r4, r31
/* 801AECCC 001ABC2C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801AECD0 001ABC30  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801AECD4 001ABC34  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 801AECD8 001ABC38  7D 89 03 A6 */	mtctr r12
/* 801AECDC 001ABC3C  4E 80 04 21 */	bctrl
/* 801AECE0 001ABC40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AECE4 001ABC44  41 82 00 18 */	beq lbl_801AECFC
/* 801AECE8 001ABC48  C0 3E 08 14 */	lfs f1, 0x814(r30)
/* 801AECEC 001ABC4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801AECF0 001ABC50  EC 01 00 2A */	fadds f0, f1, f0
/* 801AECF4 001ABC54  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 801AECF8 001ABC58  48 00 00 24 */	b lbl_801AED1C
lbl_801AECFC:
/* 801AECFC 001ABC5C  C0 3E 08 10 */	lfs f1, 0x810(r30)
/* 801AED00 001ABC60  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801AED04 001ABC64  EC 01 00 2A */	fadds f0, f1, f0
/* 801AED08 001ABC68  D0 1E 08 10 */	stfs f0, 0x810(r30)
/* 801AED0C 001ABC6C  48 00 00 10 */	b lbl_801AED1C
lbl_801AED10:
/* 801AED10 001ABC70  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AED14 001ABC74  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 801AED18 001ABC78  D0 1E 08 10 */	stfs f0, 0x810(r30)
lbl_801AED1C:
/* 801AED1C 001ABC7C  7F C3 F3 78 */	mr r3, r30
/* 801AED20 001ABC80  7F E4 FB 78 */	mr r4, r31
/* 801AED24 001ABC84  81 9E 00 00 */	lwz r12, 0(r30)
/* 801AED28 001ABC88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AED2C 001ABC8C  7D 89 03 A6 */	mtctr r12
/* 801AED30 001ABC90  4E 80 04 21 */	bctrl
/* 801AED34 001ABC94  C0 23 00 00 */	lfs f1, 0(r3)
/* 801AED38 001ABC98  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801AED3C 001ABC9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AED40 001ABCA0  4C 40 13 82 */	cror 2, 0, 2
/* 801AED44 001ABCA4  40 82 00 3C */	bne lbl_801AED80
/* 801AED48 001ABCA8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801AED4C 001ABCAC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801AED50 001ABCB0  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 801AED54 001ABCB4  7F C3 F3 78 */	mr r3, r30
/* 801AED58 001ABCB8  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 801AED5C 001ABCBC  7F E4 FB 78 */	mr r4, r31
/* 801AED60 001ABCC0  38 C0 00 14 */	li r6, 0x14
/* 801AED64 001ABCC4  7D 89 03 A6 */	mtctr r12
/* 801AED68 001ABCC8  4E 80 04 21 */	bctrl
/* 801AED6C 001ABCCC  7F C3 F3 78 */	mr r3, r30
/* 801AED70 001ABCD0  7F E5 FB 78 */	mr r5, r31
/* 801AED74 001ABCD4  38 80 00 29 */	li r4, 0x29
/* 801AED78 001ABCD8  4B EA 52 09 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801AED7C 001ABCDC  48 00 00 6C */	b lbl_801AEDE8
lbl_801AED80:
/* 801AED80 001ABCE0  7F BC EB 78 */	mr r28, r29
/* 801AED84 001ABCE4  48 00 00 50 */	b lbl_801AEDD4
lbl_801AED88:
/* 801AED88 001ABCE8  A0 1C 00 00 */	lhz r0, 0(r28)
/* 801AED8C 001ABCEC  7F E3 FB 78 */	mr r3, r31
/* 801AED90 001ABCF0  38 81 00 08 */	addi r4, r1, 8
/* 801AED94 001ABCF4  B0 01 00 08 */	sth r0, 8(r1)
/* 801AED98 001ABCF8  4B E9 D7 DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AED9C 001ABCFC  7C 64 1B 78 */	mr r4, r3
/* 801AEDA0 001ABD00  38 61 00 18 */	addi r3, r1, 0x18
/* 801AEDA4 001ABD04  4B F0 05 A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AEDA8 001ABD08  80 63 00 04 */	lwz r3, 4(r3)
/* 801AEDAC 001ABD0C  28 03 00 00 */	cmplwi r3, 0
/* 801AEDB0 001ABD10  41 82 00 20 */	beq lbl_801AEDD0
/* 801AEDB4 001ABD14  81 83 00 00 */	lwz r12, 0(r3)
/* 801AEDB8 001ABD18  7F E4 FB 78 */	mr r4, r31
/* 801AEDBC 001ABD1C  C3 FE 08 18 */	lfs f31, 0x818(r30)
/* 801AEDC0 001ABD20  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AEDC4 001ABD24  7D 89 03 A6 */	mtctr r12
/* 801AEDC8 001ABD28  4E 80 04 21 */	bctrl
/* 801AEDCC 001ABD2C  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_801AEDD0:
/* 801AEDD0 001ABD30  3B 9C 00 02 */	addi r28, r28, 2
lbl_801AEDD4:
/* 801AEDD4 001ABD34  80 1E 07 FC */	lwz r0, 0x7fc(r30)
/* 801AEDD8 001ABD38  54 00 08 3C */	slwi r0, r0, 1
/* 801AEDDC 001ABD3C  7C 1D 02 14 */	add r0, r29, r0
/* 801AEDE0 001ABD40  7C 1C 00 40 */	cmplw r28, r0
/* 801AEDE4 001ABD44  40 82 FF A4 */	bne lbl_801AED88
lbl_801AEDE8:
/* 801AEDE8 001ABD48  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801AEDEC 001ABD4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AEDF0 001ABD50  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801AEDF4 001ABD54  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801AEDF8 001ABD58  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801AEDFC 001ABD5C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801AEE00 001ABD60  83 81 00 30 */	lwz r28, 0x30(r1)
/* 801AEE04 001ABD64  7C 08 03 A6 */	mtlr r0
/* 801AEE08 001ABD68  38 21 00 50 */	addi r1, r1, 0x50
/* 801AEE0C 001ABD6C  4E 80 00 20 */	blr

.global sub_801aee10
sub_801aee10:
/* 801AEE10 001ABD70  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AEE14 001ABD74  7C 08 02 A6 */	mflr r0
/* 801AEE18 001ABD78  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AEE1C 001ABD7C  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801AEE20 001ABD80  7C 7C 1B 78 */	mr r28, r3
/* 801AEE24 001ABD84  7C 9D 23 78 */	mr r29, r4
/* 801AEE28 001ABD88  3B FC 08 00 */	addi r31, r28, 0x800
/* 801AEE2C 001ABD8C  80 A3 07 FC */	lwz r5, 0x7fc(r3)
/* 801AEE30 001ABD90  38 60 00 00 */	li r3, 0
/* 801AEE34 001ABD94  2C 05 00 00 */	cmpwi r5, 0
/* 801AEE38 001ABD98  40 81 00 40 */	ble lbl_801AEE78
/* 801AEE3C 001ABD9C  2C 05 00 08 */	cmpwi r5, 8
/* 801AEE40 001ABDA0  38 85 FF F8 */	addi r4, r5, -8
/* 801AEE44 001ABDA4  40 81 00 20 */	ble lbl_801AEE64
/* 801AEE48 001ABDA8  38 04 00 07 */	addi r0, r4, 7
/* 801AEE4C 001ABDAC  54 00 E8 FE */	srwi r0, r0, 3
/* 801AEE50 001ABDB0  7C 09 03 A6 */	mtctr r0
/* 801AEE54 001ABDB4  2C 04 00 00 */	cmpwi r4, 0
/* 801AEE58 001ABDB8  40 81 00 0C */	ble lbl_801AEE64
lbl_801AEE5C:
/* 801AEE5C 001ABDBC  38 63 00 08 */	addi r3, r3, 8
/* 801AEE60 001ABDC0  42 00 FF FC */	bdnz lbl_801AEE5C
lbl_801AEE64:
/* 801AEE64 001ABDC4  7C 03 28 50 */	subf r0, r3, r5
/* 801AEE68 001ABDC8  7C 09 03 A6 */	mtctr r0
/* 801AEE6C 001ABDCC  7C 03 28 00 */	cmpw r3, r5
/* 801AEE70 001ABDD0  40 80 00 08 */	bge lbl_801AEE78
lbl_801AEE74:
/* 801AEE74 001ABDD4  42 00 00 00 */	bdnz lbl_801AEE74
lbl_801AEE78:
/* 801AEE78 001ABDD8  38 00 00 00 */	li r0, 0
/* 801AEE7C 001ABDDC  3B C0 00 00 */	li r30, 0
/* 801AEE80 001ABDE0  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 801AEE84 001ABDE4  48 00 00 EC */	b lbl_801AEF70
lbl_801AEE88:
/* 801AEE88 001ABDE8  80 7C 07 A4 */	lwz r3, 0x7a4(r28)
/* 801AEE8C 001ABDEC  7F C4 F3 78 */	mr r4, r30
/* 801AEE90 001ABDF0  4B FF 83 A9 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801AEE94 001ABDF4  7C 7A 1B 78 */	mr r26, r3
/* 801AEE98 001ABDF8  7F A3 EB 78 */	mr r3, r29
/* 801AEE9C 001ABDFC  A0 1A 00 3C */	lhz r0, 0x3c(r26)
/* 801AEEA0 001ABE00  38 81 00 08 */	addi r4, r1, 8
/* 801AEEA4 001ABE04  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AEEA8 001ABE08  B0 01 00 08 */	sth r0, 8(r1)
/* 801AEEAC 001ABE0C  4B E9 D6 C9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AEEB0 001ABE10  7C 64 1B 78 */	mr r4, r3
/* 801AEEB4 001ABE14  38 61 00 10 */	addi r3, r1, 0x10
/* 801AEEB8 001ABE18  4B F0 04 95 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AEEBC 001ABE1C  83 23 00 04 */	lwz r25, 4(r3)
/* 801AEEC0 001ABE20  28 19 00 00 */	cmplwi r25, 0
/* 801AEEC4 001ABE24  41 82 00 A8 */	beq lbl_801AEF6C
/* 801AEEC8 001ABE28  7F 83 E3 78 */	mr r3, r28
/* 801AEECC 001ABE2C  7F A4 EB 78 */	mr r4, r29
/* 801AEED0 001ABE30  81 9C 00 00 */	lwz r12, 0(r28)
/* 801AEED4 001ABE34  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AEED8 001ABE38  7D 89 03 A6 */	mtctr r12
/* 801AEEDC 001ABE3C  4E 80 04 21 */	bctrl
/* 801AEEE0 001ABE40  7C 7B 1B 78 */	mr r27, r3
/* 801AEEE4 001ABE44  7F 23 CB 78 */	mr r3, r25
/* 801AEEE8 001ABE48  81 99 00 00 */	lwz r12, 0(r25)
/* 801AEEEC 001ABE4C  7F A4 EB 78 */	mr r4, r29
/* 801AEEF0 001ABE50  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AEEF4 001ABE54  7D 89 03 A6 */	mtctr r12
/* 801AEEF8 001ABE58  4E 80 04 21 */	bctrl
/* 801AEEFC 001ABE5C  C0 1B 00 00 */	lfs f0, 0(r27)
/* 801AEF00 001ABE60  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801AEF04 001ABE64  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801AEF08 001ABE68  D0 03 00 00 */	stfs f0, 0(r3)
/* 801AEF0C 001ABE6C  38 84 00 58 */	addi r4, r4, 0x58
/* 801AEF10 001ABE70  C0 1B 00 04 */	lfs f0, 4(r27)
/* 801AEF14 001ABE74  D0 03 00 04 */	stfs f0, 4(r3)
/* 801AEF18 001ABE78  38 61 00 18 */	addi r3, r1, 0x18
/* 801AEF1C 001ABE7C  4B E5 5D 9D */	bl string_l__4rstlFPCc
/* 801AEF20 001ABE80  38 7A 00 2C */	addi r3, r26, 0x2c
/* 801AEF24 001ABE84  38 81 00 18 */	addi r4, r1, 0x18
/* 801AEF28 001ABE88  4B EA 36 B9 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801AEF2C 001ABE8C  7C 7B 1B 78 */	mr r27, r3
/* 801AEF30 001ABE90  38 61 00 18 */	addi r3, r1, 0x18
/* 801AEF34 001ABE94  48 18 EB AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AEF38 001ABE98  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801AEF3C 001ABE9C  41 82 00 0C */	beq lbl_801AEF48
/* 801AEF40 001ABEA0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801AEF44 001ABEA4  B0 1C 08 0C */	sth r0, 0x80c(r28)
lbl_801AEF48:
/* 801AEF48 001ABEA8  80 1C 07 FC */	lwz r0, 0x7fc(r28)
/* 801AEF4C 001ABEAC  54 00 08 3C */	slwi r0, r0, 1
/* 801AEF50 001ABEB0  7C 7F 02 15 */	add. r3, r31, r0
/* 801AEF54 001ABEB4  41 82 00 0C */	beq lbl_801AEF60
/* 801AEF58 001ABEB8  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801AEF5C 001ABEBC  B0 03 00 00 */	sth r0, 0(r3)
lbl_801AEF60:
/* 801AEF60 001ABEC0  80 7C 07 FC */	lwz r3, 0x7fc(r28)
/* 801AEF64 001ABEC4  38 03 00 01 */	addi r0, r3, 1
/* 801AEF68 001ABEC8  90 1C 07 FC */	stw r0, 0x7fc(r28)
lbl_801AEF6C:
/* 801AEF6C 001ABECC  3B DE 00 01 */	addi r30, r30, 1
lbl_801AEF70:
/* 801AEF70 001ABED0  80 7C 07 A4 */	lwz r3, 0x7a4(r28)
/* 801AEF74 001ABED4  4B FF 82 D5 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801AEF78 001ABED8  7C 1E 18 40 */	cmplw r30, r3
/* 801AEF7C 001ABEDC  41 80 FF 0C */	blt lbl_801AEE88
/* 801AEF80 001ABEE0  7F 83 E3 78 */	mr r3, r28
/* 801AEF84 001ABEE4  7F A4 EB 78 */	mr r4, r29
/* 801AEF88 001ABEE8  81 9C 00 00 */	lwz r12, 0(r28)
/* 801AEF8C 001ABEEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801AEF90 001ABEF0  7D 89 03 A6 */	mtctr r12
/* 801AEF94 001ABEF4  4E 80 04 21 */	bctrl
/* 801AEF98 001ABEF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801AEF9C 001ABEFC  D0 1C 08 18 */	stfs f0, 0x818(r28)
/* 801AEFA0 001ABF00  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801AEFA4 001ABF04  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AEFA8 001ABF08  7C 08 03 A6 */	mtlr r0
/* 801AEFAC 001ABF0C  38 21 00 50 */	addi r1, r1, 0x50
/* 801AEFB0 001ABF10  4E 80 00 20 */	blr

.global sub_801aefb4
sub_801aefb4:
/* 801AEFB4 001ABF14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801AEFB8 001ABF18  7C 08 02 A6 */	mflr r0
/* 801AEFBC 001ABF1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AEFC0 001ABF20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801AEFC4 001ABF24  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801AEFC8 001ABF28  7C BE 2B 78 */	mr r30, r5
/* 801AEFCC 001ABF2C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801AEFD0 001ABF30  7C 7D 1B 78 */	mr r29, r3
/* 801AEFD4 001ABF34  A0 03 08 0C */	lhz r0, 0x80c(r3)
/* 801AEFD8 001ABF38  7C 83 23 78 */	mr r3, r4
/* 801AEFDC 001ABF3C  38 81 00 08 */	addi r4, r1, 8
/* 801AEFE0 001ABF40  B0 01 00 08 */	sth r0, 8(r1)
/* 801AEFE4 001ABF44  4B E9 D5 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AEFE8 001ABF48  7C 64 1B 78 */	mr r4, r3
/* 801AEFEC 001ABF4C  38 61 00 0C */	addi r3, r1, 0xc
/* 801AEFF0 001ABF50  4B F0 03 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801AEFF4 001ABF54  83 E3 00 04 */	lwz r31, 4(r3)
/* 801AEFF8 001ABF58  28 1F 00 00 */	cmplwi r31, 0
/* 801AEFFC 001ABF5C  41 82 00 3C */	beq lbl_801AF038
/* 801AF000 001ABF60  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801AF004 001ABF64  41 82 00 14 */	beq lbl_801AF018
/* 801AF008 001ABF68  7F E3 FB 78 */	mr r3, r31
/* 801AF00C 001ABF6C  38 9D 05 7C */	addi r4, r29, 0x57c
/* 801AF010 001ABF70  4B FF 9B 89 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801AF014 001ABF74  48 00 00 24 */	b lbl_801AF038
lbl_801AF018:
/* 801AF018 001ABF78  7F A3 EB 78 */	mr r3, r29
/* 801AF01C 001ABF7C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801AF020 001ABF80  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801AF024 001ABF84  7D 89 03 A6 */	mtctr r12
/* 801AF028 001ABF88  4E 80 04 21 */	bctrl
/* 801AF02C 001ABF8C  7C 64 1B 78 */	mr r4, r3
/* 801AF030 001ABF90  7F E3 FB 78 */	mr r3, r31
/* 801AF034 001ABF94  4B FF 9B 65 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_801AF038:
/* 801AF038 001ABF98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AF03C 001ABF9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801AF040 001ABFA0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801AF044 001ABFA4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801AF048 001ABFA8  7C 08 03 A6 */	mtlr r0
/* 801AF04C 001ABFAC  38 21 00 30 */	addi r1, r1, 0x30
/* 801AF050 001ABFB0  4E 80 00 20 */	blr

.global sub_801af054
sub_801af054:
/* 801AF054 001ABFB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801AF058 001ABFB8  7C 08 02 A6 */	mflr r0
/* 801AF05C 001ABFBC  38 A0 00 00 */	li r5, 0
/* 801AF060 001ABFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AF064 001ABFC4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801AF068 001ABFC8  FF E0 08 90 */	fmr f31, f1
/* 801AF06C 001ABFCC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801AF070 001ABFD0  7C 9F 23 78 */	mr r31, r4
/* 801AF074 001ABFD4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801AF078 001ABFD8  7C 7E 1B 78 */	mr r30, r3
/* 801AF07C 001ABFDC  80 63 07 A4 */	lwz r3, 0x7a4(r3)
/* 801AF080 001ABFE0  4B FF 83 D1 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801AF084 001ABFE4  FC 20 F8 90 */	fmr f1, f31
/* 801AF088 001ABFE8  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 801AF08C 001ABFEC  7F E4 FB 78 */	mr r4, r31
/* 801AF090 001ABFF0  38 A0 00 00 */	li r5, 0
/* 801AF094 001ABFF4  4B FF 83 BD */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801AF098 001ABFF8  FC 20 F8 90 */	fmr f1, f31
/* 801AF09C 001ABFFC  80 7E 07 A0 */	lwz r3, 0x7a0(r30)
/* 801AF0A0 001AC000  7F E4 FB 78 */	mr r4, r31
/* 801AF0A4 001AC004  38 A0 00 00 */	li r5, 0
/* 801AF0A8 001AC008  4B FF 83 A9 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801AF0AC 001AC00C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801AF0B0 001AC010  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801AF0B4 001AC014  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801AF0B8 001AC018  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801AF0BC 001AC01C  7C 08 03 A6 */	mtlr r0
/* 801AF0C0 001AC020  38 21 00 20 */	addi r1, r1, 0x20
/* 801AF0C4 001AC024  4E 80 00 20 */	blr

.global sub_801af0c8
sub_801af0c8:
/* 801AF0C8 001AC028  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801AF0CC 001AC02C  7C 08 02 A6 */	mflr r0
/* 801AF0D0 001AC030  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AF0D4 001AC034  BF 21 00 34 */	stmw r25, 0x34(r1)
/* 801AF0D8 001AC038  7C 79 1B 78 */	mr r25, r3
/* 801AF0DC 001AC03C  7C 9A 23 78 */	mr r26, r4
/* 801AF0E0 001AC040  7C BB 2B 78 */	mr r27, r5
/* 801AF0E4 001AC044  3B A0 00 00 */	li r29, 0
/* 801AF0E8 001AC048  48 00 00 FC */	b lbl_801AF1E4
lbl_801AF0EC:
/* 801AF0EC 001AC04C  80 7A 00 00 */	lwz r3, 0(r26)
/* 801AF0F0 001AC050  7F A4 EB 78 */	mr r4, r29
/* 801AF0F4 001AC054  4B FF 81 45 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801AF0F8 001AC058  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801AF0FC 001AC05C  7F 63 DB 78 */	mr r3, r27
/* 801AF100 001AC060  38 81 00 08 */	addi r4, r1, 8
/* 801AF104 001AC064  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AF108 001AC068  B0 01 00 08 */	sth r0, 8(r1)
/* 801AF10C 001AC06C  4B E9 D4 69 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801AF110 001AC070  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AF114 001AC074  41 82 00 CC */	beq lbl_801AF1E0
/* 801AF118 001AC078  80 AD 90 BC */	lwz r5, lbl_805A7C7C@sda21(r13)
/* 801AF11C 001AC07C  38 60 00 00 */	li r3, 0
/* 801AF120 001AC080  38 80 00 01 */	li r4, 1
/* 801AF124 001AC084  48 1D AD D1 */	bl __shl2i
/* 801AF128 001AC088  80 AD 90 C0 */	lwz r5, lbl_805A7C80@sda21(r13)
/* 801AF12C 001AC08C  7C 9E 23 78 */	mr r30, r4
/* 801AF130 001AC090  7C 7F 1B 78 */	mr r31, r3
/* 801AF134 001AC094  38 60 00 00 */	li r3, 0
/* 801AF138 001AC098  38 80 00 01 */	li r4, 1
/* 801AF13C 001AC09C  48 1D AD B9 */	bl __shl2i
/* 801AF140 001AC0A0  80 AD 90 C4 */	lwz r5, lbl_805A7C84@sda21(r13)
/* 801AF144 001AC0A4  7F DE 23 78 */	or r30, r30, r4
/* 801AF148 001AC0A8  7F FF 1B 78 */	or r31, r31, r3
/* 801AF14C 001AC0AC  38 60 00 00 */	li r3, 0
/* 801AF150 001AC0B0  38 80 00 01 */	li r4, 1
/* 801AF154 001AC0B4  48 1D AD A1 */	bl __shl2i
/* 801AF158 001AC0B8  80 AD 90 C8 */	lwz r5, lbl_805A7C88@sda21(r13)
/* 801AF15C 001AC0BC  7F DE 23 78 */	or r30, r30, r4
/* 801AF160 001AC0C0  7F FF 1B 78 */	or r31, r31, r3
/* 801AF164 001AC0C4  38 60 00 00 */	li r3, 0
/* 801AF168 001AC0C8  38 80 00 01 */	li r4, 1
/* 801AF16C 001AC0CC  48 1D AD 89 */	bl __shl2i
/* 801AF170 001AC0D0  80 AD 90 B8 */	lwz r5, lbl_805A7C78@sda21(r13)
/* 801AF174 001AC0D4  7F DE 23 78 */	or r30, r30, r4
/* 801AF178 001AC0D8  7F FF 1B 78 */	or r31, r31, r3
/* 801AF17C 001AC0DC  38 60 00 00 */	li r3, 0
/* 801AF180 001AC0E0  38 80 00 01 */	li r4, 1
/* 801AF184 001AC0E4  48 1D AD 71 */	bl __shl2i
/* 801AF188 001AC0E8  38 00 00 03 */	li r0, 3
/* 801AF18C 001AC0EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 801AF190 001AC0F0  38 81 00 10 */	addi r4, r1, 0x10
/* 801AF194 001AC0F4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801AF198 001AC0F8  7F 83 E3 78 */	mr r3, r28
/* 801AF19C 001AC0FC  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 801AF1A0 001AC100  93 E1 00 18 */	stw r31, 0x18(r1)
/* 801AF1A4 001AC104  90 01 00 20 */	stw r0, 0x20(r1)
/* 801AF1A8 001AC108  4B EA 46 F9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801AF1AC 001AC10C  7F 83 E3 78 */	mr r3, r28
/* 801AF1B0 001AC110  7F 66 DB 78 */	mr r6, r27
/* 801AF1B4 001AC114  38 80 00 22 */	li r4, 0x22
/* 801AF1B8 001AC118  38 A0 00 1B */	li r5, 0x1b
/* 801AF1BC 001AC11C  4B EA 50 F9 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801AF1C0 001AC120  7F 23 CB 78 */	mr r3, r25
/* 801AF1C4 001AC124  81 99 00 00 */	lwz r12, 0(r25)
/* 801AF1C8 001AC128  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801AF1CC 001AC12C  7D 89 03 A6 */	mtctr r12
/* 801AF1D0 001AC130  4E 80 04 21 */	bctrl
/* 801AF1D4 001AC134  7C 64 1B 78 */	mr r4, r3
/* 801AF1D8 001AC138  7F 83 E3 78 */	mr r3, r28
/* 801AF1DC 001AC13C  4B FF 99 BD */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_801AF1E0:
/* 801AF1E0 001AC140  3B BD 00 01 */	addi r29, r29, 1
lbl_801AF1E4:
/* 801AF1E4 001AC144  80 7A 00 00 */	lwz r3, 0(r26)
/* 801AF1E8 001AC148  4B FF 80 61 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801AF1EC 001AC14C  7C 1D 18 40 */	cmplw r29, r3
/* 801AF1F0 001AC150  41 80 FE FC */	blt lbl_801AF0EC
/* 801AF1F4 001AC154  BB 21 00 34 */	lmw r25, 0x34(r1)
/* 801AF1F8 001AC158  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AF1FC 001AC15C  7C 08 03 A6 */	mtlr r0
/* 801AF200 001AC160  38 21 00 50 */	addi r1, r1, 0x50
/* 801AF204 001AC164  4E 80 00 20 */	blr

.global sub_801af208
sub_801af208:
/* 801AF208 001AC168  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801AF20C 001AC16C  7C 08 02 A6 */	mflr r0
/* 801AF210 001AC170  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801AF214 001AC174  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 801AF218 001AC178  7C B9 2B 78 */	mr r25, r5
/* 801AF21C 001AC17C  7C DA 33 78 */	mr r26, r6
/* 801AF220 001AC180  7C 9E 23 78 */	mr r30, r4
/* 801AF224 001AC184  3B A1 00 60 */	addi r29, r1, 0x60
/* 801AF228 001AC188  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 801AF22C 001AC18C  3B 60 00 00 */	li r27, 0
/* 801AF230 001AC190  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801AF234 001AC194  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801AF238 001AC198  48 00 01 20 */	b lbl_801AF358
lbl_801AF23C:
/* 801AF23C 001AC19C  80 9E 00 00 */	lwz r4, 0(r30)
/* 801AF240 001AC1A0  38 61 00 24 */	addi r3, r1, 0x24
/* 801AF244 001AC1A4  4B E5 5A 75 */	bl string_l__4rstlFPCc
/* 801AF248 001AC1A8  7F E4 FB 78 */	mr r4, r31
/* 801AF24C 001AC1AC  38 61 00 0C */	addi r3, r1, 0xc
/* 801AF250 001AC1B0  38 A1 00 24 */	addi r5, r1, 0x24
/* 801AF254 001AC1B4  4B E7 F5 E5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801AF258 001AC1B8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801AF25C 001AC1BC  38 61 00 24 */	addi r3, r1, 0x24
/* 801AF260 001AC1C0  98 01 00 10 */	stb r0, 0x10(r1)
/* 801AF264 001AC1C4  48 18 E8 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AF268 001AC1C8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801AF26C 001AC1CC  28 00 00 FF */	cmplwi r0, 0xff
/* 801AF270 001AC1D0  41 82 00 E0 */	beq lbl_801AF350
/* 801AF274 001AC1D4  80 9E 00 00 */	lwz r4, 0(r30)
/* 801AF278 001AC1D8  38 61 00 14 */	addi r3, r1, 0x14
/* 801AF27C 001AC1DC  4B E5 5A 3D */	bl string_l__4rstlFPCc
/* 801AF280 001AC1E0  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801AF284 001AC1E4  38 61 00 34 */	addi r3, r1, 0x34
/* 801AF288 001AC1E8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801AF28C 001AC1EC  38 81 00 08 */	addi r4, r1, 8
/* 801AF290 001AC1F0  98 01 00 08 */	stb r0, 8(r1)
/* 801AF294 001AC1F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 801AF298 001AC1F8  C0 42 A8 F0 */	lfs f2, lbl_805AC610@sda21(r2)
/* 801AF29C 001AC1FC  4B FF 95 71 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801AF2A0 001AC200  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 801AF2A4 001AC204  7F 83 E3 78 */	mr r3, r28
/* 801AF2A8 001AC208  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 801AF2AC 001AC20C  7F A4 EB 78 */	mr r4, r29
/* 801AF2B0 001AC210  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 801AF2B4 001AC214  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 801AF2B8 001AC218  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 801AF2BC 001AC21C  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 801AF2C0 001AC220  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 801AF2C4 001AC224  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 801AF2C8 001AC228  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 801AF2CC 001AC22C  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801AF2D0 001AC230  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801AF2D4 001AC234  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801AF2D8 001AC238  90 E1 00 78 */	stw r7, 0x78(r1)
/* 801AF2DC 001AC23C  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 801AF2E0 001AC240  98 A1 00 80 */	stb r5, 0x80(r1)
/* 801AF2E4 001AC244  98 01 00 81 */	stb r0, 0x81(r1)
/* 801AF2E8 001AC248  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 801AF2EC 001AC24C  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 801AF2F0 001AC250  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 801AF2F4 001AC254  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801AF2F8 001AC258  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801AF2FC 001AC25C  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801AF300 001AC260  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801AF304 001AC264  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801AF308 001AC268  48 18 EE 59 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801AF30C 001AC26C  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 801AF310 001AC270  28 1D 00 00 */	cmplwi r29, 0
/* 801AF314 001AC274  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801AF318 001AC278  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 801AF31C 001AC27C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801AF320 001AC280  41 82 00 0C */	beq lbl_801AF32C
/* 801AF324 001AC284  7F A3 EB 78 */	mr r3, r29
/* 801AF328 001AC288  48 18 E7 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801AF32C:
/* 801AF32C 001AC28C  38 61 00 14 */	addi r3, r1, 0x14
/* 801AF330 001AC290  48 18 E7 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AF334 001AC294  7F 43 D3 78 */	mr r3, r26
/* 801AF338 001AC298  38 81 00 78 */	addi r4, r1, 0x78
/* 801AF33C 001AC29C  4B FA 6E F5 */	bl sub_80156230
/* 801AF340 001AC2A0  28 1C 00 00 */	cmplwi r28, 0
/* 801AF344 001AC2A4  41 82 00 0C */	beq lbl_801AF350
/* 801AF348 001AC2A8  7F 83 E3 78 */	mr r3, r28
/* 801AF34C 001AC2AC  48 18 E7 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801AF350:
/* 801AF350 001AC2B0  3B DE 00 08 */	addi r30, r30, 8
/* 801AF354 001AC2B4  3B 7B 00 01 */	addi r27, r27, 1
lbl_801AF358:
/* 801AF358 001AC2B8  7C 1B C8 00 */	cmpw r27, r25
/* 801AF35C 001AC2BC  41 80 FE E0 */	blt lbl_801AF23C
/* 801AF360 001AC2C0  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 801AF364 001AC2C4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801AF368 001AC2C8  7C 08 03 A6 */	mtlr r0
/* 801AF36C 001AC2CC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801AF370 001AC2D0  4E 80 00 20 */	blr

.global sub_801af374
sub_801af374:
/* 801AF374 001AC2D4  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801AF378 001AC2D8  7C 08 02 A6 */	mflr r0
/* 801AF37C 001AC2DC  90 01 01 04 */	stw r0, 0x104(r1)
/* 801AF380 001AC2E0  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 801AF384 001AC2E4  7C B9 2B 78 */	mr r25, r5
/* 801AF388 001AC2E8  7C DA 33 78 */	mr r26, r6
/* 801AF38C 001AC2EC  7C 9E 23 78 */	mr r30, r4
/* 801AF390 001AC2F0  3B A1 00 7C */	addi r29, r1, 0x7c
/* 801AF394 001AC2F4  3B 81 00 C0 */	addi r28, r1, 0xc0
/* 801AF398 001AC2F8  3B 60 00 00 */	li r27, 0
/* 801AF39C 001AC2FC  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801AF3A0 001AC300  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801AF3A4 001AC304  48 00 01 6C */	b lbl_801AF510
lbl_801AF3A8:
/* 801AF3A8 001AC308  80 9E 00 00 */	lwz r4, 0(r30)
/* 801AF3AC 001AC30C  38 61 00 40 */	addi r3, r1, 0x40
/* 801AF3B0 001AC310  4B E5 59 09 */	bl string_l__4rstlFPCc
/* 801AF3B4 001AC314  7F E4 FB 78 */	mr r4, r31
/* 801AF3B8 001AC318  38 61 00 14 */	addi r3, r1, 0x14
/* 801AF3BC 001AC31C  38 A1 00 40 */	addi r5, r1, 0x40
/* 801AF3C0 001AC320  4B E7 F4 79 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801AF3C4 001AC324  88 01 00 14 */	lbz r0, 0x14(r1)
/* 801AF3C8 001AC328  38 61 00 40 */	addi r3, r1, 0x40
/* 801AF3CC 001AC32C  98 01 00 1C */	stb r0, 0x1c(r1)
/* 801AF3D0 001AC330  48 18 E7 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AF3D4 001AC334  80 9E 00 04 */	lwz r4, 4(r30)
/* 801AF3D8 001AC338  38 61 00 30 */	addi r3, r1, 0x30
/* 801AF3DC 001AC33C  4B E5 58 DD */	bl string_l__4rstlFPCc
/* 801AF3E0 001AC340  7F E4 FB 78 */	mr r4, r31
/* 801AF3E4 001AC344  38 61 00 10 */	addi r3, r1, 0x10
/* 801AF3E8 001AC348  38 A1 00 30 */	addi r5, r1, 0x30
/* 801AF3EC 001AC34C  4B E7 F4 4D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801AF3F0 001AC350  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801AF3F4 001AC354  38 61 00 30 */	addi r3, r1, 0x30
/* 801AF3F8 001AC358  98 01 00 18 */	stb r0, 0x18(r1)
/* 801AF3FC 001AC35C  48 18 E6 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AF400 001AC360  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 801AF404 001AC364  28 00 00 FF */	cmplwi r0, 0xff
/* 801AF408 001AC368  41 82 01 00 */	beq lbl_801AF508
/* 801AF40C 001AC36C  88 01 00 18 */	lbz r0, 0x18(r1)
/* 801AF410 001AC370  28 00 00 FF */	cmplwi r0, 0xff
/* 801AF414 001AC374  41 82 00 F4 */	beq lbl_801AF508
/* 801AF418 001AC378  80 9E 00 00 */	lwz r4, 0(r30)
/* 801AF41C 001AC37C  38 61 00 20 */	addi r3, r1, 0x20
/* 801AF420 001AC380  4B E5 58 99 */	bl string_l__4rstlFPCc
/* 801AF424 001AC384  88 A1 00 18 */	lbz r5, 0x18(r1)
/* 801AF428 001AC388  38 61 00 50 */	addi r3, r1, 0x50
/* 801AF42C 001AC38C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 801AF430 001AC390  38 81 00 0C */	addi r4, r1, 0xc
/* 801AF434 001AC394  98 A1 00 08 */	stb r5, 8(r1)
/* 801AF438 001AC398  38 A1 00 08 */	addi r5, r1, 8
/* 801AF43C 001AC39C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 801AF440 001AC3A0  38 E1 00 20 */	addi r7, r1, 0x20
/* 801AF444 001AC3A4  98 01 00 0C */	stb r0, 0xc(r1)
/* 801AF448 001AC3A8  38 C0 00 01 */	li r6, 1
/* 801AF44C 001AC3AC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 801AF450 001AC3B0  C0 62 A8 F0 */	lfs f3, lbl_805AC610@sda21(r2)
/* 801AF454 001AC3B4  4B FF 93 01 */	bl "SphereSubdivideCollision__26CJointCollisionDescriptionF6CSegId6CSegIdffQ226CJointCollisionDescription16EOrientationTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801AF458 001AC3B8  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 801AF45C 001AC3BC  7F 83 E3 78 */	mr r3, r28
/* 801AF460 001AC3C0  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 801AF464 001AC3C4  7F A4 EB 78 */	mr r4, r29
/* 801AF468 001AC3C8  88 A1 00 58 */	lbz r5, 0x58(r1)
/* 801AF46C 001AC3CC  88 01 00 59 */	lbz r0, 0x59(r1)
/* 801AF470 001AC3D0  C0 E1 00 5C */	lfs f7, 0x5c(r1)
/* 801AF474 001AC3D4  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 801AF478 001AC3D8  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 801AF47C 001AC3DC  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 801AF480 001AC3E0  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 801AF484 001AC3E4  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 801AF488 001AC3E8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801AF48C 001AC3EC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801AF490 001AC3F0  90 E1 00 94 */	stw r7, 0x94(r1)
/* 801AF494 001AC3F4  90 C1 00 98 */	stw r6, 0x98(r1)
/* 801AF498 001AC3F8  98 A1 00 9C */	stb r5, 0x9c(r1)
/* 801AF49C 001AC3FC  98 01 00 9D */	stb r0, 0x9d(r1)
/* 801AF4A0 001AC400  D0 E1 00 A0 */	stfs f7, 0xa0(r1)
/* 801AF4A4 001AC404  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 801AF4A8 001AC408  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 801AF4AC 001AC40C  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 801AF4B0 001AC410  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 801AF4B4 001AC414  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 801AF4B8 001AC418  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 801AF4BC 001AC41C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801AF4C0 001AC420  48 18 EC A1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801AF4C4 001AC424  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 801AF4C8 001AC428  28 1D 00 00 */	cmplwi r29, 0
/* 801AF4CC 001AC42C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 801AF4D0 001AC430  B0 01 00 D0 */	sth r0, 0xd0(r1)
/* 801AF4D4 001AC434  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 801AF4D8 001AC438  41 82 00 0C */	beq lbl_801AF4E4
/* 801AF4DC 001AC43C  7F A3 EB 78 */	mr r3, r29
/* 801AF4E0 001AC440  48 18 E6 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801AF4E4:
/* 801AF4E4 001AC444  38 61 00 20 */	addi r3, r1, 0x20
/* 801AF4E8 001AC448  48 18 E5 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801AF4EC 001AC44C  7F 43 D3 78 */	mr r3, r26
/* 801AF4F0 001AC450  38 81 00 94 */	addi r4, r1, 0x94
/* 801AF4F4 001AC454  4B FA 6D 3D */	bl sub_80156230
/* 801AF4F8 001AC458  28 1C 00 00 */	cmplwi r28, 0
/* 801AF4FC 001AC45C  41 82 00 0C */	beq lbl_801AF508
/* 801AF500 001AC460  7F 83 E3 78 */	mr r3, r28
/* 801AF504 001AC464  48 18 E5 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801AF508:
/* 801AF508 001AC468  3B DE 00 10 */	addi r30, r30, 0x10
/* 801AF50C 001AC46C  3B 7B 00 01 */	addi r27, r27, 1
lbl_801AF510:
/* 801AF510 001AC470  7C 1B C8 00 */	cmpw r27, r25
/* 801AF514 001AC474  41 80 FE 94 */	blt lbl_801AF3A8
/* 801AF518 001AC478  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 801AF51C 001AC47C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801AF520 001AC480  7C 08 03 A6 */	mtlr r0
/* 801AF524 001AC484  38 21 01 00 */	addi r1, r1, 0x100
/* 801AF528 001AC488  4E 80 00 20 */	blr

.global sub_801af52c
sub_801af52c:
/* 801AF52C 001AC48C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801AF530 001AC490  7C 08 02 A6 */	mflr r0
/* 801AF534 001AC494  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801AF538 001AC498  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801AF53C 001AC49C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801AF540 001AC4A0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 801AF544 001AC4A4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 801AF548 001AC4A8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801AF54C 001AC4AC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801AF550 001AC4B0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801AF554 001AC4B4  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801AF558 001AC4B8  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 801AF55C 001AC4BC  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 801AF560 001AC4C0  7C 7F 1B 78 */	mr r31, r3
/* 801AF564 001AC4C4  3C 60 80 3D */	lis r3, lbl_803D14E0@ha
/* 801AF568 001AC4C8  C0 3F 05 70 */	lfs f1, 0x570(r31)
/* 801AF56C 001AC4CC  7C 9E 23 78 */	mr r30, r4
/* 801AF570 001AC4D0  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 801AF574 001AC4D4  38 00 00 00 */	li r0, 0
/* 801AF578 001AC4D8  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801AF57C 001AC4DC  3B A3 14 E0 */	addi r29, r3, lbl_803D14E0@l
/* 801AF580 001AC4E0  C3 E5 00 00 */	lfs f31, 0(r5)
/* 801AF584 001AC4E4  38 61 00 70 */	addi r3, r1, 0x70
/* 801AF588 001AC4E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 801AF58C 001AC4EC  C3 C5 00 04 */	lfs f30, 4(r5)
/* 801AF590 001AC4F0  C3 A5 00 08 */	lfs f29, 8(r5)
/* 801AF594 001AC4F4  38 80 00 03 */	li r4, 3
/* 801AF598 001AC4F8  D0 05 00 00 */	stfs f0, 0(r5)
/* 801AF59C 001AC4FC  D0 05 00 04 */	stfs f0, 4(r5)
/* 801AF5A0 001AC500  D0 05 00 08 */	stfs f0, 8(r5)
/* 801AF5A4 001AC504  90 01 00 74 */	stw r0, 0x74(r1)
/* 801AF5A8 001AC508  90 01 00 78 */	stw r0, 0x78(r1)
/* 801AF5AC 001AC50C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801AF5B0 001AC510  4B FA 72 09 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801AF5B4 001AC514  7F E3 FB 78 */	mr r3, r31
/* 801AF5B8 001AC518  38 9D 00 00 */	addi r4, r29, 0
/* 801AF5BC 001AC51C  38 C1 00 70 */	addi r6, r1, 0x70
/* 801AF5C0 001AC520  38 A0 00 03 */	li r5, 3
/* 801AF5C4 001AC524  4B FF FD B1 */	bl sub_801af374
/* 801AF5C8 001AC528  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801AF5CC 001AC52C  38 60 00 18 */	li r3, 0x18
/* 801AF5D0 001AC530  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801AF5D4 001AC534  38 A0 00 00 */	li r5, 0
/* 801AF5D8 001AC538  38 84 00 7E */	addi r4, r4, 0x7e
/* 801AF5DC 001AC53C  48 16 62 91 */	bl __nw__FUlPCcPCc
/* 801AF5E0 001AC540  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AF5E4 001AC544  41 82 00 38 */	beq lbl_801AF61C
/* 801AF5E8 001AC548  81 3F 00 04 */	lwz r9, 4(r31)
/* 801AF5EC 001AC54C  7F C4 F3 78 */	mr r4, r30
/* 801AF5F0 001AC550  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801AF5F4 001AC554  38 C1 00 34 */	addi r6, r1, 0x34
/* 801AF5F8 001AC558  91 21 00 34 */	stw r9, 0x34(r1)
/* 801AF5FC 001AC55C  38 E1 00 70 */	addi r7, r1, 0x70
/* 801AF600 001AC560  39 00 00 01 */	li r8, 1
/* 801AF604 001AC564  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801AF608 001AC568  91 21 00 30 */	stw r9, 0x30(r1)
/* 801AF60C 001AC56C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801AF610 001AC570  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801AF614 001AC574  4B FF 83 1D */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801AF618 001AC578  7C 7C 1B 78 */	mr r28, r3
lbl_801AF61C:
/* 801AF61C 001AC57C  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 801AF620 001AC580  38 80 00 01 */	li r4, 1
/* 801AF624 001AC584  4B FF 82 B9 */	bl sub_801a78dc
/* 801AF628 001AC588  93 9F 07 9C */	stw r28, 0x79c(r31)
/* 801AF62C 001AC58C  7F E3 FB 78 */	mr r3, r31
/* 801AF630 001AC590  7F C5 F3 78 */	mr r5, r30
/* 801AF634 001AC594  38 9F 07 9C */	addi r4, r31, 0x79c
/* 801AF638 001AC598  4B FF FA 91 */	bl sub_801af0c8
/* 801AF63C 001AC59C  38 00 00 00 */	li r0, 0
/* 801AF640 001AC5A0  38 61 00 60 */	addi r3, r1, 0x60
/* 801AF644 001AC5A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801AF648 001AC5A8  38 80 00 03 */	li r4, 3
/* 801AF64C 001AC5AC  90 01 00 68 */	stw r0, 0x68(r1)
/* 801AF650 001AC5B0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801AF654 001AC5B4  4B FA 71 65 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801AF658 001AC5B8  7F E3 FB 78 */	mr r3, r31
/* 801AF65C 001AC5BC  38 9D 00 30 */	addi r4, r29, 0x30
/* 801AF660 001AC5C0  38 C1 00 60 */	addi r6, r1, 0x60
/* 801AF664 001AC5C4  38 A0 00 03 */	li r5, 3
/* 801AF668 001AC5C8  4B FF FD 0D */	bl sub_801af374
/* 801AF66C 001AC5CC  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801AF670 001AC5D0  38 60 00 18 */	li r3, 0x18
/* 801AF674 001AC5D4  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801AF678 001AC5D8  38 A0 00 00 */	li r5, 0
/* 801AF67C 001AC5DC  38 84 00 7E */	addi r4, r4, 0x7e
/* 801AF680 001AC5E0  48 16 61 ED */	bl __nw__FUlPCcPCc
/* 801AF684 001AC5E4  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AF688 001AC5E8  41 82 00 38 */	beq lbl_801AF6C0
/* 801AF68C 001AC5EC  81 3F 00 04 */	lwz r9, 4(r31)
/* 801AF690 001AC5F0  7F C4 F3 78 */	mr r4, r30
/* 801AF694 001AC5F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 801AF698 001AC5F8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801AF69C 001AC5FC  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801AF6A0 001AC600  38 E1 00 60 */	addi r7, r1, 0x60
/* 801AF6A4 001AC604  39 00 00 01 */	li r8, 1
/* 801AF6A8 001AC608  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801AF6AC 001AC60C  91 21 00 28 */	stw r9, 0x28(r1)
/* 801AF6B0 001AC610  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801AF6B4 001AC614  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801AF6B8 001AC618  4B FF 82 79 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801AF6BC 001AC61C  7C 7C 1B 78 */	mr r28, r3
lbl_801AF6C0:
/* 801AF6C0 001AC620  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 801AF6C4 001AC624  38 80 00 01 */	li r4, 1
/* 801AF6C8 001AC628  4B FF 82 15 */	bl sub_801a78dc
/* 801AF6CC 001AC62C  93 9F 07 A0 */	stw r28, 0x7a0(r31)
/* 801AF6D0 001AC630  7F E3 FB 78 */	mr r3, r31
/* 801AF6D4 001AC634  7F C5 F3 78 */	mr r5, r30
/* 801AF6D8 001AC638  38 9F 07 A0 */	addi r4, r31, 0x7a0
/* 801AF6DC 001AC63C  4B FF F9 ED */	bl sub_801af0c8
/* 801AF6E0 001AC640  38 00 00 00 */	li r0, 0
/* 801AF6E4 001AC644  38 61 00 50 */	addi r3, r1, 0x50
/* 801AF6E8 001AC648  90 01 00 54 */	stw r0, 0x54(r1)
/* 801AF6EC 001AC64C  38 80 00 05 */	li r4, 5
/* 801AF6F0 001AC650  90 01 00 58 */	stw r0, 0x58(r1)
/* 801AF6F4 001AC654  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801AF6F8 001AC658  4B FA 70 C1 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801AF6FC 001AC65C  7F E3 FB 78 */	mr r3, r31
/* 801AF700 001AC660  38 9D 00 60 */	addi r4, r29, 0x60
/* 801AF704 001AC664  38 C1 00 50 */	addi r6, r1, 0x50
/* 801AF708 001AC668  38 A0 00 05 */	li r5, 5
/* 801AF70C 001AC66C  4B FF FA FD */	bl sub_801af208
/* 801AF710 001AC670  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801AF714 001AC674  38 60 00 18 */	li r3, 0x18
/* 801AF718 001AC678  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801AF71C 001AC67C  38 A0 00 00 */	li r5, 0
/* 801AF720 001AC680  38 84 00 7E */	addi r4, r4, 0x7e
/* 801AF724 001AC684  48 16 61 49 */	bl __nw__FUlPCcPCc
/* 801AF728 001AC688  7C 7C 1B 79 */	or. r28, r3, r3
/* 801AF72C 001AC68C  41 82 00 38 */	beq lbl_801AF764
/* 801AF730 001AC690  81 3F 00 04 */	lwz r9, 4(r31)
/* 801AF734 001AC694  7F C4 F3 78 */	mr r4, r30
/* 801AF738 001AC698  38 A1 00 0C */	addi r5, r1, 0xc
/* 801AF73C 001AC69C  38 C1 00 24 */	addi r6, r1, 0x24
/* 801AF740 001AC6A0  91 21 00 24 */	stw r9, 0x24(r1)
/* 801AF744 001AC6A4  38 E1 00 50 */	addi r7, r1, 0x50
/* 801AF748 001AC6A8  39 00 00 01 */	li r8, 1
/* 801AF74C 001AC6AC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801AF750 001AC6B0  91 21 00 20 */	stw r9, 0x20(r1)
/* 801AF754 001AC6B4  B0 01 00 08 */	sth r0, 8(r1)
/* 801AF758 001AC6B8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AF75C 001AC6BC  4B FF 81 D5 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801AF760 001AC6C0  7C 7C 1B 78 */	mr r28, r3
lbl_801AF764:
/* 801AF764 001AC6C4  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 801AF768 001AC6C8  38 80 00 01 */	li r4, 1
/* 801AF76C 001AC6CC  4B FF 81 71 */	bl sub_801a78dc
/* 801AF770 001AC6D0  93 9F 07 A4 */	stw r28, 0x7a4(r31)
/* 801AF774 001AC6D4  7F E3 FB 78 */	mr r3, r31
/* 801AF778 001AC6D8  7F C5 F3 78 */	mr r5, r30
/* 801AF77C 001AC6DC  38 9F 07 A4 */	addi r4, r31, 0x7a4
/* 801AF780 001AC6E0  4B FF F9 49 */	bl sub_801af0c8
/* 801AF784 001AC6E4  7F E3 FB 78 */	mr r3, r31
/* 801AF788 001AC6E8  7F C4 F3 78 */	mr r4, r30
/* 801AF78C 001AC6EC  4B FF F6 85 */	bl sub_801aee10
/* 801AF790 001AC6F0  80 AD 90 94 */	lwz r5, lbl_805A7C54@sda21(r13)
/* 801AF794 001AC6F4  38 60 00 00 */	li r3, 0
/* 801AF798 001AC6F8  38 80 00 01 */	li r4, 1
/* 801AF79C 001AC6FC  48 1D A7 59 */	bl __shl2i
/* 801AF7A0 001AC700  80 AD 90 98 */	lwz r5, lbl_805A7C58@sda21(r13)
/* 801AF7A4 001AC704  7C 9D 23 78 */	mr r29, r4
/* 801AF7A8 001AC708  7C 7C 1B 78 */	mr r28, r3
/* 801AF7AC 001AC70C  38 60 00 00 */	li r3, 0
/* 801AF7B0 001AC710  38 80 00 01 */	li r4, 1
/* 801AF7B4 001AC714  48 1D A7 41 */	bl __shl2i
/* 801AF7B8 001AC718  80 AD 90 9C */	lwz r5, lbl_805A7C5C@sda21(r13)
/* 801AF7BC 001AC71C  7F BD 23 78 */	or r29, r29, r4
/* 801AF7C0 001AC720  7F 9C 1B 78 */	or r28, r28, r3
/* 801AF7C4 001AC724  38 60 00 00 */	li r3, 0
/* 801AF7C8 001AC728  38 80 00 01 */	li r4, 1
/* 801AF7CC 001AC72C  48 1D A7 29 */	bl __shl2i
/* 801AF7D0 001AC730  80 AD 90 90 */	lwz r5, lbl_805A7C50@sda21(r13)
/* 801AF7D4 001AC734  7F BD 23 78 */	or r29, r29, r4
/* 801AF7D8 001AC738  7F 9C 1B 78 */	or r28, r28, r3
/* 801AF7DC 001AC73C  38 60 00 00 */	li r3, 0
/* 801AF7E0 001AC740  38 80 00 01 */	li r4, 1
/* 801AF7E4 001AC744  48 1D A7 11 */	bl __shl2i
/* 801AF7E8 001AC748  38 00 00 03 */	li r0, 3
/* 801AF7EC 001AC74C  90 81 00 84 */	stw r4, 0x84(r1)
/* 801AF7F0 001AC750  38 81 00 80 */	addi r4, r1, 0x80
/* 801AF7F4 001AC754  90 61 00 80 */	stw r3, 0x80(r1)
/* 801AF7F8 001AC758  7F E3 FB 78 */	mr r3, r31
/* 801AF7FC 001AC75C  93 A1 00 8C */	stw r29, 0x8c(r1)
/* 801AF800 001AC760  93 81 00 88 */	stw r28, 0x88(r1)
/* 801AF804 001AC764  90 01 00 90 */	stw r0, 0x90(r1)
/* 801AF808 001AC768  4B EA 40 99 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801AF80C 001AC76C  7F E3 FB 78 */	mr r3, r31
/* 801AF810 001AC770  7F C7 F3 78 */	mr r7, r30
/* 801AF814 001AC774  38 80 00 12 */	li r4, 0x12
/* 801AF818 001AC778  38 A0 00 28 */	li r5, 0x28
/* 801AF81C 001AC77C  38 C0 00 29 */	li r6, 0x29
/* 801AF820 001AC780  4B EA 49 C5 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 801AF824 001AC784  7F E3 FB 78 */	mr r3, r31
/* 801AF828 001AC788  7F C5 F3 78 */	mr r5, r30
/* 801AF82C 001AC78C  38 80 00 13 */	li r4, 0x13
/* 801AF830 001AC790  4B EA 47 51 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801AF834 001AC794  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 801AF838 001AC798  38 00 00 00 */	li r0, 0
/* 801AF83C 001AC79C  38 60 00 00 */	li r3, 0
/* 801AF840 001AC7A0  38 80 00 01 */	li r4, 1
/* 801AF844 001AC7A4  D3 E5 00 00 */	stfs f31, 0(r5)
/* 801AF848 001AC7A8  D3 C5 00 04 */	stfs f30, 4(r5)
/* 801AF84C 001AC7AC  D3 A5 00 08 */	stfs f29, 8(r5)
/* 801AF850 001AC7B0  80 AD 90 A0 */	lwz r5, lbl_805A7C60@sda21(r13)
/* 801AF854 001AC7B4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801AF858 001AC7B8  90 01 00 48 */	stw r0, 0x48(r1)
/* 801AF85C 001AC7BC  48 1D A6 99 */	bl __shl2i
/* 801AF860 001AC7C0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801AF864 001AC7C4  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 801AF868 001AC7C8  7C 00 1B 78 */	or r0, r0, r3
/* 801AF86C 001AC7CC  80 AD 90 A4 */	lwz r5, lbl_805A7C64@sda21(r13)
/* 801AF870 001AC7D0  7C C4 23 78 */	or r4, r6, r4
/* 801AF874 001AC7D4  90 01 00 48 */	stw r0, 0x48(r1)
/* 801AF878 001AC7D8  38 60 00 00 */	li r3, 0
/* 801AF87C 001AC7DC  90 81 00 4C */	stw r4, 0x4c(r1)
/* 801AF880 001AC7E0  38 80 00 01 */	li r4, 1
/* 801AF884 001AC7E4  48 1D A6 71 */	bl __shl2i
/* 801AF888 001AC7E8  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801AF88C 001AC7EC  38 A1 00 48 */	addi r5, r1, 0x48
/* 801AF890 001AC7F0  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 801AF894 001AC7F4  7C 00 1B 78 */	or r0, r0, r3
/* 801AF898 001AC7F8  7C C3 23 78 */	or r3, r6, r4
/* 801AF89C 001AC7FC  90 01 00 48 */	stw r0, 0x48(r1)
/* 801AF8A0 001AC800  7F C4 F3 78 */	mr r4, r30
/* 801AF8A4 001AC804  90 61 00 4C */	stw r3, 0x4c(r1)
/* 801AF8A8 001AC808  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 801AF8AC 001AC80C  4B FF 79 A5 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801AF8B0 001AC810  38 00 00 00 */	li r0, 0
/* 801AF8B4 001AC814  80 AD 90 A8 */	lwz r5, lbl_805A7C68@sda21(r13)
/* 801AF8B8 001AC818  90 01 00 44 */	stw r0, 0x44(r1)
/* 801AF8BC 001AC81C  38 60 00 00 */	li r3, 0
/* 801AF8C0 001AC820  38 80 00 01 */	li r4, 1
/* 801AF8C4 001AC824  90 01 00 40 */	stw r0, 0x40(r1)
/* 801AF8C8 001AC828  48 1D A6 2D */	bl __shl2i
/* 801AF8CC 001AC82C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801AF8D0 001AC830  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 801AF8D4 001AC834  7C 00 1B 78 */	or r0, r0, r3
/* 801AF8D8 001AC838  80 AD 90 AC */	lwz r5, lbl_805A7C6C@sda21(r13)
/* 801AF8DC 001AC83C  7C C4 23 78 */	or r4, r6, r4
/* 801AF8E0 001AC840  90 01 00 40 */	stw r0, 0x40(r1)
/* 801AF8E4 001AC844  38 60 00 00 */	li r3, 0
/* 801AF8E8 001AC848  90 81 00 44 */	stw r4, 0x44(r1)
/* 801AF8EC 001AC84C  38 80 00 01 */	li r4, 1
/* 801AF8F0 001AC850  48 1D A6 05 */	bl __shl2i
/* 801AF8F4 001AC854  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801AF8F8 001AC858  38 A1 00 40 */	addi r5, r1, 0x40
/* 801AF8FC 001AC85C  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 801AF900 001AC860  7C 00 1B 78 */	or r0, r0, r3
/* 801AF904 001AC864  7C C3 23 78 */	or r3, r6, r4
/* 801AF908 001AC868  90 01 00 40 */	stw r0, 0x40(r1)
/* 801AF90C 001AC86C  7F C4 F3 78 */	mr r4, r30
/* 801AF910 001AC870  90 61 00 44 */	stw r3, 0x44(r1)
/* 801AF914 001AC874  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 801AF918 001AC878  4B FF 79 39 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801AF91C 001AC87C  38 00 00 00 */	li r0, 0
/* 801AF920 001AC880  80 AD 90 B0 */	lwz r5, lbl_805A7C70@sda21(r13)
/* 801AF924 001AC884  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801AF928 001AC888  38 60 00 00 */	li r3, 0
/* 801AF92C 001AC88C  38 80 00 01 */	li r4, 1
/* 801AF930 001AC890  90 01 00 38 */	stw r0, 0x38(r1)
/* 801AF934 001AC894  48 1D A5 C1 */	bl __shl2i
/* 801AF938 001AC898  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801AF93C 001AC89C  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 801AF940 001AC8A0  7C 00 1B 78 */	or r0, r0, r3
/* 801AF944 001AC8A4  80 AD 90 B4 */	lwz r5, lbl_805A7C74@sda21(r13)
/* 801AF948 001AC8A8  7C C4 23 78 */	or r4, r6, r4
/* 801AF94C 001AC8AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 801AF950 001AC8B0  38 60 00 00 */	li r3, 0
/* 801AF954 001AC8B4  90 81 00 3C */	stw r4, 0x3c(r1)
/* 801AF958 001AC8B8  38 80 00 01 */	li r4, 1
/* 801AF95C 001AC8BC  48 1D A5 99 */	bl __shl2i
/* 801AF960 001AC8C0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801AF964 001AC8C4  38 A1 00 38 */	addi r5, r1, 0x38
/* 801AF968 001AC8C8  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 801AF96C 001AC8CC  7C 00 1B 78 */	or r0, r0, r3
/* 801AF970 001AC8D0  7C C3 23 78 */	or r3, r6, r4
/* 801AF974 001AC8D4  90 01 00 38 */	stw r0, 0x38(r1)
/* 801AF978 001AC8D8  7F C4 F3 78 */	mr r4, r30
/* 801AF97C 001AC8DC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 801AF980 001AC8E0  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 801AF984 001AC8E4  4B FF 78 CD */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801AF988 001AC8E8  38 61 00 50 */	addi r3, r1, 0x50
/* 801AF98C 001AC8EC  38 80 FF FF */	li r4, -1
/* 801AF990 001AC8F0  4B FA 69 9D */	bl sub_8015632c
/* 801AF994 001AC8F4  38 61 00 60 */	addi r3, r1, 0x60
/* 801AF998 001AC8F8  38 80 FF FF */	li r4, -1
/* 801AF99C 001AC8FC  4B FA 69 91 */	bl sub_8015632c
/* 801AF9A0 001AC900  38 61 00 70 */	addi r3, r1, 0x70
/* 801AF9A4 001AC904  38 80 FF FF */	li r4, -1
/* 801AF9A8 001AC908  4B FA 69 85 */	bl sub_8015632c
/* 801AF9AC 001AC90C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801AF9B0 001AC910  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801AF9B4 001AC914  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 801AF9B8 001AC918  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 801AF9BC 001AC91C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 801AF9C0 001AC920  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801AF9C4 001AC924  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801AF9C8 001AC928  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801AF9CC 001AC92C  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 801AF9D0 001AC930  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801AF9D4 001AC934  83 81 00 A0 */	lwz r28, 0xa0(r1)
/* 801AF9D8 001AC938  7C 08 03 A6 */	mtlr r0
/* 801AF9DC 001AC93C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801AF9E0 001AC940  4E 80 00 20 */	blr

.global Dead__9CFlaahgraFR13CStateManager9EStateMsgf
Dead__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801AF9E4 001AC944  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801AF9E8 001AC948  7C 08 02 A6 */	mflr r0
/* 801AF9EC 001AC94C  2C 05 00 01 */	cmpwi r5, 1
/* 801AF9F0 001AC950  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801AF9F4 001AC954  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 801AF9F8 001AC958  7C 9F 23 78 */	mr r31, r4
/* 801AF9FC 001AC95C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 801AFA00 001AC960  7C 7E 1B 78 */	mr r30, r3
/* 801AFA04 001AC964  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 801AFA08 001AC968  41 82 00 68 */	beq lbl_801AFA70
/* 801AFA0C 001AC96C  40 80 02 C8 */	bge lbl_801AFCD4
/* 801AFA10 001AC970  2C 05 00 00 */	cmpwi r5, 0
/* 801AFA14 001AC974  40 80 00 08 */	bge lbl_801AFA1C
/* 801AFA18 001AC978  48 00 02 BC */	b lbl_801AFCD4
lbl_801AFA1C:
/* 801AFA1C 001AC97C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801AFA20 001AC980  3B A0 00 01 */	li r29, 1
/* 801AFA24 001AC984  4B F8 B1 89 */	bl GetFallState__15CBodyControllerCFv
/* 801AFA28 001AC988  2C 03 00 00 */	cmpwi r3, 0
/* 801AFA2C 001AC98C  40 82 00 18 */	bne lbl_801AFA44
/* 801AFA30 001AC990  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801AFA34 001AC994  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801AFA38 001AC998  2C 00 00 00 */	cmpwi r0, 0
/* 801AFA3C 001AC99C  41 82 00 08 */	beq lbl_801AFA44
/* 801AFA40 001AC9A0  3B A0 00 00 */	li r29, 0
lbl_801AFA44:
/* 801AFA44 001AC9A4  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 801AFA48 001AC9A8  7F C3 F3 78 */	mr r3, r30
/* 801AFA4C 001AC9AC  7C 04 00 D0 */	neg r0, r4
/* 801AFA50 001AC9B0  7F E5 FB 78 */	mr r5, r31
/* 801AFA54 001AC9B4  7C 00 23 78 */	or r0, r0, r4
/* 801AFA58 001AC9B8  38 80 00 0B */	li r4, 0xb
/* 801AFA5C 001AC9BC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801AFA60 001AC9C0  38 C0 FF FF */	li r6, -1
/* 801AFA64 001AC9C4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801AFA68 001AC9C8  4B EA 16 59 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801AFA6C 001AC9CC  48 00 02 68 */	b lbl_801AFCD4
lbl_801AFA70:
/* 801AFA70 001AC9D0  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801AFA74 001AC9D4  2C 00 00 01 */	cmpwi r0, 1
/* 801AFA78 001AC9D8  41 82 00 20 */	beq lbl_801AFA98
/* 801AFA7C 001AC9DC  40 80 00 10 */	bge lbl_801AFA8C
/* 801AFA80 001AC9E0  2C 00 00 00 */	cmpwi r0, 0
/* 801AFA84 001AC9E4  40 80 00 94 */	bge lbl_801AFB18
/* 801AFA88 001AC9E8  48 00 02 4C */	b lbl_801AFCD4
lbl_801AFA8C:
/* 801AFA8C 001AC9EC  2C 00 00 03 */	cmpwi r0, 3
/* 801AFA90 001AC9F0  40 80 02 44 */	bge lbl_801AFCD4
/* 801AFA94 001AC9F4  48 00 02 18 */	b lbl_801AFCAC
lbl_801AFA98:
/* 801AFA98 001AC9F8  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 801AFA9C 001AC9FC  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801AFAA0 001ACA00  2C 00 00 01 */	cmpwi r0, 1
/* 801AFAA4 001ACA04  40 82 00 10 */	bne lbl_801AFAB4
/* 801AFAA8 001ACA08  38 00 00 00 */	li r0, 0
/* 801AFAAC 001ACA0C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801AFAB0 001ACA10  48 00 02 24 */	b lbl_801AFCD4
lbl_801AFAB4:
/* 801AFAB4 001ACA14  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801AFAB8 001ACA18  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801AFABC 001ACA1C  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801AFAC0 001ACA20  38 80 00 00 */	li r4, 0
/* 801AFAC4 001ACA24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AFAC8 001ACA28  38 A3 AA 20 */	addi r5, r3, lbl_803DAA20@l
/* 801AFACC 001ACA2C  38 00 00 02 */	li r0, 2
/* 801AFAD0 001ACA30  3B A6 00 04 */	addi r29, r6, 4
/* 801AFAD4 001ACA34  90 81 00 20 */	stw r4, 0x20(r1)
/* 801AFAD8 001ACA38  7F A3 EB 78 */	mr r3, r29
/* 801AFADC 001ACA3C  38 80 00 00 */	li r4, 0
/* 801AFAE0 001ACA40  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801AFAE4 001ACA44  90 01 00 24 */	stw r0, 0x24(r1)
/* 801AFAE8 001ACA48  4B F8 19 51 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801AFAEC 001ACA4C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801AFAF0 001ACA50  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801AFAF4 001ACA54  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801AFAF8 001ACA58  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801AFAFC 001ACA5C  90 1D 00 BC */	stw r0, 0xbc(r29)
/* 801AFB00 001ACA60  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801AFB04 001ACA64  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801AFB08 001ACA68  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801AFB0C 001ACA6C  90 7D 00 C0 */	stw r3, 0xc0(r29)
/* 801AFB10 001ACA70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801AFB14 001ACA74  48 00 01 C0 */	b lbl_801AFCD4
lbl_801AFB18:
/* 801AFB18 001ACA78  80 BE 04 50 */	lwz r5, 0x450(r30)
/* 801AFB1C 001ACA7C  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801AFB20 001ACA80  2C 00 00 01 */	cmpwi r0, 1
/* 801AFB24 001ACA84  41 82 01 B0 */	beq lbl_801AFCD4
/* 801AFB28 001ACA88  2C 00 00 00 */	cmpwi r0, 0
/* 801AFB2C 001ACA8C  41 82 00 A4 */	beq lbl_801AFBD0
/* 801AFB30 001ACA90  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801AFB34 001ACA94  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801AFB38 001ACA98  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801AFB3C 001ACA9C  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 801AFB40 001ACAA0  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801AFB44 001ACAA4  FC 40 10 50 */	fneg f2, f2
/* 801AFB48 001ACAA8  FC 20 08 50 */	fneg f1, f1
/* 801AFB4C 001ACAAC  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 801AFB50 001ACAB0  FC 00 00 50 */	fneg f0, f0
/* 801AFB54 001ACAB4  38 C0 00 03 */	li r6, 3
/* 801AFB58 001ACAB8  38 00 00 02 */	li r0, 2
/* 801AFB5C 001ACABC  3B A5 00 04 */	addi r29, r5, 4
/* 801AFB60 001ACAC0  90 81 00 34 */	stw r4, 0x34(r1)
/* 801AFB64 001ACAC4  38 A3 AA 50 */	addi r5, r3, lbl_803DAA50@l
/* 801AFB68 001ACAC8  7F A3 EB 78 */	mr r3, r29
/* 801AFB6C 001ACACC  38 80 00 03 */	li r4, 3
/* 801AFB70 001ACAD0  90 C1 00 38 */	stw r6, 0x38(r1)
/* 801AFB74 001ACAD4  90 A1 00 34 */	stw r5, 0x34(r1)
/* 801AFB78 001ACAD8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801AFB7C 001ACADC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801AFB80 001ACAE0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801AFB84 001ACAE4  90 01 00 48 */	stw r0, 0x48(r1)
/* 801AFB88 001ACAE8  4B F8 18 B1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801AFB8C 001ACAEC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801AFB90 001ACAF0  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 801AFB94 001ACAF4  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 801AFB98 001ACAF8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801AFB9C 001ACAFC  90 1D 00 E0 */	stw r0, 0xe0(r29)
/* 801AFBA0 001ACB00  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801AFBA4 001ACB04  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 801AFBA8 001ACB08  80 61 00 40 */	lwz r3, 0x40(r1)
/* 801AFBAC 001ACB0C  90 BD 00 E4 */	stw r5, 0xe4(r29)
/* 801AFBB0 001ACB10  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 801AFBB4 001ACB14  90 7D 00 E8 */	stw r3, 0xe8(r29)
/* 801AFBB8 001ACB18  80 61 00 48 */	lwz r3, 0x48(r1)
/* 801AFBBC 001ACB1C  90 BD 00 EC */	stw r5, 0xec(r29)
/* 801AFBC0 001ACB20  90 81 00 34 */	stw r4, 0x34(r1)
/* 801AFBC4 001ACB24  90 7D 00 F0 */	stw r3, 0xf0(r29)
/* 801AFBC8 001ACB28  90 01 00 34 */	stw r0, 0x34(r1)
/* 801AFBCC 001ACB2C  48 00 01 08 */	b lbl_801AFCD4
lbl_801AFBD0:
/* 801AFBD0 001ACB30  38 00 00 02 */	li r0, 2
/* 801AFBD4 001ACB34  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801AFBD8 001ACB38  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801AFBDC 001ACB3C  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 801AFBE0 001ACB40  38 61 00 4C */	addi r3, r1, 0x4c
/* 801AFBE4 001ACB44  38 81 00 10 */	addi r4, r1, 0x10
/* 801AFBE8 001ACB48  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801AFBEC 001ACB4C  38 A1 00 28 */	addi r5, r1, 0x28
/* 801AFBF0 001ACB50  C0 1E 08 A4 */	lfs f0, 0x8a4(r30)
/* 801AFBF4 001ACB54  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801AFBF8 001ACB58  C0 5E 08 A8 */	lfs f2, 0x8a8(r30)
/* 801AFBFC 001ACB5C  EC A4 00 2A */	fadds f5, f4, f0
/* 801AFC00 001ACB60  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801AFC04 001ACB64  C0 1E 08 A0 */	lfs f0, 0x8a0(r30)
/* 801AFC08 001ACB68  EC 43 10 2A */	fadds f2, f3, f2
/* 801AFC0C 001ACB6C  EC 01 00 2A */	fadds f0, f1, f0
/* 801AFC10 001ACB70  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 801AFC14 001ACB74  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801AFC18 001ACB78  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801AFC1C 001ACB7C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801AFC20 001ACB80  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801AFC24 001ACB84  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801AFC28 001ACB88  48 16 3E E9 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801AFC2C 001ACB8C  38 61 00 7C */	addi r3, r1, 0x7c
/* 801AFC30 001ACB90  38 81 00 4C */	addi r4, r1, 0x4c
/* 801AFC34 001ACB94  48 16 2F 41 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801AFC38 001ACB98  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801AFC3C 001ACB9C  38 7E 00 34 */	addi r3, r30, 0x34
/* 801AFC40 001ACBA0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801AFC44 001ACBA4  38 81 00 7C */	addi r4, r1, 0x7c
/* 801AFC48 001ACBA8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801AFC4C 001ACBAC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801AFC50 001ACBB0  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 801AFC54 001ACBB4  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 801AFC58 001ACBB8  48 16 2E E9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801AFC5C 001ACBBC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801AFC60 001ACBC0  38 E0 00 01 */	li r7, 1
/* 801AFC64 001ACBC4  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 801AFC68 001ACBC8  7F C3 F3 78 */	mr r3, r30
/* 801AFC6C 001ACBCC  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 801AFC70 001ACBD0  7F E5 FB 78 */	mr r5, r31
/* 801AFC74 001ACBD4  38 80 00 0E */	li r4, 0xe
/* 801AFC78 001ACBD8  38 C0 FF FF */	li r6, -1
/* 801AFC7C 001ACBDC  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801AFC80 001ACBE0  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 801AFC84 001ACBE4  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 801AFC88 001ACBE8  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801AFC8C 001ACBEC  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 801AFC90 001ACBF0  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 801AFC94 001ACBF4  4B EA 14 2D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801AFC98 001ACBF8  88 1E 08 E5 */	lbz r0, 0x8e5(r30)
/* 801AFC9C 001ACBFC  38 60 00 01 */	li r3, 1
/* 801AFCA0 001ACC00  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801AFCA4 001ACC04  98 1E 08 E5 */	stb r0, 0x8e5(r30)
/* 801AFCA8 001ACC08  48 00 00 2C */	b lbl_801AFCD4
lbl_801AFCAC:
/* 801AFCAC 001ACC0C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801AFCB0 001ACC10  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801AFCB4 001ACC14  2C 00 00 00 */	cmpwi r0, 0
/* 801AFCB8 001ACC18  41 82 00 1C */	beq lbl_801AFCD4
/* 801AFCBC 001ACC1C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801AFCC0 001ACC20  7F E3 FB 78 */	mr r3, r31
/* 801AFCC4 001ACC24  38 81 00 0C */	addi r4, r1, 0xc
/* 801AFCC8 001ACC28  B0 01 00 08 */	sth r0, 8(r1)
/* 801AFCCC 001ACC2C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AFCD0 001ACC30  4B E9 C5 9D */	bl FreeScriptObject__13CStateManagerF9TUniqueId
lbl_801AFCD4:
/* 801AFCD4 001ACC34  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801AFCD8 001ACC38  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801AFCDC 001ACC3C  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801AFCE0 001ACC40  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 801AFCE4 001ACC44  7C 08 03 A6 */	mtlr r0
/* 801AFCE8 001ACC48  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801AFCEC 001ACC4C  4E 80 00 20 */	blr

.global Cover__9CFlaahgraFR13CStateManager9EStateMsgf
Cover__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801AFCF0 001ACC50  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801AFCF4 001ACC54  7C 08 02 A6 */	mflr r0
/* 801AFCF8 001ACC58  2C 05 00 01 */	cmpwi r5, 1
/* 801AFCFC 001ACC5C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801AFD00 001ACC60  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801AFD04 001ACC64  7C 7F 1B 78 */	mr r31, r3
/* 801AFD08 001ACC68  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801AFD0C 001ACC6C  7C 9E 23 78 */	mr r30, r4
/* 801AFD10 001ACC70  41 82 00 80 */	beq lbl_801AFD90
/* 801AFD14 001ACC74  40 80 00 10 */	bge lbl_801AFD24
/* 801AFD18 001ACC78  2C 05 00 00 */	cmpwi r5, 0
/* 801AFD1C 001ACC7C  40 80 00 14 */	bge lbl_801AFD30
/* 801AFD20 001ACC80  48 00 03 70 */	b lbl_801B0090
lbl_801AFD24:
/* 801AFD24 001ACC84  2C 05 00 03 */	cmpwi r5, 3
/* 801AFD28 001ACC88  40 80 03 68 */	bge lbl_801B0090
/* 801AFD2C 001ACC8C  48 00 03 08 */	b lbl_801B0034
lbl_801AFD30:
/* 801AFD30 001ACC90  7F E4 FB 78 */	mr r4, r31
/* 801AFD34 001ACC94  7F C5 F3 78 */	mr r5, r30
/* 801AFD38 001ACC98  38 61 00 18 */	addi r3, r1, 0x18
/* 801AFD3C 001ACC9C  4B FF E2 69 */	bl sub_801adfa4
/* 801AFD40 001ACCA0  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801AFD44 001ACCA4  38 80 00 04 */	li r4, 4
/* 801AFD48 001ACCA8  B0 1F 07 7C */	sth r0, 0x77c(r31)
/* 801AFD4C 001ACCAC  A0 7F 07 7C */	lhz r3, 0x77c(r31)
/* 801AFD50 001ACCB0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801AFD54 001ACCB4  7C 03 00 40 */	cmplw r3, r0
/* 801AFD58 001ACCB8  41 82 00 08 */	beq lbl_801AFD60
/* 801AFD5C 001ACCBC  38 80 00 01 */	li r4, 1
lbl_801AFD60:
/* 801AFD60 001ACCC0  90 9F 05 68 */	stw r4, 0x568(r31)
/* 801AFD64 001ACCC4  38 81 00 14 */	addi r4, r1, 0x14
/* 801AFD68 001ACCC8  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801AFD6C 001ACCCC  A0 03 00 08 */	lhz r0, 8(r3)
/* 801AFD70 001ACCD0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801AFD74 001ACCD4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801AFD78 001ACCD8  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 801AFD7C 001ACCDC  4B FC 54 9D */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801AFD80 001ACCE0  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 801AFD84 001ACCE4  38 80 00 01 */	li r4, 1
/* 801AFD88 001ACCE8  4B FC 54 9D */	bl SetActive__13CBoneTrackingFb
/* 801AFD8C 001ACCEC  48 00 03 04 */	b lbl_801B0090
lbl_801AFD90:
/* 801AFD90 001ACCF0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801AFD94 001ACCF4  2C 00 00 01 */	cmpwi r0, 1
/* 801AFD98 001ACCF8  41 82 00 20 */	beq lbl_801AFDB8
/* 801AFD9C 001ACCFC  40 80 00 10 */	bge lbl_801AFDAC
/* 801AFDA0 001ACD00  2C 00 00 00 */	cmpwi r0, 0
/* 801AFDA4 001ACD04  40 80 01 50 */	bge lbl_801AFEF4
/* 801AFDA8 001ACD08  48 00 02 E8 */	b lbl_801B0090
lbl_801AFDAC:
/* 801AFDAC 001ACD0C  2C 00 00 03 */	cmpwi r0, 3
/* 801AFDB0 001ACD10  40 80 02 E0 */	bge lbl_801B0090
/* 801AFDB4 001ACD14  48 00 02 10 */	b lbl_801AFFC4
lbl_801AFDB8:
/* 801AFDB8 001ACD18  A0 1F 07 7C */	lhz r0, 0x77c(r31)
/* 801AFDBC 001ACD1C  7F C3 F3 78 */	mr r3, r30
/* 801AFDC0 001ACD20  38 81 00 0C */	addi r4, r1, 0xc
/* 801AFDC4 001ACD24  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801AFDC8 001ACD28  4B E9 C7 DD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AFDCC 001ACD2C  28 03 00 00 */	cmplwi r3, 0
/* 801AFDD0 001ACD30  41 82 01 18 */	beq lbl_801AFEE8
/* 801AFDD4 001ACD34  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801AFDD8 001ACD38  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 801AFDDC 001ACD3C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801AFDE0 001ACD40  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801AFDE4 001ACD44  EC 43 10 28 */	fsubs f2, f3, f2
/* 801AFDE8 001ACD48  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 801AFDEC 001ACD4C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801AFDF0 001ACD50  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801AFDF4 001ACD54  EC 21 00 28 */	fsubs f1, f1, f0
/* 801AFDF8 001ACD58  EC 04 18 28 */	fsubs f0, f4, f3
/* 801AFDFC 001ACD5C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801AFE00 001ACD60  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 801AFE04 001ACD64  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801AFE08 001ACD68  48 16 43 F9 */	bl __ct__9CVector2fFff
/* 801AFE0C 001ACD6C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801AFE10 001ACD70  38 61 00 24 */	addi r3, r1, 0x24
/* 801AFE14 001ACD74  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801AFE18 001ACD78  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801AFE1C 001ACD7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801AFE20 001ACD80  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801AFE24 001ACD84  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801AFE28 001ACD88  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801AFE2C 001ACD8C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801AFE30 001ACD90  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801AFE34 001ACD94  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801AFE38 001ACD98  48 16 43 C9 */	bl __ct__9CVector2fFff
/* 801AFE3C 001ACD9C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801AFE40 001ACDA0  38 61 00 34 */	addi r3, r1, 0x34
/* 801AFE44 001ACDA4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801AFE48 001ACDA8  38 81 00 3C */	addi r4, r1, 0x3c
/* 801AFE4C 001ACDAC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801AFE50 001ACDB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801AFE54 001ACDB4  48 16 41 71 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801AFE58 001ACDB8  C0 02 A8 F4 */	lfs f0, lbl_805AC614@sda21(r2)
/* 801AFE5C 001ACDBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AFE60 001ACDC0  40 81 00 70 */	ble lbl_801AFED0
/* 801AFE64 001ACDC4  38 61 00 5C */	addi r3, r1, 0x5c
/* 801AFE68 001ACDC8  48 16 48 91 */	bl CanBeNormalized__9CVector3fCFv
/* 801AFE6C 001ACDCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AFE70 001ACDD0  41 82 00 60 */	beq lbl_801AFED0
/* 801AFE74 001ACDD4  38 61 00 44 */	addi r3, r1, 0x44
/* 801AFE78 001ACDD8  38 81 00 5C */	addi r4, r1, 0x5c
/* 801AFE7C 001ACDDC  48 16 49 D5 */	bl AsNormalized__9CVector3fCFv
/* 801AFE80 001ACDE0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801AFE84 001ACDE4  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801AFE88 001ACDE8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 801AFE8C 001ACDEC  38 81 00 84 */	addi r4, r1, 0x84
/* 801AFE90 001ACDF0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 801AFE94 001ACDF4  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801AFE98 001ACDF8  C0 83 00 08 */	lfs f4, 8(r3)
/* 801AFE9C 001ACDFC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801AFEA0 001ACE00  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801AFEA4 001ACE04  D0 C1 00 84 */	stfs f6, 0x84(r1)
/* 801AFEA8 001ACE08  D0 A1 00 88 */	stfs f5, 0x88(r1)
/* 801AFEAC 001ACE0C  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 801AFEB0 001ACE10  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 801AFEB4 001ACE14  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 801AFEB8 001ACE18  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 801AFEBC 001ACE1C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801AFEC0 001ACE20  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801AFEC4 001ACE24  38 63 00 04 */	addi r3, r3, 4
/* 801AFEC8 001ACE28  4B F8 18 51 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801AFECC 001ACE2C  48 00 01 C4 */	b lbl_801B0090
lbl_801AFED0:
/* 801AFED0 001ACE30  38 00 00 00 */	li r0, 0
/* 801AFED4 001ACE34  38 80 00 00 */	li r4, 0
/* 801AFED8 001ACE38  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801AFEDC 001ACE3C  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 801AFEE0 001ACE40  4B FC 53 45 */	bl SetActive__13CBoneTrackingFb
/* 801AFEE4 001ACE44  48 00 01 AC */	b lbl_801B0090
lbl_801AFEE8:
/* 801AFEE8 001ACE48  38 00 00 04 */	li r0, 4
/* 801AFEEC 001ACE4C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801AFEF0 001ACE50  48 00 01 A0 */	b lbl_801B0090
lbl_801AFEF4:
/* 801AFEF4 001ACE54  80 FF 04 50 */	lwz r7, 0x450(r31)
/* 801AFEF8 001ACE58  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801AFEFC 001ACE5C  2C 00 00 07 */	cmpwi r0, 7
/* 801AFF00 001ACE60  40 82 00 10 */	bne lbl_801AFF10
/* 801AFF04 001ACE64  38 00 00 02 */	li r0, 2
/* 801AFF08 001ACE68  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801AFF0C 001ACE6C  48 00 01 84 */	b lbl_801B0090
lbl_801AFF10:
/* 801AFF10 001ACE70  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 801AFF14 001ACE74  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801AFF18 001ACE78  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801AFF1C 001ACE7C  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801AFF20 001ACE80  38 A5 AA 68 */	addi r5, r5, lbl_803DAA68@l
/* 801AFF24 001ACE84  54 00 10 3A */	slwi r0, r0, 2
/* 801AFF28 001ACE88  38 C2 A8 A4 */	addi r6, r2, lbl_805AC5C4@sda21
/* 801AFF2C 001ACE8C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801AFF30 001ACE90  7D 06 00 2E */	lwzx r8, r6, r0
/* 801AFF34 001ACE94  38 C0 00 05 */	li r6, 5
/* 801AFF38 001ACE98  C0 03 00 08 */	lfs f0, 8(r3)
/* 801AFF3C 001ACE9C  38 00 00 00 */	li r0, 0
/* 801AFF40 001ACEA0  3B E7 00 04 */	addi r31, r7, 4
/* 801AFF44 001ACEA4  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801AFF48 001ACEA8  90 A1 00 68 */	stw r5, 0x68(r1)
/* 801AFF4C 001ACEAC  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801AFF50 001ACEB0  38 80 00 05 */	li r4, 5
/* 801AFF54 001ACEB4  7F E3 FB 78 */	mr r3, r31
/* 801AFF58 001ACEB8  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 801AFF5C 001ACEBC  90 A1 00 68 */	stw r5, 0x68(r1)
/* 801AFF60 001ACEC0  91 01 00 70 */	stw r8, 0x70(r1)
/* 801AFF64 001ACEC4  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801AFF68 001ACEC8  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 801AFF6C 001ACECC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801AFF70 001ACED0  98 01 00 80 */	stb r0, 0x80(r1)
/* 801AFF74 001ACED4  4B F8 14 C5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801AFF78 001ACED8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 801AFF7C 001ACEDC  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801AFF80 001ACEE0  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801AFF84 001ACEE4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801AFF88 001ACEE8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801AFF8C 001ACEEC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801AFF90 001ACEF0  80 61 00 70 */	lwz r3, 0x70(r1)
/* 801AFF94 001ACEF4  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 801AFF98 001ACEF8  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801AFF9C 001ACEFC  80 61 00 78 */	lwz r3, 0x78(r1)
/* 801AFFA0 001ACF00  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801AFFA4 001ACF04  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 801AFFA8 001ACF08  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801AFFAC 001ACF0C  88 61 00 80 */	lbz r3, 0x80(r1)
/* 801AFFB0 001ACF10  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801AFFB4 001ACF14  90 81 00 68 */	stw r4, 0x68(r1)
/* 801AFFB8 001ACF18  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801AFFBC 001ACF1C  90 01 00 68 */	stw r0, 0x68(r1)
/* 801AFFC0 001ACF20  48 00 00 D0 */	b lbl_801B0090
lbl_801AFFC4:
/* 801AFFC4 001ACF24  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801AFFC8 001ACF28  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801AFFCC 001ACF2C  2C 00 00 07 */	cmpwi r0, 7
/* 801AFFD0 001ACF30  41 82 00 10 */	beq lbl_801AFFE0
/* 801AFFD4 001ACF34  38 00 00 04 */	li r0, 4
/* 801AFFD8 001ACF38  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801AFFDC 001ACF3C  48 00 00 B4 */	b lbl_801B0090
lbl_801AFFE0:
/* 801AFFE0 001ACF40  A0 1F 07 7C */	lhz r0, 0x77c(r31)
/* 801AFFE4 001ACF44  7F C3 F3 78 */	mr r3, r30
/* 801AFFE8 001ACF48  38 81 00 08 */	addi r4, r1, 8
/* 801AFFEC 001ACF4C  B0 01 00 08 */	sth r0, 8(r1)
/* 801AFFF0 001ACF50  4B E9 C5 B5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801AFFF4 001ACF54  28 03 00 00 */	cmplwi r3, 0
/* 801AFFF8 001ACF58  41 82 00 98 */	beq lbl_801B0090
/* 801AFFFC 001ACF5C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801B0000 001ACF60  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801B0004 001ACF64  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801B0008 001ACF68  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801B000C 001ACF6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B0010 001ACF70  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801B0014 001ACF74  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801B0018 001ACF78  EC 64 18 28 */	fsubs f3, f4, f3
/* 801B001C 001ACF7C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B0020 001ACF80  EC 22 08 28 */	fsubs f1, f2, f1
/* 801B0024 001ACF84  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801B0028 001ACF88  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 801B002C 001ACF8C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 801B0030 001ACF90  48 00 00 60 */	b lbl_801B0090
lbl_801B0034:
/* 801B0034 001ACF94  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801B0038 001ACF98  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B003C 001ACF9C  2C 00 00 07 */	cmpwi r0, 7
/* 801B0040 001ACFA0  40 82 00 30 */	bne lbl_801B0070
/* 801B0044 001ACFA4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0048 001ACFA8  38 00 00 0C */	li r0, 0xc
/* 801B004C 001ACFAC  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B0050 001ACFB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 801B0054 001ACFB4  38 64 00 04 */	addi r3, r4, 4
/* 801B0058 001ACFB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 801B005C 001ACFBC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 801B0060 001ACFC0  4B F8 17 59 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B0064 001ACFC4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0068 001ACFC8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B006C 001ACFCC  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_801B0070:
/* 801B0070 001ACFD0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801B0074 001ACFD4  B0 1F 07 7C */	sth r0, 0x77c(r31)
/* 801B0078 001ACFD8  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 801B007C 001ACFDC  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 801B0080 001ACFE0  80 1F 07 B0 */	lwz r0, 0x7b0(r31)
/* 801B0084 001ACFE4  7C 00 00 34 */	cntlzw r0, r0
/* 801B0088 001ACFE8  54 00 D9 7E */	srwi r0, r0, 5
/* 801B008C 001ACFEC  90 1F 07 B0 */	stw r0, 0x7b0(r31)
lbl_801B0090:
/* 801B0090 001ACFF0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801B0094 001ACFF4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801B0098 001ACFF8  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801B009C 001ACFFC  7C 08 03 A6 */	mtlr r0
/* 801B00A0 001AD000  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801B00A4 001AD004  4E 80 00 20 */	blr

.global Dizzy__9CFlaahgraFR13CStateManager9EStateMsgf
Dizzy__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B00A8 001AD008  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B00AC 001AD00C  7C 08 02 A6 */	mflr r0
/* 801B00B0 001AD010  2C 05 00 01 */	cmpwi r5, 1
/* 801B00B4 001AD014  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B00B8 001AD018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B00BC 001AD01C  7C 7F 1B 78 */	mr r31, r3
/* 801B00C0 001AD020  41 82 00 40 */	beq lbl_801B0100
/* 801B00C4 001AD024  40 80 00 10 */	bge lbl_801B00D4
/* 801B00C8 001AD028  2C 05 00 00 */	cmpwi r5, 0
/* 801B00CC 001AD02C  40 80 00 14 */	bge lbl_801B00E0
/* 801B00D0 001AD030  48 00 01 14 */	b lbl_801B01E4
lbl_801B00D4:
/* 801B00D4 001AD034  2C 05 00 03 */	cmpwi r5, 3
/* 801B00D8 001AD038  40 80 01 0C */	bge lbl_801B01E4
/* 801B00DC 001AD03C  48 00 00 B8 */	b lbl_801B0194
lbl_801B00E0:
/* 801B00E0 001AD040  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B00E4 001AD044  38 60 00 00 */	li r3, 0
/* 801B00E8 001AD048  D0 1F 07 B8 */	stfs f0, 0x7b8(r31)
/* 801B00EC 001AD04C  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 801B00F0 001AD050  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B00F4 001AD054  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801B00F8 001AD058  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B00FC 001AD05C  48 00 00 E8 */	b lbl_801B01E4
lbl_801B0100:
/* 801B0100 001AD060  C0 1F 07 B8 */	lfs f0, 0x7b8(r31)
/* 801B0104 001AD064  EC 00 08 2A */	fadds f0, f0, f1
/* 801B0108 001AD068  D0 1F 07 B8 */	stfs f0, 0x7b8(r31)
/* 801B010C 001AD06C  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 801B0110 001AD070  C0 5F 07 B8 */	lfs f2, 0x7b8(r31)
/* 801B0114 001AD074  2C 00 00 02 */	cmpwi r0, 2
/* 801B0118 001AD078  40 80 00 0C */	bge lbl_801B0124
/* 801B011C 001AD07C  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 801B0120 001AD080  48 00 00 10 */	b lbl_801B0130
lbl_801B0124:
/* 801B0124 001AD084  C0 22 A8 F8 */	lfs f1, lbl_805AC618@sda21(r2)
/* 801B0128 001AD088  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 801B012C 001AD08C  EC 01 00 2A */	fadds f0, f1, f0
lbl_801B0130:
/* 801B0130 001AD090  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B0134 001AD094  4C 41 13 82 */	cror 2, 1, 2
/* 801B0138 001AD098  40 82 00 50 */	bne lbl_801B0188
/* 801B013C 001AD09C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0140 001AD0A0  38 00 00 0A */	li r0, 0xa
/* 801B0144 001AD0A4  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801B0148 001AD0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B014C 001AD0AC  38 81 00 10 */	addi r4, r1, 0x10
/* 801B0150 001AD0B0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B0154 001AD0B4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B0158 001AD0B8  38 63 00 04 */	addi r3, r3, 4
/* 801B015C 001AD0BC  4B F8 16 5D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B0160 001AD0C0  34 01 00 10 */	addic. r0, r1, 0x10
/* 801B0164 001AD0C4  41 82 00 10 */	beq lbl_801B0174
/* 801B0168 001AD0C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B016C 001AD0CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0170 001AD0D0  90 01 00 10 */	stw r0, 0x10(r1)
lbl_801B0174:
/* 801B0174 001AD0D4  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B0178 001AD0D8  38 60 00 01 */	li r3, 1
/* 801B017C 001AD0DC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801B0180 001AD0E0  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B0184 001AD0E4  48 00 00 60 */	b lbl_801B01E4
lbl_801B0188:
/* 801B0188 001AD0E8  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B018C 001AD0EC  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 801B0190 001AD0F0  48 00 00 54 */	b lbl_801B01E4
lbl_801B0194:
/* 801B0194 001AD0F4  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B0198 001AD0F8  38 60 00 00 */	li r3, 0
/* 801B019C 001AD0FC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801B01A0 001AD100  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B01A4 001AD104  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B01A8 001AD108  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801B01AC 001AD10C  38 00 00 0A */	li r0, 0xa
/* 801B01B0 001AD110  38 81 00 08 */	addi r4, r1, 8
/* 801B01B4 001AD114  C0 1F 08 14 */	lfs f0, 0x814(r31)
/* 801B01B8 001AD118  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 801B01BC 001AD11C  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 801B01C0 001AD120  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 801B01C4 001AD124  90 61 00 08 */	stw r3, 8(r1)
/* 801B01C8 001AD128  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B01CC 001AD12C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B01D0 001AD130  38 63 00 04 */	addi r3, r3, 4
/* 801B01D4 001AD134  4B F8 15 E5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B01D8 001AD138  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B01DC 001AD13C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B01E0 001AD140  90 01 00 08 */	stw r0, 8(r1)
lbl_801B01E4:
/* 801B01E4 001AD144  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B01E8 001AD148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B01EC 001AD14C  7C 08 03 A6 */	mtlr r0
/* 801B01F0 001AD150  38 21 00 20 */	addi r1, r1, 0x20

.global sub_801b01f4
sub_801b01f4:
/* 801B01F4 001AD154  4E 80 00 20 */	blr

.global ProjectileAttack__9CFlaahgraFR13CStateManager9EStateMsgf
ProjectileAttack__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B01F8 001AD158  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801B01FC 001AD15C  7C 08 02 A6 */	mflr r0
/* 801B0200 001AD160  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B0204 001AD164  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801B0208 001AD168  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801B020C 001AD16C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B0210 001AD170  2C 05 00 01 */	cmpwi r5, 1
/* 801B0214 001AD174  7C 7F 1B 78 */	mr r31, r3
/* 801B0218 001AD178  41 82 00 3C */	beq lbl_801B0254
/* 801B021C 001AD17C  40 80 00 10 */	bge lbl_801B022C
/* 801B0220 001AD180  2C 05 00 00 */	cmpwi r5, 0
/* 801B0224 001AD184  40 80 00 14 */	bge lbl_801B0238
/* 801B0228 001AD188  48 00 02 A0 */	b lbl_801B04C8
lbl_801B022C:
/* 801B022C 001AD18C  2C 05 00 03 */	cmpwi r5, 3
/* 801B0230 001AD190  40 80 02 98 */	bge lbl_801B04C8
/* 801B0234 001AD194  48 00 02 08 */	b lbl_801B043C
lbl_801B0238:
/* 801B0238 001AD198  38 00 00 00 */	li r0, 0
/* 801B023C 001AD19C  7C 85 23 78 */	mr r5, r4
/* 801B0240 001AD1A0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B0244 001AD1A4  38 80 00 0A */	li r4, 0xa
/* 801B0248 001AD1A8  38 C0 FF FF */	li r6, -1
/* 801B024C 001AD1AC  4B EA 0E 75 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801B0250 001AD1B0  48 00 02 78 */	b lbl_801B04C8
lbl_801B0254:
/* 801B0254 001AD1B4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801B0258 001AD1B8  2C 00 00 01 */	cmpwi r0, 1
/* 801B025C 001AD1BC  41 82 02 6C */	beq lbl_801B04C8
/* 801B0260 001AD1C0  40 80 00 10 */	bge lbl_801B0270
/* 801B0264 001AD1C4  2C 00 00 00 */	cmpwi r0, 0
/* 801B0268 001AD1C8  40 80 00 14 */	bge lbl_801B027C
/* 801B026C 001AD1CC  48 00 02 5C */	b lbl_801B04C8
lbl_801B0270:
/* 801B0270 001AD1D0  2C 00 00 03 */	cmpwi r0, 3
/* 801B0274 001AD1D4  40 80 02 54 */	bge lbl_801B04C8
/* 801B0278 001AD1D8  48 00 01 70 */	b lbl_801B03E8
lbl_801B027C:
/* 801B027C 001AD1DC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B0280 001AD1E0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B0284 001AD1E4  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B0288 001AD1E8  40 82 00 10 */	bne lbl_801B0298
/* 801B028C 001AD1EC  38 00 00 02 */	li r0, 2
/* 801B0290 001AD1F0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B0294 001AD1F4  48 00 02 34 */	b lbl_801B04C8
lbl_801B0298:
/* 801B0298 001AD1F8  38 00 00 03 */	li r0, 3
/* 801B029C 001AD1FC  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B02A0 001AD200  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B02A4 001AD204  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B02A8 001AD208  41 82 00 14 */	beq lbl_801B02BC
/* 801B02AC 001AD20C  38 00 00 02 */	li r0, 2
/* 801B02B0 001AD210  39 00 00 06 */	li r8, 6
/* 801B02B4 001AD214  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B02B8 001AD218  48 00 00 88 */	b lbl_801B0340
lbl_801B02BC:
/* 801B02BC 001AD21C  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801B02C0 001AD220  C0 02 A8 FC */	lfs f0, lbl_805AC61C@sda21(r2)
/* 801B02C4 001AD224  C0 A3 01 38 */	lfs f5, 0x138(r3)
/* 801B02C8 001AD228  C0 83 01 3C */	lfs f4, 0x13c(r3)
/* 801B02CC 001AD22C  EC 45 01 72 */	fmuls f2, f5, f5
/* 801B02D0 001AD230  C0 C3 01 40 */	lfs f6, 0x140(r3)
/* 801B02D4 001AD234  EC 24 01 32 */	fmuls f1, f4, f4
/* 801B02D8 001AD238  EC 66 01 B2 */	fmuls f3, f6, f6
/* 801B02DC 001AD23C  EC 22 08 2A */	fadds f1, f2, f1
/* 801B02E0 001AD240  EC 23 08 2A */	fadds f1, f3, f1
/* 801B02E4 001AD244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B02E8 001AD248  40 81 00 54 */	ble lbl_801B033C
/* 801B02EC 001AD24C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 801B02F0 001AD250  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 801B02F4 001AD254  EC 20 01 32 */	fmuls f1, f0, f4
/* 801B02F8 001AD258  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 801B02FC 001AD25C  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B0300 001AD260  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 801B0304 001AD264  EC 23 09 BA */	fmadds f1, f3, f6, f1
/* 801B0308 001AD268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B030C 001AD26C  40 80 00 1C */	bge lbl_801B0328
/* 801B0310 001AD270  38 60 00 01 */	li r3, 1
/* 801B0314 001AD274  38 00 00 00 */	li r0, 0
/* 801B0318 001AD278  90 7F 07 B4 */	stw r3, 0x7b4(r31)
/* 801B031C 001AD27C  39 00 00 04 */	li r8, 4
/* 801B0320 001AD280  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 801B0324 001AD284  48 00 00 1C */	b lbl_801B0340
lbl_801B0328:
/* 801B0328 001AD288  38 00 00 00 */	li r0, 0
/* 801B032C 001AD28C  39 00 00 03 */	li r8, 3
/* 801B0330 001AD290  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B0334 001AD294  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 801B0338 001AD298  48 00 00 08 */	b lbl_801B0340
lbl_801B033C:
/* 801B033C 001AD29C  39 00 00 07 */	li r8, 7
lbl_801B0340:
/* 801B0340 001AD2A0  80 E4 08 4C */	lwz r7, 0x84c(r4)
/* 801B0344 001AD2A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0348 001AD2A8  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B034C 001AD2AC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B0350 001AD2B0  C0 47 00 60 */	lfs f2, 0x60(r7)
/* 801B0354 001AD2B4  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 801B0358 001AD2B8  C0 27 00 50 */	lfs f1, 0x50(r7)
/* 801B035C 001AD2BC  38 C0 00 06 */	li r6, 6
/* 801B0360 001AD2C0  C0 07 00 40 */	lfs f0, 0x40(r7)
/* 801B0364 001AD2C4  38 00 00 00 */	li r0, 0
/* 801B0368 001AD2C8  3B E3 00 04 */	addi r31, r3, 4
/* 801B036C 001AD2CC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801B0370 001AD2D0  38 A4 A9 CC */	addi r5, r4, lbl_803DA9CC@l
/* 801B0374 001AD2D4  38 80 00 06 */	li r4, 6
/* 801B0378 001AD2D8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801B037C 001AD2DC  7F E3 FB 78 */	mr r3, r31
/* 801B0380 001AD2E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801B0384 001AD2E4  91 01 00 18 */	stw r8, 0x18(r1)
/* 801B0388 001AD2E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B038C 001AD2EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B0390 001AD2F0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801B0394 001AD2F4  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B0398 001AD2F8  4B F8 10 A1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B039C 001AD2FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B03A0 001AD300  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801B03A4 001AD304  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 801B03A8 001AD308  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B03AC 001AD30C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801B03B0 001AD310  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B03B4 001AD314  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801B03B8 001AD318  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801B03BC 001AD31C  90 7F 01 30 */	stw r3, 0x130(r31)
/* 801B03C0 001AD320  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B03C4 001AD324  90 BF 01 34 */	stw r5, 0x134(r31)
/* 801B03C8 001AD328  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801B03CC 001AD32C  90 7F 01 38 */	stw r3, 0x138(r31)
/* 801B03D0 001AD330  88 61 00 28 */	lbz r3, 0x28(r1)
/* 801B03D4 001AD334  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 801B03D8 001AD338  90 81 00 10 */	stw r4, 0x10(r1)
/* 801B03DC 001AD33C  98 7F 01 40 */	stb r3, 0x140(r31)
/* 801B03E0 001AD340  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B03E4 001AD344  48 00 00 E4 */	b lbl_801B04C8
lbl_801B03E8:
/* 801B03E8 001AD348  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 801B03EC 001AD34C  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801B03F0 001AD350  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B03F4 001AD354  41 82 00 10 */	beq lbl_801B0404
/* 801B03F8 001AD358  38 00 00 04 */	li r0, 4
/* 801B03FC 001AD35C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B0400 001AD360  48 00 00 C8 */	b lbl_801B04C8
lbl_801B0404:
/* 801B0404 001AD364  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801B0408 001AD368  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801B040C 001AD36C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801B0410 001AD370  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801B0414 001AD374  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801B0418 001AD378  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B041C 001AD37C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801B0420 001AD380  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801B0424 001AD384  EC 64 18 28 */	fsubs f3, f4, f3
/* 801B0428 001AD388  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 801B042C 001AD38C  EC 02 08 28 */	fsubs f0, f2, f1
/* 801B0430 001AD390  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 801B0434 001AD394  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 801B0438 001AD398  48 00 00 90 */	b lbl_801B04C8
lbl_801B043C:
/* 801B043C 001AD39C  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 801B0440 001AD3A0  3C 00 43 30 */	lis r0, 0x4330
/* 801B0444 001AD3A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B0448 001AD3A8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801B044C 001AD3AC  C8 22 A9 00 */	lfd f1, lbl_805AC620@sda21(r2)
/* 801B0450 001AD3B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B0454 001AD3B4  C0 42 A8 DC */	lfs f2, lbl_805AC5FC@sda21(r2)
/* 801B0458 001AD3B8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801B045C 001AD3BC  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801B0460 001AD3C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B0464 001AD3C4  EF E2 00 2A */	fadds f31, f2, f0
/* 801B0468 001AD3C8  48 16 20 75 */	bl Float__9CRandom16Fv
/* 801B046C 001AD3CC  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 801B0470 001AD3D0  38 00 FF FF */	li r0, -1
/* 801B0474 001AD3D4  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 801B0478 001AD3D8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801B047C 001AD3DC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 801B0480 001AD3E0  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
/* 801B0484 001AD3E4  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B0488 001AD3E8  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 801B048C 001AD3EC  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801B0490 001AD3F0  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B0494 001AD3F4  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B0498 001AD3F8  40 82 00 30 */	bne lbl_801B04C8
/* 801B049C 001AD3FC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B04A0 001AD400  38 00 00 0C */	li r0, 0xc
/* 801B04A4 001AD404  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B04A8 001AD408  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B04AC 001AD40C  38 64 00 04 */	addi r3, r4, 4
/* 801B04B0 001AD410  38 81 00 08 */	addi r4, r1, 8
/* 801B04B4 001AD414  90 A1 00 08 */	stw r5, 8(r1)
/* 801B04B8 001AD418  4B F8 13 01 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B04BC 001AD41C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B04C0 001AD420  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B04C4 001AD424  90 01 00 08 */	stw r0, 8(r1)
lbl_801B04C8:
/* 801B04C8 001AD428  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801B04CC 001AD42C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B04D0 001AD430  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801B04D4 001AD434  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B04D8 001AD438  7C 08 03 A6 */	mtlr r0
/* 801B04DC 001AD43C  38 21 00 50 */	addi r1, r1, 0x50
/* 801B04E0 001AD440  4E 80 00 20 */	blr

.global SpecialAttack__9CFlaahgraFR13CStateManager9EStateMsgf
SpecialAttack__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B04E4 001AD444  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801B04E8 001AD448  7C 08 02 A6 */	mflr r0
/* 801B04EC 001AD44C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B04F0 001AD450  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801B04F4 001AD454  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801B04F8 001AD458  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B04FC 001AD45C  2C 05 00 01 */	cmpwi r5, 1
/* 801B0500 001AD460  7C 7F 1B 78 */	mr r31, r3
/* 801B0504 001AD464  41 82 00 50 */	beq lbl_801B0554
/* 801B0508 001AD468  40 80 00 10 */	bge lbl_801B0518
/* 801B050C 001AD46C  2C 05 00 00 */	cmpwi r5, 0
/* 801B0510 001AD470  40 80 00 14 */	bge lbl_801B0524
/* 801B0514 001AD474  48 00 02 28 */	b lbl_801B073C
lbl_801B0518:
/* 801B0518 001AD478  2C 05 00 03 */	cmpwi r5, 3
/* 801B051C 001AD47C  40 80 02 20 */	bge lbl_801B073C
/* 801B0520 001AD480  48 00 01 84 */	b lbl_801B06A4
lbl_801B0524:
/* 801B0524 001AD484  39 00 00 00 */	li r8, 0
/* 801B0528 001AD488  38 00 00 03 */	li r0, 3
/* 801B052C 001AD48C  91 1F 05 68 */	stw r8, 0x568(r31)
/* 801B0530 001AD490  7C 85 23 78 */	mr r5, r4
/* 801B0534 001AD494  38 80 00 0A */	li r4, 0xa
/* 801B0538 001AD498  38 C0 FF FF */	li r6, -1
/* 801B053C 001AD49C  88 FF 08 E5 */	lbz r7, 0x8e5(r31)
/* 801B0540 001AD4A0  51 07 3E 30 */	rlwimi r7, r8, 7, 0x18, 0x18
/* 801B0544 001AD4A4  98 FF 08 E5 */	stb r7, 0x8e5(r31)
/* 801B0548 001AD4A8  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B054C 001AD4AC  4B EA 0B 75 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801B0550 001AD4B0  48 00 01 EC */	b lbl_801B073C
lbl_801B0554:
/* 801B0554 001AD4B4  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801B0558 001AD4B8  2C 00 00 01 */	cmpwi r0, 1
/* 801B055C 001AD4BC  41 82 01 E0 */	beq lbl_801B073C
/* 801B0560 001AD4C0  40 80 00 10 */	bge lbl_801B0570
/* 801B0564 001AD4C4  2C 00 00 00 */	cmpwi r0, 0
/* 801B0568 001AD4C8  40 80 00 14 */	bge lbl_801B057C
/* 801B056C 001AD4CC  48 00 01 D0 */	b lbl_801B073C
lbl_801B0570:
/* 801B0570 001AD4D0  2C 00 00 03 */	cmpwi r0, 3
/* 801B0574 001AD4D4  40 80 01 C8 */	bge lbl_801B073C
/* 801B0578 001AD4D8  48 00 00 D8 */	b lbl_801B0650
lbl_801B057C:
/* 801B057C 001AD4DC  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801B0580 001AD4E0  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801B0584 001AD4E4  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B0588 001AD4E8  40 82 00 20 */	bne lbl_801B05A8
/* 801B058C 001AD4EC  38 00 00 02 */	li r0, 2
/* 801B0590 001AD4F0  38 60 00 01 */	li r3, 1
/* 801B0594 001AD4F4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B0598 001AD4F8  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B059C 001AD4FC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801B05A0 001AD500  98 1F 08 E4 */	stb r0, 0x8e4(r31)
/* 801B05A4 001AD504  48 00 01 98 */	b lbl_801B073C
lbl_801B05A8:
/* 801B05A8 001AD508  81 04 08 4C */	lwz r8, 0x84c(r4)
/* 801B05AC 001AD50C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B05B0 001AD510  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 801B05B4 001AD514  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801B05B8 001AD518  C0 48 00 60 */	lfs f2, 0x60(r8)
/* 801B05BC 001AD51C  38 E0 00 06 */	li r7, 6
/* 801B05C0 001AD520  C0 28 00 50 */	lfs f1, 0x50(r8)
/* 801B05C4 001AD524  38 A0 00 08 */	li r5, 8
/* 801B05C8 001AD528  C0 08 00 40 */	lfs f0, 0x40(r8)
/* 801B05CC 001AD52C  38 00 00 00 */	li r0, 0
/* 801B05D0 001AD530  3B E6 00 04 */	addi r31, r6, 4
/* 801B05D4 001AD534  90 81 00 10 */	stw r4, 0x10(r1)
/* 801B05D8 001AD538  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 801B05DC 001AD53C  38 80 00 06 */	li r4, 6
/* 801B05E0 001AD540  90 E1 00 14 */	stw r7, 0x14(r1)
/* 801B05E4 001AD544  7F E3 FB 78 */	mr r3, r31
/* 801B05E8 001AD548  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801B05EC 001AD54C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801B05F0 001AD550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B05F4 001AD554  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B05F8 001AD558  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801B05FC 001AD55C  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B0600 001AD560  4B F8 0E 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B0604 001AD564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B0608 001AD568  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801B060C 001AD56C  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 801B0610 001AD570  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0614 001AD574  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801B0618 001AD578  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B061C 001AD57C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801B0620 001AD580  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801B0624 001AD584  90 7F 01 30 */	stw r3, 0x130(r31)
/* 801B0628 001AD588  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B062C 001AD58C  90 BF 01 34 */	stw r5, 0x134(r31)
/* 801B0630 001AD590  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801B0634 001AD594  90 7F 01 38 */	stw r3, 0x138(r31)
/* 801B0638 001AD598  88 61 00 28 */	lbz r3, 0x28(r1)
/* 801B063C 001AD59C  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 801B0640 001AD5A0  90 81 00 10 */	stw r4, 0x10(r1)
/* 801B0644 001AD5A4  98 7F 01 40 */	stb r3, 0x140(r31)
/* 801B0648 001AD5A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B064C 001AD5AC  48 00 00 F0 */	b lbl_801B073C
lbl_801B0650:
/* 801B0650 001AD5B0  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 801B0654 001AD5B4  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801B0658 001AD5B8  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B065C 001AD5BC  41 82 00 10 */	beq lbl_801B066C
/* 801B0660 001AD5C0  38 00 00 04 */	li r0, 4
/* 801B0664 001AD5C4  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B0668 001AD5C8  48 00 00 D4 */	b lbl_801B073C
lbl_801B066C:
/* 801B066C 001AD5CC  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801B0670 001AD5D0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801B0674 001AD5D4  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801B0678 001AD5D8  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801B067C 001AD5DC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801B0680 001AD5E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B0684 001AD5E4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801B0688 001AD5E8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801B068C 001AD5EC  EC 64 18 28 */	fsubs f3, f4, f3
/* 801B0690 001AD5F0  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 801B0694 001AD5F4  EC 02 08 28 */	fsubs f0, f2, f1
/* 801B0698 001AD5F8  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 801B069C 001AD5FC  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 801B06A0 001AD600  48 00 00 9C */	b lbl_801B073C
lbl_801B06A4:
/* 801B06A4 001AD604  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 801B06A8 001AD608  3C 00 43 30 */	lis r0, 0x4330
/* 801B06AC 001AD60C  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B06B0 001AD610  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801B06B4 001AD614  C8 22 A9 00 */	lfd f1, lbl_805AC620@sda21(r2)
/* 801B06B8 001AD618  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B06BC 001AD61C  C0 42 A8 DC */	lfs f2, lbl_805AC5FC@sda21(r2)
/* 801B06C0 001AD620  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801B06C4 001AD624  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801B06C8 001AD628  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B06CC 001AD62C  EF E2 00 2A */	fadds f31, f2, f0
/* 801B06D0 001AD630  48 16 1E 0D */	bl Float__9CRandom16Fv
/* 801B06D4 001AD634  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 801B06D8 001AD638  38 80 00 00 */	li r4, 0
/* 801B06DC 001AD63C  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 801B06E0 001AD640  38 00 FF FF */	li r0, -1
/* 801B06E4 001AD644  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801B06E8 001AD648  EC 00 F8 24 */	fdivs f0, f0, f31
/* 801B06EC 001AD64C  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
/* 801B06F0 001AD650  88 7F 08 E4 */	lbz r3, 0x8e4(r31)
/* 801B06F4 001AD654  50 83 0F BC */	rlwimi r3, r4, 1, 0x1e, 0x1e
/* 801B06F8 001AD658  98 7F 08 E4 */	stb r3, 0x8e4(r31)
/* 801B06FC 001AD65C  90 1F 07 B4 */	stw r0, 0x7b4(r31)
/* 801B0700 001AD660  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801B0704 001AD664  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B0708 001AD668  2C 00 00 12 */	cmpwi r0, 0x12
/* 801B070C 001AD66C  40 82 00 30 */	bne lbl_801B073C
/* 801B0710 001AD670  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0714 001AD674  38 00 00 0C */	li r0, 0xc
/* 801B0718 001AD678  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B071C 001AD67C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B0720 001AD680  38 64 00 04 */	addi r3, r4, 4
/* 801B0724 001AD684  38 81 00 08 */	addi r4, r1, 8
/* 801B0728 001AD688  90 A1 00 08 */	stw r5, 8(r1)
/* 801B072C 001AD68C  4B F8 10 8D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B0730 001AD690  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0734 001AD694  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0738 001AD698  90 01 00 08 */	stw r0, 8(r1)
lbl_801B073C:
/* 801B073C 001AD69C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801B0740 001AD6A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B0744 001AD6A4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801B0748 001AD6A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B074C 001AD6AC  7C 08 03 A6 */	mtlr r0
/* 801B0750 001AD6B0  38 21 00 50 */	addi r1, r1, 0x50
/* 801B0754 001AD6B4  4E 80 00 20 */	blr

.global Attack__9CFlaahgraFR13CStateManager9EStateMsgf
Attack__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B0758 001AD6B8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801B075C 001AD6BC  7C 08 02 A6 */	mflr r0
/* 801B0760 001AD6C0  90 01 00 84 */	stw r0, 0x84(r1)
/* 801B0764 001AD6C4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801B0768 001AD6C8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801B076C 001AD6CC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801B0770 001AD6D0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801B0774 001AD6D4  2C 05 00 01 */	cmpwi r5, 1
/* 801B0778 001AD6D8  7C 7E 1B 78 */	mr r30, r3
/* 801B077C 001AD6DC  7C 9F 23 78 */	mr r31, r4
/* 801B0780 001AD6E0  41 82 00 48 */	beq lbl_801B07C8
/* 801B0784 001AD6E4  40 80 00 10 */	bge lbl_801B0794
/* 801B0788 001AD6E8  2C 05 00 00 */	cmpwi r5, 0
/* 801B078C 001AD6EC  40 80 00 14 */	bge lbl_801B07A0
/* 801B0790 001AD6F0  48 00 03 F8 */	b lbl_801B0B88
lbl_801B0794:
/* 801B0794 001AD6F4  2C 05 00 03 */	cmpwi r5, 3
/* 801B0798 001AD6F8  40 80 03 F0 */	bge lbl_801B0B88
/* 801B079C 001AD6FC  48 00 03 2C */	b lbl_801B0AC8
lbl_801B07A0:
/* 801B07A0 001AD700  38 00 00 00 */	li r0, 0
/* 801B07A4 001AD704  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B07A8 001AD708  4B FF E0 81 */	bl sub_801ae828
/* 801B07AC 001AD70C  90 7E 07 A8 */	stw r3, 0x7a8(r30)
/* 801B07B0 001AD710  7F C3 F3 78 */	mr r3, r30
/* 801B07B4 001AD714  7F E5 FB 78 */	mr r5, r31
/* 801B07B8 001AD718  38 80 00 0A */	li r4, 0xa
/* 801B07BC 001AD71C  38 C0 FF FF */	li r6, -1
/* 801B07C0 001AD720  4B EA 09 01 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801B07C4 001AD724  48 00 03 C4 */	b lbl_801B0B88
lbl_801B07C8:
/* 801B07C8 001AD728  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801B07CC 001AD72C  2C 00 00 01 */	cmpwi r0, 1
/* 801B07D0 001AD730  41 82 01 88 */	beq lbl_801B0958
/* 801B07D4 001AD734  40 80 00 10 */	bge lbl_801B07E4
/* 801B07D8 001AD738  2C 00 00 00 */	cmpwi r0, 0
/* 801B07DC 001AD73C  40 80 00 14 */	bge lbl_801B07F0
/* 801B07E0 001AD740  48 00 03 A8 */	b lbl_801B0B88
lbl_801B07E4:
/* 801B07E4 001AD744  2C 00 00 03 */	cmpwi r0, 3
/* 801B07E8 001AD748  40 80 03 A0 */	bge lbl_801B0B88
/* 801B07EC 001AD74C  48 00 02 A4 */	b lbl_801B0A90
lbl_801B07F0:
/* 801B07F0 001AD750  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 801B07F4 001AD754  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801B07F8 001AD758  2C 00 00 07 */	cmpwi r0, 7
/* 801B07FC 001AD75C  40 82 00 A4 */	bne lbl_801B08A0
/* 801B0800 001AD760  80 1E 07 A8 */	lwz r0, 0x7a8(r30)
/* 801B0804 001AD764  3C 60 80 3D */	lis r3, lbl_803D157C@ha
/* 801B0808 001AD768  38 63 15 7C */	addi r3, r3, lbl_803D157C@l
/* 801B080C 001AD76C  38 80 00 02 */	li r4, 2
/* 801B0810 001AD770  54 00 10 3A */	slwi r0, r0, 2
/* 801B0814 001AD774  7C 03 00 2E */	lwzx r0, r3, r0
/* 801B0818 001AD778  2C 00 FF FF */	cmpwi r0, -1
/* 801B081C 001AD77C  41 82 00 08 */	beq lbl_801B0824
/* 801B0820 001AD780  38 80 00 01 */	li r4, 1
lbl_801B0824:
/* 801B0824 001AD784  90 9E 05 68 */	stw r4, 0x568(r30)
/* 801B0828 001AD788  7F C3 F3 78 */	mr r3, r30
/* 801B082C 001AD78C  4B FF DE 45 */	bl sub_801ae670
/* 801B0830 001AD790  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B0834 001AD794  41 82 00 34 */	beq lbl_801B0868
/* 801B0838 001AD798  3C 80 80 57 */	lis r4, lbl_80572024@ha
/* 801B083C 001AD79C  7F C3 F3 78 */	mr r3, r30
/* 801B0840 001AD7A0  38 C4 20 24 */	addi r6, r4, lbl_80572024@l
/* 801B0844 001AD7A4  38 BE 07 9C */	addi r5, r30, 0x79c
/* 801B0848 001AD7A8  7F E4 FB 78 */	mr r4, r31
/* 801B084C 001AD7AC  4B FF DB 3D */	bl sub_801ae388
/* 801B0850 001AD7B0  3C 80 80 57 */	lis r4, lbl_80572024@ha
/* 801B0854 001AD7B4  7F C3 F3 78 */	mr r3, r30
/* 801B0858 001AD7B8  38 C4 20 24 */	addi r6, r4, lbl_80572024@l
/* 801B085C 001AD7BC  38 BE 07 A0 */	addi r5, r30, 0x7a0
/* 801B0860 001AD7C0  7F E4 FB 78 */	mr r4, r31
/* 801B0864 001AD7C4  4B FF DB 25 */	bl sub_801ae388
lbl_801B0868:
/* 801B0868 001AD7C8  7F C4 F3 78 */	mr r4, r30
/* 801B086C 001AD7CC  7F E5 FB 78 */	mr r5, r31
/* 801B0870 001AD7D0  38 61 00 10 */	addi r3, r1, 0x10
/* 801B0874 001AD7D4  4B FF DE E1 */	bl sub_801ae754
/* 801B0878 001AD7D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801B087C 001AD7DC  D0 1E 07 8C */	stfs f0, 0x78c(r30)
/* 801B0880 001AD7E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801B0884 001AD7E4  D0 1E 07 90 */	stfs f0, 0x790(r30)
/* 801B0888 001AD7E8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801B088C 001AD7EC  D0 1E 07 94 */	stfs f0, 0x794(r30)
/* 801B0890 001AD7F0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B0894 001AD7F4  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 801B0898 001AD7F8  90 1E 07 98 */	stw r0, 0x798(r30)
/* 801B089C 001AD7FC  48 00 02 EC */	b lbl_801B0B88
lbl_801B08A0:
/* 801B08A0 001AD800  80 1E 07 A8 */	lwz r0, 0x7a8(r30)
/* 801B08A4 001AD804  3C A0 80 3D */	lis r5, lbl_803D1568@ha
/* 801B08A8 001AD808  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B08AC 001AD80C  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801B08B0 001AD810  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801B08B4 001AD814  38 C5 15 68 */	addi r6, r5, lbl_803D1568@l
/* 801B08B8 001AD818  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 801B08BC 001AD81C  54 00 10 3A */	slwi r0, r0, 2
/* 801B08C0 001AD820  7D 06 00 2E */	lwzx r8, r6, r0
/* 801B08C4 001AD824  38 C0 00 05 */	li r6, 5
/* 801B08C8 001AD828  C0 23 00 04 */	lfs f1, 4(r3)
/* 801B08CC 001AD82C  38 00 00 00 */	li r0, 0
/* 801B08D0 001AD830  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B08D4 001AD834  3B C7 00 04 */	addi r30, r7, 4
/* 801B08D8 001AD838  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801B08DC 001AD83C  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801B08E0 001AD840  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801B08E4 001AD844  7F C3 F3 78 */	mr r3, r30
/* 801B08E8 001AD848  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801B08EC 001AD84C  38 80 00 05 */	li r4, 5
/* 801B08F0 001AD850  90 A1 00 38 */	stw r5, 0x38(r1)
/* 801B08F4 001AD854  91 01 00 40 */	stw r8, 0x40(r1)
/* 801B08F8 001AD858  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801B08FC 001AD85C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801B0900 001AD860  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801B0904 001AD864  98 01 00 50 */	stb r0, 0x50(r1)
/* 801B0908 001AD868  4B F8 0B 31 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B090C 001AD86C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801B0910 001AD870  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801B0914 001AD874  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801B0918 001AD878  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B091C 001AD87C  90 1E 01 10 */	stw r0, 0x110(r30)
/* 801B0920 001AD880  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0924 001AD884  80 61 00 40 */	lwz r3, 0x40(r1)
/* 801B0928 001AD888  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 801B092C 001AD88C  90 7E 01 14 */	stw r3, 0x114(r30)
/* 801B0930 001AD890  80 61 00 48 */	lwz r3, 0x48(r1)
/* 801B0934 001AD894  90 BE 01 18 */	stw r5, 0x118(r30)
/* 801B0938 001AD898  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 801B093C 001AD89C  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 801B0940 001AD8A0  88 61 00 50 */	lbz r3, 0x50(r1)
/* 801B0944 001AD8A4  90 BE 01 20 */	stw r5, 0x120(r30)
/* 801B0948 001AD8A8  90 81 00 38 */	stw r4, 0x38(r1)
/* 801B094C 001AD8AC  98 7E 01 24 */	stb r3, 0x124(r30)
/* 801B0950 001AD8B0  90 01 00 38 */	stw r0, 0x38(r1)
/* 801B0954 001AD8B4  48 00 02 34 */	b lbl_801B0B88
lbl_801B0958:
/* 801B0958 001AD8B8  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 801B095C 001AD8BC  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801B0960 001AD8C0  2C 00 00 07 */	cmpwi r0, 7
/* 801B0964 001AD8C4  41 82 00 10 */	beq lbl_801B0974
/* 801B0968 001AD8C8  38 00 00 04 */	li r0, 4
/* 801B096C 001AD8CC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B0970 001AD8D0  48 00 02 18 */	b lbl_801B0B88
lbl_801B0974:
/* 801B0974 001AD8D4  80 BE 07 98 */	lwz r5, 0x798(r30)
/* 801B0978 001AD8D8  80 06 02 F8 */	lwz r0, 0x2f8(r6)
/* 801B097C 001AD8DC  7C 05 00 00 */	cmpw r5, r0
/* 801B0980 001AD8E0  41 82 00 10 */	beq lbl_801B0990
/* 801B0984 001AD8E4  38 00 00 02 */	li r0, 2
/* 801B0988 001AD8E8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B098C 001AD8EC  48 00 01 FC */	b lbl_801B0B88
lbl_801B0990:
/* 801B0990 001AD8F0  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 801B0994 001AD8F4  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B0998 001AD8F8  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 801B099C 001AD8FC  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 801B09A0 001AD900  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 801B09A4 001AD904  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 801B09A8 001AD908  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 801B09AC 001AD90C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B09B0 001AD910  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 801B09B4 001AD914  7D 89 03 A6 */	mtctr r12
/* 801B09B8 001AD918  4E 80 04 21 */	bctrl
/* 801B09BC 001AD91C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B09C0 001AD920  41 82 01 C8 */	beq lbl_801B0B88
/* 801B09C4 001AD924  80 1E 07 A8 */	lwz r0, 0x7a8(r30)
/* 801B09C8 001AD928  3C 60 80 3D */	lis r3, lbl_803D157C@ha
/* 801B09CC 001AD92C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801B09D0 001AD930  3C 80 80 3D */	lis r4, lbl_803D1568@ha
/* 801B09D4 001AD934  54 00 10 3A */	slwi r0, r0, 2
/* 801B09D8 001AD938  38 63 15 7C */	addi r3, r3, lbl_803D157C@l
/* 801B09DC 001AD93C  7C 03 00 2E */	lwzx r0, r3, r0
/* 801B09E0 001AD940  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B09E4 001AD944  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801B09E8 001AD948  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 801B09EC 001AD94C  54 00 10 3A */	slwi r0, r0, 2
/* 801B09F0 001AD950  38 84 15 68 */	addi r4, r4, lbl_803D1568@l
/* 801B09F4 001AD954  7C A4 00 2E */	lwzx r5, r4, r0
/* 801B09F8 001AD958  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801B09FC 001AD95C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801B0A00 001AD960  38 E0 00 05 */	li r7, 5
/* 801B0A04 001AD964  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B0A08 001AD968  38 00 00 00 */	li r0, 0
/* 801B0A0C 001AD96C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B0A10 001AD970  38 C4 A9 D8 */	addi r6, r4, lbl_803DA9D8@l
/* 801B0A14 001AD974  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801B0A18 001AD978  38 80 00 05 */	li r4, 5
/* 801B0A1C 001AD97C  3B C3 00 04 */	addi r30, r3, 4
/* 801B0A20 001AD980  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801B0A24 001AD984  7F C3 F3 78 */	mr r3, r30
/* 801B0A28 001AD988  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 801B0A2C 001AD98C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801B0A30 001AD990  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801B0A34 001AD994  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801B0A38 001AD998  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801B0A3C 001AD99C  98 01 00 34 */	stb r0, 0x34(r1)
/* 801B0A40 001AD9A0  4B F8 09 F9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B0A44 001AD9A4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801B0A48 001AD9A8  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801B0A4C 001AD9AC  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801B0A50 001AD9B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0A54 001AD9B4  90 1E 01 10 */	stw r0, 0x110(r30)
/* 801B0A58 001AD9B8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0A5C 001AD9BC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B0A60 001AD9C0  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801B0A64 001AD9C4  90 7E 01 14 */	stw r3, 0x114(r30)
/* 801B0A68 001AD9C8  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801B0A6C 001AD9CC  90 BE 01 18 */	stw r5, 0x118(r30)
/* 801B0A70 001AD9D0  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801B0A74 001AD9D4  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 801B0A78 001AD9D8  88 61 00 34 */	lbz r3, 0x34(r1)
/* 801B0A7C 001AD9DC  90 BE 01 20 */	stw r5, 0x120(r30)
/* 801B0A80 001AD9E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801B0A84 001AD9E4  98 7E 01 24 */	stb r3, 0x124(r30)
/* 801B0A88 001AD9E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B0A8C 001AD9EC  48 00 00 FC */	b lbl_801B0B88
lbl_801B0A90:
/* 801B0A90 001AD9F0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B0A94 001AD9F4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B0A98 001AD9F8  2C 00 00 07 */	cmpwi r0, 7
/* 801B0A9C 001AD9FC  41 82 00 10 */	beq lbl_801B0AAC
/* 801B0AA0 001ADA00  38 00 00 04 */	li r0, 4
/* 801B0AA4 001ADA04  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B0AA8 001ADA08  48 00 00 E0 */	b lbl_801B0B88
lbl_801B0AAC:
/* 801B0AAC 001ADA0C  C0 1E 07 8C */	lfs f0, 0x78c(r30)
/* 801B0AB0 001ADA10  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801B0AB4 001ADA14  C0 1E 07 90 */	lfs f0, 0x790(r30)
/* 801B0AB8 001ADA18  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801B0ABC 001ADA1C  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 801B0AC0 001ADA20  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801B0AC4 001ADA24  48 00 00 C4 */	b lbl_801B0B88
lbl_801B0AC8:
/* 801B0AC8 001ADA28  3C C0 80 5A */	lis r6, sZeroVector__9CVector3f@ha
/* 801B0ACC 001ADA2C  38 BE 07 9C */	addi r5, r30, 0x79c
/* 801B0AD0 001ADA30  38 C6 66 A0 */	addi r6, r6, sZeroVector__9CVector3f@l
/* 801B0AD4 001ADA34  4B FF D8 B5 */	bl sub_801ae388
/* 801B0AD8 001ADA38  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B0ADC 001ADA3C  7F C3 F3 78 */	mr r3, r30
/* 801B0AE0 001ADA40  38 C4 66 A0 */	addi r6, r4, sZeroVector__9CVector3f@l
/* 801B0AE4 001ADA44  38 BE 07 A0 */	addi r5, r30, 0x7a0
/* 801B0AE8 001ADA48  7F E4 FB 78 */	mr r4, r31
/* 801B0AEC 001ADA4C  4B FF D8 9D */	bl sub_801ae388
/* 801B0AF0 001ADA50  7F C3 F3 78 */	mr r3, r30
/* 801B0AF4 001ADA54  4B FF DB 7D */	bl sub_801ae670
/* 801B0AF8 001ADA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B0AFC 001ADA5C  41 82 00 48 */	beq lbl_801B0B44
/* 801B0B00 001ADA60  80 7E 07 88 */	lwz r3, 0x788(r30)
/* 801B0B04 001ADA64  3C 00 43 30 */	lis r0, 0x4330
/* 801B0B08 001ADA68  90 01 00 58 */	stw r0, 0x58(r1)
/* 801B0B0C 001ADA6C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801B0B10 001ADA70  C8 22 A9 00 */	lfd f1, lbl_805AC620@sda21(r2)
/* 801B0B14 001ADA74  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801B0B18 001ADA78  C0 42 A8 DC */	lfs f2, lbl_805AC5FC@sda21(r2)
/* 801B0B1C 001ADA7C  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801B0B20 001ADA80  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801B0B24 001ADA84  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B0B28 001ADA88  EF E2 00 2A */	fadds f31, f2, f0
/* 801B0B2C 001ADA8C  48 16 19 B1 */	bl Float__9CRandom16Fv
/* 801B0B30 001ADA90  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 801B0B34 001ADA94  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 801B0B38 001ADA98  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801B0B3C 001ADA9C  EC 00 F8 24 */	fdivs f0, f0, f31
/* 801B0B40 001ADAA0  D0 1E 07 C0 */	stfs f0, 0x7c0(r30)
lbl_801B0B44:
/* 801B0B44 001ADAA4  38 00 FF FF */	li r0, -1
/* 801B0B48 001ADAA8  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 801B0B4C 001ADAAC  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801B0B50 001ADAB0  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B0B54 001ADAB4  2C 00 00 07 */	cmpwi r0, 7
/* 801B0B58 001ADAB8  40 82 00 30 */	bne lbl_801B0B88
/* 801B0B5C 001ADABC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0B60 001ADAC0  38 00 00 0C */	li r0, 0xc
/* 801B0B64 001ADAC4  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B0B68 001ADAC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B0B6C 001ADACC  38 64 00 04 */	addi r3, r4, 4
/* 801B0B70 001ADAD0  38 81 00 08 */	addi r4, r1, 8
/* 801B0B74 001ADAD4  90 A1 00 08 */	stw r5, 8(r1)
/* 801B0B78 001ADAD8  4B F8 0C 41 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B0B7C 001ADADC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0B80 001ADAE0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0B84 001ADAE4  90 01 00 08 */	stw r0, 8(r1)
lbl_801B0B88:
/* 801B0B88 001ADAE8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801B0B8C 001ADAEC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801B0B90 001ADAF0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801B0B94 001ADAF4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801B0B98 001ADAF8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801B0B9C 001ADAFC  7C 08 03 A6 */	mtlr r0
/* 801B0BA0 001ADB00  38 21 00 80 */	addi r1, r1, 0x80
/* 801B0BA4 001ADB04  4E 80 00 20 */	blr

.global TurnAround__9CFlaahgraFR13CStateManager9EStateMsgf
TurnAround__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B0BA8 001ADB08  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B0BAC 001ADB0C  7C 08 02 A6 */	mflr r0
/* 801B0BB0 001ADB10  2C 05 00 01 */	cmpwi r5, 1
/* 801B0BB4 001ADB14  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B0BB8 001ADB18  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801B0BBC 001ADB1C  7C 9F 23 78 */	mr r31, r4
/* 801B0BC0 001ADB20  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801B0BC4 001ADB24  7C 7E 1B 78 */	mr r30, r3
/* 801B0BC8 001ADB28  41 82 00 5C */	beq lbl_801B0C24
/* 801B0BCC 001ADB2C  40 80 00 10 */	bge lbl_801B0BDC
/* 801B0BD0 001ADB30  2C 05 00 00 */	cmpwi r5, 0
/* 801B0BD4 001ADB34  40 80 00 14 */	bge lbl_801B0BE8
/* 801B0BD8 001ADB38  48 00 01 4C */	b lbl_801B0D24
lbl_801B0BDC:
/* 801B0BDC 001ADB3C  2C 05 00 03 */	cmpwi r5, 3
/* 801B0BE0 001ADB40  40 80 01 44 */	bge lbl_801B0D24
/* 801B0BE4 001ADB44  48 00 01 34 */	b lbl_801B0D18
lbl_801B0BE8:
/* 801B0BE8 001ADB48  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801B0BEC 001ADB4C  38 81 00 0C */	addi r4, r1, 0xc
/* 801B0BF0 001ADB50  A0 03 00 08 */	lhz r0, 8(r3)
/* 801B0BF4 001ADB54  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801B0BF8 001ADB58  B0 01 00 08 */	sth r0, 8(r1)
/* 801B0BFC 001ADB5C  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B0C00 001ADB60  4B FC 46 19 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801B0C04 001ADB64  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B0C08 001ADB68  38 80 00 01 */	li r4, 1
/* 801B0C0C 001ADB6C  4B FC 46 19 */	bl SetActive__13CBoneTrackingFb
/* 801B0C10 001ADB70  88 1E 08 E5 */	lbz r0, 0x8e5(r30)
/* 801B0C14 001ADB74  38 60 00 00 */	li r3, 0
/* 801B0C18 001ADB78  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801B0C1C 001ADB7C  98 1E 08 E5 */	stb r0, 0x8e5(r30)
/* 801B0C20 001ADB80  48 00 01 04 */	b lbl_801B0D24
lbl_801B0C24:
/* 801B0C24 001ADB84  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0C28 001ADB88  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B0C2C 001ADB8C  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801B0C30 001ADB90  7D 89 03 A6 */	mtctr r12
/* 801B0C34 001ADB94  4E 80 04 21 */	bctrl
/* 801B0C38 001ADB98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B0C3C 001ADB9C  41 82 00 E8 */	beq lbl_801B0D24
/* 801B0C40 001ADBA0  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801B0C44 001ADBA4  7F E5 FB 78 */	mr r5, r31
/* 801B0C48 001ADBA8  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B0C4C 001ADBAC  38 61 00 1C */	addi r3, r1, 0x1c
/* 801B0C50 001ADBB0  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 801B0C54 001ADBB4  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801B0C58 001ADBB8  C0 46 02 00 */	lfs f2, 0x200(r6)
/* 801B0C5C 001ADBBC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801B0C60 001ADBC0  40 81 00 0C */	ble lbl_801B0C6C
/* 801B0C64 001ADBC4  C0 02 A9 08 */	lfs f0, lbl_805AC628@sda21(r2)
/* 801B0C68 001ADBC8  EC 20 10 24 */	fdivs f1, f0, f2
lbl_801B0C6C:
/* 801B0C6C 001ADBCC  81 84 00 00 */	lwz r12, 0(r4)
/* 801B0C70 001ADBD0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801B0C74 001ADBD4  7D 89 03 A6 */	mtctr r12
/* 801B0C78 001ADBD8  4E 80 04 21 */	bctrl
/* 801B0C7C 001ADBDC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801B0C80 001ADBE0  38 61 00 28 */	addi r3, r1, 0x28
/* 801B0C84 001ADBE4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801B0C88 001ADBE8  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 801B0C8C 001ADBEC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801B0C90 001ADBF0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801B0C94 001ADBF4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801B0C98 001ADBF8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801B0C9C 001ADBFC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801B0CA0 001ADC00  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801B0CA4 001ADC04  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B0CA8 001ADC08  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801B0CAC 001ADC0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801B0CB0 001ADC10  48 16 3A 49 */	bl CanBeNormalized__9CVector3fCFv
/* 801B0CB4 001ADC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B0CB8 001ADC18  41 82 00 6C */	beq lbl_801B0D24
/* 801B0CBC 001ADC1C  38 61 00 10 */	addi r3, r1, 0x10
/* 801B0CC0 001ADC20  38 81 00 28 */	addi r4, r1, 0x28
/* 801B0CC4 001ADC24  48 16 3B 8D */	bl AsNormalized__9CVector3fCFv
/* 801B0CC8 001ADC28  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B0CCC 001ADC2C  C4 C3 66 A0 */	lfsu f6, sZeroVector__9CVector3f@l(r3)
/* 801B0CD0 001ADC30  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 801B0CD4 001ADC34  38 81 00 34 */	addi r4, r1, 0x34
/* 801B0CD8 001ADC38  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801B0CDC 001ADC3C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801B0CE0 001ADC40  C0 83 00 08 */	lfs f4, 8(r3)
/* 801B0CE4 001ADC44  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801B0CE8 001ADC48  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801B0CEC 001ADC4C  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801B0CF0 001ADC50  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801B0CF4 001ADC54  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801B0CF8 001ADC58  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801B0CFC 001ADC5C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801B0D00 001ADC60  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801B0D04 001ADC64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801B0D08 001ADC68  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B0D0C 001ADC6C  38 63 00 04 */	addi r3, r3, 4
/* 801B0D10 001ADC70  4B F8 0A 09 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801B0D14 001ADC74  48 00 00 10 */	b lbl_801B0D24
lbl_801B0D18:
/* 801B0D18 001ADC78  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B0D1C 001ADC7C  38 80 00 00 */	li r4, 0
/* 801B0D20 001ADC80  4B FC 45 05 */	bl SetActive__13CBoneTrackingFb
lbl_801B0D24:
/* 801B0D24 001ADC84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B0D28 001ADC88  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801B0D2C 001ADC8C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801B0D30 001ADC90  7C 08 03 A6 */	mtlr r0
/* 801B0D34 001ADC94  38 21 00 60 */	addi r1, r1, 0x60
/* 801B0D38 001ADC98  4E 80 00 20 */	blr

.global Suck__9CFlaahgraFR13CStateManager9EStateMsgf
Suck__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B0D3C 001ADC9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B0D40 001ADCA0  7C 08 02 A6 */	mflr r0
/* 801B0D44 001ADCA4  2C 05 00 01 */	cmpwi r5, 1
/* 801B0D48 001ADCA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B0D4C 001ADCAC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B0D50 001ADCB0  7C 9F 23 78 */	mr r31, r4
/* 801B0D54 001ADCB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801B0D58 001ADCB8  7C 7E 1B 78 */	mr r30, r3
/* 801B0D5C 001ADCBC  41 82 01 08 */	beq lbl_801B0E64
/* 801B0D60 001ADCC0  40 80 00 10 */	bge lbl_801B0D70
/* 801B0D64 001ADCC4  2C 05 00 00 */	cmpwi r5, 0
/* 801B0D68 001ADCC8  40 80 00 14 */	bge lbl_801B0D7C
/* 801B0D6C 001ADCCC  48 00 02 34 */	b lbl_801B0FA0
lbl_801B0D70:
/* 801B0D70 001ADCD0  2C 05 00 03 */	cmpwi r5, 3
/* 801B0D74 001ADCD4  40 80 02 2C */	bge lbl_801B0FA0
/* 801B0D78 001ADCD8  48 00 01 F4 */	b lbl_801B0F6C
lbl_801B0D7C:
/* 801B0D7C 001ADCDC  39 60 00 00 */	li r11, 0
/* 801B0D80 001ADCE0  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801B0D84 001ADCE4  91 7E 05 68 */	stw r11, 0x568(r30)
/* 801B0D88 001ADCE8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801B0D8C 001ADCEC  39 44 AA 68 */	addi r10, r4, lbl_803DAA68@l
/* 801B0D90 001ADCF0  51 65 F8 00 */	rlwimi r5, r11, 0x1f, 0, 0
/* 801B0D94 001ADCF4  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B0D98 001ADCF8  51 60 2E B4 */	rlwimi r0, r11, 5, 0x1a, 0x1a
/* 801B0D9C 001ADCFC  3C 80 80 3E */	lis r4, lbl_803DA9F0@ha
/* 801B0DA0 001ADD00  39 20 00 0E */	li r9, 0xe
/* 801B0DA4 001ADD04  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B0DA8 001ADD08  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B0DAC 001ADD0C  7C A0 2B 78 */	mr r0, r5
/* 801B0DB0 001ADD10  38 E0 00 02 */	li r7, 2
/* 801B0DB4 001ADD14  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801B0DB8 001ADD18  38 C0 FF FF */	li r6, -1
/* 801B0DBC 001ADD1C  39 04 A9 F0 */	addi r8, r4, lbl_803DA9F0@l
/* 801B0DC0 001ADD20  91 41 00 14 */	stw r10, 0x14(r1)
/* 801B0DC4 001ADD24  C0 23 00 04 */	lfs f1, 4(r3)
/* 801B0DC8 001ADD28  51 60 F0 42 */	rlwimi r0, r11, 0x1e, 1, 1
/* 801B0DCC 001ADD2C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B0DD0 001ADD30  38 80 00 0E */	li r4, 0xe
/* 801B0DD4 001ADD34  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B0DD8 001ADD38  90 A1 00 30 */	stw r5, 0x30(r1)
/* 801B0DDC 001ADD3C  3B E3 00 04 */	addi r31, r3, 4
/* 801B0DE0 001ADD40  91 21 00 18 */	stw r9, 0x18(r1)
/* 801B0DE4 001ADD44  7F E3 FB 78 */	mr r3, r31
/* 801B0DE8 001ADD48  91 01 00 14 */	stw r8, 0x14(r1)
/* 801B0DEC 001ADD4C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 801B0DF0 001ADD50  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801B0DF4 001ADD54  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801B0DF8 001ADD58  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801B0DFC 001ADD5C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 801B0E00 001ADD60  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B0E04 001ADD64  4B F8 06 35 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B0E08 001ADD68  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801B0E0C 001ADD6C  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801B0E10 001ADD70  38 03 A9 F0 */	addi r0, r3, lbl_803DA9F0@l
/* 801B0E14 001ADD74  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0E18 001ADD78  90 9F 01 90 */	stw r4, 0x190(r31)
/* 801B0E1C 001ADD7C  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801B0E20 001ADD80  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801B0E24 001ADD84  80 81 00 20 */	lwz r4, 0x20(r1)
/* 801B0E28 001ADD88  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801B0E2C 001ADD8C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801B0E30 001ADD90  90 9F 01 98 */	stw r4, 0x198(r31)
/* 801B0E34 001ADD94  80 81 00 28 */	lwz r4, 0x28(r1)
/* 801B0E38 001ADD98  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801B0E3C 001ADD9C  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 801B0E40 001ADDA0  90 9F 01 A0 */	stw r4, 0x1a0(r31)
/* 801B0E44 001ADDA4  80 81 00 30 */	lwz r4, 0x30(r1)
/* 801B0E48 001ADDA8  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801B0E4C 001ADDAC  90 9F 01 A8 */	stw r4, 0x1a8(r31)
/* 801B0E50 001ADDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B0E54 001ADDB4  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 801B0E58 001ADDB8  90 61 00 14 */	stw r3, 0x14(r1)
/* 801B0E5C 001ADDBC  90 1E 07 84 */	stw r0, 0x784(r30)
/* 801B0E60 001ADDC0  48 00 01 40 */	b lbl_801B0FA0
lbl_801B0E64:
/* 801B0E64 001ADDC4  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801B0E68 001ADDC8  2C 00 00 01 */	cmpwi r0, 1
/* 801B0E6C 001ADDCC  41 82 01 34 */	beq lbl_801B0FA0
/* 801B0E70 001ADDD0  40 80 00 10 */	bge lbl_801B0E80
/* 801B0E74 001ADDD4  2C 00 00 00 */	cmpwi r0, 0
/* 801B0E78 001ADDD8  40 80 00 14 */	bge lbl_801B0E8C
/* 801B0E7C 001ADDDC  48 00 01 24 */	b lbl_801B0FA0
lbl_801B0E80:
/* 801B0E80 001ADDE0  2C 00 00 03 */	cmpwi r0, 3
/* 801B0E84 001ADDE4  40 80 01 1C */	bge lbl_801B0FA0
/* 801B0E88 001ADDE8  48 00 00 80 */	b lbl_801B0F08
lbl_801B0E8C:
/* 801B0E8C 001ADDEC  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801B0E90 001ADDF0  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B0E94 001ADDF4  2C 00 00 01 */	cmpwi r0, 1
/* 801B0E98 001ADDF8  40 82 00 10 */	bne lbl_801B0EA8
/* 801B0E9C 001ADDFC  38 00 00 02 */	li r0, 2
/* 801B0EA0 001ADE00  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B0EA4 001ADE04  48 00 00 FC */	b lbl_801B0FA0
lbl_801B0EA8:
/* 801B0EA8 001ADE08  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0EAC 001ADE0C  38 A0 00 00 */	li r5, 0
/* 801B0EB0 001ADE10  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0EB4 001ADE14  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801B0EB8 001ADE18  90 01 00 08 */	stw r0, 8(r1)
/* 801B0EBC 001ADE1C  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 801B0EC0 001ADE20  3B C4 00 04 */	addi r30, r4, 4
/* 801B0EC4 001ADE24  38 80 00 00 */	li r4, 0
/* 801B0EC8 001ADE28  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801B0ECC 001ADE2C  7F C3 F3 78 */	mr r3, r30
/* 801B0ED0 001ADE30  90 01 00 08 */	stw r0, 8(r1)
/* 801B0ED4 001ADE34  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801B0ED8 001ADE38  4B F8 05 61 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B0EDC 001ADE3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B0EE0 001ADE40  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801B0EE4 001ADE44  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801B0EE8 001ADE48  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B0EEC 001ADE4C  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 801B0EF0 001ADE50  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B0EF4 001ADE54  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B0EF8 001ADE58  90 81 00 08 */	stw r4, 8(r1)
/* 801B0EFC 001ADE5C  90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 801B0F00 001ADE60  90 01 00 08 */	stw r0, 8(r1)
/* 801B0F04 001ADE64  48 00 00 9C */	b lbl_801B0FA0
lbl_801B0F08:
/* 801B0F08 001ADE68  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801B0F0C 001ADE6C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B0F10 001ADE70  2C 00 00 01 */	cmpwi r0, 1
/* 801B0F14 001ADE74  41 82 00 10 */	beq lbl_801B0F24
/* 801B0F18 001ADE78  38 00 00 04 */	li r0, 4
/* 801B0F1C 001ADE7C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B0F20 001ADE80  48 00 00 80 */	b lbl_801B0FA0
lbl_801B0F24:
/* 801B0F24 001ADE84  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B0F28 001ADE88  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801B0F2C 001ADE8C  41 82 00 74 */	beq lbl_801B0FA0
/* 801B0F30 001ADE90  4B FF D9 95 */	bl sub_801ae8c4
/* 801B0F34 001ADE94  C0 5E 07 C4 */	lfs f2, 0x7c4(r30)
/* 801B0F38 001ADE98  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B0F3C 001ADE9C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B0F40 001ADEA0  40 81 00 14 */	ble lbl_801B0F54
/* 801B0F44 001ADEA4  EC 01 10 24 */	fdivs f0, f1, f2
/* 801B0F48 001ADEA8  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
/* 801B0F4C 001ADEAC  EC 21 00 28 */	fsubs f1, f1, f0
/* 801B0F50 001ADEB0  48 00 00 08 */	b lbl_801B0F58
lbl_801B0F54:
/* 801B0F54 001ADEB4  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
lbl_801B0F58:
/* 801B0F58 001ADEB8  C0 5E 05 70 */	lfs f2, 0x570(r30)
/* 801B0F5C 001ADEBC  7F C3 F3 78 */	mr r3, r30
/* 801B0F60 001ADEC0  C0 7E 05 6C */	lfs f3, 0x56c(r30)
/* 801B0F64 001ADEC4  4B FF D9 E9 */	bl sub_801ae94c
/* 801B0F68 001ADEC8  48 00 00 38 */	b lbl_801B0FA0
lbl_801B0F6C:
/* 801B0F6C 001ADECC  88 7E 08 E4 */	lbz r3, 0x8e4(r30)
/* 801B0F70 001ADED0  38 00 00 00 */	li r0, 0
/* 801B0F74 001ADED4  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801B0F78 001ADED8  38 00 00 02 */	li r0, 2
/* 801B0F7C 001ADEDC  98 7E 08 E4 */	stb r3, 0x8e4(r30)
/* 801B0F80 001ADEE0  38 A0 00 00 */	li r5, 0
/* 801B0F84 001ADEE4  90 1E 07 80 */	stw r0, 0x780(r30)
/* 801B0F88 001ADEE8  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 801B0F8C 001ADEEC  4B FF 63 6D */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B0F90 001ADEF0  80 7E 07 A0 */	lwz r3, 0x7a0(r30)
/* 801B0F94 001ADEF4  7F E4 FB 78 */	mr r4, r31
/* 801B0F98 001ADEF8  38 A0 00 00 */	li r5, 0
/* 801B0F9C 001ADEFC  4B FF 63 5D */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_801B0FA0:
/* 801B0FA0 001ADF00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B0FA4 001ADF04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B0FA8 001ADF08  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801B0FAC 001ADF0C  7C 08 03 A6 */	mtlr r0
/* 801B0FB0 001ADF10  38 21 00 40 */	addi r1, r1, 0x40
/* 801B0FB4 001ADF14  4E 80 00 20 */	blr

.global GetUp__9CFlaahgraFR13CStateManager9EStateMsgf
GetUp__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B0FB8 001ADF18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B0FBC 001ADF1C  7C 08 02 A6 */	mflr r0
/* 801B0FC0 001ADF20  2C 05 00 01 */	cmpwi r5, 1
/* 801B0FC4 001ADF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B0FC8 001ADF28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B0FCC 001ADF2C  7C 9F 23 78 */	mr r31, r4
/* 801B0FD0 001ADF30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B0FD4 001ADF34  7C 7E 1B 78 */	mr r30, r3
/* 801B0FD8 001ADF38  41 82 00 44 */	beq lbl_801B101C
/* 801B0FDC 001ADF3C  40 80 00 10 */	bge lbl_801B0FEC
/* 801B0FE0 001ADF40  2C 05 00 00 */	cmpwi r5, 0
/* 801B0FE4 001ADF44  40 80 00 14 */	bge lbl_801B0FF8
/* 801B0FE8 001ADF48  48 00 01 C4 */	b lbl_801B11AC
lbl_801B0FEC:
/* 801B0FEC 001ADF4C  2C 05 00 03 */	cmpwi r5, 3
/* 801B0FF0 001ADF50  40 80 01 BC */	bge lbl_801B11AC
/* 801B0FF4 001ADF54  48 00 01 40 */	b lbl_801B1134
lbl_801B0FF8:
/* 801B0FF8 001ADF58  38 00 00 00 */	li r0, 0
/* 801B0FFC 001ADF5C  38 60 00 01 */	li r3, 1
/* 801B1000 001ADF60  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B1004 001ADF64  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 801B1008 001ADF68  90 1E 07 84 */	stw r0, 0x784(r30)
/* 801B100C 001ADF6C  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1010 001ADF70  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801B1014 001ADF74  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B1018 001ADF78  48 00 01 94 */	b lbl_801B11AC
lbl_801B101C:
/* 801B101C 001ADF7C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801B1020 001ADF80  2C 00 00 01 */	cmpwi r0, 1
/* 801B1024 001ADF84  41 82 01 88 */	beq lbl_801B11AC
/* 801B1028 001ADF88  40 80 00 10 */	bge lbl_801B1038
/* 801B102C 001ADF8C  2C 00 00 00 */	cmpwi r0, 0
/* 801B1030 001ADF90  40 80 00 14 */	bge lbl_801B1044
/* 801B1034 001ADF94  48 00 01 78 */	b lbl_801B11AC
lbl_801B1038:
/* 801B1038 001ADF98  2C 00 00 03 */	cmpwi r0, 3
/* 801B103C 001ADF9C  40 80 01 70 */	bge lbl_801B11AC
/* 801B1040 001ADFA0  48 00 00 D8 */	b lbl_801B1118
lbl_801B1044:
/* 801B1044 001ADFA4  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 801B1048 001ADFA8  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801B104C 001ADFAC  2C 00 00 01 */	cmpwi r0, 1
/* 801B1050 001ADFB0  40 82 00 58 */	bne lbl_801B10A8
/* 801B1054 001ADFB4  38 00 00 02 */	li r0, 2
/* 801B1058 001ADFB8  38 80 FF FF */	li r4, -1
/* 801B105C 001ADFBC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B1060 001ADFC0  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1064 001ADFC4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801B1068 001ADFC8  40 82 00 08 */	bne lbl_801B1070
/* 801B106C 001ADFCC  38 80 00 04 */	li r4, 4
lbl_801B1070:
/* 801B1070 001ADFD0  3C 60 80 57 */	lis r3, lbl_8057203C@ha
/* 801B1074 001ADFD4  90 9E 07 A8 */	stw r4, 0x7a8(r30)
/* 801B1078 001ADFD8  38 C3 20 3C */	addi r6, r3, lbl_8057203C@l
/* 801B107C 001ADFDC  7F E4 FB 78 */	mr r4, r31
/* 801B1080 001ADFE0  7F C3 F3 78 */	mr r3, r30
/* 801B1084 001ADFE4  38 BE 07 9C */	addi r5, r30, 0x79c
/* 801B1088 001ADFE8  4B FF D3 01 */	bl sub_801ae388
/* 801B108C 001ADFEC  3C 80 80 57 */	lis r4, lbl_8057203C@ha
/* 801B1090 001ADFF0  7F C3 F3 78 */	mr r3, r30
/* 801B1094 001ADFF4  38 C4 20 3C */	addi r6, r4, lbl_8057203C@l
/* 801B1098 001ADFF8  38 BE 07 A0 */	addi r5, r30, 0x7a0
/* 801B109C 001ADFFC  7F E4 FB 78 */	mr r4, r31
/* 801B10A0 001AE000  4B FF D2 E9 */	bl sub_801ae388
/* 801B10A4 001AE004  48 00 01 08 */	b lbl_801B11AC
lbl_801B10A8:
/* 801B10A8 001AE008  88 9E 08 E4 */	lbz r4, 0x8e4(r30)
/* 801B10AC 001AE00C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B10B0 001AE010  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B10B4 001AE014  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801B10B8 001AE018  54 85 F7 FE */	rlwinm r5, r4, 0x1e, 0x1f, 0x1f
/* 801B10BC 001AE01C  38 80 00 00 */	li r4, 0
/* 801B10C0 001AE020  7C A5 00 34 */	cntlzw r5, r5
/* 801B10C4 001AE024  90 01 00 08 */	stw r0, 8(r1)
/* 801B10C8 001AE028  54 A5 D9 7E */	srwi r5, r5, 5
/* 801B10CC 001AE02C  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 801B10D0 001AE030  3B C6 00 04 */	addi r30, r6, 4
/* 801B10D4 001AE034  90 81 00 0C */	stw r4, 0xc(r1)
/* 801B10D8 001AE038  7F C3 F3 78 */	mr r3, r30
/* 801B10DC 001AE03C  38 80 00 00 */	li r4, 0
/* 801B10E0 001AE040  90 01 00 08 */	stw r0, 8(r1)
/* 801B10E4 001AE044  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801B10E8 001AE048  4B F8 03 51 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B10EC 001AE04C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B10F0 001AE050  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801B10F4 001AE054  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801B10F8 001AE058  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B10FC 001AE05C  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 801B1100 001AE060  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B1104 001AE064  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B1108 001AE068  90 81 00 08 */	stw r4, 8(r1)
/* 801B110C 001AE06C  90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 801B1110 001AE070  90 01 00 08 */	stw r0, 8(r1)
/* 801B1114 001AE074  48 00 00 98 */	b lbl_801B11AC
lbl_801B1118:
/* 801B1118 001AE078  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B111C 001AE07C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B1120 001AE080  2C 00 00 01 */	cmpwi r0, 1
/* 801B1124 001AE084  41 82 00 88 */	beq lbl_801B11AC
/* 801B1128 001AE088  38 00 00 04 */	li r0, 4
/* 801B112C 001AE08C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B1130 001AE090  48 00 00 7C */	b lbl_801B11AC
lbl_801B1134:
/* 801B1134 001AE094  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1138 001AE098  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801B113C 001AE09C  41 82 00 0C */	beq lbl_801B1148
/* 801B1140 001AE0A0  C0 02 A9 0C */	lfs f0, lbl_805AC62C@sda21(r2)
/* 801B1144 001AE0A4  48 00 00 08 */	b lbl_801B114C
lbl_801B1148:
/* 801B1148 001AE0A8  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
lbl_801B114C:
/* 801B114C 001AE0AC  D0 1E 07 C0 */	stfs f0, 0x7c0(r30)
/* 801B1150 001AE0B0  38 00 FF FF */	li r0, -1
/* 801B1154 001AE0B4  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B1158 001AE0B8  38 E0 00 00 */	li r7, 0
/* 801B115C 001AE0BC  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 801B1160 001AE0C0  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 801B1164 001AE0C4  7F C3 F3 78 */	mr r3, r30
/* 801B1168 001AE0C8  7F E4 FB 78 */	mr r4, r31
/* 801B116C 001AE0CC  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1170 001AE0D0  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 801B1174 001AE0D4  38 BE 07 9C */	addi r5, r30, 0x79c
/* 801B1178 001AE0D8  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B117C 001AE0DC  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1180 001AE0E0  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 801B1184 001AE0E4  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B1188 001AE0E8  4B FF D2 01 */	bl sub_801ae388
/* 801B118C 001AE0EC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B1190 001AE0F0  7F C3 F3 78 */	mr r3, r30
/* 801B1194 001AE0F4  38 C4 66 A0 */	addi r6, r4, sZeroVector__9CVector3f@l
/* 801B1198 001AE0F8  38 BE 07 A0 */	addi r5, r30, 0x7a0
/* 801B119C 001AE0FC  7F E4 FB 78 */	mr r4, r31
/* 801B11A0 001AE100  4B FF D1 E9 */	bl sub_801ae388
/* 801B11A4 001AE104  80 0D A4 98 */	lwz r0, lbl_805A9058@sda21(r13)
/* 801B11A8 001AE108  90 1E 04 30 */	stw r0, 0x430(r30)
lbl_801B11AC:
/* 801B11AC 001AE10C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B11B0 001AE110  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B11B4 001AE114  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B11B8 001AE118  7C 08 03 A6 */	mtlr r0
/* 801B11BC 001AE11C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B11C0 001AE120  4E 80 00 20 */	blr

.global Faint__9CFlaahgraFR13CStateManager9EStateMsgf
Faint__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B11C4 001AE124  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B11C8 001AE128  7C 08 02 A6 */	mflr r0
/* 801B11CC 001AE12C  2C 05 00 01 */	cmpwi r5, 1
/* 801B11D0 001AE130  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B11D4 001AE134  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B11D8 001AE138  7C 7F 1B 78 */	mr r31, r3
/* 801B11DC 001AE13C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801B11E0 001AE140  7C 9E 23 78 */	mr r30, r4
/* 801B11E4 001AE144  41 82 01 14 */	beq lbl_801B12F8
/* 801B11E8 001AE148  40 80 00 10 */	bge lbl_801B11F8
/* 801B11EC 001AE14C  2C 05 00 00 */	cmpwi r5, 0
/* 801B11F0 001AE150  40 80 00 14 */	bge lbl_801B1204
/* 801B11F4 001AE154  48 00 02 80 */	b lbl_801B1474
lbl_801B11F8:
/* 801B11F8 001AE158  2C 05 00 03 */	cmpwi r5, 3
/* 801B11FC 001AE15C  40 80 02 78 */	bge lbl_801B1474
/* 801B1200 001AE160  48 00 02 44 */	b lbl_801B1444
lbl_801B1204:
/* 801B1204 001AE164  38 E0 00 00 */	li r7, 0
/* 801B1208 001AE168  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B120C 001AE16C  90 FF 05 68 */	stw r7, 0x568(r31)
/* 801B1210 001AE170  7F C5 F3 78 */	mr r5, r30
/* 801B1214 001AE174  38 80 00 03 */	li r4, 3
/* 801B1218 001AE178  38 C0 FF FF */	li r6, -1
/* 801B121C 001AE17C  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 801B1220 001AE180  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B1224 001AE184  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 801B1228 001AE188  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B122C 001AE18C  90 FF 07 F8 */	stw r7, 0x7f8(r31)
/* 801B1230 001AE190  4B E9 FE 91 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801B1234 001AE194  7F E3 FB 78 */	mr r3, r31
/* 801B1238 001AE198  7F C5 F3 78 */	mr r5, r30
/* 801B123C 001AE19C  38 80 00 0C */	li r4, 0xc
/* 801B1240 001AE1A0  38 C0 FF FF */	li r6, -1
/* 801B1244 001AE1A4  4B E9 FE 7D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801B1248 001AE1A8  80 9F 07 AC */	lwz r4, 0x7ac(r31)
/* 801B124C 001AE1AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1250 001AE1B0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801B1254 001AE1B4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B1258 001AE1B8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801B125C 001AE1BC  54 84 10 3A */	slwi r4, r4, 2
/* 801B1260 001AE1C0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801B1264 001AE1C4  FC 40 10 50 */	fneg f2, f2
/* 801B1268 001AE1C8  FC 20 08 50 */	fneg f1, f1
/* 801B126C 001AE1CC  38 62 A8 9C */	addi r3, r2, lbl_805AC5BC@sda21
/* 801B1270 001AE1D0  FC 00 00 50 */	fneg f0, f0
/* 801B1274 001AE1D4  7C C3 20 2E */	lwzx r6, r3, r4
/* 801B1278 001AE1D8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B127C 001AE1DC  3C 80 80 3E */	lis r4, lbl_803DAA50@ha
/* 801B1280 001AE1E0  38 A0 00 03 */	li r5, 3
/* 801B1284 001AE1E4  3B E3 00 04 */	addi r31, r3, 4
/* 801B1288 001AE1E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801B128C 001AE1EC  38 04 AA 50 */	addi r0, r4, lbl_803DAA50@l
/* 801B1290 001AE1F0  7F E3 FB 78 */	mr r3, r31
/* 801B1294 001AE1F4  38 80 00 03 */	li r4, 3
/* 801B1298 001AE1F8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801B129C 001AE1FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801B12A0 001AE200  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801B12A4 001AE204  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801B12A8 001AE208  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801B12AC 001AE20C  90 C1 00 34 */	stw r6, 0x34(r1)
/* 801B12B0 001AE210  4B F8 01 89 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B12B4 001AE214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B12B8 001AE218  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 801B12BC 001AE21C  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 801B12C0 001AE220  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B12C4 001AE224  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 801B12C8 001AE228  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B12CC 001AE22C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801B12D0 001AE230  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801B12D4 001AE234  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 801B12D8 001AE238  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801B12DC 001AE23C  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 801B12E0 001AE240  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801B12E4 001AE244  90 BF 00 EC */	stw r5, 0xec(r31)
/* 801B12E8 001AE248  90 81 00 20 */	stw r4, 0x20(r1)
/* 801B12EC 001AE24C  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 801B12F0 001AE250  90 01 00 20 */	stw r0, 0x20(r1)
/* 801B12F4 001AE254  48 00 01 80 */	b lbl_801B1474
lbl_801B12F8:
/* 801B12F8 001AE258  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801B12FC 001AE25C  2C 00 00 01 */	cmpwi r0, 1
/* 801B1300 001AE260  41 82 01 74 */	beq lbl_801B1474
/* 801B1304 001AE264  40 80 00 10 */	bge lbl_801B1314
/* 801B1308 001AE268  2C 00 00 00 */	cmpwi r0, 0
/* 801B130C 001AE26C  40 80 00 14 */	bge lbl_801B1320
/* 801B1310 001AE270  48 00 01 64 */	b lbl_801B1474
lbl_801B1314:
/* 801B1314 001AE274  2C 00 00 03 */	cmpwi r0, 3
/* 801B1318 001AE278  40 80 01 5C */	bge lbl_801B1474
/* 801B131C 001AE27C  48 00 00 E0 */	b lbl_801B13FC
lbl_801B1320:
/* 801B1320 001AE280  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801B1324 001AE284  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801B1328 001AE288  2C 00 00 00 */	cmpwi r0, 0
/* 801B132C 001AE28C  40 82 00 24 */	bne lbl_801B1350
/* 801B1330 001AE290  38 00 00 02 */	li r0, 2
/* 801B1334 001AE294  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B1338 001AE298  4B FF CB 49 */	bl sub_801ade80
/* 801B133C 001AE29C  7F E3 FB 78 */	mr r3, r31
/* 801B1340 001AE2A0  7F C4 F3 78 */	mr r4, r30
/* 801B1344 001AE2A4  38 A0 00 01 */	li r5, 1
/* 801B1348 001AE2A8  4B FF DC 6D */	bl sub_801aefb4
/* 801B134C 001AE2AC  48 00 01 28 */	b lbl_801B1474
lbl_801B1350:
/* 801B1350 001AE2B0  80 9F 07 AC */	lwz r4, 0x7ac(r31)
/* 801B1354 001AE2B4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1358 001AE2B8  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801B135C 001AE2BC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B1360 001AE2C0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801B1364 001AE2C4  54 84 10 3A */	slwi r4, r4, 2
/* 801B1368 001AE2C8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801B136C 001AE2CC  FC 40 10 50 */	fneg f2, f2
/* 801B1370 001AE2D0  FC 20 08 50 */	fneg f1, f1
/* 801B1374 001AE2D4  38 62 A8 9C */	addi r3, r2, lbl_805AC5BC@sda21
/* 801B1378 001AE2D8  FC 00 00 50 */	fneg f0, f0
/* 801B137C 001AE2DC  7C E3 20 2E */	lwzx r7, r3, r4
/* 801B1380 001AE2E0  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 801B1384 001AE2E4  38 A0 00 03 */	li r5, 3
/* 801B1388 001AE2E8  3B E6 00 04 */	addi r31, r6, 4
/* 801B138C 001AE2EC  90 01 00 08 */	stw r0, 8(r1)
/* 801B1390 001AE2F0  38 03 AA 50 */	addi r0, r3, lbl_803DAA50@l
/* 801B1394 001AE2F4  38 80 00 03 */	li r4, 3
/* 801B1398 001AE2F8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801B139C 001AE2FC  7F E3 FB 78 */	mr r3, r31
/* 801B13A0 001AE300  90 01 00 08 */	stw r0, 8(r1)
/* 801B13A4 001AE304  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801B13A8 001AE308  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801B13AC 001AE30C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801B13B0 001AE310  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 801B13B4 001AE314  4B F8 00 85 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B13B8 001AE318  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B13BC 001AE31C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 801B13C0 001AE320  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 801B13C4 001AE324  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B13C8 001AE328  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 801B13CC 001AE32C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B13D0 001AE330  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801B13D4 001AE334  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B13D8 001AE338  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 801B13DC 001AE33C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801B13E0 001AE340  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 801B13E4 001AE344  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801B13E8 001AE348  90 BF 00 EC */	stw r5, 0xec(r31)
/* 801B13EC 001AE34C  90 81 00 08 */	stw r4, 8(r1)
/* 801B13F0 001AE350  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 801B13F4 001AE354  90 01 00 08 */	stw r0, 8(r1)
/* 801B13F8 001AE358  48 00 00 7C */	b lbl_801B1474
lbl_801B13FC:
/* 801B13FC 001AE35C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B1400 001AE360  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B1404 001AE364  2C 00 00 02 */	cmpwi r0, 2
/* 801B1408 001AE368  40 82 00 30 */	bne lbl_801B1438
/* 801B140C 001AE36C  C0 1F 07 D4 */	lfs f0, 0x7d4(r31)
/* 801B1410 001AE370  EC 00 08 2A */	fadds f0, f0, f1
/* 801B1414 001AE374  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 801B1418 001AE378  C0 3F 07 D4 */	lfs f1, 0x7d4(r31)
/* 801B141C 001AE37C  C0 1F 05 78 */	lfs f0, 0x578(r31)
/* 801B1420 001AE380  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1424 001AE384  4C 41 13 82 */	cror 2, 1, 2
/* 801B1428 001AE388  40 82 00 4C */	bne lbl_801B1474
/* 801B142C 001AE38C  38 00 00 04 */	li r0, 4
/* 801B1430 001AE390  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B1434 001AE394  48 00 00 40 */	b lbl_801B1474
lbl_801B1438:
/* 801B1438 001AE398  38 9F 08 94 */	addi r4, r31, 0x894
/* 801B143C 001AE39C  4B F8 92 69 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 801B1440 001AE3A0  48 00 00 34 */	b lbl_801B1474
lbl_801B1444:
/* 801B1444 001AE3A4  88 BF 08 E4 */	lbz r5, 0x8e4(r31)
/* 801B1448 001AE3A8  38 00 00 00 */	li r0, 0
/* 801B144C 001AE3AC  50 05 26 F6 */	rlwimi r5, r0, 4, 0x1b, 0x1b
/* 801B1450 001AE3B0  38 00 00 03 */	li r0, 3
/* 801B1454 001AE3B4  98 BF 08 E4 */	stb r5, 0x8e4(r31)
/* 801B1458 001AE3B8  38 A0 00 00 */	li r5, 0
/* 801B145C 001AE3BC  80 DF 07 AC */	lwz r6, 0x7ac(r31)
/* 801B1460 001AE3C0  7C C6 00 34 */	cntlzw r6, r6
/* 801B1464 001AE3C4  54 C6 D9 7E */	srwi r6, r6, 5
/* 801B1468 001AE3C8  90 DF 07 AC */	stw r6, 0x7ac(r31)
/* 801B146C 001AE3CC  90 1F 07 80 */	stw r0, 0x780(r31)
/* 801B1470 001AE3D0  4B FF DB 45 */	bl sub_801aefb4
lbl_801B1474:
/* 801B1474 001AE3D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B1478 001AE3D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B147C 001AE3DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801B1480 001AE3E0  7C 08 03 A6 */	mtlr r0
/* 801B1484 001AE3E4  38 21 00 40 */	addi r1, r1, 0x40
/* 801B1488 001AE3E8  4E 80 00 20 */	blr

.global Growth__9CFlaahgraFR13CStateManager9EStateMsgf
Growth__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B148C 001AE3EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B1490 001AE3F0  7C 08 02 A6 */	mflr r0
/* 801B1494 001AE3F4  2C 05 00 01 */	cmpwi r5, 1
/* 801B1498 001AE3F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B149C 001AE3FC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801B14A0 001AE400  7C 9F 23 78 */	mr r31, r4
/* 801B14A4 001AE404  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801B14A8 001AE408  7C 7E 1B 78 */	mr r30, r3
/* 801B14AC 001AE40C  41 82 01 28 */	beq lbl_801B15D4
/* 801B14B0 001AE410  40 80 00 10 */	bge lbl_801B14C0
/* 801B14B4 001AE414  2C 05 00 00 */	cmpwi r5, 0
/* 801B14B8 001AE418  40 80 00 14 */	bge lbl_801B14CC
/* 801B14BC 001AE41C  48 00 03 28 */	b lbl_801B17E4
lbl_801B14C0:
/* 801B14C0 001AE420  2C 05 00 03 */	cmpwi r5, 3
/* 801B14C4 001AE424  40 80 03 20 */	bge lbl_801B17E4
/* 801B14C8 001AE428  48 00 02 BC */	b lbl_801B1784
lbl_801B14CC:
/* 801B14CC 001AE42C  39 60 00 00 */	li r11, 0
/* 801B14D0 001AE430  80 A1 00 50 */	lwz r5, 0x50(r1)
/* 801B14D4 001AE434  91 7E 05 68 */	stw r11, 0x568(r30)
/* 801B14D8 001AE438  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801B14DC 001AE43C  39 44 AA 68 */	addi r10, r4, lbl_803DAA68@l
/* 801B14E0 001AE440  51 65 F8 00 */	rlwimi r5, r11, 0x1f, 0, 0
/* 801B14E4 001AE444  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B14E8 001AE448  51 60 2E B4 */	rlwimi r0, r11, 5, 0x1a, 0x1a
/* 801B14EC 001AE44C  3C 80 80 3E */	lis r4, lbl_803DA9F0@ha
/* 801B14F0 001AE450  39 20 00 0E */	li r9, 0xe
/* 801B14F4 001AE454  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B14F8 001AE458  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B14FC 001AE45C  7C A0 2B 78 */	mr r0, r5
/* 801B1500 001AE460  38 E0 00 02 */	li r7, 2
/* 801B1504 001AE464  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 801B1508 001AE468  38 C0 FF FF */	li r6, -1
/* 801B150C 001AE46C  39 04 A9 F0 */	addi r8, r4, lbl_803DA9F0@l
/* 801B1510 001AE470  91 41 00 34 */	stw r10, 0x34(r1)
/* 801B1514 001AE474  C0 23 00 04 */	lfs f1, 4(r3)
/* 801B1518 001AE478  51 60 F0 42 */	rlwimi r0, r11, 0x1e, 1, 1
/* 801B151C 001AE47C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B1520 001AE480  38 80 00 0E */	li r4, 0xe
/* 801B1524 001AE484  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B1528 001AE488  90 A1 00 50 */	stw r5, 0x50(r1)
/* 801B152C 001AE48C  3B E3 00 04 */	addi r31, r3, 4
/* 801B1530 001AE490  91 21 00 38 */	stw r9, 0x38(r1)
/* 801B1534 001AE494  7F E3 FB 78 */	mr r3, r31
/* 801B1538 001AE498  91 01 00 34 */	stw r8, 0x34(r1)
/* 801B153C 001AE49C  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 801B1540 001AE4A0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801B1544 001AE4A4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801B1548 001AE4A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801B154C 001AE4AC  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 801B1550 001AE4B0  90 01 00 50 */	stw r0, 0x50(r1)
/* 801B1554 001AE4B4  4B F7 FE E5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B1558 001AE4B8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801B155C 001AE4BC  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801B1560 001AE4C0  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801B1564 001AE4C4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1568 001AE4C8  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801B156C 001AE4CC  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801B1570 001AE4D0  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 801B1574 001AE4D4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801B1578 001AE4D8  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801B157C 001AE4DC  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 801B1580 001AE4E0  90 1F 01 98 */	stw r0, 0x198(r31)
/* 801B1584 001AE4E4  80 01 00 48 */	lwz r0, 0x48(r1)
/* 801B1588 001AE4E8  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801B158C 001AE4EC  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 801B1590 001AE4F0  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 801B1594 001AE4F4  80 01 00 50 */	lwz r0, 0x50(r1)
/* 801B1598 001AE4F8  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801B159C 001AE4FC  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 801B15A0 001AE500  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 801B15A4 001AE504  90 81 00 34 */	stw r4, 0x34(r1)
/* 801B15A8 001AE508  90 1E 07 84 */	stw r0, 0x784(r30)
/* 801B15AC 001AE50C  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801B15B0 001AE510  90 61 00 34 */	stw r3, 0x34(r1)
/* 801B15B4 001AE514  C0 44 00 00 */	lfs f2, 0(r4)
/* 801B15B8 001AE518  C0 24 00 04 */	lfs f1, 4(r4)
/* 801B15BC 001AE51C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801B15C0 001AE520  D0 41 00 08 */	stfs f2, 8(r1)
/* 801B15C4 001AE524  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801B15C8 001AE528  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801B15CC 001AE52C  D0 1E 08 1C */	stfs f0, 0x81c(r30)
/* 801B15D0 001AE530  48 00 02 14 */	b lbl_801B17E4
lbl_801B15D4:
/* 801B15D4 001AE534  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801B15D8 001AE538  2C 00 00 01 */	cmpwi r0, 1
/* 801B15DC 001AE53C  41 82 02 08 */	beq lbl_801B17E4
/* 801B15E0 001AE540  40 80 00 10 */	bge lbl_801B15F0
/* 801B15E4 001AE544  2C 00 00 00 */	cmpwi r0, 0
/* 801B15E8 001AE548  40 80 00 14 */	bge lbl_801B15FC
/* 801B15EC 001AE54C  48 00 01 F8 */	b lbl_801B17E4
lbl_801B15F0:
/* 801B15F0 001AE550  2C 00 00 03 */	cmpwi r0, 3
/* 801B15F4 001AE554  40 80 01 F0 */	bge lbl_801B17E4
/* 801B15F8 001AE558  48 00 00 F0 */	b lbl_801B16E8
lbl_801B15FC:
/* 801B15FC 001AE55C  81 5E 04 50 */	lwz r10, 0x450(r30)
/* 801B1600 001AE560  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801B1604 001AE564  2C 00 00 0C */	cmpwi r0, 0xc
/* 801B1608 001AE568  40 82 00 10 */	bne lbl_801B1618
/* 801B160C 001AE56C  38 00 00 02 */	li r0, 2
/* 801B1610 001AE570  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B1614 001AE574  48 00 01 D0 */	b lbl_801B17E4
lbl_801B1618:
/* 801B1618 001AE578  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801B161C 001AE57C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B1620 001AE580  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 801B1624 001AE584  80 81 00 30 */	lwz r4, 0x30(r1)
/* 801B1628 001AE588  38 60 00 00 */	li r3, 0
/* 801B162C 001AE58C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 801B1630 001AE590  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 801B1634 001AE594  C0 45 00 00 */	lfs f2, 0(r5)
/* 801B1638 001AE598  C0 25 00 04 */	lfs f1, 4(r5)
/* 801B163C 001AE59C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801B1640 001AE5A0  C0 05 00 08 */	lfs f0, 8(r5)
/* 801B1644 001AE5A4  7C 80 23 78 */	mr r0, r4
/* 801B1648 001AE5A8  39 00 00 0E */	li r8, 0xe
/* 801B164C 001AE5AC  38 C0 00 02 */	li r6, 2
/* 801B1650 001AE5B0  38 A0 FF FF */	li r5, -1
/* 801B1654 001AE5B4  3B EA 00 04 */	addi r31, r10, 4
/* 801B1658 001AE5B8  91 21 00 14 */	stw r9, 0x14(r1)
/* 801B165C 001AE5BC  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801B1660 001AE5C0  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 801B1664 001AE5C4  7F E3 FB 78 */	mr r3, r31
/* 801B1668 001AE5C8  90 81 00 30 */	stw r4, 0x30(r1)
/* 801B166C 001AE5CC  38 80 00 0E */	li r4, 0xe
/* 801B1670 001AE5D0  91 01 00 18 */	stw r8, 0x18(r1)
/* 801B1674 001AE5D4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 801B1678 001AE5D8  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 801B167C 001AE5DC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801B1680 001AE5E0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801B1684 001AE5E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801B1688 001AE5E8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 801B168C 001AE5EC  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B1690 001AE5F0  4B F7 FD A9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B1694 001AE5F4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801B1698 001AE5F8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801B169C 001AE5FC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801B16A0 001AE600  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B16A4 001AE604  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801B16A8 001AE608  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B16AC 001AE60C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801B16B0 001AE610  80 61 00 20 */	lwz r3, 0x20(r1)
/* 801B16B4 001AE614  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801B16B8 001AE618  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801B16BC 001AE61C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801B16C0 001AE620  80 61 00 28 */	lwz r3, 0x28(r1)
/* 801B16C4 001AE624  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801B16C8 001AE628  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 801B16CC 001AE62C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801B16D0 001AE630  80 61 00 30 */	lwz r3, 0x30(r1)
/* 801B16D4 001AE634  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801B16D8 001AE638  90 81 00 14 */	stw r4, 0x14(r1)
/* 801B16DC 001AE63C  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801B16E0 001AE640  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B16E4 001AE644  48 00 01 00 */	b lbl_801B17E4
lbl_801B16E8:
/* 801B16E8 001AE648  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801B16EC 001AE64C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B16F0 001AE650  2C 00 00 0C */	cmpwi r0, 0xc
/* 801B16F4 001AE654  41 82 00 10 */	beq lbl_801B1704
/* 801B16F8 001AE658  38 00 00 04 */	li r0, 4
/* 801B16FC 001AE65C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801B1700 001AE660  48 00 00 48 */	b lbl_801B1748
lbl_801B1704:
/* 801B1704 001AE664  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1708 001AE668  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801B170C 001AE66C  41 82 00 3C */	beq lbl_801B1748
/* 801B1710 001AE670  4B FF D1 B5 */	bl sub_801ae8c4
/* 801B1714 001AE674  C0 5E 07 C4 */	lfs f2, 0x7c4(r30)
/* 801B1718 001AE678  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B171C 001AE67C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B1720 001AE680  40 81 00 14 */	ble lbl_801B1734
/* 801B1724 001AE684  EC 01 10 24 */	fdivs f0, f1, f2
/* 801B1728 001AE688  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
/* 801B172C 001AE68C  EC 21 00 28 */	fsubs f1, f1, f0
/* 801B1730 001AE690  48 00 00 08 */	b lbl_801B1738
lbl_801B1734:
/* 801B1734 001AE694  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
lbl_801B1738:
/* 801B1738 001AE698  C0 5E 08 1C */	lfs f2, 0x81c(r30)
/* 801B173C 001AE69C  7F C3 F3 78 */	mr r3, r30
/* 801B1740 001AE6A0  C0 7E 05 70 */	lfs f3, 0x570(r30)
/* 801B1744 001AE6A4  4B FF D2 09 */	bl sub_801ae94c
lbl_801B1748:
/* 801B1748 001AE6A8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801B174C 001AE6AC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801B1750 001AE6B0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801B1754 001AE6B4  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801B1758 001AE6B8  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801B175C 001AE6BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B1760 001AE6C0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801B1764 001AE6C4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801B1768 001AE6C8  EC 64 18 28 */	fsubs f3, f4, f3
/* 801B176C 001AE6CC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B1770 001AE6D0  EC 22 08 28 */	fsubs f1, f2, f1
/* 801B1774 001AE6D4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801B1778 001AE6D8  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 801B177C 001AE6DC  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 801B1780 001AE6E0  48 00 00 64 */	b lbl_801B17E4
lbl_801B1784:
/* 801B1784 001AE6E4  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
/* 801B1788 001AE6E8  C0 5E 08 1C */	lfs f2, 0x81c(r30)
/* 801B178C 001AE6EC  C0 7E 05 70 */	lfs f3, 0x570(r30)
/* 801B1790 001AE6F0  4B FF D1 BD */	bl sub_801ae94c
/* 801B1794 001AE6F4  88 7E 08 E4 */	lbz r3, 0x8e4(r30)
/* 801B1798 001AE6F8  38 00 00 00 */	li r0, 0
/* 801B179C 001AE6FC  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801B17A0 001AE700  38 00 00 03 */	li r0, 3
/* 801B17A4 001AE704  98 7E 08 E4 */	stb r3, 0x8e4(r30)
/* 801B17A8 001AE708  7F E4 FB 78 */	mr r4, r31
/* 801B17AC 001AE70C  38 A0 00 01 */	li r5, 1
/* 801B17B0 001AE710  90 1E 07 80 */	stw r0, 0x780(r30)
/* 801B17B4 001AE714  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 801B17B8 001AE718  4B FF 5B 41 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B17BC 001AE71C  80 7E 07 A0 */	lwz r3, 0x7a0(r30)
/* 801B17C0 001AE720  7F E4 FB 78 */	mr r4, r31
/* 801B17C4 001AE724  38 A0 00 01 */	li r5, 1
/* 801B17C8 001AE728  4B FF 5B 31 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B17CC 001AE72C  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B17D0 001AE730  38 60 00 00 */	li r3, 0
/* 801B17D4 001AE734  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801B17D8 001AE738  98 1E 08 E4 */	stb r0, 0x8e4(r30)
/* 801B17DC 001AE73C  80 0D A4 98 */	lwz r0, lbl_805A9058@sda21(r13)
/* 801B17E0 001AE740  90 1E 04 30 */	stw r0, 0x430(r30)
lbl_801B17E4:
/* 801B17E4 001AE744  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B17E8 001AE748  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801B17EC 001AE74C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801B17F0 001AE750  7C 08 03 A6 */	mtlr r0
/* 801B17F4 001AE754  38 21 00 60 */	addi r1, r1, 0x60
/* 801B17F8 001AE758  4E 80 00 20 */	blr

.global Generate__9CFlaahgraFR13CStateManager9EStateMsgf
Generate__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B17FC 001AE75C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B1800 001AE760  7C 08 02 A6 */	mflr r0
/* 801B1804 001AE764  2C 05 00 01 */	cmpwi r5, 1
/* 801B1808 001AE768  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B180C 001AE76C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B1810 001AE770  7C 7F 1B 78 */	mr r31, r3
/* 801B1814 001AE774  41 82 00 2C */	beq lbl_801B1840
/* 801B1818 001AE778  40 80 00 10 */	bge lbl_801B1828
/* 801B181C 001AE77C  2C 05 00 00 */	cmpwi r5, 0
/* 801B1820 001AE780  40 80 00 14 */	bge lbl_801B1834
/* 801B1824 001AE784  48 00 01 64 */	b lbl_801B1988
lbl_801B1828:
/* 801B1828 001AE788  2C 05 00 03 */	cmpwi r5, 3
/* 801B182C 001AE78C  40 80 01 5C */	bge lbl_801B1988
/* 801B1830 001AE790  48 00 01 44 */	b lbl_801B1974
lbl_801B1834:
/* 801B1834 001AE794  38 00 00 00 */	li r0, 0
/* 801B1838 001AE798  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B183C 001AE79C  48 00 01 4C */	b lbl_801B1988
lbl_801B1840:
/* 801B1840 001AE7A0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801B1844 001AE7A4  2C 00 00 01 */	cmpwi r0, 1
/* 801B1848 001AE7A8  41 82 01 40 */	beq lbl_801B1988
/* 801B184C 001AE7AC  40 80 00 10 */	bge lbl_801B185C
/* 801B1850 001AE7B0  2C 00 00 00 */	cmpwi r0, 0
/* 801B1854 001AE7B4  40 80 00 14 */	bge lbl_801B1868
/* 801B1858 001AE7B8  48 00 01 30 */	b lbl_801B1988
lbl_801B185C:
/* 801B185C 001AE7BC  2C 00 00 03 */	cmpwi r0, 3
/* 801B1860 001AE7C0  40 80 01 28 */	bge lbl_801B1988
/* 801B1864 001AE7C4  48 00 00 F4 */	b lbl_801B1958
lbl_801B1868:
/* 801B1868 001AE7C8  81 5F 04 50 */	lwz r10, 0x450(r31)
/* 801B186C 001AE7CC  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801B1870 001AE7D0  2C 00 00 0C */	cmpwi r0, 0xc
/* 801B1874 001AE7D4  40 82 00 1C */	bne lbl_801B1890
/* 801B1878 001AE7D8  38 00 00 02 */	li r0, 2
/* 801B187C 001AE7DC  38 80 00 01 */	li r4, 1
/* 801B1880 001AE7E0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B1884 001AE7E4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B1888 001AE7E8  4B F8 91 51 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801B188C 001AE7EC  48 00 00 FC */	b lbl_801B1988
lbl_801B1890:
/* 801B1890 001AE7F0  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801B1894 001AE7F4  38 C0 00 00 */	li r6, 0
/* 801B1898 001AE7F8  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 801B189C 001AE7FC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B18A0 001AE800  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 801B18A4 001AE804  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B18A8 001AE808  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 801B18AC 001AE80C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801B18B0 001AE810  7C 60 1B 78 */	mr r0, r3
/* 801B18B4 001AE814  39 00 00 0E */	li r8, 0xe
/* 801B18B8 001AE818  C0 24 00 04 */	lfs f1, 4(r4)
/* 801B18BC 001AE81C  38 A0 FF FF */	li r5, -1
/* 801B18C0 001AE820  C0 04 00 08 */	lfs f0, 8(r4)
/* 801B18C4 001AE824  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801B18C8 001AE828  91 21 00 08 */	stw r9, 8(r1)
/* 801B18CC 001AE82C  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 801B18D0 001AE830  3B EA 00 04 */	addi r31, r10, 4
/* 801B18D4 001AE834  38 80 00 0E */	li r4, 0xe
/* 801B18D8 001AE838  90 61 00 24 */	stw r3, 0x24(r1)
/* 801B18DC 001AE83C  7F E3 FB 78 */	mr r3, r31
/* 801B18E0 001AE840  91 01 00 0C */	stw r8, 0xc(r1)
/* 801B18E4 001AE844  90 E1 00 08 */	stw r7, 8(r1)
/* 801B18E8 001AE848  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801B18EC 001AE84C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801B18F0 001AE850  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801B18F4 001AE854  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B18F8 001AE858  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801B18FC 001AE85C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B1900 001AE860  4B F7 FB 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B1904 001AE864  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B1908 001AE868  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801B190C 001AE86C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801B1910 001AE870  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1914 001AE874  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801B1918 001AE878  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B191C 001AE87C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801B1920 001AE880  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B1924 001AE884  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801B1928 001AE888  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801B192C 001AE88C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801B1930 001AE890  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801B1934 001AE894  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801B1938 001AE898  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801B193C 001AE89C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801B1940 001AE8A0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801B1944 001AE8A4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801B1948 001AE8A8  90 81 00 08 */	stw r4, 8(r1)
/* 801B194C 001AE8AC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801B1950 001AE8B0  90 01 00 08 */	stw r0, 8(r1)
/* 801B1954 001AE8B4  48 00 00 34 */	b lbl_801B1988
lbl_801B1958:
/* 801B1958 001AE8B8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B195C 001AE8BC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B1960 001AE8C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 801B1964 001AE8C4  41 82 00 24 */	beq lbl_801B1988
/* 801B1968 001AE8C8  38 00 00 04 */	li r0, 4
/* 801B196C 001AE8CC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801B1970 001AE8D0  48 00 00 18 */	b lbl_801B1988
lbl_801B1974:
/* 801B1974 001AE8D4  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 801B1978 001AE8D8  38 A0 00 01 */	li r5, 1
/* 801B197C 001AE8DC  4B FF 59 7D */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B1980 001AE8E0  C0 02 A9 10 */	lfs f0, lbl_805AC630@sda21(r2)
/* 801B1984 001AE8E4  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
lbl_801B1988:
/* 801B1988 001AE8E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B198C 001AE8EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B1990 001AE8F0  7C 08 03 A6 */	mtlr r0
/* 801B1994 001AE8F4  38 21 00 30 */	addi r1, r1, 0x30
/* 801B1998 001AE8F8  4E 80 00 20 */	blr

.global Enraged__9CFlaahgraFR13CStateManager9EStateMsgf
Enraged__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B199C 001AE8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B19A0 001AE900  7C 08 02 A6 */	mflr r0
/* 801B19A4 001AE904  2C 05 00 01 */	cmpwi r5, 1
/* 801B19A8 001AE908  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B19AC 001AE90C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B19B0 001AE910  41 82 00 2C */	beq lbl_801B19DC
/* 801B19B4 001AE914  40 80 00 10 */	bge lbl_801B19C4
/* 801B19B8 001AE918  2C 05 00 00 */	cmpwi r5, 0
/* 801B19BC 001AE91C  40 80 00 14 */	bge lbl_801B19D0
/* 801B19C0 001AE920  48 00 00 E8 */	b lbl_801B1AA8
lbl_801B19C4:
/* 801B19C4 001AE924  2C 05 00 03 */	cmpwi r5, 3
/* 801B19C8 001AE928  40 80 00 E0 */	bge lbl_801B1AA8
/* 801B19CC 001AE92C  48 00 00 D4 */	b lbl_801B1AA0
lbl_801B19D0:
/* 801B19D0 001AE930  38 00 00 00 */	li r0, 0
/* 801B19D4 001AE934  90 03 05 68 */	stw r0, 0x568(r3)
/* 801B19D8 001AE938  48 00 00 D0 */	b lbl_801B1AA8
lbl_801B19DC:
/* 801B19DC 001AE93C  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801B19E0 001AE940  2C 00 00 01 */	cmpwi r0, 1
/* 801B19E4 001AE944  41 82 00 C4 */	beq lbl_801B1AA8
/* 801B19E8 001AE948  40 80 00 10 */	bge lbl_801B19F8
/* 801B19EC 001AE94C  2C 00 00 00 */	cmpwi r0, 0
/* 801B19F0 001AE950  40 80 00 14 */	bge lbl_801B1A04
/* 801B19F4 001AE954  48 00 00 B4 */	b lbl_801B1AA8
lbl_801B19F8:
/* 801B19F8 001AE958  2C 00 00 03 */	cmpwi r0, 3
/* 801B19FC 001AE95C  40 80 00 AC */	bge lbl_801B1AA8
/* 801B1A00 001AE960  48 00 00 84 */	b lbl_801B1A84
lbl_801B1A04:
/* 801B1A04 001AE964  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 801B1A08 001AE968  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801B1A0C 001AE96C  2C 00 00 10 */	cmpwi r0, 0x10
/* 801B1A10 001AE970  40 82 00 10 */	bne lbl_801B1A20
/* 801B1A14 001AE974  38 00 00 02 */	li r0, 2
/* 801B1A18 001AE978  90 03 05 68 */	stw r0, 0x568(r3)
/* 801B1A1C 001AE97C  48 00 00 8C */	b lbl_801B1AA8
lbl_801B1A20:
/* 801B1A20 001AE980  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801B1A24 001AE984  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801B1A28 001AE988  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801B1A2C 001AE98C  38 80 00 12 */	li r4, 0x12
/* 801B1A30 001AE990  90 01 00 08 */	stw r0, 8(r1)
/* 801B1A34 001AE994  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801B1A38 001AE998  38 00 00 00 */	li r0, 0
/* 801B1A3C 001AE99C  3B E6 00 04 */	addi r31, r6, 4
/* 801B1A40 001AE9A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 801B1A44 001AE9A4  7F E3 FB 78 */	mr r3, r31
/* 801B1A48 001AE9A8  38 80 00 12 */	li r4, 0x12
/* 801B1A4C 001AE9AC  90 A1 00 08 */	stw r5, 8(r1)
/* 801B1A50 001AE9B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B1A54 001AE9B4  4B F7 F9 E5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B1A58 001AE9B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B1A5C 001AE9BC  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801B1A60 001AE9C0  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 801B1A64 001AE9C4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1A68 001AE9C8  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801B1A6C 001AE9CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B1A70 001AE9D0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801B1A74 001AE9D4  90 81 00 08 */	stw r4, 8(r1)
/* 801B1A78 001AE9D8  90 7F 02 18 */	stw r3, 0x218(r31)
/* 801B1A7C 001AE9DC  90 01 00 08 */	stw r0, 8(r1)
/* 801B1A80 001AE9E0  48 00 00 28 */	b lbl_801B1AA8
lbl_801B1A84:
/* 801B1A84 001AE9E4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801B1A88 001AE9E8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801B1A8C 001AE9EC  2C 00 00 10 */	cmpwi r0, 0x10
/* 801B1A90 001AE9F0  41 82 00 18 */	beq lbl_801B1AA8
/* 801B1A94 001AE9F4  38 00 00 04 */	li r0, 4
/* 801B1A98 001AE9F8  90 03 05 68 */	stw r0, 0x568(r3)
/* 801B1A9C 001AE9FC  48 00 00 0C */	b lbl_801B1AA8
lbl_801B1AA0:
/* 801B1AA0 001AEA00  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1AA4 001AEA04  D0 03 07 D0 */	stfs f0, 0x7d0(r3)
lbl_801B1AA8:
/* 801B1AA8 001AEA08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B1AAC 001AEA0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B1AB0 001AEA10  7C 08 03 A6 */	mtlr r0
/* 801B1AB4 001AEA14  38 21 00 20 */	addi r1, r1, 0x20
/* 801B1AB8 001AEA18  4E 80 00 20 */	blr

.global FadeIn__9CFlaahgraFR13CStateManager9EStateMsgf
FadeIn__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B1ABC 001AEA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B1AC0 001AEA20  7C 08 02 A6 */	mflr r0
/* 801B1AC4 001AEA24  2C 05 00 00 */	cmpwi r5, 0
/* 801B1AC8 001AEA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B1ACC 001AEA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B1AD0 001AEA30  7C 9F 23 78 */	mr r31, r4
/* 801B1AD4 001AEA34  93 C1 00 08 */	stw r30, 8(r1)
/* 801B1AD8 001AEA38  7C 7E 1B 78 */	mr r30, r3
/* 801B1ADC 001AEA3C  40 82 00 58 */	bne lbl_801B1B34
/* 801B1AE0 001AEA40  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1AE4 001AEA44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B1AE8 001AEA48  7D 89 03 A6 */	mtctr r12
/* 801B1AEC 001AEA4C  4E 80 04 21 */	bctrl
/* 801B1AF0 001AEA50  C0 23 00 00 */	lfs f1, 0(r3)
/* 801B1AF4 001AEA54  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1AF8 001AEA58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1AFC 001AEA5C  40 81 00 18 */	ble lbl_801B1B14
/* 801B1B00 001AEA60  7F C3 F3 78 */	mr r3, r30
/* 801B1B04 001AEA64  7F E5 FB 78 */	mr r5, r31
/* 801B1B08 001AEA68  38 80 00 04 */	li r4, 4
/* 801B1B0C 001AEA6C  38 C0 FF FF */	li r6, -1
/* 801B1B10 001AEA70  4B E9 F5 B1 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_801B1B14:
/* 801B1B14 001AEA74  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1B18 001AEA78  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801B1B1C 001AEA7C  40 82 00 18 */	bne lbl_801B1B34
/* 801B1B20 001AEA80  7F C3 F3 78 */	mr r3, r30
/* 801B1B24 001AEA84  7F E5 FB 78 */	mr r5, r31
/* 801B1B28 001AEA88  38 80 00 0B */	li r4, 0xb
/* 801B1B2C 001AEA8C  38 C0 FF FF */	li r6, -1
/* 801B1B30 001AEA90  4B E9 F5 91 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_801B1B34:
/* 801B1B34 001AEA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B1B38 001AEA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B1B3C 001AEA9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B1B40 001AEAA0  7C 08 03 A6 */	mtlr r0
/* 801B1B44 001AEAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B1B48 001AEAA8  4E 80 00 20 */	blr

.global FadeOut__9CFlaahgraFR13CStateManager9EStateMsgf
FadeOut__9CFlaahgraFR13CStateManager9EStateMsgf:
/* 801B1B4C 001AEAAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B1B50 001AEAB0  7C 08 02 A6 */	mflr r0
/* 801B1B54 001AEAB4  2C 05 00 00 */	cmpwi r5, 0
/* 801B1B58 001AEAB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B1B5C 001AEABC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B1B60 001AEAC0  7C 7F 1B 78 */	mr r31, r3
/* 801B1B64 001AEAC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B1B68 001AEAC8  7C 9E 23 78 */	mr r30, r4
/* 801B1B6C 001AEACC  40 82 00 F4 */	bne lbl_801B1C60
/* 801B1B70 001AEAD0  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 801B1B74 001AEAD4  38 A0 00 01 */	li r5, 1
/* 801B1B78 001AEAD8  4B FF 57 81 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B1B7C 001AEADC  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 801B1B80 001AEAE0  7F C4 F3 78 */	mr r4, r30
/* 801B1B84 001AEAE4  38 A0 00 01 */	li r5, 1
/* 801B1B88 001AEAE8  4B FF 57 71 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B1B8C 001AEAEC  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 801B1B90 001AEAF0  7F C4 F3 78 */	mr r4, r30
/* 801B1B94 001AEAF4  38 A0 00 01 */	li r5, 1
/* 801B1B98 001AEAF8  4B FF 57 61 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801B1B9C 001AEAFC  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 801B1BA0 001AEB00  7F E3 FB 78 */	mr r3, r31
/* 801B1BA4 001AEB04  C0 22 A8 DC */	lfs f1, lbl_805AC5FC@sda21(r2)
/* 801B1BA8 001AEB08  90 1F 07 84 */	stw r0, 0x784(r31)
/* 801B1BAC 001AEB0C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801B1BB0 001AEB10  C0 64 00 00 */	lfs f3, 0(r4)
/* 801B1BB4 001AEB14  C0 44 00 04 */	lfs f2, 4(r4)
/* 801B1BB8 001AEB18  C0 04 00 08 */	lfs f0, 8(r4)
/* 801B1BBC 001AEB1C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801B1BC0 001AEB20  D0 1F 08 1C */	stfs f0, 0x81c(r31)
/* 801B1BC4 001AEB24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801B1BC8 001AEB28  C0 5F 08 1C */	lfs f2, 0x81c(r31)
/* 801B1BCC 001AEB2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801B1BD0 001AEB30  C0 7F 05 70 */	lfs f3, 0x570(r31)
/* 801B1BD4 001AEB34  4B FF CD 79 */	bl sub_801ae94c
/* 801B1BD8 001AEB38  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B1BDC 001AEB3C  38 C0 00 00 */	li r6, 0
/* 801B1BE0 001AEB40  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 801B1BE4 001AEB44  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1BE8 001AEB48  98 1F 08 E4 */	stb r0, 0x8e4(r31)
/* 801B1BEC 001AEB4C  38 A0 00 03 */	li r5, 3
/* 801B1BF0 001AEB50  C0 02 A8 C4 */	lfs f0, lbl_805AC5E4@sda21(r2)
/* 801B1BF4 001AEB54  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801B1BF8 001AEB58  38 00 00 0C */	li r0, 0xc
/* 801B1BFC 001AEB5C  38 81 00 08 */	addi r4, r1, 8
/* 801B1C00 001AEB60  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
/* 801B1C04 001AEB64  90 BF 07 80 */	stw r5, 0x780(r31)
/* 801B1C08 001AEB68  88 BF 08 E4 */	lbz r5, 0x8e4(r31)
/* 801B1C0C 001AEB6C  50 C5 17 7A */	rlwimi r5, r6, 2, 0x1d, 0x1d
/* 801B1C10 001AEB70  98 BF 08 E4 */	stb r5, 0x8e4(r31)
/* 801B1C14 001AEB74  80 AD A4 98 */	lwz r5, lbl_805A9058@sda21(r13)
/* 801B1C18 001AEB78  90 BF 04 30 */	stw r5, 0x430(r31)
/* 801B1C1C 001AEB7C  90 61 00 08 */	stw r3, 8(r1)
/* 801B1C20 001AEB80  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B1C24 001AEB84  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B1C28 001AEB88  38 63 00 04 */	addi r3, r3, 4
/* 801B1C2C 001AEB8C  4B F7 FB 8D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801B1C30 001AEB90  34 01 00 08 */	addic. r0, r1, 8
/* 801B1C34 001AEB94  41 82 00 10 */	beq lbl_801B1C44
/* 801B1C38 001AEB98  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B1C3C 001AEB9C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B1C40 001AEBA0  90 01 00 08 */	stw r0, 8(r1)
lbl_801B1C44:
/* 801B1C44 001AEBA4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B1C48 001AEBA8  38 80 00 01 */	li r4, 1
/* 801B1C4C 001AEBAC  4B F8 8D 8D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801B1C50 001AEBB0  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B1C54 001AEBB4  38 60 00 00 */	li r3, 0
/* 801B1C58 001AEBB8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801B1C5C 001AEBBC  98 1F 08 E5 */	stb r0, 0x8e5(r31)
lbl_801B1C60:
/* 801B1C60 001AEBC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B1C64 001AEBC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B1C68 001AEBC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B1C6C 001AEBCC  7C 08 03 A6 */	mtlr r0
/* 801B1C70 001AEBD0  38 21 00 30 */	addi r1, r1, 0x30
/* 801B1C74 001AEBD4  4E 80 00 20 */	blr

.global sub_801b1c78
sub_801b1c78:
/* 801B1C78 001AEBD8  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801B1C7C 001AEBDC  20 00 00 04 */	subfic r0, r0, 4
/* 801B1C80 001AEBE0  7C 00 00 34 */	cntlzw r0, r0
/* 801B1C84 001AEBE4  54 03 D9 7E */	srwi r3, r0, 5
/* 801B1C88 001AEBE8  4E 80 00 20 */	blr

.global CoverCheck__9CFlaahgraFR13CStateManagerf
CoverCheck__9CFlaahgraFR13CStateManagerf:
/* 801B1C8C 001AEBEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B1C90 001AEBF0  7C 08 02 A6 */	mflr r0
/* 801B1C94 001AEBF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B1C98 001AEBF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B1C9C 001AEBFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B1CA0 001AEC00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B1CA4 001AEC04  7C 9D 23 78 */	mr r29, r4
/* 801B1CA8 001AEC08  93 81 00 10 */	stw r28, 0x10(r1)
/* 801B1CAC 001AEC0C  7C 7C 1B 78 */	mr r28, r3
/* 801B1CB0 001AEC10  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 801B1CB4 001AEC14  2C 00 00 00 */	cmpwi r0, 0
/* 801B1CB8 001AEC18  41 81 00 18 */	bgt lbl_801B1CD0
/* 801B1CBC 001AEC1C  C0 3C 07 BC */	lfs f1, 0x7bc(r28)
/* 801B1CC0 001AEC20  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1CC4 001AEC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1CC8 001AEC28  4C 40 13 82 */	cror 2, 0, 2
/* 801B1CCC 001AEC2C  40 82 00 58 */	bne lbl_801B1D24
lbl_801B1CD0:
/* 801B1CD0 001AEC30  3B FC 07 74 */	addi r31, r28, 0x774
/* 801B1CD4 001AEC34  7F FE FB 78 */	mr r30, r31
/* 801B1CD8 001AEC38  48 00 00 38 */	b lbl_801B1D10
lbl_801B1CDC:
/* 801B1CDC 001AEC3C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801B1CE0 001AEC40  7F A3 EB 78 */	mr r3, r29
/* 801B1CE4 001AEC44  38 81 00 08 */	addi r4, r1, 8
/* 801B1CE8 001AEC48  B0 01 00 08 */	sth r0, 8(r1)
/* 801B1CEC 001AEC4C  4B E9 A8 B9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B1CF0 001AEC50  28 03 00 00 */	cmplwi r3, 0
/* 801B1CF4 001AEC54  41 82 00 18 */	beq lbl_801B1D0C
/* 801B1CF8 001AEC58  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801B1CFC 001AEC5C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801B1D00 001AEC60  41 82 00 0C */	beq lbl_801B1D0C
/* 801B1D04 001AEC64  38 60 00 01 */	li r3, 1
/* 801B1D08 001AEC68  48 00 00 20 */	b lbl_801B1D28
lbl_801B1D0C:
/* 801B1D0C 001AEC6C  3B DE 00 02 */	addi r30, r30, 2
lbl_801B1D10:
/* 801B1D10 001AEC70  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 801B1D14 001AEC74  54 00 08 3C */	slwi r0, r0, 1
/* 801B1D18 001AEC78  7C 1F 02 14 */	add r0, r31, r0
/* 801B1D1C 001AEC7C  7C 1E 00 40 */	cmplw r30, r0
/* 801B1D20 001AEC80  40 82 FF BC */	bne lbl_801B1CDC
lbl_801B1D24:
/* 801B1D24 001AEC84  38 60 00 00 */	li r3, 0
lbl_801B1D28:
/* 801B1D28 001AEC88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B1D2C 001AEC8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B1D30 001AEC90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B1D34 001AEC94  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801B1D38 001AEC98  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801B1D3C 001AEC9C  7C 08 03 A6 */	mtlr r0
/* 801B1D40 001AECA0  38 21 00 20 */	addi r1, r1, 0x20
/* 801B1D44 001AECA4  4E 80 00 20 */	blr

.global IsDizzy__9CFlaahgraFR13CStateManagerf
IsDizzy__9CFlaahgraFR13CStateManagerf:
/* 801B1D48 001AECA8  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801B1D4C 001AECAC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801B1D50 001AECB0  20 00 00 0A */	subfic r0, r0, 0xa
/* 801B1D54 001AECB4  7C 00 00 34 */	cntlzw r0, r0
/* 801B1D58 001AECB8  54 03 D9 7E */	srwi r3, r0, 5
/* 801B1D5C 001AECBC  4E 80 00 20 */	blr

.global BreakAttack__9CFlaahgraFR13CStateManagerf
BreakAttack__9CFlaahgraFR13CStateManagerf:
/* 801B1D60 001AECC0  C0 23 07 D4 */	lfs f1, 0x7d4(r3)
/* 801B1D64 001AECC4  38 80 00 00 */	li r4, 0
/* 801B1D68 001AECC8  C0 03 05 78 */	lfs f0, 0x578(r3)
/* 801B1D6C 001AECCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1D70 001AECD0  4C 41 13 82 */	cror 2, 1, 2
/* 801B1D74 001AECD4  40 82 00 14 */	bne lbl_801B1D88
/* 801B1D78 001AECD8  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801B1D7C 001AECDC  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801B1D80 001AECE0  40 82 00 08 */	bne lbl_801B1D88
/* 801B1D84 001AECE4  38 80 00 01 */	li r4, 1
lbl_801B1D88:
/* 801B1D88 001AECE8  7C 83 23 78 */	mr r3, r4
/* 801B1D8C 001AECEC  4E 80 00 20 */	blr

.global ShouldFire__9CFlaahgraFR13CStateManagerf
ShouldFire__9CFlaahgraFR13CStateManagerf:
/* 801B1D90 001AECF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B1D94 001AECF4  7C 08 02 A6 */	mflr r0
/* 801B1D98 001AECF8  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1D9C 001AECFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B1DA0 001AED00  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801B1DA4 001AED04  7C 7F 1B 78 */	mr r31, r3
/* 801B1DA8 001AED08  C0 23 07 C0 */	lfs f1, 0x7c0(r3)
/* 801B1DAC 001AED0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1DB0 001AED10  4C 40 13 82 */	cror 2, 0, 2
/* 801B1DB4 001AED14  40 82 00 94 */	bne lbl_801B1E48
/* 801B1DB8 001AED18  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801B1DBC 001AED1C  88 04 09 C4 */	lbz r0, 0x9c4(r4)
/* 801B1DC0 001AED20  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B1DC4 001AED24  40 82 00 84 */	bne lbl_801B1E48
/* 801B1DC8 001AED28  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 801B1DCC 001AED2C  38 61 00 10 */	addi r3, r1, 0x10
/* 801B1DD0 001AED30  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801B1DD4 001AED34  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801B1DD8 001AED38  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801B1DDC 001AED3C  EC 23 08 28 */	fsubs f1, f3, f1
/* 801B1DE0 001AED40  EC 42 00 28 */	fsubs f2, f2, f0
/* 801B1DE4 001AED44  48 16 24 1D */	bl __ct__9CVector2fFff
/* 801B1DE8 001AED48  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801B1DEC 001AED4C  38 61 00 08 */	addi r3, r1, 8
/* 801B1DF0 001AED50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801B1DF4 001AED54  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B1DF8 001AED58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801B1DFC 001AED5C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801B1E00 001AED60  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801B1E04 001AED64  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801B1E08 001AED68  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801B1E0C 001AED6C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801B1E10 001AED70  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801B1E14 001AED74  48 16 23 ED */	bl __ct__9CVector2fFff
/* 801B1E18 001AED78  C0 21 00 08 */	lfs f1, 8(r1)
/* 801B1E1C 001AED7C  38 61 00 18 */	addi r3, r1, 0x18
/* 801B1E20 001AED80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801B1E24 001AED84  38 81 00 20 */	addi r4, r1, 0x20
/* 801B1E28 001AED88  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801B1E2C 001AED8C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B1E30 001AED90  48 16 21 95 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801B1E34 001AED94  C0 02 A9 14 */	lfs f0, lbl_805AC634@sda21(r2)
/* 801B1E38 001AED98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1E3C 001AED9C  7C 00 00 26 */	mfcr r0
/* 801B1E40 001AEDA0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B1E44 001AEDA4  48 00 00 08 */	b lbl_801B1E4C
lbl_801B1E48:
/* 801B1E48 001AEDA8  38 60 00 00 */	li r3, 0
lbl_801B1E4C:
/* 801B1E4C 001AEDAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B1E50 001AEDB0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801B1E54 001AEDB4  7C 08 03 A6 */	mtlr r0
/* 801B1E58 001AEDB8  38 21 00 40 */	addi r1, r1, 0x40
/* 801B1E5C 001AEDBC  4E 80 00 20 */	blr

.global ShouldSpecialAttack__9CFlaahgraFR13CStateManagerf
ShouldSpecialAttack__9CFlaahgraFR13CStateManagerf:
/* 801B1E60 001AEDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B1E64 001AEDC4  7C 08 02 A6 */	mflr r0
/* 801B1E68 001AEDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B1E6C 001AEDCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B1E70 001AEDD0  7C 7F 1B 78 */	mr r31, r3
/* 801B1E74 001AEDD4  80 03 07 88 */	lwz r0, 0x788(r3)
/* 801B1E78 001AEDD8  2C 00 00 00 */	cmpwi r0, 0
/* 801B1E7C 001AEDDC  41 80 00 3C */	blt lbl_801B1EB8
/* 801B1E80 001AEDE0  2C 00 00 03 */	cmpwi r0, 3
/* 801B1E84 001AEDE4  41 81 00 34 */	bgt lbl_801B1EB8
/* 801B1E88 001AEDE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1E8C 001AEDEC  81 8C 02 34 */	lwz r12, 0x234(r12)
/* 801B1E90 001AEDF0  7D 89 03 A6 */	mtctr r12
/* 801B1E94 001AEDF4  4E 80 04 21 */	bctrl
/* 801B1E98 001AEDF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B1E9C 001AEDFC  41 82 00 1C */	beq lbl_801B1EB8
/* 801B1EA0 001AEE00  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 801B1EA4 001AEE04  2C 00 00 02 */	cmpwi r0, 2
/* 801B1EA8 001AEE08  41 80 00 10 */	blt lbl_801B1EB8
/* 801B1EAC 001AEE0C  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B1EB0 001AEE10  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801B1EB4 001AEE14  48 00 00 08 */	b lbl_801B1EBC
lbl_801B1EB8:
/* 801B1EB8 001AEE18  38 60 00 00 */	li r3, 0
lbl_801B1EBC:
/* 801B1EBC 001AEE1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B1EC0 001AEE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B1EC4 001AEE24  7C 08 03 A6 */	mtlr r0
/* 801B1EC8 001AEE28  38 21 00 10 */	addi r1, r1, 0x10
/* 801B1ECC 001AEE2C  4E 80 00 20 */	blr

.global ShouldAttack__9CFlaahgraFR13CStateManagerf
ShouldAttack__9CFlaahgraFR13CStateManagerf:
/* 801B1ED0 001AEE30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801B1ED4 001AEE34  7C 08 02 A6 */	mflr r0
/* 801B1ED8 001AEE38  90 01 00 74 */	stw r0, 0x74(r1)
/* 801B1EDC 001AEE3C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801B1EE0 001AEE40  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801B1EE4 001AEE44  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801B1EE8 001AEE48  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801B1EEC 001AEE4C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801B1EF0 001AEE50  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801B1EF4 001AEE54  7C 7E 1B 78 */	mr r30, r3
/* 801B1EF8 001AEE58  80 03 07 88 */	lwz r0, 0x788(r3)
/* 801B1EFC 001AEE5C  2C 00 00 00 */	cmpwi r0, 0
/* 801B1F00 001AEE60  40 81 01 64 */	ble lbl_801B2064
/* 801B1F04 001AEE64  2C 00 00 03 */	cmpwi r0, 3
/* 801B1F08 001AEE68  41 81 01 5C */	bgt lbl_801B2064
/* 801B1F0C 001AEE6C  C0 3E 07 C0 */	lfs f1, 0x7c0(r30)
/* 801B1F10 001AEE70  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1F14 001AEE74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F18 001AEE78  4C 40 13 82 */	cror 2, 0, 2
/* 801B1F1C 001AEE7C  40 82 01 48 */	bne lbl_801B2064
/* 801B1F20 001AEE80  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801B1F24 001AEE84  88 1F 09 C4 */	lbz r0, 0x9c4(r31)
/* 801B1F28 001AEE88  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B1F2C 001AEE8C  40 82 01 38 */	bne lbl_801B2064
/* 801B1F30 001AEE90  88 1E 08 E4 */	lbz r0, 0x8e4(r30)
/* 801B1F34 001AEE94  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 801B1F38 001AEE98  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 801B1F3C 001AEE9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801B1F40 001AEEA0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801B1F44 001AEEA4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801B1F48 001AEEA8  EF C3 10 28 */	fsubs f30, f3, f2
/* 801B1F4C 001AEEAC  EF E1 00 28 */	fsubs f31, f1, f0
/* 801B1F50 001AEEB0  40 82 01 14 */	bne lbl_801B2064
/* 801B1F54 001AEEB4  FC 20 F0 90 */	fmr f1, f30
/* 801B1F58 001AEEB8  38 61 00 18 */	addi r3, r1, 0x18
/* 801B1F5C 001AEEBC  FC 40 F8 90 */	fmr f2, f31
/* 801B1F60 001AEEC0  48 16 22 A1 */	bl __ct__9CVector2fFff
/* 801B1F64 001AEEC4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801B1F68 001AEEC8  38 61 00 30 */	addi r3, r1, 0x30
/* 801B1F6C 001AEECC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801B1F70 001AEED0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801B1F74 001AEED4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801B1F78 001AEED8  48 16 21 65 */	bl MagSquared__9CVector2fCFv
/* 801B1F7C 001AEEDC  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 801B1F80 001AEEE0  C0 5E 03 00 */	lfs f2, 0x300(r30)
/* 801B1F84 001AEEE4  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801B1F88 001AEEE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 801B1F8C 001AEEEC  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801B1F90 001AEEF0  2C 00 00 01 */	cmpwi r0, 1
/* 801B1F94 001AEEF4  41 82 00 1C */	beq lbl_801B1FB0
/* 801B1F98 001AEEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F9C 001AEEFC  4C 41 13 82 */	cror 2, 1, 2
/* 801B1FA0 001AEF00  40 82 00 10 */	bne lbl_801B1FB0
/* 801B1FA4 001AEF04  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801B1FA8 001AEF08  4C 40 13 82 */	cror 2, 0, 2
/* 801B1FAC 001AEF0C  41 82 00 48 */	beq lbl_801B1FF4
lbl_801B1FB0:
/* 801B1FB0 001AEF10  C0 3E 07 CC */	lfs f1, 0x7cc(r30)
/* 801B1FB4 001AEF14  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B1FB8 001AEF18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1FBC 001AEF1C  4C 40 13 82 */	cror 2, 0, 2
/* 801B1FC0 001AEF20  40 82 00 A4 */	bne lbl_801B2064
/* 801B1FC4 001AEF24  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 801B1FC8 001AEF28  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 801B1FCC 001AEF2C  EC 41 00 72 */	fmuls f2, f1, f1
/* 801B1FD0 001AEF30  C0 7F 01 40 */	lfs f3, 0x140(r31)
/* 801B1FD4 001AEF34  EC 20 00 32 */	fmuls f1, f0, f0
/* 801B1FD8 001AEF38  C0 02 A8 CC */	lfs f0, lbl_805AC5EC@sda21(r2)
/* 801B1FDC 001AEF3C  EC 63 00 F2 */	fmuls f3, f3, f3
/* 801B1FE0 001AEF40  EC 22 08 2A */	fadds f1, f2, f1
/* 801B1FE4 001AEF44  EC 23 08 2A */	fadds f1, f3, f1
/* 801B1FE8 001AEF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1FEC 001AEF4C  4C 41 13 82 */	cror 2, 1, 2
/* 801B1FF0 001AEF50  40 82 00 74 */	bne lbl_801B2064
lbl_801B1FF4:
/* 801B1FF4 001AEF54  FC 20 F0 90 */	fmr f1, f30
/* 801B1FF8 001AEF58  38 61 00 10 */	addi r3, r1, 0x10
/* 801B1FFC 001AEF5C  FC 40 F8 90 */	fmr f2, f31
/* 801B2000 001AEF60  48 16 22 01 */	bl __ct__9CVector2fFff
/* 801B2004 001AEF64  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801B2008 001AEF68  38 61 00 08 */	addi r3, r1, 8
/* 801B200C 001AEF6C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801B2010 001AEF70  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801B2014 001AEF74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801B2018 001AEF78  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 801B201C 001AEF7C  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801B2020 001AEF80  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 801B2024 001AEF84  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801B2028 001AEF88  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801B202C 001AEF8C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801B2030 001AEF90  48 16 21 D1 */	bl __ct__9CVector2fFff
/* 801B2034 001AEF94  C0 21 00 08 */	lfs f1, 8(r1)
/* 801B2038 001AEF98  38 61 00 20 */	addi r3, r1, 0x20
/* 801B203C 001AEF9C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801B2040 001AEFA0  38 81 00 28 */	addi r4, r1, 0x28
/* 801B2044 001AEFA4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B2048 001AEFA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801B204C 001AEFAC  48 16 1F 79 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801B2050 001AEFB0  C0 02 A9 14 */	lfs f0, lbl_805AC634@sda21(r2)
/* 801B2054 001AEFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2058 001AEFB8  7C 00 00 26 */	mfcr r0
/* 801B205C 001AEFBC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801B2060 001AEFC0  48 00 00 08 */	b lbl_801B2068
lbl_801B2064:
/* 801B2064 001AEFC4  38 60 00 00 */	li r3, 0
lbl_801B2068:
/* 801B2068 001AEFC8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801B206C 001AEFCC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801B2070 001AEFD0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801B2074 001AEFD4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801B2078 001AEFD8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801B207C 001AEFDC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801B2080 001AEFE0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801B2084 001AEFE4  7C 08 03 A6 */	mtlr r0
/* 801B2088 001AEFE8  38 21 00 70 */	addi r1, r1, 0x70
/* 801B208C 001AEFEC  4E 80 00 20 */	blr

.global ShouldTurn__9CFlaahgraFR13CStateManagerf
ShouldTurn__9CFlaahgraFR13CStateManagerf:
/* 801B2090 001AEFF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B2094 001AEFF4  7C 08 02 A6 */	mflr r0
/* 801B2098 001AEFF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B209C 001AEFFC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801B20A0 001AF000  7C 7F 1B 78 */	mr r31, r3
/* 801B20A4 001AF004  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801B20A8 001AF008  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801B20AC 001AF00C  38 61 00 10 */	addi r3, r1, 0x10
/* 801B20B0 001AF010  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801B20B4 001AF014  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801B20B8 001AF018  EC 44 08 28 */	fsubs f2, f4, f1
/* 801B20BC 001AF01C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801B20C0 001AF020  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801B20C4 001AF024  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801B20C8 001AF028  EC 20 08 28 */	fsubs f1, f0, f1
/* 801B20CC 001AF02C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801B20D0 001AF030  EC 65 18 28 */	fsubs f3, f5, f3
/* 801B20D4 001AF034  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801B20D8 001AF038  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801B20DC 001AF03C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801B20E0 001AF040  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801B20E4 001AF044  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801B20E8 001AF048  48 16 21 19 */	bl __ct__9CVector2fFff
/* 801B20EC 001AF04C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801B20F0 001AF050  38 61 00 08 */	addi r3, r1, 8
/* 801B20F4 001AF054  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801B20F8 001AF058  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801B20FC 001AF05C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801B2100 001AF060  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801B2104 001AF064  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801B2108 001AF068  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801B210C 001AF06C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801B2110 001AF070  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801B2114 001AF074  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801B2118 001AF078  48 16 20 E9 */	bl __ct__9CVector2fFff
/* 801B211C 001AF07C  C0 21 00 08 */	lfs f1, 8(r1)
/* 801B2120 001AF080  38 61 00 18 */	addi r3, r1, 0x18
/* 801B2124 001AF084  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801B2128 001AF088  38 81 00 20 */	addi r4, r1, 0x20
/* 801B212C 001AF08C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801B2130 001AF090  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801B2134 001AF094  48 16 1E 91 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801B2138 001AF098  C0 02 A8 F4 */	lfs f0, lbl_805AC614@sda21(r2)
/* 801B213C 001AF09C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2140 001AF0A0  7C 00 00 26 */	mfcr r0
/* 801B2144 001AF0A4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801B2148 001AF0A8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801B214C 001AF0AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B2150 001AF0B0  7C 08 03 A6 */	mtlr r0
/* 801B2154 001AF0B4  38 21 00 60 */	addi r1, r1, 0x60
/* 801B2158 001AF0B8  4E 80 00 20 */	blr

.global AIStage__9CFlaahgraFR13CStateManagerf
AIStage__9CFlaahgraFR13CStateManagerf:
/* 801B215C 001AF0BC  FC 00 08 1E */	fctiwz f0, f1
/* 801B2160 001AF0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B2164 001AF0C4  80 63 07 80 */	lwz r3, 0x780(r3)
/* 801B2168 001AF0C8  D8 01 00 08 */	stfd f0, 8(r1)
/* 801B216C 001AF0CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B2170 001AF0D0  7C 03 00 50 */	subf r0, r3, r0
/* 801B2174 001AF0D4  7C 00 00 34 */	cntlzw r0, r0
/* 801B2178 001AF0D8  54 03 D9 7E */	srwi r3, r0, 5
/* 801B217C 001AF0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B2180 001AF0E0  4E 80 00 20 */	blr

.global HitSomething__9CFlaahgraFR13CStateManagerf
HitSomething__9CFlaahgraFR13CStateManagerf:
/* 801B2184 001AF0E4  C0 23 07 D0 */	lfs f1, 0x7d0(r3)
/* 801B2188 001AF0E8  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B218C 001AF0EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2190 001AF0F0  7C 00 00 26 */	mfcr r0
/* 801B2194 001AF0F4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801B2198 001AF0F8  4E 80 00 20 */	blr

.global OffLine__9CFlaahgraFR13CStateManagerf
OffLine__9CFlaahgraFR13CStateManagerf:
/* 801B219C 001AF0FC  88 83 08 E5 */	lbz r4, 0x8e5(r3)
/* 801B21A0 001AF100  38 60 00 00 */	li r3, 0
/* 801B21A4 001AF104  54 80 F7 FF */	rlwinm. r0, r4, 0x1e, 0x1f, 0x1f
/* 801B21A8 001AF108  4D 82 00 20 */	beqlr
/* 801B21AC 001AF10C  54 80 EF FF */	rlwinm. r0, r4, 0x1d, 0x1f, 0x1f
/* 801B21B0 001AF110  4D 82 00 20 */	beqlr
/* 801B21B4 001AF114  38 60 00 01 */	li r3, 1
/* 801B21B8 001AF118  4E 80 00 20 */	blr

.global Death__9CFlaahgraFRC9CVector3fR13CStateManager
Death__9CFlaahgraFRC9CVector3fR13CStateManager:
/* 801B21BC 001AF11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B21C0 001AF120  7C 08 02 A6 */	mflr r0
/* 801B21C4 001AF124  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B21C8 001AF128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B21CC 001AF12C  7C 9F 23 78 */	mr r31, r4
/* 801B21D0 001AF130  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B21D4 001AF134  7C 7E 1B 78 */	mr r30, r3
/* 801B21D8 001AF138  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801B21DC 001AF13C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801B21E0 001AF140  41 82 00 6C */	beq lbl_801B224C
/* 801B21E4 001AF144  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801B21E8 001AF148  38 61 00 08 */	addi r3, r1, 8
/* 801B21EC 001AF14C  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801B21F0 001AF150  38 84 00 85 */	addi r4, r4, 0x85
/* 801B21F4 001AF154  4B E5 2A C5 */	bl string_l__4rstlFPCc
/* 801B21F8 001AF158  7F C3 F3 78 */	mr r3, r30
/* 801B21FC 001AF15C  4B EF 06 FD */	bl GetStateMachine__3CAiFv
/* 801B2200 001AF160  7C 66 1B 78 */	mr r6, r3
/* 801B2204 001AF164  7F E4 FB 78 */	mr r4, r31
/* 801B2208 001AF168  7F C5 F3 78 */	mr r5, r30
/* 801B220C 001AF16C  38 7E 03 30 */	addi r3, r30, 0x330
/* 801B2210 001AF170  38 E1 00 08 */	addi r7, r1, 8
/* 801B2214 001AF174  4B EC D9 F1 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801B2218 001AF178  38 61 00 08 */	addi r3, r1, 8
/* 801B221C 001AF17C  48 18 B8 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801B2220 001AF180  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B2224 001AF184  4B F8 7E A9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801B2228 001AF188  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B222C 001AF18C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2230 001AF190  40 81 00 0C */	ble lbl_801B223C
/* 801B2234 001AF194  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801B2238 001AF198  4B F8 7F 1D */	bl UnFreeze__15CBodyControllerFv
lbl_801B223C:
/* 801B223C 001AF19C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801B2240 001AF1A0  38 60 00 00 */	li r3, 0
/* 801B2244 001AF1A4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801B2248 001AF1A8  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_801B224C:
/* 801B224C 001AF1AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B2250 001AF1B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B2254 001AF1B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B2258 001AF1B8  7C 08 03 A6 */	mtlr r0
/* 801B225C 001AF1BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B2260 001AF1C0  4E 80 00 20 */	blr

.global DoUserAnimEvent__9CFlaahgraFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__9CFlaahgraFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801B2264 001AF1C4  94 21 FA C0 */	stwu r1, -0x540(r1)
/* 801B2268 001AF1C8  7C 08 02 A6 */	mflr r0
/* 801B226C 001AF1CC  90 01 05 44 */	stw r0, 0x544(r1)
/* 801B2270 001AF1D0  DB E1 05 30 */	stfd f31, 0x530(r1)
/* 801B2274 001AF1D4  F3 E1 05 38 */	psq_st f31, 1336(r1), 0, qr0
/* 801B2278 001AF1D8  DB C1 05 20 */	stfd f30, 0x520(r1)
/* 801B227C 001AF1DC  F3 C1 05 28 */	psq_st f30, 1320(r1), 0, qr0
/* 801B2280 001AF1E0  DB A1 05 10 */	stfd f29, 0x510(r1)
/* 801B2284 001AF1E4  F3 A1 05 18 */	psq_st f29, 1304(r1), 0, qr0
/* 801B2288 001AF1E8  DB 81 05 00 */	stfd f28, 0x500(r1)
/* 801B228C 001AF1EC  F3 81 05 08 */	psq_st f28, 1288(r1), 0, qr0
/* 801B2290 001AF1F0  BF 21 04 E4 */	stmw r25, 0x4e4(r1)
/* 801B2294 001AF1F4  7C DE 33 78 */	mr r30, r6
/* 801B2298 001AF1F8  FF C0 08 90 */	fmr f30, f1
/* 801B229C 001AF1FC  28 1E 00 1A */	cmplwi r30, 0x1a
/* 801B22A0 001AF200  7C 7B 1B 78 */	mr r27, r3
/* 801B22A4 001AF204  7C 9C 23 78 */	mr r28, r4
/* 801B22A8 001AF208  7C BD 2B 78 */	mr r29, r5
/* 801B22AC 001AF20C  3B E0 00 00 */	li r31, 0
/* 801B22B0 001AF210  41 81 08 48 */	bgt lbl_801B2AF8
/* 801B22B4 001AF214  3C 80 80 3E */	lis r4, lbl_803E4D74@ha
/* 801B22B8 001AF218  57 C0 10 3A */	slwi r0, r30, 2
/* 801B22BC 001AF21C  38 84 4D 74 */	addi r4, r4, lbl_803E4D74@l
/* 801B22C0 001AF220  7C 04 00 2E */	lwzx r0, r4, r0
/* 801B22C4 001AF224  7C 09 03 A6 */	mtctr r0
/* 801B22C8 001AF228  4E 80 04 20 */	bctr
.global lbl_801B22CC
lbl_801B22CC:
/* 801B22CC 001AF22C  7F 64 DB 78 */	mr r4, r27
/* 801B22D0 001AF230  38 61 03 0C */	addi r3, r1, 0x30c
/* 801B22D4 001AF234  38 BD 00 3C */	addi r5, r29, 0x3c
/* 801B22D8 001AF238  4B EC 66 A1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801B22DC 001AF23C  38 61 04 A8 */	addi r3, r1, 0x4a8
/* 801B22E0 001AF240  38 81 03 0C */	addi r4, r1, 0x30c
/* 801B22E4 001AF244  48 16 08 91 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B22E8 001AF248  7F 64 DB 78 */	mr r4, r27
/* 801B22EC 001AF24C  7F 85 E3 78 */	mr r5, r28
/* 801B22F0 001AF250  38 61 01 1C */	addi r3, r1, 0x11c
/* 801B22F4 001AF254  4B FF C3 A5 */	bl sub_801ae698
/* 801B22F8 001AF258  C0 41 01 1C */	lfs f2, 0x11c(r1)
/* 801B22FC 001AF25C  C0 21 01 20 */	lfs f1, 0x120(r1)
/* 801B2300 001AF260  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 801B2304 001AF264  D0 41 01 70 */	stfs f2, 0x170(r1)
/* 801B2308 001AF268  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 801B230C 001AF26C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 801B2310 001AF270  80 1B 07 B4 */	lwz r0, 0x7b4(r27)
/* 801B2314 001AF274  2C 00 00 00 */	cmpwi r0, 0
/* 801B2318 001AF278  41 82 00 0C */	beq lbl_801B2324
/* 801B231C 001AF27C  2C 00 00 01 */	cmpwi r0, 1
/* 801B2320 001AF280  40 82 02 7C */	bne lbl_801B259C
lbl_801B2324:
/* 801B2324 001AF284  80 1B 07 2C */	lwz r0, 0x72c(r27)
/* 801B2328 001AF288  2C 00 00 00 */	cmpwi r0, 0
/* 801B232C 001AF28C  40 82 01 F4 */	bne lbl_801B2520
/* 801B2330 001AF290  80 BB 07 30 */	lwz r5, 0x730(r27)
/* 801B2334 001AF294  3B FB 07 34 */	addi r31, r27, 0x734
/* 801B2338 001AF298  38 60 00 00 */	li r3, 0
/* 801B233C 001AF29C  2C 05 00 00 */	cmpwi r5, 0
/* 801B2340 001AF2A0  40 81 00 40 */	ble lbl_801B2380
/* 801B2344 001AF2A4  2C 05 00 08 */	cmpwi r5, 8
/* 801B2348 001AF2A8  38 85 FF F8 */	addi r4, r5, -8
/* 801B234C 001AF2AC  40 81 00 20 */	ble lbl_801B236C
/* 801B2350 001AF2B0  38 04 00 07 */	addi r0, r4, 7
/* 801B2354 001AF2B4  54 00 E8 FE */	srwi r0, r0, 3
/* 801B2358 001AF2B8  7C 09 03 A6 */	mtctr r0
/* 801B235C 001AF2BC  2C 04 00 00 */	cmpwi r4, 0
/* 801B2360 001AF2C0  40 81 00 0C */	ble lbl_801B236C
lbl_801B2364:
/* 801B2364 001AF2C4  38 63 00 08 */	addi r3, r3, 8
/* 801B2368 001AF2C8  42 00 FF FC */	bdnz lbl_801B2364
lbl_801B236C:
/* 801B236C 001AF2CC  7C 03 28 50 */	subf r0, r3, r5
/* 801B2370 001AF2D0  7C 09 03 A6 */	mtctr r0
/* 801B2374 001AF2D4  7C 03 28 00 */	cmpw r3, r5
/* 801B2378 001AF2D8  40 80 00 08 */	bge lbl_801B2380
lbl_801B237C:
/* 801B237C 001AF2DC  42 00 00 00 */	bdnz lbl_801B237C
lbl_801B2380:
/* 801B2380 001AF2E0  38 00 00 00 */	li r0, 0
/* 801B2384 001AF2E4  7F 63 DB 78 */	mr r3, r27
/* 801B2388 001AF2E8  90 1B 07 30 */	stw r0, 0x730(r27)
/* 801B238C 001AF2EC  83 5C 08 4C */	lwz r26, 0x84c(r28)
/* 801B2390 001AF2F0  C0 41 04 B4 */	lfs f2, 0x4b4(r1)
/* 801B2394 001AF2F4  C0 21 04 C4 */	lfs f1, 0x4c4(r1)
/* 801B2398 001AF2F8  C0 01 04 D4 */	lfs f0, 0x4d4(r1)
/* 801B239C 001AF2FC  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 801B23A0 001AF300  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 801B23A4 001AF304  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 801B23A8 001AF308  81 9B 00 00 */	lwz r12, 0(r27)
/* 801B23AC 001AF30C  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801B23B0 001AF310  7D 89 03 A6 */	mtctr r12
/* 801B23B4 001AF314  4E 80 04 21 */	bctrl
/* 801B23B8 001AF318  FC 20 F0 90 */	fmr f1, f30
/* 801B23BC 001AF31C  7C 64 1B 78 */	mr r4, r3
/* 801B23C0 001AF320  7F 47 D3 78 */	mr r7, r26
/* 801B23C4 001AF324  38 61 01 10 */	addi r3, r1, 0x110
/* 801B23C8 001AF328  38 A1 01 04 */	addi r5, r1, 0x104
/* 801B23CC 001AF32C  38 C1 01 70 */	addi r6, r1, 0x170
/* 801B23D0 001AF330  39 00 00 00 */	li r8, 0
/* 801B23D4 001AF334  48 06 9B 19 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 801B23D8 001AF338  80 1B 07 30 */	lwz r0, 0x730(r27)
/* 801B23DC 001AF33C  C3 A1 01 10 */	lfs f29, 0x110(r1)
/* 801B23E0 001AF340  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801B23E4 001AF344  C3 81 01 14 */	lfs f28, 0x114(r1)
/* 801B23E8 001AF348  C3 E1 01 18 */	lfs f31, 0x118(r1)
/* 801B23EC 001AF34C  7C 7F 02 15 */	add. r3, r31, r0
/* 801B23F0 001AF350  41 82 00 10 */	beq lbl_801B2400
/* 801B23F4 001AF354  D3 A3 00 00 */	stfs f29, 0(r3)
/* 801B23F8 001AF358  D3 83 00 04 */	stfs f28, 4(r3)
/* 801B23FC 001AF35C  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_801B2400:
/* 801B2400 001AF360  80 9B 07 30 */	lwz r4, 0x730(r27)
/* 801B2404 001AF364  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 801B2408 001AF368  38 04 00 01 */	addi r0, r4, 1
/* 801B240C 001AF36C  38 9B 00 34 */	addi r4, r27, 0x34
/* 801B2410 001AF370  90 1B 07 30 */	stw r0, 0x730(r27)
/* 801B2414 001AF374  48 16 0C E1 */	bl BuildMatrix3f__12CTransform4fCFv
/* 801B2418 001AF378  38 61 04 84 */	addi r3, r1, 0x484
/* 801B241C 001AF37C  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 801B2420 001AF380  48 15 DC 05 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 801B2424 001AF384  80 1B 07 B4 */	lwz r0, 0x7b4(r27)
/* 801B2428 001AF388  2C 00 00 01 */	cmpwi r0, 1
/* 801B242C 001AF38C  40 82 00 0C */	bne lbl_801B2438
/* 801B2430 001AF390  C0 02 A9 18 */	lfs f0, lbl_805AC638@sda21(r2)
/* 801B2434 001AF394  48 00 00 08 */	b lbl_801B243C
lbl_801B2438:
/* 801B2438 001AF398  C0 02 A9 1C */	lfs f0, lbl_805AC63C@sda21(r2)
lbl_801B243C:
/* 801B243C 001AF39C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801B2440 001AF3A0  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 801B2444 001AF3A4  38 81 00 40 */	addi r4, r1, 0x40
/* 801B2448 001AF3A8  48 15 DF C1 */	bl RotateZ__9CMatrix3fFRC9CRelAngle
/* 801B244C 001AF3AC  38 61 04 60 */	addi r3, r1, 0x460
/* 801B2450 001AF3B0  38 81 02 C4 */	addi r4, r1, 0x2c4
/* 801B2454 001AF3B4  48 15 DB D1 */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 801B2458 001AF3B8  3B 40 00 01 */	li r26, 1
lbl_801B245C:
/* 801B245C 001AF3BC  C0 5B 00 50 */	lfs f2, 0x50(r27)
/* 801B2460 001AF3C0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801B2464 001AF3C4  C0 3B 00 60 */	lfs f1, 0x60(r27)
/* 801B2468 001AF3C8  38 9B 00 34 */	addi r4, r27, 0x34
/* 801B246C 001AF3CC  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 801B2470 001AF3D0  EC 5C 10 28 */	fsubs f2, f28, f2
/* 801B2474 001AF3D4  EC 3F 08 28 */	fsubs f1, f31, f1
/* 801B2478 001AF3D8  38 A1 00 EC */	addi r5, r1, 0xec
/* 801B247C 001AF3DC  EC 1D 00 28 */	fsubs f0, f29, f0
/* 801B2480 001AF3E0  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 801B2484 001AF3E4  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801B2488 001AF3E8  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 801B248C 001AF3EC  48 16 05 99 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801B2490 001AF3F0  C0 41 00 F8 */	lfs f2, 0xf8(r1)
/* 801B2494 001AF3F4  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 801B2498 001AF3F8  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 801B249C 001AF3FC  38 81 04 84 */	addi r4, r1, 0x484
/* 801B24A0 001AF400  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 801B24A4 001AF404  38 A1 04 60 */	addi r5, r1, 0x460
/* 801B24A8 001AF408  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 801B24AC 001AF40C  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 801B24B0 001AF410  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 801B24B4 001AF414  48 15 DC 7D */	bl __ml__9CMatrix3fCFRC9CMatrix3f
/* 801B24B8 001AF418  38 61 04 84 */	addi r3, r1, 0x484
/* 801B24BC 001AF41C  38 81 02 A0 */	addi r4, r1, 0x2a0
/* 801B24C0 001AF420  48 15 DB 39 */	bl __as__9CMatrix3fFRC9CMatrix3f
/* 801B24C4 001AF424  38 61 00 E0 */	addi r3, r1, 0xe0
/* 801B24C8 001AF428  38 81 04 84 */	addi r4, r1, 0x484
/* 801B24CC 001AF42C  38 A1 01 64 */	addi r5, r1, 0x164
/* 801B24D0 001AF430  48 15 DD C5 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 801B24D4 001AF434  80 1B 07 30 */	lwz r0, 0x730(r27)
/* 801B24D8 001AF438  C0 7B 00 40 */	lfs f3, 0x40(r27)
/* 801B24DC 001AF43C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801B24E0 001AF440  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 801B24E4 001AF444  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 801B24E8 001AF448  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 801B24EC 001AF44C  EF A3 10 2A */	fadds f29, f3, f2
/* 801B24F0 001AF450  7C 7F 02 15 */	add. r3, r31, r0
/* 801B24F4 001AF454  EF 81 00 2A */	fadds f28, f1, f0
/* 801B24F8 001AF458  41 82 00 10 */	beq lbl_801B2508
/* 801B24FC 001AF45C  D3 A3 00 00 */	stfs f29, 0(r3)
/* 801B2500 001AF460  D3 83 00 04 */	stfs f28, 4(r3)
/* 801B2504 001AF464  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_801B2508:
/* 801B2508 001AF468  80 7B 07 30 */	lwz r3, 0x730(r27)
/* 801B250C 001AF46C  3B 5A 00 01 */	addi r26, r26, 1
/* 801B2510 001AF470  2C 1A 00 05 */	cmpwi r26, 5
/* 801B2514 001AF474  38 03 00 01 */	addi r0, r3, 1
/* 801B2518 001AF478  90 1B 07 30 */	stw r0, 0x730(r27)
/* 801B251C 001AF47C  41 80 FF 40 */	blt lbl_801B245C
lbl_801B2520:
/* 801B2520 001AF480  80 7B 07 2C */	lwz r3, 0x72c(r27)
/* 801B2524 001AF484  2C 03 00 00 */	cmpwi r3, 0
/* 801B2528 001AF488  41 80 02 60 */	blt lbl_801B2788
/* 801B252C 001AF48C  80 1B 07 30 */	lwz r0, 0x730(r27)
/* 801B2530 001AF490  7C 03 00 00 */	cmpw r3, r0
/* 801B2534 001AF494  40 80 02 54 */	bge lbl_801B2788
/* 801B2538 001AF498  1C 03 00 0C */	mulli r0, r3, 0xc
/* 801B253C 001AF49C  C0 41 04 B4 */	lfs f2, 0x4b4(r1)
/* 801B2540 001AF4A0  C0 21 04 C4 */	lfs f1, 0x4c4(r1)
/* 801B2544 001AF4A4  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 801B2548 001AF4A8  C0 01 04 D4 */	lfs f0, 0x4d4(r1)
/* 801B254C 001AF4AC  38 61 02 70 */	addi r3, r1, 0x270
/* 801B2550 001AF4B0  7C BB 02 14 */	add r5, r27, r0
/* 801B2554 001AF4B4  38 C4 66 F4 */	addi r6, r4, sUpVector__9CVector3f@l
/* 801B2558 001AF4B8  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 801B255C 001AF4BC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 801B2560 001AF4C0  38 A5 07 34 */	addi r5, r5, 0x734
/* 801B2564 001AF4C4  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 801B2568 001AF4C8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 801B256C 001AF4CC  48 16 15 A5 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801B2570 001AF4D0  38 61 04 30 */	addi r3, r1, 0x430
/* 801B2574 001AF4D4  38 81 02 70 */	addi r4, r1, 0x270
/* 801B2578 001AF4D8  48 16 05 FD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B257C 001AF4DC  7F 63 DB 78 */	mr r3, r27
/* 801B2580 001AF4E0  7F 85 E3 78 */	mr r5, r28
/* 801B2584 001AF4E4  38 81 04 30 */	addi r4, r1, 0x430
/* 801B2588 001AF4E8  4B FF B7 2D */	bl sub_801adcb4
/* 801B258C 001AF4EC  80 7B 07 2C */	lwz r3, 0x72c(r27)
/* 801B2590 001AF4F0  38 03 00 01 */	addi r0, r3, 1
/* 801B2594 001AF4F4  90 1B 07 2C */	stw r0, 0x72c(r27)
/* 801B2598 001AF4F8  48 00 01 F0 */	b lbl_801B2788
lbl_801B259C:
/* 801B259C 001AF4FC  83 5C 08 4C */	lwz r26, 0x84c(r28)
/* 801B25A0 001AF500  7F 63 DB 78 */	mr r3, r27
/* 801B25A4 001AF504  C0 41 04 B4 */	lfs f2, 0x4b4(r1)
/* 801B25A8 001AF508  C0 21 04 C4 */	lfs f1, 0x4c4(r1)
/* 801B25AC 001AF50C  C0 01 04 D4 */	lfs f0, 0x4d4(r1)
/* 801B25B0 001AF510  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 801B25B4 001AF514  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 801B25B8 001AF518  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801B25BC 001AF51C  81 9B 00 00 */	lwz r12, 0(r27)
/* 801B25C0 001AF520  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 801B25C4 001AF524  7D 89 03 A6 */	mtctr r12
/* 801B25C8 001AF528  4E 80 04 21 */	bctrl
/* 801B25CC 001AF52C  FC 20 F0 90 */	fmr f1, f30
/* 801B25D0 001AF530  7C 64 1B 78 */	mr r4, r3
/* 801B25D4 001AF534  7F 47 D3 78 */	mr r7, r26
/* 801B25D8 001AF538  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801B25DC 001AF53C  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801B25E0 001AF540  38 C1 01 70 */	addi r6, r1, 0x170
/* 801B25E4 001AF544  39 00 00 00 */	li r8, 0
/* 801B25E8 001AF548  48 06 99 05 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 801B25EC 001AF54C  C0 C1 00 C8 */	lfs f6, 0xc8(r1)
/* 801B25F0 001AF550  38 61 00 54 */	addi r3, r1, 0x54
/* 801B25F4 001AF554  C0 A1 00 CC */	lfs f5, 0xcc(r1)
/* 801B25F8 001AF558  C0 81 00 D0 */	lfs f4, 0xd0(r1)
/* 801B25FC 001AF55C  C0 21 04 C4 */	lfs f1, 0x4c4(r1)
/* 801B2600 001AF560  C0 01 04 B4 */	lfs f0, 0x4b4(r1)
/* 801B2604 001AF564  EC 45 08 28 */	fsubs f2, f5, f1
/* 801B2608 001AF568  C0 61 04 D4 */	lfs f3, 0x4d4(r1)
/* 801B260C 001AF56C  EC 26 00 28 */	fsubs f1, f6, f0
/* 801B2610 001AF570  D0 C1 01 58 */	stfs f6, 0x158(r1)
/* 801B2614 001AF574  EC C4 18 28 */	fsubs f6, f4, f3
/* 801B2618 001AF578  D0 A1 01 5C */	stfs f5, 0x15c(r1)
/* 801B261C 001AF57C  D0 81 01 60 */	stfs f4, 0x160(r1)
/* 801B2620 001AF580  C0 9B 00 58 */	lfs f4, 0x58(r27)
/* 801B2624 001AF584  C0 7B 00 48 */	lfs f3, 0x48(r27)
/* 801B2628 001AF588  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 801B262C 001AF58C  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801B2630 001AF590  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 801B2634 001AF594  D0 61 01 50 */	stfs f3, 0x150(r1)
/* 801B2638 001AF598  D0 81 01 54 */	stfs f4, 0x154(r1)
/* 801B263C 001AF59C  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 801B2640 001AF5A0  D0 C1 00 B8 */	stfs f6, 0xb8(r1)
/* 801B2644 001AF5A4  48 16 1B BD */	bl __ct__9CVector2fFff
/* 801B2648 001AF5A8  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801B264C 001AF5AC  38 61 01 4C */	addi r3, r1, 0x14c
/* 801B2650 001AF5B0  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801B2654 001AF5B4  38 81 01 40 */	addi r4, r1, 0x140
/* 801B2658 001AF5B8  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B265C 001AF5BC  D0 41 01 40 */	stfs f2, 0x140(r1)
/* 801B2660 001AF5C0  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 801B2664 001AF5C4  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 801B2668 001AF5C8  48 16 1F C9 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801B266C 001AF5CC  C0 02 A9 14 */	lfs f0, lbl_805AC634@sda21(r2)
/* 801B2670 001AF5D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2674 001AF5D4  40 81 00 C8 */	ble lbl_801B273C
/* 801B2678 001AF5D8  38 61 01 40 */	addi r3, r1, 0x140
/* 801B267C 001AF5DC  48 16 20 7D */	bl CanBeNormalized__9CVector3fCFv
/* 801B2680 001AF5E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2684 001AF5E4  41 82 00 74 */	beq lbl_801B26F8
/* 801B2688 001AF5E8  C0 02 A9 14 */	lfs f0, lbl_805AC634@sda21(r2)
/* 801B268C 001AF5EC  38 61 00 98 */	addi r3, r1, 0x98
/* 801B2690 001AF5F0  38 81 01 40 */	addi r4, r1, 0x140
/* 801B2694 001AF5F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801B2698 001AF5F8  48 16 21 B9 */	bl AsNormalized__9CVector3fCFv
/* 801B269C 001AF5FC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801B26A0 001AF600  38 81 01 4C */	addi r4, r1, 0x14c
/* 801B26A4 001AF604  38 A1 00 98 */	addi r5, r1, 0x98
/* 801B26A8 001AF608  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801B26AC 001AF60C  48 16 22 A9 */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 801B26B0 001AF610  C3 81 00 A4 */	lfs f28, 0xa4(r1)
/* 801B26B4 001AF614  38 61 01 40 */	addi r3, r1, 0x140
/* 801B26B8 001AF618  C3 A1 00 A8 */	lfs f29, 0xa8(r1)
/* 801B26BC 001AF61C  C3 E1 00 AC */	lfs f31, 0xac(r1)
/* 801B26C0 001AF620  48 16 21 F9 */	bl Magnitude__9CVector3fCFv
/* 801B26C4 001AF624  EC 81 07 72 */	fmuls f4, f1, f29
/* 801B26C8 001AF628  C0 A1 04 C4 */	lfs f5, 0x4c4(r1)
/* 801B26CC 001AF62C  EC 41 07 F2 */	fmuls f2, f1, f31
/* 801B26D0 001AF630  C0 61 04 D4 */	lfs f3, 0x4d4(r1)
/* 801B26D4 001AF634  EC 01 07 32 */	fmuls f0, f1, f28
/* 801B26D8 001AF638  C0 21 04 B4 */	lfs f1, 0x4b4(r1)
/* 801B26DC 001AF63C  EC 85 20 2A */	fadds f4, f5, f4
/* 801B26E0 001AF640  EC 43 10 2A */	fadds f2, f3, f2
/* 801B26E4 001AF644  EC 01 00 2A */	fadds f0, f1, f0
/* 801B26E8 001AF648  D0 81 01 5C */	stfs f4, 0x15c(r1)
/* 801B26EC 001AF64C  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 801B26F0 001AF650  D0 41 01 60 */	stfs f2, 0x160(r1)
/* 801B26F4 001AF654  48 00 00 48 */	b lbl_801B273C
lbl_801B26F8:
/* 801B26F8 001AF658  38 61 01 40 */	addi r3, r1, 0x140
/* 801B26FC 001AF65C  48 16 21 BD */	bl Magnitude__9CVector3fCFv
/* 801B2700 001AF660  C0 61 04 BC */	lfs f3, 0x4bc(r1)
/* 801B2704 001AF664  C0 41 04 CC */	lfs f2, 0x4cc(r1)
/* 801B2708 001AF668  C0 01 04 AC */	lfs f0, 0x4ac(r1)
/* 801B270C 001AF66C  EC 81 00 F2 */	fmuls f4, f1, f3
/* 801B2710 001AF670  C0 A1 04 C4 */	lfs f5, 0x4c4(r1)
/* 801B2714 001AF674  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801B2718 001AF678  C0 61 04 D4 */	lfs f3, 0x4d4(r1)
/* 801B271C 001AF67C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B2720 001AF680  C0 21 04 B4 */	lfs f1, 0x4b4(r1)
/* 801B2724 001AF684  EC 85 20 2A */	fadds f4, f5, f4
/* 801B2728 001AF688  EC 43 10 2A */	fadds f2, f3, f2
/* 801B272C 001AF68C  EC 01 00 2A */	fadds f0, f1, f0
/* 801B2730 001AF690  D0 81 01 5C */	stfs f4, 0x15c(r1)
/* 801B2734 001AF694  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 801B2738 001AF698  D0 41 01 60 */	stfs f2, 0x160(r1)
lbl_801B273C:
/* 801B273C 001AF69C  C0 41 04 B4 */	lfs f2, 0x4b4(r1)
/* 801B2740 001AF6A0  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801B2744 001AF6A4  C0 21 04 C4 */	lfs f1, 0x4c4(r1)
/* 801B2748 001AF6A8  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 801B274C 001AF6AC  C0 01 04 D4 */	lfs f0, 0x4d4(r1)
/* 801B2750 001AF6B0  38 61 02 40 */	addi r3, r1, 0x240
/* 801B2754 001AF6B4  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801B2758 001AF6B8  38 81 00 8C */	addi r4, r1, 0x8c
/* 801B275C 001AF6BC  38 A1 01 58 */	addi r5, r1, 0x158
/* 801B2760 001AF6C0  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801B2764 001AF6C4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 801B2768 001AF6C8  48 16 13 A9 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801B276C 001AF6CC  38 61 04 00 */	addi r3, r1, 0x400
/* 801B2770 001AF6D0  38 81 02 40 */	addi r4, r1, 0x240
/* 801B2774 001AF6D4  48 16 04 01 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B2778 001AF6D8  7F 63 DB 78 */	mr r3, r27
/* 801B277C 001AF6DC  7F 85 E3 78 */	mr r5, r28
/* 801B2780 001AF6E0  38 81 04 00 */	addi r4, r1, 0x400
/* 801B2784 001AF6E4  4B FF B5 31 */	bl sub_801adcb4
lbl_801B2788:
/* 801B2788 001AF6E8  3B E0 00 01 */	li r31, 1
/* 801B278C 001AF6EC  48 00 03 6C */	b lbl_801B2AF8
.global lbl_801B2790
lbl_801B2790:
/* 801B2790 001AF6F0  88 1B 08 E4 */	lbz r0, 0x8e4(r27)
/* 801B2794 001AF6F4  38 80 00 01 */	li r4, 1
/* 801B2798 001AF6F8  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 801B279C 001AF6FC  98 1B 08 E4 */	stb r0, 0x8e4(r27)
/* 801B27A0 001AF700  4B FF C1 25 */	bl sub_801ae8c4
/* 801B27A4 001AF704  D0 3B 07 C4 */	stfs f1, 0x7c4(r27)
/* 801B27A8 001AF708  48 00 03 50 */	b lbl_801B2AF8
.global lbl_801B27AC
lbl_801B27AC:
/* 801B27AC 001AF70C  7F 64 DB 78 */	mr r4, r27
/* 801B27B0 001AF710  38 61 02 10 */	addi r3, r1, 0x210
/* 801B27B4 001AF714  38 BD 00 3C */	addi r5, r29, 0x3c
/* 801B27B8 001AF718  4B EC 61 C1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801B27BC 001AF71C  38 61 03 D0 */	addi r3, r1, 0x3d0
/* 801B27C0 001AF720  38 81 02 10 */	addi r4, r1, 0x210
/* 801B27C4 001AF724  48 16 03 B1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B27C8 001AF728  C0 41 03 DC */	lfs f2, 0x3dc(r1)
/* 801B27CC 001AF72C  7F 63 DB 78 */	mr r3, r27
/* 801B27D0 001AF730  C0 21 03 EC */	lfs f1, 0x3ec(r1)
/* 801B27D4 001AF734  7F 84 E3 78 */	mr r4, r28
/* 801B27D8 001AF738  C0 01 03 FC */	lfs f0, 0x3fc(r1)
/* 801B27DC 001AF73C  38 A1 00 80 */	addi r5, r1, 0x80
/* 801B27E0 001AF740  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801B27E4 001AF744  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 801B27E8 001AF748  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801B27EC 001AF74C  4B FF BA 09 */	bl sub_801ae1f4
/* 801B27F0 001AF750  3B E0 00 01 */	li r31, 1
/* 801B27F4 001AF754  48 00 03 04 */	b lbl_801B2AF8
.global lbl_801B27F8
lbl_801B27F8:
/* 801B27F8 001AF758  A0 7B 07 7C */	lhz r3, 0x77c(r27)
/* 801B27FC 001AF75C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801B2800 001AF760  7C 03 00 40 */	cmplw r3, r0
/* 801B2804 001AF764  41 82 02 F4 */	beq lbl_801B2AF8
/* 801B2808 001AF768  A0 1B 07 7C */	lhz r0, 0x77c(r27)
/* 801B280C 001AF76C  7F 83 E3 78 */	mr r3, r28
/* 801B2810 001AF770  38 81 00 28 */	addi r4, r1, 0x28
/* 801B2814 001AF774  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801B2818 001AF778  4B E9 9D 5D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801B281C 001AF77C  7C 64 1B 78 */	mr r4, r3
/* 801B2820 001AF780  38 61 00 4C */	addi r3, r1, 0x4c
/* 801B2824 001AF784  4B EF 3D 29 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801B2828 001AF788  80 83 00 04 */	lwz r4, 4(r3)
/* 801B282C 001AF78C  28 04 00 00 */	cmplwi r4, 0
/* 801B2830 001AF790  41 82 02 C8 */	beq lbl_801B2AF8
/* 801B2834 001AF794  A0 1B 00 08 */	lhz r0, 8(r27)
/* 801B2838 001AF798  7F 83 E3 78 */	mr r3, r28
/* 801B283C 001AF79C  38 A1 00 24 */	addi r5, r1, 0x24
/* 801B2840 001AF7A0  38 C0 00 02 */	li r6, 2
/* 801B2844 001AF7A4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801B2848 001AF7A8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801B284C 001AF7AC  4B E9 16 85 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
/* 801B2850 001AF7B0  80 7B 07 F8 */	lwz r3, 0x7f8(r27)
/* 801B2854 001AF7B4  2C 03 00 00 */	cmpwi r3, 0
/* 801B2858 001AF7B8  40 81 02 A0 */	ble lbl_801B2AF8
/* 801B285C 001AF7BC  38 03 FF FF */	addi r0, r3, -1
/* 801B2860 001AF7C0  90 1B 07 F8 */	stw r0, 0x7f8(r27)
/* 801B2864 001AF7C4  48 00 02 94 */	b lbl_801B2AF8
.global lbl_801B2868
lbl_801B2868:
/* 801B2868 001AF7C8  7F 64 DB 78 */	mr r4, r27
/* 801B286C 001AF7CC  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 801B2870 001AF7D0  38 BD 00 3C */	addi r5, r29, 0x3c
/* 801B2874 001AF7D4  4B EC 61 05 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801B2878 001AF7D8  38 61 03 A0 */	addi r3, r1, 0x3a0
/* 801B287C 001AF7DC  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 801B2880 001AF7E0  48 16 02 F5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B2884 001AF7E4  80 9C 08 4C */	lwz r4, 0x84c(r28)
/* 801B2888 001AF7E8  7F 85 E3 78 */	mr r5, r28
/* 801B288C 001AF7EC  38 61 00 74 */	addi r3, r1, 0x74
/* 801B2890 001AF7F0  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B2894 001AF7F4  81 84 00 00 */	lwz r12, 0(r4)
/* 801B2898 001AF7F8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801B289C 001AF7FC  7D 89 03 A6 */	mtctr r12
/* 801B28A0 001AF800  4E 80 04 21 */	bctrl
/* 801B28A4 001AF804  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 801B28A8 001AF808  38 01 01 3C */	addi r0, r1, 0x13c
/* 801B28AC 001AF80C  C0 A1 03 CC */	lfs f5, 0x3cc(r1)
/* 801B28B0 001AF810  38 61 01 30 */	addi r3, r1, 0x130
/* 801B28B4 001AF814  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 801B28B8 001AF818  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 801B28BC 001AF81C  FC 02 28 40 */	fcmpo cr0, f2, f5
/* 801B28C0 001AF820  C0 21 03 AC */	lfs f1, 0x3ac(r1)
/* 801B28C4 001AF824  C0 01 03 BC */	lfs f0, 0x3bc(r1)
/* 801B28C8 001AF828  D0 81 01 34 */	stfs f4, 0x134(r1)
/* 801B28CC 001AF82C  D0 61 01 38 */	stfs f3, 0x138(r1)
/* 801B28D0 001AF830  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 801B28D4 001AF834  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 801B28D8 001AF838  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 801B28DC 001AF83C  D0 A1 01 30 */	stfs f5, 0x130(r1)
/* 801B28E0 001AF840  40 80 00 08 */	bge lbl_801B28E8
/* 801B28E4 001AF844  48 00 00 08 */	b lbl_801B28EC
lbl_801B28E8:
/* 801B28E8 001AF848  7C 03 03 78 */	mr r3, r0
lbl_801B28EC:
/* 801B28EC 001AF84C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801B28F0 001AF850  38 61 03 70 */	addi r3, r1, 0x370
/* 801B28F4 001AF854  38 9B 00 34 */	addi r4, r27, 0x34
/* 801B28F8 001AF858  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 801B28FC 001AF85C  48 16 02 79 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801B2900 001AF860  C0 41 01 28 */	lfs f2, 0x128(r1)
/* 801B2904 001AF864  38 60 00 00 */	li r3, 0
/* 801B2908 001AF868  C0 21 01 2C */	lfs f1, 0x12c(r1)
/* 801B290C 001AF86C  38 80 00 01 */	li r4, 1
/* 801B2910 001AF870  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 801B2914 001AF874  80 AD 90 8C */	lwz r5, lbl_805A7C4C@sda21(r13)
/* 801B2918 001AF878  D0 41 03 7C */	stfs f2, 0x37c(r1)
/* 801B291C 001AF87C  D0 21 03 8C */	stfs f1, 0x38c(r1)
/* 801B2920 001AF880  D0 01 03 9C */	stfs f0, 0x39c(r1)
/* 801B2924 001AF884  48 1D 75 D1 */	bl __shl2i
/* 801B2928 001AF888  C0 61 03 7C */	lfs f3, 0x37c(r1)
/* 801B292C 001AF88C  39 00 00 01 */	li r8, 1
/* 801B2930 001AF890  38 00 00 00 */	li r0, 0
/* 801B2934 001AF894  C0 41 03 8C */	lfs f2, 0x38c(r1)
/* 801B2938 001AF898  C0 01 03 9C */	lfs f0, 0x39c(r1)
/* 801B293C 001AF89C  3C A0 80 5A */	lis r5, sDownVector__9CVector3f@ha
/* 801B2940 001AF8A0  90 81 01 9C */	stw r4, 0x19c(r1)
/* 801B2944 001AF8A4  38 C5 67 00 */	addi r6, r5, sDownVector__9CVector3f@l
/* 801B2948 001AF8A8  C0 22 A8 FC */	lfs f1, lbl_805AC61C@sda21(r2)
/* 801B294C 001AF8AC  7F 84 E3 78 */	mr r4, r28
/* 801B2950 001AF8B0  90 61 01 98 */	stw r3, 0x198(r1)
/* 801B2954 001AF8B4  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 801B2958 001AF8B8  38 A1 00 68 */	addi r5, r1, 0x68
/* 801B295C 001AF8BC  38 E1 01 98 */	addi r7, r1, 0x198
/* 801B2960 001AF8C0  91 01 01 90 */	stw r8, 0x190(r1)
/* 801B2964 001AF8C4  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 801B2968 001AF8C8  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 801B296C 001AF8CC  91 01 01 A8 */	stw r8, 0x1a8(r1)
/* 801B2970 001AF8D0  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 801B2974 001AF8D4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801B2978 001AF8D8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801B297C 001AF8DC  4B E9 A6 1D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801B2980 001AF8E0  88 81 01 D0 */	lbz r4, 0x1d0(r1)
/* 801B2984 001AF8E4  C0 E1 01 B0 */	lfs f7, 0x1b0(r1)
/* 801B2988 001AF8E8  C0 C1 01 B4 */	lfs f6, 0x1b4(r1)
/* 801B298C 001AF8EC  28 04 00 00 */	cmplwi r4, 0
/* 801B2990 001AF8F0  C0 A1 01 B8 */	lfs f5, 0x1b8(r1)
/* 801B2994 001AF8F4  C0 81 01 BC */	lfs f4, 0x1bc(r1)
/* 801B2998 001AF8F8  C0 61 01 C0 */	lfs f3, 0x1c0(r1)
/* 801B299C 001AF8FC  C0 41 01 C4 */	lfs f2, 0x1c4(r1)
/* 801B29A0 001AF900  C0 21 01 C8 */	lfs f1, 0x1c8(r1)
/* 801B29A4 001AF904  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 801B29A8 001AF908  80 01 01 D8 */	lwz r0, 0x1d8(r1)
/* 801B29AC 001AF90C  80 61 01 DC */	lwz r3, 0x1dc(r1)
/* 801B29B0 001AF910  D0 E1 03 40 */	stfs f7, 0x340(r1)
/* 801B29B4 001AF914  D0 C1 03 44 */	stfs f6, 0x344(r1)
/* 801B29B8 001AF918  D0 A1 03 48 */	stfs f5, 0x348(r1)
/* 801B29BC 001AF91C  D0 81 03 4C */	stfs f4, 0x34c(r1)
/* 801B29C0 001AF920  D0 61 03 50 */	stfs f3, 0x350(r1)
/* 801B29C4 001AF924  D0 41 03 54 */	stfs f2, 0x354(r1)
/* 801B29C8 001AF928  D0 21 03 58 */	stfs f1, 0x358(r1)
/* 801B29CC 001AF92C  D0 01 03 5C */	stfs f0, 0x35c(r1)
/* 801B29D0 001AF930  98 81 03 60 */	stb r4, 0x360(r1)
/* 801B29D4 001AF934  90 61 03 6C */	stw r3, 0x36c(r1)
/* 801B29D8 001AF938  90 01 03 68 */	stw r0, 0x368(r1)
/* 801B29DC 001AF93C  41 82 00 F8 */	beq lbl_801B2AD4
/* 801B29E0 001AF940  3C 60 80 3D */	lis r3, lbl_803D1590@ha
/* 801B29E4 001AF944  D0 C1 03 7C */	stfs f6, 0x37c(r1)
/* 801B29E8 001AF948  38 63 15 90 */	addi r3, r3, lbl_803D1590@l
/* 801B29EC 001AF94C  3B 20 00 00 */	li r25, 0
/* 801B29F0 001AF950  D0 A1 03 8C */	stfs f5, 0x38c(r1)
/* 801B29F4 001AF954  38 83 00 7E */	addi r4, r3, 0x7e
/* 801B29F8 001AF958  38 60 01 70 */	li r3, 0x170
/* 801B29FC 001AF95C  38 A0 00 00 */	li r5, 0
/* 801B2A00 001AF960  D0 81 03 9C */	stfs f4, 0x39c(r1)
/* 801B2A04 001AF964  48 16 2E 69 */	bl __nw__FUlPCcPCc
/* 801B2A08 001AF968  7C 7A 1B 79 */	or. r26, r3, r3
/* 801B2A0C 001AF96C  41 82 00 84 */	beq lbl_801B2A90
/* 801B2A10 001AF970  38 61 00 44 */	addi r3, r1, 0x44
/* 801B2A14 001AF974  38 9B 06 D4 */	addi r4, r27, 0x6d4
/* 801B2A18 001AF978  48 18 E4 91 */	bl __ct__6CTokenFRC6CToken
/* 801B2A1C 001AF97C  7F 84 E3 78 */	mr r4, r28
/* 801B2A20 001AF980  38 61 00 10 */	addi r3, r1, 0x10
/* 801B2A24 001AF984  3B 20 00 01 */	li r25, 1
/* 801B2A28 001AF988  4B E9 A6 B5 */	bl AllocateUniqueId__13CStateManagerFv
/* 801B2A2C 001AF98C  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 801B2A30 001AF990  38 01 00 5C */	addi r0, r1, 0x5c
/* 801B2A34 001AF994  C0 22 A9 0C */	lfs f1, lbl_805AC62C@sda21(r2)
/* 801B2A38 001AF998  7F 43 D3 78 */	mr r3, r26
/* 801B2A3C 001AF99C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 801B2A40 001AF9A0  38 81 00 44 */	addi r4, r1, 0x44
/* 801B2A44 001AF9A4  C0 02 A8 F0 */	lfs f0, lbl_805AC610@sda21(r2)
/* 801B2A48 001AF9A8  38 BB 06 44 */	addi r5, r27, 0x644
/* 801B2A4C 001AF9AC  81 9B 00 04 */	lwz r12, 4(r27)
/* 801B2A50 001AF9B0  38 C1 00 14 */	addi r6, r1, 0x14
/* 801B2A54 001AF9B4  38 E1 00 38 */	addi r7, r1, 0x38
/* 801B2A58 001AF9B8  39 01 00 1C */	addi r8, r1, 0x1c
/* 801B2A5C 001AF9BC  91 81 00 38 */	stw r12, 0x38(r1)
/* 801B2A60 001AF9C0  39 21 03 70 */	addi r9, r1, 0x370
/* 801B2A64 001AF9C4  39 5B 06 28 */	addi r10, r27, 0x628
/* 801B2A68 001AF9C8  A1 7B 00 08 */	lhz r11, 8(r27)
/* 801B2A6C 001AF9CC  91 81 00 34 */	stw r12, 0x34(r1)
/* 801B2A70 001AF9D0  B1 61 00 1C */	sth r11, 0x1c(r1)
/* 801B2A74 001AF9D4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 801B2A78 001AF9D8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801B2A7C 001AF9DC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801B2A80 001AF9E0  B1 61 00 18 */	sth r11, 0x18(r1)
/* 801B2A84 001AF9E4  90 01 00 08 */	stw r0, 8(r1)
/* 801B2A88 001AF9E8  48 05 60 4D */	bl "__ct__15CFlaahgraPlantsF25TToken<15CGenDescription>9TUniqueId9TUniqueIdRC12CTransform4fRC11CDamageInfoRC9CVector3f"
/* 801B2A8C 001AF9EC  7C 7A 1B 78 */	mr r26, r3
lbl_801B2A90:
/* 801B2A90 001AF9F0  7F 20 07 75 */	extsb. r0, r25
/* 801B2A94 001AF9F4  41 82 00 10 */	beq lbl_801B2AA4
/* 801B2A98 001AF9F8  38 61 00 44 */	addi r3, r1, 0x44
/* 801B2A9C 001AF9FC  38 80 00 00 */	li r4, 0
/* 801B2AA0 001AFA00  48 18 E3 A1 */	bl __dt__6CTokenFv
lbl_801B2AA4:
/* 801B2AA4 001AFA04  7F 83 E3 78 */	mr r3, r28
/* 801B2AA8 001AFA08  7F 44 D3 78 */	mr r4, r26
/* 801B2AAC 001AFA0C  4B E9 A2 49 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 801B2AB0 001AFA10  80 1B 00 04 */	lwz r0, 4(r27)
/* 801B2AB4 001AFA14  7F 83 E3 78 */	mr r3, r28
/* 801B2AB8 001AFA18  7F 44 D3 78 */	mr r4, r26
/* 801B2ABC 001AFA1C  38 A1 00 30 */	addi r5, r1, 0x30
/* 801B2AC0 001AFA20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B2AC4 001AFA24  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B2AC8 001AFA28  4B E9 27 B1 */	bl SetActorAreaId__13CStateManagerFR6CActor7TAreaId
/* 801B2ACC 001AFA2C  C0 02 A9 20 */	lfs f0, lbl_805AC640@sda21(r2)
/* 801B2AD0 001AFA30  D0 1B 07 CC */	stfs f0, 0x7cc(r27)
lbl_801B2AD4:
/* 801B2AD4 001AFA34  88 1B 08 E4 */	lbz r0, 0x8e4(r27)
/* 801B2AD8 001AFA38  38 60 00 01 */	li r3, 1
/* 801B2ADC 001AFA3C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801B2AE0 001AFA40  98 1B 08 E4 */	stb r0, 0x8e4(r27)
/* 801B2AE4 001AFA44  48 00 00 14 */	b lbl_801B2AF8
.global lbl_801B2AE8
lbl_801B2AE8:
/* 801B2AE8 001AFA48  7F 85 E3 78 */	mr r5, r28
/* 801B2AEC 001AFA4C  38 80 00 19 */	li r4, 0x19
/* 801B2AF0 001AFA50  38 C0 FF FF */	li r6, -1
/* 801B2AF4 001AFA54  4B E9 E5 CD */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
.global lbl_801B2AF8
lbl_801B2AF8:
/* 801B2AF8 001AFA58  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801B2AFC 001AFA5C  40 82 00 1C */	bne lbl_801B2B18
/* 801B2B00 001AFA60  FC 20 F0 90 */	fmr f1, f30
/* 801B2B04 001AFA64  7F 63 DB 78 */	mr r3, r27
/* 801B2B08 001AFA68  7F 84 E3 78 */	mr r4, r28
/* 801B2B0C 001AFA6C  7F A5 EB 78 */	mr r5, r29
/* 801B2B10 001AFA70  7F C6 F3 78 */	mr r6, r30
/* 801B2B14 001AFA74  4B EC 63 9D */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801B2B18:
/* 801B2B18 001AFA78  E3 E1 05 38 */	psq_l f31, 1336(r1), 0, qr0
/* 801B2B1C 001AFA7C  CB E1 05 30 */	lfd f31, 0x530(r1)
/* 801B2B20 001AFA80  E3 C1 05 28 */	psq_l f30, 1320(r1), 0, qr0
/* 801B2B24 001AFA84  CB C1 05 20 */	lfd f30, 0x520(r1)
/* 801B2B28 001AFA88  E3 A1 05 18 */	psq_l f29, 1304(r1), 0, qr0
/* 801B2B2C 001AFA8C  CB A1 05 10 */	lfd f29, 0x510(r1)
/* 801B2B30 001AFA90  E3 81 05 08 */	psq_l f28, 1288(r1), 0, qr0
/* 801B2B34 001AFA94  CB 81 05 00 */	lfd f28, 0x500(r1)
/* 801B2B38 001AFA98  BB 21 04 E4 */	lmw r25, 0x4e4(r1)
/* 801B2B3C 001AFA9C  80 01 05 44 */	lwz r0, 0x544(r1)
/* 801B2B40 001AFAA0  7C 08 03 A6 */	mtlr r0
/* 801B2B44 001AFAA4  38 21 05 40 */	addi r1, r1, 0x540
/* 801B2B48 001AFAA8  4E 80 00 20 */	blr

.global ProjectileInfo__9CFlaahgraFv
ProjectileInfo__9CFlaahgraFv:
/* 801B2B4C 001AFAAC  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801B2B50 001AFAB0  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801B2B54 001AFAB4  41 82 00 0C */	beq lbl_801B2B60
/* 801B2B58 001AFAB8  38 63 07 04 */	addi r3, r3, 0x704
/* 801B2B5C 001AFABC  4E 80 00 20 */	blr
lbl_801B2B60:
/* 801B2B60 001AFAC0  38 63 06 DC */	addi r3, r3, 0x6dc
/* 801B2B64 001AFAC4  4E 80 00 20 */	blr

.global GetAimPosition__9CFlaahgraCFRC13CStateManagerf
GetAimPosition__9CFlaahgraCFRC13CStateManagerf:
/* 801B2B68 001AFAC8  C0 04 08 20 */	lfs f0, 0x820(r4)
/* 801B2B6C 001AFACC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801B2B70 001AFAD0  C0 04 08 24 */	lfs f0, 0x824(r4)
/* 801B2B74 001AFAD4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801B2B78 001AFAD8  C0 04 08 28 */	lfs f0, 0x828(r4)
/* 801B2B7C 001AFADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801B2B80 001AFAE0  4E 80 00 20 */	blr

.global AddToRenderer__9CFlaahgraCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__9CFlaahgraCFRC14CFrustumPlanesRC13CStateManager:
/* 801B2B84 001AFAE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B2B88 001AFAE8  7C 08 02 A6 */	mflr r0
/* 801B2B8C 001AFAEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B2B90 001AFAF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B2B94 001AFAF4  7C BF 2B 78 */	mr r31, r5
/* 801B2B98 001AFAF8  93 C1 00 08 */	stw r30, 8(r1)
/* 801B2B9C 001AFAFC  7C 7E 1B 78 */	mr r30, r3
/* 801B2BA0 001AFB00  80 83 00 64 */	lwz r4, 0x64(r3)
/* 801B2BA4 001AFB04  38 60 00 00 */	li r3, 0
/* 801B2BA8 001AFB08  80 04 00 10 */	lwz r0, 0x10(r4)
/* 801B2BAC 001AFB0C  28 00 00 00 */	cmplwi r0, 0
/* 801B2BB0 001AFB10  40 82 00 14 */	bne lbl_801B2BC4
/* 801B2BB4 001AFB14  88 04 00 28 */	lbz r0, 0x28(r4)
/* 801B2BB8 001AFB18  28 00 00 00 */	cmplwi r0, 0
/* 801B2BBC 001AFB1C  40 82 00 08 */	bne lbl_801B2BC4
/* 801B2BC0 001AFB20  38 60 00 01 */	li r3, 1
lbl_801B2BC4:
/* 801B2BC4 001AFB24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2BC8 001AFB28  40 82 00 58 */	bne lbl_801B2C20
/* 801B2BCC 001AFB2C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801B2BD0 001AFB30  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801B2BD4 001AFB34  40 82 00 4C */	bne lbl_801B2C20
/* 801B2BD8 001AFB38  7F C3 F3 78 */	mr r3, r30
/* 801B2BDC 001AFB3C  7F E4 FB 78 */	mr r4, r31
/* 801B2BE0 001AFB40  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B2BE4 001AFB44  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B2BE8 001AFB48  7D 89 03 A6 */	mtctr r12
/* 801B2BEC 001AFB4C  4E 80 04 21 */	bctrl
/* 801B2BF0 001AFB50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2BF4 001AFB54  41 82 00 20 */	beq lbl_801B2C14
/* 801B2BF8 001AFB58  7F C3 F3 78 */	mr r3, r30
/* 801B2BFC 001AFB5C  7F E4 FB 78 */	mr r4, r31
/* 801B2C00 001AFB60  81 9E 00 00 */	lwz r12, 0(r30)
/* 801B2C04 001AFB64  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801B2C08 001AFB68  7D 89 03 A6 */	mtctr r12
/* 801B2C0C 001AFB6C  4E 80 04 21 */	bctrl
/* 801B2C10 001AFB70  48 00 00 10 */	b lbl_801B2C20
lbl_801B2C14:
/* 801B2C14 001AFB74  7F C3 F3 78 */	mr r3, r30
/* 801B2C18 001AFB78  7F E4 FB 78 */	mr r4, r31
/* 801B2C1C 001AFB7C  4B EA 1D B1 */	bl EnsureRendered__6CActorCFRC13CStateManager
lbl_801B2C20:
/* 801B2C20 001AFB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B2C24 001AFB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B2C28 001AFB88  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B2C2C 001AFB8C  7C 08 03 A6 */	mtlr r0
/* 801B2C30 001AFB90  38 21 00 10 */	addi r1, r1, 0x10
/* 801B2C34 001AFB94  4E 80 00 20 */	blr

.global CanRenderUnsorted__9CFlaahgraCFRC13CStateManager
CanRenderUnsorted__9CFlaahgraCFRC13CStateManager:
/* 801B2C38 001AFB98  38 60 00 01 */	li r3, 1
/* 801B2C3C 001AFB9C  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CFlaahgraF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CFlaahgraF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801B2C40 001AFBA0  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 801B2C44 001AFBA4  7C 08 02 A6 */	mflr r0
/* 801B2C48 001AFBA8  90 01 01 74 */	stw r0, 0x174(r1)
/* 801B2C4C 001AFBAC  BF 21 01 54 */	stmw r25, 0x154(r1)
/* 801B2C50 001AFBB0  7C 9C 23 78 */	mr r28, r4
/* 801B2C54 001AFBB4  28 1C 00 29 */	cmplwi r28, 0x29
/* 801B2C58 001AFBB8  7C 7F 1B 78 */	mr r31, r3
/* 801B2C5C 001AFBBC  7C BD 2B 78 */	mr r29, r5
/* 801B2C60 001AFBC0  7C DE 33 78 */	mr r30, r6
/* 801B2C64 001AFBC4  41 81 07 F8 */	bgt lbl_801B345C
/* 801B2C68 001AFBC8  3C 80 80 3E */	lis r4, lbl_803E4DE0@ha
/* 801B2C6C 001AFBCC  57 80 10 3A */	slwi r0, r28, 2
/* 801B2C70 001AFBD0  38 84 4D E0 */	addi r4, r4, lbl_803E4DE0@l
/* 801B2C74 001AFBD4  7C 04 00 2E */	lwzx r0, r4, r0
/* 801B2C78 001AFBD8  7C 09 03 A6 */	mtctr r0
/* 801B2C7C 001AFBDC  4E 80 04 20 */	bctr
.global lbl_801B2C80
lbl_801B2C80:
/* 801B2C80 001AFBE0  88 7F 08 E4 */	lbz r3, 0x8e4(r31)
/* 801B2C84 001AFBE4  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801B2C88 001AFBE8  40 82 00 4C */	bne lbl_801B2CD4
/* 801B2C8C 001AFBEC  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801B2C90 001AFBF0  40 82 00 44 */	bne lbl_801B2CD4
/* 801B2C94 001AFBF4  80 DF 00 04 */	lwz r6, 4(r31)
/* 801B2C98 001AFBF8  38 60 00 01 */	li r3, 1
/* 801B2C9C 001AFBFC  80 BE 08 50 */	lwz r5, 0x850(r30)
/* 801B2CA0 001AFC00  54 C4 18 38 */	slwi r4, r6, 3
/* 801B2CA4 001AFC04  90 C1 00 78 */	stw r6, 0x78(r1)
/* 801B2CA8 001AFC08  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 801B2CAC 001AFC0C  38 04 00 04 */	addi r0, r4, 4
/* 801B2CB0 001AFC10  90 C1 00 68 */	stw r6, 0x68(r1)
/* 801B2CB4 001AFC14  7C 85 00 2E */	lwzx r4, r5, r0
/* 801B2CB8 001AFC18  80 A4 01 2C */	lwz r5, 0x12c(r4)
/* 801B2CBC 001AFC1C  80 85 11 3C */	lwz r4, 0x113c(r5)
/* 801B2CC0 001AFC20  38 04 00 01 */	addi r0, r4, 1
/* 801B2CC4 001AFC24  90 05 11 3C */	stw r0, 0x113c(r5)
/* 801B2CC8 001AFC28  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B2CCC 001AFC2C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801B2CD0 001AFC30  98 1F 08 E4 */	stb r0, 0x8e4(r31)
lbl_801B2CD4:
/* 801B2CD4 001AFC34  7F E3 FB 78 */	mr r3, r31
/* 801B2CD8 001AFC38  7F C4 F3 78 */	mr r4, r30
/* 801B2CDC 001AFC3C  4B FF B3 D5 */	bl sub_801ae0b0
/* 801B2CE0 001AFC40  48 00 07 7C */	b lbl_801B345C
.global lbl_801B2CE4
lbl_801B2CE4:
/* 801B2CE4 001AFC44  7F C4 F3 78 */	mr r4, r30
/* 801B2CE8 001AFC48  4B FF AC F5 */	bl sub_801ad9dc
/* 801B2CEC 001AFC4C  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B2CF0 001AFC50  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801B2CF4 001AFC54  40 82 07 68 */	bne lbl_801B345C
/* 801B2CF8 001AFC58  7F E3 FB 78 */	mr r3, r31
/* 801B2CFC 001AFC5C  7F C4 F3 78 */	mr r4, r30
/* 801B2D00 001AFC60  4B FF C8 2D */	bl sub_801af52c
/* 801B2D04 001AFC64  7F C4 F3 78 */	mr r4, r30
/* 801B2D08 001AFC68  38 61 00 50 */	addi r3, r1, 0x50
/* 801B2D0C 001AFC6C  4B E9 A3 D1 */	bl AllocateUniqueId__13CStateManagerFv
/* 801B2D10 001AFC70  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 801B2D14 001AFC74  3C 60 80 3D */	lis r3, lbl_803D1590@ha
/* 801B2D18 001AFC78  38 63 15 90 */	addi r3, r3, lbl_803D1590@l
/* 801B2D1C 001AFC7C  3B 40 00 00 */	li r26, 0
/* 801B2D20 001AFC80  B0 1F 06 D0 */	sth r0, 0x6d0(r31)
/* 801B2D24 001AFC84  38 83 00 7E */	addi r4, r3, 0x7e
/* 801B2D28 001AFC88  3B 20 00 00 */	li r25, 0
/* 801B2D2C 001AFC8C  38 60 00 F0 */	li r3, 0xf0
/* 801B2D30 001AFC90  38 A0 00 00 */	li r5, 0
/* 801B2D34 001AFC94  48 16 2B 39 */	bl __nw__FUlPCcPCc
/* 801B2D38 001AFC98  7C 7B 1B 79 */	or. r27, r3, r3
/* 801B2D3C 001AFC9C  41 82 00 80 */	beq lbl_801B2DBC
/* 801B2D40 001AFCA0  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 801B2D44 001AFCA4  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 801B2D48 001AFCA8  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 801B2D4C 001AFCAC  38 81 00 70 */	addi r4, r1, 0x70
/* 801B2D50 001AFCB0  90 01 00 74 */	stw r0, 0x74(r1)
/* 801B2D54 001AFCB4  38 61 01 14 */	addi r3, r1, 0x114
/* 801B2D58 001AFCB8  38 C1 00 74 */	addi r6, r1, 0x74
/* 801B2D5C 001AFCBC  80 1F 00 04 */	lwz r0, 4(r31)
/* 801B2D60 001AFCC0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801B2D64 001AFCC4  90 01 00 70 */	stw r0, 0x70(r1)
/* 801B2D68 001AFCC8  4B E9 E7 1D */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 801B2D6C 001AFCCC  3C 80 80 3D */	lis r4, lbl_803D1590@ha
/* 801B2D70 001AFCD0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801B2D74 001AFCD4  38 84 15 90 */	addi r4, r4, lbl_803D1590@l
/* 801B2D78 001AFCD8  3B 40 00 01 */	li r26, 1
/* 801B2D7C 001AFCDC  38 84 00 8A */	addi r4, r4, 0x8a
/* 801B2D80 001AFCE0  4B E5 1F 39 */	bl string_l__4rstlFPCc
/* 801B2D84 001AFCE4  A1 3F 00 08 */	lhz r9, 8(r31)
/* 801B2D88 001AFCE8  7F 63 DB 78 */	mr r3, r27
/* 801B2D8C 001AFCEC  38 81 00 44 */	addi r4, r1, 0x44
/* 801B2D90 001AFCF0  38 A1 00 4C */	addi r5, r1, 0x4c
/* 801B2D94 001AFCF4  B1 21 00 4C */	sth r9, 0x4c(r1)
/* 801B2D98 001AFCF8  38 C1 00 B4 */	addi r6, r1, 0xb4
/* 801B2D9C 001AFCFC  38 E1 01 14 */	addi r7, r1, 0x114
/* 801B2DA0 001AFD00  39 1F 00 34 */	addi r8, r31, 0x34
/* 801B2DA4 001AFD04  A0 1F 06 D0 */	lhz r0, 0x6d0(r31)
/* 801B2DA8 001AFD08  3B 20 00 01 */	li r25, 1
/* 801B2DAC 001AFD0C  B1 21 00 48 */	sth r9, 0x48(r1)
/* 801B2DB0 001AFD10  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801B2DB4 001AFD14  4B FF A8 E9 */	bl "__ct__17CFlaahgraRendererF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4f"
/* 801B2DB8 001AFD18  7C 7B 1B 78 */	mr r27, r3
lbl_801B2DBC:
/* 801B2DBC 001AFD1C  7F C3 F3 78 */	mr r3, r30
/* 801B2DC0 001AFD20  7F 64 DB 78 */	mr r4, r27
/* 801B2DC4 001AFD24  4B E9 9F 31 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 801B2DC8 001AFD28  7F 20 07 75 */	extsb. r0, r25
/* 801B2DCC 001AFD2C  41 82 00 0C */	beq lbl_801B2DD8
/* 801B2DD0 001AFD30  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801B2DD4 001AFD34  48 18 AD 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801B2DD8:
/* 801B2DD8 001AFD38  7F 40 07 75 */	extsb. r0, r26
/* 801B2DDC 001AFD3C  41 82 00 44 */	beq lbl_801B2E20
/* 801B2DE0 001AFD40  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 801B2DE4 001AFD44  80 61 01 24 */	lwz r3, 0x124(r1)
/* 801B2DE8 001AFD48  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801B2DEC 001AFD4C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 801B2DF0 001AFD50  7C 64 1B 78 */	mr r4, r3
/* 801B2DF4 001AFD54  7C 03 02 14 */	add r0, r3, r0
/* 801B2DF8 001AFD58  90 61 00 58 */	stw r3, 0x58(r1)
/* 801B2DFC 001AFD5C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B2E00 001AFD60  90 01 00 60 */	stw r0, 0x60(r1)
/* 801B2E04 001AFD64  48 00 00 08 */	b lbl_801B2E0C
lbl_801B2E08:
/* 801B2E08 001AFD68  38 84 00 0C */	addi r4, r4, 0xc
lbl_801B2E0C:
/* 801B2E0C 001AFD6C  7C 04 00 40 */	cmplw r4, r0
/* 801B2E10 001AFD70  40 82 FF F8 */	bne lbl_801B2E08
/* 801B2E14 001AFD74  28 03 00 00 */	cmplwi r3, 0
/* 801B2E18 001AFD78  41 82 00 08 */	beq lbl_801B2E20
/* 801B2E1C 001AFD7C  48 16 2B 15 */	bl Free__7CMemoryFPCv
lbl_801B2E20:
/* 801B2E20 001AFD80  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B2E24 001AFD84  38 80 00 00 */	li r4, 0
/* 801B2E28 001AFD88  4B F8 7B B1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801B2E2C 001AFD8C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B2E30 001AFD90  7F C4 F3 78 */	mr r4, r30
/* 801B2E34 001AFD94  4B F8 7E BD */	bl Activate__15CBodyControllerFR13CStateManager
/* 801B2E38 001AFD98  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B2E3C 001AFD9C  38 60 00 01 */	li r3, 1
/* 801B2E40 001AFDA0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801B2E44 001AFDA4  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B2E48 001AFDA8  48 00 06 14 */	b lbl_801B345C
.global lbl_801B2E4C
lbl_801B2E4C:
/* 801B2E4C 001AFDAC  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B2E50 001AFDB0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801B2E54 001AFDB4  41 82 06 08 */	beq lbl_801B345C
/* 801B2E58 001AFDB8  80 7F 07 9C */	lwz r3, 0x79c(r31)
/* 801B2E5C 001AFDBC  7F C4 F3 78 */	mr r4, r30
/* 801B2E60 001AFDC0  4B FF 45 65 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801B2E64 001AFDC4  80 7F 07 A0 */	lwz r3, 0x7a0(r31)
/* 801B2E68 001AFDC8  7F C4 F3 78 */	mr r4, r30
/* 801B2E6C 001AFDCC  4B FF 45 59 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801B2E70 001AFDD0  80 7F 07 A4 */	lwz r3, 0x7a4(r31)
/* 801B2E74 001AFDD4  7F C4 F3 78 */	mr r4, r30
/* 801B2E78 001AFDD8  4B FF 45 4D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801B2E7C 001AFDDC  A0 1F 06 D0 */	lhz r0, 0x6d0(r31)
/* 801B2E80 001AFDE0  7F C3 F3 78 */	mr r3, r30
/* 801B2E84 001AFDE4  38 81 00 40 */	addi r4, r1, 0x40
/* 801B2E88 001AFDE8  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801B2E8C 001AFDEC  4B E9 93 E1 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801B2E90 001AFDF0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801B2E94 001AFDF4  38 60 00 00 */	li r3, 0
/* 801B2E98 001AFDF8  B0 1F 06 D0 */	sth r0, 0x6d0(r31)
/* 801B2E9C 001AFDFC  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B2EA0 001AFE00  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801B2EA4 001AFE04  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B2EA8 001AFE08  48 00 05 B4 */	b lbl_801B345C
.global lbl_801B2EAC
lbl_801B2EAC:
/* 801B2EAC 001AFE0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2EB0 001AFE10  7F C4 F3 78 */	mr r4, r30
/* 801B2EB4 001AFE14  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B2EB8 001AFE18  7D 89 03 A6 */	mtctr r12
/* 801B2EBC 001AFE1C  4E 80 04 21 */	bctrl
/* 801B2EC0 001AFE20  C0 23 00 00 */	lfs f1, 0(r3)
/* 801B2EC4 001AFE24  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B2EC8 001AFE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2ECC 001AFE2C  40 81 05 90 */	ble lbl_801B345C
/* 801B2ED0 001AFE30  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801B2ED4 001AFE34  7F C3 F3 78 */	mr r3, r30
/* 801B2ED8 001AFE38  38 81 00 3C */	addi r4, r1, 0x3c
/* 801B2EDC 001AFE3C  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 801B2EE0 001AFE40  4B E9 96 C5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B2EE4 001AFE44  7C 64 1B 78 */	mr r4, r3
/* 801B2EE8 001AFE48  38 61 00 94 */	addi r3, r1, 0x94
/* 801B2EEC 001AFE4C  4B EF C4 61 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801B2EF0 001AFE50  80 83 00 04 */	lwz r4, 4(r3)
/* 801B2EF4 001AFE54  28 04 00 00 */	cmplwi r4, 0
/* 801B2EF8 001AFE58  41 82 05 64 */	beq lbl_801B345C
/* 801B2EFC 001AFE5C  38 61 00 38 */	addi r3, r1, 0x38
/* 801B2F00 001AFE60  4B FF 5C 8D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801B2F04 001AFE64  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801B2F08 001AFE68  A0 81 00 38 */	lhz r4, 0x38(r1)
/* 801B2F0C 001AFE6C  A0 03 00 08 */	lhz r0, 8(r3)
/* 801B2F10 001AFE70  7C 04 00 40 */	cmplw r4, r0
/* 801B2F14 001AFE74  40 82 05 48 */	bne lbl_801B345C
/* 801B2F18 001AFE78  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 801B2F1C 001AFE7C  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B2F20 001AFE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B2F24 001AFE84  4C 40 13 82 */	cror 2, 0, 2
/* 801B2F28 001AFE88  40 82 05 34 */	bne lbl_801B345C
/* 801B2F2C 001AFE8C  7F E4 FB 78 */	mr r4, r31
/* 801B2F30 001AFE90  38 61 00 F8 */	addi r3, r1, 0xf8
/* 801B2F34 001AFE94  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B2F38 001AFE98  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801B2F3C 001AFE9C  7D 89 03 A6 */	mtctr r12
/* 801B2F40 001AFEA0  4E 80 04 21 */	bctrl
/* 801B2F44 001AFEA4  80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 801B2F48 001AFEA8  88 61 00 FC */	lbz r3, 0xfc(r1)
/* 801B2F4C 001AFEAC  C0 61 01 00 */	lfs f3, 0x100(r1)
/* 801B2F50 001AFEB0  C0 41 01 04 */	lfs f2, 0x104(r1)
/* 801B2F54 001AFEB4  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 801B2F58 001AFEB8  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 801B2F5C 001AFEBC  88 01 01 10 */	lbz r0, 0x110(r1)
/* 801B2F60 001AFEC0  90 81 01 2C */	stw r4, 0x12c(r1)
/* 801B2F64 001AFEC4  98 61 01 30 */	stb r3, 0x130(r1)
/* 801B2F68 001AFEC8  D0 61 01 34 */	stfs f3, 0x134(r1)
/* 801B2F6C 001AFECC  D0 41 01 38 */	stfs f2, 0x138(r1)
/* 801B2F70 001AFED0  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 801B2F74 001AFED4  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 801B2F78 001AFED8  98 01 01 44 */	stb r0, 0x144(r1)
/* 801B2F7C 001AFEDC  80 1F 07 A8 */	lwz r0, 0x7a8(r31)
/* 801B2F80 001AFEE0  2C 00 00 04 */	cmpwi r0, 4
/* 801B2F84 001AFEE4  40 82 00 40 */	bne lbl_801B2FC4
/* 801B2F88 001AFEE8  80 7F 07 DC */	lwz r3, 0x7dc(r31)
/* 801B2F8C 001AFEEC  80 1F 07 E0 */	lwz r0, 0x7e0(r31)
/* 801B2F90 001AFEF0  90 61 01 2C */	stw r3, 0x12c(r1)
/* 801B2F94 001AFEF4  90 01 01 30 */	stw r0, 0x130(r1)
/* 801B2F98 001AFEF8  C0 1F 07 E4 */	lfs f0, 0x7e4(r31)
/* 801B2F9C 001AFEFC  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 801B2FA0 001AFF00  C0 1F 07 E8 */	lfs f0, 0x7e8(r31)
/* 801B2FA4 001AFF04  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 801B2FA8 001AFF08  C0 1F 07 EC */	lfs f0, 0x7ec(r31)
/* 801B2FAC 001AFF0C  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 801B2FB0 001AFF10  C0 1F 07 F0 */	lfs f0, 0x7f0(r31)
/* 801B2FB4 001AFF14  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 801B2FB8 001AFF18  88 1F 07 F4 */	lbz r0, 0x7f4(r31)
/* 801B2FBC 001AFF1C  98 01 01 44 */	stb r0, 0x144(r1)
/* 801B2FC0 001AFF20  48 00 00 24 */	b lbl_801B2FE4
lbl_801B2FC4:
/* 801B2FC4 001AFF24  7F E3 FB 78 */	mr r3, r31
/* 801B2FC8 001AFF28  4B FF B6 A9 */	bl sub_801ae670
/* 801B2FCC 001AFF2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2FD0 001AFF30  40 82 00 14 */	bne lbl_801B2FE4
/* 801B2FD4 001AFF34  C0 22 A8 E4 */	lfs f1, lbl_805AC604@sda21(r2)
/* 801B2FD8 001AFF38  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 801B2FDC 001AFF3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B2FE0 001AFF40  D0 01 01 34 */	stfs f0, 0x134(r1)
lbl_801B2FE4:
/* 801B2FE4 001AFF44  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 801B2FE8 001AFF48  2C 00 00 02 */	cmpwi r0, 2
/* 801B2FEC 001AFF4C  41 80 00 14 */	blt lbl_801B3000
/* 801B2FF0 001AFF50  C0 22 A8 B4 */	lfs f1, lbl_805AC5D4@sda21(r2)
/* 801B2FF4 001AFF54  C0 01 01 34 */	lfs f0, 0x134(r1)
/* 801B2FF8 001AFF58  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B2FFC 001AFF5C  D0 01 01 34 */	stfs f0, 0x134(r1)
lbl_801B3000:
/* 801B3000 001AFF60  80 AD 90 88 */	lwz r5, lbl_805A7C48@sda21(r13)
/* 801B3004 001AFF64  38 60 00 00 */	li r3, 0
/* 801B3008 001AFF68  38 80 00 01 */	li r4, 1
/* 801B300C 001AFF6C  48 1D 6E E9 */	bl __shl2i
/* 801B3010 001AFF70  39 40 00 00 */	li r10, 0
/* 801B3014 001AFF74  38 00 00 03 */	li r0, 3
/* 801B3018 001AFF78  90 81 00 E4 */	stw r4, 0xe4(r1)
/* 801B301C 001AFF7C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B3020 001AFF80  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 801B3024 001AFF84  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801B3028 001AFF88  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 801B302C 001AFF8C  38 81 00 34 */	addi r4, r1, 0x34
/* 801B3030 001AFF90  7F C3 F3 78 */	mr r3, r30
/* 801B3034 001AFF94  38 C1 00 24 */	addi r6, r1, 0x24
/* 801B3038 001AFF98  91 41 00 EC */	stw r10, 0xec(r1)
/* 801B303C 001AFF9C  38 E1 01 2C */	addi r7, r1, 0x12c
/* 801B3040 001AFFA0  39 01 00 E0 */	addi r8, r1, 0xe0
/* 801B3044 001AFFA4  91 41 00 E8 */	stw r10, 0xe8(r1)
/* 801B3048 001AFFA8  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 801B304C 001AFFAC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801B3050 001AFFB0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801B3054 001AFFB4  81 5E 08 4C */	lwz r10, 0x84c(r30)
/* 801B3058 001AFFB8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801B305C 001AFFBC  A1 4A 00 08 */	lhz r10, 8(r10)
/* 801B3060 001AFFC0  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 801B3064 001AFFC4  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801B3068 001AFFC8  B1 41 00 28 */	sth r10, 0x28(r1)
/* 801B306C 001AFFCC  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801B3070 001AFFD0  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801B3074 001AFFD4  4B E9 70 2D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801B3078 001AFFD8  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 801B307C 001AFFDC  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 801B3080 001AFFE0  48 00 03 DC */	b lbl_801B345C
.global lbl_801B3084
lbl_801B3084:
/* 801B3084 001AFFE4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3088 001AFFE8  7F C4 F3 78 */	mr r4, r30
/* 801B308C 001AFFEC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801B3090 001AFFF0  7D 89 03 A6 */	mtctr r12
/* 801B3094 001AFFF4  4E 80 04 21 */	bctrl
/* 801B3098 001AFFF8  C0 23 00 00 */	lfs f1, 0(r3)
/* 801B309C 001AFFFC  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B30A0 001B0000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B30A4 001B0004  40 81 03 B8 */	ble lbl_801B345C
/* 801B30A8 001B0008  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801B30AC 001B000C  7F E3 FB 78 */	mr r3, r31
/* 801B30B0 001B0010  38 81 00 1C */	addi r4, r1, 0x1c
/* 801B30B4 001B0014  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801B30B8 001B0018  4B FF BB 01 */	bl sub_801aebb8
/* 801B30BC 001B001C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B30C0 001B0020  41 82 03 9C */	beq lbl_801B345C
/* 801B30C4 001B0024  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801B30C8 001B0028  7F C3 F3 78 */	mr r3, r30
/* 801B30CC 001B002C  38 81 00 18 */	addi r4, r1, 0x18
/* 801B30D0 001B0030  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801B30D4 001B0034  4B E9 94 D1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B30D8 001B0038  7C 64 1B 78 */	mr r4, r3
/* 801B30DC 001B003C  38 61 00 8C */	addi r3, r1, 0x8c
/* 801B30E0 001B0040  4B EF C2 6D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801B30E4 001B0044  80 83 00 04 */	lwz r4, 4(r3)
/* 801B30E8 001B0048  28 04 00 00 */	cmplwi r4, 0
/* 801B30EC 001B004C  41 82 03 70 */	beq lbl_801B345C
/* 801B30F0 001B0050  38 61 00 14 */	addi r3, r1, 0x14
/* 801B30F4 001B0054  4B FF 5A 99 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801B30F8 001B0058  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801B30FC 001B005C  7F C3 F3 78 */	mr r3, r30
/* 801B3100 001B0060  38 81 00 10 */	addi r4, r1, 0x10
/* 801B3104 001B0064  B0 01 00 54 */	sth r0, 0x54(r1)
/* 801B3108 001B0068  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801B310C 001B006C  4B E9 94 99 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B3110 001B0070  7C 64 1B 78 */	mr r4, r3
/* 801B3114 001B0074  38 61 00 84 */	addi r3, r1, 0x84
/* 801B3118 001B0078  4B EF A5 F5 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801B311C 001B007C  83 63 00 04 */	lwz r27, 4(r3)
/* 801B3120 001B0080  28 1B 00 00 */	cmplwi r27, 0
/* 801B3124 001B0084  41 82 03 38 */	beq lbl_801B345C
/* 801B3128 001B0088  80 1F 07 80 */	lwz r0, 0x780(r31)
/* 801B312C 001B008C  2C 00 00 03 */	cmpwi r0, 3
/* 801B3130 001B0090  41 82 00 08 */	beq lbl_801B3138
/* 801B3134 001B0094  48 00 03 28 */	b lbl_801B345C
lbl_801B3138:
/* 801B3138 001B0098  7F E3 FB 78 */	mr r3, r31
/* 801B313C 001B009C  7F C4 F3 78 */	mr r4, r30
/* 801B3140 001B00A0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B3144 001B00A4  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B3148 001B00A8  81 8C 02 88 */	lwz r12, 0x288(r12)
/* 801B314C 001B00AC  7D 89 03 A6 */	mtctr r12
/* 801B3150 001B00B0  4E 80 04 21 */	bctrl
/* 801B3154 001B00B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B3158 001B00B8  40 82 01 90 */	bne lbl_801B32E8
/* 801B315C 001B00BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B3160 001B00C0  38 80 00 0A */	li r4, 0xa
/* 801B3164 001B00C4  4B F8 7A 51 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 801B3168 001B00C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B316C 001B00CC  41 82 01 7C */	beq lbl_801B32E8
/* 801B3170 001B00D0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B3174 001B00D4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B3178 001B00D8  7F E3 FB 78 */	mr r3, r31
/* 801B317C 001B00DC  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B3180 001B00E0  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801B3184 001B00E4  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 801B3188 001B00E8  7D 89 03 A6 */	mtctr r12
/* 801B318C 001B00EC  4E 80 04 21 */	bctrl
/* 801B3190 001B00F0  C0 3F 06 AC */	lfs f1, 0x6ac(r31)
/* 801B3194 001B00F4  C0 1B 01 34 */	lfs f0, 0x134(r27)
/* 801B3198 001B00F8  C0 5F 08 10 */	lfs f2, 0x810(r31)
/* 801B319C 001B00FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B31A0 001B0100  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B31A4 001B0104  4C 41 13 82 */	cror 2, 1, 2
/* 801B31A8 001B0108  40 82 00 6C */	bne lbl_801B3214
/* 801B31AC 001B010C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801B31B0 001B0110  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B31B4 001B0114  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801B31B8 001B0118  3C 80 80 3E */	lis r4, lbl_803DAA38@ha
/* 801B31BC 001B011C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801B31C0 001B0120  38 A4 AA 38 */	addi r5, r4, lbl_803DAA38@l
/* 801B31C4 001B0124  38 80 00 09 */	li r4, 9
/* 801B31C8 001B0128  38 00 00 01 */	li r0, 1
/* 801B31CC 001B012C  3B 63 00 04 */	addi r27, r3, 4
/* 801B31D0 001B0130  90 81 00 AC */	stw r4, 0xac(r1)
/* 801B31D4 001B0134  7F 63 DB 78 */	mr r3, r27
/* 801B31D8 001B0138  38 80 00 09 */	li r4, 9
/* 801B31DC 001B013C  90 A1 00 A8 */	stw r5, 0xa8(r1)
/* 801B31E0 001B0140  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 801B31E4 001B0144  4B F7 E2 55 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B31E8 001B0148  80 01 00 AC */	lwz r0, 0xac(r1)
/* 801B31EC 001B014C  3C 60 80 3E */	lis r3, lbl_803DAA38@ha
/* 801B31F0 001B0150  38 83 AA 38 */	addi r4, r3, lbl_803DAA38@l
/* 801B31F4 001B0154  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B31F8 001B0158  90 1B 01 64 */	stw r0, 0x164(r27)
/* 801B31FC 001B015C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B3200 001B0160  80 61 00 B0 */	lwz r3, 0xb0(r1)
/* 801B3204 001B0164  90 81 00 A8 */	stw r4, 0xa8(r1)
/* 801B3208 001B0168  90 7B 01 68 */	stw r3, 0x168(r27)
/* 801B320C 001B016C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801B3210 001B0170  48 00 02 4C */	b lbl_801B345C
lbl_801B3214:
/* 801B3214 001B0174  A0 7D 00 00 */	lhz r3, 0(r29)
/* 801B3218 001B0178  A0 1F 08 0C */	lhz r0, 0x80c(r31)
/* 801B321C 001B017C  7C 03 00 40 */	cmplw r3, r0
/* 801B3220 001B0180  40 82 02 3C */	bne lbl_801B345C
/* 801B3224 001B0184  88 7B 01 30 */	lbz r3, 0x130(r27)
/* 801B3228 001B0188  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801B322C 001B018C  40 82 00 18 */	bne lbl_801B3244
/* 801B3230 001B0190  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801B3234 001B0194  40 82 00 10 */	bne lbl_801B3244
/* 801B3238 001B0198  80 1B 01 2C */	lwz r0, 0x12c(r27)
/* 801B323C 001B019C  2C 00 00 06 */	cmpwi r0, 6
/* 801B3240 001B01A0  40 82 02 1C */	bne lbl_801B345C
lbl_801B3244:
/* 801B3244 001B01A4  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801B3248 001B01A8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B324C 001B01AC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801B3250 001B01B0  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 801B3254 001B01B4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801B3258 001B01B8  FC 40 10 50 */	fneg f2, f2
/* 801B325C 001B01BC  FC 20 08 50 */	fneg f1, f1
/* 801B3260 001B01C0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B3264 001B01C4  FC 00 00 50 */	fneg f0, f0
/* 801B3268 001B01C8  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 801B326C 001B01CC  38 C0 00 04 */	li r6, 4
/* 801B3270 001B01D0  38 00 00 01 */	li r0, 1
/* 801B3274 001B01D4  3B 63 00 04 */	addi r27, r3, 4
/* 801B3278 001B01D8  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 801B327C 001B01DC  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 801B3280 001B01E0  38 80 00 04 */	li r4, 4
/* 801B3284 001B01E4  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 801B3288 001B01E8  7F 63 DB 78 */	mr r3, r27
/* 801B328C 001B01EC  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 801B3290 001B01F0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801B3294 001B01F4  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 801B3298 001B01F8  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 801B329C 001B01FC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 801B32A0 001B0200  4B F7 E1 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B32A4 001B0204  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 801B32A8 001B0208  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801B32AC 001B020C  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801B32B0 001B0210  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B32B4 001B0214  90 1B 00 F8 */	stw r0, 0xf8(r27)
/* 801B32B8 001B0218  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B32BC 001B021C  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 801B32C0 001B0220  80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 801B32C4 001B0224  90 BB 00 FC */	stw r5, 0xfc(r27)
/* 801B32C8 001B0228  80 A1 00 D4 */	lwz r5, 0xd4(r1)
/* 801B32CC 001B022C  90 7B 01 00 */	stw r3, 0x100(r27)
/* 801B32D0 001B0230  80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 801B32D4 001B0234  90 BB 01 04 */	stw r5, 0x104(r27)
/* 801B32D8 001B0238  90 81 00 C4 */	stw r4, 0xc4(r1)
/* 801B32DC 001B023C  90 7B 01 08 */	stw r3, 0x108(r27)
/* 801B32E0 001B0240  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801B32E4 001B0244  48 00 01 78 */	b lbl_801B345C
lbl_801B32E8:
/* 801B32E8 001B0248  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B32EC 001B024C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801B32F0 001B0250  41 82 00 24 */	beq lbl_801B3314
/* 801B32F4 001B0254  81 9F 00 00 */	lwz r12, 0(r31)
/* 801B32F8 001B0258  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801B32FC 001B025C  7F E3 FB 78 */	mr r3, r31
/* 801B3300 001B0260  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B3304 001B0264  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801B3308 001B0268  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 801B330C 001B026C  7D 89 03 A6 */	mtctr r12
/* 801B3310 001B0270  4E 80 04 21 */	bctrl
lbl_801B3314:
/* 801B3314 001B0274  A0 7D 00 00 */	lhz r3, 0(r29)
/* 801B3318 001B0278  A0 1F 08 0C */	lhz r0, 0x80c(r31)
/* 801B331C 001B027C  7C 03 00 40 */	cmplw r3, r0
/* 801B3320 001B0280  40 82 01 3C */	bne lbl_801B345C
/* 801B3324 001B0284  88 7B 01 30 */	lbz r3, 0x130(r27)
/* 801B3328 001B0288  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801B332C 001B028C  40 82 00 18 */	bne lbl_801B3344
/* 801B3330 001B0290  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801B3334 001B0294  40 82 00 10 */	bne lbl_801B3344
/* 801B3338 001B0298  80 1B 01 2C */	lwz r0, 0x12c(r27)
/* 801B333C 001B029C  2C 00 00 06 */	cmpwi r0, 6
/* 801B3340 001B02A0  40 82 01 1C */	bne lbl_801B345C
lbl_801B3344:
/* 801B3344 001B02A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B3348 001B02A8  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801B334C 001B02AC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B3350 001B02B0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801B3354 001B02B4  3C 80 80 3E */	lis r4, lbl_803E10BC@ha
/* 801B3358 001B02B8  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801B335C 001B02BC  38 04 10 BC */	addi r0, r4, lbl_803E10BC@l
/* 801B3360 001B02C0  38 80 00 19 */	li r4, 0x19
/* 801B3364 001B02C4  3B 63 00 04 */	addi r27, r3, 4
/* 801B3368 001B02C8  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 801B336C 001B02CC  7F 63 DB 78 */	mr r3, r27
/* 801B3370 001B02D0  38 80 00 19 */	li r4, 0x19
/* 801B3374 001B02D4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801B3378 001B02D8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801B337C 001B02DC  4B F7 E0 BD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801B3380 001B02E0  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801B3384 001B02E4  3C 60 80 3E */	lis r3, lbl_803E10BC@ha
/* 801B3388 001B02E8  38 83 10 BC */	addi r4, r3, lbl_803E10BC@l
/* 801B338C 001B02EC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801B3390 001B02F0  90 1B 02 7C */	stw r0, 0x27c(r27)
/* 801B3394 001B02F4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801B3398 001B02F8  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801B339C 001B02FC  90 81 00 9C */	stw r4, 0x9c(r1)
/* 801B33A0 001B0300  D0 1B 02 80 */	stfs f0, 0x280(r27)
/* 801B33A4 001B0304  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801B33A8 001B0308  48 00 00 B4 */	b lbl_801B345C
.global lbl_801B33AC
lbl_801B33AC:
/* 801B33AC 001B030C  38 00 00 00 */	li r0, 0
/* 801B33B0 001B0310  90 1F 07 80 */	stw r0, 0x780(r31)
/* 801B33B4 001B0314  48 00 00 A8 */	b lbl_801B345C
.global lbl_801B33B8
lbl_801B33B8:
/* 801B33B8 001B0318  7F C4 F3 78 */	mr r4, r30
/* 801B33BC 001B031C  4B FF B5 C5 */	bl sub_801ae980
/* 801B33C0 001B0320  48 00 00 9C */	b lbl_801B345C
.global lbl_801B33C4
lbl_801B33C4:
/* 801B33C4 001B0324  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B33C8 001B0328  38 60 00 00 */	li r3, 0
/* 801B33CC 001B032C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801B33D0 001B0330  98 1F 08 E4 */	stb r0, 0x8e4(r31)
/* 801B33D4 001B0334  48 00 00 88 */	b lbl_801B345C
.global lbl_801B33D8
lbl_801B33D8:
/* 801B33D8 001B0338  88 1F 08 E4 */	lbz r0, 0x8e4(r31)
/* 801B33DC 001B033C  38 60 00 01 */	li r3, 1
/* 801B33E0 001B0340  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801B33E4 001B0344  98 1F 08 E4 */	stb r0, 0x8e4(r31)
/* 801B33E8 001B0348  48 00 00 74 */	b lbl_801B345C
.global lbl_801B33EC
lbl_801B33EC:
/* 801B33EC 001B034C  C0 02 A9 24 */	lfs f0, lbl_805AC644@sda21(r2)
/* 801B33F0 001B0350  38 60 00 01 */	li r3, 1
/* 801B33F4 001B0354  D0 1F 07 D0 */	stfs f0, 0x7d0(r31)
/* 801B33F8 001B0358  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B33FC 001B035C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801B3400 001B0360  98 1F 08 E5 */	stb r0, 0x8e5(r31)
/* 801B3404 001B0364  48 00 00 58 */	b lbl_801B345C
.global lbl_801B3408
lbl_801B3408:
/* 801B3408 001B0368  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801B340C 001B036C  7F C3 F3 78 */	mr r3, r30
/* 801B3410 001B0370  38 81 00 0C */	addi r4, r1, 0xc
/* 801B3414 001B0374  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801B3418 001B0378  4B E9 91 8D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B341C 001B037C  7C 64 1B 78 */	mr r4, r3
/* 801B3420 001B0380  38 61 00 7C */	addi r3, r1, 0x7c
/* 801B3424 001B0384  4B EF A2 E9 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801B3428 001B0388  80 03 00 04 */	lwz r0, 4(r3)
/* 801B342C 001B038C  28 00 00 00 */	cmplwi r0, 0
/* 801B3430 001B0390  41 82 00 2C */	beq lbl_801B345C
/* 801B3434 001B0394  80 1F 07 88 */	lwz r0, 0x788(r31)
/* 801B3438 001B0398  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 801B343C 001B039C  48 00 00 20 */	b lbl_801B345C
.global lbl_801B3440
lbl_801B3440:
/* 801B3440 001B03A0  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B3444 001B03A4  D0 1F 07 D4 */	stfs f0, 0x7d4(r31)
/* 801B3448 001B03A8  48 00 00 14 */	b lbl_801B345C
.global lbl_801B344C
lbl_801B344C:
/* 801B344C 001B03AC  88 1F 08 E5 */	lbz r0, 0x8e5(r31)
/* 801B3450 001B03B0  38 60 00 01 */	li r3, 1
/* 801B3454 001B03B4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801B3458 001B03B8  98 1F 08 E5 */	stb r0, 0x8e5(r31)
.global lbl_801B345C
lbl_801B345C:
/* 801B345C 001B03BC  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801B3460 001B03C0  7F E3 FB 78 */	mr r3, r31
/* 801B3464 001B03C4  7F 84 E3 78 */	mr r4, r28
/* 801B3468 001B03C8  7F C6 F3 78 */	mr r6, r30
/* 801B346C 001B03CC  B0 01 00 08 */	sth r0, 8(r1)
/* 801B3470 001B03D0  38 A1 00 08 */	addi r5, r1, 8
/* 801B3474 001B03D4  4B EC 97 05 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801B3478 001B03D8  BB 21 01 54 */	lmw r25, 0x154(r1)
/* 801B347C 001B03DC  80 01 01 74 */	lwz r0, 0x174(r1)
/* 801B3480 001B03E0  7C 08 03 A6 */	mtlr r0
/* 801B3484 001B03E4  38 21 01 70 */	addi r1, r1, 0x170
/* 801B3488 001B03E8  4E 80 00 20 */	blr

.global Accept__9CFlaahgraFR8IVisitor
Accept__9CFlaahgraFR8IVisitor:
/* 801B348C 001B03EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B3490 001B03F0  7C 08 02 A6 */	mflr r0
/* 801B3494 001B03F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3498 001B03F8  7C 60 1B 78 */	mr r0, r3
/* 801B349C 001B03FC  7C 83 23 78 */	mr r3, r4
/* 801B34A0 001B0400  81 84 00 00 */	lwz r12, 0(r4)
/* 801B34A4 001B0404  7C 04 03 78 */	mr r4, r0
/* 801B34A8 001B0408  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801B34AC 001B040C  7D 89 03 A6 */	mtctr r12
/* 801B34B0 001B0410  4E 80 04 21 */	bctrl
/* 801B34B4 001B0414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B34B8 001B0418  7C 08 03 A6 */	mtlr r0
/* 801B34BC 001B041C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B34C0 001B0420  4E 80 00 20 */	blr

.global Think__9CFlaahgraFfR13CStateManager
Think__9CFlaahgraFfR13CStateManager:
/* 801B34C4 001B0424  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B34C8 001B0428  7C 08 02 A6 */	mflr r0
/* 801B34CC 001B042C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B34D0 001B0430  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801B34D4 001B0434  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801B34D8 001B0438  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B34DC 001B043C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801B34E0 001B0440  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801B34E4 001B0444  FF E0 08 90 */	fmr f31, f1
/* 801B34E8 001B0448  7C 7E 1B 78 */	mr r30, r3
/* 801B34EC 001B044C  7C 9F 23 78 */	mr r31, r4
/* 801B34F0 001B0450  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801B34F4 001B0454  41 82 00 BC */	beq lbl_801B35B0
/* 801B34F8 001B0458  4B EC 66 21 */	bl Think__10CPatternedFfR13CStateManager
/* 801B34FC 001B045C  FC 20 F8 90 */	fmr f1, f31
/* 801B3500 001B0460  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B3504 001B0464  4B FC 24 A5 */	bl Update__13CBoneTrackingFf
/* 801B3508 001B0468  FC 20 F8 90 */	fmr f1, f31
/* 801B350C 001B046C  7F C3 F3 78 */	mr r3, r30
/* 801B3510 001B0470  7F E4 FB 78 */	mr r4, r31
/* 801B3514 001B0474  4B FF BB 41 */	bl sub_801af054
/* 801B3518 001B0478  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 801B351C 001B047C  7F E4 FB 78 */	mr r4, r31
/* 801B3520 001B0480  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 801B3524 001B0484  38 DE 00 34 */	addi r6, r30, 0x34
/* 801B3528 001B0488  C0 03 00 00 */	lfs f0, 0(r3)
/* 801B352C 001B048C  38 E1 00 08 */	addi r7, r1, 8
/* 801B3530 001B0490  D0 01 00 08 */	stfs f0, 8(r1)
/* 801B3534 001B0494  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B3538 001B0498  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801B353C 001B049C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B3540 001B04A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801B3544 001B04A4  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801B3548 001B04A8  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B354C 001B04AC  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 801B3550 001B04B0  4B FC 23 C1 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 801B3554 001B04B4  FC 20 F8 90 */	fmr f1, f31
/* 801B3558 001B04B8  7F C3 F3 78 */	mr r3, r30
/* 801B355C 001B04BC  4B FF B5 05 */	bl sub_801aea60
/* 801B3560 001B04C0  7F C3 F3 78 */	mr r3, r30
/* 801B3564 001B04C4  7F E4 FB 78 */	mr r4, r31
/* 801B3568 001B04C8  4B FF B6 95 */	bl sub_801aebfc
/* 801B356C 001B04CC  FC 20 F8 90 */	fmr f1, f31
/* 801B3570 001B04D0  7F C3 F3 78 */	mr r3, r30
/* 801B3574 001B04D4  7F E4 FB 78 */	mr r4, r31
/* 801B3578 001B04D8  4B FF AE C9 */	bl sub_801ae440
/* 801B357C 001B04DC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B3580 001B04E0  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 801B3584 001B04E4  D0 1E 01 5C */	stfs f0, 0x15c(r30)
/* 801B3588 001B04E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B358C 001B04EC  D0 1E 01 60 */	stfs f0, 0x160(r30)
/* 801B3590 001B04F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B3594 001B04F4  D0 1E 01 64 */	stfs f0, 0x164(r30)
/* 801B3598 001B04F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801B359C 001B04FC  D0 1E 01 68 */	stfs f0, 0x168(r30)
/* 801B35A0 001B0500  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B35A4 001B0504  D0 1E 01 6C */	stfs f0, 0x16c(r30)
/* 801B35A8 001B0508  C0 03 00 08 */	lfs f0, 8(r3)
/* 801B35AC 001B050C  D0 1E 01 70 */	stfs f0, 0x170(r30)
lbl_801B35B0:
/* 801B35B0 001B0510  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801B35B4 001B0514  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B35B8 001B0518  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801B35BC 001B051C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B35C0 001B0520  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801B35C4 001B0524  7C 08 03 A6 */	mtlr r0
/* 801B35C8 001B0528  38 21 00 30 */	addi r1, r1, 0x30
/* 801B35CC 001B052C  4E 80 00 20 */	blr

.global PreThink__9CFlaahgraFfR13CStateManager
PreThink__9CFlaahgraFfR13CStateManager:
/* 801B35D0 001B0530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B35D4 001B0534  7C 08 02 A6 */	mflr r0
/* 801B35D8 001B0538  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B35DC 001B053C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801B35E0 001B0540  FF E0 08 90 */	fmr f31, f1
/* 801B35E4 001B0544  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801B35E8 001B0548  7C 9F 23 78 */	mr r31, r4
/* 801B35EC 001B054C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801B35F0 001B0550  7C 7E 1B 78 */	mr r30, r3
/* 801B35F4 001B0554  88 03 08 E4 */	lbz r0, 0x8e4(r3)
/* 801B35F8 001B0558  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801B35FC 001B055C  40 82 00 08 */	bne lbl_801B3604
/* 801B3600 001B0560  4B FF A4 F9 */	bl sub_801adaf8
lbl_801B3604:
/* 801B3604 001B0564  FC 20 F8 90 */	fmr f1, f31
/* 801B3608 001B0568  7F C3 F3 78 */	mr r3, r30
/* 801B360C 001B056C  7F E4 FB 78 */	mr r4, r31
/* 801B3610 001B0570  4B EC 43 81 */	bl PreThink__10CPatternedFfR13CStateManager
/* 801B3614 001B0574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B3618 001B0578  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801B361C 001B057C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801B3620 001B0580  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801B3624 001B0584  7C 08 03 A6 */	mtlr r0
/* 801B3628 001B0588  38 21 00 20 */	addi r1, r1, 0x20
/* 801B362C 001B058C  4E 80 00 20 */	blr

.global __dt__9CFlaahgraFv
__dt__9CFlaahgraFv:
/* 801B3630 001B0590  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B3634 001B0594  7C 08 02 A6 */	mflr r0
/* 801B3638 001B0598  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B363C 001B059C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B3640 001B05A0  7C 9F 23 78 */	mr r31, r4
/* 801B3644 001B05A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B3648 001B05A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B364C 001B05AC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801B3650 001B05B0  93 81 00 20 */	stw r28, 0x20(r1)
/* 801B3654 001B05B4  41 82 03 58 */	beq lbl_801B39AC
/* 801B3658 001B05B8  3C 60 80 3E */	lis r3, lbl_803E4E88@ha
/* 801B365C 001B05BC  34 1E 08 D4 */	addic. r0, r30, 0x8d4
/* 801B3660 001B05C0  38 03 4E 88 */	addi r0, r3, lbl_803E4E88@l
/* 801B3664 001B05C4  90 1E 00 00 */	stw r0, 0(r30)
/* 801B3668 001B05C8  41 82 00 50 */	beq lbl_801B36B8
/* 801B366C 001B05CC  80 1E 08 D8 */	lwz r0, 0x8d8(r30)
/* 801B3670 001B05D0  83 9E 08 E0 */	lwz r28, 0x8e0(r30)
/* 801B3674 001B05D4  54 00 18 38 */	slwi r0, r0, 3
/* 801B3678 001B05D8  7F BC 02 14 */	add r29, r28, r0
/* 801B367C 001B05DC  93 81 00 0C */	stw r28, 0xc(r1)
/* 801B3680 001B05E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B3684 001B05E4  93 A1 00 10 */	stw r29, 0x10(r1)
/* 801B3688 001B05E8  93 81 00 08 */	stw r28, 8(r1)
/* 801B368C 001B05EC  48 00 00 14 */	b lbl_801B36A0
lbl_801B3690:
/* 801B3690 001B05F0  7F 83 E3 78 */	mr r3, r28
/* 801B3694 001B05F4  38 80 FF FF */	li r4, -1
/* 801B3698 001B05F8  48 18 D7 A9 */	bl __dt__6CTokenFv
/* 801B369C 001B05FC  3B 9C 00 08 */	addi r28, r28, 8
lbl_801B36A0:
/* 801B36A0 001B0600  7C 1C E8 40 */	cmplw r28, r29
/* 801B36A4 001B0604  40 82 FF EC */	bne lbl_801B3690
/* 801B36A8 001B0608  80 7E 08 E0 */	lwz r3, 0x8e0(r30)
/* 801B36AC 001B060C  28 03 00 00 */	cmplwi r3, 0
/* 801B36B0 001B0610  41 82 00 08 */	beq lbl_801B36B8
/* 801B36B4 001B0614  48 16 22 7D */	bl Free__7CMemoryFPCv
lbl_801B36B8:
/* 801B36B8 001B0618  34 1E 08 C8 */	addic. r0, r30, 0x8c8
/* 801B36BC 001B061C  41 82 00 24 */	beq lbl_801B36E0
/* 801B36C0 001B0620  88 1E 08 D0 */	lbz r0, 0x8d0(r30)
/* 801B36C4 001B0624  28 00 00 00 */	cmplwi r0, 0
/* 801B36C8 001B0628  41 82 00 10 */	beq lbl_801B36D8
/* 801B36CC 001B062C  38 7E 08 C8 */	addi r3, r30, 0x8c8
/* 801B36D0 001B0630  38 80 FF FF */	li r4, -1
/* 801B36D4 001B0634  48 18 D7 6D */	bl __dt__6CTokenFv
lbl_801B36D8:
/* 801B36D8 001B0638  38 00 00 00 */	li r0, 0
/* 801B36DC 001B063C  98 1E 08 D0 */	stb r0, 0x8d0(r30)
lbl_801B36E0:
/* 801B36E0 001B0640  34 1E 08 60 */	addic. r0, r30, 0x860
/* 801B36E4 001B0644  41 82 00 58 */	beq lbl_801B373C
/* 801B36E8 001B0648  80 BE 08 60 */	lwz r5, 0x860(r30)
/* 801B36EC 001B064C  38 60 00 00 */	li r3, 0
/* 801B36F0 001B0650  2C 05 00 00 */	cmpwi r5, 0
/* 801B36F4 001B0654  40 81 00 40 */	ble lbl_801B3734
/* 801B36F8 001B0658  2C 05 00 08 */	cmpwi r5, 8
/* 801B36FC 001B065C  38 85 FF F8 */	addi r4, r5, -8
/* 801B3700 001B0660  40 81 00 20 */	ble lbl_801B3720
/* 801B3704 001B0664  38 04 00 07 */	addi r0, r4, 7
/* 801B3708 001B0668  54 00 E8 FE */	srwi r0, r0, 3
/* 801B370C 001B066C  7C 09 03 A6 */	mtctr r0
/* 801B3710 001B0670  2C 04 00 00 */	cmpwi r4, 0
/* 801B3714 001B0674  40 81 00 0C */	ble lbl_801B3720
lbl_801B3718:
/* 801B3718 001B0678  38 63 00 08 */	addi r3, r3, 8
/* 801B371C 001B067C  42 00 FF FC */	bdnz lbl_801B3718
lbl_801B3720:
/* 801B3720 001B0680  7C 03 28 50 */	subf r0, r3, r5
/* 801B3724 001B0684  7C 09 03 A6 */	mtctr r0
/* 801B3728 001B0688  7C 03 28 00 */	cmpw r3, r5
/* 801B372C 001B068C  40 80 00 08 */	bge lbl_801B3734
lbl_801B3730:
/* 801B3730 001B0690  42 00 00 00 */	bdnz lbl_801B3730
lbl_801B3734:
/* 801B3734 001B0694  38 00 00 00 */	li r0, 0
/* 801B3738 001B0698  90 1E 08 60 */	stw r0, 0x860(r30)
lbl_801B373C:
/* 801B373C 001B069C  34 1E 08 2C */	addic. r0, r30, 0x82c
/* 801B3740 001B06A0  41 82 00 58 */	beq lbl_801B3798
/* 801B3744 001B06A4  80 BE 08 2C */	lwz r5, 0x82c(r30)
/* 801B3748 001B06A8  38 60 00 00 */	li r3, 0
/* 801B374C 001B06AC  2C 05 00 00 */	cmpwi r5, 0
/* 801B3750 001B06B0  40 81 00 40 */	ble lbl_801B3790
/* 801B3754 001B06B4  2C 05 00 08 */	cmpwi r5, 8
/* 801B3758 001B06B8  38 85 FF F8 */	addi r4, r5, -8
/* 801B375C 001B06BC  40 81 00 20 */	ble lbl_801B377C
/* 801B3760 001B06C0  38 04 00 07 */	addi r0, r4, 7
/* 801B3764 001B06C4  54 00 E8 FE */	srwi r0, r0, 3
/* 801B3768 001B06C8  7C 09 03 A6 */	mtctr r0
/* 801B376C 001B06CC  2C 04 00 00 */	cmpwi r4, 0
/* 801B3770 001B06D0  40 81 00 0C */	ble lbl_801B377C
lbl_801B3774:
/* 801B3774 001B06D4  38 63 00 08 */	addi r3, r3, 8
/* 801B3778 001B06D8  42 00 FF FC */	bdnz lbl_801B3774
lbl_801B377C:
/* 801B377C 001B06DC  7C 03 28 50 */	subf r0, r3, r5
/* 801B3780 001B06E0  7C 09 03 A6 */	mtctr r0
/* 801B3784 001B06E4  7C 03 28 00 */	cmpw r3, r5
/* 801B3788 001B06E8  40 80 00 08 */	bge lbl_801B3790
lbl_801B378C:
/* 801B378C 001B06EC  42 00 00 00 */	bdnz lbl_801B378C
lbl_801B3790:
/* 801B3790 001B06F0  38 00 00 00 */	li r0, 0
/* 801B3794 001B06F4  90 1E 08 2C */	stw r0, 0x82c(r30)
lbl_801B3798:
/* 801B3798 001B06F8  34 1E 07 FC */	addic. r0, r30, 0x7fc
/* 801B379C 001B06FC  41 82 00 58 */	beq lbl_801B37F4
/* 801B37A0 001B0700  80 BE 07 FC */	lwz r5, 0x7fc(r30)
/* 801B37A4 001B0704  38 60 00 00 */	li r3, 0
/* 801B37A8 001B0708  2C 05 00 00 */	cmpwi r5, 0
/* 801B37AC 001B070C  40 81 00 40 */	ble lbl_801B37EC
/* 801B37B0 001B0710  2C 05 00 08 */	cmpwi r5, 8
/* 801B37B4 001B0714  38 85 FF F8 */	addi r4, r5, -8
/* 801B37B8 001B0718  40 81 00 20 */	ble lbl_801B37D8
/* 801B37BC 001B071C  38 04 00 07 */	addi r0, r4, 7
/* 801B37C0 001B0720  54 00 E8 FE */	srwi r0, r0, 3
/* 801B37C4 001B0724  7C 09 03 A6 */	mtctr r0
/* 801B37C8 001B0728  2C 04 00 00 */	cmpwi r4, 0
/* 801B37CC 001B072C  40 81 00 0C */	ble lbl_801B37D8
lbl_801B37D0:
/* 801B37D0 001B0730  38 63 00 08 */	addi r3, r3, 8
/* 801B37D4 001B0734  42 00 FF FC */	bdnz lbl_801B37D0
lbl_801B37D8:
/* 801B37D8 001B0738  7C 03 28 50 */	subf r0, r3, r5
/* 801B37DC 001B073C  7C 09 03 A6 */	mtctr r0
/* 801B37E0 001B0740  7C 03 28 00 */	cmpw r3, r5
/* 801B37E4 001B0744  40 80 00 08 */	bge lbl_801B37EC
lbl_801B37E8:
/* 801B37E8 001B0748  42 00 00 00 */	bdnz lbl_801B37E8
lbl_801B37EC:
/* 801B37EC 001B074C  38 00 00 00 */	li r0, 0
/* 801B37F0 001B0750  90 1E 07 FC */	stw r0, 0x7fc(r30)
lbl_801B37F4:
/* 801B37F4 001B0754  34 1E 07 A4 */	addic. r0, r30, 0x7a4
/* 801B37F8 001B0758  41 82 00 10 */	beq lbl_801B3808
/* 801B37FC 001B075C  80 7E 07 A4 */	lwz r3, 0x7a4(r30)
/* 801B3800 001B0760  38 80 00 01 */	li r4, 1
/* 801B3804 001B0764  4B FF 40 D9 */	bl sub_801a78dc
lbl_801B3808:
/* 801B3808 001B0768  34 1E 07 A0 */	addic. r0, r30, 0x7a0
/* 801B380C 001B076C  41 82 00 10 */	beq lbl_801B381C
/* 801B3810 001B0770  80 7E 07 A0 */	lwz r3, 0x7a0(r30)
/* 801B3814 001B0774  38 80 00 01 */	li r4, 1
/* 801B3818 001B0778  4B FF 40 C5 */	bl sub_801a78dc
lbl_801B381C:
/* 801B381C 001B077C  34 1E 07 9C */	addic. r0, r30, 0x79c
/* 801B3820 001B0780  41 82 00 10 */	beq lbl_801B3830
/* 801B3824 001B0784  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 801B3828 001B0788  38 80 00 01 */	li r4, 1
/* 801B382C 001B078C  4B FF 40 B1 */	bl sub_801a78dc
lbl_801B3830:
/* 801B3830 001B0790  34 1E 07 70 */	addic. r0, r30, 0x770
/* 801B3834 001B0794  41 82 00 58 */	beq lbl_801B388C
/* 801B3838 001B0798  80 BE 07 70 */	lwz r5, 0x770(r30)
/* 801B383C 001B079C  38 60 00 00 */	li r3, 0
/* 801B3840 001B07A0  2C 05 00 00 */	cmpwi r5, 0
/* 801B3844 001B07A4  40 81 00 40 */	ble lbl_801B3884
/* 801B3848 001B07A8  2C 05 00 08 */	cmpwi r5, 8
/* 801B384C 001B07AC  38 85 FF F8 */	addi r4, r5, -8
/* 801B3850 001B07B0  40 81 00 20 */	ble lbl_801B3870
/* 801B3854 001B07B4  38 04 00 07 */	addi r0, r4, 7
/* 801B3858 001B07B8  54 00 E8 FE */	srwi r0, r0, 3
/* 801B385C 001B07BC  7C 09 03 A6 */	mtctr r0
/* 801B3860 001B07C0  2C 04 00 00 */	cmpwi r4, 0
/* 801B3864 001B07C4  40 81 00 0C */	ble lbl_801B3870
lbl_801B3868:
/* 801B3868 001B07C8  38 63 00 08 */	addi r3, r3, 8
/* 801B386C 001B07CC  42 00 FF FC */	bdnz lbl_801B3868
lbl_801B3870:
/* 801B3870 001B07D0  7C 03 28 50 */	subf r0, r3, r5
/* 801B3874 001B07D4  7C 09 03 A6 */	mtctr r0
/* 801B3878 001B07D8  7C 03 28 00 */	cmpw r3, r5
/* 801B387C 001B07DC  40 80 00 08 */	bge lbl_801B3884
lbl_801B3880:
/* 801B3880 001B07E0  42 00 00 00 */	bdnz lbl_801B3880
lbl_801B3884:
/* 801B3884 001B07E4  38 00 00 00 */	li r0, 0
/* 801B3888 001B07E8  90 1E 07 70 */	stw r0, 0x770(r30)
lbl_801B388C:
/* 801B388C 001B07EC  34 1E 07 30 */	addic. r0, r30, 0x730
/* 801B3890 001B07F0  41 82 00 58 */	beq lbl_801B38E8
/* 801B3894 001B07F4  80 BE 07 30 */	lwz r5, 0x730(r30)
/* 801B3898 001B07F8  38 60 00 00 */	li r3, 0
/* 801B389C 001B07FC  2C 05 00 00 */	cmpwi r5, 0
/* 801B38A0 001B0800  40 81 00 40 */	ble lbl_801B38E0
/* 801B38A4 001B0804  2C 05 00 08 */	cmpwi r5, 8
/* 801B38A8 001B0808  38 85 FF F8 */	addi r4, r5, -8
/* 801B38AC 001B080C  40 81 00 20 */	ble lbl_801B38CC
/* 801B38B0 001B0810  38 04 00 07 */	addi r0, r4, 7
/* 801B38B4 001B0814  54 00 E8 FE */	srwi r0, r0, 3
/* 801B38B8 001B0818  7C 09 03 A6 */	mtctr r0
/* 801B38BC 001B081C  2C 04 00 00 */	cmpwi r4, 0
/* 801B38C0 001B0820  40 81 00 0C */	ble lbl_801B38CC
lbl_801B38C4:
/* 801B38C4 001B0824  38 63 00 08 */	addi r3, r3, 8
/* 801B38C8 001B0828  42 00 FF FC */	bdnz lbl_801B38C4
lbl_801B38CC:
/* 801B38CC 001B082C  7C 03 28 50 */	subf r0, r3, r5
/* 801B38D0 001B0830  7C 09 03 A6 */	mtctr r0
/* 801B38D4 001B0834  7C 03 28 00 */	cmpw r3, r5
/* 801B38D8 001B0838  40 80 00 08 */	bge lbl_801B38E0
lbl_801B38DC:
/* 801B38DC 001B083C  42 00 00 00 */	bdnz lbl_801B38DC
lbl_801B38E0:
/* 801B38E0 001B0840  38 00 00 00 */	li r0, 0
/* 801B38E4 001B0844  90 1E 07 30 */	stw r0, 0x730(r30)
lbl_801B38E8:
/* 801B38E8 001B0848  34 1E 07 04 */	addic. r0, r30, 0x704
/* 801B38EC 001B084C  41 82 00 20 */	beq lbl_801B390C
/* 801B38F0 001B0850  34 1E 07 04 */	addic. r0, r30, 0x704
/* 801B38F4 001B0854  41 82 00 18 */	beq lbl_801B390C
/* 801B38F8 001B0858  34 1E 07 04 */	addic. r0, r30, 0x704
/* 801B38FC 001B085C  41 82 00 10 */	beq lbl_801B390C
/* 801B3900 001B0860  38 7E 07 04 */	addi r3, r30, 0x704
/* 801B3904 001B0864  38 80 00 00 */	li r4, 0
/* 801B3908 001B0868  48 18 D5 39 */	bl __dt__6CTokenFv
lbl_801B390C:
/* 801B390C 001B086C  34 1E 06 DC */	addic. r0, r30, 0x6dc
/* 801B3910 001B0870  41 82 00 20 */	beq lbl_801B3930
/* 801B3914 001B0874  34 1E 06 DC */	addic. r0, r30, 0x6dc
/* 801B3918 001B0878  41 82 00 18 */	beq lbl_801B3930
/* 801B391C 001B087C  34 1E 06 DC */	addic. r0, r30, 0x6dc
/* 801B3920 001B0880  41 82 00 10 */	beq lbl_801B3930
/* 801B3924 001B0884  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 801B3928 001B0888  38 80 00 00 */	li r4, 0
/* 801B392C 001B088C  48 18 D5 15 */	bl __dt__6CTokenFv
lbl_801B3930:
/* 801B3930 001B0890  34 1E 06 D4 */	addic. r0, r30, 0x6d4
/* 801B3934 001B0894  41 82 00 10 */	beq lbl_801B3944
/* 801B3938 001B0898  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 801B393C 001B089C  38 80 00 00 */	li r4, 0
/* 801B3940 001B08A0  48 18 D5 01 */	bl __dt__6CTokenFv
lbl_801B3944:
/* 801B3944 001B08A4  34 1E 06 C8 */	addic. r0, r30, 0x6c8
/* 801B3948 001B08A8  41 82 00 30 */	beq lbl_801B3978
/* 801B394C 001B08AC  88 1E 06 C8 */	lbz r0, 0x6c8(r30)
/* 801B3950 001B08B0  28 00 00 00 */	cmplwi r0, 0
/* 801B3954 001B08B4  41 82 00 24 */	beq lbl_801B3978
/* 801B3958 001B08B8  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801B395C 001B08BC  28 03 00 00 */	cmplwi r3, 0
/* 801B3960 001B08C0  41 82 00 18 */	beq lbl_801B3978
/* 801B3964 001B08C4  34 03 00 24 */	addic. r0, r3, 0x24
/* 801B3968 001B08C8  41 82 00 0C */	beq lbl_801B3974
/* 801B396C 001B08CC  38 00 00 00 */	li r0, 0
/* 801B3970 001B08D0  98 03 00 30 */	stb r0, 0x30(r3)
lbl_801B3974:
/* 801B3974 001B08D4  48 16 1F BD */	bl Free__7CMemoryFPCv
lbl_801B3978:
/* 801B3978 001B08D8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 801B397C 001B08DC  41 82 00 14 */	beq lbl_801B3990
/* 801B3980 001B08E0  34 7E 06 44 */	addic. r3, r30, 0x644
/* 801B3984 001B08E4  41 82 00 0C */	beq lbl_801B3990
/* 801B3988 001B08E8  38 80 FF FF */	li r4, -1
/* 801B398C 001B08EC  4B F5 2C 7D */	bl __dt__16CLightParametersFv
lbl_801B3990:
/* 801B3990 001B08F0  7F C3 F3 78 */	mr r3, r30
/* 801B3994 001B08F4  38 80 00 00 */	li r4, 0
/* 801B3998 001B08F8  4B EC 3B D9 */	bl __dt__10CPatternedFv
/* 801B399C 001B08FC  7F E0 07 35 */	extsh. r0, r31
/* 801B39A0 001B0900  40 81 00 0C */	ble lbl_801B39AC
/* 801B39A4 001B0904  7F C3 F3 78 */	mr r3, r30
/* 801B39A8 001B0908  48 16 1F 89 */	bl Free__7CMemoryFPCv
lbl_801B39AC:
/* 801B39AC 001B090C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B39B0 001B0910  7F C3 F3 78 */	mr r3, r30
/* 801B39B4 001B0914  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B39B8 001B0918  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B39BC 001B091C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801B39C0 001B0920  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801B39C4 001B0924  7C 08 03 A6 */	mtlr r0
/* 801B39C8 001B0928  38 21 00 30 */	addi r1, r1, 0x30
/* 801B39CC 001B092C  4E 80 00 20 */	blr

.global "__ct__9CFlaahgraF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC13CFlaahgraData"
"__ct__9CFlaahgraF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC13CFlaahgraData":
/* 801B39D0 001B0930  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 801B39D4 001B0934  7C 08 02 A6 */	mflr r0
/* 801B39D8 001B0938  90 01 01 74 */	stw r0, 0x174(r1)
/* 801B39DC 001B093C  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 801B39E0 001B0940  F3 E1 01 68 */	psq_st f31, 360(r1), 0, qr0
/* 801B39E4 001B0944  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 801B39E8 001B0948  F3 C1 01 58 */	psq_st f30, 344(r1), 0, qr0
/* 801B39EC 001B094C  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 801B39F0 001B0950  F3 A1 01 48 */	psq_st f29, 328(r1), 0, qr0
/* 801B39F4 001B0954  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 801B39F8 001B0958  F3 81 01 38 */	psq_st f28, 312(r1), 0, qr0
/* 801B39FC 001B095C  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 801B3A00 001B0960  F3 61 01 28 */	psq_st f27, 296(r1), 0, qr0
/* 801B3A04 001B0964  DB 41 01 10 */	stfd f26, 0x110(r1)
/* 801B3A08 001B0968  F3 41 01 18 */	psq_st f26, 280(r1), 0, qr0
/* 801B3A0C 001B096C  DB 21 01 00 */	stfd f25, 0x100(r1)
/* 801B3A10 001B0970  F3 21 01 08 */	psq_st f25, 264(r1), 0, qr0
/* 801B3A14 001B0974  BE E1 00 DC */	stmw r23, 0xdc(r1)
/* 801B3A18 001B0978  83 61 01 78 */	lwz r27, 0x178(r1)
/* 801B3A1C 001B097C  7C 7C 1B 78 */	mr r28, r3
/* 801B3A20 001B0980  7C 97 23 78 */	mr r23, r4
/* 801B3A24 001B0984  7C B8 2B 78 */	mr r24, r5
/* 801B3A28 001B0988  7C D9 33 78 */	mr r25, r6
/* 801B3A2C 001B098C  7C FD 3B 78 */	mr r29, r7
/* 801B3A30 001B0990  7D 1E 43 78 */	mr r30, r8
/* 801B3A34 001B0994  7D 3A 4B 78 */	mr r26, r9
/* 801B3A38 001B0998  7D 5F 53 78 */	mr r31, r10
/* 801B3A3C 001B099C  38 61 00 88 */	addi r3, r1, 0x88
/* 801B3A40 001B09A0  4B E8 6D 65 */	bl CModelDataNull__10CModelDataFv
/* 801B3A44 001B09A4  A0 97 00 00 */	lhz r4, 0(r23)
/* 801B3A48 001B09A8  39 60 00 01 */	li r11, 1
/* 801B3A4C 001B09AC  38 00 00 02 */	li r0, 2
/* 801B3A50 001B09B0  7F 83 E3 78 */	mr r3, r28
/* 801B3A54 001B09B4  B0 81 00 20 */	sth r4, 0x20(r1)
/* 801B3A58 001B09B8  7F 06 C3 78 */	mr r6, r24
/* 801B3A5C 001B09BC  7F 28 CB 78 */	mr r8, r25
/* 801B3A60 001B09C0  7F A9 EB 78 */	mr r9, r29
/* 801B3A64 001B09C4  93 41 00 08 */	stw r26, 8(r1)
/* 801B3A68 001B09C8  38 A1 00 20 */	addi r5, r1, 0x20
/* 801B3A6C 001B09CC  39 41 00 88 */	addi r10, r1, 0x88
/* 801B3A70 001B09D0  38 80 00 0B */	li r4, 0xb
/* 801B3A74 001B09D4  91 61 00 0C */	stw r11, 0xc(r1)
/* 801B3A78 001B09D8  38 E0 00 00 */	li r7, 0
/* 801B3A7C 001B09DC  91 61 00 10 */	stw r11, 0x10(r1)
/* 801B3A80 001B09E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3A84 001B09E4  93 E1 00 18 */	stw r31, 0x18(r1)
/* 801B3A88 001B09E8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B3A8C 001B09EC  4B EC 99 C5 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801B3A90 001B09F0  38 61 00 88 */	addi r3, r1, 0x88
/* 801B3A94 001B09F4  38 80 FF FF */	li r4, -1
/* 801B3A98 001B09F8  4B F6 2F B5 */	bl __dt__10CModelDataFv
/* 801B3A9C 001B09FC  3C 60 80 3E */	lis r3, lbl_803E4E88@ha
/* 801B3AA0 001B0A00  38 00 FF FF */	li r0, -1
/* 801B3AA4 001B0A04  38 63 4E 88 */	addi r3, r3, lbl_803E4E88@l
/* 801B3AA8 001B0A08  7F 64 DB 78 */	mr r4, r27
/* 801B3AAC 001B0A0C  90 7C 00 00 */	stw r3, 0(r28)
/* 801B3AB0 001B0A10  38 7C 05 6C */	addi r3, r28, 0x56c
/* 801B3AB4 001B0A14  90 1C 05 68 */	stw r0, 0x568(r28)
/* 801B3AB8 001B0A18  48 00 04 F5 */	bl __ct__13CFlaahgraDataFRC13CFlaahgraData
/* 801B3ABC 001B0A1C  38 80 00 00 */	li r4, 0
/* 801B3AC0 001B0A20  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801B3AC4 001B0A24  98 9C 06 C8 */	stb r4, 0x6c8(r28)
/* 801B3AC8 001B0A28  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801B3ACC 001B0A2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801B3AD0 001B0A30  38 A1 00 34 */	addi r5, r1, 0x34
/* 801B3AD4 001B0A34  90 9C 06 CC */	stw r4, 0x6cc(r28)
/* 801B3AD8 001B0A38  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801B3ADC 001B0A3C  B0 9C 06 D0 */	sth r4, 0x6d0(r28)
/* 801B3AE0 001B0A40  80 DB 00 B8 */	lwz r6, 0xb8(r27)
/* 801B3AE4 001B0A44  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801B3AE8 001B0A48  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B3AEC 001B0A4C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 801B3AF0 001B0A50  81 84 00 00 */	lwz r12, 0(r4)
/* 801B3AF4 001B0A54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801B3AF8 001B0A58  7D 89 03 A6 */	mtctr r12
/* 801B3AFC 001B0A5C  4E 80 04 21 */	bctrl
/* 801B3B00 001B0A60  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 801B3B04 001B0A64  38 81 00 2C */	addi r4, r1, 0x2c
/* 801B3B08 001B0A68  48 18 D3 A1 */	bl __ct__6CTokenFRC6CToken
/* 801B3B0C 001B0A6C  38 61 00 2C */	addi r3, r1, 0x2c
/* 801B3B10 001B0A70  38 80 FF FF */	li r4, -1
/* 801B3B14 001B0A74  48 18 D3 2D */	bl __dt__6CTokenFv
/* 801B3B18 001B0A78  80 9B 00 78 */	lwz r4, 0x78(r27)
/* 801B3B1C 001B0A7C  38 7C 06 DC */	addi r3, r28, 0x6dc
/* 801B3B20 001B0A80  38 BB 00 7C */	addi r5, r27, 0x7c
/* 801B3B24 001B0A84  48 06 85 85 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 801B3B28 001B0A88  80 9B 00 98 */	lwz r4, 0x98(r27)
/* 801B3B2C 001B0A8C  38 7C 07 04 */	addi r3, r28, 0x704
/* 801B3B30 001B0A90  38 BB 00 9C */	addi r5, r27, 0x9c
/* 801B3B34 001B0A94  48 06 85 75 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 801B3B38 001B0A98  38 E0 FF FF */	li r7, -1
/* 801B3B3C 001B0A9C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B3B40 001B0AA0  90 FC 07 2C */	stw r7, 0x72c(r28)
/* 801B3B44 001B0AA4  38 C0 00 00 */	li r6, 0
/* 801B3B48 001B0AA8  38 00 00 01 */	li r0, 1
/* 801B3B4C 001B0AAC  3B 63 66 A0 */	addi r27, r3, sZeroVector__9CVector3f@l
/* 801B3B50 001B0AB0  90 DC 07 30 */	stw r6, 0x730(r28)
/* 801B3B54 001B0AB4  7F 84 E3 78 */	mr r4, r28
/* 801B3B58 001B0AB8  C0 22 A8 BC */	lfs f1, lbl_805AC5DC@sda21(r2)
/* 801B3B5C 001B0ABC  38 61 00 6C */	addi r3, r1, 0x6c
/* 801B3B60 001B0AC0  90 DC 07 70 */	stw r6, 0x770(r28)
/* 801B3B64 001B0AC4  C0 02 A9 28 */	lfs f0, lbl_805AC648@sda21(r2)
/* 801B3B68 001B0AC8  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 801B3B6C 001B0ACC  B0 BC 07 7C */	sth r5, 0x77c(r28)
/* 801B3B70 001B0AD0  90 1C 07 80 */	stw r0, 0x780(r28)
/* 801B3B74 001B0AD4  90 1C 07 84 */	stw r0, 0x784(r28)
/* 801B3B78 001B0AD8  90 DC 07 88 */	stw r6, 0x788(r28)
/* 801B3B7C 001B0ADC  C0 5B 00 00 */	lfs f2, 0(r27)
/* 801B3B80 001B0AE0  D0 5C 07 8C */	stfs f2, 0x78c(r28)
/* 801B3B84 001B0AE4  C0 5B 00 04 */	lfs f2, 4(r27)
/* 801B3B88 001B0AE8  D0 5C 07 90 */	stfs f2, 0x790(r28)
/* 801B3B8C 001B0AEC  C0 5B 00 08 */	lfs f2, 8(r27)
/* 801B3B90 001B0AF0  D0 5C 07 94 */	stfs f2, 0x794(r28)
/* 801B3B94 001B0AF4  90 FC 07 98 */	stw r7, 0x798(r28)
/* 801B3B98 001B0AF8  90 DC 07 9C */	stw r6, 0x79c(r28)
/* 801B3B9C 001B0AFC  90 DC 07 A0 */	stw r6, 0x7a0(r28)
/* 801B3BA0 001B0B00  90 DC 07 A4 */	stw r6, 0x7a4(r28)
/* 801B3BA4 001B0B04  90 FC 07 A8 */	stw r7, 0x7a8(r28)
/* 801B3BA8 001B0B08  90 1C 07 AC */	stw r0, 0x7ac(r28)
/* 801B3BAC 001B0B0C  90 1C 07 B0 */	stw r0, 0x7b0(r28)
/* 801B3BB0 001B0B10  90 FC 07 B4 */	stw r7, 0x7b4(r28)
/* 801B3BB4 001B0B14  D0 3C 07 B8 */	stfs f1, 0x7b8(r28)
/* 801B3BB8 001B0B18  D0 3C 07 BC */	stfs f1, 0x7bc(r28)
/* 801B3BBC 001B0B1C  D0 3C 07 C0 */	stfs f1, 0x7c0(r28)
/* 801B3BC0 001B0B20  D0 3C 07 C4 */	stfs f1, 0x7c4(r28)
/* 801B3BC4 001B0B24  D0 1C 07 C8 */	stfs f0, 0x7c8(r28)
/* 801B3BC8 001B0B28  D0 3C 07 CC */	stfs f1, 0x7cc(r28)
/* 801B3BCC 001B0B2C  D0 3C 07 D0 */	stfs f1, 0x7d0(r28)
/* 801B3BD0 001B0B30  D0 3C 07 D4 */	stfs f1, 0x7d4(r28)
/* 801B3BD4 001B0B34  D0 3C 07 D8 */	stfs f1, 0x7d8(r28)
/* 801B3BD8 001B0B38  81 9C 00 00 */	lwz r12, 0(r28)
/* 801B3BDC 001B0B3C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801B3BE0 001B0B40  7D 89 03 A6 */	mtctr r12
/* 801B3BE4 001B0B44  4E 80 04 21 */	bctrl
/* 801B3BE8 001B0B48  80 81 00 6C */	lwz r4, 0x6c(r1)
/* 801B3BEC 001B0B4C  38 00 00 00 */	li r0, 0
/* 801B3BF0 001B0B50  C0 02 A8 BC */	lfs f0, lbl_805AC5DC@sda21(r2)
/* 801B3BF4 001B0B54  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 801B3BF8 001B0B58  90 9C 07 DC */	stw r4, 0x7dc(r28)
/* 801B3BFC 001B0B5C  88 81 00 70 */	lbz r4, 0x70(r1)
/* 801B3C00 001B0B60  98 9C 07 E0 */	stb r4, 0x7e0(r28)
/* 801B3C04 001B0B64  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801B3C08 001B0B68  D0 3C 07 E4 */	stfs f1, 0x7e4(r28)
/* 801B3C0C 001B0B6C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801B3C10 001B0B70  D0 3C 07 E8 */	stfs f1, 0x7e8(r28)
/* 801B3C14 001B0B74  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801B3C18 001B0B78  D0 3C 07 EC */	stfs f1, 0x7ec(r28)
/* 801B3C1C 001B0B7C  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 801B3C20 001B0B80  D0 3C 07 F0 */	stfs f1, 0x7f0(r28)
/* 801B3C24 001B0B84  88 81 00 84 */	lbz r4, 0x84(r1)
/* 801B3C28 001B0B88  98 9C 07 F4 */	stb r4, 0x7f4(r28)
/* 801B3C2C 001B0B8C  90 1C 07 F8 */	stw r0, 0x7f8(r28)
/* 801B3C30 001B0B90  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 801B3C34 001B0B94  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801B3C38 001B0B98  B0 9C 08 0C */	sth r4, 0x80c(r28)
/* 801B3C3C 001B0B9C  D0 1C 08 10 */	stfs f0, 0x810(r28)
/* 801B3C40 001B0BA0  D0 1C 08 14 */	stfs f0, 0x814(r28)
/* 801B3C44 001B0BA4  D0 1C 08 18 */	stfs f0, 0x818(r28)
/* 801B3C48 001B0BA8  C0 5D 00 2C */	lfs f2, 0x2c(r29)
/* 801B3C4C 001B0BAC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 801B3C50 001B0BB0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 801B3C54 001B0BB4  D0 1C 08 20 */	stfs f0, 0x820(r28)
/* 801B3C58 001B0BB8  D0 3C 08 24 */	stfs f1, 0x824(r28)
/* 801B3C5C 001B0BBC  D0 5C 08 28 */	stfs f2, 0x828(r28)
/* 801B3C60 001B0BC0  90 1C 08 2C */	stw r0, 0x82c(r28)
/* 801B3C64 001B0BC4  90 1C 08 60 */	stw r0, 0x860(r28)
/* 801B3C68 001B0BC8  C0 03 66 A0 */	lfs f0, sZeroVector__9CVector3f@l(r3)
/* 801B3C6C 001B0BCC  D0 1C 08 94 */	stfs f0, 0x894(r28)
/* 801B3C70 001B0BD0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 801B3C74 001B0BD4  D0 1C 08 98 */	stfs f0, 0x898(r28)
/* 801B3C78 001B0BD8  C0 1B 00 08 */	lfs f0, 8(r27)
/* 801B3C7C 001B0BDC  D0 1C 08 9C */	stfs f0, 0x89c(r28)
/* 801B3C80 001B0BE0  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 801B3C84 001B0BE4  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 801B3C88 001B0BE8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801B3C8C 001B0BEC  D0 1C 08 A0 */	stfs f0, 0x8a0(r28)
/* 801B3C90 001B0BF0  D0 3C 08 A4 */	stfs f1, 0x8a4(r28)
/* 801B3C94 001B0BF4  D0 5C 08 A8 */	stfs f2, 0x8a8(r28)
/* 801B3C98 001B0BF8  80 7E 00 00 */	lwz r3, 0(r30)
/* 801B3C9C 001B0BFC  90 7C 08 AC */	stw r3, 0x8ac(r28)
/* 801B3CA0 001B0C00  80 7E 00 04 */	lwz r3, 4(r30)
/* 801B3CA4 001B0C04  90 7C 08 B0 */	stw r3, 0x8b0(r28)
/* 801B3CA8 001B0C08  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801B3CAC 001B0C0C  D0 1C 08 B4 */	stfs f0, 0x8b4(r28)
/* 801B3CB0 001B0C10  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 801B3CB4 001B0C14  D0 1C 08 B8 */	stfs f0, 0x8b8(r28)
/* 801B3CB8 001B0C18  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 801B3CBC 001B0C1C  D0 1C 08 BC */	stfs f0, 0x8bc(r28)
/* 801B3CC0 001B0C20  88 7E 00 14 */	lbz r3, 0x14(r30)
/* 801B3CC4 001B0C24  98 7C 08 C0 */	stb r3, 0x8c0(r28)
/* 801B3CC8 001B0C28  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B3CCC 001B0C2C  90 7C 08 C4 */	stw r3, 0x8c4(r28)
/* 801B3CD0 001B0C30  98 1C 08 D0 */	stb r0, 0x8d0(r28)
/* 801B3CD4 001B0C34  90 1C 08 D8 */	stw r0, 0x8d8(r28)
/* 801B3CD8 001B0C38  90 1C 08 DC */	stw r0, 0x8dc(r28)
/* 801B3CDC 001B0C3C  90 1C 08 E0 */	stw r0, 0x8e0(r28)
/* 801B3CE0 001B0C40  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3CE4 001B0C44  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 801B3CE8 001B0C48  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3CEC 001B0C4C  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3CF0 001B0C50  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 801B3CF4 001B0C54  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3CF8 001B0C58  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3CFC 001B0C5C  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 801B3D00 001B0C60  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D04 001B0C64  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3D08 001B0C68  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 801B3D0C 001B0C6C  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D10 001B0C70  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3D14 001B0C74  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 801B3D18 001B0C78  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D1C 001B0C7C  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3D20 001B0C80  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 801B3D24 001B0C84  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D28 001B0C88  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3D2C 001B0C8C  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 801B3D30 001B0C90  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D34 001B0C94  88 7C 08 E4 */	lbz r3, 0x8e4(r28)
/* 801B3D38 001B0C98  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 801B3D3C 001B0C9C  98 7C 08 E4 */	stb r3, 0x8e4(r28)
/* 801B3D40 001B0CA0  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D44 001B0CA4  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 801B3D48 001B0CA8  38 A0 00 01 */	li r5, 1
/* 801B3D4C 001B0CAC  38 7C 06 DC */	addi r3, r28, 0x6dc
/* 801B3D50 001B0CB0  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D54 001B0CB4  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D58 001B0CB8  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 801B3D5C 001B0CBC  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D60 001B0CC0  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D64 001B0CC4  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 801B3D68 001B0CC8  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D6C 001B0CCC  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D70 001B0CD0  50 04 1F 38 */	rlwimi r4, r0, 3, 0x1c, 0x1c
/* 801B3D74 001B0CD4  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D78 001B0CD8  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D7C 001B0CDC  50 A4 17 7A */	rlwimi r4, r5, 2, 0x1d, 0x1d
/* 801B3D80 001B0CE0  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D84 001B0CE4  88 9C 08 E5 */	lbz r4, 0x8e5(r28)
/* 801B3D88 001B0CE8  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 801B3D8C 001B0CEC  98 9C 08 E5 */	stb r4, 0x8e5(r28)
/* 801B3D90 001B0CF0  88 9C 00 E7 */	lbz r4, 0xe7(r28)
/* 801B3D94 001B0CF4  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 801B3D98 001B0CF8  98 9C 00 E7 */	stb r4, 0xe7(r28)
/* 801B3D9C 001B0CFC  48 18 CF E9 */	bl Lock__6CTokenFv
/* 801B3DA0 001B0D00  38 7C 07 04 */	addi r3, r28, 0x704
/* 801B3DA4 001B0D04  48 18 CF E1 */	bl Lock__6CTokenFv
/* 801B3DA8 001B0D08  C0 22 A8 E4 */	lfs f1, lbl_805AC604@sda21(r2)
/* 801B3DAC 001B0D0C  7F E4 FB 78 */	mr r4, r31
/* 801B3DB0 001B0D10  C0 1C 07 E4 */	lfs f0, 0x7e4(r28)
/* 801B3DB4 001B0D14  38 61 00 24 */	addi r3, r1, 0x24
/* 801B3DB8 001B0D18  EC 01 00 32 */	fmuls f0, f1, f0
/* 801B3DBC 001B0D1C  D0 1C 07 E4 */	stfs f0, 0x7e4(r28)
/* 801B3DC0 001B0D20  4B F5 26 51 */	bl MakeActorLights__16CLightParametersCFv
/* 801B3DC4 001B0D24  7F 83 E3 78 */	mr r3, r28
/* 801B3DC8 001B0D28  38 81 00 24 */	addi r4, r1, 0x24
/* 801B3DCC 001B0D2C  4B E9 FA F9 */	bl sub_800538c4
/* 801B3DD0 001B0D30  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801B3DD4 001B0D34  28 00 00 00 */	cmplwi r0, 0
/* 801B3DD8 001B0D38  41 82 00 10 */	beq lbl_801B3DE8
/* 801B3DDC 001B0D3C  80 61 00 28 */	lwz r3, 0x28(r1)
/* 801B3DE0 001B0D40  38 80 00 01 */	li r4, 1
/* 801B3DE4 001B0D44  4B F5 12 F1 */	bl __dt__12CActorLightsFv
lbl_801B3DE8:
/* 801B3DE8 001B0D48  80 FC 00 90 */	lwz r7, 0x90(r28)
/* 801B3DEC 001B0D4C  38 60 00 00 */	li r3, 0
/* 801B3DF0 001B0D50  38 A0 00 02 */	li r5, 2
/* 801B3DF4 001B0D54  38 00 00 01 */	li r0, 1
/* 801B3DF8 001B0D58  88 C7 02 98 */	lbz r6, 0x298(r7)
/* 801B3DFC 001B0D5C  50 66 36 72 */	rlwimi r6, r3, 6, 0x19, 0x19
/* 801B3E00 001B0D60  38 7C 04 60 */	addi r3, r28, 0x460
/* 801B3E04 001B0D64  38 80 00 00 */	li r4, 0
/* 801B3E08 001B0D68  98 C7 02 98 */	stb r6, 0x298(r7)
/* 801B3E0C 001B0D6C  81 1C 00 90 */	lwz r8, 0x90(r28)
/* 801B3E10 001B0D70  90 A8 02 B8 */	stw r5, 0x2b8(r8)
/* 801B3E14 001B0D74  80 E8 02 B8 */	lwz r7, 0x2b8(r8)
/* 801B3E18 001B0D78  88 A8 02 98 */	lbz r5, 0x298(r8)
/* 801B3E1C 001B0D7C  7C C7 00 D0 */	neg r6, r7
/* 801B3E20 001B0D80  7C C6 38 78 */	andc r6, r6, r7
/* 801B3E24 001B0D84  50 C5 36 B4 */	rlwimi r5, r6, 6, 0x1a, 0x1a
/* 801B3E28 001B0D88  98 A8 02 98 */	stb r5, 0x298(r8)
/* 801B3E2C 001B0D8C  80 BC 00 90 */	lwz r5, 0x90(r28)
/* 801B3E30 001B0D90  90 05 02 BC */	stw r0, 0x2bc(r5)
/* 801B3E34 001B0D94  48 07 FF 31 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 801B3E38 001B0D98  88 1C 04 E1 */	lbz r0, 0x4e1(r28)
/* 801B3E3C 001B0D9C  38 60 00 00 */	li r3, 0
/* 801B3E40 001B0DA0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801B3E44 001B0DA4  7F 83 E3 78 */	mr r3, r28
/* 801B3E48 001B0DA8  98 1C 04 E1 */	stb r0, 0x4e1(r28)
/* 801B3E4C 001B0DAC  80 0D A4 98 */	lwz r0, lbl_805A9058@sda21(r13)
/* 801B3E50 001B0DB0  90 1C 04 30 */	stw r0, 0x430(r28)
/* 801B3E54 001B0DB4  80 9C 06 C4 */	lwz r4, 0x6c4(r28)
/* 801B3E58 001B0DB8  4B FF 9A C5 */	bl sub_801ad91c
/* 801B3E5C 001B0DBC  C3 42 A9 2C */	lfs f26, lbl_805AC64C@sda21(r2)
/* 801B3E60 001B0DC0  3B 7C 08 2C */	addi r27, r28, 0x82c
/* 801B3E64 001B0DC4  C3 62 A8 BC */	lfs f27, lbl_805AC5DC@sda21(r2)
/* 801B3E68 001B0DC8  3B BC 08 60 */	addi r29, r28, 0x860
/* 801B3E6C 001B0DCC  C3 82 A9 14 */	lfs f28, lbl_805AC634@sda21(r2)
/* 801B3E70 001B0DD0  C3 C2 A9 30 */	lfs f30, lbl_805AC650@sda21(r2)
/* 801B3E74 001B0DD4  C3 E2 A9 34 */	lfs f31, lbl_805AC654@sda21(r2)
/* 801B3E78 001B0DD8  48 00 00 DC */	b lbl_801B3F54
lbl_801B3E7C:
/* 801B3E7C 001B0DDC  FC 20 D0 90 */	fmr f1, f26
/* 801B3E80 001B0DE0  48 16 0F 71 */	bl FastSinR__5CMathFf
/* 801B3E84 001B0DE4  FF A0 08 90 */	fmr f29, f1
/* 801B3E88 001B0DE8  FC 20 D0 90 */	fmr f1, f26
/* 801B3E8C 001B0DEC  48 16 0E B9 */	bl FastCosR__5CMathFf
/* 801B3E90 001B0DF0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801B3E94 001B0DF4  38 61 00 60 */	addi r3, r1, 0x60
/* 801B3E98 001B0DF8  38 9C 00 34 */	addi r4, r28, 0x34
/* 801B3E9C 001B0DFC  38 A1 00 54 */	addi r5, r1, 0x54
/* 801B3EA0 001B0E00  D3 A1 00 58 */	stfs f29, 0x58(r1)
/* 801B3EA4 001B0E04  D3 61 00 5C */	stfs f27, 0x5c(r1)
/* 801B3EA8 001B0E08  48 15 EB D9 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801B3EAC 001B0E0C  80 1B 00 00 */	lwz r0, 0(r27)
/* 801B3EB0 001B0E10  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801B3EB4 001B0E14  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801B3EB8 001B0E18  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801B3EBC 001B0E1C  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 801B3EC0 001B0E20  7C 7B 02 14 */	add r3, r27, r0
/* 801B3EC4 001B0E24  34 63 00 04 */	addic. r3, r3, 4
/* 801B3EC8 001B0E28  41 82 00 10 */	beq lbl_801B3ED8
/* 801B3ECC 001B0E2C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801B3ED0 001B0E30  D0 23 00 04 */	stfs f1, 4(r3)
/* 801B3ED4 001B0E34  D0 43 00 08 */	stfs f2, 8(r3)
lbl_801B3ED8:
/* 801B3ED8 001B0E38  EF 3C D0 2A */	fadds f25, f28, f26
/* 801B3EDC 001B0E3C  80 7C 08 2C */	lwz r3, 0x82c(r28)
/* 801B3EE0 001B0E40  38 03 00 01 */	addi r0, r3, 1
/* 801B3EE4 001B0E44  FC 20 C8 90 */	fmr f1, f25
/* 801B3EE8 001B0E48  90 1C 08 2C */	stw r0, 0x82c(r28)
/* 801B3EEC 001B0E4C  48 16 0F 05 */	bl FastSinR__5CMathFf
/* 801B3EF0 001B0E50  FF A0 08 90 */	fmr f29, f1
/* 801B3EF4 001B0E54  FC 20 C8 90 */	fmr f1, f25
/* 801B3EF8 001B0E58  48 16 0E 4D */	bl FastCosR__5CMathFf
/* 801B3EFC 001B0E5C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801B3F00 001B0E60  38 61 00 48 */	addi r3, r1, 0x48
/* 801B3F04 001B0E64  38 9C 00 34 */	addi r4, r28, 0x34
/* 801B3F08 001B0E68  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801B3F0C 001B0E6C  D3 A1 00 40 */	stfs f29, 0x40(r1)
/* 801B3F10 001B0E70  D3 61 00 44 */	stfs f27, 0x44(r1)
/* 801B3F14 001B0E74  48 15 EB 6D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801B3F18 001B0E78  80 1D 00 00 */	lwz r0, 0(r29)
/* 801B3F1C 001B0E7C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801B3F20 001B0E80  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801B3F24 001B0E84  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801B3F28 001B0E88  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 801B3F2C 001B0E8C  7C 7D 02 14 */	add r3, r29, r0
/* 801B3F30 001B0E90  34 63 00 04 */	addic. r3, r3, 4
/* 801B3F34 001B0E94  41 82 00 10 */	beq lbl_801B3F44
/* 801B3F38 001B0E98  D0 03 00 00 */	stfs f0, 0(r3)
/* 801B3F3C 001B0E9C  D0 23 00 04 */	stfs f1, 4(r3)
/* 801B3F40 001B0EA0  D0 43 00 08 */	stfs f2, 8(r3)
lbl_801B3F44:
/* 801B3F44 001B0EA4  80 7C 08 60 */	lwz r3, 0x860(r28)
/* 801B3F48 001B0EA8  EF 5A F0 2A */	fadds f26, f26, f30
/* 801B3F4C 001B0EAC  38 03 00 01 */	addi r0, r3, 1
/* 801B3F50 001B0EB0  90 1C 08 60 */	stw r0, 0x860(r28)
lbl_801B3F54:
/* 801B3F54 001B0EB4  FC 1A F8 40 */	fcmpo cr0, f26, f31
/* 801B3F58 001B0EB8  41 80 FF 24 */	blt lbl_801B3E7C
/* 801B3F5C 001B0EBC  7F 83 E3 78 */	mr r3, r28
/* 801B3F60 001B0EC0  E3 E1 01 68 */	psq_l f31, 360(r1), 0, qr0
/* 801B3F64 001B0EC4  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 801B3F68 001B0EC8  E3 C1 01 58 */	psq_l f30, 344(r1), 0, qr0
/* 801B3F6C 001B0ECC  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 801B3F70 001B0ED0  E3 A1 01 48 */	psq_l f29, 328(r1), 0, qr0
/* 801B3F74 001B0ED4  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 801B3F78 001B0ED8  E3 81 01 38 */	psq_l f28, 312(r1), 0, qr0
/* 801B3F7C 001B0EDC  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 801B3F80 001B0EE0  E3 61 01 28 */	psq_l f27, 296(r1), 0, qr0
/* 801B3F84 001B0EE4  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 801B3F88 001B0EE8  E3 41 01 18 */	psq_l f26, 280(r1), 0, qr0
/* 801B3F8C 001B0EEC  CB 41 01 10 */	lfd f26, 0x110(r1)
/* 801B3F90 001B0EF0  E3 21 01 08 */	psq_l f25, 264(r1), 0, qr0
/* 801B3F94 001B0EF4  CB 21 01 00 */	lfd f25, 0x100(r1)
/* 801B3F98 001B0EF8  BA E1 00 DC */	lmw r23, 0xdc(r1)
/* 801B3F9C 001B0EFC  80 01 01 74 */	lwz r0, 0x174(r1)
/* 801B3FA0 001B0F00  7C 08 03 A6 */	mtlr r0
/* 801B3FA4 001B0F04  38 21 01 70 */	addi r1, r1, 0x170
/* 801B3FA8 001B0F08  4E 80 00 20 */	blr

.global __ct__13CFlaahgraDataFRC13CFlaahgraData
__ct__13CFlaahgraDataFRC13CFlaahgraData:
/* 801B3FAC 001B0F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B3FB0 001B0F10  7C 08 02 A6 */	mflr r0
/* 801B3FB4 001B0F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3FB8 001B0F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B3FBC 001B0F1C  7C 9F 23 78 */	mr r31, r4
/* 801B3FC0 001B0F20  93 C1 00 08 */	stw r30, 8(r1)
/* 801B3FC4 001B0F24  7C 7E 1B 78 */	mr r30, r3
/* 801B3FC8 001B0F28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801B3FCC 001B0F2C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801B3FD0 001B0F30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801B3FD4 001B0F34  D0 1E 00 04 */	stfs f0, 4(r30)
/* 801B3FD8 001B0F38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801B3FDC 001B0F3C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 801B3FE0 001B0F40  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 801B3FE4 001B0F44  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 801B3FE8 001B0F48  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801B3FEC 001B0F4C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 801B3FF0 001B0F50  90 7E 00 10 */	stw r3, 0x10(r30)
/* 801B3FF4 001B0F54  90 1E 00 14 */	stw r0, 0x14(r30)
/* 801B3FF8 001B0F58  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B3FFC 001B0F5C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 801B4000 001B0F60  90 7E 00 18 */	stw r3, 0x18(r30)
/* 801B4004 001B0F64  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 801B4008 001B0F68  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B400C 001B0F6C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801B4010 001B0F70  90 7E 00 20 */	stw r3, 0x20(r30)
/* 801B4014 001B0F74  90 1E 00 24 */	stw r0, 0x24(r30)
/* 801B4018 001B0F78  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801B401C 001B0F7C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 801B4020 001B0F80  90 7E 00 28 */	stw r3, 0x28(r30)
/* 801B4024 001B0F84  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 801B4028 001B0F88  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801B402C 001B0F8C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 801B4030 001B0F90  90 7E 00 30 */	stw r3, 0x30(r30)
/* 801B4034 001B0F94  90 1E 00 34 */	stw r0, 0x34(r30)
/* 801B4038 001B0F98  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801B403C 001B0F9C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 801B4040 001B0FA0  90 7E 00 38 */	stw r3, 0x38(r30)
/* 801B4044 001B0FA4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 801B4048 001B0FA8  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801B404C 001B0FAC  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 801B4050 001B0FB0  90 7E 00 40 */	stw r3, 0x40(r30)
/* 801B4054 001B0FB4  90 1E 00 44 */	stw r0, 0x44(r30)
/* 801B4058 001B0FB8  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 801B405C 001B0FBC  90 1E 00 48 */	stw r0, 0x48(r30)
/* 801B4060 001B0FC0  80 7F 00 4C */	lwz r3, 0x4c(r31)
/* 801B4064 001B0FC4  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 801B4068 001B0FC8  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 801B406C 001B0FCC  90 1E 00 50 */	stw r0, 0x50(r30)
/* 801B4070 001B0FD0  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 801B4074 001B0FD4  80 1F 00 58 */	lwz r0, 0x58(r31)
/* 801B4078 001B0FD8  90 7E 00 54 */	stw r3, 0x54(r30)
/* 801B407C 001B0FDC  90 1E 00 58 */	stw r0, 0x58(r30)
/* 801B4080 001B0FE0  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801B4084 001B0FE4  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 801B4088 001B0FE8  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 801B408C 001B0FEC  90 1E 00 60 */	stw r0, 0x60(r30)
/* 801B4090 001B0FF0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801B4094 001B0FF4  80 1F 00 68 */	lwz r0, 0x68(r31)
/* 801B4098 001B0FF8  90 7E 00 64 */	stw r3, 0x64(r30)
/* 801B409C 001B0FFC  90 1E 00 68 */	stw r0, 0x68(r30)
/* 801B40A0 001B1000  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 801B40A4 001B1004  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 801B40A8 001B1008  80 1F 00 70 */	lwz r0, 0x70(r31)
/* 801B40AC 001B100C  90 1E 00 70 */	stw r0, 0x70(r30)
/* 801B40B0 001B1010  80 1F 00 74 */	lwz r0, 0x74(r31)
/* 801B40B4 001B1014  90 1E 00 74 */	stw r0, 0x74(r30)
/* 801B40B8 001B1018  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 801B40BC 001B101C  90 1E 00 78 */	stw r0, 0x78(r30)
/* 801B40C0 001B1020  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 801B40C4 001B1024  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 801B40C8 001B1028  88 1F 00 80 */	lbz r0, 0x80(r31)
/* 801B40CC 001B102C  98 1E 00 80 */	stb r0, 0x80(r30)
/* 801B40D0 001B1030  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 801B40D4 001B1034  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 801B40D8 001B1038  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 801B40DC 001B103C  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 801B40E0 001B1040  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 801B40E4 001B1044  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 801B40E8 001B1048  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 801B40EC 001B104C  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 801B40F0 001B1050  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 801B40F4 001B1054  98 1E 00 94 */	stb r0, 0x94(r30)
/* 801B40F8 001B1058  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 801B40FC 001B105C  90 1E 00 98 */	stw r0, 0x98(r30)
/* 801B4100 001B1060  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 801B4104 001B1064  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 801B4108 001B1068  88 1F 00 A0 */	lbz r0, 0xa0(r31)
/* 801B410C 001B106C  98 1E 00 A0 */	stb r0, 0xa0(r30)
/* 801B4110 001B1070  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 801B4114 001B1074  D0 1E 00 A4 */	stfs f0, 0xa4(r30)
/* 801B4118 001B1078  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 801B411C 001B107C  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 801B4120 001B1080  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801B4124 001B1084  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 801B4128 001B1088  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 801B412C 001B108C  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 801B4130 001B1090  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 801B4134 001B1094  98 1E 00 B4 */	stb r0, 0xb4(r30)
/* 801B4138 001B1098  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 801B413C 001B109C  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 801B4140 001B10A0  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 801B4144 001B10A4  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 801B4148 001B10A8  88 1F 00 C0 */	lbz r0, 0xc0(r31)
/* 801B414C 001B10AC  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 801B4150 001B10B0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 801B4154 001B10B4  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 801B4158 001B10B8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 801B415C 001B10BC  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 801B4160 001B10C0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 801B4164 001B10C4  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 801B4168 001B10C8  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 801B416C 001B10CC  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 801B4170 001B10D0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 801B4174 001B10D4  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 801B4178 001B10D8  88 1F 00 D4 */	lbz r0, 0xd4(r31)
/* 801B417C 001B10DC  98 1E 00 D4 */	stb r0, 0xd4(r30)
/* 801B4180 001B10E0  4B F1 14 9D */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801B4184 001B10E4  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 801B4188 001B10E8  7F C3 F3 78 */	mr r3, r30
/* 801B418C 001B10EC  D0 1E 01 40 */	stfs f0, 0x140(r30)
/* 801B4190 001B10F0  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 801B4194 001B10F4  D0 1E 01 44 */	stfs f0, 0x144(r30)
/* 801B4198 001B10F8  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 801B419C 001B10FC  D0 1E 01 48 */	stfs f0, 0x148(r30)
/* 801B41A0 001B1100  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 801B41A4 001B1104  90 1E 01 4C */	stw r0, 0x14c(r30)
/* 801B41A8 001B1108  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 801B41AC 001B110C  90 1E 01 50 */	stw r0, 0x150(r30)
/* 801B41B0 001B1110  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 801B41B4 001B1114  90 1E 01 54 */	stw r0, 0x154(r30)
/* 801B41B8 001B1118  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 801B41BC 001B111C  90 1E 01 58 */	stw r0, 0x158(r30)
/* 801B41C0 001B1120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B41C4 001B1124  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B41C8 001B1128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B41CC 001B112C  7C 08 03 A6 */	mtlr r0
/* 801B41D0 001B1130  38 21 00 10 */	addi r1, r1, 0x10
/* 801B41D4 001B1134  4E 80 00 20 */	blr

.global __ct__13CFlaahgraDataFR12CInputStream
__ct__13CFlaahgraDataFR12CInputStream:
/* 801B41D8 001B1138  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801B41DC 001B113C  7C 08 02 A6 */	mflr r0
/* 801B41E0 001B1140  90 01 00 94 */	stw r0, 0x94(r1)
/* 801B41E4 001B1144  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801B41E8 001B1148  7C 9F 23 78 */	mr r31, r4
/* 801B41EC 001B114C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801B41F0 001B1150  7C 7E 1B 78 */	mr r30, r3
/* 801B41F4 001B1154  7F E3 FB 78 */	mr r3, r31
/* 801B41F8 001B1158  48 18 AA 31 */	bl ReadFloat__12CInputStreamFv
/* 801B41FC 001B115C  D0 3E 00 00 */	stfs f1, 0(r30)
/* 801B4200 001B1160  7F E3 FB 78 */	mr r3, r31
/* 801B4204 001B1164  48 18 AA 25 */	bl ReadFloat__12CInputStreamFv
/* 801B4208 001B1168  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801B420C 001B116C  7F E3 FB 78 */	mr r3, r31
/* 801B4210 001B1170  48 18 AA 19 */	bl ReadFloat__12CInputStreamFv
/* 801B4214 001B1174  D0 3E 00 08 */	stfs f1, 8(r30)
/* 801B4218 001B1178  7F E3 FB 78 */	mr r3, r31
/* 801B421C 001B117C  48 18 AA 0D */	bl ReadFloat__12CInputStreamFv
/* 801B4220 001B1180  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 801B4224 001B1184  7F E4 FB 78 */	mr r4, r31
/* 801B4228 001B1188  38 7E 00 10 */	addi r3, r30, 0x10
/* 801B422C 001B118C  4B F4 E9 2D */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801B4230 001B1190  7F E3 FB 78 */	mr r3, r31
/* 801B4234 001B1194  48 18 AA 51 */	bl ReadLong__12CInputStreamFv
/* 801B4238 001B1198  90 7E 00 78 */	stw r3, 0x78(r30)
/* 801B423C 001B119C  7F E4 FB 78 */	mr r4, r31
/* 801B4240 001B11A0  38 7E 00 7C */	addi r3, r30, 0x7c
/* 801B4244 001B11A4  4B F0 F3 1D */	bl __ct__11CDamageInfoFR12CInputStream
/* 801B4248 001B11A8  7F E3 FB 78 */	mr r3, r31
/* 801B424C 001B11AC  48 18 AA 39 */	bl ReadLong__12CInputStreamFv
/* 801B4250 001B11B0  90 7E 00 98 */	stw r3, 0x98(r30)
/* 801B4254 001B11B4  7F E4 FB 78 */	mr r4, r31
/* 801B4258 001B11B8  38 7E 00 9C */	addi r3, r30, 0x9c
/* 801B425C 001B11BC  4B F0 F3 05 */	bl __ct__11CDamageInfoFR12CInputStream
/* 801B4260 001B11C0  7F E3 FB 78 */	mr r3, r31
/* 801B4264 001B11C4  48 18 AA 21 */	bl ReadLong__12CInputStreamFv
/* 801B4268 001B11C8  90 7E 00 B8 */	stw r3, 0xb8(r30)
/* 801B426C 001B11CC  7F E4 FB 78 */	mr r4, r31
/* 801B4270 001B11D0  38 7E 00 BC */	addi r3, r30, 0xbc
/* 801B4274 001B11D4  4B F0 F2 ED */	bl __ct__11CDamageInfoFR12CInputStream
/* 801B4278 001B11D8  7F E4 FB 78 */	mr r4, r31
/* 801B427C 001B11DC  38 61 00 14 */	addi r3, r1, 0x14
/* 801B4280 001B11E0  4B F2 5A F5 */	bl LoadActorParameters__FR12CInputStream
/* 801B4284 001B11E4  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 801B4288 001B11E8  38 81 00 14 */	addi r4, r1, 0x14
/* 801B428C 001B11EC  4B F1 13 91 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 801B4290 001B11F0  38 61 00 14 */	addi r3, r1, 0x14
/* 801B4294 001B11F4  38 80 FF FF */	li r4, -1
/* 801B4298 001B11F8  4B F5 23 71 */	bl __dt__16CLightParametersFv
/* 801B429C 001B11FC  7F E3 FB 78 */	mr r3, r31
/* 801B42A0 001B1200  48 18 A9 89 */	bl ReadFloat__12CInputStreamFv
/* 801B42A4 001B1204  D0 3E 01 40 */	stfs f1, 0x140(r30)
/* 801B42A8 001B1208  7F E3 FB 78 */	mr r3, r31
/* 801B42AC 001B120C  48 18 A9 7D */	bl ReadFloat__12CInputStreamFv
/* 801B42B0 001B1210  D0 3E 01 44 */	stfs f1, 0x144(r30)
/* 801B42B4 001B1214  7F E3 FB 78 */	mr r3, r31
/* 801B42B8 001B1218  48 18 A9 71 */	bl ReadFloat__12CInputStreamFv
/* 801B42BC 001B121C  D0 3E 01 48 */	stfs f1, 0x148(r30)
/* 801B42C0 001B1220  7F E4 FB 78 */	mr r4, r31
/* 801B42C4 001B1224  38 61 00 08 */	addi r3, r1, 8
/* 801B42C8 001B1228  4B F2 61 45 */	bl LoadAnimationParameters__FR12CInputStream
/* 801B42CC 001B122C  80 01 00 08 */	lwz r0, 8(r1)
/* 801B42D0 001B1230  7F E3 FB 78 */	mr r3, r31
/* 801B42D4 001B1234  90 1E 01 4C */	stw r0, 0x14c(r30)
/* 801B42D8 001B1238  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B42DC 001B123C  90 1E 01 50 */	stw r0, 0x150(r30)
/* 801B42E0 001B1240  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B42E4 001B1244  90 1E 01 54 */	stw r0, 0x154(r30)
/* 801B42E8 001B1248  48 18 A9 9D */	bl ReadLong__12CInputStreamFv
/* 801B42EC 001B124C  90 7E 01 58 */	stw r3, 0x158(r30)
/* 801B42F0 001B1250  7F C3 F3 78 */	mr r3, r30
/* 801B42F4 001B1254  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801B42F8 001B1258  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801B42FC 001B125C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801B4300 001B1260  7C 08 03 A6 */	mtlr r0
/* 801B4304 001B1264  38 21 00 90 */	addi r1, r1, 0x90
/* 801B4308 001B1268  4E 80 00 20 */	blr

.global AcceptScriptMsg__19CFlaahgraProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__19CFlaahgraProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801B430C 001B126C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B4310 001B1270  7C 08 02 A6 */	mflr r0
/* 801B4314 001B1274  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B4318 001B1278  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B431C 001B127C  7C DF 33 78 */	mr r31, r6
/* 801B4320 001B1280  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B4324 001B1284  7C 9E 23 78 */	mr r30, r4
/* 801B4328 001B1288  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801B432C 001B128C  7C 7D 1B 78 */	mr r29, r3
/* 801B4330 001B1290  A0 05 00 00 */	lhz r0, 0(r5)
/* 801B4334 001B1294  38 A1 00 18 */	addi r5, r1, 0x18
/* 801B4338 001B1298  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801B433C 001B129C  48 05 FB B9 */	bl AcceptScriptMsg__17CEnergyProjectileF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801B4340 001B12A0  88 1D 03 D8 */	lbz r0, 0x3d8(r29)
/* 801B4344 001B12A4  28 00 00 00 */	cmplwi r0, 0
/* 801B4348 001B12A8  41 82 00 60 */	beq lbl_801B43A8
/* 801B434C 001B12AC  2C 1E 00 22 */	cmpwi r30, 0x22
/* 801B4350 001B12B0  41 82 00 08 */	beq lbl_801B4358
/* 801B4354 001B12B4  48 00 00 54 */	b lbl_801B43A8
lbl_801B4358:
/* 801B4358 001B12B8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801B435C 001B12BC  A0 1D 02 C2 */	lhz r0, 0x2c2(r29)
/* 801B4360 001B12C0  A0 63 00 08 */	lhz r3, 8(r3)
/* 801B4364 001B12C4  7C 03 00 40 */	cmplw r3, r0
/* 801B4368 001B12C8  40 82 00 40 */	bne lbl_801B43A8
/* 801B436C 001B12CC  A0 1D 00 EC */	lhz r0, 0xec(r29)
/* 801B4370 001B12D0  7F E3 FB 78 */	mr r3, r31
/* 801B4374 001B12D4  38 81 00 14 */	addi r4, r1, 0x14
/* 801B4378 001B12D8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801B437C 001B12DC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801B4380 001B12E0  4B E9 81 F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801B4384 001B12E4  7C 64 1B 79 */	or. r4, r3, r3
/* 801B4388 001B12E8  41 82 00 20 */	beq lbl_801B43A8
/* 801B438C 001B12EC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801B4390 001B12F0  7F E3 FB 78 */	mr r3, r31
/* 801B4394 001B12F4  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B4398 001B12F8  38 C0 00 13 */	li r6, 0x13
/* 801B439C 001B12FC  B0 01 00 08 */	sth r0, 8(r1)
/* 801B43A0 001B1300  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801B43A4 001B1304  4B E8 FB 2D */	bl SendScriptMsg__13CStateManagerFP7CEntity9TUniqueId20EScriptObjectMessage
lbl_801B43A8:
/* 801B43A8 001B1308  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B43AC 001B130C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B43B0 001B1310  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B43B4 001B1314  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801B43B8 001B1318  7C 08 03 A6 */	mtlr r0
/* 801B43BC 001B131C  38 21 00 30 */	addi r1, r1, 0x30
/* 801B43C0 001B1320  4E 80 00 20 */	blr

.global "__ct__19CFlaahgraProjectileFbRC28TToken<18CWeaponDescription>RC12CTransform4fRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId"
"__ct__19CFlaahgraProjectileFbRC28TToken<18CWeaponDescription>RC12CTransform4fRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId":
/* 801B43C4 001B1324  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801B43C8 001B1328  7C 08 02 A6 */	mflr r0
/* 801B43CC 001B132C  C0 02 A8 DC */	lfs f0, lbl_805AC5FC@sda21(r2)
/* 801B43D0 001B1330  90 01 00 94 */	stw r0, 0x94(r1)
/* 801B43D4 001B1334  39 81 00 50 */	addi r12, r1, 0x50
/* 801B43D8 001B1338  39 61 00 40 */	addi r11, r1, 0x40
/* 801B43DC 001B133C  A0 02 C5 FC */	lhz r0, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 801B43E0 001B1340  BE C1 00 68 */	stmw r22, 0x68(r1)
/* 801B43E4 001B1344  3A C0 00 00 */	li r22, 0
/* 801B43E8 001B1348  7C 9F 23 78 */	mr r31, r4
/* 801B43EC 001B134C  3B 41 00 3C */	addi r26, r1, 0x3c
/* 801B43F0 001B1350  3B 61 00 34 */	addi r27, r1, 0x34
/* 801B43F4 001B1354  3B 81 00 30 */	addi r28, r1, 0x30
/* 801B43F8 001B1358  3B A0 04 00 */	li r29, 0x400
/* 801B43FC 001B135C  7C 7E 1B 78 */	mr r30, r3
/* 801B4400 001B1360  38 80 00 01 */	li r4, 1
/* 801B4404 001B1364  A2 EA 00 00 */	lhz r23, 0(r10)
/* 801B4408 001B1368  7C EA 3B 78 */	mr r10, r7
/* 801B440C 001B136C  A3 28 00 00 */	lhz r25, 0(r8)
/* 801B4410 001B1370  7C C7 33 78 */	mr r7, r6
/* 801B4414 001B1374  83 09 00 00 */	lwz r24, 0(r9)
/* 801B4418 001B1378  7D 49 53 78 */	mr r9, r10
/* 801B441C 001B137C  A1 0D A3 8C */	lhz r8, kInvalidUniqueId@sda21(r13)
/* 801B4420 001B1380  39 41 00 38 */	addi r10, r1, 0x38
/* 801B4424 001B1384  9A C1 00 4C */	stb r22, 0x4c(r1)
/* 801B4428 001B1388  38 C0 00 09 */	li r6, 9
/* 801B442C 001B138C  B1 01 00 30 */	sth r8, 0x30(r1)
/* 801B4430 001B1390  39 00 00 21 */	li r8, 0x21
/* 801B4434 001B1394  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801B4438 001B1398  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801B443C 001B139C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801B4440 001B13A0  B2 E1 00 34 */	sth r23, 0x34(r1)
/* 801B4444 001B13A4  93 01 00 3C */	stw r24, 0x3c(r1)
/* 801B4448 001B13A8  B3 21 00 38 */	sth r25, 0x38(r1)
/* 801B444C 001B13AC  93 41 00 08 */	stw r26, 8(r1)
/* 801B4450 001B13B0  93 61 00 0C */	stw r27, 0xc(r1)
/* 801B4454 001B13B4  93 81 00 10 */	stw r28, 0x10(r1)
/* 801B4458 001B13B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801B445C 001B13BC  92 C1 00 18 */	stw r22, 0x18(r1)
/* 801B4460 001B13C0  91 81 00 1C */	stw r12, 0x1c(r1)
/* 801B4464 001B13C4  91 61 00 20 */	stw r11, 0x20(r1)
/* 801B4468 001B13C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B446C 001B13CC  92 C1 00 28 */	stw r22, 0x28(r1)
/* 801B4470 001B13D0  48 06 12 29 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 801B4474 001B13D4  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 801B4478 001B13D8  28 00 00 00 */	cmplwi r0, 0
/* 801B447C 001B13DC  41 82 00 1C */	beq lbl_801B4498
/* 801B4480 001B13E0  34 61 00 40 */	addic. r3, r1, 0x40
/* 801B4484 001B13E4  41 82 00 14 */	beq lbl_801B4498
/* 801B4488 001B13E8  28 03 00 00 */	cmplwi r3, 0
/* 801B448C 001B13EC  41 82 00 0C */	beq lbl_801B4498
/* 801B4490 001B13F0  38 80 00 00 */	li r4, 0
/* 801B4494 001B13F4  48 18 C9 AD */	bl __dt__6CTokenFv
lbl_801B4498:
/* 801B4498 001B13F8  38 00 00 00 */	li r0, 0
/* 801B449C 001B13FC  3C 60 80 3E */	lis r3, lbl_803E5154@ha
/* 801B44A0 001B1400  98 01 00 4C */	stb r0, 0x4c(r1)
/* 801B44A4 001B1404  38 03 51 54 */	addi r0, r3, lbl_803E5154@l
/* 801B44A8 001B1408  90 1E 00 00 */	stw r0, 0(r30)
/* 801B44AC 001B140C  9B FE 03 D8 */	stb r31, 0x3d8(r30)
/* 801B44B0 001B1410  88 1E 03 D8 */	lbz r0, 0x3d8(r30)
/* 801B44B4 001B1414  28 00 00 00 */	cmplwi r0, 0
/* 801B44B8 001B1418  41 82 00 18 */	beq lbl_801B44D0
/* 801B44BC 001B141C  80 1E 00 E8 */	lwz r0, 0xe8(r30)
/* 801B44C0 001B1420  C0 02 A8 C4 */	lfs f0, lbl_805AC5E4@sda21(r2)
/* 801B44C4 001B1424  60 00 10 00 */	ori r0, r0, 0x1000
/* 801B44C8 001B1428  90 1E 00 E8 */	stw r0, 0xe8(r30)
/* 801B44CC 001B142C  D0 1E 01 50 */	stfs f0, 0x150(r30)
lbl_801B44D0:
/* 801B44D0 001B1430  7F C3 F3 78 */	mr r3, r30
/* 801B44D4 001B1434  BA C1 00 68 */	lmw r22, 0x68(r1)
/* 801B44D8 001B1438  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801B44DC 001B143C  7C 08 03 A6 */	mtlr r0
/* 801B44E0 001B1440  38 21 00 90 */	addi r1, r1, 0x90
/* 801B44E4 001B1444  4E 80 00 20 */	blr

.global GetTouchBounds__9CFlaahgraCFv
GetTouchBounds__9CFlaahgraCFv:
/* 801B44E8 001B1448  38 00 00 00 */	li r0, 0
/* 801B44EC 001B144C  98 03 00 18 */	stb r0, 0x18(r3)
/* 801B44F0 001B1450  4E 80 00 20 */	blr

.global __dt__19CFlaahgraProjectileFv
__dt__19CFlaahgraProjectileFv:
/* 801B44F4 001B1454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B44F8 001B1458  7C 08 02 A6 */	mflr r0
/* 801B44FC 001B145C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4500 001B1460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4504 001B1464  7C 9F 23 78 */	mr r31, r4
/* 801B4508 001B1468  93 C1 00 08 */	stw r30, 8(r1)
/* 801B450C 001B146C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801B4510 001B1470  41 82 00 28 */	beq lbl_801B4538
/* 801B4514 001B1474  3C A0 80 3E */	lis r5, lbl_803E5154@ha
/* 801B4518 001B1478  38 80 00 00 */	li r4, 0
/* 801B451C 001B147C  38 05 51 54 */	addi r0, r5, lbl_803E5154@l
/* 801B4520 001B1480  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4524 001B1484  4B F8 73 D1 */	bl __dt__17CEnergyProjectileFv
/* 801B4528 001B1488  7F E0 07 35 */	extsh. r0, r31
/* 801B452C 001B148C  40 81 00 0C */	ble lbl_801B4538
/* 801B4530 001B1490  7F C3 F3 78 */	mr r3, r30
/* 801B4534 001B1494  48 16 13 FD */	bl Free__7CMemoryFPCv
lbl_801B4538:
/* 801B4538 001B1498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B453C 001B149C  7F C3 F3 78 */	mr r3, r30
/* 801B4540 001B14A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4544 001B14A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4548 001B14A8  7C 08 03 A6 */	mtlr r0
/* 801B454C 001B14AC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4550 001B14B0  4E 80 00 20 */	blr

.global __sinit_CFlaahgra_cpp
__sinit_CFlaahgra_cpp:
/* 801B4554 001B14B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4558 001B14B8  7C 08 02 A6 */	mflr r0
/* 801B455C 001B14BC  C0 22 A8 E4 */	lfs f1, lbl_805AC604@sda21(r2)
/* 801B4560 001B14C0  3C 60 80 57 */	lis r3, lbl_8057203C@ha
/* 801B4564 001B14C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4568 001B14C8  38 83 20 3C */	addi r4, r3, lbl_8057203C@l
/* 801B456C 001B14CC  C0 A2 A9 38 */	lfs f5, lbl_805AC658@sda21(r2)
/* 801B4570 001B14D0  3C A0 80 57 */	lis r5, lbl_80572024@ha
/* 801B4574 001B14D4  C0 62 A8 BC */	lfs f3, lbl_805AC5DC@sda21(r2)
/* 801B4578 001B14D8  FC 40 08 90 */	fmr f2, f1
/* 801B457C 001B14DC  D4 A5 20 24 */	stfsu f5, lbl_80572024@l(r5)
/* 801B4580 001B14E0  38 6D A4 98 */	addi r3, r13, lbl_805A9058@sda21
/* 801B4584 001B14E4  C0 02 A9 3C */	lfs f0, lbl_805AC65C@sda21(r2)
/* 801B4588 001B14E8  D0 24 00 00 */	stfs f1, 0(r4)
/* 801B458C 001B14EC  C0 82 A8 DC */	lfs f4, lbl_805AC5FC@sda21(r2)
/* 801B4590 001B14F0  D0 A5 00 04 */	stfs f5, 4(r5)
/* 801B4594 001B14F4  D0 A5 00 08 */	stfs f5, 8(r5)
/* 801B4598 001B14F8  D0 04 00 04 */	stfs f0, 4(r4)
/* 801B459C 001B14FC  D0 64 00 08 */	stfs f3, 8(r4)
/* 801B45A0 001B1500  48 1A EE 4D */	bl __ct__6CColorFffff
/* 801B45A4 001B1504  C0 42 A8 BC */	lfs f2, lbl_805AC5DC@sda21(r2)
/* 801B45A8 001B1508  38 6D A4 9C */	addi r3, r13, lbl_805A905C@sda21
/* 801B45AC 001B150C  C0 22 A8 E4 */	lfs f1, lbl_805AC604@sda21(r2)
/* 801B45B0 001B1510  FC 60 10 90 */	fmr f3, f2
/* 801B45B4 001B1514  C0 82 A8 DC */	lfs f4, lbl_805AC5FC@sda21(r2)
/* 801B45B8 001B1518  48 1A EE 35 */	bl __ct__6CColorFffff
/* 801B45BC 001B151C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B45C0 001B1520  7C 08 03 A6 */	mtlr r0
/* 801B45C4 001B1524  38 21 00 10 */	addi r1, r1, 0x10
/* 801B45C8 001B1528  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC5B8
lbl_805AC5B8:
	# ROM: 0x3F8E58
	.4byte 0x00000017

.global lbl_805AC5BC
lbl_805AC5BC:
	# ROM: 0x3F8E5C
	.4byte 0
	.4byte 0x00000001

.global lbl_805AC5C4
lbl_805AC5C4:
	# ROM: 0x3F8E64
	.4byte 0x00000008
	.4byte 0x00000007

.global lbl_805AC5CC
lbl_805AC5CC:
	# ROM: 0x3F8E6C
	.4byte 0x3FB2B8C3

.global lbl_805AC5D0
lbl_805AC5D0:
	# ROM: 0x3F8E70
	.4byte 0x40490FDB

.global lbl_805AC5D4
lbl_805AC5D4:
	# ROM: 0x3F8E74
	.4byte 0x3FAA3D71

.global lbl_805AC5D8
lbl_805AC5D8:
	# ROM: 0x3F8E78
	.4byte 0x00800000

.global lbl_805AC5DC
lbl_805AC5DC:
	# ROM: 0x3F8E7C
	.4byte 0

.global lbl_805AC5E0
lbl_805AC5E0:
	# ROM: 0x3F8E80
	.float -1.0

.global lbl_805AC5E4
lbl_805AC5E4:
	# ROM: 0x3F8E84
	.float 2.0

.global lbl_805AC5E8
lbl_805AC5E8:
	# ROM: 0x3F8E88
	.float 0.75

.global lbl_805AC5EC
lbl_805AC5EC:
	# ROM: 0x3F8E8C
	.4byte 0x41C80000

.global lbl_805AC5F0
lbl_805AC5F0:
	# ROM: 0x3F8E90
	.4byte 0x40711EB8

.global lbl_805AC5F4
lbl_805AC5F4:
	# ROM: 0x3F8E94
	.4byte 0x4084F5C3

.global lbl_805AC5F8
lbl_805AC5F8:
	# ROM: 0x3F8E98
	.4byte 0x42FA0000

.global lbl_805AC5FC
lbl_805AC5FC:
	# ROM: 0x3F8E9C
	.float 1.0

.global lbl_805AC600
lbl_805AC600:
	# ROM: 0x3F8EA0
	.4byte 0xBF000000

.global lbl_805AC604
lbl_805AC604:
	# ROM: 0x3F8EA4
	.float 0.5

.global lbl_805AC608
lbl_805AC608:
	# ROM: 0x3F8EA8
	.float 1.25

.global lbl_805AC60C
lbl_805AC60C:
	# ROM: 0x3F8EAC
	.4byte 0x40C00000

.global lbl_805AC610
lbl_805AC610:
	# ROM: 0x3F8EB0
	.4byte 0x41200000

.global lbl_805AC614
lbl_805AC614:
	# ROM: 0x3F8EB4
	.4byte 0x3E860A92

.global lbl_805AC618
lbl_805AC618:
	# ROM: 0x3F8EB8
	.4byte 0xBFC00000

.global lbl_805AC61C
lbl_805AC61C:
	# ROM: 0x3F8EBC
	.4byte 0x42C80000

.global lbl_805AC620
lbl_805AC620:
	# ROM: 0x3F8EC0
	.double 4.503601774854144E15

.global lbl_805AC628
lbl_805AC628:
	# ROM: 0x3F8EC8
	.float 1.5

.global lbl_805AC62C
lbl_805AC62C:
	# ROM: 0x3F8ECC
	.float 5.0

.global lbl_805AC630
lbl_805AC630:
	# ROM: 0x3F8ED0
	.4byte 0x41300000

.global lbl_805AC634
lbl_805AC634:
	# ROM: 0x3F8ED4
	.float 0.7853982

.global lbl_805AC638
lbl_805AC638:
	# ROM: 0x3F8ED8
	.4byte 0xBD8EFA35

.global lbl_805AC63C
lbl_805AC63C:
	# ROM: 0x3F8EDC
	.4byte 0x3D8EFA35

.global lbl_805AC640
lbl_805AC640:
	# ROM: 0x3F8EE0
	.float 8.0

.global lbl_805AC644
lbl_805AC644:
	# ROM: 0x3F8EE4
	.4byte 0x40400000

.global lbl_805AC648
lbl_805AC648:
	# ROM: 0x3F8EE8
	.4byte 0xC0800000

.global lbl_805AC64C
lbl_805AC64C:
	# ROM: 0x3F8EEC
	.4byte 0x3E9C61AA

.global lbl_805AC650
lbl_805AC650:
	# ROM: 0x3F8EF0
	.4byte 0x3FC90FDB

.global lbl_805AC654
lbl_805AC654:
	# ROM: 0x3F8EF4
	.float 6.2831855

.global lbl_805AC658
lbl_805AC658:
	# ROM: 0x3F8EF8
	.4byte 0x41400000

.global lbl_805AC65C
lbl_805AC65C:
	# ROM: 0x3F8EFC
	.4byte 0x40E00000


.section .rodata
.balign 8
.global lbl_803D14E0
lbl_803D14E0:
	# ROM: 0x3CE4E0
	.4byte lbl_803D1590
	.4byte lbl_803D1598
	.float 0.6
	.float 1.0
	.4byte lbl_803D1598
	.4byte lbl_803D15A0
	.float 0.6
	.float 1.0
	.4byte lbl_803D15A0
	.4byte lbl_803D15AC
	.float 0.6
	.float 1.0
	.4byte lbl_803D15BC
	.4byte lbl_803D15C4
	.float 0.6
	.float 1.0
	.4byte lbl_803D15C4
	.4byte lbl_803D15CC
	.float 0.6
	.float 1.0
	.4byte lbl_803D15CC
	.4byte lbl_803D15D8
	.float 0.6
	.float 1.0
	.4byte lbl_803D15E8
	.float 1.5
	.4byte lbl_803D15EF
	.float 1.5
	.4byte lbl_803D15F7
	.float 1.5
	.4byte lbl_803D15FF
	.float 1.5
	.4byte lbl_803D1607
	.float 1.5

.global lbl_803D1568
lbl_803D1568:
	# ROM: 0x3CE568
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0
	.4byte 0xFFFFFFFF

.global lbl_803D157C
lbl_803D157C:
	# ROM: 0x3CE57C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0xFFFFFFFF

.global lbl_803D1590
lbl_803D1590:

	# ROM: 0x3CE590
	.asciz "L_elbow"

.global lbl_803D1598
lbl_803D1598:

	# ROM: 0x3CE598
	.asciz "L_blade"

.global lbl_803D15A0
lbl_803D15A0:

	# ROM: 0x3CE5A0
	.asciz "L_CLAW_LCTR"

.global lbl_803D15AC
lbl_803D15AC:

	# ROM: 0x3CE5AC
	.asciz "L_CLAW_END_LCTR"

.global lbl_803D15BC
lbl_803D15BC:

	# ROM: 0x3CE5BC
	.asciz "R_elbow"

.global lbl_803D15C4
lbl_803D15C4:

	# ROM: 0x3CE5C4
	.asciz "R_blade"

.global lbl_803D15CC
lbl_803D15CC:

	# ROM: 0x3CE5CC
	.asciz "R_CLAW_LCTR"

.global lbl_803D15D8
lbl_803D15D8:

	# ROM: 0x3CE5D8
	.asciz "R_CLAW_END_LCTR"

.global lbl_803D15E8
lbl_803D15E8:

	# ROM: 0x3CE5E8
	.asciz "Head_1"

.global lbl_803D15EF
lbl_803D15EF:

	# ROM: 0x3CE5EF
	.byte 0x53
	.asciz "pine_2"

.global lbl_803D15F7
lbl_803D15F7:

	# ROM: 0x3CE5F7
	.byte 0x53
	.asciz "pine_4"

.global lbl_803D15FF
lbl_803D15FF:

	# ROM: 0x3CE5FF
	.byte 0x53
	.asciz "pine_6"

.global lbl_803D1607
lbl_803D1607:

	# ROM: 0x3CE607
	.byte 0x43
	.asciz "ollar"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x44, 0x65, 0x61
	.4byte 0x6400466C
	.asciz "aahgra Renderer"
	.4byte 0

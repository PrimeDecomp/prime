.include "macros.inc"

.section .data


.global lbl_803E36A8
lbl_803E36A8:
	# ROM: 0x3E06A8
	.4byte 0
	.4byte 0
	.4byte __dt__6CDroneFv
	.4byte Accept__6CDroneFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__6CDroneFfR13CStateManager
	.4byte AcceptScriptMsg__6CDroneF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CDroneFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CDroneCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__6CDroneCFRC13CStateManager
	.4byte CanRenderUnsorted__6CDroneCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CDroneCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__6CDroneFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CDroneCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CDroneFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__6CDroneCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__6CDroneFRC9CVector3fR13CStateManager
	.4byte KnockBack__6CDroneFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__6CDroneFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__6CDroneFR13CStateManager9EStateMsgf
	.4byte PathFind__6CDroneFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__6CDroneFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__6CDroneFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__3CAiFR13CStateManager9EStateMsgf
	.4byte Deactivate__6CDroneFR13CStateManager9EStateMsgf
	.4byte Attack__6CDroneFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__6CDroneFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__3CAiFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__6CDroneFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__6CDroneFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__6CDroneFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__6CDroneFR13CStateManager9EStateMsgf
	.4byte Retreat__6CDroneFR13CStateManager9EStateMsgf
	.4byte Cover__6CDroneFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__6CDroneFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__6CDroneFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__6CDroneFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__6CDroneFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__6CDroneFR13CStateManagerf
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
	.4byte sub_80161250
	.4byte ShouldAttack__6CDroneFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__6CDroneFR13CStateManagerf
	.4byte HearPlayer__3CAiFR13CStateManagerf
	.4byte CoverCheck__6CDroneFR13CStateManagerf
	.4byte CoverFind__3CAiFR13CStateManagerf
	.4byte CoverBlown__3CAiFR13CStateManagerf
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__3CAiFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__6CDroneFR13CStateManagerf
	.4byte AggressionCheck__3CAiFR13CStateManagerf
	.4byte AttackOver__6CDroneFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__6CDroneFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__6CDroneFR13CStateManagerf
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
	.4byte CodeTrigger__6CDroneFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__3CAiFR13CStateManagerf
	.4byte ShouldCallForBackup__3CAiFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__10CPatternedCFv
	.4byte MassiveDeath__10CPatternedFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__6CDroneFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__6CDroneFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte sub_80162f4c
	.4byte sub_801662c8
	.4byte sub_801660a4
	.4byte sub_80165f00
	.4byte sub_8015f150

.global lbl_803E3988
lbl_803E3988:
	# ROM: 0x3E0988
	.4byte lbl_80165D28
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165E8C
	.4byte lbl_80165EC8
	.4byte lbl_80165D5C
	.4byte lbl_80165DDC
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165EC8
	.4byte lbl_80165E44
	.4byte lbl_80165E68

.global lbl_803E39C8
lbl_803E39C8:
	# ROM: 0x3E09C8
	.4byte lbl_80166708
	.4byte lbl_80166374
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_801663A0
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_801665D8
	.4byte lbl_80166708
	.4byte lbl_801666C0
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166708
	.4byte lbl_80166498
	.4byte lbl_801663A0
	.4byte lbl_801665EC

.global lbl_803E3A58
lbl_803E3A58:
	# ROM: 0x3E0A58
	.4byte 0
	.4byte 0
	.4byte __dt__11CDroneLaserFv
	.4byte Accept__11CDroneLaserFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__11CDroneLaserFfR13CStateManager
	.4byte AcceptScriptMsg__11CDroneLaserF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__11CDroneLaserCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__11CDroneLaserCFRC13CStateManager
	.4byte CanRenderUnsorted__6CActorCFRC13CStateManager
	.4byte CalculateRenderBounds__11CDroneLaserFv
	.4byte HealthInfo__6CActorFR13CStateManager
	.4byte GetDamageVulnerability__6CActorCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__6CActorCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__6CActorCFRC13CStateManager
	.4byte GetAimPosition__6CActorCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__6CActorCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__6CActorFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte 0

.section .sdata

.global lbl_805A78B0
lbl_805A78B0:
	# ROM: 0x3F5250
	.4byte 0x00000013

.global lbl_805A78B4
lbl_805A78B4:
	# ROM: 0x3F5254
	.4byte 0x803D0398

.global lbl_805A78B8
lbl_805A78B8:
	# ROM: 0x3F5258
	.4byte 0x803D03A4

.global lbl_805A78BC
lbl_805A78BC:
	# ROM: 0x3F525C
	.4byte 0x803D03B3

.global lbl_805A78C0
lbl_805A78C0:
	# ROM: 0x3F5260
	.4byte 0

.global lbl_805A78C4
lbl_805A78C4:
	# ROM: 0x3F5264
	.4byte 0

.global lbl_805A78C8
lbl_805A78C8:
	# ROM: 0x3F5268
	.4byte 0

.global lbl_805A78CC
lbl_805A78CC:
	# ROM: 0x3F526C
	.4byte 0x00000013

.global lbl_805A78D0
lbl_805A78D0:
	# ROM: 0x3F5270
	.4byte 0x00000012

.global lbl_805A78D4
lbl_805A78D4:
	# ROM: 0x3F5274
	.4byte 0

.global lbl_805A78D8
lbl_805A78D8:
	# ROM: 0x3F5278
	.4byte 0

.global lbl_805A78DC
lbl_805A78DC:
	# ROM: 0x3F527C
	.4byte 0

.global lbl_805A78E0
lbl_805A78E0:
	# ROM: 0x3F5280
	.4byte 0x3F800000

.global lbl_805A78E4
lbl_805A78E4:
	# ROM: 0x3F5284
	.4byte 0

.global lbl_805A78E8
lbl_805A78E8:
	# ROM: 0x3F5288
	.4byte 0

.global lbl_805A78EC
lbl_805A78EC:
	# ROM: 0x3F528C
	.4byte 0x00000013

.global lbl_805A78F0
lbl_805A78F0:
	# ROM: 0x3F5290
	.4byte 0x00000022

.global lbl_805A78F4
lbl_805A78F4:
	# ROM: 0x3F5294
	.4byte 0

.global lbl_805A78F8
lbl_805A78F8:
	# ROM: 0x3F5298
	.4byte 0x3F800000

.global lbl_805A78FC
lbl_805A78FC:
	# ROM: 0x3F529C
	.4byte 0x00000013

.global lbl_805A7900
lbl_805A7900:
	# ROM: 0x3F52A0
	.4byte 0x00000012

.global lbl_805A7904
lbl_805A7904:
	# ROM: 0x3F52A4
	.4byte 0x00000013

.global lbl_805A7908
lbl_805A7908:
	# ROM: 0x3F52A8
	.4byte 0x00000012

.global lbl_805A790C
lbl_805A790C:
	# ROM: 0x3F52AC
	.4byte 0x00000022

.global lbl_805A7910
lbl_805A7910:
	# ROM: 0x3F52B0
	.4byte 0x00000021

.global lbl_805A7914
lbl_805A7914:
	# ROM: 0x3F52B4
	.4byte 0x00000022

.global lbl_805A7918
lbl_805A7918:
	# ROM: 0x3F52B8
	.4byte 0x00000021

.global lbl_805A791C
lbl_805A791C:
	# ROM: 0x3F52BC
	.4byte 0x00000013

.global lbl_805A7920
lbl_805A7920:
	# ROM: 0x3F52C0
	.4byte 0x00000021

.global lbl_805A7924
lbl_805A7924:
	# ROM: 0x3F52C4
	.4byte 0x00000020

.global lbl_805A7928
lbl_805A7928:
	# ROM: 0x3F52C8
	.4byte 0x00000012

.global lbl_805A792C
lbl_805A792C:
	# ROM: 0x3F52CC
	.4byte 0x00000013

.global lbl_805A7930
lbl_805A7930:
	# ROM: 0x3F52D0
	.4byte 0x00000021

.global lbl_805A7934
lbl_805A7934:
	# ROM: 0x3F52D4
	.4byte 0x00000020

.global lbl_805A7938
lbl_805A7938:
	# ROM: 0x3F52D8
	.4byte 0x00000012

.global lbl_805A793C
lbl_805A793C:
	# ROM: 0x3F52DC
	.4byte 0x3E99999A

.global lbl_805A7940
lbl_805A7940:
	# ROM: 0x3F52E0
	.4byte 0x00000013

.global lbl_805A7944
lbl_805A7944:
	# ROM: 0x3F52E4
	.4byte 0x00000013

.section .bss

.global lbl_8046C848
lbl_8046C848:
	.skip 0x18
.global lbl_8046C860
lbl_8046C860:
	.skip 0x18
.global lbl_8046C878
lbl_8046C878:
	.skip 0x18
.global lbl_8046C890
lbl_8046C890:
	.skip 0x18
.global lbl_8046C8A8
lbl_8046C8A8:
	.skip 0x18
	
.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__6CDroneFv
__dt__6CDroneFv:
/* 8015EE50 0015BDB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015EE54 0015BDB4  7C 08 02 A6 */	mflr r0
/* 8015EE58 0015BDB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015EE5C 0015BDBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015EE60 0015BDC0  7C 9F 23 78 */	mr r31, r4
/* 8015EE64 0015BDC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8015EE68 0015BDC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015EE6C 0015BDCC  41 82 02 C0 */	beq lbl_8015F12C
/* 8015EE70 0015BDD0  3C 60 80 3E */	lis r3, lbl_803E36A8@ha
/* 8015EE74 0015BDD4  34 1E 08 2C */	addic. r0, r30, 0x82c
/* 8015EE78 0015BDD8  38 03 36 A8 */	addi r0, r3, lbl_803E36A8@l
/* 8015EE7C 0015BDDC  90 1E 00 00 */	stw r0, 0(r30)
/* 8015EE80 0015BDE0  41 82 00 10 */	beq lbl_8015EE90
/* 8015EE84 0015BDE4  80 7E 08 2C */	lwz r3, 0x82c(r30)
/* 8015EE88 0015BDE8  38 80 00 01 */	li r4, 1
/* 8015EE8C 0015BDEC  4B FB 7B C1 */	bl __dt__10CModelDataFv
lbl_8015EE90:
/* 8015EE90 0015BDF0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 8015EE94 0015BDF4  41 82 00 58 */	beq lbl_8015EEEC
/* 8015EE98 0015BDF8  80 BE 08 24 */	lwz r5, 0x824(r30)
/* 8015EE9C 0015BDFC  38 60 00 00 */	li r3, 0
/* 8015EEA0 0015BE00  2C 05 00 00 */	cmpwi r5, 0
/* 8015EEA4 0015BE04  40 81 00 40 */	ble lbl_8015EEE4
/* 8015EEA8 0015BE08  2C 05 00 08 */	cmpwi r5, 8
/* 8015EEAC 0015BE0C  38 85 FF F8 */	addi r4, r5, -8
/* 8015EEB0 0015BE10  40 81 00 20 */	ble lbl_8015EED0
/* 8015EEB4 0015BE14  38 04 00 07 */	addi r0, r4, 7
/* 8015EEB8 0015BE18  54 00 E8 FE */	srwi r0, r0, 3
/* 8015EEBC 0015BE1C  7C 09 03 A6 */	mtctr r0
/* 8015EEC0 0015BE20  2C 04 00 00 */	cmpwi r4, 0
/* 8015EEC4 0015BE24  40 81 00 0C */	ble lbl_8015EED0
lbl_8015EEC8:
/* 8015EEC8 0015BE28  38 63 00 08 */	addi r3, r3, 8
/* 8015EECC 0015BE2C  42 00 FF FC */	bdnz lbl_8015EEC8
lbl_8015EED0:
/* 8015EED0 0015BE30  7C 03 28 50 */	subf r0, r3, r5
/* 8015EED4 0015BE34  7C 09 03 A6 */	mtctr r0
/* 8015EED8 0015BE38  7C 03 28 00 */	cmpw r3, r5
/* 8015EEDC 0015BE3C  40 80 00 08 */	bge lbl_8015EEE4
lbl_8015EEE0:
/* 8015EEE0 0015BE40  42 00 00 00 */	bdnz lbl_8015EEE0
lbl_8015EEE4:
/* 8015EEE4 0015BE44  38 00 00 00 */	li r0, 0
/* 8015EEE8 0015BE48  90 1E 08 24 */	stw r0, 0x824(r30)
lbl_8015EEEC:
/* 8015EEEC 0015BE4C  34 1E 08 18 */	addic. r0, r30, 0x818
/* 8015EEF0 0015BE50  41 82 00 58 */	beq lbl_8015EF48
/* 8015EEF4 0015BE54  80 BE 08 18 */	lwz r5, 0x818(r30)
/* 8015EEF8 0015BE58  38 60 00 00 */	li r3, 0
/* 8015EEFC 0015BE5C  2C 05 00 00 */	cmpwi r5, 0
/* 8015EF00 0015BE60  40 81 00 40 */	ble lbl_8015EF40
/* 8015EF04 0015BE64  2C 05 00 08 */	cmpwi r5, 8
/* 8015EF08 0015BE68  38 85 FF F8 */	addi r4, r5, -8
/* 8015EF0C 0015BE6C  40 81 00 20 */	ble lbl_8015EF2C
/* 8015EF10 0015BE70  38 04 00 07 */	addi r0, r4, 7
/* 8015EF14 0015BE74  54 00 E8 FE */	srwi r0, r0, 3
/* 8015EF18 0015BE78  7C 09 03 A6 */	mtctr r0
/* 8015EF1C 0015BE7C  2C 04 00 00 */	cmpwi r4, 0
/* 8015EF20 0015BE80  40 81 00 0C */	ble lbl_8015EF2C
lbl_8015EF24:
/* 8015EF24 0015BE84  38 63 00 08 */	addi r3, r3, 8
/* 8015EF28 0015BE88  42 00 FF FC */	bdnz lbl_8015EF24
lbl_8015EF2C:
/* 8015EF2C 0015BE8C  7C 03 28 50 */	subf r0, r3, r5
/* 8015EF30 0015BE90  7C 09 03 A6 */	mtctr r0
/* 8015EF34 0015BE94  7C 03 28 00 */	cmpw r3, r5
/* 8015EF38 0015BE98  40 80 00 08 */	bge lbl_8015EF40
lbl_8015EF3C:
/* 8015EF3C 0015BE9C  42 00 00 00 */	bdnz lbl_8015EF3C
lbl_8015EF40:
/* 8015EF40 0015BEA0  38 00 00 00 */	li r0, 0
/* 8015EF44 0015BEA4  90 1E 08 18 */	stw r0, 0x818(r30)
lbl_8015EF48:
/* 8015EF48 0015BEA8  34 1E 07 FC */	addic. r0, r30, 0x7fc
/* 8015EF4C 0015BEAC  41 82 00 58 */	beq lbl_8015EFA4
/* 8015EF50 0015BEB0  80 BE 07 FC */	lwz r5, 0x7fc(r30)
/* 8015EF54 0015BEB4  38 60 00 00 */	li r3, 0
/* 8015EF58 0015BEB8  2C 05 00 00 */	cmpwi r5, 0
/* 8015EF5C 0015BEBC  40 81 00 40 */	ble lbl_8015EF9C
/* 8015EF60 0015BEC0  2C 05 00 08 */	cmpwi r5, 8
/* 8015EF64 0015BEC4  38 85 FF F8 */	addi r4, r5, -8
/* 8015EF68 0015BEC8  40 81 00 20 */	ble lbl_8015EF88
/* 8015EF6C 0015BECC  38 04 00 07 */	addi r0, r4, 7
/* 8015EF70 0015BED0  54 00 E8 FE */	srwi r0, r0, 3
/* 8015EF74 0015BED4  7C 09 03 A6 */	mtctr r0
/* 8015EF78 0015BED8  2C 04 00 00 */	cmpwi r4, 0
/* 8015EF7C 0015BEDC  40 81 00 0C */	ble lbl_8015EF88
lbl_8015EF80:
/* 8015EF80 0015BEE0  38 63 00 08 */	addi r3, r3, 8
/* 8015EF84 0015BEE4  42 00 FF FC */	bdnz lbl_8015EF80
lbl_8015EF88:
/* 8015EF88 0015BEE8  7C 03 28 50 */	subf r0, r3, r5
/* 8015EF8C 0015BEEC  7C 09 03 A6 */	mtctr r0
/* 8015EF90 0015BEF0  7C 03 28 00 */	cmpw r3, r5
/* 8015EF94 0015BEF4  40 80 00 08 */	bge lbl_8015EF9C
lbl_8015EF98:
/* 8015EF98 0015BEF8  42 00 00 00 */	bdnz lbl_8015EF98
lbl_8015EF9C:
/* 8015EF9C 0015BEFC  38 00 00 00 */	li r0, 0
/* 8015EFA0 0015BF00  90 1E 07 FC */	stw r0, 0x7fc(r30)
lbl_8015EFA4:
/* 8015EFA4 0015BF04  34 1E 07 E0 */	addic. r0, r30, 0x7e0
/* 8015EFA8 0015BF08  41 82 00 58 */	beq lbl_8015F000
/* 8015EFAC 0015BF0C  80 BE 07 E0 */	lwz r5, 0x7e0(r30)
/* 8015EFB0 0015BF10  38 60 00 00 */	li r3, 0
/* 8015EFB4 0015BF14  2C 05 00 00 */	cmpwi r5, 0
/* 8015EFB8 0015BF18  40 81 00 40 */	ble lbl_8015EFF8
/* 8015EFBC 0015BF1C  2C 05 00 08 */	cmpwi r5, 8
/* 8015EFC0 0015BF20  38 85 FF F8 */	addi r4, r5, -8
/* 8015EFC4 0015BF24  40 81 00 20 */	ble lbl_8015EFE4
/* 8015EFC8 0015BF28  38 04 00 07 */	addi r0, r4, 7
/* 8015EFCC 0015BF2C  54 00 E8 FE */	srwi r0, r0, 3
/* 8015EFD0 0015BF30  7C 09 03 A6 */	mtctr r0
/* 8015EFD4 0015BF34  2C 04 00 00 */	cmpwi r4, 0
/* 8015EFD8 0015BF38  40 81 00 0C */	ble lbl_8015EFE4
lbl_8015EFDC:
/* 8015EFDC 0015BF3C  38 63 00 08 */	addi r3, r3, 8
/* 8015EFE0 0015BF40  42 00 FF FC */	bdnz lbl_8015EFDC
lbl_8015EFE4:
/* 8015EFE4 0015BF44  7C 03 28 50 */	subf r0, r3, r5
/* 8015EFE8 0015BF48  7C 09 03 A6 */	mtctr r0
/* 8015EFEC 0015BF4C  7C 03 28 00 */	cmpw r3, r5
/* 8015EFF0 0015BF50  40 80 00 08 */	bge lbl_8015EFF8
lbl_8015EFF4:
/* 8015EFF4 0015BF54  42 00 00 00 */	bdnz lbl_8015EFF4
lbl_8015EFF8:
/* 8015EFF8 0015BF58  38 00 00 00 */	li r0, 0
/* 8015EFFC 0015BF5C  90 1E 07 E0 */	stw r0, 0x7e0(r30)
lbl_8015F000:
/* 8015F000 0015BF60  34 1E 07 D8 */	addic. r0, r30, 0x7d8
/* 8015F004 0015BF64  41 82 00 58 */	beq lbl_8015F05C
/* 8015F008 0015BF68  80 BE 07 D8 */	lwz r5, 0x7d8(r30)
/* 8015F00C 0015BF6C  38 60 00 00 */	li r3, 0
/* 8015F010 0015BF70  2C 05 00 00 */	cmpwi r5, 0
/* 8015F014 0015BF74  40 81 00 40 */	ble lbl_8015F054
/* 8015F018 0015BF78  2C 05 00 08 */	cmpwi r5, 8
/* 8015F01C 0015BF7C  38 85 FF F8 */	addi r4, r5, -8
/* 8015F020 0015BF80  40 81 00 20 */	ble lbl_8015F040
/* 8015F024 0015BF84  38 04 00 07 */	addi r0, r4, 7
/* 8015F028 0015BF88  54 00 E8 FE */	srwi r0, r0, 3
/* 8015F02C 0015BF8C  7C 09 03 A6 */	mtctr r0
/* 8015F030 0015BF90  2C 04 00 00 */	cmpwi r4, 0
/* 8015F034 0015BF94  40 81 00 0C */	ble lbl_8015F040
lbl_8015F038:
/* 8015F038 0015BF98  38 63 00 08 */	addi r3, r3, 8
/* 8015F03C 0015BF9C  42 00 FF FC */	bdnz lbl_8015F038
lbl_8015F040:
/* 8015F040 0015BFA0  7C 03 28 50 */	subf r0, r3, r5
/* 8015F044 0015BFA4  7C 09 03 A6 */	mtctr r0
/* 8015F048 0015BFA8  7C 03 28 00 */	cmpw r3, r5
/* 8015F04C 0015BFAC  40 80 00 08 */	bge lbl_8015F054
lbl_8015F050:
/* 8015F050 0015BFB0  42 00 00 00 */	bdnz lbl_8015F050
lbl_8015F054:
/* 8015F054 0015BFB4  38 00 00 00 */	li r0, 0
/* 8015F058 0015BFB8  90 1E 07 D8 */	stw r0, 0x7d8(r30)
lbl_8015F05C:
/* 8015F05C 0015BFBC  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 8015F060 0015BFC0  41 82 00 60 */	beq lbl_8015F0C0
/* 8015F064 0015BFC4  34 1E 06 B4 */	addic. r0, r30, 0x6b4
/* 8015F068 0015BFC8  41 82 00 58 */	beq lbl_8015F0C0
/* 8015F06C 0015BFCC  80 BE 06 B4 */	lwz r5, 0x6b4(r30)
/* 8015F070 0015BFD0  38 60 00 00 */	li r3, 0
/* 8015F074 0015BFD4  2C 05 00 00 */	cmpwi r5, 0
/* 8015F078 0015BFD8  40 81 00 40 */	ble lbl_8015F0B8
/* 8015F07C 0015BFDC  2C 05 00 08 */	cmpwi r5, 8
/* 8015F080 0015BFE0  38 85 FF F8 */	addi r4, r5, -8
/* 8015F084 0015BFE4  40 81 00 20 */	ble lbl_8015F0A4
/* 8015F088 0015BFE8  38 04 00 07 */	addi r0, r4, 7
/* 8015F08C 0015BFEC  54 00 E8 FE */	srwi r0, r0, 3
/* 8015F090 0015BFF0  7C 09 03 A6 */	mtctr r0
/* 8015F094 0015BFF4  2C 04 00 00 */	cmpwi r4, 0
/* 8015F098 0015BFF8  40 81 00 0C */	ble lbl_8015F0A4
lbl_8015F09C:
/* 8015F09C 0015BFFC  38 63 00 08 */	addi r3, r3, 8
/* 8015F0A0 0015C000  42 00 FF FC */	bdnz lbl_8015F09C
lbl_8015F0A4:
/* 8015F0A4 0015C004  7C 03 28 50 */	subf r0, r3, r5
/* 8015F0A8 0015C008  7C 09 03 A6 */	mtctr r0
/* 8015F0AC 0015C00C  7C 03 28 00 */	cmpw r3, r5
/* 8015F0B0 0015C010  40 80 00 08 */	bge lbl_8015F0B8
lbl_8015F0B4:
/* 8015F0B4 0015C014  42 00 00 00 */	bdnz lbl_8015F0B4
lbl_8015F0B8:
/* 8015F0B8 0015C018  38 00 00 00 */	li r0, 0
/* 8015F0BC 0015C01C  90 1E 06 B4 */	stw r0, 0x6b4(r30)
lbl_8015F0C0:
/* 8015F0C0 0015C020  34 1E 06 90 */	addic. r0, r30, 0x690
/* 8015F0C4 0015C024  41 82 00 24 */	beq lbl_8015F0E8
/* 8015F0C8 0015C028  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 8015F0CC 0015C02C  34 1E 06 90 */	addic. r0, r30, 0x690
/* 8015F0D0 0015C030  38 03 CA F8 */	addi r0, r3, lbl_803ECAF8@l
/* 8015F0D4 0015C034  90 1E 06 90 */	stw r0, 0x690(r30)
/* 8015F0D8 0015C038  41 82 00 10 */	beq lbl_8015F0E8
/* 8015F0DC 0015C03C  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8015F0E0 0015C040  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8015F0E4 0015C044  90 1E 06 90 */	stw r0, 0x690(r30)
lbl_8015F0E8:
/* 8015F0E8 0015C048  38 7E 05 7C */	addi r3, r30, 0x57c
/* 8015F0EC 0015C04C  38 80 FF FF */	li r4, -1
/* 8015F0F0 0015C050  4B F6 E6 C9 */	bl sub_800cd7b8
/* 8015F0F4 0015C054  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8015F0F8 0015C058  41 82 00 18 */	beq lbl_8015F110
/* 8015F0FC 0015C05C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8015F100 0015C060  41 82 00 10 */	beq lbl_8015F110
/* 8015F104 0015C064  38 7E 05 6C */	addi r3, r30, 0x56c
/* 8015F108 0015C068  38 80 00 00 */	li r4, 0
/* 8015F10C 0015C06C  48 1E 1D 35 */	bl __dt__6CTokenFv
lbl_8015F110:
/* 8015F110 0015C070  7F C3 F3 78 */	mr r3, r30
/* 8015F114 0015C074  38 80 00 00 */	li r4, 0
/* 8015F118 0015C078  4B F1 84 59 */	bl __dt__10CPatternedFv
/* 8015F11C 0015C07C  7F E0 07 35 */	extsh. r0, r31
/* 8015F120 0015C080  40 81 00 0C */	ble lbl_8015F12C
/* 8015F124 0015C084  7F C3 F3 78 */	mr r3, r30
/* 8015F128 0015C088  48 1B 68 09 */	bl Free__7CMemoryFPCv
lbl_8015F12C:
/* 8015F12C 0015C08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F130 0015C090  7F C3 F3 78 */	mr r3, r30
/* 8015F134 0015C094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F138 0015C098  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015F13C 0015C09C  7C 08 03 A6 */	mtlr r0
/* 8015F140 0015C0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F144 0015C0A4  4E 80 00 20 */	blr 

.global GetSearchPath__6CDroneFv
GetSearchPath__6CDroneFv:
/* 8015F148 0015C0A8  38 63 06 B0 */	addi r3, r3, 0x6b0
/* 8015F14C 0015C0AC  4E 80 00 20 */	blr 

.global sub_8015f150
sub_8015f150:
/* 8015F150 0015C0B0  38 60 00 03 */	li r3, 3
/* 8015F154 0015C0B4  4E 80 00 20 */	blr 

.global sub_8015f158
sub_8015f158:
/* 8015F158 0015C0B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015F15C 0015C0BC  7C 08 02 A6 */	mflr r0
/* 8015F160 0015C0C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015F164 0015C0C4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8015F168 0015C0C8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8015F16C 0015C0CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015F170 0015C0D0  7C 7F 1B 78 */	mr r31, r3
/* 8015F174 0015C0D4  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F178 0015C0D8  C0 43 06 30 */	lfs f2, 0x630(r3)
/* 8015F17C 0015C0DC  FF E0 08 90 */	fmr f31, f1
/* 8015F180 0015C0E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8015F184 0015C0E4  40 81 00 0C */	ble lbl_8015F190
/* 8015F188 0015C0E8  EC 02 F8 28 */	fsubs f0, f2, f31
/* 8015F18C 0015C0EC  D0 1F 06 30 */	stfs f0, 0x630(r31)
lbl_8015F190:
/* 8015F190 0015C0F0  7F E4 FB 78 */	mr r4, r31
/* 8015F194 0015C0F4  38 61 00 18 */	addi r3, r1, 0x18
/* 8015F198 0015C0F8  4B EF 41 81 */	bl GetSfxHandle__6CActorCFv
/* 8015F19C 0015C0FC  C0 02 9F 6C */	lfs f0, lbl_805ABC8C@sda21(r2)
/* 8015F1A0 0015C100  38 61 00 14 */	addi r3, r1, 0x14
/* 8015F1A4 0015C104  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8015F1A8 0015C108  38 81 00 10 */	addi r4, r1, 0x10
/* 8015F1AC 0015C10C  EC 5F 00 24 */	fdivs f2, f31, f0
/* 8015F1B0 0015C110  C0 3F 06 34 */	lfs f1, 0x634(r31)
/* 8015F1B4 0015C114  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 8015F1B8 0015C118  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8015F1BC 0015C11C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8015F1C0 0015C120  EC 21 00 28 */	fsubs f1, f1, f0
/* 8015F1C4 0015C124  FC 00 10 50 */	fneg f0, f2
/* 8015F1C8 0015C128  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8015F1CC 0015C12C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8015F1D0 0015C130  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8015F1D4 0015C134  4B EA D0 E1 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8015F1D8 0015C138  C0 23 00 00 */	lfs f1, 0(r3)
/* 8015F1DC 0015C13C  C0 1F 06 38 */	lfs f0, 0x638(r31)
/* 8015F1E0 0015C140  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8015F1E4 0015C144  EC 00 08 2A */	fadds f0, f0, f1
/* 8015F1E8 0015C148  28 00 00 00 */	cmplwi r0, 0
/* 8015F1EC 0015C14C  D0 1F 06 38 */	stfs f0, 0x638(r31)
/* 8015F1F0 0015C150  41 82 00 50 */	beq lbl_8015F240
/* 8015F1F4 0015C154  C0 42 9F 74 */	lfs f2, lbl_805ABC94@sda21(r2)
/* 8015F1F8 0015C158  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 8015F1FC 0015C15C  C0 02 9F 70 */	lfs f0, lbl_805ABC90@sda21(r2)
/* 8015F200 0015C160  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8015F204 0015C164  48 22 A7 51 */	bl __cvt_fp2unsigned
/* 8015F208 0015C168  88 1F 08 35 */	lbz r0, 0x835(r31)
/* 8015F20C 0015C16C  7C 64 1B 78 */	mr r4, r3
/* 8015F210 0015C170  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8015F214 0015C174  41 82 00 1C */	beq lbl_8015F230
/* 8015F218 0015C178  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8015F21C 0015C17C  38 61 00 0C */	addi r3, r1, 0xc
/* 8015F220 0015C180  38 84 E0 00 */	addi r4, r4, -8192
/* 8015F224 0015C184  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015F228 0015C188  48 18 9C 85 */	bl PitchBend__11CSfxManagerF10CSfxHandlei
/* 8015F22C 0015C18C  48 00 00 14 */	b lbl_8015F240
lbl_8015F230:
/* 8015F230 0015C190  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8015F234 0015C194  38 61 00 08 */	addi r3, r1, 8
/* 8015F238 0015C198  90 01 00 08 */	stw r0, 8(r1)
/* 8015F23C 0015C19C  48 18 9C 71 */	bl PitchBend__11CSfxManagerF10CSfxHandlei
lbl_8015F240:
/* 8015F240 0015C1A0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8015F244 0015C1A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015F248 0015C1A8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8015F24C 0015C1AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015F250 0015C1B0  7C 08 03 A6 */	mtlr r0
/* 8015F254 0015C1B4  38 21 00 40 */	addi r1, r1, 0x40
/* 8015F258 0015C1B8  4E 80 00 20 */	blr 

.global sub_8015f25c
sub_8015f25c:
/* 8015F25C 0015C1BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015F260 0015C1C0  7C 08 02 A6 */	mflr r0
/* 8015F264 0015C1C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015F268 0015C1C8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8015F26C 0015C1CC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8015F270 0015C1D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015F274 0015C1D4  7C 7F 1B 78 */	mr r31, r3
/* 8015F278 0015C1D8  FF E0 08 90 */	fmr f31, f1
/* 8015F27C 0015C1DC  88 63 08 32 */	lbz r3, 0x832(r3)
/* 8015F280 0015C1E0  7C 86 23 78 */	mr r6, r4
/* 8015F284 0015C1E4  54 60 D8 06 */	rlwinm r0, r3, 0x1b, 0, 3
/* 8015F288 0015C1E8  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 8015F28C 0015C1EC  2C 00 00 02 */	cmpwi r0, 2
/* 8015F290 0015C1F0  41 82 00 68 */	beq lbl_8015F2F8
/* 8015F294 0015C1F4  40 80 00 14 */	bge lbl_8015F2A8
/* 8015F298 0015C1F8  2C 00 00 00 */	cmpwi r0, 0
/* 8015F29C 0015C1FC  41 82 00 18 */	beq lbl_8015F2B4
/* 8015F2A0 0015C200  40 80 00 34 */	bge lbl_8015F2D4
/* 8015F2A4 0015C204  48 00 00 CC */	b lbl_8015F370
lbl_8015F2A8:
/* 8015F2A8 0015C208  2C 00 00 04 */	cmpwi r0, 4
/* 8015F2AC 0015C20C  40 80 00 C4 */	bge lbl_8015F370
/* 8015F2B0 0015C210  48 00 00 88 */	b lbl_8015F338
lbl_8015F2B4:
/* 8015F2B4 0015C214  C0 3F 06 28 */	lfs f1, 0x628(r31)
/* 8015F2B8 0015C218  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F2BC 0015C21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F2C0 0015C220  40 81 00 B0 */	ble lbl_8015F370
/* 8015F2C4 0015C224  38 00 00 02 */	li r0, 2
/* 8015F2C8 0015C228  50 03 16 FA */	rlwimi r3, r0, 2, 0x1b, 0x1d
/* 8015F2CC 0015C22C  98 7F 08 32 */	stb r3, 0x832(r31)
/* 8015F2D0 0015C230  48 00 00 A0 */	b lbl_8015F370
lbl_8015F2D4:
/* 8015F2D4 0015C234  C0 3F 06 28 */	lfs f1, 0x628(r31)
/* 8015F2D8 0015C238  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F2DC 0015C23C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F2E0 0015C240  4C 40 13 82 */	cror 2, 0, 2
/* 8015F2E4 0015C244  40 82 00 8C */	bne lbl_8015F370
/* 8015F2E8 0015C248  38 00 00 03 */	li r0, 3
/* 8015F2EC 0015C24C  50 03 16 FA */	rlwimi r3, r0, 2, 0x1b, 0x1d
/* 8015F2F0 0015C250  98 7F 08 32 */	stb r3, 0x832(r31)
/* 8015F2F4 0015C254  48 00 00 7C */	b lbl_8015F370
lbl_8015F2F8:
/* 8015F2F8 0015C258  C0 02 9F 78 */	lfs f0, lbl_805ABC98@sda21(r2)
/* 8015F2FC 0015C25C  C0 5F 06 2C */	lfs f2, 0x62c(r31)
/* 8015F300 0015C260  EC 3F 00 24 */	fdivs f1, f31, f0
/* 8015F304 0015C264  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 8015F308 0015C268  EC 22 08 2A */	fadds f1, f2, f1
/* 8015F30C 0015C26C  D0 3F 06 2C */	stfs f1, 0x62c(r31)
/* 8015F310 0015C270  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 8015F314 0015C274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F318 0015C278  4C 41 13 82 */	cror 2, 1, 2
/* 8015F31C 0015C27C  40 82 00 54 */	bne lbl_8015F370
/* 8015F320 0015C280  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 8015F324 0015C284  38 60 00 01 */	li r3, 1
/* 8015F328 0015C288  88 1F 08 32 */	lbz r0, 0x832(r31)
/* 8015F32C 0015C28C  50 60 16 FA */	rlwimi r0, r3, 2, 0x1b, 0x1d
/* 8015F330 0015C290  98 1F 08 32 */	stb r0, 0x832(r31)
/* 8015F334 0015C294  48 00 00 3C */	b lbl_8015F370
lbl_8015F338:
/* 8015F338 0015C298  C0 42 9F 80 */	lfs f2, lbl_805ABCA0@sda21(r2)
/* 8015F33C 0015C29C  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 8015F340 0015C2A0  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F344 0015C2A4  EC 3F 08 BC */	fnmsubs f1, f31, f2, f1
/* 8015F348 0015C2A8  D0 3F 06 2C */	stfs f1, 0x62c(r31)
/* 8015F34C 0015C2AC  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 8015F350 0015C2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F354 0015C2B4  4C 40 13 82 */	cror 2, 0, 2
/* 8015F358 0015C2B8  40 82 00 18 */	bne lbl_8015F370
/* 8015F35C 0015C2BC  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 8015F360 0015C2C0  38 60 00 00 */	li r3, 0
/* 8015F364 0015C2C4  88 1F 08 32 */	lbz r0, 0x832(r31)
/* 8015F368 0015C2C8  50 60 16 FA */	rlwimi r0, r3, 2, 0x1b, 0x1d
/* 8015F36C 0015C2CC  98 1F 08 32 */	stb r0, 0x832(r31)
lbl_8015F370:
/* 8015F370 0015C2D0  80 66 08 B8 */	lwz r3, 0x8b8(r6)
/* 8015F374 0015C2D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8015F378 0015C2D8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8015F37C 0015C2DC  2C 00 00 03 */	cmpwi r0, 3
/* 8015F380 0015C2E0  40 82 00 40 */	bne lbl_8015F3C0
/* 8015F384 0015C2E4  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 8015F388 0015C2E8  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F38C 0015C2EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F390 0015C2F0  40 81 00 30 */	ble lbl_8015F3C0
/* 8015F394 0015C2F4  C0 06 0F 28 */	lfs f0, 0xf28(r6)
/* 8015F398 0015C2F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8015F39C 0015C2FC  38 A0 00 08 */	li r5, 8
/* 8015F3A0 0015C300  EC 00 08 2A */	fadds f0, f0, f1
/* 8015F3A4 0015C304  D0 06 0F 28 */	stfs f0, 0xf28(r6)
/* 8015F3A8 0015C308  80 66 08 4C */	lwz r3, 0x84c(r6)
/* 8015F3AC 0015C30C  A0 03 03 10 */	lhz r0, 0x310(r3)
/* 8015F3B0 0015C310  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8015F3B4 0015C314  B0 01 00 08 */	sth r0, 8(r1)
/* 8015F3B8 0015C318  80 66 08 4C */	lwz r3, 0x84c(r6)
/* 8015F3BC 0015C31C  48 01 BE 99 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
lbl_8015F3C0:
/* 8015F3C0 0015C320  C0 3F 06 28 */	lfs f1, 0x628(r31)
/* 8015F3C4 0015C324  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015F3C8 0015C328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F3CC 0015C32C  40 81 00 0C */	ble lbl_8015F3D8
/* 8015F3D0 0015C330  EC 01 F8 28 */	fsubs f0, f1, f31
/* 8015F3D4 0015C334  D0 1F 06 28 */	stfs f0, 0x628(r31)
lbl_8015F3D8:
/* 8015F3D8 0015C338  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8015F3DC 0015C33C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015F3E0 0015C340  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8015F3E4 0015C344  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015F3E8 0015C348  7C 08 03 A6 */	mtlr r0
/* 8015F3EC 0015C34C  38 21 00 30 */	addi r1, r1, 0x30
/* 8015F3F0 0015C350  4E 80 00 20 */	blr 

.global sub_8015f3f4
sub_8015f3f4:
/* 8015F3F4 0015C354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015F3F8 0015C358  7C 08 02 A6 */	mflr r0
/* 8015F3FC 0015C35C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015F400 0015C360  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015F404 0015C364  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8015F408 0015C368  7C 7E 1B 78 */	mr r30, r3
/* 8015F40C 0015C36C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015F410 0015C370  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 8015F414 0015C374  7C 03 00 40 */	cmplw r3, r0
/* 8015F418 0015C378  41 82 00 68 */	beq lbl_8015F480
/* 8015F41C 0015C37C  A0 1E 06 88 */	lhz r0, 0x688(r30)
/* 8015F420 0015C380  7C 83 23 78 */	mr r3, r4
/* 8015F424 0015C384  38 81 00 18 */	addi r4, r1, 0x18
/* 8015F428 0015C388  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8015F42C 0015C38C  4B EE D1 49 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8015F430 0015C390  7C 64 1B 78 */	mr r4, r3
/* 8015F434 0015C394  38 61 00 1C */	addi r3, r1, 0x1c
/* 8015F438 0015C398  4B F4 81 3D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8015F43C 0015C39C  83 E3 00 04 */	lwz r31, 4(r3)
/* 8015F440 0015C3A0  28 1F 00 00 */	cmplwi r31, 0
/* 8015F444 0015C3A4  41 82 00 3C */	beq lbl_8015F480
/* 8015F448 0015C3A8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8015F44C 0015C3AC  7F E3 FB 78 */	mr r3, r31
/* 8015F450 0015C3B0  38 81 00 14 */	addi r4, r1, 0x14
/* 8015F454 0015C3B4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8015F458 0015C3B8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8015F45C 0015C3BC  48 0D 9B 95 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 8015F460 0015C3C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015F464 0015C3C4  41 82 00 1C */	beq lbl_8015F480
/* 8015F468 0015C3C8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8015F46C 0015C3CC  7F E3 FB 78 */	mr r3, r31
/* 8015F470 0015C3D0  38 81 00 0C */	addi r4, r1, 0xc
/* 8015F474 0015C3D4  B0 01 00 08 */	sth r0, 8(r1)
/* 8015F478 0015C3D8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8015F47C 0015C3DC  48 0D A0 79 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_8015F480:
/* 8015F480 0015C3E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015F484 0015C3E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015F488 0015C3E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8015F48C 0015C3EC  7C 08 03 A6 */	mtlr r0
/* 8015F490 0015C3F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8015F494 0015C3F4  4E 80 00 20 */	blr 

.global sub_8015f498
sub_8015f498:
/* 8015F498 0015C3F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015F49C 0015C3FC  7C 08 02 A6 */	mflr r0
/* 8015F4A0 0015C400  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015F4A4 0015C404  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015F4A8 0015C408  7C 7F 1B 78 */	mr r31, r3
/* 8015F4AC 0015C40C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015F4B0 0015C410  A0 63 06 88 */	lhz r3, 0x688(r3)
/* 8015F4B4 0015C414  7C 03 00 40 */	cmplw r3, r0
/* 8015F4B8 0015C418  41 82 00 44 */	beq lbl_8015F4FC
/* 8015F4BC 0015C41C  A0 1F 06 88 */	lhz r0, 0x688(r31)
/* 8015F4C0 0015C420  7C 83 23 78 */	mr r3, r4
/* 8015F4C4 0015C424  38 81 00 08 */	addi r4, r1, 8
/* 8015F4C8 0015C428  B0 01 00 08 */	sth r0, 8(r1)
/* 8015F4CC 0015C42C  4B EE D0 A9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8015F4D0 0015C430  7C 64 1B 78 */	mr r4, r3
/* 8015F4D4 0015C434  38 61 00 0C */	addi r3, r1, 0xc
/* 8015F4D8 0015C438  4B F4 80 9D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 8015F4DC 0015C43C  80 63 00 04 */	lwz r3, 4(r3)
/* 8015F4E0 0015C440  28 03 00 00 */	cmplwi r3, 0
/* 8015F4E4 0015C444  41 82 00 18 */	beq lbl_8015F4FC
/* 8015F4E8 0015C448  7F E4 FB 78 */	mr r4, r31
/* 8015F4EC 0015C44C  38 A0 00 02 */	li r5, 2
/* 8015F4F0 0015C450  38 C0 00 01 */	li r6, 1
/* 8015F4F4 0015C454  38 E0 FF FF */	li r7, -1
/* 8015F4F8 0015C458  48 0D A2 B5 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_8015F4FC:
/* 8015F4FC 0015C45C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015F500 0015C460  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015F504 0015C464  7C 08 03 A6 */	mtlr r0
/* 8015F508 0015C468  38 21 00 20 */	addi r1, r1, 0x20
/* 8015F50C 0015C46C  4E 80 00 20 */	blr 

.global sub_8015f510
sub_8015f510:
/* 8015F510 0015C470  94 21 F7 50 */	stwu r1, -0x8b0(r1)
/* 8015F514 0015C474  7C 08 02 A6 */	mflr r0
/* 8015F518 0015C478  90 01 08 B4 */	stw r0, 0x8b4(r1)
/* 8015F51C 0015C47C  DB E1 08 A0 */	stfd f31, 0x8a0(r1)
/* 8015F520 0015C480  F3 E1 08 A8 */	psq_st f31, -1880(r1), 0, qr0
/* 8015F524 0015C484  DB C1 08 90 */	stfd f30, 0x890(r1)
/* 8015F528 0015C488  F3 C1 08 98 */	psq_st f30, -1896(r1), 0, qr0
/* 8015F52C 0015C48C  DB A1 08 80 */	stfd f29, 0x880(r1)
/* 8015F530 0015C490  F3 A1 08 88 */	psq_st f29, -1912(r1), 0, qr0
/* 8015F534 0015C494  DB 81 08 70 */	stfd f28, 0x870(r1)
/* 8015F538 0015C498  F3 81 08 78 */	psq_st f28, -1928(r1), 0, qr0
/* 8015F53C 0015C49C  93 E1 08 6C */	stw r31, 0x86c(r1)
/* 8015F540 0015C4A0  93 C1 08 68 */	stw r30, 0x868(r1)
/* 8015F544 0015C4A4  93 A1 08 64 */	stw r29, 0x864(r1)
/* 8015F548 0015C4A8  93 81 08 60 */	stw r28, 0x860(r1)
/* 8015F54C 0015C4AC  7C 7F 1B 78 */	mr r31, r3
/* 8015F550 0015C4B0  7C 9C 23 78 */	mr r28, r4
/* 8015F554 0015C4B4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8015F558 0015C4B8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8015F55C 0015C4BC  2C 00 00 03 */	cmpwi r0, 3
/* 8015F560 0015C4C0  41 82 02 EC */	beq lbl_8015F84C
/* 8015F564 0015C4C4  38 00 00 00 */	li r0, 0
/* 8015F568 0015C4C8  7F 87 E3 78 */	mr r7, r28
/* 8015F56C 0015C4CC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8015F570 0015C4D0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 8015F574 0015C4D4  38 80 00 21 */	li r4, 0x21
/* 8015F578 0015C4D8  38 A0 00 20 */	li r5, 0x20
/* 8015F57C 0015C4DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8015F580 0015C4E0  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 8015F584 0015C4E4  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8015F588 0015C4E8  7D 89 03 A6 */	mtctr r12
/* 8015F58C 0015C4EC  4E 80 04 21 */	bctrl 
/* 8015F590 0015C4F0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8015F594 0015C4F4  2C 00 00 00 */	cmpwi r0, 0
/* 8015F598 0015C4F8  40 81 02 60 */	ble lbl_8015F7F8
/* 8015F59C 0015C4FC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8015F5A0 0015C500  C7 E3 66 A0 */	lfsu f31, skZero3f@l(r3)
/* 8015F5A4 0015C504  C3 82 9F 84 */	lfs f28, lbl_805ABCA4@sda21(r2)
/* 8015F5A8 0015C508  3B C1 00 60 */	addi r30, r1, 0x60
/* 8015F5AC 0015C50C  C3 C3 00 04 */	lfs f30, 4(r3)
/* 8015F5B0 0015C510  3B A0 00 00 */	li r29, 0
/* 8015F5B4 0015C514  C3 A3 00 08 */	lfs f29, 8(r3)
/* 8015F5B8 0015C518  48 00 00 A0 */	b lbl_8015F658
lbl_8015F5BC:
/* 8015F5BC 0015C51C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8015F5C0 0015C520  7F 83 E3 78 */	mr r3, r28
/* 8015F5C4 0015C524  38 81 00 08 */	addi r4, r1, 8
/* 8015F5C8 0015C528  B0 01 00 08 */	sth r0, 8(r1)
/* 8015F5CC 0015C52C  4B EE CF D9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8015F5D0 0015C530  28 03 00 00 */	cmplwi r3, 0
/* 8015F5D4 0015C534  41 82 00 7C */	beq lbl_8015F650
/* 8015F5D8 0015C538  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 8015F5DC 0015C53C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8015F5E0 0015C540  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 8015F5E4 0015C544  EC C7 00 28 */	fsubs f6, f7, f0
/* 8015F5E8 0015C548  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8015F5EC 0015C54C  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 8015F5F0 0015C550  EC 64 00 28 */	fsubs f3, f4, f0
/* 8015F5F4 0015C554  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8015F5F8 0015C558  EC 06 01 B2 */	fmuls f0, f6, f6
/* 8015F5FC 0015C55C  EC A8 08 28 */	fsubs f5, f8, f1
/* 8015F600 0015C560  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8015F604 0015C564  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8015F608 0015C568  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8015F60C 0015C56C  EC 45 01 72 */	fmuls f2, f5, f5
/* 8015F610 0015C570  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8015F614 0015C574  EC 01 00 2A */	fadds f0, f1, f0
/* 8015F618 0015C578  7C 03 00 40 */	cmplw r3, r0
/* 8015F61C 0015C57C  D0 E1 00 48 */	stfs f7, 0x48(r1)
/* 8015F620 0015C580  EC 02 00 2A */	fadds f0, f2, f0
/* 8015F624 0015C584  D1 01 00 4C */	stfs f8, 0x4c(r1)
/* 8015F628 0015C588  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 8015F62C 0015C58C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8015F630 0015C590  D0 A1 00 58 */	stfs f5, 0x58(r1)
/* 8015F634 0015C594  41 82 00 1C */	beq lbl_8015F650
/* 8015F638 0015C598  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8015F63C 0015C59C  40 80 00 14 */	bge lbl_8015F650
/* 8015F640 0015C5A0  FF E0 20 90 */	fmr f31, f4
/* 8015F644 0015C5A4  FF C0 38 90 */	fmr f30, f7
/* 8015F648 0015C5A8  FF A0 40 90 */	fmr f29, f8
/* 8015F64C 0015C5AC  FF 80 00 90 */	fmr f28, f0
lbl_8015F650:
/* 8015F650 0015C5B0  3B DE 00 02 */	addi r30, r30, 2
/* 8015F654 0015C5B4  3B BD 00 01 */	addi r29, r29, 1
lbl_8015F658:
/* 8015F658 0015C5B8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8015F65C 0015C5BC  7C 1D 00 00 */	cmpw r29, r0
/* 8015F660 0015C5C0  41 80 FF 5C */	blt lbl_8015F5BC
/* 8015F664 0015C5C4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8015F668 0015C5C8  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 8015F66C 0015C5CC  38 00 00 00 */	li r0, 0
/* 8015F670 0015C5D0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 8015F674 0015C5D4  40 82 00 20 */	bne lbl_8015F694
/* 8015F678 0015C5D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015F67C 0015C5DC  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 8015F680 0015C5E0  40 82 00 14 */	bne lbl_8015F694
/* 8015F684 0015C5E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015F688 0015C5E8  FC 1D 00 00 */	fcmpu cr0, f29, f0
/* 8015F68C 0015C5EC  40 82 00 08 */	bne lbl_8015F694
/* 8015F690 0015C5F0  38 00 00 01 */	li r0, 1
lbl_8015F694:
/* 8015F694 0015C5F4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8015F698 0015C5F8  40 82 01 60 */	bne lbl_8015F7F8
/* 8015F69C 0015C5FC  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 8015F6A0 0015C600  EC 00 00 32 */	fmuls f0, f0, f0
/* 8015F6A4 0015C604  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 8015F6A8 0015C608  40 80 01 50 */	bge lbl_8015F7F8
/* 8015F6AC 0015C60C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8015F6B0 0015C610  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8015F6B4 0015C614  EC BE 08 28 */	fsubs f5, f30, f1
/* 8015F6B8 0015C618  C0 DF 00 44 */	lfs f6, 0x44(r31)
/* 8015F6BC 0015C61C  EC 7F 00 28 */	fsubs f3, f31, f0
/* 8015F6C0 0015C620  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8015F6C4 0015C624  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 8015F6C8 0015C628  EC 26 01 72 */	fmuls f1, f6, f5
/* 8015F6CC 0015C62C  EC 9D 00 28 */	fsubs f4, f29, f0
/* 8015F6D0 0015C630  C0 FF 00 54 */	lfs f7, 0x54(r31)
/* 8015F6D4 0015C634  C0 02 9F 88 */	lfs f0, lbl_805ABCA8@sda21(r2)
/* 8015F6D8 0015C638  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 8015F6DC 0015C63C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8015F6E0 0015C640  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8015F6E4 0015C644  EC 27 09 3A */	fmadds f1, f7, f4, f1
/* 8015F6E8 0015C648  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8015F6EC 0015C64C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F6F0 0015C650  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8015F6F4 0015C654  D0 C1 00 3C */	stfs f6, 0x3c(r1)
/* 8015F6F8 0015C658  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 8015F6FC 0015C65C  40 80 00 7C */	bge lbl_8015F778
/* 8015F700 0015C660  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8015F704 0015C664  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8015F708 0015C668  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8015F70C 0015C66C  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8015F710 0015C670  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015F714 0015C674  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 8015F718 0015C678  38 80 00 01 */	li r4, 1
/* 8015F71C 0015C67C  38 A0 00 03 */	li r5, 3
/* 8015F720 0015C680  38 00 00 00 */	li r0, 0
/* 8015F724 0015C684  3B E3 00 04 */	addi r31, r3, 4
/* 8015F728 0015C688  90 81 00 20 */	stw r4, 0x20(r1)
/* 8015F72C 0015C68C  7F E3 FB 78 */	mr r3, r31
/* 8015F730 0015C690  38 80 00 01 */	li r4, 1
/* 8015F734 0015C694  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8015F738 0015C698  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8015F73C 0015C69C  90 01 00 28 */	stw r0, 0x28(r1)
/* 8015F740 0015C6A0  4B FD 1C F9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8015F744 0015C6A4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8015F748 0015C6A8  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8015F74C 0015C6AC  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8015F750 0015C6B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015F754 0015C6B4  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8015F758 0015C6B8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8015F75C 0015C6BC  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8015F760 0015C6C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8015F764 0015C6C4  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8015F768 0015C6C8  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8015F76C 0015C6CC  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8015F770 0015C6D0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015F774 0015C6D4  48 00 00 84 */	b lbl_8015F7F8
lbl_8015F778:
/* 8015F778 0015C6D8  C0 02 9F 8C */	lfs f0, lbl_805ABCAC@sda21(r2)
/* 8015F77C 0015C6DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F780 0015C6E0  40 81 00 78 */	ble lbl_8015F7F8
/* 8015F784 0015C6E4  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8015F788 0015C6E8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8015F78C 0015C6EC  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8015F790 0015C6F0  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 8015F794 0015C6F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015F798 0015C6F8  38 C4 A9 E4 */	addi r6, r4, lbl_803DA9E4@l
/* 8015F79C 0015C6FC  38 80 00 01 */	li r4, 1
/* 8015F7A0 0015C700  38 A0 00 02 */	li r5, 2
/* 8015F7A4 0015C704  38 00 00 00 */	li r0, 0
/* 8015F7A8 0015C708  3B E3 00 04 */	addi r31, r3, 4
/* 8015F7AC 0015C70C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8015F7B0 0015C710  7F E3 FB 78 */	mr r3, r31
/* 8015F7B4 0015C714  38 80 00 01 */	li r4, 1
/* 8015F7B8 0015C718  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8015F7BC 0015C71C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8015F7C0 0015C720  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015F7C4 0015C724  4B FD 1C 75 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8015F7C8 0015C728  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8015F7CC 0015C72C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8015F7D0 0015C730  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8015F7D4 0015C734  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015F7D8 0015C738  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8015F7DC 0015C73C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8015F7E0 0015C740  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8015F7E4 0015C744  90 81 00 0C */	stw r4, 0xc(r1)
/* 8015F7E8 0015C748  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8015F7EC 0015C74C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8015F7F0 0015C750  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8015F7F4 0015C754  90 01 00 0C */	stw r0, 0xc(r1)
lbl_8015F7F8:
/* 8015F7F8 0015C758  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 8015F7FC 0015C75C  38 60 00 00 */	li r3, 0
/* 8015F800 0015C760  2C 05 00 00 */	cmpwi r5, 0
/* 8015F804 0015C764  40 81 00 40 */	ble lbl_8015F844
/* 8015F808 0015C768  2C 05 00 08 */	cmpwi r5, 8
/* 8015F80C 0015C76C  38 85 FF F8 */	addi r4, r5, -8
/* 8015F810 0015C770  40 81 00 20 */	ble lbl_8015F830
/* 8015F814 0015C774  38 04 00 07 */	addi r0, r4, 7
/* 8015F818 0015C778  54 00 E8 FE */	srwi r0, r0, 3
/* 8015F81C 0015C77C  7C 09 03 A6 */	mtctr r0
/* 8015F820 0015C780  2C 04 00 00 */	cmpwi r4, 0
/* 8015F824 0015C784  40 81 00 0C */	ble lbl_8015F830
lbl_8015F828:
/* 8015F828 0015C788  38 63 00 08 */	addi r3, r3, 8
/* 8015F82C 0015C78C  42 00 FF FC */	bdnz lbl_8015F828
lbl_8015F830:
/* 8015F830 0015C790  7C 03 28 50 */	subf r0, r3, r5
/* 8015F834 0015C794  7C 09 03 A6 */	mtctr r0
/* 8015F838 0015C798  7C 03 28 00 */	cmpw r3, r5
/* 8015F83C 0015C79C  40 80 00 08 */	bge lbl_8015F844
lbl_8015F840:
/* 8015F840 0015C7A0  42 00 00 00 */	bdnz lbl_8015F840
lbl_8015F844:
/* 8015F844 0015C7A4  38 00 00 00 */	li r0, 0
/* 8015F848 0015C7A8  90 01 00 5C */	stw r0, 0x5c(r1)
lbl_8015F84C:
/* 8015F84C 0015C7AC  E3 E1 08 A8 */	psq_l f31, -1880(r1), 0, qr0
/* 8015F850 0015C7B0  CB E1 08 A0 */	lfd f31, 0x8a0(r1)
/* 8015F854 0015C7B4  E3 C1 08 98 */	psq_l f30, -1896(r1), 0, qr0
/* 8015F858 0015C7B8  CB C1 08 90 */	lfd f30, 0x890(r1)
/* 8015F85C 0015C7BC  E3 A1 08 88 */	psq_l f29, -1912(r1), 0, qr0
/* 8015F860 0015C7C0  CB A1 08 80 */	lfd f29, 0x880(r1)
/* 8015F864 0015C7C4  E3 81 08 78 */	psq_l f28, -1928(r1), 0, qr0
/* 8015F868 0015C7C8  CB 81 08 70 */	lfd f28, 0x870(r1)
/* 8015F86C 0015C7CC  83 E1 08 6C */	lwz r31, 0x86c(r1)
/* 8015F870 0015C7D0  83 C1 08 68 */	lwz r30, 0x868(r1)
/* 8015F874 0015C7D4  83 A1 08 64 */	lwz r29, 0x864(r1)
/* 8015F878 0015C7D8  80 01 08 B4 */	lwz r0, 0x8b4(r1)
/* 8015F87C 0015C7DC  83 81 08 60 */	lwz r28, 0x860(r1)
/* 8015F880 0015C7E0  7C 08 03 A6 */	mtlr r0
/* 8015F884 0015C7E4  38 21 08 B0 */	addi r1, r1, 0x8b0
/* 8015F888 0015C7E8  4E 80 00 20 */	blr 

.global Burn__6CDroneFff
Burn__6CDroneFff:
/* 8015F88C 0015C7EC  4E 80 00 20 */	blr 

.global CanRenderUnsorted__6CDroneCFRC13CStateManager
CanRenderUnsorted__6CDroneCFRC13CStateManager:
/* 8015F890 0015C7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F894 0015C7F4  7C 08 02 A6 */	mflr r0
/* 8015F898 0015C7F8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 8015F89C 0015C7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F8A0 0015C800  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 8015F8A4 0015C804  C0 43 05 DC */	lfs f2, 0x5dc(r3)
/* 8015F8A8 0015C808  EC 22 08 28 */	fsubs f1, f2, f1
/* 8015F8AC 0015C80C  FC 20 0A 10 */	fabs f1, f1
/* 8015F8B0 0015C810  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015F8B4 0015C814  40 80 00 0C */	bge lbl_8015F8C0
/* 8015F8B8 0015C818  4B F1 89 E9 */	bl CanRenderUnsorted__10CPatternedCFRC13CStateManager
/* 8015F8BC 0015C81C  48 00 00 08 */	b lbl_8015F8C4
lbl_8015F8C0:
/* 8015F8C0 0015C820  38 60 00 00 */	li r3, 0
lbl_8015F8C4:
/* 8015F8C4 0015C824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F8C8 0015C828  7C 08 03 A6 */	mtlr r0
/* 8015F8CC 0015C82C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F8D0 0015C830  4E 80 00 20 */	blr 

.global Cover__6CDroneFR13CStateManager9EStateMsgf
Cover__6CDroneFR13CStateManager9EStateMsgf:
/* 8015F8D4 0015C834  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 8015F8D8 0015C838  7C 08 02 A6 */	mflr r0
/* 8015F8DC 0015C83C  90 01 01 74 */	stw r0, 0x174(r1)
/* 8015F8E0 0015C840  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 8015F8E4 0015C844  F3 E1 01 68 */	psq_st f31, 360(r1), 0, qr0
/* 8015F8E8 0015C848  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 8015F8EC 0015C84C  F3 C1 01 58 */	psq_st f30, 344(r1), 0, qr0
/* 8015F8F0 0015C850  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 8015F8F4 0015C854  F3 A1 01 48 */	psq_st f29, 328(r1), 0, qr0
/* 8015F8F8 0015C858  DB 81 01 30 */	stfd f28, 0x130(r1)
/* 8015F8FC 0015C85C  F3 81 01 38 */	psq_st f28, 312(r1), 0, qr0
/* 8015F900 0015C860  DB 61 01 20 */	stfd f27, 0x120(r1)
/* 8015F904 0015C864  F3 61 01 28 */	psq_st f27, 296(r1), 0, qr0
/* 8015F908 0015C868  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8015F90C 0015C86C  93 C1 01 18 */	stw r30, 0x118(r1)
/* 8015F910 0015C870  93 A1 01 14 */	stw r29, 0x114(r1)
/* 8015F914 0015C874  FF 60 08 90 */	fmr f27, f1
/* 8015F918 0015C878  2C 05 00 01 */	cmpwi r5, 1
/* 8015F91C 0015C87C  7C 7D 1B 78 */	mr r29, r3
/* 8015F920 0015C880  7C 9E 23 78 */	mr r30, r4
/* 8015F924 0015C884  41 82 02 90 */	beq lbl_8015FBB4
/* 8015F928 0015C888  40 80 00 10 */	bge lbl_8015F938
/* 8015F92C 0015C88C  2C 05 00 00 */	cmpwi r5, 0
/* 8015F930 0015C890  40 80 00 14 */	bge lbl_8015F944
/* 8015F934 0015C894  48 00 03 F0 */	b lbl_8015FD24
lbl_8015F938:
/* 8015F938 0015C898  2C 05 00 03 */	cmpwi r5, 3
/* 8015F93C 0015C89C  40 80 03 E8 */	bge lbl_8015FD24
/* 8015F940 0015C8A0  48 00 03 C8 */	b lbl_8015FD08
lbl_8015F944:
/* 8015F944 0015C8A4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8015F948 0015C8A8  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 8015F94C 0015C8AC  C3 E2 9F 68 */	lfs f31, lbl_805ABC88@sda21(r2)
/* 8015F950 0015C8B0  3B E0 00 00 */	li r31, 0
/* 8015F954 0015C8B4  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8015F958 0015C8B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8015F95C 0015C8BC  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 8015F960 0015C8C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8015F964 0015C8C4  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8015F968 0015C8C8  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8015F96C 0015C8CC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8015F970 0015C8D0  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8015F974 0015C8D4  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 8015F978 0015C8D8  D0 3D 06 74 */	stfs f1, 0x674(r29)
/* 8015F97C 0015C8DC  D0 5D 06 78 */	stfs f2, 0x678(r29)
lbl_8015F980:
/* 8015F980 0015C8E0  C3 7D 06 48 */	lfs f27, 0x648(r29)
/* 8015F984 0015C8E4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8015F988 0015C8E8  48 1B 2B 55 */	bl Float__9CRandom16Fv
/* 8015F98C 0015C8EC  C0 1D 06 4C */	lfs f0, 0x64c(r29)
/* 8015F990 0015C8F0  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8015F994 0015C8F4  EC 00 D8 28 */	fsubs f0, f0, f27
/* 8015F998 0015C8F8  EF C0 D8 7A */	fmadds f30, f0, f1, f27
/* 8015F99C 0015C8FC  48 1B 2B 85 */	bl Next__9CRandom16Fv
/* 8015F9A0 0015C900  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8015F9A4 0015C904  D3 E1 00 08 */	stfs f31, 8(r1)
/* 8015F9A8 0015C908  41 82 00 38 */	beq lbl_8015F9E0
/* 8015F9AC 0015C90C  C0 42 9F 94 */	lfs f2, lbl_805ABCB4@sda21(r2)
/* 8015F9B0 0015C910  C0 3D 06 50 */	lfs f1, 0x650(r29)
/* 8015F9B4 0015C914  C0 1D 06 54 */	lfs f0, 0x654(r29)
/* 8015F9B8 0015C918  EF 62 08 28 */	fsubs f27, f2, f1
/* 8015F9BC 0015C91C  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8015F9C0 0015C920  EF 82 00 2A */	fadds f28, f2, f0
/* 8015F9C4 0015C924  48 1B 2B 19 */	bl Float__9CRandom16Fv
/* 8015F9C8 0015C928  EC 5C D8 28 */	fsubs f2, f28, f27
/* 8015F9CC 0015C92C  C0 02 9F 98 */	lfs f0, lbl_805ABCB8@sda21(r2)
/* 8015F9D0 0015C930  EC 22 D8 7A */	fmadds f1, f2, f1, f27
/* 8015F9D4 0015C934  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015F9D8 0015C938  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015F9DC 0015C93C  48 00 00 34 */	b lbl_8015FA10
lbl_8015F9E0:
/* 8015F9E0 0015C940  C0 42 9F 9C */	lfs f2, lbl_805ABCBC@sda21(r2)
/* 8015F9E4 0015C944  C0 3D 06 54 */	lfs f1, 0x654(r29)
/* 8015F9E8 0015C948  C0 1D 06 50 */	lfs f0, 0x650(r29)
/* 8015F9EC 0015C94C  EF 62 08 28 */	fsubs f27, f2, f1
/* 8015F9F0 0015C950  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8015F9F4 0015C954  EF 82 00 2A */	fadds f28, f2, f0
/* 8015F9F8 0015C958  48 1B 2A E5 */	bl Float__9CRandom16Fv
/* 8015F9FC 0015C95C  EC 5C D8 28 */	fsubs f2, f28, f27
/* 8015FA00 0015C960  C0 02 9F 98 */	lfs f0, lbl_805ABCB8@sda21(r2)
/* 8015FA04 0015C964  EC 22 D8 7A */	fmadds f1, f2, f1, f27
/* 8015FA08 0015C968  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015FA0C 0015C96C  D0 01 00 08 */	stfs f0, 8(r1)
lbl_8015FA10:
/* 8015FA10 0015C970  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8015FA14 0015C974  7F C5 F3 78 */	mr r5, r30
/* 8015FA18 0015C978  38 61 00 94 */	addi r3, r1, 0x94
/* 8015FA1C 0015C97C  C3 7D 00 60 */	lfs f27, 0x60(r29)
/* 8015FA20 0015C980  81 84 00 00 */	lwz r12, 0(r4)
/* 8015FA24 0015C984  C3 9D 00 50 */	lfs f28, 0x50(r29)
/* 8015FA28 0015C988  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8015FA2C 0015C98C  C3 BD 00 40 */	lfs f29, 0x40(r29)
/* 8015FA30 0015C990  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 8015FA34 0015C994  7D 89 03 A6 */	mtctr r12
/* 8015FA38 0015C998  4E 80 04 21 */	bctrl 
/* 8015FA3C 0015C99C  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8015FA40 0015C9A0  38 61 00 AC */	addi r3, r1, 0xac
/* 8015FA44 0015C9A4  C0 21 00 9C */	lfs f1, 0x9c(r1)
/* 8015FA48 0015C9A8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8015FA4C 0015C9AC  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8015FA50 0015C9B0  EC 42 E0 28 */	fsubs f2, f2, f28
/* 8015FA54 0015C9B4  EC 21 D8 28 */	fsubs f1, f1, f27
/* 8015FA58 0015C9B8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8015FA5C 0015C9BC  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 8015FA60 0015C9C0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8015FA64 0015C9C4  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8015FA68 0015C9C8  48 1B 4D E9 */	bl AsNormalized__9CVector3fCFv
/* 8015FA6C 0015C9CC  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 8015FA70 0015C9D0  38 61 00 78 */	addi r3, r1, 0x78
/* 8015FA74 0015C9D4  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 8015FA78 0015C9D8  38 81 00 08 */	addi r4, r1, 8
/* 8015FA7C 0015C9DC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8015FA80 0015C9E0  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8015FA84 0015C9E4  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8015FA88 0015C9E8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8015FA8C 0015C9EC  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8015FA90 0015C9F0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8015FA94 0015C9F4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8015FA98 0015C9F8  48 1B 16 61 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8015FA9C 0015C9FC  38 61 00 88 */	addi r3, r1, 0x88
/* 8015FAA0 0015CA00  38 81 00 78 */	addi r4, r1, 0x78
/* 8015FAA4 0015CA04  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8015FAA8 0015CA08  48 1B 17 BD */	bl Transform__11CQuaternionCFRC9CVector3f
/* 8015FAAC 0015CA0C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8015FAB0 0015CA10  38 60 00 00 */	li r3, 0
/* 8015FAB4 0015CA14  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8015FAB8 0015CA18  38 80 00 01 */	li r4, 1
/* 8015FABC 0015CA1C  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 8015FAC0 0015CA20  EC 81 00 2A */	fadds f4, f1, f0
/* 8015FAC4 0015CA24  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 8015FAC8 0015CA28  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8015FACC 0015CA2C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8015FAD0 0015CA30  EC 43 10 2A */	fadds f2, f3, f2
/* 8015FAD4 0015CA34  80 AD 8D 84 */	lwz r5, lbl_805A7944@sda21(r13)
/* 8015FAD8 0015CA38  EC 01 00 2A */	fadds f0, f1, f0
/* 8015FADC 0015CA3C  D0 81 00 D4 */	stfs f4, 0xd4(r1)
/* 8015FAE0 0015CA40  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 8015FAE4 0015CA44  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8015FAE8 0015CA48  48 22 A4 0D */	bl __shl2i
/* 8015FAEC 0015CA4C  39 00 00 00 */	li r8, 0
/* 8015FAF0 0015CA50  38 00 00 01 */	li r0, 1
/* 8015FAF4 0015CA54  90 81 00 FC */	stw r4, 0xfc(r1)
/* 8015FAF8 0015CA58  7F A7 EB 78 */	mr r7, r29
/* 8015FAFC 0015CA5C  38 81 00 60 */	addi r4, r1, 0x60
/* 8015FB00 0015CA60  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 8015FB04 0015CA64  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 8015FB08 0015CA68  7F C3 F3 78 */	mr r3, r30
/* 8015FB0C 0015CA6C  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 8015FB10 0015CA70  91 01 01 04 */	stw r8, 0x104(r1)
/* 8015FB14 0015CA74  91 01 01 00 */	stw r8, 0x100(r1)
/* 8015FB18 0015CA78  90 01 01 08 */	stw r0, 0x108(r1)
/* 8015FB1C 0015CA7C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8015FB20 0015CA80  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8015FB24 0015CA84  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8015FB28 0015CA88  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8015FB2C 0015CA8C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8015FB30 0015CA90  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8015FB34 0015CA94  4B EE D3 09 */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 8015FB38 0015CA98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015FB3C 0015CA9C  41 82 00 68 */	beq lbl_8015FBA4
/* 8015FB40 0015CAA0  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8015FB44 0015CAA4  38 7D 06 7C */	addi r3, r29, 0x67c
/* 8015FB48 0015CAA8  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 8015FB4C 0015CAAC  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8015FB50 0015CAB0  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8015FB54 0015CAB4  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8015FB58 0015CAB8  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8015FB5C 0015CABC  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 8015FB60 0015CAC0  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8015FB64 0015CAC4  C0 81 00 D4 */	lfs f4, 0xd4(r1)
/* 8015FB68 0015CAC8  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 8015FB6C 0015CACC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8015FB70 0015CAD0  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 8015FB74 0015CAD4  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 8015FB78 0015CAD8  EC 64 18 28 */	fsubs f3, f4, f3
/* 8015FB7C 0015CADC  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8015FB80 0015CAE0  EC 02 08 28 */	fsubs f0, f2, f1
/* 8015FB84 0015CAE4  D0 7D 06 80 */	stfs f3, 0x680(r29)
/* 8015FB88 0015CAE8  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8015FB8C 0015CAEC  48 1B 4B 6D */	bl CanBeNormalized__9CVector3fCFv
/* 8015FB90 0015CAF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015FB94 0015CAF4  41 82 01 90 */	beq lbl_8015FD24
/* 8015FB98 0015CAF8  38 7D 06 7C */	addi r3, r29, 0x67c
/* 8015FB9C 0015CAFC  48 1B 4D 5D */	bl Normalize__9CVector3fFv
/* 8015FBA0 0015CB00  48 00 01 84 */	b lbl_8015FD24
lbl_8015FBA4:
/* 8015FBA4 0015CB04  3B FF 00 01 */	addi r31, r31, 1
/* 8015FBA8 0015CB08  2C 1F 00 04 */	cmpwi r31, 4
/* 8015FBAC 0015CB0C  41 80 FD D4 */	blt lbl_8015F980
/* 8015FBB0 0015CB10  48 00 01 74 */	b lbl_8015FD24
lbl_8015FBB4:
/* 8015FBB4 0015CB14  C0 7D 06 58 */	lfs f3, 0x658(r29)
/* 8015FBB8 0015CB18  38 61 00 48 */	addi r3, r1, 0x48
/* 8015FBBC 0015CB1C  C0 5D 06 80 */	lfs f2, 0x680(r29)
/* 8015FBC0 0015CB20  38 9D 00 34 */	addi r4, r29, 0x34
/* 8015FBC4 0015CB24  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 8015FBC8 0015CB28  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8015FBCC 0015CB2C  C0 1D 06 7C */	lfs f0, 0x67c(r29)
/* 8015FBD0 0015CB30  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8015FBD4 0015CB34  EC 23 00 72 */	fmuls f1, f3, f1
/* 8015FBD8 0015CB38  EC 03 00 32 */	fmuls f0, f3, f0
/* 8015FBDC 0015CB3C  EC 5B 00 B2 */	fmuls f2, f27, f2
/* 8015FBE0 0015CB40  EC 3B 00 72 */	fmuls f1, f27, f1
/* 8015FBE4 0015CB44  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8015FBE8 0015CB48  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 8015FBEC 0015CB4C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8015FBF0 0015CB50  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 8015FBF4 0015CB54  48 1B 2E 31 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8015FBF8 0015CB58  FC 20 D8 90 */	fmr f1, f27
/* 8015FBFC 0015CB5C  7F A4 EB 78 */	mr r4, r29
/* 8015FC00 0015CB60  38 61 00 54 */	addi r3, r1, 0x54
/* 8015FC04 0015CB64  38 A1 00 48 */	addi r5, r1, 0x48
/* 8015FC08 0015CB68  4B FB B4 01 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8015FC0C 0015CB6C  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 8015FC10 0015CB70  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8015FC14 0015CB74  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8015FC18 0015CB78  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8015FC1C 0015CB7C  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 8015FC20 0015CB80  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8015FC24 0015CB84  4B EB B9 11 */	bl Identity__10CAxisAngleFv
/* 8015FC28 0015CB88  7C 65 1B 78 */	mr r5, r3
/* 8015FC2C 0015CB8C  7F A3 EB 78 */	mr r3, r29
/* 8015FC30 0015CB90  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8015FC34 0015CB94  4B FB C7 65 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8015FC38 0015CB98  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8015FC3C 0015CB9C  7F C5 F3 78 */	mr r5, r30
/* 8015FC40 0015CBA0  38 61 00 24 */	addi r3, r1, 0x24
/* 8015FC44 0015CBA4  C3 BD 00 60 */	lfs f29, 0x60(r29)
/* 8015FC48 0015CBA8  81 84 00 00 */	lwz r12, 0(r4)
/* 8015FC4C 0015CBAC  C3 9D 00 50 */	lfs f28, 0x50(r29)
/* 8015FC50 0015CBB0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8015FC54 0015CBB4  C3 7D 00 40 */	lfs f27, 0x40(r29)
/* 8015FC58 0015CBB8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 8015FC5C 0015CBBC  7D 89 03 A6 */	mtctr r12
/* 8015FC60 0015CBC0  4E 80 04 21 */	bctrl 
/* 8015FC64 0015CBC4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8015FC68 0015CBC8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015FC6C 0015CBCC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8015FC70 0015CBD0  38 81 00 30 */	addi r4, r1, 0x30
/* 8015FC74 0015CBD4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8015FC78 0015CBD8  EC 42 D8 28 */	fsubs f2, f2, f27
/* 8015FC7C 0015CBDC  EC 21 E0 28 */	fsubs f1, f1, f28
/* 8015FC80 0015CBE0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8015FC84 0015CBE4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8015FC88 0015CBE8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8015FC8C 0015CBEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8015FC90 0015CBF0  48 1B 4B C1 */	bl AsNormalized__9CVector3fCFv
/* 8015FC94 0015CBF4  C1 3D 00 58 */	lfs f9, 0x58(r29)
/* 8015FC98 0015CBF8  38 81 00 DC */	addi r4, r1, 0xdc
/* 8015FC9C 0015CBFC  C1 1D 00 48 */	lfs f8, 0x48(r29)
/* 8015FCA0 0015CC00  C0 02 9F A0 */	lfs f0, lbl_805ABCC0@sda21(r2)
/* 8015FCA4 0015CC04  C0 BD 00 38 */	lfs f5, 0x38(r29)
/* 8015FCA8 0015CC08  EC E0 02 32 */	fmuls f7, f0, f8
/* 8015FCAC 0015CC0C  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 8015FCB0 0015CC10  EC C0 02 72 */	fmuls f6, f0, f9
/* 8015FCB4 0015CC14  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8015FCB8 0015CC18  EC 80 01 72 */	fmuls f4, f0, f5
/* 8015FCBC 0015CC1C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8015FCC0 0015CC20  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 8015FCC4 0015CC24  D0 81 00 DC */	stfs f4, 0xdc(r1)
/* 8015FCC8 0015CC28  D0 E1 00 E0 */	stfs f7, 0xe0(r1)
/* 8015FCCC 0015CC2C  D0 C1 00 E4 */	stfs f6, 0xe4(r1)
/* 8015FCD0 0015CC30  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 8015FCD4 0015CC34  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 8015FCD8 0015CC38  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 8015FCDC 0015CC3C  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 8015FCE0 0015CC40  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8015FCE4 0015CC44  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8015FCE8 0015CC48  38 63 00 04 */	addi r3, r3, 4
/* 8015FCEC 0015CC4C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 8015FCF0 0015CC50  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 8015FCF4 0015CC54  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8015FCF8 0015CC58  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 8015FCFC 0015CC5C  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8015FD00 0015CC60  4B FD 1A 19 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8015FD04 0015CC64  48 00 00 20 */	b lbl_8015FD24
lbl_8015FD08:
/* 8015FD08 0015CC68  C3 7D 06 3C */	lfs f27, 0x63c(r29)
/* 8015FD0C 0015CC6C  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8015FD10 0015CC70  48 1B 27 CD */	bl Float__9CRandom16Fv
/* 8015FD14 0015CC74  C0 1D 06 40 */	lfs f0, 0x640(r29)
/* 8015FD18 0015CC78  EC 00 D8 28 */	fsubs f0, f0, f27
/* 8015FD1C 0015CC7C  EC 00 D8 7A */	fmadds f0, f0, f1, f27
/* 8015FD20 0015CC80  D0 1D 06 44 */	stfs f0, 0x644(r29)
lbl_8015FD24:
/* 8015FD24 0015CC84  E3 E1 01 68 */	psq_l f31, 360(r1), 0, qr0
/* 8015FD28 0015CC88  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 8015FD2C 0015CC8C  E3 C1 01 58 */	psq_l f30, 344(r1), 0, qr0
/* 8015FD30 0015CC90  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 8015FD34 0015CC94  E3 A1 01 48 */	psq_l f29, 328(r1), 0, qr0
/* 8015FD38 0015CC98  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 8015FD3C 0015CC9C  E3 81 01 38 */	psq_l f28, 312(r1), 0, qr0
/* 8015FD40 0015CCA0  CB 81 01 30 */	lfd f28, 0x130(r1)
/* 8015FD44 0015CCA4  E3 61 01 28 */	psq_l f27, 296(r1), 0, qr0
/* 8015FD48 0015CCA8  CB 61 01 20 */	lfd f27, 0x120(r1)
/* 8015FD4C 0015CCAC  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8015FD50 0015CCB0  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8015FD54 0015CCB4  80 01 01 74 */	lwz r0, 0x174(r1)
/* 8015FD58 0015CCB8  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8015FD5C 0015CCBC  7C 08 03 A6 */	mtlr r0
/* 8015FD60 0015CCC0  38 21 01 70 */	addi r1, r1, 0x170
/* 8015FD64 0015CCC4  4E 80 00 20 */	blr 

.global CoverCheck__6CDroneFR13CStateManagerf
CoverCheck__6CDroneFR13CStateManagerf:
/* 8015FD68 0015CCC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015FD6C 0015CCCC  7C 08 02 A6 */	mflr r0
/* 8015FD70 0015CCD0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8015FD74 0015CCD4  C0 22 9F A4 */	lfs f1, lbl_805ABCC4@sda21(r2)
/* 8015FD78 0015CCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015FD7C 0015CCDC  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 8015FD80 0015CCE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015FD84 0015CCE4  7C 7F 1B 78 */	mr r31, r3
/* 8015FD88 0015CCE8  38 7F 06 7C */	addi r3, r31, 0x67c
/* 8015FD8C 0015CCEC  48 1B 01 D9 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 8015FD90 0015CCF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015FD94 0015CCF4  41 82 00 0C */	beq lbl_8015FDA0
/* 8015FD98 0015CCF8  38 60 00 01 */	li r3, 1
/* 8015FD9C 0015CCFC  48 00 00 6C */	b lbl_8015FE08
lbl_8015FDA0:
/* 8015FDA0 0015CD00  C0 3F 06 74 */	lfs f1, 0x674(r31)
/* 8015FDA4 0015CD04  38 60 00 00 */	li r3, 0
/* 8015FDA8 0015CD08  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8015FDAC 0015CD0C  C0 7F 06 70 */	lfs f3, 0x670(r31)
/* 8015FDB0 0015CD10  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8015FDB4 0015CD14  EC 81 00 28 */	fsubs f4, f1, f0
/* 8015FDB8 0015CD18  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 8015FDBC 0015CD1C  EC A3 10 28 */	fsubs f5, f3, f2
/* 8015FDC0 0015CD20  C0 7F 06 78 */	lfs f3, 0x678(r31)
/* 8015FDC4 0015CD24  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8015FDC8 0015CD28  EC 00 01 32 */	fmuls f0, f0, f4
/* 8015FDCC 0015CD2C  C0 3F 06 7C */	lfs f1, 0x67c(r31)
/* 8015FDD0 0015CD30  EC 63 10 28 */	fsubs f3, f3, f2
/* 8015FDD4 0015CD34  EC 21 01 7A */	fmadds f1, f1, f5, f0
/* 8015FDD8 0015CD38  C0 5F 06 84 */	lfs f2, 0x684(r31)
/* 8015FDDC 0015CD3C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015FDE0 0015CD40  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 8015FDE4 0015CD44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015FDE8 0015CD48  41 80 00 1C */	blt lbl_8015FE04
/* 8015FDEC 0015CD4C  EC 24 01 32 */	fmuls f1, f4, f4
/* 8015FDF0 0015CD50  C0 02 9F 78 */	lfs f0, lbl_805ABC98@sda21(r2)
/* 8015FDF4 0015CD54  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 8015FDF8 0015CD58  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8015FDFC 0015CD5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015FE00 0015CD60  40 80 00 08 */	bge lbl_8015FE08
lbl_8015FE04:
/* 8015FE04 0015CD64  38 60 00 01 */	li r3, 1
lbl_8015FE08:
/* 8015FE08 0015CD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015FE0C 0015CD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015FE10 0015CD70  7C 08 03 A6 */	mtlr r0
/* 8015FE14 0015CD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8015FE18 0015CD78  4E 80 00 20 */	blr 

.global ShouldMove__6CDroneFR13CStateManagerf
ShouldMove__6CDroneFR13CStateManagerf:
/* 8015FE1C 0015CD7C  C0 23 06 44 */	lfs f1, 0x644(r3)
/* 8015FE20 0015CD80  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015FE24 0015CD84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015FE28 0015CD88  4C 40 13 82 */	cror 2, 0, 2
/* 8015FE2C 0015CD8C  7C 00 00 26 */	mfcr r0
/* 8015FE30 0015CD90  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8015FE34 0015CD94  4E 80 00 20 */	blr 

.global Leash__6CDroneFR13CStateManagerf
Leash__6CDroneFR13CStateManagerf:
/* 8015FE38 0015CD98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015FE3C 0015CD9C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8015FE40 0015CDA0  C0 03 03 C8 */	lfs f0, 0x3c8(r3)
/* 8015FE44 0015CDA4  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 8015FE48 0015CDA8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8015FE4C 0015CDAC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8015FE50 0015CDB0  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 8015FE54 0015CDB4  EC C7 08 28 */	fsubs f6, f7, f1
/* 8015FE58 0015CDB8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8015FE5C 0015CDBC  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 8015FE60 0015CDC0  EC 82 08 28 */	fsubs f4, f2, f1
/* 8015FE64 0015CDC4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8015FE68 0015CDC8  D0 41 00 08 */	stfs f2, 8(r1)
/* 8015FE6C 0015CDCC  EC A8 18 28 */	fsubs f5, f8, f3
/* 8015FE70 0015CDD0  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8015FE74 0015CDD4  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 8015FE78 0015CDD8  EC 44 01 32 */	fmuls f2, f4, f4
/* 8015FE7C 0015CDDC  EC 65 01 72 */	fmuls f3, f5, f5
/* 8015FE80 0015CDE0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 8015FE84 0015CDE4  EC 22 08 2A */	fadds f1, f2, f1
/* 8015FE88 0015CDE8  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8015FE8C 0015CDEC  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8015FE90 0015CDF0  EC 23 08 2A */	fadds f1, f3, f1
/* 8015FE94 0015CDF4  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 8015FE98 0015CDF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015FE9C 0015CDFC  7C 00 00 26 */	mfcr r0
/* 8015FEA0 0015CE00  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8015FEA4 0015CE04  38 21 00 20 */	addi r1, r1, 0x20
/* 8015FEA8 0015CE08  4E 80 00 20 */	blr 

.global TargetPlayer__6CDroneFR13CStateManager9EStateMsgf
TargetPlayer__6CDroneFR13CStateManager9EStateMsgf:
/* 8015FEAC 0015CE0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015FEB0 0015CE10  7C 08 02 A6 */	mflr r0
/* 8015FEB4 0015CE14  2C 05 00 01 */	cmpwi r5, 1
/* 8015FEB8 0015CE18  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015FEBC 0015CE1C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015FEC0 0015CE20  7C 7F 1B 78 */	mr r31, r3
/* 8015FEC4 0015CE24  41 82 00 10 */	beq lbl_8015FED4
/* 8015FEC8 0015CE28  40 80 00 84 */	bge lbl_8015FF4C
/* 8015FECC 0015CE2C  48 00 00 80 */	b lbl_8015FF4C
/* 8015FED0 0015CE30  48 00 00 7C */	b lbl_8015FF4C
lbl_8015FED4:
/* 8015FED4 0015CE34  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 8015FED8 0015CE38  38 61 00 08 */	addi r3, r1, 8
/* 8015FEDC 0015CE3C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8015FEE0 0015CE40  38 9F 00 34 */	addi r4, r31, 0x34
/* 8015FEE4 0015CE44  C0 42 9F 7C */	lfs f2, lbl_805ABC9C@sda21(r2)
/* 8015FEE8 0015CE48  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8015FEEC 0015CE4C  EC 61 00 32 */	fmuls f3, f1, f0
/* 8015FEF0 0015CE50  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8015FEF4 0015CE54  EC 22 00 F2 */	fmuls f1, f2, f3
/* 8015FEF8 0015CE58  EC 02 00 32 */	fmuls f0, f2, f0
/* 8015FEFC 0015CE5C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8015FF00 0015CE60  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8015FF04 0015CE64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8015FF08 0015CE68  48 1B 2B 1D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8015FF0C 0015CE6C  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 8015FF10 0015CE70  7F E4 FB 78 */	mr r4, r31
/* 8015FF14 0015CE74  38 61 00 14 */	addi r3, r1, 0x14
/* 8015FF18 0015CE78  38 A1 00 08 */	addi r5, r1, 8
/* 8015FF1C 0015CE7C  4B FB B0 ED */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8015FF20 0015CE80  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8015FF24 0015CE84  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8015FF28 0015CE88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8015FF2C 0015CE8C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8015FF30 0015CE90  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8015FF34 0015CE94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8015FF38 0015CE98  4B EB B5 FD */	bl Identity__10CAxisAngleFv
/* 8015FF3C 0015CE9C  7C 65 1B 78 */	mr r5, r3
/* 8015FF40 0015CEA0  7F E3 FB 78 */	mr r3, r31
/* 8015FF44 0015CEA4  38 81 00 20 */	addi r4, r1, 0x20
/* 8015FF48 0015CEA8  4B FB C4 51 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8015FF4C:
/* 8015FF4C 0015CEAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015FF50 0015CEB0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015FF54 0015CEB4  7C 08 03 A6 */	mtlr r0
/* 8015FF58 0015CEB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8015FF5C 0015CEBC  4E 80 00 20 */	blr 

.global PathFind__6CDroneFR13CStateManager9EStateMsgf
PathFind__6CDroneFR13CStateManager9EStateMsgf:
/* 8015FF60 0015CEC0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8015FF64 0015CEC4  7C 08 02 A6 */	mflr r0
/* 8015FF68 0015CEC8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8015FF6C 0015CECC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8015FF70 0015CED0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 8015FF74 0015CED4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8015FF78 0015CED8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 8015FF7C 0015CEDC  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8015FF80 0015CEE0  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 8015FF84 0015CEE4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8015FF88 0015CEE8  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8015FF8C 0015CEEC  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 8015FF90 0015CEF0  2C 05 00 01 */	cmpwi r5, 1
/* 8015FF94 0015CEF4  7C 7D 1B 78 */	mr r29, r3
/* 8015FF98 0015CEF8  7C 9E 23 78 */	mr r30, r4
/* 8015FF9C 0015CEFC  41 82 01 58 */	beq lbl_801600F4
/* 8015FFA0 0015CF00  40 80 00 10 */	bge lbl_8015FFB0
/* 8015FFA4 0015CF04  2C 05 00 00 */	cmpwi r5, 0
/* 8015FFA8 0015CF08  40 80 00 14 */	bge lbl_8015FFBC
/* 8015FFAC 0015CF0C  48 00 03 0C */	b lbl_801602B8
lbl_8015FFB0:
/* 8015FFB0 0015CF10  2C 05 00 03 */	cmpwi r5, 3
/* 8015FFB4 0015CF14  40 80 03 04 */	bge lbl_801602B8
/* 8015FFB8 0015CF18  48 00 02 FC */	b lbl_801602B4
lbl_8015FFBC:
/* 8015FFBC 0015CF1C  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 8015FFC0 0015CF20  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8015FFC4 0015CF24  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 8015FFC8 0015CF28  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8015FFCC 0015CF2C  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 8015FFD0 0015CF30  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8015FFD4 0015CF34  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8015FFD8 0015CF38  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8015FFDC 0015CF3C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8015FFE0 0015CF40  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8015FFE4 0015CF44  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8015FFE8 0015CF48  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8015FFEC 0015CF4C  81 83 00 00 */	lwz r12, 0(r3)
/* 8015FFF0 0015CF50  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8015FFF4 0015CF54  7D 89 03 A6 */	mtctr r12
/* 8015FFF8 0015CF58  4E 80 04 21 */	bctrl 
/* 8015FFFC 0015CF5C  38 81 00 74 */	addi r4, r1, 0x74
/* 80160000 0015CF60  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80160004 0015CF64  48 06 7C 69 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 80160008 0015CF68  2C 03 00 00 */	cmpwi r3, 0
/* 8016000C 0015CF6C  41 82 00 C8 */	beq lbl_801600D4
/* 80160010 0015CF70  7F A3 EB 78 */	mr r3, r29
/* 80160014 0015CF74  81 9D 00 00 */	lwz r12, 0(r29)
/* 80160018 0015CF78  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016001C 0015CF7C  7D 89 03 A6 */	mtctr r12
/* 80160020 0015CF80  4E 80 04 21 */	bctrl 
/* 80160024 0015CF84  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 80160028 0015CF88  2C 00 00 03 */	cmpwi r0, 3
/* 8016002C 0015CF8C  41 82 00 24 */	beq lbl_80160050
/* 80160030 0015CF90  7F A3 EB 78 */	mr r3, r29
/* 80160034 0015CF94  81 9D 00 00 */	lwz r12, 0(r29)
/* 80160038 0015CF98  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8016003C 0015CF9C  7D 89 03 A6 */	mtctr r12
/* 80160040 0015CFA0  4E 80 04 21 */	bctrl 
/* 80160044 0015CFA4  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 80160048 0015CFA8  2C 00 00 04 */	cmpwi r0, 4
/* 8016004C 0015CFAC  40 82 00 88 */	bne lbl_801600D4
lbl_80160050:
/* 80160050 0015CFB0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80160054 0015CFB4  7F A3 EB 78 */	mr r3, r29
/* 80160058 0015CFB8  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8016005C 0015CFBC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80160060 0015CFC0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80160064 0015CFC4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80160068 0015CFC8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8016006C 0015CFCC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80160070 0015CFD0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80160074 0015CFD4  7D 89 03 A6 */	mtctr r12
/* 80160078 0015CFD8  4E 80 04 21 */	bctrl 
/* 8016007C 0015CFDC  38 81 00 68 */	addi r4, r1, 0x68
/* 80160080 0015CFE0  38 A1 00 8C */	addi r5, r1, 0x8c
/* 80160084 0015CFE4  48 06 70 79 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 80160088 0015CFE8  2C 03 00 00 */	cmpwi r3, 0
/* 8016008C 0015CFEC  40 82 00 48 */	bne lbl_801600D4
/* 80160090 0015CFF0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80160094 0015CFF4  7F A3 EB 78 */	mr r3, r29
/* 80160098 0015CFF8  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8016009C 0015CFFC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801600A0 0015D000  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801600A4 0015D004  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801600A8 0015D008  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 801600AC 0015D00C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801600B0 0015D010  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801600B4 0015D014  7D 89 03 A6 */	mtctr r12
/* 801600B8 0015D018  4E 80 04 21 */	bctrl 
/* 801600BC 0015D01C  38 81 00 5C */	addi r4, r1, 0x5c
/* 801600C0 0015D020  38 A1 00 8C */	addi r5, r1, 0x8c
/* 801600C4 0015D024  48 06 7B A9 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 801600C8 0015D028  7F A3 EB 78 */	mr r3, r29
/* 801600CC 0015D02C  38 81 00 8C */	addi r4, r1, 0x8c
/* 801600D0 0015D030  4B F1 CA 8D */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801600D4:
/* 801600D4 0015D034  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 801600D8 0015D038  2C 00 00 01 */	cmpwi r0, 1
/* 801600DC 0015D03C  40 82 01 DC */	bne lbl_801602B8
/* 801600E0 0015D040  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 801600E4 0015D044  38 60 00 01 */	li r3, 1
/* 801600E8 0015D048  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801600EC 0015D04C  98 1D 08 34 */	stb r0, 0x834(r29)
/* 801600F0 0015D050  48 00 01 C8 */	b lbl_801602B8
lbl_801600F4:
/* 801600F4 0015D054  48 09 65 D9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801600F8 0015D058  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801600FC 0015D05C  3B E3 00 04 */	addi r31, r3, 4
/* 80160100 0015D060  7F E3 FB 78 */	mr r3, r31
/* 80160104 0015D064  4B FD 14 45 */	bl BlendSteeringCmds__16CBodyStateCmdMgrFv
/* 80160108 0015D068  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8016010C 0015D06C  38 61 00 80 */	addi r3, r1, 0x80
/* 80160110 0015D070  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80160114 0015D074  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80160118 0015D078  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8016011C 0015D07C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80160120 0015D080  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80160124 0015D084  48 1B 45 D5 */	bl CanBeNormalized__9CVector3fCFv
/* 80160128 0015D088  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016012C 0015D08C  41 82 01 6C */	beq lbl_80160298
/* 80160130 0015D090  38 61 00 80 */	addi r3, r1, 0x80
/* 80160134 0015D094  48 1B 47 C5 */	bl Normalize__9CVector3fFv
/* 80160138 0015D098  7F E3 FB 78 */	mr r3, r31
/* 8016013C 0015D09C  4B FD 13 6D */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 80160140 0015D0A0  C0 9D 05 E4 */	lfs f4, 0x5e4(r29)
/* 80160144 0015D0A4  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80160148 0015D0A8  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8016014C 0015D0AC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80160150 0015D0B0  EC 64 00 B2 */	fmuls f3, f4, f2
/* 80160154 0015D0B4  EC 44 00 72 */	fmuls f2, f4, f1
/* 80160158 0015D0B8  C0 BD 00 E8 */	lfs f5, 0xe8(r29)
/* 8016015C 0015D0BC  EC 24 00 32 */	fmuls f1, f4, f0
/* 80160160 0015D0C0  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80160164 0015D0C4  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80160168 0015D0C8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 8016016C 0015D0CC  EC 05 00 72 */	fmuls f0, f5, f1
/* 80160170 0015D0D0  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80160174 0015D0D4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80160178 0015D0D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8016017C 0015D0DC  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80160180 0015D0E0  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80160184 0015D0E4  4B EB B3 B1 */	bl Identity__10CAxisAngleFv
/* 80160188 0015D0E8  7C 65 1B 78 */	mr r5, r3
/* 8016018C 0015D0EC  7F A3 EB 78 */	mr r3, r29
/* 80160190 0015D0F0  38 81 00 50 */	addi r4, r1, 0x50
/* 80160194 0015D0F4  4B FB C2 05 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 80160198 0015D0F8  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8016019C 0015D0FC  7F C5 F3 78 */	mr r5, r30
/* 801601A0 0015D100  38 61 00 20 */	addi r3, r1, 0x20
/* 801601A4 0015D104  C3 BD 00 60 */	lfs f29, 0x60(r29)
/* 801601A8 0015D108  81 84 00 00 */	lwz r12, 0(r4)
/* 801601AC 0015D10C  C3 DD 00 50 */	lfs f30, 0x50(r29)
/* 801601B0 0015D110  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801601B4 0015D114  C3 FD 00 40 */	lfs f31, 0x40(r29)
/* 801601B8 0015D118  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 801601BC 0015D11C  7D 89 03 A6 */	mtctr r12
/* 801601C0 0015D120  4E 80 04 21 */	bctrl 
/* 801601C4 0015D124  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801601C8 0015D128  38 61 00 38 */	addi r3, r1, 0x38
/* 801601CC 0015D12C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801601D0 0015D130  38 81 00 2C */	addi r4, r1, 0x2c
/* 801601D4 0015D134  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801601D8 0015D138  EC 42 F8 28 */	fsubs f2, f2, f31
/* 801601DC 0015D13C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801601E0 0015D140  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801601E4 0015D144  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801601E8 0015D148  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801601EC 0015D14C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801601F0 0015D150  48 1B 46 61 */	bl AsNormalized__9CVector3fCFv
/* 801601F4 0015D154  C0 DD 00 58 */	lfs f6, 0x58(r29)
/* 801601F8 0015D158  7F E3 FB 78 */	mr r3, r31
/* 801601FC 0015D15C  C0 BD 00 48 */	lfs f5, 0x48(r29)
/* 80160200 0015D160  38 81 00 98 */	addi r4, r1, 0x98
/* 80160204 0015D164  C0 02 9F A0 */	lfs f0, lbl_805ABCC0@sda21(r2)
/* 80160208 0015D168  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8016020C 0015D16C  EC 80 01 72 */	fmuls f4, f0, f5
/* 80160210 0015D170  C3 E1 00 38 */	lfs f31, 0x38(r1)
/* 80160214 0015D174  EC 60 01 B2 */	fmuls f3, f0, f6
/* 80160218 0015D178  C3 A1 00 3C */	lfs f29, 0x3c(r1)
/* 8016021C 0015D17C  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80160220 0015D180  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 80160224 0015D184  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80160228 0015D188  D0 41 00 08 */	stfs f2, 8(r1)
/* 8016022C 0015D18C  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80160230 0015D190  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80160234 0015D194  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80160238 0015D198  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8016023C 0015D19C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80160240 0015D1A0  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 80160244 0015D1A4  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80160248 0015D1A8  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8016024C 0015D1AC  D3 E1 00 A4 */	stfs f31, 0xa4(r1)
/* 80160250 0015D1B0  D3 A1 00 A8 */	stfs f29, 0xa8(r1)
/* 80160254 0015D1B4  D3 C1 00 AC */	stfs f30, 0xac(r1)
/* 80160258 0015D1B8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8016025C 0015D1BC  4B FD 14 BD */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80160260 0015D1C0  D3 FF 00 18 */	stfs f31, 0x18(r31)
/* 80160264 0015D1C4  7F A3 EB 78 */	mr r3, r29
/* 80160268 0015D1C8  7F C4 F3 78 */	mr r4, r30
/* 8016026C 0015D1CC  D3 BF 00 1C */	stfs f29, 0x1c(r31)
/* 80160270 0015D1D0  D3 DF 00 20 */	stfs f30, 0x20(r31)
/* 80160274 0015D1D4  4B FF F2 9D */	bl sub_8015f510
/* 80160278 0015D1D8  C0 3D 06 30 */	lfs f1, 0x630(r29)
/* 8016027C 0015D1DC  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80160280 0015D1E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80160284 0015D1E4  4C 40 13 82 */	cror 2, 0, 2
/* 80160288 0015D1E8  40 82 00 30 */	bne lbl_801602B8
/* 8016028C 0015D1EC  C0 02 9F A8 */	lfs f0, lbl_805ABCC8@sda21(r2)
/* 80160290 0015D1F0  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 80160294 0015D1F4  48 00 00 24 */	b lbl_801602B8
lbl_80160298:
/* 80160298 0015D1F8  C0 3D 06 30 */	lfs f1, 0x630(r29)
/* 8016029C 0015D1FC  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801602A0 0015D200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801602A4 0015D204  4C 40 13 82 */	cror 2, 0, 2
/* 801602A8 0015D208  40 82 00 10 */	bne lbl_801602B8
/* 801602AC 0015D20C  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 801602B0 0015D210  48 00 00 08 */	b lbl_801602B8
lbl_801602B4:
/* 801602B4 0015D214  48 09 64 19 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
lbl_801602B8:
/* 801602B8 0015D218  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 801602BC 0015D21C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801602C0 0015D220  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 801602C4 0015D224  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 801602C8 0015D228  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 801602CC 0015D22C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 801602D0 0015D230  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801602D4 0015D234  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801602D8 0015D238  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801602DC 0015D23C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 801602E0 0015D240  7C 08 03 A6 */	mtlr r0
/* 801602E4 0015D244  38 21 01 00 */	addi r1, r1, 0x100
/* 801602E8 0015D248  4E 80 00 20 */	blr 

.global PathFindEx__6CDroneFR13CStateManager9EStateMsgf
PathFindEx__6CDroneFR13CStateManager9EStateMsgf:
/* 801602EC 0015D24C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801602F0 0015D250  7C 08 02 A6 */	mflr r0
/* 801602F4 0015D254  90 01 00 54 */	stw r0, 0x54(r1)
/* 801602F8 0015D258  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801602FC 0015D25C  7C BF 2B 78 */	mr r31, r5
/* 80160300 0015D260  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80160304 0015D264  7C 9E 23 78 */	mr r30, r4
/* 80160308 0015D268  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8016030C 0015D26C  7C 7D 1B 78 */	mr r29, r3
/* 80160310 0015D270  48 09 63 BD */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80160314 0015D274  2C 1F 00 00 */	cmpwi r31, 0
/* 80160318 0015D278  41 82 00 0C */	beq lbl_80160324
/* 8016031C 0015D27C  41 80 01 3C */	blt lbl_80160458
/* 80160320 0015D280  48 00 01 38 */	b lbl_80160458
lbl_80160324:
/* 80160324 0015D284  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80160328 0015D288  7F A3 EB 78 */	mr r3, r29
/* 8016032C 0015D28C  C0 62 9F 68 */	lfs f3, lbl_805ABC88@sda21(r2)
/* 80160330 0015D290  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80160334 0015D294  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80160338 0015D298  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8016033C 0015D29C  EC 81 18 2A */	fadds f4, f1, f3
/* 80160340 0015D2A0  C0 3D 06 64 */	lfs f1, 0x664(r29)
/* 80160344 0015D2A4  EC 00 18 2A */	fadds f0, f0, f3
/* 80160348 0015D2A8  EC 22 08 2A */	fadds f1, f2, f1
/* 8016034C 0015D2AC  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80160350 0015D2B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80160354 0015D2B4  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80160358 0015D2B8  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8016035C 0015D2BC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80160360 0015D2C0  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80160364 0015D2C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80160368 0015D2C8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8016036C 0015D2CC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80160370 0015D2D0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80160374 0015D2D4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80160378 0015D2D8  7D 89 03 A6 */	mtctr r12
/* 8016037C 0015D2DC  4E 80 04 21 */	bctrl 
/* 80160380 0015D2E0  38 81 00 20 */	addi r4, r1, 0x20
/* 80160384 0015D2E4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80160388 0015D2E8  48 06 78 E5 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 8016038C 0015D2EC  2C 03 00 00 */	cmpwi r3, 0
/* 80160390 0015D2F0  41 82 00 C8 */	beq lbl_80160458
/* 80160394 0015D2F4  7F A3 EB 78 */	mr r3, r29
/* 80160398 0015D2F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8016039C 0015D2FC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801603A0 0015D300  7D 89 03 A6 */	mtctr r12
/* 801603A4 0015D304  4E 80 04 21 */	bctrl 
/* 801603A8 0015D308  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801603AC 0015D30C  2C 00 00 03 */	cmpwi r0, 3
/* 801603B0 0015D310  41 82 00 24 */	beq lbl_801603D4
/* 801603B4 0015D314  7F A3 EB 78 */	mr r3, r29
/* 801603B8 0015D318  81 9D 00 00 */	lwz r12, 0(r29)
/* 801603BC 0015D31C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801603C0 0015D320  7D 89 03 A6 */	mtctr r12
/* 801603C4 0015D324  4E 80 04 21 */	bctrl 
/* 801603C8 0015D328  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801603CC 0015D32C  2C 00 00 04 */	cmpwi r0, 4
/* 801603D0 0015D330  40 82 00 88 */	bne lbl_80160458
lbl_801603D4:
/* 801603D4 0015D334  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801603D8 0015D338  7F A3 EB 78 */	mr r3, r29
/* 801603DC 0015D33C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801603E0 0015D340  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801603E4 0015D344  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801603E8 0015D348  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801603EC 0015D34C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801603F0 0015D350  81 9D 00 00 */	lwz r12, 0(r29)
/* 801603F4 0015D354  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801603F8 0015D358  7D 89 03 A6 */	mtctr r12
/* 801603FC 0015D35C  4E 80 04 21 */	bctrl 
/* 80160400 0015D360  38 81 00 14 */	addi r4, r1, 0x14
/* 80160404 0015D364  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80160408 0015D368  48 06 6C F5 */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 8016040C 0015D36C  2C 03 00 00 */	cmpwi r3, 0
/* 80160410 0015D370  40 82 00 48 */	bne lbl_80160458
/* 80160414 0015D374  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80160418 0015D378  7F A3 EB 78 */	mr r3, r29
/* 8016041C 0015D37C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80160420 0015D380  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80160424 0015D384  D0 01 00 08 */	stfs f0, 8(r1)
/* 80160428 0015D388  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8016042C 0015D38C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80160430 0015D390  81 9D 00 00 */	lwz r12, 0(r29)
/* 80160434 0015D394  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80160438 0015D398  7D 89 03 A6 */	mtctr r12
/* 8016043C 0015D39C  4E 80 04 21 */	bctrl 
/* 80160440 0015D3A0  38 81 00 08 */	addi r4, r1, 8
/* 80160444 0015D3A4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80160448 0015D3A8  48 06 78 25 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 8016044C 0015D3AC  7F A3 EB 78 */	mr r3, r29
/* 80160450 0015D3B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80160454 0015D3B4  4B F1 C7 09 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80160458:
/* 80160458 0015D3B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8016045C 0015D3BC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80160460 0015D3C0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80160464 0015D3C4  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80160468 0015D3C8  7C 08 03 A6 */	mtlr r0
/* 8016046C 0015D3CC  38 21 00 50 */	addi r1, r1, 0x50
/* 80160470 0015D3D0  4E 80 00 20 */	blr 

.global Attack__6CDroneFR13CStateManager9EStateMsgf
Attack__6CDroneFR13CStateManager9EStateMsgf:
/* 80160474 0015D3D4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80160478 0015D3D8  7C 08 02 A6 */	mflr r0
/* 8016047C 0015D3DC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80160480 0015D3E0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80160484 0015D3E4  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 80160488 0015D3E8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 8016048C 0015D3EC  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 80160490 0015D3F0  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80160494 0015D3F4  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 80160498 0015D3F8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8016049C 0015D3FC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801604A0 0015D400  2C 05 00 01 */	cmpwi r5, 1
/* 801604A4 0015D404  7C 7E 1B 78 */	mr r30, r3
/* 801604A8 0015D408  7C 9F 23 78 */	mr r31, r4
/* 801604AC 0015D40C  41 82 07 18 */	beq lbl_80160BC4
/* 801604B0 0015D410  40 80 00 10 */	bge lbl_801604C0
/* 801604B4 0015D414  2C 05 00 00 */	cmpwi r5, 0
/* 801604B8 0015D418  40 80 00 14 */	bge lbl_801604CC
/* 801604BC 0015D41C  48 00 08 7C */	b lbl_80160D38
lbl_801604C0:
/* 801604C0 0015D420  2C 05 00 03 */	cmpwi r5, 3
/* 801604C4 0015D424  40 80 08 74 */	bge lbl_80160D38
/* 801604C8 0015D428  48 00 08 10 */	b lbl_80160CD8
lbl_801604CC:
/* 801604CC 0015D42C  38 80 00 00 */	li r4, 0
/* 801604D0 0015D430  7F E5 FB 78 */	mr r5, r31
/* 801604D4 0015D434  90 9E 07 C8 */	stw r4, 0x7c8(r30)
/* 801604D8 0015D438  38 61 00 5C */	addi r3, r1, 0x5c
/* 801604DC 0015D43C  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 801604E0 0015D440  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 801604E4 0015D444  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 801604E8 0015D448  98 1E 08 34 */	stb r0, 0x834(r30)
/* 801604EC 0015D44C  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801604F0 0015D450  81 84 00 00 */	lwz r12, 0(r4)
/* 801604F4 0015D454  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801604F8 0015D458  7D 89 03 A6 */	mtctr r12
/* 801604FC 0015D45C  4E 80 04 21 */	bctrl 
/* 80160500 0015D460  C0 A1 00 5C */	lfs f5, 0x5c(r1)
/* 80160504 0015D464  38 61 00 50 */	addi r3, r1, 0x50
/* 80160508 0015D468  C0 81 00 60 */	lfs f4, 0x60(r1)
/* 8016050C 0015D46C  38 81 00 44 */	addi r4, r1, 0x44
/* 80160510 0015D470  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 80160514 0015D474  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80160518 0015D478  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 8016051C 0015D47C  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80160520 0015D480  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80160524 0015D484  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80160528 0015D488  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8016052C 0015D48C  EC 44 10 28 */	fsubs f2, f4, f2
/* 80160530 0015D490  EC 23 08 28 */	fsubs f1, f3, f1
/* 80160534 0015D494  EC 05 00 28 */	fsubs f0, f5, f0
/* 80160538 0015D498  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8016053C 0015D49C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80160540 0015D4A0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80160544 0015D4A4  48 1B 43 0D */	bl AsNormalized__9CVector3fCFv
/* 80160548 0015D4A8  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 8016054C 0015D4AC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80160550 0015D4B0  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80160554 0015D4B4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80160558 0015D4B8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8016055C 0015D4BC  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 80160560 0015D4C0  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 80160564 0015D4C4  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 80160568 0015D4C8  C0 02 9F AC */	lfs f0, lbl_805ABCCC@sda21(r2)
/* 8016056C 0015D4CC  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80160570 0015D4D0  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80160574 0015D4D4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80160578 0015D4D8  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8016057C 0015D4DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80160580 0015D4E0  40 80 00 64 */	bge lbl_801605E4
/* 80160584 0015D4E4  C0 02 9F B0 */	lfs f0, lbl_805ABCD0@sda21(r2)
/* 80160588 0015D4E8  38 61 00 08 */	addi r3, r1, 8
/* 8016058C 0015D4EC  C1 5E 00 60 */	lfs f10, 0x60(r30)
/* 80160590 0015D4F0  EC C0 01 72 */	fmuls f6, f0, f5
/* 80160594 0015D4F4  C1 3E 00 50 */	lfs f9, 0x50(r30)
/* 80160598 0015D4F8  EC E0 01 32 */	fmuls f7, f0, f4
/* 8016059C 0015D4FC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801605A0 0015D500  EC 40 00 F2 */	fmuls f2, f0, f3
/* 801605A4 0015D504  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801605A8 0015D508  ED 09 38 2A */	fadds f8, f9, f7
/* 801605AC 0015D50C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801605B0 0015D510  EC 6A 30 2A */	fadds f3, f10, f6
/* 801605B4 0015D514  EC 01 10 2A */	fadds f0, f1, f2
/* 801605B8 0015D518  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 801605BC 0015D51C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801605C0 0015D520  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 801605C4 0015D524  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 801605C8 0015D528  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801605CC 0015D52C  D1 21 00 18 */	stfs f9, 0x18(r1)
/* 801605D0 0015D530  D1 41 00 1C */	stfs f10, 0x1c(r1)
/* 801605D4 0015D534  D0 01 00 08 */	stfs f0, 8(r1)
/* 801605D8 0015D538  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 801605DC 0015D53C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801605E0 0015D540  48 00 00 08 */	b lbl_801605E8
lbl_801605E4:
/* 801605E4 0015D544  38 61 00 68 */	addi r3, r1, 0x68
lbl_801605E8:
/* 801605E8 0015D548  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801605EC 0015D54C  C3 C3 00 04 */	lfs f30, 4(r3)
/* 801605F0 0015D550  C3 A3 00 08 */	lfs f29, 8(r3)
/* 801605F4 0015D554  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801605F8 0015D558  48 1B 1F 29 */	bl Next__9CRandom16Fv
/* 801605FC 0015D55C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80160600 0015D560  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80160604 0015D564  7C 03 00 50 */	subf r0, r3, r0
/* 80160608 0015D568  54 00 10 3E */	rotlwi r0, r0, 2
/* 8016060C 0015D56C  7C 00 1A 14 */	add r0, r0, r3
/* 80160610 0015D570  2C 00 00 02 */	cmpwi r0, 2
/* 80160614 0015D574  41 82 02 DC */	beq lbl_801608F0
/* 80160618 0015D578  40 80 00 14 */	bge lbl_8016062C
/* 8016061C 0015D57C  2C 00 00 00 */	cmpwi r0, 0
/* 80160620 0015D580  41 82 00 18 */	beq lbl_80160638
/* 80160624 0015D584  40 80 01 70 */	bge lbl_80160794
/* 80160628 0015D588  48 00 05 7C */	b lbl_80160BA4
lbl_8016062C:
/* 8016062C 0015D58C  2C 00 00 04 */	cmpwi r0, 4
/* 80160630 0015D590  40 80 05 74 */	bge lbl_80160BA4
/* 80160634 0015D594  48 00 04 18 */	b lbl_80160A4C
lbl_80160638:
/* 80160638 0015D598  C0 22 9F B4 */	lfs f1, lbl_805ABCD4@sda21(r2)
/* 8016063C 0015D59C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80160640 0015D5A0  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160644 0015D5A4  EC 61 00 32 */	fmuls f3, f1, f0
/* 80160648 0015D5A8  C0 02 9F B8 */	lfs f0, lbl_805ABCD8@sda21(r2)
/* 8016064C 0015D5AC  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160650 0015D5B0  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160654 0015D5B4  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80160658 0015D5B8  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 8016065C 0015D5BC  EC A1 01 32 */	fmuls f5, f1, f4
/* 80160660 0015D5C0  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160664 0015D5C4  EC 7F 18 2A */	fadds f3, f31, f3
/* 80160668 0015D5C8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8016066C 0015D5CC  EC FE 38 2A */	fadds f7, f30, f7
/* 80160670 0015D5D0  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160674 0015D5D4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80160678 0015D5D8  EC BD 28 2A */	fadds f5, f29, f5
/* 8016067C 0015D5DC  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160680 0015D5E0  EC 87 30 28 */	fsubs f4, f7, f6
/* 80160684 0015D5E4  D0 5E 07 E4 */	stfs f2, 0x7e4(r30)
/* 80160688 0015D5E8  EC 45 18 28 */	fsubs f2, f5, f3
/* 8016068C 0015D5EC  D0 9E 07 E8 */	stfs f4, 0x7e8(r30)
/* 80160690 0015D5F0  D0 5E 07 EC */	stfs f2, 0x7ec(r30)
/* 80160694 0015D5F4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160698 0015D5F8  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 8016069C 0015D5FC  EC 61 00 B2 */	fmuls f3, f1, f2
/* 801606A0 0015D600  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 801606A4 0015D604  EC E1 01 32 */	fmuls f7, f1, f4
/* 801606A8 0015D608  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 801606AC 0015D60C  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 801606B0 0015D610  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801606B4 0015D614  EC 7F 18 28 */	fsubs f3, f31, f3
/* 801606B8 0015D618  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 801606BC 0015D61C  EC A1 01 72 */	fmuls f5, f1, f5
/* 801606C0 0015D620  EC FE 38 28 */	fsubs f7, f30, f7
/* 801606C4 0015D624  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801606C8 0015D628  EC 43 10 2A */	fadds f2, f3, f2
/* 801606CC 0015D62C  EC BD 28 28 */	fsubs f5, f29, f5
/* 801606D0 0015D630  EC 60 01 32 */	fmuls f3, f0, f4
/* 801606D4 0015D634  EC 87 30 2A */	fadds f4, f7, f6
/* 801606D8 0015D638  D0 5E 08 00 */	stfs f2, 0x800(r30)
/* 801606DC 0015D63C  EC 45 18 2A */	fadds f2, f5, f3
/* 801606E0 0015D640  D0 9E 08 04 */	stfs f4, 0x804(r30)
/* 801606E4 0015D644  D0 5E 08 08 */	stfs f2, 0x808(r30)
/* 801606E8 0015D648  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801606EC 0015D64C  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801606F0 0015D650  EC 61 00 B2 */	fmuls f3, f1, f2
/* 801606F4 0015D654  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 801606F8 0015D658  EC E1 01 32 */	fmuls f7, f1, f4
/* 801606FC 0015D65C  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160700 0015D660  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160704 0015D664  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160708 0015D668  EC 7F 18 28 */	fsubs f3, f31, f3
/* 8016070C 0015D66C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160710 0015D670  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160714 0015D674  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160718 0015D678  EC C0 01 B2 */	fmuls f6, f0, f6
/* 8016071C 0015D67C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80160720 0015D680  EC BD 28 28 */	fsubs f5, f29, f5
/* 80160724 0015D684  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160728 0015D688  EC 87 30 28 */	fsubs f4, f7, f6
/* 8016072C 0015D68C  D0 5E 07 F0 */	stfs f2, 0x7f0(r30)
/* 80160730 0015D690  EC 45 18 28 */	fsubs f2, f5, f3
/* 80160734 0015D694  D0 9E 07 F4 */	stfs f4, 0x7f4(r30)
/* 80160738 0015D698  D0 5E 07 F8 */	stfs f2, 0x7f8(r30)
/* 8016073C 0015D69C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160740 0015D6A0  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160744 0015D6A4  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160748 0015D6A8  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8016074C 0015D6AC  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160750 0015D6B0  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160754 0015D6B4  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160758 0015D6B8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8016075C 0015D6BC  EC 7F 18 2A */	fadds f3, f31, f3
/* 80160760 0015D6C0  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160764 0015D6C4  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160768 0015D6C8  EC FE 38 2A */	fadds f7, f30, f7
/* 8016076C 0015D6CC  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160770 0015D6D0  EC 23 10 2A */	fadds f1, f3, f2
/* 80160774 0015D6D4  EC 5D 28 2A */	fadds f2, f29, f5
/* 80160778 0015D6D8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8016077C 0015D6DC  EC 67 30 2A */	fadds f3, f7, f6
/* 80160780 0015D6E0  D0 3E 08 0C */	stfs f1, 0x80c(r30)
/* 80160784 0015D6E4  EC 02 00 2A */	fadds f0, f2, f0
/* 80160788 0015D6E8  D0 7E 08 10 */	stfs f3, 0x810(r30)
/* 8016078C 0015D6EC  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 80160790 0015D6F0  48 00 04 14 */	b lbl_80160BA4
lbl_80160794:
/* 80160794 0015D6F4  C0 22 9F B4 */	lfs f1, lbl_805ABCD4@sda21(r2)
/* 80160798 0015D6F8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8016079C 0015D6FC  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801607A0 0015D700  EC 61 00 32 */	fmuls f3, f1, f0
/* 801607A4 0015D704  C0 02 9F B8 */	lfs f0, lbl_805ABCD8@sda21(r2)
/* 801607A8 0015D708  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 801607AC 0015D70C  EC E1 01 32 */	fmuls f7, f1, f4
/* 801607B0 0015D710  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 801607B4 0015D714  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 801607B8 0015D718  EC A1 01 32 */	fmuls f5, f1, f4
/* 801607BC 0015D71C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 801607C0 0015D720  EC 7F 18 2A */	fadds f3, f31, f3
/* 801607C4 0015D724  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801607C8 0015D728  EC FE 38 2A */	fadds f7, f30, f7
/* 801607CC 0015D72C  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801607D0 0015D730  EC 43 10 2A */	fadds f2, f3, f2
/* 801607D4 0015D734  EC BD 28 2A */	fadds f5, f29, f5
/* 801607D8 0015D738  EC 60 01 32 */	fmuls f3, f0, f4
/* 801607DC 0015D73C  EC 87 30 2A */	fadds f4, f7, f6
/* 801607E0 0015D740  D0 5E 07 E4 */	stfs f2, 0x7e4(r30)
/* 801607E4 0015D744  EC 45 18 2A */	fadds f2, f5, f3
/* 801607E8 0015D748  D0 9E 07 E8 */	stfs f4, 0x7e8(r30)
/* 801607EC 0015D74C  D0 5E 07 EC */	stfs f2, 0x7ec(r30)
/* 801607F0 0015D750  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801607F4 0015D754  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801607F8 0015D758  EC 61 00 B2 */	fmuls f3, f1, f2
/* 801607FC 0015D75C  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160800 0015D760  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160804 0015D764  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160808 0015D768  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 8016080C 0015D76C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160810 0015D770  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160814 0015D774  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160818 0015D778  EC A1 01 72 */	fmuls f5, f1, f5
/* 8016081C 0015D77C  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160820 0015D780  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160824 0015D784  EC 43 10 28 */	fsubs f2, f3, f2
/* 80160828 0015D788  EC BD 28 28 */	fsubs f5, f29, f5
/* 8016082C 0015D78C  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160830 0015D790  EC 87 30 28 */	fsubs f4, f7, f6
/* 80160834 0015D794  D0 5E 08 00 */	stfs f2, 0x800(r30)
/* 80160838 0015D798  EC 45 18 28 */	fsubs f2, f5, f3
/* 8016083C 0015D79C  D0 9E 08 04 */	stfs f4, 0x804(r30)
/* 80160840 0015D7A0  D0 5E 08 08 */	stfs f2, 0x808(r30)
/* 80160844 0015D7A4  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160848 0015D7A8  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 8016084C 0015D7AC  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160850 0015D7B0  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160854 0015D7B4  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160858 0015D7B8  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 8016085C 0015D7BC  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160860 0015D7C0  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160864 0015D7C4  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160868 0015D7C8  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 8016086C 0015D7CC  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160870 0015D7D0  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160874 0015D7D4  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160878 0015D7D8  EC 43 10 2A */	fadds f2, f3, f2
/* 8016087C 0015D7DC  EC BD 28 28 */	fsubs f5, f29, f5
/* 80160880 0015D7E0  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160884 0015D7E4  EC 87 30 2A */	fadds f4, f7, f6
/* 80160888 0015D7E8  D0 5E 07 F0 */	stfs f2, 0x7f0(r30)
/* 8016088C 0015D7EC  EC 45 18 2A */	fadds f2, f5, f3
/* 80160890 0015D7F0  D0 9E 07 F4 */	stfs f4, 0x7f4(r30)
/* 80160894 0015D7F4  D0 5E 07 F8 */	stfs f2, 0x7f8(r30)
/* 80160898 0015D7F8  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 8016089C 0015D7FC  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801608A0 0015D800  EC 61 00 B2 */	fmuls f3, f1, f2
/* 801608A4 0015D804  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 801608A8 0015D808  EC E1 01 32 */	fmuls f7, f1, f4
/* 801608AC 0015D80C  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 801608B0 0015D810  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 801608B4 0015D814  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801608B8 0015D818  EC 7F 18 2A */	fadds f3, f31, f3
/* 801608BC 0015D81C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 801608C0 0015D820  EC A1 01 72 */	fmuls f5, f1, f5
/* 801608C4 0015D824  EC FE 38 2A */	fadds f7, f30, f7
/* 801608C8 0015D828  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801608CC 0015D82C  EC 23 10 28 */	fsubs f1, f3, f2
/* 801608D0 0015D830  EC 5D 28 2A */	fadds f2, f29, f5
/* 801608D4 0015D834  EC 00 01 32 */	fmuls f0, f0, f4
/* 801608D8 0015D838  EC 67 30 28 */	fsubs f3, f7, f6
/* 801608DC 0015D83C  D0 3E 08 0C */	stfs f1, 0x80c(r30)
/* 801608E0 0015D840  EC 02 00 28 */	fsubs f0, f2, f0
/* 801608E4 0015D844  D0 7E 08 10 */	stfs f3, 0x810(r30)
/* 801608E8 0015D848  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 801608EC 0015D84C  48 00 02 B8 */	b lbl_80160BA4
lbl_801608F0:
/* 801608F0 0015D850  C0 22 9F B8 */	lfs f1, lbl_805ABCD8@sda21(r2)
/* 801608F4 0015D854  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 801608F8 0015D858  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801608FC 0015D85C  EC 61 00 32 */	fmuls f3, f1, f0
/* 80160900 0015D860  C0 02 9F B4 */	lfs f0, lbl_805ABCD4@sda21(r2)
/* 80160904 0015D864  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160908 0015D868  EC E1 01 32 */	fmuls f7, f1, f4
/* 8016090C 0015D86C  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80160910 0015D870  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160914 0015D874  EC A1 01 32 */	fmuls f5, f1, f4
/* 80160918 0015D878  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 8016091C 0015D87C  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160920 0015D880  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160924 0015D884  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160928 0015D888  EC C0 01 B2 */	fmuls f6, f0, f6
/* 8016092C 0015D88C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80160930 0015D890  EC BD 28 28 */	fsubs f5, f29, f5
/* 80160934 0015D894  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160938 0015D898  EC 87 30 28 */	fsubs f4, f7, f6
/* 8016093C 0015D89C  D0 5E 07 E4 */	stfs f2, 0x7e4(r30)
/* 80160940 0015D8A0  EC 45 18 28 */	fsubs f2, f5, f3
/* 80160944 0015D8A4  D0 9E 07 E8 */	stfs f4, 0x7e8(r30)
/* 80160948 0015D8A8  D0 5E 07 EC */	stfs f2, 0x7ec(r30)
/* 8016094C 0015D8AC  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160950 0015D8B0  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160954 0015D8B4  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160958 0015D8B8  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 8016095C 0015D8BC  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160960 0015D8C0  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160964 0015D8C4  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160968 0015D8C8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8016096C 0015D8CC  EC 7F 18 2A */	fadds f3, f31, f3
/* 80160970 0015D8D0  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160974 0015D8D4  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160978 0015D8D8  EC FE 38 2A */	fadds f7, f30, f7
/* 8016097C 0015D8DC  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160980 0015D8E0  EC 43 10 2A */	fadds f2, f3, f2
/* 80160984 0015D8E4  EC BD 28 2A */	fadds f5, f29, f5
/* 80160988 0015D8E8  EC 60 01 32 */	fmuls f3, f0, f4
/* 8016098C 0015D8EC  EC 87 30 2A */	fadds f4, f7, f6
/* 80160990 0015D8F0  D0 5E 08 00 */	stfs f2, 0x800(r30)
/* 80160994 0015D8F4  EC 45 18 2A */	fadds f2, f5, f3
/* 80160998 0015D8F8  D0 9E 08 04 */	stfs f4, 0x804(r30)
/* 8016099C 0015D8FC  D0 5E 08 08 */	stfs f2, 0x808(r30)
/* 801609A0 0015D900  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801609A4 0015D904  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801609A8 0015D908  EC 61 00 B2 */	fmuls f3, f1, f2
/* 801609AC 0015D90C  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 801609B0 0015D910  EC E1 01 32 */	fmuls f7, f1, f4
/* 801609B4 0015D914  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 801609B8 0015D918  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 801609BC 0015D91C  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801609C0 0015D920  EC 7F 18 2A */	fadds f3, f31, f3
/* 801609C4 0015D924  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 801609C8 0015D928  EC A1 01 72 */	fmuls f5, f1, f5
/* 801609CC 0015D92C  EC FE 38 2A */	fadds f7, f30, f7
/* 801609D0 0015D930  EC C0 01 B2 */	fmuls f6, f0, f6
/* 801609D4 0015D934  EC 43 10 28 */	fsubs f2, f3, f2
/* 801609D8 0015D938  EC BD 28 2A */	fadds f5, f29, f5
/* 801609DC 0015D93C  EC 60 01 32 */	fmuls f3, f0, f4
/* 801609E0 0015D940  EC 87 30 28 */	fsubs f4, f7, f6
/* 801609E4 0015D944  D0 5E 07 F0 */	stfs f2, 0x7f0(r30)
/* 801609E8 0015D948  EC 45 18 28 */	fsubs f2, f5, f3
/* 801609EC 0015D94C  D0 9E 07 F4 */	stfs f4, 0x7f4(r30)
/* 801609F0 0015D950  D0 5E 07 F8 */	stfs f2, 0x7f8(r30)
/* 801609F4 0015D954  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801609F8 0015D958  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 801609FC 0015D95C  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160A00 0015D960  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160A04 0015D964  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160A08 0015D968  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160A0C 0015D96C  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160A10 0015D970  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160A14 0015D974  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160A18 0015D978  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160A1C 0015D97C  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160A20 0015D980  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160A24 0015D984  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160A28 0015D988  EC 23 10 2A */	fadds f1, f3, f2
/* 80160A2C 0015D98C  EC 5D 28 28 */	fsubs f2, f29, f5
/* 80160A30 0015D990  EC 00 01 32 */	fmuls f0, f0, f4
/* 80160A34 0015D994  EC 67 30 2A */	fadds f3, f7, f6
/* 80160A38 0015D998  D0 3E 08 0C */	stfs f1, 0x80c(r30)
/* 80160A3C 0015D99C  EC 02 00 2A */	fadds f0, f2, f0
/* 80160A40 0015D9A0  D0 7E 08 10 */	stfs f3, 0x810(r30)
/* 80160A44 0015D9A4  D0 1E 08 14 */	stfs f0, 0x814(r30)
/* 80160A48 0015D9A8  48 00 01 5C */	b lbl_80160BA4
lbl_80160A4C:
/* 80160A4C 0015D9AC  C0 22 9F B8 */	lfs f1, lbl_805ABCD8@sda21(r2)
/* 80160A50 0015D9B0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80160A54 0015D9B4  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160A58 0015D9B8  EC 61 00 32 */	fmuls f3, f1, f0
/* 80160A5C 0015D9BC  C0 02 9F B4 */	lfs f0, lbl_805ABCD4@sda21(r2)
/* 80160A60 0015D9C0  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160A64 0015D9C4  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160A68 0015D9C8  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 80160A6C 0015D9CC  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160A70 0015D9D0  EC A1 01 32 */	fmuls f5, f1, f4
/* 80160A74 0015D9D4  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160A78 0015D9D8  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160A7C 0015D9DC  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160A80 0015D9E0  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160A84 0015D9E4  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160A88 0015D9E8  EC 43 10 2A */	fadds f2, f3, f2
/* 80160A8C 0015D9EC  EC BD 28 28 */	fsubs f5, f29, f5
/* 80160A90 0015D9F0  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160A94 0015D9F4  EC 87 30 2A */	fadds f4, f7, f6
/* 80160A98 0015D9F8  D0 5E 07 E4 */	stfs f2, 0x7e4(r30)
/* 80160A9C 0015D9FC  EC 45 18 2A */	fadds f2, f5, f3
/* 80160AA0 0015DA00  D0 9E 07 E8 */	stfs f4, 0x7e8(r30)
/* 80160AA4 0015DA04  D0 5E 07 EC */	stfs f2, 0x7ec(r30)
/* 80160AA8 0015DA08  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160AAC 0015DA0C  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160AB0 0015DA10  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160AB4 0015DA14  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160AB8 0015DA18  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160ABC 0015DA1C  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160AC0 0015DA20  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160AC4 0015DA24  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160AC8 0015DA28  EC 7F 18 2A */	fadds f3, f31, f3
/* 80160ACC 0015DA2C  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160AD0 0015DA30  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160AD4 0015DA34  EC FE 38 2A */	fadds f7, f30, f7
/* 80160AD8 0015DA38  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160ADC 0015DA3C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80160AE0 0015DA40  EC BD 28 2A */	fadds f5, f29, f5
/* 80160AE4 0015DA44  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160AE8 0015DA48  EC 87 30 28 */	fsubs f4, f7, f6
/* 80160AEC 0015DA4C  D0 5E 08 00 */	stfs f2, 0x800(r30)
/* 80160AF0 0015DA50  EC 45 18 28 */	fsubs f2, f5, f3
/* 80160AF4 0015DA54  D0 9E 08 04 */	stfs f4, 0x804(r30)
/* 80160AF8 0015DA58  D0 5E 08 08 */	stfs f2, 0x808(r30)
/* 80160AFC 0015DA5C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160B00 0015DA60  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160B04 0015DA64  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160B08 0015DA68  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160B0C 0015DA6C  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160B10 0015DA70  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160B14 0015DA74  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160B18 0015DA78  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160B1C 0015DA7C  EC 7F 18 2A */	fadds f3, f31, f3
/* 80160B20 0015DA80  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160B24 0015DA84  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160B28 0015DA88  EC FE 38 2A */	fadds f7, f30, f7
/* 80160B2C 0015DA8C  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160B30 0015DA90  EC 43 10 2A */	fadds f2, f3, f2
/* 80160B34 0015DA94  EC BD 28 2A */	fadds f5, f29, f5
/* 80160B38 0015DA98  EC 60 01 32 */	fmuls f3, f0, f4
/* 80160B3C 0015DA9C  EC 87 30 2A */	fadds f4, f7, f6
/* 80160B40 0015DAA0  D0 5E 07 F0 */	stfs f2, 0x7f0(r30)
/* 80160B44 0015DAA4  EC 45 18 2A */	fadds f2, f5, f3
/* 80160B48 0015DAA8  D0 9E 07 F4 */	stfs f4, 0x7f4(r30)
/* 80160B4C 0015DAAC  D0 5E 07 F8 */	stfs f2, 0x7f8(r30)
/* 80160B50 0015DAB0  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 80160B54 0015DAB4  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 80160B58 0015DAB8  EC 61 00 B2 */	fmuls f3, f1, f2
/* 80160B5C 0015DABC  C0 5E 00 3C */	lfs f2, 0x3c(r30)
/* 80160B60 0015DAC0  EC E1 01 32 */	fmuls f7, f1, f4
/* 80160B64 0015DAC4  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80160B68 0015DAC8  C0 DE 00 4C */	lfs f6, 0x4c(r30)
/* 80160B6C 0015DACC  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80160B70 0015DAD0  EC 7F 18 28 */	fsubs f3, f31, f3
/* 80160B74 0015DAD4  C0 9E 00 5C */	lfs f4, 0x5c(r30)
/* 80160B78 0015DAD8  EC A1 01 72 */	fmuls f5, f1, f5
/* 80160B7C 0015DADC  EC FE 38 28 */	fsubs f7, f30, f7
/* 80160B80 0015DAE0  EC C0 01 B2 */	fmuls f6, f0, f6
/* 80160B84 0015DAE4  EC 23 10 28 */	fsubs f1, f3, f2
/* 80160B88 0015DAE8  EC 5D 28 28 */	fsubs f2, f29, f5
/* 80160B8C 0015DAEC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80160B90 0015DAF0  EC 67 30 28 */	fsubs f3, f7, f6
/* 80160B94 0015DAF4  D0 3E 08 0C */	stfs f1, 0x80c(r30)
/* 80160B98 0015DAF8  EC 02 00 28 */	fsubs f0, f2, f0
/* 80160B9C 0015DAFC  D0 7E 08 10 */	stfs f3, 0x810(r30)
/* 80160BA0 0015DB00  D0 1E 08 14 */	stfs f0, 0x814(r30)
lbl_80160BA4:
/* 80160BA4 0015DB04  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80160BA8 0015DB08  38 60 00 01 */	li r3, 1
/* 80160BAC 0015DB0C  D0 1E 08 1C */	stfs f0, 0x81c(r30)
/* 80160BB0 0015DB10  D0 1E 08 20 */	stfs f0, 0x820(r30)
/* 80160BB4 0015DB14  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80160BB8 0015DB18  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80160BBC 0015DB1C  98 1E 08 35 */	stb r0, 0x835(r30)
/* 80160BC0 0015DB20  48 00 01 78 */	b lbl_80160D38
lbl_80160BC4:
/* 80160BC4 0015DB24  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80160BC8 0015DB28  2C 00 00 01 */	cmpwi r0, 1
/* 80160BCC 0015DB2C  41 82 00 D8 */	beq lbl_80160CA4
/* 80160BD0 0015DB30  40 80 00 EC */	bge lbl_80160CBC
/* 80160BD4 0015DB34  2C 00 00 00 */	cmpwi r0, 0
/* 80160BD8 0015DB38  40 80 00 08 */	bge lbl_80160BE0
/* 80160BDC 0015DB3C  48 00 00 E0 */	b lbl_80160CBC
lbl_80160BE0:
/* 80160BE0 0015DB40  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 80160BE4 0015DB44  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 80160BE8 0015DB48  2C 00 00 12 */	cmpwi r0, 0x12
/* 80160BEC 0015DB4C  40 82 00 10 */	bne lbl_80160BFC
/* 80160BF0 0015DB50  38 00 00 01 */	li r0, 1
/* 80160BF4 0015DB54  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80160BF8 0015DB58  48 00 00 C4 */	b lbl_80160CBC
lbl_80160BFC:
/* 80160BFC 0015DB5C  80 DF 08 4C */	lwz r6, 0x84c(r31)
/* 80160C00 0015DB60  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80160C04 0015DB64  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80160C08 0015DB68  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80160C0C 0015DB6C  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 80160C10 0015DB70  38 E0 00 06 */	li r7, 6
/* 80160C14 0015DB74  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 80160C18 0015DB78  38 A0 00 02 */	li r5, 2
/* 80160C1C 0015DB7C  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 80160C20 0015DB80  38 00 00 00 */	li r0, 0
/* 80160C24 0015DB84  3B E8 00 04 */	addi r31, r8, 4
/* 80160C28 0015DB88  90 81 00 74 */	stw r4, 0x74(r1)
/* 80160C2C 0015DB8C  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 80160C30 0015DB90  38 80 00 06 */	li r4, 6
/* 80160C34 0015DB94  90 E1 00 78 */	stw r7, 0x78(r1)
/* 80160C38 0015DB98  7F E3 FB 78 */	mr r3, r31
/* 80160C3C 0015DB9C  90 C1 00 74 */	stw r6, 0x74(r1)
/* 80160C40 0015DBA0  90 A1 00 7C */	stw r5, 0x7c(r1)
/* 80160C44 0015DBA4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80160C48 0015DBA8  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80160C4C 0015DBAC  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80160C50 0015DBB0  98 01 00 8C */	stb r0, 0x8c(r1)
/* 80160C54 0015DBB4  4B FD 07 E5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80160C58 0015DBB8  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80160C5C 0015DBBC  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80160C60 0015DBC0  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 80160C64 0015DBC4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80160C68 0015DBC8  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 80160C6C 0015DBCC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80160C70 0015DBD0  80 61 00 7C */	lwz r3, 0x7c(r1)
/* 80160C74 0015DBD4  80 A1 00 80 */	lwz r5, 0x80(r1)
/* 80160C78 0015DBD8  90 7F 01 30 */	stw r3, 0x130(r31)
/* 80160C7C 0015DBDC  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80160C80 0015DBE0  90 BF 01 34 */	stw r5, 0x134(r31)
/* 80160C84 0015DBE4  80 A1 00 88 */	lwz r5, 0x88(r1)
/* 80160C88 0015DBE8  90 7F 01 38 */	stw r3, 0x138(r31)
/* 80160C8C 0015DBEC  88 61 00 8C */	lbz r3, 0x8c(r1)
/* 80160C90 0015DBF0  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 80160C94 0015DBF4  90 81 00 74 */	stw r4, 0x74(r1)
/* 80160C98 0015DBF8  98 7F 01 40 */	stb r3, 0x140(r31)
/* 80160C9C 0015DBFC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80160CA0 0015DC00  48 00 00 1C */	b lbl_80160CBC
lbl_80160CA4:
/* 80160CA4 0015DC04  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80160CA8 0015DC08  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80160CAC 0015DC0C  2C 00 00 12 */	cmpwi r0, 0x12
/* 80160CB0 0015DC10  41 82 00 0C */	beq lbl_80160CBC
/* 80160CB4 0015DC14  38 00 00 02 */	li r0, 2
/* 80160CB8 0015DC18  90 1E 07 C8 */	stw r0, 0x7c8(r30)
lbl_80160CBC:
/* 80160CBC 0015DC1C  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80160CC0 0015DC20  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80160CC4 0015DC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80160CC8 0015DC28  4C 40 13 82 */	cror 2, 0, 2
/* 80160CCC 0015DC2C  40 82 00 6C */	bne lbl_80160D38
/* 80160CD0 0015DC30  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 80160CD4 0015DC34  48 00 00 64 */	b lbl_80160D38
lbl_80160CD8:
/* 80160CD8 0015DC38  38 00 00 00 */	li r0, 0
/* 80160CDC 0015DC3C  38 A0 00 00 */	li r5, 0
/* 80160CE0 0015DC40  98 1E 08 28 */	stb r0, 0x828(r30)
/* 80160CE4 0015DC44  38 C0 00 00 */	li r6, 0
/* 80160CE8 0015DC48  98 1E 08 29 */	stb r0, 0x829(r30)
/* 80160CEC 0015DC4C  48 00 25 B9 */	bl sub_801632a4
/* 80160CF0 0015DC50  7F C3 F3 78 */	mr r3, r30
/* 80160CF4 0015DC54  7F E4 FB 78 */	mr r4, r31
/* 80160CF8 0015DC58  38 A0 00 01 */	li r5, 1
/* 80160CFC 0015DC5C  38 C0 00 00 */	li r6, 0
/* 80160D00 0015DC60  48 00 25 A5 */	bl sub_801632a4
/* 80160D04 0015DC64  7F C3 F3 78 */	mr r3, r30
/* 80160D08 0015DC68  7F E4 FB 78 */	mr r4, r31
/* 80160D0C 0015DC6C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80160D10 0015DC70  38 A0 00 00 */	li r5, 0
/* 80160D14 0015DC74  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80160D18 0015DC78  7D 89 03 A6 */	mtctr r12
/* 80160D1C 0015DC7C  4E 80 04 21 */	bctrl 
/* 80160D20 0015DC80  C0 1E 05 F4 */	lfs f0, 0x5f4(r30)
/* 80160D24 0015DC84  38 60 00 00 */	li r3, 0
/* 80160D28 0015DC88  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80160D2C 0015DC8C  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80160D30 0015DC90  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80160D34 0015DC94  98 1E 08 35 */	stb r0, 0x835(r30)
lbl_80160D38:
/* 80160D38 0015DC98  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80160D3C 0015DC9C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80160D40 0015DCA0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80160D44 0015DCA4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80160D48 0015DCA8  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 80160D4C 0015DCAC  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80160D50 0015DCB0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80160D54 0015DCB4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80160D58 0015DCB8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80160D5C 0015DCBC  7C 08 03 A6 */	mtlr r0
/* 80160D60 0015DCC0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80160D64 0015DCC4  4E 80 00 20 */	blr 

.global Active__6CDroneFR13CStateManager9EStateMsgf
Active__6CDroneFR13CStateManager9EStateMsgf:
/* 80160D68 0015DCC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80160D6C 0015DCCC  7C 08 02 A6 */	mflr r0
/* 80160D70 0015DCD0  2C 05 00 01 */	cmpwi r5, 1
/* 80160D74 0015DCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80160D78 0015DCD8  41 82 00 40 */	beq lbl_80160DB8
/* 80160D7C 0015DCDC  40 80 00 10 */	bge lbl_80160D8C
/* 80160D80 0015DCE0  2C 05 00 00 */	cmpwi r5, 0
/* 80160D84 0015DCE4  40 80 00 14 */	bge lbl_80160D98
/* 80160D88 0015DCE8  48 00 00 30 */	b lbl_80160DB8
lbl_80160D8C:
/* 80160D8C 0015DCEC  2C 05 00 03 */	cmpwi r5, 3
/* 80160D90 0015DCF0  40 80 00 28 */	bge lbl_80160DB8
/* 80160D94 0015DCF4  48 00 00 1C */	b lbl_80160DB0
lbl_80160D98:
/* 80160D98 0015DCF8  C0 03 05 F0 */	lfs f0, 0x5f0(r3)
/* 80160D9C 0015DCFC  38 80 00 01 */	li r4, 1
/* 80160DA0 0015DD00  D0 03 03 40 */	stfs f0, 0x340(r3)
/* 80160DA4 0015DD04  80 63 04 50 */	lwz r3, 0x450(r3)
/* 80160DA8 0015DD08  4B FD 9C 31 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80160DAC 0015DD0C  48 00 00 0C */	b lbl_80160DB8
lbl_80160DB0:
/* 80160DB0 0015DD10  C0 03 05 F8 */	lfs f0, 0x5f8(r3)
/* 80160DB4 0015DD14  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
lbl_80160DB8:
/* 80160DB8 0015DD18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80160DBC 0015DD1C  7C 08 03 A6 */	mtlr r0
/* 80160DC0 0015DD20  38 21 00 10 */	addi r1, r1, 0x10
/* 80160DC4 0015DD24  4E 80 00 20 */	blr 

.global ProjectileAttack__6CDroneFR13CStateManager9EStateMsgf
ProjectileAttack__6CDroneFR13CStateManager9EStateMsgf:
/* 80160DC8 0015DD28  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80160DCC 0015DD2C  7C 08 02 A6 */	mflr r0
/* 80160DD0 0015DD30  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80160DD4 0015DD34  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80160DD8 0015DD38  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80160DDC 0015DD3C  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80160DE0 0015DD40  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80160DE4 0015DD44  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80160DE8 0015DD48  2C 05 00 01 */	cmpwi r5, 1
/* 80160DEC 0015DD4C  7C 7D 1B 78 */	mr r29, r3
/* 80160DF0 0015DD50  7C 9E 23 78 */	mr r30, r4
/* 80160DF4 0015DD54  41 82 00 D8 */	beq lbl_80160ECC
/* 80160DF8 0015DD58  40 80 00 10 */	bge lbl_80160E08
/* 80160DFC 0015DD5C  2C 05 00 00 */	cmpwi r5, 0
/* 80160E00 0015DD60  40 80 00 14 */	bge lbl_80160E14
/* 80160E04 0015DD64  48 00 04 28 */	b lbl_8016122C
lbl_80160E08:
/* 80160E08 0015DD68  2C 05 00 03 */	cmpwi r5, 3
/* 80160E0C 0015DD6C  40 80 04 20 */	bge lbl_8016122C
/* 80160E10 0015DD70  48 00 03 A4 */	b lbl_801611B4
lbl_80160E14:
/* 80160E14 0015DD74  38 00 00 00 */	li r0, 0
/* 80160E18 0015DD78  C0 02 9F BC */	lfs f0, lbl_805ABCDC@sda21(r2)
/* 80160E1C 0015DD7C  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 80160E20 0015DD80  7F C3 F3 78 */	mr r3, r30
/* 80160E24 0015DD84  38 81 00 2C */	addi r4, r1, 0x2c
/* 80160E28 0015DD88  80 BD 04 50 */	lwz r5, 0x450(r29)
/* 80160E2C 0015DD8C  D0 05 02 D4 */	stfs f0, 0x2d4(r5)
/* 80160E30 0015DD90  A0 1D 06 88 */	lhz r0, 0x688(r29)
/* 80160E34 0015DD94  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80160E38 0015DD98  4B EE B7 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80160E3C 0015DD9C  7C 64 1B 78 */	mr r4, r3
/* 80160E40 0015DDA0  38 61 00 38 */	addi r3, r1, 0x38
/* 80160E44 0015DDA4  4B F4 67 31 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 80160E48 0015DDA8  83 C3 00 04 */	lwz r30, 4(r3)
/* 80160E4C 0015DDAC  28 1E 00 00 */	cmplwi r30, 0
/* 80160E50 0015DDB0  41 82 00 54 */	beq lbl_80160EA4
/* 80160E54 0015DDB4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80160E58 0015DDB8  7F C3 F3 78 */	mr r3, r30
/* 80160E5C 0015DDBC  38 81 00 28 */	addi r4, r1, 0x28
/* 80160E60 0015DDC0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80160E64 0015DDC4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80160E68 0015DDC8  48 0D 82 9D */	bl HasTeamAiRole__10CTeamAiMgrCF9TUniqueId
/* 80160E6C 0015DDCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80160E70 0015DDD0  41 82 00 34 */	beq lbl_80160EA4
/* 80160E74 0015DDD4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80160E78 0015DDD8  7F C3 F3 78 */	mr r3, r30
/* 80160E7C 0015DDDC  38 81 00 20 */	addi r4, r1, 0x20
/* 80160E80 0015DDE0  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80160E84 0015DDE4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80160E88 0015DDE8  48 0D 77 3D */	bl AddProjectileAttacker__10CTeamAiMgrF9TUniqueId
/* 80160E8C 0015DDEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80160E90 0015DDF0  38 60 00 02 */	li r3, 2
/* 80160E94 0015DDF4  41 82 00 08 */	beq lbl_80160E9C
/* 80160E98 0015DDF8  38 60 00 00 */	li r3, 0
lbl_80160E9C:
/* 80160E9C 0015DDFC  90 7D 07 C8 */	stw r3, 0x7c8(r29)
/* 80160EA0 0015DE00  48 00 00 0C */	b lbl_80160EAC
lbl_80160EA4:
/* 80160EA4 0015DE04  38 00 00 00 */	li r0, 0
/* 80160EA8 0015DE08  90 1D 07 C8 */	stw r0, 0x7c8(r29)
lbl_80160EAC:
/* 80160EAC 0015DE0C  A8 9D 08 30 */	lha r4, 0x830(r29)
/* 80160EB0 0015DE10  38 60 00 01 */	li r3, 1
/* 80160EB4 0015DE14  38 04 00 01 */	addi r0, r4, 1
/* 80160EB8 0015DE18  B0 1D 08 30 */	sth r0, 0x830(r29)
/* 80160EBC 0015DE1C  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 80160EC0 0015DE20  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80160EC4 0015DE24  98 1D 08 34 */	stb r0, 0x834(r29)
/* 80160EC8 0015DE28  48 00 03 64 */	b lbl_8016122C
lbl_80160ECC:
/* 80160ECC 0015DE2C  80 1D 07 C8 */	lwz r0, 0x7c8(r29)
/* 80160ED0 0015DE30  2C 00 00 01 */	cmpwi r0, 1
/* 80160ED4 0015DE34  41 82 00 E8 */	beq lbl_80160FBC
/* 80160ED8 0015DE38  40 80 02 70 */	bge lbl_80161148
/* 80160EDC 0015DE3C  2C 00 00 00 */	cmpwi r0, 0
/* 80160EE0 0015DE40  40 80 00 08 */	bge lbl_80160EE8
/* 80160EE4 0015DE44  48 00 02 64 */	b lbl_80161148
lbl_80160EE8:
/* 80160EE8 0015DE48  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 80160EEC 0015DE4C  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 80160EF0 0015DE50  2C 00 00 12 */	cmpwi r0, 0x12
/* 80160EF4 0015DE54  40 82 00 10 */	bne lbl_80160F04
/* 80160EF8 0015DE58  38 00 00 01 */	li r0, 1
/* 80160EFC 0015DE5C  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 80160F00 0015DE60  48 00 02 48 */	b lbl_80161148
lbl_80160F04:
/* 80160F04 0015DE64  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 80160F08 0015DE68  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80160F0C 0015DE6C  80 DE 08 4C */	lwz r6, 0x84c(r30)
/* 80160F10 0015DE70  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80160F14 0015DE74  54 05 E7 FE */	rlwinm r5, r0, 0x1c, 0x1f, 0x1f
/* 80160F18 0015DE78  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80160F1C 0015DE7C  7C 05 00 D0 */	neg r0, r5
/* 80160F20 0015DE80  C0 46 00 60 */	lfs f2, 0x60(r6)
/* 80160F24 0015DE84  7C 00 2B 78 */	or r0, r0, r5
/* 80160F28 0015DE88  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 80160F2C 0015DE8C  C0 06 00 40 */	lfs f0, 0x40(r6)
/* 80160F30 0015DE90  54 07 0F FE */	srwi r7, r0, 0x1f
/* 80160F34 0015DE94  38 C0 00 06 */	li r6, 6
/* 80160F38 0015DE98  38 00 00 00 */	li r0, 0
/* 80160F3C 0015DE9C  3B E8 00 04 */	addi r31, r8, 4
/* 80160F40 0015DEA0  90 81 00 AC */	stw r4, 0xac(r1)
/* 80160F44 0015DEA4  38 A3 A9 CC */	addi r5, r3, lbl_803DA9CC@l
/* 80160F48 0015DEA8  38 80 00 06 */	li r4, 6
/* 80160F4C 0015DEAC  90 C1 00 B0 */	stw r6, 0xb0(r1)
/* 80160F50 0015DEB0  7F E3 FB 78 */	mr r3, r31
/* 80160F54 0015DEB4  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80160F58 0015DEB8  90 E1 00 B4 */	stw r7, 0xb4(r1)
/* 80160F5C 0015DEBC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80160F60 0015DEC0  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80160F64 0015DEC4  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80160F68 0015DEC8  98 01 00 C4 */	stb r0, 0xc4(r1)
/* 80160F6C 0015DECC  4B FD 04 CD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80160F70 0015DED0  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 80160F74 0015DED4  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 80160F78 0015DED8  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 80160F7C 0015DEDC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80160F80 0015DEE0  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 80160F84 0015DEE4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80160F88 0015DEE8  80 61 00 B4 */	lwz r3, 0xb4(r1)
/* 80160F8C 0015DEEC  80 A1 00 B8 */	lwz r5, 0xb8(r1)
/* 80160F90 0015DEF0  90 7F 01 30 */	stw r3, 0x130(r31)
/* 80160F94 0015DEF4  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80160F98 0015DEF8  90 BF 01 34 */	stw r5, 0x134(r31)
/* 80160F9C 0015DEFC  80 A1 00 C0 */	lwz r5, 0xc0(r1)
/* 80160FA0 0015DF00  90 7F 01 38 */	stw r3, 0x138(r31)
/* 80160FA4 0015DF04  88 61 00 C4 */	lbz r3, 0xc4(r1)
/* 80160FA8 0015DF08  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 80160FAC 0015DF0C  90 81 00 AC */	stw r4, 0xac(r1)
/* 80160FB0 0015DF10  98 7F 01 40 */	stb r3, 0x140(r31)
/* 80160FB4 0015DF14  90 01 00 AC */	stw r0, 0xac(r1)
/* 80160FB8 0015DF18  48 00 01 90 */	b lbl_80161148
lbl_80160FBC:
/* 80160FBC 0015DF1C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80160FC0 0015DF20  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80160FC4 0015DF24  2C 00 00 12 */	cmpwi r0, 0x12
/* 80160FC8 0015DF28  41 82 00 0C */	beq lbl_80160FD4
/* 80160FCC 0015DF2C  38 00 00 02 */	li r0, 2
/* 80160FD0 0015DF30  90 1D 07 C8 */	stw r0, 0x7c8(r29)
lbl_80160FD4:
/* 80160FD4 0015DF34  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80160FD8 0015DF38  7F C5 F3 78 */	mr r5, r30
/* 80160FDC 0015DF3C  38 61 00 88 */	addi r3, r1, 0x88
/* 80160FE0 0015DF40  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80160FE4 0015DF44  81 84 00 00 */	lwz r12, 0(r4)
/* 80160FE8 0015DF48  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80160FEC 0015DF4C  7D 89 03 A6 */	mtctr r12
/* 80160FF0 0015DF50  4E 80 04 21 */	bctrl 
/* 80160FF4 0015DF54  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80160FF8 0015DF58  C0 61 00 90 */	lfs f3, 0x90(r1)
/* 80160FFC 0015DF5C  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80161000 0015DF60  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80161004 0015DF64  EF E3 10 28 */	fsubs f31, f3, f2
/* 80161008 0015DF68  C0 9D 06 68 */	lfs f4, 0x668(r29)
/* 8016100C 0015DF6C  C0 7D 06 64 */	lfs f3, 0x664(r29)
/* 80161010 0015DF70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80161014 0015DF74  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 80161018 0015DF78  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8016101C 0015DF7C  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80161020 0015DF80  40 80 00 10 */	bge lbl_80161030
/* 80161024 0015DF84  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161028 0015DF88  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8016102C 0015DF8C  41 81 00 0C */	bgt lbl_80161038
lbl_80161030:
/* 80161030 0015DF90  FC 04 18 40 */	fcmpo cr0, f4, f3
/* 80161034 0015DF94  40 81 01 0C */	ble lbl_80161140
lbl_80161038:
/* 80161038 0015DF98  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 8016103C 0015DF9C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80161040 0015DFA0  41 81 00 10 */	bgt lbl_80161050
/* 80161044 0015DFA4  FC 00 00 50 */	fneg f0, f0
/* 80161048 0015DFA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8016104C 0015DFAC  40 80 00 B0 */	bge lbl_801610FC
lbl_80161050:
/* 80161050 0015DFB0  FC 20 FA 10 */	fabs f1, f31
/* 80161054 0015DFB4  C0 02 9F B8 */	lfs f0, lbl_805ABCD8@sda21(r2)
/* 80161058 0015DFB8  FC 20 08 18 */	frsp f1, f1
/* 8016105C 0015DFBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161060 0015DFC0  40 81 00 0C */	ble lbl_8016106C
/* 80161064 0015DFC4  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80161068 0015DFC8  48 00 00 0C */	b lbl_80161074
lbl_8016106C:
/* 8016106C 0015DFCC  C0 02 9F 78 */	lfs f0, lbl_805ABC98@sda21(r2)
/* 80161070 0015DFD0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80161074:
/* 80161074 0015DFD4  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161078 0015DFD8  C0 7D 05 E4 */	lfs f3, 0x5e4(r29)
/* 8016107C 0015DFDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80161080 0015DFE0  40 80 00 08 */	bge lbl_80161088
/* 80161084 0015DFE4  FC 20 08 50 */	fneg f1, f1
lbl_80161088:
/* 80161088 0015DFE8  C0 42 9F 68 */	lfs f2, lbl_805ABC88@sda21(r2)
/* 8016108C 0015DFEC  EC 03 00 72 */	fmuls f0, f3, f1
/* 80161090 0015DFF0  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80161094 0015DFF4  38 61 00 64 */	addi r3, r1, 0x64
/* 80161098 0015DFF8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8016109C 0015DFFC  38 9D 00 34 */	addi r4, r29, 0x34
/* 801610A0 0015E000  EC 01 00 32 */	fmuls f0, f1, f0
/* 801610A4 0015E004  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 801610A8 0015E008  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801610AC 0015E00C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801610B0 0015E010  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 801610B4 0015E014  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 801610B8 0015E018  48 1B 19 6D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801610BC 0015E01C  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 801610C0 0015E020  7F A4 EB 78 */	mr r4, r29
/* 801610C4 0015E024  38 61 00 70 */	addi r3, r1, 0x70
/* 801610C8 0015E028  38 A1 00 64 */	addi r5, r1, 0x64
/* 801610CC 0015E02C  4B FB 9F 3D */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 801610D0 0015E030  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 801610D4 0015E034  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801610D8 0015E038  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 801610DC 0015E03C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 801610E0 0015E040  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 801610E4 0015E044  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 801610E8 0015E048  4B EB A4 4D */	bl Identity__10CAxisAngleFv
/* 801610EC 0015E04C  7C 65 1B 78 */	mr r5, r3
/* 801610F0 0015E050  7F A3 EB 78 */	mr r3, r29
/* 801610F4 0015E054  38 81 00 94 */	addi r4, r1, 0x94
/* 801610F8 0015E058  4B FB B2 A1 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_801610FC:
/* 801610FC 0015E05C  C0 3D 06 30 */	lfs f1, 0x630(r29)
/* 80161100 0015E060  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161104 0015E064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161108 0015E068  4C 40 13 82 */	cror 2, 0, 2
/* 8016110C 0015E06C  40 82 00 3C */	bne lbl_80161148
/* 80161110 0015E070  C0 02 9F C0 */	lfs f0, lbl_805ABCE0@sda21(r2)
/* 80161114 0015E074  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80161118 0015E078  41 81 00 10 */	bgt lbl_80161128
/* 8016111C 0015E07C  C0 02 9F C4 */	lfs f0, lbl_805ABCE4@sda21(r2)
/* 80161120 0015E080  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80161124 0015E084  40 80 00 10 */	bge lbl_80161134
lbl_80161128:
/* 80161128 0015E088  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8016112C 0015E08C  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 80161130 0015E090  48 00 00 18 */	b lbl_80161148
lbl_80161134:
/* 80161134 0015E094  C0 02 9F A8 */	lfs f0, lbl_805ABCC8@sda21(r2)
/* 80161138 0015E098  D0 1D 06 34 */	stfs f0, 0x634(r29)
/* 8016113C 0015E09C  48 00 00 0C */	b lbl_80161148
lbl_80161140:
/* 80161140 0015E0A0  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161144 0015E0A4  D0 1D 06 34 */	stfs f0, 0x634(r29)
lbl_80161148:
/* 80161148 0015E0A8  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 8016114C 0015E0AC  38 61 00 58 */	addi r3, r1, 0x58
/* 80161150 0015E0B0  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80161154 0015E0B4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80161158 0015E0B8  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 8016115C 0015E0BC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80161160 0015E0C0  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80161164 0015E0C4  EC 25 00 28 */	fsubs f1, f5, f0
/* 80161168 0015E0C8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8016116C 0015E0CC  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 80161170 0015E0D0  EC 44 10 28 */	fsubs f2, f4, f2
/* 80161174 0015E0D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80161178 0015E0D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8016117C 0015E0DC  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80161180 0015E0E0  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80161184 0015E0E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80161188 0015E0E8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8016118C 0015E0EC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80161190 0015E0F0  48 1B 36 C1 */	bl AsNormalized__9CVector3fCFv
/* 80161194 0015E0F4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80161198 0015E0F8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8016119C 0015E0FC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801611A0 0015E100  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801611A4 0015E104  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801611A8 0015E108  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801611AC 0015E10C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801611B0 0015E110  48 00 00 7C */	b lbl_8016122C
lbl_801611B4:
/* 801611B4 0015E114  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801611B8 0015E118  7F C3 F3 78 */	mr r3, r30
/* 801611BC 0015E11C  80 BD 04 50 */	lwz r5, 0x450(r29)
/* 801611C0 0015E120  38 81 00 18 */	addi r4, r1, 0x18
/* 801611C4 0015E124  D0 05 02 D4 */	stfs f0, 0x2d4(r5)
/* 801611C8 0015E128  A0 1D 06 88 */	lhz r0, 0x688(r29)
/* 801611CC 0015E12C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801611D0 0015E130  4B EE B3 A5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801611D4 0015E134  7C 64 1B 78 */	mr r4, r3
/* 801611D8 0015E138  38 61 00 30 */	addi r3, r1, 0x30
/* 801611DC 0015E13C  4B F4 63 99 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801611E0 0015E140  83 C3 00 04 */	lwz r30, 4(r3)
/* 801611E4 0015E144  28 1E 00 00 */	cmplwi r30, 0
/* 801611E8 0015E148  41 82 00 3C */	beq lbl_80161224
/* 801611EC 0015E14C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801611F0 0015E150  7F C3 F3 78 */	mr r3, r30
/* 801611F4 0015E154  38 81 00 14 */	addi r4, r1, 0x14
/* 801611F8 0015E158  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801611FC 0015E15C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80161200 0015E160  48 0D 79 01 */	bl IsProjectileAttacker__10CTeamAiMgrCF9TUniqueId
/* 80161204 0015E164  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80161208 0015E168  41 82 00 1C */	beq lbl_80161224
/* 8016120C 0015E16C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80161210 0015E170  7F C3 F3 78 */	mr r3, r30
/* 80161214 0015E174  38 81 00 0C */	addi r4, r1, 0xc
/* 80161218 0015E178  B0 01 00 08 */	sth r0, 8(r1)
/* 8016121C 0015E17C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80161220 0015E180  48 0D 72 C5 */	bl RemoveProjectileAttacker__10CTeamAiMgrF9TUniqueId
lbl_80161224:
/* 80161224 0015E184  C0 1D 05 FC */	lfs f0, 0x5fc(r29)
/* 80161228 0015E188  D0 1D 06 24 */	stfs f0, 0x624(r29)
lbl_8016122C:
/* 8016122C 0015E18C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 80161230 0015E190  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80161234 0015E194  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80161238 0015E198  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8016123C 0015E19C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80161240 0015E1A0  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80161244 0015E1A4  7C 08 03 A6 */	mtlr r0
/* 80161248 0015E1A8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8016124C 0015E1AC  4E 80 00 20 */	blr 

.global sub_80161250
sub_80161250:
/* 80161250 0015E1B0  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 80161254 0015E1B4  20 00 00 02 */	subfic r0, r0, 2
/* 80161258 0015E1B8  7C 00 00 34 */	cntlzw r0, r0
/* 8016125C 0015E1BC  54 03 D9 7E */	srwi r3, r0, 5
/* 80161260 0015E1C0  4E 80 00 20 */	blr 

.global TelegraphAttack__6CDroneFR13CStateManager9EStateMsgf
TelegraphAttack__6CDroneFR13CStateManager9EStateMsgf:
/* 80161264 0015E1C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80161268 0015E1C8  7C 08 02 A6 */	mflr r0
/* 8016126C 0015E1CC  2C 05 00 01 */	cmpwi r5, 1
/* 80161270 0015E1D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80161274 0015E1D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80161278 0015E1D8  41 82 00 2C */	beq lbl_801612A4
/* 8016127C 0015E1DC  40 80 00 10 */	bge lbl_8016128C
/* 80161280 0015E1E0  2C 05 00 00 */	cmpwi r5, 0
/* 80161284 0015E1E4  40 80 00 14 */	bge lbl_80161298
/* 80161288 0015E1E8  48 00 00 E8 */	b lbl_80161370
lbl_8016128C:
/* 8016128C 0015E1EC  2C 05 00 03 */	cmpwi r5, 3
/* 80161290 0015E1F0  40 80 00 E0 */	bge lbl_80161370
/* 80161294 0015E1F4  48 00 00 CC */	b lbl_80161360
lbl_80161298:
/* 80161298 0015E1F8  38 00 00 00 */	li r0, 0
/* 8016129C 0015E1FC  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 801612A0 0015E200  48 00 00 D0 */	b lbl_80161370
lbl_801612A4:
/* 801612A4 0015E204  80 03 07 C8 */	lwz r0, 0x7c8(r3)
/* 801612A8 0015E208  2C 00 00 01 */	cmpwi r0, 1
/* 801612AC 0015E20C  41 82 00 98 */	beq lbl_80161344
/* 801612B0 0015E210  40 80 00 C0 */	bge lbl_80161370
/* 801612B4 0015E214  2C 00 00 00 */	cmpwi r0, 0
/* 801612B8 0015E218  40 80 00 0C */	bge lbl_801612C4
/* 801612BC 0015E21C  48 00 00 B4 */	b lbl_80161370
/* 801612C0 0015E220  48 00 00 B0 */	b lbl_80161370
lbl_801612C4:
/* 801612C4 0015E224  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 801612C8 0015E228  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801612CC 0015E22C  2C 00 00 10 */	cmpwi r0, 0x10
/* 801612D0 0015E230  40 82 00 10 */	bne lbl_801612E0
/* 801612D4 0015E234  38 00 00 01 */	li r0, 1
/* 801612D8 0015E238  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 801612DC 0015E23C  48 00 00 94 */	b lbl_80161370
lbl_801612E0:
/* 801612E0 0015E240  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801612E4 0015E244  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801612E8 0015E248  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801612EC 0015E24C  38 80 00 12 */	li r4, 0x12
/* 801612F0 0015E250  90 01 00 08 */	stw r0, 8(r1)
/* 801612F4 0015E254  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801612F8 0015E258  38 00 00 01 */	li r0, 1
/* 801612FC 0015E25C  3B E6 00 04 */	addi r31, r6, 4
/* 80161300 0015E260  90 81 00 0C */	stw r4, 0xc(r1)
/* 80161304 0015E264  7F E3 FB 78 */	mr r3, r31
/* 80161308 0015E268  38 80 00 12 */	li r4, 0x12
/* 8016130C 0015E26C  90 A1 00 08 */	stw r5, 8(r1)
/* 80161310 0015E270  90 01 00 10 */	stw r0, 0x10(r1)
/* 80161314 0015E274  4B FD 01 25 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80161318 0015E278  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8016131C 0015E27C  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 80161320 0015E280  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 80161324 0015E284  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161328 0015E288  90 1F 02 14 */	stw r0, 0x214(r31)
/* 8016132C 0015E28C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80161330 0015E290  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80161334 0015E294  90 81 00 08 */	stw r4, 8(r1)
/* 80161338 0015E298  90 7F 02 18 */	stw r3, 0x218(r31)
/* 8016133C 0015E29C  90 01 00 08 */	stw r0, 8(r1)
/* 80161340 0015E2A0  48 00 00 30 */	b lbl_80161370
lbl_80161344:
/* 80161344 0015E2A4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 80161348 0015E2A8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8016134C 0015E2AC  2C 00 00 10 */	cmpwi r0, 0x10
/* 80161350 0015E2B0  41 82 00 20 */	beq lbl_80161370
/* 80161354 0015E2B4  38 00 00 02 */	li r0, 2
/* 80161358 0015E2B8  90 03 07 C8 */	stw r0, 0x7c8(r3)
/* 8016135C 0015E2BC  48 00 00 14 */	b lbl_80161370
lbl_80161360:
/* 80161360 0015E2C0  7C 85 23 78 */	mr r5, r4
/* 80161364 0015E2C4  38 80 00 09 */	li r4, 9
/* 80161368 0015E2C8  38 C0 FF FF */	li r6, -1
/* 8016136C 0015E2CC  4B EE FD 55 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80161370:
/* 80161370 0015E2D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80161374 0015E2D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80161378 0015E2D8  7C 08 03 A6 */	mtlr r0
/* 8016137C 0015E2DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80161380 0015E2E0  4E 80 00 20 */	blr 

.global Flee__6CDroneFR13CStateManager9EStateMsgf
Flee__6CDroneFR13CStateManager9EStateMsgf:
/* 80161384 0015E2E4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80161388 0015E2E8  7C 08 02 A6 */	mflr r0
/* 8016138C 0015E2EC  2C 05 00 01 */	cmpwi r5, 1
/* 80161390 0015E2F0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80161394 0015E2F4  93 E1 00 EC */	stw r31, 0xec(r1)
/* 80161398 0015E2F8  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 8016139C 0015E2FC  7C 9E 23 78 */	mr r30, r4
/* 801613A0 0015E300  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 801613A4 0015E304  7C 7D 1B 78 */	mr r29, r3
/* 801613A8 0015E308  41 82 01 08 */	beq lbl_801614B0
/* 801613AC 0015E30C  40 80 03 40 */	bge lbl_801616EC
/* 801613B0 0015E310  2C 05 00 00 */	cmpwi r5, 0
/* 801613B4 0015E314  40 80 00 0C */	bge lbl_801613C0
/* 801613B8 0015E318  48 00 03 34 */	b lbl_801616EC
/* 801613BC 0015E31C  48 00 03 30 */	b lbl_801616EC
lbl_801613C0:
/* 801613C0 0015E320  38 A0 00 00 */	li r5, 0
/* 801613C4 0015E324  38 60 00 00 */	li r3, 0
/* 801613C8 0015E328  90 BD 07 C8 */	stw r5, 0x7c8(r29)
/* 801613CC 0015E32C  38 80 00 01 */	li r4, 1
/* 801613D0 0015E330  88 1D 08 32 */	lbz r0, 0x832(r29)
/* 801613D4 0015E334  50 A0 2E 34 */	rlwimi r0, r5, 5, 0x18, 0x1a
/* 801613D8 0015E338  98 1D 08 32 */	stb r0, 0x832(r29)
/* 801613DC 0015E33C  80 AD 8D 80 */	lwz r5, lbl_805A7940@sda21(r13)
/* 801613E0 0015E340  48 22 8B 15 */	bl __shl2i
/* 801613E4 0015E344  39 00 00 01 */	li r8, 1
/* 801613E8 0015E348  38 00 00 00 */	li r0, 0
/* 801613EC 0015E34C  90 81 00 9C */	stw r4, 0x9c(r1)
/* 801613F0 0015E350  7F C4 F3 78 */	mr r4, r30
/* 801613F4 0015E354  C0 22 9F B8 */	lfs f1, lbl_805ABCD8@sda21(r2)
/* 801613F8 0015E358  38 A1 00 74 */	addi r5, r1, 0x74
/* 801613FC 0015E35C  90 61 00 98 */	stw r3, 0x98(r1)
/* 80161400 0015E360  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80161404 0015E364  38 C1 00 68 */	addi r6, r1, 0x68
/* 80161408 0015E368  38 E1 00 98 */	addi r7, r1, 0x98
/* 8016140C 0015E36C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80161410 0015E370  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80161414 0015E374  91 01 00 A8 */	stw r8, 0xa8(r1)
/* 80161418 0015E378  C0 DD 00 58 */	lfs f6, 0x58(r29)
/* 8016141C 0015E37C  C0 BD 00 48 */	lfs f5, 0x48(r29)
/* 80161420 0015E380  C0 9D 00 38 */	lfs f4, 0x38(r29)
/* 80161424 0015E384  FC 00 30 50 */	fneg f0, f6
/* 80161428 0015E388  FC 40 28 50 */	fneg f2, f5
/* 8016142C 0015E38C  91 01 00 90 */	stw r8, 0x90(r1)
/* 80161430 0015E390  FC 60 20 50 */	fneg f3, f4
/* 80161434 0015E394  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80161438 0015E398  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8016143C 0015E39C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80161440 0015E3A0  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80161444 0015E3A4  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80161448 0015E3A8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8016144C 0015E3AC  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 80161450 0015E3B0  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 80161454 0015E3B4  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 80161458 0015E3B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8016145C 0015E3BC  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80161460 0015E3C0  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80161464 0015E3C4  4B EE BB 35 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80161468 0015E3C8  88 01 00 D0 */	lbz r0, 0xd0(r1)
/* 8016146C 0015E3CC  28 00 00 00 */	cmplwi r0, 0
/* 80161470 0015E3D0  41 82 02 7C */	beq lbl_801616EC
/* 80161474 0015E3D4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80161478 0015E3D8  48 1B 10 65 */	bl Float__9CRandom16Fv
/* 8016147C 0015E3DC  C0 02 9F 80 */	lfs f0, lbl_805ABCA0@sda21(r2)
/* 80161480 0015E3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161484 0015E3E4  40 80 00 18 */	bge lbl_8016149C
/* 80161488 0015E3E8  88 1D 08 32 */	lbz r0, 0x832(r29)
/* 8016148C 0015E3EC  38 60 00 01 */	li r3, 1
/* 80161490 0015E3F0  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 80161494 0015E3F4  98 1D 08 32 */	stb r0, 0x832(r29)
/* 80161498 0015E3F8  48 00 02 54 */	b lbl_801616EC
lbl_8016149C:
/* 8016149C 0015E3FC  88 1D 08 32 */	lbz r0, 0x832(r29)
/* 801614A0 0015E400  38 60 00 02 */	li r3, 2
/* 801614A4 0015E404  50 60 2E 34 */	rlwimi r0, r3, 5, 0x18, 0x1a
/* 801614A8 0015E408  98 1D 08 32 */	stb r0, 0x832(r29)
/* 801614AC 0015E40C  48 00 02 40 */	b lbl_801616EC
lbl_801614B0:
/* 801614B0 0015E410  80 1D 07 C8 */	lwz r0, 0x7c8(r29)
/* 801614B4 0015E414  2C 00 00 01 */	cmpwi r0, 1
/* 801614B8 0015E418  41 82 01 B4 */	beq lbl_8016166C
/* 801614BC 0015E41C  40 80 01 C8 */	bge lbl_80161684
/* 801614C0 0015E420  2C 00 00 00 */	cmpwi r0, 0
/* 801614C4 0015E424  40 80 00 0C */	bge lbl_801614D0
/* 801614C8 0015E428  48 00 01 BC */	b lbl_80161684
/* 801614CC 0015E42C  48 00 01 B8 */	b lbl_80161684
lbl_801614D0:
/* 801614D0 0015E430  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801614D4 0015E434  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801614D8 0015E438  2C 00 00 03 */	cmpwi r0, 3
/* 801614DC 0015E43C  40 82 00 10 */	bne lbl_801614EC
/* 801614E0 0015E440  38 00 00 01 */	li r0, 1
/* 801614E4 0015E444  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 801614E8 0015E448  48 00 01 9C */	b lbl_80161684
lbl_801614EC:
/* 801614EC 0015E44C  88 1D 08 32 */	lbz r0, 0x832(r29)
/* 801614F0 0015E450  3B E3 00 04 */	addi r31, r3, 4
/* 801614F4 0015E454  54 00 C0 06 */	rlwinm r0, r0, 0x18, 0, 3
/* 801614F8 0015E458  7C 00 EE 70 */	srawi r0, r0, 0x1d
/* 801614FC 0015E45C  2C 00 00 01 */	cmpwi r0, 1
/* 80161500 0015E460  41 82 00 8C */	beq lbl_8016158C
/* 80161504 0015E464  40 80 00 10 */	bge lbl_80161514
/* 80161508 0015E468  2C 00 00 00 */	cmpwi r0, 0
/* 8016150C 0015E46C  40 80 00 14 */	bge lbl_80161520
/* 80161510 0015E470  48 00 01 74 */	b lbl_80161684
lbl_80161514:
/* 80161514 0015E474  2C 00 00 03 */	cmpwi r0, 3
/* 80161518 0015E478  40 80 01 6C */	bge lbl_80161684
/* 8016151C 0015E47C  48 00 00 E0 */	b lbl_801615FC
lbl_80161520:
/* 80161520 0015E480  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161524 0015E484  38 C0 00 01 */	li r6, 1
/* 80161528 0015E488  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8016152C 0015E48C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161530 0015E490  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80161534 0015E494  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 80161538 0015E498  38 00 00 02 */	li r0, 2
/* 8016153C 0015E49C  7F E3 FB 78 */	mr r3, r31
/* 80161540 0015E4A0  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80161544 0015E4A4  38 80 00 01 */	li r4, 1
/* 80161548 0015E4A8  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8016154C 0015E4AC  90 C1 00 54 */	stw r6, 0x54(r1)
/* 80161550 0015E4B0  90 01 00 58 */	stw r0, 0x58(r1)
/* 80161554 0015E4B4  4B FC FE E5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80161558 0015E4B8  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8016155C 0015E4BC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161560 0015E4C0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80161564 0015E4C4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161568 0015E4C8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8016156C 0015E4CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80161570 0015E4D0  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 80161574 0015E4D4  90 81 00 4C */	stw r4, 0x4c(r1)
/* 80161578 0015E4D8  80 61 00 58 */	lwz r3, 0x58(r1)
/* 8016157C 0015E4DC  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80161580 0015E4E0  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80161584 0015E4E4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80161588 0015E4E8  48 00 00 FC */	b lbl_80161684
lbl_8016158C:
/* 8016158C 0015E4EC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80161590 0015E4F0  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161594 0015E4F4  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80161598 0015E4F8  38 80 00 01 */	li r4, 1
/* 8016159C 0015E4FC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801615A0 0015E500  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 801615A4 0015E504  38 A0 00 02 */	li r5, 2
/* 801615A8 0015E508  38 00 00 00 */	li r0, 0
/* 801615AC 0015E50C  90 81 00 40 */	stw r4, 0x40(r1)
/* 801615B0 0015E510  7F E3 FB 78 */	mr r3, r31
/* 801615B4 0015E514  38 80 00 01 */	li r4, 1
/* 801615B8 0015E518  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 801615BC 0015E51C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 801615C0 0015E520  90 01 00 48 */	stw r0, 0x48(r1)
/* 801615C4 0015E524  4B FC FE 75 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801615C8 0015E528  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801615CC 0015E52C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801615D0 0015E530  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801615D4 0015E534  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801615D8 0015E538  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801615DC 0015E53C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801615E0 0015E540  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 801615E4 0015E544  90 81 00 3C */	stw r4, 0x3c(r1)
/* 801615E8 0015E548  80 61 00 48 */	lwz r3, 0x48(r1)
/* 801615EC 0015E54C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 801615F0 0015E550  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 801615F4 0015E554  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801615F8 0015E558  48 00 00 8C */	b lbl_80161684
lbl_801615FC:
/* 801615FC 0015E55C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80161600 0015E560  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161604 0015E564  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80161608 0015E568  38 80 00 01 */	li r4, 1
/* 8016160C 0015E56C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80161610 0015E570  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 80161614 0015E574  38 A0 00 03 */	li r5, 3
/* 80161618 0015E578  38 00 00 00 */	li r0, 0
/* 8016161C 0015E57C  90 81 00 30 */	stw r4, 0x30(r1)
/* 80161620 0015E580  7F E3 FB 78 */	mr r3, r31
/* 80161624 0015E584  38 80 00 01 */	li r4, 1
/* 80161628 0015E588  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8016162C 0015E58C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80161630 0015E590  90 01 00 38 */	stw r0, 0x38(r1)
/* 80161634 0015E594  4B FC FE 05 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80161638 0015E598  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8016163C 0015E59C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161640 0015E5A0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80161644 0015E5A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161648 0015E5A8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8016164C 0015E5AC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80161650 0015E5B0  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80161654 0015E5B4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80161658 0015E5B8  80 61 00 38 */	lwz r3, 0x38(r1)
/* 8016165C 0015E5BC  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80161660 0015E5C0  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80161664 0015E5C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80161668 0015E5C8  48 00 00 1C */	b lbl_80161684
lbl_8016166C:
/* 8016166C 0015E5CC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80161670 0015E5D0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80161674 0015E5D4  2C 00 00 03 */	cmpwi r0, 3
/* 80161678 0015E5D8  41 82 00 0C */	beq lbl_80161684
/* 8016167C 0015E5DC  38 00 00 02 */	li r0, 2
/* 80161680 0015E5E0  90 1D 07 C8 */	stw r0, 0x7c8(r29)
lbl_80161684:
/* 80161684 0015E5E4  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80161688 0015E5E8  38 61 00 20 */	addi r3, r1, 0x20
/* 8016168C 0015E5EC  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80161690 0015E5F0  38 81 00 14 */	addi r4, r1, 0x14
/* 80161694 0015E5F4  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80161698 0015E5F8  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 8016169C 0015E5FC  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 801616A0 0015E600  EC 25 00 28 */	fsubs f1, f5, f0
/* 801616A4 0015E604  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801616A8 0015E608  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 801616AC 0015E60C  EC 44 10 28 */	fsubs f2, f4, f2
/* 801616B0 0015E610  D0 01 00 08 */	stfs f0, 8(r1)
/* 801616B4 0015E614  EC 00 18 28 */	fsubs f0, f0, f3
/* 801616B8 0015E618  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801616BC 0015E61C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801616C0 0015E620  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801616C4 0015E624  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801616C8 0015E628  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801616CC 0015E62C  48 1B 31 85 */	bl AsNormalized__9CVector3fCFv
/* 801616D0 0015E630  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801616D4 0015E634  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801616D8 0015E638  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801616DC 0015E63C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801616E0 0015E640  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801616E4 0015E644  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801616E8 0015E648  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_801616EC:
/* 801616EC 0015E64C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801616F0 0015E650  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 801616F4 0015E654  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 801616F8 0015E658  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 801616FC 0015E65C  7C 08 03 A6 */	mtlr r0
/* 80161700 0015E660  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80161704 0015E664  4E 80 00 20 */	blr 

.global SpecialAttack__6CDroneFR13CStateManager9EStateMsgf
SpecialAttack__6CDroneFR13CStateManager9EStateMsgf:
/* 80161708 0015E668  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8016170C 0015E66C  7C 08 02 A6 */	mflr r0
/* 80161710 0015E670  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80161714 0015E674  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80161718 0015E678  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8016171C 0015E67C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80161720 0015E680  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 80161724 0015E684  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80161728 0015E688  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 8016172C 0015E68C  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80161730 0015E690  F3 81 00 98 */	psq_st f28, 152(r1), 0, qr0
/* 80161734 0015E694  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80161738 0015E698  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8016173C 0015E69C  FF E0 08 90 */	fmr f31, f1
/* 80161740 0015E6A0  2C 05 00 01 */	cmpwi r5, 1
/* 80161744 0015E6A4  7C 7E 1B 78 */	mr r30, r3
/* 80161748 0015E6A8  7C 9F 23 78 */	mr r31, r4
/* 8016174C 0015E6AC  41 82 00 4C */	beq lbl_80161798
/* 80161750 0015E6B0  40 80 01 DC */	bge lbl_8016192C
/* 80161754 0015E6B4  2C 05 00 00 */	cmpwi r5, 0
/* 80161758 0015E6B8  40 80 00 0C */	bge lbl_80161764
/* 8016175C 0015E6BC  48 00 01 D0 */	b lbl_8016192C
/* 80161760 0015E6C0  48 00 01 CC */	b lbl_8016192C
lbl_80161764:
/* 80161764 0015E6C4  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 80161768 0015E6C8  2C 00 00 01 */	cmpwi r0, 1
/* 8016176C 0015E6CC  40 82 00 14 */	bne lbl_80161780
/* 80161770 0015E6D0  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80161774 0015E6D4  38 60 00 01 */	li r3, 1
/* 80161778 0015E6D8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8016177C 0015E6DC  98 1E 08 34 */	stb r0, 0x834(r30)
lbl_80161780:
/* 80161780 0015E6E0  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 80161784 0015E6E4  38 80 00 0A */	li r4, 0xa
/* 80161788 0015E6E8  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 8016178C 0015E6EC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161790 0015E6F0  4B FD 92 49 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80161794 0015E6F4  48 00 01 98 */	b lbl_8016192C
lbl_80161798:
/* 80161798 0015E6F8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8016179C 0015E6FC  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801617A0 0015E700  C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 801617A4 0015E704  38 81 00 68 */	addi r4, r1, 0x68
/* 801617A8 0015E708  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 801617AC 0015E70C  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 801617B0 0015E710  C0 43 00 04 */	lfs f2, 4(r3)
/* 801617B4 0015E714  C0 23 00 08 */	lfs f1, 8(r3)
/* 801617B8 0015E718  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 801617BC 0015E71C  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 801617C0 0015E720  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 801617C4 0015E724  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 801617C8 0015E728  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 801617CC 0015E72C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801617D0 0015E730  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801617D4 0015E734  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801617D8 0015E738  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801617DC 0015E73C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801617E0 0015E740  38 63 00 04 */	addi r3, r3, 4
/* 801617E4 0015E744  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801617E8 0015E748  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 801617EC 0015E74C  4B FC FF 2D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801617F0 0015E750  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801617F4 0015E754  7F E5 FB 78 */	mr r5, r31
/* 801617F8 0015E758  38 61 00 2C */	addi r3, r1, 0x2c
/* 801617FC 0015E75C  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161800 0015E760  81 84 00 00 */	lwz r12, 0(r4)
/* 80161804 0015E764  C3 84 00 60 */	lfs f28, 0x60(r4)
/* 80161808 0015E768  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8016180C 0015E76C  C3 A4 00 50 */	lfs f29, 0x50(r4)
/* 80161810 0015E770  C3 C4 00 40 */	lfs f30, 0x40(r4)
/* 80161814 0015E774  7D 89 03 A6 */	mtctr r12
/* 80161818 0015E778  4E 80 04 21 */	bctrl 
/* 8016181C 0015E77C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80161820 0015E780  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80161824 0015E784  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80161828 0015E788  EC 42 E8 2A */	fadds f2, f2, f29
/* 8016182C 0015E78C  C0 C2 9F 80 */	lfs f6, lbl_805ABCA0@sda21(r2)
/* 80161830 0015E790  EC 21 E0 2A */	fadds f1, f1, f28
/* 80161834 0015E794  EC 00 F0 2A */	fadds f0, f0, f30
/* 80161838 0015E798  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8016183C 0015E79C  EC A6 00 B2 */	fmuls f5, f6, f2
/* 80161840 0015E7A0  EC 66 00 72 */	fmuls f3, f6, f1
/* 80161844 0015E7A4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80161848 0015E7A8  EC 26 00 32 */	fmuls f1, f6, f0
/* 8016184C 0015E7AC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80161850 0015E7B0  EC 85 20 28 */	fsubs f4, f5, f4
/* 80161854 0015E7B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80161858 0015E7B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016185C 0015E7BC  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 80161860 0015E7C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80161864 0015E7C4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80161868 0015E7C8  C0 7E 06 68 */	lfs f3, 0x668(r30)
/* 8016186C 0015E7CC  C0 3E 06 64 */	lfs f1, 0x664(r30)
/* 80161870 0015E7D0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80161874 0015E7D4  40 80 00 10 */	bge lbl_80161884
/* 80161878 0015E7D8  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8016187C 0015E7DC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80161880 0015E7E0  41 81 00 0C */	bgt lbl_8016188C
lbl_80161884:
/* 80161884 0015E7E4  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80161888 0015E7E8  40 81 00 A4 */	ble lbl_8016192C
lbl_8016188C:
/* 8016188C 0015E7EC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80161890 0015E7F0  48 1B 2E 69 */	bl CanBeNormalized__9CVector3fCFv
/* 80161894 0015E7F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80161898 0015E7F8  41 82 00 94 */	beq lbl_8016192C
/* 8016189C 0015E7FC  C3 DE 05 E4 */	lfs f30, 0x5e4(r30)
/* 801618A0 0015E800  38 61 00 20 */	addi r3, r1, 0x20
/* 801618A4 0015E804  38 81 00 5C */	addi r4, r1, 0x5c
/* 801618A8 0015E808  48 1B 2F A9 */	bl AsNormalized__9CVector3fCFv
/* 801618AC 0015E80C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801618B0 0015E810  38 61 00 08 */	addi r3, r1, 8
/* 801618B4 0015E814  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801618B8 0015E818  38 9E 00 34 */	addi r4, r30, 0x34
/* 801618BC 0015E81C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801618C0 0015E820  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 801618C4 0015E824  EC 3E 00 72 */	fmuls f1, f30, f1
/* 801618C8 0015E828  38 A1 00 50 */	addi r5, r1, 0x50
/* 801618CC 0015E82C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801618D0 0015E830  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 801618D4 0015E834  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801618D8 0015E838  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801618DC 0015E83C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801618E0 0015E840  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801618E4 0015E844  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801618E8 0015E848  48 1B 11 3D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801618EC 0015E84C  FC 20 F8 90 */	fmr f1, f31
/* 801618F0 0015E850  7F C4 F3 78 */	mr r4, r30
/* 801618F4 0015E854  38 61 00 14 */	addi r3, r1, 0x14
/* 801618F8 0015E858  38 A1 00 08 */	addi r5, r1, 8
/* 801618FC 0015E85C  4B FB 97 0D */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 80161900 0015E860  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80161904 0015E864  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80161908 0015E868  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8016190C 0015E86C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80161910 0015E870  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80161914 0015E874  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80161918 0015E878  4B EB 9C 1D */	bl Identity__10CAxisAngleFv
/* 8016191C 0015E87C  7C 65 1B 78 */	mr r5, r3
/* 80161920 0015E880  7F C3 F3 78 */	mr r3, r30
/* 80161924 0015E884  38 81 00 44 */	addi r4, r1, 0x44
/* 80161928 0015E888  4B FB AA 71 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_8016192C:
/* 8016192C 0015E88C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80161930 0015E890  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80161934 0015E894  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80161938 0015E898  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 8016193C 0015E89C  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 80161940 0015E8A0  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80161944 0015E8A4  E3 81 00 98 */	psq_l f28, 152(r1), 0, qr0
/* 80161948 0015E8A8  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 8016194C 0015E8AC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80161950 0015E8B0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80161954 0015E8B4  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80161958 0015E8B8  7C 08 03 A6 */	mtlr r0
/* 8016195C 0015E8BC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80161960 0015E8C0  4E 80 00 20 */	blr 

.global Retreat__6CDroneFR13CStateManager9EStateMsgf
Retreat__6CDroneFR13CStateManager9EStateMsgf:
/* 80161964 0015E8C4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80161968 0015E8C8  7C 08 02 A6 */	mflr r0
/* 8016196C 0015E8CC  2C 05 00 01 */	cmpwi r5, 1
/* 80161970 0015E8D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80161974 0015E8D4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80161978 0015E8D8  7C 9F 23 78 */	mr r31, r4
/* 8016197C 0015E8DC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80161980 0015E8E0  7C 7E 1B 78 */	mr r30, r3
/* 80161984 0015E8E4  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80161988 0015E8E8  41 82 00 48 */	beq lbl_801619D0
/* 8016198C 0015E8EC  40 80 01 A0 */	bge lbl_80161B2C
/* 80161990 0015E8F0  2C 05 00 00 */	cmpwi r5, 0
/* 80161994 0015E8F4  40 80 00 0C */	bge lbl_801619A0
/* 80161998 0015E8F8  48 00 01 94 */	b lbl_80161B2C
/* 8016199C 0015E8FC  48 00 01 90 */	b lbl_80161B2C
lbl_801619A0:
/* 801619A0 0015E900  38 00 00 00 */	li r0, 0
/* 801619A4 0015E904  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 801619A8 0015E908  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 801619AC 0015E90C  2C 00 00 01 */	cmpwi r0, 1
/* 801619B0 0015E910  40 82 00 14 */	bne lbl_801619C4
/* 801619B4 0015E914  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 801619B8 0015E918  38 60 00 01 */	li r3, 1
/* 801619BC 0015E91C  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801619C0 0015E920  98 1E 08 34 */	stb r0, 0x834(r30)
lbl_801619C4:
/* 801619C4 0015E924  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 801619C8 0015E928  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 801619CC 0015E92C  48 00 01 60 */	b lbl_80161B2C
lbl_801619D0:
/* 801619D0 0015E930  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 801619D4 0015E934  2C 00 00 01 */	cmpwi r0, 1
/* 801619D8 0015E938  41 82 00 AC */	beq lbl_80161A84
/* 801619DC 0015E93C  40 80 00 10 */	bge lbl_801619EC
/* 801619E0 0015E940  2C 00 00 00 */	cmpwi r0, 0
/* 801619E4 0015E944  40 80 00 14 */	bge lbl_801619F8
/* 801619E8 0015E948  48 00 00 C0 */	b lbl_80161AA8
lbl_801619EC:
/* 801619EC 0015E94C  2C 00 00 03 */	cmpwi r0, 3
/* 801619F0 0015E950  40 80 00 B8 */	bge lbl_80161AA8
/* 801619F4 0015E954  48 00 00 AC */	b lbl_80161AA0
lbl_801619F8:
/* 801619F8 0015E958  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801619FC 0015E95C  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 80161A00 0015E960  2C 00 00 03 */	cmpwi r0, 3
/* 80161A04 0015E964  40 82 00 10 */	bne lbl_80161A14
/* 80161A08 0015E968  38 00 00 01 */	li r0, 1
/* 80161A0C 0015E96C  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80161A10 0015E970  48 00 00 98 */	b lbl_80161AA8
lbl_80161A14:
/* 80161A14 0015E974  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161A18 0015E978  38 C0 00 01 */	li r6, 1
/* 80161A1C 0015E97C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80161A20 0015E980  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161A24 0015E984  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80161A28 0015E988  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 80161A2C 0015E98C  38 00 00 00 */	li r0, 0
/* 80161A30 0015E990  3B A4 00 04 */	addi r29, r4, 4
/* 80161A34 0015E994  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80161A38 0015E998  7F A3 EB 78 */	mr r3, r29
/* 80161A3C 0015E99C  38 80 00 01 */	li r4, 1
/* 80161A40 0015E9A0  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 80161A44 0015E9A4  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80161A48 0015E9A8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80161A4C 0015E9AC  4B FC F9 ED */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80161A50 0015E9B0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80161A54 0015E9B4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80161A58 0015E9B8  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80161A5C 0015E9BC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80161A60 0015E9C0  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 80161A64 0015E9C4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80161A68 0015E9C8  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80161A6C 0015E9CC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80161A70 0015E9D0  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80161A74 0015E9D4  90 BD 00 CC */	stw r5, 0xcc(r29)
/* 80161A78 0015E9D8  90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 80161A7C 0015E9DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80161A80 0015E9E0  48 00 00 28 */	b lbl_80161AA8
lbl_80161A84:
/* 80161A84 0015E9E4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161A88 0015E9E8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80161A8C 0015E9EC  2C 00 00 03 */	cmpwi r0, 3
/* 80161A90 0015E9F0  41 82 00 18 */	beq lbl_80161AA8
/* 80161A94 0015E9F4  38 00 00 02 */	li r0, 2
/* 80161A98 0015E9F8  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80161A9C 0015E9FC  48 00 00 0C */	b lbl_80161AA8
lbl_80161AA0:
/* 80161AA0 0015EA00  38 00 00 00 */	li r0, 0
/* 80161AA4 0015EA04  90 1E 07 C8 */	stw r0, 0x7c8(r30)
lbl_80161AA8:
/* 80161AA8 0015EA08  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80161AAC 0015EA0C  38 61 00 20 */	addi r3, r1, 0x20
/* 80161AB0 0015EA10  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80161AB4 0015EA14  38 81 00 14 */	addi r4, r1, 0x14
/* 80161AB8 0015EA18  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80161ABC 0015EA1C  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80161AC0 0015EA20  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80161AC4 0015EA24  EC 25 00 28 */	fsubs f1, f5, f0
/* 80161AC8 0015EA28  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80161ACC 0015EA2C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80161AD0 0015EA30  EC 44 10 28 */	fsubs f2, f4, f2
/* 80161AD4 0015EA34  D0 01 00 08 */	stfs f0, 8(r1)
/* 80161AD8 0015EA38  EC 00 18 28 */	fsubs f0, f0, f3
/* 80161ADC 0015EA3C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80161AE0 0015EA40  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80161AE4 0015EA44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80161AE8 0015EA48  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80161AEC 0015EA4C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80161AF0 0015EA50  48 1B 2D 61 */	bl AsNormalized__9CVector3fCFv
/* 80161AF4 0015EA54  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161AF8 0015EA58  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80161AFC 0015EA5C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161B00 0015EA60  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80161B04 0015EA64  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80161B08 0015EA68  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80161B0C 0015EA6C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80161B10 0015EA70  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 80161B14 0015EA74  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80161B18 0015EA78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161B1C 0015EA7C  4C 40 13 82 */	cror 2, 0, 2
/* 80161B20 0015EA80  40 82 00 0C */	bne lbl_80161B2C
/* 80161B24 0015EA84  C0 02 9F A8 */	lfs f0, lbl_805ABCC8@sda21(r2)
/* 80161B28 0015EA88  D0 1E 06 34 */	stfs f0, 0x634(r30)
lbl_80161B2C:
/* 80161B2C 0015EA8C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80161B30 0015EA90  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80161B34 0015EA94  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80161B38 0015EA98  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80161B3C 0015EA9C  7C 08 03 A6 */	mtlr r0
/* 80161B40 0015EAA0  38 21 00 50 */	addi r1, r1, 0x50
/* 80161B44 0015EAA4  4E 80 00 20 */	blr 

.global TargetPatrol__6CDroneFR13CStateManager9EStateMsgf
TargetPatrol__6CDroneFR13CStateManager9EStateMsgf:
/* 80161B48 0015EAA8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80161B4C 0015EAAC  7C 08 02 A6 */	mflr r0
/* 80161B50 0015EAB0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80161B54 0015EAB4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80161B58 0015EAB8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80161B5C 0015EABC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80161B60 0015EAC0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80161B64 0015EAC4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80161B68 0015EAC8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80161B6C 0015EACC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80161B70 0015EAD0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80161B74 0015EAD4  2C 05 00 01 */	cmpwi r5, 1
/* 80161B78 0015EAD8  7C 7E 1B 78 */	mr r30, r3
/* 80161B7C 0015EADC  7C 9F 23 78 */	mr r31, r4
/* 80161B80 0015EAE0  41 82 00 D8 */	beq lbl_80161C58
/* 80161B84 0015EAE4  40 80 00 10 */	bge lbl_80161B94
/* 80161B88 0015EAE8  2C 05 00 00 */	cmpwi r5, 0
/* 80161B8C 0015EAEC  40 80 00 14 */	bge lbl_80161BA0
/* 80161B90 0015EAF0  48 00 02 10 */	b lbl_80161DA0
lbl_80161B94:
/* 80161B94 0015EAF4  2C 05 00 03 */	cmpwi r5, 3
/* 80161B98 0015EAF8  40 80 02 08 */	bge lbl_80161DA0
/* 80161B9C 0015EAFC  48 00 01 C0 */	b lbl_80161D5C
lbl_80161BA0:
/* 80161BA0 0015EB00  C0 1E 05 EC */	lfs f0, 0x5ec(r30)
/* 80161BA4 0015EB04  D0 1E 03 B8 */	stfs f0, 0x3b8(r30)
/* 80161BA8 0015EB08  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161BAC 0015EB0C  C0 3E 05 EC */	lfs f1, 0x5ec(r30)
/* 80161BB0 0015EB10  4B FD 8D F5 */	bl SetTurnSpeed__15CBodyControllerFf
/* 80161BB4 0015EB14  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161BB8 0015EB18  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 80161BBC 0015EB1C  2C 00 00 03 */	cmpwi r0, 3
/* 80161BC0 0015EB20  41 82 00 0C */	beq lbl_80161BCC
/* 80161BC4 0015EB24  38 80 00 03 */	li r4, 3
/* 80161BC8 0015EB28  4B FD 8E 11 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80161BCC:
/* 80161BCC 0015EB2C  C0 02 9F BC */	lfs f0, lbl_805ABCDC@sda21(r2)
/* 80161BD0 0015EB30  7F E5 FB 78 */	mr r5, r31
/* 80161BD4 0015EB34  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 80161BD8 0015EB38  38 61 00 5C */	addi r3, r1, 0x5c
/* 80161BDC 0015EB3C  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161BE0 0015EB40  D0 04 02 D4 */	stfs f0, 0x2d4(r4)
/* 80161BE4 0015EB44  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80161BE8 0015EB48  81 84 00 00 */	lwz r12, 0(r4)
/* 80161BEC 0015EB4C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80161BF0 0015EB50  7D 89 03 A6 */	mtctr r12
/* 80161BF4 0015EB54  4E 80 04 21 */	bctrl 
/* 80161BF8 0015EB58  7F C3 F3 78 */	mr r3, r30
/* 80161BFC 0015EB5C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80161C00 0015EB60  4B F1 AF 5D */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80161C04 0015EB64  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80161C08 0015EB68  38 60 00 00 */	li r3, 0
/* 80161C0C 0015EB6C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80161C10 0015EB70  98 1E 04 00 */	stb r0, 0x400(r30)
/* 80161C14 0015EB74  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 80161C18 0015EB78  2C 00 00 01 */	cmpwi r0, 1
/* 80161C1C 0015EB7C  40 82 00 14 */	bne lbl_80161C30
/* 80161C20 0015EB80  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80161C24 0015EB84  38 60 00 01 */	li r3, 1
/* 80161C28 0015EB88  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80161C2C 0015EB8C  98 1E 08 34 */	stb r0, 0x834(r30)
lbl_80161C30:
/* 80161C30 0015EB90  C0 2D 8D 7C */	lfs f1, lbl_805A793C@sda21(r13)
/* 80161C34 0015EB94  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 80161C38 0015EB98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161C3C 0015EB9C  40 80 00 0C */	bge lbl_80161C48
/* 80161C40 0015EBA0  38 7E 06 24 */	addi r3, r30, 0x624
/* 80161C44 0015EBA4  48 00 00 08 */	b lbl_80161C4C
lbl_80161C48:
/* 80161C48 0015EBA8  38 6D 8D 7C */	addi r3, r13, lbl_805A793C@sda21
lbl_80161C4C:
/* 80161C4C 0015EBAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80161C50 0015EBB0  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 80161C54 0015EBB4  48 00 01 4C */	b lbl_80161DA0
lbl_80161C58:
/* 80161C58 0015EBB8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80161C5C 0015EBBC  7F E5 FB 78 */	mr r5, r31
/* 80161C60 0015EBC0  38 61 00 38 */	addi r3, r1, 0x38
/* 80161C64 0015EBC4  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 80161C68 0015EBC8  81 84 00 00 */	lwz r12, 0(r4)
/* 80161C6C 0015EBCC  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 80161C70 0015EBD0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80161C74 0015EBD4  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 80161C78 0015EBD8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161C7C 0015EBDC  7D 89 03 A6 */	mtctr r12
/* 80161C80 0015EBE0  4E 80 04 21 */	bctrl 
/* 80161C84 0015EBE4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80161C88 0015EBE8  38 61 00 50 */	addi r3, r1, 0x50
/* 80161C8C 0015EBEC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80161C90 0015EBF0  38 81 00 44 */	addi r4, r1, 0x44
/* 80161C94 0015EBF4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80161C98 0015EBF8  EC 42 F8 28 */	fsubs f2, f2, f31
/* 80161C9C 0015EBFC  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80161CA0 0015EC00  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80161CA4 0015EC04  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80161CA8 0015EC08  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80161CAC 0015EC0C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80161CB0 0015EC10  48 1B 2B A1 */	bl AsNormalized__9CVector3fCFv
/* 80161CB4 0015EC14  C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 80161CB8 0015EC18  38 81 00 68 */	addi r4, r1, 0x68
/* 80161CBC 0015EC1C  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 80161CC0 0015EC20  C0 02 9F A0 */	lfs f0, lbl_805ABCC0@sda21(r2)
/* 80161CC4 0015EC24  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80161CC8 0015EC28  EC 80 01 72 */	fmuls f4, f0, f5
/* 80161CCC 0015EC2C  C3 E1 00 50 */	lfs f31, 0x50(r1)
/* 80161CD0 0015EC30  EC 60 01 B2 */	fmuls f3, f0, f6
/* 80161CD4 0015EC34  C3 A1 00 54 */	lfs f29, 0x54(r1)
/* 80161CD8 0015EC38  EC 20 00 B2 */	fmuls f1, f0, f2
/* 80161CDC 0015EC3C  C3 C1 00 58 */	lfs f30, 0x58(r1)
/* 80161CE0 0015EC40  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80161CE4 0015EC44  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80161CE8 0015EC48  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80161CEC 0015EC4C  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80161CF0 0015EC50  D3 E1 00 74 */	stfs f31, 0x74(r1)
/* 80161CF4 0015EC54  D3 A1 00 78 */	stfs f29, 0x78(r1)
/* 80161CF8 0015EC58  D3 C1 00 7C */	stfs f30, 0x7c(r1)
/* 80161CFC 0015EC5C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80161D00 0015EC60  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80161D04 0015EC64  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80161D08 0015EC68  38 63 00 04 */	addi r3, r3, 4
/* 80161D0C 0015EC6C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80161D10 0015EC70  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80161D14 0015EC74  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80161D18 0015EC78  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80161D1C 0015EC7C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80161D20 0015EC80  4B FC F9 F9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80161D24 0015EC84  80 BE 04 50 */	lwz r5, 0x450(r30)
/* 80161D28 0015EC88  7F C3 F3 78 */	mr r3, r30
/* 80161D2C 0015EC8C  7F E4 FB 78 */	mr r4, r31
/* 80161D30 0015EC90  D3 E5 00 1C */	stfs f31, 0x1c(r5)
/* 80161D34 0015EC94  D3 A5 00 20 */	stfs f29, 0x20(r5)
/* 80161D38 0015EC98  D3 C5 00 24 */	stfs f30, 0x24(r5)
/* 80161D3C 0015EC9C  4B FF D7 D5 */	bl sub_8015f510
/* 80161D40 0015ECA0  C0 3E 06 30 */	lfs f1, 0x630(r30)
/* 80161D44 0015ECA4  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161D48 0015ECA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161D4C 0015ECAC  4C 40 13 82 */	cror 2, 0, 2
/* 80161D50 0015ECB0  40 82 00 50 */	bne lbl_80161DA0
/* 80161D54 0015ECB4  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 80161D58 0015ECB8  48 00 00 48 */	b lbl_80161DA0
lbl_80161D5C:
/* 80161D5C 0015ECBC  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80161D60 0015ECC0  38 81 00 14 */	addi r4, r1, 0x14
/* 80161D64 0015ECC4  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 80161D68 0015ECC8  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80161D6C 0015ECCC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80161D70 0015ECD0  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80161D74 0015ECD4  EC 45 00 2A */	fadds f2, f5, f0
/* 80161D78 0015ECD8  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80161D7C 0015ECDC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80161D80 0015ECE0  EC 64 00 2A */	fadds f3, f4, f0
/* 80161D84 0015ECE4  EC 01 00 2A */	fadds f0, f1, f0
/* 80161D88 0015ECE8  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80161D8C 0015ECEC  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80161D90 0015ECF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80161D94 0015ECF4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80161D98 0015ECF8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80161D9C 0015ECFC  4B F1 AD C1 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80161DA0:
/* 80161DA0 0015ED00  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 80161DA4 0015ED04  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80161DA8 0015ED08  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 80161DAC 0015ED0C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80161DB0 0015ED10  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 80161DB4 0015ED14  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80161DB8 0015ED18  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80161DBC 0015ED1C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80161DC0 0015ED20  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80161DC4 0015ED24  7C 08 03 A6 */	mtlr r0
/* 80161DC8 0015ED28  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80161DCC 0015ED2C  4E 80 00 20 */	blr 

.global AddToRenderer__6CDroneCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__6CDroneCFRC14CFrustumPlanesRC13CStateManager:
/* 80161DD0 0015ED30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80161DD4 0015ED34  7C 08 02 A6 */	mflr r0
/* 80161DD8 0015ED38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80161DDC 0015ED3C  4B F1 5A DD */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 80161DE0 0015ED40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80161DE4 0015ED44  7C 08 03 A6 */	mtlr r0
/* 80161DE8 0015ED48  38 21 00 10 */	addi r1, r1, 0x10
/* 80161DEC 0015ED4C  4E 80 00 20 */	blr 

.global Render__6CDroneCFRC13CStateManager
Render__6CDroneCFRC13CStateManager:
/* 80161DF0 0015ED50  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80161DF4 0015ED54  7C 08 02 A6 */	mflr r0
/* 80161DF8 0015ED58  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80161DFC 0015ED5C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80161E00 0015ED60  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80161E04 0015ED64  7C 9E 23 78 */	mr r30, r4
/* 80161E08 0015ED68  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 80161E0C 0015ED6C  7C 7D 1B 78 */	mr r29, r3
/* 80161E10 0015ED70  93 81 00 B0 */	stw r28, 0xb0(r1)
/* 80161E14 0015ED74  81 83 00 00 */	lwz r12, 0(r3)
/* 80161E18 0015ED78  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 80161E1C 0015ED7C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80161E20 0015ED80  20 00 00 01 */	subfic r0, r0, 1
/* 80161E24 0015ED84  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 80161E28 0015ED88  7C 00 00 34 */	cntlzw r0, r0
/* 80161E2C 0015ED8C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80161E30 0015ED90  54 1F D9 7E */	srwi r31, r0, 5
/* 80161E34 0015ED94  7D 89 03 A6 */	mtctr r12
/* 80161E38 0015ED98  4E 80 04 21 */	bctrl 
/* 80161E3C 0015ED9C  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80161E40 0015EDA0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80161E44 0015EDA4  7C 64 00 D0 */	neg r3, r4
/* 80161E48 0015EDA8  7C 63 23 78 */	or r3, r3, r4
/* 80161E4C 0015EDAC  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80161E50 0015EDB0  41 82 00 0C */	beq lbl_80161E5C
/* 80161E54 0015EDB4  28 00 00 00 */	cmplwi r0, 0
/* 80161E58 0015EDB8  41 82 01 D0 */	beq lbl_80162028
lbl_80161E5C:
/* 80161E5C 0015EDBC  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 80161E60 0015EDC0  7F C4 F3 78 */	mr r4, r30
/* 80161E64 0015EDC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80161E68 0015EDC8  4B F2 F6 F1 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80161E6C 0015EDCC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80161E70 0015EDD0  20 63 00 01 */	subfic r3, r3, 1
/* 80161E74 0015EDD4  7C 60 00 34 */	cntlzw r0, r3
/* 80161E78 0015EDD8  54 1C D9 7E */	srwi r28, r0, 5
/* 80161E7C 0015EDDC  41 82 00 54 */	beq lbl_80161ED0
/* 80161E80 0015EDE0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80161E84 0015EDE4  41 82 00 4C */	beq lbl_80161ED0
/* 80161E88 0015EDE8  38 00 00 01 */	li r0, 1
/* 80161E8C 0015EDEC  98 0D A8 B9 */	stb r0, lbl_805A9479@sda21(r13)
/* 80161E90 0015EDF0  98 0D A8 B8 */	stb r0, lbl_805A9478@sda21(r13)
/* 80161E94 0015EDF4  48 1E 81 21 */	bl Black__6CColorFv
/* 80161E98 0015EDF8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161E9C 0015EDFC  7C 64 1B 78 */	mr r4, r3
/* 80161EA0 0015EE00  C0 42 9F C8 */	lfs f2, lbl_805ABCE8@sda21(r2)
/* 80161EA4 0015EE04  38 60 00 02 */	li r3, 2
/* 80161EA8 0015EE08  48 1A 83 E1 */	bl SetFog__9CGraphicsF11ERglFogModeffRC6CColor
/* 80161EAC 0015EE0C  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80161EB0 0015EE10  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80161EB4 0015EE14  38 63 01 20 */	addi r3, r3, 0x120
/* 80161EB8 0015EE18  4B F5 60 FD */	bl RenderSystemsToBeDrawnFirst__17CParticleDatabaseCFv
/* 80161EBC 0015EE1C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80161EC0 0015EE20  7F C3 F3 78 */	mr r3, r30
/* 80161EC4 0015EE24  38 81 00 18 */	addi r4, r1, 0x18
/* 80161EC8 0015EE28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80161ECC 0015EE2C  4B EE 4E 4D */	bl sub_80046d18
lbl_80161ED0:
/* 80161ED0 0015EE30  7F A3 EB 78 */	mr r3, r29
/* 80161ED4 0015EE34  7F C4 F3 78 */	mr r4, r30
/* 80161ED8 0015EE38  4B F1 61 55 */	bl Render__10CPatternedCFRC13CStateManager
/* 80161EDC 0015EE3C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80161EE0 0015EE40  41 82 00 54 */	beq lbl_80161F34
/* 80161EE4 0015EE44  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80161EE8 0015EE48  41 82 00 4C */	beq lbl_80161F34
/* 80161EEC 0015EE4C  48 1E 80 C9 */	bl Black__6CColorFv
/* 80161EF0 0015EE50  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161EF4 0015EE54  7C 64 1B 78 */	mr r4, r3
/* 80161EF8 0015EE58  C0 42 9F C8 */	lfs f2, lbl_805ABCE8@sda21(r2)
/* 80161EFC 0015EE5C  38 60 00 02 */	li r3, 2
/* 80161F00 0015EE60  48 1A 83 89 */	bl SetFog__9CGraphicsF11ERglFogModeffRC6CColor
/* 80161F04 0015EE64  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80161F08 0015EE68  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80161F0C 0015EE6C  38 63 01 20 */	addi r3, r3, 0x120
/* 80161F10 0015EE70  4B F5 60 15 */	bl RenderSystemsToBeDrawnLast__17CParticleDatabaseCFv
/* 80161F14 0015EE74  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80161F18 0015EE78  7F C3 F3 78 */	mr r3, r30
/* 80161F1C 0015EE7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80161F20 0015EE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80161F24 0015EE84  4B EE 4E 5D */	bl SetupFogForArea__13CStateManagerCF7TAreaId
/* 80161F28 0015EE88  38 00 00 00 */	li r0, 0
/* 80161F2C 0015EE8C  98 0D A8 B9 */	stb r0, lbl_805A9479@sda21(r13)
/* 80161F30 0015EE90  98 0D A8 B8 */	stb r0, lbl_805A9478@sda21(r13)
lbl_80161F34:
/* 80161F34 0015EE94  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80161F38 0015EE98  41 82 00 F0 */	beq lbl_80162028
/* 80161F3C 0015EE9C  C0 9D 05 DC */	lfs f4, 0x5dc(r29)
/* 80161F40 0015EEA0  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80161F44 0015EEA4  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 80161F48 0015EEA8  EC 24 08 28 */	fsubs f1, f4, f1
/* 80161F4C 0015EEAC  FC 20 0A 10 */	fabs f1, f1
/* 80161F50 0015EEB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80161F54 0015EEB4  41 80 00 D4 */	blt lbl_80162028
/* 80161F58 0015EEB8  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80161F5C 0015EEBC  38 61 00 10 */	addi r3, r1, 0x10
/* 80161F60 0015EEC0  FC 40 08 90 */	fmr f2, f1
/* 80161F64 0015EEC4  FC 60 08 90 */	fmr f3, f1
/* 80161F68 0015EEC8  48 20 14 85 */	bl __ct__6CColorFffff
/* 80161F6C 0015EECC  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80161F70 0015EED0  38 61 00 08 */	addi r3, r1, 8
/* 80161F74 0015EED4  C0 42 9F 68 */	lfs f2, lbl_805ABC88@sda21(r2)
/* 80161F78 0015EED8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80161F7C 0015EEDC  FC 80 08 90 */	fmr f4, f1
/* 80161F80 0015EEE0  FC 60 10 90 */	fmr f3, f2
/* 80161F84 0015EEE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80161F88 0015EEE8  48 20 14 65 */	bl __ct__6CColorFffff
/* 80161F8C 0015EEEC  C0 3D 05 E8 */	lfs f1, 0x5e8(r29)
/* 80161F90 0015EEF0  7C 65 1B 78 */	mr r5, r3
/* 80161F94 0015EEF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80161F98 0015EEF8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80161F9C 0015EEFC  48 20 13 11 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80161FA0 0015EF00  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80161FA4 0015EF04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80161FA8 0015EF08  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80161FAC 0015EF0C  38 61 00 34 */	addi r3, r1, 0x34
/* 80161FB0 0015EF10  38 84 00 2A */	addi r4, r4, 0x2a
/* 80161FB4 0015EF14  4B EA 2D 05 */	bl string_l__4rstlFPCc
/* 80161FB8 0015EF18  7F A4 EB 78 */	mr r4, r29
/* 80161FBC 0015EF1C  38 61 00 44 */	addi r3, r1, 0x44
/* 80161FC0 0015EF20  38 A1 00 34 */	addi r5, r1, 0x34
/* 80161FC4 0015EF24  4B F1 69 B5 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80161FC8 0015EF28  38 61 00 74 */	addi r3, r1, 0x74
/* 80161FCC 0015EF2C  38 81 00 44 */	addi r4, r1, 0x44
/* 80161FD0 0015EF30  48 1B 0B A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80161FD4 0015EF34  38 61 00 34 */	addi r3, r1, 0x34
/* 80161FD8 0015EF38  48 1D BB 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80161FDC 0015EF3C  38 E0 00 03 */	li r7, 3
/* 80161FE0 0015EF40  39 20 00 08 */	li r9, 8
/* 80161FE4 0015EF44  54 E0 00 3A */	rlwinm r0, r7, 0, 0, 0x1d
/* 80161FE8 0015EF48  39 00 00 00 */	li r8, 0
/* 80161FEC 0015EF4C  60 00 00 03 */	ori r0, r0, 3
/* 80161FF0 0015EF50  B0 E1 00 26 */	sth r7, 0x26(r1)
/* 80161FF4 0015EF54  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 80161FF8 0015EF58  7F C4 F3 78 */	mr r4, r30
/* 80161FFC 0015EF5C  99 21 00 24 */	stb r9, 0x24(r1)
/* 80162000 0015EF60  38 A1 00 74 */	addi r5, r1, 0x74
/* 80162004 0015EF64  80 DD 00 90 */	lwz r6, 0x90(r29)
/* 80162008 0015EF68  38 E1 00 2C */	addi r7, r1, 0x2c
/* 8016200C 0015EF6C  99 01 00 25 */	stb r8, 0x25(r1)
/* 80162010 0015EF70  93 E1 00 28 */	stw r31, 0x28(r1)
/* 80162014 0015EF74  99 21 00 2C */	stb r9, 0x2c(r1)
/* 80162018 0015EF78  99 01 00 2D */	stb r8, 0x2d(r1)
/* 8016201C 0015EF7C  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 80162020 0015EF80  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80162024 0015EF84  4B FB 2D 99 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
lbl_80162028:
/* 80162028 0015EF88  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8016202C 0015EF8C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80162030 0015EF90  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80162034 0015EF94  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 80162038 0015EF98  83 81 00 B0 */	lwz r28, 0xb0(r1)
/* 8016203C 0015EF9C  7C 08 03 A6 */	mtlr r0
/* 80162040 0015EFA0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80162044 0015EFA4  4E 80 00 20 */	blr 

.global PreRender__6CDroneFR13CStateManagerRC14CFrustumPlanes
PreRender__6CDroneFR13CStateManagerRC14CFrustumPlanes:
/* 80162048 0015EFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016204C 0015EFAC  7C 08 02 A6 */	mflr r0
/* 80162050 0015EFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80162054 0015EFB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80162058 0015EFB8  7C 9F 23 78 */	mr r31, r4
/* 8016205C 0015EFBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80162060 0015EFC0  7C 7E 1B 78 */	mr r30, r3
/* 80162064 0015EFC4  4B F1 62 79 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 80162068 0015EFC8  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 8016206C 0015EFCC  2C 00 00 01 */	cmpwi r0, 1
/* 80162070 0015EFD0  40 82 00 9C */	bne lbl_8016210C
/* 80162074 0015EFD4  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80162078 0015EFD8  38 80 00 00 */	li r4, 0
/* 8016207C 0015EFDC  7C 05 00 D0 */	neg r0, r5
/* 80162080 0015EFE0  7C 00 2B 78 */	or r0, r0, r5
/* 80162084 0015EFE4  54 03 0F FF */	rlwinm. r3, r0, 1, 0x1f, 0x1f
/* 80162088 0015EFE8  41 82 00 20 */	beq lbl_801620A8
/* 8016208C 0015EFEC  80 05 00 10 */	lwz r0, 0x10(r5)
/* 80162090 0015EFF0  28 00 00 00 */	cmplwi r0, 0
/* 80162094 0015EFF4  40 82 00 10 */	bne lbl_801620A4
/* 80162098 0015EFF8  88 05 00 28 */	lbz r0, 0x28(r5)
/* 8016209C 0015EFFC  28 00 00 00 */	cmplwi r0, 0
/* 801620A0 0015F000  41 82 00 08 */	beq lbl_801620A8
lbl_801620A4:
/* 801620A4 0015F004  38 80 00 01 */	li r4, 1
lbl_801620A8:
/* 801620A8 0015F008  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801620AC 0015F00C  41 82 00 60 */	beq lbl_8016210C
/* 801620B0 0015F010  28 03 00 00 */	cmplwi r3, 0
/* 801620B4 0015F014  38 60 00 00 */	li r3, 0
/* 801620B8 0015F018  41 82 00 14 */	beq lbl_801620CC
/* 801620BC 0015F01C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 801620C0 0015F020  28 00 00 00 */	cmplwi r0, 0
/* 801620C4 0015F024  41 82 00 08 */	beq lbl_801620CC
/* 801620C8 0015F028  38 60 00 01 */	li r3, 1
lbl_801620CC:
/* 801620CC 0015F02C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801620D0 0015F030  41 82 00 3C */	beq lbl_8016210C
/* 801620D4 0015F034  7F C3 F3 78 */	mr r3, r30
/* 801620D8 0015F038  7F E4 FB 78 */	mr r4, r31
/* 801620DC 0015F03C  81 9E 00 00 */	lwz r12, 0(r30)
/* 801620E0 0015F040  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 801620E4 0015F044  7D 89 03 A6 */	mtctr r12
/* 801620E8 0015F048  4E 80 04 21 */	bctrl 
/* 801620EC 0015F04C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801620F0 0015F050  7C 03 00 D0 */	neg r0, r3
/* 801620F4 0015F054  7C 00 1B 78 */	or r0, r0, r3
/* 801620F8 0015F058  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 801620FC 0015F05C  40 82 00 10 */	bne lbl_8016210C
/* 80162100 0015F060  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80162104 0015F064  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80162108 0015F068  4B EC A9 59 */	bl BuildPose__9CAnimDataFv
lbl_8016210C:
/* 8016210C 0015F06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80162110 0015F070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80162114 0015F074  83 C1 00 08 */	lwz r30, 8(r1)
/* 80162118 0015F078  7C 08 03 A6 */	mtlr r0
/* 8016211C 0015F07C  38 21 00 10 */	addi r1, r1, 0x10
/* 80162120 0015F080  4E 80 00 20 */	blr 

.global Death__6CDroneFRC9CVector3fR13CStateManager
Death__6CDroneFRC9CVector3fR13CStateManager:
/* 80162124 0015F084  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80162128 0015F088  7C 08 02 A6 */	mflr r0
/* 8016212C 0015F08C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80162130 0015F090  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 80162134 0015F094  7C DF 33 78 */	mr r31, r6
/* 80162138 0015F098  93 C1 01 08 */	stw r30, 0x108(r1)
/* 8016213C 0015F09C  7C 9E 23 78 */	mr r30, r4
/* 80162140 0015F0A0  93 A1 01 04 */	stw r29, 0x104(r1)
/* 80162144 0015F0A4  7C 7D 1B 78 */	mr r29, r3
/* 80162148 0015F0A8  93 81 01 00 */	stw r28, 0x100(r1)
/* 8016214C 0015F0AC  7C BC 2B 78 */	mr r28, r5
/* 80162150 0015F0B0  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80162154 0015F0B4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80162158 0015F0B8  41 82 01 E8 */	beq lbl_80162340
/* 8016215C 0015F0BC  38 00 00 00 */	li r0, 0
/* 80162160 0015F0C0  38 A0 00 00 */	li r5, 0
/* 80162164 0015F0C4  98 1D 08 28 */	stb r0, 0x828(r29)
/* 80162168 0015F0C8  38 C0 00 00 */	li r6, 0
/* 8016216C 0015F0CC  98 1D 08 29 */	stb r0, 0x829(r29)
/* 80162170 0015F0D0  48 00 11 35 */	bl sub_801632a4
/* 80162174 0015F0D4  7F A3 EB 78 */	mr r3, r29
/* 80162178 0015F0D8  7F C4 F3 78 */	mr r4, r30
/* 8016217C 0015F0DC  38 A0 00 01 */	li r5, 1
/* 80162180 0015F0E0  38 C0 00 00 */	li r6, 0
/* 80162184 0015F0E4  48 00 11 21 */	bl sub_801632a4
/* 80162188 0015F0E8  7F A3 EB 78 */	mr r3, r29
/* 8016218C 0015F0EC  7F C4 F3 78 */	mr r4, r30
/* 80162190 0015F0F0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80162194 0015F0F4  38 A0 00 00 */	li r5, 0
/* 80162198 0015F0F8  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 8016219C 0015F0FC  7D 89 03 A6 */	mtctr r12
/* 801621A0 0015F100  4E 80 04 21 */	bctrl 
/* 801621A4 0015F104  7F A3 EB 78 */	mr r3, r29
/* 801621A8 0015F108  7F C4 F3 78 */	mr r4, r30
/* 801621AC 0015F10C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801621B0 0015F110  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801621B4 0015F114  7D 89 03 A6 */	mtctr r12
/* 801621B8 0015F118  4E 80 04 21 */	bctrl 
/* 801621BC 0015F11C  C0 5D 03 E4 */	lfs f2, 0x3e4(r29)
/* 801621C0 0015F120  C0 23 00 00 */	lfs f1, 0(r3)
/* 801621C4 0015F124  C0 1D 03 D8 */	lfs f0, 0x3d8(r29)
/* 801621C8 0015F128  EC 22 08 28 */	fsubs f1, f2, f1
/* 801621CC 0015F12C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801621D0 0015F130  4C 41 13 82 */	cror 2, 1, 2
/* 801621D4 0015F134  40 82 00 F0 */	bne lbl_801622C4
/* 801621D8 0015F138  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 801621DC 0015F13C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801621E0 0015F140  40 82 00 E4 */	bne lbl_801622C4
/* 801621E4 0015F144  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 801621E8 0015F148  38 60 00 01 */	li r3, 1
/* 801621EC 0015F14C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801621F0 0015F150  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801621F4 0015F154  98 1D 04 00 */	stb r0, 0x400(r29)
/* 801621F8 0015F158  C0 3D 03 E0 */	lfs f1, 0x3e0(r29)
/* 801621FC 0015F15C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162200 0015F160  4C 40 13 82 */	cror 2, 0, 2
/* 80162204 0015F164  40 82 00 FC */	bne lbl_80162300
/* 80162208 0015F168  C0 DD 00 60 */	lfs f6, 0x60(r29)
/* 8016220C 0015F16C  38 61 00 34 */	addi r3, r1, 0x34
/* 80162210 0015F170  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80162214 0015F174  38 81 00 08 */	addi r4, r1, 8
/* 80162218 0015F178  C0 BD 00 50 */	lfs f5, 0x50(r29)
/* 8016221C 0015F17C  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 80162220 0015F180  EC 66 00 28 */	fsubs f3, f6, f0
/* 80162224 0015F184  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80162228 0015F188  C0 3C 00 00 */	lfs f1, 0(r28)
/* 8016222C 0015F18C  EC 85 00 28 */	fsubs f4, f5, f0
/* 80162230 0015F190  C0 02 9F CC */	lfs f0, lbl_805ABCEC@sda21(r2)
/* 80162234 0015F194  EC 22 08 28 */	fsubs f1, f2, f1
/* 80162238 0015F198  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8016223C 0015F19C  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80162240 0015F1A0  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 80162244 0015F1A4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80162248 0015F1A8  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8016224C 0015F1AC  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80162250 0015F1B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80162254 0015F1B4  48 1B 16 ED */	bl RotateX__12CTransform4fFRC9CRelAngle
/* 80162258 0015F1B8  3C 80 80 5A */	lis r4, lbl_805A66F4@ha
/* 8016225C 0015F1BC  38 61 00 64 */	addi r3, r1, 0x64
/* 80162260 0015F1C0  38 C4 66 F4 */	addi r6, r4, lbl_805A66F4@l
/* 80162264 0015F1C4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80162268 0015F1C8  38 81 00 28 */	addi r4, r1, 0x28
/* 8016226C 0015F1CC  48 1B 18 A5 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80162270 0015F1D0  38 61 00 94 */	addi r3, r1, 0x94
/* 80162274 0015F1D4  38 81 00 64 */	addi r4, r1, 0x64
/* 80162278 0015F1D8  38 A1 00 34 */	addi r5, r1, 0x34
/* 8016227C 0015F1DC  48 1B 06 D5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80162280 0015F1E0  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80162284 0015F1E4  38 81 00 94 */	addi r4, r1, 0x94
/* 80162288 0015F1E8  48 1B 08 ED */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016228C 0015F1EC  38 7D 00 34 */	addi r3, r29, 0x34
/* 80162290 0015F1F0  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80162294 0015F1F4  48 1B 08 AD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80162298 0015F1F8  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8016229C 0015F1FC  38 60 00 01 */	li r3, 1
/* 801622A0 0015F200  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801622A4 0015F204  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801622A8 0015F208  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801622AC 0015F20C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801622B0 0015F210  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801622B4 0015F214  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801622B8 0015F218  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801622BC 0015F21C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801622C0 0015F220  48 00 00 40 */	b lbl_80162300
lbl_801622C4:
/* 801622C4 0015F224  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 801622C8 0015F228  38 61 00 0C */	addi r3, r1, 0xc
/* 801622CC 0015F22C  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 801622D0 0015F230  38 84 00 36 */	addi r4, r4, 0x36
/* 801622D4 0015F234  4B EA 29 E5 */	bl string_l__4rstlFPCc
/* 801622D8 0015F238  7F A3 EB 78 */	mr r3, r29
/* 801622DC 0015F23C  4B F4 06 1D */	bl GetStateMachine__3CAiFv
/* 801622E0 0015F240  7C 66 1B 78 */	mr r6, r3
/* 801622E4 0015F244  7F C4 F3 78 */	mr r4, r30
/* 801622E8 0015F248  7F A5 EB 78 */	mr r5, r29
/* 801622EC 0015F24C  38 7D 03 30 */	addi r3, r29, 0x330
/* 801622F0 0015F250  38 E1 00 0C */	addi r7, r1, 0xc
/* 801622F4 0015F254  4B F1 D9 11 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801622F8 0015F258  38 61 00 0C */	addi r3, r1, 0xc
/* 801622FC 0015F25C  48 1D B7 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80162300:
/* 80162300 0015F260  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80162304 0015F264  4B FD 7D C9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80162308 0015F268  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 8016230C 0015F26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162310 0015F270  40 81 00 0C */	ble lbl_8016231C
/* 80162314 0015F274  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80162318 0015F278  4B FD 7E 3D */	bl UnFreeze__15CBodyControllerFv
lbl_8016231C:
/* 8016231C 0015F27C  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80162320 0015F280  38 60 00 00 */	li r3, 0
/* 80162324 0015F284  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80162328 0015F288  7F A3 EB 78 */	mr r3, r29
/* 8016232C 0015F28C  98 1D 04 00 */	stb r0, 0x400(r29)
/* 80162330 0015F290  7F E4 FB 78 */	mr r4, r31
/* 80162334 0015F294  7F C5 F3 78 */	mr r5, r30
/* 80162338 0015F298  38 C0 FF FF */	li r6, -1
/* 8016233C 0015F29C  4B EE ED 85 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80162340:
/* 80162340 0015F2A0  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80162344 0015F2A4  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80162348 0015F2A8  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 8016234C 0015F2AC  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 80162350 0015F2B0  83 81 01 00 */	lwz r28, 0x100(r1)
/* 80162354 0015F2B4  7C 08 03 A6 */	mtlr r0
/* 80162358 0015F2B8  38 21 01 10 */	addi r1, r1, 0x110
/* 8016235C 0015F2BC  4E 80 00 20 */	blr 

.global Dead__6CDroneFR13CStateManager9EStateMsgf
Dead__6CDroneFR13CStateManager9EStateMsgf:
/* 80162360 0015F2C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80162364 0015F2C4  7C 08 02 A6 */	mflr r0
/* 80162368 0015F2C8  2C 05 00 01 */	cmpwi r5, 1
/* 8016236C 0015F2CC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80162370 0015F2D0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80162374 0015F2D4  7C 9F 23 78 */	mr r31, r4
/* 80162378 0015F2D8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8016237C 0015F2DC  7C 7E 1B 78 */	mr r30, r3
/* 80162380 0015F2E0  41 82 00 D0 */	beq lbl_80162450
/* 80162384 0015F2E4  40 80 02 60 */	bge lbl_801625E4
/* 80162388 0015F2E8  2C 05 00 00 */	cmpwi r5, 0
/* 8016238C 0015F2EC  40 80 00 0C */	bge lbl_80162398
/* 80162390 0015F2F0  48 00 02 54 */	b lbl_801625E4
/* 80162394 0015F2F4  48 00 02 50 */	b lbl_801625E4
lbl_80162398:
/* 80162398 0015F2F8  38 7E 04 60 */	addi r3, r30, 0x460
/* 8016239C 0015F2FC  38 80 00 00 */	li r4, 0
/* 801623A0 0015F300  48 0D 19 C5 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 801623A4 0015F304  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 801623A8 0015F308  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801623AC 0015F30C  41 82 00 30 */	beq lbl_801623DC
/* 801623B0 0015F310  7F C3 F3 78 */	mr r3, r30
/* 801623B4 0015F314  81 9E 00 00 */	lwz r12, 0(r30)
/* 801623B8 0015F318  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 801623BC 0015F31C  7D 89 03 A6 */	mtctr r12
/* 801623C0 0015F320  4E 80 04 21 */	bctrl 
/* 801623C4 0015F324  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801623C8 0015F328  FC 20 08 50 */	fneg f1, f1
/* 801623CC 0015F32C  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 801623D0 0015F330  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 801623D4 0015F334  D0 3E 01 58 */	stfs f1, 0x158(r30)
/* 801623D8 0015F338  48 00 00 38 */	b lbl_80162410
lbl_801623DC:
/* 801623DC 0015F33C  7F C3 F3 78 */	mr r3, r30
/* 801623E0 0015F340  4B FB 8F 99 */	bl Stop__13CPhysicsActorFv
/* 801623E4 0015F344  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801623E8 0015F348  7F C3 F3 78 */	mr r3, r30
/* 801623EC 0015F34C  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 801623F0 0015F350  4B FB 88 B1 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 801623F4 0015F354  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801623F8 0015F358  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801623FC 0015F35C  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80162400 0015F360  C0 03 00 04 */	lfs f0, 4(r3)
/* 80162404 0015F364  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 80162408 0015F368  C0 03 00 08 */	lfs f0, 8(r3)
/* 8016240C 0015F36C  D0 1E 01 58 */	stfs f0, 0x158(r30)
lbl_80162410:
/* 80162410 0015F370  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 80162414 0015F374  38 60 00 01 */	li r3, 1
/* 80162418 0015F378  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8016241C 0015F37C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80162420 0015F380  98 1E 04 01 */	stb r0, 0x401(r30)
/* 80162424 0015F384  7F C3 F3 78 */	mr r3, r30
/* 80162428 0015F388  7F E4 FB 78 */	mr r4, r31
/* 8016242C 0015F38C  38 A0 00 00 */	li r5, 0
/* 80162430 0015F390  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80162434 0015F394  81 9E 00 00 */	lwz r12, 0(r30)
/* 80162438 0015F398  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 8016243C 0015F39C  7D 89 03 A6 */	mtctr r12
/* 80162440 0015F3A0  4E 80 04 21 */	bctrl 
/* 80162444 0015F3A4  38 00 00 00 */	li r0, 0
/* 80162448 0015F3A8  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 8016244C 0015F3AC  48 00 01 98 */	b lbl_801625E4
lbl_80162450:
/* 80162450 0015F3B0  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80162454 0015F3B4  2C 00 00 00 */	cmpwi r0, 0
/* 80162458 0015F3B8  41 82 00 08 */	beq lbl_80162460
/* 8016245C 0015F3BC  48 00 01 88 */	b lbl_801625E4
lbl_80162460:
/* 80162460 0015F3C0  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80162464 0015F3C4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80162468 0015F3C8  41 82 00 D0 */	beq lbl_80162538
/* 8016246C 0015F3CC  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 80162470 0015F3D0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80162474 0015F3D4  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80162478 0015F3D8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016247C 0015F3DC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80162480 0015F3E0  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 80162484 0015F3E4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80162488 0015F3E8  3C A0 80 3E */	lis r5, lbl_803DAA5C@ha
/* 8016248C 0015F3EC  C0 44 00 08 */	lfs f2, 8(r4)
/* 80162490 0015F3F0  38 C0 00 0F */	li r6, 0xf
/* 80162494 0015F3F4  38 00 00 00 */	li r0, 0
/* 80162498 0015F3F8  3B E3 00 04 */	addi r31, r3, 4
/* 8016249C 0015F3FC  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801624A0 0015F400  38 A5 AA 5C */	addi r5, r5, lbl_803DAA5C@l
/* 801624A4 0015F404  7F E3 FB 78 */	mr r3, r31
/* 801624A8 0015F408  38 80 00 0F */	li r4, 0xf
/* 801624AC 0015F40C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 801624B0 0015F410  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801624B4 0015F414  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801624B8 0015F418  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801624BC 0015F41C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801624C0 0015F420  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801624C4 0015F424  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801624C8 0015F428  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801624CC 0015F42C  98 01 00 40 */	stb r0, 0x40(r1)
/* 801624D0 0015F430  4B FC EF 69 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801624D4 0015F434  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801624D8 0015F438  3C 60 80 3E */	lis r3, lbl_803DAA5C@ha
/* 801624DC 0015F43C  38 83 AA 5C */	addi r4, r3, lbl_803DAA5C@l
/* 801624E0 0015F440  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801624E4 0015F444  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 801624E8 0015F448  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801624EC 0015F44C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801624F0 0015F450  38 00 00 01 */	li r0, 1
/* 801624F4 0015F454  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 801624F8 0015F458  90 BF 01 B4 */	stw r5, 0x1b4(r31)
/* 801624FC 0015F45C  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 80162500 0015F460  90 DF 01 B8 */	stw r6, 0x1b8(r31)
/* 80162504 0015F464  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80162508 0015F468  90 BF 01 BC */	stw r5, 0x1bc(r31)
/* 8016250C 0015F46C  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 80162510 0015F470  90 DF 01 C0 */	stw r6, 0x1c0(r31)
/* 80162514 0015F474  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 80162518 0015F478  90 BF 01 C4 */	stw r5, 0x1c4(r31)
/* 8016251C 0015F47C  88 A1 00 40 */	lbz r5, 0x40(r1)
/* 80162520 0015F480  90 DF 01 C8 */	stw r6, 0x1c8(r31)
/* 80162524 0015F484  98 BF 01 CC */	stb r5, 0x1cc(r31)
/* 80162528 0015F488  90 81 00 20 */	stw r4, 0x20(r1)
/* 8016252C 0015F48C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80162530 0015F490  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80162534 0015F494  48 00 00 B0 */	b lbl_801625E4
lbl_80162538:
/* 80162538 0015F498  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8016253C 0015F49C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80162540 0015F4A0  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80162544 0015F4A4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162548 0015F4A8  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 8016254C 0015F4AC  C0 44 00 00 */	lfs f2, 0(r4)
/* 80162550 0015F4B0  C0 24 00 04 */	lfs f1, 4(r4)
/* 80162554 0015F4B4  3C A0 80 3E */	lis r5, lbl_803DAA50@ha
/* 80162558 0015F4B8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8016255C 0015F4BC  38 C0 00 03 */	li r6, 3
/* 80162560 0015F4C0  38 00 00 00 */	li r0, 0
/* 80162564 0015F4C4  3B E3 00 04 */	addi r31, r3, 4
/* 80162568 0015F4C8  90 E1 00 08 */	stw r7, 8(r1)
/* 8016256C 0015F4CC  38 A5 AA 50 */	addi r5, r5, lbl_803DAA50@l
/* 80162570 0015F4D0  7F E3 FB 78 */	mr r3, r31
/* 80162574 0015F4D4  38 80 00 03 */	li r4, 3
/* 80162578 0015F4D8  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8016257C 0015F4DC  90 A1 00 08 */	stw r5, 8(r1)
/* 80162580 0015F4E0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80162584 0015F4E4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80162588 0015F4E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8016258C 0015F4EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80162590 0015F4F0  4B FC EE A9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80162594 0015F4F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80162598 0015F4F8  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 8016259C 0015F4FC  38 A3 AA 50 */	addi r5, r3, lbl_803DAA50@l
/* 801625A0 0015F500  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801625A4 0015F504  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 801625A8 0015F508  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 801625AC 0015F50C  80 E1 00 10 */	lwz r7, 0x10(r1)
/* 801625B0 0015F510  38 00 00 01 */	li r0, 1
/* 801625B4 0015F514  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801625B8 0015F518  7F C3 F3 78 */	mr r3, r30
/* 801625BC 0015F51C  90 FF 00 E4 */	stw r7, 0xe4(r31)
/* 801625C0 0015F520  80 E1 00 18 */	lwz r7, 0x18(r1)
/* 801625C4 0015F524  90 DF 00 E8 */	stw r6, 0xe8(r31)
/* 801625C8 0015F528  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801625CC 0015F52C  90 FF 00 EC */	stw r7, 0xec(r31)
/* 801625D0 0015F530  90 DF 00 F0 */	stw r6, 0xf0(r31)
/* 801625D4 0015F534  90 A1 00 08 */	stw r5, 8(r1)
/* 801625D8 0015F538  90 81 00 08 */	stw r4, 8(r1)
/* 801625DC 0015F53C  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 801625E0 0015F540  4B FB 8D 99 */	bl Stop__13CPhysicsActorFv
lbl_801625E4:
/* 801625E4 0015F544  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801625E8 0015F548  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801625EC 0015F54C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801625F0 0015F550  7C 08 03 A6 */	mtlr r0
/* 801625F4 0015F554  38 21 00 50 */	addi r1, r1, 0x50
/* 801625F8 0015F558  4E 80 00 20 */	blr 

.global SpotPlayer__6CDroneFR13CStateManagerf
SpotPlayer__6CDroneFR13CStateManagerf:
/* 801625FC 0015F55C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80162600 0015F560  7C 08 02 A6 */	mflr r0
/* 80162604 0015F564  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80162608 0015F568  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8016260C 0015F56C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80162610 0015F570  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80162614 0015F574  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 80162618 0015F578  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 8016261C 0015F57C  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, qr0
/* 80162620 0015F580  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80162624 0015F584  F3 81 00 B8 */	psq_st f28, 184(r1), 0, qr0
/* 80162628 0015F588  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 8016262C 0015F58C  F3 61 00 A8 */	psq_st f27, 168(r1), 0, qr0
/* 80162630 0015F590  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 80162634 0015F594  F3 41 00 98 */	psq_st f26, 152(r1), 0, qr0
/* 80162638 0015F598  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8016263C 0015F59C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80162640 0015F5A0  7C 9F 23 78 */	mr r31, r4
/* 80162644 0015F5A4  7C 7E 1B 78 */	mr r30, r3
/* 80162648 0015F5A8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8016264C 0015F5AC  C0 03 03 BC */	lfs f0, 0x3bc(r3)
/* 80162650 0015F5B0  C0 E5 00 50 */	lfs f7, 0x50(r5)
/* 80162654 0015F5B4  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80162658 0015F5B8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8016265C 0015F5BC  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80162660 0015F5C0  EC C7 08 28 */	fsubs f6, f7, f1
/* 80162664 0015F5C4  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80162668 0015F5C8  C1 05 00 60 */	lfs f8, 0x60(r5)
/* 8016266C 0015F5CC  EC 82 08 28 */	fsubs f4, f2, f1
/* 80162670 0015F5D0  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80162674 0015F5D4  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80162678 0015F5D8  EC A8 18 28 */	fsubs f5, f8, f3
/* 8016267C 0015F5DC  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80162680 0015F5E0  EC 44 01 32 */	fmuls f2, f4, f4
/* 80162684 0015F5E4  D0 E1 00 6C */	stfs f7, 0x6c(r1)
/* 80162688 0015F5E8  EC 65 01 72 */	fmuls f3, f5, f5
/* 8016268C 0015F5EC  EC 22 08 2A */	fadds f1, f2, f1
/* 80162690 0015F5F0  D1 01 00 70 */	stfs f8, 0x70(r1)
/* 80162694 0015F5F4  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80162698 0015F5F8  EC 23 08 2A */	fadds f1, f3, f1
/* 8016269C 0015F5FC  D0 C1 00 78 */	stfs f6, 0x78(r1)
/* 801626A0 0015F600  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801626A4 0015F604  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 801626A8 0015F608  40 81 00 0C */	ble lbl_801626B4
/* 801626AC 0015F60C  38 60 00 00 */	li r3, 0
/* 801626B0 0015F610  48 00 01 28 */	b lbl_801627D8
lbl_801626B4:
/* 801626B4 0015F614  81 83 00 00 */	lwz r12, 0(r3)
/* 801626B8 0015F618  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 801626BC 0015F61C  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 801626C0 0015F620  7D 89 03 A6 */	mtctr r12
/* 801626C4 0015F624  4E 80 04 21 */	bctrl 
/* 801626C8 0015F628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801626CC 0015F62C  40 82 00 0C */	bne lbl_801626D8
/* 801626D0 0015F630  38 60 00 00 */	li r3, 0
/* 801626D4 0015F634  48 00 01 04 */	b lbl_801627D8
lbl_801626D8:
/* 801626D8 0015F638  C1 1E 00 54 */	lfs f8, 0x54(r30)
/* 801626DC 0015F63C  38 61 00 5C */	addi r3, r1, 0x5c
/* 801626E0 0015F640  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 801626E4 0015F644  38 81 00 50 */	addi r4, r1, 0x50
/* 801626E8 0015F648  C0 FE 00 44 */	lfs f7, 0x44(r30)
/* 801626EC 0015F64C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 801626F0 0015F650  EC 61 02 32 */	fmuls f3, f1, f8
/* 801626F4 0015F654  C1 5E 00 58 */	lfs f10, 0x58(r30)
/* 801626F8 0015F658  EC 81 01 F2 */	fmuls f4, f1, f7
/* 801626FC 0015F65C  C1 3E 00 48 */	lfs f9, 0x48(r30)
/* 80162700 0015F660  EC 41 00 32 */	fmuls f2, f1, f0
/* 80162704 0015F664  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80162708 0015F668  EC C9 20 2A */	fadds f6, f9, f4
/* 8016270C 0015F66C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80162710 0015F670  EC AA 18 2A */	fadds f5, f10, f3
/* 80162714 0015F674  EC 01 10 2A */	fadds f0, f1, f2
/* 80162718 0015F678  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 8016271C 0015F67C  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 80162720 0015F680  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80162724 0015F684  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80162728 0015F688  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8016272C 0015F68C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80162730 0015F690  D1 21 00 48 */	stfs f9, 0x48(r1)
/* 80162734 0015F694  D1 41 00 4C */	stfs f10, 0x4c(r1)
/* 80162738 0015F698  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8016273C 0015F69C  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 80162740 0015F6A0  D0 A1 00 58 */	stfs f5, 0x58(r1)
/* 80162744 0015F6A4  48 1B 21 0D */	bl AsNormalized__9CVector3fCFv
/* 80162748 0015F6A8  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8016274C 0015F6AC  7F E5 FB 78 */	mr r5, r31
/* 80162750 0015F6B0  38 61 00 08 */	addi r3, r1, 8
/* 80162754 0015F6B4  C3 81 00 5C */	lfs f28, 0x5c(r1)
/* 80162758 0015F6B8  81 84 00 00 */	lwz r12, 0(r4)
/* 8016275C 0015F6BC  C3 61 00 60 */	lfs f27, 0x60(r1)
/* 80162760 0015F6C0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80162764 0015F6C4  C3 41 00 64 */	lfs f26, 0x64(r1)
/* 80162768 0015F6C8  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 8016276C 0015F6CC  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 80162770 0015F6D0  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 80162774 0015F6D4  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80162778 0015F6D8  7D 89 03 A6 */	mtctr r12
/* 8016277C 0015F6DC  4E 80 04 21 */	bctrl 
/* 80162780 0015F6E0  C0 41 00 08 */	lfs f2, 8(r1)
/* 80162784 0015F6E4  38 61 00 20 */	addi r3, r1, 0x20
/* 80162788 0015F6E8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8016278C 0015F6EC  38 81 00 14 */	addi r4, r1, 0x14
/* 80162790 0015F6F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80162794 0015F6F4  EC 42 F8 28 */	fsubs f2, f2, f31
/* 80162798 0015F6F8  EC 21 F0 28 */	fsubs f1, f1, f30
/* 8016279C 0015F6FC  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801627A0 0015F700  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801627A4 0015F704  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801627A8 0015F708  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801627AC 0015F70C  48 1B 20 A5 */	bl AsNormalized__9CVector3fCFv
/* 801627B0 0015F710  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801627B4 0015F714  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801627B8 0015F718  EC 3B 00 32 */	fmuls f1, f27, f0
/* 801627BC 0015F71C  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 801627C0 0015F720  C8 02 9F D0 */	lfd f0, lbl_805ABCF0@sda21(r2)
/* 801627C4 0015F724  EC 3C 08 BA */	fmadds f1, f28, f2, f1
/* 801627C8 0015F728  EC 3A 08 FA */	fmadds f1, f26, f3, f1
/* 801627CC 0015F72C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801627D0 0015F730  7C 00 00 26 */	mfcr r0
/* 801627D4 0015F734  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
lbl_801627D8:
/* 801627D8 0015F738  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 801627DC 0015F73C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801627E0 0015F740  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 801627E4 0015F744  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 801627E8 0015F748  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, qr0
/* 801627EC 0015F74C  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 801627F0 0015F750  E3 81 00 B8 */	psq_l f28, 184(r1), 0, qr0
/* 801627F4 0015F754  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 801627F8 0015F758  E3 61 00 A8 */	psq_l f27, 168(r1), 0, qr0
/* 801627FC 0015F75C  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80162800 0015F760  E3 41 00 98 */	psq_l f26, 152(r1), 0, qr0
/* 80162804 0015F764  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80162808 0015F768  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8016280C 0015F76C  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80162810 0015F770  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80162814 0015F774  7C 08 03 A6 */	mtlr r0
/* 80162818 0015F778  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8016281C 0015F77C  4E 80 00 20 */	blr 

.global ShouldFire__6CDroneFR13CStateManagerf
ShouldFire__6CDroneFR13CStateManagerf:
/* 80162820 0015F780  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80162824 0015F784  7C 08 02 A6 */	mflr r0
/* 80162828 0015F788  90 01 01 64 */	stw r0, 0x164(r1)
/* 8016282C 0015F78C  BF 41 01 48 */	stmw r26, 0x148(r1)
/* 80162830 0015F790  7C 7A 1B 78 */	mr r26, r3
/* 80162834 0015F794  7C 9B 23 78 */	mr r27, r4
/* 80162838 0015F798  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8016283C 0015F79C  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 80162840 0015F7A0  2C 00 00 01 */	cmpwi r0, 1
/* 80162844 0015F7A4  41 82 01 A4 */	beq lbl_801629E8
/* 80162848 0015F7A8  C0 3A 06 24 */	lfs f1, 0x624(r26)
/* 8016284C 0015F7AC  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80162850 0015F7B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162854 0015F7B4  4C 40 13 82 */	cror 2, 0, 2
/* 80162858 0015F7B8  40 82 01 90 */	bne lbl_801629E8
/* 8016285C 0015F7BC  80 AD 8D 74 */	lwz r5, lbl_805A7934@sda21(r13)
/* 80162860 0015F7C0  38 60 00 00 */	li r3, 0
/* 80162864 0015F7C4  38 80 00 01 */	li r4, 1
/* 80162868 0015F7C8  48 22 76 8D */	bl __shl2i
/* 8016286C 0015F7CC  80 AD 8D 78 */	lwz r5, lbl_805A7938@sda21(r13)
/* 80162870 0015F7D0  7C 9E 23 78 */	mr r30, r4
/* 80162874 0015F7D4  7C 7F 1B 78 */	mr r31, r3
/* 80162878 0015F7D8  38 60 00 00 */	li r3, 0
/* 8016287C 0015F7DC  38 80 00 01 */	li r4, 1
/* 80162880 0015F7E0  48 22 76 75 */	bl __shl2i
/* 80162884 0015F7E4  80 AD 8D 6C */	lwz r5, lbl_805A792C@sda21(r13)
/* 80162888 0015F7E8  7F DE 23 78 */	or r30, r30, r4
/* 8016288C 0015F7EC  7F FF 1B 78 */	or r31, r31, r3
/* 80162890 0015F7F0  38 60 00 00 */	li r3, 0
/* 80162894 0015F7F4  38 80 00 01 */	li r4, 1
/* 80162898 0015F7F8  48 22 76 5D */	bl __shl2i
/* 8016289C 0015F7FC  80 AD 8D 70 */	lwz r5, lbl_805A7930@sda21(r13)
/* 801628A0 0015F800  7C 9C 23 78 */	mr r28, r4
/* 801628A4 0015F804  7C 7D 1B 78 */	mr r29, r3
/* 801628A8 0015F808  38 60 00 00 */	li r3, 0
/* 801628AC 0015F80C  38 80 00 01 */	li r4, 1
/* 801628B0 0015F810  48 22 76 45 */	bl __shl2i
/* 801628B4 0015F814  7F BD 1B 78 */	or r29, r29, r3
/* 801628B8 0015F818  38 00 00 03 */	li r0, 3
/* 801628BC 0015F81C  7F 9C 23 78 */	or r28, r28, r4
/* 801628C0 0015F820  93 A1 00 70 */	stw r29, 0x70(r1)
/* 801628C4 0015F824  7F 65 DB 78 */	mr r5, r27
/* 801628C8 0015F828  38 61 00 40 */	addi r3, r1, 0x40
/* 801628CC 0015F82C  93 81 00 74 */	stw r28, 0x74(r1)
/* 801628D0 0015F830  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 801628D4 0015F834  93 C1 00 7C */	stw r30, 0x7c(r1)
/* 801628D8 0015F838  93 E1 00 78 */	stw r31, 0x78(r1)
/* 801628DC 0015F83C  90 01 00 80 */	stw r0, 0x80(r1)
/* 801628E0 0015F840  80 9B 08 4C */	lwz r4, 0x84c(r27)
/* 801628E4 0015F844  90 01 00 68 */	stw r0, 0x68(r1)
/* 801628E8 0015F848  81 84 00 00 */	lwz r12, 0(r4)
/* 801628EC 0015F84C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801628F0 0015F850  7D 89 03 A6 */	mtctr r12
/* 801628F4 0015F854  4E 80 04 21 */	bctrl 
/* 801628F8 0015F858  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 801628FC 0015F85C  38 61 00 30 */	addi r3, r1, 0x30
/* 80162900 0015F860  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80162904 0015F864  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80162908 0015F868  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8016290C 0015F86C  80 8D 8C F8 */	lwz r4, lbl_805A78B8@sda21(r13)
/* 80162910 0015F870  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80162914 0015F874  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80162918 0015F878  4B EA 23 A1 */	bl string_l__4rstlFPCc
/* 8016291C 0015F87C  7F 44 D3 78 */	mr r4, r26
/* 80162920 0015F880  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80162924 0015F884  38 A1 00 30 */	addi r5, r1, 0x30
/* 80162928 0015F888  4B F1 60 51 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016292C 0015F88C  38 61 01 18 */	addi r3, r1, 0x118
/* 80162930 0015F890  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80162934 0015F894  48 1B 02 41 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80162938 0015F898  38 61 00 30 */	addi r3, r1, 0x30
/* 8016293C 0015F89C  48 1D B1 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80162940 0015F8A0  C0 41 01 24 */	lfs f2, 0x124(r1)
/* 80162944 0015F8A4  7F 63 DB 78 */	mr r3, r27
/* 80162948 0015F8A8  C0 21 01 34 */	lfs f1, 0x134(r1)
/* 8016294C 0015F8AC  7F 47 D3 78 */	mr r7, r26
/* 80162950 0015F8B0  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 80162954 0015F8B4  38 81 00 24 */	addi r4, r1, 0x24
/* 80162958 0015F8B8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8016295C 0015F8BC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80162960 0015F8C0  38 C1 00 70 */	addi r6, r1, 0x70
/* 80162964 0015F8C4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80162968 0015F8C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8016296C 0015F8CC  4B EE A4 D1 */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 80162970 0015F8D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80162974 0015F8D4  41 82 00 74 */	beq lbl_801629E8
/* 80162978 0015F8D8  80 8D 8C FC */	lwz r4, lbl_805A78BC@sda21(r13)
/* 8016297C 0015F8DC  38 61 00 14 */	addi r3, r1, 0x14
/* 80162980 0015F8E0  4B EA 23 39 */	bl string_l__4rstlFPCc
/* 80162984 0015F8E4  7F 44 D3 78 */	mr r4, r26
/* 80162988 0015F8E8  38 61 00 88 */	addi r3, r1, 0x88
/* 8016298C 0015F8EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80162990 0015F8F0  4B F1 5F E9 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80162994 0015F8F4  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80162998 0015F8F8  38 81 00 88 */	addi r4, r1, 0x88
/* 8016299C 0015F8FC  48 1B 01 D9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801629A0 0015F900  38 61 00 14 */	addi r3, r1, 0x14
/* 801629A4 0015F904  48 1D B1 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801629A8 0015F908  C0 41 00 F4 */	lfs f2, 0xf4(r1)
/* 801629AC 0015F90C  7F 63 DB 78 */	mr r3, r27
/* 801629B0 0015F910  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 801629B4 0015F914  7F 47 D3 78 */	mr r7, r26
/* 801629B8 0015F918  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 801629BC 0015F91C  38 81 00 08 */	addi r4, r1, 8
/* 801629C0 0015F920  D0 41 00 08 */	stfs f2, 8(r1)
/* 801629C4 0015F924  38 A1 00 4C */	addi r5, r1, 0x4c
/* 801629C8 0015F928  38 C1 00 70 */	addi r6, r1, 0x70
/* 801629CC 0015F92C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801629D0 0015F930  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801629D4 0015F934  4B EE A4 69 */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 801629D8 0015F938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801629DC 0015F93C  41 82 00 0C */	beq lbl_801629E8
/* 801629E0 0015F940  38 60 00 01 */	li r3, 1
/* 801629E4 0015F944  48 00 00 08 */	b lbl_801629EC
lbl_801629E8:
/* 801629E8 0015F948  38 60 00 00 */	li r3, 0
lbl_801629EC:
/* 801629EC 0015F94C  BB 41 01 48 */	lmw r26, 0x148(r1)
/* 801629F0 0015F950  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801629F4 0015F954  7C 08 03 A6 */	mtlr r0
/* 801629F8 0015F958  38 21 01 60 */	addi r1, r1, 0x160
/* 801629FC 0015F95C  4E 80 00 20 */	blr 

.global LineOfSight__6CDroneFR13CStateManagerf
LineOfSight__6CDroneFR13CStateManagerf:
/* 80162A00 0015F960  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80162A04 0015F964  7C 08 02 A6 */	mflr r0
/* 80162A08 0015F968  90 01 00 84 */	stw r0, 0x84(r1)
/* 80162A0C 0015F96C  BF 41 00 68 */	stmw r26, 0x68(r1)
/* 80162A10 0015F970  7C 9B 23 78 */	mr r27, r4
/* 80162A14 0015F974  7C 7A 1B 78 */	mr r26, r3
/* 80162A18 0015F978  38 80 00 01 */	li r4, 1
/* 80162A1C 0015F97C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80162A20 0015F980  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80162A24 0015F984  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80162A28 0015F988  38 60 00 00 */	li r3, 0
/* 80162A2C 0015F98C  80 AD 8D 64 */	lwz r5, lbl_805A7924@sda21(r13)
/* 80162A30 0015F990  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80162A34 0015F994  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80162A38 0015F998  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80162A3C 0015F99C  48 22 74 B9 */	bl __shl2i
/* 80162A40 0015F9A0  80 AD 8D 68 */	lwz r5, lbl_805A7928@sda21(r13)
/* 80162A44 0015F9A4  7C 9E 23 78 */	mr r30, r4
/* 80162A48 0015F9A8  7C 7F 1B 78 */	mr r31, r3
/* 80162A4C 0015F9AC  38 60 00 00 */	li r3, 0
/* 80162A50 0015F9B0  38 80 00 01 */	li r4, 1
/* 80162A54 0015F9B4  48 22 74 A1 */	bl __shl2i
/* 80162A58 0015F9B8  80 AD 8D 5C */	lwz r5, lbl_805A791C@sda21(r13)
/* 80162A5C 0015F9BC  7F DE 23 78 */	or r30, r30, r4
/* 80162A60 0015F9C0  7F FF 1B 78 */	or r31, r31, r3
/* 80162A64 0015F9C4  38 60 00 00 */	li r3, 0
/* 80162A68 0015F9C8  38 80 00 01 */	li r4, 1
/* 80162A6C 0015F9CC  48 22 74 89 */	bl __shl2i
/* 80162A70 0015F9D0  80 AD 8D 60 */	lwz r5, lbl_805A7920@sda21(r13)
/* 80162A74 0015F9D4  7C 9C 23 78 */	mr r28, r4
/* 80162A78 0015F9D8  7C 7D 1B 78 */	mr r29, r3
/* 80162A7C 0015F9DC  38 60 00 00 */	li r3, 0
/* 80162A80 0015F9E0  38 80 00 01 */	li r4, 1
/* 80162A84 0015F9E4  48 22 74 71 */	bl __shl2i
/* 80162A88 0015F9E8  7F BD 1B 78 */	or r29, r29, r3
/* 80162A8C 0015F9EC  38 00 00 03 */	li r0, 3
/* 80162A90 0015F9F0  7F 9C 23 78 */	or r28, r28, r4
/* 80162A94 0015F9F4  93 A1 00 48 */	stw r29, 0x48(r1)
/* 80162A98 0015F9F8  7F 65 DB 78 */	mr r5, r27
/* 80162A9C 0015F9FC  38 61 00 08 */	addi r3, r1, 8
/* 80162AA0 0015FA00  93 81 00 4C */	stw r28, 0x4c(r1)
/* 80162AA4 0015FA04  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80162AA8 0015FA08  93 C1 00 54 */	stw r30, 0x54(r1)
/* 80162AAC 0015FA0C  93 E1 00 50 */	stw r31, 0x50(r1)
/* 80162AB0 0015FA10  90 01 00 58 */	stw r0, 0x58(r1)
/* 80162AB4 0015FA14  80 9B 08 4C */	lwz r4, 0x84c(r27)
/* 80162AB8 0015FA18  90 01 00 40 */	stw r0, 0x40(r1)
/* 80162ABC 0015FA1C  81 84 00 00 */	lwz r12, 0(r4)
/* 80162AC0 0015FA20  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80162AC4 0015FA24  7D 89 03 A6 */	mtctr r12
/* 80162AC8 0015FA28  4E 80 04 21 */	bctrl 
/* 80162ACC 0015FA2C  C0 41 00 08 */	lfs f2, 8(r1)
/* 80162AD0 0015FA30  7F 63 DB 78 */	mr r3, r27
/* 80162AD4 0015FA34  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80162AD8 0015FA38  7F 47 D3 78 */	mr r7, r26
/* 80162ADC 0015FA3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80162AE0 0015FA40  38 81 00 20 */	addi r4, r1, 0x20
/* 80162AE4 0015FA44  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80162AE8 0015FA48  38 A1 00 14 */	addi r5, r1, 0x14
/* 80162AEC 0015FA4C  38 C1 00 48 */	addi r6, r1, 0x48
/* 80162AF0 0015FA50  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80162AF4 0015FA54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80162AF8 0015FA58  4B EE A3 45 */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 80162AFC 0015FA5C  BB 41 00 68 */	lmw r26, 0x68(r1)
/* 80162B00 0015FA60  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80162B04 0015FA64  7C 08 03 A6 */	mtlr r0
/* 80162B08 0015FA68  38 21 00 80 */	addi r1, r1, 0x80
/* 80162B0C 0015FA6C  4E 80 00 20 */	blr 

.global Deactivate__6CDroneFR13CStateManager9EStateMsgf
Deactivate__6CDroneFR13CStateManager9EStateMsgf:
/* 80162B10 0015FA70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80162B14 0015FA74  7C 08 02 A6 */	mflr r0
/* 80162B18 0015FA78  2C 05 00 00 */	cmpwi r5, 0
/* 80162B1C 0015FA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80162B20 0015FA80  41 82 00 08 */	beq lbl_80162B28
/* 80162B24 0015FA84  48 00 00 08 */	b lbl_80162B2C
lbl_80162B28:
/* 80162B28 0015FA88  4B F1 5E D9 */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_80162B2C:
/* 80162B2C 0015FA8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80162B30 0015FA90  7C 08 03 A6 */	mtlr r0
/* 80162B34 0015FA94  38 21 00 10 */	addi r1, r1, 0x10
/* 80162B38 0015FA98  4E 80 00 20 */	blr 

.global Dodge__6CDroneFR13CStateManager9EStateMsgf
Dodge__6CDroneFR13CStateManager9EStateMsgf:
/* 80162B3C 0015FA9C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80162B40 0015FAA0  7C 08 02 A6 */	mflr r0
/* 80162B44 0015FAA4  2C 05 00 01 */	cmpwi r5, 1
/* 80162B48 0015FAA8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80162B4C 0015FAAC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80162B50 0015FAB0  7C 9F 23 78 */	mr r31, r4
/* 80162B54 0015FAB4  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80162B58 0015FAB8  7C 7E 1B 78 */	mr r30, r3
/* 80162B5C 0015FABC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80162B60 0015FAC0  41 82 00 50 */	beq lbl_80162BB0
/* 80162B64 0015FAC4  40 80 03 28 */	bge lbl_80162E8C
/* 80162B68 0015FAC8  2C 05 00 00 */	cmpwi r5, 0
/* 80162B6C 0015FACC  40 80 00 0C */	bge lbl_80162B78
/* 80162B70 0015FAD0  48 00 03 1C */	b lbl_80162E8C
/* 80162B74 0015FAD4  48 00 03 18 */	b lbl_80162E8C
lbl_80162B78:
/* 80162B78 0015FAD8  38 00 00 00 */	li r0, 0
/* 80162B7C 0015FADC  C0 22 9F 80 */	lfs f1, lbl_805ABCA0@sda21(r2)
/* 80162B80 0015FAE0  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80162B84 0015FAE4  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80162B88 0015FAE8  D0 3E 06 30 */	stfs f1, 0x630(r30)
/* 80162B8C 0015FAEC  D0 1E 06 34 */	stfs f0, 0x634(r30)
/* 80162B90 0015FAF0  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 80162B94 0015FAF4  2C 00 00 01 */	cmpwi r0, 1
/* 80162B98 0015FAF8  40 82 02 F4 */	bne lbl_80162E8C
/* 80162B9C 0015FAFC  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80162BA0 0015FB00  38 60 00 01 */	li r3, 1
/* 80162BA4 0015FB04  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80162BA8 0015FB08  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80162BAC 0015FB0C  48 00 02 E0 */	b lbl_80162E8C
lbl_80162BB0:
/* 80162BB0 0015FB10  80 1E 07 C8 */	lwz r0, 0x7c8(r30)
/* 80162BB4 0015FB14  2C 00 00 01 */	cmpwi r0, 1
/* 80162BB8 0015FB18  41 82 02 70 */	beq lbl_80162E28
/* 80162BBC 0015FB1C  40 80 02 84 */	bge lbl_80162E40
/* 80162BC0 0015FB20  2C 00 00 00 */	cmpwi r0, 0
/* 80162BC4 0015FB24  40 80 00 08 */	bge lbl_80162BCC
/* 80162BC8 0015FB28  48 00 02 78 */	b lbl_80162E40
lbl_80162BCC:
/* 80162BCC 0015FB2C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162BD0 0015FB30  38 00 00 0C */	li r0, 0xc
/* 80162BD4 0015FB34  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80162BD8 0015FB38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80162BDC 0015FB3C  38 81 00 08 */	addi r4, r1, 8
/* 80162BE0 0015FB40  90 61 00 08 */	stw r3, 8(r1)
/* 80162BE4 0015FB44  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162BE8 0015FB48  38 63 00 04 */	addi r3, r3, 4
/* 80162BEC 0015FB4C  4B FC EB CD */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80162BF0 0015FB50  34 01 00 08 */	addic. r0, r1, 8
/* 80162BF4 0015FB54  41 82 00 10 */	beq lbl_80162C04
/* 80162BF8 0015FB58  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162BFC 0015FB5C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80162C00 0015FB60  90 01 00 08 */	stw r0, 8(r1)
lbl_80162C04:
/* 80162C04 0015FB64  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 80162C08 0015FB68  2C 00 00 04 */	cmpwi r0, 4
/* 80162C0C 0015FB6C  41 82 01 1C */	beq lbl_80162D28
/* 80162C10 0015FB70  40 80 00 14 */	bge lbl_80162C24
/* 80162C14 0015FB74  2C 00 00 02 */	cmpwi r0, 2
/* 80162C18 0015FB78  41 82 00 18 */	beq lbl_80162C30
/* 80162C1C 0015FB7C  40 80 00 90 */	bge lbl_80162CAC
/* 80162C20 0015FB80  48 00 01 FC */	b lbl_80162E1C
lbl_80162C24:
/* 80162C24 0015FB84  2C 00 00 06 */	cmpwi r0, 6
/* 80162C28 0015FB88  40 80 01 F4 */	bge lbl_80162E1C
/* 80162C2C 0015FB8C  48 00 01 78 */	b lbl_80162DA4
lbl_80162C30:
/* 80162C30 0015FB90  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162C34 0015FB94  38 C0 00 01 */	li r6, 1
/* 80162C38 0015FB98  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80162C3C 0015FB9C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162C40 0015FBA0  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80162C44 0015FBA4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80162C48 0015FBA8  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 80162C4C 0015FBAC  38 00 00 03 */	li r0, 3
/* 80162C50 0015FBB0  3B A3 00 04 */	addi r29, r3, 4
/* 80162C54 0015FBB4  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80162C58 0015FBB8  7F A3 EB 78 */	mr r3, r29
/* 80162C5C 0015FBBC  38 80 00 01 */	li r4, 1
/* 80162C60 0015FBC0  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80162C64 0015FBC4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80162C68 0015FBC8  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 80162C6C 0015FBCC  4B FC E7 CD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80162C70 0015FBD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80162C74 0015FBD4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80162C78 0015FBD8  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80162C7C 0015FBDC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162C80 0015FBE0  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 80162C84 0015FBE4  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80162C88 0015FBE8  80 C1 00 48 */	lwz r6, 0x48(r1)
/* 80162C8C 0015FBEC  38 00 00 03 */	li r0, 3
/* 80162C90 0015FBF0  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 80162C94 0015FBF4  90 DD 00 CC */	stw r6, 0xcc(r29)
/* 80162C98 0015FBF8  90 BD 00 D0 */	stw r5, 0xd0(r29)
/* 80162C9C 0015FBFC  90 81 00 40 */	stw r4, 0x40(r1)
/* 80162CA0 0015FC00  90 61 00 40 */	stw r3, 0x40(r1)
/* 80162CA4 0015FC04  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80162CA8 0015FC08  48 00 01 74 */	b lbl_80162E1C
lbl_80162CAC:
/* 80162CAC 0015FC0C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162CB0 0015FC10  38 C0 00 01 */	li r6, 1
/* 80162CB4 0015FC14  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80162CB8 0015FC18  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162CBC 0015FC1C  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80162CC0 0015FC20  90 01 00 30 */	stw r0, 0x30(r1)
/* 80162CC4 0015FC24  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 80162CC8 0015FC28  38 00 00 04 */	li r0, 4
/* 80162CCC 0015FC2C  3B A3 00 04 */	addi r29, r3, 4
/* 80162CD0 0015FC30  90 C1 00 34 */	stw r6, 0x34(r1)
/* 80162CD4 0015FC34  7F A3 EB 78 */	mr r3, r29
/* 80162CD8 0015FC38  38 80 00 01 */	li r4, 1
/* 80162CDC 0015FC3C  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80162CE0 0015FC40  90 01 00 38 */	stw r0, 0x38(r1)
/* 80162CE4 0015FC44  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80162CE8 0015FC48  4B FC E7 51 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80162CEC 0015FC4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80162CF0 0015FC50  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80162CF4 0015FC54  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80162CF8 0015FC58  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162CFC 0015FC5C  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 80162D00 0015FC60  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80162D04 0015FC64  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80162D08 0015FC68  38 00 00 04 */	li r0, 4
/* 80162D0C 0015FC6C  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80162D10 0015FC70  90 DD 00 CC */	stw r6, 0xcc(r29)
/* 80162D14 0015FC74  90 BD 00 D0 */	stw r5, 0xd0(r29)
/* 80162D18 0015FC78  90 81 00 30 */	stw r4, 0x30(r1)
/* 80162D1C 0015FC7C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80162D20 0015FC80  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80162D24 0015FC84  48 00 00 F8 */	b lbl_80162E1C
lbl_80162D28:
/* 80162D28 0015FC88  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162D2C 0015FC8C  38 C0 00 01 */	li r6, 1
/* 80162D30 0015FC90  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80162D34 0015FC94  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162D38 0015FC98  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80162D3C 0015FC9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80162D40 0015FCA0  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 80162D44 0015FCA4  38 00 00 05 */	li r0, 5
/* 80162D48 0015FCA8  3B A3 00 04 */	addi r29, r3, 4
/* 80162D4C 0015FCAC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80162D50 0015FCB0  7F A3 EB 78 */	mr r3, r29
/* 80162D54 0015FCB4  38 80 00 01 */	li r4, 1
/* 80162D58 0015FCB8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80162D5C 0015FCBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80162D60 0015FCC0  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80162D64 0015FCC4  4B FC E6 D5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80162D68 0015FCC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80162D6C 0015FCCC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80162D70 0015FCD0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80162D74 0015FCD4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162D78 0015FCD8  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 80162D7C 0015FCDC  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80162D80 0015FCE0  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 80162D84 0015FCE4  38 00 00 05 */	li r0, 5
/* 80162D88 0015FCE8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80162D8C 0015FCEC  90 DD 00 CC */	stw r6, 0xcc(r29)
/* 80162D90 0015FCF0  90 BD 00 D0 */	stw r5, 0xd0(r29)
/* 80162D94 0015FCF4  90 81 00 20 */	stw r4, 0x20(r1)
/* 80162D98 0015FCF8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80162D9C 0015FCFC  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80162DA0 0015FD00  48 00 00 7C */	b lbl_80162E1C
lbl_80162DA4:
/* 80162DA4 0015FD04  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162DA8 0015FD08  38 C0 00 01 */	li r6, 1
/* 80162DAC 0015FD0C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80162DB0 0015FD10  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162DB4 0015FD14  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80162DB8 0015FD18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80162DBC 0015FD1C  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 80162DC0 0015FD20  38 00 00 02 */	li r0, 2
/* 80162DC4 0015FD24  3B A3 00 04 */	addi r29, r3, 4
/* 80162DC8 0015FD28  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80162DCC 0015FD2C  7F A3 EB 78 */	mr r3, r29
/* 80162DD0 0015FD30  38 80 00 01 */	li r4, 1
/* 80162DD4 0015FD34  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80162DD8 0015FD38  90 01 00 18 */	stw r0, 0x18(r1)
/* 80162DDC 0015FD3C  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80162DE0 0015FD40  4B FC E6 59 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80162DE4 0015FD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80162DE8 0015FD48  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80162DEC 0015FD4C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 80162DF0 0015FD50  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80162DF4 0015FD54  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 80162DF8 0015FD58  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80162DFC 0015FD5C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80162E00 0015FD60  38 00 00 02 */	li r0, 2
/* 80162E04 0015FD64  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80162E08 0015FD68  90 DD 00 CC */	stw r6, 0xcc(r29)
/* 80162E0C 0015FD6C  90 BD 00 D0 */	stw r5, 0xd0(r29)
/* 80162E10 0015FD70  90 81 00 10 */	stw r4, 0x10(r1)
/* 80162E14 0015FD74  90 61 00 10 */	stw r3, 0x10(r1)
/* 80162E18 0015FD78  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80162E1C:
/* 80162E1C 0015FD7C  38 00 00 01 */	li r0, 1
/* 80162E20 0015FD80  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80162E24 0015FD84  48 00 00 1C */	b lbl_80162E40
lbl_80162E28:
/* 80162E28 0015FD88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162E2C 0015FD8C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80162E30 0015FD90  2C 00 00 03 */	cmpwi r0, 3
/* 80162E34 0015FD94  41 82 00 0C */	beq lbl_80162E40
/* 80162E38 0015FD98  38 00 00 02 */	li r0, 2
/* 80162E3C 0015FD9C  90 1E 07 C8 */	stw r0, 0x7c8(r30)
lbl_80162E40:
/* 80162E40 0015FDA0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80162E44 0015FDA4  C0 42 9F 68 */	lfs f2, lbl_805ABC88@sda21(r2)
/* 80162E48 0015FDA8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80162E4C 0015FDAC  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 80162E50 0015FDB0  EC 20 10 2A */	fadds f1, f0, f2
/* 80162E54 0015FDB4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80162E58 0015FDB8  EC A3 10 2A */	fadds f5, f3, f2
/* 80162E5C 0015FDBC  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80162E60 0015FDC0  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80162E64 0015FDC4  C0 42 9F 7C */	lfs f2, lbl_805ABC9C@sda21(r2)
/* 80162E68 0015FDC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80162E6C 0015FDCC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80162E70 0015FDD0  EC 43 10 2A */	fadds f2, f3, f2
/* 80162E74 0015FDD4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80162E78 0015FDD8  EC 65 20 28 */	fsubs f3, f5, f4
/* 80162E7C 0015FDDC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80162E80 0015FDE0  EC 02 08 28 */	fsubs f0, f2, f1
/* 80162E84 0015FDE4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80162E88 0015FDE8  D0 03 00 24 */	stfs f0, 0x24(r3)
lbl_80162E8C:
/* 80162E8C 0015FDEC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80162E90 0015FDF0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80162E94 0015FDF4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80162E98 0015FDF8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80162E9C 0015FDFC  7C 08 03 A6 */	mtlr r0
/* 80162EA0 0015FE00  38 21 00 60 */	addi r1, r1, 0x60
/* 80162EA4 0015FE04  4E 80 00 20 */	blr 

.global AttackOver__6CDroneFR13CStateManagerf
AttackOver__6CDroneFR13CStateManagerf:
/* 80162EA8 0015FE08  88 03 08 34 */	lbz r0, 0x834(r3)
/* 80162EAC 0015FE0C  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 80162EB0 0015FE10  4E 80 00 20 */	blr 

.global CodeTrigger__6CDroneFR13CStateManagerf
CodeTrigger__6CDroneFR13CStateManagerf:
/* 80162EB4 0015FE14  88 03 08 34 */	lbz r0, 0x834(r3)
/* 80162EB8 0015FE18  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 80162EBC 0015FE1C  4E 80 00 20 */	blr 

.global InRange__6CDroneFR13CStateManagerf
InRange__6CDroneFR13CStateManagerf:
/* 80162EC0 0015FE20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80162EC4 0015FE24  38 00 00 00 */	li r0, 0
/* 80162EC8 0015FE28  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80162ECC 0015FE2C  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 80162ED0 0015FE30  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 80162ED4 0015FE34  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80162ED8 0015FE38  EC 00 00 32 */	fmuls f0, f0, f0
/* 80162EDC 0015FE3C  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80162EE0 0015FE40  EC C7 08 28 */	fsubs f6, f7, f1
/* 80162EE4 0015FE44  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80162EE8 0015FE48  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 80162EEC 0015FE4C  EC 82 08 28 */	fsubs f4, f2, f1
/* 80162EF0 0015FE50  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80162EF4 0015FE54  D0 41 00 08 */	stfs f2, 8(r1)
/* 80162EF8 0015FE58  EC A8 18 28 */	fsubs f5, f8, f3
/* 80162EFC 0015FE5C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80162F00 0015FE60  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80162F04 0015FE64  EC 44 01 32 */	fmuls f2, f4, f4
/* 80162F08 0015FE68  EC 65 01 72 */	fmuls f3, f5, f5
/* 80162F0C 0015FE6C  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80162F10 0015FE70  EC 22 08 2A */	fadds f1, f2, f1
/* 80162F14 0015FE74  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80162F18 0015FE78  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80162F1C 0015FE7C  EC 23 08 2A */	fadds f1, f3, f1
/* 80162F20 0015FE80  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 80162F24 0015FE84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162F28 0015FE88  40 81 00 18 */	ble lbl_80162F40
/* 80162F2C 0015FE8C  C0 03 03 00 */	lfs f0, 0x300(r3)
/* 80162F30 0015FE90  EC 00 00 32 */	fmuls f0, f0, f0
/* 80162F34 0015FE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80162F38 0015FE98  40 80 00 08 */	bge lbl_80162F40
/* 80162F3C 0015FE9C  38 00 00 01 */	li r0, 1
lbl_80162F40:
/* 80162F40 0015FEA0  7C 03 03 78 */	mr r3, r0
/* 80162F44 0015FEA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80162F48 0015FEA8  4E 80 00 20 */	blr 

.global sub_80162f4c
sub_80162f4c:
/* 80162F4C 0015FEAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80162F50 0015FEB0  7C 08 02 A6 */	mflr r0
/* 80162F54 0015FEB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80162F58 0015FEB8  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 80162F5C 0015FEBC  7C 9B 23 78 */	mr r27, r4
/* 80162F60 0015FEC0  7C BE 2B 78 */	mr r30, r5
/* 80162F64 0015FEC4  7C DC 33 78 */	mr r28, r6
/* 80162F68 0015FEC8  7C FD 3B 78 */	mr r29, r7
/* 80162F6C 0015FECC  38 81 00 14 */	addi r4, r1, 0x14
/* 80162F70 0015FED0  38 A1 00 08 */	addi r5, r1, 8
/* 80162F74 0015FED4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80162F78 0015FED8  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 80162F7C 0015FEDC  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 80162F80 0015FEE0  EC C0 08 2A */	fadds f6, f0, f1
/* 80162F84 0015FEE4  EC 60 08 28 */	fsubs f3, f0, f1
/* 80162F88 0015FEE8  38 61 00 50 */	addi r3, r1, 0x50
/* 80162F8C 0015FEEC  EC A2 08 2A */	fadds f5, f2, f1
/* 80162F90 0015FEF0  EC 87 08 2A */	fadds f4, f7, f1
/* 80162F94 0015FEF4  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80162F98 0015FEF8  EC 42 08 28 */	fsubs f2, f2, f1
/* 80162F9C 0015FEFC  EC 07 08 28 */	fsubs f0, f7, f1
/* 80162FA0 0015FF00  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80162FA4 0015FF04  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80162FA8 0015FF08  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80162FAC 0015FF0C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80162FB0 0015FF10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80162FB4 0015FF14  48 1D 55 55 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80162FB8 0015FF18  7F C5 F3 78 */	mr r5, r30
/* 80162FBC 0015FF1C  38 60 00 00 */	li r3, 0
/* 80162FC0 0015FF20  38 80 00 01 */	li r4, 1
/* 80162FC4 0015FF24  48 22 6F 31 */	bl __shl2i
/* 80162FC8 0015FF28  7C 9E 23 78 */	mr r30, r4
/* 80162FCC 0015FF2C  7C 7F 1B 78 */	mr r31, r3
/* 80162FD0 0015FF30  7F 65 DB 78 */	mr r5, r27
/* 80162FD4 0015FF34  38 60 00 00 */	li r3, 0
/* 80162FD8 0015FF38  38 80 00 01 */	li r4, 1
/* 80162FDC 0015FF3C  48 22 6F 19 */	bl __shl2i
/* 80162FE0 0015FF40  38 00 00 03 */	li r0, 3
/* 80162FE4 0015FF44  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80162FE8 0015FF48  7F 84 E3 78 */	mr r4, r28
/* 80162FEC 0015FF4C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80162FF0 0015FF50  90 61 00 38 */	stw r3, 0x38(r1)
/* 80162FF4 0015FF54  7F A3 EB 78 */	mr r3, r29
/* 80162FF8 0015FF58  38 C1 00 38 */	addi r6, r1, 0x38
/* 80162FFC 0015FF5C  38 E0 00 00 */	li r7, 0
/* 80163000 0015FF60  90 01 00 30 */	stw r0, 0x30(r1)
/* 80163004 0015FF64  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80163008 0015FF68  93 E1 00 40 */	stw r31, 0x40(r1)
/* 8016300C 0015FF6C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80163010 0015FF70  4B EE 97 11 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80163014 0015FF74  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 80163018 0015FF78  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8016301C 0015FF7C  7C 08 03 A6 */	mtlr r0
/* 80163020 0015FF80  38 21 00 80 */	addi r1, r1, 0x80
/* 80163024 0015FF84  4E 80 00 20 */	blr 

.global HearShot__6CDroneFR13CStateManagerf
HearShot__6CDroneFR13CStateManagerf:
/* 80163028 0015FF88  94 21 F7 D0 */	stwu r1, -0x830(r1)
/* 8016302C 0015FF8C  7C 08 02 A6 */	mflr r0
/* 80163030 0015FF90  C0 22 9F B0 */	lfs f1, lbl_805ABCD0@sda21(r2)
/* 80163034 0015FF94  38 A0 00 20 */	li r5, 0x20
/* 80163038 0015FF98  90 01 08 34 */	stw r0, 0x834(r1)
/* 8016303C 0015FF9C  38 00 00 00 */	li r0, 0
/* 80163040 0015FFA0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80163044 0015FFA4  93 E1 08 2C */	stw r31, 0x82c(r1)
/* 80163048 0015FFA8  93 C1 08 28 */	stw r30, 0x828(r1)
/* 8016304C 0015FFAC  93 A1 08 24 */	stw r29, 0x824(r1)
/* 80163050 0015FFB0  7C 9D 23 78 */	mr r29, r4
/* 80163054 0015FFB4  7F A7 EB 78 */	mr r7, r29
/* 80163058 0015FFB8  38 80 00 23 */	li r4, 0x23
/* 8016305C 0015FFBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80163060 0015FFC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80163064 0015FFC4  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 80163068 0015FFC8  7D 89 03 A6 */	mtctr r12
/* 8016306C 0015FFCC  4E 80 04 21 */	bctrl 
/* 80163070 0015FFD0  3B E1 00 18 */	addi r31, r1, 0x18
/* 80163074 0015FFD4  7F FE FB 78 */	mr r30, r31
/* 80163078 0015FFD8  48 00 00 9C */	b lbl_80163114
lbl_8016307C:
/* 8016307C 0015FFDC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80163080 0015FFE0  7F A3 EB 78 */	mr r3, r29
/* 80163084 0015FFE4  38 81 00 08 */	addi r4, r1, 8
/* 80163088 0015FFE8  B0 01 00 08 */	sth r0, 8(r1)
/* 8016308C 0015FFEC  4B EE 95 19 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80163090 0015FFF0  7C 64 1B 78 */	mr r4, r3
/* 80163094 0015FFF4  38 61 00 0C */	addi r3, r1, 0xc
/* 80163098 0015FFF8  4B F4 28 01 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 8016309C 0015FFFC  80 63 00 04 */	lwz r3, 4(r3)
/* 801630A0 00160000  28 03 00 00 */	cmplwi r3, 0
/* 801630A4 00160004  41 82 00 6C */	beq lbl_80163110
/* 801630A8 00160008  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 801630AC 0016000C  2C 00 00 09 */	cmpwi r0, 9
/* 801630B0 00160010  41 82 00 60 */	beq lbl_80163110
/* 801630B4 00160014  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801630B8 00160018  38 60 00 00 */	li r3, 0
/* 801630BC 0016001C  2C 05 00 00 */	cmpwi r5, 0
/* 801630C0 00160020  40 81 00 40 */	ble lbl_80163100
/* 801630C4 00160024  2C 05 00 08 */	cmpwi r5, 8
/* 801630C8 00160028  38 85 FF F8 */	addi r4, r5, -8
/* 801630CC 0016002C  40 81 00 20 */	ble lbl_801630EC
/* 801630D0 00160030  38 04 00 07 */	addi r0, r4, 7
/* 801630D4 00160034  54 00 E8 FE */	srwi r0, r0, 3
/* 801630D8 00160038  7C 09 03 A6 */	mtctr r0
/* 801630DC 0016003C  2C 04 00 00 */	cmpwi r4, 0
/* 801630E0 00160040  40 81 00 0C */	ble lbl_801630EC
lbl_801630E4:
/* 801630E4 00160044  38 63 00 08 */	addi r3, r3, 8
/* 801630E8 00160048  42 00 FF FC */	bdnz lbl_801630E4
lbl_801630EC:
/* 801630EC 0016004C  7C 03 28 50 */	subf r0, r3, r5
/* 801630F0 00160050  7C 09 03 A6 */	mtctr r0
/* 801630F4 00160054  7C 03 28 00 */	cmpw r3, r5
/* 801630F8 00160058  40 80 00 08 */	bge lbl_80163100
lbl_801630FC:
/* 801630FC 0016005C  42 00 00 00 */	bdnz lbl_801630FC
lbl_80163100:
/* 80163100 00160060  38 00 00 00 */	li r0, 0
/* 80163104 00160064  38 60 00 01 */	li r3, 1
/* 80163108 00160068  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016310C 0016006C  48 00 00 70 */	b lbl_8016317C
lbl_80163110:
/* 80163110 00160070  3B DE 00 02 */	addi r30, r30, 2
lbl_80163114:
/* 80163114 00160074  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80163118 00160078  54 A0 08 3C */	slwi r0, r5, 1
/* 8016311C 0016007C  7C 1F 02 14 */	add r0, r31, r0
/* 80163120 00160080  7C 1E 00 40 */	cmplw r30, r0
/* 80163124 00160084  40 82 FF 58 */	bne lbl_8016307C
/* 80163128 00160088  2C 05 00 00 */	cmpwi r5, 0
/* 8016312C 0016008C  38 60 00 00 */	li r3, 0
/* 80163130 00160090  40 81 00 40 */	ble lbl_80163170
/* 80163134 00160094  2C 05 00 08 */	cmpwi r5, 8
/* 80163138 00160098  38 85 FF F8 */	addi r4, r5, -8
/* 8016313C 0016009C  40 81 00 20 */	ble lbl_8016315C
/* 80163140 001600A0  38 04 00 07 */	addi r0, r4, 7
/* 80163144 001600A4  54 00 E8 FE */	srwi r0, r0, 3
/* 80163148 001600A8  7C 09 03 A6 */	mtctr r0
/* 8016314C 001600AC  2C 04 00 00 */	cmpwi r4, 0
/* 80163150 001600B0  40 81 00 0C */	ble lbl_8016315C
lbl_80163154:
/* 80163154 001600B4  38 63 00 08 */	addi r3, r3, 8
/* 80163158 001600B8  42 00 FF FC */	bdnz lbl_80163154
lbl_8016315C:
/* 8016315C 001600BC  7C 03 28 50 */	subf r0, r3, r5
/* 80163160 001600C0  7C 09 03 A6 */	mtctr r0
/* 80163164 001600C4  7C 03 28 00 */	cmpw r3, r5
/* 80163168 001600C8  40 80 00 08 */	bge lbl_80163170
lbl_8016316C:
/* 8016316C 001600CC  42 00 00 00 */	bdnz lbl_8016316C
lbl_80163170:
/* 80163170 001600D0  38 00 00 00 */	li r0, 0
/* 80163174 001600D4  38 60 00 00 */	li r3, 0
/* 80163178 001600D8  90 01 00 14 */	stw r0, 0x14(r1)
lbl_8016317C:
/* 8016317C 001600DC  80 01 08 34 */	lwz r0, 0x834(r1)
/* 80163180 001600E0  83 E1 08 2C */	lwz r31, 0x82c(r1)
/* 80163184 001600E4  83 C1 08 28 */	lwz r30, 0x828(r1)
/* 80163188 001600E8  83 A1 08 24 */	lwz r29, 0x824(r1)
/* 8016318C 001600EC  7C 08 03 A6 */	mtlr r0
/* 80163190 001600F0  38 21 08 30 */	addi r1, r1, 0x830
/* 80163194 001600F4  4E 80 00 20 */	blr 

.global ShouldAttack__6CDroneFR13CStateManagerf
ShouldAttack__6CDroneFR13CStateManagerf:
/* 80163198 001600F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8016319C 001600FC  7C 08 02 A6 */	mflr r0
/* 801631A0 00160100  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801631A4 00160104  90 01 00 34 */	stw r0, 0x34(r1)
/* 801631A8 00160108  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801631AC 0016010C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801631B0 00160110  7C 7E 1B 78 */	mr r30, r3
/* 801631B4 00160114  C0 23 05 D0 */	lfs f1, 0x5d0(r3)
/* 801631B8 00160118  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801631BC 0016011C  4C 40 13 82 */	cror 2, 0, 2
/* 801631C0 00160120  40 82 00 74 */	bne lbl_80163234
/* 801631C4 00160124  A0 1E 06 88 */	lhz r0, 0x688(r30)
/* 801631C8 00160128  7C 83 23 78 */	mr r3, r4
/* 801631CC 0016012C  38 81 00 18 */	addi r4, r1, 0x18
/* 801631D0 00160130  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801631D4 00160134  4B EE 93 A1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801631D8 00160138  7C 64 1B 78 */	mr r4, r3
/* 801631DC 0016013C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801631E0 00160140  4B F4 43 95 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801631E4 00160144  83 E3 00 04 */	lwz r31, 4(r3)
/* 801631E8 00160148  28 1F 00 00 */	cmplwi r31, 0
/* 801631EC 0016014C  41 82 00 40 */	beq lbl_8016322C
/* 801631F0 00160150  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801631F4 00160154  7F E3 FB 78 */	mr r3, r31
/* 801631F8 00160158  38 81 00 14 */	addi r4, r1, 0x14
/* 801631FC 0016015C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80163200 00160160  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80163204 00160164  48 0D 5F 01 */	bl HasTeamAiRole__10CTeamAiMgrCF9TUniqueId
/* 80163208 00160168  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016320C 0016016C  41 82 00 20 */	beq lbl_8016322C
/* 80163210 00160170  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80163214 00160174  7F E3 FB 78 */	mr r3, r31
/* 80163218 00160178  38 81 00 0C */	addi r4, r1, 0xc
/* 8016321C 0016017C  B0 01 00 08 */	sth r0, 8(r1)
/* 80163220 00160180  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80163224 00160184  48 0D 53 A1 */	bl AddProjectileAttacker__10CTeamAiMgrF9TUniqueId
/* 80163228 00160188  48 00 00 10 */	b lbl_80163238
lbl_8016322C:
/* 8016322C 0016018C  38 60 00 01 */	li r3, 1
/* 80163230 00160190  48 00 00 08 */	b lbl_80163238
lbl_80163234:
/* 80163234 00160194  38 60 00 00 */	li r3, 0
lbl_80163238:
/* 80163238 00160198  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8016323C 0016019C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80163240 001601A0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80163244 001601A4  7C 08 03 A6 */	mtlr r0
/* 80163248 001601A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8016324C 001601AC  4E 80 00 20 */	blr 

.global KnockBack__6CDroneFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__6CDroneFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80163250 001601B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80163254 001601B4  7C 08 02 A6 */	mflr r0
/* 80163258 001601B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8016325C 001601BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80163260 001601C0  7C 7F 1B 78 */	mr r31, r3
/* 80163264 001601C4  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80163268 001601C8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8016326C 001601CC  41 82 00 24 */	beq lbl_80163290
/* 80163270 001601D0  4B F1 75 0D */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 80163274 001601D4  80 1F 04 64 */	lwz r0, 0x464(r31)
/* 80163278 001601D8  2C 00 FF FF */	cmpwi r0, -1
/* 8016327C 001601DC  41 82 00 14 */	beq lbl_80163290
/* 80163280 001601E0  C0 22 9F 80 */	lfs f1, lbl_805ABCA0@sda21(r2)
/* 80163284 001601E4  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80163288 001601E8  D0 3F 06 30 */	stfs f1, 0x630(r31)
/* 8016328C 001601EC  D0 1F 06 34 */	stfs f0, 0x634(r31)
lbl_80163290:
/* 80163290 001601F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80163294 001601F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80163298 001601F8  7C 08 03 A6 */	mtlr r0
/* 8016329C 001601FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801632A0 00160200  4E 80 00 20 */	blr 

.global sub_801632a4
sub_801632a4:
/* 801632A4 00160204  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801632A8 00160208  7C 08 02 A6 */	mflr r0
/* 801632AC 0016020C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801632B0 00160210  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 801632B4 00160214  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 801632B8 00160218  7C DF 33 78 */	mr r31, r6
/* 801632BC 0016021C  7C 7D 1B 78 */	mr r29, r3
/* 801632C0 00160220  7C 9E 23 78 */	mr r30, r4
/* 801632C4 00160224  7C BB 2B 78 */	mr r27, r5
/* 801632C8 00160228  41 82 00 80 */	beq lbl_80163348
/* 801632CC 0016022C  57 63 08 3C */	slwi r3, r27, 1
/* 801632D0 00160230  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801632D4 00160234  7F 9D 1A 14 */	add r28, r29, r3
/* 801632D8 00160238  A0 7C 07 DC */	lhz r3, 0x7dc(r28)
/* 801632DC 0016023C  7C 03 00 40 */	cmplw r3, r0
/* 801632E0 00160240  40 82 00 68 */	bne lbl_80163348
/* 801632E4 00160244  38 61 00 18 */	addi r3, r1, 0x18
/* 801632E8 00160248  4B EE 9D F5 */	bl AllocateUniqueId__13CStateManagerFv
/* 801632EC 0016024C  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 801632F0 00160250  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 801632F4 00160254  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 801632F8 00160258  38 60 01 08 */	li r3, 0x108
/* 801632FC 0016025C  B0 1C 07 DC */	sth r0, 0x7dc(r28)
/* 80163300 00160260  38 84 00 3B */	addi r4, r4, 0x3b
/* 80163304 00160264  38 A0 00 00 */	li r5, 0
/* 80163308 00160268  48 1B 25 65 */	bl __nw__FUlPCcPCc
/* 8016330C 0016026C  7C 64 1B 79 */	or. r4, r3, r3
/* 80163310 00160270  41 82 00 30 */	beq lbl_80163340
/* 80163314 00160274  80 FD 00 04 */	lwz r7, 4(r29)
/* 80163318 00160278  38 81 00 14 */	addi r4, r1, 0x14
/* 8016331C 0016027C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80163320 00160280  38 DD 00 34 */	addi r6, r29, 0x34
/* 80163324 00160284  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80163328 00160288  A0 1C 07 DC */	lhz r0, 0x7dc(r28)
/* 8016332C 0016028C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80163330 00160290  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80163334 00160294  80 FD 05 68 */	lwz r7, 0x568(r29)
/* 80163338 00160298  48 00 45 CD */	bl __ct__11CDroneLaserF9TUniqueIdRC12CTransform4fUi
/* 8016333C 0016029C  7C 64 1B 78 */	mr r4, r3
lbl_80163340:
/* 80163340 001602A0  7F C3 F3 78 */	mr r3, r30
/* 80163344 001602A4  4B EE 97 D1 */	bl AddObject__13CStateManagerFR7CEntity
lbl_80163348:
/* 80163348 001602A8  57 60 08 3C */	slwi r0, r27, 1
/* 8016334C 001602AC  7F C3 F3 78 */	mr r3, r30
/* 80163350 001602B0  7C BD 02 14 */	add r5, r29, r0
/* 80163354 001602B4  38 81 00 10 */	addi r4, r1, 0x10
/* 80163358 001602B8  A0 05 07 DC */	lhz r0, 0x7dc(r5)
/* 8016335C 001602BC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80163360 001602C0  4B EE 92 15 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80163364 001602C4  7C 64 1B 79 */	or. r4, r3, r3
/* 80163368 001602C8  41 82 00 2C */	beq lbl_80163394
/* 8016336C 001602CC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80163370 001602D0  38 C0 00 04 */	li r6, 4
/* 80163374 001602D4  41 82 00 08 */	beq lbl_8016337C
/* 80163378 001602D8  38 C0 00 01 */	li r6, 1
lbl_8016337C:
/* 8016337C 001602DC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80163380 001602E0  7F C3 F3 78 */	mr r3, r30
/* 80163384 001602E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80163388 001602E8  B0 01 00 08 */	sth r0, 8(r1)
/* 8016338C 001602EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80163390 001602F0  4B EE 0B 41 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_80163394:
/* 80163394 001602F4  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80163398 001602F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8016339C 001602FC  7C 08 03 A6 */	mtlr r0
/* 801633A0 00160300  38 21 00 40 */	addi r1, r1, 0x40
/* 801633A4 00160304  4E 80 00 20 */	blr 

.global sub_801633a8
sub_801633a8:
/* 801633A8 00160308  94 21 F6 60 */	stwu r1, -0x9a0(r1)
/* 801633AC 0016030C  7C 08 02 A6 */	mflr r0
/* 801633B0 00160310  90 01 09 A4 */	stw r0, 0x9a4(r1)
/* 801633B4 00160314  93 E1 09 9C */	stw r31, 0x99c(r1)
/* 801633B8 00160318  7C 9F 23 78 */	mr r31, r4
/* 801633BC 0016031C  93 C1 09 98 */	stw r30, 0x998(r1)
/* 801633C0 00160320  7C 7E 1B 78 */	mr r30, r3
/* 801633C4 00160324  93 A1 09 94 */	stw r29, 0x994(r1)
/* 801633C8 00160328  93 81 09 90 */	stw r28, 0x990(r1)
/* 801633CC 0016032C  88 0D A4 23 */	lbz r0, lbl_805A8FE3@sda21(r13)
/* 801633D0 00160330  7C 00 07 75 */	extsb. r0, r0
/* 801633D4 00160334  40 82 00 58 */	bne lbl_8016342C
/* 801633D8 00160338  80 AD 8D 50 */	lwz r5, lbl_805A7910@sda21(r13)
/* 801633DC 0016033C  38 60 00 00 */	li r3, 0
/* 801633E0 00160340  38 80 00 01 */	li r4, 1
/* 801633E4 00160344  48 22 6B 11 */	bl __shl2i
/* 801633E8 00160348  80 AD 8D 4C */	lwz r5, lbl_805A790C@sda21(r13)
/* 801633EC 0016034C  7C 9C 23 78 */	mr r28, r4
/* 801633F0 00160350  7C 7D 1B 78 */	mr r29, r3
/* 801633F4 00160354  38 60 00 00 */	li r3, 0
/* 801633F8 00160358  38 80 00 01 */	li r4, 1
/* 801633FC 0016035C  48 22 6A F9 */	bl __shl2i
/* 80163400 00160360  3C A0 80 47 */	lis r5, lbl_8046C890@ha
/* 80163404 00160364  38 C0 00 03 */	li r6, 3
/* 80163408 00160368  38 A5 C8 90 */	addi r5, r5, lbl_8046C890@l
/* 8016340C 0016036C  38 00 00 01 */	li r0, 1
/* 80163410 00160370  90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 80163414 00160374  90 85 00 04 */	stw r4, 4(r5)
/* 80163418 00160378  90 65 00 00 */	stw r3, 0(r5)
/* 8016341C 0016037C  93 85 00 0C */	stw r28, 0xc(r5)
/* 80163420 00160380  93 A5 00 08 */	stw r29, 8(r5)
/* 80163424 00160384  90 C5 00 10 */	stw r6, 0x10(r5)
/* 80163428 00160388  98 0D A4 23 */	stb r0, lbl_805A8FE3@sda21(r13)
lbl_8016342C:
/* 8016342C 0016038C  88 0D A4 24 */	lbz r0, lbl_805A8FE4@sda21(r13)
/* 80163430 00160390  7C 00 07 75 */	extsb. r0, r0
/* 80163434 00160394  40 82 00 58 */	bne lbl_8016348C
/* 80163438 00160398  80 AD 8D 58 */	lwz r5, lbl_805A7918@sda21(r13)
/* 8016343C 0016039C  38 60 00 00 */	li r3, 0
/* 80163440 001603A0  38 80 00 01 */	li r4, 1
/* 80163444 001603A4  48 22 6A B1 */	bl __shl2i
/* 80163448 001603A8  80 AD 8D 54 */	lwz r5, lbl_805A7914@sda21(r13)
/* 8016344C 001603AC  7C 9D 23 78 */	mr r29, r4
/* 80163450 001603B0  7C 7C 1B 78 */	mr r28, r3
/* 80163454 001603B4  38 60 00 00 */	li r3, 0
/* 80163458 001603B8  38 80 00 01 */	li r4, 1
/* 8016345C 001603BC  48 22 6A 99 */	bl __shl2i
/* 80163460 001603C0  3C A0 80 47 */	lis r5, lbl_8046C8A8@ha
/* 80163464 001603C4  38 C0 00 03 */	li r6, 3
/* 80163468 001603C8  38 A5 C8 A8 */	addi r5, r5, lbl_8046C8A8@l
/* 8016346C 001603CC  38 00 00 01 */	li r0, 1
/* 80163470 001603D0  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 80163474 001603D4  90 85 00 04 */	stw r4, 4(r5)
/* 80163478 001603D8  90 65 00 00 */	stw r3, 0(r5)
/* 8016347C 001603DC  93 A5 00 0C */	stw r29, 0xc(r5)
/* 80163480 001603E0  93 85 00 08 */	stw r28, 8(r5)
/* 80163484 001603E4  90 C5 00 10 */	stw r6, 0x10(r5)
/* 80163488 001603E8  98 0D A4 24 */	stb r0, lbl_805A8FE4@sda21(r13)
lbl_8016348C:
/* 8016348C 001603EC  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80163490 001603F0  7F C4 F3 78 */	mr r4, r30
/* 80163494 001603F4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80163498 001603F8  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016349C 001603FC  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 801634A0 00160400  FC 40 10 50 */	fneg f2, f2
/* 801634A4 00160404  FC 20 08 50 */	fneg f1, f1
/* 801634A8 00160408  FC 00 00 50 */	fneg f0, f0
/* 801634AC 0016040C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801634B0 00160410  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801634B4 00160414  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801634B8 00160418  4B FB 74 75 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801634BC 0016041C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801634C0 00160420  7F C4 F3 78 */	mr r4, r30
/* 801634C4 00160424  C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 801634C8 00160428  38 61 00 74 */	addi r3, r1, 0x74
/* 801634CC 0016042C  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 801634D0 00160430  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 801634D4 00160434  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 801634D8 00160438  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 801634DC 0016043C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 801634E0 00160440  C0 02 9F D8 */	lfs f0, lbl_805ABCF8@sda21(r2)
/* 801634E4 00160444  D0 A1 00 DC */	stfs f5, 0xdc(r1)
/* 801634E8 00160448  D0 81 00 E0 */	stfs f4, 0xe0(r1)
/* 801634EC 0016044C  D0 61 00 E4 */	stfs f3, 0xe4(r1)
/* 801634F0 00160450  D0 41 00 E8 */	stfs f2, 0xe8(r1)
/* 801634F4 00160454  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 801634F8 00160458  C0 BE 00 5C */	lfs f5, 0x5c(r30)
/* 801634FC 0016045C  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 80163500 00160460  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80163504 00160464  EC 40 01 72 */	fmuls f2, f0, f5
/* 80163508 00160468  EC 60 01 32 */	fmuls f3, f0, f4
/* 8016350C 0016046C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80163510 00160470  EC 00 00 72 */	fmuls f0, f0, f1
/* 80163514 00160474  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80163518 00160478  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8016351C 0016047C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80163520 00160480  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80163524 00160484  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80163528 00160488  4B FB 74 05 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8016352C 0016048C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80163530 00160490  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80163534 00160494  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80163538 00160498  38 81 00 50 */	addi r4, r1, 0x50
/* 8016353C 0016049C  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 80163540 001604A0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80163544 001604A4  EC 81 00 2A */	fadds f4, f1, f0
/* 80163548 001604A8  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 8016354C 001604AC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80163550 001604B0  EC 43 10 2A */	fadds f2, f3, f2
/* 80163554 001604B4  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80163558 001604B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8016355C 001604BC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80163560 001604C0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80163564 001604C4  48 1D 45 A5 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80163568 001604C8  38 00 00 00 */	li r0, 0
/* 8016356C 001604CC  3C 60 80 47 */	lis r3, lbl_8046C890@ha
/* 80163570 001604D0  90 01 01 80 */	stw r0, 0x180(r1)
/* 80163574 001604D4  38 C3 C8 90 */	addi r6, r3, lbl_8046C890@l
/* 80163578 001604D8  7F E3 FB 78 */	mr r3, r31
/* 8016357C 001604DC  38 81 01 80 */	addi r4, r1, 0x180
/* 80163580 001604E0  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 80163584 001604E4  38 E0 00 00 */	li r7, 0
/* 80163588 001604E8  4B EE 91 99 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8016358C 001604EC  80 01 01 80 */	lwz r0, 0x180(r1)
/* 80163590 001604F0  2C 00 00 00 */	cmpwi r0, 0
/* 80163594 001604F4  40 81 01 B0 */	ble lbl_80163744
/* 80163598 001604F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016359C 001604FC  3C 60 80 47 */	lis r3, lbl_8046C8A8@ha
/* 801635A0 00160500  38 E3 C8 A8 */	addi r7, r3, lbl_8046C8A8@l
/* 801635A4 00160504  C0 22 9F DC */	lfs f1, lbl_805ABCFC@sda21(r2)
/* 801635A8 00160508  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801635AC 0016050C  7F E4 FB 78 */	mr r4, r31
/* 801635B0 00160510  38 61 01 20 */	addi r3, r1, 0x120
/* 801635B4 00160514  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801635B8 00160518  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801635BC 0016051C  38 C1 00 68 */	addi r6, r1, 0x68
/* 801635C0 00160520  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801635C4 00160524  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801635C8 00160528  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801635CC 0016052C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801635D0 00160530  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801635D4 00160534  4B EE 99 C5 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801635D8 00160538  C0 E1 01 20 */	lfs f7, 0x120(r1)
/* 801635DC 0016053C  7F E4 FB 78 */	mr r4, r31
/* 801635E0 00160540  C0 C1 01 24 */	lfs f6, 0x124(r1)
/* 801635E4 00160544  38 61 00 F0 */	addi r3, r1, 0xf0
/* 801635E8 00160548  C0 A1 01 28 */	lfs f5, 0x128(r1)
/* 801635EC 0016054C  38 A1 00 14 */	addi r5, r1, 0x14
/* 801635F0 00160550  C0 81 01 2C */	lfs f4, 0x12c(r1)
/* 801635F4 00160554  38 C1 00 20 */	addi r6, r1, 0x20
/* 801635F8 00160558  C0 61 01 30 */	lfs f3, 0x130(r1)
/* 801635FC 0016055C  38 E1 00 68 */	addi r7, r1, 0x68
/* 80163600 00160560  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 80163604 00160564  39 01 01 80 */	addi r8, r1, 0x180
/* 80163608 00160568  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 8016360C 0016056C  39 21 01 50 */	addi r9, r1, 0x150
/* 80163610 00160570  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80163614 00160574  89 61 01 40 */	lbz r11, 0x140(r1)
/* 80163618 00160578  80 01 01 48 */	lwz r0, 0x148(r1)
/* 8016361C 0016057C  81 41 01 4C */	lwz r10, 0x14c(r1)
/* 80163620 00160580  D0 E1 01 50 */	stfs f7, 0x150(r1)
/* 80163624 00160584  D0 C1 01 54 */	stfs f6, 0x154(r1)
/* 80163628 00160588  D0 A1 01 58 */	stfs f5, 0x158(r1)
/* 8016362C 0016058C  D0 81 01 5C */	stfs f4, 0x15c(r1)
/* 80163630 00160590  D0 61 01 60 */	stfs f3, 0x160(r1)
/* 80163634 00160594  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 80163638 00160598  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 8016363C 0016059C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80163640 001605A0  99 61 01 70 */	stb r11, 0x170(r1)
/* 80163644 001605A4  91 41 01 7C */	stw r10, 0x17c(r1)
/* 80163648 001605A8  90 01 01 78 */	stw r0, 0x178(r1)
/* 8016364C 001605AC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80163650 001605B0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80163654 001605B4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80163658 001605B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8016365C 001605BC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80163660 001605C0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80163664 001605C4  48 00 01 55 */	bl sub_801637b8
/* 80163668 001605C8  88 01 01 10 */	lbz r0, 0x110(r1)
/* 8016366C 001605CC  C0 A1 00 F0 */	lfs f5, 0xf0(r1)
/* 80163670 001605D0  80 A1 00 F4 */	lwz r5, 0xf4(r1)
/* 80163674 001605D4  28 00 00 00 */	cmplwi r0, 0
/* 80163678 001605D8  80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 8016367C 001605DC  80 61 00 FC */	lwz r3, 0xfc(r1)
/* 80163680 001605E0  C0 81 01 00 */	lfs f4, 0x100(r1)
/* 80163684 001605E4  C0 61 01 04 */	lfs f3, 0x104(r1)
/* 80163688 001605E8  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 8016368C 001605EC  C0 21 01 0C */	lfs f1, 0x10c(r1)
/* 80163690 001605F0  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80163694 001605F4  D0 A1 01 50 */	stfs f5, 0x150(r1)
/* 80163698 001605F8  90 A1 01 54 */	stw r5, 0x154(r1)
/* 8016369C 001605FC  90 81 01 58 */	stw r4, 0x158(r1)
/* 801636A0 00160600  90 61 01 5C */	stw r3, 0x15c(r1)
/* 801636A4 00160604  D0 81 01 60 */	stfs f4, 0x160(r1)
/* 801636A8 00160608  D0 61 01 64 */	stfs f3, 0x164(r1)
/* 801636AC 0016060C  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 801636B0 00160610  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 801636B4 00160614  98 01 01 70 */	stb r0, 0x170(r1)
/* 801636B8 00160618  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 801636BC 0016061C  41 82 00 88 */	beq lbl_80163744
/* 801636C0 00160620  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 801636C4 00160624  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801636C8 00160628  7C 03 00 40 */	cmplw r3, r0
/* 801636CC 0016062C  41 82 00 78 */	beq lbl_80163744
/* 801636D0 00160630  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801636D4 00160634  7F E3 FB 78 */	mr r3, r31
/* 801636D8 00160638  38 81 00 10 */	addi r4, r1, 0x10
/* 801636DC 0016063C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801636E0 00160640  4B EE 8E 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801636E4 00160644  7C 64 1B 78 */	mr r4, r3
/* 801636E8 00160648  38 61 00 18 */	addi r3, r1, 0x18
/* 801636EC 0016064C  4B F4 31 75 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 801636F0 00160650  80 C3 00 04 */	lwz r6, 4(r3)
/* 801636F4 00160654  28 06 00 00 */	cmplwi r6, 0
/* 801636F8 00160658  41 82 00 4C */	beq lbl_80163744
/* 801636FC 0016065C  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 80163700 00160660  7F E7 FB 78 */	mr r7, r31
/* 80163704 00160664  C0 41 01 58 */	lfs f2, 0x158(r1)
/* 80163708 00160668  38 81 00 0C */	addi r4, r1, 0xc
/* 8016370C 0016066C  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80163710 00160670  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80163714 00160674  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80163718 00160678  C0 22 9F E0 */	lfs f1, lbl_805ABD00@sda21(r2)
/* 8016371C 0016067C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80163720 00160680  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80163724 00160684  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80163728 00160688  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8016372C 0016068C  80 66 01 B4 */	lwz r3, 0x1b4(r6)
/* 80163730 00160690  B0 01 00 08 */	sth r0, 8(r1)
/* 80163734 00160694  81 83 00 00 */	lwz r12, 0(r3)
/* 80163738 00160698  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8016373C 0016069C  7D 89 03 A6 */	mtctr r12
/* 80163740 001606A0  4E 80 04 21 */	bctrl 
lbl_80163744:
/* 80163744 001606A4  80 A1 01 80 */	lwz r5, 0x180(r1)
/* 80163748 001606A8  38 60 00 00 */	li r3, 0
/* 8016374C 001606AC  2C 05 00 00 */	cmpwi r5, 0
/* 80163750 001606B0  40 81 00 40 */	ble lbl_80163790
/* 80163754 001606B4  2C 05 00 08 */	cmpwi r5, 8
/* 80163758 001606B8  38 85 FF F8 */	addi r4, r5, -8
/* 8016375C 001606BC  40 81 00 20 */	ble lbl_8016377C
/* 80163760 001606C0  38 04 00 07 */	addi r0, r4, 7
/* 80163764 001606C4  54 00 E8 FE */	srwi r0, r0, 3
/* 80163768 001606C8  7C 09 03 A6 */	mtctr r0
/* 8016376C 001606CC  2C 04 00 00 */	cmpwi r4, 0
/* 80163770 001606D0  40 81 00 0C */	ble lbl_8016377C
lbl_80163774:
/* 80163774 001606D4  38 63 00 08 */	addi r3, r3, 8
/* 80163778 001606D8  42 00 FF FC */	bdnz lbl_80163774
lbl_8016377C:
/* 8016377C 001606DC  7C 03 28 50 */	subf r0, r3, r5
/* 80163780 001606E0  7C 09 03 A6 */	mtctr r0
/* 80163784 001606E4  7C 03 28 00 */	cmpw r3, r5
/* 80163788 001606E8  40 80 00 08 */	bge lbl_80163790
lbl_8016378C:
/* 8016378C 001606EC  42 00 00 00 */	bdnz lbl_8016378C
lbl_80163790:
/* 80163790 001606F0  38 00 00 00 */	li r0, 0
/* 80163794 001606F4  90 01 01 80 */	stw r0, 0x180(r1)
/* 80163798 001606F8  80 01 09 A4 */	lwz r0, 0x9a4(r1)
/* 8016379C 001606FC  83 E1 09 9C */	lwz r31, 0x99c(r1)
/* 801637A0 00160700  83 C1 09 98 */	lwz r30, 0x998(r1)
/* 801637A4 00160704  83 A1 09 94 */	lwz r29, 0x994(r1)
/* 801637A8 00160708  83 81 09 90 */	lwz r28, 0x990(r1)
/* 801637AC 0016070C  7C 08 03 A6 */	mtlr r0
/* 801637B0 00160710  38 21 09 A0 */	addi r1, r1, 0x9a0
/* 801637B4 00160714  4E 80 00 20 */	blr 

.global sub_801637b8
sub_801637b8:
/* 801637B8 00160718  94 21 FD 60 */	stwu r1, -0x2a0(r1)
/* 801637BC 0016071C  7C 08 02 A6 */	mflr r0
/* 801637C0 00160720  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 801637C4 00160724  DB E1 02 90 */	stfd f31, 0x290(r1)
/* 801637C8 00160728  F3 E1 02 98 */	psq_st f31, 664(r1), 0, qr0
/* 801637CC 0016072C  BE A1 02 64 */	stmw r21, 0x264(r1)
/* 801637D0 00160730  C0 E9 00 00 */	lfs f7, 0(r9)
/* 801637D4 00160734  7D 1B 43 78 */	mr r27, r8
/* 801637D8 00160738  C0 C9 00 04 */	lfs f6, 4(r9)
/* 801637DC 0016073C  7C 76 1B 78 */	mr r22, r3
/* 801637E0 00160740  C0 A9 00 08 */	lfs f5, 8(r9)
/* 801637E4 00160744  FF E0 38 90 */	fmr f31, f7
/* 801637E8 00160748  C0 89 00 0C */	lfs f4, 0xc(r9)
/* 801637EC 0016074C  7C 97 23 78 */	mr r23, r4
/* 801637F0 00160750  C0 69 00 10 */	lfs f3, 0x10(r9)
/* 801637F4 00160754  7C B8 2B 78 */	mr r24, r5
/* 801637F8 00160758  C0 49 00 14 */	lfs f2, 0x14(r9)
/* 801637FC 0016075C  C0 29 00 18 */	lfs f1, 0x18(r9)
/* 80163800 00160760  7C D9 33 78 */	mr r25, r6
/* 80163804 00160764  C0 09 00 1C */	lfs f0, 0x1c(r9)
/* 80163808 00160768  7C FA 3B 78 */	mr r26, r7
/* 8016380C 0016076C  88 89 00 20 */	lbz r4, 0x20(r9)
/* 80163810 00160770  3B BB 00 04 */	addi r29, r27, 4
/* 80163814 00160774  80 09 00 28 */	lwz r0, 0x28(r9)
/* 80163818 00160778  3B E1 02 2C */	addi r31, r1, 0x22c
/* 8016381C 0016077C  80 69 00 2C */	lwz r3, 0x2c(r9)
/* 80163820 00160780  3B C1 01 BC */	addi r30, r1, 0x1bc
/* 80163824 00160784  D0 E1 01 50 */	stfs f7, 0x150(r1)
/* 80163828 00160788  D0 C1 01 54 */	stfs f6, 0x154(r1)
/* 8016382C 0016078C  D0 A1 01 58 */	stfs f5, 0x158(r1)
/* 80163830 00160790  D0 81 01 5C */	stfs f4, 0x15c(r1)
/* 80163834 00160794  D0 61 01 60 */	stfs f3, 0x160(r1)
/* 80163838 00160798  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 8016383C 0016079C  D0 21 01 68 */	stfs f1, 0x168(r1)
/* 80163840 001607A0  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 80163844 001607A4  98 81 01 70 */	stb r4, 0x170(r1)
/* 80163848 001607A8  90 61 01 7C */	stw r3, 0x17c(r1)
/* 8016384C 001607AC  90 01 01 78 */	stw r0, 0x178(r1)
/* 80163850 001607B0  48 00 03 64 */	b lbl_80163BB4
lbl_80163854:
/* 80163854 001607B4  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80163858 001607B8  7E E3 BB 78 */	mr r3, r23
/* 8016385C 001607BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80163860 001607C0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80163864 001607C4  4B EE 8D 41 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80163868 001607C8  7C 64 1B 78 */	mr r4, r3
/* 8016386C 001607CC  38 61 00 18 */	addi r3, r1, 0x18
/* 80163870 001607D0  4B F4 8E 75 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80163874 001607D4  83 83 00 04 */	lwz r28, 4(r3)
/* 80163878 001607D8  28 1C 00 00 */	cmplwi r28, 0
/* 8016387C 001607DC  41 82 01 4C */	beq lbl_801639C8
/* 80163880 001607E0  7F 84 E3 78 */	mr r4, r28
/* 80163884 001607E4  38 61 00 68 */	addi r3, r1, 0x68
/* 80163888 001607E8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8016388C 001607EC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80163890 001607F0  7D 89 03 A6 */	mtctr r12
/* 80163894 001607F4  4E 80 04 21 */	bctrl 
/* 80163898 001607F8  7F 83 E3 78 */	mr r3, r28
/* 8016389C 001607FC  81 9C 00 00 */	lwz r12, 0(r28)
/* 801638A0 00160800  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801638A4 00160804  7D 89 03 A6 */	mtctr r12
/* 801638A8 00160808  4E 80 04 21 */	bctrl 
/* 801638AC 0016080C  FC 20 F8 90 */	fmr f1, f31
/* 801638B0 00160810  7C 75 1B 78 */	mr r21, r3
/* 801638B4 00160814  7F 24 CB 78 */	mr r4, r25
/* 801638B8 00160818  7F 45 D3 78 */	mr r5, r26
/* 801638BC 0016081C  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 801638C0 00160820  48 17 27 AD */	bl __ct__5CMRayFRC9CVector3fRC9CVector3ff
/* 801638C4 00160824  D3 E1 02 28 */	stfs f31, 0x228(r1)
/* 801638C8 00160828  7F E3 FB 78 */	mr r3, r31
/* 801638CC 0016082C  38 81 00 68 */	addi r4, r1, 0x68
/* 801638D0 00160830  48 1A F2 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801638D4 00160834  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 801638D8 00160838  7E A4 AB 78 */	mr r4, r21
/* 801638DC 0016083C  38 03 FD 18 */	addi r0, r3, lbl_8059FD18@l
/* 801638E0 00160840  38 61 00 98 */	addi r3, r1, 0x98
/* 801638E4 00160844  90 01 02 5C */	stw r0, 0x25c(r1)
/* 801638E8 00160848  38 A1 01 F0 */	addi r5, r1, 0x1f0
/* 801638EC 0016084C  81 95 00 00 */	lwz r12, 0(r21)
/* 801638F0 00160850  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801638F4 00160854  7D 89 03 A6 */	mtctr r12
/* 801638F8 00160858  4E 80 04 21 */	bctrl 
/* 801638FC 0016085C  88 81 00 B8 */	lbz r4, 0xb8(r1)
/* 80163900 00160860  C0 E1 00 98 */	lfs f7, 0x98(r1)
/* 80163904 00160864  C0 C1 00 9C */	lfs f6, 0x9c(r1)
/* 80163908 00160868  28 04 00 00 */	cmplwi r4, 0
/* 8016390C 0016086C  C0 A1 00 A0 */	lfs f5, 0xa0(r1)
/* 80163910 00160870  C0 81 00 A4 */	lfs f4, 0xa4(r1)
/* 80163914 00160874  C0 61 00 A8 */	lfs f3, 0xa8(r1)
/* 80163918 00160878  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 8016391C 0016087C  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80163920 00160880  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80163924 00160884  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 80163928 00160888  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 8016392C 0016088C  D0 E1 01 20 */	stfs f7, 0x120(r1)
/* 80163930 00160890  D0 C1 01 24 */	stfs f6, 0x124(r1)
/* 80163934 00160894  D0 A1 01 28 */	stfs f5, 0x128(r1)
/* 80163938 00160898  D0 81 01 2C */	stfs f4, 0x12c(r1)
/* 8016393C 0016089C  D0 61 01 30 */	stfs f3, 0x130(r1)
/* 80163940 001608A0  D0 41 01 34 */	stfs f2, 0x134(r1)
/* 80163944 001608A4  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 80163948 001608A8  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8016394C 001608AC  98 81 01 40 */	stb r4, 0x140(r1)
/* 80163950 001608B0  90 61 01 4C */	stw r3, 0x14c(r1)
/* 80163954 001608B4  90 01 01 48 */	stw r0, 0x148(r1)
/* 80163958 001608B8  41 82 02 58 */	beq lbl_80163BB0
/* 8016395C 001608BC  FC 07 F8 40 */	fcmpo cr0, f7, f31
/* 80163960 001608C0  41 80 00 10 */	blt lbl_80163970
/* 80163964 001608C4  88 01 01 70 */	lbz r0, 0x170(r1)
/* 80163968 001608C8  28 00 00 00 */	cmplwi r0, 0
/* 8016396C 001608CC  40 82 00 5C */	bne lbl_801639C8
lbl_80163970:
/* 80163970 001608D0  80 C1 01 24 */	lwz r6, 0x124(r1)
/* 80163974 001608D4  FF E0 38 90 */	fmr f31, f7
/* 80163978 001608D8  80 A1 01 28 */	lwz r5, 0x128(r1)
/* 8016397C 001608DC  80 81 01 2C */	lwz r4, 0x12c(r1)
/* 80163980 001608E0  C0 81 01 30 */	lfs f4, 0x130(r1)
/* 80163984 001608E4  C0 61 01 34 */	lfs f3, 0x134(r1)
/* 80163988 001608E8  C0 41 01 38 */	lfs f2, 0x138(r1)
/* 8016398C 001608EC  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 80163990 001608F0  88 61 01 40 */	lbz r3, 0x140(r1)
/* 80163994 001608F4  C8 01 01 48 */	lfd f0, 0x148(r1)
/* 80163998 001608F8  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8016399C 001608FC  D0 E1 01 50 */	stfs f7, 0x150(r1)
/* 801639A0 00160900  90 C1 01 54 */	stw r6, 0x154(r1)
/* 801639A4 00160904  90 A1 01 58 */	stw r5, 0x158(r1)
/* 801639A8 00160908  90 81 01 5C */	stw r4, 0x15c(r1)
/* 801639AC 0016090C  D0 81 01 60 */	stfs f4, 0x160(r1)
/* 801639B0 00160910  D0 61 01 64 */	stfs f3, 0x164(r1)
/* 801639B4 00160914  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 801639B8 00160918  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 801639BC 0016091C  98 61 01 70 */	stb r3, 0x170(r1)
/* 801639C0 00160920  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 801639C4 00160924  B0 18 00 00 */	sth r0, 0(r24)
lbl_801639C8:
/* 801639C8 00160928  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801639CC 0016092C  7E E3 BB 78 */	mr r3, r23
/* 801639D0 00160930  38 81 00 08 */	addi r4, r1, 8
/* 801639D4 00160934  B0 01 00 08 */	sth r0, 8(r1)
/* 801639D8 00160938  4B EE 8B CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801639DC 0016093C  7C 64 1B 78 */	mr r4, r3
/* 801639E0 00160940  38 61 00 10 */	addi r3, r1, 0x10
/* 801639E4 00160944  4B F4 2E 7D */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 801639E8 00160948  83 83 00 04 */	lwz r28, 4(r3)
/* 801639EC 0016094C  28 1C 00 00 */	cmplwi r28, 0
/* 801639F0 00160950  41 82 01 A8 */	beq lbl_80163B98
/* 801639F4 00160954  7F 84 E3 78 */	mr r4, r28
/* 801639F8 00160958  38 61 00 20 */	addi r3, r1, 0x20
/* 801639FC 0016095C  4B F1 2C D1 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 80163A00 00160960  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80163A04 00160964  38 9C 00 68 */	addi r4, r28, 0x68
/* 80163A08 00160968  48 16 BE AD */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80163A0C 0016096C  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 80163A10 00160970  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 80163A14 00160974  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 80163A18 00160978  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 80163A1C 0016097C  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 80163A20 00160980  FC 20 F8 90 */	fmr f1, f31
/* 80163A24 00160984  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80163A28 00160988  7F 24 CB 78 */	mr r4, r25
/* 80163A2C 0016098C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80163A30 00160990  7F 45 D3 78 */	mr r5, r26
/* 80163A34 00160994  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80163A38 00160998  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80163A3C 0016099C  38 61 01 80 */	addi r3, r1, 0x180
/* 80163A40 001609A0  D0 C1 01 08 */	stfs f6, 0x108(r1)
/* 80163A44 001609A4  D0 A1 01 0C */	stfs f5, 0x10c(r1)
/* 80163A48 001609A8  D0 81 01 10 */	stfs f4, 0x110(r1)
/* 80163A4C 001609AC  D0 61 01 14 */	stfs f3, 0x114(r1)
/* 80163A50 001609B0  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 80163A54 001609B4  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80163A58 001609B8  48 17 26 15 */	bl __ct__5CMRayFRC9CVector3fRC9CVector3ff
/* 80163A5C 001609BC  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 80163A60 001609C0  D3 E1 01 B8 */	stfs f31, 0x1b8(r1)
/* 80163A64 001609C4  38 83 66 70 */	addi r4, r3, skIdentity4f@l
/* 80163A68 001609C8  7F C3 F3 78 */	mr r3, r30
/* 80163A6C 001609CC  48 1A F1 09 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80163A70 001609D0  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 80163A74 001609D4  81 81 00 F8 */	lwz r12, 0xf8(r1)
/* 80163A78 001609D8  38 03 FD 18 */	addi r0, r3, lbl_8059FD18@l
/* 80163A7C 001609DC  38 61 00 38 */	addi r3, r1, 0x38
/* 80163A80 001609E0  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 80163A84 001609E4  38 81 00 F8 */	addi r4, r1, 0xf8
/* 80163A88 001609E8  38 A1 01 80 */	addi r5, r1, 0x180
/* 80163A8C 001609EC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80163A90 001609F0  7D 89 03 A6 */	mtctr r12
/* 80163A94 001609F4  4E 80 04 21 */	bctrl 
/* 80163A98 001609F8  88 81 00 58 */	lbz r4, 0x58(r1)
/* 80163A9C 001609FC  C0 E1 00 38 */	lfs f7, 0x38(r1)
/* 80163AA0 00160A00  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80163AA4 00160A04  28 04 00 00 */	cmplwi r4, 0
/* 80163AA8 00160A08  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 80163AAC 00160A0C  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 80163AB0 00160A10  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 80163AB4 00160A14  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80163AB8 00160A18  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80163ABC 00160A1C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80163AC0 00160A20  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80163AC4 00160A24  80 61 00 64 */	lwz r3, 0x64(r1)
/* 80163AC8 00160A28  D0 E1 00 C8 */	stfs f7, 0xc8(r1)
/* 80163ACC 00160A2C  D0 C1 00 CC */	stfs f6, 0xcc(r1)
/* 80163AD0 00160A30  D0 A1 00 D0 */	stfs f5, 0xd0(r1)
/* 80163AD4 00160A34  D0 81 00 D4 */	stfs f4, 0xd4(r1)
/* 80163AD8 00160A38  D0 61 00 D8 */	stfs f3, 0xd8(r1)
/* 80163ADC 00160A3C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80163AE0 00160A40  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 80163AE4 00160A44  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80163AE8 00160A48  98 81 00 E8 */	stb r4, 0xe8(r1)
/* 80163AEC 00160A4C  90 61 00 F4 */	stw r3, 0xf4(r1)
/* 80163AF0 00160A50  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80163AF4 00160A54  40 82 00 20 */	bne lbl_80163B14
/* 80163AF8 00160A58  3C 80 80 3F */	lis r4, lbl_803ECAD0@ha
/* 80163AFC 00160A5C  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 80163B00 00160A60  38 04 CA D0 */	addi r0, r4, lbl_803ECAD0@l
/* 80163B04 00160A64  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80163B08 00160A68  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 80163B0C 00160A6C  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80163B10 00160A70  48 00 00 A0 */	b lbl_80163BB0
lbl_80163B14:
/* 80163B14 00160A74  FC 07 F8 40 */	fcmpo cr0, f7, f31
/* 80163B18 00160A78  41 80 00 10 */	blt lbl_80163B28
/* 80163B1C 00160A7C  88 01 01 70 */	lbz r0, 0x170(r1)
/* 80163B20 00160A80  28 00 00 00 */	cmplwi r0, 0
/* 80163B24 00160A84  40 82 00 5C */	bne lbl_80163B80
lbl_80163B28:
/* 80163B28 00160A88  80 C1 00 CC */	lwz r6, 0xcc(r1)
/* 80163B2C 00160A8C  FF E0 38 90 */	fmr f31, f7
/* 80163B30 00160A90  80 A1 00 D0 */	lwz r5, 0xd0(r1)
/* 80163B34 00160A94  80 81 00 D4 */	lwz r4, 0xd4(r1)
/* 80163B38 00160A98  C0 81 00 D8 */	lfs f4, 0xd8(r1)
/* 80163B3C 00160A9C  C0 61 00 DC */	lfs f3, 0xdc(r1)
/* 80163B40 00160AA0  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 80163B44 00160AA4  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 80163B48 00160AA8  88 61 00 E8 */	lbz r3, 0xe8(r1)
/* 80163B4C 00160AAC  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 80163B50 00160AB0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80163B54 00160AB4  D0 E1 01 50 */	stfs f7, 0x150(r1)
/* 80163B58 00160AB8  90 C1 01 54 */	stw r6, 0x154(r1)
/* 80163B5C 00160ABC  90 A1 01 58 */	stw r5, 0x158(r1)
/* 80163B60 00160AC0  90 81 01 5C */	stw r4, 0x15c(r1)
/* 80163B64 00160AC4  D0 81 01 60 */	stfs f4, 0x160(r1)
/* 80163B68 00160AC8  D0 61 01 64 */	stfs f3, 0x164(r1)
/* 80163B6C 00160ACC  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 80163B70 00160AD0  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 80163B74 00160AD4  98 61 01 70 */	stb r3, 0x170(r1)
/* 80163B78 00160AD8  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 80163B7C 00160ADC  B0 18 00 00 */	sth r0, 0(r24)
lbl_80163B80:
/* 80163B80 00160AE0  3C 80 80 3F */	lis r4, lbl_803ECAD0@ha
/* 80163B84 00160AE4  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 80163B88 00160AE8  38 04 CA D0 */	addi r0, r4, lbl_803ECAD0@l
/* 80163B8C 00160AEC  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 80163B90 00160AF0  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 80163B94 00160AF4  90 01 00 F8 */	stw r0, 0xf8(r1)
lbl_80163B98:
/* 80163B98 00160AF8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80163B9C 00160AFC  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 80163BA0 00160B00  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80163BA4 00160B04  FC 20 0A 10 */	fabs f1, f1
/* 80163BA8 00160B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80163BAC 00160B0C  41 80 00 20 */	blt lbl_80163BCC
lbl_80163BB0:
/* 80163BB0 00160B10  3B BD 00 02 */	addi r29, r29, 2
lbl_80163BB4:
/* 80163BB4 00160B14  80 1B 00 00 */	lwz r0, 0(r27)
/* 80163BB8 00160B18  54 00 08 3C */	slwi r0, r0, 1
/* 80163BBC 00160B1C  7C 7B 02 14 */	add r3, r27, r0
/* 80163BC0 00160B20  38 03 00 04 */	addi r0, r3, 4
/* 80163BC4 00160B24  7C 1D 00 40 */	cmplw r29, r0
/* 80163BC8 00160B28  40 82 FC 8C */	bne lbl_80163854
lbl_80163BCC:
/* 80163BCC 00160B2C  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 80163BD0 00160B30  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80163BD4 00160B34  D0 36 00 00 */	stfs f1, 0(r22)
/* 80163BD8 00160B38  C0 21 01 58 */	lfs f1, 0x158(r1)
/* 80163BDC 00160B3C  D0 16 00 04 */	stfs f0, 4(r22)
/* 80163BE0 00160B40  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80163BE4 00160B44  D0 36 00 08 */	stfs f1, 8(r22)
/* 80163BE8 00160B48  C0 21 01 60 */	lfs f1, 0x160(r1)
/* 80163BEC 00160B4C  D0 16 00 0C */	stfs f0, 0xc(r22)
/* 80163BF0 00160B50  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80163BF4 00160B54  D0 36 00 10 */	stfs f1, 0x10(r22)
/* 80163BF8 00160B58  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 80163BFC 00160B5C  D0 16 00 14 */	stfs f0, 0x14(r22)
/* 80163C00 00160B60  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 80163C04 00160B64  D0 36 00 18 */	stfs f1, 0x18(r22)
/* 80163C08 00160B68  88 01 01 70 */	lbz r0, 0x170(r1)
/* 80163C0C 00160B6C  D0 16 00 1C */	stfs f0, 0x1c(r22)
/* 80163C10 00160B70  80 61 01 7C */	lwz r3, 0x17c(r1)
/* 80163C14 00160B74  98 16 00 20 */	stb r0, 0x20(r22)
/* 80163C18 00160B78  80 01 01 78 */	lwz r0, 0x178(r1)
/* 80163C1C 00160B7C  90 76 00 2C */	stw r3, 0x2c(r22)
/* 80163C20 00160B80  90 16 00 28 */	stw r0, 0x28(r22)
/* 80163C24 00160B84  E3 E1 02 98 */	psq_l f31, 664(r1), 0, qr0
/* 80163C28 00160B88  CB E1 02 90 */	lfd f31, 0x290(r1)
/* 80163C2C 00160B8C  BA A1 02 64 */	lmw r21, 0x264(r1)
/* 80163C30 00160B90  80 01 02 A4 */	lwz r0, 0x2a4(r1)
/* 80163C34 00160B94  7C 08 03 A6 */	mtlr r0
/* 80163C38 00160B98  38 21 02 A0 */	addi r1, r1, 0x2a0
/* 80163C3C 00160B9C  4E 80 00 20 */	blr 

.global sub_80163c40
sub_80163c40:
/* 80163C40 00160BA0  94 21 F5 70 */	stwu r1, -0xa90(r1)
/* 80163C44 00160BA4  7C 08 02 A6 */	mflr r0
/* 80163C48 00160BA8  90 01 0A 94 */	stw r0, 0xa94(r1)
/* 80163C4C 00160BAC  DB E1 0A 80 */	stfd f31, 0xa80(r1)
/* 80163C50 00160BB0  F3 E1 0A 88 */	psq_st f31, -1400(r1), 0, qr0
/* 80163C54 00160BB4  DB C1 0A 70 */	stfd f30, 0xa70(r1)
/* 80163C58 00160BB8  F3 C1 0A 78 */	psq_st f30, -1416(r1), 0, qr0
/* 80163C5C 00160BBC  BE 81 0A 40 */	stmw r20, 0xa40(r1)
/* 80163C60 00160BC0  88 0D A4 22 */	lbz r0, lbl_805A8FE2@sda21(r13)
/* 80163C64 00160BC4  FF C0 08 90 */	fmr f30, f1
/* 80163C68 00160BC8  7C 7E 1B 78 */	mr r30, r3
/* 80163C6C 00160BCC  7C 9F 23 78 */	mr r31, r4
/* 80163C70 00160BD0  7C 00 07 75 */	extsb. r0, r0
/* 80163C74 00160BD4  40 82 00 58 */	bne lbl_80163CCC
/* 80163C78 00160BD8  80 AD 8D 48 */	lwz r5, lbl_805A7908@sda21(r13)
/* 80163C7C 00160BDC  38 60 00 00 */	li r3, 0
/* 80163C80 00160BE0  38 80 00 01 */	li r4, 1
/* 80163C84 00160BE4  48 22 62 71 */	bl __shl2i
/* 80163C88 00160BE8  80 AD 8D 44 */	lwz r5, lbl_805A7904@sda21(r13)
/* 80163C8C 00160BEC  7C 95 23 78 */	mr r21, r4
/* 80163C90 00160BF0  7C 74 1B 78 */	mr r20, r3
/* 80163C94 00160BF4  38 60 00 00 */	li r3, 0
/* 80163C98 00160BF8  38 80 00 01 */	li r4, 1
/* 80163C9C 00160BFC  48 22 62 59 */	bl __shl2i
/* 80163CA0 00160C00  3C A0 80 47 */	lis r5, lbl_8046C878@ha
/* 80163CA4 00160C04  38 C0 00 03 */	li r6, 3
/* 80163CA8 00160C08  38 A5 C8 78 */	addi r5, r5, lbl_8046C878@l
/* 80163CAC 00160C0C  38 00 00 01 */	li r0, 1
/* 80163CB0 00160C10  90 C1 01 58 */	stw r6, 0x158(r1)
/* 80163CB4 00160C14  90 85 00 04 */	stw r4, 4(r5)
/* 80163CB8 00160C18  90 65 00 00 */	stw r3, 0(r5)
/* 80163CBC 00160C1C  92 A5 00 0C */	stw r21, 0xc(r5)
/* 80163CC0 00160C20  92 85 00 08 */	stw r20, 8(r5)
/* 80163CC4 00160C24  90 C5 00 10 */	stw r6, 0x10(r5)
/* 80163CC8 00160C28  98 0D A4 22 */	stb r0, lbl_805A8FE2@sda21(r13)
lbl_80163CCC:
/* 80163CCC 00160C2C  80 8D 8C F4 */	lwz r4, lbl_805A78B4@sda21(r13)
/* 80163CD0 00160C30  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80163CD4 00160C34  4B EA 0F E5 */	bl string_l__4rstlFPCc
/* 80163CD8 00160C38  7F C4 F3 78 */	mr r4, r30
/* 80163CDC 00160C3C  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80163CE0 00160C40  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 80163CE4 00160C44  4B F1 4C 95 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80163CE8 00160C48  38 61 02 08 */	addi r3, r1, 0x208
/* 80163CEC 00160C4C  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80163CF0 00160C50  48 1A EE 85 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80163CF4 00160C54  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80163CF8 00160C58  48 1D 9D E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80163CFC 00160C5C  3C 60 80 5A */	lis r3, lbl_805A6754@ha
/* 80163D00 00160C60  C3 E2 9F 7C */	lfs f31, lbl_805ABC9C@sda21(r2)
/* 80163D04 00160C64  3B 9E 08 1C */	addi r28, r30, 0x81c
/* 80163D08 00160C68  3A FE 08 28 */	addi r23, r30, 0x828
/* 80163D0C 00160C6C  3B 7E 08 00 */	addi r27, r30, 0x800
/* 80163D10 00160C70  3B 5E 07 E4 */	addi r26, r30, 0x7e4
/* 80163D14 00160C74  3B 3E 07 DC */	addi r25, r30, 0x7dc
/* 80163D18 00160C78  3B A3 67 54 */	addi r29, r3, lbl_805A6754@l
/* 80163D1C 00160C7C  3A C1 01 DC */	addi r22, r1, 0x1dc
/* 80163D20 00160C80  3A A1 01 E8 */	addi r21, r1, 0x1e8
/* 80163D24 00160C84  3B 00 00 00 */	li r24, 0
/* 80163D28 00160C88  48 00 05 0C */	b lbl_80164234
lbl_80163D2C:
/* 80163D2C 00160C8C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80163D30 00160C90  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80163D34 00160C94  40 80 04 E8 */	bge lbl_8016421C
/* 80163D38 00160C98  88 17 00 00 */	lbz r0, 0(r23)
/* 80163D3C 00160C9C  28 00 00 00 */	cmplwi r0, 0
/* 80163D40 00160CA0  41 82 04 DC */	beq lbl_8016421C
/* 80163D44 00160CA4  EC 00 F0 2A */	fadds f0, f0, f30
/* 80163D48 00160CA8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80163D4C 00160CAC  38 81 00 BC */	addi r4, r1, 0xbc
/* 80163D50 00160CB0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80163D54 00160CB4  C1 1C 00 00 */	lfs f8, 0(r28)
/* 80163D58 00160CB8  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80163D5C 00160CBC  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80163D60 00160CC0  EC FF 40 28 */	fsubs f7, f31, f8
/* 80163D64 00160CC4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80163D68 00160CC8  EC A2 02 32 */	fmuls f5, f2, f8
/* 80163D6C 00160CCC  C0 DA 00 04 */	lfs f6, 4(r26)
/* 80163D70 00160CD0  EC 61 02 32 */	fmuls f3, f1, f8
/* 80163D74 00160CD4  C0 9A 00 08 */	lfs f4, 8(r26)
/* 80163D78 00160CD8  EC 20 02 32 */	fmuls f1, f0, f8
/* 80163D7C 00160CDC  C0 5A 00 00 */	lfs f2, 0(r26)
/* 80163D80 00160CE0  EC A6 29 FA */	fmadds f5, f6, f7, f5
/* 80163D84 00160CE4  C0 01 02 24 */	lfs f0, 0x224(r1)
/* 80163D88 00160CE8  EC 84 19 FA */	fmadds f4, f4, f7, f3
/* 80163D8C 00160CEC  C0 61 02 34 */	lfs f3, 0x234(r1)
/* 80163D90 00160CF0  EC A5 00 28 */	fsubs f5, f5, f0
/* 80163D94 00160CF4  C0 01 02 14 */	lfs f0, 0x214(r1)
/* 80163D98 00160CF8  EC 22 09 FA */	fmadds f1, f2, f7, f1
/* 80163D9C 00160CFC  EC 44 18 28 */	fsubs f2, f4, f3
/* 80163DA0 00160D00  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 80163DA4 00160D04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80163DA8 00160D08  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80163DAC 00160D0C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80163DB0 00160D10  48 1B 0A A1 */	bl AsNormalized__9CVector3fCFv
/* 80163DB4 00160D14  3C 60 80 5A */	lis r3, lbl_805A6754@ha
/* 80163DB8 00160D18  C1 21 00 C8 */	lfs f9, 0xc8(r1)
/* 80163DBC 00160D1C  38 A3 67 54 */	addi r5, r3, lbl_805A6754@l
/* 80163DC0 00160D20  C1 01 00 CC */	lfs f8, 0xcc(r1)
/* 80163DC4 00160D24  C0 E1 00 D0 */	lfs f7, 0xd0(r1)
/* 80163DC8 00160D28  38 61 01 60 */	addi r3, r1, 0x160
/* 80163DCC 00160D2C  C0 02 9F E4 */	lfs f0, lbl_805ABD04@sda21(r2)
/* 80163DD0 00160D30  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80163DD4 00160D34  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80163DD8 00160D38  C0 C5 00 00 */	lfs f6, 0(r5)
/* 80163DDC 00160D3C  ED 60 02 32 */	fmuls f11, f0, f8
/* 80163DE0 00160D40  C0 BD 00 04 */	lfs f5, 4(r29)
/* 80163DE4 00160D44  ED 40 01 F2 */	fmuls f10, f0, f7
/* 80163DE8 00160D48  C0 9D 00 08 */	lfs f4, 8(r29)
/* 80163DEC 00160D4C  EC 00 02 72 */	fmuls f0, f0, f9
/* 80163DF0 00160D50  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 80163DF4 00160D54  C0 5D 00 10 */	lfs f2, 0x10(r29)
/* 80163DF8 00160D58  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 80163DFC 00160D5C  D1 21 00 E4 */	stfs f9, 0xe4(r1)
/* 80163E00 00160D60  D1 01 00 E8 */	stfs f8, 0xe8(r1)
/* 80163E04 00160D64  D0 E1 00 EC */	stfs f7, 0xec(r1)
/* 80163E08 00160D68  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80163E0C 00160D6C  D0 C1 01 60 */	stfs f6, 0x160(r1)
/* 80163E10 00160D70  D0 A1 01 64 */	stfs f5, 0x164(r1)
/* 80163E14 00160D74  D0 81 01 68 */	stfs f4, 0x168(r1)
/* 80163E18 00160D78  D0 61 01 6C */	stfs f3, 0x16c(r1)
/* 80163E1C 00160D7C  D0 41 01 70 */	stfs f2, 0x170(r1)
/* 80163E20 00160D80  D0 21 01 74 */	stfs f1, 0x174(r1)
/* 80163E24 00160D84  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 80163E28 00160D88  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80163E2C 00160D8C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80163E30 00160D90  EC 45 50 2A */	fadds f2, f5, f10
/* 80163E34 00160D94  EC 64 58 2A */	fadds f3, f4, f11
/* 80163E38 00160D98  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80163E3C 00160D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80163E40 00160DA0  D1 61 00 9C */	stfs f11, 0x9c(r1)
/* 80163E44 00160DA4  D1 41 00 A0 */	stfs f10, 0xa0(r1)
/* 80163E48 00160DA8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80163E4C 00160DAC  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80163E50 00160DB0  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 80163E54 00160DB4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80163E58 00160DB8  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 80163E5C 00160DBC  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80163E60 00160DC0  48 1D 3C A9 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80163E64 00160DC4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80163E68 00160DC8  38 61 01 60 */	addi r3, r1, 0x160
/* 80163E6C 00160DCC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80163E70 00160DD0  38 81 00 8C */	addi r4, r1, 0x8c
/* 80163E74 00160DD4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80163E78 00160DD8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80163E7C 00160DDC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80163E80 00160DE0  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80163E84 00160DE4  48 1D 3C 85 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80163E88 00160DE8  38 00 00 00 */	li r0, 0
/* 80163E8C 00160DEC  3C 60 80 47 */	lis r3, lbl_8046C878@ha
/* 80163E90 00160DF0  90 01 02 38 */	stw r0, 0x238(r1)
/* 80163E94 00160DF4  38 C3 C8 78 */	addi r6, r3, lbl_8046C878@l
/* 80163E98 00160DF8  7F E3 FB 78 */	mr r3, r31
/* 80163E9C 00160DFC  38 81 02 38 */	addi r4, r1, 0x238
/* 80163EA0 00160E00  38 A1 01 60 */	addi r5, r1, 0x160
/* 80163EA4 00160E04  38 E0 00 00 */	li r7, 0
/* 80163EA8 00160E08  4B EE 88 79 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80163EAC 00160E0C  C0 82 9F E8 */	lfs f4, lbl_805ABD08@sda21(r2)
/* 80163EB0 00160E10  3C 60 80 47 */	lis r3, lbl_8046C878@ha
/* 80163EB4 00160E14  C0 41 00 E8 */	lfs f2, 0xe8(r1)
/* 80163EB8 00160E18  39 03 C8 78 */	addi r8, r3, lbl_8046C878@l
/* 80163EBC 00160E1C  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 80163EC0 00160E20  7F E4 FB 78 */	mr r4, r31
/* 80163EC4 00160E24  EC E4 00 B2 */	fmuls f7, f4, f2
/* 80163EC8 00160E28  C0 61 02 24 */	lfs f3, 0x224(r1)
/* 80163ECC 00160E2C  EC C4 00 72 */	fmuls f6, f4, f1
/* 80163ED0 00160E30  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80163ED4 00160E34  C0 41 02 34 */	lfs f2, 0x234(r1)
/* 80163ED8 00160E38  38 61 01 78 */	addi r3, r1, 0x178
/* 80163EDC 00160E3C  EC A4 00 32 */	fmuls f5, f4, f0
/* 80163EE0 00160E40  C0 81 02 14 */	lfs f4, 0x214(r1)
/* 80163EE4 00160E44  ED 03 38 2A */	fadds f8, f3, f7
/* 80163EE8 00160E48  D0 E1 00 6C */	stfs f7, 0x6c(r1)
/* 80163EEC 00160E4C  EC E2 30 2A */	fadds f7, f2, f6
/* 80163EF0 00160E50  C0 22 9F EC */	lfs f1, lbl_805ABD0C@sda21(r2)
/* 80163EF4 00160E54  EC 04 28 2A */	fadds f0, f4, f5
/* 80163EF8 00160E58  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80163EFC 00160E5C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80163F00 00160E60  38 C1 00 80 */	addi r6, r1, 0x80
/* 80163F04 00160E64  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 80163F08 00160E68  38 E1 00 E4 */	addi r7, r1, 0xe4
/* 80163F0C 00160E6C  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 80163F10 00160E70  39 21 02 38 */	addi r9, r1, 0x238
/* 80163F14 00160E74  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80163F18 00160E78  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80163F1C 00160E7C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80163F20 00160E80  D1 01 00 84 */	stfs f8, 0x84(r1)
/* 80163F24 00160E84  D0 E1 00 88 */	stfs f7, 0x88(r1)
/* 80163F28 00160E88  4B EE 90 9D */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 80163F2C 00160E8C  88 81 01 98 */	lbz r4, 0x198(r1)
/* 80163F30 00160E90  C0 E1 01 78 */	lfs f7, 0x178(r1)
/* 80163F34 00160E94  C0 C1 01 7C */	lfs f6, 0x17c(r1)
/* 80163F38 00160E98  28 04 00 00 */	cmplwi r4, 0
/* 80163F3C 00160E9C  C0 A1 01 80 */	lfs f5, 0x180(r1)
/* 80163F40 00160EA0  C0 81 01 84 */	lfs f4, 0x184(r1)
/* 80163F44 00160EA4  C0 61 01 88 */	lfs f3, 0x188(r1)
/* 80163F48 00160EA8  C0 41 01 8C */	lfs f2, 0x18c(r1)
/* 80163F4C 00160EAC  C0 21 01 90 */	lfs f1, 0x190(r1)
/* 80163F50 00160EB0  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 80163F54 00160EB4  80 01 01 A0 */	lwz r0, 0x1a0(r1)
/* 80163F58 00160EB8  80 61 01 A4 */	lwz r3, 0x1a4(r1)
/* 80163F5C 00160EBC  D0 E1 01 D8 */	stfs f7, 0x1d8(r1)
/* 80163F60 00160EC0  D0 C1 01 DC */	stfs f6, 0x1dc(r1)
/* 80163F64 00160EC4  D0 A1 01 E0 */	stfs f5, 0x1e0(r1)
/* 80163F68 00160EC8  D0 81 01 E4 */	stfs f4, 0x1e4(r1)
/* 80163F6C 00160ECC  D0 61 01 E8 */	stfs f3, 0x1e8(r1)
/* 80163F70 00160ED0  D0 41 01 EC */	stfs f2, 0x1ec(r1)
/* 80163F74 00160ED4  D0 21 01 F0 */	stfs f1, 0x1f0(r1)
/* 80163F78 00160ED8  D0 01 01 F4 */	stfs f0, 0x1f4(r1)
/* 80163F7C 00160EDC  98 81 01 F8 */	stb r4, 0x1f8(r1)
/* 80163F80 00160EE0  90 61 02 04 */	stw r3, 0x204(r1)
/* 80163F84 00160EE4  90 01 02 00 */	stw r0, 0x200(r1)
/* 80163F88 00160EE8  41 82 02 3C */	beq lbl_801641C4
/* 80163F8C 00160EEC  A0 79 00 00 */	lhz r3, 0(r25)
/* 80163F90 00160EF0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80163F94 00160EF4  7C 03 00 40 */	cmplw r3, r0
/* 80163F98 00160EF8  41 82 00 68 */	beq lbl_80164000
/* 80163F9C 00160EFC  A0 19 00 00 */	lhz r0, 0(r25)
/* 80163FA0 00160F00  7F E3 FB 78 */	mr r3, r31
/* 80163FA4 00160F04  38 81 00 30 */	addi r4, r1, 0x30
/* 80163FA8 00160F08  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80163FAC 00160F0C  4B EE 85 C9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80163FB0 00160F10  7C 74 1B 79 */	or. r20, r3, r3
/* 80163FB4 00160F14  41 82 00 4C */	beq lbl_80164000
/* 80163FB8 00160F18  38 74 00 34 */	addi r3, r20, 0x34
/* 80163FBC 00160F1C  38 81 02 08 */	addi r4, r1, 0x208
/* 80163FC0 00160F20  48 1A EB 81 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80163FC4 00160F24  88 14 00 E4 */	lbz r0, 0xe4(r20)
/* 80163FC8 00160F28  38 E0 00 01 */	li r7, 1
/* 80163FCC 00160F2C  50 E0 26 F6 */	rlwimi r0, r7, 4, 0x1b, 0x1b
/* 80163FD0 00160F30  7E 83 A3 78 */	mr r3, r20
/* 80163FD4 00160F34  98 14 00 E4 */	stb r0, 0xe4(r20)
/* 80163FD8 00160F38  7F E4 FB 78 */	mr r4, r31
/* 80163FDC 00160F3C  7E C5 B3 78 */	mr r5, r22
/* 80163FE0 00160F40  7E A6 AB 78 */	mr r6, r21
/* 80163FE4 00160F44  88 14 00 E4 */	lbz r0, 0xe4(r20)
/* 80163FE8 00160F48  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 80163FEC 00160F4C  98 14 00 E4 */	stb r0, 0xe4(r20)
/* 80163FF0 00160F50  88 14 00 E4 */	lbz r0, 0xe4(r20)
/* 80163FF4 00160F54  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 80163FF8 00160F58  98 14 00 E4 */	stb r0, 0xe4(r20)
/* 80163FFC 00160F5C  48 00 37 59 */	bl sub_80167754
lbl_80164000:
/* 80164000 00160F60  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 80164004 00160F64  7F E3 FB 78 */	mr r3, r31
/* 80164008 00160F68  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016400C 00160F6C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80164010 00160F70  4B EE 85 65 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80164014 00160F74  7C 64 1B 78 */	mr r4, r3
/* 80164018 00160F78  38 61 00 44 */	addi r3, r1, 0x44
/* 8016401C 00160F7C  4B F4 83 79 */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 80164020 00160F80  82 83 00 04 */	lwz r20, 4(r3)
/* 80164024 00160F84  28 14 00 00 */	cmplwi r20, 0
/* 80164028 00160F88  41 82 01 10 */	beq lbl_80164138
/* 8016402C 00160F8C  C0 3E 04 20 */	lfs f1, 0x420(r30)
/* 80164030 00160F90  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164034 00160F94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164038 00160F98  4C 40 13 82 */	cror 2, 0, 2
/* 8016403C 00160F9C  40 82 00 FC */	bne lbl_80164138
/* 80164040 00160FA0  80 AD 8C F0 */	lwz r5, lbl_805A78B0@sda21(r13)
/* 80164044 00160FA4  38 60 00 00 */	li r3, 0
/* 80164048 00160FA8  38 80 00 01 */	li r4, 1
/* 8016404C 00160FAC  48 22 5E A9 */	bl __shl2i
/* 80164050 00160FB0  38 A0 00 00 */	li r5, 0
/* 80164054 00160FB4  38 00 00 03 */	li r0, 3
/* 80164058 00160FB8  90 81 01 14 */	stw r4, 0x114(r1)
/* 8016405C 00160FBC  7F C4 F3 78 */	mr r4, r30
/* 80164060 00160FC0  90 61 01 10 */	stw r3, 0x110(r1)
/* 80164064 00160FC4  38 61 01 28 */	addi r3, r1, 0x128
/* 80164068 00160FC8  90 A1 01 1C */	stw r5, 0x11c(r1)
/* 8016406C 00160FCC  90 A1 01 18 */	stw r5, 0x118(r1)
/* 80164070 00160FD0  90 01 01 20 */	stw r0, 0x120(r1)
/* 80164074 00160FD4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164078 00160FD8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8016407C 00160FDC  A0 B4 00 08 */	lhz r5, 8(r20)
/* 80164080 00160FE0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80164084 00160FE4  B0 A1 00 20 */	sth r5, 0x20(r1)
/* 80164088 00160FE8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8016408C 00160FEC  B0 A1 00 1C */	sth r5, 0x1c(r1)
/* 80164090 00160FF0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80164094 00160FF4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80164098 00160FF8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8016409C 00160FFC  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801640A0 00161000  7D 89 03 A6 */	mtctr r12
/* 801640A4 00161004  4E 80 04 21 */	bctrl 
/* 801640A8 00161008  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801640AC 0016100C  7F E3 FB 78 */	mr r3, r31
/* 801640B0 00161010  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801640B4 00161014  38 A1 00 20 */	addi r5, r1, 0x20
/* 801640B8 00161018  38 81 00 28 */	addi r4, r1, 0x28
/* 801640BC 0016101C  38 C1 00 18 */	addi r6, r1, 0x18
/* 801640C0 00161020  38 E1 01 28 */	addi r7, r1, 0x128
/* 801640C4 00161024  39 01 01 10 */	addi r8, r1, 0x110
/* 801640C8 00161028  4B EE 5F D9 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801640CC 0016102C  C0 1E 04 24 */	lfs f0, 0x424(r30)
/* 801640D0 00161030  38 81 00 10 */	addi r4, r1, 0x10
/* 801640D4 00161034  C0 22 9F F0 */	lfs f1, lbl_805ABD10@sda21(r2)
/* 801640D8 00161038  D0 1E 04 20 */	stfs f0, 0x420(r30)
/* 801640DC 0016103C  C0 42 9F 7C */	lfs f2, lbl_805ABC9C@sda21(r2)
/* 801640E0 00161040  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801640E4 00161044  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801640E8 00161048  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801640EC 0016104C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801640F0 00161050  80 63 00 00 */	lwz r3, 0(r3)
/* 801640F4 00161054  38 63 01 88 */	addi r3, r3, 0x188
/* 801640F8 00161058  48 05 CA 41 */	bl AddSource__19CStaticInterferenceF9TUniqueId
/* 801640FC 0016105C  C0 22 9F 80 */	lfs f1, lbl_805ABCA0@sda21(r2)
/* 80164100 00161060  7E C5 B3 78 */	mr r5, r22
/* 80164104 00161064  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164108 00161068  38 61 00 38 */	addi r3, r1, 0x38
/* 8016410C 0016106C  D0 3E 06 28 */	stfs f1, 0x628(r30)
/* 80164110 00161070  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80164114 00161074  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 80164118 00161078  38 E0 00 01 */	li r7, 1
/* 8016411C 0016107C  81 5E 00 04 */	lwz r10, 4(r30)
/* 80164120 00161080  39 00 00 00 */	li r8, 0
/* 80164124 00161084  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80164128 00161088  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8016412C 0016108C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80164130 00161090  A0 9E 07 CC */	lhz r4, 0x7cc(r30)
/* 80164134 00161094  48 18 61 7D */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_80164138:
/* 80164138 00161098  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 8016413C 0016109C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164140 001610A0  7C 03 00 40 */	cmplw r3, r0
/* 80164144 001610A4  41 82 00 80 */	beq lbl_801641C4
/* 80164148 001610A8  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 8016414C 001610AC  7F E3 FB 78 */	mr r3, r31
/* 80164150 001610B0  38 81 00 08 */	addi r4, r1, 8
/* 80164154 001610B4  B0 01 00 08 */	sth r0, 8(r1)
/* 80164158 001610B8  4B EE 84 1D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016415C 001610BC  7C 64 1B 78 */	mr r4, r3
/* 80164160 001610C0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80164164 001610C4  4B F4 88 F9 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 80164168 001610C8  80 03 00 04 */	lwz r0, 4(r3)
/* 8016416C 001610CC  28 00 00 00 */	cmplwi r0, 0
/* 80164170 001610D0  41 82 00 54 */	beq lbl_801641C4
/* 80164174 001610D4  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164178 001610D8  38 60 00 01 */	li r3, 1
/* 8016417C 001610DC  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80164180 001610E0  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80164184 001610E4  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80164188 001610E8  98 1E 08 34 */	stb r0, 0x834(r30)
/* 8016418C 001610EC  38 61 00 4C */	addi r3, r1, 0x4c
/* 80164190 001610F0  38 84 00 42 */	addi r4, r4, 0x42
/* 80164194 001610F4  4B EA 0B 25 */	bl string_l__4rstlFPCc
/* 80164198 001610F8  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8016419C 001610FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 801641A0 00161100  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801641A4 00161104  4B EC 82 C9 */	bl "GetAnimTimeRemaining__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801641A8 00161108  7F C4 F3 78 */	mr r4, r30
/* 801641AC 0016110C  7F E5 FB 78 */	mr r5, r31
/* 801641B0 00161110  38 61 00 F0 */	addi r3, r1, 0xf0
/* 801641B4 00161114  38 C0 00 01 */	li r6, 1
/* 801641B8 00161118  4B EF 10 E5 */	bl UpdateAnimation__6CActorFfR13CStateManagerb
/* 801641BC 0016111C  38 61 00 4C */	addi r3, r1, 0x4c
/* 801641C0 00161120  48 1D 99 21 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801641C4:
/* 801641C4 00161124  80 A1 02 38 */	lwz r5, 0x238(r1)
/* 801641C8 00161128  38 60 00 00 */	li r3, 0
/* 801641CC 0016112C  2C 05 00 00 */	cmpwi r5, 0
/* 801641D0 00161130  40 81 00 44 */	ble lbl_80164214
/* 801641D4 00161134  2C 05 00 08 */	cmpwi r5, 8
/* 801641D8 00161138  38 85 FF F8 */	addi r4, r5, -8
/* 801641DC 0016113C  40 81 00 20 */	ble lbl_801641FC
/* 801641E0 00161140  38 04 00 07 */	addi r0, r4, 7
/* 801641E4 00161144  54 00 E8 FE */	srwi r0, r0, 3
/* 801641E8 00161148  7C 09 03 A6 */	mtctr r0
/* 801641EC 0016114C  2C 04 00 00 */	cmpwi r4, 0
/* 801641F0 00161150  40 81 00 0C */	ble lbl_801641FC
lbl_801641F4:
/* 801641F4 00161154  38 63 00 08 */	addi r3, r3, 8
/* 801641F8 00161158  42 00 FF FC */	bdnz lbl_801641F4
lbl_801641FC:
/* 801641FC 0016115C  7C 03 28 50 */	subf r0, r3, r5
/* 80164200 00161160  7C 09 03 A6 */	mtctr r0
/* 80164204 00161164  7C 03 28 00 */	cmpw r3, r5
/* 80164208 00161168  40 80 00 0C */	bge lbl_80164214
lbl_8016420C:
/* 8016420C 0016116C  38 63 00 01 */	addi r3, r3, 1
/* 80164210 00161170  42 00 FF FC */	bdnz lbl_8016420C
lbl_80164214:
/* 80164214 00161174  38 00 00 00 */	li r0, 0
/* 80164218 00161178  90 01 02 38 */	stw r0, 0x238(r1)
lbl_8016421C:
/* 8016421C 0016117C  3B 9C 00 04 */	addi r28, r28, 4
/* 80164220 00161180  3A F7 00 01 */	addi r23, r23, 1
/* 80164224 00161184  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80164228 00161188  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8016422C 0016118C  3B 39 00 02 */	addi r25, r25, 2
/* 80164230 00161190  3B 18 00 01 */	addi r24, r24, 1
lbl_80164234:
/* 80164234 00161194  80 1E 08 18 */	lwz r0, 0x818(r30)
/* 80164238 00161198  7C 18 00 00 */	cmpw r24, r0
/* 8016423C 0016119C  41 80 FA F0 */	blt lbl_80163D2C
/* 80164240 001611A0  E3 E1 0A 88 */	psq_l f31, -1400(r1), 0, qr0
/* 80164244 001611A4  CB E1 0A 80 */	lfd f31, 0xa80(r1)
/* 80164248 001611A8  E3 C1 0A 78 */	psq_l f30, -1416(r1), 0, qr0
/* 8016424C 001611AC  CB C1 0A 70 */	lfd f30, 0xa70(r1)
/* 80164250 001611B0  BA 81 0A 40 */	lmw r20, 0xa40(r1)
/* 80164254 001611B4  80 01 0A 94 */	lwz r0, 0xa94(r1)
/* 80164258 001611B8  7C 08 03 A6 */	mtlr r0
/* 8016425C 001611BC  38 21 0A 90 */	addi r1, r1, 0xa90
/* 80164260 001611C0  4E 80 00 20 */	blr 

.global sub_80164264
sub_80164264:
/* 80164264 001611C4  94 21 F6 70 */	stwu r1, -0x990(r1)
/* 80164268 001611C8  7C 08 02 A6 */	mflr r0
/* 8016426C 001611CC  90 01 09 94 */	stw r0, 0x994(r1)
/* 80164270 001611D0  DB E1 09 80 */	stfd f31, 0x980(r1)
/* 80164274 001611D4  F3 E1 09 88 */	psq_st f31, -1656(r1), 0, qr0
/* 80164278 001611D8  93 E1 09 7C */	stw r31, 0x97c(r1)
/* 8016427C 001611DC  93 C1 09 78 */	stw r30, 0x978(r1)
/* 80164280 001611E0  93 A1 09 74 */	stw r29, 0x974(r1)
/* 80164284 001611E4  93 81 09 70 */	stw r28, 0x970(r1)
/* 80164288 001611E8  7C 7E 1B 78 */	mr r30, r3
/* 8016428C 001611EC  C0 62 9F F4 */	lfs f3, lbl_805ABD14@sda21(r2)
/* 80164290 001611F0  C0 43 05 D4 */	lfs f2, 0x5d4(r3)
/* 80164294 001611F4  7C 9F 23 78 */	mr r31, r4
/* 80164298 001611F8  C0 02 9F F8 */	lfs f0, lbl_805ABD18@sda21(r2)
/* 8016429C 001611FC  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 801642A0 00161200  D0 23 05 D4 */	stfs f1, 0x5d4(r3)
/* 801642A4 00161204  C0 23 05 D4 */	lfs f1, 0x5d4(r3)
/* 801642A8 00161208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801642AC 0016120C  40 81 00 0C */	ble lbl_801642B8
/* 801642B0 00161210  EC 01 00 28 */	fsubs f0, f1, f0
/* 801642B4 00161214  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
lbl_801642B8:
/* 801642B8 00161218  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 801642BC 0016121C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801642C0 00161220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801642C4 00161224  40 80 00 08 */	bge lbl_801642CC
/* 801642C8 00161228  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
lbl_801642CC:
/* 801642CC 0016122C  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 801642D0 00161230  C0 02 9F F8 */	lfs f0, lbl_805ABD18@sda21(r2)
/* 801642D4 00161234  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801642D8 00161238  40 81 00 0C */	ble lbl_801642E4
/* 801642DC 0016123C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801642E0 00161240  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_801642E4:
/* 801642E4 00161244  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 801642E8 00161248  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801642EC 0016124C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801642F0 00161250  40 80 00 08 */	bge lbl_801642F8
/* 801642F4 00161254  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_801642F8:
/* 801642F8 00161258  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 801642FC 0016125C  48 1B 0A F5 */	bl FastSinR__5CMathFf
/* 80164300 00161260  C0 42 9F 7C */	lfs f2, lbl_805ABC9C@sda21(r2)
/* 80164304 00161264  38 81 00 14 */	addi r4, r1, 0x14
/* 80164308 00161268  C0 02 9F 80 */	lfs f0, lbl_805ABCA0@sda21(r2)
/* 8016430C 0016126C  38 6D 8D 34 */	addi r3, r13, lbl_805A78F4@sda21
/* 80164310 00161270  EC 22 08 2A */	fadds f1, f2, f1
/* 80164314 00161274  38 AD 8D 38 */	addi r5, r13, lbl_805A78F8@sda21
/* 80164318 00161278  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016431C 0016127C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80164320 00161280  4B EA 7F 95 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80164324 00161284  C0 23 00 00 */	lfs f1, 0(r3)
/* 80164328 00161288  3C 00 7F 80 */	lis r0, 0x7f80
/* 8016432C 0016128C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80164330 00161290  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80164334 00161294  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80164338 00161298  7C 03 00 00 */	cmpw r3, r0
/* 8016433C 0016129C  41 82 00 34 */	beq lbl_80164370
/* 80164340 001612A0  40 80 00 28 */	bge lbl_80164368
/* 80164344 001612A4  2C 03 00 00 */	cmpwi r3, 0
/* 80164348 001612A8  41 82 00 08 */	beq lbl_80164350
/* 8016434C 001612AC  48 00 00 1C */	b lbl_80164368
lbl_80164350:
/* 80164350 001612B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80164354 001612B4  41 82 00 0C */	beq lbl_80164360
/* 80164358 001612B8  38 00 00 02 */	li r0, 2
/* 8016435C 001612BC  48 00 00 28 */	b lbl_80164384
lbl_80164360:
/* 80164360 001612C0  38 00 00 03 */	li r0, 3
/* 80164364 001612C4  48 00 00 20 */	b lbl_80164384
lbl_80164368:
/* 80164368 001612C8  38 00 00 04 */	li r0, 4
/* 8016436C 001612CC  48 00 00 18 */	b lbl_80164384
lbl_80164370:
/* 80164370 001612D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80164374 001612D4  41 82 00 0C */	beq lbl_80164380
/* 80164378 001612D8  38 00 00 00 */	li r0, 0
/* 8016437C 001612DC  48 00 00 08 */	b lbl_80164384
lbl_80164380:
/* 80164380 001612E0  38 00 00 01 */	li r0, 1
lbl_80164384:
/* 80164384 001612E4  2C 00 00 02 */	cmpwi r0, 2
/* 80164388 001612E8  41 82 00 1C */	beq lbl_801643A4
/* 8016438C 001612EC  C0 42 A0 00 */	lfs f2, lbl_805ABD20@sda21(r2)
/* 80164390 001612F0  48 1B 0F 9D */	bl PowF__5CMathFff
/* 80164394 001612F4  C0 42 9F FC */	lfs f2, lbl_805ABD1C@sda21(r2)
/* 80164398 001612F8  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8016439C 001612FC  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801643A0 00161300  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
lbl_801643A4:
/* 801643A4 00161304  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 801643A8 00161308  48 1B 09 9D */	bl FastCosR__5CMathFf
/* 801643AC 0016130C  C0 62 9F 80 */	lfs f3, lbl_805ABCA0@sda21(r2)
/* 801643B0 00161310  C0 42 A0 04 */	lfs f2, lbl_805ABD24@sda21(r2)
/* 801643B4 00161314  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 801643B8 00161318  EF E3 00 72 */	fmuls f31, f3, f1
/* 801643BC 0016131C  EC 22 00 32 */	fmuls f1, f2, f0
/* 801643C0 00161320  48 1B 0A 31 */	bl FastSinR__5CMathFf
/* 801643C4 00161324  C0 42 9F 80 */	lfs f2, lbl_805ABCA0@sda21(r2)
/* 801643C8 00161328  38 61 00 54 */	addi r3, r1, 0x54
/* 801643CC 0016132C  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 801643D0 00161330  38 81 00 78 */	addi r4, r1, 0x78
/* 801643D4 00161334  EC 22 00 72 */	fmuls f1, f2, f1
/* 801643D8 00161338  D3 E1 00 78 */	stfs f31, 0x78(r1)
/* 801643DC 0016133C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801643E0 00161340  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801643E4 00161344  48 1B 04 6D */	bl AsNormalized__9CVector3fCFv
/* 801643E8 00161348  38 61 00 60 */	addi r3, r1, 0x60
/* 801643EC 0016134C  38 9E 00 34 */	addi r4, r30, 0x34
/* 801643F0 00161350  38 A1 00 54 */	addi r5, r1, 0x54
/* 801643F4 00161354  48 1A E6 8D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801643F8 00161358  88 0D A4 21 */	lbz r0, lbl_805A8FE1@sda21(r13)
/* 801643FC 0016135C  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80164400 00161360  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80164404 00161364  7C 00 07 75 */	extsb. r0, r0
/* 80164408 00161368  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8016440C 0016136C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80164410 00161370  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80164414 00161374  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80164418 00161378  40 82 00 58 */	bne lbl_80164470
/* 8016441C 0016137C  80 AD 8D 40 */	lwz r5, lbl_805A7900@sda21(r13)
/* 80164420 00161380  38 60 00 00 */	li r3, 0
/* 80164424 00161384  38 80 00 01 */	li r4, 1
/* 80164428 00161388  48 22 5A CD */	bl __shl2i
/* 8016442C 0016138C  80 AD 8D 3C */	lwz r5, lbl_805A78FC@sda21(r13)
/* 80164430 00161390  7C 9C 23 78 */	mr r28, r4
/* 80164434 00161394  7C 7D 1B 78 */	mr r29, r3
/* 80164438 00161398  38 60 00 00 */	li r3, 0
/* 8016443C 0016139C  38 80 00 01 */	li r4, 1
/* 80164440 001613A0  48 22 5A B5 */	bl __shl2i
/* 80164444 001613A4  3C A0 80 47 */	lis r5, lbl_8046C860@ha
/* 80164448 001613A8  38 C0 00 03 */	li r6, 3
/* 8016444C 001613AC  38 A5 C8 60 */	addi r5, r5, lbl_8046C860@l
/* 80164450 001613B0  38 00 00 01 */	li r0, 1
/* 80164454 001613B4  90 C1 00 98 */	stw r6, 0x98(r1)
/* 80164458 001613B8  90 85 00 04 */	stw r4, 4(r5)
/* 8016445C 001613BC  90 65 00 00 */	stw r3, 0(r5)
/* 80164460 001613C0  93 85 00 0C */	stw r28, 0xc(r5)
/* 80164464 001613C4  93 A5 00 08 */	stw r29, 8(r5)
/* 80164468 001613C8  90 C5 00 10 */	stw r6, 0x10(r5)
/* 8016446C 001613CC  98 0D A4 21 */	stb r0, lbl_805A8FE1@sda21(r13)
lbl_80164470:
/* 80164470 001613D0  80 8D 8C F4 */	lwz r4, lbl_805A78B4@sda21(r13)
/* 80164474 001613D4  38 61 00 44 */	addi r3, r1, 0x44
/* 80164478 001613D8  4B EA 08 41 */	bl string_l__4rstlFPCc
/* 8016447C 001613DC  7F C4 F3 78 */	mr r4, r30
/* 80164480 001613E0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80164484 001613E4  38 A1 00 44 */	addi r5, r1, 0x44
/* 80164488 001613E8  4B F1 44 F1 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8016448C 001613EC  38 61 01 30 */	addi r3, r1, 0x130
/* 80164490 001613F0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80164494 001613F4  48 1A E6 E1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80164498 001613F8  38 61 00 44 */	addi r3, r1, 0x44
/* 8016449C 001613FC  48 1D 96 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801644A0 00161400  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 801644A4 00161404  38 00 00 00 */	li r0, 0
/* 801644A8 00161408  90 01 01 60 */	stw r0, 0x160(r1)
/* 801644AC 0016140C  54 00 08 3C */	slwi r0, r0, 1
/* 801644B0 00161410  38 81 01 64 */	addi r4, r1, 0x164
/* 801644B4 00161414  B0 61 00 0C */	sth r3, 0xc(r1)
/* 801644B8 00161418  7C 84 02 15 */	add. r4, r4, r0
/* 801644BC 0016141C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801644C0 00161420  A0 03 00 08 */	lhz r0, 8(r3)
/* 801644C4 00161424  41 82 00 08 */	beq lbl_801644CC
/* 801644C8 00161428  B0 04 00 00 */	sth r0, 0(r4)
lbl_801644CC:
/* 801644CC 0016142C  C0 82 9F 8C */	lfs f4, lbl_805ABCAC@sda21(r2)
/* 801644D0 00161430  3C 60 80 47 */	lis r3, lbl_8046C860@ha
/* 801644D4 00161434  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 801644D8 00161438  39 03 C8 60 */	addi r8, r3, lbl_8046C860@l
/* 801644DC 0016143C  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 801644E0 00161440  7F E4 FB 78 */	mr r4, r31
/* 801644E4 00161444  EC C4 00 B2 */	fmuls f6, f4, f2
/* 801644E8 00161448  C0 61 01 4C */	lfs f3, 0x14c(r1)
/* 801644EC 0016144C  EC A4 00 72 */	fmuls f5, f4, f1
/* 801644F0 00161450  C0 41 01 5C */	lfs f2, 0x15c(r1)
/* 801644F4 00161454  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801644F8 00161458  38 A1 00 0C */	addi r5, r1, 0xc
/* 801644FC 0016145C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80164500 00161460  C0 81 01 3C */	lfs f4, 0x13c(r1)
/* 80164504 00161464  ED 03 30 2A */	fadds f8, f3, f6
/* 80164508 00161468  80 61 01 60 */	lwz r3, 0x160(r1)
/* 8016450C 0016146C  EC E2 28 2A */	fadds f7, f2, f5
/* 80164510 00161470  C0 22 9F EC */	lfs f1, lbl_805ABD0C@sda21(r2)
/* 80164514 00161474  38 03 00 01 */	addi r0, r3, 1
/* 80164518 00161478  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8016451C 0016147C  EC 04 00 2A */	fadds f0, f4, f0
/* 80164520 00161480  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80164524 00161484  90 01 01 60 */	stw r0, 0x160(r1)
/* 80164528 00161488  38 C1 00 38 */	addi r6, r1, 0x38
/* 8016452C 0016148C  38 E1 00 6C */	addi r7, r1, 0x6c
/* 80164530 00161490  39 21 01 60 */	addi r9, r1, 0x160
/* 80164534 00161494  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 80164538 00161498  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8016453C 0016149C  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80164540 001614A0  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80164544 001614A4  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80164548 001614A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8016454C 001614AC  D1 01 00 3C */	stfs f8, 0x3c(r1)
/* 80164550 001614B0  D0 E1 00 40 */	stfs f7, 0x40(r1)
/* 80164554 001614B4  4B EE 8A 71 */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 80164558 001614B8  88 81 00 C0 */	lbz r4, 0xc0(r1)
/* 8016455C 001614BC  3B 81 01 04 */	addi r28, r1, 0x104
/* 80164560 001614C0  C0 E1 00 A0 */	lfs f7, 0xa0(r1)
/* 80164564 001614C4  C0 C1 00 A4 */	lfs f6, 0xa4(r1)
/* 80164568 001614C8  28 04 00 00 */	cmplwi r4, 0
/* 8016456C 001614CC  C0 A1 00 A8 */	lfs f5, 0xa8(r1)
/* 80164570 001614D0  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 80164574 001614D4  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 80164578 001614D8  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 8016457C 001614DC  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 80164580 001614E0  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80164584 001614E4  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 80164588 001614E8  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8016458C 001614EC  D0 E1 01 00 */	stfs f7, 0x100(r1)
/* 80164590 001614F0  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 80164594 001614F4  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 80164598 001614F8  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 8016459C 001614FC  D0 61 01 10 */	stfs f3, 0x110(r1)
/* 801645A0 00161500  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 801645A4 00161504  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 801645A8 00161508  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 801645AC 0016150C  98 81 01 20 */	stb r4, 0x120(r1)
/* 801645B0 00161510  90 61 01 2C */	stw r3, 0x12c(r1)
/* 801645B4 00161514  90 01 01 28 */	stw r0, 0x128(r1)
/* 801645B8 00161518  41 82 00 60 */	beq lbl_80164618
/* 801645BC 0016151C  A0 7E 05 78 */	lhz r3, 0x578(r30)
/* 801645C0 00161520  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801645C4 00161524  7C 03 00 40 */	cmplw r3, r0
/* 801645C8 00161528  41 82 00 50 */	beq lbl_80164618
/* 801645CC 0016152C  A0 1E 05 78 */	lhz r0, 0x578(r30)
/* 801645D0 00161530  7F E3 FB 78 */	mr r3, r31
/* 801645D4 00161534  38 81 00 08 */	addi r4, r1, 8
/* 801645D8 00161538  B0 01 00 08 */	sth r0, 8(r1)
/* 801645DC 0016153C  4B EE 7F 99 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801645E0 00161540  7C 64 1B 78 */	mr r4, r3
/* 801645E4 00161544  38 61 00 18 */	addi r3, r1, 0x18
/* 801645E8 00161548  4B F4 94 9D */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 801645EC 0016154C  80 63 00 04 */	lwz r3, 4(r3)
/* 801645F0 00161550  28 03 00 00 */	cmplwi r3, 0
/* 801645F4 00161554  41 82 00 24 */	beq lbl_80164618
/* 801645F8 00161558  7F 84 E3 78 */	mr r4, r28
/* 801645FC 0016155C  4B EE E8 91 */	bl SetTranslation__6CActorFRC9CVector3f
/* 80164600 00161560  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80164604 00161564  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 80164608 00161568  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8016460C 0016156C  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 80164610 00161570  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 80164614 00161574  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
lbl_80164618:
/* 80164618 00161578  80 A1 01 60 */	lwz r5, 0x160(r1)
/* 8016461C 0016157C  38 60 00 00 */	li r3, 0
/* 80164620 00161580  2C 05 00 00 */	cmpwi r5, 0
/* 80164624 00161584  40 81 00 40 */	ble lbl_80164664
/* 80164628 00161588  2C 05 00 08 */	cmpwi r5, 8
/* 8016462C 0016158C  38 85 FF F8 */	addi r4, r5, -8
/* 80164630 00161590  40 81 00 20 */	ble lbl_80164650
/* 80164634 00161594  38 04 00 07 */	addi r0, r4, 7
/* 80164638 00161598  54 00 E8 FE */	srwi r0, r0, 3
/* 8016463C 0016159C  7C 09 03 A6 */	mtctr r0
/* 80164640 001615A0  2C 04 00 00 */	cmpwi r4, 0
/* 80164644 001615A4  40 81 00 0C */	ble lbl_80164650
lbl_80164648:
/* 80164648 001615A8  38 63 00 08 */	addi r3, r3, 8
/* 8016464C 001615AC  42 00 FF FC */	bdnz lbl_80164648
lbl_80164650:
/* 80164650 001615B0  7C 03 28 50 */	subf r0, r3, r5
/* 80164654 001615B4  7C 09 03 A6 */	mtctr r0
/* 80164658 001615B8  7C 03 28 00 */	cmpw r3, r5
/* 8016465C 001615BC  40 80 00 08 */	bge lbl_80164664
lbl_80164660:
/* 80164660 001615C0  42 00 00 00 */	bdnz lbl_80164660
lbl_80164664:
/* 80164664 001615C4  38 00 00 00 */	li r0, 0
/* 80164668 001615C8  90 01 01 60 */	stw r0, 0x160(r1)
/* 8016466C 001615CC  E3 E1 09 88 */	psq_l f31, -1656(r1), 0, qr0
/* 80164670 001615D0  80 01 09 94 */	lwz r0, 0x994(r1)
/* 80164674 001615D4  CB E1 09 80 */	lfd f31, 0x980(r1)
/* 80164678 001615D8  83 E1 09 7C */	lwz r31, 0x97c(r1)
/* 8016467C 001615DC  83 C1 09 78 */	lwz r30, 0x978(r1)
/* 80164680 001615E0  83 A1 09 74 */	lwz r29, 0x974(r1)
/* 80164684 001615E4  83 81 09 70 */	lwz r28, 0x970(r1)
/* 80164688 001615E8  7C 08 03 A6 */	mtlr r0
/* 8016468C 001615EC  38 21 09 90 */	addi r1, r1, 0x990
/* 80164690 001615F0  4E 80 00 20 */	blr 

.global GetCollisionPrimitive__6CDroneCFv
GetCollisionPrimitive__6CDroneCFv:
/* 80164694 001615F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80164698 001615F8  7C 08 02 A6 */	mflr r0
/* 8016469C 001615FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801646A0 00161600  88 03 08 34 */	lbz r0, 0x834(r3)
/* 801646A4 00161604  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801646A8 00161608  41 82 00 0C */	beq lbl_801646B4
/* 801646AC 0016160C  4B FB 63 A9 */	bl GetCollisionPrimitive__13CPhysicsActorCFv
/* 801646B0 00161610  48 00 00 08 */	b lbl_801646B8
lbl_801646B4:
/* 801646B4 00161614  38 63 06 90 */	addi r3, r3, 0x690
lbl_801646B8:
/* 801646B8 00161618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801646BC 0016161C  7C 08 03 A6 */	mtlr r0
/* 801646C0 00161620  38 21 00 10 */	addi r1, r1, 0x10
/* 801646C4 00161624  4E 80 00 20 */	blr 

.global Patrol__6CDroneFR13CStateManager9EStateMsgf
Patrol__6CDroneFR13CStateManager9EStateMsgf:
/* 801646C8 00161628  94 21 F7 90 */	stwu r1, -0x870(r1)
/* 801646CC 0016162C  7C 08 02 A6 */	mflr r0
/* 801646D0 00161630  90 01 08 74 */	stw r0, 0x874(r1)
/* 801646D4 00161634  DB E1 08 60 */	stfd f31, 0x860(r1)
/* 801646D8 00161638  F3 E1 08 68 */	psq_st f31, -1944(r1), 0, qr0
/* 801646DC 0016163C  93 E1 08 5C */	stw r31, 0x85c(r1)
/* 801646E0 00161640  93 C1 08 58 */	stw r30, 0x858(r1)
/* 801646E4 00161644  93 A1 08 54 */	stw r29, 0x854(r1)
/* 801646E8 00161648  7C BF 2B 78 */	mr r31, r5
/* 801646EC 0016164C  FF E0 08 90 */	fmr f31, f1
/* 801646F0 00161650  2C 1F 00 01 */	cmpwi r31, 1
/* 801646F4 00161654  7C 7D 1B 78 */	mr r29, r3
/* 801646F8 00161658  7C 9E 23 78 */	mr r30, r4
/* 801646FC 0016165C  41 82 00 5C */	beq lbl_80164758
/* 80164700 00161660  40 80 00 10 */	bge lbl_80164710
/* 80164704 00161664  2C 1F 00 00 */	cmpwi r31, 0
/* 80164708 00161668  40 80 00 14 */	bge lbl_8016471C
/* 8016470C 0016166C  48 00 01 C8 */	b lbl_801648D4
lbl_80164710:
/* 80164710 00161670  2C 1F 00 03 */	cmpwi r31, 3
/* 80164714 00161674  40 80 01 C0 */	bge lbl_801648D4
/* 80164718 00161678  48 00 01 98 */	b lbl_801648B0
lbl_8016471C:
/* 8016471C 0016167C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80164720 00161680  38 80 00 02 */	li r4, 2
/* 80164724 00161684  4B FD 62 B5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80164728 00161688  7F A3 EB 78 */	mr r3, r29
/* 8016472C 0016168C  7F C4 F3 78 */	mr r4, r30
/* 80164730 00161690  81 9D 00 00 */	lwz r12, 0(r29)
/* 80164734 00161694  38 A0 00 01 */	li r5, 1
/* 80164738 00161698  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 8016473C 0016169C  7D 89 03 A6 */	mtctr r12
/* 80164740 001616A0  4E 80 04 21 */	bctrl 
/* 80164744 001616A4  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 80164748 001616A8  38 60 00 01 */	li r3, 1
/* 8016474C 001616AC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80164750 001616B0  98 1D 08 34 */	stb r0, 0x834(r29)
/* 80164754 001616B4  48 00 01 80 */	b lbl_801648D4
lbl_80164758:
/* 80164758 001616B8  38 00 00 00 */	li r0, 0
/* 8016475C 001616BC  7F C7 F3 78 */	mr r7, r30
/* 80164760 001616C0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80164764 001616C4  38 C1 00 40 */	addi r6, r1, 0x40
/* 80164768 001616C8  C0 22 A0 00 */	lfs f1, lbl_805ABD20@sda21(r2)
/* 8016476C 001616CC  38 80 00 21 */	li r4, 0x21
/* 80164770 001616D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80164774 001616D4  38 A0 00 20 */	li r5, 0x20
/* 80164778 001616D8  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8016477C 001616DC  7D 89 03 A6 */	mtctr r12
/* 80164780 001616E0  4E 80 04 21 */	bctrl 
/* 80164784 001616E4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80164788 001616E8  2C 00 00 00 */	cmpwi r0, 0
/* 8016478C 001616EC  41 82 00 CC */	beq lbl_80164858
/* 80164790 001616F0  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 80164794 001616F4  7F C3 F3 78 */	mr r3, r30
/* 80164798 001616F8  38 81 00 08 */	addi r4, r1, 8
/* 8016479C 001616FC  B0 01 00 08 */	sth r0, 8(r1)
/* 801647A0 00161700  4B EE 7E 05 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801647A4 00161704  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801647A8 00161708  7F A5 EB 78 */	mr r5, r29
/* 801647AC 0016170C  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801647B0 00161710  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801647B4 00161714  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801647B8 00161718  38 61 00 18 */	addi r3, r1, 0x18
/* 801647BC 0016171C  C0 22 A0 00 */	lfs f1, lbl_805ABD20@sda21(r2)
/* 801647C0 00161720  38 C1 00 0C */	addi r6, r1, 0xc
/* 801647C4 00161724  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801647C8 00161728  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801647CC 0016172C  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801647D0 00161730  4B FD A1 21 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801647D4 00161734  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801647D8 00161738  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801647DC 0016173C  C4 A3 66 A0 */	lfsu f5, skZero3f@l(r3)
/* 801647E0 00161740  38 00 00 00 */	li r0, 0
/* 801647E4 00161744  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 801647E8 00161748  FC 01 28 00 */	fcmpu cr0, f1, f5
/* 801647EC 0016174C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801647F0 00161750  40 82 00 20 */	bne lbl_80164810
/* 801647F4 00161754  C0 03 00 04 */	lfs f0, 4(r3)
/* 801647F8 00161758  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 801647FC 0016175C  40 82 00 14 */	bne lbl_80164810
/* 80164800 00161760  C0 03 00 08 */	lfs f0, 8(r3)
/* 80164804 00161764  FC 04 00 00 */	fcmpu cr0, f4, f0
/* 80164808 00161768  40 82 00 08 */	bne lbl_80164810
/* 8016480C 0016176C  38 00 00 01 */	li r0, 1
lbl_80164810:
/* 80164810 00161770  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80164814 00161774  40 82 00 44 */	bne lbl_80164858
/* 80164818 00161778  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8016481C 0016177C  C0 02 9F 80 */	lfs f0, lbl_805ABCA0@sda21(r2)
/* 80164820 00161780  38 63 66 A0 */	addi r3, r3, skZero3f@l
/* 80164824 00161784  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80164828 00161788  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016482C 0016178C  38 81 00 24 */	addi r4, r1, 0x24
/* 80164830 00161790  C0 23 00 08 */	lfs f1, 8(r3)
/* 80164834 00161794  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80164838 00161798  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8016483C 0016179C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80164840 001617A0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80164844 001617A4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80164848 001617A8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8016484C 001617AC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80164850 001617B0  38 63 00 04 */	addi r3, r3, 4
/* 80164854 001617B4  4B FC CE C5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80164858:
/* 80164858 001617B8  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 8016485C 001617BC  38 60 00 00 */	li r3, 0
/* 80164860 001617C0  2C 05 00 00 */	cmpwi r5, 0
/* 80164864 001617C4  40 81 00 40 */	ble lbl_801648A4
/* 80164868 001617C8  2C 05 00 08 */	cmpwi r5, 8
/* 8016486C 001617CC  38 85 FF F8 */	addi r4, r5, -8
/* 80164870 001617D0  40 81 00 20 */	ble lbl_80164890
/* 80164874 001617D4  38 04 00 07 */	addi r0, r4, 7
/* 80164878 001617D8  54 00 E8 FE */	srwi r0, r0, 3
/* 8016487C 001617DC  7C 09 03 A6 */	mtctr r0
/* 80164880 001617E0  2C 04 00 00 */	cmpwi r4, 0
/* 80164884 001617E4  40 81 00 0C */	ble lbl_80164890
lbl_80164888:
/* 80164888 001617E8  38 63 00 08 */	addi r3, r3, 8
/* 8016488C 001617EC  42 00 FF FC */	bdnz lbl_80164888
lbl_80164890:
/* 80164890 001617F0  7C 03 28 50 */	subf r0, r3, r5
/* 80164894 001617F4  7C 09 03 A6 */	mtctr r0
/* 80164898 001617F8  7C 03 28 00 */	cmpw r3, r5
/* 8016489C 001617FC  40 80 00 08 */	bge lbl_801648A4
lbl_801648A0:
/* 801648A0 00161800  42 00 00 00 */	bdnz lbl_801648A0
lbl_801648A4:
/* 801648A4 00161804  38 00 00 00 */	li r0, 0
/* 801648A8 00161808  90 01 00 40 */	stw r0, 0x40(r1)
/* 801648AC 0016180C  48 00 00 28 */	b lbl_801648D4
lbl_801648B0:
/* 801648B0 00161810  81 83 00 00 */	lwz r12, 0(r3)
/* 801648B4 00161814  38 A0 00 00 */	li r5, 0
/* 801648B8 00161818  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 801648BC 0016181C  7D 89 03 A6 */	mtctr r12
/* 801648C0 00161820  4E 80 04 21 */	bctrl 
/* 801648C4 00161824  88 1D 08 34 */	lbz r0, 0x834(r29)
/* 801648C8 00161828  38 60 00 00 */	li r3, 0
/* 801648CC 0016182C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801648D0 00161830  98 1D 08 34 */	stb r0, 0x834(r29)
lbl_801648D4:
/* 801648D4 00161834  FC 20 F8 90 */	fmr f1, f31
/* 801648D8 00161838  7F A3 EB 78 */	mr r3, r29
/* 801648DC 0016183C  7F C4 F3 78 */	mr r4, r30
/* 801648E0 00161840  7F E5 FB 78 */	mr r5, r31
/* 801648E4 00161844  48 09 25 91 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801648E8 00161848  E3 E1 08 68 */	psq_l f31, -1944(r1), 0, qr0
/* 801648EC 0016184C  80 01 08 74 */	lwz r0, 0x874(r1)
/* 801648F0 00161850  CB E1 08 60 */	lfd f31, 0x860(r1)
/* 801648F4 00161854  83 E1 08 5C */	lwz r31, 0x85c(r1)
/* 801648F8 00161858  83 C1 08 58 */	lwz r30, 0x858(r1)
/* 801648FC 0016185C  83 A1 08 54 */	lwz r29, 0x854(r1)
/* 80164900 00161860  7C 08 03 A6 */	mtlr r0
/* 80164904 00161864  38 21 08 70 */	addi r1, r1, 0x870
/* 80164908 00161868  4E 80 00 20 */	blr 

.global sub_8016490c
sub_8016490c:
/* 8016490C 0016186C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80164910 00161870  7C 08 02 A6 */	mflr r0
/* 80164914 00161874  90 01 01 04 */	stw r0, 0x104(r1)
/* 80164918 00161878  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8016491C 0016187C  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 80164920 00161880  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80164924 00161884  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 80164928 00161888  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 8016492C 0016188C  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, qr0
/* 80164930 00161890  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80164934 00161894  F3 81 00 C8 */	psq_st f28, 200(r1), 0, qr0
/* 80164938 00161898  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8016493C 0016189C  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 80164940 001618A0  FF 80 08 90 */	fmr f28, f1
/* 80164944 001618A4  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 80164948 001618A8  7C 7F 1B 78 */	mr r31, r3
/* 8016494C 001618AC  38 61 00 30 */	addi r3, r1, 0x30
/* 80164950 001618B0  38 84 00 4D */	addi r4, r4, 0x4d
/* 80164954 001618B4  4B EA 03 65 */	bl string_l__4rstlFPCc
/* 80164958 001618B8  7F E4 FB 78 */	mr r4, r31
/* 8016495C 001618BC  38 61 00 58 */	addi r3, r1, 0x58
/* 80164960 001618C0  38 A1 00 30 */	addi r5, r1, 0x30
/* 80164964 001618C4  4B F1 40 15 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80164968 001618C8  38 61 00 88 */	addi r3, r1, 0x88
/* 8016496C 001618CC  38 81 00 58 */	addi r4, r1, 0x58
/* 80164970 001618D0  48 1A E2 05 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80164974 001618D4  38 61 00 30 */	addi r3, r1, 0x30
/* 80164978 001618D8  48 1D 91 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016497C 001618DC  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80164980 001618E0  38 61 00 40 */	addi r3, r1, 0x40
/* 80164984 001618E4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80164988 001618E8  38 81 00 24 */	addi r4, r1, 0x24
/* 8016498C 001618EC  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80164990 001618F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80164994 001618F4  EF A2 00 28 */	fsubs f29, f2, f0
/* 80164998 001618F8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8016499C 001618FC  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 801649A0 00161900  EF C1 00 28 */	fsubs f30, f1, f0
/* 801649A4 00161904  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801649A8 00161908  EC 3D E0 2A */	fadds f1, f29, f28
/* 801649AC 0016190C  EF E2 00 28 */	fsubs f31, f2, f0
/* 801649B0 00161910  EC 1E E0 2A */	fadds f0, f30, f28
/* 801649B4 00161914  EC 5D E0 28 */	fsubs f2, f29, f28
/* 801649B8 00161918  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801649BC 0016191C  EC 7F E0 2A */	fadds f3, f31, f28
/* 801649C0 00161920  EC 3E E0 28 */	fsubs f1, f30, f28
/* 801649C4 00161924  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801649C8 00161928  EC 1F E0 28 */	fsubs f0, f31, f28
/* 801649CC 0016192C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801649D0 00161930  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801649D4 00161934  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801649D8 00161938  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801649DC 0016193C  48 1D 3B 2D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801649E0 00161940  D3 A1 00 08 */	stfs f29, 8(r1)
/* 801649E4 00161944  FC 00 E0 18 */	frsp f0, f28
/* 801649E8 00161948  7F E3 FB 78 */	mr r3, r31
/* 801649EC 0016194C  38 81 00 40 */	addi r4, r1, 0x40
/* 801649F0 00161950  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 801649F4 00161954  80 01 00 08 */	lwz r0, 8(r1)
/* 801649F8 00161958  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 801649FC 0016195C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80164A00 00161960  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80164A04 00161964  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80164A08 00161968  90 BF 06 A4 */	stw r5, 0x6a4(r31)
/* 80164A0C 0016196C  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 80164A10 00161970  D3 81 00 14 */	stfs f28, 0x14(r1)
/* 80164A14 00161974  D0 1F 06 AC */	stfs f0, 0x6ac(r31)
/* 80164A18 00161978  4B FB 5C 41 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 80164A1C 0016197C  C0 02 9F 78 */	lfs f0, lbl_805ABC98@sda21(r2)
/* 80164A20 00161980  EC 00 E0 2A */	fadds f0, f0, f28
/* 80164A24 00161984  D0 1F 07 84 */	stfs f0, 0x784(r31)
/* 80164A28 00161988  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 80164A2C 0016198C  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80164A30 00161990  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 80164A34 00161994  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80164A38 00161998  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, qr0
/* 80164A3C 0016199C  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80164A40 001619A0  E3 81 00 C8 */	psq_l f28, 200(r1), 0, qr0
/* 80164A44 001619A4  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80164A48 001619A8  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80164A4C 001619AC  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80164A50 001619B0  7C 08 03 A6 */	mtlr r0
/* 80164A54 001619B4  38 21 01 00 */	addi r1, r1, 0x100
/* 80164A58 001619B8  4E 80 00 20 */	blr 

.global Think__6CDroneFfR13CStateManager
Think__6CDroneFfR13CStateManager:
/* 80164A5C 001619BC  94 21 F5 D0 */	stwu r1, -0xa30(r1)
/* 80164A60 001619C0  7C 08 02 A6 */	mflr r0
/* 80164A64 001619C4  90 01 0A 34 */	stw r0, 0xa34(r1)
/* 80164A68 001619C8  DB E1 0A 20 */	stfd f31, 0xa20(r1)
/* 80164A6C 001619CC  F3 E1 0A 28 */	psq_st f31, -1496(r1), 0, qr0
/* 80164A70 001619D0  DB C1 0A 10 */	stfd f30, 0xa10(r1)
/* 80164A74 001619D4  F3 C1 0A 18 */	psq_st f30, -1512(r1), 0, qr0
/* 80164A78 001619D8  BF 61 09 FC */	stmw r27, 0x9fc(r1)
/* 80164A7C 001619DC  7C 7E 1B 78 */	mr r30, r3
/* 80164A80 001619E0  FF E0 08 90 */	fmr f31, f1
/* 80164A84 001619E4  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 80164A88 001619E8  7C 9F 23 78 */	mr r31, r4
/* 80164A8C 001619EC  2C 00 00 01 */	cmpwi r0, 1
/* 80164A90 001619F0  40 82 00 64 */	bne lbl_80164AF4
/* 80164A94 001619F4  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164A98 001619F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80164A9C 001619FC  4B F2 CA BD */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80164AA0 00161A00  20 03 00 01 */	subfic r0, r3, 1
/* 80164AA4 00161A04  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80164AA8 00161A08  7C 00 00 34 */	cntlzw r0, r0
/* 80164AAC 00161A0C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80164AB0 00161A10  40 82 00 30 */	bne lbl_80164AE0
/* 80164AB4 00161A14  C0 5E 04 28 */	lfs f2, 0x428(r30)
/* 80164AB8 00161A18  C0 22 88 F0 */	lfs f1, lbl_805AA610@sda21(r2)
/* 80164ABC 00161A1C  C0 0D 8D 14 */	lfs f0, lbl_805A78D4@sda21(r13)
/* 80164AC0 00161A20  EC 22 08 24 */	fdivs f1, f2, f1
/* 80164AC4 00161A24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164AC8 00161A28  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80164ACC 00161A2C  40 80 00 0C */	bge lbl_80164AD8
/* 80164AD0 00161A30  38 61 00 4C */	addi r3, r1, 0x4c
/* 80164AD4 00161A34  48 00 00 08 */	b lbl_80164ADC
lbl_80164AD8:
/* 80164AD8 00161A38  38 6D 8D 14 */	addi r3, r13, lbl_805A78D4@sda21
lbl_80164ADC:
/* 80164ADC 00161A3C  C0 23 00 00 */	lfs f1, 0(r3)
lbl_80164AE0:
/* 80164AE0 00161A40  C0 02 A0 08 */	lfs f0, lbl_805ABD28@sda21(r2)
/* 80164AE4 00161A44  EF C0 00 72 */	fmuls f30, f0, f1
/* 80164AE8 00161A48  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 80164AEC 00161A4C  88 01 00 08 */	lbz r0, 8(r1)
/* 80164AF0 00161A50  98 1E 04 2F */	stb r0, 0x42f(r30)
lbl_80164AF4:
/* 80164AF4 00161A54  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80164AF8 00161A58  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80164AFC 00161A5C  C0 03 03 24 */	lfs f0, 0x324(r3)
/* 80164B00 00161A60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164B04 00161A64  7C 60 00 26 */	mfcr r3
/* 80164B08 00161A68  88 1E 04 03 */	lbz r0, 0x403(r30)
/* 80164B0C 00161A6C  54 63 17 FE */	rlwinm r3, r3, 2, 0x1f, 0x1f
/* 80164B10 00161A70  7C 63 00 34 */	cntlzw r3, r3
/* 80164B14 00161A74  50 60 0E 72 */	rlwimi r0, r3, 1, 0x19, 0x19
/* 80164B18 00161A78  98 1E 04 03 */	stb r0, 0x403(r30)
/* 80164B1C 00161A7C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80164B20 00161A80  C0 03 03 24 */	lfs f0, 0x324(r3)
/* 80164B24 00161A84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164B28 00161A88  40 81 00 6C */	ble lbl_80164B94
/* 80164B2C 00161A8C  88 1E 08 28 */	lbz r0, 0x828(r30)
/* 80164B30 00161A90  28 00 00 00 */	cmplwi r0, 0
/* 80164B34 00161A94  40 82 00 10 */	bne lbl_80164B44
/* 80164B38 00161A98  88 1E 08 29 */	lbz r0, 0x829(r30)
/* 80164B3C 00161A9C  28 00 00 00 */	cmplwi r0, 0
/* 80164B40 00161AA0  41 82 00 54 */	beq lbl_80164B94
lbl_80164B44:
/* 80164B44 00161AA4  38 00 00 00 */	li r0, 0
/* 80164B48 00161AA8  7F C3 F3 78 */	mr r3, r30
/* 80164B4C 00161AAC  98 1E 08 28 */	stb r0, 0x828(r30)
/* 80164B50 00161AB0  7F E4 FB 78 */	mr r4, r31
/* 80164B54 00161AB4  38 A0 00 00 */	li r5, 0
/* 80164B58 00161AB8  38 C0 00 00 */	li r6, 0
/* 80164B5C 00161ABC  98 1E 08 29 */	stb r0, 0x829(r30)
/* 80164B60 00161AC0  4B FF E7 45 */	bl sub_801632a4
/* 80164B64 00161AC4  7F C3 F3 78 */	mr r3, r30
/* 80164B68 00161AC8  7F E4 FB 78 */	mr r4, r31
/* 80164B6C 00161ACC  38 A0 00 01 */	li r5, 1
/* 80164B70 00161AD0  38 C0 00 00 */	li r6, 0
/* 80164B74 00161AD4  4B FF E7 31 */	bl sub_801632a4
/* 80164B78 00161AD8  7F C3 F3 78 */	mr r3, r30
/* 80164B7C 00161ADC  7F E4 FB 78 */	mr r4, r31
/* 80164B80 00161AE0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80164B84 00161AE4  38 A0 00 00 */	li r5, 0
/* 80164B88 00161AE8  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80164B8C 00161AEC  7D 89 03 A6 */	mtctr r12
/* 80164B90 00161AF0  4E 80 04 21 */	bctrl 
lbl_80164B94:
/* 80164B94 00161AF4  FC 20 F8 90 */	fmr f1, f31
/* 80164B98 00161AF8  7F C3 F3 78 */	mr r3, r30
/* 80164B9C 00161AFC  7F E4 FB 78 */	mr r4, r31
/* 80164BA0 00161B00  4B F1 4F 79 */	bl Think__10CPatternedFfR13CStateManager
/* 80164BA4 00161B04  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80164BA8 00161B08  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80164BAC 00161B0C  41 82 09 14 */	beq lbl_801654C0
/* 80164BB0 00161B10  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 80164BB4 00161B14  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164BB8 00161B18  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80164BBC 00161B1C  D0 3E 05 C8 */	stfs f1, 0x5c8(r30)
/* 80164BC0 00161B20  C0 3E 07 C4 */	lfs f1, 0x7c4(r30)
/* 80164BC4 00161B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164BC8 00161B28  4C 41 13 82 */	cror 2, 1, 2
/* 80164BCC 00161B2C  40 82 00 0C */	bne lbl_80164BD8
/* 80164BD0 00161B30  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80164BD4 00161B34  D0 1E 07 C4 */	stfs f0, 0x7c4(r30)
lbl_80164BD8:
/* 80164BD8 00161B38  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80164BDC 00161B3C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164BE0 00161B40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164BE4 00161B44  4C 41 13 82 */	cror 2, 1, 2
/* 80164BE8 00161B48  40 82 00 2C */	bne lbl_80164C14
/* 80164BEC 00161B4C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80164BF0 00161B50  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 80164BF4 00161B54  2C 00 00 01 */	cmpwi r0, 1
/* 80164BF8 00161B58  40 82 00 14 */	bne lbl_80164C0C
/* 80164BFC 00161B5C  C0 02 9F B4 */	lfs f0, lbl_805ABCD4@sda21(r2)
/* 80164C00 00161B60  EC 00 0F FC */	fnmsubs f0, f0, f31, f1
/* 80164C04 00161B64  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80164C08 00161B68  48 00 00 0C */	b lbl_80164C14
lbl_80164C0C:
/* 80164C0C 00161B6C  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80164C10 00161B70  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
lbl_80164C14:
/* 80164C14 00161B74  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 80164C18 00161B78  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164C1C 00161B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164C20 00161B80  4C 41 13 82 */	cror 2, 1, 2
/* 80164C24 00161B84  40 82 00 0C */	bne lbl_80164C30
/* 80164C28 00161B88  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80164C2C 00161B8C  D0 1E 06 24 */	stfs f0, 0x624(r30)
lbl_80164C30:
/* 80164C30 00161B90  C0 3E 06 44 */	lfs f1, 0x644(r30)
/* 80164C34 00161B94  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164C38 00161B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164C3C 00161B9C  4C 41 13 82 */	cror 2, 1, 2
/* 80164C40 00161BA0  40 82 00 0C */	bne lbl_80164C4C
/* 80164C44 00161BA4  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80164C48 00161BA8  D0 1E 06 44 */	stfs f0, 0x644(r30)
lbl_80164C4C:
/* 80164C4C 00161BAC  88 1E 08 28 */	lbz r0, 0x828(r30)
/* 80164C50 00161BB0  28 00 00 00 */	cmplwi r0, 0
/* 80164C54 00161BB4  40 82 00 1C */	bne lbl_80164C70
/* 80164C58 00161BB8  88 1E 08 29 */	lbz r0, 0x829(r30)
/* 80164C5C 00161BBC  28 00 00 00 */	cmplwi r0, 0
/* 80164C60 00161BC0  41 82 00 38 */	beq lbl_80164C98
/* 80164C64 00161BC4  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80164C68 00161BC8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164C6C 00161BCC  41 82 00 2C */	beq lbl_80164C98
lbl_80164C70:
/* 80164C70 00161BD0  FC 20 F8 90 */	fmr f1, f31
/* 80164C74 00161BD4  7F C3 F3 78 */	mr r3, r30
/* 80164C78 00161BD8  7F E4 FB 78 */	mr r4, r31
/* 80164C7C 00161BDC  4B FF EF C5 */	bl sub_80163c40
/* 80164C80 00161BE0  7F C3 F3 78 */	mr r3, r30
/* 80164C84 00161BE4  7F E4 FB 78 */	mr r4, r31
/* 80164C88 00161BE8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80164C8C 00161BEC  81 8C 02 D8 */	lwz r12, 0x2d8(r12)
/* 80164C90 00161BF0  7D 89 03 A6 */	mtctr r12
/* 80164C94 00161BF4  4E 80 04 21 */	bctrl 
lbl_80164C98:
/* 80164C98 00161BF8  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164C9C 00161BFC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164CA0 00161C00  41 82 00 20 */	beq lbl_80164CC0
/* 80164CA4 00161C04  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80164CA8 00161C08  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164CAC 00161C0C  41 82 00 14 */	beq lbl_80164CC0
/* 80164CB0 00161C10  FC 20 F8 90 */	fmr f1, f31
/* 80164CB4 00161C14  7F C3 F3 78 */	mr r3, r30
/* 80164CB8 00161C18  7F E4 FB 78 */	mr r4, r31
/* 80164CBC 00161C1C  4B FF F5 A9 */	bl sub_80164264
lbl_80164CC0:
/* 80164CC0 00161C20  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80164CC4 00161C24  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164CC8 00161C28  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 80164CCC 00161C2C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80164CD0 00161C30  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80164CD4 00161C34  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80164CD8 00161C38  EC A6 00 28 */	fsubs f5, f6, f0
/* 80164CDC 00161C3C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80164CE0 00161C40  C0 E3 00 60 */	lfs f7, 0x60(r3)
/* 80164CE4 00161C44  EC 61 00 28 */	fsubs f3, f1, f0
/* 80164CE8 00161C48  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80164CEC 00161C4C  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80164CF0 00161C50  EC 87 10 28 */	fsubs f4, f7, f2
/* 80164CF4 00161C54  EC 05 01 72 */	fmuls f0, f5, f5
/* 80164CF8 00161C58  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 80164CFC 00161C5C  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80164D00 00161C60  EC 44 01 32 */	fmuls f2, f4, f4
/* 80164D04 00161C64  D0 E1 00 E4 */	stfs f7, 0xe4(r1)
/* 80164D08 00161C68  EC 01 00 2A */	fadds f0, f1, f0
/* 80164D0C 00161C6C  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 80164D10 00161C70  D0 A1 00 EC */	stfs f5, 0xec(r1)
/* 80164D14 00161C74  EF C2 00 2A */	fadds f30, f2, f0
/* 80164D18 00161C78  D0 81 00 F0 */	stfs f4, 0xf0(r1)
/* 80164D1C 00161C7C  41 82 00 90 */	beq lbl_80164DAC
/* 80164D20 00161C80  C0 1E 06 0C */	lfs f0, 0x60c(r30)
/* 80164D24 00161C84  EC 00 00 32 */	fmuls f0, f0, f0
/* 80164D28 00161C88  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80164D2C 00161C8C  40 80 00 80 */	bge lbl_80164DAC
/* 80164D30 00161C90  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164D34 00161C94  38 81 00 2C */	addi r4, r1, 0x2c
/* 80164D38 00161C98  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80164D3C 00161C9C  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164D40 00161CA0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80164D44 00161CA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80164D48 00161CA8  38 63 01 88 */	addi r3, r3, 0x188
/* 80164D4C 00161CAC  48 05 BC 69 */	bl sub_801c09b4
/* 80164D50 00161CB0  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164D54 00161CB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80164D58 00161CB8  38 63 01 88 */	addi r3, r3, 0x188
/* 80164D5C 00161CBC  48 05 BB C9 */	bl GetTotalInterference__19CStaticInterferenceCFv
/* 80164D60 00161CC0  C0 5E 06 08 */	lfs f2, 0x608(r30)
/* 80164D64 00161CC4  C0 0D 8D 18 */	lfs f0, lbl_805A78D8@sda21(r13)
/* 80164D68 00161CC8  EC 22 08 28 */	fsubs f1, f2, f1
/* 80164D6C 00161CCC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164D70 00161CD0  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80164D74 00161CD4  40 80 00 0C */	bge lbl_80164D80
/* 80164D78 00161CD8  38 61 00 48 */	addi r3, r1, 0x48
/* 80164D7C 00161CDC  48 00 00 08 */	b lbl_80164D84
lbl_80164D80:
/* 80164D80 00161CE0  38 6D 8D 18 */	addi r3, r13, lbl_805A78D8@sda21
lbl_80164D84:
/* 80164D84 00161CE4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164D88 00161CE8  38 81 00 24 */	addi r4, r1, 0x24
/* 80164D8C 00161CEC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80164D90 00161CF0  C0 42 9F 8C */	lfs f2, lbl_805ABCAC@sda21(r2)
/* 80164D94 00161CF4  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80164D98 00161CF8  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164D9C 00161CFC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80164DA0 00161D00  80 63 00 00 */	lwz r3, 0(r3)
/* 80164DA4 00161D04  38 63 01 88 */	addi r3, r3, 0x188
/* 80164DA8 00161D08  48 05 BD 91 */	bl AddSource__19CStaticInterferenceF9TUniqueId
lbl_80164DAC:
/* 80164DAC 00161D0C  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164DB0 00161D10  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80164DB4 00161D14  40 82 00 90 */	bne lbl_80164E44
/* 80164DB8 00161D18  C0 1E 06 14 */	lfs f0, 0x614(r30)
/* 80164DBC 00161D1C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80164DC0 00161D20  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80164DC4 00161D24  40 80 00 80 */	bge lbl_80164E44
/* 80164DC8 00161D28  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164DCC 00161D2C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80164DD0 00161D30  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80164DD4 00161D34  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164DD8 00161D38  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80164DDC 00161D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80164DE0 00161D40  38 63 01 88 */	addi r3, r3, 0x188
/* 80164DE4 00161D44  48 05 BB D1 */	bl sub_801c09b4
/* 80164DE8 00161D48  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164DEC 00161D4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80164DF0 00161D50  38 63 01 88 */	addi r3, r3, 0x188
/* 80164DF4 00161D54  48 05 BB 31 */	bl GetTotalInterference__19CStaticInterferenceCFv
/* 80164DF8 00161D58  C0 5E 06 10 */	lfs f2, 0x610(r30)
/* 80164DFC 00161D5C  C0 0D 8D 1C */	lfs f0, lbl_805A78DC@sda21(r13)
/* 80164E00 00161D60  EC 22 08 28 */	fsubs f1, f2, f1
/* 80164E04 00161D64  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164E08 00161D68  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80164E0C 00161D6C  40 80 00 0C */	bge lbl_80164E18
/* 80164E10 00161D70  38 61 00 44 */	addi r3, r1, 0x44
/* 80164E14 00161D74  48 00 00 08 */	b lbl_80164E1C
lbl_80164E18:
/* 80164E18 00161D78  38 6D 8D 1C */	addi r3, r13, lbl_805A78DC@sda21
lbl_80164E1C:
/* 80164E1C 00161D7C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80164E20 00161D80  38 81 00 14 */	addi r4, r1, 0x14
/* 80164E24 00161D84  C0 23 00 00 */	lfs f1, 0(r3)
/* 80164E28 00161D88  C0 42 9F 8C */	lfs f2, lbl_805ABCAC@sda21(r2)
/* 80164E2C 00161D8C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80164E30 00161D90  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80164E34 00161D94  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80164E38 00161D98  80 63 00 00 */	lwz r3, 0(r3)
/* 80164E3C 00161D9C  38 63 01 88 */	addi r3, r3, 0x188
/* 80164E40 00161DA0  48 05 BC F9 */	bl AddSource__19CStaticInterferenceF9TUniqueId
lbl_80164E44:
/* 80164E44 00161DA4  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164E48 00161DA8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80164E4C 00161DAC  40 82 00 50 */	bne lbl_80164E9C
/* 80164E50 00161DB0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80164E54 00161DB4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164E58 00161DB8  41 82 00 44 */	beq lbl_80164E9C
/* 80164E5C 00161DBC  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80164E60 00161DC0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164E64 00161DC4  40 82 00 38 */	bne lbl_80164E9C
/* 80164E68 00161DC8  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 80164E6C 00161DCC  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164E70 00161DD0  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80164E74 00161DD4  D0 3E 05 E0 */	stfs f1, 0x5e0(r30)
/* 80164E78 00161DD8  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 80164E7C 00161DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164E80 00161DE0  4C 40 13 82 */	cror 2, 0, 2
/* 80164E84 00161DE4  40 82 00 18 */	bne lbl_80164E9C
/* 80164E88 00161DE8  7F C3 F3 78 */	mr r3, r30
/* 80164E8C 00161DEC  7F E4 FB 78 */	mr r4, r31
/* 80164E90 00161DF0  4B FF E5 19 */	bl sub_801633a8
/* 80164E94 00161DF4  C0 02 9F C0 */	lfs f0, lbl_805ABCE0@sda21(r2)
/* 80164E98 00161DF8  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
lbl_80164E9C:
/* 80164E9C 00161DFC  7F C3 F3 78 */	mr r3, r30
/* 80164EA0 00161E00  7F E4 FB 78 */	mr r4, r31
/* 80164EA4 00161E04  81 9E 00 00 */	lwz r12, 0(r30)
/* 80164EA8 00161E08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80164EAC 00161E0C  7D 89 03 A6 */	mtctr r12
/* 80164EB0 00161E10  4E 80 04 21 */	bctrl 
/* 80164EB4 00161E14  C0 5E 06 00 */	lfs f2, 0x600(r30)
/* 80164EB8 00161E18  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80164EBC 00161E1C  C0 9E 06 04 */	lfs f4, 0x604(r30)
/* 80164EC0 00161E20  EC 22 00 28 */	fsubs f1, f2, f0
/* 80164EC4 00161E24  C0 63 00 00 */	lfs f3, 0(r3)
/* 80164EC8 00161E28  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 80164ECC 00161E2C  EC 64 18 28 */	fsubs f3, f4, f3
/* 80164ED0 00161E30  FC 20 0A 10 */	fabs f1, f1
/* 80164ED4 00161E34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164ED8 00161E38  41 80 00 28 */	blt lbl_80164F00
/* 80164EDC 00161E3C  EC 03 10 24 */	fdivs f0, f3, f2
/* 80164EE0 00161E40  C0 3E 05 D0 */	lfs f1, 0x5d0(r30)
/* 80164EE4 00161E44  EC 01 00 28 */	fsubs f0, f1, f0
/* 80164EE8 00161E48  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 80164EEC 00161E4C  C0 1E 06 00 */	lfs f0, 0x600(r30)
/* 80164EF0 00161E50  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 80164EF4 00161E54  EC 03 00 24 */	fdivs f0, f3, f0
/* 80164EF8 00161E58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80164EFC 00161E5C  D0 1E 06 24 */	stfs f0, 0x624(r30)
lbl_80164F00:
/* 80164F00 00161E60  7F C3 F3 78 */	mr r3, r30
/* 80164F04 00161E64  7F E4 FB 78 */	mr r4, r31
/* 80164F08 00161E68  81 9E 00 00 */	lwz r12, 0(r30)
/* 80164F0C 00161E6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80164F10 00161E70  7D 89 03 A6 */	mtctr r12
/* 80164F14 00161E74  4E 80 04 21 */	bctrl 
/* 80164F18 00161E78  C0 03 00 00 */	lfs f0, 0(r3)
/* 80164F1C 00161E7C  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80164F20 00161E80  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 80164F24 00161E84  2C 00 00 01 */	cmpwi r0, 1
/* 80164F28 00161E88  40 82 01 44 */	bne lbl_8016506C
/* 80164F2C 00161E8C  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80164F30 00161E90  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80164F34 00161E94  41 82 00 38 */	beq lbl_80164F6C
/* 80164F38 00161E98  C0 42 9F B4 */	lfs f2, lbl_805ABCD4@sda21(r2)
/* 80164F3C 00161E9C  C0 3E 05 DC */	lfs f1, 0x5dc(r30)
/* 80164F40 00161EA0  C0 0D 8D 20 */	lfs f0, lbl_805A78E0@sda21(r13)
/* 80164F44 00161EA4  EC 22 0F FA */	fmadds f1, f2, f31, f1
/* 80164F48 00161EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164F4C 00161EAC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80164F50 00161EB0  40 80 00 0C */	bge lbl_80164F5C
/* 80164F54 00161EB4  38 61 00 40 */	addi r3, r1, 0x40
/* 80164F58 00161EB8  48 00 00 08 */	b lbl_80164F60
lbl_80164F5C:
/* 80164F5C 00161EBC  38 6D 8D 20 */	addi r3, r13, lbl_805A78E0@sda21
lbl_80164F60:
/* 80164F60 00161EC0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80164F64 00161EC4  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 80164F68 00161EC8  48 00 00 34 */	b lbl_80164F9C
lbl_80164F6C:
/* 80164F6C 00161ECC  C0 42 9F B4 */	lfs f2, lbl_805ABCD4@sda21(r2)
/* 80164F70 00161ED0  C0 3E 05 DC */	lfs f1, 0x5dc(r30)
/* 80164F74 00161ED4  C0 0D 8D 24 */	lfs f0, lbl_805A78E4@sda21(r13)
/* 80164F78 00161ED8  EC 22 0F FC */	fnmsubs f1, f2, f31, f1
/* 80164F7C 00161EDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164F80 00161EE0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80164F84 00161EE4  40 80 00 0C */	bge lbl_80164F90
/* 80164F88 00161EE8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80164F8C 00161EEC  48 00 00 08 */	b lbl_80164F94
lbl_80164F90:
/* 80164F90 00161EF0  38 6D 8D 24 */	addi r3, r13, lbl_805A78E4@sda21
lbl_80164F94:
/* 80164F94 00161EF4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80164F98 00161EF8  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
lbl_80164F9C:
/* 80164F9C 00161EFC  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80164FA0 00161F00  C0 0D 8D 28 */	lfs f0, lbl_805A78E8@sda21(r13)
/* 80164FA4 00161F04  EC 21 F8 28 */	fsubs f1, f1, f31
/* 80164FA8 00161F08  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80164FAC 00161F0C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80164FB0 00161F10  40 80 00 0C */	bge lbl_80164FBC
/* 80164FB4 00161F14  38 61 00 38 */	addi r3, r1, 0x38
/* 80164FB8 00161F18  48 00 00 08 */	b lbl_80164FC0
lbl_80164FBC:
/* 80164FBC 00161F1C  38 6D 8D 28 */	addi r3, r13, lbl_805A78E8@sda21
lbl_80164FC0:
/* 80164FC0 00161F20  C0 03 00 00 */	lfs f0, 0(r3)
/* 80164FC4 00161F24  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80164FC8 00161F28  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80164FCC 00161F2C  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 80164FD0 00161F30  C0 5E 05 DC */	lfs f2, 0x5dc(r30)
/* 80164FD4 00161F34  EC 22 08 28 */	fsubs f1, f2, f1
/* 80164FD8 00161F38  FC 20 0A 10 */	fabs f1, f1
/* 80164FDC 00161F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80164FE0 00161F40  41 80 00 68 */	blt lbl_80165048
/* 80164FE4 00161F44  80 1E 07 D0 */	lwz r0, 0x7d0(r30)
/* 80164FE8 00161F48  28 00 00 00 */	cmplwi r0, 0
/* 80164FEC 00161F4C  40 82 00 80 */	bne lbl_8016506C
/* 80164FF0 00161F50  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80164FF4 00161F54  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80164FF8 00161F58  41 82 00 74 */	beq lbl_8016506C
/* 80164FFC 00161F5C  81 5E 00 04 */	lwz r10, 4(r30)
/* 80165000 00161F60  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80165004 00161F64  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80165008 00161F68  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 8016500C 00161F6C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80165010 00161F70  38 61 00 34 */	addi r3, r1, 0x34
/* 80165014 00161F74  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80165018 00161F78  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 8016501C 00161F7C  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 80165020 00161F80  38 80 00 DD */	li r4, 0xdd
/* 80165024 00161F84  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80165028 00161F88  38 E0 00 01 */	li r7, 1
/* 8016502C 00161F8C  39 00 00 01 */	li r8, 1
/* 80165030 00161F90  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80165034 00161F94  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 80165038 00161F98  48 18 52 79 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8016503C 00161F9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80165040 00161FA0  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80165044 00161FA4  48 00 00 28 */	b lbl_8016506C
lbl_80165048:
/* 80165048 00161FA8  80 1E 07 D0 */	lwz r0, 0x7d0(r30)
/* 8016504C 00161FAC  28 00 00 00 */	cmplwi r0, 0
/* 80165050 00161FB0  41 82 00 1C */	beq lbl_8016506C
/* 80165054 00161FB4  80 1E 07 D0 */	lwz r0, 0x7d0(r30)
/* 80165058 00161FB8  38 61 00 30 */	addi r3, r1, 0x30
/* 8016505C 00161FBC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80165060 00161FC0  48 18 4E 25 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80165064 00161FC4  38 00 00 00 */	li r0, 0
/* 80165068 00161FC8  90 1E 07 D0 */	stw r0, 0x7d0(r30)
lbl_8016506C:
/* 8016506C 00161FCC  FC 20 F8 90 */	fmr f1, f31
/* 80165070 00161FD0  7F C3 F3 78 */	mr r3, r30
/* 80165074 00161FD4  7F E4 FB 78 */	mr r4, r31
/* 80165078 00161FD8  4B FF A1 E5 */	bl sub_8015f25c
/* 8016507C 00161FDC  FC 20 F8 90 */	fmr f1, f31
/* 80165080 00161FE0  7F C3 F3 78 */	mr r3, r30
/* 80165084 00161FE4  4B FF A0 D5 */	bl sub_8015f158
/* 80165088 00161FE8  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 8016508C 00161FEC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165090 00161FF0  40 82 00 48 */	bne lbl_801650D8
/* 80165094 00161FF4  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80165098 00161FF8  FC 20 F8 90 */	fmr f1, f31
/* 8016509C 00161FFC  C0 02 A0 0C */	lfs f0, lbl_805ABD2C@sda21(r2)
/* 801650A0 00162000  7F E3 FB 78 */	mr r3, r31
/* 801650A4 00162004  C0 85 00 04 */	lfs f4, 4(r5)
/* 801650A8 00162008  7F C4 F3 78 */	mr r4, r30
/* 801650AC 0016200C  C0 45 00 00 */	lfs f2, 0(r5)
/* 801650B0 00162010  C0 A5 00 08 */	lfs f5, 8(r5)
/* 801650B4 00162014  EC 60 01 32 */	fmuls f3, f0, f4
/* 801650B8 00162018  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801650BC 0016201C  38 A0 00 08 */	li r5, 8
/* 801650C0 00162020  C0 42 9F 78 */	lfs f2, lbl_805ABC98@sda21(r2)
/* 801650C4 00162024  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 801650C8 00162028  C0 82 A0 10 */	lfs f4, lbl_805ABD30@sda21(r2)
/* 801650CC 0016202C  D0 A1 00 CC */	stfs f5, 0xcc(r1)
/* 801650D0 00162030  C0 A2 9F 80 */	lfs f5, lbl_805ABCA0@sda21(r2)
/* 801650D4 00162034  48 01 AA B1 */	bl sub_8017fb84
lbl_801650D8:
/* 801650D8 00162038  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 801650DC 0016203C  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801650E0 00162040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801650E4 00162044  4C 40 13 82 */	cror 2, 0, 2
/* 801650E8 00162048  40 82 00 7C */	bne lbl_80165164
/* 801650EC 0016204C  80 AD 8D 2C */	lwz r5, lbl_805A78EC@sda21(r13)
/* 801650F0 00162050  38 60 00 00 */	li r3, 0
/* 801650F4 00162054  38 80 00 01 */	li r4, 1
/* 801650F8 00162058  48 22 4D FD */	bl __shl2i
/* 801650FC 0016205C  39 00 00 00 */	li r8, 0
/* 80165100 00162060  38 00 00 01 */	li r0, 1
/* 80165104 00162064  90 81 01 8C */	stw r4, 0x18c(r1)
/* 80165108 00162068  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 8016510C 0016206C  38 C4 67 00 */	addi r6, r4, lbl_805A6700@l
/* 80165110 00162070  C0 22 9F EC */	lfs f1, lbl_805ABD0C@sda21(r2)
/* 80165114 00162074  90 61 01 88 */	stw r3, 0x188(r1)
/* 80165118 00162078  7F E4 FB 78 */	mr r4, r31
/* 8016511C 0016207C  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 80165120 00162080  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80165124 00162084  91 01 01 94 */	stw r8, 0x194(r1)
/* 80165128 00162088  38 E1 01 88 */	addi r7, r1, 0x188
/* 8016512C 0016208C  91 01 01 90 */	stw r8, 0x190(r1)
/* 80165130 00162090  90 01 01 98 */	stw r0, 0x198(r1)
/* 80165134 00162094  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80165138 00162098  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8016513C 0016209C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80165140 001620A0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80165144 001620A4  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 80165148 001620A8  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 8016514C 001620AC  4B EE 7E 4D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80165150 001620B0  C0 21 01 B8 */	lfs f1, 0x1b8(r1)
/* 80165154 001620B4  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80165158 001620B8  D0 3E 06 68 */	stfs f1, 0x668(r30)
/* 8016515C 001620BC  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 80165160 001620C0  48 00 00 0C */	b lbl_8016516C
lbl_80165164:
/* 80165164 001620C4  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80165168 001620C8  D0 1E 06 6C */	stfs f0, 0x66c(r30)
lbl_8016516C:
/* 8016516C 001620CC  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80165170 001620D0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165174 001620D4  41 82 02 88 */	beq lbl_801653FC
/* 80165178 001620D8  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 8016517C 001620DC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165180 001620E0  41 82 02 7C */	beq lbl_801653FC
/* 80165184 001620E4  38 00 00 00 */	li r0, 0
/* 80165188 001620E8  7F C4 F3 78 */	mr r4, r30
/* 8016518C 001620EC  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 80165190 001620F0  38 61 01 70 */	addi r3, r1, 0x170
/* 80165194 001620F4  4B FB 57 99 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80165198 001620F8  3C 60 80 5A */	lis r3, lbl_805A6700@ha
/* 8016519C 001620FC  C1 21 01 70 */	lfs f9, 0x170(r1)
/* 801651A0 00162100  3B A3 67 00 */	addi r29, r3, lbl_805A6700@l
/* 801651A4 00162104  C1 01 01 74 */	lfs f8, 0x174(r1)
/* 801651A8 00162108  C0 E1 01 78 */	lfs f7, 0x178(r1)
/* 801651AC 0016210C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 801651B0 00162110  C0 C1 01 7C */	lfs f6, 0x17c(r1)
/* 801651B4 00162114  38 81 00 AC */	addi r4, r1, 0xac
/* 801651B8 00162118  C0 A1 01 80 */	lfs f5, 0x180(r1)
/* 801651BC 0016211C  C0 81 01 84 */	lfs f4, 0x184(r1)
/* 801651C0 00162120  C0 62 A0 14 */	lfs f3, lbl_805ABD34@sda21(r2)
/* 801651C4 00162124  C0 5D 00 04 */	lfs f2, 4(r29)
/* 801651C8 00162128  C0 3D 00 08 */	lfs f1, 8(r29)
/* 801651CC 0016212C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801651D0 00162130  ED 43 00 B2 */	fmuls f10, f3, f2
/* 801651D4 00162134  EC 43 00 72 */	fmuls f2, f3, f1
/* 801651D8 00162138  D1 21 01 A0 */	stfs f9, 0x1a0(r1)
/* 801651DC 0016213C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801651E0 00162140  D1 01 01 A4 */	stfs f8, 0x1a4(r1)
/* 801651E4 00162144  D0 E1 01 A8 */	stfs f7, 0x1a8(r1)
/* 801651E8 00162148  D0 C1 01 AC */	stfs f6, 0x1ac(r1)
/* 801651EC 0016214C  D0 A1 01 B0 */	stfs f5, 0x1b0(r1)
/* 801651F0 00162150  D0 81 01 B4 */	stfs f4, 0x1b4(r1)
/* 801651F4 00162154  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 801651F8 00162158  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801651FC 0016215C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80165200 00162160  EC 66 10 2A */	fadds f3, f6, f2
/* 80165204 00162164  EC 85 50 2A */	fadds f4, f5, f10
/* 80165208 00162168  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8016520C 0016216C  EC 01 00 2A */	fadds f0, f1, f0
/* 80165210 00162170  D1 41 00 98 */	stfs f10, 0x98(r1)
/* 80165214 00162174  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80165218 00162178  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8016521C 0016217C  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 80165220 00162180  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 80165224 00162184  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80165228 00162188  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 8016522C 0016218C  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 80165230 00162190  48 1D 28 D9 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80165234 00162194  80 AD 8D 30 */	lwz r5, lbl_805A78F0@sda21(r13)
/* 80165238 00162198  38 60 00 00 */	li r3, 0
/* 8016523C 0016219C  38 80 00 01 */	li r4, 1
/* 80165240 001621A0  48 22 4C B5 */	bl __shl2i
/* 80165244 001621A4  38 A0 00 00 */	li r5, 0
/* 80165248 001621A8  38 00 00 01 */	li r0, 1
/* 8016524C 001621AC  90 81 01 44 */	stw r4, 0x144(r1)
/* 80165250 001621B0  7F C4 F3 78 */	mr r4, r30
/* 80165254 001621B4  90 61 01 40 */	stw r3, 0x140(r1)
/* 80165258 001621B8  38 61 01 58 */	addi r3, r1, 0x158
/* 8016525C 001621BC  90 A1 01 4C */	stw r5, 0x14c(r1)
/* 80165260 001621C0  90 A1 01 48 */	stw r5, 0x148(r1)
/* 80165264 001621C4  90 01 01 50 */	stw r0, 0x150(r1)
/* 80165268 001621C8  4B FB 56 C5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8016526C 001621CC  7F E3 FB 78 */	mr r3, r31
/* 80165270 001621D0  7F C7 F3 78 */	mr r7, r30
/* 80165274 001621D4  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80165278 001621D8  38 A1 01 58 */	addi r5, r1, 0x158
/* 8016527C 001621DC  38 C1 01 40 */	addi r6, r1, 0x140
/* 80165280 001621E0  4B EE 74 A1 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80165284 001621E4  3B 81 01 EC */	addi r28, r1, 0x1ec
/* 80165288 001621E8  7F 9B E3 78 */	mr r27, r28
/* 8016528C 001621EC  48 00 01 08 */	b lbl_80165394
lbl_80165290:
/* 80165290 001621F0  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80165294 001621F4  7F E3 FB 78 */	mr r3, r31
/* 80165298 001621F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8016529C 001621FC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801652A0 00162200  4B EE 73 05 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801652A4 00162204  7C 64 1B 78 */	mr r4, r3
/* 801652A8 00162208  38 61 00 50 */	addi r3, r1, 0x50
/* 801652AC 0016220C  4B F4 15 B5 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 801652B0 00162210  80 83 00 04 */	lwz r4, 4(r3)
/* 801652B4 00162214  28 04 00 00 */	cmplwi r4, 0
/* 801652B8 00162218  41 82 00 D8 */	beq lbl_80165390
/* 801652BC 0016221C  C3 DE 00 60 */	lfs f30, 0x60(r30)
/* 801652C0 00162220  38 61 01 24 */	addi r3, r1, 0x124
/* 801652C4 00162224  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801652C8 00162228  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801652CC 0016222C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 801652D0 00162230  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801652D4 00162234  D3 C1 00 90 */	stfs f30, 0x90(r1)
/* 801652D8 00162238  4B F1 13 F5 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 801652DC 0016223C  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 801652E0 00162240  C0 02 9F B4 */	lfs f0, lbl_805ABCD4@sda21(r2)
/* 801652E4 00162244  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801652E8 00162248  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801652EC 0016224C  40 80 00 A4 */	bge lbl_80165390
/* 801652F0 00162250  C8 02 A0 20 */	lfd f0, lbl_805ABD40@sda21(r2)
/* 801652F4 00162254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801652F8 00162258  40 80 00 0C */	bge lbl_80165304
/* 801652FC 0016225C  C0 62 A0 18 */	lfs f3, lbl_805ABD38@sda21(r2)
/* 80165300 00162260  48 00 00 08 */	b lbl_80165308
lbl_80165304:
/* 80165304 00162264  C0 62 A0 14 */	lfs f3, lbl_805ABD34@sda21(r2)
lbl_80165308:
/* 80165308 00162268  3C 60 80 5A */	lis r3, lbl_805A6700@ha
/* 8016530C 0016226C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 80165310 00162270  C0 03 67 00 */	lfs f0, lbl_805A6700@l(r3)
/* 80165314 00162274  38 61 00 70 */	addi r3, r1, 0x70
/* 80165318 00162278  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8016531C 0016227C  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80165320 00162280  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80165324 00162284  38 9E 00 34 */	addi r4, r30, 0x34
/* 80165328 00162288  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8016532C 0016228C  38 A1 01 18 */	addi r5, r1, 0x118
/* 80165330 00162290  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80165334 00162294  EC 03 00 32 */	fmuls f0, f3, f0
/* 80165338 00162298  EC 23 00 72 */	fmuls f1, f3, f1
/* 8016533C 0016229C  D0 41 01 1C */	stfs f2, 0x11c(r1)
/* 80165340 001622A0  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 80165344 001622A4  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 80165348 001622A8  48 1A D6 DD */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8016534C 001622AC  FC 20 F8 90 */	fmr f1, f31
/* 80165350 001622B0  7F C4 F3 78 */	mr r4, r30
/* 80165354 001622B4  38 61 00 7C */	addi r3, r1, 0x7c
/* 80165358 001622B8  38 A1 00 70 */	addi r5, r1, 0x70
/* 8016535C 001622BC  4B FB 5C AD */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 80165360 001622C0  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80165364 001622C4  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 80165368 001622C8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8016536C 001622CC  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80165370 001622D0  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80165374 001622D4  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80165378 001622D8  4B EB 61 BD */	bl Identity__10CAxisAngleFv
/* 8016537C 001622DC  7C 65 1B 78 */	mr r5, r3
/* 80165380 001622E0  7F C3 F3 78 */	mr r3, r30
/* 80165384 001622E4  38 81 01 0C */	addi r4, r1, 0x10c
/* 80165388 001622E8  4B FB 70 11 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 8016538C 001622EC  48 00 00 1C */	b lbl_801653A8
lbl_80165390:
/* 80165390 001622F0  3B 7B 00 02 */	addi r27, r27, 2
lbl_80165394:
/* 80165394 001622F4  80 01 01 E8 */	lwz r0, 0x1e8(r1)
/* 80165398 001622F8  54 00 08 3C */	slwi r0, r0, 1
/* 8016539C 001622FC  7C 1C 02 14 */	add r0, r28, r0
/* 801653A0 00162300  7C 1B 00 40 */	cmplw r27, r0
/* 801653A4 00162304  41 80 FE EC */	blt lbl_80165290
lbl_801653A8:
/* 801653A8 00162308  80 A1 01 E8 */	lwz r5, 0x1e8(r1)
/* 801653AC 0016230C  38 60 00 00 */	li r3, 0
/* 801653B0 00162310  2C 05 00 00 */	cmpwi r5, 0
/* 801653B4 00162314  40 81 00 40 */	ble lbl_801653F4
/* 801653B8 00162318  2C 05 00 08 */	cmpwi r5, 8
/* 801653BC 0016231C  38 85 FF F8 */	addi r4, r5, -8
/* 801653C0 00162320  40 81 00 20 */	ble lbl_801653E0
/* 801653C4 00162324  38 04 00 07 */	addi r0, r4, 7
/* 801653C8 00162328  54 00 E8 FE */	srwi r0, r0, 3
/* 801653CC 0016232C  7C 09 03 A6 */	mtctr r0
/* 801653D0 00162330  2C 04 00 00 */	cmpwi r4, 0
/* 801653D4 00162334  40 81 00 0C */	ble lbl_801653E0
lbl_801653D8:
/* 801653D8 00162338  38 63 00 08 */	addi r3, r3, 8
/* 801653DC 0016233C  42 00 FF FC */	bdnz lbl_801653D8
lbl_801653E0:
/* 801653E0 00162340  7C 03 28 50 */	subf r0, r3, r5
/* 801653E4 00162344  7C 09 03 A6 */	mtctr r0
/* 801653E8 00162348  7C 03 28 00 */	cmpw r3, r5
/* 801653EC 0016234C  40 80 00 08 */	bge lbl_801653F4
lbl_801653F0:
/* 801653F0 00162350  42 00 00 00 */	bdnz lbl_801653F0
lbl_801653F4:
/* 801653F4 00162354  38 00 00 00 */	li r0, 0
/* 801653F8 00162358  90 01 01 E8 */	stw r0, 0x1e8(r1)
lbl_801653FC:
/* 801653FC 0016235C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80165400 00162360  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165404 00162364  41 82 00 A0 */	beq lbl_801654A4
/* 80165408 00162368  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 8016540C 0016236C  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 80165410 00162370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165414 00162374  40 80 00 90 */	bge lbl_801654A4
/* 80165418 00162378  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 8016541C 0016237C  C0 62 9F 7C */	lfs f3, lbl_805ABC9C@sda21(r2)
/* 80165420 00162380  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80165424 00162384  38 61 00 58 */	addi r3, r1, 0x58
/* 80165428 00162388  C0 46 00 00 */	lfs f2, 0(r6)
/* 8016542C 0016238C  38 9E 00 34 */	addi r4, r30, 0x34
/* 80165430 00162390  C0 26 00 04 */	lfs f1, 4(r6)
/* 80165434 00162394  38 A1 01 00 */	addi r5, r1, 0x100
/* 80165438 00162398  C0 06 00 08 */	lfs f0, 8(r6)
/* 8016543C 0016239C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80165440 001623A0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80165444 001623A4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80165448 001623A8  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 8016544C 001623AC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80165450 001623B0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80165454 001623B4  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80165458 001623B8  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 8016545C 001623BC  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80165460 001623C0  48 1A D5 C5 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80165464 001623C4  FC 20 F8 90 */	fmr f1, f31
/* 80165468 001623C8  7F C4 F3 78 */	mr r4, r30
/* 8016546C 001623CC  38 61 00 64 */	addi r3, r1, 0x64
/* 80165470 001623D0  38 A1 00 58 */	addi r5, r1, 0x58
/* 80165474 001623D4  4B FB 5B 95 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 80165478 001623D8  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8016547C 001623DC  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80165480 001623E0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80165484 001623E4  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80165488 001623E8  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 8016548C 001623EC  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80165490 001623F0  4B EB 60 A5 */	bl Identity__10CAxisAngleFv
/* 80165494 001623F4  7C 65 1B 78 */	mr r5, r3
/* 80165498 001623F8  7F C3 F3 78 */	mr r3, r30
/* 8016549C 001623FC  38 81 00 F4 */	addi r4, r1, 0xf4
/* 801654A0 00162400  4B FB 6E F9 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_801654A4:
/* 801654A4 00162404  88 7E 04 00 */	lbz r3, 0x400(r30)
/* 801654A8 00162408  88 1E 00 E7 */	lbz r0, 0xe7(r30)
/* 801654AC 0016240C  54 64 D7 FE */	rlwinm r4, r3, 0x1a, 0x1f, 0x1f
/* 801654B0 00162410  7C 64 00 D0 */	neg r3, r4
/* 801654B4 00162414  7C 63 23 78 */	or r3, r3, r4
/* 801654B8 00162418  50 60 0F FE */	rlwimi r0, r3, 1, 0x1f, 0x1f
/* 801654BC 0016241C  98 1E 00 E7 */	stb r0, 0xe7(r30)
lbl_801654C0:
/* 801654C0 00162420  E3 E1 0A 28 */	psq_l f31, -1496(r1), 0, qr0
/* 801654C4 00162424  CB E1 0A 20 */	lfd f31, 0xa20(r1)
/* 801654C8 00162428  E3 C1 0A 18 */	psq_l f30, -1512(r1), 0, qr0
/* 801654CC 0016242C  CB C1 0A 10 */	lfd f30, 0xa10(r1)
/* 801654D0 00162430  BB 61 09 FC */	lmw r27, 0x9fc(r1)
/* 801654D4 00162434  80 01 0A 34 */	lwz r0, 0xa34(r1)
/* 801654D8 00162438  7C 08 03 A6 */	mtlr r0
/* 801654DC 0016243C  38 21 0A 30 */	addi r1, r1, 0xa30
/* 801654E0 00162440  4E 80 00 20 */	blr 

.global GetDamageVulnerability__6CDroneCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__6CDroneCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 801654E4 00162444  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801654E8 00162448  7C 08 02 A6 */	mflr r0
/* 801654EC 0016244C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801654F0 00162450  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801654F4 00162454  7C 7F 1B 78 */	mr r31, r3
/* 801654F8 00162458  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 801654FC 0016245C  2C 00 00 01 */	cmpwi r0, 1
/* 80165500 00162460  40 82 00 4C */	bne lbl_8016554C
/* 80165504 00162464  C0 45 00 08 */	lfs f2, 8(r5)
/* 80165508 00162468  38 81 00 08 */	addi r4, r1, 8
/* 8016550C 0016246C  C0 25 00 04 */	lfs f1, 4(r5)
/* 80165510 00162470  C0 05 00 00 */	lfs f0, 0(r5)
/* 80165514 00162474  FC 40 10 50 */	fneg f2, f2
/* 80165518 00162478  FC 20 08 50 */	fneg f1, f1
/* 8016551C 0016247C  FC 00 00 50 */	fneg f0, f0
/* 80165520 00162480  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80165524 00162484  D0 01 00 08 */	stfs f0, 8(r1)
/* 80165528 00162488  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8016552C 0016248C  48 00 00 C1 */	bl sub_801655ec
/* 80165530 00162490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80165534 00162494  41 82 00 18 */	beq lbl_8016554C
/* 80165538 00162498  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 8016553C 0016249C  3C 60 80 57 */	lis r3, lbl_8056D780@ha
/* 80165540 001624A0  38 63 D7 80 */	addi r3, r3, lbl_8056D780@l
/* 80165544 001624A4  D0 1F 05 E8 */	stfs f0, 0x5e8(r31)
/* 80165548 001624A8  48 00 00 0C */	b lbl_80165554
lbl_8016554C:
/* 8016554C 001624AC  7F E3 FB 78 */	mr r3, r31
/* 80165550 001624B0  4B F3 D8 21 */	bl GetDamageVulnerability__3CAiCFv
lbl_80165554:
/* 80165554 001624B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80165558 001624B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8016555C 001624BC  7C 08 03 A6 */	mtlr r0
/* 80165560 001624C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80165564 001624C4  4E 80 00 20 */	blr 

.global GetCollisionResponseType__6CDroneCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__6CDroneCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 80165568 001624C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016556C 001624CC  7C 08 02 A6 */	mflr r0
/* 80165570 001624D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80165574 001624D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80165578 001624D8  3B E0 00 24 */	li r31, 0x24
/* 8016557C 001624DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80165580 001624E0  7C 7E 1B 78 */	mr r30, r3
/* 80165584 001624E4  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 80165588 001624E8  2C 00 00 01 */	cmpwi r0, 1
/* 8016558C 001624EC  40 82 00 44 */	bne lbl_801655D0
/* 80165590 001624F0  C0 45 00 08 */	lfs f2, 8(r5)
/* 80165594 001624F4  38 81 00 08 */	addi r4, r1, 8
/* 80165598 001624F8  C0 25 00 04 */	lfs f1, 4(r5)
/* 8016559C 001624FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 801655A0 00162500  FC 40 10 50 */	fneg f2, f2
/* 801655A4 00162504  FC 20 08 50 */	fneg f1, f1
/* 801655A8 00162508  FC 00 00 50 */	fneg f0, f0
/* 801655AC 0016250C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801655B0 00162510  D0 01 00 08 */	stfs f0, 8(r1)
/* 801655B4 00162514  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801655B8 00162518  48 00 00 35 */	bl sub_801655ec
/* 801655BC 0016251C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801655C0 00162520  41 82 00 10 */	beq lbl_801655D0
/* 801655C4 00162524  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 801655C8 00162528  3B E0 00 56 */	li r31, 0x56
/* 801655CC 0016252C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
lbl_801655D0:
/* 801655D0 00162530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801655D4 00162534  7F E3 FB 78 */	mr r3, r31
/* 801655D8 00162538  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801655DC 0016253C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801655E0 00162540  7C 08 03 A6 */	mtlr r0
/* 801655E4 00162544  38 21 00 20 */	addi r1, r1, 0x20
/* 801655E8 00162548  4E 80 00 20 */	blr 

.global sub_801655ec
sub_801655ec:
/* 801655EC 0016254C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801655F0 00162550  7C 08 02 A6 */	mflr r0
/* 801655F4 00162554  90 01 00 74 */	stw r0, 0x74(r1)
/* 801655F8 00162558  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801655FC 0016255C  7C 9F 23 78 */	mr r31, r4
/* 80165600 00162560  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80165604 00162564  7C 7E 1B 78 */	mr r30, r3
/* 80165608 00162568  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8016560C 0016256C  2C 00 00 01 */	cmpwi r0, 1
/* 80165610 00162570  41 82 00 0C */	beq lbl_8016561C
/* 80165614 00162574  38 60 00 00 */	li r3, 0
/* 80165618 00162578  48 00 00 A4 */	b lbl_801656BC
lbl_8016561C:
/* 8016561C 0016257C  C0 5E 05 DC */	lfs f2, 0x5dc(r30)
/* 80165620 00162580  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80165624 00162584  C0 02 9F 90 */	lfs f0, lbl_805ABCB0@sda21(r2)
/* 80165628 00162588  EC 22 08 28 */	fsubs f1, f2, f1
/* 8016562C 0016258C  FC 20 0A 10 */	fabs f1, f1
/* 80165630 00162590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165634 00162594  40 80 00 0C */	bge lbl_80165640
/* 80165638 00162598  38 60 00 00 */	li r3, 0
/* 8016563C 0016259C  48 00 00 80 */	b lbl_801656BC
lbl_80165640:
/* 80165640 001625A0  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 80165644 001625A4  38 61 00 14 */	addi r3, r1, 0x14
/* 80165648 001625A8  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 8016564C 001625AC  38 84 00 2A */	addi r4, r4, 0x2a
/* 80165650 001625B0  4B E9 F6 69 */	bl string_l__4rstlFPCc
/* 80165654 001625B4  7F E4 FB 78 */	mr r4, r31
/* 80165658 001625B8  38 61 00 08 */	addi r3, r1, 8
/* 8016565C 001625BC  48 1A F1 F5 */	bl AsNormalized__9CVector3fCFv
/* 80165660 001625C0  7F C4 F3 78 */	mr r4, r30
/* 80165664 001625C4  38 61 00 30 */	addi r3, r1, 0x30
/* 80165668 001625C8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8016566C 001625CC  4B F1 33 0D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80165670 001625D0  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 80165674 001625D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80165678 001625D8  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8016567C 001625DC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80165680 001625E0  C0 21 00 08 */	lfs f1, 8(r1)
/* 80165684 001625E4  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 80165688 001625E8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8016568C 001625EC  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 80165690 001625F0  C0 02 A0 28 */	lfs f0, lbl_805ABD48@sda21(r2)
/* 80165694 001625F4  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80165698 001625F8  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 8016569C 001625FC  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801656A0 00162600  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 801656A4 00162604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801656A8 00162608  7C 00 00 26 */	mfcr r0
/* 801656AC 0016260C  38 61 00 14 */	addi r3, r1, 0x14
/* 801656B0 00162610  54 1F 17 FE */	rlwinm r31, r0, 2, 0x1f, 0x1f
/* 801656B4 00162614  48 1D 84 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801656B8 00162618  7F E3 FB 78 */	mr r3, r31
lbl_801656BC:
/* 801656BC 0016261C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801656C0 00162620  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801656C4 00162624  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801656C8 00162628  7C 08 03 A6 */	mtlr r0
/* 801656CC 0016262C  38 21 00 70 */	addi r1, r1, 0x70
/* 801656D0 00162630  4E 80 00 20 */	blr 

.global sub_801656d4
sub_801656d4:
/* 801656D4 00162634  94 21 F6 F0 */	stwu r1, -0x910(r1)
/* 801656D8 00162638  7C 08 02 A6 */	mflr r0
/* 801656DC 0016263C  90 01 09 14 */	stw r0, 0x914(r1)
/* 801656E0 00162640  BF 61 08 FC */	stmw r27, 0x8fc(r1)
/* 801656E4 00162644  7C 7D 1B 78 */	mr r29, r3
/* 801656E8 00162648  7C 9E 23 78 */	mr r30, r4
/* 801656EC 0016264C  7C BF 2B 78 */	mr r31, r5
/* 801656F0 00162650  88 0D A4 20 */	lbz r0, lbl_805A8FE0@sda21(r13)
/* 801656F4 00162654  7C 00 07 75 */	extsb. r0, r0
/* 801656F8 00162658  40 82 00 58 */	bne lbl_80165750
/* 801656FC 0016265C  80 AD 8D 10 */	lwz r5, lbl_805A78D0@sda21(r13)
/* 80165700 00162660  38 60 00 00 */	li r3, 0
/* 80165704 00162664  38 80 00 01 */	li r4, 1
/* 80165708 00162668  48 22 47 ED */	bl __shl2i
/* 8016570C 0016266C  80 AD 8D 0C */	lwz r5, lbl_805A78CC@sda21(r13)
/* 80165710 00162670  7C 9B 23 78 */	mr r27, r4
/* 80165714 00162674  7C 7C 1B 78 */	mr r28, r3
/* 80165718 00162678  38 60 00 00 */	li r3, 0
/* 8016571C 0016267C  38 80 00 01 */	li r4, 1
/* 80165720 00162680  48 22 47 D5 */	bl __shl2i
/* 80165724 00162684  3C A0 80 47 */	lis r5, lbl_8046C848@ha
/* 80165728 00162688  38 C0 00 03 */	li r6, 3
/* 8016572C 0016268C  38 A5 C8 48 */	addi r5, r5, lbl_8046C848@l
/* 80165730 00162690  38 00 00 01 */	li r0, 1
/* 80165734 00162694  90 C1 00 80 */	stw r6, 0x80(r1)
/* 80165738 00162698  90 85 00 04 */	stw r4, 4(r5)
/* 8016573C 0016269C  90 65 00 00 */	stw r3, 0(r5)
/* 80165740 001626A0  93 65 00 0C */	stw r27, 0xc(r5)
/* 80165744 001626A4  93 85 00 08 */	stw r28, 8(r5)
/* 80165748 001626A8  90 C5 00 10 */	stw r6, 0x10(r5)
/* 8016574C 001626AC  98 0D A4 20 */	stb r0, lbl_805A8FE0@sda21(r13)
lbl_80165750:
/* 80165750 001626B0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80165754 001626B4  38 A0 00 00 */	li r5, 0
/* 80165758 001626B8  C0 DE 00 24 */	lfs f6, 0x24(r30)
/* 8016575C 001626BC  3C 60 80 47 */	lis r3, lbl_8046C848@ha
/* 80165760 001626C0  C0 BE 00 14 */	lfs f5, 0x14(r30)
/* 80165764 001626C4  38 E3 C8 48 */	addi r7, r3, lbl_8046C848@l
/* 80165768 001626C8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8016576C 001626CC  7F E3 FB 78 */	mr r3, r31
/* 80165770 001626D0  C0 9E 00 2C */	lfs f4, 0x2c(r30)
/* 80165774 001626D4  7F A8 EB 78 */	mr r8, r29
/* 80165778 001626D8  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8016577C 001626DC  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80165780 001626E0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80165784 001626E4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80165788 001626E8  90 A1 00 E8 */	stw r5, 0xe8(r1)
/* 8016578C 001626EC  38 A1 00 48 */	addi r5, r1, 0x48
/* 80165790 001626F0  C0 22 A0 2C */	lfs f1, lbl_805ABD4C@sda21(r2)
/* 80165794 001626F4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80165798 001626F8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8016579C 001626FC  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 801657A0 00162700  D0 C1 00 44 */	stfs f6, 0x44(r1)
/* 801657A4 00162704  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801657A8 00162708  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801657AC 0016270C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801657B0 00162710  4B EE 6F 29 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC9CVector3fRC9CVector3ffRC15CMaterialFilterPC6CActor"
/* 801657B4 00162714  C0 BE 00 24 */	lfs f5, 0x24(r30)
/* 801657B8 00162718  3C 60 80 47 */	lis r3, lbl_8046C848@ha
/* 801657BC 0016271C  C0 9E 00 14 */	lfs f4, 0x14(r30)
/* 801657C0 00162720  39 03 C8 48 */	addi r8, r3, lbl_8046C848@l
/* 801657C4 00162724  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801657C8 00162728  7F E4 FB 78 */	mr r4, r31
/* 801657CC 0016272C  C0 7E 00 2C */	lfs f3, 0x2c(r30)
/* 801657D0 00162730  38 61 00 88 */	addi r3, r1, 0x88
/* 801657D4 00162734  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 801657D8 00162738  38 A1 00 20 */	addi r5, r1, 0x20
/* 801657DC 0016273C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 801657E0 00162740  38 C1 00 30 */	addi r6, r1, 0x30
/* 801657E4 00162744  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801657E8 00162748  38 E1 00 24 */	addi r7, r1, 0x24
/* 801657EC 0016274C  C0 22 A0 2C */	lfs f1, lbl_805ABD4C@sda21(r2)
/* 801657F0 00162750  39 21 00 E8 */	addi r9, r1, 0xe8
/* 801657F4 00162754  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801657F8 00162758  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 801657FC 0016275C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80165800 00162760  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80165804 00162764  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80165808 00162768  4B EE 77 BD */	bl "RayWorldIntersection__13CStateManagerCFR9TUniqueIdRC9CVector3fRC9CVector3ffRC15CMaterialFilterRCQ24rstl32reserved_vector<9TUniqueId,1024>"
/* 8016580C 0016276C  88 81 00 A8 */	lbz r4, 0xa8(r1)
/* 80165810 00162770  C0 E1 00 88 */	lfs f7, 0x88(r1)
/* 80165814 00162774  C0 C1 00 8C */	lfs f6, 0x8c(r1)
/* 80165818 00162778  28 04 00 00 */	cmplwi r4, 0
/* 8016581C 0016277C  C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 80165820 00162780  C0 81 00 94 */	lfs f4, 0x94(r1)
/* 80165824 00162784  C0 61 00 98 */	lfs f3, 0x98(r1)
/* 80165828 00162788  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 8016582C 0016278C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80165830 00162790  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80165834 00162794  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 80165838 00162798  80 61 00 B4 */	lwz r3, 0xb4(r1)
/* 8016583C 0016279C  D0 E1 00 B8 */	stfs f7, 0xb8(r1)
/* 80165840 001627A0  D0 C1 00 BC */	stfs f6, 0xbc(r1)
/* 80165844 001627A4  D0 A1 00 C0 */	stfs f5, 0xc0(r1)
/* 80165848 001627A8  D0 81 00 C4 */	stfs f4, 0xc4(r1)
/* 8016584C 001627AC  D0 61 00 C8 */	stfs f3, 0xc8(r1)
/* 80165850 001627B0  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 80165854 001627B4  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80165858 001627B8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8016585C 001627BC  98 81 00 D8 */	stb r4, 0xd8(r1)
/* 80165860 001627C0  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 80165864 001627C4  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80165868 001627C8  41 82 00 B4 */	beq lbl_8016591C
/* 8016586C 001627CC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80165870 001627D0  A0 81 00 20 */	lhz r4, 0x20(r1)
/* 80165874 001627D4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80165878 001627D8  7C 04 00 40 */	cmplw r4, r0
/* 8016587C 001627DC  40 82 00 74 */	bne lbl_801658F0
/* 80165880 001627E0  80 AD 8C F0 */	lwz r5, lbl_805A78B0@sda21(r13)
/* 80165884 001627E4  38 60 00 00 */	li r3, 0
/* 80165888 001627E8  38 80 00 01 */	li r4, 1
/* 8016588C 001627EC  48 22 46 69 */	bl __shl2i
/* 80165890 001627F0  39 00 00 00 */	li r8, 0
/* 80165894 001627F4  39 40 00 03 */	li r10, 3
/* 80165898 001627F8  90 81 00 5C */	stw r4, 0x5c(r1)
/* 8016589C 001627FC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801658A0 00162800  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801658A4 00162804  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801658A8 00162808  90 61 00 58 */	stw r3, 0x58(r1)
/* 801658AC 0016280C  7F E3 FB 78 */	mr r3, r31
/* 801658B0 00162810  38 81 00 1C */	addi r4, r1, 0x1c
/* 801658B4 00162814  38 A1 00 14 */	addi r5, r1, 0x14
/* 801658B8 00162818  91 01 00 64 */	stw r8, 0x64(r1)
/* 801658BC 0016281C  38 C1 00 10 */	addi r6, r1, 0x10
/* 801658C0 00162820  38 FD 05 AC */	addi r7, r29, 0x5ac
/* 801658C4 00162824  91 01 00 60 */	stw r8, 0x60(r1)
/* 801658C8 00162828  39 01 00 58 */	addi r8, r1, 0x58
/* 801658CC 0016282C  91 41 00 68 */	stw r10, 0x68(r1)
/* 801658D0 00162830  A1 5D 00 08 */	lhz r10, 8(r29)
/* 801658D4 00162834  B1 41 00 10 */	sth r10, 0x10(r1)
/* 801658D8 00162838  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801658DC 0016283C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801658E0 00162840  B1 41 00 0C */	sth r10, 0xc(r1)
/* 801658E4 00162844  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801658E8 00162848  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801658EC 0016284C  4B EE 47 B5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_801658F0:
/* 801658F0 00162850  88 9D 00 E6 */	lbz r4, 0xe6(r29)
/* 801658F4 00162854  7F E3 FB 78 */	mr r3, r31
/* 801658F8 00162858  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801658FC 0016285C  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80165900 00162860  54 89 E7 FE */	rlwinm r9, r4, 0x1c, 0x1f, 0x1f
/* 80165904 00162864  38 C1 00 08 */	addi r6, r1, 8
/* 80165908 00162868  B0 01 00 08 */	sth r0, 8(r1)
/* 8016590C 0016286C  38 FD 05 AC */	addi r7, r29, 0x5ac
/* 80165910 00162870  39 00 00 01 */	li r8, 1
/* 80165914 00162874  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80165918 00162878  4B ED E7 81 */	bl sub_80044098
lbl_8016591C:
/* 8016591C 0016287C  80 A1 00 E8 */	lwz r5, 0xe8(r1)
/* 80165920 00162880  38 60 00 00 */	li r3, 0
/* 80165924 00162884  2C 05 00 00 */	cmpwi r5, 0
/* 80165928 00162888  40 81 00 40 */	ble lbl_80165968
/* 8016592C 0016288C  2C 05 00 08 */	cmpwi r5, 8
/* 80165930 00162890  38 85 FF F8 */	addi r4, r5, -8
/* 80165934 00162894  40 81 00 20 */	ble lbl_80165954
/* 80165938 00162898  38 04 00 07 */	addi r0, r4, 7
/* 8016593C 0016289C  54 00 E8 FE */	srwi r0, r0, 3
/* 80165940 001628A0  7C 09 03 A6 */	mtctr r0
/* 80165944 001628A4  2C 04 00 00 */	cmpwi r4, 0
/* 80165948 001628A8  40 81 00 0C */	ble lbl_80165954
lbl_8016594C:
/* 8016594C 001628AC  38 63 00 08 */	addi r3, r3, 8
/* 80165950 001628B0  42 00 FF FC */	bdnz lbl_8016594C
lbl_80165954:
/* 80165954 001628B4  7C 03 28 50 */	subf r0, r3, r5
/* 80165958 001628B8  7C 09 03 A6 */	mtctr r0
/* 8016595C 001628BC  7C 03 28 00 */	cmpw r3, r5
/* 80165960 001628C0  40 80 00 08 */	bge lbl_80165968
lbl_80165964:
/* 80165964 001628C4  42 00 00 00 */	bdnz lbl_80165964
lbl_80165968:
/* 80165968 001628C8  38 00 00 00 */	li r0, 0
/* 8016596C 001628CC  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80165970 001628D0  BB 61 08 FC */	lmw r27, 0x8fc(r1)
/* 80165974 001628D4  80 01 09 14 */	lwz r0, 0x914(r1)
/* 80165978 001628D8  7C 08 03 A6 */	mtlr r0
/* 8016597C 001628DC  38 21 09 10 */	addi r1, r1, 0x910
/* 80165980 001628E0  4E 80 00 20 */	blr 

.global sub_80165984
sub_80165984:
/* 80165984 001628E4  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80165988 001628E8  7C 08 02 A6 */	mflr r0
/* 8016598C 001628EC  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80165990 001628F0  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 80165994 001628F4  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 80165998 001628F8  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8016599C 001628FC  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 801659A0 00162900  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 801659A4 00162904  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 801659A8 00162908  93 E1 01 7C */	stw r31, 0x17c(r1)
/* 801659AC 0016290C  93 C1 01 78 */	stw r30, 0x178(r1)
/* 801659B0 00162910  93 A1 01 74 */	stw r29, 0x174(r1)
/* 801659B4 00162914  7C 9E 23 78 */	mr r30, r4
/* 801659B8 00162918  7C 7D 1B 78 */	mr r29, r3
/* 801659BC 0016291C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801659C0 00162920  7C BF 2B 78 */	mr r31, r5
/* 801659C4 00162924  7F C5 F3 78 */	mr r5, r30
/* 801659C8 00162928  38 61 00 70 */	addi r3, r1, 0x70
/* 801659CC 0016292C  81 84 00 00 */	lwz r12, 0(r4)
/* 801659D0 00162930  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 801659D4 00162934  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801659D8 00162938  7D 89 03 A6 */	mtctr r12
/* 801659DC 0016293C  4E 80 04 21 */	bctrl 
/* 801659E0 00162940  C0 A1 00 70 */	lfs f5, 0x70(r1)
/* 801659E4 00162944  38 61 00 64 */	addi r3, r1, 0x64
/* 801659E8 00162948  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 801659EC 0016294C  38 81 00 58 */	addi r4, r1, 0x58
/* 801659F0 00162950  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 801659F4 00162954  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 801659F8 00162958  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 801659FC 0016295C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80165A00 00162960  EC 44 10 28 */	fsubs f2, f4, f2
/* 80165A04 00162964  EC 23 08 28 */	fsubs f1, f3, f1
/* 80165A08 00162968  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 80165A0C 0016296C  EC 05 00 28 */	fsubs f0, f5, f0
/* 80165A10 00162970  C3 BF 00 24 */	lfs f29, 0x24(r31)
/* 80165A14 00162974  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80165A18 00162978  C3 DF 00 14 */	lfs f30, 0x14(r31)
/* 80165A1C 0016297C  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 80165A20 00162980  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80165A24 00162984  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80165A28 00162988  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80165A2C 0016298C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80165A30 00162990  48 1A EE 21 */	bl AsNormalized__9CVector3fCFv
/* 80165A34 00162994  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80165A38 00162998  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80165A3C 0016299C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80165A40 001629A0  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 80165A44 001629A4  C0 02 A0 30 */	lfs f0, lbl_805ABD50@sda21(r2)
/* 80165A48 001629A8  EC 22 0F FA */	fmadds f1, f2, f31, f1
/* 80165A4C 001629AC  EC 23 0F 7A */	fmadds f1, f3, f29, f1
/* 80165A50 001629B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165A54 001629B4  40 81 01 78 */	ble lbl_80165BCC
/* 80165A58 001629B8  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80165A5C 001629BC  C7 A4 66 A0 */	lfsu f29, skZero3f@l(r4)
/* 80165A60 001629C0  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80165A64 001629C4  C3 C4 00 04 */	lfs f30, 4(r4)
/* 80165A68 001629C8  C3 E4 00 08 */	lfs f31, 8(r4)
/* 80165A6C 001629CC  48 1A CA 71 */	bl Float__9CRandom16Fv
/* 80165A70 001629D0  C0 02 9F 8C */	lfs f0, lbl_805ABCAC@sda21(r2)
/* 80165A74 001629D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165A78 001629D8  40 81 00 E0 */	ble lbl_80165B58
/* 80165A7C 001629DC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80165A80 001629E0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80165A84 001629E4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80165A88 001629E8  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80165A8C 001629EC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80165A90 001629F0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80165A94 001629F4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80165A98 001629F8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80165A9C 001629FC  38 A1 00 98 */	addi r5, r1, 0x98
/* 80165AA0 00162A00  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80165AA4 00162A04  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80165AA8 00162A08  48 1A E0 69 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80165AAC 00162A0C  38 61 01 34 */	addi r3, r1, 0x134
/* 80165AB0 00162A10  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80165AB4 00162A14  48 1A D0 C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80165AB8 00162A18  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 80165ABC 00162A1C  C0 41 01 48 */	lfs f2, 0x148(r1)
/* 80165AC0 00162A20  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 80165AC4 00162A24  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80165AC8 00162A28  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80165ACC 00162A2C  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 80165AD0 00162A30  C0 42 A0 34 */	lfs f2, lbl_805ABD54@sda21(r2)
/* 80165AD4 00162A34  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80165AD8 00162A38  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80165ADC 00162A3C  48 1A CA 69 */	bl Range__9CRandom16Fff
/* 80165AE0 00162A40  D0 21 00 08 */	stfs f1, 8(r1)
/* 80165AE4 00162A44  38 61 00 3C */	addi r3, r1, 0x3c
/* 80165AE8 00162A48  38 81 00 8C */	addi r4, r1, 0x8c
/* 80165AEC 00162A4C  38 A1 00 08 */	addi r5, r1, 8
/* 80165AF0 00162A50  48 1A B8 05 */	bl AxisAngle__11CQuaternionFRC13CUnitVector3fRC9CRelAngle
/* 80165AF4 00162A54  C0 62 9F B8 */	lfs f3, lbl_805ABCD8@sda21(r2)
/* 80165AF8 00162A58  38 61 00 30 */	addi r3, r1, 0x30
/* 80165AFC 00162A5C  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 80165B00 00162A60  38 81 00 7C */	addi r4, r1, 0x7c
/* 80165B04 00162A64  C0 21 01 44 */	lfs f1, 0x144(r1)
/* 80165B08 00162A68  38 A1 00 24 */	addi r5, r1, 0x24
/* 80165B0C 00162A6C  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80165B10 00162A70  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80165B14 00162A74  EC 23 00 72 */	fmuls f1, f3, f1
/* 80165B18 00162A78  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80165B1C 00162A7C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80165B20 00162A80  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 80165B24 00162A84  C0 81 00 44 */	lfs f4, 0x44(r1)
/* 80165B28 00162A88  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 80165B2C 00162A8C  D0 C1 00 7C */	stfs f6, 0x7c(r1)
/* 80165B30 00162A90  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 80165B34 00162A94  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 80165B38 00162A98  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 80165B3C 00162A9C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80165B40 00162AA0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80165B44 00162AA4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80165B48 00162AA8  48 1A B7 1D */	bl Transform__11CQuaternionCFRC9CVector3f
/* 80165B4C 00162AAC  C3 A1 00 30 */	lfs f29, 0x30(r1)
/* 80165B50 00162AB0  C3 C1 00 34 */	lfs f30, 0x34(r1)
/* 80165B54 00162AB4  C3 E1 00 38 */	lfs f31, 0x38(r1)
lbl_80165B58:
/* 80165B58 00162AB8  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80165B5C 00162ABC  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80165B60 00162AC0  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80165B64 00162AC4  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80165B68 00162AC8  EC 62 F0 2A */	fadds f3, f2, f30
/* 80165B6C 00162ACC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 80165B70 00162AD0  EC 41 F8 2A */	fadds f2, f1, f31
/* 80165B74 00162AD4  C0 BF 00 2C */	lfs f5, 0x2c(r31)
/* 80165B78 00162AD8  EC 20 E8 2A */	fadds f1, f0, f29
/* 80165B7C 00162ADC  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 80165B80 00162AE0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80165B84 00162AE4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80165B88 00162AE8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80165B8C 00162AEC  38 81 00 18 */	addi r4, r1, 0x18
/* 80165B90 00162AF0  38 A1 00 0C */	addi r5, r1, 0xc
/* 80165B94 00162AF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80165B98 00162AF8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80165B9C 00162AFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80165BA0 00162B00  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80165BA4 00162B04  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 80165BA8 00162B08  48 1A DF 69 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80165BAC 00162B0C  38 61 01 04 */	addi r3, r1, 0x104
/* 80165BB0 00162B10  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80165BB4 00162B14  48 1A CF C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80165BB8 00162B18  7F A3 EB 78 */	mr r3, r29
/* 80165BBC 00162B1C  7F C5 F3 78 */	mr r5, r30
/* 80165BC0 00162B20  38 81 01 04 */	addi r4, r1, 0x104
/* 80165BC4 00162B24  4B FF FB 11 */	bl sub_801656d4
/* 80165BC8 00162B28  48 00 00 14 */	b lbl_80165BDC
lbl_80165BCC:
/* 80165BCC 00162B2C  7F A3 EB 78 */	mr r3, r29
/* 80165BD0 00162B30  7F E4 FB 78 */	mr r4, r31
/* 80165BD4 00162B34  7F C5 F3 78 */	mr r5, r30
/* 80165BD8 00162B38  4B FF FA FD */	bl sub_801656d4
lbl_80165BDC:
/* 80165BDC 00162B3C  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 80165BE0 00162B40  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 80165BE4 00162B44  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 80165BE8 00162B48  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 80165BEC 00162B4C  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 80165BF0 00162B50  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 80165BF4 00162B54  83 E1 01 7C */	lwz r31, 0x17c(r1)
/* 80165BF8 00162B58  83 C1 01 78 */	lwz r30, 0x178(r1)
/* 80165BFC 00162B5C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80165C00 00162B60  83 A1 01 74 */	lwz r29, 0x174(r1)
/* 80165C04 00162B64  7C 08 03 A6 */	mtlr r0
/* 80165C08 00162B68  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 80165C0C 00162B6C  4E 80 00 20 */	blr 

.global Touch__6CDroneFR6CActorR13CStateManager
Touch__6CDroneFR6CActorR13CStateManager:
/* 80165C10 00162B70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80165C14 00162B74  7C 08 02 A6 */	mflr r0
/* 80165C18 00162B78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80165C1C 00162B7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80165C20 00162B80  7C 9F 23 78 */	mr r31, r4
/* 80165C24 00162B84  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80165C28 00162B88  7C 7E 1B 78 */	mr r30, r3
/* 80165C2C 00162B8C  4B F1 3E 75 */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80165C30 00162B90  7F E4 FB 78 */	mr r4, r31
/* 80165C34 00162B94  38 61 00 08 */	addi r3, r1, 8
/* 80165C38 00162B98  4B F3 FC CD */	bl "__ct__20TCastToPtr<7CWeapon>FR7CEntity"
/* 80165C3C 00162B9C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80165C40 00162BA0  28 05 00 00 */	cmplwi r5, 0
/* 80165C44 00162BA4  41 82 00 80 */	beq lbl_80165CC4
/* 80165C48 00162BA8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80165C4C 00162BAC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165C50 00162BB0  41 82 00 74 */	beq lbl_80165CC4
/* 80165C54 00162BB4  80 65 00 F0 */	lwz r3, 0xf0(r5)
/* 80165C58 00162BB8  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80165C5C 00162BBC  20 63 00 02 */	subfic r3, r3, 2
/* 80165C60 00162BC0  7C 63 00 34 */	cntlzw r3, r3
/* 80165C64 00162BC4  50 60 16 30 */	rlwimi r0, r3, 2, 0x18, 0x18
/* 80165C68 00162BC8  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80165C6C 00162BCC  80 1E 03 FC */	lwz r0, 0x3fc(r30)
/* 80165C70 00162BD0  2C 00 00 01 */	cmpwi r0, 1
/* 80165C74 00162BD4  40 82 00 50 */	bne lbl_80165CC4
/* 80165C78 00162BD8  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80165C7C 00162BDC  7F C3 F3 78 */	mr r3, r30
/* 80165C80 00162BE0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80165C84 00162BE4  38 81 00 10 */	addi r4, r1, 0x10
/* 80165C88 00162BE8  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 80165C8C 00162BEC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80165C90 00162BF0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80165C94 00162BF4  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 80165C98 00162BF8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80165C9C 00162BFC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80165CA0 00162C00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80165CA4 00162C04  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80165CA8 00162C08  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80165CAC 00162C0C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80165CB0 00162C10  4B FF F9 3D */	bl sub_801655ec
/* 80165CB4 00162C14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80165CB8 00162C18  41 82 00 0C */	beq lbl_80165CC4
/* 80165CBC 00162C1C  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80165CC0 00162C20  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
lbl_80165CC4:
/* 80165CC4 00162C24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80165CC8 00162C28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80165CCC 00162C2C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80165CD0 00162C30  7C 08 03 A6 */	mtlr r0
/* 80165CD4 00162C34  38 21 00 30 */	addi r1, r1, 0x30
/* 80165CD8 00162C38  4E 80 00 20 */	blr 

.global DoUserAnimEvent__6CDroneFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__6CDroneFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80165CDC 00162C3C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80165CE0 00162C40  7C 08 02 A6 */	mflr r0
/* 80165CE4 00162C44  90 01 00 94 */	stw r0, 0x94(r1)
/* 80165CE8 00162C48  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 80165CEC 00162C4C  FF E0 08 90 */	fmr f31, f1
/* 80165CF0 00162C50  BF 61 00 74 */	stmw r27, 0x74(r1)
/* 80165CF4 00162C54  7C DF 33 78 */	mr r31, r6
/* 80165CF8 00162C58  28 1F 00 0F */	cmplwi r31, 0xf
/* 80165CFC 00162C5C  7C 7C 1B 78 */	mr r28, r3
/* 80165D00 00162C60  7C 9D 23 78 */	mr r29, r4
/* 80165D04 00162C64  7C BE 2B 78 */	mr r30, r5
/* 80165D08 00162C68  3B 60 00 00 */	li r27, 0
/* 80165D0C 00162C6C  41 81 01 BC */	bgt lbl_80165EC8
/* 80165D10 00162C70  3C A0 80 3E */	lis r5, lbl_803E3988@ha
/* 80165D14 00162C74  57 E0 10 3A */	slwi r0, r31, 2
/* 80165D18 00162C78  38 A5 39 88 */	addi r5, r5, lbl_803E3988@l
/* 80165D1C 00162C7C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80165D20 00162C80  7C 09 03 A6 */	mtctr r0
/* 80165D24 00162C84  4E 80 04 20 */	bctr 
.global lbl_80165D28
lbl_80165D28:
/* 80165D28 00162C88  7F 84 E3 78 */	mr r4, r28
/* 80165D2C 00162C8C  38 61 00 0C */	addi r3, r1, 0xc
/* 80165D30 00162C90  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80165D34 00162C94  4B F1 2C 45 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80165D38 00162C98  38 61 00 3C */	addi r3, r1, 0x3c
/* 80165D3C 00162C9C  38 81 00 0C */	addi r4, r1, 0xc
/* 80165D40 00162CA0  48 1A CE 35 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80165D44 00162CA4  7F 83 E3 78 */	mr r3, r28
/* 80165D48 00162CA8  7F A4 EB 78 */	mr r4, r29
/* 80165D4C 00162CAC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80165D50 00162CB0  4B FF FC 35 */	bl sub_80165984
/* 80165D54 00162CB4  3B 60 00 01 */	li r27, 1
/* 80165D58 00162CB8  48 00 01 70 */	b lbl_80165EC8
.global lbl_80165D5C
lbl_80165D5C:
/* 80165D5C 00162CBC  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 80165D60 00162CC0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80165D64 00162CC4  41 82 00 70 */	beq lbl_80165DD4
/* 80165D68 00162CC8  88 1C 08 35 */	lbz r0, 0x835(r28)
/* 80165D6C 00162CCC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80165D70 00162CD0  41 82 00 64 */	beq lbl_80165DD4
/* 80165D74 00162CD4  88 1C 08 28 */	lbz r0, 0x828(r28)
/* 80165D78 00162CD8  28 00 00 00 */	cmplwi r0, 0
/* 80165D7C 00162CDC  40 82 00 38 */	bne lbl_80165DB4
/* 80165D80 00162CE0  38 A0 00 00 */	li r5, 0
/* 80165D84 00162CE4  38 C0 00 01 */	li r6, 1
/* 80165D88 00162CE8  4B FF D5 1D */	bl sub_801632a4
/* 80165D8C 00162CEC  38 00 00 01 */	li r0, 1
/* 80165D90 00162CF0  7F 83 E3 78 */	mr r3, r28
/* 80165D94 00162CF4  98 1C 08 28 */	stb r0, 0x828(r28)
/* 80165D98 00162CF8  7F A4 EB 78 */	mr r4, r29
/* 80165D9C 00162CFC  38 A0 00 01 */	li r5, 1
/* 80165DA0 00162D00  81 9C 00 00 */	lwz r12, 0(r28)
/* 80165DA4 00162D04  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80165DA8 00162D08  7D 89 03 A6 */	mtctr r12
/* 80165DAC 00162D0C  4E 80 04 21 */	bctrl 
/* 80165DB0 00162D10  48 00 00 24 */	b lbl_80165DD4
lbl_80165DB4:
/* 80165DB4 00162D14  80 1C 03 FC */	lwz r0, 0x3fc(r28)
/* 80165DB8 00162D18  2C 00 00 01 */	cmpwi r0, 1
/* 80165DBC 00162D1C  40 82 00 18 */	bne lbl_80165DD4
/* 80165DC0 00162D20  38 A0 00 01 */	li r5, 1
/* 80165DC4 00162D24  38 C0 00 01 */	li r6, 1
/* 80165DC8 00162D28  4B FF D4 DD */	bl sub_801632a4
/* 80165DCC 00162D2C  38 00 00 01 */	li r0, 1
/* 80165DD0 00162D30  98 1C 08 29 */	stb r0, 0x829(r28)
lbl_80165DD4:
/* 80165DD4 00162D34  3B 60 00 01 */	li r27, 1
/* 80165DD8 00162D38  48 00 00 F0 */	b lbl_80165EC8
.global lbl_80165DDC
lbl_80165DDC:
/* 80165DDC 00162D3C  88 1C 08 28 */	lbz r0, 0x828(r28)
/* 80165DE0 00162D40  28 00 00 00 */	cmplwi r0, 0
/* 80165DE4 00162D44  41 82 00 38 */	beq lbl_80165E1C
/* 80165DE8 00162D48  38 A0 00 00 */	li r5, 0
/* 80165DEC 00162D4C  38 C0 00 00 */	li r6, 0
/* 80165DF0 00162D50  4B FF D4 B5 */	bl sub_801632a4
/* 80165DF4 00162D54  38 00 00 00 */	li r0, 0
/* 80165DF8 00162D58  7F 83 E3 78 */	mr r3, r28
/* 80165DFC 00162D5C  98 1C 08 28 */	stb r0, 0x828(r28)
/* 80165E00 00162D60  7F A4 EB 78 */	mr r4, r29
/* 80165E04 00162D64  38 A0 00 00 */	li r5, 0
/* 80165E08 00162D68  81 9C 00 00 */	lwz r12, 0(r28)
/* 80165E0C 00162D6C  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80165E10 00162D70  7D 89 03 A6 */	mtctr r12
/* 80165E14 00162D74  4E 80 04 21 */	bctrl 
/* 80165E18 00162D78  48 00 00 24 */	b lbl_80165E3C
lbl_80165E1C:
/* 80165E1C 00162D7C  80 1C 03 FC */	lwz r0, 0x3fc(r28)
/* 80165E20 00162D80  2C 00 00 01 */	cmpwi r0, 1
/* 80165E24 00162D84  40 82 00 18 */	bne lbl_80165E3C
/* 80165E28 00162D88  38 A0 00 01 */	li r5, 1
/* 80165E2C 00162D8C  38 C0 00 00 */	li r6, 0
/* 80165E30 00162D90  4B FF D4 75 */	bl sub_801632a4
/* 80165E34 00162D94  38 00 00 00 */	li r0, 0
/* 80165E38 00162D98  98 1C 08 29 */	stb r0, 0x829(r28)
lbl_80165E3C:
/* 80165E3C 00162D9C  3B 60 00 01 */	li r27, 1
/* 80165E40 00162DA0  48 00 00 88 */	b lbl_80165EC8
.global lbl_80165E44
lbl_80165E44:
/* 80165E44 00162DA4  80 1C 03 FC */	lwz r0, 0x3fc(r28)
/* 80165E48 00162DA8  2C 00 00 01 */	cmpwi r0, 1
/* 80165E4C 00162DAC  40 82 00 14 */	bne lbl_80165E60
/* 80165E50 00162DB0  88 1C 08 34 */	lbz r0, 0x834(r28)
/* 80165E54 00162DB4  38 60 00 01 */	li r3, 1
/* 80165E58 00162DB8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80165E5C 00162DBC  98 1C 08 34 */	stb r0, 0x834(r28)
lbl_80165E60:
/* 80165E60 00162DC0  3B 60 00 01 */	li r27, 1
/* 80165E64 00162DC4  48 00 00 64 */	b lbl_80165EC8
.global lbl_80165E68
lbl_80165E68:
/* 80165E68 00162DC8  80 1C 03 FC */	lwz r0, 0x3fc(r28)
/* 80165E6C 00162DCC  2C 00 00 01 */	cmpwi r0, 1
/* 80165E70 00162DD0  40 82 00 14 */	bne lbl_80165E84
/* 80165E74 00162DD4  88 1C 08 34 */	lbz r0, 0x834(r28)
/* 80165E78 00162DD8  38 60 00 00 */	li r3, 0
/* 80165E7C 00162DDC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80165E80 00162DE0  98 1C 08 34 */	stb r0, 0x834(r28)
lbl_80165E84:
/* 80165E84 00162DE4  3B 60 00 01 */	li r27, 1
/* 80165E88 00162DE8  48 00 00 40 */	b lbl_80165EC8
.global lbl_80165E8C
lbl_80165E8C:
/* 80165E8C 00162DEC  80 1C 07 D0 */	lwz r0, 0x7d0(r28)
/* 80165E90 00162DF0  28 00 00 00 */	cmplwi r0, 0
/* 80165E94 00162DF4  41 82 00 1C */	beq lbl_80165EB0
/* 80165E98 00162DF8  80 1C 07 D0 */	lwz r0, 0x7d0(r28)
/* 80165E9C 00162DFC  38 61 00 08 */	addi r3, r1, 8
/* 80165EA0 00162E00  90 01 00 08 */	stw r0, 8(r1)
/* 80165EA4 00162E04  48 18 3F E1 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80165EA8 00162E08  38 00 00 00 */	li r0, 0
/* 80165EAC 00162E0C  90 1C 07 D0 */	stw r0, 0x7d0(r28)
lbl_80165EB0:
/* 80165EB0 00162E10  7F 83 E3 78 */	mr r3, r28
/* 80165EB4 00162E14  7F A4 EB 78 */	mr r4, r29
/* 80165EB8 00162E18  81 9C 00 00 */	lwz r12, 0(r28)
/* 80165EBC 00162E1C  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80165EC0 00162E20  7D 89 03 A6 */	mtctr r12
/* 80165EC4 00162E24  4E 80 04 21 */	bctrl 
.global lbl_80165EC8
lbl_80165EC8:
/* 80165EC8 00162E28  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80165ECC 00162E2C  40 82 00 1C */	bne lbl_80165EE8
/* 80165ED0 00162E30  FC 20 F8 90 */	fmr f1, f31
/* 80165ED4 00162E34  7F 83 E3 78 */	mr r3, r28
/* 80165ED8 00162E38  7F A4 EB 78 */	mr r4, r29
/* 80165EDC 00162E3C  7F C5 F3 78 */	mr r5, r30
/* 80165EE0 00162E40  7F E6 FB 78 */	mr r6, r31
/* 80165EE4 00162E44  4B F1 2F CD */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80165EE8:
/* 80165EE8 00162E48  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 80165EEC 00162E4C  BB 61 00 74 */	lmw r27, 0x74(r1)
/* 80165EF0 00162E50  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80165EF4 00162E54  7C 08 03 A6 */	mtlr r0
/* 80165EF8 00162E58  38 21 00 90 */	addi r1, r1, 0x90
/* 80165EFC 00162E5C  4E 80 00 20 */	blr 

.global sub_80165f00
sub_80165f00:
/* 80165F00 00162E60  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80165F04 00162E64  7C 08 02 A6 */	mflr r0
/* 80165F08 00162E68  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80165F0C 00162E6C  93 E1 00 EC */	stw r31, 0xec(r1)
/* 80165F10 00162E70  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 80165F14 00162E74  7C 9E 23 78 */	mr r30, r4
/* 80165F18 00162E78  38 81 00 08 */	addi r4, r1, 8
/* 80165F1C 00162E7C  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 80165F20 00162E80  7C 7D 1B 78 */	mr r29, r3
/* 80165F24 00162E84  A0 03 05 7A */	lhz r0, 0x57a(r3)
/* 80165F28 00162E88  7F C3 F3 78 */	mr r3, r30
/* 80165F2C 00162E8C  B0 01 00 08 */	sth r0, 8(r1)
/* 80165F30 00162E90  4B EE 66 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80165F34 00162E94  7C 64 1B 78 */	mr r4, r3
/* 80165F38 00162E98  38 61 00 0C */	addi r3, r1, 0xc
/* 80165F3C 00162E9C  4B F4 0C 9D */	bl "__ct__31TCastToPtr<17CScriptVisorFlare>FP7CEntity"
/* 80165F40 00162EA0  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80165F44 00162EA4  38 81 00 60 */	addi r4, r1, 0x60
/* 80165F48 00162EA8  83 E3 00 04 */	lwz r31, 4(r3)
/* 80165F4C 00162EAC  38 61 00 6C */	addi r3, r1, 0x6c
/* 80165F50 00162EB0  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80165F54 00162EB4  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 80165F58 00162EB8  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80165F5C 00162EBC  C0 5D 00 50 */	lfs f2, 0x50(r29)
/* 80165F60 00162EC0  EC 25 00 28 */	fsubs f1, f5, f0
/* 80165F64 00162EC4  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80165F68 00162EC8  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 80165F6C 00162ECC  EC 44 10 28 */	fsubs f2, f4, f2
/* 80165F70 00162ED0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80165F74 00162ED4  EC 00 18 28 */	fsubs f0, f0, f3
/* 80165F78 00162ED8  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 80165F7C 00162EDC  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 80165F80 00162EE0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80165F84 00162EE4  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80165F88 00162EE8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80165F8C 00162EEC  48 1A E8 C5 */	bl AsNormalized__9CVector3fCFv
/* 80165F90 00162EF0  C0 9D 00 48 */	lfs f4, 0x48(r29)
/* 80165F94 00162EF4  7F A3 EB 78 */	mr r3, r29
/* 80165F98 00162EF8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80165F9C 00162EFC  7F C4 F3 78 */	mr r4, r30
/* 80165FA0 00162F00  C0 7D 00 38 */	lfs f3, 0x38(r29)
/* 80165FA4 00162F04  EC 00 01 32 */	fmuls f0, f0, f4
/* 80165FA8 00162F08  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80165FAC 00162F0C  C0 BD 00 58 */	lfs f5, 0x58(r29)
/* 80165FB0 00162F10  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80165FB4 00162F14  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 80165FB8 00162F18  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80165FBC 00162F1C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80165FC0 00162F20  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80165FC4 00162F24  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80165FC8 00162F28  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 80165FCC 00162F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165FD0 00162F30  7C 00 00 26 */	mfcr r0
/* 80165FD4 00162F34  81 9D 00 00 */	lwz r12, 0(r29)
/* 80165FD8 00162F38  54 05 17 FE */	rlwinm r5, r0, 2, 0x1f, 0x1f
/* 80165FDC 00162F3C  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80165FE0 00162F40  7D 89 03 A6 */	mtctr r12
/* 80165FE4 00162F44  4E 80 04 21 */	bctrl 
/* 80165FE8 00162F48  28 1F 00 00 */	cmplwi r31, 0
/* 80165FEC 00162F4C  41 82 00 9C */	beq lbl_80166088
/* 80165FF0 00162F50  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 80165FF4 00162F54  38 61 00 38 */	addi r3, r1, 0x38
/* 80165FF8 00162F58  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 80165FFC 00162F5C  4B E9 EC BD */	bl string_l__4rstlFPCc
/* 80166000 00162F60  7F A4 EB 78 */	mr r4, r29
/* 80166004 00162F64  38 61 00 78 */	addi r3, r1, 0x78
/* 80166008 00162F68  38 A1 00 38 */	addi r5, r1, 0x38
/* 8016600C 00162F6C  4B F1 29 6D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80166010 00162F70  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80166014 00162F74  38 81 00 78 */	addi r4, r1, 0x78
/* 80166018 00162F78  48 1A CB 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8016601C 00162F7C  38 61 00 38 */	addi r3, r1, 0x38
/* 80166020 00162F80  48 1D 7A C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80166024 00162F84  C0 82 9F C0 */	lfs f4, lbl_805ABCE0@sda21(r2)
/* 80166028 00162F88  7F E3 FB 78 */	mr r3, r31
/* 8016602C 00162F8C  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 80166030 00162F90  38 81 00 2C */	addi r4, r1, 0x2c
/* 80166034 00162F94  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80166038 00162F98  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8016603C 00162F9C  EC C4 00 72 */	fmuls f6, f4, f1
/* 80166040 00162FA0  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 80166044 00162FA4  EC A4 00 B2 */	fmuls f5, f4, f2
/* 80166048 00162FA8  C0 61 00 B4 */	lfs f3, 0xb4(r1)
/* 8016604C 00162FAC  EC 84 00 32 */	fmuls f4, f4, f0
/* 80166050 00162FB0  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 80166054 00162FB4  EC E1 30 2A */	fadds f7, f1, f6
/* 80166058 00162FB8  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8016605C 00162FBC  ED 02 20 2A */	fadds f8, f2, f4
/* 80166060 00162FC0  EC 03 28 2A */	fadds f0, f3, f5
/* 80166064 00162FC4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80166068 00162FC8  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 8016606C 00162FCC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80166070 00162FD0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80166074 00162FD4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80166078 00162FD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8016607C 00162FDC  D1 01 00 30 */	stfs f8, 0x30(r1)
/* 80166080 00162FE0  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 80166084 00162FE4  4B EE CE 09 */	bl SetTranslation__6CActorFRC9CVector3f
lbl_80166088:
/* 80166088 00162FE8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8016608C 00162FEC  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 80166090 00162FF0  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 80166094 00162FF4  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 80166098 00162FF8  7C 08 03 A6 */	mtlr r0
/* 8016609C 00162FFC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801660A0 00163000  4E 80 00 20 */	blr 

.global sub_801660a4
sub_801660a4:
/* 801660A4 00163004  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801660A8 00163008  7C 08 02 A6 */	mflr r0
/* 801660AC 0016300C  90 01 01 14 */	stw r0, 0x114(r1)
/* 801660B0 00163010  BF 41 00 F8 */	stmw r26, 0xf8(r1)
/* 801660B4 00163014  7C 7C 1B 78 */	mr r28, r3
/* 801660B8 00163018  7C 9D 23 78 */	mr r29, r4
/* 801660BC 0016301C  7C BE 2B 78 */	mr r30, r5
/* 801660C0 00163020  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801660C4 00163024  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801660C8 00163028  41 82 01 EC */	beq lbl_801662B4
/* 801660CC 0016302C  A0 1C 05 7A */	lhz r0, 0x57a(r28)
/* 801660D0 00163030  7F A3 EB 78 */	mr r3, r29
/* 801660D4 00163034  38 81 00 28 */	addi r4, r1, 0x28
/* 801660D8 00163038  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801660DC 0016303C  4B EE 64 99 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801660E0 00163040  7C 64 1B 78 */	mr r4, r3
/* 801660E4 00163044  38 61 00 48 */	addi r3, r1, 0x48
/* 801660E8 00163048  4B F4 0A F1 */	bl "__ct__31TCastToPtr<17CScriptVisorFlare>FP7CEntity"
/* 801660EC 0016304C  80 03 00 04 */	lwz r0, 4(r3)
/* 801660F0 00163050  28 00 00 00 */	cmplwi r0, 0
/* 801660F4 00163054  7C 1F 03 78 */	mr r31, r0
/* 801660F8 00163058  40 82 01 90 */	bne lbl_80166288
/* 801660FC 0016305C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80166100 00163060  41 82 01 88 */	beq lbl_80166288
/* 80166104 00163064  7F A4 EB 78 */	mr r4, r29
/* 80166108 00163068  38 61 00 24 */	addi r3, r1, 0x24
/* 8016610C 0016306C  4B EE 6F D1 */	bl AllocateUniqueId__13CStateManagerFv
/* 80166110 00163070  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 80166114 00163074  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80166118 00163078  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 8016611C 0016307C  B0 1C 05 7A */	sth r0, 0x57a(r28)
/* 80166120 00163080  38 61 00 6C */	addi r3, r1, 0x6c
/* 80166124 00163084  4B E9 EB 95 */	bl string_l__4rstlFPCc
/* 80166128 00163088  7F 84 E3 78 */	mr r4, r28
/* 8016612C 0016308C  38 61 00 94 */	addi r3, r1, 0x94
/* 80166130 00163090  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80166134 00163094  4B F1 28 45 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80166138 00163098  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016613C 0016309C  38 81 00 94 */	addi r4, r1, 0x94
/* 80166140 001630A0  48 1A CA 35 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80166144 001630A4  38 61 00 6C */	addi r3, r1, 0x6c
/* 80166148 001630A8  48 1D 79 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8016614C 001630AC  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80166150 001630B0  3B 60 00 00 */	li r27, 0
/* 80166154 001630B4  38 63 03 98 */	addi r3, r3, lbl_803D0398@l
/* 80166158 001630B8  3B 40 00 00 */	li r26, 0
/* 8016615C 001630BC  38 83 00 3B */	addi r4, r3, 0x3b
/* 80166160 001630C0  38 60 01 20 */	li r3, 0x120
/* 80166164 001630C4  38 A0 00 00 */	li r5, 0
/* 80166168 001630C8  48 1A F7 05 */	bl __nw__FUlPCcPCc
/* 8016616C 001630CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80166170 001630D0  41 82 00 B4 */	beq lbl_80166224
/* 80166174 001630D4  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 80166178 001630D8  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 8016617C 001630DC  C0 21 00 E0 */	lfs f1, 0xe0(r1)
/* 80166180 001630E0  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 80166184 001630E4  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80166188 001630E8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016618C 001630EC  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 80166190 001630F0  38 81 00 40 */	addi r4, r1, 0x40
/* 80166194 001630F4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80166198 001630F8  38 C1 00 44 */	addi r6, r1, 0x44
/* 8016619C 001630FC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801661A0 00163100  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801661A4 00163104  90 01 00 44 */	stw r0, 0x44(r1)
/* 801661A8 00163108  80 1C 00 04 */	lwz r0, 4(r28)
/* 801661AC 0016310C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801661B0 00163110  90 01 00 40 */	stw r0, 0x40(r1)
/* 801661B4 00163114  4B EE B2 D1 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 801661B8 00163118  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 801661BC 0016311C  38 61 00 50 */	addi r3, r1, 0x50
/* 801661C0 00163120  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 801661C4 00163124  3B 60 00 01 */	li r27, 1
/* 801661C8 00163128  38 84 00 5B */	addi r4, r4, 0x5b
/* 801661CC 0016312C  4B E9 EA ED */	bl string_l__4rstlFPCc
/* 801661D0 00163130  A0 7C 05 7A */	lhz r3, 0x57a(r28)
/* 801661D4 00163134  38 C0 00 00 */	li r6, 0
/* 801661D8 00163138  38 1C 05 7C */	addi r0, r28, 0x57c
/* 801661DC 0016313C  C0 22 9F C0 */	lfs f1, lbl_805ABCE0@sda21(r2)
/* 801661E0 00163140  B0 61 00 20 */	sth r3, 0x20(r1)
/* 801661E4 00163144  7F E3 FB 78 */	mr r3, r31
/* 801661E8 00163148  C0 42 9F 7C */	lfs f2, lbl_805ABC9C@sda21(r2)
/* 801661EC 0016314C  7F C7 F3 78 */	mr r7, r30
/* 801661F0 00163150  90 C1 00 08 */	stw r6, 8(r1)
/* 801661F4 00163154  38 81 00 20 */	addi r4, r1, 0x20
/* 801661F8 00163158  C0 62 9F E8 */	lfs f3, lbl_805ABD08@sda21(r2)
/* 801661FC 0016315C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80166200 00163160  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80166204 00163164  38 C1 00 7C */	addi r6, r1, 0x7c
/* 80166208 00163168  39 01 00 60 */	addi r8, r1, 0x60
/* 8016620C 0016316C  3B 40 00 01 */	li r26, 1
/* 80166210 00163170  90 01 00 10 */	stw r0, 0x10(r1)
/* 80166214 00163174  39 20 00 00 */	li r9, 0
/* 80166218 00163178  39 40 00 01 */	li r10, 1
/* 8016621C 0016317C  48 07 05 11 */	bl "__ct__17CScriptVisorFlareF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfobRC9CVector3fQ211CVisorFlare10EBlendModebfffRCQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>"
/* 80166220 00163180  7C 7F 1B 78 */	mr r31, r3
lbl_80166224:
/* 80166224 00163184  7F 40 07 75 */	extsb. r0, r26
/* 80166228 00163188  41 82 00 0C */	beq lbl_80166234
/* 8016622C 0016318C  38 61 00 50 */	addi r3, r1, 0x50
/* 80166230 00163190  48 1D 78 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80166234:
/* 80166234 00163194  7F 60 07 75 */	extsb. r0, r27
/* 80166238 00163198  41 82 00 44 */	beq lbl_8016627C
/* 8016623C 0016319C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80166240 001631A0  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 80166244 001631A4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80166248 001631A8  90 61 00 30 */	stw r3, 0x30(r1)
/* 8016624C 001631AC  7C 64 1B 78 */	mr r4, r3
/* 80166250 001631B0  7C 03 02 14 */	add r0, r3, r0
/* 80166254 001631B4  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80166258 001631B8  90 01 00 38 */	stw r0, 0x38(r1)
/* 8016625C 001631BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80166260 001631C0  48 00 00 08 */	b lbl_80166268
lbl_80166264:
/* 80166264 001631C4  38 84 00 0C */	addi r4, r4, 0xc
lbl_80166268:
/* 80166268 001631C8  7C 04 00 40 */	cmplw r4, r0
/* 8016626C 001631CC  40 82 FF F8 */	bne lbl_80166264
/* 80166270 001631D0  28 03 00 00 */	cmplwi r3, 0
/* 80166274 001631D4  41 82 00 08 */	beq lbl_8016627C
/* 80166278 001631D8  48 1A F6 B9 */	bl Free__7CMemoryFPCv
lbl_8016627C:
/* 8016627C 001631DC  7F A3 EB 78 */	mr r3, r29
/* 80166280 001631E0  7F E4 FB 78 */	mr r4, r31
/* 80166284 001631E4  4B EE 68 91 */	bl AddObject__13CStateManagerFR7CEntity
lbl_80166288:
/* 80166288 001631E8  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8016628C 001631EC  38 C0 00 04 */	li r6, 4
/* 80166290 001631F0  41 82 00 08 */	beq lbl_80166298
/* 80166294 001631F4  38 C0 00 01 */	li r6, 1
lbl_80166298:
/* 80166298 001631F8  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8016629C 001631FC  7F A3 EB 78 */	mr r3, r29
/* 801662A0 00163200  7F E4 FB 78 */	mr r4, r31
/* 801662A4 00163204  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801662A8 00163208  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801662AC 0016320C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801662B0 00163210  4B ED DC 21 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_801662B4:
/* 801662B4 00163214  BB 41 00 F8 */	lmw r26, 0xf8(r1)
/* 801662B8 00163218  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801662BC 0016321C  7C 08 03 A6 */	mtlr r0
/* 801662C0 00163220  38 21 01 10 */	addi r1, r1, 0x110
/* 801662C4 00163224  4E 80 00 20 */	blr 

.global sub_801662c8
sub_801662c8:
/* 801662C8 00163228  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801662CC 0016322C  7C 08 02 A6 */	mflr r0
/* 801662D0 00163230  7C 88 23 78 */	mr r8, r4
/* 801662D4 00163234  38 C0 00 04 */	li r6, 4
/* 801662D8 00163238  90 01 00 24 */	stw r0, 0x24(r1)
/* 801662DC 0016323C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 801662E0 00163240  41 82 00 08 */	beq lbl_801662E8
/* 801662E4 00163244  38 C0 00 01 */	li r6, 1
lbl_801662E8:
/* 801662E8 00163248  A0 E3 00 08 */	lhz r7, 8(r3)
/* 801662EC 0016324C  38 81 00 10 */	addi r4, r1, 0x10
/* 801662F0 00163250  38 A1 00 0C */	addi r5, r1, 0xc
/* 801662F4 00163254  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 801662F8 00163258  A0 03 05 78 */	lhz r0, 0x578(r3)
/* 801662FC 0016325C  7D 03 43 78 */	mr r3, r8
/* 80166300 00163260  B0 E1 00 08 */	sth r7, 8(r1)
/* 80166304 00163264  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80166308 00163268  4B ED DB 4D */	bl SendScriptMsgAlways__13CStateManagerF9TUniqueId
/* 8016630C 0016326C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80166310 00163270  7C 08 03 A6 */	mtlr r0
/* 80166314 00163274  38 21 00 20 */	addi r1, r1, 0x20
/* 80166318 00163278  4E 80 00 20 */	blr 

.global AcceptScriptMsg__6CDroneF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__6CDroneF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8016631C 0016327C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80166320 00163280  7C 08 02 A6 */	mflr r0
/* 80166324 00163284  90 01 01 14 */	stw r0, 0x114(r1)
/* 80166328 00163288  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8016632C 0016328C  7C DF 33 78 */	mr r31, r6
/* 80166330 00163290  93 C1 01 08 */	stw r30, 0x108(r1)
/* 80166334 00163294  7C 7E 1B 78 */	mr r30, r3
/* 80166338 00163298  93 A1 01 04 */	stw r29, 0x104(r1)
/* 8016633C 0016329C  93 81 01 00 */	stw r28, 0x100(r1)
/* 80166340 001632A0  7C 9C 23 78 */	mr r28, r4
/* 80166344 001632A4  A0 05 00 00 */	lhz r0, 0(r5)
/* 80166348 001632A8  38 A1 00 38 */	addi r5, r1, 0x38
/* 8016634C 001632AC  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80166350 001632B0  4B F1 68 29 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80166354 001632B4  28 1C 00 23 */	cmplwi r28, 0x23
/* 80166358 001632B8  41 81 03 B0 */	bgt lbl_80166708
/* 8016635C 001632BC  3C 60 80 3E */	lis r3, lbl_803E39C8@ha
/* 80166360 001632C0  57 80 10 3A */	slwi r0, r28, 2
/* 80166364 001632C4  38 63 39 C8 */	addi r3, r3, lbl_803E39C8@l
/* 80166368 001632C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8016636C 001632CC  7C 09 03 A6 */	mtctr r0
/* 80166370 001632D0  4E 80 04 20 */	bctr 
.global lbl_80166374
lbl_80166374:
/* 80166374 001632D4  7F C3 F3 78 */	mr r3, r30
/* 80166378 001632D8  7F E4 FB 78 */	mr r4, r31
/* 8016637C 001632DC  81 9E 00 00 */	lwz r12, 0(r30)
/* 80166380 001632E0  38 A0 00 01 */	li r5, 1
/* 80166384 001632E4  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 80166388 001632E8  7D 89 03 A6 */	mtctr r12
/* 8016638C 001632EC  4E 80 04 21 */	bctrl 
/* 80166390 001632F0  7F C3 F3 78 */	mr r3, r30
/* 80166394 001632F4  7F E4 FB 78 */	mr r4, r31
/* 80166398 001632F8  4B FF 91 01 */	bl sub_8015f498
/* 8016639C 001632FC  48 00 03 6C */	b lbl_80166708
.global lbl_801663A0
lbl_801663A0:
/* 801663A0 00163300  3B BE 07 DC */	addi r29, r30, 0x7dc
/* 801663A4 00163304  3B 80 00 00 */	li r28, 0
/* 801663A8 00163308  48 00 00 38 */	b lbl_801663E0
lbl_801663AC:
/* 801663AC 0016330C  A0 7D 00 00 */	lhz r3, 0(r29)
/* 801663B0 00163310  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801663B4 00163314  7C 03 00 40 */	cmplw r3, r0
/* 801663B8 00163318  41 82 00 20 */	beq lbl_801663D8
/* 801663BC 0016331C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 801663C0 00163320  7F E3 FB 78 */	mr r3, r31
/* 801663C4 00163324  38 81 00 34 */	addi r4, r1, 0x34
/* 801663C8 00163328  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801663CC 0016332C  4B EE 5E A1 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801663D0 00163330  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801663D4 00163334  B0 1D 00 00 */	sth r0, 0(r29)
lbl_801663D8:
/* 801663D8 00163338  3B BD 00 02 */	addi r29, r29, 2
/* 801663DC 0016333C  3B 9C 00 01 */	addi r28, r28, 1
lbl_801663E0:
/* 801663E0 00163340  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 801663E4 00163344  7C 1C 00 00 */	cmpw r28, r0
/* 801663E8 00163348  41 80 FF C4 */	blt lbl_801663AC
/* 801663EC 0016334C  7F C3 F3 78 */	mr r3, r30
/* 801663F0 00163350  7F E4 FB 78 */	mr r4, r31
/* 801663F4 00163354  4B FF 90 01 */	bl sub_8015f3f4
/* 801663F8 00163358  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801663FC 0016335C  38 81 00 30 */	addi r4, r1, 0x30
/* 80166400 00163360  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80166404 00163364  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 80166408 00163368  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8016640C 0016336C  80 63 00 00 */	lwz r3, 0(r3)
/* 80166410 00163370  38 63 01 88 */	addi r3, r3, 0x188
/* 80166414 00163374  48 05 A5 A1 */	bl sub_801c09b4
/* 80166418 00163378  A0 7E 05 78 */	lhz r3, 0x578(r30)
/* 8016641C 0016337C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166420 00163380  7C 03 00 40 */	cmplw r3, r0
/* 80166424 00163384  41 82 00 20 */	beq lbl_80166444
/* 80166428 00163388  A0 1E 05 78 */	lhz r0, 0x578(r30)
/* 8016642C 0016338C  7F E3 FB 78 */	mr r3, r31
/* 80166430 00163390  38 81 00 28 */	addi r4, r1, 0x28
/* 80166434 00163394  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80166438 00163398  4B EE 5E 35 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8016643C 0016339C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166440 001633A0  B0 1E 05 78 */	sth r0, 0x578(r30)
lbl_80166444:
/* 80166444 001633A4  A0 7E 05 7A */	lhz r3, 0x57a(r30)
/* 80166448 001633A8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016644C 001633AC  7C 03 00 40 */	cmplw r3, r0
/* 80166450 001633B0  41 82 00 20 */	beq lbl_80166470
/* 80166454 001633B4  A0 1E 05 7A */	lhz r0, 0x57a(r30)
/* 80166458 001633B8  7F E3 FB 78 */	mr r3, r31
/* 8016645C 001633BC  38 81 00 24 */	addi r4, r1, 0x24
/* 80166460 001633C0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80166464 001633C4  4B EE 5E 09 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80166468 001633C8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016646C 001633CC  B0 1E 05 7A */	sth r0, 0x57a(r30)
lbl_80166470:
/* 80166470 001633D0  80 1E 07 D0 */	lwz r0, 0x7d0(r30)
/* 80166474 001633D4  28 00 00 00 */	cmplwi r0, 0
/* 80166478 001633D8  41 82 02 90 */	beq lbl_80166708
/* 8016647C 001633DC  80 1E 07 D0 */	lwz r0, 0x7d0(r30)
/* 80166480 001633E0  38 61 00 48 */	addi r3, r1, 0x48
/* 80166484 001633E4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80166488 001633E8  48 18 39 FD */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 8016648C 001633EC  38 00 00 00 */	li r0, 0
/* 80166490 001633F0  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80166494 001633F4  48 00 02 74 */	b lbl_80166708
.global lbl_80166498
lbl_80166498:
/* 80166498 001633F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8016649C 001633FC  7F E4 FB 78 */	mr r4, r31
/* 801664A0 00163400  4B FD 48 51 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801664A4 00163404  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801664A8 00163408  38 80 00 02 */	li r4, 2
/* 801664AC 0016340C  4B FD 45 2D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801664B0 00163410  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 801664B4 00163414  38 C0 00 00 */	li r6, 0
/* 801664B8 00163418  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 801664BC 0016341C  7F C3 F3 78 */	mr r3, r30
/* 801664C0 00163420  7F E5 FB 78 */	mr r5, r31
/* 801664C4 00163424  38 80 00 35 */	li r4, 0x35
/* 801664C8 00163428  D0 07 02 D4 */	stfs f0, 0x2d4(r7)
/* 801664CC 0016342C  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 801664D0 00163430  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 801664D4 00163434  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 801664D8 00163438  98 1E 04 E1 */	stb r0, 0x4e1(r30)
/* 801664DC 0016343C  4B EE DE 75 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801664E0 00163440  7F E4 FB 78 */	mr r4, r31
/* 801664E4 00163444  38 61 00 20 */	addi r3, r1, 0x20
/* 801664E8 00163448  4B EE 6B F5 */	bl AllocateUniqueId__13CStateManagerFv
/* 801664EC 0016344C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801664F0 00163450  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 801664F4 00163454  48 1E 3A A9 */	bl Red__6CColorFv
/* 801664F8 00163458  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801664FC 0016345C  7C 65 1B 78 */	mr r5, r3
/* 80166500 00163460  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 80166504 00163464  38 61 00 60 */	addi r3, r1, 0x60
/* 80166508 00163468  48 19 FF 2D */	bl BuildPoint__6CLightFRC9CVector3fRC6CColor
/* 8016650C 0016346C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80166510 00163470  38 81 00 60 */	addi r4, r1, 0x60
/* 80166514 00163474  4B ED 50 5D */	bl __ct__6CLightFCR6CLight
/* 80166518 00163478  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 8016651C 0016347C  3B 80 00 00 */	li r28, 0
/* 80166520 00163480  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80166524 00163484  38 60 01 48 */	li r3, 0x148
/* 80166528 00163488  38 84 00 3B */	addi r4, r4, 0x3b
/* 8016652C 0016348C  38 A0 00 00 */	li r5, 0
/* 80166530 00163490  48 1A F3 3D */	bl __nw__FUlPCcPCc
/* 80166534 00163494  7C 7D 1B 79 */	or. r29, r3, r3
/* 80166538 00163498  41 82 00 7C */	beq lbl_801665B4
/* 8016653C 0016349C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80166540 001634A0  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80166544 001634A4  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80166548 001634A8  38 61 00 50 */	addi r3, r1, 0x50
/* 8016654C 001634AC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80166550 001634B0  38 84 00 6B */	addi r4, r4, 0x6b
/* 80166554 001634B4  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80166558 001634B8  4B E9 E7 61 */	bl string_l__4rstlFPCc
/* 8016655C 001634BC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80166560 001634C0  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 80166564 001634C4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80166568 001634C8  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 8016656C 001634CC  54 06 CF FE */	rlwinm r6, r0, 0x19, 0x1f, 0x1f
/* 80166570 001634D0  38 00 00 00 */	li r0, 0
/* 80166574 001634D4  90 81 00 44 */	stw r4, 0x44(r1)
/* 80166578 001634D8  7F A3 EB 78 */	mr r3, r29
/* 8016657C 001634DC  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80166580 001634E0  38 A1 00 44 */	addi r5, r1, 0x44
/* 80166584 001634E4  A1 3E 05 78 */	lhz r9, 0x578(r30)
/* 80166588 001634E8  38 E1 00 50 */	addi r7, r1, 0x50
/* 8016658C 001634EC  90 81 00 40 */	stw r4, 0x40(r1)
/* 80166590 001634F0  38 81 00 14 */	addi r4, r1, 0x14
/* 80166594 001634F4  39 41 00 B0 */	addi r10, r1, 0xb0
/* 80166598 001634F8  3B 80 00 01 */	li r28, 1
/* 8016659C 001634FC  B1 21 00 14 */	sth r9, 0x14(r1)
/* 801665A0 00163500  39 21 00 1C */	addi r9, r1, 0x1c
/* 801665A4 00163504  90 01 00 08 */	stw r0, 8(r1)
/* 801665A8 00163508  90 01 00 0C */	stw r0, 0xc(r1)
/* 801665AC 0016350C  4B F4 F2 79 */	bl "__ct__10CGameLightF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif"
/* 801665B0 00163510  7C 7D 1B 78 */	mr r29, r3
lbl_801665B4:
/* 801665B4 00163514  7F 80 07 75 */	extsb. r0, r28
/* 801665B8 00163518  7F BC EB 78 */	mr r28, r29
/* 801665BC 0016351C  41 82 00 0C */	beq lbl_801665C8
/* 801665C0 00163520  38 61 00 50 */	addi r3, r1, 0x50
/* 801665C4 00163524  48 1D 75 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801665C8:
/* 801665C8 00163528  7F E3 FB 78 */	mr r3, r31
/* 801665CC 0016352C  7F 84 E3 78 */	mr r4, r28
/* 801665D0 00163530  4B EE 65 45 */	bl AddObject__13CStateManagerFR7CEntity
/* 801665D4 00163534  48 00 01 34 */	b lbl_80166708
.global lbl_801665D8
lbl_801665D8:
/* 801665D8 00163538  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 801665DC 0016353C  38 60 00 01 */	li r3, 1
/* 801665E0 00163540  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801665E4 00163544  98 1E 08 34 */	stb r0, 0x834(r30)
/* 801665E8 00163548  48 00 01 20 */	b lbl_80166708
.global lbl_801665EC
lbl_801665EC:
/* 801665EC 0016354C  80 BE 00 04 */	lwz r5, 4(r30)
/* 801665F0 00163550  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 801665F4 00163554  54 A3 18 38 */	slwi r3, r5, 3
/* 801665F8 00163558  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 801665FC 0016355C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80166600 00163560  38 03 00 04 */	addi r0, r3, 4
/* 80166604 00163564  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80166608 00163568  7C 64 00 2E */	lwzx r3, r4, r0
/* 8016660C 0016356C  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80166610 00163570  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80166614 00163574  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80166618 00163578  A0 7E 06 88 */	lhz r3, 0x688(r30)
/* 8016661C 0016357C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166620 00163580  7C 03 00 40 */	cmplw r3, r0
/* 80166624 00163584  40 82 00 34 */	bne lbl_80166658
/* 80166628 00163588  7F C4 F3 78 */	mr r4, r30
/* 8016662C 0016358C  7F E5 FB 78 */	mr r5, r31
/* 80166630 00163590  38 61 00 10 */	addi r3, r1, 0x10
/* 80166634 00163594  48 0D 3B B5 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 80166638 00163598  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8016663C 0016359C  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80166640 001635A0  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80166644 001635A4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80166648 001635A8  41 82 00 10 */	beq lbl_80166658
/* 8016664C 001635AC  7F C3 F3 78 */	mr r3, r30
/* 80166650 001635B0  7F E4 FB 78 */	mr r4, r31
/* 80166654 001635B4  4B FF 8E 45 */	bl sub_8015f498
lbl_80166658:
/* 80166658 001635B8  7F C3 F3 78 */	mr r3, r30
/* 8016665C 001635BC  7F E4 FB 78 */	mr r4, r31
/* 80166660 001635C0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80166664 001635C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80166668 001635C8  7D 89 03 A6 */	mtctr r12
/* 8016666C 001635CC  4E 80 04 21 */	bctrl 
/* 80166670 001635D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166674 001635D4  C0 62 9F 7C */	lfs f3, lbl_805ABC9C@sda21(r2)
/* 80166678 001635D8  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 8016667C 001635DC  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80166680 001635E0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166684 001635E4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80166688 001635E8  EC 03 00 24 */	fdivs f0, f3, f0
/* 8016668C 001635EC  C0 43 00 08 */	lfs f2, 8(r3)
/* 80166690 001635F0  D0 1E 05 5C */	stfs f0, 0x55c(r30)
/* 80166694 001635F4  EC 23 08 24 */	fdivs f1, f3, f1
/* 80166698 001635F8  EC 03 10 24 */	fdivs f0, f3, f2
/* 8016669C 001635FC  D0 3E 05 60 */	stfs f1, 0x560(r30)
/* 801666A0 00163600  D0 1E 05 64 */	stfs f0, 0x564(r30)
/* 801666A4 00163604  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 801666A8 00163608  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801666AC 0016360C  41 82 00 5C */	beq lbl_80166708
/* 801666B0 00163610  7F C3 F3 78 */	mr r3, r30
/* 801666B4 00163614  38 80 00 00 */	li r4, 0
/* 801666B8 00163618  4B EE CC 6D */	bl SetSoundEventPitchBend__6CActorFi
/* 801666BC 0016361C  48 00 00 4C */	b lbl_80166708
.global lbl_801666C0
lbl_801666C0:
/* 801666C0 00163620  88 9E 08 35 */	lbz r4, 0x835(r30)
/* 801666C4 00163624  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 801666C8 00163628  40 82 00 40 */	bne lbl_80166708
/* 801666CC 0016362C  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 801666D0 00163630  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801666D4 00163634  41 82 00 34 */	beq lbl_80166708
/* 801666D8 00163638  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801666DC 0016363C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801666E0 00163640  40 82 00 28 */	bne lbl_80166708
/* 801666E4 00163644  38 00 00 01 */	li r0, 1
/* 801666E8 00163648  7F C3 F3 78 */	mr r3, r30
/* 801666EC 0016364C  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 801666F0 00163650  98 9E 08 35 */	stb r4, 0x835(r30)
/* 801666F4 00163654  7F E4 FB 78 */	mr r4, r31
/* 801666F8 00163658  81 9E 00 00 */	lwz r12, 0(r30)
/* 801666FC 0016365C  81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 80166700 00163660  7D 89 03 A6 */	mtctr r12
/* 80166704 00163664  4E 80 04 21 */	bctrl 
.global lbl_80166708
lbl_80166708:
/* 80166708 00163668  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8016670C 0016366C  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 80166710 00163670  83 C1 01 08 */	lwz r30, 0x108(r1)
/* 80166714 00163674  83 A1 01 04 */	lwz r29, 0x104(r1)
/* 80166718 00163678  83 81 01 00 */	lwz r28, 0x100(r1)
/* 8016671C 0016367C  7C 08 03 A6 */	mtlr r0
/* 80166720 00163680  38 21 01 10 */	addi r1, r1, 0x110
/* 80166724 00163684  4E 80 00 20 */	blr 

.global Accept__6CDroneFR8IVisitor
Accept__6CDroneFR8IVisitor:
/* 80166728 00163688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016672C 0016368C  7C 08 02 A6 */	mflr r0
/* 80166730 00163690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80166734 00163694  7C 60 1B 78 */	mr r0, r3
/* 80166738 00163698  7C 83 23 78 */	mr r3, r4
/* 8016673C 0016369C  81 84 00 00 */	lwz r12, 0(r4)
/* 80166740 001636A0  7C 04 03 78 */	mr r4, r0
/* 80166744 001636A4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80166748 001636A8  7D 89 03 A6 */	mtctr r12
/* 8016674C 001636AC  4E 80 04 21 */	bctrl 
/* 80166750 001636B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80166754 001636B4  7C 08 03 A6 */	mtlr r0
/* 80166758 001636B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8016675C 001636BC  4E 80 00 20 */	blr 

.global "__ct__6CDroneF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC11CDamageInfoUiUiUiRC11CDamageInfofUiQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>RC16CActorParameters"
"__ct__6CDroneF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC11CDamageInfoUiUiUiRC11CDamageInfofUiQ24rstl60vector<Q211CVisorFlare9CFlareDef,Q24rstl17rmemory_allocator>RC16CActorParameters":
/* 80166760 001636C0  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80166764 001636C4  7C 08 02 A6 */	mflr r0
/* 80166768 001636C8  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8016676C 001636CC  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 80166770 001636D0  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 80166774 001636D4  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 80166778 001636D8  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 8016677C 001636DC  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 80166780 001636E0  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 80166784 001636E4  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 80166788 001636E8  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 8016678C 001636EC  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 80166790 001636F0  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 80166794 001636F4  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 80166798 001636F8  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 8016679C 001636FC  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 801667A0 00163700  F3 21 01 48 */	psq_st f25, 328(r1), 0, qr0
/* 801667A4 00163704  DB 01 01 30 */	stfd f24, 0x130(r1)
/* 801667A8 00163708  F3 01 01 38 */	psq_st f24, 312(r1), 0, qr0
/* 801667AC 0016370C  DA E1 01 20 */	stfd f23, 0x120(r1)
/* 801667B0 00163710  F2 E1 01 28 */	psq_st f23, 296(r1), 0, qr0
/* 801667B4 00163714  DA C1 01 10 */	stfd f22, 0x110(r1)
/* 801667B8 00163718  F2 C1 01 18 */	psq_st f22, 280(r1), 0, qr0
/* 801667BC 0016371C  DA A1 01 00 */	stfd f21, 0x100(r1)
/* 801667C0 00163720  F2 A1 01 08 */	psq_st f21, 264(r1), 0, qr0
/* 801667C4 00163724  DA 81 00 F0 */	stfd f20, 0xf0(r1)
/* 801667C8 00163728  F2 81 00 F8 */	psq_st f20, 248(r1), 0, qr0
/* 801667CC 0016372C  DA 61 00 E0 */	stfd f19, 0xe0(r1)
/* 801667D0 00163730  F2 61 00 E8 */	psq_st f19, 232(r1), 0, qr0
/* 801667D4 00163734  DA 41 00 D0 */	stfd f18, 0xd0(r1)
/* 801667D8 00163738  F2 41 00 D8 */	psq_st f18, 216(r1), 0, qr0
/* 801667DC 0016373C  DA 21 00 C0 */	stfd f17, 0xc0(r1)
/* 801667E0 00163740  F2 21 00 C8 */	psq_st f17, 200(r1), 0, qr0
/* 801667E4 00163744  DA 01 00 B0 */	stfd f16, 0xb0(r1)
/* 801667E8 00163748  F2 01 00 B8 */	psq_st f16, 184(r1), 0, qr0
/* 801667EC 0016374C  D9 E1 00 A0 */	stfd f15, 0xa0(r1)
/* 801667F0 00163750  F1 E1 00 A8 */	psq_st f15, 168(r1), 0, qr0
/* 801667F4 00163754  D9 C1 00 90 */	stfd f14, 0x90(r1)
/* 801667F8 00163758  F1 C1 00 98 */	psq_st f14, 152(r1), 0, qr0
/* 801667FC 0016375C  BE 01 00 50 */	stmw r16, 0x50(r1)
/* 80166800 00163760  7C D1 33 79 */	or. r17, r6, r6
/* 80166804 00163764  FD C0 08 90 */	fmr f14, f1
/* 80166808 00163768  FD E0 10 90 */	fmr f15, f2
/* 8016680C 0016376C  82 A1 01 B8 */	lwz r21, 0x1b8(r1)
/* 80166810 00163770  FE 00 18 90 */	fmr f16, f3
/* 80166814 00163774  82 C1 01 BC */	lwz r22, 0x1bc(r1)
/* 80166818 00163778  FE 20 20 90 */	fmr f17, f4
/* 8016681C 0016377C  FE 40 28 90 */	fmr f18, f5
/* 80166820 00163780  FE 60 30 90 */	fmr f19, f6
/* 80166824 00163784  81 81 01 C0 */	lwz r12, 0x1c0(r1)
/* 80166828 00163788  FE 80 38 90 */	fmr f20, f7
/* 8016682C 0016378C  81 61 01 C4 */	lwz r11, 0x1c4(r1)
/* 80166830 00163790  FE A0 40 90 */	fmr f21, f8
/* 80166834 00163794  82 E1 01 C8 */	lwz r23, 0x1c8(r1)
/* 80166838 00163798  83 01 01 CC */	lwz r24, 0x1cc(r1)
/* 8016683C 0016379C  7C 7E 1B 78 */	mr r30, r3
/* 80166840 001637A0  83 21 01 D0 */	lwz r25, 0x1d0(r1)
/* 80166844 001637A4  7C F2 3B 78 */	mr r18, r7
/* 80166848 001637A8  82 01 01 D4 */	lwz r16, 0x1d4(r1)
/* 8016684C 001637AC  7D 13 43 78 */	mr r19, r8
/* 80166850 001637B0  83 41 01 D8 */	lwz r26, 0x1d8(r1)
/* 80166854 001637B4  7D 34 4B 78 */	mr r20, r9
/* 80166858 001637B8  C2 C1 01 DC */	lfs f22, 0x1dc(r1)
/* 8016685C 001637BC  7D 5F 53 78 */	mr r31, r10
/* 80166860 001637C0  C2 E1 01 E0 */	lfs f23, 0x1e0(r1)
/* 80166864 001637C4  38 00 00 02 */	li r0, 2
/* 80166868 001637C8  C3 01 01 E4 */	lfs f24, 0x1e4(r1)
/* 8016686C 001637CC  C3 21 01 E8 */	lfs f25, 0x1e8(r1)
/* 80166870 001637D0  C3 41 01 EC */	lfs f26, 0x1ec(r1)
/* 80166874 001637D4  C3 61 01 F0 */	lfs f27, 0x1f0(r1)
/* 80166878 001637D8  C3 81 01 F4 */	lfs f28, 0x1f4(r1)
/* 8016687C 001637DC  C3 A1 01 F8 */	lfs f29, 0x1f8(r1)
/* 80166880 001637E0  C3 C1 01 FC */	lfs f30, 0x1fc(r1)
/* 80166884 001637E4  C3 E1 02 00 */	lfs f31, 0x200(r1)
/* 80166888 001637E8  83 61 02 0C */	lwz r27, 0x20c(r1)
/* 8016688C 001637EC  83 81 02 20 */	lwz r28, 0x220(r1)
/* 80166890 001637F0  8B A1 02 27 */	lbz r29, 0x227(r1)
/* 80166894 001637F4  40 82 00 08 */	bne lbl_8016689C
/* 80166898 001637F8  38 00 00 01 */	li r0, 1
lbl_8016689C:
/* 8016689C 001637FC  A0 84 00 00 */	lhz r4, 0(r4)
/* 801668A0 00163800  7F C3 F3 78 */	mr r3, r30
/* 801668A4 00163804  7C A6 2B 78 */	mr r6, r5
/* 801668A8 00163808  7E 27 8B 78 */	mr r7, r17
/* 801668AC 0016380C  B0 81 00 20 */	sth r4, 0x20(r1)
/* 801668B0 00163810  7E 48 93 78 */	mr r8, r18
/* 801668B4 00163814  7E 69 9B 78 */	mr r9, r19
/* 801668B8 00163818  7E 8A A3 78 */	mr r10, r20
/* 801668BC 0016381C  93 E1 00 08 */	stw r31, 8(r1)
/* 801668C0 00163820  38 A1 00 20 */	addi r5, r1, 0x20
/* 801668C4 00163824  38 80 00 07 */	li r4, 7
/* 801668C8 00163828  92 C1 00 0C */	stw r22, 0xc(r1)
/* 801668CC 0016382C  91 81 00 10 */	stw r12, 0x10(r1)
/* 801668D0 00163830  91 61 00 14 */	stw r11, 0x14(r1)
/* 801668D4 00163834  92 A1 00 18 */	stw r21, 0x18(r1)
/* 801668D8 00163838  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801668DC 0016383C  4B F1 6B 75 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801668E0 00163840  3C 60 80 3E */	lis r3, lbl_803E36A8@ha
/* 801668E4 00163844  3C 80 43 52 */	lis r4, 0x43525343@ha
/* 801668E8 00163848  38 03 36 A8 */	addi r0, r3, lbl_803E36A8@l
/* 801668EC 0016384C  38 61 00 24 */	addi r3, r1, 0x24
/* 801668F0 00163850  90 1E 00 00 */	stw r0, 0(r30)
/* 801668F4 00163854  38 04 53 43 */	addi r0, r4, 0x43525343@l
/* 801668F8 00163858  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801668FC 0016385C  93 1E 05 68 */	stw r24, 0x568(r30)
/* 80166900 00163860  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80166904 00163864  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80166908 00163868  93 61 00 30 */	stw r27, 0x30(r1)
/* 8016690C 0016386C  81 84 00 00 */	lwz r12, 0(r4)
/* 80166910 00163870  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80166914 00163874  7D 89 03 A6 */	mtctr r12
/* 80166918 00163878  4E 80 04 21 */	bctrl 
/* 8016691C 0016387C  3A 3E 05 6C */	addi r17, r30, 0x56c
/* 80166920 00163880  38 81 00 24 */	addi r4, r1, 0x24
/* 80166924 00163884  7E 23 8B 78 */	mr r3, r17
/* 80166928 00163888  48 1D A5 81 */	bl __ct__6CTokenFRC6CToken
/* 8016692C 0016388C  7E 23 8B 78 */	mr r3, r17
/* 80166930 00163890  48 1D A4 DD */	bl GetObj__6CTokenFv
/* 80166934 00163894  80 03 00 04 */	lwz r0, 4(r3)
/* 80166938 00163898  38 61 00 24 */	addi r3, r1, 0x24
/* 8016693C 0016389C  38 80 FF FF */	li r4, -1
/* 80166940 001638A0  90 11 00 08 */	stw r0, 8(r17)
/* 80166944 001638A4  48 1D A4 FD */	bl __dt__6CTokenFv
/* 80166948 001638A8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016694C 001638AC  7F 44 D3 78 */	mr r4, r26
/* 80166950 001638B0  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80166954 001638B4  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 80166958 001638B8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8016695C 001638BC  B0 1E 05 7A */	sth r0, 0x57a(r30)
/* 80166960 001638C0  4B F6 7B 0D */	bl sub_800ce46c
/* 80166964 001638C4  38 00 00 02 */	li r0, 2
/* 80166968 001638C8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8016696C 001638CC  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80166970 001638D0  3A 23 66 A0 */	addi r17, r3, skZero3f@l
/* 80166974 001638D4  3A 5E 06 90 */	addi r18, r30, 0x690
/* 80166978 001638D8  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 8016697C 001638DC  80 17 00 00 */	lwz r0, 0(r23)
/* 80166980 001638E0  38 9E 00 68 */	addi r4, r30, 0x68
/* 80166984 001638E4  7E 43 93 78 */	mr r3, r18
/* 80166988 001638E8  90 1E 05 90 */	stw r0, 0x590(r30)
/* 8016698C 001638EC  88 17 00 04 */	lbz r0, 4(r23)
/* 80166990 001638F0  98 1E 05 94 */	stb r0, 0x594(r30)
/* 80166994 001638F4  C0 17 00 08 */	lfs f0, 8(r23)
/* 80166998 001638F8  D0 1E 05 98 */	stfs f0, 0x598(r30)
/* 8016699C 001638FC  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 801669A0 00163900  D0 1E 05 9C */	stfs f0, 0x59c(r30)
/* 801669A4 00163904  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 801669A8 00163908  D0 1E 05 A0 */	stfs f0, 0x5a0(r30)
/* 801669AC 0016390C  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 801669B0 00163910  D0 1E 05 A4 */	stfs f0, 0x5a4(r30)
/* 801669B4 00163914  88 17 00 18 */	lbz r0, 0x18(r23)
/* 801669B8 00163918  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 801669BC 0016391C  80 19 00 00 */	lwz r0, 0(r25)
/* 801669C0 00163920  90 1E 05 AC */	stw r0, 0x5ac(r30)
/* 801669C4 00163924  88 19 00 04 */	lbz r0, 4(r25)
/* 801669C8 00163928  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 801669CC 0016392C  C0 19 00 08 */	lfs f0, 8(r25)
/* 801669D0 00163930  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 801669D4 00163934  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 801669D8 00163938  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 801669DC 0016393C  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 801669E0 00163940  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 801669E4 00163944  C0 19 00 14 */	lfs f0, 0x14(r25)
/* 801669E8 00163948  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 801669EC 0016394C  C0 01 02 18 */	lfs f0, 0x218(r1)
/* 801669F0 00163950  88 19 00 18 */	lbz r0, 0x18(r25)
/* 801669F4 00163954  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 801669F8 00163958  D0 3E 05 C8 */	stfs f1, 0x5c8(r30)
/* 801669FC 0016395C  D0 3E 05 CC */	stfs f1, 0x5cc(r30)
/* 80166A00 00163960  D0 3E 05 D0 */	stfs f1, 0x5d0(r30)
/* 80166A04 00163964  D0 3E 05 D4 */	stfs f1, 0x5d4(r30)
/* 80166A08 00163968  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
/* 80166A0C 0016396C  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 80166A10 00163970  D0 3E 05 E0 */	stfs f1, 0x5e0(r30)
/* 80166A14 00163974  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 80166A18 00163978  C0 01 02 08 */	lfs f0, 0x208(r1)
/* 80166A1C 0016397C  D0 3E 05 E8 */	stfs f1, 0x5e8(r30)
/* 80166A20 00163980  D1 DE 05 EC */	stfs f14, 0x5ec(r30)
/* 80166A24 00163984  D1 FE 05 F0 */	stfs f15, 0x5f0(r30)
/* 80166A28 00163988  D2 1E 05 F4 */	stfs f16, 0x5f4(r30)
/* 80166A2C 0016398C  D2 3E 05 F8 */	stfs f17, 0x5f8(r30)
/* 80166A30 00163990  D2 5E 05 FC */	stfs f18, 0x5fc(r30)
/* 80166A34 00163994  D3 1E 06 00 */	stfs f24, 0x600(r30)
/* 80166A38 00163998  D0 3E 06 04 */	stfs f1, 0x604(r30)
/* 80166A3C 0016399C  D2 7E 06 08 */	stfs f19, 0x608(r30)
/* 80166A40 001639A0  D2 9E 06 0C */	stfs f20, 0x60c(r30)
/* 80166A44 001639A4  D2 BE 06 10 */	stfs f21, 0x610(r30)
/* 80166A48 001639A8  D2 DE 06 14 */	stfs f22, 0x614(r30)
/* 80166A4C 001639AC  D2 FE 06 18 */	stfs f23, 0x618(r30)
/* 80166A50 001639B0  D3 3E 06 1C */	stfs f25, 0x61c(r30)
/* 80166A54 001639B4  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 80166A58 001639B8  C0 01 02 04 */	lfs f0, 0x204(r1)
/* 80166A5C 001639BC  D0 3E 06 24 */	stfs f1, 0x624(r30)
/* 80166A60 001639C0  D0 3E 06 28 */	stfs f1, 0x628(r30)
/* 80166A64 001639C4  D0 3E 06 2C */	stfs f1, 0x62c(r30)
/* 80166A68 001639C8  D0 3E 06 30 */	stfs f1, 0x630(r30)
/* 80166A6C 001639CC  D0 3E 06 34 */	stfs f1, 0x634(r30)
/* 80166A70 001639D0  D0 3E 06 38 */	stfs f1, 0x638(r30)
/* 80166A74 001639D4  D3 5E 06 3C */	stfs f26, 0x63c(r30)
/* 80166A78 001639D8  D3 7E 06 40 */	stfs f27, 0x640(r30)
/* 80166A7C 001639DC  D0 3E 06 44 */	stfs f1, 0x644(r30)
/* 80166A80 001639E0  D3 9E 06 48 */	stfs f28, 0x648(r30)
/* 80166A84 001639E4  D3 BE 06 4C */	stfs f29, 0x64c(r30)
/* 80166A88 001639E8  D3 DE 06 50 */	stfs f30, 0x650(r30)
/* 80166A8C 001639EC  D3 FE 06 54 */	stfs f31, 0x654(r30)
/* 80166A90 001639F0  D0 1E 06 58 */	stfs f0, 0x658(r30)
/* 80166A94 001639F4  C0 01 02 10 */	lfs f0, 0x210(r1)
/* 80166A98 001639F8  D0 1E 06 5C */	stfs f0, 0x65c(r30)
/* 80166A9C 001639FC  C0 01 02 14 */	lfs f0, 0x214(r1)
/* 80166AA0 00163A00  D0 1E 06 60 */	stfs f0, 0x660(r30)
/* 80166AA4 00163A04  C0 01 02 1C */	lfs f0, 0x21c(r1)
/* 80166AA8 00163A08  D0 1E 06 64 */	stfs f0, 0x664(r30)
/* 80166AAC 00163A0C  D0 3E 06 68 */	stfs f1, 0x668(r30)
/* 80166AB0 00163A10  D0 3E 06 6C */	stfs f1, 0x66c(r30)
/* 80166AB4 00163A14  C0 11 00 00 */	lfs f0, 0(r17)
/* 80166AB8 00163A18  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 80166ABC 00163A1C  C0 11 00 04 */	lfs f0, 4(r17)
/* 80166AC0 00163A20  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 80166AC4 00163A24  C0 11 00 08 */	lfs f0, 8(r17)
/* 80166AC8 00163A28  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80166ACC 00163A2C  C0 11 00 00 */	lfs f0, 0(r17)
/* 80166AD0 00163A30  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80166AD4 00163A34  C0 11 00 04 */	lfs f0, 4(r17)
/* 80166AD8 00163A38  D0 1E 06 80 */	stfs f0, 0x680(r30)
/* 80166ADC 00163A3C  C0 11 00 08 */	lfs f0, 8(r17)
/* 80166AE0 00163A40  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 80166AE4 00163A44  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166AE8 00163A48  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 80166AEC 00163A4C  48 16 8D C9 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 80166AF0 00163A50  3C 60 80 3F */	lis r3, lbl_803ECAF8@ha
/* 80166AF4 00163A54  7C 1D 00 D0 */	neg r0, r29
/* 80166AF8 00163A58  38 63 CA F8 */	addi r3, r3, lbl_803ECAF8@l
/* 80166AFC 00163A5C  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80166B00 00163A60  90 72 00 00 */	stw r3, 0(r18)
/* 80166B04 00163A64  7C 00 EB 78 */	or r0, r0, r29
/* 80166B08 00163A68  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80166B0C 00163A6C  C0 42 A0 38 */	lfs f2, lbl_805ABD58@sda21(r2)
/* 80166B10 00163A70  D0 32 00 10 */	stfs f1, 0x10(r18)
/* 80166B14 00163A74  38 A3 00 03 */	addi r5, r3, 3
/* 80166B18 00163A78  C0 02 A0 3C */	lfs f0, lbl_805ABD5C@sda21(r2)
/* 80166B1C 00163A7C  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 80166B20 00163A80  D0 32 00 14 */	stfs f1, 0x14(r18)
/* 80166B24 00163A84  38 80 00 00 */	li r4, 0
/* 80166B28 00163A88  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80166B2C 00163A8C  D0 52 00 18 */	stfs f2, 0x18(r18)
/* 80166B30 00163A90  C0 42 A0 40 */	lfs f2, lbl_805ABD60@sda21(r2)
/* 80166B34 00163A94  D0 12 00 1C */	stfs f0, 0x1c(r18)
/* 80166B38 00163A98  80 DF 01 0C */	lwz r6, 0x10c(r31)
/* 80166B3C 00163A9C  48 06 22 59 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80166B40 00163AA0  4B EB 49 F5 */	bl Identity__10CAxisAngleFv
/* 80166B44 00163AA4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80166B48 00163AA8  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80166B4C 00163AAC  C0 02 9F 68 */	lfs f0, lbl_805ABC88@sda21(r2)
/* 80166B50 00163AB0  38 00 00 00 */	li r0, 0
/* 80166B54 00163AB4  D0 3E 07 94 */	stfs f1, 0x794(r30)
/* 80166B58 00163AB8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80166B5C 00163ABC  D0 3E 07 98 */	stfs f1, 0x798(r30)
/* 80166B60 00163AC0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80166B64 00163AC4  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80166B68 00163AC8  D0 3E 07 9C */	stfs f1, 0x79c(r30)
/* 80166B6C 00163ACC  C0 24 66 A0 */	lfs f1, skZero3f@l(r4)
/* 80166B70 00163AD0  D0 3E 07 A0 */	stfs f1, 0x7a0(r30)
/* 80166B74 00163AD4  C0 31 00 04 */	lfs f1, 4(r17)
/* 80166B78 00163AD8  D0 3E 07 A4 */	stfs f1, 0x7a4(r30)
/* 80166B7C 00163ADC  C0 31 00 08 */	lfs f1, 8(r17)
/* 80166B80 00163AE0  D0 3E 07 A8 */	stfs f1, 0x7a8(r30)
/* 80166B84 00163AE4  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 80166B88 00163AE8  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 80166B8C 00163AEC  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 80166B90 00163AF0  D0 1E 07 B8 */	stfs f0, 0x7b8(r30)
/* 80166B94 00163AF4  D0 1E 07 BC */	stfs f0, 0x7bc(r30)
/* 80166B98 00163AF8  D0 1E 07 C0 */	stfs f0, 0x7c0(r30)
/* 80166B9C 00163AFC  D0 1E 07 C4 */	stfs f0, 0x7c4(r30)
/* 80166BA0 00163B00  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80166BA4 00163B04  48 18 1E 0D */	bl TranslateSFXID__11CSfxManagerFUs
/* 80166BA8 00163B08  B0 7E 07 CC */	sth r3, 0x7cc(r30)
/* 80166BAC 00163B0C  38 60 00 00 */	li r3, 0
/* 80166BB0 00163B10  34 9E 07 DC */	addic. r4, r30, 0x7dc
/* 80166BB4 00163B14  38 00 00 02 */	li r0, 2
/* 80166BB8 00163B18  90 7E 07 D0 */	stw r3, 0x7d0(r30)
/* 80166BBC 00163B1C  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 80166BC0 00163B20  41 82 00 0C */	beq lbl_80166BCC
/* 80166BC4 00163B24  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166BC8 00163B28  B0 04 00 00 */	sth r0, 0(r4)
lbl_80166BCC:
/* 80166BCC 00163B2C  34 84 00 02 */	addic. r4, r4, 2
/* 80166BD0 00163B30  41 82 00 0C */	beq lbl_80166BDC
/* 80166BD4 00163B34  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80166BD8 00163B38  B0 04 00 00 */	sth r0, 0(r4)
lbl_80166BDC:
/* 80166BDC 00163B3C  38 00 00 02 */	li r0, 2
/* 80166BE0 00163B40  34 9E 07 E4 */	addic. r4, r30, 0x7e4
/* 80166BE4 00163B44  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80166BE8 00163B48  90 1E 07 E0 */	stw r0, 0x7e0(r30)
/* 80166BEC 00163B4C  38 63 66 A0 */	addi r3, r3, skZero3f@l
/* 80166BF0 00163B50  41 82 00 1C */	beq lbl_80166C0C
/* 80166BF4 00163B54  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166BF8 00163B58  D0 04 00 00 */	stfs f0, 0(r4)
/* 80166BFC 00163B5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80166C00 00163B60  D0 04 00 04 */	stfs f0, 4(r4)
/* 80166C04 00163B64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80166C08 00163B68  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80166C0C:
/* 80166C0C 00163B6C  34 84 00 0C */	addic. r4, r4, 0xc
/* 80166C10 00163B70  41 82 00 1C */	beq lbl_80166C2C
/* 80166C14 00163B74  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166C18 00163B78  D0 04 00 00 */	stfs f0, 0(r4)
/* 80166C1C 00163B7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80166C20 00163B80  D0 04 00 04 */	stfs f0, 4(r4)
/* 80166C24 00163B84  C0 03 00 08 */	lfs f0, 8(r3)
/* 80166C28 00163B88  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80166C2C:
/* 80166C2C 00163B8C  38 00 00 02 */	li r0, 2
/* 80166C30 00163B90  34 9E 08 00 */	addic. r4, r30, 0x800
/* 80166C34 00163B94  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80166C38 00163B98  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 80166C3C 00163B9C  38 63 66 A0 */	addi r3, r3, skZero3f@l
/* 80166C40 00163BA0  41 82 00 1C */	beq lbl_80166C5C
/* 80166C44 00163BA4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166C48 00163BA8  D0 04 00 00 */	stfs f0, 0(r4)
/* 80166C4C 00163BAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80166C50 00163BB0  D0 04 00 04 */	stfs f0, 4(r4)
/* 80166C54 00163BB4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80166C58 00163BB8  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80166C5C:
/* 80166C5C 00163BBC  34 84 00 0C */	addic. r4, r4, 0xc
/* 80166C60 00163BC0  41 82 00 1C */	beq lbl_80166C7C
/* 80166C64 00163BC4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80166C68 00163BC8  D0 04 00 00 */	stfs f0, 0(r4)
/* 80166C6C 00163BCC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80166C70 00163BD0  D0 04 00 04 */	stfs f0, 4(r4)
/* 80166C74 00163BD4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80166C78 00163BD8  D0 04 00 08 */	stfs f0, 8(r4)
lbl_80166C7C:
/* 80166C7C 00163BDC  38 00 00 02 */	li r0, 2
/* 80166C80 00163BE0  34 7E 08 1C */	addic. r3, r30, 0x81c
/* 80166C84 00163BE4  90 1E 08 18 */	stw r0, 0x818(r30)
/* 80166C88 00163BE8  41 82 00 0C */	beq lbl_80166C94
/* 80166C8C 00163BEC  C0 0D 8D 04 */	lfs f0, lbl_805A78C4@sda21(r13)
/* 80166C90 00163BF0  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80166C94:
/* 80166C94 00163BF4  34 63 00 04 */	addic. r3, r3, 4
/* 80166C98 00163BF8  41 82 00 0C */	beq lbl_80166CA4
/* 80166C9C 00163BFC  C0 0D 8D 04 */	lfs f0, lbl_805A78C4@sda21(r13)
/* 80166CA0 00163C00  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80166CA4:
/* 80166CA4 00163C04  38 00 00 02 */	li r0, 2
/* 80166CA8 00163C08  34 7E 08 28 */	addic. r3, r30, 0x828
/* 80166CAC 00163C0C  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80166CB0 00163C10  41 82 00 0C */	beq lbl_80166CBC
/* 80166CB4 00163C14  88 0D 8D 08 */	lbz r0, lbl_805A78C8@sda21(r13)
/* 80166CB8 00163C18  98 03 00 00 */	stb r0, 0(r3)
lbl_80166CBC:
/* 80166CBC 00163C1C  34 63 00 01 */	addic. r3, r3, 1
/* 80166CC0 00163C20  41 82 00 0C */	beq lbl_80166CCC
/* 80166CC4 00163C24  88 0D 8D 08 */	lbz r0, lbl_805A78C8@sda21(r13)
/* 80166CC8 00163C28  98 03 00 00 */	stb r0, 0(r3)
lbl_80166CCC:
/* 80166CCC 00163C2C  3C 80 80 3D */	lis r4, lbl_803D0398@ha
/* 80166CD0 00163C30  38 60 00 4C */	li r3, 0x4c
/* 80166CD4 00163C34  38 84 03 98 */	addi r4, r4, lbl_803D0398@l
/* 80166CD8 00163C38  38 A0 00 00 */	li r5, 0
/* 80166CDC 00163C3C  38 84 00 3B */	addi r4, r4, 0x3b
/* 80166CE0 00163C40  48 1A EB 8D */	bl __nw__FUlPCcPCc
/* 80166CE4 00163C44  7C 60 1B 79 */	or. r0, r3, r3
/* 80166CE8 00163C48  41 82 00 24 */	beq lbl_80166D0C
/* 80166CEC 00163C4C  C0 02 9F 7C */	lfs f0, lbl_805ABC9C@sda21(r2)
/* 80166CF0 00163C50  38 81 00 34 */	addi r4, r1, 0x34
/* 80166CF4 00163C54  92 01 00 34 */	stw r16, 0x34(r1)
/* 80166CF8 00163C58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80166CFC 00163C5C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80166D00 00163C60  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80166D04 00163C64  4B FB 00 59 */	bl __ct__10CModelDataFRC10CStaticRes
/* 80166D08 00163C68  7C 60 1B 78 */	mr r0, r3
lbl_80166D0C:
/* 80166D0C 00163C6C  90 1E 08 2C */	stw r0, 0x82c(r30)
/* 80166D10 00163C70  38 80 00 00 */	li r4, 0
/* 80166D14 00163C74  7F C3 F3 78 */	mr r3, r30
/* 80166D18 00163C78  B0 9E 08 30 */	sth r4, 0x830(r30)
/* 80166D1C 00163C7C  80 1E 08 30 */	lwz r0, 0x830(r30)
/* 80166D20 00163C80  50 80 6C 24 */	rlwimi r0, r4, 0xd, 0x10, 0x12
/* 80166D24 00163C84  90 1E 08 30 */	stw r0, 0x830(r30)
/* 80166D28 00163C88  80 1E 08 30 */	lwz r0, 0x830(r30)
/* 80166D2C 00163C8C  50 80 54 EA */	rlwimi r0, r4, 0xa, 0x13, 0x15
/* 80166D30 00163C90  90 1E 08 30 */	stw r0, 0x830(r30)
/* 80166D34 00163C94  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D38 00163C98  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80166D3C 00163C9C  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D40 00163CA0  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D44 00163CA4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80166D48 00163CA8  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D4C 00163CAC  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D50 00163CB0  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80166D54 00163CB4  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D58 00163CB8  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D5C 00163CBC  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80166D60 00163CC0  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D64 00163CC4  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D68 00163CC8  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80166D6C 00163CCC  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D70 00163CD0  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D74 00163CD4  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80166D78 00163CD8  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D7C 00163CDC  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D80 00163CE0  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 80166D84 00163CE4  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D88 00163CE8  88 1E 08 34 */	lbz r0, 0x834(r30)
/* 80166D8C 00163CEC  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80166D90 00163CF0  98 1E 08 34 */	stb r0, 0x834(r30)
/* 80166D94 00163CF4  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80166D98 00163CF8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80166D9C 00163CFC  98 1E 08 35 */	stb r0, 0x835(r30)
/* 80166DA0 00163D00  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80166DA4 00163D04  53 A0 36 72 */	rlwimi r0, r29, 6, 0x19, 0x19
/* 80166DA8 00163D08  98 1E 08 35 */	stb r0, 0x835(r30)
/* 80166DAC 00163D0C  88 1E 08 35 */	lbz r0, 0x835(r30)
/* 80166DB0 00163D10  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80166DB4 00163D14  98 1E 08 35 */	stb r0, 0x835(r30)
/* 80166DB8 00163D18  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80166DBC 00163D1C  4B FF DB 51 */	bl sub_8016490c
/* 80166DC0 00163D20  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 80166DC4 00163D24  38 60 00 01 */	li r3, 1
/* 80166DC8 00163D28  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80166DCC 00163D2C  38 7E 04 60 */	addi r3, r30, 0x460
/* 80166DD0 00163D30  98 1E 04 E1 */	stb r0, 0x4e1(r30)
/* 80166DD4 00163D34  38 80 00 03 */	li r4, 3
/* 80166DD8 00163D38  38 A0 00 00 */	li r5, 0
/* 80166DDC 00163D3C  48 0C CF E9 */	bl SetAvailableState__20CKnockBackControllerFib
/* 80166DE0 00163D40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80166DE4 00163D44  38 60 00 01 */	li r3, 1
/* 80166DE8 00163D48  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80166DEC 00163D4C  7F C3 F3 78 */	mr r3, r30
/* 80166DF0 00163D50  98 1E 04 E2 */	stb r0, 0x4e2(r30)
/* 80166DF4 00163D54  4B F1 0A A1 */	bl MakeThermalColdAndHot__10CPatternedFv
/* 80166DF8 00163D58  80 BE 03 FC */	lwz r5, 0x3fc(r30)
/* 80166DFC 00163D5C  7F C3 F3 78 */	mr r3, r30
/* 80166E00 00163D60  20 85 00 01 */	subfic r4, r5, 1
/* 80166E04 00163D64  38 05 FF FF */	addi r0, r5, -1
/* 80166E08 00163D68  7C 80 03 78 */	or r0, r4, r0
/* 80166E0C 00163D6C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80166E10 00163D70  4B EE BF 5D */	bl CreateShadow__6CActorFb
/* 80166E14 00163D74  7F C3 F3 78 */	mr r3, r30
/* 80166E18 00163D78  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 80166E1C 00163D7C  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 80166E20 00163D80  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 80166E24 00163D84  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 80166E28 00163D88  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 80166E2C 00163D8C  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 80166E30 00163D90  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 80166E34 00163D94  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 80166E38 00163D98  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 80166E3C 00163D9C  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 80166E40 00163DA0  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 80166E44 00163DA4  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 80166E48 00163DA8  E3 21 01 48 */	psq_l f25, 328(r1), 0, qr0
/* 80166E4C 00163DAC  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 80166E50 00163DB0  E3 01 01 38 */	psq_l f24, 312(r1), 0, qr0
/* 80166E54 00163DB4  CB 01 01 30 */	lfd f24, 0x130(r1)
/* 80166E58 00163DB8  E2 E1 01 28 */	psq_l f23, 296(r1), 0, qr0
/* 80166E5C 00163DBC  CA E1 01 20 */	lfd f23, 0x120(r1)
/* 80166E60 00163DC0  E2 C1 01 18 */	psq_l f22, 280(r1), 0, qr0
/* 80166E64 00163DC4  CA C1 01 10 */	lfd f22, 0x110(r1)
/* 80166E68 00163DC8  E2 A1 01 08 */	psq_l f21, 264(r1), 0, qr0
/* 80166E6C 00163DCC  CA A1 01 00 */	lfd f21, 0x100(r1)
/* 80166E70 00163DD0  E2 81 00 F8 */	psq_l f20, 248(r1), 0, qr0
/* 80166E74 00163DD4  CA 81 00 F0 */	lfd f20, 0xf0(r1)
/* 80166E78 00163DD8  E2 61 00 E8 */	psq_l f19, 232(r1), 0, qr0
/* 80166E7C 00163DDC  CA 61 00 E0 */	lfd f19, 0xe0(r1)
/* 80166E80 00163DE0  E2 41 00 D8 */	psq_l f18, 216(r1), 0, qr0
/* 80166E84 00163DE4  CA 41 00 D0 */	lfd f18, 0xd0(r1)
/* 80166E88 00163DE8  E2 21 00 C8 */	psq_l f17, 200(r1), 0, qr0
/* 80166E8C 00163DEC  CA 21 00 C0 */	lfd f17, 0xc0(r1)
/* 80166E90 00163DF0  E2 01 00 B8 */	psq_l f16, 184(r1), 0, qr0
/* 80166E94 00163DF4  CA 01 00 B0 */	lfd f16, 0xb0(r1)
/* 80166E98 00163DF8  E1 E1 00 A8 */	psq_l f15, 168(r1), 0, qr0
/* 80166E9C 00163DFC  C9 E1 00 A0 */	lfd f15, 0xa0(r1)
/* 80166EA0 00163E00  E1 C1 00 98 */	psq_l f14, 152(r1), 0, qr0
/* 80166EA4 00163E04  C9 C1 00 90 */	lfd f14, 0x90(r1)
/* 80166EA8 00163E08  BA 01 00 50 */	lmw r16, 0x50(r1)
/* 80166EAC 00163E0C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80166EB0 00163E10  7C 08 03 A6 */	mtlr r0
/* 80166EB4 00163E14  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 80166EB8 00163E18  4E 80 00 20 */	blr 

.global sub_80166ebc
sub_80166ebc:
/* 80166EBC 00163E1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80166EC0 00163E20  7C 08 02 A6 */	mflr r0
/* 80166EC4 00163E24  7C 88 23 78 */	mr r8, r4
/* 80166EC8 00163E28  38 C0 00 04 */	li r6, 4
/* 80166ECC 00163E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80166ED0 00163E30  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80166ED4 00163E34  41 82 00 08 */	beq lbl_80166EDC
/* 80166ED8 00163E38  38 C0 00 01 */	li r6, 1
lbl_80166EDC:
/* 80166EDC 00163E3C  A0 E3 00 08 */	lhz r7, 8(r3)
/* 80166EE0 00163E40  38 81 00 10 */	addi r4, r1, 0x10
/* 80166EE4 00163E44  38 A1 00 0C */	addi r5, r1, 0xc
/* 80166EE8 00163E48  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 80166EEC 00163E4C  A0 03 00 F4 */	lhz r0, 0xf4(r3)
/* 80166EF0 00163E50  7D 03 43 78 */	mr r3, r8
/* 80166EF4 00163E54  B0 E1 00 08 */	sth r7, 8(r1)
/* 80166EF8 00163E58  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80166EFC 00163E5C  4B ED CF 59 */	bl SendScriptMsgAlways__13CStateManagerF9TUniqueId
/* 80166F00 00163E60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80166F04 00163E64  7C 08 03 A6 */	mtlr r0
/* 80166F08 00163E68  38 21 00 20 */	addi r1, r1, 0x20
/* 80166F0C 00163E6C  4E 80 00 20 */	blr 

.global sub_80166f10
sub_80166f10:
/* 80166F10 00163E70  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80166F14 00163E74  7C 08 02 A6 */	mflr r0
/* 80166F18 00163E78  90 01 01 44 */	stw r0, 0x144(r1)
/* 80166F1C 00163E7C  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80166F20 00163E80  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 80166F24 00163E84  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 80166F28 00163E88  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 80166F2C 00163E8C  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 80166F30 00163E90  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 80166F34 00163E94  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 80166F38 00163E98  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 80166F3C 00163E9C  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 80166F40 00163EA0  F3 61 00 F8 */	psq_st f27, 248(r1), 0, qr0
/* 80166F44 00163EA4  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 80166F48 00163EA8  F3 41 00 E8 */	psq_st f26, 232(r1), 0, qr0
/* 80166F4C 00163EAC  DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 80166F50 00163EB0  F3 21 00 D8 */	psq_st f25, 216(r1), 0, qr0
/* 80166F54 00163EB4  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80166F58 00163EB8  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80166F5C 00163EBC  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 80166F60 00163EC0  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 80166F64 00163EC4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80166F68 00163EC8  FF A0 08 90 */	fmr f29, f1
/* 80166F6C 00163ECC  7C 7C 1B 78 */	mr r28, r3
/* 80166F70 00163ED0  7C 9F 23 78 */	mr r31, r4
/* 80166F74 00163ED4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80166F78 00163ED8  7C BE 2B 78 */	mr r30, r5
/* 80166F7C 00163EDC  7C DD 33 78 */	mr r29, r6
/* 80166F80 00163EE0  41 82 02 08 */	beq lbl_80167188
/* 80166F84 00163EE4  C0 3C 00 EC */	lfs f1, 0xec(r28)
/* 80166F88 00163EE8  38 61 00 44 */	addi r3, r1, 0x44
/* 80166F8C 00163EEC  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 80166F90 00163EF0  C0 7C 00 F0 */	lfs f3, 0xf0(r28)
/* 80166F94 00163EF4  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 80166F98 00163EF8  EC 81 00 28 */	fsubs f4, f1, f0
/* 80166F9C 00163EFC  C0 3C 00 E8 */	lfs f1, 0xe8(r28)
/* 80166FA0 00163F00  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80166FA4 00163F04  EC 43 10 28 */	fsubs f2, f3, f2
/* 80166FA8 00163F08  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80166FAC 00163F0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80166FB0 00163F10  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80166FB4 00163F14  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80166FB8 00163F18  48 1A D9 01 */	bl Magnitude__9CVector3fCFv
/* 80166FBC 00163F1C  C0 7C 00 60 */	lfs f3, 0x60(r28)
/* 80166FC0 00163F20  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80166FC4 00163F24  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 80166FC8 00163F28  FF E0 08 90 */	fmr f31, f1
/* 80166FCC 00163F2C  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80166FD0 00163F30  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80166FD4 00163F34  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80166FD8 00163F38  38 61 00 50 */	addi r3, r1, 0x50
/* 80166FDC 00163F3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80166FE0 00163F40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80166FE4 00163F44  38 BC 00 E8 */	addi r5, r28, 0xe8
/* 80166FE8 00163F48  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80166FEC 00163F4C  48 1A CB 25 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80166FF0 00163F50  38 61 00 80 */	addi r3, r1, 0x80
/* 80166FF4 00163F54  38 81 00 50 */	addi r4, r1, 0x50
/* 80166FF8 00163F58  48 1A BB 7D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80166FFC 00163F5C  48 1A 59 81 */	bl DisableAllLights__9CGraphicsFv
/* 80167000 00163F60  38 60 00 00 */	li r3, 0
/* 80167004 00163F64  48 1A 1E 11 */	bl SetNumTexGens__3CGXFUc
/* 80167008 00163F68  38 60 00 00 */	li r3, 0
/* 8016700C 00163F6C  38 80 00 FF */	li r4, 0xff
/* 80167010 00163F70  38 A0 00 FF */	li r5, 0xff
/* 80167014 00163F74  38 C0 00 04 */	li r6, 4
/* 80167018 00163F78  48 1A 19 35 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8016701C 00163F7C  80 8D 9C 68 */	lwz r4, lbl_805A8828@sda21(r13)
/* 80167020 00163F80  38 60 00 00 */	li r3, 0
/* 80167024 00163F84  48 1A 32 95 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 80167028 00163F88  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8016702C 00163F8C  41 82 00 1C */	beq lbl_80167048
/* 80167030 00163F90  38 60 00 01 */	li r3, 1
/* 80167034 00163F94  38 80 00 01 */	li r4, 1
/* 80167038 00163F98  38 A0 00 01 */	li r5, 1
/* 8016703C 00163F9C  38 C0 00 00 */	li r6, 0
/* 80167040 00163FA0  48 1A 4A 11 */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 80167044 00163FA4  48 00 00 18 */	b lbl_8016705C
lbl_80167048:
/* 80167048 00163FA8  38 60 00 01 */	li r3, 1
/* 8016704C 00163FAC  38 80 00 04 */	li r4, 4
/* 80167050 00163FB0  38 A0 00 01 */	li r5, 1
/* 80167054 00163FB4  38 C0 00 00 */	li r6, 0
/* 80167058 00163FB8  48 1A 49 F9 */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
lbl_8016705C:
/* 8016705C 00163FBC  38 60 00 00 */	li r3, 0
/* 80167060 00163FC0  48 1A 4A 11 */	bl SetCullMode__9CGraphicsF12ERglCullMode
/* 80167064 00163FC4  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80167068 00163FC8  3C 80 80 5A */	lis r4, skIdentity4f@ha
/* 8016706C 00163FCC  38 84 66 70 */	addi r4, r4, skIdentity4f@l
/* 80167070 00163FD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80167074 00163FD4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80167078 00163FD8  7D 89 03 A6 */	mtctr r12
/* 8016707C 00163FDC  4E 80 04 21 */	bctrl 
/* 80167080 00163FE0  38 60 00 98 */	li r3, 0x98
/* 80167084 00163FE4  48 1A 45 E5 */	bl StreamBegin__9CGraphicsF13ERglPrimitive
/* 80167088 00163FE8  3C 00 43 30 */	lis r0, 0x4330
/* 8016708C 00163FEC  C3 C2 9F 68 */	lfs f30, lbl_805ABC88@sda21(r2)
/* 80167090 00163FF0  93 E1 00 B4 */	stw r31, 0xb4(r1)
/* 80167094 00163FF4  3B FF 00 01 */	addi r31, r31, 1
/* 80167098 00163FF8  C8 22 A0 48 */	lfd f1, lbl_805ABD68@sda21(r2)
/* 8016709C 00163FFC  FF 60 F0 90 */	fmr f27, f30
/* 801670A0 00164000  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 801670A4 00164004  FF 80 F0 90 */	fmr f28, f30
/* 801670A8 00164008  C0 42 9F F8 */	lfs f2, lbl_805ABD18@sda21(r2)
/* 801670AC 0016400C  3B A0 00 00 */	li r29, 0
/* 801670B0 00164010  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 801670B4 00164014  83 DE 00 00 */	lwz r30, 0(r30)
/* 801670B8 00164018  EC 00 08 28 */	fsubs f0, f0, f1
/* 801670BC 0016401C  EF 42 00 24 */	fdivs f26, f2, f0
/* 801670C0 00164020  48 00 00 B4 */	b lbl_80167174
lbl_801670C4:
/* 801670C4 00164024  FC 20 F0 90 */	fmr f1, f30
/* 801670C8 00164028  48 1A DC 7D */	bl FastCosR__5CMathFf
/* 801670CC 0016402C  FC 00 08 90 */	fmr f0, f1
/* 801670D0 00164030  FC 20 F0 90 */	fmr f1, f30
/* 801670D4 00164034  FF 20 00 90 */	fmr f25, f0
/* 801670D8 00164038  48 1A DD 19 */	bl FastSinR__5CMathFf
/* 801670DC 0016403C  EC 59 07 72 */	fmuls f2, f25, f29
/* 801670E0 00164040  D3 61 00 3C */	stfs f27, 0x3c(r1)
/* 801670E4 00164044  EC 01 07 72 */	fmuls f0, f1, f29
/* 801670E8 00164048  38 61 00 20 */	addi r3, r1, 0x20
/* 801670EC 0016404C  38 81 00 80 */	addi r4, r1, 0x80
/* 801670F0 00164050  38 A1 00 38 */	addi r5, r1, 0x38
/* 801670F4 00164054  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801670F8 00164058  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801670FC 0016405C  48 1A B9 ED */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80167100 00164060  38 61 00 20 */	addi r3, r1, 0x20
/* 80167104 00164064  48 1A 44 BD */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80167108 00164068  7F C3 F3 78 */	mr r3, r30
/* 8016710C 0016406C  48 1A 44 61 */	bl StreamColor__9CGraphicsFUi
/* 80167110 00164070  FC 40 C8 90 */	fmr f2, f25
/* 80167114 00164074  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80167118 00164078  48 1A 43 4D */	bl StreamTexcoord__9CGraphicsFff
/* 8016711C 0016407C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80167120 00164080  38 61 00 14 */	addi r3, r1, 0x14
/* 80167124 00164084  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80167128 00164088  38 81 00 80 */	addi r4, r1, 0x80
/* 8016712C 0016408C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80167130 00164090  EC 5F 10 2A */	fadds f2, f31, f2
/* 80167134 00164094  EC 3C 08 2A */	fadds f1, f28, f1
/* 80167138 00164098  38 A1 00 08 */	addi r5, r1, 8
/* 8016713C 0016409C  EC 1C 00 2A */	fadds f0, f28, f0
/* 80167140 001640A0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80167144 001640A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80167148 001640A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8016714C 001640AC  48 1A B9 9D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80167150 001640B0  38 61 00 14 */	addi r3, r1, 0x14
/* 80167154 001640B4  48 1A 44 6D */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 80167158 001640B8  7F C3 F3 78 */	mr r3, r30
/* 8016715C 001640BC  48 1A 44 11 */	bl StreamColor__9CGraphicsFUi
/* 80167160 001640C0  FC 20 F8 90 */	fmr f1, f31
/* 80167164 001640C4  FC 40 C8 90 */	fmr f2, f25
/* 80167168 001640C8  48 1A 42 FD */	bl StreamTexcoord__9CGraphicsFff
/* 8016716C 001640CC  EF DE D0 2A */	fadds f30, f30, f26
/* 80167170 001640D0  3B BD 00 01 */	addi r29, r29, 1
lbl_80167174:
/* 80167174 001640D4  7C 1D F8 40 */	cmplw r29, r31
/* 80167178 001640D8  41 80 FF 4C */	blt lbl_801670C4
/* 8016717C 001640DC  48 1A 42 95 */	bl StreamEnd__9CGraphicsFv
/* 80167180 001640E0  38 60 00 01 */	li r3, 1
/* 80167184 001640E4  48 1A 48 ED */	bl SetCullMode__9CGraphicsF12ERglCullMode
lbl_80167188:
/* 80167188 001640E8  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 8016718C 001640EC  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80167190 001640F0  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 80167194 001640F4  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 80167198 001640F8  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 8016719C 001640FC  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 801671A0 00164100  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 801671A4 00164104  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 801671A8 00164108  E3 61 00 F8 */	psq_l f27, 248(r1), 0, qr0
/* 801671AC 0016410C  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 801671B0 00164110  E3 41 00 E8 */	psq_l f26, 232(r1), 0, qr0
/* 801671B4 00164114  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 801671B8 00164118  E3 21 00 D8 */	psq_l f25, 216(r1), 0, qr0
/* 801671BC 0016411C  CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 801671C0 00164120  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801671C4 00164124  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801671C8 00164128  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 801671CC 0016412C  80 01 01 44 */	lwz r0, 0x144(r1)
/* 801671D0 00164130  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 801671D4 00164134  7C 08 03 A6 */	mtlr r0
/* 801671D8 00164138  38 21 01 40 */	addi r1, r1, 0x140
/* 801671DC 0016413C  4E 80 00 20 */	blr 

.global Render__11CDroneLaserCFRC13CStateManager
Render__11CDroneLaserCFRC13CStateManager:
/* 801671E0 00164140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801671E4 00164144  7C 08 02 A6 */	mflr r0
/* 801671E8 00164148  38 80 00 01 */	li r4, 1
/* 801671EC 0016414C  38 A0 00 01 */	li r5, 1
/* 801671F0 00164150  90 01 00 24 */	stw r0, 0x24(r1)
/* 801671F4 00164154  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801671F8 00164158  7C 7F 1B 78 */	mr r31, r3
/* 801671FC 0016415C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80167200 00164160  81 83 00 00 */	lwz r12, 0(r3)
/* 80167204 00164164  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80167208 00164168  7D 89 03 A6 */	mtctr r12
/* 8016720C 0016416C  4E 80 04 21 */	bctrl 
/* 80167210 00164170  C0 22 9F 7C */	lfs f1, lbl_805ABC9C@sda21(r2)
/* 80167214 00164174  38 61 00 10 */	addi r3, r1, 0x10
/* 80167218 00164178  C0 42 A0 54 */	lfs f2, lbl_805ABD74@sda21(r2)
/* 8016721C 0016417C  FC 80 08 90 */	fmr f4, f1
/* 80167220 00164180  FC 60 10 90 */	fmr f3, f2
/* 80167224 00164184  48 1F C1 C9 */	bl __ct__6CColorFffff
/* 80167228 00164188  C0 22 A0 50 */	lfs f1, lbl_805ABD70@sda21(r2)
/* 8016722C 0016418C  7C 65 1B 78 */	mr r5, r3
/* 80167230 00164190  7F E3 FB 78 */	mr r3, r31
/* 80167234 00164194  38 80 00 04 */	li r4, 4
/* 80167238 00164198  38 C0 00 01 */	li r6, 1
/* 8016723C 0016419C  4B FF FC D5 */	bl sub_80166f10
/* 80167240 001641A0  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80167244 001641A4  38 80 00 01 */	li r4, 1
/* 80167248 001641A8  38 A0 00 00 */	li r5, 0
/* 8016724C 001641AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80167250 001641B0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80167254 001641B4  7D 89 03 A6 */	mtctr r12
/* 80167258 001641B8  4E 80 04 21 */	bctrl 
/* 8016725C 001641BC  C0 42 9F 68 */	lfs f2, lbl_805ABC88@sda21(r2)
/* 80167260 001641C0  38 61 00 0C */	addi r3, r1, 0xc
/* 80167264 001641C4  C0 22 A0 5C */	lfs f1, lbl_805ABD7C@sda21(r2)
/* 80167268 001641C8  FC 60 10 90 */	fmr f3, f2
/* 8016726C 001641CC  C0 82 9F 80 */	lfs f4, lbl_805ABCA0@sda21(r2)
/* 80167270 001641D0  48 1F C1 7D */	bl __ct__6CColorFffff
/* 80167274 001641D4  C0 22 A0 58 */	lfs f1, lbl_805ABD78@sda21(r2)
/* 80167278 001641D8  7C 65 1B 78 */	mr r5, r3
/* 8016727C 001641DC  7F E3 FB 78 */	mr r3, r31
/* 80167280 001641E0  38 80 00 05 */	li r4, 5
/* 80167284 001641E4  38 C0 00 00 */	li r6, 0
/* 80167288 001641E8  4B FF FC 89 */	bl sub_80166f10
/* 8016728C 001641EC  C0 42 9F 8C */	lfs f2, lbl_805ABCAC@sda21(r2)
/* 80167290 001641F0  38 61 00 08 */	addi r3, r1, 8
/* 80167294 001641F4  C0 22 A0 5C */	lfs f1, lbl_805ABD7C@sda21(r2)
/* 80167298 001641F8  FC 60 10 90 */	fmr f3, f2
/* 8016729C 001641FC  C0 82 9F C0 */	lfs f4, lbl_805ABCE0@sda21(r2)
/* 801672A0 00164200  48 1F C1 4D */	bl __ct__6CColorFffff
/* 801672A4 00164204  C0 22 A0 60 */	lfs f1, lbl_805ABD80@sda21(r2)
/* 801672A8 00164208  7C 65 1B 78 */	mr r5, r3
/* 801672AC 0016420C  7F E3 FB 78 */	mr r3, r31
/* 801672B0 00164210  38 80 00 07 */	li r4, 7
/* 801672B4 00164214  38 C0 00 00 */	li r6, 0
/* 801672B8 00164218  4B FF FC 59 */	bl sub_80166f10
/* 801672BC 0016421C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801672C0 00164220  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801672C4 00164224  7C 08 03 A6 */	mtlr r0
/* 801672C8 00164228  38 21 00 20 */	addi r1, r1, 0x20
/* 801672CC 0016422C  4E 80 00 20 */	blr 

.global AddToRenderer__11CDroneLaserCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__11CDroneLaserCFRC14CFrustumPlanesRC13CStateManager:
/* 801672D0 00164230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801672D4 00164234  7C 08 02 A6 */	mflr r0
/* 801672D8 00164238  90 01 00 14 */	stw r0, 0x14(r1)
/* 801672DC 0016423C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801672E0 00164240  7C BF 2B 78 */	mr r31, r5
/* 801672E4 00164244  93 C1 00 08 */	stw r30, 8(r1)
/* 801672E8 00164248  7C 7E 1B 78 */	mr r30, r3
/* 801672EC 0016424C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801672F0 00164250  80 9E 01 04 */	lwz r4, 0x104(r30)
/* 801672F4 00164254  81 83 00 00 */	lwz r12, 0(r3)
/* 801672F8 00164258  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801672FC 0016425C  7D 89 03 A6 */	mtctr r12
/* 80167300 00164260  4E 80 04 21 */	bctrl 
/* 80167304 00164264  7F C3 F3 78 */	mr r3, r30
/* 80167308 00164268  7F E4 FB 78 */	mr r4, r31
/* 8016730C 0016426C  4B EE D6 C1 */	bl EnsureRendered__6CActorCFRC13CStateManager
/* 80167310 00164270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167314 00164274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167318 00164278  83 C1 00 08 */	lwz r30, 8(r1)
/* 8016731C 0016427C  7C 08 03 A6 */	mtlr r0
/* 80167320 00164280  38 21 00 10 */	addi r1, r1, 0x10
/* 80167324 00164284  4E 80 00 20 */	blr 

.global CalculateRenderBounds__11CDroneLaserFv
CalculateRenderBounds__11CDroneLaserFv:
/* 80167328 00164288  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8016732C 0016428C  7C 08 02 A6 */	mflr r0
/* 80167330 00164290  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80167334 00164294  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80167338 00164298  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8016733C 0016429C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80167340 001642A0  3C 80 80 5A */	lis r4, lbl_805A6754@ha
/* 80167344 001642A4  C4 A4 67 54 */	lfsu f5, lbl_805A6754@l(r4)
/* 80167348 001642A8  7C 7F 1B 78 */	mr r31, r3
/* 8016734C 001642AC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80167350 001642B0  C0 84 00 04 */	lfs f4, 4(r4)
/* 80167354 001642B4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80167358 001642B8  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 8016735C 001642BC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80167360 001642C0  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80167364 001642C4  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80167368 001642C8  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 8016736C 001642CC  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 80167370 001642D0  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80167374 001642D4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80167378 001642D8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8016737C 001642DC  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80167380 001642E0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80167384 001642E4  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80167388 001642E8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8016738C 001642EC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80167390 001642F0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80167394 001642F4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80167398 001642F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8016739C 001642FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 801673A0 00164300  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 801673A4 00164304  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 801673A8 00164308  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801673AC 0016430C  48 1A D5 0D */	bl Magnitude__9CVector3fCFv
/* 801673B0 00164310  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801673B4 00164314  FF E0 08 90 */	fmr f31, f1
/* 801673B8 00164318  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801673BC 0016431C  38 61 00 68 */	addi r3, r1, 0x68
/* 801673C0 00164320  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801673C4 00164324  38 81 00 50 */	addi r4, r1, 0x50
/* 801673C8 00164328  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801673CC 0016432C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801673D0 00164330  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801673D4 00164334  48 1D 07 35 */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801673D8 00164338  C0 02 9F C0 */	lfs f0, lbl_805ABCE0@sda21(r2)
/* 801673DC 0016433C  38 61 00 68 */	addi r3, r1, 0x68
/* 801673E0 00164340  C1 1F 00 5C */	lfs f8, 0x5c(r31)
/* 801673E4 00164344  38 81 00 44 */	addi r4, r1, 0x44
/* 801673E8 00164348  EF E0 07 F2 */	fmuls f31, f0, f31
/* 801673EC 0016434C  C0 FF 00 4C */	lfs f7, 0x4c(r31)
/* 801673F0 00164350  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 801673F4 00164354  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 801673F8 00164358  EC BF 01 F2 */	fmuls f5, f31, f7
/* 801673FC 0016435C  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80167400 00164360  EC 9F 02 32 */	fmuls f4, f31, f8
/* 80167404 00164364  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80167408 00164368  EC DF 00 F2 */	fmuls f6, f31, f3
/* 8016740C 0016436C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80167410 00164370  EC 42 28 2A */	fadds f2, f2, f5
/* 80167414 00164374  D0 E1 00 30 */	stfs f7, 0x30(r1)
/* 80167418 00164378  EC 21 20 2A */	fadds f1, f1, f4
/* 8016741C 0016437C  EC 00 30 2A */	fadds f0, f0, f6
/* 80167420 00164380  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 80167424 00164384  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 80167428 00164388  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8016742C 0016438C  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80167430 00164390  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80167434 00164394  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80167438 00164398  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8016743C 0016439C  48 1D 06 CD */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 80167440 001643A0  C1 1F 00 5C */	lfs f8, 0x5c(r31)
/* 80167444 001643A4  38 61 00 68 */	addi r3, r1, 0x68
/* 80167448 001643A8  C0 FF 00 4C */	lfs f7, 0x4c(r31)
/* 8016744C 001643AC  38 81 00 20 */	addi r4, r1, 0x20
/* 80167450 001643B0  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80167454 001643B4  EC BF 02 32 */	fmuls f5, f31, f8
/* 80167458 001643B8  EC DF 01 F2 */	fmuls f6, f31, f7
/* 8016745C 001643BC  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80167460 001643C0  EC 7F 01 32 */	fmuls f3, f31, f4
/* 80167464 001643C4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80167468 001643C8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8016746C 001643CC  EC 42 30 28 */	fsubs f2, f2, f6
/* 80167470 001643D0  EC 21 28 28 */	fsubs f1, f1, f5
/* 80167474 001643D4  D0 81 00 08 */	stfs f4, 8(r1)
/* 80167478 001643D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8016747C 001643DC  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80167480 001643E0  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80167484 001643E4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80167488 001643E8  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 8016748C 001643EC  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 80167490 001643F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80167494 001643F4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80167498 001643F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8016749C 001643FC  48 1D 06 6D */	bl AccumulateBounds__6CAABoxFRC9CVector3f
/* 801674A0 00164400  80 61 00 68 */	lwz r3, 0x68(r1)
/* 801674A4 00164404  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 801674A8 00164408  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 801674AC 0016440C  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 801674B0 00164410  80 01 00 70 */	lwz r0, 0x70(r1)
/* 801674B4 00164414  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 801674B8 00164418  80 61 00 74 */	lwz r3, 0x74(r1)
/* 801674BC 0016441C  80 01 00 78 */	lwz r0, 0x78(r1)
/* 801674C0 00164420  90 7F 00 A8 */	stw r3, 0xa8(r31)
/* 801674C4 00164424  90 1F 00 AC */	stw r0, 0xac(r31)
/* 801674C8 00164428  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 801674CC 0016442C  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 801674D0 00164430  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801674D4 00164434  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801674D8 00164438  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801674DC 0016443C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801674E0 00164440  7C 08 03 A6 */	mtlr r0
/* 801674E4 00164444  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801674E8 00164448  4E 80 00 20 */	blr 

.global Accept__11CDroneLaserFR8IVisitor
Accept__11CDroneLaserFR8IVisitor:
/* 801674EC 0016444C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801674F0 00164450  7C 08 02 A6 */	mflr r0
/* 801674F4 00164454  90 01 00 14 */	stw r0, 0x14(r1)
/* 801674F8 00164458  7C 60 1B 78 */	mr r0, r3
/* 801674FC 0016445C  7C 83 23 78 */	mr r3, r4
/* 80167500 00164460  81 84 00 00 */	lwz r12, 0(r4)
/* 80167504 00164464  7C 04 03 78 */	mr r4, r0
/* 80167508 00164468  81 8C 00 08 */	lwz r12, 8(r12)
/* 8016750C 0016446C  7D 89 03 A6 */	mtctr r12
/* 80167510 00164470  4E 80 04 21 */	bctrl 
/* 80167514 00164474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167518 00164478  7C 08 03 A6 */	mtlr r0
/* 8016751C 0016447C  38 21 00 10 */	addi r1, r1, 0x10
/* 80167520 00164480  4E 80 00 20 */	blr 

.global AcceptScriptMsg__11CDroneLaserF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__11CDroneLaserF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80167524 00164484  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80167528 00164488  7C 08 02 A6 */	mflr r0
/* 8016752C 0016448C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80167530 00164490  93 E1 00 EC */	stw r31, 0xec(r1)
/* 80167534 00164494  7C DF 33 78 */	mr r31, r6
/* 80167538 00164498  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 8016753C 0016449C  7C 7E 1B 78 */	mr r30, r3
/* 80167540 001644A0  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 80167544 001644A4  7C 9D 23 78 */	mr r29, r4
/* 80167548 001644A8  93 81 00 E0 */	stw r28, 0xe0(r1)
/* 8016754C 001644AC  A0 05 00 00 */	lhz r0, 0(r5)
/* 80167550 001644B0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80167554 001644B4  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80167558 001644B8  4B EE C0 BD */	bl AcceptScriptMsg__6CActorF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8016755C 001644BC  2C 1D 00 04 */	cmpwi r29, 4
/* 80167560 001644C0  41 82 00 58 */	beq lbl_801675B8
/* 80167564 001644C4  40 80 00 10 */	bge lbl_80167574
/* 80167568 001644C8  2C 1D 00 01 */	cmpwi r29, 1
/* 8016756C 001644CC  41 82 00 20 */	beq lbl_8016758C
/* 80167570 001644D0  48 00 01 94 */	b lbl_80167704
lbl_80167574:
/* 80167574 001644D4  2C 1D 00 22 */	cmpwi r29, 0x22
/* 80167578 001644D8  41 82 01 60 */	beq lbl_801676D8
/* 8016757C 001644DC  40 80 01 88 */	bge lbl_80167704
/* 80167580 001644E0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 80167584 001644E4  40 80 00 60 */	bge lbl_801675E4
/* 80167588 001644E8  48 00 01 7C */	b lbl_80167704
lbl_8016758C:
/* 8016758C 001644EC  7F C3 F3 78 */	mr r3, r30
/* 80167590 001644F0  7F E4 FB 78 */	mr r4, r31
/* 80167594 001644F4  38 A0 00 01 */	li r5, 1
/* 80167598 001644F8  4B FF F9 25 */	bl sub_80166ebc
/* 8016759C 001644FC  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 801675A0 00164500  38 80 00 01 */	li r4, 1
/* 801675A4 00164504  81 83 00 00 */	lwz r12, 0(r3)
/* 801675A8 00164508  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801675AC 0016450C  7D 89 03 A6 */	mtctr r12
/* 801675B0 00164510  4E 80 04 21 */	bctrl 
/* 801675B4 00164514  48 00 01 50 */	b lbl_80167704
lbl_801675B8:
/* 801675B8 00164518  7F C3 F3 78 */	mr r3, r30
/* 801675BC 0016451C  7F E4 FB 78 */	mr r4, r31
/* 801675C0 00164520  38 A0 00 00 */	li r5, 0
/* 801675C4 00164524  4B FF F8 F9 */	bl sub_80166ebc
/* 801675C8 00164528  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 801675CC 0016452C  38 80 00 00 */	li r4, 0
/* 801675D0 00164530  81 83 00 00 */	lwz r12, 0(r3)
/* 801675D4 00164534  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801675D8 00164538  7D 89 03 A6 */	mtctr r12
/* 801675DC 0016453C  4E 80 04 21 */	bctrl 
/* 801675E0 00164540  48 00 01 24 */	b lbl_80167704
lbl_801675E4:
/* 801675E4 00164544  7F E4 FB 78 */	mr r4, r31
/* 801675E8 00164548  38 61 00 20 */	addi r3, r1, 0x20
/* 801675EC 0016454C  4B EE 5A F1 */	bl AllocateUniqueId__13CStateManagerFv
/* 801675F0 00164550  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 801675F4 00164554  B0 1E 00 F4 */	sth r0, 0xf4(r30)
/* 801675F8 00164558  48 1E 29 A5 */	bl Red__6CColorFv
/* 801675FC 0016455C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80167600 00164560  7C 65 1B 78 */	mr r5, r3
/* 80167604 00164564  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 80167608 00164568  38 61 00 40 */	addi r3, r1, 0x40
/* 8016760C 0016456C  48 19 EE 29 */	bl BuildPoint__6CLightFRC9CVector3fRC6CColor
/* 80167610 00164570  38 61 00 90 */	addi r3, r1, 0x90
/* 80167614 00164574  38 81 00 40 */	addi r4, r1, 0x40
/* 80167618 00164578  4B ED 3F 59 */	bl __ct__6CLightFCR6CLight
/* 8016761C 0016457C  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80167620 00164580  3B 80 00 00 */	li r28, 0
/* 80167624 00164584  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80167628 00164588  38 60 01 48 */	li r3, 0x148
/* 8016762C 0016458C  38 84 00 3B */	addi r4, r4, 0x3b
/* 80167630 00164590  38 A0 00 00 */	li r5, 0
/* 80167634 00164594  48 1A E2 39 */	bl __nw__FUlPCcPCc
/* 80167638 00164598  7C 7D 1B 79 */	or. r29, r3, r3
/* 8016763C 0016459C  41 82 00 7C */	beq lbl_801676B8
/* 80167640 001645A0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80167644 001645A4  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80167648 001645A8  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 8016764C 001645AC  38 61 00 30 */	addi r3, r1, 0x30
/* 80167650 001645B0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80167654 001645B4  38 84 00 76 */	addi r4, r4, 0x76
/* 80167658 001645B8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8016765C 001645BC  4B E9 D6 5D */	bl string_l__4rstlFPCc
/* 80167660 001645C0  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80167664 001645C4  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 80167668 001645C8  80 9E 00 04 */	lwz r4, 4(r30)
/* 8016766C 001645CC  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 80167670 001645D0  54 06 CF FE */	rlwinm r6, r0, 0x19, 0x1f, 0x1f
/* 80167674 001645D4  38 00 00 00 */	li r0, 0
/* 80167678 001645D8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8016767C 001645DC  7F A3 EB 78 */	mr r3, r29
/* 80167680 001645E0  C0 22 9F 68 */	lfs f1, lbl_805ABC88@sda21(r2)
/* 80167684 001645E4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80167688 001645E8  A1 3E 00 F4 */	lhz r9, 0xf4(r30)
/* 8016768C 001645EC  38 E1 00 30 */	addi r7, r1, 0x30
/* 80167690 001645F0  90 81 00 28 */	stw r4, 0x28(r1)
/* 80167694 001645F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80167698 001645F8  39 41 00 90 */	addi r10, r1, 0x90
/* 8016769C 001645FC  3B 80 00 01 */	li r28, 1
/* 801676A0 00164600  B1 21 00 14 */	sth r9, 0x14(r1)
/* 801676A4 00164604  39 21 00 1C */	addi r9, r1, 0x1c
/* 801676A8 00164608  90 01 00 08 */	stw r0, 8(r1)
/* 801676AC 0016460C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801676B0 00164610  4B F4 E1 75 */	bl "__ct__10CGameLightF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif"
/* 801676B4 00164614  7C 7D 1B 78 */	mr r29, r3
lbl_801676B8:
/* 801676B8 00164618  7F 80 07 75 */	extsb. r0, r28
/* 801676BC 0016461C  41 82 00 0C */	beq lbl_801676C8
/* 801676C0 00164620  38 61 00 30 */	addi r3, r1, 0x30
/* 801676C4 00164624  48 1D 64 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801676C8:
/* 801676C8 00164628  7F E3 FB 78 */	mr r3, r31
/* 801676CC 0016462C  7F A4 EB 78 */	mr r4, r29
/* 801676D0 00164630  4B EE 54 45 */	bl AddObject__13CStateManagerFR7CEntity
/* 801676D4 00164634  48 00 00 30 */	b lbl_80167704
lbl_801676D8:
/* 801676D8 00164638  A0 7E 00 F4 */	lhz r3, 0xf4(r30)
/* 801676DC 0016463C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801676E0 00164640  7C 03 00 40 */	cmplw r3, r0
/* 801676E4 00164644  41 82 00 20 */	beq lbl_80167704
/* 801676E8 00164648  A0 1E 00 F4 */	lhz r0, 0xf4(r30)
/* 801676EC 0016464C  7F E3 FB 78 */	mr r3, r31
/* 801676F0 00164650  38 81 00 10 */	addi r4, r1, 0x10
/* 801676F4 00164654  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801676F8 00164658  4B EE 4B 75 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801676FC 0016465C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80167700 00164660  B0 1E 00 F4 */	sth r0, 0xf4(r30)
lbl_80167704:
/* 80167704 00164664  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80167708 00164668  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 8016770C 0016466C  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 80167710 00164670  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 80167714 00164674  83 81 00 E0 */	lwz r28, 0xe0(r1)
/* 80167718 00164678  7C 08 03 A6 */	mtlr r0
/* 8016771C 0016467C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80167720 00164680  4E 80 00 20 */	blr 

.global Think__11CDroneLaserFfR13CStateManager
Think__11CDroneLaserFfR13CStateManager:
/* 80167724 00164684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167728 00164688  7C 08 02 A6 */	mflr r0
/* 8016772C 0016468C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167730 00164690  80 63 01 04 */	lwz r3, 0x104(r3)
/* 80167734 00164694  81 83 00 00 */	lwz r12, 0(r3)
/* 80167738 00164698  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8016773C 0016469C  7D 89 03 A6 */	mtctr r12
/* 80167740 001646A0  4E 80 04 21 */	bctrl 
/* 80167744 001646A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167748 001646A8  7C 08 03 A6 */	mtlr r0
/* 8016774C 001646AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80167750 001646B0  4E 80 00 20 */	blr 

.global sub_80167754
sub_80167754:
/* 80167754 001646B4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80167758 001646B8  7C 08 02 A6 */	mflr r0
/* 8016775C 001646BC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80167760 001646C0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80167764 001646C4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80167768 001646C8  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8016776C 001646CC  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80167770 001646D0  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80167774 001646D4  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80167778 001646D8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8016777C 001646DC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80167780 001646E0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80167784 001646E4  93 81 00 80 */	stw r28, 0x80(r1)
/* 80167788 001646E8  7C BD 2B 78 */	mr r29, r5
/* 8016778C 001646EC  7C 7C 1B 78 */	mr r28, r3
/* 80167790 001646F0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80167794 001646F4  7C 9F 23 78 */	mr r31, r4
/* 80167798 001646F8  7C DE 33 78 */	mr r30, r6
/* 8016779C 001646FC  38 61 00 38 */	addi r3, r1, 0x38
/* 801677A0 00164700  D0 1C 00 E8 */	stfs f0, 0xe8(r28)
/* 801677A4 00164704  38 81 00 2C */	addi r4, r1, 0x2c
/* 801677A8 00164708  C0 05 00 04 */	lfs f0, 4(r5)
/* 801677AC 0016470C  D0 1C 00 EC */	stfs f0, 0xec(r28)
/* 801677B0 00164710  C0 05 00 08 */	lfs f0, 8(r5)
/* 801677B4 00164714  D0 1C 00 F0 */	stfs f0, 0xf0(r28)
/* 801677B8 00164718  C0 25 00 04 */	lfs f1, 4(r5)
/* 801677BC 0016471C  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 801677C0 00164720  C0 65 00 08 */	lfs f3, 8(r5)
/* 801677C4 00164724  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801677C8 00164728  EC 81 00 28 */	fsubs f4, f1, f0
/* 801677CC 0016472C  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801677D0 00164730  C0 25 00 00 */	lfs f1, 0(r5)
/* 801677D4 00164734  EC 43 10 28 */	fsubs f2, f3, f2
/* 801677D8 00164738  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801677DC 0016473C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801677E0 00164740  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801677E4 00164744  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801677E8 00164748  48 1A D0 69 */	bl AsNormalized__9CVector3fCFv
/* 801677EC 0016474C  A0 7C 00 F4 */	lhz r3, 0xf4(r28)
/* 801677F0 00164750  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801677F4 00164754  C3 E1 00 38 */	lfs f31, 0x38(r1)
/* 801677F8 00164758  7C 03 00 40 */	cmplw r3, r0
/* 801677FC 0016475C  C3 C1 00 3C */	lfs f30, 0x3c(r1)
/* 80167800 00164760  C3 A1 00 40 */	lfs f29, 0x40(r1)
/* 80167804 00164764  41 82 00 78 */	beq lbl_8016787C
/* 80167808 00164768  A0 1C 00 F4 */	lhz r0, 0xf4(r28)
/* 8016780C 0016476C  7F E3 FB 78 */	mr r3, r31
/* 80167810 00164770  38 81 00 08 */	addi r4, r1, 8
/* 80167814 00164774  B0 01 00 08 */	sth r0, 8(r1)
/* 80167818 00164778  4B EE 4D 5D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8016781C 0016477C  7C 64 1B 78 */	mr r4, r3
/* 80167820 00164780  38 61 00 0C */	addi r3, r1, 0xc
/* 80167824 00164784  4B F4 62 61 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 80167828 00164788  80 63 00 04 */	lwz r3, 4(r3)
/* 8016782C 0016478C  28 03 00 00 */	cmplwi r3, 0
/* 80167830 00164790  41 82 00 4C */	beq lbl_8016787C
/* 80167834 00164794  C0 A2 9F 80 */	lfs f5, lbl_805ABCA0@sda21(r2)
/* 80167838 00164798  38 81 00 20 */	addi r4, r1, 0x20
/* 8016783C 0016479C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 80167840 001647A0  EC 85 07 B2 */	fmuls f4, f5, f30
/* 80167844 001647A4  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80167848 001647A8  EC 65 07 72 */	fmuls f3, f5, f29
/* 8016784C 001647AC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80167850 001647B0  EC A5 07 F2 */	fmuls f5, f5, f31
/* 80167854 001647B4  EC 42 20 28 */	fsubs f2, f2, f4
/* 80167858 001647B8  EC 21 18 28 */	fsubs f1, f1, f3
/* 8016785C 001647BC  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80167860 001647C0  EC 00 28 28 */	fsubs f0, f0, f5
/* 80167864 001647C4  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80167868 001647C8  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8016786C 001647CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80167870 001647D0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80167874 001647D4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80167878 001647D8  4B EE B6 15 */	bl SetTranslation__6CActorFRC9CVector3f
lbl_8016787C:
/* 8016787C 001647DC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80167880 001647E0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80167884 001647E4  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80167888 001647E8  83 FC 01 04 */	lwz r31, 0x104(r28)
/* 8016788C 001647EC  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 80167890 001647F0  7F C5 F3 78 */	mr r5, r30
/* 80167894 001647F4  38 61 00 44 */	addi r3, r1, 0x44
/* 80167898 001647F8  48 1A C2 79 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8016789C 001647FC  7F E3 FB 78 */	mr r3, r31
/* 801678A0 00164800  38 81 00 44 */	addi r4, r1, 0x44
/* 801678A4 00164804  81 9F 00 00 */	lwz r12, 0(r31)
/* 801678A8 00164808  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801678AC 0016480C  7D 89 03 A6 */	mtctr r12
/* 801678B0 00164810  4E 80 04 21 */	bctrl 
/* 801678B4 00164814  80 7C 01 04 */	lwz r3, 0x104(r28)
/* 801678B8 00164818  7F A4 EB 78 */	mr r4, r29
/* 801678BC 0016481C  81 83 00 00 */	lwz r12, 0(r3)
/* 801678C0 00164820  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801678C4 00164824  7D 89 03 A6 */	mtctr r12
/* 801678C8 00164828  4E 80 04 21 */	bctrl 
/* 801678CC 0016482C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801678D0 00164830  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801678D4 00164834  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 801678D8 00164838  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801678DC 0016483C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 801678E0 00164840  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801678E4 00164844  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801678E8 00164848  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801678EC 0016484C  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801678F0 00164850  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801678F4 00164854  83 81 00 80 */	lwz r28, 0x80(r1)
/* 801678F8 00164858  7C 08 03 A6 */	mtlr r0
/* 801678FC 0016485C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80167900 00164860  4E 80 00 20 */	blr 

.global __ct__11CDroneLaserF9TUniqueIdRC12CTransform4fUi
__ct__11CDroneLaserF9TUniqueIdRC12CTransform4fUi:
/* 80167904 00164864  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 80167908 00164868  7C 08 02 A6 */	mflr r0
/* 8016790C 0016486C  3D 00 80 3D */	lis r8, lbl_803D0398@ha
/* 80167910 00164870  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 80167914 00164874  39 08 03 98 */	addi r8, r8, lbl_803D0398@l
/* 80167918 00164878  BF 61 01 9C */	stmw r27, 0x19c(r1)
/* 8016791C 0016487C  7C 7C 1B 78 */	mr r28, r3
/* 80167920 00164880  7C 9D 23 78 */	mr r29, r4
/* 80167924 00164884  7C BB 2B 78 */	mr r27, r5
/* 80167928 00164888  7C DE 33 78 */	mr r30, r6
/* 8016792C 0016488C  7C FF 3B 78 */	mr r31, r7
/* 80167930 00164890  38 61 00 50 */	addi r3, r1, 0x50
/* 80167934 00164894  38 88 00 83 */	addi r4, r8, 0x83
/* 80167938 00164898  4B E9 D3 81 */	bl string_l__4rstlFPCc
/* 8016793C 0016489C  80 8D A3 88 */	lwz r4, kInvalidEditorId@sda21(r13)
/* 80167940 001648A0  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 80167944 001648A4  80 1B 00 00 */	lwz r0, 0(r27)
/* 80167948 001648A8  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 8016794C 001648AC  90 81 00 28 */	stw r4, 0x28(r1)
/* 80167950 001648B0  38 61 00 60 */	addi r3, r1, 0x60
/* 80167954 001648B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80167958 001648B8  38 C1 00 28 */	addi r6, r1, 0x28
/* 8016795C 001648BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80167960 001648C0  4B EE 9B 25 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80167964 001648C4  38 61 01 48 */	addi r3, r1, 0x148
/* 80167968 001648C8  4B ED 2E 3D */	bl CModelDataNull__10CModelDataFv
/* 8016796C 001648CC  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80167970 001648D0  4B EB 34 C9 */	bl None__16CActorParametersFv
/* 80167974 001648D4  38 61 00 78 */	addi r3, r1, 0x78
/* 80167978 001648D8  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8016797C 001648DC  38 A0 00 01 */	li r5, 1
/* 80167980 001648E0  4B F9 EE 8D */	bl sub_8010680c
/* 80167984 001648E4  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80167988 001648E8  38 00 00 00 */	li r0, 0
/* 8016798C 001648EC  80 AD 8D 00 */	lwz r5, lbl_805A78C0@sda21(r13)
/* 80167990 001648F0  38 60 00 00 */	li r3, 0
/* 80167994 001648F4  B0 81 00 10 */	sth r4, 0x10(r1)
/* 80167998 001648F8  38 80 00 01 */	li r4, 1
/* 8016799C 001648FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801679A0 00164900  90 01 00 48 */	stw r0, 0x48(r1)
/* 801679A4 00164904  48 22 25 51 */	bl __shl2i
/* 801679A8 00164908  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 801679AC 0016490C  39 61 00 78 */	addi r11, r1, 0x78
/* 801679B0 00164910  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 801679B4 00164914  38 01 00 10 */	addi r0, r1, 0x10
/* 801679B8 00164918  7C A3 1B 78 */	or r3, r5, r3
/* 801679BC 0016491C  A0 BD 00 00 */	lhz r5, 0(r29)
/* 801679C0 00164920  7C C4 23 78 */	or r4, r6, r4
/* 801679C4 00164924  90 61 00 48 */	stw r3, 0x48(r1)
/* 801679C8 00164928  7F 83 E3 78 */	mr r3, r28
/* 801679CC 0016492C  7F C8 F3 78 */	mr r8, r30
/* 801679D0 00164930  90 81 00 4C */	stw r4, 0x4c(r1)
/* 801679D4 00164934  38 81 00 14 */	addi r4, r1, 0x14
/* 801679D8 00164938  38 C1 00 50 */	addi r6, r1, 0x50
/* 801679DC 0016493C  38 E1 00 60 */	addi r7, r1, 0x60
/* 801679E0 00164940  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 801679E4 00164944  39 21 01 48 */	addi r9, r1, 0x148
/* 801679E8 00164948  39 41 00 48 */	addi r10, r1, 0x48
/* 801679EC 0016494C  38 A0 00 01 */	li r5, 1
/* 801679F0 00164950  91 61 00 08 */	stw r11, 8(r1)
/* 801679F4 00164954  90 01 00 0C */	stw r0, 0xc(r1)
/* 801679F8 00164958  4B EE DE 29 */	bl "__ct__6CActorF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC13CMaterialListRC16CActorParameters9TUniqueId"
/* 801679FC 0016495C  38 61 00 78 */	addi r3, r1, 0x78
/* 80167A00 00164960  38 80 FF FF */	li r4, -1
/* 80167A04 00164964  4B F9 EC 05 */	bl __dt__16CActorParametersFv
/* 80167A08 00164968  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80167A0C 0016496C  38 80 FF FF */	li r4, -1
/* 80167A10 00164970  4B F9 EB F9 */	bl __dt__16CActorParametersFv
/* 80167A14 00164974  38 61 01 48 */	addi r3, r1, 0x148
/* 80167A18 00164978  38 80 FF FF */	li r4, -1
/* 80167A1C 0016497C  4B FA F0 31 */	bl __dt__10CModelDataFv
/* 80167A20 00164980  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80167A24 00164984  80 61 00 70 */	lwz r3, 0x70(r1)
/* 80167A28 00164988  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80167A2C 0016498C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80167A30 00164990  7C 64 1B 78 */	mr r4, r3
/* 80167A34 00164994  7C 03 02 14 */	add r0, r3, r0
/* 80167A38 00164998  90 61 00 18 */	stw r3, 0x18(r1)
/* 80167A3C 0016499C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80167A40 001649A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80167A44 001649A4  48 00 00 08 */	b lbl_80167A4C
lbl_80167A48:
/* 80167A48 001649A8  38 84 00 0C */	addi r4, r4, 0xc
lbl_80167A4C:
/* 80167A4C 001649AC  7C 04 00 40 */	cmplw r4, r0
/* 80167A50 001649B0  40 82 FF F8 */	bne lbl_80167A48
/* 80167A54 001649B4  28 03 00 00 */	cmplwi r3, 0
/* 80167A58 001649B8  41 82 00 08 */	beq lbl_80167A60
/* 80167A5C 001649BC  48 1A DE D5 */	bl Free__7CMemoryFPCv
lbl_80167A60:
/* 80167A60 001649C0  38 61 00 50 */	addi r3, r1, 0x50
/* 80167A64 001649C4  48 1D 60 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80167A68 001649C8  3C 60 80 3E */	lis r3, lbl_803E3A58@ha
/* 80167A6C 001649CC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80167A70 001649D0  38 03 3A 58 */	addi r0, r3, lbl_803E3A58@l
/* 80167A74 001649D4  38 A1 00 40 */	addi r5, r1, 0x40
/* 80167A78 001649D8  90 1C 00 00 */	stw r0, 0(r28)
/* 80167A7C 001649DC  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80167A80 001649E0  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80167A84 001649E4  C4 04 66 A0 */	lfsu f0, skZero3f@l(r4)
/* 80167A88 001649E8  38 61 00 38 */	addi r3, r1, 0x38
/* 80167A8C 001649EC  D0 1C 00 E8 */	stfs f0, 0xe8(r28)
/* 80167A90 001649F0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80167A94 001649F4  D0 1C 00 EC */	stfs f0, 0xec(r28)
/* 80167A98 001649F8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80167A9C 001649FC  D0 1C 00 F0 */	stfs f0, 0xf0(r28)
/* 80167AA0 00164A00  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80167AA4 00164A04  B0 9C 00 F4 */	sth r4, 0xf4(r28)
/* 80167AA8 00164A08  90 01 00 40 */	stw r0, 0x40(r1)
/* 80167AAC 00164A0C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80167AB0 00164A10  93 E1 00 44 */	stw r31, 0x44(r1)
/* 80167AB4 00164A14  81 84 00 00 */	lwz r12, 0(r4)
/* 80167AB8 00164A18  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80167ABC 00164A1C  7D 89 03 A6 */	mtctr r12
/* 80167AC0 00164A20  4E 80 04 21 */	bctrl 
/* 80167AC4 00164A24  3B 7C 00 F8 */	addi r27, r28, 0xf8
/* 80167AC8 00164A28  38 81 00 38 */	addi r4, r1, 0x38
/* 80167ACC 00164A2C  7F 63 DB 78 */	mr r3, r27
/* 80167AD0 00164A30  48 1D 93 D9 */	bl __ct__6CTokenFRC6CToken
/* 80167AD4 00164A34  7F 63 DB 78 */	mr r3, r27
/* 80167AD8 00164A38  48 1D 93 35 */	bl GetObj__6CTokenFv
/* 80167ADC 00164A3C  80 03 00 04 */	lwz r0, 4(r3)
/* 80167AE0 00164A40  38 61 00 38 */	addi r3, r1, 0x38
/* 80167AE4 00164A44  38 80 FF FF */	li r4, -1
/* 80167AE8 00164A48  90 1B 00 08 */	stw r0, 8(r27)
/* 80167AEC 00164A4C  48 1D 93 55 */	bl __dt__6CTokenFv
/* 80167AF0 00164A50  3C 60 80 3D */	lis r3, lbl_803D0398@ha
/* 80167AF4 00164A54  3B 60 00 00 */	li r27, 0
/* 80167AF8 00164A58  38 83 03 98 */	addi r4, r3, lbl_803D0398@l
/* 80167AFC 00164A5C  38 60 03 40 */	li r3, 0x340
/* 80167B00 00164A60  38 84 00 3B */	addi r4, r4, 0x3b
/* 80167B04 00164A64  38 A0 00 00 */	li r5, 0
/* 80167B08 00164A68  48 1A DD 65 */	bl __nw__FUlPCcPCc
/* 80167B0C 00164A6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80167B10 00164A70  41 82 00 2C */	beq lbl_80167B3C
/* 80167B14 00164A74  38 61 00 30 */	addi r3, r1, 0x30
/* 80167B18 00164A78  38 9C 00 F8 */	addi r4, r28, 0xf8
/* 80167B1C 00164A7C  48 1D 93 8D */	bl __ct__6CTokenFRC6CToken
/* 80167B20 00164A80  7F A3 EB 78 */	mr r3, r29
/* 80167B24 00164A84  38 81 00 30 */	addi r4, r1, 0x30
/* 80167B28 00164A88  3B 60 00 01 */	li r27, 1
/* 80167B2C 00164A8C  38 A0 00 00 */	li r5, 0
/* 80167B30 00164A90  38 C0 00 01 */	li r6, 1
/* 80167B34 00164A94  48 1B 78 AD */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 80167B38 00164A98  7C 7D 1B 78 */	mr r29, r3
lbl_80167B3C:
/* 80167B3C 00164A9C  7F 60 07 75 */	extsb. r0, r27
/* 80167B40 00164AA0  93 BC 01 04 */	stw r29, 0x104(r28)
/* 80167B44 00164AA4  41 82 00 10 */	beq lbl_80167B54
/* 80167B48 00164AA8  38 61 00 30 */	addi r3, r1, 0x30
/* 80167B4C 00164AAC  38 80 00 00 */	li r4, 0
/* 80167B50 00164AB0  48 1D 92 F1 */	bl __dt__6CTokenFv
lbl_80167B54:
/* 80167B54 00164AB4  7F 83 E3 78 */	mr r3, r28
/* 80167B58 00164AB8  BB 61 01 9C */	lmw r27, 0x19c(r1)
/* 80167B5C 00164ABC  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 80167B60 00164AC0  7C 08 03 A6 */	mtlr r0
/* 80167B64 00164AC4  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 80167B68 00164AC8  4E 80 00 20 */	blr 

.global __dt__11CDroneLaserFv
__dt__11CDroneLaserFv:
/* 80167B6C 00164ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167B70 00164AD0  7C 08 02 A6 */	mflr r0
/* 80167B74 00164AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167B78 00164AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167B7C 00164ADC  7C 9F 23 78 */	mr r31, r4
/* 80167B80 00164AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80167B84 00164AE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80167B88 00164AE8  41 82 00 70 */	beq lbl_80167BF8
/* 80167B8C 00164AEC  3C 60 80 3E */	lis r3, lbl_803E3A58@ha
/* 80167B90 00164AF0  34 1E 01 04 */	addic. r0, r30, 0x104
/* 80167B94 00164AF4  38 03 3A 58 */	addi r0, r3, lbl_803E3A58@l
/* 80167B98 00164AF8  90 1E 00 00 */	stw r0, 0(r30)
/* 80167B9C 00164AFC  41 82 00 24 */	beq lbl_80167BC0
/* 80167BA0 00164B00  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 80167BA4 00164B04  28 03 00 00 */	cmplwi r3, 0
/* 80167BA8 00164B08  41 82 00 18 */	beq lbl_80167BC0
/* 80167BAC 00164B0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80167BB0 00164B10  38 80 00 01 */	li r4, 1
/* 80167BB4 00164B14  81 8C 00 08 */	lwz r12, 8(r12)
/* 80167BB8 00164B18  7D 89 03 A6 */	mtctr r12
/* 80167BBC 00164B1C  4E 80 04 21 */	bctrl 
lbl_80167BC0:
/* 80167BC0 00164B20  34 1E 00 F8 */	addic. r0, r30, 0xf8
/* 80167BC4 00164B24  41 82 00 18 */	beq lbl_80167BDC
/* 80167BC8 00164B28  34 1E 00 F8 */	addic. r0, r30, 0xf8
/* 80167BCC 00164B2C  41 82 00 10 */	beq lbl_80167BDC
/* 80167BD0 00164B30  38 7E 00 F8 */	addi r3, r30, 0xf8
/* 80167BD4 00164B34  38 80 00 00 */	li r4, 0
/* 80167BD8 00164B38  48 1D 92 69 */	bl __dt__6CTokenFv
lbl_80167BDC:
/* 80167BDC 00164B3C  7F C3 F3 78 */	mr r3, r30
/* 80167BE0 00164B40  38 80 00 00 */	li r4, 0
/* 80167BE4 00164B44  4B EE DB 0D */	bl __dt__6CActorFv
/* 80167BE8 00164B48  7F E0 07 35 */	extsh. r0, r31
/* 80167BEC 00164B4C  40 81 00 0C */	ble lbl_80167BF8
/* 80167BF0 00164B50  7F C3 F3 78 */	mr r3, r30
/* 80167BF4 00164B54  48 1A DD 3D */	bl Free__7CMemoryFPCv
lbl_80167BF8:
/* 80167BF8 00164B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167BFC 00164B5C  7F C3 F3 78 */	mr r3, r30
/* 80167C00 00164B60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167C04 00164B64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80167C08 00164B68  7C 08 03 A6 */	mtlr r0
/* 80167C0C 00164B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80167C10 00164B70  4E 80 00 20 */	blr

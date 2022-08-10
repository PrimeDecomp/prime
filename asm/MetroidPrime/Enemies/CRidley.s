.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CRidley_cpp

.section .data
.balign 8


.global lbl_803E9198
lbl_803E9198:
	# ROM: 0x3E6198
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTaunt__10CPatternedFR13CStateManageri

.global lbl_803E91A4
lbl_803E91A4:
	# ROM: 0x3E61A4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTaunt__10CPatternedFR13CStateManageri

.global lbl_803E91B0
lbl_803E91B0:
	# ROM: 0x3E61B0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E91BC
lbl_803E91BC:
	# ROM: 0x3E61BC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E91C8
lbl_803E91C8:
	# ROM: 0x3E61C8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryDodge__10CPatternedFR13CStateManageri

.global lbl_803E91D4
lbl_803E91D4:
	# ROM: 0x3E61D4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryDodge__10CPatternedFR13CStateManageri

.global lbl_803E91E0
lbl_803E91E0:
	# ROM: 0x3E61E0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007b924

.global lbl_803E91EC
lbl_803E91EC:
	# ROM: 0x3E61EC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c4ac

.global lbl_803E91F8
lbl_803E91F8:
	# ROM: 0x3E61F8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c1a8

.global lbl_803E9204
lbl_803E9204:
	# ROM: 0x3E6204
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E9210
lbl_803E9210:
	# ROM: 0x3E6210
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007b924

.global lbl_803E921C
lbl_803E921C:
	# ROM: 0x3E621C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9228
lbl_803E9228:
	# ROM: 0x3E6228
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9234
lbl_803E9234:
	# ROM: 0x3E6234
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007b924

.global lbl_803E9240
lbl_803E9240:
	# ROM: 0x3E6240
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryDodge__10CPatternedFR13CStateManageri

.global lbl_803E924C
lbl_803E924C:
	# ROM: 0x3E624C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E9258
lbl_803E9258:
	# ROM: 0x3E6258
	.4byte 0
	.4byte 0
	.4byte __dt__7CRidleyFv
	.4byte Accept__7CRidleyFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__7CRidleyR13CStateManager
	.4byte AcceptScriptMsg__7CRidleyF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__7CRidleyFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__7CRidleyCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__7CRidleyCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__7CRidleyCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__7CRidleyFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__7CRidleyCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__7CRidleyCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__7CRidleyCFRC12CTransform4f
	.4byte DoUserAnimEvent__7CRidleyFR13CStateManagerRC13CInt32POINode14EUserEventType
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
	.4byte Patrol__7CRidleyFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__7CRidleyFR13CStateManager9EStateMsgf
	.4byte PathFind__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte JumpBack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Crouch__7CRidleyFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__7CRidleyFR13CStateManager9EStateMsgf
	.4byte GetUp__3CAiFR13CStateManager9EStateMsgf
	.4byte Taunt__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Lurk__7CRidleyFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Flinch__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Hurled__7CRidleyFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Jump__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Explode__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Dodge__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Retreat__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__7CRidleyFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__7CRidleyFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__7CRidleyFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__7CRidleyFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__7CRidleyFR13CStateManagerf
	.4byte InRange__7CRidleyFR13CStateManagerf
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
	.4byte ShouldAttack__7CRidleyFR13CStateManagerf
	.4byte ShouldDoubleSnap__7CRidleyFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__7CRidleyFR13CStateManagerf
	.4byte HitSomething__7CRidleyFR13CStateManagerf
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
	.4byte AttackOver__7CRidleyFR13CStateManagerf
	.4byte ShouldTaunt__7CRidleyFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__7CRidleyFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__7CRidleyFR13CStateManagerf
	.4byte ShouldRetreat__7CRidleyFR13CStateManagerf
	.4byte ShouldCrouch__7CRidleyFR13CStateManagerf
	.4byte ShouldMove__7CRidleyFR13CStateManagerf
	.4byte ShotAt__7CRidleyFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__7CRidleyFR13CStateManagerf
	.4byte AIStage__7CRidleyFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__7CRidleyFR13CStateManagerf
	.4byte ShouldSpecialAttack__3CAiFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__7CRidleyFR13CStateManagerf
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
	.4byte GetGravityConstant__7CRidleyCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E9524
lbl_803E9524:
	# ROM: 0x3E6524
	.4byte lbl_80258518
	.4byte lbl_802587CC
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258C2C
	.4byte lbl_80258C64
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258AE0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_802584F4
	.4byte lbl_80258B24
	.4byte lbl_80258270
	.4byte lbl_80258410
	.4byte lbl_80258CA0
	.4byte lbl_80258C04
	.4byte lbl_80258C18
	.4byte lbl_80258A9C
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258CA0
	.4byte lbl_80258428

.global lbl_803E95A4
lbl_803E95A4:
	# ROM: 0x3E65A4
	.4byte lbl_80259CAC
	.4byte lbl_80258DE4
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80258E6C
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80258DAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259A58
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80258D4C
	.4byte lbl_80258EA4
	.4byte lbl_80258EEC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259CAC
	.4byte lbl_80259194
	.4byte lbl_802598FC

.global lbl_803E9650
lbl_803E9650:
	# ROM: 0x3E6650
	.4byte 0x803D5100
	.4byte 0x803D5109
	.4byte 0x803D5112
	.4byte 0x803D511B
	.4byte 0x803D5124
	.4byte 0x803D512D
	.4byte 0x803D5136
	.4byte 0x803D513F
	.4byte 0x803D5148
	.4byte 0x803D5151
	.4byte 0x803D515A
	.4byte 0x803D5163
	.4byte 0x803D516C
	.4byte 0x803D5175

.global lbl_803E9688
lbl_803E9688:
	# ROM: 0x3E6688
	.4byte 0x803D517E
	.4byte 0x803D518A
	.4byte 0x803D5196
	.4byte 0x803D51A2
	.4byte 0x803D51AE
	.4byte 0x803D51BA
	.4byte 0x803D51C6
	.4byte 0x803D51D2
	.4byte 0x803D51DE
	.4byte 0x803D51EA
	.4byte 0x803D51F6
	.4byte 0x803D5202
	.4byte 0x803D520E
	.4byte 0x803D521A

.section .sdata
.balign 8

.global lbl_805A82F0
lbl_805A82F0:
	# ROM: 0x3F5C90
	.4byte 0x00000004

.global lbl_805A82F4
lbl_805A82F4:
	# ROM: 0x3F5C94
	.float 1.0

.global lbl_805A82F8
lbl_805A82F8:
	# ROM: 0x3F5C98
	.4byte 0x00000013

.global lbl_805A82FC
lbl_805A82FC:
	# ROM: 0x3F5C9C
	.4byte 0x00000031

.global lbl_805A8300
lbl_805A8300:
	# ROM: 0x3F5CA0
	.4byte 0

.global lbl_805A8304
lbl_805A8304:
	# ROM: 0x3F5CA4
	.4byte 0

.global lbl_805A8308
lbl_805A8308:
	# ROM: 0x3F5CA8
	.float 1.0

.global lbl_805A830C
lbl_805A830C:
	# ROM: 0x3F5CAC
	.4byte 0x00000020

.global lbl_805A8310
lbl_805A8310:
	# ROM: 0x3F5CB0
	.4byte 0x00000031

.global lbl_805A8314
lbl_805A8314:
	# ROM: 0x3F5CB4
	.4byte 0x00000035

.global lbl_805A8318
lbl_805A8318:
	# ROM: 0x3F5CB8
	.4byte 0x00000020

.global lbl_805A831C
lbl_805A831C:
	# ROM: 0x3F5CBC
	.4byte 0x00000031

.global lbl_805A8320
lbl_805A8320:
	# ROM: 0x3F5CC0
	.4byte 0x00000035

.global lbl_805A8324
lbl_805A8324:
	# ROM: 0x3F5CC4
	.4byte 0x00000004

.global lbl_805A8328
lbl_805A8328:
	# ROM: 0x3F5CC8
	.4byte 0x0000000A

.global lbl_805A832C
lbl_805A832C:
	# ROM: 0x3F5CCC
	.4byte 0x00000013

.global lbl_805A8330
lbl_805A8330:
	# ROM: 0x3F5CD0
	.4byte 0x0000002F

.global lbl_805A8334
lbl_805A8334:
	# ROM: 0x3F5CD4
	.4byte 0x0000001C

.global lbl_805A8338
lbl_805A8338:
	# ROM: 0x3F5CD8
	.4byte 0x00000020

.global lbl_805A833C
lbl_805A833C:
	# ROM: 0x3F5CDC
	.4byte 0x00000031

.global lbl_805A8340
lbl_805A8340:
	# ROM: 0x3F5CE0
	.float -1.0

.global lbl_805A8344
lbl_805A8344:
	# ROM: 0x3F5CE4
	.4byte 0

.global lbl_805A8348
lbl_805A8348:
	# ROM: 0x3F5CE8
	.4byte 0

.global lbl_805A834C
lbl_805A834C:
	# ROM: 0x3F5CEC
	.4byte 0

.global lbl_805A8350
lbl_805A8350:
	# ROM: 0x3F5CF0
	.4byte 0

.global lbl_805A8354
lbl_805A8354:
	# ROM: 0x3F5CF4
	.4byte 0

.global lbl_805A8358
lbl_805A8358:
	# ROM: 0x3F5CF8
	.float 0.5

.global lbl_805A835C
lbl_805A835C:
	# ROM: 0x3F5CFC
	.4byte 0

.global lbl_805A8360
lbl_805A8360:
	# ROM: 0x3F5D00
	.float 1.0

.global lbl_805A8364
lbl_805A8364:
	# ROM: 0x3F5D04
	.float 1.0

.global lbl_805A8368
lbl_805A8368:
	# ROM: 0x3F5D08
	.4byte 0x41200000

.global lbl_805A836C
lbl_805A836C:
	# ROM: 0x3F5D0C
	.4byte 0x00000013

.global lbl_805A8370
lbl_805A8370:
	# ROM: 0x3F5D10
	.4byte 0x00000013

.global lbl_805A8374
lbl_805A8374:
	# ROM: 0x3F5D14
	.4byte 0

.global lbl_805A8378
lbl_805A8378:
	# ROM: 0x3F5D18
	.float 1.0
	.4byte 0

.section .bss
.balign 8

.global lbl_8046D3A8
lbl_8046D3A8:
	.skip 0x150
.global lbl_8046D4F8
lbl_8046D4F8:
	.skip 0x2E8
.global lbl_8046D7E0
lbl_8046D7E0:
	.skip 0x1E0
.global lbl_8046D9C0
lbl_8046D9C0:
	.skip 0x2D0

.section .text, "ax"

.global __dt__7CRidleyFv
__dt__7CRidleyFv:
/* 80252598 0024F4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025259C 0024F4FC  7C 08 02 A6 */	mflr r0
/* 802525A0 0024F500  90 01 00 14 */	stw r0, 0x14(r1)
/* 802525A4 0024F504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802525A8 0024F508  7C 9F 23 78 */	mr r31, r4
/* 802525AC 0024F50C  93 C1 00 08 */	stw r30, 8(r1)
/* 802525B0 0024F510  7C 7E 1B 79 */	or. r30, r3, r3
/* 802525B4 0024F514  41 82 01 E4 */	beq lbl_80252798
/* 802525B8 0024F518  3C 60 80 3F */	lis r3, lbl_803E9258@ha
/* 802525BC 0024F51C  34 1E 0D 10 */	addic. r0, r30, 0xd10
/* 802525C0 0024F520  38 03 92 58 */	addi r0, r3, lbl_803E9258@l
/* 802525C4 0024F524  90 1E 00 00 */	stw r0, 0(r30)
/* 802525C8 0024F528  41 82 00 10 */	beq lbl_802525D8
/* 802525CC 0024F52C  80 7E 0D 10 */	lwz r3, 0xd10(r30)
/* 802525D0 0024F530  38 80 00 01 */	li r4, 1
/* 802525D4 0024F534  48 04 BD AD */	bl __dt__16CProjectedShadowFv
lbl_802525D8:
/* 802525D8 0024F538  34 1E 0C E4 */	addic. r0, r30, 0xce4
/* 802525DC 0024F53C  41 82 00 58 */	beq lbl_80252634
/* 802525E0 0024F540  80 BE 0C E4 */	lwz r5, 0xce4(r30)
/* 802525E4 0024F544  38 60 00 00 */	li r3, 0
/* 802525E8 0024F548  2C 05 00 00 */	cmpwi r5, 0
/* 802525EC 0024F54C  40 81 00 40 */	ble lbl_8025262C
/* 802525F0 0024F550  2C 05 00 08 */	cmpwi r5, 8
/* 802525F4 0024F554  38 85 FF F8 */	addi r4, r5, -8
/* 802525F8 0024F558  40 81 00 20 */	ble lbl_80252618
/* 802525FC 0024F55C  38 04 00 07 */	addi r0, r4, 7
/* 80252600 0024F560  54 00 E8 FE */	srwi r0, r0, 3
/* 80252604 0024F564  7C 09 03 A6 */	mtctr r0
/* 80252608 0024F568  2C 04 00 00 */	cmpwi r4, 0
/* 8025260C 0024F56C  40 81 00 0C */	ble lbl_80252618
lbl_80252610:
/* 80252610 0024F570  38 63 00 08 */	addi r3, r3, 8
/* 80252614 0024F574  42 00 FF FC */	bdnz lbl_80252610
lbl_80252618:
/* 80252618 0024F578  7C 03 28 50 */	subf r0, r3, r5
/* 8025261C 0024F57C  7C 09 03 A6 */	mtctr r0
/* 80252620 0024F580  7C 03 28 00 */	cmpw r3, r5
/* 80252624 0024F584  40 80 00 08 */	bge lbl_8025262C
lbl_80252628:
/* 80252628 0024F588  42 00 00 00 */	bdnz lbl_80252628
lbl_8025262C:
/* 8025262C 0024F58C  38 00 00 00 */	li r0, 0
/* 80252630 0024F590  90 1E 0C E4 */	stw r0, 0xce4(r30)
lbl_80252634:
/* 80252634 0024F594  34 1E 0C DC */	addic. r0, r30, 0xcdc
/* 80252638 0024F598  41 82 00 30 */	beq lbl_80252668
/* 8025263C 0024F59C  88 1E 0C DC */	lbz r0, 0xcdc(r30)
/* 80252640 0024F5A0  28 00 00 00 */	cmplwi r0, 0
/* 80252644 0024F5A4  41 82 00 24 */	beq lbl_80252668
/* 80252648 0024F5A8  80 7E 0C E0 */	lwz r3, 0xce0(r30)
/* 8025264C 0024F5AC  28 03 00 00 */	cmplwi r3, 0
/* 80252650 0024F5B0  41 82 00 18 */	beq lbl_80252668
/* 80252654 0024F5B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80252658 0024F5B8  38 80 00 01 */	li r4, 1
/* 8025265C 0024F5BC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80252660 0024F5C0  7D 89 03 A6 */	mtctr r12
/* 80252664 0024F5C4  4E 80 04 21 */	bctrl
lbl_80252668:
/* 80252668 0024F5C8  34 1E 0C D0 */	addic. r0, r30, 0xcd0
/* 8025266C 0024F5CC  41 82 00 18 */	beq lbl_80252684
/* 80252670 0024F5D0  34 1E 0C D0 */	addic. r0, r30, 0xcd0
/* 80252674 0024F5D4  41 82 00 10 */	beq lbl_80252684
/* 80252678 0024F5D8  38 7E 0C D0 */	addi r3, r30, 0xcd0
/* 8025267C 0024F5DC  38 80 00 00 */	li r4, 0
/* 80252680 0024F5E0  48 0E E7 C1 */	bl __dt__6CTokenFv
lbl_80252684:
/* 80252684 0024F5E4  34 1E 0C 3C */	addic. r0, r30, 0xc3c
/* 80252688 0024F5E8  41 82 00 20 */	beq lbl_802526A8
/* 8025268C 0024F5EC  34 1E 0C 3C */	addic. r0, r30, 0xc3c
/* 80252690 0024F5F0  41 82 00 18 */	beq lbl_802526A8
/* 80252694 0024F5F4  34 1E 0C 3C */	addic. r0, r30, 0xc3c
/* 80252698 0024F5F8  41 82 00 10 */	beq lbl_802526A8
/* 8025269C 0024F5FC  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 802526A0 0024F600  38 80 00 00 */	li r4, 0
/* 802526A4 0024F604  48 0E E7 9D */	bl __dt__6CTokenFv
lbl_802526A8:
/* 802526A8 0024F608  34 1E 0C 14 */	addic. r0, r30, 0xc14
/* 802526AC 0024F60C  41 82 00 20 */	beq lbl_802526CC
/* 802526B0 0024F610  34 1E 0C 14 */	addic. r0, r30, 0xc14
/* 802526B4 0024F614  41 82 00 18 */	beq lbl_802526CC
/* 802526B8 0024F618  34 1E 0C 14 */	addic. r0, r30, 0xc14
/* 802526BC 0024F61C  41 82 00 10 */	beq lbl_802526CC
/* 802526C0 0024F620  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 802526C4 0024F624  38 80 00 00 */	li r4, 0
/* 802526C8 0024F628  48 0E E7 79 */	bl __dt__6CTokenFv
lbl_802526CC:
/* 802526CC 0024F62C  34 1E 0B 68 */	addic. r0, r30, 0xb68
/* 802526D0 0024F630  41 82 00 20 */	beq lbl_802526F0
/* 802526D4 0024F634  34 1E 0B 68 */	addic. r0, r30, 0xb68
/* 802526D8 0024F638  41 82 00 18 */	beq lbl_802526F0
/* 802526DC 0024F63C  34 1E 0B 68 */	addic. r0, r30, 0xb68
/* 802526E0 0024F640  41 82 00 10 */	beq lbl_802526F0
/* 802526E4 0024F644  38 7E 0B 68 */	addi r3, r30, 0xb68
/* 802526E8 0024F648  38 80 00 00 */	li r4, 0
/* 802526EC 0024F64C  48 0E E7 55 */	bl __dt__6CTokenFv
lbl_802526F0:
/* 802526F0 0024F650  34 1E 0B 2C */	addic. r0, r30, 0xb2c
/* 802526F4 0024F654  41 82 00 14 */	beq lbl_80252708
/* 802526F8 0024F658  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 802526FC 0024F65C  41 82 00 0C */	beq lbl_80252708
/* 80252700 0024F660  38 00 00 00 */	li r0, 0
/* 80252704 0024F664  98 1E 0B 5C */	stb r0, 0xb5c(r30)
lbl_80252708:
/* 80252708 0024F668  38 7E 0A 38 */	addi r3, r30, 0xa38
/* 8025270C 0024F66C  38 80 FF FF */	li r4, -1
/* 80252710 0024F670  4B EC 43 3D */	bl __dt__10CModelDataFv
/* 80252714 0024F674  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 80252718 0024F678  38 80 FF FF */	li r4, -1
/* 8025271C 0024F67C  4B EC 43 31 */	bl __dt__10CModelDataFv
/* 80252720 0024F680  38 7E 09 98 */	addi r3, r30, 0x998
/* 80252724 0024F684  38 80 FF FF */	li r4, -1
/* 80252728 0024F688  4B EC 43 25 */	bl __dt__10CModelDataFv
/* 8025272C 0024F68C  34 1E 09 8C */	addic. r0, r30, 0x98c
/* 80252730 0024F690  41 82 00 18 */	beq lbl_80252748
/* 80252734 0024F694  34 1E 09 8C */	addic. r0, r30, 0x98c
/* 80252738 0024F698  41 82 00 10 */	beq lbl_80252748
/* 8025273C 0024F69C  38 7E 09 8C */	addi r3, r30, 0x98c
/* 80252740 0024F6A0  38 80 00 00 */	li r4, 0
/* 80252744 0024F6A4  48 0E E6 FD */	bl __dt__6CTokenFv
lbl_80252748:
/* 80252748 0024F6A8  34 1E 09 84 */	addic. r0, r30, 0x984
/* 8025274C 0024F6AC  41 82 00 10 */	beq lbl_8025275C
/* 80252750 0024F6B0  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 80252754 0024F6B4  38 80 00 01 */	li r4, 1
/* 80252758 0024F6B8  4B F5 51 85 */	bl sub_801a78dc
lbl_8025275C:
/* 8025275C 0024F6BC  34 1E 09 80 */	addic. r0, r30, 0x980
/* 80252760 0024F6C0  41 82 00 10 */	beq lbl_80252770
/* 80252764 0024F6C4  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 80252768 0024F6C8  38 80 00 01 */	li r4, 1
/* 8025276C 0024F6CC  4B F5 51 71 */	bl sub_801a78dc
lbl_80252770:
/* 80252770 0024F6D0  38 7E 05 68 */	addi r3, r30, 0x568
/* 80252774 0024F6D4  38 80 FF FF */	li r4, -1
/* 80252778 0024F6D8  48 00 00 3D */	bl sub_802527b4
/* 8025277C 0024F6DC  7F C3 F3 78 */	mr r3, r30
/* 80252780 0024F6E0  38 80 00 00 */	li r4, 0
/* 80252784 0024F6E4  4B E2 4D ED */	bl __dt__10CPatternedFv
/* 80252788 0024F6E8  7F E0 07 35 */	extsh. r0, r31
/* 8025278C 0024F6EC  40 81 00 0C */	ble lbl_80252798
/* 80252790 0024F6F0  7F C3 F3 78 */	mr r3, r30
/* 80252794 0024F6F4  48 0C 31 9D */	bl Free__7CMemoryFPCv
lbl_80252798:
/* 80252798 0024F6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025279C 0024F6FC  7F C3 F3 78 */	mr r3, r30
/* 802527A0 0024F700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802527A4 0024F704  83 C1 00 08 */	lwz r30, 8(r1)
/* 802527A8 0024F708  7C 08 03 A6 */	mtlr r0
/* 802527AC 0024F70C  38 21 00 10 */	addi r1, r1, 0x10
/* 802527B0 0024F710  4E 80 00 20 */	blr

.global sub_802527b4
sub_802527b4:
/* 802527B4 0024F714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802527B8 0024F718  7C 08 02 A6 */	mflr r0
/* 802527BC 0024F71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802527C0 0024F720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802527C4 0024F724  7C 7F 1B 79 */	or. r31, r3, r3
/* 802527C8 0024F728  41 82 00 E0 */	beq lbl_802528A8
/* 802527CC 0024F72C  34 1F 02 B4 */	addic. r0, r31, 0x2b4
/* 802527D0 0024F730  41 82 00 40 */	beq lbl_80252810
/* 802527D4 0024F734  34 1F 03 34 */	addic. r0, r31, 0x334
/* 802527D8 0024F738  41 82 00 10 */	beq lbl_802527E8
/* 802527DC 0024F73C  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 802527E0 0024F740  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 802527E4 0024F744  90 1F 03 34 */	stw r0, 0x334(r31)
lbl_802527E8:
/* 802527E8 0024F748  34 1F 02 F8 */	addic. r0, r31, 0x2f8
/* 802527EC 0024F74C  41 82 00 10 */	beq lbl_802527FC
/* 802527F0 0024F750  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 802527F4 0024F754  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 802527F8 0024F758  90 1F 02 F8 */	stw r0, 0x2f8(r31)
lbl_802527FC:
/* 802527FC 0024F75C  34 1F 02 BC */	addic. r0, r31, 0x2bc
/* 80252800 0024F760  41 82 00 10 */	beq lbl_80252810
/* 80252804 0024F764  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80252808 0024F768  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025280C 0024F76C  90 1F 02 BC */	stw r0, 0x2bc(r31)
lbl_80252810:
/* 80252810 0024F770  34 1F 01 C0 */	addic. r0, r31, 0x1c0
/* 80252814 0024F774  41 82 00 40 */	beq lbl_80252854
/* 80252818 0024F778  34 1F 02 40 */	addic. r0, r31, 0x240
/* 8025281C 0024F77C  41 82 00 10 */	beq lbl_8025282C
/* 80252820 0024F780  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80252824 0024F784  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80252828 0024F788  90 1F 02 40 */	stw r0, 0x240(r31)
lbl_8025282C:
/* 8025282C 0024F78C  34 1F 02 04 */	addic. r0, r31, 0x204
/* 80252830 0024F790  41 82 00 10 */	beq lbl_80252840
/* 80252834 0024F794  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80252838 0024F798  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025283C 0024F79C  90 1F 02 04 */	stw r0, 0x204(r31)
lbl_80252840:
/* 80252840 0024F7A0  34 1F 01 C8 */	addic. r0, r31, 0x1c8
/* 80252844 0024F7A4  41 82 00 10 */	beq lbl_80252854
/* 80252848 0024F7A8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025284C 0024F7AC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80252850 0024F7B0  90 1F 01 C8 */	stw r0, 0x1c8(r31)
lbl_80252854:
/* 80252854 0024F7B4  34 1F 00 CC */	addic. r0, r31, 0xcc
/* 80252858 0024F7B8  41 82 00 40 */	beq lbl_80252898
/* 8025285C 0024F7BC  34 1F 01 4C */	addic. r0, r31, 0x14c
/* 80252860 0024F7C0  41 82 00 10 */	beq lbl_80252870
/* 80252864 0024F7C4  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80252868 0024F7C8  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025286C 0024F7CC  90 1F 01 4C */	stw r0, 0x14c(r31)
lbl_80252870:
/* 80252870 0024F7D0  34 1F 01 10 */	addic. r0, r31, 0x110
/* 80252874 0024F7D4  41 82 00 10 */	beq lbl_80252884
/* 80252878 0024F7D8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025287C 0024F7DC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80252880 0024F7E0  90 1F 01 10 */	stw r0, 0x110(r31)
lbl_80252884:
/* 80252884 0024F7E4  34 1F 00 D4 */	addic. r0, r31, 0xd4
/* 80252888 0024F7E8  41 82 00 10 */	beq lbl_80252898
/* 8025288C 0024F7EC  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80252890 0024F7F0  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80252894 0024F7F4  90 1F 00 D4 */	stw r0, 0xd4(r31)
lbl_80252898:
/* 80252898 0024F7F8  7C 80 07 35 */	extsh. r0, r4
/* 8025289C 0024F7FC  40 81 00 0C */	ble lbl_802528A8
/* 802528A0 0024F800  7F E3 FB 78 */	mr r3, r31
/* 802528A4 0024F804  48 0C 30 8D */	bl Free__7CMemoryFPCv
lbl_802528A8:
/* 802528A8 0024F808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802528AC 0024F80C  7F E3 FB 78 */	mr r3, r31
/* 802528B0 0024F810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802528B4 0024F814  7C 08 03 A6 */	mtlr r0
/* 802528B8 0024F818  38 21 00 10 */	addi r1, r1, 0x10
/* 802528BC 0024F81C  4E 80 00 20 */	blr

.global GetGravityConstant__7CRidleyCFv
GetGravityConstant__7CRidleyCFv:
/* 802528C0 0024F820  C0 22 B9 0C */	lfs f1, lbl_805AD62C@sda21(r2)
/* 802528C4 0024F824  4E 80 00 20 */	blr

.global GetCollisionResponseType__7CRidleyCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__7CRidleyCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 802528C8 0024F828  38 60 00 10 */	li r3, 0x10
/* 802528CC 0024F82C  4E 80 00 20 */	blr

.global SetAIStage__7CRidleyFR13CStateManagerf
SetAIStage__7CRidleyFR13CStateManagerf:
/* 802528D0 0024F830  FC 00 08 1E */	fctiwz f0, f1
/* 802528D4 0024F834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802528D8 0024F838  D8 01 00 08 */	stfd f0, 8(r1)
/* 802528DC 0024F83C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802528E0 0024F840  90 03 0C 64 */	stw r0, 0xc64(r3)
/* 802528E4 0024F844  38 60 00 01 */	li r3, 1
/* 802528E8 0024F848  38 21 00 10 */	addi r1, r1, 0x10
/* 802528EC 0024F84C  4E 80 00 20 */	blr

.global HitSomething__7CRidleyFR13CStateManagerf
HitSomething__7CRidleyFR13CStateManagerf:
/* 802528F0 0024F850  88 03 0A 32 */	lbz r0, 0xa32(r3)
/* 802528F4 0024F854  38 80 00 00 */	li r4, 0
/* 802528F8 0024F858  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 802528FC 0024F85C  40 82 00 10 */	bne lbl_8025290C
/* 80252900 0024F860  80 03 0C 64 */	lwz r0, 0xc64(r3)
/* 80252904 0024F864  2C 00 00 03 */	cmpwi r0, 3
/* 80252908 0024F868  40 82 00 08 */	bne lbl_80252910
lbl_8025290C:
/* 8025290C 0024F86C  38 80 00 01 */	li r4, 1
lbl_80252910:
/* 80252910 0024F870  7C 83 23 78 */	mr r3, r4
/* 80252914 0024F874  4E 80 00 20 */	blr

.global Attacked__7CRidleyFR13CStateManagerf
Attacked__7CRidleyFR13CStateManagerf:
/* 80252918 0024F878  88 83 0A 31 */	lbz r4, 0xa31(r3)
/* 8025291C 0024F87C  38 60 00 00 */	li r3, 0
/* 80252920 0024F880  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80252924 0024F884  4D 82 00 20 */	beqlr
/* 80252928 0024F888  54 80 DF FF */	rlwinm. r0, r4, 0x1b, 0x1f, 0x1f
/* 8025292C 0024F88C  4D 82 00 20 */	beqlr
/* 80252930 0024F890  38 60 00 01 */	li r3, 1
/* 80252934 0024F894  4E 80 00 20 */	blr

.global ShotAt__7CRidleyFR13CStateManagerf
ShotAt__7CRidleyFR13CStateManagerf:
/* 80252938 0024F898  88 03 0A 32 */	lbz r0, 0xa32(r3)
/* 8025293C 0024F89C  54 03 EF FE */	rlwinm r3, r0, 0x1d, 0x1f, 0x1f
/* 80252940 0024F8A0  4E 80 00 20 */	blr

.global IsDizzy__7CRidleyFR13CStateManagerf
IsDizzy__7CRidleyFR13CStateManagerf:
/* 80252944 0024F8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80252948 0024F8A8  7C 08 02 A6 */	mflr r0
/* 8025294C 0024F8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80252950 0024F8B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80252954 0024F8B4  7C 7F 1B 78 */	mr r31, r3
/* 80252958 0024F8B8  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 8025295C 0024F8BC  2C 00 00 03 */	cmpwi r0, 3
/* 80252960 0024F8C0  40 82 00 0C */	bne lbl_8025296C
/* 80252964 0024F8C4  38 60 00 01 */	li r3, 1
/* 80252968 0024F8C8  48 00 00 A8 */	b lbl_80252A10
lbl_8025296C:
/* 8025296C 0024F8CC  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80252970 0024F8D0  2C 00 00 03 */	cmpwi r0, 3
/* 80252974 0024F8D4  41 82 00 98 */	beq lbl_80252A0C
/* 80252978 0024F8D8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8025297C 0024F8DC  38 61 00 14 */	addi r3, r1, 0x14
/* 80252980 0024F8E0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80252984 0024F8E4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80252988 0024F8E8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8025298C 0024F8EC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80252990 0024F8F0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80252994 0024F8F4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80252998 0024F8F8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8025299C 0024F8FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 802529A0 0024F900  EC 01 00 28 */	fsubs f0, f1, f0
/* 802529A4 0024F904  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802529A8 0024F908  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802529AC 0024F90C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802529B0 0024F910  48 0C 1F 09 */	bl Magnitude__9CVector3fCFv
/* 802529B4 0024F914  C0 1F 03 00 */	lfs f0, 0x300(r31)
/* 802529B8 0024F918  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802529BC 0024F91C  40 80 00 50 */	bge lbl_80252A0C
/* 802529C0 0024F920  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 802529C4 0024F924  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802529C8 0024F928  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 802529CC 0024F92C  EC 00 01 32 */	fmuls f0, f0, f4
/* 802529D0 0024F930  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802529D4 0024F934  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 802529D8 0024F938  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 802529DC 0024F93C  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 802529E0 0024F940  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802529E4 0024F944  D0 61 00 08 */	stfs f3, 8(r1)
/* 802529E8 0024F948  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 802529EC 0024F94C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 802529F0 0024F950  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 802529F4 0024F954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802529F8 0024F958  40 80 00 14 */	bge lbl_80252A0C
/* 802529FC 0024F95C  38 00 00 03 */	li r0, 3
/* 80252A00 0024F960  38 60 00 01 */	li r3, 1
/* 80252A04 0024F964  90 1F 0B 0C */	stw r0, 0xb0c(r31)
/* 80252A08 0024F968  48 00 00 08 */	b lbl_80252A10
lbl_80252A0C:
/* 80252A0C 0024F96C  38 60 00 00 */	li r3, 0
lbl_80252A10:
/* 80252A10 0024F970  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80252A14 0024F974  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80252A18 0024F978  7C 08 03 A6 */	mtlr r0
/* 80252A1C 0024F97C  38 21 00 30 */	addi r1, r1, 0x30
/* 80252A20 0024F980  4E 80 00 20 */	blr

.global ShouldMove__7CRidleyFR13CStateManagerf
ShouldMove__7CRidleyFR13CStateManagerf:
/* 80252A24 0024F984  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80252A28 0024F988  7C 08 02 A6 */	mflr r0
/* 80252A2C 0024F98C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80252A30 0024F990  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80252A34 0024F994  7C 7F 1B 78 */	mr r31, r3
/* 80252A38 0024F998  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 80252A3C 0024F99C  2C 00 00 05 */	cmpwi r0, 5
/* 80252A40 0024F9A0  40 82 00 1C */	bne lbl_80252A5C
/* 80252A44 0024F9A4  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 80252A48 0024F9A8  38 60 00 01 */	li r3, 1
/* 80252A4C 0024F9AC  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80252A50 0024F9B0  38 60 00 01 */	li r3, 1
/* 80252A54 0024F9B4  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80252A58 0024F9B8  48 00 00 CC */	b lbl_80252B24
lbl_80252A5C:
/* 80252A5C 0024F9BC  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80252A60 0024F9C0  2C 00 00 05 */	cmpwi r0, 5
/* 80252A64 0024F9C4  41 82 00 BC */	beq lbl_80252B20
/* 80252A68 0024F9C8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80252A6C 0024F9CC  38 61 00 14 */	addi r3, r1, 0x14
/* 80252A70 0024F9D0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80252A74 0024F9D4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80252A78 0024F9D8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80252A7C 0024F9DC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80252A80 0024F9E0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80252A84 0024F9E4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80252A88 0024F9E8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80252A8C 0024F9EC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80252A90 0024F9F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80252A94 0024F9F4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80252A98 0024F9F8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80252A9C 0024F9FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80252AA0 0024FA00  48 0C 1E 19 */	bl Magnitude__9CVector3fCFv
/* 80252AA4 0024FA04  C0 1F 03 00 */	lfs f0, 0x300(r31)
/* 80252AA8 0024FA08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252AAC 0024FA0C  40 81 00 74 */	ble lbl_80252B20
/* 80252AB0 0024FA10  C0 BF 00 48 */	lfs f5, 0x48(r31)
/* 80252AB4 0024FA14  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80252AB8 0024FA18  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80252ABC 0024FA1C  EC 40 01 72 */	fmuls f2, f0, f5
/* 80252AC0 0024FA20  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80252AC4 0024FA24  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 80252AC8 0024FA28  C0 02 B9 1C */	lfs f0, lbl_805AD63C@sda21(r2)
/* 80252ACC 0024FA2C  EC 43 11 3A */	fmadds f2, f3, f4, f2
/* 80252AD0 0024FA30  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80252AD4 0024FA34  EC 00 00 72 */	fmuls f0, f0, f1
/* 80252AD8 0024FA38  D0 81 00 08 */	stfs f4, 8(r1)
/* 80252ADC 0024FA3C  EC 23 11 BA */	fmadds f1, f3, f6, f2
/* 80252AE0 0024FA40  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80252AE4 0024FA44  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80252AE8 0024FA48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252AEC 0024FA4C  40 81 00 34 */	ble lbl_80252B20
/* 80252AF0 0024FA50  7F E3 FB 78 */	mr r3, r31
/* 80252AF4 0024FA54  48 00 0E 6D */	bl sub_80253960
/* 80252AF8 0024FA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80252AFC 0024FA5C  41 82 00 24 */	beq lbl_80252B20
/* 80252B00 0024FA60  88 7F 0A 34 */	lbz r3, 0xa34(r31)
/* 80252B04 0024FA64  38 00 00 01 */	li r0, 1
/* 80252B08 0024FA68  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 80252B0C 0024FA6C  38 00 00 05 */	li r0, 5
/* 80252B10 0024FA70  98 7F 0A 34 */	stb r3, 0xa34(r31)
/* 80252B14 0024FA74  38 60 00 01 */	li r3, 1
/* 80252B18 0024FA78  90 1F 0B 0C */	stw r0, 0xb0c(r31)
/* 80252B1C 0024FA7C  48 00 00 08 */	b lbl_80252B24
lbl_80252B20:
/* 80252B20 0024FA80  38 60 00 00 */	li r3, 0
lbl_80252B24:
/* 80252B24 0024FA84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80252B28 0024FA88  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80252B2C 0024FA8C  7C 08 03 A6 */	mtlr r0
/* 80252B30 0024FA90  38 21 00 30 */	addi r1, r1, 0x30
/* 80252B34 0024FA94  4E 80 00 20 */	blr

.global TooClose__7CRidleyFR13CStateManagerf
TooClose__7CRidleyFR13CStateManagerf:
/* 80252B38 0024FA98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80252B3C 0024FA9C  7C 08 02 A6 */	mflr r0
/* 80252B40 0024FAA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80252B44 0024FAA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80252B48 0024FAA8  7C 7F 1B 78 */	mr r31, r3
/* 80252B4C 0024FAAC  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 80252B50 0024FAB0  2C 00 00 04 */	cmpwi r0, 4
/* 80252B54 0024FAB4  40 82 00 0C */	bne lbl_80252B60
/* 80252B58 0024FAB8  38 60 00 01 */	li r3, 1
/* 80252B5C 0024FABC  48 00 00 AC */	b lbl_80252C08
lbl_80252B60:
/* 80252B60 0024FAC0  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80252B64 0024FAC4  2C 00 00 04 */	cmpwi r0, 4
/* 80252B68 0024FAC8  41 82 00 9C */	beq lbl_80252C04
/* 80252B6C 0024FACC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80252B70 0024FAD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80252B74 0024FAD4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80252B78 0024FAD8  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80252B7C 0024FADC  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80252B80 0024FAE0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80252B84 0024FAE4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80252B88 0024FAE8  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80252B8C 0024FAEC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80252B90 0024FAF0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80252B94 0024FAF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80252B98 0024FAF8  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80252B9C 0024FAFC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80252BA0 0024FB00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80252BA4 0024FB04  48 0C 1D 15 */	bl Magnitude__9CVector3fCFv
/* 80252BA8 0024FB08  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 80252BAC 0024FB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252BB0 0024FB10  40 80 00 54 */	bge lbl_80252C04
/* 80252BB4 0024FB14  C0 BF 00 48 */	lfs f5, 0x48(r31)
/* 80252BB8 0024FB18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80252BBC 0024FB1C  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80252BC0 0024FB20  EC 40 01 72 */	fmuls f2, f0, f5
/* 80252BC4 0024FB24  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80252BC8 0024FB28  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 80252BCC 0024FB2C  C0 02 B9 20 */	lfs f0, lbl_805AD640@sda21(r2)
/* 80252BD0 0024FB30  EC 43 11 3A */	fmadds f2, f3, f4, f2
/* 80252BD4 0024FB34  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80252BD8 0024FB38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80252BDC 0024FB3C  D0 81 00 08 */	stfs f4, 8(r1)
/* 80252BE0 0024FB40  EC 23 11 BA */	fmadds f1, f3, f6, f2
/* 80252BE4 0024FB44  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80252BE8 0024FB48  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80252BEC 0024FB4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252BF0 0024FB50  40 81 00 14 */	ble lbl_80252C04
/* 80252BF4 0024FB54  38 00 00 04 */	li r0, 4
/* 80252BF8 0024FB58  38 60 00 01 */	li r3, 1
/* 80252BFC 0024FB5C  90 1F 0B 0C */	stw r0, 0xb0c(r31)
/* 80252C00 0024FB60  48 00 00 08 */	b lbl_80252C08
lbl_80252C04:
/* 80252C04 0024FB64  38 60 00 00 */	li r3, 0
lbl_80252C08:
/* 80252C08 0024FB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80252C0C 0024FB6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80252C10 0024FB70  7C 08 03 A6 */	mtlr r0
/* 80252C14 0024FB74  38 21 00 30 */	addi r1, r1, 0x30
/* 80252C18 0024FB78  4E 80 00 20 */	blr

.global AttackOver__7CRidleyFR13CStateManagerf
AttackOver__7CRidleyFR13CStateManagerf:
/* 80252C1C 0024FB7C  80 03 0C C4 */	lwz r0, 0xcc4(r3)
/* 80252C20 0024FB80  7C 00 00 34 */	cntlzw r0, r0
/* 80252C24 0024FB84  54 03 D9 7E */	srwi r3, r0, 5
/* 80252C28 0024FB88  4E 80 00 20 */	blr

.global ShouldTurn__7CRidleyFR13CStateManagerf
ShouldTurn__7CRidleyFR13CStateManagerf:
/* 80252C2C 0024FB8C  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252C30 0024FB90  20 00 00 05 */	subfic r0, r0, 5
/* 80252C34 0024FB94  7C 00 00 34 */	cntlzw r0, r0
/* 80252C38 0024FB98  54 03 D9 7E */	srwi r3, r0, 5
/* 80252C3C 0024FB9C  4E 80 00 20 */	blr

.global ShouldDodge__7CRidleyFR13CStateManagerf
ShouldDodge__7CRidleyFR13CStateManagerf:
/* 80252C40 0024FBA0  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252C44 0024FBA4  20 00 00 03 */	subfic r0, r0, 3
/* 80252C48 0024FBA8  7C 00 00 34 */	cntlzw r0, r0
/* 80252C4C 0024FBAC  54 03 D9 7E */	srwi r3, r0, 5
/* 80252C50 0024FBB0  4E 80 00 20 */	blr

.global ShouldRetreat__7CRidleyFR13CStateManagerf
ShouldRetreat__7CRidleyFR13CStateManagerf:
/* 80252C54 0024FBB4  88 03 0A 34 */	lbz r0, 0xa34(r3)
/* 80252C58 0024FBB8  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80252C5C 0024FBBC  4E 80 00 20 */	blr

.global ShouldCrouch__7CRidleyFR13CStateManagerf
ShouldCrouch__7CRidleyFR13CStateManagerf:
/* 80252C60 0024FBC0  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252C64 0024FBC4  20 00 00 01 */	subfic r0, r0, 1
/* 80252C68 0024FBC8  7C 00 00 34 */	cntlzw r0, r0
/* 80252C6C 0024FBCC  54 03 D9 7E */	srwi r3, r0, 5
/* 80252C70 0024FBD0  4E 80 00 20 */	blr

.global InRange__7CRidleyFR13CStateManagerf
InRange__7CRidleyFR13CStateManagerf:
/* 80252C74 0024FBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80252C78 0024FBD8  7C 08 02 A6 */	mflr r0
/* 80252C7C 0024FBDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80252C80 0024FBE0  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 80252C84 0024FBE4  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 80252C88 0024FBE8  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 80252C8C 0024FBEC  C0 43 02 E4 */	lfs f2, 0x2e4(r3)
/* 80252C90 0024FBF0  C0 23 02 E8 */	lfs f1, 0x2e8(r3)
/* 80252C94 0024FBF4  C0 03 02 E0 */	lfs f0, 0x2e0(r3)
/* 80252C98 0024FBF8  EC 44 10 28 */	fsubs f2, f4, f2
/* 80252C9C 0024FBFC  EC 25 08 28 */	fsubs f1, f5, f1
/* 80252CA0 0024FC00  D0 61 00 08 */	stfs f3, 8(r1)
/* 80252CA4 0024FC04  EC 03 00 28 */	fsubs f0, f3, f0
/* 80252CA8 0024FC08  38 61 00 14 */	addi r3, r1, 0x14
/* 80252CAC 0024FC0C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80252CB0 0024FC10  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80252CB4 0024FC14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80252CB8 0024FC18  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80252CBC 0024FC1C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80252CC0 0024FC20  48 0C 1B F9 */	bl Magnitude__9CVector3fCFv
/* 80252CC4 0024FC24  C0 02 B9 24 */	lfs f0, lbl_805AD644@sda21(r2)
/* 80252CC8 0024FC28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252CCC 0024FC2C  7C 00 00 26 */	mfcr r0
/* 80252CD0 0024FC30  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252CD4 0024FC34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80252CD8 0024FC38  7C 08 03 A6 */	mtlr r0
/* 80252CDC 0024FC3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80252CE0 0024FC40  4E 80 00 20 */	blr

.global AIStage__7CRidleyFR13CStateManagerf
AIStage__7CRidleyFR13CStateManagerf:
/* 80252CE4 0024FC44  FC 00 08 1E */	fctiwz f0, f1
/* 80252CE8 0024FC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252CEC 0024FC4C  80 A3 0C 64 */	lwz r5, 0xc64(r3)
/* 80252CF0 0024FC50  D8 01 00 08 */	stfd f0, 8(r1)
/* 80252CF4 0024FC54  7C A4 FE 70 */	srawi r4, r5, 0x1f
/* 80252CF8 0024FC58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80252CFC 0024FC5C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252D00 0024FC60  7C 00 28 10 */	subfc r0, r0, r5
/* 80252D04 0024FC64  7C 64 19 14 */	adde r3, r4, r3
/* 80252D08 0024FC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80252D0C 0024FC6C  4E 80 00 20 */	blr

.global ShouldAttack__7CRidleyFR13CStateManagerf
ShouldAttack__7CRidleyFR13CStateManagerf:
/* 80252D10 0024FC70  80 03 0C 64 */	lwz r0, 0xc64(r3)
/* 80252D14 0024FC74  38 80 00 00 */	li r4, 0
/* 80252D18 0024FC78  2C 00 00 03 */	cmpwi r0, 3
/* 80252D1C 0024FC7C  41 82 00 24 */	beq lbl_80252D40
/* 80252D20 0024FC80  40 80 00 30 */	bge lbl_80252D50
/* 80252D24 0024FC84  2C 00 00 02 */	cmpwi r0, 2
/* 80252D28 0024FC88  40 80 00 08 */	bge lbl_80252D30
/* 80252D2C 0024FC8C  48 00 00 24 */	b lbl_80252D50
lbl_80252D30:
/* 80252D30 0024FC90  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252D34 0024FC94  7C 00 00 34 */	cntlzw r0, r0
/* 80252D38 0024FC98  54 04 D9 7E */	srwi r4, r0, 5
/* 80252D3C 0024FC9C  48 00 00 14 */	b lbl_80252D50
lbl_80252D40:
/* 80252D40 0024FCA0  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 80252D44 0024FCA4  20 00 00 02 */	subfic r0, r0, 2
/* 80252D48 0024FCA8  7C 00 00 34 */	cntlzw r0, r0
/* 80252D4C 0024FCAC  54 04 D9 7E */	srwi r4, r0, 5
lbl_80252D50:
/* 80252D50 0024FCB0  7C 83 23 78 */	mr r3, r4
/* 80252D54 0024FCB4  4E 80 00 20 */	blr

.global ShouldFire__7CRidleyFR13CStateManagerf
ShouldFire__7CRidleyFR13CStateManagerf:
/* 80252D58 0024FCB8  80 03 0C 64 */	lwz r0, 0xc64(r3)
/* 80252D5C 0024FCBC  38 80 00 00 */	li r4, 0
/* 80252D60 0024FCC0  2C 00 00 02 */	cmpwi r0, 2
/* 80252D64 0024FCC4  41 82 00 08 */	beq lbl_80252D6C
/* 80252D68 0024FCC8  48 00 00 14 */	b lbl_80252D7C
lbl_80252D6C:
/* 80252D6C 0024FCCC  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252D70 0024FCD0  20 00 00 02 */	subfic r0, r0, 2
/* 80252D74 0024FCD4  7C 00 00 34 */	cntlzw r0, r0
/* 80252D78 0024FCD8  54 04 D9 7E */	srwi r4, r0, 5
lbl_80252D7C:
/* 80252D7C 0024FCDC  7C 83 23 78 */	mr r3, r4
/* 80252D80 0024FCE0  4E 80 00 20 */	blr

.global ShouldTaunt__7CRidleyFR13CStateManagerf
ShouldTaunt__7CRidleyFR13CStateManagerf:
/* 80252D84 0024FCE4  80 03 0C 64 */	lwz r0, 0xc64(r3)
/* 80252D88 0024FCE8  38 80 00 00 */	li r4, 0
/* 80252D8C 0024FCEC  2C 00 00 03 */	cmpwi r0, 3
/* 80252D90 0024FCF0  41 82 00 28 */	beq lbl_80252DB8
/* 80252D94 0024FCF4  40 80 00 34 */	bge lbl_80252DC8
/* 80252D98 0024FCF8  2C 00 00 02 */	cmpwi r0, 2
/* 80252D9C 0024FCFC  40 80 00 08 */	bge lbl_80252DA4
/* 80252DA0 0024FD00  48 00 00 28 */	b lbl_80252DC8
lbl_80252DA4:
/* 80252DA4 0024FD04  80 03 0B 04 */	lwz r0, 0xb04(r3)
/* 80252DA8 0024FD08  20 00 00 04 */	subfic r0, r0, 4
/* 80252DAC 0024FD0C  7C 00 00 34 */	cntlzw r0, r0
/* 80252DB0 0024FD10  54 04 D9 7E */	srwi r4, r0, 5
/* 80252DB4 0024FD14  48 00 00 14 */	b lbl_80252DC8
lbl_80252DB8:
/* 80252DB8 0024FD18  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 80252DBC 0024FD1C  20 00 00 01 */	subfic r0, r0, 1
/* 80252DC0 0024FD20  7C 00 00 34 */	cntlzw r0, r0
/* 80252DC4 0024FD24  54 04 D9 7E */	srwi r4, r0, 5
lbl_80252DC8:
/* 80252DC8 0024FD28  7C 83 23 78 */	mr r3, r4
/* 80252DCC 0024FD2C  4E 80 00 20 */	blr

.global Dead__7CRidleyFR13CStateManager9EStateMsgf
Dead__7CRidleyFR13CStateManager9EStateMsgf:
/* 80252DD0 0024FD30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252DD4 0024FD34  7C 08 02 A6 */	mflr r0
/* 80252DD8 0024FD38  2C 05 00 00 */	cmpwi r5, 0
/* 80252DDC 0024FD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252DE0 0024FD40  41 82 00 0C */	beq lbl_80252DEC
/* 80252DE4 0024FD44  41 80 00 24 */	blt lbl_80252E08
/* 80252DE8 0024FD48  48 00 00 20 */	b lbl_80252E08
lbl_80252DEC:
/* 80252DEC 0024FD4C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80252DF0 0024FD50  7C 83 23 78 */	mr r3, r4
/* 80252DF4 0024FD54  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80252DF8 0024FD58  38 81 00 08 */	addi r4, r1, 8
/* 80252DFC 0024FD5C  B0 01 00 08 */	sth r0, 8(r1)
/* 80252E00 0024FD60  38 A0 00 00 */	li r5, 0
/* 80252E04 0024FD64  4B DF 11 41 */	bl SetBossParams__13CStateManagerF9TUniqueIdfUi
lbl_80252E08:
/* 80252E08 0024FD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252E0C 0024FD6C  7C 08 03 A6 */	mtlr r0
/* 80252E10 0024FD70  38 21 00 10 */	addi r1, r1, 0x10
/* 80252E14 0024FD74  4E 80 00 20 */	blr

.global CoverAttack__7CRidleyFR13CStateManager9EStateMsgf
CoverAttack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80252E18 0024FD78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80252E1C 0024FD7C  7C 08 02 A6 */	mflr r0
/* 80252E20 0024FD80  2C 05 00 01 */	cmpwi r5, 1
/* 80252E24 0024FD84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80252E28 0024FD88  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80252E2C 0024FD8C  7C 7F 1B 78 */	mr r31, r3
/* 80252E30 0024FD90  41 82 00 88 */	beq lbl_80252EB8
/* 80252E34 0024FD94  40 80 00 10 */	bge lbl_80252E44
/* 80252E38 0024FD98  2C 05 00 00 */	cmpwi r5, 0
/* 80252E3C 0024FD9C  40 80 00 14 */	bge lbl_80252E50
/* 80252E40 0024FDA0  48 00 01 20 */	b lbl_80252F60
lbl_80252E44:
/* 80252E44 0024FDA4  2C 05 00 03 */	cmpwi r5, 3
/* 80252E48 0024FDA8  40 80 01 18 */	bge lbl_80252F60
/* 80252E4C 0024FDAC  48 00 00 A0 */	b lbl_80252EEC
lbl_80252E50:
/* 80252E50 0024FDB0  38 00 00 01 */	li r0, 1
/* 80252E54 0024FDB4  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80252E58 0024FDB8  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80252E5C 0024FDBC  C0 3F 09 54 */	lfs f1, 0x954(r31)
/* 80252E60 0024FDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80252E64 0024FDC4  7C A0 00 26 */	mfcr r5
/* 80252E68 0024FDC8  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80252E6C 0024FDCC  50 A0 2F 38 */	rlwimi r0, r5, 5, 0x1c, 0x1c
/* 80252E70 0024FDD0  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80252E74 0024FDD4  D0 3F 05 04 */	stfs f1, 0x504(r31)
/* 80252E78 0024FDD8  80 BF 09 38 */	lwz r5, 0x938(r31)
/* 80252E7C 0024FDDC  80 1F 09 3C */	lwz r0, 0x93c(r31)
/* 80252E80 0024FDE0  90 BF 0C 8C */	stw r5, 0xc8c(r31)
/* 80252E84 0024FDE4  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80252E88 0024FDE8  C0 1F 09 40 */	lfs f0, 0x940(r31)
/* 80252E8C 0024FDEC  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 80252E90 0024FDF0  C0 1F 09 44 */	lfs f0, 0x944(r31)
/* 80252E94 0024FDF4  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 80252E98 0024FDF8  C0 1F 09 48 */	lfs f0, 0x948(r31)
/* 80252E9C 0024FDFC  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 80252EA0 0024FE00  C0 1F 09 4C */	lfs f0, 0x94c(r31)
/* 80252EA4 0024FE04  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 80252EA8 0024FE08  88 1F 09 50 */	lbz r0, 0x950(r31)
/* 80252EAC 0024FE0C  98 1F 0C A4 */	stb r0, 0xca4(r31)
/* 80252EB0 0024FE10  48 00 36 D1 */	bl sub_80256580
/* 80252EB4 0024FE14  48 00 00 AC */	b lbl_80252F60
lbl_80252EB8:
/* 80252EB8 0024FE18  3C A0 80 3F */	lis r5, lbl_803E924C@ha
/* 80252EBC 0024FE1C  38 C1 00 08 */	addi r6, r1, 8
/* 80252EC0 0024FE20  39 45 92 4C */	addi r10, r5, lbl_803E924C@l
/* 80252EC4 0024FE24  38 A0 00 07 */	li r5, 7
/* 80252EC8 0024FE28  81 2A 00 00 */	lwz r9, 0(r10)
/* 80252ECC 0024FE2C  38 E0 00 01 */	li r7, 1
/* 80252ED0 0024FE30  81 0A 00 04 */	lwz r8, 4(r10)
/* 80252ED4 0024FE34  80 0A 00 08 */	lwz r0, 8(r10)
/* 80252ED8 0024FE38  91 21 00 08 */	stw r9, 8(r1)
/* 80252EDC 0024FE3C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80252EE0 0024FE40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80252EE4 0024FE44  4B E2 98 D1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80252EE8 0024FE48  48 00 00 78 */	b lbl_80252F60
lbl_80252EEC:
/* 80252EEC 0024FE4C  38 A0 00 00 */	li r5, 0
/* 80252EF0 0024FE50  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80252EF4 0024FE54  90 BF 03 2C */	stw r5, 0x32c(r31)
/* 80252EF8 0024FE58  7F E4 FB 78 */	mr r4, r31
/* 80252EFC 0024FE5C  38 61 00 14 */	addi r3, r1, 0x14
/* 80252F00 0024FE60  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80252F04 0024FE64  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80252F08 0024FE68  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80252F0C 0024FE6C  D0 1F 05 04 */	stfs f0, 0x504(r31)
/* 80252F10 0024FE70  81 9F 00 00 */	lwz r12, 0(r31)
/* 80252F14 0024FE74  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80252F18 0024FE78  7D 89 03 A6 */	mtctr r12
/* 80252F1C 0024FE7C  4E 80 04 21 */	bctrl
/* 80252F20 0024FE80  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80252F24 0024FE84  7F E3 FB 78 */	mr r3, r31
/* 80252F28 0024FE88  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80252F2C 0024FE8C  90 9F 0C 8C */	stw r4, 0xc8c(r31)
/* 80252F30 0024FE90  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80252F34 0024FE94  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80252F38 0024FE98  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 80252F3C 0024FE9C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80252F40 0024FEA0  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 80252F44 0024FEA4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80252F48 0024FEA8  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 80252F4C 0024FEAC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80252F50 0024FEB0  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 80252F54 0024FEB4  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 80252F58 0024FEB8  98 1F 0C A4 */	stb r0, 0xca4(r31)
/* 80252F5C 0024FEBC  48 00 36 21 */	bl nullsub_53
lbl_80252F60:
/* 80252F60 0024FEC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80252F64 0024FEC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80252F68 0024FEC8  7C 08 03 A6 */	mtlr r0
/* 80252F6C 0024FECC  38 21 00 40 */	addi r1, r1, 0x40
/* 80252F70 0024FED0  4E 80 00 20 */	blr

.global Dodge__7CRidleyFR13CStateManager9EStateMsgf
Dodge__7CRidleyFR13CStateManager9EStateMsgf:
/* 80252F74 0024FED4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80252F78 0024FED8  7C 08 02 A6 */	mflr r0
/* 80252F7C 0024FEDC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80252F80 0024FEE0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80252F84 0024FEE4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 80252F88 0024FEE8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80252F8C 0024FEEC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80252F90 0024FEF0  FF E0 08 90 */	fmr f31, f1
/* 80252F94 0024FEF4  2C 05 00 01 */	cmpwi r5, 1
/* 80252F98 0024FEF8  7C 7E 1B 78 */	mr r30, r3
/* 80252F9C 0024FEFC  7C 9F 23 78 */	mr r31, r4
/* 80252FA0 0024FF00  41 82 00 E0 */	beq lbl_80253080
/* 80252FA4 0024FF04  40 80 00 10 */	bge lbl_80252FB4
/* 80252FA8 0024FF08  2C 05 00 00 */	cmpwi r5, 0
/* 80252FAC 0024FF0C  40 80 00 14 */	bge lbl_80252FC0
/* 80252FB0 0024FF10  48 00 02 3C */	b lbl_802531EC
lbl_80252FB4:
/* 80252FB4 0024FF14  2C 05 00 03 */	cmpwi r5, 3
/* 80252FB8 0024FF18  40 80 02 34 */	bge lbl_802531EC
/* 80252FBC 0024FF1C  48 00 02 28 */	b lbl_802531E4
lbl_80252FC0:
/* 80252FC0 0024FF20  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80252FC4 0024FF24  38 61 00 14 */	addi r3, r1, 0x14
/* 80252FC8 0024FF28  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 80252FCC 0024FF2C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80252FD0 0024FF30  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 80252FD4 0024FF34  EC 23 08 28 */	fsubs f1, f3, f1
/* 80252FD8 0024FF38  EC 42 00 28 */	fsubs f2, f2, f0
/* 80252FDC 0024FF3C  48 0C 12 25 */	bl __ct__9CVector2fFff
/* 80252FE0 0024FF40  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80252FE4 0024FF44  38 61 00 70 */	addi r3, r1, 0x70
/* 80252FE8 0024FF48  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80252FEC 0024FF4C  38 81 00 64 */	addi r4, r1, 0x64
/* 80252FF0 0024FF50  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80252FF4 0024FF54  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80252FF8 0024FF58  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80252FFC 0024FF5C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80253000 0024FF60  48 0C 18 51 */	bl AsNormalized__9CVector3fCFv
/* 80253004 0024FF64  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80253008 0024FF68  38 81 00 08 */	addi r4, r1, 8
/* 8025300C 0024FF6C  C0 1E 0A 94 */	lfs f0, 0xa94(r30)
/* 80253010 0024FF70  38 6D 97 B4 */	addi r3, r13, lbl_805A8374@sda21
/* 80253014 0024FF74  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80253018 0024FF78  38 AD 97 B8 */	addi r5, r13, lbl_805A8378@sda21
/* 8025301C 0024FF7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80253020 0024FF80  C0 3E 0A 84 */	lfs f1, 0xa84(r30)
/* 80253024 0024FF84  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 80253028 0024FF88  C0 7E 0A A4 */	lfs f3, 0xaa4(r30)
/* 8025302C 0024FF8C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80253030 0024FF90  C0 42 B9 24 */	lfs f2, lbl_805AD644@sda21(r2)
/* 80253034 0024FF94  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80253038 0024FF98  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 8025303C 0024FF9C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80253040 0024FFA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80253044 0024FFA4  4B DB 92 71 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80253048 0024FFA8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8025304C 0024FFAC  38 00 00 02 */	li r0, 2
/* 80253050 0024FFB0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80253054 0024FFB4  90 1E 0C 84 */	stw r0, 0xc84(r30)
/* 80253058 0024FFB8  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8025305C 0024FFBC  48 0B F4 81 */	bl Float__9CRandom16Fv
/* 80253060 0024FFC0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80253064 0024FFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253068 0024FFC8  40 80 00 0C */	bge lbl_80253074
/* 8025306C 0024FFCC  38 00 00 03 */	li r0, 3
/* 80253070 0024FFD0  90 1E 0C 84 */	stw r0, 0xc84(r30)
lbl_80253074:
/* 80253074 0024FFD4  38 00 00 01 */	li r0, 1
/* 80253078 0024FFD8  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 8025307C 0024FFDC  48 00 01 70 */	b lbl_802531EC
lbl_80253080:
/* 80253080 0024FFE0  3C A0 80 3F */	lis r5, lbl_803E9240@ha
/* 80253084 0024FFE4  38 C1 00 58 */	addi r6, r1, 0x58
/* 80253088 0024FFE8  39 25 92 40 */	addi r9, r5, lbl_803E9240@l
/* 8025308C 0024FFEC  38 A0 00 03 */	li r5, 3
/* 80253090 0024FFF0  81 09 00 00 */	lwz r8, 0(r9)
/* 80253094 0024FFF4  80 E9 00 04 */	lwz r7, 4(r9)
/* 80253098 0024FFF8  80 09 00 08 */	lwz r0, 8(r9)
/* 8025309C 0024FFFC  91 01 00 58 */	stw r8, 0x58(r1)
/* 802530A0 00250000  90 E1 00 5C */	stw r7, 0x5c(r1)
/* 802530A4 00250004  90 01 00 60 */	stw r0, 0x60(r1)
/* 802530A8 00250008  80 FE 0C 84 */	lwz r7, 0xc84(r30)
/* 802530AC 0025000C  4B E2 97 09 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802530B0 00250010  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 802530B4 00250014  2C 00 00 03 */	cmpwi r0, 3
/* 802530B8 00250018  40 82 00 CC */	bne lbl_80253184
/* 802530BC 0025001C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 802530C0 00250020  38 61 00 0C */	addi r3, r1, 0xc
/* 802530C4 00250024  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 802530C8 00250028  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 802530CC 0025002C  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 802530D0 00250030  EC 23 08 28 */	fsubs f1, f3, f1
/* 802530D4 00250034  EC 42 00 28 */	fsubs f2, f2, f0
/* 802530D8 00250038  48 0C 11 29 */	bl __ct__9CVector2fFff
/* 802530DC 0025003C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 802530E0 00250040  38 61 00 4C */	addi r3, r1, 0x4c
/* 802530E4 00250044  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802530E8 00250048  38 81 00 40 */	addi r4, r1, 0x40
/* 802530EC 0025004C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802530F0 00250050  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802530F4 00250054  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 802530F8 00250058  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802530FC 0025005C  48 0C 17 55 */	bl AsNormalized__9CVector3fCFv
/* 80253100 00250060  C0 5E 0A BC */	lfs f2, 0xabc(r30)
/* 80253104 00250064  38 61 00 7C */	addi r3, r1, 0x7c
/* 80253108 00250068  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8025310C 0025006C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80253110 00250070  EC 82 00 72 */	fmuls f4, f2, f1
/* 80253114 00250074  C0 BE 0A A0 */	lfs f5, 0xaa0(r30)
/* 80253118 00250078  EC 02 00 32 */	fmuls f0, f2, f0
/* 8025311C 0025007C  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 80253120 00250080  C0 7E 0A B0 */	lfs f3, 0xab0(r30)
/* 80253124 00250084  C0 5E 0A C0 */	lfs f2, 0xac0(r30)
/* 80253128 00250088  EC A5 20 2A */	fadds f5, f5, f4
/* 8025312C 0025008C  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80253130 00250090  EC 63 10 2A */	fadds f3, f3, f2
/* 80253134 00250094  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80253138 00250098  EC 21 00 2A */	fadds f1, f1, f0
/* 8025313C 0025009C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80253140 002500A0  EC 85 20 28 */	fsubs f4, f5, f4
/* 80253144 002500A4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80253148 002500A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8025314C 002500AC  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 80253150 002500B0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80253154 002500B4  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80253158 002500B8  48 0C 17 61 */	bl Magnitude__9CVector3fCFv
/* 8025315C 002500BC  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80253160 002500C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253164 002500C4  40 81 00 0C */	ble lbl_80253170
/* 80253168 002500C8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8025316C 002500CC  48 0C 17 8D */	bl Normalize__9CVector3fFv
lbl_80253170:
/* 80253170 002500D0  FC 40 F8 90 */	fmr f2, f31
/* 80253174 002500D4  C0 22 B9 2C */	lfs f1, lbl_805AD64C@sda21(r2)
/* 80253178 002500D8  7F C3 F3 78 */	mr r3, r30
/* 8025317C 002500DC  38 81 00 7C */	addi r4, r1, 0x7c
/* 80253180 002500E0  48 00 2E 69 */	bl sub_80255fe8
lbl_80253184:
/* 80253184 002500E4  C0 9E 0A B0 */	lfs f4, 0xab0(r30)
/* 80253188 002500E8  38 61 00 34 */	addi r3, r1, 0x34
/* 8025318C 002500EC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80253190 002500F0  38 81 00 28 */	addi r4, r1, 0x28
/* 80253194 002500F4  C0 7E 0A A0 */	lfs f3, 0xaa0(r30)
/* 80253198 002500F8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8025319C 002500FC  EC 24 00 28 */	fsubs f1, f4, f0
/* 802531A0 00250100  C0 1E 0A 90 */	lfs f0, 0xa90(r30)
/* 802531A4 00250104  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 802531A8 00250108  EC 43 10 28 */	fsubs f2, f3, f2
/* 802531AC 0025010C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802531B0 00250110  EC 00 28 28 */	fsubs f0, f0, f5
/* 802531B4 00250114  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802531B8 00250118  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802531BC 0025011C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802531C0 00250120  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 802531C4 00250124  83 FE 04 50 */	lwz r31, 0x450(r30)
/* 802531C8 00250128  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 802531CC 0025012C  48 0C 16 85 */	bl AsNormalized__9CVector3fCFv
/* 802531D0 00250130  FC 20 F8 90 */	fmr f1, f31
/* 802531D4 00250134  7F E3 FB 78 */	mr r3, r31
/* 802531D8 00250138  38 81 00 34 */	addi r4, r1, 0x34
/* 802531DC 0025013C  4B EE 74 C9 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 802531E0 00250140  48 00 00 0C */	b lbl_802531EC
lbl_802531E4:
/* 802531E4 00250144  38 00 00 00 */	li r0, 0
/* 802531E8 00250148  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_802531EC:
/* 802531EC 0025014C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 802531F0 00250150  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802531F4 00250154  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 802531F8 00250158  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 802531FC 0025015C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80253200 00250160  7C 08 03 A6 */	mtlr r0
/* 80253204 00250164  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80253208 00250168  4E 80 00 20 */	blr

.global Hurled__7CRidleyFR13CStateManager9EStateMsgf
Hurled__7CRidleyFR13CStateManager9EStateMsgf:
/* 8025320C 0025016C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80253210 00250170  7C 08 02 A6 */	mflr r0
/* 80253214 00250174  2C 05 00 00 */	cmpwi r5, 0
/* 80253218 00250178  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025321C 0025017C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80253220 00250180  7C 7F 1B 78 */	mr r31, r3
/* 80253224 00250184  41 82 00 0C */	beq lbl_80253230
/* 80253228 00250188  41 80 00 9C */	blt lbl_802532C4
/* 8025322C 0025018C  48 00 00 98 */	b lbl_802532C4
lbl_80253230:
/* 80253230 00250190  48 00 44 21 */	bl sub_80257650
/* 80253234 00250194  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80253238 00250198  38 A0 00 04 */	li r5, 4
/* 8025323C 0025019C  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80253240 002501A0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80253244 002501A4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80253248 002501A8  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8025324C 002501AC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80253250 002501B0  38 03 AA 44 */	addi r0, r3, lbl_803DAA44@l
/* 80253254 002501B4  90 81 00 08 */	stw r4, 8(r1)
/* 80253258 002501B8  38 80 00 04 */	li r4, 4
/* 8025325C 002501BC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80253260 002501C0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80253264 002501C4  3B E3 00 04 */	addi r31, r3, 4
/* 80253268 002501C8  90 01 00 08 */	stw r0, 8(r1)
/* 8025326C 002501CC  7F E3 FB 78 */	mr r3, r31
/* 80253270 002501D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80253274 002501D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80253278 002501D8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8025327C 002501DC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80253280 002501E0  4B ED E1 B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80253284 002501E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80253288 002501E8  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8025328C 002501EC  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 80253290 002501F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80253294 002501F4  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80253298 002501F8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8025329C 002501FC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 802532A0 00250200  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802532A4 00250204  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 802532A8 00250208  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 802532AC 0025020C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 802532B0 00250210  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802532B4 00250214  90 BF 01 04 */	stw r5, 0x104(r31)
/* 802532B8 00250218  90 81 00 08 */	stw r4, 8(r1)
/* 802532BC 0025021C  90 7F 01 08 */	stw r3, 0x108(r31)
/* 802532C0 00250220  90 01 00 08 */	stw r0, 8(r1)
lbl_802532C4:
/* 802532C4 00250224  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802532C8 00250228  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802532CC 0025022C  7C 08 03 A6 */	mtlr r0
/* 802532D0 00250230  38 21 00 30 */	addi r1, r1, 0x30
/* 802532D4 00250234  4E 80 00 20 */	blr

.global Flinch__7CRidleyFR13CStateManager9EStateMsgf
Flinch__7CRidleyFR13CStateManager9EStateMsgf:
/* 802532D8 00250238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802532DC 0025023C  7C 08 02 A6 */	mflr r0
/* 802532E0 00250240  2C 05 00 01 */	cmpwi r5, 1
/* 802532E4 00250244  90 01 00 24 */	stw r0, 0x24(r1)
/* 802532E8 00250248  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802532EC 0025024C  7C 7F 1B 78 */	mr r31, r3
/* 802532F0 00250250  41 82 00 30 */	beq lbl_80253320
/* 802532F4 00250254  40 80 00 10 */	bge lbl_80253304
/* 802532F8 00250258  2C 05 00 00 */	cmpwi r5, 0
/* 802532FC 0025025C  40 80 00 14 */	bge lbl_80253310
/* 80253300 00250260  48 00 00 70 */	b lbl_80253370
lbl_80253304:
/* 80253304 00250264  2C 05 00 03 */	cmpwi r5, 3
/* 80253308 00250268  40 80 00 68 */	bge lbl_80253370
/* 8025330C 0025026C  48 00 00 48 */	b lbl_80253354
lbl_80253310:
/* 80253310 00250270  48 00 44 35 */	bl sub_80257744
/* 80253314 00250274  38 00 00 01 */	li r0, 1
/* 80253318 00250278  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8025331C 0025027C  48 00 00 54 */	b lbl_80253370
lbl_80253320:
/* 80253320 00250280  3C A0 80 3F */	lis r5, lbl_803E9234@ha
/* 80253324 00250284  38 C1 00 08 */	addi r6, r1, 8
/* 80253328 00250288  39 45 92 34 */	addi r10, r5, lbl_803E9234@l
/* 8025332C 0025028C  38 A0 00 06 */	li r5, 6
/* 80253330 00250290  81 2A 00 00 */	lwz r9, 0(r10)
/* 80253334 00250294  38 E0 00 03 */	li r7, 3
/* 80253338 00250298  81 0A 00 04 */	lwz r8, 4(r10)
/* 8025333C 0025029C  80 0A 00 08 */	lwz r0, 8(r10)
/* 80253340 002502A0  91 21 00 08 */	stw r9, 8(r1)
/* 80253344 002502A4  91 01 00 0C */	stw r8, 0xc(r1)
/* 80253348 002502A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025334C 002502AC  4B E2 94 69 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80253350 002502B0  48 00 00 20 */	b lbl_80253370
lbl_80253354:
/* 80253354 002502B4  38 00 00 00 */	li r0, 0
/* 80253358 002502B8  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8025335C 002502BC  48 00 42 F5 */	bl sub_80257650
/* 80253360 002502C0  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80253364 002502C4  38 60 00 00 */	li r3, 0
/* 80253368 002502C8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8025336C 002502CC  98 1F 0A 32 */	stb r0, 0xa32(r31)
lbl_80253370:
/* 80253370 002502D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80253374 002502D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80253378 002502D8  7C 08 03 A6 */	mtlr r0
/* 8025337C 002502DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80253380 002502E0  4E 80 00 20 */	blr

.global Jump__7CRidleyFR13CStateManager9EStateMsgf
Jump__7CRidleyFR13CStateManager9EStateMsgf:
/* 80253384 002502E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80253388 002502E8  7C 08 02 A6 */	mflr r0
/* 8025338C 002502EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80253390 002502F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80253394 002502F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80253398 002502F8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8025339C 002502FC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802533A0 00250300  FF E0 08 90 */	fmr f31, f1
/* 802533A4 00250304  2C 05 00 01 */	cmpwi r5, 1
/* 802533A8 00250308  7C 7F 1B 78 */	mr r31, r3
/* 802533AC 0025030C  7C 9E 23 78 */	mr r30, r4
/* 802533B0 00250310  41 82 00 F0 */	beq lbl_802534A0
/* 802533B4 00250314  40 80 00 10 */	bge lbl_802533C4
/* 802533B8 00250318  2C 05 00 00 */	cmpwi r5, 0
/* 802533BC 0025031C  40 80 00 14 */	bge lbl_802533D0
/* 802533C0 00250320  48 00 01 C8 */	b lbl_80253588
lbl_802533C4:
/* 802533C4 00250324  2C 05 00 03 */	cmpwi r5, 3
/* 802533C8 00250328  40 80 01 C0 */	bge lbl_80253588
/* 802533CC 0025032C  48 00 01 28 */	b lbl_802534F4
lbl_802533D0:
/* 802533D0 00250330  38 00 00 01 */	li r0, 1
/* 802533D4 00250334  38 61 00 14 */	addi r3, r1, 0x14
/* 802533D8 00250338  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 802533DC 0025033C  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 802533E0 00250340  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 802533E4 00250344  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 802533E8 00250348  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 802533EC 0025034C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 802533F0 00250350  EC 81 00 28 */	fsubs f4, f1, f0
/* 802533F4 00250354  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 802533F8 00250358  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802533FC 0025035C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80253400 00250360  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253404 00250364  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80253408 00250368  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8025340C 0025036C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80253410 00250370  48 0C 14 A9 */	bl Magnitude__9CVector3fCFv
/* 80253414 00250374  C0 1F 0A E4 */	lfs f0, 0xae4(r31)
/* 80253418 00250378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025341C 0025037C  40 81 00 10 */	ble lbl_8025342C
/* 80253420 00250380  38 00 00 05 */	li r0, 5
/* 80253424 00250384  90 1F 0C 88 */	stw r0, 0xc88(r31)
/* 80253428 00250388  48 00 00 0C */	b lbl_80253434
lbl_8025342C:
/* 8025342C 0025038C  38 00 00 04 */	li r0, 4
/* 80253430 00250390  90 1F 0C 88 */	stw r0, 0xc88(r31)
lbl_80253434:
/* 80253434 00250394  C0 3F 09 14 */	lfs f1, 0x914(r31)
/* 80253438 00250398  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025343C 0025039C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253440 002503A0  7C 60 00 26 */	mfcr r3
/* 80253444 002503A4  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80253448 002503A8  54 64 17 FE */	rlwinm r4, r3, 2, 0x1f, 0x1f
/* 8025344C 002503AC  7F E3 FB 78 */	mr r3, r31
/* 80253450 002503B0  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80253454 002503B4  7F C4 F3 78 */	mr r4, r30
/* 80253458 002503B8  98 1F 04 02 */	stb r0, 0x402(r31)
/* 8025345C 002503BC  D0 3F 05 04 */	stfs f1, 0x504(r31)
/* 80253460 002503C0  80 BF 08 F8 */	lwz r5, 0x8f8(r31)
/* 80253464 002503C4  80 1F 08 FC */	lwz r0, 0x8fc(r31)
/* 80253468 002503C8  90 BF 0C 8C */	stw r5, 0xc8c(r31)
/* 8025346C 002503CC  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80253470 002503D0  C0 1F 09 00 */	lfs f0, 0x900(r31)
/* 80253474 002503D4  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 80253478 002503D8  C0 1F 09 04 */	lfs f0, 0x904(r31)
/* 8025347C 002503DC  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 80253480 002503E0  C0 1F 09 08 */	lfs f0, 0x908(r31)
/* 80253484 002503E4  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 80253488 002503E8  C0 1F 09 0C */	lfs f0, 0x90c(r31)
/* 8025348C 002503EC  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 80253490 002503F0  88 1F 09 10 */	lbz r0, 0x910(r31)
/* 80253494 002503F4  98 1F 0C A4 */	stb r0, 0xca4(r31)
/* 80253498 002503F8  48 00 30 E9 */	bl sub_80256580
/* 8025349C 002503FC  48 00 00 EC */	b lbl_80253588
lbl_802534A0:
/* 802534A0 00250400  3C A0 80 3F */	lis r5, lbl_803E9228@ha
/* 802534A4 00250404  38 C1 00 08 */	addi r6, r1, 8
/* 802534A8 00250408  39 25 92 28 */	addi r9, r5, lbl_803E9228@l
/* 802534AC 0025040C  38 A0 00 07 */	li r5, 7
/* 802534B0 00250410  81 09 00 00 */	lwz r8, 0(r9)
/* 802534B4 00250414  80 E9 00 04 */	lwz r7, 4(r9)
/* 802534B8 00250418  80 09 00 08 */	lwz r0, 8(r9)
/* 802534BC 0025041C  91 01 00 08 */	stw r8, 8(r1)
/* 802534C0 00250420  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802534C4 00250424  90 01 00 10 */	stw r0, 0x10(r1)
/* 802534C8 00250428  80 FF 0C 88 */	lwz r7, 0xc88(r31)
/* 802534CC 0025042C  4B E2 92 E9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802534D0 00250430  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 802534D4 00250434  C0 02 B9 30 */	lfs f0, lbl_805AD650@sda21(r2)
/* 802534D8 00250438  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802534DC 0025043C  40 80 00 AC */	bge lbl_80253588
/* 802534E0 00250440  FC 20 F8 90 */	fmr f1, f31
/* 802534E4 00250444  7F E3 FB 78 */	mr r3, r31
/* 802534E8 00250448  7F C4 F3 78 */	mr r4, r30
/* 802534EC 0025044C  48 00 2A 65 */	bl sub_80255f50
/* 802534F0 00250450  48 00 00 98 */	b lbl_80253588
lbl_802534F4:
/* 802534F4 00250454  7F C6 F3 78 */	mr r6, r30
/* 802534F8 00250458  38 80 00 29 */	li r4, 0x29
/* 802534FC 0025045C  38 A0 00 28 */	li r5, 0x28
/* 80253500 00250460  4B E0 0D B5 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80253504 00250464  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80253508 00250468  38 60 00 00 */	li r3, 0
/* 8025350C 0025046C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80253510 00250470  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80253514 00250474  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80253518 00250478  7F E4 FB 78 */	mr r4, r31
/* 8025351C 0025047C  38 61 00 20 */	addi r3, r1, 0x20
/* 80253520 00250480  D0 1F 05 04 */	stfs f0, 0x504(r31)
/* 80253524 00250484  81 9F 00 00 */	lwz r12, 0(r31)
/* 80253528 00250488  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8025352C 0025048C  7D 89 03 A6 */	mtctr r12
/* 80253530 00250490  4E 80 04 21 */	bctrl
/* 80253534 00250494  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80253538 00250498  38 80 00 00 */	li r4, 0
/* 8025353C 0025049C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80253540 002504A0  7F E3 FB 78 */	mr r3, r31
/* 80253544 002504A4  90 BF 0C 8C */	stw r5, 0xc8c(r31)
/* 80253548 002504A8  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 8025354C 002504AC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80253550 002504B0  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 80253554 002504B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80253558 002504B8  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 8025355C 002504BC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80253560 002504C0  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 80253564 002504C4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80253568 002504C8  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 8025356C 002504CC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 80253570 002504D0  98 1F 0C A4 */	stb r0, 0xca4(r31)
/* 80253574 002504D4  90 9F 03 2C */	stw r4, 0x32c(r31)
/* 80253578 002504D8  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 8025357C 002504DC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80253580 002504E0  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80253584 002504E4  48 00 2F F9 */	bl nullsub_53
lbl_80253588:
/* 80253588 002504E8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8025358C 002504EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80253590 002504F0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80253594 002504F4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80253598 002504F8  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8025359C 002504FC  7C 08 03 A6 */	mtlr r0
/* 802535A0 00250500  38 21 00 60 */	addi r1, r1, 0x60
/* 802535A4 00250504  4E 80 00 20 */	blr

.global DoubleSnap__7CRidleyFR13CStateManager9EStateMsgf
DoubleSnap__7CRidleyFR13CStateManager9EStateMsgf:
/* 802535A8 00250508  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802535AC 0025050C  7C 08 02 A6 */	mflr r0
/* 802535B0 00250510  2C 05 00 01 */	cmpwi r5, 1
/* 802535B4 00250514  90 01 00 44 */	stw r0, 0x44(r1)
/* 802535B8 00250518  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802535BC 0025051C  7C 7F 1B 78 */	mr r31, r3
/* 802535C0 00250520  41 82 00 84 */	beq lbl_80253644
/* 802535C4 00250524  40 80 00 10 */	bge lbl_802535D4
/* 802535C8 00250528  2C 05 00 00 */	cmpwi r5, 0
/* 802535CC 0025052C  40 80 00 14 */	bge lbl_802535E0
/* 802535D0 00250530  48 00 01 14 */	b lbl_802536E4
lbl_802535D4:
/* 802535D4 00250534  2C 05 00 03 */	cmpwi r5, 3
/* 802535D8 00250538  40 80 01 0C */	bge lbl_802536E4
/* 802535DC 0025053C  48 00 00 9C */	b lbl_80253678
lbl_802535E0:
/* 802535E0 00250540  38 00 00 01 */	li r0, 1
/* 802535E4 00250544  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802535E8 00250548  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 802535EC 0025054C  C0 3F 09 34 */	lfs f1, 0x934(r31)
/* 802535F0 00250550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802535F4 00250554  7C 60 00 26 */	mfcr r3
/* 802535F8 00250558  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 802535FC 0025055C  50 60 2F 38 */	rlwimi r0, r3, 5, 0x1c, 0x1c
/* 80253600 00250560  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80253604 00250564  D0 3F 05 04 */	stfs f1, 0x504(r31)
/* 80253608 00250568  80 7F 09 18 */	lwz r3, 0x918(r31)
/* 8025360C 0025056C  80 1F 09 1C */	lwz r0, 0x91c(r31)
/* 80253610 00250570  90 7F 0C 8C */	stw r3, 0xc8c(r31)
/* 80253614 00250574  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80253618 00250578  C0 1F 09 20 */	lfs f0, 0x920(r31)
/* 8025361C 0025057C  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 80253620 00250580  C0 1F 09 24 */	lfs f0, 0x924(r31)
/* 80253624 00250584  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 80253628 00250588  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 8025362C 0025058C  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 80253630 00250590  C0 1F 09 2C */	lfs f0, 0x92c(r31)
/* 80253634 00250594  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 80253638 00250598  88 1F 09 30 */	lbz r0, 0x930(r31)
/* 8025363C 0025059C  98 1F 0C A4 */	stb r0, 0xca4(r31)
/* 80253640 002505A0  48 00 00 A4 */	b lbl_802536E4
lbl_80253644:
/* 80253644 002505A4  3C A0 80 3F */	lis r5, lbl_803E921C@ha
/* 80253648 002505A8  38 C1 00 08 */	addi r6, r1, 8
/* 8025364C 002505AC  39 45 92 1C */	addi r10, r5, lbl_803E921C@l
/* 80253650 002505B0  38 A0 00 07 */	li r5, 7
/* 80253654 002505B4  81 2A 00 00 */	lwz r9, 0(r10)
/* 80253658 002505B8  38 E0 00 02 */	li r7, 2
/* 8025365C 002505BC  81 0A 00 04 */	lwz r8, 4(r10)
/* 80253660 002505C0  80 0A 00 08 */	lwz r0, 8(r10)
/* 80253664 002505C4  91 21 00 08 */	stw r9, 8(r1)
/* 80253668 002505C8  91 01 00 0C */	stw r8, 0xc(r1)
/* 8025366C 002505CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80253670 002505D0  4B E2 91 45 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80253674 002505D4  48 00 00 70 */	b lbl_802536E4
lbl_80253678:
/* 80253678 002505D8  38 A0 00 00 */	li r5, 0
/* 8025367C 002505DC  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80253680 002505E0  90 BF 03 2C */	stw r5, 0x32c(r31)
/* 80253684 002505E4  7F E4 FB 78 */	mr r4, r31
/* 80253688 002505E8  38 61 00 14 */	addi r3, r1, 0x14
/* 8025368C 002505EC  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 80253690 002505F0  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80253694 002505F4  98 1F 04 02 */	stb r0, 0x402(r31)
/* 80253698 002505F8  D0 1F 05 04 */	stfs f0, 0x504(r31)
/* 8025369C 002505FC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802536A0 00250600  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 802536A4 00250604  7D 89 03 A6 */	mtctr r12
/* 802536A8 00250608  4E 80 04 21 */	bctrl
/* 802536AC 0025060C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 802536B0 00250610  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802536B4 00250614  90 7F 0C 8C */	stw r3, 0xc8c(r31)
/* 802536B8 00250618  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 802536BC 0025061C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802536C0 00250620  D0 1F 0C 94 */	stfs f0, 0xc94(r31)
/* 802536C4 00250624  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802536C8 00250628  D0 1F 0C 98 */	stfs f0, 0xc98(r31)
/* 802536CC 0025062C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802536D0 00250630  D0 1F 0C 9C */	stfs f0, 0xc9c(r31)
/* 802536D4 00250634  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802536D8 00250638  D0 1F 0C A0 */	stfs f0, 0xca0(r31)
/* 802536DC 0025063C  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 802536E0 00250640  98 1F 0C A4 */	stb r0, 0xca4(r31)
lbl_802536E4:
/* 802536E4 00250644  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802536E8 00250648  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802536EC 0025064C  7C 08 03 A6 */	mtlr r0
/* 802536F0 00250650  38 21 00 40 */	addi r1, r1, 0x40
/* 802536F4 00250654  4E 80 00 20 */	blr

.global ShouldDoubleSnap__7CRidleyFR13CStateManagerf
ShouldDoubleSnap__7CRidleyFR13CStateManagerf:
/* 802536F8 00250658  88 03 0A 33 */	lbz r0, 0xa33(r3)
/* 802536FC 0025065C  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 80253700 00250660  4E 80 00 20 */	blr

.global ShouldStrafe__7CRidleyFR13CStateManagerf
ShouldStrafe__7CRidleyFR13CStateManagerf:
/* 80253704 00250664  88 03 0A 33 */	lbz r0, 0xa33(r3)
/* 80253708 00250668  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 8025370C 0025066C  4E 80 00 20 */	blr

.global sub_80253710
sub_80253710:
/* 80253710 00250670  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80253714 00250674  7C 08 02 A6 */	mflr r0
/* 80253718 00250678  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025371C 0025067C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80253720 00250680  7C 7F 1B 78 */	mr r31, r3
/* 80253724 00250684  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80253728 00250688  7C 9E 23 78 */	mr r30, r4
/* 8025372C 0025068C  80 03 0B 0C */	lwz r0, 0xb0c(r3)
/* 80253730 00250690  90 03 0B 08 */	stw r0, 0xb08(r3)
/* 80253734 00250694  80 64 09 00 */	lwz r3, 0x900(r4)
/* 80253738 00250698  48 0B ED A5 */	bl Float__9CRandom16Fv
/* 8025373C 0025069C  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80253740 002506A0  3C 60 80 3D */	lis r3, lbl_803D4CCC@ha
/* 80253744 002506A4  C0 02 B9 34 */	lfs f0, lbl_805AD654@sda21(r2)
/* 80253748 002506A8  38 63 4C CC */	addi r3, r3, lbl_803D4CCC@l
/* 8025374C 002506AC  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80253750 002506B0  C0 42 B9 18 */	lfs f2, lbl_805AD638@sda21(r2)
/* 80253754 002506B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80253758 002506B8  38 80 00 00 */	li r4, 0
/* 8025375C 002506BC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80253760 002506C0  EC 42 00 2A */	fadds f2, f2, f0
/* 80253764 002506C4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80253768 002506C8  40 80 00 0C */	bge lbl_80253774
/* 8025376C 002506CC  90 9F 0B 0C */	stw r4, 0xb0c(r31)
/* 80253770 002506D0  48 00 00 90 */	b lbl_80253800
lbl_80253774:
/* 80253774 002506D4  7C 63 02 14 */	add r3, r3, r0
/* 80253778 002506D8  38 80 00 01 */	li r4, 1
/* 8025377C 002506DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80253780 002506E0  EC 42 00 2A */	fadds f2, f2, f0
/* 80253784 002506E4  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80253788 002506E8  40 80 00 0C */	bge lbl_80253794
/* 8025378C 002506EC  90 9F 0B 0C */	stw r4, 0xb0c(r31)
/* 80253790 002506F0  48 00 00 70 */	b lbl_80253800
lbl_80253794:
/* 80253794 002506F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80253798 002506F8  38 80 00 02 */	li r4, 2
/* 8025379C 002506FC  EC 42 00 2A */	fadds f2, f2, f0
/* 802537A0 00250700  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802537A4 00250704  40 80 00 0C */	bge lbl_802537B0
/* 802537A8 00250708  90 9F 0B 0C */	stw r4, 0xb0c(r31)
/* 802537AC 0025070C  48 00 00 54 */	b lbl_80253800
lbl_802537B0:
/* 802537B0 00250710  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802537B4 00250714  38 80 00 03 */	li r4, 3
/* 802537B8 00250718  EC 42 00 2A */	fadds f2, f2, f0
/* 802537BC 0025071C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802537C0 00250720  40 80 00 0C */	bge lbl_802537CC
/* 802537C4 00250724  90 9F 0B 0C */	stw r4, 0xb0c(r31)
/* 802537C8 00250728  48 00 00 38 */	b lbl_80253800
lbl_802537CC:
/* 802537CC 0025072C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802537D0 00250730  38 80 00 04 */	li r4, 4
/* 802537D4 00250734  EC 42 00 2A */	fadds f2, f2, f0
/* 802537D8 00250738  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802537DC 0025073C  40 80 00 0C */	bge lbl_802537E8
/* 802537E0 00250740  90 9F 0B 0C */	stw r4, 0xb0c(r31)
/* 802537E4 00250744  48 00 00 1C */	b lbl_80253800
lbl_802537E8:
/* 802537E8 00250748  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 802537EC 0025074C  38 80 00 05 */	li r4, 5
/* 802537F0 00250750  EC 42 00 2A */	fadds f2, f2, f0
/* 802537F4 00250754  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802537F8 00250758  40 80 00 08 */	bge lbl_80253800
/* 802537FC 0025075C  90 9F 0B 0C */	stw r4, 0xb0c(r31)
lbl_80253800:
/* 80253800 00250760  80 1F 0B 0C */	lwz r0, 0xb0c(r31)
/* 80253804 00250764  2C 00 00 05 */	cmpwi r0, 5
/* 80253808 00250768  40 82 00 1C */	bne lbl_80253824
/* 8025380C 0025076C  7F E3 FB 78 */	mr r3, r31
/* 80253810 00250770  48 00 01 51 */	bl sub_80253960
/* 80253814 00250774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80253818 00250778  40 82 00 0C */	bne lbl_80253824
/* 8025381C 0025077C  38 00 00 02 */	li r0, 2
/* 80253820 00250780  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_80253824:
/* 80253824 00250784  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80253828 00250788  38 61 00 14 */	addi r3, r1, 0x14
/* 8025382C 0025078C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80253830 00250790  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80253834 00250794  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80253838 00250798  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8025383C 0025079C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80253840 002507A0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80253844 002507A4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80253848 002507A8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025384C 002507AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253850 002507B0  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80253854 002507B4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80253858 002507B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8025385C 002507BC  48 0C 10 5D */	bl Magnitude__9CVector3fCFv
/* 80253860 002507C0  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80253864 002507C4  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80253868 002507C8  EC C0 08 24 */	fdivs f6, f0, f1
/* 8025386C 002507CC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80253870 002507D0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80253874 002507D4  EC A3 01 B2 */	fmuls f5, f3, f6
/* 80253878 002507D8  EC 82 01 B2 */	fmuls f4, f2, f6
/* 8025387C 002507DC  EC 60 01 B2 */	fmuls f3, f0, f6
/* 80253880 002507E0  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80253884 002507E4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80253888 002507E8  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8025388C 002507EC  C0 DF 00 48 */	lfs f6, 0x48(r31)
/* 80253890 002507F0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80253894 002507F4  EC 04 01 B2 */	fmuls f0, f4, f6
/* 80253898 002507F8  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 8025389C 002507FC  80 1F 0B 0C */	lwz r0, 0xb0c(r31)
/* 802538A0 00250800  D0 41 00 08 */	stfs f2, 8(r1)
/* 802538A4 00250804  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 802538A8 00250808  2C 00 00 02 */	cmpwi r0, 2
/* 802538AC 0025080C  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 802538B0 00250810  EC 43 01 3A */	fmadds f2, f3, f4, f0
/* 802538B4 00250814  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 802538B8 00250818  40 82 00 18 */	bne lbl_802538D0
/* 802538BC 0025081C  C0 02 B9 38 */	lfs f0, lbl_805AD658@sda21(r2)
/* 802538C0 00250820  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802538C4 00250824  40 80 00 0C */	bge lbl_802538D0
/* 802538C8 00250828  38 00 00 00 */	li r0, 0
/* 802538CC 0025082C  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_802538D0:
/* 802538D0 00250830  80 1F 0B 0C */	lwz r0, 0xb0c(r31)
/* 802538D4 00250834  2C 00 00 05 */	cmpwi r0, 5
/* 802538D8 00250838  40 82 00 18 */	bne lbl_802538F0
/* 802538DC 0025083C  C0 02 B9 1C */	lfs f0, lbl_805AD63C@sda21(r2)
/* 802538E0 00250840  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802538E4 00250844  40 80 00 0C */	bge lbl_802538F0
/* 802538E8 00250848  38 00 00 00 */	li r0, 0
/* 802538EC 0025084C  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_802538F0:
/* 802538F0 00250850  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802538F4 00250854  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802538F8 00250858  40 80 00 24 */	bge lbl_8025391C
/* 802538FC 0025085C  C0 1F 03 00 */	lfs f0, 0x300(r31)
/* 80253900 00250860  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253904 00250864  40 80 00 18 */	bge lbl_8025391C
/* 80253908 00250868  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 8025390C 0025086C  2C 00 00 03 */	cmpwi r0, 3
/* 80253910 00250870  41 82 00 0C */	beq lbl_8025391C
/* 80253914 00250874  38 00 00 03 */	li r0, 3
/* 80253918 00250878  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_8025391C:
/* 8025391C 0025087C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80253920 00250880  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80253924 00250884  40 81 00 24 */	ble lbl_80253948
/* 80253928 00250888  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 8025392C 0025088C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253930 00250890  40 80 00 18 */	bge lbl_80253948
/* 80253934 00250894  80 1F 0B 08 */	lwz r0, 0xb08(r31)
/* 80253938 00250898  2C 00 00 04 */	cmpwi r0, 4
/* 8025393C 0025089C  41 82 00 0C */	beq lbl_80253948
/* 80253940 002508A0  38 00 00 04 */	li r0, 4
/* 80253944 002508A4  90 1F 0B 0C */	stw r0, 0xb0c(r31)
lbl_80253948:
/* 80253948 002508A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8025394C 002508AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80253950 002508B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80253954 002508B4  7C 08 03 A6 */	mtlr r0
/* 80253958 002508B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8025395C 002508BC  4E 80 00 20 */	blr

.global sub_80253960
sub_80253960:
/* 80253960 002508C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80253964 002508C4  7C 08 02 A6 */	mflr r0
/* 80253968 002508C8  C0 22 B9 38 */	lfs f1, lbl_805AD658@sda21(r2)
/* 8025396C 002508CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80253970 002508D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80253974 002508D4  7C 7F 1B 78 */	mr r31, r3
/* 80253978 002508D8  C0 03 0A E4 */	lfs f0, 0xae4(r3)
/* 8025397C 002508DC  38 61 00 08 */	addi r3, r1, 8
/* 80253980 002508E0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80253984 002508E4  EC C1 00 32 */	fmuls f6, f1, f0
/* 80253988 002508E8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8025398C 002508EC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80253990 002508F0  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 80253994 002508F4  EC 66 00 B2 */	fmuls f3, f6, f2
/* 80253998 002508F8  C0 BF 00 60 */	lfs f5, 0x60(r31)
/* 8025399C 002508FC  EC 86 00 72 */	fmuls f4, f6, f1
/* 802539A0 00250900  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 802539A4 00250904  EC 26 00 32 */	fmuls f1, f6, f0
/* 802539A8 00250908  C0 DF 0A A0 */	lfs f6, 0xaa0(r31)
/* 802539AC 0025090C  EC E7 18 2A */	fadds f7, f7, f3
/* 802539B0 00250910  C0 7F 0A B0 */	lfs f3, 0xab0(r31)
/* 802539B4 00250914  EC 85 20 2A */	fadds f4, f5, f4
/* 802539B8 00250918  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 802539BC 0025091C  EC 22 08 2A */	fadds f1, f2, f1
/* 802539C0 00250920  EC A7 30 28 */	fsubs f5, f7, f6
/* 802539C4 00250924  EC 44 18 28 */	fsubs f2, f4, f3
/* 802539C8 00250928  EC 01 00 28 */	fsubs f0, f1, f0
/* 802539CC 0025092C  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802539D0 00250930  D0 01 00 08 */	stfs f0, 8(r1)
/* 802539D4 00250934  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802539D8 00250938  48 0C 0E E1 */	bl Magnitude__9CVector3fCFv
/* 802539DC 0025093C  C0 5F 0A B4 */	lfs f2, 0xab4(r31)
/* 802539E0 00250940  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 802539E4 00250944  C0 62 B9 38 */	lfs f3, lbl_805AD658@sda21(r2)
/* 802539E8 00250948  EC 02 00 2A */	fadds f0, f2, f0
/* 802539EC 0025094C  EC 03 00 32 */	fmuls f0, f3, f0
/* 802539F0 00250950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802539F4 00250954  7C 00 00 26 */	mfcr r0
/* 802539F8 00250958  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802539FC 0025095C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80253A00 00250960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80253A04 00250964  7C 08 03 A6 */	mtlr r0
/* 80253A08 00250968  38 21 00 20 */	addi r1, r1, 0x20
/* 80253A0C 0025096C  4E 80 00 20 */	blr

.global FadeOut__7CRidleyFR13CStateManager9EStateMsgf
FadeOut__7CRidleyFR13CStateManager9EStateMsgf:
/* 80253A10 00250970  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80253A14 00250974  7C 08 02 A6 */	mflr r0
/* 80253A18 00250978  2C 05 00 01 */	cmpwi r5, 1
/* 80253A1C 0025097C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80253A20 00250980  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80253A24 00250984  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80253A28 00250988  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80253A2C 0025098C  7C 9D 23 78 */	mr r29, r4
/* 80253A30 00250990  93 81 00 20 */	stw r28, 0x20(r1)
/* 80253A34 00250994  7C 7C 1B 78 */	mr r28, r3
/* 80253A38 00250998  41 82 00 B0 */	beq lbl_80253AE8
/* 80253A3C 0025099C  40 80 00 10 */	bge lbl_80253A4C
/* 80253A40 002509A0  2C 05 00 00 */	cmpwi r5, 0
/* 80253A44 002509A4  40 80 00 14 */	bge lbl_80253A58
/* 80253A48 002509A8  48 00 00 EC */	b lbl_80253B34
lbl_80253A4C:
/* 80253A4C 002509AC  2C 05 00 03 */	cmpwi r5, 3
/* 80253A50 002509B0  40 80 00 E4 */	bge lbl_80253B34
/* 80253A54 002509B4  48 00 00 C8 */	b lbl_80253B1C
lbl_80253A58:
/* 80253A58 002509B8  38 00 00 01 */	li r0, 1
/* 80253A5C 002509BC  3C 60 80 47 */	lis r3, lbl_8046D4F8@ha
/* 80253A60 002509C0  90 1C 03 2C */	stw r0, 0x32c(r28)
/* 80253A64 002509C4  3B E3 D4 F8 */	addi r31, r3, lbl_8046D4F8@l
/* 80253A68 002509C8  3B C0 00 00 */	li r30, 0
lbl_80253A6C:
/* 80253A6C 002509CC  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80253A70 002509D0  7F E4 FB 78 */	mr r4, r31
/* 80253A74 002509D4  7F A6 EB 78 */	mr r6, r29
/* 80253A78 002509D8  38 A0 00 00 */	li r5, 0
/* 80253A7C 002509DC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80253A80 002509E0  4B DD 73 41 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 80253A84 002509E4  3B DE 00 01 */	addi r30, r30, 1
/* 80253A88 002509E8  3B FF 00 10 */	addi r31, r31, 0x10
/* 80253A8C 002509EC  28 1E 00 18 */	cmplwi r30, 0x18
/* 80253A90 002509F0  41 80 FF DC */	blt lbl_80253A6C
/* 80253A94 002509F4  88 7C 0A 34 */	lbz r3, 0xa34(r28)
/* 80253A98 002509F8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80253A9C 002509FC  40 82 00 10 */	bne lbl_80253AAC
/* 80253AA0 00250A00  38 00 00 01 */	li r0, 1
/* 80253AA4 00250A04  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80253AA8 00250A08  98 7C 0A 34 */	stb r3, 0xa34(r28)
lbl_80253AAC:
/* 80253AAC 00250A0C  80 7C 09 64 */	lwz r3, 0x964(r28)
/* 80253AB0 00250A10  80 1C 09 68 */	lwz r0, 0x968(r28)
/* 80253AB4 00250A14  90 7C 0B 74 */	stw r3, 0xb74(r28)
/* 80253AB8 00250A18  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 80253ABC 00250A1C  C0 1C 09 6C */	lfs f0, 0x96c(r28)
/* 80253AC0 00250A20  D0 1C 0B 7C */	stfs f0, 0xb7c(r28)
/* 80253AC4 00250A24  C0 1C 09 70 */	lfs f0, 0x970(r28)
/* 80253AC8 00250A28  D0 1C 0B 80 */	stfs f0, 0xb80(r28)
/* 80253ACC 00250A2C  C0 1C 09 74 */	lfs f0, 0x974(r28)
/* 80253AD0 00250A30  D0 1C 0B 84 */	stfs f0, 0xb84(r28)
/* 80253AD4 00250A34  C0 1C 09 78 */	lfs f0, 0x978(r28)
/* 80253AD8 00250A38  D0 1C 0B 88 */	stfs f0, 0xb88(r28)
/* 80253ADC 00250A3C  88 1C 09 7C */	lbz r0, 0x97c(r28)
/* 80253AE0 00250A40  98 1C 0B 8C */	stb r0, 0xb8c(r28)
/* 80253AE4 00250A44  48 00 00 50 */	b lbl_80253B34
lbl_80253AE8:
/* 80253AE8 00250A48  3C A0 80 3F */	lis r5, lbl_803E9210@ha
/* 80253AEC 00250A4C  38 C1 00 08 */	addi r6, r1, 8
/* 80253AF0 00250A50  39 45 92 10 */	addi r10, r5, lbl_803E9210@l
/* 80253AF4 00250A54  38 A0 00 06 */	li r5, 6
/* 80253AF8 00250A58  81 2A 00 00 */	lwz r9, 0(r10)
/* 80253AFC 00250A5C  38 E0 00 05 */	li r7, 5
/* 80253B00 00250A60  81 0A 00 04 */	lwz r8, 4(r10)
/* 80253B04 00250A64  80 0A 00 08 */	lwz r0, 8(r10)
/* 80253B08 00250A68  91 21 00 08 */	stw r9, 8(r1)
/* 80253B0C 00250A6C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80253B10 00250A70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80253B14 00250A74  4B E2 8C A1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80253B18 00250A78  48 00 00 1C */	b lbl_80253B34
lbl_80253B1C:
/* 80253B1C 00250A7C  38 00 00 00 */	li r0, 0
/* 80253B20 00250A80  C0 22 B9 3C */	lfs f1, lbl_805AD65C@sda21(r2)
/* 80253B24 00250A84  90 1C 03 2C */	stw r0, 0x32c(r28)
/* 80253B28 00250A88  C0 1C 05 A4 */	lfs f0, 0x5a4(r28)
/* 80253B2C 00250A8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80253B30 00250A90  D0 1C 0C BC */	stfs f0, 0xcbc(r28)
lbl_80253B34:
/* 80253B34 00250A94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80253B38 00250A98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80253B3C 00250A9C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80253B40 00250AA0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80253B44 00250AA4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80253B48 00250AA8  7C 08 03 A6 */	mtlr r0
/* 80253B4C 00250AAC  38 21 00 30 */	addi r1, r1, 0x30
/* 80253B50 00250AB0  4E 80 00 20 */	blr

.global ProjectileAttack__7CRidleyFR13CStateManager9EStateMsgf
ProjectileAttack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80253B54 00250AB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80253B58 00250AB8  7C 08 02 A6 */	mflr r0
/* 80253B5C 00250ABC  2C 05 00 01 */	cmpwi r5, 1
/* 80253B60 00250AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80253B64 00250AC4  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80253B68 00250AC8  FF E0 08 90 */	fmr f31, f1
/* 80253B6C 00250ACC  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80253B70 00250AD0  7C 9F 23 78 */	mr r31, r4
/* 80253B74 00250AD4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80253B78 00250AD8  7C 7E 1B 78 */	mr r30, r3
/* 80253B7C 00250ADC  41 82 00 44 */	beq lbl_80253BC0
/* 80253B80 00250AE0  40 80 00 10 */	bge lbl_80253B90
/* 80253B84 00250AE4  2C 05 00 00 */	cmpwi r5, 0
/* 80253B88 00250AE8  40 80 00 14 */	bge lbl_80253B9C
/* 80253B8C 00250AEC  48 00 00 98 */	b lbl_80253C24
lbl_80253B90:
/* 80253B90 00250AF0  2C 05 00 03 */	cmpwi r5, 3
/* 80253B94 00250AF4  40 80 00 90 */	bge lbl_80253C24
/* 80253B98 00250AF8  48 00 00 6C */	b lbl_80253C04
lbl_80253B9C:
/* 80253B9C 00250AFC  38 80 00 01 */	li r4, 1
/* 80253BA0 00250B00  90 9E 03 2C */	stw r4, 0x32c(r30)
/* 80253BA4 00250B04  80 7E 0C C4 */	lwz r3, 0xcc4(r30)
/* 80253BA8 00250B08  38 03 FF FF */	addi r0, r3, -1
/* 80253BAC 00250B0C  90 1E 0C C4 */	stw r0, 0xcc4(r30)
/* 80253BB0 00250B10  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80253BB4 00250B14  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80253BB8 00250B18  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 80253BBC 00250B1C  48 00 00 68 */	b lbl_80253C24
lbl_80253BC0:
/* 80253BC0 00250B20  3C A0 80 3F */	lis r5, lbl_803E9204@ha
/* 80253BC4 00250B24  38 C1 00 08 */	addi r6, r1, 8
/* 80253BC8 00250B28  39 45 92 04 */	addi r10, r5, lbl_803E9204@l
/* 80253BCC 00250B2C  38 A0 00 12 */	li r5, 0x12
/* 80253BD0 00250B30  81 2A 00 00 */	lwz r9, 0(r10)
/* 80253BD4 00250B34  38 E0 00 02 */	li r7, 2
/* 80253BD8 00250B38  81 0A 00 04 */	lwz r8, 4(r10)
/* 80253BDC 00250B3C  80 0A 00 08 */	lwz r0, 8(r10)
/* 80253BE0 00250B40  91 21 00 08 */	stw r9, 8(r1)
/* 80253BE4 00250B44  91 01 00 0C */	stw r8, 0xc(r1)
/* 80253BE8 00250B48  90 01 00 10 */	stw r0, 0x10(r1)
/* 80253BEC 00250B4C  4B E2 8B C9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80253BF0 00250B50  FC 20 F8 90 */	fmr f1, f31
/* 80253BF4 00250B54  7F C3 F3 78 */	mr r3, r30
/* 80253BF8 00250B58  7F E4 FB 78 */	mr r4, r31
/* 80253BFC 00250B5C  48 00 23 55 */	bl sub_80255f50
/* 80253C00 00250B60  48 00 00 24 */	b lbl_80253C24
lbl_80253C04:
/* 80253C04 00250B64  38 60 00 00 */	li r3, 0
/* 80253C08 00250B68  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 80253C0C 00250B6C  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80253C10 00250B70  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80253C14 00250B74  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 80253C18 00250B78  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80253C1C 00250B7C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80253C20 00250B80  98 1E 0A 33 */	stb r0, 0xa33(r30)
lbl_80253C24:
/* 80253C24 00250B84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80253C28 00250B88  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80253C2C 00250B8C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80253C30 00250B90  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80253C34 00250B94  7C 08 03 A6 */	mtlr r0
/* 80253C38 00250B98  38 21 00 30 */	addi r1, r1, 0x30
/* 80253C3C 00250B9C  4E 80 00 20 */	blr

.global Crouch__7CRidleyFR13CStateManager9EStateMsgf
Crouch__7CRidleyFR13CStateManager9EStateMsgf:
/* 80253C40 00250BA0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80253C44 00250BA4  7C 08 02 A6 */	mflr r0
/* 80253C48 00250BA8  2C 05 00 01 */	cmpwi r5, 1
/* 80253C4C 00250BAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80253C50 00250BB0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80253C54 00250BB4  7C 9F 23 78 */	mr r31, r4
/* 80253C58 00250BB8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80253C5C 00250BBC  7C 7E 1B 78 */	mr r30, r3
/* 80253C60 00250BC0  41 82 00 6C */	beq lbl_80253CCC
/* 80253C64 00250BC4  40 80 01 40 */	bge lbl_80253DA4
/* 80253C68 00250BC8  2C 05 00 00 */	cmpwi r5, 0
/* 80253C6C 00250BCC  40 80 00 0C */	bge lbl_80253C78
/* 80253C70 00250BD0  48 00 01 34 */	b lbl_80253DA4
/* 80253C74 00250BD4  48 00 01 30 */	b lbl_80253DA4
lbl_80253C78:
/* 80253C78 00250BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80253C7C 00250BDC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 80253C80 00250BE0  7D 89 03 A6 */	mtctr r12
/* 80253C84 00250BE4  4E 80 04 21 */	bctrl
/* 80253C88 00250BE8  3C 60 80 5A */	lis r3, lbl_805A6700@ha
/* 80253C8C 00250BEC  C4 03 67 00 */	lfsu f0, lbl_805A6700@l(r3)
/* 80253C90 00250BF0  C0 63 00 04 */	lfs f3, 4(r3)
/* 80253C94 00250BF4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80253C98 00250BF8  C0 43 00 08 */	lfs f2, 8(r3)
/* 80253C9C 00250BFC  EC 61 00 F2 */	fmuls f3, f1, f3
/* 80253CA0 00250C00  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80253CA4 00250C04  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80253CA8 00250C08  D0 7E 01 54 */	stfs f3, 0x154(r30)
/* 80253CAC 00250C0C  D0 3E 01 58 */	stfs f1, 0x158(r30)
/* 80253CB0 00250C10  80 1E 0C 64 */	lwz r0, 0xc64(r30)
/* 80253CB4 00250C14  2C 00 00 03 */	cmpwi r0, 3
/* 80253CB8 00250C18  40 82 00 EC */	bne lbl_80253DA4
/* 80253CBC 00250C1C  7F C3 F3 78 */	mr r3, r30
/* 80253CC0 00250C20  7F E4 FB 78 */	mr r4, r31
/* 80253CC4 00250C24  4B FF FA 4D */	bl sub_80253710
/* 80253CC8 00250C28  48 00 00 DC */	b lbl_80253DA4
lbl_80253CCC:
/* 80253CCC 00250C2C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80253CD0 00250C30  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80253CD4 00250C34  2C 00 00 08 */	cmpwi r0, 8
/* 80253CD8 00250C38  41 82 00 CC */	beq lbl_80253DA4
/* 80253CDC 00250C3C  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80253CE0 00250C40  38 61 00 2C */	addi r3, r1, 0x2c
/* 80253CE4 00250C44  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80253CE8 00250C48  38 81 00 20 */	addi r4, r1, 0x20
/* 80253CEC 00250C4C  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80253CF0 00250C50  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80253CF4 00250C54  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80253CF8 00250C58  EC 25 00 28 */	fsubs f1, f5, f0
/* 80253CFC 00250C5C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80253D00 00250C60  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80253D04 00250C64  EC 44 10 28 */	fsubs f2, f4, f2
/* 80253D08 00250C68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80253D0C 00250C6C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80253D10 00250C70  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80253D14 00250C74  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 80253D18 00250C78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80253D1C 00250C7C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80253D20 00250C80  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80253D24 00250C84  48 0C 0B 2D */	bl AsNormalized__9CVector3fCFv
/* 80253D28 00250C88  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80253D2C 00250C8C  C0 A1 00 30 */	lfs f5, 0x30(r1)
/* 80253D30 00250C90  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80253D34 00250C94  EC 05 00 F2 */	fmuls f0, f5, f3
/* 80253D38 00250C98  C0 E1 00 2C */	lfs f7, 0x2c(r1)
/* 80253D3C 00250C9C  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80253D40 00250CA0  C0 C1 00 34 */	lfs f6, 0x34(r1)
/* 80253D44 00250CA4  EC 27 00 BA */	fmadds f1, f7, f2, f0
/* 80253D48 00250CA8  C0 02 B9 40 */	lfs f0, lbl_805AD660@sda21(r2)
/* 80253D4C 00250CAC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80253D50 00250CB0  EC 26 09 3A */	fmadds f1, f6, f4, f1
/* 80253D54 00250CB4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80253D58 00250CB8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80253D5C 00250CBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253D60 00250CC0  40 80 00 44 */	bge lbl_80253DA4
/* 80253D64 00250CC4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80253D68 00250CC8  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 80253D6C 00250CCC  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80253D70 00250CD0  38 81 00 38 */	addi r4, r1, 0x38
/* 80253D74 00250CD4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80253D78 00250CD8  C0 23 00 08 */	lfs f1, 8(r3)
/* 80253D7C 00250CDC  D0 E1 00 44 */	stfs f7, 0x44(r1)
/* 80253D80 00250CE0  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80253D84 00250CE4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80253D88 00250CE8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80253D8C 00250CEC  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80253D90 00250CF0  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 80253D94 00250CF4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80253D98 00250CF8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80253D9C 00250CFC  38 63 00 04 */	addi r3, r3, 4
/* 80253DA0 00250D00  4B ED D9 79 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80253DA4:
/* 80253DA4 00250D04  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80253DA8 00250D08  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80253DAC 00250D0C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80253DB0 00250D10  7C 08 03 A6 */	mtlr r0
/* 80253DB4 00250D14  38 21 00 60 */	addi r1, r1, 0x60
/* 80253DB8 00250D18  4E 80 00 20 */	blr

.global JumpBack__7CRidleyFR13CStateManager9EStateMsgf
JumpBack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80253DBC 00250D1C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80253DC0 00250D20  7C 08 02 A6 */	mflr r0
/* 80253DC4 00250D24  90 01 01 34 */	stw r0, 0x134(r1)
/* 80253DC8 00250D28  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80253DCC 00250D2C  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 80253DD0 00250D30  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 80253DD4 00250D34  F3 C1 01 18 */	psq_st f30, 280(r1), 0, qr0
/* 80253DD8 00250D38  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 80253DDC 00250D3C  F3 A1 01 08 */	psq_st f29, 264(r1), 0, qr0
/* 80253DE0 00250D40  BF 61 00 EC */	stmw r27, 0xec(r1)
/* 80253DE4 00250D44  FF A0 08 90 */	fmr f29, f1
/* 80253DE8 00250D48  2C 05 00 01 */	cmpwi r5, 1
/* 80253DEC 00250D4C  7C 7F 1B 78 */	mr r31, r3
/* 80253DF0 00250D50  7C 9B 23 78 */	mr r27, r4
/* 80253DF4 00250D54  41 82 02 18 */	beq lbl_8025400C
/* 80253DF8 00250D58  40 80 00 10 */	bge lbl_80253E08
/* 80253DFC 00250D5C  2C 05 00 00 */	cmpwi r5, 0
/* 80253E00 00250D60  40 80 00 14 */	bge lbl_80253E14
/* 80253E04 00250D64  48 00 03 94 */	b lbl_80254198
lbl_80253E08:
/* 80253E08 00250D68  2C 05 00 03 */	cmpwi r5, 3
/* 80253E0C 00250D6C  40 80 03 8C */	bge lbl_80254198
/* 80253E10 00250D70  48 00 03 80 */	b lbl_80254190
lbl_80253E14:
/* 80253E14 00250D74  38 C0 00 01 */	li r6, 1
/* 80253E18 00250D78  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80253E1C 00250D7C  90 DF 03 2C */	stw r6, 0x32c(r31)
/* 80253E20 00250D80  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 80253E24 00250D84  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80253E28 00250D88  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80253E2C 00250D8C  C0 25 00 00 */	lfs f1, 0(r5)
/* 80253E30 00250D90  D0 3F 01 50 */	stfs f1, 0x150(r31)
/* 80253E34 00250D94  C0 25 00 04 */	lfs f1, 4(r5)
/* 80253E38 00250D98  D0 3F 01 54 */	stfs f1, 0x154(r31)
/* 80253E3C 00250D9C  C0 25 00 08 */	lfs f1, 8(r5)
/* 80253E40 00250DA0  D0 3F 01 58 */	stfs f1, 0x158(r31)
/* 80253E44 00250DA4  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80253E48 00250DA8  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80253E4C 00250DAC  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80253E50 00250DB0  C0 BF 0A BC */	lfs f5, 0xabc(r31)
/* 80253E54 00250DB4  C0 7F 0A 98 */	lfs f3, 0xa98(r31)
/* 80253E58 00250DB8  C0 5F 0A A8 */	lfs f2, 0xaa8(r31)
/* 80253E5C 00250DBC  C0 3F 0A 88 */	lfs f1, 0xa88(r31)
/* 80253E60 00250DC0  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80253E64 00250DC4  C1 3F 0A A0 */	lfs f9, 0xaa0(r31)
/* 80253E68 00250DC8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80253E6C 00250DCC  C1 5F 0A B0 */	lfs f10, 0xab0(r31)
/* 80253E70 00250DD0  EC 25 00 72 */	fmuls f1, f5, f1
/* 80253E74 00250DD4  C0 5F 0A 90 */	lfs f2, 0xa90(r31)
/* 80253E78 00250DD8  EC C9 20 2A */	fadds f6, f9, f4
/* 80253E7C 00250DDC  C0 FF 0A C0 */	lfs f7, 0xac0(r31)
/* 80253E80 00250DE0  EC AA 18 2A */	fadds f5, f10, f3
/* 80253E84 00250DE4  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80253E88 00250DE8  EC 22 08 2A */	fadds f1, f2, f1
/* 80253E8C 00250DEC  ED 06 00 2A */	fadds f8, f6, f0
/* 80253E90 00250DF0  EC E5 38 2A */	fadds f7, f5, f7
/* 80253E94 00250DF4  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 80253E98 00250DF8  EC 01 00 2A */	fadds f0, f1, f0
/* 80253E9C 00250DFC  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 80253EA0 00250E00  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 80253EA4 00250E04  D1 21 00 A0 */	stfs f9, 0xa0(r1)
/* 80253EA8 00250E08  D1 41 00 A4 */	stfs f10, 0xa4(r1)
/* 80253EAC 00250E0C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80253EB0 00250E10  D0 C1 00 AC */	stfs f6, 0xac(r1)
/* 80253EB4 00250E14  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 80253EB8 00250E18  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80253EBC 00250E1C  D1 01 00 B8 */	stfs f8, 0xb8(r1)
/* 80253EC0 00250E20  D0 E1 00 BC */	stfs f7, 0xbc(r1)
/* 80253EC4 00250E24  4B E2 8C 99 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80253EC8 00250E28  7F E3 FB 78 */	mr r3, r31
/* 80253ECC 00250E2C  7F 65 DB 78 */	mr r5, r27
/* 80253ED0 00250E30  38 80 00 13 */	li r4, 0x13
/* 80253ED4 00250E34  4B E0 00 AD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80253ED8 00250E38  7F E3 FB 78 */	mr r3, r31
/* 80253EDC 00250E3C  4B DF F9 E1 */	bl GetMaterialFilter__6CActorCFv
/* 80253EE0 00250E40  80 AD 97 B0 */	lwz r5, lbl_805A8370@sda21(r13)
/* 80253EE4 00250E44  38 80 00 01 */	li r4, 1
/* 80253EE8 00250E48  83 C3 00 00 */	lwz r30, 0(r3)
/* 80253EEC 00250E4C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80253EF0 00250E50  38 60 00 00 */	li r3, 0
/* 80253EF4 00250E54  48 13 60 01 */	bl __shl2i
/* 80253EF8 00250E58  7C 7C 1B 78 */	mr r28, r3
/* 80253EFC 00250E5C  7C 9B 23 78 */	mr r27, r4
/* 80253F00 00250E60  7F E3 FB 78 */	mr r3, r31
/* 80253F04 00250E64  4B DF F9 B9 */	bl GetMaterialFilter__6CActorCFv
/* 80253F08 00250E68  80 A3 00 08 */	lwz r5, 8(r3)
/* 80253F0C 00250E6C  3C 80 FF F8 */	lis r4, 0xFFF7FFFF@ha
/* 80253F10 00250E70  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80253F14 00250E74  38 64 FF FF */	addi r3, r4, 0xFFF7FFFF@l
/* 80253F18 00250E78  38 00 FF FF */	li r0, -1
/* 80253F1C 00250E7C  7C A7 E3 78 */	or r7, r5, r28
/* 80253F20 00250E80  7C C6 DB 78 */	or r6, r6, r27
/* 80253F24 00250E84  7F A3 18 38 */	and r3, r29, r3
/* 80253F28 00250E88  7F C5 00 38 */	and r5, r30, r0
/* 80253F2C 00250E8C  38 00 00 03 */	li r0, 3
/* 80253F30 00250E90  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 80253F34 00250E94  7F E3 FB 78 */	mr r3, r31
/* 80253F38 00250E98  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80253F3C 00250E9C  90 A1 00 D0 */	stw r5, 0xd0(r1)
/* 80253F40 00250EA0  90 C1 00 DC */	stw r6, 0xdc(r1)
/* 80253F44 00250EA4  90 E1 00 D8 */	stw r7, 0xd8(r1)
/* 80253F48 00250EA8  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80253F4C 00250EAC  4B DF F9 55 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80253F50 00250EB0  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80253F54 00250EB4  38 60 00 00 */	li r3, 0
/* 80253F58 00250EB8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80253F5C 00250EBC  38 61 00 3C */	addi r3, r1, 0x3c
/* 80253F60 00250EC0  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80253F64 00250EC4  C0 7F 02 E0 */	lfs f3, 0x2e0(r31)
/* 80253F68 00250EC8  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80253F6C 00250ECC  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80253F70 00250ED0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80253F74 00250ED4  EF A3 10 28 */	fsubs f29, f3, f2
/* 80253F78 00250ED8  C0 5F 02 E8 */	lfs f2, 0x2e8(r31)
/* 80253F7C 00250EDC  EF C1 00 28 */	fsubs f30, f1, f0
/* 80253F80 00250EE0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80253F84 00250EE4  FC 20 E8 90 */	fmr f1, f29
/* 80253F88 00250EE8  EF E2 00 28 */	fsubs f31, f2, f0
/* 80253F8C 00250EEC  FC 40 F0 90 */	fmr f2, f30
/* 80253F90 00250EF0  48 0C 02 71 */	bl __ct__9CVector2fFff
/* 80253F94 00250EF4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80253F98 00250EF8  38 61 00 44 */	addi r3, r1, 0x44
/* 80253F9C 00250EFC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80253FA0 00250F00  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80253FA4 00250F04  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80253FA8 00250F08  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80253FAC 00250F0C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80253FB0 00250F10  48 0C 02 51 */	bl __ct__9CVector2fFff
/* 80253FB4 00250F14  38 61 00 44 */	addi r3, r1, 0x44
/* 80253FB8 00250F18  38 81 00 3C */	addi r4, r1, 0x3c
/* 80253FBC 00250F1C  48 0C 00 09 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 80253FC0 00250F20  D0 3F 0C 7C */	stfs f1, 0xc7c(r31)
/* 80253FC4 00250F24  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80253FC8 00250F28  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80253FCC 00250F2C  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80253FD0 00250F30  EC 23 07 B2 */	fmuls f1, f3, f30
/* 80253FD4 00250F34  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80253FD8 00250F38  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80253FDC 00250F3C  EC 22 0F 7A */	fmadds f1, f2, f29, f1
/* 80253FE0 00250F40  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80253FE4 00250F44  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 80253FE8 00250F48  EC 24 0F FA */	fmadds f1, f4, f31, f1
/* 80253FEC 00250F4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80253FF0 00250F50  40 81 00 10 */	ble lbl_80254000
/* 80253FF4 00250F54  C0 1F 0C 7C */	lfs f0, 0xc7c(r31)
/* 80253FF8 00250F58  FC 00 00 50 */	fneg f0, f0
/* 80253FFC 00250F5C  D0 1F 0C 7C */	stfs f0, 0xc7c(r31)
lbl_80254000:
/* 80254000 00250F60  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254004 00250F64  D0 1F 0C 78 */	stfs f0, 0xc78(r31)
/* 80254008 00250F68  48 00 01 90 */	b lbl_80254198
lbl_8025400C:
/* 8025400C 00250F6C  3C A0 80 3F */	lis r5, lbl_803E91F8@ha
/* 80254010 00250F70  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80254014 00250F74  39 45 91 F8 */	addi r10, r5, lbl_803E91F8@l
/* 80254018 00250F78  38 A0 00 0C */	li r5, 0xc
/* 8025401C 00250F7C  81 2A 00 00 */	lwz r9, 0(r10)
/* 80254020 00250F80  38 E0 00 04 */	li r7, 4
/* 80254024 00250F84  81 0A 00 04 */	lwz r8, 4(r10)
/* 80254028 00250F88  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025402C 00250F8C  91 21 00 6C */	stw r9, 0x6c(r1)
/* 80254030 00250F90  91 01 00 70 */	stw r8, 0x70(r1)
/* 80254034 00250F94  90 01 00 74 */	stw r0, 0x74(r1)
/* 80254038 00250F98  4B E2 87 7D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025403C 00250F9C  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80254040 00250FA0  2C 00 00 02 */	cmpwi r0, 2
/* 80254044 00250FA4  41 82 00 08 */	beq lbl_8025404C
/* 80254048 00250FA8  48 00 01 50 */	b lbl_80254198
lbl_8025404C:
/* 8025404C 00250FAC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80254050 00250FB0  38 80 00 01 */	li r4, 1
/* 80254054 00250FB4  4B EE 69 85 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80254058 00250FB8  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 8025405C 00250FBC  C0 1F 0C 78 */	lfs f0, 0xc78(r31)
/* 80254060 00250FC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80254064 00250FC4  40 82 00 CC */	bne lbl_80254130
/* 80254068 00250FC8  C0 0D 97 34 */	lfs f0, lbl_805A82F4@sda21(r13)
/* 8025406C 00250FCC  38 61 00 34 */	addi r3, r1, 0x34
/* 80254070 00250FD0  80 0D 97 30 */	lwz r0, lbl_805A82F0@sda21(r13)
/* 80254074 00250FD4  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80254078 00250FD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8025407C 00250FDC  38 A0 00 14 */	li r5, 0x14
/* 80254080 00250FE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 80254084 00250FE4  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80254088 00250FE8  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025408C 00250FEC  4B DD 6F 4D */	bl GetTimeOfUserEvent__9CAnimDataCF14EUserEventTypeRC13CCharAnimTime
/* 80254090 00250FF0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80254094 00250FF4  38 61 00 24 */	addi r3, r1, 0x24
/* 80254098 00250FF8  80 81 00 38 */	lwz r4, 0x38(r1)
/* 8025409C 00250FFC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 802540A0 00251000  C0 0D 97 34 */	lfs f0, lbl_805A82F4@sda21(r13)
/* 802540A4 00251004  38 A0 00 15 */	li r5, 0x15
/* 802540A8 00251008  80 0D 97 30 */	lwz r0, lbl_805A82F0@sda21(r13)
/* 802540AC 0025100C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 802540B0 00251010  90 81 00 58 */	stw r4, 0x58(r1)
/* 802540B4 00251014  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802540B8 00251018  90 01 00 20 */	stw r0, 0x20(r1)
/* 802540BC 0025101C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 802540C0 00251020  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802540C4 00251024  4B DD 6F 15 */	bl GetTimeOfUserEvent__9CAnimDataCF14EUserEventTypeRC13CCharAnimTime
/* 802540C8 00251028  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 802540CC 0025102C  38 61 00 54 */	addi r3, r1, 0x54
/* 802540D0 00251030  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 802540D4 00251034  38 81 00 14 */	addi r4, r1, 0x14
/* 802540D8 00251038  C0 0D 97 34 */	lfs f0, lbl_805A82F4@sda21(r13)
/* 802540DC 0025103C  80 0D 97 30 */	lwz r0, lbl_805A82F0@sda21(r13)
/* 802540E0 00251040  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802540E4 00251044  90 A1 00 50 */	stw r5, 0x50(r1)
/* 802540E8 00251048  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802540EC 0025104C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802540F0 00251050  48 0F 49 E5 */	bl __ne__13CCharAnimTimeCFRC13CCharAnimTime
/* 802540F4 00251054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802540F8 00251058  41 82 00 38 */	beq lbl_80254130
/* 802540FC 0025105C  C0 0D 97 34 */	lfs f0, lbl_805A82F4@sda21(r13)
/* 80254100 00251060  38 61 00 4C */	addi r3, r1, 0x4c
/* 80254104 00251064  80 0D 97 30 */	lwz r0, lbl_805A82F0@sda21(r13)
/* 80254108 00251068  38 81 00 0C */	addi r4, r1, 0xc
/* 8025410C 0025106C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80254110 00251070  90 01 00 10 */	stw r0, 0x10(r1)
/* 80254114 00251074  48 0F 49 C1 */	bl __ne__13CCharAnimTimeCFRC13CCharAnimTime
/* 80254118 00251078  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025411C 0025107C  41 82 00 14 */	beq lbl_80254130
/* 80254120 00251080  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80254124 00251084  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80254128 00251088  EC 01 00 28 */	fsubs f0, f1, f0
/* 8025412C 0025108C  D0 1F 0C 78 */	stfs f0, 0xc78(r31)
lbl_80254130:
/* 80254130 00251090  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80254134 00251094  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80254138 00251098  41 82 00 60 */	beq lbl_80254198
/* 8025413C 0025109C  C0 3F 0C 7C */	lfs f1, 0xc7c(r31)
/* 80254140 002510A0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80254144 002510A4  C0 1F 0C 78 */	lfs f0, 0xc78(r31)
/* 80254148 002510A8  38 81 00 08 */	addi r4, r1, 8
/* 8025414C 002510AC  EC 21 07 72 */	fmuls f1, f1, f29
/* 80254150 002510B0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80254154 002510B4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80254158 002510B8  48 0B CF A1 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 8025415C 002510BC  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 80254160 002510C0  FC 20 E8 90 */	fmr f1, f29
/* 80254164 002510C4  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 80254168 002510C8  7F E3 FB 78 */	mr r3, r31
/* 8025416C 002510CC  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 80254170 002510D0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80254174 002510D4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80254178 002510D8  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 8025417C 002510DC  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 80254180 002510E0  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 80254184 002510E4  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80254188 002510E8  4B EC 6B D5 */	bl RotateInOneFrameOR__13CPhysicsActorFRC11CQuaternionf
/* 8025418C 002510EC  48 00 00 0C */	b lbl_80254198
lbl_80254190:
/* 80254190 002510F0  38 00 00 00 */	li r0, 0
/* 80254194 002510F4  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_80254198:
/* 80254198 002510F8  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 8025419C 002510FC  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 802541A0 00251100  E3 C1 01 18 */	psq_l f30, 280(r1), 0, qr0
/* 802541A4 00251104  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 802541A8 00251108  E3 A1 01 08 */	psq_l f29, 264(r1), 0, qr0
/* 802541AC 0025110C  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 802541B0 00251110  BB 61 00 EC */	lmw r27, 0xec(r1)
/* 802541B4 00251114  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802541B8 00251118  7C 08 03 A6 */	mtlr r0
/* 802541BC 0025111C  38 21 01 30 */	addi r1, r1, 0x130
/* 802541C0 00251120  4E 80 00 20 */	blr

.global Land__7CRidleyFR13CStateManager9EStateMsgf
Land__7CRidleyFR13CStateManager9EStateMsgf:
/* 802541C4 00251124  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802541C8 00251128  7C 08 02 A6 */	mflr r0
/* 802541CC 0025112C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802541D0 00251130  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802541D4 00251134  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 802541D8 00251138  BF 41 00 88 */	stmw r26, 0x88(r1)
/* 802541DC 0025113C  2C 05 00 01 */	cmpwi r5, 1
/* 802541E0 00251140  7C 7E 1B 78 */	mr r30, r3
/* 802541E4 00251144  7C 9F 23 78 */	mr r31, r4
/* 802541E8 00251148  41 82 01 C4 */	beq lbl_802543AC
/* 802541EC 0025114C  40 80 00 10 */	bge lbl_802541FC
/* 802541F0 00251150  2C 05 00 00 */	cmpwi r5, 0
/* 802541F4 00251154  40 80 00 14 */	bge lbl_80254208
/* 802541F8 00251158  48 00 02 EC */	b lbl_802544E4
lbl_802541FC:
/* 802541FC 0025115C  2C 05 00 03 */	cmpwi r5, 3
/* 80254200 00251160  40 80 02 E4 */	bge lbl_802544E4
/* 80254204 00251164  48 00 02 00 */	b lbl_80254404
lbl_80254208:
/* 80254208 00251168  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8025420C 0025116C  38 61 00 64 */	addi r3, r1, 0x64
/* 80254210 00251170  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 80254214 00251174  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 80254218 00251178  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8025421C 0025117C  C0 7E 0A A0 */	lfs f3, 0xaa0(r30)
/* 80254220 00251180  EC A1 00 28 */	fsubs f5, f1, f0
/* 80254224 00251184  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80254228 00251188  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 8025422C 0025118C  EC 64 18 28 */	fsubs f3, f4, f3
/* 80254230 00251190  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254234 00251194  EC 22 08 28 */	fsubs f1, f2, f1
/* 80254238 00251198  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 8025423C 0025119C  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80254240 002511A0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80254244 002511A4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80254248 002511A8  48 0C 06 71 */	bl Magnitude__9CVector3fCFv
/* 8025424C 002511AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80254250 002511B0  38 61 00 0C */	addi r3, r1, 0xc
/* 80254254 002511B4  C0 22 B9 44 */	lfs f1, lbl_805AD664@sda21(r2)
/* 80254258 002511B8  38 81 00 08 */	addi r4, r1, 8
/* 8025425C 002511BC  C0 1E 0A B4 */	lfs f0, 0xab4(r30)
/* 80254260 002511C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80254264 002511C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80254268 002511C8  4B E2 9B 79 */	bl "Min<f>__5CMathFRCfRCf"
/* 8025426C 002511CC  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80254270 002511D0  38 61 00 64 */	addi r3, r1, 0x64
/* 80254274 002511D4  48 0C 06 85 */	bl Normalize__9CVector3fFv
/* 80254278 002511D8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8025427C 002511DC  38 81 00 58 */	addi r4, r1, 0x58
/* 80254280 002511E0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80254284 002511E4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80254288 002511E8  EC 9F 00 B2 */	fmuls f4, f31, f2
/* 8025428C 002511EC  C0 DE 0A A0 */	lfs f6, 0xaa0(r30)
/* 80254290 002511F0  EC 7F 00 72 */	fmuls f3, f31, f1
/* 80254294 002511F4  C0 FE 0A B0 */	lfs f7, 0xab0(r30)
/* 80254298 002511F8  EC 5F 00 32 */	fmuls f2, f31, f0
/* 8025429C 002511FC  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 802542A0 00251200  EC A6 20 2A */	fadds f5, f6, f4
/* 802542A4 00251204  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 802542A8 00251208  EC 87 18 2A */	fadds f4, f7, f3
/* 802542AC 0025120C  7F C3 F3 78 */	mr r3, r30
/* 802542B0 00251210  EC 01 10 2A */	fadds f0, f1, f2
/* 802542B4 00251214  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 802542B8 00251218  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 802542BC 0025121C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 802542C0 00251220  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 802542C4 00251224  D0 E1 00 54 */	stfs f7, 0x54(r1)
/* 802542C8 00251228  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 802542CC 0025122C  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 802542D0 00251230  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 802542D4 00251234  4B E2 88 89 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 802542D8 00251238  38 00 00 01 */	li r0, 1
/* 802542DC 0025123C  7F C3 F3 78 */	mr r3, r30
/* 802542E0 00251240  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 802542E4 00251244  7F E5 FB 78 */	mr r5, r31
/* 802542E8 00251248  38 80 00 13 */	li r4, 0x13
/* 802542EC 0025124C  4B E0 00 65 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 802542F0 00251250  7F C3 F3 78 */	mr r3, r30
/* 802542F4 00251254  4B DF F5 C9 */	bl GetMaterialFilter__6CActorCFv
/* 802542F8 00251258  80 AD 97 AC */	lwz r5, lbl_805A836C@sda21(r13)
/* 802542FC 0025125C  38 80 00 01 */	li r4, 1
/* 80254300 00251260  83 A3 00 08 */	lwz r29, 8(r3)
/* 80254304 00251264  83 83 00 0C */	lwz r28, 0xc(r3)
/* 80254308 00251268  38 60 00 00 */	li r3, 0
/* 8025430C 0025126C  48 13 5B E9 */	bl __shl2i
/* 80254310 00251270  7C 7B 1B 78 */	mr r27, r3
/* 80254314 00251274  7C 9A 23 78 */	mr r26, r4
/* 80254318 00251278  7F C3 F3 78 */	mr r3, r30
/* 8025431C 0025127C  4B DF F5 A1 */	bl GetMaterialFilter__6CActorCFv
/* 80254320 00251280  80 A3 00 00 */	lwz r5, 0(r3)
/* 80254324 00251284  3C 80 FF F8 */	lis r4, 0xFFF7FFFF@ha
/* 80254328 00251288  80 C3 00 04 */	lwz r6, 4(r3)
/* 8025432C 0025128C  38 64 FF FF */	addi r3, r4, 0xFFF7FFFF@l
/* 80254330 00251290  38 00 FF FF */	li r0, -1
/* 80254334 00251294  7C A7 DB 78 */	or r7, r5, r27
/* 80254338 00251298  7C C4 D3 78 */	or r4, r6, r26
/* 8025433C 0025129C  7F 86 18 38 */	and r6, r28, r3
/* 80254340 002512A0  7F A5 00 38 */	and r5, r29, r0
/* 80254344 002512A4  38 00 00 03 */	li r0, 3
/* 80254348 002512A8  90 81 00 74 */	stw r4, 0x74(r1)
/* 8025434C 002512AC  7F C3 F3 78 */	mr r3, r30
/* 80254350 002512B0  38 81 00 70 */	addi r4, r1, 0x70
/* 80254354 002512B4  90 E1 00 70 */	stw r7, 0x70(r1)
/* 80254358 002512B8  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 8025435C 002512BC  90 A1 00 78 */	stw r5, 0x78(r1)
/* 80254360 002512C0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80254364 002512C4  4B DF F5 3D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80254368 002512C8  80 1E 0C 64 */	lwz r0, 0xc64(r30)
/* 8025436C 002512CC  2C 00 00 03 */	cmpwi r0, 3
/* 80254370 002512D0  40 82 00 18 */	bne lbl_80254388
/* 80254374 002512D4  7F C3 F3 78 */	mr r3, r30
/* 80254378 002512D8  7F E6 FB 78 */	mr r6, r31
/* 8025437C 002512DC  38 80 00 25 */	li r4, 0x25
/* 80254380 002512E0  38 A0 00 13 */	li r5, 0x13
/* 80254384 002512E4  4B DF FF 31 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_80254388:
/* 80254388 002512E8  C0 3E 08 F4 */	lfs f1, 0x8f4(r30)
/* 8025438C 002512EC  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254390 002512F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80254394 002512F4  7C 60 00 26 */	mfcr r3
/* 80254398 002512F8  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 8025439C 002512FC  50 60 2F 38 */	rlwimi r0, r3, 5, 0x1c, 0x1c
/* 802543A0 00251300  98 1E 04 02 */	stb r0, 0x402(r30)
/* 802543A4 00251304  D0 3E 05 04 */	stfs f1, 0x504(r30)
/* 802543A8 00251308  48 00 01 3C */	b lbl_802544E4
lbl_802543AC:
/* 802543AC 0025130C  3C A0 80 3F */	lis r5, lbl_803E91EC@ha
/* 802543B0 00251310  38 C1 00 34 */	addi r6, r1, 0x34
/* 802543B4 00251314  39 45 91 EC */	addi r10, r5, lbl_803E91EC@l
/* 802543B8 00251318  38 A0 00 07 */	li r5, 7
/* 802543BC 0025131C  81 2A 00 00 */	lwz r9, 0(r10)
/* 802543C0 00251320  38 E0 00 08 */	li r7, 8
/* 802543C4 00251324  81 0A 00 04 */	lwz r8, 4(r10)
/* 802543C8 00251328  80 0A 00 08 */	lwz r0, 8(r10)
/* 802543CC 0025132C  91 21 00 34 */	stw r9, 0x34(r1)
/* 802543D0 00251330  91 01 00 38 */	stw r8, 0x38(r1)
/* 802543D4 00251334  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802543D8 00251338  4B E2 83 DD */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802543DC 0025133C  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 802543E0 00251340  2C 00 00 02 */	cmpwi r0, 2
/* 802543E4 00251344  40 82 00 10 */	bne lbl_802543F4
/* 802543E8 00251348  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802543EC 0025134C  38 80 00 03 */	li r4, 3
/* 802543F0 00251350  4B EE 65 E9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_802543F4:
/* 802543F4 00251354  7F C3 F3 78 */	mr r3, r30
/* 802543F8 00251358  7F E4 FB 78 */	mr r4, r31
/* 802543FC 0025135C  48 00 1A 61 */	bl sub_80255e5c
/* 80254400 00251360  48 00 00 E4 */	b lbl_802544E4
lbl_80254404:
/* 80254404 00251364  38 60 00 00 */	li r3, 0
/* 80254408 00251368  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 8025440C 0025136C  90 7E 03 2C */	stw r3, 0x32c(r30)
.global lbl_80254410
lbl_80254410:
/* 80254410 00251370  C0 42 B9 34 */	lfs f2, lbl_805AD654@sda21(r2)
/* 80254414 00251374  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80254418 00251378  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8025441C 0025137C  98 1E 04 02 */	stb r0, 0x402(r30)
/* 80254420 00251380  D0 3E 05 04 */	stfs f1, 0x504(r30)
/* 80254424 00251384  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80254428 00251388  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8025442C 0025138C  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 80254430 00251390  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80254434 00251394  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80254438 00251398  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 8025443C 0025139C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80254440 002513A0  48 0B E1 05 */	bl Range__9CRandom16Fff
/* 80254444 002513A4  C0 02 B9 48 */	lfs f0, lbl_805AD668@sda21(r2)
/* 80254448 002513A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025444C 002513AC  40 80 00 98 */	bge lbl_802544E4
/* 80254450 002513B0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80254454 002513B4  C0 FE 00 48 */	lfs f7, 0x48(r30)
/* 80254458 002513B8  C1 23 00 50 */	lfs f9, 0x50(r3)
/* 8025445C 002513BC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80254460 002513C0  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 80254464 002513C4  EC C9 00 28 */	fsubs f6, f9, f0
/* 80254468 002513C8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8025446C 002513CC  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 80254470 002513D0  EC 43 00 28 */	fsubs f2, f3, f0
/* 80254474 002513D4  C1 43 00 60 */	lfs f10, 0x60(r3)
/* 80254478 002513D8  EC 26 01 F2 */	fmuls f1, f6, f7
/* 8025447C 002513DC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80254480 002513E0  C1 1E 00 58 */	lfs f8, 0x58(r30)
/* 80254484 002513E4  EC AA 00 28 */	fsubs f5, f10, f0
/* 80254488 002513E8  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025448C 002513EC  EC 22 09 3A */	fmadds f1, f2, f4, f1
/* 80254490 002513F0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80254494 002513F4  D0 E1 00 14 */	stfs f7, 0x14(r1)
/* 80254498 002513F8  EC 25 0A 3A */	fmadds f1, f5, f8, f1
/* 8025449C 002513FC  D1 01 00 18 */	stfs f8, 0x18(r1)
/* 802544A0 00251400  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802544A4 00251404  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 802544A8 00251408  D1 21 00 20 */	stfs f9, 0x20(r1)
/* 802544AC 0025140C  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 802544B0 00251410  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 802544B4 00251414  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 802544B8 00251418  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 802544BC 0025141C  40 81 00 18 */	ble lbl_802544D4
/* 802544C0 00251420  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802544C4 00251424  38 60 00 01 */	li r3, 1
/* 802544C8 00251428  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 802544CC 0025142C  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 802544D0 00251430  48 00 00 14 */	b lbl_802544E4
lbl_802544D4:
/* 802544D4 00251434  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802544D8 00251438  38 60 00 01 */	li r3, 1
/* 802544DC 0025143C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802544E0 00251440  98 1E 0A 33 */	stb r0, 0xa33(r30)
lbl_802544E4:
/* 802544E4 00251444  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 802544E8 00251448  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802544EC 0025144C  BB 41 00 88 */	lmw r26, 0x88(r1)
/* 802544F0 00251450  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802544F4 00251454  7C 08 03 A6 */	mtlr r0
/* 802544F8 00251458  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802544FC 0025145C  4E 80 00 20 */	blr

.global Approach__7CRidleyFR13CStateManager9EStateMsgf
Approach__7CRidleyFR13CStateManager9EStateMsgf:
/* 80254500 00251460  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80254504 00251464  7C 08 02 A6 */	mflr r0
/* 80254508 00251468  90 01 00 74 */	stw r0, 0x74(r1)
/* 8025450C 0025146C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80254510 00251470  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80254514 00251474  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80254518 00251478  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8025451C 0025147C  FF E0 08 90 */	fmr f31, f1
/* 80254520 00251480  2C 05 00 01 */	cmpwi r5, 1
/* 80254524 00251484  7C 7E 1B 78 */	mr r30, r3
/* 80254528 00251488  7C 9F 23 78 */	mr r31, r4
/* 8025452C 0025148C  41 82 01 0C */	beq lbl_80254638
/* 80254530 00251490  40 80 01 68 */	bge lbl_80254698
/* 80254534 00251494  2C 05 00 00 */	cmpwi r5, 0
/* 80254538 00251498  40 80 00 0C */	bge lbl_80254544
/* 8025453C 0025149C  48 00 01 5C */	b lbl_80254698
/* 80254540 002514A0  48 00 01 58 */	b lbl_80254698
lbl_80254544:
/* 80254544 002514A4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80254548 002514A8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025454C 002514AC  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 80254550 002514B0  38 81 00 44 */	addi r4, r1, 0x44
/* 80254554 002514B4  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80254558 002514B8  C0 5E 0A B0 */	lfs f2, 0xab0(r30)
/* 8025455C 002514BC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80254560 002514C0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80254564 002514C4  C0 1E 0A 90 */	lfs f0, 0xa90(r30)
/* 80254568 002514C8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025456C 002514CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80254570 002514D0  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80254574 002514D4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80254578 002514D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8025457C 002514DC  48 0C 02 D5 */	bl AsNormalized__9CVector3fCFv
/* 80254580 002514E0  C0 FE 0A B4 */	lfs f7, 0xab4(r30)
/* 80254584 002514E4  7F C3 F3 78 */	mr r3, r30
/* 80254588 002514E8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8025458C 002514EC  38 81 00 38 */	addi r4, r1, 0x38
/* 80254590 002514F0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80254594 002514F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80254598 002514F8  EC A7 00 B2 */	fmuls f5, f7, f2
/* 8025459C 002514FC  C0 DE 0A A0 */	lfs f6, 0xaa0(r30)
/* 802545A0 00251500  EC 67 00 72 */	fmuls f3, f7, f1
/* 802545A4 00251504  C0 9E 0A B0 */	lfs f4, 0xab0(r30)
/* 802545A8 00251508  EC 27 00 32 */	fmuls f1, f7, f0
/* 802545AC 0025150C  C0 5E 0A 90 */	lfs f2, 0xa90(r30)
/* 802545B0 00251510  EC A6 28 2A */	fadds f5, f6, f5
/* 802545B4 00251514  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 802545B8 00251518  EC 64 18 2A */	fadds f3, f4, f3
/* 802545BC 0025151C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802545C0 00251520  EC 22 08 2A */	fadds f1, f2, f1
/* 802545C4 00251524  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 802545C8 00251528  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 802545CC 0025152C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 802545D0 00251530  C0 3E 0A E8 */	lfs f1, 0xae8(r30)
/* 802545D4 00251534  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 802545D8 00251538  EC 21 20 2A */	fadds f1, f1, f4
/* 802545DC 0025153C  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 802545E0 00251540  EC 01 00 28 */	fsubs f0, f1, f0
/* 802545E4 00251544  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802545E8 00251548  4B E2 85 75 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 802545EC 0025154C  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802545F0 00251550  38 60 00 00 */	li r3, 0
/* 802545F4 00251554  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802545F8 00251558  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 802545FC 0025155C  80 1E 0C 64 */	lwz r0, 0xc64(r30)
/* 80254600 00251560  2C 00 00 03 */	cmpwi r0, 3
/* 80254604 00251564  40 82 00 94 */	bne lbl_80254698
/* 80254608 00251568  88 9E 0A 34 */	lbz r4, 0xa34(r30)
/* 8025460C 0025156C  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80254610 00251570  40 82 00 88 */	bne lbl_80254698
/* 80254614 00251574  38 00 00 01 */	li r0, 1
/* 80254618 00251578  7F C3 F3 78 */	mr r3, r30
/* 8025461C 0025157C  50 04 3E 30 */	rlwimi r4, r0, 7, 0x18, 0x18
/* 80254620 00251580  7F E5 FB 78 */	mr r5, r31
/* 80254624 00251584  98 9E 0A 34 */	stb r4, 0xa34(r30)
/* 80254628 00251588  38 80 00 0F */	li r4, 0xf
/* 8025462C 0025158C  38 C0 FF FF */	li r6, -1
/* 80254630 00251590  4B DF CA 91 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80254634 00251594  48 00 00 64 */	b lbl_80254698
lbl_80254638:
/* 80254638 00251598  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 8025463C 0025159C  38 61 00 14 */	addi r3, r1, 0x14
/* 80254640 002515A0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80254644 002515A4  38 81 00 08 */	addi r4, r1, 8
/* 80254648 002515A8  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 8025464C 002515AC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80254650 002515B0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80254654 002515B4  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 80254658 002515B8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8025465C 002515BC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80254660 002515C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80254664 002515C4  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80254668 002515C8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8025466C 002515CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80254670 002515D0  48 0C 01 E1 */	bl AsNormalized__9CVector3fCFv
/* 80254674 002515D4  FC 40 F8 90 */	fmr f2, f31
/* 80254678 002515D8  C0 22 B9 48 */	lfs f1, lbl_805AD668@sda21(r2)
/* 8025467C 002515DC  7F C3 F3 78 */	mr r3, r30
/* 80254680 002515E0  38 81 00 14 */	addi r4, r1, 0x14
/* 80254684 002515E4  48 00 19 65 */	bl sub_80255fe8
/* 80254688 002515E8  FC 20 F8 90 */	fmr f1, f31
/* 8025468C 002515EC  7F C3 F3 78 */	mr r3, r30
/* 80254690 002515F0  7F E4 FB 78 */	mr r4, r31
/* 80254694 002515F4  48 00 18 BD */	bl sub_80255f50
lbl_80254698:
/* 80254698 002515F8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8025469C 002515FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802546A0 00251600  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802546A4 00251604  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802546A8 00251608  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802546AC 0025160C  7C 08 03 A6 */	mtlr r0
/* 802546B0 00251610  38 21 00 70 */	addi r1, r1, 0x70
/* 802546B4 00251614  4E 80 00 20 */	blr

.global Explode__7CRidleyFR13CStateManager9EStateMsgf
Explode__7CRidleyFR13CStateManager9EStateMsgf:
/* 802546B8 00251618  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802546BC 0025161C  7C 08 02 A6 */	mflr r0
/* 802546C0 00251620  2C 05 00 01 */	cmpwi r5, 1
/* 802546C4 00251624  90 01 00 24 */	stw r0, 0x24(r1)
/* 802546C8 00251628  41 82 00 3C */	beq lbl_80254704
/* 802546CC 0025162C  40 80 00 10 */	bge lbl_802546DC
/* 802546D0 00251630  2C 05 00 00 */	cmpwi r5, 0
/* 802546D4 00251634  40 80 00 14 */	bge lbl_802546E8
/* 802546D8 00251638  48 00 00 68 */	b lbl_80254740
lbl_802546DC:
/* 802546DC 0025163C  2C 05 00 03 */	cmpwi r5, 3
/* 802546E0 00251640  40 80 00 60 */	bge lbl_80254740
/* 802546E4 00251644  48 00 00 54 */	b lbl_80254738
lbl_802546E8:
/* 802546E8 00251648  88 83 0A 32 */	lbz r4, 0xa32(r3)
/* 802546EC 0025164C  38 00 00 00 */	li r0, 0
/* 802546F0 00251650  50 04 26 F6 */	rlwimi r4, r0, 4, 0x1b, 0x1b
/* 802546F4 00251654  38 00 00 01 */	li r0, 1
/* 802546F8 00251658  98 83 0A 32 */	stb r4, 0xa32(r3)
/* 802546FC 0025165C  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80254700 00251660  48 00 00 40 */	b lbl_80254740
lbl_80254704:
/* 80254704 00251664  3C A0 80 3F */	lis r5, lbl_803E91E0@ha
/* 80254708 00251668  38 C1 00 08 */	addi r6, r1, 8
/* 8025470C 0025166C  39 45 91 E0 */	addi r10, r5, lbl_803E91E0@l
/* 80254710 00251670  38 A0 00 06 */	li r5, 6
/* 80254714 00251674  81 2A 00 00 */	lwz r9, 0(r10)
/* 80254718 00251678  38 E0 00 02 */	li r7, 2
/* 8025471C 0025167C  81 0A 00 04 */	lwz r8, 4(r10)
/* 80254720 00251680  80 0A 00 08 */	lwz r0, 8(r10)
/* 80254724 00251684  91 21 00 08 */	stw r9, 8(r1)
/* 80254728 00251688  91 01 00 0C */	stw r8, 0xc(r1)
/* 8025472C 0025168C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80254730 00251690  4B E2 80 85 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80254734 00251694  48 00 00 0C */	b lbl_80254740
lbl_80254738:
/* 80254738 00251698  38 00 00 00 */	li r0, 0
/* 8025473C 0025169C  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_80254740:
/* 80254740 002516A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80254744 002516A4  7C 08 03 A6 */	mtlr r0
/* 80254748 002516A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8025474C 002516AC  4E 80 00 20 */	blr

.global LoopedAttack__7CRidleyFR13CStateManager9EStateMsgf
LoopedAttack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80254750 002516B0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80254754 002516B4  7C 08 02 A6 */	mflr r0
/* 80254758 002516B8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8025475C 002516BC  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80254760 002516C0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 80254764 002516C4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80254768 002516C8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 8025476C 002516CC  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80254770 002516D0  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80254774 002516D4  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80254778 002516D8  FF C0 08 90 */	fmr f30, f1
/* 8025477C 002516DC  2C 05 00 01 */	cmpwi r5, 1
/* 80254780 002516E0  7C 7E 1B 78 */	mr r30, r3
/* 80254784 002516E4  7C 9F 23 78 */	mr r31, r4
/* 80254788 002516E8  41 82 02 E8 */	beq lbl_80254A70
/* 8025478C 002516EC  40 80 00 10 */	bge lbl_8025479C
/* 80254790 002516F0  2C 05 00 00 */	cmpwi r5, 0
/* 80254794 002516F4  40 80 00 14 */	bge lbl_802547A8
/* 80254798 002516F8  48 00 07 D4 */	b lbl_80254F6C
lbl_8025479C:
/* 8025479C 002516FC  2C 05 00 03 */	cmpwi r5, 3
/* 802547A0 00251700  40 80 07 CC */	bge lbl_80254F6C
/* 802547A4 00251704  48 00 06 F4 */	b lbl_80254E98
lbl_802547A8:
/* 802547A8 00251708  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 802547AC 0025170C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802547B0 00251710  41 82 00 48 */	beq lbl_802547F8
/* 802547B4 00251714  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802547B8 00251718  38 60 00 00 */	li r3, 0
/* 802547BC 0025171C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802547C0 00251720  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 802547C4 00251724  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 802547C8 00251728  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802547CC 0025172C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 802547D0 00251730  D0 1E 0B C4 */	stfs f0, 0xbc4(r30)
/* 802547D4 00251734  D0 3E 0B C8 */	stfs f1, 0xbc8(r30)
/* 802547D8 00251738  D0 5E 0B CC */	stfs f2, 0xbcc(r30)
/* 802547DC 0025173C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 802547E0 00251740  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 802547E4 00251744  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 802547E8 00251748  D0 1E 0B D0 */	stfs f0, 0xbd0(r30)
/* 802547EC 0025174C  D0 3E 0B D4 */	stfs f1, 0xbd4(r30)
/* 802547F0 00251750  D0 5E 0B D8 */	stfs f2, 0xbd8(r30)
/* 802547F4 00251754  48 00 01 EC */	b lbl_802549E0
lbl_802547F8:
/* 802547F8 00251758  C1 3E 00 50 */	lfs f9, 0x50(r30)
/* 802547FC 0025175C  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 80254800 00251760  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80254804 00251764  EC C9 00 28 */	fsubs f6, f9, f0
/* 80254808 00251768  C0 FE 0A 94 */	lfs f7, 0xa94(r30)
/* 8025480C 0025176C  C0 1E 0A 90 */	lfs f0, 0xa90(r30)
/* 80254810 00251770  C1 5E 00 60 */	lfs f10, 0x60(r30)
/* 80254814 00251774  EC 64 00 28 */	fsubs f3, f4, f0
/* 80254818 00251778  C0 3E 0A B0 */	lfs f1, 0xab0(r30)
/* 8025481C 0025177C  C0 5E 0A 84 */	lfs f2, 0xa84(r30)
/* 80254820 00251780  EC 07 01 B2 */	fmuls f0, f7, f6
/* 80254824 00251784  EC AA 08 28 */	fsubs f5, f10, f1
/* 80254828 00251788  C1 1E 0A A4 */	lfs f8, 0xaa4(r30)
/* 8025482C 0025178C  EC 22 00 FA */	fmadds f1, f2, f3, f0
/* 80254830 00251790  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254834 00251794  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 80254838 00251798  EC 28 09 7A */	fmadds f1, f8, f5, f1
/* 8025483C 0025179C  D1 21 00 8C */	stfs f9, 0x8c(r1)
/* 80254840 002517A0  D1 41 00 90 */	stfs f10, 0x90(r1)
/* 80254844 002517A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80254848 002517A8  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8025484C 002517AC  D0 C1 00 98 */	stfs f6, 0x98(r1)
/* 80254850 002517B0  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 80254854 002517B4  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 80254858 002517B8  D0 E1 00 A4 */	stfs f7, 0xa4(r1)
/* 8025485C 002517BC  D1 01 00 A8 */	stfs f8, 0xa8(r1)
/* 80254860 002517C0  7C 00 00 26 */	mfcr r0
/* 80254864 002517C4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80254868 002517C8  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 8025486C 002517CC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80254870 002517D0  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 80254874 002517D4  83 BE 00 2C */	lwz r29, 0x2c(r30)
/* 80254878 002517D8  48 00 01 50 */	b lbl_802549C8
lbl_8025487C:
/* 8025487C 002517DC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80254880 002517E0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80254884 002517E4  40 82 01 40 */	bne lbl_802549C4
/* 80254888 002517E8  80 1D 00 04 */	lwz r0, 4(r29)
/* 8025488C 002517EC  2C 00 00 06 */	cmpwi r0, 6
/* 80254890 002517F0  40 82 01 34 */	bne lbl_802549C4
/* 80254894 002517F4  80 1D 00 08 */	lwz r0, 8(r29)
/* 80254898 002517F8  7F E4 FB 78 */	mr r4, r31
/* 8025489C 002517FC  38 61 00 0C */	addi r3, r1, 0xc
/* 802548A0 00251800  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802548A4 00251804  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802548A8 00251808  4B DF 36 75 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 802548AC 0025180C  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 802548B0 00251810  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802548B4 00251814  B0 61 00 10 */	sth r3, 0x10(r1)
/* 802548B8 00251818  7C 03 00 40 */	cmplw r3, r0
/* 802548BC 0025181C  41 82 01 08 */	beq lbl_802549C4
/* 802548C0 00251820  B0 61 00 08 */	sth r3, 8(r1)
/* 802548C4 00251824  7F E3 FB 78 */	mr r3, r31
/* 802548C8 00251828  38 81 00 08 */	addi r4, r1, 8
/* 802548CC 0025182C  4B DF 7C D9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802548D0 00251830  7C 64 1B 78 */	mr r4, r3
/* 802548D4 00251834  38 61 00 34 */	addi r3, r1, 0x34
/* 802548D8 00251838  4B E5 1C 75 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 802548DC 0025183C  80 63 00 04 */	lwz r3, 4(r3)
/* 802548E0 00251840  28 03 00 00 */	cmplwi r3, 0
/* 802548E4 00251844  41 82 00 E0 */	beq lbl_802549C4
/* 802548E8 00251848  C1 03 00 50 */	lfs f8, 0x50(r3)
/* 802548EC 0025184C  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 802548F0 00251850  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 802548F4 00251854  EC A8 00 28 */	fsubs f5, f8, f0
/* 802548F8 00251858  C0 DE 0A 94 */	lfs f6, 0xa94(r30)
/* 802548FC 0025185C  C0 1E 0A 90 */	lfs f0, 0xa90(r30)
/* 80254900 00251860  C1 23 00 60 */	lfs f9, 0x60(r3)
/* 80254904 00251864  EC 43 00 28 */	fsubs f2, f3, f0
/* 80254908 00251868  C0 9E 0A B0 */	lfs f4, 0xab0(r30)
/* 8025490C 0025186C  C0 3E 0A 84 */	lfs f1, 0xa84(r30)
/* 80254910 00251870  EC 06 01 72 */	fmuls f0, f6, f5
/* 80254914 00251874  EC 89 20 28 */	fsubs f4, f9, f4
/* 80254918 00251878  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 8025491C 0025187C  C0 FE 0A A4 */	lfs f7, 0xaa4(r30)
/* 80254920 00251880  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 80254924 00251884  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80254928 00251888  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8025492C 0025188C  EC 67 01 3A */	fmadds f3, f7, f4, f0
/* 80254930 00251890  D1 01 00 68 */	stfs f8, 0x68(r1)
/* 80254934 00251894  D1 21 00 6C */	stfs f9, 0x6c(r1)
/* 80254938 00251898  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8025493C 0025189C  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 80254940 002518A0  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 80254944 002518A4  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80254948 002518A8  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 8025494C 002518AC  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 80254950 002518B0  41 82 00 10 */	beq lbl_80254960
/* 80254954 002518B4  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254958 002518B8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8025495C 002518BC  41 81 00 1C */	bgt lbl_80254978
lbl_80254960:
/* 80254960 002518C0  28 00 00 00 */	cmplwi r0, 0
/* 80254964 002518C4  40 82 00 60 */	bne lbl_802549C4
/* 80254968 002518C8  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025496C 002518CC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80254970 002518D0  4C 40 13 82 */	cror 2, 0, 2
/* 80254974 002518D4  40 82 00 50 */	bne lbl_802549C4
lbl_80254978:
/* 80254978 002518D8  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8025497C 002518DC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80254980 002518E0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80254984 002518E4  D0 1E 0B C4 */	stfs f0, 0xbc4(r30)
/* 80254988 002518E8  D0 3E 0B C8 */	stfs f1, 0xbc8(r30)
/* 8025498C 002518EC  D0 5E 0B CC */	stfs f2, 0xbcc(r30)
/* 80254990 002518F0  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 80254994 002518F4  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80254998 002518F8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8025499C 002518FC  D0 1E 0B D0 */	stfs f0, 0xbd0(r30)
/* 802549A0 00251900  D0 3E 0B D4 */	stfs f1, 0xbd4(r30)
/* 802549A4 00251904  D0 5E 0B D8 */	stfs f2, 0xbd8(r30)
/* 802549A8 00251908  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 802549AC 0025190C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802549B0 00251910  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 802549B4 00251914  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 802549B8 00251918  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 802549BC 0025191C  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 802549C0 00251920  48 00 00 20 */	b lbl_802549E0
lbl_802549C4:
/* 802549C4 00251924  3B BD 00 0C */	addi r29, r29, 0xc
lbl_802549C8:
/* 802549C8 00251928  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 802549CC 0025192C  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802549D0 00251930  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802549D4 00251934  7C 03 02 14 */	add r0, r3, r0
/* 802549D8 00251938  7C 1D 00 40 */	cmplw r29, r0
/* 802549DC 0025193C  40 82 FE A0 */	bne lbl_8025487C
lbl_802549E0:
/* 802549E0 00251940  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802549E4 00251944  3C 60 80 3D */	lis r3, lbl_803D4C18@ha
/* 802549E8 00251948  C0 22 B9 50 */	lfs f1, lbl_805AD670@sda21(r2)
/* 802549EC 0025194C  38 E0 00 00 */	li r7, 0
/* 802549F0 00251950  D0 1E 0B DC */	stfs f0, 0xbdc(r30)
/* 802549F4 00251954  38 C0 00 01 */	li r6, 1
/* 802549F8 00251958  C0 02 B9 54 */	lfs f0, lbl_805AD674@sda21(r2)
/* 802549FC 0025195C  38 A3 4C 18 */	addi r5, r3, lbl_803D4C18@l
/* 80254A00 00251960  D0 3E 0B E0 */	stfs f1, 0xbe0(r30)
/* 80254A04 00251964  7F C3 F3 78 */	mr r3, r30
/* 80254A08 00251968  C0 22 B9 24 */	lfs f1, lbl_805AD644@sda21(r2)
/* 80254A0C 0025196C  7F E4 FB 78 */	mr r4, r31
/* 80254A10 00251970  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254A14 00251974  50 E0 0F BC */	rlwimi r0, r7, 1, 0x1e, 0x1e
/* 80254A18 00251978  98 1E 0A 31 */	stb r0, 0xa31(r30)
/* 80254A1C 0025197C  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254A20 00251980  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 80254A24 00251984  98 1E 0A 31 */	stb r0, 0xa31(r30)
/* 80254A28 00251988  D0 1E 0C 10 */	stfs f0, 0xc10(r30)
/* 80254A2C 0025198C  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254A30 00251990  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80254A34 00251994  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 80254A38 00251998  80 1E 0C B0 */	lwz r0, 0xcb0(r30)
/* 80254A3C 0025199C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80254A40 002519A0  7C A5 02 14 */	add r5, r5, r0
/* 80254A44 002519A4  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 80254A48 002519A8  90 1E 0C C0 */	stw r0, 0xcc0(r30)
/* 80254A4C 002519AC  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80254A50 002519B0  C0 45 00 04 */	lfs f2, 4(r5)
/* 80254A54 002519B4  C0 65 00 08 */	lfs f3, 8(r5)
/* 80254A58 002519B8  C0 05 00 00 */	lfs f0, 0(r5)
/* 80254A5C 002519BC  D0 1E 0C 68 */	stfs f0, 0xc68(r30)
/* 80254A60 002519C0  D0 5E 0C 6C */	stfs f2, 0xc6c(r30)
/* 80254A64 002519C4  D0 7E 0C 70 */	stfs f3, 0xc70(r30)
/* 80254A68 002519C8  48 00 2B 25 */	bl sub_8025758c
/* 80254A6C 002519CC  48 00 05 00 */	b lbl_80254F6C
lbl_80254A70:
/* 80254A70 002519D0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80254A74 002519D4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80254A78 002519D8  C0 1E 0A A0 */	lfs f0, 0xaa0(r30)
/* 80254A7C 002519DC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80254A80 002519E0  C0 5E 0A B0 */	lfs f2, 0xab0(r30)
/* 80254A84 002519E4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80254A88 002519E8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80254A8C 002519EC  C0 1E 0A 90 */	lfs f0, 0xa90(r30)
/* 80254A90 002519F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80254A94 002519F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80254A98 002519F8  D0 81 00 BC */	stfs f4, 0xbc(r1)
/* 80254A9C 002519FC  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80254AA0 00251A00  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80254AA4 00251A04  48 0B FE 15 */	bl Magnitude__9CVector3fCFv
/* 80254AA8 00251A08  C0 02 B9 34 */	lfs f0, lbl_805AD654@sda21(r2)
/* 80254AAC 00251A0C  38 81 00 28 */	addi r4, r1, 0x28
/* 80254AB0 00251A10  38 6D 97 9C */	addi r3, r13, lbl_805A835C@sda21
/* 80254AB4 00251A14  38 A2 B9 4C */	addi r5, r2, lbl_805AD66C@sda21
/* 80254AB8 00251A18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80254ABC 00251A1C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80254AC0 00251A20  4B DB 77 F5 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80254AC4 00251A24  C0 23 00 00 */	lfs f1, 0(r3)
/* 80254AC8 00251A28  38 81 00 30 */	addi r4, r1, 0x30
/* 80254ACC 00251A2C  C0 02 B9 58 */	lfs f0, lbl_805AD678@sda21(r2)
/* 80254AD0 00251A30  38 62 B9 10 */	addi r3, r2, lbl_805AD630@sda21
/* 80254AD4 00251A34  C0 42 B9 24 */	lfs f2, lbl_805AD644@sda21(r2)
/* 80254AD8 00251A38  38 AD 97 A0 */	addi r5, r13, lbl_805A8360@sda21
/* 80254ADC 00251A3C  EC 81 00 24 */	fdivs f4, f1, f0
/* 80254AE0 00251A40  C0 22 B9 5C */	lfs f1, lbl_805AD67C@sda21(r2)
/* 80254AE4 00251A44  C0 62 B9 20 */	lfs f3, lbl_805AD640@sda21(r2)
/* 80254AE8 00251A48  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80254AEC 00251A4C  EC 42 09 3C */	fnmsubs f2, f2, f4, f1
/* 80254AF0 00251A50  EC 24 01 32 */	fmuls f1, f4, f4
/* 80254AF4 00251A54  EC 22 00 72 */	fmuls f1, f2, f1
/* 80254AF8 00251A58  EC 03 00 7C */	fnmsubs f0, f3, f1, f0
/* 80254AFC 00251A5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80254B00 00251A60  4B DB 77 B5 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80254B04 00251A64  C0 83 00 00 */	lfs f4, 0(r3)
/* 80254B08 00251A68  C0 62 B9 28 */	lfs f3, lbl_805AD648@sda21(r2)
/* 80254B0C 00251A6C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80254B10 00251A70  EC A3 20 24 */	fdivs f5, f3, f4
/* 80254B14 00251A74  C0 5E 0C 68 */	lfs f2, 0xc68(r30)
/* 80254B18 00251A78  C0 3E 0C 6C */	lfs f1, 0xc6c(r30)
/* 80254B1C 00251A7C  C0 1E 0C 70 */	lfs f0, 0xc70(r30)
/* 80254B20 00251A80  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80254B24 00251A84  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80254B28 00251A88  EC 24 00 72 */	fmuls f1, f4, f1
/* 80254B2C 00251A8C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80254B30 00251A90  D0 43 00 00 */	stfs f2, 0(r3)
/* 80254B34 00251A94  D0 23 00 04 */	stfs f1, 4(r3)
/* 80254B38 00251A98  D0 03 00 08 */	stfs f0, 8(r3)
/* 80254B3C 00251A9C  D0 BE 05 5C */	stfs f5, 0x55c(r30)
/* 80254B40 00251AA0  D0 BE 05 60 */	stfs f5, 0x560(r30)
/* 80254B44 00251AA4  D0 BE 05 64 */	stfs f5, 0x564(r30)
/* 80254B48 00251AA8  D0 5E 09 E4 */	stfs f2, 0x9e4(r30)
/* 80254B4C 00251AAC  D0 3E 09 E8 */	stfs f1, 0x9e8(r30)
/* 80254B50 00251AB0  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
/* 80254B54 00251AB4  C0 1E 03 38 */	lfs f0, 0x338(r30)
/* 80254B58 00251AB8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80254B5C 00251ABC  40 81 00 34 */	ble lbl_80254B90
/* 80254B60 00251AC0  80 1E 0C B0 */	lwz r0, 0xcb0(r30)
/* 80254B64 00251AC4  3C 60 80 3D */	lis r3, lbl_803D4C18@ha
/* 80254B68 00251AC8  38 63 4C 18 */	addi r3, r3, lbl_803D4C18@l
/* 80254B6C 00251ACC  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80254B70 00251AD0  7C 63 02 14 */	add r3, r3, r0
/* 80254B74 00251AD4  88 03 00 20 */	lbz r0, 0x20(r3)
/* 80254B78 00251AD8  28 00 00 00 */	cmplwi r0, 0
/* 80254B7C 00251ADC  41 82 00 14 */	beq lbl_80254B90
/* 80254B80 00251AE0  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254B84 00251AE4  38 60 00 01 */	li r3, 1
/* 80254B88 00251AE8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80254B8C 00251AEC  98 1E 0A 32 */	stb r0, 0xa32(r30)
lbl_80254B90:
/* 80254B90 00251AF0  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254B94 00251AF4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80254B98 00251AF8  41 82 00 54 */	beq lbl_80254BEC
/* 80254B9C 00251AFC  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254BA0 00251B00  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80254BA4 00251B04  41 82 00 48 */	beq lbl_80254BEC
/* 80254BA8 00251B08  C0 02 B9 60 */	lfs f0, lbl_805AD680@sda21(r2)
/* 80254BAC 00251B0C  C0 7E 0B F0 */	lfs f3, 0xbf0(r30)
/* 80254BB0 00251B10  EC 80 07 B2 */	fmuls f4, f0, f30
/* 80254BB4 00251B14  C0 5E 0B F4 */	lfs f2, 0xbf4(r30)
/* 80254BB8 00251B18  C0 3E 0B F8 */	lfs f1, 0xbf8(r30)
/* 80254BBC 00251B1C  C0 1E 0B E4 */	lfs f0, 0xbe4(r30)
/* 80254BC0 00251B20  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80254BC4 00251B24  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80254BC8 00251B28  EC 24 00 72 */	fmuls f1, f4, f1
/* 80254BCC 00251B2C  EC 00 18 2A */	fadds f0, f0, f3
/* 80254BD0 00251B30  D0 1E 0B E4 */	stfs f0, 0xbe4(r30)
/* 80254BD4 00251B34  C0 1E 0B E8 */	lfs f0, 0xbe8(r30)
/* 80254BD8 00251B38  EC 00 10 2A */	fadds f0, f0, f2
/* 80254BDC 00251B3C  D0 1E 0B E8 */	stfs f0, 0xbe8(r30)
/* 80254BE0 00251B40  C0 1E 0B EC */	lfs f0, 0xbec(r30)
/* 80254BE4 00251B44  EC 00 08 2A */	fadds f0, f0, f1
/* 80254BE8 00251B48  D0 1E 0B EC */	stfs f0, 0xbec(r30)
lbl_80254BEC:
/* 80254BEC 00251B4C  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254BF0 00251B50  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80254BF4 00251B54  41 82 00 48 */	beq lbl_80254C3C
/* 80254BF8 00251B58  80 1E 0C AC */	lwz r0, 0xcac(r30)
/* 80254BFC 00251B5C  28 00 00 00 */	cmplwi r0, 0
/* 80254C00 00251B60  41 82 00 3C */	beq lbl_80254C3C
/* 80254C04 00251B64  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80254C08 00251B68  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80254C0C 00251B6C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80254C10 00251B70  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 80254C14 00251B74  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80254C18 00251B78  38 61 00 24 */	addi r3, r1, 0x24
/* 80254C1C 00251B7C  38 81 00 58 */	addi r4, r1, 0x58
/* 80254C20 00251B80  38 C0 00 7F */	li r6, 0x7f
/* 80254C24 00251B84  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80254C28 00251B88  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80254C2C 00251B8C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80254C30 00251B90  80 1E 0C A8 */	lwz r0, 0xca8(r30)
/* 80254C34 00251B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80254C38 00251B98  48 09 52 79 */	bl UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
lbl_80254C3C:
/* 80254C3C 00251B9C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80254C40 00251BA0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80254C44 00251BA4  2C 00 00 03 */	cmpwi r0, 3
/* 80254C48 00251BA8  41 82 03 24 */	beq lbl_80254F6C
/* 80254C4C 00251BAC  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254C50 00251BB0  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80254C54 00251BB4  40 82 02 30 */	bne lbl_80254E84
/* 80254C58 00251BB8  C0 3E 0B C8 */	lfs f1, 0xbc8(r30)
/* 80254C5C 00251BBC  38 61 00 AC */	addi r3, r1, 0xac
/* 80254C60 00251BC0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80254C64 00251BC4  C0 7E 0B CC */	lfs f3, 0xbcc(r30)
/* 80254C68 00251BC8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80254C6C 00251BCC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80254C70 00251BD0  C0 3E 0B C4 */	lfs f1, 0xbc4(r30)
/* 80254C74 00251BD4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80254C78 00251BD8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80254C7C 00251BDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80254C80 00251BE0  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 80254C84 00251BE4  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80254C88 00251BE8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80254C8C 00251BEC  48 0B FC 2D */	bl Magnitude__9CVector3fCFv
/* 80254C90 00251BF0  FF E0 08 90 */	fmr f31, f1
/* 80254C94 00251BF4  C0 02 B9 24 */	lfs f0, lbl_805AD644@sda21(r2)
/* 80254C98 00251BF8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80254C9C 00251BFC  40 81 01 14 */	ble lbl_80254DB0
/* 80254CA0 00251C00  C0 3E 0B C8 */	lfs f1, 0xbc8(r30)
/* 80254CA4 00251C04  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 80254CA8 00251C08  C0 5E 0B C4 */	lfs f2, 0xbc4(r30)
/* 80254CAC 00251C0C  EC A1 00 28 */	fsubs f5, f1, f0
/* 80254CB0 00251C10  C0 3E 02 EC */	lfs f1, 0x2ec(r30)
/* 80254CB4 00251C14  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80254CB8 00251C18  EC 62 08 28 */	fsubs f3, f2, f1
/* 80254CBC 00251C1C  C0 9E 0B CC */	lfs f4, 0xbcc(r30)
/* 80254CC0 00251C20  C0 5E 02 F4 */	lfs f2, 0x2f4(r30)
/* 80254CC4 00251C24  EC 00 01 72 */	fmuls f0, f0, f5
/* 80254CC8 00251C28  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 80254CCC 00251C2C  EC 84 10 28 */	fsubs f4, f4, f2
/* 80254CD0 00251C30  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80254CD4 00251C34  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 80254CD8 00251C38  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80254CDC 00251C3C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80254CE0 00251C40  EC 22 09 3A */	fmadds f1, f2, f4, f1
/* 80254CE4 00251C44  D0 A1 00 50 */	stfs f5, 0x50(r1)
/* 80254CE8 00251C48  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80254CEC 00251C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80254CF0 00251C50  40 81 00 C0 */	ble lbl_80254DB0
/* 80254CF4 00251C54  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80254CF8 00251C58  38 61 00 20 */	addi r3, r1, 0x20
/* 80254CFC 00251C5C  C0 22 B9 34 */	lfs f1, lbl_805AD654@sda21(r2)
/* 80254D00 00251C60  38 81 00 1C */	addi r4, r1, 0x1c
/* 80254D04 00251C64  EC A0 F8 24 */	fdivs f5, f0, f31
/* 80254D08 00251C68  C0 81 00 AC */	lfs f4, 0xac(r1)
/* 80254D0C 00251C6C  C0 61 00 B0 */	lfs f3, 0xb0(r1)
/* 80254D10 00251C70  38 A1 00 18 */	addi r5, r1, 0x18
/* 80254D14 00251C74  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 80254D18 00251C78  C0 02 B9 64 */	lfs f0, lbl_805AD684@sda21(r2)
/* 80254D1C 00251C7C  EC 84 01 72 */	fmuls f4, f4, f5
/* 80254D20 00251C80  EC 63 01 72 */	fmuls f3, f3, f5
/* 80254D24 00251C84  EC 42 01 72 */	fmuls f2, f2, f5
/* 80254D28 00251C88  EC 21 07 B2 */	fmuls f1, f1, f30
/* 80254D2C 00251C8C  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80254D30 00251C90  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80254D34 00251C94  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80254D38 00251C98  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80254D3C 00251C9C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80254D40 00251CA0  C0 5E 0B E0 */	lfs f2, 0xbe0(r30)
/* 80254D44 00251CA4  C0 3E 0B DC */	lfs f1, 0xbdc(r30)
/* 80254D48 00251CA8  EC 22 08 28 */	fsubs f1, f2, f1
/* 80254D4C 00251CAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80254D50 00251CB0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80254D54 00251CB4  4B DB 75 61 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80254D58 00251CB8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80254D5C 00251CBC  FC 40 F0 90 */	fmr f2, f30
/* 80254D60 00251CC0  C0 1E 0B DC */	lfs f0, 0xbdc(r30)
/* 80254D64 00251CC4  7F C3 F3 78 */	mr r3, r30
/* 80254D68 00251CC8  38 81 00 AC */	addi r4, r1, 0xac
/* 80254D6C 00251CCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80254D70 00251CD0  D0 1E 0B DC */	stfs f0, 0xbdc(r30)
/* 80254D74 00251CD4  C0 3E 0B DC */	lfs f1, 0xbdc(r30)
/* 80254D78 00251CD8  48 00 12 71 */	bl sub_80255fe8
/* 80254D7C 00251CDC  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 80254D80 00251CE0  38 81 00 14 */	addi r4, r1, 0x14
/* 80254D84 00251CE4  38 6D 97 A4 */	addi r3, r13, lbl_805A8364@sda21
/* 80254D88 00251CE8  38 AD 97 A8 */	addi r5, r13, lbl_805A8368@sda21
/* 80254D8C 00251CEC  EC 00 F8 24 */	fdivs f0, f0, f31
/* 80254D90 00251CF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80254D94 00251CF4  4B DB 75 21 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80254D98 00251CF8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80254D9C 00251CFC  38 9E 0B D0 */	addi r4, r30, 0xbd0
/* 80254DA0 00251D00  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80254DA4 00251D04  EC 3E 00 32 */	fmuls f1, f30, f0
/* 80254DA8 00251D08  4B EE 58 FD */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 80254DAC 00251D0C  48 00 01 C0 */	b lbl_80254F6C
lbl_80254DB0:
/* 80254DB0 00251D10  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254DB4 00251D14  38 60 00 03 */	li r3, 3
/* 80254DB8 00251D18  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80254DBC 00251D1C  41 82 00 08 */	beq lbl_80254DC4
/* 80254DC0 00251D20  38 60 00 02 */	li r3, 2
lbl_80254DC4:
/* 80254DC4 00251D24  80 1E 0C C0 */	lwz r0, 0xcc0(r30)
/* 80254DC8 00251D28  7C 66 1B 78 */	mr r6, r3
/* 80254DCC 00251D2C  2C 00 00 03 */	cmpwi r0, 3
/* 80254DD0 00251D30  41 82 00 1C */	beq lbl_80254DEC
/* 80254DD4 00251D34  40 80 00 1C */	bge lbl_80254DF0
/* 80254DD8 00251D38  2C 00 00 02 */	cmpwi r0, 2
/* 80254DDC 00251D3C  40 80 00 08 */	bge lbl_80254DE4
/* 80254DE0 00251D40  48 00 00 10 */	b lbl_80254DF0
lbl_80254DE4:
/* 80254DE4 00251D44  38 C0 00 00 */	li r6, 0
/* 80254DE8 00251D48  48 00 00 08 */	b lbl_80254DF0
lbl_80254DEC:
/* 80254DEC 00251D4C  38 C0 00 04 */	li r6, 4
lbl_80254DF0:
/* 80254DF0 00251D50  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80254DF4 00251D54  38 A0 00 00 */	li r5, 0
/* 80254DF8 00251D58  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80254DFC 00251D5C  41 82 00 08 */	beq lbl_80254E04
/* 80254E00 00251D60  38 A0 00 02 */	li r5, 2
lbl_80254E04:
/* 80254E04 00251D64  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80254E08 00251D68  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80254E0C 00251D6C  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80254E10 00251D70  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 80254E14 00251D74  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80254E18 00251D78  38 04 A9 E4 */	addi r0, r4, lbl_803DA9E4@l
/* 80254E1C 00251D7C  38 80 00 01 */	li r4, 1
/* 80254E20 00251D80  3B E3 00 04 */	addi r31, r3, 4
/* 80254E24 00251D84  90 81 00 40 */	stw r4, 0x40(r1)
/* 80254E28 00251D88  7F E3 FB 78 */	mr r3, r31
/* 80254E2C 00251D8C  38 80 00 01 */	li r4, 1
/* 80254E30 00251D90  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80254E34 00251D94  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80254E38 00251D98  90 A1 00 48 */	stw r5, 0x48(r1)
/* 80254E3C 00251D9C  4B ED C5 FD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80254E40 00251DA0  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 80254E44 00251DA4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80254E48 00251DA8  38 03 A9 E4 */	addi r0, r3, lbl_803DA9E4@l
/* 80254E4C 00251DAC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80254E50 00251DB0  90 BF 00 C8 */	stw r5, 0xc8(r31)
/* 80254E54 00251DB4  38 60 00 01 */	li r3, 1
/* 80254E58 00251DB8  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 80254E5C 00251DBC  38 84 AA 68 */	addi r4, r4, lbl_803DAA68@l
/* 80254E60 00251DC0  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 80254E64 00251DC4  90 DF 00 CC */	stw r6, 0xcc(r31)
/* 80254E68 00251DC8  90 BF 00 D0 */	stw r5, 0xd0(r31)
/* 80254E6C 00251DCC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80254E70 00251DD0  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254E74 00251DD4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80254E78 00251DD8  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80254E7C 00251DDC  98 1E 0A 31 */	stb r0, 0xa31(r30)
/* 80254E80 00251DE0  48 00 00 EC */	b lbl_80254F6C
lbl_80254E84:
/* 80254E84 00251DE4  88 1E 03 48 */	lbz r0, 0x348(r30)
/* 80254E88 00251DE8  38 60 00 01 */	li r3, 1
/* 80254E8C 00251DEC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80254E90 00251DF0  98 1E 03 48 */	stb r0, 0x348(r30)
/* 80254E94 00251DF4  48 00 00 D8 */	b lbl_80254F6C
lbl_80254E98:
/* 80254E98 00251DF8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80254E9C 00251DFC  38 80 00 01 */	li r4, 1
/* 80254EA0 00251E00  4B EE 5B 39 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80254EA4 00251E04  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254EA8 00251E08  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80254EAC 00251E0C  41 82 00 14 */	beq lbl_80254EC0
/* 80254EB0 00251E10  7F C3 F3 78 */	mr r3, r30
/* 80254EB4 00251E14  7F E4 FB 78 */	mr r4, r31
/* 80254EB8 00251E18  38 A0 00 01 */	li r5, 1
/* 80254EBC 00251E1C  48 00 1B B1 */	bl sub_80256a6c
lbl_80254EC0:
/* 80254EC0 00251E20  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254EC4 00251E24  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80254EC8 00251E28  41 82 00 0C */	beq lbl_80254ED4
/* 80254ECC 00251E2C  38 00 00 00 */	li r0, 0
/* 80254ED0 00251E30  90 1E 0C AC */	stw r0, 0xcac(r30)
lbl_80254ED4:
/* 80254ED4 00251E34  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254ED8 00251E38  38 A0 00 00 */	li r5, 0
/* 80254EDC 00251E3C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80254EE0 00251E40  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80254EE4 00251E44  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 80254EE8 00251E48  7F C3 F3 78 */	mr r3, r30
/* 80254EEC 00251E4C  7F E4 FB 78 */	mr r4, r31
/* 80254EF0 00251E50  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254EF4 00251E54  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80254EF8 00251E58  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 80254EFC 00251E5C  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 80254F00 00251E60  C0 3E 0C 68 */	lfs f1, 0xc68(r30)
/* 80254F04 00251E64  D0 26 00 00 */	stfs f1, 0(r6)
/* 80254F08 00251E68  C0 3E 0C 6C */	lfs f1, 0xc6c(r30)
/* 80254F0C 00251E6C  D0 26 00 04 */	stfs f1, 4(r6)
/* 80254F10 00251E70  C0 3E 0C 70 */	lfs f1, 0xc70(r30)
/* 80254F14 00251E74  D0 26 00 08 */	stfs f1, 8(r6)
/* 80254F18 00251E78  C0 3E 0C 68 */	lfs f1, 0xc68(r30)
/* 80254F1C 00251E7C  D0 3E 09 E4 */	stfs f1, 0x9e4(r30)
/* 80254F20 00251E80  C0 3E 0C 6C */	lfs f1, 0xc6c(r30)
/* 80254F24 00251E84  D0 3E 09 E8 */	stfs f1, 0x9e8(r30)
/* 80254F28 00251E88  C0 3E 0C 70 */	lfs f1, 0xc70(r30)
/* 80254F2C 00251E8C  D0 3E 09 EC */	stfs f1, 0x9ec(r30)
/* 80254F30 00251E90  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80254F34 00251E94  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 80254F38 00251E98  98 1E 0A 31 */	stb r0, 0xa31(r30)
/* 80254F3C 00251E9C  D0 1E 05 5C */	stfs f0, 0x55c(r30)
/* 80254F40 00251EA0  D0 1E 05 60 */	stfs f0, 0x560(r30)
/* 80254F44 00251EA4  D0 1E 05 64 */	stfs f0, 0x564(r30)
/* 80254F48 00251EA8  48 00 2A 0D */	bl sub_80257954
/* 80254F4C 00251EAC  C0 22 B9 38 */	lfs f1, lbl_805AD658@sda21(r2)
/* 80254F50 00251EB0  7F C3 F3 78 */	mr r3, r30
/* 80254F54 00251EB4  7F E4 FB 78 */	mr r4, r31
/* 80254F58 00251EB8  48 00 26 35 */	bl sub_8025758c
/* 80254F5C 00251EBC  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80254F60 00251EC0  38 60 00 00 */	li r3, 0
/* 80254F64 00251EC4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80254F68 00251EC8  98 1E 0A 32 */	stb r0, 0xa32(r30)
lbl_80254F6C:
/* 80254F6C 00251ECC  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 80254F70 00251ED0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80254F74 00251ED4  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 80254F78 00251ED8  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80254F7C 00251EDC  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80254F80 00251EE0  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80254F84 00251EE4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80254F88 00251EE8  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80254F8C 00251EEC  7C 08 03 A6 */	mtlr r0
/* 80254F90 00251EF0  38 21 01 00 */	addi r1, r1, 0x100
/* 80254F94 00251EF4  4E 80 00 20 */	blr

.global Enraged__7CRidleyFR13CStateManager9EStateMsgf
Enraged__7CRidleyFR13CStateManager9EStateMsgf:
/* 80254F98 00251EF8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80254F9C 00251EFC  7C 08 02 A6 */	mflr r0
/* 80254FA0 00251F00  90 01 01 34 */	stw r0, 0x134(r1)
/* 80254FA4 00251F04  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80254FA8 00251F08  F3 E1 01 28 */	psq_st f31, 296(r1), 0, qr0
/* 80254FAC 00251F0C  BF 41 01 08 */	stmw r26, 0x108(r1)
/* 80254FB0 00251F10  FF E0 08 90 */	fmr f31, f1
/* 80254FB4 00251F14  2C 05 00 01 */	cmpwi r5, 1
/* 80254FB8 00251F18  7C 7E 1B 78 */	mr r30, r3
/* 80254FBC 00251F1C  7C 9F 23 78 */	mr r31, r4
/* 80254FC0 00251F20  41 82 02 8C */	beq lbl_8025524C
/* 80254FC4 00251F24  40 80 00 10 */	bge lbl_80254FD4
/* 80254FC8 00251F28  2C 05 00 00 */	cmpwi r5, 0
/* 80254FCC 00251F2C  40 80 00 14 */	bge lbl_80254FE0
/* 80254FD0 00251F30  48 00 02 D8 */	b lbl_802552A8
lbl_80254FD4:
/* 80254FD4 00251F34  2C 05 00 03 */	cmpwi r5, 3
/* 80254FD8 00251F38  40 80 02 D0 */	bge lbl_802552A8
/* 80254FDC 00251F3C  48 00 02 B4 */	b lbl_80255290
lbl_80254FE0:
/* 80254FE0 00251F40  38 00 00 01 */	li r0, 1
/* 80254FE4 00251F44  7F E6 FB 78 */	mr r6, r31
/* 80254FE8 00251F48  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80254FEC 00251F4C  38 80 00 29 */	li r4, 0x29
/* 80254FF0 00251F50  38 A0 00 28 */	li r5, 0x28
/* 80254FF4 00251F54  4B DF F2 C1 */	bl AddMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80254FF8 00251F58  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80254FFC 00251F5C  38 61 00 34 */	addi r3, r1, 0x34
/* 80255000 00251F60  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80255004 00251F64  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80255008 00251F68  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8025500C 00251F6C  EC 44 08 28 */	fsubs f2, f4, f1
/* 80255010 00251F70  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80255014 00251F74  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80255018 00251F78  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8025501C 00251F7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80255020 00251F80  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80255024 00251F84  EC 65 18 28 */	fsubs f3, f5, f3
/* 80255028 00251F88  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 8025502C 00251F8C  D0 A1 00 80 */	stfs f5, 0x80(r1)
/* 80255030 00251F90  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80255034 00251F94  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80255038 00251F98  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 8025503C 00251F9C  48 0B F1 C5 */	bl __ct__9CVector2fFff
/* 80255040 00251FA0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80255044 00251FA4  38 81 00 34 */	addi r4, r1, 0x34
/* 80255048 00251FA8  48 0B F0 39 */	bl AsNormalized__9CVector2fCFv
/* 8025504C 00251FAC  C0 C1 00 3C */	lfs f6, 0x3c(r1)
/* 80255050 00251FB0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80255054 00251FB4  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 80255058 00251FB8  38 A3 66 F4 */	addi r5, r3, lbl_805A66F4@l
/* 8025505C 00251FBC  C0 62 B9 18 */	lfs f3, lbl_805AD638@sda21(r2)
/* 80255060 00251FC0  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80255064 00251FC4  C0 02 B9 68 */	lfs f0, lbl_805AD688@sda21(r2)
/* 80255068 00251FC8  38 63 4D 5C */	addi r3, r3, lbl_803D4D5C@l
/* 8025506C 00251FCC  D0 C1 00 A8 */	stfs f6, 0xa8(r1)
/* 80255070 00251FD0  38 83 00 85 */	addi r4, r3, 0x85
/* 80255074 00251FD4  ED 20 01 B2 */	fmuls f9, f0, f6
/* 80255078 00251FD8  C1 45 00 04 */	lfs f10, 4(r5)
/* 8025507C 00251FDC  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80255080 00251FE0  ED 00 01 32 */	fmuls f8, f0, f4
/* 80255084 00251FE4  C1 65 00 08 */	lfs f11, 8(r5)
/* 80255088 00251FE8  EC E0 00 F2 */	fmuls f7, f0, f3
/* 8025508C 00251FEC  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 80255090 00251FF0  EC 2A 00 F2 */	fmuls f1, f10, f3
/* 80255094 00251FF4  C1 85 00 00 */	lfs f12, 0(r5)
/* 80255098 00251FF8  EC 0B 01 B2 */	fmuls f0, f11, f6
/* 8025509C 00251FFC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 802550A0 00252000  3B A0 00 00 */	li r29, 0
/* 802550A4 00252004  EC 4C 01 32 */	fmuls f2, f12, f4
/* 802550A8 00252008  C0 A3 00 50 */	lfs f5, 0x50(r3)
/* 802550AC 0025200C  EC 24 0A F8 */	fmsubs f1, f4, f11, f1
/* 802550B0 00252010  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 802550B4 00252014  EC 03 03 38 */	fmsubs f0, f3, f12, f0
/* 802550B8 00252018  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 802550BC 0025201C  EC A5 40 28 */	fsubs f5, f5, f8
/* 802550C0 00252020  3B 40 00 00 */	li r26, 0
/* 802550C4 00252024  EC 84 38 28 */	fsubs f4, f4, f7
/* 802550C8 00252028  38 60 01 00 */	li r3, 0x100
/* 802550CC 0025202C  EC 63 48 28 */	fsubs f3, f3, f9
/* 802550D0 00252030  38 A0 00 00 */	li r5, 0
/* 802550D4 00252034  D0 A1 00 A0 */	stfs f5, 0xa0(r1)
/* 802550D8 00252038  EC A6 12 B8 */	fmsubs f5, f6, f10, f2
/* 802550DC 0025203C  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 802550E0 00252040  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 802550E4 00252044  C0 9E 0A B0 */	lfs f4, 0xab0(r30)
/* 802550E8 00252048  C0 7E 0A A0 */	lfs f3, 0xaa0(r30)
/* 802550EC 0025204C  C0 5E 0A 90 */	lfs f2, 0xa90(r30)
/* 802550F0 00252050  D0 61 00 70 */	stfs f3, 0x70(r1)
/* 802550F4 00252054  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 802550F8 00252058  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 802550FC 0025205C  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 80255100 00252060  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80255104 00252064  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80255108 00252068  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 8025510C 0025206C  48 0C 07 61 */	bl __nw__FUlPCcPCc
/* 80255110 00252070  7C 7B 1B 79 */	or. r27, r3, r3
/* 80255114 00252074  41 82 00 C8 */	beq lbl_802551DC
/* 80255118 00252078  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 8025511C 0025207C  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80255120 00252080  38 83 4D 5C */	addi r4, r3, lbl_803D4D5C@l
/* 80255124 00252084  38 61 00 50 */	addi r3, r1, 0x50
/* 80255128 00252088  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8025512C 0025208C  38 84 00 8C */	addi r4, r4, 0x8c
/* 80255130 00252090  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80255134 00252094  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80255138 00252098  4B DA FB 81 */	bl string_l__4rstlFPCc
/* 8025513C 0025209C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 80255140 002520A0  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 80255144 002520A4  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 80255148 002520A8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8025514C 002520AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80255150 002520B0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80255154 002520B4  38 C1 00 30 */	addi r6, r1, 0x30
/* 80255158 002520B8  3B A0 00 01 */	li r29, 1
/* 8025515C 002520BC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80255160 002520C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80255164 002520C4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80255168 002520C8  4B DF C3 1D */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8025516C 002520CC  7F E4 FB 78 */	mr r4, r31
/* 80255170 002520D0  38 61 00 10 */	addi r3, r1, 0x10
/* 80255174 002520D4  3B 40 00 01 */	li r26, 1
/* 80255178 002520D8  4B DF 7F 65 */	bl AllocateUniqueId__13CStateManagerFv
/* 8025517C 002520DC  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80255180 002520E0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80255184 002520E4  48 0F 4E 29 */	bl White__6CColorFv
/* 80255188 002520E8  3C 80 80 5A */	lis r4, lbl_805A66F4@ha
/* 8025518C 002520EC  7C 7C 1B 78 */	mr r28, r3
/* 80255190 002520F0  38 C4 66 F4 */	addi r6, r4, lbl_805A66F4@l
/* 80255194 002520F4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80255198 002520F8  38 81 00 90 */	addi r4, r1, 0x90
/* 8025519C 002520FC  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 802551A0 00252100  38 E1 00 9C */	addi r7, r1, 0x9c
/* 802551A4 00252104  48 0B DC B9 */	bl __ct__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f_0
/* 802551A8 00252108  38 01 00 60 */	addi r0, r1, 0x60
/* 802551AC 0025210C  7F 63 DB 78 */	mr r3, r27
/* 802551B0 00252110  90 01 00 08 */	stw r0, 8(r1)
/* 802551B4 00252114  38 9E 09 8C */	addi r4, r30, 0x98c
/* 802551B8 00252118  38 A1 00 14 */	addi r5, r1, 0x14
/* 802551BC 0025211C  38 E1 00 B4 */	addi r7, r1, 0xb4
/* 802551C0 00252120  93 81 00 0C */	stw r28, 0xc(r1)
/* 802551C4 00252124  39 01 00 50 */	addi r8, r1, 0x50
/* 802551C8 00252128  39 21 00 CC */	addi r9, r1, 0xcc
/* 802551CC 0025212C  38 C0 00 01 */	li r6, 1
/* 802551D0 00252130  39 40 00 00 */	li r10, 0
/* 802551D4 00252134  4B E0 59 25 */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 802551D8 00252138  7C 7B 1B 78 */	mr r27, r3
lbl_802551DC:
/* 802551DC 0025213C  7F 40 07 75 */	extsb. r0, r26
/* 802551E0 00252140  41 82 00 44 */	beq lbl_80255224
/* 802551E4 00252144  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 802551E8 00252148  80 61 00 C4 */	lwz r3, 0xc4(r1)
/* 802551EC 0025214C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802551F0 00252150  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802551F4 00252154  7C 64 1B 78 */	mr r4, r3
/* 802551F8 00252158  7C 03 02 14 */	add r0, r3, r0
/* 802551FC 0025215C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80255200 00252160  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255204 00252164  90 01 00 20 */	stw r0, 0x20(r1)
/* 80255208 00252168  48 00 00 08 */	b lbl_80255210
lbl_8025520C:
/* 8025520C 0025216C  38 84 00 0C */	addi r4, r4, 0xc
lbl_80255210:
/* 80255210 00252170  7C 04 00 40 */	cmplw r4, r0
/* 80255214 00252174  40 82 FF F8 */	bne lbl_8025520C
/* 80255218 00252178  28 03 00 00 */	cmplwi r3, 0
/* 8025521C 0025217C  41 82 00 08 */	beq lbl_80255224
/* 80255220 00252180  48 0C 07 11 */	bl Free__7CMemoryFPCv
lbl_80255224:
/* 80255224 00252184  7F A0 07 75 */	extsb. r0, r29
/* 80255228 00252188  41 82 00 0C */	beq lbl_80255234
/* 8025522C 0025218C  38 61 00 50 */	addi r3, r1, 0x50
/* 80255230 00252190  48 0E 88 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80255234:
/* 80255234 00252194  28 1B 00 00 */	cmplwi r27, 0
/* 80255238 00252198  41 82 00 70 */	beq lbl_802552A8
/* 8025523C 0025219C  7F E3 FB 78 */	mr r3, r31
/* 80255240 002521A0  7F 64 DB 78 */	mr r4, r27
/* 80255244 002521A4  4B DF 78 D1 */	bl AddObject__13CStateManagerFR7CEntity
/* 80255248 002521A8  48 00 00 60 */	b lbl_802552A8
lbl_8025524C:
/* 8025524C 002521AC  3C A0 80 3F */	lis r5, lbl_803E91D4@ha
/* 80255250 002521B0  38 C1 00 44 */	addi r6, r1, 0x44
/* 80255254 002521B4  39 45 91 D4 */	addi r10, r5, lbl_803E91D4@l
/* 80255258 002521B8  38 A0 00 03 */	li r5, 3
/* 8025525C 002521BC  81 2A 00 00 */	lwz r9, 0(r10)
/* 80255260 002521C0  38 E0 00 04 */	li r7, 4
/* 80255264 002521C4  81 0A 00 04 */	lwz r8, 4(r10)
/* 80255268 002521C8  80 0A 00 08 */	lwz r0, 8(r10)
/* 8025526C 002521CC  91 21 00 44 */	stw r9, 0x44(r1)
/* 80255270 002521D0  91 01 00 48 */	stw r8, 0x48(r1)
/* 80255274 002521D4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80255278 002521D8  4B E2 75 3D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8025527C 002521DC  FC 20 F8 90 */	fmr f1, f31
/* 80255280 002521E0  7F C3 F3 78 */	mr r3, r30
/* 80255284 002521E4  7F E4 FB 78 */	mr r4, r31
/* 80255288 002521E8  48 00 0C C9 */	bl sub_80255f50
/* 8025528C 002521EC  48 00 00 1C */	b lbl_802552A8
lbl_80255290:
/* 80255290 002521F0  38 00 00 00 */	li r0, 0
/* 80255294 002521F4  38 60 00 01 */	li r3, 1
/* 80255298 002521F8  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 8025529C 002521FC  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802552A0 00252200  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 802552A4 00252204  98 1E 0A 33 */	stb r0, 0xa33(r30)
lbl_802552A8:
/* 802552A8 00252208  E3 E1 01 28 */	psq_l f31, 296(r1), 0, qr0
/* 802552AC 0025220C  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 802552B0 00252210  BB 41 01 08 */	lmw r26, 0x108(r1)
/* 802552B4 00252214  80 01 01 34 */	lwz r0, 0x134(r1)
/* 802552B8 00252218  7C 08 03 A6 */	mtlr r0
/* 802552BC 0025221C  38 21 01 30 */	addi r1, r1, 0x130
/* 802552C0 00252220  4E 80 00 20 */	blr

.global Lurk__7CRidleyFR13CStateManager9EStateMsgf
Lurk__7CRidleyFR13CStateManager9EStateMsgf:
/* 802552C4 00252224  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802552C8 00252228  7C 08 02 A6 */	mflr r0
/* 802552CC 0025222C  90 01 01 04 */	stw r0, 0x104(r1)
/* 802552D0 00252230  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 802552D4 00252234  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, qr0
/* 802552D8 00252238  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 802552DC 0025223C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, qr0
/* 802552E0 00252240  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 802552E4 00252244  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 802552E8 00252248  FF C0 08 90 */	fmr f30, f1
/* 802552EC 0025224C  2C 05 00 01 */	cmpwi r5, 1
/* 802552F0 00252250  7C 7E 1B 78 */	mr r30, r3
/* 802552F4 00252254  7C 9F 23 78 */	mr r31, r4
/* 802552F8 00252258  41 82 02 78 */	beq lbl_80255570
/* 802552FC 0025225C  40 80 02 D8 */	bge lbl_802555D4
/* 80255300 00252260  2C 05 00 00 */	cmpwi r5, 0
/* 80255304 00252264  40 80 00 0C */	bge lbl_80255310
/* 80255308 00252268  48 00 02 CC */	b lbl_802555D4
/* 8025530C 0025226C  48 00 02 C8 */	b lbl_802555D4
lbl_80255310:
/* 80255310 00252270  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80255314 00252274  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80255318 00252278  40 82 00 C4 */	bne lbl_802553DC
/* 8025531C 0025227C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80255320 00252280  38 61 00 64 */	addi r3, r1, 0x64
/* 80255324 00252284  C0 1E 0A B0 */	lfs f0, 0xab0(r30)
/* 80255328 00252288  38 81 00 94 */	addi r4, r1, 0x94
/* 8025532C 0025228C  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80255330 00252290  C0 7E 0A A0 */	lfs f3, 0xaa0(r30)
/* 80255334 00252294  EC A1 00 28 */	fsubs f5, f1, f0
/* 80255338 00252298  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8025533C 0025229C  C0 3E 0A 90 */	lfs f1, 0xa90(r30)
/* 80255340 002522A0  EC 64 18 28 */	fsubs f3, f4, f3
/* 80255344 002522A4  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80255348 002522A8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8025534C 002522AC  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 80255350 002522B0  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 80255354 002522B4  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80255358 002522B8  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8025535C 002522BC  C0 5E 0A A8 */	lfs f2, 0xaa8(r30)
/* 80255360 002522C0  C0 3E 0A 98 */	lfs f1, 0xa98(r30)
/* 80255364 002522C4  C0 1E 0A 88 */	lfs f0, 0xa88(r30)
/* 80255368 002522C8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8025536C 002522CC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80255370 002522D0  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80255374 002522D4  48 0B F2 BD */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 80255378 002522D8  C0 41 00 98 */	lfs f2, 0x98(r1)
/* 8025537C 002522DC  FF C0 08 90 */	fmr f30, f1
/* 80255380 002522E0  C0 1E 0A 94 */	lfs f0, 0xa94(r30)
/* 80255384 002522E4  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 80255388 002522E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8025538C 002522EC  C0 5E 0A 84 */	lfs f2, 0xa84(r30)
/* 80255390 002522F0  C0 A1 00 9C */	lfs f5, 0x9c(r1)
/* 80255394 002522F4  C0 9E 0A A4 */	lfs f4, 0xaa4(r30)
/* 80255398 002522F8  EC 23 00 BA */	fmadds f1, f3, f2, f0
/* 8025539C 002522FC  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802553A0 00252300  EC 25 09 3A */	fmadds f1, f5, f4, f1
/* 802553A4 00252304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802553A8 00252308  40 80 00 08 */	bge lbl_802553B0
/* 802553AC 0025230C  FF C0 F0 50 */	fneg f30, f30
lbl_802553B0:
/* 802553B0 00252310  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 802553B4 00252314  C0 22 B9 6C */	lfs f1, lbl_805AD68C@sda21(r2)
/* 802553B8 00252318  C0 42 B9 70 */	lfs f2, lbl_805AD690@sda21(r2)
/* 802553BC 0025231C  48 0B D1 89 */	bl Range__9CRandom16Fff
/* 802553C0 00252320  EC 41 F0 28 */	fsubs f2, f1, f30
/* 802553C4 00252324  C0 02 B9 74 */	lfs f0, lbl_805AD694@sda21(r2)
/* 802553C8 00252328  FC 40 12 10 */	fabs f2, f2
/* 802553CC 0025232C  FC 40 10 18 */	frsp f2, f2
/* 802553D0 00252330  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802553D4 00252334  40 80 00 24 */	bge lbl_802553F8
/* 802553D8 00252338  48 00 00 20 */	b lbl_802553F8
lbl_802553DC:
/* 802553DC 0025233C  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 802553E0 00252340  38 A0 00 01 */	li r5, 1
/* 802553E4 00252344  4B F5 1F 15 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 802553E8 00252348  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 802553EC 0025234C  7F E4 FB 78 */	mr r4, r31
/* 802553F0 00252350  38 A0 00 01 */	li r5, 1
/* 802553F4 00252354  4B F5 1F 05 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_802553F8:
/* 802553F8 00252358  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 802553FC 0025235C  38 60 00 00 */	li r3, 0
/* 80255400 00252360  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80255404 00252364  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80255408 00252368  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 8025540C 0025236C  C0 5E 0A C0 */	lfs f2, 0xac0(r30)
/* 80255410 00252370  C0 1E 0A DC */	lfs f0, 0xadc(r30)
/* 80255414 00252374  EF C2 00 28 */	fsubs f30, f2, f0
/* 80255418 00252378  48 0B F9 2D */	bl FastCosR__5CMathFf
/* 8025541C 0025237C  C0 1E 0A BC */	lfs f0, 0xabc(r30)
/* 80255420 00252380  EF E0 00 72 */	fmuls f31, f0, f1
/* 80255424 00252384  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80255428 00252388  48 0B F9 C9 */	bl FastSinR__5CMathFf
/* 8025542C 0025238C  C0 1E 0A BC */	lfs f0, 0xabc(r30)
/* 80255430 00252390  38 61 00 58 */	addi r3, r1, 0x58
/* 80255434 00252394  38 9E 0A 84 */	addi r4, r30, 0xa84
/* 80255438 00252398  38 A1 00 88 */	addi r5, r1, 0x88
/* 8025543C 0025239C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80255440 002523A0  D3 E1 00 8C */	stfs f31, 0x8c(r1)
/* 80255444 002523A4  D3 C1 00 90 */	stfs f30, 0x90(r1)
/* 80255448 002523A8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8025544C 002523AC  48 0B D6 9D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80255450 002523B0  7F C3 F3 78 */	mr r3, r30
/* 80255454 002523B4  38 81 00 58 */	addi r4, r1, 0x58
/* 80255458 002523B8  4B E2 77 05 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 8025545C 002523BC  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80255460 002523C0  38 61 00 08 */	addi r3, r1, 8
/* 80255464 002523C4  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80255468 002523C8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8025546C 002523CC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80255470 002523D0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80255474 002523D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80255478 002523D8  48 0B ED 89 */	bl __ct__9CVector2fFff
/* 8025547C 002523DC  C0 41 00 08 */	lfs f2, 8(r1)
/* 80255480 002523E0  38 61 00 4C */	addi r3, r1, 0x4c
/* 80255484 002523E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80255488 002523E8  38 81 00 40 */	addi r4, r1, 0x40
/* 8025548C 002523EC  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80255490 002523F0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80255494 002523F4  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80255498 002523F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8025549C 002523FC  48 0B F3 B5 */	bl AsNormalized__9CVector3fCFv
/* 802554A0 00252400  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 802554A4 00252404  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 802554A8 00252408  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 802554AC 0025240C  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 802554B0 00252410  C0 61 00 54 */	lfs f3, 0x54(r1)
/* 802554B4 00252414  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802554B8 00252418  C0 C6 00 04 */	lfs f6, 4(r6)
/* 802554BC 0025241C  38 81 00 70 */	addi r4, r1, 0x70
/* 802554C0 00252420  C0 E6 00 08 */	lfs f7, 8(r6)
/* 802554C4 00252424  38 A1 00 7C */	addi r5, r1, 0x7c
/* 802554C8 00252428  C1 06 00 00 */	lfs f8, 0(r6)
/* 802554CC 0025242C  EC 26 00 F2 */	fmuls f1, f6, f3
/* 802554D0 00252430  EC 07 01 72 */	fmuls f0, f7, f5
/* 802554D4 00252434  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 802554D8 00252438  EC 48 01 32 */	fmuls f2, f8, f4
/* 802554DC 0025243C  38 E1 00 28 */	addi r7, r1, 0x28
/* 802554E0 00252440  EC 24 09 F8 */	fmsubs f1, f4, f7, f1
/* 802554E4 00252444  EC 03 02 38 */	fmsubs f0, f3, f8, f0
/* 802554E8 00252448  EC 45 11 B8 */	fmsubs f2, f5, f6, f2
/* 802554EC 0025244C  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 802554F0 00252450  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 802554F4 00252454  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 802554F8 00252458  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 802554FC 0025245C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80255500 00252460  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80255504 00252464  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80255508 00252468  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8025550C 0025246C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80255510 00252470  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80255514 00252474  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80255518 00252478  48 0B D9 45 */	bl __ct__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f_0
/* 8025551C 0025247C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80255520 00252480  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80255524 00252484  48 0B D6 1D */	bl __as__12CTransform4fFRC12CTransform4f
/* 80255528 00252488  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8025552C 0025248C  38 80 00 01 */	li r4, 1
/* 80255530 00252490  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80255534 00252494  38 60 00 00 */	li r3, 0
/* 80255538 00252498  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 8025553C 0025249C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80255540 002524A0  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80255544 002524A4  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 80255548 002524A8  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 8025554C 002524AC  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80255550 002524B0  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 80255554 002524B4  88 1E 0A 33 */	lbz r0, 0xa33(r30)
/* 80255558 002524B8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8025555C 002524BC  98 1E 0A 33 */	stb r0, 0xa33(r30)
/* 80255560 002524C0  88 1E 0A 34 */	lbz r0, 0xa34(r30)
/* 80255564 002524C4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80255568 002524C8  98 1E 0A 34 */	stb r0, 0xa34(r30)
/* 8025556C 002524CC  48 00 00 68 */	b lbl_802555D4
lbl_80255570:
/* 80255570 002524D0  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80255574 002524D4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80255578 002524D8  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8025557C 002524DC  38 81 00 10 */	addi r4, r1, 0x10
/* 80255580 002524E0  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 80255584 002524E4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80255588 002524E8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8025558C 002524EC  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 80255590 002524F0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80255594 002524F4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80255598 002524F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8025559C 002524FC  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 802555A0 00252500  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802555A4 00252504  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802555A8 00252508  48 0B F2 A9 */	bl AsNormalized__9CVector3fCFv
/* 802555AC 0025250C  FC 40 F0 90 */	fmr f2, f30
/* 802555B0 00252510  C0 22 B9 48 */	lfs f1, lbl_805AD668@sda21(r2)
/* 802555B4 00252514  7F C3 F3 78 */	mr r3, r30
/* 802555B8 00252518  38 81 00 1C */	addi r4, r1, 0x1c
/* 802555BC 0025251C  48 00 0A 2D */	bl sub_80255fe8
/* 802555C0 00252520  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 802555C4 00252524  7F C3 F3 78 */	mr r3, r30
/* 802555C8 00252528  7F E4 FB 78 */	mr r4, r31
/* 802555CC 0025252C  EC 20 07 B2 */	fmuls f1, f0, f30
/* 802555D0 00252530  48 00 09 81 */	bl sub_80255f50
lbl_802555D4:
/* 802555D4 00252534  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, qr0
/* 802555D8 00252538  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 802555DC 0025253C  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, qr0
/* 802555E0 00252540  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 802555E4 00252544  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 802555E8 00252548  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802555EC 0025254C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 802555F0 00252550  7C 08 03 A6 */	mtlr r0
/* 802555F4 00252554  38 21 01 00 */	addi r1, r1, 0x100
/* 802555F8 00252558  4E 80 00 20 */	blr

.global Retreat__7CRidleyFR13CStateManager9EStateMsgf
Retreat__7CRidleyFR13CStateManager9EStateMsgf:
/* 802555FC 0025255C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255600 00252560  7C 08 02 A6 */	mflr r0
/* 80255604 00252564  2C 05 00 01 */	cmpwi r5, 1
/* 80255608 00252568  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025560C 0025256C  41 82 00 2C */	beq lbl_80255638
/* 80255610 00252570  40 80 00 10 */	bge lbl_80255620
/* 80255614 00252574  2C 05 00 00 */	cmpwi r5, 0
/* 80255618 00252578  40 80 00 14 */	bge lbl_8025562C
/* 8025561C 0025257C  48 00 00 58 */	b lbl_80255674
lbl_80255620:
/* 80255620 00252580  2C 05 00 03 */	cmpwi r5, 3
/* 80255624 00252584  40 80 00 50 */	bge lbl_80255674
/* 80255628 00252588  48 00 00 44 */	b lbl_8025566C
lbl_8025562C:
/* 8025562C 0025258C  38 00 00 01 */	li r0, 1
/* 80255630 00252590  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80255634 00252594  48 00 00 40 */	b lbl_80255674
lbl_80255638:
/* 80255638 00252598  3C A0 80 3F */	lis r5, lbl_803E91C8@ha
/* 8025563C 0025259C  38 C1 00 08 */	addi r6, r1, 8
/* 80255640 002525A0  39 45 91 C8 */	addi r10, r5, lbl_803E91C8@l
/* 80255644 002525A4  38 A0 00 03 */	li r5, 3
/* 80255648 002525A8  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025564C 002525AC  38 E0 00 05 */	li r7, 5
/* 80255650 002525B0  81 0A 00 04 */	lwz r8, 4(r10)
/* 80255654 002525B4  80 0A 00 08 */	lwz r0, 8(r10)
/* 80255658 002525B8  91 21 00 08 */	stw r9, 8(r1)
/* 8025565C 002525BC  91 01 00 0C */	stw r8, 0xc(r1)
/* 80255660 002525C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80255664 002525C4  4B E2 71 51 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80255668 002525C8  48 00 00 0C */	b lbl_80255674
lbl_8025566C:
/* 8025566C 002525CC  38 00 00 00 */	li r0, 0
/* 80255670 002525D0  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_80255674:
/* 80255674 002525D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80255678 002525D8  7C 08 03 A6 */	mtlr r0
/* 8025567C 002525DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80255680 002525E0  4E 80 00 20 */	blr

.global Flee__7CRidleyFR13CStateManager9EStateMsgf
Flee__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255684 002525E4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80255688 002525E8  7C 08 02 A6 */	mflr r0
/* 8025568C 002525EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80255690 002525F0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80255694 002525F4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80255698 002525F8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8025569C 002525FC  FF E0 08 90 */	fmr f31, f1
/* 802556A0 00252600  2C 05 00 01 */	cmpwi r5, 1
/* 802556A4 00252604  7C 7F 1B 78 */	mr r31, r3
/* 802556A8 00252608  41 82 00 C4 */	beq lbl_8025576C
/* 802556AC 0025260C  40 80 01 38 */	bge lbl_802557E4
/* 802556B0 00252610  2C 05 00 00 */	cmpwi r5, 0
/* 802556B4 00252614  40 80 00 0C */	bge lbl_802556C0
/* 802556B8 00252618  48 00 01 2C */	b lbl_802557E4
/* 802556BC 0025261C  48 00 01 28 */	b lbl_802557E4
lbl_802556C0:
/* 802556C0 00252620  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802556C4 00252624  38 61 00 2C */	addi r3, r1, 0x2c
/* 802556C8 00252628  C0 1F 0A A0 */	lfs f0, 0xaa0(r31)
/* 802556CC 0025262C  38 81 00 50 */	addi r4, r1, 0x50
/* 802556D0 00252630  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 802556D4 00252634  C0 5F 0A B0 */	lfs f2, 0xab0(r31)
/* 802556D8 00252638  EC 81 00 28 */	fsubs f4, f1, f0
/* 802556DC 0025263C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 802556E0 00252640  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 802556E4 00252644  EC 43 10 28 */	fsubs f2, f3, f2
/* 802556E8 00252648  EC 01 00 28 */	fsubs f0, f1, f0
/* 802556EC 0025264C  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 802556F0 00252650  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 802556F4 00252654  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802556F8 00252658  48 0B F1 59 */	bl AsNormalized__9CVector3fCFv
/* 802556FC 0025265C  C0 22 B9 78 */	lfs f1, lbl_805AD698@sda21(r2)
/* 80255700 00252660  7F E3 FB 78 */	mr r3, r31
/* 80255704 00252664  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 80255708 00252668  38 81 00 44 */	addi r4, r1, 0x44
/* 8025570C 0025266C  C0 BF 0A A0 */	lfs f5, 0xaa0(r31)
/* 80255710 00252670  EC C1 00 2A */	fadds f6, f1, f0
/* 80255714 00252674  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80255718 00252678  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8025571C 0025267C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80255720 00252680  EC 86 00 B2 */	fmuls f4, f6, f2
/* 80255724 00252684  C0 7F 0A B0 */	lfs f3, 0xab0(r31)
/* 80255728 00252688  EC 46 00 72 */	fmuls f2, f6, f1
/* 8025572C 0025268C  C0 3F 0A 90 */	lfs f1, 0xa90(r31)
/* 80255730 00252690  EC 06 00 32 */	fmuls f0, f6, f0
/* 80255734 00252694  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80255738 00252698  EC 85 20 2A */	fadds f4, f5, f4
/* 8025573C 0025269C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80255740 002526A0  EC 43 10 2A */	fadds f2, f3, f2
/* 80255744 002526A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80255748 002526A8  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8025574C 002526AC  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80255750 002526B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80255754 002526B4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80255758 002526B8  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8025575C 002526BC  EC 00 18 2A */	fadds f0, f0, f3
/* 80255760 002526C0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80255764 002526C4  4B E2 73 F9 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80255768 002526C8  48 00 00 7C */	b lbl_802557E4
lbl_8025576C:
/* 8025576C 002526CC  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 80255770 002526D0  38 61 00 14 */	addi r3, r1, 0x14
/* 80255774 002526D4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80255778 002526D8  38 81 00 08 */	addi r4, r1, 8
/* 8025577C 002526DC  C0 7F 02 E8 */	lfs f3, 0x2e8(r31)
/* 80255780 002526E0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80255784 002526E4  EC 81 00 28 */	fsubs f4, f1, f0
/* 80255788 002526E8  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 8025578C 002526EC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80255790 002526F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80255794 002526F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80255798 002526F8  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8025579C 002526FC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802557A0 00252700  D0 01 00 08 */	stfs f0, 8(r1)
/* 802557A4 00252704  48 0B F0 AD */	bl AsNormalized__9CVector3fCFv
/* 802557A8 00252708  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 802557AC 0025270C  FC 40 F8 90 */	fmr f2, f31
/* 802557B0 00252710  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 802557B4 00252714  7F E3 FB 78 */	mr r3, r31
/* 802557B8 00252718  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802557BC 0025271C  38 81 00 38 */	addi r4, r1, 0x38
/* 802557C0 00252720  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 802557C4 00252724  C0 22 B9 48 */	lfs f1, lbl_805AD668@sda21(r2)
/* 802557C8 00252728  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 802557CC 0025272C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802557D0 00252730  48 00 08 19 */	bl sub_80255fe8
/* 802557D4 00252734  FC 20 F8 90 */	fmr f1, f31
/* 802557D8 00252738  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802557DC 0025273C  38 81 00 38 */	addi r4, r1, 0x38
/* 802557E0 00252740  4B EE 4E C5 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_802557E4:
/* 802557E4 00252744  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 802557E8 00252748  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802557EC 0025274C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 802557F0 00252750  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802557F4 00252754  7C 08 03 A6 */	mtlr r0
/* 802557F8 00252758  38 21 00 80 */	addi r1, r1, 0x80
/* 802557FC 0025275C  4E 80 00 20 */	blr

.global TelegraphAttack__7CRidleyFR13CStateManager9EStateMsgf
TelegraphAttack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255800 00252760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255804 00252764  7C 08 02 A6 */	mflr r0
/* 80255808 00252768  2C 05 00 01 */	cmpwi r5, 1
/* 8025580C 0025276C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255810 00252770  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80255814 00252774  7C 9F 23 78 */	mr r31, r4
/* 80255818 00252778  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025581C 0025277C  7C 7E 1B 78 */	mr r30, r3
/* 80255820 00252780  41 82 00 48 */	beq lbl_80255868
/* 80255824 00252784  40 80 00 10 */	bge lbl_80255834
/* 80255828 00252788  2C 05 00 00 */	cmpwi r5, 0
/* 8025582C 0025278C  40 80 00 14 */	bge lbl_80255840
/* 80255830 00252790  48 00 00 A0 */	b lbl_802558D0
lbl_80255834:
/* 80255834 00252794  2C 05 00 03 */	cmpwi r5, 3
/* 80255838 00252798  40 80 00 98 */	bge lbl_802558D0
/* 8025583C 0025279C  48 00 00 60 */	b lbl_8025589C
lbl_80255840:
/* 80255840 002527A0  48 00 20 0D */	bl sub_8025784c
/* 80255844 002527A4  38 A0 00 01 */	li r5, 1
/* 80255848 002527A8  7F C3 F3 78 */	mr r3, r30
/* 8025584C 002527AC  90 BE 03 2C */	stw r5, 0x32c(r30)
/* 80255850 002527B0  7F E4 FB 78 */	mr r4, r31
/* 80255854 002527B4  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80255858 002527B8  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8025585C 002527BC  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 80255860 002527C0  48 00 0D 21 */	bl sub_80256580
/* 80255864 002527C4  48 00 00 6C */	b lbl_802558D0
lbl_80255868:
/* 80255868 002527C8  3C A0 80 3F */	lis r5, lbl_803E91BC@ha
/* 8025586C 002527CC  38 C1 00 08 */	addi r6, r1, 8
/* 80255870 002527D0  39 45 91 BC */	addi r10, r5, lbl_803E91BC@l
/* 80255874 002527D4  38 A0 00 12 */	li r5, 0x12
/* 80255878 002527D8  81 2A 00 00 */	lwz r9, 0(r10)
/* 8025587C 002527DC  38 E0 00 00 */	li r7, 0
/* 80255880 002527E0  81 0A 00 04 */	lwz r8, 4(r10)
/* 80255884 002527E4  80 0A 00 08 */	lwz r0, 8(r10)
/* 80255888 002527E8  91 21 00 08 */	stw r9, 8(r1)
/* 8025588C 002527EC  91 01 00 0C */	stw r8, 0xc(r1)
/* 80255890 002527F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80255894 002527F4  4B E2 6F 21 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80255898 002527F8  48 00 00 38 */	b lbl_802558D0
lbl_8025589C:
/* 8025589C 002527FC  38 00 00 00 */	li r0, 0
/* 802558A0 00252800  38 A0 00 01 */	li r5, 1
/* 802558A4 00252804  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 802558A8 00252808  48 00 11 C5 */	bl sub_80256a6c
/* 802558AC 0025280C  7F C3 F3 78 */	mr r3, r30
/* 802558B0 00252810  7F E4 FB 78 */	mr r4, r31
/* 802558B4 00252814  48 00 1D 9D */	bl sub_80257650
/* 802558B8 00252818  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 802558BC 0025281C  38 60 00 00 */	li r3, 0
/* 802558C0 00252820  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802558C4 00252824  7F C3 F3 78 */	mr r3, r30
/* 802558C8 00252828  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 802558CC 0025282C  48 00 0C B1 */	bl nullsub_53
lbl_802558D0:
/* 802558D0 00252830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802558D4 00252834  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802558D8 00252838  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802558DC 0025283C  7C 08 03 A6 */	mtlr r0
/* 802558E0 00252840  38 21 00 20 */	addi r1, r1, 0x20
/* 802558E4 00252844  4E 80 00 20 */	blr

.global Attack__7CRidleyFR13CStateManager9EStateMsgf
Attack__7CRidleyFR13CStateManager9EStateMsgf:
/* 802558E8 00252848  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802558EC 0025284C  7C 08 02 A6 */	mflr r0
/* 802558F0 00252850  90 01 00 34 */	stw r0, 0x34(r1)
/* 802558F4 00252854  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802558F8 00252858  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802558FC 0025285C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80255900 00252860  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80255904 00252864  FF E0 08 90 */	fmr f31, f1
/* 80255908 00252868  2C 05 00 01 */	cmpwi r5, 1
/* 8025590C 0025286C  7C 7E 1B 78 */	mr r30, r3
/* 80255910 00252870  7C 9F 23 78 */	mr r31, r4
/* 80255914 00252874  41 82 00 EC */	beq lbl_80255A00
/* 80255918 00252878  40 80 00 10 */	bge lbl_80255928
/* 8025591C 0025287C  2C 05 00 00 */	cmpwi r5, 0
/* 80255920 00252880  40 80 00 14 */	bge lbl_80255934
/* 80255924 00252884  48 00 01 C0 */	b lbl_80255AE4
lbl_80255928:
/* 80255928 00252888  2C 05 00 03 */	cmpwi r5, 3
/* 8025592C 0025288C  40 80 01 B8 */	bge lbl_80255AE4
/* 80255930 00252890  48 00 01 94 */	b lbl_80255AC4
lbl_80255934:
/* 80255934 00252894  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80255938 00252898  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 8025593C 0025289C  38 83 66 F4 */	addi r4, r3, lbl_805A66F4@l
/* 80255940 002528A0  C0 82 B9 7C */	lfs f4, lbl_805AD69C@sda21(r2)
/* 80255944 002528A4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80255948 002528A8  38 60 00 01 */	li r3, 1
/* 8025594C 002528AC  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80255950 002528B0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80255954 002528B4  EC 04 00 32 */	fmuls f0, f4, f0
/* 80255958 002528B8  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 8025595C 002528BC  EC 22 08 2A */	fadds f1, f2, f1
/* 80255960 002528C0  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80255964 002528C4  C0 C5 00 50 */	lfs f6, 0x50(r5)
/* 80255968 002528C8  EC A4 00 F2 */	fmuls f5, f4, f3
/* 8025596C 002528CC  C0 64 00 04 */	lfs f3, 4(r4)
/* 80255970 002528D0  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80255974 002528D4  EC C6 18 2A */	fadds f6, f6, f3
/* 80255978 002528D8  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 8025597C 002528DC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80255980 002528E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80255984 002528E4  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80255988 002528E8  EC 64 18 2A */	fadds f3, f4, f3
/* 8025598C 002528EC  EC 86 28 28 */	fsubs f4, f6, f5
/* 80255990 002528F0  D0 1E 0B E4 */	stfs f0, 0xbe4(r30)
/* 80255994 002528F4  C0 02 B9 80 */	lfs f0, lbl_805AD6A0@sda21(r2)
/* 80255998 002528F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8025599C 002528FC  D0 9E 0B E8 */	stfs f4, 0xbe8(r30)
/* 802559A0 00252900  D0 5E 0B EC */	stfs f2, 0xbec(r30)
/* 802559A4 00252904  C0 9E 00 54 */	lfs f4, 0x54(r30)
/* 802559A8 00252908  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 802559AC 0025290C  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 802559B0 00252910  D0 5E 0B F0 */	stfs f2, 0xbf0(r30)
/* 802559B4 00252914  D0 7E 0B F4 */	stfs f3, 0xbf4(r30)
/* 802559B8 00252918  D0 9E 0B F8 */	stfs f4, 0xbf8(r30)
/* 802559BC 0025291C  C0 5E 0B F0 */	lfs f2, 0xbf0(r30)
/* 802559C0 00252920  D0 5E 0B FC */	stfs f2, 0xbfc(r30)
/* 802559C4 00252924  C0 5E 0B F4 */	lfs f2, 0xbf4(r30)
/* 802559C8 00252928  D0 5E 0C 00 */	stfs f2, 0xc00(r30)
/* 802559CC 0025292C  C0 5E 0B F8 */	lfs f2, 0xbf8(r30)
/* 802559D0 00252930  D0 5E 0C 04 */	stfs f2, 0xc04(r30)
/* 802559D4 00252934  D0 3E 0C 08 */	stfs f1, 0xc08(r30)
/* 802559D8 00252938  D0 3E 0C 0C */	stfs f1, 0xc0c(r30)
/* 802559DC 0025293C  D0 1E 0C 10 */	stfs f0, 0xc10(r30)
/* 802559E0 00252940  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 802559E4 00252944  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 802559E8 00252948  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802559EC 0025294C  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 802559F0 00252950  80 7E 0C C4 */	lwz r3, 0xcc4(r30)
/* 802559F4 00252954  38 03 FF FF */	addi r0, r3, -1
/* 802559F8 00252958  90 1E 0C C4 */	stw r0, 0xcc4(r30)
/* 802559FC 0025295C  48 00 00 E8 */	b lbl_80255AE4
lbl_80255A00:
/* 80255A00 00252960  88 1E 0A 31 */	lbz r0, 0xa31(r30)
/* 80255A04 00252964  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80255A08 00252968  41 82 00 7C */	beq lbl_80255A84
/* 80255A0C 0025296C  C0 22 B9 38 */	lfs f1, lbl_805AD658@sda21(r2)
/* 80255A10 00252970  38 81 00 08 */	addi r4, r1, 8
/* 80255A14 00252974  C0 1E 0C 0C */	lfs f0, 0xc0c(r30)
/* 80255A18 00252978  38 62 B9 14 */	addi r3, r2, lbl_805AD634@sda21
/* 80255A1C 0025297C  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 80255A20 00252980  D0 01 00 08 */	stfs f0, 8(r1)
/* 80255A24 00252984  4B E2 83 BD */	bl "Min<f>__5CMathFRCfRCf"
/* 80255A28 00252988  C0 03 00 00 */	lfs f0, 0(r3)
/* 80255A2C 0025298C  D0 1E 0C 0C */	stfs f0, 0xc0c(r30)
/* 80255A30 00252990  C0 3E 0C 0C */	lfs f1, 0xc0c(r30)
/* 80255A34 00252994  C0 1E 0C 08 */	lfs f0, 0xc08(r30)
/* 80255A38 00252998  EC 1F 00 7A */	fmadds f0, f31, f1, f0
/* 80255A3C 0025299C  D0 1E 0C 08 */	stfs f0, 0xc08(r30)
/* 80255A40 002529A0  C0 9E 0C 08 */	lfs f4, 0xc08(r30)
/* 80255A44 002529A4  C0 1E 0B F0 */	lfs f0, 0xbf0(r30)
/* 80255A48 002529A8  C0 3E 0B E4 */	lfs f1, 0xbe4(r30)
/* 80255A4C 002529AC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80255A50 002529B0  C0 7E 0B F4 */	lfs f3, 0xbf4(r30)
/* 80255A54 002529B4  C0 5E 0B F8 */	lfs f2, 0xbf8(r30)
/* 80255A58 002529B8  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80255A5C 002529BC  EC 01 00 2A */	fadds f0, f1, f0
/* 80255A60 002529C0  EC 24 00 B2 */	fmuls f1, f4, f2
/* 80255A64 002529C4  D0 1E 0B E4 */	stfs f0, 0xbe4(r30)
/* 80255A68 002529C8  C0 1E 0B E8 */	lfs f0, 0xbe8(r30)
/* 80255A6C 002529CC  EC 00 18 2A */	fadds f0, f0, f3
/* 80255A70 002529D0  D0 1E 0B E8 */	stfs f0, 0xbe8(r30)
/* 80255A74 002529D4  C0 1E 0B EC */	lfs f0, 0xbec(r30)
/* 80255A78 002529D8  EC 00 08 2A */	fadds f0, f0, f1
/* 80255A7C 002529DC  D0 1E 0B EC */	stfs f0, 0xbec(r30)
/* 80255A80 002529E0  48 00 00 08 */	b lbl_80255A88
lbl_80255A84:
/* 80255A84 002529E4  48 00 04 CD */	bl sub_80255f50
lbl_80255A88:
/* 80255A88 002529E8  3C 80 80 3F */	lis r4, lbl_803E91B0@ha
/* 80255A8C 002529EC  7F C3 F3 78 */	mr r3, r30
/* 80255A90 002529F0  38 E4 91 B0 */	addi r7, r4, lbl_803E91B0@l
/* 80255A94 002529F4  7F E4 FB 78 */	mr r4, r31
/* 80255A98 002529F8  81 27 00 00 */	lwz r9, 0(r7)
/* 80255A9C 002529FC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80255AA0 00252A00  81 07 00 04 */	lwz r8, 4(r7)
/* 80255AA4 00252A04  38 A0 00 12 */	li r5, 0x12
/* 80255AA8 00252A08  80 07 00 08 */	lwz r0, 8(r7)
/* 80255AAC 00252A0C  38 E0 00 00 */	li r7, 0
/* 80255AB0 00252A10  91 21 00 0C */	stw r9, 0xc(r1)
/* 80255AB4 00252A14  91 01 00 10 */	stw r8, 0x10(r1)
/* 80255AB8 00252A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255ABC 00252A1C  4B E2 6C F9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80255AC0 00252A20  48 00 00 24 */	b lbl_80255AE4
lbl_80255AC4:
/* 80255AC4 00252A24  38 00 00 00 */	li r0, 0
/* 80255AC8 00252A28  38 A0 00 01 */	li r5, 1
/* 80255ACC 00252A2C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80255AD0 00252A30  48 00 0F 9D */	bl sub_80256a6c
/* 80255AD4 00252A34  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 80255AD8 00252A38  38 60 00 00 */	li r3, 0
/* 80255ADC 00252A3C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80255AE0 00252A40  98 1E 0A 32 */	stb r0, 0xa32(r30)
lbl_80255AE4:
/* 80255AE4 00252A44  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80255AE8 00252A48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80255AEC 00252A4C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80255AF0 00252A50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80255AF4 00252A54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80255AF8 00252A58  7C 08 03 A6 */	mtlr r0
/* 80255AFC 00252A5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80255B00 00252A60  4E 80 00 20 */	blr

.global SpecialAttack__7CRidleyFR13CStateManager9EStateMsgf
SpecialAttack__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255B04 00252A64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255B08 00252A68  7C 08 02 A6 */	mflr r0
/* 80255B0C 00252A6C  2C 05 00 01 */	cmpwi r5, 1
/* 80255B10 00252A70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255B14 00252A74  41 82 00 2C */	beq lbl_80255B40
/* 80255B18 00252A78  40 80 00 10 */	bge lbl_80255B28
/* 80255B1C 00252A7C  2C 05 00 00 */	cmpwi r5, 0
/* 80255B20 00252A80  40 80 00 14 */	bge lbl_80255B34
/* 80255B24 00252A84  48 00 00 58 */	b lbl_80255B7C
lbl_80255B28:
/* 80255B28 00252A88  2C 05 00 03 */	cmpwi r5, 3
/* 80255B2C 00252A8C  40 80 00 50 */	bge lbl_80255B7C
/* 80255B30 00252A90  48 00 00 44 */	b lbl_80255B74
lbl_80255B34:
/* 80255B34 00252A94  38 00 00 01 */	li r0, 1
/* 80255B38 00252A98  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80255B3C 00252A9C  48 00 00 40 */	b lbl_80255B7C
lbl_80255B40:
/* 80255B40 00252AA0  3C A0 80 3F */	lis r5, lbl_803E91A4@ha
/* 80255B44 00252AA4  38 C1 00 08 */	addi r6, r1, 8
/* 80255B48 00252AA8  39 45 91 A4 */	addi r10, r5, lbl_803E91A4@l
/* 80255B4C 00252AAC  38 A0 00 10 */	li r5, 0x10
/* 80255B50 00252AB0  81 2A 00 00 */	lwz r9, 0(r10)
/* 80255B54 00252AB4  38 E0 00 00 */	li r7, 0
/* 80255B58 00252AB8  81 0A 00 04 */	lwz r8, 4(r10)
/* 80255B5C 00252ABC  80 0A 00 08 */	lwz r0, 8(r10)
/* 80255B60 00252AC0  91 21 00 08 */	stw r9, 8(r1)
/* 80255B64 00252AC4  91 01 00 0C */	stw r8, 0xc(r1)
/* 80255B68 00252AC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80255B6C 00252ACC  4B E2 6C 49 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80255B70 00252AD0  48 00 00 0C */	b lbl_80255B7C
lbl_80255B74:
/* 80255B74 00252AD4  38 00 00 00 */	li r0, 0
/* 80255B78 00252AD8  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_80255B7C:
/* 80255B7C 00252ADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80255B80 00252AE0  7C 08 03 A6 */	mtlr r0
/* 80255B84 00252AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80255B88 00252AE8  4E 80 00 20 */	blr

.global Generate__7CRidleyFR13CStateManager9EStateMsgf
Generate__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255B8C 00252AEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80255B90 00252AF0  7C 08 02 A6 */	mflr r0
/* 80255B94 00252AF4  2C 05 00 00 */	cmpwi r5, 0
/* 80255B98 00252AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80255B9C 00252AFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80255BA0 00252B00  7C 7F 1B 78 */	mr r31, r3
/* 80255BA4 00252B04  41 82 00 0C */	beq lbl_80255BB0
/* 80255BA8 00252B08  41 80 00 84 */	blt lbl_80255C2C
/* 80255BAC 00252B0C  48 00 00 80 */	b lbl_80255C2C
lbl_80255BB0:
/* 80255BB0 00252B10  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 80255BB4 00252B14  38 60 00 00 */	li r3, 0
/* 80255BB8 00252B18  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80255BBC 00252B1C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80255BC0 00252B20  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80255BC4 00252B24  38 61 00 1C */	addi r3, r1, 0x1c
/* 80255BC8 00252B28  38 9F 0A 84 */	addi r4, r31, 0xa84
/* 80255BCC 00252B2C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80255BD0 00252B30  C0 5F 0A C0 */	lfs f2, 0xac0(r31)
/* 80255BD4 00252B34  C0 3F 0A DC */	lfs f1, 0xadc(r31)
/* 80255BD8 00252B38  C0 7F 0A BC */	lfs f3, 0xabc(r31)
/* 80255BDC 00252B3C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80255BE0 00252B40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80255BE4 00252B44  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80255BE8 00252B48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80255BEC 00252B4C  48 0B CE FD */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80255BF0 00252B50  7F E3 FB 78 */	mr r3, r31
/* 80255BF4 00252B54  38 81 00 1C */	addi r4, r1, 0x1c
/* 80255BF8 00252B58  4B DF D2 95 */	bl SetTranslation__6CActorFRC9CVector3f
/* 80255BFC 00252B5C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80255C00 00252B60  38 00 00 0C */	li r0, 0xc
/* 80255C04 00252B64  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 80255C08 00252B68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80255C0C 00252B6C  38 81 00 08 */	addi r4, r1, 8
/* 80255C10 00252B70  90 61 00 08 */	stw r3, 8(r1)
/* 80255C14 00252B74  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80255C18 00252B78  38 63 00 04 */	addi r3, r3, 4
/* 80255C1C 00252B7C  4B ED BB 9D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80255C20 00252B80  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80255C24 00252B84  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80255C28 00252B88  90 01 00 08 */	stw r0, 8(r1)
lbl_80255C2C:
/* 80255C2C 00252B8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80255C30 00252B90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80255C34 00252B94  7C 08 03 A6 */	mtlr r0
/* 80255C38 00252B98  38 21 00 30 */	addi r1, r1, 0x30
/* 80255C3C 00252B9C  4E 80 00 20 */	blr

.global Taunt__7CRidleyFR13CStateManager9EStateMsgf
Taunt__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255C40 00252BA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80255C44 00252BA4  7C 08 02 A6 */	mflr r0
/* 80255C48 00252BA8  2C 05 00 01 */	cmpwi r5, 1
/* 80255C4C 00252BAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80255C50 00252BB0  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 80255C54 00252BB4  FF E0 08 90 */	fmr f31, f1
/* 80255C58 00252BB8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80255C5C 00252BBC  7C 9F 23 78 */	mr r31, r4
/* 80255C60 00252BC0  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80255C64 00252BC4  7C 7E 1B 78 */	mr r30, r3
/* 80255C68 00252BC8  41 82 00 2C */	beq lbl_80255C94
/* 80255C6C 00252BCC  40 80 00 10 */	bge lbl_80255C7C
/* 80255C70 00252BD0  2C 05 00 00 */	cmpwi r5, 0
/* 80255C74 00252BD4  40 80 00 14 */	bge lbl_80255C88
/* 80255C78 00252BD8  48 00 00 68 */	b lbl_80255CE0
lbl_80255C7C:
/* 80255C7C 00252BDC  2C 05 00 03 */	cmpwi r5, 3
/* 80255C80 00252BE0  40 80 00 60 */	bge lbl_80255CE0
/* 80255C84 00252BE4  48 00 00 54 */	b lbl_80255CD8
lbl_80255C88:
/* 80255C88 00252BE8  38 00 00 01 */	li r0, 1
/* 80255C8C 00252BEC  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80255C90 00252BF0  48 00 00 50 */	b lbl_80255CE0
lbl_80255C94:
/* 80255C94 00252BF4  3C A0 80 3F */	lis r5, lbl_803E9198@ha
/* 80255C98 00252BF8  38 C1 00 08 */	addi r6, r1, 8
/* 80255C9C 00252BFC  39 45 91 98 */	addi r10, r5, lbl_803E9198@l
/* 80255CA0 00252C00  38 A0 00 10 */	li r5, 0x10
/* 80255CA4 00252C04  81 2A 00 00 */	lwz r9, 0(r10)
/* 80255CA8 00252C08  38 E0 00 03 */	li r7, 3
/* 80255CAC 00252C0C  81 0A 00 04 */	lwz r8, 4(r10)
/* 80255CB0 00252C10  80 0A 00 08 */	lwz r0, 8(r10)
/* 80255CB4 00252C14  91 21 00 08 */	stw r9, 8(r1)
/* 80255CB8 00252C18  91 01 00 0C */	stw r8, 0xc(r1)
/* 80255CBC 00252C1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80255CC0 00252C20  4B E2 6A F5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80255CC4 00252C24  FC 20 F8 90 */	fmr f1, f31
/* 80255CC8 00252C28  7F C3 F3 78 */	mr r3, r30
/* 80255CCC 00252C2C  7F E4 FB 78 */	mr r4, r31
/* 80255CD0 00252C30  48 00 02 81 */	bl sub_80255f50
/* 80255CD4 00252C34  48 00 00 0C */	b lbl_80255CE0
lbl_80255CD8:
/* 80255CD8 00252C38  38 00 00 00 */	li r0, 0
/* 80255CDC 00252C3C  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_80255CE0:
/* 80255CE0 00252C40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80255CE4 00252C44  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80255CE8 00252C48  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80255CEC 00252C4C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80255CF0 00252C50  7C 08 03 A6 */	mtlr r0
/* 80255CF4 00252C54  38 21 00 30 */	addi r1, r1, 0x30
/* 80255CF8 00252C58  4E 80 00 20 */	blr

.global Patrol__7CRidleyFR13CStateManager9EStateMsgf
Patrol__7CRidleyFR13CStateManager9EStateMsgf:
/* 80255CFC 00252C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255D00 00252C60  7C 08 02 A6 */	mflr r0
/* 80255D04 00252C64  2C 05 00 00 */	cmpwi r5, 0
/* 80255D08 00252C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255D0C 00252C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255D10 00252C70  7C 7F 1B 78 */	mr r31, r3
/* 80255D14 00252C74  41 82 00 0C */	beq lbl_80255D20
/* 80255D18 00252C78  41 80 00 2C */	blt lbl_80255D44
/* 80255D1C 00252C7C  48 00 00 28 */	b lbl_80255D44
lbl_80255D20:
/* 80255D20 00252C80  48 00 00 39 */	bl sub_80255d58
/* 80255D24 00252C84  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80255D28 00252C88  38 60 00 00 */	li r3, 0
/* 80255D2C 00252C8C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80255D30 00252C90  38 60 00 01 */	li r3, 1
/* 80255D34 00252C94  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80255D38 00252C98  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80255D3C 00252C9C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80255D40 00252CA0  98 1F 0A 33 */	stb r0, 0xa33(r31)
lbl_80255D44:
/* 80255D44 00252CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255D48 00252CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255D4C 00252CAC  7C 08 03 A6 */	mtlr r0
/* 80255D50 00252CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80255D54 00252CB4  4E 80 00 20 */	blr

.global sub_80255d58
sub_80255d58:
/* 80255D58 00252CB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80255D5C 00252CBC  7C 08 02 A6 */	mflr r0
/* 80255D60 00252CC0  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80255D64 00252CC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80255D68 00252CC8  C0 42 B9 34 */	lfs f2, lbl_805AD654@sda21(r2)
/* 80255D6C 00252CCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80255D70 00252CD0  7C 7F 1B 78 */	mr r31, r3
/* 80255D74 00252CD4  3C 60 80 47 */	lis r3, lbl_8046D9C0@ha
/* 80255D78 00252CD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80255D7C 00252CDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80255D80 00252CE0  7C 9D 23 78 */	mr r29, r4
/* 80255D84 00252CE4  38 83 D9 C0 */	addi r4, r3, lbl_8046D9C0@l
/* 80255D88 00252CE8  80 BF 0C B0 */	lwz r5, 0xcb0(r31)
/* 80255D8C 00252CEC  80 1F 0C B4 */	lwz r0, 0xcb4(r31)
/* 80255D90 00252CF0  1C A5 00 90 */	mulli r5, r5, 0x90
/* 80255D94 00252CF4  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 80255D98 00252CF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80255D9C 00252CFC  7C 84 2A 14 */	add r4, r4, r5
/* 80255DA0 00252D00  7F C4 02 14 */	add r30, r4, r0
/* 80255DA4 00252D04  48 0B C7 A1 */	bl Range__9CRandom16Fff
/* 80255DA8 00252D08  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80255DAC 00252D0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80255DB0 00252D10  4C 40 13 82 */	cror 2, 0, 2
/* 80255DB4 00252D14  40 82 00 0C */	bne lbl_80255DC0
/* 80255DB8 00252D18  80 1E 00 00 */	lwz r0, 0(r30)
/* 80255DBC 00252D1C  48 00 00 08 */	b lbl_80255DC4
lbl_80255DC0:
/* 80255DC0 00252D20  80 1E 00 08 */	lwz r0, 8(r30)
lbl_80255DC4:
/* 80255DC4 00252D24  90 1F 0B 04 */	stw r0, 0xb04(r31)
/* 80255DC8 00252D28  80 1F 0B 04 */	lwz r0, 0xb04(r31)
/* 80255DCC 00252D2C  2C 00 FF FF */	cmpwi r0, -1
/* 80255DD0 00252D30  40 82 00 5C */	bne lbl_80255E2C
/* 80255DD4 00252D34  38 00 00 00 */	li r0, 0
/* 80255DD8 00252D38  3C 60 80 47 */	lis r3, lbl_8046D9C0@ha
/* 80255DDC 00252D3C  90 1F 0C B4 */	stw r0, 0xcb4(r31)
/* 80255DE0 00252D40  38 83 D9 C0 */	addi r4, r3, lbl_8046D9C0@l
/* 80255DE4 00252D44  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80255DE8 00252D48  80 7F 0C B0 */	lwz r3, 0xcb0(r31)
/* 80255DEC 00252D4C  80 1F 0C B4 */	lwz r0, 0xcb4(r31)
/* 80255DF0 00252D50  1C A3 00 90 */	mulli r5, r3, 0x90
/* 80255DF4 00252D54  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 80255DF8 00252D58  C0 42 B9 34 */	lfs f2, lbl_805AD654@sda21(r2)
/* 80255DFC 00252D5C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80255E00 00252D60  7C 84 2A 14 */	add r4, r4, r5
/* 80255E04 00252D64  7F C4 02 14 */	add r30, r4, r0
/* 80255E08 00252D68  48 0B C7 3D */	bl Range__9CRandom16Fff
/* 80255E0C 00252D6C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80255E10 00252D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80255E14 00252D74  4C 40 13 82 */	cror 2, 0, 2
/* 80255E18 00252D78  40 82 00 0C */	bne lbl_80255E24
/* 80255E1C 00252D7C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80255E20 00252D80  48 00 00 08 */	b lbl_80255E28
lbl_80255E24:
/* 80255E24 00252D84  80 1E 00 08 */	lwz r0, 8(r30)
lbl_80255E28:
/* 80255E28 00252D88  90 1F 0B 04 */	stw r0, 0xb04(r31)
lbl_80255E2C:
/* 80255E2C 00252D8C  80 7F 0C B4 */	lwz r3, 0xcb4(r31)
/* 80255E30 00252D90  38 00 00 01 */	li r0, 1
/* 80255E34 00252D94  38 63 00 01 */	addi r3, r3, 1
/* 80255E38 00252D98  90 7F 0C B4 */	stw r3, 0xcb4(r31)
/* 80255E3C 00252D9C  90 1F 0C C4 */	stw r0, 0xcc4(r31)
/* 80255E40 00252DA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80255E44 00252DA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80255E48 00252DA8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80255E4C 00252DAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80255E50 00252DB0  7C 08 03 A6 */	mtlr r0
/* 80255E54 00252DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80255E58 00252DB8  4E 80 00 20 */	blr

.global sub_80255e5c
sub_80255e5c:
/* 80255E5C 00252DBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80255E60 00252DC0  7C 08 02 A6 */	mflr r0
/* 80255E64 00252DC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80255E68 00252DC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80255E6C 00252DCC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80255E70 00252DD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80255E74 00252DD4  7C 9F 23 78 */	mr r31, r4
/* 80255E78 00252DD8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80255E7C 00252DDC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80255E80 00252DE0  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80255E84 00252DE4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80255E88 00252DE8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80255E8C 00252DEC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80255E90 00252DF0  EC 84 08 28 */	fsubs f4, f4, f1
/* 80255E94 00252DF4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80255E98 00252DF8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80255E9C 00252DFC  38 61 00 24 */	addi r3, r1, 0x24
/* 80255EA0 00252E00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80255EA4 00252E04  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80255EA8 00252E08  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80255EAC 00252E0C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80255EB0 00252E10  48 0B EA 09 */	bl Magnitude__9CVector3fCFv
/* 80255EB4 00252E14  C0 02 B9 7C */	lfs f0, lbl_805AD69C@sda21(r2)
/* 80255EB8 00252E18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80255EBC 00252E1C  40 80 00 78 */	bge lbl_80255F34
/* 80255EC0 00252E20  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80255EC4 00252E24  38 61 00 24 */	addi r3, r1, 0x24
/* 80255EC8 00252E28  C3 E4 00 E8 */	lfs f31, 0xe8(r4)
/* 80255ECC 00252E2C  48 0B E9 ED */	bl Magnitude__9CVector3fCFv
/* 80255ED0 00252E30  C0 02 B9 7C */	lfs f0, lbl_805AD69C@sda21(r2)
/* 80255ED4 00252E34  38 61 00 08 */	addi r3, r1, 8
/* 80255ED8 00252E38  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80255EDC 00252E3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80255EE0 00252E40  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80255EE4 00252E44  EF FF 00 32 */	fmuls f31, f31, f0
/* 80255EE8 00252E48  48 0B E3 19 */	bl __ct__9CVector2fFff
/* 80255EEC 00252E4C  38 61 00 10 */	addi r3, r1, 0x10
/* 80255EF0 00252E50  38 81 00 08 */	addi r4, r1, 8
/* 80255EF4 00252E54  48 0B E1 8D */	bl AsNormalized__9CVector2fCFv
/* 80255EF8 00252E58  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80255EFC 00252E5C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80255F00 00252E60  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80255F04 00252E64  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 80255F08 00252E68  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80255F0C 00252E6C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80255F10 00252E70  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80255F14 00252E74  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80255F18 00252E78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80255F1C 00252E7C  83 FF 08 4C */	lwz r31, 0x84c(r31)
/* 80255F20 00252E80  4B DC 56 15 */	bl Identity__10CAxisAngleFv
/* 80255F24 00252E84  7C 65 1B 78 */	mr r5, r3
/* 80255F28 00252E88  7F E3 FB 78 */	mr r3, r31
/* 80255F2C 00252E8C  38 81 00 18 */	addi r4, r1, 0x18
/* 80255F30 00252E90  4B EC 64 69 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_80255F34:
/* 80255F34 00252E94  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80255F38 00252E98  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80255F3C 00252E9C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80255F40 00252EA0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80255F44 00252EA4  7C 08 03 A6 */	mtlr r0
/* 80255F48 00252EA8  38 21 00 50 */	addi r1, r1, 0x50
/* 80255F4C 00252EAC  4E 80 00 20 */	blr

.global sub_80255f50
sub_80255f50:
/* 80255F50 00252EB0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80255F54 00252EB4  7C 08 02 A6 */	mflr r0
/* 80255F58 00252EB8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80255F5C 00252EBC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80255F60 00252EC0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80255F64 00252EC4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80255F68 00252EC8  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 80255F6C 00252ECC  FF E0 08 90 */	fmr f31, f1
/* 80255F70 00252ED0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80255F74 00252ED4  38 81 00 14 */	addi r4, r1, 0x14
/* 80255F78 00252ED8  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 80255F7C 00252EDC  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80255F80 00252EE0  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 80255F84 00252EE4  EC 25 00 28 */	fsubs f1, f5, f0
/* 80255F88 00252EE8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80255F8C 00252EEC  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 80255F90 00252EF0  EC 44 10 28 */	fsubs f2, f4, f2
/* 80255F94 00252EF4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80255F98 00252EF8  EC 00 18 28 */	fsubs f0, f0, f3
/* 80255F9C 00252EFC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80255FA0 00252F00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80255FA4 00252F04  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80255FA8 00252F08  83 E3 04 50 */	lwz r31, 0x450(r3)
/* 80255FAC 00252F0C  38 61 00 20 */	addi r3, r1, 0x20
/* 80255FB0 00252F10  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80255FB4 00252F14  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80255FB8 00252F18  48 0B E8 99 */	bl AsNormalized__9CVector3fCFv
/* 80255FBC 00252F1C  FC 20 F8 90 */	fmr f1, f31
/* 80255FC0 00252F20  7F E3 FB 78 */	mr r3, r31
/* 80255FC4 00252F24  38 81 00 20 */	addi r4, r1, 0x20
/* 80255FC8 00252F28  4B EE 46 DD */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 80255FCC 00252F2C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80255FD0 00252F30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80255FD4 00252F34  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80255FD8 00252F38  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80255FDC 00252F3C  7C 08 03 A6 */	mtlr r0
/* 80255FE0 00252F40  38 21 00 50 */	addi r1, r1, 0x50
/* 80255FE4 00252F44  4E 80 00 20 */	blr

.global sub_80255fe8
sub_80255fe8:
/* 80255FE8 00252F48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80255FEC 00252F4C  7C 08 02 A6 */	mflr r0
/* 80255FF0 00252F50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80255FF4 00252F54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80255FF8 00252F58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80255FFC 00252F5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80256000 00252F60  FF E0 08 90 */	fmr f31, f1
/* 80256004 00252F64  C0 02 B9 84 */	lfs f0, lbl_805AD6A4@sda21(r2)
/* 80256008 00252F68  7C 7F 1B 78 */	mr r31, r3
/* 8025600C 00252F6C  C0 64 00 00 */	lfs f3, 0(r4)
/* 80256010 00252F70  C0 24 00 04 */	lfs f1, 4(r4)
/* 80256014 00252F74  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80256018 00252F78  EC 80 07 F2 */	fmuls f4, f0, f31
/* 8025601C 00252F7C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80256020 00252F80  EC 9F 01 32 */	fmuls f4, f31, f4
/* 80256024 00252F84  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80256028 00252F88  EC 24 00 72 */	fmuls f1, f4, f1
/* 8025602C 00252F8C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80256030 00252F90  D0 7F 0A F8 */	stfs f3, 0xaf8(r31)
/* 80256034 00252F94  D0 3F 0A FC */	stfs f1, 0xafc(r31)
/* 80256038 00252F98  D0 1F 0B 00 */	stfs f0, 0xb00(r31)
/* 8025603C 00252F9C  C0 1F 0A F8 */	lfs f0, 0xaf8(r31)
/* 80256040 00252FA0  C0 9F 0A FC */	lfs f4, 0xafc(r31)
/* 80256044 00252FA4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80256048 00252FA8  C0 3F 0A EC */	lfs f1, 0xaec(r31)
/* 8025604C 00252FAC  C0 7F 0B 00 */	lfs f3, 0xb00(r31)
/* 80256050 00252FB0  EC 82 01 32 */	fmuls f4, f2, f4
/* 80256054 00252FB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80256058 00252FB8  EC 22 00 F2 */	fmuls f1, f2, f3
/* 8025605C 00252FBC  D0 1F 0A EC */	stfs f0, 0xaec(r31)
/* 80256060 00252FC0  C0 1F 0A F0 */	lfs f0, 0xaf0(r31)
/* 80256064 00252FC4  EC 00 20 2A */	fadds f0, f0, f4
/* 80256068 00252FC8  D0 1F 0A F0 */	stfs f0, 0xaf0(r31)
/* 8025606C 00252FCC  C0 1F 0A F4 */	lfs f0, 0xaf4(r31)
/* 80256070 00252FD0  EC 00 08 2A */	fadds f0, f0, f1
/* 80256074 00252FD4  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 80256078 00252FD8  48 0B E8 41 */	bl Magnitude__9CVector3fCFv
/* 8025607C 00252FDC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80256080 00252FE0  40 81 00 34 */	ble lbl_802560B4
/* 80256084 00252FE4  38 61 00 08 */	addi r3, r1, 8
/* 80256088 00252FE8  38 9F 0A EC */	addi r4, r31, 0xaec
/* 8025608C 00252FEC  48 0B E7 C5 */	bl AsNormalized__9CVector3fCFv
/* 80256090 00252FF0  C0 01 00 08 */	lfs f0, 8(r1)
/* 80256094 00252FF4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80256098 00252FF8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8025609C 00252FFC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802560A0 00253000  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 802560A4 00253004  EC 3F 00 72 */	fmuls f1, f31, f1
/* 802560A8 00253008  D0 1F 0A EC */	stfs f0, 0xaec(r31)
/* 802560AC 0025300C  D0 5F 0A F0 */	stfs f2, 0xaf0(r31)
/* 802560B0 00253010  D0 3F 0A F4 */	stfs f1, 0xaf4(r31)
lbl_802560B4:
/* 802560B4 00253014  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802560B8 00253018  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802560BC 0025301C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802560C0 00253020  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802560C4 00253024  7C 08 03 A6 */	mtlr r0
/* 802560C8 00253028  38 21 00 30 */	addi r1, r1, 0x30
/* 802560CC 0025302C  4E 80 00 20 */	blr

.global sub_802560d0
sub_802560d0:
/* 802560D0 00253030  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802560D4 00253034  7C 08 02 A6 */	mflr r0
/* 802560D8 00253038  90 01 00 74 */	stw r0, 0x74(r1)
/* 802560DC 0025303C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802560E0 00253040  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 802560E4 00253044  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802560E8 00253048  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 802560EC 0025304C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802560F0 00253050  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 802560F4 00253054  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802560F8 00253058  F3 81 00 38 */	psq_st f28, 56(r1), 0, qr0
/* 802560FC 0025305C  DB 61 00 20 */	stfd f27, 0x20(r1)
/* 80256100 00253060  F3 61 00 28 */	psq_st f27, 40(r1), 0, qr0
/* 80256104 00253064  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80256108 00253068  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8025610C 0025306C  FF E0 08 90 */	fmr f31, f1
/* 80256110 00253070  7C 7F 1B 78 */	mr r31, r3
/* 80256114 00253074  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80256118 00253078  41 82 00 F4 */	beq lbl_8025620C
/* 8025611C 0025307C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80256120 00253080  48 0B E6 6D */	bl IsMagnitudeSafe__9CVector3fCFv
/* 80256124 00253084  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80256128 00253088  41 82 01 00 */	beq lbl_80256228
/* 8025612C 0025308C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80256130 00253090  48 0B E7 89 */	bl Magnitude__9CVector3fCFv
/* 80256134 00253094  FF C0 08 90 */	fmr f30, f1
/* 80256138 00253098  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 8025613C 0025309C  C0 3F 0A F8 */	lfs f1, 0xaf8(r31)
/* 80256140 002530A0  C0 5F 0A FC */	lfs f2, 0xafc(r31)
/* 80256144 002530A4  EC E0 F0 24 */	fdivs f7, f0, f30
/* 80256148 002530A8  C1 1F 0B 00 */	lfs f8, 0xb00(r31)
/* 8025614C 002530AC  C0 DF 0A EC */	lfs f6, 0xaec(r31)
/* 80256150 002530B0  C0 BF 0A F0 */	lfs f5, 0xaf0(r31)
/* 80256154 002530B4  C0 9F 0A F4 */	lfs f4, 0xaf4(r31)
/* 80256158 002530B8  C0 62 B9 18 */	lfs f3, lbl_805AD638@sda21(r2)
/* 8025615C 002530BC  EC 21 00 72 */	fmuls f1, f1, f1
/* 80256160 002530C0  C1 22 B9 84 */	lfs f9, lbl_805AD6A4@sda21(r2)
/* 80256164 002530C4  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80256168 002530C8  EC 48 02 32 */	fmuls f2, f8, f8
/* 8025616C 002530CC  EF 67 01 B2 */	fmuls f27, f7, f6
/* 80256170 002530D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80256174 002530D4  EF 87 01 72 */	fmuls f28, f7, f5
/* 80256178 002530D8  EF A7 01 32 */	fmuls f29, f7, f4
/* 8025617C 002530DC  EC 02 00 2A */	fadds f0, f2, f0
/* 80256180 002530E0  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 80256184 002530E4  40 82 00 0C */	bne lbl_80256190
/* 80256188 002530E8  C0 02 B9 5C */	lfs f0, lbl_805AD67C@sda21(r2)
/* 8025618C 002530EC  ED 29 00 32 */	fmuls f9, f9, f0
lbl_80256190:
/* 80256190 002530F0  EC 09 07 B2 */	fmuls f0, f9, f30
/* 80256194 002530F4  38 81 00 08 */	addi r4, r1, 8
/* 80256198 002530F8  38 6D 97 94 */	addi r3, r13, lbl_805A8354@sda21
/* 8025619C 002530FC  38 AD 97 98 */	addi r5, r13, lbl_805A8358@sda21
/* 802561A0 00253100  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802561A4 00253104  D0 01 00 08 */	stfs f0, 8(r1)
/* 802561A8 00253108  4B DB 61 0D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802561AC 0025310C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802561B0 00253110  EC 00 F7 BC */	fnmsubs f0, f0, f30, f30
/* 802561B4 00253114  EC 40 06 F2 */	fmuls f2, f0, f27
/* 802561B8 00253118  EC 20 07 32 */	fmuls f1, f0, f28
/* 802561BC 0025311C  EC 00 07 72 */	fmuls f0, f0, f29
/* 802561C0 00253120  D0 5F 0A EC */	stfs f2, 0xaec(r31)
/* 802561C4 00253124  D0 3F 0A F0 */	stfs f1, 0xaf0(r31)
/* 802561C8 00253128  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 802561CC 0025312C  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 802561D0 00253130  C0 5F 0A F0 */	lfs f2, 0xaf0(r31)
/* 802561D4 00253134  C0 3F 0A F4 */	lfs f1, 0xaf4(r31)
/* 802561D8 00253138  C0 1F 0A EC */	lfs f0, 0xaec(r31)
/* 802561DC 0025313C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 802561E0 00253140  EC 23 00 72 */	fmuls f1, f3, f1
/* 802561E4 00253144  EC 03 00 32 */	fmuls f0, f3, f0
/* 802561E8 00253148  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 802561EC 0025314C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802561F0 00253150  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802561F4 00253154  4B DC 53 41 */	bl Identity__10CAxisAngleFv
/* 802561F8 00253158  7C 65 1B 78 */	mr r5, r3
/* 802561FC 0025315C  7F E3 FB 78 */	mr r3, r31
/* 80256200 00253160  38 81 00 0C */	addi r4, r1, 0xc
/* 80256204 00253164  4B EC 61 95 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 80256208 00253168  48 00 00 20 */	b lbl_80256228
lbl_8025620C:
/* 8025620C 0025316C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80256210 00253170  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 80256214 00253174  D0 1F 0A EC */	stfs f0, 0xaec(r31)
/* 80256218 00253178  C0 03 00 04 */	lfs f0, 4(r3)
/* 8025621C 0025317C  D0 1F 0A F0 */	stfs f0, 0xaf0(r31)
/* 80256220 00253180  C0 03 00 08 */	lfs f0, 8(r3)
/* 80256224 00253184  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
lbl_80256228:
/* 80256228 00253188  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8025622C 0025318C  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 80256230 00253190  D0 1F 0A F8 */	stfs f0, 0xaf8(r31)
/* 80256234 00253194  C0 03 00 04 */	lfs f0, 4(r3)
/* 80256238 00253198  D0 1F 0A FC */	stfs f0, 0xafc(r31)
/* 8025623C 0025319C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80256240 002531A0  D0 1F 0B 00 */	stfs f0, 0xb00(r31)
/* 80256244 002531A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80256248 002531A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8025624C 002531AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80256250 002531B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80256254 002531B4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 80256258 002531B8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8025625C 002531BC  E3 81 00 38 */	psq_l f28, 56(r1), 0, qr0
/* 80256260 002531C0  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 80256264 002531C4  E3 61 00 28 */	psq_l f27, 40(r1), 0, qr0
/* 80256268 002531C8  CB 61 00 20 */	lfd f27, 0x20(r1)
/* 8025626C 002531CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80256270 002531D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80256274 002531D4  7C 08 03 A6 */	mtlr r0
/* 80256278 002531D8  38 21 00 70 */	addi r1, r1, 0x70
/* 8025627C 002531DC  4E 80 00 20 */	blr

.global Think__7CRidleyR13CStateManager
Think__7CRidleyR13CStateManager:
/* 80256280 002531E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80256284 002531E4  7C 08 02 A6 */	mflr r0
/* 80256288 002531E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025628C 002531EC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80256290 002531F0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80256294 002531F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80256298 002531F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025629C 002531FC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802562A0 00253200  FF E0 08 90 */	fmr f31, f1
/* 802562A4 00253204  7C 7E 1B 78 */	mr r30, r3
/* 802562A8 00253208  7C 9F 23 78 */	mr r31, r4
/* 802562AC 0025320C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802562B0 00253210  41 82 00 D8 */	beq lbl_80256388
/* 802562B4 00253214  4B FF FE 1D */	bl sub_802560d0
/* 802562B8 00253218  FC 20 F8 90 */	fmr f1, f31
/* 802562BC 0025321C  7F C3 F3 78 */	mr r3, r30
/* 802562C0 00253220  7F E4 FB 78 */	mr r4, r31
/* 802562C4 00253224  4B E2 38 55 */	bl Think__10CPatternedFfR13CStateManager
/* 802562C8 00253228  FC 20 F8 90 */	fmr f1, f31
/* 802562CC 0025322C  7F C3 F3 78 */	mr r3, r30
/* 802562D0 00253230  48 00 00 D9 */	bl sub_802563a8
/* 802562D4 00253234  FC 20 F8 90 */	fmr f1, f31
/* 802562D8 00253238  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 802562DC 0025323C  7F E4 FB 78 */	mr r4, r31
/* 802562E0 00253240  38 A0 00 00 */	li r5, 0
/* 802562E4 00253244  4B F5 11 6D */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 802562E8 00253248  FC 20 F8 90 */	fmr f1, f31
/* 802562EC 0025324C  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 802562F0 00253250  7F E4 FB 78 */	mr r4, r31
/* 802562F4 00253254  38 A0 00 00 */	li r5, 0
/* 802562F8 00253258  4B F5 11 59 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 802562FC 0025325C  C0 1E 0B 20 */	lfs f0, 0xb20(r30)
/* 80256300 00253260  38 81 00 10 */	addi r4, r1, 0x10
/* 80256304 00253264  38 6D 97 88 */	addi r3, r13, lbl_805A8348@sda21
/* 80256308 00253268  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025630C 0025326C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80256310 00253270  4B DF 94 21 */	bl "Max<f>__5CMathFRCfRCf"
/* 80256314 00253274  C0 03 00 00 */	lfs f0, 0(r3)
/* 80256318 00253278  38 81 00 0C */	addi r4, r1, 0xc
/* 8025631C 0025327C  38 6D 97 8C */	addi r3, r13, lbl_805A834C@sda21
/* 80256320 00253280  D0 1E 0B 20 */	stfs f0, 0xb20(r30)
/* 80256324 00253284  C0 1E 0B 24 */	lfs f0, 0xb24(r30)
/* 80256328 00253288  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025632C 0025328C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80256330 00253290  4B DF 94 01 */	bl "Max<f>__5CMathFRCfRCf"
/* 80256334 00253294  C0 03 00 00 */	lfs f0, 0(r3)
/* 80256338 00253298  38 81 00 08 */	addi r4, r1, 8
/* 8025633C 0025329C  38 6D 97 90 */	addi r3, r13, lbl_805A8350@sda21
/* 80256340 002532A0  D0 1E 0B 24 */	stfs f0, 0xb24(r30)
/* 80256344 002532A4  C0 1E 0C C8 */	lfs f0, 0xcc8(r30)
/* 80256348 002532A8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025634C 002532AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80256350 002532B0  4B DF 93 E1 */	bl "Max<f>__5CMathFRCfRCf"
/* 80256354 002532B4  C0 03 00 00 */	lfs f0, 0(r3)
/* 80256358 002532B8  FC 20 F8 90 */	fmr f1, f31
/* 8025635C 002532BC  7F C3 F3 78 */	mr r3, r30
/* 80256360 002532C0  7F E4 FB 78 */	mr r4, r31
/* 80256364 002532C4  D0 1E 0C C8 */	stfs f0, 0xcc8(r30)
/* 80256368 002532C8  48 00 07 AD */	bl sub_80256b14
/* 8025636C 002532CC  FC 20 F8 90 */	fmr f1, f31
/* 80256370 002532D0  7F C3 F3 78 */	mr r3, r30
/* 80256374 002532D4  7F E4 FB 78 */	mr r4, r31
/* 80256378 002532D8  48 00 02 AD */	bl sub_80256624
/* 8025637C 002532DC  FC 20 F8 90 */	fmr f1, f31
/* 80256380 002532E0  38 7E 0B 2C */	addi r3, r30, 0xb2c
/* 80256384 002532E4  4B F1 F6 25 */	bl Update__13CBoneTrackingFf
lbl_80256388:
/* 80256388 002532E8  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8025638C 002532EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80256390 002532F0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80256394 002532F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80256398 002532F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8025639C 002532FC  7C 08 03 A6 */	mtlr r0
/* 802563A0 00253300  38 21 00 30 */	addi r1, r1, 0x30
/* 802563A4 00253304  4E 80 00 20 */	blr

.global sub_802563a8
sub_802563a8:
/* 802563A8 00253308  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802563AC 0025330C  7C 08 02 A6 */	mflr r0
/* 802563B0 00253310  90 01 00 74 */	stw r0, 0x74(r1)
/* 802563B4 00253314  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802563B8 00253318  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 802563BC 0025331C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802563C0 00253320  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 802563C4 00253324  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802563C8 00253328  7C 7F 1B 78 */	mr r31, r3
/* 802563CC 0025332C  FF C0 08 90 */	fmr f30, f1
/* 802563D0 00253330  80 03 0C 64 */	lwz r0, 0xc64(r3)
/* 802563D4 00253334  2C 00 00 03 */	cmpwi r0, 3
/* 802563D8 00253338  40 82 01 80 */	bne lbl_80256558
/* 802563DC 0025333C  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 802563E0 00253340  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802563E4 00253344  40 82 01 74 */	bne lbl_80256558
/* 802563E8 00253348  C0 5F 0A B0 */	lfs f2, 0xab0(r31)
/* 802563EC 0025334C  38 81 00 30 */	addi r4, r1, 0x30
/* 802563F0 00253350  C0 3F 0A A0 */	lfs f1, 0xaa0(r31)
/* 802563F4 00253354  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 802563F8 00253358  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 802563FC 0025335C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80256400 00253360  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 80256404 00253364  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80256408 00253368  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8025640C 0025336C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80256410 00253370  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80256414 00253374  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80256418 00253378  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8025641C 0025337C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80256420 00253380  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80256424 00253384  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80256428 00253388  4B DF CA 65 */	bl SetTranslation__6CActorFRC9CVector3f
/* 8025642C 0025338C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80256430 00253390  38 61 00 3C */	addi r3, r1, 0x3c
/* 80256434 00253394  C0 1F 0A A0 */	lfs f0, 0xaa0(r31)
/* 80256438 00253398  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8025643C 0025339C  C0 5F 0A B0 */	lfs f2, 0xab0(r31)
/* 80256440 002533A0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80256444 002533A4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80256448 002533A8  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 8025644C 002533AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80256450 002533B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80256454 002533B4  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80256458 002533B8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8025645C 002533BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80256460 002533C0  48 0B E4 59 */	bl Magnitude__9CVector3fCFv
/* 80256464 002533C4  FF E0 08 90 */	fmr f31, f1
/* 80256468 002533C8  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 8025646C 002533CC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80256470 002533D0  38 81 00 08 */	addi r4, r1, 8
/* 80256474 002533D4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80256478 002533D8  38 6D 97 80 */	addi r3, r13, lbl_805A8340@sda21
/* 8025647C 002533DC  EC 60 F8 24 */	fdivs f3, f0, f31
/* 80256480 002533E0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80256484 002533E4  38 AD 97 84 */	addi r5, r13, lbl_805A8344@sda21
/* 80256488 002533E8  EC 82 00 F2 */	fmuls f4, f2, f3
/* 8025648C 002533EC  EC 41 00 F2 */	fmuls f2, f1, f3
/* 80256490 002533F0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80256494 002533F4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80256498 002533F8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8025649C 002533FC  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 802564A0 00253400  C0 1F 0A 98 */	lfs f0, 0xa98(r31)
/* 802564A4 00253404  C0 3F 0A 88 */	lfs f1, 0xa88(r31)
/* 802564A8 00253408  EC 00 00 B2 */	fmuls f0, f0, f2
/* 802564AC 0025340C  C0 5F 0A A8 */	lfs f2, 0xaa8(r31)
/* 802564B0 00253410  EC 01 01 3A */	fmadds f0, f1, f4, f0
/* 802564B4 00253414  EC 02 00 FA */	fmadds f0, f2, f3, f0
/* 802564B8 00253418  D0 01 00 08 */	stfs f0, 8(r1)
/* 802564BC 0025341C  4B DB 5D F9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 802564C0 00253420  C0 23 00 00 */	lfs f1, 0(r3)
/* 802564C4 00253424  C0 02 B9 88 */	lfs f0, lbl_805AD6A8@sda21(r2)
/* 802564C8 00253428  D0 21 00 08 */	stfs f1, 8(r1)
/* 802564CC 0025342C  EC 00 00 72 */	fmuls f0, f0, f1
/* 802564D0 00253430  C0 3F 0A B4 */	lfs f1, 0xab4(r31)
/* 802564D4 00253434  EC 01 00 2A */	fadds f0, f1, f0
/* 802564D8 00253438  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802564DC 0025343C  40 81 00 7C */	ble lbl_80256558
/* 802564E0 00253440  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 802564E4 00253444  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802564E8 00253448  C0 5F 01 38 */	lfs f2, 0x138(r31)
/* 802564EC 0025344C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802564F0 00253450  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 802564F4 00253454  C0 9F 01 40 */	lfs f4, 0x140(r31)
/* 802564F8 00253458  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 802564FC 0025345C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80256500 00253460  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80256504 00253464  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80256508 00253468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025650C 0025346C  40 81 00 0C */	ble lbl_80256518
/* 80256510 00253470  7F E3 FB 78 */	mr r3, r31
/* 80256514 00253474  4B EC 4E 65 */	bl Stop__13CPhysicsActorFv
lbl_80256518:
/* 80256518 00253478  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 8025651C 0025347C  FC 20 F0 90 */	fmr f1, f30
/* 80256520 00253480  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80256524 00253484  7F E3 FB 78 */	mr r3, r31
/* 80256528 00253488  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8025652C 0025348C  38 81 00 0C */	addi r4, r1, 0xc
/* 80256530 00253490  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80256534 00253494  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80256538 00253498  EC A5 00 28 */	fsubs f5, f5, f0
/* 8025653C 0025349C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80256540 002534A0  EC 64 18 28 */	fsubs f3, f4, f3
/* 80256544 002534A4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80256548 002534A8  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8025654C 002534AC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80256550 002534B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80256554 002534B4  4B EC 4B 45 */	bl MoveToInOneFrameWR__13CPhysicsActorFRC9CVector3ff
lbl_80256558:
/* 80256558 002534B8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8025655C 002534BC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80256560 002534C0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 80256564 002534C4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80256568 002534C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8025656C 002534CC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80256570 002534D0  7C 08 03 A6 */	mtlr r0
/* 80256574 002534D4  38 21 00 70 */	addi r1, r1, 0x70
/* 80256578 002534D8  4E 80 00 20 */	blr

.global nullsub_53
nullsub_53:
/* 8025657C 002534DC  4E 80 00 20 */	blr

.global sub_80256580
sub_80256580:
/* 80256580 002534E0  88 03 0A 31 */	lbz r0, 0xa31(r3)
/* 80256584 002534E4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80256588 002534E8  4C 82 00 20 */	bnelr
/* 8025658C 002534EC  C0 02 B9 8C */	lfs f0, lbl_805AD6AC@sda21(r2)
/* 80256590 002534F0  D0 03 03 B4 */	stfs f0, 0x3b4(r3)
/* 80256594 002534F4  4E 80 00 20 */	blr

.global GetAimPosition__7CRidleyCFRC13CStateManagerf
GetAimPosition__7CRidleyCFRC13CStateManagerf:
/* 80256598 002534F8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8025659C 002534FC  7C 08 02 A6 */	mflr r0
/* 802565A0 00253500  90 01 00 74 */	stw r0, 0x74(r1)
/* 802565A4 00253504  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802565A8 00253508  7C 7F 1B 78 */	mr r31, r3
/* 802565AC 0025350C  80 04 0C 64 */	lwz r0, 0xc64(r4)
/* 802565B0 00253510  2C 00 00 03 */	cmpwi r0, 3
/* 802565B4 00253514  40 82 00 38 */	bne lbl_802565EC
/* 802565B8 00253518  88 04 0A 32 */	lbz r0, 0xa32(r4)
/* 802565BC 0025351C  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 802565C0 00253520  40 82 00 2C */	bne lbl_802565EC
/* 802565C4 00253524  38 61 00 38 */	addi r3, r1, 0x38
/* 802565C8 00253528  38 A4 0B 90 */	addi r5, r4, 0xb90
/* 802565CC 0025352C  4B E2 22 ED */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 802565D0 00253530  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 802565D4 00253534  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 802565D8 00253538  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 802565DC 0025353C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802565E0 00253540  D0 3F 00 04 */	stfs f1, 4(r31)
/* 802565E4 00253544  D0 5F 00 08 */	stfs f2, 8(r31)
/* 802565E8 00253548  48 00 00 28 */	b lbl_80256610
lbl_802565EC:
/* 802565EC 0025354C  38 61 00 08 */	addi r3, r1, 8
/* 802565F0 00253550  38 A4 0A 30 */	addi r5, r4, 0xa30
/* 802565F4 00253554  4B E2 22 C5 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 802565F8 00253558  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 802565FC 0025355C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80256600 00253560  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80256604 00253564  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80256608 00253568  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8025660C 0025356C  D0 5F 00 08 */	stfs f2, 8(r31)
lbl_80256610:
/* 80256610 00253570  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80256614 00253574  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80256618 00253578  7C 08 03 A6 */	mtlr r0
/* 8025661C 0025357C  38 21 00 70 */	addi r1, r1, 0x70
/* 80256620 00253580  4E 80 00 20 */	blr

.global sub_80256624
sub_80256624:
/* 80256624 00253584  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80256628 00253588  7C 08 02 A6 */	mflr r0
/* 8025662C 0025358C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80256630 00253590  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80256634 00253594  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 80256638 00253598  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 8025663C 0025359C  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80256640 002535A0  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80256644 002535A4  7C 7F 1B 78 */	mr r31, r3
/* 80256648 002535A8  FF E0 08 90 */	fmr f31, f1
/* 8025664C 002535AC  83 C3 0C E0 */	lwz r30, 0xce0(r3)
/* 80256650 002535B0  7C 9D 23 78 */	mr r29, r4
/* 80256654 002535B4  28 1E 00 00 */	cmplwi r30, 0
/* 80256658 002535B8  41 82 02 30 */	beq lbl_80256888
/* 8025665C 002535BC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80256660 002535C0  38 9F 00 34 */	addi r4, r31, 0x34
/* 80256664 002535C4  48 0B C5 DD */	bl GetRotation__12CTransform4fCFv
/* 80256668 002535C8  7F C3 F3 78 */	mr r3, r30
/* 8025666C 002535CC  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80256670 002535D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80256674 002535D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80256678 002535D8  7D 89 03 A6 */	mtctr r12
/* 8025667C 002535DC  4E 80 04 21 */	bctrl
/* 80256680 002535E0  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80256684 002535E4  38 81 00 34 */	addi r4, r1, 0x34
/* 80256688 002535E8  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8025668C 002535EC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80256690 002535F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80256694 002535F4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80256698 002535F8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8025669C 002535FC  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 802566A0 00253600  81 83 00 00 */	lwz r12, 0(r3)
/* 802566A4 00253604  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802566A8 00253608  7D 89 03 A6 */	mtctr r12
/* 802566AC 0025360C  4E 80 04 21 */	bctrl
/* 802566B0 00253610  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802566B4 00253614  38 81 00 28 */	addi r4, r1, 0x28
/* 802566B8 00253618  C0 03 00 00 */	lfs f0, 0(r3)
/* 802566BC 0025361C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802566C0 00253620  C0 03 00 04 */	lfs f0, 4(r3)
/* 802566C4 00253624  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802566C8 00253628  C0 03 00 08 */	lfs f0, 8(r3)
/* 802566CC 0025362C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802566D0 00253630  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 802566D4 00253634  81 83 00 00 */	lwz r12, 0(r3)
/* 802566D8 00253638  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802566DC 0025363C  7D 89 03 A6 */	mtctr r12
/* 802566E0 00253640  4E 80 04 21 */	bctrl
/* 802566E4 00253644  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 802566E8 00253648  81 83 00 00 */	lwz r12, 0(r3)
/* 802566EC 0025364C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802566F0 00253650  7D 89 03 A6 */	mtctr r12
/* 802566F4 00253654  4E 80 04 21 */	bctrl
/* 802566F8 00253658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802566FC 0025365C  41 82 01 70 */	beq lbl_8025686C
/* 80256700 00253660  C0 3F 0D 08 */	lfs f1, 0xd08(r31)
/* 80256704 00253664  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80256708 00253668  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8025670C 0025366C  D0 3F 0D 08 */	stfs f1, 0xd08(r31)
/* 80256710 00253670  C0 3F 0D 08 */	lfs f1, 0xd08(r31)
/* 80256714 00253674  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80256718 00253678  4C 40 13 82 */	cror 2, 0, 2
/* 8025671C 0025367C  40 82 00 44 */	bne lbl_80256760
/* 80256720 00253680  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 80256724 00253684  38 80 00 00 */	li r4, 0
/* 80256728 00253688  81 83 00 00 */	lwz r12, 0(r3)
/* 8025672C 0025368C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80256730 00253690  7D 89 03 A6 */	mtctr r12
/* 80256734 00253694  4E 80 04 21 */	bctrl
/* 80256738 00253698  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 8025673C 0025369C  28 00 00 00 */	cmplwi r0, 0
/* 80256740 002536A0  41 82 01 2C */	beq lbl_8025686C
/* 80256744 002536A4  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 80256748 002536A8  38 61 00 18 */	addi r3, r1, 0x18
/* 8025674C 002536AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80256750 002536B0  48 09 37 35 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80256754 002536B4  38 00 00 00 */	li r0, 0
/* 80256758 002536B8  90 1F 0D 0C */	stw r0, 0xd0c(r31)
/* 8025675C 002536BC  48 00 01 10 */	b lbl_8025686C
lbl_80256760:
/* 80256760 002536C0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80256764 002536C4  38 61 00 70 */	addi r3, r1, 0x70
/* 80256768 002536C8  88 1F 0A 30 */	lbz r0, 0xa30(r31)
/* 8025676C 002536CC  38 A1 00 0C */	addi r5, r1, 0xc
/* 80256770 002536D0  83 C4 00 10 */	lwz r30, 0x10(r4)
/* 80256774 002536D4  38 C0 00 00 */	li r6, 0
/* 80256778 002536D8  98 01 00 0C */	stb r0, 0xc(r1)
/* 8025677C 002536DC  7F C4 F3 78 */	mr r4, r30
/* 80256780 002536E0  4B DD 5A F5 */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 80256784 002536E4  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 80256788 002536E8  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 8025678C 002536EC  88 03 01 84 */	lbz r0, 0x184(r3)
/* 80256790 002536F0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80256794 002536F4  28 00 00 00 */	cmplwi r0, 0
/* 80256798 002536F8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8025679C 002536FC  40 82 00 24 */	bne lbl_802567C0
/* 802567A0 00253700  34 83 01 78 */	addic. r4, r3, 0x178
/* 802567A4 00253704  41 82 00 10 */	beq lbl_802567B4
/* 802567A8 00253708  D0 04 00 00 */	stfs f0, 0(r4)
/* 802567AC 0025370C  D0 24 00 04 */	stfs f1, 4(r4)
/* 802567B0 00253710  D0 44 00 08 */	stfs f2, 8(r4)
lbl_802567B4:
/* 802567B4 00253714  38 00 00 01 */	li r0, 1
/* 802567B8 00253718  98 03 01 84 */	stb r0, 0x184(r3)
/* 802567BC 0025371C  48 00 00 10 */	b lbl_802567CC
lbl_802567C0:
/* 802567C0 00253720  D0 03 01 78 */	stfs f0, 0x178(r3)
/* 802567C4 00253724  D0 23 01 7C */	stfs f1, 0x17c(r3)
/* 802567C8 00253728  D0 43 01 80 */	stfs f2, 0x180(r3)
lbl_802567CC:
/* 802567CC 0025372C  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 802567D0 00253730  38 80 00 00 */	li r4, 0
/* 802567D4 00253734  80 7F 0C E4 */	lwz r3, 0xce4(r31)
/* 802567D8 00253738  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 802567DC 0025373C  38 A3 FF FF */	addi r5, r3, -1
/* 802567E0 00253740  40 82 00 0C */	bne lbl_802567EC
/* 802567E4 00253744  38 A5 FF FA */	addi r5, r5, -6
/* 802567E8 00253748  48 00 00 08 */	b lbl_802567F0
lbl_802567EC:
/* 802567EC 0025374C  38 85 FF F4 */	addi r4, r5, -12
lbl_802567F0:
/* 802567F0 00253750  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 802567F4 00253754  48 0B BD A1 */	bl Range__9CRandom16Fii
/* 802567F8 00253758  7C 7F 1A 14 */	add r3, r31, r3
/* 802567FC 0025375C  7F C4 F3 78 */	mr r4, r30
/* 80256800 00253760  88 03 0C E8 */	lbz r0, 0xce8(r3)
/* 80256804 00253764  38 61 00 40 */	addi r3, r1, 0x40
/* 80256808 00253768  38 A1 00 08 */	addi r5, r1, 8
/* 8025680C 0025376C  38 C0 00 00 */	li r6, 0
/* 80256810 00253770  98 01 00 08 */	stb r0, 8(r1)
/* 80256814 00253774  4B DD 5A 61 */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 80256818 00253778  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 8025681C 0025377C  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 80256820 00253780  88 03 01 A4 */	lbz r0, 0x1a4(r3)
/* 80256824 00253784  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80256828 00253788  28 00 00 00 */	cmplwi r0, 0
/* 8025682C 0025378C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80256830 00253790  40 82 00 24 */	bne lbl_80256854
/* 80256834 00253794  34 83 01 98 */	addic. r4, r3, 0x198
/* 80256838 00253798  41 82 00 10 */	beq lbl_80256848
/* 8025683C 0025379C  D0 04 00 00 */	stfs f0, 0(r4)
/* 80256840 002537A0  D0 24 00 04 */	stfs f1, 4(r4)
/* 80256844 002537A4  D0 44 00 08 */	stfs f2, 8(r4)
lbl_80256848:
/* 80256848 002537A8  38 00 00 01 */	li r0, 1
/* 8025684C 002537AC  98 03 01 A4 */	stb r0, 0x1a4(r3)
/* 80256850 002537B0  48 00 00 10 */	b lbl_80256860
lbl_80256854:
/* 80256854 002537B4  D0 03 01 98 */	stfs f0, 0x198(r3)
/* 80256858 002537B8  D0 23 01 9C */	stfs f1, 0x19c(r3)
/* 8025685C 002537BC  D0 43 01 A0 */	stfs f2, 0x1a0(r3)
lbl_80256860:
/* 80256860 002537C0  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 80256864 002537C4  38 80 00 01 */	li r4, 1
/* 80256868 002537C8  48 10 86 D5 */	bl ForceParticleCreation__17CParticleElectricFi
lbl_8025686C:
/* 8025686C 002537CC  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 80256870 002537D0  FC 20 F8 90 */	fmr f1, f31
/* 80256874 002537D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80256878 002537D8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025687C 002537DC  7D 89 03 A6 */	mtctr r12
/* 80256880 002537E0  4E 80 04 21 */	bctrl
/* 80256884 002537E4  48 00 00 28 */	b lbl_802568AC
lbl_80256888:
/* 80256888 002537E8  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 8025688C 002537EC  28 00 00 00 */	cmplwi r0, 0
/* 80256890 002537F0  41 82 00 1C */	beq lbl_802568AC
/* 80256894 002537F4  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 80256898 002537F8  38 61 00 14 */	addi r3, r1, 0x14
/* 8025689C 002537FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802568A0 00253800  48 09 35 E5 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 802568A4 00253804  38 00 00 00 */	li r0, 0
/* 802568A8 00253808  90 1F 0D 0C */	stw r0, 0xd0c(r31)
lbl_802568AC:
/* 802568AC 0025380C  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 802568B0 00253810  28 00 00 00 */	cmplwi r0, 0
/* 802568B4 00253814  41 82 00 3C */	beq lbl_802568F0
/* 802568B8 00253818  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 802568BC 0025381C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802568C0 00253820  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802568C4 00253824  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 802568C8 00253828  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802568CC 0025382C  38 61 00 10 */	addi r3, r1, 0x10
/* 802568D0 00253830  38 81 00 1C */	addi r4, r1, 0x1c
/* 802568D4 00253834  38 C0 00 7F */	li r6, 0x7f
/* 802568D8 00253838  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802568DC 0025383C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 802568E0 00253840  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 802568E4 00253844  80 1F 0D 0C */	lwz r0, 0xd0c(r31)
/* 802568E8 00253848  90 01 00 10 */	stw r0, 0x10(r1)
/* 802568EC 0025384C  48 09 35 C5 */	bl UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
lbl_802568F0:
/* 802568F0 00253850  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 802568F4 00253854  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 802568F8 00253858  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 802568FC 0025385C  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80256900 00253860  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80256904 00253864  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80256908 00253868  7C 08 03 A6 */	mtlr r0
/* 8025690C 0025386C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80256910 00253870  4E 80 00 20 */	blr

.global sub_80256914
sub_80256914:
/* 80256914 00253874  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80256918 00253878  7C 08 02 A6 */	mflr r0
/* 8025691C 0025387C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80256920 00253880  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80256924 00253884  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80256928 00253888  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8025692C 0025388C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80256930 00253890  7C 7E 1B 78 */	mr r30, r3
/* 80256934 00253894  FF E0 08 90 */	fmr f31, f1
/* 80256938 00253898  80 63 0C E0 */	lwz r3, 0xce0(r3)
/* 8025693C 0025389C  7C 9F 23 78 */	mr r31, r4
/* 80256940 002538A0  28 03 00 00 */	cmplwi r3, 0
/* 80256944 002538A4  41 82 00 18 */	beq lbl_8025695C
/* 80256948 002538A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8025694C 002538AC  38 80 00 01 */	li r4, 1
/* 80256950 002538B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80256954 002538B4  7D 89 03 A6 */	mtctr r12
/* 80256958 002538B8  4E 80 04 21 */	bctrl
lbl_8025695C:
/* 8025695C 002538BC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80256960 002538C0  41 82 00 10 */	beq lbl_80256970
/* 80256964 002538C4  C0 02 B9 24 */	lfs f0, lbl_805AD644@sda21(r2)
/* 80256968 002538C8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8025696C 002538CC  48 00 00 08 */	b lbl_80256974
lbl_80256970:
/* 80256970 002538D0  FC 00 F8 90 */	fmr f0, f31
lbl_80256974:
/* 80256974 002538D4  D0 1E 0D 08 */	stfs f0, 0xd08(r30)
/* 80256978 002538D8  88 1E 0A 32 */	lbz r0, 0xa32(r30)
/* 8025697C 002538DC  53 E0 0F BC */	rlwimi r0, r31, 1, 0x1e, 0x1e
/* 80256980 002538E0  98 1E 0A 32 */	stb r0, 0xa32(r30)
/* 80256984 002538E4  80 1E 0D 0C */	lwz r0, 0xd0c(r30)
/* 80256988 002538E8  28 00 00 00 */	cmplwi r0, 0
/* 8025698C 002538EC  40 82 00 C0 */	bne lbl_80256A4C
/* 80256990 002538F0  C0 A2 B9 18 */	lfs f5, lbl_805AD638@sda21(r2)
/* 80256994 002538F4  39 60 00 00 */	li r11, 0
/* 80256998 002538F8  C0 82 B9 90 */	lfs f4, lbl_805AD6B0@sda21(r2)
/* 8025699C 002538FC  39 80 00 01 */	li r12, 1
/* 802569A0 00253900  C0 62 B9 94 */	lfs f3, lbl_805AD6B4@sda21(r2)
/* 802569A4 00253904  39 40 00 7F */	li r10, 0x7f
/* 802569A8 00253908  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 802569AC 0025390C  39 20 00 3F */	li r9, 0x3f
/* 802569B0 00253910  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802569B4 00253914  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802569B8 00253918  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 802569BC 0025391C  A8 C2 C5 FA */	lha r6, lbl_805AE31A@sda21(r2)
/* 802569C0 00253920  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 802569C4 00253924  38 61 00 08 */	addi r3, r1, 8
/* 802569C8 00253928  C0 48 00 00 */	lfs f2, 0(r8)
/* 802569CC 0025392C  38 81 00 0C */	addi r4, r1, 0xc
/* 802569D0 00253930  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 802569D4 00253934  38 A0 00 01 */	li r5, 1
/* 802569D8 00253938  C0 28 00 04 */	lfs f1, 4(r8)
/* 802569DC 0025393C  38 E0 00 01 */	li r7, 1
/* 802569E0 00253940  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 802569E4 00253944  C0 08 00 08 */	lfs f0, 8(r8)
/* 802569E8 00253948  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 802569EC 0025394C  81 02 C6 00 */	lwz r8, lbl_805AE320@sda21(r2)
/* 802569F0 00253950  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 802569F4 00253954  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 802569F8 00253958  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 802569FC 0025395C  91 81 00 2C */	stw r12, 0x2c(r1)
/* 80256A00 00253960  B1 61 00 30 */	sth r11, 0x30(r1)
/* 80256A04 00253964  99 41 00 32 */	stb r10, 0x32(r1)
/* 80256A08 00253968  99 21 00 33 */	stb r9, 0x33(r1)
/* 80256A0C 0025396C  99 61 00 34 */	stb r11, 0x34(r1)
/* 80256A10 00253970  98 01 00 35 */	stb r0, 0x35(r1)
/* 80256A14 00253974  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 80256A18 00253978  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80256A1C 0025397C  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80256A20 00253980  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80256A24 00253984  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80256A28 00253988  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80256A2C 0025398C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80256A30 00253990  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80256A34 00253994  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80256A38 00253998  A0 1E 09 60 */	lhz r0, 0x960(r30)
/* 80256A3C 0025399C  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80256A40 002539A0  48 09 35 A1 */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 80256A44 002539A4  80 01 00 08 */	lwz r0, 8(r1)
/* 80256A48 002539A8  90 1E 0D 0C */	stw r0, 0xd0c(r30)
lbl_80256A4C:
/* 80256A4C 002539AC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80256A50 002539B0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80256A54 002539B4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80256A58 002539B8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80256A5C 002539BC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80256A60 002539C0  7C 08 03 A6 */	mtlr r0
/* 80256A64 002539C4  38 21 00 50 */	addi r1, r1, 0x50
/* 80256A68 002539C8  4E 80 00 20 */	blr

.global sub_80256a6c
sub_80256a6c:
/* 80256A6C 002539CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80256A70 002539D0  7C 08 02 A6 */	mflr r0
/* 80256A74 002539D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80256A78 002539D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80256A7C 002539DC  7C BF 2B 78 */	mr r31, r5
/* 80256A80 002539E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80256A84 002539E4  7C 9E 23 78 */	mr r30, r4
/* 80256A88 002539E8  38 81 00 08 */	addi r4, r1, 8
/* 80256A8C 002539EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80256A90 002539F0  7C 7D 1B 78 */	mr r29, r3
/* 80256A94 002539F4  A0 03 0B 64 */	lhz r0, 0xb64(r3)
/* 80256A98 002539F8  7F C3 F3 78 */	mr r3, r30
/* 80256A9C 002539FC  B0 01 00 08 */	sth r0, 8(r1)
/* 80256AA0 00253A00  4B DF 5A D5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80256AA4 00253A04  28 03 00 00 */	cmplwi r3, 0
/* 80256AA8 00253A08  41 82 00 2C */	beq lbl_80256AD4
/* 80256AAC 00253A0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80256AB0 00253A10  7F C4 F3 78 */	mr r4, r30
/* 80256AB4 00253A14  7F E5 FB 78 */	mr r5, r31
/* 80256AB8 00253A18  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80256ABC 00253A1C  7D 89 03 A6 */	mtctr r12
/* 80256AC0 00253A20  4E 80 04 21 */	bctrl
/* 80256AC4 00253A24  88 1D 0A 31 */	lbz r0, 0xa31(r29)
/* 80256AC8 00253A28  38 60 00 00 */	li r3, 0
/* 80256ACC 00253A2C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80256AD0 00253A30  98 1D 0A 31 */	stb r0, 0xa31(r29)
lbl_80256AD4:
/* 80256AD4 00253A34  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80256AD8 00253A38  28 00 00 00 */	cmplwi r0, 0
/* 80256ADC 00253A3C  41 82 00 1C */	beq lbl_80256AF8
/* 80256AE0 00253A40  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80256AE4 00253A44  38 61 00 0C */	addi r3, r1, 0xc
/* 80256AE8 00253A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80256AEC 00253A4C  48 09 33 99 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80256AF0 00253A50  38 00 00 00 */	li r0, 0
/* 80256AF4 00253A54  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80256AF8:
/* 80256AF8 00253A58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80256AFC 00253A5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80256B00 00253A60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80256B04 00253A64  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80256B08 00253A68  7C 08 03 A6 */	mtlr r0
/* 80256B0C 00253A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80256B10 00253A70  4E 80 00 20 */	blr

.global sub_80256b14
sub_80256b14:
/* 80256B14 00253A74  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80256B18 00253A78  7C 08 02 A6 */	mflr r0
/* 80256B1C 00253A7C  90 01 01 44 */	stw r0, 0x144(r1)
/* 80256B20 00253A80  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 80256B24 00253A84  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 80256B28 00253A88  93 E1 01 2C */	stw r31, 0x12c(r1)
/* 80256B2C 00253A8C  93 C1 01 28 */	stw r30, 0x128(r1)
/* 80256B30 00253A90  93 A1 01 24 */	stw r29, 0x124(r1)
/* 80256B34 00253A94  7C 7D 1B 78 */	mr r29, r3
/* 80256B38 00253A98  7C 9E 23 78 */	mr r30, r4
/* 80256B3C 00253A9C  A0 03 0B 64 */	lhz r0, 0xb64(r3)
/* 80256B40 00253AA0  FF E0 08 90 */	fmr f31, f1
/* 80256B44 00253AA4  7F C3 F3 78 */	mr r3, r30
/* 80256B48 00253AA8  38 81 00 08 */	addi r4, r1, 8
/* 80256B4C 00253AAC  B0 01 00 08 */	sth r0, 8(r1)
/* 80256B50 00253AB0  4B DF 5A 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80256B54 00253AB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80256B58 00253AB8  41 82 01 F4 */	beq lbl_80256D4C
/* 80256B5C 00253ABC  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80256B60 00253AC0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80256B64 00253AC4  41 82 01 E8 */	beq lbl_80256D4C
/* 80256B68 00253AC8  7F A4 EB 78 */	mr r4, r29
/* 80256B6C 00253ACC  38 61 00 88 */	addi r3, r1, 0x88
/* 80256B70 00253AD0  38 BD 0B 91 */	addi r5, r29, 0xb91
/* 80256B74 00253AD4  4B E2 1D 45 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80256B78 00253AD8  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80256B7C 00253ADC  38 81 00 88 */	addi r4, r1, 0x88
/* 80256B80 00253AE0  48 0B BF F5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80256B84 00253AE4  80 1D 0C 64 */	lwz r0, 0xc64(r29)
/* 80256B88 00253AE8  2C 00 00 03 */	cmpwi r0, 3
/* 80256B8C 00253AEC  40 82 00 28 */	bne lbl_80256BB4
/* 80256B90 00253AF0  7F E3 FB 78 */	mr r3, r31
/* 80256B94 00253AF4  FC 20 F8 90 */	fmr f1, f31
/* 80256B98 00253AF8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80256B9C 00253AFC  7F C5 F3 78 */	mr r5, r30
/* 80256BA0 00253B00  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80256BA4 00253B04  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80256BA8 00253B08  7D 89 03 A6 */	mtctr r12
/* 80256BAC 00253B0C  4E 80 04 21 */	bctrl
/* 80256BB0 00253B10  48 00 01 9C */	b lbl_80256D4C
lbl_80256BB4:
/* 80256BB4 00253B14  C0 41 00 F4 */	lfs f2, 0xf4(r1)
/* 80256BB8 00253B18  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80256BBC 00253B1C  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 80256BC0 00253B20  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 80256BC4 00253B24  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80256BC8 00253B28  38 61 00 58 */	addi r3, r1, 0x58
/* 80256BCC 00253B2C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80256BD0 00253B30  38 81 00 3C */	addi r4, r1, 0x3c
/* 80256BD4 00253B34  38 BD 0B E4 */	addi r5, r29, 0xbe4
/* 80256BD8 00253B38  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80256BDC 00253B3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80256BE0 00253B40  48 0B CF 31 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80256BE4 00253B44  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80256BE8 00253B48  38 81 00 58 */	addi r4, r1, 0x58
/* 80256BEC 00253B4C  48 0B BF 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80256BF0 00253B50  7F E3 FB 78 */	mr r3, r31
/* 80256BF4 00253B54  FC 20 F8 90 */	fmr f1, f31
/* 80256BF8 00253B58  81 9F 00 00 */	lwz r12, 0(r31)
/* 80256BFC 00253B5C  7F C5 F3 78 */	mr r5, r30
/* 80256C00 00253B60  38 81 00 B8 */	addi r4, r1, 0xb8
/* 80256C04 00253B64  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80256C08 00253B68  7D 89 03 A6 */	mtctr r12
/* 80256C0C 00253B6C  4E 80 04 21 */	bctrl
/* 80256C10 00253B70  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80256C14 00253B74  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80256C18 00253B78  38 63 66 F4 */	addi r3, r3, lbl_805A66F4@l
/* 80256C1C 00253B7C  C1 3D 0B F0 */	lfs f9, 0xbf0(r29)
/* 80256C20 00253B80  C1 83 00 08 */	lfs f12, 8(r3)
/* 80256C24 00253B84  C1 63 00 04 */	lfs f11, 4(r3)
/* 80256C28 00253B88  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80256C2C 00253B8C  EC 4C 02 72 */	fmuls f2, f12, f9
/* 80256C30 00253B90  C0 BD 0B F8 */	lfs f5, 0xbf8(r29)
/* 80256C34 00253B94  C1 43 00 00 */	lfs f10, 0(r3)
/* 80256C38 00253B98  EC 20 58 2A */	fadds f1, f0, f11
/* 80256C3C 00253B9C  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 80256C40 00253BA0  EC 8B 01 72 */	fmuls f4, f11, f5
/* 80256C44 00253BA4  C0 FD 0B F4 */	lfs f7, 0xbf4(r29)
/* 80256C48 00253BA8  EC 45 12 B8 */	fmsubs f2, f5, f10, f2
/* 80256C4C 00253BAC  C0 1D 0B E8 */	lfs f0, 0xbe8(r29)
/* 80256C50 00253BB0  C0 C4 00 60 */	lfs f6, 0x60(r4)
/* 80256C54 00253BB4  ED 0A 01 F2 */	fmuls f8, f10, f7
/* 80256C58 00253BB8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80256C5C 00253BBC  C0 1D 0B E4 */	lfs f0, 0xbe4(r29)
/* 80256C60 00253BC0  EC 63 50 2A */	fadds f3, f3, f10
/* 80256C64 00253BC4  C0 BD 0B EC */	lfs f5, 0xbec(r29)
/* 80256C68 00253BC8  EC C6 60 2A */	fadds f6, f6, f12
/* 80256C6C 00253BCC  EC 87 23 38 */	fmsubs f4, f7, f12, f4
/* 80256C70 00253BD0  EC 63 00 28 */	fsubs f3, f3, f0
/* 80256C74 00253BD4  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80256C78 00253BD8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80256C7C 00253BDC  C0 E2 B9 98 */	lfs f7, lbl_805AD6B8@sda21(r2)
/* 80256C80 00253BE0  ED 09 42 F8 */	fmsubs f8, f9, f11, f8
/* 80256C84 00253BE4  EC 46 28 28 */	fsubs f2, f6, f5
/* 80256C88 00253BE8  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80256C8C 00253BEC  EC 28 08 BA */	fmadds f1, f8, f2, f1
/* 80256C90 00253BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80256C94 00253BF4  40 81 00 10 */	ble lbl_80256CA4
/* 80256C98 00253BF8  C0 1D 0C 10 */	lfs f0, 0xc10(r29)
/* 80256C9C 00253BFC  FC 00 00 50 */	fneg f0, f0
/* 80256CA0 00253C00  48 00 00 08 */	b lbl_80256CA8
lbl_80256CA4:
/* 80256CA4 00253C04  C0 1D 0C 10 */	lfs f0, 0xc10(r29)
lbl_80256CA8:
/* 80256CA8 00253C08  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80256CAC 00253C0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80256CB0 00253C10  38 81 00 10 */	addi r4, r1, 0x10
/* 80256CB4 00253C14  EC 07 00 32 */	fmuls f0, f7, f0
/* 80256CB8 00253C18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80256CBC 00253C1C  48 0B A4 3D */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 80256CC0 00253C20  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80256CC4 00253C24  38 61 00 20 */	addi r3, r1, 0x20
/* 80256CC8 00253C28  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80256CCC 00253C2C  38 81 00 48 */	addi r4, r1, 0x48
/* 80256CD0 00253C30  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80256CD4 00253C34  38 BD 0B F0 */	addi r5, r29, 0xbf0
/* 80256CD8 00253C38  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80256CDC 00253C3C  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80256CE0 00253C40  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80256CE4 00253C44  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80256CE8 00253C48  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80256CEC 00253C4C  48 0B A5 79 */	bl Transform__11CQuaternionCFRC9CVector3f
/* 80256CF0 00253C50  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 80256CF4 00253C54  C0 5D 0C 00 */	lfs f2, 0xc00(r29)
/* 80256CF8 00253C58  C0 C1 00 20 */	lfs f6, 0x20(r1)
/* 80256CFC 00253C5C  EC 02 01 32 */	fmuls f0, f2, f4
/* 80256D00 00253C60  C0 FD 0B FC */	lfs f7, 0xbfc(r29)
/* 80256D04 00253C64  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 80256D08 00253C68  C1 1D 0C 04 */	lfs f8, 0xc04(r29)
/* 80256D0C 00253C6C  EC 27 01 BA */	fmadds f1, f7, f6, f0
/* 80256D10 00253C70  C0 02 B9 38 */	lfs f0, lbl_805AD658@sda21(r2)
/* 80256D14 00253C74  EC 68 09 7A */	fmadds f3, f8, f5, f1
/* 80256D18 00253C78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80256D1C 00253C7C  41 81 00 24 */	bgt lbl_80256D40
/* 80256D20 00253C80  C0 1D 0B F4 */	lfs f0, 0xbf4(r29)
/* 80256D24 00253C84  C0 3D 0B F0 */	lfs f1, 0xbf0(r29)
/* 80256D28 00253C88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80256D2C 00253C8C  C0 5D 0B F8 */	lfs f2, 0xbf8(r29)
/* 80256D30 00253C90  EC 07 00 7A */	fmadds f0, f7, f1, f0
/* 80256D34 00253C94  EC 08 00 BA */	fmadds f0, f8, f2, f0
/* 80256D38 00253C98  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80256D3C 00253C9C  40 81 00 10 */	ble lbl_80256D4C
lbl_80256D40:
/* 80256D40 00253CA0  D0 DD 0B F0 */	stfs f6, 0xbf0(r29)
/* 80256D44 00253CA4  D0 9D 0B F4 */	stfs f4, 0xbf4(r29)
/* 80256D48 00253CA8  D0 BD 0B F8 */	stfs f5, 0xbf8(r29)
lbl_80256D4C:
/* 80256D4C 00253CAC  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80256D50 00253CB0  28 00 00 00 */	cmplwi r0, 0
/* 80256D54 00253CB4  41 82 00 3C */	beq lbl_80256D90
/* 80256D58 00253CB8  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80256D5C 00253CBC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80256D60 00253CC0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80256D64 00253CC4  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 80256D68 00253CC8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80256D6C 00253CCC  38 61 00 0C */	addi r3, r1, 0xc
/* 80256D70 00253CD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80256D74 00253CD4  38 C0 00 7F */	li r6, 0x7f
/* 80256D78 00253CD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80256D7C 00253CDC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80256D80 00253CE0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80256D84 00253CE4  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80256D88 00253CE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80256D8C 00253CEC  48 09 31 25 */	bl UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
lbl_80256D90:
/* 80256D90 00253CF0  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 80256D94 00253CF4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80256D98 00253CF8  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 80256D9C 00253CFC  83 E1 01 2C */	lwz r31, 0x12c(r1)
/* 80256DA0 00253D00  83 C1 01 28 */	lwz r30, 0x128(r1)
/* 80256DA4 00253D04  83 A1 01 24 */	lwz r29, 0x124(r1)
/* 80256DA8 00253D08  7C 08 03 A6 */	mtlr r0
/* 80256DAC 00253D0C  38 21 01 40 */	addi r1, r1, 0x140
/* 80256DB0 00253D10  4E 80 00 20 */	blr

.global sub_80256db4
sub_80256db4:
/* 80256DB4 00253D14  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80256DB8 00253D18  7C 08 02 A6 */	mflr r0
/* 80256DBC 00253D1C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80256DC0 00253D20  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80256DC4 00253D24  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80256DC8 00253D28  7C 9E 23 78 */	mr r30, r4
/* 80256DCC 00253D2C  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 80256DD0 00253D30  7C 7D 1B 78 */	mr r29, r3
/* 80256DD4 00253D34  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 80256DD8 00253D38  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80256DDC 00253D3C  A0 63 0B 64 */	lhz r3, 0xb64(r3)
/* 80256DE0 00253D40  7C 03 00 40 */	cmplw r3, r0
/* 80256DE4 00253D44  40 82 01 20 */	bne lbl_80256F04
/* 80256DE8 00253D48  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80256DEC 00253D4C  3B 80 00 00 */	li r28, 0
/* 80256DF0 00253D50  38 83 4D 5C */	addi r4, r3, lbl_803D4D5C@l
/* 80256DF4 00253D54  38 60 05 50 */	li r3, 0x550
/* 80256DF8 00253D58  38 84 00 85 */	addi r4, r4, 0x85
/* 80256DFC 00253D5C  38 A0 00 00 */	li r5, 0
/* 80256E00 00253D60  48 0B EA 6D */	bl __nw__FUlPCcPCc
/* 80256E04 00253D64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80256E08 00253D68  41 82 00 D0 */	beq lbl_80256ED8
/* 80256E0C 00253D6C  38 00 FF FF */	li r0, -1
/* 80256E10 00253D70  38 60 00 08 */	li r3, 8
/* 80256E14 00253D74  90 61 00 80 */	stw r3, 0x80(r1)
/* 80256E18 00253D78  7F C4 F3 78 */	mr r4, r30
/* 80256E1C 00253D7C  38 61 00 24 */	addi r3, r1, 0x24
/* 80256E20 00253D80  90 01 00 84 */	stw r0, 0x84(r1)
/* 80256E24 00253D84  90 01 00 88 */	stw r0, 0x88(r1)
/* 80256E28 00253D88  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80256E2C 00253D8C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80256E30 00253D90  90 01 00 94 */	stw r0, 0x94(r1)
/* 80256E34 00253D94  90 01 00 98 */	stw r0, 0x98(r1)
/* 80256E38 00253D98  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80256E3C 00253D9C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80256E40 00253DA0  A0 BD 00 08 */	lhz r5, 8(r29)
/* 80256E44 00253DA4  B0 A1 00 30 */	sth r5, 0x30(r1)
/* 80256E48 00253DA8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80256E4C 00253DAC  B0 A1 00 2C */	sth r5, 0x2c(r1)
/* 80256E50 00253DB0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80256E54 00253DB4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80256E58 00253DB8  4B DF 62 85 */	bl AllocateUniqueId__13CStateManagerFv
/* 80256E5C 00253DBC  A0 01 00 24 */	lhz r0, 0x24(r1)
/* 80256E60 00253DC0  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80256E64 00253DC4  38 83 4D 5C */	addi r4, r3, lbl_803D4D5C@l
/* 80256E68 00253DC8  38 61 00 40 */	addi r3, r1, 0x40
/* 80256E6C 00253DCC  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80256E70 00253DD0  38 84 00 8C */	addi r4, r4, 0x8c
/* 80256E74 00253DD4  4B DA DE 45 */	bl string_l__4rstlFPCc
/* 80256E78 00253DD8  38 01 00 28 */	addi r0, r1, 0x28
/* 80256E7C 00253DDC  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 80256E80 00253DE0  90 01 00 08 */	stw r0, 8(r1)
/* 80256E84 00253DE4  38 01 00 3C */	addi r0, r1, 0x3c
/* 80256E88 00253DE8  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 80256E8C 00253DEC  38 61 00 30 */	addi r3, r1, 0x30
/* 80256E90 00253DF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80256E94 00253DF4  38 A1 00 80 */	addi r5, r1, 0x80
/* 80256E98 00253DF8  38 C0 00 00 */	li r6, 0
/* 80256E9C 00253DFC  3C 00 00 02 */	lis r0, 2
/* 80256EA0 00253E00  90 61 00 10 */	stw r3, 0x10(r1)
/* 80256EA4 00253E04  7F E3 FB 78 */	mr r3, r31
/* 80256EA8 00253E08  38 9D 0B 68 */	addi r4, r29, 0xb68
/* 80256EAC 00253E0C  38 FD 05 CC */	addi r7, r29, 0x5cc
/* 80256EB0 00253E10  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80256EB4 00253E14  38 A1 00 40 */	addi r5, r1, 0x40
/* 80256EB8 00253E18  39 5D 0B 74 */	addi r10, r29, 0xb74
/* 80256EBC 00253E1C  3B 80 00 01 */	li r28, 1
/* 80256EC0 00253E20  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80256EC4 00253E24  38 C0 00 09 */	li r6, 9
/* 80256EC8 00253E28  39 20 00 21 */	li r9, 0x21
/* 80256ECC 00253E2C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80256ED0 00253E30  4B F2 1D 59 */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdbUi"
/* 80256ED4 00253E34  7C 7F 1B 78 */	mr r31, r3
lbl_80256ED8:
/* 80256ED8 00253E38  7F 80 07 75 */	extsb. r0, r28
/* 80256EDC 00253E3C  41 82 00 0C */	beq lbl_80256EE8
/* 80256EE0 00253E40  38 61 00 40 */	addi r3, r1, 0x40
/* 80256EE4 00253E44  48 0E 6B FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80256EE8:
/* 80256EE8 00253E48  28 1F 00 00 */	cmplwi r31, 0
/* 80256EEC 00253E4C  41 82 00 18 */	beq lbl_80256F04
/* 80256EF0 00253E50  7F C3 F3 78 */	mr r3, r30
/* 80256EF4 00253E54  7F E4 FB 78 */	mr r4, r31
/* 80256EF8 00253E58  4B DF 5C 1D */	bl AddObject__13CStateManagerFR7CEntity
/* 80256EFC 00253E5C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80256F00 00253E60  B0 1D 0B 64 */	sth r0, 0xb64(r29)
lbl_80256F04:
/* 80256F04 00253E64  A0 1D 0B 64 */	lhz r0, 0xb64(r29)
/* 80256F08 00253E68  7F C3 F3 78 */	mr r3, r30
/* 80256F0C 00253E6C  38 81 00 20 */	addi r4, r1, 0x20
/* 80256F10 00253E70  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80256F14 00253E74  4B DF 56 61 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80256F18 00253E78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80256F1C 00253E7C  41 82 01 08 */	beq lbl_80257024
/* 80256F20 00253E80  7F A4 EB 78 */	mr r4, r29
/* 80256F24 00253E84  38 61 00 50 */	addi r3, r1, 0x50
/* 80256F28 00253E88  38 BD 0B 91 */	addi r5, r29, 0xb91
/* 80256F2C 00253E8C  4B E2 19 8D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80256F30 00253E90  7F E3 FB 78 */	mr r3, r31
/* 80256F34 00253E94  7F C5 F3 78 */	mr r5, r30
/* 80256F38 00253E98  81 9F 00 00 */	lwz r12, 0(r31)
/* 80256F3C 00253E9C  38 81 00 50 */	addi r4, r1, 0x50
/* 80256F40 00253EA0  38 C0 00 00 */	li r6, 0
/* 80256F44 00253EA4  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80256F48 00253EA8  7D 89 03 A6 */	mtctr r12
/* 80256F4C 00253EAC  4E 80 04 21 */	bctrl
/* 80256F50 00253EB0  88 1D 0A 31 */	lbz r0, 0xa31(r29)
/* 80256F54 00253EB4  39 80 00 01 */	li r12, 1
/* 80256F58 00253EB8  51 80 17 7A */	rlwimi r0, r12, 2, 0x1d, 0x1d
/* 80256F5C 00253EBC  98 1D 0A 31 */	stb r0, 0xa31(r29)
/* 80256F60 00253EC0  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80256F64 00253EC4  28 00 00 00 */	cmplwi r0, 0
/* 80256F68 00253EC8  40 82 00 BC */	bne lbl_80257024
/* 80256F6C 00253ECC  C0 A2 B9 18 */	lfs f5, lbl_805AD638@sda21(r2)
/* 80256F70 00253ED0  39 60 00 00 */	li r11, 0
/* 80256F74 00253ED4  C0 82 B9 9C */	lfs f4, lbl_805AD6BC@sda21(r2)
/* 80256F78 00253ED8  39 40 00 7F */	li r10, 0x7f
/* 80256F7C 00253EDC  C0 62 B9 94 */	lfs f3, lbl_805AD6B4@sda21(r2)
/* 80256F80 00253EE0  39 20 00 3F */	li r9, 0x3f
/* 80256F84 00253EE4  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 80256F88 00253EE8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80256F8C 00253EEC  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 80256F90 00253EF0  D0 A1 00 A4 */	stfs f5, 0xa4(r1)
/* 80256F94 00253EF4  C0 46 00 00 */	lfs f2, 0(r6)
/* 80256F98 00253EF8  38 61 00 34 */	addi r3, r1, 0x34
/* 80256F9C 00253EFC  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 80256FA0 00253F00  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80256FA4 00253F04  C0 26 00 04 */	lfs f1, 4(r6)
/* 80256FA8 00253F08  38 A0 00 01 */	li r5, 1
/* 80256FAC 00253F0C  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 80256FB0 00253F10  38 E0 00 01 */	li r7, 1
/* 80256FB4 00253F14  C0 06 00 08 */	lfs f0, 8(r6)
/* 80256FB8 00253F18  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 80256FBC 00253F1C  A8 C2 C5 F8 */	lha r6, lbl_805AE318@sda21(r2)
/* 80256FC0 00253F20  D0 A1 00 B4 */	stfs f5, 0xb4(r1)
/* 80256FC4 00253F24  81 02 C6 00 */	lwz r8, lbl_805AE320@sda21(r2)
/* 80256FC8 00253F28  D0 A1 00 B8 */	stfs f5, 0xb8(r1)
/* 80256FCC 00253F2C  D0 81 00 BC */	stfs f4, 0xbc(r1)
/* 80256FD0 00253F30  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 80256FD4 00253F34  91 81 00 C4 */	stw r12, 0xc4(r1)
/* 80256FD8 00253F38  B1 61 00 C8 */	sth r11, 0xc8(r1)
/* 80256FDC 00253F3C  99 41 00 CA */	stb r10, 0xca(r1)
/* 80256FE0 00253F40  99 21 00 CB */	stb r9, 0xcb(r1)
/* 80256FE4 00253F44  99 61 00 CC */	stb r11, 0xcc(r1)
/* 80256FE8 00253F48  98 01 00 CD */	stb r0, 0xcd(r1)
/* 80256FEC 00253F4C  C0 BD 00 60 */	lfs f5, 0x60(r29)
/* 80256FF0 00253F50  C0 9D 00 50 */	lfs f4, 0x50(r29)
/* 80256FF4 00253F54  C0 7D 00 40 */	lfs f3, 0x40(r29)
/* 80256FF8 00253F58  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 80256FFC 00253F5C  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80257000 00253F60  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 80257004 00253F64  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 80257008 00253F68  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 8025700C 00253F6C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80257010 00253F70  A0 1D 06 10 */	lhz r0, 0x610(r29)
/* 80257014 00253F74  B0 01 00 C8 */	sth r0, 0xc8(r1)
/* 80257018 00253F78  48 09 2F C9 */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 8025701C 00253F7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80257020 00253F80  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80257024:
/* 80257024 00253F84  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80257028 00253F88  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8025702C 00253F8C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80257030 00253F90  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 80257034 00253F94  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 80257038 00253F98  7C 08 03 A6 */	mtlr r0
/* 8025703C 00253F9C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80257040 00253FA0  4E 80 00 20 */	blr

.global sub_80257044
sub_80257044:
/* 80257044 00253FA4  94 21 FD E0 */	stwu r1, -0x220(r1)
/* 80257048 00253FA8  7C 08 02 A6 */	mflr r0
/* 8025704C 00253FAC  90 01 02 24 */	stw r0, 0x224(r1)
/* 80257050 00253FB0  DB E1 02 10 */	stfd f31, 0x210(r1)
/* 80257054 00253FB4  F3 E1 02 18 */	psq_st f31, 536(r1), 0, qr0
/* 80257058 00253FB8  BF 01 01 F0 */	stmw r24, 0x1f0(r1)
/* 8025705C 00253FBC  38 A0 00 00 */	li r5, 0
/* 80257060 00253FC0  7C 7D 1B 78 */	mr r29, r3
/* 80257064 00253FC4  90 A1 01 38 */	stw r5, 0x138(r1)
/* 80257068 00253FC8  7C 9E 23 78 */	mr r30, r4
/* 8025706C 00253FCC  80 6D 97 64 */	lwz r3, lbl_805A8324@sda21(r13)
/* 80257070 00253FD0  38 8D 97 64 */	addi r4, r13, lbl_805A8324@sda21
/* 80257074 00253FD4  80 0D 97 68 */	lwz r0, lbl_805A8328@sda21(r13)
/* 80257078 00253FD8  90 A1 01 3C */	stw r5, 0x13c(r1)
/* 8025707C 00253FDC  7C 03 00 40 */	cmplw r3, r0
/* 80257080 00253FE0  90 A1 01 40 */	stw r5, 0x140(r1)
/* 80257084 00253FE4  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80257088 00253FE8  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8025708C 00253FEC  40 80 00 08 */	bge lbl_80257094
/* 80257090 00253FF0  38 8D 97 68 */	addi r4, r13, lbl_805A8328@sda21
lbl_80257094:
/* 80257094 00253FF4  80 84 00 00 */	lwz r4, 0(r4)
/* 80257098 00253FF8  38 61 01 34 */	addi r3, r1, 0x134
/* 8025709C 00253FFC  4B EF F7 1D */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 802570A0 00254000  80 01 01 38 */	lwz r0, 0x138(r1)
/* 802570A4 00254004  83 01 01 40 */	lwz r24, 0x140(r1)
/* 802570A8 00254008  1C 00 00 44 */	mulli r0, r0, 0x44
/* 802570AC 0025400C  93 01 00 44 */	stw r24, 0x44(r1)
/* 802570B0 00254010  7F 98 02 14 */	add r28, r24, r0
/* 802570B4 00254014  93 01 00 40 */	stw r24, 0x40(r1)
/* 802570B8 00254018  93 81 00 4C */	stw r28, 0x4c(r1)
/* 802570BC 0025401C  93 81 00 48 */	stw r28, 0x48(r1)
/* 802570C0 00254020  48 00 00 20 */	b lbl_802570E0
lbl_802570C4:
/* 802570C4 00254024  28 18 00 00 */	cmplwi r24, 0
/* 802570C8 00254028  41 82 00 14 */	beq lbl_802570DC
/* 802570CC 0025402C  34 18 00 2C */	addic. r0, r24, 0x2c
/* 802570D0 00254030  41 82 00 0C */	beq lbl_802570DC
/* 802570D4 00254034  38 78 00 2C */	addi r3, r24, 0x2c
/* 802570D8 00254038  48 0E 6A 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802570DC:
/* 802570DC 0025403C  3B 18 00 44 */	addi r24, r24, 0x44
lbl_802570E0:
/* 802570E0 00254040  7C 18 E0 40 */	cmplw r24, r28
/* 802570E4 00254044  40 82 FF E0 */	bne lbl_802570C4
/* 802570E8 00254048  38 00 00 00 */	li r0, 0
/* 802570EC 0025404C  3C 60 80 3D */	lis r3, lbl_803D4B98@ha
/* 802570F0 00254050  3B 03 4B 98 */	addi r24, r3, lbl_803D4B98@l
/* 802570F4 00254054  90 01 01 38 */	stw r0, 0x138(r1)
/* 802570F8 00254058  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 802570FC 0025405C  3B 21 01 D0 */	addi r25, r1, 0x1d0
/* 80257100 00254060  3B 83 4D 5C */	addi r28, r3, lbl_803D4D5C@l
/* 80257104 00254064  3B 40 00 00 */	li r26, 0
lbl_80257108:
/* 80257108 00254068  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 8025710C 0025406C  38 61 01 18 */	addi r3, r1, 0x118
/* 80257110 00254070  C0 18 00 08 */	lfs f0, 8(r24)
/* 80257114 00254074  C0 24 00 08 */	lfs f1, 8(r4)
/* 80257118 00254078  C0 64 00 00 */	lfs f3, 0(r4)
/* 8025711C 0025407C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80257120 00254080  EF E0 00 72 */	fmuls f31, f0, f1
/* 80257124 00254084  D0 61 01 28 */	stfs f3, 0x128(r1)
/* 80257128 00254088  80 98 00 00 */	lwz r4, 0(r24)
/* 8025712C 0025408C  D0 41 01 2C */	stfs f2, 0x12c(r1)
/* 80257130 00254090  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 80257134 00254094  4B DA DB 85 */	bl string_l__4rstlFPCc
/* 80257138 00254098  80 98 00 04 */	lwz r4, 4(r24)
/* 8025713C 0025409C  38 61 01 08 */	addi r3, r1, 0x108
/* 80257140 002540A0  4B DA DB 79 */	bl string_l__4rstlFPCc
/* 80257144 002540A4  38 61 00 EC */	addi r3, r1, 0xec
/* 80257148 002540A8  38 9C 00 8D */	addi r4, r28, 0x8d
/* 8025714C 002540AC  4B DA DB 6D */	bl string_l__4rstlFPCc
/* 80257150 002540B0  38 61 00 DC */	addi r3, r1, 0xdc
/* 80257154 002540B4  38 9D 00 10 */	addi r4, r29, 0x10
/* 80257158 002540B8  38 A1 00 EC */	addi r5, r1, 0xec
/* 8025715C 002540BC  4B DA DB 01 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80257160 002540C0  80 98 00 00 */	lwz r4, 0(r24)
/* 80257164 002540C4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80257168 002540C8  4B DA DB 51 */	bl string_l__4rstlFPCc
/* 8025716C 002540CC  38 61 00 BC */	addi r3, r1, 0xbc
/* 80257170 002540D0  38 81 00 DC */	addi r4, r1, 0xdc
/* 80257174 002540D4  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80257178 002540D8  4B DA DA E5 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025717C 002540DC  D3 E1 00 FC */	stfs f31, 0xfc(r1)
/* 80257180 002540E0  7F E4 FB 78 */	mr r4, r31
/* 80257184 002540E4  38 61 00 10 */	addi r3, r1, 0x10
/* 80257188 002540E8  38 A1 01 08 */	addi r5, r1, 0x108
/* 8025718C 002540EC  D3 E1 01 00 */	stfs f31, 0x100(r1)
/* 80257190 002540F0  D3 E1 01 04 */	stfs f31, 0x104(r1)
/* 80257194 002540F4  4B DD 76 A5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80257198 002540F8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8025719C 002540FC  7F E4 FB 78 */	mr r4, r31
/* 802571A0 00254100  38 61 00 18 */	addi r3, r1, 0x18
/* 802571A4 00254104  38 A1 01 18 */	addi r5, r1, 0x118
/* 802571A8 00254108  98 01 00 14 */	stb r0, 0x14(r1)
/* 802571AC 0025410C  4B DD 76 8D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802571B0 00254110  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802571B4 00254114  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 802571B8 00254118  C0 22 B9 2C */	lfs f1, lbl_805AD64C@sda21(r2)
/* 802571BC 0025411C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802571C0 00254120  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802571C4 00254124  38 A1 00 14 */	addi r5, r1, 0x14
/* 802571C8 00254128  38 C1 00 FC */	addi r6, r1, 0xfc
/* 802571CC 0025412C  39 01 00 BC */	addi r8, r1, 0xbc
/* 802571D0 00254130  38 E0 00 01 */	li r7, 1
/* 802571D4 00254134  4B F5 14 01 */	bl "OBBAutoSizeCollision__26CJointCollisionDescriptionF6CSegId6CSegIdRC9CVector3fQ226CJointCollisionDescription16EOrientationTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 802571D8 00254138  38 61 01 34 */	addi r3, r1, 0x134
/* 802571DC 0025413C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 802571E0 00254140  4B EF F0 51 */	bl sub_80156230
/* 802571E4 00254144  28 19 00 00 */	cmplwi r25, 0
/* 802571E8 00254148  41 82 00 0C */	beq lbl_802571F4
/* 802571EC 0025414C  7F 23 CB 78 */	mr r3, r25
/* 802571F0 00254150  48 0E 68 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802571F4:
/* 802571F4 00254154  38 61 00 BC */	addi r3, r1, 0xbc
/* 802571F8 00254158  48 0E 68 E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802571FC 0025415C  38 61 00 CC */	addi r3, r1, 0xcc
/* 80257200 00254160  48 0E 68 E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80257204 00254164  38 61 00 DC */	addi r3, r1, 0xdc
/* 80257208 00254168  48 0E 68 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025720C 0025416C  38 61 00 EC */	addi r3, r1, 0xec
/* 80257210 00254170  48 0E 68 D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80257214 00254174  38 61 01 08 */	addi r3, r1, 0x108
/* 80257218 00254178  48 0E 68 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025721C 0025417C  38 61 01 18 */	addi r3, r1, 0x118
/* 80257220 00254180  48 0E 68 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80257224 00254184  3B 5A 00 01 */	addi r26, r26, 1
/* 80257228 00254188  3B 18 00 0C */	addi r24, r24, 0xc
/* 8025722C 0025418C  28 1A 00 04 */	cmplwi r26, 4
/* 80257230 00254190  41 80 FE D8 */	blt lbl_80257108
/* 80257234 00254194  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 80257238 00254198  38 60 00 18 */	li r3, 0x18
/* 8025723C 0025419C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 80257240 002541A0  38 A0 00 00 */	li r5, 0
/* 80257244 002541A4  38 84 00 85 */	addi r4, r4, 0x85
/* 80257248 002541A8  48 0B E6 25 */	bl __nw__FUlPCcPCc
/* 8025724C 002541AC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80257250 002541B0  41 82 00 38 */	beq lbl_80257288
/* 80257254 002541B4  81 3D 00 04 */	lwz r9, 4(r29)
/* 80257258 002541B8  7F C4 F3 78 */	mr r4, r30
/* 8025725C 002541BC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80257260 002541C0  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80257264 002541C4  91 21 00 5C */	stw r9, 0x5c(r1)
/* 80257268 002541C8  38 E1 01 34 */	addi r7, r1, 0x134
/* 8025726C 002541CC  39 00 00 00 */	li r8, 0
/* 80257270 002541D0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80257274 002541D4  91 21 00 58 */	stw r9, 0x58(r1)
/* 80257278 002541D8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8025727C 002541DC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80257280 002541E0  4B F5 06 B1 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80257284 002541E4  7C 7C 1B 78 */	mr r28, r3
lbl_80257288:
/* 80257288 002541E8  80 7D 09 80 */	lwz r3, 0x980(r29)
/* 8025728C 002541EC  38 80 00 01 */	li r4, 1
/* 80257290 002541F0  4B F5 06 4D */	bl sub_801a78dc
/* 80257294 002541F4  93 9D 09 80 */	stw r28, 0x980(r29)
/* 80257298 002541F8  80 01 01 38 */	lwz r0, 0x138(r1)
/* 8025729C 002541FC  83 01 01 40 */	lwz r24, 0x140(r1)
/* 802572A0 00254200  1C 00 00 44 */	mulli r0, r0, 0x44
/* 802572A4 00254204  93 01 00 34 */	stw r24, 0x34(r1)
/* 802572A8 00254208  7F 98 02 14 */	add r28, r24, r0
/* 802572AC 0025420C  93 01 00 30 */	stw r24, 0x30(r1)
/* 802572B0 00254210  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802572B4 00254214  93 81 00 38 */	stw r28, 0x38(r1)
/* 802572B8 00254218  48 00 00 20 */	b lbl_802572D8
lbl_802572BC:
/* 802572BC 0025421C  28 18 00 00 */	cmplwi r24, 0
/* 802572C0 00254220  41 82 00 14 */	beq lbl_802572D4
/* 802572C4 00254224  34 18 00 2C */	addic. r0, r24, 0x2c
/* 802572C8 00254228  41 82 00 0C */	beq lbl_802572D4
/* 802572CC 0025422C  38 78 00 2C */	addi r3, r24, 0x2c
/* 802572D0 00254230  48 0E 68 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802572D4:
/* 802572D4 00254234  3B 18 00 44 */	addi r24, r24, 0x44
lbl_802572D8:
/* 802572D8 00254238  7C 18 E0 40 */	cmplw r24, r28
/* 802572DC 0025423C  40 82 FF E0 */	bne lbl_802572BC
/* 802572E0 00254240  3B 40 00 00 */	li r26, 0
/* 802572E4 00254244  3C 60 80 3D */	lis r3, lbl_803D4BC8@ha
/* 802572E8 00254248  3B 03 4B C8 */	addi r24, r3, lbl_803D4BC8@l
/* 802572EC 0025424C  93 41 01 38 */	stw r26, 0x138(r1)
/* 802572F0 00254250  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 802572F4 00254254  3B 21 01 8C */	addi r25, r1, 0x18c
/* 802572F8 00254258  3B 83 4D 5C */	addi r28, r3, lbl_803D4D5C@l
lbl_802572FC:
/* 802572FC 0025425C  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80257300 00254260  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80257304 00254264  C0 18 00 04 */	lfs f0, 4(r24)
/* 80257308 00254268  C0 24 00 08 */	lfs f1, 8(r4)
/* 8025730C 0025426C  C0 64 00 00 */	lfs f3, 0(r4)
/* 80257310 00254270  C0 44 00 04 */	lfs f2, 4(r4)
/* 80257314 00254274  EF E0 00 72 */	fmuls f31, f0, f1
/* 80257318 00254278  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8025731C 0025427C  80 98 00 00 */	lwz r4, 0(r24)
/* 80257320 00254280  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80257324 00254284  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80257328 00254288  4B DA D9 91 */	bl string_l__4rstlFPCc
/* 8025732C 0025428C  38 61 00 90 */	addi r3, r1, 0x90
/* 80257330 00254290  38 9C 00 8D */	addi r4, r28, 0x8d
/* 80257334 00254294  4B DA D9 85 */	bl string_l__4rstlFPCc
/* 80257338 00254298  38 61 00 80 */	addi r3, r1, 0x80
/* 8025733C 0025429C  38 9D 00 10 */	addi r4, r29, 0x10
/* 80257340 002542A0  38 A1 00 90 */	addi r5, r1, 0x90
/* 80257344 002542A4  4B DA D9 19 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80257348 002542A8  80 98 00 00 */	lwz r4, 0(r24)
/* 8025734C 002542AC  38 61 00 70 */	addi r3, r1, 0x70
/* 80257350 002542B0  4B DA D9 69 */	bl string_l__4rstlFPCc
/* 80257354 002542B4  38 61 00 60 */	addi r3, r1, 0x60
/* 80257358 002542B8  38 81 00 80 */	addi r4, r1, 0x80
/* 8025735C 002542BC  38 A1 00 70 */	addi r5, r1, 0x70
/* 80257360 002542C0  4B DA D8 FD */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80257364 002542C4  7F E4 FB 78 */	mr r4, r31
/* 80257368 002542C8  38 61 00 08 */	addi r3, r1, 8
/* 8025736C 002542CC  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 80257370 002542D0  4B DD 74 C9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80257374 002542D4  88 01 00 08 */	lbz r0, 8(r1)
/* 80257378 002542D8  FC 20 F8 90 */	fmr f1, f31
/* 8025737C 002542DC  C0 42 B9 2C */	lfs f2, lbl_805AD64C@sda21(r2)
/* 80257380 002542E0  38 61 01 60 */	addi r3, r1, 0x160
/* 80257384 002542E4  98 01 00 0C */	stb r0, 0xc(r1)
/* 80257388 002542E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8025738C 002542EC  38 A1 00 60 */	addi r5, r1, 0x60
/* 80257390 002542F0  4B F5 14 7D */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80257394 002542F4  38 61 01 34 */	addi r3, r1, 0x134
/* 80257398 002542F8  38 81 01 60 */	addi r4, r1, 0x160
/* 8025739C 002542FC  4B EF EE 95 */	bl sub_80156230
/* 802573A0 00254300  28 19 00 00 */	cmplwi r25, 0
/* 802573A4 00254304  41 82 00 0C */	beq lbl_802573B0
/* 802573A8 00254308  7F 23 CB 78 */	mr r3, r25
/* 802573AC 0025430C  48 0E 67 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802573B0:
/* 802573B0 00254310  38 61 00 60 */	addi r3, r1, 0x60
/* 802573B4 00254314  48 0E 67 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802573B8 00254318  38 61 00 70 */	addi r3, r1, 0x70
/* 802573BC 0025431C  48 0E 67 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802573C0 00254320  38 61 00 80 */	addi r3, r1, 0x80
/* 802573C4 00254324  48 0E 67 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802573C8 00254328  38 61 00 90 */	addi r3, r1, 0x90
/* 802573CC 0025432C  48 0E 67 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802573D0 00254330  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802573D4 00254334  48 0E 67 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802573D8 00254338  3B 5A 00 01 */	addi r26, r26, 1
/* 802573DC 0025433C  3B 18 00 08 */	addi r24, r24, 8
/* 802573E0 00254340  28 1A 00 0A */	cmplwi r26, 0xa
/* 802573E4 00254344  41 80 FF 18 */	blt lbl_802572FC
/* 802573E8 00254348  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 802573EC 0025434C  38 60 00 18 */	li r3, 0x18
/* 802573F0 00254350  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 802573F4 00254354  38 A0 00 00 */	li r5, 0
/* 802573F8 00254358  38 84 00 85 */	addi r4, r4, 0x85
/* 802573FC 0025435C  48 0B E4 71 */	bl __nw__FUlPCcPCc
/* 80257400 00254360  7C 7C 1B 79 */	or. r28, r3, r3
/* 80257404 00254364  41 82 00 38 */	beq lbl_8025743C
/* 80257408 00254368  81 3D 00 04 */	lwz r9, 4(r29)
/* 8025740C 0025436C  7F C4 F3 78 */	mr r4, r30
/* 80257410 00254370  38 A1 00 24 */	addi r5, r1, 0x24
/* 80257414 00254374  38 C1 00 54 */	addi r6, r1, 0x54
/* 80257418 00254378  91 21 00 54 */	stw r9, 0x54(r1)
/* 8025741C 0025437C  38 E1 01 34 */	addi r7, r1, 0x134
/* 80257420 00254380  39 00 00 00 */	li r8, 0
/* 80257424 00254384  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80257428 00254388  91 21 00 50 */	stw r9, 0x50(r1)
/* 8025742C 0025438C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80257430 00254390  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80257434 00254394  4B F5 04 FD */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80257438 00254398  7C 7C 1B 78 */	mr r28, r3
lbl_8025743C:
/* 8025743C 0025439C  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 80257440 002543A0  38 80 00 01 */	li r4, 1
/* 80257444 002543A4  4B F5 04 99 */	bl sub_801a78dc
/* 80257448 002543A8  93 9D 09 84 */	stw r28, 0x984(r29)
/* 8025744C 002543AC  38 80 00 03 */	li r4, 3
/* 80257450 002543B0  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 80257454 002543B4  4B F4 FD E5 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80257458 002543B8  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8025745C 002543BC  38 80 00 02 */	li r4, 2
/* 80257460 002543C0  B0 1D 09 88 */	sth r0, 0x988(r29)
/* 80257464 002543C4  80 7D 09 84 */	lwz r3, 0x984(r29)
/* 80257468 002543C8  4B F4 FD D1 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8025746C 002543CC  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80257470 002543D0  7F A3 EB 78 */	mr r3, r29
/* 80257474 002543D4  7F C4 F3 78 */	mr r4, r30
/* 80257478 002543D8  B0 1D 09 8A */	sth r0, 0x98a(r29)
/* 8025747C 002543DC  48 00 04 D9 */	bl sub_80257954
/* 80257480 002543E0  7F A3 EB 78 */	mr r3, r29
/* 80257484 002543E4  4B DF C4 39 */	bl GetMaterialFilter__6CActorCFv
/* 80257488 002543E8  83 83 00 00 */	lwz r28, 0(r3)
/* 8025748C 002543EC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80257490 002543F0  7F A3 EB 78 */	mr r3, r29
/* 80257494 002543F4  4B DF C4 29 */	bl GetMaterialFilter__6CActorCFv
/* 80257498 002543F8  80 AD 97 6C */	lwz r5, lbl_805A832C@sda21(r13)
/* 8025749C 002543FC  38 80 00 01 */	li r4, 1
/* 802574A0 00254400  83 63 00 08 */	lwz r27, 8(r3)
/* 802574A4 00254404  83 43 00 0C */	lwz r26, 0xc(r3)
/* 802574A8 00254408  38 60 00 00 */	li r3, 0
/* 802574AC 0025440C  48 13 2A 49 */	bl __shl2i
/* 802574B0 00254410  80 AD 97 70 */	lwz r5, lbl_805A8330@sda21(r13)
/* 802574B4 00254414  7C 98 23 78 */	mr r24, r4
/* 802574B8 00254418  7C 79 1B 78 */	mr r25, r3
/* 802574BC 0025441C  38 60 00 00 */	li r3, 0
/* 802574C0 00254420  38 80 00 01 */	li r4, 1
/* 802574C4 00254424  48 13 2A 31 */	bl __shl2i
/* 802574C8 00254428  80 AD 97 74 */	lwz r5, lbl_805A8334@sda21(r13)
/* 802574CC 0025442C  7F 18 23 78 */	or r24, r24, r4
/* 802574D0 00254430  7F 39 1B 78 */	or r25, r25, r3
/* 802574D4 00254434  38 60 00 00 */	li r3, 0
/* 802574D8 00254438  38 80 00 01 */	li r4, 1
/* 802574DC 0025443C  48 13 2A 19 */	bl __shl2i
/* 802574E0 00254440  80 AD 97 78 */	lwz r5, lbl_805A8338@sda21(r13)
/* 802574E4 00254444  7F 18 23 78 */	or r24, r24, r4
/* 802574E8 00254448  7F 39 1B 78 */	or r25, r25, r3
/* 802574EC 0025444C  38 60 00 00 */	li r3, 0
/* 802574F0 00254450  38 80 00 01 */	li r4, 1
/* 802574F4 00254454  48 13 2A 01 */	bl __shl2i
/* 802574F8 00254458  80 AD 97 7C */	lwz r5, lbl_805A833C@sda21(r13)
/* 802574FC 0025445C  7F 18 23 78 */	or r24, r24, r4
/* 80257500 00254460  7F 39 1B 78 */	or r25, r25, r3
/* 80257504 00254464  38 60 00 00 */	li r3, 0
/* 80257508 00254468  38 80 00 01 */	li r4, 1
/* 8025750C 0025446C  48 13 29 E9 */	bl __shl2i
/* 80257510 00254470  7F 18 23 78 */	or r24, r24, r4
/* 80257514 00254474  7F 39 1B 78 */	or r25, r25, r3
/* 80257518 00254478  7F 04 C0 F8 */	nor r4, r24, r24
/* 8025751C 0025447C  38 00 00 03 */	li r0, 3
/* 80257520 00254480  7F 23 C8 F8 */	nor r3, r25, r25
/* 80257524 00254484  7F 5A C3 78 */	or r26, r26, r24
/* 80257528 00254488  7F FF 20 38 */	and r31, r31, r4
/* 8025752C 0025448C  7F 7B CB 78 */	or r27, r27, r25
/* 80257530 00254490  7F 9C 18 38 */	and r28, r28, r3
/* 80257534 00254494  93 E1 01 4C */	stw r31, 0x14c(r1)
/* 80257538 00254498  7F A3 EB 78 */	mr r3, r29
/* 8025753C 0025449C  38 81 01 48 */	addi r4, r1, 0x148
/* 80257540 002544A0  93 81 01 48 */	stw r28, 0x148(r1)
/* 80257544 002544A4  93 41 01 54 */	stw r26, 0x154(r1)
/* 80257548 002544A8  93 61 01 50 */	stw r27, 0x150(r1)
/* 8025754C 002544AC  90 01 01 58 */	stw r0, 0x158(r1)
/* 80257550 002544B0  4B DF C3 51 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80257554 002544B4  7F A3 EB 78 */	mr r3, r29
/* 80257558 002544B8  7F C5 F3 78 */	mr r5, r30
/* 8025755C 002544BC  38 80 00 12 */	li r4, 0x12
/* 80257560 002544C0  4B DF CD F1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80257564 002544C4  38 61 01 34 */	addi r3, r1, 0x134
/* 80257568 002544C8  38 80 FF FF */	li r4, -1
/* 8025756C 002544CC  4B EF ED C1 */	bl sub_8015632c
/* 80257570 002544D0  E3 E1 02 18 */	psq_l f31, 536(r1), 0, qr0
/* 80257574 002544D4  CB E1 02 10 */	lfd f31, 0x210(r1)
/* 80257578 002544D8  BB 01 01 F0 */	lmw r24, 0x1f0(r1)
/* 8025757C 002544DC  80 01 02 24 */	lwz r0, 0x224(r1)
/* 80257580 002544E0  7C 08 03 A6 */	mtlr r0
/* 80257584 002544E4  38 21 02 20 */	addi r1, r1, 0x220
/* 80257588 002544E8  4E 80 00 20 */	blr

.global sub_8025758c
sub_8025758c:
/* 8025758C 002544EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80257590 002544F0  7C 08 02 A6 */	mflr r0
/* 80257594 002544F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80257598 002544F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8025759C 002544FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802575A0 00254500  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802575A4 00254504  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802575A8 00254508  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802575AC 0025450C  93 81 00 20 */	stw r28, 0x20(r1)
/* 802575B0 00254510  FF E0 08 90 */	fmr f31, f1
/* 802575B4 00254514  7C 7C 1B 78 */	mr r28, r3
/* 802575B8 00254518  7C 9D 23 78 */	mr r29, r4
/* 802575BC 0025451C  3B C0 00 00 */	li r30, 0
/* 802575C0 00254520  48 00 00 58 */	b lbl_80257618
lbl_802575C4:
/* 802575C4 00254524  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 802575C8 00254528  7F C4 F3 78 */	mr r4, r30
/* 802575CC 0025452C  4B F4 FC 6D */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 802575D0 00254530  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 802575D4 00254534  7F A3 EB 78 */	mr r3, r29
/* 802575D8 00254538  38 81 00 08 */	addi r4, r1, 8
/* 802575DC 0025453C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802575E0 00254540  B0 01 00 08 */	sth r0, 8(r1)
/* 802575E4 00254544  4B DF 4F 91 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802575E8 00254548  7C 64 1B 78 */	mr r4, r3
/* 802575EC 0025454C  38 61 00 10 */	addi r3, r1, 0x10
/* 802575F0 00254550  4B E5 7D 5D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802575F4 00254554  83 E3 00 04 */	lwz r31, 4(r3)
/* 802575F8 00254558  28 1F 00 00 */	cmplwi r31, 0
/* 802575FC 0025455C  41 82 00 18 */	beq lbl_80257614
/* 80257600 00254560  7F E3 FB 78 */	mr r3, r31
/* 80257604 00254564  4B F5 15 79 */	bl GetSphereRadius__15CCollisionActorCFv
/* 80257608 00254568  EC 3F 00 72 */	fmuls f1, f31, f1
/* 8025760C 0025456C  7F E3 FB 78 */	mr r3, r31
/* 80257610 00254570  4B F5 15 11 */	bl sub_801a8b20
lbl_80257614:
/* 80257614 00254574  3B DE 00 01 */	addi r30, r30, 1
lbl_80257618:
/* 80257618 00254578  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 8025761C 0025457C  4B F4 FC 2D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80257620 00254580  7C 1E 18 40 */	cmplw r30, r3
/* 80257624 00254584  41 80 FF A0 */	blt lbl_802575C4
/* 80257628 00254588  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8025762C 0025458C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80257630 00254590  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80257634 00254594  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80257638 00254598  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025763C 0025459C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80257640 002545A0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80257644 002545A4  7C 08 03 A6 */	mtlr r0
/* 80257648 002545A8  38 21 00 40 */	addi r1, r1, 0x40
/* 8025764C 002545AC  4E 80 00 20 */	blr

.global sub_80257650
sub_80257650:
/* 80257650 002545B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80257654 002545B4  7C 08 02 A6 */	mflr r0
/* 80257658 002545B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8025765C 002545BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80257660 002545C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80257664 002545C4  3B C0 00 00 */	li r30, 0
/* 80257668 002545C8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8025766C 002545CC  7C 9D 23 78 */	mr r29, r4
/* 80257670 002545D0  93 81 00 20 */	stw r28, 0x20(r1)
/* 80257674 002545D4  7C 7C 1B 78 */	mr r28, r3
/* 80257678 002545D8  48 00 00 80 */	b lbl_802576F8
lbl_8025767C:
/* 8025767C 002545DC  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 80257680 002545E0  7F C4 F3 78 */	mr r4, r30
/* 80257684 002545E4  4B F4 FB B5 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80257688 002545E8  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8025768C 002545EC  7F A3 EB 78 */	mr r3, r29
/* 80257690 002545F0  38 81 00 08 */	addi r4, r1, 8
/* 80257694 002545F4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80257698 002545F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8025769C 002545FC  4B DF 4E D9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802576A0 00254600  7C 64 1B 78 */	mr r4, r3
/* 802576A4 00254604  38 61 00 10 */	addi r3, r1, 0x10
/* 802576A8 00254608  4B E5 7C A5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802576AC 0025460C  83 E3 00 04 */	lwz r31, 4(r3)
/* 802576B0 00254610  28 1F 00 00 */	cmplwi r31, 0
/* 802576B4 00254614  41 82 00 40 */	beq lbl_802576F4
/* 802576B8 00254618  3C 80 80 57 */	lis r4, lbl_8056D718@ha
/* 802576BC 0025461C  7F E3 FB 78 */	mr r3, r31
/* 802576C0 00254620  38 84 D7 18 */	addi r4, r4, lbl_8056D718@l
/* 802576C4 00254624  4B F5 14 D5 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 802576C8 00254628  7F E3 FB 78 */	mr r3, r31
/* 802576CC 0025462C  7F A4 EB 78 */	mr r4, r29
/* 802576D0 00254630  81 9F 00 00 */	lwz r12, 0(r31)
/* 802576D4 00254634  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802576D8 00254638  7D 89 03 A6 */	mtctr r12
/* 802576DC 0025463C  4E 80 04 21 */	bctrl
/* 802576E0 00254640  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 802576E4 00254644  38 80 00 01 */	li r4, 1
/* 802576E8 00254648  D0 03 00 00 */	stfs f0, 0(r3)
/* 802576EC 0025464C  7F E3 FB 78 */	mr r3, r31
/* 802576F0 00254650  4B DF B6 7D */	bl CreateShadow__6CActorFb
lbl_802576F4:
/* 802576F4 00254654  3B DE 00 01 */	addi r30, r30, 1
lbl_802576F8:
/* 802576F8 00254658  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 802576FC 0025465C  4B F4 FB 4D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80257700 00254660  7C 1E 18 40 */	cmplw r30, r3
/* 80257704 00254664  41 80 FF 78 */	blt lbl_8025767C
/* 80257708 00254668  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 8025770C 0025466C  38 60 00 00 */	li r3, 0
/* 80257710 00254670  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80257714 00254674  98 1C 0A 32 */	stb r0, 0xa32(r28)
/* 80257718 00254678  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 8025771C 0025467C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80257720 00254680  98 1C 0A 31 */	stb r0, 0xa31(r28)
/* 80257724 00254684  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80257728 00254688  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025772C 0025468C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80257730 00254690  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80257734 00254694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80257738 00254698  7C 08 03 A6 */	mtlr r0
/* 8025773C 0025469C  38 21 00 30 */	addi r1, r1, 0x30
/* 80257740 002546A0  4E 80 00 20 */	blr

.global sub_80257744
sub_80257744:
/* 80257744 002546A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80257748 002546A8  7C 08 02 A6 */	mflr r0
/* 8025774C 002546AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80257750 002546B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80257754 002546B4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80257758 002546B8  3B C0 00 00 */	li r30, 0
/* 8025775C 002546BC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80257760 002546C0  7C 9D 23 78 */	mr r29, r4
/* 80257764 002546C4  93 81 00 20 */	stw r28, 0x20(r1)
/* 80257768 002546C8  7C 7C 1B 78 */	mr r28, r3
/* 8025776C 002546CC  48 00 00 90 */	b lbl_802577FC
lbl_80257770:
/* 80257770 002546D0  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 80257774 002546D4  7F C4 F3 78 */	mr r4, r30
/* 80257778 002546D8  4B F4 FA C1 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8025777C 002546DC  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80257780 002546E0  7F A3 EB 78 */	mr r3, r29
/* 80257784 002546E4  38 81 00 08 */	addi r4, r1, 8
/* 80257788 002546E8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8025778C 002546EC  B0 01 00 08 */	sth r0, 8(r1)
/* 80257790 002546F0  4B DF 4D E5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80257794 002546F4  7C 64 1B 78 */	mr r4, r3
/* 80257798 002546F8  38 61 00 10 */	addi r3, r1, 0x10
/* 8025779C 002546FC  4B E5 7B B1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802577A0 00254700  83 E3 00 04 */	lwz r31, 4(r3)
/* 802577A4 00254704  28 1F 00 00 */	cmplwi r31, 0
/* 802577A8 00254708  41 82 00 50 */	beq lbl_802577F8
/* 802577AC 0025470C  28 1E 00 02 */	cmplwi r30, 2
/* 802577B0 00254710  3C 60 80 57 */	lis r3, lbl_8056D718@ha
/* 802577B4 00254714  38 83 D7 18 */	addi r4, r3, lbl_8056D718@l
/* 802577B8 00254718  7F E3 FB 78 */	mr r3, r31
/* 802577BC 0025471C  40 82 00 0C */	bne lbl_802577C8
/* 802577C0 00254720  3C 80 80 57 */	lis r4, lbl_80572544@ha
/* 802577C4 00254724  38 84 25 44 */	addi r4, r4, lbl_80572544@l
lbl_802577C8:
/* 802577C8 00254728  4B F5 13 D1 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 802577CC 0025472C  7F E3 FB 78 */	mr r3, r31
/* 802577D0 00254730  7F A4 EB 78 */	mr r4, r29
/* 802577D4 00254734  81 9F 00 00 */	lwz r12, 0(r31)
/* 802577D8 00254738  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802577DC 0025473C  7D 89 03 A6 */	mtctr r12
/* 802577E0 00254740  4E 80 04 21 */	bctrl
/* 802577E4 00254744  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 802577E8 00254748  38 80 00 01 */	li r4, 1
/* 802577EC 0025474C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802577F0 00254750  7F E3 FB 78 */	mr r3, r31
/* 802577F4 00254754  4B DF B5 79 */	bl CreateShadow__6CActorFb
lbl_802577F8:
/* 802577F8 00254758  3B DE 00 01 */	addi r30, r30, 1
lbl_802577FC:
/* 802577FC 0025475C  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 80257800 00254760  4B F4 FA 49 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80257804 00254764  7C 1E 18 40 */	cmplw r30, r3
/* 80257808 00254768  41 80 FF 68 */	blt lbl_80257770
/* 8025780C 0025476C  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 80257810 00254770  38 60 00 00 */	li r3, 0
/* 80257814 00254774  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80257818 00254778  38 60 00 01 */	li r3, 1
/* 8025781C 0025477C  98 1C 0A 32 */	stb r0, 0xa32(r28)
/* 80257820 00254780  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 80257824 00254784  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80257828 00254788  98 1C 0A 31 */	stb r0, 0xa31(r28)
/* 8025782C 0025478C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80257830 00254790  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80257834 00254794  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80257838 00254798  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8025783C 0025479C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80257840 002547A0  7C 08 03 A6 */	mtlr r0
/* 80257844 002547A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80257848 002547A8  4E 80 00 20 */	blr

.global sub_8025784c
sub_8025784c:
/* 8025784C 002547AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80257850 002547B0  7C 08 02 A6 */	mflr r0
/* 80257854 002547B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80257858 002547B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025785C 002547BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80257860 002547C0  3B C0 00 00 */	li r30, 0
/* 80257864 002547C4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80257868 002547C8  7C 9D 23 78 */	mr r29, r4
/* 8025786C 002547CC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80257870 002547D0  7C 7C 1B 78 */	mr r28, r3
/* 80257874 002547D4  48 00 00 90 */	b lbl_80257904
lbl_80257878:
/* 80257878 002547D8  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 8025787C 002547DC  7F C4 F3 78 */	mr r4, r30
/* 80257880 002547E0  4B F4 F9 B9 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80257884 002547E4  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80257888 002547E8  7F A3 EB 78 */	mr r3, r29
/* 8025788C 002547EC  38 81 00 08 */	addi r4, r1, 8
/* 80257890 002547F0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80257894 002547F4  B0 01 00 08 */	sth r0, 8(r1)
/* 80257898 002547F8  4B DF 4C DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8025789C 002547FC  7C 64 1B 78 */	mr r4, r3
/* 802578A0 00254800  38 61 00 10 */	addi r3, r1, 0x10
/* 802578A4 00254804  4B E5 7A A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802578A8 00254808  83 E3 00 04 */	lwz r31, 4(r3)
/* 802578AC 0025480C  28 1F 00 00 */	cmplwi r31, 0
/* 802578B0 00254810  41 82 00 50 */	beq lbl_80257900
/* 802578B4 00254814  28 1E 00 03 */	cmplwi r30, 3
/* 802578B8 00254818  3C 60 80 57 */	lis r3, lbl_8056D718@ha
/* 802578BC 0025481C  38 83 D7 18 */	addi r4, r3, lbl_8056D718@l
/* 802578C0 00254820  7F E3 FB 78 */	mr r3, r31
/* 802578C4 00254824  40 82 00 0C */	bne lbl_802578D0
/* 802578C8 00254828  3C 80 80 57 */	lis r4, lbl_805725AC@ha
/* 802578CC 0025482C  38 84 25 AC */	addi r4, r4, lbl_805725AC@l
lbl_802578D0:
/* 802578D0 00254830  4B F5 12 C9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 802578D4 00254834  7F E3 FB 78 */	mr r3, r31
/* 802578D8 00254838  7F A4 EB 78 */	mr r4, r29
/* 802578DC 0025483C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802578E0 00254840  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802578E4 00254844  7D 89 03 A6 */	mtctr r12
/* 802578E8 00254848  4E 80 04 21 */	bctrl
/* 802578EC 0025484C  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 802578F0 00254850  38 80 00 01 */	li r4, 1
/* 802578F4 00254854  D0 03 00 00 */	stfs f0, 0(r3)
/* 802578F8 00254858  7F E3 FB 78 */	mr r3, r31
/* 802578FC 0025485C  4B DF B4 71 */	bl CreateShadow__6CActorFb
lbl_80257900:
/* 80257900 00254860  3B DE 00 01 */	addi r30, r30, 1
lbl_80257904:
/* 80257904 00254864  80 7C 09 84 */	lwz r3, 0x984(r28)
/* 80257908 00254868  4B F4 F9 41 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8025790C 0025486C  7C 1E 18 40 */	cmplw r30, r3
/* 80257910 00254870  41 80 FF 68 */	blt lbl_80257878
/* 80257914 00254874  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 80257918 00254878  38 60 00 01 */	li r3, 1
/* 8025791C 0025487C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80257920 00254880  38 60 00 00 */	li r3, 0
/* 80257924 00254884  98 1C 0A 32 */	stb r0, 0xa32(r28)
/* 80257928 00254888  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 8025792C 0025488C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80257930 00254890  98 1C 0A 31 */	stb r0, 0xa31(r28)
/* 80257934 00254894  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80257938 00254898  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8025793C 0025489C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80257940 002548A0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80257944 002548A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80257948 002548A8  7C 08 03 A6 */	mtlr r0
/* 8025794C 002548AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80257950 002548B0  4E 80 00 20 */	blr

.global sub_80257954
sub_80257954:
/* 80257954 002548B4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80257958 002548B8  7C 08 02 A6 */	mflr r0
/* 8025795C 002548BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80257960 002548C0  BF 41 00 68 */	stmw r26, 0x68(r1)
/* 80257964 002548C4  7C 7E 1B 78 */	mr r30, r3
/* 80257968 002548C8  7C 9F 23 78 */	mr r31, r4
/* 8025796C 002548CC  3B 40 00 00 */	li r26, 0
/* 80257970 002548D0  48 00 00 D4 */	b lbl_80257A44
lbl_80257974:
/* 80257974 002548D4  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 80257978 002548D8  7F 44 D3 78 */	mr r4, r26
/* 8025797C 002548DC  4B F4 F8 BD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80257980 002548E0  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80257984 002548E4  7F E3 FB 78 */	mr r3, r31
/* 80257988 002548E8  38 81 00 0C */	addi r4, r1, 0xc
/* 8025798C 002548EC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80257990 002548F0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80257994 002548F4  4B DF 4B E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80257998 002548F8  7C 64 1B 78 */	mr r4, r3
/* 8025799C 002548FC  38 61 00 30 */	addi r3, r1, 0x30
/* 802579A0 00254900  4B E5 79 AD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802579A4 00254904  83 A3 00 04 */	lwz r29, 4(r3)
/* 802579A8 00254908  28 1D 00 00 */	cmplwi r29, 0
/* 802579AC 0025490C  41 82 00 94 */	beq lbl_80257A40
/* 802579B0 00254910  3C 80 80 57 */	lis r4, lbl_8056D718@ha
/* 802579B4 00254914  7F A3 EB 78 */	mr r3, r29
/* 802579B8 00254918  38 84 D7 18 */	addi r4, r4, lbl_8056D718@l
/* 802579BC 0025491C  4B F5 11 DD */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 802579C0 00254920  7F A3 EB 78 */	mr r3, r29
/* 802579C4 00254924  7F E4 FB 78 */	mr r4, r31
/* 802579C8 00254928  81 9D 00 00 */	lwz r12, 0(r29)
/* 802579CC 0025492C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802579D0 00254930  7D 89 03 A6 */	mtctr r12
/* 802579D4 00254934  4E 80 04 21 */	bctrl
/* 802579D8 00254938  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 802579DC 0025493C  38 80 00 01 */	li r4, 1
/* 802579E0 00254940  D0 03 00 00 */	stfs f0, 0(r3)
/* 802579E4 00254944  38 60 00 00 */	li r3, 0
/* 802579E8 00254948  80 AD 97 4C */	lwz r5, lbl_805A830C@sda21(r13)
/* 802579EC 0025494C  48 13 25 09 */	bl __shl2i
/* 802579F0 00254950  80 AD 97 50 */	lwz r5, lbl_805A8310@sda21(r13)
/* 802579F4 00254954  7C 9B 23 78 */	mr r27, r4
/* 802579F8 00254958  7C 7C 1B 78 */	mr r28, r3
/* 802579FC 0025495C  38 60 00 00 */	li r3, 0
/* 80257A00 00254960  38 80 00 01 */	li r4, 1
/* 80257A04 00254964  48 13 24 F1 */	bl __shl2i
/* 80257A08 00254968  7F 7B 23 78 */	or r27, r27, r4
/* 80257A0C 0025496C  7F 9C 1B 78 */	or r28, r28, r3
/* 80257A10 00254970  38 A0 00 00 */	li r5, 0
/* 80257A14 00254974  38 00 00 01 */	li r0, 1
/* 80257A18 00254978  93 61 00 54 */	stw r27, 0x54(r1)
/* 80257A1C 0025497C  7F A3 EB 78 */	mr r3, r29
/* 80257A20 00254980  38 81 00 50 */	addi r4, r1, 0x50
/* 80257A24 00254984  93 81 00 50 */	stw r28, 0x50(r1)
/* 80257A28 00254988  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 80257A2C 0025498C  90 A1 00 58 */	stw r5, 0x58(r1)
/* 80257A30 00254990  90 01 00 60 */	stw r0, 0x60(r1)
/* 80257A34 00254994  4B DF BE 6D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80257A38 00254998  38 00 00 10 */	li r0, 0x10
/* 80257A3C 0025499C  90 1D 03 00 */	stw r0, 0x300(r29)
lbl_80257A40:
/* 80257A40 002549A0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80257A44:
/* 80257A44 002549A4  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 80257A48 002549A8  4B F4 F8 01 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80257A4C 002549AC  7C 1A 18 40 */	cmplw r26, r3
/* 80257A50 002549B0  41 80 FF 24 */	blt lbl_80257974
/* 80257A54 002549B4  38 00 00 00 */	li r0, 0
/* 80257A58 002549B8  80 AD 97 54 */	lwz r5, lbl_805A8314@sda21(r13)
/* 80257A5C 002549BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80257A60 002549C0  38 60 00 00 */	li r3, 0
/* 80257A64 002549C4  38 80 00 01 */	li r4, 1
/* 80257A68 002549C8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80257A6C 002549CC  48 13 24 89 */	bl __shl2i
/* 80257A70 002549D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80257A74 002549D4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80257A78 002549D8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80257A7C 002549DC  7C 00 1B 78 */	or r0, r0, r3
/* 80257A80 002549E0  7C C3 23 78 */	or r3, r6, r4
/* 80257A84 002549E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80257A88 002549E8  7F E4 FB 78 */	mr r4, r31
/* 80257A8C 002549EC  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80257A90 002549F0  80 7E 09 80 */	lwz r3, 0x980(r30)
/* 80257A94 002549F4  4B F4 F7 BD */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 80257A98 002549F8  3B 40 00 00 */	li r26, 0
/* 80257A9C 002549FC  48 00 00 D4 */	b lbl_80257B70
lbl_80257AA0:
/* 80257AA0 00254A00  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 80257AA4 00254A04  7F 44 D3 78 */	mr r4, r26
/* 80257AA8 00254A08  4B F4 F7 91 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80257AAC 00254A0C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80257AB0 00254A10  7F E3 FB 78 */	mr r3, r31
/* 80257AB4 00254A14  38 81 00 08 */	addi r4, r1, 8
/* 80257AB8 00254A18  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80257ABC 00254A1C  B0 01 00 08 */	sth r0, 8(r1)
/* 80257AC0 00254A20  4B DF 4A B5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80257AC4 00254A24  7C 64 1B 78 */	mr r4, r3
/* 80257AC8 00254A28  38 61 00 20 */	addi r3, r1, 0x20
/* 80257ACC 00254A2C  4B E5 78 81 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80257AD0 00254A30  83 A3 00 04 */	lwz r29, 4(r3)
/* 80257AD4 00254A34  28 1D 00 00 */	cmplwi r29, 0
/* 80257AD8 00254A38  41 82 00 94 */	beq lbl_80257B6C
/* 80257ADC 00254A3C  3C 80 80 57 */	lis r4, lbl_80572544@ha
/* 80257AE0 00254A40  7F A3 EB 78 */	mr r3, r29
/* 80257AE4 00254A44  38 84 25 44 */	addi r4, r4, lbl_80572544@l
/* 80257AE8 00254A48  4B F5 10 B1 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 80257AEC 00254A4C  7F A3 EB 78 */	mr r3, r29
/* 80257AF0 00254A50  7F E4 FB 78 */	mr r4, r31
/* 80257AF4 00254A54  81 9D 00 00 */	lwz r12, 0(r29)
/* 80257AF8 00254A58  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80257AFC 00254A5C  7D 89 03 A6 */	mtctr r12
/* 80257B00 00254A60  4E 80 04 21 */	bctrl
/* 80257B04 00254A64  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 80257B08 00254A68  38 80 00 01 */	li r4, 1
/* 80257B0C 00254A6C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80257B10 00254A70  38 60 00 00 */	li r3, 0
/* 80257B14 00254A74  80 AD 97 58 */	lwz r5, lbl_805A8318@sda21(r13)
/* 80257B18 00254A78  48 13 23 DD */	bl __shl2i
/* 80257B1C 00254A7C  80 AD 97 5C */	lwz r5, lbl_805A831C@sda21(r13)
/* 80257B20 00254A80  7C 9C 23 78 */	mr r28, r4
/* 80257B24 00254A84  7C 7B 1B 78 */	mr r27, r3
/* 80257B28 00254A88  38 60 00 00 */	li r3, 0
/* 80257B2C 00254A8C  38 80 00 01 */	li r4, 1
/* 80257B30 00254A90  48 13 23 C5 */	bl __shl2i
/* 80257B34 00254A94  7F 9C 23 78 */	or r28, r28, r4
/* 80257B38 00254A98  7F 7B 1B 78 */	or r27, r27, r3
/* 80257B3C 00254A9C  38 A0 00 00 */	li r5, 0
/* 80257B40 00254AA0  38 00 00 01 */	li r0, 1
/* 80257B44 00254AA4  93 81 00 3C */	stw r28, 0x3c(r1)
/* 80257B48 00254AA8  7F A3 EB 78 */	mr r3, r29
/* 80257B4C 00254AAC  38 81 00 38 */	addi r4, r1, 0x38
/* 80257B50 00254AB0  93 61 00 38 */	stw r27, 0x38(r1)
/* 80257B54 00254AB4  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80257B58 00254AB8  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80257B5C 00254ABC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80257B60 00254AC0  4B DF BD 41 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80257B64 00254AC4  38 00 00 10 */	li r0, 0x10
/* 80257B68 00254AC8  90 1D 03 00 */	stw r0, 0x300(r29)
lbl_80257B6C:
/* 80257B6C 00254ACC  3B 5A 00 01 */	addi r26, r26, 1
lbl_80257B70:
/* 80257B70 00254AD0  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 80257B74 00254AD4  4B F4 F6 D5 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80257B78 00254AD8  7C 1A 18 40 */	cmplw r26, r3
/* 80257B7C 00254ADC  41 80 FF 24 */	blt lbl_80257AA0
/* 80257B80 00254AE0  38 00 00 00 */	li r0, 0
/* 80257B84 00254AE4  80 AD 97 60 */	lwz r5, lbl_805A8320@sda21(r13)
/* 80257B88 00254AE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80257B8C 00254AEC  38 60 00 00 */	li r3, 0
/* 80257B90 00254AF0  38 80 00 01 */	li r4, 1
/* 80257B94 00254AF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80257B98 00254AF8  48 13 23 5D */	bl __shl2i
/* 80257B9C 00254AFC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80257BA0 00254B00  38 A1 00 18 */	addi r5, r1, 0x18
/* 80257BA4 00254B04  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80257BA8 00254B08  7C 00 1B 78 */	or r0, r0, r3
/* 80257BAC 00254B0C  7C C3 23 78 */	or r3, r6, r4
/* 80257BB0 00254B10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80257BB4 00254B14  7F E4 FB 78 */	mr r4, r31
/* 80257BB8 00254B18  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80257BBC 00254B1C  80 7E 09 84 */	lwz r3, 0x984(r30)
/* 80257BC0 00254B20  4B F4 F6 91 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 80257BC4 00254B24  BB 41 00 68 */	lmw r26, 0x68(r1)
/* 80257BC8 00254B28  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80257BCC 00254B2C  7C 08 03 A6 */	mtlr r0
/* 80257BD0 00254B30  38 21 00 80 */	addi r1, r1, 0x80
/* 80257BD4 00254B34  4E 80 00 20 */	blr

.global Render__7CRidleyCFRC13CStateManager
Render__7CRidleyCFRC13CStateManager:
/* 80257BD8 00254B38  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80257BDC 00254B3C  7C 08 02 A6 */	mflr r0
/* 80257BE0 00254B40  90 01 01 24 */	stw r0, 0x124(r1)
/* 80257BE4 00254B44  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80257BE8 00254B48  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80257BEC 00254B4C  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 80257BF0 00254B50  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80257BF4 00254B54  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80257BF8 00254B58  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80257BFC 00254B5C  7C 7E 1B 78 */	mr r30, r3
/* 80257C00 00254B60  7C 9F 23 78 */	mr r31, r4
/* 80257C04 00254B64  48 0F 23 B1 */	bl Black__6CColorFv
/* 80257C08 00254B68  C3 DE 0B 20 */	lfs f30, 0xb20(r30)
/* 80257C0C 00254B6C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80257C10 00254B70  80 A3 00 00 */	lwz r5, 0(r3)
/* 80257C14 00254B74  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80257C18 00254B78  40 81 00 24 */	ble lbl_80257C3C
/* 80257C1C 00254B7C  C3 E2 88 F0 */	lfs f31, lbl_805AA610@sda21(r2)
/* 80257C20 00254B80  48 0F 23 95 */	bl Black__6CColorFv
/* 80257C24 00254B84  EC 3E F8 24 */	fdivs f1, f30, f31
/* 80257C28 00254B88  7C 64 1B 78 */	mr r4, r3
/* 80257C2C 00254B8C  38 61 00 10 */	addi r3, r1, 0x10
/* 80257C30 00254B90  38 BE 04 30 */	addi r5, r30, 0x430
/* 80257C34 00254B94  48 10 B6 79 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80257C38 00254B98  80 A1 00 10 */	lwz r5, 0x10(r1)
lbl_80257C3C:
/* 80257C3C 00254B9C  38 80 00 02 */	li r4, 2
/* 80257C40 00254BA0  38 60 00 00 */	li r3, 0
/* 80257C44 00254BA4  38 00 00 03 */	li r0, 3
/* 80257C48 00254BA8  98 81 00 30 */	stb r4, 0x30(r1)
/* 80257C4C 00254BAC  98 61 00 31 */	stb r3, 0x31(r1)
/* 80257C50 00254BB0  B0 01 00 32 */	sth r0, 0x32(r1)
/* 80257C54 00254BB4  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80257C58 00254BB8  48 0F 23 55 */	bl White__6CColorFv
/* 80257C5C 00254BBC  C3 DE 0B 24 */	lfs f30, 0xb24(r30)
/* 80257C60 00254BC0  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80257C64 00254BC4  80 03 00 00 */	lwz r0, 0(r3)
/* 80257C68 00254BC8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80257C6C 00254BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257C70 00254BD0  40 81 00 28 */	ble lbl_80257C98
/* 80257C74 00254BD4  C3 E2 88 F0 */	lfs f31, lbl_805AA610@sda21(r2)
/* 80257C78 00254BD8  48 0F 23 35 */	bl White__6CColorFv
/* 80257C7C 00254BDC  EC 3E F8 24 */	fdivs f1, f30, f31
/* 80257C80 00254BE0  7C 64 1B 78 */	mr r4, r3
/* 80257C84 00254BE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80257C88 00254BE8  38 BE 04 30 */	addi r5, r30, 0x430
/* 80257C8C 00254BEC  48 10 B6 21 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80257C90 00254BF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80257C94 00254BF4  90 01 00 14 */	stw r0, 0x14(r1)
lbl_80257C98:
/* 80257C98 00254BF8  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80257C9C 00254BFC  38 81 00 14 */	addi r4, r1, 0x14
/* 80257CA0 00254C00  81 83 00 00 */	lwz r12, 0(r3)
/* 80257CA4 00254C04  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80257CA8 00254C08  7D 89 03 A6 */	mtctr r12
/* 80257CAC 00254C0C  4E 80 04 21 */	bctrl
/* 80257CB0 00254C10  88 7E 0A 31 */	lbz r3, 0xa31(r30)
/* 80257CB4 00254C14  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80257CB8 00254C18  41 82 00 D0 */	beq lbl_80257D88
/* 80257CBC 00254C1C  7F C4 F3 78 */	mr r4, r30
/* 80257CC0 00254C20  38 61 00 68 */	addi r3, r1, 0x68
/* 80257CC4 00254C24  38 BE 0A 30 */	addi r5, r30, 0xa30
/* 80257CC8 00254C28  4B E2 0B F1 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80257CCC 00254C2C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80257CD0 00254C30  38 81 00 68 */	addi r4, r1, 0x68
/* 80257CD4 00254C34  48 0B AE A1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80257CD8 00254C38  C3 DE 0B 24 */	lfs f30, 0xb24(r30)
/* 80257CDC 00254C3C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80257CE0 00254C40  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80257CE4 00254C44  40 81 00 5C */	ble lbl_80257D40
/* 80257CE8 00254C48  C3 E2 88 F0 */	lfs f31, lbl_805AA610@sda21(r2)
/* 80257CEC 00254C4C  48 0F 22 C9 */	bl Black__6CColorFv
/* 80257CF0 00254C50  EC 3E F8 24 */	fdivs f1, f30, f31
/* 80257CF4 00254C54  7C 64 1B 78 */	mr r4, r3
/* 80257CF8 00254C58  38 61 00 08 */	addi r3, r1, 8
/* 80257CFC 00254C5C  38 BE 04 30 */	addi r5, r30, 0x430
/* 80257D00 00254C60  48 10 B5 AD */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 80257D04 00254C64  80 01 00 08 */	lwz r0, 8(r1)
/* 80257D08 00254C68  38 60 00 02 */	li r3, 2
/* 80257D0C 00254C6C  38 A0 00 00 */	li r5, 0
/* 80257D10 00254C70  39 00 00 03 */	li r8, 3
/* 80257D14 00254C74  98 61 00 28 */	stb r3, 0x28(r1)
/* 80257D18 00254C78  7F E4 FB 78 */	mr r4, r31
/* 80257D1C 00254C7C  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 80257D20 00254C80  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 80257D24 00254C84  98 A1 00 29 */	stb r5, 0x29(r1)
/* 80257D28 00254C88  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80257D2C 00254C8C  38 E1 00 28 */	addi r7, r1, 0x28
/* 80257D30 00254C90  B1 01 00 2A */	sth r8, 0x2a(r1)
/* 80257D34 00254C94  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80257D38 00254C98  4B EB D0 85 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 80257D3C 00254C9C  48 00 00 E0 */	b lbl_80257E1C
lbl_80257D40:
/* 80257D40 00254CA0  C0 22 B9 28 */	lfs f1, lbl_805AD648@sda21(r2)
/* 80257D44 00254CA4  38 80 00 00 */	li r4, 0
/* 80257D48 00254CA8  38 00 00 03 */	li r0, 3
/* 80257D4C 00254CAC  98 81 00 20 */	stb r4, 0x20(r1)
/* 80257D50 00254CB0  FC 40 08 90 */	fmr f2, f1
/* 80257D54 00254CB4  38 61 00 24 */	addi r3, r1, 0x24
/* 80257D58 00254CB8  FC 60 08 90 */	fmr f3, f1
/* 80257D5C 00254CBC  98 81 00 21 */	stb r4, 0x21(r1)
/* 80257D60 00254CC0  FC 80 08 90 */	fmr f4, f1
/* 80257D64 00254CC4  B0 01 00 22 */	sth r0, 0x22(r1)
/* 80257D68 00254CC8  48 10 B6 85 */	bl __ct__6CColorFffff
/* 80257D6C 00254CCC  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 80257D70 00254CD0  7F E4 FB 78 */	mr r4, r31
/* 80257D74 00254CD4  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 80257D78 00254CD8  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80257D7C 00254CDC  38 E1 00 20 */	addi r7, r1, 0x20
/* 80257D80 00254CE0  4B EB D0 3D */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 80257D84 00254CE4  48 00 00 98 */	b lbl_80257E1C
lbl_80257D88:
/* 80257D88 00254CE8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80257D8C 00254CEC  41 82 00 90 */	beq lbl_80257E1C
/* 80257D90 00254CF0  7F C4 F3 78 */	mr r4, r30
/* 80257D94 00254CF4  38 61 00 38 */	addi r3, r1, 0x38
/* 80257D98 00254CF8  38 BE 0A 30 */	addi r5, r30, 0xa30
/* 80257D9C 00254CFC  4B E2 0B 1D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80257DA0 00254D00  38 61 00 98 */	addi r3, r1, 0x98
/* 80257DA4 00254D04  38 81 00 38 */	addi r4, r1, 0x38
/* 80257DA8 00254D08  48 0B AD CD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80257DAC 00254D0C  C0 3E 0B 20 */	lfs f1, 0xb20(r30)
/* 80257DB0 00254D10  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80257DB4 00254D14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80257DB8 00254D18  40 81 00 20 */	ble lbl_80257DD8
/* 80257DBC 00254D1C  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 80257DC0 00254D20  7F E4 FB 78 */	mr r4, r31
/* 80257DC4 00254D24  38 7E 09 98 */	addi r3, r30, 0x998
/* 80257DC8 00254D28  38 A1 00 98 */	addi r5, r1, 0x98
/* 80257DCC 00254D2C  38 E1 00 30 */	addi r7, r1, 0x30
/* 80257DD0 00254D30  4B EB CF ED */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 80257DD4 00254D34  48 00 00 48 */	b lbl_80257E1C
lbl_80257DD8:
/* 80257DD8 00254D38  C0 22 B9 28 */	lfs f1, lbl_805AD648@sda21(r2)
/* 80257DDC 00254D3C  38 80 00 00 */	li r4, 0
/* 80257DE0 00254D40  38 00 00 03 */	li r0, 3
/* 80257DE4 00254D44  98 81 00 18 */	stb r4, 0x18(r1)
/* 80257DE8 00254D48  FC 40 08 90 */	fmr f2, f1
/* 80257DEC 00254D4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80257DF0 00254D50  FC 60 08 90 */	fmr f3, f1
/* 80257DF4 00254D54  98 81 00 19 */	stb r4, 0x19(r1)
/* 80257DF8 00254D58  FC 80 08 90 */	fmr f4, f1
/* 80257DFC 00254D5C  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 80257E00 00254D60  48 10 B5 ED */	bl __ct__6CColorFffff
/* 80257E04 00254D64  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 80257E08 00254D68  7F E4 FB 78 */	mr r4, r31
/* 80257E0C 00254D6C  38 7E 09 98 */	addi r3, r30, 0x998
/* 80257E10 00254D70  38 A1 00 98 */	addi r5, r1, 0x98
/* 80257E14 00254D74  38 E1 00 18 */	addi r7, r1, 0x18
/* 80257E18 00254D78  4B EB CF A5 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
lbl_80257E1C:
/* 80257E1C 00254D7C  7F C3 F3 78 */	mr r3, r30
/* 80257E20 00254D80  7F E4 FB 78 */	mr r4, r31
/* 80257E24 00254D84  4B E2 02 09 */	bl Render__10CPatternedCFRC13CStateManager
/* 80257E28 00254D88  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80257E2C 00254D8C  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80257E30 00254D90  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 80257E34 00254D94  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 80257E38 00254D98  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80257E3C 00254D9C  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80257E40 00254DA0  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 80257E44 00254DA4  7C 08 03 A6 */	mtlr r0
/* 80257E48 00254DA8  38 21 01 20 */	addi r1, r1, 0x120
/* 80257E4C 00254DAC  4E 80 00 20 */	blr

.global PreRender__7CRidleyFR13CStateManagerRC14CFrustumPlanes
PreRender__7CRidleyFR13CStateManagerRC14CFrustumPlanes:
/* 80257E50 00254DB0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80257E54 00254DB4  7C 08 02 A6 */	mflr r0
/* 80257E58 00254DB8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80257E5C 00254DBC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80257E60 00254DC0  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 80257E64 00254DC4  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 80257E68 00254DC8  7C 7D 1B 78 */	mr r29, r3
/* 80257E6C 00254DCC  7C 9E 23 78 */	mr r30, r4
/* 80257E70 00254DD0  4B E2 04 6D */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 80257E74 00254DD4  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80257E78 00254DD8  7F C4 F3 78 */	mr r4, r30
/* 80257E7C 00254DDC  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 80257E80 00254DE0  38 7D 0B 2C */	addi r3, r29, 0xb2c
/* 80257E84 00254DE4  C0 05 00 00 */	lfs f0, 0(r5)
/* 80257E88 00254DE8  38 DD 00 34 */	addi r6, r29, 0x34
/* 80257E8C 00254DEC  38 E1 00 48 */	addi r7, r1, 0x48
/* 80257E90 00254DF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80257E94 00254DF4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80257E98 00254DF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80257E9C 00254DFC  C0 05 00 08 */	lfs f0, 8(r5)
/* 80257EA0 00254E00  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80257EA4 00254E04  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80257EA8 00254E08  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80257EAC 00254E0C  4B F1 DA 65 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 80257EB0 00254E10  C0 3D 0C C8 */	lfs f1, 0xcc8(r29)
/* 80257EB4 00254E14  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80257EB8 00254E18  83 7D 0C 74 */	lwz r27, 0xc74(r29)
/* 80257EBC 00254E1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80257EC0 00254E20  40 81 00 30 */	ble lbl_80257EF0
/* 80257EC4 00254E24  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80257EC8 00254E28  4B EB CD 81 */	bl GetNumMaterialSets__10CModelDataCFv
/* 80257ECC 00254E2C  C0 22 B9 A0 */	lfs f1, lbl_805AD6C0@sda21(r2)
/* 80257ED0 00254E30  C0 1D 0C C8 */	lfs f0, 0xcc8(r29)
/* 80257ED4 00254E34  EC 01 00 32 */	fmuls f0, f1, f0
/* 80257ED8 00254E38  FC 00 00 1E */	fctiwz f0, f0
/* 80257EDC 00254E3C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80257EE0 00254E40  80 81 00 74 */	lwz r4, 0x74(r1)
/* 80257EE4 00254E44  7C 04 1B D6 */	divw r0, r4, r3
/* 80257EE8 00254E48  7C 00 19 D6 */	mullw r0, r0, r3
/* 80257EEC 00254E4C  7F 60 20 50 */	subf r27, r0, r4
lbl_80257EF0:
/* 80257EF0 00254E50  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 80257EF4 00254E54  7F C4 F3 78 */	mr r4, r30
/* 80257EF8 00254E58  80 63 00 00 */	lwz r3, 0(r3)
/* 80257EFC 00254E5C  4B E3 96 5D */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80257F00 00254E60  7C 7C 1B 78 */	mr r28, r3
/* 80257F04 00254E64  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80257F08 00254E68  4B EB CD 41 */	bl GetNumMaterialSets__10CModelDataCFv
/* 80257F0C 00254E6C  38 1B 00 01 */	addi r0, r27, 1
/* 80257F10 00254E70  2C 1C 00 03 */	cmpwi r28, 3
/* 80257F14 00254E74  7C 00 18 50 */	subf r0, r0, r3
/* 80257F18 00254E78  38 60 00 00 */	li r3, 0
/* 80257F1C 00254E7C  7C 00 00 34 */	cntlzw r0, r0
/* 80257F20 00254E80  54 1F D9 7E */	srwi r31, r0, 5
/* 80257F24 00254E84  40 82 00 10 */	bne lbl_80257F34
/* 80257F28 00254E88  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80257F2C 00254E8C  41 82 00 08 */	beq lbl_80257F34
/* 80257F30 00254E90  38 60 00 01 */	li r3, 1
lbl_80257F34:
/* 80257F34 00254E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80257F38 00254E98  88 9D 00 B4 */	lbz r4, 0xb4(r29)
/* 80257F3C 00254E9C  A0 7D 00 B6 */	lhz r3, 0xb6(r29)
/* 80257F40 00254EA0  80 1D 00 B8 */	lwz r0, 0xb8(r29)
/* 80257F44 00254EA4  98 81 00 10 */	stb r4, 0x10(r1)
/* 80257F48 00254EA8  9B 61 00 11 */	stb r27, 0x11(r1)
/* 80257F4C 00254EAC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80257F50 00254EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257F54 00254EB4  41 82 00 0C */	beq lbl_80257F60
/* 80257F58 00254EB8  60 63 00 40 */	ori r3, r3, 0x40
/* 80257F5C 00254EBC  48 00 00 08 */	b lbl_80257F64
lbl_80257F60:
/* 80257F60 00254EC0  54 63 06 B0 */	rlwinm r3, r3, 0, 0x1a, 0x18
lbl_80257F64:
/* 80257F64 00254EC4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80257F68 00254EC8  88 81 00 11 */	lbz r4, 0x11(r1)
/* 80257F6C 00254ECC  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 80257F70 00254ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257F74 00254ED4  98 9D 00 B5 */	stb r4, 0xb5(r29)
/* 80257F78 00254ED8  B0 7D 00 B6 */	sth r3, 0xb6(r29)
/* 80257F7C 00254EDC  90 1D 00 B8 */	stw r0, 0xb8(r29)
/* 80257F80 00254EE0  88 1D 0A 33 */	lbz r0, 0xa33(r29)
/* 80257F84 00254EE4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80257F88 00254EE8  41 82 01 A0 */	beq lbl_80258128
/* 80257F8C 00254EEC  C0 FD 0A B0 */	lfs f7, 0xab0(r29)
/* 80257F90 00254EF0  C0 BD 00 60 */	lfs f5, 0x60(r29)
/* 80257F94 00254EF4  C0 DD 0A A0 */	lfs f6, 0xaa0(r29)
/* 80257F98 00254EF8  EC 25 38 28 */	fsubs f1, f5, f7
/* 80257F9C 00254EFC  C0 0D 97 40 */	lfs f0, lbl_805A8300@sda21(r13)
/* 80257FA0 00254F00  C0 7D 0A 90 */	lfs f3, 0xa90(r29)
/* 80257FA4 00254F04  C0 9D 00 50 */	lfs f4, 0x50(r29)
/* 80257FA8 00254F08  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 80257FAC 00254F0C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80257FB0 00254F10  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80257FB4 00254F14  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 80257FB8 00254F18  D0 E1 00 38 */	stfs f7, 0x38(r1)
/* 80257FBC 00254F1C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80257FC0 00254F20  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80257FC4 00254F24  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80257FC8 00254F28  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80257FCC 00254F2C  40 80 00 0C */	bge lbl_80257FD8
/* 80257FD0 00254F30  38 61 00 0C */	addi r3, r1, 0xc
/* 80257FD4 00254F34  48 00 00 08 */	b lbl_80257FDC
lbl_80257FD8:
/* 80257FD8 00254F38  38 6D 97 40 */	addi r3, r13, lbl_805A8300@sda21
lbl_80257FDC:
/* 80257FDC 00254F3C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80257FE0 00254F40  38 81 00 08 */	addi r4, r1, 8
/* 80257FE4 00254F44  C0 02 B9 68 */	lfs f0, lbl_805AD688@sda21(r2)
/* 80257FE8 00254F48  38 6D 97 44 */	addi r3, r13, lbl_805A8304@sda21
/* 80257FEC 00254F4C  C0 22 B9 A4 */	lfs f1, lbl_805AD6C4@sda21(r2)
/* 80257FF0 00254F50  38 AD 97 48 */	addi r5, r13, lbl_805A8308@sda21
/* 80257FF4 00254F54  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80257FF8 00254F58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80257FFC 00254F5C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80258000 00254F60  4B DB 42 B5 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80258004 00254F64  C0 23 00 00 */	lfs f1, 0(r3)
/* 80258008 00254F68  38 61 00 54 */	addi r3, r1, 0x54
/* 8025800C 00254F6C  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80258010 00254F70  38 81 00 24 */	addi r4, r1, 0x24
/* 80258014 00254F74  C0 82 B9 38 */	lfs f4, lbl_805AD658@sda21(r2)
/* 80258018 00254F78  38 A1 00 18 */	addi r5, r1, 0x18
/* 8025801C 00254F7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80258020 00254F80  D0 1D 0C CC */	stfs f0, 0xccc(r29)
/* 80258024 00254F84  C1 5D 00 A8 */	lfs f10, 0xa8(r29)
/* 80258028 00254F88  C1 3D 00 9C */	lfs f9, 0x9c(r29)
/* 8025802C 00254F8C  C1 1D 00 AC */	lfs f8, 0xac(r29)
/* 80258030 00254F90  C0 FD 00 A0 */	lfs f7, 0xa0(r29)
/* 80258034 00254F94  EC 6A 48 28 */	fsubs f3, f10, f9
/* 80258038 00254F98  C1 9D 0C CC */	lfs f12, 0xccc(r29)
/* 8025803C 00254F9C  EC 48 38 28 */	fsubs f2, f8, f7
/* 80258040 00254FA0  C0 DD 00 B0 */	lfs f6, 0xb0(r29)
/* 80258044 00254FA4  C0 BD 00 A4 */	lfs f5, 0xa4(r29)
/* 80258048 00254FA8  EC 0C 00 F2 */	fmuls f0, f12, f3
/* 8025804C 00254FAC  ED 66 28 28 */	fsubs f11, f6, f5
/* 80258050 00254FB0  EC 2C 00 B2 */	fmuls f1, f12, f2
/* 80258054 00254FB4  EC 60 18 28 */	fsubs f3, f0, f3
/* 80258058 00254FB8  EC 0C 02 F2 */	fmuls f0, f12, f11
/* 8025805C 00254FBC  EC 41 10 28 */	fsubs f2, f1, f2
/* 80258060 00254FC0  ED 84 00 F2 */	fmuls f12, f4, f3
/* 80258064 00254FC4  EC 20 58 28 */	fsubs f1, f0, f11
/* 80258068 00254FC8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8025806C 00254FCC  EC 0A 60 2A */	fadds f0, f10, f12
/* 80258070 00254FD0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80258074 00254FD4  EC 88 10 2A */	fadds f4, f8, f2
/* 80258078 00254FD8  EC 47 10 28 */	fsubs f2, f7, f2
/* 8025807C 00254FDC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80258080 00254FE0  EC 66 08 2A */	fadds f3, f6, f1
/* 80258084 00254FE4  EC 25 08 28 */	fsubs f1, f5, f1
/* 80258088 00254FE8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8025808C 00254FEC  EC 09 60 28 */	fsubs f0, f9, f12
/* 80258090 00254FF0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80258094 00254FF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80258098 00254FF8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8025809C 00254FFC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 802580A0 00255000  48 0E 04 69 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802580A4 00255004  2C 1C 00 00 */	cmpwi r28, 0
/* 802580A8 00255008  41 82 00 0C */	beq lbl_802580B4
/* 802580AC 0025500C  2C 1C 00 02 */	cmpwi r28, 2
/* 802580B0 00255010  40 82 00 6C */	bne lbl_8025811C
lbl_802580B4:
/* 802580B4 00255014  38 7D 0A C4 */	addi r3, r29, 0xac4
/* 802580B8 00255018  38 81 00 54 */	addi r4, r1, 0x54
/* 802580BC 0025501C  48 0D FA C9 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802580C0 00255020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802580C4 00255024  41 82 00 58 */	beq lbl_8025811C
/* 802580C8 00255028  C0 02 B9 A8 */	lfs f0, lbl_805AD6C8@sda21(r2)
/* 802580CC 0025502C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802580D0 00255030  40 81 00 4C */	ble lbl_8025811C
/* 802580D4 00255034  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 802580D8 00255038  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 802580DC 0025503C  7C 04 00 D0 */	neg r0, r4
/* 802580E0 00255040  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802580E4 00255044  EC 40 F8 2A */	fadds f2, f0, f31
/* 802580E8 00255048  7C 00 23 78 */	or r0, r0, r4
/* 802580EC 0025504C  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 802580F0 00255050  80 7D 0D 10 */	lwz r3, 0xd10(r29)
/* 802580F4 00255054  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 802580F8 00255058  7F C4 F3 78 */	mr r4, r30
/* 802580FC 0025505C  C0 3D 0C CC */	lfs f1, 0xccc(r29)
/* 80258100 00255060  38 DD 00 34 */	addi r6, r29, 0x34
/* 80258104 00255064  54 07 0F FE */	srwi r7, r0, 0x1f
/* 80258108 00255068  48 04 5C 81 */	bl RenderShadowBuffer__16CProjectedShadowFR13CStateManagerRC10CModelDataRC12CTransform4fiRC9CVector3fff
/* 8025810C 0025506C  C0 02 B9 1C */	lfs f0, lbl_805AD63C@sda21(r2)
/* 80258110 00255070  80 7D 0D 10 */	lwz r3, 0xd10(r29)
/* 80258114 00255074  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 80258118 00255078  48 00 00 18 */	b lbl_80258130
lbl_8025811C:
/* 8025811C 0025507C  80 7D 0D 10 */	lwz r3, 0xd10(r29)
/* 80258120 00255080  48 04 55 A9 */	bl sub_8029d6c8
/* 80258124 00255084  48 00 00 0C */	b lbl_80258130
lbl_80258128:
/* 80258128 00255088  80 7D 0D 10 */	lwz r3, 0xd10(r29)
/* 8025812C 0025508C  48 04 55 9D */	bl sub_8029d6c8
lbl_80258130:
/* 80258130 00255090  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 80258134 00255094  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80258138 00255098  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 8025813C 0025509C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80258140 002550A0  7C 08 03 A6 */	mtlr r0
/* 80258144 002550A4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80258148 002550A8  4E 80 00 20 */	blr

.global AddToRenderer__7CRidleyCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__7CRidleyCFRC14CFrustumPlanesRC13CStateManager:
/* 8025814C 002550AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80258150 002550B0  7C 08 02 A6 */	mflr r0
/* 80258154 002550B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80258158 002550B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025815C 002550BC  7C 9F 23 78 */	mr r31, r4
/* 80258160 002550C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80258164 002550C4  7C 7E 1B 78 */	mr r30, r3
/* 80258168 002550C8  4B E1 F7 51 */	bl AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
/* 8025816C 002550CC  80 9E 0C E0 */	lwz r4, 0xce0(r30)
/* 80258170 002550D0  28 04 00 00 */	cmplwi r4, 0
/* 80258174 002550D4  41 82 00 4C */	beq lbl_802581C0
/* 80258178 002550D8  81 84 00 00 */	lwz r12, 0(r4)
/* 8025817C 002550DC  38 61 00 08 */	addi r3, r1, 8
/* 80258180 002550E0  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 80258184 002550E4  7D 89 03 A6 */	mtctr r12
/* 80258188 002550E8  4E 80 04 21 */	bctrl
/* 8025818C 002550EC  7F E3 FB 78 */	mr r3, r31
/* 80258190 002550F0  38 81 00 08 */	addi r4, r1, 8
/* 80258194 002550F4  48 0E CF F5 */	bl "BoxInFrustumPlanes__14CFrustumPlanesCFRCQ24rstl24optional_object<6CAABox>"
/* 80258198 002550F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025819C 002550FC  38 60 00 00 */	li r3, 0
/* 802581A0 00255100  98 61 00 20 */	stb r3, 0x20(r1)
/* 802581A4 00255104  41 82 00 1C */	beq lbl_802581C0
/* 802581A8 00255108  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 802581AC 0025510C  80 9E 0C E0 */	lwz r4, 0xce0(r30)
/* 802581B0 00255110  81 83 00 00 */	lwz r12, 0(r3)
/* 802581B4 00255114  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802581B8 00255118  7D 89 03 A6 */	mtctr r12
/* 802581BC 0025511C  4E 80 04 21 */	bctrl
lbl_802581C0:
/* 802581C0 00255120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802581C4 00255124  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802581C8 00255128  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802581CC 0025512C  7C 08 03 A6 */	mtlr r0
/* 802581D0 00255130  38 21 00 30 */	addi r1, r1, 0x30
/* 802581D4 00255134  4E 80 00 20 */	blr

.global GetSortingBounds__7CRidleyCFRC12CTransform4f
GetSortingBounds__7CRidleyCFRC12CTransform4f:
/* 802581D8 00255138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802581DC 0025513C  7C 08 02 A6 */	mflr r0
/* 802581E0 00255140  90 01 00 14 */	stw r0, 0x14(r1)
/* 802581E4 00255144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802581E8 00255148  7C 7F 1B 78 */	mr r31, r3
/* 802581EC 0025514C  4B EC 27 41 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 802581F0 00255150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802581F4 00255154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802581F8 00255158  7C 08 03 A6 */	mtlr r0
/* 802581FC 0025515C  38 21 00 10 */	addi r1, r1, 0x10
/* 80258200 00255160  4E 80 00 20 */	blr

.global GetDamageVulnerability__7CRidleyCFv
GetDamageVulnerability__7CRidleyCFv:
/* 80258204 00255164  3C 60 80 57 */	lis r3, lbl_8056D718@ha
/* 80258208 00255168  38 63 D7 18 */	addi r3, r3, lbl_8056D718@l
/* 8025820C 0025516C  4E 80 00 20 */	blr

.global DoUserAnimEvent__7CRidleyFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__7CRidleyFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80258210 00255170  94 21 FC 50 */	stwu r1, -0x3b0(r1)
/* 80258214 00255174  7C 08 02 A6 */	mflr r0
/* 80258218 00255178  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 8025821C 0025517C  DB E1 03 A0 */	stfd f31, 0x3a0(r1)
/* 80258220 00255180  F3 E1 03 A8 */	psq_st f31, 936(r1), 0, qr0
/* 80258224 00255184  DB C1 03 90 */	stfd f30, 0x390(r1)
/* 80258228 00255188  F3 C1 03 98 */	psq_st f30, 920(r1), 0, qr0
/* 8025822C 0025518C  DB A1 03 80 */	stfd f29, 0x380(r1)
/* 80258230 00255190  F3 A1 03 88 */	psq_st f29, 904(r1), 0, qr0
/* 80258234 00255194  BF 01 03 60 */	stmw r24, 0x360(r1)
/* 80258238 00255198  7C DF 33 78 */	mr r31, r6
/* 8025823C 0025519C  FF E0 08 90 */	fmr f31, f1
/* 80258240 002551A0  28 1F 00 1F */	cmplwi r31, 0x1f
/* 80258244 002551A4  7C 7C 1B 78 */	mr r28, r3
/* 80258248 002551A8  7C 9D 23 78 */	mr r29, r4
/* 8025824C 002551AC  7C BE 2B 78 */	mr r30, r5
/* 80258250 002551B0  3B 40 00 00 */	li r26, 0
/* 80258254 002551B4  41 81 0A 4C */	bgt lbl_80258CA0
/* 80258258 002551B8  3C A0 80 3F */	lis r5, lbl_803E9524@ha
/* 8025825C 002551BC  57 E0 10 3A */	slwi r0, r31, 2
/* 80258260 002551C0  38 A5 95 24 */	addi r5, r5, lbl_803E9524@l
/* 80258264 002551C4  7C 05 00 2E */	lwzx r0, r5, r0
/* 80258268 002551C8  7C 09 03 A6 */	mtctr r0
/* 8025826C 002551CC  4E 80 04 20 */	bctr
.global lbl_80258270
lbl_80258270:
/* 80258270 002551D0  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 80258274 002551D4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80258278 002551D8  41 82 00 14 */	beq lbl_8025828C
/* 8025827C 002551DC  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 80258280 002551E0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80258284 002551E4  40 82 00 08 */	bne lbl_8025828C
/* 80258288 002551E8  4B FF EB 2D */	bl sub_80256db4
lbl_8025828C:
/* 8025828C 002551EC  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 80258290 002551F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80258294 002551F4  41 82 0A 0C */	beq lbl_80258CA0
/* 80258298 002551F8  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 8025829C 002551FC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802582A0 00255200  41 82 0A 00 */	beq lbl_80258CA0
/* 802582A4 00255204  C0 7C 0A A4 */	lfs f3, 0xaa4(r28)
/* 802582A8 00255208  C0 5C 0A 94 */	lfs f2, 0xa94(r28)
/* 802582AC 0025520C  C0 3C 0A 84 */	lfs f1, 0xa84(r28)
/* 802582B0 00255210  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802582B4 00255214  D0 3C 0B F0 */	stfs f1, 0xbf0(r28)
/* 802582B8 00255218  D0 5C 0B F4 */	stfs f2, 0xbf4(r28)
/* 802582BC 0025521C  D0 7C 0B F8 */	stfs f3, 0xbf8(r28)
/* 802582C0 00255220  C1 1C 00 50 */	lfs f8, 0x50(r28)
/* 802582C4 00255224  C0 3C 0A A0 */	lfs f1, 0xaa0(r28)
/* 802582C8 00255228  C0 BC 00 40 */	lfs f5, 0x40(r28)
/* 802582CC 0025522C  EC E8 08 28 */	fsubs f7, f8, f1
/* 802582D0 00255230  C0 5C 0A 90 */	lfs f2, 0xa90(r28)
/* 802582D4 00255234  C0 3C 0B F4 */	lfs f1, 0xbf4(r28)
/* 802582D8 00255238  EC 85 10 28 */	fsubs f4, f5, f2
/* 802582DC 0025523C  C1 3C 00 60 */	lfs f9, 0x60(r28)
/* 802582E0 00255240  C0 7C 0A B0 */	lfs f3, 0xab0(r28)
/* 802582E4 00255244  EC 27 00 72 */	fmuls f1, f7, f1
/* 802582E8 00255248  C0 5C 0B F0 */	lfs f2, 0xbf0(r28)
/* 802582EC 0025524C  EC C9 18 28 */	fsubs f6, f9, f3
/* 802582F0 00255250  C0 7C 0B F8 */	lfs f3, 0xbf8(r28)
/* 802582F4 00255254  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 802582F8 00255258  D0 A1 01 28 */	stfs f5, 0x128(r1)
/* 802582FC 0025525C  D1 01 01 2C */	stfs f8, 0x12c(r1)
/* 80258300 00255260  EC 26 08 FA */	fmadds f1, f6, f3, f1
/* 80258304 00255264  D1 21 01 30 */	stfs f9, 0x130(r1)
/* 80258308 00255268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025830C 0025526C  D0 81 01 34 */	stfs f4, 0x134(r1)
/* 80258310 00255270  D0 E1 01 38 */	stfs f7, 0x138(r1)
/* 80258314 00255274  D0 C1 01 3C */	stfs f6, 0x13c(r1)
/* 80258318 00255278  40 81 00 2C */	ble lbl_80258344
/* 8025831C 0025527C  C0 1C 0B F0 */	lfs f0, 0xbf0(r28)
/* 80258320 00255280  C0 22 B9 AC */	lfs f1, lbl_805AD6CC@sda21(r2)
/* 80258324 00255284  EC 00 00 72 */	fmuls f0, f0, f1
/* 80258328 00255288  D0 1C 0B F0 */	stfs f0, 0xbf0(r28)
/* 8025832C 0025528C  C0 1C 0B F4 */	lfs f0, 0xbf4(r28)
/* 80258330 00255290  EC 00 00 72 */	fmuls f0, f0, f1
/* 80258334 00255294  D0 1C 0B F4 */	stfs f0, 0xbf4(r28)
/* 80258338 00255298  C0 1C 0B F8 */	lfs f0, 0xbf8(r28)
/* 8025833C 0025529C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80258340 002552A0  D0 1C 0B F8 */	stfs f0, 0xbf8(r28)
lbl_80258344:
/* 80258344 002552A4  C0 1C 0B F0 */	lfs f0, 0xbf0(r28)
/* 80258348 002552A8  D0 1C 0B FC */	stfs f0, 0xbfc(r28)
/* 8025834C 002552AC  C0 1C 0B F4 */	lfs f0, 0xbf4(r28)
/* 80258350 002552B0  D0 1C 0C 00 */	stfs f0, 0xc00(r28)
/* 80258354 002552B4  C0 1C 0B F8 */	lfs f0, 0xbf8(r28)
/* 80258358 002552B8  D0 1C 0C 04 */	stfs f0, 0xc04(r28)
/* 8025835C 002552BC  C0 DC 0A BC */	lfs f6, 0xabc(r28)
/* 80258360 002552C0  C0 1C 0B F0 */	lfs f0, 0xbf0(r28)
/* 80258364 002552C4  C0 7C 0B F4 */	lfs f3, 0xbf4(r28)
/* 80258368 002552C8  EC 06 00 32 */	fmuls f0, f6, f0
/* 8025836C 002552CC  C0 3C 0A 90 */	lfs f1, 0xa90(r28)
/* 80258370 002552D0  C0 5C 0B F8 */	lfs f2, 0xbf8(r28)
/* 80258374 002552D4  EC 86 00 F2 */	fmuls f4, f6, f3
/* 80258378 002552D8  C0 BC 0A A0 */	lfs f5, 0xaa0(r28)
/* 8025837C 002552DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80258380 002552E0  C0 7C 0A B0 */	lfs f3, 0xab0(r28)
/* 80258384 002552E4  EC 26 00 B2 */	fmuls f1, f6, f2
/* 80258388 002552E8  EC 45 20 28 */	fsubs f2, f5, f4
/* 8025838C 002552EC  D0 1C 0B E4 */	stfs f0, 0xbe4(r28)
/* 80258390 002552F0  EC 03 08 28 */	fsubs f0, f3, f1
/* 80258394 002552F4  D0 5C 0B E8 */	stfs f2, 0xbe8(r28)
/* 80258398 002552F8  D0 1C 0B EC */	stfs f0, 0xbec(r28)
/* 8025839C 002552FC  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 802583A0 00255300  C0 1C 0A A0 */	lfs f0, 0xaa0(r28)
/* 802583A4 00255304  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 802583A8 00255308  C0 BC 0A 98 */	lfs f5, 0xa98(r28)
/* 802583AC 0025530C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802583B0 00255310  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 802583B4 00255314  C0 3C 0A 90 */	lfs f1, 0xa90(r28)
/* 802583B8 00255318  C0 DC 0A 88 */	lfs f6, 0xa88(r28)
/* 802583BC 0025531C  EC 22 08 28 */	fsubs f1, f2, f1
/* 802583C0 00255320  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 802583C4 00255324  EC 00 01 72 */	fmuls f0, f0, f5
/* 802583C8 00255328  C0 5C 0A B0 */	lfs f2, 0xab0(r28)
/* 802583CC 0025532C  C0 9C 0A A8 */	lfs f4, 0xaa8(r28)
/* 802583D0 00255330  EC 43 10 28 */	fsubs f2, f3, f2
/* 802583D4 00255334  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 802583D8 00255338  C0 7C 0B E4 */	lfs f3, 0xbe4(r28)
/* 802583DC 0025533C  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 802583E0 00255340  EC 40 01 B2 */	fmuls f2, f0, f6
/* 802583E4 00255344  EC 20 01 72 */	fmuls f1, f0, f5
/* 802583E8 00255348  EC 00 01 32 */	fmuls f0, f0, f4
/* 802583EC 0025534C  EC 43 10 2A */	fadds f2, f3, f2
/* 802583F0 00255350  D0 5C 0B E4 */	stfs f2, 0xbe4(r28)
/* 802583F4 00255354  C0 5C 0B E8 */	lfs f2, 0xbe8(r28)
/* 802583F8 00255358  EC 22 08 2A */	fadds f1, f2, f1
/* 802583FC 0025535C  D0 3C 0B E8 */	stfs f1, 0xbe8(r28)
/* 80258400 00255360  C0 3C 0B EC */	lfs f1, 0xbec(r28)
/* 80258404 00255364  EC 01 00 2A */	fadds f0, f1, f0
/* 80258408 00255368  D0 1C 0B EC */	stfs f0, 0xbec(r28)
/* 8025840C 0025536C  48 00 08 94 */	b lbl_80258CA0
.global lbl_80258410
lbl_80258410:
/* 80258410 00255370  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 80258414 00255374  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80258418 00255378  41 82 08 88 */	beq lbl_80258CA0
/* 8025841C 0025537C  38 A0 00 00 */	li r5, 0
/* 80258420 00255380  4B FF E6 4D */	bl sub_80256a6c
/* 80258424 00255384  48 00 08 7C */	b lbl_80258CA0
.global lbl_80258428
lbl_80258428:
/* 80258428 00255388  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 8025842C 0025538C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80258430 00255390  40 82 08 70 */	bne lbl_80258CA0
/* 80258434 00255394  C0 A2 B9 18 */	lfs f5, lbl_805AD638@sda21(r2)
/* 80258438 00255398  39 60 00 00 */	li r11, 0
/* 8025843C 0025539C  C0 82 B9 9C */	lfs f4, lbl_805AD6BC@sda21(r2)
/* 80258440 002553A0  39 80 00 01 */	li r12, 1
/* 80258444 002553A4  C0 62 B9 94 */	lfs f3, lbl_805AD6B4@sda21(r2)
/* 80258448 002553A8  39 40 00 7F */	li r10, 0x7f
/* 8025844C 002553AC  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 80258450 002553B0  39 20 00 3F */	li r9, 0x3f
/* 80258454 002553B4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80258458 002553B8  D0 A1 03 30 */	stfs f5, 0x330(r1)
/* 8025845C 002553BC  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 80258460 002553C0  A8 C2 C5 F8 */	lha r6, lbl_805AE318@sda21(r2)
/* 80258464 002553C4  D0 A1 03 34 */	stfs f5, 0x334(r1)
/* 80258468 002553C8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8025846C 002553CC  C0 48 00 00 */	lfs f2, 0(r8)
/* 80258470 002553D0  38 81 03 30 */	addi r4, r1, 0x330
/* 80258474 002553D4  D0 A1 03 38 */	stfs f5, 0x338(r1)
/* 80258478 002553D8  38 A0 00 01 */	li r5, 1
/* 8025847C 002553DC  C0 28 00 04 */	lfs f1, 4(r8)
/* 80258480 002553E0  38 E0 00 00 */	li r7, 0
/* 80258484 002553E4  D0 A1 03 3C */	stfs f5, 0x33c(r1)
/* 80258488 002553E8  C0 08 00 08 */	lfs f0, 8(r8)
/* 8025848C 002553EC  D0 A1 03 40 */	stfs f5, 0x340(r1)
/* 80258490 002553F0  81 02 C6 00 */	lwz r8, lbl_805AE320@sda21(r2)
/* 80258494 002553F4  D0 A1 03 44 */	stfs f5, 0x344(r1)
/* 80258498 002553F8  D0 81 03 48 */	stfs f4, 0x348(r1)
/* 8025849C 002553FC  D0 61 03 4C */	stfs f3, 0x34c(r1)
/* 802584A0 00255400  91 81 03 50 */	stw r12, 0x350(r1)
/* 802584A4 00255404  B1 61 03 54 */	sth r11, 0x354(r1)
/* 802584A8 00255408  99 41 03 56 */	stb r10, 0x356(r1)
/* 802584AC 0025540C  99 21 03 57 */	stb r9, 0x357(r1)
/* 802584B0 00255410  99 61 03 58 */	stb r11, 0x358(r1)
/* 802584B4 00255414  98 01 03 59 */	stb r0, 0x359(r1)
/* 802584B8 00255418  C0 BC 00 60 */	lfs f5, 0x60(r28)
/* 802584BC 0025541C  C0 9C 00 50 */	lfs f4, 0x50(r28)
/* 802584C0 00255420  C0 7C 00 40 */	lfs f3, 0x40(r28)
/* 802584C4 00255424  D0 61 03 30 */	stfs f3, 0x330(r1)
/* 802584C8 00255428  D0 81 03 34 */	stfs f4, 0x334(r1)
/* 802584CC 0025542C  D0 A1 03 38 */	stfs f5, 0x338(r1)
/* 802584D0 00255430  D0 41 03 3C */	stfs f2, 0x33c(r1)
/* 802584D4 00255434  D0 21 03 40 */	stfs f1, 0x340(r1)
/* 802584D8 00255438  D0 01 03 44 */	stfs f0, 0x344(r1)
/* 802584DC 0025543C  A0 1C 07 FC */	lhz r0, 0x7fc(r28)
/* 802584E0 00255440  B0 01 03 54 */	sth r0, 0x354(r1)
/* 802584E4 00255444  48 09 1A FD */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 802584E8 00255448  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802584EC 0025544C  90 1C 0C AC */	stw r0, 0xcac(r28)
/* 802584F0 00255450  48 00 07 B0 */	b lbl_80258CA0
.global lbl_802584F4
lbl_802584F4:
/* 802584F4 00255454  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 802584F8 00255458  4B EB C7 51 */	bl GetNumMaterialSets__10CModelDataCFv
/* 802584FC 0025545C  80 9C 0C 74 */	lwz r4, 0xc74(r28)
/* 80258500 00255460  38 04 00 01 */	addi r0, r4, 1
/* 80258504 00255464  7C 00 18 00 */	cmpw r0, r3
/* 80258508 00255468  40 80 00 08 */	bge lbl_80258510
/* 8025850C 0025546C  90 1C 0C 74 */	stw r0, 0xc74(r28)
lbl_80258510:
/* 80258510 00255470  3B 40 00 01 */	li r26, 1
/* 80258514 00255474  48 00 07 8C */	b lbl_80258CA0
.global lbl_80258518
lbl_80258518:
/* 80258518 00255478  80 1C 0C 64 */	lwz r0, 0xc64(r28)
/* 8025851C 0025547C  2C 00 00 02 */	cmpwi r0, 2
/* 80258520 00255480  41 82 00 08 */	beq lbl_80258528
/* 80258524 00255484  48 00 02 A0 */	b lbl_802587C4
lbl_80258528:
/* 80258528 00255488  3B 1C 0C 14 */	addi r24, r28, 0xc14
/* 8025852C 0025548C  80 1C 0C 1C */	lwz r0, 0xc1c(r28)
/* 80258530 00255490  28 00 00 00 */	cmplwi r0, 0
/* 80258534 00255494  41 82 00 0C */	beq lbl_80258540
/* 80258538 00255498  38 60 00 01 */	li r3, 1
/* 8025853C 0025549C  48 00 00 3C */	b lbl_80258578
lbl_80258540:
/* 80258540 002554A0  88 18 00 04 */	lbz r0, 4(r24)
/* 80258544 002554A4  28 00 00 00 */	cmplwi r0, 0
/* 80258548 002554A8  41 82 00 2C */	beq lbl_80258574
/* 8025854C 002554AC  80 78 00 00 */	lwz r3, 0(r24)
/* 80258550 002554B0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80258554 002554B4  28 00 00 00 */	cmplwi r0, 0
/* 80258558 002554B8  41 82 00 1C */	beq lbl_80258574
/* 8025855C 002554BC  7F 03 C3 78 */	mr r3, r24
/* 80258560 002554C0  48 0E 88 AD */	bl GetObj__6CTokenFv
/* 80258564 002554C4  80 03 00 04 */	lwz r0, 4(r3)
/* 80258568 002554C8  38 60 00 01 */	li r3, 1
/* 8025856C 002554CC  90 18 00 08 */	stw r0, 8(r24)
/* 80258570 002554D0  48 00 00 08 */	b lbl_80258578
lbl_80258574:
/* 80258574 002554D4  38 60 00 00 */	li r3, 0
lbl_80258578:
/* 80258578 002554D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025857C 002554DC  41 82 02 48 */	beq lbl_802587C4
/* 80258580 002554E0  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80258584 002554E4  7F A3 EB 78 */	mr r3, r29
/* 80258588 002554E8  38 81 00 88 */	addi r4, r1, 0x88
/* 8025858C 002554EC  38 A0 00 09 */	li r5, 9
/* 80258590 002554F0  B0 01 00 84 */	sth r0, 0x84(r1)
/* 80258594 002554F4  38 C0 00 09 */	li r6, 9
/* 80258598 002554F8  B0 01 00 88 */	sth r0, 0x88(r1)
/* 8025859C 002554FC  4B DE D1 95 */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 802585A0 00255500  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802585A4 00255504  41 82 02 20 */	beq lbl_802587C4
/* 802585A8 00255508  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 802585AC 0025550C  C0 22 B9 AC */	lfs f1, lbl_805AD6CC@sda21(r2)
/* 802585B0 00255510  C0 42 B9 28 */	lfs f2, lbl_805AD648@sda21(r2)
/* 802585B4 00255514  48 0B 9F 91 */	bl Range__9CRandom16Fff
/* 802585B8 00255518  FC 00 08 90 */	fmr f0, f1
/* 802585BC 0025551C  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 802585C0 00255520  C0 22 B9 AC */	lfs f1, lbl_805AD6CC@sda21(r2)
/* 802585C4 00255524  C0 42 B9 28 */	lfs f2, lbl_805AD648@sda21(r2)
/* 802585C8 00255528  FF A0 00 90 */	fmr f29, f0
/* 802585CC 0025552C  48 0B 9F 79 */	bl Range__9CRandom16Fff
/* 802585D0 00255530  FC 40 E8 90 */	fmr f2, f29
/* 802585D4 00255534  48 13 C6 99 */	bl atan2
/* 802585D8 00255538  C0 02 B9 B0 */	lfs f0, lbl_805AD6D0@sda21(r2)
/* 802585DC 0025553C  FF A0 08 18 */	frsp f29, f1
/* 802585E0 00255540  38 61 02 40 */	addi r3, r1, 0x240
/* 802585E4 00255544  38 81 00 A0 */	addi r4, r1, 0xa0
/* 802585E8 00255548  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802585EC 0025554C  48 0B B3 55 */	bl RotateX__12CTransform4fFRC9CRelAngle
/* 802585F0 00255550  7F 84 E3 78 */	mr r4, r28
/* 802585F4 00255554  38 61 02 70 */	addi r3, r1, 0x270
/* 802585F8 00255558  38 BC 0A 30 */	addi r5, r28, 0xa30
/* 802585FC 0025555C  4B E2 02 BD */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80258600 00255560  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 80258604 00255564  38 81 02 70 */	addi r4, r1, 0x270
/* 80258608 00255568  38 A1 02 40 */	addi r5, r1, 0x240
/* 8025860C 0025556C  48 0B A3 45 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80258610 00255570  38 61 03 00 */	addi r3, r1, 0x300
/* 80258614 00255574  38 81 02 A0 */	addi r4, r1, 0x2a0
/* 80258618 00255578  48 0B A5 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025861C 0025557C  D3 A1 00 9C */	stfs f29, 0x9c(r1)
/* 80258620 00255580  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 80258624 00255584  38 81 00 9C */	addi r4, r1, 0x9c
/* 80258628 00255588  48 0B B2 81 */	bl RotateY__12CTransform4fFRC9CRelAngle
/* 8025862C 0025558C  38 61 02 10 */	addi r3, r1, 0x210
/* 80258630 00255590  38 81 03 00 */	addi r4, r1, 0x300
/* 80258634 00255594  38 A1 01 E0 */	addi r5, r1, 0x1e0
/* 80258638 00255598  48 0B A3 19 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8025863C 0025559C  38 61 03 00 */	addi r3, r1, 0x300
/* 80258640 002555A0  38 81 02 10 */	addi r4, r1, 0x210
/* 80258644 002555A4  48 0B A4 FD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80258648 002555A8  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 8025864C 002555AC  38 61 01 1C */	addi r3, r1, 0x11c
/* 80258650 002555B0  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 80258654 002555B4  38 81 03 00 */	addi r4, r1, 0x300
/* 80258658 002555B8  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 8025865C 002555BC  38 A1 01 58 */	addi r5, r1, 0x158
/* 80258660 002555C0  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 80258664 002555C4  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 80258668 002555C8  48 0B A4 81 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8025866C 002555CC  C0 41 01 1C */	lfs f2, 0x11c(r1)
/* 80258670 002555D0  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80258674 002555D4  C0 21 01 20 */	lfs f1, 0x120(r1)
/* 80258678 002555D8  38 63 4D 5C */	addi r3, r3, lbl_803D4D5C@l
/* 8025867C 002555DC  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 80258680 002555E0  38 83 00 85 */	addi r4, r3, 0x85
/* 80258684 002555E4  D0 41 03 0C */	stfs f2, 0x30c(r1)
/* 80258688 002555E8  3B 40 00 00 */	li r26, 0
/* 8025868C 002555EC  38 60 03 D8 */	li r3, 0x3d8
/* 80258690 002555F0  38 A0 00 00 */	li r5, 0
/* 80258694 002555F4  D0 21 03 1C */	stfs f1, 0x31c(r1)
/* 80258698 002555F8  D0 01 03 2C */	stfs f0, 0x32c(r1)
/* 8025869C 002555FC  48 0B D1 D1 */	bl __nw__FUlPCcPCc
/* 802586A0 00255600  7C 7B 1B 79 */	or. r27, r3, r3
/* 802586A4 00255604  41 82 00 C4 */	beq lbl_80258768
/* 802586A8 00255608  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 802586AC 0025560C  38 00 00 00 */	li r0, 0
/* 802586B0 00255610  98 01 01 18 */	stb r0, 0x118(r1)
/* 802586B4 00255614  7F A4 EB 78 */	mr r4, r29
/* 802586B8 00255618  38 61 00 6C */	addi r3, r1, 0x6c
/* 802586BC 0025561C  3B 40 00 01 */	li r26, 1
/* 802586C0 00255620  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 802586C4 00255624  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 802586C8 00255628  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 802586CC 0025562C  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 802586D0 00255630  A0 05 00 08 */	lhz r0, 8(r5)
/* 802586D4 00255634  B0 01 00 80 */	sth r0, 0x80(r1)
/* 802586D8 00255638  A0 BC 00 08 */	lhz r5, 8(r28)
/* 802586DC 0025563C  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 802586E0 00255640  B0 A1 00 78 */	sth r5, 0x78(r1)
/* 802586E4 00255644  80 1C 00 04 */	lwz r0, 4(r28)
/* 802586E8 00255648  B0 A1 00 74 */	sth r5, 0x74(r1)
/* 802586EC 0025564C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802586F0 00255650  90 01 00 98 */	stw r0, 0x98(r1)
/* 802586F4 00255654  4B DF 49 E9 */	bl AllocateUniqueId__13CStateManagerFv
/* 802586F8 00255658  A0 61 00 6C */	lhz r3, 0x6c(r1)
/* 802586FC 0025565C  38 01 00 98 */	addi r0, r1, 0x98
/* 80258700 00255660  38 C1 00 78 */	addi r6, r1, 0x78
/* 80258704 00255664  38 81 00 80 */	addi r4, r1, 0x80
/* 80258708 00255668  B0 61 00 70 */	sth r3, 0x70(r1)
/* 8025870C 0025566C  3B 00 00 00 */	li r24, 0
/* 80258710 00255670  39 81 01 00 */	addi r12, r1, 0x100
/* 80258714 00255674  39 61 01 0C */	addi r11, r1, 0x10c
/* 80258718 00255678  90 01 00 08 */	stw r0, 8(r1)
/* 8025871C 0025567C  7F 63 DB 78 */	mr r3, r27
/* 80258720 00255680  A0 02 C5 FC */	lhz r0, lbl_805AE31C@sda21(r2)
/* 80258724 00255684  38 BC 0C 14 */	addi r5, r28, 0xc14
/* 80258728 00255688  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8025872C 0025568C  38 E1 03 00 */	addi r7, r1, 0x300
/* 80258730 00255690  39 3C 0C 20 */	addi r9, r28, 0xc20
/* 80258734 00255694  39 41 00 70 */	addi r10, r1, 0x70
/* 80258738 00255698  90 81 00 10 */	stw r4, 0x10(r1)
/* 8025873C 0025569C  38 80 00 01 */	li r4, 1
/* 80258740 002556A0  38 C0 00 09 */	li r6, 9
/* 80258744 002556A4  39 00 00 21 */	li r8, 0x21
/* 80258748 002556A8  93 01 00 14 */	stw r24, 0x14(r1)
/* 8025874C 002556AC  93 01 00 18 */	stw r24, 0x18(r1)
/* 80258750 002556B0  91 81 00 1C */	stw r12, 0x1c(r1)
/* 80258754 002556B4  91 61 00 20 */	stw r11, 0x20(r1)
/* 80258758 002556B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025875C 002556BC  93 01 00 28 */	stw r24, 0x28(r1)
/* 80258760 002556C0  4B FB CF 39 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 80258764 002556C4  7C 7B 1B 78 */	mr r27, r3
lbl_80258768:
/* 80258768 002556C8  7F 40 07 75 */	extsb. r0, r26
/* 8025876C 002556CC  41 82 00 30 */	beq lbl_8025879C
/* 80258770 002556D0  88 01 01 18 */	lbz r0, 0x118(r1)
/* 80258774 002556D4  28 00 00 00 */	cmplwi r0, 0
/* 80258778 002556D8  41 82 00 1C */	beq lbl_80258794
/* 8025877C 002556DC  34 61 01 0C */	addic. r3, r1, 0x10c
/* 80258780 002556E0  41 82 00 14 */	beq lbl_80258794
/* 80258784 002556E4  28 03 00 00 */	cmplwi r3, 0
/* 80258788 002556E8  41 82 00 0C */	beq lbl_80258794
/* 8025878C 002556EC  38 80 00 00 */	li r4, 0
/* 80258790 002556F0  48 0E 86 B1 */	bl __dt__6CTokenFv
lbl_80258794:
/* 80258794 002556F4  38 00 00 00 */	li r0, 0
/* 80258798 002556F8  98 01 01 18 */	stb r0, 0x118(r1)
lbl_8025879C:
/* 8025879C 002556FC  28 1B 00 00 */	cmplwi r27, 0
/* 802587A0 00255700  41 82 00 24 */	beq lbl_802587C4
/* 802587A4 00255704  7F A3 EB 78 */	mr r3, r29
/* 802587A8 00255708  7F 64 DB 78 */	mr r4, r27
/* 802587AC 0025570C  4B DF 45 49 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 802587B0 00255710  7F 63 DB 78 */	mr r3, r27
/* 802587B4 00255714  38 9C 06 34 */	addi r4, r28, 0x634
/* 802587B8 00255718  4B FB B3 15 */	bl SetCameraShake__17CEnergyProjectileFRC16CCameraShakeData
/* 802587BC 0025571C  C0 02 B9 68 */	lfs f0, lbl_805AD688@sda21(r2)
/* 802587C0 00255720  D0 1B 02 E0 */	stfs f0, 0x2e0(r27)
lbl_802587C4:
/* 802587C4 00255724  3B 40 00 01 */	li r26, 1
/* 802587C8 00255728  48 00 04 D8 */	b lbl_80258CA0
.global lbl_802587CC
lbl_802587CC:
/* 802587CC 0025572C  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 802587D0 00255730  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802587D4 00255734  41 82 02 A8 */	beq lbl_80258A7C
/* 802587D8 00255738  3B 1C 0C 3C */	addi r24, r28, 0xc3c
/* 802587DC 0025573C  80 1C 0C 44 */	lwz r0, 0xc44(r28)
/* 802587E0 00255740  28 00 00 00 */	cmplwi r0, 0
/* 802587E4 00255744  41 82 00 0C */	beq lbl_802587F0
/* 802587E8 00255748  38 60 00 01 */	li r3, 1
/* 802587EC 0025574C  48 00 00 3C */	b lbl_80258828
lbl_802587F0:
/* 802587F0 00255750  88 18 00 04 */	lbz r0, 4(r24)
/* 802587F4 00255754  28 00 00 00 */	cmplwi r0, 0
/* 802587F8 00255758  41 82 00 2C */	beq lbl_80258824
/* 802587FC 0025575C  80 78 00 00 */	lwz r3, 0(r24)
/* 80258800 00255760  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80258804 00255764  28 00 00 00 */	cmplwi r0, 0
/* 80258808 00255768  41 82 00 1C */	beq lbl_80258824
/* 8025880C 0025576C  7F 03 C3 78 */	mr r3, r24
/* 80258810 00255770  48 0E 85 FD */	bl GetObj__6CTokenFv
/* 80258814 00255774  80 03 00 04 */	lwz r0, 4(r3)
/* 80258818 00255778  38 60 00 01 */	li r3, 1
/* 8025881C 0025577C  90 18 00 08 */	stw r0, 8(r24)
/* 80258820 00255780  48 00 00 08 */	b lbl_80258828
lbl_80258824:
/* 80258824 00255784  38 60 00 00 */	li r3, 0
lbl_80258828:
/* 80258828 00255788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025882C 0025578C  41 82 04 74 */	beq lbl_80258CA0
/* 80258830 00255790  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80258834 00255794  7F A3 EB 78 */	mr r3, r29
/* 80258838 00255798  38 81 00 68 */	addi r4, r1, 0x68
/* 8025883C 0025579C  38 A0 00 09 */	li r5, 9
/* 80258840 002557A0  B0 01 00 64 */	sth r0, 0x64(r1)
/* 80258844 002557A4  38 C0 00 08 */	li r6, 8
/* 80258848 002557A8  B0 01 00 68 */	sth r0, 0x68(r1)
/* 8025884C 002557AC  4B DE CE E5 */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 80258850 002557B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80258854 002557B4  41 82 04 4C */	beq lbl_80258CA0
/* 80258858 002557B8  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8025885C 002557BC  C0 22 B9 AC */	lfs f1, lbl_805AD6CC@sda21(r2)
/* 80258860 002557C0  C0 42 B9 28 */	lfs f2, lbl_805AD648@sda21(r2)
/* 80258864 002557C4  48 0B 9C E1 */	bl Range__9CRandom16Fff
/* 80258868 002557C8  FF A0 08 90 */	fmr f29, f1
/* 8025886C 002557CC  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 80258870 002557D0  C0 22 B9 AC */	lfs f1, lbl_805AD6CC@sda21(r2)
/* 80258874 002557D4  C0 42 B9 28 */	lfs f2, lbl_805AD648@sda21(r2)
/* 80258878 002557D8  48 0B 9C CD */	bl Range__9CRandom16Fff
/* 8025887C 002557DC  FF C0 08 90 */	fmr f30, f1
/* 80258880 002557E0  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80258884 002557E4  D3 A1 01 4C */	stfs f29, 0x14c(r1)
/* 80258888 002557E8  7F 84 E3 78 */	mr r4, r28
/* 8025888C 002557EC  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80258890 002557F0  38 BC 0A 30 */	addi r5, r28, 0xa30
/* 80258894 002557F4  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 80258898 002557F8  D3 C1 01 54 */	stfs f30, 0x154(r1)
/* 8025889C 002557FC  4B E2 00 1D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 802588A0 00255800  38 61 00 F4 */	addi r3, r1, 0xf4
/* 802588A4 00255804  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 802588A8 00255808  38 A1 01 4C */	addi r5, r1, 0x14c
/* 802588AC 0025580C  48 0B A2 3D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 802588B0 00255810  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 802588B4 00255814  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 802588B8 00255818  C0 81 00 F8 */	lfs f4, 0xf8(r1)
/* 802588BC 0025581C  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 802588C0 00255820  C0 61 00 FC */	lfs f3, 0xfc(r1)
/* 802588C4 00255824  38 61 01 80 */	addi r3, r1, 0x180
/* 802588C8 00255828  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 802588CC 0025582C  38 81 01 40 */	addi r4, r1, 0x140
/* 802588D0 00255830  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 802588D4 00255834  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 802588D8 00255838  D0 81 01 44 */	stfs f4, 0x144(r1)
/* 802588DC 0025583C  EC 40 07 B2 */	fmuls f2, f0, f30
/* 802588E0 00255840  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 802588E4 00255844  D0 61 01 48 */	stfs f3, 0x148(r1)
/* 802588E8 00255848  EC 00 07 72 */	fmuls f0, f0, f29
/* 802588EC 0025584C  80 FD 08 4C */	lwz r7, 0x84c(r29)
/* 802588F0 00255850  C0 A7 00 60 */	lfs f5, 0x60(r7)
/* 802588F4 00255854  C0 87 00 50 */	lfs f4, 0x50(r7)
/* 802588F8 00255858  C0 67 00 40 */	lfs f3, 0x40(r7)
/* 802588FC 0025585C  EC 25 08 2A */	fadds f1, f5, f1
/* 80258900 00255860  EC 44 10 2A */	fadds f2, f4, f2
/* 80258904 00255864  D0 81 00 E0 */	stfs f4, 0xe0(r1)
/* 80258908 00255868  EC 03 00 2A */	fadds f0, f3, f0
/* 8025890C 0025586C  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 80258910 00255870  D0 A1 00 E4 */	stfs f5, 0xe4(r1)
/* 80258914 00255874  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80258918 00255878  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 8025891C 0025587C  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 80258920 00255880  48 0B B1 F1 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80258924 00255884  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 80258928 00255888  38 81 01 80 */	addi r4, r1, 0x180
/* 8025892C 0025588C  48 0B A2 49 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80258930 00255890  C0 41 01 40 */	lfs f2, 0x140(r1)
/* 80258934 00255894  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 80258938 00255898  C0 21 01 44 */	lfs f1, 0x144(r1)
/* 8025893C 0025589C  38 63 4D 5C */	addi r3, r3, lbl_803D4D5C@l
/* 80258940 002558A0  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 80258944 002558A4  38 83 00 85 */	addi r4, r3, 0x85
/* 80258948 002558A8  D0 41 02 DC */	stfs f2, 0x2dc(r1)
/* 8025894C 002558AC  3B 20 00 00 */	li r25, 0
/* 80258950 002558B0  38 60 03 D8 */	li r3, 0x3d8
/* 80258954 002558B4  38 A0 00 00 */	li r5, 0
/* 80258958 002558B8  D0 21 02 EC */	stfs f1, 0x2ec(r1)
/* 8025895C 002558BC  D0 01 02 FC */	stfs f0, 0x2fc(r1)
/* 80258960 002558C0  48 0B CF 0D */	bl __nw__FUlPCcPCc
/* 80258964 002558C4  7C 7B 1B 79 */	or. r27, r3, r3
/* 80258968 002558C8  41 82 00 BC */	beq lbl_80258A24
/* 8025896C 002558CC  C0 02 B9 28 */	lfs f0, lbl_805AD648@sda21(r2)
/* 80258970 002558D0  38 60 00 00 */	li r3, 0
/* 80258974 002558D4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80258978 002558D8  7F A4 EB 78 */	mr r4, r29
/* 8025897C 002558DC  98 61 00 D8 */	stb r3, 0xd8(r1)
/* 80258980 002558E0  38 61 00 50 */	addi r3, r1, 0x50
/* 80258984 002558E4  3B 20 00 01 */	li r25, 1
/* 80258988 002558E8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8025898C 002558EC  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80258990 002558F0  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80258994 002558F4  B0 01 00 60 */	sth r0, 0x60(r1)
/* 80258998 002558F8  A0 BC 00 08 */	lhz r5, 8(r28)
/* 8025899C 002558FC  B0 A1 00 5C */	sth r5, 0x5c(r1)
/* 802589A0 00255900  80 1C 00 04 */	lwz r0, 4(r28)
/* 802589A4 00255904  B0 A1 00 58 */	sth r5, 0x58(r1)
/* 802589A8 00255908  90 01 00 8C */	stw r0, 0x8c(r1)
/* 802589AC 0025590C  90 01 00 90 */	stw r0, 0x90(r1)
/* 802589B0 00255910  4B DF 47 2D */	bl AllocateUniqueId__13CStateManagerFv
/* 802589B4 00255914  A0 61 00 50 */	lhz r3, 0x50(r1)
/* 802589B8 00255918  38 01 00 90 */	addi r0, r1, 0x90
/* 802589BC 0025591C  38 C1 00 5C */	addi r6, r1, 0x5c
/* 802589C0 00255920  38 81 00 60 */	addi r4, r1, 0x60
/* 802589C4 00255924  B0 61 00 54 */	sth r3, 0x54(r1)
/* 802589C8 00255928  3B 00 00 00 */	li r24, 0
/* 802589CC 0025592C  39 81 00 C0 */	addi r12, r1, 0xc0
/* 802589D0 00255930  39 61 00 CC */	addi r11, r1, 0xcc
/* 802589D4 00255934  90 01 00 08 */	stw r0, 8(r1)
/* 802589D8 00255938  7F 63 DB 78 */	mr r3, r27
/* 802589DC 0025593C  A0 02 C5 FC */	lhz r0, lbl_805AE31C@sda21(r2)
/* 802589E0 00255940  38 BC 0C 3C */	addi r5, r28, 0xc3c
/* 802589E4 00255944  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802589E8 00255948  38 E1 02 D0 */	addi r7, r1, 0x2d0
/* 802589EC 0025594C  39 3C 0C 48 */	addi r9, r28, 0xc48
/* 802589F0 00255950  39 41 00 54 */	addi r10, r1, 0x54
/* 802589F4 00255954  90 81 00 10 */	stw r4, 0x10(r1)
/* 802589F8 00255958  38 80 00 01 */	li r4, 1
/* 802589FC 0025595C  38 C0 00 09 */	li r6, 9
/* 80258A00 00255960  39 00 00 21 */	li r8, 0x21
/* 80258A04 00255964  93 01 00 14 */	stw r24, 0x14(r1)
/* 80258A08 00255968  93 01 00 18 */	stw r24, 0x18(r1)
/* 80258A0C 0025596C  91 81 00 1C */	stw r12, 0x1c(r1)
/* 80258A10 00255970  91 61 00 20 */	stw r11, 0x20(r1)
/* 80258A14 00255974  90 01 00 24 */	stw r0, 0x24(r1)
/* 80258A18 00255978  93 01 00 28 */	stw r24, 0x28(r1)
/* 80258A1C 0025597C  4B FB CC 7D */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 80258A20 00255980  7C 7B 1B 78 */	mr r27, r3
lbl_80258A24:
/* 80258A24 00255984  7F 20 07 75 */	extsb. r0, r25
/* 80258A28 00255988  41 82 00 30 */	beq lbl_80258A58
/* 80258A2C 0025598C  88 01 00 D8 */	lbz r0, 0xd8(r1)
/* 80258A30 00255990  28 00 00 00 */	cmplwi r0, 0
/* 80258A34 00255994  41 82 00 1C */	beq lbl_80258A50
/* 80258A38 00255998  34 61 00 CC */	addic. r3, r1, 0xcc
/* 80258A3C 0025599C  41 82 00 14 */	beq lbl_80258A50
/* 80258A40 002559A0  28 03 00 00 */	cmplwi r3, 0
/* 80258A44 002559A4  41 82 00 0C */	beq lbl_80258A50
/* 80258A48 002559A8  38 80 00 00 */	li r4, 0
/* 80258A4C 002559AC  48 0E 83 F5 */	bl __dt__6CTokenFv
lbl_80258A50:
/* 80258A50 002559B0  38 00 00 00 */	li r0, 0
/* 80258A54 002559B4  98 01 00 D8 */	stb r0, 0xd8(r1)
lbl_80258A58:
/* 80258A58 002559B8  28 1B 00 00 */	cmplwi r27, 0
/* 80258A5C 002559BC  41 82 02 44 */	beq lbl_80258CA0
/* 80258A60 002559C0  7F A3 EB 78 */	mr r3, r29
/* 80258A64 002559C4  7F 64 DB 78 */	mr r4, r27
/* 80258A68 002559C8  4B DF 42 8D */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 80258A6C 002559CC  7F 63 DB 78 */	mr r3, r27
/* 80258A70 002559D0  38 9C 07 28 */	addi r4, r28, 0x728
/* 80258A74 002559D4  4B FB B0 59 */	bl SetCameraShake__17CEnergyProjectileFRC16CCameraShakeData
/* 80258A78 002559D8  48 00 02 28 */	b lbl_80258CA0
lbl_80258A7C:
/* 80258A7C 002559DC  80 1C 0C 64 */	lwz r0, 0xc64(r28)
/* 80258A80 002559E0  2C 00 00 03 */	cmpwi r0, 3
/* 80258A84 002559E4  40 82 02 1C */	bne lbl_80258CA0
/* 80258A88 002559E8  88 1C 0A 31 */	lbz r0, 0xa31(r28)
/* 80258A8C 002559EC  38 60 00 00 */	li r3, 0
/* 80258A90 002559F0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80258A94 002559F4  98 1C 0A 31 */	stb r0, 0xa31(r28)
/* 80258A98 002559F8  48 00 02 08 */	b lbl_80258CA0
.global lbl_80258A9C
lbl_80258A9C:
/* 80258A9C 002559FC  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 80258AA0 00255A00  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80258AA4 00255A04  41 82 01 FC */	beq lbl_80258CA0
/* 80258AA8 00255A08  7F A6 EB 78 */	mr r6, r29
/* 80258AAC 00255A0C  38 80 00 28 */	li r4, 0x28
/* 80258AB0 00255A10  38 A0 00 29 */	li r5, 0x29
/* 80258AB4 00255A14  4B DF B4 21 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80258AB8 00255A18  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80258ABC 00255A1C  7F A6 EB 78 */	mr r6, r29
/* 80258AC0 00255A20  38 81 00 4C */	addi r4, r1, 0x4c
/* 80258AC4 00255A24  38 A0 00 08 */	li r5, 8
/* 80258AC8 00255A28  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80258ACC 00255A2C  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80258AD0 00255A30  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 80258AD4 00255A34  4B F2 27 81 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 80258AD8 00255A38  3B 40 00 01 */	li r26, 1
/* 80258ADC 00255A3C  48 00 01 C4 */	b lbl_80258CA0
.global lbl_80258AE0
lbl_80258AE0:
/* 80258AE0 00255A40  3C 80 80 5A */	lis r4, lbl_805A6700@ha
/* 80258AE4 00255A44  38 84 67 00 */	addi r4, r4, lbl_805A6700@l
/* 80258AE8 00255A48  4B EC 21 B9 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 80258AEC 00255A4C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80258AF0 00255A50  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 80258AF4 00255A54  D0 1C 0A EC */	stfs f0, 0xaec(r28)
/* 80258AF8 00255A58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80258AFC 00255A5C  D0 1C 0A F0 */	stfs f0, 0xaf0(r28)
/* 80258B00 00255A60  C0 03 00 08 */	lfs f0, 8(r3)
/* 80258B04 00255A64  D0 1C 0A F4 */	stfs f0, 0xaf4(r28)
/* 80258B08 00255A68  C0 03 00 00 */	lfs f0, 0(r3)
/* 80258B0C 00255A6C  D0 1C 0A F8 */	stfs f0, 0xaf8(r28)
/* 80258B10 00255A70  C0 03 00 04 */	lfs f0, 4(r3)
/* 80258B14 00255A74  D0 1C 0A FC */	stfs f0, 0xafc(r28)
/* 80258B18 00255A78  C0 03 00 08 */	lfs f0, 8(r3)
/* 80258B1C 00255A7C  D0 1C 0B 00 */	stfs f0, 0xb00(r28)
/* 80258B20 00255A80  48 00 01 80 */	b lbl_80258CA0
.global lbl_80258B24
lbl_80258B24:
/* 80258B24 00255A84  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 80258B28 00255A88  38 60 00 00 */	li r3, 0
/* 80258B2C 00255A8C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80258B30 00255A90  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80258B34 00255A94  98 1C 03 28 */	stb r0, 0x328(r28)
/* 80258B38 00255A98  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 80258B3C 00255A9C  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 80258B40 00255AA0  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 80258B44 00255AA4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 80258B48 00255AA8  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 80258B4C 00255AAC  EC 25 00 28 */	fsubs f1, f5, f0
/* 80258B50 00255AB0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80258B54 00255AB4  C0 7C 00 40 */	lfs f3, 0x40(r28)
/* 80258B58 00255AB8  EC 44 10 28 */	fsubs f2, f4, f2
/* 80258B5C 00255ABC  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80258B60 00255AC0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80258B64 00255AC4  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 80258B68 00255AC8  D0 A1 00 B0 */	stfs f5, 0xb0(r1)
/* 80258B6C 00255ACC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80258B70 00255AD0  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 80258B74 00255AD4  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 80258B78 00255AD8  48 0B BD 41 */	bl Magnitude__9CVector3fCFv
/* 80258B7C 00255ADC  C0 1C 08 F0 */	lfs f0, 0x8f0(r28)
/* 80258B80 00255AE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80258B84 00255AE4  40 80 01 1C */	bge lbl_80258CA0
/* 80258B88 00255AE8  80 AD 97 38 */	lwz r5, lbl_805A82F8@sda21(r13)
/* 80258B8C 00255AEC  38 60 00 00 */	li r3, 0
/* 80258B90 00255AF0  38 80 00 01 */	li r4, 1
/* 80258B94 00255AF4  48 13 13 61 */	bl __shl2i
/* 80258B98 00255AF8  39 40 00 00 */	li r10, 0
/* 80258B9C 00255AFC  38 00 00 03 */	li r0, 3
/* 80258BA0 00255B00  90 81 01 6C */	stw r4, 0x16c(r1)
/* 80258BA4 00255B04  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80258BA8 00255B08  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80258BAC 00255B0C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80258BB0 00255B10  90 61 01 68 */	stw r3, 0x168(r1)
/* 80258BB4 00255B14  38 81 00 44 */	addi r4, r1, 0x44
/* 80258BB8 00255B18  7F A3 EB 78 */	mr r3, r29
/* 80258BBC 00255B1C  38 C1 00 34 */	addi r6, r1, 0x34
/* 80258BC0 00255B20  91 41 01 74 */	stw r10, 0x174(r1)
/* 80258BC4 00255B24  38 FC 08 00 */	addi r7, r28, 0x800
/* 80258BC8 00255B28  39 01 01 68 */	addi r8, r1, 0x168
/* 80258BCC 00255B2C  91 41 01 70 */	stw r10, 0x170(r1)
/* 80258BD0 00255B30  90 01 01 78 */	stw r0, 0x178(r1)
/* 80258BD4 00255B34  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80258BD8 00255B38  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80258BDC 00255B3C  81 5D 08 4C */	lwz r10, 0x84c(r29)
/* 80258BE0 00255B40  B0 01 00 30 */	sth r0, 0x30(r1)
/* 80258BE4 00255B44  A1 4A 00 08 */	lhz r10, 8(r10)
/* 80258BE8 00255B48  B1 41 00 3C */	sth r10, 0x3c(r1)
/* 80258BEC 00255B4C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80258BF0 00255B50  B1 41 00 38 */	sth r10, 0x38(r1)
/* 80258BF4 00255B54  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80258BF8 00255B58  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80258BFC 00255B5C  4B DF 14 A5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80258C00 00255B60  48 00 00 A0 */	b lbl_80258CA0
.global lbl_80258C04
lbl_80258C04:
/* 80258C04 00255B64  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 80258C08 00255B68  38 60 00 01 */	li r3, 1
/* 80258C0C 00255B6C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80258C10 00255B70  98 1C 0A 32 */	stb r0, 0xa32(r28)
/* 80258C14 00255B74  48 00 00 8C */	b lbl_80258CA0
.global lbl_80258C18
lbl_80258C18:
/* 80258C18 00255B78  88 1C 0A 32 */	lbz r0, 0xa32(r28)
/* 80258C1C 00255B7C  38 60 00 00 */	li r3, 0
/* 80258C20 00255B80  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80258C24 00255B84  98 1C 0A 32 */	stb r0, 0xa32(r28)
/* 80258C28 00255B88  48 00 00 78 */	b lbl_80258CA0
.global lbl_80258C2C
lbl_80258C2C:
/* 80258C2C 00255B8C  80 1C 0C 64 */	lwz r0, 0xc64(r28)
/* 80258C30 00255B90  2C 00 00 03 */	cmpwi r0, 3
/* 80258C34 00255B94  41 82 00 28 */	beq lbl_80258C5C
/* 80258C38 00255B98  40 80 00 68 */	bge lbl_80258CA0
/* 80258C3C 00255B9C  2C 00 00 02 */	cmpwi r0, 2
/* 80258C40 00255BA0  40 80 00 08 */	bge lbl_80258C48
/* 80258C44 00255BA4  48 00 00 5C */	b lbl_80258CA0
lbl_80258C48:
/* 80258C48 00255BA8  88 1C 0A 33 */	lbz r0, 0xa33(r28)
/* 80258C4C 00255BAC  38 60 00 00 */	li r3, 0
/* 80258C50 00255BB0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80258C54 00255BB4  98 1C 0A 33 */	stb r0, 0xa33(r28)
/* 80258C58 00255BB8  48 00 00 48 */	b lbl_80258CA0
lbl_80258C5C:
/* 80258C5C 00255BBC  4B FF EB F1 */	bl sub_8025784c
/* 80258C60 00255BC0  48 00 00 40 */	b lbl_80258CA0
.global lbl_80258C64
lbl_80258C64:
/* 80258C64 00255BC4  80 1C 0C 64 */	lwz r0, 0xc64(r28)
/* 80258C68 00255BC8  2C 00 00 03 */	cmpwi r0, 3
/* 80258C6C 00255BCC  41 82 00 30 */	beq lbl_80258C9C
/* 80258C70 00255BD0  40 80 00 30 */	bge lbl_80258CA0
/* 80258C74 00255BD4  2C 00 00 02 */	cmpwi r0, 2
/* 80258C78 00255BD8  40 80 00 08 */	bge lbl_80258C80
/* 80258C7C 00255BDC  48 00 00 24 */	b lbl_80258CA0
lbl_80258C80:
/* 80258C80 00255BE0  88 7C 0A 33 */	lbz r3, 0xa33(r28)
/* 80258C84 00255BE4  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80258C88 00255BE8  41 82 00 18 */	beq lbl_80258CA0
/* 80258C8C 00255BEC  38 00 00 01 */	li r0, 1
/* 80258C90 00255BF0  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 80258C94 00255BF4  98 7C 0A 33 */	stb r3, 0xa33(r28)
/* 80258C98 00255BF8  48 00 00 08 */	b lbl_80258CA0
lbl_80258C9C:
/* 80258C9C 00255BFC  4B FF E9 B5 */	bl sub_80257650
.global lbl_80258CA0
lbl_80258CA0:
/* 80258CA0 00255C00  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80258CA4 00255C04  40 82 00 1C */	bne lbl_80258CC0
/* 80258CA8 00255C08  FC 20 F8 90 */	fmr f1, f31
/* 80258CAC 00255C0C  7F 83 E3 78 */	mr r3, r28
/* 80258CB0 00255C10  7F A4 EB 78 */	mr r4, r29
/* 80258CB4 00255C14  7F C5 F3 78 */	mr r5, r30
/* 80258CB8 00255C18  7F E6 FB 78 */	mr r6, r31
/* 80258CBC 00255C1C  4B E2 01 F5 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80258CC0:
/* 80258CC0 00255C20  E3 E1 03 A8 */	psq_l f31, 936(r1), 0, qr0
/* 80258CC4 00255C24  CB E1 03 A0 */	lfd f31, 0x3a0(r1)
/* 80258CC8 00255C28  E3 C1 03 98 */	psq_l f30, 920(r1), 0, qr0
/* 80258CCC 00255C2C  CB C1 03 90 */	lfd f30, 0x390(r1)
/* 80258CD0 00255C30  E3 A1 03 88 */	psq_l f29, 904(r1), 0, qr0
/* 80258CD4 00255C34  CB A1 03 80 */	lfd f29, 0x380(r1)
/* 80258CD8 00255C38  BB 01 03 60 */	lmw r24, 0x360(r1)
/* 80258CDC 00255C3C  80 01 03 B4 */	lwz r0, 0x3b4(r1)
/* 80258CE0 00255C40  7C 08 03 A6 */	mtlr r0
/* 80258CE4 00255C44  38 21 03 B0 */	addi r1, r1, 0x3b0
/* 80258CE8 00255C48  4E 80 00 20 */	blr

.global AcceptScriptMsg__7CRidleyF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__7CRidleyF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80258CEC 00255C4C  94 21 FC B0 */	stwu r1, -0x350(r1)
/* 80258CF0 00255C50  7C 08 02 A6 */	mflr r0
/* 80258CF4 00255C54  90 01 03 54 */	stw r0, 0x354(r1)
/* 80258CF8 00255C58  DB E1 03 40 */	stfd f31, 0x340(r1)
/* 80258CFC 00255C5C  F3 E1 03 48 */	psq_st f31, 840(r1), 0, qr0
/* 80258D00 00255C60  DB C1 03 30 */	stfd f30, 0x330(r1)
/* 80258D04 00255C64  F3 C1 03 38 */	psq_st f30, 824(r1), 0, qr0
/* 80258D08 00255C68  BF 41 03 18 */	stmw r26, 0x318(r1)
/* 80258D0C 00255C6C  7C BA 2B 78 */	mr r26, r5
/* 80258D10 00255C70  7C 7F 1B 78 */	mr r31, r3
/* 80258D14 00255C74  A0 05 00 00 */	lhz r0, 0(r5)
/* 80258D18 00255C78  7C 9B 23 78 */	mr r27, r4
/* 80258D1C 00255C7C  7C DE 33 78 */	mr r30, r6
/* 80258D20 00255C80  38 A1 00 98 */	addi r5, r1, 0x98
/* 80258D24 00255C84  B0 01 00 98 */	sth r0, 0x98(r1)
/* 80258D28 00255C88  4B E2 3E 51 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80258D2C 00255C8C  28 1B 00 2A */	cmplwi r27, 0x2a
/* 80258D30 00255C90  41 81 0F 7C */	bgt lbl_80259CAC
/* 80258D34 00255C94  3C 60 80 3F */	lis r3, lbl_803E95A4@ha
/* 80258D38 00255C98  57 60 10 3A */	slwi r0, r27, 2
/* 80258D3C 00255C9C  38 63 95 A4 */	addi r3, r3, lbl_803E95A4@l
/* 80258D40 00255CA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80258D44 00255CA4  7C 09 03 A6 */	mtctr r0
/* 80258D48 00255CA8  4E 80 04 20 */	bctr
.global lbl_80258D4C
lbl_80258D4C:
/* 80258D4C 00255CAC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80258D50 00255CB0  7F C4 F3 78 */	mr r4, r30
/* 80258D54 00255CB4  4B EE 1F 9D */	bl Activate__15CBodyControllerFR13CStateManager
/* 80258D58 00255CB8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80258D5C 00255CBC  38 80 00 01 */	li r4, 1
/* 80258D60 00255CC0  4B EE 1C 79 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80258D64 00255CC4  7F E3 FB 78 */	mr r3, r31
/* 80258D68 00255CC8  7F C4 F3 78 */	mr r4, r30
/* 80258D6C 00255CCC  4B FF E2 D9 */	bl sub_80257044
/* 80258D70 00255CD0  7F E3 FB 78 */	mr r3, r31
/* 80258D74 00255CD4  7F C4 F3 78 */	mr r4, r30
/* 80258D78 00255CD8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80258D7C 00255CDC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80258D80 00255CE0  7D 89 03 A6 */	mtctr r12
/* 80258D84 00255CE4  4E 80 04 21 */	bctrl
/* 80258D88 00255CE8  C0 03 00 00 */	lfs f0, 0(r3)
/* 80258D8C 00255CEC  C0 22 B9 1C */	lfs f1, lbl_805AD63C@sda21(r2)
/* 80258D90 00255CF0  D0 1F 0C B8 */	stfs f0, 0xcb8(r31)
/* 80258D94 00255CF4  C0 1F 0C B8 */	lfs f0, 0xcb8(r31)
/* 80258D98 00255CF8  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
/* 80258D9C 00255CFC  C0 1F 0C B8 */	lfs f0, 0xcb8(r31)
/* 80258DA0 00255D00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80258DA4 00255D04  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
/* 80258DA8 00255D08  48 00 0F 04 */	b lbl_80259CAC
.global lbl_80258DAC
lbl_80258DAC:
/* 80258DAC 00255D0C  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 80258DB0 00255D10  38 60 00 01 */	li r3, 1
/* 80258DB4 00255D14  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80258DB8 00255D18  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80258DBC 00255D1C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 80258DC0 00255D20  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80258DC4 00255D24  40 82 0E E8 */	bne lbl_80259CAC
/* 80258DC8 00255D28  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80258DCC 00255D2C  7F E3 FB 78 */	mr r3, r31
/* 80258DD0 00255D30  7F C6 F3 78 */	mr r6, r30
/* 80258DD4 00255D34  38 A1 00 94 */	addi r5, r1, 0x94
/* 80258DD8 00255D38  B0 01 00 94 */	sth r0, 0x94(r1)
/* 80258DDC 00255D3C  38 80 00 01 */	li r4, 1
/* 80258DE0 00255D40  4B E2 3D 99 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
.global lbl_80258DE4
lbl_80258DE4:
/* 80258DE4 00255D44  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80258DE8 00255D48  7F C3 F3 78 */	mr r3, r30
/* 80258DEC 00255D4C  38 81 00 90 */	addi r4, r1, 0x90
/* 80258DF0 00255D50  38 A0 00 5A */	li r5, 0x5a
/* 80258DF4 00255D54  B0 01 00 90 */	sth r0, 0x90(r1)
/* 80258DF8 00255D58  C0 3F 0C B8 */	lfs f1, 0xcb8(r31)
/* 80258DFC 00255D5C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80258E00 00255D60  C0 5F 0B 1C */	lfs f2, 0xb1c(r31)
/* 80258E04 00255D64  EC 01 00 2A */	fadds f0, f1, f0
/* 80258E08 00255D68  B0 01 00 8C */	sth r0, 0x8c(r1)
/* 80258E0C 00255D6C  EC 22 00 2A */	fadds f1, f2, f0
/* 80258E10 00255D70  4B DE B1 35 */	bl SetBossParams__13CStateManagerF9TUniqueIdfUi
/* 80258E14 00255D74  C0 3F 0B 10 */	lfs f1, 0xb10(r31)
/* 80258E18 00255D78  7F E3 FB 78 */	mr r3, r31
/* 80258E1C 00255D7C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80258E20 00255D80  7F C4 F3 78 */	mr r4, r30
/* 80258E24 00255D84  81 9F 00 00 */	lwz r12, 0(r31)
/* 80258E28 00255D88  EC 01 00 2A */	fadds f0, f1, f0
/* 80258E2C 00255D8C  C0 3F 0B 1C */	lfs f1, 0xb1c(r31)
/* 80258E30 00255D90  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80258E34 00255D94  EF E1 00 2A */	fadds f31, f1, f0
/* 80258E38 00255D98  7D 89 03 A6 */	mtctr r12
/* 80258E3C 00255D9C  4E 80 04 21 */	bctrl
/* 80258E40 00255DA0  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80258E44 00255DA4  38 60 00 01 */	li r3, 1
/* 80258E48 00255DA8  C0 22 B9 B4 */	lfs f1, lbl_805AD6D4@sda21(r2)
/* 80258E4C 00255DAC  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80258E50 00255DB0  C0 02 B9 B8 */	lfs f0, lbl_805AD6D8@sda21(r2)
/* 80258E54 00255DB4  88 04 09 C6 */	lbz r0, 0x9c6(r4)
/* 80258E58 00255DB8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80258E5C 00255DBC  98 04 09 C6 */	stb r0, 0x9c6(r4)
/* 80258E60 00255DC0  D0 24 0A 20 */	stfs f1, 0xa20(r4)
/* 80258E64 00255DC4  D0 04 0A 24 */	stfs f0, 0xa24(r4)
/* 80258E68 00255DC8  48 00 0E 44 */	b lbl_80259CAC
.global lbl_80258E6C
lbl_80258E6C:
/* 80258E6C 00255DCC  80 7F 09 84 */	lwz r3, 0x984(r31)
/* 80258E70 00255DD0  7F C4 F3 78 */	mr r4, r30
/* 80258E74 00255DD4  38 A0 00 00 */	li r5, 0
/* 80258E78 00255DD8  4B F4 E4 81 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 80258E7C 00255DDC  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80258E80 00255DE0  7F C4 F3 78 */	mr r4, r30
/* 80258E84 00255DE4  38 A0 00 00 */	li r5, 0
/* 80258E88 00255DE8  4B F4 E4 71 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 80258E8C 00255DEC  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80258E90 00255DF0  38 80 00 00 */	li r4, 0
/* 80258E94 00255DF4  88 03 09 C6 */	lbz r0, 0x9c6(r3)
/* 80258E98 00255DF8  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80258E9C 00255DFC  98 03 09 C6 */	stb r0, 0x9c6(r3)
/* 80258EA0 00255E00  48 00 0E 0C */	b lbl_80259CAC
.global lbl_80258EA4
lbl_80258EA4:
/* 80258EA4 00255E04  80 7F 09 84 */	lwz r3, 0x984(r31)
/* 80258EA8 00255E08  7F C4 F3 78 */	mr r4, r30
/* 80258EAC 00255E0C  4B F4 E5 19 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80258EB0 00255E10  80 7F 09 80 */	lwz r3, 0x980(r31)
/* 80258EB4 00255E14  7F C4 F3 78 */	mr r4, r30
/* 80258EB8 00255E18  4B F4 E5 0D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 80258EBC 00255E1C  A0 7F 0B 64 */	lhz r3, 0xb64(r31)
/* 80258EC0 00255E20  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80258EC4 00255E24  7C 03 00 40 */	cmplw r3, r0
/* 80258EC8 00255E28  41 82 0D E4 */	beq lbl_80259CAC
/* 80258ECC 00255E2C  A0 1F 0B 64 */	lhz r0, 0xb64(r31)
/* 80258ED0 00255E30  7F C3 F3 78 */	mr r3, r30
/* 80258ED4 00255E34  38 81 00 88 */	addi r4, r1, 0x88
/* 80258ED8 00255E38  B0 01 00 88 */	sth r0, 0x88(r1)
/* 80258EDC 00255E3C  4B DF 33 91 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80258EE0 00255E40  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80258EE4 00255E44  B0 1F 0B 64 */	sth r0, 0xb64(r31)
/* 80258EE8 00255E48  48 00 0D C4 */	b lbl_80259CAC
.global lbl_80258EEC
lbl_80258EEC:
/* 80258EEC 00255E4C  7F E4 FB 78 */	mr r4, r31
/* 80258EF0 00255E50  7F C5 F3 78 */	mr r5, r30
/* 80258EF4 00255E54  38 61 00 84 */	addi r3, r1, 0x84
/* 80258EF8 00255E58  38 C0 00 0D */	li r6, 0xd
/* 80258EFC 00255E5C  38 E0 00 06 */	li r7, 6
/* 80258F00 00255E60  4B F9 C0 99 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80258F04 00255E64  A0 61 00 84 */	lhz r3, 0x84(r1)
/* 80258F08 00255E68  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80258F0C 00255E6C  B0 61 00 A4 */	sth r3, 0xa4(r1)
/* 80258F10 00255E70  7C 03 00 40 */	cmplw r3, r0
/* 80258F14 00255E74  41 82 0D 98 */	beq lbl_80259CAC
/* 80258F18 00255E78  B0 61 00 80 */	sth r3, 0x80(r1)
/* 80258F1C 00255E7C  7F C3 F3 78 */	mr r3, r30
/* 80258F20 00255E80  38 81 00 80 */	addi r4, r1, 0x80
/* 80258F24 00255E84  4B DF 36 81 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80258F28 00255E88  7C 64 1B 78 */	mr r4, r3
/* 80258F2C 00255E8C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80258F30 00255E90  4B E4 D6 1D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80258F34 00255E94  83 43 00 04 */	lwz r26, 4(r3)
/* 80258F38 00255E98  28 1A 00 00 */	cmplwi r26, 0
/* 80258F3C 00255E9C  41 82 0D 70 */	beq lbl_80259CAC
/* 80258F40 00255EA0  38 7F 0A 84 */	addi r3, r31, 0xa84
/* 80258F44 00255EA4  38 9A 00 34 */	addi r4, r26, 0x34
/* 80258F48 00255EA8  48 0B 9B F9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80258F4C 00255EAC  7F 44 D3 78 */	mr r4, r26
/* 80258F50 00255EB0  7F C5 F3 78 */	mr r5, r30
/* 80258F54 00255EB4  38 61 00 78 */	addi r3, r1, 0x78
/* 80258F58 00255EB8  4B E1 E1 DD */	bl NextWaypoint__15CScriptWaypointCFR13CStateManager
/* 80258F5C 00255EBC  A0 01 00 78 */	lhz r0, 0x78(r1)
/* 80258F60 00255EC0  7F C3 F3 78 */	mr r3, r30
/* 80258F64 00255EC4  38 81 00 7C */	addi r4, r1, 0x7c
/* 80258F68 00255EC8  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 80258F6C 00255ECC  4B DF 36 39 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80258F70 00255ED0  7C 64 1B 78 */	mr r4, r3
/* 80258F74 00255ED4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80258F78 00255ED8  4B E4 D5 D5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80258F7C 00255EDC  83 63 00 04 */	lwz r27, 4(r3)
/* 80258F80 00255EE0  28 1B 00 00 */	cmplwi r27, 0
/* 80258F84 00255EE4  41 82 0D 28 */	beq lbl_80259CAC
/* 80258F88 00255EE8  C0 9B 00 50 */	lfs f4, 0x50(r27)
/* 80258F8C 00255EEC  38 61 01 08 */	addi r3, r1, 0x108
/* 80258F90 00255EF0  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80258F94 00255EF4  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 80258F98 00255EF8  EC 44 08 28 */	fsubs f2, f4, f1
/* 80258F9C 00255EFC  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80258FA0 00255F00  C0 BB 00 60 */	lfs f5, 0x60(r27)
/* 80258FA4 00255F04  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 80258FA8 00255F08  EC 20 08 28 */	fsubs f1, f0, f1
/* 80258FAC 00255F0C  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80258FB0 00255F10  EC 65 18 28 */	fsubs f3, f5, f3
/* 80258FB4 00255F14  D0 81 01 B0 */	stfs f4, 0x1b0(r1)
/* 80258FB8 00255F18  D0 A1 01 B4 */	stfs f5, 0x1b4(r1)
/* 80258FBC 00255F1C  D0 21 01 B8 */	stfs f1, 0x1b8(r1)
/* 80258FC0 00255F20  D0 41 01 BC */	stfs f2, 0x1bc(r1)
/* 80258FC4 00255F24  D0 61 01 C0 */	stfs f3, 0x1c0(r1)
/* 80258FC8 00255F28  48 0B B2 39 */	bl __ct__9CVector2fFff
/* 80258FCC 00255F2C  38 61 01 08 */	addi r3, r1, 0x108
/* 80258FD0 00255F30  48 0B B1 25 */	bl Magnitude__9CVector2fCFv
/* 80258FD4 00255F34  D0 3F 0A B4 */	stfs f1, 0xab4(r31)
/* 80258FD8 00255F38  7F 64 DB 78 */	mr r4, r27
/* 80258FDC 00255F3C  7F C5 F3 78 */	mr r5, r30
/* 80258FE0 00255F40  38 61 00 70 */	addi r3, r1, 0x70
/* 80258FE4 00255F44  C0 9F 0A B0 */	lfs f4, 0xab0(r31)
/* 80258FE8 00255F48  C0 DB 00 60 */	lfs f6, 0x60(r27)
/* 80258FEC 00255F4C  C0 7F 0A A0 */	lfs f3, 0xaa0(r31)
/* 80258FF0 00255F50  C0 5F 0A 90 */	lfs f2, 0xa90(r31)
/* 80258FF4 00255F54  EC 06 20 28 */	fsubs f0, f6, f4
/* 80258FF8 00255F58  C0 BB 00 50 */	lfs f5, 0x50(r27)
/* 80258FFC 00255F5C  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 80259000 00255F60  D0 41 01 94 */	stfs f2, 0x194(r1)
/* 80259004 00255F64  D0 61 01 98 */	stfs f3, 0x198(r1)
/* 80259008 00255F68  D0 81 01 9C */	stfs f4, 0x19c(r1)
/* 8025900C 00255F6C  D0 21 01 A0 */	stfs f1, 0x1a0(r1)
/* 80259010 00255F70  D0 A1 01 A4 */	stfs f5, 0x1a4(r1)
/* 80259014 00255F74  D0 C1 01 A8 */	stfs f6, 0x1a8(r1)
/* 80259018 00255F78  D0 1F 0A B8 */	stfs f0, 0xab8(r31)
/* 8025901C 00255F7C  4B E1 E1 19 */	bl NextWaypoint__15CScriptWaypointCFR13CStateManager
/* 80259020 00255F80  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 80259024 00255F84  7F C3 F3 78 */	mr r3, r30
/* 80259028 00255F88  38 81 00 74 */	addi r4, r1, 0x74
/* 8025902C 00255F8C  B0 01 00 74 */	sth r0, 0x74(r1)
/* 80259030 00255F90  4B DF 35 75 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80259034 00255F94  7C 64 1B 78 */	mr r4, r3
/* 80259038 00255F98  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8025903C 00255F9C  4B E4 D5 11 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80259040 00255FA0  83 43 00 04 */	lwz r26, 4(r3)
/* 80259044 00255FA4  28 1A 00 00 */	cmplwi r26, 0
/* 80259048 00255FA8  41 82 0C 64 */	beq lbl_80259CAC
/* 8025904C 00255FAC  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 80259050 00255FB0  38 61 01 00 */	addi r3, r1, 0x100
/* 80259054 00255FB4  C0 3F 0A A0 */	lfs f1, 0xaa0(r31)
/* 80259058 00255FB8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8025905C 00255FBC  EC 44 08 28 */	fsubs f2, f4, f1
/* 80259060 00255FC0  C0 3F 0A 90 */	lfs f1, 0xa90(r31)
/* 80259064 00255FC4  C0 BA 00 60 */	lfs f5, 0x60(r26)
/* 80259068 00255FC8  C0 7F 0A B0 */	lfs f3, 0xab0(r31)
/* 8025906C 00255FCC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80259070 00255FD0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80259074 00255FD4  EC 65 18 28 */	fsubs f3, f5, f3
/* 80259078 00255FD8  D0 81 01 80 */	stfs f4, 0x180(r1)
/* 8025907C 00255FDC  D0 A1 01 84 */	stfs f5, 0x184(r1)
/* 80259080 00255FE0  D0 21 01 88 */	stfs f1, 0x188(r1)
/* 80259084 00255FE4  D0 41 01 8C */	stfs f2, 0x18c(r1)
/* 80259088 00255FE8  D0 61 01 90 */	stfs f3, 0x190(r1)
/* 8025908C 00255FEC  48 0B B1 75 */	bl __ct__9CVector2fFff
/* 80259090 00255FF0  38 61 01 00 */	addi r3, r1, 0x100
/* 80259094 00255FF4  48 0B B0 61 */	bl Magnitude__9CVector2fCFv
/* 80259098 00255FF8  D0 3F 0A BC */	stfs f1, 0xabc(r31)
/* 8025909C 00255FFC  38 61 02 78 */	addi r3, r1, 0x278
/* 802590A0 00256000  C0 C2 B9 18 */	lfs f6, lbl_805AD638@sda21(r2)
/* 802590A4 00256004  38 81 01 58 */	addi r4, r1, 0x158
/* 802590A8 00256008  C1 7F 0A B0 */	lfs f11, 0xab0(r31)
/* 802590AC 0025600C  38 A1 01 40 */	addi r5, r1, 0x140
/* 802590B0 00256010  C3 FA 00 60 */	lfs f31, 0x60(r26)
/* 802590B4 00256014  C1 5F 0A A0 */	lfs f10, 0xaa0(r31)
/* 802590B8 00256018  C0 5F 0A 90 */	lfs f2, 0xa90(r31)
/* 802590BC 0025601C  EC 1F 58 28 */	fsubs f0, f31, f11
/* 802590C0 00256020  C1 BA 00 50 */	lfs f13, 0x50(r26)
/* 802590C4 00256024  C1 3A 00 40 */	lfs f9, 0x40(r26)
/* 802590C8 00256028  C0 82 B9 34 */	lfs f4, lbl_805AD654@sda21(r2)
/* 802590CC 0025602C  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 802590D0 00256030  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 802590D4 00256034  C0 3F 0A B0 */	lfs f1, 0xab0(r31)
/* 802590D8 00256038  C1 9F 0A A0 */	lfs f12, 0xaa0(r31)
/* 802590DC 0025603C  C3 DF 0A BC */	lfs f30, 0xabc(r31)
/* 802590E0 00256040  EC A1 30 2A */	fadds f5, f1, f6
/* 802590E4 00256044  C0 7F 0A 90 */	lfs f3, 0xa90(r31)
/* 802590E8 00256048  EC 21 30 28 */	fsubs f1, f1, f6
/* 802590EC 0025604C  EC EC F0 2A */	fadds f7, f12, f30
/* 802590F0 00256050  D0 41 01 64 */	stfs f2, 0x164(r1)
/* 802590F4 00256054  ED 03 F0 2A */	fadds f8, f3, f30
/* 802590F8 00256058  EC 63 F0 28 */	fsubs f3, f3, f30
/* 802590FC 0025605C  D1 41 01 68 */	stfs f10, 0x168(r1)
/* 80259100 00256060  EC 4C F0 28 */	fsubs f2, f12, f30
/* 80259104 00256064  ED 87 30 2A */	fadds f12, f7, f6
/* 80259108 00256068  D1 61 01 6C */	stfs f11, 0x16c(r1)
/* 8025910C 0025606C  ED 65 20 2A */	fadds f11, f5, f4
/* 80259110 00256070  EC 88 30 2A */	fadds f4, f8, f6
/* 80259114 00256074  D1 21 01 70 */	stfs f9, 0x170(r1)
/* 80259118 00256078  ED 42 30 28 */	fsubs f10, f2, f6
/* 8025911C 0025607C  ED 21 00 28 */	fsubs f9, f1, f0
/* 80259120 00256080  D1 A1 01 74 */	stfs f13, 0x174(r1)
/* 80259124 00256084  EC 03 30 28 */	fsubs f0, f3, f6
/* 80259128 00256088  D3 E1 01 78 */	stfs f31, 0x178(r1)
/* 8025912C 0025608C  D1 01 01 34 */	stfs f8, 0x134(r1)
/* 80259130 00256090  D0 E1 01 38 */	stfs f7, 0x138(r1)
/* 80259134 00256094  D0 A1 01 3C */	stfs f5, 0x13c(r1)
/* 80259138 00256098  D0 81 01 40 */	stfs f4, 0x140(r1)
/* 8025913C 0025609C  D1 81 01 44 */	stfs f12, 0x144(r1)
/* 80259140 002560A0  D1 61 01 48 */	stfs f11, 0x148(r1)
/* 80259144 002560A4  D0 61 01 4C */	stfs f3, 0x14c(r1)
/* 80259148 002560A8  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 8025914C 002560AC  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 80259150 002560B0  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 80259154 002560B4  D1 41 01 5C */	stfs f10, 0x15c(r1)
/* 80259158 002560B8  D1 21 01 60 */	stfs f9, 0x160(r1)
/* 8025915C 002560BC  48 0D F3 AD */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80259160 002560C0  80 61 02 78 */	lwz r3, 0x278(r1)
/* 80259164 002560C4  80 01 02 7C */	lwz r0, 0x27c(r1)
/* 80259168 002560C8  90 7F 0A C4 */	stw r3, 0xac4(r31)
/* 8025916C 002560CC  90 1F 0A C8 */	stw r0, 0xac8(r31)
/* 80259170 002560D0  80 01 02 80 */	lwz r0, 0x280(r1)
/* 80259174 002560D4  90 1F 0A CC */	stw r0, 0xacc(r31)
/* 80259178 002560D8  80 61 02 84 */	lwz r3, 0x284(r1)
/* 8025917C 002560DC  80 01 02 88 */	lwz r0, 0x288(r1)
/* 80259180 002560E0  90 7F 0A D0 */	stw r3, 0xad0(r31)
/* 80259184 002560E4  90 1F 0A D4 */	stw r0, 0xad4(r31)
/* 80259188 002560E8  80 01 02 8C */	lwz r0, 0x28c(r1)
/* 8025918C 002560EC  90 1F 0A D8 */	stw r0, 0xad8(r31)
/* 80259190 002560F0  48 00 0B 1C */	b lbl_80259CAC
.global lbl_80259194
lbl_80259194:
/* 80259194 002560F4  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80259198 002560F8  7F C3 F3 78 */	mr r3, r30
/* 8025919C 002560FC  38 81 00 6C */	addi r4, r1, 0x6c
/* 802591A0 00256100  B0 01 00 6C */	sth r0, 0x6c(r1)
/* 802591A4 00256104  4B DF 33 D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802591A8 00256108  7C 64 1B 78 */	mr r4, r3
/* 802591AC 0025610C  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802591B0 00256110  4B E5 61 9D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802591B4 00256114  83 A3 00 04 */	lwz r29, 4(r3)
/* 802591B8 00256118  28 1D 00 00 */	cmplwi r29, 0
/* 802591BC 0025611C  41 82 0A F0 */	beq lbl_80259CAC
/* 802591C0 00256120  7F A3 EB 78 */	mr r3, r29
/* 802591C4 00256124  7F C4 F3 78 */	mr r4, r30
/* 802591C8 00256128  81 9D 00 00 */	lwz r12, 0(r29)
/* 802591CC 0025612C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802591D0 00256130  7D 89 03 A6 */	mtctr r12
/* 802591D4 00256134  4E 80 04 21 */	bctrl
/* 802591D8 00256138  C0 03 00 00 */	lfs f0, 0(r3)
/* 802591DC 0025613C  7F A3 EB 78 */	mr r3, r29
/* 802591E0 00256140  81 9D 00 00 */	lwz r12, 0(r29)
/* 802591E4 00256144  7F C4 F3 78 */	mr r4, r30
/* 802591E8 00256148  C0 22 B9 9C */	lfs f1, lbl_805AD6BC@sda21(r2)
/* 802591EC 0025614C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802591F0 00256150  EF E1 00 28 */	fsubs f31, f1, f0
/* 802591F4 00256154  7D 89 03 A6 */	mtctr r12
/* 802591F8 00256158  4E 80 04 21 */	bctrl
/* 802591FC 0025615C  C0 02 B9 9C */	lfs f0, lbl_805AD6BC@sda21(r2)
/* 80259200 00256160  3B 60 00 00 */	li r27, 0
/* 80259204 00256164  D0 03 00 00 */	stfs f0, 0(r3)
/* 80259208 00256168  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 8025920C 0025616C  2C 00 00 03 */	cmpwi r0, 3
/* 80259210 00256170  41 82 02 6C */	beq lbl_8025947C
/* 80259214 00256174  40 80 06 14 */	bge lbl_80259828
/* 80259218 00256178  2C 00 00 02 */	cmpwi r0, 2
/* 8025921C 0025617C  40 80 00 08 */	bge lbl_80259224
/* 80259220 00256180  48 00 06 08 */	b lbl_80259828
lbl_80259224:
/* 80259224 00256184  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259228 00256188  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8025922C 0025618C  41 82 00 0C */	beq lbl_80259238
/* 80259230 00256190  3B 60 00 01 */	li r27, 1
/* 80259234 00256194  48 00 05 F4 */	b lbl_80259828
lbl_80259238:
/* 80259238 00256198  C0 1F 0B 10 */	lfs f0, 0xb10(r31)
/* 8025923C 0025619C  3B 40 00 00 */	li r26, 0
/* 80259240 002561A0  C0 22 88 F0 */	lfs f1, lbl_805AA610@sda21(r2)
/* 80259244 002561A4  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80259248 002561A8  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025924C 002561AC  D0 5F 0B 10 */	stfs f2, 0xb10(r31)
/* 80259250 002561B0  D0 3F 0B 24 */	stfs f1, 0xb24(r31)
/* 80259254 002561B4  80 0D A2 50 */	lwz r0, lbl_805A8E10@sda21(r13)
/* 80259258 002561B8  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8025925C 002561BC  C0 3F 0B 10 */	lfs f1, 0xb10(r31)
/* 80259260 002561C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80259264 002561C4  4C 40 13 82 */	cror 2, 0, 2
/* 80259268 002561C8  40 82 00 9C */	bne lbl_80259304
/* 8025926C 002561CC  38 00 00 03 */	li r0, 3
/* 80259270 002561D0  38 A0 00 00 */	li r5, 0
/* 80259274 002561D4  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 80259278 002561D8  7F E3 FB 78 */	mr r3, r31
/* 8025927C 002561DC  7F C4 F3 78 */	mr r4, r30
/* 80259280 002561E0  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259284 002561E4  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80259288 002561E8  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 8025928C 002561EC  4B FF E3 C5 */	bl sub_80257650
/* 80259290 002561F0  C0 22 B9 3C */	lfs f1, lbl_805AD65C@sda21(r2)
/* 80259294 002561F4  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80259298 002561F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8025929C 002561FC  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
/* 802592A0 00256200  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802592A4 00256204  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 802592A8 00256208  2C 00 00 03 */	cmpwi r0, 3
/* 802592AC 0025620C  41 82 00 38 */	beq lbl_802592E4
/* 802592B0 00256210  3C 60 80 47 */	lis r3, lbl_8046D4F8@ha
/* 802592B4 00256214  3B 80 00 00 */	li r28, 0
/* 802592B8 00256218  3B 43 D4 F8 */	addi r26, r3, lbl_8046D4F8@l
lbl_802592BC:
/* 802592BC 0025621C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802592C0 00256220  7F 44 D3 78 */	mr r4, r26
/* 802592C4 00256224  7F C6 F3 78 */	mr r6, r30
/* 802592C8 00256228  38 A0 00 01 */	li r5, 1
/* 802592CC 0025622C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802592D0 00256230  4B DD 1A F1 */	bl SetParticleEffectState__9CAnimDataFQ24rstl6stringbR13CStateManager
/* 802592D4 00256234  3B 9C 00 01 */	addi r28, r28, 1
/* 802592D8 00256238  3B 5A 00 10 */	addi r26, r26, 0x10
/* 802592DC 0025623C  28 1C 00 18 */	cmplwi r28, 0x18
/* 802592E0 00256240  41 80 FF DC */	blt lbl_802592BC
lbl_802592E4:
/* 802592E4 00256244  C0 42 B9 24 */	lfs f2, lbl_805AD644@sda21(r2)
/* 802592E8 00256248  3B 40 00 01 */	li r26, 1
/* 802592EC 0025624C  C0 22 88 F0 */	lfs f1, lbl_805AA610@sda21(r2)
/* 802592F0 00256250  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802592F4 00256254  EC 22 00 72 */	fmuls f1, f2, f1
/* 802592F8 00256258  D0 3F 0C C8 */	stfs f1, 0xcc8(r31)
/* 802592FC 0025625C  D0 1F 0B 10 */	stfs f0, 0xb10(r31)
/* 80259300 00256260  48 00 01 60 */	b lbl_80259460
lbl_80259304:
/* 80259304 00256264  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 80259308 00256268  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8025930C 0025626C  40 80 00 98 */	bge lbl_802593A4
/* 80259310 00256270  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259314 00256274  38 60 00 01 */	li r3, 1
/* 80259318 00256278  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8025931C 0025627C  3B 60 00 01 */	li r27, 1
/* 80259320 00256280  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259324 00256284  38 00 00 04 */	li r0, 4
/* 80259328 00256288  80 7F 0C B0 */	lwz r3, 0xcb0(r31)
/* 8025932C 0025628C  38 63 00 01 */	addi r3, r3, 1
/* 80259330 00256290  90 7F 0C B0 */	stw r3, 0xcb0(r31)
/* 80259334 00256294  80 7F 0C B0 */	lwz r3, 0xcb0(r31)
/* 80259338 00256298  2C 03 00 05 */	cmpwi r3, 5
/* 8025933C 0025629C  40 80 00 08 */	bge lbl_80259344
/* 80259340 002562A0  7C 60 1B 78 */	mr r0, r3
lbl_80259344:
/* 80259344 002562A4  90 1F 0C B0 */	stw r0, 0xcb0(r31)
/* 80259348 002562A8  3C 60 43 30 */	lis r3, 0x4330
/* 8025934C 002562AC  C8 82 B9 C0 */	lfd f4, lbl_805AD6E0@sda21(r2)
/* 80259350 002562B0  38 00 00 00 */	li r0, 0
/* 80259354 002562B4  80 9F 0C B0 */	lwz r4, 0xcb0(r31)
/* 80259358 002562B8  3B 40 00 01 */	li r26, 1
/* 8025935C 002562BC  90 61 03 10 */	stw r3, 0x310(r1)
/* 80259360 002562C0  38 64 00 01 */	addi r3, r4, 1
/* 80259364 002562C4  C0 A2 B9 84 */	lfs f5, lbl_805AD6A4@sda21(r2)
/* 80259368 002562C8  20 63 00 05 */	subfic r3, r3, 5
/* 8025936C 002562CC  C0 5F 0C B8 */	lfs f2, 0xcb8(r31)
/* 80259370 002562D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80259374 002562D4  C0 22 B9 24 */	lfs f1, lbl_805AD644@sda21(r2)
/* 80259378 002562D8  90 61 03 14 */	stw r3, 0x314(r1)
/* 8025937C 002562DC  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 80259380 002562E0  C8 61 03 10 */	lfd f3, 0x310(r1)
/* 80259384 002562E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80259388 002562E8  EC 23 20 28 */	fsubs f1, f3, f4
/* 8025938C 002562EC  EC 25 00 72 */	fmuls f1, f5, f1
/* 80259390 002562F0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80259394 002562F4  D0 3F 0C BC */	stfs f1, 0xcbc(r31)
/* 80259398 002562F8  90 1F 0C B4 */	stw r0, 0xcb4(r31)
/* 8025939C 002562FC  D0 1F 0C C8 */	stfs f0, 0xcc8(r31)
/* 802593A0 00256300  48 00 00 C0 */	b lbl_80259460
lbl_802593A4:
/* 802593A4 00256304  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 802593A8 00256308  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 802593AC 0025630C  41 82 00 B4 */	beq lbl_80259460
/* 802593B0 00256310  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 802593B4 00256314  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802593B8 00256318  40 82 00 A8 */	bne lbl_80259460
/* 802593BC 0025631C  C0 1F 09 5C */	lfs f0, 0x95c(r31)
/* 802593C0 00256320  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802593C4 00256324  40 81 00 9C */	ble lbl_80259460
/* 802593C8 00256328  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802593CC 0025632C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 802593D0 00256330  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 802593D4 00256334  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 802593D8 00256338  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 802593DC 0025633C  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 802593E0 00256340  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802593E4 00256344  38 C0 00 04 */	li r6, 4
/* 802593E8 00256348  38 00 00 00 */	li r0, 0
/* 802593EC 0025634C  90 A1 02 60 */	stw r5, 0x260(r1)
/* 802593F0 00256350  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 802593F4 00256354  3B 83 00 04 */	addi r28, r3, 4
/* 802593F8 00256358  90 C1 02 64 */	stw r6, 0x264(r1)
/* 802593FC 0025635C  7F 83 E3 78 */	mr r3, r28
/* 80259400 00256360  3B 60 00 01 */	li r27, 1
/* 80259404 00256364  38 80 00 04 */	li r4, 4
/* 80259408 00256368  90 A1 02 60 */	stw r5, 0x260(r1)
/* 8025940C 0025636C  D0 01 02 68 */	stfs f0, 0x268(r1)
/* 80259410 00256370  D0 21 02 6C */	stfs f1, 0x26c(r1)
/* 80259414 00256374  D0 41 02 70 */	stfs f2, 0x270(r1)
/* 80259418 00256378  90 01 02 74 */	stw r0, 0x274(r1)
/* 8025941C 0025637C  4B ED 80 1D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80259420 00256380  80 01 02 64 */	lwz r0, 0x264(r1)
/* 80259424 00256384  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 80259428 00256388  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 8025942C 0025638C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80259430 00256390  90 1C 00 F8 */	stw r0, 0xf8(r28)
/* 80259434 00256394  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80259438 00256398  80 A1 02 68 */	lwz r5, 0x268(r1)
/* 8025943C 0025639C  80 61 02 6C */	lwz r3, 0x26c(r1)
/* 80259440 002563A0  90 BC 00 FC */	stw r5, 0xfc(r28)
/* 80259444 002563A4  80 A1 02 70 */	lwz r5, 0x270(r1)
/* 80259448 002563A8  90 7C 01 00 */	stw r3, 0x100(r28)
/* 8025944C 002563AC  80 61 02 74 */	lwz r3, 0x274(r1)
/* 80259450 002563B0  90 BC 01 04 */	stw r5, 0x104(r28)
/* 80259454 002563B4  90 81 02 60 */	stw r4, 0x260(r1)
/* 80259458 002563B8  90 7C 01 08 */	stw r3, 0x108(r28)
/* 8025945C 002563BC  90 01 02 60 */	stw r0, 0x260(r1)
lbl_80259460:
/* 80259460 002563C0  C0 22 B9 24 */	lfs f1, lbl_805AD644@sda21(r2)
/* 80259464 002563C4  7F E3 FB 78 */	mr r3, r31
/* 80259468 002563C8  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 8025946C 002563CC  57 44 06 3E */	clrlwi r4, r26, 0x18
/* 80259470 002563D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80259474 002563D4  4B FF D4 A1 */	bl sub_80256914
/* 80259478 002563D8  48 00 03 B0 */	b lbl_80259828
lbl_8025947C:
/* 8025947C 002563DC  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259480 002563E0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80259484 002563E4  41 82 00 8C */	beq lbl_80259510
/* 80259488 002563E8  7F E4 FB 78 */	mr r4, r31
/* 8025948C 002563EC  38 61 02 AC */	addi r3, r1, 0x2ac
/* 80259490 002563F0  38 BF 0B 90 */	addi r5, r31, 0xb90
/* 80259494 002563F4  4B E1 F4 25 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80259498 002563F8  38 61 02 DC */	addi r3, r1, 0x2dc
/* 8025949C 002563FC  38 81 02 AC */	addi r4, r1, 0x2ac
/* 802594A0 00256400  48 0B 96 D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802594A4 00256404  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 802594A8 00256408  C0 01 02 F8 */	lfs f0, 0x2f8(r1)
/* 802594AC 0025640C  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 802594B0 00256410  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 802594B4 00256414  EC A7 00 28 */	fsubs f5, f7, f0
/* 802594B8 00256418  C0 01 02 F0 */	lfs f0, 0x2f0(r1)
/* 802594BC 0025641C  C0 21 02 E8 */	lfs f1, 0x2e8(r1)
/* 802594C0 00256420  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 802594C4 00256424  EC 43 08 28 */	fsubs f2, f3, f1
/* 802594C8 00256428  C0 81 03 08 */	lfs f4, 0x308(r1)
/* 802594CC 0025642C  EC 05 00 32 */	fmuls f0, f5, f0
/* 802594D0 00256430  C0 21 02 E0 */	lfs f1, 0x2e0(r1)
/* 802594D4 00256434  EC 88 20 28 */	fsubs f4, f8, f4
/* 802594D8 00256438  C0 C1 03 00 */	lfs f6, 0x300(r1)
/* 802594DC 0025643C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 802594E0 00256440  C0 02 B9 38 */	lfs f0, lbl_805AD658@sda21(r2)
/* 802594E4 00256444  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 802594E8 00256448  EC 24 09 BA */	fmadds f1, f4, f6, f1
/* 802594EC 0025644C  D0 E1 01 20 */	stfs f7, 0x120(r1)
/* 802594F0 00256450  D1 01 01 24 */	stfs f8, 0x124(r1)
/* 802594F4 00256454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802594F8 00256458  D0 41 01 28 */	stfs f2, 0x128(r1)
/* 802594FC 0025645C  D0 A1 01 2C */	stfs f5, 0x12c(r1)
/* 80259500 00256460  D0 81 01 30 */	stfs f4, 0x130(r1)
/* 80259504 00256464  40 80 00 0C */	bge lbl_80259510
/* 80259508 00256468  3B 60 00 01 */	li r27, 1
/* 8025950C 0025646C  48 00 03 1C */	b lbl_80259828
lbl_80259510:
/* 80259510 00256470  81 9F 00 00 */	lwz r12, 0(r31)
/* 80259514 00256474  3C 80 80 5A */	lis r4, lbl_805A6724@ha
/* 80259518 00256478  7F E3 FB 78 */	mr r3, r31
/* 8025951C 0025647C  C0 22 B9 28 */	lfs f1, lbl_805AD648@sda21(r2)
/* 80259520 00256480  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 80259524 00256484  38 84 67 24 */	addi r4, r4, lbl_805A6724@l
/* 80259528 00256488  7D 89 03 A6 */	mtctr r12
/* 8025952C 0025648C  4E 80 04 21 */	bctrl
/* 80259530 00256490  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 80259534 00256494  D0 1F 0B 20 */	stfs f0, 0xb20(r31)
/* 80259538 00256498  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 8025953C 0025649C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80259540 002564A0  41 82 00 C4 */	beq lbl_80259604
/* 80259544 002564A4  7F A4 EB 78 */	mr r4, r29
/* 80259548 002564A8  38 61 00 64 */	addi r3, r1, 0x64
/* 8025954C 002564AC  4B F4 F6 41 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 80259550 002564B0  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 80259554 002564B4  7F C3 F3 78 */	mr r3, r30
/* 80259558 002564B8  38 81 00 68 */	addi r4, r1, 0x68
/* 8025955C 002564BC  B0 01 00 68 */	sth r0, 0x68(r1)
/* 80259560 002564C0  4B DF 30 45 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80259564 002564C4  28 03 00 00 */	cmplwi r3, 0
/* 80259568 002564C8  41 82 00 44 */	beq lbl_802595AC
/* 8025956C 002564CC  7C 64 1B 78 */	mr r4, r3
/* 80259570 002564D0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80259574 002564D4  4B E5 41 99 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80259578 002564D8  80 83 00 04 */	lwz r4, 4(r3)
/* 8025957C 002564DC  28 04 00 00 */	cmplwi r4, 0
/* 80259580 002564E0  41 82 00 2C */	beq lbl_802595AC
/* 80259584 002564E4  88 64 01 30 */	lbz r3, 0x130(r4)
/* 80259588 002564E8  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8025958C 002564EC  40 82 00 18 */	bne lbl_802595A4
/* 80259590 002564F0  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80259594 002564F4  40 82 00 10 */	bne lbl_802595A4
/* 80259598 002564F8  80 04 01 2C */	lwz r0, 0x12c(r4)
/* 8025959C 002564FC  2C 00 00 06 */	cmpwi r0, 6
/* 802595A0 00256500  40 82 00 0C */	bne lbl_802595AC
lbl_802595A4:
/* 802595A4 00256504  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802595A8 00256508  D0 1F 0B 14 */	stfs f0, 0xb14(r31)
lbl_802595AC:
/* 802595AC 0025650C  C0 3F 0B 14 */	lfs f1, 0xb14(r31)
/* 802595B0 00256510  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802595B4 00256514  EC 21 F8 28 */	fsubs f1, f1, f31
/* 802595B8 00256518  D0 3F 0B 14 */	stfs f1, 0xb14(r31)
/* 802595BC 0025651C  80 0D A2 54 */	lwz r0, lbl_805A8E14@sda21(r13)
/* 802595C0 00256520  90 1F 04 30 */	stw r0, 0x430(r31)
/* 802595C4 00256524  C0 3F 0B 14 */	lfs f1, 0xb14(r31)
/* 802595C8 00256528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802595CC 0025652C  4C 40 13 82 */	cror 2, 0, 2
/* 802595D0 00256530  40 82 02 58 */	bne lbl_80259828
/* 802595D4 00256534  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 802595D8 00256538  38 60 00 00 */	li r3, 0
/* 802595DC 0025653C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802595E0 00256540  38 60 00 01 */	li r3, 1
/* 802595E4 00256544  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 802595E8 00256548  3B 60 00 01 */	li r27, 1
/* 802595EC 0025654C  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 802595F0 00256550  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802595F4 00256554  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 802595F8 00256558  C0 1F 05 A0 */	lfs f0, 0x5a0(r31)
/* 802595FC 0025655C  D0 1F 0B 14 */	stfs f0, 0xb14(r31)
/* 80259600 00256560  48 00 02 28 */	b lbl_80259828
lbl_80259604:
/* 80259604 00256564  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259608 00256568  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8025960C 0025656C  41 82 02 1C */	beq lbl_80259828
/* 80259610 00256570  80 0D A2 50 */	lwz r0, lbl_805A8E10@sda21(r13)
/* 80259614 00256574  C0 42 B9 18 */	lfs f2, lbl_805AD638@sda21(r2)
/* 80259618 00256578  90 1F 04 30 */	stw r0, 0x430(r31)
/* 8025961C 0025657C  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80259620 00256580  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80259624 00256584  40 81 01 04 */	ble lbl_80259728
/* 80259628 00256588  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8025962C 0025658C  D0 1F 0B 18 */	stfs f0, 0xb18(r31)
/* 80259630 00256590  C0 3F 0B 18 */	lfs f1, 0xb18(r31)
/* 80259634 00256594  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80259638 00256598  4C 40 13 82 */	cror 2, 0, 2
/* 8025963C 0025659C  40 82 00 30 */	bne lbl_8025966C
/* 80259640 002565A0  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259644 002565A4  38 60 00 01 */	li r3, 1
/* 80259648 002565A8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8025964C 002565AC  C0 22 B9 3C */	lfs f1, lbl_805AD65C@sda21(r2)
/* 80259650 002565B0  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259654 002565B4  3B 60 00 01 */	li r27, 1
/* 80259658 002565B8  D0 5F 0B 18 */	stfs f2, 0xb18(r31)
/* 8025965C 002565BC  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80259660 002565C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80259664 002565C4  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
/* 80259668 002565C8  48 00 01 C0 */	b lbl_80259828
lbl_8025966C:
/* 8025966C 002565CC  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 80259670 002565D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80259674 002565D4  40 80 01 B4 */	bge lbl_80259828
/* 80259678 002565D8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8025967C 002565DC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80259680 002565E0  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 80259684 002565E4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80259688 002565E8  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8025968C 002565EC  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 80259690 002565F0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80259694 002565F4  38 C0 00 04 */	li r6, 4
/* 80259698 002565F8  38 00 00 06 */	li r0, 6
/* 8025969C 002565FC  90 A1 02 48 */	stw r5, 0x248(r1)
/* 802596A0 00256600  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 802596A4 00256604  3B 43 00 04 */	addi r26, r3, 4
/* 802596A8 00256608  90 C1 02 4C */	stw r6, 0x24c(r1)
/* 802596AC 0025660C  7F 43 D3 78 */	mr r3, r26
/* 802596B0 00256610  3B 60 00 01 */	li r27, 1
/* 802596B4 00256614  38 80 00 04 */	li r4, 4
/* 802596B8 00256618  90 A1 02 48 */	stw r5, 0x248(r1)
/* 802596BC 0025661C  D0 01 02 50 */	stfs f0, 0x250(r1)
/* 802596C0 00256620  D0 21 02 54 */	stfs f1, 0x254(r1)
/* 802596C4 00256624  D0 41 02 58 */	stfs f2, 0x258(r1)
/* 802596C8 00256628  90 01 02 5C */	stw r0, 0x25c(r1)
/* 802596CC 0025662C  4B ED 7D 6D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 802596D0 00256630  80 01 02 4C */	lwz r0, 0x24c(r1)
/* 802596D4 00256634  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 802596D8 00256638  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 802596DC 0025663C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802596E0 00256640  90 1A 00 F8 */	stw r0, 0xf8(r26)
/* 802596E4 00256644  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802596E8 00256648  80 A1 02 50 */	lwz r5, 0x250(r1)
/* 802596EC 0025664C  80 61 02 54 */	lwz r3, 0x254(r1)
/* 802596F0 00256650  90 BA 00 FC */	stw r5, 0xfc(r26)
/* 802596F4 00256654  80 A1 02 58 */	lwz r5, 0x258(r1)
/* 802596F8 00256658  90 7A 01 00 */	stw r3, 0x100(r26)
/* 802596FC 0025665C  80 61 02 5C */	lwz r3, 0x25c(r1)
/* 80259700 00256660  90 BA 01 04 */	stw r5, 0x104(r26)
/* 80259704 00256664  C0 42 B9 BC */	lfs f2, lbl_805AD6DC@sda21(r2)
/* 80259708 00256668  90 7A 01 08 */	stw r3, 0x108(r26)
/* 8025970C 0025666C  C0 3F 05 A4 */	lfs f1, 0x5a4(r31)
/* 80259710 00256670  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 80259714 00256674  90 81 02 48 */	stw r4, 0x248(r1)
/* 80259718 00256678  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 8025971C 0025667C  90 01 02 48 */	stw r0, 0x248(r1)
/* 80259720 00256680  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
/* 80259724 00256684  48 00 01 04 */	b lbl_80259828
lbl_80259728:
/* 80259728 00256688  C0 1F 0B 1C */	lfs f0, 0xb1c(r31)
/* 8025972C 0025668C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80259730 00256690  D0 1F 0B 1C */	stfs f0, 0xb1c(r31)
/* 80259734 00256694  C0 3F 0B 1C */	lfs f1, 0xb1c(r31)
/* 80259738 00256698  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8025973C 0025669C  4C 40 13 82 */	cror 2, 0, 2
/* 80259740 002566A0  40 82 00 30 */	bne lbl_80259770
/* 80259744 002566A4  88 1F 04 01 */	lbz r0, 0x401(r31)
/* 80259748 002566A8  38 60 00 01 */	li r3, 1
/* 8025974C 002566AC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80259750 002566B0  38 80 00 00 */	li r4, 0
/* 80259754 002566B4  98 1F 04 01 */	stb r0, 0x401(r31)
/* 80259758 002566B8  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 8025975C 002566BC  88 03 09 C6 */	lbz r0, 0x9c6(r3)
/* 80259760 002566C0  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80259764 002566C4  98 03 09 C6 */	stb r0, 0x9c6(r3)
/* 80259768 002566C8  D0 5F 0B 1C */	stfs f2, 0xb1c(r31)
/* 8025976C 002566CC  48 00 00 BC */	b lbl_80259828
lbl_80259770:
/* 80259770 002566D0  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 80259774 002566D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80259778 002566D8  40 80 00 B0 */	bge lbl_80259828
/* 8025977C 002566DC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80259780 002566E0  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80259784 002566E4  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 80259788 002566E8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8025978C 002566EC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80259790 002566F0  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 80259794 002566F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80259798 002566F8  38 C0 00 04 */	li r6, 4
/* 8025979C 002566FC  38 00 00 06 */	li r0, 6
/* 802597A0 00256700  90 A1 02 30 */	stw r5, 0x230(r1)
/* 802597A4 00256704  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 802597A8 00256708  3B 43 00 04 */	addi r26, r3, 4
/* 802597AC 0025670C  90 C1 02 34 */	stw r6, 0x234(r1)
/* 802597B0 00256710  7F 43 D3 78 */	mr r3, r26
/* 802597B4 00256714  3B 60 00 01 */	li r27, 1
/* 802597B8 00256718  38 80 00 04 */	li r4, 4
/* 802597BC 0025671C  90 A1 02 30 */	stw r5, 0x230(r1)
/* 802597C0 00256720  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 802597C4 00256724  D0 21 02 3C */	stfs f1, 0x23c(r1)
/* 802597C8 00256728  D0 41 02 40 */	stfs f2, 0x240(r1)
/* 802597CC 0025672C  90 01 02 44 */	stw r0, 0x244(r1)
/* 802597D0 00256730  4B ED 7C 69 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 802597D4 00256734  80 01 02 34 */	lwz r0, 0x234(r1)
/* 802597D8 00256738  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 802597DC 0025673C  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 802597E0 00256740  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802597E4 00256744  90 1A 00 F8 */	stw r0, 0xf8(r26)
/* 802597E8 00256748  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802597EC 0025674C  80 A1 02 38 */	lwz r5, 0x238(r1)
/* 802597F0 00256750  80 61 02 3C */	lwz r3, 0x23c(r1)
/* 802597F4 00256754  90 BA 00 FC */	stw r5, 0xfc(r26)
/* 802597F8 00256758  80 A1 02 40 */	lwz r5, 0x240(r1)
/* 802597FC 0025675C  90 7A 01 00 */	stw r3, 0x100(r26)
/* 80259800 00256760  80 61 02 44 */	lwz r3, 0x244(r1)
/* 80259804 00256764  90 BA 01 04 */	stw r5, 0x104(r26)
/* 80259808 00256768  C0 42 B9 BC */	lfs f2, lbl_805AD6DC@sda21(r2)
/* 8025980C 0025676C  90 7A 01 08 */	stw r3, 0x108(r26)
/* 80259810 00256770  C0 3F 05 A8 */	lfs f1, 0x5a8(r31)
/* 80259814 00256774  C0 1F 0C BC */	lfs f0, 0xcbc(r31)
/* 80259818 00256778  90 81 02 30 */	stw r4, 0x230(r1)
/* 8025981C 0025677C  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 80259820 00256780  90 01 02 30 */	stw r0, 0x230(r1)
/* 80259824 00256784  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
lbl_80259828:
/* 80259828 00256788  C0 3F 0B 10 */	lfs f1, 0xb10(r31)
/* 8025982C 0025678C  7F E3 FB 78 */	mr r3, r31
/* 80259830 00256790  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80259834 00256794  7F C4 F3 78 */	mr r4, r30
/* 80259838 00256798  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025983C 0025679C  EC 01 00 2A */	fadds f0, f1, f0
/* 80259840 002567A0  C0 3F 0B 1C */	lfs f1, 0xb1c(r31)
/* 80259844 002567A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80259848 002567A8  EF E1 00 2A */	fadds f31, f1, f0
/* 8025984C 002567AC  7D 89 03 A6 */	mtctr r12
/* 80259850 002567B0  4E 80 04 21 */	bctrl
/* 80259854 002567B4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80259858 002567B8  D3 E3 00 00 */	stfs f31, 0(r3)
/* 8025985C 002567BC  40 82 04 50 */	bne lbl_80259CAC
/* 80259860 002567C0  7F A4 EB 78 */	mr r4, r29
/* 80259864 002567C4  38 61 00 60 */	addi r3, r1, 0x60
/* 80259868 002567C8  4B F4 F3 25 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8025986C 002567CC  A0 01 00 60 */	lhz r0, 0x60(r1)
/* 80259870 002567D0  7F C3 F3 78 */	mr r3, r30
/* 80259874 002567D4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80259878 002567D8  B0 01 00 A0 */	sth r0, 0xa0(r1)
/* 8025987C 002567DC  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 80259880 002567E0  4B DF 2D 25 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80259884 002567E4  7C 64 1B 78 */	mr r4, r3
/* 80259888 002567E8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8025988C 002567EC  4B E5 3E 81 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80259890 002567F0  80 E3 00 04 */	lwz r7, 4(r3)
/* 80259894 002567F4  28 07 00 00 */	cmplwi r7, 0
/* 80259898 002567F8  41 82 04 14 */	beq lbl_80259CAC
/* 8025989C 002567FC  C0 47 00 50 */	lfs f2, 0x50(r7)
/* 802598A0 00256800  7F E3 FB 78 */	mr r3, r31
/* 802598A4 00256804  C0 27 02 9C */	lfs f1, 0x29c(r7)
/* 802598A8 00256808  7F C5 F3 78 */	mr r5, r30
/* 802598AC 0025680C  C0 67 00 60 */	lfs f3, 0x60(r7)
/* 802598B0 00256810  38 81 01 10 */	addi r4, r1, 0x110
/* 802598B4 00256814  EC 82 08 28 */	fsubs f4, f2, f1
/* 802598B8 00256818  C0 07 02 A0 */	lfs f0, 0x2a0(r7)
/* 802598BC 0025681C  C0 47 00 40 */	lfs f2, 0x40(r7)
/* 802598C0 00256820  38 C7 01 2C */	addi r6, r7, 0x12c
/* 802598C4 00256824  EC 63 00 28 */	fsubs f3, f3, f0
/* 802598C8 00256828  C0 07 02 98 */	lfs f0, 0x298(r7)
/* 802598CC 0025682C  C0 27 01 40 */	lfs f1, 0x140(r7)
/* 802598D0 00256830  EC 02 00 28 */	fsubs f0, f2, f0
/* 802598D4 00256834  38 E0 00 01 */	li r7, 1
/* 802598D8 00256838  39 00 00 00 */	li r8, 0
/* 802598DC 0025683C  D0 81 01 14 */	stfs f4, 0x114(r1)
/* 802598E0 00256840  D0 61 01 18 */	stfs f3, 0x118(r1)
/* 802598E4 00256844  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 802598E8 00256848  81 9F 00 00 */	lwz r12, 0(r31)
/* 802598EC 0025684C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 802598F0 00256850  7D 89 03 A6 */	mtctr r12
/* 802598F4 00256854  4E 80 04 21 */	bctrl
/* 802598F8 00256858  48 00 03 B4 */	b lbl_80259CAC
.global lbl_802598FC
lbl_802598FC:
/* 802598FC 0025685C  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80259900 00256860  7F C3 F3 78 */	mr r3, r30
/* 80259904 00256864  38 81 00 58 */	addi r4, r1, 0x58
/* 80259908 00256868  B0 01 00 58 */	sth r0, 0x58(r1)
/* 8025990C 0025686C  4B DF 2C 99 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80259910 00256870  7C 64 1B 78 */	mr r4, r3
/* 80259914 00256874  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80259918 00256878  4B E5 3D F5 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8025991C 0025687C  83 83 00 04 */	lwz r28, 4(r3)
/* 80259920 00256880  28 1C 00 00 */	cmplwi r28, 0
/* 80259924 00256884  41 82 03 88 */	beq lbl_80259CAC
/* 80259928 00256888  80 1F 0C 64 */	lwz r0, 0xc64(r31)
/* 8025992C 0025688C  38 80 00 00 */	li r4, 0
/* 80259930 00256890  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 80259934 00256894  2C 00 00 03 */	cmpwi r0, 3
/* 80259938 00256898  B0 61 00 9C */	sth r3, 0x9c(r1)
/* 8025993C 0025689C  41 82 00 30 */	beq lbl_8025996C
/* 80259940 002568A0  40 80 00 60 */	bge lbl_802599A0
/* 80259944 002568A4  2C 00 00 02 */	cmpwi r0, 2
/* 80259948 002568A8  40 80 00 08 */	bge lbl_80259950
/* 8025994C 002568AC  48 00 00 54 */	b lbl_802599A0
lbl_80259950:
/* 80259950 002568B0  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259954 002568B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80259958 002568B8  40 82 00 48 */	bne lbl_802599A0
/* 8025995C 002568BC  A0 1F 09 8A */	lhz r0, 0x98a(r31)
/* 80259960 002568C0  38 80 00 01 */	li r4, 1
/* 80259964 002568C4  B0 01 00 9C */	sth r0, 0x9c(r1)
/* 80259968 002568C8  48 00 00 38 */	b lbl_802599A0
lbl_8025996C:
/* 8025996C 002568CC  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259970 002568D0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80259974 002568D4  41 82 00 14 */	beq lbl_80259988
/* 80259978 002568D8  A0 1F 09 88 */	lhz r0, 0x988(r31)
/* 8025997C 002568DC  38 80 00 01 */	li r4, 1
/* 80259980 002568E0  B0 01 00 9C */	sth r0, 0x9c(r1)
/* 80259984 002568E4  48 00 00 1C */	b lbl_802599A0
lbl_80259988:
/* 80259988 002568E8  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 8025998C 002568EC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80259990 002568F0  41 82 00 10 */	beq lbl_802599A0
/* 80259994 002568F4  A0 1F 09 8A */	lhz r0, 0x98a(r31)
/* 80259998 002568F8  38 80 00 01 */	li r4, 1
/* 8025999C 002568FC  B0 01 00 9C */	sth r0, 0x9c(r1)
lbl_802599A0:
/* 802599A0 00256900  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802599A4 00256904  41 82 03 08 */	beq lbl_80259CAC
/* 802599A8 00256908  80 1C 01 2C */	lwz r0, 0x12c(r28)
/* 802599AC 0025690C  38 60 00 00 */	li r3, 0
/* 802599B0 00256910  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 802599B4 00256914  38 80 00 01 */	li r4, 1
/* 802599B8 00256918  90 01 02 90 */	stw r0, 0x290(r1)
/* 802599BC 0025691C  80 AD 97 38 */	lwz r5, lbl_805A82F8@sda21(r13)
/* 802599C0 00256920  88 1C 01 30 */	lbz r0, 0x130(r28)
/* 802599C4 00256924  98 01 02 94 */	stb r0, 0x294(r1)
/* 802599C8 00256928  C0 3C 01 34 */	lfs f1, 0x134(r28)
/* 802599CC 0025692C  D0 21 02 98 */	stfs f1, 0x298(r1)
/* 802599D0 00256930  C0 3C 01 38 */	lfs f1, 0x138(r28)
/* 802599D4 00256934  D0 21 02 9C */	stfs f1, 0x29c(r1)
/* 802599D8 00256938  C0 3C 01 3C */	lfs f1, 0x13c(r28)
/* 802599DC 0025693C  D0 21 02 A0 */	stfs f1, 0x2a0(r1)
/* 802599E0 00256940  C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 802599E4 00256944  D0 21 02 A4 */	stfs f1, 0x2a4(r1)
/* 802599E8 00256948  88 1C 01 44 */	lbz r0, 0x144(r28)
/* 802599EC 0025694C  98 01 02 A8 */	stb r0, 0x2a8(r1)
/* 802599F0 00256950  D0 01 02 A0 */	stfs f0, 0x2a0(r1)
/* 802599F4 00256954  48 13 05 01 */	bl __shl2i
/* 802599F8 00256958  38 E0 00 00 */	li r7, 0
/* 802599FC 0025695C  39 60 00 03 */	li r11, 3
/* 80259A00 00256960  90 81 02 1C */	stw r4, 0x21c(r1)
/* 80259A04 00256964  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80259A08 00256968  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80259A0C 0025696C  A1 41 00 9C */	lhz r10, 0x9c(r1)
/* 80259A10 00256970  90 61 02 18 */	stw r3, 0x218(r1)
/* 80259A14 00256974  7F C3 F3 78 */	mr r3, r30
/* 80259A18 00256978  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80259A1C 0025697C  38 81 00 54 */	addi r4, r1, 0x54
/* 80259A20 00256980  90 E1 02 24 */	stw r7, 0x224(r1)
/* 80259A24 00256984  38 A1 00 50 */	addi r5, r1, 0x50
/* 80259A28 00256988  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80259A2C 0025698C  39 01 02 18 */	addi r8, r1, 0x218
/* 80259A30 00256990  90 E1 02 20 */	stw r7, 0x220(r1)
/* 80259A34 00256994  38 E1 02 90 */	addi r7, r1, 0x290
/* 80259A38 00256998  91 61 02 28 */	stw r11, 0x228(r1)
/* 80259A3C 0025699C  A1 7C 00 EC */	lhz r11, 0xec(r28)
/* 80259A40 002569A0  B1 61 00 48 */	sth r11, 0x48(r1)
/* 80259A44 002569A4  B1 61 00 4C */	sth r11, 0x4c(r1)
/* 80259A48 002569A8  B1 41 00 50 */	sth r10, 0x50(r1)
/* 80259A4C 002569AC  B0 01 00 54 */	sth r0, 0x54(r1)
/* 80259A50 002569B0  4B DF 06 51 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80259A54 002569B4  48 00 02 58 */	b lbl_80259CAC
.global lbl_80259A58
lbl_80259A58:
/* 80259A58 002569B8  A0 1A 00 00 */	lhz r0, 0(r26)
/* 80259A5C 002569BC  7F C3 F3 78 */	mr r3, r30
/* 80259A60 002569C0  38 81 00 44 */	addi r4, r1, 0x44
/* 80259A64 002569C4  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80259A68 002569C8  4B DF 2B 0D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80259A6C 002569CC  7C 64 1B 78 */	mr r4, r3
/* 80259A70 002569D0  38 61 00 F0 */	addi r3, r1, 0xf0
/* 80259A74 002569D4  4B E5 58 D9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80259A78 002569D8  83 83 00 04 */	lwz r28, 4(r3)
/* 80259A7C 002569DC  28 1C 00 00 */	cmplwi r28, 0
/* 80259A80 002569E0  41 82 02 2C */	beq lbl_80259CAC
/* 80259A84 002569E4  38 00 00 00 */	li r0, 0
/* 80259A88 002569E8  80 AD 97 3C */	lwz r5, lbl_805A82FC@sda21(r13)
/* 80259A8C 002569EC  90 01 00 EC */	stw r0, 0xec(r1)
/* 80259A90 002569F0  38 60 00 00 */	li r3, 0
/* 80259A94 002569F4  38 80 00 01 */	li r4, 1
/* 80259A98 002569F8  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80259A9C 002569FC  48 13 04 59 */	bl __shl2i
/* 80259AA0 00256A00  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 80259AA4 00256A04  80 A1 00 EC */	lwz r5, 0xec(r1)
/* 80259AA8 00256A08  7C 00 1B 78 */	or r0, r0, r3
/* 80259AAC 00256A0C  7F 83 E3 78 */	mr r3, r28
/* 80259AB0 00256A10  7C A4 23 78 */	or r4, r5, r4
/* 80259AB4 00256A14  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80259AB8 00256A18  90 81 00 EC */	stw r4, 0xec(r1)
/* 80259ABC 00256A1C  4B DF 9E 01 */	bl GetMaterialFilter__6CActorCFv
/* 80259AC0 00256A20  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80259AC4 00256A24  48 07 B8 89 */	bl Passes__15CMaterialFilterCFRC13CMaterialList
/* 80259AC8 00256A28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259ACC 00256A2C  41 82 01 2C */	beq lbl_80259BF8
/* 80259AD0 00256A30  7F 84 E3 78 */	mr r4, r28
/* 80259AD4 00256A34  38 61 00 3C */	addi r3, r1, 0x3c
/* 80259AD8 00256A38  4B F4 F0 B5 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 80259ADC 00256A3C  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 80259AE0 00256A40  7F C3 F3 78 */	mr r3, r30
/* 80259AE4 00256A44  38 81 00 40 */	addi r4, r1, 0x40
/* 80259AE8 00256A48  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80259AEC 00256A4C  4B DF 2A B9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80259AF0 00256A50  7C 64 1B 78 */	mr r4, r3
/* 80259AF4 00256A54  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80259AF8 00256A58  4B E4 F3 1D */	bl "__ct__29TCastToPtr<15CScriptPlatform>FP7CEntity"
/* 80259AFC 00256A5C  83 63 00 04 */	lwz r27, 4(r3)
/* 80259B00 00256A60  28 1B 00 00 */	cmplwi r27, 0
/* 80259B04 00256A64  41 82 00 F4 */	beq lbl_80259BF8
/* 80259B08 00256A68  80 AD 97 38 */	lwz r5, lbl_805A82F8@sda21(r13)
/* 80259B0C 00256A6C  38 60 00 00 */	li r3, 0
/* 80259B10 00256A70  38 80 00 01 */	li r4, 1
/* 80259B14 00256A74  48 13 03 E1 */	bl __shl2i
/* 80259B18 00256A78  38 A0 00 00 */	li r5, 0
/* 80259B1C 00256A7C  38 00 00 03 */	li r0, 3
/* 80259B20 00256A80  90 81 01 E4 */	stw r4, 0x1e4(r1)
/* 80259B24 00256A84  7F C4 F3 78 */	mr r4, r30
/* 80259B28 00256A88  90 61 01 E0 */	stw r3, 0x1e0(r1)
/* 80259B2C 00256A8C  7F 63 DB 78 */	mr r3, r27
/* 80259B30 00256A90  90 A1 01 EC */	stw r5, 0x1ec(r1)
/* 80259B34 00256A94  90 A1 01 E8 */	stw r5, 0x1e8(r1)
/* 80259B38 00256A98  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 80259B3C 00256A9C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80259B40 00256AA0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80259B44 00256AA4  7D 89 03 A6 */	mtctr r12
/* 80259B48 00256AA8  4E 80 04 21 */	bctrl
/* 80259B4C 00256AAC  C0 03 00 00 */	lfs f0, 0(r3)
/* 80259B50 00256AB0  3B 40 00 09 */	li r26, 9
/* 80259B54 00256AB4  C0 42 B9 28 */	lfs f2, lbl_805AD648@sda21(r2)
/* 80259B58 00256AB8  38 60 00 00 */	li r3, 0
/* 80259B5C 00256ABC  88 C1 00 E4 */	lbz r6, 0xe4(r1)
/* 80259B60 00256AC0  50 66 3E 30 */	rlwimi r6, r3, 7, 0x18, 0x18
/* 80259B64 00256AC4  EC 22 00 2A */	fadds f1, f2, f0
/* 80259B68 00256AC8  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80259B6C 00256ACC  54 CA 06 3E */	clrlwi r10, r6, 0x18
/* 80259B70 00256AD0  88 01 02 10 */	lbz r0, 0x210(r1)
/* 80259B74 00256AD4  50 6A 36 72 */	rlwimi r10, r3, 6, 0x19, 0x19
/* 80259B78 00256AD8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80259B7C 00256ADC  55 4C 06 3E */	clrlwi r12, r10, 0x18
/* 80259B80 00256AE0  93 41 01 F8 */	stw r26, 0x1f8(r1)
/* 80259B84 00256AE4  50 6C 2E B4 */	rlwimi r12, r3, 5, 0x1a, 0x1a
/* 80259B88 00256AE8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80259B8C 00256AEC  98 C1 00 E4 */	stb r6, 0xe4(r1)
/* 80259B90 00256AF0  39 23 66 A0 */	addi r9, r3, skZero3f@l
/* 80259B94 00256AF4  7F C3 F3 78 */	mr r3, r30
/* 80259B98 00256AF8  38 81 00 38 */	addi r4, r1, 0x38
/* 80259B9C 00256AFC  99 41 00 E4 */	stb r10, 0xe4(r1)
/* 80259BA0 00256B00  38 A1 00 30 */	addi r5, r1, 0x30
/* 80259BA4 00256B04  38 C1 00 28 */	addi r6, r1, 0x28
/* 80259BA8 00256B08  38 E1 01 F8 */	addi r7, r1, 0x1f8
/* 80259BAC 00256B0C  99 81 01 FC */	stb r12, 0x1fc(r1)
/* 80259BB0 00256B10  39 01 01 E0 */	addi r8, r1, 0x1e0
/* 80259BB4 00256B14  D0 21 02 00 */	stfs f1, 0x200(r1)
/* 80259BB8 00256B18  D0 21 02 04 */	stfs f1, 0x204(r1)
/* 80259BBC 00256B1C  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80259BC0 00256B20  D0 41 02 0C */	stfs f2, 0x20c(r1)
/* 80259BC4 00256B24  98 01 02 10 */	stb r0, 0x210(r1)
/* 80259BC8 00256B28  A1 7F 00 08 */	lhz r11, 8(r31)
/* 80259BCC 00256B2C  93 41 00 E0 */	stw r26, 0xe0(r1)
/* 80259BD0 00256B30  B1 61 00 28 */	sth r11, 0x28(r1)
/* 80259BD4 00256B34  A1 5B 00 08 */	lhz r10, 8(r27)
/* 80259BD8 00256B38  99 81 00 E4 */	stb r12, 0xe4(r1)
/* 80259BDC 00256B3C  B1 41 00 30 */	sth r10, 0x30(r1)
/* 80259BE0 00256B40  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80259BE4 00256B44  B1 61 00 24 */	sth r11, 0x24(r1)
/* 80259BE8 00256B48  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 80259BEC 00256B4C  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80259BF0 00256B50  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80259BF4 00256B54  4B DF 04 AD */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_80259BF8:
/* 80259BF8 00256B58  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80259BFC 00256B5C  7F 84 E3 78 */	mr r4, r28
/* 80259C00 00256B60  38 61 00 20 */	addi r3, r1, 0x20
/* 80259C04 00256B64  A3 45 00 08 */	lhz r26, 8(r5)
/* 80259C08 00256B68  4B F4 EF 85 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 80259C0C 00256B6C  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80259C10 00256B70  7C 00 D0 40 */	cmplw r0, r26
/* 80259C14 00256B74  40 82 00 98 */	bne lbl_80259CAC
/* 80259C18 00256B78  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 80259C1C 00256B7C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 80259C20 00256B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80259C24 00256B84  4C 40 13 82 */	cror 2, 0, 2
/* 80259C28 00256B88  40 82 00 84 */	bne lbl_80259CAC
/* 80259C2C 00256B8C  80 AD 97 38 */	lwz r5, lbl_805A82F8@sda21(r13)
/* 80259C30 00256B90  38 60 00 00 */	li r3, 0
/* 80259C34 00256B94  38 80 00 01 */	li r4, 1
/* 80259C38 00256B98  48 13 02 BD */	bl __shl2i
/* 80259C3C 00256B9C  39 40 00 00 */	li r10, 0
/* 80259C40 00256BA0  38 00 00 03 */	li r0, 3
/* 80259C44 00256BA4  90 81 01 CC */	stw r4, 0x1cc(r1)
/* 80259C48 00256BA8  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80259C4C 00256BAC  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80259C50 00256BB0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80259C54 00256BB4  90 61 01 C8 */	stw r3, 0x1c8(r1)
/* 80259C58 00256BB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80259C5C 00256BBC  7F C3 F3 78 */	mr r3, r30
/* 80259C60 00256BC0  38 C1 00 0C */	addi r6, r1, 0xc
/* 80259C64 00256BC4  91 41 01 D4 */	stw r10, 0x1d4(r1)
/* 80259C68 00256BC8  38 FF 0C 8C */	addi r7, r31, 0xc8c
/* 80259C6C 00256BCC  39 01 01 C8 */	addi r8, r1, 0x1c8
/* 80259C70 00256BD0  91 41 01 D0 */	stw r10, 0x1d0(r1)
/* 80259C74 00256BD4  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 80259C78 00256BD8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80259C7C 00256BDC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80259C80 00256BE0  81 5E 08 4C */	lwz r10, 0x84c(r30)
/* 80259C84 00256BE4  B0 01 00 08 */	sth r0, 8(r1)
/* 80259C88 00256BE8  A1 4A 00 08 */	lhz r10, 8(r10)
/* 80259C8C 00256BEC  B1 41 00 14 */	sth r10, 0x14(r1)
/* 80259C90 00256BF0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 80259C94 00256BF4  B1 41 00 10 */	sth r10, 0x10(r1)
/* 80259C98 00256BF8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80259C9C 00256BFC  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80259CA0 00256C00  4B DF 04 01 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80259CA4 00256C04  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 80259CA8 00256C08  D0 1F 04 20 */	stfs f0, 0x420(r31)
.global lbl_80259CAC
lbl_80259CAC:
/* 80259CAC 00256C0C  E3 E1 03 48 */	psq_l f31, 840(r1), 0, qr0
/* 80259CB0 00256C10  CB E1 03 40 */	lfd f31, 0x340(r1)
/* 80259CB4 00256C14  E3 C1 03 38 */	psq_l f30, 824(r1), 0, qr0
/* 80259CB8 00256C18  CB C1 03 30 */	lfd f30, 0x330(r1)
/* 80259CBC 00256C1C  BB 41 03 18 */	lmw r26, 0x318(r1)
/* 80259CC0 00256C20  80 01 03 54 */	lwz r0, 0x354(r1)
/* 80259CC4 00256C24  7C 08 03 A6 */	mtlr r0
/* 80259CC8 00256C28  38 21 03 50 */	addi r1, r1, 0x350
/* 80259CCC 00256C2C  4E 80 00 20 */	blr

.global Touch__7CRidleyFR6CActorR13CStateManager
Touch__7CRidleyFR6CActorR13CStateManager:
/* 80259CD0 00256C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259CD4 00256C34  7C 08 02 A6 */	mflr r0
/* 80259CD8 00256C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259CDC 00256C3C  4B E1 FD C5 */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80259CE0 00256C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259CE4 00256C44  7C 08 03 A6 */	mtlr r0
/* 80259CE8 00256C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80259CEC 00256C4C  4E 80 00 20 */	blr

.global Accept__7CRidleyFR8IVisitor
Accept__7CRidleyFR8IVisitor:
/* 80259CF0 00256C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259CF4 00256C54  7C 08 02 A6 */	mflr r0
/* 80259CF8 00256C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259CFC 00256C5C  7C 60 1B 78 */	mr r0, r3
/* 80259D00 00256C60  7C 83 23 78 */	mr r3, r4
/* 80259D04 00256C64  81 84 00 00 */	lwz r12, 0(r4)
/* 80259D08 00256C68  7C 04 03 78 */	mr r4, r0
/* 80259D0C 00256C6C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80259D10 00256C70  7D 89 03 A6 */	mtctr r12
/* 80259D14 00256C74  4E 80 04 21 */	bctrl
/* 80259D18 00256C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259D1C 00256C7C  7C 08 03 A6 */	mtlr r0
/* 80259D20 00256C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80259D24 00256C84  4E 80 00 20 */	blr

.global "__ct__7CRidleyF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC6CAABoxRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CInputStreamUi"
"__ct__7CRidleyF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC6CAABoxRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CInputStreamUi":
/* 80259D28 00256C88  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80259D2C 00256C8C  7C 08 02 A6 */	mflr r0
/* 80259D30 00256C90  7C CC 33 78 */	mr r12, r6
/* 80259D34 00256C94  7C A6 2B 78 */	mr r6, r5
/* 80259D38 00256C98  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80259D3C 00256C9C  39 60 00 03 */	li r11, 3
/* 80259D40 00256CA0  38 A1 00 34 */	addi r5, r1, 0x34
/* 80259D44 00256CA4  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 80259D48 00256CA8  7C 7F 1B 78 */	mr r31, r3
/* 80259D4C 00256CAC  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 80259D50 00256CB0  7D 1E 43 78 */	mr r30, r8
/* 80259D54 00256CB4  7D 88 63 78 */	mr r8, r12
/* 80259D58 00256CB8  93 A1 01 C4 */	stw r29, 0x1c4(r1)
/* 80259D5C 00256CBC  83 A1 01 D8 */	lwz r29, 0x1d8(r1)
/* 80259D60 00256CC0  93 81 01 C0 */	stw r28, 0x1c0(r1)
/* 80259D64 00256CC4  83 81 01 DC */	lwz r28, 0x1dc(r1)
/* 80259D68 00256CC8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80259D6C 00256CCC  38 80 00 01 */	li r4, 1
/* 80259D70 00256CD0  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80259D74 00256CD4  38 00 00 02 */	li r0, 2
/* 80259D78 00256CD8  91 21 00 08 */	stw r9, 8(r1)
/* 80259D7C 00256CDC  7C E9 3B 78 */	mr r9, r7
/* 80259D80 00256CE0  38 E0 00 00 */	li r7, 0
/* 80259D84 00256CE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80259D88 00256CE8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80259D8C 00256CEC  38 80 00 1E */	li r4, 0x1e
/* 80259D90 00256CF0  91 61 00 14 */	stw r11, 0x14(r1)
/* 80259D94 00256CF4  91 41 00 18 */	stw r10, 0x18(r1)
/* 80259D98 00256CF8  7F CA F3 78 */	mr r10, r30
/* 80259D9C 00256CFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80259DA0 00256D00  4B E2 36 B1 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 80259DA4 00256D04  3C 60 80 3F */	lis r3, lbl_803E9258@ha
/* 80259DA8 00256D08  7F A4 EB 78 */	mr r4, r29
/* 80259DAC 00256D0C  38 03 92 58 */	addi r0, r3, lbl_803E9258@l
/* 80259DB0 00256D10  7F 85 E3 78 */	mr r5, r28
/* 80259DB4 00256D14  90 1F 00 00 */	stw r0, 0(r31)
/* 80259DB8 00256D18  38 7F 05 68 */	addi r3, r31, 0x568
/* 80259DBC 00256D1C  48 00 09 39 */	bl sub_8025a6f4
/* 80259DC0 00256D20  38 80 00 00 */	li r4, 0
/* 80259DC4 00256D24  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 80259DC8 00256D28  90 9F 09 80 */	stw r4, 0x980(r31)
/* 80259DCC 00256D2C  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 80259DD0 00256D30  38 61 00 94 */	addi r3, r1, 0x94
/* 80259DD4 00256D34  38 A1 00 9C */	addi r5, r1, 0x9c
/* 80259DD8 00256D38  90 9F 09 84 */	stw r4, 0x984(r31)
/* 80259DDC 00256D3C  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80259DE0 00256D40  B0 9F 09 88 */	sth r4, 0x988(r31)
/* 80259DE4 00256D44  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80259DE8 00256D48  B0 9F 09 8A */	sth r4, 0x98a(r31)
/* 80259DEC 00256D4C  80 DF 05 98 */	lwz r6, 0x598(r31)
/* 80259DF0 00256D50  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 80259DF4 00256D54  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80259DF8 00256D58  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 80259DFC 00256D5C  81 84 00 00 */	lwz r12, 0(r4)
/* 80259E00 00256D60  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80259E04 00256D64  7D 89 03 A6 */	mtctr r12
/* 80259E08 00256D68  4E 80 04 21 */	bctrl
/* 80259E0C 00256D6C  3B 9F 09 8C */	addi r28, r31, 0x98c
/* 80259E10 00256D70  38 81 00 94 */	addi r4, r1, 0x94
/* 80259E14 00256D74  7F 83 E3 78 */	mr r3, r28
/* 80259E18 00256D78  48 0E 70 91 */	bl __ct__6CTokenFRC6CToken
/* 80259E1C 00256D7C  7F 83 E3 78 */	mr r3, r28
/* 80259E20 00256D80  48 0E 6F ED */	bl GetObj__6CTokenFv
/* 80259E24 00256D84  80 03 00 04 */	lwz r0, 4(r3)
/* 80259E28 00256D88  38 61 00 94 */	addi r3, r1, 0x94
/* 80259E2C 00256D8C  38 80 FF FF */	li r4, -1
/* 80259E30 00256D90  90 1C 00 08 */	stw r0, 8(r28)
/* 80259E34 00256D94  48 0E 70 0D */	bl __dt__6CTokenFv
/* 80259E38 00256D98  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80259E3C 00256D9C  38 7F 09 98 */	addi r3, r31, 0x998
/* 80259E40 00256DA0  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 80259E44 00256DA4  38 81 01 18 */	addi r4, r1, 0x118
/* 80259E48 00256DA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80259E4C 00256DAC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80259E50 00256DB0  D0 41 01 0C */	stfs f2, 0x10c(r1)
/* 80259E54 00256DB4  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80259E58 00256DB8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80259E5C 00256DBC  90 01 01 18 */	stw r0, 0x118(r1)
/* 80259E60 00256DC0  D0 41 01 1C */	stfs f2, 0x11c(r1)
/* 80259E64 00256DC4  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 80259E68 00256DC8  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80259E6C 00256DCC  4B EB CE F1 */	bl __ct__10CModelDataFRC10CStaticRes
/* 80259E70 00256DD0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80259E74 00256DD4  38 7F 09 E4 */	addi r3, r31, 0x9e4
/* 80259E78 00256DD8  80 1F 05 94 */	lwz r0, 0x594(r31)
/* 80259E7C 00256DDC  38 81 00 FC */	addi r4, r1, 0xfc
/* 80259E80 00256DE0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80259E84 00256DE4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80259E88 00256DE8  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 80259E8C 00256DEC  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 80259E90 00256DF0  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80259E94 00256DF4  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80259E98 00256DF8  D0 41 01 00 */	stfs f2, 0x100(r1)
/* 80259E9C 00256DFC  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80259EA0 00256E00  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80259EA4 00256E04  4B EB CE B9 */	bl __ct__10CModelDataFRC10CStaticRes
/* 80259EA8 00256E08  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80259EAC 00256E0C  3C 60 80 57 */	lis r3, lbl_80572404@ha
/* 80259EB0 00256E10  38 A3 24 04 */	addi r5, r3, lbl_80572404@l
/* 80259EB4 00256E14  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80259EB8 00256E18  38 61 00 30 */	addi r3, r1, 0x30
/* 80259EBC 00256E1C  4B DD 49 7D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80259EC0 00256E20  88 01 00 30 */	lbz r0, 0x30(r1)
/* 80259EC4 00256E24  38 C0 00 01 */	li r6, 1
/* 80259EC8 00256E28  38 A0 00 00 */	li r5, 0
/* 80259ECC 00256E2C  C0 22 B9 C8 */	lfs f1, lbl_805AD6E8@sda21(r2)
/* 80259ED0 00256E30  98 1F 0A 30 */	stb r0, 0xa30(r31)
/* 80259ED4 00256E34  38 7F 0A 38 */	addi r3, r31, 0xa38
/* 80259ED8 00256E38  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80259EDC 00256E3C  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259EE0 00256E40  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80259EE4 00256E44  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259EE8 00256E48  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259EEC 00256E4C  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80259EF0 00256E50  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259EF4 00256E54  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259EF8 00256E58  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80259EFC 00256E5C  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F00 00256E60  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259F04 00256E64  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80259F08 00256E68  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F0C 00256E6C  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259F10 00256E70  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80259F14 00256E74  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F18 00256E78  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259F1C 00256E7C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80259F20 00256E80  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F24 00256E84  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259F28 00256E88  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 80259F2C 00256E8C  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F30 00256E90  88 1F 0A 31 */	lbz r0, 0xa31(r31)
/* 80259F34 00256E94  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 80259F38 00256E98  98 1F 0A 31 */	stb r0, 0xa31(r31)
/* 80259F3C 00256E9C  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F40 00256EA0  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80259F44 00256EA4  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F48 00256EA8  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F4C 00256EAC  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80259F50 00256EB0  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F54 00256EB4  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F58 00256EB8  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80259F5C 00256EBC  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F60 00256EC0  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F64 00256EC4  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80259F68 00256EC8  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F6C 00256ECC  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F70 00256ED0  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80259F74 00256ED4  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F78 00256ED8  88 1F 0A 32 */	lbz r0, 0xa32(r31)
/* 80259F7C 00256EDC  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 80259F80 00256EE0  98 1F 0A 32 */	stb r0, 0xa32(r31)
/* 80259F84 00256EE4  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259F88 00256EE8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80259F8C 00256EEC  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259F90 00256EF0  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259F94 00256EF4  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80259F98 00256EF8  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259F9C 00256EFC  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FA0 00256F00  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80259FA4 00256F04  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FA8 00256F08  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FAC 00256F0C  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 80259FB0 00256F10  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FB4 00256F14  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FB8 00256F18  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80259FBC 00256F1C  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FC0 00256F20  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FC4 00256F24  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80259FC8 00256F28  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FCC 00256F2C  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FD0 00256F30  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 80259FD4 00256F34  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FD8 00256F38  88 1F 0A 33 */	lbz r0, 0xa33(r31)
/* 80259FDC 00256F3C  50 A0 07 FE */	rlwimi r0, r5, 0, 0x1f, 0x1f
/* 80259FE0 00256F40  98 1F 0A 33 */	stb r0, 0xa33(r31)
/* 80259FE4 00256F44  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 80259FE8 00256F48  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80259FEC 00256F4C  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80259FF0 00256F50  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 80259FF4 00256F54  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80259FF8 00256F58  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 80259FFC 00256F5C  88 1F 0A 34 */	lbz r0, 0xa34(r31)
/* 8025A000 00256F60  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8025A004 00256F64  98 1F 0A 34 */	stb r0, 0xa34(r31)
/* 8025A008 00256F68  C0 9E 00 00 */	lfs f4, 0(r30)
/* 8025A00C 00256F6C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8025A010 00256F70  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8025A014 00256F74  EC 01 01 32 */	fmuls f0, f1, f4
/* 8025A018 00256F78  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8025A01C 00256F7C  EC A1 00 F2 */	fmuls f5, f1, f3
/* 8025A020 00256F80  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8025A024 00256F84  D0 81 00 C8 */	stfs f4, 0xc8(r1)
/* 8025A028 00256F88  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 8025A02C 00256F8C  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 8025A030 00256F90  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8025A034 00256F94  D0 A1 00 D8 */	stfs f5, 0xd8(r1)
/* 8025A038 00256F98  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 8025A03C 00256F9C  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 8025A040 00256FA0  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 8025A044 00256FA4  D0 A1 00 E8 */	stfs f5, 0xe8(r1)
/* 8025A048 00256FA8  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 8025A04C 00256FAC  4B EB CD 11 */	bl __ct__10CModelDataFRC10CStaticRes
/* 8025A050 00256FB0  3C 80 80 5A */	lis r4, skIdentity4f@ha
/* 8025A054 00256FB4  38 7F 0A 84 */	addi r3, r31, 0xa84
/* 8025A058 00256FB8  38 84 66 70 */	addi r4, r4, skIdentity4f@l
/* 8025A05C 00256FBC  48 0B 8B 19 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025A060 00256FC0  C0 C2 B9 68 */	lfs f6, lbl_805AD688@sda21(r2)
/* 8025A064 00256FC4  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8025A068 00256FC8  3B C4 66 A0 */	addi r30, r4, skZero3f@l
/* 8025A06C 00256FCC  3C 60 80 57 */	lis r3, lbl_80572534@ha
/* 8025A070 00256FD0  D0 DF 0A B4 */	stfs f6, 0xab4(r31)
/* 8025A074 00256FD4  38 A3 25 34 */	addi r5, r3, lbl_80572534@l
/* 8025A078 00256FD8  C0 02 B9 CC */	lfs f0, lbl_805AD6EC@sda21(r2)
/* 8025A07C 00256FDC  3C C0 80 5A */	lis r6, lbl_805A6754@ha
/* 8025A080 00256FE0  C0 22 B9 78 */	lfs f1, lbl_805AD698@sda21(r2)
/* 8025A084 00256FE4  38 80 00 02 */	li r4, 2
/* 8025A088 00256FE8  D0 1F 0A B8 */	stfs f0, 0xab8(r31)
/* 8025A08C 00256FEC  38 00 00 00 */	li r0, 0
/* 8025A090 00256FF0  C0 02 B9 2C */	lfs f0, lbl_805AD64C@sda21(r2)
/* 8025A094 00256FF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8025A098 00256FF8  D0 3F 0A BC */	stfs f1, 0xabc(r31)
/* 8025A09C 00256FFC  C0 42 B9 D0 */	lfs f2, lbl_805AD6F0@sda21(r2)
/* 8025A0A0 00257000  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8025A0A4 00257004  C0 02 B9 D4 */	lfs f0, lbl_805AD6F4@sda21(r2)
/* 8025A0A8 00257008  C4 66 67 54 */	lfsu f3, lbl_805A6754@l(r6)
/* 8025A0AC 0025700C  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 8025A0B0 00257010  D0 7F 0A C4 */	stfs f3, 0xac4(r31)
/* 8025A0B4 00257014  C0 66 00 04 */	lfs f3, 4(r6)
/* 8025A0B8 00257018  D0 7F 0A C8 */	stfs f3, 0xac8(r31)
/* 8025A0BC 0025701C  C0 66 00 08 */	lfs f3, 8(r6)
/* 8025A0C0 00257020  D0 7F 0A CC */	stfs f3, 0xacc(r31)
/* 8025A0C4 00257024  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8025A0C8 00257028  D0 7F 0A D0 */	stfs f3, 0xad0(r31)
/* 8025A0CC 0025702C  C0 66 00 10 */	lfs f3, 0x10(r6)
/* 8025A0D0 00257030  D0 7F 0A D4 */	stfs f3, 0xad4(r31)
/* 8025A0D4 00257034  C0 66 00 14 */	lfs f3, 0x14(r6)
/* 8025A0D8 00257038  D0 7F 0A D8 */	stfs f3, 0xad8(r31)
/* 8025A0DC 0025703C  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8025A0E0 00257040  C0 66 00 08 */	lfs f3, 8(r6)
/* 8025A0E4 00257044  C0 A6 00 00 */	lfs f5, 0(r6)
/* 8025A0E8 00257048  C0 86 00 04 */	lfs f4, 4(r6)
/* 8025A0EC 0025704C  EC 42 00 F2 */	fmuls f2, f2, f3
/* 8025A0F0 00257050  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 8025A0F4 00257054  D0 5F 0A DC */	stfs f2, 0xadc(r31)
/* 8025A0F8 00257058  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8025A0FC 0025705C  D0 81 00 C0 */	stfs f4, 0xc0(r1)
/* 8025A100 00257060  C0 46 00 00 */	lfs f2, 0(r6)
/* 8025A104 00257064  D0 A1 00 BC */	stfs f5, 0xbc(r1)
/* 8025A108 00257068  EC 46 00 B2 */	fmuls f2, f6, f2
/* 8025A10C 0025706C  D0 5F 0A E0 */	stfs f2, 0xae0(r31)
/* 8025A110 00257070  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8025A114 00257074  C0 46 00 08 */	lfs f2, 8(r6)
/* 8025A118 00257078  C0 86 00 00 */	lfs f4, 0(r6)
/* 8025A11C 0025707C  C0 66 00 04 */	lfs f3, 4(r6)
/* 8025A120 00257080  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8025A124 00257084  D0 81 00 B0 */	stfs f4, 0xb0(r1)
/* 8025A128 00257088  D0 1F 0A E8 */	stfs f0, 0xae8(r31)
/* 8025A12C 0025708C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8025A130 00257090  D0 61 00 B4 */	stfs f3, 0xb4(r1)
/* 8025A134 00257094  D0 1F 0A EC */	stfs f0, 0xaec(r31)
/* 8025A138 00257098  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8025A13C 0025709C  D0 41 00 B8 */	stfs f2, 0xb8(r1)
/* 8025A140 002570A0  D0 1F 0A F0 */	stfs f0, 0xaf0(r31)
/* 8025A144 002570A4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8025A148 002570A8  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 8025A14C 002570AC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8025A150 002570B0  D0 1F 0A F8 */	stfs f0, 0xaf8(r31)
/* 8025A154 002570B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8025A158 002570B8  D0 1F 0A FC */	stfs f0, 0xafc(r31)
/* 8025A15C 002570BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8025A160 002570C0  D0 1F 0B 00 */	stfs f0, 0xb00(r31)
/* 8025A164 002570C4  90 9F 0B 04 */	stw r4, 0xb04(r31)
/* 8025A168 002570C8  90 1F 0B 0C */	stw r0, 0xb0c(r31)
/* 8025A16C 002570CC  D0 3F 0B 10 */	stfs f1, 0xb10(r31)
/* 8025A170 002570D0  C0 1F 05 A0 */	lfs f0, 0x5a0(r31)
/* 8025A174 002570D4  D0 1F 0B 14 */	stfs f0, 0xb14(r31)
/* 8025A178 002570D8  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 8025A17C 002570DC  D0 1F 0B 18 */	stfs f0, 0xb18(r31)
/* 8025A180 002570E0  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 8025A184 002570E4  D0 1F 0B 1C */	stfs f0, 0xb1c(r31)
/* 8025A188 002570E8  D0 3F 0B 20 */	stfs f1, 0xb20(r31)
/* 8025A18C 002570EC  D0 3F 0B 24 */	stfs f1, 0xb24(r31)
/* 8025A190 002570F0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8025A194 002570F4  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025A198 002570F8  4B DD 46 A1 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025A19C 002570FC  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8025A1A0 00257100  3C 60 80 57 */	lis r3, lbl_80572524@ha
/* 8025A1A4 00257104  38 A3 25 24 */	addi r5, r3, lbl_80572524@l
/* 8025A1A8 00257108  C0 22 B9 D8 */	lfs f1, lbl_805AD6F8@sda21(r2)
/* 8025A1AC 0025710C  98 1F 0B 28 */	stb r0, 0xb28(r31)
/* 8025A1B0 00257110  38 7F 0B 2C */	addi r3, r31, 0xb2c
/* 8025A1B4 00257114  C0 42 B9 DC */	lfs f2, lbl_805AD6FC@sda21(r2)
/* 8025A1B8 00257118  38 C0 00 0A */	li r6, 0xa
/* 8025A1BC 0025711C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8025A1C0 00257120  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025A1C4 00257124  4B F1 B7 F5 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 8025A1C8 00257128  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8025A1CC 0025712C  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 8025A1D0 00257130  38 BF 05 B0 */	addi r5, r31, 0x5b0
/* 8025A1D4 00257134  B0 1F 0B 64 */	sth r0, 0xb64(r31)
/* 8025A1D8 00257138  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 8025A1DC 0025713C  4B FC 1E CD */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8025A1E0 00257140  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8025A1E4 00257144  3C 60 80 57 */	lis r3, lbl_80572524@ha
/* 8025A1E8 00257148  38 A3 25 24 */	addi r5, r3, lbl_80572524@l
/* 8025A1EC 0025714C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025A1F0 00257150  38 61 00 28 */	addi r3, r1, 0x28
/* 8025A1F4 00257154  4B DD 46 45 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025A1F8 00257158  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8025A1FC 0025715C  3C 60 80 57 */	lis r3, lbl_80572514@ha
/* 8025A200 00257160  38 A3 25 14 */	addi r5, r3, lbl_80572514@l
/* 8025A204 00257164  98 1F 0B 90 */	stb r0, 0xb90(r31)
/* 8025A208 00257168  38 61 00 24 */	addi r3, r1, 0x24
/* 8025A20C 0025716C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8025A210 00257170  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025A214 00257174  4B DD 46 25 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025A218 00257178  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8025A21C 0025717C  38 61 01 44 */	addi r3, r1, 0x144
/* 8025A220 00257180  C0 02 B9 E0 */	lfs f0, lbl_805AD700@sda21(r2)
/* 8025A224 00257184  38 81 00 38 */	addi r4, r1, 0x38
/* 8025A228 00257188  98 1F 0B 91 */	stb r0, 0xb91(r31)
/* 8025A22C 0025718C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8025A230 00257190  48 0B 97 11 */	bl RotateX__12CTransform4fFRC9CRelAngle
/* 8025A234 00257194  38 7F 0B 94 */	addi r3, r31, 0xb94
/* 8025A238 00257198  38 81 01 44 */	addi r4, r1, 0x144
/* 8025A23C 0025719C  48 0B 89 39 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8025A240 002571A0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8025A244 002571A4  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 8025A248 002571A8  38 C4 66 A0 */	addi r6, r4, skZero3f@l
/* 8025A24C 002571AC  C0 22 B9 18 */	lfs f1, lbl_805AD638@sda21(r2)
/* 8025A250 002571B0  C0 46 00 00 */	lfs f2, 0(r6)
/* 8025A254 002571B4  38 83 67 24 */	addi r4, r3, lbl_805A6724@l
/* 8025A258 002571B8  C0 02 B9 54 */	lfs f0, lbl_805AD674@sda21(r2)
/* 8025A25C 002571BC  38 7F 0C 14 */	addi r3, r31, 0xc14
/* 8025A260 002571C0  D0 5F 0B C4 */	stfs f2, 0xbc4(r31)
/* 8025A264 002571C4  38 BF 06 18 */	addi r5, r31, 0x618
/* 8025A268 002571C8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8025A26C 002571CC  D0 5F 0B C8 */	stfs f2, 0xbc8(r31)
/* 8025A270 002571D0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8025A274 002571D4  D0 5F 0B CC */	stfs f2, 0xbcc(r31)
/* 8025A278 002571D8  C0 46 00 00 */	lfs f2, 0(r6)
/* 8025A27C 002571DC  D0 5F 0B D0 */	stfs f2, 0xbd0(r31)
/* 8025A280 002571E0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8025A284 002571E4  D0 5F 0B D4 */	stfs f2, 0xbd4(r31)
/* 8025A288 002571E8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8025A28C 002571EC  D0 5F 0B D8 */	stfs f2, 0xbd8(r31)
/* 8025A290 002571F0  C0 46 00 00 */	lfs f2, 0(r6)
/* 8025A294 002571F4  D0 5F 0B E4 */	stfs f2, 0xbe4(r31)
/* 8025A298 002571F8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8025A29C 002571FC  D0 5F 0B E8 */	stfs f2, 0xbe8(r31)
/* 8025A2A0 00257200  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8025A2A4 00257204  D0 5F 0B EC */	stfs f2, 0xbec(r31)
/* 8025A2A8 00257208  C0 44 00 00 */	lfs f2, 0(r4)
/* 8025A2AC 0025720C  D0 5F 0B F0 */	stfs f2, 0xbf0(r31)
/* 8025A2B0 00257210  C0 44 00 04 */	lfs f2, 4(r4)
/* 8025A2B4 00257214  D0 5F 0B F4 */	stfs f2, 0xbf4(r31)
/* 8025A2B8 00257218  C0 44 00 08 */	lfs f2, 8(r4)
/* 8025A2BC 0025721C  D0 5F 0B F8 */	stfs f2, 0xbf8(r31)
/* 8025A2C0 00257220  C0 44 00 00 */	lfs f2, 0(r4)
/* 8025A2C4 00257224  D0 5F 0B FC */	stfs f2, 0xbfc(r31)
/* 8025A2C8 00257228  C0 44 00 04 */	lfs f2, 4(r4)
/* 8025A2CC 0025722C  D0 5F 0C 00 */	stfs f2, 0xc00(r31)
/* 8025A2D0 00257230  C0 44 00 08 */	lfs f2, 8(r4)
/* 8025A2D4 00257234  D0 5F 0C 04 */	stfs f2, 0xc04(r31)
/* 8025A2D8 00257238  D0 3F 0C 08 */	stfs f1, 0xc08(r31)
/* 8025A2DC 0025723C  D0 3F 0C 0C */	stfs f1, 0xc0c(r31)
/* 8025A2E0 00257240  D0 1F 0C 10 */	stfs f0, 0xc10(r31)
/* 8025A2E4 00257244  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 8025A2E8 00257248  4B FC 1D C1 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8025A2EC 0025724C  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 8025A2F0 00257250  38 7F 0C 3C */	addi r3, r31, 0xc3c
/* 8025A2F4 00257254  38 BF 07 0C */	addi r5, r31, 0x70c
/* 8025A2F8 00257258  4B FC 1D B1 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 8025A2FC 0025725C  38 00 00 02 */	li r0, 2
/* 8025A300 00257260  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8025A304 00257264  90 1F 0C 64 */	stw r0, 0xc64(r31)
/* 8025A308 00257268  38 A0 00 00 */	li r5, 0
/* 8025A30C 0025726C  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025A310 00257270  38 00 00 04 */	li r0, 4
/* 8025A314 00257274  C0 23 66 A0 */	lfs f1, skZero3f@l(r3)
/* 8025A318 00257278  7F E4 FB 78 */	mr r4, r31
/* 8025A31C 0025727C  38 61 01 28 */	addi r3, r1, 0x128
/* 8025A320 00257280  D0 3F 0C 68 */	stfs f1, 0xc68(r31)
/* 8025A324 00257284  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8025A328 00257288  D0 3F 0C 6C */	stfs f1, 0xc6c(r31)
/* 8025A32C 0025728C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8025A330 00257290  D0 3F 0C 70 */	stfs f1, 0xc70(r31)
/* 8025A334 00257294  90 BF 0C 74 */	stw r5, 0xc74(r31)
/* 8025A338 00257298  D0 1F 0C 78 */	stfs f0, 0xc78(r31)
/* 8025A33C 0025729C  D0 1F 0C 7C */	stfs f0, 0xc7c(r31)
/* 8025A340 002572A0  D0 1F 0C 80 */	stfs f0, 0xc80(r31)
/* 8025A344 002572A4  90 1F 0C 88 */	stw r0, 0xc88(r31)
/* 8025A348 002572A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8025A34C 002572AC  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8025A350 002572B0  7D 89 03 A6 */	mtctr r12
/* 8025A354 002572B4  4E 80 04 21 */	bctrl
/* 8025A358 002572B8  80 01 01 28 */	lwz r0, 0x128(r1)
/* 8025A35C 002572BC  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 8025A360 002572C0  38 C0 00 00 */	li r6, 0
/* 8025A364 002572C4  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025A368 002572C8  90 1F 0C 8C */	stw r0, 0xc8c(r31)
/* 8025A36C 002572CC  38 80 00 01 */	li r4, 1
/* 8025A370 002572D0  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 8025A374 002572D4  38 61 00 84 */	addi r3, r1, 0x84
/* 8025A378 002572D8  88 E1 01 2C */	lbz r7, 0x12c(r1)
/* 8025A37C 002572DC  38 A1 00 8C */	addi r5, r1, 0x8c
/* 8025A380 002572E0  98 FF 0C 90 */	stb r7, 0xc90(r31)
/* 8025A384 002572E4  C0 21 01 30 */	lfs f1, 0x130(r1)
/* 8025A388 002572E8  D0 3F 0C 94 */	stfs f1, 0xc94(r31)
/* 8025A38C 002572EC  C0 21 01 34 */	lfs f1, 0x134(r1)
/* 8025A390 002572F0  D0 3F 0C 98 */	stfs f1, 0xc98(r31)
/* 8025A394 002572F4  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 8025A398 002572F8  D0 3F 0C 9C */	stfs f1, 0xc9c(r31)
/* 8025A39C 002572FC  C0 21 01 3C */	lfs f1, 0x13c(r1)
/* 8025A3A0 00257300  D0 3F 0C A0 */	stfs f1, 0xca0(r31)
/* 8025A3A4 00257304  88 E1 01 40 */	lbz r7, 0x140(r1)
/* 8025A3A8 00257308  98 FF 0C A4 */	stb r7, 0xca4(r31)
/* 8025A3AC 0025730C  90 DF 0C A8 */	stw r6, 0xca8(r31)
/* 8025A3B0 00257310  90 DF 0C AC */	stw r6, 0xcac(r31)
/* 8025A3B4 00257314  90 DF 0C B0 */	stw r6, 0xcb0(r31)
/* 8025A3B8 00257318  90 DF 0C B4 */	stw r6, 0xcb4(r31)
/* 8025A3BC 0025731C  D0 1F 0C B8 */	stfs f0, 0xcb8(r31)
/* 8025A3C0 00257320  D0 1F 0C BC */	stfs f0, 0xcbc(r31)
/* 8025A3C4 00257324  90 9F 0C C0 */	stw r4, 0xcc0(r31)
/* 8025A3C8 00257328  90 9F 0C C4 */	stw r4, 0xcc4(r31)
/* 8025A3CC 0025732C  D0 1F 0C C8 */	stfs f0, 0xcc8(r31)
/* 8025A3D0 00257330  80 DF 09 58 */	lwz r6, 0x958(r31)
/* 8025A3D4 00257334  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8025A3D8 00257338  90 01 00 8C */	stw r0, 0x8c(r1)
/* 8025A3DC 0025733C  90 C1 00 90 */	stw r6, 0x90(r1)
/* 8025A3E0 00257340  81 84 00 00 */	lwz r12, 0(r4)
/* 8025A3E4 00257344  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8025A3E8 00257348  7D 89 03 A6 */	mtctr r12
/* 8025A3EC 0025734C  4E 80 04 21 */	bctrl
/* 8025A3F0 00257350  3B 9F 0C D0 */	addi r28, r31, 0xcd0
/* 8025A3F4 00257354  38 81 00 84 */	addi r4, r1, 0x84
/* 8025A3F8 00257358  7F 83 E3 78 */	mr r3, r28
/* 8025A3FC 0025735C  48 0E 6A AD */	bl __ct__6CTokenFRC6CToken
/* 8025A400 00257360  7F 83 E3 78 */	mr r3, r28
/* 8025A404 00257364  48 0E 6A 09 */	bl GetObj__6CTokenFv
/* 8025A408 00257368  80 03 00 04 */	lwz r0, 4(r3)
/* 8025A40C 0025736C  38 61 00 84 */	addi r3, r1, 0x84
/* 8025A410 00257370  38 80 FF FF */	li r4, -1
/* 8025A414 00257374  90 1C 00 08 */	stw r0, 8(r28)
/* 8025A418 00257378  48 0E 6A 29 */	bl __dt__6CTokenFv
/* 8025A41C 0025737C  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 8025A420 00257380  3B 80 00 00 */	li r28, 0
/* 8025A424 00257384  38 83 4D 5C */	addi r4, r3, lbl_803D4D5C@l
/* 8025A428 00257388  38 60 04 58 */	li r3, 0x458
/* 8025A42C 0025738C  38 84 00 85 */	addi r4, r4, 0x85
/* 8025A430 00257390  38 A0 00 00 */	li r5, 0
/* 8025A434 00257394  48 0B B4 39 */	bl __nw__FUlPCcPCc
/* 8025A438 00257398  7C 7E 1B 79 */	or. r30, r3, r3
/* 8025A43C 0025739C  41 82 00 24 */	beq lbl_8025A460
/* 8025A440 002573A0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8025A444 002573A4  38 9F 0C D0 */	addi r4, r31, 0xcd0
/* 8025A448 002573A8  48 0E 6A 61 */	bl __ct__6CTokenFRC6CToken
/* 8025A44C 002573AC  7F C3 F3 78 */	mr r3, r30
/* 8025A450 002573B0  38 81 00 7C */	addi r4, r1, 0x7c
/* 8025A454 002573B4  3B 80 00 01 */	li r28, 1
/* 8025A458 002573B8  48 10 7D 19 */	bl "__ct__17CParticleElectricF30TToken<20CElectricDescription>"
/* 8025A45C 002573BC  7C 7E 1B 78 */	mr r30, r3
lbl_8025A460:
/* 8025A460 002573C0  7C 7E 00 D0 */	neg r3, r30
/* 8025A464 002573C4  7F 80 07 75 */	extsb. r0, r28
/* 8025A468 002573C8  7C 60 F3 78 */	or r0, r3, r30
/* 8025A46C 002573CC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8025A470 002573D0  98 1F 0C DC */	stb r0, 0xcdc(r31)
/* 8025A474 002573D4  93 DF 0C E0 */	stw r30, 0xce0(r31)
/* 8025A478 002573D8  41 82 00 10 */	beq lbl_8025A488
/* 8025A47C 002573DC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8025A480 002573E0  38 80 00 00 */	li r4, 0
/* 8025A484 002573E4  48 0E 69 BD */	bl __dt__6CTokenFv
lbl_8025A488:
/* 8025A488 002573E8  38 00 00 00 */	li r0, 0
/* 8025A48C 002573EC  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 8025A490 002573F0  90 1F 0C E4 */	stw r0, 0xce4(r31)
/* 8025A494 002573F4  38 63 4D 5C */	addi r3, r3, lbl_803D4D5C@l
/* 8025A498 002573F8  C0 02 B9 18 */	lfs f0, lbl_805AD638@sda21(r2)
/* 8025A49C 002573FC  38 83 00 85 */	addi r4, r3, 0x85
/* 8025A4A0 00257400  38 60 00 9C */	li r3, 0x9c
/* 8025A4A4 00257404  38 A0 00 00 */	li r5, 0
/* 8025A4A8 00257408  D0 1F 0D 08 */	stfs f0, 0xd08(r31)
/* 8025A4AC 0025740C  90 1F 0D 0C */	stw r0, 0xd0c(r31)
/* 8025A4B0 00257410  48 0B B3 BD */	bl __nw__FUlPCcPCc
/* 8025A4B4 00257414  7C 60 1B 79 */	or. r0, r3, r3
/* 8025A4B8 00257418  41 82 00 18 */	beq lbl_8025A4D0
/* 8025A4BC 0025741C  38 80 00 80 */	li r4, 0x80
/* 8025A4C0 00257420  38 A0 00 80 */	li r5, 0x80
/* 8025A4C4 00257424  38 C0 00 01 */	li r6, 1
/* 8025A4C8 00257428  48 04 3F 15 */	bl __ct__16CProjectedShadowFv
/* 8025A4CC 0025742C  7C 60 1B 78 */	mr r0, r3
lbl_8025A4D0:
/* 8025A4D0 00257430  90 1F 0D 10 */	stw r0, 0xd10(r31)
/* 8025A4D4 00257434  38 80 00 00 */	li r4, 0
/* 8025A4D8 00257438  38 7F 0B 68 */	addi r3, r31, 0xb68
/* 8025A4DC 0025743C  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 8025A4E0 00257440  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8025A4E4 00257444  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 8025A4E8 00257448  48 0E 68 9D */	bl Lock__6CTokenFv
/* 8025A4EC 0025744C  38 7F 0C 14 */	addi r3, r31, 0xc14
/* 8025A4F0 00257450  48 0E 68 95 */	bl Lock__6CTokenFv
/* 8025A4F4 00257454  38 7F 0C 3C */	addi r3, r31, 0xc3c
/* 8025A4F8 00257458  48 0E 68 8D */	bl Lock__6CTokenFv
/* 8025A4FC 0025745C  80 7F 0C E0 */	lwz r3, 0xce0(r31)
/* 8025A500 00257460  28 03 00 00 */	cmplwi r3, 0
/* 8025A504 00257464  41 82 00 18 */	beq lbl_8025A51C
/* 8025A508 00257468  81 83 00 00 */	lwz r12, 0(r3)
/* 8025A50C 0025746C  38 80 00 00 */	li r4, 0
/* 8025A510 00257470  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8025A514 00257474  7D 89 03 A6 */	mtctr r12
/* 8025A518 00257478  4E 80 04 21 */	bctrl
lbl_8025A51C:
/* 8025A51C 0025747C  3C 60 80 47 */	lis r3, lbl_8046D7E0@ha
/* 8025A520 00257480  3B BF 0C E4 */	addi r29, r31, 0xce4
/* 8025A524 00257484  3B C3 D7 E0 */	addi r30, r3, lbl_8046D7E0@l
/* 8025A528 00257488  3B 80 00 00 */	li r28, 0
lbl_8025A52C:
/* 8025A52C 0025748C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8025A530 00257490  7F C5 F3 78 */	mr r5, r30
/* 8025A534 00257494  38 61 00 20 */	addi r3, r1, 0x20
/* 8025A538 00257498  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8025A53C 0025749C  4B DD 42 FD */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025A540 002574A0  80 1D 00 00 */	lwz r0, 0(r29)
/* 8025A544 002574A4  7C 7D 02 14 */	add r3, r29, r0
/* 8025A548 002574A8  34 63 00 04 */	addic. r3, r3, 4
/* 8025A54C 002574AC  41 82 00 0C */	beq lbl_8025A558
/* 8025A550 002574B0  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8025A554 002574B4  98 03 00 00 */	stb r0, 0(r3)
lbl_8025A558:
/* 8025A558 002574B8  80 7F 0C E4 */	lwz r3, 0xce4(r31)
/* 8025A55C 002574BC  3B 9C 00 01 */	addi r28, r28, 1
/* 8025A560 002574C0  28 1C 00 1E */	cmplwi r28, 0x1e
/* 8025A564 002574C4  3B DE 00 10 */	addi r30, r30, 0x10
/* 8025A568 002574C8  38 03 00 01 */	addi r0, r3, 1
/* 8025A56C 002574CC  90 1F 0C E4 */	stw r0, 0xce4(r31)
/* 8025A570 002574D0  41 80 FF BC */	blt lbl_8025A52C
/* 8025A574 002574D4  38 61 00 3C */	addi r3, r1, 0x3c
/* 8025A578 002574D8  48 08 8B 05 */	bl NoParameter__12CPASAnimParmFv
/* 8025A57C 002574DC  38 61 00 44 */	addi r3, r1, 0x44
/* 8025A580 002574E0  48 08 8A FD */	bl NoParameter__12CPASAnimParmFv
/* 8025A584 002574E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8025A588 002574E8  48 08 8A F5 */	bl NoParameter__12CPASAnimParmFv
/* 8025A58C 002574EC  38 61 00 54 */	addi r3, r1, 0x54
/* 8025A590 002574F0  48 08 8A ED */	bl NoParameter__12CPASAnimParmFv
/* 8025A594 002574F4  38 61 00 5C */	addi r3, r1, 0x5c
/* 8025A598 002574F8  48 08 8A E5 */	bl NoParameter__12CPASAnimParmFv
/* 8025A59C 002574FC  38 61 00 64 */	addi r3, r1, 0x64
/* 8025A5A0 00257500  48 08 8A DD */	bl NoParameter__12CPASAnimParmFv
/* 8025A5A4 00257504  38 61 00 6C */	addi r3, r1, 0x6c
/* 8025A5A8 00257508  38 80 00 03 */	li r4, 3
/* 8025A5AC 0025750C  48 08 89 D9 */	bl FromEnum__12CPASAnimParmFi
/* 8025A5B0 00257510  38 61 00 74 */	addi r3, r1, 0x74
/* 8025A5B4 00257514  38 80 00 04 */	li r4, 4
/* 8025A5B8 00257518  48 08 89 CD */	bl FromEnum__12CPASAnimParmFi
/* 8025A5BC 0025751C  38 61 00 44 */	addi r3, r1, 0x44
/* 8025A5C0 00257520  38 01 00 3C */	addi r0, r1, 0x3c
/* 8025A5C4 00257524  90 61 00 08 */	stw r3, 8(r1)
/* 8025A5C8 00257528  38 61 01 74 */	addi r3, r1, 0x174
/* 8025A5CC 0025752C  38 A1 00 74 */	addi r5, r1, 0x74
/* 8025A5D0 00257530  38 C1 00 6C */	addi r6, r1, 0x6c
/* 8025A5D4 00257534  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025A5D8 00257538  38 E1 00 64 */	addi r7, r1, 0x64
/* 8025A5DC 0025753C  39 01 00 5C */	addi r8, r1, 0x5c
/* 8025A5E0 00257540  39 21 00 54 */	addi r9, r1, 0x54
/* 8025A5E4 00257544  39 41 00 4C */	addi r10, r1, 0x4c
/* 8025A5E8 00257548  38 80 00 07 */	li r4, 7
/* 8025A5EC 0025754C  4B E2 2C D9 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8025A5F0 00257550  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 8025A5F4 00257554  7F E3 FB 78 */	mr r3, r31
/* 8025A5F8 00257558  38 81 01 74 */	addi r4, r1, 0x174
/* 8025A5FC 0025755C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8025A600 00257560  C0 25 00 04 */	lfs f1, 4(r5)
/* 8025A604 00257564  C0 05 00 08 */	lfs f0, 8(r5)
/* 8025A608 00257568  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 8025A60C 0025756C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8025A610 00257570  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8025A614 00257574  4B E2 23 ED */	bl func_8007CA00
/* 8025A618 00257578  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8025A61C 0025757C  34 A1 01 78 */	addic. r5, r1, 0x178
/* 8025A620 00257580  EC 00 00 72 */	fmuls f0, f0, f1
/* 8025A624 00257584  D0 1F 0A E4 */	stfs f0, 0xae4(r31)
/* 8025A628 00257588  41 82 00 58 */	beq lbl_8025A680
/* 8025A62C 0025758C  80 C5 00 00 */	lwz r6, 0(r5)
/* 8025A630 00257590  38 60 00 00 */	li r3, 0
/* 8025A634 00257594  2C 06 00 00 */	cmpwi r6, 0
/* 8025A638 00257598  40 81 00 40 */	ble lbl_8025A678
/* 8025A63C 0025759C  2C 06 00 08 */	cmpwi r6, 8
/* 8025A640 002575A0  38 86 FF F8 */	addi r4, r6, -8
/* 8025A644 002575A4  40 81 00 20 */	ble lbl_8025A664
/* 8025A648 002575A8  38 04 00 07 */	addi r0, r4, 7
/* 8025A64C 002575AC  54 00 E8 FE */	srwi r0, r0, 3
/* 8025A650 002575B0  7C 09 03 A6 */	mtctr r0
/* 8025A654 002575B4  2C 04 00 00 */	cmpwi r4, 0
/* 8025A658 002575B8  40 81 00 0C */	ble lbl_8025A664
lbl_8025A65C:
/* 8025A65C 002575BC  38 63 00 08 */	addi r3, r3, 8
/* 8025A660 002575C0  42 00 FF FC */	bdnz lbl_8025A65C
lbl_8025A664:
/* 8025A664 002575C4  7C 03 30 50 */	subf r0, r3, r6
/* 8025A668 002575C8  7C 09 03 A6 */	mtctr r0
/* 8025A66C 002575CC  7C 03 30 00 */	cmpw r3, r6
/* 8025A670 002575D0  40 80 00 08 */	bge lbl_8025A678
lbl_8025A674:
/* 8025A674 002575D4  42 00 00 00 */	bdnz lbl_8025A674
lbl_8025A678:
/* 8025A678 002575D8  38 00 00 00 */	li r0, 0
/* 8025A67C 002575DC  90 05 00 00 */	stw r0, 0(r5)
lbl_8025A680:
/* 8025A680 002575E0  38 7F 04 60 */	addi r3, r31, 0x460
/* 8025A684 002575E4  38 80 00 01 */	li r4, 1
/* 8025A688 002575E8  38 A0 00 01 */	li r5, 1
/* 8025A68C 002575EC  4B FD 97 09 */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
/* 8025A690 002575F0  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8025A694 002575F4  38 A0 00 00 */	li r5, 0
/* 8025A698 002575F8  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8025A69C 002575FC  7F E3 FB 78 */	mr r3, r31
/* 8025A6A0 00257600  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8025A6A4 00257604  38 80 00 00 */	li r4, 0
/* 8025A6A8 00257608  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8025A6AC 0025760C  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8025A6B0 00257610  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8025A6B4 00257614  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8025A6B8 00257618  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 8025A6BC 0025761C  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8025A6C0 00257620  88 1F 04 E1 */	lbz r0, 0x4e1(r31)
/* 8025A6C4 00257624  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 8025A6C8 00257628  98 1F 04 E1 */	stb r0, 0x4e1(r31)
/* 8025A6CC 0025762C  4B DF 86 A1 */	bl CreateShadow__6CActorFb
/* 8025A6D0 00257630  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8025A6D4 00257634  7F E3 FB 78 */	mr r3, r31
/* 8025A6D8 00257638  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 8025A6DC 0025763C  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 8025A6E0 00257640  83 A1 01 C4 */	lwz r29, 0x1c4(r1)
/* 8025A6E4 00257644  83 81 01 C0 */	lwz r28, 0x1c0(r1)
/* 8025A6E8 00257648  7C 08 03 A6 */	mtlr r0
/* 8025A6EC 0025764C  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8025A6F0 00257650  4E 80 00 20 */	blr

.global sub_8025a6f4
sub_8025a6f4:
/* 8025A6F4 00257654  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 8025A6F8 00257658  7C 08 02 A6 */	mflr r0
/* 8025A6FC 0025765C  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 8025A700 00257660  93 E1 02 AC */	stw r31, 0x2ac(r1)
/* 8025A704 00257664  7C BF 2B 78 */	mr r31, r5
/* 8025A708 00257668  93 C1 02 A8 */	stw r30, 0x2a8(r1)
/* 8025A70C 0025766C  7C 9E 23 78 */	mr r30, r4
/* 8025A710 00257670  93 A1 02 A4 */	stw r29, 0x2a4(r1)
/* 8025A714 00257674  7C 7D 1B 78 */	mr r29, r3
/* 8025A718 00257678  7F C3 F3 78 */	mr r3, r30
/* 8025A71C 0025767C  48 0E 45 69 */	bl ReadLong__12CInputStreamFv
/* 8025A720 00257680  90 7D 00 00 */	stw r3, 0(r29)
/* 8025A724 00257684  7F C3 F3 78 */	mr r3, r30
/* 8025A728 00257688  48 0E 45 5D */	bl ReadLong__12CInputStreamFv
/* 8025A72C 0025768C  90 7D 00 04 */	stw r3, 4(r29)
/* 8025A730 00257690  7F C3 F3 78 */	mr r3, r30
/* 8025A734 00257694  48 0E 45 51 */	bl ReadLong__12CInputStreamFv
/* 8025A738 00257698  90 7D 00 08 */	stw r3, 8(r29)
/* 8025A73C 0025769C  7F C3 F3 78 */	mr r3, r30
/* 8025A740 002576A0  48 0E 45 45 */	bl ReadLong__12CInputStreamFv
/* 8025A744 002576A4  90 7D 00 0C */	stw r3, 0xc(r29)
/* 8025A748 002576A8  7F C3 F3 78 */	mr r3, r30
/* 8025A74C 002576AC  48 0E 45 39 */	bl ReadLong__12CInputStreamFv
/* 8025A750 002576B0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8025A754 002576B4  7F C3 F3 78 */	mr r3, r30
/* 8025A758 002576B8  48 0E 45 2D */	bl ReadLong__12CInputStreamFv
/* 8025A75C 002576BC  90 7D 00 14 */	stw r3, 0x14(r29)
/* 8025A760 002576C0  7F C3 F3 78 */	mr r3, r30
/* 8025A764 002576C4  48 0E 45 21 */	bl ReadLong__12CInputStreamFv
/* 8025A768 002576C8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8025A76C 002576CC  7F C3 F3 78 */	mr r3, r30
/* 8025A770 002576D0  48 0E 45 15 */	bl ReadLong__12CInputStreamFv
/* 8025A774 002576D4  90 7D 00 1C */	stw r3, 0x1c(r29)
/* 8025A778 002576D8  7F C3 F3 78 */	mr r3, r30
/* 8025A77C 002576DC  48 0E 45 09 */	bl ReadLong__12CInputStreamFv
/* 8025A780 002576E0  90 7D 00 20 */	stw r3, 0x20(r29)
/* 8025A784 002576E4  7F C3 F3 78 */	mr r3, r30
/* 8025A788 002576E8  48 0E 44 FD */	bl ReadLong__12CInputStreamFv
/* 8025A78C 002576EC  90 7D 00 24 */	stw r3, 0x24(r29)
/* 8025A790 002576F0  7F C3 F3 78 */	mr r3, r30
/* 8025A794 002576F4  48 0E 44 F1 */	bl ReadLong__12CInputStreamFv
/* 8025A798 002576F8  90 7D 00 28 */	stw r3, 0x28(r29)
/* 8025A79C 002576FC  7F C3 F3 78 */	mr r3, r30
/* 8025A7A0 00257700  48 0E 44 E5 */	bl ReadLong__12CInputStreamFv
/* 8025A7A4 00257704  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 8025A7A8 00257708  7F C3 F3 78 */	mr r3, r30
/* 8025A7AC 0025770C  48 0E 44 D9 */	bl ReadLong__12CInputStreamFv
/* 8025A7B0 00257710  90 7D 00 30 */	stw r3, 0x30(r29)
/* 8025A7B4 00257714  7F C3 F3 78 */	mr r3, r30
/* 8025A7B8 00257718  48 0E 44 71 */	bl ReadFloat__12CInputStreamFv
/* 8025A7BC 0025771C  D0 3D 00 34 */	stfs f1, 0x34(r29)
/* 8025A7C0 00257720  7F C3 F3 78 */	mr r3, r30
/* 8025A7C4 00257724  48 0E 44 65 */	bl ReadFloat__12CInputStreamFv
/* 8025A7C8 00257728  D0 3D 00 38 */	stfs f1, 0x38(r29)
/* 8025A7CC 0025772C  7F C3 F3 78 */	mr r3, r30
/* 8025A7D0 00257730  48 0E 44 59 */	bl ReadFloat__12CInputStreamFv
/* 8025A7D4 00257734  D0 3D 00 3C */	stfs f1, 0x3c(r29)
/* 8025A7D8 00257738  7F C3 F3 78 */	mr r3, r30
/* 8025A7DC 0025773C  48 0E 44 4D */	bl ReadFloat__12CInputStreamFv
/* 8025A7E0 00257740  D0 3D 00 40 */	stfs f1, 0x40(r29)
/* 8025A7E4 00257744  7F C3 F3 78 */	mr r3, r30
/* 8025A7E8 00257748  48 0E 44 9D */	bl ReadLong__12CInputStreamFv
/* 8025A7EC 0025774C  90 7D 00 44 */	stw r3, 0x44(r29)
/* 8025A7F0 00257750  7F C4 F3 78 */	mr r4, r30
/* 8025A7F4 00257754  38 7D 00 48 */	addi r3, r29, 0x48
/* 8025A7F8 00257758  4B E6 8D 69 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A7FC 0025775C  7F C4 F3 78 */	mr r4, r30
/* 8025A800 00257760  38 7D 00 64 */	addi r3, r29, 0x64
/* 8025A804 00257764  4B E6 BD 4D */	bl __ct__9CBeamInfoFR12CInputStream
/* 8025A808 00257768  7F C3 F3 78 */	mr r3, r30
/* 8025A80C 0025776C  48 0E 44 79 */	bl ReadLong__12CInputStreamFv
/* 8025A810 00257770  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8025A814 00257774  48 08 E1 9D */	bl TranslateSFXID__11CSfxManagerFUs
/* 8025A818 00257778  B0 7D 00 A8 */	sth r3, 0xa8(r29)
/* 8025A81C 0025777C  7F C3 F3 78 */	mr r3, r30
/* 8025A820 00257780  48 0E 44 65 */	bl ReadLong__12CInputStreamFv
/* 8025A824 00257784  90 7D 00 AC */	stw r3, 0xac(r29)
/* 8025A828 00257788  7F C4 F3 78 */	mr r4, r30
/* 8025A82C 0025778C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 8025A830 00257790  4B E6 8D 31 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A834 00257794  7F C4 F3 78 */	mr r4, r30
/* 8025A838 00257798  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8025A83C 0025779C  4B F0 21 F5 */	bl __ct__16CCameraShakeDataFR12CInputStream
/* 8025A840 002577A0  38 7D 00 CC */	addi r3, r29, 0xcc
/* 8025A844 002577A4  38 81 01 CC */	addi r4, r1, 0x1cc
/* 8025A848 002577A8  4B DB 05 61 */	bl __ct__16CCameraShakeDataFRC16CCameraShakeData
/* 8025A84C 002577AC  34 81 02 4C */	addic. r4, r1, 0x24c
/* 8025A850 002577B0  41 82 00 10 */	beq lbl_8025A860
/* 8025A854 002577B4  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A858 002577B8  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A85C 002577BC  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A860:
/* 8025A860 002577C0  34 81 02 10 */	addic. r4, r1, 0x210
/* 8025A864 002577C4  41 82 00 10 */	beq lbl_8025A874
/* 8025A868 002577C8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A86C 002577CC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A870 002577D0  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A874:
/* 8025A874 002577D4  34 81 01 D4 */	addic. r4, r1, 0x1d4
/* 8025A878 002577D8  41 82 00 10 */	beq lbl_8025A888
/* 8025A87C 002577DC  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A880 002577E0  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A884 002577E4  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A888:
/* 8025A888 002577E8  7F C3 F3 78 */	mr r3, r30
/* 8025A88C 002577EC  48 0E 43 F9 */	bl ReadLong__12CInputStreamFv
/* 8025A890 002577F0  90 7D 01 A0 */	stw r3, 0x1a0(r29)
/* 8025A894 002577F4  7F C4 F3 78 */	mr r4, r30
/* 8025A898 002577F8  38 7D 01 A4 */	addi r3, r29, 0x1a4
/* 8025A89C 002577FC  4B E6 8C C5 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A8A0 00257800  7F C4 F3 78 */	mr r4, r30
/* 8025A8A4 00257804  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8025A8A8 00257808  4B F0 21 89 */	bl __ct__16CCameraShakeDataFR12CInputStream
/* 8025A8AC 0025780C  38 7D 01 C0 */	addi r3, r29, 0x1c0
/* 8025A8B0 00257810  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8025A8B4 00257814  4B DB 04 F5 */	bl __ct__16CCameraShakeDataFRC16CCameraShakeData
/* 8025A8B8 00257818  34 81 01 78 */	addic. r4, r1, 0x178
/* 8025A8BC 0025781C  41 82 00 10 */	beq lbl_8025A8CC
/* 8025A8C0 00257820  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A8C4 00257824  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A8C8 00257828  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A8CC:
/* 8025A8CC 0025782C  34 81 01 3C */	addic. r4, r1, 0x13c
/* 8025A8D0 00257830  41 82 00 10 */	beq lbl_8025A8E0
/* 8025A8D4 00257834  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A8D8 00257838  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A8DC 0025783C  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A8E0:
/* 8025A8E0 00257840  34 81 01 00 */	addic. r4, r1, 0x100
/* 8025A8E4 00257844  41 82 00 10 */	beq lbl_8025A8F4
/* 8025A8E8 00257848  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A8EC 0025784C  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A8F0 00257850  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A8F4:
/* 8025A8F4 00257854  7F C3 F3 78 */	mr r3, r30
/* 8025A8F8 00257858  48 0E 43 8D */	bl ReadLong__12CInputStreamFv
/* 8025A8FC 0025785C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8025A900 00257860  48 08 E0 B1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8025A904 00257864  B0 7D 02 94 */	sth r3, 0x294(r29)
/* 8025A908 00257868  7F C4 F3 78 */	mr r4, r30
/* 8025A90C 0025786C  38 7D 02 98 */	addi r3, r29, 0x298
/* 8025A910 00257870  4B E6 8C 51 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A914 00257874  7F C4 F3 78 */	mr r4, r30
/* 8025A918 00257878  38 61 00 24 */	addi r3, r1, 0x24
/* 8025A91C 0025787C  4B F0 21 15 */	bl __ct__16CCameraShakeDataFR12CInputStream
/* 8025A920 00257880  38 7D 02 B4 */	addi r3, r29, 0x2b4
/* 8025A924 00257884  38 81 00 24 */	addi r4, r1, 0x24
/* 8025A928 00257888  4B DB 04 81 */	bl __ct__16CCameraShakeDataFRC16CCameraShakeData
/* 8025A92C 0025788C  34 81 00 A4 */	addic. r4, r1, 0xa4
/* 8025A930 00257890  41 82 00 10 */	beq lbl_8025A940
/* 8025A934 00257894  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A938 00257898  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A93C 0025789C  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A940:
/* 8025A940 002578A0  34 81 00 68 */	addic. r4, r1, 0x68
/* 8025A944 002578A4  41 82 00 10 */	beq lbl_8025A954
/* 8025A948 002578A8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A94C 002578AC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A950 002578B0  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A954:
/* 8025A954 002578B4  34 81 00 2C */	addic. r4, r1, 0x2c
/* 8025A958 002578B8  41 82 00 10 */	beq lbl_8025A968
/* 8025A95C 002578BC  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8025A960 002578C0  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8025A964 002578C4  90 04 00 00 */	stw r0, 0(r4)
lbl_8025A968:
/* 8025A968 002578C8  7F C3 F3 78 */	mr r3, r30
/* 8025A96C 002578CC  48 0E 42 BD */	bl ReadFloat__12CInputStreamFv
/* 8025A970 002578D0  D0 3D 03 88 */	stfs f1, 0x388(r29)
/* 8025A974 002578D4  7F C3 F3 78 */	mr r3, r30
/* 8025A978 002578D8  48 0E 42 B1 */	bl ReadFloat__12CInputStreamFv
/* 8025A97C 002578DC  D0 3D 03 8C */	stfs f1, 0x38c(r29)
/* 8025A980 002578E0  7F C4 F3 78 */	mr r4, r30
/* 8025A984 002578E4  38 7D 03 90 */	addi r3, r29, 0x390
/* 8025A988 002578E8  4B E6 8B D9 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A98C 002578EC  7F C3 F3 78 */	mr r3, r30
/* 8025A990 002578F0  48 0E 42 99 */	bl ReadFloat__12CInputStreamFv
/* 8025A994 002578F4  D0 3D 03 AC */	stfs f1, 0x3ac(r29)
/* 8025A998 002578F8  7F C4 F3 78 */	mr r4, r30
/* 8025A99C 002578FC  38 7D 03 B0 */	addi r3, r29, 0x3b0
/* 8025A9A0 00257900  4B E6 8B C1 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A9A4 00257904  7F C3 F3 78 */	mr r3, r30
/* 8025A9A8 00257908  48 0E 42 81 */	bl ReadFloat__12CInputStreamFv
/* 8025A9AC 0025790C  D0 3D 03 CC */	stfs f1, 0x3cc(r29)
/* 8025A9B0 00257910  7F C4 F3 78 */	mr r4, r30
/* 8025A9B4 00257914  38 7D 03 D0 */	addi r3, r29, 0x3d0
/* 8025A9B8 00257918  4B E6 8B A9 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025A9BC 0025791C  7F C3 F3 78 */	mr r3, r30
/* 8025A9C0 00257920  48 0E 42 69 */	bl ReadFloat__12CInputStreamFv
/* 8025A9C4 00257924  D0 3D 03 EC */	stfs f1, 0x3ec(r29)
/* 8025A9C8 00257928  7F C3 F3 78 */	mr r3, r30
/* 8025A9CC 0025792C  48 0E 42 B9 */	bl ReadLong__12CInputStreamFv
/* 8025A9D0 00257930  90 7D 03 F0 */	stw r3, 0x3f0(r29)
/* 8025A9D4 00257934  7F C3 F3 78 */	mr r3, r30
/* 8025A9D8 00257938  48 0E 42 51 */	bl ReadFloat__12CInputStreamFv
/* 8025A9DC 0025793C  D0 3D 03 F4 */	stfs f1, 0x3f4(r29)
/* 8025A9E0 00257940  7F C3 F3 78 */	mr r3, r30
/* 8025A9E4 00257944  48 0E 42 A1 */	bl ReadLong__12CInputStreamFv
/* 8025A9E8 00257948  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8025A9EC 0025794C  48 08 DF C5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8025A9F0 00257950  2C 1F 00 2F */	cmpwi r31, 0x2f
/* 8025A9F4 00257954  B0 7D 03 F8 */	sth r3, 0x3f8(r29)
/* 8025A9F8 00257958  40 81 00 18 */	ble lbl_8025AA10
/* 8025A9FC 0025795C  7F C4 F3 78 */	mr r4, r30
/* 8025AA00 00257960  38 61 00 08 */	addi r3, r1, 8
/* 8025AA04 00257964  4B E6 8B 5D */	bl __ct__11CDamageInfoFR12CInputStream
/* 8025AA08 00257968  7C 64 1B 78 */	mr r4, r3
/* 8025AA0C 0025796C  48 00 00 08 */	b lbl_8025AA14
lbl_8025AA10:
/* 8025AA10 00257970  38 9D 00 48 */	addi r4, r29, 0x48
lbl_8025AA14:
/* 8025AA14 00257974  80 04 00 00 */	lwz r0, 0(r4)
/* 8025AA18 00257978  7F A3 EB 78 */	mr r3, r29
/* 8025AA1C 0025797C  90 1D 03 FC */	stw r0, 0x3fc(r29)
/* 8025AA20 00257980  88 04 00 04 */	lbz r0, 4(r4)
/* 8025AA24 00257984  98 1D 04 00 */	stb r0, 0x400(r29)
/* 8025AA28 00257988  C0 04 00 08 */	lfs f0, 8(r4)
/* 8025AA2C 0025798C  D0 1D 04 04 */	stfs f0, 0x404(r29)
/* 8025AA30 00257990  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8025AA34 00257994  D0 1D 04 08 */	stfs f0, 0x408(r29)
/* 8025AA38 00257998  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8025AA3C 0025799C  D0 1D 04 0C */	stfs f0, 0x40c(r29)
/* 8025AA40 002579A0  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8025AA44 002579A4  D0 1D 04 10 */	stfs f0, 0x410(r29)
/* 8025AA48 002579A8  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8025AA4C 002579AC  98 1D 04 14 */	stb r0, 0x414(r29)
/* 8025AA50 002579B0  83 E1 02 AC */	lwz r31, 0x2ac(r1)
/* 8025AA54 002579B4  83 C1 02 A8 */	lwz r30, 0x2a8(r1)
/* 8025AA58 002579B8  83 A1 02 A4 */	lwz r29, 0x2a4(r1)
/* 8025AA5C 002579BC  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 8025AA60 002579C0  7C 08 03 A6 */	mtlr r0
/* 8025AA64 002579C4  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 8025AA68 002579C8  4E 80 00 20 */	blr

.global __sinit_CRidley_cpp
__sinit_CRidley_cpp:
/* 8025AA6C 002579CC  94 21 F9 00 */	stwu r1, -0x700(r1)
/* 8025AA70 002579D0  7C 08 02 A6 */	mflr r0
/* 8025AA74 002579D4  3C 60 80 3D */	lis r3, lbl_803D4D5C@ha
/* 8025AA78 002579D8  3C A0 80 47 */	lis r5, lbl_8046D3A8@ha
/* 8025AA7C 002579DC  90 01 07 04 */	stw r0, 0x704(r1)
/* 8025AA80 002579E0  38 83 4D 5C */	addi r4, r3, lbl_803D4D5C@l
/* 8025AA84 002579E4  38 61 05 B8 */	addi r3, r1, 0x5b8
/* 8025AA88 002579E8  BD C1 06 B8 */	stmw r14, 0x6b8(r1)
/* 8025AA8C 002579EC  39 C5 D3 A8 */	addi r14, r5, lbl_8046D3A8@l
/* 8025AA90 002579F0  38 84 00 39 */	addi r4, r4, 0x39
/* 8025AA94 002579F4  4B DA A2 25 */	bl string_l__4rstlFPCc
/* 8025AA98 002579F8  3C 60 80 57 */	lis r3, lbl_80572404@ha
/* 8025AA9C 002579FC  38 81 05 B8 */	addi r4, r1, 0x5b8
/* 8025AAA0 00257A00  38 63 24 04 */	addi r3, r3, lbl_80572404@l
/* 8025AAA4 00257A04  48 0E 36 BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AAA8 00257A08  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AAAC 00257A0C  38 AE 00 00 */	addi r5, r14, 0
/* 8025AAB0 00257A10  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AAB4 00257A14  48 12 EB D9 */	bl __register_global_object
/* 8025AAB8 00257A18  38 61 05 B8 */	addi r3, r1, 0x5b8
/* 8025AABC 00257A1C  48 0E 30 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AAC0 00257A20  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AAC4 00257A24  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 8025AAC8 00257A28  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AACC 00257A2C  38 84 00 A1 */	addi r4, r4, 0xa1
/* 8025AAD0 00257A30  4B DA A1 E9 */	bl string_l__4rstlFPCc
/* 8025AAD4 00257A34  3C 60 80 57 */	lis r3, lbl_80572514@ha
/* 8025AAD8 00257A38  38 81 05 A8 */	addi r4, r1, 0x5a8
/* 8025AADC 00257A3C  38 63 25 14 */	addi r3, r3, lbl_80572514@l
/* 8025AAE0 00257A40  48 0E 36 81 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AAE4 00257A44  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AAE8 00257A48  38 AE 00 0C */	addi r5, r14, 0xc
/* 8025AAEC 00257A4C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AAF0 00257A50  48 12 EB 9D */	bl __register_global_object
/* 8025AAF4 00257A54  38 61 05 A8 */	addi r3, r1, 0x5a8
/* 8025AAF8 00257A58  48 0E 2F E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AAFC 00257A5C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AB00 00257A60  38 61 05 98 */	addi r3, r1, 0x598
/* 8025AB04 00257A64  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AB08 00257A68  38 84 00 4A */	addi r4, r4, 0x4a
/* 8025AB0C 00257A6C  4B DA A1 AD */	bl string_l__4rstlFPCc
/* 8025AB10 00257A70  3C 60 80 57 */	lis r3, lbl_80572524@ha
/* 8025AB14 00257A74  38 81 05 98 */	addi r4, r1, 0x598
/* 8025AB18 00257A78  38 63 25 24 */	addi r3, r3, lbl_80572524@l
/* 8025AB1C 00257A7C  48 0E 36 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AB20 00257A80  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AB24 00257A84  38 AE 00 18 */	addi r5, r14, 0x18
/* 8025AB28 00257A88  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AB2C 00257A8C  48 12 EB 61 */	bl __register_global_object
/* 8025AB30 00257A90  38 61 05 98 */	addi r3, r1, 0x598
/* 8025AB34 00257A94  48 0E 2F AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AB38 00257A98  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AB3C 00257A9C  38 61 05 88 */	addi r3, r1, 0x588
/* 8025AB40 00257AA0  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AB44 00257AA4  38 84 00 23 */	addi r4, r4, 0x23
/* 8025AB48 00257AA8  4B DA A1 71 */	bl string_l__4rstlFPCc
/* 8025AB4C 00257AAC  3C 60 80 57 */	lis r3, lbl_80572534@ha
/* 8025AB50 00257AB0  38 81 05 88 */	addi r4, r1, 0x588
/* 8025AB54 00257AB4  38 63 25 34 */	addi r3, r3, lbl_80572534@l
/* 8025AB58 00257AB8  48 0E 36 09 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AB5C 00257ABC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AB60 00257AC0  38 AE 00 24 */	addi r5, r14, 0x24
/* 8025AB64 00257AC4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AB68 00257AC8  48 12 EB 25 */	bl __register_global_object
/* 8025AB6C 00257ACC  38 61 05 88 */	addi r3, r1, 0x588
/* 8025AB70 00257AD0  48 0E 2F 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AB74 00257AD4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AB78 00257AD8  38 61 05 78 */	addi r3, r1, 0x578
/* 8025AB7C 00257ADC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AB80 00257AE0  38 84 00 AC */	addi r4, r4, 0xac
/* 8025AB84 00257AE4  4B DA A1 35 */	bl string_l__4rstlFPCc
/* 8025AB88 00257AE8  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AB8C 00257AEC  38 81 05 78 */	addi r4, r1, 0x578
/* 8025AB90 00257AF0  48 0E 35 D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AB94 00257AF4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AB98 00257AF8  38 AE 00 30 */	addi r5, r14, 0x30
/* 8025AB9C 00257AFC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025ABA0 00257B00  48 12 EA ED */	bl __register_global_object
/* 8025ABA4 00257B04  38 61 05 78 */	addi r3, r1, 0x578
/* 8025ABA8 00257B08  48 0E 2F 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025ABAC 00257B0C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025ABB0 00257B10  38 61 05 68 */	addi r3, r1, 0x568
/* 8025ABB4 00257B14  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025ABB8 00257B18  38 84 00 BC */	addi r4, r4, 0xbc
/* 8025ABBC 00257B1C  4B DA A0 FD */	bl string_l__4rstlFPCc
/* 8025ABC0 00257B20  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025ABC4 00257B24  38 81 05 68 */	addi r4, r1, 0x568
/* 8025ABC8 00257B28  38 63 00 10 */	addi r3, r3, 0x10
/* 8025ABCC 00257B2C  48 0E 35 95 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025ABD0 00257B30  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025ABD4 00257B34  38 AE 00 3C */	addi r5, r14, 0x3c
/* 8025ABD8 00257B38  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025ABDC 00257B3C  48 12 EA B1 */	bl __register_global_object
/* 8025ABE0 00257B40  38 61 05 68 */	addi r3, r1, 0x568
/* 8025ABE4 00257B44  48 0E 2E FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025ABE8 00257B48  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025ABEC 00257B4C  38 61 05 58 */	addi r3, r1, 0x558
/* 8025ABF0 00257B50  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025ABF4 00257B54  38 84 00 CC */	addi r4, r4, 0xcc
/* 8025ABF8 00257B58  4B DA A0 C1 */	bl string_l__4rstlFPCc
/* 8025ABFC 00257B5C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AC00 00257B60  38 81 05 58 */	addi r4, r1, 0x558
/* 8025AC04 00257B64  38 63 00 20 */	addi r3, r3, 0x20
/* 8025AC08 00257B68  48 0E 35 59 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AC0C 00257B6C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AC10 00257B70  38 AE 00 48 */	addi r5, r14, 0x48
/* 8025AC14 00257B74  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AC18 00257B78  48 12 EA 75 */	bl __register_global_object
/* 8025AC1C 00257B7C  38 61 05 58 */	addi r3, r1, 0x558
/* 8025AC20 00257B80  48 0E 2E C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AC24 00257B84  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AC28 00257B88  38 61 05 48 */	addi r3, r1, 0x548
/* 8025AC2C 00257B8C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AC30 00257B90  38 84 00 DC */	addi r4, r4, 0xdc
/* 8025AC34 00257B94  4B DA A0 85 */	bl string_l__4rstlFPCc
/* 8025AC38 00257B98  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AC3C 00257B9C  38 81 05 48 */	addi r4, r1, 0x548
/* 8025AC40 00257BA0  38 63 00 30 */	addi r3, r3, 0x30
/* 8025AC44 00257BA4  48 0E 35 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AC48 00257BA8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AC4C 00257BAC  38 AE 00 54 */	addi r5, r14, 0x54
/* 8025AC50 00257BB0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AC54 00257BB4  48 12 EA 39 */	bl __register_global_object
/* 8025AC58 00257BB8  38 61 05 48 */	addi r3, r1, 0x548
/* 8025AC5C 00257BBC  48 0E 2E 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AC60 00257BC0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AC64 00257BC4  38 61 05 38 */	addi r3, r1, 0x538
/* 8025AC68 00257BC8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AC6C 00257BCC  38 84 00 EC */	addi r4, r4, 0xec
/* 8025AC70 00257BD0  4B DA A0 49 */	bl string_l__4rstlFPCc
/* 8025AC74 00257BD4  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AC78 00257BD8  38 81 05 38 */	addi r4, r1, 0x538
/* 8025AC7C 00257BDC  38 63 00 40 */	addi r3, r3, 0x40
/* 8025AC80 00257BE0  48 0E 34 E1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AC84 00257BE4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AC88 00257BE8  38 AE 00 60 */	addi r5, r14, 0x60
/* 8025AC8C 00257BEC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AC90 00257BF0  48 12 E9 FD */	bl __register_global_object
/* 8025AC94 00257BF4  38 61 05 38 */	addi r3, r1, 0x538
/* 8025AC98 00257BF8  48 0E 2E 49 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AC9C 00257BFC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025ACA0 00257C00  38 61 05 28 */	addi r3, r1, 0x528
/* 8025ACA4 00257C04  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025ACA8 00257C08  38 84 00 FC */	addi r4, r4, 0xfc
/* 8025ACAC 00257C0C  4B DA A0 0D */	bl string_l__4rstlFPCc
/* 8025ACB0 00257C10  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025ACB4 00257C14  38 81 05 28 */	addi r4, r1, 0x528
/* 8025ACB8 00257C18  38 63 00 50 */	addi r3, r3, 0x50
/* 8025ACBC 00257C1C  48 0E 34 A5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025ACC0 00257C20  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025ACC4 00257C24  38 AE 00 6C */	addi r5, r14, 0x6c
/* 8025ACC8 00257C28  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025ACCC 00257C2C  48 12 E9 C1 */	bl __register_global_object
/* 8025ACD0 00257C30  38 61 05 28 */	addi r3, r1, 0x528
/* 8025ACD4 00257C34  48 0E 2E 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025ACD8 00257C38  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025ACDC 00257C3C  38 61 05 18 */	addi r3, r1, 0x518
/* 8025ACE0 00257C40  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025ACE4 00257C44  38 84 01 0C */	addi r4, r4, 0x10c
/* 8025ACE8 00257C48  4B DA 9F D1 */	bl string_l__4rstlFPCc
/* 8025ACEC 00257C4C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025ACF0 00257C50  38 81 05 18 */	addi r4, r1, 0x518
/* 8025ACF4 00257C54  38 63 00 60 */	addi r3, r3, 0x60
/* 8025ACF8 00257C58  48 0E 34 69 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025ACFC 00257C5C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AD00 00257C60  38 AE 00 78 */	addi r5, r14, 0x78
/* 8025AD04 00257C64  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AD08 00257C68  48 12 E9 85 */	bl __register_global_object
/* 8025AD0C 00257C6C  38 61 05 18 */	addi r3, r1, 0x518
/* 8025AD10 00257C70  48 0E 2D D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AD14 00257C74  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AD18 00257C78  38 61 05 08 */	addi r3, r1, 0x508
/* 8025AD1C 00257C7C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AD20 00257C80  38 84 01 1C */	addi r4, r4, 0x11c
/* 8025AD24 00257C84  4B DA 9F 95 */	bl string_l__4rstlFPCc
/* 8025AD28 00257C88  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AD2C 00257C8C  38 81 05 08 */	addi r4, r1, 0x508
/* 8025AD30 00257C90  38 63 00 70 */	addi r3, r3, 0x70
/* 8025AD34 00257C94  48 0E 34 2D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AD38 00257C98  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AD3C 00257C9C  38 AE 00 84 */	addi r5, r14, 0x84
/* 8025AD40 00257CA0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AD44 00257CA4  48 12 E9 49 */	bl __register_global_object
/* 8025AD48 00257CA8  38 61 05 08 */	addi r3, r1, 0x508
/* 8025AD4C 00257CAC  48 0E 2D 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AD50 00257CB0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AD54 00257CB4  38 61 04 F8 */	addi r3, r1, 0x4f8
/* 8025AD58 00257CB8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AD5C 00257CBC  38 84 01 2C */	addi r4, r4, 0x12c
/* 8025AD60 00257CC0  4B DA 9F 59 */	bl string_l__4rstlFPCc
/* 8025AD64 00257CC4  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AD68 00257CC8  38 81 04 F8 */	addi r4, r1, 0x4f8
/* 8025AD6C 00257CCC  38 63 00 80 */	addi r3, r3, 0x80
/* 8025AD70 00257CD0  48 0E 33 F1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AD74 00257CD4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AD78 00257CD8  38 AE 00 90 */	addi r5, r14, 0x90
/* 8025AD7C 00257CDC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AD80 00257CE0  48 12 E9 0D */	bl __register_global_object
/* 8025AD84 00257CE4  38 61 04 F8 */	addi r3, r1, 0x4f8
/* 8025AD88 00257CE8  48 0E 2D 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AD8C 00257CEC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AD90 00257CF0  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 8025AD94 00257CF4  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AD98 00257CF8  38 84 01 36 */	addi r4, r4, 0x136
/* 8025AD9C 00257CFC  4B DA 9F 1D */	bl string_l__4rstlFPCc
/* 8025ADA0 00257D00  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025ADA4 00257D04  38 81 04 E8 */	addi r4, r1, 0x4e8
/* 8025ADA8 00257D08  38 63 00 90 */	addi r3, r3, 0x90
/* 8025ADAC 00257D0C  48 0E 33 B5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025ADB0 00257D10  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025ADB4 00257D14  38 AE 00 9C */	addi r5, r14, 0x9c
/* 8025ADB8 00257D18  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025ADBC 00257D1C  48 12 E8 D1 */	bl __register_global_object
/* 8025ADC0 00257D20  38 61 04 E8 */	addi r3, r1, 0x4e8
/* 8025ADC4 00257D24  48 0E 2D 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025ADC8 00257D28  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025ADCC 00257D2C  38 61 04 D8 */	addi r3, r1, 0x4d8
/* 8025ADD0 00257D30  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025ADD4 00257D34  38 84 01 40 */	addi r4, r4, 0x140
/* 8025ADD8 00257D38  4B DA 9E E1 */	bl string_l__4rstlFPCc
/* 8025ADDC 00257D3C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025ADE0 00257D40  38 81 04 D8 */	addi r4, r1, 0x4d8
/* 8025ADE4 00257D44  38 63 00 A0 */	addi r3, r3, 0xa0
/* 8025ADE8 00257D48  48 0E 33 79 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025ADEC 00257D4C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025ADF0 00257D50  38 AE 00 A8 */	addi r5, r14, 0xa8
/* 8025ADF4 00257D54  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025ADF8 00257D58  48 12 E8 95 */	bl __register_global_object
/* 8025ADFC 00257D5C  38 61 04 D8 */	addi r3, r1, 0x4d8
/* 8025AE00 00257D60  48 0E 2C E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AE04 00257D64  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AE08 00257D68  38 61 04 C8 */	addi r3, r1, 0x4c8
/* 8025AE0C 00257D6C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AE10 00257D70  38 84 01 4A */	addi r4, r4, 0x14a
/* 8025AE14 00257D74  4B DA 9E A5 */	bl string_l__4rstlFPCc
/* 8025AE18 00257D78  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AE1C 00257D7C  38 81 04 C8 */	addi r4, r1, 0x4c8
/* 8025AE20 00257D80  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8025AE24 00257D84  48 0E 33 3D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AE28 00257D88  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AE2C 00257D8C  38 AE 00 B4 */	addi r5, r14, 0xb4
/* 8025AE30 00257D90  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AE34 00257D94  48 12 E8 59 */	bl __register_global_object
/* 8025AE38 00257D98  38 61 04 C8 */	addi r3, r1, 0x4c8
/* 8025AE3C 00257D9C  48 0E 2C A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AE40 00257DA0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AE44 00257DA4  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8025AE48 00257DA8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AE4C 00257DAC  38 84 01 54 */	addi r4, r4, 0x154
/* 8025AE50 00257DB0  4B DA 9E 69 */	bl string_l__4rstlFPCc
/* 8025AE54 00257DB4  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AE58 00257DB8  38 81 04 B8 */	addi r4, r1, 0x4b8
/* 8025AE5C 00257DBC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8025AE60 00257DC0  48 0E 33 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AE64 00257DC4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AE68 00257DC8  38 AE 00 C0 */	addi r5, r14, 0xc0
/* 8025AE6C 00257DCC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AE70 00257DD0  48 12 E8 1D */	bl __register_global_object
/* 8025AE74 00257DD4  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8025AE78 00257DD8  48 0E 2C 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AE7C 00257DDC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AE80 00257DE0  38 61 04 A8 */	addi r3, r1, 0x4a8
/* 8025AE84 00257DE4  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AE88 00257DE8  38 84 01 5E */	addi r4, r4, 0x15e
/* 8025AE8C 00257DEC  4B DA 9E 2D */	bl string_l__4rstlFPCc
/* 8025AE90 00257DF0  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AE94 00257DF4  38 81 04 A8 */	addi r4, r1, 0x4a8
/* 8025AE98 00257DF8  38 63 00 D0 */	addi r3, r3, 0xd0
/* 8025AE9C 00257DFC  48 0E 32 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AEA0 00257E00  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AEA4 00257E04  38 AE 00 CC */	addi r5, r14, 0xcc
/* 8025AEA8 00257E08  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AEAC 00257E0C  48 12 E7 E1 */	bl __register_global_object
/* 8025AEB0 00257E10  38 61 04 A8 */	addi r3, r1, 0x4a8
/* 8025AEB4 00257E14  48 0E 2C 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AEB8 00257E18  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AEBC 00257E1C  38 61 04 98 */	addi r3, r1, 0x498
/* 8025AEC0 00257E20  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AEC4 00257E24  38 84 01 68 */	addi r4, r4, 0x168
/* 8025AEC8 00257E28  4B DA 9D F1 */	bl string_l__4rstlFPCc
/* 8025AECC 00257E2C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AED0 00257E30  38 81 04 98 */	addi r4, r1, 0x498
/* 8025AED4 00257E34  38 63 00 E0 */	addi r3, r3, 0xe0
/* 8025AED8 00257E38  48 0E 32 89 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AEDC 00257E3C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AEE0 00257E40  38 AE 00 D8 */	addi r5, r14, 0xd8
/* 8025AEE4 00257E44  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AEE8 00257E48  48 12 E7 A5 */	bl __register_global_object
/* 8025AEEC 00257E4C  38 61 04 98 */	addi r3, r1, 0x498
/* 8025AEF0 00257E50  48 0E 2B F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AEF4 00257E54  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AEF8 00257E58  38 61 04 88 */	addi r3, r1, 0x488
/* 8025AEFC 00257E5C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AF00 00257E60  38 84 01 72 */	addi r4, r4, 0x172
/* 8025AF04 00257E64  4B DA 9D B5 */	bl string_l__4rstlFPCc
/* 8025AF08 00257E68  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AF0C 00257E6C  38 81 04 88 */	addi r4, r1, 0x488
/* 8025AF10 00257E70  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8025AF14 00257E74  48 0E 32 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AF18 00257E78  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AF1C 00257E7C  38 AE 00 E4 */	addi r5, r14, 0xe4
/* 8025AF20 00257E80  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AF24 00257E84  48 12 E7 69 */	bl __register_global_object
/* 8025AF28 00257E88  38 61 04 88 */	addi r3, r1, 0x488
/* 8025AF2C 00257E8C  48 0E 2B B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AF30 00257E90  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AF34 00257E94  38 61 04 78 */	addi r3, r1, 0x478
/* 8025AF38 00257E98  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AF3C 00257E9C  38 84 01 7C */	addi r4, r4, 0x17c
/* 8025AF40 00257EA0  4B DA 9D 79 */	bl string_l__4rstlFPCc
/* 8025AF44 00257EA4  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AF48 00257EA8  38 81 04 78 */	addi r4, r1, 0x478
/* 8025AF4C 00257EAC  38 63 01 00 */	addi r3, r3, 0x100
/* 8025AF50 00257EB0  48 0E 32 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AF54 00257EB4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AF58 00257EB8  38 AE 00 F0 */	addi r5, r14, 0xf0
/* 8025AF5C 00257EBC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AF60 00257EC0  48 12 E7 2D */	bl __register_global_object
/* 8025AF64 00257EC4  38 61 04 78 */	addi r3, r1, 0x478
/* 8025AF68 00257EC8  48 0E 2B 79 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AF6C 00257ECC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AF70 00257ED0  38 61 04 68 */	addi r3, r1, 0x468
/* 8025AF74 00257ED4  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AF78 00257ED8  38 84 01 88 */	addi r4, r4, 0x188
/* 8025AF7C 00257EDC  4B DA 9D 3D */	bl string_l__4rstlFPCc
/* 8025AF80 00257EE0  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AF84 00257EE4  38 81 04 68 */	addi r4, r1, 0x468
/* 8025AF88 00257EE8  38 63 01 10 */	addi r3, r3, 0x110
/* 8025AF8C 00257EEC  48 0E 31 D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AF90 00257EF0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AF94 00257EF4  38 AE 00 FC */	addi r5, r14, 0xfc
/* 8025AF98 00257EF8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AF9C 00257EFC  48 12 E6 F1 */	bl __register_global_object
/* 8025AFA0 00257F00  38 61 04 68 */	addi r3, r1, 0x468
/* 8025AFA4 00257F04  48 0E 2B 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AFA8 00257F08  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AFAC 00257F0C  38 61 04 58 */	addi r3, r1, 0x458
/* 8025AFB0 00257F10  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AFB4 00257F14  38 84 01 94 */	addi r4, r4, 0x194
/* 8025AFB8 00257F18  4B DA 9D 01 */	bl string_l__4rstlFPCc
/* 8025AFBC 00257F1C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AFC0 00257F20  38 81 04 58 */	addi r4, r1, 0x458
/* 8025AFC4 00257F24  38 63 01 20 */	addi r3, r3, 0x120
/* 8025AFC8 00257F28  48 0E 31 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025AFCC 00257F2C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025AFD0 00257F30  38 AE 01 08 */	addi r5, r14, 0x108
/* 8025AFD4 00257F34  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025AFD8 00257F38  48 12 E6 B5 */	bl __register_global_object
/* 8025AFDC 00257F3C  38 61 04 58 */	addi r3, r1, 0x458
/* 8025AFE0 00257F40  48 0E 2B 01 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025AFE4 00257F44  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025AFE8 00257F48  38 61 04 48 */	addi r3, r1, 0x448
/* 8025AFEC 00257F4C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025AFF0 00257F50  38 84 01 A0 */	addi r4, r4, 0x1a0
/* 8025AFF4 00257F54  4B DA 9C C5 */	bl string_l__4rstlFPCc
/* 8025AFF8 00257F58  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025AFFC 00257F5C  38 81 04 48 */	addi r4, r1, 0x448
/* 8025B000 00257F60  38 63 01 30 */	addi r3, r3, 0x130
/* 8025B004 00257F64  48 0E 31 5D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B008 00257F68  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B00C 00257F6C  38 AE 01 14 */	addi r5, r14, 0x114
/* 8025B010 00257F70  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B014 00257F74  48 12 E6 79 */	bl __register_global_object
/* 8025B018 00257F78  38 61 04 48 */	addi r3, r1, 0x448
/* 8025B01C 00257F7C  48 0E 2A C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B020 00257F80  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B024 00257F84  38 61 04 38 */	addi r3, r1, 0x438
/* 8025B028 00257F88  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B02C 00257F8C  38 84 01 AC */	addi r4, r4, 0x1ac
/* 8025B030 00257F90  4B DA 9C 89 */	bl string_l__4rstlFPCc
/* 8025B034 00257F94  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025B038 00257F98  38 81 04 38 */	addi r4, r1, 0x438
/* 8025B03C 00257F9C  38 63 01 40 */	addi r3, r3, 0x140
/* 8025B040 00257FA0  48 0E 31 21 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B044 00257FA4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B048 00257FA8  38 AE 01 20 */	addi r5, r14, 0x120
/* 8025B04C 00257FAC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B050 00257FB0  48 12 E6 3D */	bl __register_global_object
/* 8025B054 00257FB4  38 61 04 38 */	addi r3, r1, 0x438
/* 8025B058 00257FB8  48 0E 2A 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B05C 00257FBC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B060 00257FC0  38 61 04 28 */	addi r3, r1, 0x428
/* 8025B064 00257FC4  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B068 00257FC8  38 84 01 B8 */	addi r4, r4, 0x1b8
/* 8025B06C 00257FCC  4B DA 9C 4D */	bl string_l__4rstlFPCc
/* 8025B070 00257FD0  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025B074 00257FD4  38 81 04 28 */	addi r4, r1, 0x428
/* 8025B078 00257FD8  38 63 01 50 */	addi r3, r3, 0x150
/* 8025B07C 00257FDC  48 0E 30 E5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B080 00257FE0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B084 00257FE4  38 AE 01 2C */	addi r5, r14, 0x12c
/* 8025B088 00257FE8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B08C 00257FEC  48 12 E6 01 */	bl __register_global_object
/* 8025B090 00257FF0  38 61 04 28 */	addi r3, r1, 0x428
/* 8025B094 00257FF4  48 0E 2A 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B098 00257FF8  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B09C 00257FFC  38 61 04 18 */	addi r3, r1, 0x418
/* 8025B0A0 00258000  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B0A4 00258004  38 84 01 C4 */	addi r4, r4, 0x1c4
/* 8025B0A8 00258008  4B DA 9C 11 */	bl string_l__4rstlFPCc
/* 8025B0AC 0025800C  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025B0B0 00258010  38 81 04 18 */	addi r4, r1, 0x418
/* 8025B0B4 00258014  38 63 01 60 */	addi r3, r3, 0x160
/* 8025B0B8 00258018  48 0E 30 A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B0BC 0025801C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B0C0 00258020  38 AE 01 38 */	addi r5, r14, 0x138
/* 8025B0C4 00258024  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B0C8 00258028  48 12 E5 C5 */	bl __register_global_object
/* 8025B0CC 0025802C  38 61 04 18 */	addi r3, r1, 0x418
/* 8025B0D0 00258030  48 0E 2A 11 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B0D4 00258034  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B0D8 00258038  38 61 04 08 */	addi r3, r1, 0x408
/* 8025B0DC 0025803C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B0E0 00258040  38 84 01 D0 */	addi r4, r4, 0x1d0
/* 8025B0E4 00258044  4B DA 9B D5 */	bl string_l__4rstlFPCc
/* 8025B0E8 00258048  38 6E 01 50 */	addi r3, r14, 0x150
/* 8025B0EC 0025804C  38 81 04 08 */	addi r4, r1, 0x408
/* 8025B0F0 00258050  38 63 01 70 */	addi r3, r3, 0x170
/* 8025B0F4 00258054  48 0E 30 6D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B0F8 00258058  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B0FC 0025805C  38 AE 01 44 */	addi r5, r14, 0x144
/* 8025B100 00258060  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B104 00258064  48 12 E5 89 */	bl __register_global_object
/* 8025B108 00258068  38 61 04 08 */	addi r3, r1, 0x408
/* 8025B10C 0025806C  48 0E 29 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B110 00258070  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B114 00258074  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8025B118 00258078  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B11C 0025807C  38 84 01 DC */	addi r4, r4, 0x1dc
/* 8025B120 00258080  4B DA 9B 99 */	bl string_l__4rstlFPCc
/* 8025B124 00258084  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B128 00258088  38 81 03 F8 */	addi r4, r1, 0x3f8
/* 8025B12C 0025808C  48 0E 30 35 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B130 00258090  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B134 00258094  38 AE 02 D0 */	addi r5, r14, 0x2d0
/* 8025B138 00258098  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B13C 0025809C  48 12 E5 51 */	bl __register_global_object
/* 8025B140 002580A0  38 61 03 F8 */	addi r3, r1, 0x3f8
/* 8025B144 002580A4  48 0E 29 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B148 002580A8  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B14C 002580AC  38 61 03 E8 */	addi r3, r1, 0x3e8
/* 8025B150 002580B0  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B154 002580B4  38 84 01 EA */	addi r4, r4, 0x1ea
/* 8025B158 002580B8  4B DA 9B 61 */	bl string_l__4rstlFPCc
/* 8025B15C 002580BC  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B160 002580C0  38 81 03 E8 */	addi r4, r1, 0x3e8
/* 8025B164 002580C4  38 63 00 10 */	addi r3, r3, 0x10
/* 8025B168 002580C8  48 0E 2F F9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B16C 002580CC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B170 002580D0  38 AE 02 DC */	addi r5, r14, 0x2dc
/* 8025B174 002580D4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B178 002580D8  48 12 E5 15 */	bl __register_global_object
/* 8025B17C 002580DC  38 61 03 E8 */	addi r3, r1, 0x3e8
/* 8025B180 002580E0  48 0E 29 61 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B184 002580E4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B188 002580E8  38 61 03 D8 */	addi r3, r1, 0x3d8
/* 8025B18C 002580EC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B190 002580F0  38 84 01 F8 */	addi r4, r4, 0x1f8
/* 8025B194 002580F4  4B DA 9B 25 */	bl string_l__4rstlFPCc
/* 8025B198 002580F8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B19C 002580FC  38 81 03 D8 */	addi r4, r1, 0x3d8
/* 8025B1A0 00258100  38 63 00 20 */	addi r3, r3, 0x20
/* 8025B1A4 00258104  48 0E 2F BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B1A8 00258108  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B1AC 0025810C  38 AE 02 E8 */	addi r5, r14, 0x2e8
/* 8025B1B0 00258110  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B1B4 00258114  48 12 E4 D9 */	bl __register_global_object
/* 8025B1B8 00258118  38 61 03 D8 */	addi r3, r1, 0x3d8
/* 8025B1BC 0025811C  48 0E 29 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B1C0 00258120  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B1C4 00258124  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8025B1C8 00258128  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B1CC 0025812C  38 84 02 06 */	addi r4, r4, 0x206
/* 8025B1D0 00258130  4B DA 9A E9 */	bl string_l__4rstlFPCc
/* 8025B1D4 00258134  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B1D8 00258138  38 81 03 C8 */	addi r4, r1, 0x3c8
/* 8025B1DC 0025813C  38 63 00 30 */	addi r3, r3, 0x30
/* 8025B1E0 00258140  48 0E 2F 81 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B1E4 00258144  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B1E8 00258148  38 AE 02 F4 */	addi r5, r14, 0x2f4
/* 8025B1EC 0025814C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B1F0 00258150  48 12 E4 9D */	bl __register_global_object
/* 8025B1F4 00258154  38 61 03 C8 */	addi r3, r1, 0x3c8
/* 8025B1F8 00258158  48 0E 28 E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B1FC 0025815C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B200 00258160  38 61 03 B8 */	addi r3, r1, 0x3b8
/* 8025B204 00258164  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B208 00258168  38 84 02 14 */	addi r4, r4, 0x214
/* 8025B20C 0025816C  4B DA 9A AD */	bl string_l__4rstlFPCc
/* 8025B210 00258170  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B214 00258174  38 81 03 B8 */	addi r4, r1, 0x3b8
/* 8025B218 00258178  38 63 00 40 */	addi r3, r3, 0x40
/* 8025B21C 0025817C  48 0E 2F 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B220 00258180  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B224 00258184  38 AE 03 00 */	addi r5, r14, 0x300
/* 8025B228 00258188  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B22C 0025818C  48 12 E4 61 */	bl __register_global_object
/* 8025B230 00258190  38 61 03 B8 */	addi r3, r1, 0x3b8
/* 8025B234 00258194  48 0E 28 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B238 00258198  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B23C 0025819C  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 8025B240 002581A0  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B244 002581A4  38 84 02 22 */	addi r4, r4, 0x222
/* 8025B248 002581A8  4B DA 9A 71 */	bl string_l__4rstlFPCc
/* 8025B24C 002581AC  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B250 002581B0  38 81 03 A8 */	addi r4, r1, 0x3a8
/* 8025B254 002581B4  38 63 00 50 */	addi r3, r3, 0x50
/* 8025B258 002581B8  48 0E 2F 09 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B25C 002581BC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B260 002581C0  38 AE 03 0C */	addi r5, r14, 0x30c
/* 8025B264 002581C4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B268 002581C8  48 12 E4 25 */	bl __register_global_object
/* 8025B26C 002581CC  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 8025B270 002581D0  48 0E 28 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B274 002581D4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B278 002581D8  38 61 03 98 */	addi r3, r1, 0x398
/* 8025B27C 002581DC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B280 002581E0  38 84 02 30 */	addi r4, r4, 0x230
/* 8025B284 002581E4  4B DA 9A 35 */	bl string_l__4rstlFPCc
/* 8025B288 002581E8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B28C 002581EC  38 81 03 98 */	addi r4, r1, 0x398
/* 8025B290 002581F0  38 63 00 60 */	addi r3, r3, 0x60
/* 8025B294 002581F4  48 0E 2E CD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B298 002581F8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B29C 002581FC  38 AE 03 18 */	addi r5, r14, 0x318
/* 8025B2A0 00258200  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B2A4 00258204  48 12 E3 E9 */	bl __register_global_object
/* 8025B2A8 00258208  38 61 03 98 */	addi r3, r1, 0x398
/* 8025B2AC 0025820C  48 0E 28 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B2B0 00258210  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B2B4 00258214  38 61 03 88 */	addi r3, r1, 0x388
/* 8025B2B8 00258218  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B2BC 0025821C  38 84 02 3F */	addi r4, r4, 0x23f
/* 8025B2C0 00258220  4B DA 99 F9 */	bl string_l__4rstlFPCc
/* 8025B2C4 00258224  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B2C8 00258228  38 81 03 88 */	addi r4, r1, 0x388
/* 8025B2CC 0025822C  38 63 00 70 */	addi r3, r3, 0x70
/* 8025B2D0 00258230  48 0E 2E 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B2D4 00258234  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B2D8 00258238  38 AE 03 24 */	addi r5, r14, 0x324
/* 8025B2DC 0025823C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B2E0 00258240  48 12 E3 AD */	bl __register_global_object
/* 8025B2E4 00258244  38 61 03 88 */	addi r3, r1, 0x388
/* 8025B2E8 00258248  48 0E 27 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B2EC 0025824C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B2F0 00258250  38 61 03 78 */	addi r3, r1, 0x378
/* 8025B2F4 00258254  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B2F8 00258258  38 84 02 4E */	addi r4, r4, 0x24e
/* 8025B2FC 0025825C  4B DA 99 BD */	bl string_l__4rstlFPCc
/* 8025B300 00258260  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B304 00258264  38 81 03 78 */	addi r4, r1, 0x378
/* 8025B308 00258268  38 63 00 80 */	addi r3, r3, 0x80
/* 8025B30C 0025826C  48 0E 2E 55 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B310 00258270  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B314 00258274  38 AE 03 30 */	addi r5, r14, 0x330
/* 8025B318 00258278  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B31C 0025827C  48 12 E3 71 */	bl __register_global_object
/* 8025B320 00258280  38 61 03 78 */	addi r3, r1, 0x378
/* 8025B324 00258284  48 0E 27 BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B328 00258288  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B32C 0025828C  38 61 03 68 */	addi r3, r1, 0x368
/* 8025B330 00258290  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B334 00258294  38 84 02 5D */	addi r4, r4, 0x25d
/* 8025B338 00258298  4B DA 99 81 */	bl string_l__4rstlFPCc
/* 8025B33C 0025829C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B340 002582A0  38 81 03 68 */	addi r4, r1, 0x368
/* 8025B344 002582A4  38 63 00 90 */	addi r3, r3, 0x90
/* 8025B348 002582A8  48 0E 2E 19 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B34C 002582AC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B350 002582B0  38 AE 03 3C */	addi r5, r14, 0x33c
/* 8025B354 002582B4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B358 002582B8  48 12 E3 35 */	bl __register_global_object
/* 8025B35C 002582BC  38 61 03 68 */	addi r3, r1, 0x368
/* 8025B360 002582C0  48 0E 27 81 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B364 002582C4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B368 002582C8  38 61 03 58 */	addi r3, r1, 0x358
/* 8025B36C 002582CC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B370 002582D0  38 84 02 6C */	addi r4, r4, 0x26c
/* 8025B374 002582D4  4B DA 99 45 */	bl string_l__4rstlFPCc
/* 8025B378 002582D8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B37C 002582DC  38 81 03 58 */	addi r4, r1, 0x358
/* 8025B380 002582E0  38 63 00 A0 */	addi r3, r3, 0xa0
/* 8025B384 002582E4  48 0E 2D DD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B388 002582E8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B38C 002582EC  38 AE 03 48 */	addi r5, r14, 0x348
/* 8025B390 002582F0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B394 002582F4  48 12 E2 F9 */	bl __register_global_object
/* 8025B398 002582F8  38 61 03 58 */	addi r3, r1, 0x358
/* 8025B39C 002582FC  48 0E 27 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B3A0 00258300  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B3A4 00258304  38 61 03 48 */	addi r3, r1, 0x348
/* 8025B3A8 00258308  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B3AC 0025830C  38 84 02 7B */	addi r4, r4, 0x27b
/* 8025B3B0 00258310  4B DA 99 09 */	bl string_l__4rstlFPCc
/* 8025B3B4 00258314  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B3B8 00258318  38 81 03 48 */	addi r4, r1, 0x348
/* 8025B3BC 0025831C  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8025B3C0 00258320  48 0E 2D A1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B3C4 00258324  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B3C8 00258328  38 AE 03 54 */	addi r5, r14, 0x354
/* 8025B3CC 0025832C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B3D0 00258330  48 12 E2 BD */	bl __register_global_object
/* 8025B3D4 00258334  38 61 03 48 */	addi r3, r1, 0x348
/* 8025B3D8 00258338  48 0E 27 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B3DC 0025833C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B3E0 00258340  38 61 03 38 */	addi r3, r1, 0x338
/* 8025B3E4 00258344  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B3E8 00258348  38 84 02 8A */	addi r4, r4, 0x28a
/* 8025B3EC 0025834C  4B DA 98 CD */	bl string_l__4rstlFPCc
/* 8025B3F0 00258350  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B3F4 00258354  38 81 03 38 */	addi r4, r1, 0x338
/* 8025B3F8 00258358  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8025B3FC 0025835C  48 0E 2D 65 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B400 00258360  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B404 00258364  38 AE 03 60 */	addi r5, r14, 0x360
/* 8025B408 00258368  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B40C 0025836C  48 12 E2 81 */	bl __register_global_object
/* 8025B410 00258370  38 61 03 38 */	addi r3, r1, 0x338
/* 8025B414 00258374  48 0E 26 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B418 00258378  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B41C 0025837C  38 61 03 28 */	addi r3, r1, 0x328
/* 8025B420 00258380  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B424 00258384  38 84 02 98 */	addi r4, r4, 0x298
/* 8025B428 00258388  4B DA 98 91 */	bl string_l__4rstlFPCc
/* 8025B42C 0025838C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B430 00258390  38 81 03 28 */	addi r4, r1, 0x328
/* 8025B434 00258394  38 63 00 D0 */	addi r3, r3, 0xd0
/* 8025B438 00258398  48 0E 2D 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B43C 0025839C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B440 002583A0  38 AE 03 6C */	addi r5, r14, 0x36c
/* 8025B444 002583A4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B448 002583A8  48 12 E2 45 */	bl __register_global_object
/* 8025B44C 002583AC  38 61 03 28 */	addi r3, r1, 0x328
/* 8025B450 002583B0  48 0E 26 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B454 002583B4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B458 002583B8  38 61 03 18 */	addi r3, r1, 0x318
/* 8025B45C 002583BC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B460 002583C0  38 84 02 A6 */	addi r4, r4, 0x2a6
/* 8025B464 002583C4  4B DA 98 55 */	bl string_l__4rstlFPCc
/* 8025B468 002583C8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B46C 002583CC  38 81 03 18 */	addi r4, r1, 0x318
/* 8025B470 002583D0  38 63 00 E0 */	addi r3, r3, 0xe0
/* 8025B474 002583D4  48 0E 2C ED */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B478 002583D8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B47C 002583DC  38 AE 03 78 */	addi r5, r14, 0x378
/* 8025B480 002583E0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B484 002583E4  48 12 E2 09 */	bl __register_global_object
/* 8025B488 002583E8  38 61 03 18 */	addi r3, r1, 0x318
/* 8025B48C 002583EC  48 0E 26 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B490 002583F0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B494 002583F4  38 61 03 08 */	addi r3, r1, 0x308
/* 8025B498 002583F8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B49C 002583FC  38 84 02 B4 */	addi r4, r4, 0x2b4
/* 8025B4A0 00258400  4B DA 98 19 */	bl string_l__4rstlFPCc
/* 8025B4A4 00258404  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B4A8 00258408  38 81 03 08 */	addi r4, r1, 0x308
/* 8025B4AC 0025840C  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8025B4B0 00258410  48 0E 2C B1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B4B4 00258414  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B4B8 00258418  38 AE 03 84 */	addi r5, r14, 0x384
/* 8025B4BC 0025841C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B4C0 00258420  48 12 E1 CD */	bl __register_global_object
/* 8025B4C4 00258424  38 61 03 08 */	addi r3, r1, 0x308
/* 8025B4C8 00258428  48 0E 26 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B4CC 0025842C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B4D0 00258430  38 61 02 F8 */	addi r3, r1, 0x2f8
/* 8025B4D4 00258434  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B4D8 00258438  38 84 02 C2 */	addi r4, r4, 0x2c2
/* 8025B4DC 0025843C  4B DA 97 DD */	bl string_l__4rstlFPCc
/* 8025B4E0 00258440  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B4E4 00258444  38 81 02 F8 */	addi r4, r1, 0x2f8
/* 8025B4E8 00258448  38 63 01 00 */	addi r3, r3, 0x100
/* 8025B4EC 0025844C  48 0E 2C 75 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B4F0 00258450  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B4F4 00258454  38 AE 03 90 */	addi r5, r14, 0x390
/* 8025B4F8 00258458  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B4FC 0025845C  48 12 E1 91 */	bl __register_global_object
/* 8025B500 00258460  38 61 02 F8 */	addi r3, r1, 0x2f8
/* 8025B504 00258464  48 0E 25 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B508 00258468  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B50C 0025846C  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 8025B510 00258470  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B514 00258474  38 84 02 D0 */	addi r4, r4, 0x2d0
/* 8025B518 00258478  4B DA 97 A1 */	bl string_l__4rstlFPCc
/* 8025B51C 0025847C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B520 00258480  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 8025B524 00258484  38 63 01 10 */	addi r3, r3, 0x110
/* 8025B528 00258488  48 0E 2C 39 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B52C 0025848C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B530 00258490  38 AE 03 9C */	addi r5, r14, 0x39c
/* 8025B534 00258494  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B538 00258498  48 12 E1 55 */	bl __register_global_object
/* 8025B53C 0025849C  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 8025B540 002584A0  48 0E 25 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B544 002584A4  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B548 002584A8  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8025B54C 002584AC  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B550 002584B0  38 84 02 DE */	addi r4, r4, 0x2de
/* 8025B554 002584B4  4B DA 97 65 */	bl string_l__4rstlFPCc
/* 8025B558 002584B8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B55C 002584BC  38 81 02 D8 */	addi r4, r1, 0x2d8
/* 8025B560 002584C0  38 63 01 20 */	addi r3, r3, 0x120
/* 8025B564 002584C4  48 0E 2B FD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B568 002584C8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B56C 002584CC  38 AE 03 A8 */	addi r5, r14, 0x3a8
/* 8025B570 002584D0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B574 002584D4  48 12 E1 19 */	bl __register_global_object
/* 8025B578 002584D8  38 61 02 D8 */	addi r3, r1, 0x2d8
/* 8025B57C 002584DC  48 0E 25 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B580 002584E0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B584 002584E4  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8025B588 002584E8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B58C 002584EC  38 84 02 ED */	addi r4, r4, 0x2ed
/* 8025B590 002584F0  4B DA 97 29 */	bl string_l__4rstlFPCc
/* 8025B594 002584F4  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B598 002584F8  38 81 02 C8 */	addi r4, r1, 0x2c8
/* 8025B59C 002584FC  38 63 01 30 */	addi r3, r3, 0x130
/* 8025B5A0 00258500  48 0E 2B C1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B5A4 00258504  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B5A8 00258508  38 AE 03 B4 */	addi r5, r14, 0x3b4
/* 8025B5AC 0025850C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B5B0 00258510  48 12 E0 DD */	bl __register_global_object
/* 8025B5B4 00258514  38 61 02 C8 */	addi r3, r1, 0x2c8
/* 8025B5B8 00258518  48 0E 25 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B5BC 0025851C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B5C0 00258520  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8025B5C4 00258524  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B5C8 00258528  38 84 02 FC */	addi r4, r4, 0x2fc
/* 8025B5CC 0025852C  4B DA 96 ED */	bl string_l__4rstlFPCc
/* 8025B5D0 00258530  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B5D4 00258534  38 81 02 B8 */	addi r4, r1, 0x2b8
/* 8025B5D8 00258538  38 63 01 40 */	addi r3, r3, 0x140
/* 8025B5DC 0025853C  48 0E 2B 85 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B5E0 00258540  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B5E4 00258544  38 AE 03 C0 */	addi r5, r14, 0x3c0
/* 8025B5E8 00258548  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B5EC 0025854C  48 12 E0 A1 */	bl __register_global_object
/* 8025B5F0 00258550  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 8025B5F4 00258554  48 0E 24 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B5F8 00258558  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B5FC 0025855C  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8025B600 00258560  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B604 00258564  38 84 03 0B */	addi r4, r4, 0x30b
/* 8025B608 00258568  4B DA 96 B1 */	bl string_l__4rstlFPCc
/* 8025B60C 0025856C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B610 00258570  38 81 02 A8 */	addi r4, r1, 0x2a8
/* 8025B614 00258574  38 63 01 50 */	addi r3, r3, 0x150
/* 8025B618 00258578  48 0E 2B 49 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B61C 0025857C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B620 00258580  38 AE 03 CC */	addi r5, r14, 0x3cc
/* 8025B624 00258584  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B628 00258588  48 12 E0 65 */	bl __register_global_object
/* 8025B62C 0025858C  38 61 02 A8 */	addi r3, r1, 0x2a8
/* 8025B630 00258590  48 0E 24 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B634 00258594  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B638 00258598  38 61 02 98 */	addi r3, r1, 0x298
/* 8025B63C 0025859C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B640 002585A0  38 84 03 1A */	addi r4, r4, 0x31a
/* 8025B644 002585A4  4B DA 96 75 */	bl string_l__4rstlFPCc
/* 8025B648 002585A8  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B64C 002585AC  38 81 02 98 */	addi r4, r1, 0x298
/* 8025B650 002585B0  38 63 01 60 */	addi r3, r3, 0x160
/* 8025B654 002585B4  48 0E 2B 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B658 002585B8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B65C 002585BC  38 AE 03 D8 */	addi r5, r14, 0x3d8
/* 8025B660 002585C0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B664 002585C4  48 12 E0 29 */	bl __register_global_object
/* 8025B668 002585C8  38 61 02 98 */	addi r3, r1, 0x298
/* 8025B66C 002585CC  48 0E 24 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B670 002585D0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B674 002585D4  38 61 02 88 */	addi r3, r1, 0x288
/* 8025B678 002585D8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B67C 002585DC  38 84 03 29 */	addi r4, r4, 0x329
/* 8025B680 002585E0  4B DA 96 39 */	bl string_l__4rstlFPCc
/* 8025B684 002585E4  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B688 002585E8  38 81 02 88 */	addi r4, r1, 0x288
/* 8025B68C 002585EC  38 63 01 70 */	addi r3, r3, 0x170
/* 8025B690 002585F0  48 0E 2A D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B694 002585F4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B698 002585F8  38 AE 03 E4 */	addi r5, r14, 0x3e4
/* 8025B69C 002585FC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B6A0 00258600  48 12 DF ED */	bl __register_global_object
/* 8025B6A4 00258604  38 61 02 88 */	addi r3, r1, 0x288
/* 8025B6A8 00258608  48 0E 24 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B6AC 0025860C  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B6B0 00258610  38 61 02 78 */	addi r3, r1, 0x278
/* 8025B6B4 00258614  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B6B8 00258618  38 84 03 38 */	addi r4, r4, 0x338
/* 8025B6BC 0025861C  4B DA 95 FD */	bl string_l__4rstlFPCc
/* 8025B6C0 00258620  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B6C4 00258624  38 81 02 78 */	addi r4, r1, 0x278
/* 8025B6C8 00258628  38 63 01 80 */	addi r3, r3, 0x180
/* 8025B6CC 0025862C  48 0E 2A 95 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B6D0 00258630  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B6D4 00258634  38 AE 03 F0 */	addi r5, r14, 0x3f0
/* 8025B6D8 00258638  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B6DC 0025863C  48 12 DF B1 */	bl __register_global_object
/* 8025B6E0 00258640  38 61 02 78 */	addi r3, r1, 0x278
/* 8025B6E4 00258644  48 0E 23 FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B6E8 00258648  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B6EC 0025864C  38 61 02 68 */	addi r3, r1, 0x268
/* 8025B6F0 00258650  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B6F4 00258654  38 84 03 49 */	addi r4, r4, 0x349
/* 8025B6F8 00258658  4B DA 95 C1 */	bl string_l__4rstlFPCc
/* 8025B6FC 0025865C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B700 00258660  38 81 02 68 */	addi r4, r1, 0x268
/* 8025B704 00258664  38 63 01 90 */	addi r3, r3, 0x190
/* 8025B708 00258668  48 0E 2A 59 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B70C 0025866C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B710 00258670  38 AE 03 FC */	addi r5, r14, 0x3fc
/* 8025B714 00258674  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B718 00258678  48 12 DF 75 */	bl __register_global_object
/* 8025B71C 0025867C  38 61 02 68 */	addi r3, r1, 0x268
/* 8025B720 00258680  48 0E 23 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B724 00258684  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B728 00258688  38 61 02 58 */	addi r3, r1, 0x258
/* 8025B72C 0025868C  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B730 00258690  38 84 03 5A */	addi r4, r4, 0x35a
/* 8025B734 00258694  4B DA 95 85 */	bl string_l__4rstlFPCc
/* 8025B738 00258698  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B73C 0025869C  38 81 02 58 */	addi r4, r1, 0x258
/* 8025B740 002586A0  38 63 01 A0 */	addi r3, r3, 0x1a0
/* 8025B744 002586A4  48 0E 2A 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B748 002586A8  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B74C 002586AC  38 AE 04 08 */	addi r5, r14, 0x408
/* 8025B750 002586B0  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B754 002586B4  48 12 DF 39 */	bl __register_global_object
/* 8025B758 002586B8  38 61 02 58 */	addi r3, r1, 0x258
/* 8025B75C 002586BC  48 0E 23 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B760 002586C0  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B764 002586C4  38 61 02 48 */	addi r3, r1, 0x248
/* 8025B768 002586C8  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B76C 002586CC  38 84 03 6B */	addi r4, r4, 0x36b
/* 8025B770 002586D0  4B DA 95 49 */	bl string_l__4rstlFPCc
/* 8025B774 002586D4  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B778 002586D8  38 81 02 48 */	addi r4, r1, 0x248
/* 8025B77C 002586DC  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 8025B780 002586E0  48 0E 29 E1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B784 002586E4  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B788 002586E8  38 AE 04 14 */	addi r5, r14, 0x414
/* 8025B78C 002586EC  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B790 002586F0  48 12 DE FD */	bl __register_global_object
/* 8025B794 002586F4  38 61 02 48 */	addi r3, r1, 0x248
/* 8025B798 002586F8  48 0E 23 49 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B79C 002586FC  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B7A0 00258700  38 61 02 38 */	addi r3, r1, 0x238
/* 8025B7A4 00258704  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B7A8 00258708  38 84 03 7C */	addi r4, r4, 0x37c
/* 8025B7AC 0025870C  4B DA 95 0D */	bl string_l__4rstlFPCc
/* 8025B7B0 00258710  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B7B4 00258714  38 81 02 38 */	addi r4, r1, 0x238
/* 8025B7B8 00258718  38 63 01 C0 */	addi r3, r3, 0x1c0
/* 8025B7BC 0025871C  48 0E 29 A5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B7C0 00258720  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B7C4 00258724  38 AE 04 20 */	addi r5, r14, 0x420
/* 8025B7C8 00258728  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B7CC 0025872C  48 12 DE C1 */	bl __register_global_object
/* 8025B7D0 00258730  38 61 02 38 */	addi r3, r1, 0x238
/* 8025B7D4 00258734  48 0E 23 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B7D8 00258738  3C 80 80 3D */	lis r4, lbl_803D4D5C@ha
/* 8025B7DC 0025873C  38 61 02 28 */	addi r3, r1, 0x228
/* 8025B7E0 00258740  38 84 4D 5C */	addi r4, r4, lbl_803D4D5C@l
/* 8025B7E4 00258744  38 84 03 8D */	addi r4, r4, 0x38d
/* 8025B7E8 00258748  4B DA 94 D1 */	bl string_l__4rstlFPCc
/* 8025B7EC 0025874C  38 6E 04 38 */	addi r3, r14, 0x438
/* 8025B7F0 00258750  38 81 02 28 */	addi r4, r1, 0x228
/* 8025B7F4 00258754  38 63 01 D0 */	addi r3, r3, 0x1d0
/* 8025B7F8 00258758  48 0E 29 69 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8025B7FC 0025875C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8025B800 00258760  38 AE 04 2C */	addi r5, r14, 0x42c
/* 8025B804 00258764  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8025B808 00258768  48 12 DE 85 */	bl __register_global_object
/* 8025B80C 0025876C  38 61 02 28 */	addi r3, r1, 0x228
/* 8025B810 00258770  48 0E 22 D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8025B814 00258774  C0 22 B9 34 */	lfs f1, lbl_805AD654@sda21(r2)
/* 8025B818 00258778  39 6E 06 18 */	addi r11, r14, 0x618
/* 8025B81C 0025877C  39 80 FF FF */	li r12, -1
/* 8025B820 00258780  38 C0 00 03 */	li r6, 3
/* 8025B824 00258784  C0 02 B9 48 */	lfs f0, lbl_805AD668@sda21(r2)
/* 8025B828 00258788  39 E0 00 00 */	li r15, 0
/* 8025B82C 0025878C  38 A0 00 02 */	li r5, 2
/* 8025B830 00258790  38 80 00 04 */	li r4, 4
/* 8025B834 00258794  38 60 00 05 */	li r3, 5
/* 8025B838 00258798  91 E1 02 1C */	stw r15, 0x21c(r1)
/* 8025B83C 0025879C  D0 21 02 20 */	stfs f1, 0x220(r1)
/* 8025B840 002587A0  91 81 02 24 */	stw r12, 0x224(r1)
/* 8025B844 002587A4  91 EE 06 18 */	stw r15, 0x618(r14)
/* 8025B848 002587A8  D0 2B 00 04 */	stfs f1, 4(r11)
/* 8025B84C 002587AC  91 8B 00 08 */	stw r12, 8(r11)
/* 8025B850 002587B0  90 C1 02 10 */	stw r6, 0x210(r1)
/* 8025B854 002587B4  D0 21 02 14 */	stfs f1, 0x214(r1)
/* 8025B858 002587B8  91 81 02 18 */	stw r12, 0x218(r1)
/* 8025B85C 002587BC  90 CB 00 0C */	stw r6, 0xc(r11)
/* 8025B860 002587C0  D0 2B 00 10 */	stfs f1, 0x10(r11)
/* 8025B864 002587C4  91 8B 00 14 */	stw r12, 0x14(r11)
/* 8025B868 002587C8  90 A1 02 04 */	stw r5, 0x204(r1)
/* 8025B86C 002587CC  D0 21 02 08 */	stfs f1, 0x208(r1)
/* 8025B870 002587D0  91 81 02 0C */	stw r12, 0x20c(r1)
/* 8025B874 002587D4  90 AB 00 18 */	stw r5, 0x18(r11)
/* 8025B878 002587D8  D0 2B 00 1C */	stfs f1, 0x1c(r11)
/* 8025B87C 002587DC  91 8B 00 20 */	stw r12, 0x20(r11)
/* 8025B880 002587E0  90 C1 01 F8 */	stw r6, 0x1f8(r1)
/* 8025B884 002587E4  D0 01 01 FC */	stfs f0, 0x1fc(r1)
/* 8025B888 002587E8  90 81 02 00 */	stw r4, 0x200(r1)
/* 8025B88C 002587EC  90 CB 00 24 */	stw r6, 0x24(r11)
/* 8025B890 002587F0  D0 0B 00 28 */	stfs f0, 0x28(r11)
/* 8025B894 002587F4  90 8B 00 2C */	stw r4, 0x2c(r11)
/* 8025B898 002587F8  91 E1 01 EC */	stw r15, 0x1ec(r1)
/* 8025B89C 002587FC  D0 21 01 F0 */	stfs f1, 0x1f0(r1)
/* 8025B8A0 00258800  91 81 01 F4 */	stw r12, 0x1f4(r1)
/* 8025B8A4 00258804  91 EB 00 30 */	stw r15, 0x30(r11)
/* 8025B8A8 00258808  D0 2B 00 34 */	stfs f1, 0x34(r11)
/* 8025B8AC 0025880C  91 8B 00 38 */	stw r12, 0x38(r11)
/* 8025B8B0 00258810  90 C1 01 E0 */	stw r6, 0x1e0(r1)
/* 8025B8B4 00258814  D0 21 01 E4 */	stfs f1, 0x1e4(r1)
/* 8025B8B8 00258818  91 81 01 E8 */	stw r12, 0x1e8(r1)
/* 8025B8BC 0025881C  90 CB 00 3C */	stw r6, 0x3c(r11)
/* 8025B8C0 00258820  D0 2B 00 40 */	stfs f1, 0x40(r11)
/* 8025B8C4 00258824  91 8B 00 44 */	stw r12, 0x44(r11)
/* 8025B8C8 00258828  90 A1 01 D4 */	stw r5, 0x1d4(r1)
/* 8025B8CC 0025882C  D0 21 01 D8 */	stfs f1, 0x1d8(r1)
/* 8025B8D0 00258830  91 81 01 DC */	stw r12, 0x1dc(r1)
/* 8025B8D4 00258834  90 AB 00 48 */	stw r5, 0x48(r11)
/* 8025B8D8 00258838  D0 2B 00 4C */	stfs f1, 0x4c(r11)
/* 8025B8DC 0025883C  91 8B 00 50 */	stw r12, 0x50(r11)
/* 8025B8E0 00258840  90 C1 01 C8 */	stw r6, 0x1c8(r1)
/* 8025B8E4 00258844  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 8025B8E8 00258848  90 81 01 D0 */	stw r4, 0x1d0(r1)
/* 8025B8EC 0025884C  90 CB 00 54 */	stw r6, 0x54(r11)
/* 8025B8F0 00258850  D0 0B 00 58 */	stfs f0, 0x58(r11)
/* 8025B8F4 00258854  90 8B 00 5C */	stw r4, 0x5c(r11)
/* 8025B8F8 00258858  90 61 01 BC */	stw r3, 0x1bc(r1)
/* 8025B8FC 0025885C  D0 21 01 C0 */	stfs f1, 0x1c0(r1)
/* 8025B900 00258860  91 81 01 C4 */	stw r12, 0x1c4(r1)
/* 8025B904 00258864  90 6B 00 60 */	stw r3, 0x60(r11)
/* 8025B908 00258868  D0 2B 00 64 */	stfs f1, 0x64(r11)
/* 8025B90C 0025886C  91 8B 00 68 */	stw r12, 0x68(r11)
/* 8025B910 00258870  91 81 01 B0 */	stw r12, 0x1b0(r1)
/* 8025B914 00258874  D0 21 01 B4 */	stfs f1, 0x1b4(r1)
/* 8025B918 00258878  91 81 01 B8 */	stw r12, 0x1b8(r1)
/* 8025B91C 0025887C  91 8B 00 6C */	stw r12, 0x6c(r11)
/* 8025B920 00258880  D0 2B 00 70 */	stfs f1, 0x70(r11)
/* 8025B924 00258884  91 8B 00 74 */	stw r12, 0x74(r11)
/* 8025B928 00258888  91 8B 00 78 */	stw r12, 0x78(r11)
/* 8025B92C 0025888C  D0 2B 00 7C */	stfs f1, 0x7c(r11)
/* 8025B930 00258890  91 8B 00 80 */	stw r12, 0x80(r11)
/* 8025B934 00258894  91 8B 00 84 */	stw r12, 0x84(r11)
/* 8025B938 00258898  D0 2B 00 88 */	stfs f1, 0x88(r11)
/* 8025B93C 0025889C  91 8B 00 8C */	stw r12, 0x8c(r11)
/* 8025B940 002588A0  90 61 01 A4 */	stw r3, 0x1a4(r1)
/* 8025B944 002588A4  D0 21 01 A8 */	stfs f1, 0x1a8(r1)
/* 8025B948 002588A8  91 81 01 AC */	stw r12, 0x1ac(r1)
/* 8025B94C 002588AC  90 6B 00 90 */	stw r3, 0x90(r11)
/* 8025B950 002588B0  D0 2B 00 94 */	stfs f1, 0x94(r11)
/* 8025B954 002588B4  91 8B 00 98 */	stw r12, 0x98(r11)
/* 8025B958 002588B8  38 00 00 01 */	li r0, 1
/* 8025B95C 002588BC  D0 21 01 9C */	stfs f1, 0x19c(r1)
/* 8025B960 002588C0  90 01 01 98 */	stw r0, 0x198(r1)
/* 8025B964 002588C4  91 81 01 A0 */	stw r12, 0x1a0(r1)
/* 8025B968 002588C8  90 0B 00 9C */	stw r0, 0x9c(r11)
/* 8025B96C 002588CC  D0 2B 00 A0 */	stfs f1, 0xa0(r11)
/* 8025B970 002588D0  91 8B 00 A4 */	stw r12, 0xa4(r11)
/* 8025B974 002588D4  90 01 01 8C */	stw r0, 0x18c(r1)
/* 8025B978 002588D8  D0 21 01 90 */	stfs f1, 0x190(r1)
/* 8025B97C 002588DC  91 81 01 94 */	stw r12, 0x194(r1)
/* 8025B980 002588E0  90 0B 00 A8 */	stw r0, 0xa8(r11)
/* 8025B984 002588E4  D0 2B 00 AC */	stfs f1, 0xac(r11)
/* 8025B988 002588E8  91 8B 00 B0 */	stw r12, 0xb0(r11)
/* 8025B98C 002588EC  90 01 01 80 */	stw r0, 0x180(r1)
/* 8025B990 002588F0  D0 21 01 84 */	stfs f1, 0x184(r1)
/* 8025B994 002588F4  91 81 01 88 */	stw r12, 0x188(r1)
/* 8025B998 002588F8  90 0B 00 B4 */	stw r0, 0xb4(r11)
/* 8025B99C 002588FC  D0 2B 00 B8 */	stfs f1, 0xb8(r11)
/* 8025B9A0 00258900  91 8B 00 BC */	stw r12, 0xbc(r11)
/* 8025B9A4 00258904  90 01 01 74 */	stw r0, 0x174(r1)
/* 8025B9A8 00258908  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 8025B9AC 0025890C  91 81 01 7C */	stw r12, 0x17c(r1)
/* 8025B9B0 00258910  90 0B 00 C0 */	stw r0, 0xc0(r11)
/* 8025B9B4 00258914  D0 2B 00 C4 */	stfs f1, 0xc4(r11)
/* 8025B9B8 00258918  91 8B 00 C8 */	stw r12, 0xc8(r11)
/* 8025B9BC 0025891C  91 81 01 68 */	stw r12, 0x168(r1)
/* 8025B9C0 00258920  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 8025B9C4 00258924  91 81 01 70 */	stw r12, 0x170(r1)
/* 8025B9C8 00258928  91 8B 00 CC */	stw r12, 0xcc(r11)
/* 8025B9CC 0025892C  D0 2B 00 D0 */	stfs f1, 0xd0(r11)
/* 8025B9D0 00258930  91 8B 00 D4 */	stw r12, 0xd4(r11)
/* 8025B9D4 00258934  91 8B 00 D8 */	stw r12, 0xd8(r11)
/* 8025B9D8 00258938  D0 2B 00 DC */	stfs f1, 0xdc(r11)
/* 8025B9DC 0025893C  91 8B 00 E0 */	stw r12, 0xe0(r11)
/* 8025B9E0 00258940  91 8B 00 E4 */	stw r12, 0xe4(r11)
/* 8025B9E4 00258944  D0 2B 00 E8 */	stfs f1, 0xe8(r11)
/* 8025B9E8 00258948  91 8B 00 EC */	stw r12, 0xec(r11)
/* 8025B9EC 0025894C  91 8B 00 F0 */	stw r12, 0xf0(r11)
/* 8025B9F0 00258950  D0 2B 00 F4 */	stfs f1, 0xf4(r11)
/* 8025B9F4 00258954  91 8B 00 F8 */	stw r12, 0xf8(r11)
/* 8025B9F8 00258958  91 8B 00 FC */	stw r12, 0xfc(r11)
/* 8025B9FC 0025895C  D0 2B 01 00 */	stfs f1, 0x100(r11)
/* 8025BA00 00258960  91 8B 01 04 */	stw r12, 0x104(r11)
/* 8025BA04 00258964  91 8B 01 08 */	stw r12, 0x108(r11)
/* 8025BA08 00258968  D0 2B 01 0C */	stfs f1, 0x10c(r11)
/* 8025BA0C 0025896C  91 8B 01 10 */	stw r12, 0x110(r11)
/* 8025BA10 00258970  91 8B 01 14 */	stw r12, 0x114(r11)
/* 8025BA14 00258974  D0 2B 01 18 */	stfs f1, 0x118(r11)
/* 8025BA18 00258978  91 8B 01 1C */	stw r12, 0x11c(r11)
/* 8025BA1C 0025897C  90 61 01 5C */	stw r3, 0x15c(r1)
/* 8025BA20 00258980  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 8025BA24 00258984  91 81 01 64 */	stw r12, 0x164(r1)
/* 8025BA28 00258988  90 6B 01 20 */	stw r3, 0x120(r11)
/* 8025BA2C 0025898C  D0 2B 01 24 */	stfs f1, 0x124(r11)
/* 8025BA30 00258990  91 8B 01 28 */	stw r12, 0x128(r11)
/* 8025BA34 00258994  91 E1 01 50 */	stw r15, 0x150(r1)
/* 8025BA38 00258998  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 8025BA3C 0025899C  91 81 01 58 */	stw r12, 0x158(r1)
/* 8025BA40 002589A0  91 EB 01 2C */	stw r15, 0x12c(r11)
/* 8025BA44 002589A4  D0 2B 01 30 */	stfs f1, 0x130(r11)
/* 8025BA48 002589A8  91 8B 01 34 */	stw r12, 0x134(r11)
/* 8025BA4C 002589AC  91 E1 01 44 */	stw r15, 0x144(r1)
/* 8025BA50 002589B0  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 8025BA54 002589B4  90 81 01 4C */	stw r4, 0x14c(r1)
/* 8025BA58 002589B8  91 EB 01 38 */	stw r15, 0x138(r11)
/* 8025BA5C 002589BC  D0 0B 01 3C */	stfs f0, 0x13c(r11)
/* 8025BA60 002589C0  90 8B 01 40 */	stw r4, 0x140(r11)
/* 8025BA64 002589C4  90 A1 01 38 */	stw r5, 0x138(r1)
/* 8025BA68 002589C8  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 8025BA6C 002589CC  91 81 01 40 */	stw r12, 0x140(r1)
/* 8025BA70 002589D0  90 AB 01 44 */	stw r5, 0x144(r11)
/* 8025BA74 002589D4  D0 2B 01 48 */	stfs f1, 0x148(r11)
/* 8025BA78 002589D8  91 8B 01 4C */	stw r12, 0x14c(r11)
/* 8025BA7C 002589DC  90 C1 01 2C */	stw r6, 0x12c(r1)
/* 8025BA80 002589E0  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 8025BA84 002589E4  90 81 01 34 */	stw r4, 0x134(r1)
/* 8025BA88 002589E8  90 CB 01 50 */	stw r6, 0x150(r11)
/* 8025BA8C 002589EC  D0 0B 01 54 */	stfs f0, 0x154(r11)
/* 8025BA90 002589F0  90 8B 01 58 */	stw r4, 0x158(r11)
/* 8025BA94 002589F4  90 A1 01 20 */	stw r5, 0x120(r1)
/* 8025BA98 002589F8  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 8025BA9C 002589FC  91 81 01 28 */	stw r12, 0x128(r1)
/* 8025BAA0 00258A00  90 AB 01 5C */	stw r5, 0x15c(r11)
/* 8025BAA4 00258A04  D0 2B 01 60 */	stfs f1, 0x160(r11)
/* 8025BAA8 00258A08  91 8B 01 64 */	stw r12, 0x164(r11)
/* 8025BAAC 00258A0C  90 C1 01 14 */	stw r6, 0x114(r1)
/* 8025BAB0 00258A10  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8025BAB4 00258A14  90 81 01 1C */	stw r4, 0x11c(r1)
/* 8025BAB8 00258A18  90 CB 01 68 */	stw r6, 0x168(r11)
/* 8025BABC 00258A1C  D0 0B 01 6C */	stfs f0, 0x16c(r11)
/* 8025BAC0 00258A20  90 8B 01 70 */	stw r4, 0x170(r11)
/* 8025BAC4 00258A24  91 E1 01 08 */	stw r15, 0x108(r1)
/* 8025BAC8 00258A28  D0 21 01 0C */	stfs f1, 0x10c(r1)
/* 8025BACC 00258A2C  91 81 01 10 */	stw r12, 0x110(r1)
/* 8025BAD0 00258A30  91 EB 01 74 */	stw r15, 0x174(r11)
/* 8025BAD4 00258A34  D0 2B 01 78 */	stfs f1, 0x178(r11)
/* 8025BAD8 00258A38  91 8B 01 7C */	stw r12, 0x17c(r11)
/* 8025BADC 00258A3C  90 A1 00 FC */	stw r5, 0xfc(r1)
/* 8025BAE0 00258A40  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 8025BAE4 00258A44  90 C1 01 04 */	stw r6, 0x104(r1)
/* 8025BAE8 00258A48  90 AB 01 80 */	stw r5, 0x180(r11)
/* 8025BAEC 00258A4C  D0 0B 01 84 */	stfs f0, 0x184(r11)
/* 8025BAF0 00258A50  90 CB 01 88 */	stw r6, 0x188(r11)
/* 8025BAF4 00258A54  90 A1 00 F0 */	stw r5, 0xf0(r1)
/* 8025BAF8 00258A58  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 8025BAFC 00258A5C  91 81 00 F8 */	stw r12, 0xf8(r1)
/* 8025BB00 00258A60  90 AB 01 8C */	stw r5, 0x18c(r11)
/* 8025BB04 00258A64  D0 2B 01 90 */	stfs f1, 0x190(r11)
/* 8025BB08 00258A68  91 8B 01 94 */	stw r12, 0x194(r11)
/* 8025BB0C 00258A6C  91 81 00 E4 */	stw r12, 0xe4(r1)
/* 8025BB10 00258A70  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 8025BB14 00258A74  91 81 00 EC */	stw r12, 0xec(r1)
/* 8025BB18 00258A78  91 8B 01 98 */	stw r12, 0x198(r11)
/* 8025BB1C 00258A7C  D0 2B 01 9C */	stfs f1, 0x19c(r11)
/* 8025BB20 00258A80  91 8B 01 A0 */	stw r12, 0x1a0(r11)
/* 8025BB24 00258A84  91 8B 01 A4 */	stw r12, 0x1a4(r11)
/* 8025BB28 00258A88  D0 2B 01 A8 */	stfs f1, 0x1a8(r11)
/* 8025BB2C 00258A8C  91 8B 01 AC */	stw r12, 0x1ac(r11)
/* 8025BB30 00258A90  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 8025BB34 00258A94  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 8025BB38 00258A98  91 81 00 E0 */	stw r12, 0xe0(r1)
/* 8025BB3C 00258A9C  90 6B 01 B0 */	stw r3, 0x1b0(r11)
/* 8025BB40 00258AA0  D0 2B 01 B4 */	stfs f1, 0x1b4(r11)
/* 8025BB44 00258AA4  91 8B 01 B8 */	stw r12, 0x1b8(r11)
/* 8025BB48 00258AA8  90 01 00 CC */	stw r0, 0xcc(r1)
/* 8025BB4C 00258AAC  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 8025BB50 00258AB0  91 81 00 D4 */	stw r12, 0xd4(r1)
/* 8025BB54 00258AB4  90 0B 01 BC */	stw r0, 0x1bc(r11)
/* 8025BB58 00258AB8  D0 2B 01 C0 */	stfs f1, 0x1c0(r11)
/* 8025BB5C 00258ABC  91 8B 01 C4 */	stw r12, 0x1c4(r11)
/* 8025BB60 00258AC0  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8025BB64 00258AC4  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 8025BB68 00258AC8  91 81 00 C8 */	stw r12, 0xc8(r1)
/* 8025BB6C 00258ACC  90 0B 01 C8 */	stw r0, 0x1c8(r11)
/* 8025BB70 00258AD0  D0 2B 01 CC */	stfs f1, 0x1cc(r11)
/* 8025BB74 00258AD4  91 8B 01 D0 */	stw r12, 0x1d0(r11)
/* 8025BB78 00258AD8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8025BB7C 00258ADC  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8025BB80 00258AE0  91 81 00 BC */	stw r12, 0xbc(r1)
/* 8025BB84 00258AE4  90 0B 01 D4 */	stw r0, 0x1d4(r11)
/* 8025BB88 00258AE8  D0 2B 01 D8 */	stfs f1, 0x1d8(r11)
/* 8025BB8C 00258AEC  91 8B 01 DC */	stw r12, 0x1dc(r11)
/* 8025BB90 00258AF0  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 8025BB94 00258AF4  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 8025BB98 00258AF8  91 81 00 B0 */	stw r12, 0xb0(r1)
/* 8025BB9C 00258AFC  90 0B 01 E0 */	stw r0, 0x1e0(r11)
/* 8025BBA0 00258B00  D0 2B 01 E4 */	stfs f1, 0x1e4(r11)
/* 8025BBA4 00258B04  91 8B 01 E8 */	stw r12, 0x1e8(r11)
/* 8025BBA8 00258B08  91 81 00 9C */	stw r12, 0x9c(r1)
/* 8025BBAC 00258B0C  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8025BBB0 00258B10  91 81 00 A4 */	stw r12, 0xa4(r1)
/* 8025BBB4 00258B14  91 8B 01 EC */	stw r12, 0x1ec(r11)
/* 8025BBB8 00258B18  D0 2B 01 F0 */	stfs f1, 0x1f0(r11)
/* 8025BBBC 00258B1C  91 8B 01 F4 */	stw r12, 0x1f4(r11)
/* 8025BBC0 00258B20  91 8B 01 F8 */	stw r12, 0x1f8(r11)
/* 8025BBC4 00258B24  D0 2B 01 FC */	stfs f1, 0x1fc(r11)
/* 8025BBC8 00258B28  91 8B 02 00 */	stw r12, 0x200(r11)
/* 8025BBCC 00258B2C  91 8B 02 04 */	stw r12, 0x204(r11)
/* 8025BBD0 00258B30  D0 2B 02 08 */	stfs f1, 0x208(r11)
/* 8025BBD4 00258B34  91 8B 02 0C */	stw r12, 0x20c(r11)
/* 8025BBD8 00258B38  91 8B 02 10 */	stw r12, 0x210(r11)
/* 8025BBDC 00258B3C  D0 2B 02 14 */	stfs f1, 0x214(r11)
/* 8025BBE0 00258B40  91 8B 02 18 */	stw r12, 0x218(r11)
/* 8025BBE4 00258B44  91 8B 02 1C */	stw r12, 0x21c(r11)
/* 8025BBE8 00258B48  D0 2B 02 20 */	stfs f1, 0x220(r11)
/* 8025BBEC 00258B4C  91 8B 02 24 */	stw r12, 0x224(r11)
/* 8025BBF0 00258B50  91 8B 02 28 */	stw r12, 0x228(r11)
/* 8025BBF4 00258B54  D0 2B 02 2C */	stfs f1, 0x22c(r11)
/* 8025BBF8 00258B58  91 8B 02 30 */	stw r12, 0x230(r11)
/* 8025BBFC 00258B5C  91 8B 02 34 */	stw r12, 0x234(r11)
/* 8025BC00 00258B60  D0 2B 02 38 */	stfs f1, 0x238(r11)
/* 8025BC04 00258B64  91 8B 02 3C */	stw r12, 0x23c(r11)
/* 8025BC08 00258B68  90 61 00 90 */	stw r3, 0x90(r1)
/* 8025BC0C 00258B6C  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8025BC10 00258B70  91 81 00 98 */	stw r12, 0x98(r1)
/* 8025BC14 00258B74  90 6B 02 40 */	stw r3, 0x240(r11)
/* 8025BC18 00258B78  D0 2B 02 44 */	stfs f1, 0x244(r11)
/* 8025BC1C 00258B7C  91 8B 02 48 */	stw r12, 0x248(r11)
/* 8025BC20 00258B80  91 E1 00 84 */	stw r15, 0x84(r1)
/* 8025BC24 00258B84  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 8025BC28 00258B88  91 81 00 8C */	stw r12, 0x8c(r1)
/* 8025BC2C 00258B8C  91 EB 02 4C */	stw r15, 0x24c(r11)
/* 8025BC30 00258B90  D0 2B 02 50 */	stfs f1, 0x250(r11)
/* 8025BC34 00258B94  91 8B 02 54 */	stw r12, 0x254(r11)
/* 8025BC38 00258B98  91 E1 00 78 */	stw r15, 0x78(r1)
/* 8025BC3C 00258B9C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8025BC40 00258BA0  90 C1 00 80 */	stw r6, 0x80(r1)
/* 8025BC44 00258BA4  91 EB 02 58 */	stw r15, 0x258(r11)
/* 8025BC48 00258BA8  D0 0B 02 5C */	stfs f0, 0x25c(r11)
/* 8025BC4C 00258BAC  90 CB 02 60 */	stw r6, 0x260(r11)
/* 8025BC50 00258BB0  90 C1 00 6C */	stw r6, 0x6c(r1)
/* 8025BC54 00258BB4  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8025BC58 00258BB8  91 81 00 74 */	stw r12, 0x74(r1)
/* 8025BC5C 00258BBC  90 CB 02 64 */	stw r6, 0x264(r11)
/* 8025BC60 00258BC0  D0 2B 02 68 */	stfs f1, 0x268(r11)
/* 8025BC64 00258BC4  91 8B 02 6C */	stw r12, 0x26c(r11)
/* 8025BC68 00258BC8  91 E1 00 60 */	stw r15, 0x60(r1)
/* 8025BC6C 00258BCC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8025BC70 00258BD0  90 C1 00 68 */	stw r6, 0x68(r1)
/* 8025BC74 00258BD4  91 EB 02 70 */	stw r15, 0x270(r11)
/* 8025BC78 00258BD8  D0 0B 02 74 */	stfs f0, 0x274(r11)
/* 8025BC7C 00258BDC  90 CB 02 78 */	stw r6, 0x278(r11)
/* 8025BC80 00258BE0  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8025BC84 00258BE4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8025BC88 00258BE8  91 81 00 5C */	stw r12, 0x5c(r1)
/* 8025BC8C 00258BEC  90 AB 02 7C */	stw r5, 0x27c(r11)
/* 8025BC90 00258BF0  D0 2B 02 80 */	stfs f1, 0x280(r11)
/* 8025BC94 00258BF4  91 8B 02 84 */	stw r12, 0x284(r11)
/* 8025BC98 00258BF8  90 A1 00 48 */	stw r5, 0x48(r1)
/* 8025BC9C 00258BFC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8025BCA0 00258C00  90 81 00 50 */	stw r4, 0x50(r1)
/* 8025BCA4 00258C04  90 AB 02 88 */	stw r5, 0x288(r11)
/* 8025BCA8 00258C08  D0 0B 02 8C */	stfs f0, 0x28c(r11)
/* 8025BCAC 00258C0C  90 8B 02 90 */	stw r4, 0x290(r11)
/* 8025BCB0 00258C10  91 E1 00 3C */	stw r15, 0x3c(r1)
/* 8025BCB4 00258C14  91 EB 02 94 */	stw r15, 0x294(r11)
/* 8025BCB8 00258C18  38 00 00 06 */	li r0, 6
/* 8025BCBC 00258C1C  38 61 06 30 */	addi r3, r1, 0x630
/* 8025BCC0 00258C20  38 80 00 06 */	li r4, 6
/* 8025BCC4 00258C24  D0 2B 02 98 */	stfs f1, 0x298(r11)
/* 8025BCC8 00258C28  38 A0 00 06 */	li r5, 6
/* 8025BCCC 00258C2C  38 C0 00 06 */	li r6, 6
/* 8025BCD0 00258C30  38 E0 00 06 */	li r7, 6
/* 8025BCD4 00258C34  91 8B 02 9C */	stw r12, 0x29c(r11)
/* 8025BCD8 00258C38  39 00 00 06 */	li r8, 6
/* 8025BCDC 00258C3C  39 20 00 06 */	li r9, 6
/* 8025BCE0 00258C40  39 40 00 06 */	li r10, 6
/* 8025BCE4 00258C44  91 8B 02 A0 */	stw r12, 0x2a0(r11)
/* 8025BCE8 00258C48  D0 2B 02 A4 */	stfs f1, 0x2a4(r11)
/* 8025BCEC 00258C4C  91 8B 02 A8 */	stw r12, 0x2a8(r11)
/* 8025BCF0 00258C50  91 8B 02 AC */	stw r12, 0x2ac(r11)
/* 8025BCF4 00258C54  D0 2B 02 B0 */	stfs f1, 0x2b0(r11)
/* 8025BCF8 00258C58  91 8B 02 B4 */	stw r12, 0x2b4(r11)
/* 8025BCFC 00258C5C  91 8B 02 B8 */	stw r12, 0x2b8(r11)
/* 8025BD00 00258C60  D0 2B 02 BC */	stfs f1, 0x2bc(r11)
/* 8025BD04 00258C64  91 8B 02 C0 */	stw r12, 0x2c0(r11)
/* 8025BD08 00258C68  91 8B 02 C4 */	stw r12, 0x2c4(r11)
/* 8025BD0C 00258C6C  D0 2B 02 C8 */	stfs f1, 0x2c8(r11)
/* 8025BD10 00258C70  91 8B 02 CC */	stw r12, 0x2cc(r11)
/* 8025BD14 00258C74  90 01 00 08 */	stw r0, 8(r1)
/* 8025BD18 00258C78  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025BD1C 00258C7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025BD20 00258C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BD24 00258C84  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025BD28 00258C88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025BD2C 00258C8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8025BD30 00258C90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BD34 00258C94  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8025BD38 00258C98  91 81 00 44 */	stw r12, 0x44(r1)
/* 8025BD3C 00258C9C  91 81 00 30 */	stw r12, 0x30(r1)
/* 8025BD40 00258CA0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8025BD44 00258CA4  91 81 00 38 */	stw r12, 0x38(r1)
/* 8025BD48 00258CA8  91 E1 00 28 */	stw r15, 0x28(r1)
/* 8025BD4C 00258CAC  4B EA 6B E9 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 8025BD50 00258CB0  81 E1 06 78 */	lwz r15, 0x678(r1)
/* 8025BD54 00258CB4  3C 60 80 57 */	lis r3, lbl_80572544@ha
/* 8025BD58 00258CB8  3A 03 25 44 */	addi r16, r3, lbl_80572544@l
/* 8025BD5C 00258CBC  81 61 06 70 */	lwz r11, 0x670(r1)
/* 8025BD60 00258CC0  91 E1 06 B4 */	stw r15, 0x6b4(r1)
/* 8025BD64 00258CC4  38 00 00 06 */	li r0, 6
/* 8025BD68 00258CC8  81 E1 06 7C */	lwz r15, 0x67c(r1)
/* 8025BD6C 00258CCC  38 61 05 C8 */	addi r3, r1, 0x5c8
/* 8025BD70 00258CD0  91 70 00 40 */	stw r11, 0x40(r16)
/* 8025BD74 00258CD4  38 80 00 06 */	li r4, 6
/* 8025BD78 00258CD8  81 61 06 B4 */	lwz r11, 0x6b4(r1)
/* 8025BD7C 00258CDC  38 A0 00 05 */	li r5, 5
/* 8025BD80 00258CE0  91 E1 06 98 */	stw r15, 0x698(r1)
/* 8025BD84 00258CE4  38 C0 00 06 */	li r6, 6
/* 8025BD88 00258CE8  81 E1 06 80 */	lwz r15, 0x680(r1)
/* 8025BD8C 00258CEC  38 E0 00 06 */	li r7, 6
/* 8025BD90 00258CF0  91 70 00 48 */	stw r11, 0x48(r16)
/* 8025BD94 00258CF4  39 00 00 06 */	li r8, 6
/* 8025BD98 00258CF8  81 61 06 98 */	lwz r11, 0x698(r1)
/* 8025BD9C 00258CFC  39 20 00 06 */	li r9, 6
/* 8025BDA0 00258D00  91 E1 06 9C */	stw r15, 0x69c(r1)
/* 8025BDA4 00258D04  39 40 00 06 */	li r10, 6
/* 8025BDA8 00258D08  81 E1 06 84 */	lwz r15, 0x684(r1)
/* 8025BDAC 00258D0C  91 70 00 4C */	stw r11, 0x4c(r16)
/* 8025BDB0 00258D10  81 61 06 9C */	lwz r11, 0x69c(r1)
/* 8025BDB4 00258D14  91 E1 06 A0 */	stw r15, 0x6a0(r1)
/* 8025BDB8 00258D18  81 E1 06 88 */	lwz r15, 0x688(r1)
/* 8025BDBC 00258D1C  91 70 00 50 */	stw r11, 0x50(r16)
/* 8025BDC0 00258D20  81 61 06 A0 */	lwz r11, 0x6a0(r1)
/* 8025BDC4 00258D24  91 E1 06 A4 */	stw r15, 0x6a4(r1)
/* 8025BDC8 00258D28  81 E1 06 8C */	lwz r15, 0x68c(r1)
/* 8025BDCC 00258D2C  91 70 00 54 */	stw r11, 0x54(r16)
/* 8025BDD0 00258D30  81 61 06 A4 */	lwz r11, 0x6a4(r1)
/* 8025BDD4 00258D34  91 E1 06 A8 */	stw r15, 0x6a8(r1)
/* 8025BDD8 00258D38  81 E1 06 90 */	lwz r15, 0x690(r1)
/* 8025BDDC 00258D3C  91 70 00 58 */	stw r11, 0x58(r16)
/* 8025BDE0 00258D40  81 61 06 A8 */	lwz r11, 0x6a8(r1)
/* 8025BDE4 00258D44  91 E1 06 AC */	stw r15, 0x6ac(r1)
/* 8025BDE8 00258D48  81 E1 06 94 */	lwz r15, 0x694(r1)
/* 8025BDEC 00258D4C  91 70 00 5C */	stw r11, 0x5c(r16)
/* 8025BDF0 00258D50  81 61 06 AC */	lwz r11, 0x6ac(r1)
/* 8025BDF4 00258D54  82 21 06 30 */	lwz r17, 0x630(r1)
/* 8025BDF8 00258D58  82 41 06 34 */	lwz r18, 0x634(r1)
/* 8025BDFC 00258D5C  82 61 06 38 */	lwz r19, 0x638(r1)
/* 8025BE00 00258D60  82 81 06 3C */	lwz r20, 0x63c(r1)
/* 8025BE04 00258D64  82 A1 06 40 */	lwz r21, 0x640(r1)
/* 8025BE08 00258D68  82 C1 06 44 */	lwz r22, 0x644(r1)
/* 8025BE0C 00258D6C  82 E1 06 48 */	lwz r23, 0x648(r1)
/* 8025BE10 00258D70  83 01 06 4C */	lwz r24, 0x64c(r1)
/* 8025BE14 00258D74  83 21 06 50 */	lwz r25, 0x650(r1)
/* 8025BE18 00258D78  83 41 06 54 */	lwz r26, 0x654(r1)
/* 8025BE1C 00258D7C  83 61 06 58 */	lwz r27, 0x658(r1)
/* 8025BE20 00258D80  83 81 06 5C */	lwz r28, 0x65c(r1)
/* 8025BE24 00258D84  83 A1 06 60 */	lwz r29, 0x660(r1)
/* 8025BE28 00258D88  83 C1 06 64 */	lwz r30, 0x664(r1)
/* 8025BE2C 00258D8C  83 E1 06 68 */	lwz r31, 0x668(r1)
/* 8025BE30 00258D90  81 81 06 6C */	lwz r12, 0x66c(r1)
/* 8025BE34 00258D94  81 C1 06 74 */	lwz r14, 0x674(r1)
/* 8025BE38 00258D98  91 70 00 60 */	stw r11, 0x60(r16)
/* 8025BE3C 00258D9C  7D EB 7B 78 */	mr r11, r15
/* 8025BE40 00258DA0  92 30 00 00 */	stw r17, 0(r16)
/* 8025BE44 00258DA4  92 50 00 04 */	stw r18, 4(r16)
/* 8025BE48 00258DA8  92 70 00 08 */	stw r19, 8(r16)
/* 8025BE4C 00258DAC  92 90 00 0C */	stw r20, 0xc(r16)
/* 8025BE50 00258DB0  92 B0 00 10 */	stw r21, 0x10(r16)
/* 8025BE54 00258DB4  92 D0 00 14 */	stw r22, 0x14(r16)
/* 8025BE58 00258DB8  92 F0 00 18 */	stw r23, 0x18(r16)
/* 8025BE5C 00258DBC  93 10 00 1C */	stw r24, 0x1c(r16)
/* 8025BE60 00258DC0  93 30 00 20 */	stw r25, 0x20(r16)
/* 8025BE64 00258DC4  93 50 00 24 */	stw r26, 0x24(r16)
/* 8025BE68 00258DC8  93 70 00 28 */	stw r27, 0x28(r16)
/* 8025BE6C 00258DCC  93 90 00 2C */	stw r28, 0x2c(r16)
/* 8025BE70 00258DD0  93 B0 00 30 */	stw r29, 0x30(r16)
/* 8025BE74 00258DD4  93 D0 00 34 */	stw r30, 0x34(r16)
/* 8025BE78 00258DD8  93 F0 00 38 */	stw r31, 0x38(r16)
/* 8025BE7C 00258DDC  91 90 00 3C */	stw r12, 0x3c(r16)
/* 8025BE80 00258DE0  91 D0 00 44 */	stw r14, 0x44(r16)
/* 8025BE84 00258DE4  91 70 00 64 */	stw r11, 0x64(r16)
/* 8025BE88 00258DE8  90 01 00 08 */	stw r0, 8(r1)
/* 8025BE8C 00258DEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025BE90 00258DF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8025BE94 00258DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BE98 00258DF8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8025BE9C 00258DFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8025BEA0 00258E00  90 01 00 20 */	stw r0, 0x20(r1)
/* 8025BEA4 00258E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025BEA8 00258E08  38 00 00 00 */	li r0, 0
/* 8025BEAC 00258E0C  91 E1 06 B0 */	stw r15, 0x6b0(r1)
/* 8025BEB0 00258E10  90 01 00 28 */	stw r0, 0x28(r1)
/* 8025BEB4 00258E14  4B EA 6A 81 */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 8025BEB8 00258E18  3C 60 80 57 */	lis r3, lbl_805725AC@ha
/* 8025BEBC 00258E1C  83 81 05 C8 */	lwz r28, 0x5c8(r1)
/* 8025BEC0 00258E20  3B A3 25 AC */	addi r29, r3, lbl_805725AC@l
/* 8025BEC4 00258E24  83 61 05 CC */	lwz r27, 0x5cc(r1)
/* 8025BEC8 00258E28  83 41 05 D0 */	lwz r26, 0x5d0(r1)
/* 8025BECC 00258E2C  83 21 05 D4 */	lwz r25, 0x5d4(r1)
/* 8025BED0 00258E30  83 01 05 D8 */	lwz r24, 0x5d8(r1)
/* 8025BED4 00258E34  82 E1 05 DC */	lwz r23, 0x5dc(r1)
/* 8025BED8 00258E38  82 C1 05 E0 */	lwz r22, 0x5e0(r1)
/* 8025BEDC 00258E3C  82 A1 05 E4 */	lwz r21, 0x5e4(r1)
/* 8025BEE0 00258E40  82 81 05 E8 */	lwz r20, 0x5e8(r1)
/* 8025BEE4 00258E44  82 61 05 EC */	lwz r19, 0x5ec(r1)
/* 8025BEE8 00258E48  82 41 05 F0 */	lwz r18, 0x5f0(r1)
/* 8025BEEC 00258E4C  82 21 05 F4 */	lwz r17, 0x5f4(r1)
/* 8025BEF0 00258E50  82 01 05 F8 */	lwz r16, 0x5f8(r1)
/* 8025BEF4 00258E54  81 E1 05 FC */	lwz r15, 0x5fc(r1)
/* 8025BEF8 00258E58  81 C1 06 00 */	lwz r14, 0x600(r1)
/* 8025BEFC 00258E5C  81 81 06 04 */	lwz r12, 0x604(r1)
/* 8025BF00 00258E60  81 61 06 08 */	lwz r11, 0x608(r1)
/* 8025BF04 00258E64  81 41 06 0C */	lwz r10, 0x60c(r1)
/* 8025BF08 00258E68  81 21 06 10 */	lwz r9, 0x610(r1)
/* 8025BF0C 00258E6C  81 01 06 14 */	lwz r8, 0x614(r1)
/* 8025BF10 00258E70  80 E1 06 18 */	lwz r7, 0x618(r1)
/* 8025BF14 00258E74  80 C1 06 1C */	lwz r6, 0x61c(r1)
/* 8025BF18 00258E78  80 A1 06 20 */	lwz r5, 0x620(r1)
/* 8025BF1C 00258E7C  80 81 06 24 */	lwz r4, 0x624(r1)
/* 8025BF20 00258E80  80 61 06 28 */	lwz r3, 0x628(r1)
/* 8025BF24 00258E84  80 01 06 2C */	lwz r0, 0x62c(r1)
/* 8025BF28 00258E88  93 9D 00 00 */	stw r28, 0(r29)
/* 8025BF2C 00258E8C  93 7D 00 04 */	stw r27, 4(r29)
/* 8025BF30 00258E90  93 5D 00 08 */	stw r26, 8(r29)
/* 8025BF34 00258E94  93 3D 00 0C */	stw r25, 0xc(r29)
/* 8025BF38 00258E98  93 1D 00 10 */	stw r24, 0x10(r29)
/* 8025BF3C 00258E9C  92 FD 00 14 */	stw r23, 0x14(r29)
/* 8025BF40 00258EA0  92 DD 00 18 */	stw r22, 0x18(r29)
/* 8025BF44 00258EA4  92 BD 00 1C */	stw r21, 0x1c(r29)
/* 8025BF48 00258EA8  92 9D 00 20 */	stw r20, 0x20(r29)
/* 8025BF4C 00258EAC  92 7D 00 24 */	stw r19, 0x24(r29)
/* 8025BF50 00258EB0  92 5D 00 28 */	stw r18, 0x28(r29)
/* 8025BF54 00258EB4  92 3D 00 2C */	stw r17, 0x2c(r29)
/* 8025BF58 00258EB8  92 1D 00 30 */	stw r16, 0x30(r29)
/* 8025BF5C 00258EBC  91 FD 00 34 */	stw r15, 0x34(r29)
/* 8025BF60 00258EC0  91 DD 00 38 */	stw r14, 0x38(r29)
/* 8025BF64 00258EC4  91 9D 00 3C */	stw r12, 0x3c(r29)
/* 8025BF68 00258EC8  91 7D 00 40 */	stw r11, 0x40(r29)
/* 8025BF6C 00258ECC  91 5D 00 44 */	stw r10, 0x44(r29)
/* 8025BF70 00258ED0  91 3D 00 48 */	stw r9, 0x48(r29)
/* 8025BF74 00258ED4  91 1D 00 4C */	stw r8, 0x4c(r29)
/* 8025BF78 00258ED8  90 FD 00 50 */	stw r7, 0x50(r29)
/* 8025BF7C 00258EDC  90 DD 00 54 */	stw r6, 0x54(r29)
/* 8025BF80 00258EE0  90 BD 00 58 */	stw r5, 0x58(r29)
/* 8025BF84 00258EE4  90 9D 00 5C */	stw r4, 0x5c(r29)
/* 8025BF88 00258EE8  90 7D 00 60 */	stw r3, 0x60(r29)
/* 8025BF8C 00258EEC  90 1D 00 64 */	stw r0, 0x64(r29)
/* 8025BF90 00258EF0  B9 C1 06 B8 */	lmw r14, 0x6b8(r1)
/* 8025BF94 00258EF4  80 01 07 04 */	lwz r0, 0x704(r1)
/* 8025BF98 00258EF8  7C 08 03 A6 */	mtlr r0
/* 8025BF9C 00258EFC  38 21 07 00 */	addi r1, r1, 0x700
/* 8025BFA0 00258F00  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AD628
lbl_805AD628:
	# ROM: 0x3F9EC8
	.4byte 0x0000002F

.global lbl_805AD62C
lbl_805AD62C:
	# ROM: 0x3F9ECC
	.4byte 0x42480000

.global lbl_805AD630
lbl_805AD630:
	# ROM: 0x3F9ED0
	.float 0.3

.global lbl_805AD634
lbl_805AD634:
	# ROM: 0x3F9ED4
	.float 0.5

.global lbl_805AD638
lbl_805AD638:
	# ROM: 0x3F9ED8
	.4byte 0

.global lbl_805AD63C
lbl_805AD63C:
	# ROM: 0x3F9EDC
	.4byte 0x3F4CCCCD

.global lbl_805AD640
lbl_805AD640:
	# ROM: 0x3F9EE0
	.float 0.7

.global lbl_805AD644
lbl_805AD644:
	# ROM: 0x3F9EE4
	.float 2.0

.global lbl_805AD648
lbl_805AD648:
	# ROM: 0x3F9EE8
	.float 1.0

.global lbl_805AD64C
lbl_805AD64C:
	# ROM: 0x3F9EEC
	.4byte 0x41200000

.global lbl_805AD650
lbl_805AD650:
	# ROM: 0x3F9EF0
	.4byte 0x3FE00000

.global lbl_805AD654
lbl_805AD654:
	# ROM: 0x3F9EF4
	.4byte 0x42C80000

.global lbl_805AD658
lbl_805AD658:
	# ROM: 0x3F9EF8
	.float 0.5

.global lbl_805AD65C
lbl_805AD65C:
	# ROM: 0x3F9EFC
	.4byte 0x3F2AACDA

.global lbl_805AD660
lbl_805AD660:
	# ROM: 0x3F9F00
	.float 0.9

.global lbl_805AD664
lbl_805AD664:
	# ROM: 0x3F9F04
	.float 5.0

.global lbl_805AD668
lbl_805AD668:
	# ROM: 0x3F9F08
	.4byte 0x42480000

.global lbl_805AD66C
lbl_805AD66C:
	# ROM: 0x3F9F0C
	.4byte 0x437A0000

.global lbl_805AD670
lbl_805AD670:
	# ROM: 0x3F9F10
	.4byte 0x44480000

.global lbl_805AD674
lbl_805AD674:
	# ROM: 0x3F9F14
	.4byte 0x42F00000

.global lbl_805AD678
lbl_805AD678:
	# ROM: 0x3F9F18
	.4byte 0x437A0000

.global lbl_805AD67C
lbl_805AD67C:
	# ROM: 0x3F9F1C
	.4byte 0x40400000

.global lbl_805AD680
lbl_805AD680:
	# ROM: 0x3F9F20
	.float 90.0

.global lbl_805AD684
lbl_805AD684:
	# ROM: 0x3F9F24
	.4byte 0xC2C80000

.global lbl_805AD688
lbl_805AD688:
	# ROM: 0x3F9F28
	.4byte 0x41A00000

.global lbl_805AD68C
lbl_805AD68C:
	# ROM: 0x3F9F2C
	.4byte 0xBFA0D97C

.global lbl_805AD690
lbl_805AD690:
	# ROM: 0x3F9F30
	.4byte 0x3FA0D97C

.global lbl_805AD694
lbl_805AD694:
	# ROM: 0x3F9F34
	.4byte 0x3EC90FDB

.global lbl_805AD698
lbl_805AD698:
	# ROM: 0x3F9F38
	.4byte 0x42200000

.global lbl_805AD69C
lbl_805AD69C:
	# ROM: 0x3F9F3C
	.float 8.0

.global lbl_805AD6A0
lbl_805AD6A0:
	# ROM: 0x3F9F40
	.4byte 0x43700000

.global lbl_805AD6A4
lbl_805AD6A4:
	# ROM: 0x3F9F44
	.float 0.2

.global lbl_805AD6A8
lbl_805AD6A8:
	# ROM: 0x3F9F48
	.4byte 0xC0C00000

.global lbl_805AD6AC
lbl_805AD6AC:
	# ROM: 0x3F9F4C
	.4byte 0x3F99999A

.global lbl_805AD6B0
lbl_805AD6B0:
	# ROM: 0x3F9F50
	.4byte 0x43FA0000

.global lbl_805AD6B4
lbl_805AD6B4:
	# ROM: 0x3F9F54
	.float 0.1

.global lbl_805AD6B8
lbl_805AD6B8:
	# ROM: 0x3F9F58
	.float 0.017453292

.global lbl_805AD6BC
lbl_805AD6BC:
	# ROM: 0x3F9F5C
	.4byte 0x447A0000

.global lbl_805AD6C0
lbl_805AD6C0:
	# ROM: 0x3F9F60
	.4byte 0x41F00000

.global lbl_805AD6C4
lbl_805AD6C4:
	# ROM: 0x3F9F64
	.4byte 0x3D4CCCCD

.global lbl_805AD6C8
lbl_805AD6C8:
	# ROM: 0x3F9F68
	.4byte 0xC1200000

.global lbl_805AD6CC
lbl_805AD6CC:
	# ROM: 0x3F9F6C
	.float -1.0

.global lbl_805AD6D0
lbl_805AD6D0:
	# ROM: 0x3F9F70
	.4byte 0xBFC90FDB

.global lbl_805AD6D4
lbl_805AD6D4:
	# ROM: 0x3F9F74
	.4byte 0x43AF0000

.global lbl_805AD6D8
lbl_805AD6D8:
	# ROM: 0x3F9F78
	.4byte 0x432F0000

.global lbl_805AD6DC
lbl_805AD6DC:
	# ROM: 0x3F9F7C
	.4byte 0x3EAAA64C

.global lbl_805AD6E0
lbl_805AD6E0:
	# ROM: 0x3F9F80
	.double 4.503601774854144E15

.global lbl_805AD6E8
lbl_805AD6E8:
	# ROM: 0x3F9F88
	.float 4.0

.global lbl_805AD6EC
lbl_805AD6EC:
	# ROM: 0x3F9F8C
	.4byte 0x41400000

.global lbl_805AD6F0
lbl_805AD6F0:
	# ROM: 0x3F9F90
	.4byte 0x42300000

.global lbl_805AD6F4
lbl_805AD6F4:
	# ROM: 0x3F9F94
	.4byte 0x41100000

.global lbl_805AD6F8
lbl_805AD6F8:
	# ROM: 0x3F9F98
	.4byte 0x3F32B8C2

.global lbl_805AD6FC
lbl_805AD6FC:
	# ROM: 0x3F9F9C
	.4byte 0x40490FDB

.global lbl_805AD700
lbl_805AD700:
	# ROM: 0x3F9FA0
	.4byte 0xBF32B8C2
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D4B98
lbl_803D4B98:
	# ROM: 0x3D1B98
	.4byte 0x803D4D5C
	.4byte 0x803D4D63
	.4byte 0x3F28F5C3
	.4byte 0x803D4D63
	.4byte 0x803D4D6A
	.4byte 0x3F28F5C3
	.4byte 0x803D4D6A
	.4byte 0x803D4D71
	.4byte 0x3F28F5C3
	.4byte 0x803D4D71
	.4byte 0x803D4D78
	.4byte 0x3F28F5C3

.global lbl_803D4BC8
lbl_803D4BC8:
	# ROM: 0x3D1BC8
	.4byte 0x803D4D7F
	.4byte 0x3F19999A
	.4byte 0x803D4D8D
	.4byte 0x3F19999A
	.4byte 0x803D4D95
	.float 0.3
	.4byte 0x803D4DA6
	.4byte 0x3F19999A
	.4byte 0x803D4DAD
	.float 0.5
	.4byte 0x803D4DB5
	.float 0.5
	.4byte 0x803D4DBD
	.4byte 0x3F19999A
	.4byte 0x803D4DC5
	.4byte 0x3F19999A
	.4byte 0x803D4DCD
	.float 0.4
	.4byte 0x803D4DD7
	.float 0.4

.global lbl_803D4C18
lbl_803D4C18:
	# ROM: 0x3D1C18
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42040000
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0x42700000
	.4byte 0x42480000
	.4byte 0
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x42200000
	.4byte 0x42200000
	.4byte 0x41A00000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x41200000
	.float 15.0
	.4byte 0x42960000
	.4byte 0x42C80000
	.4byte 0x41C80000
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x41F00000
	.4byte 0x41F00000
	.4byte 0x42200000
	.4byte 0x42480000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x01000000

.global lbl_803D4CCC
lbl_803D4CCC:
	# ROM: 0x3D1CCC
	.4byte 0
	.4byte 0x41A00000
	.4byte 0x42200000
	.4byte 0
	.4byte 0
	.4byte 0x42200000
	.4byte 0
	.4byte 0
	.4byte 0x428C0000
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x42700000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x42200000
	.4byte 0
	.4byte 0x42200000
	.4byte 0x41F00000
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0
	.4byte 0x42480000
	.4byte 0
	.4byte 0
	.4byte 0x42480000
	.4byte 0
	.4byte 0x42200000
	.4byte 0x42700000
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803D4D5C
lbl_803D4D5C:
	# ROM: 0x3D1D5C
	.asciz "Tail_1"
	.byte 0x54
	.asciz "ail_3"
	.byte 0x54, 0x61
	.asciz "il_5"
	.byte 0x54, 0x61, 0x69
	.4byte 0x6C5F3700
	.asciz "Tail_9"
	.byte 0x53
	.asciz "keleton_Root"
	.byte 0x53, 0x70, 0x69
	.asciz "ne_2"
	.byte 0x62, 0x72, 0x65
	.asciz "astPlate_LCTR"
	.byte 0x48, 0x65
	.asciz "ad_1"
	.byte 0x4C, 0x5F, 0x77
	.asciz "rist"
	.byte 0x52, 0x5F, 0x77
	.asciz "rist"
	.byte 0x4C, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x52, 0x5F, 0x61
	.asciz "nkle"
	.byte 0x4C, 0x5F, 0x70
	.asciz "inky_1"
	.byte 0x52
	.asciz "_pinky_1"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900
	.4byte 0x00202D20
	.asciz "Collision Actor "
	.byte 0x6D, 0x6F, 0x75
	.asciz "th_LCTR"
	.asciz "WingSmokeSmall1"
	.asciz "WingSmokeSmall2"
	.asciz "WingSmokeSmall3"
	.asciz "WingSmokeSmall4"
	.asciz "WingSmokeSmall5"
	.asciz "WingSmokeSmall6"
	.asciz "WingSmokeSmall7"
	.asciz "WingSmokeSmall8"
	.asciz "WingFire1"
	.byte 0x57, 0x69
	.asciz "ngFire2"
	.asciz "WingFire3"
	.byte 0x57, 0x69
	.asciz "ngFire4"
	.asciz "WingFire5"
	.byte 0x57, 0x69
	.asciz "ngFire6"
	.asciz "WingFire7"
	.byte 0x57, 0x69
	.asciz "ngFire8"
	.asciz "WingSparks1"
	.asciz "WingSparks2"
	.asciz "WingSparks3"
	.asciz "WingSparks4"
	.asciz "WingSparks5"
	.asciz "WingSparks6"
	.asciz "WingSparks7"
	.asciz "WingSparks8"
	.asciz "L_wingBone1_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone1_2"
	.asciz "L_wingBone2_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone2_2"
	.asciz "L_wingBone3_1"
	.byte 0x4C, 0x5F
	.asciz "wingBone3_2"
	.asciz "L_wingFlesh1_1"
	.byte 0x4C
	.asciz "_wingFlesh1_2"
	.byte 0x4C, 0x5F
	.asciz "wingFlesh2_1"
	.byte 0x4C, 0x5F, 0x77
	.asciz "ingFlesh2_2"
	.asciz "L_wingFlesh3_1"
	.byte 0x4C
	.asciz "_wingFlesh3_2"
	.byte 0x52, 0x5F
	.asciz "wingBone1_1"
	.asciz "R_wingBone1_2"
	.byte 0x52, 0x5F
	.asciz "wingBone2_1"
	.asciz "R_wingBone2_2"
	.byte 0x52, 0x5F
	.asciz "wingBone3_1"
	.asciz "R_wingBone3_2"
	.byte 0x52, 0x5F
	.asciz "wingFlesh1_1"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingFlesh1_2"
	.asciz "R_wingFlesh2_1"
	.byte 0x52
	.asciz "_wingFlesh2_2"
	.byte 0x52, 0x5F
	.asciz "wingFlesh3_1"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingFlesh3_2"
	.asciz "L_wingtip_1_LCTR"
	.byte 0x4C, 0x5F, 0x77
	.asciz "ingtip_2_LCTR"
	.byte 0x4C, 0x5F
	.asciz "wingtip_3_LCTR"
	.byte 0x52
	.asciz "_wingtip_1_LCTR"
	.asciz "R_wingtip_2_LCTR"
	.byte 0x52, 0x5F, 0x77
	.asciz "ingtip_3_LCTR"
	.balign 4
	.4byte 0

.global lbl_803D5100
lbl_803D5100:
	# ROM: 0x3D2100
	.asciz "GasJet01"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet02"
	.byte 0x47, 0x61
	.asciz "sJet03"
	.byte 0x47
	.asciz "asJet04"
	.asciz "GasJet05"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet06"
	.byte 0x47, 0x61
	.asciz "sJet07"
	.byte 0x47
	.asciz "asJet08"
	.asciz "GasJet09"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet10"
	.byte 0x47, 0x61
	.asciz "sJet11"
	.byte 0x47
	.asciz "asJet12"
	.asciz "GasJet13"
	.byte 0x47, 0x61, 0x73
	.asciz "Jet14"
	.byte 0x47, 0x61
	.asciz "s_01_LCTR"
	.byte 0x47, 0x61
	.asciz "s_02_LCTR"
	.byte 0x47, 0x61
	.asciz "s_03_LCTR"
	.byte 0x47, 0x61
	.asciz "s_04_LCTR"
	.byte 0x47, 0x61
	.asciz "s_05_LCTR"
	.byte 0x47, 0x61
	.asciz "s_06_LCTR"
	.byte 0x47, 0x61
	.asciz "s_07_LCTR"
	.byte 0x47, 0x61
	.asciz "s_08_LCTR"
	.byte 0x47, 0x61
	.asciz "s_09_LCTR"
	.byte 0x47, 0x61
	.asciz "s_10_LCTR"
	.byte 0x47, 0x61
	.asciz "s_11_LCTR"
	.byte 0x47, 0x61
	.asciz "s_12_LCTR"
	.byte 0x47, 0x61
	.asciz "s_13_LCTR"
	.byte 0x47, 0x61
	.asciz "s_14_LCTR"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.balign 4


.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CPatterned_cpp

.section .data
.balign 8

.global lbl_803DA5C8
lbl_803DA5C8:
	# ROM: 0x3D75C8
	.4byte 0
	.4byte 0
	.4byte __dt__10CPatternedFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__10CPatternedFfR13CStateManager
	.4byte AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
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
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC13CStateManager
	.4byte DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
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

.global lbl_803DA894
lbl_803DA894:
	# ROM: 0x3D7894
	.4byte lbl_80078F20
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_80079274
	.4byte lbl_8007930C
	.4byte lbl_80079100
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_8007930C
	.4byte lbl_800792D8
	.4byte lbl_800792F0
	.4byte lbl_80079300

.global lbl_803DA8F8
lbl_803DA8F8:
	# ROM: 0x3D78F8
	.4byte lbl_8007AB18
	.4byte lbl_8007A84C
	.4byte lbl_8007A8D4
	.4byte lbl_8007A8F8
	.4byte lbl_8007A8B8
	.4byte lbl_8007AA0C
	.4byte lbl_8007AA34
	.4byte lbl_8007AAB8
	.4byte lbl_8007A928
	.4byte lbl_8007A918

.global lbl_803DA920
lbl_803DA920:
	# ROM: 0x3D7920
	.4byte lbl_8007D0BC
	.4byte lbl_8007CE88
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007CDCC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007CE1C
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007CBD0
	.4byte lbl_8007CEA4
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007D0BC
	.4byte lbl_8007CEE0
	.4byte lbl_8007D06C

.global lbl_803DA9CC
lbl_803DA9CC:
	# ROM: 0x3D79CC
	.4byte 0
	.4byte 0
	.4byte __dt__22CBCProjectileAttackCmdFv

.global lbl_803DA9D8
lbl_803DA9D8:
	# ROM: 0x3D79D8
	.4byte 0
	.4byte 0
	.4byte __dt__17CBCMeleeAttackCmd

.global lbl_803DA9E4
lbl_803DA9E4:
	# ROM: 0x3D79E4
	.4byte 0
	.4byte 0
	.4byte __dt__10CBCStepCmd

.global lbl_803DA9F0
lbl_803DA9F0:
	# ROM: 0x3D79F0
	.4byte 0
	.4byte 0
	.4byte __dt__14CBCGenerateCmd

.global lbl_803DA9FC
lbl_803DA9FC:
	# ROM: 0x3D79FC
	.4byte 0
	.4byte 0
	.4byte __dt__10CBCJumpCmd

.global lbl_803DAA08
lbl_803DAA08:
	# ROM: 0x3D7A08
	.4byte 0
	.4byte 0
	.4byte __dt__11CBCSlideCmd

.global lbl_803DAA14
lbl_803DAA14:
	# ROM: 0x3D7A14
	.4byte 0
	.4byte 0
	.4byte __dt__11CBCTauntCmd

.global lbl_803DAA20
lbl_803DAA20:
	# ROM: 0x3D7A20
	.4byte 0
	.4byte 0
	.4byte __dt__11CBCGetupCmd

.global lbl_803DAA2C
lbl_803DAA2C:
	# ROM: 0x3D7A2C
	.4byte 0
	.4byte 0
	.4byte __dt__18CBCLoopReactionCmd

.global lbl_803DAA38
lbl_803DAA38:
	# ROM: 0x3D7A38
	.4byte 0
	.4byte 0
	.4byte __dt__21CBCLoopHitReactionCmd

.global lbl_803DAA44
lbl_803DAA44:
	# ROM: 0x3D7A44
	.4byte 0
	.4byte 0
	.4byte __dt__15CBCKnockBackCmd

.global lbl_803DAA50
lbl_803DAA50:
	# ROM: 0x3D7A50
	.4byte 0
	.4byte 0
	.4byte __dt__15CBCKnockDownCmd

.global lbl_803DAA5C
lbl_803DAA5C:
	# ROM: 0x3D7A5C
	.4byte 0
	.4byte 0
	.4byte __dt__12CBCHurledCmd

.global lbl_803DAA68
lbl_803DAA68:
	# ROM: 0x3D7A68
	.4byte 0
	.4byte 0
	.4byte __dt__13CBodyStateCmdFv
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A6FA0
lbl_805A6FA0:
	# ROM: 0x3F4940
	.4byte 0x00000013

.global lbl_805A6FA4
lbl_805A6FA4:
	# ROM: 0x3F4944
	.4byte 0x00000021

.global lbl_805A6FA8
lbl_805A6FA8:
	# ROM: 0x3F4948
	.4byte 0x00000013

.global lbl_805A6FAC
lbl_805A6FAC:
	# ROM: 0x3F494C
	.4byte 0x00000029

.global lbl_805A6FB0
lbl_805A6FB0:
	# ROM: 0x3F4950
	.4byte 0x00000028

.global lbl_805A6FB4
lbl_805A6FB4:
	# ROM: 0x3F4954
	.4byte 0x00000021

.global lbl_805A6FB8
lbl_805A6FB8:
	# ROM: 0x3F4958
	.4byte 0x00000013

.global lbl_805A6FBC
lbl_805A6FBC:
	# ROM: 0x3F495C
	.4byte 0x00000029

.global lbl_805A6FC0
lbl_805A6FC0:
	# ROM: 0x3F4960
	.4byte 0x00000025

.global lbl_805A6FC4
lbl_805A6FC4:
	# ROM: 0x3F4964
	.4byte 0x00000028

.global lbl_805A6FC8
lbl_805A6FC8:
	# ROM: 0x3F4968
	.4byte 0x00000021

.global lbl_805A6FCC
lbl_805A6FCC:
	# ROM: 0x3F496C
	.4byte 0x00000020

.global lbl_805A6FD0
lbl_805A6FD0:
	# ROM: 0x3F4970
	.4byte 0x00000020

.global lbl_805A6FD4
lbl_805A6FD4:
	# ROM: 0x3F4974
	.4byte 0

.global lbl_805A6FD8
lbl_805A6FD8:
	# ROM: 0x3F4978
	.float 1.0

.global lbl_805A6FDC
lbl_805A6FDC:
	# ROM: 0x3F497C
	.4byte 0x00000013

.global lbl_805A6FE0
lbl_805A6FE0:
	# ROM: 0x3F4980
	.4byte 0x0000001D

.global lbl_805A6FE4
lbl_805A6FE4:
	# ROM: 0x3F4984
	.4byte 0x0000001E

.global lbl_805A6FE8
lbl_805A6FE8:
	# ROM: 0x3F4988
	.4byte 0x0000001F

.global lbl_805A6FEC
lbl_805A6FEC:
	# ROM: 0x3F498C
	.4byte 0x00000021

.section .sbss
.balign 8
# CPatterned
.global lbl_805A8E10
lbl_805A8E10:
	.skip 0x4
.global lbl_805A8E14
lbl_805A8E14:
	.skip 0x4
.global lbl_805A8E18
lbl_805A8E18:
	.skip 0x8
.global lbl_805A8E20
lbl_805A8E20:
	.skip 0x4
.global lbl_805A8E24
lbl_805A8E24:
	.skip 0x4
.global lbl_805A8E28
lbl_805A8E28:
	.skip 0x4
.global lbl_805A8E2C
lbl_805A8E2C:
	.skip 0x4
.global lbl_805A8E30
lbl_805A8E30:
	.skip 0x8
.global lbl_805A8E38
lbl_805A8E38:
	.skip 0x4
.global lbl_805A8E3C
lbl_805A8E3C:
	.skip 0x4

.section .sdata2, "a"
.balign 8

.global lbl_805AA610
lbl_805AA610:
	# ROM: 0x3F6EB0
	.4byte 0x3EA8F5C3

.global lbl_805AA614
lbl_805AA614:
	# ROM: 0x3F6EB4
	.4byte 0x40400000

.global lbl_805AA618
lbl_805AA618:
	# ROM: 0x3F6EB8
	.float 0.1

.global lbl_805AA61C
lbl_805AA61C:
	# ROM: 0x3F6EBC
	.4byte 0x3C010204

.global lbl_805AA620
lbl_805AA620:
	# ROM: 0x3F6EC0
	.4byte 0x3B808081

.global lbl_805AA624
lbl_805AA624:
	# ROM: 0x3F6EC4
	.float 1.0

.global lbl_805AA628
lbl_805AA628:
	# ROM: 0x3F6EC8
	.4byte 0

.global lbl_805AA62C
lbl_805AA62C:
	# ROM: 0x3F6ECC
	.float 1.5

.global lbl_805AA630
lbl_805AA630:
	# ROM: 0x3F6ED0
	.float 0.5

.global lbl_805AA634
lbl_805AA634:
	# ROM: 0x3F6ED4
	.4byte 0xBEAAAAAB

.global lbl_805AA638
lbl_805AA638:
	# ROM: 0x3F6ED8
	.float 0.1

.global lbl_805AA63C
lbl_805AA63C:
	# ROM: 0x3F6EDC
	.4byte 0x3F59999A

.global lbl_805AA640
lbl_805AA640:
	# ROM: 0x3F6EE0
	.float 0.9

.global lbl_805AA644
lbl_805AA644:
	# ROM: 0x3F6EE4
	.float 1.0E-4

.global lbl_805AA648
lbl_805AA648:
	# ROM: 0x3F6EE8
	.float 5.0

.global lbl_805AA64C
lbl_805AA64C:
	# ROM: 0x3F6EEC
	.4byte 0x3F34FDF4

.global lbl_805AA650
lbl_805AA650:
	# ROM: 0x3F6EF0
	.4byte 0x447A0000

.global lbl_805AA654
lbl_805AA654:
	# ROM: 0x3F6EF4
	.4byte 0x3F4CCCCD

.global lbl_805AA658
lbl_805AA658:
	# ROM: 0x3F6EF8
	.float 15.0

.global lbl_805AA65C
lbl_805AA65C:
	# ROM: 0x3F6EFC
	.float 0.2

.global lbl_805AA660
lbl_805AA660:
	# ROM: 0x3F6F00
	.4byte 0x3EA8F5C3

.global lbl_805AA664
lbl_805AA664:
	# ROM: 0x3F6F04
	.float 255.0

.global lbl_805AA668
lbl_805AA668:
	# ROM: 0x3F6F08
	.float -1.0

.global lbl_805AA66C
lbl_805AA66C:
	# ROM: 0x3F6F0C
	.float 0.25

.global lbl_805AA670
lbl_805AA670:
	# ROM: 0x3F6F10
	.4byte 0x42200000

.global lbl_805AA674
lbl_805AA674:
	# ROM: 0x3F6F14
	.float 0.3

.global lbl_805AA678
lbl_805AA678:
	# ROM: 0x3F6F18
	.float 0.7853982

.global lbl_805AA67C
lbl_805AA67C:
	# ROM: 0x3F6F1C
	.float 1.1920929E-7

.global lbl_805AA680
lbl_805AA680:
	# ROM: 0x3F6F20
	.float 0.6

.global lbl_805AA684
lbl_805AA684:
	# ROM: 0x3F6F24
	.float 0.017453292

.section .text, "ax"

.global __dt__10CPatternedFv
__dt__10CPatternedFv:
/* 80077570 000744D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80077574 000744D4  7C 08 02 A6 */	mflr r0
/* 80077578 000744D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007757C 000744DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80077580 000744E0  7C 9F 23 78 */	mr r31, r4
/* 80077584 000744E4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80077588 000744E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007758C 000744EC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80077590 000744F0  41 82 01 C0 */	beq lbl_80077750
/* 80077594 000744F4  3C 60 80 3E */	lis r3, lbl_803DA5C8@ha
/* 80077598 000744F8  34 1E 05 4C */	addic. r0, r30, 0x54c
/* 8007759C 000744FC  38 03 A5 C8 */	addi r0, r3, lbl_803DA5C8@l
/* 800775A0 00074500  90 1E 00 00 */	stw r0, 0(r30)
/* 800775A4 00074504  41 82 00 30 */	beq lbl_800775D4
/* 800775A8 00074508  88 1E 05 58 */	lbz r0, 0x558(r30)
/* 800775AC 0007450C  28 00 00 00 */	cmplwi r0, 0
/* 800775B0 00074510  41 82 00 1C */	beq lbl_800775CC
/* 800775B4 00074514  34 7E 05 4C */	addic. r3, r30, 0x54c
/* 800775B8 00074518  41 82 00 14 */	beq lbl_800775CC
/* 800775BC 0007451C  28 03 00 00 */	cmplwi r3, 0
/* 800775C0 00074520  41 82 00 0C */	beq lbl_800775CC
/* 800775C4 00074524  38 80 00 00 */	li r4, 0
/* 800775C8 00074528  48 2C 98 79 */	bl __dt__6CTokenFv
lbl_800775CC:
/* 800775CC 0007452C  38 00 00 00 */	li r0, 0
/* 800775D0 00074530  98 1E 05 58 */	stb r0, 0x558(r30)
lbl_800775D4:
/* 800775D4 00074534  34 1E 05 30 */	addic. r0, r30, 0x530
/* 800775D8 00074538  41 82 00 30 */	beq lbl_80077608
/* 800775DC 0007453C  88 1E 05 3C */	lbz r0, 0x53c(r30)
/* 800775E0 00074540  28 00 00 00 */	cmplwi r0, 0
/* 800775E4 00074544  41 82 00 1C */	beq lbl_80077600
/* 800775E8 00074548  34 7E 05 30 */	addic. r3, r30, 0x530
/* 800775EC 0007454C  41 82 00 14 */	beq lbl_80077600
/* 800775F0 00074550  28 03 00 00 */	cmplwi r3, 0
/* 800775F4 00074554  41 82 00 0C */	beq lbl_80077600
/* 800775F8 00074558  38 80 00 00 */	li r4, 0
/* 800775FC 0007455C  48 2C 98 45 */	bl __dt__6CTokenFv
lbl_80077600:
/* 80077600 00074560  38 00 00 00 */	li r0, 0
/* 80077604 00074564  98 1E 05 3C */	stb r0, 0x53c(r30)
lbl_80077608:
/* 80077608 00074568  34 1E 05 20 */	addic. r0, r30, 0x520
/* 8007760C 0007456C  41 82 00 30 */	beq lbl_8007763C
/* 80077610 00074570  88 1E 05 2C */	lbz r0, 0x52c(r30)
/* 80077614 00074574  28 00 00 00 */	cmplwi r0, 0
/* 80077618 00074578  41 82 00 1C */	beq lbl_80077634
/* 8007761C 0007457C  34 7E 05 20 */	addic. r3, r30, 0x520
/* 80077620 00074580  41 82 00 14 */	beq lbl_80077634
/* 80077624 00074584  28 03 00 00 */	cmplwi r3, 0
/* 80077628 00074588  41 82 00 0C */	beq lbl_80077634
/* 8007762C 0007458C  38 80 00 00 */	li r4, 0
/* 80077630 00074590  48 2C 98 11 */	bl __dt__6CTokenFv
lbl_80077634:
/* 80077634 00074594  38 00 00 00 */	li r0, 0
/* 80077638 00074598  98 1E 05 2C */	stb r0, 0x52c(r30)
lbl_8007763C:
/* 8007763C 0007459C  34 1E 05 10 */	addic. r0, r30, 0x510
/* 80077640 000745A0  41 82 00 14 */	beq lbl_80077654
/* 80077644 000745A4  34 1E 05 10 */	addic. r0, r30, 0x510
/* 80077648 000745A8  41 82 00 0C */	beq lbl_80077654
/* 8007764C 000745AC  38 7E 05 10 */	addi r3, r30, 0x510
/* 80077650 000745B0  48 00 67 35 */	bl sub_8007dd84
lbl_80077654:
/* 80077654 000745B4  34 1E 04 60 */	addic. r0, r30, 0x460
/* 80077658 000745B8  41 82 00 60 */	beq lbl_800776B8
/* 8007765C 000745BC  34 1E 04 84 */	addic. r0, r30, 0x484
/* 80077660 000745C0  41 82 00 58 */	beq lbl_800776B8
/* 80077664 000745C4  80 BE 04 84 */	lwz r5, 0x484(r30)
/* 80077668 000745C8  38 60 00 00 */	li r3, 0
/* 8007766C 000745CC  2C 05 00 00 */	cmpwi r5, 0
/* 80077670 000745D0  40 81 00 40 */	ble lbl_800776B0
/* 80077674 000745D4  2C 05 00 08 */	cmpwi r5, 8
/* 80077678 000745D8  38 85 FF F8 */	addi r4, r5, -8
/* 8007767C 000745DC  40 81 00 20 */	ble lbl_8007769C
/* 80077680 000745E0  38 04 00 07 */	addi r0, r4, 7
/* 80077684 000745E4  54 00 E8 FE */	srwi r0, r0, 3
/* 80077688 000745E8  7C 09 03 A6 */	mtctr r0
/* 8007768C 000745EC  2C 04 00 00 */	cmpwi r4, 0
/* 80077690 000745F0  40 81 00 0C */	ble lbl_8007769C
lbl_80077694:
/* 80077694 000745F4  38 63 00 08 */	addi r3, r3, 8
/* 80077698 000745F8  42 00 FF FC */	bdnz lbl_80077694
lbl_8007769C:
/* 8007769C 000745FC  7C 03 28 50 */	subf r0, r3, r5
/* 800776A0 00074600  7C 09 03 A6 */	mtctr r0
/* 800776A4 00074604  7C 03 28 00 */	cmpw r3, r5
/* 800776A8 00074608  40 80 00 08 */	bge lbl_800776B0
lbl_800776AC:
/* 800776AC 0007460C  42 00 00 00 */	bdnz lbl_800776AC
lbl_800776B0:
/* 800776B0 00074610  38 00 00 00 */	li r0, 0
/* 800776B4 00074614  90 1E 04 84 */	stw r0, 0x484(r30)
lbl_800776B8:
/* 800776B8 00074618  34 1E 04 50 */	addic. r0, r30, 0x450
/* 800776BC 0007461C  41 82 00 30 */	beq lbl_800776EC
/* 800776C0 00074620  83 BE 04 50 */	lwz r29, 0x450(r30)
/* 800776C4 00074624  28 1D 00 00 */	cmplwi r29, 0
/* 800776C8 00074628  41 82 00 24 */	beq lbl_800776EC
/* 800776CC 0007462C  38 7D 02 A4 */	addi r3, r29, 0x2a4
/* 800776D0 00074630  38 80 FF FF */	li r4, -1
/* 800776D4 00074634  48 0B CA A5 */	bl __dt__14CBodyStateInfoFv
/* 800776D8 00074638  38 7D 00 04 */	addi r3, r29, 4
/* 800776DC 0007463C  38 80 FF FF */	li r4, -1
/* 800776E0 00074640  48 0B A1 15 */	bl __dt__16CBodyStateCmdMgrFv
/* 800776E4 00074644  7F A3 EB 78 */	mr r3, r29
/* 800776E8 00074648  48 29 E2 49 */	bl Free__7CMemoryFPCv
lbl_800776EC:
/* 800776EC 0007464C  34 1E 03 8C */	addic. r0, r30, 0x38c
/* 800776F0 00074650  41 82 00 44 */	beq lbl_80077734
/* 800776F4 00074654  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 800776F8 00074658  80 7E 03 98 */	lwz r3, 0x398(r30)
/* 800776FC 0007465C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 80077700 00074660  90 61 00 0C */	stw r3, 0xc(r1)
/* 80077704 00074664  7C 64 1B 78 */	mr r4, r3
/* 80077708 00074668  7C 03 02 14 */	add r0, r3, r0
/* 8007770C 0007466C  90 61 00 08 */	stw r3, 8(r1)
/* 80077710 00074670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077714 00074674  90 01 00 10 */	stw r0, 0x10(r1)
/* 80077718 00074678  48 00 00 08 */	b lbl_80077720
lbl_8007771C:
/* 8007771C 0007467C  38 84 00 24 */	addi r4, r4, 0x24
lbl_80077720:
/* 80077720 00074680  7C 04 00 40 */	cmplw r4, r0
/* 80077724 00074684  40 82 FF F8 */	bne lbl_8007771C
/* 80077728 00074688  28 03 00 00 */	cmplwi r3, 0
/* 8007772C 0007468C  41 82 00 08 */	beq lbl_80077734
/* 80077730 00074690  48 29 E2 01 */	bl Free__7CMemoryFPCv
lbl_80077734:
/* 80077734 00074694  7F C3 F3 78 */	mr r3, r30
/* 80077738 00074698  38 80 00 00 */	li r4, 0
/* 8007773C 0007469C  48 02 B6 45 */	bl __dt__3CAiFv
/* 80077740 000746A0  7F E0 07 35 */	extsh. r0, r31
/* 80077744 000746A4  40 81 00 0C */	ble lbl_80077750
/* 80077748 000746A8  7F C3 F3 78 */	mr r3, r30
/* 8007774C 000746AC  48 29 E1 E5 */	bl Free__7CMemoryFPCv
lbl_80077750:
/* 80077750 000746B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80077754 000746B4  7F C3 F3 78 */	mr r3, r30
/* 80077758 000746B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007775C 000746BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80077760 000746C0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80077764 000746C4  7C 08 03 A6 */	mtlr r0
/* 80077768 000746C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8007776C 000746CC  4E 80 00 20 */	blr

.global GetTouchBounds__10CPatternedCFv
GetTouchBounds__10CPatternedCFv:
/* 80077770 000746D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80077774 000746D4  7C 08 02 A6 */	mflr r0
/* 80077778 000746D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007777C 000746DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80077780 000746E0  7C 7F 1B 78 */	mr r31, r3
/* 80077784 000746E4  38 61 00 08 */	addi r3, r1, 8
/* 80077788 000746E8  48 0A 31 A5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8007778C 000746EC  38 00 00 01 */	li r0, 1
/* 80077790 000746F0  28 1F 00 00 */	cmplwi r31, 0
/* 80077794 000746F4  98 1F 00 18 */	stb r0, 0x18(r31)
/* 80077798 000746F8  41 82 00 34 */	beq lbl_800777CC
/* 8007779C 000746FC  C0 01 00 08 */	lfs f0, 8(r1)
/* 800777A0 00074700  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800777A4 00074704  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800777A8 00074708  D0 1F 00 04 */	stfs f0, 4(r31)
/* 800777AC 0007470C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800777B0 00074710  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800777B4 00074714  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800777B8 00074718  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 800777BC 0007471C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800777C0 00074720  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 800777C4 00074724  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800777C8 00074728  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_800777CC:
/* 800777CC 0007472C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800777D0 00074730  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800777D4 00074734  7C 08 03 A6 */	mtlr r0
/* 800777D8 00074738  38 21 00 30 */	addi r1, r1, 0x30
/* 800777DC 0007473C  4E 80 00 20 */	blr

.global TakeDamage__10CPatternedFRC9CVector3ff
TakeDamage__10CPatternedFRC9CVector3ff:
/* 800777E0 00074740  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 800777E4 00074744  D0 03 04 28 */	stfs f0, 0x428(r3)
/* 800777E8 00074748  4E 80 00 20 */	blr

.global KnockbackWhenFrozen__10CPatternedCFv
KnockbackWhenFrozen__10CPatternedCFv:
/* 800777EC 0007474C  38 60 00 01 */	li r3, 1
/* 800777F0 00074750  4E 80 00 20 */	blr

.global Default__10CPatternedFR13CStateManagerf
Default__10CPatternedFR13CStateManagerf:
/* 800777F4 00074754  38 60 00 01 */	li r3, 1
/* 800777F8 00074758  4E 80 00 20 */	blr

.global GetSearchPath__10CPatternedFv
GetSearchPath__10CPatternedFv:
/* 800777FC 0007475C  38 60 00 00 */	li r3, 0
/* 80077800 00074760  4E 80 00 20 */	blr

.global GetModelAlphau8__10CPatternedCFRC13CStateManager
GetModelAlphau8__10CPatternedCFRC13CStateManager:
/* 80077804 00074764  88 63 04 2F */	lbz r3, 0x42f(r3)
/* 80077808 00074768  4E 80 00 20 */	blr

.global IsOnGround__10CPatternedCFv
IsOnGround__10CPatternedCFv:
/* 8007780C 0007476C  88 03 03 28 */	lbz r0, 0x328(r3)
/* 80077810 00074770  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80077814 00074774  4E 80 00 20 */	blr

.global GetGravityConstant__10CPatternedCFv
GetGravityConstant__10CPatternedCFv:
/* 80077818 00074778  C0 22 96 A0 */	lfs f1, skGravityConstant__13CPhysicsActor@sda21(r2)
/* 8007781C 0007477C  4E 80 00 20 */	blr

.global GetProjectileInfo__10CPatternedFv
GetProjectileInfo__10CPatternedFv:
/* 80077820 00074780  38 60 00 00 */	li r3, 0
/* 80077824 00074784  4E 80 00 20 */	blr

.global GetDeathExplosionParticle__10CPatternedCFv
GetDeathExplosionParticle__10CPatternedCFv:
/* 80077828 00074788  38 63 05 20 */	addi r3, r3, 0x520
/* 8007782C 0007478C  4E 80 00 20 */	blr

.global IsListening__3CAiCFv
IsListening__3CAiCFv:
/* 80077830 00074790  38 60 00 00 */	li r3, 0
/* 80077834 00074794  4E 80 00 20 */	blr

.global GetOrigin__3CAiCFv
GetOrigin__3CAiCFv:
/* 80077838 00074798  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8007783C 0007479C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80077840 000747A0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80077844 000747A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80077848 000747A8  D0 23 00 04 */	stfs f1, 4(r3)
/* 8007784C 000747AC  D0 43 00 08 */	stfs f2, 8(r3)
/* 80077850 000747B0  4E 80 00 20 */	blr

.global UpdateThermalFrozenState__10CPatternedFb
UpdateThermalFrozenState__10CPatternedFb:
/* 80077854 000747B4  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 80077858 000747B8  88 03 04 02 */	lbz r0, 0x402(r3)
/* 8007785C 000747BC  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 80077860 000747C0  98 03 04 02 */	stb r0, 0x402(r3)
/* 80077864 000747C4  88 03 04 03 */	lbz r0, 0x403(r3)
/* 80077868 000747C8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8007786C 000747CC  4C 82 00 20 */	bnelr
/* 80077870 000747D0  28 04 00 00 */	cmplwi r4, 0
/* 80077874 000747D4  38 00 00 01 */	li r0, 1
/* 80077878 000747D8  41 82 00 08 */	beq lbl_80077880
/* 8007787C 000747DC  38 00 00 02 */	li r0, 2
lbl_80077880:
/* 80077880 000747E0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80077884 000747E4  88 03 00 E6 */	lbz r0, 0xe6(r3)
/* 80077888 000747E8  50 80 1E F8 */	rlwimi r0, r4, 3, 0x1b, 0x1c
/* 8007788C 000747EC  98 03 00 E6 */	stb r0, 0xe6(r3)
/* 80077890 000747F0  4E 80 00 20 */	blr

.global MakeThermalColdAndHot__10CPatternedFv
MakeThermalColdAndHot__10CPatternedFv:
/* 80077894 000747F4  88 03 04 03 */	lbz r0, 0x403(r3)
/* 80077898 000747F8  38 80 00 01 */	li r4, 1
/* 8007789C 000747FC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 800778A0 00074800  38 80 00 03 */	li r4, 3
/* 800778A4 00074804  98 03 04 03 */	stb r0, 0x403(r3)
/* 800778A8 00074808  88 03 00 E6 */	lbz r0, 0xe6(r3)
/* 800778AC 0007480C  50 80 1E F8 */	rlwimi r0, r4, 3, 0x1b, 0x1c
/* 800778B0 00074810  98 03 00 E6 */	stb r0, 0xe6(r3)
/* 800778B4 00074814  4E 80 00 20 */	blr

.global AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager:
/* 800778B8 00074818  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800778BC 0007481C  7C 08 02 A6 */	mflr r0
/* 800778C0 00074820  90 01 00 24 */	stw r0, 0x24(r1)
/* 800778C4 00074824  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800778C8 00074828  7C BF 2B 78 */	mr r31, r5
/* 800778CC 0007482C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800778D0 00074830  7C 9E 23 78 */	mr r30, r4
/* 800778D4 00074834  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800778D8 00074838  7C 7D 1B 78 */	mr r29, r3
/* 800778DC 0007483C  88 03 04 02 */	lbz r0, 0x402(r3)
/* 800778E0 00074840  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 800778E4 00074844  41 82 00 80 */	beq lbl_80077964
/* 800778E8 00074848  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 800778EC 0007484C  38 60 00 00 */	li r3, 0
/* 800778F0 00074850  28 04 00 00 */	cmplwi r4, 0
/* 800778F4 00074854  41 82 00 20 */	beq lbl_80077914
/* 800778F8 00074858  80 04 00 10 */	lwz r0, 0x10(r4)
/* 800778FC 0007485C  28 00 00 00 */	cmplwi r0, 0
/* 80077900 00074860  40 82 00 10 */	bne lbl_80077910
/* 80077904 00074864  88 04 00 28 */	lbz r0, 0x28(r4)
/* 80077908 00074868  28 00 00 00 */	cmplwi r0, 0
/* 8007790C 0007486C  41 82 00 08 */	beq lbl_80077914
lbl_80077910:
/* 80077910 00074870  38 60 00 01 */	li r3, 1
lbl_80077914:
/* 80077914 00074874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80077918 00074878  41 82 00 4C */	beq lbl_80077964
/* 8007791C 0007487C  88 1D 04 02 */	lbz r0, 0x402(r29)
/* 80077920 00074880  7F E3 FB 78 */	mr r3, r31
/* 80077924 00074884  38 A1 00 0C */	addi r5, r1, 0xc
/* 80077928 00074888  38 C1 00 08 */	addi r6, r1, 8
/* 8007792C 0007488C  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 80077930 00074890  7C 04 00 D0 */	neg r0, r4
/* 80077934 00074894  7C 00 23 78 */	or r0, r0, r4
/* 80077938 00074898  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8007793C 0007489C  4B FC CB 35 */	bl GetCharacterRenderMaskAndTarget__13CStateManagerFbRiRi
/* 80077940 000748A0  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 80077944 000748A4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80077948 000748A8  28 03 00 00 */	cmplwi r3, 0
/* 8007794C 000748AC  41 82 00 18 */	beq lbl_80077964
/* 80077950 000748B0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80077954 000748B4  7F C4 F3 78 */	mr r4, r30
/* 80077958 000748B8  80 C1 00 08 */	lwz r6, 8(r1)
/* 8007795C 000748BC  38 63 01 20 */	addi r3, r3, 0x120
/* 80077960 000748C0  48 04 08 35 */	bl AddToRendererClippedMasked__17CParticleDatabaseCFRC14CFrustumPlanesii
lbl_80077964:
/* 80077964 000748C4  7F A3 EB 78 */	mr r3, r29
/* 80077968 000748C8  7F C4 F3 78 */	mr r4, r30
/* 8007796C 000748CC  7F E5 FB 78 */	mr r5, r31
/* 80077970 000748D0  4B FD D1 C9 */	bl AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
/* 80077974 000748D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80077978 000748D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007797C 000748DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80077980 000748E0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80077984 000748E4  7C 08 03 A6 */	mtlr r0
/* 80077988 000748E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8007798C 000748EC  4E 80 00 20 */	blr

.global PreThink__10CPatternedFfR13CStateManager
PreThink__10CPatternedFfR13CStateManager:
/* 80077990 000748F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077994 000748F4  7C 08 02 A6 */	mflr r0
/* 80077998 000748F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007799C 000748FC  D0 23 05 00 */	stfs f1, 0x500(r3)
/* 800779A0 00074900  4B FD 97 1D */	bl PreThink__7CEntityFfR13CStateManager
/* 800779A4 00074904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800779A8 00074908  7C 08 03 A6 */	mtlr r0
/* 800779AC 0007490C  38 21 00 10 */	addi r1, r1, 0x10
/* 800779B0 00074910  4E 80 00 20 */	blr

.global GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 800779B4 00074914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800779B8 00074918  7C 08 02 A6 */	mflr r0
/* 800779BC 0007491C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800779C0 00074920  81 03 04 50 */	lwz r8, 0x450(r3)
/* 800779C4 00074924  88 08 03 00 */	lbz r0, 0x300(r8)
/* 800779C8 00074928  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800779CC 0007492C  41 82 00 18 */	beq lbl_800779E4
/* 800779D0 00074930  80 06 00 00 */	lwz r0, 0(r6)
/* 800779D4 00074934  2C 00 00 01 */	cmpwi r0, 1
/* 800779D8 00074938  40 82 00 0C */	bne lbl_800779E4
/* 800779DC 0007493C  38 60 00 00 */	li r3, 0
/* 800779E0 00074940  48 00 00 08 */	b lbl_800779E8
lbl_800779E4:
/* 800779E4 00074944  48 02 AF 0D */	bl GetCollisionResponseType__3CAiCFRC9CVector3fRC9CVector3fRC11CWeaponModei
lbl_800779E8:
/* 800779E8 00074948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800779EC 0007494C  7C 08 03 A6 */	mtlr r0
/* 800779F0 00074950  38 21 00 10 */	addi r1, r1, 0x10
/* 800779F4 00074954  4E 80 00 20 */	blr

.global "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
"LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f":
/* 800779F8 00074958  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800779FC 0007495C  7C 08 02 A6 */	mflr r0
/* 80077A00 00074960  90 01 00 94 */	stw r0, 0x94(r1)
/* 80077A04 00074964  BE 81 00 60 */	stmw r20, 0x60(r1)
/* 80077A08 00074968  7C 75 1B 78 */	mr r21, r3
/* 80077A0C 0007496C  7C 96 23 78 */	mr r22, r4
/* 80077A10 00074970  7C B7 2B 78 */	mr r23, r5
/* 80077A14 00074974  7C D8 33 78 */	mr r24, r6
/* 80077A18 00074978  7C F9 3B 78 */	mr r25, r7
/* 80077A1C 0007497C  7D 1A 43 78 */	mr r26, r8
/* 80077A20 00074980  7D 3B 4B 78 */	mr r27, r9
/* 80077A24 00074984  7D 5C 53 78 */	mr r28, r10
/* 80077A28 00074988  8B A1 00 9B */	lbz r29, 0x9b(r1)
/* 80077A2C 0007498C  3B E0 00 00 */	li r31, 0
/* 80077A30 00074990  83 C1 00 9C */	lwz r30, 0x9c(r1)
/* 80077A34 00074994  81 83 00 00 */	lwz r12, 0(r3)
/* 80077A38 00074998  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80077A3C 0007499C  7D 89 03 A6 */	mtctr r12
/* 80077A40 000749A0  4E 80 04 21 */	bctrl
/* 80077A44 000749A4  7C 74 1B 78 */	mr r20, r3
/* 80077A48 000749A8  80 03 00 08 */	lwz r0, 8(r3)
/* 80077A4C 000749AC  28 00 00 00 */	cmplwi r0, 0
/* 80077A50 000749B0  41 82 00 0C */	beq lbl_80077A5C
/* 80077A54 000749B4  38 60 00 01 */	li r3, 1
/* 80077A58 000749B8  48 00 00 38 */	b lbl_80077A90
lbl_80077A5C:
/* 80077A5C 000749BC  88 14 00 04 */	lbz r0, 4(r20)
/* 80077A60 000749C0  28 00 00 00 */	cmplwi r0, 0
/* 80077A64 000749C4  41 82 00 28 */	beq lbl_80077A8C
/* 80077A68 000749C8  80 94 00 00 */	lwz r4, 0(r20)
/* 80077A6C 000749CC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80077A70 000749D0  28 00 00 00 */	cmplwi r0, 0
/* 80077A74 000749D4  41 82 00 18 */	beq lbl_80077A8C
/* 80077A78 000749D8  48 2C 93 95 */	bl GetObj__6CTokenFv
/* 80077A7C 000749DC  80 03 00 04 */	lwz r0, 4(r3)
/* 80077A80 000749E0  38 60 00 01 */	li r3, 1
/* 80077A84 000749E4  90 14 00 08 */	stw r0, 8(r20)
/* 80077A88 000749E8  48 00 00 08 */	b lbl_80077A90
lbl_80077A8C:
/* 80077A8C 000749EC  38 60 00 00 */	li r3, 0
lbl_80077A90:
/* 80077A90 000749F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80077A94 000749F4  41 82 01 38 */	beq lbl_80077BCC
/* 80077A98 000749F8  A0 15 00 08 */	lhz r0, 8(r21)
/* 80077A9C 000749FC  7E E3 BB 78 */	mr r3, r23
/* 80077AA0 00074A00  7F 06 C3 78 */	mr r6, r24
/* 80077AA4 00074A04  38 81 00 4C */	addi r4, r1, 0x4c
/* 80077AA8 00074A08  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80077AAC 00074A0C  38 A0 00 09 */	li r5, 9
/* 80077AB0 00074A10  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 80077AB4 00074A14  4B FC DC 7D */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 80077AB8 00074A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80077ABC 00074A1C  41 82 01 10 */	beq lbl_80077BCC
/* 80077AC0 00074A20  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 80077AC4 00074A24  38 60 03 D8 */	li r3, 0x3d8
/* 80077AC8 00074A28  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 80077ACC 00074A2C  38 A0 00 00 */	li r5, 0
/* 80077AD0 00074A30  48 29 DD 9D */	bl __nw__FUlPCcPCc
/* 80077AD4 00074A34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80077AD8 00074A38  41 82 00 E0 */	beq lbl_80077BB8
/* 80077ADC 00074A3C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80077AE0 00074A40  41 82 00 18 */	beq lbl_80077AF8
/* 80077AE4 00074A44  80 77 08 4C */	lwz r3, 0x84c(r23)
/* 80077AE8 00074A48  38 81 00 40 */	addi r4, r1, 0x40
/* 80077AEC 00074A4C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80077AF0 00074A50  B0 01 00 40 */	sth r0, 0x40(r1)
/* 80077AF4 00074A54  48 00 00 08 */	b lbl_80077AFC
lbl_80077AF8:
/* 80077AF8 00074A58  38 8D A3 8C */	addi r4, r13, kInvalidUniqueId@sda21
lbl_80077AFC:
/* 80077AFC 00074A5C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80077B00 00074A60  7E E4 BB 78 */	mr r4, r23
/* 80077B04 00074A64  38 61 00 30 */	addi r3, r1, 0x30
/* 80077B08 00074A68  B0 01 00 44 */	sth r0, 0x44(r1)
/* 80077B0C 00074A6C  A0 B5 00 08 */	lhz r5, 8(r21)
/* 80077B10 00074A70  B0 A1 00 3C */	sth r5, 0x3c(r1)
/* 80077B14 00074A74  80 15 00 04 */	lwz r0, 4(r21)
/* 80077B18 00074A78  B0 A1 00 38 */	sth r5, 0x38(r1)
/* 80077B1C 00074A7C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80077B20 00074A80  90 01 00 54 */	stw r0, 0x54(r1)
/* 80077B24 00074A84  4B FD 55 B9 */	bl AllocateUniqueId__13CStateManagerFv
/* 80077B28 00074A88  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 80077B2C 00074A8C  7E A3 AB 78 */	mr r3, r21
/* 80077B30 00074A90  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80077B34 00074A94  81 95 00 00 */	lwz r12, 0(r21)
/* 80077B38 00074A98  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80077B3C 00074A9C  7D 89 03 A6 */	mtctr r12
/* 80077B40 00074AA0  4E 80 04 21 */	bctrl
/* 80077B44 00074AA4  7C 78 1B 78 */	mr r24, r3
/* 80077B48 00074AA8  7E A3 AB 78 */	mr r3, r21
/* 80077B4C 00074AAC  81 95 00 00 */	lwz r12, 0(r21)
/* 80077B50 00074AB0  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80077B54 00074AB4  7D 89 03 A6 */	mtctr r12
/* 80077B58 00074AB8  4E 80 04 21 */	bctrl
/* 80077B5C 00074ABC  38 01 00 54 */	addi r0, r1, 0x54
/* 80077B60 00074AC0  7C 65 1B 78 */	mr r5, r3
/* 80077B64 00074AC4  90 01 00 08 */	stw r0, 8(r1)
/* 80077B68 00074AC8  38 01 00 3C */	addi r0, r1, 0x3c
/* 80077B6C 00074ACC  38 81 00 44 */	addi r4, r1, 0x44
/* 80077B70 00074AD0  7F E3 FB 78 */	mr r3, r31
/* 80077B74 00074AD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80077B78 00074AD8  38 00 00 00 */	li r0, 0
/* 80077B7C 00074ADC  7E C7 B3 78 */	mr r7, r22
/* 80077B80 00074AE0  39 38 00 0C */	addi r9, r24, 0xc
/* 80077B84 00074AE4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80077B88 00074AE8  39 41 00 34 */	addi r10, r1, 0x34
/* 80077B8C 00074AEC  38 80 00 01 */	li r4, 1
/* 80077B90 00074AF0  38 C0 00 09 */	li r6, 9
/* 80077B94 00074AF4  93 21 00 14 */	stw r25, 0x14(r1)
/* 80077B98 00074AF8  39 00 00 21 */	li r8, 0x21
/* 80077B9C 00074AFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80077BA0 00074B00  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 80077BA4 00074B04  93 61 00 20 */	stw r27, 0x20(r1)
/* 80077BA8 00074B08  93 81 00 24 */	stw r28, 0x24(r1)
/* 80077BAC 00074B0C  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80077BB0 00074B10  48 19 DA E9 */	bl "__ct__17CEnergyProjectileFbRC28TToken<18CWeaponDescription>11EWeaponTypeRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId7TAreaId9TUniqueId9TUniqueIdUibRC9CVector3fRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sb"
/* 80077BB4 00074B14  7C 7F 1B 78 */	mr r31, r3
lbl_80077BB8:
/* 80077BB8 00074B18  28 1F 00 00 */	cmplwi r31, 0
/* 80077BBC 00074B1C  41 82 00 10 */	beq lbl_80077BCC
/* 80077BC0 00074B20  7E E3 BB 78 */	mr r3, r23
/* 80077BC4 00074B24  7F E4 FB 78 */	mr r4, r31
/* 80077BC8 00074B28  4B FD 51 2D */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_80077BCC:
/* 80077BCC 00074B2C  7F E3 FB 78 */	mr r3, r31
/* 80077BD0 00074B30  BA 81 00 60 */	lmw r20, 0x60(r1)
/* 80077BD4 00074B34  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80077BD8 00074B38  7C 08 03 A6 */	mtlr r0
/* 80077BDC 00074B3C  38 21 00 90 */	addi r1, r1, 0x90
/* 80077BE0 00074B40  4E 80 00 20 */	blr

.global RenderIceModelWithFlags__10CPatternedCFRC11CModelFlags
RenderIceModelWithFlags__10CPatternedCFRC11CModelFlags:
/* 80077BE4 00074B44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80077BE8 00074B48  7C 08 02 A6 */	mflr r0
/* 80077BEC 00074B4C  7C 67 1B 78 */	mr r7, r3
/* 80077BF0 00074B50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80077BF4 00074B54  38 00 00 00 */	li r0, 0
/* 80077BF8 00074B58  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80077BFC 00074B5C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80077C00 00074B60  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80077C04 00074B64  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80077C08 00074B68  A0 A4 00 02 */	lhz r5, 2(r4)
/* 80077C0C 00074B6C  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 80077C10 00074B70  80 C4 00 04 */	lwz r6, 4(r4)
/* 80077C14 00074B74  88 64 00 00 */	lbz r3, 0(r4)
/* 80077C18 00074B78  98 01 00 09 */	stb r0, 9(r1)
/* 80077C1C 00074B7C  98 61 00 08 */	stb r3, 8(r1)
/* 80077C20 00074B80  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 80077C24 00074B84  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80077C28 00074B88  88 1F 00 F0 */	lbz r0, 0xf0(r31)
/* 80077C2C 00074B8C  28 00 00 00 */	cmplwi r0, 0
/* 80077C30 00074B90  41 82 00 40 */	beq lbl_80077C70
/* 80077C34 00074B94  83 BF 00 EC */	lwz r29, 0xec(r31)
/* 80077C38 00074B98  38 61 00 10 */	addi r3, r1, 0x10
/* 80077C3C 00074B9C  80 87 05 10 */	lwz r4, 0x510(r7)
/* 80077C40 00074BA0  83 DD 00 40 */	lwz r30, 0x40(r29)
/* 80077C44 00074BA4  80 84 00 00 */	lwz r4, 0(r4)
/* 80077C48 00074BA8  48 00 01 D5 */	bl sub_80077e1c
/* 80077C4C 00074BAC  7F E3 FB 78 */	mr r3, r31
/* 80077C50 00074BB0  7F A4 EB 78 */	mr r4, r29
/* 80077C54 00074BB4  7F C7 F3 78 */	mr r7, r30
/* 80077C58 00074BB8  38 A1 00 08 */	addi r5, r1, 8
/* 80077C5C 00074BBC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80077C60 00074BC0  4B FB 4C BD */	bl "Render__9CAnimDataCFRC13CSkinnedModelRC11CModelFlagsRCQ24rstl37optional_object<18CVertexMorphEffect>PCf"
/* 80077C64 00074BC4  38 61 00 10 */	addi r3, r1, 0x10
/* 80077C68 00074BC8  38 80 FF FF */	li r4, -1
/* 80077C6C 00074BCC  48 00 00 21 */	bl sub_80077c8c
lbl_80077C70:
/* 80077C70 00074BD0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80077C74 00074BD4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80077C78 00074BD8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80077C7C 00074BDC  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80077C80 00074BE0  7C 08 03 A6 */	mtlr r0
/* 80077C84 00074BE4  38 21 00 70 */	addi r1, r1, 0x70
/* 80077C88 00074BE8  4E 80 00 20 */	blr

.global sub_80077c8c
sub_80077c8c:
/* 80077C8C 00074BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077C90 00074BF0  7C 08 02 A6 */	mflr r0
/* 80077C94 00074BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077C98 00074BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077C9C 00074BFC  7C 9F 23 78 */	mr r31, r4
/* 80077CA0 00074C00  93 C1 00 08 */	stw r30, 8(r1)
/* 80077CA4 00074C04  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077CA8 00074C08  41 82 00 18 */	beq lbl_80077CC0
/* 80077CAC 00074C0C  48 00 00 31 */	bl sub_80077cdc
/* 80077CB0 00074C10  7F E0 07 35 */	extsh. r0, r31
/* 80077CB4 00074C14  40 81 00 0C */	ble lbl_80077CC0
/* 80077CB8 00074C18  7F C3 F3 78 */	mr r3, r30
/* 80077CBC 00074C1C  48 29 DC 75 */	bl Free__7CMemoryFPCv
lbl_80077CC0:
/* 80077CC0 00074C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077CC4 00074C24  7F C3 F3 78 */	mr r3, r30
/* 80077CC8 00074C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077CCC 00074C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80077CD0 00074C30  7C 08 03 A6 */	mtlr r0
/* 80077CD4 00074C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80077CD8 00074C38  4E 80 00 20 */	blr

.global sub_80077cdc
sub_80077cdc:
/* 80077CDC 00074C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077CE0 00074C40  7C 08 02 A6 */	mflr r0
/* 80077CE4 00074C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077CE8 00074C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077CEC 00074C4C  7C 7F 1B 78 */	mr r31, r3
/* 80077CF0 00074C50  88 03 00 48 */	lbz r0, 0x48(r3)
/* 80077CF4 00074C54  28 00 00 00 */	cmplwi r0, 0
/* 80077CF8 00074C58  41 82 00 08 */	beq lbl_80077D00
/* 80077CFC 00074C5C  48 00 00 21 */	bl sub_80077d1c
lbl_80077D00:
/* 80077D00 00074C60  38 00 00 00 */	li r0, 0
/* 80077D04 00074C64  98 1F 00 48 */	stb r0, 0x48(r31)
/* 80077D08 00074C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077D0C 00074C6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077D10 00074C70  7C 08 03 A6 */	mtlr r0
/* 80077D14 00074C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80077D18 00074C78  4E 80 00 20 */	blr

.global sub_80077d1c
sub_80077d1c:
/* 80077D1C 00074C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077D20 00074C80  7C 08 02 A6 */	mflr r0
/* 80077D24 00074C84  38 80 FF FF */	li r4, -1
/* 80077D28 00074C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077D2C 00074C8C  48 00 00 15 */	bl __dt__18CVertexMorphEffectFv
/* 80077D30 00074C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077D34 00074C94  7C 08 03 A6 */	mtlr r0
/* 80077D38 00074C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80077D3C 00074C9C  4E 80 00 20 */	blr

.global __dt__18CVertexMorphEffectFv
__dt__18CVertexMorphEffectFv:
/* 80077D40 00074CA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80077D44 00074CA4  7C 08 02 A6 */	mflr r0
/* 80077D48 00074CA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80077D4C 00074CAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80077D50 00074CB0  7C 9F 23 78 */	mr r31, r4
/* 80077D54 00074CB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80077D58 00074CB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077D5C 00074CBC  41 82 00 A4 */	beq lbl_80077E00
/* 80077D60 00074CC0  34 1E 00 38 */	addic. r0, r30, 0x38
/* 80077D64 00074CC4  41 82 00 44 */	beq lbl_80077DA8
/* 80077D68 00074CC8  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80077D6C 00074CCC  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80077D70 00074CD0  54 00 10 3A */	slwi r0, r0, 2
/* 80077D74 00074CD4  7C 03 02 14 */	add r0, r3, r0
/* 80077D78 00074CD8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80077D7C 00074CDC  7C 64 1B 78 */	mr r4, r3
/* 80077D80 00074CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80077D84 00074CE4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80077D88 00074CE8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80077D8C 00074CEC  48 00 00 08 */	b lbl_80077D94
lbl_80077D90:
/* 80077D90 00074CF0  38 84 00 04 */	addi r4, r4, 4
lbl_80077D94:
/* 80077D94 00074CF4  7C 04 00 40 */	cmplw r4, r0
/* 80077D98 00074CF8  40 82 FF F8 */	bne lbl_80077D90
/* 80077D9C 00074CFC  28 03 00 00 */	cmplwi r3, 0
/* 80077DA0 00074D00  41 82 00 08 */	beq lbl_80077DA8
/* 80077DA4 00074D04  48 29 DB 8D */	bl Free__7CMemoryFPCv
lbl_80077DA8:
/* 80077DA8 00074D08  34 1E 00 28 */	addic. r0, r30, 0x28
/* 80077DAC 00074D0C  41 82 00 44 */	beq lbl_80077DF0
/* 80077DB0 00074D10  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80077DB4 00074D14  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80077DB8 00074D18  54 00 10 3A */	slwi r0, r0, 2
/* 80077DBC 00074D1C  7C 03 02 14 */	add r0, r3, r0
/* 80077DC0 00074D20  90 61 00 0C */	stw r3, 0xc(r1)
/* 80077DC4 00074D24  7C 64 1B 78 */	mr r4, r3
/* 80077DC8 00074D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077DCC 00074D2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80077DD0 00074D30  90 61 00 08 */	stw r3, 8(r1)
/* 80077DD4 00074D34  48 00 00 08 */	b lbl_80077DDC
lbl_80077DD8:
/* 80077DD8 00074D38  38 84 00 04 */	addi r4, r4, 4
lbl_80077DDC:
/* 80077DDC 00074D3C  7C 04 00 40 */	cmplw r4, r0
/* 80077DE0 00074D40  40 82 FF F8 */	bne lbl_80077DD8
/* 80077DE4 00074D44  28 03 00 00 */	cmplwi r3, 0
/* 80077DE8 00074D48  41 82 00 08 */	beq lbl_80077DF0
/* 80077DEC 00074D4C  48 29 DB 45 */	bl Free__7CMemoryFPCv
lbl_80077DF0:
/* 80077DF0 00074D50  7F E0 07 35 */	extsh. r0, r31
/* 80077DF4 00074D54  40 81 00 0C */	ble lbl_80077E00
/* 80077DF8 00074D58  7F C3 F3 78 */	mr r3, r30
/* 80077DFC 00074D5C  48 29 DB 35 */	bl Free__7CMemoryFPCv
lbl_80077E00:
/* 80077E00 00074D60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80077E04 00074D64  7F C3 F3 78 */	mr r3, r30
/* 80077E08 00074D68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80077E0C 00074D6C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80077E10 00074D70  7C 08 03 A6 */	mtlr r0
/* 80077E14 00074D74  38 21 00 30 */	addi r1, r1, 0x30
/* 80077E18 00074D78  4E 80 00 20 */	blr

.global sub_80077e1c
sub_80077e1c:
/* 80077E1C 00074D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E20 00074D80  7C 08 02 A6 */	mflr r0
/* 80077E24 00074D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E28 00074D88  38 00 00 01 */	li r0, 1
/* 80077E2C 00074D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077E30 00074D90  7C 7F 1B 78 */	mr r31, r3
/* 80077E34 00074D94  98 03 00 48 */	stb r0, 0x48(r3)
/* 80077E38 00074D98  48 00 00 1D */	bl sub_80077e54
/* 80077E3C 00074D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077E40 00074DA0  7F E3 FB 78 */	mr r3, r31
/* 80077E44 00074DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077E48 00074DA8  7C 08 03 A6 */	mtlr r0
/* 80077E4C 00074DAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80077E50 00074DB0  4E 80 00 20 */	blr

.global sub_80077e54
sub_80077e54:
/* 80077E54 00074DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E58 00074DB8  7C 08 02 A6 */	mflr r0
/* 80077E5C 00074DBC  28 03 00 00 */	cmplwi r3, 0
/* 80077E60 00074DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E64 00074DC4  41 82 00 08 */	beq lbl_80077E6C
/* 80077E68 00074DC8  48 00 00 15 */	bl sub_80077e7c
lbl_80077E6C:
/* 80077E6C 00074DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077E70 00074DD0  7C 08 03 A6 */	mtlr r0
/* 80077E74 00074DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80077E78 00074DD8  4E 80 00 20 */	blr

.global sub_80077e7c
sub_80077e7c:
/* 80077E7C 00074DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077E80 00074DE0  7C 08 02 A6 */	mflr r0
/* 80077E84 00074DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077E88 00074DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077E8C 00074DEC  7C 9F 23 78 */	mr r31, r4
/* 80077E90 00074DF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80077E94 00074DF4  7C 7E 1B 78 */	mr r30, r3
/* 80077E98 00074DF8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80077E9C 00074DFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80077EA0 00074E00  C0 04 00 04 */	lfs f0, 4(r4)
/* 80077EA4 00074E04  D0 03 00 04 */	stfs f0, 4(r3)
/* 80077EA8 00074E08  C0 04 00 08 */	lfs f0, 8(r4)
/* 80077EAC 00074E0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80077EB0 00074E10  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80077EB4 00074E14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80077EB8 00074E18  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80077EBC 00074E1C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80077EC0 00074E20  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80077EC4 00074E24  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80077EC8 00074E28  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80077ECC 00074E2C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80077ED0 00074E30  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80077ED4 00074E34  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80077ED8 00074E38  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80077EDC 00074E3C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80077EE0 00074E40  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80077EE4 00074E44  90 03 00 24 */	stw r0, 0x24(r3)
/* 80077EE8 00074E48  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80077EEC 00074E4C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80077EF0 00074E50  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80077EF4 00074E54  90 03 00 30 */	stw r0, 0x30(r3)
/* 80077EF8 00074E58  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80077EFC 00074E5C  2C 00 00 00 */	cmpwi r0, 0
/* 80077F00 00074E60  40 82 00 1C */	bne lbl_80077F1C
/* 80077F04 00074E64  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80077F08 00074E68  2C 00 00 00 */	cmpwi r0, 0
/* 80077F0C 00074E6C  40 82 00 10 */	bne lbl_80077F1C
/* 80077F10 00074E70  38 00 00 00 */	li r0, 0
/* 80077F14 00074E74  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80077F18 00074E78  48 00 00 64 */	b lbl_80077F7C
lbl_80077F1C:
/* 80077F1C 00074E7C  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 80077F20 00074E80  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 80077F24 00074E84  40 82 00 10 */	bne lbl_80077F34
/* 80077F28 00074E88  38 00 00 00 */	li r0, 0
/* 80077F2C 00074E8C  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80077F30 00074E90  48 00 00 18 */	b lbl_80077F48
lbl_80077F34:
/* 80077F34 00074E94  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 80077F38 00074E98  38 A0 00 00 */	li r5, 0
/* 80077F3C 00074E9C  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 80077F40 00074EA0  48 29 D8 D9 */	bl __nwa__FUlPCcPCc
/* 80077F44 00074EA4  90 7E 00 34 */	stw r3, 0x34(r30)
lbl_80077F48:
/* 80077F48 00074EA8  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80077F4C 00074EAC  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80077F50 00074EB0  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80077F54 00074EB4  7C 09 03 A6 */	mtctr r0
/* 80077F58 00074EB8  2C 00 00 00 */	cmpwi r0, 0
/* 80077F5C 00074EBC  40 81 00 20 */	ble lbl_80077F7C
lbl_80077F60:
/* 80077F60 00074EC0  28 03 00 00 */	cmplwi r3, 0
/* 80077F64 00074EC4  41 82 00 0C */	beq lbl_80077F70
/* 80077F68 00074EC8  80 04 00 00 */	lwz r0, 0(r4)
/* 80077F6C 00074ECC  90 03 00 00 */	stw r0, 0(r3)
lbl_80077F70:
/* 80077F70 00074ED0  38 63 00 04 */	addi r3, r3, 4
/* 80077F74 00074ED4  38 84 00 04 */	addi r4, r4, 4
/* 80077F78 00074ED8  42 00 FF E8 */	bdnz lbl_80077F60
lbl_80077F7C:
/* 80077F7C 00074EDC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80077F80 00074EE0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80077F84 00074EE4  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80077F88 00074EE8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 80077F8C 00074EEC  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80077F90 00074EF0  2C 00 00 00 */	cmpwi r0, 0
/* 80077F94 00074EF4  40 82 00 1C */	bne lbl_80077FB0
/* 80077F98 00074EF8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80077F9C 00074EFC  2C 00 00 00 */	cmpwi r0, 0
/* 80077FA0 00074F00  40 82 00 10 */	bne lbl_80077FB0
/* 80077FA4 00074F04  38 00 00 00 */	li r0, 0
/* 80077FA8 00074F08  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80077FAC 00074F0C  48 00 00 64 */	b lbl_80078010
lbl_80077FB0:
/* 80077FB0 00074F10  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80077FB4 00074F14  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 80077FB8 00074F18  40 82 00 10 */	bne lbl_80077FC8
/* 80077FBC 00074F1C  38 00 00 00 */	li r0, 0
/* 80077FC0 00074F20  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80077FC4 00074F24  48 00 00 18 */	b lbl_80077FDC
lbl_80077FC8:
/* 80077FC8 00074F28  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 80077FCC 00074F2C  38 A0 00 00 */	li r5, 0
/* 80077FD0 00074F30  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 80077FD4 00074F34  48 29 D8 45 */	bl __nwa__FUlPCcPCc
/* 80077FD8 00074F38  90 7E 00 44 */	stw r3, 0x44(r30)
lbl_80077FDC:
/* 80077FDC 00074F3C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80077FE0 00074F40  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80077FE4 00074F44  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80077FE8 00074F48  7C 09 03 A6 */	mtctr r0
/* 80077FEC 00074F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80077FF0 00074F50  40 81 00 20 */	ble lbl_80078010
lbl_80077FF4:
/* 80077FF4 00074F54  28 03 00 00 */	cmplwi r3, 0
/* 80077FF8 00074F58  41 82 00 0C */	beq lbl_80078004
/* 80077FFC 00074F5C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80078000 00074F60  D0 03 00 00 */	stfs f0, 0(r3)
lbl_80078004:
/* 80078004 00074F64  38 63 00 04 */	addi r3, r3, 4
/* 80078008 00074F68  38 84 00 04 */	addi r4, r4, 4
/* 8007800C 00074F6C  42 00 FF E8 */	bdnz lbl_80077FF4
lbl_80078010:
/* 80078010 00074F70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078014 00074F74  7F C3 F3 78 */	mr r3, r30
/* 80078018 00074F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007801C 00074F7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078020 00074F80  7C 08 03 A6 */	mtlr r0
/* 80078024 00074F84  38 21 00 10 */	addi r1, r1, 0x10
/* 80078028 00074F88  4E 80 00 20 */	blr

.global Render__10CPatternedCFRC13CStateManager
Render__10CPatternedCFRC13CStateManager:
/* 8007802C 00074F8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80078030 00074F90  7C 08 02 A6 */	mflr r0
/* 80078034 00074F94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80078038 00074F98  38 00 00 00 */	li r0, 0
/* 8007803C 00074F9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80078040 00074FA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80078044 00074FA4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80078048 00074FA8  7C 9D 23 78 */	mr r29, r4
/* 8007804C 00074FAC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80078050 00074FB0  7C 7C 1B 78 */	mr r28, r3
/* 80078054 00074FB4  88 A3 04 02 */	lbz r5, 0x402(r3)
/* 80078058 00074FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007805C 00074FBC  54 A4 F7 FE */	rlwinm r4, r5, 0x1e, 0x1f, 0x1f
/* 80078060 00074FC0  7C 64 00 D0 */	neg r3, r4
/* 80078064 00074FC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80078068 00074FC8  7C 60 23 78 */	or r0, r3, r4
/* 8007806C 00074FCC  54 1F 0F FF */	rlwinm. r31, r0, 1, 0x1f, 0x1f
/* 80078070 00074FD0  41 82 00 3C */	beq lbl_800780AC
/* 80078074 00074FD4  54 A4 07 FE */	clrlwi r4, r5, 0x1f
/* 80078078 00074FD8  7F A3 EB 78 */	mr r3, r29
/* 8007807C 00074FDC  7C 04 00 D0 */	neg r0, r4
/* 80078080 00074FE0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80078084 00074FE4  7C 00 23 78 */	or r0, r0, r4
/* 80078088 00074FE8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8007808C 00074FEC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80078090 00074FF0  4B FC C3 E1 */	bl GetCharacterRenderMaskAndTarget__13CStateManagerFbRiRi
/* 80078094 00074FF4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80078098 00074FF8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8007809C 00074FFC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800780A0 00075000  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 800780A4 00075004  38 63 01 20 */	addi r3, r3, 0x120
/* 800780A8 00075008  48 03 FE B5 */	bl RenderSystemsToBeDrawnFirstMasked__17CParticleDatabaseCFii
lbl_800780AC:
/* 800780AC 0007500C  80 7D 0F 34 */	lwz r3, 0xf34(r29)
/* 800780B0 00075010  2C 03 00 01 */	cmpwi r3, 1
/* 800780B4 00075014  40 82 00 10 */	bne lbl_800780C4
/* 800780B8 00075018  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 800780BC 0007501C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800780C0 00075020  41 82 00 20 */	beq lbl_800780E0
lbl_800780C4:
/* 800780C4 00075024  2C 03 00 00 */	cmpwi r3, 0
/* 800780C8 00075028  40 82 00 10 */	bne lbl_800780D8
/* 800780CC 0007502C  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 800780D0 00075030  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800780D4 00075034  40 82 00 0C */	bne lbl_800780E0
lbl_800780D8:
/* 800780D8 00075038  2C 03 00 02 */	cmpwi r3, 2
/* 800780DC 0007503C  40 82 01 84 */	bne lbl_80078260
lbl_800780E0:
/* 800780E0 00075040  88 1C 04 01 */	lbz r0, 0x401(r28)
/* 800780E4 00075044  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 800780E8 00075048  41 82 01 18 */	beq lbl_80078200
/* 800780EC 0007504C  80 7D 08 84 */	lwz r3, 0x884(r29)
/* 800780F0 00075050  7F 84 E3 78 */	mr r4, r28
/* 800780F4 00075054  48 16 B7 B1 */	bl GetAshyTexture__20CActorModelParticlesFR5CActor
/* 800780F8 00075058  7C 60 1B 78 */	mr r0, r3
/* 800780FC 0007505C  7F 83 E3 78 */	mr r3, r28
/* 80078100 00075060  81 9C 00 00 */	lwz r12, 0(r28)
/* 80078104 00075064  7C 1E 03 78 */	mr r30, r0
/* 80078108 00075068  7F A4 EB 78 */	mr r4, r29
/* 8007810C 0007506C  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 80078110 00075070  7D 89 03 A6 */	mtctr r12
/* 80078114 00075074  4E 80 04 21 */	bctrl
/* 80078118 00075078  28 1E 00 00 */	cmplwi r30, 0
/* 8007811C 0007507C  98 61 00 08 */	stb r3, 8(r1)
/* 80078120 00075080  41 82 00 D0 */	beq lbl_800781F0
/* 80078124 00075084  88 1C 04 01 */	lbz r0, 0x401(r28)
/* 80078128 00075088  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8007812C 0007508C  40 82 00 10 */	bne lbl_8007813C
/* 80078130 00075090  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80078134 00075094  28 00 00 FF */	cmplwi r0, 0xff
/* 80078138 00075098  40 81 00 10 */	ble lbl_80078148
lbl_8007813C:
/* 8007813C 0007509C  88 01 00 08 */	lbz r0, 8(r1)
/* 80078140 000750A0  28 00 00 7F */	cmplwi r0, 0x7f
/* 80078144 000750A4  41 81 00 AC */	bgt lbl_800781F0
lbl_80078148:
/* 80078148 000750A8  88 1C 00 E5 */	lbz r0, 0xe5(r28)
/* 8007814C 000750AC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80078150 000750B0  41 82 00 10 */	beq lbl_80078160
/* 80078154 000750B4  7F A3 EB 78 */	mr r3, r29
/* 80078158 000750B8  7F 84 E3 78 */	mr r4, r28
/* 8007815C 000750BC  4B FC CF 2D */	bl SetupParticleHook__13CStateManagerCFRC6CActor
lbl_80078160:
/* 80078160 000750C0  88 1C 04 01 */	lbz r0, 0x401(r28)
/* 80078164 000750C4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80078168 000750C8  41 82 00 0C */	beq lbl_80078174
/* 8007816C 000750CC  38 6D A2 58 */	addi r3, r13, lbl_805A8E18@sda21
/* 80078170 000750D0  48 00 00 1C */	b lbl_8007818C
lbl_80078174:
/* 80078174 000750D4  80 1D 0F 34 */	lwz r0, 0xf34(r29)
/* 80078178 000750D8  2C 00 00 00 */	cmpwi r0, 0
/* 8007817C 000750DC  40 82 00 0C */	bne lbl_80078188
/* 80078180 000750E0  48 2D 1E 2D */	bl White__6CColorFv
/* 80078184 000750E4  48 00 00 08 */	b lbl_8007818C
lbl_80078188:
/* 80078188 000750E8  48 2D 1E 2D */	bl Black__6CColorFv
lbl_8007818C:
/* 8007818C 000750EC  88 1C 04 01 */	lbz r0, 0x401(r28)
/* 80078190 000750F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80078194 000750F4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80078198 000750F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007819C 000750FC  41 82 00 0C */	beq lbl_800781A8
/* 800781A0 00075100  C0 02 88 FC */	lfs f0, lbl_805AA61C@sda21(r2)
/* 800781A4 00075104  48 00 00 08 */	b lbl_800781AC
lbl_800781A8:
/* 800781A8 00075108  C0 02 89 00 */	lfs f0, lbl_805AA620@sda21(r2)
lbl_800781AC:
/* 800781AC 0007510C  E0 21 A0 08 */	psq_l f1, 8(r1), 1, qr2
/* 800781B0 00075110  7F A4 EB 78 */	mr r4, r29
/* 800781B4 00075114  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 800781B8 00075118  7F C6 F3 78 */	mr r6, r30
/* 800781BC 0007511C  EC 20 00 72 */	fmuls f1, f0, f1
/* 800781C0 00075120  38 BC 00 34 */	addi r5, r28, 0x34
/* 800781C4 00075124  38 E1 00 0C */	addi r7, r1, 0xc
/* 800781C8 00075128  48 09 DF 19 */	bl DisintegrateDraw__10CModelDataFRC13CStateManagerRC12CTransform4fRC8CTextureRC6CColor
/* 800781CC 0007512C  88 1C 00 E5 */	lbz r0, 0xe5(r28)
/* 800781D0 00075130  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800781D4 00075134  41 82 00 38 */	beq lbl_8007820C
/* 800781D8 00075138  48 2D A5 31 */	bl ClearPointGeneratorFunc__13CSkinnedModelFv
/* 800781DC 0007513C  80 7D 08 84 */	lwz r3, 0x884(r29)
/* 800781E0 00075140  7F A4 EB 78 */	mr r4, r29
/* 800781E4 00075144  7F 85 E3 78 */	mr r5, r28
/* 800781E8 00075148  48 16 BC 3D */	bl Render__20CActorModelParticlesCFRC6CActor
/* 800781EC 0007514C  48 00 00 20 */	b lbl_8007820C
lbl_800781F0:
/* 800781F0 00075150  7F 83 E3 78 */	mr r3, r28
/* 800781F4 00075154  7F A4 EB 78 */	mr r4, r29
/* 800781F8 00075158  48 0A 22 F1 */	bl Render__13CPhysicsActorCFRC13CStateManager
/* 800781FC 0007515C  48 00 00 10 */	b lbl_8007820C
lbl_80078200:
/* 80078200 00075160  7F 83 E3 78 */	mr r3, r28
/* 80078204 00075164  7F A4 EB 78 */	mr r4, r29
/* 80078208 00075168  48 0A 22 E1 */	bl Render__13CPhysicsActorCFRC13CStateManager
lbl_8007820C:
/* 8007820C 0007516C  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80078210 00075170  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80078214 00075174  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80078218 00075178  41 82 00 48 */	beq lbl_80078260
/* 8007821C 0007517C  88 1C 04 01 */	lbz r0, 0x401(r28)
/* 80078220 00075180  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80078224 00075184  40 82 00 3C */	bne lbl_80078260
/* 80078228 00075188  C0 22 89 04 */	lfs f1, lbl_805AA624@sda21(r2)
/* 8007822C 0007518C  38 80 00 00 */	li r4, 0
/* 80078230 00075190  38 00 00 03 */	li r0, 3
/* 80078234 00075194  98 81 00 18 */	stb r4, 0x18(r1)
/* 80078238 00075198  FC 40 08 90 */	fmr f2, f1
/* 8007823C 0007519C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80078240 000751A0  FC 60 08 90 */	fmr f3, f1
/* 80078244 000751A4  98 81 00 19 */	stb r4, 0x19(r1)
/* 80078248 000751A8  FC 80 08 90 */	fmr f4, f1
/* 8007824C 000751AC  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 80078250 000751B0  48 2E B1 9D */	bl __ct__6CColorFffff
/* 80078254 000751B4  7F 83 E3 78 */	mr r3, r28
/* 80078258 000751B8  38 81 00 18 */	addi r4, r1, 0x18
/* 8007825C 000751BC  4B FF F9 89 */	bl RenderIceModelWithFlags__10CPatternedCFRC11CModelFlags
lbl_80078260:
/* 80078260 000751C0  28 1F 00 00 */	cmplwi r31, 0
/* 80078264 000751C4  41 82 00 1C */	beq lbl_80078280
/* 80078268 000751C8  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 8007826C 000751CC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80078270 000751D0  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80078274 000751D4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80078278 000751D8  38 63 01 20 */	addi r3, r3, 0x120
/* 8007827C 000751DC  48 03 FC 51 */	bl RenderSystemsToBeDrawnLastMasked__17CParticleDatabaseCFii
lbl_80078280:
/* 80078280 000751E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80078284 000751E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80078288 000751E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8007828C 000751EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80078290 000751F0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80078294 000751F4  7C 08 03 A6 */	mtlr r0
/* 80078298 000751F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8007829C 000751FC  4E 80 00 20 */	blr

.global CanRenderUnsorted__10CPatternedCFRC13CStateManager
CanRenderUnsorted__10CPatternedCFRC13CStateManager:
/* 800782A0 00075200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800782A4 00075204  7C 08 02 A6 */	mflr r0
/* 800782A8 00075208  90 01 00 14 */	stw r0, 0x14(r1)
/* 800782AC 0007520C  80 A3 00 64 */	lwz r5, 0x64(r3)
/* 800782B0 00075210  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 800782B4 00075214  88 05 01 D4 */	lbz r0, 0x1d4(r5)
/* 800782B8 00075218  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800782BC 0007521C  41 82 00 0C */	beq lbl_800782C8
/* 800782C0 00075220  38 60 00 00 */	li r3, 0
/* 800782C4 00075224  48 00 00 08 */	b lbl_800782CC
lbl_800782C8:
/* 800782C8 00075228  4B FD C6 6D */	bl CanRenderUnsorted__6CActorCFRC13CStateManager
lbl_800782CC:
/* 800782CC 0007522C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800782D0 00075230  7C 08 03 A6 */	mtlr r0
/* 800782D4 00075234  38 21 00 10 */	addi r1, r1, 0x10
/* 800782D8 00075238  4E 80 00 20 */	blr

.global PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes:
/* 800782DC 0007523C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800782E0 00075240  7C 08 02 A6 */	mflr r0
/* 800782E4 00075244  90 01 00 44 */	stw r0, 0x44(r1)
/* 800782E8 00075248  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800782EC 0007524C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800782F0 00075250  7C BE 2B 78 */	mr r30, r5
/* 800782F4 00075254  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800782F8 00075258  7C 9D 23 78 */	mr r29, r4
/* 800782FC 0007525C  93 81 00 30 */	stw r28, 0x30(r1)
/* 80078300 00075260  7C 7C 1B 78 */	mr r28, r3
/* 80078304 00075264  80 64 08 B8 */	lwz r3, 0x8b8(r4)
/* 80078308 00075268  80 63 00 00 */	lwz r3, 0(r3)
/* 8007830C 0007526C  48 01 92 4D */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80078310 00075270  2C 03 00 03 */	cmpwi r3, 3
/* 80078314 00075274  40 82 00 28 */	bne lbl_8007833C
/* 80078318 00075278  7F 83 E3 78 */	mr r3, r28
/* 8007831C 0007527C  38 80 00 00 */	li r4, 0
/* 80078320 00075280  4B FD B6 01 */	bl SetCalculateLighting__6CActorFb
/* 80078324 00075284  83 FC 00 90 */	lwz r31, 0x90(r28)
/* 80078328 00075288  48 2D 1C 85 */	bl White__6CColorFv
/* 8007832C 0007528C  7C 64 1B 78 */	mr r4, r3
/* 80078330 00075290  7F E3 FB 78 */	mr r3, r31
/* 80078334 00075294  48 08 AD 7D */	bl BuildConstantAmbientLighting__12CActorLightsFRC6CColor
/* 80078338 00075298  48 00 00 10 */	b lbl_80078348
lbl_8007833C:
/* 8007833C 0007529C  7F 83 E3 78 */	mr r3, r28
/* 80078340 000752A0  38 80 00 01 */	li r4, 1
/* 80078344 000752A4  4B FD B5 DD */	bl SetCalculateLighting__6CActorFb
lbl_80078348:
/* 80078348 000752A8  7F 83 E3 78 */	mr r3, r28
/* 8007834C 000752AC  80 1C 04 2C */	lwz r0, 0x42c(r28)
/* 80078350 000752B0  81 9C 00 00 */	lwz r12, 0(r28)
/* 80078354 000752B4  7F A4 EB 78 */	mr r4, r29
/* 80078358 000752B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007835C 000752BC  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 80078360 000752C0  7D 89 03 A6 */	mtctr r12
/* 80078364 000752C4  4E 80 04 21 */	bctrl
/* 80078368 000752C8  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 8007836C 000752CC  7C 7F 1B 78 */	mr r31, r3
/* 80078370 000752D0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80078374 000752D4  41 82 00 28 */	beq lbl_8007839C
/* 80078378 000752D8  80 7D 08 B8 */	lwz r3, 0x8b8(r29)
/* 8007837C 000752DC  7F A4 EB 78 */	mr r4, r29
/* 80078380 000752E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80078384 000752E4  48 01 91 D5 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80078388 000752E8  20 03 00 01 */	subfic r0, r3, 1
/* 8007838C 000752EC  7C 00 00 34 */	cntlzw r0, r0
/* 80078390 000752F0  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80078394 000752F4  41 82 00 08 */	beq lbl_8007839C
/* 80078398 000752F8  3B E0 00 4C */	li r31, 0x4c
lbl_8007839C:
/* 8007839C 000752FC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800783A0 00075300  28 00 00 FF */	cmplwi r0, 0xff
/* 800783A4 00075304  40 80 01 24 */	bge lbl_800784C8
/* 800783A8 00075308  88 01 00 18 */	lbz r0, 0x18(r1)
/* 800783AC 0007530C  28 00 00 00 */	cmplwi r0, 0
/* 800783B0 00075310  40 82 00 28 */	bne lbl_800783D8
/* 800783B4 00075314  88 01 00 19 */	lbz r0, 0x19(r1)
/* 800783B8 00075318  28 00 00 00 */	cmplwi r0, 0
/* 800783BC 0007531C  40 82 00 1C */	bne lbl_800783D8
/* 800783C0 00075320  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 800783C4 00075324  28 00 00 00 */	cmplwi r0, 0
/* 800783C8 00075328  40 82 00 10 */	bne lbl_800783D8
/* 800783CC 0007532C  48 2D 1B E1 */	bl White__6CColorFv
/* 800783D0 00075330  80 03 00 00 */	lwz r0, 0(r3)
/* 800783D4 00075334  90 01 00 18 */	stw r0, 0x18(r1)
lbl_800783D8:
/* 800783D8 00075338  88 7C 04 01 */	lbz r3, 0x401(r28)
/* 800783DC 0007533C  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 800783E0 00075340  41 82 00 68 */	beq lbl_80078448
/* 800783E4 00075344  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800783E8 00075348  38 00 00 FF */	li r0, 0xff
/* 800783EC 0007534C  28 03 00 7F */	cmplwi r3, 0x7f
/* 800783F0 00075350  40 81 00 0C */	ble lbl_800783FC
/* 800783F4 00075354  38 03 FF 80 */	addi r0, r3, -128
/* 800783F8 00075358  54 00 08 3C */	slwi r0, r0, 1
lbl_800783FC:
/* 800783FC 0007535C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80078400 00075360  38 AD A2 58 */	addi r5, r13, lbl_805A8E18@sda21
/* 80078404 00075364  7C 80 01 D6 */	mullw r4, r0, r0
/* 80078408 00075368  88 C5 00 01 */	lbz r6, 1(r5)
/* 8007840C 0007536C  88 ED A2 58 */	lbz r7, lbl_805A8E18@sda21(r13)
/* 80078410 00075370  38 60 00 03 */	li r3, 3
/* 80078414 00075374  88 A5 00 02 */	lbz r5, 2(r5)
/* 80078418 00075378  38 00 00 00 */	li r0, 0
/* 8007841C 0007537C  98 7C 00 B4 */	stb r3, 0xb4(r28)
/* 80078420 00075380  7C 84 46 70 */	srawi r4, r4, 8
/* 80078424 00075384  98 1C 00 B5 */	stb r0, 0xb5(r28)
/* 80078428 00075388  98 E1 00 14 */	stb r7, 0x14(r1)
/* 8007842C 0007538C  98 C1 00 15 */	stb r6, 0x15(r1)
/* 80078430 00075390  98 A1 00 16 */	stb r5, 0x16(r1)
/* 80078434 00075394  98 81 00 17 */	stb r4, 0x17(r1)
/* 80078438 00075398  B0 7C 00 B6 */	sth r3, 0xb6(r28)
/* 8007843C 0007539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078440 000753A0  90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 80078444 000753A4  48 00 01 38 */	b lbl_8007857C
lbl_80078448:
/* 80078448 000753A8  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8007844C 000753AC  41 82 00 3C */	beq lbl_80078488
/* 80078450 000753B0  38 00 00 05 */	li r0, 5
/* 80078454 000753B4  38 80 00 00 */	li r4, 0
/* 80078458 000753B8  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 8007845C 000753BC  38 60 00 FF */	li r3, 0xff
/* 80078460 000753C0  38 00 00 03 */	li r0, 3
/* 80078464 000753C4  98 9C 00 B5 */	stb r4, 0xb5(r28)
/* 80078468 000753C8  98 81 00 10 */	stb r4, 0x10(r1)
/* 8007846C 000753CC  98 81 00 11 */	stb r4, 0x11(r1)
/* 80078470 000753D0  98 81 00 12 */	stb r4, 0x12(r1)
/* 80078474 000753D4  98 61 00 13 */	stb r3, 0x13(r1)
/* 80078478 000753D8  B0 1C 00 B6 */	sth r0, 0xb6(r28)
/* 8007847C 000753DC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80078480 000753E0  90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 80078484 000753E4  48 00 00 F8 */	b lbl_8007857C
lbl_80078488:
/* 80078488 000753E8  38 00 00 05 */	li r0, 5
/* 8007848C 000753EC  88 C1 00 18 */	lbz r6, 0x18(r1)
/* 80078490 000753F0  88 A1 00 19 */	lbz r5, 0x19(r1)
/* 80078494 000753F4  38 60 00 00 */	li r3, 0
/* 80078498 000753F8  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 8007849C 000753FC  38 00 00 03 */	li r0, 3
/* 800784A0 00075400  88 81 00 1A */	lbz r4, 0x1a(r1)
/* 800784A4 00075404  98 7C 00 B5 */	stb r3, 0xb5(r28)
/* 800784A8 00075408  98 C1 00 0C */	stb r6, 0xc(r1)
/* 800784AC 0007540C  98 A1 00 0D */	stb r5, 0xd(r1)
/* 800784B0 00075410  98 81 00 0E */	stb r4, 0xe(r1)
/* 800784B4 00075414  9B E1 00 0F */	stb r31, 0xf(r1)
/* 800784B8 00075418  B0 1C 00 B6 */	sth r0, 0xb6(r28)
/* 800784BC 0007541C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800784C0 00075420  90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 800784C4 00075424  48 00 00 B8 */	b lbl_8007857C
lbl_800784C8:
/* 800784C8 00075428  88 01 00 18 */	lbz r0, 0x18(r1)
/* 800784CC 0007542C  28 00 00 00 */	cmplwi r0, 0
/* 800784D0 00075430  40 82 00 1C */	bne lbl_800784EC
/* 800784D4 00075434  88 01 00 19 */	lbz r0, 0x19(r1)
/* 800784D8 00075438  28 00 00 00 */	cmplwi r0, 0
/* 800784DC 0007543C  40 82 00 10 */	bne lbl_800784EC
/* 800784E0 00075440  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 800784E4 00075444  28 00 00 00 */	cmplwi r0, 0
/* 800784E8 00075448  41 82 00 48 */	beq lbl_80078530
lbl_800784EC:
/* 800784EC 0007544C  38 00 00 02 */	li r0, 2
/* 800784F0 00075450  88 E1 00 18 */	lbz r7, 0x18(r1)
/* 800784F4 00075454  88 C1 00 19 */	lbz r6, 0x19(r1)
/* 800784F8 00075458  38 80 00 FF */	li r4, 0xff
/* 800784FC 0007545C  88 A1 00 1A */	lbz r5, 0x1a(r1)
/* 80078500 00075460  38 60 00 00 */	li r3, 0
/* 80078504 00075464  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 80078508 00075468  38 00 00 03 */	li r0, 3
/* 8007850C 0007546C  98 7C 00 B5 */	stb r3, 0xb5(r28)
/* 80078510 00075470  98 E1 00 08 */	stb r7, 8(r1)
/* 80078514 00075474  98 C1 00 09 */	stb r6, 9(r1)
/* 80078518 00075478  98 A1 00 0A */	stb r5, 0xa(r1)
/* 8007851C 0007547C  98 81 00 0B */	stb r4, 0xb(r1)
/* 80078520 00075480  B0 1C 00 B6 */	sth r0, 0xb6(r28)
/* 80078524 00075484  80 01 00 08 */	lwz r0, 8(r1)
/* 80078528 00075488  90 1C 00 B8 */	stw r0, 0xb8(r28)
/* 8007852C 0007548C  48 00 00 50 */	b lbl_8007857C
lbl_80078530:
/* 80078530 00075490  C0 22 89 04 */	lfs f1, lbl_805AA624@sda21(r2)
/* 80078534 00075494  38 80 00 00 */	li r4, 0
/* 80078538 00075498  38 00 00 03 */	li r0, 3
/* 8007853C 0007549C  98 81 00 1C */	stb r4, 0x1c(r1)
/* 80078540 000754A0  FC 40 08 90 */	fmr f2, f1
/* 80078544 000754A4  38 61 00 20 */	addi r3, r1, 0x20
/* 80078548 000754A8  FC 60 08 90 */	fmr f3, f1
/* 8007854C 000754AC  98 81 00 1D */	stb r4, 0x1d(r1)
/* 80078550 000754B0  FC 80 08 90 */	fmr f4, f1
/* 80078554 000754B4  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80078558 000754B8  48 2E AE 95 */	bl __ct__6CColorFffff
/* 8007855C 000754BC  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 80078560 000754C0  98 1C 00 B4 */	stb r0, 0xb4(r28)
/* 80078564 000754C4  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 80078568 000754C8  98 1C 00 B5 */	stb r0, 0xb5(r28)
/* 8007856C 000754CC  A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 80078570 000754D0  B0 1C 00 B6 */	sth r0, 0xb6(r28)
/* 80078574 000754D4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80078578 000754D8  90 1C 00 B8 */	stw r0, 0xb8(r28)
lbl_8007857C:
/* 8007857C 000754DC  7F 83 E3 78 */	mr r3, r28
/* 80078580 000754E0  7F A4 EB 78 */	mr r4, r29
/* 80078584 000754E4  7F C5 F3 78 */	mr r5, r30
/* 80078588 000754E8  4B FD C7 59 */	bl PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
/* 8007858C 000754EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80078590 000754F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80078594 000754F4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80078598 000754F8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8007859C 000754FC  83 81 00 30 */	lwz r28, 0x30(r1)
/* 800785A0 00075500  7C 08 03 A6 */	mtlr r0
/* 800785A4 00075504  38 21 00 40 */	addi r1, r1, 0x40
/* 800785A8 00075508  4E 80 00 20 */	blr

.global GetOrbitPosition__10CPatternedCFRC13CStateManager
GetOrbitPosition__10CPatternedCFRC13CStateManager:
/* 800785AC 0007550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800785B0 00075510  7C 08 02 A6 */	mflr r0
/* 800785B4 00075514  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 800785B8 00075518  90 01 00 14 */	stw r0, 0x14(r1)
/* 800785BC 0007551C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800785C0 00075520  7C 7F 1B 78 */	mr r31, r3
/* 800785C4 00075524  81 84 00 00 */	lwz r12, 0(r4)
/* 800785C8 00075528  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 800785CC 0007552C  7D 89 03 A6 */	mtctr r12
/* 800785D0 00075530  4E 80 04 21 */	bctrl
/* 800785D4 00075534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800785D8 00075538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800785DC 0007553C  7C 08 03 A6 */	mtlr r0
/* 800785E0 00075540  38 21 00 10 */	addi r1, r1, 0x10
/* 800785E4 00075544  4E 80 00 20 */	blr

.global GetAimPosition__10CPatternedCFRC13CStateManagerf
GetAimPosition__10CPatternedCFRC13CStateManagerf:
/* 800785E8 00075548  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 800785EC 0007554C  7C 08 02 A6 */	mflr r0
/* 800785F0 00075550  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 800785F4 00075554  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 800785F8 00075558  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, qr0
/* 800785FC 0007555C  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 80078600 00075560  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, qr0
/* 80078604 00075564  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 80078608 00075568  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, qr0
/* 8007860C 0007556C  93 E1 01 AC */	stw r31, 0x1ac(r1)
/* 80078610 00075570  93 C1 01 A8 */	stw r30, 0x1a8(r1)
/* 80078614 00075574  93 A1 01 A4 */	stw r29, 0x1a4(r1)
/* 80078618 00075578  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007861C 0007557C  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80078620 00075580  C7 E5 66 A0 */	lfsu f31, sZeroVector__9CVector3f@l(r5)
/* 80078624 00075584  7C 7D 1B 78 */	mr r29, r3
/* 80078628 00075588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007862C 0007558C  7C 9E 23 78 */	mr r30, r4
/* 80078630 00075590  C3 C5 00 04 */	lfs f30, 4(r5)
/* 80078634 00075594  C3 A5 00 08 */	lfs f29, 8(r5)
/* 80078638 00075598  40 81 00 18 */	ble lbl_80078650
/* 8007863C 0007559C  38 61 01 34 */	addi r3, r1, 0x134
/* 80078640 000755A0  48 0A 36 71 */	bl PredictMotion__13CPhysicsActorCFf
/* 80078644 000755A4  C3 E1 01 34 */	lfs f31, 0x134(r1)
/* 80078648 000755A8  C3 C1 01 38 */	lfs f30, 0x138(r1)
/* 8007864C 000755AC  C3 A1 01 3C */	lfs f29, 0x13c(r1)
lbl_80078650:
/* 80078650 000755B0  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80078654 000755B4  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 80078658 000755B8  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007865C 000755BC  38 61 00 80 */	addi r3, r1, 0x80
/* 80078660 000755C0  83 E5 00 10 */	lwz r31, 0x10(r5)
/* 80078664 000755C4  38 84 00 07 */	addi r4, r4, 7
/* 80078668 000755C8  4B F8 C6 51 */	bl string_l__4rstlFPCc
/* 8007866C 000755CC  7F E4 FB 78 */	mr r4, r31
/* 80078670 000755D0  38 61 00 0C */	addi r3, r1, 0xc
/* 80078674 000755D4  38 A1 00 80 */	addi r5, r1, 0x80
/* 80078678 000755D8  4B FB 61 C1 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8007867C 000755DC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80078680 000755E0  38 61 00 80 */	addi r3, r1, 0x80
/* 80078684 000755E4  98 01 00 10 */	stb r0, 0x10(r1)
/* 80078688 000755E8  48 2C 54 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8007868C 000755EC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80078690 000755F0  28 00 00 FF */	cmplwi r0, 0xff
/* 80078694 000755F4  41 82 01 B4 */	beq lbl_80078848
/* 80078698 000755F8  98 01 00 08 */	stb r0, 8(r1)
/* 8007869C 000755FC  7F E4 FB 78 */	mr r4, r31
/* 800786A0 00075600  38 61 01 04 */	addi r3, r1, 0x104
/* 800786A4 00075604  38 A1 00 08 */	addi r5, r1, 8
/* 800786A8 00075608  38 C0 00 00 */	li r6, 0
/* 800786AC 0007560C  4B FB 3B C9 */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 800786B0 00075610  38 61 01 68 */	addi r3, r1, 0x168
/* 800786B4 00075614  38 81 01 04 */	addi r4, r1, 0x104
/* 800786B8 00075618  48 29 A4 BD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800786BC 0007561C  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 800786C0 00075620  7F C4 F3 78 */	mr r4, r30
/* 800786C4 00075624  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 800786C8 00075628  38 61 00 D0 */	addi r3, r1, 0xd0
/* 800786CC 0007562C  C0 25 00 08 */	lfs f1, 8(r5)
/* 800786D0 00075630  C0 65 00 04 */	lfs f3, 4(r5)
/* 800786D4 00075634  C0 41 01 84 */	lfs f2, 0x184(r1)
/* 800786D8 00075638  EC 81 00 32 */	fmuls f4, f1, f0
/* 800786DC 0007563C  C0 25 00 00 */	lfs f1, 0(r5)
/* 800786E0 00075640  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 800786E4 00075644  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800786E8 00075648  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 800786EC 0007564C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800786F0 00075650  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 800786F4 00075654  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 800786F8 00075658  81 9E 00 00 */	lwz r12, 0(r30)
/* 800786FC 0007565C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80078700 00075660  7D 89 03 A6 */	mtctr r12
/* 80078704 00075664  4E 80 04 21 */	bctrl
/* 80078708 00075668  88 61 00 E8 */	lbz r3, 0xe8(r1)
/* 8007870C 0007566C  38 00 00 00 */	li r0, 0
/* 80078710 00075670  28 03 00 00 */	cmplwi r3, 0
/* 80078714 00075674  98 01 00 E8 */	stb r0, 0xe8(r1)
/* 80078718 00075678  41 82 00 60 */	beq lbl_80078778
/* 8007871C 0007567C  7F C4 F3 78 */	mr r4, r30
/* 80078720 00075680  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80078724 00075684  81 9E 00 00 */	lwz r12, 0(r30)
/* 80078728 00075688  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8007872C 0007568C  7D 89 03 A6 */	mtctr r12
/* 80078730 00075690  4E 80 04 21 */	bctrl
/* 80078734 00075694  38 61 00 68 */	addi r3, r1, 0x68
/* 80078738 00075698  38 9E 00 34 */	addi r4, r30, 0x34
/* 8007873C 0007569C  38 A1 00 90 */	addi r5, r1, 0x90
/* 80078740 000756A0  48 29 A3 A9 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80078744 000756A4  38 61 00 74 */	addi r3, r1, 0x74
/* 80078748 000756A8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 8007874C 000756AC  38 A1 00 68 */	addi r5, r1, 0x68
/* 80078750 000756B0  48 2B F1 25 */	bl ClampToBox__6CAABoxCFRC9CVector3f
/* 80078754 000756B4  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80078758 000756B8  38 00 00 00 */	li r0, 0
/* 8007875C 000756BC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80078760 000756C0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80078764 000756C4  EF FF 10 2A */	fadds f31, f31, f2
/* 80078768 000756C8  EF DE 08 2A */	fadds f30, f30, f1
/* 8007876C 000756CC  98 01 00 CC */	stb r0, 0xcc(r1)
/* 80078770 000756D0  EF BD 00 2A */	fadds f29, f29, f0
/* 80078774 000756D4  48 00 01 04 */	b lbl_80078878
lbl_80078778:
/* 80078778 000756D8  7F C3 F3 78 */	mr r3, r30
/* 8007877C 000756DC  48 0A 22 45 */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 80078780 000756E0  7C 7F 1B 78 */	mr r31, r3
/* 80078784 000756E4  7F C4 F3 78 */	mr r4, r30
/* 80078788 000756E8  38 61 00 38 */	addi r3, r1, 0x38
/* 8007878C 000756EC  48 0A 1E A1 */	bl GetPrimitiveOffset__13CPhysicsActorCFv
/* 80078790 000756F0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80078794 000756F4  7F C4 F3 78 */	mr r4, r30
/* 80078798 000756F8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8007879C 000756FC  38 61 00 50 */	addi r3, r1, 0x50
/* 800787A0 00075700  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 800787A4 00075704  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 800787A8 00075708  EC 81 00 2A */	fadds f4, f1, f0
/* 800787AC 0007570C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 800787B0 00075710  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800787B4 00075714  EC 43 10 2A */	fadds f2, f3, f2
/* 800787B8 00075718  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 800787BC 0007571C  EC 01 00 2A */	fadds f0, f1, f0
/* 800787C0 00075720  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800787C4 00075724  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800787C8 00075728  48 0A 1E 65 */	bl GetPrimitiveOffset__13CPhysicsActorCFv
/* 800787CC 0007572C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 800787D0 00075730  38 61 00 EC */	addi r3, r1, 0xec
/* 800787D4 00075734  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800787D8 00075738  38 81 00 5C */	addi r4, r1, 0x5c
/* 800787DC 0007573C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 800787E0 00075740  38 A1 00 44 */	addi r5, r1, 0x44
/* 800787E4 00075744  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 800787E8 00075748  EC 81 00 2A */	fadds f4, f1, f0
/* 800787EC 0007574C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 800787F0 00075750  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800787F4 00075754  EC 43 10 2A */	fadds f2, f3, f2
/* 800787F8 00075758  D0 81 00 60 */	stfs f4, 0x60(r1)
/* 800787FC 0007575C  EC 01 00 2A */	fadds f0, f1, f0
/* 80078800 00075760  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80078804 00075764  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80078808 00075768  48 2B FD 01 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8007880C 0007576C  38 61 00 20 */	addi r3, r1, 0x20
/* 80078810 00075770  38 81 00 EC */	addi r4, r1, 0xec
/* 80078814 00075774  38 A1 00 90 */	addi r5, r1, 0x90
/* 80078818 00075778  48 2B F0 5D */	bl ClampToBox__6CAABoxCFRC9CVector3f
/* 8007881C 0007577C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80078820 00075780  38 9E 00 34 */	addi r4, r30, 0x34
/* 80078824 00075784  38 A1 00 20 */	addi r5, r1, 0x20
/* 80078828 00075788  48 29 A2 C1 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8007882C 0007578C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80078830 00075790  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80078834 00075794  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80078838 00075798  EF FF 10 2A */	fadds f31, f31, f2
/* 8007883C 0007579C  EF DE 08 2A */	fadds f30, f30, f1
/* 80078840 000757A0  EF BD 00 2A */	fadds f29, f29, f0
/* 80078844 000757A4  48 00 00 34 */	b lbl_80078878
lbl_80078848:
/* 80078848 000757A8  7F C4 F3 78 */	mr r4, r30
/* 8007884C 000757AC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80078850 000757B0  48 0A 20 DD */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80078854 000757B4  38 61 00 14 */	addi r3, r1, 0x14
/* 80078858 000757B8  38 81 00 9C */	addi r4, r1, 0x9c
/* 8007885C 000757BC  48 2B ED B1 */	bl GetCenterPoint__6CAABoxCFv
/* 80078860 000757C0  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80078864 000757C4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80078868 000757C8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8007886C 000757CC  EF FF 10 2A */	fadds f31, f31, f2
/* 80078870 000757D0  EF DE 08 2A */	fadds f30, f30, f1
/* 80078874 000757D4  EF BD 00 2A */	fadds f29, f29, f0
lbl_80078878:
/* 80078878 000757D8  D3 FD 00 00 */	stfs f31, 0(r29)
/* 8007887C 000757DC  D3 DD 00 04 */	stfs f30, 4(r29)
/* 80078880 000757E0  D3 BD 00 08 */	stfs f29, 8(r29)
/* 80078884 000757E4  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, qr0
/* 80078888 000757E8  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 8007888C 000757EC  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, qr0
/* 80078890 000757F0  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 80078894 000757F4  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, qr0
/* 80078898 000757F8  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 8007889C 000757FC  83 E1 01 AC */	lwz r31, 0x1ac(r1)
/* 800788A0 00075800  83 C1 01 A8 */	lwz r30, 0x1a8(r1)
/* 800788A4 00075804  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 800788A8 00075808  83 A1 01 A4 */	lwz r29, 0x1a4(r1)
/* 800788AC 0007580C  7C 08 03 A6 */	mtlr r0
/* 800788B0 00075810  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 800788B4 00075814  4E 80 00 20 */	blr

.global GetLctrTransform__10CPatternedCFRC6CSegId
GetLctrTransform__10CPatternedCFRC6CSegId:
/* 800788B8 00075818  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 800788BC 0007581C  7C 08 02 A6 */	mflr r0
/* 800788C0 00075820  38 C0 00 00 */	li r6, 0
/* 800788C4 00075824  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 800788C8 00075828  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 800788CC 0007582C  7C 9F 23 78 */	mr r31, r4
/* 800788D0 00075830  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 800788D4 00075834  7C 7E 1B 78 */	mr r30, r3
/* 800788D8 00075838  38 61 00 6C */	addi r3, r1, 0x6c
/* 800788DC 0007583C  80 84 00 64 */	lwz r4, 0x64(r4)
/* 800788E0 00075840  88 05 00 00 */	lbz r0, 0(r5)
/* 800788E4 00075844  38 A1 00 08 */	addi r5, r1, 8
/* 800788E8 00075848  80 84 00 10 */	lwz r4, 0x10(r4)
/* 800788EC 0007584C  98 01 00 08 */	stb r0, 8(r1)
/* 800788F0 00075850  4B FB 39 85 */	bl GetLocatorTransform__9CAnimDataCF6CSegIdPC13CCharAnimTime
/* 800788F4 00075854  38 61 00 9C */	addi r3, r1, 0x9c
/* 800788F8 00075858  38 81 00 6C */	addi r4, r1, 0x6c
/* 800788FC 0007585C  48 29 A2 79 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80078900 00075860  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 80078904 00075864  38 61 00 18 */	addi r3, r1, 0x18
/* 80078908 00075868  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8007890C 0007586C  38 81 00 9C */	addi r4, r1, 0x9c
/* 80078910 00075870  C0 25 00 08 */	lfs f1, 8(r5)
/* 80078914 00075874  C0 65 00 04 */	lfs f3, 4(r5)
/* 80078918 00075878  C0 41 00 B8 */	lfs f2, 0xb8(r1)
/* 8007891C 0007587C  EC 81 00 32 */	fmuls f4, f1, f0
/* 80078920 00075880  C0 25 00 00 */	lfs f1, 0(r5)
/* 80078924 00075884  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80078928 00075888  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8007892C 0007588C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80078930 00075890  EC 01 00 32 */	fmuls f0, f1, f0
/* 80078934 00075894  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80078938 00075898  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8007893C 0007589C  48 29 A7 B9 */	bl BuildMatrix3f__12CTransform4fCFv
/* 80078940 000758A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80078944 000758A4  38 81 00 18 */	addi r4, r1, 0x18
/* 80078948 000758A8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8007894C 000758AC  48 29 A9 2D */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 80078950 000758B0  7C 65 1B 78 */	mr r5, r3
/* 80078954 000758B4  7F C3 F3 78 */	mr r3, r30
/* 80078958 000758B8  38 9F 00 34 */	addi r4, r31, 0x34
/* 8007895C 000758BC  48 29 9F F5 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 80078960 000758C0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80078964 000758C4  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80078968 000758C8  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 8007896C 000758CC  7C 08 03 A6 */	mtlr r0
/* 80078970 000758D0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80078974 000758D4  4E 80 00 20 */	blr

.global "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 80078978 000758D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007897C 000758DC  7C 08 02 A6 */	mflr r0
/* 80078980 000758E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80078984 000758E4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80078988 000758E8  7C 9F 23 78 */	mr r31, r4
/* 8007898C 000758EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80078990 000758F0  7C 7E 1B 78 */	mr r30, r3
/* 80078994 000758F4  38 61 00 08 */	addi r3, r1, 8
/* 80078998 000758F8  4B FD A5 39 */	bl "GetScaledLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8007899C 000758FC  7F C3 F3 78 */	mr r3, r30
/* 800789A0 00075900  38 9F 00 34 */	addi r4, r31, 0x34
/* 800789A4 00075904  38 A1 00 08 */	addi r5, r1, 8
/* 800789A8 00075908  48 29 9F A9 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800789AC 0007590C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800789B0 00075910  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800789B4 00075914  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800789B8 00075918  7C 08 03 A6 */	mtlr r0
/* 800789BC 0007591C  38 21 00 40 */	addi r1, r1, 0x40
/* 800789C0 00075920  4E 80 00 20 */	blr

.global GetContactDamage__10CPatternedCFv
GetContactDamage__10CPatternedCFv:
/* 800789C4 00075924  80 04 04 04 */	lwz r0, 0x404(r4)
/* 800789C8 00075928  90 03 00 00 */	stw r0, 0(r3)
/* 800789CC 0007592C  88 04 04 08 */	lbz r0, 0x408(r4)
/* 800789D0 00075930  98 03 00 04 */	stb r0, 4(r3)
/* 800789D4 00075934  C0 04 04 0C */	lfs f0, 0x40c(r4)
/* 800789D8 00075938  D0 03 00 08 */	stfs f0, 8(r3)
/* 800789DC 0007593C  C0 04 04 10 */	lfs f0, 0x410(r4)
/* 800789E0 00075940  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 800789E4 00075944  C0 04 04 14 */	lfs f0, 0x414(r4)
/* 800789E8 00075948  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800789EC 0007594C  C0 04 04 18 */	lfs f0, 0x418(r4)
/* 800789F0 00075950  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 800789F4 00075954  88 04 04 1C */	lbz r0, 0x41c(r4)
/* 800789F8 00075958  98 03 00 18 */	stb r0, 0x18(r3)
/* 800789FC 0007595C  4E 80 00 20 */	blr

.global DeathDelete__10CPatternedFR13CStateManager
DeathDelete__10CPatternedFR13CStateManager:
/* 80078A00 00075960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80078A04 00075964  7C 08 02 A6 */	mflr r0
/* 80078A08 00075968  38 C0 FF FF */	li r6, -1
/* 80078A0C 0007596C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80078A10 00075970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078A14 00075974  7C 9F 23 78 */	mr r31, r4
/* 80078A18 00075978  7F E5 FB 78 */	mr r5, r31
/* 80078A1C 0007597C  38 80 00 0E */	li r4, 0xe
/* 80078A20 00075980  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80078A24 00075984  7C 7E 1B 78 */	mr r30, r3
/* 80078A28 00075988  4B FD 86 99 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80078A2C 0007598C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80078A30 00075990  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80078A34 00075994  C0 23 03 24 */	lfs f1, 0x324(r3)
/* 80078A38 00075998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80078A3C 0007599C  40 81 00 1C */	ble lbl_80078A58
/* 80078A40 000759A0  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 80078A44 000759A4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80078A48 000759A8  48 0C 14 C5 */	bl StopElectrocution__15CBodyControllerFv
/* 80078A4C 000759AC  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 80078A50 000759B0  7F C4 F3 78 */	mr r4, r30
/* 80078A54 000759B4  48 16 C6 FD */	bl StopElectric__20CActorModelParticlesFR5CActor
lbl_80078A58:
/* 80078A58 000759B8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80078A5C 000759BC  7F E3 FB 78 */	mr r3, r31
/* 80078A60 000759C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80078A64 000759C4  B0 01 00 08 */	sth r0, 8(r1)
/* 80078A68 000759C8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80078A6C 000759CC  4B FD 38 01 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 80078A70 000759D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80078A74 000759D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80078A78 000759D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80078A7C 000759DC  7C 08 03 A6 */	mtlr r0
/* 80078A80 000759E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80078A84 000759E4  4E 80 00 20 */	blr

.global CalcDyingThinkRate__10CPatternedFv
CalcDyingThinkRate__10CPatternedFv:
/* 80078A88 000759E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078A8C 000759EC  7C 08 02 A6 */	mflr r0
/* 80078A90 000759F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078A94 000759F4  88 03 04 01 */	lbz r0, 0x401(r3)
/* 80078A98 000759F8  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80078A9C 000759FC  41 82 00 14 */	beq lbl_80078AB0
/* 80078AA0 00075A00  C0 23 03 F4 */	lfs f1, 0x3f4(r3)
/* 80078AA4 00075A04  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 80078AA8 00075A08  EC 01 00 24 */	fdivs f0, f1, f0
/* 80078AAC 00075A0C  48 00 00 08 */	b lbl_80078AB4
lbl_80078AB0:
/* 80078AB0 00075A10  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
lbl_80078AB4:
/* 80078AB4 00075A14  D0 01 00 08 */	stfs f0, 8(r1)
/* 80078AB8 00075A18  38 81 00 08 */	addi r4, r1, 8
/* 80078ABC 00075A1C  38 62 88 F8 */	addi r3, r2, lbl_805AA618@sda21
/* 80078AC0 00075A20  4B FD 6C 71 */	bl "Max<f>__5CMathFRCfRCf"
/* 80078AC4 00075A24  C0 23 00 00 */	lfs f1, 0(r3)
/* 80078AC8 00075A28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80078ACC 00075A2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078AD0 00075A30  7C 08 03 A6 */	mtlr r0
/* 80078AD4 00075A34  38 21 00 10 */	addi r1, r1, 0x10
/* 80078AD8 00075A38  4E 80 00 20 */	blr

.global PhazeOut__10CPatternedFR13CStateManager
PhazeOut__10CPatternedFR13CStateManager:
/* 80078ADC 00075A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078AE0 00075A40  7C 08 02 A6 */	mflr r0
/* 80078AE4 00075A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078AE8 00075A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078AEC 00075A4C  7C 7F 1B 78 */	mr r31, r3
/* 80078AF0 00075A50  88 C3 04 00 */	lbz r6, 0x400(r3)
/* 80078AF4 00075A54  54 C0 E7 FF */	rlwinm. r0, r6, 0x1c, 0x1f, 0x1f
/* 80078AF8 00075A58  40 82 00 20 */	bne lbl_80078B18
/* 80078AFC 00075A5C  38 00 00 01 */	li r0, 1
/* 80078B00 00075A60  7C 85 23 78 */	mr r5, r4
/* 80078B04 00075A64  50 06 26 F6 */	rlwimi r6, r0, 4, 0x1b, 0x1b
/* 80078B08 00075A68  38 80 00 14 */	li r4, 0x14
/* 80078B0C 00075A6C  98 DF 04 00 */	stb r6, 0x400(r31)
/* 80078B10 00075A70  38 C0 FF FF */	li r6, -1
/* 80078B14 00075A74  4B FD 85 AD */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80078B18:
/* 80078B18 00075A78  88 1F 04 01 */	lbz r0, 0x401(r31)
/* 80078B1C 00075A7C  38 60 00 01 */	li r3, 1
/* 80078B20 00075A80  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80078B24 00075A84  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80078B28 00075A88  98 1F 04 01 */	stb r0, 0x401(r31)
/* 80078B2C 00075A8C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80078B30 00075A90  48 0C 1D 5D */	bl SetPlaybackRate__15CBodyControllerFf
/* 80078B34 00075A94  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80078B38 00075A98  38 80 00 00 */	li r4, 0
/* 80078B3C 00075A9C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80078B40 00075AA0  88 03 01 D4 */	lbz r0, 0x1d4(r3)
/* 80078B44 00075AA4  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80078B48 00075AA8  98 03 01 D4 */	stb r0, 0x1d4(r3)
/* 80078B4C 00075AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078B50 00075AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078B54 00075AB4  7C 08 03 A6 */	mtlr r0
/* 80078B58 00075AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80078B5C 00075ABC  4E 80 00 20 */	blr

.global Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff:
/* 80078B60 00075AC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80078B64 00075AC4  7C 08 02 A6 */	mflr r0
/* 80078B68 00075AC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80078B6C 00075ACC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80078B70 00075AD0  7C 9F 23 78 */	mr r31, r4
/* 80078B74 00075AD4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80078B78 00075AD8  7C 7E 1B 78 */	mr r30, r3
/* 80078B7C 00075ADC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80078B80 00075AE0  7C BD 2B 78 */	mr r29, r5
/* 80078B84 00075AE4  93 81 00 30 */	stw r28, 0x30(r1)
/* 80078B88 00075AE8  7C DC 33 78 */	mr r28, r6
/* 80078B8C 00075AEC  88 63 04 02 */	lbz r3, 0x402(r3)
/* 80078B90 00075AF0  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80078B94 00075AF4  41 82 00 10 */	beq lbl_80078BA4
/* 80078B98 00075AF8  38 00 00 01 */	li r0, 1
/* 80078B9C 00075AFC  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 80078BA0 00075B00  98 7E 04 02 */	stb r3, 0x402(r30)
lbl_80078BA4:
/* 80078BA4 00075B04  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80078BA8 00075B08  38 80 00 00 */	li r4, 0
/* 80078BAC 00075B0C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80078BB0 00075B10  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80078BB4 00075B14  41 82 00 28 */	beq lbl_80078BDC
/* 80078BB8 00075B18  FC 40 08 90 */	fmr f2, f1
/* 80078BBC 00075B1C  C0 3E 04 70 */	lfs f1, 0x470(r30)
/* 80078BC0 00075B20  C0 7E 04 F8 */	lfs f3, 0x4f8(r30)
/* 80078BC4 00075B24  48 0C 16 7D */	bl Freeze__15CBodyControllerFfff
/* 80078BC8 00075B28  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 80078BCC 00075B2C  7F C4 F3 78 */	mr r4, r30
/* 80078BD0 00075B30  48 16 C6 C5 */	bl EnsureElectricLoaded__20CActorModelParticlesR5CActor
/* 80078BD4 00075B34  38 80 00 01 */	li r4, 1
/* 80078BD8 00075B38  48 00 00 54 */	b lbl_80078C2C
lbl_80078BDC:
/* 80078BDC 00075B3C  C0 03 03 24 */	lfs f0, 0x324(r3)
/* 80078BE0 00075B40  C0 42 89 08 */	lfs f2, lbl_805AA628@sda21(r2)
/* 80078BE4 00075B44  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80078BE8 00075B48  41 81 00 44 */	bgt lbl_80078C2C
/* 80078BEC 00075B4C  C0 03 03 20 */	lfs f0, 0x320(r3)
/* 80078BF0 00075B50  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80078BF4 00075B54  41 81 00 38 */	bgt lbl_80078C2C
/* 80078BF8 00075B58  FC 40 08 90 */	fmr f2, f1
/* 80078BFC 00075B5C  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
/* 80078C00 00075B60  C0 7E 04 F8 */	lfs f3, 0x4f8(r30)
/* 80078C04 00075B64  48 0C 16 3D */	bl Freeze__15CBodyControllerFfff
/* 80078C08 00075B68  80 7E 05 10 */	lwz r3, 0x510(r30)
/* 80078C0C 00075B6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80078C10 00075B70  28 03 00 00 */	cmplwi r3, 0
/* 80078C14 00075B74  41 82 00 14 */	beq lbl_80078C28
/* 80078C18 00075B78  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
/* 80078C1C 00075B7C  7F 84 E3 78 */	mr r4, r28
/* 80078C20 00075B80  7F A5 EB 78 */	mr r5, r29
/* 80078C24 00075B84  48 2D E8 BD */	bl Reset__18CVertexMorphEffectFRC13CUnitVector3fRC9CVector3ff
lbl_80078C28:
/* 80078C28 00075B88  38 80 00 01 */	li r4, 1
lbl_80078C2C:
/* 80078C2C 00075B8C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80078C30 00075B90  41 82 00 98 */	beq lbl_80078CC8
/* 80078C34 00075B94  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80078C38 00075B98  3B A1 00 18 */	addi r29, r1, 0x18
/* 80078C3C 00075B9C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80078C40 00075BA0  3B 80 00 00 */	li r28, 0
/* 80078C44 00075BA4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80078C48 00075BA8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80078C4C 00075BAC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80078C50 00075BB0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80078C54 00075BB4  80 1E 04 60 */	lwz r0, 0x460(r30)
/* 80078C58 00075BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80078C5C 00075BBC  41 82 00 38 */	beq lbl_80078C94
/* 80078C60 00075BC0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80078C64 00075BC4  7F E3 FB 78 */	mr r3, r31
/* 80078C68 00075BC8  38 81 00 0C */	addi r4, r1, 0xc
/* 80078C6C 00075BCC  B0 01 00 08 */	sth r0, 8(r1)
/* 80078C70 00075BD0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80078C74 00075BD4  4B FD 39 31 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80078C78 00075BD8  7C 64 1B 78 */	mr r4, r3
/* 80078C7C 00075BDC  38 61 00 10 */	addi r3, r1, 0x10
/* 80078C80 00075BE0  48 02 C8 55 */	bl sub_800a54d4
/* 80078C84 00075BE4  48 02 C8 25 */	bl "CastTo<8CMetroid>__10CPatternedFP7CEntity"
/* 80078C88 00075BE8  28 03 00 00 */	cmplwi r3, 0
/* 80078C8C 00075BEC  41 82 00 08 */	beq lbl_80078C94
/* 80078C90 00075BF0  3B 80 00 01 */	li r28, 1
lbl_80078C94:
/* 80078C94 00075BF4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80078C98 00075BF8  38 61 00 14 */	addi r3, r1, 0x14
/* 80078C9C 00075BFC  38 80 07 08 */	li r4, 0x708
/* 80078CA0 00075C00  41 82 00 08 */	beq lbl_80078CA8
/* 80078CA4 00075C04  38 80 07 01 */	li r4, 0x701
lbl_80078CA8:
/* 80078CA8 00075C08  3C A0 80 5A */	lis r5, sZeroVector__9CVector3f@ha
/* 80078CAC 00075C0C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 80078CB0 00075C10  38 C5 66 A0 */	addi r6, r5, sZeroVector__9CVector3f@l
/* 80078CB4 00075C14  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 80078CB8 00075C18  7F A5 EB 78 */	mr r5, r29
/* 80078CBC 00075C1C  38 E0 00 01 */	li r7, 1
/* 80078CC0 00075C20  39 00 00 00 */	li r8, 0
/* 80078CC4 00075C24  48 27 15 ED */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
lbl_80078CC8:
/* 80078CC8 00075C28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80078CCC 00075C2C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80078CD0 00075C30  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80078CD4 00075C34  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80078CD8 00075C38  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80078CDC 00075C3C  7C 08 03 A6 */	mtlr r0
/* 80078CE0 00075C40  38 21 00 40 */	addi r1, r1, 0x40
/* 80078CE4 00075C44  4E 80 00 20 */	blr

.global Shock__10CPatternedFff
Shock__10CPatternedFff:
/* 80078CE8 00075C48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80078CEC 00075C4C  7C 08 02 A6 */	mflr r0
/* 80078CF0 00075C50  90 01 00 44 */	stw r0, 0x44(r1)
/* 80078CF4 00075C54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80078CF8 00075C58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80078CFC 00075C5C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80078D00 00075C60  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80078D04 00075C64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078D08 00075C68  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80078D0C 00075C6C  38 80 00 00 */	li r4, 0
/* 80078D10 00075C70  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80078D14 00075C74  38 A0 00 02 */	li r5, 2
/* 80078D18 00075C78  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078D1C 00075C7C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80078D20 00075C80  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80078D24 00075C84  FF C0 08 90 */	fmr f30, f1
/* 80078D28 00075C88  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078D2C 00075C8C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80078D30 00075C90  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80078D34 00075C94  FF E0 10 90 */	fmr f31, f2
/* 80078D38 00075C98  90 A1 00 08 */	stw r5, 8(r1)
/* 80078D3C 00075C9C  7C 7F 1B 78 */	mr r31, r3
/* 80078D40 00075CA0  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078D44 00075CA4  81 83 00 00 */	lwz r12, 0(r3)
/* 80078D48 00075CA8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80078D4C 00075CAC  7D 89 03 A6 */	mtctr r12
/* 80078D50 00075CB0  4E 80 04 21 */	bctrl
/* 80078D54 00075CB4  38 81 00 08 */	addi r4, r1, 8
/* 80078D58 00075CB8  38 A0 00 00 */	li r5, 0
/* 80078D5C 00075CBC  48 08 97 61 */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80078D60 00075CC0  2C 03 00 01 */	cmpwi r3, 1
/* 80078D64 00075CC4  41 82 00 34 */	beq lbl_80078D98
/* 80078D68 00075CC8  40 80 00 40 */	bge lbl_80078DA8
/* 80078D6C 00075CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80078D70 00075CD0  40 80 00 08 */	bge lbl_80078D78
/* 80078D74 00075CD4  48 00 00 34 */	b lbl_80078DA8
lbl_80078D78:
/* 80078D78 00075CD8  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 80078D7C 00075CDC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80078D80 00075CE0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80078D84 00075CE4  48 0C 11 E9 */	bl SetElectrocuting__15CBodyControllerFf
/* 80078D88 00075CE8  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 80078D8C 00075CEC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80078D90 00075CF0  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 80078D94 00075CF4  48 00 00 14 */	b lbl_80078DA8
lbl_80078D98:
/* 80078D98 00075CF8  FC 20 F0 90 */	fmr f1, f30
/* 80078D9C 00075CFC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80078DA0 00075D00  48 0C 11 CD */	bl SetElectrocuting__15CBodyControllerFf
/* 80078DA4 00075D04  D3 FF 03 F0 */	stfs f31, 0x3f0(r31)
lbl_80078DA8:
/* 80078DA8 00075D08  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80078DAC 00075D0C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80078DB0 00075D10  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80078DB4 00075D14  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80078DB8 00075D18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80078DBC 00075D1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80078DC0 00075D20  7C 08 03 A6 */	mtlr r0
/* 80078DC4 00075D24  38 21 00 40 */	addi r1, r1, 0x40
/* 80078DC8 00075D28  4E 80 00 20 */	blr

.global Burn__10CPatternedFff
Burn__10CPatternedFff:
/* 80078DCC 00075D2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80078DD0 00075D30  7C 08 02 A6 */	mflr r0
/* 80078DD4 00075D34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80078DD8 00075D38  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80078DDC 00075D3C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80078DE0 00075D40  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80078DE4 00075D44  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 80078DE8 00075D48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078DEC 00075D4C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80078DF0 00075D50  38 80 00 00 */	li r4, 0
/* 80078DF4 00075D54  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80078DF8 00075D58  38 A0 00 03 */	li r5, 3
/* 80078DFC 00075D5C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078E00 00075D60  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80078E04 00075D64  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80078E08 00075D68  FF C0 08 90 */	fmr f30, f1
/* 80078E0C 00075D6C  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078E10 00075D70  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80078E14 00075D74  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80078E18 00075D78  FF E0 10 90 */	fmr f31, f2
/* 80078E1C 00075D7C  90 A1 00 08 */	stw r5, 8(r1)
/* 80078E20 00075D80  7C 7F 1B 78 */	mr r31, r3
/* 80078E24 00075D84  98 01 00 0C */	stb r0, 0xc(r1)
/* 80078E28 00075D88  81 83 00 00 */	lwz r12, 0(r3)
/* 80078E2C 00075D8C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80078E30 00075D90  7D 89 03 A6 */	mtctr r12
/* 80078E34 00075D94  4E 80 04 21 */	bctrl
/* 80078E38 00075D98  38 81 00 08 */	addi r4, r1, 8
/* 80078E3C 00075D9C  38 A0 00 00 */	li r5, 0
/* 80078E40 00075DA0  48 08 96 7D */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponModei
/* 80078E44 00075DA4  2C 03 00 01 */	cmpwi r3, 1
/* 80078E48 00075DA8  41 82 00 34 */	beq lbl_80078E7C
/* 80078E4C 00075DAC  40 80 00 40 */	bge lbl_80078E8C
/* 80078E50 00075DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80078E54 00075DB4  40 80 00 08 */	bge lbl_80078E5C
/* 80078E58 00075DB8  48 00 00 34 */	b lbl_80078E8C
lbl_80078E5C:
/* 80078E5C 00075DBC  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 80078E60 00075DC0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80078E64 00075DC4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80078E68 00075DC8  48 0C 12 2D */	bl SetOnFire__15CBodyControllerFf
/* 80078E6C 00075DCC  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 80078E70 00075DD0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80078E74 00075DD4  D0 1F 03 EC */	stfs f0, 0x3ec(r31)
/* 80078E78 00075DD8  48 00 00 14 */	b lbl_80078E8C
lbl_80078E7C:
/* 80078E7C 00075DDC  FC 20 F0 90 */	fmr f1, f30
/* 80078E80 00075DE0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80078E84 00075DE4  48 0C 12 11 */	bl SetOnFire__15CBodyControllerFf
/* 80078E88 00075DE8  D3 FF 03 EC */	stfs f31, 0x3ec(r31)
lbl_80078E8C:
/* 80078E8C 00075DEC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80078E90 00075DF0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80078E94 00075DF4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 80078E98 00075DF8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80078E9C 00075DFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80078EA0 00075E00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80078EA4 00075E04  7C 08 03 A6 */	mtlr r0
/* 80078EA8 00075E08  38 21 00 40 */	addi r1, r1, 0x40
/* 80078EAC 00075E0C  4E 80 00 20 */	blr

.global DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80078EB0 00075E10  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 80078EB4 00075E14  7C 08 02 A6 */	mflr r0
/* 80078EB8 00075E18  90 01 02 84 */	stw r0, 0x284(r1)
/* 80078EBC 00075E1C  DB E1 02 70 */	stfd f31, 0x270(r1)
/* 80078EC0 00075E20  F3 E1 02 78 */	psq_st f31, 632(r1), 0, qr0
/* 80078EC4 00075E24  DB C1 02 60 */	stfd f30, 0x260(r1)
/* 80078EC8 00075E28  F3 C1 02 68 */	psq_st f30, 616(r1), 0, qr0
/* 80078ECC 00075E2C  DB A1 02 50 */	stfd f29, 0x250(r1)
/* 80078ED0 00075E30  F3 A1 02 58 */	psq_st f29, 600(r1), 0, qr0
/* 80078ED4 00075E34  DB 81 02 40 */	stfd f28, 0x240(r1)
/* 80078ED8 00075E38  F3 81 02 48 */	psq_st f28, 584(r1), 0, qr0
/* 80078EDC 00075E3C  93 E1 02 3C */	stw r31, 0x23c(r1)
/* 80078EE0 00075E40  93 C1 02 38 */	stw r30, 0x238(r1)
/* 80078EE4 00075E44  93 A1 02 34 */	stw r29, 0x234(r1)
/* 80078EE8 00075E48  93 81 02 30 */	stw r28, 0x230(r1)
/* 80078EEC 00075E4C  7C DF 33 78 */	mr r31, r6
/* 80078EF0 00075E50  FF E0 08 90 */	fmr f31, f1
/* 80078EF4 00075E54  28 1F 00 18 */	cmplwi r31, 0x18
/* 80078EF8 00075E58  7C 7C 1B 78 */	mr r28, r3
/* 80078EFC 00075E5C  7C 9D 23 78 */	mr r29, r4
/* 80078F00 00075E60  7C BE 2B 78 */	mr r30, r5
/* 80078F04 00075E64  41 81 04 08 */	bgt lbl_8007930C
/* 80078F08 00075E68  3C A0 80 3E */	lis r5, lbl_803DA894@ha
/* 80078F0C 00075E6C  57 E0 10 3A */	slwi r0, r31, 2
/* 80078F10 00075E70  38 A5 A8 94 */	addi r5, r5, lbl_803DA894@l
/* 80078F14 00075E74  7C 05 00 2E */	lwzx r0, r5, r0
/* 80078F18 00075E78  7C 09 03 A6 */	mtctr r0
/* 80078F1C 00075E7C  4E 80 04 20 */	bctr
.global lbl_80078F20
lbl_80078F20:
/* 80078F20 00075E80  7F 84 E3 78 */	mr r4, r28
/* 80078F24 00075E84  38 61 01 94 */	addi r3, r1, 0x194
/* 80078F28 00075E88  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80078F2C 00075E8C  4B FF FA 4D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80078F30 00075E90  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 80078F34 00075E94  38 81 01 94 */	addi r4, r1, 0x194
/* 80078F38 00075E98  48 29 9C 3D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80078F3C 00075E9C  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 80078F40 00075EA0  7F A5 EB 78 */	mr r5, r29
/* 80078F44 00075EA4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80078F48 00075EA8  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80078F4C 00075EAC  81 84 00 00 */	lwz r12, 0(r4)
/* 80078F50 00075EB0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80078F54 00075EB4  7D 89 03 A6 */	mtctr r12
/* 80078F58 00075EB8  4E 80 04 21 */	bctrl
/* 80078F5C 00075EBC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80078F60 00075EC0  38 61 00 9C */	addi r3, r1, 0x9c
/* 80078F64 00075EC4  C0 41 00 AC */	lfs f2, 0xac(r1)
/* 80078F68 00075EC8  38 81 00 90 */	addi r4, r1, 0x90
/* 80078F6C 00075ECC  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 80078F70 00075ED0  C0 61 02 20 */	lfs f3, 0x220(r1)
/* 80078F74 00075ED4  C0 81 02 10 */	lfs f4, 0x210(r1)
/* 80078F78 00075ED8  C0 A1 02 00 */	lfs f5, 0x200(r1)
/* 80078F7C 00075EDC  EC 61 18 28 */	fsubs f3, f1, f3
/* 80078F80 00075EE0  EC 82 20 28 */	fsubs f4, f2, f4
/* 80078F84 00075EE4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80078F88 00075EE8  EC 00 28 28 */	fsubs f0, f0, f5
/* 80078F8C 00075EEC  C3 81 02 18 */	lfs f28, 0x218(r1)
/* 80078F90 00075EF0  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80078F94 00075EF4  C3 A1 02 08 */	lfs f29, 0x208(r1)
/* 80078F98 00075EF8  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80078F9C 00075EFC  C3 C1 01 F8 */	lfs f30, 0x1f8(r1)
/* 80078FA0 00075F00  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80078FA4 00075F04  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 80078FA8 00075F08  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 80078FAC 00075F0C  48 29 B8 A5 */	bl AsNormalized__9CVector3fCFv
/* 80078FB0 00075F10  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80078FB4 00075F14  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80078FB8 00075F18  EC 3D 00 32 */	fmuls f1, f29, f0
/* 80078FBC 00075F1C  C0 61 00 A4 */	lfs f3, 0xa4(r1)
/* 80078FC0 00075F20  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80078FC4 00075F24  EC 3E 08 BA */	fmadds f1, f30, f2, f1
/* 80078FC8 00075F28  EC 3C 08 FA */	fmadds f1, f28, f3, f1
/* 80078FCC 00075F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80078FD0 00075F30  40 81 00 B8 */	ble lbl_80079088
/* 80078FD4 00075F34  C0 41 02 00 */	lfs f2, 0x200(r1)
/* 80078FD8 00075F38  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80078FDC 00075F3C  C0 21 02 10 */	lfs f1, 0x210(r1)
/* 80078FE0 00075F40  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 80078FE4 00075F44  C0 01 02 20 */	lfs f0, 0x220(r1)
/* 80078FE8 00075F48  38 61 01 64 */	addi r3, r1, 0x164
/* 80078FEC 00075F4C  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80078FF0 00075F50  38 81 00 84 */	addi r4, r1, 0x84
/* 80078FF4 00075F54  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 80078FF8 00075F58  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80078FFC 00075F5C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80079000 00075F60  48 29 AB 11 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80079004 00075F64  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 80079008 00075F68  38 81 01 64 */	addi r4, r1, 0x164
/* 8007900C 00075F6C  48 29 9B 69 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80079010 00075F70  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 80079014 00075F74  39 60 00 00 */	li r11, 0
/* 80079018 00075F78  99 61 00 80 */	stb r11, 0x80(r1)
/* 8007901C 00075F7C  38 01 00 68 */	addi r0, r1, 0x68
/* 80079020 00075F80  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 80079024 00075F84  7F 83 E3 78 */	mr r3, r28
/* 80079028 00075F88  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8007902C 00075F8C  7F A5 EB 78 */	mr r5, r29
/* 80079030 00075F90  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 80079034 00075F94  39 21 00 74 */	addi r9, r1, 0x74
/* 80079038 00075F98  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8007903C 00075F9C  38 C0 00 01 */	li r6, 1
/* 80079040 00075FA0  38 E0 00 00 */	li r7, 0
/* 80079044 00075FA4  39 00 00 00 */	li r8, 0
/* 80079048 00075FA8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8007904C 00075FAC  91 61 00 08 */	stw r11, 8(r1)
/* 80079050 00075FB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80079054 00075FB4  4B FF E9 A5 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 80079058 00075FB8  88 01 00 80 */	lbz r0, 0x80(r1)
/* 8007905C 00075FBC  28 00 00 00 */	cmplwi r0, 0
/* 80079060 00075FC0  41 82 00 1C */	beq lbl_8007907C
/* 80079064 00075FC4  34 61 00 74 */	addic. r3, r1, 0x74
/* 80079068 00075FC8  41 82 00 14 */	beq lbl_8007907C
/* 8007906C 00075FCC  28 03 00 00 */	cmplwi r3, 0
/* 80079070 00075FD0  41 82 00 0C */	beq lbl_8007907C
/* 80079074 00075FD4  38 80 00 00 */	li r4, 0
/* 80079078 00075FD8  48 2C 7D C9 */	bl __dt__6CTokenFv
lbl_8007907C:
/* 8007907C 00075FDC  38 00 00 00 */	li r0, 0
/* 80079080 00075FE0  98 01 00 80 */	stb r0, 0x80(r1)
/* 80079084 00075FE4  48 00 02 88 */	b lbl_8007930C
lbl_80079088:
/* 80079088 00075FE8  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007908C 00075FEC  39 60 00 00 */	li r11, 0
/* 80079090 00075FF0  99 61 00 64 */	stb r11, 0x64(r1)
/* 80079094 00075FF4  38 01 00 4C */	addi r0, r1, 0x4c
/* 80079098 00075FF8  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 8007909C 00075FFC  7F 83 E3 78 */	mr r3, r28
/* 800790A0 00076000  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800790A4 00076004  7F A5 EB 78 */	mr r5, r29
/* 800790A8 00076008  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 800790AC 0007600C  39 21 00 58 */	addi r9, r1, 0x58
/* 800790B0 00076010  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800790B4 00076014  38 C0 00 01 */	li r6, 1
/* 800790B8 00076018  38 E0 00 00 */	li r7, 0
/* 800790BC 0007601C  39 00 00 00 */	li r8, 0
/* 800790C0 00076020  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800790C4 00076024  91 61 00 08 */	stw r11, 8(r1)
/* 800790C8 00076028  90 01 00 0C */	stw r0, 0xc(r1)
/* 800790CC 0007602C  4B FF E9 2D */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 800790D0 00076030  88 01 00 64 */	lbz r0, 0x64(r1)
/* 800790D4 00076034  28 00 00 00 */	cmplwi r0, 0
/* 800790D8 00076038  41 82 00 1C */	beq lbl_800790F4
/* 800790DC 0007603C  34 61 00 58 */	addic. r3, r1, 0x58
/* 800790E0 00076040  41 82 00 14 */	beq lbl_800790F4
/* 800790E4 00076044  28 03 00 00 */	cmplwi r3, 0
/* 800790E8 00076048  41 82 00 0C */	beq lbl_800790F4
/* 800790EC 0007604C  38 80 00 00 */	li r4, 0
/* 800790F0 00076050  48 2C 7D 51 */	bl __dt__6CTokenFv
lbl_800790F4:
/* 800790F4 00076054  38 00 00 00 */	li r0, 0
/* 800790F8 00076058  98 01 00 64 */	stb r0, 0x64(r1)
/* 800790FC 0007605C  48 00 02 10 */	b lbl_8007930C
.global lbl_80079100
lbl_80079100:
/* 80079100 00076060  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 80079104 00076064  7F 84 E3 78 */	mr r4, r28
/* 80079108 00076068  38 61 01 34 */	addi r3, r1, 0x134
/* 8007910C 0007606C  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80079110 00076070  C3 86 00 00 */	lfs f28, 0(r6)
/* 80079114 00076074  C3 A6 00 04 */	lfs f29, 4(r6)
/* 80079118 00076078  C3 C6 00 08 */	lfs f30, 8(r6)
/* 8007911C 0007607C  4B FD 9D E5 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80079120 00076080  C0 41 01 60 */	lfs f2, 0x160(r1)
/* 80079124 00076084  38 61 00 40 */	addi r3, r1, 0x40
/* 80079128 00076088  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 8007912C 0007608C  38 9C 00 34 */	addi r4, r28, 0x34
/* 80079130 00076090  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 80079134 00076094  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 80079138 00076098  EC 3D 00 72 */	fmuls f1, f29, f1
/* 8007913C 0007609C  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80079140 000760A0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80079144 000760A4  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 80079148 000760A8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8007914C 000760AC  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80079150 000760B0  48 29 99 99 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 80079154 000760B4  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 80079158 000760B8  38 61 01 1C */	addi r3, r1, 0x11c
/* 8007915C 000760BC  C0 22 89 10 */	lfs f1, lbl_805AA630@sda21(r2)
/* 80079160 000760C0  38 81 00 34 */	addi r4, r1, 0x34
/* 80079164 000760C4  ED 1D 00 32 */	fmuls f8, f29, f0
/* 80079168 000760C8  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 8007916C 000760CC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80079170 000760D0  EC FC 00 32 */	fmuls f7, f28, f0
/* 80079174 000760D4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80079178 000760D8  ED 3E 00 72 */	fmuls f9, f30, f1
/* 8007917C 000760DC  EC C2 38 2A */	fadds f6, f2, f7
/* 80079180 000760E0  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80079184 000760E4  EC A3 40 2A */	fadds f5, f3, f8
/* 80079188 000760E8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8007918C 000760EC  EC 80 48 2A */	fadds f4, f0, f9
/* 80079190 000760F0  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 80079194 000760F4  EC 42 38 28 */	fsubs f2, f2, f7
/* 80079198 000760F8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8007919C 000760FC  EC 23 40 28 */	fsubs f1, f3, f8
/* 800791A0 00076100  EC 00 48 28 */	fsubs f0, f0, f9
/* 800791A4 00076104  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 800791A8 00076108  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 800791AC 0007610C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 800791B0 00076110  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800791B4 00076114  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 800791B8 00076118  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 800791BC 0007611C  48 2B F3 4D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 800791C0 00076120  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 800791C4 00076124  38 61 01 04 */	addi r3, r1, 0x104
/* 800791C8 00076128  48 0A 17 65 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 800791CC 0007612C  38 61 01 1C */	addi r3, r1, 0x11c
/* 800791D0 00076130  38 81 01 04 */	addi r4, r1, 0x104
/* 800791D4 00076134  48 2B E9 B1 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 800791D8 00076138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800791DC 0007613C  41 82 01 30 */	beq lbl_8007930C
/* 800791E0 00076140  80 AD 83 E0 */	lwz r5, lbl_805A6FA0@sda21(r13)
/* 800791E4 00076144  38 60 00 00 */	li r3, 0
/* 800791E8 00076148  38 80 00 01 */	li r4, 1
/* 800791EC 0007614C  48 31 0D 09 */	bl __shl2i
/* 800791F0 00076150  38 A0 00 00 */	li r5, 0
/* 800791F4 00076154  38 00 00 03 */	li r0, 3
/* 800791F8 00076158  90 81 00 D4 */	stw r4, 0xd4(r1)
/* 800791FC 0007615C  7F 84 E3 78 */	mr r4, r28
/* 80079200 00076160  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80079204 00076164  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80079208 00076168  90 A1 00 DC */	stw r5, 0xdc(r1)
/* 8007920C 0007616C  90 A1 00 D8 */	stw r5, 0xd8(r1)
/* 80079210 00076170  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80079214 00076174  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80079218 00076178  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8007921C 0007617C  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 80079220 00076180  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80079224 00076184  A0 A5 00 08 */	lhz r5, 8(r5)
/* 80079228 00076188  B0 A1 00 1C */	sth r5, 0x1c(r1)
/* 8007922C 0007618C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80079230 00076190  B0 A1 00 18 */	sth r5, 0x18(r1)
/* 80079234 00076194  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80079238 00076198  81 9C 00 00 */	lwz r12, 0(r28)
/* 8007923C 0007619C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80079240 000761A0  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80079244 000761A4  7D 89 03 A6 */	mtctr r12
/* 80079248 000761A8  4E 80 04 21 */	bctrl
/* 8007924C 000761AC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80079250 000761B0  7F A3 EB 78 */	mr r3, r29
/* 80079254 000761B4  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80079258 000761B8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8007925C 000761BC  38 81 00 24 */	addi r4, r1, 0x24
/* 80079260 000761C0  38 C1 00 14 */	addi r6, r1, 0x14
/* 80079264 000761C4  38 E1 00 E8 */	addi r7, r1, 0xe8
/* 80079268 000761C8  39 01 00 D0 */	addi r8, r1, 0xd0
/* 8007926C 000761CC  4B FD 0E 35 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80079270 000761D0  48 00 00 9C */	b lbl_8007930C
.global lbl_80079274
lbl_80079274:
/* 80079274 000761D4  88 BC 04 00 */	lbz r5, 0x400(r28)
/* 80079278 000761D8  54 A0 D7 FF */	rlwinm. r0, r5, 0x1a, 0x1f, 0x1f
/* 8007927C 000761DC  40 82 00 54 */	bne lbl_800792D0
/* 80079280 000761E0  54 A0 E7 FF */	rlwinm. r0, r5, 0x1c, 0x1f, 0x1f
/* 80079284 000761E4  40 82 00 1C */	bne lbl_800792A0
/* 80079288 000761E8  C0 02 89 14 */	lfs f0, lbl_805AA634@sda21(r2)
/* 8007928C 000761EC  38 60 00 01 */	li r3, 1
/* 80079290 000761F0  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
/* 80079294 000761F4  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 80079298 000761F8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8007929C 000761FC  98 1C 04 00 */	stb r0, 0x400(r28)
lbl_800792A0:
/* 800792A0 00076200  7F 83 E3 78 */	mr r3, r28
/* 800792A4 00076204  7F A8 EB 78 */	mr r8, r29
/* 800792A8 00076208  38 80 00 21 */	li r4, 0x21
/* 800792AC 0007620C  38 A0 00 13 */	li r5, 0x13
/* 800792B0 00076210  38 C0 00 28 */	li r6, 0x28
/* 800792B4 00076214  38 E0 00 29 */	li r7, 0x29
/* 800792B8 00076218  4B FD AA 31 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800792BC 0007621C  7F 83 E3 78 */	mr r3, r28
/* 800792C0 00076220  7F A5 EB 78 */	mr r5, r29
/* 800792C4 00076224  38 80 00 12 */	li r4, 0x12
/* 800792C8 00076228  4B FD B0 89 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 800792CC 0007622C  48 00 00 40 */	b lbl_8007930C
lbl_800792D0:
/* 800792D0 00076230  4B FF F7 31 */	bl DeathDelete__10CPatternedFR13CStateManager
/* 800792D4 00076234  48 00 00 38 */	b lbl_8007930C
.global lbl_800792D8
lbl_800792D8:
/* 800792D8 00076238  7F A7 EB 78 */	mr r7, r29
/* 800792DC 0007623C  38 80 00 21 */	li r4, 0x21
/* 800792E0 00076240  38 A0 00 28 */	li r5, 0x28
/* 800792E4 00076244  38 C0 00 29 */	li r6, 0x29
/* 800792E8 00076248  4B FD AB 05 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 800792EC 0007624C  48 00 00 20 */	b lbl_8007930C
.global lbl_800792F0
lbl_800792F0:
/* 800792F0 00076250  7F A5 EB 78 */	mr r5, r29
/* 800792F4 00076254  38 80 00 12 */	li r4, 0x12
/* 800792F8 00076258  4B FD B0 59 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 800792FC 0007625C  48 00 00 10 */	b lbl_8007930C
.global lbl_80079300
lbl_80079300:
/* 80079300 00076260  7F A5 EB 78 */	mr r5, r29
/* 80079304 00076264  38 80 00 13 */	li r4, 0x13
/* 80079308 00076268  4B FD AC 79 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
.global lbl_8007930C
lbl_8007930C:
/* 8007930C 0007626C  FC 20 F8 90 */	fmr f1, f31
/* 80079310 00076270  7F 83 E3 78 */	mr r3, r28
/* 80079314 00076274  7F A4 EB 78 */	mr r4, r29
/* 80079318 00076278  7F C5 F3 78 */	mr r5, r30
/* 8007931C 0007627C  7F E6 FB 78 */	mr r6, r31
/* 80079320 00076280  4B FD BE FD */	bl DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventTypef
/* 80079324 00076284  E3 E1 02 78 */	psq_l f31, 632(r1), 0, qr0
/* 80079328 00076288  CB E1 02 70 */	lfd f31, 0x270(r1)
/* 8007932C 0007628C  E3 C1 02 68 */	psq_l f30, 616(r1), 0, qr0
/* 80079330 00076290  CB C1 02 60 */	lfd f30, 0x260(r1)
/* 80079334 00076294  E3 A1 02 58 */	psq_l f29, 600(r1), 0, qr0
/* 80079338 00076298  CB A1 02 50 */	lfd f29, 0x250(r1)
/* 8007933C 0007629C  E3 81 02 48 */	psq_l f28, 584(r1), 0, qr0
/* 80079340 000762A0  CB 81 02 40 */	lfd f28, 0x240(r1)
/* 80079344 000762A4  83 E1 02 3C */	lwz r31, 0x23c(r1)
/* 80079348 000762A8  83 C1 02 38 */	lwz r30, 0x238(r1)
/* 8007934C 000762AC  83 A1 02 34 */	lwz r29, 0x234(r1)
/* 80079350 000762B0  80 01 02 84 */	lwz r0, 0x284(r1)
/* 80079354 000762B4  83 81 02 30 */	lwz r28, 0x230(r1)
/* 80079358 000762B8  7C 08 03 A6 */	mtlr r0
/* 8007935C 000762BC  38 21 02 80 */	addi r1, r1, 0x280
/* 80079360 000762C0  4E 80 00 20 */	blr

.global ThinkAboutMove__10CPatternedFf
ThinkAboutMove__10CPatternedFf:
/* 80079364 000762C4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80079368 000762C8  7C 08 02 A6 */	mflr r0
/* 8007936C 000762CC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80079370 000762D0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80079374 000762D4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80079378 000762D8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8007937C 000762DC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80079380 000762E0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80079384 000762E4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80079388 000762E8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8007938C 000762EC  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80079390 000762F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80079394 000762F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80079398 000762F8  7C 7E 1B 78 */	mr r30, r3
/* 8007939C 000762FC  88 63 03 28 */	lbz r3, 0x328(r3)
/* 800793A0 00076300  FF E0 08 90 */	fmr f31, f1
/* 800793A4 00076304  3B E0 00 01 */	li r31, 1
/* 800793A8 00076308  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 800793AC 0007630C  40 82 00 2C */	bne lbl_800793D8
/* 800793B0 00076310  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 800793B4 00076314  40 82 00 24 */	bne lbl_800793D8
/* 800793B8 00076318  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 800793BC 0007631C  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 800793C0 00076320  3B E0 00 00 */	li r31, 0
/* 800793C4 00076324  D0 1E 03 10 */	stfs f0, 0x310(r30)
/* 800793C8 00076328  C0 03 00 04 */	lfs f0, 4(r3)
/* 800793CC 0007632C  D0 1E 03 14 */	stfs f0, 0x314(r30)
/* 800793D0 00076330  C0 03 00 08 */	lfs f0, 8(r3)
/* 800793D4 00076334  D0 1E 03 18 */	stfs f0, 0x318(r30)
lbl_800793D8:
/* 800793D8 00076338  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800793DC 0007633C  41 82 01 38 */	beq lbl_80079514
/* 800793E0 00076340  80 7E 03 9C */	lwz r3, 0x39c(r30)
/* 800793E4 00076344  80 1E 03 90 */	lwz r0, 0x390(r30)
/* 800793E8 00076348  7C 03 00 00 */	cmpw r3, r0
/* 800793EC 0007634C  40 80 01 28 */	bge lbl_80079514
/* 800793F0 00076350  C0 3E 03 1C */	lfs f1, 0x31c(r30)
/* 800793F4 00076354  C3 9E 00 58 */	lfs f28, 0x58(r30)
/* 800793F8 00076358  C3 BE 00 48 */	lfs f29, 0x48(r30)
/* 800793FC 0007635C  EC 41 00 72 */	fmuls f2, f1, f1
/* 80079400 00076360  C3 DE 00 38 */	lfs f30, 0x38(r30)
/* 80079404 00076364  C0 02 89 18 */	lfs f0, lbl_805AA638@sda21(r2)
/* 80079408 00076368  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8007940C 0007636C  C0 3E 03 20 */	lfs f1, 0x320(r30)
/* 80079410 00076370  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80079414 00076374  EC 21 00 72 */	fmuls f1, f1, f1
/* 80079418 00076378  C0 7E 03 24 */	lfs f3, 0x324(r30)
/* 8007941C 0007637C  EC 22 08 2A */	fadds f1, f2, f1
/* 80079420 00076380  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80079424 00076384  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80079428 00076388  EC 22 08 2A */	fadds f1, f2, f1
/* 8007942C 0007638C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079430 00076390  40 81 00 0C */	ble lbl_8007943C
/* 80079434 00076394  38 61 00 2C */	addi r3, r1, 0x2c
/* 80079438 00076398  48 29 B4 C1 */	bl Normalize__9CVector3fFv
lbl_8007943C:
/* 8007943C 0007639C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80079440 000763A0  80 1E 03 F8 */	lwz r0, 0x3f8(r30)
/* 80079444 000763A4  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80079448 000763A8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8007944C 000763AC  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80079450 000763B0  2C 00 00 02 */	cmpwi r0, 2
/* 80079454 000763B4  EC 1E 00 7A */	fmadds f0, f30, f1, f0
/* 80079458 000763B8  EC 3C 00 BA */	fmadds f1, f28, f2, f0
/* 8007945C 000763BC  41 82 00 60 */	beq lbl_800794BC
/* 80079460 000763C0  40 80 00 14 */	bge lbl_80079474
/* 80079464 000763C4  2C 00 00 00 */	cmpwi r0, 0
/* 80079468 000763C8  41 82 00 1C */	beq lbl_80079484
/* 8007946C 000763CC  40 80 00 24 */	bge lbl_80079490
/* 80079470 000763D0  48 00 00 A4 */	b lbl_80079514
lbl_80079474:
/* 80079474 000763D4  2C 00 00 04 */	cmpwi r0, 4
/* 80079478 000763D8  41 82 00 80 */	beq lbl_800794F8
/* 8007947C 000763DC  40 80 00 98 */	bge lbl_80079514
/* 80079480 000763E0  48 00 00 44 */	b lbl_800794C4
lbl_80079484:
/* 80079484 000763E4  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80079488 000763E8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007948C 000763EC  41 82 00 88 */	beq lbl_80079514
lbl_80079490:
/* 80079490 000763F0  C0 02 89 1C */	lfs f0, lbl_805AA63C@sda21(r2)
/* 80079494 000763F4  3B E0 00 00 */	li r31, 0
/* 80079498 000763F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007949C 000763FC  40 81 00 14 */	ble lbl_800794B0
/* 800794A0 00076400  38 00 00 02 */	li r0, 2
/* 800794A4 00076404  3B E0 00 01 */	li r31, 1
/* 800794A8 00076408  90 1E 03 F8 */	stw r0, 0x3f8(r30)
/* 800794AC 0007640C  48 00 00 68 */	b lbl_80079514
lbl_800794B0:
/* 800794B0 00076410  38 00 00 01 */	li r0, 1
/* 800794B4 00076414  90 1E 03 F8 */	stw r0, 0x3f8(r30)
/* 800794B8 00076418  48 00 00 5C */	b lbl_80079514
lbl_800794BC:
/* 800794BC 0007641C  38 00 00 03 */	li r0, 3
/* 800794C0 00076420  90 1E 03 F8 */	stw r0, 0x3f8(r30)
lbl_800794C4:
/* 800794C4 00076424  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 800794C8 00076428  3B E0 00 01 */	li r31, 1
/* 800794CC 0007642C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 800794D0 00076430  40 82 00 10 */	bne lbl_800794E0
/* 800794D4 00076434  38 00 00 00 */	li r0, 0
/* 800794D8 00076438  90 1E 03 F8 */	stw r0, 0x3f8(r30)
/* 800794DC 0007643C  48 00 00 38 */	b lbl_80079514
lbl_800794E0:
/* 800794E0 00076440  C0 02 89 20 */	lfs f0, lbl_805AA640@sda21(r2)
/* 800794E4 00076444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800794E8 00076448  40 81 00 2C */	ble lbl_80079514
/* 800794EC 0007644C  38 00 00 04 */	li r0, 4
/* 800794F0 00076450  90 1E 03 F8 */	stw r0, 0x3f8(r30)
/* 800794F4 00076454  48 00 00 20 */	b lbl_80079514
lbl_800794F8:
/* 800794F8 00076458  88 7E 03 28 */	lbz r3, 0x328(r30)
/* 800794FC 0007645C  38 00 00 01 */	li r0, 1
/* 80079500 00076460  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80079504 00076464  38 00 00 00 */	li r0, 0
/* 80079508 00076468  98 7E 03 28 */	stb r3, 0x328(r30)
/* 8007950C 0007646C  3B E0 00 00 */	li r31, 0
/* 80079510 00076470  90 1E 03 F8 */	stw r0, 0x3f8(r30)
lbl_80079514:
/* 80079514 00076474  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 80079518 00076478  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007951C 0007647C  40 82 00 E4 */	bne lbl_80079600
/* 80079520 00076480  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80079524 00076484  41 82 00 DC */	beq lbl_80079600
/* 80079528 00076488  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007952C 0007648C  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80079530 00076490  48 0B AB 49 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 80079534 00076494  81 83 00 00 */	lwz r12, 0(r3)
/* 80079538 00076498  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8007953C 0007649C  7D 89 03 A6 */	mtctr r12
/* 80079540 000764A0  4E 80 04 21 */	bctrl
/* 80079544 000764A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80079548 000764A8  41 82 00 B8 */	beq lbl_80079600
/* 8007954C 000764AC  C0 5E 02 E4 */	lfs f2, 0x2e4(r30)
/* 80079550 000764B0  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80079554 000764B4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80079558 000764B8  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8007955C 000764BC  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 80079560 000764C0  38 61 00 14 */	addi r3, r1, 0x14
/* 80079564 000764C4  EC 82 00 28 */	fsubs f4, f2, f0
/* 80079568 000764C8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8007956C 000764CC  C0 5E 02 E0 */	lfs f2, 0x2e0(r30)
/* 80079570 000764D0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80079574 000764D4  EC 63 08 28 */	fsubs f3, f3, f1
/* 80079578 000764D8  C0 22 89 24 */	lfs f1, lbl_805AA644@sda21(r2)
/* 8007957C 000764DC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80079580 000764E0  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 80079584 000764E4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80079588 000764E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8007958C 000764EC  48 29 69 D9 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 80079590 000764F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80079594 000764F4  40 82 00 6C */	bne lbl_80079600
/* 80079598 000764F8  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8007959C 000764FC  FC 20 F8 90 */	fmr f1, f31
/* 800795A0 00076500  C0 1E 04 3C */	lfs f0, 0x43c(r30)
/* 800795A4 00076504  7F C3 F3 78 */	mr r3, r30
/* 800795A8 00076508  C0 E5 00 08 */	lfs f7, 8(r5)
/* 800795AC 0007650C  38 81 00 20 */	addi r4, r1, 0x20
/* 800795B0 00076510  C1 25 00 00 */	lfs f9, 0(r5)
/* 800795B4 00076514  C1 05 00 04 */	lfs f8, 4(r5)
/* 800795B8 00076518  EC C7 00 32 */	fmuls f6, f7, f0
/* 800795BC 0007651C  C0 5E 04 38 */	lfs f2, 0x438(r30)
/* 800795C0 00076520  C0 1E 04 34 */	lfs f0, 0x434(r30)
/* 800795C4 00076524  C0 BE 05 64 */	lfs f5, 0x564(r30)
/* 800795C8 00076528  EC 88 00 B2 */	fmuls f4, f8, f2
/* 800795CC 0007652C  C0 7E 05 60 */	lfs f3, 0x560(r30)
/* 800795D0 00076530  EC 49 00 32 */	fmuls f2, f9, f0
/* 800795D4 00076534  C0 1E 05 5C */	lfs f0, 0x55c(r30)
/* 800795D8 00076538  EC A6 01 72 */	fmuls f5, f6, f5
/* 800795DC 0007653C  EC 64 00 F2 */	fmuls f3, f4, f3
/* 800795E0 00076540  EC 02 00 32 */	fmuls f0, f2, f0
/* 800795E4 00076544  D1 21 00 08 */	stfs f9, 8(r1)
/* 800795E8 00076548  D1 01 00 0C */	stfs f8, 0xc(r1)
/* 800795EC 0007654C  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 800795F0 00076550  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800795F4 00076554  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 800795F8 00076558  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 800795FC 0007655C  48 0A 18 7D */	bl MoveToOR__13CPhysicsActorFRC9CVector3ff
lbl_80079600:
/* 80079600 00076560  FC 20 F8 90 */	fmr f1, f31
/* 80079604 00076564  7F C3 F3 78 */	mr r3, r30
/* 80079608 00076568  38 9E 04 40 */	addi r4, r30, 0x440
/* 8007960C 0007656C  48 0A 18 09 */	bl RotateToOR__13CPhysicsActorFRC11CQuaternionf
/* 80079610 00076570  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80079614 00076574  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80079618 00076578  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8007961C 0007657C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80079620 00076580  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 80079624 00076584  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80079628 00076588  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 8007962C 0007658C  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80079630 00076590  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80079634 00076594  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80079638 00076598  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8007963C 0007659C  7C 08 03 A6 */	mtlr r0
/* 80079640 000765A0  38 21 00 80 */	addi r1, r1, 0x80
/* 80079644 000765A4  4E 80 00 20 */	blr

.global ApplyAnimationDeltas__10CBodyStateCFv
ApplyAnimationDeltas__10CBodyStateCFv:
/* 80079648 000765A8  38 60 00 01 */	li r3, 1
/* 8007964C 000765AC  4E 80 00 20 */	blr

.global CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 80079650 000765B0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80079654 000765B4  7C 08 02 A6 */	mflr r0
/* 80079658 000765B8  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007965C 000765BC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80079660 000765C0  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 80079664 000765C4  7C 7A 1B 78 */	mr r26, r3
/* 80079668 000765C8  7C 9B 23 78 */	mr r27, r4
/* 8007966C 000765CC  7C BC 2B 78 */	mr r28, r5
/* 80079670 000765D0  7C DD 33 78 */	mr r29, r6
/* 80079674 000765D4  C0 23 04 20 */	lfs f1, 0x420(r3)
/* 80079678 000765D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007967C 000765DC  4C 40 13 82 */	cror 2, 0, 2
/* 80079680 000765E0  40 82 02 14 */	bne lbl_80079894
/* 80079684 000765E4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 80079688 000765E8  7F A3 EB 78 */	mr r3, r29
/* 8007968C 000765EC  38 81 00 38 */	addi r4, r1, 0x38
/* 80079690 000765F0  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80079694 000765F4  4B FD 2E E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80079698 000765F8  7C 64 1B 78 */	mr r4, r3
/* 8007969C 000765FC  38 61 00 3C */	addi r3, r1, 0x3c
/* 800796A0 00076600  48 03 2C F5 */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 800796A4 00076604  83 E3 00 04 */	lwz r31, 4(r3)
/* 800796A8 00076608  28 1F 00 00 */	cmplwi r31, 0
/* 800796AC 0007660C  41 82 01 E8 */	beq lbl_80079894
/* 800796B0 00076610  C0 3F 02 A8 */	lfs f1, 0x2a8(r31)
/* 800796B4 00076614  3B C0 00 00 */	li r30, 0
/* 800796B8 00076618  C0 02 89 28 */	lfs f0, lbl_805AA648@sda21(r2)
/* 800796BC 0007661C  7F C3 F3 78 */	mr r3, r30
/* 800796C0 00076620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800796C4 00076624  40 80 00 14 */	bge lbl_800796D8
/* 800796C8 00076628  80 1C 00 00 */	lwz r0, 0(r28)
/* 800796CC 0007662C  2C 00 00 00 */	cmpwi r0, 0
/* 800796D0 00076630  41 82 00 08 */	beq lbl_800796D8
/* 800796D4 00076634  38 60 00 01 */	li r3, 1
lbl_800796D8:
/* 800796D8 00076638  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800796DC 0007663C  41 82 00 18 */	beq lbl_800796F4
/* 800796E0 00076640  C0 3C 00 54 */	lfs f1, 0x54(r28)
/* 800796E4 00076644  C0 02 89 2C */	lfs f0, lbl_805AA64C@sda21(r2)
/* 800796E8 00076648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800796EC 0007664C  40 81 00 08 */	ble lbl_800796F4
/* 800796F0 00076650  3B C0 00 01 */	li r30, 1
lbl_800796F4:
/* 800796F4 00076654  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 800796F8 00076658  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 800796FC 0007665C  40 82 00 0C */	bne lbl_80079708
/* 80079700 00076660  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80079704 00076664  41 82 01 90 */	beq lbl_80079894
lbl_80079708:
/* 80079708 00076668  7F 44 D3 78 */	mr r4, r26
/* 8007970C 0007666C  38 61 00 68 */	addi r3, r1, 0x68
/* 80079710 00076670  81 9A 00 00 */	lwz r12, 0(r26)
/* 80079714 00076674  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 80079718 00076678  7D 89 03 A6 */	mtctr r12
/* 8007971C 0007667C  4E 80 04 21 */	bctrl
/* 80079720 00076680  80 81 00 68 */	lwz r4, 0x68(r1)
/* 80079724 00076684  88 61 00 6C */	lbz r3, 0x6c(r1)
/* 80079728 00076688  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8007972C 0007668C  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80079730 00076690  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80079734 00076694  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80079738 00076698  88 01 00 80 */	lbz r0, 0x80(r1)
/* 8007973C 0007669C  90 81 00 84 */	stw r4, 0x84(r1)
/* 80079740 000766A0  98 61 00 88 */	stb r3, 0x88(r1)
/* 80079744 000766A4  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80079748 000766A8  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8007974C 000766AC  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80079750 000766B0  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80079754 000766B4  98 01 00 9C */	stb r0, 0x9c(r1)
/* 80079758 000766B8  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 8007975C 000766BC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079760 000766C0  41 82 00 14 */	beq lbl_80079774
/* 80079764 000766C4  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80079768 000766C8  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007976C 000766CC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80079770 000766D0  41 82 00 0C */	beq lbl_8007977C
lbl_80079774:
/* 80079774 000766D4  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80079778 000766D8  D0 01 00 8C */	stfs f0, 0x8c(r1)
lbl_8007977C:
/* 8007977C 000766DC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80079780 000766E0  41 82 00 7C */	beq lbl_800797FC
/* 80079784 000766E4  C0 5F 01 40 */	lfs f2, 0x140(r31)
/* 80079788 000766E8  3C 60 80 5A */	lis r3, skPassEverything__15CMaterialFilter@ha
/* 8007978C 000766EC  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80079790 000766F0  39 03 FD 18 */	addi r8, r3, skPassEverything__15CMaterialFilter@l
/* 80079794 000766F4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80079798 000766F8  FC 40 10 50 */	fneg f2, f2
/* 8007979C 000766FC  FC 20 08 50 */	fneg f1, f1
/* 800797A0 00076700  7F A3 EB 78 */	mr r3, r29
/* 800797A4 00076704  FC 00 00 50 */	fneg f0, f0
/* 800797A8 00076708  38 81 00 34 */	addi r4, r1, 0x34
/* 800797AC 0007670C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 800797B0 00076710  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800797B4 00076714  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800797B8 00076718  38 C1 00 24 */	addi r6, r1, 0x24
/* 800797BC 0007671C  38 E1 00 84 */	addi r7, r1, 0x84
/* 800797C0 00076720  39 21 00 44 */	addi r9, r1, 0x44
/* 800797C4 00076724  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 800797C8 00076728  A0 1A 00 08 */	lhz r0, 8(r26)
/* 800797CC 0007672C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 800797D0 00076730  A1 5F 00 08 */	lhz r10, 8(r31)
/* 800797D4 00076734  B0 01 00 20 */	sth r0, 0x20(r1)
/* 800797D8 00076738  B1 41 00 2C */	sth r10, 0x2c(r1)
/* 800797DC 0007673C  A0 1A 00 08 */	lhz r0, 8(r26)
/* 800797E0 00076740  B1 41 00 28 */	sth r10, 0x28(r1)
/* 800797E4 00076744  B0 01 00 30 */	sth r0, 0x30(r1)
/* 800797E8 00076748  B0 01 00 34 */	sth r0, 0x34(r1)
/* 800797EC 0007674C  4B FD 08 B5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 800797F0 00076750  C0 02 89 30 */	lfs f0, lbl_805AA650@sda21(r2)
/* 800797F4 00076754  D0 1F 02 A8 */	stfs f0, 0x2a8(r31)
/* 800797F8 00076758  48 00 00 94 */	b lbl_8007988C
lbl_800797FC:
/* 800797FC 0007675C  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 80079800 00076760  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079804 00076764  41 82 00 88 */	beq lbl_8007988C
/* 80079808 00076768  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 8007980C 0007676C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80079810 00076770  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80079814 00076774  40 82 00 78 */	bne lbl_8007988C
/* 80079818 00076778  80 AD 83 E0 */	lwz r5, lbl_805A6FA0@sda21(r13)
/* 8007981C 0007677C  38 60 00 00 */	li r3, 0
/* 80079820 00076780  38 80 00 01 */	li r4, 1
/* 80079824 00076784  48 31 06 D1 */	bl __shl2i
/* 80079828 00076788  39 40 00 00 */	li r10, 0
/* 8007982C 0007678C  38 00 00 03 */	li r0, 3
/* 80079830 00076790  90 81 00 54 */	stw r4, 0x54(r1)
/* 80079834 00076794  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80079838 00076798  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8007983C 0007679C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80079840 000767A0  90 61 00 50 */	stw r3, 0x50(r1)
/* 80079844 000767A4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80079848 000767A8  7F A3 EB 78 */	mr r3, r29
/* 8007984C 000767AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80079850 000767B0  91 41 00 5C */	stw r10, 0x5c(r1)
/* 80079854 000767B4  38 E1 00 84 */	addi r7, r1, 0x84
/* 80079858 000767B8  39 01 00 50 */	addi r8, r1, 0x50
/* 8007985C 000767BC  91 41 00 58 */	stw r10, 0x58(r1)
/* 80079860 000767C0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80079864 000767C4  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80079868 000767C8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8007986C 000767CC  A1 5F 00 08 */	lhz r10, 8(r31)
/* 80079870 000767D0  B0 01 00 08 */	sth r0, 8(r1)
/* 80079874 000767D4  B1 41 00 14 */	sth r10, 0x14(r1)
/* 80079878 000767D8  A0 1A 00 08 */	lhz r0, 8(r26)
/* 8007987C 000767DC  B1 41 00 10 */	sth r10, 0x10(r1)
/* 80079880 000767E0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80079884 000767E4  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80079888 000767E8  4B FD 08 19 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8007988C:
/* 8007988C 000767EC  C0 1A 04 24 */	lfs f0, 0x424(r26)
/* 80079890 000767F0  D0 1A 04 20 */	stfs f0, 0x420(r26)
lbl_80079894:
/* 80079894 000767F4  88 0D A2 70 */	lbz r0, lbl_805A8E30@sda21(r13)
/* 80079898 000767F8  7C 00 07 75 */	extsb. r0, r0
/* 8007989C 000767FC  40 82 00 E0 */	bne lbl_8007997C
/* 800798A0 00076800  38 00 00 00 */	li r0, 0
/* 800798A4 00076804  80 AD 84 1C */	lwz r5, lbl_805A6FDC@sda21(r13)
/* 800798A8 00076808  90 0D A2 7C */	stw r0, lbl_805A8E3C@sda21(r13)
/* 800798AC 0007680C  38 60 00 00 */	li r3, 0
/* 800798B0 00076810  38 80 00 01 */	li r4, 1
/* 800798B4 00076814  90 0D A2 78 */	stw r0, lbl_805A8E38@sda21(r13)
/* 800798B8 00076818  48 31 06 3D */	bl __shl2i
/* 800798BC 0007681C  80 0D A2 78 */	lwz r0, lbl_805A8E38@sda21(r13)
/* 800798C0 00076820  80 CD A2 7C */	lwz r6, lbl_805A8E3C@sda21(r13)
/* 800798C4 00076824  7C 00 1B 78 */	or r0, r0, r3
/* 800798C8 00076828  80 AD 84 20 */	lwz r5, lbl_805A6FE0@sda21(r13)
/* 800798CC 0007682C  7C C4 23 78 */	or r4, r6, r4
/* 800798D0 00076830  90 0D A2 78 */	stw r0, lbl_805A8E38@sda21(r13)
/* 800798D4 00076834  38 60 00 00 */	li r3, 0
/* 800798D8 00076838  90 8D A2 7C */	stw r4, lbl_805A8E3C@sda21(r13)
/* 800798DC 0007683C  38 80 00 01 */	li r4, 1
/* 800798E0 00076840  48 31 06 15 */	bl __shl2i
/* 800798E4 00076844  80 0D A2 78 */	lwz r0, lbl_805A8E38@sda21(r13)
/* 800798E8 00076848  80 CD A2 7C */	lwz r6, lbl_805A8E3C@sda21(r13)
/* 800798EC 0007684C  7C 00 1B 78 */	or r0, r0, r3
/* 800798F0 00076850  80 AD 84 24 */	lwz r5, lbl_805A6FE4@sda21(r13)
/* 800798F4 00076854  7C C4 23 78 */	or r4, r6, r4
/* 800798F8 00076858  90 0D A2 78 */	stw r0, lbl_805A8E38@sda21(r13)
/* 800798FC 0007685C  38 60 00 00 */	li r3, 0
/* 80079900 00076860  90 8D A2 7C */	stw r4, lbl_805A8E3C@sda21(r13)
/* 80079904 00076864  38 80 00 01 */	li r4, 1
/* 80079908 00076868  48 31 05 ED */	bl __shl2i
/* 8007990C 0007686C  80 0D A2 78 */	lwz r0, lbl_805A8E38@sda21(r13)
/* 80079910 00076870  80 CD A2 7C */	lwz r6, lbl_805A8E3C@sda21(r13)
/* 80079914 00076874  7C 00 1B 78 */	or r0, r0, r3
/* 80079918 00076878  80 AD 84 28 */	lwz r5, lbl_805A6FE8@sda21(r13)
/* 8007991C 0007687C  7C C4 23 78 */	or r4, r6, r4
/* 80079920 00076880  90 0D A2 78 */	stw r0, lbl_805A8E38@sda21(r13)
/* 80079924 00076884  38 60 00 00 */	li r3, 0
/* 80079928 00076888  90 8D A2 7C */	stw r4, lbl_805A8E3C@sda21(r13)
/* 8007992C 0007688C  38 80 00 01 */	li r4, 1
/* 80079930 00076890  48 31 05 C5 */	bl __shl2i
/* 80079934 00076894  80 0D A2 78 */	lwz r0, lbl_805A8E38@sda21(r13)
/* 80079938 00076898  80 CD A2 7C */	lwz r6, lbl_805A8E3C@sda21(r13)
/* 8007993C 0007689C  7C 00 1B 78 */	or r0, r0, r3
/* 80079940 000768A0  80 AD 84 2C */	lwz r5, lbl_805A6FEC@sda21(r13)
/* 80079944 000768A4  7C C4 23 78 */	or r4, r6, r4
/* 80079948 000768A8  90 0D A2 78 */	stw r0, lbl_805A8E38@sda21(r13)
/* 8007994C 000768AC  38 60 00 00 */	li r3, 0
/* 80079950 000768B0  90 8D A2 7C */	stw r4, lbl_805A8E3C@sda21(r13)
/* 80079954 000768B4  38 80 00 01 */	li r4, 1
/* 80079958 000768B8  48 31 05 9D */	bl __shl2i
/* 8007995C 000768BC  80 AD A2 78 */	lwz r5, lbl_805A8E38@sda21(r13)
/* 80079960 000768C0  38 00 00 01 */	li r0, 1
/* 80079964 000768C4  80 CD A2 7C */	lwz r6, lbl_805A8E3C@sda21(r13)
/* 80079968 000768C8  7C A3 1B 78 */	or r3, r5, r3
/* 8007996C 000768CC  98 0D A2 70 */	stb r0, lbl_805A8E30@sda21(r13)
/* 80079970 000768D0  7C C0 23 78 */	or r0, r6, r4
/* 80079974 000768D4  90 0D A2 7C */	stw r0, lbl_805A8E3C@sda21(r13)
/* 80079978 000768D8  90 6D A2 78 */	stw r3, lbl_805A8E38@sda21(r13)
lbl_8007997C:
/* 8007997C 000768DC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80079980 000768E0  38 BC 00 04 */	addi r5, r28, 4
/* 80079984 000768E4  80 CD A2 78 */	lwz r6, lbl_805A8E38@sda21(r13)
/* 80079988 000768E8  80 ED A2 7C */	lwz r7, lbl_805A8E3C@sda21(r13)
/* 8007998C 000768EC  7C 09 03 A6 */	mtctr r0
/* 80079990 000768F0  2C 00 00 00 */	cmpwi r0, 0
/* 80079994 000768F4  40 81 00 E4 */	ble lbl_80079A78
lbl_80079998:
/* 80079998 000768F8  81 05 00 38 */	lwz r8, 0x38(r5)
/* 8007999C 000768FC  38 80 00 00 */	li r4, 0
/* 800799A0 00076900  81 25 00 3C */	lwz r9, 0x3c(r5)
/* 800799A4 00076904  7C C0 40 38 */	and r0, r6, r8
/* 800799A8 00076908  7C E3 48 38 */	and r3, r7, r9
/* 800799AC 0007690C  7C 63 22 78 */	xor r3, r3, r4
/* 800799B0 00076910  7C 00 22 78 */	xor r0, r0, r4
/* 800799B4 00076914  7C 60 03 79 */	or. r0, r3, r0
/* 800799B8 00076918  41 82 00 08 */	beq lbl_800799C0
/* 800799BC 0007691C  38 80 00 01 */	li r4, 1
lbl_800799C0:
/* 800799C0 00076920  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800799C4 00076924  41 82 00 AC */	beq lbl_80079A70
/* 800799C8 00076928  3C 00 80 00 */	lis r0, 0x8000
/* 800799CC 0007692C  38 80 00 00 */	li r4, 0
/* 800799D0 00076930  7D 23 00 38 */	and r3, r9, r0
/* 800799D4 00076934  7D 00 20 38 */	and r0, r8, r4
/* 800799D8 00076938  7C 63 22 78 */	xor r3, r3, r4
/* 800799DC 0007693C  7C 00 22 78 */	xor r0, r0, r4
/* 800799E0 00076940  7C 60 03 79 */	or. r0, r3, r0
/* 800799E4 00076944  41 82 00 14 */	beq lbl_800799F8
/* 800799E8 00076948  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 800799EC 0007694C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800799F0 00076950  41 82 00 80 */	beq lbl_80079A70
/* 800799F4 00076954  48 00 00 68 */	b lbl_80079A5C
lbl_800799F8:
/* 800799F8 00076958  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 800799FC 0007695C  C0 BA 03 10 */	lfs f5, 0x310(r26)
/* 80079A00 00076960  FC 01 28 00 */	fcmpu cr0, f1, f5
/* 80079A04 00076964  40 82 00 1C */	bne lbl_80079A20
/* 80079A08 00076968  C0 1A 03 14 */	lfs f0, 0x314(r26)
/* 80079A0C 0007696C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80079A10 00076970  40 82 00 10 */	bne lbl_80079A20
/* 80079A14 00076974  C0 1A 03 18 */	lfs f0, 0x318(r26)
/* 80079A18 00076978  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80079A1C 0007697C  41 82 00 08 */	beq lbl_80079A24
lbl_80079A20:
/* 80079A20 00076980  38 80 00 01 */	li r4, 1
lbl_80079A24:
/* 80079A24 00076984  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80079A28 00076988  41 82 00 34 */	beq lbl_80079A5C
/* 80079A2C 0007698C  C0 25 00 4C */	lfs f1, 0x4c(r5)
/* 80079A30 00076990  C0 1A 03 14 */	lfs f0, 0x314(r26)
/* 80079A34 00076994  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 80079A38 00076998  EC 21 00 32 */	fmuls f1, f1, f0
/* 80079A3C 0007699C  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 80079A40 000769A0  C0 7A 03 18 */	lfs f3, 0x318(r26)
/* 80079A44 000769A4  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80079A48 000769A8  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80079A4C 000769AC  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80079A50 000769B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079A54 000769B4  4C 41 13 82 */	cror 2, 1, 2
/* 80079A58 000769B8  41 82 00 18 */	beq lbl_80079A70
lbl_80079A5C:
/* 80079A5C 000769BC  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 80079A60 000769C0  38 60 00 01 */	li r3, 1
/* 80079A64 000769C4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80079A68 000769C8  98 1A 03 28 */	stb r0, 0x328(r26)
/* 80079A6C 000769CC  48 00 00 20 */	b lbl_80079A8C
lbl_80079A70:
/* 80079A70 000769D0  38 A5 00 60 */	addi r5, r5, 0x60
/* 80079A74 000769D4  42 00 FF 24 */	bdnz lbl_80079998
lbl_80079A78:
/* 80079A78 000769D8  7F 43 D3 78 */	mr r3, r26
/* 80079A7C 000769DC  7F 64 DB 78 */	mr r4, r27
/* 80079A80 000769E0  7F 85 E3 78 */	mr r5, r28
/* 80079A84 000769E4  7F A6 EB 78 */	mr r6, r29
/* 80079A88 000769E8  48 0A 0F 41 */	bl CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
lbl_80079A8C:
/* 80079A8C 000769EC  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 80079A90 000769F0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80079A94 000769F4  7C 08 03 A6 */	mtlr r0
/* 80079A98 000769F8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80079A9C 000769FC  4E 80 00 20 */	blr

.global Touch__10CPatternedFR6CActorR13CStateManager
Touch__10CPatternedFR6CActorR13CStateManager:
/* 80079AA0 00076A00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80079AA4 00076A04  7C 08 02 A6 */	mflr r0
/* 80079AA8 00076A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80079AAC 00076A0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80079AB0 00076A10  7C BF 2B 78 */	mr r31, r5
/* 80079AB4 00076A14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80079AB8 00076A18  7C 7E 1B 78 */	mr r30, r3
/* 80079ABC 00076A1C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80079AC0 00076A20  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079AC4 00076A24  41 82 00 3C */	beq lbl_80079B00
/* 80079AC8 00076A28  38 61 00 08 */	addi r3, r1, 8
/* 80079ACC 00076A2C  48 03 3C AD */	bl "__ct__29TCastToPtr<15CGameProjectile>FR7CEntity"
/* 80079AD0 00076A30  80 83 00 04 */	lwz r4, 4(r3)
/* 80079AD4 00076A34  28 04 00 00 */	cmplwi r4, 0
/* 80079AD8 00076A38  41 82 00 28 */	beq lbl_80079B00
/* 80079ADC 00076A3C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80079AE0 00076A40  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 80079AE4 00076A44  A0 03 00 08 */	lhz r0, 8(r3)
/* 80079AE8 00076A48  7C 04 00 40 */	cmplw r4, r0
/* 80079AEC 00076A4C  40 82 00 14 */	bne lbl_80079B00
/* 80079AF0 00076A50  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80079AF4 00076A54  38 60 00 01 */	li r3, 1
/* 80079AF8 00076A58  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80079AFC 00076A5C  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_80079B00:
/* 80079B00 00076A60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80079B04 00076A64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80079B08 00076A68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80079B0C 00076A6C  7C 08 03 A6 */	mtlr r0
/* 80079B10 00076A70  38 21 00 20 */	addi r1, r1, 0x20
/* 80079B14 00076A74  4E 80 00 20 */	blr

.global Think__10CPatternedFfR13CStateManager
Think__10CPatternedFfR13CStateManager:
/* 80079B18 00076A78  94 21 FE 10 */	stwu r1, -0x1f0(r1)
/* 80079B1C 00076A7C  7C 08 02 A6 */	mflr r0
/* 80079B20 00076A80  90 01 01 F4 */	stw r0, 0x1f4(r1)
/* 80079B24 00076A84  DB E1 01 E0 */	stfd f31, 0x1e0(r1)
/* 80079B28 00076A88  F3 E1 01 E8 */	psq_st f31, 488(r1), 0, qr0
/* 80079B2C 00076A8C  DB C1 01 D0 */	stfd f30, 0x1d0(r1)
/* 80079B30 00076A90  F3 C1 01 D8 */	psq_st f30, 472(r1), 0, qr0
/* 80079B34 00076A94  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 80079B38 00076A98  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 80079B3C 00076A9C  93 A1 01 C4 */	stw r29, 0x1c4(r1)
/* 80079B40 00076AA0  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80079B44 00076AA4  FF E0 08 90 */	fmr f31, f1
/* 80079B48 00076AA8  7C 7E 1B 78 */	mr r30, r3
/* 80079B4C 00076AAC  7C 9F 23 78 */	mr r31, r4
/* 80079B50 00076AB0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80079B54 00076AB4  41 82 08 D4 */	beq lbl_8007A428
/* 80079B58 00076AB8  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80079B5C 00076ABC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80079B60 00076AC0  41 82 00 24 */	beq lbl_80079B84
/* 80079B64 00076AC4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80079B68 00076AC8  48 0C 05 65 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80079B6C 00076ACC  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80079B70 00076AD0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80079B74 00076AD4  7C 00 00 26 */	mfcr r0
/* 80079B78 00076AD8  7F C3 F3 78 */	mr r3, r30
/* 80079B7C 00076ADC  54 04 1F FE */	rlwinm r4, r0, 3, 0x1f, 0x1f
/* 80079B80 00076AE0  4B FF DC D5 */	bl UpdateThermalFrozenState__10CPatternedFb
lbl_80079B84:
/* 80079B84 00076AE4  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80079B88 00076AE8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80079B8C 00076AEC  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 80079B90 00076AF0  28 00 00 00 */	cmplwi r0, 0
/* 80079B94 00076AF4  41 82 00 14 */	beq lbl_80079BA8
/* 80079B98 00076AF8  80 7E 05 10 */	lwz r3, 0x510(r30)
/* 80079B9C 00076AFC  FC 20 F8 90 */	fmr f1, f31
/* 80079BA0 00076B00  80 63 00 00 */	lwz r3, 0(r3)
/* 80079BA4 00076B04  48 2D DD C9 */	bl Update__18CVertexMorphEffectFf
lbl_80079BA8:
/* 80079BA8 00076B08  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80079BAC 00076B0C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80079BB0 00076B10  41 82 00 28 */	beq lbl_80079BD8
/* 80079BB4 00076B14  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80079BB8 00076B18  48 0C 05 15 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80079BBC 00076B1C  C0 02 89 34 */	lfs f0, lbl_805AA654@sda21(r2)
/* 80079BC0 00076B20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079BC4 00076B24  40 81 00 14 */	ble lbl_80079BD8
/* 80079BC8 00076B28  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80079BCC 00076B2C  38 60 00 01 */	li r3, 1
/* 80079BD0 00076B30  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80079BD4 00076B34  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_80079BD8:
/* 80079BD8 00076B38  88 7E 04 00 */	lbz r3, 0x400(r30)
/* 80079BDC 00076B3C  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80079BE0 00076B40  40 82 01 1C */	bne lbl_80079CFC
/* 80079BE4 00076B44  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80079BE8 00076B48  40 82 00 0C */	bne lbl_80079BF4
/* 80079BEC 00076B4C  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80079BF0 00076B50  41 82 00 84 */	beq lbl_80079C74
lbl_80079BF4:
/* 80079BF4 00076B54  C0 3E 03 E0 */	lfs f1, 0x3e0(r30)
/* 80079BF8 00076B58  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80079BFC 00076B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079C00 00076B60  4C 40 13 82 */	cror 2, 0, 2
/* 80079C04 00076B64  40 82 00 70 */	bne lbl_80079C74
/* 80079C08 00076B68  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80079C0C 00076B6C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80079C10 00076B70  41 82 00 34 */	beq lbl_80079C44
/* 80079C14 00076B74  7F C3 F3 78 */	mr r3, r30
/* 80079C18 00076B78  7F E5 FB 78 */	mr r5, r31
/* 80079C1C 00076B7C  38 80 00 15 */	li r4, 0x15
/* 80079C20 00076B80  38 C0 FF FF */	li r6, -1
/* 80079C24 00076B84  4B FD 74 9D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80079C28 00076B88  7F C3 F3 78 */	mr r3, r30
/* 80079C2C 00076B8C  7F E4 FB 78 */	mr r4, r31
/* 80079C30 00076B90  81 9E 00 00 */	lwz r12, 0(r30)
/* 80079C34 00076B94  81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 80079C38 00076B98  7D 89 03 A6 */	mtctr r12
/* 80079C3C 00076B9C  4E 80 04 21 */	bctrl
/* 80079C40 00076BA0  48 00 07 E8 */	b lbl_8007A428
lbl_80079C44:
/* 80079C44 00076BA4  7F C3 F3 78 */	mr r3, r30
/* 80079C48 00076BA8  7F E5 FB 78 */	mr r5, r31
/* 80079C4C 00076BAC  38 80 00 15 */	li r4, 0x15
/* 80079C50 00076BB0  38 C0 FF FF */	li r6, -1
/* 80079C54 00076BB4  4B FD 74 6D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80079C58 00076BB8  7F C3 F3 78 */	mr r3, r30
/* 80079C5C 00076BBC  7F E4 FB 78 */	mr r4, r31
/* 80079C60 00076BC0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80079C64 00076BC4  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80079C68 00076BC8  7D 89 03 A6 */	mtctr r12
/* 80079C6C 00076BCC  4E 80 04 21 */	bctrl
/* 80079C70 00076BD0  48 00 07 B8 */	b lbl_8007A428
lbl_80079C74:
/* 80079C74 00076BD4  C0 1E 03 E0 */	lfs f0, 0x3e0(r30)
/* 80079C78 00076BD8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80079C7C 00076BDC  D0 1E 03 E0 */	stfs f0, 0x3e0(r30)
/* 80079C80 00076BE0  88 1E 04 03 */	lbz r0, 0x403(r30)
/* 80079C84 00076BE4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80079C88 00076BE8  41 82 00 74 */	beq lbl_80079CFC
/* 80079C8C 00076BEC  38 7E 03 30 */	addi r3, r30, 0x330
/* 80079C90 00076BF0  48 00 5F 0D */	bl GetName__18CStateMachineStateCFv
/* 80079C94 00076BF4  28 03 00 00 */	cmplwi r3, 0
/* 80079C98 00076BF8  41 82 00 64 */	beq lbl_80079CFC
/* 80079C9C 00076BFC  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 80079CA0 00076C00  38 61 00 80 */	addi r3, r1, 0x80
/* 80079CA4 00076C04  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 80079CA8 00076C08  38 84 00 1A */	addi r4, r4, 0x1a
/* 80079CAC 00076C0C  4B F8 B0 0D */	bl string_l__4rstlFPCc
/* 80079CB0 00076C10  38 7E 03 30 */	addi r3, r30, 0x330
/* 80079CB4 00076C14  48 00 5E E9 */	bl GetName__18CStateMachineStateCFv
/* 80079CB8 00076C18  38 81 00 80 */	addi r4, r1, 0x80
/* 80079CBC 00076C1C  48 00 07 99 */	bl AreStateStringsEqual__10CPatternedFPCcPCc
/* 80079CC0 00076C20  7C 7D 1B 78 */	mr r29, r3
/* 80079CC4 00076C24  38 61 00 80 */	addi r3, r1, 0x80
/* 80079CC8 00076C28  48 2C 3E 19 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80079CCC 00076C2C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80079CD0 00076C30  41 82 00 2C */	beq lbl_80079CFC
/* 80079CD4 00076C34  C0 3E 03 38 */	lfs f1, 0x338(r30)
/* 80079CD8 00076C38  C0 02 89 38 */	lfs f0, lbl_805AA658@sda21(r2)
/* 80079CDC 00076C3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079CE0 00076C40  40 81 00 1C */	ble lbl_80079CFC
/* 80079CE4 00076C44  7F C3 F3 78 */	mr r3, r30
/* 80079CE8 00076C48  7F E4 FB 78 */	mr r4, r31
/* 80079CEC 00076C4C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80079CF0 00076C50  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80079CF4 00076C54  7D 89 03 A6 */	mtctr r12
/* 80079CF8 00076C58  4E 80 04 21 */	bctrl
lbl_80079CFC:
/* 80079CFC 00076C5C  FC 20 F8 90 */	fmr f1, f31
/* 80079D00 00076C60  7F C3 F3 78 */	mr r3, r30
/* 80079D04 00076C64  7F E4 FB 78 */	mr r4, r31
/* 80079D08 00076C68  48 00 09 85 */	bl UpdateAlphaDelta__10CPatternedFfR13CStateManager
/* 80079D0C 00076C6C  7F C3 F3 78 */	mr r3, r30
/* 80079D10 00076C70  7F E4 FB 78 */	mr r4, r31
/* 80079D14 00076C74  81 9E 00 00 */	lwz r12, 0(r30)
/* 80079D18 00076C78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80079D1C 00076C7C  7D 89 03 A6 */	mtctr r12
/* 80079D20 00076C80  4E 80 04 21 */	bctrl
/* 80079D24 00076C84  C0 03 00 00 */	lfs f0, 0(r3)
/* 80079D28 00076C88  D0 1E 03 E4 */	stfs f0, 0x3e4(r30)
/* 80079D2C 00076C8C  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 80079D30 00076C90  28 00 00 00 */	cmplwi r0, 0
/* 80079D34 00076C94  40 82 00 40 */	bne lbl_80079D74
/* 80079D38 00076C98  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 80079D3C 00076C9C  38 61 00 70 */	addi r3, r1, 0x70
/* 80079D40 00076CA0  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 80079D44 00076CA4  38 84 00 1F */	addi r4, r4, 0x1f
/* 80079D48 00076CA8  4B F8 AF 71 */	bl string_l__4rstlFPCc
/* 80079D4C 00076CAC  7F C3 F3 78 */	mr r3, r30
/* 80079D50 00076CB0  48 02 8B A9 */	bl GetStateMachine__3CAiFv
/* 80079D54 00076CB4  7C 66 1B 78 */	mr r6, r3
/* 80079D58 00076CB8  7F E4 FB 78 */	mr r4, r31
/* 80079D5C 00076CBC  7F C5 F3 78 */	mr r5, r30
/* 80079D60 00076CC0  38 7E 03 30 */	addi r3, r30, 0x330
/* 80079D64 00076CC4  38 E1 00 70 */	addi r7, r1, 0x70
/* 80079D68 00076CC8  48 00 5E 9D */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80079D6C 00076CCC  38 61 00 70 */	addi r3, r1, 0x70
/* 80079D70 00076CD0  48 2C 3D 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80079D74:
/* 80079D74 00076CD4  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80079D78 00076CD8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80079D7C 00076CDC  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80079D80 00076CE0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80079D84 00076CE4  C0 7E 04 E8 */	lfs f3, 0x4e8(r30)
/* 80079D88 00076CE8  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80079D8C 00076CEC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079D90 00076CF0  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80079D94 00076CF4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80079D98 00076CF8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80079D9C 00076CFC  EC 61 00 28 */	fsubs f3, f1, f0
/* 80079DA0 00076D00  40 82 00 08 */	bne lbl_80079DA8
/* 80079DA4 00076D04  C0 62 89 08 */	lfs f3, lbl_805AA628@sda21(r2)
lbl_80079DA8:
/* 80079DA8 00076D08  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80079DAC 00076D0C  C0 02 89 18 */	lfs f0, lbl_805AA638@sda21(r2)
/* 80079DB0 00076D10  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80079DB4 00076D14  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80079DB8 00076D18  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80079DBC 00076D1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80079DC0 00076D20  40 81 00 14 */	ble lbl_80079DD4
/* 80079DC4 00076D24  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80079DC8 00076D28  EC 00 F8 2A */	fadds f0, f0, f31
/* 80079DCC 00076D2C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80079DD0 00076D30  48 00 00 0C */	b lbl_80079DDC
lbl_80079DD4:
/* 80079DD4 00076D34  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 80079DD8 00076D38  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
lbl_80079DDC:
/* 80079DDC 00076D3C  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 80079DE0 00076D40  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80079DE4 00076D44  41 82 01 C4 */	beq lbl_80079FA8
/* 80079DE8 00076D48  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 80079DEC 00076D4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80079DF0 00076D50  40 82 00 44 */	bne lbl_80079E34
/* 80079DF4 00076D54  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80079DF8 00076D58  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80079DFC 00076D5C  41 82 00 38 */	beq lbl_80079E34
/* 80079E00 00076D60  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80079E04 00076D64  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80079E08 00076D68  C0 42 89 10 */	lfs f2, lbl_805AA630@sda21(r2)
/* 80079E0C 00076D6C  48 29 87 39 */	bl Range__9CRandom16Fff
/* 80079E10 00076D70  81 9E 00 00 */	lwz r12, 0(r30)
/* 80079E14 00076D74  7F C3 F3 78 */	mr r3, r30
/* 80079E18 00076D78  C0 02 89 10 */	lfs f0, lbl_805AA630@sda21(r2)
/* 80079E1C 00076D7C  7F E4 FB 78 */	mr r4, r31
/* 80079E20 00076D80  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 80079E24 00076D84  EC 20 08 2A */	fadds f1, f0, f1
/* 80079E28 00076D88  C0 42 89 3C */	lfs f2, lbl_805AA65C@sda21(r2)
/* 80079E2C 00076D8C  7D 89 03 A6 */	mtctr r12
/* 80079E30 00076D90  4E 80 04 21 */	bctrl
lbl_80079E34:
/* 80079E34 00076D94  88 9E 04 01 */	lbz r4, 0x401(r30)
/* 80079E38 00076D98  38 60 00 00 */	li r3, 0
/* 80079E3C 00076D9C  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 80079E40 00076DA0  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80079E44 00076DA4  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80079E48 00076DA8  98 1E 04 02 */	stb r0, 0x402(r30)
/* 80079E4C 00076DAC  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 80079E50 00076DB0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80079E54 00076DB4  98 1E 04 01 */	stb r0, 0x401(r30)
/* 80079E58 00076DB8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80079E5C 00076DBC  C0 03 03 24 */	lfs f0, 0x324(r3)
/* 80079E60 00076DC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80079E64 00076DC4  40 81 01 20 */	ble lbl_80079F84
/* 80079E68 00076DC8  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 80079E6C 00076DCC  7F C4 F3 78 */	mr r4, r30
/* 80079E70 00076DD0  48 16 B3 61 */	bl LoadAndStartElectric__20CActorModelParticlesFR6CActor
/* 80079E74 00076DD4  C0 5E 03 F0 */	lfs f2, 0x3f0(r30)
/* 80079E78 00076DD8  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80079E7C 00076DDC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80079E80 00076DE0  40 81 01 28 */	ble lbl_80079FA8
/* 80079E84 00076DE4  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80079E88 00076DE8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079E8C 00076DEC  41 82 01 1C */	beq lbl_80079FA8
/* 80079E90 00076DF0  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 80079E94 00076DF4  38 80 00 00 */	li r4, 0
/* 80079E98 00076DF8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80079E9C 00076DFC  38 E0 00 02 */	li r7, 2
/* 80079EA0 00076E00  98 01 00 3C */	stb r0, 0x3c(r1)
/* 80079EA4 00076E04  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80079EA8 00076E08  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 80079EAC 00076E0C  FC 00 10 18 */	frsp f0, f2
/* 80079EB0 00076E10  88 01 01 4C */	lbz r0, 0x14c(r1)
/* 80079EB4 00076E14  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80079EB8 00076E18  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 80079EBC 00076E1C  98 61 00 3C */	stb r3, 0x3c(r1)
/* 80079EC0 00076E20  50 86 2E B4 */	rlwimi r6, r4, 5, 0x1a, 0x1a
/* 80079EC4 00076E24  80 AD 83 E0 */	lwz r5, lbl_805A6FA0@sda21(r13)
/* 80079EC8 00076E28  38 60 00 00 */	li r3, 0
/* 80079ECC 00076E2C  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80079ED0 00076E30  38 80 00 01 */	li r4, 1
/* 80079ED4 00076E34  98 C1 00 3C */	stb r6, 0x3c(r1)
/* 80079ED8 00076E38  90 E1 01 34 */	stw r7, 0x134(r1)
/* 80079EDC 00076E3C  98 C1 01 38 */	stb r6, 0x138(r1)
/* 80079EE0 00076E40  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 80079EE4 00076E44  D0 41 01 40 */	stfs f2, 0x140(r1)
/* 80079EE8 00076E48  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 80079EEC 00076E4C  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 80079EF0 00076E50  98 01 01 4C */	stb r0, 0x14c(r1)
/* 80079EF4 00076E54  90 E1 01 6C */	stw r7, 0x16c(r1)
/* 80079EF8 00076E58  98 C1 01 70 */	stb r6, 0x170(r1)
/* 80079EFC 00076E5C  D0 41 01 74 */	stfs f2, 0x174(r1)
/* 80079F00 00076E60  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80079F04 00076E64  D0 21 01 7C */	stfs f1, 0x17c(r1)
/* 80079F08 00076E68  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 80079F0C 00076E6C  98 01 01 84 */	stb r0, 0x184(r1)
/* 80079F10 00076E70  48 30 FF E5 */	bl __shl2i
/* 80079F14 00076E74  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 80079F18 00076E78  38 C0 00 00 */	li r6, 0
/* 80079F1C 00076E7C  38 00 00 03 */	li r0, 3
/* 80079F20 00076E80  90 81 01 04 */	stw r4, 0x104(r1)
/* 80079F24 00076E84  FC 20 F8 90 */	fmr f1, f31
/* 80079F28 00076E88  38 81 01 6C */	addi r4, r1, 0x16c
/* 80079F2C 00076E8C  90 61 01 00 */	stw r3, 0x100(r1)
/* 80079F30 00076E90  38 61 01 18 */	addi r3, r1, 0x118
/* 80079F34 00076E94  90 C1 01 0C */	stw r6, 0x10c(r1)
/* 80079F38 00076E98  90 C1 01 08 */	stw r6, 0x108(r1)
/* 80079F3C 00076E9C  90 01 01 10 */	stw r0, 0x110(r1)
/* 80079F40 00076EA0  B0 A1 00 20 */	sth r5, 0x20(r1)
/* 80079F44 00076EA4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80079F48 00076EA8  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 80079F4C 00076EAC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80079F50 00076EB0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80079F54 00076EB4  B0 A1 00 2C */	sth r5, 0x2c(r1)
/* 80079F58 00076EB8  48 04 94 F1 */	bl __ct__11CDamageInfoFRC11CDamageInfof
/* 80079F5C 00076EBC  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80079F60 00076EC0  7F E3 FB 78 */	mr r3, r31
/* 80079F64 00076EC4  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80079F68 00076EC8  38 A1 00 28 */	addi r5, r1, 0x28
/* 80079F6C 00076ECC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80079F70 00076ED0  38 C1 00 20 */	addi r6, r1, 0x20
/* 80079F74 00076ED4  38 E1 01 18 */	addi r7, r1, 0x118
/* 80079F78 00076ED8  39 01 01 00 */	addi r8, r1, 0x100
/* 80079F7C 00076EDC  4B FD 01 25 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 80079F80 00076EE0  48 00 00 28 */	b lbl_80079FA8
lbl_80079F84:
/* 80079F84 00076EE4  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 80079F88 00076EE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80079F8C 00076EEC  41 82 00 1C */	beq lbl_80079FA8
/* 80079F90 00076EF0  D0 3E 03 F0 */	stfs f1, 0x3f0(r30)
/* 80079F94 00076EF4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80079F98 00076EF8  48 0B FF 75 */	bl StopElectrocution__15CBodyControllerFv
/* 80079F9C 00076EFC  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 80079FA0 00076F00  7F C4 F3 78 */	mr r4, r30
/* 80079FA4 00076F04  48 16 B1 AD */	bl StopElectric__20CActorModelParticlesFR5CActor
lbl_80079FA8:
/* 80079FA8 00076F08  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80079FAC 00076F0C  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80079FB0 00076F10  C0 03 03 20 */	lfs f0, 0x320(r3)
/* 80079FB4 00076F14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80079FB8 00076F18  40 81 01 18 */	ble lbl_8007A0D0
/* 80079FBC 00076F1C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80079FC0 00076F20  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80079FC4 00076F24  41 82 01 38 */	beq lbl_8007A0FC
/* 80079FC8 00076F28  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 80079FCC 00076F2C  7F C4 F3 78 */	mr r4, r30
/* 80079FD0 00076F30  48 16 B1 21 */	bl LightDudeOnFire__20CActorModelParticlesFR5CActor
/* 80079FD4 00076F34  88 01 00 34 */	lbz r0, 0x34(r1)
/* 80079FD8 00076F38  38 80 00 00 */	li r4, 0
/* 80079FDC 00076F3C  C0 5E 03 EC */	lfs f2, 0x3ec(r30)
/* 80079FE0 00076F40  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80079FE4 00076F44  98 01 00 34 */	stb r0, 0x34(r1)
/* 80079FE8 00076F48  38 E0 00 03 */	li r7, 3
/* 80079FEC 00076F4C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80079FF0 00076F50  FC 00 10 18 */	frsp f0, f2
/* 80079FF4 00076F54  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 80079FF8 00076F58  50 83 36 72 */	rlwimi r3, r4, 6, 0x19, 0x19
/* 80079FFC 00076F5C  88 01 00 FC */	lbz r0, 0xfc(r1)
/* 8007A000 00076F60  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8007A004 00076F64  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 8007A008 00076F68  50 86 2E B4 */	rlwimi r6, r4, 5, 0x1a, 0x1a
/* 8007A00C 00076F6C  98 61 00 34 */	stb r3, 0x34(r1)
/* 8007A010 00076F70  80 AD 83 E0 */	lwz r5, lbl_805A6FA0@sda21(r13)
/* 8007A014 00076F74  38 60 00 00 */	li r3, 0
/* 8007A018 00076F78  90 E1 00 30 */	stw r7, 0x30(r1)
/* 8007A01C 00076F7C  38 80 00 01 */	li r4, 1
/* 8007A020 00076F80  98 C1 00 34 */	stb r6, 0x34(r1)
/* 8007A024 00076F84  90 E1 00 E4 */	stw r7, 0xe4(r1)
/* 8007A028 00076F88  98 C1 00 E8 */	stb r6, 0xe8(r1)
/* 8007A02C 00076F8C  D0 41 00 EC */	stfs f2, 0xec(r1)
/* 8007A030 00076F90  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 8007A034 00076F94  D0 21 00 F4 */	stfs f1, 0xf4(r1)
/* 8007A038 00076F98  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 8007A03C 00076F9C  98 01 00 FC */	stb r0, 0xfc(r1)
/* 8007A040 00076FA0  90 E1 01 50 */	stw r7, 0x150(r1)
/* 8007A044 00076FA4  98 C1 01 54 */	stb r6, 0x154(r1)
/* 8007A048 00076FA8  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 8007A04C 00076FAC  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 8007A050 00076FB0  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 8007A054 00076FB4  D0 21 01 64 */	stfs f1, 0x164(r1)
/* 8007A058 00076FB8  98 01 01 68 */	stb r0, 0x168(r1)
/* 8007A05C 00076FBC  48 30 FE 99 */	bl __shl2i
/* 8007A060 00076FC0  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 8007A064 00076FC4  38 C0 00 00 */	li r6, 0
/* 8007A068 00076FC8  38 00 00 03 */	li r0, 3
/* 8007A06C 00076FCC  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 8007A070 00076FD0  FC 20 F8 90 */	fmr f1, f31
/* 8007A074 00076FD4  38 81 01 50 */	addi r4, r1, 0x150
/* 8007A078 00076FD8  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 8007A07C 00076FDC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8007A080 00076FE0  90 C1 00 BC */	stw r6, 0xbc(r1)
/* 8007A084 00076FE4  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 8007A088 00076FE8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 8007A08C 00076FEC  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8007A090 00076FF0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8007A094 00076FF4  B0 A1 00 08 */	sth r5, 8(r1)
/* 8007A098 00076FF8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8007A09C 00076FFC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8007A0A0 00077000  B0 A1 00 1C */	sth r5, 0x1c(r1)
/* 8007A0A4 00077004  48 04 93 A5 */	bl __ct__11CDamageInfoFRC11CDamageInfof
/* 8007A0A8 00077008  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007A0AC 0007700C  7F E3 FB 78 */	mr r3, r31
/* 8007A0B0 00077010  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 8007A0B4 00077014  38 A1 00 18 */	addi r5, r1, 0x18
/* 8007A0B8 00077018  38 81 00 1C */	addi r4, r1, 0x1c
/* 8007A0BC 0007701C  38 C1 00 10 */	addi r6, r1, 0x10
/* 8007A0C0 00077020  38 E1 00 C8 */	addi r7, r1, 0xc8
/* 8007A0C4 00077024  39 01 00 B0 */	addi r8, r1, 0xb0
/* 8007A0C8 00077028  4B FC FF D9 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8007A0CC 0007702C  48 00 00 30 */	b lbl_8007A0FC
lbl_8007A0D0:
/* 8007A0D0 00077030  C0 1E 03 EC */	lfs f0, 0x3ec(r30)
/* 8007A0D4 00077034  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007A0D8 00077038  40 81 00 08 */	ble lbl_8007A0E0
/* 8007A0DC 0007703C  D0 3E 03 EC */	stfs f1, 0x3ec(r30)
lbl_8007A0E0:
/* 8007A0E0 00077040  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A0E4 00077044  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007A0E8 00077048  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007A0EC 0007704C  41 82 00 10 */	beq lbl_8007A0FC
/* 8007A0F0 00077050  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 8007A0F4 00077054  7F C4 F3 78 */	mr r4, r30
/* 8007A0F8 00077058  48 16 AF 4D */	bl StopThermalHotParticles__20CActorModelParticlesFR5CActor
lbl_8007A0FC:
/* 8007A0FC 0007705C  88 7E 04 01 */	lbz r3, 0x401(r30)
/* 8007A100 00077060  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 8007A104 00077064  40 82 00 0C */	bne lbl_8007A110
/* 8007A108 00077068  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8007A10C 0007706C  41 82 00 0C */	beq lbl_8007A118
lbl_8007A110:
/* 8007A110 00077070  C0 02 89 14 */	lfs f0, lbl_805AA634@sda21(r2)
/* 8007A114 00077074  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
lbl_8007A118:
/* 8007A118 00077078  88 9E 04 01 */	lbz r4, 0x401(r30)
/* 8007A11C 0007707C  54 80 FF FF */	rlwinm. r0, r4, 0x1f, 0x1f, 0x1f
/* 8007A120 00077080  41 82 00 48 */	beq lbl_8007A168
/* 8007A124 00077084  38 00 00 00 */	li r0, 0
/* 8007A128 00077088  7F C3 F3 78 */	mr r3, r30
/* 8007A12C 0007708C  50 04 0F BC */	rlwimi r4, r0, 1, 0x1e, 0x1e
/* 8007A130 00077090  38 A1 00 64 */	addi r5, r1, 0x64
/* 8007A134 00077094  98 9E 04 01 */	stb r4, 0x401(r30)
/* 8007A138 00077098  7F E4 FB 78 */	mr r4, r31
/* 8007A13C 0007709C  38 C0 00 14 */	li r6, 0x14
/* 8007A140 000770A0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8007A144 000770A4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8007A148 000770A8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8007A14C 000770AC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8007A150 000770B0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8007A154 000770B4  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8007A158 000770B8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A15C 000770BC  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8007A160 000770C0  7D 89 03 A6 */	mtctr r12
/* 8007A164 000770C4  4E 80 04 21 */	bctrl
lbl_8007A168:
/* 8007A168 000770C8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007A16C 000770CC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007A170 000770D0  41 82 00 0C */	beq lbl_8007A17C
/* 8007A174 000770D4  FF C0 F8 90 */	fmr f30, f31
/* 8007A178 000770D8  48 00 00 10 */	b lbl_8007A188
lbl_8007A17C:
/* 8007A17C 000770DC  7F C3 F3 78 */	mr r3, r30
/* 8007A180 000770E0  4B FF E9 09 */	bl CalcDyingThinkRate__10CPatternedFv
/* 8007A184 000770E4  EF DF 00 72 */	fmuls f30, f31, f1
lbl_8007A188:
/* 8007A188 000770E8  FC 20 F0 90 */	fmr f1, f30
/* 8007A18C 000770EC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A190 000770F0  7F E4 FB 78 */	mr r4, r31
/* 8007A194 000770F4  48 0C 0A 51 */	bl Update__15CBodyControllerFfR13CStateManager
/* 8007A198 000770F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A19C 000770FC  C0 3E 03 B4 */	lfs f1, 0x3b4(r30)
/* 8007A1A0 00077100  48 0C 06 C1 */	bl MultiplyPlaybackRate__15CBodyControllerFf
/* 8007A1A4 00077104  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A1A8 00077108  FC 20 F0 90 */	fmr f1, f30
/* 8007A1AC 0007710C  7F C4 F3 78 */	mr r4, r30
/* 8007A1B0 00077110  7F E5 FB 78 */	mr r5, r31
/* 8007A1B4 00077114  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007A1B8 00077118  38 61 00 90 */	addi r3, r1, 0x90
/* 8007A1BC 0007711C  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 8007A1C0 00077120  7C 00 00 34 */	cntlzw r0, r0
/* 8007A1C4 00077124  54 06 DE 3E */	rlwinm r6, r0, 0x1b, 0x18, 0x1f
/* 8007A1C8 00077128  4B FD B0 D5 */	bl UpdateAnimation__6CActorFfR13CStateManagerb
/* 8007A1CC 0007712C  80 61 00 90 */	lwz r3, 0x90(r1)
/* 8007A1D0 00077130  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8007A1D4 00077134  90 7E 04 34 */	stw r3, 0x434(r30)
/* 8007A1D8 00077138  90 1E 04 38 */	stw r0, 0x438(r30)
/* 8007A1DC 0007713C  80 01 00 98 */	lwz r0, 0x98(r1)
/* 8007A1E0 00077140  90 1E 04 3C */	stw r0, 0x43c(r30)
/* 8007A1E4 00077144  80 61 00 9C */	lwz r3, 0x9c(r1)
/* 8007A1E8 00077148  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 8007A1EC 0007714C  90 7E 04 40 */	stw r3, 0x440(r30)
/* 8007A1F0 00077150  90 1E 04 44 */	stw r0, 0x444(r30)
/* 8007A1F4 00077154  80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 8007A1F8 00077158  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 8007A1FC 0007715C  90 7E 04 48 */	stw r3, 0x448(r30)
/* 8007A200 00077160  90 1E 04 4C */	stw r0, 0x44c(r30)
/* 8007A204 00077164  88 1E 04 03 */	lbz r0, 0x403(r30)
/* 8007A208 00077168  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007A20C 0007716C  41 82 00 2C */	beq lbl_8007A238
/* 8007A210 00077170  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A214 00077174  48 0B FE B9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 8007A218 00077178  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007A21C 0007717C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007A220 00077180  40 80 00 18 */	bge lbl_8007A238
/* 8007A224 00077184  FC 20 F0 90 */	fmr f1, f30
/* 8007A228 00077188  7F E4 FB 78 */	mr r4, r31
/* 8007A22C 0007718C  7F C5 F3 78 */	mr r5, r30
/* 8007A230 00077190  38 7E 03 30 */	addi r3, r30, 0x330
/* 8007A234 00077194  48 00 5B 1D */	bl Update__18CStateMachineStateFR13CStateManagerR3CAif
lbl_8007A238:
/* 8007A238 00077198  7F C3 F3 78 */	mr r3, r30
/* 8007A23C 0007719C  FC 20 F0 90 */	fmr f1, f30
/* 8007A240 000771A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A244 000771A4  81 8C 02 A8 */	lwz r12, 0x2a8(r12)
/* 8007A248 000771A8  7D 89 03 A6 */	mtctr r12
/* 8007A24C 000771AC  4E 80 04 21 */	bctrl
/* 8007A250 000771B0  FC 20 F0 90 */	fmr f1, f30
/* 8007A254 000771B4  7F E4 FB 78 */	mr r4, r31
/* 8007A258 000771B8  7F C5 F3 78 */	mr r5, r30
/* 8007A25C 000771BC  38 7E 04 60 */	addi r3, r30, 0x460
/* 8007A260 000771C0  48 1B 98 F9 */	bl Update__20CKnockBackControllerFfR13CStateManagerR10CPatterned
/* 8007A264 000771C4  FC 20 F0 90 */	fmr f1, f30
/* 8007A268 000771C8  7F C4 F3 78 */	mr r4, r30
/* 8007A26C 000771CC  38 61 01 88 */	addi r3, r1, 0x188
/* 8007A270 000771D0  48 0A 1A 41 */	bl PredictMotion__13CPhysicsActorCFf
/* 8007A274 000771D4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8007A278 000771D8  38 60 00 00 */	li r3, 0
/* 8007A27C 000771DC  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 8007A280 000771E0  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 8007A284 000771E4  C0 81 01 8C */	lfs f4, 0x18c(r1)
/* 8007A288 000771E8  EC 21 00 2A */	fadds f1, f1, f0
/* 8007A28C 000771EC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8007A290 000771F0  C0 41 01 90 */	lfs f2, 0x190(r1)
/* 8007A294 000771F4  EC 85 20 2A */	fadds f4, f5, f4
/* 8007A298 000771F8  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007A29C 000771FC  D0 3E 04 E4 */	stfs f1, 0x4e4(r30)
/* 8007A2A0 00077200  EC 23 10 2A */	fadds f1, f3, f2
/* 8007A2A4 00077204  D0 9E 04 E8 */	stfs f4, 0x4e8(r30)
/* 8007A2A8 00077208  D0 3E 04 EC */	stfs f1, 0x4ec(r30)
/* 8007A2AC 0007720C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8007A2B0 00077210  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8007A2B4 00077214  98 1E 03 28 */	stb r0, 0x328(r30)
/* 8007A2B8 00077218  C0 3E 04 20 */	lfs f1, 0x420(r30)
/* 8007A2BC 0007721C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007A2C0 00077220  40 81 00 0C */	ble lbl_8007A2CC
/* 8007A2C4 00077224  EC 01 F8 28 */	fsubs f0, f1, f31
/* 8007A2C8 00077228  D0 1E 04 20 */	stfs f0, 0x420(r30)
lbl_8007A2CC:
/* 8007A2CC 0007722C  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007A2D0 00077230  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8007A2D4 00077234  41 82 00 18 */	beq lbl_8007A2EC
/* 8007A2D8 00077238  C0 1E 03 F4 */	lfs f0, 0x3f4(r30)
/* 8007A2DC 0007723C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8007A2E0 00077240  40 81 00 0C */	ble lbl_8007A2EC
/* 8007A2E4 00077244  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8007A2E8 00077248  D0 1E 03 F4 */	stfs f0, 0x3f4(r30)
lbl_8007A2EC:
/* 8007A2EC 0007724C  C0 1E 05 0C */	lfs f0, 0x50c(r30)
/* 8007A2F0 00077250  FC 20 F8 90 */	fmr f1, f31
/* 8007A2F4 00077254  7F C3 F3 78 */	mr r3, r30
/* 8007A2F8 00077258  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 8007A2FC 0007725C  48 00 02 BD */	bl UpdateDamageColor__10CPatternedFf
/* 8007A300 00077260  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A304 00077264  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007A308 00077268  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007A30C 0007726C  40 82 00 FC */	bne lbl_8007A408
/* 8007A310 00077270  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007A314 00077274  C0 3E 03 A0 */	lfs f1, 0x3a0(r30)
/* 8007A318 00077278  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8007A31C 0007727C  38 00 00 00 */	li r0, 0
/* 8007A320 00077280  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007A324 00077284  40 82 00 28 */	bne lbl_8007A34C
/* 8007A328 00077288  C0 3E 03 A4 */	lfs f1, 0x3a4(r30)
/* 8007A32C 0007728C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007A330 00077290  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007A334 00077294  40 82 00 18 */	bne lbl_8007A34C
/* 8007A338 00077298  C0 3E 03 A8 */	lfs f1, 0x3a8(r30)
/* 8007A33C 0007729C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007A340 000772A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007A344 000772A4  40 82 00 08 */	bne lbl_8007A34C
/* 8007A348 000772A8  38 00 00 01 */	li r0, 1
lbl_8007A34C:
/* 8007A34C 000772AC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8007A350 000772B0  41 82 00 1C */	beq lbl_8007A36C
/* 8007A354 000772B4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8007A358 000772B8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8007A35C 000772BC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8007A360 000772C0  D0 1E 03 A0 */	stfs f0, 0x3a0(r30)
/* 8007A364 000772C4  D0 3E 03 A4 */	stfs f1, 0x3a4(r30)
/* 8007A368 000772C8  D0 5E 03 A8 */	stfs f2, 0x3a8(r30)
lbl_8007A36C:
/* 8007A36C 000772CC  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 8007A370 000772D0  C0 C2 89 08 */	lfs f6, lbl_805AA628@sda21(r2)
/* 8007A374 000772D4  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 8007A378 000772D8  41 82 00 88 */	beq lbl_8007A400
/* 8007A37C 000772DC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8007A380 000772E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 8007A384 000772E4  C1 5E 00 50 */	lfs f10, 0x50(r30)
/* 8007A388 000772E8  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8007A38C 000772EC  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 8007A390 000772F0  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 8007A394 000772F4  ED 0A 18 28 */	fsubs f8, f10, f3
/* 8007A398 000772F8  C1 23 00 60 */	lfs f9, 0x60(r3)
/* 8007A39C 000772FC  EC 85 10 28 */	fsubs f4, f5, f2
/* 8007A3A0 00077300  C1 7E 00 60 */	lfs f11, 0x60(r30)
/* 8007A3A4 00077304  EC 28 02 32 */	fmuls f1, f8, f8
/* 8007A3A8 00077308  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8007A3AC 0007730C  EC EB 48 28 */	fsubs f7, f11, f9
/* 8007A3B0 00077310  EC 44 01 32 */	fmuls f2, f4, f4
/* 8007A3B4 00077314  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8007A3B8 00077318  EC 67 01 F2 */	fmuls f3, f7, f7
/* 8007A3BC 0007731C  EC 22 08 2A */	fadds f1, f2, f1
/* 8007A3C0 00077320  D1 21 00 48 */	stfs f9, 0x48(r1)
/* 8007A3C4 00077324  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 8007A3C8 00077328  EC 23 08 2A */	fadds f1, f3, f1
/* 8007A3CC 0007732C  D1 41 00 50 */	stfs f10, 0x50(r1)
/* 8007A3D0 00077330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007A3D4 00077334  D1 61 00 54 */	stfs f11, 0x54(r1)
/* 8007A3D8 00077338  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8007A3DC 0007733C  D1 01 00 5C */	stfs f8, 0x5c(r1)
/* 8007A3E0 00077340  D0 E1 00 60 */	stfs f7, 0x60(r1)
/* 8007A3E4 00077344  40 81 00 14 */	ble lbl_8007A3F8
/* 8007A3E8 00077348  C0 1E 03 D4 */	lfs f0, 0x3d4(r30)
/* 8007A3EC 0007734C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8007A3F0 00077350  D0 1E 03 D4 */	stfs f0, 0x3d4(r30)
/* 8007A3F4 00077354  48 00 00 1C */	b lbl_8007A410
lbl_8007A3F8:
/* 8007A3F8 00077358  D0 DE 03 D4 */	stfs f6, 0x3d4(r30)
/* 8007A3FC 0007735C  48 00 00 14 */	b lbl_8007A410
lbl_8007A400:
/* 8007A400 00077360  D0 DE 03 D4 */	stfs f6, 0x3d4(r30)
/* 8007A404 00077364  48 00 00 0C */	b lbl_8007A410
lbl_8007A408:
/* 8007A408 00077368  7F C3 F3 78 */	mr r3, r30
/* 8007A40C 0007736C  4B FD AE 39 */	bl RemoveEmitter__6CActorFv
lbl_8007A410:
/* 8007A410 00077370  C0 3E 02 F8 */	lfs f1, 0x2f8(r30)
/* 8007A414 00077374  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007A418 00077378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007A41C 0007737C  40 81 00 08 */	ble lbl_8007A424
/* 8007A420 00077380  EC 21 F8 28 */	fsubs f1, f1, f31
lbl_8007A424:
/* 8007A424 00077384  D0 3E 02 F8 */	stfs f1, 0x2f8(r30)
lbl_8007A428:
/* 8007A428 00077388  E3 E1 01 E8 */	psq_l f31, 488(r1), 0, qr0
/* 8007A42C 0007738C  CB E1 01 E0 */	lfd f31, 0x1e0(r1)
/* 8007A430 00077390  E3 C1 01 D8 */	psq_l f30, 472(r1), 0, qr0
/* 8007A434 00077394  CB C1 01 D0 */	lfd f30, 0x1d0(r1)
/* 8007A438 00077398  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 8007A43C 0007739C  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 8007A440 000773A0  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8007A444 000773A4  83 A1 01 C4 */	lwz r29, 0x1c4(r1)
/* 8007A448 000773A8  7C 08 03 A6 */	mtlr r0
/* 8007A44C 000773AC  38 21 01 F0 */	addi r1, r1, 0x1f0
/* 8007A450 000773B0  4E 80 00 20 */	blr

.global AreStateStringsEqual__10CPatternedFPCcPCc
AreStateStringsEqual__10CPatternedFPCcPCc:
/* 8007A454 000773B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007A458 000773B8  7C 08 02 A6 */	mflr r0
/* 8007A45C 000773BC  38 A0 FF FF */	li r5, -1
/* 8007A460 000773C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007A464 000773C4  7C 60 1B 78 */	mr r0, r3
/* 8007A468 000773C8  7C 83 23 78 */	mr r3, r4
/* 8007A46C 000773CC  7C 04 03 78 */	mr r4, r0
/* 8007A470 000773D0  48 00 00 1D */	bl CompareStateString__10CPatternedFPCcPCci
/* 8007A474 000773D4  7C 60 00 34 */	cntlzw r0, r3
/* 8007A478 000773D8  54 03 D9 7E */	srwi r3, r0, 5
/* 8007A47C 000773DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007A480 000773E0  7C 08 03 A6 */	mtlr r0
/* 8007A484 000773E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007A488 000773E8  4E 80 00 20 */	blr

.global CompareStateString__10CPatternedFPCcPCci
CompareStateString__10CPatternedFPCcPCci:
/* 8007A48C 000773EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007A490 000773F0  38 C0 00 00 */	li r6, 0
/* 8007A494 000773F4  7C 88 23 78 */	mr r8, r4
/* 8007A498 000773F8  48 00 00 0C */	b lbl_8007A4A4
lbl_8007A49C:
/* 8007A49C 000773FC  39 08 00 01 */	addi r8, r8, 1
/* 8007A4A0 00077400  38 C6 00 01 */	addi r6, r6, 1
lbl_8007A4A4:
/* 8007A4A4 00077404  2C 05 FF FF */	cmpwi r5, -1
/* 8007A4A8 00077408  41 82 00 0C */	beq lbl_8007A4B4
/* 8007A4AC 0007740C  7C 06 28 00 */	cmpw r6, r5
/* 8007A4B0 00077410  40 80 00 10 */	bge lbl_8007A4C0
lbl_8007A4B4:
/* 8007A4B4 00077414  88 08 00 00 */	lbz r0, 0(r8)
/* 8007A4B8 00077418  7C 00 07 75 */	extsb. r0, r0
/* 8007A4BC 0007741C  40 82 FF E0 */	bne lbl_8007A49C
lbl_8007A4C0:
/* 8007A4C0 00077420  80 E3 00 08 */	lwz r7, 8(r3)
/* 8007A4C4 00077424  38 00 00 00 */	li r0, 0
/* 8007A4C8 00077428  90 61 00 18 */	stw r3, 0x18(r1)
/* 8007A4CC 0007742C  39 20 00 00 */	li r9, 0
/* 8007A4D0 00077430  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8007A4D4 00077434  90 61 00 20 */	stw r3, 0x20(r1)
/* 8007A4D8 00077438  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007A4DC 0007743C  90 61 00 08 */	stw r3, 8(r1)
/* 8007A4E0 00077440  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8007A4E4 00077444  90 61 00 10 */	stw r3, 0x10(r1)
/* 8007A4E8 00077448  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8007A4EC 0007744C  48 00 00 2C */	b lbl_8007A518
lbl_8007A4F0:
/* 8007A4F0 00077450  80 A3 00 00 */	lwz r5, 0(r3)
/* 8007A4F4 00077454  88 C4 00 00 */	lbz r6, 0(r4)
/* 8007A4F8 00077458  7C 05 48 AE */	lbzx r0, r5, r9
/* 8007A4FC 0007745C  7C C5 07 74 */	extsb r5, r6
/* 8007A500 00077460  7C 00 07 74 */	extsb r0, r0
/* 8007A504 00077464  7C 05 00 51 */	subf. r0, r5, r0
/* 8007A508 00077468  41 82 00 08 */	beq lbl_8007A510
/* 8007A50C 0007746C  48 00 00 A0 */	b lbl_8007A5AC
lbl_8007A510:
/* 8007A510 00077470  39 29 00 01 */	addi r9, r9, 1
/* 8007A514 00077474  38 84 00 01 */	addi r4, r4, 1
lbl_8007A518:
/* 8007A518 00077478  7C 03 18 40 */	cmplw r3, r3
/* 8007A51C 0007747C  38 00 00 00 */	li r0, 0
/* 8007A520 00077480  40 82 00 0C */	bne lbl_8007A52C
/* 8007A524 00077484  7C 09 38 00 */	cmpw r9, r7
/* 8007A528 00077488  41 82 00 08 */	beq lbl_8007A530
lbl_8007A52C:
/* 8007A52C 0007748C  38 00 00 01 */	li r0, 1
lbl_8007A530:
/* 8007A530 00077490  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8007A534 00077494  41 82 00 0C */	beq lbl_8007A540
/* 8007A538 00077498  7C 04 40 40 */	cmplw r4, r8
/* 8007A53C 0007749C  40 82 FF B4 */	bne lbl_8007A4F0
lbl_8007A540:
/* 8007A540 000774A0  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8007A544 000774A4  38 A0 00 00 */	li r5, 0
/* 8007A548 000774A8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8007A54C 000774AC  7C 03 00 40 */	cmplw r3, r0
/* 8007A550 000774B0  40 82 00 10 */	bne lbl_8007A560
/* 8007A554 000774B4  7C 09 38 00 */	cmpw r9, r7
/* 8007A558 000774B8  40 82 00 08 */	bne lbl_8007A560
/* 8007A55C 000774BC  38 A0 00 01 */	li r5, 1
lbl_8007A560:
/* 8007A560 000774C0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8007A564 000774C4  41 82 00 14 */	beq lbl_8007A578
/* 8007A568 000774C8  7C 04 40 40 */	cmplw r4, r8
/* 8007A56C 000774CC  41 82 00 0C */	beq lbl_8007A578
/* 8007A570 000774D0  38 00 FF FF */	li r0, -1
/* 8007A574 000774D4  48 00 00 38 */	b lbl_8007A5AC
lbl_8007A578:
/* 8007A578 000774D8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 8007A57C 000774DC  38 80 00 00 */	li r4, 0
/* 8007A580 000774E0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8007A584 000774E4  7C 03 00 40 */	cmplw r3, r0
/* 8007A588 000774E8  40 82 00 10 */	bne lbl_8007A598
/* 8007A58C 000774EC  7C 09 38 00 */	cmpw r9, r7
/* 8007A590 000774F0  40 82 00 08 */	bne lbl_8007A598
/* 8007A594 000774F4  38 80 00 01 */	li r4, 1
lbl_8007A598:
/* 8007A598 000774F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8007A59C 000774FC  41 82 00 0C */	beq lbl_8007A5A8
/* 8007A5A0 00077500  38 00 00 00 */	li r0, 0
/* 8007A5A4 00077504  48 00 00 08 */	b lbl_8007A5AC
lbl_8007A5A8:
/* 8007A5A8 00077508  38 00 00 01 */	li r0, 1
lbl_8007A5AC:
/* 8007A5AC 0007750C  7C 03 03 78 */	mr r3, r0
/* 8007A5B0 00077510  38 21 00 30 */	addi r1, r1, 0x30
/* 8007A5B4 00077514  4E 80 00 20 */	blr

.global UpdateDamageColor__10CPatternedFf
UpdateDamageColor__10CPatternedFf:
/* 8007A5B8 00077518  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007A5BC 0007751C  7C 08 02 A6 */	mflr r0
/* 8007A5C0 00077520  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007A5C4 00077524  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8007A5C8 00077528  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8007A5CC 0007752C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007A5D0 00077530  7C 7F 1B 78 */	mr r31, r3
/* 8007A5D4 00077534  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007A5D8 00077538  C0 43 04 28 */	lfs f2, 0x428(r3)
/* 8007A5DC 0007753C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007A5E0 00077540  40 81 00 90 */	ble lbl_8007A670
/* 8007A5E4 00077544  EC 02 08 28 */	fsubs f0, f2, f1
/* 8007A5E8 00077548  38 81 00 10 */	addi r4, r1, 0x10
/* 8007A5EC 0007754C  38 6D 84 14 */	addi r3, r13, lbl_805A6FD4@sda21
/* 8007A5F0 00077550  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8007A5F4 00077554  4B FD 51 3D */	bl "Max<f>__5CMathFRCfRCf"
/* 8007A5F8 00077558  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007A5FC 0007755C  38 61 00 0C */	addi r3, r1, 0xc
/* 8007A600 00077560  C0 02 89 40 */	lfs f0, lbl_805AA660@sda21(r2)
/* 8007A604 00077564  38 8D 84 18 */	addi r4, r13, lbl_805A6FD8@sda21
/* 8007A608 00077568  D0 3F 04 28 */	stfs f1, 0x428(r31)
/* 8007A60C 0007756C  C0 3F 04 28 */	lfs f1, 0x428(r31)
/* 8007A610 00077570  EC 01 00 24 */	fdivs f0, f1, f0
/* 8007A614 00077574  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8007A618 00077578  48 00 37 C9 */	bl "Min<f>__5CMathFRCfRCf"
/* 8007A61C 0007757C  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8007A620 00077580  48 2C F9 95 */	bl Black__6CColorFv
/* 8007A624 00077584  FC 20 F8 90 */	fmr f1, f31
/* 8007A628 00077588  7C 64 1B 78 */	mr r4, r3
/* 8007A62C 0007758C  38 61 00 08 */	addi r3, r1, 8
/* 8007A630 00077590  38 BF 04 30 */	addi r5, r31, 0x430
/* 8007A634 00077594  48 2E 8C 79 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 8007A638 00077598  88 81 00 0A */	lbz r4, 0xa(r1)
/* 8007A63C 0007759C  88 A1 00 09 */	lbz r5, 9(r1)
/* 8007A640 000775A0  88 01 00 08 */	lbz r0, 8(r1)
/* 8007A644 000775A4  98 1F 04 2C */	stb r0, 0x42c(r31)
/* 8007A648 000775A8  98 BF 04 2D */	stb r5, 0x42d(r31)
/* 8007A64C 000775AC  98 9F 04 2E */	stb r4, 0x42e(r31)
/* 8007A650 000775B0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8007A654 000775B4  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007A658 000775B8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007A65C 000775BC  40 82 00 14 */	bne lbl_8007A670
/* 8007A660 000775C0  C0 3F 05 0C */	lfs f1, 0x50c(r31)
/* 8007A664 000775C4  C0 1F 04 28 */	lfs f0, 0x428(r31)
/* 8007A668 000775C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8007A66C 000775CC  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
lbl_8007A670:
/* 8007A670 000775D0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8007A674 000775D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007A678 000775D8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8007A67C 000775DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007A680 000775E0  7C 08 03 A6 */	mtlr r0
/* 8007A684 000775E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8007A688 000775E8  4E 80 00 20 */	blr

.global UpdateAlphaDelta__10CPatternedFfR13CStateManager
UpdateAlphaDelta__10CPatternedFfR13CStateManager:
/* 8007A68C 000775EC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007A690 000775F0  7C 08 02 A6 */	mflr r0
/* 8007A694 000775F4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007A698 000775F8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8007A69C 000775FC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8007A6A0 00077600  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8007A6A4 00077604  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8007A6A8 00077608  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007A6AC 0007760C  7C 7F 1B 78 */	mr r31, r3
/* 8007A6B0 00077610  C0 82 89 08 */	lfs f4, lbl_805AA628@sda21(r2)
/* 8007A6B4 00077614  C0 63 03 E8 */	lfs f3, 0x3e8(r3)
/* 8007A6B8 00077618  FC 04 18 00 */	fcmpu cr0, f4, f3
/* 8007A6BC 0007761C  41 82 00 9C */	beq lbl_8007A758
/* 8007A6C0 00077620  E0 BF A4 2F */	psq_l f5, 1071(r31), 1, qr2
/* 8007A6C4 00077624  C0 42 89 00 */	lfs f2, lbl_805AA620@sda21(r2)
/* 8007A6C8 00077628  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007A6CC 0007762C  EC 42 01 72 */	fmuls f2, f2, f5
/* 8007A6D0 00077630  EF C1 10 FA */	fmadds f30, f1, f3, f2
/* 8007A6D4 00077634  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8007A6D8 00077638  40 81 00 10 */	ble lbl_8007A6E8
/* 8007A6DC 0007763C  FF C0 00 90 */	fmr f30, f0
/* 8007A6E0 00077640  D0 9F 03 E8 */	stfs f4, 0x3e8(r31)
/* 8007A6E4 00077644  48 00 00 24 */	b lbl_8007A708
lbl_8007A6E8:
/* 8007A6E8 00077648  FC 1E 20 40 */	fcmpo cr0, f30, f4
/* 8007A6EC 0007764C  40 80 00 1C */	bge lbl_8007A708
/* 8007A6F0 00077650  D0 9F 03 E8 */	stfs f4, 0x3e8(r31)
/* 8007A6F4 00077654  FF C0 20 90 */	fmr f30, f4
/* 8007A6F8 00077658  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 8007A6FC 0007765C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8007A700 00077660  41 82 00 08 */	beq lbl_8007A708
/* 8007A704 00077664  4B FF E2 FD */	bl DeathDelete__10CPatternedFR13CStateManager
lbl_8007A708:
/* 8007A708 00077668  FC 20 F0 90 */	fmr f1, f30
/* 8007A70C 0007766C  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 8007A710 00077670  48 08 B5 F9 */	bl SetUserAlpha__13CSimpleShadowFf
/* 8007A714 00077674  C0 02 89 44 */	lfs f0, lbl_805AA664@sda21(r2)
/* 8007A718 00077678  EF E0 07 B2 */	fmuls f31, f0, f30
/* 8007A71C 0007767C  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 8007A720 00077680  FC 80 F0 90 */	fmr f4, f30
/* 8007A724 00077684  C0 22 89 04 */	lfs f1, lbl_805AA624@sda21(r2)
/* 8007A728 00077688  38 61 00 0C */	addi r3, r1, 0xc
/* 8007A72C 0007768C  88 01 00 08 */	lbz r0, 8(r1)
/* 8007A730 00077690  FC 40 08 90 */	fmr f2, f1
/* 8007A734 00077694  98 1F 04 2F */	stb r0, 0x42f(r31)
/* 8007A738 00077698  FC 60 08 90 */	fmr f3, f1
/* 8007A73C 0007769C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 8007A740 000776A0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8007A744 000776A4  3B E4 01 20 */	addi r31, r4, 0x120
/* 8007A748 000776A8  48 2E 8C A5 */	bl __ct__6CColorFffff
/* 8007A74C 000776AC  7C 64 1B 78 */	mr r4, r3
/* 8007A750 000776B0  7F E3 FB 78 */	mr r3, r31
/* 8007A754 000776B4  48 03 D3 C5 */	bl SetModulationColorAllActiveEffects__17CParticleDatabaseFRC6CColor
lbl_8007A758:
/* 8007A758 000776B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8007A75C 000776BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8007A760 000776C0  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8007A764 000776C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8007A768 000776C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007A76C 000776CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007A770 000776D0  7C 08 03 A6 */	mtlr r0
/* 8007A774 000776D4  38 21 00 40 */	addi r1, r1, 0x40
/* 8007A778 000776D8  4E 80 00 20 */	blr

.global KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 8007A77C 000776DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8007A780 000776E0  7C 08 02 A6 */	mflr r0
/* 8007A784 000776E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8007A788 000776E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8007A78C 000776EC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8007A790 000776F0  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 8007A794 000776F4  81 83 00 00 */	lwz r12, 0(r3)
/* 8007A798 000776F8  7C BF 2B 78 */	mr r31, r5
/* 8007A79C 000776FC  7C 9B 23 78 */	mr r27, r4
/* 8007A7A0 00077700  FF E0 08 90 */	fmr f31, f1
/* 8007A7A4 00077704  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8007A7A8 00077708  7C 7E 1B 78 */	mr r30, r3
/* 8007A7AC 0007770C  7C DC 33 78 */	mr r28, r6
/* 8007A7B0 00077710  7C FD 3B 78 */	mr r29, r7
/* 8007A7B4 00077714  7F E4 FB 78 */	mr r4, r31
/* 8007A7B8 00077718  7D 89 03 A6 */	mtctr r12
/* 8007A7BC 0007771C  4E 80 04 21 */	bctrl
/* 8007A7C0 00077720  88 9E 04 01 */	lbz r4, 0x401(r30)
/* 8007A7C4 00077724  54 80 E7 FF */	rlwinm. r0, r4, 0x1c, 0x1f, 0x1f
/* 8007A7C8 00077728  40 82 03 50 */	bne lbl_8007AB18
/* 8007A7CC 0007772C  54 80 EF FF */	rlwinm. r0, r4, 0x1d, 0x1f, 0x1f
/* 8007A7D0 00077730  40 82 03 48 */	bne lbl_8007AB18
/* 8007A7D4 00077734  28 03 00 00 */	cmplwi r3, 0
/* 8007A7D8 00077738  40 82 00 08 */	bne lbl_8007A7E0
/* 8007A7DC 0007773C  48 00 03 3C */	b lbl_8007AB18
lbl_8007A7E0:
/* 8007A7E0 00077740  FC 20 F8 90 */	fmr f1, f31
/* 8007A7E4 00077744  7F 64 DB 78 */	mr r4, r27
/* 8007A7E8 00077748  7F E5 FB 78 */	mr r5, r31
/* 8007A7EC 0007774C  7F C6 F3 78 */	mr r6, r30
/* 8007A7F0 00077750  7F 87 E3 78 */	mr r7, r28
/* 8007A7F4 00077754  7F A8 EB 78 */	mr r8, r29
/* 8007A7F8 00077758  38 7E 04 60 */	addi r3, r30, 0x460
/* 8007A7FC 0007775C  48 1B 94 35 */	bl KnockBack__C20CKnockBackControllerFRC9CVector3fR13CStateManagerR10CPatternedRC11CDamageInfo14EKnockBackTypef
/* 8007A800 00077760  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A804 00077764  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007A808 00077768  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007A80C 0007776C  41 82 00 1C */	beq lbl_8007A828
/* 8007A810 00077770  C0 3E 04 70 */	lfs f1, 0x470(r30)
/* 8007A814 00077774  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007A818 00077778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007A81C 0007777C  4C 41 13 82 */	cror 2, 1, 2
/* 8007A820 00077780  40 82 00 08 */	bne lbl_8007A828
/* 8007A824 00077784  48 0B F9 F1 */	bl FrozenBreakout__15CBodyControllerFv
lbl_8007A828:
/* 8007A828 00077788  80 1E 04 68 */	lwz r0, 0x468(r30)
/* 8007A82C 0007778C  28 00 00 09 */	cmplwi r0, 9
/* 8007A830 00077790  41 81 02 E8 */	bgt lbl_8007AB18
/* 8007A834 00077794  3C 60 80 3E */	lis r3, lbl_803DA8F8@ha
/* 8007A838 00077798  54 00 10 3A */	slwi r0, r0, 2
/* 8007A83C 0007779C  38 63 A8 F8 */	addi r3, r3, lbl_803DA8F8@l
/* 8007A840 000777A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8007A844 000777A4  7C 09 03 A6 */	mtctr r0
/* 8007A848 000777A8  4E 80 04 20 */	bctr
.global lbl_8007A84C
lbl_8007A84C:
/* 8007A84C 000777AC  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007A850 000777B0  7F 65 DB 78 */	mr r5, r27
/* 8007A854 000777B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8007A858 000777B8  38 9E 00 34 */	addi r4, r30, 0x34
/* 8007A85C 000777BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8007A860 000777C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8007A864 000777C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8007A868 000777C8  48 29 81 BD */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8007A86C 000777CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8007A870 000777D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8007A874 000777D4  48 29 95 5D */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 8007A878 000777D8  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 8007A87C 000777DC  7F C3 F3 78 */	mr r3, r30
/* 8007A880 000777E0  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8007A884 000777E4  7F E4 FB 78 */	mr r4, r31
/* 8007A888 000777E8  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 8007A88C 000777EC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8007A890 000777F0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8007A894 000777F4  90 C1 00 08 */	stw r6, 8(r1)
/* 8007A898 000777F8  38 C1 00 08 */	addi r6, r1, 8
/* 8007A89C 000777FC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8007A8A0 00077800  90 01 00 10 */	stw r0, 0x10(r1)
/* 8007A8A4 00077804  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A8A8 00077808  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 8007A8AC 0007780C  7D 89 03 A6 */	mtctr r12
/* 8007A8B0 00077810  4E 80 04 21 */	bctrl
/* 8007A8B4 00077814  48 00 02 64 */	b lbl_8007AB18
.global lbl_8007A8B8
lbl_8007A8B8:
/* 8007A8B8 00077818  7F C3 F3 78 */	mr r3, r30
/* 8007A8BC 0007781C  7F E4 FB 78 */	mr r4, r31
/* 8007A8C0 00077820  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A8C4 00077824  81 8C 02 C4 */	lwz r12, 0x2c4(r12)
/* 8007A8C8 00077828  7D 89 03 A6 */	mtctr r12
/* 8007A8CC 0007782C  4E 80 04 21 */	bctrl
/* 8007A8D0 00077830  48 00 02 48 */	b lbl_8007AB18
.global lbl_8007A8D4
lbl_8007A8D4:
/* 8007A8D4 00077834  7F C3 F3 78 */	mr r3, r30
/* 8007A8D8 00077838  7F E4 FB 78 */	mr r4, r31
/* 8007A8DC 0007783C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A8E0 00077840  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 8007A8E4 00077844  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 8007A8E8 00077848  C0 42 89 48 */	lfs f2, lbl_805AA668@sda21(r2)
/* 8007A8EC 0007784C  7D 89 03 A6 */	mtctr r12
/* 8007A8F0 00077850  4E 80 04 21 */	bctrl
/* 8007A8F4 00077854  48 00 02 24 */	b lbl_8007AB18
.global lbl_8007A8F8
lbl_8007A8F8:
/* 8007A8F8 00077858  7F C3 F3 78 */	mr r3, r30
/* 8007A8FC 0007785C  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 8007A900 00077860  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A904 00077864  C0 42 89 4C */	lfs f2, lbl_805AA66C@sda21(r2)
/* 8007A908 00077868  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 8007A90C 0007786C  7D 89 03 A6 */	mtctr r12
/* 8007A910 00077870  4E 80 04 21 */	bctrl
/* 8007A914 00077874  48 00 02 04 */	b lbl_8007AB18
.global lbl_8007A918
lbl_8007A918:
/* 8007A918 00077878  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007A91C 0007787C  38 60 00 01 */	li r3, 1
/* 8007A920 00077880  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007A924 00077884  98 1E 04 01 */	stb r0, 0x401(r30)
.global lbl_8007A928
lbl_8007A928:
/* 8007A928 00077888  7F C3 F3 78 */	mr r3, r30
/* 8007A92C 0007788C  C0 3E 04 6C */	lfs f1, 0x46c(r30)
/* 8007A930 00077890  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A934 00077894  C0 42 89 48 */	lfs f2, lbl_805AA668@sda21(r2)
/* 8007A938 00077898  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 8007A93C 0007789C  7D 89 03 A6 */	mtctr r12
/* 8007A940 000778A0  4E 80 04 21 */	bctrl
/* 8007A944 000778A4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007A948 000778A8  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007A94C 000778AC  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8007A950 000778B0  7F C3 F3 78 */	mr r3, r30
/* 8007A954 000778B4  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8007A958 000778B8  7F E4 FB 78 */	mr r4, r31
/* 8007A95C 000778BC  38 C0 00 14 */	li r6, 0x14
/* 8007A960 000778C0  7D 89 03 A6 */	mtctr r12
/* 8007A964 000778C4  4E 80 04 21 */	bctrl
/* 8007A968 000778C8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007A96C 000778CC  38 A0 00 00 */	li r5, 0
/* 8007A970 000778D0  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 8007A974 000778D4  38 80 00 01 */	li r4, 1
/* 8007A978 000778D8  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007A97C 000778DC  54 05 F7 FE */	rlwinm r5, r0, 0x1e, 0x1f, 0x1f
/* 8007A980 000778E0  C0 02 89 0C */	lfs f0, lbl_805AA62C@sda21(r2)
/* 8007A984 000778E4  38 60 00 00 */	li r3, 0
/* 8007A988 000778E8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007A98C 000778EC  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 8007A990 000778F0  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007A994 000778F4  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007A998 000778F8  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8007A99C 000778FC  98 1E 04 01 */	stb r0, 0x401(r30)
/* 8007A9A0 00077900  54 04 EF FE */	rlwinm r4, r0, 0x1d, 0x1f, 0x1f
/* 8007A9A4 00077904  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007A9A8 00077908  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8007A9AC 0007790C  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007A9B0 00077910  D0 1E 03 F4 */	stfs f0, 0x3f4(r30)
/* 8007A9B4 00077914  88 1E 04 02 */	lbz r0, 0x402(r30)
/* 8007A9B8 00077918  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007A9BC 0007791C  98 1E 04 02 */	stb r0, 0x402(r30)
/* 8007A9C0 00077920  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007A9C4 00077924  48 0B F6 B5 */	bl DouseFlames__15CBodyControllerFv
/* 8007A9C8 00077928  83 FF 08 84 */	lwz r31, 0x884(r31)
/* 8007A9CC 0007792C  7F C4 F3 78 */	mr r4, r30
/* 8007A9D0 00077930  7F E3 FB 78 */	mr r3, r31
/* 8007A9D4 00077934  48 16 A6 71 */	bl StopThermalHotParticles__20CActorModelParticlesFR5CActor
/* 8007A9D8 00077938  7F E3 FB 78 */	mr r3, r31
/* 8007A9DC 0007793C  7F C4 F3 78 */	mr r4, r30
/* 8007A9E0 00077940  48 16 8F 65 */	bl StartBurnDeath__20CActorModelParticlesFR5CActor
/* 8007A9E4 00077944  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007A9E8 00077948  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8007A9EC 0007794C  40 82 01 2C */	bne lbl_8007AB18
/* 8007A9F0 00077950  7F E3 FB 78 */	mr r3, r31
/* 8007A9F4 00077954  7F C4 F3 78 */	mr r4, r30
/* 8007A9F8 00077958  48 16 A8 D9 */	bl EnsureFirePopLoaded__20CActorModelParticlesR5CActor
/* 8007A9FC 0007795C  7F E3 FB 78 */	mr r3, r31
/* 8007AA00 00077960  7F C4 F3 78 */	mr r4, r30
/* 8007AA04 00077964  48 16 A9 09 */	bl EnsureIceBreakLoaded__20CActorModelParticlesR5CActor
/* 8007AA08 00077968  48 00 01 10 */	b lbl_8007AB18
.global lbl_8007AA0C
lbl_8007AA0C:
/* 8007AA0C 0007796C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AA10 00077970  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007AA14 00077974  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8007AA18 00077978  7F C3 F3 78 */	mr r3, r30
/* 8007AA1C 0007797C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8007AA20 00077980  7F E4 FB 78 */	mr r4, r31
/* 8007AA24 00077984  38 C0 00 14 */	li r6, 0x14
/* 8007AA28 00077988  7D 89 03 A6 */	mtctr r12
/* 8007AA2C 0007798C  4E 80 04 21 */	bctrl
/* 8007AA30 00077990  48 00 00 E8 */	b lbl_8007AB18
.global lbl_8007AA34
lbl_8007AA34:
/* 8007AA34 00077994  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AA38 00077998  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007AA3C 0007799C  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8007AA40 000779A0  7F C3 F3 78 */	mr r3, r30
/* 8007AA44 000779A4  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8007AA48 000779A8  7F E4 FB 78 */	mr r4, r31
/* 8007AA4C 000779AC  38 C0 00 14 */	li r6, 0x14
/* 8007AA50 000779B0  7D 89 03 A6 */	mtctr r12
/* 8007AA54 000779B4  4E 80 04 21 */	bctrl
/* 8007AA58 000779B8  7F C3 F3 78 */	mr r3, r30
/* 8007AA5C 000779BC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AA60 000779C0  81 8C 02 C8 */	lwz r12, 0x2c8(r12)
/* 8007AA64 000779C4  7D 89 03 A6 */	mtctr r12
/* 8007AA68 000779C8  4E 80 04 21 */	bctrl
/* 8007AA6C 000779CC  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8007AA70 000779D0  28 00 00 00 */	cmplwi r0, 0
/* 8007AA74 000779D4  40 82 00 10 */	bne lbl_8007AA84
/* 8007AA78 000779D8  88 1E 05 3C */	lbz r0, 0x53c(r30)
/* 8007AA7C 000779DC  28 00 00 00 */	cmplwi r0, 0
/* 8007AA80 000779E0  41 82 00 20 */	beq lbl_8007AAA0
lbl_8007AA84:
/* 8007AA84 000779E4  7F C3 F3 78 */	mr r3, r30
/* 8007AA88 000779E8  7F E4 FB 78 */	mr r4, r31
/* 8007AA8C 000779EC  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AA90 000779F0  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 8007AA94 000779F4  7D 89 03 A6 */	mtctr r12
/* 8007AA98 000779F8  4E 80 04 21 */	bctrl
/* 8007AA9C 000779FC  48 00 00 7C */	b lbl_8007AB18
lbl_8007AAA0:
/* 8007AAA0 00077A00  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007AAA4 00077A04  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007AAA8 00077A08  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007AAAC 00077A0C  41 82 00 6C */	beq lbl_8007AB18
/* 8007AAB0 00077A10  48 0B F7 65 */	bl FrozenBreakout__15CBodyControllerFv
/* 8007AAB4 00077A14  48 00 00 64 */	b lbl_8007AB18
.global lbl_8007AAB8
lbl_8007AAB8:
/* 8007AAB8 00077A18  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AABC 00077A1C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007AAC0 00077A20  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8007AAC4 00077A24  7F C3 F3 78 */	mr r3, r30
/* 8007AAC8 00077A28  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 8007AACC 00077A2C  7F E4 FB 78 */	mr r4, r31
/* 8007AAD0 00077A30  38 C0 00 14 */	li r6, 0x14
/* 8007AAD4 00077A34  7D 89 03 A6 */	mtctr r12
/* 8007AAD8 00077A38  4E 80 04 21 */	bctrl
/* 8007AADC 00077A3C  88 1E 05 58 */	lbz r0, 0x558(r30)
/* 8007AAE0 00077A40  28 00 00 00 */	cmplwi r0, 0
/* 8007AAE4 00077A44  41 82 00 20 */	beq lbl_8007AB04
/* 8007AAE8 00077A48  7F C3 F3 78 */	mr r3, r30
/* 8007AAEC 00077A4C  7F E4 FB 78 */	mr r4, r31
/* 8007AAF0 00077A50  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007AAF4 00077A54  81 8C 02 9C */	lwz r12, 0x29c(r12)
/* 8007AAF8 00077A58  7D 89 03 A6 */	mtctr r12
/* 8007AAFC 00077A5C  4E 80 04 21 */	bctrl
/* 8007AB00 00077A60  48 00 00 18 */	b lbl_8007AB18
lbl_8007AB04:
/* 8007AB04 00077A64  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007AB08 00077A68  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8007AB0C 00077A6C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007AB10 00077A70  41 82 00 08 */	beq lbl_8007AB18
/* 8007AB14 00077A74  48 0B F7 01 */	bl FrozenBreakout__15CBodyControllerFv
.global lbl_8007AB18
lbl_8007AB18:
/* 8007AB18 00077A78  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8007AB1C 00077A7C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8007AB20 00077A80  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 8007AB24 00077A84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8007AB28 00077A88  7C 08 03 A6 */	mtlr r0
/* 8007AB2C 00077A8C  38 21 00 60 */	addi r1, r1, 0x60
/* 8007AB30 00077A90  4E 80 00 20 */	blr

.global MassiveFrozenDeath__10CPatternedFR13CStateManager
MassiveFrozenDeath__10CPatternedFR13CStateManager:
/* 8007AB34 00077A94  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8007AB38 00077A98  7C 08 02 A6 */	mflr r0
/* 8007AB3C 00077A9C  90 01 01 24 */	stw r0, 0x124(r1)
/* 8007AB40 00077AA0  A0 02 C5 FC */	lhz r0, lbl_805AE31C@sda21(r2)
/* 8007AB44 00077AA4  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8007AB48 00077AA8  7C 9F 23 78 */	mr r31, r4
/* 8007AB4C 00077AAC  93 C1 01 18 */	stw r30, 0x118(r1)
/* 8007AB50 00077AB0  7C 7E 1B 78 */	mr r30, r3
/* 8007AB54 00077AB4  80 63 04 58 */	lwz r3, 0x458(r3)
/* 8007AB58 00077AB8  7C 03 00 40 */	cmplw r3, r0
/* 8007AB5C 00077ABC  40 82 00 0C */	bne lbl_8007AB68
/* 8007AB60 00077AC0  80 1E 04 54 */	lwz r0, 0x454(r30)
/* 8007AB64 00077AC4  90 1E 04 58 */	stw r0, 0x458(r30)
lbl_8007AB68:
/* 8007AB68 00077AC8  80 1E 04 58 */	lwz r0, 0x458(r30)
/* 8007AB6C 00077ACC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007AB70 00077AD0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8007AB74 00077AD4  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8007AB78 00077AD8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8007AB7C 00077ADC  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8007AB80 00077AE0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8007AB84 00077AE4  38 61 00 08 */	addi r3, r1, 8
/* 8007AB88 00077AE8  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8007AB8C 00077AEC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8007AB90 00077AF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8007AB94 00077AF4  38 E0 00 01 */	li r7, 1
/* 8007AB98 00077AF8  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8007AB9C 00077AFC  39 00 00 00 */	li r8, 0
/* 8007ABA0 00077B00  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8007ABA4 00077B04  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8007ABA8 00077B08  48 26 F7 09 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8007ABAC 00077B0C  7F C3 F3 78 */	mr r3, r30
/* 8007ABB0 00077B10  7F E5 FB 78 */	mr r5, r31
/* 8007ABB4 00077B14  38 80 00 18 */	li r4, 0x18
/* 8007ABB8 00077B18  38 C0 FF FF */	li r6, -1
/* 8007ABBC 00077B1C  4B FD 65 05 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8007ABC0 00077B20  7F C3 F3 78 */	mr r3, r30
/* 8007ABC4 00077B24  7F E4 FB 78 */	mr r4, r31
/* 8007ABC8 00077B28  48 00 01 F1 */	bl GenerateIceDeathExplosion__10CPatternedFR13CStateManager
/* 8007ABCC 00077B2C  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8007ABD0 00077B30  38 61 00 30 */	addi r3, r1, 0x30
/* 8007ABD4 00077B34  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8007ABD8 00077B38  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8007ABDC 00077B3C  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8007ABE0 00077B40  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8007ABE4 00077B44  EC 81 00 28 */	fsubs f4, f1, f0
/* 8007ABE8 00077B48  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8007ABEC 00077B4C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8007ABF0 00077B50  EC 43 10 28 */	fsubs f2, f3, f2
/* 8007ABF4 00077B54  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007ABF8 00077B58  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 8007ABFC 00077B5C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8007AC00 00077B60  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8007AC04 00077B64  48 29 9C B5 */	bl Magnitude__9CVector3fCFv
/* 8007AC08 00077B68  C0 62 89 50 */	lfs f3, lbl_805AA670@sda21(r2)
/* 8007AC0C 00077B6C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8007AC10 00077B70  40 80 00 94 */	bge lbl_8007ACA4
/* 8007AC14 00077B74  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8007AC18 00077B78  38 61 00 3C */	addi r3, r1, 0x3c
/* 8007AC1C 00077B7C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 8007AC20 00077B80  38 81 00 18 */	addi r4, r1, 0x18
/* 8007AC24 00077B84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8007AC28 00077B88  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8007AC2C 00077B8C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8007AC30 00077B90  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8007AC34 00077B94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8007AC38 00077B98  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007AC3C 00077B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007AC40 00077BA0  C0 22 89 4C */	lfs f1, lbl_805AA66C@sda21(r2)
/* 8007AC44 00077BA4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8007AC48 00077BA8  C0 42 89 54 */	lfs f2, lbl_805AA674@sda21(r2)
/* 8007AC4C 00077BAC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8007AC50 00077BB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8007AC54 00077BB4  48 0E 29 71 */	bl BuildPatternedExplodeShakeData__16CCameraShakeDataFRC9CVector3ffff
/* 8007AC58 00077BB8  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 8007AC5C 00077BBC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8007AC60 00077BC0  38 A0 00 01 */	li r5, 1
/* 8007AC64 00077BC4  4B F8 FD BD */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 8007AC68 00077BC8  34 81 00 BC */	addic. r4, r1, 0xbc
/* 8007AC6C 00077BCC  41 82 00 10 */	beq lbl_8007AC7C
/* 8007AC70 00077BD0  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8007AC74 00077BD4  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8007AC78 00077BD8  90 04 00 00 */	stw r0, 0(r4)
lbl_8007AC7C:
/* 8007AC7C 00077BDC  34 81 00 80 */	addic. r4, r1, 0x80
/* 8007AC80 00077BE0  41 82 00 10 */	beq lbl_8007AC90
/* 8007AC84 00077BE4  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8007AC88 00077BE8  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8007AC8C 00077BEC  90 04 00 00 */	stw r0, 0(r4)
lbl_8007AC90:
/* 8007AC90 00077BF0  34 81 00 44 */	addic. r4, r1, 0x44
/* 8007AC94 00077BF4  41 82 00 10 */	beq lbl_8007ACA4
/* 8007AC98 00077BF8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 8007AC9C 00077BFC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8007ACA0 00077C00  90 04 00 00 */	stw r0, 0(r4)
lbl_8007ACA4:
/* 8007ACA4 00077C04  7F C3 F3 78 */	mr r3, r30
/* 8007ACA8 00077C08  7F E4 FB 78 */	mr r4, r31
/* 8007ACAC 00077C0C  4B FF DD 55 */	bl DeathDelete__10CPatternedFR13CStateManager
/* 8007ACB0 00077C10  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007ACB4 00077C14  38 60 00 00 */	li r3, 0
/* 8007ACB8 00077C18  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007ACBC 00077C1C  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007ACC0 00077C20  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 8007ACC4 00077C24  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007ACC8 00077C28  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8007ACCC 00077C2C  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007ACD0 00077C30  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8007ACD4 00077C34  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8007ACD8 00077C38  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8007ACDC 00077C3C  7C 08 03 A6 */	mtlr r0
/* 8007ACE0 00077C40  38 21 01 20 */	addi r1, r1, 0x120
/* 8007ACE4 00077C44  4E 80 00 20 */	blr

.global MassiveDeath__10CPatternedFR13CStateManager
MassiveDeath__10CPatternedFR13CStateManager:
/* 8007ACE8 00077C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007ACEC 00077C4C  7C 08 02 A6 */	mflr r0
/* 8007ACF0 00077C50  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8007ACF4 00077C54  38 E0 00 01 */	li r7, 1
/* 8007ACF8 00077C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007ACFC 00077C5C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8007AD00 00077C60  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 8007AD04 00077C64  39 00 00 00 */	li r8, 0
/* 8007AD08 00077C68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007AD0C 00077C6C  7C 9F 23 78 */	mr r31, r4
/* 8007AD10 00077C70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007AD14 00077C74  7C 7E 1B 78 */	mr r30, r3
/* 8007AD18 00077C78  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007AD1C 00077C7C  80 1E 04 54 */	lwz r0, 0x454(r30)
/* 8007AD20 00077C80  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8007AD24 00077C84  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8007AD28 00077C88  38 61 00 08 */	addi r3, r1, 8
/* 8007AD2C 00077C8C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8007AD30 00077C90  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8007AD34 00077C94  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8007AD38 00077C98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8007AD3C 00077C9C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8007AD40 00077CA0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007AD44 00077CA4  48 26 F5 6D */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8007AD48 00077CA8  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007AD4C 00077CAC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8007AD50 00077CB0  40 82 00 24 */	bne lbl_8007AD74
/* 8007AD54 00077CB4  7F C3 F3 78 */	mr r3, r30
/* 8007AD58 00077CB8  7F E5 FB 78 */	mr r5, r31
/* 8007AD5C 00077CBC  38 80 00 13 */	li r4, 0x13
/* 8007AD60 00077CC0  38 C0 FF FF */	li r6, -1
/* 8007AD64 00077CC4  4B FD 63 5D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 8007AD68 00077CC8  7F C3 F3 78 */	mr r3, r30
/* 8007AD6C 00077CCC  7F E4 FB 78 */	mr r4, r31
/* 8007AD70 00077CD0  48 00 02 69 */	bl GenerateDeathExplosion__10CPatternedFR13CStateManager
lbl_8007AD74:
/* 8007AD74 00077CD4  7F C3 F3 78 */	mr r3, r30
/* 8007AD78 00077CD8  7F E4 FB 78 */	mr r4, r31
/* 8007AD7C 00077CDC  4B FF DC 85 */	bl DeathDelete__10CPatternedFR13CStateManager
/* 8007AD80 00077CE0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007AD84 00077CE4  38 60 00 00 */	li r3, 0
/* 8007AD88 00077CE8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007AD8C 00077CEC  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007AD90 00077CF0  54 03 F7 FE */	rlwinm r3, r0, 0x1e, 0x1f, 0x1f
/* 8007AD94 00077CF4  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007AD98 00077CF8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8007AD9C 00077CFC  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007ADA0 00077D00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007ADA4 00077D04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007ADA8 00077D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007ADAC 00077D0C  7C 08 03 A6 */	mtlr r0
/* 8007ADB0 00077D10  38 21 00 20 */	addi r1, r1, 0x20
/* 8007ADB4 00077D14  4E 80 00 20 */	blr

.global GenerateIceDeathExplosion__10CPatternedFR13CStateManager
GenerateIceDeathExplosion__10CPatternedFR13CStateManager:
/* 8007ADB8 00077D18  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8007ADBC 00077D1C  7C 08 02 A6 */	mflr r0
/* 8007ADC0 00077D20  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8007ADC4 00077D24  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 8007ADC8 00077D28  7C 7A 1B 78 */	mr r26, r3
/* 8007ADCC 00077D2C  7C 9E 23 78 */	mr r30, r4
/* 8007ADD0 00077D30  3B 7A 05 4C */	addi r27, r26, 0x54c
/* 8007ADD4 00077D34  88 03 05 58 */	lbz r0, 0x558(r3)
/* 8007ADD8 00077D38  28 00 00 00 */	cmplwi r0, 0
/* 8007ADDC 00077D3C  41 82 01 E8 */	beq lbl_8007AFC4
/* 8007ADE0 00077D40  38 61 00 8C */	addi r3, r1, 0x8c
/* 8007ADE4 00077D44  38 9A 00 34 */	addi r4, r26, 0x34
/* 8007ADE8 00077D48  48 29 7D 8D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8007ADEC 00077D4C  80 DA 00 64 */	lwz r6, 0x64(r26)
/* 8007ADF0 00077D50  38 61 00 5C */	addi r3, r1, 0x5c
/* 8007ADF4 00077D54  C0 1A 05 48 */	lfs f0, 0x548(r26)
/* 8007ADF8 00077D58  38 9A 00 34 */	addi r4, r26, 0x34
/* 8007ADFC 00077D5C  C0 26 00 08 */	lfs f1, 8(r6)
/* 8007AE00 00077D60  38 A1 00 68 */	addi r5, r1, 0x68
/* 8007AE04 00077D64  C0 66 00 04 */	lfs f3, 4(r6)
/* 8007AE08 00077D68  C0 5A 05 44 */	lfs f2, 0x544(r26)
/* 8007AE0C 00077D6C  EC 81 00 32 */	fmuls f4, f1, f0
/* 8007AE10 00077D70  C0 26 00 00 */	lfs f1, 0(r6)
/* 8007AE14 00077D74  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 8007AE18 00077D78  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8007AE1C 00077D7C  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 8007AE20 00077D80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007AE24 00077D84  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8007AE28 00077D88  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8007AE2C 00077D8C  48 29 7C BD */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8007AE30 00077D90  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 8007AE34 00077D94  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 8007AE38 00077D98  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 8007AE3C 00077D9C  28 00 00 00 */	cmplwi r0, 0
/* 8007AE40 00077DA0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8007AE44 00077DA4  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8007AE48 00077DA8  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 8007AE4C 00077DAC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8007AE50 00077DB0  41 82 01 74 */	beq lbl_8007AFC4
/* 8007AE54 00077DB4  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 8007AE58 00077DB8  3B A0 00 00 */	li r29, 0
/* 8007AE5C 00077DBC  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007AE60 00077DC0  3B 20 00 00 */	li r25, 0
/* 8007AE64 00077DC4  3B 80 00 00 */	li r28, 0
/* 8007AE68 00077DC8  38 60 01 00 */	li r3, 0x100
/* 8007AE6C 00077DCC  38 A0 00 00 */	li r5, 0
/* 8007AE70 00077DD0  48 29 A9 FD */	bl __nw__FUlPCcPCc
/* 8007AE74 00077DD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007AE78 00077DD8  41 82 00 CC */	beq lbl_8007AF44
/* 8007AE7C 00077DDC  3B 21 00 34 */	addi r25, r1, 0x34
/* 8007AE80 00077DE0  7F 64 DB 78 */	mr r4, r27
/* 8007AE84 00077DE4  7F 23 CB 78 */	mr r3, r25
/* 8007AE88 00077DE8  48 2C 60 21 */	bl __ct__6CTokenFRC6CToken
/* 8007AE8C 00077DEC  7F 23 CB 78 */	mr r3, r25
/* 8007AE90 00077DF0  48 2C 5F 7D */	bl GetObj__6CTokenFv
/* 8007AE94 00077DF4  80 03 00 04 */	lwz r0, 4(r3)
/* 8007AE98 00077DF8  7F C4 F3 78 */	mr r4, r30
/* 8007AE9C 00077DFC  38 61 00 10 */	addi r3, r1, 0x10
/* 8007AEA0 00077E00  3B 80 00 01 */	li r28, 1
/* 8007AEA4 00077E04  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8007AEA8 00077E08  4B FD 22 35 */	bl AllocateUniqueId__13CStateManagerFv
/* 8007AEAC 00077E0C  80 FA 00 04 */	lwz r7, 4(r26)
/* 8007AEB0 00077E10  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8007AEB4 00077E14  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 8007AEB8 00077E18  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8007AEBC 00077E1C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8007AEC0 00077E20  38 61 00 74 */	addi r3, r1, 0x74
/* 8007AEC4 00077E24  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8007AEC8 00077E28  38 81 00 2C */	addi r4, r1, 0x2c
/* 8007AECC 00077E2C  38 C1 00 30 */	addi r6, r1, 0x30
/* 8007AED0 00077E30  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8007AED4 00077E34  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 8007AED8 00077E38  90 01 00 30 */	stw r0, 0x30(r1)
/* 8007AEDC 00077E3C  4B FD 65 A9 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8007AEE0 00077E40  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007AEE4 00077E44  38 61 00 40 */	addi r3, r1, 0x40
/* 8007AEE8 00077E48  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007AEEC 00077E4C  3B 20 00 01 */	li r25, 1
/* 8007AEF0 00077E50  38 84 00 25 */	addi r4, r4, 0x25
/* 8007AEF4 00077E54  4B F8 9D C5 */	bl string_l__4rstlFPCc
/* 8007AEF8 00077E58  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007AEFC 00077E5C  3B A0 00 01 */	li r29, 1
/* 8007AF00 00077E60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8007AF04 00077E64  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8007AF08 00077E68  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8007AF0C 00077E6C  48 2C F0 A1 */	bl White__6CColorFv
/* 8007AF10 00077E70  38 01 00 50 */	addi r0, r1, 0x50
/* 8007AF14 00077E74  38 81 00 34 */	addi r4, r1, 0x34
/* 8007AF18 00077E78  90 01 00 08 */	stw r0, 8(r1)
/* 8007AF1C 00077E7C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8007AF20 00077E80  38 E1 00 74 */	addi r7, r1, 0x74
/* 8007AF24 00077E84  39 01 00 40 */	addi r8, r1, 0x40
/* 8007AF28 00077E88  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007AF2C 00077E8C  7F E3 FB 78 */	mr r3, r31
/* 8007AF30 00077E90  39 21 00 8C */	addi r9, r1, 0x8c
/* 8007AF34 00077E94  38 C0 00 01 */	li r6, 1
/* 8007AF38 00077E98  39 40 00 01 */	li r10, 1
/* 8007AF3C 00077E9C  4B FD FB BD */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 8007AF40 00077EA0  7C 7F 1B 78 */	mr r31, r3
lbl_8007AF44:
/* 8007AF44 00077EA4  7F 80 07 75 */	extsb. r0, r28
/* 8007AF48 00077EA8  41 82 00 10 */	beq lbl_8007AF58
/* 8007AF4C 00077EAC  38 61 00 34 */	addi r3, r1, 0x34
/* 8007AF50 00077EB0  38 80 00 00 */	li r4, 0
/* 8007AF54 00077EB4  48 2C 5E ED */	bl __dt__6CTokenFv
lbl_8007AF58:
/* 8007AF58 00077EB8  7F 20 07 75 */	extsb. r0, r25
/* 8007AF5C 00077EBC  41 82 00 44 */	beq lbl_8007AFA0
/* 8007AF60 00077EC0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8007AF64 00077EC4  80 61 00 84 */	lwz r3, 0x84(r1)
/* 8007AF68 00077EC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007AF6C 00077ECC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8007AF70 00077ED0  7C 64 1B 78 */	mr r4, r3
/* 8007AF74 00077ED4  7C 03 02 14 */	add r0, r3, r0
/* 8007AF78 00077ED8  90 61 00 18 */	stw r3, 0x18(r1)
/* 8007AF7C 00077EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007AF80 00077EE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8007AF84 00077EE4  48 00 00 08 */	b lbl_8007AF8C
lbl_8007AF88:
/* 8007AF88 00077EE8  38 84 00 0C */	addi r4, r4, 0xc
lbl_8007AF8C:
/* 8007AF8C 00077EEC  7C 04 00 40 */	cmplw r4, r0
/* 8007AF90 00077EF0  40 82 FF F8 */	bne lbl_8007AF88
/* 8007AF94 00077EF4  28 03 00 00 */	cmplwi r3, 0
/* 8007AF98 00077EF8  41 82 00 08 */	beq lbl_8007AFA0
/* 8007AF9C 00077EFC  48 29 A9 95 */	bl Free__7CMemoryFPCv
lbl_8007AFA0:
/* 8007AFA0 00077F00  7F A0 07 75 */	extsb. r0, r29
/* 8007AFA4 00077F04  41 82 00 0C */	beq lbl_8007AFB0
/* 8007AFA8 00077F08  38 61 00 40 */	addi r3, r1, 0x40
/* 8007AFAC 00077F0C  48 2C 2B 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8007AFB0:
/* 8007AFB0 00077F10  28 1F 00 00 */	cmplwi r31, 0
/* 8007AFB4 00077F14  41 82 00 10 */	beq lbl_8007AFC4
/* 8007AFB8 00077F18  7F C3 F3 78 */	mr r3, r30
/* 8007AFBC 00077F1C  7F E4 FB 78 */	mr r4, r31
/* 8007AFC0 00077F20  4B FD 1D 35 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_8007AFC4:
/* 8007AFC4 00077F24  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 8007AFC8 00077F28  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8007AFCC 00077F2C  7C 08 03 A6 */	mtlr r0
/* 8007AFD0 00077F30  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8007AFD4 00077F34  4E 80 00 20 */	blr

.global GenerateDeathExplosion__10CPatternedFR13CStateManager
GenerateDeathExplosion__10CPatternedFR13CStateManager:
/* 8007AFD8 00077F38  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8007AFDC 00077F3C  7C 08 02 A6 */	mflr r0
/* 8007AFE0 00077F40  90 01 01 44 */	stw r0, 0x144(r1)
/* 8007AFE4 00077F44  BF 01 01 20 */	stmw r24, 0x120(r1)
/* 8007AFE8 00077F48  7C 7C 1B 78 */	mr r28, r3
/* 8007AFEC 00077F4C  7C 9D 23 78 */	mr r29, r4
/* 8007AFF0 00077F50  81 83 00 00 */	lwz r12, 0(r3)
/* 8007AFF4 00077F54  81 8C 02 C8 */	lwz r12, 0x2c8(r12)
/* 8007AFF8 00077F58  7D 89 03 A6 */	mtctr r12
/* 8007AFFC 00077F5C  4E 80 04 21 */	bctrl
/* 8007B000 00077F60  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8007B004 00077F64  3B DC 05 30 */	addi r30, r28, 0x530
/* 8007B008 00077F68  7C 78 1B 78 */	mr r24, r3
/* 8007B00C 00077F6C  28 00 00 00 */	cmplwi r0, 0
/* 8007B010 00077F70  40 82 00 10 */	bne lbl_8007B020
/* 8007B014 00077F74  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8007B018 00077F78  28 00 00 00 */	cmplwi r0, 0
/* 8007B01C 00077F7C  41 82 03 74 */	beq lbl_8007B390
lbl_8007B020:
/* 8007B020 00077F80  38 61 00 EC */	addi r3, r1, 0xec
/* 8007B024 00077F84  38 9C 00 34 */	addi r4, r28, 0x34
/* 8007B028 00077F88  48 29 7B 4D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8007B02C 00077F8C  80 DC 00 64 */	lwz r6, 0x64(r28)
/* 8007B030 00077F90  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8007B034 00077F94  C0 1C 05 1C */	lfs f0, 0x51c(r28)
/* 8007B038 00077F98  38 9C 00 34 */	addi r4, r28, 0x34
/* 8007B03C 00077F9C  C0 26 00 08 */	lfs f1, 8(r6)
/* 8007B040 00077FA0  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8007B044 00077FA4  C0 66 00 04 */	lfs f3, 4(r6)
/* 8007B048 00077FA8  C0 5C 05 18 */	lfs f2, 0x518(r28)
/* 8007B04C 00077FAC  EC 81 00 32 */	fmuls f4, f1, f0
/* 8007B050 00077FB0  C0 26 00 00 */	lfs f1, 0(r6)
/* 8007B054 00077FB4  C0 1C 05 14 */	lfs f0, 0x514(r28)
/* 8007B058 00077FB8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8007B05C 00077FBC  D0 81 00 B8 */	stfs f4, 0xb8(r1)
/* 8007B060 00077FC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8007B064 00077FC4  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8007B068 00077FC8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8007B06C 00077FCC  48 29 7A 7D */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8007B070 00077FD0  C0 41 00 A4 */	lfs f2, 0xa4(r1)
/* 8007B074 00077FD4  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 8007B078 00077FD8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8007B07C 00077FDC  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 8007B080 00077FE0  D0 21 01 08 */	stfs f1, 0x108(r1)
/* 8007B084 00077FE4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8007B088 00077FE8  88 18 00 0C */	lbz r0, 0xc(r24)
/* 8007B08C 00077FEC  28 00 00 00 */	cmplwi r0, 0
/* 8007B090 00077FF0  41 82 01 84 */	beq lbl_8007B214
/* 8007B094 00077FF4  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 8007B098 00077FF8  3B 60 00 00 */	li r27, 0
/* 8007B09C 00077FFC  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007B0A0 00078000  3B 40 00 00 */	li r26, 0
/* 8007B0A4 00078004  3B 20 00 00 */	li r25, 0
/* 8007B0A8 00078008  38 60 01 00 */	li r3, 0x100
/* 8007B0AC 0007800C  38 A0 00 00 */	li r5, 0
/* 8007B0B0 00078010  48 29 A7 BD */	bl __nw__FUlPCcPCc
/* 8007B0B4 00078014  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B0B8 00078018  41 82 00 DC */	beq lbl_8007B194
/* 8007B0BC 0007801C  3B 21 00 7C */	addi r25, r1, 0x7c
/* 8007B0C0 00078020  7F 04 C3 78 */	mr r4, r24
/* 8007B0C4 00078024  7F 23 CB 78 */	mr r3, r25
/* 8007B0C8 00078028  48 2C 5D E1 */	bl __ct__6CTokenFRC6CToken
/* 8007B0CC 0007802C  7F 23 CB 78 */	mr r3, r25
/* 8007B0D0 00078030  48 2C 5D 3D */	bl GetObj__6CTokenFv
/* 8007B0D4 00078034  80 03 00 04 */	lwz r0, 4(r3)
/* 8007B0D8 00078038  7F A4 EB 78 */	mr r4, r29
/* 8007B0DC 0007803C  38 61 00 18 */	addi r3, r1, 0x18
/* 8007B0E0 00078040  3B 20 00 01 */	li r25, 1
/* 8007B0E4 00078044  90 01 00 84 */	stw r0, 0x84(r1)
/* 8007B0E8 00078048  4B FD 1F F5 */	bl AllocateUniqueId__13CStateManagerFv
/* 8007B0EC 0007804C  80 FC 00 04 */	lwz r7, 4(r28)
/* 8007B0F0 00078050  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8007B0F4 00078054  A0 81 00 18 */	lhz r4, 0x18(r1)
/* 8007B0F8 00078058  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8007B0FC 0007805C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8007B100 00078060  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8007B104 00078064  B0 81 00 1C */	sth r4, 0x1c(r1)
/* 8007B108 00078068  38 81 00 4C */	addi r4, r1, 0x4c
/* 8007B10C 0007806C  38 C1 00 50 */	addi r6, r1, 0x50
/* 8007B110 00078070  90 E1 00 48 */	stw r7, 0x48(r1)
/* 8007B114 00078074  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 8007B118 00078078  90 01 00 50 */	stw r0, 0x50(r1)
/* 8007B11C 0007807C  4B FD 63 69 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8007B120 00078080  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007B124 00078084  38 61 00 88 */	addi r3, r1, 0x88
/* 8007B128 00078088  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007B12C 0007808C  3B 40 00 01 */	li r26, 1
/* 8007B130 00078090  38 84 00 25 */	addi r4, r4, 0x25
/* 8007B134 00078094  4B F8 9B 85 */	bl string_l__4rstlFPCc
/* 8007B138 00078098  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 8007B13C 0007809C  3B 60 00 01 */	li r27, 1
/* 8007B140 000780A0  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007B144 000780A4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8007B148 000780A8  7C 00 00 34 */	cntlzw r0, r0
/* 8007B14C 000780AC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8007B150 000780B0  54 18 D9 7E */	srwi r24, r0, 5
/* 8007B154 000780B4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8007B158 000780B8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8007B15C 000780BC  48 2C EE 51 */	bl White__6CColorFv
/* 8007B160 000780C0  38 01 00 98 */	addi r0, r1, 0x98
/* 8007B164 000780C4  7F 0A C3 78 */	mr r10, r24
/* 8007B168 000780C8  90 01 00 08 */	stw r0, 8(r1)
/* 8007B16C 000780CC  38 81 00 7C */	addi r4, r1, 0x7c
/* 8007B170 000780D0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8007B174 000780D4  38 E1 00 D4 */	addi r7, r1, 0xd4
/* 8007B178 000780D8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007B17C 000780DC  7F E3 FB 78 */	mr r3, r31
/* 8007B180 000780E0  39 01 00 88 */	addi r8, r1, 0x88
/* 8007B184 000780E4  39 21 00 EC */	addi r9, r1, 0xec
/* 8007B188 000780E8  38 C0 00 01 */	li r6, 1
/* 8007B18C 000780EC  4B FD F9 6D */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 8007B190 000780F0  7C 7F 1B 78 */	mr r31, r3
lbl_8007B194:
/* 8007B194 000780F4  7F 20 07 75 */	extsb. r0, r25
/* 8007B198 000780F8  41 82 00 10 */	beq lbl_8007B1A8
/* 8007B19C 000780FC  38 61 00 7C */	addi r3, r1, 0x7c
/* 8007B1A0 00078100  38 80 00 00 */	li r4, 0
/* 8007B1A4 00078104  48 2C 5C 9D */	bl __dt__6CTokenFv
lbl_8007B1A8:
/* 8007B1A8 00078108  7F 40 07 75 */	extsb. r0, r26
/* 8007B1AC 0007810C  41 82 00 44 */	beq lbl_8007B1F0
/* 8007B1B0 00078110  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8007B1B4 00078114  80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 8007B1B8 00078118  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007B1BC 0007811C  90 61 00 34 */	stw r3, 0x34(r1)
/* 8007B1C0 00078120  7C 64 1B 78 */	mr r4, r3
/* 8007B1C4 00078124  7C 03 02 14 */	add r0, r3, r0
/* 8007B1C8 00078128  90 61 00 30 */	stw r3, 0x30(r1)
/* 8007B1CC 0007812C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8007B1D0 00078130  90 01 00 38 */	stw r0, 0x38(r1)
/* 8007B1D4 00078134  48 00 00 08 */	b lbl_8007B1DC
lbl_8007B1D8:
/* 8007B1D8 00078138  38 84 00 0C */	addi r4, r4, 0xc
lbl_8007B1DC:
/* 8007B1DC 0007813C  7C 04 00 40 */	cmplw r4, r0
/* 8007B1E0 00078140  40 82 FF F8 */	bne lbl_8007B1D8
/* 8007B1E4 00078144  28 03 00 00 */	cmplwi r3, 0
/* 8007B1E8 00078148  41 82 00 08 */	beq lbl_8007B1F0
/* 8007B1EC 0007814C  48 29 A7 45 */	bl Free__7CMemoryFPCv
lbl_8007B1F0:
/* 8007B1F0 00078150  7F 60 07 75 */	extsb. r0, r27
/* 8007B1F4 00078154  41 82 00 0C */	beq lbl_8007B200
/* 8007B1F8 00078158  38 61 00 88 */	addi r3, r1, 0x88
/* 8007B1FC 0007815C  48 2C 28 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8007B200:
/* 8007B200 00078160  28 1F 00 00 */	cmplwi r31, 0
/* 8007B204 00078164  41 82 00 10 */	beq lbl_8007B214
/* 8007B208 00078168  7F A3 EB 78 */	mr r3, r29
/* 8007B20C 0007816C  7F E4 FB 78 */	mr r4, r31
/* 8007B210 00078170  4B FD 1A E5 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_8007B214:
/* 8007B214 00078174  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 8007B218 00078178  28 00 00 00 */	cmplwi r0, 0
/* 8007B21C 0007817C  41 82 01 74 */	beq lbl_8007B390
/* 8007B220 00078180  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 8007B224 00078184  3B 20 00 00 */	li r25, 0
/* 8007B228 00078188  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007B22C 0007818C  3B 00 00 00 */	li r24, 0
/* 8007B230 00078190  3B 40 00 00 */	li r26, 0
/* 8007B234 00078194  38 60 01 00 */	li r3, 0x100
/* 8007B238 00078198  38 A0 00 00 */	li r5, 0
/* 8007B23C 0007819C  48 29 A6 31 */	bl __nw__FUlPCcPCc
/* 8007B240 000781A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B244 000781A4  41 82 00 CC */	beq lbl_8007B310
/* 8007B248 000781A8  3B 01 00 54 */	addi r24, r1, 0x54
/* 8007B24C 000781AC  7F C4 F3 78 */	mr r4, r30
/* 8007B250 000781B0  7F 03 C3 78 */	mr r3, r24
/* 8007B254 000781B4  48 2C 5C 55 */	bl __ct__6CTokenFRC6CToken
/* 8007B258 000781B8  7F 03 C3 78 */	mr r3, r24
/* 8007B25C 000781BC  48 2C 5B B1 */	bl GetObj__6CTokenFv
/* 8007B260 000781C0  80 03 00 04 */	lwz r0, 4(r3)
/* 8007B264 000781C4  7F A4 EB 78 */	mr r4, r29
/* 8007B268 000781C8  38 61 00 10 */	addi r3, r1, 0x10
/* 8007B26C 000781CC  3B 40 00 01 */	li r26, 1
/* 8007B270 000781D0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8007B274 000781D4  4B FD 1E 69 */	bl AllocateUniqueId__13CStateManagerFv
/* 8007B278 000781D8  80 FC 00 04 */	lwz r7, 4(r28)
/* 8007B27C 000781DC  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8007B280 000781E0  A0 81 00 10 */	lhz r4, 0x10(r1)
/* 8007B284 000781E4  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8007B288 000781E8  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8007B28C 000781EC  38 61 00 BC */	addi r3, r1, 0xbc
/* 8007B290 000781F0  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8007B294 000781F4  38 81 00 44 */	addi r4, r1, 0x44
/* 8007B298 000781F8  38 C1 00 50 */	addi r6, r1, 0x50
/* 8007B29C 000781FC  90 E1 00 40 */	stw r7, 0x40(r1)
/* 8007B2A0 00078200  90 E1 00 44 */	stw r7, 0x44(r1)
/* 8007B2A4 00078204  90 01 00 50 */	stw r0, 0x50(r1)
/* 8007B2A8 00078208  4B FD 61 DD */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8007B2AC 0007820C  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007B2B0 00078210  38 61 00 60 */	addi r3, r1, 0x60
/* 8007B2B4 00078214  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007B2B8 00078218  3B 00 00 01 */	li r24, 1
/* 8007B2BC 0007821C  38 84 00 25 */	addi r4, r4, 0x25
/* 8007B2C0 00078220  4B F8 99 F9 */	bl string_l__4rstlFPCc
/* 8007B2C4 00078224  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007B2C8 00078228  3B 20 00 01 */	li r25, 1
/* 8007B2CC 0007822C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8007B2D0 00078230  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8007B2D4 00078234  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8007B2D8 00078238  48 2C EC D5 */	bl White__6CColorFv
/* 8007B2DC 0007823C  38 01 00 70 */	addi r0, r1, 0x70
/* 8007B2E0 00078240  38 81 00 54 */	addi r4, r1, 0x54
/* 8007B2E4 00078244  90 01 00 08 */	stw r0, 8(r1)
/* 8007B2E8 00078248  38 A1 00 14 */	addi r5, r1, 0x14
/* 8007B2EC 0007824C  38 E1 00 BC */	addi r7, r1, 0xbc
/* 8007B2F0 00078250  39 01 00 60 */	addi r8, r1, 0x60
/* 8007B2F4 00078254  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007B2F8 00078258  7F E3 FB 78 */	mr r3, r31
/* 8007B2FC 0007825C  39 21 00 EC */	addi r9, r1, 0xec
/* 8007B300 00078260  38 C0 00 01 */	li r6, 1
/* 8007B304 00078264  39 40 00 00 */	li r10, 0
/* 8007B308 00078268  4B FD F5 D5 */	bl "__ct__10CExplosionFRC31TLockedToken<20CElectricDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 8007B30C 0007826C  7C 7F 1B 78 */	mr r31, r3
lbl_8007B310:
/* 8007B310 00078270  7F 40 07 75 */	extsb. r0, r26
/* 8007B314 00078274  41 82 00 10 */	beq lbl_8007B324
/* 8007B318 00078278  38 61 00 54 */	addi r3, r1, 0x54
/* 8007B31C 0007827C  38 80 00 00 */	li r4, 0
/* 8007B320 00078280  48 2C 5B 21 */	bl __dt__6CTokenFv
lbl_8007B324:
/* 8007B324 00078284  7F 00 07 75 */	extsb. r0, r24
/* 8007B328 00078288  41 82 00 44 */	beq lbl_8007B36C
/* 8007B32C 0007828C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8007B330 00078290  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 8007B334 00078294  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8007B338 00078298  90 61 00 24 */	stw r3, 0x24(r1)
/* 8007B33C 0007829C  7C 64 1B 78 */	mr r4, r3
/* 8007B340 000782A0  7C 03 02 14 */	add r0, r3, r0
/* 8007B344 000782A4  90 61 00 20 */	stw r3, 0x20(r1)
/* 8007B348 000782A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8007B34C 000782AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8007B350 000782B0  48 00 00 08 */	b lbl_8007B358
lbl_8007B354:
/* 8007B354 000782B4  38 84 00 0C */	addi r4, r4, 0xc
lbl_8007B358:
/* 8007B358 000782B8  7C 04 00 40 */	cmplw r4, r0
/* 8007B35C 000782BC  40 82 FF F8 */	bne lbl_8007B354
/* 8007B360 000782C0  28 03 00 00 */	cmplwi r3, 0
/* 8007B364 000782C4  41 82 00 08 */	beq lbl_8007B36C
/* 8007B368 000782C8  48 29 A5 C9 */	bl Free__7CMemoryFPCv
lbl_8007B36C:
/* 8007B36C 000782CC  7F 20 07 75 */	extsb. r0, r25
/* 8007B370 000782D0  41 82 00 0C */	beq lbl_8007B37C
/* 8007B374 000782D4  38 61 00 60 */	addi r3, r1, 0x60
/* 8007B378 000782D8  48 2C 27 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8007B37C:
/* 8007B37C 000782DC  28 1F 00 00 */	cmplwi r31, 0
/* 8007B380 000782E0  41 82 00 10 */	beq lbl_8007B390
/* 8007B384 000782E4  7F A3 EB 78 */	mr r3, r29
/* 8007B388 000782E8  7F E4 FB 78 */	mr r4, r31
/* 8007B38C 000782EC  4B FD 19 69 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_8007B390:
/* 8007B390 000782F0  BB 01 01 20 */	lmw r24, 0x120(r1)
/* 8007B394 000782F4  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8007B398 000782F8  7C 08 03 A6 */	mtlr r0
/* 8007B39C 000782FC  38 21 01 40 */	addi r1, r1, 0x140
/* 8007B3A0 00078300  4E 80 00 20 */	blr

.global Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState:
/* 8007B3A4 00078304  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8007B3A8 00078308  7C 08 02 A6 */	mflr r0
/* 8007B3AC 0007830C  90 01 01 44 */	stw r0, 0x144(r1)
/* 8007B3B0 00078310  93 E1 01 3C */	stw r31, 0x13c(r1)
/* 8007B3B4 00078314  7C BF 2B 78 */	mr r31, r5
/* 8007B3B8 00078318  93 C1 01 38 */	stw r30, 0x138(r1)
/* 8007B3BC 0007831C  7C DE 33 78 */	mr r30, r6
/* 8007B3C0 00078320  93 A1 01 34 */	stw r29, 0x134(r1)
/* 8007B3C4 00078324  7C 9D 23 78 */	mr r29, r4
/* 8007B3C8 00078328  93 81 01 30 */	stw r28, 0x130(r1)
/* 8007B3CC 0007832C  7C 7C 1B 78 */	mr r28, r3
/* 8007B3D0 00078330  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8007B3D4 00078334  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007B3D8 00078338  41 82 04 2C */	beq lbl_8007B804
/* 8007B3DC 0007833C  80 BC 04 50 */	lwz r5, 0x450(r28)
/* 8007B3E0 00078340  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007B3E4 00078344  C0 25 03 20 */	lfs f1, 0x320(r5)
/* 8007B3E8 00078348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007B3EC 0007834C  41 81 00 C0 */	bgt lbl_8007B4AC
/* 8007B3F0 00078350  81 83 00 00 */	lwz r12, 0(r3)
/* 8007B3F4 00078354  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8007B3F8 00078358  7D 89 03 A6 */	mtctr r12
/* 8007B3FC 0007835C  4E 80 04 21 */	bctrl
/* 8007B400 00078360  C0 5C 03 E4 */	lfs f2, 0x3e4(r28)
/* 8007B404 00078364  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007B408 00078368  C0 1C 03 DC */	lfs f0, 0x3dc(r28)
/* 8007B40C 0007836C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8007B410 00078370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007B414 00078374  4C 41 13 82 */	cror 2, 1, 2
/* 8007B418 00078378  7C 60 00 26 */	mfcr r3
/* 8007B41C 0007837C  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 8007B420 00078380  50 60 4E 72 */	rlwimi r0, r3, 9, 0x19, 0x19
/* 8007B424 00078384  98 1C 04 02 */	stb r0, 0x402(r28)
/* 8007B428 00078388  88 1C 04 02 */	lbz r0, 0x402(r28)
/* 8007B42C 0007838C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007B430 00078390  41 82 00 38 */	beq lbl_8007B468
/* 8007B434 00078394  88 1C 05 58 */	lbz r0, 0x558(r28)
/* 8007B438 00078398  28 00 00 00 */	cmplwi r0, 0
/* 8007B43C 0007839C  41 82 00 2C */	beq lbl_8007B468
/* 8007B440 000783A0  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8007B444 000783A4  48 0B EC 89 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 8007B448 000783A8  C0 02 89 34 */	lfs f0, lbl_805AA654@sda21(r2)
/* 8007B44C 000783AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007B450 000783B0  40 81 00 18 */	ble lbl_8007B468
/* 8007B454 000783B4  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 8007B458 000783B8  38 60 00 01 */	li r3, 1
/* 8007B45C 000783BC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007B460 000783C0  98 1C 04 00 */	stb r0, 0x400(r28)
/* 8007B464 000783C4  48 00 00 48 */	b lbl_8007B4AC
lbl_8007B468:
/* 8007B468 000783C8  7F 83 E3 78 */	mr r3, r28
/* 8007B46C 000783CC  7F A4 EB 78 */	mr r4, r29
/* 8007B470 000783D0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8007B474 000783D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8007B478 000783D8  7D 89 03 A6 */	mtctr r12
/* 8007B47C 000783DC  4E 80 04 21 */	bctrl
/* 8007B480 000783E0  C0 5C 03 E4 */	lfs f2, 0x3e4(r28)
/* 8007B484 000783E4  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007B488 000783E8  C0 1C 03 D8 */	lfs f0, 0x3d8(r28)
/* 8007B48C 000783EC  EC 22 08 28 */	fsubs f1, f2, f1
/* 8007B490 000783F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007B494 000783F4  4C 41 13 82 */	cror 2, 1, 2
/* 8007B498 000783F8  40 82 00 14 */	bne lbl_8007B4AC
/* 8007B49C 000783FC  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 8007B4A0 00078400  38 60 00 01 */	li r3, 1
/* 8007B4A4 00078404  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8007B4A8 00078408  98 1C 04 00 */	stb r0, 0x400(r28)
lbl_8007B4AC:
/* 8007B4AC 0007840C  88 7C 04 00 */	lbz r3, 0x400(r28)
/* 8007B4B0 00078410  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 8007B4B4 00078414  40 82 00 0C */	bne lbl_8007B4C0
/* 8007B4B8 00078418  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 8007B4BC 0007841C  41 82 01 14 */	beq lbl_8007B5D0
lbl_8007B4C0:
/* 8007B4C0 00078420  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 8007B4C4 00078424  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8007B4C8 00078428  41 82 01 64 */	beq lbl_8007B62C
/* 8007B4CC 0007842C  C0 1C 03 E0 */	lfs f0, 0x3e0(r28)
/* 8007B4D0 00078430  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 8007B4D4 00078434  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8007B4D8 00078438  4C 40 13 82 */	cror 2, 0, 2
/* 8007B4DC 0007843C  40 82 01 50 */	bne lbl_8007B62C
/* 8007B4E0 00078440  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007B4E4 00078444  38 00 00 00 */	li r0, 0
/* 8007B4E8 00078448  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007B4EC 0007844C  40 82 00 1C */	bne lbl_8007B508
/* 8007B4F0 00078450  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8007B4F4 00078454  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007B4F8 00078458  40 82 00 10 */	bne lbl_8007B508
/* 8007B4FC 0007845C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8007B500 00078460  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8007B504 00078464  41 82 00 08 */	beq lbl_8007B50C
lbl_8007B508:
/* 8007B508 00078468  38 00 00 01 */	li r0, 1
lbl_8007B50C:
/* 8007B50C 0007846C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8007B510 00078470  41 82 01 1C */	beq lbl_8007B62C
/* 8007B514 00078474  C0 DC 00 60 */	lfs f6, 0x60(r28)
/* 8007B518 00078478  38 61 00 70 */	addi r3, r1, 0x70
/* 8007B51C 0007847C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8007B520 00078480  38 81 00 08 */	addi r4, r1, 8
/* 8007B524 00078484  C0 BC 00 50 */	lfs f5, 0x50(r28)
/* 8007B528 00078488  C0 5C 00 40 */	lfs f2, 0x40(r28)
/* 8007B52C 0007848C  EC 66 00 28 */	fsubs f3, f6, f0
/* 8007B530 00078490  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8007B534 00078494  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8007B538 00078498  EC 85 00 28 */	fsubs f4, f5, f0
/* 8007B53C 0007849C  C0 02 89 58 */	lfs f0, lbl_805AA678@sda21(r2)
/* 8007B540 000784A0  EC 22 08 28 */	fsubs f1, f2, f1
/* 8007B544 000784A4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8007B548 000784A8  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 8007B54C 000784AC  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 8007B550 000784B0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8007B554 000784B4  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8007B558 000784B8  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 8007B55C 000784BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8007B560 000784C0  48 29 83 E1 */	bl RotateX__12CTransform4fFRC9CRelAngle
/* 8007B564 000784C4  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 8007B568 000784C8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8007B56C 000784CC  38 C4 66 F4 */	addi r6, r4, sUpVector__9CVector3f@l
/* 8007B570 000784D0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8007B574 000784D4  38 81 00 28 */	addi r4, r1, 0x28
/* 8007B578 000784D8  48 29 85 99 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8007B57C 000784DC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8007B580 000784E0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8007B584 000784E4  38 A1 00 70 */	addi r5, r1, 0x70
/* 8007B588 000784E8  48 29 73 C9 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 8007B58C 000784EC  38 61 01 00 */	addi r3, r1, 0x100
/* 8007B590 000784F0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 8007B594 000784F4  48 29 75 E1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8007B598 000784F8  38 7C 00 34 */	addi r3, r28, 0x34
/* 8007B59C 000784FC  38 81 01 00 */	addi r4, r1, 0x100
/* 8007B5A0 00078500  48 29 75 A1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8007B5A4 00078504  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 8007B5A8 00078508  38 60 00 01 */	li r3, 1
/* 8007B5AC 0007850C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8007B5B0 00078510  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 8007B5B4 00078514  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 8007B5B8 00078518  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8007B5BC 0007851C  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 8007B5C0 00078520  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 8007B5C4 00078524  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8007B5C8 00078528  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 8007B5CC 0007852C  48 00 00 60 */	b lbl_8007B62C
lbl_8007B5D0:
/* 8007B5D0 00078530  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007B5D4 00078534  38 61 00 0C */	addi r3, r1, 0xc
/* 8007B5D8 00078538  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007B5DC 0007853C  38 84 00 1A */	addi r4, r4, 0x1a
/* 8007B5E0 00078540  4B F8 96 D9 */	bl string_l__4rstlFPCc
/* 8007B5E4 00078544  7F 83 E3 78 */	mr r3, r28
/* 8007B5E8 00078548  48 02 73 11 */	bl GetStateMachine__3CAiFv
/* 8007B5EC 0007854C  7C 66 1B 78 */	mr r6, r3
/* 8007B5F0 00078550  7F A4 EB 78 */	mr r4, r29
/* 8007B5F4 00078554  7F 85 E3 78 */	mr r5, r28
/* 8007B5F8 00078558  38 7C 03 30 */	addi r3, r28, 0x330
/* 8007B5FC 0007855C  38 E1 00 0C */	addi r7, r1, 0xc
/* 8007B600 00078560  48 00 46 05 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8007B604 00078564  38 61 00 0C */	addi r3, r1, 0xc
/* 8007B608 00078568  48 2C 24 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8007B60C 0007856C  7F 83 E3 78 */	mr r3, r28
/* 8007B610 00078570  7F A5 EB 78 */	mr r5, r29
/* 8007B614 00078574  38 80 00 25 */	li r4, 0x25
/* 8007B618 00078578  4B FD 89 69 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8007B61C 0007857C  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 8007B620 00078580  38 60 00 00 */	li r3, 0
/* 8007B624 00078584  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8007B628 00078588  98 1C 03 28 */	stb r0, 0x328(r28)
lbl_8007B62C:
/* 8007B62C 0007858C  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 8007B630 00078590  38 60 00 00 */	li r3, 0
/* 8007B634 00078594  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8007B638 00078598  38 80 00 0E */	li r4, 0xe
/* 8007B63C 0007859C  98 1C 04 00 */	stb r0, 0x400(r28)
/* 8007B640 000785A0  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8007B644 000785A4  48 0B F5 71 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 8007B648 000785A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007B64C 000785AC  41 82 00 E8 */	beq lbl_8007B734
/* 8007B650 000785B0  80 BC 04 50 */	lwz r5, 0x450(r28)
/* 8007B654 000785B4  80 05 02 F4 */	lwz r0, 0x2f4(r5)
/* 8007B658 000785B8  2C 00 00 03 */	cmpwi r0, 3
/* 8007B65C 000785BC  40 82 00 D8 */	bne lbl_8007B734
/* 8007B660 000785C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8007B664 000785C4  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007B668 000785C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8007B66C 000785CC  38 84 AA 68 */	addi r4, r4, lbl_803DAA68@l
/* 8007B670 000785D0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007B674 000785D4  FC A0 10 50 */	fneg f5, f2
/* 8007B678 000785D8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007B67C 000785DC  C4 43 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r3)
/* 8007B680 000785E0  FC 80 08 50 */	fneg f4, f1
/* 8007B684 000785E4  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8007B688 000785E8  FC 60 00 50 */	fneg f3, f0
/* 8007B68C 000785EC  C0 23 00 04 */	lfs f1, 4(r3)
/* 8007B690 000785F0  38 C0 00 0F */	li r6, 0xf
/* 8007B694 000785F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007B698 000785F8  38 00 00 00 */	li r0, 0
/* 8007B69C 000785FC  3C 60 80 3E */	lis r3, lbl_803DAA5C@ha
/* 8007B6A0 00078600  3B E5 00 04 */	addi r31, r5, 4
/* 8007B6A4 00078604  90 C1 00 50 */	stw r6, 0x50(r1)
/* 8007B6A8 00078608  38 A3 AA 5C */	addi r5, r3, lbl_803DAA5C@l
/* 8007B6AC 0007860C  38 80 00 0F */	li r4, 0xf
/* 8007B6B0 00078610  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8007B6B4 00078614  7F E3 FB 78 */	mr r3, r31
/* 8007B6B8 00078618  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 8007B6BC 0007861C  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8007B6C0 00078620  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 8007B6C4 00078624  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8007B6C8 00078628  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8007B6CC 0007862C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8007B6D0 00078630  98 01 00 6C */	stb r0, 0x6c(r1)
/* 8007B6D4 00078634  48 0B 5D 65 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007B6D8 00078638  80 01 00 50 */	lwz r0, 0x50(r1)
/* 8007B6DC 0007863C  3C 60 80 3E */	lis r3, lbl_803DAA5C@ha
/* 8007B6E0 00078640  38 83 AA 5C */	addi r4, r3, lbl_803DAA5C@l
/* 8007B6E4 00078644  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B6E8 00078648  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8007B6EC 0007864C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007B6F0 00078650  80 61 00 54 */	lwz r3, 0x54(r1)
/* 8007B6F4 00078654  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 8007B6F8 00078658  90 7F 01 B4 */	stw r3, 0x1b4(r31)
/* 8007B6FC 0007865C  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 8007B700 00078660  90 BF 01 B8 */	stw r5, 0x1b8(r31)
/* 8007B704 00078664  80 A1 00 60 */	lwz r5, 0x60(r1)
/* 8007B708 00078668  90 7F 01 BC */	stw r3, 0x1bc(r31)
/* 8007B70C 0007866C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 8007B710 00078670  90 BF 01 C0 */	stw r5, 0x1c0(r31)
/* 8007B714 00078674  80 A1 00 68 */	lwz r5, 0x68(r1)
/* 8007B718 00078678  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 8007B71C 0007867C  88 61 00 6C */	lbz r3, 0x6c(r1)
/* 8007B720 00078680  90 BF 01 C8 */	stw r5, 0x1c8(r31)
/* 8007B724 00078684  90 81 00 4C */	stw r4, 0x4c(r1)
/* 8007B728 00078688  98 7F 01 CC */	stb r3, 0x1cc(r31)
/* 8007B72C 0007868C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8007B730 00078690  48 00 00 B8 */	b lbl_8007B7E8
lbl_8007B734:
/* 8007B734 00078694  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8007B738 00078698  38 80 00 00 */	li r4, 0
/* 8007B73C 0007869C  48 0B F4 79 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 8007B740 000786A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007B744 000786A4  41 82 00 A4 */	beq lbl_8007B7E8
/* 8007B748 000786A8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8007B74C 000786AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B750 000786B0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8007B754 000786B4  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8007B758 000786B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8007B75C 000786BC  FC 40 10 50 */	fneg f2, f2
/* 8007B760 000786C0  FC 20 08 50 */	fneg f1, f1
/* 8007B764 000786C4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8007B768 000786C8  FC 00 00 50 */	fneg f0, f0
/* 8007B76C 000786CC  3C 80 80 3E */	lis r4, lbl_803DAA50@ha
/* 8007B770 000786D0  38 C0 00 03 */	li r6, 3
/* 8007B774 000786D4  38 00 00 01 */	li r0, 1
/* 8007B778 000786D8  3B E3 00 04 */	addi r31, r3, 4
/* 8007B77C 000786DC  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8007B780 000786E0  38 A4 AA 50 */	addi r5, r4, lbl_803DAA50@l
/* 8007B784 000786E4  38 80 00 03 */	li r4, 3
/* 8007B788 000786E8  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8007B78C 000786EC  7F E3 FB 78 */	mr r3, r31
/* 8007B790 000786F0  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8007B794 000786F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8007B798 000786F8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8007B79C 000786FC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8007B7A0 00078700  90 01 00 48 */	stw r0, 0x48(r1)
/* 8007B7A4 00078704  48 0B 5C 95 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007B7A8 00078708  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8007B7AC 0007870C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 8007B7B0 00078710  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 8007B7B4 00078714  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B7B8 00078718  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 8007B7BC 0007871C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007B7C0 00078720  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8007B7C4 00078724  80 61 00 40 */	lwz r3, 0x40(r1)
/* 8007B7C8 00078728  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 8007B7CC 0007872C  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 8007B7D0 00078730  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 8007B7D4 00078734  80 61 00 48 */	lwz r3, 0x48(r1)
/* 8007B7D8 00078738  90 BF 00 EC */	stw r5, 0xec(r31)
/* 8007B7DC 0007873C  90 81 00 34 */	stw r4, 0x34(r1)
/* 8007B7E0 00078740  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 8007B7E4 00078744  90 01 00 34 */	stw r0, 0x34(r1)
lbl_8007B7E8:
/* 8007B7E8 00078748  2C 1E FF FF */	cmpwi r30, -1
/* 8007B7EC 0007874C  41 82 00 18 */	beq lbl_8007B804
/* 8007B7F0 00078750  7F 83 E3 78 */	mr r3, r28
/* 8007B7F4 00078754  7F C4 F3 78 */	mr r4, r30
/* 8007B7F8 00078758  7F A5 EB 78 */	mr r5, r29
/* 8007B7FC 0007875C  38 C0 FF FF */	li r6, -1
/* 8007B800 00078760  4B FD 58 C1 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8007B804:
/* 8007B804 00078764  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8007B808 00078768  83 E1 01 3C */	lwz r31, 0x13c(r1)
/* 8007B80C 0007876C  83 C1 01 38 */	lwz r30, 0x138(r1)
/* 8007B810 00078770  83 A1 01 34 */	lwz r29, 0x134(r1)
/* 8007B814 00078774  83 81 01 30 */	lwz r28, 0x130(r1)
/* 8007B818 00078778  7C 08 03 A6 */	mtlr r0
/* 8007B81C 0007877C  38 21 01 40 */	addi r1, r1, 0x140
/* 8007B820 00078780  4E 80 00 20 */	blr

.global __dt__15CBCKnockDownCmd
__dt__15CBCKnockDownCmd:
/* 8007B824 00078784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B828 00078788  7C 08 02 A6 */	mflr r0
/* 8007B82C 0007878C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B830 00078790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B834 00078794  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B838 00078798  41 82 00 30 */	beq lbl_8007B868
/* 8007B83C 0007879C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 8007B840 000787A0  38 03 AA 50 */	addi r0, r3, lbl_803DAA50@l
/* 8007B844 000787A4  90 1F 00 00 */	stw r0, 0(r31)
/* 8007B848 000787A8  41 82 00 10 */	beq lbl_8007B858
/* 8007B84C 000787AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B850 000787B0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007B854 000787B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007B858:
/* 8007B858 000787B8  7C 80 07 35 */	extsh. r0, r4
/* 8007B85C 000787BC  40 81 00 0C */	ble lbl_8007B868
/* 8007B860 000787C0  7F E3 FB 78 */	mr r3, r31
/* 8007B864 000787C4  48 29 A0 CD */	bl Free__7CMemoryFPCv
lbl_8007B868:
/* 8007B868 000787C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B86C 000787CC  7F E3 FB 78 */	mr r3, r31
/* 8007B870 000787D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B874 000787D4  7C 08 03 A6 */	mtlr r0
/* 8007B878 000787D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B87C 000787DC  4E 80 00 20 */	blr

.global __dt__12CBCHurledCmd
__dt__12CBCHurledCmd:
/* 8007B880 000787E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B884 000787E4  7C 08 02 A6 */	mflr r0
/* 8007B888 000787E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B88C 000787EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B890 000787F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B894 000787F4  41 82 00 30 */	beq lbl_8007B8C4
/* 8007B898 000787F8  3C 60 80 3E */	lis r3, lbl_803DAA5C@ha
/* 8007B89C 000787FC  38 03 AA 5C */	addi r0, r3, lbl_803DAA5C@l
/* 8007B8A0 00078800  90 1F 00 00 */	stw r0, 0(r31)
/* 8007B8A4 00078804  41 82 00 10 */	beq lbl_8007B8B4
/* 8007B8A8 00078808  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B8AC 0007880C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007B8B0 00078810  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007B8B4:
/* 8007B8B4 00078814  7C 80 07 35 */	extsh. r0, r4
/* 8007B8B8 00078818  40 81 00 0C */	ble lbl_8007B8C4
/* 8007B8BC 0007881C  7F E3 FB 78 */	mr r3, r31
/* 8007B8C0 00078820  48 29 A0 71 */	bl Free__7CMemoryFPCv
lbl_8007B8C4:
/* 8007B8C4 00078824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B8C8 00078828  7F E3 FB 78 */	mr r3, r31
/* 8007B8CC 0007882C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B8D0 00078830  7C 08 03 A6 */	mtlr r0
/* 8007B8D4 00078834  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B8D8 00078838  4E 80 00 20 */	blr

.global __dt__13CBodyStateCmdFv
__dt__13CBodyStateCmdFv:
/* 8007B8DC 0007883C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B8E0 00078840  7C 08 02 A6 */	mflr r0
/* 8007B8E4 00078844  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B8E8 00078848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B8EC 0007884C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B8F0 00078850  41 82 00 1C */	beq lbl_8007B90C
/* 8007B8F4 00078854  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8007B8F8 00078858  7C 80 07 35 */	extsh. r0, r4
/* 8007B8FC 0007885C  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 8007B900 00078860  90 1F 00 00 */	stw r0, 0(r31)
/* 8007B904 00078864  40 81 00 08 */	ble lbl_8007B90C
/* 8007B908 00078868  48 29 A0 29 */	bl Free__7CMemoryFPCv
lbl_8007B90C:
/* 8007B90C 0007886C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B910 00078870  7F E3 FB 78 */	mr r3, r31
/* 8007B914 00078874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B918 00078878  7C 08 03 A6 */	mtlr r0
/* 8007B91C 0007887C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B920 00078880  4E 80 00 20 */	blr

.global sub_8007b924
sub_8007b924:
/* 8007B924 00078884  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007B928 00078888  7C 08 02 A6 */	mflr r0
/* 8007B92C 0007888C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007B930 00078890  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007B934 00078894  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007B938 00078898  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 8007B93C 0007889C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007B940 000788A0  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8007B944 000788A4  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 8007B948 000788A8  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8007B94C 000788AC  3B E6 00 04 */	addi r31, r6, 4
/* 8007B950 000788B0  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8007B954 000788B4  38 60 00 04 */	li r3, 4
/* 8007B958 000788B8  90 01 00 08 */	stw r0, 8(r1)
/* 8007B95C 000788BC  38 04 AA 44 */	addi r0, r4, lbl_803DAA44@l
/* 8007B960 000788C0  38 80 00 04 */	li r4, 4
/* 8007B964 000788C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007B968 000788C8  7F E3 FB 78 */	mr r3, r31
/* 8007B96C 000788CC  90 01 00 08 */	stw r0, 8(r1)
/* 8007B970 000788D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8007B974 000788D4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8007B978 000788D8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8007B97C 000788DC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8007B980 000788E0  48 0B 5A B9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007B984 000788E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007B988 000788E8  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8007B98C 000788EC  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 8007B990 000788F0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007B994 000788F4  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 8007B998 000788F8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007B99C 000788FC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007B9A0 00078900  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007B9A4 00078904  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 8007B9A8 00078908  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8007B9AC 0007890C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8007B9B0 00078910  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8007B9B4 00078914  90 BF 01 04 */	stw r5, 0x104(r31)
/* 8007B9B8 00078918  90 81 00 08 */	stw r4, 8(r1)
/* 8007B9BC 0007891C  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8007B9C0 00078920  90 01 00 08 */	stw r0, 8(r1)
/* 8007B9C4 00078924  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007B9C8 00078928  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007B9CC 0007892C  7C 08 03 A6 */	mtlr r0
/* 8007B9D0 00078930  38 21 00 30 */	addi r1, r1, 0x30
/* 8007B9D4 00078934  4E 80 00 20 */	blr

.global __dt__15CBCKnockBackCmd
__dt__15CBCKnockBackCmd:
/* 8007B9D8 00078938  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B9DC 0007893C  7C 08 02 A6 */	mflr r0
/* 8007B9E0 00078940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B9E4 00078944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B9E8 00078948  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007B9EC 0007894C  41 82 00 30 */	beq lbl_8007BA1C
/* 8007B9F0 00078950  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8007B9F4 00078954  38 03 AA 44 */	addi r0, r3, lbl_803DAA44@l
/* 8007B9F8 00078958  90 1F 00 00 */	stw r0, 0(r31)
/* 8007B9FC 0007895C  41 82 00 10 */	beq lbl_8007BA0C
/* 8007BA00 00078960  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BA04 00078964  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BA08 00078968  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BA0C:
/* 8007BA0C 0007896C  7C 80 07 35 */	extsh. r0, r4
/* 8007BA10 00078970  40 81 00 0C */	ble lbl_8007BA1C
/* 8007BA14 00078974  7F E3 FB 78 */	mr r3, r31
/* 8007BA18 00078978  48 29 9F 19 */	bl Free__7CMemoryFPCv
lbl_8007BA1C:
/* 8007BA1C 0007897C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BA20 00078980  7F E3 FB 78 */	mr r3, r31
/* 8007BA24 00078984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BA28 00078988  7C 08 03 A6 */	mtlr r0
/* 8007BA2C 0007898C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BA30 00078990  4E 80 00 20 */	blr

.global __dt__21CBCLoopHitReactionCmd
__dt__21CBCLoopHitReactionCmd:
/* 8007BA34 00078994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007BA38 00078998  7C 08 02 A6 */	mflr r0
/* 8007BA3C 0007899C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007BA40 000789A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007BA44 000789A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007BA48 000789A8  41 82 00 30 */	beq lbl_8007BA78
/* 8007BA4C 000789AC  3C 60 80 3E */	lis r3, lbl_803DAA38@ha
/* 8007BA50 000789B0  38 03 AA 38 */	addi r0, r3, lbl_803DAA38@l
/* 8007BA54 000789B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8007BA58 000789B8  41 82 00 10 */	beq lbl_8007BA68
/* 8007BA5C 000789BC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BA60 000789C0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BA64 000789C4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BA68:
/* 8007BA68 000789C8  7C 80 07 35 */	extsh. r0, r4
/* 8007BA6C 000789CC  40 81 00 0C */	ble lbl_8007BA78
/* 8007BA70 000789D0  7F E3 FB 78 */	mr r3, r31
/* 8007BA74 000789D4  48 29 9E BD */	bl Free__7CMemoryFPCv
lbl_8007BA78:
/* 8007BA78 000789D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BA7C 000789DC  7F E3 FB 78 */	mr r3, r31
/* 8007BA80 000789E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BA84 000789E4  7C 08 03 A6 */	mtlr r0
/* 8007BA88 000789E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BA8C 000789EC  4E 80 00 20 */	blr

.global TryLoopReaction__10CPatternedFR13CStateManageri
TryLoopReaction__10CPatternedFR13CStateManageri:
/* 8007BA90 000789F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007BA94 000789F4  7C 08 02 A6 */	mflr r0
/* 8007BA98 000789F8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007BA9C 000789FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007BAA0 00078A00  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007BAA4 00078A04  38 80 00 08 */	li r4, 8
/* 8007BAA8 00078A08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007BAAC 00078A0C  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8007BAB0 00078A10  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 8007BAB4 00078A14  90 01 00 08 */	stw r0, 8(r1)
/* 8007BAB8 00078A18  38 03 AA 2C */	addi r0, r3, lbl_803DAA2C@l
/* 8007BABC 00078A1C  38 60 00 08 */	li r3, 8
/* 8007BAC0 00078A20  3B E6 00 04 */	addi r31, r6, 4
/* 8007BAC4 00078A24  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007BAC8 00078A28  7F E3 FB 78 */	mr r3, r31
/* 8007BACC 00078A2C  90 01 00 08 */	stw r0, 8(r1)
/* 8007BAD0 00078A30  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007BAD4 00078A34  48 0B 59 65 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007BAD8 00078A38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007BADC 00078A3C  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 8007BAE0 00078A40  38 83 AA 2C */	addi r4, r3, lbl_803DAA2C@l
/* 8007BAE4 00078A44  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BAE8 00078A48  90 1F 01 58 */	stw r0, 0x158(r31)
/* 8007BAEC 00078A4C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BAF0 00078A50  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007BAF4 00078A54  90 81 00 08 */	stw r4, 8(r1)
/* 8007BAF8 00078A58  90 7F 01 5C */	stw r3, 0x15c(r31)
/* 8007BAFC 00078A5C  90 01 00 08 */	stw r0, 8(r1)
/* 8007BB00 00078A60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007BB04 00078A64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007BB08 00078A68  7C 08 03 A6 */	mtlr r0
/* 8007BB0C 00078A6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007BB10 00078A70  4E 80 00 20 */	blr

.global __dt__18CBCLoopReactionCmd
__dt__18CBCLoopReactionCmd:
/* 8007BB14 00078A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007BB18 00078A78  7C 08 02 A6 */	mflr r0
/* 8007BB1C 00078A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007BB20 00078A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007BB24 00078A84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007BB28 00078A88  41 82 00 30 */	beq lbl_8007BB58
/* 8007BB2C 00078A8C  3C 60 80 3E */	lis r3, lbl_803DAA2C@ha
/* 8007BB30 00078A90  38 03 AA 2C */	addi r0, r3, lbl_803DAA2C@l
/* 8007BB34 00078A94  90 1F 00 00 */	stw r0, 0(r31)
/* 8007BB38 00078A98  41 82 00 10 */	beq lbl_8007BB48
/* 8007BB3C 00078A9C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BB40 00078AA0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BB44 00078AA4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BB48:
/* 8007BB48 00078AA8  7C 80 07 35 */	extsh. r0, r4
/* 8007BB4C 00078AAC  40 81 00 0C */	ble lbl_8007BB58
/* 8007BB50 00078AB0  7F E3 FB 78 */	mr r3, r31
/* 8007BB54 00078AB4  48 29 9D DD */	bl Free__7CMemoryFPCv
lbl_8007BB58:
/* 8007BB58 00078AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BB5C 00078ABC  7F E3 FB 78 */	mr r3, r31
/* 8007BB60 00078AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BB64 00078AC4  7C 08 03 A6 */	mtlr r0
/* 8007BB68 00078AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BB6C 00078ACC  4E 80 00 20 */	blr

.global TryTurn__10CPatternedFR13CStateManageri
TryTurn__10CPatternedFR13CStateManageri:
/* 8007BB70 00078AD0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8007BB74 00078AD4  7C 08 02 A6 */	mflr r0
/* 8007BB78 00078AD8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8007BB7C 00078ADC  38 81 00 08 */	addi r4, r1, 8
/* 8007BB80 00078AE0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8007BB84 00078AE4  C0 63 02 E4 */	lfs f3, 0x2e4(r3)
/* 8007BB88 00078AE8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8007BB8C 00078AEC  C0 43 02 E8 */	lfs f2, 0x2e8(r3)
/* 8007BB90 00078AF0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8007BB94 00078AF4  EC 63 08 28 */	fsubs f3, f3, f1
/* 8007BB98 00078AF8  C0 23 02 E0 */	lfs f1, 0x2e0(r3)
/* 8007BB9C 00078AFC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8007BBA0 00078B00  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8007BBA4 00078B04  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8007BBA8 00078B08  38 61 00 14 */	addi r3, r1, 0x14
/* 8007BBAC 00078B0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007BBB0 00078B10  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8007BBB4 00078B14  3B E5 00 04 */	addi r31, r5, 4
/* 8007BBB8 00078B18  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8007BBBC 00078B1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8007BBC0 00078B20  48 29 8C 91 */	bl AsNormalized__9CVector3fCFv
/* 8007BBC4 00078B24  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007BBC8 00078B28  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 8007BBCC 00078B2C  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8007BBD0 00078B30  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8007BBD4 00078B34  C0 C5 00 00 */	lfs f6, 0(r5)
/* 8007BBD8 00078B38  7F E3 FB 78 */	mr r3, r31
/* 8007BBDC 00078B3C  C0 A5 00 04 */	lfs f5, 4(r5)
/* 8007BBE0 00078B40  38 81 00 20 */	addi r4, r1, 0x20
/* 8007BBE4 00078B44  C0 85 00 08 */	lfs f4, 8(r5)
/* 8007BBE8 00078B48  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8007BBEC 00078B4C  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007BBF0 00078B50  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 8007BBF4 00078B54  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8007BBF8 00078B58  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 8007BBFC 00078B5C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8007BC00 00078B60  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8007BC04 00078B64  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8007BC08 00078B68  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8007BC0C 00078B6C  48 0B 5B 0D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8007BC10 00078B70  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8007BC14 00078B74  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8007BC18 00078B78  7C 08 03 A6 */	mtlr r0
/* 8007BC1C 00078B7C  38 21 00 50 */	addi r1, r1, 0x50
/* 8007BC20 00078B80  4E 80 00 20 */	blr

.global TryGetUp__10CPatternedFR13CStateManageri
TryGetUp__10CPatternedFR13CStateManageri:
/* 8007BC24 00078B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007BC28 00078B88  7C 08 02 A6 */	mflr r0
/* 8007BC2C 00078B8C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007BC30 00078B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007BC34 00078B94  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007BC38 00078B98  38 80 00 00 */	li r4, 0
/* 8007BC3C 00078B9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007BC40 00078BA0  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8007BC44 00078BA4  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8007BC48 00078BA8  90 01 00 08 */	stw r0, 8(r1)
/* 8007BC4C 00078BAC  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 8007BC50 00078BB0  38 60 00 00 */	li r3, 0
/* 8007BC54 00078BB4  3B E6 00 04 */	addi r31, r6, 4
/* 8007BC58 00078BB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007BC5C 00078BBC  7F E3 FB 78 */	mr r3, r31
/* 8007BC60 00078BC0  90 01 00 08 */	stw r0, 8(r1)
/* 8007BC64 00078BC4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007BC68 00078BC8  48 0B 57 D1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007BC6C 00078BCC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007BC70 00078BD0  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8007BC74 00078BD4  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 8007BC78 00078BD8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BC7C 00078BDC  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8007BC80 00078BE0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BC84 00078BE4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007BC88 00078BE8  90 81 00 08 */	stw r4, 8(r1)
/* 8007BC8C 00078BEC  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 8007BC90 00078BF0  90 01 00 08 */	stw r0, 8(r1)
/* 8007BC94 00078BF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007BC98 00078BF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007BC9C 00078BFC  7C 08 03 A6 */	mtlr r0
/* 8007BCA0 00078C00  38 21 00 20 */	addi r1, r1, 0x20
/* 8007BCA4 00078C04  4E 80 00 20 */	blr

.global __dt__11CBCGetupCmd
__dt__11CBCGetupCmd:
/* 8007BCA8 00078C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007BCAC 00078C0C  7C 08 02 A6 */	mflr r0
/* 8007BCB0 00078C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007BCB4 00078C14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007BCB8 00078C18  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007BCBC 00078C1C  41 82 00 30 */	beq lbl_8007BCEC
/* 8007BCC0 00078C20  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 8007BCC4 00078C24  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 8007BCC8 00078C28  90 1F 00 00 */	stw r0, 0(r31)
/* 8007BCCC 00078C2C  41 82 00 10 */	beq lbl_8007BCDC
/* 8007BCD0 00078C30  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BCD4 00078C34  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BCD8 00078C38  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BCDC:
/* 8007BCDC 00078C3C  7C 80 07 35 */	extsh. r0, r4
/* 8007BCE0 00078C40  40 81 00 0C */	ble lbl_8007BCEC
/* 8007BCE4 00078C44  7F E3 FB 78 */	mr r3, r31
/* 8007BCE8 00078C48  48 29 9C 49 */	bl Free__7CMemoryFPCv
lbl_8007BCEC:
/* 8007BCEC 00078C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BCF0 00078C50  7F E3 FB 78 */	mr r3, r31
/* 8007BCF4 00078C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BCF8 00078C58  7C 08 03 A6 */	mtlr r0
/* 8007BCFC 00078C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BD00 00078C60  4E 80 00 20 */	blr

.global sub_8007bd04
sub_8007bd04:
/* 8007BD04 00078C64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007BD08 00078C68  7C 08 02 A6 */	mflr r0
/* 8007BD0C 00078C6C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007BD10 00078C70  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007BD14 00078C74  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007BD18 00078C78  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 8007BD1C 00078C7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007BD20 00078C80  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8007BD24 00078C84  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 8007BD28 00078C88  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8007BD2C 00078C8C  3B E6 00 04 */	addi r31, r6, 4
/* 8007BD30 00078C90  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8007BD34 00078C94  38 60 00 04 */	li r3, 4
/* 8007BD38 00078C98  90 01 00 08 */	stw r0, 8(r1)
/* 8007BD3C 00078C9C  38 04 AA 44 */	addi r0, r4, lbl_803DAA44@l
/* 8007BD40 00078CA0  38 80 00 04 */	li r4, 4
/* 8007BD44 00078CA4  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007BD48 00078CA8  7F E3 FB 78 */	mr r3, r31
/* 8007BD4C 00078CAC  90 01 00 08 */	stw r0, 8(r1)
/* 8007BD50 00078CB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8007BD54 00078CB4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8007BD58 00078CB8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8007BD5C 00078CBC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8007BD60 00078CC0  48 0B 56 D9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007BD64 00078CC4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007BD68 00078CC8  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8007BD6C 00078CCC  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 8007BD70 00078CD0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BD74 00078CD4  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 8007BD78 00078CD8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BD7C 00078CDC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007BD80 00078CE0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007BD84 00078CE4  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 8007BD88 00078CE8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8007BD8C 00078CEC  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8007BD90 00078CF0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8007BD94 00078CF4  90 BF 01 04 */	stw r5, 0x104(r31)
/* 8007BD98 00078CF8  90 81 00 08 */	stw r4, 8(r1)
/* 8007BD9C 00078CFC  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8007BDA0 00078D00  90 01 00 08 */	stw r0, 8(r1)
/* 8007BDA4 00078D04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007BDA8 00078D08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007BDAC 00078D0C  7C 08 03 A6 */	mtlr r0
/* 8007BDB0 00078D10  38 21 00 30 */	addi r1, r1, 0x30
/* 8007BDB4 00078D14  4E 80 00 20 */	blr

.global TryTaunt__10CPatternedFR13CStateManageri
TryTaunt__10CPatternedFR13CStateManageri:
/* 8007BDB8 00078D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007BDBC 00078D1C  7C 08 02 A6 */	mflr r0
/* 8007BDC0 00078D20  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007BDC4 00078D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007BDC8 00078D28  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007BDCC 00078D2C  38 80 00 12 */	li r4, 0x12
/* 8007BDD0 00078D30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007BDD4 00078D34  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8007BDD8 00078D38  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8007BDDC 00078D3C  90 01 00 08 */	stw r0, 8(r1)
/* 8007BDE0 00078D40  38 03 AA 14 */	addi r0, r3, lbl_803DAA14@l
/* 8007BDE4 00078D44  38 60 00 12 */	li r3, 0x12
/* 8007BDE8 00078D48  3B E6 00 04 */	addi r31, r6, 4
/* 8007BDEC 00078D4C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007BDF0 00078D50  7F E3 FB 78 */	mr r3, r31
/* 8007BDF4 00078D54  90 01 00 08 */	stw r0, 8(r1)
/* 8007BDF8 00078D58  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007BDFC 00078D5C  48 0B 56 3D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007BE00 00078D60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007BE04 00078D64  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8007BE08 00078D68  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 8007BE0C 00078D6C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BE10 00078D70  90 1F 02 14 */	stw r0, 0x214(r31)
/* 8007BE14 00078D74  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BE18 00078D78  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007BE1C 00078D7C  90 81 00 08 */	stw r4, 8(r1)
/* 8007BE20 00078D80  90 7F 02 18 */	stw r3, 0x218(r31)
/* 8007BE24 00078D84  90 01 00 08 */	stw r0, 8(r1)
/* 8007BE28 00078D88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007BE2C 00078D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007BE30 00078D90  7C 08 03 A6 */	mtlr r0
/* 8007BE34 00078D94  38 21 00 20 */	addi r1, r1, 0x20
/* 8007BE38 00078D98  4E 80 00 20 */	blr

.global __dt__11CBCTauntCmd
__dt__11CBCTauntCmd:
/* 8007BE3C 00078D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007BE40 00078DA0  7C 08 02 A6 */	mflr r0
/* 8007BE44 00078DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007BE48 00078DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007BE4C 00078DAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007BE50 00078DB0  41 82 00 30 */	beq lbl_8007BE80
/* 8007BE54 00078DB4  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8007BE58 00078DB8  38 03 AA 14 */	addi r0, r3, lbl_803DAA14@l
/* 8007BE5C 00078DBC  90 1F 00 00 */	stw r0, 0(r31)
/* 8007BE60 00078DC0  41 82 00 10 */	beq lbl_8007BE70
/* 8007BE64 00078DC4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BE68 00078DC8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BE6C 00078DCC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BE70:
/* 8007BE70 00078DD0  7C 80 07 35 */	extsh. r0, r4
/* 8007BE74 00078DD4  40 81 00 0C */	ble lbl_8007BE80
/* 8007BE78 00078DD8  7F E3 FB 78 */	mr r3, r31
/* 8007BE7C 00078DDC  48 29 9A B5 */	bl Free__7CMemoryFPCv
lbl_8007BE80:
/* 8007BE80 00078DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BE84 00078DE4  7F E3 FB 78 */	mr r3, r31
/* 8007BE88 00078DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BE8C 00078DEC  7C 08 03 A6 */	mtlr r0
/* 8007BE90 00078DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BE94 00078DF4  4E 80 00 20 */	blr

.global __dt__11CBCSlideCmd
__dt__11CBCSlideCmd:
/* 8007BE98 00078DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007BE9C 00078DFC  7C 08 02 A6 */	mflr r0
/* 8007BEA0 00078E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007BEA4 00078E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007BEA8 00078E08  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007BEAC 00078E0C  41 82 00 30 */	beq lbl_8007BEDC
/* 8007BEB0 00078E10  3C 60 80 3E */	lis r3, lbl_803DAA08@ha
/* 8007BEB4 00078E14  38 03 AA 08 */	addi r0, r3, lbl_803DAA08@l
/* 8007BEB8 00078E18  90 1F 00 00 */	stw r0, 0(r31)
/* 8007BEBC 00078E1C  41 82 00 10 */	beq lbl_8007BECC
/* 8007BEC0 00078E20  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BEC4 00078E24  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BEC8 00078E28  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007BECC:
/* 8007BECC 00078E2C  7C 80 07 35 */	extsh. r0, r4
/* 8007BED0 00078E30  40 81 00 0C */	ble lbl_8007BEDC
/* 8007BED4 00078E34  7F E3 FB 78 */	mr r3, r31
/* 8007BED8 00078E38  48 29 9A 59 */	bl Free__7CMemoryFPCv
lbl_8007BEDC:
/* 8007BEDC 00078E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007BEE0 00078E40  7F E3 FB 78 */	mr r3, r31
/* 8007BEE4 00078E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007BEE8 00078E48  7C 08 03 A6 */	mtlr r0
/* 8007BEEC 00078E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007BEF0 00078E50  4E 80 00 20 */	blr

.global TryJump__10CPatternedFR13CStateManageri
TryJump__10CPatternedFR13CStateManageri:
/* 8007BEF4 00078E54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007BEF8 00078E58  7C 08 02 A6 */	mflr r0
/* 8007BEFC 00078E5C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007BF00 00078E60  3D 00 80 3E */	lis r8, lbl_803DAA68@ha
/* 8007BF04 00078E64  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007BF08 00078E68  39 48 AA 68 */	addi r10, r8, lbl_803DAA68@l
/* 8007BF0C 00078E6C  38 E4 66 A0 */	addi r7, r4, sZeroVector__9CVector3f@l
/* 8007BF10 00078E70  3D 00 80 3E */	lis r8, lbl_803DA9FC@ha
/* 8007BF14 00078E74  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8007BF18 00078E78  38 C0 00 00 */	li r6, 0
/* 8007BF1C 00078E7C  88 81 00 2C */	lbz r4, 0x2c(r1)
/* 8007BF20 00078E80  50 C4 3E 30 */	rlwimi r4, r6, 7, 0x18, 0x18
/* 8007BF24 00078E84  81 63 04 50 */	lwz r11, 0x450(r3)
/* 8007BF28 00078E88  39 20 00 10 */	li r9, 0x10
/* 8007BF2C 00078E8C  C0 A3 02 E0 */	lfs f5, 0x2e0(r3)
/* 8007BF30 00078E90  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8007BF34 00078E94  C0 83 02 E4 */	lfs f4, 0x2e4(r3)
/* 8007BF38 00078E98  39 08 A9 FC */	addi r8, r8, lbl_803DA9FC@l
/* 8007BF3C 00078E9C  C0 63 02 E8 */	lfs f3, 0x2e8(r3)
/* 8007BF40 00078EA0  3B EB 00 04 */	addi r31, r11, 4
/* 8007BF44 00078EA4  C0 47 00 00 */	lfs f2, 0(r7)
/* 8007BF48 00078EA8  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8007BF4C 00078EAC  98 81 00 2C */	stb r4, 0x2c(r1)
/* 8007BF50 00078EB0  7F E3 FB 78 */	mr r3, r31
/* 8007BF54 00078EB4  C0 27 00 04 */	lfs f1, 4(r7)
/* 8007BF58 00078EB8  38 80 00 10 */	li r4, 0x10
/* 8007BF5C 00078EBC  91 41 00 08 */	stw r10, 8(r1)
/* 8007BF60 00078EC0  C0 07 00 08 */	lfs f0, 8(r7)
/* 8007BF64 00078EC4  91 21 00 0C */	stw r9, 0xc(r1)
/* 8007BF68 00078EC8  91 01 00 08 */	stw r8, 8(r1)
/* 8007BF6C 00078ECC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007BF70 00078ED0  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8007BF74 00078ED4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8007BF78 00078ED8  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8007BF7C 00078EDC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8007BF80 00078EE0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8007BF84 00078EE4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8007BF88 00078EE8  98 01 00 2C */	stb r0, 0x2c(r1)
/* 8007BF8C 00078EEC  48 0B 54 AD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007BF90 00078EF0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007BF94 00078EF4  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 8007BF98 00078EF8  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 8007BF9C 00078EFC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007BFA0 00078F00  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 8007BFA4 00078F04  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007BFA8 00078F08  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007BFAC 00078F0C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007BFB0 00078F10  90 BF 01 D8 */	stw r5, 0x1d8(r31)
/* 8007BFB4 00078F14  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8007BFB8 00078F18  90 7F 01 DC */	stw r3, 0x1dc(r31)
/* 8007BFBC 00078F1C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8007BFC0 00078F20  90 BF 01 E0 */	stw r5, 0x1e0(r31)
/* 8007BFC4 00078F24  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8007BFC8 00078F28  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 8007BFCC 00078F2C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8007BFD0 00078F30  90 BF 01 E8 */	stw r5, 0x1e8(r31)
/* 8007BFD4 00078F34  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8007BFD8 00078F38  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 8007BFDC 00078F3C  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 8007BFE0 00078F40  90 BF 01 F0 */	stw r5, 0x1f0(r31)
/* 8007BFE4 00078F44  90 81 00 08 */	stw r4, 8(r1)
/* 8007BFE8 00078F48  98 7F 01 F4 */	stb r3, 0x1f4(r31)
/* 8007BFEC 00078F4C  90 01 00 08 */	stw r0, 8(r1)
/* 8007BFF0 00078F50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8007BFF4 00078F54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007BFF8 00078F58  7C 08 03 A6 */	mtlr r0
/* 8007BFFC 00078F5C  38 21 00 40 */	addi r1, r1, 0x40
/* 8007C000 00078F60  4E 80 00 20 */	blr

.global __dt__10CBCJumpCmd
__dt__10CBCJumpCmd:
/* 8007C004 00078F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C008 00078F68  7C 08 02 A6 */	mflr r0
/* 8007C00C 00078F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C010 00078F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C014 00078F74  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007C018 00078F78  41 82 00 30 */	beq lbl_8007C048
/* 8007C01C 00078F7C  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 8007C020 00078F80  38 03 A9 FC */	addi r0, r3, lbl_803DA9FC@l
/* 8007C024 00078F84  90 1F 00 00 */	stw r0, 0(r31)
/* 8007C028 00078F88  41 82 00 10 */	beq lbl_8007C038
/* 8007C02C 00078F8C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C030 00078F90  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C034 00078F94  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007C038:
/* 8007C038 00078F98  7C 80 07 35 */	extsh. r0, r4
/* 8007C03C 00078F9C  40 81 00 0C */	ble lbl_8007C048
/* 8007C040 00078FA0  7F E3 FB 78 */	mr r3, r31
/* 8007C044 00078FA4  48 29 98 ED */	bl Free__7CMemoryFPCv
lbl_8007C048:
/* 8007C048 00078FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C04C 00078FAC  7F E3 FB 78 */	mr r3, r31
/* 8007C050 00078FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C054 00078FB4  7C 08 03 A6 */	mtlr r0
/* 8007C058 00078FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C05C 00078FBC  4E 80 00 20 */	blr

.global sub_8007c060
sub_8007c060:
/* 8007C060 00078FC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C064 00078FC4  7C 08 02 A6 */	mflr r0
/* 8007C068 00078FC8  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8007C06C 00078FCC  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8007C070 00078FD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C074 00078FD4  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 8007C078 00078FD8  38 C0 00 00 */	li r6, 0
/* 8007C07C 00078FDC  39 00 00 0E */	li r8, 0xe
/* 8007C080 00078FE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007C084 00078FE4  38 00 00 01 */	li r0, 1
/* 8007C088 00078FE8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8007C08C 00078FEC  50 04 F8 00 */	rlwimi r4, r0, 0x1f, 0, 0
/* 8007C090 00078FF0  81 43 04 50 */	lwz r10, 0x450(r3)
/* 8007C094 00078FF4  38 A0 FF FF */	li r5, -1
/* 8007C098 00078FF8  C0 43 02 E0 */	lfs f2, 0x2e0(r3)
/* 8007C09C 00078FFC  7C 80 23 78 */	mr r0, r4
/* 8007C0A0 00079000  C0 23 02 E4 */	lfs f1, 0x2e4(r3)
/* 8007C0A4 00079004  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8007C0A8 00079008  C0 03 02 E8 */	lfs f0, 0x2e8(r3)
/* 8007C0AC 0007900C  3B EA 00 04 */	addi r31, r10, 4
/* 8007C0B0 00079010  91 21 00 08 */	stw r9, 8(r1)
/* 8007C0B4 00079014  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8007C0B8 00079018  7F E3 FB 78 */	mr r3, r31
/* 8007C0BC 0007901C  90 81 00 24 */	stw r4, 0x24(r1)
/* 8007C0C0 00079020  38 80 00 0E */	li r4, 0xe
/* 8007C0C4 00079024  91 01 00 0C */	stw r8, 0xc(r1)
/* 8007C0C8 00079028  90 E1 00 08 */	stw r7, 8(r1)
/* 8007C0CC 0007902C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8007C0D0 00079030  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007C0D4 00079034  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8007C0D8 00079038  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007C0DC 0007903C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8007C0E0 00079040  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C0E4 00079044  48 0B 53 55 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C0E8 00079048  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C0EC 0007904C  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8007C0F0 00079050  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8007C0F4 00079054  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C0F8 00079058  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8007C0FC 0007905C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C100 00079060  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007C104 00079064  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007C108 00079068  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8007C10C 0007906C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8007C110 00079070  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8007C114 00079074  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8007C118 00079078  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8007C11C 0007907C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8007C120 00079080  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8007C124 00079084  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8007C128 00079088  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8007C12C 0007908C  90 81 00 08 */	stw r4, 8(r1)
/* 8007C130 00079090  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8007C134 00079094  90 01 00 08 */	stw r0, 8(r1)
/* 8007C138 00079098  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007C13C 0007909C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C140 000790A0  7C 08 03 A6 */	mtlr r0
/* 8007C144 000790A4  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C148 000790A8  4E 80 00 20 */	blr

.global __dt__14CBCGenerateCmd
__dt__14CBCGenerateCmd:
/* 8007C14C 000790AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C150 000790B0  7C 08 02 A6 */	mflr r0
/* 8007C154 000790B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C158 000790B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C15C 000790BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007C160 000790C0  41 82 00 30 */	beq lbl_8007C190
/* 8007C164 000790C4  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8007C168 000790C8  38 03 A9 F0 */	addi r0, r3, lbl_803DA9F0@l
/* 8007C16C 000790CC  90 1F 00 00 */	stw r0, 0(r31)
/* 8007C170 000790D0  41 82 00 10 */	beq lbl_8007C180
/* 8007C174 000790D4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C178 000790D8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C17C 000790DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007C180:
/* 8007C180 000790E0  7C 80 07 35 */	extsh. r0, r4
/* 8007C184 000790E4  40 81 00 0C */	ble lbl_8007C190
/* 8007C188 000790E8  7F E3 FB 78 */	mr r3, r31
/* 8007C18C 000790EC  48 29 97 A5 */	bl Free__7CMemoryFPCv
lbl_8007C190:
/* 8007C190 000790F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C194 000790F4  7F E3 FB 78 */	mr r3, r31
/* 8007C198 000790F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C19C 000790FC  7C 08 03 A6 */	mtlr r0
/* 8007C1A0 00079100  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C1A4 00079104  4E 80 00 20 */	blr

.global sub_8007c1a8
sub_8007c1a8:
/* 8007C1A8 00079108  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C1AC 0007910C  7C 08 02 A6 */	mflr r0
/* 8007C1B0 00079110  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007C1B4 00079114  3D 00 80 3E */	lis r8, lbl_803DAA68@ha
/* 8007C1B8 00079118  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C1BC 0007911C  38 E4 66 A0 */	addi r7, r4, sZeroVector__9CVector3f@l
/* 8007C1C0 00079120  39 08 AA 68 */	addi r8, r8, lbl_803DAA68@l
/* 8007C1C4 00079124  39 20 00 0E */	li r9, 0xe
/* 8007C1C8 00079128  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007C1CC 0007912C  38 C0 00 00 */	li r6, 0
/* 8007C1D0 00079130  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8007C1D4 00079134  50 C4 F8 00 */	rlwimi r4, r6, 0x1f, 0, 0
/* 8007C1D8 00079138  81 43 04 50 */	lwz r10, 0x450(r3)
/* 8007C1DC 0007913C  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8007C1E0 00079140  C0 47 00 00 */	lfs f2, 0(r7)
/* 8007C1E4 00079144  7C 80 23 78 */	mr r0, r4
/* 8007C1E8 00079148  C0 27 00 04 */	lfs f1, 4(r7)
/* 8007C1EC 0007914C  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8007C1F0 00079150  C0 07 00 08 */	lfs f0, 8(r7)
/* 8007C1F4 00079154  38 E0 FF FF */	li r7, -1
/* 8007C1F8 00079158  90 81 00 24 */	stw r4, 0x24(r1)
/* 8007C1FC 0007915C  3B EA 00 04 */	addi r31, r10, 4
/* 8007C200 00079160  38 80 00 0E */	li r4, 0xe
/* 8007C204 00079164  91 01 00 08 */	stw r8, 8(r1)
/* 8007C208 00079168  39 03 A9 F0 */	addi r8, r3, lbl_803DA9F0@l
/* 8007C20C 0007916C  7F E3 FB 78 */	mr r3, r31
/* 8007C210 00079170  91 21 00 0C */	stw r9, 0xc(r1)
/* 8007C214 00079174  91 01 00 08 */	stw r8, 8(r1)
/* 8007C218 00079178  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C21C 0007917C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007C220 00079180  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8007C224 00079184  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007C228 00079188  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8007C22C 0007918C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C230 00079190  48 0B 52 09 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C234 00079194  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C238 00079198  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8007C23C 0007919C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8007C240 000791A0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C244 000791A4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8007C248 000791A8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C24C 000791AC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007C250 000791B0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007C254 000791B4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8007C258 000791B8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8007C25C 000791BC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8007C260 000791C0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8007C264 000791C4  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8007C268 000791C8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8007C26C 000791CC  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8007C270 000791D0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8007C274 000791D4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8007C278 000791D8  90 81 00 08 */	stw r4, 8(r1)
/* 8007C27C 000791DC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8007C280 000791E0  90 01 00 08 */	stw r0, 8(r1)
/* 8007C284 000791E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007C288 000791E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C28C 000791EC  7C 08 03 A6 */	mtlr r0
/* 8007C290 000791F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C294 000791F4  4E 80 00 20 */	blr

.global TryBreakDodge__10CPatternedFR13CStateManageri
TryBreakDodge__10CPatternedFR13CStateManageri:
/* 8007C298 000791F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C29C 000791FC  7C 08 02 A6 */	mflr r0
/* 8007C2A0 00079200  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007C2A4 00079204  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C2A8 00079208  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007C2AC 0007920C  38 80 00 01 */	li r4, 1
/* 8007C2B0 00079210  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C2B4 00079214  80 E3 04 50 */	lwz r7, 0x450(r3)
/* 8007C2B8 00079218  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C2BC 0007921C  90 01 00 08 */	stw r0, 8(r1)
/* 8007C2C0 00079220  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 8007C2C4 00079224  38 60 00 01 */	li r3, 1
/* 8007C2C8 00079228  38 00 00 02 */	li r0, 2
/* 8007C2CC 0007922C  3B E7 00 04 */	addi r31, r7, 4
/* 8007C2D0 00079230  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007C2D4 00079234  7F E3 FB 78 */	mr r3, r31
/* 8007C2D8 00079238  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C2DC 0007923C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C2E0 00079240  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C2E4 00079244  48 0B 51 55 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C2E8 00079248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C2EC 0007924C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C2F0 00079250  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8007C2F4 00079254  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C2F8 00079258  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8007C2FC 0007925C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C300 00079260  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007C304 00079264  90 81 00 08 */	stw r4, 8(r1)
/* 8007C308 00079268  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007C30C 0007926C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8007C310 00079270  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8007C314 00079274  90 01 00 08 */	stw r0, 8(r1)
/* 8007C318 00079278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C31C 0007927C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C320 00079280  7C 08 03 A6 */	mtlr r0
/* 8007C324 00079284  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C328 00079288  4E 80 00 20 */	blr

.global __dt__10CBCStepCmd
__dt__10CBCStepCmd:
/* 8007C32C 0007928C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C330 00079290  7C 08 02 A6 */	mflr r0
/* 8007C334 00079294  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C338 00079298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C33C 0007929C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007C340 000792A0  41 82 00 30 */	beq lbl_8007C370
/* 8007C344 000792A4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C348 000792A8  38 03 A9 E4 */	addi r0, r3, lbl_803DA9E4@l
/* 8007C34C 000792AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8007C350 000792B0  41 82 00 10 */	beq lbl_8007C360
/* 8007C354 000792B4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C358 000792B8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C35C 000792BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007C360:
/* 8007C360 000792C0  7C 80 07 35 */	extsh. r0, r4
/* 8007C364 000792C4  40 81 00 0C */	ble lbl_8007C370
/* 8007C368 000792C8  7F E3 FB 78 */	mr r3, r31
/* 8007C36C 000792CC  48 29 95 C5 */	bl Free__7CMemoryFPCv
lbl_8007C370:
/* 8007C370 000792D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C374 000792D4  7F E3 FB 78 */	mr r3, r31
/* 8007C378 000792D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C37C 000792DC  7C 08 03 A6 */	mtlr r0
/* 8007C380 000792E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C384 000792E4  4E 80 00 20 */	blr

.global TryDodge__10CPatternedFR13CStateManageri
TryDodge__10CPatternedFR13CStateManageri:
/* 8007C388 000792E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C38C 000792EC  7C 08 02 A6 */	mflr r0
/* 8007C390 000792F0  38 C0 00 01 */	li r6, 1
/* 8007C394 000792F4  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007C398 000792F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C39C 000792FC  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007C3A0 00079300  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C3A4 00079304  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8007C3A8 00079308  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C3AC 0007930C  90 01 00 08 */	stw r0, 8(r1)
/* 8007C3B0 00079310  38 03 A9 E4 */	addi r0, r3, lbl_803DA9E4@l
/* 8007C3B4 00079314  3B E4 00 04 */	addi r31, r4, 4
/* 8007C3B8 00079318  38 80 00 01 */	li r4, 1
/* 8007C3BC 0007931C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8007C3C0 00079320  7F E3 FB 78 */	mr r3, r31
/* 8007C3C4 00079324  90 01 00 08 */	stw r0, 8(r1)
/* 8007C3C8 00079328  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C3CC 0007932C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8007C3D0 00079330  48 0B 50 69 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C3D4 00079334  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C3D8 00079338  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C3DC 0007933C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8007C3E0 00079340  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C3E4 00079344  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8007C3E8 00079348  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C3EC 0007934C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007C3F0 00079350  90 81 00 08 */	stw r4, 8(r1)
/* 8007C3F4 00079354  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007C3F8 00079358  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8007C3FC 0007935C  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8007C400 00079360  90 01 00 08 */	stw r0, 8(r1)
/* 8007C404 00079364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C408 00079368  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C40C 0007936C  7C 08 03 A6 */	mtlr r0
/* 8007C410 00079370  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C414 00079374  4E 80 00 20 */	blr

.global sub_8007c418
sub_8007c418:
/* 8007C418 00079378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C41C 0007937C  7C 08 02 A6 */	mflr r0
/* 8007C420 00079380  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007C424 00079384  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C428 00079388  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8007C42C 0007938C  38 80 00 01 */	li r4, 1
/* 8007C430 00079390  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C434 00079394  80 E3 04 50 */	lwz r7, 0x450(r3)
/* 8007C438 00079398  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C43C 0007939C  90 01 00 08 */	stw r0, 8(r1)
/* 8007C440 000793A0  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 8007C444 000793A4  38 60 00 01 */	li r3, 1
/* 8007C448 000793A8  38 00 00 00 */	li r0, 0
/* 8007C44C 000793AC  3B E7 00 04 */	addi r31, r7, 4
/* 8007C450 000793B0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8007C454 000793B4  7F E3 FB 78 */	mr r3, r31
/* 8007C458 000793B8  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C45C 000793BC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C460 000793C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C464 000793C4  48 0B 4F D5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C468 000793C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C46C 000793CC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 8007C470 000793D0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 8007C474 000793D4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C478 000793D8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 8007C47C 000793DC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C480 000793E0  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8007C484 000793E4  90 81 00 08 */	stw r4, 8(r1)
/* 8007C488 000793E8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8007C48C 000793EC  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 8007C490 000793F0  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 8007C494 000793F4  90 01 00 08 */	stw r0, 8(r1)
/* 8007C498 000793F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C49C 000793FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C4A0 00079400  7C 08 03 A6 */	mtlr r0
/* 8007C4A4 00079404  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C4A8 00079408  4E 80 00 20 */	blr

.global sub_8007c4ac
sub_8007c4ac:
/* 8007C4AC 0007940C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C4B0 00079410  7C 08 02 A6 */	mflr r0
/* 8007C4B4 00079414  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007C4B8 00079418  38 E0 00 05 */	li r7, 5
/* 8007C4BC 0007941C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C4C0 00079420  38 C4 AA 68 */	addi r6, r4, lbl_803DAA68@l
/* 8007C4C4 00079424  38 00 00 01 */	li r0, 1
/* 8007C4C8 00079428  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 8007C4CC 0007942C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007C4D0 00079430  81 03 04 50 */	lwz r8, 0x450(r3)
/* 8007C4D4 00079434  C0 43 02 E0 */	lfs f2, 0x2e0(r3)
/* 8007C4D8 00079438  C0 23 02 E4 */	lfs f1, 0x2e4(r3)
/* 8007C4DC 0007943C  3B E8 00 04 */	addi r31, r8, 4
/* 8007C4E0 00079440  C0 03 02 E8 */	lfs f0, 0x2e8(r3)
/* 8007C4E4 00079444  7F E3 FB 78 */	mr r3, r31
/* 8007C4E8 00079448  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C4EC 0007944C  38 C4 A9 D8 */	addi r6, r4, lbl_803DA9D8@l
/* 8007C4F0 00079450  38 80 00 05 */	li r4, 5
/* 8007C4F4 00079454  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8007C4F8 00079458  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C4FC 0007945C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C500 00079460  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007C504 00079464  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8007C508 00079468  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007C50C 0007946C  98 01 00 20 */	stb r0, 0x20(r1)
/* 8007C510 00079470  48 0B 4F 29 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C514 00079474  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C518 00079478  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8007C51C 0007947C  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8007C520 00079480  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C524 00079484  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8007C528 00079488  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C52C 0007948C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007C530 00079490  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8007C534 00079494  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8007C538 00079498  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8007C53C 0007949C  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8007C540 000794A0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8007C544 000794A4  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8007C548 000794A8  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8007C54C 000794AC  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8007C550 000794B0  90 81 00 08 */	stw r4, 8(r1)
/* 8007C554 000794B4  98 7F 01 24 */	stb r3, 0x124(r31)
/* 8007C558 000794B8  90 01 00 08 */	stw r0, 8(r1)
/* 8007C55C 000794BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007C560 000794C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C564 000794C4  7C 08 03 A6 */	mtlr r0
/* 8007C568 000794C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C56C 000794CC  4E 80 00 20 */	blr

.global __dt__17CBCMeleeAttackCmd
__dt__17CBCMeleeAttackCmd:
/* 8007C570 000794D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C574 000794D4  7C 08 02 A6 */	mflr r0
/* 8007C578 000794D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C57C 000794DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C580 000794E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007C584 000794E4  41 82 00 30 */	beq lbl_8007C5B4
/* 8007C588 000794E8  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8007C58C 000794EC  38 03 A9 D8 */	addi r0, r3, lbl_803DA9D8@l
/* 8007C590 000794F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8007C594 000794F4  41 82 00 10 */	beq lbl_8007C5A4
/* 8007C598 000794F8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C59C 000794FC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C5A0 00079500  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007C5A4:
/* 8007C5A4 00079504  7C 80 07 35 */	extsh. r0, r4
/* 8007C5A8 00079508  40 81 00 0C */	ble lbl_8007C5B4
/* 8007C5AC 0007950C  7F E3 FB 78 */	mr r3, r31
/* 8007C5B0 00079510  48 29 93 81 */	bl Free__7CMemoryFPCv
lbl_8007C5B4:
/* 8007C5B4 00079514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C5B8 00079518  7F E3 FB 78 */	mr r3, r31
/* 8007C5BC 0007951C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C5C0 00079520  7C 08 03 A6 */	mtlr r0
/* 8007C5C4 00079524  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C5C8 00079528  4E 80 00 20 */	blr

.global TryMeleeAttack__10CPatternedFR13CStateManageri
TryMeleeAttack__10CPatternedFR13CStateManageri:
/* 8007C5CC 0007952C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C5D0 00079530  7C 08 02 A6 */	mflr r0
/* 8007C5D4 00079534  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8007C5D8 00079538  38 E0 00 05 */	li r7, 5
/* 8007C5DC 0007953C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C5E0 00079540  38 C6 AA 68 */	addi r6, r6, lbl_803DAA68@l
/* 8007C5E4 00079544  38 00 00 00 */	li r0, 0
/* 8007C5E8 00079548  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007C5EC 0007954C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007C5F0 00079550  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 8007C5F4 00079554  81 03 04 50 */	lwz r8, 0x450(r3)
/* 8007C5F8 00079558  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8007C5FC 0007955C  C0 24 00 04 */	lfs f1, 4(r4)
/* 8007C600 00079560  C0 04 00 08 */	lfs f0, 8(r4)
/* 8007C604 00079564  3B E8 00 04 */	addi r31, r8, 4
/* 8007C608 00079568  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C60C 0007956C  38 C3 A9 D8 */	addi r6, r3, lbl_803DA9D8@l
/* 8007C610 00079570  7F E3 FB 78 */	mr r3, r31
/* 8007C614 00079574  38 80 00 05 */	li r4, 5
/* 8007C618 00079578  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8007C61C 0007957C  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C620 00079580  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C624 00079584  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007C628 00079588  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8007C62C 0007958C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007C630 00079590  98 01 00 20 */	stb r0, 0x20(r1)
/* 8007C634 00079594  48 0B 4E 05 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C638 00079598  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C63C 0007959C  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8007C640 000795A0  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8007C644 000795A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C648 000795A8  90 1F 01 10 */	stw r0, 0x110(r31)
/* 8007C64C 000795AC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C650 000795B0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007C654 000795B4  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8007C658 000795B8  90 7F 01 14 */	stw r3, 0x114(r31)
/* 8007C65C 000795BC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8007C660 000795C0  90 BF 01 18 */	stw r5, 0x118(r31)
/* 8007C664 000795C4  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8007C668 000795C8  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8007C66C 000795CC  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8007C670 000795D0  90 BF 01 20 */	stw r5, 0x120(r31)
/* 8007C674 000795D4  90 81 00 08 */	stw r4, 8(r1)
/* 8007C678 000795D8  98 7F 01 24 */	stb r3, 0x124(r31)
/* 8007C67C 000795DC  90 01 00 08 */	stw r0, 8(r1)
/* 8007C680 000795E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007C684 000795E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C688 000795E8  7C 08 03 A6 */	mtlr r0
/* 8007C68C 000795EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C690 000795F0  4E 80 00 20 */	blr

.global TryProjectileAttack__10CPatternedFR13CStateManageri
TryProjectileAttack__10CPatternedFR13CStateManageri:
/* 8007C694 000795F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007C698 000795F8  7C 08 02 A6 */	mflr r0
/* 8007C69C 000795FC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8007C6A0 00079600  38 E0 00 06 */	li r7, 6
/* 8007C6A4 00079604  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007C6A8 00079608  38 C4 AA 68 */	addi r6, r4, lbl_803DAA68@l
/* 8007C6AC 0007960C  38 00 00 00 */	li r0, 0
/* 8007C6B0 00079610  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 8007C6B4 00079614  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8007C6B8 00079618  81 03 04 50 */	lwz r8, 0x450(r3)
/* 8007C6BC 0007961C  C0 43 02 E0 */	lfs f2, 0x2e0(r3)
/* 8007C6C0 00079620  C0 23 02 E4 */	lfs f1, 0x2e4(r3)
/* 8007C6C4 00079624  3B E8 00 04 */	addi r31, r8, 4
/* 8007C6C8 00079628  C0 03 02 E8 */	lfs f0, 0x2e8(r3)
/* 8007C6CC 0007962C  7F E3 FB 78 */	mr r3, r31
/* 8007C6D0 00079630  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C6D4 00079634  38 C4 A9 CC */	addi r6, r4, lbl_803DA9CC@l
/* 8007C6D8 00079638  38 80 00 06 */	li r4, 6
/* 8007C6DC 0007963C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8007C6E0 00079640  90 C1 00 08 */	stw r6, 8(r1)
/* 8007C6E4 00079644  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8007C6E8 00079648  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8007C6EC 0007964C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8007C6F0 00079650  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8007C6F4 00079654  98 01 00 20 */	stb r0, 0x20(r1)
/* 8007C6F8 00079658  48 0B 4D 41 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8007C6FC 0007965C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007C700 00079660  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8007C704 00079664  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 8007C708 00079668  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C70C 0007966C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8007C710 00079670  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C714 00079674  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8007C718 00079678  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8007C71C 0007967C  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8007C720 00079680  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8007C724 00079684  90 BF 01 34 */	stw r5, 0x134(r31)
/* 8007C728 00079688  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8007C72C 0007968C  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8007C730 00079690  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8007C734 00079694  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 8007C738 00079698  90 81 00 08 */	stw r4, 8(r1)
/* 8007C73C 0007969C  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8007C740 000796A0  90 01 00 08 */	stw r0, 8(r1)
/* 8007C744 000796A4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8007C748 000796A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007C74C 000796AC  7C 08 03 A6 */	mtlr r0
/* 8007C750 000796B0  38 21 00 30 */	addi r1, r1, 0x30
/* 8007C754 000796B4  4E 80 00 20 */	blr

.global __dt__22CBCProjectileAttackCmdFv
__dt__22CBCProjectileAttackCmdFv:
/* 8007C758 000796B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C75C 000796BC  7C 08 02 A6 */	mflr r0
/* 8007C760 000796C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C764 000796C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C768 000796C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8007C76C 000796CC  41 82 00 30 */	beq lbl_8007C79C
/* 8007C770 000796D0  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8007C774 000796D4  38 03 A9 CC */	addi r0, r3, lbl_803DA9CC@l
/* 8007C778 000796D8  90 1F 00 00 */	stw r0, 0(r31)
/* 8007C77C 000796DC  41 82 00 10 */	beq lbl_8007C78C
/* 8007C780 000796E0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8007C784 000796E4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8007C788 000796E8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8007C78C:
/* 8007C78C 000796EC  7C 80 07 35 */	extsh. r0, r4
/* 8007C790 000796F0  40 81 00 0C */	ble lbl_8007C79C
/* 8007C794 000796F4  7F E3 FB 78 */	mr r3, r31
/* 8007C798 000796F8  48 29 91 99 */	bl Free__7CMemoryFPCv
lbl_8007C79C:
/* 8007C79C 000796FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C7A0 00079700  7F E3 FB 78 */	mr r3, r31
/* 8007C7A4 00079704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C7A8 00079708  7C 08 03 A6 */	mtlr r0
/* 8007C7AC 0007970C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C7B0 00079710  4E 80 00 20 */	blr

.global TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi:
/* 8007C7B4 00079714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C7B8 00079718  7C 08 02 A6 */	mflr r0
/* 8007C7BC 0007971C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C7C0 00079720  81 03 04 50 */	lwz r8, 0x450(r3)
/* 8007C7C4 00079724  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 8007C7C8 00079728  7C 05 00 00 */	cmpw r5, r0
/* 8007C7CC 0007972C  40 82 00 10 */	bne lbl_8007C7DC
/* 8007C7D0 00079730  38 00 00 02 */	li r0, 2
/* 8007C7D4 00079734  90 03 03 2C */	stw r0, 0x32c(r3)
/* 8007C7D8 00079738  48 00 00 2C */	b lbl_8007C804
lbl_8007C7DC:
/* 8007C7DC 0007973C  80 03 03 2C */	lwz r0, 0x32c(r3)
/* 8007C7E0 00079740  2C 00 00 01 */	cmpwi r0, 1
/* 8007C7E4 00079744  40 82 00 18 */	bne lbl_8007C7FC
/* 8007C7E8 00079748  7C E5 3B 78 */	mr r5, r7
/* 8007C7EC 0007974C  7C CC 33 78 */	mr r12, r6
/* 8007C7F0 00079750  48 30 D1 3D */	bl __ptmf_scall
/* 8007C7F4 00079754  60 00 00 00 */	nop
/* 8007C7F8 00079758  48 00 00 0C */	b lbl_8007C804
lbl_8007C7FC:
/* 8007C7FC 0007975C  38 00 00 03 */	li r0, 3
/* 8007C800 00079760  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_8007C804:
/* 8007C804 00079764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C808 00079768  7C 08 03 A6 */	mtlr r0
/* 8007C80C 0007976C  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C810 00079770  4E 80 00 20 */	blr

.global SetCoverPoint__10CPatternedFP17CScriptCoverPointR9TUniqueId
SetCoverPoint__10CPatternedFP17CScriptCoverPointR9TUniqueId:
/* 8007C814 00079774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C818 00079778  7C 08 02 A6 */	mflr r0
/* 8007C81C 0007977C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C820 00079780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007C824 00079784  7C BF 2B 78 */	mr r31, r5
/* 8007C828 00079788  93 C1 00 08 */	stw r30, 8(r1)
/* 8007C82C 0007978C  7C 9E 23 78 */	mr r30, r4
/* 8007C830 00079790  7F C3 F3 78 */	mr r3, r30
/* 8007C834 00079794  38 80 00 01 */	li r4, 1
/* 8007C838 00079798  48 0B 0B B9 */	bl SetInUse__17CScriptCoverPointFb
/* 8007C83C 0007979C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8007C840 000797A0  B0 1F 00 00 */	sth r0, 0(r31)
/* 8007C844 000797A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C848 000797A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007C84C 000797AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007C850 000797B0  7C 08 03 A6 */	mtlr r0
/* 8007C854 000797B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C858 000797B8  4E 80 00 20 */	blr

.global ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId:
/* 8007C85C 000797BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C860 000797C0  7C 08 02 A6 */	mflr r0
/* 8007C864 000797C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C868 000797C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007C86C 000797CC  7C BF 2B 78 */	mr r31, r5
/* 8007C870 000797D0  38 A1 00 08 */	addi r5, r1, 8
/* 8007C874 000797D4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8007C878 000797D8  B0 01 00 08 */	sth r0, 8(r1)
/* 8007C87C 000797DC  48 00 00 31 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 8007C880 000797E0  28 03 00 00 */	cmplwi r3, 0
/* 8007C884 000797E4  41 82 00 14 */	beq lbl_8007C898
/* 8007C888 000797E8  38 80 00 00 */	li r4, 0
/* 8007C88C 000797EC  48 0B 0B 65 */	bl SetInUse__17CScriptCoverPointFb
/* 8007C890 000797F0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8007C894 000797F4  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8007C898:
/* 8007C898 000797F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C89C 000797FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007C8A0 00079800  7C 08 03 A6 */	mtlr r0
/* 8007C8A4 00079804  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C8A8 00079808  4E 80 00 20 */	blr

.global GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId:
/* 8007C8AC 0007980C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007C8B0 00079810  7C 08 02 A6 */	mflr r0
/* 8007C8B4 00079814  38 60 00 00 */	li r3, 0
/* 8007C8B8 00079818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007C8BC 0007981C  A0 A5 00 00 */	lhz r5, 0(r5)
/* 8007C8C0 00079820  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8007C8C4 00079824  7C 05 00 40 */	cmplw r5, r0
/* 8007C8C8 00079828  41 82 00 24 */	beq lbl_8007C8EC
/* 8007C8CC 0007982C  B0 A1 00 08 */	sth r5, 8(r1)
/* 8007C8D0 00079830  7C 83 23 78 */	mr r3, r4
/* 8007C8D4 00079834  38 81 00 08 */	addi r4, r1, 8
/* 8007C8D8 00079838  4B FC FC 9D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8007C8DC 0007983C  7C 64 1B 78 */	mr r4, r3
/* 8007C8E0 00079840  38 61 00 0C */	addi r3, r1, 0xc
/* 8007C8E4 00079844  48 02 E1 49 */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 8007C8E8 00079848  80 63 00 04 */	lwz r3, 4(r3)
lbl_8007C8EC:
/* 8007C8EC 0007984C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007C8F0 00079850  7C 08 03 A6 */	mtlr r0
/* 8007C8F4 00079854  38 21 00 20 */	addi r1, r1, 0x20
/* 8007C8F8 00079858  4E 80 00 20 */	blr

.global SetupPlayerCollision__10CPatternedFb
SetupPlayerCollision__10CPatternedFb:
/* 8007C8FC 0007985C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8007C900 00079860  7C 08 02 A6 */	mflr r0
/* 8007C904 00079864  90 01 00 54 */	stw r0, 0x54(r1)
/* 8007C908 00079868  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8007C90C 0007986C  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 8007C910 00079870  7C 7F 1B 78 */	mr r31, r3
/* 8007C914 00079874  41 82 00 70 */	beq lbl_8007C984
/* 8007C918 00079878  4B FD 6F A5 */	bl GetMaterialFilter__6CActorCFv
/* 8007C91C 0007987C  83 C3 00 00 */	lwz r30, 0(r3)
/* 8007C920 00079880  83 A3 00 04 */	lwz r29, 4(r3)
/* 8007C924 00079884  7F E3 FB 78 */	mr r3, r31
/* 8007C928 00079888  4B FD 6F 95 */	bl GetMaterialFilter__6CActorCFv
/* 8007C92C 0007988C  80 AD 84 0C */	lwz r5, lbl_805A6FCC@sda21(r13)
/* 8007C930 00079890  38 80 00 01 */	li r4, 1
/* 8007C934 00079894  83 83 00 08 */	lwz r28, 8(r3)
/* 8007C938 00079898  83 63 00 0C */	lwz r27, 0xc(r3)
/* 8007C93C 0007989C  38 60 00 00 */	li r3, 0
/* 8007C940 000798A0  48 30 D5 B5 */	bl __shl2i
/* 8007C944 000798A4  7C 85 20 F8 */	nor r5, r4, r4
/* 8007C948 000798A8  7C 60 18 F8 */	nor r0, r3, r3
/* 8007C94C 000798AC  7F BD 23 78 */	or r29, r29, r4
/* 8007C950 000798B0  7F DE 1B 78 */	or r30, r30, r3
/* 8007C954 000798B4  7F 7B 28 38 */	and r27, r27, r5
/* 8007C958 000798B8  7F 9C 00 38 */	and r28, r28, r0
/* 8007C95C 000798BC  38 00 00 03 */	li r0, 3
/* 8007C960 000798C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8007C964 000798C4  7F E3 FB 78 */	mr r3, r31
/* 8007C968 000798C8  38 81 00 20 */	addi r4, r1, 0x20
/* 8007C96C 000798CC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8007C970 000798D0  93 61 00 2C */	stw r27, 0x2c(r1)
/* 8007C974 000798D4  93 81 00 28 */	stw r28, 0x28(r1)
/* 8007C978 000798D8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8007C97C 000798DC  4B FD 6F 25 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8007C980 000798E0  48 00 00 6C */	b lbl_8007C9EC
lbl_8007C984:
/* 8007C984 000798E4  4B FD 6F 39 */	bl GetMaterialFilter__6CActorCFv
/* 8007C988 000798E8  83 63 00 00 */	lwz r27, 0(r3)
/* 8007C98C 000798EC  83 83 00 04 */	lwz r28, 4(r3)
/* 8007C990 000798F0  7F E3 FB 78 */	mr r3, r31
/* 8007C994 000798F4  4B FD 6F 29 */	bl GetMaterialFilter__6CActorCFv
/* 8007C998 000798F8  80 AD 84 10 */	lwz r5, lbl_805A6FD0@sda21(r13)
/* 8007C99C 000798FC  38 80 00 01 */	li r4, 1
/* 8007C9A0 00079900  83 A3 00 08 */	lwz r29, 8(r3)
/* 8007C9A4 00079904  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 8007C9A8 00079908  38 60 00 00 */	li r3, 0
/* 8007C9AC 0007990C  48 30 D5 49 */	bl __shl2i
/* 8007C9B0 00079910  7C 85 20 F8 */	nor r5, r4, r4
/* 8007C9B4 00079914  7C 60 18 F8 */	nor r0, r3, r3
/* 8007C9B8 00079918  7F DE 23 78 */	or r30, r30, r4
/* 8007C9BC 0007991C  7F BD 1B 78 */	or r29, r29, r3
/* 8007C9C0 00079920  7F 9C 28 38 */	and r28, r28, r5
/* 8007C9C4 00079924  7F 7B 00 38 */	and r27, r27, r0
/* 8007C9C8 00079928  38 00 00 03 */	li r0, 3
/* 8007C9CC 0007992C  93 81 00 0C */	stw r28, 0xc(r1)
/* 8007C9D0 00079930  7F E3 FB 78 */	mr r3, r31
/* 8007C9D4 00079934  38 81 00 08 */	addi r4, r1, 8
/* 8007C9D8 00079938  93 61 00 08 */	stw r27, 8(r1)
/* 8007C9DC 0007993C  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8007C9E0 00079940  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8007C9E4 00079944  90 01 00 18 */	stw r0, 0x18(r1)
/* 8007C9E8 00079948  4B FD 6E B9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_8007C9EC:
/* 8007C9EC 0007994C  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 8007C9F0 00079950  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8007C9F4 00079954  7C 08 03 A6 */	mtlr r0
/* 8007C9F8 00079958  38 21 00 50 */	addi r1, r1, 0x50
/* 8007C9FC 0007995C  4E 80 00 20 */	blr

.global func_8007CA00
func_8007CA00:
/* 8007CA00 00079960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8007CA04 00079964  7C 08 02 A6 */	mflr r0
/* 8007CA08 00079968  90 01 00 34 */	stw r0, 0x34(r1)
/* 8007CA0C 0007996C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8007CA10 00079970  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8007CA14 00079974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007CA18 00079978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8007CA1C 0007997C  80 C3 00 64 */	lwz r6, 0x64(r3)
/* 8007CA20 00079980  7C 85 23 78 */	mr r5, r4
/* 8007CA24 00079984  7C 7F 1B 78 */	mr r31, r3
/* 8007CA28 00079988  C3 E2 89 04 */	lfs f31, lbl_805AA624@sda21(r2)
/* 8007CA2C 0007998C  80 86 00 10 */	lwz r4, 0x10(r6)
/* 8007CA30 00079990  38 61 00 08 */	addi r3, r1, 8
/* 8007CA34 00079994  38 C0 FF FF */	li r6, -1
/* 8007CA38 00079998  38 84 00 3C */	addi r4, r4, 0x3c
/* 8007CA3C 0007999C  48 26 87 31 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
/* 8007CA40 000799A0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8007CA44 000799A4  C0 02 89 5C */	lfs f0, lbl_805AA67C@sda21(r2)
/* 8007CA48 000799A8  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 8007CA4C 000799AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CA50 000799B0  40 81 00 2C */	ble lbl_8007CA7C
/* 8007CA54 000799B4  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8007CA58 000799B8  7F C4 F3 78 */	mr r4, r30
/* 8007CA5C 000799BC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8007CA60 000799C0  7F E3 FB 78 */	mr r3, r31
/* 8007CA64 000799C4  4B FA FA 65 */	bl GetAnimationDuration__9CAnimDataCFi
/* 8007CA68 000799C8  FF E0 08 90 */	fmr f31, f1
/* 8007CA6C 000799CC  7F E3 FB 78 */	mr r3, r31
/* 8007CA70 000799D0  7F C4 F3 78 */	mr r4, r30
/* 8007CA74 000799D4  4B FB 1A AD */	bl GetAverageVelocity__9CAnimDataCFi
/* 8007CA78 000799D8  EF E1 07 F2 */	fmuls f31, f1, f31
lbl_8007CA7C:
/* 8007CA7C 000799DC  FC 20 F8 90 */	fmr f1, f31
/* 8007CA80 000799E0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8007CA84 000799E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8007CA88 000799E8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8007CA8C 000799EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007CA90 000799F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8007CA94 000799F4  7C 08 03 A6 */	mtlr r0
/* 8007CA98 000799F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8007CA9C 000799FC  4E 80 00 20 */	blr

.global ApplyBoneTracking__10CPatternedCFv
ApplyBoneTracking__10CPatternedCFv:
/* 8007CAA0 00079A00  88 03 04 00 */	lbz r0, 0x400(r3)
/* 8007CAA4 00079A04  38 80 00 00 */	li r4, 0
/* 8007CAA8 00079A08  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007CAAC 00079A0C  41 82 00 1C */	beq lbl_8007CAC8
/* 8007CAB0 00079A10  C0 23 04 C4 */	lfs f1, 0x4c4(r3)
/* 8007CAB4 00079A14  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007CAB8 00079A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007CABC 00079A1C  4C 40 13 82 */	cror 2, 0, 2
/* 8007CAC0 00079A20  7C 00 00 26 */	mfcr r0
/* 8007CAC4 00079A24  54 04 1F FE */	rlwinm r4, r0, 3, 0x1f, 0x1f
lbl_8007CAC8:
/* 8007CAC8 00079A28  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8007CACC 00079A2C  4E 80 00 20 */	blr

.global GetGunEyePos__10CPatternedCFv
GetGunEyePos__10CPatternedCFv:
/* 8007CAD0 00079A30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8007CAD4 00079A34  7C 08 02 A6 */	mflr r0
/* 8007CAD8 00079A38  90 01 00 44 */	stw r0, 0x44(r1)
/* 8007CADC 00079A3C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8007CAE0 00079A40  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 8007CAE4 00079A44  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8007CAE8 00079A48  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8007CAEC 00079A4C  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 8007CAF0 00079A50  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 8007CAF4 00079A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007CAF8 00079A58  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 8007CAFC 00079A5C  7C 7F 1B 78 */	mr r31, r3
/* 8007CB00 00079A60  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 8007CB04 00079A64  7C 83 23 78 */	mr r3, r4
/* 8007CB08 00079A68  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 8007CB0C 00079A6C  48 09 DE B5 */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 8007CB10 00079A70  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8007CB14 00079A74  C0 03 00 08 */	lfs f0, 8(r3)
/* 8007CB18 00079A78  C0 42 89 60 */	lfs f2, lbl_805AA680@sda21(r2)
/* 8007CB1C 00079A7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007CB20 00079A80  D3 FF 00 00 */	stfs f31, 0(r31)
/* 8007CB24 00079A84  D3 DF 00 04 */	stfs f30, 4(r31)
/* 8007CB28 00079A88  EF A2 E8 3A */	fmadds f29, f2, f0, f29
/* 8007CB2C 00079A8C  D3 BF 00 08 */	stfs f29, 8(r31)
/* 8007CB30 00079A90  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 8007CB34 00079A94  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8007CB38 00079A98  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8007CB3C 00079A9C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8007CB40 00079AA0  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 8007CB44 00079AA4  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 8007CB48 00079AA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8007CB4C 00079AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007CB50 00079AB0  7C 08 03 A6 */	mtlr r0
/* 8007CB54 00079AB4  38 21 00 40 */	addi r1, r1, 0x40
/* 8007CB58 00079AB8  4E 80 00 20 */	blr

.global SetDestPos__10CPatternedFRC9CVector3f
SetDestPos__10CPatternedFRC9CVector3f:
/* 8007CB5C 00079ABC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007CB60 00079AC0  D0 03 02 E0 */	stfs f0, 0x2e0(r3)
/* 8007CB64 00079AC4  C0 04 00 04 */	lfs f0, 4(r4)
/* 8007CB68 00079AC8  D0 03 02 E4 */	stfs f0, 0x2e4(r3)
/* 8007CB6C 00079ACC  C0 04 00 08 */	lfs f0, 8(r4)
/* 8007CB70 00079AD0  D0 03 02 E8 */	stfs f0, 0x2e8(r3)
/* 8007CB74 00079AD4  4E 80 00 20 */	blr

.global AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8007CB78 00079AD8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8007CB7C 00079ADC  7C 08 02 A6 */	mflr r0
/* 8007CB80 00079AE0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8007CB84 00079AE4  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8007CB88 00079AE8  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 8007CB8C 00079AEC  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 8007CB90 00079AF0  7C BA 2B 78 */	mr r26, r5
/* 8007CB94 00079AF4  7C 7E 1B 78 */	mr r30, r3
/* 8007CB98 00079AF8  A0 05 00 00 */	lhz r0, 0(r5)
/* 8007CB9C 00079AFC  7C 9B 23 78 */	mr r27, r4
/* 8007CBA0 00079B00  7C DF 33 78 */	mr r31, r6
/* 8007CBA4 00079B04  38 A1 00 10 */	addi r5, r1, 0x10
/* 8007CBA8 00079B08  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8007CBAC 00079B0C  48 02 60 F9 */	bl AcceptScriptMsg__3CAiF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8007CBB0 00079B10  28 1B 00 2A */	cmplwi r27, 0x2a
/* 8007CBB4 00079B14  41 81 05 08 */	bgt lbl_8007D0BC
/* 8007CBB8 00079B18  3C 60 80 3E */	lis r3, lbl_803DA920@ha
/* 8007CBBC 00079B1C  57 60 10 3A */	slwi r0, r27, 2
/* 8007CBC0 00079B20  38 63 A9 20 */	addi r3, r3, lbl_803DA920@l
/* 8007CBC4 00079B24  7C 03 00 2E */	lwzx r0, r3, r0
/* 8007CBC8 00079B28  7C 09 03 A6 */	mtctr r0
/* 8007CBCC 00079B2C  4E 80 04 20 */	bctr
.global lbl_8007CBD0
lbl_8007CBD0:
/* 8007CBD0 00079B30  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 8007CBD4 00079B34  2C 00 00 01 */	cmpwi r0, 1
/* 8007CBD8 00079B38  41 82 00 70 */	beq lbl_8007CC48
/* 8007CBDC 00079B3C  7F C3 F3 78 */	mr r3, r30
/* 8007CBE0 00079B40  4B FD 6C DD */	bl GetMaterialFilter__6CActorCFv
/* 8007CBE4 00079B44  83 A3 00 00 */	lwz r29, 0(r3)
/* 8007CBE8 00079B48  83 83 00 04 */	lwz r28, 4(r3)
/* 8007CBEC 00079B4C  7F C3 F3 78 */	mr r3, r30
/* 8007CBF0 00079B50  4B FD 6C CD */	bl GetMaterialFilter__6CActorCFv
/* 8007CBF4 00079B54  80 AD 84 08 */	lwz r5, lbl_805A6FC8@sda21(r13)
/* 8007CBF8 00079B58  38 80 00 01 */	li r4, 1
/* 8007CBFC 00079B5C  83 63 00 08 */	lwz r27, 8(r3)
/* 8007CC00 00079B60  83 43 00 0C */	lwz r26, 0xc(r3)
/* 8007CC04 00079B64  38 60 00 00 */	li r3, 0
/* 8007CC08 00079B68  48 30 D2 ED */	bl __shl2i
/* 8007CC0C 00079B6C  7C 85 20 F8 */	nor r5, r4, r4
/* 8007CC10 00079B70  7C 60 18 F8 */	nor r0, r3, r3
/* 8007CC14 00079B74  7F 5A 23 78 */	or r26, r26, r4
/* 8007CC18 00079B78  7F 7B 1B 78 */	or r27, r27, r3
/* 8007CC1C 00079B7C  7F 9C 28 38 */	and r28, r28, r5
/* 8007CC20 00079B80  7F BD 00 38 */	and r29, r29, r0
/* 8007CC24 00079B84  38 00 00 03 */	li r0, 3
/* 8007CC28 00079B88  93 81 00 5C */	stw r28, 0x5c(r1)
/* 8007CC2C 00079B8C  7F C3 F3 78 */	mr r3, r30
/* 8007CC30 00079B90  38 81 00 58 */	addi r4, r1, 0x58
/* 8007CC34 00079B94  93 A1 00 58 */	stw r29, 0x58(r1)
/* 8007CC38 00079B98  93 41 00 64 */	stw r26, 0x64(r1)
/* 8007CC3C 00079B9C  93 61 00 60 */	stw r27, 0x60(r1)
/* 8007CC40 00079BA0  90 01 00 68 */	stw r0, 0x68(r1)
/* 8007CC44 00079BA4  4B FD 6C 5D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_8007CC48:
/* 8007CC48 00079BA8  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 8007CC4C 00079BAC  38 60 00 00 */	li r3, 0
/* 8007CC50 00079BB0  28 04 00 00 */	cmplwi r4, 0
/* 8007CC54 00079BB4  41 82 00 14 */	beq lbl_8007CC68
/* 8007CC58 00079BB8  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8007CC5C 00079BBC  28 00 00 00 */	cmplwi r0, 0
/* 8007CC60 00079BC0  41 82 00 08 */	beq lbl_8007CC68
/* 8007CC64 00079BC4  38 60 00 01 */	li r3, 1
lbl_8007CC68:
/* 8007CC68 00079BC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007CC6C 00079BCC  41 82 01 4C */	beq lbl_8007CDB8
/* 8007CC70 00079BD0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8007CC74 00079BD4  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 8007CC78 00079BD8  28 00 00 00 */	cmplwi r0, 0
/* 8007CC7C 00079BDC  41 82 01 3C */	beq lbl_8007CDB8
/* 8007CC80 00079BE0  7F C3 F3 78 */	mr r3, r30
/* 8007CC84 00079BE4  48 09 DD 3D */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 8007CC88 00079BE8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8007CC8C 00079BEC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8007CC90 00079BF0  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 8007CC94 00079BF4  C0 43 00 08 */	lfs f2, 8(r3)
/* 8007CC98 00079BF8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8007CC9C 00079BFC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8007CCA0 00079C00  C0 03 00 00 */	lfs f0, 0(r3)
/* 8007CCA4 00079C04  EC 43 10 28 */	fsubs f2, f3, f2
/* 8007CCA8 00079C08  38 61 00 4C */	addi r3, r1, 0x4c
/* 8007CCAC 00079C0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8007CCB0 00079C10  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 8007CCB4 00079C14  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8007CCB8 00079C18  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8007CCBC 00079C1C  48 29 7B FD */	bl Magnitude__9CVector3fCFv
/* 8007CCC0 00079C20  C0 02 89 10 */	lfs f0, lbl_805AA630@sda21(r2)
/* 8007CCC4 00079C24  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 8007CCC8 00079C28  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007CCCC 00079C2C  38 A0 00 00 */	li r5, 0
/* 8007CCD0 00079C30  EF E0 00 72 */	fmuls f31, f0, f1
/* 8007CCD4 00079C34  38 60 00 48 */	li r3, 0x48
/* 8007CCD8 00079C38  48 29 8B 95 */	bl __nw__FUlPCcPCc
/* 8007CCDC 00079C3C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8007CCE0 00079C40  41 82 00 78 */	beq lbl_8007CD58
/* 8007CCE4 00079C44  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007CCE8 00079C48  38 61 00 40 */	addi r3, r1, 0x40
/* 8007CCEC 00079C4C  C0 22 89 04 */	lfs f1, lbl_805AA624@sda21(r2)
/* 8007CCF0 00079C50  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8007CCF4 00079C54  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8007CCF8 00079C58  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8007CCFC 00079C5C  48 29 7B FD */	bl Normalize__9CVector3fFv
/* 8007CD00 00079C60  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8007CD04 00079C64  38 00 00 00 */	li r0, 0
/* 8007CD08 00079C68  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8007CD0C 00079C6C  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007CD10 00079C70  D0 3D 00 00 */	stfs f1, 0(r29)
/* 8007CD14 00079C74  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8007CD18 00079C78  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8007CD1C 00079C7C  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8007CD20 00079C80  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8007CD24 00079C84  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 8007CD28 00079C88  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 8007CD2C 00079C8C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 8007CD30 00079C90  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8007CD34 00079C94  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8007CD38 00079C98  D3 FD 00 20 */	stfs f31, 0x20(r29)
/* 8007CD3C 00079C9C  90 7D 00 24 */	stw r3, 0x24(r29)
/* 8007CD40 00079CA0  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 8007CD44 00079CA4  90 1D 00 30 */	stw r0, 0x30(r29)
/* 8007CD48 00079CA8  90 1D 00 34 */	stw r0, 0x34(r29)
/* 8007CD4C 00079CAC  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 8007CD50 00079CB0  90 1D 00 40 */	stw r0, 0x40(r29)
/* 8007CD54 00079CB4  90 1D 00 44 */	stw r0, 0x44(r29)
lbl_8007CD58:
/* 8007CD58 00079CB8  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007CD5C 00079CBC  38 60 00 08 */	li r3, 8
/* 8007CD60 00079CC0  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007CD64 00079CC4  38 A0 00 00 */	li r5, 0
/* 8007CD68 00079CC8  48 29 8B 05 */	bl __nw__FUlPCcPCc
/* 8007CD6C 00079CCC  28 03 00 00 */	cmplwi r3, 0
/* 8007CD70 00079CD0  41 82 00 10 */	beq lbl_8007CD80
/* 8007CD74 00079CD4  93 A3 00 00 */	stw r29, 0(r3)
/* 8007CD78 00079CD8  38 00 00 01 */	li r0, 1
/* 8007CD7C 00079CDC  90 03 00 04 */	stw r0, 4(r3)
lbl_8007CD80:
/* 8007CD80 00079CE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 8007CD84 00079CE4  80 1E 05 10 */	lwz r0, 0x510(r30)
/* 8007CD88 00079CE8  7C 00 18 40 */	cmplw r0, r3
/* 8007CD8C 00079CEC  41 82 00 24 */	beq lbl_8007CDB0
/* 8007CD90 00079CF0  38 7E 05 10 */	addi r3, r30, 0x510
/* 8007CD94 00079CF4  48 00 0F F1 */	bl sub_8007dd84
/* 8007CD98 00079CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007CD9C 00079CFC  90 1E 05 10 */	stw r0, 0x510(r30)
/* 8007CDA0 00079D00  80 9E 05 10 */	lwz r4, 0x510(r30)
/* 8007CDA4 00079D04  80 64 00 04 */	lwz r3, 4(r4)
/* 8007CDA8 00079D08  38 03 00 01 */	addi r0, r3, 1
/* 8007CDAC 00079D0C  90 04 00 04 */	stw r0, 4(r4)
lbl_8007CDB0:
/* 8007CDB0 00079D10  38 61 00 14 */	addi r3, r1, 0x14
/* 8007CDB4 00079D14  48 00 0F D1 */	bl sub_8007dd84
lbl_8007CDB8:
/* 8007CDB8 00079D18  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 8007CDBC 00079D1C  38 60 00 01 */	li r3, 1
/* 8007CDC0 00079D20  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8007CDC4 00079D24  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 8007CDC8 00079D28  48 00 02 F4 */	b lbl_8007D0BC
.global lbl_8007CDCC
lbl_8007CDCC:
/* 8007CDCC 00079D2C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8007CDD0 00079D30  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007CDD4 00079D34  40 82 00 34 */	bne lbl_8007CE08
/* 8007CDD8 00079D38  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007CDDC 00079D3C  7F C3 F3 78 */	mr r3, r30
/* 8007CDE0 00079D40  38 C4 66 A0 */	addi r6, r4, sZeroVector__9CVector3f@l
/* 8007CDE4 00079D44  7F E5 FB 78 */	mr r5, r31
/* 8007CDE8 00079D48  C0 06 00 00 */	lfs f0, 0(r6)
/* 8007CDEC 00079D4C  38 80 00 25 */	li r4, 0x25
/* 8007CDF0 00079D50  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 8007CDF4 00079D54  C0 06 00 04 */	lfs f0, 4(r6)
/* 8007CDF8 00079D58  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 8007CDFC 00079D5C  C0 06 00 08 */	lfs f0, 8(r6)
/* 8007CE00 00079D60  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 8007CE04 00079D64  4B FD 75 4D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8007CE08:
/* 8007CE08 00079D68  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8007CE0C 00079D6C  38 60 00 01 */	li r3, 1
/* 8007CE10 00079D70  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8007CE14 00079D74  98 1E 03 28 */	stb r0, 0x328(r30)
/* 8007CE18 00079D78  48 00 02 A4 */	b lbl_8007D0BC
.global lbl_8007CE1C
lbl_8007CE1C:
/* 8007CE1C 00079D7C  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8007CE20 00079D80  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007CE24 00079D84  40 82 00 50 */	bne lbl_8007CE74
/* 8007CE28 00079D88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8007CE2C 00079D8C  48 0B D2 A1 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 8007CE30 00079D90  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007CE34 00079D94  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8007CE38 00079D98  40 82 00 3C */	bne lbl_8007CE74
/* 8007CE3C 00079D9C  7F C3 F3 78 */	mr r3, r30
/* 8007CE40 00079DA0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007CE44 00079DA4  81 8C 00 80 */	lwz r12, 0x80(r12)
/* 8007CE48 00079DA8  7D 89 03 A6 */	mtctr r12
/* 8007CE4C 00079DAC  4E 80 04 21 */	bctrl
/* 8007CE50 00079DB0  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007CE54 00079DB4  FC 20 08 50 */	fneg f1, f1
/* 8007CE58 00079DB8  7F C3 F3 78 */	mr r3, r30
/* 8007CE5C 00079DBC  7F E5 FB 78 */	mr r5, r31
/* 8007CE60 00079DC0  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 8007CE64 00079DC4  38 80 00 25 */	li r4, 0x25
/* 8007CE68 00079DC8  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 8007CE6C 00079DCC  D0 3E 01 58 */	stfs f1, 0x158(r30)
/* 8007CE70 00079DD0  4B FD 71 11 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8007CE74:
/* 8007CE74 00079DD4  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8007CE78 00079DD8  38 60 00 00 */	li r3, 0
/* 8007CE7C 00079DDC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8007CE80 00079DE0  98 1E 03 28 */	stb r0, 0x328(r30)
/* 8007CE84 00079DE4  48 00 02 38 */	b lbl_8007D0BC
.global lbl_8007CE88
lbl_8007CE88:
/* 8007CE88 00079DE8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8007CE8C 00079DEC  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8007CE90 00079DF0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8007CE94 00079DF4  D0 1E 03 A0 */	stfs f0, 0x3a0(r30)
/* 8007CE98 00079DF8  D0 3E 03 A4 */	stfs f1, 0x3a4(r30)
/* 8007CE9C 00079DFC  D0 5E 03 A8 */	stfs f2, 0x3a8(r30)
/* 8007CEA0 00079E00  48 00 02 1C */	b lbl_8007D0BC
.global lbl_8007CEA4
lbl_8007CEA4:
/* 8007CEA4 00079E04  83 5E 03 34 */	lwz r26, 0x334(r30)
/* 8007CEA8 00079E08  28 1A 00 00 */	cmplwi r26, 0
/* 8007CEAC 00079E0C  41 82 02 10 */	beq lbl_8007D0BC
/* 8007CEB0 00079E10  7F 43 D3 78 */	mr r3, r26
/* 8007CEB4 00079E14  48 30 CA 49 */	bl __ptmf_test
/* 8007CEB8 00079E18  2C 03 00 00 */	cmpwi r3, 0
/* 8007CEBC 00079E1C  41 82 02 00 */	beq lbl_8007D0BC
/* 8007CEC0 00079E20  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 8007CEC4 00079E24  7F C3 F3 78 */	mr r3, r30
/* 8007CEC8 00079E28  7F E4 FB 78 */	mr r4, r31
/* 8007CECC 00079E2C  7F 4C D3 78 */	mr r12, r26
/* 8007CED0 00079E30  38 A0 00 02 */	li r5, 2
/* 8007CED4 00079E34  48 30 CA 59 */	bl __ptmf_scall
/* 8007CED8 00079E38  60 00 00 00 */	nop
/* 8007CEDC 00079E3C  48 00 01 E0 */	b lbl_8007D0BC
.global lbl_8007CEE0
lbl_8007CEE0:
/* 8007CEE0 00079E40  A0 1A 00 00 */	lhz r0, 0(r26)
/* 8007CEE4 00079E44  7F E3 FB 78 */	mr r3, r31
/* 8007CEE8 00079E48  38 81 00 0C */	addi r4, r1, 0xc
/* 8007CEEC 00079E4C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8007CEF0 00079E50  4B FC F6 B5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8007CEF4 00079E54  7C 64 1B 78 */	mr r4, r3
/* 8007CEF8 00079E58  38 61 00 20 */	addi r3, r1, 0x20
/* 8007CEFC 00079E5C  48 03 08 11 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8007CF00 00079E60  83 43 00 04 */	lwz r26, 4(r3)
/* 8007CF04 00079E64  28 1A 00 00 */	cmplwi r26, 0
/* 8007CF08 00079E68  41 82 01 B4 */	beq lbl_8007D0BC
/* 8007CF0C 00079E6C  80 1A 01 2C */	lwz r0, 0x12c(r26)
/* 8007CF10 00079E70  2C 00 00 02 */	cmpwi r0, 2
/* 8007CF14 00079E74  40 82 00 A0 */	bne lbl_8007CFB4
/* 8007CF18 00079E78  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 8007CF1C 00079E7C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8007CF20 00079E80  41 82 01 24 */	beq lbl_8007D044
/* 8007CF24 00079E84  88 1A 01 30 */	lbz r0, 0x130(r26)
/* 8007CF28 00079E88  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007CF2C 00079E8C  41 82 01 18 */	beq lbl_8007D044
/* 8007CF30 00079E90  7F C3 F3 78 */	mr r3, r30
/* 8007CF34 00079E94  7F E4 FB 78 */	mr r4, r31
/* 8007CF38 00079E98  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007CF3C 00079E9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8007CF40 00079EA0  7D 89 03 A6 */	mtctr r12
/* 8007CF44 00079EA4  4E 80 04 21 */	bctrl
/* 8007CF48 00079EA8  28 03 00 00 */	cmplwi r3, 0
/* 8007CF4C 00079EAC  41 82 00 F8 */	beq lbl_8007D044
/* 8007CF50 00079EB0  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 8007CF54 00079EB4  38 60 00 01 */	li r3, 1
/* 8007CF58 00079EB8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8007CF5C 00079EBC  7F E5 FB 78 */	mr r5, r31
/* 8007CF60 00079EC0  98 1E 04 01 */	stb r0, 0x401(r30)
/* 8007CF64 00079EC4  7F C3 F3 78 */	mr r3, r30
/* 8007CF68 00079EC8  38 81 00 34 */	addi r4, r1, 0x34
/* 8007CF6C 00079ECC  38 DA 01 2C */	addi r6, r26, 0x12c
/* 8007CF70 00079ED0  C0 3A 01 40 */	lfs f1, 0x140(r26)
/* 8007CF74 00079ED4  38 E0 00 01 */	li r7, 1
/* 8007CF78 00079ED8  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 8007CF7C 00079EDC  39 00 00 00 */	li r8, 0
/* 8007CF80 00079EE0  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8007CF84 00079EE4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8007CF88 00079EE8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8007CF8C 00079EEC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8007CF90 00079EF0  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 8007CF94 00079EF4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007CF98 00079EF8  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8007CF9C 00079EFC  7D 89 03 A6 */	mtctr r12
/* 8007CFA0 00079F00  4E 80 04 21 */	bctrl
/* 8007CFA4 00079F04  38 7E 04 60 */	addi r3, r30, 0x460
/* 8007CFA8 00079F08  38 80 00 02 */	li r4, 2
/* 8007CFAC 00079F0C  48 1B 6D 85 */	bl DeferKnockBack__20CKnockBackControllerF11EWeaponType
/* 8007CFB0 00079F10  48 00 00 94 */	b lbl_8007D044
lbl_8007CFB4:
/* 8007CFB4 00079F14  2C 00 00 03 */	cmpwi r0, 3
/* 8007CFB8 00079F18  40 82 00 8C */	bne lbl_8007D044
/* 8007CFBC 00079F1C  88 1E 04 E1 */	lbz r0, 0x4e1(r30)
/* 8007CFC0 00079F20  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8007CFC4 00079F24  41 82 00 80 */	beq lbl_8007D044
/* 8007CFC8 00079F28  88 1A 01 30 */	lbz r0, 0x130(r26)
/* 8007CFCC 00079F2C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8007CFD0 00079F30  41 82 00 74 */	beq lbl_8007D044
/* 8007CFD4 00079F34  7F C3 F3 78 */	mr r3, r30
/* 8007CFD8 00079F38  7F E4 FB 78 */	mr r4, r31
/* 8007CFDC 00079F3C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007CFE0 00079F40  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8007CFE4 00079F44  7D 89 03 A6 */	mtctr r12
/* 8007CFE8 00079F48  4E 80 04 21 */	bctrl
/* 8007CFEC 00079F4C  28 03 00 00 */	cmplwi r3, 0
/* 8007CFF0 00079F50  41 82 00 54 */	beq lbl_8007D044
/* 8007CFF4 00079F54  C0 3A 01 40 */	lfs f1, 0x140(r26)
/* 8007CFF8 00079F58  7F C3 F3 78 */	mr r3, r30
/* 8007CFFC 00079F5C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 8007D000 00079F60  7F E5 FB 78 */	mr r5, r31
/* 8007D004 00079F64  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 8007D008 00079F68  38 81 00 28 */	addi r4, r1, 0x28
/* 8007D00C 00079F6C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8007D010 00079F70  38 DA 01 2C */	addi r6, r26, 0x12c
/* 8007D014 00079F74  38 E0 00 01 */	li r7, 1
/* 8007D018 00079F78  39 00 00 00 */	li r8, 0
/* 8007D01C 00079F7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8007D020 00079F80  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8007D024 00079F84  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8007D028 00079F88  81 9E 00 00 */	lwz r12, 0(r30)
/* 8007D02C 00079F8C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8007D030 00079F90  7D 89 03 A6 */	mtctr r12
/* 8007D034 00079F94  4E 80 04 21 */	bctrl
/* 8007D038 00079F98  38 7E 04 60 */	addi r3, r30, 0x460
/* 8007D03C 00079F9C  38 80 00 03 */	li r4, 3
/* 8007D040 00079FA0  48 1B 6C F1 */	bl DeferKnockBack__20CKnockBackControllerF11EWeaponType
lbl_8007D044:
/* 8007D044 00079FA4  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8007D048 00079FA8  A0 9A 00 EC */	lhz r4, 0xec(r26)
/* 8007D04C 00079FAC  A0 03 00 08 */	lhz r0, 8(r3)
/* 8007D050 00079FB0  7C 04 00 40 */	cmplw r4, r0
/* 8007D054 00079FB4  40 82 00 68 */	bne lbl_8007D0BC
/* 8007D058 00079FB8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007D05C 00079FBC  38 60 00 01 */	li r3, 1
/* 8007D060 00079FC0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8007D064 00079FC4  98 1E 04 00 */	stb r0, 0x400(r30)
/* 8007D068 00079FC8  48 00 00 54 */	b lbl_8007D0BC
.global lbl_8007D06C
lbl_8007D06C:
/* 8007D06C 00079FCC  A0 1A 00 00 */	lhz r0, 0(r26)
/* 8007D070 00079FD0  7F E3 FB 78 */	mr r3, r31
/* 8007D074 00079FD4  38 81 00 08 */	addi r4, r1, 8
/* 8007D078 00079FD8  B0 01 00 08 */	sth r0, 8(r1)
/* 8007D07C 00079FDC  4B FC F5 29 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8007D080 00079FE0  7C 64 1B 78 */	mr r4, r3
/* 8007D084 00079FE4  38 61 00 18 */	addi r3, r1, 0x18
/* 8007D088 00079FE8  48 03 06 85 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8007D08C 00079FEC  80 83 00 04 */	lwz r4, 4(r3)
/* 8007D090 00079FF0  28 04 00 00 */	cmplwi r4, 0
/* 8007D094 00079FF4  41 82 00 28 */	beq lbl_8007D0BC
/* 8007D098 00079FF8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8007D09C 00079FFC  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 8007D0A0 0007A000  A0 03 00 08 */	lhz r0, 8(r3)
/* 8007D0A4 0007A004  7C 04 00 40 */	cmplw r4, r0
/* 8007D0A8 0007A008  40 82 00 14 */	bne lbl_8007D0BC
/* 8007D0AC 0007A00C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 8007D0B0 0007A010  38 60 00 01 */	li r3, 1
/* 8007D0B4 0007A014  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8007D0B8 0007A018  98 1E 04 00 */	stb r0, 0x400(r30)
.global lbl_8007D0BC
lbl_8007D0BC:
/* 8007D0BC 0007A01C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 8007D0C0 0007A020  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8007D0C4 0007A024  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 8007D0C8 0007A028  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8007D0CC 0007A02C  7C 08 03 A6 */	mtlr r0
/* 8007D0D0 0007A030  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8007D0D4 0007A034  4E 80 00 20 */	blr

.global Accept__10CPatternedFR8IVisitor
Accept__10CPatternedFR8IVisitor:
/* 8007D0D8 0007A038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007D0DC 0007A03C  7C 08 02 A6 */	mflr r0
/* 8007D0E0 0007A040  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007D0E4 0007A044  7C 60 1B 78 */	mr r0, r3
/* 8007D0E8 0007A048  7C 83 23 78 */	mr r3, r4
/* 8007D0EC 0007A04C  81 84 00 00 */	lwz r12, 0(r4)
/* 8007D0F0 0007A050  7C 04 03 78 */	mr r4, r0
/* 8007D0F4 0007A054  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8007D0F8 0007A058  7D 89 03 A6 */	mtctr r12
/* 8007D0FC 0007A05C  4E 80 04 21 */	bctrl
/* 8007D100 0007A060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007D104 0007A064  7C 08 03 A6 */	mtlr r0
/* 8007D108 0007A068  38 21 00 10 */	addi r1, r1, 0x10
/* 8007D10C 0007A06C  4E 80 00 20 */	blr

.global BuildBodyController__10CPatternedF9EBodyType
BuildBodyController__10CPatternedF9EBodyType:
/* 8007D110 0007A070  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8007D114 0007A074  7C 08 02 A6 */	mflr r0
/* 8007D118 0007A078  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8007D11C 0007A07C  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8007D120 0007A080  7C 9F 23 78 */	mr r31, r4
/* 8007D124 0007A084  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8007D128 0007A088  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 8007D12C 0007A08C  7C 7D 1B 78 */	mr r29, r3
/* 8007D130 0007A090  80 03 04 50 */	lwz r0, 0x450(r3)
/* 8007D134 0007A094  28 00 00 00 */	cmplwi r0, 0
/* 8007D138 0007A098  40 82 01 70 */	bne lbl_8007D2A8
/* 8007D13C 0007A09C  3C 80 80 3D */	lis r4, lbl_803CD600@ha
/* 8007D140 0007A0A0  38 60 03 34 */	li r3, 0x334
/* 8007D144 0007A0A4  38 84 D6 00 */	addi r4, r4, lbl_803CD600@l
/* 8007D148 0007A0A8  38 A0 00 00 */	li r5, 0
/* 8007D14C 0007A0AC  48 29 87 21 */	bl __nw__FUlPCcPCc
/* 8007D150 0007A0B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8007D154 0007A0B4  41 82 00 18 */	beq lbl_8007D16C
/* 8007D158 0007A0B8  C0 3D 03 B8 */	lfs f1, 0x3b8(r29)
/* 8007D15C 0007A0BC  7F A4 EB 78 */	mr r4, r29
/* 8007D160 0007A0C0  7F E5 FB 78 */	mr r5, r31
/* 8007D164 0007A0C4  48 0B DC 25 */	bl __ct__15CBodyControllerFR6CActorf9EBodyType
/* 8007D168 0007A0C8  7C 7E 1B 78 */	mr r30, r3
lbl_8007D16C:
/* 8007D16C 0007A0CC  83 FD 04 50 */	lwz r31, 0x450(r29)
/* 8007D170 0007A0D0  28 1F 00 00 */	cmplwi r31, 0
/* 8007D174 0007A0D4  41 82 00 24 */	beq lbl_8007D198
/* 8007D178 0007A0D8  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 8007D17C 0007A0DC  38 80 FF FF */	li r4, -1
/* 8007D180 0007A0E0  48 0B 6F F9 */	bl __dt__14CBodyStateInfoFv
/* 8007D184 0007A0E4  38 7F 00 04 */	addi r3, r31, 4
/* 8007D188 0007A0E8  38 80 FF FF */	li r4, -1
/* 8007D18C 0007A0EC  48 0B 46 69 */	bl __dt__16CBodyStateCmdMgrFv
/* 8007D190 0007A0F0  7F E3 FB 78 */	mr r3, r31
/* 8007D194 0007A0F4  48 29 87 9D */	bl Free__7CMemoryFPCv
lbl_8007D198:
/* 8007D198 0007A0F8  93 DD 04 50 */	stw r30, 0x450(r29)
/* 8007D19C 0007A0FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8007D1A0 0007A100  48 26 5E DD */	bl NoParameter__12CPASAnimParmFv
/* 8007D1A4 0007A104  38 61 00 20 */	addi r3, r1, 0x20
/* 8007D1A8 0007A108  48 26 5E D5 */	bl NoParameter__12CPASAnimParmFv
/* 8007D1AC 0007A10C  38 61 00 28 */	addi r3, r1, 0x28
/* 8007D1B0 0007A110  48 26 5E CD */	bl NoParameter__12CPASAnimParmFv
/* 8007D1B4 0007A114  38 61 00 30 */	addi r3, r1, 0x30
/* 8007D1B8 0007A118  48 26 5E C5 */	bl NoParameter__12CPASAnimParmFv
/* 8007D1BC 0007A11C  38 61 00 38 */	addi r3, r1, 0x38
/* 8007D1C0 0007A120  48 26 5E BD */	bl NoParameter__12CPASAnimParmFv
/* 8007D1C4 0007A124  38 61 00 40 */	addi r3, r1, 0x40
/* 8007D1C8 0007A128  48 26 5E B5 */	bl NoParameter__12CPASAnimParmFv
/* 8007D1CC 0007A12C  38 61 00 48 */	addi r3, r1, 0x48
/* 8007D1D0 0007A130  48 26 5E AD */	bl NoParameter__12CPASAnimParmFv
/* 8007D1D4 0007A134  38 61 00 50 */	addi r3, r1, 0x50
/* 8007D1D8 0007A138  38 80 00 00 */	li r4, 0
/* 8007D1DC 0007A13C  48 26 5D A9 */	bl FromEnum__12CPASAnimParmFi
/* 8007D1E0 0007A140  38 61 00 20 */	addi r3, r1, 0x20
/* 8007D1E4 0007A144  38 01 00 18 */	addi r0, r1, 0x18
/* 8007D1E8 0007A148  90 61 00 08 */	stw r3, 8(r1)
/* 8007D1EC 0007A14C  38 61 00 58 */	addi r3, r1, 0x58
/* 8007D1F0 0007A150  38 A1 00 50 */	addi r5, r1, 0x50
/* 8007D1F4 0007A154  38 C1 00 48 */	addi r6, r1, 0x48
/* 8007D1F8 0007A158  90 01 00 0C */	stw r0, 0xc(r1)
/* 8007D1FC 0007A15C  38 E1 00 40 */	addi r7, r1, 0x40
/* 8007D200 0007A160  39 01 00 38 */	addi r8, r1, 0x38
/* 8007D204 0007A164  39 21 00 30 */	addi r9, r1, 0x30
/* 8007D208 0007A168  39 41 00 28 */	addi r10, r1, 0x28
/* 8007D20C 0007A16C  38 80 00 18 */	li r4, 0x18
/* 8007D210 0007A170  48 00 00 B5 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8007D214 0007A174  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8007D218 0007A178  48 0B D2 3D */	bl GetPASDatabase__15CBodyControllerCFv
/* 8007D21C 0007A17C  7C 64 1B 78 */	mr r4, r3
/* 8007D220 0007A180  38 61 00 10 */	addi r3, r1, 0x10
/* 8007D224 0007A184  38 A1 00 58 */	addi r5, r1, 0x58
/* 8007D228 0007A188  38 C0 FF FF */	li r6, -1
/* 8007D22C 0007A18C  48 26 7F 41 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
/* 8007D230 0007A190  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8007D234 0007A194  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007D238 0007A198  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007D23C 0007A19C  7C 60 00 26 */	mfcr r3
/* 8007D240 0007A1A0  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8007D244 0007A1A4  50 60 3E B4 */	rlwimi r0, r3, 7, 0x1a, 0x1a
/* 8007D248 0007A1A8  34 A1 00 5C */	addic. r5, r1, 0x5c
/* 8007D24C 0007A1AC  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8007D250 0007A1B0  41 82 00 58 */	beq lbl_8007D2A8
/* 8007D254 0007A1B4  80 C5 00 00 */	lwz r6, 0(r5)
/* 8007D258 0007A1B8  38 60 00 00 */	li r3, 0
/* 8007D25C 0007A1BC  2C 06 00 00 */	cmpwi r6, 0
/* 8007D260 0007A1C0  40 81 00 40 */	ble lbl_8007D2A0
/* 8007D264 0007A1C4  2C 06 00 08 */	cmpwi r6, 8
/* 8007D268 0007A1C8  38 86 FF F8 */	addi r4, r6, -8
/* 8007D26C 0007A1CC  40 81 00 20 */	ble lbl_8007D28C
/* 8007D270 0007A1D0  38 04 00 07 */	addi r0, r4, 7
/* 8007D274 0007A1D4  54 00 E8 FE */	srwi r0, r0, 3
/* 8007D278 0007A1D8  7C 09 03 A6 */	mtctr r0
/* 8007D27C 0007A1DC  2C 04 00 00 */	cmpwi r4, 0
/* 8007D280 0007A1E0  40 81 00 0C */	ble lbl_8007D28C
lbl_8007D284:
/* 8007D284 0007A1E4  38 63 00 08 */	addi r3, r3, 8
/* 8007D288 0007A1E8  42 00 FF FC */	bdnz lbl_8007D284
lbl_8007D28C:
/* 8007D28C 0007A1EC  7C 03 30 50 */	subf r0, r3, r6
/* 8007D290 0007A1F0  7C 09 03 A6 */	mtctr r0
/* 8007D294 0007A1F4  7C 03 30 00 */	cmpw r3, r6
/* 8007D298 0007A1F8  40 80 00 08 */	bge lbl_8007D2A0
lbl_8007D29C:
/* 8007D29C 0007A1FC  42 00 00 00 */	bdnz lbl_8007D29C
lbl_8007D2A0:
/* 8007D2A0 0007A200  38 00 00 00 */	li r0, 0
/* 8007D2A4 0007A204  90 05 00 00 */	stw r0, 0(r5)
lbl_8007D2A8:
/* 8007D2A8 0007A208  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8007D2AC 0007A20C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8007D2B0 0007A210  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8007D2B4 0007A214  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 8007D2B8 0007A218  7C 08 03 A6 */	mtlr r0
/* 8007D2BC 0007A21C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8007D2C0 0007A220  4E 80 00 20 */	blr

.global __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
__ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm:
/* 8007D2C4 0007A224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007D2C8 0007A228  39 80 00 00 */	li r12, 0
/* 8007D2CC 0007A22C  38 03 00 08 */	addi r0, r3, 8
/* 8007D2D0 0007A230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007D2D4 0007A234  81 61 00 18 */	lwz r11, 0x18(r1)
/* 8007D2D8 0007A238  90 83 00 00 */	stw r4, 0(r3)
/* 8007D2DC 0007A23C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8007D2E0 0007A240  91 83 00 04 */	stw r12, 4(r3)
/* 8007D2E4 0007A244  81 83 00 04 */	lwz r12, 4(r3)
/* 8007D2E8 0007A248  55 8C 18 38 */	slwi r12, r12, 3
/* 8007D2EC 0007A24C  7F E0 62 15 */	add. r31, r0, r12
/* 8007D2F0 0007A250  41 82 00 14 */	beq lbl_8007D304
/* 8007D2F4 0007A254  81 85 00 00 */	lwz r12, 0(r5)
/* 8007D2F8 0007A258  91 9F 00 00 */	stw r12, 0(r31)
/* 8007D2FC 0007A25C  80 A5 00 04 */	lwz r5, 4(r5)
/* 8007D300 0007A260  90 BF 00 04 */	stw r5, 4(r31)
lbl_8007D304:
/* 8007D304 0007A264  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D308 0007A268  38 A5 00 01 */	addi r5, r5, 1
/* 8007D30C 0007A26C  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D310 0007A270  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D314 0007A274  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D318 0007A278  7D 80 2A 15 */	add. r12, r0, r5
/* 8007D31C 0007A27C  41 82 00 14 */	beq lbl_8007D330
/* 8007D320 0007A280  80 A6 00 00 */	lwz r5, 0(r6)
/* 8007D324 0007A284  90 AC 00 00 */	stw r5, 0(r12)
/* 8007D328 0007A288  80 A6 00 04 */	lwz r5, 4(r6)
/* 8007D32C 0007A28C  90 AC 00 04 */	stw r5, 4(r12)
lbl_8007D330:
/* 8007D330 0007A290  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D334 0007A294  38 A5 00 01 */	addi r5, r5, 1
/* 8007D338 0007A298  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D33C 0007A29C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D340 0007A2A0  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D344 0007A2A4  7C C0 2A 15 */	add. r6, r0, r5
/* 8007D348 0007A2A8  41 82 00 14 */	beq lbl_8007D35C
/* 8007D34C 0007A2AC  80 A7 00 00 */	lwz r5, 0(r7)
/* 8007D350 0007A2B0  90 A6 00 00 */	stw r5, 0(r6)
/* 8007D354 0007A2B4  80 A7 00 04 */	lwz r5, 4(r7)
/* 8007D358 0007A2B8  90 A6 00 04 */	stw r5, 4(r6)
lbl_8007D35C:
/* 8007D35C 0007A2BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D360 0007A2C0  38 A5 00 01 */	addi r5, r5, 1
/* 8007D364 0007A2C4  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D368 0007A2C8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D36C 0007A2CC  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D370 0007A2D0  7C C0 2A 15 */	add. r6, r0, r5
/* 8007D374 0007A2D4  41 82 00 14 */	beq lbl_8007D388
/* 8007D378 0007A2D8  80 A8 00 00 */	lwz r5, 0(r8)
/* 8007D37C 0007A2DC  90 A6 00 00 */	stw r5, 0(r6)
/* 8007D380 0007A2E0  80 A8 00 04 */	lwz r5, 4(r8)
/* 8007D384 0007A2E4  90 A6 00 04 */	stw r5, 4(r6)
lbl_8007D388:
/* 8007D388 0007A2E8  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D38C 0007A2EC  38 A5 00 01 */	addi r5, r5, 1
/* 8007D390 0007A2F0  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D394 0007A2F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D398 0007A2F8  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D39C 0007A2FC  7C C0 2A 15 */	add. r6, r0, r5
/* 8007D3A0 0007A300  41 82 00 14 */	beq lbl_8007D3B4
/* 8007D3A4 0007A304  80 A9 00 00 */	lwz r5, 0(r9)
/* 8007D3A8 0007A308  90 A6 00 00 */	stw r5, 0(r6)
/* 8007D3AC 0007A30C  80 A9 00 04 */	lwz r5, 4(r9)
/* 8007D3B0 0007A310  90 A6 00 04 */	stw r5, 4(r6)
lbl_8007D3B4:
/* 8007D3B4 0007A314  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D3B8 0007A318  38 A5 00 01 */	addi r5, r5, 1
/* 8007D3BC 0007A31C  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D3C0 0007A320  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D3C4 0007A324  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D3C8 0007A328  7C C0 2A 15 */	add. r6, r0, r5
/* 8007D3CC 0007A32C  41 82 00 14 */	beq lbl_8007D3E0
/* 8007D3D0 0007A330  80 AA 00 00 */	lwz r5, 0(r10)
/* 8007D3D4 0007A334  90 A6 00 00 */	stw r5, 0(r6)
/* 8007D3D8 0007A338  80 AA 00 04 */	lwz r5, 4(r10)
/* 8007D3DC 0007A33C  90 A6 00 04 */	stw r5, 4(r6)
lbl_8007D3E0:
/* 8007D3E0 0007A340  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D3E4 0007A344  38 A5 00 01 */	addi r5, r5, 1
/* 8007D3E8 0007A348  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D3EC 0007A34C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D3F0 0007A350  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D3F4 0007A354  7C C0 2A 15 */	add. r6, r0, r5
/* 8007D3F8 0007A358  41 82 00 14 */	beq lbl_8007D40C
/* 8007D3FC 0007A35C  80 AB 00 00 */	lwz r5, 0(r11)
/* 8007D400 0007A360  90 A6 00 00 */	stw r5, 0(r6)
/* 8007D404 0007A364  80 AB 00 04 */	lwz r5, 4(r11)
/* 8007D408 0007A368  90 A6 00 04 */	stw r5, 4(r6)
lbl_8007D40C:
/* 8007D40C 0007A36C  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D410 0007A370  38 A5 00 01 */	addi r5, r5, 1
/* 8007D414 0007A374  90 A3 00 04 */	stw r5, 4(r3)
/* 8007D418 0007A378  80 A3 00 04 */	lwz r5, 4(r3)
/* 8007D41C 0007A37C  54 A5 18 38 */	slwi r5, r5, 3
/* 8007D420 0007A380  7C A0 2A 15 */	add. r5, r0, r5
/* 8007D424 0007A384  41 82 00 14 */	beq lbl_8007D438
/* 8007D428 0007A388  80 04 00 00 */	lwz r0, 0(r4)
/* 8007D42C 0007A38C  90 05 00 00 */	stw r0, 0(r5)
/* 8007D430 0007A390  80 04 00 04 */	lwz r0, 4(r4)
/* 8007D434 0007A394  90 05 00 04 */	stw r0, 4(r5)
lbl_8007D438:
/* 8007D438 0007A398  80 83 00 04 */	lwz r4, 4(r3)
/* 8007D43C 0007A39C  38 04 00 01 */	addi r0, r4, 1
/* 8007D440 0007A3A0  90 03 00 04 */	stw r0, 4(r3)
/* 8007D444 0007A3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007D448 0007A3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8007D44C 0007A3AC  4E 80 00 20 */	blr

.global "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
"__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi":
/* 8007D450 0007A3B0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8007D454 0007A3B4  7C 08 02 A6 */	mflr r0
/* 8007D458 0007A3B8  39 8D A2 68 */	addi r12, r13, lbl_805A8E28@sda21
/* 8007D45C 0007A3BC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8007D460 0007A3C0  BE C1 00 98 */	stmw r22, 0x98(r1)
/* 8007D464 0007A3C4  7C 7F 1B 78 */	mr r31, r3
/* 8007D468 0007A3C8  83 21 00 CC */	lwz r25, 0xcc(r1)
/* 8007D46C 0007A3CC  7C 96 23 78 */	mr r22, r4
/* 8007D470 0007A3D0  83 01 00 C8 */	lwz r24, 0xc8(r1)
/* 8007D474 0007A3D4  7C F7 3B 78 */	mr r23, r7
/* 8007D478 0007A3D8  2C 19 00 01 */	cmpwi r25, 1
/* 8007D47C 0007A3DC  83 41 00 D0 */	lwz r26, 0xd0(r1)
/* 8007D480 0007A3E0  83 61 00 D4 */	lwz r27, 0xd4(r1)
/* 8007D484 0007A3E4  83 81 00 D8 */	lwz r28, 0xd8(r1)
/* 8007D488 0007A3E8  83 A1 00 DC */	lwz r29, 0xdc(r1)
/* 8007D48C 0007A3EC  40 82 00 08 */	bne lbl_8007D494
/* 8007D490 0007A3F0  39 8D A2 60 */	addi r12, r13, lbl_805A8E20@sda21
lbl_8007D494:
/* 8007D494 0007A3F4  C0 38 00 C4 */	lfs f1, 0xc4(r24)
/* 8007D498 0007A3F8  7D 07 43 78 */	mr r7, r8
/* 8007D49C 0007A3FC  C0 D8 00 D0 */	lfs f6, 0xd0(r24)
/* 8007D4A0 0007A400  7D 28 4B 78 */	mr r8, r9
/* 8007D4A4 0007A404  FD 00 08 50 */	fneg f8, f1
/* 8007D4A8 0007A408  C0 F8 00 CC */	lfs f7, 0xcc(r24)
/* 8007D4AC 0007A40C  C0 18 00 C8 */	lfs f0, 0xc8(r24)
/* 8007D4B0 0007A410  7D 49 53 78 */	mr r9, r10
/* 8007D4B4 0007A414  C0 78 00 D4 */	lfs f3, 0xd4(r24)
/* 8007D4B8 0007A418  EC 81 30 2A */	fadds f4, f1, f6
/* 8007D4BC 0007A41C  EC 41 38 2A */	fadds f2, f1, f7
/* 8007D4C0 0007A420  A0 A5 00 00 */	lhz r5, 0(r5)
/* 8007D4C4 0007A424  EC A0 18 2A */	fadds f5, f0, f3
/* 8007D4C8 0007A428  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8007D4CC 0007A42C  EC 28 30 2A */	fadds f1, f8, f6
/* 8007D4D0 0007A430  39 78 00 54 */	addi r11, r24, 0x54
/* 8007D4D4 0007A434  EC 08 38 2A */	fadds f0, f8, f7
/* 8007D4D8 0007A438  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8007D4DC 0007A43C  38 18 00 5C */	addi r0, r24, 0x5c
/* 8007D4E0 0007A440  C0 62 89 34 */	lfs f3, lbl_805AA654@sda21(r2)
/* 8007D4E4 0007A444  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8007D4E8 0007A448  7F E3 FB 78 */	mr r3, r31
/* 8007D4EC 0007A44C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8007D4F0 0007A450  38 81 00 20 */	addi r4, r1, 0x20
/* 8007D4F4 0007A454  39 41 00 78 */	addi r10, r1, 0x78
/* 8007D4F8 0007A458  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 8007D4FC 0007A45C  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8007D500 0007A460  B0 A1 00 20 */	sth r5, 0x20(r1)
/* 8007D504 0007A464  91 61 00 08 */	stw r11, 8(r1)
/* 8007D508 0007A468  90 01 00 0C */	stw r0, 0xc(r1)
/* 8007D50C 0007A46C  91 81 00 10 */	stw r12, 0x10(r1)
/* 8007D510 0007A470  80 18 00 FC */	lwz r0, 0xfc(r24)
/* 8007D514 0007A474  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007D518 0007A478  93 81 00 18 */	stw r28, 0x18(r1)
/* 8007D51C 0007A47C  88 B8 00 F8 */	lbz r5, 0xf8(r24)
/* 8007D520 0007A480  C0 38 00 00 */	lfs f1, 0(r24)
/* 8007D524 0007A484  C0 58 00 D8 */	lfs f2, 0xd8(r24)
/* 8007D528 0007A488  48 02 58 D9 */	bl "__ct__3CAiF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC6CAABoxfRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersff"
/* 8007D52C 0007A48C  3C 60 80 3E */	lis r3, lbl_803DA5C8@ha
/* 8007D530 0007A490  20 19 00 01 */	subfic r0, r25, 1
/* 8007D534 0007A494  38 83 A5 C8 */	addi r4, r3, lbl_803DA5C8@l
/* 8007D538 0007A498  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007D53C 0007A49C  90 9F 00 00 */	stw r4, 0(r31)
/* 8007D540 0007A4A0  38 80 FF FF */	li r4, -1
/* 8007D544 0007A4A4  7C 00 00 34 */	cntlzw r0, r0
/* 8007D548 0007A4A8  3B C3 66 A0 */	addi r30, r3, sZeroVector__9CVector3f@l
/* 8007D54C 0007A4AC  90 9F 02 D8 */	stw r4, 0x2d8(r31)
/* 8007D550 0007A4B0  38 E0 00 00 */	li r7, 0
/* 8007D554 0007A4B4  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007D558 0007A4B8  54 06 D9 7E */	srwi r6, r0, 5
/* 8007D55C 0007A4BC  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 8007D560 0007A4C0  20 79 00 01 */	subfic r3, r25, 1
/* 8007D564 0007A4C4  38 19 FF FF */	addi r0, r25, -1
/* 8007D568 0007A4C8  38 80 00 01 */	li r4, 1
/* 8007D56C 0007A4CC  B0 BF 02 DC */	sth r5, 0x2dc(r31)
/* 8007D570 0007A4D0  7C 60 03 78 */	or r0, r3, r0
/* 8007D574 0007A4D4  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8007D578 0007A4D8  38 7F 03 30 */	addi r3, r31, 0x330
/* 8007D57C 0007A4DC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8007D580 0007A4E0  D0 3F 02 E0 */	stfs f1, 0x2e0(r31)
/* 8007D584 0007A4E4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8007D588 0007A4E8  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 8007D58C 0007A4EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8007D590 0007A4F0  D0 3F 02 E8 */	stfs f1, 0x2e8(r31)
/* 8007D594 0007A4F4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8007D598 0007A4F8  D0 3F 02 EC */	stfs f1, 0x2ec(r31)
/* 8007D59C 0007A4FC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8007D5A0 0007A500  D0 3F 02 F0 */	stfs f1, 0x2f0(r31)
/* 8007D5A4 0007A504  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8007D5A8 0007A508  D0 3F 02 F4 */	stfs f1, 0x2f4(r31)
/* 8007D5AC 0007A50C  D0 1F 02 F8 */	stfs f0, 0x2f8(r31)
/* 8007D5B0 0007A510  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8007D5B4 0007A514  D0 1F 02 FC */	stfs f0, 0x2fc(r31)
/* 8007D5B8 0007A518  C0 18 00 1C */	lfs f0, 0x1c(r24)
/* 8007D5BC 0007A51C  D0 1F 03 00 */	stfs f0, 0x300(r31)
/* 8007D5C0 0007A520  C0 18 00 20 */	lfs f0, 0x20(r24)
/* 8007D5C4 0007A524  D0 1F 03 04 */	stfs f0, 0x304(r31)
/* 8007D5C8 0007A528  C0 18 00 24 */	lfs f0, 0x24(r24)
/* 8007D5CC 0007A52C  D0 1F 03 08 */	stfs f0, 0x308(r31)
/* 8007D5D0 0007A530  90 FF 03 0C */	stw r7, 0x30c(r31)
/* 8007D5D4 0007A534  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8007D5D8 0007A538  D0 1F 03 10 */	stfs f0, 0x310(r31)
/* 8007D5DC 0007A53C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8007D5E0 0007A540  D0 1F 03 14 */	stfs f0, 0x314(r31)
/* 8007D5E4 0007A544  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8007D5E8 0007A548  D0 1F 03 18 */	stfs f0, 0x318(r31)
/* 8007D5EC 0007A54C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8007D5F0 0007A550  D0 1F 03 1C */	stfs f0, 0x31c(r31)
/* 8007D5F4 0007A554  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8007D5F8 0007A558  D0 1F 03 20 */	stfs f0, 0x320(r31)
/* 8007D5FC 0007A55C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8007D600 0007A560  D0 1F 03 24 */	stfs f0, 0x324(r31)
/* 8007D604 0007A564  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D608 0007A568  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 8007D60C 0007A56C  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D610 0007A570  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D614 0007A574  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 8007D618 0007A578  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D61C 0007A57C  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D620 0007A580  50 E0 2E B4 */	rlwimi r0, r7, 5, 0x1a, 0x1a
/* 8007D624 0007A584  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D628 0007A588  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D62C 0007A58C  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8007D630 0007A590  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D634 0007A594  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D638 0007A598  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8007D63C 0007A59C  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D640 0007A5A0  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D644 0007A5A4  50 E0 17 7A */	rlwimi r0, r7, 2, 0x1d, 0x1d
/* 8007D648 0007A5A8  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D64C 0007A5AC  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D650 0007A5B0  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8007D654 0007A5B4  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D658 0007A5B8  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8007D65C 0007A5BC  50 E0 07 FE */	rlwimi r0, r7, 0, 0x1f, 0x1f
/* 8007D660 0007A5C0  98 1F 03 28 */	stb r0, 0x328(r31)
/* 8007D664 0007A5C4  88 1F 03 29 */	lbz r0, 0x329(r31)
/* 8007D668 0007A5C8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8007D66C 0007A5CC  98 1F 03 29 */	stb r0, 0x329(r31)
/* 8007D670 0007A5D0  90 FF 03 2C */	stw r7, 0x32c(r31)
/* 8007D674 0007A5D4  48 00 25 65 */	bl __ct__18CStateMachineStateFv
/* 8007D678 0007A5D8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8007D67C 0007A5DC  92 DF 03 4C */	stw r22, 0x34c(r31)
/* 8007D680 0007A5E0  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8007D684 0007A5E4  38 80 00 00 */	li r4, 0
/* 8007D688 0007A5E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 8007D68C 0007A5EC  38 60 00 02 */	li r3, 2
/* 8007D690 0007A5F0  38 00 00 01 */	li r0, 1
/* 8007D694 0007A5F4  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007D698 0007A5F8  D0 3F 03 50 */	stfs f1, 0x350(r31)
/* 8007D69C 0007A5FC  C0 22 89 64 */	lfs f1, lbl_805AA684@sda21(r2)
/* 8007D6A0 0007A600  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8007D6A4 0007A604  D0 5F 03 54 */	stfs f2, 0x354(r31)
/* 8007D6A8 0007A608  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8007D6AC 0007A60C  D0 5F 03 58 */	stfs f2, 0x358(r31)
/* 8007D6B0 0007A610  C0 45 00 00 */	lfs f2, 0(r5)
/* 8007D6B4 0007A614  D0 5F 03 5C */	stfs f2, 0x35c(r31)
/* 8007D6B8 0007A618  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8007D6BC 0007A61C  D0 5F 03 60 */	stfs f2, 0x360(r31)
/* 8007D6C0 0007A620  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8007D6C4 0007A624  D0 5F 03 64 */	stfs f2, 0x364(r31)
/* 8007D6C8 0007A628  C0 45 00 00 */	lfs f2, 0(r5)
/* 8007D6CC 0007A62C  D0 5F 03 68 */	stfs f2, 0x368(r31)
/* 8007D6D0 0007A630  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8007D6D4 0007A634  D0 5F 03 6C */	stfs f2, 0x36c(r31)
/* 8007D6D8 0007A638  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8007D6DC 0007A63C  D0 5F 03 70 */	stfs f2, 0x370(r31)
/* 8007D6E0 0007A640  90 9F 03 74 */	stw r4, 0x374(r31)
/* 8007D6E4 0007A644  90 7F 03 78 */	stw r3, 0x378(r31)
/* 8007D6E8 0007A648  90 1F 03 7C */	stw r0, 0x37c(r31)
/* 8007D6EC 0007A64C  90 9F 03 80 */	stw r4, 0x380(r31)
/* 8007D6F0 0007A650  90 9F 03 84 */	stw r4, 0x384(r31)
/* 8007D6F4 0007A654  80 18 00 F4 */	lwz r0, 0xf4(r24)
/* 8007D6F8 0007A658  90 1F 03 88 */	stw r0, 0x388(r31)
/* 8007D6FC 0007A65C  90 9F 03 90 */	stw r4, 0x390(r31)
/* 8007D700 0007A660  90 9F 03 94 */	stw r4, 0x394(r31)
/* 8007D704 0007A664  90 9F 03 98 */	stw r4, 0x398(r31)
/* 8007D708 0007A668  90 9F 03 9C */	stw r4, 0x39c(r31)
/* 8007D70C 0007A66C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8007D710 0007A670  D0 5F 03 A0 */	stfs f2, 0x3a0(r31)
/* 8007D714 0007A674  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8007D718 0007A678  D0 5F 03 A4 */	stfs f2, 0x3a4(r31)
/* 8007D71C 0007A67C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8007D720 0007A680  D0 5F 03 A8 */	stfs f2, 0x3a8(r31)
/* 8007D724 0007A684  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8007D728 0007A688  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8007D72C 0007A68C  D0 1F 03 B0 */	stfs f0, 0x3b0(r31)
/* 8007D730 0007A690  C0 18 00 04 */	lfs f0, 4(r24)
/* 8007D734 0007A694  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 8007D738 0007A698  C0 18 00 08 */	lfs f0, 8(r24)
/* 8007D73C 0007A69C  D0 1F 03 B8 */	stfs f0, 0x3b8(r31)
/* 8007D740 0007A6A0  C0 18 00 0C */	lfs f0, 0xc(r24)
/* 8007D744 0007A6A4  D0 1F 03 BC */	stfs f0, 0x3bc(r31)
/* 8007D748 0007A6A8  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 8007D74C 0007A6AC  D0 1F 03 C0 */	stfs f0, 0x3c0(r31)
/* 8007D750 0007A6B0  C0 18 00 14 */	lfs f0, 0x14(r24)
/* 8007D754 0007A6B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8007D758 0007A6B8  48 31 6C 99 */	bl cos
/* 8007D75C 0007A6BC  FC 00 08 18 */	frsp f0, f1
/* 8007D760 0007A6C0  20 19 00 01 */	subfic r0, r25, 1
/* 8007D764 0007A6C4  7C 03 00 34 */	cntlzw r3, r0
/* 8007D768 0007A6C8  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 8007D76C 0007A6CC  38 80 00 00 */	li r4, 0
/* 8007D770 0007A6D0  38 00 00 01 */	li r0, 1
/* 8007D774 0007A6D4  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 8007D778 0007A6D8  54 65 DE 3E */	rlwinm r5, r3, 0x1b, 0x18, 0x1f
/* 8007D77C 0007A6DC  C0 18 00 28 */	lfs f0, 0x28(r24)
/* 8007D780 0007A6E0  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
/* 8007D784 0007A6E4  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 8007D788 0007A6E8  D0 1F 03 CC */	stfs f0, 0x3cc(r31)
/* 8007D78C 0007A6EC  C0 18 00 30 */	lfs f0, 0x30(r24)
/* 8007D790 0007A6F0  D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 8007D794 0007A6F4  D0 3F 03 D4 */	stfs f1, 0x3d4(r31)
/* 8007D798 0007A6F8  C0 18 00 DC */	lfs f0, 0xdc(r24)
/* 8007D79C 0007A6FC  D0 1F 03 D8 */	stfs f0, 0x3d8(r31)
/* 8007D7A0 0007A700  C0 18 00 E0 */	lfs f0, 0xe0(r24)
/* 8007D7A4 0007A704  D0 1F 03 DC */	stfs f0, 0x3dc(r31)
/* 8007D7A8 0007A708  C0 18 00 E4 */	lfs f0, 0xe4(r24)
/* 8007D7AC 0007A70C  D0 1F 03 E0 */	stfs f0, 0x3e0(r31)
/* 8007D7B0 0007A710  D0 3F 03 E4 */	stfs f1, 0x3e4(r31)
/* 8007D7B4 0007A714  D0 3F 03 E8 */	stfs f1, 0x3e8(r31)
/* 8007D7B8 0007A718  D0 3F 03 EC */	stfs f1, 0x3ec(r31)
/* 8007D7BC 0007A71C  D0 3F 03 F0 */	stfs f1, 0x3f0(r31)
/* 8007D7C0 0007A720  D0 3F 03 F4 */	stfs f1, 0x3f4(r31)
/* 8007D7C4 0007A724  90 9F 03 F8 */	stw r4, 0x3f8(r31)
/* 8007D7C8 0007A728  92 FF 03 FC */	stw r23, 0x3fc(r31)
/* 8007D7CC 0007A72C  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D7D0 0007A730  50 83 F8 00 */	rlwimi r3, r4, 0x1f, 0, 0
/* 8007D7D4 0007A734  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D7D8 0007A738  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D7DC 0007A73C  50 03 F0 42 */	rlwimi r3, r0, 0x1e, 1, 1
/* 8007D7E0 0007A740  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D7E4 0007A744  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D7E8 0007A748  50 83 E8 84 */	rlwimi r3, r4, 0x1d, 2, 2
/* 8007D7EC 0007A74C  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D7F0 0007A750  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D7F4 0007A754  50 83 E0 C6 */	rlwimi r3, r4, 0x1c, 3, 3
/* 8007D7F8 0007A758  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D7FC 0007A75C  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D800 0007A760  50 83 D9 08 */	rlwimi r3, r4, 0x1b, 4, 4
/* 8007D804 0007A764  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D808 0007A768  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D80C 0007A76C  50 83 D1 4A */	rlwimi r3, r4, 0x1a, 5, 5
/* 8007D810 0007A770  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D814 0007A774  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D818 0007A778  50 83 C9 8C */	rlwimi r3, r4, 0x19, 6, 6
/* 8007D81C 0007A77C  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D820 0007A780  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D824 0007A784  50 A3 C1 CE */	rlwimi r3, r5, 0x18, 7, 7
/* 8007D828 0007A788  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D82C 0007A78C  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D830 0007A790  50 83 B2 12 */	rlwimi r3, r4, 0x16, 8, 9
/* 8007D834 0007A794  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D838 0007A798  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D83C 0007A79C  50 83 AA 94 */	rlwimi r3, r4, 0x15, 0xa, 0xa
/* 8007D840 0007A7A0  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D844 0007A7A4  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D848 0007A7A8  50 83 A2 D6 */	rlwimi r3, r4, 0x14, 0xb, 0xb
/* 8007D84C 0007A7AC  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D850 0007A7B0  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D854 0007A7B4  50 83 9B 18 */	rlwimi r3, r4, 0x13, 0xc, 0xc
/* 8007D858 0007A7B8  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D85C 0007A7BC  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D860 0007A7C0  50 83 93 5A */	rlwimi r3, r4, 0x12, 0xd, 0xd
/* 8007D864 0007A7C4  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D868 0007A7C8  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D86C 0007A7CC  50 83 8B 9C */	rlwimi r3, r4, 0x11, 0xe, 0xe
/* 8007D870 0007A7D0  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D874 0007A7D4  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D878 0007A7D8  50 83 83 DE */	rlwimi r3, r4, 0x10, 0xf, 0xf
/* 8007D87C 0007A7DC  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D880 0007A7E0  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D884 0007A7E4  50 83 7C 20 */	rlwimi r3, r4, 0xf, 0x10, 0x10
/* 8007D888 0007A7E8  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D88C 0007A7EC  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D890 0007A7F0  50 83 74 62 */	rlwimi r3, r4, 0xe, 0x11, 0x11
/* 8007D894 0007A7F4  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D898 0007A7F8  80 7F 04 00 */	lwz r3, 0x400(r31)
/* 8007D89C 0007A7FC  50 83 6C A4 */	rlwimi r3, r4, 0xd, 0x12, 0x12
/* 8007D8A0 0007A800  C0 02 89 48 */	lfs f0, lbl_805AA668@sda21(r2)
/* 8007D8A4 0007A804  FC 40 08 90 */	fmr f2, f1
/* 8007D8A8 0007A808  90 7F 04 00 */	stw r3, 0x400(r31)
/* 8007D8AC 0007A80C  FC 60 08 90 */	fmr f3, f1
/* 8007D8B0 0007A810  C0 82 89 04 */	lfs f4, lbl_805AA624@sda21(r2)
/* 8007D8B4 0007A814  38 7F 04 2C */	addi r3, r31, 0x42c
/* 8007D8B8 0007A818  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D8BC 0007A81C  50 85 64 E6 */	rlwimi r5, r4, 0xc, 0x13, 0x13
/* 8007D8C0 0007A820  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D8C4 0007A824  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D8C8 0007A828  50 85 5D 28 */	rlwimi r5, r4, 0xb, 0x14, 0x14
/* 8007D8CC 0007A82C  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D8D0 0007A830  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D8D4 0007A834  50 05 55 6A */	rlwimi r5, r0, 0xa, 0x15, 0x15
/* 8007D8D8 0007A838  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D8DC 0007A83C  88 DC 00 58 */	lbz r6, 0x58(r28)
/* 8007D8E0 0007A840  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D8E4 0007A844  50 C5 1D AC */	rlwimi r5, r6, 3, 0x16, 0x16
/* 8007D8E8 0007A848  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D8EC 0007A84C  88 DF 04 02 */	lbz r6, 0x402(r31)
/* 8007D8F0 0007A850  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D8F4 0007A854  50 C5 3D EE */	rlwimi r5, r6, 7, 0x17, 0x17
/* 8007D8F8 0007A858  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D8FC 0007A85C  80 BF 04 00 */	lwz r5, 0x400(r31)
/* 8007D900 0007A860  50 85 3E 30 */	rlwimi r5, r4, 7, 0x18, 0x18
/* 8007D904 0007A864  90 BF 04 00 */	stw r5, 0x400(r31)
/* 8007D908 0007A868  80 9F 04 00 */	lwz r4, 0x400(r31)
/* 8007D90C 0007A86C  50 04 36 72 */	rlwimi r4, r0, 6, 0x19, 0x19
/* 8007D910 0007A870  90 9F 04 00 */	stw r4, 0x400(r31)
/* 8007D914 0007A874  80 9F 04 00 */	lwz r4, 0x400(r31)
/* 8007D918 0007A878  50 04 2E B4 */	rlwimi r4, r0, 5, 0x1a, 0x1a
/* 8007D91C 0007A87C  90 9F 04 00 */	stw r4, 0x400(r31)
/* 8007D920 0007A880  80 18 00 34 */	lwz r0, 0x34(r24)
/* 8007D924 0007A884  90 1F 04 04 */	stw r0, 0x404(r31)
/* 8007D928 0007A888  88 18 00 38 */	lbz r0, 0x38(r24)
/* 8007D92C 0007A88C  98 1F 04 08 */	stb r0, 0x408(r31)
/* 8007D930 0007A890  C0 B8 00 3C */	lfs f5, 0x3c(r24)
/* 8007D934 0007A894  D0 BF 04 0C */	stfs f5, 0x40c(r31)
/* 8007D938 0007A898  C0 B8 00 40 */	lfs f5, 0x40(r24)
/* 8007D93C 0007A89C  D0 BF 04 10 */	stfs f5, 0x410(r31)
/* 8007D940 0007A8A0  C0 B8 00 44 */	lfs f5, 0x44(r24)
/* 8007D944 0007A8A4  D0 BF 04 14 */	stfs f5, 0x414(r31)
/* 8007D948 0007A8A8  C0 B8 00 48 */	lfs f5, 0x48(r24)
/* 8007D94C 0007A8AC  D0 BF 04 18 */	stfs f5, 0x418(r31)
/* 8007D950 0007A8B0  88 18 00 4C */	lbz r0, 0x4c(r24)
/* 8007D954 0007A8B4  98 1F 04 1C */	stb r0, 0x41c(r31)
/* 8007D958 0007A8B8  D0 3F 04 20 */	stfs f1, 0x420(r31)
/* 8007D95C 0007A8BC  C0 B8 00 50 */	lfs f5, 0x50(r24)
/* 8007D960 0007A8C0  D0 BF 04 24 */	stfs f5, 0x424(r31)
/* 8007D964 0007A8C4  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 8007D968 0007A8C8  48 2E 5A 85 */	bl __ct__6CColorFffff
/* 8007D96C 0007A8CC  80 AD A2 50 */	lwz r5, lbl_805A8E10@sda21(r13)
/* 8007D970 0007A8D0  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007D974 0007A8D4  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 8007D978 0007A8D8  38 00 00 00 */	li r0, 0
/* 8007D97C 0007A8DC  90 BF 04 30 */	stw r5, 0x430(r31)
/* 8007D980 0007A8E0  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8007D984 0007A8E4  38 83 66 60 */	addi r4, r3, sNoRotation__11CQuaternion@l
/* 8007D988 0007A8E8  38 7F 04 5C */	addi r3, r31, 0x45c
/* 8007D98C 0007A8EC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8007D990 0007A8F0  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 8007D994 0007A8F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8007D998 0007A8F8  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8007D99C 0007A8FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8007D9A0 0007A900  D0 1F 04 3C */	stfs f0, 0x43c(r31)
/* 8007D9A4 0007A904  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007D9A8 0007A908  D0 1F 04 40 */	stfs f0, 0x440(r31)
/* 8007D9AC 0007A90C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8007D9B0 0007A910  D0 1F 04 44 */	stfs f0, 0x444(r31)
/* 8007D9B4 0007A914  C0 04 00 08 */	lfs f0, 8(r4)
/* 8007D9B8 0007A918  D0 1F 04 48 */	stfs f0, 0x448(r31)
/* 8007D9BC 0007A91C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8007D9C0 0007A920  D0 1F 04 4C */	stfs f0, 0x44c(r31)
/* 8007D9C4 0007A924  90 1F 04 50 */	stw r0, 0x450(r31)
/* 8007D9C8 0007A928  80 18 00 E8 */	lwz r0, 0xe8(r24)
/* 8007D9CC 0007A92C  90 1F 04 54 */	stw r0, 0x454(r31)
/* 8007D9D0 0007A930  80 18 01 34 */	lwz r0, 0x134(r24)
/* 8007D9D4 0007A934  90 1F 04 58 */	stw r0, 0x458(r31)
/* 8007D9D8 0007A938  48 0C 13 79 */	bl __ct__18CSteeringBehaviorsFv
/* 8007D9DC 0007A93C  7F A4 EB 78 */	mr r4, r29
/* 8007D9E0 0007A940  38 7F 04 60 */	addi r3, r31, 0x460
/* 8007D9E4 0007A944  48 1B 64 15 */	bl __ct__20CKnockBackController2F17EKnockBackVariant
/* 8007D9E8 0007A948  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8007D9EC 0007A94C  C0 22 89 08 */	lfs f1, lbl_805AA628@sda21(r2)
/* 8007D9F0 0007A950  C0 04 66 A0 */	lfs f0, sZeroVector__9CVector3f@l(r4)
/* 8007D9F4 0007A954  3C 60 80 3D */	lis r3, lbl_803CD600@ha
/* 8007D9F8 0007A958  38 83 D6 00 */	addi r4, r3, lbl_803CD600@l
/* 8007D9FC 0007A95C  38 A0 00 00 */	li r5, 0
/* 8007DA00 0007A960  D0 1F 04 E4 */	stfs f0, 0x4e4(r31)
/* 8007DA04 0007A964  38 60 00 08 */	li r3, 8
/* 8007DA08 0007A968  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8007DA0C 0007A96C  D0 1F 04 E8 */	stfs f0, 0x4e8(r31)
/* 8007DA10 0007A970  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8007DA14 0007A974  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8007DA18 0007A978  D0 3F 04 F0 */	stfs f1, 0x4f0(r31)
/* 8007DA1C 0007A97C  C0 18 01 00 */	lfs f0, 0x100(r24)
/* 8007DA20 0007A980  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8007DA24 0007A984  C0 18 01 04 */	lfs f0, 0x104(r24)
/* 8007DA28 0007A988  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8007DA2C 0007A98C  C0 18 01 08 */	lfs f0, 0x108(r24)
/* 8007DA30 0007A990  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8007DA34 0007A994  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 8007DA38 0007A998  D0 3F 05 04 */	stfs f1, 0x504(r31)
/* 8007DA3C 0007A99C  93 5F 05 08 */	stw r26, 0x508(r31)
/* 8007DA40 0007A9A0  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 8007DA44 0007A9A4  D0 1F 05 0C */	stfs f0, 0x50c(r31)
/* 8007DA48 0007A9A8  48 29 7E 25 */	bl __nw__FUlPCcPCc
/* 8007DA4C 0007A9AC  28 03 00 00 */	cmplwi r3, 0
/* 8007DA50 0007A9B0  41 82 00 14 */	beq lbl_8007DA64
/* 8007DA54 0007A9B4  38 80 00 00 */	li r4, 0
/* 8007DA58 0007A9B8  38 00 00 01 */	li r0, 1
/* 8007DA5C 0007A9BC  90 83 00 00 */	stw r4, 0(r3)
/* 8007DA60 0007A9C0  90 03 00 04 */	stw r0, 4(r3)
lbl_8007DA64:
/* 8007DA64 0007A9C4  90 7F 05 10 */	stw r3, 0x510(r31)
/* 8007DA68 0007A9C8  38 00 00 00 */	li r0, 0
/* 8007DA6C 0007A9CC  C0 02 89 04 */	lfs f0, lbl_805AA624@sda21(r2)
/* 8007DA70 0007A9D0  C0 38 01 10 */	lfs f1, 0x110(r24)
/* 8007DA74 0007A9D4  D0 3F 05 14 */	stfs f1, 0x514(r31)
/* 8007DA78 0007A9D8  C0 38 01 14 */	lfs f1, 0x114(r24)
/* 8007DA7C 0007A9DC  D0 3F 05 18 */	stfs f1, 0x518(r31)
/* 8007DA80 0007A9E0  C0 38 01 18 */	lfs f1, 0x118(r24)
/* 8007DA84 0007A9E4  D0 3F 05 1C */	stfs f1, 0x51c(r31)
/* 8007DA88 0007A9E8  98 1F 05 2C */	stb r0, 0x52c(r31)
/* 8007DA8C 0007A9EC  98 1F 05 3C */	stb r0, 0x53c(r31)
/* 8007DA90 0007A9F0  C0 38 01 24 */	lfs f1, 0x124(r24)
/* 8007DA94 0007A9F4  D0 3F 05 40 */	stfs f1, 0x540(r31)
/* 8007DA98 0007A9F8  C0 38 01 28 */	lfs f1, 0x128(r24)
/* 8007DA9C 0007A9FC  D0 3F 05 44 */	stfs f1, 0x544(r31)
/* 8007DAA0 0007AA00  C0 38 01 2C */	lfs f1, 0x12c(r24)
/* 8007DAA4 0007AA04  D0 3F 05 48 */	stfs f1, 0x548(r31)
/* 8007DAA8 0007AA08  98 1F 05 58 */	stb r0, 0x558(r31)
/* 8007DAAC 0007AA0C  D0 1F 05 5C */	stfs f0, 0x55c(r31)
/* 8007DAB0 0007AA10  D0 1F 05 60 */	stfs f0, 0x560(r31)
/* 8007DAB4 0007AA14  D0 1F 05 64 */	stfs f0, 0x564(r31)
/* 8007DAB8 0007AA18  80 98 01 1C */	lwz r4, 0x11c(r24)
/* 8007DABC 0007AA1C  3C 04 00 01 */	addis r0, r4, 1
/* 8007DAC0 0007AA20  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007DAC4 0007AA24  41 82 00 B0 */	beq lbl_8007DB74
/* 8007DAC8 0007AA28  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 8007DACC 0007AA2C  90 81 00 50 */	stw r4, 0x50(r1)
/* 8007DAD0 0007AA30  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8007DAD4 0007AA34  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8007DAD8 0007AA38  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8007DADC 0007AA3C  38 61 00 44 */	addi r3, r1, 0x44
/* 8007DAE0 0007AA40  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8007DAE4 0007AA44  81 84 00 00 */	lwz r12, 0(r4)
/* 8007DAE8 0007AA48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8007DAEC 0007AA4C  7D 89 03 A6 */	mtctr r12
/* 8007DAF0 0007AA50  4E 80 04 21 */	bctrl
/* 8007DAF4 0007AA54  38 61 00 6C */	addi r3, r1, 0x6c
/* 8007DAF8 0007AA58  38 81 00 44 */	addi r4, r1, 0x44
/* 8007DAFC 0007AA5C  48 2C 33 AD */	bl __ct__6CTokenFRC6CToken
/* 8007DB00 0007AA60  38 00 00 00 */	li r0, 0
/* 8007DB04 0007AA64  90 01 00 74 */	stw r0, 0x74(r1)
/* 8007DB08 0007AA68  88 1F 05 2C */	lbz r0, 0x52c(r31)
/* 8007DB0C 0007AA6C  28 00 00 00 */	cmplwi r0, 0
/* 8007DB10 0007AA70  40 82 00 2C */	bne lbl_8007DB3C
/* 8007DB14 0007AA74  36 DF 05 20 */	addic. r22, r31, 0x520
/* 8007DB18 0007AA78  41 82 00 18 */	beq lbl_8007DB30
/* 8007DB1C 0007AA7C  7E C3 B3 78 */	mr r3, r22
/* 8007DB20 0007AA80  38 81 00 6C */	addi r4, r1, 0x6c
/* 8007DB24 0007AA84  48 2C 33 85 */	bl __ct__6CTokenFRC6CToken
/* 8007DB28 0007AA88  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8007DB2C 0007AA8C  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DB30:
/* 8007DB30 0007AA90  38 00 00 01 */	li r0, 1
/* 8007DB34 0007AA94  98 1F 05 2C */	stb r0, 0x52c(r31)
/* 8007DB38 0007AA98  48 00 00 1C */	b lbl_8007DB54
lbl_8007DB3C:
/* 8007DB3C 0007AA9C  3A DF 05 20 */	addi r22, r31, 0x520
/* 8007DB40 0007AAA0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8007DB44 0007AAA4  7E C3 B3 78 */	mr r3, r22
/* 8007DB48 0007AAA8  48 2C 31 7D */	bl __as__6CTokenFRC6CToken
/* 8007DB4C 0007AAAC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8007DB50 0007AAB0  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DB54:
/* 8007DB54 0007AAB4  38 61 00 6C */	addi r3, r1, 0x6c
/* 8007DB58 0007AAB8  38 80 00 00 */	li r4, 0
/* 8007DB5C 0007AABC  48 2C 32 E5 */	bl __dt__6CTokenFv
/* 8007DB60 0007AAC0  38 61 00 44 */	addi r3, r1, 0x44
/* 8007DB64 0007AAC4  38 80 FF FF */	li r4, -1
/* 8007DB68 0007AAC8  48 2C 32 D9 */	bl __dt__6CTokenFv
/* 8007DB6C 0007AACC  38 7F 05 20 */	addi r3, r31, 0x520
/* 8007DB70 0007AAD0  48 2C 32 15 */	bl Lock__6CTokenFv
lbl_8007DB74:
/* 8007DB74 0007AAD4  80 98 01 20 */	lwz r4, 0x120(r24)
/* 8007DB78 0007AAD8  3C 04 00 01 */	addis r0, r4, 1
/* 8007DB7C 0007AADC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007DB80 0007AAE0  41 82 00 B0 */	beq lbl_8007DC30
/* 8007DB84 0007AAE4  3C 60 45 4C */	lis r3, 0x454C5343@ha
/* 8007DB88 0007AAE8  90 81 00 40 */	stw r4, 0x40(r1)
/* 8007DB8C 0007AAEC  38 03 53 43 */	addi r0, r3, 0x454C5343@l
/* 8007DB90 0007AAF0  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8007DB94 0007AAF4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8007DB98 0007AAF8  38 61 00 34 */	addi r3, r1, 0x34
/* 8007DB9C 0007AAFC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8007DBA0 0007AB00  81 84 00 00 */	lwz r12, 0(r4)
/* 8007DBA4 0007AB04  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8007DBA8 0007AB08  7D 89 03 A6 */	mtctr r12
/* 8007DBAC 0007AB0C  4E 80 04 21 */	bctrl
/* 8007DBB0 0007AB10  38 61 00 60 */	addi r3, r1, 0x60
/* 8007DBB4 0007AB14  38 81 00 34 */	addi r4, r1, 0x34
/* 8007DBB8 0007AB18  48 2C 32 F1 */	bl __ct__6CTokenFRC6CToken
/* 8007DBBC 0007AB1C  38 00 00 00 */	li r0, 0
/* 8007DBC0 0007AB20  90 01 00 68 */	stw r0, 0x68(r1)
/* 8007DBC4 0007AB24  88 1F 05 3C */	lbz r0, 0x53c(r31)
/* 8007DBC8 0007AB28  28 00 00 00 */	cmplwi r0, 0
/* 8007DBCC 0007AB2C  40 82 00 2C */	bne lbl_8007DBF8
/* 8007DBD0 0007AB30  36 DF 05 30 */	addic. r22, r31, 0x530
/* 8007DBD4 0007AB34  41 82 00 18 */	beq lbl_8007DBEC
/* 8007DBD8 0007AB38  7E C3 B3 78 */	mr r3, r22
/* 8007DBDC 0007AB3C  38 81 00 60 */	addi r4, r1, 0x60
/* 8007DBE0 0007AB40  48 2C 32 C9 */	bl __ct__6CTokenFRC6CToken
/* 8007DBE4 0007AB44  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8007DBE8 0007AB48  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DBEC:
/* 8007DBEC 0007AB4C  38 00 00 01 */	li r0, 1
/* 8007DBF0 0007AB50  98 1F 05 3C */	stb r0, 0x53c(r31)
/* 8007DBF4 0007AB54  48 00 00 1C */	b lbl_8007DC10
lbl_8007DBF8:
/* 8007DBF8 0007AB58  3A DF 05 30 */	addi r22, r31, 0x530
/* 8007DBFC 0007AB5C  38 81 00 60 */	addi r4, r1, 0x60
/* 8007DC00 0007AB60  7E C3 B3 78 */	mr r3, r22
/* 8007DC04 0007AB64  48 2C 30 C1 */	bl __as__6CTokenFRC6CToken
/* 8007DC08 0007AB68  80 01 00 68 */	lwz r0, 0x68(r1)
/* 8007DC0C 0007AB6C  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DC10:
/* 8007DC10 0007AB70  38 61 00 60 */	addi r3, r1, 0x60
/* 8007DC14 0007AB74  38 80 00 00 */	li r4, 0
/* 8007DC18 0007AB78  48 2C 32 29 */	bl __dt__6CTokenFv
/* 8007DC1C 0007AB7C  38 61 00 34 */	addi r3, r1, 0x34
/* 8007DC20 0007AB80  38 80 FF FF */	li r4, -1
/* 8007DC24 0007AB84  48 2C 32 1D */	bl __dt__6CTokenFv
/* 8007DC28 0007AB88  38 7F 05 30 */	addi r3, r31, 0x530
/* 8007DC2C 0007AB8C  48 2C 31 59 */	bl Lock__6CTokenFv
lbl_8007DC30:
/* 8007DC30 0007AB90  80 98 01 30 */	lwz r4, 0x130(r24)
/* 8007DC34 0007AB94  3C 04 00 01 */	addis r0, r4, 1
/* 8007DC38 0007AB98  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007DC3C 0007AB9C  41 82 00 B0 */	beq lbl_8007DCEC
/* 8007DC40 0007ABA0  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 8007DC44 0007ABA4  90 81 00 30 */	stw r4, 0x30(r1)
/* 8007DC48 0007ABA8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8007DC4C 0007ABAC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8007DC50 0007ABB0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8007DC54 0007ABB4  38 61 00 24 */	addi r3, r1, 0x24
/* 8007DC58 0007ABB8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8007DC5C 0007ABBC  81 84 00 00 */	lwz r12, 0(r4)
/* 8007DC60 0007ABC0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8007DC64 0007ABC4  7D 89 03 A6 */	mtctr r12
/* 8007DC68 0007ABC8  4E 80 04 21 */	bctrl
/* 8007DC6C 0007ABCC  38 61 00 54 */	addi r3, r1, 0x54
/* 8007DC70 0007ABD0  38 81 00 24 */	addi r4, r1, 0x24
/* 8007DC74 0007ABD4  48 2C 32 35 */	bl __ct__6CTokenFRC6CToken
/* 8007DC78 0007ABD8  38 00 00 00 */	li r0, 0
/* 8007DC7C 0007ABDC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8007DC80 0007ABE0  88 1F 05 58 */	lbz r0, 0x558(r31)
/* 8007DC84 0007ABE4  28 00 00 00 */	cmplwi r0, 0
/* 8007DC88 0007ABE8  40 82 00 2C */	bne lbl_8007DCB4
/* 8007DC8C 0007ABEC  36 DF 05 4C */	addic. r22, r31, 0x54c
/* 8007DC90 0007ABF0  41 82 00 18 */	beq lbl_8007DCA8
/* 8007DC94 0007ABF4  7E C3 B3 78 */	mr r3, r22
/* 8007DC98 0007ABF8  38 81 00 54 */	addi r4, r1, 0x54
/* 8007DC9C 0007ABFC  48 2C 32 0D */	bl __ct__6CTokenFRC6CToken
/* 8007DCA0 0007AC00  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8007DCA4 0007AC04  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DCA8:
/* 8007DCA8 0007AC08  38 00 00 01 */	li r0, 1
/* 8007DCAC 0007AC0C  98 1F 05 58 */	stb r0, 0x558(r31)
/* 8007DCB0 0007AC10  48 00 00 1C */	b lbl_8007DCCC
lbl_8007DCB4:
/* 8007DCB4 0007AC14  3A DF 05 4C */	addi r22, r31, 0x54c
/* 8007DCB8 0007AC18  38 81 00 54 */	addi r4, r1, 0x54
/* 8007DCBC 0007AC1C  7E C3 B3 78 */	mr r3, r22
/* 8007DCC0 0007AC20  48 2C 30 05 */	bl __as__6CTokenFRC6CToken
/* 8007DCC4 0007AC24  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8007DCC8 0007AC28  90 16 00 08 */	stw r0, 8(r22)
lbl_8007DCCC:
/* 8007DCCC 0007AC2C  38 61 00 54 */	addi r3, r1, 0x54
/* 8007DCD0 0007AC30  38 80 00 00 */	li r4, 0
/* 8007DCD4 0007AC34  48 2C 31 6D */	bl __dt__6CTokenFv
/* 8007DCD8 0007AC38  38 61 00 24 */	addi r3, r1, 0x24
/* 8007DCDC 0007AC3C  38 80 FF FF */	li r4, -1
/* 8007DCE0 0007AC40  48 2C 31 61 */	bl __dt__6CTokenFv
/* 8007DCE4 0007AC44  38 7F 05 4C */	addi r3, r31, 0x54c
/* 8007DCE8 0007AC48  48 2C 30 9D */	bl Lock__6CTokenFv
lbl_8007DCEC:
/* 8007DCEC 0007AC4C  C0 3F 04 14 */	lfs f1, 0x414(r31)
/* 8007DCF0 0007AC50  C0 02 89 08 */	lfs f0, lbl_805AA628@sda21(r2)
/* 8007DCF4 0007AC54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007DCF8 0007AC58  40 81 00 08 */	ble lbl_8007DD00
/* 8007DCFC 0007AC5C  D0 1F 04 14 */	stfs f0, 0x414(r31)
lbl_8007DD00:
/* 8007DD00 0007AC60  38 80 00 00 */	li r4, 0
/* 8007DD04 0007AC64  88 1F 00 E6 */	lbz r0, 0xe6(r31)
/* 8007DD08 0007AC68  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8007DD0C 0007AC6C  98 1F 00 E6 */	stb r0, 0xe6(r31)
/* 8007DD10 0007AC70  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 8007DD14 0007AC74  28 03 00 00 */	cmplwi r3, 0
/* 8007DD18 0007AC78  41 82 00 20 */	beq lbl_8007DD38
/* 8007DD1C 0007AC7C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8007DD20 0007AC80  28 00 00 00 */	cmplwi r0, 0
/* 8007DD24 0007AC84  40 82 00 10 */	bne lbl_8007DD34
/* 8007DD28 0007AC88  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8007DD2C 0007AC8C  28 00 00 00 */	cmplwi r0, 0
/* 8007DD30 0007AC90  41 82 00 08 */	beq lbl_8007DD38
lbl_8007DD34:
/* 8007DD34 0007AC94  38 80 00 01 */	li r4, 1
lbl_8007DD38:
/* 8007DD38 0007AC98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8007DD3C 0007AC9C  41 82 00 30 */	beq lbl_8007DD6C
/* 8007DD40 0007ACA0  38 80 00 01 */	li r4, 1
/* 8007DD44 0007ACA4  48 09 70 E5 */	bl HasModel__10CModelDataCF11EWhichModel
/* 8007DD48 0007ACA8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8007DD4C 0007ACAC  88 1F 04 02 */	lbz r0, 0x402(r31)
/* 8007DD50 0007ACB0  7C 64 00 34 */	cntlzw r4, r3
/* 8007DD54 0007ACB4  54 85 DE 3E */	rlwinm r5, r4, 0x1b, 0x18, 0x1f
/* 8007DD58 0007ACB8  7F E3 FB 78 */	mr r3, r31
/* 8007DD5C 0007ACBC  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 8007DD60 0007ACC0  7F 64 DB 78 */	mr r4, r27
/* 8007DD64 0007ACC4  98 1F 04 02 */	stb r0, 0x402(r31)
/* 8007DD68 0007ACC8  4B FF F3 A9 */	bl BuildBodyController__10CPatternedF9EBodyType
lbl_8007DD6C:
/* 8007DD6C 0007ACCC  7F E3 FB 78 */	mr r3, r31
/* 8007DD70 0007ACD0  BA C1 00 98 */	lmw r22, 0x98(r1)
/* 8007DD74 0007ACD4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8007DD78 0007ACD8  7C 08 03 A6 */	mtlr r0
/* 8007DD7C 0007ACDC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8007DD80 0007ACE0  4E 80 00 20 */	blr

.global sub_8007dd84
sub_8007dd84:
/* 8007DD84 0007ACE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DD88 0007ACE8  7C 08 02 A6 */	mflr r0
/* 8007DD8C 0007ACEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DD90 0007ACF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007DD94 0007ACF4  7C 7F 1B 78 */	mr r31, r3
/* 8007DD98 0007ACF8  80 83 00 00 */	lwz r4, 0(r3)
/* 8007DD9C 0007ACFC  80 64 00 04 */	lwz r3, 4(r4)
/* 8007DDA0 0007AD00  34 03 FF FF */	addic. r0, r3, -1
/* 8007DDA4 0007AD04  90 04 00 04 */	stw r0, 4(r4)
/* 8007DDA8 0007AD08  41 81 00 24 */	bgt lbl_8007DDCC
/* 8007DDAC 0007AD0C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8007DDB0 0007AD10  38 80 00 01 */	li r4, 1
/* 8007DDB4 0007AD14  80 63 00 00 */	lwz r3, 0(r3)
/* 8007DDB8 0007AD18  4B FF 9F 89 */	bl __dt__18CVertexMorphEffectFv
/* 8007DDBC 0007AD1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8007DDC0 0007AD20  28 03 00 00 */	cmplwi r3, 0
/* 8007DDC4 0007AD24  41 82 00 08 */	beq lbl_8007DDCC
/* 8007DDC8 0007AD28  48 29 7B 69 */	bl Free__7CMemoryFPCv
lbl_8007DDCC:
/* 8007DDCC 0007AD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DDD0 0007AD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007DDD4 0007AD34  7C 08 03 A6 */	mtlr r0
/* 8007DDD8 0007AD38  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DDDC 0007AD3C  4E 80 00 20 */	blr

.global "Min<f>__5CMathFRCfRCf"
"Min<f>__5CMathFRCfRCf":
/* 8007DDE0 0007AD40  C0 23 00 00 */	lfs f1, 0(r3)
/* 8007DDE4 0007AD44  C0 04 00 00 */	lfs f0, 0(r4)
/* 8007DDE8 0007AD48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8007DDEC 0007AD4C  4D 80 00 20 */	bltlr
/* 8007DDF0 0007AD50  7C 83 23 78 */	mr r3, r4
/* 8007DDF4 0007AD54  4E 80 00 20 */	blr

.global __sinit_CPatterned_cpp
__sinit_CPatterned_cpp:
/* 8007DDF8 0007AD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007DDFC 0007AD5C  7C 08 02 A6 */	mflr r0
/* 8007DE00 0007AD60  C0 42 89 08 */	lfs f2, lbl_805AA628@sda21(r2)
/* 8007DE04 0007AD64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007DE08 0007AD68  38 61 00 0C */	addi r3, r1, 0xc
/* 8007DE0C 0007AD6C  FC 60 10 90 */	fmr f3, f2
/* 8007DE10 0007AD70  C0 22 89 10 */	lfs f1, lbl_805AA630@sda21(r2)
/* 8007DE14 0007AD74  C0 82 89 04 */	lfs f4, lbl_805AA624@sda21(r2)
/* 8007DE18 0007AD78  48 2E 55 D5 */	bl __ct__6CColorFffff
/* 8007DE1C 0007AD7C  C0 22 89 10 */	lfs f1, lbl_805AA630@sda21(r2)
/* 8007DE20 0007AD80  38 61 00 08 */	addi r3, r1, 8
/* 8007DE24 0007AD84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007DE28 0007AD88  FC 40 08 90 */	fmr f2, f1
/* 8007DE2C 0007AD8C  C0 62 89 08 */	lfs f3, lbl_805AA628@sda21(r2)
/* 8007DE30 0007AD90  90 0D A2 50 */	stw r0, lbl_805A8E10@sda21(r13)
/* 8007DE34 0007AD94  C0 82 89 04 */	lfs f4, lbl_805AA624@sda21(r2)
/* 8007DE38 0007AD98  48 2E 55 B5 */	bl __ct__6CColorFffff
/* 8007DE3C 0007AD9C  80 61 00 08 */	lwz r3, 8(r1)
/* 8007DE40 0007ADA0  38 00 00 00 */	li r0, 0
/* 8007DE44 0007ADA4  39 00 00 FF */	li r8, 0xff
/* 8007DE48 0007ADA8  38 ED A2 58 */	addi r7, r13, lbl_805A8E18@sda21
/* 8007DE4C 0007ADAC  38 C0 00 C0 */	li r6, 0xc0
/* 8007DE50 0007ADB0  90 6D A2 54 */	stw r3, lbl_805A8E14@sda21(r13)
/* 8007DE54 0007ADB4  80 AD 83 E4 */	lwz r5, lbl_805A6FA4@sda21(r13)
/* 8007DE58 0007ADB8  38 60 00 00 */	li r3, 0
/* 8007DE5C 0007ADBC  99 0D A2 58 */	stb r8, lbl_805A8E18@sda21(r13)
/* 8007DE60 0007ADC0  38 80 00 01 */	li r4, 1
/* 8007DE64 0007ADC4  99 07 00 01 */	stb r8, 1(r7)
/* 8007DE68 0007ADC8  98 C7 00 02 */	stb r6, 2(r7)
/* 8007DE6C 0007ADCC  99 07 00 03 */	stb r8, 3(r7)
/* 8007DE70 0007ADD0  90 0D A2 64 */	stw r0, lbl_805A8E24@sda21(r13)
/* 8007DE74 0007ADD4  90 0D A2 60 */	stw r0, lbl_805A8E20@sda21(r13)
/* 8007DE78 0007ADD8  48 30 C0 7D */	bl __shl2i
/* 8007DE7C 0007ADDC  80 0D A2 60 */	lwz r0, lbl_805A8E20@sda21(r13)
/* 8007DE80 0007ADE0  80 CD A2 64 */	lwz r6, lbl_805A8E24@sda21(r13)
/* 8007DE84 0007ADE4  7C 00 1B 78 */	or r0, r0, r3
/* 8007DE88 0007ADE8  80 AD 83 E8 */	lwz r5, lbl_805A6FA8@sda21(r13)
/* 8007DE8C 0007ADEC  7C C4 23 78 */	or r4, r6, r4
/* 8007DE90 0007ADF0  90 0D A2 60 */	stw r0, lbl_805A8E20@sda21(r13)
/* 8007DE94 0007ADF4  38 60 00 00 */	li r3, 0
/* 8007DE98 0007ADF8  90 8D A2 64 */	stw r4, lbl_805A8E24@sda21(r13)
/* 8007DE9C 0007ADFC  38 80 00 01 */	li r4, 1
/* 8007DEA0 0007AE00  48 30 C0 55 */	bl __shl2i
/* 8007DEA4 0007AE04  80 0D A2 60 */	lwz r0, lbl_805A8E20@sda21(r13)
/* 8007DEA8 0007AE08  80 CD A2 64 */	lwz r6, lbl_805A8E24@sda21(r13)
/* 8007DEAC 0007AE0C  7C 00 1B 78 */	or r0, r0, r3
/* 8007DEB0 0007AE10  80 AD 83 EC */	lwz r5, lbl_805A6FAC@sda21(r13)
/* 8007DEB4 0007AE14  7C C4 23 78 */	or r4, r6, r4
/* 8007DEB8 0007AE18  90 0D A2 60 */	stw r0, lbl_805A8E20@sda21(r13)
/* 8007DEBC 0007AE1C  38 60 00 00 */	li r3, 0
/* 8007DEC0 0007AE20  90 8D A2 64 */	stw r4, lbl_805A8E24@sda21(r13)
/* 8007DEC4 0007AE24  38 80 00 01 */	li r4, 1
/* 8007DEC8 0007AE28  48 30 C0 2D */	bl __shl2i
/* 8007DECC 0007AE2C  80 0D A2 60 */	lwz r0, lbl_805A8E20@sda21(r13)
/* 8007DED0 0007AE30  80 CD A2 64 */	lwz r6, lbl_805A8E24@sda21(r13)
/* 8007DED4 0007AE34  7C 00 1B 78 */	or r0, r0, r3
/* 8007DED8 0007AE38  80 AD 83 F0 */	lwz r5, lbl_805A6FB0@sda21(r13)
/* 8007DEDC 0007AE3C  7C C4 23 78 */	or r4, r6, r4
/* 8007DEE0 0007AE40  90 0D A2 60 */	stw r0, lbl_805A8E20@sda21(r13)
/* 8007DEE4 0007AE44  38 60 00 00 */	li r3, 0
/* 8007DEE8 0007AE48  90 8D A2 64 */	stw r4, lbl_805A8E24@sda21(r13)
/* 8007DEEC 0007AE4C  38 80 00 01 */	li r4, 1
/* 8007DEF0 0007AE50  48 30 C0 05 */	bl __shl2i
/* 8007DEF4 0007AE54  80 AD A2 60 */	lwz r5, lbl_805A8E20@sda21(r13)
/* 8007DEF8 0007AE58  38 00 00 00 */	li r0, 0
/* 8007DEFC 0007AE5C  80 CD A2 64 */	lwz r6, lbl_805A8E24@sda21(r13)
/* 8007DF00 0007AE60  7C A3 1B 78 */	or r3, r5, r3
/* 8007DF04 0007AE64  80 AD 83 F4 */	lwz r5, lbl_805A6FB4@sda21(r13)
/* 8007DF08 0007AE68  7C C4 23 78 */	or r4, r6, r4
/* 8007DF0C 0007AE6C  90 6D A2 60 */	stw r3, lbl_805A8E20@sda21(r13)
/* 8007DF10 0007AE70  38 60 00 00 */	li r3, 0
/* 8007DF14 0007AE74  90 8D A2 64 */	stw r4, lbl_805A8E24@sda21(r13)
/* 8007DF18 0007AE78  38 80 00 01 */	li r4, 1
/* 8007DF1C 0007AE7C  90 0D A2 6C */	stw r0, lbl_805A8E2C@sda21(r13)
/* 8007DF20 0007AE80  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DF24 0007AE84  48 30 BF D1 */	bl __shl2i
/* 8007DF28 0007AE88  80 0D A2 68 */	lwz r0, lbl_805A8E28@sda21(r13)
/* 8007DF2C 0007AE8C  80 CD A2 6C */	lwz r6, lbl_805A8E2C@sda21(r13)
/* 8007DF30 0007AE90  7C 00 1B 78 */	or r0, r0, r3
/* 8007DF34 0007AE94  80 AD 83 F8 */	lwz r5, lbl_805A6FB8@sda21(r13)
/* 8007DF38 0007AE98  7C C4 23 78 */	or r4, r6, r4
/* 8007DF3C 0007AE9C  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DF40 0007AEA0  38 60 00 00 */	li r3, 0
/* 8007DF44 0007AEA4  90 8D A2 6C */	stw r4, lbl_805A8E2C@sda21(r13)
/* 8007DF48 0007AEA8  38 80 00 01 */	li r4, 1
/* 8007DF4C 0007AEAC  48 30 BF A9 */	bl __shl2i
/* 8007DF50 0007AEB0  80 0D A2 68 */	lwz r0, lbl_805A8E28@sda21(r13)
/* 8007DF54 0007AEB4  80 CD A2 6C */	lwz r6, lbl_805A8E2C@sda21(r13)
/* 8007DF58 0007AEB8  7C 00 1B 78 */	or r0, r0, r3
/* 8007DF5C 0007AEBC  80 AD 83 FC */	lwz r5, lbl_805A6FBC@sda21(r13)
/* 8007DF60 0007AEC0  7C C4 23 78 */	or r4, r6, r4
/* 8007DF64 0007AEC4  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DF68 0007AEC8  38 60 00 00 */	li r3, 0
/* 8007DF6C 0007AECC  90 8D A2 6C */	stw r4, lbl_805A8E2C@sda21(r13)
/* 8007DF70 0007AED0  38 80 00 01 */	li r4, 1
/* 8007DF74 0007AED4  48 30 BF 81 */	bl __shl2i
/* 8007DF78 0007AED8  80 0D A2 68 */	lwz r0, lbl_805A8E28@sda21(r13)
/* 8007DF7C 0007AEDC  80 CD A2 6C */	lwz r6, lbl_805A8E2C@sda21(r13)
/* 8007DF80 0007AEE0  7C 00 1B 78 */	or r0, r0, r3
/* 8007DF84 0007AEE4  80 AD 84 00 */	lwz r5, lbl_805A6FC0@sda21(r13)
/* 8007DF88 0007AEE8  7C C4 23 78 */	or r4, r6, r4
/* 8007DF8C 0007AEEC  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DF90 0007AEF0  38 60 00 00 */	li r3, 0
/* 8007DF94 0007AEF4  90 8D A2 6C */	stw r4, lbl_805A8E2C@sda21(r13)
/* 8007DF98 0007AEF8  38 80 00 01 */	li r4, 1
/* 8007DF9C 0007AEFC  48 30 BF 59 */	bl __shl2i
/* 8007DFA0 0007AF00  80 0D A2 68 */	lwz r0, lbl_805A8E28@sda21(r13)
/* 8007DFA4 0007AF04  80 CD A2 6C */	lwz r6, lbl_805A8E2C@sda21(r13)
/* 8007DFA8 0007AF08  7C 00 1B 78 */	or r0, r0, r3
/* 8007DFAC 0007AF0C  80 AD 84 04 */	lwz r5, lbl_805A6FC4@sda21(r13)
/* 8007DFB0 0007AF10  7C C4 23 78 */	or r4, r6, r4
/* 8007DFB4 0007AF14  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DFB8 0007AF18  38 60 00 00 */	li r3, 0
/* 8007DFBC 0007AF1C  90 8D A2 6C */	stw r4, lbl_805A8E2C@sda21(r13)
/* 8007DFC0 0007AF20  38 80 00 01 */	li r4, 1
/* 8007DFC4 0007AF24  48 30 BF 31 */	bl __shl2i
/* 8007DFC8 0007AF28  80 0D A2 68 */	lwz r0, lbl_805A8E28@sda21(r13)
/* 8007DFCC 0007AF2C  80 AD A2 6C */	lwz r5, lbl_805A8E2C@sda21(r13)
/* 8007DFD0 0007AF30  7C 00 1B 78 */	or r0, r0, r3
/* 8007DFD4 0007AF34  7C A3 23 78 */	or r3, r5, r4
/* 8007DFD8 0007AF38  90 0D A2 68 */	stw r0, lbl_805A8E28@sda21(r13)
/* 8007DFDC 0007AF3C  90 6D A2 6C */	stw r3, lbl_805A8E2C@sda21(r13)
/* 8007DFE0 0007AF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007DFE4 0007AF44  7C 08 03 A6 */	mtlr r0
/* 8007DFE8 0007AF48  38 21 00 10 */	addi r1, r1, 0x10
/* 8007DFEC 0007AF4C  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CD600
lbl_803CD600:
	# ROM: 0x3CA600
	.asciz "??(??)"
	.byte 0x6C
	.asciz "ockon_target_LCTR"
	.byte 0x44, 0x65
	.4byte 0x61640053
	.asciz "tart"
	.balign 4

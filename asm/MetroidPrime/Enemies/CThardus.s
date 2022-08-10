.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CThardus_cpp

.section .data

.global lbl_803E5CE0
lbl_803E5CE0:
	# ROM: 0x3E2CE0
	.4byte 0
	.4byte 0
	.4byte __dt__8CThardusFv
	.4byte Accept__8CThardusFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__8CThardusFfR13CStateManager
	.4byte AcceptScriptMsg__8CThardusF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__8CThardusFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__8CThardusCFRC13CStateManager
	.4byte CanRenderUnsorted__8CThardusCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__8CThardusFR6CActorR13CStateManager
	.4byte GetOrbitPosition__8CThardusCFRC13CStateManager
	.4byte GetAimPosition__8CThardusCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__8CThardusCFRC12CTransform4f
	.4byte DoUserAnimEvent__8CThardusFR13CStateManagerRC13CInt32POINode14EUserEventType
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
	.4byte Patrol__8CThardusFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__8CThardusFR13CStateManager9EStateMsgf
	.4byte PathFind__8CThardusFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__8CThardusFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__8CThardusFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__8CThardusFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__8CThardusFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__8CThardusFR13CStateManager9EStateMsgf
	.4byte Shuffle__8CThardusFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Crouch__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__8CThardusFR13CStateManager9EStateMsgf
	.4byte Taunt__8CThardusFR13CStateManager9EStateMsgf
	.4byte Suck__8CThardusFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__8CThardusFR13CStateManager9EStateMsgf
	.4byte Flinch__8CThardusFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__8CThardusFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__8CThardusFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__8CThardusFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__8CThardusFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Growth__8CThardusFR13CStateManager9EStateMsgf
	.4byte Faint__8CThardusFR13CStateManager9EStateMsgf
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
	.4byte PathFound__8CThardusFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__8CThardusFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__10CPatternedFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte sub_801dec58
	.4byte PatternShagged__10CPatternedFR13CStateManagerf
	.4byte HasAttackPattern__8CThardusFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte sub_801de0b4
	.4byte ShouldAttack__3CAiFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__8CThardusFR13CStateManagerf
	.4byte ShouldTurn__8CThardusFR13CStateManagerf
	.4byte HitSomething__8CThardusFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__10CPatternedFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__10CPatternedFR13CStateManagerf
	.4byte HearShot__3CAiFR13CStateManagerf
	.4byte HearPlayer__8CThardusFR13CStateManagerf
	.4byte CoverCheck__3CAiFR13CStateManagerf
	.4byte CoverFind__3CAiFR13CStateManagerf
	.4byte CoverBlown__8CThardusFR13CStateManagerf
	.4byte CoverNearlyBlown__3CAiFR13CStateManagerf
	.4byte CoveringFire__8CThardusFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__3CAiFR13CStateManagerf
	.4byte AggressionCheck__8CThardusFR13CStateManagerf
	.4byte AttackOver__8CThardusFR13CStateManagerf
	.4byte ShouldTaunt__8CThardusFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__8CThardusFR13CStateManagerf
	.4byte ShotAt__3CAiFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__8CThardusFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__3CAiFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
	.4byte CodeTrigger__8CThardusFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__8CThardusFR13CStateManagerf
	.4byte ShouldCallForBackup__8CThardusFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__10CPatternedCFv
	.4byte MassiveDeath__10CPatternedFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__8CThardusFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E5FAC
lbl_803E5FAC:
	# ROM: 0x3E2FAC
	.4byte lbl_801E0B30
	.4byte lbl_801E107C
	.4byte lbl_801E1070
	.4byte lbl_801E1060
	.4byte lbl_801E107C
	.4byte lbl_801E107C
	.4byte lbl_801E1078
	.4byte lbl_801E107C
	.4byte lbl_801E0F44
	.4byte lbl_801E1010
	.4byte lbl_801E107C
	.4byte lbl_801E107C
	.4byte lbl_801E1054
	.4byte lbl_801E093C
	.4byte lbl_801E05C0
	.4byte lbl_801E1038
	.4byte lbl_801E0F14
	.4byte lbl_801E107C

.global lbl_803E5FF4
lbl_803E5FF4:
	# ROM: 0x3E2FF4
	.4byte lbl_801E21A4
	.4byte lbl_801E21D0
	.4byte lbl_801E2138
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E2110
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E1114
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E1BA4
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E112C
	.4byte lbl_801E1740
	.4byte lbl_801E17EC
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E21D0
	.4byte lbl_801E1E74

.global lbl_803E6074
lbl_803E6074:
	# ROM: 0x3E3074
	.4byte 0
	.4byte 0
	.4byte __dt__16CDestroyableRockFv
	.4byte Accept__16CDestroyableRockFR8IVisitor
	.4byte PreThink__16CDestroyableRockFfR13CStateManager
	.4byte Think__16CDestroyableRockFfR13CStateManager
	.4byte AcceptScriptMsg__16CDestroyableRockF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__16CDestroyableRockFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__6CActorCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__16CDestroyableRockCFRC13CStateManager
	.4byte CanRenderUnsorted__16CDestroyableRockCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__16CDestroyableRockCFv
	.4byte Touch__6CActorFR6CActorR13CStateManager
	.4byte GetOrbitPosition__16CDestroyableRockCFRC13CStateManager
	.4byte GetAimPosition__16CDestroyableRockCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__3CAiCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__6CActorFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__13CPhysicsActorFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__16CDestroyableRockFRC9CVector3fR13CStateManager
	.4byte KnockBack__16CDestroyableRockFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__16CDestroyableRockFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__3CAiFR13CStateManager9EStateMsgf
	.4byte FollowPattern__3CAiFR13CStateManager9EStateMsgf
	.4byte Dead__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFind__3CAiFR13CStateManager9EStateMsgf
	.4byte Start__3CAiFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__3CAiFR13CStateManager9EStateMsgf
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
	.4byte Leash__3CAiFR13CStateManagerf
	.4byte Offline__3CAiFR13CStateManagerf
	.4byte Attacked__3CAiFR13CStateManagerf
	.4byte PathShagged__3CAiFR13CStateManagerf
	.4byte PathOver__3CAiFR13CStateManagerf
	.4byte PathFound__3CAiFR13CStateManagerf
	.4byte TooClose__3CAiFR13CStateManagerf
	.4byte InRange__3CAiFR13CStateManagerf
	.4byte InMaxRange__3CAiFR13CStateManagerf
	.4byte InDetectionRange__3CAiFR13CStateManagerf
	.4byte SpotPlayer__3CAiFR13CStateManagerf
	.4byte PlayerSpot__3CAiFR13CStateManagerf
	.4byte PatternOver__3CAiFR13CStateManagerf
	.4byte PatternShagged__3CAiFR13CStateManagerf
	.4byte HasAttackPattern__3CAiFR13CStateManagerf
	.4byte HasPatrolPath__3CAiFR13CStateManagerf
	.4byte HasRetreatPattern__3CAiFR13CStateManagerf
	.4byte Delay__3CAiFR13CStateManagerf
	.4byte RandomDelay__3CAiFR13CStateManagerf
	.4byte FixedDelay__3CAiFR13CStateManagerf
	.4byte Default__3CAiFR13CStateManagerf
	.4byte AnimOver__3CAiFR13CStateManagerf
	.4byte ShouldAttack__3CAiFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__3CAiFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__3CAiFR13CStateManagerf
	.4byte Stuck__3CAiFR13CStateManagerf
	.4byte NoPathNodes__3CAiFR13CStateManagerf
	.4byte Landed__3CAiFR13CStateManagerf
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
	.4byte PatrolPathOver__3CAiFR13CStateManagerf
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
	.4byte CodeTrigger__3CAiFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__3CAiFR13CStateManagerf
	.4byte FixedRandom__3CAiFR13CStateManagerf
	.4byte IsDizzy__3CAiFR13CStateManagerf
	.4byte ShouldCallForBackup__3CAiFR13CStateManagerf
	.4byte 0

.section .sdata

.global lbl_805A7DA8
lbl_805A7DA8:
	# ROM: 0x3F5748
	.4byte 0

.global lbl_805A7DAC
lbl_805A7DAC:
	# ROM: 0x3F574C
	.4byte 0x00000020

.global lbl_805A7DB0
lbl_805A7DB0:
	# ROM: 0x3F5750
	.4byte 0x00000021

.global lbl_805A7DB4
lbl_805A7DB4:
	# ROM: 0x3F5754
	.4byte 0x0000002F

.global lbl_805A7DB8
lbl_805A7DB8:
	# ROM: 0x3F5758
	.4byte 0

.global lbl_805A7DBC
lbl_805A7DBC:
	# ROM: 0x3F575C
	.4byte 0

.global lbl_805A7DC0
lbl_805A7DC0:
	# ROM: 0x3F5760
	.4byte 0

.global lbl_805A7DC4
lbl_805A7DC4:
	# ROM: 0x3F5764
	.4byte 0

.global lbl_805A7DC8
lbl_805A7DC8:
	# ROM: 0x3F5768
	.4byte 0

.global lbl_805A7DCC
lbl_805A7DCC:
	# ROM: 0x3F576C
	.4byte 0x00000013

.global lbl_805A7DD0
lbl_805A7DD0:
	# ROM: 0x3F5770
	.4byte 0x00000013

.global lbl_805A7DD4
lbl_805A7DD4:
	# ROM: 0x3F5774
	.4byte 0x0000001E

.global lbl_805A7DD8
lbl_805A7DD8:
	# ROM: 0x3F5778
	.4byte 0x0000001F

.global lbl_805A7DDC
lbl_805A7DDC:
	# ROM: 0x3F577C
	.4byte 0x0000001D

.global lbl_805A7DE0
lbl_805A7DE0:
	# ROM: 0x3F5780
	.4byte 0

.global lbl_805A7DE4
lbl_805A7DE4:
	# ROM: 0x3F5784
	.4byte 0

.section .sbss, "wa"

.global lbl_805A9078
lbl_805A9078:
	.skip 0x8

.section .text, "ax"

.global __dt__8CThardusFv
__dt__8CThardusFv:
/* 801DA6D8 001D7638  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801DA6DC 001D763C  7C 08 02 A6 */	mflr r0
/* 801DA6E0 001D7640  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801DA6E4 001D7644  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 801DA6E8 001D7648  7C 9F 23 78 */	mr r31, r4
/* 801DA6EC 001D764C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 801DA6F0 001D7650  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DA6F4 001D7654  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 801DA6F8 001D7658  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 801DA6FC 001D765C  41 82 05 00 */	beq lbl_801DABFC
/* 801DA700 001D7660  3C 60 80 3E */	lis r3, lbl_803E5CE0@ha
/* 801DA704 001D7664  34 1E 09 1C */	addic. r0, r30, 0x91c
/* 801DA708 001D7668  38 03 5C E0 */	addi r0, r3, lbl_803E5CE0@l
/* 801DA70C 001D766C  90 1E 00 00 */	stw r0, 0(r30)
/* 801DA710 001D7670  41 82 00 18 */	beq lbl_801DA728
/* 801DA714 001D7674  34 1E 09 1C */	addic. r0, r30, 0x91c
/* 801DA718 001D7678  41 82 00 10 */	beq lbl_801DA728
/* 801DA71C 001D767C  38 7E 09 1C */	addi r3, r30, 0x91c
/* 801DA720 001D7680  38 80 00 00 */	li r4, 0
/* 801DA724 001D7684  48 16 67 1D */	bl __dt__6CTokenFv
lbl_801DA728:
/* 801DA728 001D7688  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 801DA72C 001D768C  41 82 00 44 */	beq lbl_801DA770
/* 801DA730 001D7690  80 1E 09 10 */	lwz r0, 0x910(r30)
/* 801DA734 001D7694  80 7E 09 18 */	lwz r3, 0x918(r30)
/* 801DA738 001D7698  54 00 10 3A */	slwi r0, r0, 2
/* 801DA73C 001D769C  7C 03 02 14 */	add r0, r3, r0
/* 801DA740 001D76A0  90 61 00 AC */	stw r3, 0xac(r1)
/* 801DA744 001D76A4  7C 64 1B 78 */	mr r4, r3
/* 801DA748 001D76A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DA74C 001D76AC  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 801DA750 001D76B0  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 801DA754 001D76B4  48 00 00 08 */	b lbl_801DA75C
lbl_801DA758:
/* 801DA758 001D76B8  38 84 00 04 */	addi r4, r4, 4
lbl_801DA75C:
/* 801DA75C 001D76BC  7C 04 00 40 */	cmplw r4, r0
/* 801DA760 001D76C0  40 82 FF F8 */	bne lbl_801DA758
/* 801DA764 001D76C4  28 03 00 00 */	cmplwi r3, 0
/* 801DA768 001D76C8  41 82 00 08 */	beq lbl_801DA770
/* 801DA76C 001D76CC  48 13 B1 C5 */	bl Free__7CMemoryFPCv
lbl_801DA770:
/* 801DA770 001D76D0  34 1E 08 F4 */	addic. r0, r30, 0x8f4
/* 801DA774 001D76D4  41 82 00 44 */	beq lbl_801DA7B8
/* 801DA778 001D76D8  80 1E 08 F8 */	lwz r0, 0x8f8(r30)
/* 801DA77C 001D76DC  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801DA780 001D76E0  54 00 08 3C */	slwi r0, r0, 1
/* 801DA784 001D76E4  7C 03 02 14 */	add r0, r3, r0
/* 801DA788 001D76E8  90 61 00 9C */	stw r3, 0x9c(r1)
/* 801DA78C 001D76EC  7C 64 1B 78 */	mr r4, r3
/* 801DA790 001D76F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801DA794 001D76F4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801DA798 001D76F8  90 61 00 98 */	stw r3, 0x98(r1)
/* 801DA79C 001D76FC  48 00 00 08 */	b lbl_801DA7A4
lbl_801DA7A0:
/* 801DA7A0 001D7700  38 84 00 02 */	addi r4, r4, 2
lbl_801DA7A4:
/* 801DA7A4 001D7704  7C 04 00 40 */	cmplw r4, r0
/* 801DA7A8 001D7708  40 82 FF F8 */	bne lbl_801DA7A0
/* 801DA7AC 001D770C  28 03 00 00 */	cmplwi r3, 0
/* 801DA7B0 001D7710  41 82 00 08 */	beq lbl_801DA7B8
/* 801DA7B4 001D7714  48 13 B1 7D */	bl Free__7CMemoryFPCv
lbl_801DA7B8:
/* 801DA7B8 001D7718  34 1E 07 F0 */	addic. r0, r30, 0x7f0
/* 801DA7BC 001D771C  41 82 00 60 */	beq lbl_801DA81C
/* 801DA7C0 001D7720  34 1E 07 F4 */	addic. r0, r30, 0x7f4
/* 801DA7C4 001D7724  41 82 00 58 */	beq lbl_801DA81C
/* 801DA7C8 001D7728  80 BE 07 F4 */	lwz r5, 0x7f4(r30)
/* 801DA7CC 001D772C  38 60 00 00 */	li r3, 0
/* 801DA7D0 001D7730  2C 05 00 00 */	cmpwi r5, 0
/* 801DA7D4 001D7734  40 81 00 40 */	ble lbl_801DA814
/* 801DA7D8 001D7738  2C 05 00 08 */	cmpwi r5, 8
/* 801DA7DC 001D773C  38 85 FF F8 */	addi r4, r5, -8
/* 801DA7E0 001D7740  40 81 00 20 */	ble lbl_801DA800
/* 801DA7E4 001D7744  38 04 00 07 */	addi r0, r4, 7
/* 801DA7E8 001D7748  54 00 E8 FE */	srwi r0, r0, 3
/* 801DA7EC 001D774C  7C 09 03 A6 */	mtctr r0
/* 801DA7F0 001D7750  2C 04 00 00 */	cmpwi r4, 0
/* 801DA7F4 001D7754  40 81 00 0C */	ble lbl_801DA800
lbl_801DA7F8:
/* 801DA7F8 001D7758  38 63 00 08 */	addi r3, r3, 8
/* 801DA7FC 001D775C  42 00 FF FC */	bdnz lbl_801DA7F8
lbl_801DA800:
/* 801DA800 001D7760  7C 03 28 50 */	subf r0, r3, r5
/* 801DA804 001D7764  7C 09 03 A6 */	mtctr r0
/* 801DA808 001D7768  7C 03 28 00 */	cmpw r3, r5
/* 801DA80C 001D776C  40 80 00 08 */	bge lbl_801DA814
lbl_801DA810:
/* 801DA810 001D7770  42 00 00 00 */	bdnz lbl_801DA810
lbl_801DA814:
/* 801DA814 001D7774  38 00 00 00 */	li r0, 0
/* 801DA818 001D7778  90 1E 07 F4 */	stw r0, 0x7f4(r30)
lbl_801DA81C:
/* 801DA81C 001D777C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 801DA820 001D7780  41 82 00 44 */	beq lbl_801DA864
/* 801DA824 001D7784  80 1E 07 AC */	lwz r0, 0x7ac(r30)
/* 801DA828 001D7788  80 7E 07 B4 */	lwz r3, 0x7b4(r30)
/* 801DA82C 001D778C  54 00 08 3C */	slwi r0, r0, 1
/* 801DA830 001D7790  7C 03 02 14 */	add r0, r3, r0
/* 801DA834 001D7794  90 61 00 8C */	stw r3, 0x8c(r1)
/* 801DA838 001D7798  7C 64 1B 78 */	mr r4, r3
/* 801DA83C 001D779C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801DA840 001D77A0  90 01 00 90 */	stw r0, 0x90(r1)
/* 801DA844 001D77A4  90 61 00 88 */	stw r3, 0x88(r1)
/* 801DA848 001D77A8  48 00 00 08 */	b lbl_801DA850
lbl_801DA84C:
/* 801DA84C 001D77AC  38 84 00 02 */	addi r4, r4, 2
lbl_801DA850:
/* 801DA850 001D77B0  7C 04 00 40 */	cmplw r4, r0
/* 801DA854 001D77B4  40 82 FF F8 */	bne lbl_801DA84C
/* 801DA858 001D77B8  28 03 00 00 */	cmplwi r3, 0
/* 801DA85C 001D77BC  41 82 00 08 */	beq lbl_801DA864
/* 801DA860 001D77C0  48 13 B0 D1 */	bl Free__7CMemoryFPCv
lbl_801DA864:
/* 801DA864 001D77C4  34 1E 07 98 */	addic. r0, r30, 0x798
/* 801DA868 001D77C8  41 82 00 44 */	beq lbl_801DA8AC
/* 801DA86C 001D77CC  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 801DA870 001D77D0  80 7E 07 A4 */	lwz r3, 0x7a4(r30)
/* 801DA874 001D77D4  54 00 08 3C */	slwi r0, r0, 1
/* 801DA878 001D77D8  7C 03 02 14 */	add r0, r3, r0
/* 801DA87C 001D77DC  90 61 00 7C */	stw r3, 0x7c(r1)
/* 801DA880 001D77E0  7C 64 1B 78 */	mr r4, r3
/* 801DA884 001D77E4  90 01 00 84 */	stw r0, 0x84(r1)
/* 801DA888 001D77E8  90 01 00 80 */	stw r0, 0x80(r1)
/* 801DA88C 001D77EC  90 61 00 78 */	stw r3, 0x78(r1)
/* 801DA890 001D77F0  48 00 00 08 */	b lbl_801DA898
lbl_801DA894:
/* 801DA894 001D77F4  38 84 00 02 */	addi r4, r4, 2
lbl_801DA898:
/* 801DA898 001D77F8  7C 04 00 40 */	cmplw r4, r0
/* 801DA89C 001D77FC  40 82 FF F8 */	bne lbl_801DA894
/* 801DA8A0 001D7800  28 03 00 00 */	cmplwi r3, 0
/* 801DA8A4 001D7804  41 82 00 08 */	beq lbl_801DA8AC
/* 801DA8A8 001D7808  48 13 B0 89 */	bl Free__7CMemoryFPCv
lbl_801DA8AC:
/* 801DA8AC 001D780C  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 801DA8B0 001D7810  41 82 00 44 */	beq lbl_801DA8F4
/* 801DA8B4 001D7814  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 801DA8B8 001D7818  80 7E 06 CC */	lwz r3, 0x6cc(r30)
/* 801DA8BC 001D781C  54 00 08 3C */	slwi r0, r0, 1
/* 801DA8C0 001D7820  7C 03 02 14 */	add r0, r3, r0
/* 801DA8C4 001D7824  90 61 00 6C */	stw r3, 0x6c(r1)
/* 801DA8C8 001D7828  7C 64 1B 78 */	mr r4, r3
/* 801DA8CC 001D782C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801DA8D0 001D7830  90 01 00 70 */	stw r0, 0x70(r1)
/* 801DA8D4 001D7834  90 61 00 68 */	stw r3, 0x68(r1)
/* 801DA8D8 001D7838  48 00 00 08 */	b lbl_801DA8E0
lbl_801DA8DC:
/* 801DA8DC 001D783C  38 84 00 02 */	addi r4, r4, 2
lbl_801DA8E0:
/* 801DA8E0 001D7840  7C 04 00 40 */	cmplw r4, r0
/* 801DA8E4 001D7844  40 82 FF F8 */	bne lbl_801DA8DC
/* 801DA8E8 001D7848  28 03 00 00 */	cmplwi r3, 0
/* 801DA8EC 001D784C  41 82 00 08 */	beq lbl_801DA8F4
/* 801DA8F0 001D7850  48 13 B0 41 */	bl Free__7CMemoryFPCv
lbl_801DA8F4:
/* 801DA8F4 001D7854  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 801DA8F8 001D7858  41 82 00 40 */	beq lbl_801DA938
/* 801DA8FC 001D785C  80 7E 06 BC */	lwz r3, 0x6bc(r30)
/* 801DA900 001D7860  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 801DA904 001D7864  90 61 00 5C */	stw r3, 0x5c(r1)
/* 801DA908 001D7868  7C 83 02 14 */	add r4, r3, r0
/* 801DA90C 001D786C  7C 03 20 50 */	subf r0, r3, r4
/* 801DA910 001D7870  90 81 00 64 */	stw r4, 0x64(r1)
/* 801DA914 001D7874  90 81 00 60 */	stw r4, 0x60(r1)
/* 801DA918 001D7878  90 61 00 58 */	stw r3, 0x58(r1)
/* 801DA91C 001D787C  7C 09 03 A6 */	mtctr r0
/* 801DA920 001D7880  7C 03 20 40 */	cmplw r3, r4
/* 801DA924 001D7884  41 82 00 08 */	beq lbl_801DA92C
lbl_801DA928:
/* 801DA928 001D7888  42 00 00 00 */	bdnz lbl_801DA928
lbl_801DA92C:
/* 801DA92C 001D788C  28 03 00 00 */	cmplwi r3, 0
/* 801DA930 001D7890  41 82 00 08 */	beq lbl_801DA938
/* 801DA934 001D7894  48 13 AF FD */	bl Free__7CMemoryFPCv
lbl_801DA938:
/* 801DA938 001D7898  34 1E 06 64 */	addic. r0, r30, 0x664
/* 801DA93C 001D789C  41 82 00 58 */	beq lbl_801DA994
/* 801DA940 001D78A0  80 BE 06 64 */	lwz r5, 0x664(r30)
/* 801DA944 001D78A4  38 60 00 00 */	li r3, 0
/* 801DA948 001D78A8  2C 05 00 00 */	cmpwi r5, 0
/* 801DA94C 001D78AC  40 81 00 40 */	ble lbl_801DA98C
/* 801DA950 001D78B0  2C 05 00 08 */	cmpwi r5, 8
/* 801DA954 001D78B4  38 85 FF F8 */	addi r4, r5, -8
/* 801DA958 001D78B8  40 81 00 20 */	ble lbl_801DA978
/* 801DA95C 001D78BC  38 04 00 07 */	addi r0, r4, 7
/* 801DA960 001D78C0  54 00 E8 FE */	srwi r0, r0, 3
/* 801DA964 001D78C4  7C 09 03 A6 */	mtctr r0
/* 801DA968 001D78C8  2C 04 00 00 */	cmpwi r4, 0
/* 801DA96C 001D78CC  40 81 00 0C */	ble lbl_801DA978
lbl_801DA970:
/* 801DA970 001D78D0  38 63 00 08 */	addi r3, r3, 8
/* 801DA974 001D78D4  42 00 FF FC */	bdnz lbl_801DA970
lbl_801DA978:
/* 801DA978 001D78D8  7C 03 28 50 */	subf r0, r3, r5
/* 801DA97C 001D78DC  7C 09 03 A6 */	mtctr r0
/* 801DA980 001D78E0  7C 03 28 00 */	cmpw r3, r5
/* 801DA984 001D78E4  40 80 00 08 */	bge lbl_801DA98C
lbl_801DA988:
/* 801DA988 001D78E8  42 00 00 00 */	bdnz lbl_801DA988
lbl_801DA98C:
/* 801DA98C 001D78EC  38 00 00 00 */	li r0, 0
/* 801DA990 001D78F0  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_801DA994:
/* 801DA994 001D78F4  34 1E 06 34 */	addic. r0, r30, 0x634
/* 801DA998 001D78F8  41 82 00 44 */	beq lbl_801DA9DC
/* 801DA99C 001D78FC  80 1E 06 38 */	lwz r0, 0x638(r30)
/* 801DA9A0 001D7900  80 7E 06 40 */	lwz r3, 0x640(r30)
/* 801DA9A4 001D7904  54 00 08 3C */	slwi r0, r0, 1
/* 801DA9A8 001D7908  7C 03 02 14 */	add r0, r3, r0
/* 801DA9AC 001D790C  90 61 00 4C */	stw r3, 0x4c(r1)
/* 801DA9B0 001D7910  7C 64 1B 78 */	mr r4, r3
/* 801DA9B4 001D7914  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DA9B8 001D7918  90 01 00 50 */	stw r0, 0x50(r1)
/* 801DA9BC 001D791C  90 61 00 48 */	stw r3, 0x48(r1)
/* 801DA9C0 001D7920  48 00 00 08 */	b lbl_801DA9C8
lbl_801DA9C4:
/* 801DA9C4 001D7924  38 84 00 02 */	addi r4, r4, 2
lbl_801DA9C8:
/* 801DA9C8 001D7928  7C 04 00 40 */	cmplw r4, r0
/* 801DA9CC 001D792C  40 82 FF F8 */	bne lbl_801DA9C4
/* 801DA9D0 001D7930  28 03 00 00 */	cmplwi r3, 0
/* 801DA9D4 001D7934  41 82 00 08 */	beq lbl_801DA9DC
/* 801DA9D8 001D7938  48 13 AF 59 */	bl Free__7CMemoryFPCv
lbl_801DA9DC:
/* 801DA9DC 001D793C  34 1E 06 20 */	addic. r0, r30, 0x620
/* 801DA9E0 001D7940  41 82 00 44 */	beq lbl_801DAA24
/* 801DA9E4 001D7944  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 801DA9E8 001D7948  80 7E 06 2C */	lwz r3, 0x62c(r30)
/* 801DA9EC 001D794C  54 00 08 3C */	slwi r0, r0, 1
/* 801DA9F0 001D7950  7C 03 02 14 */	add r0, r3, r0
/* 801DA9F4 001D7954  90 61 00 3C */	stw r3, 0x3c(r1)
/* 801DA9F8 001D7958  7C 64 1B 78 */	mr r4, r3
/* 801DA9FC 001D795C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DAA00 001D7960  90 01 00 40 */	stw r0, 0x40(r1)
/* 801DAA04 001D7964  90 61 00 38 */	stw r3, 0x38(r1)
/* 801DAA08 001D7968  48 00 00 08 */	b lbl_801DAA10
lbl_801DAA0C:
/* 801DAA0C 001D796C  38 84 00 02 */	addi r4, r4, 2
lbl_801DAA10:
/* 801DAA10 001D7970  7C 04 00 40 */	cmplw r4, r0
/* 801DAA14 001D7974  40 82 FF F8 */	bne lbl_801DAA0C
/* 801DAA18 001D7978  28 03 00 00 */	cmplwi r3, 0
/* 801DAA1C 001D797C  41 82 00 08 */	beq lbl_801DAA24
/* 801DAA20 001D7980  48 13 AF 11 */	bl Free__7CMemoryFPCv
lbl_801DAA24:
/* 801DAA24 001D7984  34 1E 06 10 */	addic. r0, r30, 0x610
/* 801DAA28 001D7988  41 82 00 44 */	beq lbl_801DAA6C
/* 801DAA2C 001D798C  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 801DAA30 001D7990  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 801DAA34 001D7994  54 00 08 3C */	slwi r0, r0, 1
/* 801DAA38 001D7998  7C 03 02 14 */	add r0, r3, r0
/* 801DAA3C 001D799C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801DAA40 001D79A0  7C 64 1B 78 */	mr r4, r3
/* 801DAA44 001D79A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DAA48 001D79A8  90 01 00 30 */	stw r0, 0x30(r1)
/* 801DAA4C 001D79AC  90 61 00 28 */	stw r3, 0x28(r1)
/* 801DAA50 001D79B0  48 00 00 08 */	b lbl_801DAA58
lbl_801DAA54:
/* 801DAA54 001D79B4  38 84 00 02 */	addi r4, r4, 2
lbl_801DAA58:
/* 801DAA58 001D79B8  7C 04 00 40 */	cmplw r4, r0
/* 801DAA5C 001D79BC  40 82 FF F8 */	bne lbl_801DAA54
/* 801DAA60 001D79C0  28 03 00 00 */	cmplwi r3, 0
/* 801DAA64 001D79C4  41 82 00 08 */	beq lbl_801DAA6C
/* 801DAA68 001D79C8  48 13 AE C9 */	bl Free__7CMemoryFPCv
lbl_801DAA6C:
/* 801DAA6C 001D79CC  34 1E 05 F8 */	addic. r0, r30, 0x5f8
/* 801DAA70 001D79D0  41 82 00 10 */	beq lbl_801DAA80
/* 801DAA74 001D79D4  80 7E 05 F8 */	lwz r3, 0x5f8(r30)
/* 801DAA78 001D79D8  38 80 00 01 */	li r4, 1
/* 801DAA7C 001D79DC  4B FC CE 61 */	bl sub_801a78dc
lbl_801DAA80:
/* 801DAA80 001D79E0  34 1E 05 F4 */	addic. r0, r30, 0x5f4
/* 801DAA84 001D79E4  41 82 00 10 */	beq lbl_801DAA94
/* 801DAA88 001D79E8  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 801DAA8C 001D79EC  38 80 00 01 */	li r4, 1
/* 801DAA90 001D79F0  4B FC CE 4D */	bl sub_801a78dc
lbl_801DAA94:
/* 801DAA94 001D79F4  34 1E 05 F0 */	addic. r0, r30, 0x5f0
/* 801DAA98 001D79F8  41 82 00 10 */	beq lbl_801DAAA8
/* 801DAA9C 001D79FC  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 801DAAA0 001D7A00  38 80 00 01 */	li r4, 1
/* 801DAAA4 001D7A04  4B FC CE 39 */	bl sub_801a78dc
lbl_801DAAA8:
/* 801DAAA8 001D7A08  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 801DAAAC 001D7A0C  41 82 00 50 */	beq lbl_801DAAFC
/* 801DAAB0 001D7A10  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 801DAAB4 001D7A14  83 9E 05 E8 */	lwz r28, 0x5e8(r30)
/* 801DAAB8 001D7A18  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 801DAABC 001D7A1C  93 81 00 1C */	stw r28, 0x1c(r1)
/* 801DAAC0 001D7A20  7F BC 02 14 */	add r29, r28, r0
/* 801DAAC4 001D7A24  93 81 00 18 */	stw r28, 0x18(r1)
/* 801DAAC8 001D7A28  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801DAACC 001D7A2C  93 A1 00 20 */	stw r29, 0x20(r1)
/* 801DAAD0 001D7A30  48 00 00 14 */	b lbl_801DAAE4
lbl_801DAAD4:
/* 801DAAD4 001D7A34  7F 83 E3 78 */	mr r3, r28
/* 801DAAD8 001D7A38  38 80 FF FF */	li r4, -1
/* 801DAADC 001D7A3C  4B F3 BF 71 */	bl __dt__10CModelDataFv
/* 801DAAE0 001D7A40  3B 9C 00 4C */	addi r28, r28, 0x4c
lbl_801DAAE4:
/* 801DAAE4 001D7A44  7C 1C E8 40 */	cmplw r28, r29
/* 801DAAE8 001D7A48  40 82 FF EC */	bne lbl_801DAAD4
/* 801DAAEC 001D7A4C  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 801DAAF0 001D7A50  28 03 00 00 */	cmplwi r3, 0
/* 801DAAF4 001D7A54  41 82 00 08 */	beq lbl_801DAAFC
/* 801DAAF8 001D7A58  48 13 AE 39 */	bl Free__7CMemoryFPCv
lbl_801DAAFC:
/* 801DAAFC 001D7A5C  34 1E 05 CC */	addic. r0, r30, 0x5cc
/* 801DAB00 001D7A60  41 82 00 50 */	beq lbl_801DAB50
/* 801DAB04 001D7A64  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 801DAB08 001D7A68  83 9E 05 D8 */	lwz r28, 0x5d8(r30)
/* 801DAB0C 001D7A6C  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 801DAB10 001D7A70  93 81 00 0C */	stw r28, 0xc(r1)
/* 801DAB14 001D7A74  7F BC 02 14 */	add r29, r28, r0
/* 801DAB18 001D7A78  93 81 00 08 */	stw r28, 8(r1)
/* 801DAB1C 001D7A7C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801DAB20 001D7A80  93 A1 00 10 */	stw r29, 0x10(r1)
/* 801DAB24 001D7A84  48 00 00 14 */	b lbl_801DAB38
lbl_801DAB28:
/* 801DAB28 001D7A88  7F 83 E3 78 */	mr r3, r28
/* 801DAB2C 001D7A8C  38 80 FF FF */	li r4, -1
/* 801DAB30 001D7A90  4B F3 BF 1D */	bl __dt__10CModelDataFv
/* 801DAB34 001D7A94  3B 9C 00 4C */	addi r28, r28, 0x4c
lbl_801DAB38:
/* 801DAB38 001D7A98  7C 1C E8 40 */	cmplw r28, r29
/* 801DAB3C 001D7A9C  40 82 FF EC */	bne lbl_801DAB28
/* 801DAB40 001D7AA0  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 801DAB44 001D7AA4  28 03 00 00 */	cmplwi r3, 0
/* 801DAB48 001D7AA8  41 82 00 08 */	beq lbl_801DAB50
/* 801DAB4C 001D7AAC  48 13 AD E5 */	bl Free__7CMemoryFPCv
lbl_801DAB50:
/* 801DAB50 001D7AB0  34 1E 05 78 */	addic. r0, r30, 0x578
/* 801DAB54 001D7AB4  41 82 00 8C */	beq lbl_801DABE0
/* 801DAB58 001D7AB8  38 DE 05 7C */	addi r6, r30, 0x57c
/* 801DAB5C 001D7ABC  38 60 00 00 */	li r3, 0
/* 801DAB60 001D7AC0  48 00 00 6C */	b lbl_801DABCC
lbl_801DAB64:
/* 801DAB64 001D7AC4  28 06 00 00 */	cmplwi r6, 0
/* 801DAB68 001D7AC8  41 82 00 5C */	beq lbl_801DABC4
/* 801DAB6C 001D7ACC  80 E6 00 00 */	lwz r7, 0(r6)
/* 801DAB70 001D7AD0  38 80 00 00 */	li r4, 0
/* 801DAB74 001D7AD4  2C 07 00 00 */	cmpwi r7, 0
/* 801DAB78 001D7AD8  40 81 00 44 */	ble lbl_801DABBC
/* 801DAB7C 001D7ADC  2C 07 00 08 */	cmpwi r7, 8
/* 801DAB80 001D7AE0  38 A7 FF F8 */	addi r5, r7, -8
/* 801DAB84 001D7AE4  40 81 00 20 */	ble lbl_801DABA4
/* 801DAB88 001D7AE8  38 05 00 07 */	addi r0, r5, 7
/* 801DAB8C 001D7AEC  54 00 E8 FE */	srwi r0, r0, 3
/* 801DAB90 001D7AF0  7C 09 03 A6 */	mtctr r0
/* 801DAB94 001D7AF4  2C 05 00 00 */	cmpwi r5, 0
/* 801DAB98 001D7AF8  40 81 00 0C */	ble lbl_801DABA4
lbl_801DAB9C:
/* 801DAB9C 001D7AFC  38 84 00 08 */	addi r4, r4, 8
/* 801DABA0 001D7B00  42 00 FF FC */	bdnz lbl_801DAB9C
lbl_801DABA4:
/* 801DABA4 001D7B04  7C 04 38 50 */	subf r0, r4, r7
/* 801DABA8 001D7B08  7C 09 03 A6 */	mtctr r0
/* 801DABAC 001D7B0C  7C 04 38 00 */	cmpw r4, r7
/* 801DABB0 001D7B10  40 80 00 0C */	bge lbl_801DABBC
lbl_801DABB4:
/* 801DABB4 001D7B14  38 84 00 01 */	addi r4, r4, 1
/* 801DABB8 001D7B18  42 00 FF FC */	bdnz lbl_801DABB4
lbl_801DABBC:
/* 801DABBC 001D7B1C  38 00 00 00 */	li r0, 0
/* 801DABC0 001D7B20  90 06 00 00 */	stw r0, 0(r6)
lbl_801DABC4:
/* 801DABC4 001D7B24  38 C6 00 24 */	addi r6, r6, 0x24
/* 801DABC8 001D7B28  38 63 00 01 */	addi r3, r3, 1
lbl_801DABCC:
/* 801DABCC 001D7B2C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 801DABD0 001D7B30  7C 03 00 00 */	cmpw r3, r0
/* 801DABD4 001D7B34  41 80 FF 90 */	blt lbl_801DAB64
/* 801DABD8 001D7B38  38 00 00 00 */	li r0, 0
/* 801DABDC 001D7B3C  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_801DABE0:
/* 801DABE0 001D7B40  7F C3 F3 78 */	mr r3, r30
/* 801DABE4 001D7B44  38 80 00 00 */	li r4, 0
/* 801DABE8 001D7B48  4B E9 C9 89 */	bl __dt__10CPatternedFv
/* 801DABEC 001D7B4C  7F E0 07 35 */	extsh. r0, r31
/* 801DABF0 001D7B50  40 81 00 0C */	ble lbl_801DABFC
/* 801DABF4 001D7B54  7F C3 F3 78 */	mr r3, r30
/* 801DABF8 001D7B58  48 13 AD 39 */	bl Free__7CMemoryFPCv
lbl_801DABFC:
/* 801DABFC 001D7B5C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801DAC00 001D7B60  7F C3 F3 78 */	mr r3, r30
/* 801DAC04 001D7B64  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 801DAC08 001D7B68  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 801DAC0C 001D7B6C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 801DAC10 001D7B70  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 801DAC14 001D7B74  7C 08 03 A6 */	mtlr r0
/* 801DAC18 001D7B78  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801DAC1C 001D7B7C  4E 80 00 20 */	blr

.global CanRenderUnsorted__8CThardusCFRC13CStateManager
CanRenderUnsorted__8CThardusCFRC13CStateManager:
/* 801DAC20 001D7B80  38 60 00 00 */	li r3, 0
/* 801DAC24 001D7B84  4E 80 00 20 */	blr

.global GetSearchPath__8CThardusFv
GetSearchPath__8CThardusFv:
/* 801DAC28 001D7B88  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801DAC2C 001D7B8C  4E 80 00 20 */	blr

.global sub_801dac30
sub_801dac30:
/* 801DAC30 001D7B90  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801DAC34 001D7B94  7C 08 02 A6 */	mflr r0
/* 801DAC38 001D7B98  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801DAC3C 001D7B9C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801DAC40 001D7BA0  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 801DAC44 001D7BA4  BF 01 00 A0 */	stmw r24, 0xa0(r1)
/* 801DAC48 001D7BA8  7C 99 23 78 */	mr r25, r4
/* 801DAC4C 001D7BAC  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DAC50 001D7BB0  83 B9 06 64 */	lwz r29, 0x664(r25)
/* 801DAC54 001D7BB4  7C 78 1B 78 */	mr r24, r3
/* 801DAC58 001D7BB8  C0 2D A8 98 */	lfs f1, lbl_805A9458@sda21(r13)
/* 801DAC5C 001D7BBC  7C BA 2B 78 */	mr r26, r5
/* 801DAC60 001D7BC0  C0 04 00 04 */	lfs f0, 4(r4)
/* 801DAC64 001D7BC4  38 61 00 48 */	addi r3, r1, 0x48
/* 801DAC68 001D7BC8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801DAC6C 001D7BCC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801DAC70 001D7BD0  C0 59 00 50 */	lfs f2, 0x50(r25)
/* 801DAC74 001D7BD4  C0 39 00 40 */	lfs f1, 0x40(r25)
/* 801DAC78 001D7BD8  C0 19 00 60 */	lfs f0, 0x60(r25)
/* 801DAC7C 001D7BDC  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 801DAC80 001D7BE0  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801DAC84 001D7BE4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 801DAC88 001D7BE8  48 13 95 79 */	bl __ct__9CVector2fFff
/* 801DAC8C 001D7BEC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 801DAC90 001D7BF0  3B D9 06 68 */	addi r30, r25, 0x668
/* 801DAC94 001D7BF4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801DAC98 001D7BF8  3B 80 00 00 */	li r28, 0
/* 801DAC9C 001D7BFC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801DACA0 001D7C00  3B E0 00 00 */	li r31, 0
/* 801DACA4 001D7C04  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801DACA8 001D7C08  48 00 00 C8 */	b lbl_801DAD70
lbl_801DACAC:
/* 801DACAC 001D7C0C  7C 1E FA 2E */	lhzx r0, r30, r31
/* 801DACB0 001D7C10  7F 43 D3 78 */	mr r3, r26
/* 801DACB4 001D7C14  38 81 00 08 */	addi r4, r1, 8
/* 801DACB8 001D7C18  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DACBC 001D7C1C  B0 01 00 08 */	sth r0, 8(r1)
/* 801DACC0 001D7C20  4B E7 18 E5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DACC4 001D7C24  7C 64 1B 78 */	mr r4, r3
/* 801DACC8 001D7C28  38 61 00 10 */	addi r3, r1, 0x10
/* 801DACCC 001D7C2C  4B ED 13 B5 */	bl "__ct__22TCastToPtr<9CRepulsor>FP7CEntity"
/* 801DACD0 001D7C30  83 63 00 04 */	lwz r27, 4(r3)
/* 801DACD4 001D7C34  38 61 00 40 */	addi r3, r1, 0x40
/* 801DACD8 001D7C38  C0 5B 00 50 */	lfs f2, 0x50(r27)
/* 801DACDC 001D7C3C  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 801DACE0 001D7C40  C0 1B 00 60 */	lfs f0, 0x60(r27)
/* 801DACE4 001D7C44  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801DACE8 001D7C48  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801DACEC 001D7C4C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801DACF0 001D7C50  48 13 95 11 */	bl __ct__9CVector2fFff
/* 801DACF4 001D7C54  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801DACF8 001D7C58  38 61 00 38 */	addi r3, r1, 0x38
/* 801DACFC 001D7C5C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801DAD00 001D7C60  38 81 00 60 */	addi r4, r1, 0x60
/* 801DAD04 001D7C64  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801DAD08 001D7C68  38 A1 00 58 */	addi r5, r1, 0x58
/* 801DAD0C 001D7C6C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801DAD10 001D7C70  C3 FB 00 E8 */	lfs f31, 0xe8(r27)
/* 801DAD14 001D7C74  48 13 92 25 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DAD18 001D7C78  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801DAD1C 001D7C7C  38 61 00 50 */	addi r3, r1, 0x50
/* 801DAD20 001D7C80  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801DAD24 001D7C84  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801DAD28 001D7C88  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801DAD2C 001D7C8C  48 13 93 B1 */	bl MagSquared__9CVector2fCFv
/* 801DAD30 001D7C90  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 801DAD34 001D7C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DAD38 001D7C98  40 80 00 30 */	bge lbl_801DAD68
/* 801DAD3C 001D7C9C  48 13 A7 C5 */	bl SqrtF__5CMathFf
/* 801DAD40 001D7CA0  7F 25 CB 78 */	mr r5, r25
/* 801DAD44 001D7CA4  38 61 00 30 */	addi r3, r1, 0x30
/* 801DAD48 001D7CA8  38 99 04 5C */	addi r4, r25, 0x45c
/* 801DAD4C 001D7CAC  38 C1 00 58 */	addi r6, r1, 0x58
/* 801DAD50 001D7CB0  4B F6 38 0D */	bl Flee2D__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector2f
/* 801DAD54 001D7CB4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801DAD58 001D7CB8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801DAD5C 001D7CBC  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801DAD60 001D7CC0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 801DAD64 001D7CC4  48 00 00 14 */	b lbl_801DAD78
lbl_801DAD68:
/* 801DAD68 001D7CC8  3B 9C 00 01 */	addi r28, r28, 1
/* 801DAD6C 001D7CCC  3B FF 00 02 */	addi r31, r31, 2
lbl_801DAD70:
/* 801DAD70 001D7CD0  7C 1C E8 40 */	cmplw r28, r29
/* 801DAD74 001D7CD4  41 80 FF 38 */	blt lbl_801DACAC
lbl_801DAD78:
/* 801DAD78 001D7CD8  38 61 00 68 */	addi r3, r1, 0x68
/* 801DAD7C 001D7CDC  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DAD80 001D7CE0  48 13 91 89 */	bl __eq__FRC9CVector2fRC9CVector2f
/* 801DAD84 001D7CE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DAD88 001D7CE8  40 82 00 78 */	bne lbl_801DAE00
/* 801DAD8C 001D7CEC  C0 59 07 80 */	lfs f2, 0x780(r25)
/* 801DAD90 001D7CF0  38 61 00 20 */	addi r3, r1, 0x20
/* 801DAD94 001D7CF4  C0 39 07 70 */	lfs f1, 0x770(r25)
/* 801DAD98 001D7CF8  C0 19 07 90 */	lfs f0, 0x790(r25)
/* 801DAD9C 001D7CFC  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801DADA0 001D7D00  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801DADA4 001D7D04  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801DADA8 001D7D08  48 13 94 59 */	bl __ct__9CVector2fFff
/* 801DADAC 001D7D0C  7F 25 CB 78 */	mr r5, r25
/* 801DADB0 001D7D10  38 61 00 28 */	addi r3, r1, 0x28
/* 801DADB4 001D7D14  38 99 04 5C */	addi r4, r25, 0x45c
/* 801DADB8 001D7D18  38 C1 00 20 */	addi r6, r1, 0x20
/* 801DADBC 001D7D1C  4B F6 36 F5 */	bl Arrival2D__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector2ff
/* 801DADC0 001D7D20  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 801DADC4 001D7D24  38 61 00 18 */	addi r3, r1, 0x18
/* 801DADC8 001D7D28  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801DADCC 001D7D2C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801DADD0 001D7D30  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801DADD4 001D7D34  C0 81 00 28 */	lfs f4, 0x28(r1)
/* 801DADD8 001D7D38  C0 62 AC D8 */	lfs f3, lbl_805AC9F8@sda21(r2)
/* 801DADDC 001D7D3C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801DADE0 001D7D40  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801DADE4 001D7D44  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 801DADE8 001D7D48  EC 42 00 FA */	fmadds f2, f2, f3, f0
/* 801DADEC 001D7D4C  48 13 94 15 */	bl __ct__9CVector2fFff
/* 801DADF0 001D7D50  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801DADF4 001D7D54  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801DADF8 001D7D58  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801DADFC 001D7D5C  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_801DAE00:
/* 801DAE00 001D7D60  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801DAE04 001D7D64  D0 18 00 00 */	stfs f0, 0(r24)
/* 801DAE08 001D7D68  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801DAE0C 001D7D6C  D0 18 00 04 */	stfs f0, 4(r24)
/* 801DAE10 001D7D70  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 801DAE14 001D7D74  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801DAE18 001D7D78  BB 01 00 A0 */	lmw r24, 0xa0(r1)
/* 801DAE1C 001D7D7C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801DAE20 001D7D80  7C 08 03 A6 */	mtlr r0
/* 801DAE24 001D7D84  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801DAE28 001D7D88  4E 80 00 20 */	blr

.global sub_801dae2c
sub_801dae2c:
/* 801DAE2C 001D7D8C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801DAE30 001D7D90  7C 08 02 A6 */	mflr r0
/* 801DAE34 001D7D94  90 01 00 84 */	stw r0, 0x84(r1)
/* 801DAE38 001D7D98  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801DAE3C 001D7D9C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801DAE40 001D7DA0  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 801DAE44 001D7DA4  7C 7C 1B 78 */	mr r28, r3
/* 801DAE48 001D7DA8  7C 9D 23 78 */	mr r29, r4
/* 801DAE4C 001D7DAC  80 63 05 F0 */	lwz r3, 0x5f0(r3)
/* 801DAE50 001D7DB0  7C BE 2B 78 */	mr r30, r5
/* 801DAE54 001D7DB4  4B FC C3 F5 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DAE58 001D7DB8  80 9C 06 1C */	lwz r4, 0x61c(r28)
/* 801DAE5C 001D7DBC  57 D9 08 3C */	slwi r25, r30, 1
/* 801DAE60 001D7DC0  7C 7B 1B 78 */	mr r27, r3
/* 801DAE64 001D7DC4  7F A3 EB 78 */	mr r3, r29
/* 801DAE68 001D7DC8  7C 04 CA 2E */	lhzx r0, r4, r25
/* 801DAE6C 001D7DCC  38 81 00 18 */	addi r4, r1, 0x18
/* 801DAE70 001D7DD0  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801DAE74 001D7DD4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DAE78 001D7DD8  4B E7 16 FD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DAE7C 001D7DDC  7C 60 1B 78 */	mr r0, r3
/* 801DAE80 001D7DE0  80 7C 05 F0 */	lwz r3, 0x5f0(r28)
/* 801DAE84 001D7DE4  7C 1F 03 78 */	mr r31, r0
/* 801DAE88 001D7DE8  7F C4 F3 78 */	mr r4, r30
/* 801DAE8C 001D7DEC  4B FC C3 AD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DAE90 001D7DF0  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801DAE94 001D7DF4  7F A3 EB 78 */	mr r3, r29
/* 801DAE98 001D7DF8  38 81 00 14 */	addi r4, r1, 0x14
/* 801DAE9C 001D7DFC  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801DAEA0 001D7E00  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DAEA4 001D7E04  4B E7 16 D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DAEA8 001D7E08  7C 64 1B 78 */	mr r4, r3
/* 801DAEAC 001D7E0C  38 61 00 24 */	addi r3, r1, 0x24
/* 801DAEB0 001D7E10  4B ED 44 9D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801DAEB4 001D7E14  28 1F 00 00 */	cmplwi r31, 0
/* 801DAEB8 001D7E18  83 43 00 04 */	lwz r26, 4(r3)
/* 801DAEBC 001D7E1C  41 82 01 8C */	beq lbl_801DB048
/* 801DAEC0 001D7E20  28 1A 00 00 */	cmplwi r26, 0
/* 801DAEC4 001D7E24  41 82 01 84 */	beq lbl_801DB048
/* 801DAEC8 001D7E28  88 1F 03 35 */	lbz r0, 0x335(r31)
/* 801DAECC 001D7E2C  28 00 00 00 */	cmplwi r0, 0
/* 801DAED0 001D7E30  40 82 01 78 */	bne lbl_801DB048
/* 801DAED4 001D7E34  7F E3 FB 78 */	mr r3, r31
/* 801DAED8 001D7E38  48 00 80 89 */	bl UsePhazonModel__16CDestroyableRockFv
/* 801DAEDC 001D7E3C  38 1B FF FF */	addi r0, r27, -1
/* 801DAEE0 001D7E40  7C 1E 00 40 */	cmplw r30, r0
/* 801DAEE4 001D7E44  40 82 00 14 */	bne lbl_801DAEF8
/* 801DAEE8 001D7E48  C0 22 AC E0 */	lfs f1, lbl_805ACA00@sda21(r2)
/* 801DAEEC 001D7E4C  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 801DAEF0 001D7E50  EF E1 00 32 */	fmuls f31, f1, f0
/* 801DAEF4 001D7E54  48 00 00 08 */	b lbl_801DAEFC
lbl_801DAEF8:
/* 801DAEF8 001D7E58  C3 FC 06 A4 */	lfs f31, 0x6a4(r28)
lbl_801DAEFC:
/* 801DAEFC 001D7E5C  7F E3 FB 78 */	mr r3, r31
/* 801DAF00 001D7E60  7F A4 EB 78 */	mr r4, r29
/* 801DAF04 001D7E64  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DAF08 001D7E68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DAF0C 001D7E6C  7D 89 03 A6 */	mtctr r12
/* 801DAF10 001D7E70  4E 80 04 21 */	bctrl
/* 801DAF14 001D7E74  D3 E3 00 00 */	stfs f31, 0(r3)
/* 801DAF18 001D7E78  7F A4 EB 78 */	mr r4, r29
/* 801DAF1C 001D7E7C  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DAF20 001D7E80  D0 03 00 04 */	stfs f0, 4(r3)
/* 801DAF24 001D7E84  7F 43 D3 78 */	mr r3, r26
/* 801DAF28 001D7E88  81 9A 00 00 */	lwz r12, 0(r26)
/* 801DAF2C 001D7E8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DAF30 001D7E90  7D 89 03 A6 */	mtctr r12
/* 801DAF34 001D7E94  4E 80 04 21 */	bctrl
/* 801DAF38 001D7E98  D3 E3 00 00 */	stfs f31, 0(r3)
/* 801DAF3C 001D7E9C  38 00 00 01 */	li r0, 1
/* 801DAF40 001D7EA0  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DAF44 001D7EA4  38 81 00 10 */	addi r4, r1, 0x10
/* 801DAF48 001D7EA8  D0 03 00 04 */	stfs f0, 4(r3)
/* 801DAF4C 001D7EAC  7F A3 EB 78 */	mr r3, r29
/* 801DAF50 001D7EB0  80 BC 06 BC */	lwz r5, 0x6bc(r28)
/* 801DAF54 001D7EB4  7C 05 F1 AE */	stbx r0, r5, r30
/* 801DAF58 001D7EB8  80 BC 06 CC */	lwz r5, 0x6cc(r28)
/* 801DAF5C 001D7EBC  7C 05 CA 2E */	lhzx r0, r5, r25
/* 801DAF60 001D7EC0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DAF64 001D7EC4  4B E7 16 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DAF68 001D7EC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAF6C 001D7ECC  38 80 00 01 */	li r4, 1
/* 801DAF70 001D7ED0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DAF74 001D7ED4  7D 89 03 A6 */	mtctr r12
/* 801DAF78 001D7ED8  4E 80 04 21 */	bctrl
/* 801DAF7C 001D7EDC  C0 02 AC E4 */	lfs f0, lbl_805ACA04@sda21(r2)
/* 801DAF80 001D7EE0  D0 1F 03 2C */	stfs f0, 0x32c(r31)
/* 801DAF84 001D7EE4  80 7D 08 B8 */	lwz r3, 0x8b8(r29)
/* 801DAF88 001D7EE8  80 63 00 00 */	lwz r3, 0(r3)
/* 801DAF8C 001D7EEC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801DAF90 001D7EF0  2C 00 00 03 */	cmpwi r0, 3
/* 801DAF94 001D7EF4  40 82 00 14 */	bne lbl_801DAFA8
/* 801DAF98 001D7EF8  40 82 00 3C */	bne lbl_801DAFD4
/* 801DAF9C 001D7EFC  80 1C 07 C4 */	lwz r0, 0x7c4(r28)
/* 801DAFA0 001D7F00  2C 00 00 03 */	cmpwi r0, 3
/* 801DAFA4 001D7F04  41 82 00 30 */	beq lbl_801DAFD4
lbl_801DAFA8:
/* 801DAFA8 001D7F08  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801DAFAC 001D7F0C  7F 83 E3 78 */	mr r3, r28
/* 801DAFB0 001D7F10  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801DAFB4 001D7F14  7F A4 EB 78 */	mr r4, r29
/* 801DAFB8 001D7F18  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801DAFBC 001D7F1C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801DAFC0 001D7F20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DAFC4 001D7F24  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801DAFC8 001D7F28  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801DAFCC 001D7F2C  80 DC 06 D4 */	lwz r6, 0x6d4(r28)
/* 801DAFD0 001D7F30  48 00 14 75 */	bl sub_801dc444
lbl_801DAFD4:
/* 801DAFD4 001D7F34  80 BC 09 18 */	lwz r5, 0x918(r28)
/* 801DAFD8 001D7F38  57 C0 10 3A */	slwi r0, r30, 2
/* 801DAFDC 001D7F3C  7F 83 E3 78 */	mr r3, r28
/* 801DAFE0 001D7F40  7F A4 EB 78 */	mr r4, r29
/* 801DAFE4 001D7F44  7F E5 05 2E */	stfsx f31, r5, r0
/* 801DAFE8 001D7F48  7F E5 FB 78 */	mr r5, r31
/* 801DAFEC 001D7F4C  48 00 0C 71 */	bl sub_801dbc5c
/* 801DAFF0 001D7F50  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 801DAFF4 001D7F54  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DAFF8 001D7F58  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801DAFFC 001D7F5C  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801DB000 001D7F60  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801DB004 001D7F64  38 00 00 01 */	li r0, 1
/* 801DB008 001D7F68  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801DB00C 001D7F6C  7F 83 E3 78 */	mr r3, r28
/* 801DB010 001D7F70  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801DB014 001D7F74  39 21 00 38 */	addi r9, r1, 0x38
/* 801DB018 001D7F78  C0 42 AC E8 */	lfs f2, lbl_805ACA08@sda21(r2)
/* 801DB01C 001D7F7C  38 A0 00 00 */	li r5, 0
/* 801DB020 001D7F80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DB024 001D7F84  38 C0 00 14 */	li r6, 0x14
/* 801DB028 001D7F88  C0 62 AC EC */	lfs f3, lbl_805ACA0C@sda21(r2)
/* 801DB02C 001D7F8C  38 E0 00 7F */	li r7, 0x7f
/* 801DB030 001D7F90  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 801DB034 001D7F94  93 A1 00 08 */	stw r29, 8(r1)
/* 801DB038 001D7F98  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DB03C 001D7F9C  80 9C 07 60 */	lwz r4, 0x760(r28)
/* 801DB040 001D7FA0  81 5D 08 CC */	lwz r10, 0x8cc(r29)
/* 801DB044 001D7FA4  4B E7 7E ED */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
lbl_801DB048:
/* 801DB048 001D7FA8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801DB04C 001D7FAC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801DB050 001D7FB0  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 801DB054 001D7FB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801DB058 001D7FB8  7C 08 03 A6 */	mtlr r0
/* 801DB05C 001D7FBC  38 21 00 80 */	addi r1, r1, 0x80
/* 801DB060 001D7FC0  4E 80 00 20 */	blr

.global GetSortingBounds__8CThardusCFRC12CTransform4f
GetSortingBounds__8CThardusCFRC12CTransform4f:
/* 801DB064 001D7FC4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801DB068 001D7FC8  7C 08 02 A6 */	mflr r0
/* 801DB06C 001D7FCC  90 01 00 74 */	stw r0, 0x74(r1)
/* 801DB070 001D7FD0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801DB074 001D7FD4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801DB078 001D7FD8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801DB07C 001D7FDC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801DB080 001D7FE0  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 801DB084 001D7FE4  F3 A1 00 48 */	psq_st f29, 72(r1), 0, qr0
/* 801DB088 001D7FE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801DB08C 001D7FEC  38 84 00 9C */	addi r4, r4, 0x9c
/* 801DB090 001D7FF0  7C 7F 1B 78 */	mr r31, r3
/* 801DB094 001D7FF4  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 801DB098 001D7FF8  38 61 00 20 */	addi r3, r1, 0x20
/* 801DB09C 001D7FFC  C0 44 00 00 */	lfs f2, 0(r4)
/* 801DB0A0 001D8000  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 801DB0A4 001D8004  C0 04 00 04 */	lfs f0, 4(r4)
/* 801DB0A8 001D8008  EC 63 10 28 */	fsubs f3, f3, f2
/* 801DB0AC 001D800C  C0 82 AC F0 */	lfs f4, lbl_805ACA10@sda21(r2)
/* 801DB0B0 001D8010  EC 41 00 28 */	fsubs f2, f1, f0
/* 801DB0B4 001D8014  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 801DB0B8 001D8018  C0 04 00 08 */	lfs f0, 8(r4)
/* 801DB0BC 001D801C  EF A4 00 F2 */	fmuls f29, f4, f3
/* 801DB0C0 001D8020  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DB0C4 001D8024  EF C4 00 B2 */	fmuls f30, f4, f2
/* 801DB0C8 001D8028  EF E4 00 32 */	fmuls f31, f4, f0
/* 801DB0CC 001D802C  48 15 C5 41 */	bl GetCenterPoint__6CAABoxCFv
/* 801DB0D0 001D8030  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801DB0D4 001D8034  7F E3 FB 78 */	mr r3, r31
/* 801DB0D8 001D8038  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 801DB0DC 001D803C  38 81 00 14 */	addi r4, r1, 0x14
/* 801DB0E0 001D8040  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801DB0E4 001D8044  EC 01 F0 2A */	fadds f0, f1, f30
/* 801DB0E8 001D8048  EC 65 F8 2A */	fadds f3, f5, f31
/* 801DB0EC 001D804C  38 A1 00 08 */	addi r5, r1, 8
/* 801DB0F0 001D8050  EC 82 E8 2A */	fadds f4, f2, f29
/* 801DB0F4 001D8054  EC 42 E8 28 */	fsubs f2, f2, f29
/* 801DB0F8 001D8058  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801DB0FC 001D805C  EC 21 F0 28 */	fsubs f1, f1, f30
/* 801DB100 001D8060  EC 05 F8 28 */	fsubs f0, f5, f31
/* 801DB104 001D8064  D0 81 00 08 */	stfs f4, 8(r1)
/* 801DB108 001D8068  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801DB10C 001D806C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801DB110 001D8070  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DB114 001D8074  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DB118 001D8078  48 15 D3 F1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801DB11C 001D807C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801DB120 001D8080  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801DB124 001D8084  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801DB128 001D8088  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801DB12C 001D808C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, qr0
/* 801DB130 001D8090  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 801DB134 001D8094  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801DB138 001D8098  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801DB13C 001D809C  7C 08 03 A6 */	mtlr r0
/* 801DB140 001D80A0  38 21 00 70 */	addi r1, r1, 0x70
/* 801DB144 001D80A4  4E 80 00 20 */	blr

.global sub_801db148
sub_801db148:
/* 801DB148 001D80A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801DB14C 001D80AC  7C 08 02 A6 */	mflr r0
/* 801DB150 001D80B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DB154 001D80B4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801DB158 001D80B8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801DB15C 001D80BC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801DB160 001D80C0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801DB164 001D80C4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 801DB168 001D80C8  7C 7A 1B 78 */	mr r26, r3
/* 801DB16C 001D80CC  C3 C2 AC DC */	lfs f30, lbl_805AC9FC@sda21(r2)
/* 801DB170 001D80D0  83 A3 06 14 */	lwz r29, 0x614(r3)
/* 801DB174 001D80D4  7C 9B 23 78 */	mr r27, r4
/* 801DB178 001D80D8  83 83 06 48 */	lwz r28, 0x648(r3)
/* 801DB17C 001D80DC  3B DD FF FF */	addi r30, r29, -1
/* 801DB180 001D80E0  57 9F 08 3C */	slwi r31, r28, 1
/* 801DB184 001D80E4  48 00 00 74 */	b lbl_801DB1F8
lbl_801DB188:
/* 801DB188 001D80E8  7C 1C F0 40 */	cmplw r28, r30
/* 801DB18C 001D80EC  40 82 00 14 */	bne lbl_801DB1A0
/* 801DB190 001D80F0  C0 22 AC E0 */	lfs f1, lbl_805ACA00@sda21(r2)
/* 801DB194 001D80F4  C0 1A 06 A4 */	lfs f0, 0x6a4(r26)
/* 801DB198 001D80F8  EF E1 00 32 */	fmuls f31, f1, f0
/* 801DB19C 001D80FC  48 00 00 08 */	b lbl_801DB1A4
lbl_801DB1A0:
/* 801DB1A0 001D8100  C3 FA 06 A4 */	lfs f31, 0x6a4(r26)
lbl_801DB1A4:
/* 801DB1A4 001D8104  80 BA 06 1C */	lwz r5, 0x61c(r26)
/* 801DB1A8 001D8108  7F 63 DB 78 */	mr r3, r27
/* 801DB1AC 001D810C  38 81 00 08 */	addi r4, r1, 8
/* 801DB1B0 001D8110  7C 05 FA 2E */	lhzx r0, r5, r31
/* 801DB1B4 001D8114  B0 01 00 08 */	sth r0, 8(r1)
/* 801DB1B8 001D8118  4B E7 13 BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DB1BC 001D811C  28 03 00 00 */	cmplwi r3, 0
/* 801DB1C0 001D8120  41 82 00 30 */	beq lbl_801DB1F0
/* 801DB1C4 001D8124  88 03 03 35 */	lbz r0, 0x335(r3)
/* 801DB1C8 001D8128  28 00 00 00 */	cmplwi r0, 0
/* 801DB1CC 001D812C  40 82 00 08 */	bne lbl_801DB1D4
/* 801DB1D0 001D8130  EF DE F8 2A */	fadds f30, f30, f31
lbl_801DB1D4:
/* 801DB1D4 001D8134  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB1D8 001D8138  7F 64 DB 78 */	mr r4, r27
/* 801DB1DC 001D813C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DB1E0 001D8140  7D 89 03 A6 */	mtctr r12
/* 801DB1E4 001D8144  4E 80 04 21 */	bctrl
/* 801DB1E8 001D8148  C0 03 00 00 */	lfs f0, 0(r3)
/* 801DB1EC 001D814C  EF DE 00 2A */	fadds f30, f30, f0
lbl_801DB1F0:
/* 801DB1F0 001D8150  3B 9C 00 01 */	addi r28, r28, 1
/* 801DB1F4 001D8154  3B FF 00 02 */	addi r31, r31, 2
lbl_801DB1F8:
/* 801DB1F8 001D8158  7C 1C E8 40 */	cmplw r28, r29
/* 801DB1FC 001D815C  41 80 FF 8C */	blt lbl_801DB188
/* 801DB200 001D8160  7F 43 D3 78 */	mr r3, r26
/* 801DB204 001D8164  7F 64 DB 78 */	mr r4, r27
/* 801DB208 001D8168  81 9A 00 00 */	lwz r12, 0(r26)
/* 801DB20C 001D816C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DB210 001D8170  7D 89 03 A6 */	mtctr r12
/* 801DB214 001D8174  4E 80 04 21 */	bctrl
/* 801DB218 001D8178  D3 C3 00 00 */	stfs f30, 0(r3)
/* 801DB21C 001D817C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801DB220 001D8180  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801DB224 001D8184  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801DB228 001D8188  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801DB22C 001D818C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 801DB230 001D8190  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801DB234 001D8194  7C 08 03 A6 */	mtlr r0
/* 801DB238 001D8198  38 21 00 50 */	addi r1, r1, 0x50
/* 801DB23C 001D819C  4E 80 00 20 */	blr

.global CodeTrigger__8CThardusFR13CStateManagerf
CodeTrigger__8CThardusFR13CStateManagerf:
/* 801DB240 001D81A0  88 63 09 5C */	lbz r3, 0x95c(r3)
/* 801DB244 001D81A4  4E 80 00 20 */	blr

.global Faint__8CThardusFR13CStateManager9EStateMsgf
Faint__8CThardusFR13CStateManager9EStateMsgf:
/* 801DB248 001D81A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DB24C 001D81AC  7C 08 02 A6 */	mflr r0
/* 801DB250 001D81B0  2C 05 00 01 */	cmpwi r5, 1
/* 801DB254 001D81B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DB258 001D81B8  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 801DB25C 001D81BC  7C 7B 1B 78 */	mr r27, r3
/* 801DB260 001D81C0  7C 9C 23 78 */	mr r28, r4
/* 801DB264 001D81C4  41 82 00 94 */	beq lbl_801DB2F8
/* 801DB268 001D81C8  40 80 01 84 */	bge lbl_801DB3EC
/* 801DB26C 001D81CC  2C 05 00 00 */	cmpwi r5, 0
/* 801DB270 001D81D0  40 80 00 0C */	bge lbl_801DB27C
/* 801DB274 001D81D4  48 00 01 78 */	b lbl_801DB3EC
/* 801DB278 001D81D8  48 00 01 74 */	b lbl_801DB3EC
lbl_801DB27C:
/* 801DB27C 001D81DC  38 00 00 00 */	li r0, 0
/* 801DB280 001D81E0  7F 85 E3 78 */	mr r5, r28
/* 801DB284 001D81E4  90 1B 05 EC */	stw r0, 0x5ec(r27)
/* 801DB288 001D81E8  38 80 FF FF */	li r4, -1
/* 801DB28C 001D81EC  98 1B 09 3C */	stb r0, 0x93c(r27)
/* 801DB290 001D81F0  48 00 02 D1 */	bl sub_801db560
/* 801DB294 001D81F4  83 DB 07 9C */	lwz r30, 0x79c(r27)
/* 801DB298 001D81F8  3B A0 00 00 */	li r29, 0
/* 801DB29C 001D81FC  3B E0 00 00 */	li r31, 0
/* 801DB2A0 001D8200  48 00 00 44 */	b lbl_801DB2E4
lbl_801DB2A4:
/* 801DB2A4 001D8204  80 BB 07 A4 */	lwz r5, 0x7a4(r27)
/* 801DB2A8 001D8208  7F 83 E3 78 */	mr r3, r28
/* 801DB2AC 001D820C  38 81 00 08 */	addi r4, r1, 8
/* 801DB2B0 001D8210  7C 05 FA 2E */	lhzx r0, r5, r31
/* 801DB2B4 001D8214  B0 01 00 08 */	sth r0, 8(r1)
/* 801DB2B8 001D8218  4B E7 12 BD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DB2BC 001D821C  7C 64 1B 78 */	mr r4, r3
/* 801DB2C0 001D8220  38 61 00 0C */	addi r3, r1, 0xc
/* 801DB2C4 001D8224  4B EC A0 D9 */	bl sub_800a539c
/* 801DB2C8 001D8228  4B EC A0 A9 */	bl "CastTo<22CThardusRockProjectile>__10CPatternedFP7CEntity"
/* 801DB2CC 001D822C  28 03 00 00 */	cmplwi r3, 0
/* 801DB2D0 001D8230  41 82 00 0C */	beq lbl_801DB2DC
/* 801DB2D4 001D8234  7F 84 E3 78 */	mr r4, r28
/* 801DB2D8 001D8238  48 02 8A 81 */	bl sub_80203d58
lbl_801DB2DC:
/* 801DB2DC 001D823C  3B BD 00 01 */	addi r29, r29, 1
/* 801DB2E0 001D8240  3B FF 00 02 */	addi r31, r31, 2
lbl_801DB2E4:
/* 801DB2E4 001D8244  7C 1D F0 40 */	cmplw r29, r30
/* 801DB2E8 001D8248  41 80 FF BC */	blt lbl_801DB2A4
/* 801DB2EC 001D824C  38 00 00 01 */	li r0, 1
/* 801DB2F0 001D8250  98 1B 09 4D */	stb r0, 0x94d(r27)
/* 801DB2F4 001D8254  48 00 00 F8 */	b lbl_801DB3EC
lbl_801DB2F8:
/* 801DB2F8 001D8258  80 1B 05 EC */	lwz r0, 0x5ec(r27)
/* 801DB2FC 001D825C  2C 00 00 01 */	cmpwi r0, 1
/* 801DB300 001D8260  41 82 00 EC */	beq lbl_801DB3EC
/* 801DB304 001D8264  40 80 00 10 */	bge lbl_801DB314
/* 801DB308 001D8268  2C 00 00 00 */	cmpwi r0, 0
/* 801DB30C 001D826C  40 80 00 14 */	bge lbl_801DB320
/* 801DB310 001D8270  48 00 00 DC */	b lbl_801DB3EC
lbl_801DB314:
/* 801DB314 001D8274  2C 00 00 03 */	cmpwi r0, 3
/* 801DB318 001D8278  40 80 00 D4 */	bge lbl_801DB3EC
/* 801DB31C 001D827C  48 00 00 B8 */	b lbl_801DB3D4
lbl_801DB320:
/* 801DB320 001D8280  80 FB 04 50 */	lwz r7, 0x450(r27)
/* 801DB324 001D8284  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801DB328 001D8288  2C 00 00 06 */	cmpwi r0, 6
/* 801DB32C 001D828C  40 82 00 10 */	bne lbl_801DB33C
/* 801DB330 001D8290  38 00 00 02 */	li r0, 2
/* 801DB334 001D8294  90 1B 05 EC */	stw r0, 0x5ec(r27)
/* 801DB338 001D8298  48 00 00 B4 */	b lbl_801DB3EC
lbl_801DB33C:
/* 801DB33C 001D829C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801DB340 001D82A0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DB344 001D82A4  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801DB348 001D82A8  38 A5 AA 68 */	addi r5, r5, lbl_803DAA68@l
/* 801DB34C 001D82AC  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 801DB350 001D82B0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DB354 001D82B4  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 801DB358 001D82B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801DB35C 001D82BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DB360 001D82C0  38 C0 00 04 */	li r6, 4
/* 801DB364 001D82C4  38 00 00 06 */	li r0, 6
/* 801DB368 001D82C8  3B E7 00 04 */	addi r31, r7, 4
/* 801DB36C 001D82CC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801DB370 001D82D0  38 80 00 04 */	li r4, 4
/* 801DB374 001D82D4  7F E3 FB 78 */	mr r3, r31
/* 801DB378 001D82D8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DB37C 001D82DC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801DB380 001D82E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801DB384 001D82E4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801DB388 001D82E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB38C 001D82EC  4B F5 60 AD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DB390 001D82F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB394 001D82F4  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801DB398 001D82F8  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801DB39C 001D82FC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DB3A0 001D8300  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 801DB3A4 001D8304  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DB3A8 001D8308  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801DB3AC 001D830C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801DB3B0 001D8310  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 801DB3B4 001D8314  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801DB3B8 001D8318  90 7F 01 00 */	stw r3, 0x100(r31)
/* 801DB3BC 001D831C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801DB3C0 001D8320  90 BF 01 04 */	stw r5, 0x104(r31)
/* 801DB3C4 001D8324  90 81 00 10 */	stw r4, 0x10(r1)
/* 801DB3C8 001D8328  90 7F 01 08 */	stw r3, 0x108(r31)
/* 801DB3CC 001D832C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DB3D0 001D8330  48 00 00 1C */	b lbl_801DB3EC
lbl_801DB3D4:
/* 801DB3D4 001D8334  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 801DB3D8 001D8338  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DB3DC 001D833C  2C 00 00 06 */	cmpwi r0, 6
/* 801DB3E0 001D8340  41 82 00 0C */	beq lbl_801DB3EC
/* 801DB3E4 001D8344  38 00 00 03 */	li r0, 3
/* 801DB3E8 001D8348  90 1B 05 EC */	stw r0, 0x5ec(r27)
lbl_801DB3EC:
/* 801DB3EC 001D834C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 801DB3F0 001D8350  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DB3F4 001D8354  7C 08 03 A6 */	mtlr r0
/* 801DB3F8 001D8358  38 21 00 40 */	addi r1, r1, 0x40
/* 801DB3FC 001D835C  4E 80 00 20 */	blr

.global DoubleSnap__8CThardusFR13CStateManager9EStateMsgf
DoubleSnap__8CThardusFR13CStateManager9EStateMsgf:
/* 801DB400 001D8360  4E 80 00 20 */	blr

.global GetAimPosition__8CThardusCFRC13CStateManagerf
GetAimPosition__8CThardusCFRC13CStateManagerf:
/* 801DB404 001D8364  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801DB408 001D8368  7C 08 02 A6 */	mflr r0
/* 801DB40C 001D836C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801DB410 001D8370  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801DB414 001D8374  7C 9F 23 78 */	mr r31, r4
/* 801DB418 001D8378  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801DB41C 001D837C  7C 7E 1B 78 */	mr r30, r3
/* 801DB420 001D8380  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801DB424 001D8384  3B A0 00 00 */	li r29, 0
/* 801DB428 001D8388  93 81 00 90 */	stw r28, 0x90(r1)
/* 801DB42C 001D838C  3B 80 00 00 */	li r28, 0
/* 801DB430 001D8390  88 04 09 3C */	lbz r0, 0x93c(r4)
/* 801DB434 001D8394  28 00 00 00 */	cmplwi r0, 0
/* 801DB438 001D8398  41 82 00 2C */	beq lbl_801DB464
/* 801DB43C 001D839C  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DB440 001D83A0  38 61 00 20 */	addi r3, r1, 0x20
/* 801DB444 001D83A4  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DB448 001D83A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801DB44C 001D83AC  38 84 01 7C */	addi r4, r4, 0x17c
/* 801DB450 001D83B0  38 A0 FF FF */	li r5, -1
/* 801DB454 001D83B4  48 16 2D 41 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801DB458 001D83B8  38 A1 00 20 */	addi r5, r1, 0x20
/* 801DB45C 001D83BC  3B A0 00 01 */	li r29, 1
/* 801DB460 001D83C0  48 00 00 24 */	b lbl_801DB484
lbl_801DB464:
/* 801DB464 001D83C4  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DB468 001D83C8  38 61 00 10 */	addi r3, r1, 0x10
/* 801DB46C 001D83CC  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DB470 001D83D0  38 C1 00 08 */	addi r6, r1, 8
/* 801DB474 001D83D4  38 A0 FF FF */	li r5, -1
/* 801DB478 001D83D8  48 16 2D 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801DB47C 001D83DC  3B 80 00 01 */	li r28, 1
/* 801DB480 001D83E0  38 A1 00 10 */	addi r5, r1, 0x10
lbl_801DB484:
/* 801DB484 001D83E4  7F E4 FB 78 */	mr r4, r31
/* 801DB488 001D83E8  38 61 00 30 */	addi r3, r1, 0x30
/* 801DB48C 001D83EC  4B E9 D4 ED */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DB490 001D83F0  38 61 00 60 */	addi r3, r1, 0x60
/* 801DB494 001D83F4  38 81 00 30 */	addi r4, r1, 0x30
/* 801DB498 001D83F8  48 13 76 DD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801DB49C 001D83FC  7F 80 07 75 */	extsb. r0, r28
/* 801DB4A0 001D8400  41 82 00 0C */	beq lbl_801DB4AC
/* 801DB4A4 001D8404  38 61 00 10 */	addi r3, r1, 0x10
/* 801DB4A8 001D8408  48 16 26 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DB4AC:
/* 801DB4AC 001D840C  7F A0 07 75 */	extsb. r0, r29
/* 801DB4B0 001D8410  41 82 00 0C */	beq lbl_801DB4BC
/* 801DB4B4 001D8414  38 61 00 20 */	addi r3, r1, 0x20
/* 801DB4B8 001D8418  48 16 26 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DB4BC:
/* 801DB4BC 001D841C  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 801DB4C0 001D8420  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801DB4C4 001D8424  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801DB4C8 001D8428  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801DB4CC 001D842C  D0 3E 00 04 */	stfs f1, 4(r30)
/* 801DB4D0 001D8430  D0 5E 00 08 */	stfs f2, 8(r30)
/* 801DB4D4 001D8434  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801DB4D8 001D8438  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801DB4DC 001D843C  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 801DB4E0 001D8440  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801DB4E4 001D8444  83 81 00 90 */	lwz r28, 0x90(r1)
/* 801DB4E8 001D8448  7C 08 03 A6 */	mtlr r0
/* 801DB4EC 001D844C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801DB4F0 001D8450  4E 80 00 20 */	blr

.global GetOrbitPosition__8CThardusCFRC13CStateManager
GetOrbitPosition__8CThardusCFRC13CStateManager:
/* 801DB4F4 001D8454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB4F8 001D8458  7C 08 02 A6 */	mflr r0
/* 801DB4FC 001D845C  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DB500 001D8460  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB504 001D8464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB508 001D8468  7C 7F 1B 78 */	mr r31, r3
/* 801DB50C 001D846C  81 84 00 00 */	lwz r12, 0(r4)
/* 801DB510 001D8470  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801DB514 001D8474  7D 89 03 A6 */	mtctr r12
/* 801DB518 001D8478  4E 80 04 21 */	bctrl
/* 801DB51C 001D847C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB520 001D8480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB524 001D8484  7C 08 03 A6 */	mtlr r0
/* 801DB528 001D8488  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB52C 001D848C  4E 80 00 20 */	blr

.global IsDizzy__8CThardusFR13CStateManagerf
IsDizzy__8CThardusFR13CStateManagerf:
/* 801DB530 001D8490  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 801DB534 001D8494  C0 02 AC F4 */	lfs f0, lbl_805ACA14@sda21(r2)
/* 801DB538 001D8498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DB53C 001D849C  7C 00 00 26 */	mfcr r0
/* 801DB540 001D84A0  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801DB544 001D84A4  4E 80 00 20 */	blr

.global ShouldCallForBackup__8CThardusFR13CStateManagerf
ShouldCallForBackup__8CThardusFR13CStateManagerf:
/* 801DB548 001D84A8  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 801DB54C 001D84AC  C0 02 AC F8 */	lfs f0, lbl_805ACA18@sda21(r2)
/* 801DB550 001D84B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DB554 001D84B4  7C 00 00 26 */	mfcr r0
/* 801DB558 001D84B8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801DB55C 001D84BC  4E 80 00 20 */	blr

.global sub_801db560
sub_801db560:
/* 801DB560 001D84C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB564 001D84C4  7C 08 02 A6 */	mflr r0
/* 801DB568 001D84C8  2C 04 00 02 */	cmpwi r4, 2
/* 801DB56C 001D84CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB570 001D84D0  90 83 06 44 */	stw r4, 0x644(r3)
/* 801DB574 001D84D4  41 82 00 14 */	beq lbl_801DB588
/* 801DB578 001D84D8  40 80 00 2C */	bge lbl_801DB5A4
/* 801DB57C 001D84DC  2C 04 00 01 */	cmpwi r4, 1
/* 801DB580 001D84E0  40 80 00 18 */	bge lbl_801DB598
/* 801DB584 001D84E4  48 00 00 20 */	b lbl_801DB5A4
lbl_801DB588:
/* 801DB588 001D84E8  38 80 00 0D */	li r4, 0xd
/* 801DB58C 001D84EC  38 C0 FF FF */	li r6, -1
/* 801DB590 001D84F0  4B E7 5B 31 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801DB594 001D84F4  48 00 00 10 */	b lbl_801DB5A4
lbl_801DB598:
/* 801DB598 001D84F8  38 80 00 0C */	li r4, 0xc
/* 801DB59C 001D84FC  38 C0 FF FF */	li r6, -1
/* 801DB5A0 001D8500  4B E7 5B 21 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_801DB5A4:
/* 801DB5A4 001D8504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB5A8 001D8508  7C 08 03 A6 */	mtlr r0
/* 801DB5AC 001D850C  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB5B0 001D8510  4E 80 00 20 */	blr

.global sub_801db5b4
sub_801db5b4:
/* 801DB5B4 001D8514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB5B8 001D8518  7C 08 02 A6 */	mflr r0
/* 801DB5BC 001D851C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB5C0 001D8520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB5C4 001D8524  7C 7F 1B 78 */	mr r31, r3
/* 801DB5C8 001D8528  80 A4 08 B8 */	lwz r5, 0x8b8(r4)
/* 801DB5CC 001D852C  80 65 00 00 */	lwz r3, 0(r5)
/* 801DB5D0 001D8530  4B EB 5F 89 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801DB5D4 001D8534  2C 03 00 03 */	cmpwi r3, 3
/* 801DB5D8 001D8538  40 82 00 28 */	bne lbl_801DB600
/* 801DB5DC 001D853C  88 1F 09 3A */	lbz r0, 0x93a(r31)
/* 801DB5E0 001D8540  38 60 00 00 */	li r3, 0
/* 801DB5E4 001D8544  28 00 00 00 */	cmplwi r0, 0
/* 801DB5E8 001D8548  41 82 00 10 */	beq lbl_801DB5F8
/* 801DB5EC 001D854C  80 1F 07 C4 */	lwz r0, 0x7c4(r31)
/* 801DB5F0 001D8550  2C 00 00 00 */	cmpwi r0, 0
/* 801DB5F4 001D8554  40 82 00 10 */	bne lbl_801DB604
lbl_801DB5F8:
/* 801DB5F8 001D8558  38 60 00 01 */	li r3, 1
/* 801DB5FC 001D855C  48 00 00 08 */	b lbl_801DB604
lbl_801DB600:
/* 801DB600 001D8560  38 60 00 01 */	li r3, 1
lbl_801DB604:
/* 801DB604 001D8564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB608 001D8568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB60C 001D856C  7C 08 03 A6 */	mtlr r0
/* 801DB610 001D8570  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB614 001D8574  4E 80 00 20 */	blr

.global sub_801db618
sub_801db618:
/* 801DB618 001D8578  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801DB61C 001D857C  7C 08 02 A6 */	mflr r0
/* 801DB620 001D8580  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801DB624 001D8584  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801DB628 001D8588  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 801DB62C 001D858C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801DB630 001D8590  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 801DB634 001D8594  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801DB638 001D8598  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 801DB63C 001D859C  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 801DB640 001D85A0  F3 81 00 88 */	psq_st f28, 136(r1), 0, qr0
/* 801DB644 001D85A4  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 801DB648 001D85A8  F3 61 00 78 */	psq_st f27, 120(r1), 0, qr0
/* 801DB64C 001D85AC  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 801DB650 001D85B0  F3 41 00 68 */	psq_st f26, 104(r1), 0, qr0
/* 801DB654 001D85B4  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 801DB658 001D85B8  F3 21 00 58 */	psq_st f25, 88(r1), 0, qr0
/* 801DB65C 001D85BC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801DB660 001D85C0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801DB664 001D85C4  FF E0 08 90 */	fmr f31, f1
/* 801DB668 001D85C8  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DB66C 001D85CC  7C 9E 23 78 */	mr r30, r4
/* 801DB670 001D85D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801DB674 001D85D4  40 81 01 70 */	ble lbl_801DB7E4
/* 801DB678 001D85D8  83 FE 08 4C */	lwz r31, 0x84c(r30)
/* 801DB67C 001D85DC  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801DB680 001D85E0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801DB684 001D85E4  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 801DB688 001D85E8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801DB68C 001D85EC  EC 81 00 28 */	fsubs f4, f1, f0
/* 801DB690 001D85F0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801DB694 001D85F4  38 61 00 34 */	addi r3, r1, 0x34
/* 801DB698 001D85F8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801DB69C 001D85FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801DB6A0 001D8600  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DB6A4 001D8604  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801DB6A8 001D8608  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801DB6AC 001D860C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801DB6B0 001D8610  48 13 92 09 */	bl Magnitude__9CVector3fCFv
/* 801DB6B4 001D8614  80 1F 02 B0 */	lwz r0, 0x2b0(r31)
/* 801DB6B8 001D8618  2C 00 00 02 */	cmpwi r0, 2
/* 801DB6BC 001D861C  40 82 00 0C */	bne lbl_801DB6C8
/* 801DB6C0 001D8620  80 1F 02 AC */	lwz r0, 0x2ac(r31)
/* 801DB6C4 001D8624  48 00 00 08 */	b lbl_801DB6CC
lbl_801DB6C8:
/* 801DB6C8 001D8628  38 00 00 04 */	li r0, 4
lbl_801DB6CC:
/* 801DB6CC 001D862C  2C 00 00 01 */	cmpwi r0, 1
/* 801DB6D0 001D8630  41 82 01 14 */	beq lbl_801DB7E4
/* 801DB6D4 001D8634  88 1F 09 C4 */	lbz r0, 0x9c4(r31)
/* 801DB6D8 001D8638  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801DB6DC 001D863C  40 82 01 08 */	bne lbl_801DB7E4
/* 801DB6E0 001D8640  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 801DB6E4 001D8644  C0 02 AD 00 */	lfs f0, lbl_805ACA20@sda21(r2)
/* 801DB6E8 001D8648  38 83 66 F4 */	addi r4, r3, lbl_805A66F4@l
/* 801DB6EC 001D864C  C0 62 AC FC */	lfs f3, lbl_805ACA1C@sda21(r2)
/* 801DB6F0 001D8650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DB6F4 001D8654  C0 44 00 00 */	lfs f2, 0(r4)
/* 801DB6F8 001D8658  C0 24 00 04 */	lfs f1, 4(r4)
/* 801DB6FC 001D865C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DB700 001D8660  C0 04 00 08 */	lfs f0, 8(r4)
/* 801DB704 001D8664  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801DB708 001D8668  C7 63 66 A0 */	lfsu f27, skZero3f@l(r3)
/* 801DB70C 001D866C  EC 23 00 72 */	fmuls f1, f3, f1
/* 801DB710 001D8670  EC 03 00 32 */	fmuls f0, f3, f0
/* 801DB714 001D8674  EF 9F 00 B2 */	fmuls f28, f31, f2
/* 801DB718 001D8678  C3 43 00 04 */	lfs f26, 4(r3)
/* 801DB71C 001D867C  EF BF 00 72 */	fmuls f29, f31, f1
/* 801DB720 001D8680  C3 23 00 08 */	lfs f25, 8(r3)
/* 801DB724 001D8684  EF DF 00 32 */	fmuls f30, f31, f0
/* 801DB728 001D8688  40 81 00 70 */	ble lbl_801DB798
/* 801DB72C 001D868C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801DB730 001D8690  38 61 00 08 */	addi r3, r1, 8
/* 801DB734 001D8694  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801DB738 001D8698  48 13 8A C9 */	bl __ct__9CVector2fFff
/* 801DB73C 001D869C  C0 41 00 08 */	lfs f2, 8(r1)
/* 801DB740 001D86A0  38 61 00 28 */	addi r3, r1, 0x28
/* 801DB744 001D86A4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801DB748 001D86A8  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DB74C 001D86AC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801DB750 001D86B0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801DB754 001D86B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801DB758 001D86B8  48 13 8F A1 */	bl CanBeNormalized__9CVector3fCFv
/* 801DB75C 001D86BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DB760 001D86C0  41 82 00 38 */	beq lbl_801DB798
/* 801DB764 001D86C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DB768 001D86C8  38 81 00 28 */	addi r4, r1, 0x28
/* 801DB76C 001D86CC  48 13 90 E5 */	bl AsNormalized__9CVector3fCFv
/* 801DB770 001D86D0  C0 62 AD 04 */	lfs f3, lbl_805ACA24@sda21(r2)
/* 801DB774 001D86D4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801DB778 001D86D8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801DB77C 001D86DC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801DB780 001D86E0  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801DB784 001D86E4  EC 23 00 72 */	fmuls f1, f3, f1
/* 801DB788 001D86E8  EC 03 00 32 */	fmuls f0, f3, f0
/* 801DB78C 001D86EC  EF 7F 00 B2 */	fmuls f27, f31, f2
/* 801DB790 001D86F0  EF 5F 00 72 */	fmuls f26, f31, f1
/* 801DB794 001D86F4  EF 3F 00 32 */	fmuls f25, f31, f0
lbl_801DB798:
/* 801DB798 001D86F8  EC 5C D8 2A */	fadds f2, f28, f27
/* 801DB79C 001D86FC  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 801DB7A0 001D8700  EC 3D D0 2A */	fadds f1, f29, f26
/* 801DB7A4 001D8704  EC 1E C8 2A */	fadds f0, f30, f25
/* 801DB7A8 001D8708  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801DB7AC 001D870C  EC 23 00 72 */	fmuls f1, f3, f1
/* 801DB7B0 001D8710  EC 03 00 32 */	fmuls f0, f3, f0
/* 801DB7B4 001D8714  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801DB7B8 001D8718  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801DB7BC 001D871C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801DB7C0 001D8720  4B E3 FD 75 */	bl Identity__10CAxisAngleFv
/* 801DB7C4 001D8724  7C 65 1B 78 */	mr r5, r3
/* 801DB7C8 001D8728  7F E3 FB 78 */	mr r3, r31
/* 801DB7CC 001D872C  38 81 00 10 */	addi r4, r1, 0x10
/* 801DB7D0 001D8730  4B F4 0B C9 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 801DB7D4 001D8734  7F E3 FB 78 */	mr r3, r31
/* 801DB7D8 001D8738  7F C5 F3 78 */	mr r5, r30
/* 801DB7DC 001D873C  38 80 00 02 */	li r4, 2
/* 801DB7E0 001D8740  48 0A AC 0D */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
lbl_801DB7E4:
/* 801DB7E4 001D8744  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 801DB7E8 001D8748  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801DB7EC 001D874C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 801DB7F0 001D8750  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801DB7F4 001D8754  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 801DB7F8 001D8758  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801DB7FC 001D875C  E3 81 00 88 */	psq_l f28, 136(r1), 0, qr0
/* 801DB800 001D8760  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 801DB804 001D8764  E3 61 00 78 */	psq_l f27, 120(r1), 0, qr0
/* 801DB808 001D8768  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 801DB80C 001D876C  E3 41 00 68 */	psq_l f26, 104(r1), 0, qr0
/* 801DB810 001D8770  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 801DB814 001D8774  E3 21 00 58 */	psq_l f25, 88(r1), 0, qr0
/* 801DB818 001D8778  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 801DB81C 001D877C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801DB820 001D8780  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801DB824 001D8784  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801DB828 001D8788  7C 08 03 A6 */	mtlr r0
/* 801DB82C 001D878C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801DB830 001D8790  4E 80 00 20 */	blr

.global StartAttack__8CThardusFR13CStateManagerf
StartAttack__8CThardusFR13CStateManagerf:
/* 801DB834 001D8794  38 60 00 01 */	li r3, 1
/* 801DB838 001D8798  4E 80 00 20 */	blr

.global Suck__8CThardusFR13CStateManager9EStateMsgf
Suck__8CThardusFR13CStateManager9EStateMsgf:
/* 801DB83C 001D879C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DB840 001D87A0  7C 08 02 A6 */	mflr r0
/* 801DB844 001D87A4  2C 05 00 01 */	cmpwi r5, 1
/* 801DB848 001D87A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB84C 001D87AC  41 82 00 48 */	beq lbl_801DB894
/* 801DB850 001D87B0  40 80 00 10 */	bge lbl_801DB860
/* 801DB854 001D87B4  2C 05 00 00 */	cmpwi r5, 0
/* 801DB858 001D87B8  40 80 00 14 */	bge lbl_801DB86C
/* 801DB85C 001D87BC  48 00 00 38 */	b lbl_801DB894
lbl_801DB860:
/* 801DB860 001D87C0  2C 05 00 03 */	cmpwi r5, 3
/* 801DB864 001D87C4  40 80 00 30 */	bge lbl_801DB894
/* 801DB868 001D87C8  48 00 00 24 */	b lbl_801DB88C
lbl_801DB86C:
/* 801DB86C 001D87CC  38 00 00 01 */	li r0, 1
/* 801DB870 001D87D0  7C 85 23 78 */	mr r5, r4
/* 801DB874 001D87D4  98 03 09 09 */	stb r0, 0x909(r3)
/* 801DB878 001D87D8  38 80 00 07 */	li r4, 7
/* 801DB87C 001D87DC  38 C0 FF FF */	li r6, -1
/* 801DB880 001D87E0  98 03 09 3D */	stb r0, 0x93d(r3)
/* 801DB884 001D87E4  4B E7 58 3D */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801DB888 001D87E8  48 00 00 0C */	b lbl_801DB894
lbl_801DB88C:
/* 801DB88C 001D87EC  38 00 00 01 */	li r0, 1
/* 801DB890 001D87F0  98 03 06 89 */	stb r0, 0x689(r3)
lbl_801DB894:
/* 801DB894 001D87F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DB898 001D87F8  7C 08 03 A6 */	mtlr r0
/* 801DB89C 001D87FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801DB8A0 001D8800  4E 80 00 20 */	blr

.global Explode__8CThardusFR13CStateManager9EStateMsgf
Explode__8CThardusFR13CStateManager9EStateMsgf:
/* 801DB8A4 001D8804  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DB8A8 001D8808  7C 08 02 A6 */	mflr r0
/* 801DB8AC 001D880C  2C 05 00 01 */	cmpwi r5, 1
/* 801DB8B0 001D8810  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DB8B4 001D8814  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DB8B8 001D8818  7C 9F 23 78 */	mr r31, r4
/* 801DB8BC 001D881C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DB8C0 001D8820  7C 7E 1B 78 */	mr r30, r3
/* 801DB8C4 001D8824  41 82 00 60 */	beq lbl_801DB924
/* 801DB8C8 001D8828  40 80 00 10 */	bge lbl_801DB8D8
/* 801DB8CC 001D882C  2C 05 00 00 */	cmpwi r5, 0
/* 801DB8D0 001D8830  40 80 00 14 */	bge lbl_801DB8E4
/* 801DB8D4 001D8834  48 00 01 34 */	b lbl_801DBA08
lbl_801DB8D8:
/* 801DB8D8 001D8838  2C 05 00 03 */	cmpwi r5, 3
/* 801DB8DC 001D883C  40 80 01 2C */	bge lbl_801DBA08
/* 801DB8E0 001D8840  48 00 01 14 */	b lbl_801DB9F4
lbl_801DB8E4:
/* 801DB8E4 001D8844  38 00 00 00 */	li r0, 0
/* 801DB8E8 001D8848  38 61 00 08 */	addi r3, r1, 8
/* 801DB8EC 001D884C  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DB8F0 001D8850  80 1E 09 04 */	lwz r0, 0x904(r30)
/* 801DB8F4 001D8854  90 01 00 08 */	stw r0, 8(r1)
/* 801DB8F8 001D8858  48 10 E4 51 */	bl SfxStop__11CSfxManagerFRC10CSfxHandle
/* 801DB8FC 001D885C  38 00 00 01 */	li r0, 1
/* 801DB900 001D8860  7F C3 F3 78 */	mr r3, r30
/* 801DB904 001D8864  98 1E 09 09 */	stb r0, 0x909(r30)
/* 801DB908 001D8868  7F E5 FB 78 */	mr r5, r31
/* 801DB90C 001D886C  38 80 00 01 */	li r4, 1
/* 801DB910 001D8870  38 C0 FF FF */	li r6, -1
/* 801DB914 001D8874  98 1E 09 3D */	stb r0, 0x93d(r30)
/* 801DB918 001D8878  98 1E 09 09 */	stb r0, 0x909(r30)
/* 801DB91C 001D887C  4B E7 57 A5 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801DB920 001D8880  48 00 00 E8 */	b lbl_801DBA08
lbl_801DB924:
/* 801DB924 001D8884  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DB928 001D8888  2C 00 00 01 */	cmpwi r0, 1
/* 801DB92C 001D888C  41 82 00 DC */	beq lbl_801DBA08
/* 801DB930 001D8890  40 80 00 10 */	bge lbl_801DB940
/* 801DB934 001D8894  2C 00 00 00 */	cmpwi r0, 0
/* 801DB938 001D8898  40 80 00 14 */	bge lbl_801DB94C
/* 801DB93C 001D889C  48 00 00 CC */	b lbl_801DBA08
lbl_801DB940:
/* 801DB940 001D88A0  2C 00 00 03 */	cmpwi r0, 3
/* 801DB944 001D88A4  40 80 00 C4 */	bge lbl_801DBA08
/* 801DB948 001D88A8  48 00 00 90 */	b lbl_801DB9D8
lbl_801DB94C:
/* 801DB94C 001D88AC  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 801DB950 001D88B0  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801DB954 001D88B4  2C 00 00 03 */	cmpwi r0, 3
/* 801DB958 001D88B8  40 82 00 10 */	bne lbl_801DB968
/* 801DB95C 001D88BC  38 00 00 02 */	li r0, 2
/* 801DB960 001D88C0  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DB964 001D88C4  48 00 00 A4 */	b lbl_801DBA08
lbl_801DB968:
/* 801DB968 001D88C8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DB96C 001D88CC  38 C0 00 01 */	li r6, 1
/* 801DB970 001D88D0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DB974 001D88D4  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801DB978 001D88D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DB97C 001D88DC  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 801DB980 001D88E0  38 00 00 00 */	li r0, 0
/* 801DB984 001D88E4  3B E4 00 04 */	addi r31, r4, 4
/* 801DB988 001D88E8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801DB98C 001D88EC  7F E3 FB 78 */	mr r3, r31
/* 801DB990 001D88F0  38 80 00 01 */	li r4, 1
/* 801DB994 001D88F4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801DB998 001D88F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DB99C 001D88FC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801DB9A0 001D8900  4B F5 5A 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DB9A4 001D8904  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801DB9A8 001D8908  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801DB9AC 001D890C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801DB9B0 001D8910  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DB9B4 001D8914  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DB9B8 001D8918  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DB9BC 001D891C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801DB9C0 001D8920  90 81 00 0C */	stw r4, 0xc(r1)
/* 801DB9C4 001D8924  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801DB9C8 001D8928  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 801DB9CC 001D892C  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 801DB9D0 001D8930  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DB9D4 001D8934  48 00 00 34 */	b lbl_801DBA08
lbl_801DB9D8:
/* 801DB9D8 001D8938  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DB9DC 001D893C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DB9E0 001D8940  2C 00 00 03 */	cmpwi r0, 3
/* 801DB9E4 001D8944  41 82 00 24 */	beq lbl_801DBA08
/* 801DB9E8 001D8948  38 00 00 03 */	li r0, 3
/* 801DB9EC 001D894C  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DB9F0 001D8950  48 00 00 18 */	b lbl_801DBA08
lbl_801DB9F4:
/* 801DB9F4 001D8954  38 60 00 01 */	li r3, 1
/* 801DB9F8 001D8958  38 00 00 00 */	li r0, 0
/* 801DB9FC 001D895C  98 7E 08 F0 */	stb r3, 0x8f0(r30)
/* 801DBA00 001D8960  98 1E 09 09 */	stb r0, 0x909(r30)
/* 801DBA04 001D8964  98 1E 09 3D */	stb r0, 0x93d(r30)
lbl_801DBA08:
/* 801DBA08 001D8968  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DBA0C 001D896C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DBA10 001D8970  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DBA14 001D8974  7C 08 03 A6 */	mtlr r0
/* 801DBA18 001D8978  38 21 00 30 */	addi r1, r1, 0x30
/* 801DBA1C 001D897C  4E 80 00 20 */	blr

.global sub_801dba20
sub_801dba20:
/* 801DBA20 001D8980  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 801DBA24 001D8984  7C 08 02 A6 */	mflr r0
/* 801DBA28 001D8988  90 01 01 64 */	stw r0, 0x164(r1)
/* 801DBA2C 001D898C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 801DBA30 001D8990  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 801DBA34 001D8994  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 801DBA38 001D8998  F3 C1 01 48 */	psq_st f30, 328(r1), 0, qr0
/* 801DBA3C 001D899C  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 801DBA40 001D89A0  F3 A1 01 38 */	psq_st f29, 312(r1), 0, qr0
/* 801DBA44 001D89A4  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 801DBA48 001D89A8  F3 81 01 28 */	psq_st f28, 296(r1), 0, qr0
/* 801DBA4C 001D89AC  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 801DBA50 001D89B0  93 C1 01 18 */	stw r30, 0x118(r1)
/* 801DBA54 001D89B4  93 A1 01 14 */	stw r29, 0x114(r1)
/* 801DBA58 001D89B8  7C 9F 23 78 */	mr r31, r4
/* 801DBA5C 001D89BC  7C 7E 1B 78 */	mr r30, r3
/* 801DBA60 001D89C0  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801DBA64 001D89C4  FF 80 08 90 */	fmr f28, f1
/* 801DBA68 001D89C8  C0 25 00 04 */	lfs f1, 4(r5)
/* 801DBA6C 001D89CC  FF A0 10 90 */	fmr f29, f2
/* 801DBA70 001D89D0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801DBA74 001D89D4  FF C0 18 90 */	fmr f30, f3
/* 801DBA78 001D89D8  C0 65 00 08 */	lfs f3, 8(r5)
/* 801DBA7C 001D89DC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801DBA80 001D89E0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801DBA84 001D89E4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801DBA88 001D89E8  38 61 00 28 */	addi r3, r1, 0x28
/* 801DBA8C 001D89EC  C0 25 00 00 */	lfs f1, 0(r5)
/* 801DBA90 001D89F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801DBA94 001D89F4  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801DBA98 001D89F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DBA9C 001D89FC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801DBAA0 001D8A00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801DBAA4 001D8A04  48 13 8E 15 */	bl Magnitude__9CVector3fCFv
/* 801DBAA8 001D8A08  EC 5C E8 24 */	fdivs f2, f28, f29
/* 801DBAAC 001D8A0C  C0 0D 92 24 */	lfs f0, lbl_805A7DE4@sda21(r13)
/* 801DBAB0 001D8A10  EC 21 E0 BC */	fnmsubs f1, f1, f2, f28
/* 801DBAB4 001D8A14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DBAB8 001D8A18  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801DBABC 001D8A1C  40 80 00 0C */	bge lbl_801DBAC8
/* 801DBAC0 001D8A20  38 A1 00 0C */	addi r5, r1, 0xc
/* 801DBAC4 001D8A24  48 00 00 08 */	b lbl_801DBACC
lbl_801DBAC8:
/* 801DBAC8 001D8A28  38 AD 92 24 */	addi r5, r13, lbl_805A7DE4@sda21
lbl_801DBACC:
/* 801DBACC 001D8A2C  80 9F 08 70 */	lwz r4, 0x870(r31)
/* 801DBAD0 001D8A30  38 61 00 08 */	addi r3, r1, 8
/* 801DBAD4 001D8A34  C3 E5 00 00 */	lfs f31, 0(r5)
/* 801DBAD8 001D8A38  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801DBADC 001D8A3C  A3 A5 00 08 */	lhz r29, 8(r5)
/* 801DBAE0 001D8A40  4B E3 00 F9 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 801DBAE4 001D8A44  A0 01 00 08 */	lhz r0, 8(r1)
/* 801DBAE8 001D8A48  7C 00 E8 40 */	cmplw r0, r29
/* 801DBAEC 001D8A4C  40 82 00 98 */	bne lbl_801DBB84
/* 801DBAF0 001D8A50  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 801DBAF4 001D8A54  FC 20 F0 90 */	fmr f1, f30
/* 801DBAF8 001D8A58  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801DBAFC 001D8A5C  FC 40 E0 90 */	fmr f2, f28
/* 801DBB00 001D8A60  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801DBB04 001D8A64  FC 60 E8 90 */	fmr f3, f29
/* 801DBB08 001D8A68  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801DBB0C 001D8A6C  38 61 00 34 */	addi r3, r1, 0x34
/* 801DBB10 001D8A70  38 81 00 1C */	addi r4, r1, 0x1c
/* 801DBB14 001D8A74  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801DBB18 001D8A78  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 801DBB1C 001D8A7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801DBB20 001D8A80  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801DBB24 001D8A84  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801DBB28 001D8A88  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 801DBB2C 001D8A8C  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801DBB30 001D8A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DBB34 001D8A94  4B F8 19 91 */	bl BuildMissileShakeData__16CCameraShakeDataFfffRC9CVector3f
/* 801DBB38 001D8A98  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 801DBB3C 001D8A9C  38 81 00 34 */	addi r4, r1, 0x34
/* 801DBB40 001D8AA0  38 A0 00 01 */	li r5, 1
/* 801DBB44 001D8AA4  4B E2 EE DD */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 801DBB48 001D8AA8  34 81 00 B4 */	addic. r4, r1, 0xb4
/* 801DBB4C 001D8AAC  41 82 00 10 */	beq lbl_801DBB5C
/* 801DBB50 001D8AB0  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801DBB54 001D8AB4  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801DBB58 001D8AB8  90 04 00 00 */	stw r0, 0(r4)
lbl_801DBB5C:
/* 801DBB5C 001D8ABC  34 81 00 78 */	addic. r4, r1, 0x78
/* 801DBB60 001D8AC0  41 82 00 10 */	beq lbl_801DBB70
/* 801DBB64 001D8AC4  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801DBB68 001D8AC8  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801DBB6C 001D8ACC  90 04 00 00 */	stw r0, 0(r4)
lbl_801DBB70:
/* 801DBB70 001D8AD0  34 81 00 3C */	addic. r4, r1, 0x3c
/* 801DBB74 001D8AD4  41 82 00 10 */	beq lbl_801DBB84
/* 801DBB78 001D8AD8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801DBB7C 001D8ADC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801DBB80 001D8AE0  90 04 00 00 */	stw r0, 0(r4)
lbl_801DBB84:
/* 801DBB84 001D8AE4  88 1E 09 08 */	lbz r0, 0x908(r30)
/* 801DBB88 001D8AE8  28 00 00 00 */	cmplwi r0, 0
/* 801DBB8C 001D8AEC  41 82 00 14 */	beq lbl_801DBBA0
/* 801DBB90 001D8AF0  FC 20 F8 90 */	fmr f1, f31
/* 801DBB94 001D8AF4  7F C3 F3 78 */	mr r3, r30
/* 801DBB98 001D8AF8  7F E4 FB 78 */	mr r4, r31
/* 801DBB9C 001D8AFC  4B FF FA 7D */	bl sub_801db618
lbl_801DBBA0:
/* 801DBBA0 001D8B00  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 801DBBA4 001D8B04  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 801DBBA8 001D8B08  E3 C1 01 48 */	psq_l f30, 328(r1), 0, qr0
/* 801DBBAC 001D8B0C  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 801DBBB0 001D8B10  E3 A1 01 38 */	psq_l f29, 312(r1), 0, qr0
/* 801DBBB4 001D8B14  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 801DBBB8 001D8B18  E3 81 01 28 */	psq_l f28, 296(r1), 0, qr0
/* 801DBBBC 001D8B1C  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 801DBBC0 001D8B20  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 801DBBC4 001D8B24  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 801DBBC8 001D8B28  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801DBBCC 001D8B2C  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 801DBBD0 001D8B30  7C 08 03 A6 */	mtlr r0
/* 801DBBD4 001D8B34  38 21 01 60 */	addi r1, r1, 0x160
/* 801DBBD8 001D8B38  4E 80 00 20 */	blr

.global sub_801dbbdc
sub_801dbbdc:
/* 801DBBDC 001D8B3C  80 84 08 B8 */	lwz r4, 0x8b8(r4)
/* 801DBBE0 001D8B40  80 84 00 00 */	lwz r4, 0(r4)
/* 801DBBE4 001D8B44  80 04 00 14 */	lwz r0, 0x14(r4)
/* 801DBBE8 001D8B48  2C 00 00 03 */	cmpwi r0, 3
/* 801DBBEC 001D8B4C  40 82 00 0C */	bne lbl_801DBBF8
/* 801DBBF0 001D8B50  38 00 00 01 */	li r0, 1
/* 801DBBF4 001D8B54  98 03 06 88 */	stb r0, 0x688(r3)
lbl_801DBBF8:
/* 801DBBF8 001D8B58  80 03 07 C4 */	lwz r0, 0x7c4(r3)
/* 801DBBFC 001D8B5C  2C 00 00 00 */	cmpwi r0, 0
/* 801DBC00 001D8B60  41 82 00 0C */	beq lbl_801DBC0C
/* 801DBC04 001D8B64  2C 00 00 02 */	cmpwi r0, 2
/* 801DBC08 001D8B68  40 82 00 14 */	bne lbl_801DBC1C
lbl_801DBC0C:
/* 801DBC0C 001D8B6C  38 00 00 01 */	li r0, 1
/* 801DBC10 001D8B70  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DBC14 001D8B74  90 03 07 C4 */	stw r0, 0x7c4(r3)
/* 801DBC18 001D8B78  D0 03 07 B8 */	stfs f0, 0x7b8(r3)
lbl_801DBC1C:
/* 801DBC1C 001D8B7C  A0 05 00 08 */	lhz r0, 8(r5)
/* 801DBC20 001D8B80  B0 03 09 28 */	sth r0, 0x928(r3)
/* 801DBC24 001D8B84  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 801DBC28 001D8B88  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 801DBC2C 001D8B8C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801DBC30 001D8B90  D0 03 09 2C */	stfs f0, 0x92c(r3)
/* 801DBC34 001D8B94  D0 23 09 30 */	stfs f1, 0x930(r3)
/* 801DBC38 001D8B98  D0 43 09 34 */	stfs f2, 0x934(r3)
/* 801DBC3C 001D8B9C  4E 80 00 20 */	blr

.global sub_801dbc40
sub_801dbc40:
/* 801DBC40 001D8BA0  C0 22 AD 08 */	lfs f1, lbl_805ACA28@sda21(r2)
/* 801DBC44 001D8BA4  38 00 00 00 */	li r0, 0
/* 801DBC48 001D8BA8  C0 03 07 BC */	lfs f0, 0x7bc(r3)
/* 801DBC4C 001D8BAC  EC 01 00 2A */	fadds f0, f1, f0
/* 801DBC50 001D8BB0  D0 03 07 B8 */	stfs f0, 0x7b8(r3)
/* 801DBC54 001D8BB4  98 03 09 38 */	stb r0, 0x938(r3)
/* 801DBC58 001D8BB8  4E 80 00 20 */	blr

.global sub_801dbc5c
sub_801dbc5c:
/* 801DBC5C 001D8BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DBC60 001D8BC0  7C 08 02 A6 */	mflr r0
/* 801DBC64 001D8BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBC68 001D8BC8  88 03 09 38 */	lbz r0, 0x938(r3)
/* 801DBC6C 001D8BCC  28 00 00 00 */	cmplwi r0, 0
/* 801DBC70 001D8BD0  40 82 00 18 */	bne lbl_801DBC88
/* 801DBC74 001D8BD4  38 C0 00 01 */	li r6, 1
/* 801DBC78 001D8BD8  38 00 00 00 */	li r0, 0
/* 801DBC7C 001D8BDC  98 C3 09 38 */	stb r6, 0x938(r3)
/* 801DBC80 001D8BE0  98 03 09 39 */	stb r0, 0x939(r3)
/* 801DBC84 001D8BE4  4B FF FF 59 */	bl sub_801dbbdc
lbl_801DBC88:
/* 801DBC88 001D8BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBC8C 001D8BEC  7C 08 03 A6 */	mtlr r0
/* 801DBC90 001D8BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DBC94 001D8BF4  4E 80 00 20 */	blr

.global sub_801dbc98
sub_801dbc98:
/* 801DBC98 001D8BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DBC9C 001D8BFC  7C 08 02 A6 */	mflr r0
/* 801DBCA0 001D8C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DBCA4 001D8C04  88 03 09 38 */	lbz r0, 0x938(r3)
/* 801DBCA8 001D8C08  28 00 00 00 */	cmplwi r0, 0
/* 801DBCAC 001D8C0C  40 82 00 14 */	bne lbl_801DBCC0
/* 801DBCB0 001D8C10  D0 23 07 BC */	stfs f1, 0x7bc(r3)
/* 801DBCB4 001D8C14  38 00 00 01 */	li r0, 1
/* 801DBCB8 001D8C18  98 03 09 39 */	stb r0, 0x939(r3)
/* 801DBCBC 001D8C1C  4B FF FF 21 */	bl sub_801dbbdc
lbl_801DBCC0:
/* 801DBCC0 001D8C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DBCC4 001D8C24  7C 08 03 A6 */	mtlr r0
/* 801DBCC8 001D8C28  38 21 00 10 */	addi r1, r1, 0x10
/* 801DBCCC 001D8C2C  4E 80 00 20 */	blr

.global PathFind__8CThardusFR13CStateManager9EStateMsgf
PathFind__8CThardusFR13CStateManager9EStateMsgf:
/* 801DBCD0 001D8C30  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801DBCD4 001D8C34  7C 08 02 A6 */	mflr r0
/* 801DBCD8 001D8C38  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801DBCDC 001D8C3C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801DBCE0 001D8C40  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801DBCE4 001D8C44  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801DBCE8 001D8C48  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801DBCEC 001D8C4C  FF E0 08 90 */	fmr f31, f1
/* 801DBCF0 001D8C50  2C 05 00 01 */	cmpwi r5, 1
/* 801DBCF4 001D8C54  7C 7E 1B 78 */	mr r30, r3
/* 801DBCF8 001D8C58  7C 9F 23 78 */	mr r31, r4
/* 801DBCFC 001D8C5C  41 82 00 90 */	beq lbl_801DBD8C
/* 801DBD00 001D8C60  40 80 00 10 */	bge lbl_801DBD10
/* 801DBD04 001D8C64  2C 05 00 00 */	cmpwi r5, 0
/* 801DBD08 001D8C68  40 80 00 14 */	bge lbl_801DBD1C
/* 801DBD0C 001D8C6C  48 00 01 B4 */	b lbl_801DBEC0
lbl_801DBD10:
/* 801DBD10 001D8C70  2C 05 00 03 */	cmpwi r5, 3
/* 801DBD14 001D8C74  40 80 01 AC */	bge lbl_801DBEC0
/* 801DBD18 001D8C78  48 00 01 A0 */	b lbl_801DBEB8
lbl_801DBD1C:
/* 801DBD1C 001D8C7C  7F C4 F3 78 */	mr r4, r30
/* 801DBD20 001D8C80  7F E5 FB 78 */	mr r5, r31
/* 801DBD24 001D8C84  38 61 00 5C */	addi r3, r1, 0x5c
/* 801DBD28 001D8C88  48 00 28 29 */	bl sub_801de550
/* 801DBD2C 001D8C8C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801DBD30 001D8C90  FC 20 F8 90 */	fmr f1, f31
/* 801DBD34 001D8C94  7F C3 F3 78 */	mr r3, r30
/* 801DBD38 001D8C98  7F E4 FB 78 */	mr r4, r31
/* 801DBD3C 001D8C9C  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801DBD40 001D8CA0  38 A0 00 00 */	li r5, 0
/* 801DBD44 001D8CA4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801DBD48 001D8CA8  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801DBD4C 001D8CAC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801DBD50 001D8CB0  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 801DBD54 001D8CB4  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801DBD58 001D8CB8  D0 1E 07 D8 */	stfs f0, 0x7d8(r30)
/* 801DBD5C 001D8CBC  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801DBD60 001D8CC0  D0 1E 07 DC */	stfs f0, 0x7dc(r30)
/* 801DBD64 001D8CC4  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801DBD68 001D8CC8  D0 1E 07 E0 */	stfs f0, 0x7e0(r30)
/* 801DBD6C 001D8CCC  C0 1E 07 D8 */	lfs f0, 0x7d8(r30)
/* 801DBD70 001D8CD0  D0 1E 07 E4 */	stfs f0, 0x7e4(r30)
/* 801DBD74 001D8CD4  C0 1E 07 DC */	lfs f0, 0x7dc(r30)
/* 801DBD78 001D8CD8  D0 1E 07 E8 */	stfs f0, 0x7e8(r30)
/* 801DBD7C 001D8CDC  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 801DBD80 001D8CE0  D0 1E 07 EC */	stfs f0, 0x7ec(r30)
/* 801DBD84 001D8CE4  48 01 A9 49 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801DBD88 001D8CE8  48 00 01 38 */	b lbl_801DBEC0
lbl_801DBD8C:
/* 801DBD8C 001D8CEC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801DBD90 001D8CF0  38 61 00 20 */	addi r3, r1, 0x20
/* 801DBD94 001D8CF4  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801DBD98 001D8CF8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801DBD9C 001D8CFC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801DBDA0 001D8D00  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801DBDA4 001D8D04  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801DBDA8 001D8D08  48 13 84 59 */	bl __ct__9CVector2fFff
/* 801DBDAC 001D8D0C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801DBDB0 001D8D10  38 61 00 18 */	addi r3, r1, 0x18
/* 801DBDB4 001D8D14  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801DBDB8 001D8D18  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801DBDBC 001D8D1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801DBDC0 001D8D20  C0 3E 07 E4 */	lfs f1, 0x7e4(r30)
/* 801DBDC4 001D8D24  C0 5E 07 E8 */	lfs f2, 0x7e8(r30)
/* 801DBDC8 001D8D28  48 13 84 39 */	bl __ct__9CVector2fFff
/* 801DBDCC 001D8D2C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801DBDD0 001D8D30  38 61 00 10 */	addi r3, r1, 0x10
/* 801DBDD4 001D8D34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801DBDD8 001D8D38  38 81 00 30 */	addi r4, r1, 0x30
/* 801DBDDC 001D8D3C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801DBDE0 001D8D40  38 A1 00 28 */	addi r5, r1, 0x28
/* 801DBDE4 001D8D44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DBDE8 001D8D48  48 13 81 51 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DBDEC 001D8D4C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801DBDF0 001D8D50  38 61 00 44 */	addi r3, r1, 0x44
/* 801DBDF4 001D8D54  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801DBDF8 001D8D58  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DBDFC 001D8D5C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801DBE00 001D8D60  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801DBE04 001D8D64  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801DBE08 001D8D68  48 13 8A B1 */	bl Magnitude__9CVector3fCFv
/* 801DBE0C 001D8D6C  C0 02 AD 00 */	lfs f0, lbl_805ACA20@sda21(r2)
/* 801DBE10 001D8D70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DBE14 001D8D74  40 80 00 7C */	bge lbl_801DBE90
/* 801DBE18 001D8D78  7F C4 F3 78 */	mr r4, r30
/* 801DBE1C 001D8D7C  7F E5 FB 78 */	mr r5, r31
/* 801DBE20 001D8D80  38 61 00 38 */	addi r3, r1, 0x38
/* 801DBE24 001D8D84  48 00 26 11 */	bl sub_801de434
/* 801DBE28 001D8D88  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801DBE2C 001D8D8C  FC 20 F8 90 */	fmr f1, f31
/* 801DBE30 001D8D90  7F C3 F3 78 */	mr r3, r30
/* 801DBE34 001D8D94  7F E4 FB 78 */	mr r4, r31
/* 801DBE38 001D8D98  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801DBE3C 001D8D9C  38 A0 00 00 */	li r5, 0
/* 801DBE40 001D8DA0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801DBE44 001D8DA4  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801DBE48 001D8DA8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801DBE4C 001D8DAC  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 801DBE50 001D8DB0  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801DBE54 001D8DB4  D0 1E 07 D8 */	stfs f0, 0x7d8(r30)
/* 801DBE58 001D8DB8  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801DBE5C 001D8DBC  D0 1E 07 DC */	stfs f0, 0x7dc(r30)
/* 801DBE60 001D8DC0  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801DBE64 001D8DC4  D0 1E 07 E0 */	stfs f0, 0x7e0(r30)
/* 801DBE68 001D8DC8  C0 1E 07 D8 */	lfs f0, 0x7d8(r30)
/* 801DBE6C 001D8DCC  D0 1E 07 E4 */	stfs f0, 0x7e4(r30)
/* 801DBE70 001D8DD0  C0 1E 07 DC */	lfs f0, 0x7dc(r30)
/* 801DBE74 001D8DD4  D0 1E 07 E8 */	stfs f0, 0x7e8(r30)
/* 801DBE78 001D8DD8  C0 1E 07 E0 */	lfs f0, 0x7e0(r30)
/* 801DBE7C 001D8DDC  D0 1E 07 EC */	stfs f0, 0x7ec(r30)
/* 801DBE80 001D8DE0  48 01 A8 4D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801DBE84 001D8DE4  80 7E 06 60 */	lwz r3, 0x660(r30)
/* 801DBE88 001D8DE8  38 03 00 01 */	addi r0, r3, 1
/* 801DBE8C 001D8DEC  90 1E 06 60 */	stw r0, 0x660(r30)
lbl_801DBE90:
/* 801DBE90 001D8DF0  FC 20 F8 90 */	fmr f1, f31
/* 801DBE94 001D8DF4  7F C4 F3 78 */	mr r4, r30
/* 801DBE98 001D8DF8  7F E5 FB 78 */	mr r5, r31
/* 801DBE9C 001D8DFC  38 61 00 08 */	addi r3, r1, 8
/* 801DBEA0 001D8E00  48 00 07 6D */	bl sub_801dc60c
/* 801DBEA4 001D8E04  C0 01 00 08 */	lfs f0, 8(r1)
/* 801DBEA8 001D8E08  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 801DBEAC 001D8E0C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801DBEB0 001D8E10  D0 1E 06 54 */	stfs f0, 0x654(r30)
/* 801DBEB4 001D8E14  48 00 00 0C */	b lbl_801DBEC0
lbl_801DBEB8:
/* 801DBEB8 001D8E18  38 00 00 00 */	li r0, 0
/* 801DBEBC 001D8E1C  98 1E 08 D4 */	stb r0, 0x8d4(r30)
lbl_801DBEC0:
/* 801DBEC0 001D8E20  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DBEC4 001D8E24  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801DBEC8 001D8E28  C0 DE 06 54 */	lfs f6, 0x654(r30)
/* 801DBECC 001D8E2C  38 81 00 68 */	addi r4, r1, 0x68
/* 801DBED0 001D8E30  C0 BE 06 50 */	lfs f5, 0x650(r30)
/* 801DBED4 001D8E34  C0 82 AC DC */	lfs f4, lbl_805AC9FC@sda21(r2)
/* 801DBED8 001D8E38  C0 43 00 04 */	lfs f2, 4(r3)
/* 801DBEDC 001D8E3C  C0 23 00 08 */	lfs f1, 8(r3)
/* 801DBEE0 001D8E40  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DBEE4 001D8E44  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 801DBEE8 001D8E48  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 801DBEEC 001D8E4C  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 801DBEF0 001D8E50  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 801DBEF4 001D8E54  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801DBEF8 001D8E58  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801DBEFC 001D8E5C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801DBF00 001D8E60  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DBF04 001D8E64  38 63 00 04 */	addi r3, r3, 4
/* 801DBF08 001D8E68  4B F5 58 11 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801DBF0C 001D8E6C  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801DBF10 001D8E70  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801DBF14 001D8E74  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801DBF18 001D8E78  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801DBF1C 001D8E7C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801DBF20 001D8E80  7C 08 03 A6 */	mtlr r0
/* 801DBF24 001D8E84  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801DBF28 001D8E88  4E 80 00 20 */	blr

.global PathFound__8CThardusFR13CStateManagerf
PathFound__8CThardusFR13CStateManagerf:
/* 801DBF2C 001D8E8C  88 63 08 D4 */	lbz r3, 0x8d4(r3)
/* 801DBF30 001D8E90  4E 80 00 20 */	blr

.global sub_801dbf34
sub_801dbf34:
/* 801DBF34 001D8E94  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801DBF38 001D8E98  7C 08 02 A6 */	mflr r0
/* 801DBF3C 001D8E9C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DBF40 001D8EA0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801DBF44 001D8EA4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801DBF48 001D8EA8  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801DBF4C 001D8EAC  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 801DBF50 001D8EB0  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801DBF54 001D8EB4  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 801DBF58 001D8EB8  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 801DBF5C 001D8EBC  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 801DBF60 001D8EC0  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 801DBF64 001D8EC4  F3 61 00 68 */	psq_st f27, 104(r1), 0, qr0
/* 801DBF68 001D8EC8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801DBF6C 001D8ECC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801DBF70 001D8ED0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801DBF74 001D8ED4  7C 7D 1B 78 */	mr r29, r3
/* 801DBF78 001D8ED8  FF A0 08 90 */	fmr f29, f1
/* 801DBF7C 001D8EDC  80 03 07 C4 */	lwz r0, 0x7c4(r3)
/* 801DBF80 001D8EE0  7C 9E 23 78 */	mr r30, r4
/* 801DBF84 001D8EE4  2C 00 00 00 */	cmpwi r0, 0
/* 801DBF88 001D8EE8  40 82 00 10 */	bne lbl_801DBF98
/* 801DBF8C 001D8EEC  38 00 00 00 */	li r0, 0
/* 801DBF90 001D8EF0  98 1D 09 3A */	stb r0, 0x93a(r29)
/* 801DBF94 001D8EF4  48 00 02 F0 */	b lbl_801DC284
lbl_801DBF98:
/* 801DBF98 001D8EF8  A0 7D 09 28 */	lhz r3, 0x928(r29)
/* 801DBF9C 001D8EFC  3B E0 00 00 */	li r31, 0
/* 801DBFA0 001D8F00  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801DBFA4 001D8F04  C3 E2 AC DC */	lfs f31, lbl_805AC9FC@sda21(r2)
/* 801DBFA8 001D8F08  7C 03 00 40 */	cmplw r3, r0
/* 801DBFAC 001D8F0C  C3 C2 AC D8 */	lfs f30, lbl_805AC9F8@sda21(r2)
/* 801DBFB0 001D8F10  41 82 00 54 */	beq lbl_801DC004
/* 801DBFB4 001D8F14  A0 1D 09 28 */	lhz r0, 0x928(r29)
/* 801DBFB8 001D8F18  7F C3 F3 78 */	mr r3, r30
/* 801DBFBC 001D8F1C  38 81 00 08 */	addi r4, r1, 8
/* 801DBFC0 001D8F20  B0 01 00 08 */	sth r0, 8(r1)
/* 801DBFC4 001D8F24  4B E7 05 E1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DBFC8 001D8F28  7C 64 1B 78 */	mr r4, r3
/* 801DBFCC 001D8F2C  38 61 00 0C */	addi r3, r1, 0xc
/* 801DBFD0 001D8F30  4B ED 3C C1 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801DBFD4 001D8F34  80 63 00 04 */	lwz r3, 4(r3)
/* 801DBFD8 001D8F38  28 03 00 00 */	cmplwi r3, 0
/* 801DBFDC 001D8F3C  41 82 00 20 */	beq lbl_801DBFFC
/* 801DBFE0 001D8F40  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801DBFE4 001D8F44  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801DBFE8 001D8F48  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801DBFEC 001D8F4C  D0 1D 09 2C */	stfs f0, 0x92c(r29)
/* 801DBFF0 001D8F50  D0 3D 09 30 */	stfs f1, 0x930(r29)
/* 801DBFF4 001D8F54  D0 5D 09 34 */	stfs f2, 0x934(r29)
/* 801DBFF8 001D8F58  48 00 00 0C */	b lbl_801DC004
lbl_801DBFFC:
/* 801DBFFC 001D8F5C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801DC000 001D8F60  B0 1D 09 28 */	sth r0, 0x928(r29)
lbl_801DC004:
/* 801DC004 001D8F64  88 1D 09 39 */	lbz r0, 0x939(r29)
/* 801DC008 001D8F68  28 00 00 00 */	cmplwi r0, 0
/* 801DC00C 001D8F6C  40 82 00 88 */	bne lbl_801DC094
/* 801DC010 001D8F70  80 7E 08 70 */	lwz r3, 0x870(r30)
/* 801DC014 001D8F74  7F C4 F3 78 */	mr r4, r30
/* 801DC018 001D8F78  4B E2 FB 01 */	bl GetCurrentCamera__14CCameraManagerCFR13CStateManager
/* 801DC01C 001D8F7C  C0 3D 09 30 */	lfs f1, 0x930(r29)
/* 801DC020 001D8F80  38 81 00 38 */	addi r4, r1, 0x38
/* 801DC024 001D8F84  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801DC028 001D8F88  C0 7D 09 34 */	lfs f3, 0x934(r29)
/* 801DC02C 001D8F8C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801DC030 001D8F90  EC 81 00 28 */	fsubs f4, f1, f0
/* 801DC034 001D8F94  C0 3D 09 2C */	lfs f1, 0x92c(r29)
/* 801DC038 001D8F98  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801DC03C 001D8F9C  EC 43 10 28 */	fsubs f2, f3, f2
/* 801DC040 001D8FA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DC044 001D8FA4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801DC048 001D8FA8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801DC04C 001D8FAC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DC050 001D8FB0  C3 63 00 58 */	lfs f27, 0x58(r3)
/* 801DC054 001D8FB4  C3 83 00 48 */	lfs f28, 0x48(r3)
/* 801DC058 001D8FB8  C3 C3 00 38 */	lfs f30, 0x38(r3)
/* 801DC05C 001D8FBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DC060 001D8FC0  48 13 87 F1 */	bl AsNormalized__9CVector3fCFv
/* 801DC064 001D8FC4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801DC068 001D8FC8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801DC06C 001D8FCC  EC 20 07 32 */	fmuls f1, f0, f28
/* 801DC070 001D8FD0  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801DC074 001D8FD4  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DC078 001D8FD8  EC 22 0F BA */	fmadds f1, f2, f30, f1
/* 801DC07C 001D8FDC  EC 23 0E FA */	fmadds f1, f3, f27, f1
/* 801DC080 001D8FE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DC084 001D8FE4  40 80 00 0C */	bge lbl_801DC090
/* 801DC088 001D8FE8  FF C0 00 90 */	fmr f30, f0
/* 801DC08C 001D8FEC  48 00 00 08 */	b lbl_801DC094
lbl_801DC090:
/* 801DC090 001D8FF0  EF C1 00 72 */	fmuls f30, f1, f1
lbl_801DC094:
/* 801DC094 001D8FF4  80 1D 07 C4 */	lwz r0, 0x7c4(r29)
/* 801DC098 001D8FF8  2C 00 00 02 */	cmpwi r0, 2
/* 801DC09C 001D8FFC  41 82 00 8C */	beq lbl_801DC128
/* 801DC0A0 001D9000  40 80 00 10 */	bge lbl_801DC0B0
/* 801DC0A4 001D9004  2C 00 00 01 */	cmpwi r0, 1
/* 801DC0A8 001D9008  40 80 00 14 */	bge lbl_801DC0BC
/* 801DC0AC 001D900C  48 00 01 54 */	b lbl_801DC200
lbl_801DC0B0:
/* 801DC0B0 001D9010  2C 00 00 04 */	cmpwi r0, 4
/* 801DC0B4 001D9014  40 80 01 4C */	bge lbl_801DC200
/* 801DC0B8 001D9018  48 00 00 CC */	b lbl_801DC184
lbl_801DC0BC:
/* 801DC0BC 001D901C  C0 02 AC D0 */	lfs f0, lbl_805AC9F0@sda21(r2)
/* 801DC0C0 001D9020  C0 5D 07 B8 */	lfs f2, 0x7b8(r29)
/* 801DC0C4 001D9024  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801DC0C8 001D9028  40 80 00 0C */	bge lbl_801DC0D4
/* 801DC0CC 001D902C  38 62 AC D0 */	addi r3, r2, lbl_805AC9F0@sda21
/* 801DC0D0 001D9030  48 00 00 08 */	b lbl_801DC0D8
lbl_801DC0D4:
/* 801DC0D4 001D9034  38 7D 07 B8 */	addi r3, r29, 0x7b8
lbl_801DC0D8:
/* 801DC0D8 001D9038  C0 02 AD 0C */	lfs f0, lbl_805ACA2C@sda21(r2)
/* 801DC0DC 001D903C  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DC0E0 001D9040  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801DC0E4 001D9044  EF E1 00 24 */	fdivs f31, f1, f0
/* 801DC0E8 001D9048  40 81 00 14 */	ble lbl_801DC0FC
/* 801DC0EC 001D904C  38 00 00 03 */	li r0, 3
/* 801DC0F0 001D9050  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DC0F4 001D9054  90 1D 07 C4 */	stw r0, 0x7c4(r29)
/* 801DC0F8 001D9058  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
lbl_801DC0FC:
/* 801DC0FC 001D905C  C0 1D 07 B8 */	lfs f0, 0x7b8(r29)
/* 801DC100 001D9060  EC 00 E8 2A */	fadds f0, f0, f29
/* 801DC104 001D9064  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 801DC108 001D9068  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801DC10C 001D906C  80 63 00 00 */	lwz r3, 0(r3)
/* 801DC110 001D9070  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801DC114 001D9074  2C 00 00 03 */	cmpwi r0, 3
/* 801DC118 001D9078  40 82 00 E8 */	bne lbl_801DC200
/* 801DC11C 001D907C  38 00 00 01 */	li r0, 1
/* 801DC120 001D9080  98 1D 06 88 */	stb r0, 0x688(r29)
/* 801DC124 001D9084  48 00 00 DC */	b lbl_801DC200
lbl_801DC128:
/* 801DC128 001D9088  C0 02 AC D4 */	lfs f0, lbl_805AC9F4@sda21(r2)
/* 801DC12C 001D908C  C0 7D 07 B8 */	lfs f3, 0x7b8(r29)
/* 801DC130 001D9090  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801DC134 001D9094  40 80 00 0C */	bge lbl_801DC140
/* 801DC138 001D9098  38 62 AC D4 */	addi r3, r2, lbl_805AC9F4@sda21
/* 801DC13C 001D909C  48 00 00 08 */	b lbl_801DC144
lbl_801DC140:
/* 801DC140 001D90A0  38 7D 07 B8 */	addi r3, r29, 0x7b8
lbl_801DC144:
/* 801DC144 001D90A4  C0 02 AC E0 */	lfs f0, lbl_805ACA00@sda21(r2)
/* 801DC148 001D90A8  C0 43 00 00 */	lfs f2, 0(r3)
/* 801DC14C 001D90AC  C0 22 AC F8 */	lfs f1, lbl_805ACA18@sda21(r2)
/* 801DC150 001D90B0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801DC154 001D90B4  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DC158 001D90B8  EF E2 00 7C */	fnmsubs f31, f2, f1, f0
/* 801DC15C 001D90BC  40 81 00 18 */	ble lbl_801DC174
/* 801DC160 001D90C0  38 00 00 00 */	li r0, 0
/* 801DC164 001D90C4  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DC168 001D90C8  90 1D 07 C4 */	stw r0, 0x7c4(r29)
/* 801DC16C 001D90CC  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 801DC170 001D90D0  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
lbl_801DC174:
/* 801DC174 001D90D4  C0 1D 07 B8 */	lfs f0, 0x7b8(r29)
/* 801DC178 001D90D8  EC 00 E8 2A */	fadds f0, f0, f29
/* 801DC17C 001D90DC  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 801DC180 001D90E0  48 00 00 80 */	b lbl_801DC200
lbl_801DC184:
/* 801DC184 001D90E4  C0 3D 07 B8 */	lfs f1, 0x7b8(r29)
/* 801DC188 001D90E8  C0 1D 07 BC */	lfs f0, 0x7bc(r29)
/* 801DC18C 001D90EC  C3 E2 AC D8 */	lfs f31, lbl_805AC9F8@sda21(r2)
/* 801DC190 001D90F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DC194 001D90F4  40 81 00 20 */	ble lbl_801DC1B4
/* 801DC198 001D90F8  88 1D 09 38 */	lbz r0, 0x938(r29)
/* 801DC19C 001D90FC  28 00 00 00 */	cmplwi r0, 0
/* 801DC1A0 001D9100  40 82 00 14 */	bne lbl_801DC1B4
/* 801DC1A4 001D9104  38 00 00 02 */	li r0, 2
/* 801DC1A8 001D9108  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DC1AC 001D910C  90 1D 07 C4 */	stw r0, 0x7c4(r29)
/* 801DC1B0 001D9110  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
lbl_801DC1B4:
/* 801DC1B4 001D9114  C0 1D 07 B8 */	lfs f0, 0x7b8(r29)
/* 801DC1B8 001D9118  EC 00 E8 2A */	fadds f0, f0, f29
/* 801DC1BC 001D911C  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 801DC1C0 001D9120  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801DC1C4 001D9124  80 63 00 00 */	lwz r3, 0(r3)
/* 801DC1C8 001D9128  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801DC1CC 001D912C  2C 00 00 03 */	cmpwi r0, 3
/* 801DC1D0 001D9130  40 82 00 30 */	bne lbl_801DC200
/* 801DC1D4 001D9134  38 80 00 01 */	li r4, 1
/* 801DC1D8 001D9138  38 60 00 00 */	li r3, 0
/* 801DC1DC 001D913C  98 9D 06 88 */	stb r4, 0x688(r29)
/* 801DC1E0 001D9140  88 1D 09 38 */	lbz r0, 0x938(r29)
/* 801DC1E4 001D9144  28 00 00 00 */	cmplwi r0, 0
/* 801DC1E8 001D9148  41 82 00 14 */	beq lbl_801DC1FC
/* 801DC1EC 001D914C  C0 02 AD 10 */	lfs f0, lbl_805ACA30@sda21(r2)
/* 801DC1F0 001D9150  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801DC1F4 001D9154  40 81 00 08 */	ble lbl_801DC1FC
/* 801DC1F8 001D9158  7C 83 23 78 */	mr r3, r4
lbl_801DC1FC:
/* 801DC1FC 001D915C  7C 7F 1B 78 */	mr r31, r3
lbl_801DC200:
/* 801DC200 001D9160  EF FF 07 B2 */	fmuls f31, f31, f30
/* 801DC204 001D9164  C0 02 AD 14 */	lfs f0, lbl_805ACA34@sda21(r2)
/* 801DC208 001D9168  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801DC20C 001D916C  D3 FD 07 C0 */	stfs f31, 0x7c0(r29)
/* 801DC210 001D9170  EC 20 07 F2 */	fmuls f1, f0, f31
/* 801DC214 001D9174  C0 1E 0F 28 */	lfs f0, 0xf28(r30)
/* 801DC218 001D9178  EC 00 08 2A */	fadds f0, f0, f1
/* 801DC21C 001D917C  D0 1E 0F 28 */	stfs f0, 0xf28(r30)
/* 801DC220 001D9180  D0 3D 05 0C */	stfs f1, 0x50c(r29)
/* 801DC224 001D9184  88 1D 09 3A */	lbz r0, 0x93a(r29)
/* 801DC228 001D9188  7C 03 00 40 */	cmplw r3, r0
/* 801DC22C 001D918C  41 82 00 58 */	beq lbl_801DC284
/* 801DC230 001D9190  28 03 00 00 */	cmplwi r3, 0
/* 801DC234 001D9194  41 82 00 4C */	beq lbl_801DC280
/* 801DC238 001D9198  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 801DC23C 001D919C  38 80 00 12 */	li r4, 0x12
/* 801DC240 001D91A0  48 17 A4 BD */	bl GetString__12CStringTableCFi
/* 801DC244 001D91A4  7C 64 1B 78 */	mr r4, r3
/* 801DC248 001D91A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DC24C 001D91AC  4B E3 97 A5 */	bl wstring_l__4rstlFPCw
/* 801DC250 001D91B0  C0 02 AD 18 */	lfs f0, lbl_805ACA38@sda21(r2)
/* 801DC254 001D91B4  38 00 00 00 */	li r0, 0
/* 801DC258 001D91B8  38 A0 00 01 */	li r5, 1
/* 801DC25C 001D91BC  98 01 00 19 */	stb r0, 0x19(r1)
/* 801DC260 001D91C0  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DC264 001D91C4  38 81 00 14 */	addi r4, r1, 0x14
/* 801DC268 001D91C8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801DC26C 001D91CC  98 A1 00 18 */	stb r5, 0x18(r1)
/* 801DC270 001D91D0  98 01 00 1A */	stb r0, 0x1a(r1)
/* 801DC274 001D91D4  4B E8 F9 F5 */	bl DisplayHudMemo__9CSamusHudFRC7wstringRC12SHudMemoInfo
/* 801DC278 001D91D8  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DC27C 001D91DC  48 16 0E B9 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
lbl_801DC280:
/* 801DC280 001D91E0  9B FD 09 3A */	stb r31, 0x93a(r29)
lbl_801DC284:
/* 801DC284 001D91E4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801DC288 001D91E8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801DC28C 001D91EC  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 801DC290 001D91F0  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801DC294 001D91F4  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 801DC298 001D91F8  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801DC29C 001D91FC  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 801DC2A0 001D9200  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 801DC2A4 001D9204  E3 61 00 68 */	psq_l f27, 104(r1), 0, qr0
/* 801DC2A8 001D9208  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 801DC2AC 001D920C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801DC2B0 001D9210  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801DC2B4 001D9214  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801DC2B8 001D9218  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801DC2BC 001D921C  7C 08 03 A6 */	mtlr r0
/* 801DC2C0 001D9220  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801DC2C4 001D9224  4E 80 00 20 */	blr

.global sub_801dc2c8
sub_801dc2c8:
/* 801DC2C8 001D9228  80 83 06 14 */	lwz r4, 0x614(r3)
/* 801DC2CC 001D922C  80 63 06 48 */	lwz r3, 0x648(r3)
/* 801DC2D0 001D9230  38 04 FF FF */	addi r0, r4, -1
/* 801DC2D4 001D9234  7C 03 00 50 */	subf r0, r3, r0
/* 801DC2D8 001D9238  7C 00 00 34 */	cntlzw r0, r0
/* 801DC2DC 001D923C  54 03 D9 7E */	srwi r3, r0, 5
/* 801DC2E0 001D9240  4E 80 00 20 */	blr

.global CoverBlown__8CThardusFR13CStateManagerf
CoverBlown__8CThardusFR13CStateManagerf:
/* 801DC2E4 001D9244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DC2E8 001D9248  7C 08 02 A6 */	mflr r0
/* 801DC2EC 001D924C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DC2F0 001D9250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DC2F4 001D9254  3B E0 00 00 */	li r31, 0
/* 801DC2F8 001D9258  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 801DC2FC 001D925C  2C 00 00 02 */	cmpwi r0, 2
/* 801DC300 001D9260  40 82 00 24 */	bne lbl_801DC324
/* 801DC304 001D9264  81 83 00 00 */	lwz r12, 0(r3)
/* 801DC308 001D9268  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DC30C 001D926C  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 801DC310 001D9270  7D 89 03 A6 */	mtctr r12
/* 801DC314 001D9274  4E 80 04 21 */	bctrl
/* 801DC318 001D9278  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC31C 001D927C  40 82 00 08 */	bne lbl_801DC324
/* 801DC320 001D9280  3B E0 00 01 */	li r31, 1
lbl_801DC324:
/* 801DC324 001D9284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DC328 001D9288  7F E3 FB 78 */	mr r3, r31
/* 801DC32C 001D928C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DC330 001D9290  7C 08 03 A6 */	mtlr r0
/* 801DC334 001D9294  38 21 00 10 */	addi r1, r1, 0x10
/* 801DC338 001D9298  4E 80 00 20 */	blr

.global AttackOver__8CThardusFR13CStateManagerf
AttackOver__8CThardusFR13CStateManagerf:
/* 801DC33C 001D929C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC340 001D92A0  7C 08 02 A6 */	mflr r0
/* 801DC344 001D92A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC348 001D92A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC34C 001D92AC  7C 7F 1B 78 */	mr r31, r3
/* 801DC350 001D92B0  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 801DC354 001D92B4  2C 00 00 01 */	cmpwi r0, 1
/* 801DC358 001D92B8  40 82 00 80 */	bne lbl_801DC3D8
/* 801DC35C 001D92BC  88 1F 09 4D */	lbz r0, 0x94d(r31)
/* 801DC360 001D92C0  28 00 00 00 */	cmplwi r0, 0
/* 801DC364 001D92C4  40 82 00 74 */	bne lbl_801DC3D8
/* 801DC368 001D92C8  80 9F 09 40 */	lwz r4, 0x940(r31)
/* 801DC36C 001D92CC  3C 00 43 30 */	lis r0, 0x4330
/* 801DC370 001D92D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DC374 001D92D4  C8 22 AD 20 */	lfd f1, lbl_805ACA40@sda21(r2)
/* 801DC378 001D92D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 801DC37C 001D92DC  C0 42 AD 1C */	lfs f2, lbl_805ACA3C@sda21(r2)
/* 801DC380 001D92E0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801DC384 001D92E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801DC388 001D92E8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801DC38C 001D92EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 801DC390 001D92F0  4B FF FF 39 */	bl sub_801dc2c8
/* 801DC394 001D92F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC398 001D92F8  41 82 00 0C */	beq lbl_801DC3A4
/* 801DC39C 001D92FC  C0 21 00 08 */	lfs f1, 8(r1)
/* 801DC3A0 001D9300  48 00 00 24 */	b lbl_801DC3C4
lbl_801DC3A4:
/* 801DC3A4 001D9304  C0 21 00 08 */	lfs f1, 8(r1)
/* 801DC3A8 001D9308  C0 02 AC CC */	lfs f0, lbl_805AC9EC@sda21(r2)
/* 801DC3AC 001D930C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DC3B0 001D9310  40 80 00 0C */	bge lbl_801DC3BC
/* 801DC3B4 001D9314  38 62 AC CC */	addi r3, r2, lbl_805AC9EC@sda21
/* 801DC3B8 001D9318  48 00 00 08 */	b lbl_801DC3C0
lbl_801DC3BC:
/* 801DC3BC 001D931C  38 61 00 08 */	addi r3, r1, 8
lbl_801DC3C0:
/* 801DC3C0 001D9320  C0 23 00 00 */	lfs f1, 0(r3)
lbl_801DC3C4:
/* 801DC3C4 001D9324  C0 1F 03 38 */	lfs f0, 0x338(r31)
/* 801DC3C8 001D9328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DC3CC 001D932C  40 81 00 60 */	ble lbl_801DC42C
/* 801DC3D0 001D9330  38 60 00 01 */	li r3, 1
/* 801DC3D4 001D9334  48 00 00 5C */	b lbl_801DC430
lbl_801DC3D8:
/* 801DC3D8 001D9338  7F E3 FB 78 */	mr r3, r31
/* 801DC3DC 001D933C  4B FF FE ED */	bl sub_801dc2c8
/* 801DC3E0 001D9340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC3E4 001D9344  40 82 00 28 */	bne lbl_801DC40C
/* 801DC3E8 001D9348  88 1F 09 3B */	lbz r0, 0x93b(r31)
/* 801DC3EC 001D934C  28 00 00 00 */	cmplwi r0, 0
/* 801DC3F0 001D9350  40 82 00 1C */	bne lbl_801DC40C
/* 801DC3F4 001D9354  88 1F 09 4D */	lbz r0, 0x94d(r31)
/* 801DC3F8 001D9358  28 00 00 00 */	cmplwi r0, 0
/* 801DC3FC 001D935C  40 82 00 10 */	bne lbl_801DC40C
/* 801DC400 001D9360  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 801DC404 001D9364  2C 00 FF FF */	cmpwi r0, -1
/* 801DC408 001D9368  40 82 00 0C */	bne lbl_801DC414
lbl_801DC40C:
/* 801DC40C 001D936C  38 60 00 01 */	li r3, 1
/* 801DC410 001D9370  48 00 00 20 */	b lbl_801DC430
lbl_801DC414:
/* 801DC414 001D9374  C0 3F 03 38 */	lfs f1, 0x338(r31)
/* 801DC418 001D9378  C0 02 AD 10 */	lfs f0, lbl_805ACA30@sda21(r2)
/* 801DC41C 001D937C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DC420 001D9380  40 81 00 0C */	ble lbl_801DC42C
/* 801DC424 001D9384  38 60 00 01 */	li r3, 1
/* 801DC428 001D9388  48 00 00 08 */	b lbl_801DC430
lbl_801DC42C:
/* 801DC42C 001D938C  38 60 00 00 */	li r3, 0
lbl_801DC430:
/* 801DC430 001D9390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC434 001D9394  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC438 001D9398  7C 08 03 A6 */	mtlr r0
/* 801DC43C 001D939C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC440 001D93A0  4E 80 00 20 */	blr

.global sub_801dc444
sub_801dc444:
/* 801DC444 001D93A4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801DC448 001D93A8  7C 08 02 A6 */	mflr r0
/* 801DC44C 001D93AC  3C E0 80 3D */	lis r7, lbl_803D1CB8@ha
/* 801DC450 001D93B0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801DC454 001D93B4  38 E7 1C B8 */	addi r7, r7, lbl_803D1CB8@l
/* 801DC458 001D93B8  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801DC45C 001D93BC  7C DF 33 78 */	mr r31, r6
/* 801DC460 001D93C0  38 C1 00 0C */	addi r6, r1, 0xc
/* 801DC464 001D93C4  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801DC468 001D93C8  7C BE 2B 78 */	mr r30, r5
/* 801DC46C 001D93CC  38 A0 FF FF */	li r5, -1
/* 801DC470 001D93D0  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 801DC474 001D93D4  7C 9D 23 78 */	mr r29, r4
/* 801DC478 001D93D8  38 87 01 88 */	addi r4, r7, 0x188
/* 801DC47C 001D93DC  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 801DC480 001D93E0  7C 7C 1B 78 */	mr r28, r3
/* 801DC484 001D93E4  38 61 00 90 */	addi r3, r1, 0x90
/* 801DC488 001D93E8  48 16 1D 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801DC48C 001D93EC  7F E4 FB 78 */	mr r4, r31
/* 801DC490 001D93F0  38 61 00 80 */	addi r3, r1, 0x80
/* 801DC494 001D93F4  48 16 24 01 */	bl CreateFromInteger__13CStringExtrasFi
/* 801DC498 001D93F8  38 61 00 70 */	addi r3, r1, 0x70
/* 801DC49C 001D93FC  38 81 00 90 */	addi r4, r1, 0x90
/* 801DC4A0 001D9400  38 A1 00 80 */	addi r5, r1, 0x80
/* 801DC4A4 001D9404  4B E2 87 B9 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC4A8 001D9408  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DC4AC 001D940C  38 61 00 60 */	addi r3, r1, 0x60
/* 801DC4B0 001D9410  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DC4B4 001D9414  38 C1 00 08 */	addi r6, r1, 8
/* 801DC4B8 001D9418  38 84 01 94 */	addi r4, r4, 0x194
/* 801DC4BC 001D941C  38 A0 FF FF */	li r5, -1
/* 801DC4C0 001D9420  48 16 1C D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801DC4C4 001D9424  38 61 00 50 */	addi r3, r1, 0x50
/* 801DC4C8 001D9428  38 81 00 70 */	addi r4, r1, 0x70
/* 801DC4CC 001D942C  38 A1 00 60 */	addi r5, r1, 0x60
/* 801DC4D0 001D9430  4B E2 87 8D */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC4D4 001D9434  80 9C 06 F4 */	lwz r4, 0x6f4(r28)
/* 801DC4D8 001D9438  38 61 00 40 */	addi r3, r1, 0x40
/* 801DC4DC 001D943C  38 04 00 01 */	addi r0, r4, 1
/* 801DC4E0 001D9440  90 1C 06 F4 */	stw r0, 0x6f4(r28)
/* 801DC4E4 001D9444  48 16 23 B1 */	bl CreateFromInteger__13CStringExtrasFi
/* 801DC4E8 001D9448  38 61 00 30 */	addi r3, r1, 0x30
/* 801DC4EC 001D944C  38 81 00 50 */	addi r4, r1, 0x50
/* 801DC4F0 001D9450  38 A1 00 40 */	addi r5, r1, 0x40
/* 801DC4F4 001D9454  4B E2 87 69 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC4F8 001D9458  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801DC4FC 001D945C  38 81 00 30 */	addi r4, r1, 0x30
/* 801DC500 001D9460  48 16 1C 61 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC504 001D9464  38 61 00 30 */	addi r3, r1, 0x30
/* 801DC508 001D9468  48 16 15 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC50C 001D946C  38 61 00 40 */	addi r3, r1, 0x40
/* 801DC510 001D9470  48 16 15 D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC514 001D9474  38 61 00 50 */	addi r3, r1, 0x50
/* 801DC518 001D9478  48 16 15 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC51C 001D947C  38 61 00 60 */	addi r3, r1, 0x60
/* 801DC520 001D9480  48 16 15 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC524 001D9484  38 61 00 70 */	addi r3, r1, 0x70
/* 801DC528 001D9488  48 16 15 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC52C 001D948C  38 61 00 80 */	addi r3, r1, 0x80
/* 801DC530 001D9490  48 16 15 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC534 001D9494  38 61 00 90 */	addi r3, r1, 0x90
/* 801DC538 001D9498  48 16 15 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC53C 001D949C  81 7C 00 04 */	lwz r11, 4(r28)
/* 801DC540 001D94A0  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801DC544 001D94A4  C0 02 AC E0 */	lfs f0, lbl_805ACA00@sda21(r2)
/* 801DC548 001D94A8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801DC54C 001D94AC  91 61 00 14 */	stw r11, 0x14(r1)
/* 801DC550 001D94B0  38 60 00 00 */	li r3, 0
/* 801DC554 001D94B4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 801DC558 001D94B8  7F A8 EB 78 */	mr r8, r29
/* 801DC55C 001D94BC  80 BC 00 64 */	lwz r5, 0x64(r28)
/* 801DC560 001D94C0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801DC564 001D94C4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 801DC568 001D94C8  38 C1 00 B0 */	addi r6, r1, 0xb0
/* 801DC56C 001D94CC  C0 E5 00 00 */	lfs f7, 0(r5)
/* 801DC570 001D94D0  38 E1 00 24 */	addi r7, r1, 0x24
/* 801DC574 001D94D4  C0 C5 00 04 */	lfs f6, 4(r5)
/* 801DC578 001D94D8  39 21 00 14 */	addi r9, r1, 0x14
/* 801DC57C 001D94DC  C0 A5 00 08 */	lfs f5, 8(r5)
/* 801DC580 001D94E0  EC 80 01 F2 */	fmuls f4, f0, f7
/* 801DC584 001D94E4  ED 20 01 B2 */	fmuls f9, f0, f6
/* 801DC588 001D94E8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 801DC58C 001D94EC  ED 00 01 72 */	fmuls f8, f0, f5
/* 801DC590 001D94F0  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DC594 001D94F4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801DC598 001D94F8  38 A0 00 40 */	li r5, 0x40
/* 801DC59C 001D94FC  D1 21 00 28 */	stfs f9, 0x28(r1)
/* 801DC5A0 001D9500  39 40 00 00 */	li r10, 0
/* 801DC5A4 001D9504  D1 01 00 2C */	stfs f8, 0x2c(r1)
/* 801DC5A8 001D9508  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 801DC5AC 001D950C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DC5B0 001D9510  93 E1 00 B8 */	stw r31, 0xb8(r1)
/* 801DC5B4 001D9514  D0 61 00 BC */	stfs f3, 0xbc(r1)
/* 801DC5B8 001D9518  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 801DC5BC 001D951C  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 801DC5C0 001D9520  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801DC5C4 001D9524  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801DC5C8 001D9528  91 61 00 10 */	stw r11, 0x10(r1)
/* 801DC5CC 001D952C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801DC5D0 001D9530  D0 E1 00 18 */	stfs f7, 0x18(r1)
/* 801DC5D4 001D9534  38 63 01 20 */	addi r3, r3, 0x120
/* 801DC5D8 001D9538  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 801DC5DC 001D953C  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801DC5E0 001D9540  4B ED C9 85 */	bl "AddAuxiliaryParticleEffect__17CParticleDatabaseFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>iRC22CAuxiliaryParticleDataRC9CVector3fR13CStateManager7TAreaIdi"
/* 801DC5E4 001D9544  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801DC5E8 001D9548  48 16 14 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC5EC 001D954C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801DC5F0 001D9550  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801DC5F4 001D9554  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801DC5F8 001D9558  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 801DC5FC 001D955C  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 801DC600 001D9560  7C 08 03 A6 */	mtlr r0
/* 801DC604 001D9564  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801DC608 001D9568  4E 80 00 20 */	blr

.global sub_801dc60c
sub_801dc60c:
/* 801DC60C 001D956C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801DC610 001D9570  7C 08 02 A6 */	mflr r0
/* 801DC614 001D9574  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801DC618 001D9578  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801DC61C 001D957C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801DC620 001D9580  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801DC624 001D9584  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 801DC628 001D9588  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 801DC62C 001D958C  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 801DC630 001D9590  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801DC634 001D9594  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801DC638 001D9598  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801DC63C 001D959C  93 81 00 70 */	stw r28, 0x70(r1)
/* 801DC640 001D95A0  7C 9D 23 78 */	mr r29, r4
/* 801DC644 001D95A4  7C 7C 1B 78 */	mr r28, r3
/* 801DC648 001D95A8  7F A3 EB 78 */	mr r3, r29
/* 801DC64C 001D95AC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801DC650 001D95B0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DC654 001D95B4  3B E4 66 A0 */	addi r31, r4, skZero3f@l
/* 801DC658 001D95B8  FF A0 08 90 */	fmr f29, f1
/* 801DC65C 001D95BC  7C BE 2B 78 */	mr r30, r5
/* 801DC660 001D95C0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801DC664 001D95C4  C3 FF 00 00 */	lfs f31, 0(r31)
/* 801DC668 001D95C8  C3 DF 00 04 */	lfs f30, 4(r31)
/* 801DC66C 001D95CC  7D 89 03 A6 */	mtctr r12
/* 801DC670 001D95D0  4E 80 04 21 */	bctrl
/* 801DC674 001D95D4  28 03 00 00 */	cmplwi r3, 0
/* 801DC678 001D95D8  41 82 00 C8 */	beq lbl_801DC740
/* 801DC67C 001D95DC  7F A3 EB 78 */	mr r3, r29
/* 801DC680 001D95E0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DC684 001D95E4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801DC688 001D95E8  7D 89 03 A6 */	mtctr r12
/* 801DC68C 001D95EC  4E 80 04 21 */	bctrl
/* 801DC690 001D95F0  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 801DC694 001D95F4  2C 00 00 00 */	cmpwi r0, 0
/* 801DC698 001D95F8  41 82 00 88 */	beq lbl_801DC720
/* 801DC69C 001D95FC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DC6A0 001D9600  C0 3F 00 04 */	lfs f1, 4(r31)
/* 801DC6A4 001D9604  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801DC6A8 001D9608  7F A3 EB 78 */	mr r3, r29
/* 801DC6AC 001D960C  C0 44 00 00 */	lfs f2, 0(r4)
/* 801DC6B0 001D9610  C0 04 00 08 */	lfs f0, 8(r4)
/* 801DC6B4 001D9614  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801DC6B8 001D9618  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801DC6BC 001D961C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801DC6C0 001D9620  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801DC6C4 001D9624  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801DC6C8 001D9628  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801DC6CC 001D962C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801DC6D0 001D9630  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801DC6D4 001D9634  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801DC6D8 001D9638  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DC6DC 001D963C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801DC6E0 001D9640  7D 89 03 A6 */	mtctr r12
/* 801DC6E4 001D9644  4E 80 04 21 */	bctrl
/* 801DC6E8 001D9648  38 81 00 48 */	addi r4, r1, 0x48
/* 801DC6EC 001D964C  38 A1 00 60 */	addi r5, r1, 0x60
/* 801DC6F0 001D9650  4B FE AA 0D */	bl FindClosestReachablePoint__15CPathFindSearchCFRC9CVector3fR9CVector3f
/* 801DC6F4 001D9654  2C 03 00 00 */	cmpwi r3, 0
/* 801DC6F8 001D9658  40 82 00 48 */	bne lbl_801DC740
/* 801DC6FC 001D965C  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DC700 001D9660  7F A5 EB 78 */	mr r5, r29
/* 801DC704 001D9664  38 61 00 3C */	addi r3, r1, 0x3c
/* 801DC708 001D9668  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801DC70C 001D966C  38 DD 07 D8 */	addi r6, r29, 0x7d8
/* 801DC710 001D9670  4B F6 24 0D */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801DC714 001D9674  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 801DC718 001D9678  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 801DC71C 001D967C  48 00 00 24 */	b lbl_801DC740
lbl_801DC720:
/* 801DC720 001D9680  FC 20 E8 90 */	fmr f1, f29
/* 801DC724 001D9684  7F A3 EB 78 */	mr r3, r29
/* 801DC728 001D9688  7F C4 F3 78 */	mr r4, r30
/* 801DC72C 001D968C  38 A0 00 01 */	li r5, 1
/* 801DC730 001D9690  48 01 9F 9D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801DC734 001D9694  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801DC738 001D9698  C3 E3 00 04 */	lfs f31, 4(r3)
/* 801DC73C 001D969C  C3 C3 00 08 */	lfs f30, 8(r3)
lbl_801DC740:
/* 801DC740 001D96A0  FC 20 F8 90 */	fmr f1, f31
/* 801DC744 001D96A4  38 61 00 18 */	addi r3, r1, 0x18
/* 801DC748 001D96A8  FC 40 F0 90 */	fmr f2, f30
/* 801DC74C 001D96AC  48 13 7A B5 */	bl __ct__9CVector2fFff
/* 801DC750 001D96B0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801DC754 001D96B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801DC758 001D96B8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801DC75C 001D96BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DC760 001D96C0  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801DC764 001D96C4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801DC768 001D96C8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801DC76C 001D96CC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801DC770 001D96D0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801DC774 001D96D4  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801DC778 001D96D8  88 1D 08 D4 */	lbz r0, 0x8d4(r29)
/* 801DC77C 001D96DC  28 00 00 00 */	cmplwi r0, 0
/* 801DC780 001D96E0  41 82 00 1C */	beq lbl_801DC79C
/* 801DC784 001D96E4  41 82 00 60 */	beq lbl_801DC7E4
/* 801DC788 001D96E8  38 7D 07 F0 */	addi r3, r29, 0x7f0
/* 801DC78C 001D96EC  38 81 00 54 */	addi r4, r1, 0x54
/* 801DC790 001D96F0  4B FE A3 A5 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 801DC794 001D96F4  2C 03 00 00 */	cmpwi r3, 0
/* 801DC798 001D96F8  41 82 00 4C */	beq lbl_801DC7E4
lbl_801DC79C:
/* 801DC79C 001D96FC  7F A4 EB 78 */	mr r4, r29
/* 801DC7A0 001D9700  7F C5 F3 78 */	mr r5, r30
/* 801DC7A4 001D9704  38 61 00 10 */	addi r3, r1, 0x10
/* 801DC7A8 001D9708  4B FF E4 89 */	bl sub_801dac30
/* 801DC7AC 001D970C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801DC7B0 001D9710  38 61 00 20 */	addi r3, r1, 0x20
/* 801DC7B4 001D9714  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801DC7B8 001D9718  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DC7BC 001D971C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801DC7C0 001D9720  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801DC7C4 001D9724  48 13 77 45 */	bl __eq__FRC9CVector2fRC9CVector2f
/* 801DC7C8 001D9728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC7CC 001D972C  40 82 00 18 */	bne lbl_801DC7E4
/* 801DC7D0 001D9730  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801DC7D4 001D9734  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801DC7D8 001D9738  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801DC7DC 001D973C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801DC7E0 001D9740  48 00 00 60 */	b lbl_801DC840
lbl_801DC7E4:
/* 801DC7E4 001D9744  38 61 00 28 */	addi r3, r1, 0x28
/* 801DC7E8 001D9748  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DC7EC 001D974C  48 13 77 1D */	bl __eq__FRC9CVector2fRC9CVector2f
/* 801DC7F0 001D9750  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC7F4 001D9754  41 82 00 3C */	beq lbl_801DC830
/* 801DC7F8 001D9758  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DC7FC 001D975C  7F A5 EB 78 */	mr r5, r29
/* 801DC800 001D9760  38 61 00 30 */	addi r3, r1, 0x30
/* 801DC804 001D9764  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801DC808 001D9768  38 DD 07 D8 */	addi r6, r29, 0x7d8
/* 801DC80C 001D976C  4B F6 23 11 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801DC810 001D9770  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 801DC814 001D9774  38 61 00 08 */	addi r3, r1, 8
/* 801DC818 001D9778  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801DC81C 001D977C  48 13 79 E5 */	bl __ct__9CVector2fFff
/* 801DC820 001D9780  C0 21 00 08 */	lfs f1, 8(r1)
/* 801DC824 001D9784  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801DC828 001D9788  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801DC82C 001D978C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_801DC830:
/* 801DC830 001D9790  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801DC834 001D9794  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801DC838 001D9798  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801DC83C 001D979C  D0 1C 00 04 */	stfs f0, 4(r28)
lbl_801DC840:
/* 801DC840 001D97A0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 801DC844 001D97A4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801DC848 001D97A8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 801DC84C 001D97AC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 801DC850 001D97B0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 801DC854 001D97B4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 801DC858 001D97B8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801DC85C 001D97BC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801DC860 001D97C0  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801DC864 001D97C4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801DC868 001D97C8  83 81 00 70 */	lwz r28, 0x70(r1)
/* 801DC86C 001D97CC  7C 08 03 A6 */	mtlr r0
/* 801DC870 001D97D0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801DC874 001D97D4  4E 80 00 20 */	blr

.global sub_801dc878
sub_801dc878:
/* 801DC878 001D97D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC87C 001D97DC  7C 08 02 A6 */	mflr r0
/* 801DC880 001D97E0  3C A0 80 3D */	lis r5, lbl_803D1CB8@ha
/* 801DC884 001D97E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC888 001D97E8  38 A5 1C B8 */	addi r5, r5, lbl_803D1CB8@l
/* 801DC88C 001D97EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC890 001D97F0  7C 9F 23 78 */	mr r31, r4
/* 801DC894 001D97F4  38 85 01 96 */	addi r4, r5, 0x196
/* 801DC898 001D97F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DC89C 001D97FC  7C 7E 1B 78 */	mr r30, r3
/* 801DC8A0 001D9800  38 61 00 08 */	addi r3, r1, 8
/* 801DC8A4 001D9804  4B E2 84 15 */	bl string_l__4rstlFPCc
/* 801DC8A8 001D9808  7F C3 F3 78 */	mr r3, r30
/* 801DC8AC 001D980C  4B EC 60 4D */	bl GetStateMachine__3CAiFv
/* 801DC8B0 001D9810  7C 66 1B 78 */	mr r6, r3
/* 801DC8B4 001D9814  7F E4 FB 78 */	mr r4, r31
/* 801DC8B8 001D9818  7F C5 F3 78 */	mr r5, r30
/* 801DC8BC 001D981C  38 7E 03 30 */	addi r3, r30, 0x330
/* 801DC8C0 001D9820  38 E1 00 08 */	addi r7, r1, 8
/* 801DC8C4 001D9824  4B EA 33 41 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC8C8 001D9828  38 61 00 08 */	addi r3, r1, 8
/* 801DC8CC 001D982C  48 16 12 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC8D0 001D9830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC8D4 001D9834  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC8D8 001D9838  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DC8DC 001D983C  7C 08 03 A6 */	mtlr r0
/* 801DC8E0 001D9840  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC8E4 001D9844  4E 80 00 20 */	blr

.global sub_801dc8e8
sub_801dc8e8:
/* 801DC8E8 001D9848  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC8EC 001D984C  7C 08 02 A6 */	mflr r0
/* 801DC8F0 001D9850  3C A0 80 3D */	lis r5, lbl_803D1CB8@ha
/* 801DC8F4 001D9854  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC8F8 001D9858  38 A5 1C B8 */	addi r5, r5, lbl_803D1CB8@l
/* 801DC8FC 001D985C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC900 001D9860  7C 9F 23 78 */	mr r31, r4
/* 801DC904 001D9864  38 85 01 9B */	addi r4, r5, 0x19b
/* 801DC908 001D9868  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DC90C 001D986C  7C 7E 1B 78 */	mr r30, r3
/* 801DC910 001D9870  38 61 00 08 */	addi r3, r1, 8
/* 801DC914 001D9874  4B E2 83 A5 */	bl string_l__4rstlFPCc
/* 801DC918 001D9878  7F C3 F3 78 */	mr r3, r30
/* 801DC91C 001D987C  4B EC 5F DD */	bl GetStateMachine__3CAiFv
/* 801DC920 001D9880  7C 66 1B 78 */	mr r6, r3
/* 801DC924 001D9884  7F E4 FB 78 */	mr r4, r31
/* 801DC928 001D9888  7F C5 F3 78 */	mr r5, r30
/* 801DC92C 001D988C  38 7E 03 30 */	addi r3, r30, 0x330
/* 801DC930 001D9890  38 E1 00 08 */	addi r7, r1, 8
/* 801DC934 001D9894  4B EA 32 D1 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC938 001D9898  38 61 00 08 */	addi r3, r1, 8
/* 801DC93C 001D989C  48 16 11 A5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC940 001D98A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC944 001D98A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC948 001D98A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DC94C 001D98AC  7C 08 03 A6 */	mtlr r0
/* 801DC950 001D98B0  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC954 001D98B4  4E 80 00 20 */	blr

.global sub_801dc958
sub_801dc958:
/* 801DC958 001D98B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC95C 001D98BC  7C 08 02 A6 */	mflr r0
/* 801DC960 001D98C0  3C A0 80 3D */	lis r5, lbl_803D1CB8@ha
/* 801DC964 001D98C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC968 001D98C8  38 A5 1C B8 */	addi r5, r5, lbl_803D1CB8@l
/* 801DC96C 001D98CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC970 001D98D0  7C 9F 23 78 */	mr r31, r4
/* 801DC974 001D98D4  38 85 01 A6 */	addi r4, r5, 0x1a6
/* 801DC978 001D98D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DC97C 001D98DC  7C 7E 1B 78 */	mr r30, r3
/* 801DC980 001D98E0  38 61 00 08 */	addi r3, r1, 8
/* 801DC984 001D98E4  4B E2 83 35 */	bl string_l__4rstlFPCc
/* 801DC988 001D98E8  7F C3 F3 78 */	mr r3, r30
/* 801DC98C 001D98EC  4B EC 5F 6D */	bl GetStateMachine__3CAiFv
/* 801DC990 001D98F0  7C 66 1B 78 */	mr r6, r3
/* 801DC994 001D98F4  7F E4 FB 78 */	mr r4, r31
/* 801DC998 001D98F8  7F C5 F3 78 */	mr r5, r30
/* 801DC99C 001D98FC  38 7E 03 30 */	addi r3, r30, 0x330
/* 801DC9A0 001D9900  38 E1 00 08 */	addi r7, r1, 8
/* 801DC9A4 001D9904  4B EA 32 61 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DC9A8 001D9908  38 61 00 08 */	addi r3, r1, 8
/* 801DC9AC 001D990C  48 16 11 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DC9B0 001D9910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DC9B4 001D9914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DC9B8 001D9918  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DC9BC 001D991C  7C 08 03 A6 */	mtlr r0
/* 801DC9C0 001D9920  38 21 00 20 */	addi r1, r1, 0x20
/* 801DC9C4 001D9924  4E 80 00 20 */	blr

.global sub_801dc9c8
sub_801dc9c8:
/* 801DC9C8 001D9928  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DC9CC 001D992C  7C 08 02 A6 */	mflr r0
/* 801DC9D0 001D9930  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DC9D4 001D9934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DC9D8 001D9938  7C 9F 23 78 */	mr r31, r4
/* 801DC9DC 001D993C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DC9E0 001D9940  7C 7E 1B 78 */	mr r30, r3
/* 801DC9E4 001D9944  80 03 06 44 */	lwz r0, 0x644(r3)
/* 801DC9E8 001D9948  2C 00 00 01 */	cmpwi r0, 1
/* 801DC9EC 001D994C  41 82 00 40 */	beq lbl_801DCA2C
/* 801DC9F0 001D9950  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DC9F4 001D9954  38 61 00 08 */	addi r3, r1, 8
/* 801DC9F8 001D9958  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DC9FC 001D995C  38 84 01 AD */	addi r4, r4, 0x1ad
/* 801DCA00 001D9960  4B E2 82 B9 */	bl string_l__4rstlFPCc
/* 801DCA04 001D9964  7F C3 F3 78 */	mr r3, r30
/* 801DCA08 001D9968  4B EC 5E F1 */	bl GetStateMachine__3CAiFv
/* 801DCA0C 001D996C  7C 66 1B 78 */	mr r6, r3
/* 801DCA10 001D9970  7F E4 FB 78 */	mr r4, r31
/* 801DCA14 001D9974  7F C5 F3 78 */	mr r5, r30
/* 801DCA18 001D9978  38 7E 03 30 */	addi r3, r30, 0x330
/* 801DCA1C 001D997C  38 E1 00 08 */	addi r7, r1, 8
/* 801DCA20 001D9980  4B EA 31 E5 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DCA24 001D9984  38 61 00 08 */	addi r3, r1, 8
/* 801DCA28 001D9988  48 16 10 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DCA2C:
/* 801DCA2C 001D998C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCA30 001D9990  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DCA34 001D9994  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DCA38 001D9998  7C 08 03 A6 */	mtlr r0
/* 801DCA3C 001D999C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCA40 001D99A0  4E 80 00 20 */	blr

.global AggressionCheck__8CThardusFR13CStateManagerf
AggressionCheck__8CThardusFR13CStateManagerf:
/* 801DCA44 001D99A4  C0 23 03 38 */	lfs f1, 0x338(r3)
/* 801DCA48 001D99A8  C0 02 AC E8 */	lfs f0, lbl_805ACA08@sda21(r2)
/* 801DCA4C 001D99AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DCA50 001D99B0  7C 00 00 26 */	mfcr r0
/* 801DCA54 001D99B4  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801DCA58 001D99B8  4E 80 00 20 */	blr

.global Shuffle__8CThardusFR13CStateManager9EStateMsgf
Shuffle__8CThardusFR13CStateManager9EStateMsgf:
/* 801DCA5C 001D99BC  4E 80 00 20 */	blr

.global Enraged__8CThardusFR13CStateManager9EStateMsgf
Enraged__8CThardusFR13CStateManager9EStateMsgf:
/* 801DCA60 001D99C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCA64 001D99C4  7C 08 02 A6 */	mflr r0
/* 801DCA68 001D99C8  2C 05 00 01 */	cmpwi r5, 1
/* 801DCA6C 001D99CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCA70 001D99D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DCA74 001D99D4  41 82 00 38 */	beq lbl_801DCAAC
/* 801DCA78 001D99D8  40 80 00 10 */	bge lbl_801DCA88
/* 801DCA7C 001D99DC  2C 05 00 00 */	cmpwi r5, 0
/* 801DCA80 001D99E0  40 80 00 14 */	bge lbl_801DCA94
/* 801DCA84 001D99E4  48 00 00 F4 */	b lbl_801DCB78
lbl_801DCA88:
/* 801DCA88 001D99E8  2C 05 00 03 */	cmpwi r5, 3
/* 801DCA8C 001D99EC  40 80 00 EC */	bge lbl_801DCB78
/* 801DCA90 001D99F0  48 00 00 E0 */	b lbl_801DCB70
lbl_801DCA94:
/* 801DCA94 001D99F4  38 80 00 00 */	li r4, 0
/* 801DCA98 001D99F8  38 00 00 01 */	li r0, 1
/* 801DCA9C 001D99FC  90 83 05 EC */	stw r4, 0x5ec(r3)
/* 801DCAA0 001D9A00  98 03 06 88 */	stb r0, 0x688(r3)
/* 801DCAA4 001D9A04  98 03 09 08 */	stb r0, 0x908(r3)
/* 801DCAA8 001D9A08  48 00 00 D0 */	b lbl_801DCB78
lbl_801DCAAC:
/* 801DCAAC 001D9A0C  80 03 05 EC */	lwz r0, 0x5ec(r3)
/* 801DCAB0 001D9A10  2C 00 00 01 */	cmpwi r0, 1
/* 801DCAB4 001D9A14  41 82 00 C4 */	beq lbl_801DCB78
/* 801DCAB8 001D9A18  40 80 00 10 */	bge lbl_801DCAC8
/* 801DCABC 001D9A1C  2C 00 00 00 */	cmpwi r0, 0
/* 801DCAC0 001D9A20  40 80 00 14 */	bge lbl_801DCAD4
/* 801DCAC4 001D9A24  48 00 00 B4 */	b lbl_801DCB78
lbl_801DCAC8:
/* 801DCAC8 001D9A28  2C 00 00 03 */	cmpwi r0, 3
/* 801DCACC 001D9A2C  40 80 00 AC */	bge lbl_801DCB78
/* 801DCAD0 001D9A30  48 00 00 84 */	b lbl_801DCB54
lbl_801DCAD4:
/* 801DCAD4 001D9A34  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 801DCAD8 001D9A38  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801DCADC 001D9A3C  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DCAE0 001D9A40  40 82 00 10 */	bne lbl_801DCAF0
/* 801DCAE4 001D9A44  38 00 00 02 */	li r0, 2
/* 801DCAE8 001D9A48  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DCAEC 001D9A4C  48 00 00 8C */	b lbl_801DCB78
lbl_801DCAF0:
/* 801DCAF0 001D9A50  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DCAF4 001D9A54  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DCAF8 001D9A58  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801DCAFC 001D9A5C  38 80 00 12 */	li r4, 0x12
/* 801DCB00 001D9A60  90 01 00 08 */	stw r0, 8(r1)
/* 801DCB04 001D9A64  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801DCB08 001D9A68  38 00 00 00 */	li r0, 0
/* 801DCB0C 001D9A6C  3B E6 00 04 */	addi r31, r6, 4
/* 801DCB10 001D9A70  90 81 00 0C */	stw r4, 0xc(r1)
/* 801DCB14 001D9A74  7F E3 FB 78 */	mr r3, r31
/* 801DCB18 001D9A78  38 80 00 12 */	li r4, 0x12
/* 801DCB1C 001D9A7C  90 A1 00 08 */	stw r5, 8(r1)
/* 801DCB20 001D9A80  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DCB24 001D9A84  4B F5 49 15 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DCB28 001D9A88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DCB2C 001D9A8C  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DCB30 001D9A90  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 801DCB34 001D9A94  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DCB38 001D9A98  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801DCB3C 001D9A9C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DCB40 001D9AA0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DCB44 001D9AA4  90 81 00 08 */	stw r4, 8(r1)
/* 801DCB48 001D9AA8  90 7F 02 18 */	stw r3, 0x218(r31)
/* 801DCB4C 001D9AAC  90 01 00 08 */	stw r0, 8(r1)
/* 801DCB50 001D9AB0  48 00 00 28 */	b lbl_801DCB78
lbl_801DCB54:
/* 801DCB54 001D9AB4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801DCB58 001D9AB8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801DCB5C 001D9ABC  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DCB60 001D9AC0  41 82 00 18 */	beq lbl_801DCB78
/* 801DCB64 001D9AC4  38 00 00 03 */	li r0, 3
/* 801DCB68 001D9AC8  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DCB6C 001D9ACC  48 00 00 0C */	b lbl_801DCB78
lbl_801DCB70:
/* 801DCB70 001D9AD0  38 00 00 00 */	li r0, 0
/* 801DCB74 001D9AD4  98 03 09 08 */	stb r0, 0x908(r3)
lbl_801DCB78:
/* 801DCB78 001D9AD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCB7C 001D9ADC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DCB80 001D9AE0  7C 08 03 A6 */	mtlr r0
/* 801DCB84 001D9AE4  38 21 00 20 */	addi r1, r1, 0x20
/* 801DCB88 001D9AE8  4E 80 00 20 */	blr

.global Growth__8CThardusFR13CStateManager9EStateMsgf
Growth__8CThardusFR13CStateManager9EStateMsgf:
/* 801DCB8C 001D9AEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801DCB90 001D9AF0  7C 08 02 A6 */	mflr r0
/* 801DCB94 001D9AF4  2C 05 00 01 */	cmpwi r5, 1
/* 801DCB98 001D9AF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DCB9C 001D9AFC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801DCBA0 001D9B00  7C 9F 23 78 */	mr r31, r4
/* 801DCBA4 001D9B04  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801DCBA8 001D9B08  7C 7E 1B 78 */	mr r30, r3
/* 801DCBAC 001D9B0C  41 82 00 58 */	beq lbl_801DCC04
/* 801DCBB0 001D9B10  40 80 00 10 */	bge lbl_801DCBC0
/* 801DCBB4 001D9B14  2C 05 00 00 */	cmpwi r5, 0
/* 801DCBB8 001D9B18  40 80 00 14 */	bge lbl_801DCBCC
/* 801DCBBC 001D9B1C  48 00 01 A0 */	b lbl_801DCD5C
lbl_801DCBC0:
/* 801DCBC0 001D9B20  2C 05 00 03 */	cmpwi r5, 3
/* 801DCBC4 001D9B24  40 80 01 98 */	bge lbl_801DCD5C
/* 801DCBC8 001D9B28  48 00 01 10 */	b lbl_801DCCD8
lbl_801DCBCC:
/* 801DCBCC 001D9B2C  38 00 00 00 */	li r0, 0
/* 801DCBD0 001D9B30  A9 02 C5 FA */	lha r8, lbl_805AE31A@sda21(r2)
/* 801DCBD4 001D9B34  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DCBD8 001D9B38  38 61 00 24 */	addi r3, r1, 0x24
/* 801DCBDC 001D9B3C  81 42 C6 00 */	lwz r10, lbl_805AE320@sda21(r2)
/* 801DCBE0 001D9B40  38 80 07 AD */	li r4, 0x7ad
/* 801DCBE4 001D9B44  38 A0 00 7F */	li r5, 0x7f
/* 801DCBE8 001D9B48  38 C0 00 40 */	li r6, 0x40
/* 801DCBEC 001D9B4C  38 E0 00 00 */	li r7, 0
/* 801DCBF0 001D9B50  39 20 00 01 */	li r9, 1
/* 801DCBF4 001D9B54  48 10 D1 81 */	bl SfxStart__11CSfxManagerFUsssbsbi
/* 801DCBF8 001D9B58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DCBFC 001D9B5C  90 1E 09 04 */	stw r0, 0x904(r30)
/* 801DCC00 001D9B60  48 00 01 5C */	b lbl_801DCD5C
lbl_801DCC04:
/* 801DCC04 001D9B64  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DCC08 001D9B68  2C 00 00 01 */	cmpwi r0, 1
/* 801DCC0C 001D9B6C  41 82 01 50 */	beq lbl_801DCD5C
/* 801DCC10 001D9B70  40 80 00 10 */	bge lbl_801DCC20
/* 801DCC14 001D9B74  2C 00 00 00 */	cmpwi r0, 0
/* 801DCC18 001D9B78  40 80 00 14 */	bge lbl_801DCC2C
/* 801DCC1C 001D9B7C  48 00 01 40 */	b lbl_801DCD5C
lbl_801DCC20:
/* 801DCC20 001D9B80  2C 00 00 03 */	cmpwi r0, 3
/* 801DCC24 001D9B84  40 80 01 38 */	bge lbl_801DCD5C
/* 801DCC28 001D9B88  48 00 00 94 */	b lbl_801DCCBC
lbl_801DCC2C:
/* 801DCC2C 001D9B8C  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 801DCC30 001D9B90  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 801DCC34 001D9B94  2C 00 00 03 */	cmpwi r0, 3
/* 801DCC38 001D9B98  40 82 00 10 */	bne lbl_801DCC48
/* 801DCC3C 001D9B9C  38 00 00 02 */	li r0, 2
/* 801DCC40 001D9BA0  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DCC44 001D9BA4  48 00 01 18 */	b lbl_801DCD5C
lbl_801DCC48:
/* 801DCC48 001D9BA8  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DCC4C 001D9BAC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801DCC50 001D9BB0  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801DCC54 001D9BB4  38 80 00 01 */	li r4, 1
/* 801DCC58 001D9BB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DCC5C 001D9BBC  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 801DCC60 001D9BC0  38 A0 00 00 */	li r5, 0
/* 801DCC64 001D9BC4  38 00 00 02 */	li r0, 2
/* 801DCC68 001D9BC8  3B E7 00 04 */	addi r31, r7, 4
/* 801DCC6C 001D9BCC  90 81 00 38 */	stw r4, 0x38(r1)
/* 801DCC70 001D9BD0  7F E3 FB 78 */	mr r3, r31
/* 801DCC74 001D9BD4  38 80 00 01 */	li r4, 1
/* 801DCC78 001D9BD8  90 C1 00 34 */	stw r6, 0x34(r1)
/* 801DCC7C 001D9BDC  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 801DCC80 001D9BE0  90 01 00 40 */	stw r0, 0x40(r1)
/* 801DCC84 001D9BE4  4B F5 47 B5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DCC88 001D9BE8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801DCC8C 001D9BEC  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801DCC90 001D9BF0  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801DCC94 001D9BF4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DCC98 001D9BF8  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DCC9C 001D9BFC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DCCA0 001D9C00  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 801DCCA4 001D9C04  90 81 00 34 */	stw r4, 0x34(r1)
/* 801DCCA8 001D9C08  80 61 00 40 */	lwz r3, 0x40(r1)
/* 801DCCAC 001D9C0C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 801DCCB0 001D9C10  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 801DCCB4 001D9C14  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DCCB8 001D9C18  48 00 00 A4 */	b lbl_801DCD5C
lbl_801DCCBC:
/* 801DCCBC 001D9C1C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DCCC0 001D9C20  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DCCC4 001D9C24  2C 00 00 03 */	cmpwi r0, 3
/* 801DCCC8 001D9C28  41 82 00 94 */	beq lbl_801DCD5C
/* 801DCCCC 001D9C2C  38 00 00 03 */	li r0, 3
/* 801DCCD0 001D9C30  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DCCD4 001D9C34  48 00 00 88 */	b lbl_801DCD5C
lbl_801DCCD8:
/* 801DCCD8 001D9C38  A0 1E 06 4C */	lhz r0, 0x64c(r30)
/* 801DCCDC 001D9C3C  7F E3 FB 78 */	mr r3, r31
/* 801DCCE0 001D9C40  38 81 00 18 */	addi r4, r1, 0x18
/* 801DCCE4 001D9C44  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DCCE8 001D9C48  4B E6 F8 8D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DCCEC 001D9C4C  7C 64 1B 78 */	mr r4, r3
/* 801DCCF0 001D9C50  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DCCF4 001D9C54  4B EC DA 25 */	bl "__ct__32TCastToPtr<18CScriptDistanceFog>FP7CEntity"
/* 801DCCF8 001D9C58  80 C3 00 04 */	lwz r6, 4(r3)
/* 801DCCFC 001D9C5C  7F E4 FB 78 */	mr r4, r31
/* 801DCD00 001D9C60  38 61 00 20 */	addi r3, r1, 0x20
/* 801DCD04 001D9C64  38 A1 00 14 */	addi r5, r1, 0x14
/* 801DCD08 001D9C68  A0 06 00 08 */	lhz r0, 8(r6)
/* 801DCD0C 001D9C6C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DCD10 001D9C70  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DCD14 001D9C74  4B E6 B1 AD */	bl GetEditorIdForUniqueId__13CStateManagerCF9TUniqueId
/* 801DCD18 001D9C78  81 01 00 20 */	lwz r8, 0x20(r1)
/* 801DCD1C 001D9C7C  7F E3 FB 78 */	mr r3, r31
/* 801DCD20 001D9C80  38 81 00 0C */	addi r4, r1, 0xc
/* 801DCD24 001D9C84  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801DCD28 001D9C88  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801DCD2C 001D9C8C  38 C0 00 01 */	li r6, 1
/* 801DCD30 001D9C90  38 E0 FF FF */	li r7, -1
/* 801DCD34 001D9C94  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801DCD38 001D9C98  91 01 00 28 */	stw r8, 0x28(r1)
/* 801DCD3C 001D9C9C  B0 01 00 08 */	sth r0, 8(r1)
/* 801DCD40 001D9CA0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DCD44 001D9CA4  4B E6 AD F9 */	bl SendScriptMsg__13CStateManagerF9TUniqueId9TEditorId20EScriptObjectMessage18EScriptObjectState
/* 801DCD48 001D9CA8  7F C3 F3 78 */	mr r3, r30
/* 801DCD4C 001D9CAC  7F E5 FB 78 */	mr r5, r31
/* 801DCD50 001D9CB0  38 80 00 12 */	li r4, 0x12
/* 801DCD54 001D9CB4  38 C0 FF FF */	li r6, -1
/* 801DCD58 001D9CB8  4B E7 43 69 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_801DCD5C:
/* 801DCD5C 001D9CBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801DCD60 001D9CC0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801DCD64 001D9CC4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801DCD68 001D9CC8  7C 08 03 A6 */	mtlr r0
/* 801DCD6C 001D9CCC  38 21 00 50 */	addi r1, r1, 0x50
/* 801DCD70 001D9CD0  4E 80 00 20 */	blr

.global Flinch__8CThardusFR13CStateManager9EStateMsgf
Flinch__8CThardusFR13CStateManager9EStateMsgf:
/* 801DCD74 001D9CD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DCD78 001D9CD8  7C 08 02 A6 */	mflr r0
/* 801DCD7C 001D9CDC  2C 05 00 01 */	cmpwi r5, 1
/* 801DCD80 001D9CE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DCD84 001D9CE4  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 801DCD88 001D9CE8  7C 7F 1B 78 */	mr r31, r3
/* 801DCD8C 001D9CEC  7C 9B 23 78 */	mr r27, r4
/* 801DCD90 001D9CF0  41 82 00 A8 */	beq lbl_801DCE38
/* 801DCD94 001D9CF4  40 80 01 FC */	bge lbl_801DCF90
/* 801DCD98 001D9CF8  2C 05 00 00 */	cmpwi r5, 0
/* 801DCD9C 001D9CFC  40 80 00 0C */	bge lbl_801DCDA8
/* 801DCDA0 001D9D00  48 00 01 F0 */	b lbl_801DCF90
/* 801DCDA4 001D9D04  48 00 01 EC */	b lbl_801DCF90
lbl_801DCDA8:
/* 801DCDA8 001D9D08  3B C0 00 00 */	li r30, 0
/* 801DCDAC 001D9D0C  3B 80 00 00 */	li r28, 0
/* 801DCDB0 001D9D10  93 DF 05 EC */	stw r30, 0x5ec(r31)
/* 801DCDB4 001D9D14  83 BF 07 9C */	lwz r29, 0x79c(r31)
/* 801DCDB8 001D9D18  48 00 00 44 */	b lbl_801DCDFC
lbl_801DCDBC:
/* 801DCDBC 001D9D1C  80 BF 07 A4 */	lwz r5, 0x7a4(r31)
/* 801DCDC0 001D9D20  7F 63 DB 78 */	mr r3, r27
/* 801DCDC4 001D9D24  38 81 00 08 */	addi r4, r1, 8
/* 801DCDC8 001D9D28  7C 05 F2 2E */	lhzx r0, r5, r30
/* 801DCDCC 001D9D2C  B0 01 00 08 */	sth r0, 8(r1)
/* 801DCDD0 001D9D30  4B E6 F7 A5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DCDD4 001D9D34  7C 64 1B 78 */	mr r4, r3
/* 801DCDD8 001D9D38  38 61 00 0C */	addi r3, r1, 0xc
/* 801DCDDC 001D9D3C  4B EC 85 C1 */	bl sub_800a539c
/* 801DCDE0 001D9D40  4B EC 85 91 */	bl "CastTo<22CThardusRockProjectile>__10CPatternedFP7CEntity"
/* 801DCDE4 001D9D44  28 03 00 00 */	cmplwi r3, 0
/* 801DCDE8 001D9D48  41 82 00 0C */	beq lbl_801DCDF4
/* 801DCDEC 001D9D4C  7F 64 DB 78 */	mr r4, r27
/* 801DCDF0 001D9D50  48 02 6F 69 */	bl sub_80203d58
lbl_801DCDF4:
/* 801DCDF4 001D9D54  3B 9C 00 01 */	addi r28, r28, 1
/* 801DCDF8 001D9D58  3B DE 00 02 */	addi r30, r30, 2
lbl_801DCDFC:
/* 801DCDFC 001D9D5C  7C 1C E8 40 */	cmplw r28, r29
/* 801DCE00 001D9D60  41 80 FF BC */	blt lbl_801DCDBC
/* 801DCE04 001D9D64  38 C0 00 01 */	li r6, 1
/* 801DCE08 001D9D68  38 00 00 00 */	li r0, 0
/* 801DCE0C 001D9D6C  98 DF 09 3B */	stb r6, 0x93b(r31)
/* 801DCE10 001D9D70  7F E3 FB 78 */	mr r3, r31
/* 801DCE14 001D9D74  7F 65 DB 78 */	mr r5, r27
/* 801DCE18 001D9D78  38 80 FF FF */	li r4, -1
/* 801DCE1C 001D9D7C  98 DF 09 3D */	stb r6, 0x93d(r31)
/* 801DCE20 001D9D80  98 DF 09 09 */	stb r6, 0x909(r31)
/* 801DCE24 001D9D84  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 801DCE28 001D9D88  4B FF E7 39 */	bl sub_801db560
/* 801DCE2C 001D9D8C  38 00 00 01 */	li r0, 1
/* 801DCE30 001D9D90  98 1F 09 4D */	stb r0, 0x94d(r31)
/* 801DCE34 001D9D94  48 00 01 5C */	b lbl_801DCF90
lbl_801DCE38:
/* 801DCE38 001D9D98  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 801DCE3C 001D9D9C  38 E0 FF FF */	li r7, -1
/* 801DCE40 001D9DA0  2C 00 00 04 */	cmpwi r0, 4
/* 801DCE44 001D9DA4  41 82 00 48 */	beq lbl_801DCE8C
/* 801DCE48 001D9DA8  40 80 00 1C */	bge lbl_801DCE64
/* 801DCE4C 001D9DAC  2C 00 00 02 */	cmpwi r0, 2
/* 801DCE50 001D9DB0  41 82 00 2C */	beq lbl_801DCE7C
/* 801DCE54 001D9DB4  40 80 00 30 */	bge lbl_801DCE84
/* 801DCE58 001D9DB8  2C 00 00 01 */	cmpwi r0, 1
/* 801DCE5C 001D9DBC  40 80 00 18 */	bge lbl_801DCE74
/* 801DCE60 001D9DC0  48 00 00 40 */	b lbl_801DCEA0
lbl_801DCE64:
/* 801DCE64 001D9DC4  2C 00 00 06 */	cmpwi r0, 6
/* 801DCE68 001D9DC8  41 82 00 34 */	beq lbl_801DCE9C
/* 801DCE6C 001D9DCC  40 80 00 34 */	bge lbl_801DCEA0
/* 801DCE70 001D9DD0  48 00 00 24 */	b lbl_801DCE94
lbl_801DCE74:
/* 801DCE74 001D9DD4  38 E0 00 00 */	li r7, 0
/* 801DCE78 001D9DD8  48 00 00 28 */	b lbl_801DCEA0
lbl_801DCE7C:
/* 801DCE7C 001D9DDC  38 E0 00 01 */	li r7, 1
/* 801DCE80 001D9DE0  48 00 00 20 */	b lbl_801DCEA0
lbl_801DCE84:
/* 801DCE84 001D9DE4  38 E0 00 02 */	li r7, 2
/* 801DCE88 001D9DE8  48 00 00 18 */	b lbl_801DCEA0
lbl_801DCE8C:
/* 801DCE8C 001D9DEC  38 E0 00 03 */	li r7, 3
/* 801DCE90 001D9DF0  48 00 00 10 */	b lbl_801DCEA0
lbl_801DCE94:
/* 801DCE94 001D9DF4  38 E0 00 04 */	li r7, 4
/* 801DCE98 001D9DF8  48 00 00 08 */	b lbl_801DCEA0
lbl_801DCE9C:
/* 801DCE9C 001D9DFC  38 E0 00 05 */	li r7, 5
lbl_801DCEA0:
/* 801DCEA0 001D9E00  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 801DCEA4 001D9E04  2C 00 00 01 */	cmpwi r0, 1
/* 801DCEA8 001D9E08  41 82 00 E8 */	beq lbl_801DCF90
/* 801DCEAC 001D9E0C  40 80 00 10 */	bge lbl_801DCEBC
/* 801DCEB0 001D9E10  2C 00 00 00 */	cmpwi r0, 0
/* 801DCEB4 001D9E14  40 80 00 14 */	bge lbl_801DCEC8
/* 801DCEB8 001D9E18  48 00 00 D8 */	b lbl_801DCF90
lbl_801DCEBC:
/* 801DCEBC 001D9E1C  2C 00 00 03 */	cmpwi r0, 3
/* 801DCEC0 001D9E20  40 80 00 D0 */	bge lbl_801DCF90
/* 801DCEC4 001D9E24  48 00 00 B4 */	b lbl_801DCF78
lbl_801DCEC8:
/* 801DCEC8 001D9E28  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801DCECC 001D9E2C  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801DCED0 001D9E30  2C 00 00 06 */	cmpwi r0, 6
/* 801DCED4 001D9E34  40 82 00 10 */	bne lbl_801DCEE4
/* 801DCED8 001D9E38  38 00 00 02 */	li r0, 2
/* 801DCEDC 001D9E3C  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 801DCEE0 001D9E40  48 00 00 B0 */	b lbl_801DCF90
lbl_801DCEE4:
/* 801DCEE4 001D9E44  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801DCEE8 001D9E48  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DCEEC 001D9E4C  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801DCEF0 001D9E50  38 05 AA 68 */	addi r0, r5, lbl_803DAA68@l
/* 801DCEF4 001D9E54  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 801DCEF8 001D9E58  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DCEFC 001D9E5C  38 04 AA 44 */	addi r0, r4, lbl_803DAA44@l
/* 801DCF00 001D9E60  C0 23 00 04 */	lfs f1, 4(r3)
/* 801DCF04 001D9E64  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DCF08 001D9E68  38 A0 00 04 */	li r5, 4
/* 801DCF0C 001D9E6C  3B C6 00 04 */	addi r30, r6, 4
/* 801DCF10 001D9E70  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801DCF14 001D9E74  7F C3 F3 78 */	mr r3, r30
/* 801DCF18 001D9E78  38 80 00 04 */	li r4, 4
/* 801DCF1C 001D9E7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DCF20 001D9E80  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801DCF24 001D9E84  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801DCF28 001D9E88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801DCF2C 001D9E8C  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801DCF30 001D9E90  4B F5 45 09 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DCF34 001D9E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DCF38 001D9E98  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 801DCF3C 001D9E9C  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 801DCF40 001D9EA0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DCF44 001D9EA4  90 1E 00 F8 */	stw r0, 0xf8(r30)
/* 801DCF48 001D9EA8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DCF4C 001D9EAC  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801DCF50 001D9EB0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801DCF54 001D9EB4  90 BE 00 FC */	stw r5, 0xfc(r30)
/* 801DCF58 001D9EB8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801DCF5C 001D9EBC  90 7E 01 00 */	stw r3, 0x100(r30)
/* 801DCF60 001D9EC0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801DCF64 001D9EC4  90 BE 01 04 */	stw r5, 0x104(r30)
/* 801DCF68 001D9EC8  90 81 00 10 */	stw r4, 0x10(r1)
/* 801DCF6C 001D9ECC  90 7E 01 08 */	stw r3, 0x108(r30)
/* 801DCF70 001D9ED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DCF74 001D9ED4  48 00 00 1C */	b lbl_801DCF90
lbl_801DCF78:
/* 801DCF78 001D9ED8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801DCF7C 001D9EDC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DCF80 001D9EE0  2C 00 00 06 */	cmpwi r0, 6
/* 801DCF84 001D9EE4  41 82 00 0C */	beq lbl_801DCF90
/* 801DCF88 001D9EE8  38 00 00 03 */	li r0, 3
/* 801DCF8C 001D9EEC  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_801DCF90:
/* 801DCF90 001D9EF0  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 801DCF94 001D9EF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DCF98 001D9EF8  7C 08 03 A6 */	mtlr r0
/* 801DCF9C 001D9EFC  38 21 00 40 */	addi r1, r1, 0x40
/* 801DCFA0 001D9F00  4E 80 00 20 */	blr

.global sub_801dcfa4
sub_801dcfa4:
/* 801DCFA4 001D9F04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801DCFA8 001D9F08  7C 08 02 A6 */	mflr r0
/* 801DCFAC 001D9F0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 801DCFB0 001D9F10  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801DCFB4 001D9F14  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801DCFB8 001D9F18  BE E1 00 3C */	stmw r23, 0x3c(r1)
/* 801DCFBC 001D9F1C  7C 7A 1B 78 */	mr r26, r3
/* 801DCFC0 001D9F20  7C 9B 23 78 */	mr r27, r4
/* 801DCFC4 001D9F24  80 63 05 F0 */	lwz r3, 0x5f0(r3)
/* 801DCFC8 001D9F28  4B FC A2 81 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DCFCC 001D9F2C  7C 7F 1B 78 */	mr r31, r3
/* 801DCFD0 001D9F30  3B A0 00 00 */	li r29, 0
/* 801DCFD4 001D9F34  3B 20 00 00 */	li r25, 0
/* 801DCFD8 001D9F38  3B 00 00 00 */	li r24, 0
/* 801DCFDC 001D9F3C  48 00 02 EC */	b lbl_801DD2C8
lbl_801DCFE0:
/* 801DCFE0 001D9F40  80 7A 05 F0 */	lwz r3, 0x5f0(r26)
/* 801DCFE4 001D9F44  7F A4 EB 78 */	mr r4, r29
/* 801DCFE8 001D9F48  4B FC A2 51 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DCFEC 001D9F4C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801DCFF0 001D9F50  7F 63 DB 78 */	mr r3, r27
/* 801DCFF4 001D9F54  38 81 00 18 */	addi r4, r1, 0x18
/* 801DCFF8 001D9F58  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801DCFFC 001D9F5C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DD000 001D9F60  4B E6 F5 75 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD004 001D9F64  7C 64 1B 78 */	mr r4, r3
/* 801DD008 001D9F68  38 61 00 24 */	addi r3, r1, 0x24
/* 801DD00C 001D9F6C  4B ED 23 41 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801DD010 001D9F70  83 C3 00 04 */	lwz r30, 4(r3)
/* 801DD014 001D9F74  28 1E 00 00 */	cmplwi r30, 0
/* 801DD018 001D9F78  41 82 02 A4 */	beq lbl_801DD2BC
/* 801DD01C 001D9F7C  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 801DD020 001D9F80  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801DD024 001D9F84  41 82 02 98 */	beq lbl_801DD2BC
/* 801DD028 001D9F88  80 BA 06 1C */	lwz r5, 0x61c(r26)
/* 801DD02C 001D9F8C  7F 63 DB 78 */	mr r3, r27
/* 801DD030 001D9F90  38 81 00 14 */	addi r4, r1, 0x14
/* 801DD034 001D9F94  7C 05 C2 2E */	lhzx r0, r5, r24
/* 801DD038 001D9F98  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801DD03C 001D9F9C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DD040 001D9FA0  4B E6 F5 35 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD044 001D9FA4  7C 7C 1B 79 */	or. r28, r3, r3
/* 801DD048 001D9FA8  41 82 02 74 */	beq lbl_801DD2BC
/* 801DD04C 001D9FAC  88 1A 09 09 */	lbz r0, 0x909(r26)
/* 801DD050 001D9FB0  28 00 00 00 */	cmplwi r0, 0
/* 801DD054 001D9FB4  41 82 00 30 */	beq lbl_801DD084
/* 801DD058 001D9FB8  7F C3 F3 78 */	mr r3, r30
/* 801DD05C 001D9FBC  80 BA 09 18 */	lwz r5, 0x918(r26)
/* 801DD060 001D9FC0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DD064 001D9FC4  7F 64 DB 78 */	mr r4, r27
/* 801DD068 001D9FC8  7F E5 CC 2E */	lfsx f31, r5, r25
/* 801DD06C 001D9FCC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DD070 001D9FD0  7D 89 03 A6 */	mtctr r12
/* 801DD074 001D9FD4  4E 80 04 21 */	bctrl
/* 801DD078 001D9FD8  D3 E3 00 00 */	stfs f31, 0(r3)
/* 801DD07C 001D9FDC  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DD080 001D9FE0  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801DD084:
/* 801DD084 001D9FE4  80 1A 06 48 */	lwz r0, 0x648(r26)
/* 801DD088 001D9FE8  7C 1D 00 40 */	cmplw r29, r0
/* 801DD08C 001D9FEC  40 82 00 10 */	bne lbl_801DD09C
/* 801DD090 001D9FF0  88 1A 09 3D */	lbz r0, 0x93d(r26)
/* 801DD094 001D9FF4  28 00 00 00 */	cmplwi r0, 0
/* 801DD098 001D9FF8  41 82 00 20 */	beq lbl_801DD0B8
lbl_801DD09C:
/* 801DD09C 001D9FFC  3C 80 80 57 */	lis r4, lbl_8056D718@ha
/* 801DD0A0 001DA000  7F C3 F3 78 */	mr r3, r30
/* 801DD0A4 001DA004  38 84 D7 18 */	addi r4, r4, lbl_8056D718@l
/* 801DD0A8 001DA008  4B FC BA F1 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801DD0AC 001DA00C  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DD0B0 001DA010  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801DD0B4 001DA014  48 00 00 2C */	b lbl_801DD0E0
lbl_801DD0B8:
/* 801DD0B8 001DA018  7F 83 E3 78 */	mr r3, r28
/* 801DD0BC 001DA01C  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DD0C0 001DA020  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801DD0C4 001DA024  7D 89 03 A6 */	mtctr r12
/* 801DD0C8 001DA028  4E 80 04 21 */	bctrl
/* 801DD0CC 001DA02C  7C 64 1B 78 */	mr r4, r3
/* 801DD0D0 001DA030  7F C3 F3 78 */	mr r3, r30
/* 801DD0D4 001DA034  4B FC BA C5 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801DD0D8 001DA038  C0 02 AD 14 */	lfs f0, lbl_805ACA34@sda21(r2)
/* 801DD0DC 001DA03C  D0 1C 03 2C */	stfs f0, 0x32c(r28)
lbl_801DD0E0:
/* 801DD0E0 001DA040  7F C3 F3 78 */	mr r3, r30
/* 801DD0E4 001DA044  7F 64 DB 78 */	mr r4, r27
/* 801DD0E8 001DA048  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DD0EC 001DA04C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DD0F0 001DA050  7D 89 03 A6 */	mtctr r12
/* 801DD0F4 001DA054  4E 80 04 21 */	bctrl
/* 801DD0F8 001DA058  7C 77 1B 79 */	or. r23, r3, r3
/* 801DD0FC 001DA05C  41 82 01 C0 */	beq lbl_801DD2BC
/* 801DD100 001DA060  C0 37 00 00 */	lfs f1, 0(r23)
/* 801DD104 001DA064  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DD108 001DA068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DD10C 001DA06C  4C 40 13 82 */	cror 2, 0, 2
/* 801DD110 001DA070  40 82 01 6C */	bne lbl_801DD27C
/* 801DD114 001DA074  88 1C 03 35 */	lbz r0, 0x335(r28)
/* 801DD118 001DA078  28 00 00 00 */	cmplwi r0, 0
/* 801DD11C 001DA07C  41 82 01 40 */	beq lbl_801DD25C
/* 801DD120 001DA080  7F 83 E3 78 */	mr r3, r28
/* 801DD124 001DA084  38 80 00 00 */	li r4, 0
/* 801DD128 001DA088  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DD12C 001DA08C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DD130 001DA090  7D 89 03 A6 */	mtctr r12
/* 801DD134 001DA094  4E 80 04 21 */	bctrl
/* 801DD138 001DA098  7F C3 F3 78 */	mr r3, r30
/* 801DD13C 001DA09C  38 80 00 00 */	li r4, 0
/* 801DD140 001DA0A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DD144 001DA0A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DD148 001DA0A8  7D 89 03 A6 */	mtctr r12
/* 801DD14C 001DA0AC  4E 80 04 21 */	bctrl
/* 801DD150 001DA0B0  80 BA 06 CC */	lwz r5, 0x6cc(r26)
/* 801DD154 001DA0B4  7F 63 DB 78 */	mr r3, r27
/* 801DD158 001DA0B8  38 81 00 10 */	addi r4, r1, 0x10
/* 801DD15C 001DA0BC  7C 05 C2 2E */	lhzx r0, r5, r24
/* 801DD160 001DA0C0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DD164 001DA0C4  4B E6 F4 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD168 001DA0C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD16C 001DA0CC  38 80 00 00 */	li r4, 0
/* 801DD170 001DA0D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DD174 001DA0D4  7D 89 03 A6 */	mtctr r12
/* 801DD178 001DA0D8  4E 80 04 21 */	bctrl
/* 801DD17C 001DA0DC  80 BA 06 48 */	lwz r5, 0x648(r26)
/* 801DD180 001DA0E0  7F 43 D3 78 */	mr r3, r26
/* 801DD184 001DA0E4  7F 64 DB 78 */	mr r4, r27
/* 801DD188 001DA0E8  38 05 00 01 */	addi r0, r5, 1
/* 801DD18C 001DA0EC  90 1A 06 48 */	stw r0, 0x648(r26)
/* 801DD190 001DA0F0  4B FF F7 C9 */	bl sub_801dc958
/* 801DD194 001DA0F4  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801DD198 001DA0F8  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 801DD19C 001DA0FC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801DD1A0 001DA100  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DD1A4 001DA104  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801DD1A8 001DA108  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801DD1AC 001DA10C  80 7B 08 B8 */	lwz r3, 0x8b8(r27)
/* 801DD1B0 001DA110  80 63 00 00 */	lwz r3, 0(r3)
/* 801DD1B4 001DA114  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801DD1B8 001DA118  2C 00 00 03 */	cmpwi r0, 3
/* 801DD1BC 001DA11C  40 82 00 14 */	bne lbl_801DD1D0
/* 801DD1C0 001DA120  40 82 00 24 */	bne lbl_801DD1E4
/* 801DD1C4 001DA124  80 1A 07 C4 */	lwz r0, 0x7c4(r26)
/* 801DD1C8 001DA128  2C 00 00 03 */	cmpwi r0, 3
/* 801DD1CC 001DA12C  41 82 00 18 */	beq lbl_801DD1E4
lbl_801DD1D0:
/* 801DD1D0 001DA130  80 DA 06 D8 */	lwz r6, 0x6d8(r26)
/* 801DD1D4 001DA134  7F 43 D3 78 */	mr r3, r26
/* 801DD1D8 001DA138  7F 64 DB 78 */	mr r4, r27
/* 801DD1DC 001DA13C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801DD1E0 001DA140  4B FF F2 65 */	bl sub_801dc444
lbl_801DD1E4:
/* 801DD1E4 001DA144  93 61 00 08 */	stw r27, 8(r1)
/* 801DD1E8 001DA148  38 00 00 01 */	li r0, 1
/* 801DD1EC 001DA14C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DD1F0 001DA150  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801DD1F4 001DA154  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DD1F8 001DA158  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801DD1FC 001DA15C  C0 42 AC E8 */	lfs f2, lbl_805ACA08@sda21(r2)
/* 801DD200 001DA160  7F 43 D3 78 */	mr r3, r26
/* 801DD204 001DA164  80 9A 07 58 */	lwz r4, 0x758(r26)
/* 801DD208 001DA168  39 21 00 2C */	addi r9, r1, 0x2c
/* 801DD20C 001DA16C  C0 62 AC EC */	lfs f3, lbl_805ACA0C@sda21(r2)
/* 801DD210 001DA170  38 A0 00 00 */	li r5, 0
/* 801DD214 001DA174  81 5B 08 CC */	lwz r10, 0x8cc(r27)
/* 801DD218 001DA178  38 C0 00 14 */	li r6, 0x14
/* 801DD21C 001DA17C  38 E0 00 7F */	li r7, 0x7f
/* 801DD220 001DA180  4B E7 5D 11 */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
/* 801DD224 001DA184  7F 43 D3 78 */	mr r3, r26
/* 801DD228 001DA188  4B FF F0 A1 */	bl sub_801dc2c8
/* 801DD22C 001DA18C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DD230 001DA190  41 82 00 1C */	beq lbl_801DD24C
/* 801DD234 001DA194  88 1A 08 F0 */	lbz r0, 0x8f0(r26)
/* 801DD238 001DA198  28 00 00 00 */	cmplwi r0, 0
/* 801DD23C 001DA19C  40 82 00 10 */	bne lbl_801DD24C
/* 801DD240 001DA1A0  7F 43 D3 78 */	mr r3, r26
/* 801DD244 001DA1A4  7F 64 DB 78 */	mr r4, r27
/* 801DD248 001DA1A8  4B FF F6 A1 */	bl sub_801dc8e8
lbl_801DD24C:
/* 801DD24C 001DA1AC  7F 43 D3 78 */	mr r3, r26
/* 801DD250 001DA1B0  7F 64 DB 78 */	mr r4, r27
/* 801DD254 001DA1B4  4B FF E9 ED */	bl sub_801dbc40
/* 801DD258 001DA1B8  48 00 00 64 */	b lbl_801DD2BC
lbl_801DD25C:
/* 801DD25C 001DA1BC  7F 43 D3 78 */	mr r3, r26
/* 801DD260 001DA1C0  7F 64 DB 78 */	mr r4, r27
/* 801DD264 001DA1C4  7F A5 EB 78 */	mr r5, r29
/* 801DD268 001DA1C8  4B FF DB C5 */	bl sub_801dae2c
/* 801DD26C 001DA1CC  7F 43 D3 78 */	mr r3, r26
/* 801DD270 001DA1D0  7F 64 DB 78 */	mr r4, r27
/* 801DD274 001DA1D4  4B FF F7 55 */	bl sub_801dc9c8
/* 801DD278 001DA1D8  48 00 00 44 */	b lbl_801DD2BC
lbl_801DD27C:
/* 801DD27C 001DA1DC  7F 83 E3 78 */	mr r3, r28
/* 801DD280 001DA1E0  7F 64 DB 78 */	mr r4, r27
/* 801DD284 001DA1E4  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DD288 001DA1E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DD28C 001DA1EC  7D 89 03 A6 */	mtctr r12
/* 801DD290 001DA1F0  4E 80 04 21 */	bctrl
/* 801DD294 001DA1F4  C0 17 00 00 */	lfs f0, 0(r23)
/* 801DD298 001DA1F8  D0 03 00 00 */	stfs f0, 0(r3)
/* 801DD29C 001DA1FC  C0 17 00 04 */	lfs f0, 4(r23)
/* 801DD2A0 001DA200  D0 03 00 04 */	stfs f0, 4(r3)
/* 801DD2A4 001DA204  88 1A 09 09 */	lbz r0, 0x909(r26)
/* 801DD2A8 001DA208  28 00 00 00 */	cmplwi r0, 0
/* 801DD2AC 001DA20C  40 82 00 10 */	bne lbl_801DD2BC
/* 801DD2B0 001DA210  C0 17 00 00 */	lfs f0, 0(r23)
/* 801DD2B4 001DA214  80 7A 09 18 */	lwz r3, 0x918(r26)
/* 801DD2B8 001DA218  7C 03 CD 2E */	stfsx f0, r3, r25
lbl_801DD2BC:
/* 801DD2BC 001DA21C  3B BD 00 01 */	addi r29, r29, 1
/* 801DD2C0 001DA220  3B 39 00 04 */	addi r25, r25, 4
/* 801DD2C4 001DA224  3B 18 00 02 */	addi r24, r24, 2
lbl_801DD2C8:
/* 801DD2C8 001DA228  7C 1D F8 40 */	cmplw r29, r31
/* 801DD2CC 001DA22C  41 80 FD 14 */	blt lbl_801DCFE0
/* 801DD2D0 001DA230  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801DD2D4 001DA234  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801DD2D8 001DA238  BA E1 00 3C */	lmw r23, 0x3c(r1)
/* 801DD2DC 001DA23C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801DD2E0 001DA240  7C 08 03 A6 */	mtlr r0
/* 801DD2E4 001DA244  38 21 00 70 */	addi r1, r1, 0x70
/* 801DD2E8 001DA248  4E 80 00 20 */	blr

.global sub_801dd2ec
sub_801dd2ec:
/* 801DD2EC 001DA24C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DD2F0 001DA250  7C 08 02 A6 */	mflr r0
/* 801DD2F4 001DA254  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DD2F8 001DA258  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 801DD2FC 001DA25C  7C 77 1B 78 */	mr r23, r3
/* 801DD300 001DA260  7C 98 23 78 */	mr r24, r4
/* 801DD304 001DA264  7C B9 2B 78 */	mr r25, r5
/* 801DD308 001DA268  7C DA 33 78 */	mr r26, r6
/* 801DD30C 001DA26C  3B 60 00 00 */	li r27, 0
/* 801DD310 001DA270  3B E0 00 00 */	li r31, 0
/* 801DD314 001DA274  3B AD A4 B8 */	addi r29, r13, lbl_805A9078@sda21
/* 801DD318 001DA278  83 83 06 38 */	lwz r28, 0x638(r3)
/* 801DD31C 001DA27C  48 00 00 A4 */	b lbl_801DD3C0
lbl_801DD320:
/* 801DD320 001DA280  80 B7 06 40 */	lwz r5, 0x640(r23)
/* 801DD324 001DA284  7F 43 D3 78 */	mr r3, r26
/* 801DD328 001DA288  38 81 00 08 */	addi r4, r1, 8
/* 801DD32C 001DA28C  7C 05 FA 2E */	lhzx r0, r5, r31
/* 801DD330 001DA290  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DD334 001DA294  B0 01 00 08 */	sth r0, 8(r1)
/* 801DD338 001DA298  4B E6 F2 3D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD33C 001DA29C  7C 64 1B 78 */	mr r4, r3
/* 801DD340 001DA2A0  38 61 00 10 */	addi r3, r1, 0x10
/* 801DD344 001DA2A4  4B ED 20 09 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801DD348 001DA2A8  83 C3 00 04 */	lwz r30, 4(r3)
/* 801DD34C 001DA2AC  28 1E 00 00 */	cmplwi r30, 0
/* 801DD350 001DA2B0  41 82 00 68 */	beq lbl_801DD3B8
/* 801DD354 001DA2B4  2C 18 00 01 */	cmpwi r24, 1
/* 801DD358 001DA2B8  41 82 00 28 */	beq lbl_801DD380
/* 801DD35C 001DA2BC  40 80 00 34 */	bge lbl_801DD390
/* 801DD360 001DA2C0  2C 18 00 00 */	cmpwi r24, 0
/* 801DD364 001DA2C4  40 80 00 08 */	bge lbl_801DD36C
/* 801DD368 001DA2C8  48 00 00 28 */	b lbl_801DD390
lbl_801DD36C:
/* 801DD36C 001DA2CC  7F C3 F3 78 */	mr r3, r30
/* 801DD370 001DA2D0  7F 24 CB 78 */	mr r4, r25
/* 801DD374 001DA2D4  7F 45 D3 78 */	mr r5, r26
/* 801DD378 001DA2D8  4B E7 6F D9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DD37C 001DA2DC  48 00 00 14 */	b lbl_801DD390
lbl_801DD380:
/* 801DD380 001DA2E0  7F C3 F3 78 */	mr r3, r30
/* 801DD384 001DA2E4  7F 24 CB 78 */	mr r4, r25
/* 801DD388 001DA2E8  7F 45 D3 78 */	mr r5, r26
/* 801DD38C 001DA2EC  4B E7 6B F5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801DD390:
/* 801DD390 001DA2F0  7F C3 F3 78 */	mr r3, r30
/* 801DD394 001DA2F4  7F 44 D3 78 */	mr r4, r26
/* 801DD398 001DA2F8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801DD39C 001DA2FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DD3A0 001DA300  7D 89 03 A6 */	mtctr r12
/* 801DD3A4 001DA304  4E 80 04 21 */	bctrl
/* 801DD3A8 001DA308  C0 0D A4 B8 */	lfs f0, lbl_805A9078@sda21(r13)
/* 801DD3AC 001DA30C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801DD3B0 001DA310  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801DD3B4 001DA314  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801DD3B8:
/* 801DD3B8 001DA318  3B 7B 00 01 */	addi r27, r27, 1
/* 801DD3BC 001DA31C  3B FF 00 02 */	addi r31, r31, 2
lbl_801DD3C0:
/* 801DD3C0 001DA320  7C 1B E0 40 */	cmplw r27, r28
/* 801DD3C4 001DA324  41 80 FF 5C */	blt lbl_801DD320
/* 801DD3C8 001DA328  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 801DD3CC 001DA32C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DD3D0 001DA330  7C 08 03 A6 */	mtlr r0
/* 801DD3D4 001DA334  38 21 00 40 */	addi r1, r1, 0x40
/* 801DD3D8 001DA338  4E 80 00 20 */	blr

.global sub_801dd3dc
sub_801dd3dc:
/* 801DD3DC 001DA33C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801DD3E0 001DA340  7C 08 02 A6 */	mflr r0
/* 801DD3E4 001DA344  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DD3E8 001DA348  BE 81 00 30 */	stmw r20, 0x30(r1)
/* 801DD3EC 001DA34C  7C 9E 23 78 */	mr r30, r4
/* 801DD3F0 001DA350  7C BF 2B 78 */	mr r31, r5
/* 801DD3F4 001DA354  7C D5 33 78 */	mr r21, r6
/* 801DD3F8 001DA358  7C F4 3B 78 */	mr r20, r7
/* 801DD3FC 001DA35C  7F C3 F3 78 */	mr r3, r30
/* 801DD400 001DA360  4B FC 9E 49 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DD404 001DA364  7C 7B 1B 78 */	mr r27, r3
/* 801DD408 001DA368  7E A5 AB 78 */	mr r5, r21
/* 801DD40C 001DA36C  3A A0 00 00 */	li r21, 0
/* 801DD410 001DA370  38 60 00 00 */	li r3, 0
/* 801DD414 001DA374  38 80 00 01 */	li r4, 1
/* 801DD418 001DA378  48 1A CA DD */	bl __shl2i
/* 801DD41C 001DA37C  7C 9C 23 78 */	mr r28, r4
/* 801DD420 001DA380  7C 7D 1B 78 */	mr r29, r3
/* 801DD424 001DA384  7F 96 E0 F8 */	nor r22, r28, r28
/* 801DD428 001DA388  7F B7 E8 F8 */	nor r23, r29, r29
/* 801DD42C 001DA38C  48 00 00 B4 */	b lbl_801DD4E0
lbl_801DD430:
/* 801DD430 001DA390  7F C3 F3 78 */	mr r3, r30
/* 801DD434 001DA394  7E A4 AB 78 */	mr r4, r21
/* 801DD438 001DA398  4B FC 9E 01 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DD43C 001DA39C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801DD440 001DA3A0  7E 83 A3 78 */	mr r3, r20
/* 801DD444 001DA3A4  38 81 00 08 */	addi r4, r1, 8
/* 801DD448 001DA3A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DD44C 001DA3AC  B0 01 00 08 */	sth r0, 8(r1)
/* 801DD450 001DA3B0  4B E6 F1 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD454 001DA3B4  7C 64 1B 78 */	mr r4, r3
/* 801DD458 001DA3B8  38 61 00 10 */	addi r3, r1, 0x10
/* 801DD45C 001DA3BC  4B ED 28 35 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801DD460 001DA3C0  83 43 00 04 */	lwz r26, 4(r3)
/* 801DD464 001DA3C4  28 1A 00 00 */	cmplwi r26, 0
/* 801DD468 001DA3C8  41 82 00 74 */	beq lbl_801DD4DC
/* 801DD46C 001DA3CC  7F 43 D3 78 */	mr r3, r26
/* 801DD470 001DA3D0  4B E7 64 4D */	bl GetMaterialFilter__6CActorCFv
/* 801DD474 001DA3D4  2C 1F 00 01 */	cmpwi r31, 1
/* 801DD478 001DA3D8  83 23 00 08 */	lwz r25, 8(r3)
/* 801DD47C 001DA3DC  83 03 00 0C */	lwz r24, 0xc(r3)
/* 801DD480 001DA3E0  41 82 00 20 */	beq lbl_801DD4A0
/* 801DD484 001DA3E4  40 80 00 24 */	bge lbl_801DD4A8
/* 801DD488 001DA3E8  2C 1F 00 00 */	cmpwi r31, 0
/* 801DD48C 001DA3EC  40 80 00 08 */	bge lbl_801DD494
/* 801DD490 001DA3F0  48 00 00 18 */	b lbl_801DD4A8
lbl_801DD494:
/* 801DD494 001DA3F4  7F 18 E3 78 */	or r24, r24, r28
/* 801DD498 001DA3F8  7F 39 EB 78 */	or r25, r25, r29
/* 801DD49C 001DA3FC  48 00 00 0C */	b lbl_801DD4A8
lbl_801DD4A0:
/* 801DD4A0 001DA400  7F 18 B0 38 */	and r24, r24, r22
/* 801DD4A4 001DA404  7F 39 B8 38 */	and r25, r25, r23
lbl_801DD4A8:
/* 801DD4A8 001DA408  7F 43 D3 78 */	mr r3, r26
/* 801DD4AC 001DA40C  4B E7 64 11 */	bl GetMaterialFilter__6CActorCFv
/* 801DD4B0 001DA410  80 A3 00 00 */	lwz r5, 0(r3)
/* 801DD4B4 001DA414  38 00 00 03 */	li r0, 3
/* 801DD4B8 001DA418  80 C3 00 04 */	lwz r6, 4(r3)
/* 801DD4BC 001DA41C  7F 43 D3 78 */	mr r3, r26
/* 801DD4C0 001DA420  38 81 00 18 */	addi r4, r1, 0x18
/* 801DD4C4 001DA424  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 801DD4C8 001DA428  90 A1 00 18 */	stw r5, 0x18(r1)
/* 801DD4CC 001DA42C  93 01 00 24 */	stw r24, 0x24(r1)
/* 801DD4D0 001DA430  93 21 00 20 */	stw r25, 0x20(r1)
/* 801DD4D4 001DA434  90 01 00 28 */	stw r0, 0x28(r1)
/* 801DD4D8 001DA438  4B E7 63 C9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_801DD4DC:
/* 801DD4DC 001DA43C  3A B5 00 01 */	addi r21, r21, 1
lbl_801DD4E0:
/* 801DD4E0 001DA440  7C 15 D8 40 */	cmplw r21, r27
/* 801DD4E4 001DA444  41 80 FF 4C */	blt lbl_801DD430
/* 801DD4E8 001DA448  BA 81 00 30 */	lmw r20, 0x30(r1)
/* 801DD4EC 001DA44C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801DD4F0 001DA450  7C 08 03 A6 */	mtlr r0
/* 801DD4F4 001DA454  38 21 00 60 */	addi r1, r1, 0x60
/* 801DD4F8 001DA458  4E 80 00 20 */	blr

.global sub_801dd4fc
sub_801dd4fc:
/* 801DD4FC 001DA45C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801DD500 001DA460  7C 08 02 A6 */	mflr r0
/* 801DD504 001DA464  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DD508 001DA468  BE A1 00 24 */	stmw r21, 0x24(r1)
/* 801DD50C 001DA46C  7C 9E 23 78 */	mr r30, r4
/* 801DD510 001DA470  7C 7D 1B 78 */	mr r29, r3
/* 801DD514 001DA474  7F C3 F3 78 */	mr r3, r30
/* 801DD518 001DA478  4B FC 9D 31 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DD51C 001DA47C  3C 80 80 3D */	lis r4, lbl_803D1BBC@ha
/* 801DD520 001DA480  7C 7A 1B 78 */	mr r26, r3
/* 801DD524 001DA484  3B 64 1B BC */	addi r27, r4, lbl_803D1BBC@l
/* 801DD528 001DA488  3B E0 00 00 */	li r31, 0
/* 801DD52C 001DA48C  48 00 00 C0 */	b lbl_801DD5EC
lbl_801DD530:
/* 801DD530 001DA490  7F C3 F3 78 */	mr r3, r30
/* 801DD534 001DA494  7F E4 FB 78 */	mr r4, r31
/* 801DD538 001DA498  4B FC 9D 01 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DD53C 001DA49C  A3 03 00 3C */	lhz r24, 0x3c(r3)
/* 801DD540 001DA4A0  7F 77 DB 78 */	mr r23, r27
/* 801DD544 001DA4A4  3B 23 00 2C */	addi r25, r3, 0x2c
/* 801DD548 001DA4A8  3A C0 00 00 */	li r22, 0
/* 801DD54C 001DA4AC  3A A0 00 00 */	li r21, 0
lbl_801DD550:
/* 801DD550 001DA4B0  80 97 00 00 */	lwz r4, 0(r23)
/* 801DD554 001DA4B4  38 61 00 08 */	addi r3, r1, 8
/* 801DD558 001DA4B8  4B E2 77 61 */	bl string_l__4rstlFPCc
/* 801DD55C 001DA4BC  7F 23 CB 78 */	mr r3, r25
/* 801DD560 001DA4C0  38 81 00 08 */	addi r4, r1, 8
/* 801DD564 001DA4C4  4B E7 50 7D */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801DD568 001DA4C8  7C 7C 1B 78 */	mr r28, r3
/* 801DD56C 001DA4CC  38 61 00 08 */	addi r3, r1, 8
/* 801DD570 001DA4D0  48 16 05 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DD574 001DA4D4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801DD578 001DA4D8  41 82 00 0C */	beq lbl_801DD584
/* 801DD57C 001DA4DC  3A C0 00 01 */	li r22, 1
/* 801DD580 001DA4E0  48 00 00 14 */	b lbl_801DD594
lbl_801DD584:
/* 801DD584 001DA4E4  3A B5 00 01 */	addi r21, r21, 1
/* 801DD588 001DA4E8  3A F7 00 04 */	addi r23, r23, 4
/* 801DD58C 001DA4EC  28 15 00 07 */	cmplwi r21, 7
/* 801DD590 001DA4F0  41 80 FF C0 */	blt lbl_801DD550
lbl_801DD594:
/* 801DD594 001DA4F4  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801DD598 001DA4F8  40 82 00 50 */	bne lbl_801DD5E8
/* 801DD59C 001DA4FC  80 1D 06 38 */	lwz r0, 0x638(r29)
/* 801DD5A0 001DA500  80 BD 06 3C */	lwz r5, 0x63c(r29)
/* 801DD5A4 001DA504  7C 00 28 00 */	cmpw r0, r5
/* 801DD5A8 001DA508  41 80 00 1C */	blt lbl_801DD5C4
/* 801DD5AC 001DA50C  2C 05 00 00 */	cmpwi r5, 0
/* 801DD5B0 001DA510  38 7D 06 34 */	addi r3, r29, 0x634
/* 801DD5B4 001DA514  38 80 00 04 */	li r4, 4
/* 801DD5B8 001DA518  41 82 00 08 */	beq lbl_801DD5C0
/* 801DD5BC 001DA51C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801DD5C0:
/* 801DD5C0 001DA520  4B E2 EE 49 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801DD5C4:
/* 801DD5C4 001DA524  80 1D 06 38 */	lwz r0, 0x638(r29)
/* 801DD5C8 001DA528  80 7D 06 40 */	lwz r3, 0x640(r29)
/* 801DD5CC 001DA52C  54 00 08 3C */	slwi r0, r0, 1
/* 801DD5D0 001DA530  7C 63 02 15 */	add. r3, r3, r0
/* 801DD5D4 001DA534  41 82 00 08 */	beq lbl_801DD5DC
/* 801DD5D8 001DA538  B3 03 00 00 */	sth r24, 0(r3)
lbl_801DD5DC:
/* 801DD5DC 001DA53C  80 7D 06 38 */	lwz r3, 0x638(r29)
/* 801DD5E0 001DA540  38 03 00 01 */	addi r0, r3, 1
/* 801DD5E4 001DA544  90 1D 06 38 */	stw r0, 0x638(r29)
lbl_801DD5E8:
/* 801DD5E8 001DA548  3B FF 00 01 */	addi r31, r31, 1
lbl_801DD5EC:
/* 801DD5EC 001DA54C  7C 1F D0 40 */	cmplw r31, r26
/* 801DD5F0 001DA550  41 80 FF 40 */	blt lbl_801DD530
/* 801DD5F4 001DA554  BA A1 00 24 */	lmw r21, 0x24(r1)
/* 801DD5F8 001DA558  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801DD5FC 001DA55C  7C 08 03 A6 */	mtlr r0
/* 801DD600 001DA560  38 21 00 50 */	addi r1, r1, 0x50
/* 801DD604 001DA564  4E 80 00 20 */	blr

.global sub_801dd608
sub_801dd608:
/* 801DD608 001DA568  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 801DD60C 001DA56C  7C 08 02 A6 */	mflr r0
/* 801DD610 001DA570  90 01 01 94 */	stw r0, 0x194(r1)
/* 801DD614 001DA574  BE E1 01 6C */	stmw r23, 0x16c(r1)
/* 801DD618 001DA578  7C 79 1B 78 */	mr r25, r3
/* 801DD61C 001DA57C  3C 60 80 3D */	lis r3, lbl_803D1BA0@ha
/* 801DD620 001DA580  7C 9A 23 78 */	mr r26, r4
/* 801DD624 001DA584  3B A3 1B A0 */	addi r29, r3, lbl_803D1BA0@l
/* 801DD628 001DA588  3B F9 00 34 */	addi r31, r25, 0x34
/* 801DD62C 001DA58C  3B C1 00 3C */	addi r30, r1, 0x3c
/* 801DD630 001DA590  3B 60 00 00 */	li r27, 0
/* 801DD634 001DA594  3B 00 00 00 */	li r24, 0
/* 801DD638 001DA598  80 B9 00 64 */	lwz r5, 0x64(r25)
/* 801DD63C 001DA59C  83 99 06 14 */	lwz r28, 0x614(r25)
/* 801DD640 001DA5A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 801DD644 001DA5A4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801DD648 001DA5A8  C0 05 00 04 */	lfs f0, 4(r5)
/* 801DD64C 001DA5AC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801DD650 001DA5B0  C0 05 00 08 */	lfs f0, 8(r5)
/* 801DD654 001DA5B4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801DD658 001DA5B8  48 00 01 58 */	b lbl_801DD7B0
lbl_801DD65C:
/* 801DD65C 001DA5BC  80 9D 00 00 */	lwz r4, 0(r29)
/* 801DD660 001DA5C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DD664 001DA5C4  38 C1 00 08 */	addi r6, r1, 8
/* 801DD668 001DA5C8  38 A0 FF FF */	li r5, -1
/* 801DD66C 001DA5CC  48 16 0B 29 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801DD670 001DA5D0  80 99 00 64 */	lwz r4, 0x64(r25)
/* 801DD674 001DA5D4  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801DD678 001DA5D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801DD67C 001DA5DC  38 C0 00 00 */	li r6, 0
/* 801DD680 001DA5E0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801DD684 001DA5E4  4B E4 EC FD */	bl "GetLocatorTransform__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PC13CCharAnimTime"
/* 801DD688 001DA5E8  38 61 01 38 */	addi r3, r1, 0x138
/* 801DD68C 001DA5EC  38 81 00 D8 */	addi r4, r1, 0xd8
/* 801DD690 001DA5F0  48 13 54 E5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801DD694 001DA5F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DD698 001DA5F8  48 16 04 49 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DD69C 001DA5FC  7F C4 F3 78 */	mr r4, r30
/* 801DD6A0 001DA600  38 61 00 48 */	addi r3, r1, 0x48
/* 801DD6A4 001DA604  48 13 5B 21 */	bl Scale__12CTransform4fFRC9CVector3f
/* 801DD6A8 001DA608  38 61 00 78 */	addi r3, r1, 0x78
/* 801DD6AC 001DA60C  38 81 00 48 */	addi r4, r1, 0x48
/* 801DD6B0 001DA610  38 A1 01 38 */	addi r5, r1, 0x138
/* 801DD6B4 001DA614  48 13 52 9D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801DD6B8 001DA618  7F E4 FB 78 */	mr r4, r31
/* 801DD6BC 001DA61C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801DD6C0 001DA620  38 A1 00 78 */	addi r5, r1, 0x78
/* 801DD6C4 001DA624  48 13 52 8D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801DD6C8 001DA628  38 61 01 08 */	addi r3, r1, 0x108
/* 801DD6CC 001DA62C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801DD6D0 001DA630  48 13 54 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801DD6D4 001DA634  80 B9 06 1C */	lwz r5, 0x61c(r25)
/* 801DD6D8 001DA638  7F 43 D3 78 */	mr r3, r26
/* 801DD6DC 001DA63C  38 81 00 10 */	addi r4, r1, 0x10
/* 801DD6E0 001DA640  7C 05 C2 2E */	lhzx r0, r5, r24
/* 801DD6E4 001DA644  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DD6E8 001DA648  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DD6EC 001DA64C  4B E6 EE 89 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD6F0 001DA650  7C 64 1B 78 */	mr r4, r3
/* 801DD6F4 001DA654  38 61 00 24 */	addi r3, r1, 0x24
/* 801DD6F8 001DA658  4B ED 25 99 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801DD6FC 001DA65C  82 E3 00 04 */	lwz r23, 4(r3)
/* 801DD700 001DA660  28 17 00 00 */	cmplwi r23, 0
/* 801DD704 001DA664  41 82 00 38 */	beq lbl_801DD73C
/* 801DD708 001DA668  38 77 00 34 */	addi r3, r23, 0x34
/* 801DD70C 001DA66C  38 81 01 08 */	addi r4, r1, 0x108
/* 801DD710 001DA670  48 13 54 31 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801DD714 001DA674  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD718 001DA678  38 60 00 01 */	li r3, 1
/* 801DD71C 001DA67C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801DD720 001DA680  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 801DD724 001DA684  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD728 001DA688  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801DD72C 001DA68C  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 801DD730 001DA690  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD734 001DA694  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801DD738 001DA698  98 17 00 E4 */	stb r0, 0xe4(r23)
lbl_801DD73C:
/* 801DD73C 001DA69C  80 B9 06 CC */	lwz r5, 0x6cc(r25)
/* 801DD740 001DA6A0  7F 43 D3 78 */	mr r3, r26
/* 801DD744 001DA6A4  38 81 00 0C */	addi r4, r1, 0xc
/* 801DD748 001DA6A8  7C 05 C2 2E */	lhzx r0, r5, r24
/* 801DD74C 001DA6AC  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DD750 001DA6B0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DD754 001DA6B4  4B E6 EE 21 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DD758 001DA6B8  7C 64 1B 78 */	mr r4, r3
/* 801DD75C 001DA6BC  38 61 00 1C */	addi r3, r1, 0x1c
/* 801DD760 001DA6C0  4B ED 03 25 */	bl "__ct__24TCastToPtr<10CGameLight>FP7CEntity"
/* 801DD764 001DA6C4  82 E3 00 04 */	lwz r23, 4(r3)
/* 801DD768 001DA6C8  28 17 00 00 */	cmplwi r23, 0
/* 801DD76C 001DA6CC  41 82 00 38 */	beq lbl_801DD7A4
/* 801DD770 001DA6D0  38 77 00 34 */	addi r3, r23, 0x34
/* 801DD774 001DA6D4  38 81 01 08 */	addi r4, r1, 0x108
/* 801DD778 001DA6D8  48 13 53 C9 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801DD77C 001DA6DC  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD780 001DA6E0  38 60 00 01 */	li r3, 1
/* 801DD784 001DA6E4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801DD788 001DA6E8  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 801DD78C 001DA6EC  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD790 001DA6F0  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801DD794 001DA6F4  98 17 00 E4 */	stb r0, 0xe4(r23)
/* 801DD798 001DA6F8  88 17 00 E4 */	lbz r0, 0xe4(r23)
/* 801DD79C 001DA6FC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801DD7A0 001DA700  98 17 00 E4 */	stb r0, 0xe4(r23)
lbl_801DD7A4:
/* 801DD7A4 001DA704  3B BD 00 04 */	addi r29, r29, 4
/* 801DD7A8 001DA708  3B 7B 00 01 */	addi r27, r27, 1
/* 801DD7AC 001DA70C  3B 18 00 02 */	addi r24, r24, 2
lbl_801DD7B0:
/* 801DD7B0 001DA710  7C 1B E0 40 */	cmplw r27, r28
/* 801DD7B4 001DA714  41 80 FE A8 */	blt lbl_801DD65C
/* 801DD7B8 001DA718  BA E1 01 6C */	lmw r23, 0x16c(r1)
/* 801DD7BC 001DA71C  80 01 01 94 */	lwz r0, 0x194(r1)
/* 801DD7C0 001DA720  7C 08 03 A6 */	mtlr r0
/* 801DD7C4 001DA724  38 21 01 90 */	addi r1, r1, 0x190
/* 801DD7C8 001DA728  4E 80 00 20 */	blr

.global sub_801dd7cc
sub_801dd7cc:
/* 801DD7CC 001DA72C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801DD7D0 001DA730  7C 08 02 A6 */	mflr r0
/* 801DD7D4 001DA734  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801DD7D8 001DA738  BF 21 00 D4 */	stmw r25, 0xd4(r1)
/* 801DD7DC 001DA73C  7C B9 2B 78 */	mr r25, r5
/* 801DD7E0 001DA740  7C DA 33 78 */	mr r26, r6
/* 801DD7E4 001DA744  7C 9E 23 78 */	mr r30, r4
/* 801DD7E8 001DA748  3B A1 00 6C */	addi r29, r1, 0x6c
/* 801DD7EC 001DA74C  3B 81 00 B0 */	addi r28, r1, 0xb0
/* 801DD7F0 001DA750  3B 60 00 00 */	li r27, 0
/* 801DD7F4 001DA754  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801DD7F8 001DA758  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801DD7FC 001DA75C  48 00 01 38 */	b lbl_801DD934
lbl_801DD800:
/* 801DD800 001DA760  80 9E 00 00 */	lwz r4, 0(r30)
/* 801DD804 001DA764  38 61 00 30 */	addi r3, r1, 0x30
/* 801DD808 001DA768  4B E2 74 B1 */	bl string_l__4rstlFPCc
/* 801DD80C 001DA76C  7F E4 FB 78 */	mr r4, r31
/* 801DD810 001DA770  38 61 00 0C */	addi r3, r1, 0xc
/* 801DD814 001DA774  38 A1 00 30 */	addi r5, r1, 0x30
/* 801DD818 001DA778  4B E5 10 21 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DD81C 001DA77C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801DD820 001DA780  38 61 00 30 */	addi r3, r1, 0x30
/* 801DD824 001DA784  98 01 00 10 */	stb r0, 0x10(r1)
/* 801DD828 001DA788  48 16 02 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DD82C 001DA78C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DD830 001DA790  28 00 00 FF */	cmplwi r0, 0xff
/* 801DD834 001DA794  41 82 00 F8 */	beq lbl_801DD92C
/* 801DD838 001DA798  80 9E 00 00 */	lwz r4, 0(r30)
/* 801DD83C 001DA79C  38 61 00 14 */	addi r3, r1, 0x14
/* 801DD840 001DA7A0  4B E2 74 79 */	bl string_l__4rstlFPCc
/* 801DD844 001DA7A4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 801DD848 001DA7A8  38 61 00 40 */	addi r3, r1, 0x40
/* 801DD84C 001DA7AC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 801DD850 001DA7B0  38 81 00 08 */	addi r4, r1, 8
/* 801DD854 001DA7B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801DD858 001DA7B8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801DD85C 001DA7BC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DD860 001DA7C0  38 C1 00 14 */	addi r6, r1, 0x14
/* 801DD864 001DA7C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801DD868 001DA7C8  C0 22 AD 28 */	lfs f1, lbl_805ACA48@sda21(r2)
/* 801DD86C 001DA7CC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801DD870 001DA7D0  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801DD874 001DA7D4  98 01 00 08 */	stb r0, 8(r1)
/* 801DD878 001DA7D8  4B FC AE 19 */	bl "AABoxCollision__26CJointCollisionDescriptionF6CSegIdRC9CVector3fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801DD87C 001DA7DC  80 E1 00 40 */	lwz r7, 0x40(r1)
/* 801DD880 001DA7E0  7F 83 E3 78 */	mr r3, r28
/* 801DD884 001DA7E4  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 801DD888 001DA7E8  7F A4 EB 78 */	mr r4, r29
/* 801DD88C 001DA7EC  88 A1 00 48 */	lbz r5, 0x48(r1)
/* 801DD890 001DA7F0  88 01 00 49 */	lbz r0, 0x49(r1)
/* 801DD894 001DA7F4  C0 E1 00 4C */	lfs f7, 0x4c(r1)
/* 801DD898 001DA7F8  C0 C1 00 50 */	lfs f6, 0x50(r1)
/* 801DD89C 001DA7FC  C0 A1 00 54 */	lfs f5, 0x54(r1)
/* 801DD8A0 001DA800  C0 81 00 58 */	lfs f4, 0x58(r1)
/* 801DD8A4 001DA804  C0 61 00 5C */	lfs f3, 0x5c(r1)
/* 801DD8A8 001DA808  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801DD8AC 001DA80C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801DD8B0 001DA810  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801DD8B4 001DA814  90 E1 00 84 */	stw r7, 0x84(r1)
/* 801DD8B8 001DA818  90 C1 00 88 */	stw r6, 0x88(r1)
/* 801DD8BC 001DA81C  98 A1 00 8C */	stb r5, 0x8c(r1)
/* 801DD8C0 001DA820  98 01 00 8D */	stb r0, 0x8d(r1)
/* 801DD8C4 001DA824  D0 E1 00 90 */	stfs f7, 0x90(r1)
/* 801DD8C8 001DA828  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 801DD8CC 001DA82C  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 801DD8D0 001DA830  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 801DD8D4 001DA834  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 801DD8D8 001DA838  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 801DD8DC 001DA83C  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 801DD8E0 001DA840  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801DD8E4 001DA844  48 16 08 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DD8E8 001DA848  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 801DD8EC 001DA84C  28 1D 00 00 */	cmplwi r29, 0
/* 801DD8F0 001DA850  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801DD8F4 001DA854  B0 01 00 C0 */	sth r0, 0xc0(r1)
/* 801DD8F8 001DA858  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 801DD8FC 001DA85C  41 82 00 0C */	beq lbl_801DD908
/* 801DD900 001DA860  7F A3 EB 78 */	mr r3, r29
/* 801DD904 001DA864  48 16 01 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DD908:
/* 801DD908 001DA868  38 61 00 14 */	addi r3, r1, 0x14
/* 801DD90C 001DA86C  48 16 01 D5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DD910 001DA870  7F 43 D3 78 */	mr r3, r26
/* 801DD914 001DA874  38 81 00 84 */	addi r4, r1, 0x84
/* 801DD918 001DA878  4B F7 89 19 */	bl sub_80156230
/* 801DD91C 001DA87C  28 1C 00 00 */	cmplwi r28, 0
/* 801DD920 001DA880  41 82 00 0C */	beq lbl_801DD92C
/* 801DD924 001DA884  7F 83 E3 78 */	mr r3, r28
/* 801DD928 001DA888  48 16 01 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DD92C:
/* 801DD92C 001DA88C  3B DE 00 10 */	addi r30, r30, 0x10
/* 801DD930 001DA890  3B 7B 00 01 */	addi r27, r27, 1
lbl_801DD934:
/* 801DD934 001DA894  7C 1B C8 00 */	cmpw r27, r25
/* 801DD938 001DA898  41 80 FE C8 */	blt lbl_801DD800
/* 801DD93C 001DA89C  BB 21 00 D4 */	lmw r25, 0xd4(r1)
/* 801DD940 001DA8A0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801DD944 001DA8A4  7C 08 03 A6 */	mtlr r0
/* 801DD948 001DA8A8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801DD94C 001DA8AC  4E 80 00 20 */	blr

.global sub_801dd950
sub_801dd950:
/* 801DD950 001DA8B0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801DD954 001DA8B4  7C 08 02 A6 */	mflr r0
/* 801DD958 001DA8B8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801DD95C 001DA8BC  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 801DD960 001DA8C0  7C B9 2B 78 */	mr r25, r5
/* 801DD964 001DA8C4  7C DA 33 78 */	mr r26, r6
/* 801DD968 001DA8C8  7C 9E 23 78 */	mr r30, r4
/* 801DD96C 001DA8CC  3B A1 00 60 */	addi r29, r1, 0x60
/* 801DD970 001DA8D0  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 801DD974 001DA8D4  3B 60 00 00 */	li r27, 0
/* 801DD978 001DA8D8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801DD97C 001DA8DC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801DD980 001DA8E0  48 00 01 20 */	b lbl_801DDAA0
lbl_801DD984:
/* 801DD984 001DA8E4  80 9E 00 00 */	lwz r4, 0(r30)
/* 801DD988 001DA8E8  38 61 00 24 */	addi r3, r1, 0x24
/* 801DD98C 001DA8EC  4B E2 73 2D */	bl string_l__4rstlFPCc
/* 801DD990 001DA8F0  7F E4 FB 78 */	mr r4, r31
/* 801DD994 001DA8F4  38 61 00 0C */	addi r3, r1, 0xc
/* 801DD998 001DA8F8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801DD99C 001DA8FC  4B E5 0E 9D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DD9A0 001DA900  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801DD9A4 001DA904  38 61 00 24 */	addi r3, r1, 0x24
/* 801DD9A8 001DA908  98 01 00 10 */	stb r0, 0x10(r1)
/* 801DD9AC 001DA90C  48 16 01 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DD9B0 001DA910  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DD9B4 001DA914  28 00 00 FF */	cmplwi r0, 0xff
/* 801DD9B8 001DA918  41 82 00 E0 */	beq lbl_801DDA98
/* 801DD9BC 001DA91C  80 9E 00 00 */	lwz r4, 0(r30)
/* 801DD9C0 001DA920  38 61 00 14 */	addi r3, r1, 0x14
/* 801DD9C4 001DA924  4B E2 72 F5 */	bl string_l__4rstlFPCc
/* 801DD9C8 001DA928  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DD9CC 001DA92C  38 61 00 34 */	addi r3, r1, 0x34
/* 801DD9D0 001DA930  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801DD9D4 001DA934  38 81 00 08 */	addi r4, r1, 8
/* 801DD9D8 001DA938  98 01 00 08 */	stb r0, 8(r1)
/* 801DD9DC 001DA93C  38 A1 00 14 */	addi r5, r1, 0x14
/* 801DD9E0 001DA940  C0 42 AD 28 */	lfs f2, lbl_805ACA48@sda21(r2)
/* 801DD9E4 001DA944  4B FC AE 29 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801DD9E8 001DA948  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 801DD9EC 001DA94C  7F 83 E3 78 */	mr r3, r28
/* 801DD9F0 001DA950  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 801DD9F4 001DA954  7F A4 EB 78 */	mr r4, r29
/* 801DD9F8 001DA958  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 801DD9FC 001DA95C  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 801DDA00 001DA960  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 801DDA04 001DA964  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 801DDA08 001DA968  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 801DDA0C 001DA96C  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 801DDA10 001DA970  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 801DDA14 001DA974  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801DDA18 001DA978  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801DDA1C 001DA97C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801DDA20 001DA980  90 E1 00 78 */	stw r7, 0x78(r1)
/* 801DDA24 001DA984  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 801DDA28 001DA988  98 A1 00 80 */	stb r5, 0x80(r1)
/* 801DDA2C 001DA98C  98 01 00 81 */	stb r0, 0x81(r1)
/* 801DDA30 001DA990  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 801DDA34 001DA994  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 801DDA38 001DA998  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 801DDA3C 001DA99C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801DDA40 001DA9A0  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801DDA44 001DA9A4  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801DDA48 001DA9A8  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801DDA4C 001DA9AC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801DDA50 001DA9B0  48 16 07 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801DDA54 001DA9B4  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 801DDA58 001DA9B8  28 1D 00 00 */	cmplwi r29, 0
/* 801DDA5C 001DA9BC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801DDA60 001DA9C0  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 801DDA64 001DA9C4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801DDA68 001DA9C8  41 82 00 0C */	beq lbl_801DDA74
/* 801DDA6C 001DA9CC  7F A3 EB 78 */	mr r3, r29
/* 801DDA70 001DA9D0  48 16 00 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DDA74:
/* 801DDA74 001DA9D4  38 61 00 14 */	addi r3, r1, 0x14
/* 801DDA78 001DA9D8  48 16 00 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801DDA7C 001DA9DC  7F 43 D3 78 */	mr r3, r26
/* 801DDA80 001DA9E0  38 81 00 78 */	addi r4, r1, 0x78
/* 801DDA84 001DA9E4  4B F7 87 AD */	bl sub_80156230
/* 801DDA88 001DA9E8  28 1C 00 00 */	cmplwi r28, 0
/* 801DDA8C 001DA9EC  41 82 00 0C */	beq lbl_801DDA98
/* 801DDA90 001DA9F0  7F 83 E3 78 */	mr r3, r28
/* 801DDA94 001DA9F4  48 16 00 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801DDA98:
/* 801DDA98 001DA9F8  3B DE 00 08 */	addi r30, r30, 8
/* 801DDA9C 001DA9FC  3B 7B 00 01 */	addi r27, r27, 1
lbl_801DDAA0:
/* 801DDAA0 001DAA00  7C 1B C8 00 */	cmpw r27, r25
/* 801DDAA4 001DAA04  41 80 FE E0 */	blt lbl_801DD984
/* 801DDAA8 001DAA08  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 801DDAAC 001DAA0C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801DDAB0 001DAA10  7C 08 03 A6 */	mtlr r0
/* 801DDAB4 001DAA14  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801DDAB8 001DAA18  4E 80 00 20 */	blr

.global sub_801ddabc
sub_801ddabc:
/* 801DDABC 001DAA1C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801DDAC0 001DAA20  7C 08 02 A6 */	mflr r0
/* 801DDAC4 001DAA24  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DDAC8 001DAA28  BE A1 00 34 */	stmw r21, 0x34(r1)
/* 801DDACC 001DAA2C  7C 7B 1B 78 */	mr r27, r3
/* 801DDAD0 001DAA30  7C 9C 23 78 */	mr r28, r4
/* 801DDAD4 001DAA34  7C BD 2B 78 */	mr r29, r5
/* 801DDAD8 001DAA38  3B E0 00 00 */	li r31, 0
/* 801DDADC 001DAA3C  48 00 00 E4 */	b lbl_801DDBC0
lbl_801DDAE0:
/* 801DDAE0 001DAA40  80 7C 00 00 */	lwz r3, 0(r28)
/* 801DDAE4 001DAA44  7F E4 FB 78 */	mr r4, r31
/* 801DDAE8 001DAA48  4B FC 97 51 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DDAEC 001DAA4C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801DDAF0 001DAA50  7F A3 EB 78 */	mr r3, r29
/* 801DDAF4 001DAA54  38 81 00 08 */	addi r4, r1, 8
/* 801DDAF8 001DAA58  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DDAFC 001DAA5C  B0 01 00 08 */	sth r0, 8(r1)
/* 801DDB00 001DAA60  4B E6 EA 75 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DDB04 001DAA64  7C 7E 1B 79 */	or. r30, r3, r3
/* 801DDB08 001DAA68  41 82 00 B4 */	beq lbl_801DDBBC
/* 801DDB0C 001DAA6C  7F A5 EB 78 */	mr r5, r29
/* 801DDB10 001DAA70  38 80 00 1B */	li r4, 0x1b
/* 801DDB14 001DAA74  4B E7 68 3D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DDB18 001DAA78  7F C3 F3 78 */	mr r3, r30
/* 801DDB1C 001DAA7C  7F A5 EB 78 */	mr r5, r29
/* 801DDB20 001DAA80  38 80 00 15 */	li r4, 0x15
/* 801DDB24 001DAA84  4B E7 68 2D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DDB28 001DAA88  7F C3 F3 78 */	mr r3, r30
/* 801DDB2C 001DAA8C  7F A5 EB 78 */	mr r5, r29
/* 801DDB30 001DAA90  38 80 00 2B */	li r4, 0x2b
/* 801DDB34 001DAA94  4B E7 68 1D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DDB38 001DAA98  7F C3 F3 78 */	mr r3, r30
/* 801DDB3C 001DAA9C  7F A5 EB 78 */	mr r5, r29
/* 801DDB40 001DAAA0  38 80 00 3A */	li r4, 0x3a
/* 801DDB44 001DAAA4  4B E7 68 0D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DDB48 001DAAA8  7F 63 DB 78 */	mr r3, r27
/* 801DDB4C 001DAAAC  4B E7 5D 71 */	bl GetMaterialFilter__6CActorCFv
/* 801DDB50 001DAAB0  83 43 00 00 */	lwz r26, 0(r3)
/* 801DDB54 001DAAB4  83 23 00 04 */	lwz r25, 4(r3)
/* 801DDB58 001DAAB8  7F 63 DB 78 */	mr r3, r27
/* 801DDB5C 001DAABC  4B E7 5D 61 */	bl GetMaterialFilter__6CActorCFv
/* 801DDB60 001DAAC0  83 03 00 08 */	lwz r24, 8(r3)
/* 801DDB64 001DAAC4  82 E3 00 0C */	lwz r23, 0xc(r3)
/* 801DDB68 001DAAC8  7F C3 F3 78 */	mr r3, r30
/* 801DDB6C 001DAACC  4B E7 5D 51 */	bl GetMaterialFilter__6CActorCFv
/* 801DDB70 001DAAD0  82 C3 00 00 */	lwz r22, 0(r3)
/* 801DDB74 001DAAD4  82 A3 00 04 */	lwz r21, 4(r3)
/* 801DDB78 001DAAD8  7F C3 F3 78 */	mr r3, r30
/* 801DDB7C 001DAADC  4B E7 5D 41 */	bl GetMaterialFilter__6CActorCFv
/* 801DDB80 001DAAE0  80 03 00 08 */	lwz r0, 8(r3)
/* 801DDB84 001DAAE4  7F 24 AB 78 */	or r4, r25, r21
/* 801DDB88 001DAAE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801DDB8C 001DAAEC  7F 45 B3 78 */	or r5, r26, r22
/* 801DDB90 001DAAF0  7F 06 03 78 */	or r6, r24, r0
/* 801DDB94 001DAAF4  38 00 00 03 */	li r0, 3
/* 801DDB98 001DAAF8  7E E7 1B 78 */	or r7, r23, r3
/* 801DDB9C 001DAAFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 801DDBA0 001DAB00  7F C3 F3 78 */	mr r3, r30
/* 801DDBA4 001DAB04  38 81 00 10 */	addi r4, r1, 0x10
/* 801DDBA8 001DAB08  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DDBAC 001DAB0C  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 801DDBB0 001DAB10  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801DDBB4 001DAB14  90 01 00 20 */	stw r0, 0x20(r1)
/* 801DDBB8 001DAB18  4B E7 5C E9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_801DDBBC:
/* 801DDBBC 001DAB1C  3B FF 00 01 */	addi r31, r31, 1
lbl_801DDBC0:
/* 801DDBC0 001DAB20  80 7C 00 00 */	lwz r3, 0(r28)
/* 801DDBC4 001DAB24  4B FC 96 85 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DDBC8 001DAB28  7C 1F 18 40 */	cmplw r31, r3
/* 801DDBCC 001DAB2C  41 80 FF 14 */	blt lbl_801DDAE0
/* 801DDBD0 001DAB30  BA A1 00 34 */	lmw r21, 0x34(r1)
/* 801DDBD4 001DAB34  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801DDBD8 001DAB38  7C 08 03 A6 */	mtlr r0
/* 801DDBDC 001DAB3C  38 21 00 60 */	addi r1, r1, 0x60
/* 801DDBE0 001DAB40  4E 80 00 20 */	blr

.global sub_801ddbe4
sub_801ddbe4:
/* 801DDBE4 001DAB44  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801DDBE8 001DAB48  7C 08 02 A6 */	mflr r0
/* 801DDBEC 001DAB4C  3C A0 80 3D */	lis r5, lbl_803D1BA0@ha
/* 801DDBF0 001DAB50  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801DDBF4 001DAB54  38 00 00 00 */	li r0, 0
/* 801DDBF8 001DAB58  BF 21 00 84 */	stmw r25, 0x84(r1)
/* 801DDBFC 001DAB5C  7C 7E 1B 78 */	mr r30, r3
/* 801DDC00 001DAB60  7C 9F 23 78 */	mr r31, r4
/* 801DDC04 001DAB64  3B 65 1B A0 */	addi r27, r5, lbl_803D1BA0@l
/* 801DDC08 001DAB68  38 61 00 70 */	addi r3, r1, 0x70
/* 801DDC0C 001DAB6C  38 80 00 07 */	li r4, 7
/* 801DDC10 001DAB70  90 01 00 74 */	stw r0, 0x74(r1)
/* 801DDC14 001DAB74  90 01 00 78 */	stw r0, 0x78(r1)
/* 801DDC18 001DAB78  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801DDC1C 001DAB7C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DDC20 001DAB80  90 01 00 68 */	stw r0, 0x68(r1)
/* 801DDC24 001DAB84  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801DDC28 001DAB88  4B F7 8B 91 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801DDC2C 001DAB8C  38 61 00 60 */	addi r3, r1, 0x60
/* 801DDC30 001DAB90  38 80 00 05 */	li r4, 5
/* 801DDC34 001DAB94  4B F7 8B 85 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801DDC38 001DAB98  7F C3 F3 78 */	mr r3, r30
/* 801DDC3C 001DAB9C  38 9B 00 98 */	addi r4, r27, 0x98
/* 801DDC40 001DABA0  38 C1 00 70 */	addi r6, r1, 0x70
/* 801DDC44 001DABA4  38 A0 00 07 */	li r5, 7
/* 801DDC48 001DABA8  4B FF FD 09 */	bl sub_801dd950
/* 801DDC4C 001DABAC  7F C3 F3 78 */	mr r3, r30
/* 801DDC50 001DABB0  38 9B 00 D0 */	addi r4, r27, 0xd0
/* 801DDC54 001DABB4  38 C1 00 60 */	addi r6, r1, 0x60
/* 801DDC58 001DABB8  38 A0 00 05 */	li r5, 5
/* 801DDC5C 001DABBC  4B FF FC F5 */	bl sub_801dd950
/* 801DDC60 001DABC0  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DDC64 001DABC4  38 60 00 18 */	li r3, 0x18
/* 801DDC68 001DABC8  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DDC6C 001DABCC  38 A0 00 00 */	li r5, 0
/* 801DDC70 001DABD0  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801DDC74 001DABD4  48 13 7B F9 */	bl __nw__FUlPCcPCc
/* 801DDC78 001DABD8  7C 7C 1B 79 */	or. r28, r3, r3
/* 801DDC7C 001DABDC  41 82 00 38 */	beq lbl_801DDCB4
/* 801DDC80 001DABE0  81 3E 00 04 */	lwz r9, 4(r30)
/* 801DDC84 001DABE4  7F E4 FB 78 */	mr r4, r31
/* 801DDC88 001DABE8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801DDC8C 001DABEC  38 C1 00 44 */	addi r6, r1, 0x44
/* 801DDC90 001DABF0  91 21 00 44 */	stw r9, 0x44(r1)
/* 801DDC94 001DABF4  38 E1 00 70 */	addi r7, r1, 0x70
/* 801DDC98 001DABF8  39 00 00 01 */	li r8, 1
/* 801DDC9C 001DABFC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801DDCA0 001DAC00  91 21 00 40 */	stw r9, 0x40(r1)
/* 801DDCA4 001DAC04  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801DDCA8 001DAC08  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801DDCAC 001DAC0C  4B FC 9C 85 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801DDCB0 001DAC10  7C 7C 1B 78 */	mr r28, r3
lbl_801DDCB4:
/* 801DDCB4 001DAC14  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 801DDCB8 001DAC18  38 80 00 01 */	li r4, 1
/* 801DDCBC 001DAC1C  4B FC 9C 21 */	bl sub_801a78dc
/* 801DDCC0 001DAC20  93 9E 05 F0 */	stw r28, 0x5f0(r30)
/* 801DDCC4 001DAC24  7F C3 F3 78 */	mr r3, r30
/* 801DDCC8 001DAC28  7F E5 FB 78 */	mr r5, r31
/* 801DDCCC 001DAC2C  38 9E 05 F0 */	addi r4, r30, 0x5f0
/* 801DDCD0 001DAC30  4B FF FD ED */	bl sub_801ddabc
/* 801DDCD4 001DAC34  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DDCD8 001DAC38  38 60 00 18 */	li r3, 0x18
/* 801DDCDC 001DAC3C  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DDCE0 001DAC40  38 A0 00 00 */	li r5, 0
/* 801DDCE4 001DAC44  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801DDCE8 001DAC48  48 13 7B 85 */	bl __nw__FUlPCcPCc
/* 801DDCEC 001DAC4C  7C 7C 1B 79 */	or. r28, r3, r3
/* 801DDCF0 001DAC50  41 82 00 38 */	beq lbl_801DDD28
/* 801DDCF4 001DAC54  81 3E 00 04 */	lwz r9, 4(r30)
/* 801DDCF8 001DAC58  7F E4 FB 78 */	mr r4, r31
/* 801DDCFC 001DAC5C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801DDD00 001DAC60  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801DDD04 001DAC64  91 21 00 3C */	stw r9, 0x3c(r1)
/* 801DDD08 001DAC68  38 E1 00 60 */	addi r7, r1, 0x60
/* 801DDD0C 001DAC6C  39 00 00 01 */	li r8, 1
/* 801DDD10 001DAC70  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801DDD14 001DAC74  91 21 00 38 */	stw r9, 0x38(r1)
/* 801DDD18 001DAC78  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DDD1C 001DAC7C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801DDD20 001DAC80  4B FC 9C 11 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801DDD24 001DAC84  7C 7C 1B 78 */	mr r28, r3
lbl_801DDD28:
/* 801DDD28 001DAC88  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 801DDD2C 001DAC8C  38 80 00 01 */	li r4, 1
/* 801DDD30 001DAC90  4B FC 9B AD */	bl sub_801a78dc
/* 801DDD34 001DAC94  93 9E 05 F4 */	stw r28, 0x5f4(r30)
/* 801DDD38 001DAC98  7F C3 F3 78 */	mr r3, r30
/* 801DDD3C 001DAC9C  7F E5 FB 78 */	mr r5, r31
/* 801DDD40 001DACA0  38 9E 05 F4 */	addi r4, r30, 0x5f4
/* 801DDD44 001DACA4  4B FF FD 79 */	bl sub_801ddabc
/* 801DDD48 001DACA8  38 00 00 00 */	li r0, 0
/* 801DDD4C 001DACAC  38 61 00 50 */	addi r3, r1, 0x50
/* 801DDD50 001DACB0  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DDD54 001DACB4  38 80 00 02 */	li r4, 2
/* 801DDD58 001DACB8  90 01 00 58 */	stw r0, 0x58(r1)
/* 801DDD5C 001DACBC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801DDD60 001DACC0  4B F7 8A 59 */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801DDD64 001DACC4  7F C3 F3 78 */	mr r3, r30
/* 801DDD68 001DACC8  38 9B 00 F8 */	addi r4, r27, 0xf8
/* 801DDD6C 001DACCC  38 C1 00 50 */	addi r6, r1, 0x50
/* 801DDD70 001DACD0  38 A0 00 02 */	li r5, 2
/* 801DDD74 001DACD4  4B FF FA 59 */	bl sub_801dd7cc
/* 801DDD78 001DACD8  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801DDD7C 001DACDC  38 60 00 18 */	li r3, 0x18
/* 801DDD80 001DACE0  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801DDD84 001DACE4  38 A0 00 00 */	li r5, 0
/* 801DDD88 001DACE8  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801DDD8C 001DACEC  48 13 7A E1 */	bl __nw__FUlPCcPCc
/* 801DDD90 001DACF0  7C 7B 1B 79 */	or. r27, r3, r3
/* 801DDD94 001DACF4  41 82 00 38 */	beq lbl_801DDDCC
/* 801DDD98 001DACF8  81 3E 00 04 */	lwz r9, 4(r30)
/* 801DDD9C 001DACFC  7F E4 FB 78 */	mr r4, r31
/* 801DDDA0 001DAD00  38 A1 00 14 */	addi r5, r1, 0x14
/* 801DDDA4 001DAD04  38 C1 00 34 */	addi r6, r1, 0x34
/* 801DDDA8 001DAD08  91 21 00 34 */	stw r9, 0x34(r1)
/* 801DDDAC 001DAD0C  38 E1 00 50 */	addi r7, r1, 0x50
/* 801DDDB0 001DAD10  39 00 00 01 */	li r8, 1
/* 801DDDB4 001DAD14  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801DDDB8 001DAD18  91 21 00 30 */	stw r9, 0x30(r1)
/* 801DDDBC 001DAD1C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DDDC0 001DAD20  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DDDC4 001DAD24  4B FC 9B 6D */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801DDDC8 001DAD28  7C 7B 1B 78 */	mr r27, r3
lbl_801DDDCC:
/* 801DDDCC 001DAD2C  80 7E 05 F8 */	lwz r3, 0x5f8(r30)
/* 801DDDD0 001DAD30  38 80 00 01 */	li r4, 1
/* 801DDDD4 001DAD34  4B FC 9B 09 */	bl sub_801a78dc
/* 801DDDD8 001DAD38  93 7E 05 F8 */	stw r27, 0x5f8(r30)
/* 801DDDDC 001DAD3C  7F C3 F3 78 */	mr r3, r30
/* 801DDDE0 001DAD40  7F E5 FB 78 */	mr r5, r31
/* 801DDDE4 001DAD44  38 9E 05 F8 */	addi r4, r30, 0x5f8
/* 801DDDE8 001DAD48  4B FF FC D5 */	bl sub_801ddabc
/* 801DDDEC 001DAD4C  83 9E 05 F0 */	lwz r28, 0x5f0(r30)
/* 801DDDF0 001DAD50  80 7E 05 F4 */	lwz r3, 0x5f4(r30)
/* 801DDDF4 001DAD54  4B FC 94 55 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DDDF8 001DAD58  7C 7B 1B 78 */	mr r27, r3
/* 801DDDFC 001DAD5C  7F 83 E3 78 */	mr r3, r28
/* 801DDE00 001DAD60  4B FC 94 49 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DDE04 001DAD64  7F 43 DA 14 */	add r26, r3, r27
/* 801DDE08 001DAD68  80 7E 05 F8 */	lwz r3, 0x5f8(r30)
/* 801DDE0C 001DAD6C  4B FC 94 3D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DDE10 001DAD70  7C 60 1B 78 */	mr r0, r3
/* 801DDE14 001DAD74  38 7E 06 34 */	addi r3, r30, 0x634
/* 801DDE18 001DAD78  7C 9A 02 14 */	add r4, r26, r0
/* 801DDE1C 001DAD7C  4B E2 E5 ED */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801DDE20 001DAD80  80 9E 05 F4 */	lwz r4, 0x5f4(r30)
/* 801DDE24 001DAD84  7F C3 F3 78 */	mr r3, r30
/* 801DDE28 001DAD88  4B FF F6 D5 */	bl sub_801dd4fc
/* 801DDE2C 001DAD8C  80 9E 05 F8 */	lwz r4, 0x5f8(r30)
/* 801DDE30 001DAD90  7F C3 F3 78 */	mr r3, r30
/* 801DDE34 001DAD94  4B FF F6 C9 */	bl sub_801dd4fc
/* 801DDE38 001DAD98  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 801DDE3C 001DAD9C  4B FC 94 0D */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801DDE40 001DADA0  7C 7B 1B 78 */	mr r27, r3
/* 801DDE44 001DADA4  3B 20 00 00 */	li r25, 0
/* 801DDE48 001DADA8  3B A0 00 00 */	li r29, 0
/* 801DDE4C 001DADAC  48 00 01 00 */	b lbl_801DDF4C
lbl_801DDE50:
/* 801DDE50 001DADB0  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 801DDE54 001DADB4  7F 24 CB 78 */	mr r4, r25
/* 801DDE58 001DADB8  4B FC 93 E1 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801DDE5C 001DADBC  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 801DDE60 001DADC0  38 81 00 0C */	addi r4, r1, 0xc
/* 801DDE64 001DADC4  A0 C3 00 3C */	lhz r6, 0x3c(r3)
/* 801DDE68 001DADC8  7F E3 FB 78 */	mr r3, r31
/* 801DDE6C 001DADCC  7C 05 EA 2E */	lhzx r0, r5, r29
/* 801DDE70 001DADD0  B0 C1 00 2C */	sth r6, 0x2c(r1)
/* 801DDE74 001DADD4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801DDE78 001DADD8  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 801DDE7C 001DADDC  4B E6 E6 F9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DDE80 001DADE0  7C 64 1B 78 */	mr r4, r3
/* 801DDE84 001DADE4  38 61 00 48 */	addi r3, r1, 0x48
/* 801DDE88 001DADE8  4B ED 14 C5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801DDE8C 001DADEC  83 43 00 04 */	lwz r26, 4(r3)
/* 801DDE90 001DADF0  7F E3 FB 78 */	mr r3, r31
/* 801DDE94 001DADF4  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 801DDE98 001DADF8  38 81 00 08 */	addi r4, r1, 8
/* 801DDE9C 001DADFC  B0 01 00 08 */	sth r0, 8(r1)
/* 801DDEA0 001DAE00  4B E6 E6 D5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DDEA4 001DAE04  28 1A 00 00 */	cmplwi r26, 0
/* 801DDEA8 001DAE08  7C 7C 1B 78 */	mr r28, r3
/* 801DDEAC 001DAE0C  41 82 00 98 */	beq lbl_801DDF44
/* 801DDEB0 001DAE10  28 1C 00 00 */	cmplwi r28, 0
/* 801DDEB4 001DAE14  41 82 00 90 */	beq lbl_801DDF44
/* 801DDEB8 001DAE18  28 19 00 00 */	cmplwi r25, 0
/* 801DDEBC 001DAE1C  41 82 00 20 */	beq lbl_801DDEDC
/* 801DDEC0 001DAE20  3C 80 80 57 */	lis r4, lbl_8056D718@ha
/* 801DDEC4 001DAE24  7F 43 D3 78 */	mr r3, r26
/* 801DDEC8 001DAE28  38 84 D7 18 */	addi r4, r4, lbl_8056D718@l
/* 801DDECC 001DAE2C  4B FC AC CD */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801DDED0 001DAE30  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DDED4 001DAE34  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 801DDED8 001DAE38  48 00 00 28 */	b lbl_801DDF00
lbl_801DDEDC:
/* 801DDEDC 001DAE3C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DDEE0 001DAE40  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801DDEE4 001DAE44  7D 89 03 A6 */	mtctr r12
/* 801DDEE8 001DAE48  4E 80 04 21 */	bctrl
/* 801DDEEC 001DAE4C  7C 64 1B 78 */	mr r4, r3
/* 801DDEF0 001DAE50  7F 43 D3 78 */	mr r3, r26
/* 801DDEF4 001DAE54  4B FC AC A5 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801DDEF8 001DAE58  C0 02 AD 14 */	lfs f0, lbl_805ACA34@sda21(r2)
/* 801DDEFC 001DAE5C  D0 1C 03 2C */	stfs f0, 0x32c(r28)
lbl_801DDF00:
/* 801DDF00 001DAE60  7F 83 E3 78 */	mr r3, r28
/* 801DDF04 001DAE64  7F E4 FB 78 */	mr r4, r31
/* 801DDF08 001DAE68  81 9C 00 00 */	lwz r12, 0(r28)
/* 801DDF0C 001DAE6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DDF10 001DAE70  7D 89 03 A6 */	mtctr r12
/* 801DDF14 001DAE74  4E 80 04 21 */	bctrl
/* 801DDF18 001DAE78  7C 7C 1B 78 */	mr r28, r3
/* 801DDF1C 001DAE7C  7F 43 D3 78 */	mr r3, r26
/* 801DDF20 001DAE80  81 9A 00 00 */	lwz r12, 0(r26)
/* 801DDF24 001DAE84  7F E4 FB 78 */	mr r4, r31
/* 801DDF28 001DAE88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DDF2C 001DAE8C  7D 89 03 A6 */	mtctr r12
/* 801DDF30 001DAE90  4E 80 04 21 */	bctrl
/* 801DDF34 001DAE94  C0 1C 00 00 */	lfs f0, 0(r28)
/* 801DDF38 001DAE98  D0 03 00 00 */	stfs f0, 0(r3)
/* 801DDF3C 001DAE9C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 801DDF40 001DAEA0  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801DDF44:
/* 801DDF44 001DAEA4  3B 39 00 01 */	addi r25, r25, 1
/* 801DDF48 001DAEA8  3B BD 00 02 */	addi r29, r29, 2
lbl_801DDF4C:
/* 801DDF4C 001DAEAC  7C 19 D8 40 */	cmplw r25, r27
/* 801DDF50 001DAEB0  41 80 FF 00 */	blt lbl_801DDE50
/* 801DDF54 001DAEB4  38 61 00 50 */	addi r3, r1, 0x50
/* 801DDF58 001DAEB8  38 80 FF FF */	li r4, -1
/* 801DDF5C 001DAEBC  4B F7 83 D1 */	bl sub_8015632c
/* 801DDF60 001DAEC0  38 61 00 60 */	addi r3, r1, 0x60
/* 801DDF64 001DAEC4  38 80 FF FF */	li r4, -1
/* 801DDF68 001DAEC8  4B F7 83 C5 */	bl sub_8015632c
/* 801DDF6C 001DAECC  38 61 00 70 */	addi r3, r1, 0x70
/* 801DDF70 001DAED0  38 80 FF FF */	li r4, -1
/* 801DDF74 001DAED4  4B F7 83 B9 */	bl sub_8015632c
/* 801DDF78 001DAED8  BB 21 00 84 */	lmw r25, 0x84(r1)
/* 801DDF7C 001DAEDC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801DDF80 001DAEE0  7C 08 03 A6 */	mtlr r0
/* 801DDF84 001DAEE4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801DDF88 001DAEE8  4E 80 00 20 */	blr

.global Generate__8CThardusFR13CStateManager9EStateMsgf
Generate__8CThardusFR13CStateManager9EStateMsgf:
/* 801DDF8C 001DAEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DDF90 001DAEF0  7C 08 02 A6 */	mflr r0
/* 801DDF94 001DAEF4  2C 05 00 01 */	cmpwi r5, 1
/* 801DDF98 001DAEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DDF9C 001DAEFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DDFA0 001DAF00  41 82 00 2C */	beq lbl_801DDFCC
/* 801DDFA4 001DAF04  40 80 00 10 */	bge lbl_801DDFB4
/* 801DDFA8 001DAF08  2C 05 00 00 */	cmpwi r5, 0
/* 801DDFAC 001DAF0C  40 80 00 14 */	bge lbl_801DDFC0
/* 801DDFB0 001DAF10  48 00 00 E4 */	b lbl_801DE094
lbl_801DDFB4:
/* 801DDFB4 001DAF14  2C 05 00 03 */	cmpwi r5, 3
/* 801DDFB8 001DAF18  40 80 00 DC */	bge lbl_801DE094
/* 801DDFBC 001DAF1C  48 00 00 D0 */	b lbl_801DE08C
lbl_801DDFC0:
/* 801DDFC0 001DAF20  38 00 00 00 */	li r0, 0
/* 801DDFC4 001DAF24  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DDFC8 001DAF28  48 00 00 CC */	b lbl_801DE094
lbl_801DDFCC:
/* 801DDFCC 001DAF2C  80 03 05 EC */	lwz r0, 0x5ec(r3)
/* 801DDFD0 001DAF30  2C 00 00 01 */	cmpwi r0, 1
/* 801DDFD4 001DAF34  41 82 00 C0 */	beq lbl_801DE094
/* 801DDFD8 001DAF38  40 80 00 10 */	bge lbl_801DDFE8
/* 801DDFDC 001DAF3C  2C 00 00 00 */	cmpwi r0, 0
/* 801DDFE0 001DAF40  40 80 00 14 */	bge lbl_801DDFF4
/* 801DDFE4 001DAF44  48 00 00 B0 */	b lbl_801DE094
lbl_801DDFE8:
/* 801DDFE8 001DAF48  2C 00 00 03 */	cmpwi r0, 3
/* 801DDFEC 001DAF4C  40 80 00 A8 */	bge lbl_801DE094
/* 801DDFF0 001DAF50  48 00 00 80 */	b lbl_801DE070
lbl_801DDFF4:
/* 801DDFF4 001DAF54  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801DDFF8 001DAF58  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801DDFFC 001DAF5C  2C 00 00 01 */	cmpwi r0, 1
/* 801DE000 001DAF60  40 82 00 10 */	bne lbl_801DE010
/* 801DE004 001DAF64  38 00 00 02 */	li r0, 2
/* 801DE008 001DAF68  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DE00C 001DAF6C  48 00 00 88 */	b lbl_801DE094
lbl_801DE010:
/* 801DE010 001DAF70  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DE014 001DAF74  38 A0 00 00 */	li r5, 0
/* 801DE018 001DAF78  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DE01C 001DAF7C  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801DE020 001DAF80  90 01 00 08 */	stw r0, 8(r1)
/* 801DE024 001DAF84  38 03 AA 20 */	addi r0, r3, lbl_803DAA20@l
/* 801DE028 001DAF88  3B E4 00 04 */	addi r31, r4, 4
/* 801DE02C 001DAF8C  38 80 00 00 */	li r4, 0
/* 801DE030 001DAF90  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801DE034 001DAF94  7F E3 FB 78 */	mr r3, r31
/* 801DE038 001DAF98  90 01 00 08 */	stw r0, 8(r1)
/* 801DE03C 001DAF9C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DE040 001DAFA0  4B F5 33 F9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DE044 001DAFA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DE048 001DAFA8  3C 60 80 3E */	lis r3, lbl_803DAA20@ha
/* 801DE04C 001DAFAC  38 83 AA 20 */	addi r4, r3, lbl_803DAA20@l
/* 801DE050 001DAFB0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DE054 001DAFB4  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 801DE058 001DAFB8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DE05C 001DAFBC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DE060 001DAFC0  90 81 00 08 */	stw r4, 8(r1)
/* 801DE064 001DAFC4  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 801DE068 001DAFC8  90 01 00 08 */	stw r0, 8(r1)
/* 801DE06C 001DAFCC  48 00 00 28 */	b lbl_801DE094
lbl_801DE070:
/* 801DE070 001DAFD0  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801DE074 001DAFD4  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801DE078 001DAFD8  2C 00 00 01 */	cmpwi r0, 1
/* 801DE07C 001DAFDC  41 82 00 18 */	beq lbl_801DE094
/* 801DE080 001DAFE0  38 00 00 03 */	li r0, 3
/* 801DE084 001DAFE4  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DE088 001DAFE8  48 00 00 0C */	b lbl_801DE094
lbl_801DE08C:
/* 801DE08C 001DAFEC  38 00 00 00 */	li r0, 0
/* 801DE090 001DAFF0  98 03 09 3D */	stb r0, 0x93d(r3)
lbl_801DE094:
/* 801DE094 001DAFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DE098 001DAFF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DE09C 001DAFFC  7C 08 03 A6 */	mtlr r0
/* 801DE0A0 001DB000  38 21 00 20 */	addi r1, r1, 0x20
/* 801DE0A4 001DB004  4E 80 00 20 */	blr

.global HearPlayer__8CThardusFR13CStateManagerf
HearPlayer__8CThardusFR13CStateManagerf:
/* 801DE0A8 001DB008  88 63 05 C8 */	lbz r3, 0x5c8(r3)
/* 801DE0AC 001DB00C  4E 80 00 20 */	blr

.global Touch__8CThardusFR6CActorR13CStateManager
Touch__8CThardusFR6CActorR13CStateManager:
/* 801DE0B0 001DB010  4E 80 00 20 */	blr

.global sub_801de0b4
sub_801de0b4:
/* 801DE0B4 001DB014  80 03 05 EC */	lwz r0, 0x5ec(r3)
/* 801DE0B8 001DB018  20 00 00 03 */	subfic r0, r0, 3
/* 801DE0BC 001DB01C  7C 00 00 34 */	cntlzw r0, r0
/* 801DE0C0 001DB020  54 03 D9 7E */	srwi r3, r0, 5
/* 801DE0C4 001DB024  4E 80 00 20 */	blr

.global Cover__8CThardusFR13CStateManager9EStateMsgf
Cover__8CThardusFR13CStateManager9EStateMsgf:
/* 801DE0C8 001DB028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE0CC 001DB02C  7C 08 02 A6 */	mflr r0
/* 801DE0D0 001DB030  2C 05 00 01 */	cmpwi r5, 1
/* 801DE0D4 001DB034  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE0D8 001DB038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE0DC 001DB03C  7C 9F 23 78 */	mr r31, r4
/* 801DE0E0 001DB040  93 C1 00 08 */	stw r30, 8(r1)
/* 801DE0E4 001DB044  7C 7E 1B 78 */	mr r30, r3
/* 801DE0E8 001DB048  41 82 00 70 */	beq lbl_801DE158
/* 801DE0EC 001DB04C  40 80 00 10 */	bge lbl_801DE0FC
/* 801DE0F0 001DB050  2C 05 00 00 */	cmpwi r5, 0
/* 801DE0F4 001DB054  40 80 00 14 */	bge lbl_801DE108
/* 801DE0F8 001DB058  48 00 00 60 */	b lbl_801DE158
lbl_801DE0FC:
/* 801DE0FC 001DB05C  2C 05 00 03 */	cmpwi r5, 3
/* 801DE100 001DB060  40 80 00 58 */	bge lbl_801DE158
/* 801DE104 001DB064  48 00 00 4C */	b lbl_801DE150
lbl_801DE108:
/* 801DE108 001DB068  7F E5 FB 78 */	mr r5, r31
/* 801DE10C 001DB06C  38 80 00 01 */	li r4, 1
/* 801DE110 001DB070  4B FF D4 51 */	bl sub_801db560
/* 801DE114 001DB074  38 00 00 00 */	li r0, 0
/* 801DE118 001DB078  98 1E 09 3D */	stb r0, 0x93d(r30)
/* 801DE11C 001DB07C  98 1E 09 09 */	stb r0, 0x909(r30)
/* 801DE120 001DB080  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 801DE124 001DB084  80 9E 06 48 */	lwz r4, 0x648(r30)
/* 801DE128 001DB088  38 03 FF FE */	addi r0, r3, -2
/* 801DE12C 001DB08C  7C 04 00 40 */	cmplw r4, r0
/* 801DE130 001DB090  41 80 00 0C */	blt lbl_801DE13C
/* 801DE134 001DB094  C0 02 AD 2C */	lfs f0, lbl_805ACA4C@sda21(r2)
/* 801DE138 001DB098  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_801DE13C:
/* 801DE13C 001DB09C  7F C3 F3 78 */	mr r3, r30
/* 801DE140 001DB0A0  7F E5 FB 78 */	mr r5, r31
/* 801DE144 001DB0A4  38 80 00 33 */	li r4, 0x33
/* 801DE148 001DB0A8  4B E7 62 09 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801DE14C 001DB0AC  48 00 00 0C */	b lbl_801DE158
lbl_801DE150:
/* 801DE150 001DB0B0  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DE154 001DB0B4  D0 1E 06 90 */	stfs f0, 0x690(r30)
lbl_801DE158:
/* 801DE158 001DB0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE15C 001DB0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE160 001DB0C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DE164 001DB0C4  7C 08 03 A6 */	mtlr r0
/* 801DE168 001DB0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE16C 001DB0CC  4E 80 00 20 */	blr

.global GetUp__8CThardusFR13CStateManager9EStateMsgf
GetUp__8CThardusFR13CStateManager9EStateMsgf:
/* 801DE170 001DB0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE174 001DB0D4  7C 08 02 A6 */	mflr r0
/* 801DE178 001DB0D8  2C 05 00 00 */	cmpwi r5, 0
/* 801DE17C 001DB0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE180 001DB0E0  41 82 00 0C */	beq lbl_801DE18C
/* 801DE184 001DB0E4  41 80 00 14 */	blt lbl_801DE198
/* 801DE188 001DB0E8  48 00 00 10 */	b lbl_801DE198
lbl_801DE18C:
/* 801DE18C 001DB0EC  7C 85 23 78 */	mr r5, r4
/* 801DE190 001DB0F0  38 80 00 33 */	li r4, 0x33
/* 801DE194 001DB0F4  4B E7 5D ED */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801DE198:
/* 801DE198 001DB0F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE19C 001DB0FC  7C 08 03 A6 */	mtlr r0
/* 801DE1A0 001DB100  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE1A4 001DB104  4E 80 00 20 */	blr

.global sub_801de1a8
sub_801de1a8:
/* 801DE1A8 001DB108  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801DE1AC 001DB10C  7C 08 02 A6 */	mflr r0
/* 801DE1B0 001DB110  90 01 00 44 */	stw r0, 0x44(r1)
/* 801DE1B4 001DB114  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 801DE1B8 001DB118  7C DF 33 78 */	mr r31, r6
/* 801DE1BC 001DB11C  7C 7C 1B 78 */	mr r28, r3
/* 801DE1C0 001DB120  7C 9D 23 78 */	mr r29, r4
/* 801DE1C4 001DB124  7C BE 2B 78 */	mr r30, r5
/* 801DE1C8 001DB128  80 06 00 00 */	lwz r0, 0(r6)
/* 801DE1CC 001DB12C  28 00 00 10 */	cmplwi r0, 0x10
/* 801DE1D0 001DB130  40 80 00 F4 */	bge lbl_801DE2C4
/* 801DE1D4 001DB134  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 801DE1D8 001DB138  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801DE1DC 001DB13C  41 82 00 E8 */	beq lbl_801DE2C4
/* 801DE1E0 001DB140  7F A3 EB 78 */	mr r3, r29
/* 801DE1E4 001DB144  38 80 00 00 */	li r4, 0
/* 801DE1E8 001DB148  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DE1EC 001DB14C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DE1F0 001DB150  7D 89 03 A6 */	mtctr r12
/* 801DE1F4 001DB154  4E 80 04 21 */	bctrl
/* 801DE1F8 001DB158  80 1F 00 00 */	lwz r0, 0(r31)
/* 801DE1FC 001DB15C  A0 9D 00 08 */	lhz r4, 8(r29)
/* 801DE200 001DB160  54 00 08 3C */	slwi r0, r0, 1
/* 801DE204 001DB164  7C 7F 02 14 */	add r3, r31, r0
/* 801DE208 001DB168  34 63 00 04 */	addic. r3, r3, 4
/* 801DE20C 001DB16C  41 82 00 08 */	beq lbl_801DE214
/* 801DE210 001DB170  B0 83 00 00 */	sth r4, 0(r3)
lbl_801DE214:
/* 801DE214 001DB174  80 7F 00 00 */	lwz r3, 0(r31)
/* 801DE218 001DB178  3B 20 00 00 */	li r25, 0
/* 801DE21C 001DB17C  3B 60 00 00 */	li r27, 0
/* 801DE220 001DB180  38 03 00 01 */	addi r0, r3, 1
/* 801DE224 001DB184  90 1F 00 00 */	stw r0, 0(r31)
/* 801DE228 001DB188  83 5D 00 24 */	lwz r26, 0x24(r29)
/* 801DE22C 001DB18C  48 00 00 78 */	b lbl_801DE2A4
lbl_801DE230:
/* 801DE230 001DB190  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 801DE234 001DB194  38 1B 00 08 */	addi r0, r27, 8
/* 801DE238 001DB198  7F C4 F3 78 */	mr r4, r30
/* 801DE23C 001DB19C  38 61 00 0C */	addi r3, r1, 0xc
/* 801DE240 001DB1A0  7C 05 00 2E */	lwzx r0, r5, r0
/* 801DE244 001DB1A4  38 A1 00 14 */	addi r5, r1, 0x14
/* 801DE248 001DB1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE24C 001DB1AC  4B E6 9C D1 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801DE250 001DB1B0  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 801DE254 001DB1B4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801DE258 001DB1B8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 801DE25C 001DB1BC  7C 03 00 40 */	cmplw r3, r0
/* 801DE260 001DB1C0  41 82 00 3C */	beq lbl_801DE29C
/* 801DE264 001DB1C4  B0 61 00 08 */	sth r3, 8(r1)
/* 801DE268 001DB1C8  7F C3 F3 78 */	mr r3, r30
/* 801DE26C 001DB1CC  38 81 00 08 */	addi r4, r1, 8
/* 801DE270 001DB1D0  4B E6 E3 05 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801DE274 001DB1D4  7C 64 1B 78 */	mr r4, r3
/* 801DE278 001DB1D8  38 61 00 18 */	addi r3, r1, 0x18
/* 801DE27C 001DB1DC  4B EC 82 D1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE280 001DB1E0  80 83 00 04 */	lwz r4, 4(r3)
/* 801DE284 001DB1E4  28 04 00 00 */	cmplwi r4, 0
/* 801DE288 001DB1E8  41 82 00 14 */	beq lbl_801DE29C
/* 801DE28C 001DB1EC  7F 83 E3 78 */	mr r3, r28
/* 801DE290 001DB1F0  7F C5 F3 78 */	mr r5, r30
/* 801DE294 001DB1F4  7F E6 FB 78 */	mr r6, r31
/* 801DE298 001DB1F8  4B FF FF 11 */	bl sub_801de1a8
lbl_801DE29C:
/* 801DE29C 001DB1FC  3B 39 00 01 */	addi r25, r25, 1
/* 801DE2A0 001DB200  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_801DE2A4:
/* 801DE2A4 001DB204  7C 19 D0 40 */	cmplw r25, r26
/* 801DE2A8 001DB208  41 80 FF 88 */	blt lbl_801DE230
/* 801DE2AC 001DB20C  7F A3 EB 78 */	mr r3, r29
/* 801DE2B0 001DB210  38 80 00 01 */	li r4, 1
/* 801DE2B4 001DB214  81 9D 00 00 */	lwz r12, 0(r29)
/* 801DE2B8 001DB218  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801DE2BC 001DB21C  7D 89 03 A6 */	mtctr r12
/* 801DE2C0 001DB220  4E 80 04 21 */	bctrl
lbl_801DE2C4:
/* 801DE2C4 001DB224  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 801DE2C8 001DB228  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801DE2CC 001DB22C  7C 08 03 A6 */	mtlr r0
/* 801DE2D0 001DB230  38 21 00 40 */	addi r1, r1, 0x40
/* 801DE2D4 001DB234  4E 80 00 20 */	blr

.global Render__8CThardusCFRC13CStateManager
Render__8CThardusCFRC13CStateManager:
/* 801DE2D8 001DB238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DE2DC 001DB23C  7C 08 02 A6 */	mflr r0
/* 801DE2E0 001DB240  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DE2E4 001DB244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DE2E8 001DB248  7C 9F 23 78 */	mr r31, r4
/* 801DE2EC 001DB24C  93 C1 00 08 */	stw r30, 8(r1)
/* 801DE2F0 001DB250  7C 7E 1B 78 */	mr r30, r3
/* 801DE2F4 001DB254  4B E9 9D 39 */	bl Render__10CPatternedCFRC13CStateManager
/* 801DE2F8 001DB258  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801DE2FC 001DB25C  7F E4 FB 78 */	mr r4, r31
/* 801DE300 001DB260  80 63 00 00 */	lwz r3, 0(r3)
/* 801DE304 001DB264  4B EB 32 55 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801DE308 001DB268  2C 03 00 03 */	cmpwi r3, 3
/* 801DE30C 001DB26C  40 82 00 1C */	bne lbl_801DE328
/* 801DE310 001DB270  80 1E 07 C4 */	lwz r0, 0x7c4(r30)
/* 801DE314 001DB274  2C 00 00 00 */	cmpwi r0, 0
/* 801DE318 001DB278  41 82 00 10 */	beq lbl_801DE328
/* 801DE31C 001DB27C  C0 3E 07 C0 */	lfs f1, 0x7c0(r30)
/* 801DE320 001DB280  7F C3 F3 78 */	mr r3, r30
/* 801DE324 001DB284  48 00 4F 7D */	bl sub_801e32a0
lbl_801DE328:
/* 801DE328 001DB288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DE32C 001DB28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DE330 001DB290  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DE334 001DB294  7C 08 03 A6 */	mtlr r0
/* 801DE338 001DB298  38 21 00 10 */	addi r1, r1, 0x10
/* 801DE33C 001DB29C  4E 80 00 20 */	blr

.global PreRender__8CThardusFR13CStateManagerRC14CFrustumPlanes
PreRender__8CThardusFR13CStateManagerRC14CFrustumPlanes:
/* 801DE340 001DB2A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DE344 001DB2A4  7C 08 02 A6 */	mflr r0
/* 801DE348 001DB2A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DE34C 001DB2AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DE350 001DB2B0  7C 7F 1B 78 */	mr r31, r3
/* 801DE354 001DB2B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801DE358 001DB2B8  7C 9E 23 78 */	mr r30, r4
/* 801DE35C 001DB2BC  4B E9 9F 81 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 801DE360 001DB2C0  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801DE364 001DB2C4  7F C4 F3 78 */	mr r4, r30
/* 801DE368 001DB2C8  80 63 00 00 */	lwz r3, 0(r3)
/* 801DE36C 001DB2CC  4B EB 31 ED */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801DE370 001DB2D0  2C 03 00 03 */	cmpwi r3, 3
/* 801DE374 001DB2D4  40 82 00 5C */	bne lbl_801DE3D0
/* 801DE378 001DB2D8  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801DE37C 001DB2DC  38 80 00 00 */	li r4, 0
/* 801DE380 001DB2E0  38 00 00 03 */	li r0, 3
/* 801DE384 001DB2E4  98 81 00 10 */	stb r4, 0x10(r1)
/* 801DE388 001DB2E8  FC 40 08 90 */	fmr f2, f1
/* 801DE38C 001DB2EC  38 61 00 14 */	addi r3, r1, 0x14
/* 801DE390 001DB2F0  FC 60 08 90 */	fmr f3, f1
/* 801DE394 001DB2F4  98 81 00 11 */	stb r4, 0x11(r1)
/* 801DE398 001DB2F8  FC 80 08 90 */	fmr f4, f1
/* 801DE39C 001DB2FC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801DE3A0 001DB300  48 18 50 4D */	bl __ct__6CColorFffff
/* 801DE3A4 001DB304  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 801DE3A8 001DB308  88 81 00 11 */	lbz r4, 0x11(r1)
/* 801DE3AC 001DB30C  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 801DE3B0 001DB310  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801DE3B4 001DB314  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801DE3B8 001DB318  60 63 00 01 */	ori r3, r3, 1
/* 801DE3BC 001DB31C  98 1F 00 B4 */	stb r0, 0xb4(r31)
/* 801DE3C0 001DB320  98 9F 00 B5 */	stb r4, 0xb5(r31)
/* 801DE3C4 001DB324  B0 7F 00 B6 */	sth r3, 0xb6(r31)
/* 801DE3C8 001DB328  90 BF 00 B8 */	stw r5, 0xb8(r31)
/* 801DE3CC 001DB32C  48 00 00 50 */	b lbl_801DE41C
lbl_801DE3D0:
/* 801DE3D0 001DB330  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801DE3D4 001DB334  38 80 00 00 */	li r4, 0
/* 801DE3D8 001DB338  38 00 00 03 */	li r0, 3
/* 801DE3DC 001DB33C  98 81 00 08 */	stb r4, 8(r1)
/* 801DE3E0 001DB340  FC 40 08 90 */	fmr f2, f1
/* 801DE3E4 001DB344  38 61 00 0C */	addi r3, r1, 0xc
/* 801DE3E8 001DB348  FC 60 08 90 */	fmr f3, f1
/* 801DE3EC 001DB34C  98 81 00 09 */	stb r4, 9(r1)
/* 801DE3F0 001DB350  FC 80 08 90 */	fmr f4, f1
/* 801DE3F4 001DB354  B0 01 00 0A */	sth r0, 0xa(r1)
/* 801DE3F8 001DB358  48 18 4F F5 */	bl __ct__6CColorFffff
/* 801DE3FC 001DB35C  88 01 00 08 */	lbz r0, 8(r1)
/* 801DE400 001DB360  98 1F 00 B4 */	stb r0, 0xb4(r31)
/* 801DE404 001DB364  88 01 00 09 */	lbz r0, 9(r1)
/* 801DE408 001DB368  98 1F 00 B5 */	stb r0, 0xb5(r31)
/* 801DE40C 001DB36C  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 801DE410 001DB370  B0 1F 00 B6 */	sth r0, 0xb6(r31)
/* 801DE414 001DB374  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DE418 001DB378  90 1F 00 B8 */	stw r0, 0xb8(r31)
lbl_801DE41C:
/* 801DE41C 001DB37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DE420 001DB380  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DE424 001DB384  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801DE428 001DB388  7C 08 03 A6 */	mtlr r0
/* 801DE42C 001DB38C  38 21 00 20 */	addi r1, r1, 0x20
/* 801DE430 001DB390  4E 80 00 20 */	blr

.global sub_801de434
sub_801de434:
/* 801DE434 001DB394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DE438 001DB398  7C 08 02 A6 */	mflr r0
/* 801DE43C 001DB39C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DE440 001DB3A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DE444 001DB3A4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DE448 001DB3A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801DE44C 001DB3AC  7C BD 2B 78 */	mr r29, r5
/* 801DE450 001DB3B0  93 81 00 20 */	stw r28, 0x20(r1)
/* 801DE454 001DB3B4  7C 7C 1B 78 */	mr r28, r3
/* 801DE458 001DB3B8  88 04 08 F1 */	lbz r0, 0x8f1(r4)
/* 801DE45C 001DB3BC  7C 00 07 74 */	extsb r0, r0
/* 801DE460 001DB3C0  2C 00 FF FF */	cmpwi r0, -1
/* 801DE464 001DB3C4  41 82 00 B0 */	beq lbl_801DE514
/* 801DE468 001DB3C8  8B C4 08 F2 */	lbz r30, 0x8f2(r4)
/* 801DE46C 001DB3CC  7F C3 07 74 */	extsb r3, r30
/* 801DE470 001DB3D0  2C 03 FF FF */	cmpwi r3, -1
/* 801DE474 001DB3D4  41 82 00 A0 */	beq lbl_801DE514
/* 801DE478 001DB3D8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801DE47C 001DB3DC  38 C3 00 01 */	addi r6, r3, 1
/* 801DE480 001DB3E0  7F A3 EB 78 */	mr r3, r29
/* 801DE484 001DB3E4  7F E4 02 14 */	add r31, r4, r0
/* 801DE488 001DB3E8  84 BF 05 7C */	lwzu r5, 0x57c(r31)
/* 801DE48C 001DB3EC  7C 06 2B D6 */	divw r0, r6, r5
/* 801DE490 001DB3F0  7C 00 29 D6 */	mullw r0, r0, r5
/* 801DE494 001DB3F4  7C 00 30 50 */	subf r0, r0, r6
/* 801DE498 001DB3F8  98 04 08 F2 */	stb r0, 0x8f2(r4)
/* 801DE49C 001DB3FC  88 04 08 F2 */	lbz r0, 0x8f2(r4)
/* 801DE4A0 001DB400  38 81 00 0C */	addi r4, r1, 0xc
/* 801DE4A4 001DB404  7C 00 07 74 */	extsb r0, r0
/* 801DE4A8 001DB408  54 00 08 3C */	slwi r0, r0, 1
/* 801DE4AC 001DB40C  7C BF 02 14 */	add r5, r31, r0
/* 801DE4B0 001DB410  A0 05 00 04 */	lhz r0, 4(r5)
/* 801DE4B4 001DB414  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DE4B8 001DB418  4B E6 E0 ED */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE4BC 001DB41C  7C 64 1B 78 */	mr r4, r3
/* 801DE4C0 001DB420  38 61 00 18 */	addi r3, r1, 0x18
/* 801DE4C4 001DB424  4B EC 80 89 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE4C8 001DB428  7F C0 07 74 */	extsb r0, r30
/* 801DE4CC 001DB42C  83 C3 00 04 */	lwz r30, 4(r3)
/* 801DE4D0 001DB430  54 00 08 3C */	slwi r0, r0, 1
/* 801DE4D4 001DB434  7F A3 EB 78 */	mr r3, r29
/* 801DE4D8 001DB438  7C BF 02 14 */	add r5, r31, r0
/* 801DE4DC 001DB43C  38 81 00 08 */	addi r4, r1, 8
/* 801DE4E0 001DB440  A0 05 00 04 */	lhz r0, 4(r5)
/* 801DE4E4 001DB444  B0 01 00 08 */	sth r0, 8(r1)
/* 801DE4E8 001DB448  4B E6 E0 BD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE4EC 001DB44C  7C 64 1B 78 */	mr r4, r3
/* 801DE4F0 001DB450  38 61 00 10 */	addi r3, r1, 0x10
/* 801DE4F4 001DB454  4B EC 80 59 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE4F8 001DB458  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801DE4FC 001DB45C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801DE500 001DB460  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801DE504 001DB464  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801DE508 001DB468  D0 3C 00 04 */	stfs f1, 4(r28)
/* 801DE50C 001DB46C  D0 5C 00 08 */	stfs f2, 8(r28)
/* 801DE510 001DB470  48 00 00 20 */	b lbl_801DE530
lbl_801DE514:
/* 801DE514 001DB474  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DE518 001DB478  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801DE51C 001DB47C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 801DE520 001DB480  C0 03 00 04 */	lfs f0, 4(r3)
/* 801DE524 001DB484  D0 1C 00 04 */	stfs f0, 4(r28)
/* 801DE528 001DB488  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DE52C 001DB48C  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_801DE530:
/* 801DE530 001DB490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DE534 001DB494  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DE538 001DB498  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DE53C 001DB49C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801DE540 001DB4A0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801DE544 001DB4A4  7C 08 03 A6 */	mtlr r0
/* 801DE548 001DB4A8  38 21 00 30 */	addi r1, r1, 0x30
/* 801DE54C 001DB4AC  4E 80 00 20 */	blr

.global sub_801de550
sub_801de550:
/* 801DE550 001DB4B0  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 801DE554 001DB4B4  7C 08 02 A6 */	mflr r0
/* 801DE558 001DB4B8  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 801DE55C 001DB4BC  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 801DE560 001DB4C0  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 801DE564 001DB4C4  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 801DE568 001DB4C8  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 801DE56C 001DB4CC  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 801DE570 001DB4D0  F3 A1 01 78 */	psq_st f29, 376(r1), 0, qr0
/* 801DE574 001DB4D4  BE 61 01 3C */	stmw r19, 0x13c(r1)
/* 801DE578 001DB4D8  7C 9E 23 78 */	mr r30, r4
/* 801DE57C 001DB4DC  7C 7D 1B 78 */	mr r29, r3
/* 801DE580 001DB4E0  83 24 05 78 */	lwz r25, 0x578(r4)
/* 801DE584 001DB4E4  7C BF 2B 78 */	mr r31, r5
/* 801DE588 001DB4E8  3B 40 FF FF */	li r26, -1
/* 801DE58C 001DB4EC  3A A0 FF FF */	li r21, -1
/* 801DE590 001DB4F0  28 19 00 00 */	cmplwi r25, 0
/* 801DE594 001DB4F4  41 82 03 AC */	beq lbl_801DE940
/* 801DE598 001DB4F8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801DE59C 001DB4FC  38 00 00 00 */	li r0, 0
/* 801DE5A0 001DB500  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801DE5A4 001DB504  7F 24 CB 78 */	mr r4, r25
/* 801DE5A8 001DB508  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801DE5AC 001DB50C  38 61 01 1C */	addi r3, r1, 0x11c
/* 801DE5B0 001DB510  D0 21 01 14 */	stfs f1, 0x114(r1)
/* 801DE5B4 001DB514  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 801DE5B8 001DB518  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 801DE5BC 001DB51C  90 01 01 20 */	stw r0, 0x120(r1)
/* 801DE5C0 001DB520  90 01 01 24 */	stw r0, 0x124(r1)
/* 801DE5C4 001DB524  90 01 01 28 */	stw r0, 0x128(r1)
/* 801DE5C8 001DB528  4B E8 55 5D */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 801DE5CC 001DB52C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 801DE5D0 001DB530  38 61 00 8C */	addi r3, r1, 0x8c
/* 801DE5D4 001DB534  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 801DE5D8 001DB538  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 801DE5DC 001DB53C  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 801DE5E0 001DB540  D0 41 01 08 */	stfs f2, 0x108(r1)
/* 801DE5E4 001DB544  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 801DE5E8 001DB548  48 13 5C 19 */	bl __ct__9CVector2fFff
/* 801DE5EC 001DB54C  38 61 00 94 */	addi r3, r1, 0x94
/* 801DE5F0 001DB550  38 81 00 8C */	addi r4, r1, 0x8c
/* 801DE5F4 001DB554  48 13 5A 8D */	bl AsNormalized__9CVector2fCFv
/* 801DE5F8 001DB558  3B 9E 05 7C */	addi r28, r30, 0x57c
/* 801DE5FC 001DB55C  3B 60 00 00 */	li r27, 0
/* 801DE600 001DB560  3A C0 00 00 */	li r22, 0
/* 801DE604 001DB564  48 00 01 24 */	b lbl_801DE728
lbl_801DE608:
/* 801DE608 001DB568  7E BC B2 14 */	add r21, r28, r22
/* 801DE60C 001DB56C  C3 C2 AD 30 */	lfs f30, lbl_805ACA50@sda21(r2)
/* 801DE610 001DB570  82 95 00 00 */	lwz r20, 0(r21)
/* 801DE614 001DB574  3B 00 00 00 */	li r24, 0
/* 801DE618 001DB578  3A 60 00 00 */	li r19, 0
/* 801DE61C 001DB57C  3A E0 00 00 */	li r23, 0
/* 801DE620 001DB580  48 00 00 AC */	b lbl_801DE6CC
lbl_801DE624:
/* 801DE624 001DB584  7C 95 BA 14 */	add r4, r21, r23
/* 801DE628 001DB588  7F E3 FB 78 */	mr r3, r31
/* 801DE62C 001DB58C  A0 04 00 04 */	lhz r0, 4(r4)
/* 801DE630 001DB590  38 81 00 18 */	addi r4, r1, 0x18
/* 801DE634 001DB594  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801DE638 001DB598  4B E6 DF 6D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE63C 001DB59C  7C 64 1B 78 */	mr r4, r3
/* 801DE640 001DB5A0  38 61 00 44 */	addi r3, r1, 0x44
/* 801DE644 001DB5A4  4B EC 7F 09 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE648 001DB5A8  80 83 00 04 */	lwz r4, 4(r3)
/* 801DE64C 001DB5AC  38 61 00 84 */	addi r3, r1, 0x84
/* 801DE650 001DB5B0  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801DE654 001DB5B4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801DE658 001DB5B8  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 801DE65C 001DB5BC  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 801DE660 001DB5C0  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 801DE664 001DB5C4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 801DE668 001DB5C8  48 13 5B 99 */	bl __ct__9CVector2fFff
/* 801DE66C 001DB5CC  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 801DE670 001DB5D0  38 61 00 74 */	addi r3, r1, 0x74
/* 801DE674 001DB5D4  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 801DE678 001DB5D8  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 801DE67C 001DB5DC  C0 21 01 10 */	lfs f1, 0x110(r1)
/* 801DE680 001DB5E0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 801DE684 001DB5E4  C0 41 01 14 */	lfs f2, 0x114(r1)
/* 801DE688 001DB5E8  48 13 5B 79 */	bl __ct__9CVector2fFff
/* 801DE68C 001DB5EC  38 61 00 7C */	addi r3, r1, 0x7c
/* 801DE690 001DB5F0  38 81 00 CC */	addi r4, r1, 0xcc
/* 801DE694 001DB5F4  38 A1 00 74 */	addi r5, r1, 0x74
/* 801DE698 001DB5F8  48 13 58 A1 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DE69C 001DB5FC  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 801DE6A0 001DB600  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801DE6A4 001DB604  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 801DE6A8 001DB608  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 801DE6AC 001DB60C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 801DE6B0 001DB610  48 13 5A 45 */	bl Magnitude__9CVector2fCFv
/* 801DE6B4 001DB614  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 801DE6B8 001DB618  40 80 00 0C */	bge lbl_801DE6C4
/* 801DE6BC 001DB61C  7E 78 9B 78 */	mr r24, r19
/* 801DE6C0 001DB620  FF C0 08 90 */	fmr f30, f1
lbl_801DE6C4:
/* 801DE6C4 001DB624  3A 73 00 01 */	addi r19, r19, 1
/* 801DE6C8 001DB628  3A F7 00 02 */	addi r23, r23, 2
lbl_801DE6CC:
/* 801DE6CC 001DB62C  7C 13 A0 40 */	cmplw r19, r20
/* 801DE6D0 001DB630  41 80 FF 54 */	blt lbl_801DE624
/* 801DE6D4 001DB634  80 01 01 20 */	lwz r0, 0x120(r1)
/* 801DE6D8 001DB638  80 A1 01 24 */	lwz r5, 0x124(r1)
/* 801DE6DC 001DB63C  7C 00 28 00 */	cmpw r0, r5
/* 801DE6E0 001DB640  41 80 00 1C */	blt lbl_801DE6FC
/* 801DE6E4 001DB644  2C 05 00 00 */	cmpwi r5, 0
/* 801DE6E8 001DB648  38 61 01 1C */	addi r3, r1, 0x11c
/* 801DE6EC 001DB64C  38 80 00 04 */	li r4, 4
/* 801DE6F0 001DB650  41 82 00 08 */	beq lbl_801DE6F8
/* 801DE6F4 001DB654  54 A4 08 3C */	slwi r4, r5, 1
lbl_801DE6F8:
/* 801DE6F8 001DB658  4B E8 54 2D */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801DE6FC:
/* 801DE6FC 001DB65C  80 01 01 20 */	lwz r0, 0x120(r1)
/* 801DE700 001DB660  80 61 01 28 */	lwz r3, 0x128(r1)
/* 801DE704 001DB664  54 00 10 3A */	slwi r0, r0, 2
/* 801DE708 001DB668  7C 63 02 15 */	add. r3, r3, r0
/* 801DE70C 001DB66C  41 82 00 08 */	beq lbl_801DE714
/* 801DE710 001DB670  93 03 00 00 */	stw r24, 0(r3)
lbl_801DE714:
/* 801DE714 001DB674  80 61 01 20 */	lwz r3, 0x120(r1)
/* 801DE718 001DB678  3B 7B 00 01 */	addi r27, r27, 1
/* 801DE71C 001DB67C  3A D6 00 24 */	addi r22, r22, 0x24
/* 801DE720 001DB680  38 03 00 01 */	addi r0, r3, 1
/* 801DE724 001DB684  90 01 01 20 */	stw r0, 0x120(r1)
lbl_801DE728:
/* 801DE728 001DB688  7C 1B C8 40 */	cmplw r27, r25
/* 801DE72C 001DB68C  41 80 FE DC */	blt lbl_801DE608
/* 801DE730 001DB690  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801DE734 001DB694  38 61 00 6C */	addi r3, r1, 0x6c
/* 801DE738 001DB698  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801DE73C 001DB69C  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801DE740 001DB6A0  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 801DE744 001DB6A4  D0 21 00 EC */	stfs f1, 0xec(r1)
/* 801DE748 001DB6A8  D0 41 00 F0 */	stfs f2, 0xf0(r1)
/* 801DE74C 001DB6AC  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 801DE750 001DB6B0  48 13 5A B1 */	bl __ct__9CVector2fFff
/* 801DE754 001DB6B4  C3 E2 AC DC */	lfs f31, lbl_805AC9FC@sda21(r2)
/* 801DE758 001DB6B8  3B 00 00 00 */	li r24, 0
/* 801DE75C 001DB6BC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 801DE760 001DB6C0  3B 60 00 00 */	li r27, 0
/* 801DE764 001DB6C4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801DE768 001DB6C8  FF C0 F8 90 */	fmr f30, f31
/* 801DE76C 001DB6CC  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 801DE770 001DB6D0  3A E0 00 00 */	li r23, 0
/* 801DE774 001DB6D4  3A C0 00 00 */	li r22, 0
/* 801DE778 001DB6D8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 801DE77C 001DB6DC  48 00 01 5C */	b lbl_801DE8D8
lbl_801DE780:
/* 801DE780 001DB6E0  80 A1 01 28 */	lwz r5, 0x128(r1)
/* 801DE784 001DB6E4  7C DC B2 14 */	add r6, r28, r22
/* 801DE788 001DB6E8  7F E3 FB 78 */	mr r3, r31
/* 801DE78C 001DB6EC  38 81 00 14 */	addi r4, r1, 0x14
/* 801DE790 001DB6F0  7C 05 B8 2E */	lwzx r0, r5, r23
/* 801DE794 001DB6F4  54 00 08 3C */	slwi r0, r0, 1
/* 801DE798 001DB6F8  7C A6 02 14 */	add r5, r6, r0
/* 801DE79C 001DB6FC  A0 05 00 04 */	lhz r0, 4(r5)
/* 801DE7A0 001DB700  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801DE7A4 001DB704  4B E6 DE 01 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE7A8 001DB708  7C 64 1B 78 */	mr r4, r3
/* 801DE7AC 001DB70C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801DE7B0 001DB710  4B EC 7D 9D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE7B4 001DB714  82 63 00 04 */	lwz r19, 4(r3)
/* 801DE7B8 001DB718  7F E5 FB 78 */	mr r5, r31
/* 801DE7BC 001DB71C  38 61 00 0C */	addi r3, r1, 0xc
/* 801DE7C0 001DB720  7E 64 9B 78 */	mr r4, r19
/* 801DE7C4 001DB724  4B E9 89 71 */	bl NextWaypoint__15CScriptWaypointCFR13CStateManager
/* 801DE7C8 001DB728  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801DE7CC 001DB72C  7F E3 FB 78 */	mr r3, r31
/* 801DE7D0 001DB730  38 81 00 10 */	addi r4, r1, 0x10
/* 801DE7D4 001DB734  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801DE7D8 001DB738  4B E6 DD CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE7DC 001DB73C  7C 64 1B 78 */	mr r4, r3
/* 801DE7E0 001DB740  38 61 00 34 */	addi r3, r1, 0x34
/* 801DE7E4 001DB744  4B EC 7D 69 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE7E8 001DB748  C0 53 00 50 */	lfs f2, 0x50(r19)
/* 801DE7EC 001DB74C  C0 33 00 40 */	lfs f1, 0x40(r19)
/* 801DE7F0 001DB750  C0 13 00 60 */	lfs f0, 0x60(r19)
/* 801DE7F4 001DB754  82 63 00 04 */	lwz r19, 4(r3)
/* 801DE7F8 001DB758  38 61 00 64 */	addi r3, r1, 0x64
/* 801DE7FC 001DB75C  D0 21 00 E0 */	stfs f1, 0xe0(r1)
/* 801DE800 001DB760  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 801DE804 001DB764  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 801DE808 001DB768  48 13 59 F9 */	bl __ct__9CVector2fFff
/* 801DE80C 001DB76C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 801DE810 001DB770  38 61 00 5C */	addi r3, r1, 0x5c
/* 801DE814 001DB774  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801DE818 001DB778  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 801DE81C 001DB77C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801DE820 001DB780  C0 53 00 50 */	lfs f2, 0x50(r19)
/* 801DE824 001DB784  C0 33 00 40 */	lfs f1, 0x40(r19)
/* 801DE828 001DB788  C0 13 00 60 */	lfs f0, 0x60(r19)
/* 801DE82C 001DB78C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 801DE830 001DB790  D0 41 00 D8 */	stfs f2, 0xd8(r1)
/* 801DE834 001DB794  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 801DE838 001DB798  48 13 59 C9 */	bl __ct__9CVector2fFff
/* 801DE83C 001DB79C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801DE840 001DB7A0  38 61 00 54 */	addi r3, r1, 0x54
/* 801DE844 001DB7A4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801DE848 001DB7A8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 801DE84C 001DB7AC  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801DE850 001DB7B0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801DE854 001DB7B4  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801DE858 001DB7B8  48 13 56 E1 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DE85C 001DB7BC  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801DE860 001DB7C0  38 61 00 4C */	addi r3, r1, 0x4c
/* 801DE864 001DB7C4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801DE868 001DB7C8  38 81 00 AC */	addi r4, r1, 0xac
/* 801DE86C 001DB7CC  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 801DE870 001DB7D0  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801DE874 001DB7D4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801DE878 001DB7D8  48 13 56 C1 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DE87C 001DB7DC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801DE880 001DB7E0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801DE884 001DB7E4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801DE888 001DB7E8  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801DE88C 001DB7EC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801DE890 001DB7F0  48 13 58 65 */	bl Magnitude__9CVector2fCFv
/* 801DE894 001DB7F4  FF A0 08 90 */	fmr f29, f1
/* 801DE898 001DB7F8  38 61 00 9C */	addi r3, r1, 0x9c
/* 801DE89C 001DB7FC  48 13 58 59 */	bl Magnitude__9CVector2fCFv
/* 801DE8A0 001DB800  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 801DE8A4 001DB804  40 81 00 18 */	ble lbl_801DE8BC
/* 801DE8A8 001DB808  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 801DE8AC 001DB80C  4C 41 13 82 */	cror 2, 1, 2
/* 801DE8B0 001DB810  40 82 00 0C */	bne lbl_801DE8BC
/* 801DE8B4 001DB814  7F 7A 07 74 */	extsb r26, r27
/* 801DE8B8 001DB818  FF E0 E8 90 */	fmr f31, f29
lbl_801DE8BC:
/* 801DE8BC 001DB81C  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 801DE8C0 001DB820  40 81 00 0C */	ble lbl_801DE8CC
/* 801DE8C4 001DB824  7F 78 07 74 */	extsb r24, r27
/* 801DE8C8 001DB828  FF C0 E8 90 */	fmr f30, f29
lbl_801DE8CC:
/* 801DE8CC 001DB82C  3B 7B 00 01 */	addi r27, r27, 1
/* 801DE8D0 001DB830  3A F7 00 04 */	addi r23, r23, 4
/* 801DE8D4 001DB834  3A D6 00 24 */	addi r22, r22, 0x24
lbl_801DE8D8:
/* 801DE8D8 001DB838  7C 1B C8 40 */	cmplw r27, r25
/* 801DE8DC 001DB83C  41 80 FE A4 */	blt lbl_801DE780
/* 801DE8E0 001DB840  7F 40 07 74 */	extsb r0, r26
/* 801DE8E4 001DB844  2C 00 FF FF */	cmpwi r0, -1
/* 801DE8E8 001DB848  40 82 00 08 */	bne lbl_801DE8F0
/* 801DE8EC 001DB84C  7F 1A C3 78 */	mr r26, r24
lbl_801DE8F0:
/* 801DE8F0 001DB850  80 01 01 20 */	lwz r0, 0x120(r1)
/* 801DE8F4 001DB854  7F 44 07 74 */	extsb r4, r26
/* 801DE8F8 001DB858  80 61 01 28 */	lwz r3, 0x128(r1)
/* 801DE8FC 001DB85C  54 84 10 3A */	slwi r4, r4, 2
/* 801DE900 001DB860  54 00 10 3A */	slwi r0, r0, 2
/* 801DE904 001DB864  7C 03 02 14 */	add r0, r3, r0
/* 801DE908 001DB868  7C 83 20 2E */	lwzx r4, r3, r4
/* 801DE90C 001DB86C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801DE910 001DB870  7C 65 1B 78 */	mr r5, r3
/* 801DE914 001DB874  7C 95 07 74 */	extsb r21, r4
/* 801DE918 001DB878  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DE91C 001DB87C  90 61 00 20 */	stw r3, 0x20(r1)
/* 801DE920 001DB880  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801DE924 001DB884  48 00 00 08 */	b lbl_801DE92C
lbl_801DE928:
/* 801DE928 001DB888  38 A5 00 04 */	addi r5, r5, 4
lbl_801DE92C:
/* 801DE92C 001DB88C  7C 05 00 40 */	cmplw r5, r0
/* 801DE930 001DB890  40 82 FF F8 */	bne lbl_801DE928
/* 801DE934 001DB894  28 03 00 00 */	cmplwi r3, 0
/* 801DE938 001DB898  41 82 00 08 */	beq lbl_801DE940
/* 801DE93C 001DB89C  48 13 6F F5 */	bl Free__7CMemoryFPCv
lbl_801DE940:
/* 801DE940 001DB8A0  7F 43 07 74 */	extsb r3, r26
/* 801DE944 001DB8A4  2C 03 FF FF */	cmpwi r3, -1
/* 801DE948 001DB8A8  41 82 00 68 */	beq lbl_801DE9B0
/* 801DE94C 001DB8AC  7E A0 07 74 */	extsb r0, r21
/* 801DE950 001DB8B0  2C 00 FF FF */	cmpwi r0, -1
/* 801DE954 001DB8B4  41 82 00 5C */	beq lbl_801DE9B0
/* 801DE958 001DB8B8  1C 83 00 24 */	mulli r4, r3, 0x24
/* 801DE95C 001DB8BC  9B 5E 08 F1 */	stb r26, 0x8f1(r30)
/* 801DE960 001DB8C0  54 00 08 3C */	slwi r0, r0, 1
/* 801DE964 001DB8C4  9A BE 08 F2 */	stb r21, 0x8f2(r30)
/* 801DE968 001DB8C8  7F E3 FB 78 */	mr r3, r31
/* 801DE96C 001DB8CC  7C 9E 22 14 */	add r4, r30, r4
/* 801DE970 001DB8D0  7C A4 02 14 */	add r5, r4, r0
/* 801DE974 001DB8D4  38 81 00 08 */	addi r4, r1, 8
/* 801DE978 001DB8D8  A0 05 05 80 */	lhz r0, 0x580(r5)
/* 801DE97C 001DB8DC  B0 01 00 08 */	sth r0, 8(r1)
/* 801DE980 001DB8E0  4B E6 DC 25 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801DE984 001DB8E4  7C 64 1B 78 */	mr r4, r3
/* 801DE988 001DB8E8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801DE98C 001DB8EC  4B EC 7B C1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801DE990 001DB8F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801DE994 001DB8F4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801DE998 001DB8F8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801DE99C 001DB8FC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801DE9A0 001DB900  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801DE9A4 001DB904  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801DE9A8 001DB908  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801DE9AC 001DB90C  48 00 00 20 */	b lbl_801DE9CC
lbl_801DE9B0:
/* 801DE9B0 001DB910  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DE9B4 001DB914  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801DE9B8 001DB918  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801DE9BC 001DB91C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801DE9C0 001DB920  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801DE9C4 001DB924  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DE9C8 001DB928  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_801DE9CC:
/* 801DE9CC 001DB92C  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 801DE9D0 001DB930  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 801DE9D4 001DB934  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 801DE9D8 001DB938  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 801DE9DC 001DB93C  E3 A1 01 78 */	psq_l f29, 376(r1), 0, qr0
/* 801DE9E0 001DB940  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 801DE9E4 001DB944  BA 61 01 3C */	lmw r19, 0x13c(r1)
/* 801DE9E8 001DB948  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801DE9EC 001DB94C  7C 08 03 A6 */	mtlr r0
/* 801DE9F0 001DB950  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 801DE9F4 001DB954  4E 80 00 20 */	blr

.global sub_801de9f8
sub_801de9f8:
/* 801DE9F8 001DB958  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DE9FC 001DB95C  7C 08 02 A6 */	mflr r0
/* 801DEA00 001DB960  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DEA04 001DB964  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801DEA08 001DB968  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801DEA0C 001DB96C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DEA10 001DB970  7C 7F 1B 78 */	mr r31, r3
/* 801DEA14 001DB974  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801DEA18 001DB978  48 13 3A C5 */	bl Float__9CRandom16Fv
/* 801DEA1C 001DB97C  FF E0 08 90 */	fmr f31, f1
/* 801DEA20 001DB980  7F E3 FB 78 */	mr r3, r31
/* 801DEA24 001DB984  4B FF D8 A5 */	bl sub_801dc2c8
/* 801DEA28 001DB988  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DEA2C 001DB98C  41 82 00 1C */	beq lbl_801DEA48
/* 801DEA30 001DB990  C0 02 AD 34 */	lfs f0, lbl_805ACA54@sda21(r2)
/* 801DEA34 001DB994  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801DEA38 001DB998  40 80 00 10 */	bge lbl_801DEA48
/* 801DEA3C 001DB99C  38 00 00 01 */	li r0, 1
/* 801DEA40 001DB9A0  98 1F 09 3B */	stb r0, 0x93b(r31)
/* 801DEA44 001DB9A4  48 00 00 7C */	b lbl_801DEAC0
lbl_801DEA48:
/* 801DEA48 001DB9A8  C0 22 AD 38 */	lfs f1, lbl_805ACA58@sda21(r2)
/* 801DEA4C 001DB9AC  C0 0D 92 20 */	lfs f0, lbl_805A7DE0@sda21(r13)
/* 801DEA50 001DB9B0  EC 3F 08 28 */	fsubs f1, f31, f1
/* 801DEA54 001DB9B4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801DEA58 001DB9B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 801DEA5C 001DB9BC  40 80 00 0C */	bge lbl_801DEA68
/* 801DEA60 001DB9C0  38 61 00 08 */	addi r3, r1, 8
/* 801DEA64 001DB9C4  48 00 00 08 */	b lbl_801DEA6C
lbl_801DEA68:
/* 801DEA68 001DB9C8  38 6D 92 20 */	addi r3, r13, lbl_805A7DE0@sda21
lbl_801DEA6C:
/* 801DEA6C 001DB9CC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DEA70 001DB9D0  C0 02 AD 3C */	lfs f0, lbl_805ACA5C@sda21(r2)
/* 801DEA74 001DB9D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEA78 001DB9D8  40 80 00 10 */	bge lbl_801DEA88
/* 801DEA7C 001DB9DC  38 00 00 00 */	li r0, 0
/* 801DEA80 001DB9E0  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 801DEA84 001DB9E4  48 00 00 28 */	b lbl_801DEAAC
lbl_801DEA88:
/* 801DEA88 001DB9E8  C0 02 AD 14 */	lfs f0, lbl_805ACA34@sda21(r2)
/* 801DEA8C 001DB9EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEA90 001DB9F0  4C 40 13 82 */	cror 2, 0, 2
/* 801DEA94 001DB9F4  40 82 00 10 */	bne lbl_801DEAA4
/* 801DEA98 001DB9F8  38 00 00 01 */	li r0, 1
/* 801DEA9C 001DB9FC  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 801DEAA0 001DBA00  48 00 00 0C */	b lbl_801DEAAC
lbl_801DEAA4:
/* 801DEAA4 001DBA04  38 00 00 02 */	li r0, 2
/* 801DEAA8 001DBA08  90 1F 05 C4 */	stw r0, 0x5c4(r31)
lbl_801DEAAC:
/* 801DEAAC 001DBA0C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 801DEAB0 001DBA10  C0 02 AD 34 */	lfs f0, lbl_805ACA54@sda21(r2)
/* 801DEAB4 001DBA14  38 03 00 01 */	addi r0, r3, 1
/* 801DEAB8 001DBA18  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801DEABC 001DBA1C  D0 1F 09 44 */	stfs f0, 0x944(r31)
lbl_801DEAC0:
/* 801DEAC0 001DBA20  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801DEAC4 001DBA24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DEAC8 001DBA28  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801DEACC 001DBA2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DEAD0 001DBA30  7C 08 03 A6 */	mtlr r0
/* 801DEAD4 001DBA34  38 21 00 30 */	addi r1, r1, 0x30
/* 801DEAD8 001DBA38  4E 80 00 20 */	blr

.global sub_801deadc
sub_801deadc:
/* 801DEADC 001DBA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DEAE0 001DBA40  7C 08 02 A6 */	mflr r0
/* 801DEAE4 001DBA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEAE8 001DBA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DEAEC 001DBA4C  7C 9F 23 78 */	mr r31, r4
/* 801DEAF0 001DBA50  93 C1 00 08 */	stw r30, 8(r1)
/* 801DEAF4 001DBA54  7C 7E 1B 78 */	mr r30, r3
/* 801DEAF8 001DBA58  80 03 05 74 */	lwz r0, 0x574(r3)
/* 801DEAFC 001DBA5C  28 00 00 00 */	cmplwi r0, 0
/* 801DEB00 001DBA60  41 82 00 44 */	beq lbl_801DEB44
/* 801DEB04 001DBA64  4B FF D7 C5 */	bl sub_801dc2c8
/* 801DEB08 001DBA68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DEB0C 001DBA6C  41 82 00 28 */	beq lbl_801DEB34
/* 801DEB10 001DBA70  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 801DEB14 001DBA74  2C 00 00 00 */	cmpwi r0, 0
/* 801DEB18 001DBA78  40 82 00 1C */	bne lbl_801DEB34
/* 801DEB1C 001DBA7C  C0 3E 09 44 */	lfs f1, 0x944(r30)
/* 801DEB20 001DBA80  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DEB24 001DBA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEB28 001DBA88  40 81 00 0C */	ble lbl_801DEB34
/* 801DEB2C 001DBA8C  D0 1E 09 44 */	stfs f0, 0x944(r30)
/* 801DEB30 001DBA90  48 00 00 18 */	b lbl_801DEB48
lbl_801DEB34:
/* 801DEB34 001DBA94  7F C3 F3 78 */	mr r3, r30
/* 801DEB38 001DBA98  7F E4 FB 78 */	mr r4, r31
/* 801DEB3C 001DBA9C  4B FF FE BD */	bl sub_801de9f8
/* 801DEB40 001DBAA0  48 00 00 08 */	b lbl_801DEB48
lbl_801DEB44:
/* 801DEB44 001DBAA4  4B FF FE B5 */	bl sub_801de9f8
lbl_801DEB48:
/* 801DEB48 001DBAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DEB4C 001DBAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DEB50 001DBAB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801DEB54 001DBAB4  7C 08 03 A6 */	mtlr r0
/* 801DEB58 001DBAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801DEB5C 001DBABC  4E 80 00 20 */	blr

.global ShouldTurn__8CThardusFR13CStateManagerf
ShouldTurn__8CThardusFR13CStateManagerf:
/* 801DEB60 001DBAC0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801DEB64 001DBAC4  7C 08 02 A6 */	mflr r0
/* 801DEB68 001DBAC8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DEB6C 001DBACC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801DEB70 001DBAD0  7C 7F 1B 78 */	mr r31, r3
/* 801DEB74 001DBAD4  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801DEB78 001DBAD8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801DEB7C 001DBADC  38 61 00 10 */	addi r3, r1, 0x10
/* 801DEB80 001DBAE0  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801DEB84 001DBAE4  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801DEB88 001DBAE8  EC 44 08 28 */	fsubs f2, f4, f1
/* 801DEB8C 001DBAEC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801DEB90 001DBAF0  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801DEB94 001DBAF4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801DEB98 001DBAF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 801DEB9C 001DBAFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801DEBA0 001DBB00  EC 65 18 28 */	fsubs f3, f5, f3
/* 801DEBA4 001DBB04  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801DEBA8 001DBB08  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801DEBAC 001DBB0C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801DEBB0 001DBB10  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801DEBB4 001DBB14  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801DEBB8 001DBB18  48 13 56 49 */	bl __ct__9CVector2fFff
/* 801DEBBC 001DBB1C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801DEBC0 001DBB20  38 61 00 08 */	addi r3, r1, 8
/* 801DEBC4 001DBB24  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801DEBC8 001DBB28  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801DEBCC 001DBB2C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801DEBD0 001DBB30  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801DEBD4 001DBB34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801DEBD8 001DBB38  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801DEBDC 001DBB3C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801DEBE0 001DBB40  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801DEBE4 001DBB44  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801DEBE8 001DBB48  48 13 56 19 */	bl __ct__9CVector2fFff
/* 801DEBEC 001DBB4C  C0 21 00 08 */	lfs f1, 8(r1)
/* 801DEBF0 001DBB50  38 61 00 18 */	addi r3, r1, 0x18
/* 801DEBF4 001DBB54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801DEBF8 001DBB58  38 81 00 20 */	addi r4, r1, 0x20
/* 801DEBFC 001DBB5C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DEC00 001DBB60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DEC04 001DBB64  48 13 53 C1 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801DEC08 001DBB68  FC 20 0A 10 */	fabs f1, f1
/* 801DEC0C 001DBB6C  C0 02 AD 40 */	lfs f0, lbl_805ACA60@sda21(r2)
/* 801DEC10 001DBB70  FC 20 08 18 */	frsp f1, f1
/* 801DEC14 001DBB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEC18 001DBB78  7C 00 00 26 */	mfcr r0
/* 801DEC1C 001DBB7C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801DEC20 001DBB80  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801DEC24 001DBB84  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801DEC28 001DBB88  7C 08 03 A6 */	mtlr r0
/* 801DEC2C 001DBB8C  38 21 00 60 */	addi r1, r1, 0x60
/* 801DEC30 001DBB90  4E 80 00 20 */	blr

.global HitSomething__8CThardusFR13CStateManagerf
HitSomething__8CThardusFR13CStateManagerf:
/* 801DEC34 001DBB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DEC38 001DBB98  7C 08 02 A6 */	mflr r0
/* 801DEC3C 001DBB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DEC40 001DBBA0  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801DEC44 001DBBA4  4B E3 70 B9 */	bl GetFrozenState__7CPlayerCFv
/* 801DEC48 001DBBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DEC4C 001DBBAC  7C 08 03 A6 */	mtlr r0
/* 801DEC50 001DBBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DEC54 001DBBB4  4E 80 00 20 */	blr

.global sub_801dec58
sub_801dec58:
/* 801DEC58 001DBBB8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 801DEC5C 001DBBBC  38 80 00 00 */	li r4, 0
/* 801DEC60 001DBBC0  28 00 00 01 */	cmplwi r0, 1
/* 801DEC64 001DBBC4  40 80 00 10 */	bge lbl_801DEC74
/* 801DEC68 001DBBC8  88 03 09 3B */	lbz r0, 0x93b(r3)
/* 801DEC6C 001DBBCC  28 00 00 00 */	cmplwi r0, 0
/* 801DEC70 001DBBD0  41 82 00 08 */	beq lbl_801DEC78
lbl_801DEC74:
/* 801DEC74 001DBBD4  38 80 00 01 */	li r4, 1
lbl_801DEC78:
/* 801DEC78 001DBBD8  7C 83 23 78 */	mr r3, r4
/* 801DEC7C 001DBBDC  4E 80 00 20 */	blr

.global sub_801dec80
sub_801dec80:
/* 801DEC80 001DBBE0  38 00 4E 20 */	li r0, 0x4e20
/* 801DEC84 001DBBE4  90 03 06 8C */	stw r0, 0x68c(r3)
/* 801DEC88 001DBBE8  4E 80 00 20 */	blr

.global ShouldMove__8CThardusFR13CStateManagerf
ShouldMove__8CThardusFR13CStateManagerf:
/* 801DEC8C 001DBBEC  80 83 05 74 */	lwz r4, 0x574(r3)
/* 801DEC90 001DBBF0  38 A0 00 00 */	li r5, 0
/* 801DEC94 001DBBF4  80 03 06 8C */	lwz r0, 0x68c(r3)
/* 801DEC98 001DBBF8  7C 04 00 40 */	cmplw r4, r0
/* 801DEC9C 001DBBFC  41 81 00 10 */	bgt lbl_801DECAC
/* 801DECA0 001DBC00  88 03 09 3B */	lbz r0, 0x93b(r3)
/* 801DECA4 001DBC04  28 00 00 00 */	cmplwi r0, 0
/* 801DECA8 001DBC08  41 82 00 08 */	beq lbl_801DECB0
lbl_801DECAC:
/* 801DECAC 001DBC0C  38 A0 00 01 */	li r5, 1
lbl_801DECB0:
/* 801DECB0 001DBC10  7C A3 2B 78 */	mr r3, r5
/* 801DECB4 001DBC14  4E 80 00 20 */	blr

.global CoveringFire__8CThardusFR13CStateManagerf
CoveringFire__8CThardusFR13CStateManagerf:
/* 801DECB8 001DBC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DECBC 001DBC1C  7C 08 02 A6 */	mflr r0
/* 801DECC0 001DBC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DECC4 001DBC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DECC8 001DBC28  3B E0 00 00 */	li r31, 0
/* 801DECCC 001DBC2C  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 801DECD0 001DBC30  2C 00 00 00 */	cmpwi r0, 0
/* 801DECD4 001DBC34  40 82 00 24 */	bne lbl_801DECF8
/* 801DECD8 001DBC38  81 83 00 00 */	lwz r12, 0(r3)
/* 801DECDC 001DBC3C  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DECE0 001DBC40  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 801DECE4 001DBC44  7D 89 03 A6 */	mtctr r12
/* 801DECE8 001DBC48  4E 80 04 21 */	bctrl
/* 801DECEC 001DBC4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DECF0 001DBC50  40 82 00 08 */	bne lbl_801DECF8
/* 801DECF4 001DBC54  3B E0 00 01 */	li r31, 1
lbl_801DECF8:
/* 801DECF8 001DBC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DECFC 001DBC5C  7F E3 FB 78 */	mr r3, r31
/* 801DED00 001DBC60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DED04 001DBC64  7C 08 03 A6 */	mtlr r0
/* 801DED08 001DBC68  38 21 00 10 */	addi r1, r1, 0x10
/* 801DED0C 001DBC6C  4E 80 00 20 */	blr

.global HasAttackPattern__8CThardusFR13CStateManagerf
HasAttackPattern__8CThardusFR13CStateManagerf:
/* 801DED10 001DBC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801DED14 001DBC74  7C 08 02 A6 */	mflr r0
/* 801DED18 001DBC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DED1C 001DBC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DED20 001DBC80  3B E0 00 00 */	li r31, 0
/* 801DED24 001DBC84  80 03 05 C4 */	lwz r0, 0x5c4(r3)
/* 801DED28 001DBC88  2C 00 00 01 */	cmpwi r0, 1
/* 801DED2C 001DBC8C  40 82 00 24 */	bne lbl_801DED50
/* 801DED30 001DBC90  81 83 00 00 */	lwz r12, 0(r3)
/* 801DED34 001DBC94  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DED38 001DBC98  81 8C 02 4C */	lwz r12, 0x24c(r12)
/* 801DED3C 001DBC9C  7D 89 03 A6 */	mtctr r12
/* 801DED40 001DBCA0  4E 80 04 21 */	bctrl
/* 801DED44 001DBCA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DED48 001DBCA8  40 82 00 08 */	bne lbl_801DED50
/* 801DED4C 001DBCAC  3B E0 00 01 */	li r31, 1
lbl_801DED50:
/* 801DED50 001DBCB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DED54 001DBCB4  7F E3 FB 78 */	mr r3, r31
/* 801DED58 001DBCB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DED5C 001DBCBC  7C 08 03 A6 */	mtlr r0
/* 801DED60 001DBCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 801DED64 001DBCC4  4E 80 00 20 */	blr

.global InRange__8CThardusFR13CStateManagerf
InRange__8CThardusFR13CStateManagerf:
/* 801DED68 001DBCC8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801DED6C 001DBCCC  7C 08 02 A6 */	mflr r0
/* 801DED70 001DBCD0  90 01 00 64 */	stw r0, 0x64(r1)
/* 801DED74 001DBCD4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801DED78 001DBCD8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801DED7C 001DBCDC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801DED80 001DBCE0  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 801DED84 001DBCE4  7C 9F 23 78 */	mr r31, r4
/* 801DED88 001DBCE8  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801DED8C 001DBCEC  80 83 00 64 */	lwz r4, 0x64(r3)
/* 801DED90 001DBCF0  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801DED94 001DBCF4  38 61 00 08 */	addi r3, r1, 8
/* 801DED98 001DBCF8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801DED9C 001DBCFC  C3 E4 00 00 */	lfs f31, 0(r4)
/* 801DEDA0 001DBD00  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801DEDA4 001DBD04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801DEDA8 001DBD08  48 13 54 59 */	bl __ct__9CVector2fFff
/* 801DEDAC 001DBD0C  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801DEDB0 001DBD10  38 61 00 10 */	addi r3, r1, 0x10
/* 801DEDB4 001DBD14  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801DEDB8 001DBD18  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801DEDBC 001DBD1C  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 801DEDC0 001DBD20  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801DEDC4 001DBD24  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801DEDC8 001DBD28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801DEDCC 001DBD2C  48 13 54 35 */	bl __ct__9CVector2fFff
/* 801DEDD0 001DBD30  38 61 00 18 */	addi r3, r1, 0x18
/* 801DEDD4 001DBD34  38 81 00 10 */	addi r4, r1, 0x10
/* 801DEDD8 001DBD38  38 A1 00 08 */	addi r5, r1, 8
/* 801DEDDC 001DBD3C  48 13 51 5D */	bl __mi__FRC9CVector2fRC9CVector2f
/* 801DEDE0 001DBD40  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801DEDE4 001DBD44  38 61 00 20 */	addi r3, r1, 0x20
/* 801DEDE8 001DBD48  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801DEDEC 001DBD4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801DEDF0 001DBD50  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801DEDF4 001DBD54  48 13 53 01 */	bl Magnitude__9CVector2fCFv
/* 801DEDF8 001DBD58  C0 02 AD 00 */	lfs f0, lbl_805ACA20@sda21(r2)
/* 801DEDFC 001DBD5C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801DEE00 001DBD60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEE04 001DBD64  7C 00 00 26 */	mfcr r0
/* 801DEE08 001DBD68  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801DEE0C 001DBD6C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801DEE10 001DBD70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801DEE14 001DBD74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801DEE18 001DBD78  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801DEE1C 001DBD7C  7C 08 03 A6 */	mtlr r0
/* 801DEE20 001DBD80  38 21 00 60 */	addi r1, r1, 0x60
/* 801DEE24 001DBD84  4E 80 00 20 */	blr

.global ShouldTaunt__8CThardusFR13CStateManagerf
ShouldTaunt__8CThardusFR13CStateManagerf:
/* 801DEE28 001DBD88  38 60 00 00 */	li r3, 0
/* 801DEE2C 001DBD8C  4E 80 00 20 */	blr

.global InPosition__8CThardusFR13CStateManagerf
InPosition__8CThardusFR13CStateManagerf:
/* 801DEE30 001DBD90  80 63 06 60 */	lwz r3, 0x660(r3)
/* 801DEE34 001DBD94  38 00 00 03 */	li r0, 3
/* 801DEE38 001DBD98  7C 60 02 78 */	xor r0, r3, r0
/* 801DEE3C 001DBD9C  7C 00 00 34 */	cntlzw r0, r0
/* 801DEE40 001DBDA0  7C 60 00 30 */	slw r0, r3, r0
/* 801DEE44 001DBDA4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801DEE48 001DBDA8  4E 80 00 20 */	blr

.global Dead__8CThardusFR13CStateManager9EStateMsgf
Dead__8CThardusFR13CStateManager9EStateMsgf:
/* 801DEE4C 001DBDAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DEE50 001DBDB0  7C 08 02 A6 */	mflr r0
/* 801DEE54 001DBDB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DEE58 001DBDB8  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801DEE5C 001DBDBC  FF E0 08 90 */	fmr f31, f1
/* 801DEE60 001DBDC0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801DEE64 001DBDC4  7C BF 2B 79 */	or. r31, r5, r5
/* 801DEE68 001DBDC8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801DEE6C 001DBDCC  7C 9E 23 78 */	mr r30, r4
/* 801DEE70 001DBDD0  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801DEE74 001DBDD4  7C 7D 1B 78 */	mr r29, r3
/* 801DEE78 001DBDD8  41 82 00 0C */	beq lbl_801DEE84
/* 801DEE7C 001DBDDC  41 80 00 48 */	blt lbl_801DEEC4
/* 801DEE80 001DBDE0  48 00 00 44 */	b lbl_801DEEC4
lbl_801DEE84:
/* 801DEE84 001DBDE4  38 7D 00 34 */	addi r3, r29, 0x34
/* 801DEE88 001DBDE8  38 9D 07 64 */	addi r4, r29, 0x764
/* 801DEE8C 001DBDEC  48 13 3C B5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801DEE90 001DBDF0  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801DEE94 001DBDF4  38 A0 00 01 */	li r5, 1
/* 801DEE98 001DBDF8  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 801DEE9C 001DBDFC  7F A3 EB 78 */	mr r3, r29
/* 801DEEA0 001DBE00  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801DEEA4 001DBE04  7F C4 F3 78 */	mr r4, r30
/* 801DEEA8 001DBE08  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801DEEAC 001DBE0C  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 801DEEB0 001DBE10  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801DEEB4 001DBE14  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801DEEB8 001DBE18  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 801DEEBC 001DBE1C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 801DEEC0 001DBE20  4B FF CD 81 */	bl sub_801dbc40
lbl_801DEEC4:
/* 801DEEC4 001DBE24  FC 20 F8 90 */	fmr f1, f31
/* 801DEEC8 001DBE28  7F A3 EB 78 */	mr r3, r29
/* 801DEECC 001DBE2C  7F C4 F3 78 */	mr r4, r30
/* 801DEED0 001DBE30  7F E5 FB 78 */	mr r5, r31
/* 801DEED4 001DBE34  48 01 7A F1 */	bl Dead__10CPatternedFR13CStateManager9EStateMsgf
/* 801DEED8 001DBE38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DEEDC 001DBE3C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801DEEE0 001DBE40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801DEEE4 001DBE44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801DEEE8 001DBE48  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801DEEEC 001DBE4C  7C 08 03 A6 */	mtlr r0
/* 801DEEF0 001DBE50  38 21 00 20 */	addi r1, r1, 0x20
/* 801DEEF4 001DBE54  4E 80 00 20 */	blr

.global Attack__8CThardusFR13CStateManager9EStateMsgf
Attack__8CThardusFR13CStateManager9EStateMsgf:
/* 801DEEF8 001DBE58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801DEEFC 001DBE5C  7C 08 02 A6 */	mflr r0
/* 801DEF00 001DBE60  2C 05 00 01 */	cmpwi r5, 1
/* 801DEF04 001DBE64  90 01 00 54 */	stw r0, 0x54(r1)
/* 801DEF08 001DBE68  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801DEF0C 001DBE6C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801DEF10 001DBE70  7C 7E 1B 78 */	mr r30, r3
/* 801DEF14 001DBE74  41 82 00 34 */	beq lbl_801DEF48
/* 801DEF18 001DBE78  40 80 02 04 */	bge lbl_801DF11C
/* 801DEF1C 001DBE7C  2C 05 00 00 */	cmpwi r5, 0
/* 801DEF20 001DBE80  40 80 00 0C */	bge lbl_801DEF2C
/* 801DEF24 001DBE84  48 00 01 F8 */	b lbl_801DF11C
/* 801DEF28 001DBE88  48 00 01 F4 */	b lbl_801DF11C
lbl_801DEF2C:
/* 801DEF2C 001DBE8C  38 80 00 00 */	li r4, 0
/* 801DEF30 001DBE90  90 9E 05 EC */	stw r4, 0x5ec(r30)
/* 801DEF34 001DBE94  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 801DEF38 001DBE98  38 03 00 01 */	addi r0, r3, 1
/* 801DEF3C 001DBE9C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 801DEF40 001DBEA0  90 9E 05 EC */	stw r4, 0x5ec(r30)
/* 801DEF44 001DBEA4  48 00 01 D8 */	b lbl_801DF11C
lbl_801DEF48:
/* 801DEF48 001DBEA8  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DEF4C 001DBEAC  2C 00 00 01 */	cmpwi r0, 1
/* 801DEF50 001DBEB0  41 82 01 CC */	beq lbl_801DF11C
/* 801DEF54 001DBEB4  40 80 00 10 */	bge lbl_801DEF64
/* 801DEF58 001DBEB8  2C 00 00 00 */	cmpwi r0, 0
/* 801DEF5C 001DBEBC  40 80 00 14 */	bge lbl_801DEF70
/* 801DEF60 001DBEC0  48 00 01 BC */	b lbl_801DF11C
lbl_801DEF64:
/* 801DEF64 001DBEC4  2C 00 00 03 */	cmpwi r0, 3
/* 801DEF68 001DBEC8  40 80 01 B4 */	bge lbl_801DF11C
/* 801DEF6C 001DBECC  48 00 01 98 */	b lbl_801DF104
lbl_801DEF70:
/* 801DEF70 001DBED0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DEF74 001DBED4  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DEF78 001DBED8  2C 00 00 07 */	cmpwi r0, 7
/* 801DEF7C 001DBEDC  40 82 00 10 */	bne lbl_801DEF8C
/* 801DEF80 001DBEE0  38 00 00 02 */	li r0, 2
/* 801DEF84 001DBEE4  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DEF88 001DBEE8  48 00 01 94 */	b lbl_801DF11C
lbl_801DEF8C:
/* 801DEF8C 001DBEEC  80 64 09 00 */	lwz r3, 0x900(r4)
/* 801DEF90 001DBEF0  48 13 35 4D */	bl Float__9CRandom16Fv
/* 801DEF94 001DBEF4  C0 02 AC F8 */	lfs f0, lbl_805ACA18@sda21(r2)
/* 801DEF98 001DBEF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DEF9C 001DBEFC  40 81 00 AC */	ble lbl_801DF048
/* 801DEFA0 001DBF00  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DEFA4 001DBF04  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DEFA8 001DBF08  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801DEFAC 001DBF0C  38 E4 AA 68 */	addi r7, r4, lbl_803DAA68@l
/* 801DEFB0 001DBF10  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 801DEFB4 001DBF14  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801DEFB8 001DBF18  38 00 00 00 */	li r0, 0
/* 801DEFBC 001DBF1C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801DEFC0 001DBF20  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DEFC4 001DBF24  38 A4 A9 D8 */	addi r5, r4, lbl_803DA9D8@l
/* 801DEFC8 001DBF28  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DEFCC 001DBF2C  38 C0 00 05 */	li r6, 5
/* 801DEFD0 001DBF30  90 C1 00 28 */	stw r6, 0x28(r1)
/* 801DEFD4 001DBF34  38 80 00 05 */	li r4, 5
/* 801DEFD8 001DBF38  3B E3 00 04 */	addi r31, r3, 4
/* 801DEFDC 001DBF3C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 801DEFE0 001DBF40  7F E3 FB 78 */	mr r3, r31
/* 801DEFE4 001DBF44  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801DEFE8 001DBF48  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801DEFEC 001DBF4C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801DEFF0 001DBF50  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DEFF4 001DBF54  98 01 00 3C */	stb r0, 0x3c(r1)
/* 801DEFF8 001DBF58  4B F5 24 41 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DEFFC 001DBF5C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801DF000 001DBF60  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801DF004 001DBF64  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801DF008 001DBF68  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF00C 001DBF6C  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801DF010 001DBF70  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DF014 001DBF74  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801DF018 001DBF78  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 801DF01C 001DBF7C  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801DF020 001DBF80  80 61 00 34 */	lwz r3, 0x34(r1)
/* 801DF024 001DBF84  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801DF028 001DBF88  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 801DF02C 001DBF8C  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801DF030 001DBF90  88 61 00 3C */	lbz r3, 0x3c(r1)
/* 801DF034 001DBF94  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801DF038 001DBF98  90 81 00 24 */	stw r4, 0x24(r1)
/* 801DF03C 001DBF9C  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801DF040 001DBFA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF044 001DBFA4  48 00 00 B0 */	b lbl_801DF0F4
lbl_801DF048:
/* 801DF048 001DBFA8  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801DF04C 001DBFAC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DF050 001DBFB0  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801DF054 001DBFB4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DF058 001DBFB8  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 801DF05C 001DBFBC  C0 44 00 00 */	lfs f2, 0(r4)
/* 801DF060 001DBFC0  C0 24 00 04 */	lfs f1, 4(r4)
/* 801DF064 001DBFC4  3C C0 80 3E */	lis r6, lbl_803DA9D8@ha
/* 801DF068 001DBFC8  C0 04 00 08 */	lfs f0, 8(r4)
/* 801DF06C 001DBFCC  38 E0 00 05 */	li r7, 5
/* 801DF070 001DBFD0  38 A0 00 01 */	li r5, 1
/* 801DF074 001DBFD4  38 00 00 00 */	li r0, 0
/* 801DF078 001DBFD8  3B E3 00 04 */	addi r31, r3, 4
/* 801DF07C 001DBFDC  91 01 00 08 */	stw r8, 8(r1)
/* 801DF080 001DBFE0  38 C6 A9 D8 */	addi r6, r6, lbl_803DA9D8@l
/* 801DF084 001DBFE4  38 80 00 05 */	li r4, 5
/* 801DF088 001DBFE8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801DF08C 001DBFEC  7F E3 FB 78 */	mr r3, r31
/* 801DF090 001DBFF0  90 C1 00 08 */	stw r6, 8(r1)
/* 801DF094 001DBFF4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DF098 001DBFF8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801DF09C 001DBFFC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DF0A0 001DC000  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DF0A4 001DC004  98 01 00 20 */	stb r0, 0x20(r1)
/* 801DF0A8 001DC008  4B F5 23 91 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DF0AC 001DC00C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DF0B0 001DC010  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 801DF0B4 001DC014  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 801DF0B8 001DC018  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF0BC 001DC01C  90 1F 01 10 */	stw r0, 0x110(r31)
/* 801DF0C0 001DC020  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DF0C4 001DC024  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DF0C8 001DC028  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801DF0CC 001DC02C  90 7F 01 14 */	stw r3, 0x114(r31)
/* 801DF0D0 001DC030  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801DF0D4 001DC034  90 BF 01 18 */	stw r5, 0x118(r31)
/* 801DF0D8 001DC038  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 801DF0DC 001DC03C  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 801DF0E0 001DC040  88 61 00 20 */	lbz r3, 0x20(r1)
/* 801DF0E4 001DC044  90 BF 01 20 */	stw r5, 0x120(r31)
/* 801DF0E8 001DC048  90 81 00 08 */	stw r4, 8(r1)
/* 801DF0EC 001DC04C  98 7F 01 24 */	stb r3, 0x124(r31)
/* 801DF0F0 001DC050  90 01 00 08 */	stw r0, 8(r1)
lbl_801DF0F4:
/* 801DF0F4 001DC054  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 801DF0F8 001DC058  38 03 00 01 */	addi r0, r3, 1
/* 801DF0FC 001DC05C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 801DF100 001DC060  48 00 00 1C */	b lbl_801DF11C
lbl_801DF104:
/* 801DF104 001DC064  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DF108 001DC068  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DF10C 001DC06C  2C 00 00 07 */	cmpwi r0, 7
/* 801DF110 001DC070  41 82 00 0C */	beq lbl_801DF11C
/* 801DF114 001DC074  38 00 00 03 */	li r0, 3
/* 801DF118 001DC078  90 1E 05 EC */	stw r0, 0x5ec(r30)
lbl_801DF11C:
/* 801DF11C 001DC07C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801DF120 001DC080  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801DF124 001DC084  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801DF128 001DC088  7C 08 03 A6 */	mtlr r0
/* 801DF12C 001DC08C  38 21 00 50 */	addi r1, r1, 0x50
/* 801DF130 001DC090  4E 80 00 20 */	blr

.global LoopedAttack__8CThardusFR13CStateManager9EStateMsgf
LoopedAttack__8CThardusFR13CStateManager9EStateMsgf:
/* 801DF134 001DC094  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 801DF138 001DC098  7C 08 02 A6 */	mflr r0
/* 801DF13C 001DC09C  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 801DF140 001DC0A0  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 801DF144 001DC0A4  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, qr0
/* 801DF148 001DC0A8  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 801DF14C 001DC0AC  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, qr0
/* 801DF150 001DC0B0  93 E1 01 BC */	stw r31, 0x1bc(r1)
/* 801DF154 001DC0B4  93 C1 01 B8 */	stw r30, 0x1b8(r1)
/* 801DF158 001DC0B8  93 A1 01 B4 */	stw r29, 0x1b4(r1)
/* 801DF15C 001DC0BC  93 81 01 B0 */	stw r28, 0x1b0(r1)
/* 801DF160 001DC0C0  2C 05 00 01 */	cmpwi r5, 1
/* 801DF164 001DC0C4  7C 7F 1B 78 */	mr r31, r3
/* 801DF168 001DC0C8  7C 9C 23 78 */	mr r28, r4
/* 801DF16C 001DC0CC  41 82 00 44 */	beq lbl_801DF1B0
/* 801DF170 001DC0D0  40 80 04 40 */	bge lbl_801DF5B0
/* 801DF174 001DC0D4  2C 05 00 00 */	cmpwi r5, 0
/* 801DF178 001DC0D8  40 80 00 0C */	bge lbl_801DF184
/* 801DF17C 001DC0DC  48 00 04 34 */	b lbl_801DF5B0
/* 801DF180 001DC0E0  48 00 04 30 */	b lbl_801DF5B0
lbl_801DF184:
/* 801DF184 001DC0E4  38 00 00 00 */	li r0, 0
/* 801DF188 001DC0E8  90 1F 06 58 */	stw r0, 0x658(r31)
/* 801DF18C 001DC0EC  90 1F 06 60 */	stw r0, 0x660(r31)
/* 801DF190 001DC0F0  90 1F 05 70 */	stw r0, 0x570(r31)
/* 801DF194 001DC0F4  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801DF198 001DC0F8  4B FF FA E9 */	bl sub_801dec80
/* 801DF19C 001DC0FC  38 60 00 00 */	li r3, 0
/* 801DF1A0 001DC100  38 00 FF FF */	li r0, -1
/* 801DF1A4 001DC104  98 7F 09 3B */	stb r3, 0x93b(r31)
/* 801DF1A8 001DC108  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 801DF1AC 001DC10C  48 00 04 04 */	b lbl_801DF5B0
lbl_801DF1B0:
/* 801DF1B0 001DC110  80 1F 06 58 */	lwz r0, 0x658(r31)
/* 801DF1B4 001DC114  C0 FF 00 60 */	lfs f7, 0x60(r31)
/* 801DF1B8 001DC118  C0 DF 00 50 */	lfs f6, 0x50(r31)
/* 801DF1BC 001DC11C  2C 00 00 01 */	cmpwi r0, 1
/* 801DF1C0 001DC120  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 801DF1C4 001DC124  D0 C1 00 CC */	stfs f6, 0xcc(r1)
/* 801DF1C8 001DC128  D0 A1 00 C8 */	stfs f5, 0xc8(r1)
/* 801DF1CC 001DC12C  D0 E1 00 D0 */	stfs f7, 0xd0(r1)
/* 801DF1D0 001DC130  41 82 01 3C */	beq lbl_801DF30C
/* 801DF1D4 001DC134  40 80 03 58 */	bge lbl_801DF52C
/* 801DF1D8 001DC138  2C 00 00 00 */	cmpwi r0, 0
/* 801DF1DC 001DC13C  40 80 00 0C */	bge lbl_801DF1E8
/* 801DF1E0 001DC140  48 00 03 4C */	b lbl_801DF52C
/* 801DF1E4 001DC144  48 00 03 48 */	b lbl_801DF52C
lbl_801DF1E8:
/* 801DF1E8 001DC148  80 BC 08 4C */	lwz r5, 0x84c(r28)
/* 801DF1EC 001DC14C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 801DF1F0 001DC150  38 81 00 A4 */	addi r4, r1, 0xa4
/* 801DF1F4 001DC154  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 801DF1F8 001DC158  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 801DF1FC 001DC15C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 801DF200 001DC160  EC 44 38 28 */	fsubs f2, f4, f7
/* 801DF204 001DC164  EC 60 30 28 */	fsubs f3, f0, f6
/* 801DF208 001DC168  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 801DF20C 001DC16C  EC 01 28 28 */	fsubs f0, f1, f5
/* 801DF210 001DC170  D0 21 00 BC */	stfs f1, 0xbc(r1)
/* 801DF214 001DC174  D0 81 00 C4 */	stfs f4, 0xc4(r1)
/* 801DF218 001DC178  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 801DF21C 001DC17C  D0 61 00 9C */	stfs f3, 0x9c(r1)
/* 801DF220 001DC180  D0 41 00 A0 */	stfs f2, 0xa0(r1)
/* 801DF224 001DC184  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801DF228 001DC188  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 801DF22C 001DC18C  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 801DF230 001DC190  48 13 56 21 */	bl AsNormalized__9CVector3fCFv
/* 801DF234 001DC194  C3 E1 00 B0 */	lfs f31, 0xb0(r1)
/* 801DF238 001DC198  7F E4 FB 78 */	mr r4, r31
/* 801DF23C 001DC19C  C3 C1 00 B4 */	lfs f30, 0xb4(r1)
/* 801DF240 001DC1A0  7F 85 E3 78 */	mr r5, r28
/* 801DF244 001DC1A4  38 61 00 28 */	addi r3, r1, 0x28
/* 801DF248 001DC1A8  4B FF B9 E9 */	bl sub_801dac30
/* 801DF24C 001DC1AC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801DF250 001DC1B0  38 61 00 38 */	addi r3, r1, 0x38
/* 801DF254 001DC1B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801DF258 001DC1B8  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DF25C 001DC1BC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801DF260 001DC1C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801DF264 001DC1C4  48 13 4C A5 */	bl __eq__FRC9CVector2fRC9CVector2f
/* 801DF268 001DC1C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DF26C 001DC1CC  40 82 00 18 */	bne lbl_801DF284
/* 801DF270 001DC1D0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801DF274 001DC1D4  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 801DF278 001DC1D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801DF27C 001DC1DC  D0 1F 06 54 */	stfs f0, 0x654(r31)
/* 801DF280 001DC1E0  48 00 00 30 */	b lbl_801DF2B0
lbl_801DF284:
/* 801DF284 001DC1E4  FC 20 F8 90 */	fmr f1, f31
/* 801DF288 001DC1E8  38 61 00 18 */	addi r3, r1, 0x18
/* 801DF28C 001DC1EC  FC 40 F0 90 */	fmr f2, f30
/* 801DF290 001DC1F0  48 13 4F 71 */	bl __ct__9CVector2fFff
/* 801DF294 001DC1F4  38 61 00 20 */	addi r3, r1, 0x20
/* 801DF298 001DC1F8  38 81 00 18 */	addi r4, r1, 0x18
/* 801DF29C 001DC1FC  48 13 4D E5 */	bl AsNormalized__9CVector2fCFv
/* 801DF2A0 001DC200  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801DF2A4 001DC204  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 801DF2A8 001DC208  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801DF2AC 001DC20C  D0 1F 06 54 */	stfs f0, 0x654(r31)
lbl_801DF2B0:
/* 801DF2B0 001DC210  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 801DF2B4 001DC214  38 61 00 8C */	addi r3, r1, 0x8c
/* 801DF2B8 001DC218  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 801DF2BC 001DC21C  C0 41 00 C4 */	lfs f2, 0xc4(r1)
/* 801DF2C0 001DC220  EC 61 00 28 */	fsubs f3, f1, f0
/* 801DF2C4 001DC224  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 801DF2C8 001DC228  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 801DF2CC 001DC22C  EC 42 00 28 */	fsubs f2, f2, f0
/* 801DF2D0 001DC230  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 801DF2D4 001DC234  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 801DF2D8 001DC238  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DF2DC 001DC23C  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 801DF2E0 001DC240  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801DF2E4 001DC244  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 801DF2E8 001DC248  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 801DF2EC 001DC24C  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 801DF2F0 001DC250  48 13 55 C9 */	bl Magnitude__9CVector3fCFv
/* 801DF2F4 001DC254  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 801DF2F8 001DC258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DF2FC 001DC25C  40 80 02 30 */	bge lbl_801DF52C
/* 801DF300 001DC260  38 00 00 01 */	li r0, 1
/* 801DF304 001DC264  90 1F 06 58 */	stw r0, 0x658(r31)
/* 801DF308 001DC268  48 00 02 24 */	b lbl_801DF52C
lbl_801DF30C:
/* 801DF30C 001DC26C  3C 60 80 57 */	lis r3, lbl_8057206C@ha
/* 801DF310 001DC270  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DF314 001DC274  38 A3 20 6C */	addi r5, r3, lbl_8057206C@l
/* 801DF318 001DC278  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DF31C 001DC27C  C0 85 00 04 */	lfs f4, 4(r5)
/* 801DF320 001DC280  38 61 00 64 */	addi r3, r1, 0x64
/* 801DF324 001DC284  C0 65 00 08 */	lfs f3, 8(r5)
/* 801DF328 001DC288  38 9F 00 34 */	addi r4, r31, 0x34
/* 801DF32C 001DC28C  C0 45 00 00 */	lfs f2, 0(r5)
/* 801DF330 001DC290  EC 86 20 2A */	fadds f4, f6, f4
/* 801DF334 001DC294  EC 67 18 2A */	fadds f3, f7, f3
/* 801DF338 001DC298  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801DF33C 001DC29C  EC 45 10 2A */	fadds f2, f5, f2
/* 801DF340 001DC2A0  D0 81 00 E4 */	stfs f4, 0xe4(r1)
/* 801DF344 001DC2A4  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 801DF348 001DC2A8  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 801DF34C 001DC2AC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801DF350 001DC2B0  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801DF354 001DC2B4  48 13 2D D5 */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 801DF358 001DC2B8  38 61 01 50 */	addi r3, r1, 0x150
/* 801DF35C 001DC2BC  38 81 00 64 */	addi r4, r1, 0x64
/* 801DF360 001DC2C0  48 13 2D 2D */	bl BuildTransform__11CQuaternionCFv
/* 801DF364 001DC2C4  38 61 00 74 */	addi r3, r1, 0x74
/* 801DF368 001DC2C8  38 81 01 50 */	addi r4, r1, 0x150
/* 801DF36C 001DC2CC  38 A1 00 58 */	addi r5, r1, 0x58
/* 801DF370 001DC2D0  48 13 0F 25 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 801DF374 001DC2D4  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 801DF378 001DC2D8  38 60 00 00 */	li r3, 0
/* 801DF37C 001DC2DC  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801DF380 001DC2E0  38 80 00 01 */	li r4, 1
/* 801DF384 001DC2E4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 801DF388 001DC2E8  80 AD 92 14 */	lwz r5, lbl_805A7DD4@sda21(r13)
/* 801DF38C 001DC2EC  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 801DF390 001DC2F0  D0 21 00 D8 */	stfs f1, 0xd8(r1)
/* 801DF394 001DC2F4  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 801DF398 001DC2F8  48 1A AB 5D */	bl __shl2i
/* 801DF39C 001DC2FC  80 AD 92 18 */	lwz r5, lbl_805A7DD8@sda21(r13)
/* 801DF3A0 001DC300  7C 9D 23 78 */	mr r29, r4
/* 801DF3A4 001DC304  7C 7E 1B 78 */	mr r30, r3
/* 801DF3A8 001DC308  38 60 00 00 */	li r3, 0
/* 801DF3AC 001DC30C  38 80 00 01 */	li r4, 1
/* 801DF3B0 001DC310  48 1A AB 45 */	bl __shl2i
/* 801DF3B4 001DC314  80 AD 92 1C */	lwz r5, lbl_805A7DDC@sda21(r13)
/* 801DF3B8 001DC318  7F BD 23 78 */	or r29, r29, r4
/* 801DF3BC 001DC31C  7F DE 1B 78 */	or r30, r30, r3
/* 801DF3C0 001DC320  38 60 00 00 */	li r3, 0
/* 801DF3C4 001DC324  38 80 00 01 */	li r4, 1
/* 801DF3C8 001DC328  48 1A AB 2D */	bl __shl2i
/* 801DF3CC 001DC32C  7F BD 23 78 */	or r29, r29, r4
/* 801DF3D0 001DC330  7F DE 1B 78 */	or r30, r30, r3
/* 801DF3D4 001DC334  39 00 00 00 */	li r8, 0
/* 801DF3D8 001DC338  38 00 00 01 */	li r0, 1
/* 801DF3DC 001DC33C  93 A1 01 0C */	stw r29, 0x10c(r1)
/* 801DF3E0 001DC340  7F 84 E3 78 */	mr r4, r28
/* 801DF3E4 001DC344  C0 22 AD 44 */	lfs f1, lbl_805ACA64@sda21(r2)
/* 801DF3E8 001DC348  38 61 01 20 */	addi r3, r1, 0x120
/* 801DF3EC 001DC34C  93 C1 01 08 */	stw r30, 0x108(r1)
/* 801DF3F0 001DC350  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 801DF3F4 001DC354  38 C1 00 D4 */	addi r6, r1, 0xd4
/* 801DF3F8 001DC358  38 E1 01 08 */	addi r7, r1, 0x108
/* 801DF3FC 001DC35C  91 01 01 14 */	stw r8, 0x114(r1)
/* 801DF400 001DC360  91 01 01 10 */	stw r8, 0x110(r1)
/* 801DF404 001DC364  90 01 01 18 */	stw r0, 0x118(r1)
/* 801DF408 001DC368  4B E6 DB 91 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801DF40C 001DC36C  88 81 01 40 */	lbz r4, 0x140(r1)
/* 801DF410 001DC370  C0 E1 01 20 */	lfs f7, 0x120(r1)
/* 801DF414 001DC374  C0 C1 01 24 */	lfs f6, 0x124(r1)
/* 801DF418 001DC378  28 04 00 00 */	cmplwi r4, 0
/* 801DF41C 001DC37C  C0 A1 01 28 */	lfs f5, 0x128(r1)
/* 801DF420 001DC380  C0 81 01 2C */	lfs f4, 0x12c(r1)
/* 801DF424 001DC384  C0 61 01 30 */	lfs f3, 0x130(r1)
/* 801DF428 001DC388  C0 41 01 34 */	lfs f2, 0x134(r1)
/* 801DF42C 001DC38C  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 801DF430 001DC390  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 801DF434 001DC394  80 01 01 48 */	lwz r0, 0x148(r1)
/* 801DF438 001DC398  80 61 01 4C */	lwz r3, 0x14c(r1)
/* 801DF43C 001DC39C  D0 E1 01 78 */	stfs f7, 0x178(r1)
/* 801DF440 001DC3A0  D0 C1 01 7C */	stfs f6, 0x17c(r1)
/* 801DF444 001DC3A4  D0 A1 01 80 */	stfs f5, 0x180(r1)
/* 801DF448 001DC3A8  D0 81 01 84 */	stfs f4, 0x184(r1)
/* 801DF44C 001DC3AC  D0 61 01 88 */	stfs f3, 0x188(r1)
/* 801DF450 001DC3B0  D0 41 01 8C */	stfs f2, 0x18c(r1)
/* 801DF454 001DC3B4  D0 21 01 90 */	stfs f1, 0x190(r1)
/* 801DF458 001DC3B8  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 801DF45C 001DC3BC  98 81 01 98 */	stb r4, 0x198(r1)
/* 801DF460 001DC3C0  90 61 01 A4 */	stw r3, 0x1a4(r1)
/* 801DF464 001DC3C4  90 01 01 A0 */	stw r0, 0x1a0(r1)
/* 801DF468 001DC3C8  41 82 00 80 */	beq lbl_801DF4E8
/* 801DF46C 001DC3CC  D0 DF 08 D8 */	stfs f6, 0x8d8(r31)
/* 801DF470 001DC3D0  38 61 00 4C */	addi r3, r1, 0x4c
/* 801DF474 001DC3D4  D0 BF 08 DC */	stfs f5, 0x8dc(r31)
/* 801DF478 001DC3D8  D0 9F 08 E0 */	stfs f4, 0x8e0(r31)
/* 801DF47C 001DC3DC  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 801DF480 001DC3E0  D0 1F 08 E4 */	stfs f0, 0x8e4(r31)
/* 801DF484 001DC3E4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 801DF488 001DC3E8  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 801DF48C 001DC3EC  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 801DF490 001DC3F0  D0 1F 08 EC */	stfs f0, 0x8ec(r31)
/* 801DF494 001DC3F4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 801DF498 001DC3F8  C0 21 00 E8 */	lfs f1, 0xe8(r1)
/* 801DF49C 001DC3FC  EC 45 00 28 */	fsubs f2, f5, f0
/* 801DF4A0 001DC400  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 801DF4A4 001DC404  EC 24 08 28 */	fsubs f1, f4, f1
/* 801DF4A8 001DC408  EC 06 00 28 */	fsubs f0, f6, f0
/* 801DF4AC 001DC40C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801DF4B0 001DC410  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801DF4B4 001DC414  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801DF4B8 001DC418  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 801DF4BC 001DC41C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801DF4C0 001DC420  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801DF4C4 001DC424  48 13 53 F5 */	bl Magnitude__9CVector3fCFv
/* 801DF4C8 001DC428  C0 02 AD 48 */	lfs f0, lbl_805ACA68@sda21(r2)
/* 801DF4CC 001DC42C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DF4D0 001DC430  40 80 00 5C */	bge lbl_801DF52C
/* 801DF4D4 001DC434  38 60 00 02 */	li r3, 2
/* 801DF4D8 001DC438  38 00 00 01 */	li r0, 1
/* 801DF4DC 001DC43C  90 7F 06 58 */	stw r3, 0x658(r31)
/* 801DF4E0 001DC440  98 1F 08 D4 */	stb r0, 0x8d4(r31)
/* 801DF4E4 001DC444  48 00 00 48 */	b lbl_801DF52C
lbl_801DF4E8:
/* 801DF4E8 001DC448  7F E4 FB 78 */	mr r4, r31
/* 801DF4EC 001DC44C  7F 85 E3 78 */	mr r5, r28
/* 801DF4F0 001DC450  38 61 00 10 */	addi r3, r1, 0x10
/* 801DF4F4 001DC454  4B FF B7 3D */	bl sub_801dac30
/* 801DF4F8 001DC458  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801DF4FC 001DC45C  38 61 00 30 */	addi r3, r1, 0x30
/* 801DF500 001DC460  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801DF504 001DC464  38 8D A8 98 */	addi r4, r13, lbl_805A9458@sda21
/* 801DF508 001DC468  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801DF50C 001DC46C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801DF510 001DC470  48 13 49 F9 */	bl __eq__FRC9CVector2fRC9CVector2f
/* 801DF514 001DC474  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DF518 001DC478  40 82 00 14 */	bne lbl_801DF52C
/* 801DF51C 001DC47C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801DF520 001DC480  D0 1F 06 50 */	stfs f0, 0x650(r31)
/* 801DF524 001DC484  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801DF528 001DC488  D0 1F 06 54 */	stfs f0, 0x654(r31)
lbl_801DF52C:
/* 801DF52C 001DC48C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF530 001DC490  38 00 00 0D */	li r0, 0xd
/* 801DF534 001DC494  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801DF538 001DC498  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DF53C 001DC49C  38 81 00 08 */	addi r4, r1, 8
/* 801DF540 001DC4A0  90 61 00 08 */	stw r3, 8(r1)
/* 801DF544 001DC4A4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801DF548 001DC4A8  38 63 00 04 */	addi r3, r3, 4
/* 801DF54C 001DC4AC  4B F5 22 6D */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801DF550 001DC4B0  34 01 00 08 */	addic. r0, r1, 8
/* 801DF554 001DC4B4  41 82 00 10 */	beq lbl_801DF564
/* 801DF558 001DC4B8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF55C 001DC4BC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DF560 001DC4C0  90 01 00 08 */	stw r0, 8(r1)
lbl_801DF564:
/* 801DF564 001DC4C4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DF568 001DC4C8  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801DF56C 001DC4CC  C0 DF 06 54 */	lfs f6, 0x654(r31)
/* 801DF570 001DC4D0  38 81 00 EC */	addi r4, r1, 0xec
/* 801DF574 001DC4D4  C0 BF 06 50 */	lfs f5, 0x650(r31)
/* 801DF578 001DC4D8  C0 82 AC DC */	lfs f4, lbl_805AC9FC@sda21(r2)
/* 801DF57C 001DC4DC  C0 43 00 04 */	lfs f2, 4(r3)
/* 801DF580 001DC4E0  C0 23 00 08 */	lfs f1, 8(r3)
/* 801DF584 001DC4E4  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DF588 001DC4E8  D0 A1 00 EC */	stfs f5, 0xec(r1)
/* 801DF58C 001DC4EC  D0 C1 00 F0 */	stfs f6, 0xf0(r1)
/* 801DF590 001DC4F0  D0 81 00 F4 */	stfs f4, 0xf4(r1)
/* 801DF594 001DC4F4  D0 61 00 F8 */	stfs f3, 0xf8(r1)
/* 801DF598 001DC4F8  D0 41 00 FC */	stfs f2, 0xfc(r1)
/* 801DF59C 001DC4FC  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 801DF5A0 001DC500  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 801DF5A4 001DC504  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801DF5A8 001DC508  38 63 00 04 */	addi r3, r3, 4
/* 801DF5AC 001DC50C  4B F5 21 6D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801DF5B0:
/* 801DF5B0 001DC510  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, qr0
/* 801DF5B4 001DC514  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 801DF5B8 001DC518  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, qr0
/* 801DF5BC 001DC51C  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 801DF5C0 001DC520  83 E1 01 BC */	lwz r31, 0x1bc(r1)
/* 801DF5C4 001DC524  83 C1 01 B8 */	lwz r30, 0x1b8(r1)
/* 801DF5C8 001DC528  83 A1 01 B4 */	lwz r29, 0x1b4(r1)
/* 801DF5CC 001DC52C  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 801DF5D0 001DC530  83 81 01 B0 */	lwz r28, 0x1b0(r1)
/* 801DF5D4 001DC534  7C 08 03 A6 */	mtlr r0
/* 801DF5D8 001DC538  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 801DF5DC 001DC53C  4E 80 00 20 */	blr

.global TelegraphAttack__8CThardusFR13CStateManager9EStateMsgf
TelegraphAttack__8CThardusFR13CStateManager9EStateMsgf:
/* 801DF5E0 001DC540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DF5E4 001DC544  7C 08 02 A6 */	mflr r0
/* 801DF5E8 001DC548  2C 05 00 01 */	cmpwi r5, 1
/* 801DF5EC 001DC54C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DF5F0 001DC550  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DF5F4 001DC554  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DF5F8 001DC558  7C 7E 1B 78 */	mr r30, r3
/* 801DF5FC 001DC55C  41 82 00 24 */	beq lbl_801DF620
/* 801DF600 001DC560  40 80 01 2C */	bge lbl_801DF72C
/* 801DF604 001DC564  2C 05 00 00 */	cmpwi r5, 0
/* 801DF608 001DC568  40 80 00 0C */	bge lbl_801DF614
/* 801DF60C 001DC56C  48 00 01 20 */	b lbl_801DF72C
/* 801DF610 001DC570  48 00 01 1C */	b lbl_801DF72C
lbl_801DF614:
/* 801DF614 001DC574  38 00 00 00 */	li r0, 0
/* 801DF618 001DC578  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF61C 001DC57C  48 00 01 10 */	b lbl_801DF72C
lbl_801DF620:
/* 801DF620 001DC580  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DF624 001DC584  2C 00 00 01 */	cmpwi r0, 1
/* 801DF628 001DC588  41 82 01 04 */	beq lbl_801DF72C
/* 801DF62C 001DC58C  40 80 00 10 */	bge lbl_801DF63C
/* 801DF630 001DC590  2C 00 00 00 */	cmpwi r0, 0
/* 801DF634 001DC594  40 80 00 14 */	bge lbl_801DF648
/* 801DF638 001DC598  48 00 00 F4 */	b lbl_801DF72C
lbl_801DF63C:
/* 801DF63C 001DC59C  2C 00 00 03 */	cmpwi r0, 3
/* 801DF640 001DC5A0  40 80 00 EC */	bge lbl_801DF72C
/* 801DF644 001DC5A4  48 00 00 D0 */	b lbl_801DF714
lbl_801DF648:
/* 801DF648 001DC5A8  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 801DF64C 001DC5AC  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 801DF650 001DC5B0  2C 00 00 12 */	cmpwi r0, 0x12
/* 801DF654 001DC5B4  40 82 00 10 */	bne lbl_801DF664
/* 801DF658 001DC5B8  38 00 00 02 */	li r0, 2
/* 801DF65C 001DC5BC  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF660 001DC5C0  48 00 00 CC */	b lbl_801DF72C
lbl_801DF664:
/* 801DF664 001DC5C4  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801DF668 001DC5C8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DF66C 001DC5CC  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801DF670 001DC5D0  38 C5 AA 68 */	addi r6, r5, lbl_803DAA68@l
/* 801DF674 001DC5D4  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 801DF678 001DC5D8  90 C1 00 08 */	stw r6, 8(r1)
/* 801DF67C 001DC5DC  38 C4 A9 CC */	addi r6, r4, lbl_803DA9CC@l
/* 801DF680 001DC5E0  C0 23 00 04 */	lfs f1, 4(r3)
/* 801DF684 001DC5E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DF688 001DC5E8  38 E0 00 06 */	li r7, 6
/* 801DF68C 001DC5EC  38 A0 00 01 */	li r5, 1
/* 801DF690 001DC5F0  38 00 00 00 */	li r0, 0
/* 801DF694 001DC5F4  3B E8 00 04 */	addi r31, r8, 4
/* 801DF698 001DC5F8  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801DF69C 001DC5FC  7F E3 FB 78 */	mr r3, r31
/* 801DF6A0 001DC600  38 80 00 06 */	li r4, 6
/* 801DF6A4 001DC604  90 C1 00 08 */	stw r6, 8(r1)
/* 801DF6A8 001DC608  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DF6AC 001DC60C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801DF6B0 001DC610  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DF6B4 001DC614  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DF6B8 001DC618  98 01 00 20 */	stb r0, 0x20(r1)
/* 801DF6BC 001DC61C  4B F5 1D 7D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DF6C0 001DC620  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DF6C4 001DC624  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801DF6C8 001DC628  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 801DF6CC 001DC62C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF6D0 001DC630  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801DF6D4 001DC634  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801DF6D8 001DC638  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801DF6DC 001DC63C  38 00 00 00 */	li r0, 0
/* 801DF6E0 001DC640  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801DF6E4 001DC644  90 BF 01 30 */	stw r5, 0x130(r31)
/* 801DF6E8 001DC648  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801DF6EC 001DC64C  90 DF 01 34 */	stw r6, 0x134(r31)
/* 801DF6F0 001DC650  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801DF6F4 001DC654  90 BF 01 38 */	stw r5, 0x138(r31)
/* 801DF6F8 001DC658  88 A1 00 20 */	lbz r5, 0x20(r1)
/* 801DF6FC 001DC65C  90 DF 01 3C */	stw r6, 0x13c(r31)
/* 801DF700 001DC660  98 BF 01 40 */	stb r5, 0x140(r31)
/* 801DF704 001DC664  90 81 00 08 */	stw r4, 8(r1)
/* 801DF708 001DC668  90 61 00 08 */	stw r3, 8(r1)
/* 801DF70C 001DC66C  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF710 001DC670  48 00 00 1C */	b lbl_801DF72C
lbl_801DF714:
/* 801DF714 001DC674  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DF718 001DC678  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DF71C 001DC67C  2C 00 00 12 */	cmpwi r0, 0x12
/* 801DF720 001DC680  41 82 00 0C */	beq lbl_801DF72C
/* 801DF724 001DC684  38 00 00 03 */	li r0, 3
/* 801DF728 001DC688  90 1E 05 EC */	stw r0, 0x5ec(r30)
lbl_801DF72C:
/* 801DF72C 001DC68C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DF730 001DC690  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DF734 001DC694  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DF738 001DC698  7C 08 03 A6 */	mtlr r0
/* 801DF73C 001DC69C  38 21 00 30 */	addi r1, r1, 0x30
/* 801DF740 001DC6A0  4E 80 00 20 */	blr

.global ProjectileAttack__8CThardusFR13CStateManager9EStateMsgf
ProjectileAttack__8CThardusFR13CStateManager9EStateMsgf:
/* 801DF744 001DC6A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DF748 001DC6A8  7C 08 02 A6 */	mflr r0
/* 801DF74C 001DC6AC  2C 05 00 01 */	cmpwi r5, 1
/* 801DF750 001DC6B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DF754 001DC6B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DF758 001DC6B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DF75C 001DC6BC  7C 7E 1B 78 */	mr r30, r3
/* 801DF760 001DC6C0  41 82 00 24 */	beq lbl_801DF784
/* 801DF764 001DC6C4  40 80 01 28 */	bge lbl_801DF88C
/* 801DF768 001DC6C8  2C 05 00 00 */	cmpwi r5, 0
/* 801DF76C 001DC6CC  40 80 00 0C */	bge lbl_801DF778
/* 801DF770 001DC6D0  48 00 01 1C */	b lbl_801DF88C
/* 801DF774 001DC6D4  48 00 01 18 */	b lbl_801DF88C
lbl_801DF778:
/* 801DF778 001DC6D8  38 00 00 00 */	li r0, 0
/* 801DF77C 001DC6DC  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF780 001DC6E0  48 00 01 0C */	b lbl_801DF88C
lbl_801DF784:
/* 801DF784 001DC6E4  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DF788 001DC6E8  2C 00 00 01 */	cmpwi r0, 1
/* 801DF78C 001DC6EC  41 82 01 00 */	beq lbl_801DF88C
/* 801DF790 001DC6F0  40 80 00 10 */	bge lbl_801DF7A0
/* 801DF794 001DC6F4  2C 00 00 00 */	cmpwi r0, 0
/* 801DF798 001DC6F8  40 80 00 14 */	bge lbl_801DF7AC
/* 801DF79C 001DC6FC  48 00 00 F0 */	b lbl_801DF88C
lbl_801DF7A0:
/* 801DF7A0 001DC700  2C 00 00 03 */	cmpwi r0, 3
/* 801DF7A4 001DC704  40 80 00 E8 */	bge lbl_801DF88C
/* 801DF7A8 001DC708  48 00 00 CC */	b lbl_801DF874
lbl_801DF7AC:
/* 801DF7AC 001DC70C  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 801DF7B0 001DC710  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801DF7B4 001DC714  2C 00 00 12 */	cmpwi r0, 0x12
/* 801DF7B8 001DC718  40 82 00 10 */	bne lbl_801DF7C8
/* 801DF7BC 001DC71C  38 00 00 02 */	li r0, 2
/* 801DF7C0 001DC720  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF7C4 001DC724  48 00 00 C8 */	b lbl_801DF88C
lbl_801DF7C8:
/* 801DF7C8 001DC728  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DF7CC 001DC72C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DF7D0 001DC730  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801DF7D4 001DC734  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 801DF7D8 001DC738  3C 80 80 3E */	lis r4, lbl_803DA9CC@ha
/* 801DF7DC 001DC73C  90 A1 00 08 */	stw r5, 8(r1)
/* 801DF7E0 001DC740  38 00 00 00 */	li r0, 0
/* 801DF7E4 001DC744  C0 23 00 04 */	lfs f1, 4(r3)
/* 801DF7E8 001DC748  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DF7EC 001DC74C  38 A4 A9 CC */	addi r5, r4, lbl_803DA9CC@l
/* 801DF7F0 001DC750  38 60 00 06 */	li r3, 6
/* 801DF7F4 001DC754  3B E6 00 04 */	addi r31, r6, 4
/* 801DF7F8 001DC758  90 61 00 0C */	stw r3, 0xc(r1)
/* 801DF7FC 001DC75C  38 80 00 06 */	li r4, 6
/* 801DF800 001DC760  7F E3 FB 78 */	mr r3, r31
/* 801DF804 001DC764  90 A1 00 08 */	stw r5, 8(r1)
/* 801DF808 001DC768  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DF80C 001DC76C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801DF810 001DC770  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801DF814 001DC774  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DF818 001DC778  98 01 00 20 */	stb r0, 0x20(r1)
/* 801DF81C 001DC77C  4B F5 1C 1D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DF820 001DC780  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DF824 001DC784  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 801DF828 001DC788  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 801DF82C 001DC78C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF830 001DC790  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 801DF834 001DC794  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801DF838 001DC798  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801DF83C 001DC79C  38 00 00 00 */	li r0, 0
/* 801DF840 001DC7A0  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801DF844 001DC7A4  90 BF 01 30 */	stw r5, 0x130(r31)
/* 801DF848 001DC7A8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801DF84C 001DC7AC  90 DF 01 34 */	stw r6, 0x134(r31)
/* 801DF850 001DC7B0  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 801DF854 001DC7B4  90 BF 01 38 */	stw r5, 0x138(r31)
/* 801DF858 001DC7B8  88 A1 00 20 */	lbz r5, 0x20(r1)
/* 801DF85C 001DC7BC  90 DF 01 3C */	stw r6, 0x13c(r31)
/* 801DF860 001DC7C0  98 BF 01 40 */	stb r5, 0x140(r31)
/* 801DF864 001DC7C4  90 81 00 08 */	stw r4, 8(r1)
/* 801DF868 001DC7C8  90 61 00 08 */	stw r3, 8(r1)
/* 801DF86C 001DC7CC  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF870 001DC7D0  48 00 00 1C */	b lbl_801DF88C
lbl_801DF874:
/* 801DF874 001DC7D4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DF878 001DC7D8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DF87C 001DC7DC  2C 00 00 12 */	cmpwi r0, 0x12
/* 801DF880 001DC7E0  41 82 00 0C */	beq lbl_801DF88C
/* 801DF884 001DC7E4  38 00 00 03 */	li r0, 3
/* 801DF888 001DC7E8  90 1E 05 EC */	stw r0, 0x5ec(r30)
lbl_801DF88C:
/* 801DF88C 001DC7EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DF890 001DC7F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DF894 001DC7F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DF898 001DC7F8  7C 08 03 A6 */	mtlr r0
/* 801DF89C 001DC7FC  38 21 00 30 */	addi r1, r1, 0x30
/* 801DF8A0 001DC800  4E 80 00 20 */	blr

.global Taunt__8CThardusFR13CStateManager9EStateMsgf
Taunt__8CThardusFR13CStateManager9EStateMsgf:
/* 801DF8A4 001DC804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DF8A8 001DC808  7C 08 02 A6 */	mflr r0
/* 801DF8AC 001DC80C  2C 05 00 01 */	cmpwi r5, 1
/* 801DF8B0 001DC810  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DF8B4 001DC814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801DF8B8 001DC818  41 82 00 24 */	beq lbl_801DF8DC
/* 801DF8BC 001DC81C  40 80 00 E0 */	bge lbl_801DF99C
/* 801DF8C0 001DC820  2C 05 00 00 */	cmpwi r5, 0
/* 801DF8C4 001DC824  40 80 00 0C */	bge lbl_801DF8D0
/* 801DF8C8 001DC828  48 00 00 D4 */	b lbl_801DF99C
/* 801DF8CC 001DC82C  48 00 00 D0 */	b lbl_801DF99C
lbl_801DF8D0:
/* 801DF8D0 001DC830  38 00 00 00 */	li r0, 0
/* 801DF8D4 001DC834  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DF8D8 001DC838  48 00 00 C4 */	b lbl_801DF99C
lbl_801DF8DC:
/* 801DF8DC 001DC83C  80 03 05 EC */	lwz r0, 0x5ec(r3)
/* 801DF8E0 001DC840  2C 00 00 01 */	cmpwi r0, 1
/* 801DF8E4 001DC844  41 82 00 B8 */	beq lbl_801DF99C
/* 801DF8E8 001DC848  40 80 00 10 */	bge lbl_801DF8F8
/* 801DF8EC 001DC84C  2C 00 00 00 */	cmpwi r0, 0
/* 801DF8F0 001DC850  40 80 00 14 */	bge lbl_801DF904
/* 801DF8F4 001DC854  48 00 00 A8 */	b lbl_801DF99C
lbl_801DF8F8:
/* 801DF8F8 001DC858  2C 00 00 03 */	cmpwi r0, 3
/* 801DF8FC 001DC85C  40 80 00 A0 */	bge lbl_801DF99C
/* 801DF900 001DC860  48 00 00 84 */	b lbl_801DF984
lbl_801DF904:
/* 801DF904 001DC864  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 801DF908 001DC868  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801DF90C 001DC86C  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DF910 001DC870  40 82 00 10 */	bne lbl_801DF920
/* 801DF914 001DC874  38 00 00 02 */	li r0, 2
/* 801DF918 001DC878  90 03 05 EC */	stw r0, 0x5ec(r3)
/* 801DF91C 001DC87C  48 00 00 80 */	b lbl_801DF99C
lbl_801DF920:
/* 801DF920 001DC880  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DF924 001DC884  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DF928 001DC888  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801DF92C 001DC88C  38 80 00 12 */	li r4, 0x12
/* 801DF930 001DC890  90 01 00 08 */	stw r0, 8(r1)
/* 801DF934 001DC894  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801DF938 001DC898  38 00 00 01 */	li r0, 1
/* 801DF93C 001DC89C  3B E6 00 04 */	addi r31, r6, 4
/* 801DF940 001DC8A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 801DF944 001DC8A4  7F E3 FB 78 */	mr r3, r31
/* 801DF948 001DC8A8  38 80 00 12 */	li r4, 0x12
/* 801DF94C 001DC8AC  90 A1 00 08 */	stw r5, 8(r1)
/* 801DF950 001DC8B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DF954 001DC8B4  4B F5 1A E5 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DF958 001DC8B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DF95C 001DC8BC  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DF960 001DC8C0  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 801DF964 001DC8C4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DF968 001DC8C8  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801DF96C 001DC8CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DF970 001DC8D0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 801DF974 001DC8D4  90 81 00 08 */	stw r4, 8(r1)
/* 801DF978 001DC8D8  90 7F 02 18 */	stw r3, 0x218(r31)
/* 801DF97C 001DC8DC  90 01 00 08 */	stw r0, 8(r1)
/* 801DF980 001DC8E0  48 00 00 1C */	b lbl_801DF99C
lbl_801DF984:
/* 801DF984 001DC8E4  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801DF988 001DC8E8  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 801DF98C 001DC8EC  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DF990 001DC8F0  41 82 00 0C */	beq lbl_801DF99C
/* 801DF994 001DC8F4  38 00 00 03 */	li r0, 3
/* 801DF998 001DC8F8  90 03 05 EC */	stw r0, 0x5ec(r3)
lbl_801DF99C:
/* 801DF99C 001DC8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DF9A0 001DC900  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801DF9A4 001DC904  7C 08 03 A6 */	mtlr r0
/* 801DF9A8 001DC908  38 21 00 20 */	addi r1, r1, 0x20
/* 801DF9AC 001DC90C  4E 80 00 20 */	blr

.global TargetPatrol__8CThardusFR13CStateManager9EStateMsgf
TargetPatrol__8CThardusFR13CStateManager9EStateMsgf:
/* 801DF9B0 001DC910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DF9B4 001DC914  7C 08 02 A6 */	mflr r0
/* 801DF9B8 001DC918  2C 05 00 01 */	cmpwi r5, 1
/* 801DF9BC 001DC91C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DF9C0 001DC920  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801DF9C4 001DC924  7C 9F 23 78 */	mr r31, r4
/* 801DF9C8 001DC928  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801DF9CC 001DC92C  7C 7E 1B 78 */	mr r30, r3
/* 801DF9D0 001DC930  41 82 00 68 */	beq lbl_801DFA38
/* 801DF9D4 001DC934  40 80 01 24 */	bge lbl_801DFAF8
/* 801DF9D8 001DC938  2C 05 00 00 */	cmpwi r5, 0
/* 801DF9DC 001DC93C  40 80 00 0C */	bge lbl_801DF9E8
/* 801DF9E0 001DC940  48 00 01 18 */	b lbl_801DFAF8
/* 801DF9E4 001DC944  48 00 01 14 */	b lbl_801DFAF8
lbl_801DF9E8:
/* 801DF9E8 001DC948  38 00 00 00 */	li r0, 0
/* 801DF9EC 001DC94C  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DF9F0 001DC950  88 1E 09 5E */	lbz r0, 0x95e(r30)
/* 801DF9F4 001DC954  28 00 00 00 */	cmplwi r0, 0
/* 801DF9F8 001DC958  40 82 01 00 */	bne lbl_801DFAF8
/* 801DF9FC 001DC95C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFA00 001DC960  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801DFA04 001DC964  7D 89 03 A6 */	mtctr r12
/* 801DFA08 001DC968  4E 80 04 21 */	bctrl
/* 801DFA0C 001DC96C  C0 23 00 00 */	lfs f1, 0(r3)
/* 801DFA10 001DC970  7F E3 FB 78 */	mr r3, r31
/* 801DFA14 001DC974  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801DFA18 001DC978  38 81 00 0C */	addi r4, r1, 0xc
/* 801DFA1C 001DC97C  38 A0 00 58 */	li r5, 0x58
/* 801DFA20 001DC980  B0 01 00 08 */	sth r0, 8(r1)
/* 801DFA24 001DC984  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801DFA28 001DC988  4B E6 45 1D */	bl SetBossParams__13CStateManagerF9TUniqueIdfUi
/* 801DFA2C 001DC98C  38 00 00 01 */	li r0, 1
/* 801DFA30 001DC990  98 1E 09 5E */	stb r0, 0x95e(r30)
/* 801DFA34 001DC994  48 00 00 C4 */	b lbl_801DFAF8
lbl_801DFA38:
/* 801DFA38 001DC998  80 1E 05 EC */	lwz r0, 0x5ec(r30)
/* 801DFA3C 001DC99C  2C 00 00 01 */	cmpwi r0, 1
/* 801DFA40 001DC9A0  41 82 00 B8 */	beq lbl_801DFAF8
/* 801DFA44 001DC9A4  40 80 00 10 */	bge lbl_801DFA54
/* 801DFA48 001DC9A8  2C 00 00 00 */	cmpwi r0, 0
/* 801DFA4C 001DC9AC  40 80 00 14 */	bge lbl_801DFA60
/* 801DFA50 001DC9B0  48 00 00 A8 */	b lbl_801DFAF8
lbl_801DFA54:
/* 801DFA54 001DC9B4  2C 00 00 03 */	cmpwi r0, 3
/* 801DFA58 001DC9B8  40 80 00 A0 */	bge lbl_801DFAF8
/* 801DFA5C 001DC9BC  48 00 00 84 */	b lbl_801DFAE0
lbl_801DFA60:
/* 801DFA60 001DC9C0  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 801DFA64 001DC9C4  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 801DFA68 001DC9C8  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DFA6C 001DC9CC  40 82 00 10 */	bne lbl_801DFA7C
/* 801DFA70 001DC9D0  38 00 00 02 */	li r0, 2
/* 801DFA74 001DC9D4  90 1E 05 EC */	stw r0, 0x5ec(r30)
/* 801DFA78 001DC9D8  48 00 00 80 */	b lbl_801DFAF8
lbl_801DFA7C:
/* 801DFA7C 001DC9DC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801DFA80 001DC9E0  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DFA84 001DC9E4  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801DFA88 001DC9E8  38 80 00 12 */	li r4, 0x12
/* 801DFA8C 001DC9EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DFA90 001DC9F0  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 801DFA94 001DC9F4  38 00 00 01 */	li r0, 1
/* 801DFA98 001DC9F8  3B E6 00 04 */	addi r31, r6, 4
/* 801DFA9C 001DC9FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 801DFAA0 001DCA00  7F E3 FB 78 */	mr r3, r31
/* 801DFAA4 001DCA04  38 80 00 12 */	li r4, 0x12
/* 801DFAA8 001DCA08  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801DFAAC 001DCA0C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DFAB0 001DCA10  4B F5 19 89 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801DFAB4 001DCA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801DFAB8 001DCA18  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 801DFABC 001DCA1C  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 801DFAC0 001DCA20  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801DFAC4 001DCA24  90 1F 02 14 */	stw r0, 0x214(r31)
/* 801DFAC8 001DCA28  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801DFACC 001DCA2C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 801DFAD0 001DCA30  90 81 00 10 */	stw r4, 0x10(r1)
/* 801DFAD4 001DCA34  90 7F 02 18 */	stw r3, 0x218(r31)
/* 801DFAD8 001DCA38  90 01 00 10 */	stw r0, 0x10(r1)
/* 801DFADC 001DCA3C  48 00 00 1C */	b lbl_801DFAF8
lbl_801DFAE0:
/* 801DFAE0 001DCA40  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DFAE4 001DCA44  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801DFAE8 001DCA48  2C 00 00 10 */	cmpwi r0, 0x10
/* 801DFAEC 001DCA4C  41 82 00 0C */	beq lbl_801DFAF8
/* 801DFAF0 001DCA50  38 00 00 03 */	li r0, 3
/* 801DFAF4 001DCA54  90 1E 05 EC */	stw r0, 0x5ec(r30)
lbl_801DFAF8:
/* 801DFAF8 001DCA58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DFAFC 001DCA5C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801DFB00 001DCA60  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801DFB04 001DCA64  7C 08 03 A6 */	mtlr r0
/* 801DFB08 001DCA68  38 21 00 30 */	addi r1, r1, 0x30
/* 801DFB0C 001DCA6C  4E 80 00 20 */	blr

.global Patrol__8CThardusFR13CStateManager9EStateMsgf
Patrol__8CThardusFR13CStateManager9EStateMsgf:
/* 801DFB10 001DCA70  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801DFB14 001DCA74  7C 08 02 A6 */	mflr r0
/* 801DFB18 001DCA78  2C 05 00 01 */	cmpwi r5, 1
/* 801DFB1C 001DCA7C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801DFB20 001DCA80  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801DFB24 001DCA84  7C 9F 23 78 */	mr r31, r4
/* 801DFB28 001DCA88  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801DFB2C 001DCA8C  7C 7E 1B 78 */	mr r30, r3
/* 801DFB30 001DCA90  41 82 00 48 */	beq lbl_801DFB78
/* 801DFB34 001DCA94  40 80 00 10 */	bge lbl_801DFB44
/* 801DFB38 001DCA98  2C 05 00 00 */	cmpwi r5, 0
/* 801DFB3C 001DCA9C  40 80 00 14 */	bge lbl_801DFB50
/* 801DFB40 001DCAA0  48 00 01 C4 */	b lbl_801DFD04
lbl_801DFB44:
/* 801DFB44 001DCAA4  2C 05 00 03 */	cmpwi r5, 3
/* 801DFB48 001DCAA8  40 80 01 BC */	bge lbl_801DFD04
/* 801DFB4C 001DCAAC  48 00 01 AC */	b lbl_801DFCF8
lbl_801DFB50:
/* 801DFB50 001DCAB0  38 00 FF FF */	li r0, -1
/* 801DFB54 001DCAB4  90 1E 06 58 */	stw r0, 0x658(r30)
/* 801DFB58 001DCAB8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801DFB5C 001DCABC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801DFB60 001DCAC0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801DFB64 001DCAC4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801DFB68 001DCAC8  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 801DFB6C 001DCACC  D0 3E 09 54 */	stfs f1, 0x954(r30)
/* 801DFB70 001DCAD0  D0 5E 09 58 */	stfs f2, 0x958(r30)
/* 801DFB74 001DCAD4  48 00 01 90 */	b lbl_801DFD04
lbl_801DFB78:
/* 801DFB78 001DCAD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DFB7C 001DCADC  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801DFB80 001DCAE0  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801DFB84 001DCAE4  7D 89 03 A6 */	mtctr r12
/* 801DFB88 001DCAE8  4E 80 04 21 */	bctrl
/* 801DFB8C 001DCAEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DFB90 001DCAF0  41 82 01 74 */	beq lbl_801DFD04
/* 801DFB94 001DCAF4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801DFB98 001DCAF8  38 61 00 3C */	addi r3, r1, 0x3c
/* 801DFB9C 001DCAFC  C0 02 AD 4C */	lfs f0, lbl_805ACA6C@sda21(r2)
/* 801DFBA0 001DCB00  38 81 00 8C */	addi r4, r1, 0x8c
/* 801DFBA4 001DCB04  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801DFBA8 001DCB08  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801DFBAC 001DCB0C  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 801DFBB0 001DCB10  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 801DFBB4 001DCB14  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 801DFBB8 001DCB18  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801DFBBC 001DCB1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801DFBC0 001DCB20  48 13 4C 91 */	bl AsNormalized__9CVector3fCFv
/* 801DFBC4 001DCB24  38 61 00 48 */	addi r3, r1, 0x48
/* 801DFBC8 001DCB28  38 81 00 3C */	addi r4, r1, 0x3c
/* 801DFBCC 001DCB2C  48 13 42 05 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801DFBD0 001DCB30  7C 7F 1B 78 */	mr r31, r3
/* 801DFBD4 001DCB34  38 61 00 54 */	addi r3, r1, 0x54
/* 801DFBD8 001DCB38  38 9E 09 50 */	addi r4, r30, 0x950
/* 801DFBDC 001DCB3C  48 13 41 F5 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801DFBE0 001DCB40  7C 64 1B 78 */	mr r4, r3
/* 801DFBE4 001DCB44  7F E5 FB 78 */	mr r5, r31
/* 801DFBE8 001DCB48  38 61 00 60 */	addi r3, r1, 0x60
/* 801DFBEC 001DCB4C  38 C1 00 08 */	addi r6, r1, 8
/* 801DFBF0 001DCB50  48 13 1A A5 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 801DFBF4 001DCB54  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 801DFBF8 001DCB58  38 61 00 30 */	addi r3, r1, 0x30
/* 801DFBFC 001DCB5C  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 801DFC00 001DCB60  38 81 00 24 */	addi r4, r1, 0x24
/* 801DFC04 001DCB64  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 801DFC08 001DCB68  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 801DFC0C 001DCB6C  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 801DFC10 001DCB70  C0 A1 00 90 */	lfs f5, 0x90(r1)
/* 801DFC14 001DCB74  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801DFC18 001DCB78  C0 61 00 94 */	lfs f3, 0x94(r1)
/* 801DFC1C 001DCB7C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 801DFC20 001DCB80  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 801DFC24 001DCB84  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801DFC28 001DCB88  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 801DFC2C 001DCB8C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801DFC30 001DCB90  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801DFC34 001DCB94  EC 85 20 28 */	fsubs f4, f5, f4
/* 801DFC38 001DCB98  EC 43 10 28 */	fsubs f2, f3, f2
/* 801DFC3C 001DCB9C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801DFC40 001DCBA0  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801DFC44 001DCBA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801DFC48 001DCBA8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801DFC4C 001DCBAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801DFC50 001DCBB0  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801DFC54 001DCBB4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801DFC58 001DCBB8  48 13 4B F9 */	bl AsNormalized__9CVector3fCFv
/* 801DFC5C 001DCBBC  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801DFC60 001DCBC0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801DFC64 001DCBC4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801DFC68 001DCBC8  38 81 00 7C */	addi r4, r1, 0x7c
/* 801DFC6C 001DCBCC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801DFC70 001DCBD0  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801DFC74 001DCBD4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 801DFC78 001DCBD8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 801DFC7C 001DCBDC  48 13 24 11 */	bl BuildTransform__11CQuaternionCFv
/* 801DFC80 001DCBE0  38 61 00 0C */	addi r3, r1, 0xc
/* 801DFC84 001DCBE4  38 81 00 B4 */	addi r4, r1, 0xb4
/* 801DFC88 001DCBE8  38 A1 00 70 */	addi r5, r1, 0x70
/* 801DFC8C 001DCBEC  48 13 06 09 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 801DFC90 001DCBF0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DFC94 001DCBF4  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 801DFC98 001DCBF8  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 801DFC9C 001DCBFC  38 81 00 98 */	addi r4, r1, 0x98
/* 801DFCA0 001DCC00  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 801DFCA4 001DCC04  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801DFCA8 001DCC08  C0 83 00 08 */	lfs f4, 8(r3)
/* 801DFCAC 001DCC0C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801DFCB0 001DCC10  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DFCB4 001DCC14  D0 C1 00 98 */	stfs f6, 0x98(r1)
/* 801DFCB8 001DCC18  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 801DFCBC 001DCC1C  D0 81 00 A0 */	stfs f4, 0xa0(r1)
/* 801DFCC0 001DCC20  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 801DFCC4 001DCC24  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 801DFCC8 001DCC28  D0 21 00 AC */	stfs f1, 0xac(r1)
/* 801DFCCC 001DCC2C  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801DFCD0 001DCC30  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801DFCD4 001DCC34  38 63 00 04 */	addi r3, r3, 4
/* 801DFCD8 001DCC38  4B F5 1A 41 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801DFCDC 001DCC3C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 801DFCE0 001DCC40  D0 1E 09 50 */	stfs f0, 0x950(r30)
/* 801DFCE4 001DCC44  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 801DFCE8 001DCC48  D0 1E 09 54 */	stfs f0, 0x954(r30)
/* 801DFCEC 001DCC4C  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 801DFCF0 001DCC50  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 801DFCF4 001DCC54  48 00 00 10 */	b lbl_801DFD04
lbl_801DFCF8:
/* 801DFCF8 001DCC58  4B FF ED E5 */	bl sub_801deadc
/* 801DFCFC 001DCC5C  38 00 00 00 */	li r0, 0
/* 801DFD00 001DCC60  98 1E 09 4D */	stb r0, 0x94d(r30)
lbl_801DFD04:
/* 801DFD04 001DCC64  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801DFD08 001DCC68  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801DFD0C 001DCC6C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801DFD10 001DCC70  7C 08 03 A6 */	mtlr r0
/* 801DFD14 001DCC74  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801DFD18 001DCC78  4E 80 00 20 */	blr

.global Think__8CThardusFfR13CStateManager
Think__8CThardusFfR13CStateManager:
/* 801DFD1C 001DCC7C  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 801DFD20 001DCC80  7C 08 02 A6 */	mflr r0
/* 801DFD24 001DCC84  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 801DFD28 001DCC88  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 801DFD2C 001DCC8C  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, qr0
/* 801DFD30 001DCC90  BF 01 01 90 */	stmw r24, 0x190(r1)
/* 801DFD34 001DCC94  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801DFD38 001DCC98  FF E0 08 90 */	fmr f31, f1
/* 801DFD3C 001DCC9C  7C 7A 1B 78 */	mr r26, r3
/* 801DFD40 001DCCA0  7C 9B 23 78 */	mr r27, r4
/* 801DFD44 001DCCA4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801DFD48 001DCCA8  41 82 07 FC */	beq lbl_801E0544
/* 801DFD4C 001DCCAC  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801DFD50 001DCCB0  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801DFD54 001DCCB4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801DFD58 001DCCB8  41 82 07 EC */	beq lbl_801E0544
/* 801DFD5C 001DCCBC  80 1A 09 24 */	lwz r0, 0x924(r26)
/* 801DFD60 001DCCC0  28 00 00 00 */	cmplwi r0, 0
/* 801DFD64 001DCCC4  40 82 00 30 */	bne lbl_801DFD94
/* 801DFD68 001DCCC8  88 1A 09 20 */	lbz r0, 0x920(r26)
/* 801DFD6C 001DCCCC  28 00 00 00 */	cmplwi r0, 0
/* 801DFD70 001DCCD0  41 82 00 24 */	beq lbl_801DFD94
/* 801DFD74 001DCCD4  80 7A 09 1C */	lwz r3, 0x91c(r26)
/* 801DFD78 001DCCD8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801DFD7C 001DCCDC  28 00 00 00 */	cmplwi r0, 0
/* 801DFD80 001DCCE0  41 82 00 14 */	beq lbl_801DFD94
/* 801DFD84 001DCCE4  38 7A 09 1C */	addi r3, r26, 0x91c
/* 801DFD88 001DCCE8  48 16 10 85 */	bl GetObj__6CTokenFv
/* 801DFD8C 001DCCEC  80 03 00 04 */	lwz r0, 4(r3)
/* 801DFD90 001DCCF0  90 1A 09 24 */	stw r0, 0x924(r26)
lbl_801DFD94:
/* 801DFD94 001DCCF4  88 1A 07 C8 */	lbz r0, 0x7c8(r26)
/* 801DFD98 001DCCF8  28 00 00 00 */	cmplwi r0, 0
/* 801DFD9C 001DCCFC  41 82 01 40 */	beq lbl_801DFEDC
/* 801DFDA0 001DCD00  81 3B 08 4C */	lwz r9, 0x84c(r27)
/* 801DFDA4 001DCD04  C0 3A 07 D0 */	lfs f1, 0x7d0(r26)
/* 801DFDA8 001DCD08  C0 49 00 50 */	lfs f2, 0x50(r9)
/* 801DFDAC 001DCD0C  C0 69 00 60 */	lfs f3, 0x60(r9)
/* 801DFDB0 001DCD10  C0 1A 07 D4 */	lfs f0, 0x7d4(r26)
/* 801DFDB4 001DCD14  EC C2 08 28 */	fsubs f6, f2, f1
/* 801DFDB8 001DCD18  C0 49 00 40 */	lfs f2, 0x40(r9)
/* 801DFDBC 001DCD1C  C0 3A 07 CC */	lfs f1, 0x7cc(r26)
/* 801DFDC0 001DCD20  EC A3 00 28 */	fsubs f5, f3, f0
/* 801DFDC4 001DCD24  EC 06 01 B2 */	fmuls f0, f6, f6
/* 801DFDC8 001DCD28  C0 82 AD 00 */	lfs f4, lbl_805ACA20@sda21(r2)
/* 801DFDCC 001DCD2C  EC 62 08 28 */	fsubs f3, f2, f1
/* 801DFDD0 001DCD30  D0 C1 00 98 */	stfs f6, 0x98(r1)
/* 801DFDD4 001DCD34  EC 45 01 72 */	fmuls f2, f5, f5
/* 801DFDD8 001DCD38  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 801DFDDC 001DCD3C  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801DFDE0 001DCD40  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801DFDE4 001DCD44  80 7A 00 64 */	lwz r3, 0x64(r26)
/* 801DFDE8 001DCD48  EC 01 00 2A */	fadds f0, f1, f0
/* 801DFDEC 001DCD4C  C0 63 00 00 */	lfs f3, 0(r3)
/* 801DFDF0 001DCD50  EC 22 00 2A */	fadds f1, f2, f0
/* 801DFDF4 001DCD54  EC 44 00 F2 */	fmuls f2, f4, f3
/* 801DFDF8 001DCD58  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801DFDFC 001DCD5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801DFE00 001DCD60  40 80 00 DC */	bge lbl_801DFEDC
/* 801DFE04 001DCD64  88 C1 00 3C */	lbz r6, 0x3c(r1)
/* 801DFE08 001DCD68  38 80 00 00 */	li r4, 0
/* 801DFE0C 001DCD6C  50 86 3E 30 */	rlwimi r6, r4, 7, 0x18, 0x18
/* 801DFE10 001DCD70  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DFE14 001DCD74  54 C5 06 3E */	clrlwi r5, r6, 0x18
/* 801DFE18 001DCD78  88 01 00 B8 */	lbz r0, 0xb8(r1)
/* 801DFE1C 001DCD7C  39 00 00 09 */	li r8, 9
/* 801DFE20 001DCD80  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801DFE24 001DCD84  50 85 36 72 */	rlwimi r5, r4, 6, 0x19, 0x19
/* 801DFE28 001DCD88  91 01 00 A0 */	stw r8, 0xa0(r1)
/* 801DFE2C 001DCD8C  54 A7 06 3E */	clrlwi r7, r5, 0x18
/* 801DFE30 001DCD90  38 61 00 88 */	addi r3, r1, 0x88
/* 801DFE34 001DCD94  50 87 2E B4 */	rlwimi r7, r4, 5, 0x1a, 0x1a
/* 801DFE38 001DCD98  98 C1 00 3C */	stb r6, 0x3c(r1)
/* 801DFE3C 001DCD9C  38 81 00 94 */	addi r4, r1, 0x94
/* 801DFE40 001DCDA0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801DFE44 001DCDA4  98 A1 00 3C */	stb r5, 0x3c(r1)
/* 801DFE48 001DCDA8  98 E1 00 A4 */	stb r7, 0xa4(r1)
/* 801DFE4C 001DCDAC  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801DFE50 001DCDB0  D0 41 00 B0 */	stfs f2, 0xb0(r1)
/* 801DFE54 001DCDB4  D0 81 00 B4 */	stfs f4, 0xb4(r1)
/* 801DFE58 001DCDB8  98 01 00 B8 */	stb r0, 0xb8(r1)
/* 801DFE5C 001DCDBC  A0 DA 00 08 */	lhz r6, 8(r26)
/* 801DFE60 001DCDC0  91 01 00 38 */	stw r8, 0x38(r1)
/* 801DFE64 001DCDC4  B0 C1 00 1C */	sth r6, 0x1c(r1)
/* 801DFE68 001DCDC8  A0 A9 00 08 */	lhz r5, 8(r9)
/* 801DFE6C 001DCDCC  98 E1 00 3C */	stb r7, 0x3c(r1)
/* 801DFE70 001DCDD0  B0 A1 00 24 */	sth r5, 0x24(r1)
/* 801DFE74 001DCDD4  A0 1A 00 08 */	lhz r0, 8(r26)
/* 801DFE78 001DCDD8  B0 C1 00 18 */	sth r6, 0x18(r1)
/* 801DFE7C 001DCDDC  B0 A1 00 20 */	sth r5, 0x20(r1)
/* 801DFE80 001DCDE0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801DFE84 001DCDE4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801DFE88 001DCDE8  48 13 49 C9 */	bl AsNormalized__9CVector3fCFv
/* 801DFE8C 001DCDEC  3C 80 80 5A */	lis r4, lbl_8059FD18@ha
/* 801DFE90 001DCDF0  7F 63 DB 78 */	mr r3, r27
/* 801DFE94 001DCDF4  39 04 FD 18 */	addi r8, r4, lbl_8059FD18@l
/* 801DFE98 001DCDF8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801DFE9C 001DCDFC  38 81 00 2C */	addi r4, r1, 0x2c
/* 801DFEA0 001DCE00  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801DFEA4 001DCE04  38 E1 00 A0 */	addi r7, r1, 0xa0
/* 801DFEA8 001DCE08  39 21 00 88 */	addi r9, r1, 0x88
/* 801DFEAC 001DCE0C  4B E6 A1 F5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801DFEB0 001DCE10  38 00 00 01 */	li r0, 1
/* 801DFEB4 001DCE14  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801DFEB8 001DCE18  98 1A 06 88 */	stb r0, 0x688(r26)
/* 801DFEBC 001DCE1C  38 00 00 00 */	li r0, 0
/* 801DFEC0 001DCE20  98 1A 07 C8 */	stb r0, 0x7c8(r26)
/* 801DFEC4 001DCE24  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801DFEC8 001DCE28  D0 1A 07 CC */	stfs f0, 0x7cc(r26)
/* 801DFECC 001DCE2C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801DFED0 001DCE30  D0 1A 07 D0 */	stfs f0, 0x7d0(r26)
/* 801DFED4 001DCE34  C0 03 00 08 */	lfs f0, 8(r3)
/* 801DFED8 001DCE38  D0 1A 07 D4 */	stfs f0, 0x7d4(r26)
lbl_801DFEDC:
/* 801DFEDC 001DCE3C  FC 20 F8 90 */	fmr f1, f31
/* 801DFEE0 001DCE40  7F 43 D3 78 */	mr r3, r26
/* 801DFEE4 001DCE44  7F 64 DB 78 */	mr r4, r27
/* 801DFEE8 001DCE48  4B FF C0 4D */	bl sub_801dbf34
/* 801DFEEC 001DCE4C  83 FA 06 14 */	lwz r31, 0x614(r26)
/* 801DFEF0 001DCE50  7F 43 D3 78 */	mr r3, r26
/* 801DFEF4 001DCE54  4B FF C3 D5 */	bl sub_801dc2c8
/* 801DFEF8 001DCE58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DFEFC 001DCE5C  41 82 00 24 */	beq lbl_801DFF20
/* 801DFF00 001DCE60  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DFF04 001DCE64  7F 43 D3 78 */	mr r3, r26
/* 801DFF08 001DCE68  7F 65 DB 78 */	mr r5, r27
/* 801DFF0C 001DCE6C  38 80 00 11 */	li r4, 0x11
/* 801DFF10 001DCE70  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 801DFF14 001DCE74  38 C0 FF FF */	li r6, -1
/* 801DFF18 001DCE78  4B E7 11 A9 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801DFF1C 001DCE7C  48 00 00 2C */	b lbl_801DFF48
lbl_801DFF20:
/* 801DFF20 001DCE80  80 7A 06 14 */	lwz r3, 0x614(r26)
/* 801DFF24 001DCE84  80 9A 06 48 */	lwz r4, 0x648(r26)
/* 801DFF28 001DCE88  38 03 FF FE */	addi r0, r3, -2
/* 801DFF2C 001DCE8C  7C 04 00 40 */	cmplw r4, r0
/* 801DFF30 001DCE90  41 80 00 10 */	blt lbl_801DFF40
/* 801DFF34 001DCE94  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DFF38 001DCE98  D0 1A 06 90 */	stfs f0, 0x690(r26)
/* 801DFF3C 001DCE9C  48 00 00 0C */	b lbl_801DFF48
lbl_801DFF40:
/* 801DFF40 001DCEA0  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DFF44 001DCEA4  D0 1A 06 90 */	stfs f0, 0x690(r26)
lbl_801DFF48:
/* 801DFF48 001DCEA8  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 801DFF4C 001DCEAC  28 00 00 00 */	cmplwi r0, 0
/* 801DFF50 001DCEB0  40 82 00 28 */	bne lbl_801DFF78
/* 801DFF54 001DCEB4  C0 3A 06 90 */	lfs f1, 0x690(r26)
/* 801DFF58 001DCEB8  38 60 00 00 */	li r3, 0
/* 801DFF5C 001DCEBC  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801DFF60 001DCEC0  D0 3A 03 B4 */	stfs f1, 0x3b4(r26)
/* 801DFF64 001DCEC4  88 1A 04 02 */	lbz r0, 0x402(r26)
/* 801DFF68 001DCEC8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801DFF6C 001DCECC  98 1A 04 02 */	stb r0, 0x402(r26)
/* 801DFF70 001DCED0  D0 1A 05 04 */	stfs f0, 0x504(r26)
/* 801DFF74 001DCED4  48 00 00 2C */	b lbl_801DFFA0
lbl_801DFF78:
/* 801DFF78 001DCED8  C0 5A 06 90 */	lfs f2, 0x690(r26)
/* 801DFF7C 001DCEDC  38 60 00 01 */	li r3, 1
/* 801DFF80 001DCEE0  C0 3A 06 94 */	lfs f1, 0x694(r26)
/* 801DFF84 001DCEE4  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801DFF88 001DCEE8  EC 22 00 72 */	fmuls f1, f2, f1
/* 801DFF8C 001DCEEC  D0 3A 03 B4 */	stfs f1, 0x3b4(r26)
/* 801DFF90 001DCEF0  88 1A 04 02 */	lbz r0, 0x402(r26)
/* 801DFF94 001DCEF4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801DFF98 001DCEF8  98 1A 04 02 */	stb r0, 0x402(r26)
/* 801DFF9C 001DCEFC  D0 1A 05 04 */	stfs f0, 0x504(r26)
lbl_801DFFA0:
/* 801DFFA0 001DCF00  FC 20 F8 90 */	fmr f1, f31
/* 801DFFA4 001DCF04  7F 43 D3 78 */	mr r3, r26
/* 801DFFA8 001DCF08  7F 64 DB 78 */	mr r4, r27
/* 801DFFAC 001DCF0C  4B E9 9B 6D */	bl Think__10CPatternedFfR13CStateManager
/* 801DFFB0 001DCF10  80 1A 06 48 */	lwz r0, 0x648(r26)
/* 801DFFB4 001DCF14  28 00 00 03 */	cmplwi r0, 3
/* 801DFFB8 001DCF18  41 80 00 1C */	blt lbl_801DFFD4
/* 801DFFBC 001DCF1C  88 1A 06 89 */	lbz r0, 0x689(r26)
/* 801DFFC0 001DCF20  28 00 00 00 */	cmplwi r0, 0
/* 801DFFC4 001DCF24  40 82 00 10 */	bne lbl_801DFFD4
/* 801DFFC8 001DCF28  7F 43 D3 78 */	mr r3, r26
/* 801DFFCC 001DCF2C  7F 64 DB 78 */	mr r4, r27
/* 801DFFD0 001DCF30  4B FF C8 A9 */	bl sub_801dc878
lbl_801DFFD4:
/* 801DFFD4 001DCF34  FC 20 F8 90 */	fmr f1, f31
/* 801DFFD8 001DCF38  80 7A 05 F0 */	lwz r3, 0x5f0(r26)
/* 801DFFDC 001DCF3C  7F 64 DB 78 */	mr r4, r27
/* 801DFFE0 001DCF40  38 A0 00 00 */	li r5, 0
/* 801DFFE4 001DCF44  4B FC 74 6D */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801DFFE8 001DCF48  FC 20 F8 90 */	fmr f1, f31
/* 801DFFEC 001DCF4C  80 7A 05 F4 */	lwz r3, 0x5f4(r26)
/* 801DFFF0 001DCF50  7F 64 DB 78 */	mr r4, r27
/* 801DFFF4 001DCF54  38 A0 00 00 */	li r5, 0
/* 801DFFF8 001DCF58  4B FC 74 59 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801DFFFC 001DCF5C  FC 20 F8 90 */	fmr f1, f31
/* 801E0000 001DCF60  80 7A 05 F8 */	lwz r3, 0x5f8(r26)
/* 801E0004 001DCF64  7F 64 DB 78 */	mr r4, r27
/* 801E0008 001DCF68  38 A0 00 00 */	li r5, 0
/* 801E000C 001DCF6C  4B FC 74 45 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801E0010 001DCF70  7F 43 D3 78 */	mr r3, r26
/* 801E0014 001DCF74  7F 64 DB 78 */	mr r4, r27
/* 801E0018 001DCF78  4B FF D5 F1 */	bl sub_801dd608
/* 801E001C 001DCF7C  7F 43 D3 78 */	mr r3, r26
/* 801E0020 001DCF80  7F 64 DB 78 */	mr r4, r27
/* 801E0024 001DCF84  4B FF CF 81 */	bl sub_801dcfa4
/* 801E0028 001DCF88  80 7A 06 48 */	lwz r3, 0x648(r26)
/* 801E002C 001DCF8C  80 1A 06 14 */	lwz r0, 0x614(r26)
/* 801E0030 001DCF90  7C 03 00 40 */	cmplw r3, r0
/* 801E0034 001DCF94  41 80 00 28 */	blt lbl_801E005C
/* 801E0038 001DCF98  81 9A 00 00 */	lwz r12, 0(r26)
/* 801E003C 001DCF9C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801E0040 001DCFA0  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 801E0044 001DCFA4  7F 43 D3 78 */	mr r3, r26
/* 801E0048 001DCFA8  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 801E004C 001DCFAC  7F 64 DB 78 */	mr r4, r27
/* 801E0050 001DCFB0  38 C0 00 14 */	li r6, 0x14
/* 801E0054 001DCFB4  7D 89 03 A6 */	mtctr r12
/* 801E0058 001DCFB8  4E 80 04 21 */	bctrl
lbl_801E005C:
/* 801E005C 001DCFBC  80 7B 08 B8 */	lwz r3, 0x8b8(r27)
/* 801E0060 001DCFC0  80 63 00 00 */	lwz r3, 0(r3)
/* 801E0064 001DCFC4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801E0068 001DCFC8  2C 00 00 03 */	cmpwi r0, 3
/* 801E006C 001DCFCC  40 82 00 F8 */	bne lbl_801E0164
/* 801E0070 001DCFD0  88 1A 04 02 */	lbz r0, 0x402(r26)
/* 801E0074 001DCFD4  38 60 00 00 */	li r3, 0
/* 801E0078 001DCFD8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801E007C 001DCFDC  7F 43 D3 78 */	mr r3, r26
/* 801E0080 001DCFE0  98 1A 04 02 */	stb r0, 0x402(r26)
/* 801E0084 001DCFE4  7F 66 DB 78 */	mr r6, r27
/* 801E0088 001DCFE8  38 80 00 00 */	li r4, 0
/* 801E008C 001DCFEC  38 A0 00 12 */	li r5, 0x12
/* 801E0090 001DCFF0  4B FF D2 5D */	bl sub_801dd2ec
/* 801E0094 001DCFF4  3B 00 00 00 */	li r24, 0
/* 801E0098 001DCFF8  3B 20 00 00 */	li r25, 0
/* 801E009C 001DCFFC  48 00 00 A8 */	b lbl_801E0144
lbl_801E00A0:
/* 801E00A0 001DD000  80 BA 06 1C */	lwz r5, 0x61c(r26)
/* 801E00A4 001DD004  7F 63 DB 78 */	mr r3, r27
/* 801E00A8 001DD008  38 81 00 14 */	addi r4, r1, 0x14
/* 801E00AC 001DD00C  7C 05 CA 2E */	lhzx r0, r5, r25
/* 801E00B0 001DD010  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801E00B4 001DD014  4B E6 C4 C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E00B8 001DD018  7C 7C 1B 79 */	or. r28, r3, r3
/* 801E00BC 001DD01C  41 82 00 80 */	beq lbl_801E013C
/* 801E00C0 001DD020  80 1A 06 48 */	lwz r0, 0x648(r26)
/* 801E00C4 001DD024  7C 18 00 40 */	cmplw r24, r0
/* 801E00C8 001DD028  40 82 00 54 */	bne lbl_801E011C
/* 801E00CC 001DD02C  88 1A 06 88 */	lbz r0, 0x688(r26)
/* 801E00D0 001DD030  28 00 00 00 */	cmplwi r0, 0
/* 801E00D4 001DD034  40 82 00 48 */	bne lbl_801E011C
/* 801E00D8 001DD038  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 801E00DC 001DD03C  28 00 00 00 */	cmplwi r0, 0
/* 801E00E0 001DD040  40 82 00 3C */	bne lbl_801E011C
/* 801E00E4 001DD044  88 1A 09 09 */	lbz r0, 0x909(r26)
/* 801E00E8 001DD048  28 00 00 00 */	cmplwi r0, 0
/* 801E00EC 001DD04C  40 82 00 30 */	bne lbl_801E011C
/* 801E00F0 001DD050  88 1A 09 3D */	lbz r0, 0x93d(r26)
/* 801E00F4 001DD054  28 00 00 00 */	cmplwi r0, 0
/* 801E00F8 001DD058  40 82 00 24 */	bne lbl_801E011C
/* 801E00FC 001DD05C  7F 65 DB 78 */	mr r5, r27
/* 801E0100 001DD060  38 80 00 29 */	li r4, 0x29
/* 801E0104 001DD064  4B E7 42 4D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0108 001DD068  7F 83 E3 78 */	mr r3, r28
/* 801E010C 001DD06C  7F 65 DB 78 */	mr r5, r27
/* 801E0110 001DD070  38 80 00 28 */	li r4, 0x28
/* 801E0114 001DD074  4B E7 42 3D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0118 001DD078  48 00 00 24 */	b lbl_801E013C
lbl_801E011C:
/* 801E011C 001DD07C  7F 83 E3 78 */	mr r3, r28
/* 801E0120 001DD080  7F 65 DB 78 */	mr r5, r27
/* 801E0124 001DD084  38 80 00 29 */	li r4, 0x29
/* 801E0128 001DD088  4B E7 3E 59 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E012C 001DD08C  7F 83 E3 78 */	mr r3, r28
/* 801E0130 001DD090  7F 65 DB 78 */	mr r5, r27
/* 801E0134 001DD094  38 80 00 28 */	li r4, 0x28
/* 801E0138 001DD098  4B E7 3E 49 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801E013C:
/* 801E013C 001DD09C  3B 18 00 01 */	addi r24, r24, 1
/* 801E0140 001DD0A0  3B 39 00 02 */	addi r25, r25, 2
lbl_801E0144:
/* 801E0144 001DD0A4  7C 18 F8 40 */	cmplw r24, r31
/* 801E0148 001DD0A8  41 80 FF 58 */	blt lbl_801E00A0
/* 801E014C 001DD0AC  88 1A 06 88 */	lbz r0, 0x688(r26)
/* 801E0150 001DD0B0  28 00 00 00 */	cmplwi r0, 0
/* 801E0154 001DD0B4  41 82 01 D8 */	beq lbl_801E032C
/* 801E0158 001DD0B8  38 00 00 00 */	li r0, 0
/* 801E015C 001DD0BC  98 1A 06 88 */	stb r0, 0x688(r26)
/* 801E0160 001DD0C0  48 00 01 CC */	b lbl_801E032C
lbl_801E0164:
/* 801E0164 001DD0C4  88 1A 04 02 */	lbz r0, 0x402(r26)
/* 801E0168 001DD0C8  38 60 00 01 */	li r3, 1
/* 801E016C 001DD0CC  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801E0170 001DD0D0  7F 43 D3 78 */	mr r3, r26
/* 801E0174 001DD0D4  98 1A 04 02 */	stb r0, 0x402(r26)
/* 801E0178 001DD0D8  7F 66 DB 78 */	mr r6, r27
/* 801E017C 001DD0DC  38 80 00 01 */	li r4, 1
/* 801E0180 001DD0E0  38 A0 00 12 */	li r5, 0x12
/* 801E0184 001DD0E4  4B FF D1 69 */	bl sub_801dd2ec
/* 801E0188 001DD0E8  83 DA 06 14 */	lwz r30, 0x614(r26)
/* 801E018C 001DD0EC  3B A0 00 00 */	li r29, 0
/* 801E0190 001DD0F0  3B 20 00 00 */	li r25, 0
/* 801E0194 001DD0F4  48 00 01 90 */	b lbl_801E0324
lbl_801E0198:
/* 801E0198 001DD0F8  80 BA 06 1C */	lwz r5, 0x61c(r26)
/* 801E019C 001DD0FC  7F 63 DB 78 */	mr r3, r27
/* 801E01A0 001DD100  38 81 00 10 */	addi r4, r1, 0x10
/* 801E01A4 001DD104  7C 05 CA 2E */	lhzx r0, r5, r25
/* 801E01A8 001DD108  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801E01AC 001DD10C  4B E6 C3 C9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E01B0 001DD110  7C 7C 1B 79 */	or. r28, r3, r3
/* 801E01B4 001DD114  41 82 01 68 */	beq lbl_801E031C
/* 801E01B8 001DD118  88 1A 06 88 */	lbz r0, 0x688(r26)
/* 801E01BC 001DD11C  3B FC 00 10 */	addi r31, r28, 0x10
/* 801E01C0 001DD120  28 00 00 00 */	cmplwi r0, 0
/* 801E01C4 001DD124  40 82 00 28 */	bne lbl_801E01EC
/* 801E01C8 001DD128  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 801E01CC 001DD12C  28 00 00 00 */	cmplwi r0, 0
/* 801E01D0 001DD130  40 82 00 1C */	bne lbl_801E01EC
/* 801E01D4 001DD134  88 1A 09 09 */	lbz r0, 0x909(r26)
/* 801E01D8 001DD138  28 00 00 00 */	cmplwi r0, 0
/* 801E01DC 001DD13C  40 82 00 10 */	bne lbl_801E01EC
/* 801E01E0 001DD140  88 1A 09 3D */	lbz r0, 0x93d(r26)
/* 801E01E4 001DD144  28 00 00 00 */	cmplwi r0, 0
/* 801E01E8 001DD148  41 82 00 30 */	beq lbl_801E0218
lbl_801E01EC:
/* 801E01EC 001DD14C  38 00 00 00 */	li r0, 0
/* 801E01F0 001DD150  7F 83 E3 78 */	mr r3, r28
/* 801E01F4 001DD154  98 1A 06 88 */	stb r0, 0x688(r26)
/* 801E01F8 001DD158  7F 65 DB 78 */	mr r5, r27
/* 801E01FC 001DD15C  38 80 00 29 */	li r4, 0x29
/* 801E0200 001DD160  4B E7 3D 81 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0204 001DD164  7F 83 E3 78 */	mr r3, r28
/* 801E0208 001DD168  7F 65 DB 78 */	mr r5, r27
/* 801E020C 001DD16C  38 80 00 28 */	li r4, 0x28
/* 801E0210 001DD170  4B E7 3D 71 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0214 001DD174  48 00 01 08 */	b lbl_801E031C
lbl_801E0218:
/* 801E0218 001DD178  80 82 AC C8 */	lwz r4, lbl_805AC9E8@sda21(r2)
/* 801E021C 001DD17C  38 61 00 78 */	addi r3, r1, 0x78
/* 801E0220 001DD180  4B E2 4A 99 */	bl string_l__4rstlFPCc
/* 801E0224 001DD184  7F E3 FB 78 */	mr r3, r31
/* 801E0228 001DD188  38 81 00 78 */	addi r4, r1, 0x78
/* 801E022C 001DD18C  4B E7 23 B5 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801E0230 001DD190  7C 78 1B 78 */	mr r24, r3
/* 801E0234 001DD194  38 61 00 78 */	addi r3, r1, 0x78
/* 801E0238 001DD198  48 15 D8 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E023C 001DD19C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801E0240 001DD1A0  41 82 00 48 */	beq lbl_801E0288
/* 801E0244 001DD1A4  80 7A 06 BC */	lwz r3, 0x6bc(r26)
/* 801E0248 001DD1A8  80 9A 06 48 */	lwz r4, 0x648(r26)
/* 801E024C 001DD1AC  7C 03 20 AE */	lbzx r0, r3, r4
/* 801E0250 001DD1B0  28 00 00 00 */	cmplwi r0, 0
/* 801E0254 001DD1B4  41 82 00 34 */	beq lbl_801E0288
/* 801E0258 001DD1B8  38 1E FF FF */	addi r0, r30, -1
/* 801E025C 001DD1BC  7C 04 00 40 */	cmplw r4, r0
/* 801E0260 001DD1C0  41 82 00 28 */	beq lbl_801E0288
/* 801E0264 001DD1C4  7F 83 E3 78 */	mr r3, r28
/* 801E0268 001DD1C8  7F 65 DB 78 */	mr r5, r27
/* 801E026C 001DD1CC  38 80 00 29 */	li r4, 0x29
/* 801E0270 001DD1D0  4B E7 3D 11 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0274 001DD1D4  7F 83 E3 78 */	mr r3, r28
/* 801E0278 001DD1D8  7F 65 DB 78 */	mr r5, r27
/* 801E027C 001DD1DC  38 80 00 28 */	li r4, 0x28
/* 801E0280 001DD1E0  4B E7 3D 01 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E0284 001DD1E4  48 00 00 98 */	b lbl_801E031C
lbl_801E0288:
/* 801E0288 001DD1E8  80 7A 06 BC */	lwz r3, 0x6bc(r26)
/* 801E028C 001DD1EC  7C 03 E8 AE */	lbzx r0, r3, r29
/* 801E0290 001DD1F0  28 00 00 00 */	cmplwi r0, 0
/* 801E0294 001DD1F4  40 82 00 44 */	bne lbl_801E02D8
/* 801E0298 001DD1F8  80 82 AC C8 */	lwz r4, lbl_805AC9E8@sda21(r2)
/* 801E029C 001DD1FC  38 61 00 68 */	addi r3, r1, 0x68
/* 801E02A0 001DD200  4B E2 4A 19 */	bl string_l__4rstlFPCc
/* 801E02A4 001DD204  7F E3 FB 78 */	mr r3, r31
/* 801E02A8 001DD208  38 81 00 68 */	addi r4, r1, 0x68
/* 801E02AC 001DD20C  4B E7 23 35 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801E02B0 001DD210  7C 7F 1B 78 */	mr r31, r3
/* 801E02B4 001DD214  38 61 00 68 */	addi r3, r1, 0x68
/* 801E02B8 001DD218  48 15 D8 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E02BC 001DD21C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801E02C0 001DD220  41 82 00 3C */	beq lbl_801E02FC
/* 801E02C4 001DD224  80 7A 06 BC */	lwz r3, 0x6bc(r26)
/* 801E02C8 001DD228  80 1A 06 48 */	lwz r0, 0x648(r26)
/* 801E02CC 001DD22C  7C 03 00 AE */	lbzx r0, r3, r0
/* 801E02D0 001DD230  28 00 00 00 */	cmplwi r0, 0
/* 801E02D4 001DD234  40 82 00 28 */	bne lbl_801E02FC
lbl_801E02D8:
/* 801E02D8 001DD238  7F 83 E3 78 */	mr r3, r28
/* 801E02DC 001DD23C  7F 65 DB 78 */	mr r5, r27
/* 801E02E0 001DD240  38 80 00 29 */	li r4, 0x29
/* 801E02E4 001DD244  4B E7 40 6D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E02E8 001DD248  7F 83 E3 78 */	mr r3, r28
/* 801E02EC 001DD24C  7F 65 DB 78 */	mr r5, r27
/* 801E02F0 001DD250  38 80 00 28 */	li r4, 0x28
/* 801E02F4 001DD254  4B E7 40 5D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E02F8 001DD258  48 00 00 24 */	b lbl_801E031C
lbl_801E02FC:
/* 801E02FC 001DD25C  7F 83 E3 78 */	mr r3, r28
/* 801E0300 001DD260  7F 65 DB 78 */	mr r5, r27
/* 801E0304 001DD264  38 80 00 29 */	li r4, 0x29
/* 801E0308 001DD268  4B E7 3C 79 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E030C 001DD26C  7F 83 E3 78 */	mr r3, r28
/* 801E0310 001DD270  7F 65 DB 78 */	mr r5, r27
/* 801E0314 001DD274  38 80 00 28 */	li r4, 0x28
/* 801E0318 001DD278  4B E7 3C 69 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801E031C:
/* 801E031C 001DD27C  3B BD 00 01 */	addi r29, r29, 1
/* 801E0320 001DD280  3B 39 00 02 */	addi r25, r25, 2
lbl_801E0324:
/* 801E0324 001DD284  7C 1D F0 40 */	cmplw r29, r30
/* 801E0328 001DD288  41 80 FE 70 */	blt lbl_801E0198
lbl_801E032C:
/* 801E032C 001DD28C  80 1A 06 44 */	lwz r0, 0x644(r26)
/* 801E0330 001DD290  2C 00 00 01 */	cmpwi r0, 1
/* 801E0334 001DD294  40 82 01 BC */	bne lbl_801E04F0
/* 801E0338 001DD298  80 9A 05 F0 */	lwz r4, 0x5f0(r26)
/* 801E033C 001DD29C  7F 43 D3 78 */	mr r3, r26
/* 801E0340 001DD2A0  7F 67 DB 78 */	mr r7, r27
/* 801E0344 001DD2A4  38 A0 00 00 */	li r5, 0
/* 801E0348 001DD2A8  38 C0 00 20 */	li r6, 0x20
/* 801E034C 001DD2AC  4B FF D0 91 */	bl sub_801dd3dc
/* 801E0350 001DD2B0  80 9A 05 F4 */	lwz r4, 0x5f4(r26)
/* 801E0354 001DD2B4  7F 43 D3 78 */	mr r3, r26
/* 801E0358 001DD2B8  7F 67 DB 78 */	mr r7, r27
/* 801E035C 001DD2BC  38 A0 00 00 */	li r5, 0
/* 801E0360 001DD2C0  38 C0 00 20 */	li r6, 0x20
/* 801E0364 001DD2C4  4B FF D0 79 */	bl sub_801dd3dc
/* 801E0368 001DD2C8  80 9A 05 F8 */	lwz r4, 0x5f8(r26)
/* 801E036C 001DD2CC  7F 43 D3 78 */	mr r3, r26
/* 801E0370 001DD2D0  7F 67 DB 78 */	mr r7, r27
/* 801E0374 001DD2D4  38 A0 00 00 */	li r5, 0
/* 801E0378 001DD2D8  38 C0 00 20 */	li r6, 0x20
/* 801E037C 001DD2DC  4B FF D0 61 */	bl sub_801dd3dc
/* 801E0380 001DD2E0  88 1A 09 3C */	lbz r0, 0x93c(r26)
/* 801E0384 001DD2E4  28 00 00 00 */	cmplwi r0, 0
/* 801E0388 001DD2E8  41 82 01 B0 */	beq lbl_801E0538
/* 801E038C 001DD2EC  C0 3A 06 F8 */	lfs f1, 0x6f8(r26)
/* 801E0390 001DD2F0  C0 02 AD 34 */	lfs f0, lbl_805ACA54@sda21(r2)
/* 801E0394 001DD2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E0398 001DD2F8  4C 41 13 82 */	cror 2, 1, 2
/* 801E039C 001DD2FC  40 82 00 C4 */	bne lbl_801E0460
/* 801E03A0 001DD300  80 9B 08 70 */	lwz r4, 0x870(r27)
/* 801E03A4 001DD304  38 61 00 0C */	addi r3, r1, 0xc
/* 801E03A8 001DD308  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801E03AC 001DD30C  A3 05 00 08 */	lhz r24, 8(r5)
/* 801E03B0 001DD310  4B E2 B8 29 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 801E03B4 001DD314  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801E03B8 001DD318  7C 00 C0 40 */	cmplw r0, r24
/* 801E03BC 001DD31C  40 82 00 98 */	bne lbl_801E0454
/* 801E03C0 001DD320  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801E03C4 001DD324  38 61 00 BC */	addi r3, r1, 0xbc
/* 801E03C8 001DD328  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 801E03CC 001DD32C  38 81 00 5C */	addi r4, r1, 0x5c
/* 801E03D0 001DD330  C0 1A 00 60 */	lfs f0, 0x60(r26)
/* 801E03D4 001DD334  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801E03D8 001DD338  C0 22 AD 0C */	lfs f1, lbl_805ACA2C@sda21(r2)
/* 801E03DC 001DD33C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801E03E0 001DD340  80 C1 00 50 */	lwz r6, 0x50(r1)
/* 801E03E4 001DD344  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801E03E8 001DD348  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 801E03EC 001DD34C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 801E03F0 001DD350  90 C1 00 5C */	stw r6, 0x5c(r1)
/* 801E03F4 001DD354  C0 42 AD 10 */	lfs f2, lbl_805ACA30@sda21(r2)
/* 801E03F8 001DD358  90 A1 00 60 */	stw r5, 0x60(r1)
/* 801E03FC 001DD35C  C0 62 AD 50 */	lfs f3, lbl_805ACA70@sda21(r2)
/* 801E0400 001DD360  90 01 00 64 */	stw r0, 0x64(r1)
/* 801E0404 001DD364  4B F7 D0 C1 */	bl BuildMissileShakeData__16CCameraShakeDataFfffRC9CVector3f
/* 801E0408 001DD368  80 7B 08 70 */	lwz r3, 0x870(r27)
/* 801E040C 001DD36C  38 81 00 BC */	addi r4, r1, 0xbc
/* 801E0410 001DD370  38 A0 00 01 */	li r5, 1
/* 801E0414 001DD374  4B E2 A6 0D */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 801E0418 001DD378  34 81 01 3C */	addic. r4, r1, 0x13c
/* 801E041C 001DD37C  41 82 00 10 */	beq lbl_801E042C
/* 801E0420 001DD380  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801E0424 001DD384  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801E0428 001DD388  90 04 00 00 */	stw r0, 0(r4)
lbl_801E042C:
/* 801E042C 001DD38C  34 81 01 00 */	addic. r4, r1, 0x100
/* 801E0430 001DD390  41 82 00 10 */	beq lbl_801E0440
/* 801E0434 001DD394  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801E0438 001DD398  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801E043C 001DD39C  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0440:
/* 801E0440 001DD3A0  34 81 00 C4 */	addic. r4, r1, 0xc4
/* 801E0444 001DD3A4  41 82 00 10 */	beq lbl_801E0454
/* 801E0448 001DD3A8  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 801E044C 001DD3AC  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 801E0450 001DD3B0  90 04 00 00 */	stw r0, 0(r4)
lbl_801E0454:
/* 801E0454 001DD3B4  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E0458 001DD3B8  D0 1A 06 F8 */	stfs f0, 0x6f8(r26)
/* 801E045C 001DD3BC  48 00 00 0C */	b lbl_801E0468
lbl_801E0460:
/* 801E0460 001DD3C0  EC 01 F8 2A */	fadds f0, f1, f31
/* 801E0464 001DD3C4  D0 1A 06 F8 */	stfs f0, 0x6f8(r26)
lbl_801E0468:
/* 801E0468 001DD3C8  80 9B 08 70 */	lwz r4, 0x870(r27)
/* 801E046C 001DD3CC  38 61 00 08 */	addi r3, r1, 8
/* 801E0470 001DD3D0  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 801E0474 001DD3D4  A3 05 00 08 */	lhz r24, 8(r5)
/* 801E0478 001DD3D8  4B E2 B7 61 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 801E047C 001DD3DC  A0 01 00 08 */	lhz r0, 8(r1)
/* 801E0480 001DD3E0  7C 00 C0 40 */	cmplw r0, r24
/* 801E0484 001DD3E4  41 82 00 B4 */	beq lbl_801E0538
/* 801E0488 001DD3E8  88 1A 09 5D */	lbz r0, 0x95d(r26)
/* 801E048C 001DD3EC  28 00 00 01 */	cmplwi r0, 1
/* 801E0490 001DD3F0  40 80 00 A8 */	bge lbl_801E0538
/* 801E0494 001DD3F4  80 6D A0 74 */	lwz r3, gpStringTable@sda21(r13)
/* 801E0498 001DD3F8  38 80 00 68 */	li r4, 0x68
/* 801E049C 001DD3FC  48 17 62 61 */	bl GetString__12CStringTableCFi
/* 801E04A0 001DD400  7C 60 1B 78 */	mr r0, r3
/* 801E04A4 001DD404  38 61 00 40 */	addi r3, r1, 0x40
/* 801E04A8 001DD408  7C 04 03 78 */	mr r4, r0
/* 801E04AC 001DD40C  4B E3 55 45 */	bl wstring_l__4rstlFPCw
/* 801E04B0 001DD410  C0 02 AD 18 */	lfs f0, lbl_805ACA38@sda21(r2)
/* 801E04B4 001DD414  38 00 00 00 */	li r0, 0
/* 801E04B8 001DD418  38 A0 00 01 */	li r5, 1
/* 801E04BC 001DD41C  98 01 00 35 */	stb r0, 0x35(r1)
/* 801E04C0 001DD420  38 61 00 40 */	addi r3, r1, 0x40
/* 801E04C4 001DD424  38 81 00 30 */	addi r4, r1, 0x30
/* 801E04C8 001DD428  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801E04CC 001DD42C  98 A1 00 34 */	stb r5, 0x34(r1)
/* 801E04D0 001DD430  98 01 00 36 */	stb r0, 0x36(r1)
/* 801E04D4 001DD434  4B E8 B7 95 */	bl DisplayHudMemo__9CSamusHudFRC7wstringRC12SHudMemoInfo
/* 801E04D8 001DD438  38 61 00 40 */	addi r3, r1, 0x40
/* 801E04DC 001DD43C  48 15 CC 59 */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 801E04E0 001DD440  88 7A 09 5D */	lbz r3, 0x95d(r26)
/* 801E04E4 001DD444  38 03 00 01 */	addi r0, r3, 1
/* 801E04E8 001DD448  98 1A 09 5D */	stb r0, 0x95d(r26)
/* 801E04EC 001DD44C  48 00 00 4C */	b lbl_801E0538
lbl_801E04F0:
/* 801E04F0 001DD450  80 9A 05 F0 */	lwz r4, 0x5f0(r26)
/* 801E04F4 001DD454  7F 43 D3 78 */	mr r3, r26
/* 801E04F8 001DD458  7F 67 DB 78 */	mr r7, r27
/* 801E04FC 001DD45C  38 A0 00 01 */	li r5, 1
/* 801E0500 001DD460  38 C0 00 20 */	li r6, 0x20
/* 801E0504 001DD464  4B FF CE D9 */	bl sub_801dd3dc
/* 801E0508 001DD468  80 9A 05 F4 */	lwz r4, 0x5f4(r26)
/* 801E050C 001DD46C  7F 43 D3 78 */	mr r3, r26
/* 801E0510 001DD470  7F 67 DB 78 */	mr r7, r27
/* 801E0514 001DD474  38 A0 00 01 */	li r5, 1
/* 801E0518 001DD478  38 C0 00 20 */	li r6, 0x20
/* 801E051C 001DD47C  4B FF CE C1 */	bl sub_801dd3dc
/* 801E0520 001DD480  80 9A 05 F8 */	lwz r4, 0x5f8(r26)
/* 801E0524 001DD484  7F 43 D3 78 */	mr r3, r26
/* 801E0528 001DD488  7F 67 DB 78 */	mr r7, r27
/* 801E052C 001DD48C  38 A0 00 01 */	li r5, 1
/* 801E0530 001DD490  38 C0 00 20 */	li r6, 0x20
/* 801E0534 001DD494  4B FF CE A9 */	bl sub_801dd3dc
lbl_801E0538:
/* 801E0538 001DD498  7F 43 D3 78 */	mr r3, r26
/* 801E053C 001DD49C  7F 64 DB 78 */	mr r4, r27
/* 801E0540 001DD4A0  4B FF AC 09 */	bl sub_801db148
lbl_801E0544:
/* 801E0544 001DD4A4  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, qr0
/* 801E0548 001DD4A8  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 801E054C 001DD4AC  BB 01 01 90 */	lmw r24, 0x190(r1)
/* 801E0550 001DD4B0  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 801E0554 001DD4B4  7C 08 03 A6 */	mtlr r0
/* 801E0558 001DD4B8  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 801E055C 001DD4BC  4E 80 00 20 */	blr

.global DoUserAnimEvent__8CThardusFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__8CThardusFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801E0560 001DD4C0  94 21 FA 90 */	stwu r1, -0x570(r1)
/* 801E0564 001DD4C4  7C 08 02 A6 */	mflr r0
/* 801E0568 001DD4C8  90 01 05 74 */	stw r0, 0x574(r1)
/* 801E056C 001DD4CC  DB E1 05 60 */	stfd f31, 0x560(r1)
/* 801E0570 001DD4D0  F3 E1 05 68 */	psq_st f31, 1384(r1), 0, qr0
/* 801E0574 001DD4D4  DB C1 05 50 */	stfd f30, 0x550(r1)
/* 801E0578 001DD4D8  F3 C1 05 58 */	psq_st f30, 1368(r1), 0, qr0
/* 801E057C 001DD4DC  DB A1 05 40 */	stfd f29, 0x540(r1)
/* 801E0580 001DD4E0  F3 A1 05 48 */	psq_st f29, 1352(r1), 0, qr0
/* 801E0584 001DD4E4  DB 81 05 30 */	stfd f28, 0x530(r1)
/* 801E0588 001DD4E8  F3 81 05 38 */	psq_st f28, 1336(r1), 0, qr0
/* 801E058C 001DD4EC  DB 61 05 20 */	stfd f27, 0x520(r1)
/* 801E0590 001DD4F0  F3 61 05 28 */	psq_st f27, 1320(r1), 0, qr0
/* 801E0594 001DD4F4  BE E1 04 FC */	stmw r23, 0x4fc(r1)
/* 801E0598 001DD4F8  28 06 00 11 */	cmplwi r6, 0x11
/* 801E059C 001DD4FC  7C 7E 1B 78 */	mr r30, r3
/* 801E05A0 001DD500  7C 9F 23 78 */	mr r31, r4
/* 801E05A4 001DD504  41 81 0A D8 */	bgt lbl_801E107C
/* 801E05A8 001DD508  3C E0 80 3E */	lis r7, lbl_803E5FAC@ha
/* 801E05AC 001DD50C  54 C0 10 3A */	slwi r0, r6, 2
/* 801E05B0 001DD510  38 E7 5F AC */	addi r7, r7, lbl_803E5FAC@l
/* 801E05B4 001DD514  7C 07 00 2E */	lwzx r0, r7, r0
/* 801E05B8 001DD518  7C 09 03 A6 */	mtctr r0
/* 801E05BC 001DD51C  4E 80 04 20 */	bctr
.global lbl_801E05C0
lbl_801E05C0:
/* 801E05C0 001DD520  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E05C4 001DD524  48 13 1F 5D */	bl Next__9CRandom16Fv
/* 801E05C8 001DD528  54 64 0F FE */	srwi r4, r3, 0x1f
/* 801E05CC 001DD52C  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 801E05D0 001DD530  7C 00 22 78 */	xor r0, r0, r4
/* 801E05D4 001DD534  7F C3 F3 78 */	mr r3, r30
/* 801E05D8 001DD538  7E E4 00 50 */	subf r23, r4, r0
/* 801E05DC 001DD53C  4B FF BC ED */	bl sub_801dc2c8
/* 801E05E0 001DD540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E05E4 001DD544  38 60 00 03 */	li r3, 3
/* 801E05E8 001DD548  41 82 00 08 */	beq lbl_801E05F0
/* 801E05EC 001DD54C  38 60 00 06 */	li r3, 6
lbl_801E05F0:
/* 801E05F0 001DD550  7F 97 18 50 */	subf r28, r23, r3
/* 801E05F4 001DD554  93 9E 09 40 */	stw r28, 0x940(r30)
/* 801E05F8 001DD558  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 801E05FC 001DD55C  80 7E 07 A4 */	lwz r3, 0x7a4(r30)
/* 801E0600 001DD560  54 00 08 3C */	slwi r0, r0, 1
/* 801E0604 001DD564  7C 03 02 14 */	add r0, r3, r0
/* 801E0608 001DD568  90 61 00 70 */	stw r3, 0x70(r1)
/* 801E060C 001DD56C  90 01 00 78 */	stw r0, 0x78(r1)
/* 801E0610 001DD570  90 01 00 74 */	stw r0, 0x74(r1)
/* 801E0614 001DD574  90 61 00 6C */	stw r3, 0x6c(r1)
/* 801E0618 001DD578  48 00 00 08 */	b lbl_801E0620
lbl_801E061C:
/* 801E061C 001DD57C  38 63 00 02 */	addi r3, r3, 2
lbl_801E0620:
/* 801E0620 001DD580  7C 03 00 40 */	cmplw r3, r0
/* 801E0624 001DD584  40 82 FF F8 */	bne lbl_801E061C
/* 801E0628 001DD588  38 00 00 00 */	li r0, 0
/* 801E062C 001DD58C  3C 60 80 3D */	lis r3, lbl_803D1BD8@ha
/* 801E0630 001DD590  90 1E 07 9C */	stw r0, 0x79c(r30)
/* 801E0634 001DD594  3B A3 1B D8 */	addi r29, r3, lbl_803D1BD8@l
/* 801E0638 001DD598  3B 60 00 00 */	li r27, 0
/* 801E063C 001DD59C  48 00 02 F4 */	b lbl_801E0930
lbl_801E0640:
/* 801E0640 001DD5A0  7F E4 FB 78 */	mr r4, r31
/* 801E0644 001DD5A4  38 61 00 EC */	addi r3, r1, 0xec
/* 801E0648 001DD5A8  38 BE 06 0C */	addi r5, r30, 0x60c
/* 801E064C 001DD5AC  4B E6 7C 9D */	bl GenerateObject__13CStateManagerF9TEditorId
/* 801E0650 001DD5B0  A0 81 00 F0 */	lhz r4, 0xf0(r1)
/* 801E0654 001DD5B4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E0658 001DD5B8  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 801E065C 001DD5BC  B0 81 00 58 */	sth r4, 0x58(r1)
/* 801E0660 001DD5C0  7C 03 00 40 */	cmplw r3, r0
/* 801E0664 001DD5C4  41 82 02 C4 */	beq lbl_801E0928
/* 801E0668 001DD5C8  B0 81 00 50 */	sth r4, 0x50(r1)
/* 801E066C 001DD5CC  7F E3 FB 78 */	mr r3, r31
/* 801E0670 001DD5D0  38 81 00 50 */	addi r4, r1, 0x50
/* 801E0674 001DD5D4  4B E6 BF 01 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E0678 001DD5D8  7C 64 1B 78 */	mr r4, r3
/* 801E067C 001DD5DC  38 61 00 88 */	addi r3, r1, 0x88
/* 801E0680 001DD5E0  4B EC 4D 1D */	bl sub_800a539c
/* 801E0684 001DD5E4  4B EC 4C ED */	bl "CastTo<22CThardusRockProjectile>__10CPatternedFP7CEntity"
/* 801E0688 001DD5E8  7C 7A 1B 79 */	or. r26, r3, r3
/* 801E068C 001DD5EC  41 82 02 9C */	beq lbl_801E0928
/* 801E0690 001DD5F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0694 001DD5F4  38 80 00 01 */	li r4, 1
/* 801E0698 001DD5F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E069C 001DD5FC  7D 89 03 A6 */	mtctr r12
/* 801E06A0 001DD600  4E 80 04 21 */	bctrl
/* 801E06A4 001DD604  7F 43 D3 78 */	mr r3, r26
/* 801E06A8 001DD608  7F E4 FB 78 */	mr r4, r31
/* 801E06AC 001DD60C  38 A0 00 01 */	li r5, 1
/* 801E06B0 001DD610  48 02 38 65 */	bl SetChildrenActive__22CThardusRockProjectileFR13CStateManagerb
/* 801E06B4 001DD614  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801E06B8 001DD618  38 61 03 B0 */	addi r3, r1, 0x3b0
/* 801E06BC 001DD61C  38 9E 00 34 */	addi r4, r30, 0x34
/* 801E06C0 001DD620  C3 85 00 00 */	lfs f28, 0(r5)
/* 801E06C4 001DD624  C3 65 00 04 */	lfs f27, 4(r5)
/* 801E06C8 001DD628  C3 C5 00 08 */	lfs f30, 8(r5)
/* 801E06CC 001DD62C  48 13 2A 29 */	bl BuildMatrix3f__12CTransform4fCFv
/* 801E06D0 001DD630  38 61 04 C4 */	addi r3, r1, 0x4c4
/* 801E06D4 001DD634  38 81 03 B0 */	addi r4, r1, 0x3b0
/* 801E06D8 001DD638  48 12 F9 4D */	bl __ct__9CMatrix3fFRC9CMatrix3f
/* 801E06DC 001DD63C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E06E0 001DD640  48 13 1E 41 */	bl Next__9CRandom16Fv
/* 801E06E4 001DD644  54 64 0F FE */	srwi r4, r3, 0x1f
/* 801E06E8 001DD648  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 801E06EC 001DD64C  7C 00 22 78 */	xor r0, r0, r4
/* 801E06F0 001DD650  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E06F4 001DD654  7E E4 00 50 */	subf r23, r4, r0
/* 801E06F8 001DD658  48 13 1D E5 */	bl Float__9CRandom16Fv
/* 801E06FC 001DD65C  2C 17 00 00 */	cmpwi r23, 0
/* 801E0700 001DD660  40 81 00 0C */	ble lbl_801E070C
/* 801E0704 001DD664  FF A0 08 90 */	fmr f29, f1
/* 801E0708 001DD668  48 00 00 08 */	b lbl_801E0710
lbl_801E070C:
/* 801E070C 001DD66C  FF A0 08 50 */	fneg f29, f1
lbl_801E0710:
/* 801E0710 001DD670  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E0714 001DD674  48 13 1D C9 */	bl Float__9CRandom16Fv
/* 801E0718 001DD678  C0 42 AD 54 */	lfs f2, lbl_805ACA74@sda21(r2)
/* 801E071C 001DD67C  FF E0 08 90 */	fmr f31, f1
/* 801E0720 001DD680  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801E0724 001DD684  38 61 01 80 */	addi r3, r1, 0x180
/* 801E0728 001DD688  C0 1D 00 08 */	lfs f0, 8(r29)
/* 801E072C 001DD68C  38 81 04 C4 */	addi r4, r1, 0x4c4
/* 801E0730 001DD690  EC 42 0F 7A */	fmadds f2, f2, f29, f1
/* 801E0734 001DD694  EC 20 06 F2 */	fmuls f1, f0, f27
/* 801E0738 001DD698  C0 02 AD 18 */	lfs f0, lbl_805ACA38@sda21(r2)
/* 801E073C 001DD69C  38 A1 01 74 */	addi r5, r1, 0x174
/* 801E0740 001DD6A0  EC 42 07 32 */	fmuls f2, f2, f28
/* 801E0744 001DD6A4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 801E0748 001DD6A8  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 801E074C 001DD6AC  D0 41 01 74 */	stfs f2, 0x174(r1)
/* 801E0750 001DD6B0  48 12 FB 45 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 801E0754 001DD6B4  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801E0758 001DD6B8  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 801E075C 001DD6BC  C0 41 01 84 */	lfs f2, 0x184(r1)
/* 801E0760 001DD6C0  38 E3 FD 18 */	addi r7, r3, lbl_8059FD18@l
/* 801E0764 001DD6C4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801E0768 001DD6C8  7F E4 FB 78 */	mr r4, r31
/* 801E076C 001DD6CC  EC A3 10 2A */	fadds f5, f3, f2
/* 801E0770 001DD6D0  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 801E0774 001DD6D4  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 801E0778 001DD6D8  38 61 03 80 */	addi r3, r1, 0x380
/* 801E077C 001DD6DC  EC 81 00 2A */	fadds f4, f1, f0
/* 801E0780 001DD6E0  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801E0784 001DD6E4  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 801E0788 001DD6E8  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 801E078C 001DD6EC  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801E0790 001DD6F0  38 C1 01 68 */	addi r6, r1, 0x168
/* 801E0794 001DD6F4  EC 63 08 2A */	fadds f3, f3, f1
/* 801E0798 001DD6F8  D0 A1 01 AC */	stfs f5, 0x1ac(r1)
/* 801E079C 001DD6FC  C0 22 AD 44 */	lfs f1, lbl_805ACA64@sda21(r2)
/* 801E07A0 001DD700  D0 81 01 B0 */	stfs f4, 0x1b0(r1)
/* 801E07A4 001DD704  D0 61 01 A8 */	stfs f3, 0x1a8(r1)
/* 801E07A8 001DD708  D0 41 01 68 */	stfs f2, 0x168(r1)
/* 801E07AC 001DD70C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 801E07B0 001DD710  D0 41 01 70 */	stfs f2, 0x170(r1)
/* 801E07B4 001DD714  4B E6 C7 E5 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801E07B8 001DD718  C0 02 AD 58 */	lfs f0, lbl_805ACA78@sda21(r2)
/* 801E07BC 001DD71C  38 61 03 50 */	addi r3, r1, 0x350
/* 801E07C0 001DD720  C0 41 01 AC */	lfs f2, 0x1ac(r1)
/* 801E07C4 001DD724  38 81 04 C4 */	addi r4, r1, 0x4c4
/* 801E07C8 001DD728  EC 20 F8 2A */	fadds f1, f0, f31
/* 801E07CC 001DD72C  C0 62 AC DC */	lfs f3, lbl_805AC9FC@sda21(r2)
/* 801E07D0 001DD730  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 801E07D4 001DD734  38 A1 01 9C */	addi r5, r1, 0x19c
/* 801E07D8 001DD738  EC 82 18 2A */	fadds f4, f2, f3
/* 801E07DC 001DD73C  C0 41 01 B0 */	lfs f2, 0x1b0(r1)
/* 801E07E0 001DD740  EC 21 07 B2 */	fmuls f1, f1, f30
/* 801E07E4 001DD744  EC 00 18 2A */	fadds f0, f0, f3
/* 801E07E8 001DD748  D0 81 01 A0 */	stfs f4, 0x1a0(r1)
/* 801E07EC 001DD74C  EC 22 08 2A */	fadds f1, f2, f1
/* 801E07F0 001DD750  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 801E07F4 001DD754  D0 21 01 A4 */	stfs f1, 0x1a4(r1)
/* 801E07F8 001DD758  48 13 2A 81 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 801E07FC 001DD75C  38 7A 00 34 */	addi r3, r26, 0x34
/* 801E0800 001DD760  38 81 03 50 */	addi r4, r1, 0x350
/* 801E0804 001DD764  48 13 23 3D */	bl __as__12CTransform4fFRC12CTransform4f
/* 801E0808 001DD768  3C 00 43 30 */	lis r0, 0x4330
/* 801E080C 001DD76C  93 61 04 EC */	stw r27, 0x4ec(r1)
/* 801E0810 001DD770  88 7A 00 E4 */	lbz r3, 0xe4(r26)
/* 801E0814 001DD774  38 80 00 01 */	li r4, 1
/* 801E0818 001DD778  90 01 04 E8 */	stw r0, 0x4e8(r1)
/* 801E081C 001DD77C  50 83 26 F6 */	rlwimi r3, r4, 4, 0x1b, 0x1b
/* 801E0820 001DD780  C8 62 AD 20 */	lfd f3, lbl_805ACA40@sda21(r2)
/* 801E0824 001DD784  C8 01 04 E8 */	lfd f0, 0x4e8(r1)
/* 801E0828 001DD788  98 7A 00 E4 */	stb r3, 0xe4(r26)
/* 801E082C 001DD78C  EC 00 18 28 */	fsubs f0, f0, f3
/* 801E0830 001DD790  C0 82 AC F8 */	lfs f4, lbl_805ACA18@sda21(r2)
/* 801E0834 001DD794  88 7A 00 E4 */	lbz r3, 0xe4(r26)
/* 801E0838 001DD798  50 83 1F 38 */	rlwimi r3, r4, 3, 0x1c, 0x1c
/* 801E083C 001DD79C  93 61 04 F4 */	stw r27, 0x4f4(r1)
/* 801E0840 001DD7A0  EC 44 20 3A */	fmadds f2, f4, f0, f4
/* 801E0844 001DD7A4  90 01 04 F0 */	stw r0, 0x4f0(r1)
/* 801E0848 001DD7A8  C0 22 AD 3C */	lfs f1, lbl_805ACA5C@sda21(r2)
/* 801E084C 001DD7AC  C8 01 04 F0 */	lfd f0, 0x4f0(r1)
/* 801E0850 001DD7B0  EC 44 10 2A */	fadds f2, f4, f2
/* 801E0854 001DD7B4  98 7A 00 E4 */	stb r3, 0xe4(r26)
/* 801E0858 001DD7B8  EC 00 18 28 */	fsubs f0, f0, f3
/* 801E085C 001DD7BC  88 1A 00 E4 */	lbz r0, 0xe4(r26)
/* 801E0860 001DD7C0  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801E0864 001DD7C4  98 1A 00 E4 */	stb r0, 0xe4(r26)
/* 801E0868 001DD7C8  EC 01 08 3A */	fmadds f0, f1, f0, f1
/* 801E086C 001DD7CC  90 9A 05 6C */	stw r4, 0x56c(r26)
/* 801E0870 001DD7D0  EC 04 00 2A */	fadds f0, f4, f0
/* 801E0874 001DD7D4  D0 5A 05 A8 */	stfs f2, 0x5a8(r26)
/* 801E0878 001DD7D8  D0 1A 05 AC */	stfs f0, 0x5ac(r26)
/* 801E087C 001DD7DC  A0 7E 00 08 */	lhz r3, 8(r30)
/* 801E0880 001DD7E0  B0 7A 05 D0 */	sth r3, 0x5d0(r26)
/* 801E0884 001DD7E4  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 801E0888 001DD7E8  B0 61 00 48 */	sth r3, 0x48(r1)
/* 801E088C 001DD7EC  90 1A 05 C4 */	stw r0, 0x5c4(r26)
/* 801E0890 001DD7F0  80 1E 06 E0 */	lwz r0, 0x6e0(r30)
/* 801E0894 001DD7F4  B0 61 00 4C */	sth r3, 0x4c(r1)
/* 801E0898 001DD7F8  90 1A 05 C8 */	stw r0, 0x5c8(r26)
/* 801E089C 001DD7FC  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 801E08A0 001DD800  90 1A 05 CC */	stw r0, 0x5cc(r26)
/* 801E08A4 001DD804  80 1E 07 5C */	lwz r0, 0x75c(r30)
/* 801E08A8 001DD808  90 1A 05 D4 */	stw r0, 0x5d4(r26)
/* 801E08AC 001DD80C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 801E08B0 001DD810  90 1A 05 D8 */	stw r0, 0x5d8(r26)
/* 801E08B4 001DD814  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 801E08B8 001DD818  80 9E 06 48 */	lwz r4, 0x648(r30)
/* 801E08BC 001DD81C  38 63 FF FE */	addi r3, r3, -2
/* 801E08C0 001DD820  7C 03 20 50 */	subf r0, r3, r4
/* 801E08C4 001DD824  7C 83 1B 38 */	orc r3, r4, r3
/* 801E08C8 001DD828  54 00 F8 7E */	srwi r0, r0, 1
/* 801E08CC 001DD82C  7C 00 18 50 */	subf r0, r0, r3
/* 801E08D0 001DD830  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801E08D4 001DD834  98 1A 05 DE */	stb r0, 0x5de(r26)
/* 801E08D8 001DD838  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 801E08DC 001DD83C  80 BE 07 A0 */	lwz r5, 0x7a0(r30)
/* 801E08E0 001DD840  A2 FA 00 08 */	lhz r23, 8(r26)
/* 801E08E4 001DD844  7C 00 28 00 */	cmpw r0, r5
/* 801E08E8 001DD848  41 80 00 1C */	blt lbl_801E0904
/* 801E08EC 001DD84C  2C 05 00 00 */	cmpwi r5, 0
/* 801E08F0 001DD850  38 7E 07 98 */	addi r3, r30, 0x798
/* 801E08F4 001DD854  38 80 00 04 */	li r4, 4
/* 801E08F8 001DD858  41 82 00 08 */	beq lbl_801E0900
/* 801E08FC 001DD85C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E0900:
/* 801E0900 001DD860  4B E2 BB 09 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801E0904:
/* 801E0904 001DD864  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 801E0908 001DD868  80 7E 07 A4 */	lwz r3, 0x7a4(r30)
/* 801E090C 001DD86C  54 00 08 3C */	slwi r0, r0, 1
/* 801E0910 001DD870  7C 63 02 15 */	add. r3, r3, r0
/* 801E0914 001DD874  41 82 00 08 */	beq lbl_801E091C
/* 801E0918 001DD878  B2 E3 00 00 */	sth r23, 0(r3)
lbl_801E091C:
/* 801E091C 001DD87C  80 7E 07 9C */	lwz r3, 0x79c(r30)
/* 801E0920 001DD880  38 03 00 01 */	addi r0, r3, 1
/* 801E0924 001DD884  90 1E 07 9C */	stw r0, 0x79c(r30)
lbl_801E0928:
/* 801E0928 001DD888  3B BD 00 10 */	addi r29, r29, 0x10
/* 801E092C 001DD88C  3B 7B 00 01 */	addi r27, r27, 1
lbl_801E0930:
/* 801E0930 001DD890  7C 1B E0 40 */	cmplw r27, r28
/* 801E0934 001DD894  41 80 FD 0C */	blt lbl_801E0640
/* 801E0938 001DD898  48 00 07 44 */	b lbl_801E107C
.global lbl_801E093C
lbl_801E093C:
/* 801E093C 001DD89C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E0940 001DD8A0  48 13 1B E1 */	bl Next__9CRandom16Fv
/* 801E0944 001DD8A4  38 00 00 00 */	li r0, 0
/* 801E0948 001DD8A8  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 801E094C 001DD8AC  90 01 01 90 */	stw r0, 0x190(r1)
/* 801E0950 001DD8B0  3B 43 00 02 */	addi r26, r3, 2
/* 801E0954 001DD8B4  38 61 01 8C */	addi r3, r1, 0x18c
/* 801E0958 001DD8B8  90 01 01 94 */	stw r0, 0x194(r1)
/* 801E095C 001DD8BC  90 01 01 98 */	stw r0, 0x198(r1)
/* 801E0960 001DD8C0  83 7E 08 F8 */	lwz r27, 0x8f8(r30)
/* 801E0964 001DD8C4  7F 64 DB 78 */	mr r4, r27
/* 801E0968 001DD8C8  4B E8 31 BD */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 801E096C 001DD8CC  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801E0970 001DD8D0  3B 80 00 00 */	li r28, 0
/* 801E0974 001DD8D4  3A E0 00 00 */	li r23, 0
/* 801E0978 001DD8D8  C3 63 00 40 */	lfs f27, 0x40(r3)
/* 801E097C 001DD8DC  C3 83 00 50 */	lfs f28, 0x50(r3)
/* 801E0980 001DD8E0  C3 A3 00 60 */	lfs f29, 0x60(r3)
/* 801E0984 001DD8E4  48 00 00 B8 */	b lbl_801E0A3C
lbl_801E0988:
/* 801E0988 001DD8E8  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 801E098C 001DD8EC  7F E3 FB 78 */	mr r3, r31
/* 801E0990 001DD8F0  38 81 00 44 */	addi r4, r1, 0x44
/* 801E0994 001DD8F4  7C 05 BA 2E */	lhzx r0, r5, r23
/* 801E0998 001DD8F8  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801E099C 001DD8FC  4B E6 BB D9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E09A0 001DD900  7C 64 1B 78 */	mr r4, r3
/* 801E09A4 001DD904  38 61 00 E4 */	addi r3, r1, 0xe4
/* 801E09A8 001DD908  4B EC 5B A5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801E09AC 001DD90C  80 63 00 04 */	lwz r3, 4(r3)
/* 801E09B0 001DD910  28 03 00 00 */	cmplwi r3, 0
/* 801E09B4 001DD914  41 82 00 80 */	beq lbl_801E0A34
/* 801E09B8 001DD918  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801E09BC 001DD91C  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801E09C0 001DD920  EC 60 E0 28 */	fsubs f3, f0, f28
/* 801E09C4 001DD924  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801E09C8 001DD928  EC 82 D8 28 */	fsubs f4, f2, f27
/* 801E09CC 001DD92C  C0 02 AD 00 */	lfs f0, lbl_805ACA20@sda21(r2)
/* 801E09D0 001DD930  EC 41 E8 28 */	fsubs f2, f1, f29
/* 801E09D4 001DD934  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801E09D8 001DD938  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801E09DC 001DD93C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801E09E0 001DD940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E09E4 001DD944  40 81 00 50 */	ble lbl_801E0A34
/* 801E09E8 001DD948  80 01 01 90 */	lwz r0, 0x190(r1)
/* 801E09EC 001DD94C  80 A1 01 94 */	lwz r5, 0x194(r1)
/* 801E09F0 001DD950  7C 00 28 00 */	cmpw r0, r5
/* 801E09F4 001DD954  41 80 00 1C */	blt lbl_801E0A10
/* 801E09F8 001DD958  2C 05 00 00 */	cmpwi r5, 0
/* 801E09FC 001DD95C  38 61 01 8C */	addi r3, r1, 0x18c
/* 801E0A00 001DD960  38 80 00 04 */	li r4, 4
/* 801E0A04 001DD964  41 82 00 08 */	beq lbl_801E0A0C
/* 801E0A08 001DD968  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E0A0C:
/* 801E0A0C 001DD96C  4B E8 31 19 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E0A10:
/* 801E0A10 001DD970  80 01 01 90 */	lwz r0, 0x190(r1)
/* 801E0A14 001DD974  80 61 01 98 */	lwz r3, 0x198(r1)
/* 801E0A18 001DD978  54 00 10 3A */	slwi r0, r0, 2
/* 801E0A1C 001DD97C  7C 63 02 15 */	add. r3, r3, r0
/* 801E0A20 001DD980  41 82 00 08 */	beq lbl_801E0A28
/* 801E0A24 001DD984  93 83 00 00 */	stw r28, 0(r3)
lbl_801E0A28:
/* 801E0A28 001DD988  80 61 01 90 */	lwz r3, 0x190(r1)
/* 801E0A2C 001DD98C  38 03 00 01 */	addi r0, r3, 1
/* 801E0A30 001DD990  90 01 01 90 */	stw r0, 0x190(r1)
lbl_801E0A34:
/* 801E0A34 001DD994  3B 9C 00 01 */	addi r28, r28, 1
/* 801E0A38 001DD998  3A F7 00 02 */	addi r23, r23, 2
lbl_801E0A3C:
/* 801E0A3C 001DD99C  7C 1C D8 40 */	cmplw r28, r27
/* 801E0A40 001DD9A0  41 80 FF 48 */	blt lbl_801E0988
/* 801E0A44 001DD9A4  83 21 01 90 */	lwz r25, 0x190(r1)
/* 801E0A48 001DD9A8  3B 00 00 00 */	li r24, 0
/* 801E0A4C 001DD9AC  48 00 00 98 */	b lbl_801E0AE4
lbl_801E0A50:
/* 801E0A50 001DD9B0  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E0A54 001DD9B4  48 13 1A CD */	bl Next__9CRandom16Fv
/* 801E0A58 001DD9B8  7C 03 CB 96 */	divwu r0, r3, r25
/* 801E0A5C 001DD9BC  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 801E0A60 001DD9C0  38 81 00 40 */	addi r4, r1, 0x40
/* 801E0A64 001DD9C4  7C 00 C9 D6 */	mullw r0, r0, r25
/* 801E0A68 001DD9C8  7C 00 18 50 */	subf r0, r0, r3
/* 801E0A6C 001DD9CC  7F E3 FB 78 */	mr r3, r31
/* 801E0A70 001DD9D0  54 00 08 3C */	slwi r0, r0, 1
/* 801E0A74 001DD9D4  7C 05 02 2E */	lhzx r0, r5, r0
/* 801E0A78 001DD9D8  B0 01 00 54 */	sth r0, 0x54(r1)
/* 801E0A7C 001DD9DC  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801E0A80 001DD9E0  4B E6 BA F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E0A84 001DD9E4  7C 64 1B 78 */	mr r4, r3
/* 801E0A88 001DD9E8  38 61 00 DC */	addi r3, r1, 0xdc
/* 801E0A8C 001DD9EC  4B EC 5A C1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801E0A90 001DD9F0  82 E3 00 04 */	lwz r23, 4(r3)
/* 801E0A94 001DD9F4  28 17 00 00 */	cmplwi r23, 0
/* 801E0A98 001DD9F8  41 82 00 48 */	beq lbl_801E0AE0
/* 801E0A9C 001DD9FC  7E E3 BB 78 */	mr r3, r23
/* 801E0AA0 001DDA00  38 80 00 01 */	li r4, 1
/* 801E0AA4 001DDA04  81 97 00 00 */	lwz r12, 0(r23)
/* 801E0AA8 001DDA08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E0AAC 001DDA0C  7D 89 03 A6 */	mtctr r12
/* 801E0AB0 001DDA10  4E 80 04 21 */	bctrl
/* 801E0AB4 001DDA14  7F C3 F3 78 */	mr r3, r30
/* 801E0AB8 001DDA18  7F E5 FB 78 */	mr r5, r31
/* 801E0ABC 001DDA1C  38 80 00 09 */	li r4, 9
/* 801E0AC0 001DDA20  38 C0 FF FF */	li r6, -1
/* 801E0AC4 001DDA24  4B E7 05 FD */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 801E0AC8 001DDA28  7E E3 BB 78 */	mr r3, r23
/* 801E0ACC 001DDA2C  38 80 00 00 */	li r4, 0
/* 801E0AD0 001DDA30  81 97 00 00 */	lwz r12, 0(r23)
/* 801E0AD4 001DDA34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E0AD8 001DDA38  7D 89 03 A6 */	mtctr r12
/* 801E0ADC 001DDA3C  4E 80 04 21 */	bctrl
lbl_801E0AE0:
/* 801E0AE0 001DDA40  3B 18 00 01 */	addi r24, r24, 1
lbl_801E0AE4:
/* 801E0AE4 001DDA44  7C 18 D0 40 */	cmplw r24, r26
/* 801E0AE8 001DDA48  41 80 FF 68 */	blt lbl_801E0A50
/* 801E0AEC 001DDA4C  80 01 01 90 */	lwz r0, 0x190(r1)
/* 801E0AF0 001DDA50  80 61 01 98 */	lwz r3, 0x198(r1)
/* 801E0AF4 001DDA54  54 00 10 3A */	slwi r0, r0, 2
/* 801E0AF8 001DDA58  7C 03 02 14 */	add r0, r3, r0
/* 801E0AFC 001DDA5C  90 61 00 60 */	stw r3, 0x60(r1)
/* 801E0B00 001DDA60  7C 64 1B 78 */	mr r4, r3
/* 801E0B04 001DDA64  90 01 00 68 */	stw r0, 0x68(r1)
/* 801E0B08 001DDA68  90 01 00 64 */	stw r0, 0x64(r1)
/* 801E0B0C 001DDA6C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 801E0B10 001DDA70  48 00 00 08 */	b lbl_801E0B18
lbl_801E0B14:
/* 801E0B14 001DDA74  38 84 00 04 */	addi r4, r4, 4
lbl_801E0B18:
/* 801E0B18 001DDA78  7C 04 00 40 */	cmplw r4, r0
/* 801E0B1C 001DDA7C  40 82 FF F8 */	bne lbl_801E0B14
/* 801E0B20 001DDA80  28 03 00 00 */	cmplwi r3, 0
/* 801E0B24 001DDA84  41 82 05 58 */	beq lbl_801E107C
/* 801E0B28 001DDA88  48 13 4E 09 */	bl Free__7CMemoryFPCv
/* 801E0B2C 001DDA8C  48 00 05 50 */	b lbl_801E107C
.global lbl_801E0B30
lbl_801E0B30:
/* 801E0B30 001DDA90  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E0B34 001DDA94  38 61 01 58 */	addi r3, r1, 0x158
/* 801E0B38 001DDA98  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E0B3C 001DDA9C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801E0B40 001DDAA0  38 84 01 BA */	addi r4, r4, 0x1ba
/* 801E0B44 001DDAA4  38 A0 FF FF */	li r5, -1
/* 801E0B48 001DDAA8  48 15 D6 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801E0B4C 001DDAAC  7F C4 F3 78 */	mr r4, r30
/* 801E0B50 001DDAB0  38 61 03 20 */	addi r3, r1, 0x320
/* 801E0B54 001DDAB4  38 A1 01 58 */	addi r5, r1, 0x158
/* 801E0B58 001DDAB8  4B E9 7E 21 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801E0B5C 001DDABC  38 61 04 94 */	addi r3, r1, 0x494
/* 801E0B60 001DDAC0  38 81 03 20 */	addi r4, r1, 0x320
/* 801E0B64 001DDAC4  48 13 20 11 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E0B68 001DDAC8  38 61 01 58 */	addi r3, r1, 0x158
/* 801E0B6C 001DDACC  48 15 CF 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E0B70 001DDAD0  80 AD 92 10 */	lwz r5, lbl_805A7DD0@sda21(r13)
/* 801E0B74 001DDAD4  38 60 00 00 */	li r3, 0
/* 801E0B78 001DDAD8  38 80 00 01 */	li r4, 1
/* 801E0B7C 001DDADC  48 1A 93 79 */	bl __shl2i
/* 801E0B80 001DDAE0  C0 61 04 A0 */	lfs f3, 0x4a0(r1)
/* 801E0B84 001DDAE4  39 00 00 00 */	li r8, 0
/* 801E0B88 001DDAE8  C0 41 04 B0 */	lfs f2, 0x4b0(r1)
/* 801E0B8C 001DDAEC  38 00 00 01 */	li r0, 1
/* 801E0B90 001DDAF0  C0 01 04 C0 */	lfs f0, 0x4c0(r1)
/* 801E0B94 001DDAF4  3C A0 80 5A */	lis r5, lbl_805A6700@ha
/* 801E0B98 001DDAF8  90 81 01 EC */	stw r4, 0x1ec(r1)
/* 801E0B9C 001DDAFC  38 C5 67 00 */	addi r6, r5, lbl_805A6700@l
/* 801E0BA0 001DDB00  C0 22 AD 44 */	lfs f1, lbl_805ACA64@sda21(r2)
/* 801E0BA4 001DDB04  7F E4 FB 78 */	mr r4, r31
/* 801E0BA8 001DDB08  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 801E0BAC 001DDB0C  38 61 02 F0 */	addi r3, r1, 0x2f0
/* 801E0BB0 001DDB10  38 A1 01 4C */	addi r5, r1, 0x14c
/* 801E0BB4 001DDB14  38 E1 01 E8 */	addi r7, r1, 0x1e8
/* 801E0BB8 001DDB18  91 01 01 F4 */	stw r8, 0x1f4(r1)
/* 801E0BBC 001DDB1C  91 01 01 F0 */	stw r8, 0x1f0(r1)
/* 801E0BC0 001DDB20  90 01 01 F8 */	stw r0, 0x1f8(r1)
/* 801E0BC4 001DDB24  D0 61 01 4C */	stfs f3, 0x14c(r1)
/* 801E0BC8 001DDB28  D0 41 01 50 */	stfs f2, 0x150(r1)
/* 801E0BCC 001DDB2C  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 801E0BD0 001DDB30  4B E6 C3 C9 */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 801E0BD4 001DDB34  C0 01 02 F4 */	lfs f0, 0x2f4(r1)
/* 801E0BD8 001DDB38  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 801E0BDC 001DDB3C  C0 82 AC DC */	lfs f4, lbl_805AC9FC@sda21(r2)
/* 801E0BE0 001DDB40  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 801E0BE4 001DDB44  C0 41 02 F8 */	lfs f2, 0x2f8(r1)
/* 801E0BE8 001DDB48  38 61 02 C0 */	addi r3, r1, 0x2c0
/* 801E0BEC 001DDB4C  EC 60 20 2A */	fadds f3, f0, f4
/* 801E0BF0 001DDB50  80 FF 08 4C */	lwz r7, 0x84c(r31)
/* 801E0BF4 001DDB54  EC 42 20 2A */	fadds f2, f2, f4
/* 801E0BF8 001DDB58  C0 21 02 FC */	lfs f1, 0x2fc(r1)
/* 801E0BFC 001DDB5C  C0 02 AC E0 */	lfs f0, lbl_805ACA00@sda21(r2)
/* 801E0C00 001DDB60  38 81 01 40 */	addi r4, r1, 0x140
/* 801E0C04 001DDB64  EC 01 00 2A */	fadds f0, f1, f0
/* 801E0C08 001DDB68  C0 A7 00 60 */	lfs f5, 0x60(r7)
/* 801E0C0C 001DDB6C  C0 87 00 50 */	lfs f4, 0x50(r7)
/* 801E0C10 001DDB70  38 A1 01 34 */	addi r5, r1, 0x134
/* 801E0C14 001DDB74  C0 27 00 40 */	lfs f1, 0x40(r7)
/* 801E0C18 001DDB78  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 801E0C1C 001DDB7C  D0 81 01 38 */	stfs f4, 0x138(r1)
/* 801E0C20 001DDB80  D0 A1 01 3C */	stfs f5, 0x13c(r1)
/* 801E0C24 001DDB84  D0 61 01 40 */	stfs f3, 0x140(r1)
/* 801E0C28 001DDB88  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 801E0C2C 001DDB8C  D0 01 01 48 */	stfs f0, 0x148(r1)
/* 801E0C30 001DDB90  48 13 2E E1 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801E0C34 001DDB94  38 61 04 64 */	addi r3, r1, 0x464
/* 801E0C38 001DDB98  38 81 02 C0 */	addi r4, r1, 0x2c0
/* 801E0C3C 001DDB9C  48 13 1F 39 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E0C40 001DDBA0  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E0C44 001DDBA4  C0 22 AD 5C */	lfs f1, lbl_805ACA7C@sda21(r2)
/* 801E0C48 001DDBA8  C0 42 AD 18 */	lfs f2, lbl_805ACA38@sda21(r2)
/* 801E0C4C 001DDBAC  48 13 18 F9 */	bl Range__9CRandom16Fff
/* 801E0C50 001DDBB0  C0 02 AD 60 */	lfs f0, lbl_805ACA80@sda21(r2)
/* 801E0C54 001DDBB4  38 61 04 64 */	addi r3, r1, 0x464
/* 801E0C58 001DDBB8  38 81 00 84 */	addi r4, r1, 0x84
/* 801E0C5C 001DDBBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 801E0C60 001DDBC0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801E0C64 001DDBC4  48 13 28 59 */	bl RotateLocalZ__12CTransform4fFRC9CRelAngle
/* 801E0C68 001DDBC8  3C 60 80 3D */	lis r3, lbl_803D1CB8@ha
/* 801E0C6C 001DDBCC  3B 40 00 00 */	li r26, 0
/* 801E0C70 001DDBD0  38 63 1C B8 */	addi r3, r3, lbl_803D1CB8@l
/* 801E0C74 001DDBD4  3B 60 00 00 */	li r27, 0
/* 801E0C78 001DDBD8  38 83 01 B3 */	addi r4, r3, 0x1b3
/* 801E0C7C 001DDBDC  3B 80 00 00 */	li r28, 0
/* 801E0C80 001DDBE0  3B 20 00 00 */	li r25, 0
/* 801E0C84 001DDBE4  3B 00 00 00 */	li r24, 0
/* 801E0C88 001DDBE8  3A E0 00 00 */	li r23, 0
/* 801E0C8C 001DDBEC  38 60 01 98 */	li r3, 0x198
/* 801E0C90 001DDBF0  38 A0 00 00 */	li r5, 0
/* 801E0C94 001DDBF4  48 13 4B D9 */	bl __nw__FUlPCcPCc
/* 801E0C98 001DDBF8  7C 7D 1B 79 */	or. r29, r3, r3
/* 801E0C9C 001DDBFC  41 82 01 F0 */	beq lbl_801E0E8C
/* 801E0CA0 001DDC00  80 DE 06 00 */	lwz r6, 0x600(r30)
/* 801E0CA4 001DDC04  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801E0CA8 001DDC08  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801E0CAC 001DDC0C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801E0CB0 001DDC10  90 01 00 9C */	stw r0, 0x9c(r1)
/* 801E0CB4 001DDC14  38 61 00 94 */	addi r3, r1, 0x94
/* 801E0CB8 001DDC18  38 A1 00 9C */	addi r5, r1, 0x9c
/* 801E0CBC 001DDC1C  90 C1 00 A0 */	stw r6, 0xa0(r1)
/* 801E0CC0 001DDC20  81 84 00 00 */	lwz r12, 0(r4)
/* 801E0CC4 001DDC24  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E0CC8 001DDC28  7D 89 03 A6 */	mtctr r12
/* 801E0CCC 001DDC2C  4E 80 04 21 */	bctrl
/* 801E0CD0 001DDC30  38 61 00 8C */	addi r3, r1, 0x8c
/* 801E0CD4 001DDC34  38 81 00 94 */	addi r4, r1, 0x94
/* 801E0CD8 001DDC38  3B 00 00 01 */	li r24, 1
/* 801E0CDC 001DDC3C  48 16 01 CD */	bl __ct__6CTokenFRC6CToken
/* 801E0CE0 001DDC40  80 DE 06 04 */	lwz r6, 0x604(r30)
/* 801E0CE4 001DDC44  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801E0CE8 001DDC48  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801E0CEC 001DDC4C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801E0CF0 001DDC50  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801E0CF4 001DDC54  38 61 00 AC */	addi r3, r1, 0xac
/* 801E0CF8 001DDC58  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 801E0CFC 001DDC5C  3A E0 00 01 */	li r23, 1
/* 801E0D00 001DDC60  90 C1 00 B8 */	stw r6, 0xb8(r1)
/* 801E0D04 001DDC64  81 84 00 00 */	lwz r12, 0(r4)
/* 801E0D08 001DDC68  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E0D0C 001DDC6C  7D 89 03 A6 */	mtctr r12
/* 801E0D10 001DDC70  4E 80 04 21 */	bctrl
/* 801E0D14 001DDC74  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801E0D18 001DDC78  38 81 00 AC */	addi r4, r1, 0xac
/* 801E0D1C 001DDC7C  3B 80 00 01 */	li r28, 1
/* 801E0D20 001DDC80  48 16 01 89 */	bl __ct__6CTokenFRC6CToken
/* 801E0D24 001DDC84  80 DE 06 08 */	lwz r6, 0x608(r30)
/* 801E0D28 001DDC88  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801E0D2C 001DDC8C  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801E0D30 001DDC90  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801E0D34 001DDC94  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801E0D38 001DDC98  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801E0D3C 001DDC9C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 801E0D40 001DDCA0  3B 20 00 01 */	li r25, 1
/* 801E0D44 001DDCA4  90 C1 00 D0 */	stw r6, 0xd0(r1)
/* 801E0D48 001DDCA8  81 84 00 00 */	lwz r12, 0(r4)
/* 801E0D4C 001DDCAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801E0D50 001DDCB0  7D 89 03 A6 */	mtctr r12
/* 801E0D54 001DDCB4  4E 80 04 21 */	bctrl
/* 801E0D58 001DDCB8  38 61 00 BC */	addi r3, r1, 0xbc
/* 801E0D5C 001DDCBC  38 81 00 C4 */	addi r4, r1, 0xc4
/* 801E0D60 001DDCC0  3B 40 00 01 */	li r26, 1
/* 801E0D64 001DDCC4  48 16 01 45 */	bl __ct__6CTokenFRC6CToken
/* 801E0D68 001DDCC8  7F E4 FB 78 */	mr r4, r31
/* 801E0D6C 001DDCCC  38 61 00 30 */	addi r3, r1, 0x30
/* 801E0D70 001DDCD0  3B 60 00 01 */	li r27, 1
/* 801E0D74 001DDCD4  4B E6 C3 69 */	bl AllocateUniqueId__13CStateManagerFv
/* 801E0D78 001DDCD8  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 801E0D7C 001DDCDC  38 E0 00 01 */	li r7, 1
/* 801E0D80 001DDCE0  88 61 00 D8 */	lbz r3, 0xd8(r1)
/* 801E0D84 001DDCE4  38 A0 00 00 */	li r5, 0
/* 801E0D88 001DDCE8  B0 01 00 34 */	sth r0, 0x34(r1)
/* 801E0D8C 001DDCEC  50 A3 3E 30 */	rlwimi r3, r5, 7, 0x18, 0x18
/* 801E0D90 001DDCF0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 801E0D94 001DDCF4  88 01 01 CC */	lbz r0, 0x1cc(r1)
/* 801E0D98 001DDCF8  81 3E 00 04 */	lwz r9, 4(r30)
/* 801E0D9C 001DDCFC  50 A4 36 72 */	rlwimi r4, r5, 6, 0x19, 0x19
/* 801E0DA0 001DDD00  98 61 00 D8 */	stb r3, 0xd8(r1)
/* 801E0DA4 001DDD04  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 801E0DA8 001DDD08  50 A6 2E B4 */	rlwimi r6, r5, 5, 0x1a, 0x1a
/* 801E0DAC 001DDD0C  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801E0DB0 001DDD10  91 21 00 80 */	stw r9, 0x80(r1)
/* 801E0DB4 001DDD14  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 801E0DB8 001DDD18  C0 62 AD 64 */	lfs f3, lbl_805ACA84@sda21(r2)
/* 801E0DBC 001DDD1C  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801E0DC0 001DDD20  98 81 00 D8 */	stb r4, 0xd8(r1)
/* 801E0DC4 001DDD24  38 81 01 1C */	addi r4, r1, 0x11c
/* 801E0DC8 001DDD28  A1 05 00 08 */	lhz r8, 8(r5)
/* 801E0DCC 001DDD2C  38 A1 01 28 */	addi r5, r1, 0x128
/* 801E0DD0 001DDD30  C0 22 AD 68 */	lfs f1, lbl_805ACA88@sda21(r2)
/* 801E0DD4 001DDD34  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801E0DD8 001DDD38  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801E0DDC 001DDD3C  91 21 00 7C */	stw r9, 0x7c(r1)
/* 801E0DE0 001DDD40  B1 01 00 38 */	sth r8, 0x38(r1)
/* 801E0DE4 001DDD44  B1 01 00 3C */	sth r8, 0x3c(r1)
/* 801E0DE8 001DDD48  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 801E0DEC 001DDD4C  98 C1 00 D8 */	stb r6, 0xd8(r1)
/* 801E0DF0 001DDD50  90 E1 01 B4 */	stw r7, 0x1b4(r1)
/* 801E0DF4 001DDD54  98 C1 01 B8 */	stb r6, 0x1b8(r1)
/* 801E0DF8 001DDD58  D0 61 01 BC */	stfs f3, 0x1bc(r1)
/* 801E0DFC 001DDD5C  D0 61 01 C0 */	stfs f3, 0x1c0(r1)
/* 801E0E00 001DDD60  D0 41 01 C4 */	stfs f2, 0x1c4(r1)
/* 801E0E04 001DDD64  D0 41 01 C8 */	stfs f2, 0x1c8(r1)
/* 801E0E08 001DDD68  98 01 01 CC */	stb r0, 0x1cc(r1)
/* 801E0E0C 001DDD6C  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 801E0E10 001DDD70  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 801E0E14 001DDD74  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 801E0E18 001DDD78  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 801E0E1C 001DDD7C  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 801E0E20 001DDD80  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 801E0E24 001DDD84  48 15 76 E5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801E0E28 001DDD88  38 01 04 64 */	addi r0, r1, 0x464
/* 801E0E2C 001DDD8C  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 801E0E30 001DDD90  90 01 00 08 */	stw r0, 8(r1)
/* 801E0E34 001DDD94  38 00 0A AD */	li r0, 0xaad
/* 801E0E38 001DDD98  C0 42 AD 6C */	lfs f2, lbl_805ACA8C@sda21(r2)
/* 801E0E3C 001DDD9C  38 81 00 8C */	addi r4, r1, 0x8c
/* 801E0E40 001DDDA0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801E0E44 001DDDA4  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 801E0E48 001DDDA8  38 C1 00 BC */	addi r6, r1, 0xbc
/* 801E0E4C 001DDDAC  38 E1 00 34 */	addi r7, r1, 0x34
/* 801E0E50 001DDDB0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801E0E54 001DDDB4  7F A3 EB 78 */	mr r3, r29
/* 801E0E58 001DDDB8  39 01 00 80 */	addi r8, r1, 0x80
/* 801E0E5C 001DDDBC  39 21 00 3C */	addi r9, r1, 0x3c
/* 801E0E60 001DDDC0  81 7E 06 E8 */	lwz r11, 0x6e8(r30)
/* 801E0E64 001DDDC4  39 40 00 01 */	li r10, 1
/* 801E0E68 001DDDC8  91 61 00 14 */	stw r11, 0x14(r1)
/* 801E0E6C 001DDDCC  A1 7E 06 EC */	lhz r11, 0x6ec(r30)
/* 801E0E70 001DDDD0  91 61 00 18 */	stw r11, 0x18(r1)
/* 801E0E74 001DDDD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E0E78 001DDDD8  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 801E0E7C 001DDDDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801E0E80 001DDDE0  C0 3E 06 AC */	lfs f1, 0x6ac(r30)
/* 801E0E84 001DDDE4  48 01 2B 75 */	bl "__ct__20CIceAttackProjectileF25TToken<15CGenDescription>25TToken<15CGenDescription>9TUniqueId9TUniqueIdbRC12CTransform4fRC11CDamageInfoRC6CAABoxff"
/* 801E0E88 001DDDE8  7C 7D 1B 78 */	mr r29, r3
lbl_801E0E8C:
/* 801E0E8C 001DDDEC  7F E3 FB 78 */	mr r3, r31
/* 801E0E90 001DDDF0  7F A4 EB 78 */	mr r4, r29
/* 801E0E94 001DDDF4  4B E6 BE 61 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 801E0E98 001DDDF8  7E E0 07 75 */	extsb. r0, r23
/* 801E0E9C 001DDDFC  41 82 00 10 */	beq lbl_801E0EAC
/* 801E0EA0 001DDE00  38 61 00 8C */	addi r3, r1, 0x8c
/* 801E0EA4 001DDE04  38 80 00 00 */	li r4, 0
/* 801E0EA8 001DDE08  48 15 FF 99 */	bl __dt__6CTokenFv
lbl_801E0EAC:
/* 801E0EAC 001DDE0C  7F 00 07 75 */	extsb. r0, r24
/* 801E0EB0 001DDE10  41 82 00 10 */	beq lbl_801E0EC0
/* 801E0EB4 001DDE14  38 61 00 94 */	addi r3, r1, 0x94
/* 801E0EB8 001DDE18  38 80 FF FF */	li r4, -1
/* 801E0EBC 001DDE1C  48 15 FF 85 */	bl __dt__6CTokenFv
lbl_801E0EC0:
/* 801E0EC0 001DDE20  7F 20 07 75 */	extsb. r0, r25
/* 801E0EC4 001DDE24  41 82 00 10 */	beq lbl_801E0ED4
/* 801E0EC8 001DDE28  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801E0ECC 001DDE2C  38 80 00 00 */	li r4, 0
/* 801E0ED0 001DDE30  48 15 FF 71 */	bl __dt__6CTokenFv
lbl_801E0ED4:
/* 801E0ED4 001DDE34  7F 80 07 75 */	extsb. r0, r28
/* 801E0ED8 001DDE38  41 82 00 10 */	beq lbl_801E0EE8
/* 801E0EDC 001DDE3C  38 61 00 AC */	addi r3, r1, 0xac
/* 801E0EE0 001DDE40  38 80 FF FF */	li r4, -1
/* 801E0EE4 001DDE44  48 15 FF 5D */	bl __dt__6CTokenFv
lbl_801E0EE8:
/* 801E0EE8 001DDE48  7F 60 07 75 */	extsb. r0, r27
/* 801E0EEC 001DDE4C  41 82 00 10 */	beq lbl_801E0EFC
/* 801E0EF0 001DDE50  38 61 00 BC */	addi r3, r1, 0xbc
/* 801E0EF4 001DDE54  38 80 00 00 */	li r4, 0
/* 801E0EF8 001DDE58  48 15 FF 49 */	bl __dt__6CTokenFv
lbl_801E0EFC:
/* 801E0EFC 001DDE5C  7F 40 07 75 */	extsb. r0, r26
/* 801E0F00 001DDE60  41 82 01 7C */	beq lbl_801E107C
/* 801E0F04 001DDE64  38 61 00 C4 */	addi r3, r1, 0xc4
/* 801E0F08 001DDE68  38 80 FF FF */	li r4, -1
/* 801E0F0C 001DDE6C  48 15 FF 35 */	bl __dt__6CTokenFv
/* 801E0F10 001DDE70  48 00 01 6C */	b lbl_801E107C
.global lbl_801E0F14
lbl_801E0F14:
/* 801E0F14 001DDE74  C0 9E 00 60 */	lfs f4, 0x60(r30)
/* 801E0F18 001DDE78  38 A1 01 10 */	addi r5, r1, 0x110
/* 801E0F1C 001DDE7C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801E0F20 001DDE80  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801E0F24 001DDE84  C0 22 AD 70 */	lfs f1, lbl_805ACA90@sda21(r2)
/* 801E0F28 001DDE88  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 801E0F2C 001DDE8C  C0 42 AD 50 */	lfs f2, lbl_805ACA70@sda21(r2)
/* 801E0F30 001DDE90  D0 61 01 14 */	stfs f3, 0x114(r1)
/* 801E0F34 001DDE94  C0 62 AC D8 */	lfs f3, lbl_805AC9F8@sda21(r2)
/* 801E0F38 001DDE98  D0 81 01 18 */	stfs f4, 0x118(r1)
/* 801E0F3C 001DDE9C  4B FF AA E5 */	bl sub_801dba20
/* 801E0F40 001DDEA0  48 00 01 3C */	b lbl_801E107C
.global lbl_801E0F44
lbl_801E0F44:
/* 801E0F44 001DDEA4  38 00 00 01 */	li r0, 1
/* 801E0F48 001DDEA8  38 61 04 34 */	addi r3, r1, 0x434
/* 801E0F4C 001DDEAC  98 1E 07 C8 */	stb r0, 0x7c8(r30)
/* 801E0F50 001DDEB0  38 9E 00 34 */	addi r4, r30, 0x34
/* 801E0F54 001DDEB4  48 13 1C 21 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E0F58 001DDEB8  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E0F5C 001DDEBC  38 61 01 00 */	addi r3, r1, 0x100
/* 801E0F60 001DDEC0  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E0F64 001DDEC4  38 C1 00 28 */	addi r6, r1, 0x28
/* 801E0F68 001DDEC8  38 84 01 C2 */	addi r4, r4, 0x1c2
/* 801E0F6C 001DDECC  38 A0 FF FF */	li r5, -1
/* 801E0F70 001DDED0  48 15 D2 25 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801E0F74 001DDED4  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801E0F78 001DDED8  38 61 02 90 */	addi r3, r1, 0x290
/* 801E0F7C 001DDEDC  38 A1 01 00 */	addi r5, r1, 0x100
/* 801E0F80 001DDEE0  38 C0 00 00 */	li r6, 0
/* 801E0F84 001DDEE4  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801E0F88 001DDEE8  4B E4 B3 F9 */	bl "GetLocatorTransform__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PC13CCharAnimTime"
/* 801E0F8C 001DDEEC  38 61 04 04 */	addi r3, r1, 0x404
/* 801E0F90 001DDEF0  38 81 02 90 */	addi r4, r1, 0x290
/* 801E0F94 001DDEF4  48 13 1B E1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E0F98 001DDEF8  38 61 01 00 */	addi r3, r1, 0x100
/* 801E0F9C 001DDEFC  48 15 CB 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E0FA0 001DDF00  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 801E0FA4 001DDF04  38 61 02 00 */	addi r3, r1, 0x200
/* 801E0FA8 001DDF08  38 81 00 F4 */	addi r4, r1, 0xf4
/* 801E0FAC 001DDF0C  C0 05 00 00 */	lfs f0, 0(r5)
/* 801E0FB0 001DDF10  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 801E0FB4 001DDF14  C0 05 00 04 */	lfs f0, 4(r5)
/* 801E0FB8 001DDF18  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 801E0FBC 001DDF1C  C0 05 00 08 */	lfs f0, 8(r5)
/* 801E0FC0 001DDF20  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 801E0FC4 001DDF24  48 13 22 01 */	bl Scale__12CTransform4fFRC9CVector3f
/* 801E0FC8 001DDF28  38 61 02 30 */	addi r3, r1, 0x230
/* 801E0FCC 001DDF2C  38 81 02 00 */	addi r4, r1, 0x200
/* 801E0FD0 001DDF30  38 A1 04 04 */	addi r5, r1, 0x404
/* 801E0FD4 001DDF34  48 13 19 7D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801E0FD8 001DDF38  38 61 02 60 */	addi r3, r1, 0x260
/* 801E0FDC 001DDF3C  38 81 04 34 */	addi r4, r1, 0x434
/* 801E0FE0 001DDF40  38 A1 02 30 */	addi r5, r1, 0x230
/* 801E0FE4 001DDF44  48 13 19 6D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 801E0FE8 001DDF48  38 61 03 D4 */	addi r3, r1, 0x3d4
/* 801E0FEC 001DDF4C  38 81 02 60 */	addi r4, r1, 0x260
/* 801E0FF0 001DDF50  48 13 1B 85 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E0FF4 001DDF54  C0 41 04 00 */	lfs f2, 0x400(r1)
/* 801E0FF8 001DDF58  C0 21 03 F0 */	lfs f1, 0x3f0(r1)
/* 801E0FFC 001DDF5C  C0 01 03 E0 */	lfs f0, 0x3e0(r1)
/* 801E1000 001DDF60  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 801E1004 001DDF64  D0 3E 07 D0 */	stfs f1, 0x7d0(r30)
/* 801E1008 001DDF68  D0 5E 07 D4 */	stfs f2, 0x7d4(r30)
/* 801E100C 001DDF6C  48 00 00 70 */	b lbl_801E107C
.global lbl_801E1010
lbl_801E1010:
/* 801E1010 001DDF70  38 00 00 00 */	li r0, 0
/* 801E1014 001DDF74  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E1018 001DDF78  98 1E 07 C8 */	stb r0, 0x7c8(r30)
/* 801E101C 001DDF7C  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 801E1020 001DDF80  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 801E1024 001DDF84  C0 03 00 04 */	lfs f0, 4(r3)
/* 801E1028 001DDF88  D0 1E 07 D0 */	stfs f0, 0x7d0(r30)
/* 801E102C 001DDF8C  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E1030 001DDF90  D0 1E 07 D4 */	stfs f0, 0x7d4(r30)
/* 801E1034 001DDF94  48 00 00 48 */	b lbl_801E107C
.global lbl_801E1038
lbl_801E1038:
/* 801E1038 001DDF98  80 1E 06 44 */	lwz r0, 0x644(r30)
/* 801E103C 001DDF9C  2C 00 00 01 */	cmpwi r0, 1
/* 801E1040 001DDFA0  40 82 00 3C */	bne lbl_801E107C
/* 801E1044 001DDFA4  38 00 00 01 */	li r0, 1
/* 801E1048 001DDFA8  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 801E104C 001DDFAC  98 1E 06 88 */	stb r0, 0x688(r30)
/* 801E1050 001DDFB0  48 00 00 2C */	b lbl_801E107C
.global lbl_801E1054
lbl_801E1054:
/* 801E1054 001DDFB4  38 00 00 00 */	li r0, 0
/* 801E1058 001DDFB8  98 1E 09 3C */	stb r0, 0x93c(r30)
/* 801E105C 001DDFBC  48 00 00 20 */	b lbl_801E107C
.global lbl_801E1060
lbl_801E1060:
/* 801E1060 001DDFC0  7F E5 FB 78 */	mr r5, r31
/* 801E1064 001DDFC4  38 80 00 02 */	li r4, 2
/* 801E1068 001DDFC8  4B FF A4 F9 */	bl sub_801db560
/* 801E106C 001DDFCC  48 00 00 10 */	b lbl_801E107C
.global lbl_801E1070
lbl_801E1070:
/* 801E1070 001DDFD0  4B E9 7E 41 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
/* 801E1074 001DDFD4  48 00 00 08 */	b lbl_801E107C
.global lbl_801E1078
lbl_801E1078:
/* 801E1078 001DDFD8  4B E9 7E 39 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
.global lbl_801E107C
lbl_801E107C:
/* 801E107C 001DDFDC  E3 E1 05 68 */	psq_l f31, 1384(r1), 0, qr0
/* 801E1080 001DDFE0  CB E1 05 60 */	lfd f31, 0x560(r1)
/* 801E1084 001DDFE4  E3 C1 05 58 */	psq_l f30, 1368(r1), 0, qr0
/* 801E1088 001DDFE8  CB C1 05 50 */	lfd f30, 0x550(r1)
/* 801E108C 001DDFEC  E3 A1 05 48 */	psq_l f29, 1352(r1), 0, qr0
/* 801E1090 001DDFF0  CB A1 05 40 */	lfd f29, 0x540(r1)
/* 801E1094 001DDFF4  E3 81 05 38 */	psq_l f28, 1336(r1), 0, qr0
/* 801E1098 001DDFF8  CB 81 05 30 */	lfd f28, 0x530(r1)
/* 801E109C 001DDFFC  E3 61 05 28 */	psq_l f27, 1320(r1), 0, qr0
/* 801E10A0 001DE000  CB 61 05 20 */	lfd f27, 0x520(r1)
/* 801E10A4 001DE004  BA E1 04 FC */	lmw r23, 0x4fc(r1)
/* 801E10A8 001DE008  80 01 05 74 */	lwz r0, 0x574(r1)
/* 801E10AC 001DE00C  7C 08 03 A6 */	mtlr r0
/* 801E10B0 001DE010  38 21 05 70 */	addi r1, r1, 0x570
/* 801E10B4 001DE014  4E 80 00 20 */	blr

.global AcceptScriptMsg__8CThardusF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__8CThardusF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801E10B8 001DE018  94 21 FB A0 */	stwu r1, -0x460(r1)
/* 801E10BC 001DE01C  7C 08 02 A6 */	mflr r0
/* 801E10C0 001DE020  90 01 04 64 */	stw r0, 0x464(r1)
/* 801E10C4 001DE024  DB E1 04 50 */	stfd f31, 0x450(r1)
/* 801E10C8 001DE028  F3 E1 04 58 */	psq_st f31, 1112(r1), 0, qr0
/* 801E10CC 001DE02C  BE 41 04 18 */	stmw r18, 0x418(r1)
/* 801E10D0 001DE030  7C B4 2B 78 */	mr r20, r5
/* 801E10D4 001DE034  7C 7F 1B 78 */	mr r31, r3
/* 801E10D8 001DE038  A0 05 00 00 */	lhz r0, 0(r5)
/* 801E10DC 001DE03C  7C 92 23 78 */	mr r18, r4
/* 801E10E0 001DE040  7C DE 33 78 */	mr r30, r6
/* 801E10E4 001DE044  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 801E10E8 001DE048  B0 01 00 B0 */	sth r0, 0xb0(r1)
/* 801E10EC 001DE04C  4B E9 BA 8D */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801E10F0 001DE050  38 12 FF F6 */	addi r0, r18, -10
/* 801E10F4 001DE054  28 00 00 1F */	cmplwi r0, 0x1f
/* 801E10F8 001DE058  41 81 10 D8 */	bgt lbl_801E21D0
/* 801E10FC 001DE05C  3C 60 80 3E */	lis r3, lbl_803E5FF4@ha
/* 801E1100 001DE060  54 00 10 3A */	slwi r0, r0, 2
/* 801E1104 001DE064  38 63 5F F4 */	addi r3, r3, lbl_803E5FF4@l
/* 801E1108 001DE068  7C 03 00 2E */	lwzx r0, r3, r0
/* 801E110C 001DE06C  7C 09 03 A6 */	mtctr r0
/* 801E1110 001DE070  4E 80 04 20 */	bctr
.global lbl_801E1114
lbl_801E1114:
/* 801E1114 001DE074  88 1F 05 C8 */	lbz r0, 0x5c8(r31)
/* 801E1118 001DE078  28 00 00 00 */	cmplwi r0, 0
/* 801E111C 001DE07C  40 82 10 B4 */	bne lbl_801E21D0
/* 801E1120 001DE080  38 00 00 01 */	li r0, 1
/* 801E1124 001DE084  98 1F 05 C8 */	stb r0, 0x5c8(r31)
/* 801E1128 001DE088  48 00 10 A8 */	b lbl_801E21D0
.global lbl_801E112C
lbl_801E112C:
/* 801E112C 001DE08C  83 5F 05 D0 */	lwz r26, 0x5d0(r31)
/* 801E1130 001DE090  38 7F 06 10 */	addi r3, r31, 0x610
/* 801E1134 001DE094  7F 52 D3 78 */	mr r18, r26
/* 801E1138 001DE098  7F 44 D3 78 */	mr r4, r26
/* 801E113C 001DE09C  4B E2 B2 CD */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801E1140 001DE0A0  7E 44 93 78 */	mr r4, r18
/* 801E1144 001DE0A4  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 801E1148 001DE0A8  4B EC 0F 21 */	bl sub_800a2068
/* 801E114C 001DE0AC  7E 44 93 78 */	mr r4, r18
/* 801E1150 001DE0B0  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 801E1154 001DE0B4  4B E2 B2 B5 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801E1158 001DE0B8  7E 44 93 78 */	mr r4, r18
/* 801E115C 001DE0BC  38 7F 09 0C */	addi r3, r31, 0x90c
/* 801E1160 001DE0C0  4B E7 CC 99 */	bl "reserve__Q24rstl36vector<f,Q24rstl17rmemory_allocator>Fi"
/* 801E1164 001DE0C4  3C 60 80 3D */	lis r3, lbl_803D1CB8@ha
/* 801E1168 001DE0C8  3B 01 02 3C */	addi r24, r1, 0x23c
/* 801E116C 001DE0CC  3B 3A FF FF */	addi r25, r26, -1
/* 801E1170 001DE0D0  3B 80 00 00 */	li r28, 0
/* 801E1174 001DE0D4  3B A3 1C B8 */	addi r29, r3, lbl_803D1CB8@l
/* 801E1178 001DE0D8  3B 60 00 00 */	li r27, 0
/* 801E117C 001DE0DC  48 00 05 14 */	b lbl_801E1690
lbl_801E1180:
/* 801E1180 001DE0E0  7C 1C C8 40 */	cmplw r28, r25
/* 801E1184 001DE0E4  40 82 00 14 */	bne lbl_801E1198
/* 801E1188 001DE0E8  C0 22 AC E0 */	lfs f1, lbl_805ACA00@sda21(r2)
/* 801E118C 001DE0EC  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 801E1190 001DE0F0  EF E1 00 32 */	fmuls f31, f1, f0
/* 801E1194 001DE0F4  48 00 00 08 */	b lbl_801E119C
lbl_801E1198:
/* 801E1198 001DE0F8  C3 FF 06 A8 */	lfs f31, 0x6a8(r31)
lbl_801E119C:
/* 801E119C 001DE0FC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801E11A0 001DE100  38 9D 00 DA */	addi r4, r29, 0xda
/* 801E11A4 001DE104  38 C1 00 34 */	addi r6, r1, 0x34
/* 801E11A8 001DE108  38 A0 FF FF */	li r5, -1
/* 801E11AC 001DE10C  48 15 CF E9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801E11B0 001DE110  7F C4 F3 78 */	mr r4, r30
/* 801E11B4 001DE114  38 61 00 AC */	addi r3, r1, 0xac
/* 801E11B8 001DE118  4B E6 BF 25 */	bl AllocateUniqueId__13CStateManagerFv
/* 801E11BC 001DE11C  A0 01 00 AC */	lhz r0, 0xac(r1)
/* 801E11C0 001DE120  38 9D 01 B3 */	addi r4, r29, 0x1b3
/* 801E11C4 001DE124  3A E0 00 00 */	li r23, 0
/* 801E11C8 001DE128  3A C0 00 00 */	li r22, 0
/* 801E11CC 001DE12C  B0 01 00 CC */	sth r0, 0xcc(r1)
/* 801E11D0 001DE130  3A 40 00 00 */	li r18, 0
/* 801E11D4 001DE134  38 60 03 48 */	li r3, 0x348
/* 801E11D8 001DE138  38 A0 00 00 */	li r5, 0
/* 801E11DC 001DE13C  48 13 46 91 */	bl __nw__FUlPCcPCc
/* 801E11E0 001DE140  7C 75 1B 79 */	or. r21, r3, r3
/* 801E11E4 001DE144  41 82 02 00 */	beq lbl_801E13E4
/* 801E11E8 001DE148  81 3F 05 E8 */	lwz r9, 0x5e8(r31)
/* 801E11EC 001DE14C  38 00 00 0F */	li r0, 0xf
/* 801E11F0 001DE150  81 01 01 08 */	lwz r8, 0x108(r1)
/* 801E11F4 001DE154  50 08 E0 06 */	rlwimi r8, r0, 0x1c, 0, 3
/* 801E11F8 001DE158  38 60 00 00 */	li r3, 0
/* 801E11FC 001DE15C  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E1200 001DE160  91 01 01 08 */	stw r8, 0x108(r1)
/* 801E1204 001DE164  50 68 D9 08 */	rlwimi r8, r3, 0x1b, 4, 4
/* 801E1208 001DE168  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E120C 001DE16C  38 00 FF FF */	li r0, -1
/* 801E1210 001DE170  80 ED 92 00 */	lwz r7, lbl_805A7DC0@sda21(r13)
/* 801E1214 001DE174  FC 40 08 90 */	fmr f2, f1
/* 801E1218 001DE178  80 CD 92 04 */	lwz r6, lbl_805A7DC4@sda21(r13)
/* 801E121C 001DE17C  FC 60 08 90 */	fmr f3, f1
/* 801E1220 001DE180  80 AD 91 F8 */	lwz r5, lbl_805A7DB8@sda21(r13)
/* 801E1224 001DE184  FC 80 08 90 */	fmr f4, f1
/* 801E1228 001DE188  80 8D 91 FC */	lwz r4, lbl_805A7DBC@sda21(r13)
/* 801E122C 001DE18C  91 01 01 08 */	stw r8, 0x108(r1)
/* 801E1230 001DE190  50 68 D1 4A */	rlwimi r8, r3, 0x1a, 5, 5
/* 801E1234 001DE194  7E 89 DA 14 */	add r20, r9, r27
/* 801E1238 001DE198  38 61 01 00 */	addi r3, r1, 0x100
/* 801E123C 001DE19C  91 01 01 08 */	stw r8, 0x108(r1)
/* 801E1240 001DE1A0  90 E1 01 70 */	stw r7, 0x170(r1)
/* 801E1244 001DE1A4  90 C1 01 74 */	stw r6, 0x174(r1)
/* 801E1248 001DE1A8  90 A1 01 68 */	stw r5, 0x168(r1)
/* 801E124C 001DE1AC  90 81 01 6C */	stw r4, 0x16c(r1)
/* 801E1250 001DE1B0  90 01 01 04 */	stw r0, 0x104(r1)
/* 801E1254 001DE1B4  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 801E1258 001DE1B8  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 801E125C 001DE1BC  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 801E1260 001DE1C0  48 18 21 8D */	bl __ct__6CColorFffff
/* 801E1264 001DE1C4  38 80 FF FF */	li r4, -1
/* 801E1268 001DE1C8  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E126C 001DE1CC  90 81 00 08 */	stw r4, 8(r1)
/* 801E1270 001DE1D0  7C 66 1B 78 */	mr r6, r3
/* 801E1274 001DE1D4  38 00 00 00 */	li r0, 0
/* 801E1278 001DE1D8  FC 40 08 90 */	fmr f2, f1
/* 801E127C 001DE1DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 801E1280 001DE1E0  FC 60 08 90 */	fmr f3, f1
/* 801E1284 001DE1E4  38 61 02 90 */	addi r3, r1, 0x290
/* 801E1288 001DE1E8  39 41 01 90 */	addi r10, r1, 0x190
/* 801E128C 001DE1EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E1290 001DE1F0  38 80 00 00 */	li r4, 0
/* 801E1294 001DE1F4  38 A0 FF FF */	li r5, -1
/* 801E1298 001DE1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E129C 001DE1FC  38 E0 00 01 */	li r7, 1
/* 801E12A0 001DE200  39 00 00 02 */	li r8, 2
/* 801E12A4 001DE204  39 20 00 00 */	li r9, 0
/* 801E12A8 001DE208  4B F2 54 51 */	bl __ct__16CLightParametersFbfQ216CLightParameters19EShadowTessellationffRC6CColorbQ216CLightParameters21EWorldLightingOptionsQ216CLightParameters26ELightRecalculationOptionsRC9CVector3fii
/* 801E12AC 001DE20C  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E12B0 001DE210  38 00 00 00 */	li r0, 0
/* 801E12B4 001DE214  90 01 00 08 */	stw r0, 8(r1)
/* 801E12B8 001DE218  38 61 03 AC */	addi r3, r1, 0x3ac
/* 801E12BC 001DE21C  FC 40 08 90 */	fmr f2, f1
/* 801E12C0 001DE220  C0 62 AC D8 */	lfs f3, lbl_805AC9F8@sda21(r2)
/* 801E12C4 001DE224  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E12C8 001DE228  38 81 02 90 */	addi r4, r1, 0x290
/* 801E12CC 001DE22C  38 A1 01 04 */	addi r5, r1, 0x104
/* 801E12D0 001DE230  38 C1 01 68 */	addi r6, r1, 0x168
/* 801E12D4 001DE234  38 E1 01 70 */	addi r7, r1, 0x170
/* 801E12D8 001DE238  39 01 01 08 */	addi r8, r1, 0x108
/* 801E12DC 001DE23C  3A E0 00 01 */	li r23, 1
/* 801E12E0 001DE240  39 20 00 01 */	li r9, 1
/* 801E12E4 001DE244  39 40 00 01 */	li r10, 1
/* 801E12E8 001DE248  4B F2 55 E1 */	bl sub_801068c8
/* 801E12EC 001DE24C  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E12F0 001DE250  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 801E12F4 001DE254  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 801E12F8 001DE258  D3 E1 01 60 */	stfs f31, 0x160(r1)
/* 801E12FC 001DE25C  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 801E1300 001DE260  38 61 02 38 */	addi r3, r1, 0x238
/* 801E1304 001DE264  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 801E1308 001DE268  38 81 00 F8 */	addi r4, r1, 0xf8
/* 801E130C 001DE26C  38 C1 00 FC */	addi r6, r1, 0xfc
/* 801E1310 001DE270  3A C0 00 01 */	li r22, 1
/* 801E1314 001DE274  80 FF 05 D8 */	lwz r7, 0x5d8(r31)
/* 801E1318 001DE278  90 01 00 FC */	stw r0, 0xfc(r1)
/* 801E131C 001DE27C  7E 67 DA 14 */	add r19, r7, r27
/* 801E1320 001DE280  80 1F 00 04 */	lwz r0, 4(r31)
/* 801E1324 001DE284  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801E1328 001DE288  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 801E132C 001DE28C  4B E7 01 59 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 801E1330 001DE290  A0 81 00 CC */	lhz r4, 0xcc(r1)
/* 801E1334 001DE294  39 60 00 02 */	li r11, 2
/* 801E1338 001DE298  38 00 00 01 */	li r0, 1
/* 801E133C 001DE29C  38 61 03 44 */	addi r3, r1, 0x344
/* 801E1340 001DE2A0  B0 81 00 A8 */	sth r4, 0xa8(r1)
/* 801E1344 001DE2A4  3A 40 00 01 */	li r18, 1
/* 801E1348 001DE2A8  38 80 00 01 */	li r4, 1
/* 801E134C 001DE2AC  38 A0 00 02 */	li r5, 2
/* 801E1350 001DE2B0  91 61 00 08 */	stw r11, 8(r1)
/* 801E1354 001DE2B4  38 C0 00 01 */	li r6, 1
/* 801E1358 001DE2B8  38 E0 00 01 */	li r7, 1
/* 801E135C 001DE2BC  39 00 00 01 */	li r8, 1
/* 801E1360 001DE2C0  91 61 00 0C */	stw r11, 0xc(r1)
/* 801E1364 001DE2C4  39 20 00 01 */	li r9, 1
/* 801E1368 001DE2C8  39 40 00 01 */	li r10, 1
/* 801E136C 001DE2CC  91 61 00 10 */	stw r11, 0x10(r1)
/* 801E1370 001DE2D0  91 61 00 14 */	stw r11, 0x14(r1)
/* 801E1374 001DE2D4  91 61 00 18 */	stw r11, 0x18(r1)
/* 801E1378 001DE2D8  91 61 00 1C */	stw r11, 0x1c(r1)
/* 801E137C 001DE2DC  91 61 00 20 */	stw r11, 0x20(r1)
/* 801E1380 001DE2E0  91 61 00 24 */	stw r11, 0x24(r1)
/* 801E1384 001DE2E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 801E1388 001DE2E8  4B F2 15 AD */	bl __ct__20CDamageVulnerabilityF14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability14EVulnerability15EDeflectionType
/* 801E138C 001DE2EC  90 61 00 08 */	stw r3, 8(r1)
/* 801E1390 001DE2F0  38 1F 00 68 */	addi r0, r31, 0x68
/* 801E1394 001DE2F4  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 801E1398 001DE2F8  38 A1 03 AC */	addi r5, r1, 0x3ac
/* 801E139C 001DE2FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E13A0 001DE300  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 801E13A4 001DE304  38 00 00 00 */	li r0, 0
/* 801E13A8 001DE308  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E13AC 001DE30C  80 9F 06 30 */	lwz r4, 0x630(r31)
/* 801E13B0 001DE310  7E A3 AB 78 */	mr r3, r21
/* 801E13B4 001DE314  7E 69 9B 78 */	mr r9, r19
/* 801E13B8 001DE318  38 C1 01 C4 */	addi r6, r1, 0x1c4
/* 801E13BC 001DE31C  90 81 00 10 */	stw r4, 0x10(r1)
/* 801E13C0 001DE320  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801E13C4 001DE324  38 E1 02 38 */	addi r7, r1, 0x238
/* 801E13C8 001DE328  39 41 01 60 */	addi r10, r1, 0x160
/* 801E13CC 001DE32C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801E13D0 001DE330  38 A0 00 01 */	li r5, 1
/* 801E13D4 001DE334  92 81 00 18 */	stw r20, 0x18(r1)
/* 801E13D8 001DE338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E13DC 001DE33C  48 00 22 CD */	bl "__ct__16CDestroyableRockF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDatafRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersRC10CModelData"
/* 801E13E0 001DE340  7C 75 1B 78 */	mr r21, r3
lbl_801E13E4:
/* 801E13E4 001DE344  7E 40 07 75 */	extsb. r0, r18
/* 801E13E8 001DE348  7E B3 AB 78 */	mr r19, r21
/* 801E13EC 001DE34C  41 82 00 4C */	beq lbl_801E1438
/* 801E13F0 001DE350  28 18 00 00 */	cmplwi r24, 0
/* 801E13F4 001DE354  41 82 00 44 */	beq lbl_801E1438
/* 801E13F8 001DE358  80 01 02 40 */	lwz r0, 0x240(r1)
/* 801E13FC 001DE35C  80 61 02 48 */	lwz r3, 0x248(r1)
/* 801E1400 001DE360  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801E1404 001DE364  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 801E1408 001DE368  7C 64 1B 78 */	mr r4, r3
/* 801E140C 001DE36C  7C 03 02 14 */	add r0, r3, r0
/* 801E1410 001DE370  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 801E1414 001DE374  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801E1418 001DE378  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 801E141C 001DE37C  48 00 00 08 */	b lbl_801E1424
lbl_801E1420:
/* 801E1420 001DE380  38 84 00 0C */	addi r4, r4, 0xc
lbl_801E1424:
/* 801E1424 001DE384  7C 04 00 40 */	cmplw r4, r0
/* 801E1428 001DE388  40 82 FF F8 */	bne lbl_801E1420
/* 801E142C 001DE38C  28 03 00 00 */	cmplwi r3, 0
/* 801E1430 001DE390  41 82 00 08 */	beq lbl_801E1438
/* 801E1434 001DE394  48 13 44 FD */	bl Free__7CMemoryFPCv
lbl_801E1438:
/* 801E1438 001DE398  7E C0 07 75 */	extsb. r0, r22
/* 801E143C 001DE39C  41 82 00 10 */	beq lbl_801E144C
/* 801E1440 001DE3A0  38 61 03 AC */	addi r3, r1, 0x3ac
/* 801E1444 001DE3A4  38 80 FF FF */	li r4, -1
/* 801E1448 001DE3A8  4B F2 51 C1 */	bl __dt__16CActorParametersFv
lbl_801E144C:
/* 801E144C 001DE3AC  7E E0 07 75 */	extsb. r0, r23
/* 801E1450 001DE3B0  41 82 00 10 */	beq lbl_801E1460
/* 801E1454 001DE3B4  38 61 02 90 */	addi r3, r1, 0x290
/* 801E1458 001DE3B8  38 80 FF FF */	li r4, -1
/* 801E145C 001DE3BC  4B F2 51 AD */	bl __dt__16CActorParametersFv
lbl_801E1460:
/* 801E1460 001DE3C0  7F C3 F3 78 */	mr r3, r30
/* 801E1464 001DE3C4  7E 64 9B 78 */	mr r4, r19
/* 801E1468 001DE3C8  4B E6 B8 8D */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 801E146C 001DE3CC  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 801E1470 001DE3D0  80 BF 06 18 */	lwz r5, 0x618(r31)
/* 801E1474 001DE3D4  7C 00 28 00 */	cmpw r0, r5
/* 801E1478 001DE3D8  41 80 00 1C */	blt lbl_801E1494
/* 801E147C 001DE3DC  2C 05 00 00 */	cmpwi r5, 0
/* 801E1480 001DE3E0  38 7F 06 10 */	addi r3, r31, 0x610
/* 801E1484 001DE3E4  38 80 00 04 */	li r4, 4
/* 801E1488 001DE3E8  41 82 00 08 */	beq lbl_801E1490
/* 801E148C 001DE3EC  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E1490:
/* 801E1490 001DE3F0  4B E2 AF 79 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801E1494:
/* 801E1494 001DE3F4  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 801E1498 001DE3F8  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 801E149C 001DE3FC  54 00 08 3C */	slwi r0, r0, 1
/* 801E14A0 001DE400  7C 63 02 15 */	add. r3, r3, r0
/* 801E14A4 001DE404  41 82 00 0C */	beq lbl_801E14B0
/* 801E14A8 001DE408  A0 01 00 CC */	lhz r0, 0xcc(r1)
/* 801E14AC 001DE40C  B0 03 00 00 */	sth r0, 0(r3)
lbl_801E14B0:
/* 801E14B0 001DE410  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 801E14B4 001DE414  38 03 00 01 */	addi r0, r3, 1
/* 801E14B8 001DE418  90 1F 06 14 */	stw r0, 0x614(r31)
/* 801E14BC 001DE41C  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 801E14C0 001DE420  80 BF 06 B8 */	lwz r5, 0x6b8(r31)
/* 801E14C4 001DE424  7C 00 28 00 */	cmpw r0, r5
/* 801E14C8 001DE428  41 80 00 1C */	blt lbl_801E14E4
/* 801E14CC 001DE42C  2C 05 00 00 */	cmpwi r5, 0
/* 801E14D0 001DE430  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 801E14D4 001DE434  38 80 00 04 */	li r4, 4
/* 801E14D8 001DE438  41 82 00 08 */	beq lbl_801E14E0
/* 801E14DC 001DE43C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E14E0:
/* 801E14E0 001DE440  4B EC 0B 89 */	bl sub_800a2068
lbl_801E14E4:
/* 801E14E4 001DE444  80 7F 06 BC */	lwz r3, 0x6bc(r31)
/* 801E14E8 001DE448  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 801E14EC 001DE44C  7C 63 02 15 */	add. r3, r3, r0
/* 801E14F0 001DE450  41 82 00 0C */	beq lbl_801E14FC
/* 801E14F4 001DE454  88 0D 92 08 */	lbz r0, lbl_805A7DC8@sda21(r13)
/* 801E14F8 001DE458  98 03 00 00 */	stb r0, 0(r3)
lbl_801E14FC:
/* 801E14FC 001DE45C  80 BF 06 B4 */	lwz r5, 0x6b4(r31)
/* 801E1500 001DE460  7F C4 F3 78 */	mr r4, r30
/* 801E1504 001DE464  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801E1508 001DE468  38 05 00 01 */	addi r0, r5, 1
/* 801E150C 001DE46C  90 1F 06 B4 */	stw r0, 0x6b4(r31)
/* 801E1510 001DE470  4B E6 BB CD */	bl AllocateUniqueId__13CStateManagerFv
/* 801E1514 001DE474  A0 01 00 A4 */	lhz r0, 0xa4(r1)
/* 801E1518 001DE478  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 801E151C 001DE47C  38 9D 00 DA */	addi r4, r29, 0xda
/* 801E1520 001DE480  38 C1 00 30 */	addi r6, r1, 0x30
/* 801E1524 001DE484  B0 01 00 C8 */	sth r0, 0xc8(r1)
/* 801E1528 001DE488  38 A0 FF FF */	li r5, -1
/* 801E152C 001DE48C  48 15 CC 69 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 801E1530 001DE490  38 9D 01 B3 */	addi r4, r29, 0x1b3
/* 801E1534 001DE494  38 60 01 48 */	li r3, 0x148
/* 801E1538 001DE498  38 A0 00 00 */	li r5, 0
/* 801E153C 001DE49C  48 13 43 31 */	bl __nw__FUlPCcPCc
/* 801E1540 001DE4A0  7C 73 1B 79 */	or. r19, r3, r3
/* 801E1544 001DE4A4  41 82 00 74 */	beq lbl_801E15B8
/* 801E1548 001DE4A8  A0 61 00 CC */	lhz r3, 0xcc(r1)
/* 801E154C 001DE4AC  A0 01 00 C8 */	lhz r0, 0xc8(r1)
/* 801E1550 001DE4B0  B0 61 00 A0 */	sth r3, 0xa0(r1)
/* 801E1554 001DE4B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801E1558 001DE4B8  90 61 00 EC */	stw r3, 0xec(r1)
/* 801E155C 001DE4BC  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 801E1560 001DE4C0  B0 01 00 9C */	sth r0, 0x9c(r1)
/* 801E1564 001DE4C4  48 16 8A 31 */	bl Blue__6CColorFv
/* 801E1568 001DE4C8  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801E156C 001DE4CC  7C 65 1B 78 */	mr r5, r3
/* 801E1570 001DE4D0  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 801E1574 001DE4D4  38 61 02 F4 */	addi r3, r1, 0x2f4
/* 801E1578 001DE4D8  48 12 4E BD */	bl BuildPoint__6CLightFRC9CVector3fRC6CColor
/* 801E157C 001DE4DC  38 00 00 00 */	li r0, 0
/* 801E1580 001DE4E0  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 801E1584 001DE4E4  90 01 00 08 */	stw r0, 8(r1)
/* 801E1588 001DE4E8  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 801E158C 001DE4EC  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E1590 001DE4F0  7E 63 9B 78 */	mr r3, r19
/* 801E1594 001DE4F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E1598 001DE4F8  38 81 00 9C */	addi r4, r1, 0x9c
/* 801E159C 001DE4FC  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 801E15A0 001DE500  38 E1 01 B4 */	addi r7, r1, 0x1b4
/* 801E15A4 001DE504  39 21 00 A0 */	addi r9, r1, 0xa0
/* 801E15A8 001DE508  39 41 02 F4 */	addi r10, r1, 0x2f4
/* 801E15AC 001DE50C  38 C0 00 00 */	li r6, 0
/* 801E15B0 001DE510  4B ED 42 75 */	bl "__ct__10CGameLightF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif"
/* 801E15B4 001DE514  7C 73 1B 78 */	mr r19, r3
lbl_801E15B8:
/* 801E15B8 001DE518  7E 63 9B 78 */	mr r3, r19
/* 801E15BC 001DE51C  38 80 00 00 */	li r4, 0
/* 801E15C0 001DE520  81 93 00 00 */	lwz r12, 0(r19)
/* 801E15C4 001DE524  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E15C8 001DE528  7D 89 03 A6 */	mtctr r12
/* 801E15CC 001DE52C  4E 80 04 21 */	bctrl
/* 801E15D0 001DE530  7F C3 F3 78 */	mr r3, r30
/* 801E15D4 001DE534  7E 64 9B 78 */	mr r4, r19
/* 801E15D8 001DE538  4B E6 B5 3D */	bl AddObject__13CStateManagerFR7CEntity
/* 801E15DC 001DE53C  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 801E15E0 001DE540  80 BF 06 C8 */	lwz r5, 0x6c8(r31)
/* 801E15E4 001DE544  7C 00 28 00 */	cmpw r0, r5
/* 801E15E8 001DE548  41 80 00 1C */	blt lbl_801E1604
/* 801E15EC 001DE54C  2C 05 00 00 */	cmpwi r5, 0
/* 801E15F0 001DE550  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 801E15F4 001DE554  38 80 00 04 */	li r4, 4
/* 801E15F8 001DE558  41 82 00 08 */	beq lbl_801E1600
/* 801E15FC 001DE55C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E1600:
/* 801E1600 001DE560  4B E2 AE 09 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801E1604:
/* 801E1604 001DE564  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 801E1608 001DE568  80 7F 06 CC */	lwz r3, 0x6cc(r31)
/* 801E160C 001DE56C  54 00 08 3C */	slwi r0, r0, 1
/* 801E1610 001DE570  7C 63 02 15 */	add. r3, r3, r0
/* 801E1614 001DE574  41 82 00 0C */	beq lbl_801E1620
/* 801E1618 001DE578  A0 01 00 C8 */	lhz r0, 0xc8(r1)
/* 801E161C 001DE57C  B0 03 00 00 */	sth r0, 0(r3)
lbl_801E1620:
/* 801E1620 001DE580  80 7F 06 C4 */	lwz r3, 0x6c4(r31)
/* 801E1624 001DE584  38 03 00 01 */	addi r0, r3, 1
/* 801E1628 001DE588  90 1F 06 C4 */	stw r0, 0x6c4(r31)
/* 801E162C 001DE58C  80 1F 09 10 */	lwz r0, 0x910(r31)
/* 801E1630 001DE590  80 BF 09 14 */	lwz r5, 0x914(r31)
/* 801E1634 001DE594  7C 00 28 00 */	cmpw r0, r5
/* 801E1638 001DE598  41 80 00 1C */	blt lbl_801E1654
/* 801E163C 001DE59C  2C 05 00 00 */	cmpwi r5, 0
/* 801E1640 001DE5A0  38 7F 09 0C */	addi r3, r31, 0x90c
/* 801E1644 001DE5A4  38 80 00 04 */	li r4, 4
/* 801E1648 001DE5A8  41 82 00 08 */	beq lbl_801E1650
/* 801E164C 001DE5AC  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E1650:
/* 801E1650 001DE5B0  4B E7 C7 A9 */	bl "reserve__Q24rstl36vector<f,Q24rstl17rmemory_allocator>Fi"
lbl_801E1654:
/* 801E1654 001DE5B4  80 1F 09 10 */	lwz r0, 0x910(r31)
/* 801E1658 001DE5B8  80 7F 09 18 */	lwz r3, 0x918(r31)
/* 801E165C 001DE5BC  54 00 10 3A */	slwi r0, r0, 2
/* 801E1660 001DE5C0  7C 63 02 15 */	add. r3, r3, r0
/* 801E1664 001DE5C4  41 82 00 08 */	beq lbl_801E166C
/* 801E1668 001DE5C8  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_801E166C:
/* 801E166C 001DE5CC  80 9F 09 10 */	lwz r4, 0x910(r31)
/* 801E1670 001DE5D0  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 801E1674 001DE5D4  38 04 00 01 */	addi r0, r4, 1
/* 801E1678 001DE5D8  90 1F 09 10 */	stw r0, 0x910(r31)
/* 801E167C 001DE5DC  48 15 C4 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E1680 001DE5E0  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 801E1684 001DE5E4  48 15 C4 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801E1688 001DE5E8  3B 9C 00 01 */	addi r28, r28, 1
/* 801E168C 001DE5EC  3B 7B 00 4C */	addi r27, r27, 0x4c
lbl_801E1690:
/* 801E1690 001DE5F0  7C 1C D0 40 */	cmplw r28, r26
/* 801E1694 001DE5F4  41 80 FA EC */	blt lbl_801E1180
/* 801E1698 001DE5F8  7F E3 FB 78 */	mr r3, r31
/* 801E169C 001DE5FC  7F C5 F3 78 */	mr r5, r30
/* 801E16A0 001DE600  38 80 00 1B */	li r4, 0x1b
/* 801E16A4 001DE604  4B E7 2C AD */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E16A8 001DE608  7F E3 FB 78 */	mr r3, r31
/* 801E16AC 001DE60C  7F C5 F3 78 */	mr r5, r30
/* 801E16B0 001DE610  38 80 00 15 */	li r4, 0x15
/* 801E16B4 001DE614  4B E7 2C 9D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E16B8 001DE618  7F E3 FB 78 */	mr r3, r31
/* 801E16BC 001DE61C  7F C5 F3 78 */	mr r5, r30
/* 801E16C0 001DE620  38 80 00 29 */	li r4, 0x29
/* 801E16C4 001DE624  4B E7 28 BD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E16C8 001DE628  7F E3 FB 78 */	mr r3, r31
/* 801E16CC 001DE62C  7F C5 F3 78 */	mr r5, r30
/* 801E16D0 001DE630  38 80 00 28 */	li r4, 0x28
/* 801E16D4 001DE634  4B E7 28 AD */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E16D8 001DE638  7F E3 FB 78 */	mr r3, r31
/* 801E16DC 001DE63C  7F C4 F3 78 */	mr r4, r30
/* 801E16E0 001DE640  4B FF C5 05 */	bl sub_801ddbe4
/* 801E16E4 001DE644  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801E16E8 001DE648  38 80 00 02 */	li r4, 2
/* 801E16EC 001DE64C  4B F5 94 B9 */	bl SetFallState__15CBodyControllerFQ23pas10EFallState
/* 801E16F0 001DE650  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801E16F4 001DE654  7F C4 F3 78 */	mr r4, r30
/* 801E16F8 001DE658  4B F5 95 F9 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801E16FC 001DE65C  80 DF 04 50 */	lwz r6, 0x450(r31)
/* 801E1700 001DE660  38 80 00 01 */	li r4, 1
/* 801E1704 001DE664  7F E3 FB 78 */	mr r3, r31
/* 801E1708 001DE668  7F C5 F3 78 */	mr r5, r30
/* 801E170C 001DE66C  88 06 02 D8 */	lbz r0, 0x2d8(r6)
/* 801E1710 001DE670  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801E1714 001DE674  38 80 00 00 */	li r4, 0
/* 801E1718 001DE678  98 06 02 D8 */	stb r0, 0x2d8(r6)
/* 801E171C 001DE67C  4B FF 9E 45 */	bl sub_801db560
/* 801E1720 001DE680  7F E3 FB 78 */	mr r3, r31
/* 801E1724 001DE684  7F C4 F3 78 */	mr r4, r30
/* 801E1728 001DE688  4B FF D5 59 */	bl sub_801dec80
/* 801E172C 001DE68C  7F E3 FB 78 */	mr r3, r31
/* 801E1730 001DE690  7F C5 F3 78 */	mr r5, r30
/* 801E1734 001DE694  38 80 00 33 */	li r4, 0x33
/* 801E1738 001DE698  4B E7 2C 19 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E173C 001DE69C  48 00 0A 94 */	b lbl_801E21D0
.global lbl_801E1740
lbl_801E1740:
/* 801E1740 001DE6A0  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 801E1744 001DE6A4  7F C4 F3 78 */	mr r4, r30
/* 801E1748 001DE6A8  4B FC 5C 7D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801E174C 001DE6AC  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 801E1750 001DE6B0  7F C4 F3 78 */	mr r4, r30
/* 801E1754 001DE6B4  4B FC 5C 71 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801E1758 001DE6B8  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 801E175C 001DE6BC  7F C4 F3 78 */	mr r4, r30
/* 801E1760 001DE6C0  4B FC 5C 65 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801E1764 001DE6C4  A0 1F 06 4C */	lhz r0, 0x64c(r31)
/* 801E1768 001DE6C8  7F C3 F3 78 */	mr r3, r30
/* 801E176C 001DE6CC  38 81 00 98 */	addi r4, r1, 0x98
/* 801E1770 001DE6D0  B0 01 00 98 */	sth r0, 0x98(r1)
/* 801E1774 001DE6D4  4B E6 AA F9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801E1778 001DE6D8  82 7F 06 14 */	lwz r19, 0x614(r31)
/* 801E177C 001DE6DC  3A 80 00 00 */	li r20, 0
/* 801E1780 001DE6E0  3A 40 00 00 */	li r18, 0
/* 801E1784 001DE6E4  48 00 00 24 */	b lbl_801E17A8
lbl_801E1788:
/* 801E1788 001DE6E8  80 BF 06 1C */	lwz r5, 0x61c(r31)
/* 801E178C 001DE6EC  7F C3 F3 78 */	mr r3, r30
/* 801E1790 001DE6F0  38 81 00 94 */	addi r4, r1, 0x94
/* 801E1794 001DE6F4  7C 05 92 2E */	lhzx r0, r5, r18
/* 801E1798 001DE6F8  B0 01 00 94 */	sth r0, 0x94(r1)
/* 801E179C 001DE6FC  4B E6 AA D1 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801E17A0 001DE700  3A 94 00 01 */	addi r20, r20, 1
/* 801E17A4 001DE704  3A 52 00 02 */	addi r18, r18, 2
lbl_801E17A8:
/* 801E17A8 001DE708  7C 14 98 40 */	cmplw r20, r19
/* 801E17AC 001DE70C  41 80 FF DC */	blt lbl_801E1788
/* 801E17B0 001DE710  82 9F 06 C4 */	lwz r20, 0x6c4(r31)
/* 801E17B4 001DE714  3A 60 00 00 */	li r19, 0
/* 801E17B8 001DE718  3A 40 00 00 */	li r18, 0
/* 801E17BC 001DE71C  48 00 00 24 */	b lbl_801E17E0
lbl_801E17C0:
/* 801E17C0 001DE720  80 BF 06 CC */	lwz r5, 0x6cc(r31)
/* 801E17C4 001DE724  7F C3 F3 78 */	mr r3, r30
/* 801E17C8 001DE728  38 81 00 90 */	addi r4, r1, 0x90
/* 801E17CC 001DE72C  7C 05 92 2E */	lhzx r0, r5, r18
/* 801E17D0 001DE730  B0 01 00 90 */	sth r0, 0x90(r1)
/* 801E17D4 001DE734  4B E6 AA 99 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 801E17D8 001DE738  3A 73 00 01 */	addi r19, r19, 1
/* 801E17DC 001DE73C  3A 52 00 02 */	addi r18, r18, 2
lbl_801E17E0:
/* 801E17E0 001DE740  7C 13 A0 40 */	cmplw r19, r20
/* 801E17E4 001DE744  41 80 FF DC */	blt lbl_801E17C0
/* 801E17E8 001DE748  48 00 09 E8 */	b lbl_801E21D0
.global lbl_801E17EC
lbl_801E17EC:
/* 801E17EC 001DE74C  88 1F 09 4C */	lbz r0, 0x94c(r31)
/* 801E17F0 001DE750  28 00 00 00 */	cmplwi r0, 0
/* 801E17F4 001DE754  40 82 09 DC */	bne lbl_801E21D0
/* 801E17F8 001DE758  38 00 00 01 */	li r0, 1
/* 801E17FC 001DE75C  38 7F 07 64 */	addi r3, r31, 0x764
/* 801E1800 001DE760  98 1F 09 4C */	stb r0, 0x94c(r31)
/* 801E1804 001DE764  38 9F 00 34 */	addi r4, r31, 0x34
/* 801E1808 001DE768  48 13 13 39 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801E180C 001DE76C  83 7F 00 24 */	lwz r27, 0x24(r31)
/* 801E1810 001DE770  3B 3F 05 7C */	addi r25, r31, 0x57c
/* 801E1814 001DE774  3B 01 02 D4 */	addi r24, r1, 0x2d4
/* 801E1818 001DE778  3B BF 06 68 */	addi r29, r31, 0x668
/* 801E181C 001DE77C  3B 80 00 00 */	li r28, 0
/* 801E1820 001DE780  3B 40 00 00 */	li r26, 0
/* 801E1824 001DE784  48 00 03 48 */	b lbl_801E1B6C
lbl_801E1828:
/* 801E1828 001DE788  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 801E182C 001DE78C  7F C4 F3 78 */	mr r4, r30
/* 801E1830 001DE790  38 61 00 8C */	addi r3, r1, 0x8c
/* 801E1834 001DE794  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 801E1838 001DE798  7E 40 D2 14 */	add r18, r0, r26
/* 801E183C 001DE79C  80 12 00 08 */	lwz r0, 8(r18)
/* 801E1840 001DE7A0  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 801E1844 001DE7A4  4B E6 66 D9 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801E1848 001DE7A8  A0 61 00 8C */	lhz r3, 0x8c(r1)
/* 801E184C 001DE7AC  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 801E1850 001DE7B0  B0 61 00 C4 */	sth r3, 0xc4(r1)
/* 801E1854 001DE7B4  7C 03 20 40 */	cmplw r3, r4
/* 801E1858 001DE7B8  41 82 03 0C */	beq lbl_801E1B64
/* 801E185C 001DE7BC  80 12 00 00 */	lwz r0, 0(r18)
/* 801E1860 001DE7C0  2C 00 00 0D */	cmpwi r0, 0xd
/* 801E1864 001DE7C4  40 82 01 D8 */	bne lbl_801E1A3C
/* 801E1868 001DE7C8  B0 61 00 88 */	sth r3, 0x88(r1)
/* 801E186C 001DE7CC  7F C3 F3 78 */	mr r3, r30
/* 801E1870 001DE7D0  38 81 00 88 */	addi r4, r1, 0x88
/* 801E1874 001DE7D4  4B E6 AD 01 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1878 001DE7D8  7C 64 1B 78 */	mr r4, r3
/* 801E187C 001DE7DC  38 61 01 58 */	addi r3, r1, 0x158
/* 801E1880 001DE7E0  4B EC 4C CD */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801E1884 001DE7E4  80 83 00 04 */	lwz r4, 4(r3)
/* 801E1888 001DE7E8  28 04 00 00 */	cmplwi r4, 0
/* 801E188C 001DE7EC  41 82 00 D0 */	beq lbl_801E195C
/* 801E1890 001DE7F0  38 00 00 00 */	li r0, 0
/* 801E1894 001DE7F4  7F E3 FB 78 */	mr r3, r31
/* 801E1898 001DE7F8  90 01 02 D0 */	stw r0, 0x2d0(r1)
/* 801E189C 001DE7FC  7F C5 F3 78 */	mr r5, r30
/* 801E18A0 001DE800  38 C1 02 D0 */	addi r6, r1, 0x2d0
/* 801E18A4 001DE804  4B FF C9 05 */	bl sub_801de1a8
/* 801E18A8 001DE808  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 801E18AC 001DE80C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 801E18B0 001DE810  7C 79 02 15 */	add. r3, r25, r0
/* 801E18B4 001DE814  41 82 00 40 */	beq lbl_801E18F4
/* 801E18B8 001DE818  80 01 02 D0 */	lwz r0, 0x2d0(r1)
/* 801E18BC 001DE81C  7F 05 C3 78 */	mr r5, r24
/* 801E18C0 001DE820  38 83 00 04 */	addi r4, r3, 4
/* 801E18C4 001DE824  90 03 00 00 */	stw r0, 0(r3)
/* 801E18C8 001DE828  80 03 00 00 */	lwz r0, 0(r3)
/* 801E18CC 001DE82C  7C 09 03 A6 */	mtctr r0
/* 801E18D0 001DE830  2C 00 00 00 */	cmpwi r0, 0
/* 801E18D4 001DE834  40 81 00 20 */	ble lbl_801E18F4
lbl_801E18D8:
/* 801E18D8 001DE838  28 04 00 00 */	cmplwi r4, 0
/* 801E18DC 001DE83C  41 82 00 0C */	beq lbl_801E18E8
/* 801E18E0 001DE840  A0 05 00 00 */	lhz r0, 0(r5)
/* 801E18E4 001DE844  B0 04 00 00 */	sth r0, 0(r4)
lbl_801E18E8:
/* 801E18E8 001DE848  38 84 00 02 */	addi r4, r4, 2
/* 801E18EC 001DE84C  38 A5 00 02 */	addi r5, r5, 2
/* 801E18F0 001DE850  42 00 FF E8 */	bdnz lbl_801E18D8
lbl_801E18F4:
/* 801E18F4 001DE854  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 801E18F8 001DE858  38 80 00 00 */	li r4, 0
/* 801E18FC 001DE85C  38 03 00 01 */	addi r0, r3, 1
/* 801E1900 001DE860  90 1F 05 78 */	stw r0, 0x578(r31)
/* 801E1904 001DE864  80 A1 02 D0 */	lwz r5, 0x2d0(r1)
/* 801E1908 001DE868  2C 05 00 00 */	cmpwi r5, 0
/* 801E190C 001DE86C  40 81 00 44 */	ble lbl_801E1950
/* 801E1910 001DE870  2C 05 00 08 */	cmpwi r5, 8
/* 801E1914 001DE874  38 65 FF F8 */	addi r3, r5, -8
/* 801E1918 001DE878  40 81 00 20 */	ble lbl_801E1938
/* 801E191C 001DE87C  38 03 00 07 */	addi r0, r3, 7
/* 801E1920 001DE880  54 00 E8 FE */	srwi r0, r0, 3
/* 801E1924 001DE884  7C 09 03 A6 */	mtctr r0
/* 801E1928 001DE888  2C 03 00 00 */	cmpwi r3, 0
/* 801E192C 001DE88C  40 81 00 0C */	ble lbl_801E1938
lbl_801E1930:
/* 801E1930 001DE890  38 84 00 08 */	addi r4, r4, 8
/* 801E1934 001DE894  42 00 FF FC */	bdnz lbl_801E1930
lbl_801E1938:
/* 801E1938 001DE898  7C 04 28 50 */	subf r0, r4, r5
/* 801E193C 001DE89C  7C 09 03 A6 */	mtctr r0
/* 801E1940 001DE8A0  7C 04 28 00 */	cmpw r4, r5
/* 801E1944 001DE8A4  40 80 00 0C */	bge lbl_801E1950
lbl_801E1948:
/* 801E1948 001DE8A8  38 84 00 01 */	addi r4, r4, 1
/* 801E194C 001DE8AC  42 00 FF FC */	bdnz lbl_801E1948
lbl_801E1950:
/* 801E1950 001DE8B0  38 00 00 00 */	li r0, 0
/* 801E1954 001DE8B4  90 01 02 D0 */	stw r0, 0x2d0(r1)
/* 801E1958 001DE8B8  48 00 02 0C */	b lbl_801E1B64
lbl_801E195C:
/* 801E195C 001DE8BC  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E1960 001DE8C0  7F C3 F3 78 */	mr r3, r30
/* 801E1964 001DE8C4  38 81 00 84 */	addi r4, r1, 0x84
/* 801E1968 001DE8C8  B0 01 00 84 */	sth r0, 0x84(r1)
/* 801E196C 001DE8CC  4B E6 AC 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1970 001DE8D0  7C 64 1B 78 */	mr r4, r3
/* 801E1974 001DE8D4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 801E1978 001DE8D8  4B EC 3A 25 */	bl sub_800a539c
/* 801E197C 001DE8DC  4B EC 39 F5 */	bl "CastTo<22CThardusRockProjectile>__10CPatternedFP7CEntity"
/* 801E1980 001DE8E0  28 03 00 00 */	cmplwi r3, 0
/* 801E1984 001DE8E4  41 82 00 2C */	beq lbl_801E19B0
/* 801E1988 001DE8E8  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E198C 001DE8EC  38 80 00 00 */	li r4, 0
/* 801E1990 001DE8F0  B0 1F 05 FC */	sth r0, 0x5fc(r31)
/* 801E1994 001DE8F4  80 12 00 08 */	lwz r0, 8(r18)
/* 801E1998 001DE8F8  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801E199C 001DE8FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801E19A0 001DE900  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E19A4 001DE904  7D 89 03 A6 */	mtctr r12
/* 801E19A8 001DE908  4E 80 04 21 */	bctrl
/* 801E19AC 001DE90C  48 00 01 B8 */	b lbl_801E1B64
lbl_801E19B0:
/* 801E19B0 001DE910  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E19B4 001DE914  7F C3 F3 78 */	mr r3, r30
/* 801E19B8 001DE918  38 81 00 80 */	addi r4, r1, 0x80
/* 801E19BC 001DE91C  B0 01 00 80 */	sth r0, 0x80(r1)
/* 801E19C0 001DE920  4B E6 AB E5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801E19C4 001DE924  7C 64 1B 78 */	mr r4, r3
/* 801E19C8 001DE928  38 61 01 30 */	addi r3, r1, 0x130
/* 801E19CC 001DE92C  4B EC A6 B5 */	bl "__ct__22TCastToPtr<9CRepulsor>FP7CEntity"
/* 801E19D0 001DE930  80 03 00 04 */	lwz r0, 4(r3)
/* 801E19D4 001DE934  28 00 00 00 */	cmplwi r0, 0
/* 801E19D8 001DE938  41 82 00 2C */	beq lbl_801E1A04
/* 801E19DC 001DE93C  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 801E19E0 001DE940  54 00 08 3C */	slwi r0, r0, 1
/* 801E19E4 001DE944  7C 7D 02 15 */	add. r3, r29, r0
/* 801E19E8 001DE948  41 82 00 0C */	beq lbl_801E19F4
/* 801E19EC 001DE94C  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E19F0 001DE950  B0 03 00 00 */	sth r0, 0(r3)
lbl_801E19F4:
/* 801E19F4 001DE954  80 7F 06 64 */	lwz r3, 0x664(r31)
/* 801E19F8 001DE958  38 03 00 01 */	addi r0, r3, 1
/* 801E19FC 001DE95C  90 1F 06 64 */	stw r0, 0x664(r31)
/* 801E1A00 001DE960  48 00 01 64 */	b lbl_801E1B64
lbl_801E1A04:
/* 801E1A04 001DE964  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E1A08 001DE968  7F C3 F3 78 */	mr r3, r30
/* 801E1A0C 001DE96C  38 81 00 7C */	addi r4, r1, 0x7c
/* 801E1A10 001DE970  B0 01 00 7C */	sth r0, 0x7c(r1)
/* 801E1A14 001DE974  4B E6 AB 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801E1A18 001DE978  7C 64 1B 78 */	mr r4, r3
/* 801E1A1C 001DE97C  38 61 01 28 */	addi r3, r1, 0x128
/* 801E1A20 001DE980  4B EC 8C F9 */	bl "__ct__32TCastToPtr<18CScriptDistanceFog>FP7CEntity"
/* 801E1A24 001DE984  80 03 00 04 */	lwz r0, 4(r3)
/* 801E1A28 001DE988  28 00 00 00 */	cmplwi r0, 0
/* 801E1A2C 001DE98C  41 82 01 38 */	beq lbl_801E1B64
/* 801E1A30 001DE990  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E1A34 001DE994  B0 1F 06 4C */	sth r0, 0x64c(r31)
/* 801E1A38 001DE998  48 00 01 2C */	b lbl_801E1B64
lbl_801E1A3C:
/* 801E1A3C 001DE99C  2C 00 00 09 */	cmpwi r0, 9
/* 801E1A40 001DE9A0  40 82 00 A4 */	bne lbl_801E1AE4
/* 801E1A44 001DE9A4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801E1A48 001DE9A8  7C 00 20 40 */	cmplw r0, r4
/* 801E1A4C 001DE9AC  41 82 01 18 */	beq lbl_801E1B64
/* 801E1A50 001DE9B0  B0 61 00 78 */	sth r3, 0x78(r1)
/* 801E1A54 001DE9B4  7F C3 F3 78 */	mr r3, r30
/* 801E1A58 001DE9B8  38 81 00 78 */	addi r4, r1, 0x78
/* 801E1A5C 001DE9BC  4B E6 AB 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1A60 001DE9C0  7C 64 1B 78 */	mr r4, r3
/* 801E1A64 001DE9C4  38 61 01 50 */	addi r3, r1, 0x150
/* 801E1A68 001DE9C8  4B EC 4A E5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801E1A6C 001DE9CC  82 43 00 04 */	lwz r18, 4(r3)
/* 801E1A70 001DE9D0  28 12 00 00 */	cmplwi r18, 0
/* 801E1A74 001DE9D4  41 82 00 F0 */	beq lbl_801E1B64
/* 801E1A78 001DE9D8  80 1F 08 F8 */	lwz r0, 0x8f8(r31)
/* 801E1A7C 001DE9DC  80 BF 08 FC */	lwz r5, 0x8fc(r31)
/* 801E1A80 001DE9E0  7C 00 28 00 */	cmpw r0, r5
/* 801E1A84 001DE9E4  41 80 00 1C */	blt lbl_801E1AA0
/* 801E1A88 001DE9E8  2C 05 00 00 */	cmpwi r5, 0
/* 801E1A8C 001DE9EC  38 7F 08 F4 */	addi r3, r31, 0x8f4
/* 801E1A90 001DE9F0  38 80 00 04 */	li r4, 4
/* 801E1A94 001DE9F4  41 82 00 08 */	beq lbl_801E1A9C
/* 801E1A98 001DE9F8  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E1A9C:
/* 801E1A9C 001DE9FC  4B E2 A9 6D */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801E1AA0:
/* 801E1AA0 001DEA00  80 1F 08 F8 */	lwz r0, 0x8f8(r31)
/* 801E1AA4 001DEA04  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801E1AA8 001DEA08  54 00 08 3C */	slwi r0, r0, 1
/* 801E1AAC 001DEA0C  7C 63 02 15 */	add. r3, r3, r0
/* 801E1AB0 001DEA10  41 82 00 0C */	beq lbl_801E1ABC
/* 801E1AB4 001DEA14  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E1AB8 001DEA18  B0 03 00 00 */	sth r0, 0(r3)
lbl_801E1ABC:
/* 801E1ABC 001DEA1C  80 BF 08 F8 */	lwz r5, 0x8f8(r31)
/* 801E1AC0 001DEA20  7E 43 93 78 */	mr r3, r18
/* 801E1AC4 001DEA24  38 80 00 00 */	li r4, 0
/* 801E1AC8 001DEA28  38 05 00 01 */	addi r0, r5, 1
/* 801E1ACC 001DEA2C  90 1F 08 F8 */	stw r0, 0x8f8(r31)
/* 801E1AD0 001DEA30  81 92 00 00 */	lwz r12, 0(r18)
/* 801E1AD4 001DEA34  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E1AD8 001DEA38  7D 89 03 A6 */	mtctr r12
/* 801E1ADC 001DEA3C  4E 80 04 21 */	bctrl
/* 801E1AE0 001DEA40  48 00 00 84 */	b lbl_801E1B64
lbl_801E1AE4:
/* 801E1AE4 001DEA44  2C 00 00 0E */	cmpwi r0, 0xe
/* 801E1AE8 001DEA48  40 82 00 7C */	bne lbl_801E1B64
/* 801E1AEC 001DEA4C  B0 61 00 74 */	sth r3, 0x74(r1)
/* 801E1AF0 001DEA50  7F C3 F3 78 */	mr r3, r30
/* 801E1AF4 001DEA54  38 81 00 74 */	addi r4, r1, 0x74
/* 801E1AF8 001DEA58  4B E6 AA AD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801E1AFC 001DEA5C  7C 64 1B 78 */	mr r4, r3
/* 801E1B00 001DEA60  38 61 01 20 */	addi r3, r1, 0x120
/* 801E1B04 001DEA64  4B EC 57 5D */	bl "__ct__26TCastToPtr<12CScriptTimer>FP7CEntity"
/* 801E1B08 001DEA68  80 03 00 04 */	lwz r0, 4(r3)
/* 801E1B0C 001DEA6C  28 00 00 00 */	cmplwi r0, 0
/* 801E1B10 001DEA70  41 82 00 54 */	beq lbl_801E1B64
/* 801E1B14 001DEA74  80 1F 07 AC */	lwz r0, 0x7ac(r31)
/* 801E1B18 001DEA78  80 BF 07 B0 */	lwz r5, 0x7b0(r31)
/* 801E1B1C 001DEA7C  7C 00 28 00 */	cmpw r0, r5
/* 801E1B20 001DEA80  41 80 00 1C */	blt lbl_801E1B3C
/* 801E1B24 001DEA84  2C 05 00 00 */	cmpwi r5, 0
/* 801E1B28 001DEA88  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 801E1B2C 001DEA8C  38 80 00 04 */	li r4, 4
/* 801E1B30 001DEA90  41 82 00 08 */	beq lbl_801E1B38
/* 801E1B34 001DEA94  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E1B38:
/* 801E1B38 001DEA98  4B E2 A8 D1 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
lbl_801E1B3C:
/* 801E1B3C 001DEA9C  80 1F 07 AC */	lwz r0, 0x7ac(r31)
/* 801E1B40 001DEAA0  80 7F 07 B4 */	lwz r3, 0x7b4(r31)
/* 801E1B44 001DEAA4  54 00 08 3C */	slwi r0, r0, 1
/* 801E1B48 001DEAA8  7C 63 02 15 */	add. r3, r3, r0
/* 801E1B4C 001DEAAC  41 82 00 0C */	beq lbl_801E1B58
/* 801E1B50 001DEAB0  A0 01 00 C4 */	lhz r0, 0xc4(r1)
/* 801E1B54 001DEAB4  B0 03 00 00 */	sth r0, 0(r3)
lbl_801E1B58:
/* 801E1B58 001DEAB8  80 7F 07 AC */	lwz r3, 0x7ac(r31)
/* 801E1B5C 001DEABC  38 03 00 01 */	addi r0, r3, 1
/* 801E1B60 001DEAC0  90 1F 07 AC */	stw r0, 0x7ac(r31)
lbl_801E1B64:
/* 801E1B64 001DEAC4  3B 9C 00 01 */	addi r28, r28, 1
/* 801E1B68 001DEAC8  3B 5A 00 0C */	addi r26, r26, 0xc
lbl_801E1B6C:
/* 801E1B6C 001DEACC  7C 1C D8 40 */	cmplw r28, r27
/* 801E1B70 001DEAD0  41 80 FC B8 */	blt lbl_801E1828
/* 801E1B74 001DEAD4  80 BF 00 04 */	lwz r5, 4(r31)
/* 801E1B78 001DEAD8  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 801E1B7C 001DEADC  54 A3 18 38 */	slwi r3, r5, 3
/* 801E1B80 001DEAE0  90 A1 01 0C */	stw r5, 0x10c(r1)
/* 801E1B84 001DEAE4  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801E1B88 001DEAE8  38 03 00 04 */	addi r0, r3, 4
/* 801E1B8C 001DEAEC  90 A1 00 E0 */	stw r5, 0xe0(r1)
/* 801E1B90 001DEAF0  7C 64 00 2E */	lwzx r3, r4, r0
/* 801E1B94 001DEAF4  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801E1B98 001DEAF8  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 801E1B9C 001DEAFC  90 1F 07 F0 */	stw r0, 0x7f0(r31)
/* 801E1BA0 001DEB00  48 00 06 30 */	b lbl_801E21D0
.global lbl_801E1BA4
lbl_801E1BA4:
/* 801E1BA4 001DEB04  A0 14 00 00 */	lhz r0, 0(r20)
/* 801E1BA8 001DEB08  7F C3 F3 78 */	mr r3, r30
/* 801E1BAC 001DEB0C  38 81 00 70 */	addi r4, r1, 0x70
/* 801E1BB0 001DEB10  B0 01 00 70 */	sth r0, 0x70(r1)
/* 801E1BB4 001DEB14  4B E6 A9 C1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1BB8 001DEB18  7C 60 1B 78 */	mr r0, r3
/* 801E1BBC 001DEB1C  38 61 01 48 */	addi r3, r1, 0x148
/* 801E1BC0 001DEB20  7C 04 03 78 */	mr r4, r0
/* 801E1BC4 001DEB24  4B EC D7 89 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801E1BC8 001DEB28  80 83 00 04 */	lwz r4, 4(r3)
/* 801E1BCC 001DEB2C  28 04 00 00 */	cmplwi r4, 0
/* 801E1BD0 001DEB30  41 82 06 00 */	beq lbl_801E21D0
/* 801E1BD4 001DEB34  38 61 00 6C */	addi r3, r1, 0x6c
/* 801E1BD8 001DEB38  4B FC 6F B5 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801E1BDC 001DEB3C  A0 01 00 6C */	lhz r0, 0x6c(r1)
/* 801E1BE0 001DEB40  7F C3 F3 78 */	mr r3, r30
/* 801E1BE4 001DEB44  38 81 00 68 */	addi r4, r1, 0x68
/* 801E1BE8 001DEB48  B0 01 00 C0 */	sth r0, 0xc0(r1)
/* 801E1BEC 001DEB4C  B0 01 00 68 */	sth r0, 0x68(r1)
/* 801E1BF0 001DEB50  4B E6 A9 85 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1BF4 001DEB54  7C 60 1B 78 */	mr r0, r3
/* 801E1BF8 001DEB58  38 61 01 40 */	addi r3, r1, 0x140
/* 801E1BFC 001DEB5C  7C 04 03 78 */	mr r4, r0
/* 801E1C00 001DEB60  4B EC A7 95 */	bl "__ct__20TCastToPtr<7CPlayer>FP7CEntity"
/* 801E1C04 001DEB64  82 63 00 04 */	lwz r19, 4(r3)
/* 801E1C08 001DEB68  28 13 00 00 */	cmplwi r19, 0
/* 801E1C0C 001DEB6C  41 82 02 10 */	beq lbl_801E1E1C
/* 801E1C10 001DEB70  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 801E1C14 001DEB74  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E1C18 001DEB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E1C1C 001DEB7C  4C 40 13 82 */	cror 2, 0, 2
/* 801E1C20 001DEB80  40 82 05 B0 */	bne lbl_801E21D0
/* 801E1C24 001DEB84  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 801E1C28 001DEB88  C4 43 67 24 */	lfsu f2, lbl_805A6724@l(r3)
/* 801E1C2C 001DEB8C  C3 E2 AC D8 */	lfs f31, lbl_805AC9F8@sda21(r2)
/* 801E1C30 001DEB90  C0 23 00 04 */	lfs f1, 4(r3)
/* 801E1C34 001DEB94  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E1C38 001DEB98  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 801E1C3C 001DEB9C  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 801E1C40 001DEBA0  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 801E1C44 001DEBA4  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 801E1C48 001DEBA8  2C 00 00 01 */	cmpwi r0, 1
/* 801E1C4C 001DEBAC  40 82 00 60 */	bne lbl_801E1CAC
/* 801E1C50 001DEBB0  C3 E2 AC E0 */	lfs f31, lbl_805ACA00@sda21(r2)
/* 801E1C54 001DEBB4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801E1C58 001DEBB8  48 13 08 C9 */	bl Next__9CRandom16Fv
/* 801E1C5C 001DEBBC  54 64 0F FE */	srwi r4, r3, 0x1f
/* 801E1C60 001DEBC0  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 801E1C64 001DEBC4  7C 00 22 78 */	xor r0, r0, r4
/* 801E1C68 001DEBC8  7C 04 00 51 */	subf. r0, r4, r0
/* 801E1C6C 001DEBCC  41 82 00 24 */	beq lbl_801E1C90
/* 801E1C70 001DEBD0  3C 60 80 5A */	lis r3, lbl_805A670C@ha
/* 801E1C74 001DEBD4  C4 43 67 0C */	lfsu f2, lbl_805A670C@l(r3)
/* 801E1C78 001DEBD8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801E1C7C 001DEBDC  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E1C80 001DEBE0  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 801E1C84 001DEBE4  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 801E1C88 001DEBE8  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 801E1C8C 001DEBEC  48 00 00 20 */	b lbl_801E1CAC
lbl_801E1C90:
/* 801E1C90 001DEBF0  3C 60 80 5A */	lis r3, lbl_805A6718@ha
/* 801E1C94 001DEBF4  C4 43 67 18 */	lfsu f2, lbl_805A6718@l(r3)
/* 801E1C98 001DEBF8  C0 23 00 04 */	lfs f1, 4(r3)
/* 801E1C9C 001DEBFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 801E1CA0 001DEC00  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 801E1CA4 001DEC04  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 801E1CA8 001DEC08  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
lbl_801E1CAC:
/* 801E1CAC 001DEC0C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801E1CB0 001DEC10  4B E3 40 4D */	bl GetFrozenState__7CPlayerCFv
/* 801E1CB4 001DEC14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E1CB8 001DEC18  41 82 00 10 */	beq lbl_801E1CC8
/* 801E1CBC 001DEC1C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801E1CC0 001DEC20  7F C4 F3 78 */	mr r4, r30
/* 801E1CC4 001DEC24  4B E3 3D 69 */	bl UnFreeze__7CPlayerFR13CStateManager
lbl_801E1CC8:
/* 801E1CC8 001DEC28  38 61 02 6C */	addi r3, r1, 0x26c
/* 801E1CCC 001DEC2C  38 9F 00 34 */	addi r4, r31, 0x34
/* 801E1CD0 001DEC30  48 13 14 25 */	bl BuildMatrix3f__12CTransform4fCFv
/* 801E1CD4 001DEC34  38 61 01 84 */	addi r3, r1, 0x184
/* 801E1CD8 001DEC38  38 81 02 6C */	addi r4, r1, 0x26c
/* 801E1CDC 001DEC3C  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 801E1CE0 001DEC40  48 12 E5 B5 */	bl __ml__9CMatrix3fCFRC9CVector3f
/* 801E1CE4 001DEC44  C0 41 01 84 */	lfs f2, 0x184(r1)
/* 801E1CE8 001DEC48  7F E4 FB 78 */	mr r4, r31
/* 801E1CEC 001DEC4C  C0 21 01 88 */	lfs f1, 0x188(r1)
/* 801E1CF0 001DEC50  38 61 02 1C */	addi r3, r1, 0x21c
/* 801E1CF4 001DEC54  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 801E1CF8 001DEC58  D0 41 01 A8 */	stfs f2, 0x1a8(r1)
/* 801E1CFC 001DEC5C  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 801E1D00 001DEC60  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 801E1D04 001DEC64  81 9F 00 00 */	lwz r12, 0(r31)
/* 801E1D08 001DEC68  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801E1D0C 001DEC6C  7D 89 03 A6 */	mtctr r12
/* 801E1D10 001DEC70  4E 80 04 21 */	bctrl
/* 801E1D14 001DEC74  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 801E1D18 001DEC78  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E1D1C 001DEC7C  80 81 02 1C */	lwz r4, 0x21c(r1)
/* 801E1D20 001DEC80  3A 83 66 A0 */	addi r20, r3, skZero3f@l
/* 801E1D24 001DEC84  88 61 02 20 */	lbz r3, 0x220(r1)
/* 801E1D28 001DEC88  2C 00 00 01 */	cmpwi r0, 1
/* 801E1D2C 001DEC8C  C0 61 02 24 */	lfs f3, 0x224(r1)
/* 801E1D30 001DEC90  C0 41 02 28 */	lfs f2, 0x228(r1)
/* 801E1D34 001DEC94  C0 21 02 2C */	lfs f1, 0x22c(r1)
/* 801E1D38 001DEC98  C0 01 02 30 */	lfs f0, 0x230(r1)
/* 801E1D3C 001DEC9C  88 01 02 34 */	lbz r0, 0x234(r1)
/* 801E1D40 001DECA0  90 81 02 50 */	stw r4, 0x250(r1)
/* 801E1D44 001DECA4  98 61 02 54 */	stb r3, 0x254(r1)
/* 801E1D48 001DECA8  D0 61 02 58 */	stfs f3, 0x258(r1)
/* 801E1D4C 001DECAC  D0 41 02 5C */	stfs f2, 0x25c(r1)
/* 801E1D50 001DECB0  D0 21 02 60 */	stfs f1, 0x260(r1)
/* 801E1D54 001DECB4  D0 01 02 64 */	stfs f0, 0x264(r1)
/* 801E1D58 001DECB8  98 01 02 68 */	stb r0, 0x268(r1)
/* 801E1D5C 001DECBC  40 82 00 08 */	bne lbl_801E1D64
/* 801E1D60 001DECC0  3A 81 01 A8 */	addi r20, r1, 0x1a8
lbl_801E1D64:
/* 801E1D64 001DECC4  80 AD 92 0C */	lwz r5, lbl_805A7DCC@sda21(r13)
/* 801E1D68 001DECC8  38 60 00 00 */	li r3, 0
/* 801E1D6C 001DECCC  38 80 00 01 */	li r4, 1
/* 801E1D70 001DECD0  48 1A 81 85 */	bl __shl2i
/* 801E1D74 001DECD4  C0 01 02 58 */	lfs f0, 0x258(r1)
/* 801E1D78 001DECD8  3A 40 00 00 */	li r18, 0
/* 801E1D7C 001DECDC  C0 21 02 64 */	lfs f1, 0x264(r1)
/* 801E1D80 001DECE0  39 80 00 03 */	li r12, 3
/* 801E1D84 001DECE4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801E1D88 001DECE8  C0 41 02 60 */	lfs f2, 0x260(r1)
/* 801E1D8C 001DECEC  81 61 02 50 */	lwz r11, 0x250(r1)
/* 801E1D90 001DECF0  7E 89 A3 78 */	mr r9, r20
/* 801E1D94 001DECF4  89 41 02 54 */	lbz r10, 0x254(r1)
/* 801E1D98 001DECF8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801E1D9C 001DECFC  88 01 02 18 */	lbz r0, 0x218(r1)
/* 801E1DA0 001DED00  52 40 3E 30 */	rlwimi r0, r18, 7, 0x18, 0x18
/* 801E1DA4 001DED04  90 81 01 EC */	stw r4, 0x1ec(r1)
/* 801E1DA8 001DED08  38 81 00 64 */	addi r4, r1, 0x64
/* 801E1DAC 001DED0C  38 C1 00 54 */	addi r6, r1, 0x54
/* 801E1DB0 001DED10  38 E1 02 00 */	addi r7, r1, 0x200
/* 801E1DB4 001DED14  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 801E1DB8 001DED18  7F C3 F3 78 */	mr r3, r30
/* 801E1DBC 001DED1C  39 01 01 E8 */	addi r8, r1, 0x1e8
/* 801E1DC0 001DED20  92 41 01 F4 */	stw r18, 0x1f4(r1)
/* 801E1DC4 001DED24  92 41 01 F0 */	stw r18, 0x1f0(r1)
/* 801E1DC8 001DED28  91 81 01 F8 */	stw r12, 0x1f8(r1)
/* 801E1DCC 001DED2C  91 61 02 00 */	stw r11, 0x200(r1)
/* 801E1DD0 001DED30  99 41 02 04 */	stb r10, 0x204(r1)
/* 801E1DD4 001DED34  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 801E1DD8 001DED38  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 801E1DDC 001DED3C  D0 41 02 10 */	stfs f2, 0x210(r1)
/* 801E1DE0 001DED40  D0 21 02 14 */	stfs f1, 0x214(r1)
/* 801E1DE4 001DED44  98 01 02 18 */	stb r0, 0x218(r1)
/* 801E1DE8 001DED48  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801E1DEC 001DED4C  B0 01 00 54 */	sth r0, 0x54(r1)
/* 801E1DF0 001DED50  A1 53 00 08 */	lhz r10, 8(r19)
/* 801E1DF4 001DED54  B0 01 00 50 */	sth r0, 0x50(r1)
/* 801E1DF8 001DED58  B1 41 00 5C */	sth r10, 0x5c(r1)
/* 801E1DFC 001DED5C  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801E1E00 001DED60  B1 41 00 58 */	sth r10, 0x58(r1)
/* 801E1E04 001DED64  B0 01 00 60 */	sth r0, 0x60(r1)
/* 801E1E08 001DED68  B0 01 00 64 */	sth r0, 0x64(r1)
/* 801E1E0C 001DED6C  4B E6 82 95 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801E1E10 001DED70  C0 1F 04 24 */	lfs f0, 0x424(r31)
/* 801E1E14 001DED74  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 801E1E18 001DED78  48 00 03 B8 */	b lbl_801E21D0
lbl_801E1E1C:
/* 801E1E1C 001DED7C  A0 01 00 C0 */	lhz r0, 0xc0(r1)
/* 801E1E20 001DED80  7F C3 F3 78 */	mr r3, r30
/* 801E1E24 001DED84  38 81 00 4C */	addi r4, r1, 0x4c
/* 801E1E28 001DED88  B0 01 00 4C */	sth r0, 0x4c(r1)
/* 801E1E2C 001DED8C  4B E6 A7 79 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801E1E30 001DED90  7C 64 1B 78 */	mr r4, r3
/* 801E1E34 001DED94  38 61 01 18 */	addi r3, r1, 0x118
/* 801E1E38 001DED98  4B EC DC 05 */	bl "__ct__18TCastToPtr<5CBomb>FP7CEntity"
/* 801E1E3C 001DED9C  80 03 00 04 */	lwz r0, 4(r3)
/* 801E1E40 001DEDA0  28 00 00 00 */	cmplwi r0, 0
/* 801E1E44 001DEDA4  41 82 03 8C */	beq lbl_801E21D0
/* 801E1E48 001DEDA8  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 801E1E4C 001DEDAC  2C 00 00 01 */	cmpwi r0, 1
/* 801E1E50 001DEDB0  40 82 03 80 */	bne lbl_801E21D0
/* 801E1E54 001DEDB4  88 1F 09 3C */	lbz r0, 0x93c(r31)
/* 801E1E58 001DEDB8  28 00 00 00 */	cmplwi r0, 0
/* 801E1E5C 001DEDBC  41 82 03 74 */	beq lbl_801E21D0
/* 801E1E60 001DEDC0  80 BF 06 48 */	lwz r5, 0x648(r31)
/* 801E1E64 001DEDC4  7F E3 FB 78 */	mr r3, r31
/* 801E1E68 001DEDC8  7F C4 F3 78 */	mr r4, r30
/* 801E1E6C 001DEDCC  4B FF 8F C1 */	bl sub_801dae2c
/* 801E1E70 001DEDD0  48 00 03 60 */	b lbl_801E21D0
.global lbl_801E1E74
lbl_801E1E74:
/* 801E1E74 001DEDD4  A0 14 00 00 */	lhz r0, 0(r20)
/* 801E1E78 001DEDD8  7F C3 F3 78 */	mr r3, r30
/* 801E1E7C 001DEDDC  38 81 00 48 */	addi r4, r1, 0x48
/* 801E1E80 001DEDE0  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801E1E84 001DEDE4  4B E6 A6 F1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1E88 001DEDE8  7C 64 1B 78 */	mr r4, r3
/* 801E1E8C 001DEDEC  38 61 01 38 */	addi r3, r1, 0x138
/* 801E1E90 001DEDF0  4B EC D4 BD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801E1E94 001DEDF4  80 83 00 04 */	lwz r4, 4(r3)
/* 801E1E98 001DEDF8  28 04 00 00 */	cmplwi r4, 0
/* 801E1E9C 001DEDFC  41 82 03 34 */	beq lbl_801E21D0
/* 801E1EA0 001DEE00  38 61 00 44 */	addi r3, r1, 0x44
/* 801E1EA4 001DEE04  4B FC 6C E9 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801E1EA8 001DEE08  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 801E1EAC 001DEE0C  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 801E1EB0 001DEE10  B0 01 00 BC */	sth r0, 0xbc(r1)
/* 801E1EB4 001DEE14  4B FC 53 95 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801E1EB8 001DEE18  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E1EBC 001DEE1C  7C 72 1B 78 */	mr r18, r3
/* 801E1EC0 001DEE20  3A 60 00 00 */	li r19, 0
/* 801E1EC4 001DEE24  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 801E1EC8 001DEE28  48 00 00 38 */	b lbl_801E1F00
lbl_801E1ECC:
/* 801E1ECC 001DEE2C  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 801E1ED0 001DEE30  7E 64 9B 78 */	mr r4, r19
/* 801E1ED4 001DEE34  4B FC 53 65 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801E1ED8 001DEE38  A0 94 00 00 */	lhz r4, 0(r20)
/* 801E1EDC 001DEE3C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 801E1EE0 001DEE40  7C 04 00 40 */	cmplw r4, r0
/* 801E1EE4 001DEE44  40 82 00 18 */	bne lbl_801E1EFC
/* 801E1EE8 001DEE48  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 801E1EEC 001DEE4C  56 60 08 3C */	slwi r0, r19, 1
/* 801E1EF0 001DEE50  7C 03 02 2E */	lhzx r0, r3, r0
/* 801E1EF4 001DEE54  B0 01 00 B8 */	sth r0, 0xb8(r1)
/* 801E1EF8 001DEE58  48 00 00 10 */	b lbl_801E1F08
lbl_801E1EFC:
/* 801E1EFC 001DEE5C  3A 73 00 01 */	addi r19, r19, 1
lbl_801E1F00:
/* 801E1F00 001DEE60  7C 13 90 40 */	cmplw r19, r18
/* 801E1F04 001DEE64  41 80 FF C8 */	blt lbl_801E1ECC
lbl_801E1F08:
/* 801E1F08 001DEE68  A0 61 00 B8 */	lhz r3, 0xb8(r1)
/* 801E1F0C 001DEE6C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E1F10 001DEE70  7C 03 00 40 */	cmplw r3, r0
/* 801E1F14 001DEE74  41 82 02 BC */	beq lbl_801E21D0
/* 801E1F18 001DEE78  A0 01 00 B8 */	lhz r0, 0xb8(r1)
/* 801E1F1C 001DEE7C  7F C3 F3 78 */	mr r3, r30
/* 801E1F20 001DEE80  38 81 00 40 */	addi r4, r1, 0x40
/* 801E1F24 001DEE84  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801E1F28 001DEE88  4B E6 A6 4D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E1F2C 001DEE8C  7C 73 1B 79 */	or. r19, r3, r3
/* 801E1F30 001DEE90  41 82 02 A0 */	beq lbl_801E21D0
/* 801E1F34 001DEE94  A0 01 00 BC */	lhz r0, 0xbc(r1)
/* 801E1F38 001DEE98  7F C3 F3 78 */	mr r3, r30
/* 801E1F3C 001DEE9C  38 81 00 3C */	addi r4, r1, 0x3c
/* 801E1F40 001DEEA0  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 801E1F44 001DEEA4  4B E6 A6 61 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801E1F48 001DEEA8  7C 64 1B 78 */	mr r4, r3
/* 801E1F4C 001DEEAC  38 61 01 10 */	addi r3, r1, 0x110
/* 801E1F50 001DEEB0  4B EC B7 BD */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801E1F54 001DEEB4  82 83 00 04 */	lwz r20, 4(r3)
/* 801E1F58 001DEEB8  28 14 00 00 */	cmplwi r20, 0
/* 801E1F5C 001DEEBC  41 82 02 74 */	beq lbl_801E21D0
/* 801E1F60 001DEEC0  80 9F 04 50 */	lwz r4, 0x450(r31)
/* 801E1F64 001DEEC4  80 04 02 D0 */	lwz r0, 0x2d0(r4)
/* 801E1F68 001DEEC8  2C 00 00 18 */	cmpwi r0, 0x18
/* 801E1F6C 001DEECC  41 82 00 98 */	beq lbl_801E2004
/* 801E1F70 001DEED0  C0 33 03 24 */	lfs f1, 0x324(r19)
/* 801E1F74 001DEED4  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E1F78 001DEED8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E1F7C 001DEEDC  4C 40 13 82 */	cror 2, 0, 2
/* 801E1F80 001DEEE0  40 82 00 84 */	bne lbl_801E2004
/* 801E1F84 001DEEE4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801E1F88 001DEEE8  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801E1F8C 001DEEEC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801E1F90 001DEEF0  3C 60 80 3E */	lis r3, lbl_803E10C8@ha
/* 801E1F94 001DEEF4  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 801E1F98 001DEEF8  38 C3 10 C8 */	addi r6, r3, lbl_803E10C8@l
/* 801E1F9C 001DEEFC  38 60 00 1A */	li r3, 0x1a
/* 801E1FA0 001DEF00  38 A0 00 05 */	li r5, 5
/* 801E1FA4 001DEF04  38 00 00 00 */	li r0, 0
/* 801E1FA8 001DEF08  3A 44 00 04 */	addi r18, r4, 4
/* 801E1FAC 001DEF0C  90 61 01 D8 */	stw r3, 0x1d8(r1)
/* 801E1FB0 001DEF10  7E 43 93 78 */	mr r3, r18
/* 801E1FB4 001DEF14  38 80 00 1A */	li r4, 0x1a
/* 801E1FB8 001DEF18  90 C1 01 D4 */	stw r6, 0x1d4(r1)
/* 801E1FBC 001DEF1C  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 801E1FC0 001DEF20  90 A1 01 E0 */	stw r5, 0x1e0(r1)
/* 801E1FC4 001DEF24  98 01 01 E4 */	stb r0, 0x1e4(r1)
/* 801E1FC8 001DEF28  4B F4 F4 71 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801E1FCC 001DEF2C  80 01 01 D8 */	lwz r0, 0x1d8(r1)
/* 801E1FD0 001DEF30  3C 60 80 3E */	lis r3, lbl_803E10C8@ha
/* 801E1FD4 001DEF34  38 83 10 C8 */	addi r4, r3, lbl_803E10C8@l
/* 801E1FD8 001DEF38  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801E1FDC 001DEF3C  90 12 02 88 */	stw r0, 0x288(r18)
/* 801E1FE0 001DEF40  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801E1FE4 001DEF44  C0 01 01 DC */	lfs f0, 0x1dc(r1)
/* 801E1FE8 001DEF48  80 A1 01 E0 */	lwz r5, 0x1e0(r1)
/* 801E1FEC 001DEF4C  D0 12 02 8C */	stfs f0, 0x28c(r18)
/* 801E1FF0 001DEF50  88 61 01 E4 */	lbz r3, 0x1e4(r1)
/* 801E1FF4 001DEF54  90 B2 02 90 */	stw r5, 0x290(r18)
/* 801E1FF8 001DEF58  90 81 01 D4 */	stw r4, 0x1d4(r1)
/* 801E1FFC 001DEF5C  98 72 02 94 */	stb r3, 0x294(r18)
/* 801E2000 001DEF60  90 01 01 D4 */	stw r0, 0x1d4(r1)
lbl_801E2004:
/* 801E2004 001DEF64  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E2008 001DEF68  7E 63 9B 78 */	mr r3, r19
/* 801E200C 001DEF6C  38 81 01 78 */	addi r4, r1, 0x178
/* 801E2010 001DEF70  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 801E2014 001DEF74  D0 21 01 7C */	stfs f1, 0x17c(r1)
/* 801E2018 001DEF78  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 801E201C 001DEF7C  81 93 00 00 */	lwz r12, 0(r19)
/* 801E2020 001DEF80  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801E2024 001DEF84  7D 89 03 A6 */	mtctr r12
/* 801E2028 001DEF88  4E 80 04 21 */	bctrl
/* 801E202C 001DEF8C  C0 54 00 60 */	lfs f2, 0x60(r20)
/* 801E2030 001DEF90  C0 34 00 50 */	lfs f1, 0x50(r20)
/* 801E2034 001DEF94  C0 14 00 40 */	lfs f0, 0x40(r20)
/* 801E2038 001DEF98  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 801E203C 001DEF9C  D0 21 01 A0 */	stfs f1, 0x1a0(r1)
/* 801E2040 001DEFA0  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 801E2044 001DEFA4  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801E2048 001DEFA8  80 63 00 00 */	lwz r3, 0(r3)
/* 801E204C 001DEFAC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 801E2050 001DEFB0  2C 00 00 03 */	cmpwi r0, 3
/* 801E2054 001DEFB4  40 82 00 14 */	bne lbl_801E2068
/* 801E2058 001DEFB8  40 82 00 24 */	bne lbl_801E207C
/* 801E205C 001DEFBC  80 1F 07 C4 */	lwz r0, 0x7c4(r31)
/* 801E2060 001DEFC0  2C 00 00 03 */	cmpwi r0, 3
/* 801E2064 001DEFC4  41 82 00 18 */	beq lbl_801E207C
lbl_801E2068:
/* 801E2068 001DEFC8  80 DF 06 D0 */	lwz r6, 0x6d0(r31)
/* 801E206C 001DEFCC  7F E3 FB 78 */	mr r3, r31
/* 801E2070 001DEFD0  7F C4 F3 78 */	mr r4, r30
/* 801E2074 001DEFD4  38 A1 01 9C */	addi r5, r1, 0x19c
/* 801E2078 001DEFD8  4B FF A3 CD */	bl sub_801dc444
lbl_801E207C:
/* 801E207C 001DEFDC  88 13 03 35 */	lbz r0, 0x335(r19)
/* 801E2080 001DEFE0  28 00 00 00 */	cmplwi r0, 0
/* 801E2084 001DEFE4  41 82 00 48 */	beq lbl_801E20CC
/* 801E2088 001DEFE8  93 C1 00 08 */	stw r30, 8(r1)
/* 801E208C 001DEFEC  38 00 00 00 */	li r0, 0
/* 801E2090 001DEFF0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E2094 001DEFF4  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E2098 001DEFF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E209C 001DEFFC  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801E20A0 001DF000  C0 42 AC E8 */	lfs f2, lbl_805ACA08@sda21(r2)
/* 801E20A4 001DF004  7F E3 FB 78 */	mr r3, r31
/* 801E20A8 001DF008  C0 62 AC EC */	lfs f3, lbl_805ACA0C@sda21(r2)
/* 801E20AC 001DF00C  39 21 01 9C */	addi r9, r1, 0x19c
/* 801E20B0 001DF010  81 5E 08 CC */	lwz r10, 0x8cc(r30)
/* 801E20B4 001DF014  38 80 0A C0 */	li r4, 0xac0
/* 801E20B8 001DF018  38 A0 00 00 */	li r5, 0
/* 801E20BC 001DF01C  38 C0 00 14 */	li r6, 0x14
/* 801E20C0 001DF020  38 E0 00 7F */	li r7, 0x7f
/* 801E20C4 001DF024  4B E7 0E 6D */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
/* 801E20C8 001DF028  48 00 01 08 */	b lbl_801E21D0
lbl_801E20CC:
/* 801E20CC 001DF02C  93 C1 00 08 */	stw r30, 8(r1)
/* 801E20D0 001DF030  38 00 00 01 */	li r0, 1
/* 801E20D4 001DF034  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E20D8 001DF038  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E20DC 001DF03C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E20E0 001DF040  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801E20E4 001DF044  C0 42 AC E8 */	lfs f2, lbl_805ACA08@sda21(r2)
/* 801E20E8 001DF048  7F E3 FB 78 */	mr r3, r31
/* 801E20EC 001DF04C  80 9F 07 5C */	lwz r4, 0x75c(r31)
/* 801E20F0 001DF050  39 21 01 9C */	addi r9, r1, 0x19c
/* 801E20F4 001DF054  C0 62 AC EC */	lfs f3, lbl_805ACA0C@sda21(r2)
/* 801E20F8 001DF058  38 A0 00 00 */	li r5, 0
/* 801E20FC 001DF05C  81 5E 08 CC */	lwz r10, 0x8cc(r30)
/* 801E2100 001DF060  38 C0 00 14 */	li r6, 0x14
/* 801E2104 001DF064  38 E0 00 7F */	li r7, 0x7f
/* 801E2108 001DF068  4B E7 0E 29 */	bl ProcessSoundEvent__6CActorFififfUcUcRC9CVector3fRC9CVector3fiR13CStateManager
/* 801E210C 001DF06C  48 00 00 C4 */	b lbl_801E21D0
.global lbl_801E2110
lbl_801E2110:
/* 801E2110 001DF070  81 9F 00 00 */	lwz r12, 0(r31)
/* 801E2114 001DF074  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801E2118 001DF078  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 801E211C 001DF07C  7F E3 FB 78 */	mr r3, r31
/* 801E2120 001DF080  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 801E2124 001DF084  7F C4 F3 78 */	mr r4, r30
/* 801E2128 001DF088  38 C0 00 14 */	li r6, 0x14
/* 801E212C 001DF08C  7D 89 03 A6 */	mtctr r12
/* 801E2130 001DF090  4E 80 04 21 */	bctrl
/* 801E2134 001DF094  48 00 00 9C */	b lbl_801E21D0
.global lbl_801E2138
lbl_801E2138:
/* 801E2138 001DF098  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 801E213C 001DF09C  82 9F 06 48 */	lwz r20, 0x648(r31)
/* 801E2140 001DF0A0  3A 63 FF FF */	addi r19, r3, -1
/* 801E2144 001DF0A4  56 92 08 3C */	slwi r18, r20, 1
/* 801E2148 001DF0A8  48 00 00 50 */	b lbl_801E2198
lbl_801E214C:
/* 801E214C 001DF0AC  80 BF 06 1C */	lwz r5, 0x61c(r31)
/* 801E2150 001DF0B0  7F C3 F3 78 */	mr r3, r30
/* 801E2154 001DF0B4  38 81 00 38 */	addi r4, r1, 0x38
/* 801E2158 001DF0B8  7C 05 92 2E */	lhzx r0, r5, r18
/* 801E215C 001DF0BC  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 801E2160 001DF0C0  B0 01 00 38 */	sth r0, 0x38(r1)
/* 801E2164 001DF0C4  4B E6 A4 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801E2168 001DF0C8  28 03 00 00 */	cmplwi r3, 0
/* 801E216C 001DF0CC  41 82 00 18 */	beq lbl_801E2184
/* 801E2170 001DF0D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E2174 001DF0D4  38 80 00 00 */	li r4, 0
/* 801E2178 001DF0D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E217C 001DF0DC  7D 89 03 A6 */	mtctr r12
/* 801E2180 001DF0E0  4E 80 04 21 */	bctrl
lbl_801E2184:
/* 801E2184 001DF0E4  80 7F 06 48 */	lwz r3, 0x648(r31)
/* 801E2188 001DF0E8  3A 94 00 01 */	addi r20, r20, 1
/* 801E218C 001DF0EC  3A 52 00 02 */	addi r18, r18, 2
/* 801E2190 001DF0F0  38 03 00 01 */	addi r0, r3, 1
/* 801E2194 001DF0F4  90 1F 06 48 */	stw r0, 0x648(r31)
lbl_801E2198:
/* 801E2198 001DF0F8  7C 14 98 40 */	cmplw r20, r19
/* 801E219C 001DF0FC  41 80 FF B0 */	blt lbl_801E214C
/* 801E21A0 001DF100  48 00 00 30 */	b lbl_801E21D0
.global lbl_801E21A4
lbl_801E21A4:
/* 801E21A4 001DF104  38 00 00 01 */	li r0, 1
/* 801E21A8 001DF108  38 80 00 00 */	li r4, 0
/* 801E21AC 001DF10C  98 1F 09 5C */	stb r0, 0x95c(r31)
/* 801E21B0 001DF110  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801E21B4 001DF114  4B F5 89 F1 */	bl SetFallState__15CBodyControllerFQ23pas10EFallState
/* 801E21B8 001DF118  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801E21BC 001DF11C  38 80 00 05 */	li r4, 5
/* 801E21C0 001DF120  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801E21C4 001DF124  4B F5 1F 19 */	bl SetState__14CBodyStateInfoFQ23pas15EAnimationState
/* 801E21C8 001DF128  38 00 00 00 */	li r0, 0
/* 801E21CC 001DF12C  98 1F 09 3D */	stb r0, 0x93d(r31)
.global lbl_801E21D0
lbl_801E21D0:
/* 801E21D0 001DF130  E3 E1 04 58 */	psq_l f31, 1112(r1), 0, qr0
/* 801E21D4 001DF134  CB E1 04 50 */	lfd f31, 0x450(r1)
/* 801E21D8 001DF138  BA 41 04 18 */	lmw r18, 0x418(r1)
/* 801E21DC 001DF13C  80 01 04 64 */	lwz r0, 0x464(r1)
/* 801E21E0 001DF140  7C 08 03 A6 */	mtlr r0
/* 801E21E4 001DF144  38 21 04 60 */	addi r1, r1, 0x460
/* 801E21E8 001DF148  4E 80 00 20 */	blr

.global Accept__8CThardusFR8IVisitor
Accept__8CThardusFR8IVisitor:
/* 801E21EC 001DF14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E21F0 001DF150  7C 08 02 A6 */	mflr r0
/* 801E21F4 001DF154  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E21F8 001DF158  7C 60 1B 78 */	mr r0, r3
/* 801E21FC 001DF15C  7C 83 23 78 */	mr r3, r4
/* 801E2200 001DF160  81 84 00 00 */	lwz r12, 0(r4)
/* 801E2204 001DF164  7C 04 03 78 */	mr r4, r0
/* 801E2208 001DF168  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801E220C 001DF16C  7D 89 03 A6 */	mtctr r12
/* 801E2210 001DF170  4E 80 04 21 */	bctrl
/* 801E2214 001DF174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2218 001DF178  7C 08 03 A6 */	mtlr r0
/* 801E221C 001DF17C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2220 001DF180  4E 80 00 20 */	blr

.global "__ct__8CThardusF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoRCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>RCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>UiUiUifffffff"
"__ct__8CThardusF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoRCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>RCQ24rstl47vector<10CModelData,Q24rstl17rmemory_allocator>UiUiUifffffff":
/* 801E2224 001DF184  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 801E2228 001DF188  7C 08 02 A6 */	mflr r0
/* 801E222C 001DF18C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 801E2230 001DF190  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 801E2234 001DF194  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 801E2238 001DF198  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 801E223C 001DF19C  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 801E2240 001DF1A0  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 801E2244 001DF1A4  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 801E2248 001DF1A8  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 801E224C 001DF1AC  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 801E2250 001DF1B0  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 801E2254 001DF1B4  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 801E2258 001DF1B8  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 801E225C 001DF1BC  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 801E2260 001DF1C0  BD C1 01 08 */	stmw r14, 0x108(r1)
/* 801E2264 001DF1C4  A0 04 00 00 */	lhz r0, 0(r4)
/* 801E2268 001DF1C8  7D 50 53 78 */	mr r16, r10
/* 801E226C 001DF1CC  7C CB 33 78 */	mr r11, r6
/* 801E2270 001DF1D0  7D 0A 43 78 */	mr r10, r8
/* 801E2274 001DF1D4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801E2278 001DF1D8  38 C0 00 00 */	li r6, 0
/* 801E227C 001DF1DC  38 00 00 01 */	li r0, 1
/* 801E2280 001DF1E0  FF 40 08 90 */	fmr f26, f1
/* 801E2284 001DF1E4  92 01 00 08 */	stw r16, 8(r1)
/* 801E2288 001DF1E8  38 80 00 02 */	li r4, 2
/* 801E228C 001DF1EC  FF 60 10 90 */	fmr f27, f2
/* 801E2290 001DF1F0  82 21 01 B8 */	lwz r17, 0x1b8(r1)
/* 801E2294 001DF1F4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801E2298 001DF1F8  7C A6 2B 78 */	mr r6, r5
/* 801E229C 001DF1FC  FF 80 18 90 */	fmr f28, f3
/* 801E22A0 001DF200  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E22A4 001DF204  FF A0 20 90 */	fmr f29, f4
/* 801E22A8 001DF208  82 41 01 BC */	lwz r18, 0x1bc(r1)
/* 801E22AC 001DF20C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E22B0 001DF210  FF C0 28 90 */	fmr f30, f5
/* 801E22B4 001DF214  FF E0 30 90 */	fmr f31, f6
/* 801E22B8 001DF218  82 61 01 C8 */	lwz r19, 0x1c8(r1)
/* 801E22BC 001DF21C  91 21 00 18 */	stw r9, 0x18(r1)
/* 801E22C0 001DF220  7C E9 3B 78 */	mr r9, r7
/* 801E22C4 001DF224  82 81 01 CC */	lwz r20, 0x1cc(r1)
/* 801E22C8 001DF228  7C 6F 1B 78 */	mr r15, r3
/* 801E22CC 001DF22C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801E22D0 001DF230  7D 68 5B 78 */	mr r8, r11
/* 801E22D4 001DF234  82 A1 01 D0 */	lwz r21, 0x1d0(r1)
/* 801E22D8 001DF238  38 A1 00 20 */	addi r5, r1, 0x20
/* 801E22DC 001DF23C  82 C1 01 D4 */	lwz r22, 0x1d4(r1)
/* 801E22E0 001DF240  38 80 00 24 */	li r4, 0x24
/* 801E22E4 001DF244  82 E1 01 D8 */	lwz r23, 0x1d8(r1)
/* 801E22E8 001DF248  38 E0 00 00 */	li r7, 0
/* 801E22EC 001DF24C  83 01 01 DC */	lwz r24, 0x1dc(r1)
/* 801E22F0 001DF250  83 21 01 E0 */	lwz r25, 0x1e0(r1)
/* 801E22F4 001DF254  83 41 01 E4 */	lwz r26, 0x1e4(r1)
/* 801E22F8 001DF258  83 61 01 E8 */	lwz r27, 0x1e8(r1)
/* 801E22FC 001DF25C  83 81 01 EC */	lwz r28, 0x1ec(r1)
/* 801E2300 001DF260  83 A1 01 F0 */	lwz r29, 0x1f0(r1)
/* 801E2304 001DF264  83 C1 01 F4 */	lwz r30, 0x1f4(r1)
/* 801E2308 001DF268  83 E1 01 F8 */	lwz r31, 0x1f8(r1)
/* 801E230C 001DF26C  81 C1 01 FC */	lwz r14, 0x1fc(r1)
/* 801E2310 001DF270  4B E9 B1 41 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801E2314 001DF274  3C 60 80 3E */	lis r3, lbl_803E5CE0@ha
/* 801E2318 001DF278  38 A0 00 00 */	li r5, 0
/* 801E231C 001DF27C  38 63 5C E0 */	addi r3, r3, lbl_803E5CE0@l
/* 801E2320 001DF280  38 00 00 01 */	li r0, 1
/* 801E2324 001DF284  90 6F 00 00 */	stw r3, 0(r15)
/* 801E2328 001DF288  7E 24 8B 78 */	mr r4, r17
/* 801E232C 001DF28C  38 6F 05 CC */	addi r3, r15, 0x5cc
/* 801E2330 001DF290  A0 CD A3 8C */	lhz r6, kInvalidUniqueId@sda21(r13)
/* 801E2334 001DF294  B0 CF 05 6C */	sth r6, 0x56c(r15)
/* 801E2338 001DF298  90 AF 05 70 */	stw r5, 0x570(r15)
/* 801E233C 001DF29C  90 AF 05 74 */	stw r5, 0x574(r15)
/* 801E2340 001DF2A0  90 AF 05 78 */	stw r5, 0x578(r15)
/* 801E2344 001DF2A4  90 0F 05 C4 */	stw r0, 0x5c4(r15)
/* 801E2348 001DF2A8  98 AF 05 C8 */	stb r5, 0x5c8(r15)
/* 801E234C 001DF2AC  48 00 0A C1 */	bl sub_801e2e0c
/* 801E2350 001DF2B0  7E 44 93 78 */	mr r4, r18
/* 801E2354 001DF2B4  38 6F 05 DC */	addi r3, r15, 0x5dc
/* 801E2358 001DF2B8  48 00 0A B5 */	bl sub_801e2e0c
/* 801E235C 001DF2BC  38 A0 FF FF */	li r5, -1
/* 801E2360 001DF2C0  38 80 00 00 */	li r4, 0
/* 801E2364 001DF2C4  90 AF 05 EC */	stw r5, 0x5ec(r15)
/* 801E2368 001DF2C8  38 6F 06 50 */	addi r3, r15, 0x650
/* 801E236C 001DF2CC  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E2370 001DF2D0  90 8F 05 F0 */	stw r4, 0x5f0(r15)
/* 801E2374 001DF2D4  C0 42 AC D8 */	lfs f2, lbl_805AC9F8@sda21(r2)
/* 801E2378 001DF2D8  90 8F 05 F4 */	stw r4, 0x5f4(r15)
/* 801E237C 001DF2DC  90 8F 05 F8 */	stw r4, 0x5f8(r15)
/* 801E2380 001DF2E0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E2384 001DF2E4  B0 0F 05 FC */	sth r0, 0x5fc(r15)
/* 801E2388 001DF2E8  80 01 01 C0 */	lwz r0, 0x1c0(r1)
/* 801E238C 001DF2EC  90 0F 06 00 */	stw r0, 0x600(r15)
/* 801E2390 001DF2F0  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 801E2394 001DF2F4  90 0F 06 04 */	stw r0, 0x604(r15)
/* 801E2398 001DF2F8  92 6F 06 08 */	stw r19, 0x608(r15)
/* 801E239C 001DF2FC  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 801E23A0 001DF300  90 0F 06 0C */	stw r0, 0x60c(r15)
/* 801E23A4 001DF304  90 8F 06 14 */	stw r4, 0x614(r15)
/* 801E23A8 001DF308  90 8F 06 18 */	stw r4, 0x618(r15)
/* 801E23AC 001DF30C  90 8F 06 1C */	stw r4, 0x61c(r15)
/* 801E23B0 001DF310  90 8F 06 24 */	stw r4, 0x624(r15)
/* 801E23B4 001DF314  90 8F 06 28 */	stw r4, 0x628(r15)
/* 801E23B8 001DF318  90 8F 06 2C */	stw r4, 0x62c(r15)
/* 801E23BC 001DF31C  92 8F 06 30 */	stw r20, 0x630(r15)
/* 801E23C0 001DF320  90 8F 06 38 */	stw r4, 0x638(r15)
/* 801E23C4 001DF324  90 8F 06 3C */	stw r4, 0x63c(r15)
/* 801E23C8 001DF328  90 8F 06 40 */	stw r4, 0x640(r15)
/* 801E23CC 001DF32C  90 AF 06 44 */	stw r5, 0x644(r15)
/* 801E23D0 001DF330  90 8F 06 48 */	stw r4, 0x648(r15)
/* 801E23D4 001DF334  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E23D8 001DF338  B0 0F 06 4C */	sth r0, 0x64c(r15)
/* 801E23DC 001DF33C  48 13 1E 25 */	bl __ct__9CVector2fFff
/* 801E23E0 001DF340  38 80 FF FF */	li r4, -1
/* 801E23E4 001DF344  38 00 00 00 */	li r0, 0
/* 801E23E8 001DF348  90 8F 06 58 */	stw r4, 0x658(r15)
/* 801E23EC 001DF34C  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 801E23F0 001DF350  C0 02 AC D8 */	lfs f0, lbl_805AC9F8@sda21(r2)
/* 801E23F4 001DF354  90 8F 06 5C */	stw r4, 0x65c(r15)
/* 801E23F8 001DF358  90 0F 06 60 */	stw r0, 0x660(r15)
/* 801E23FC 001DF35C  90 0F 06 64 */	stw r0, 0x664(r15)
/* 801E2400 001DF360  98 0F 06 88 */	stb r0, 0x688(r15)
/* 801E2404 001DF364  98 0F 06 89 */	stb r0, 0x689(r15)
/* 801E2408 001DF368  90 0F 06 8C */	stw r0, 0x68c(r15)
/* 801E240C 001DF36C  D0 0F 06 90 */	stfs f0, 0x690(r15)
/* 801E2410 001DF370  D3 4F 06 94 */	stfs f26, 0x694(r15)
/* 801E2414 001DF374  D3 6F 06 98 */	stfs f27, 0x698(r15)
/* 801E2418 001DF378  D3 8F 06 A0 */	stfs f28, 0x6a0(r15)
/* 801E241C 001DF37C  D3 AF 06 A4 */	stfs f29, 0x6a4(r15)
/* 801E2420 001DF380  D3 CF 06 A8 */	stfs f30, 0x6a8(r15)
/* 801E2424 001DF384  D3 EF 06 AC */	stfs f31, 0x6ac(r15)
/* 801E2428 001DF388  90 0F 06 B4 */	stw r0, 0x6b4(r15)
/* 801E242C 001DF38C  90 0F 06 B8 */	stw r0, 0x6b8(r15)
/* 801E2430 001DF390  90 0F 06 BC */	stw r0, 0x6bc(r15)
/* 801E2434 001DF394  90 0F 06 C4 */	stw r0, 0x6c4(r15)
/* 801E2438 001DF398  90 0F 06 C8 */	stw r0, 0x6c8(r15)
/* 801E243C 001DF39C  90 0F 06 CC */	stw r0, 0x6cc(r15)
/* 801E2440 001DF3A0  92 AF 06 D0 */	stw r21, 0x6d0(r15)
/* 801E2444 001DF3A4  92 CF 06 D4 */	stw r22, 0x6d4(r15)
/* 801E2448 001DF3A8  92 EF 06 D8 */	stw r23, 0x6d8(r15)
/* 801E244C 001DF3AC  93 0F 06 DC */	stw r24, 0x6dc(r15)
/* 801E2450 001DF3B0  93 2F 06 E0 */	stw r25, 0x6e0(r15)
/* 801E2454 001DF3B4  93 4F 06 E4 */	stw r26, 0x6e4(r15)
/* 801E2458 001DF3B8  93 6F 06 E8 */	stw r27, 0x6e8(r15)
/* 801E245C 001DF3BC  48 10 65 55 */	bl TranslateSFXID__11CSfxManagerFUs
/* 801E2460 001DF3C0  B0 6F 06 EC */	sth r3, 0x6ec(r15)
/* 801E2464 001DF3C4  3C 60 80 1E */	lis r3, sub_801e2dd0@ha
/* 801E2468 001DF3C8  38 83 2D D0 */	addi r4, r3, sub_801e2dd0@l
/* 801E246C 001DF3CC  38 00 00 00 */	li r0, 0
/* 801E2470 001DF3D0  93 AF 06 F0 */	stw r29, 0x6f0(r15)
/* 801E2474 001DF3D4  38 6F 06 FC */	addi r3, r15, 0x6fc
/* 801E2478 001DF3D8  C0 02 AD 34 */	lfs f0, lbl_805ACA54@sda21(r2)
/* 801E247C 001DF3DC  38 A0 00 00 */	li r5, 0
/* 801E2480 001DF3E0  90 0F 06 F4 */	stw r0, 0x6f4(r15)
/* 801E2484 001DF3E4  38 C0 00 14 */	li r6, 0x14
/* 801E2488 001DF3E8  38 E0 00 04 */	li r7, 4
/* 801E248C 001DF3EC  D0 0F 06 F8 */	stfs f0, 0x6f8(r15)
/* 801E2490 001DF3F0  48 1A 72 BD */	bl __construct_array
/* 801E2494 001DF3F4  3C 60 80 5A */	lis r3, lbl_805A6724@ha
/* 801E2498 001DF3F8  3C 80 80 5A */	lis r4, skIdentity4f@ha
/* 801E249C 001DF3FC  38 A3 67 24 */	addi r5, r3, lbl_805A6724@l
/* 801E24A0 001DF400  C0 05 00 00 */	lfs f0, 0(r5)
/* 801E24A4 001DF404  38 6F 07 64 */	addi r3, r15, 0x764
/* 801E24A8 001DF408  38 84 66 70 */	addi r4, r4, skIdentity4f@l
/* 801E24AC 001DF40C  D0 0F 07 4C */	stfs f0, 0x74c(r15)
/* 801E24B0 001DF410  C0 05 00 04 */	lfs f0, 4(r5)
/* 801E24B4 001DF414  D0 0F 07 50 */	stfs f0, 0x750(r15)
/* 801E24B8 001DF418  C0 05 00 08 */	lfs f0, 8(r5)
/* 801E24BC 001DF41C  D0 0F 07 54 */	stfs f0, 0x754(r15)
/* 801E24C0 001DF420  93 CF 07 58 */	stw r30, 0x758(r15)
/* 801E24C4 001DF424  93 EF 07 5C */	stw r31, 0x75c(r15)
/* 801E24C8 001DF428  91 CF 07 60 */	stw r14, 0x760(r15)
/* 801E24CC 001DF42C  48 13 06 A9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801E24D0 001DF430  38 00 00 00 */	li r0, 0
/* 801E24D4 001DF434  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E24D8 001DF438  90 0F 07 94 */	stw r0, 0x794(r15)
/* 801E24DC 001DF43C  39 C3 66 A0 */	addi r14, r3, skZero3f@l
/* 801E24E0 001DF440  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E24E4 001DF444  38 6F 07 F0 */	addi r3, r15, 0x7f0
/* 801E24E8 001DF448  90 0F 07 9C */	stw r0, 0x79c(r15)
/* 801E24EC 001DF44C  38 80 00 00 */	li r4, 0
/* 801E24F0 001DF450  C0 62 AC DC */	lfs f3, lbl_805AC9FC@sda21(r2)
/* 801E24F4 001DF454  FC 40 08 90 */	fmr f2, f1
/* 801E24F8 001DF458  90 0F 07 A0 */	stw r0, 0x7a0(r15)
/* 801E24FC 001DF45C  38 A0 00 01 */	li r5, 1
/* 801E2500 001DF460  C0 02 AD 00 */	lfs f0, lbl_805ACA20@sda21(r2)
/* 801E2504 001DF464  90 0F 07 A4 */	stw r0, 0x7a4(r15)
/* 801E2508 001DF468  90 0F 07 AC */	stw r0, 0x7ac(r15)
/* 801E250C 001DF46C  90 0F 07 B0 */	stw r0, 0x7b0(r15)
/* 801E2510 001DF470  90 0F 07 B4 */	stw r0, 0x7b4(r15)
/* 801E2514 001DF474  D0 6F 07 B8 */	stfs f3, 0x7b8(r15)
/* 801E2518 001DF478  D0 0F 07 BC */	stfs f0, 0x7bc(r15)
/* 801E251C 001DF47C  90 0F 07 C4 */	stw r0, 0x7c4(r15)
/* 801E2520 001DF480  98 0F 07 C8 */	stb r0, 0x7c8(r15)
/* 801E2524 001DF484  C0 0E 00 00 */	lfs f0, 0(r14)
/* 801E2528 001DF488  D0 0F 07 CC */	stfs f0, 0x7cc(r15)
/* 801E252C 001DF48C  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E2530 001DF490  D0 0F 07 D0 */	stfs f0, 0x7d0(r15)
/* 801E2534 001DF494  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E2538 001DF498  D0 0F 07 D4 */	stfs f0, 0x7d4(r15)
/* 801E253C 001DF49C  C0 0E 00 00 */	lfs f0, 0(r14)
/* 801E2540 001DF4A0  D0 0F 07 D8 */	stfs f0, 0x7d8(r15)
/* 801E2544 001DF4A4  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E2548 001DF4A8  D0 0F 07 DC */	stfs f0, 0x7dc(r15)
/* 801E254C 001DF4AC  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E2550 001DF4B0  D0 0F 07 E0 */	stfs f0, 0x7e0(r15)
/* 801E2554 001DF4B4  C0 0E 00 00 */	lfs f0, 0(r14)
/* 801E2558 001DF4B8  D0 0F 07 E4 */	stfs f0, 0x7e4(r15)
/* 801E255C 001DF4BC  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E2560 001DF4C0  D0 0F 07 E8 */	stfs f0, 0x7e8(r15)
/* 801E2564 001DF4C4  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E2568 001DF4C8  D0 0F 07 EC */	stfs f0, 0x7ec(r15)
/* 801E256C 001DF4CC  80 D0 01 0C */	lwz r6, 0x10c(r16)
/* 801E2570 001DF4D0  4B FE 68 25 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 801E2574 001DF4D4  38 00 00 00 */	li r0, 0
/* 801E2578 001DF4D8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E257C 001DF4DC  98 0F 08 D4 */	stb r0, 0x8d4(r15)
/* 801E2580 001DF4E0  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 801E2584 001DF4E4  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2588 001DF4E8  38 61 00 64 */	addi r3, r1, 0x64
/* 801E258C 001DF4EC  C0 06 00 00 */	lfs f0, 0(r6)
/* 801E2590 001DF4F0  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2594 001DF4F4  38 A4 01 CA */	addi r5, r4, 0x1ca
/* 801E2598 001DF4F8  D0 0F 08 D8 */	stfs f0, 0x8d8(r15)
/* 801E259C 001DF4FC  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E25A0 001DF500  D0 0F 08 DC */	stfs f0, 0x8dc(r15)
/* 801E25A4 001DF504  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E25A8 001DF508  D0 0F 08 E0 */	stfs f0, 0x8e0(r15)
/* 801E25AC 001DF50C  C0 06 00 00 */	lfs f0, 0(r6)
/* 801E25B0 001DF510  D0 0F 08 E4 */	stfs f0, 0x8e4(r15)
/* 801E25B4 001DF514  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E25B8 001DF518  D0 0F 08 E8 */	stfs f0, 0x8e8(r15)
/* 801E25BC 001DF51C  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E25C0 001DF520  D0 0F 08 EC */	stfs f0, 0x8ec(r15)
/* 801E25C4 001DF524  98 0F 08 F0 */	stb r0, 0x8f0(r15)
/* 801E25C8 001DF528  90 0F 08 F8 */	stw r0, 0x8f8(r15)
/* 801E25CC 001DF52C  90 0F 08 FC */	stw r0, 0x8fc(r15)
/* 801E25D0 001DF530  90 0F 09 00 */	stw r0, 0x900(r15)
/* 801E25D4 001DF534  90 0F 09 04 */	stw r0, 0x904(r15)
/* 801E25D8 001DF538  98 0F 09 08 */	stb r0, 0x908(r15)
/* 801E25DC 001DF53C  98 0F 09 09 */	stb r0, 0x909(r15)
/* 801E25E0 001DF540  90 0F 09 10 */	stw r0, 0x910(r15)
/* 801E25E4 001DF544  90 0F 09 14 */	stw r0, 0x914(r15)
/* 801E25E8 001DF548  90 0F 09 18 */	stw r0, 0x918(r15)
/* 801E25EC 001DF54C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801E25F0 001DF550  81 84 00 00 */	lwz r12, 0(r4)
/* 801E25F4 001DF554  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801E25F8 001DF558  7D 89 03 A6 */	mtctr r12
/* 801E25FC 001DF55C  4E 80 04 21 */	bctrl
/* 801E2600 001DF560  3A 0F 09 1C */	addi r16, r15, 0x91c
/* 801E2604 001DF564  38 81 00 64 */	addi r4, r1, 0x64
/* 801E2608 001DF568  7E 03 83 78 */	mr r3, r16
/* 801E260C 001DF56C  48 15 E8 9D */	bl __ct__6CTokenFRC6CToken
/* 801E2610 001DF570  38 00 00 00 */	li r0, 0
/* 801E2614 001DF574  38 61 00 64 */	addi r3, r1, 0x64
/* 801E2618 001DF578  90 10 00 08 */	stw r0, 8(r16)
/* 801E261C 001DF57C  38 80 FF FF */	li r4, -1
/* 801E2620 001DF580  48 15 E8 21 */	bl __dt__6CTokenFv
/* 801E2624 001DF584  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E2628 001DF588  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801E262C 001DF58C  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 801E2630 001DF590  38 A0 00 00 */	li r5, 0
/* 801E2634 001DF594  B0 0F 09 28 */	sth r0, 0x928(r15)
/* 801E2638 001DF598  38 80 00 01 */	li r4, 1
/* 801E263C 001DF59C  C0 02 AD 34 */	lfs f0, lbl_805ACA54@sda21(r2)
/* 801E2640 001DF5A0  7D E3 7B 78 */	mr r3, r15
/* 801E2644 001DF5A4  C0 26 00 00 */	lfs f1, 0(r6)
/* 801E2648 001DF5A8  D0 2F 09 2C */	stfs f1, 0x92c(r15)
/* 801E264C 001DF5AC  C0 2E 00 04 */	lfs f1, 4(r14)
/* 801E2650 001DF5B0  D0 2F 09 30 */	stfs f1, 0x930(r15)
/* 801E2654 001DF5B4  C0 2E 00 08 */	lfs f1, 8(r14)
/* 801E2658 001DF5B8  D0 2F 09 34 */	stfs f1, 0x934(r15)
/* 801E265C 001DF5BC  98 AF 09 38 */	stb r5, 0x938(r15)
/* 801E2660 001DF5C0  98 AF 09 39 */	stb r5, 0x939(r15)
/* 801E2664 001DF5C4  98 AF 09 3A */	stb r5, 0x93a(r15)
/* 801E2668 001DF5C8  98 AF 09 3B */	stb r5, 0x93b(r15)
/* 801E266C 001DF5CC  98 AF 09 3C */	stb r5, 0x93c(r15)
/* 801E2670 001DF5D0  98 8F 09 3D */	stb r4, 0x93d(r15)
/* 801E2674 001DF5D4  90 AF 09 40 */	stw r5, 0x940(r15)
/* 801E2678 001DF5D8  D0 0F 09 44 */	stfs f0, 0x944(r15)
/* 801E267C 001DF5DC  98 AF 09 4C */	stb r5, 0x94c(r15)
/* 801E2680 001DF5E0  98 AF 09 4D */	stb r5, 0x94d(r15)
/* 801E2684 001DF5E4  C0 06 00 00 */	lfs f0, 0(r6)
/* 801E2688 001DF5E8  D0 0F 09 50 */	stfs f0, 0x950(r15)
/* 801E268C 001DF5EC  C0 0E 00 04 */	lfs f0, 4(r14)
/* 801E2690 001DF5F0  D0 0F 09 54 */	stfs f0, 0x954(r15)
/* 801E2694 001DF5F4  C0 0E 00 08 */	lfs f0, 8(r14)
/* 801E2698 001DF5F8  D0 0F 09 58 */	stfs f0, 0x958(r15)
/* 801E269C 001DF5FC  98 AF 09 5C */	stb r5, 0x95c(r15)
/* 801E26A0 001DF600  98 AF 09 5D */	stb r5, 0x95d(r15)
/* 801E26A4 001DF604  98 AF 09 5E */	stb r5, 0x95e(r15)
/* 801E26A8 001DF608  88 0F 00 E7 */	lbz r0, 0xe7(r15)
/* 801E26AC 001DF60C  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 801E26B0 001DF610  98 0F 00 E7 */	stb r0, 0xe7(r15)
/* 801E26B4 001DF614  88 0F 00 F8 */	lbz r0, 0xf8(r15)
/* 801E26B8 001DF618  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801E26BC 001DF61C  98 0F 00 F8 */	stb r0, 0xf8(r15)
/* 801E26C0 001DF620  4B E7 11 FD */	bl GetMaterialFilter__6CActorCFv
/* 801E26C4 001DF624  80 AD 91 EC */	lwz r5, lbl_805A7DAC@sda21(r13)
/* 801E26C8 001DF628  38 80 00 01 */	li r4, 1
/* 801E26CC 001DF62C  81 C3 00 08 */	lwz r14, 8(r3)
/* 801E26D0 001DF630  82 03 00 0C */	lwz r16, 0xc(r3)
/* 801E26D4 001DF634  38 60 00 00 */	li r3, 0
/* 801E26D8 001DF638  48 1A 78 1D */	bl __shl2i
/* 801E26DC 001DF63C  80 AD 91 F0 */	lwz r5, lbl_805A7DB0@sda21(r13)
/* 801E26E0 001DF640  7C 92 23 78 */	mr r18, r4
/* 801E26E4 001DF644  7C 71 1B 78 */	mr r17, r3
/* 801E26E8 001DF648  38 60 00 00 */	li r3, 0
/* 801E26EC 001DF64C  38 80 00 01 */	li r4, 1
/* 801E26F0 001DF650  48 1A 78 05 */	bl __shl2i
/* 801E26F4 001DF654  80 AD 91 F4 */	lwz r5, lbl_805A7DB4@sda21(r13)
/* 801E26F8 001DF658  7E 52 23 78 */	or r18, r18, r4
/* 801E26FC 001DF65C  7E 31 1B 78 */	or r17, r17, r3
/* 801E2700 001DF660  38 60 00 00 */	li r3, 0
/* 801E2704 001DF664  38 80 00 01 */	li r4, 1
/* 801E2708 001DF668  48 1A 77 ED */	bl __shl2i
/* 801E270C 001DF66C  7E 31 1B 78 */	or r17, r17, r3
/* 801E2710 001DF670  7E 52 23 78 */	or r18, r18, r4
/* 801E2714 001DF674  7D E3 7B 78 */	mr r3, r15
/* 801E2718 001DF678  7E 10 93 78 */	or r16, r16, r18
/* 801E271C 001DF67C  7D CE 8B 78 */	or r14, r14, r17
/* 801E2720 001DF680  4B E7 11 9D */	bl GetMaterialFilter__6CActorCFv
/* 801E2724 001DF684  80 A3 00 00 */	lwz r5, 0(r3)
/* 801E2728 001DF688  38 00 00 03 */	li r0, 3
/* 801E272C 001DF68C  80 C3 00 04 */	lwz r6, 4(r3)
/* 801E2730 001DF690  7D E3 7B 78 */	mr r3, r15
/* 801E2734 001DF694  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801E2738 001DF698  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 801E273C 001DF69C  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 801E2740 001DF6A0  92 01 00 BC */	stw r16, 0xbc(r1)
/* 801E2744 001DF6A4  91 C1 00 B8 */	stw r14, 0xb8(r1)
/* 801E2748 001DF6A8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801E274C 001DF6AC  4B E7 11 55 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801E2750 001DF6B0  38 00 00 00 */	li r0, 0
/* 801E2754 001DF6B4  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E2758 001DF6B8  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E275C 001DF6BC  38 80 00 06 */	li r4, 6
/* 801E2760 001DF6C0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801E2764 001DF6C4  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 801E2768 001DF6C8  4B E8 13 BD */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 801E276C 001DF6CC  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2770 001DF6D0  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E2774 001DF6D4  7C 00 28 00 */	cmpw r0, r5
/* 801E2778 001DF6D8  41 80 00 1C */	blt lbl_801E2794
/* 801E277C 001DF6DC  2C 05 00 00 */	cmpwi r5, 0
/* 801E2780 001DF6E0  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E2784 001DF6E4  38 80 00 04 */	li r4, 4
/* 801E2788 001DF6E8  41 82 00 08 */	beq lbl_801E2790
/* 801E278C 001DF6EC  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E2790:
/* 801E2790 001DF6F0  4B E8 13 95 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E2794:
/* 801E2794 001DF6F4  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2798 001DF6F8  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E279C 001DF6FC  54 00 10 3A */	slwi r0, r0, 2
/* 801E27A0 001DF700  7C 63 02 15 */	add. r3, r3, r0
/* 801E27A4 001DF704  41 82 00 08 */	beq lbl_801E27AC
/* 801E27A8 001DF708  92 A3 00 00 */	stw r21, 0(r3)
lbl_801E27AC:
/* 801E27AC 001DF70C  80 61 00 A0 */	lwz r3, 0xa0(r1)
/* 801E27B0 001DF710  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E27B4 001DF714  38 03 00 01 */	addi r0, r3, 1
/* 801E27B8 001DF718  7C 00 28 00 */	cmpw r0, r5
/* 801E27BC 001DF71C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E27C0 001DF720  41 80 00 1C */	blt lbl_801E27DC
/* 801E27C4 001DF724  2C 05 00 00 */	cmpwi r5, 0
/* 801E27C8 001DF728  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E27CC 001DF72C  38 80 00 04 */	li r4, 4
/* 801E27D0 001DF730  41 82 00 08 */	beq lbl_801E27D8
/* 801E27D4 001DF734  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E27D8:
/* 801E27D8 001DF738  4B E8 13 4D */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E27DC:
/* 801E27DC 001DF73C  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E27E0 001DF740  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E27E4 001DF744  54 00 10 3A */	slwi r0, r0, 2
/* 801E27E8 001DF748  7C 63 02 15 */	add. r3, r3, r0
/* 801E27EC 001DF74C  41 82 00 08 */	beq lbl_801E27F4
/* 801E27F0 001DF750  92 C3 00 00 */	stw r22, 0(r3)
lbl_801E27F4:
/* 801E27F4 001DF754  80 61 00 A0 */	lwz r3, 0xa0(r1)
/* 801E27F8 001DF758  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E27FC 001DF75C  38 03 00 01 */	addi r0, r3, 1
/* 801E2800 001DF760  7C 00 28 00 */	cmpw r0, r5
/* 801E2804 001DF764  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E2808 001DF768  41 80 00 1C */	blt lbl_801E2824
/* 801E280C 001DF76C  2C 05 00 00 */	cmpwi r5, 0
/* 801E2810 001DF770  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E2814 001DF774  38 80 00 04 */	li r4, 4
/* 801E2818 001DF778  41 82 00 08 */	beq lbl_801E2820
/* 801E281C 001DF77C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E2820:
/* 801E2820 001DF780  4B E8 13 05 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E2824:
/* 801E2824 001DF784  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2828 001DF788  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E282C 001DF78C  54 00 10 3A */	slwi r0, r0, 2
/* 801E2830 001DF790  7C 63 02 15 */	add. r3, r3, r0
/* 801E2834 001DF794  41 82 00 08 */	beq lbl_801E283C
/* 801E2838 001DF798  92 E3 00 00 */	stw r23, 0(r3)
lbl_801E283C:
/* 801E283C 001DF79C  80 61 00 A0 */	lwz r3, 0xa0(r1)
/* 801E2840 001DF7A0  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E2844 001DF7A4  38 03 00 01 */	addi r0, r3, 1
/* 801E2848 001DF7A8  7C 00 28 00 */	cmpw r0, r5
/* 801E284C 001DF7AC  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E2850 001DF7B0  41 80 00 1C */	blt lbl_801E286C
/* 801E2854 001DF7B4  2C 05 00 00 */	cmpwi r5, 0
/* 801E2858 001DF7B8  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E285C 001DF7BC  38 80 00 04 */	li r4, 4
/* 801E2860 001DF7C0  41 82 00 08 */	beq lbl_801E2868
/* 801E2864 001DF7C4  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E2868:
/* 801E2868 001DF7C8  4B E8 12 BD */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E286C:
/* 801E286C 001DF7CC  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2870 001DF7D0  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E2874 001DF7D4  54 00 10 3A */	slwi r0, r0, 2
/* 801E2878 001DF7D8  7C 63 02 15 */	add. r3, r3, r0
/* 801E287C 001DF7DC  41 82 00 08 */	beq lbl_801E2884
/* 801E2880 001DF7E0  93 03 00 00 */	stw r24, 0(r3)
lbl_801E2884:
/* 801E2884 001DF7E4  80 61 00 A0 */	lwz r3, 0xa0(r1)
/* 801E2888 001DF7E8  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E288C 001DF7EC  38 03 00 01 */	addi r0, r3, 1
/* 801E2890 001DF7F0  7C 00 28 00 */	cmpw r0, r5
/* 801E2894 001DF7F4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E2898 001DF7F8  41 80 00 1C */	blt lbl_801E28B4
/* 801E289C 001DF7FC  2C 05 00 00 */	cmpwi r5, 0
/* 801E28A0 001DF800  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E28A4 001DF804  38 80 00 04 */	li r4, 4
/* 801E28A8 001DF808  41 82 00 08 */	beq lbl_801E28B0
/* 801E28AC 001DF80C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E28B0:
/* 801E28B0 001DF810  4B E8 12 75 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E28B4:
/* 801E28B4 001DF814  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E28B8 001DF818  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E28BC 001DF81C  54 00 10 3A */	slwi r0, r0, 2
/* 801E28C0 001DF820  7C 63 02 15 */	add. r3, r3, r0
/* 801E28C4 001DF824  41 82 00 08 */	beq lbl_801E28CC
/* 801E28C8 001DF828  93 23 00 00 */	stw r25, 0(r3)
lbl_801E28CC:
/* 801E28CC 001DF82C  80 61 00 A0 */	lwz r3, 0xa0(r1)
/* 801E28D0 001DF830  80 A1 00 A4 */	lwz r5, 0xa4(r1)
/* 801E28D4 001DF834  38 03 00 01 */	addi r0, r3, 1
/* 801E28D8 001DF838  7C 00 28 00 */	cmpw r0, r5
/* 801E28DC 001DF83C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801E28E0 001DF840  41 80 00 1C */	blt lbl_801E28FC
/* 801E28E4 001DF844  2C 05 00 00 */	cmpwi r5, 0
/* 801E28E8 001DF848  38 61 00 9C */	addi r3, r1, 0x9c
/* 801E28EC 001DF84C  38 80 00 04 */	li r4, 4
/* 801E28F0 001DF850  41 82 00 08 */	beq lbl_801E28F8
/* 801E28F4 001DF854  54 A4 08 3C */	slwi r4, r5, 1
lbl_801E28F8:
/* 801E28F8 001DF858  4B E8 12 2D */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_801E28FC:
/* 801E28FC 001DF85C  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2900 001DF860  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E2904 001DF864  54 00 10 3A */	slwi r0, r0, 2
/* 801E2908 001DF868  7C 63 02 15 */	add. r3, r3, r0
/* 801E290C 001DF86C  41 82 00 08 */	beq lbl_801E2914
/* 801E2910 001DF870  93 43 00 00 */	stw r26, 0(r3)
lbl_801E2914:
/* 801E2914 001DF874  80 81 00 A0 */	lwz r4, 0xa0(r1)
/* 801E2918 001DF878  38 00 00 00 */	li r0, 0
/* 801E291C 001DF87C  90 01 00 90 */	stw r0, 0x90(r1)
/* 801E2920 001DF880  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801E2924 001DF884  38 A4 00 01 */	addi r5, r4, 1
/* 801E2928 001DF888  38 81 00 9C */	addi r4, r1, 0x9c
/* 801E292C 001DF88C  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 801E2930 001DF890  38 A1 00 8C */	addi r5, r1, 0x8c
/* 801E2934 001DF894  38 C1 00 7C */	addi r6, r1, 0x7c
/* 801E2938 001DF898  38 E1 00 6C */	addi r7, r1, 0x6c
/* 801E293C 001DF89C  90 01 00 94 */	stw r0, 0x94(r1)
/* 801E2940 001DF8A0  90 01 00 98 */	stw r0, 0x98(r1)
/* 801E2944 001DF8A4  90 01 00 80 */	stw r0, 0x80(r1)
/* 801E2948 001DF8A8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801E294C 001DF8AC  90 01 00 88 */	stw r0, 0x88(r1)
/* 801E2950 001DF8B0  90 01 00 70 */	stw r0, 0x70(r1)
/* 801E2954 001DF8B4  90 01 00 74 */	stw r0, 0x74(r1)
/* 801E2958 001DF8B8  90 01 00 78 */	stw r0, 0x78(r1)
/* 801E295C 001DF8BC  48 00 01 D9 */	bl sub_801e2b34
/* 801E2960 001DF8C0  80 6F 00 64 */	lwz r3, 0x64(r15)
/* 801E2964 001DF8C4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 801E2968 001DF8C8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801E296C 001DF8CC  38 63 01 20 */	addi r3, r3, 0x120
/* 801E2970 001DF8D0  4B ED 79 25 */	bl CacheParticleDesc__17CParticleDatabaseFRCQ213CharacterInfo16CParticleResData
/* 801E2974 001DF8D4  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801E2978 001DF8D8  38 80 FF FF */	li r4, -1
/* 801E297C 001DF8DC  4B E4 CA 21 */	bl __dt__Q214CCharacterInfo16CParticleResDataFv
/* 801E2980 001DF8E0  80 01 00 70 */	lwz r0, 0x70(r1)
/* 801E2984 001DF8E4  80 61 00 78 */	lwz r3, 0x78(r1)
/* 801E2988 001DF8E8  54 00 10 3A */	slwi r0, r0, 2
/* 801E298C 001DF8EC  7C 03 02 14 */	add r0, r3, r0
/* 801E2990 001DF8F0  90 61 00 58 */	stw r3, 0x58(r1)
/* 801E2994 001DF8F4  7C 64 1B 78 */	mr r4, r3
/* 801E2998 001DF8F8  90 01 00 60 */	stw r0, 0x60(r1)
/* 801E299C 001DF8FC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801E29A0 001DF900  90 61 00 54 */	stw r3, 0x54(r1)
/* 801E29A4 001DF904  48 00 00 08 */	b lbl_801E29AC
lbl_801E29A8:
/* 801E29A8 001DF908  38 84 00 04 */	addi r4, r4, 4
lbl_801E29AC:
/* 801E29AC 001DF90C  7C 04 00 40 */	cmplw r4, r0
/* 801E29B0 001DF910  40 82 FF F8 */	bne lbl_801E29A8
/* 801E29B4 001DF914  28 03 00 00 */	cmplwi r3, 0
/* 801E29B8 001DF918  41 82 00 08 */	beq lbl_801E29C0
/* 801E29BC 001DF91C  48 13 2F 75 */	bl Free__7CMemoryFPCv
lbl_801E29C0:
/* 801E29C0 001DF920  80 01 00 80 */	lwz r0, 0x80(r1)
/* 801E29C4 001DF924  80 61 00 88 */	lwz r3, 0x88(r1)
/* 801E29C8 001DF928  54 00 10 3A */	slwi r0, r0, 2
/* 801E29CC 001DF92C  7C 03 02 14 */	add r0, r3, r0
/* 801E29D0 001DF930  90 61 00 48 */	stw r3, 0x48(r1)
/* 801E29D4 001DF934  7C 64 1B 78 */	mr r4, r3
/* 801E29D8 001DF938  90 01 00 50 */	stw r0, 0x50(r1)
/* 801E29DC 001DF93C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801E29E0 001DF940  90 61 00 44 */	stw r3, 0x44(r1)
/* 801E29E4 001DF944  48 00 00 08 */	b lbl_801E29EC
lbl_801E29E8:
/* 801E29E8 001DF948  38 84 00 04 */	addi r4, r4, 4
lbl_801E29EC:
/* 801E29EC 001DF94C  7C 04 00 40 */	cmplw r4, r0
/* 801E29F0 001DF950  40 82 FF F8 */	bne lbl_801E29E8
/* 801E29F4 001DF954  28 03 00 00 */	cmplwi r3, 0
/* 801E29F8 001DF958  41 82 00 08 */	beq lbl_801E2A00
/* 801E29FC 001DF95C  48 13 2F 35 */	bl Free__7CMemoryFPCv
lbl_801E2A00:
/* 801E2A00 001DF960  80 01 00 90 */	lwz r0, 0x90(r1)
/* 801E2A04 001DF964  80 61 00 98 */	lwz r3, 0x98(r1)
/* 801E2A08 001DF968  54 00 10 3A */	slwi r0, r0, 2
/* 801E2A0C 001DF96C  7C 03 02 14 */	add r0, r3, r0
/* 801E2A10 001DF970  90 61 00 38 */	stw r3, 0x38(r1)
/* 801E2A14 001DF974  7C 64 1B 78 */	mr r4, r3
/* 801E2A18 001DF978  90 01 00 40 */	stw r0, 0x40(r1)
/* 801E2A1C 001DF97C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801E2A20 001DF980  90 61 00 34 */	stw r3, 0x34(r1)
/* 801E2A24 001DF984  48 00 00 08 */	b lbl_801E2A2C
lbl_801E2A28:
/* 801E2A28 001DF988  38 84 00 04 */	addi r4, r4, 4
lbl_801E2A2C:
/* 801E2A2C 001DF98C  7C 04 00 40 */	cmplw r4, r0
/* 801E2A30 001DF990  40 82 FF F8 */	bne lbl_801E2A28
/* 801E2A34 001DF994  28 03 00 00 */	cmplwi r3, 0
/* 801E2A38 001DF998  41 82 00 08 */	beq lbl_801E2A40
/* 801E2A3C 001DF99C  48 13 2E F5 */	bl Free__7CMemoryFPCv
lbl_801E2A40:
/* 801E2A40 001DF9A0  38 6F 07 98 */	addi r3, r15, 0x798
/* 801E2A44 001DF9A4  38 80 00 06 */	li r4, 6
/* 801E2A48 001DF9A8  4B E2 99 C1 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801E2A4C 001DF9AC  38 6F 07 A8 */	addi r3, r15, 0x7a8
/* 801E2A50 001DF9B0  38 80 00 10 */	li r4, 0x10
/* 801E2A54 001DF9B4  4B E2 99 B5 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801E2A58 001DF9B8  7D E3 7B 78 */	mr r3, r15
/* 801E2A5C 001DF9BC  38 80 00 01 */	li r4, 1
/* 801E2A60 001DF9C0  4B E9 4D F5 */	bl UpdateThermalFrozenState__10CPatternedFb
/* 801E2A64 001DF9C4  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E2A68 001DF9C8  38 6F 08 F4 */	addi r3, r15, 0x8f4
/* 801E2A6C 001DF9CC  38 80 00 10 */	li r4, 0x10
/* 801E2A70 001DF9D0  D0 0F 00 D0 */	stfs f0, 0xd0(r15)
/* 801E2A74 001DF9D4  D0 0F 05 0C */	stfs f0, 0x50c(r15)
/* 801E2A78 001DF9D8  4B E2 99 91 */	bl "reserve__Q24rstl45vector<9TUniqueId,Q24rstl17rmemory_allocator>Fi"
/* 801E2A7C 001DF9DC  38 6F 09 1C */	addi r3, r15, 0x91c
/* 801E2A80 001DF9E0  48 15 E3 05 */	bl Lock__6CTokenFv
/* 801E2A84 001DF9E4  88 0F 04 03 */	lbz r0, 0x403(r15)
/* 801E2A88 001DF9E8  38 60 00 00 */	li r3, 0
/* 801E2A8C 001DF9EC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801E2A90 001DF9F0  38 6F 04 60 */	addi r3, r15, 0x460
/* 801E2A94 001DF9F4  98 0F 04 03 */	stb r0, 0x403(r15)
/* 801E2A98 001DF9F8  38 80 00 00 */	li r4, 0
/* 801E2A9C 001DF9FC  48 05 12 C9 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 801E2AA0 001DFA00  C0 22 AD 74 */	lfs f1, lbl_805ACA94@sda21(r2)
/* 801E2AA4 001DFA04  7D E3 7B 78 */	mr r3, r15
/* 801E2AA8 001DFA08  4B F3 7F E1 */	bl SetMass__13CPhysicsActorFf
/* 801E2AAC 001DFA0C  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 801E2AB0 001DFA10  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 801E2AB4 001DFA14  54 00 10 3A */	slwi r0, r0, 2
/* 801E2AB8 001DFA18  7C 03 02 14 */	add r0, r3, r0
/* 801E2ABC 001DFA1C  90 61 00 28 */	stw r3, 0x28(r1)
/* 801E2AC0 001DFA20  7C 64 1B 78 */	mr r4, r3
/* 801E2AC4 001DFA24  90 01 00 30 */	stw r0, 0x30(r1)
/* 801E2AC8 001DFA28  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801E2ACC 001DFA2C  90 61 00 24 */	stw r3, 0x24(r1)
/* 801E2AD0 001DFA30  48 00 00 08 */	b lbl_801E2AD8
lbl_801E2AD4:
/* 801E2AD4 001DFA34  38 84 00 04 */	addi r4, r4, 4
lbl_801E2AD8:
/* 801E2AD8 001DFA38  7C 04 00 40 */	cmplw r4, r0
/* 801E2ADC 001DFA3C  40 82 FF F8 */	bne lbl_801E2AD4
/* 801E2AE0 001DFA40  28 03 00 00 */	cmplwi r3, 0
/* 801E2AE4 001DFA44  41 82 00 08 */	beq lbl_801E2AEC
/* 801E2AE8 001DFA48  48 13 2E 49 */	bl Free__7CMemoryFPCv
lbl_801E2AEC:
/* 801E2AEC 001DFA4C  7D E3 7B 78 */	mr r3, r15
/* 801E2AF0 001DFA50  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 801E2AF4 001DFA54  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 801E2AF8 001DFA58  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 801E2AFC 001DFA5C  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 801E2B00 001DFA60  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 801E2B04 001DFA64  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 801E2B08 001DFA68  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 801E2B0C 001DFA6C  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 801E2B10 001DFA70  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 801E2B14 001DFA74  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 801E2B18 001DFA78  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 801E2B1C 001DFA7C  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 801E2B20 001DFA80  B9 C1 01 08 */	lmw r14, 0x108(r1)
/* 801E2B24 001DFA84  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801E2B28 001DFA88  7C 08 03 A6 */	mtlr r0
/* 801E2B2C 001DFA8C  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801E2B30 001DFA90  4E 80 00 20 */	blr

.global sub_801e2b34
sub_801e2b34:
/* 801E2B34 001DFA94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E2B38 001DFA98  7C 08 02 A6 */	mflr r0
/* 801E2B3C 001DFA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E2B40 001DFAA0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 801E2B44 001DFAA4  7C 9B 23 78 */	mr r27, r4
/* 801E2B48 001DFAA8  7C 7C 1B 78 */	mr r28, r3
/* 801E2B4C 001DFAAC  7C BD 2B 78 */	mr r29, r5
/* 801E2B50 001DFAB0  7C DE 33 78 */	mr r30, r6
/* 801E2B54 001DFAB4  7C FF 3B 78 */	mr r31, r7
/* 801E2B58 001DFAB8  80 04 00 04 */	lwz r0, 4(r4)
/* 801E2B5C 001DFABC  90 03 00 04 */	stw r0, 4(r3)
/* 801E2B60 001DFAC0  80 04 00 08 */	lwz r0, 8(r4)
/* 801E2B64 001DFAC4  90 03 00 08 */	stw r0, 8(r3)
/* 801E2B68 001DFAC8  80 04 00 04 */	lwz r0, 4(r4)
/* 801E2B6C 001DFACC  2C 00 00 00 */	cmpwi r0, 0
/* 801E2B70 001DFAD0  40 82 00 1C */	bne lbl_801E2B8C
/* 801E2B74 001DFAD4  80 1B 00 08 */	lwz r0, 8(r27)
/* 801E2B78 001DFAD8  2C 00 00 00 */	cmpwi r0, 0
/* 801E2B7C 001DFADC  40 82 00 10 */	bne lbl_801E2B8C
/* 801E2B80 001DFAE0  38 00 00 00 */	li r0, 0
/* 801E2B84 001DFAE4  90 1C 00 0C */	stw r0, 0xc(r28)
/* 801E2B88 001DFAE8  48 00 00 68 */	b lbl_801E2BF0
lbl_801E2B8C:
/* 801E2B8C 001DFAEC  80 1C 00 08 */	lwz r0, 8(r28)
/* 801E2B90 001DFAF0  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 801E2B94 001DFAF4  40 82 00 10 */	bne lbl_801E2BA4
/* 801E2B98 001DFAF8  38 00 00 00 */	li r0, 0
/* 801E2B9C 001DFAFC  90 1C 00 0C */	stw r0, 0xc(r28)
/* 801E2BA0 001DFB00  48 00 00 1C */	b lbl_801E2BBC
lbl_801E2BA4:
/* 801E2BA4 001DFB04  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2BA8 001DFB08  38 A0 00 00 */	li r5, 0
/* 801E2BAC 001DFB0C  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2BB0 001DFB10  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801E2BB4 001DFB14  48 13 2C 65 */	bl __nwa__FUlPCcPCc
/* 801E2BB8 001DFB18  90 7C 00 0C */	stw r3, 0xc(r28)
lbl_801E2BBC:
/* 801E2BBC 001DFB1C  80 1C 00 04 */	lwz r0, 4(r28)
/* 801E2BC0 001DFB20  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 801E2BC4 001DFB24  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 801E2BC8 001DFB28  7C 09 03 A6 */	mtctr r0
/* 801E2BCC 001DFB2C  2C 00 00 00 */	cmpwi r0, 0
/* 801E2BD0 001DFB30  40 81 00 20 */	ble lbl_801E2BF0
lbl_801E2BD4:
/* 801E2BD4 001DFB34  28 03 00 00 */	cmplwi r3, 0
/* 801E2BD8 001DFB38  41 82 00 0C */	beq lbl_801E2BE4
/* 801E2BDC 001DFB3C  80 04 00 00 */	lwz r0, 0(r4)
/* 801E2BE0 001DFB40  90 03 00 00 */	stw r0, 0(r3)
lbl_801E2BE4:
/* 801E2BE4 001DFB44  38 63 00 04 */	addi r3, r3, 4
/* 801E2BE8 001DFB48  38 84 00 04 */	addi r4, r4, 4
/* 801E2BEC 001DFB4C  42 00 FF E8 */	bdnz lbl_801E2BD4
lbl_801E2BF0:
/* 801E2BF0 001DFB50  80 1D 00 04 */	lwz r0, 4(r29)
/* 801E2BF4 001DFB54  90 1C 00 14 */	stw r0, 0x14(r28)
/* 801E2BF8 001DFB58  80 1D 00 08 */	lwz r0, 8(r29)
/* 801E2BFC 001DFB5C  90 1C 00 18 */	stw r0, 0x18(r28)
/* 801E2C00 001DFB60  80 1D 00 04 */	lwz r0, 4(r29)
/* 801E2C04 001DFB64  2C 00 00 00 */	cmpwi r0, 0
/* 801E2C08 001DFB68  40 82 00 1C */	bne lbl_801E2C24
/* 801E2C0C 001DFB6C  80 1D 00 08 */	lwz r0, 8(r29)
/* 801E2C10 001DFB70  2C 00 00 00 */	cmpwi r0, 0
/* 801E2C14 001DFB74  40 82 00 10 */	bne lbl_801E2C24
/* 801E2C18 001DFB78  38 00 00 00 */	li r0, 0
/* 801E2C1C 001DFB7C  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 801E2C20 001DFB80  48 00 00 68 */	b lbl_801E2C88
lbl_801E2C24:
/* 801E2C24 001DFB84  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 801E2C28 001DFB88  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 801E2C2C 001DFB8C  40 82 00 10 */	bne lbl_801E2C3C
/* 801E2C30 001DFB90  38 00 00 00 */	li r0, 0
/* 801E2C34 001DFB94  90 1C 00 1C */	stw r0, 0x1c(r28)
/* 801E2C38 001DFB98  48 00 00 1C */	b lbl_801E2C54
lbl_801E2C3C:
/* 801E2C3C 001DFB9C  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2C40 001DFBA0  38 A0 00 00 */	li r5, 0
/* 801E2C44 001DFBA4  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2C48 001DFBA8  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801E2C4C 001DFBAC  48 13 2B CD */	bl __nwa__FUlPCcPCc
/* 801E2C50 001DFBB0  90 7C 00 1C */	stw r3, 0x1c(r28)
lbl_801E2C54:
/* 801E2C54 001DFBB4  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 801E2C58 001DFBB8  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801E2C5C 001DFBBC  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 801E2C60 001DFBC0  7C 09 03 A6 */	mtctr r0
/* 801E2C64 001DFBC4  2C 00 00 00 */	cmpwi r0, 0
/* 801E2C68 001DFBC8  40 81 00 20 */	ble lbl_801E2C88
lbl_801E2C6C:
/* 801E2C6C 001DFBCC  28 03 00 00 */	cmplwi r3, 0
/* 801E2C70 001DFBD0  41 82 00 0C */	beq lbl_801E2C7C
/* 801E2C74 001DFBD4  80 04 00 00 */	lwz r0, 0(r4)
/* 801E2C78 001DFBD8  90 03 00 00 */	stw r0, 0(r3)
lbl_801E2C7C:
/* 801E2C7C 001DFBDC  38 63 00 04 */	addi r3, r3, 4
/* 801E2C80 001DFBE0  38 84 00 04 */	addi r4, r4, 4
/* 801E2C84 001DFBE4  42 00 FF E8 */	bdnz lbl_801E2C6C
lbl_801E2C88:
/* 801E2C88 001DFBE8  80 1E 00 04 */	lwz r0, 4(r30)
/* 801E2C8C 001DFBEC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 801E2C90 001DFBF0  80 1E 00 08 */	lwz r0, 8(r30)
/* 801E2C94 001DFBF4  90 1C 00 28 */	stw r0, 0x28(r28)
/* 801E2C98 001DFBF8  80 1E 00 04 */	lwz r0, 4(r30)
/* 801E2C9C 001DFBFC  2C 00 00 00 */	cmpwi r0, 0
/* 801E2CA0 001DFC00  40 82 00 1C */	bne lbl_801E2CBC
/* 801E2CA4 001DFC04  80 1E 00 08 */	lwz r0, 8(r30)
/* 801E2CA8 001DFC08  2C 00 00 00 */	cmpwi r0, 0
/* 801E2CAC 001DFC0C  40 82 00 10 */	bne lbl_801E2CBC
/* 801E2CB0 001DFC10  38 00 00 00 */	li r0, 0
/* 801E2CB4 001DFC14  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 801E2CB8 001DFC18  48 00 00 68 */	b lbl_801E2D20
lbl_801E2CBC:
/* 801E2CBC 001DFC1C  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 801E2CC0 001DFC20  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 801E2CC4 001DFC24  40 82 00 10 */	bne lbl_801E2CD4
/* 801E2CC8 001DFC28  38 00 00 00 */	li r0, 0
/* 801E2CCC 001DFC2C  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 801E2CD0 001DFC30  48 00 00 1C */	b lbl_801E2CEC
lbl_801E2CD4:
/* 801E2CD4 001DFC34  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2CD8 001DFC38  38 A0 00 00 */	li r5, 0
/* 801E2CDC 001DFC3C  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2CE0 001DFC40  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801E2CE4 001DFC44  48 13 2B 35 */	bl __nwa__FUlPCcPCc
/* 801E2CE8 001DFC48  90 7C 00 2C */	stw r3, 0x2c(r28)
lbl_801E2CEC:
/* 801E2CEC 001DFC4C  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 801E2CF0 001DFC50  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801E2CF4 001DFC54  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 801E2CF8 001DFC58  7C 09 03 A6 */	mtctr r0
/* 801E2CFC 001DFC5C  2C 00 00 00 */	cmpwi r0, 0
/* 801E2D00 001DFC60  40 81 00 20 */	ble lbl_801E2D20
lbl_801E2D04:
/* 801E2D04 001DFC64  28 03 00 00 */	cmplwi r3, 0
/* 801E2D08 001DFC68  41 82 00 0C */	beq lbl_801E2D14
/* 801E2D0C 001DFC6C  80 04 00 00 */	lwz r0, 0(r4)
/* 801E2D10 001DFC70  90 03 00 00 */	stw r0, 0(r3)
lbl_801E2D14:
/* 801E2D14 001DFC74  38 63 00 04 */	addi r3, r3, 4
/* 801E2D18 001DFC78  38 84 00 04 */	addi r4, r4, 4
/* 801E2D1C 001DFC7C  42 00 FF E8 */	bdnz lbl_801E2D04
lbl_801E2D20:
/* 801E2D20 001DFC80  80 1F 00 04 */	lwz r0, 4(r31)
/* 801E2D24 001DFC84  90 1C 00 34 */	stw r0, 0x34(r28)
/* 801E2D28 001DFC88  80 1F 00 08 */	lwz r0, 8(r31)
/* 801E2D2C 001DFC8C  90 1C 00 38 */	stw r0, 0x38(r28)
/* 801E2D30 001DFC90  80 1F 00 04 */	lwz r0, 4(r31)
/* 801E2D34 001DFC94  2C 00 00 00 */	cmpwi r0, 0
/* 801E2D38 001DFC98  40 82 00 1C */	bne lbl_801E2D54
/* 801E2D3C 001DFC9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 801E2D40 001DFCA0  2C 00 00 00 */	cmpwi r0, 0
/* 801E2D44 001DFCA4  40 82 00 10 */	bne lbl_801E2D54
/* 801E2D48 001DFCA8  38 00 00 00 */	li r0, 0
/* 801E2D4C 001DFCAC  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 801E2D50 001DFCB0  48 00 00 68 */	b lbl_801E2DB8
lbl_801E2D54:
/* 801E2D54 001DFCB4  80 1C 00 38 */	lwz r0, 0x38(r28)
/* 801E2D58 001DFCB8  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 801E2D5C 001DFCBC  40 82 00 10 */	bne lbl_801E2D6C
/* 801E2D60 001DFCC0  38 00 00 00 */	li r0, 0
/* 801E2D64 001DFCC4  90 1C 00 3C */	stw r0, 0x3c(r28)
/* 801E2D68 001DFCC8  48 00 00 1C */	b lbl_801E2D84
lbl_801E2D6C:
/* 801E2D6C 001DFCCC  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2D70 001DFCD0  38 A0 00 00 */	li r5, 0
/* 801E2D74 001DFCD4  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2D78 001DFCD8  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801E2D7C 001DFCDC  48 13 2A 9D */	bl __nwa__FUlPCcPCc
/* 801E2D80 001DFCE0  90 7C 00 3C */	stw r3, 0x3c(r28)
lbl_801E2D84:
/* 801E2D84 001DFCE4  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 801E2D88 001DFCE8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801E2D8C 001DFCEC  80 7C 00 3C */	lwz r3, 0x3c(r28)
/* 801E2D90 001DFCF0  7C 09 03 A6 */	mtctr r0
/* 801E2D94 001DFCF4  2C 00 00 00 */	cmpwi r0, 0
/* 801E2D98 001DFCF8  40 81 00 20 */	ble lbl_801E2DB8
lbl_801E2D9C:
/* 801E2D9C 001DFCFC  28 03 00 00 */	cmplwi r3, 0
/* 801E2DA0 001DFD00  41 82 00 0C */	beq lbl_801E2DAC
/* 801E2DA4 001DFD04  80 04 00 00 */	lwz r0, 0(r4)
/* 801E2DA8 001DFD08  90 03 00 00 */	stw r0, 0(r3)
lbl_801E2DAC:
/* 801E2DAC 001DFD0C  38 63 00 04 */	addi r3, r3, 4
/* 801E2DB0 001DFD10  38 84 00 04 */	addi r4, r4, 4
/* 801E2DB4 001DFD14  42 00 FF E8 */	bdnz lbl_801E2D9C
lbl_801E2DB8:
/* 801E2DB8 001DFD18  7F 83 E3 78 */	mr r3, r28
/* 801E2DBC 001DFD1C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 801E2DC0 001DFD20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E2DC4 001DFD24  7C 08 03 A6 */	mtlr r0
/* 801E2DC8 001DFD28  38 21 00 20 */	addi r1, r1, 0x20
/* 801E2DCC 001DFD2C  4E 80 00 20 */	blr

.global sub_801e2dd0
sub_801e2dd0:
/* 801E2DD0 001DFD30  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801E2DD4 001DFD34  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801E2DD8 001DFD38  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 801E2DDC 001DFD3C  38 80 00 00 */	li r4, 0
/* 801E2DE0 001DFD40  B0 03 00 00 */	sth r0, 0(r3)
/* 801E2DE4 001DFD44  C0 05 00 00 */	lfs f0, 0(r5)
/* 801E2DE8 001DFD48  D0 03 00 04 */	stfs f0, 4(r3)
/* 801E2DEC 001DFD4C  C0 05 00 04 */	lfs f0, 4(r5)
/* 801E2DF0 001DFD50  D0 03 00 08 */	stfs f0, 8(r3)
/* 801E2DF4 001DFD54  C0 05 00 08 */	lfs f0, 8(r5)
/* 801E2DF8 001DFD58  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801E2DFC 001DFD5C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801E2E00 001DFD60  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 801E2E04 001DFD64  98 03 00 10 */	stb r0, 0x10(r3)
/* 801E2E08 001DFD68  4E 80 00 20 */	blr

.global sub_801e2e0c
sub_801e2e0c:
/* 801E2E0C 001DFD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E2E10 001DFD70  7C 08 02 A6 */	mflr r0
/* 801E2E14 001DFD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2E18 001DFD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E2E1C 001DFD7C  7C 9F 23 78 */	mr r31, r4
/* 801E2E20 001DFD80  93 C1 00 08 */	stw r30, 8(r1)
/* 801E2E24 001DFD84  7C 7E 1B 78 */	mr r30, r3
/* 801E2E28 001DFD88  80 04 00 04 */	lwz r0, 4(r4)
/* 801E2E2C 001DFD8C  90 03 00 04 */	stw r0, 4(r3)
/* 801E2E30 001DFD90  80 04 00 08 */	lwz r0, 8(r4)
/* 801E2E34 001DFD94  90 03 00 08 */	stw r0, 8(r3)
/* 801E2E38 001DFD98  80 04 00 04 */	lwz r0, 4(r4)
/* 801E2E3C 001DFD9C  2C 00 00 00 */	cmpwi r0, 0
/* 801E2E40 001DFDA0  40 82 00 1C */	bne lbl_801E2E5C
/* 801E2E44 001DFDA4  80 1F 00 08 */	lwz r0, 8(r31)
/* 801E2E48 001DFDA8  2C 00 00 00 */	cmpwi r0, 0
/* 801E2E4C 001DFDAC  40 82 00 10 */	bne lbl_801E2E5C
/* 801E2E50 001DFDB0  38 00 00 00 */	li r0, 0
/* 801E2E54 001DFDB4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801E2E58 001DFDB8  48 00 00 48 */	b lbl_801E2EA0
lbl_801E2E5C:
/* 801E2E5C 001DFDBC  80 1E 00 08 */	lwz r0, 8(r30)
/* 801E2E60 001DFDC0  1C 60 00 4C */	mulli r3, r0, 0x4c
/* 801E2E64 001DFDC4  2C 03 00 00 */	cmpwi r3, 0
/* 801E2E68 001DFDC8  40 82 00 10 */	bne lbl_801E2E78
/* 801E2E6C 001DFDCC  38 00 00 00 */	li r0, 0
/* 801E2E70 001DFDD0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801E2E74 001DFDD4  48 00 00 1C */	b lbl_801E2E90
lbl_801E2E78:
/* 801E2E78 001DFDD8  3C 80 80 3D */	lis r4, lbl_803D1CB8@ha
/* 801E2E7C 001DFDDC  38 A0 00 00 */	li r5, 0
/* 801E2E80 001DFDE0  38 84 1C B8 */	addi r4, r4, lbl_803D1CB8@l
/* 801E2E84 001DFDE4  38 84 01 B3 */	addi r4, r4, 0x1b3
/* 801E2E88 001DFDE8  48 13 29 91 */	bl __nwa__FUlPCcPCc
/* 801E2E8C 001DFDEC  90 7E 00 0C */	stw r3, 0xc(r30)
lbl_801E2E90:
/* 801E2E90 001DFDF0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801E2E94 001DFDF4  80 9E 00 04 */	lwz r4, 4(r30)
/* 801E2E98 001DFDF8  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801E2E9C 001DFDFC  48 00 00 21 */	bl sub_801e2ebc
lbl_801E2EA0:
/* 801E2EA0 001DFE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2EA4 001DFE04  7F C3 F3 78 */	mr r3, r30
/* 801E2EA8 001DFE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E2EAC 001DFE0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E2EB0 001DFE10  7C 08 03 A6 */	mtlr r0
/* 801E2EB4 001DFE14  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2EB8 001DFE18  4E 80 00 20 */	blr

.global sub_801e2ebc
sub_801e2ebc:
/* 801E2EBC 001DFE1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E2EC0 001DFE20  7C 08 02 A6 */	mflr r0
/* 801E2EC4 001DFE24  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E2EC8 001DFE28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E2ECC 001DFE2C  7C 7F 1B 78 */	mr r31, r3
/* 801E2ED0 001DFE30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E2ED4 001DFE34  7C BE 2B 78 */	mr r30, r5
/* 801E2ED8 001DFE38  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E2EDC 001DFE3C  3B A0 00 00 */	li r29, 0
/* 801E2EE0 001DFE40  93 81 00 10 */	stw r28, 0x10(r1)
/* 801E2EE4 001DFE44  7C 9C 23 78 */	mr r28, r4
/* 801E2EE8 001DFE48  48 00 00 1C */	b lbl_801E2F04
lbl_801E2EEC:
/* 801E2EEC 001DFE4C  7F C3 F3 78 */	mr r3, r30
/* 801E2EF0 001DFE50  7F E4 FB 78 */	mr r4, r31
/* 801E2EF4 001DFE54  48 00 00 3D */	bl sub_801e2f30
/* 801E2EF8 001DFE58  3B DE 00 4C */	addi r30, r30, 0x4c
/* 801E2EFC 001DFE5C  3B BD 00 01 */	addi r29, r29, 1
/* 801E2F00 001DFE60  3B FF 00 4C */	addi r31, r31, 0x4c
lbl_801E2F04:
/* 801E2F04 001DFE64  7C 1D E0 00 */	cmpw r29, r28
/* 801E2F08 001DFE68  41 80 FF E4 */	blt lbl_801E2EEC
/* 801E2F0C 001DFE6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E2F10 001DFE70  7F C3 F3 78 */	mr r3, r30
/* 801E2F14 001DFE74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E2F18 001DFE78  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E2F1C 001DFE7C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E2F20 001DFE80  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801E2F24 001DFE84  7C 08 03 A6 */	mtlr r0
/* 801E2F28 001DFE88  38 21 00 20 */	addi r1, r1, 0x20
/* 801E2F2C 001DFE8C  4E 80 00 20 */	blr

.global sub_801e2f30
sub_801e2f30:
/* 801E2F30 001DFE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E2F34 001DFE94  7C 08 02 A6 */	mflr r0
/* 801E2F38 001DFE98  28 03 00 00 */	cmplwi r3, 0
/* 801E2F3C 001DFE9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2F40 001DFEA0  41 82 00 08 */	beq lbl_801E2F48
/* 801E2F44 001DFEA4  4B E3 5E 49 */	bl __ct__10CModelDataFRC10CModelData
lbl_801E2F48:
/* 801E2F48 001DFEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2F4C 001DFEAC  7C 08 03 A6 */	mtlr r0
/* 801E2F50 001DFEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2F54 001DFEB4  4E 80 00 20 */	blr


.global CanRenderUnsorted__16CDestroyableRockCFRC13CStateManager
CanRenderUnsorted__16CDestroyableRockCFRC13CStateManager:
/* 801E2F58 001DFEB8  38 60 00 01 */	li r3, 1
/* 801E2F5C 001DFEBC  4E 80 00 20 */	blr

.global UsePhazonModel__16CDestroyableRockFv
UsePhazonModel__16CDestroyableRockFv:
/* 801E2F60 001DFEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E2F64 001DFEC4  7C 08 02 A6 */	mflr r0
/* 801E2F68 001DFEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E2F6C 001DFECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E2F70 001DFED0  7C 7F 1B 78 */	mr r31, r3
/* 801E2F74 001DFED4  38 9F 02 D8 */	addi r4, r31, 0x2d8
/* 801E2F78 001DFED8  4B E7 20 B9 */	bl SetModelData__6CActorFRC10CModelData
/* 801E2F7C 001DFEDC  38 00 00 01 */	li r0, 1
/* 801E2F80 001DFEE0  98 1F 03 35 */	stb r0, 0x335(r31)
/* 801E2F84 001DFEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E2F88 001DFEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E2F8C 001DFEEC  7C 08 03 A6 */	mtlr r0
/* 801E2F90 001DFEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801E2F94 001DFEF4  4E 80 00 20 */	blr

.global TakeDamage__16CDestroyableRockFRC9CVector3ff
TakeDamage__16CDestroyableRockFRC9CVector3ff:
/* 801E2F98 001DFEF8  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E2F9C 001DFEFC  C0 02 AC E0 */	lfs f0, lbl_805ACA00@sda21(r2)
/* 801E2FA0 001DFF00  D0 23 03 24 */	stfs f1, 0x324(r3)
/* 801E2FA4 001DFF04  D0 03 03 28 */	stfs f0, 0x328(r3)
/* 801E2FA8 001DFF08  4E 80 00 20 */	blr

.global GetAimPosition__16CDestroyableRockCFRC13CStateManagerf
GetAimPosition__16CDestroyableRockCFRC13CStateManagerf:
/* 801E2FAC 001DFF0C  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801E2FB0 001DFF10  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801E2FB4 001DFF14  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801E2FB8 001DFF18  D0 03 00 00 */	stfs f0, 0(r3)
/* 801E2FBC 001DFF1C  D0 23 00 04 */	stfs f1, 4(r3)
/* 801E2FC0 001DFF20  D0 43 00 08 */	stfs f2, 8(r3)
/* 801E2FC4 001DFF24  4E 80 00 20 */	blr

.global GetOrbitPosition__16CDestroyableRockCFRC13CStateManager
GetOrbitPosition__16CDestroyableRockCFRC13CStateManager:
/* 801E2FC8 001DFF28  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801E2FCC 001DFF2C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801E2FD0 001DFF30  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801E2FD4 001DFF34  D0 03 00 00 */	stfs f0, 0(r3)
/* 801E2FD8 001DFF38  D0 23 00 04 */	stfs f1, 4(r3)
/* 801E2FDC 001DFF3C  D0 43 00 08 */	stfs f2, 8(r3)
/* 801E2FE0 001DFF40  4E 80 00 20 */	blr

.global KnockBack__16CDestroyableRockFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__16CDestroyableRockFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 801E2FE4 001DFF44  4E 80 00 20 */	blr

.global Death__16CDestroyableRockFRC9CVector3fR13CStateManager
Death__16CDestroyableRockFRC9CVector3fR13CStateManager:
/* 801E2FE8 001DFF48  38 00 00 01 */	li r0, 1
/* 801E2FEC 001DFF4C  98 03 03 34 */	stb r0, 0x334(r3)
/* 801E2FF0 001DFF50  4E 80 00 20 */	blr

.global GetTouchBounds__16CDestroyableRockCFv
GetTouchBounds__16CDestroyableRockCFv:
/* 801E2FF4 001DFF54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E2FF8 001DFF58  7C 08 02 A6 */	mflr r0
/* 801E2FFC 001DFF5C  7C 85 23 78 */	mr r5, r4
/* 801E3000 001DFF60  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E3004 001DFF64  38 A5 00 34 */	addi r5, r5, 0x34
/* 801E3008 001DFF68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E300C 001DFF6C  7C 7F 1B 78 */	mr r31, r3
/* 801E3010 001DFF70  38 61 00 08 */	addi r3, r1, 8
/* 801E3014 001DFF74  80 84 00 64 */	lwz r4, 0x64(r4)
/* 801E3018 001DFF78  4B F3 27 9D */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 801E301C 001DFF7C  38 00 00 01 */	li r0, 1
/* 801E3020 001DFF80  28 1F 00 00 */	cmplwi r31, 0
/* 801E3024 001DFF84  98 1F 00 18 */	stb r0, 0x18(r31)
/* 801E3028 001DFF88  41 82 00 34 */	beq lbl_801E305C
/* 801E302C 001DFF8C  C0 01 00 08 */	lfs f0, 8(r1)
/* 801E3030 001DFF90  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801E3034 001DFF94  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801E3038 001DFF98  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801E303C 001DFF9C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 801E3040 001DFFA0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 801E3044 001DFFA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801E3048 001DFFA8  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 801E304C 001DFFAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801E3050 001DFFB0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 801E3054 001DFFB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801E3058 001DFFB8  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_801E305C:
/* 801E305C 001DFFBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E3060 001DFFC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E3064 001DFFC4  7C 08 03 A6 */	mtlr r0
/* 801E3068 001DFFC8  38 21 00 30 */	addi r1, r1, 0x30
/* 801E306C 001DFFCC  4E 80 00 20 */	blr

.global AcceptScriptMsg__16CDestroyableRockF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__16CDestroyableRockF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801E3070 001DFFD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E3074 001DFFD4  7C 08 02 A6 */	mflr r0
/* 801E3078 001DFFD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E307C 001DFFDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E3080 001DFFE0  7C DF 33 78 */	mr r31, r6
/* 801E3084 001DFFE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801E3088 001DFFE8  7C 9E 23 78 */	mr r30, r4
/* 801E308C 001DFFEC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801E3090 001DFFF0  7C 7D 1B 78 */	mr r29, r3
/* 801E3094 001DFFF4  A0 05 00 00 */	lhz r0, 0(r5)
/* 801E3098 001DFFF8  38 A1 00 08 */	addi r5, r1, 8
/* 801E309C 001DFFFC  B0 01 00 08 */	sth r0, 8(r1)
/* 801E30A0 001E0000  4B EB FC 05 */	bl AcceptScriptMsg__3CAiF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801E30A4 001E0004  2C 1E 00 21 */	cmpwi r30, 0x21
/* 801E30A8 001E0008  41 82 00 08 */	beq lbl_801E30B0
/* 801E30AC 001E000C  48 00 00 24 */	b lbl_801E30D0
lbl_801E30B0:
/* 801E30B0 001E0010  7F A3 EB 78 */	mr r3, r29
/* 801E30B4 001E0014  7F E5 FB 78 */	mr r5, r31
/* 801E30B8 001E0018  38 80 00 12 */	li r4, 0x12
/* 801E30BC 001E001C  4B E7 12 95 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801E30C0 001E0020  7F A3 EB 78 */	mr r3, r29
/* 801E30C4 001E0024  7F E5 FB 78 */	mr r5, r31
/* 801E30C8 001E0028  38 80 00 15 */	li r4, 0x15
/* 801E30CC 001E002C  4B E7 12 85 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801E30D0:
/* 801E30D0 001E0030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E30D4 001E0034  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E30D8 001E0038  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801E30DC 001E003C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801E30E0 001E0040  7C 08 03 A6 */	mtlr r0
/* 801E30E4 001E0044  38 21 00 20 */	addi r1, r1, 0x20
/* 801E30E8 001E0048  4E 80 00 20 */	blr

.global Accept__16CDestroyableRockFR8IVisitor
Accept__16CDestroyableRockFR8IVisitor:
/* 801E30EC 001E004C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E30F0 001E0050  7C 08 02 A6 */	mflr r0
/* 801E30F4 001E0054  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E30F8 001E0058  7C 60 1B 78 */	mr r0, r3
/* 801E30FC 001E005C  7C 83 23 78 */	mr r3, r4
/* 801E3100 001E0060  81 84 00 00 */	lwz r12, 0(r4)
/* 801E3104 001E0064  7C 04 03 78 */	mr r4, r0
/* 801E3108 001E0068  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 801E310C 001E006C  7D 89 03 A6 */	mtctr r12
/* 801E3110 001E0070  4E 80 04 21 */	bctrl
/* 801E3114 001E0074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3118 001E0078  7C 08 03 A6 */	mtlr r0
/* 801E311C 001E007C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3120 001E0080  4E 80 00 20 */	blr

.global Render__16CDestroyableRockCFRC13CStateManager
Render__16CDestroyableRockCFRC13CStateManager:
/* 801E3124 001E0084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3128 001E0088  7C 08 02 A6 */	mflr r0
/* 801E312C 001E008C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3130 001E0090  4B F3 73 B9 */	bl Render__13CPhysicsActorCFRC13CStateManager
/* 801E3134 001E0094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E3138 001E0098  7C 08 03 A6 */	mtlr r0
/* 801E313C 001E009C  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3140 001E00A0  4E 80 00 20 */	blr

.global PreRender__16CDestroyableRockFR13CStateManagerRC14CFrustumPlanes
PreRender__16CDestroyableRockFR13CStateManagerRC14CFrustumPlanes:
/* 801E3144 001E00A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E3148 001E00A8  7C 08 02 A6 */	mflr r0
/* 801E314C 001E00AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E3150 001E00B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E3154 001E00B4  7C BF 2B 78 */	mr r31, r5
/* 801E3158 001E00B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801E315C 001E00BC  7C 9E 23 78 */	mr r30, r4
/* 801E3160 001E00C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801E3164 001E00C4  7C 7D 1B 78 */	mr r29, r3
/* 801E3168 001E00C8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801E316C 001E00CC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801E3170 001E00D0  41 82 01 04 */	beq lbl_801E3274
/* 801E3174 001E00D4  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801E3178 001E00D8  80 63 00 00 */	lwz r3, 0(r3)
/* 801E317C 001E00DC  4B EA E3 DD */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801E3180 001E00E0  2C 03 00 03 */	cmpwi r3, 3
/* 801E3184 001E00E4  40 82 00 5C */	bne lbl_801E31E0
/* 801E3188 001E00E8  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E318C 001E00EC  38 80 00 00 */	li r4, 0
/* 801E3190 001E00F0  38 00 00 03 */	li r0, 3
/* 801E3194 001E00F4  98 81 00 10 */	stb r4, 0x10(r1)
/* 801E3198 001E00F8  FC 40 08 90 */	fmr f2, f1
/* 801E319C 001E00FC  38 61 00 14 */	addi r3, r1, 0x14
/* 801E31A0 001E0100  FC 60 08 90 */	fmr f3, f1
/* 801E31A4 001E0104  98 81 00 11 */	stb r4, 0x11(r1)
/* 801E31A8 001E0108  FC 80 08 90 */	fmr f4, f1
/* 801E31AC 001E010C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801E31B0 001E0110  48 18 02 3D */	bl __ct__6CColorFffff
/* 801E31B4 001E0114  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 801E31B8 001E0118  88 81 00 11 */	lbz r4, 0x11(r1)
/* 801E31BC 001E011C  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 801E31C0 001E0120  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 801E31C4 001E0124  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801E31C8 001E0128  60 63 00 01 */	ori r3, r3, 1
/* 801E31CC 001E012C  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 801E31D0 001E0130  98 9D 00 B5 */	stb r4, 0xb5(r29)
/* 801E31D4 001E0134  B0 7D 00 B6 */	sth r3, 0xb6(r29)
/* 801E31D8 001E0138  90 BD 00 B8 */	stw r5, 0xb8(r29)
/* 801E31DC 001E013C  48 00 00 98 */	b lbl_801E3274
lbl_801E31E0:
/* 801E31E0 001E0140  88 7D 03 30 */	lbz r3, 0x330(r29)
/* 801E31E4 001E0144  88 1D 03 31 */	lbz r0, 0x331(r29)
/* 801E31E8 001E0148  88 9D 03 32 */	lbz r4, 0x332(r29)
/* 801E31EC 001E014C  7C 60 00 38 */	and r0, r3, r0
/* 801E31F0 001E0150  7C 80 00 38 */	and r0, r4, r0
/* 801E31F4 001E0154  2C 00 00 FF */	cmpwi r0, 0xff
/* 801E31F8 001E0158  40 80 00 30 */	bge lbl_801E3228
/* 801E31FC 001E015C  38 00 00 FF */	li r0, 0xff
/* 801E3200 001E0160  38 80 00 02 */	li r4, 2
/* 801E3204 001E0164  98 1D 03 33 */	stb r0, 0x333(r29)
/* 801E3208 001E0168  38 60 00 00 */	li r3, 0
/* 801E320C 001E016C  38 00 00 03 */	li r0, 3
/* 801E3210 001E0170  80 BD 03 30 */	lwz r5, 0x330(r29)
/* 801E3214 001E0174  98 9D 00 B4 */	stb r4, 0xb4(r29)
/* 801E3218 001E0178  98 7D 00 B5 */	stb r3, 0xb5(r29)
/* 801E321C 001E017C  B0 1D 00 B6 */	sth r0, 0xb6(r29)
/* 801E3220 001E0180  90 BD 00 B8 */	stw r5, 0xb8(r29)
/* 801E3224 001E0184  48 00 00 50 */	b lbl_801E3274
lbl_801E3228:
/* 801E3228 001E0188  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E322C 001E018C  38 80 00 00 */	li r4, 0
/* 801E3230 001E0190  38 00 00 03 */	li r0, 3
/* 801E3234 001E0194  98 81 00 08 */	stb r4, 8(r1)
/* 801E3238 001E0198  FC 40 08 90 */	fmr f2, f1
/* 801E323C 001E019C  38 61 00 0C */	addi r3, r1, 0xc
/* 801E3240 001E01A0  FC 60 08 90 */	fmr f3, f1
/* 801E3244 001E01A4  98 81 00 09 */	stb r4, 9(r1)
/* 801E3248 001E01A8  FC 80 08 90 */	fmr f4, f1
/* 801E324C 001E01AC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 801E3250 001E01B0  48 18 01 9D */	bl __ct__6CColorFffff
/* 801E3254 001E01B4  88 01 00 08 */	lbz r0, 8(r1)
/* 801E3258 001E01B8  98 1D 00 B4 */	stb r0, 0xb4(r29)
/* 801E325C 001E01BC  88 01 00 09 */	lbz r0, 9(r1)
/* 801E3260 001E01C0  98 1D 00 B5 */	stb r0, 0xb5(r29)
/* 801E3264 001E01C4  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 801E3268 001E01C8  B0 1D 00 B6 */	sth r0, 0xb6(r29)
/* 801E326C 001E01CC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801E3270 001E01D0  90 1D 00 B8 */	stw r0, 0xb8(r29)
lbl_801E3274:
/* 801E3274 001E01D4  7F A3 EB 78 */	mr r3, r29
/* 801E3278 001E01D8  7F C4 F3 78 */	mr r4, r30
/* 801E327C 001E01DC  7F E5 FB 78 */	mr r5, r31
/* 801E3280 001E01E0  4B E7 1A 61 */	bl PreRender__6CActorFR13CStateManagerRC14CFrustumPlanes
/* 801E3284 001E01E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E3288 001E01E8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E328C 001E01EC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801E3290 001E01F0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801E3294 001E01F4  7C 08 03 A6 */	mtlr r0
/* 801E3298 001E01F8  38 21 00 30 */	addi r1, r1, 0x30
/* 801E329C 001E01FC  4E 80 00 20 */	blr

.global sub_801e32a0
sub_801e32a0:
/* 801E32A0 001E0200  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 801E32A4 001E0204  7C 08 02 A6 */	mflr r0
/* 801E32A8 001E0208  90 01 01 44 */	stw r0, 0x144(r1)
/* 801E32AC 001E020C  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 801E32B0 001E0210  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 801E32B4 001E0214  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 801E32B8 001E0218  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 801E32BC 001E021C  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 801E32C0 001E0220  F3 A1 01 18 */	psq_st f29, 280(r1), 0, qr0
/* 801E32C4 001E0224  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 801E32C8 001E0228  F3 81 01 08 */	psq_st f28, 264(r1), 0, qr0
/* 801E32CC 001E022C  DB 61 00 F0 */	stfd f27, 0xf0(r1)
/* 801E32D0 001E0230  F3 61 00 F8 */	psq_st f27, 248(r1), 0, qr0
/* 801E32D4 001E0234  DB 41 00 E0 */	stfd f26, 0xe0(r1)
/* 801E32D8 001E0238  F3 41 00 E8 */	psq_st f26, 232(r1), 0, qr0
/* 801E32DC 001E023C  DB 21 00 D0 */	stfd f25, 0xd0(r1)
/* 801E32E0 001E0240  F3 21 00 D8 */	psq_st f25, 216(r1), 0, qr0
/* 801E32E4 001E0244  DB 01 00 C0 */	stfd f24, 0xc0(r1)
/* 801E32E8 001E0248  F3 01 00 C8 */	psq_st f24, 200(r1), 0, qr0
/* 801E32EC 001E024C  DA E1 00 B0 */	stfd f23, 0xb0(r1)
/* 801E32F0 001E0250  F2 E1 00 B8 */	psq_st f23, 184(r1), 0, qr0
/* 801E32F4 001E0254  DA C1 00 A0 */	stfd f22, 0xa0(r1)
/* 801E32F8 001E0258  F2 C1 00 A8 */	psq_st f22, 168(r1), 0, qr0
/* 801E32FC 001E025C  DA A1 00 90 */	stfd f21, 0x90(r1)
/* 801E3300 001E0260  F2 A1 00 98 */	psq_st f21, 152(r1), 0, qr0
/* 801E3304 001E0264  DA 81 00 80 */	stfd f20, 0x80(r1)
/* 801E3308 001E0268  F2 81 00 88 */	psq_st f20, 136(r1), 0, qr0
/* 801E330C 001E026C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801E3310 001E0270  7C 7F 1B 78 */	mr r31, r3
/* 801E3314 001E0274  FE 80 08 90 */	fmr f20, f1
/* 801E3318 001E0278  80 63 09 24 */	lwz r3, 0x924(r3)
/* 801E331C 001E027C  28 03 00 00 */	cmplwi r3, 0
/* 801E3320 001E0280  41 82 01 CC */	beq lbl_801E34EC
/* 801E3324 001E0284  38 80 00 00 */	li r4, 0
/* 801E3328 001E0288  38 A0 00 01 */	li r5, 1
/* 801E332C 001E028C  48 12 C4 11 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
/* 801E3330 001E0290  C0 02 AD 78 */	lfs f0, lbl_805ACA98@sda21(r2)
/* 801E3334 001E0294  3C 60 80 5A */	lis r3, lbl_805A61D4@ha
/* 801E3338 001E0298  38 83 61 D4 */	addi r4, r3, lbl_805A61D4@l
/* 801E333C 001E029C  C3 3F 09 2C */	lfs f25, 0x92c(r31)
/* 801E3340 001E02A0  EC 80 05 32 */	fmuls f4, f0, f20
/* 801E3344 001E02A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 801E3348 001E02A8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801E334C 001E02AC  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 801E3350 001E02B0  C0 64 00 20 */	lfs f3, 0x20(r4)
/* 801E3354 001E02B4  38 63 66 70 */	addi r3, r3, skIdentity4f@l
/* 801E3358 001E02B8  C0 44 00 08 */	lfs f2, 8(r4)
/* 801E335C 001E02BC  EF 84 00 72 */	fmuls f28, f4, f1
/* 801E3360 001E02C0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 801E3364 001E02C4  EF A4 00 32 */	fmuls f29, f4, f0
/* 801E3368 001E02C8  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 801E336C 001E02CC  EF C4 00 F2 */	fmuls f30, f4, f3
/* 801E3370 001E02D0  EF E4 00 B2 */	fmuls f31, f4, f2
/* 801E3374 001E02D4  EF 44 00 72 */	fmuls f26, f4, f1
/* 801E3378 001E02D8  C3 1F 09 30 */	lfs f24, 0x930(r31)
/* 801E337C 001E02DC  EF 64 00 32 */	fmuls f27, f4, f0
/* 801E3380 001E02E0  C2 FF 09 34 */	lfs f23, 0x934(r31)
/* 801E3384 001E02E4  48 12 92 5D */	bl SetModelMatrix__9CGraphicsFRC12CTransform4f
/* 801E3388 001E02E8  38 60 00 01 */	li r3, 1
/* 801E338C 001E02EC  38 80 00 01 */	li r4, 1
/* 801E3390 001E02F0  38 A0 00 01 */	li r5, 1
/* 801E3394 001E02F4  38 C0 00 00 */	li r6, 0
/* 801E3398 001E02F8  48 12 86 B9 */	bl SetBlendMode__9CGraphicsF13ERglBlendMode15ERglBlendFactor15ERglBlendFactor11ERglLogicOp
/* 801E339C 001E02FC  3C 80 80 5A */	lis r4, lbl_805A5EBC@ha
/* 801E33A0 001E0300  38 60 00 00 */	li r3, 0
/* 801E33A4 001E0304  38 84 5E BC */	addi r4, r4, lbl_805A5EBC@l
/* 801E33A8 001E0308  48 12 6F 11 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 801E33AC 001E030C  80 8D 9C 68 */	lwz r4, lbl_805A8828@sda21(r13)
/* 801E33B0 001E0310  38 60 00 01 */	li r3, 1
/* 801E33B4 001E0314  48 12 6F 05 */	bl SetTevOp__9CGraphicsF12ERglTevStageRCQ213CTevCombiners8CTevPass
/* 801E33B8 001E0318  38 60 00 00 */	li r3, 0
/* 801E33BC 001E031C  38 80 00 07 */	li r4, 7
/* 801E33C0 001E0320  38 A0 00 00 */	li r5, 0
/* 801E33C4 001E0324  48 12 86 D1 */	bl SetDepthWriteMode__9CGraphicsFb8ERglEnumb
/* 801E33C8 001E0328  FC 20 A0 90 */	fmr f1, f20
/* 801E33CC 001E032C  38 61 00 08 */	addi r3, r1, 8
/* 801E33D0 001E0330  FC 40 A0 90 */	fmr f2, f20
/* 801E33D4 001E0334  FC 60 A0 90 */	fmr f3, f20
/* 801E33D8 001E0338  FC 80 A0 90 */	fmr f4, f20
/* 801E33DC 001E033C  48 18 00 11 */	bl __ct__6CColorFffff
/* 801E33E0 001E0340  38 61 00 08 */	addi r3, r1, 8
/* 801E33E4 001E0344  48 12 81 65 */	bl StreamColor__9CGraphicsFRC6CColor
/* 801E33E8 001E0348  38 60 00 A0 */	li r3, 0xa0
/* 801E33EC 001E034C  48 12 82 7D */	bl StreamBegin__9CGraphicsF13ERglPrimitive
/* 801E33F0 001E0350  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E33F4 001E0354  FC 40 08 90 */	fmr f2, f1
/* 801E33F8 001E0358  48 12 80 6D */	bl StreamTexcoord__9CGraphicsFff
/* 801E33FC 001E035C  EE D9 E0 28 */	fsubs f22, f25, f28
/* 801E3400 001E0360  38 61 00 60 */	addi r3, r1, 0x60
/* 801E3404 001E0364  EE B8 E8 28 */	fsubs f21, f24, f29
/* 801E3408 001E0368  EE 97 F0 28 */	fsubs f20, f23, f30
/* 801E340C 001E036C  EC 16 F8 2A */	fadds f0, f22, f31
/* 801E3410 001E0370  D2 C1 00 54 */	stfs f22, 0x54(r1)
/* 801E3414 001E0374  EC 55 D0 2A */	fadds f2, f21, f26
/* 801E3418 001E0378  EC 34 D8 2A */	fadds f1, f20, f27
/* 801E341C 001E037C  D2 A1 00 58 */	stfs f21, 0x58(r1)
/* 801E3420 001E0380  D2 81 00 5C */	stfs f20, 0x5c(r1)
/* 801E3424 001E0384  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 801E3428 001E0388  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 801E342C 001E038C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 801E3430 001E0390  48 12 81 91 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 801E3434 001E0394  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E3438 001E0398  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801E343C 001E039C  48 12 80 29 */	bl StreamTexcoord__9CGraphicsFff
/* 801E3440 001E03A0  EC 55 D0 28 */	fsubs f2, f21, f26
/* 801E3444 001E03A4  D2 C1 00 3C */	stfs f22, 0x3c(r1)
/* 801E3448 001E03A8  EC 34 D8 28 */	fsubs f1, f20, f27
/* 801E344C 001E03AC  38 61 00 48 */	addi r3, r1, 0x48
/* 801E3450 001E03B0  EC 16 F8 28 */	fsubs f0, f22, f31
/* 801E3454 001E03B4  D2 A1 00 40 */	stfs f21, 0x40(r1)
/* 801E3458 001E03B8  D2 81 00 44 */	stfs f20, 0x44(r1)
/* 801E345C 001E03BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801E3460 001E03C0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801E3464 001E03C4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801E3468 001E03C8  48 12 81 59 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 801E346C 001E03CC  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E3470 001E03D0  FC 40 08 90 */	fmr f2, f1
/* 801E3474 001E03D4  48 12 7F F1 */	bl StreamTexcoord__9CGraphicsFff
/* 801E3478 001E03D8  EE 99 E0 2A */	fadds f20, f25, f28
/* 801E347C 001E03DC  38 61 00 30 */	addi r3, r1, 0x30
/* 801E3480 001E03E0  EE B8 E8 2A */	fadds f21, f24, f29
/* 801E3484 001E03E4  EE D7 F0 2A */	fadds f22, f23, f30
/* 801E3488 001E03E8  EC 14 F8 28 */	fsubs f0, f20, f31
/* 801E348C 001E03EC  D2 81 00 24 */	stfs f20, 0x24(r1)
/* 801E3490 001E03F0  EC 55 D0 28 */	fsubs f2, f21, f26
/* 801E3494 001E03F4  EC 36 D8 28 */	fsubs f1, f22, f27
/* 801E3498 001E03F8  D2 A1 00 28 */	stfs f21, 0x28(r1)
/* 801E349C 001E03FC  D2 C1 00 2C */	stfs f22, 0x2c(r1)
/* 801E34A0 001E0400  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801E34A4 001E0404  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801E34A8 001E0408  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 801E34AC 001E040C  48 12 81 15 */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 801E34B0 001E0410  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E34B4 001E0414  C0 42 AC D8 */	lfs f2, lbl_805AC9F8@sda21(r2)
/* 801E34B8 001E0418  48 12 7F AD */	bl StreamTexcoord__9CGraphicsFff
/* 801E34BC 001E041C  EC 55 D0 2A */	fadds f2, f21, f26
/* 801E34C0 001E0420  D2 81 00 0C */	stfs f20, 0xc(r1)
/* 801E34C4 001E0424  EC 36 D8 2A */	fadds f1, f22, f27
/* 801E34C8 001E0428  38 61 00 18 */	addi r3, r1, 0x18
/* 801E34CC 001E042C  EC 14 F8 2A */	fadds f0, f20, f31
/* 801E34D0 001E0430  D2 A1 00 10 */	stfs f21, 0x10(r1)
/* 801E34D4 001E0434  D2 C1 00 14 */	stfs f22, 0x14(r1)
/* 801E34D8 001E0438  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801E34DC 001E043C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801E34E0 001E0440  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801E34E4 001E0444  48 12 80 DD */	bl StreamVertex__9CGraphicsFRC9CVector3f
/* 801E34E8 001E0448  48 12 7F 29 */	bl StreamEnd__9CGraphicsFv
lbl_801E34EC:
/* 801E34EC 001E044C  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 801E34F0 001E0450  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 801E34F4 001E0454  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 801E34F8 001E0458  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 801E34FC 001E045C  E3 A1 01 18 */	psq_l f29, 280(r1), 0, qr0
/* 801E3500 001E0460  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 801E3504 001E0464  E3 81 01 08 */	psq_l f28, 264(r1), 0, qr0
/* 801E3508 001E0468  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 801E350C 001E046C  E3 61 00 F8 */	psq_l f27, 248(r1), 0, qr0
/* 801E3510 001E0470  CB 61 00 F0 */	lfd f27, 0xf0(r1)
/* 801E3514 001E0474  E3 41 00 E8 */	psq_l f26, 232(r1), 0, qr0
/* 801E3518 001E0478  CB 41 00 E0 */	lfd f26, 0xe0(r1)
/* 801E351C 001E047C  E3 21 00 D8 */	psq_l f25, 216(r1), 0, qr0
/* 801E3520 001E0480  CB 21 00 D0 */	lfd f25, 0xd0(r1)
/* 801E3524 001E0484  E3 01 00 C8 */	psq_l f24, 200(r1), 0, qr0
/* 801E3528 001E0488  CB 01 00 C0 */	lfd f24, 0xc0(r1)
/* 801E352C 001E048C  E2 E1 00 B8 */	psq_l f23, 184(r1), 0, qr0
/* 801E3530 001E0490  CA E1 00 B0 */	lfd f23, 0xb0(r1)
/* 801E3534 001E0494  E2 C1 00 A8 */	psq_l f22, 168(r1), 0, qr0
/* 801E3538 001E0498  CA C1 00 A0 */	lfd f22, 0xa0(r1)
/* 801E353C 001E049C  E2 A1 00 98 */	psq_l f21, 152(r1), 0, qr0
/* 801E3540 001E04A0  CA A1 00 90 */	lfd f21, 0x90(r1)
/* 801E3544 001E04A4  E2 81 00 88 */	psq_l f20, 136(r1), 0, qr0
/* 801E3548 001E04A8  CA 81 00 80 */	lfd f20, 0x80(r1)
/* 801E354C 001E04AC  80 01 01 44 */	lwz r0, 0x144(r1)
/* 801E3550 001E04B0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801E3554 001E04B4  7C 08 03 A6 */	mtlr r0
/* 801E3558 001E04B8  38 21 01 40 */	addi r1, r1, 0x140
/* 801E355C 001E04BC  4E 80 00 20 */	blr

.global Think__16CDestroyableRockFfR13CStateManager
Think__16CDestroyableRockFfR13CStateManager:
/* 801E3560 001E04C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801E3564 001E04C4  7C 08 02 A6 */	mflr r0
/* 801E3568 001E04C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801E356C 001E04CC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801E3570 001E04D0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801E3574 001E04D4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801E3578 001E04D8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801E357C 001E04DC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E3580 001E04E0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801E3584 001E04E4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801E3588 001E04E8  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801E358C 001E04EC  FF C0 08 90 */	fmr f30, f1
/* 801E3590 001E04F0  7C 7D 1B 78 */	mr r29, r3
/* 801E3594 001E04F4  7C 9E 23 78 */	mr r30, r4
/* 801E3598 001E04F8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801E359C 001E04FC  41 82 00 C0 */	beq lbl_801E365C
/* 801E35A0 001E0500  C0 3D 03 24 */	lfs f1, 0x324(r29)
/* 801E35A4 001E0504  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E35A8 001E0508  C3 FD 03 2C */	lfs f31, 0x32c(r29)
/* 801E35AC 001E050C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801E35B0 001E0510  40 81 00 98 */	ble lbl_801E3648
/* 801E35B4 001E0514  EC 01 F0 28 */	fsubs f0, f1, f30
/* 801E35B8 001E0518  38 81 00 14 */	addi r4, r1, 0x14
/* 801E35BC 001E051C  38 6D 91 E8 */	addi r3, r13, lbl_805A7DA8@sda21
/* 801E35C0 001E0520  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801E35C4 001E0524  4B E6 C1 6D */	bl "Max<f>__5CMathFRCfRCf"
/* 801E35C8 001E0528  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801E35CC 001E052C  C0 03 00 00 */	lfs f0, 0(r3)
/* 801E35D0 001E0530  38 61 00 08 */	addi r3, r1, 8
/* 801E35D4 001E0534  FC 60 10 90 */	fmr f3, f2
/* 801E35D8 001E0538  C0 22 AC F8 */	lfs f1, lbl_805ACA18@sda21(r2)
/* 801E35DC 001E053C  D0 1D 03 24 */	stfs f0, 0x324(r29)
/* 801E35E0 001E0540  C0 82 AC D8 */	lfs f4, lbl_805AC9F8@sda21(r2)
/* 801E35E4 001E0544  48 17 FE 09 */	bl __ct__6CColorFffff
/* 801E35E8 001E0548  C0 22 AC DC */	lfs f1, lbl_805AC9FC@sda21(r2)
/* 801E35EC 001E054C  7C 7F 1B 78 */	mr r31, r3
/* 801E35F0 001E0550  C0 82 AC D8 */	lfs f4, lbl_805AC9F8@sda21(r2)
/* 801E35F4 001E0554  38 61 00 0C */	addi r3, r1, 0xc
/* 801E35F8 001E0558  FC 40 08 90 */	fmr f2, f1
/* 801E35FC 001E055C  FC 60 08 90 */	fmr f3, f1
/* 801E3600 001E0560  48 17 FD ED */	bl __ct__6CColorFffff
/* 801E3604 001E0564  C0 3D 03 24 */	lfs f1, 0x324(r29)
/* 801E3608 001E0568  7C 64 1B 78 */	mr r4, r3
/* 801E360C 001E056C  7F E5 FB 78 */	mr r5, r31
/* 801E3610 001E0570  38 61 00 10 */	addi r3, r1, 0x10
/* 801E3614 001E0574  48 17 FC 99 */	bl Lerp__6CColorFRC6CColorRC6CColorf
/* 801E3618 001E0578  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E361C 001E057C  90 1D 03 30 */	stw r0, 0x330(r29)
/* 801E3620 001E0580  88 1D 03 35 */	lbz r0, 0x335(r29)
/* 801E3624 001E0584  28 00 00 00 */	cmplwi r0, 0
/* 801E3628 001E0588  41 82 00 14 */	beq lbl_801E363C
/* 801E362C 001E058C  C0 22 AC F8 */	lfs f1, lbl_805ACA18@sda21(r2)
/* 801E3630 001E0590  C0 1D 03 24 */	lfs f0, 0x324(r29)
/* 801E3634 001E0594  EF E1 F8 3A */	fmadds f31, f1, f0, f31
/* 801E3638 001E0598  48 00 00 10 */	b lbl_801E3648
lbl_801E363C:
/* 801E363C 001E059C  C0 22 AD 0C */	lfs f1, lbl_805ACA2C@sda21(r2)
/* 801E3640 001E05A0  C0 1D 03 24 */	lfs f0, 0x324(r29)
/* 801E3644 001E05A4  EF E1 F8 3A */	fmadds f31, f1, f0, f31
lbl_801E3648:
/* 801E3648 001E05A8  FC 20 F0 90 */	fmr f1, f30
/* 801E364C 001E05AC  D3 FD 00 D0 */	stfs f31, 0xd0(r29)
/* 801E3650 001E05B0  7F A3 EB 78 */	mr r3, r29
/* 801E3654 001E05B4  7F C4 F3 78 */	mr r4, r30
/* 801E3658 001E05B8  4B E6 DA 61 */	bl Think__7CEntityFfR13CStateManager
lbl_801E365C:
/* 801E365C 001E05BC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801E3660 001E05C0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801E3664 001E05C4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801E3668 001E05C8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801E366C 001E05CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E3670 001E05D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801E3674 001E05D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801E3678 001E05D8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801E367C 001E05DC  7C 08 03 A6 */	mtlr r0
/* 801E3680 001E05E0  38 21 00 50 */	addi r1, r1, 0x50
/* 801E3684 001E05E4  4E 80 00 20 */	blr

.global PreThink__16CDestroyableRockFfR13CStateManager
PreThink__16CDestroyableRockFfR13CStateManager:
/* 801E3688 001E05E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E368C 001E05EC  7C 08 02 A6 */	mflr r0
/* 801E3690 001E05F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3694 001E05F4  4B E6 DA 29 */	bl PreThink__7CEntityFfR13CStateManager
/* 801E3698 001E05F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E369C 001E05FC  7C 08 03 A6 */	mtlr r0
/* 801E36A0 001E0600  38 21 00 10 */	addi r1, r1, 0x10
/* 801E36A4 001E0604  4E 80 00 20 */	blr

.global "__ct__16CDestroyableRockF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDatafRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersRC10CModelData"
"__ct__16CDestroyableRockF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDatafRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersRC10CModelData":
/* 801E36A8 001E0608  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801E36AC 001E060C  7C 08 02 A6 */	mflr r0
/* 801E36B0 001E0610  90 01 00 94 */	stw r0, 0x94(r1)
/* 801E36B4 001E0614  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801E36B8 001E0618  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801E36BC 001E061C  BE 61 00 4C */	stmw r19, 0x4c(r1)
/* 801E36C0 001E0620  A0 04 00 00 */	lhz r0, 0(r4)
/* 801E36C4 001E0624  7D 37 4B 78 */	mr r23, r9
/* 801E36C8 001E0628  FF E0 08 90 */	fmr f31, f1
/* 801E36CC 001E062C  7C 7F 1B 78 */	mr r31, r3
/* 801E36D0 001E0630  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801E36D4 001E0634  7C B3 2B 78 */	mr r19, r5
/* 801E36D8 001E0638  83 21 00 98 */	lwz r25, 0x98(r1)
/* 801E36DC 001E063C  7C D4 33 78 */	mr r20, r6
/* 801E36E0 001E0640  83 41 00 9C */	lwz r26, 0x9c(r1)
/* 801E36E4 001E0644  7C F5 3B 78 */	mr r21, r7
/* 801E36E8 001E0648  83 61 00 A0 */	lwz r27, 0xa0(r1)
/* 801E36EC 001E064C  7D 16 43 78 */	mr r22, r8
/* 801E36F0 001E0650  83 81 00 A4 */	lwz r28, 0xa4(r1)
/* 801E36F4 001E0654  7D 58 53 78 */	mr r24, r10
/* 801E36F8 001E0658  83 A1 00 A8 */	lwz r29, 0xa8(r1)
/* 801E36FC 001E065C  7E E4 BB 78 */	mr r4, r23
/* 801E3700 001E0660  83 C1 00 AC */	lwz r30, 0xac(r1)
/* 801E3704 001E0664  38 61 00 24 */	addi r3, r1, 0x24
/* 801E3708 001E0668  4B F3 1E BD */	bl GetBounds__10CModelDataCFv
/* 801E370C 001E066C  93 01 00 08 */	stw r24, 8(r1)
/* 801E3710 001E0670  FC 20 F8 90 */	fmr f1, f31
/* 801E3714 001E0674  C0 42 AD 34 */	lfs f2, lbl_805ACA54@sda21(r2)
/* 801E3718 001E0678  7F E3 FB 78 */	mr r3, r31
/* 801E371C 001E067C  93 21 00 0C */	stw r25, 0xc(r1)
/* 801E3720 001E0680  7E 65 9B 78 */	mr r5, r19
/* 801E3724 001E0684  C0 62 AD 14 */	lfs f3, lbl_805ACA34@sda21(r2)
/* 801E3728 001E0688  93 41 00 10 */	stw r26, 0x10(r1)
/* 801E372C 001E068C  7E 86 A3 78 */	mr r6, r20
/* 801E3730 001E0690  7E A7 AB 78 */	mr r7, r21
/* 801E3734 001E0694  7E C8 B3 78 */	mr r8, r22
/* 801E3738 001E0698  93 61 00 14 */	stw r27, 0x14(r1)
/* 801E373C 001E069C  7E E9 BB 78 */	mr r9, r23
/* 801E3740 001E06A0  38 81 00 20 */	addi r4, r1, 0x20
/* 801E3744 001E06A4  39 41 00 24 */	addi r10, r1, 0x24
/* 801E3748 001E06A8  93 81 00 18 */	stw r28, 0x18(r1)
/* 801E374C 001E06AC  4B EB F6 B5 */	bl "__ct__3CAiF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC6CAABoxfRC11CHealthInfoRC20CDamageVulnerabilityRC13CMaterialListUiRC16CActorParametersff"
/* 801E3750 001E06B0  3C 60 80 3E */	lis r3, lbl_803E6074@ha
/* 801E3754 001E06B4  7F A4 EB 78 */	mr r4, r29
/* 801E3758 001E06B8  38 03 60 74 */	addi r0, r3, lbl_803E6074@l
/* 801E375C 001E06BC  38 7F 02 D8 */	addi r3, r31, 0x2d8
/* 801E3760 001E06C0  90 1F 00 00 */	stw r0, 0(r31)
/* 801E3764 001E06C4  4B E3 56 29 */	bl __ct__10CModelDataFRC10CModelData
/* 801E3768 001E06C8  C0 02 AC DC */	lfs f0, lbl_805AC9FC@sda21(r2)
/* 801E376C 001E06CC  38 7F 03 30 */	addi r3, r31, 0x330
/* 801E3770 001E06D0  C0 22 AC D8 */	lfs f1, lbl_805AC9F8@sda21(r2)
/* 801E3774 001E06D4  D0 1F 03 24 */	stfs f0, 0x324(r31)
/* 801E3778 001E06D8  FC 40 08 90 */	fmr f2, f1
/* 801E377C 001E06DC  D0 1F 03 28 */	stfs f0, 0x328(r31)
/* 801E3780 001E06E0  FC 60 08 90 */	fmr f3, f1
/* 801E3784 001E06E4  FC 80 08 90 */	fmr f4, f1
/* 801E3788 001E06E8  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 801E378C 001E06EC  D0 1F 03 2C */	stfs f0, 0x32c(r31)
/* 801E3790 001E06F0  48 17 FC 5D */	bl __ct__6CColorFffff
/* 801E3794 001E06F4  38 C0 00 00 */	li r6, 0
/* 801E3798 001E06F8  7F C0 00 34 */	cntlzw r0, r30
/* 801E379C 001E06FC  98 DF 03 34 */	stb r6, 0x334(r31)
/* 801E37A0 001E0700  54 00 D9 7E */	srwi r0, r0, 5
/* 801E37A4 001E0704  38 A0 00 01 */	li r5, 1
/* 801E37A8 001E0708  7F E3 FB 78 */	mr r3, r31
/* 801E37AC 001E070C  98 DF 03 35 */	stb r6, 0x335(r31)
/* 801E37B0 001E0710  38 80 00 00 */	li r4, 0
/* 801E37B4 001E0714  C0 18 00 00 */	lfs f0, 0(r24)
/* 801E37B8 001E0718  D0 1F 03 38 */	stfs f0, 0x338(r31)
/* 801E37BC 001E071C  C0 18 00 04 */	lfs f0, 4(r24)
/* 801E37C0 001E0720  D0 1F 03 3C */	stfs f0, 0x33c(r31)
/* 801E37C4 001E0724  98 1F 03 41 */	stb r0, 0x341(r31)
/* 801E37C8 001E0728  88 1F 00 E7 */	lbz r0, 0xe7(r31)
/* 801E37CC 001E072C  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 801E37D0 001E0730  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801E37D4 001E0734  88 1F 02 EC */	lbz r0, 0x2ec(r31)
/* 801E37D8 001E0738  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801E37DC 001E073C  98 1F 02 EC */	stb r0, 0x2ec(r31)
/* 801E37E0 001E0740  4B E6 F5 8D */	bl CreateShadow__6CActorFb
/* 801E37E4 001E0744  7F E3 FB 78 */	mr r3, r31
/* 801E37E8 001E0748  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801E37EC 001E074C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801E37F0 001E0750  BA 61 00 4C */	lmw r19, 0x4c(r1)
/* 801E37F4 001E0754  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801E37F8 001E0758  7C 08 03 A6 */	mtlr r0
/* 801E37FC 001E075C  38 21 00 90 */	addi r1, r1, 0x90
/* 801E3800 001E0760  4E 80 00 20 */	blr

.global __dt__16CDestroyableRockFv
__dt__16CDestroyableRockFv:
/* 801E3804 001E0764  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E3808 001E0768  7C 08 02 A6 */	mflr r0
/* 801E380C 001E076C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E3810 001E0770  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E3814 001E0774  7C 9F 23 78 */	mr r31, r4
/* 801E3818 001E0778  93 C1 00 08 */	stw r30, 8(r1)
/* 801E381C 001E077C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801E3820 001E0780  41 82 00 38 */	beq lbl_801E3858
/* 801E3824 001E0784  3C 80 80 3E */	lis r4, lbl_803E6074@ha
/* 801E3828 001E0788  38 7E 02 D8 */	addi r3, r30, 0x2d8
/* 801E382C 001E078C  38 04 60 74 */	addi r0, r4, lbl_803E6074@l
/* 801E3830 001E0790  38 80 FF FF */	li r4, -1
/* 801E3834 001E0794  90 1E 00 00 */	stw r0, 0(r30)
/* 801E3838 001E0798  4B F3 32 15 */	bl __dt__10CModelDataFv
/* 801E383C 001E079C  7F C3 F3 78 */	mr r3, r30
/* 801E3840 001E07A0  38 80 00 00 */	li r4, 0
/* 801E3844 001E07A4  4B EB F5 3D */	bl __dt__3CAiFv
/* 801E3848 001E07A8  7F E0 07 35 */	extsh. r0, r31
/* 801E384C 001E07AC  40 81 00 0C */	ble lbl_801E3858
/* 801E3850 001E07B0  7F C3 F3 78 */	mr r3, r30
/* 801E3854 001E07B4  48 13 20 DD */	bl Free__7CMemoryFPCv
lbl_801E3858:
/* 801E3858 001E07B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E385C 001E07BC  7F C3 F3 78 */	mr r3, r30
/* 801E3860 001E07C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E3864 001E07C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801E3868 001E07C8  7C 08 03 A6 */	mtlr r0
/* 801E386C 001E07CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801E3870 001E07D0  4E 80 00 20 */	blr

.global __sinit_CThardus_cpp
__sinit_CThardus_cpp:
/* 801E3874 001E07D4  C0 02 AD 30 */	lfs f0, lbl_805ACA50@sda21(r2)
/* 801E3878 001E07D8  3C 60 80 57 */	lis r3, lbl_8057206C@ha
/* 801E387C 001E07DC  C0 42 AC DC */	lfs f2, lbl_805AC9FC@sda21(r2)
/* 801E3880 001E07E0  38 83 20 6C */	addi r4, r3, lbl_8057206C@l
/* 801E3884 001E07E4  C0 22 AD 00 */	lfs f1, lbl_805ACA20@sda21(r2)
/* 801E3888 001E07E8  38 6D A4 B8 */	addi r3, r13, lbl_805A9078@sda21
/* 801E388C 001E07EC  D0 44 00 00 */	stfs f2, 0(r4)
/* 801E3890 001E07F0  D0 44 00 04 */	stfs f2, 4(r4)
/* 801E3894 001E07F4  D0 24 00 08 */	stfs f1, 8(r4)
/* 801E3898 001E07F8  D0 0D A4 B8 */	stfs f0, lbl_805A9078@sda21(r13)
/* 801E389C 001E07FC  D0 23 00 04 */	stfs f1, 4(r3)
/* 801E38A0 001E0800  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AC9E8
lbl_805AC9E8:
	# ROM: 0x3F9288
	.4byte 0x803D1CB8

.global lbl_805AC9EC
lbl_805AC9EC:
	# ROM: 0x3F928C
	.float 0.75

.global lbl_805AC9F0
lbl_805AC9F0:
	# ROM: 0x3F9290
	.float 0.25

.global lbl_805AC9F4
lbl_805AC9F4:
	# ROM: 0x3F9294
	.float 2.0

.global lbl_805AC9F8
lbl_805AC9F8:
	# ROM: 0x3F9298
	.float 1.0

.global lbl_805AC9FC
lbl_805AC9FC:
	# ROM: 0x3F929C
	.4byte 0

.global lbl_805ACA00
lbl_805ACA00:
	# ROM: 0x3F92A0
	.float 2.0

.global lbl_805ACA04
lbl_805ACA04:
	# ROM: 0x3F92A4
	.float 1.5

.global lbl_805ACA08
lbl_805ACA08:
	# ROM: 0x3F92A8
	.float 0.1

.global lbl_805ACA0C
lbl_805ACA0C:
	# ROM: 0x3F92AC
	.4byte 0x447A0000

.global lbl_805ACA10
lbl_805ACA10:
	# ROM: 0x3F92B0
	.float 0.15

.global lbl_805ACA14
lbl_805ACA14:
	# ROM: 0x3F92B4
	.float 4.0

.global lbl_805ACA18
lbl_805ACA18:
	# ROM: 0x3F92B8
	.float 0.5

.global lbl_805ACA1C
lbl_805ACA1C:
	# ROM: 0x3F92BC
	.4byte 0x42200000

.global lbl_805ACA20
lbl_805ACA20:
	# ROM: 0x3F92C0
	.4byte 0x41200000

.global lbl_805ACA24
lbl_805ACA24:
	# ROM: 0x3F92C4
	.4byte 0x41480000

.global lbl_805ACA28
lbl_805ACA28:
	# ROM: 0x3F92C8
	.float 1.1920929E-7

.global lbl_805ACA2C
lbl_805ACA2C:
	# ROM: 0x3F92CC
	.float 0.25

.global lbl_805ACA30
lbl_805ACA30:
	# ROM: 0x3F92D0
	.float 0.75

.global lbl_805ACA34
lbl_805ACA34:
	# ROM: 0x3F92D4
	.4byte 0x3F4CCCCD

.global lbl_805ACA38
lbl_805ACA38:
	# ROM: 0x3F92D8
	.float 5.0

.global lbl_805ACA3C
lbl_805ACA3C:
	# ROM: 0x3F92DC
	.float 0.9

.global lbl_805ACA40
lbl_805ACA40:
	# ROM: 0x3F92E0
	.4byte 0x43300000
	.4byte 0

.global lbl_805ACA48
lbl_805ACA48:
	# ROM: 0x3F92E8
	.float 0.001

.global lbl_805ACA4C
lbl_805ACA4C:
	# ROM: 0x3F92EC
	.4byte 0x3F8CCCCD

.global lbl_805ACA50
lbl_805ACA50:
	# ROM: 0x3F92F0
	.float 1000000.0

.global lbl_805ACA54
lbl_805ACA54:
	# ROM: 0x3F92F4
	.float 0.3

.global lbl_805ACA58
lbl_805ACA58:
	# ROM: 0x3F92F8
	.4byte 0x3E4CCCCC

.global lbl_805ACA5C
lbl_805ACA5C:
	# ROM: 0x3F92FC
	.float 0.4

.global lbl_805ACA60
lbl_805ACA60:
	# ROM: 0x3F9300
	.4byte 0x3F060A92

.global lbl_805ACA64
lbl_805ACA64:
	# ROM: 0x3F9304
	.4byte 0x42C80000

.global lbl_805ACA68
lbl_805ACA68:
	# ROM: 0x3F9308
	.4byte 0x41A00000

.global lbl_805ACA6C
lbl_805ACA6C:
	# ROM: 0x3F930C
	.float 6.2831855

.global lbl_805ACA70
lbl_805ACA70:
	# ROM: 0x3F9310
	.4byte 0x42FA0000

.global lbl_805ACA74
lbl_805ACA74:
	# ROM: 0x3F9314
	.float 2.5

.global lbl_805ACA78
lbl_805ACA78:
	# ROM: 0x3F9318
	.4byte 0xC0E00000

.global lbl_805ACA7C
lbl_805ACA7C:
	# ROM: 0x3F931C
	.4byte 0xC0A00000

.global lbl_805ACA80
lbl_805ACA80:
	# ROM: 0x3F9320
	.float 0.017453292

.global lbl_805ACA84
lbl_805ACA84:
	# ROM: 0x3F9324
	.4byte 0x40C00000

.global lbl_805ACA88
lbl_805ACA88:
	# ROM: 0x3F9328
	.float -1.0

.global lbl_805ACA8C
lbl_805ACA8C:
	# ROM: 0x3F932C
	.4byte 0x3F3BA866

.global lbl_805ACA90
lbl_805ACA90:
	# ROM: 0x3F9330
	.float 1.25

.global lbl_805ACA94
lbl_805ACA94:
	# ROM: 0x3F9334
	.4byte 0x47C35000

.global lbl_805ACA98
lbl_805ACA98:
	# ROM: 0x3F9338
	.4byte 0x41F00000
	.4byte 0


.section .rodata
.global lbl_803D1BA0
lbl_803D1BA0:
	# ROM: 0x3CEBA0
	.4byte 0x803D1CBF
	.4byte 0x803D1CC6
	.4byte 0x803D1CD0
	.4byte 0x803D1CD8
	.4byte 0x803D1CDE
	.4byte 0x803D1CF3
	.4byte 0x803D1CB8

.global lbl_803D1BBC
lbl_803D1BBC:
	# ROM: 0x3CEBBC
	.4byte 0x803D1CBF
	.4byte 0x803D1D04
	.4byte 0x803D1D1B
	.4byte 0x803D1D32
	.4byte 0x803D1D48
	.4byte 0x803D1D63
	.4byte 0x803D1D7E

.global lbl_803D1BD8
lbl_803D1BD8:
	# ROM: 0x3CEBD8
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x41300000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x41100000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0
	.4byte 0x40E00000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0xC0400000
	.4byte 0x41100000
	.4byte 0
	.4byte 0x803D1D92
	.float 4.0
	.4byte 0x40E00000
	.4byte 0
	.4byte 0x803D1D92
	.4byte 0xC0800000
	.float 8.0
	.4byte 0
	.4byte 0x803D1CBF
	.float 1.0
	.4byte 0x803D1D04
	.float 1.5
	.4byte 0x803D1D1B
	.float 1.5
	.4byte 0x803D1D32
	.float 1.0
	.4byte 0x803D1D48
	.float 2.5
	.4byte 0x803D1D63
	.float 1.5
	.4byte 0x803D1D7E
	.float 1.5
	.4byte 0x803D1D93
	.float 0.75
	.4byte 0x803D1DAD
	.float 0.75
	.4byte 0x803D1DC7
	.float 0.75
	.4byte 0x803D1DDC
	.4byte 0x40100000
	.4byte 0x803D1DF2
	.float 2.0
	.4byte 0x803D1E08
	.4byte 0x40400000
	.4byte 0x40400000
	.float 1.0
	.4byte 0x803D1E1E
	.4byte 0x40400000
	.float 2.0
	.4byte 0x40400000

.global lbl_803D1CB8
lbl_803D1CB8:
	# ROM: 0x3CECB8
	.asciz "Neck_1"
	.byte 0x52
	.asciz "_knee"
	.byte 0x52, 0x5F
	.asciz "forearm"
	.asciz "L_elbow"
	.asciz "L_hip"
	.byte 0x52, 0x5F
	.asciz "collar_BigRock_SDK"
	.byte 0x63
	.asciz "ollar_rock4_SDK"
	.asciz "R_Elbow_Collision_LCTR"
	.byte 0x4C
	.asciz "_Elbow_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Knee_Collision_LCTR"
	.asciz "R_Back_Rock_Collision_LCTR"
	.byte 0x4C
	.asciz "_Back_Rock_Collision_LCTR"
	.byte 0x48, 0x65
	.asciz "ad_Collision_LCTR"
	.byte 0x00, 0x52
	.asciz "_Shoulder_Collision_LCTR"
	.byte 0x4C, 0x5F, 0x53
	.asciz "houlder_Collision_LCTR"
	.byte 0x53
	.asciz "pine_Collision_LCTR"
	.asciz "R_Hand_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Hand_Collision_LCTR"
	.asciz "R_Foot_Collision_LCTR"
	.byte 0x4C, 0x5F
	.asciz "Foot_Collision_LCTR"
	.asciz "center_LCTR"
	.asciz "ROCK_EFFECT"
	.4byte 0x2D005375
	.4byte 0x636B0044
	.asciz "oubleSnap"
	.byte 0x46, 0x6C
	.asciz "inch"
	.byte 0x46, 0x61, 0x69
	.4byte 0x6E74003F
	.asciz "?(??)"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x52, 0x5F
	.asciz "ankle"
	.byte 0x54, 0x68
	.asciz "ermal_Spot_2"
	.balign 4
	.4byte 0


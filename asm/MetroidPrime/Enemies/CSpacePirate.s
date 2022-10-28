.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CSpacePirate_cpp

.section .data
.balign 8

.global lbl_803E0700
lbl_803E0700:
	# ROM: 0x3DD700
	.4byte lbl_803CF470
	.4byte lbl_803CF578
	.4byte lbl_803CF6AC
	.4byte lbl_803CF788
	.4byte lbl_803CF838
	.4byte lbl_803CF940
	.4byte lbl_803CF9F0
	.4byte lbl_803CFAF8
	.4byte lbl_803CFC2C
	.4byte lbl_803CFD08
	.4byte lbl_803CFDB8
	.4byte lbl_803CFEC0
	.4byte 0

.global lbl_803E0734
lbl_803E0734:
	# ROM: 0x3DD734
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJump__10CPatternedFR13CStateManageri

.global lbl_803E0740
lbl_803E0740:
	# ROM: 0x3DD740
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTaunt__10CPatternedFR13CStateManageri

.global lbl_803E074C
lbl_803E074C:
	# ROM: 0x3DD74C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryGetUp__10CPatternedFR13CStateManageri

.global lbl_803E0758
lbl_803E0758:
	# ROM: 0x3DD758
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri

.global lbl_803E0764
lbl_803E0764:
	# ROM: 0x3DD764
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryCover__10CPatternedFR13CStateManageri

.global lbl_803E0770
lbl_803E0770:
	# ROM: 0x3DD770
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryCover__10CPatternedFR13CStateManageri

.global lbl_803E077C
lbl_803E077C:
	# ROM: 0x3DD77C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E0788
lbl_803E0788:
	# ROM: 0x3DD788
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryMeleeAttack__10CPatternedFR13CStateManageri

.global lbl_803E0794
lbl_803E0794:
	# ROM: 0x3DD794
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJump__10CPatternedFR13CStateManageri

.global lbl_803E07A0
lbl_803E07A0:
	# ROM: 0x3DD7A0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryTurn__10CPatternedFR13CStateManageri
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryDodge__10CPatternedFR13CStateManageri
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryRollingDodge__10CPatternedFR13CStateManageri
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryBreakDodge__10CPatternedFR13CStateManageri

.global lbl_803E07D0
lbl_803E07D0:
	# ROM: 0x3DD7D0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryWallHang__10CPatternedFR13CStateManageri

.global lbl_803E07DC
lbl_803E07DC:
	# ROM: 0x3DD7DC
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJump__10CPatternedFR13CStateManageri

.global lbl_803E07E8
lbl_803E07E8:
	# ROM: 0x3DD7E8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E07F4
lbl_803E07F4:
	# ROM: 0x3DD7F4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryJumpInLoop__10CPatternedFR13CStateManageri

.global lbl_803E0800
lbl_803E0800:
	# ROM: 0x3DD800
	.4byte 0
	.4byte 0
	.4byte __dt__12CSpacePirateFv
	.4byte Accept__12CSpacePirateFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CSpacePirateFfR13CStateManager
	.4byte AcceptScriptMsg__12CSpacePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFUc
	.4byte PreRender__12CSpacePirateFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CSpacePirateCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__12CSpacePirateFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__12CSpacePirateFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__12CSpacePirateCFRC13CStateManager
	.4byte DoUserAnimEvent__12CSpacePirateFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__12CSpacePirateFRC9CVector3fR13CStateManager
	.4byte KnockBack__12CSpacePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__12CSpacePirateCFv
	.4byte Listen__12CSpacePirateFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__12CSpacePirateCFv
	.4byte Patrol__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte PathFind__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Halt__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Generate__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Deactivate__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Attack__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Shuffle__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte TurnAround__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Skid__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Active__3CAiFR13CStateManager9EStateMsgf
	.4byte InActive__3CAiFR13CStateManager9EStateMsgf
	.4byte CoverAttack__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Crouch__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte FadeIn__3CAiFR13CStateManager9EStateMsgf
	.4byte FadeOut__3CAiFR13CStateManager9EStateMsgf
	.4byte GetUp__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Taunt__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Lurk__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Approach__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte WallHang__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte WallDetach__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Enraged__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte PathFindEx__12CSpacePirateFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__12CSpacePirateFR13CStateManagerf
	.4byte OffLine__12CSpacePirateFR13CStateManagerf
	.4byte Attacked__12CSpacePirateFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__12CSpacePirateFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__10CPatternedFR13CStateManagerf
	.4byte SpotPlayer__12CSpacePirateFR13CStateManagerf
	.4byte PlayerSpot__10CPatternedFR13CStateManagerf
	.4byte PatternOver__12CSpacePirateFR13CStateManagerf
	.4byte PatternShagged__12CSpacePirateFR13CStateManagerf
	.4byte HasAttackPattern__10CPatternedFR13CStateManagerf
	.4byte HasPatrolPath__10CPatternedFR13CStateManagerf
	.4byte HasRetreatPattern__10CPatternedFR13CStateManagerf
	.4byte Delay__10CPatternedFR13CStateManagerf
	.4byte RandomDelay__10CPatternedFR13CStateManagerf
	.4byte FixedDelay__10CPatternedFR13CStateManagerf
	.4byte Default__10CPatternedFR13CStateManagerf
	.4byte AnimOver__12CSpacePirateFR13CStateManagerf
	.4byte ShouldAttack__12CSpacePirateFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__10CPatternedFR13CStateManagerf
	.4byte ShouldTurn__3CAiFR13CStateManagerf
	.4byte HitSomething__3CAiFR13CStateManagerf
	.4byte ShouldJumpBack__12CSpacePirateFR13CStateManagerf
	.4byte Stuck__12CSpacePirateFR13CStateManagerf
	.4byte NoPathNodes__10CPatternedFR13CStateManagerf
	.4byte Landed__12CSpacePirateFR13CStateManagerf
	.4byte HearShot__12CSpacePirateFR13CStateManagerf
	.4byte HearPlayer__12CSpacePirateFR13CStateManagerf
	.4byte CoverCheck__12CSpacePirateFR13CStateManagerf
	.4byte CoverFind__12CSpacePirateFR13CStateManagerf
	.4byte CoverBlown__12CSpacePirateFR13CStateManagerf
	.4byte CoverNearlyBlown__12CSpacePirateFR13CStateManagerf
	.4byte CoveringFire__12CSpacePirateFR13CStateManagerf
	.4byte GotUp__3CAiFR13CStateManagerf
	.4byte LineOfSight__12CSpacePirateFR13CStateManagerf
	.4byte AggressionCheck__12CSpacePirateFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__12CSpacePirateFR13CStateManagerf
	.4byte ShouldRetreat__12CSpacePirateFR13CStateManagerf
	.4byte ShouldCrouch__12CSpacePirateFR13CStateManagerf
	.4byte ShouldMove__12CSpacePirateFR13CStateManagerf
	.4byte ShotAt__12CSpacePirateFR13CStateManagerf
	.4byte HasTargetingPoint__12CSpacePirateFR13CStateManagerf
	.4byte ShouldWallHang__12CSpacePirateFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__12CSpacePirateFR13CStateManagerf
	.4byte BreakAttack__12CSpacePirateFR13CStateManagerf
	.4byte ShouldStrafe__12CSpacePirateFR13CStateManagerf
	.4byte ShouldSpecialAttack__12CSpacePirateFR13CStateManagerf
	.4byte LostInterest__12CSpacePirateFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__12CSpacePirateFR13CStateManagerf
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
	.4byte GetSearchPath__12CSpacePirateCFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__12CSpacePirateCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__12CSpacePirateCFv
	.4byte ProjectileInfo__12CSpacePirateFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E0ACC
lbl_803E0ACC:
	# ROM: 0x3DDACC
	.4byte lbl_80121F58
	.4byte lbl_80122084
	.4byte lbl_80122084
	.4byte lbl_80122084
	.4byte lbl_80122058
	.4byte lbl_80122040
	.4byte lbl_80121F1C
	.4byte lbl_80121F40
	.4byte lbl_80121F58
	.4byte lbl_80121FB0
	.4byte lbl_80122030

.global lbl_803E0AF8
lbl_803E0AF8:
	# ROM: 0x3DDAF8
	.4byte lbl_8012A298
	.4byte lbl_80129F34
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A040
	.4byte lbl_8012A2C0
	.4byte lbl_8012A2D4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A1FC
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A148
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A060
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_80129F64
	.4byte lbl_8012A298
	.4byte lbl_80129DD4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A2E4
	.4byte lbl_8012A0F0

.global lbl_803E0B8C
lbl_803E0B8C:
	# ROM: 0x3DDB8C
	.4byte 0
	.4byte 0
	.4byte __dt__11CBCCoverCmdFv

.global lbl_803E0B98
lbl_803E0B98:
	# ROM: 0x3DDB98
	.4byte 0
	.4byte 0
	.4byte __dt__14CBCWallHangCmdFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803E0BE0
lbl_803E0BE0:
	# ROM: 0x3DDBE0
	.4byte 0
	.4byte 0
	.4byte Prime__14CPirateRagDollFR13CStateManagerRC12CTransform4fR10CModelData
	.4byte Update__14CPirateRagDollFR13CStateManagerf
	.4byte PreRender__14CPirateRagDollFRC9CVector3fR10CModelData
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7650
lbl_805A7650:
	# ROM: 0x3F4FF0
	.4byte 0x00000013

.global lbl_805A7654
lbl_805A7654:
	# ROM: 0x3F4FF4
	.byte 0xFF

.global lbl_805A7655
lbl_805A7655:
	# ROM: 0x3F4FF5
	.byte 0xFF, 0x00, 0x00

.global lbl_805A7658
lbl_805A7658:
	# ROM: 0x3F4FF8
	.4byte 0x42FE0000

.global lbl_805A765C
lbl_805A765C:
	# ROM: 0x3F4FFC
	.4byte 0x0000001C

.global lbl_805A7660
lbl_805A7660:
	# ROM: 0x3F5000
	.4byte 0

.global lbl_805A7664
lbl_805A7664:
	# ROM: 0x3F5004
	.float 1.0

.global lbl_805A7668
lbl_805A7668:
	# ROM: 0x3F5008
	.4byte 0x00000023

.global lbl_805A766C
lbl_805A766C:
	# ROM: 0x3F500C
	.4byte 0x00000013

.global lbl_805A7670
lbl_805A7670:
	# ROM: 0x3F5010
	.4byte 0x00000020

.global lbl_805A7674
lbl_805A7674:
	# ROM: 0x3F5014
	.4byte 0x00000012

.global lbl_805A7678
lbl_805A7678:
	# ROM: 0x3F5018
	.4byte 0x00000030

.global lbl_805A767C
lbl_805A767C:
	# ROM: 0x3F501C
	.4byte 0

.global lbl_805A7680
lbl_805A7680:
	# ROM: 0x3F5020
	.float 1.0

.global lbl_805A7684
lbl_805A7684:
	# ROM: 0x3F5024
	.4byte 0x00000013

.global lbl_805A7688
lbl_805A7688:
	# ROM: 0x3F5028
	.4byte 0x00000020

.global lbl_805A768C
lbl_805A768C:
	# ROM: 0x3F502C
	.4byte 0x00000012

.global lbl_805A7690
lbl_805A7690:
	# ROM: 0x3F5030
	.4byte 0

.global lbl_805A7694
lbl_805A7694:
	# ROM: 0x3F5034
	.4byte 0

.global lbl_805A7698
lbl_805A7698:
	# ROM: 0x3F5038
	.4byte 0

.global lbl_805A769C
lbl_805A769C:
	# ROM: 0x3F503C
	.4byte 0

.global lbl_805A76A0
lbl_805A76A0:
	# ROM: 0x3F5040
	.4byte 0
	.4byte 0

.section .bss
.balign 8

.lcomm lbl_8046C570, 0xA8, 4
.lcomm lbl_8046C618, 0x108, 4
.comm lbl_8056F85C, 0x18, 4
.comm lbl_8056F874, 0x20, 4 # MWCC .comm bug
.comm lbl_8056F894, 0x10, 4
.comm lbl_8056F8A4, 0x10, 4

.section .sdata2, "a"
.balign 8

.global lbl_805AB4D0
lbl_805AB4D0:
	# ROM: 0x3F7D70
	.4byte 0x42480000

.global lbl_805AB4D4
lbl_805AB4D4:
	# ROM: 0x3F7D74
	.4byte 0xC0400000

.global lbl_805AB4D8
lbl_805AB4D8:
	# ROM: 0x3F7D78
	.4byte 0x00000022

.global lbl_805AB4DC
lbl_805AB4DC:
	# ROM: 0x3F7D7C
	.4byte 0

.global lbl_805AB4E0
lbl_805AB4E0:
	# ROM: 0x3F7D80
	.4byte 0xFEFFFFFF

.global lbl_805AB4E4
lbl_805AB4E4:
	# ROM: 0x3F7D84
	.4byte 0xBEAAAAAB

.global lbl_805AB4E8
lbl_805AB4E8:
	# ROM: 0x3F7D88
	.float 0.9

.global lbl_805AB4EC
lbl_805AB4EC:
	# ROM: 0x3F7D8C
	.float 0.2

.global lbl_805AB4F0
lbl_805AB4F0:
	# ROM: 0x3F7D90
	.float 0.5

.global lbl_805AB4F4
lbl_805AB4F4:
	# ROM: 0x3F7D94
	.4byte 0xBECCCCCD

.global lbl_805AB4F8
lbl_805AB4F8:
	# ROM: 0x3F7D98
	.float 1.0

.global lbl_805AB4FC
lbl_805AB4FC:
	# ROM: 0x3F7D9C
	.float 2.0

.global lbl_805AB500
lbl_805AB500:
	# ROM: 0x3F7DA0
	.4byte 0x3B808081

.global lbl_805AB504
lbl_805AB504:
	# ROM: 0x3F7DA4
	.float 255.0

.global lbl_805AB508
lbl_805AB508:
	# ROM: 0x3F7DA8
	.4byte 0x3DA3D70A

.global lbl_805AB50C
lbl_805AB50C:
	# ROM: 0x3F7DAC
	.float 0.3

.global lbl_805AB510
lbl_805AB510:
	# ROM: 0x3F7DB0
	.float 0.25

.global lbl_805AB514
lbl_805AB514:
	# ROM: 0x3F7DB4
	.float 0.001

.global lbl_805AB518
lbl_805AB518:
	# ROM: 0x3F7DB8
	.4byte 0x3D4CCCCD

.global lbl_805AB51C
lbl_805AB51C:
	# ROM: 0x3F7DBC
	.4byte 0xBF4CCCCD

.global lbl_805AB520
lbl_805AB520:
	# ROM: 0x3F7DC0
	.4byte 0x3F34FDF4

.global lbl_805AB524
lbl_805AB524:
	# ROM: 0x3F7DC4
	.4byte 0x40C00000

.global lbl_805AB528
lbl_805AB528:
	# ROM: 0x3F7DC8
	.float 0.1

.global lbl_805AB52C
lbl_805AB52C:
	# ROM: 0x3F7DCC
	.float 1.5

.global lbl_805AB530
lbl_805AB530:
	# ROM: 0x3F7DD0
	.4byte 0x7F7FFFFF

.global lbl_805AB534
lbl_805AB534:
	# ROM: 0x3F7DD4
	.4byte 0x41100000

.global lbl_805AB538
lbl_805AB538:
	# ROM: 0x3F7DD8
	.4byte 0x447A0000

.global lbl_805AB53C
lbl_805AB53C:
	# ROM: 0x3F7DDC
	.float 5.0

.global lbl_805AB540
lbl_805AB540:
	# ROM: 0x3F7DE0
	.4byte 0x41200000

.global lbl_805AB544
lbl_805AB544:
	# ROM: 0x3F7DE4
	.4byte 0x40400000

.global lbl_805AB548
lbl_805AB548:
	# ROM: 0x3F7DE8
	.float 4.0

.global lbl_805AB54C
lbl_805AB54C:
	# ROM: 0x3F7DEC
	.float 0.15

.global lbl_805AB550
lbl_805AB550:
	# ROM: 0x3F7DF0
	.4byte 0x3EA8F5C3

.global lbl_805AB554
lbl_805AB554:
	# ROM: 0x3F7DF4
	.4byte 0x3F4CCCCD

.global lbl_805AB558
lbl_805AB558:
	# ROM: 0x3F7DF8
	.4byte 0x41C80000

.global lbl_805AB55C
lbl_805AB55C:
	# ROM: 0x3F7DFC
	.float 15.0

.global lbl_805AB560
lbl_805AB560:
	# ROM: 0x3F7E00
	.4byte 0x3F28F5C3

.global lbl_805AB564
lbl_805AB564:
	# ROM: 0x3F7E04
	.4byte 0xBDFBE76D

.global lbl_805AB568
lbl_805AB568:
	# ROM: 0x3F7E08
	.float 0.75

.global lbl_805AB56C
lbl_805AB56C:
	# ROM: 0x3F7E0C
	.4byte 0x42C80000

.global lbl_805AB570
lbl_805AB570:
	# ROM: 0x3F7E10
	.float 1.25

.global lbl_805AB574
lbl_805AB574:
	# ROM: 0x3F7E14
	.4byte 0x41A00000

.global lbl_805AB578
lbl_805AB578:
	# ROM: 0x3F7E18
	.4byte 0x3F5DB22D

.global lbl_805AB57C
lbl_805AB57C:
	# ROM: 0x3F7E1C
	.4byte 0x3F8CCCCD

.global lbl_805AB580
lbl_805AB580:
	# ROM: 0x3F7E20
	.4byte 0x3F70624E

.global lbl_805AB584
lbl_805AB584:
	# ROM: 0x3F7E24
	.float 0.01

.global lbl_805AB588
lbl_805AB588:
	# ROM: 0x3F7E28
	.float -1.0

.global lbl_805AB58C
lbl_805AB58C:
	# ROM: 0x3F7E2C
	.4byte 0xBD4CCCCD

.global lbl_805AB590
lbl_805AB590:
	# ROM: 0x3F7E30
	.4byte 0x3F9C61AB

.global lbl_805AB594
lbl_805AB594:
	# ROM: 0x3F7E34
	.4byte 0x40490FDB

.global lbl_805AB598
lbl_805AB598:
	# ROM: 0x3F7E38
	.float 0.6

.global lbl_805AB59C
lbl_805AB59C:
	# ROM: 0x3F7E3C
	.float 8.0

.global lbl_805AB5A0
lbl_805AB5A0:
	# ROM: 0x3F7E40
	.4byte 0xBF9C61AA

.global lbl_805AB5A4
lbl_805AB5A4:
	# ROM: 0x3F7E44
	.4byte 0x3D800000

.global lbl_805AB5A8
lbl_805AB5A8:
	# ROM: 0x3F7E48
	.4byte 0x3EAA7EFA

.global lbl_805AB5AC
lbl_805AB5AC:
	# ROM: 0x3F7E4C
	.float 2.5

.global lbl_805AB5B0
lbl_805AB5B0:
	# ROM: 0x3F7E50
	.4byte 0x3E6353F8
	.4byte 0

.section .text, "ax"

.global __dt__12CSpacePirateFv
__dt__12CSpacePirateFv:
/* 80120518 0011D478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012051C 0011D47C  7C 08 02 A6 */	mflr r0
/* 80120520 0011D480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120524 0011D484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80120528 0011D488  7C 9F 23 78 */	mr r31, r4
/* 8012052C 0011D48C  93 C1 00 08 */	stw r30, 8(r1)
/* 80120530 0011D490  7C 7E 1B 79 */	or. r30, r3, r3
/* 80120534 0011D494  41 82 01 58 */	beq lbl_8012068C
/* 80120538 0011D498  3C 80 80 3E */	lis r4, lbl_803E0800@ha
/* 8012053C 0011D49C  38 7E 08 5C */	addi r3, r30, 0x85c
/* 80120540 0011D4A0  38 04 08 00 */	addi r0, r4, lbl_803E0800@l
/* 80120544 0011D4A4  38 80 FF FF */	li r4, -1
/* 80120548 0011D4A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8012054C 0011D4AC  48 00 01 5D */	bl sub_801206a8
/* 80120550 0011D4B0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80120554 0011D4B4  41 82 00 60 */	beq lbl_801205B4
/* 80120558 0011D4B8  34 1E 07 E0 */	addic. r0, r30, 0x7e0
/* 8012055C 0011D4BC  41 82 00 58 */	beq lbl_801205B4
/* 80120560 0011D4C0  80 BE 07 E0 */	lwz r5, 0x7e0(r30)
/* 80120564 0011D4C4  38 60 00 00 */	li r3, 0
/* 80120568 0011D4C8  2C 05 00 00 */	cmpwi r5, 0
/* 8012056C 0011D4CC  40 81 00 40 */	ble lbl_801205AC
/* 80120570 0011D4D0  2C 05 00 08 */	cmpwi r5, 8
/* 80120574 0011D4D4  38 85 FF F8 */	addi r4, r5, -8
/* 80120578 0011D4D8  40 81 00 20 */	ble lbl_80120598
/* 8012057C 0011D4DC  38 04 00 07 */	addi r0, r4, 7
/* 80120580 0011D4E0  54 00 E8 FE */	srwi r0, r0, 3
/* 80120584 0011D4E4  7C 09 03 A6 */	mtctr r0
/* 80120588 0011D4E8  2C 04 00 00 */	cmpwi r4, 0
/* 8012058C 0011D4EC  40 81 00 0C */	ble lbl_80120598
lbl_80120590:
/* 80120590 0011D4F0  38 63 00 08 */	addi r3, r3, 8
/* 80120594 0011D4F4  42 00 FF FC */	bdnz lbl_80120590
lbl_80120598:
/* 80120598 0011D4F8  7C 03 28 50 */	subf r0, r3, r5
/* 8012059C 0011D4FC  7C 09 03 A6 */	mtctr r0
/* 801205A0 0011D500  7C 03 28 00 */	cmpw r3, r5
/* 801205A4 0011D504  40 80 00 08 */	bge lbl_801205AC
lbl_801205A8:
/* 801205A8 0011D508  42 00 00 00 */	bdnz lbl_801205A8
lbl_801205AC:
/* 801205AC 0011D50C  38 00 00 00 */	li r0, 0
/* 801205B0 0011D510  90 1E 07 E0 */	stw r0, 0x7e0(r30)
lbl_801205B4:
/* 801205B4 0011D514  34 1E 07 64 */	addic. r0, r30, 0x764
/* 801205B8 0011D518  41 82 00 14 */	beq lbl_801205CC
/* 801205BC 0011D51C  34 1E 07 88 */	addic. r0, r30, 0x788
/* 801205C0 0011D520  41 82 00 0C */	beq lbl_801205CC
/* 801205C4 0011D524  38 00 00 00 */	li r0, 0
/* 801205C8 0011D528  98 1E 07 94 */	stb r0, 0x794(r30)
lbl_801205CC:
/* 801205CC 0011D52C  34 1E 06 60 */	addic. r0, r30, 0x660
/* 801205D0 0011D530  41 82 00 60 */	beq lbl_80120630
/* 801205D4 0011D534  34 1E 06 64 */	addic. r0, r30, 0x664
/* 801205D8 0011D538  41 82 00 58 */	beq lbl_80120630
/* 801205DC 0011D53C  80 BE 06 64 */	lwz r5, 0x664(r30)
/* 801205E0 0011D540  38 60 00 00 */	li r3, 0
/* 801205E4 0011D544  2C 05 00 00 */	cmpwi r5, 0
/* 801205E8 0011D548  40 81 00 40 */	ble lbl_80120628
/* 801205EC 0011D54C  2C 05 00 08 */	cmpwi r5, 8
/* 801205F0 0011D550  38 85 FF F8 */	addi r4, r5, -8
/* 801205F4 0011D554  40 81 00 20 */	ble lbl_80120614
/* 801205F8 0011D558  38 04 00 07 */	addi r0, r4, 7
/* 801205FC 0011D55C  54 00 E8 FE */	srwi r0, r0, 3
/* 80120600 0011D560  7C 09 03 A6 */	mtctr r0
/* 80120604 0011D564  2C 04 00 00 */	cmpwi r4, 0
/* 80120608 0011D568  40 81 00 0C */	ble lbl_80120614
lbl_8012060C:
/* 8012060C 0011D56C  38 63 00 08 */	addi r3, r3, 8
/* 80120610 0011D570  42 00 FF FC */	bdnz lbl_8012060C
lbl_80120614:
/* 80120614 0011D574  7C 03 28 50 */	subf r0, r3, r5
/* 80120618 0011D578  7C 09 03 A6 */	mtctr r0
/* 8012061C 0011D57C  7C 03 28 00 */	cmpw r3, r5
/* 80120620 0011D580  40 80 00 08 */	bge lbl_80120628
lbl_80120624:
/* 80120624 0011D584  42 00 00 00 */	bdnz lbl_80120624
lbl_80120628:
/* 80120628 0011D588  38 00 00 00 */	li r0, 0
/* 8012062C 0011D58C  90 1E 06 64 */	stw r0, 0x664(r30)
lbl_80120630:
/* 80120630 0011D590  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80120634 0011D594  41 82 00 3C */	beq lbl_80120670
/* 80120638 0011D598  34 7E 05 D4 */	addic. r3, r30, 0x5d4
/* 8012063C 0011D59C  41 82 00 18 */	beq lbl_80120654
/* 80120640 0011D5A0  28 03 00 00 */	cmplwi r3, 0
/* 80120644 0011D5A4  41 82 00 10 */	beq lbl_80120654
/* 80120648 0011D5A8  41 82 00 0C */	beq lbl_80120654
/* 8012064C 0011D5AC  38 80 00 00 */	li r4, 0
/* 80120650 0011D5B0  48 22 07 F1 */	bl __dt__6CTokenFv
lbl_80120654:
/* 80120654 0011D5B4  34 7E 05 88 */	addic. r3, r30, 0x588
/* 80120658 0011D5B8  41 82 00 18 */	beq lbl_80120670
/* 8012065C 0011D5BC  28 03 00 00 */	cmplwi r3, 0
/* 80120660 0011D5C0  41 82 00 10 */	beq lbl_80120670
/* 80120664 0011D5C4  41 82 00 0C */	beq lbl_80120670
/* 80120668 0011D5C8  38 80 00 00 */	li r4, 0
/* 8012066C 0011D5CC  48 22 07 D5 */	bl __dt__6CTokenFv
lbl_80120670:
/* 80120670 0011D5D0  7F C3 F3 78 */	mr r3, r30
/* 80120674 0011D5D4  38 80 00 00 */	li r4, 0
/* 80120678 0011D5D8  4B F5 6E F9 */	bl __dt__10CPatternedFv
/* 8012067C 0011D5DC  7F E0 07 35 */	extsh. r0, r31
/* 80120680 0011D5E0  40 81 00 0C */	ble lbl_8012068C
/* 80120684 0011D5E4  7F C3 F3 78 */	mr r3, r30
/* 80120688 0011D5E8  48 1F 52 A9 */	bl Free__7CMemoryFPCv
lbl_8012068C:
/* 8012068C 0011D5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120690 0011D5F0  7F C3 F3 78 */	mr r3, r30
/* 80120694 0011D5F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80120698 0011D5F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012069C 0011D5FC  7C 08 03 A6 */	mtlr r0
/* 801206A0 0011D600  38 21 00 10 */	addi r1, r1, 0x10
/* 801206A4 0011D604  4E 80 00 20 */	blr

.global sub_801206a8
sub_801206a8:
/* 801206A8 0011D608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801206AC 0011D60C  7C 08 02 A6 */	mflr r0
/* 801206B0 0011D610  90 01 00 14 */	stw r0, 0x14(r1)
/* 801206B4 0011D614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801206B8 0011D618  7C 9F 23 78 */	mr r31, r4
/* 801206BC 0011D61C  93 C1 00 08 */	stw r30, 8(r1)
/* 801206C0 0011D620  7C 7E 1B 79 */	or. r30, r3, r3
/* 801206C4 0011D624  41 82 00 20 */	beq lbl_801206E4
/* 801206C8 0011D628  80 7E 00 00 */	lwz r3, 0(r30)
/* 801206CC 0011D62C  38 80 00 01 */	li r4, 1
/* 801206D0 0011D630  48 00 00 31 */	bl __dt__14CPirateRagDollFv
/* 801206D4 0011D634  7F E0 07 35 */	extsh. r0, r31
/* 801206D8 0011D638  40 81 00 0C */	ble lbl_801206E4
/* 801206DC 0011D63C  7F C3 F3 78 */	mr r3, r30
/* 801206E0 0011D640  48 1F 52 51 */	bl Free__7CMemoryFPCv
lbl_801206E4:
/* 801206E4 0011D644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801206E8 0011D648  7F C3 F3 78 */	mr r3, r30
/* 801206EC 0011D64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801206F0 0011D650  83 C1 00 08 */	lwz r30, 8(r1)
/* 801206F4 0011D654  7C 08 03 A6 */	mtlr r0
/* 801206F8 0011D658  38 21 00 10 */	addi r1, r1, 0x10
/* 801206FC 0011D65C  4E 80 00 20 */	blr

.global __dt__14CPirateRagDollFv
__dt__14CPirateRagDollFv:
/* 80120700 0011D660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120704 0011D664  7C 08 02 A6 */	mflr r0
/* 80120708 0011D668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012070C 0011D66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80120710 0011D670  7C 7F 1B 79 */	or. r31, r3, r3
/* 80120714 0011D674  93 C1 00 08 */	stw r30, 8(r1)
/* 80120718 0011D678  7C 9E 23 78 */	mr r30, r4
/* 8012071C 0011D67C  41 82 00 E4 */	beq lbl_80120800
/* 80120720 0011D680  3C 60 80 3E */	lis r3, lbl_803E0BE0@ha
/* 80120724 0011D684  34 1F 00 9C */	addic. r0, r31, 0x9c
/* 80120728 0011D688  38 03 0B E0 */	addi r0, r3, lbl_803E0BE0@l
/* 8012072C 0011D68C  90 1F 00 00 */	stw r0, 0(r31)
/* 80120730 0011D690  41 82 00 58 */	beq lbl_80120788
/* 80120734 0011D694  80 BF 00 9C */	lwz r5, 0x9c(r31)
/* 80120738 0011D698  38 60 00 00 */	li r3, 0
/* 8012073C 0011D69C  2C 05 00 00 */	cmpwi r5, 0
/* 80120740 0011D6A0  40 81 00 40 */	ble lbl_80120780
/* 80120744 0011D6A4  2C 05 00 08 */	cmpwi r5, 8
/* 80120748 0011D6A8  38 85 FF F8 */	addi r4, r5, -8
/* 8012074C 0011D6AC  40 81 00 20 */	ble lbl_8012076C
/* 80120750 0011D6B0  38 04 00 07 */	addi r0, r4, 7
/* 80120754 0011D6B4  54 00 E8 FE */	srwi r0, r0, 3
/* 80120758 0011D6B8  7C 09 03 A6 */	mtctr r0
/* 8012075C 0011D6BC  2C 04 00 00 */	cmpwi r4, 0
/* 80120760 0011D6C0  40 81 00 0C */	ble lbl_8012076C
lbl_80120764:
/* 80120764 0011D6C4  38 63 00 08 */	addi r3, r3, 8
/* 80120768 0011D6C8  42 00 FF FC */	bdnz lbl_80120764
lbl_8012076C:
/* 8012076C 0011D6CC  7C 03 28 50 */	subf r0, r3, r5
/* 80120770 0011D6D0  7C 09 03 A6 */	mtctr r0
/* 80120774 0011D6D4  7C 03 28 00 */	cmpw r3, r5
/* 80120778 0011D6D8  40 80 00 08 */	bge lbl_80120780
lbl_8012077C:
/* 8012077C 0011D6DC  42 00 00 00 */	bdnz lbl_8012077C
lbl_80120780:
/* 80120780 0011D6E0  38 00 00 00 */	li r0, 0
/* 80120784 0011D6E4  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_80120788:
/* 80120788 0011D6E8  34 1F 00 90 */	addic. r0, r31, 0x90
/* 8012078C 0011D6EC  41 82 00 58 */	beq lbl_801207E4
/* 80120790 0011D6F0  80 BF 00 90 */	lwz r5, 0x90(r31)
/* 80120794 0011D6F4  38 60 00 00 */	li r3, 0
/* 80120798 0011D6F8  2C 05 00 00 */	cmpwi r5, 0
/* 8012079C 0011D6FC  40 81 00 40 */	ble lbl_801207DC
/* 801207A0 0011D700  2C 05 00 08 */	cmpwi r5, 8
/* 801207A4 0011D704  38 85 FF F8 */	addi r4, r5, -8
/* 801207A8 0011D708  40 81 00 20 */	ble lbl_801207C8
/* 801207AC 0011D70C  38 04 00 07 */	addi r0, r4, 7
/* 801207B0 0011D710  54 00 E8 FE */	srwi r0, r0, 3
/* 801207B4 0011D714  7C 09 03 A6 */	mtctr r0
/* 801207B8 0011D718  2C 04 00 00 */	cmpwi r4, 0
/* 801207BC 0011D71C  40 81 00 0C */	ble lbl_801207C8
lbl_801207C0:
/* 801207C0 0011D720  38 63 00 08 */	addi r3, r3, 8
/* 801207C4 0011D724  42 00 FF FC */	bdnz lbl_801207C0
lbl_801207C8:
/* 801207C8 0011D728  7C 03 28 50 */	subf r0, r3, r5
/* 801207CC 0011D72C  7C 09 03 A6 */	mtctr r0
/* 801207D0 0011D730  7C 03 28 00 */	cmpw r3, r5
/* 801207D4 0011D734  40 80 00 08 */	bge lbl_801207DC
lbl_801207D8:
/* 801207D8 0011D738  42 00 00 00 */	bdnz lbl_801207D8
lbl_801207DC:
/* 801207DC 0011D73C  38 00 00 00 */	li r0, 0
/* 801207E0 0011D740  90 1F 00 90 */	stw r0, 0x90(r31)
lbl_801207E4:
/* 801207E4 0011D744  7F E3 FB 78 */	mr r3, r31
/* 801207E8 0011D748  38 80 00 00 */	li r4, 0
/* 801207EC 0011D74C  48 00 00 31 */	bl __dt__8CRagDollFv
/* 801207F0 0011D750  7F C0 07 35 */	extsh. r0, r30
/* 801207F4 0011D754  40 81 00 0C */	ble lbl_80120800
/* 801207F8 0011D758  7F E3 FB 78 */	mr r3, r31
/* 801207FC 0011D75C  48 1F 51 35 */	bl Free__7CMemoryFPCv
lbl_80120800:
/* 80120800 0011D760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120804 0011D764  7F E3 FB 78 */	mr r3, r31
/* 80120808 0011D768  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012080C 0011D76C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80120810 0011D770  7C 08 03 A6 */	mtlr r0
/* 80120814 0011D774  38 21 00 10 */	addi r1, r1, 0x10
/* 80120818 0011D778  4E 80 00 20 */	blr

.global __dt__8CRagDollFv
__dt__8CRagDollFv:
/* 8012081C 0011D77C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80120820 0011D780  7C 08 02 A6 */	mflr r0
/* 80120824 0011D784  90 01 00 54 */	stw r0, 0x54(r1)
/* 80120828 0011D788  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012082C 0011D78C  7C 9F 23 78 */	mr r31, r4
/* 80120830 0011D790  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80120834 0011D794  7C 7E 1B 79 */	or. r30, r3, r3
/* 80120838 0011D798  41 82 01 40 */	beq lbl_80120978
/* 8012083C 0011D79C  3C 60 80 3E */	lis r3, lbl_803E70D0@ha
/* 80120840 0011D7A0  34 1E 00 34 */	addic. r0, r30, 0x34
/* 80120844 0011D7A4  38 03 70 D0 */	addi r0, r3, lbl_803E70D0@l
/* 80120848 0011D7A8  90 1E 00 00 */	stw r0, 0(r30)
/* 8012084C 0011D7AC  41 82 00 44 */	beq lbl_80120890
/* 80120850 0011D7B0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80120854 0011D7B4  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80120858 0011D7B8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8012085C 0011D7BC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80120860 0011D7C0  7C 64 1B 78 */	mr r4, r3
/* 80120864 0011D7C4  7C 03 02 14 */	add r0, r3, r0
/* 80120868 0011D7C8  90 61 00 38 */	stw r3, 0x38(r1)
/* 8012086C 0011D7CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80120870 0011D7D0  90 01 00 40 */	stw r0, 0x40(r1)
/* 80120874 0011D7D4  48 00 00 08 */	b lbl_8012087C
lbl_80120878:
/* 80120878 0011D7D8  38 84 00 14 */	addi r4, r4, 0x14
lbl_8012087C:
/* 8012087C 0011D7DC  7C 04 00 40 */	cmplw r4, r0
/* 80120880 0011D7E0  40 82 FF F8 */	bne lbl_80120878
/* 80120884 0011D7E4  28 03 00 00 */	cmplwi r3, 0
/* 80120888 0011D7E8  41 82 00 08 */	beq lbl_80120890
/* 8012088C 0011D7EC  48 1F 50 A5 */	bl Free__7CMemoryFPCv
lbl_80120890:
/* 80120890 0011D7F0  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80120894 0011D7F4  41 82 00 44 */	beq lbl_801208D8
/* 80120898 0011D7F8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 8012089C 0011D7FC  80 7E 00 30 */	lwz r3, 0x30(r30)
/* 801208A0 0011D800  1C 00 00 18 */	mulli r0, r0, 0x18
/* 801208A4 0011D804  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801208A8 0011D808  7C 64 1B 78 */	mr r4, r3
/* 801208AC 0011D80C  7C 03 02 14 */	add r0, r3, r0
/* 801208B0 0011D810  90 61 00 28 */	stw r3, 0x28(r1)
/* 801208B4 0011D814  90 01 00 34 */	stw r0, 0x34(r1)
/* 801208B8 0011D818  90 01 00 30 */	stw r0, 0x30(r1)
/* 801208BC 0011D81C  48 00 00 08 */	b lbl_801208C4
lbl_801208C0:
/* 801208C0 0011D820  38 84 00 18 */	addi r4, r4, 0x18
lbl_801208C4:
/* 801208C4 0011D824  7C 04 00 40 */	cmplw r4, r0
/* 801208C8 0011D828  40 82 FF F8 */	bne lbl_801208C0
/* 801208CC 0011D82C  28 03 00 00 */	cmplwi r3, 0
/* 801208D0 0011D830  41 82 00 08 */	beq lbl_801208D8
/* 801208D4 0011D834  48 1F 50 5D */	bl Free__7CMemoryFPCv
lbl_801208D8:
/* 801208D8 0011D838  34 1E 00 14 */	addic. r0, r30, 0x14
/* 801208DC 0011D83C  41 82 00 44 */	beq lbl_80120920
/* 801208E0 0011D840  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 801208E4 0011D844  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801208E8 0011D848  54 00 20 36 */	slwi r0, r0, 4
/* 801208EC 0011D84C  7C 03 02 14 */	add r0, r3, r0
/* 801208F0 0011D850  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801208F4 0011D854  7C 64 1B 78 */	mr r4, r3
/* 801208F8 0011D858  90 01 00 24 */	stw r0, 0x24(r1)
/* 801208FC 0011D85C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80120900 0011D860  90 61 00 18 */	stw r3, 0x18(r1)
/* 80120904 0011D864  48 00 00 08 */	b lbl_8012090C
lbl_80120908:
/* 80120908 0011D868  38 84 00 10 */	addi r4, r4, 0x10
lbl_8012090C:
/* 8012090C 0011D86C  7C 04 00 40 */	cmplw r4, r0
/* 80120910 0011D870  40 82 FF F8 */	bne lbl_80120908
/* 80120914 0011D874  28 03 00 00 */	cmplwi r3, 0
/* 80120918 0011D878  41 82 00 08 */	beq lbl_80120920
/* 8012091C 0011D87C  48 1F 50 15 */	bl Free__7CMemoryFPCv
lbl_80120920:
/* 80120920 0011D880  34 1E 00 04 */	addic. r0, r30, 4
/* 80120924 0011D884  41 82 00 44 */	beq lbl_80120968
/* 80120928 0011D888  80 1E 00 08 */	lwz r0, 8(r30)
/* 8012092C 0011D88C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80120930 0011D890  54 00 30 32 */	slwi r0, r0, 6
/* 80120934 0011D894  7C 03 02 14 */	add r0, r3, r0
/* 80120938 0011D898  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012093C 0011D89C  7C 64 1B 78 */	mr r4, r3
/* 80120940 0011D8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120944 0011D8A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80120948 0011D8A8  90 61 00 08 */	stw r3, 8(r1)
/* 8012094C 0011D8AC  48 00 00 08 */	b lbl_80120954
lbl_80120950:
/* 80120950 0011D8B0  38 84 00 40 */	addi r4, r4, 0x40
lbl_80120954:
/* 80120954 0011D8B4  7C 04 00 40 */	cmplw r4, r0
/* 80120958 0011D8B8  40 82 FF F8 */	bne lbl_80120950
/* 8012095C 0011D8BC  28 03 00 00 */	cmplwi r3, 0
/* 80120960 0011D8C0  41 82 00 08 */	beq lbl_80120968
/* 80120964 0011D8C4  48 1F 4F CD */	bl Free__7CMemoryFPCv
lbl_80120968:
/* 80120968 0011D8C8  7F E0 07 35 */	extsh. r0, r31
/* 8012096C 0011D8CC  40 81 00 0C */	ble lbl_80120978
/* 80120970 0011D8D0  7F C3 F3 78 */	mr r3, r30
/* 80120974 0011D8D4  48 1F 4F BD */	bl Free__7CMemoryFPCv
lbl_80120978:
/* 80120978 0011D8D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012097C 0011D8DC  7F C3 F3 78 */	mr r3, r30
/* 80120980 0011D8E0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80120984 0011D8E4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80120988 0011D8E8  7C 08 03 A6 */	mtlr r0
/* 8012098C 0011D8EC  38 21 00 50 */	addi r1, r1, 0x50
/* 80120990 0011D8F0  4E 80 00 20 */	blr

.global GetSearchPath__12CSpacePirateCFv
GetSearchPath__12CSpacePirateCFv:
/* 80120994 0011D8F4  38 63 06 60 */	addi r3, r3, 0x660
/* 80120998 0011D8F8  4E 80 00 20 */	blr

.global IsListening__12CSpacePirateCFv
IsListening__12CSpacePirateCFv:
/* 8012099C 0011D8FC  38 60 00 01 */	li r3, 1
/* 801209A0 0011D900  4E 80 00 20 */	blr

.global GetGravityConstant__12CSpacePirateCFv
GetGravityConstant__12CSpacePirateCFv:
/* 801209A4 0011D904  C0 22 97 B0 */	lfs f1, lbl_805AB4D0@sda21(r2)
/* 801209A8 0011D908  4E 80 00 20 */	blr

.global Think__12CSpacePirateFfR13CStateManager
Think__12CSpacePirateFfR13CStateManager:
/* 801209AC 0011D90C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801209B0 0011D910  7C 08 02 A6 */	mflr r0
/* 801209B4 0011D914  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801209B8 0011D918  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 801209BC 0011D91C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 801209C0 0011D920  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 801209C4 0011D924  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 801209C8 0011D928  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801209CC 0011D92C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801209D0 0011D930  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801209D4 0011D934  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801209D8 0011D938  FF E0 08 90 */	fmr f31, f1
/* 801209DC 0011D93C  7C 7E 1B 78 */	mr r30, r3
/* 801209E0 0011D940  7C 9F 23 78 */	mr r31, r4
/* 801209E4 0011D944  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801209E8 0011D948  41 82 05 D0 */	beq lbl_80120FB8
/* 801209EC 0011D94C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801209F0 0011D950  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801209F4 0011D954  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801209F8 0011D958  40 82 00 08 */	bne lbl_80120A00
/* 801209FC 0011D95C  48 01 A2 F5 */	bl Activate__15CBodyControllerFR13CStateManager
lbl_80120A00:
/* 80120A00 0011D960  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 80120A04 0011D964  4B EE 9E FD */	bl IsInCinematicCamera__14CCameraManagerCFv
/* 80120A08 0011D968  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80120A0C 0011D96C  7C 7D 1B 78 */	mr r29, r3
/* 80120A10 0011D970  41 82 00 20 */	beq lbl_80120A30
/* 80120A14 0011D974  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120A18 0011D978  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80120A1C 0011D97C  40 82 00 14 */	bne lbl_80120A30
/* 80120A20 0011D980  7F C3 F3 78 */	mr r3, r30
/* 80120A24 0011D984  7F E4 FB 78 */	mr r4, r31
/* 80120A28 0011D988  48 00 79 81 */	bl SetCinematicCollision__12CSpacePirateFR13CStateManager
/* 80120A2C 0011D98C  48 00 00 30 */	b lbl_80120A5C
lbl_80120A30:
/* 80120A30 0011D990  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80120A34 0011D994  40 82 00 28 */	bne lbl_80120A5C
/* 80120A38 0011D998  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120A3C 0011D99C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80120A40 0011D9A0  41 82 00 1C */	beq lbl_80120A5C
/* 80120A44 0011D9A4  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 80120A48 0011D9A8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80120A4C 0011D9AC  40 82 00 10 */	bne lbl_80120A5C
/* 80120A50 0011D9B0  7F C3 F3 78 */	mr r3, r30
/* 80120A54 0011D9B4  7F E4 FB 78 */	mr r4, r31
/* 80120A58 0011D9B8  48 00 78 9D */	bl SetNonCinematicCollision__12CSpacePirateFR13CStateManager
lbl_80120A5C:
/* 80120A5C 0011D9BC  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120A60 0011D9C0  53 A0 07 FE */	rlwimi r0, r29, 0, 0x1f, 0x1f
/* 80120A64 0011D9C4  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80120A68 0011D9C8  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80120A6C 0011D9CC  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 80120A70 0011D9D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80120A74 0011D9D4  41 82 00 08 */	beq lbl_80120A7C
/* 80120A78 0011D9D8  48 00 00 08 */	b lbl_80120A80
lbl_80120A7C:
/* 80120A7C 0011D9DC  C0 3E 06 44 */	lfs f1, 0x644(r30)
lbl_80120A80:
/* 80120A80 0011D9E0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120A84 0011D9E4  FC 40 08 90 */	fmr f2, f1
/* 80120A88 0011D9E8  38 63 00 04 */	addi r3, r3, 4
/* 80120A8C 0011D9EC  48 01 0D 5D */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 80120A90 0011D9F0  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 80120A94 0011D9F4  38 81 00 24 */	addi r4, r1, 0x24
/* 80120A98 0011D9F8  38 6D 8A D4 */	addi r3, r13, lbl_805A7694@sda21
/* 80120A9C 0011D9FC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80120AA0 0011DA00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80120AA4 0011DA04  4B F2 EC 8D */	bl "Max<f>__5CMathFRCfRCf"
/* 80120AA8 0011DA08  C0 03 00 00 */	lfs f0, 0(r3)
/* 80120AAC 0011DA0C  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 80120AB0 0011DA10  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120AB4 0011DA14  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80120AB8 0011DA18  41 82 00 64 */	beq lbl_80120B1C
/* 80120ABC 0011DA1C  C0 1E 08 50 */	lfs f0, 0x850(r30)
/* 80120AC0 0011DA20  EC 00 F8 2A */	fadds f0, f0, f31
/* 80120AC4 0011DA24  D0 1E 08 50 */	stfs f0, 0x850(r30)
/* 80120AC8 0011DA28  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 80120ACC 0011DA2C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80120AD0 0011DA30  D0 1E 08 54 */	stfs f0, 0x854(r30)
/* 80120AD4 0011DA34  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120AD8 0011DA38  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80120ADC 0011DA3C  41 82 00 1C */	beq lbl_80120AF8
/* 80120AE0 0011DA40  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80120AE4 0011DA44  38 60 00 00 */	li r3, 0
/* 80120AE8 0011DA48  D0 1E 08 54 */	stfs f0, 0x854(r30)
/* 80120AEC 0011DA4C  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120AF0 0011DA50  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80120AF4 0011DA54  98 1E 06 37 */	stb r0, 0x637(r30)
lbl_80120AF8:
/* 80120AF8 0011DA58  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120AFC 0011DA5C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80120B00 0011DA60  41 82 00 1C */	beq lbl_80120B1C
/* 80120B04 0011DA64  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80120B08 0011DA68  38 60 00 00 */	li r3, 0
/* 80120B0C 0011DA6C  D0 1E 08 50 */	stfs f0, 0x850(r30)
/* 80120B10 0011DA70  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120B14 0011DA74  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80120B18 0011DA78  98 1E 04 00 */	stb r0, 0x400(r30)
lbl_80120B1C:
/* 80120B1C 0011DA7C  FC 20 F8 90 */	fmr f1, f31
/* 80120B20 0011DA80  7F C3 F3 78 */	mr r3, r30
/* 80120B24 0011DA84  7F E4 FB 78 */	mr r4, r31
/* 80120B28 0011DA88  48 00 0B 75 */	bl UpdateCloak__12CSpacePirateFfRC13CStateManager
/* 80120B2C 0011DA8C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120B30 0011DA90  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80120B34 0011DA94  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80120B38 0011DA98  40 82 00 CC */	bne lbl_80120C04
/* 80120B3C 0011DA9C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120B40 0011DAA0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80120B44 0011DAA4  41 82 00 94 */	beq lbl_80120BD8
/* 80120B48 0011DAA8  C0 1E 07 48 */	lfs f0, 0x748(r30)
/* 80120B4C 0011DAAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80120B50 0011DAB0  38 6D 8A D8 */	addi r3, r13, lbl_805A7698@sda21
/* 80120B54 0011DAB4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80120B58 0011DAB8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80120B5C 0011DABC  4B F2 EB D5 */	bl "Max<f>__5CMathFRCfRCf"
/* 80120B60 0011DAC0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80120B64 0011DAC4  D0 1E 07 48 */	stfs f0, 0x748(r30)
/* 80120B68 0011DAC8  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80120B6C 0011DACC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80120B70 0011DAD0  41 82 00 14 */	beq lbl_80120B84
/* 80120B74 0011DAD4  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 80120B78 0011DAD8  EC 00 F8 2A */	fadds f0, f0, f31
/* 80120B7C 0011DADC  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 80120B80 0011DAE0  48 00 00 0C */	b lbl_80120B8C
lbl_80120B84:
/* 80120B84 0011DAE4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80120B88 0011DAE8  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
lbl_80120B8C:
/* 80120B8C 0011DAEC  C0 1E 08 38 */	lfs f0, 0x838(r30)
/* 80120B90 0011DAF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80120B94 0011DAF4  38 6D 8A DC */	addi r3, r13, lbl_805A769C@sda21
/* 80120B98 0011DAF8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80120B9C 0011DAFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80120BA0 0011DB00  4B F2 EB 91 */	bl "Max<f>__5CMathFRCfRCf"
/* 80120BA4 0011DB04  C0 03 00 00 */	lfs f0, 0(r3)
/* 80120BA8 0011DB08  38 81 00 18 */	addi r4, r1, 0x18
/* 80120BAC 0011DB0C  38 6D 8A E0 */	addi r3, r13, lbl_805A76A0@sda21
/* 80120BB0 0011DB10  D0 1E 08 38 */	stfs f0, 0x838(r30)
/* 80120BB4 0011DB14  C0 1E 08 C0 */	lfs f0, 0x8c0(r30)
/* 80120BB8 0011DB18  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80120BBC 0011DB1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80120BC0 0011DB20  4B F2 EB 71 */	bl "Max<f>__5CMathFRCfRCf"
/* 80120BC4 0011DB24  C0 03 00 00 */	lfs f0, 0(r3)
/* 80120BC8 0011DB28  7F C3 F3 78 */	mr r3, r30
/* 80120BCC 0011DB2C  7F E4 FB 78 */	mr r4, r31
/* 80120BD0 0011DB30  D0 1E 08 C0 */	stfs f0, 0x8c0(r30)
/* 80120BD4 0011DB34  48 00 87 45 */	bl CheckForProjectiles__12CSpacePirateFR13CStateManager
lbl_80120BD8:
/* 80120BD8 0011DB38  FC 20 F8 90 */	fmr f1, f31
/* 80120BDC 0011DB3C  7F C3 F3 78 */	mr r3, r30
/* 80120BE0 0011DB40  7F E4 FB 78 */	mr r4, r31
/* 80120BE4 0011DB44  48 00 06 31 */	bl UpdateAttacks__12CSpacePirateFfR13CStateManager
/* 80120BE8 0011DB48  FC 20 F8 90 */	fmr f1, f31
/* 80120BEC 0011DB4C  7F C3 F3 78 */	mr r3, r30
/* 80120BF0 0011DB50  7F E4 FB 78 */	mr r4, r31
/* 80120BF4 0011DB54  48 00 04 39 */	bl UpdateAimBodyState__12CSpacePirateFfR13CStateManager
/* 80120BF8 0011DB58  FC 20 F8 90 */	fmr f1, f31
/* 80120BFC 0011DB5C  38 7E 08 60 */	addi r3, r30, 0x860
/* 80120C00 0011DB60  48 10 4C E9 */	bl Update__8CIkChainFf
lbl_80120C04:
/* 80120C04 0011DB64  88 7E 06 34 */	lbz r3, 0x634(r30)
/* 80120C08 0011DB68  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80120C0C 0011DB6C  41 82 00 70 */	beq lbl_80120C7C
/* 80120C10 0011DB70  38 00 00 00 */	li r0, 0
/* 80120C14 0011DB74  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80120C18 0011DB78  98 7E 06 34 */	stb r3, 0x634(r30)
/* 80120C1C 0011DB7C  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80120C20 0011DB80  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80120C24 0011DB84  41 82 00 14 */	beq lbl_80120C38
/* 80120C28 0011DB88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120C2C 0011DB8C  38 80 00 06 */	li r4, 6
/* 80120C30 0011DB90  48 01 9D A9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80120C34 0011DB94  48 00 00 10 */	b lbl_80120C44
lbl_80120C38:
/* 80120C38 0011DB98  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120C3C 0011DB9C  38 80 00 00 */	li r4, 0
/* 80120C40 0011DBA0  48 01 9D 99 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80120C44:
/* 80120C44 0011DBA4  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 80120C48 0011DBA8  38 61 00 40 */	addi r3, r1, 0x40
/* 80120C4C 0011DBAC  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 80120C50 0011DBB0  4B EE 40 69 */	bl string_l__4rstlFPCc
/* 80120C54 0011DBB4  7F C3 F3 78 */	mr r3, r30
/* 80120C58 0011DBB8  4B F8 1C A1 */	bl GetStateMachine__3CAiFv
/* 80120C5C 0011DBBC  7C 66 1B 78 */	mr r6, r3
/* 80120C60 0011DBC0  7F E4 FB 78 */	mr r4, r31
/* 80120C64 0011DBC4  7F C5 F3 78 */	mr r5, r30
/* 80120C68 0011DBC8  38 7E 03 30 */	addi r3, r30, 0x330
/* 80120C6C 0011DBCC  38 E1 00 40 */	addi r7, r1, 0x40
/* 80120C70 0011DBD0  4B F5 EF 95 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80120C74 0011DBD4  38 61 00 40 */	addi r3, r1, 0x40
/* 80120C78 0011DBD8  48 21 CE 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80120C7C:
/* 80120C7C 0011DBDC  80 9E 08 5C */	lwz r4, 0x85c(r30)
/* 80120C80 0011DBE0  7C 83 00 34 */	cntlzw r3, r4
/* 80120C84 0011DBE4  54 60 DE 3F */	rlwinm. r0, r3, 0x1b, 0x18, 0x1f
/* 80120C88 0011DBE8  54 7D D9 7E */	srwi r29, r3, 5
/* 80120C8C 0011DBEC  40 82 00 10 */	bne lbl_80120C9C
/* 80120C90 0011DBF0  88 04 00 68 */	lbz r0, 0x68(r4)
/* 80120C94 0011DBF4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80120C98 0011DBF8  40 82 00 34 */	bne lbl_80120CCC
lbl_80120C9C:
/* 80120C9C 0011DBFC  FC 20 F8 90 */	fmr f1, f31
/* 80120CA0 0011DC00  7F C3 F3 78 */	mr r3, r30
/* 80120CA4 0011DC04  7F E4 FB 78 */	mr r4, r31
/* 80120CA8 0011DC08  4B F5 8E 71 */	bl Think__10CPatternedFfR13CStateManager
/* 80120CAC 0011DC0C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120CB0 0011DC10  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80120CB4 0011DC14  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80120CB8 0011DC18  40 82 00 80 */	bne lbl_80120D38
/* 80120CBC 0011DC1C  FC 20 F8 90 */	fmr f1, f31
/* 80120CC0 0011DC20  38 7E 07 64 */	addi r3, r30, 0x764
/* 80120CC4 0011DC24  48 05 4C E5 */	bl Update__13CBoneTrackingFf
/* 80120CC8 0011DC28  48 00 00 70 */	b lbl_80120D38
lbl_80120CCC:
/* 80120CCC 0011DC2C  FC 20 F8 90 */	fmr f1, f31
/* 80120CD0 0011DC30  7F C3 F3 78 */	mr r3, r30
/* 80120CD4 0011DC34  7F E4 FB 78 */	mr r4, r31
/* 80120CD8 0011DC38  4B F5 99 B5 */	bl UpdateAlphaDelta__10CPatternedFfR13CStateManager
/* 80120CDC 0011DC3C  FC 20 F8 90 */	fmr f1, f31
/* 80120CE0 0011DC40  7F C3 F3 78 */	mr r3, r30
/* 80120CE4 0011DC44  4B F5 98 D5 */	bl UpdateDamageColor__10CPatternedFf
/* 80120CE8 0011DC48  7F C4 F3 78 */	mr r4, r30
/* 80120CEC 0011DC4C  38 61 00 14 */	addi r3, r1, 0x14
/* 80120CF0 0011DC50  4B F3 26 29 */	bl GetSfxHandle__6CActorCFv
/* 80120CF4 0011DC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80120CF8 0011DC58  28 00 00 00 */	cmplwi r0, 0
/* 80120CFC 0011DC5C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80120D00 0011DC60  41 82 00 38 */	beq lbl_80120D38
/* 80120D04 0011DC64  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80120D08 0011DC68  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80120D0C 0011DC6C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80120D10 0011DC70  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 80120D14 0011DC74  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80120D18 0011DC78  38 61 00 10 */	addi r3, r1, 0x10
/* 80120D1C 0011DC7C  38 81 00 34 */	addi r4, r1, 0x34
/* 80120D20 0011DC80  38 C0 00 7F */	li r6, 0x7f
/* 80120D24 0011DC84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80120D28 0011DC88  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80120D2C 0011DC8C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80120D30 0011DC90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80120D34 0011DC94  48 1C 91 7D */	bl UpdateEmitter__11CSfxManagerF10CSfxHandleRC9CVector3fRC9CVector3fUc
lbl_80120D38:
/* 80120D38 0011DC98  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80120D3C 0011DC9C  40 82 01 B8 */	bne lbl_80120EF4
/* 80120D40 0011DCA0  80 7E 08 5C */	lwz r3, 0x85c(r30)
/* 80120D44 0011DCA4  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80120D48 0011DCA8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80120D4C 0011DCAC  40 82 00 8C */	bne lbl_80120DD8
/* 80120D50 0011DCB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80120D54 0011DCB4  7F E4 FB 78 */	mr r4, r31
/* 80120D58 0011DCB8  38 BE 00 34 */	addi r5, r30, 0x34
/* 80120D5C 0011DCBC  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 80120D60 0011DCC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80120D64 0011DCC4  7D 89 03 A6 */	mtctr r12
/* 80120D68 0011DCC8  4E 80 04 21 */	bctrl
/* 80120D6C 0011DCCC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80120D70 0011DCD0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 80120D74 0011DCD4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80120D78 0011DCD8  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 80120D7C 0011DCDC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80120D80 0011DCE0  38 7E 00 34 */	addi r3, r30, 0x34
/* 80120D84 0011DCE4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80120D88 0011DCE8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80120D8C 0011DCEC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80120D90 0011DCF0  48 1F 1D B1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 80120D94 0011DCF4  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80120D98 0011DCF8  38 A0 00 01 */	li r5, 1
/* 80120D9C 0011DCFC  50 A0 26 F6 */	rlwimi r0, r5, 4, 0x1b, 0x1b
/* 80120DA0 0011DD00  7F C3 F3 78 */	mr r3, r30
/* 80120DA4 0011DD04  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 80120DA8 0011DD08  38 81 00 50 */	addi r4, r1, 0x50
/* 80120DAC 0011DD0C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80120DB0 0011DD10  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 80120DB4 0011DD14  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 80120DB8 0011DD18  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 80120DBC 0011DD1C  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80120DC0 0011DD20  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 80120DC4 0011DD24  4B F3 20 C9 */	bl SetTranslation__6CActorFRC9CVector3f
/* 80120DC8 0011DD28  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80120DCC 0011DD2C  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80120DD0 0011DD30  48 01 9A BD */	bl SetPlaybackRate__15CBodyControllerFf
/* 80120DD4 0011DD34  48 00 00 9C */	b lbl_80120E70
lbl_80120DD8:
/* 80120DD8 0011DD38  A0 BE 00 C4 */	lhz r5, 0xc4(r30)
/* 80120DDC 0011DD3C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80120DE0 0011DD40  C3 C2 97 C0 */	lfs f30, lbl_805AB4E0@sda21(r2)
/* 80120DE4 0011DD44  7C 05 00 40 */	cmplw r5, r0
/* 80120DE8 0011DD48  41 82 00 48 */	beq lbl_80120E30
/* 80120DEC 0011DD4C  B0 A1 00 08 */	sth r5, 8(r1)
/* 80120DF0 0011DD50  7F E3 FB 78 */	mr r3, r31
/* 80120DF4 0011DD54  38 81 00 0C */	addi r4, r1, 0xc
/* 80120DF8 0011DD58  B0 A1 00 0C */	sth r5, 0xc(r1)
/* 80120DFC 0011DD5C  4B F2 B7 A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80120E00 0011DD60  7C 64 1B 78 */	mr r4, r3
/* 80120E04 0011DD64  38 61 00 2C */	addi r3, r1, 0x2c
/* 80120E08 0011DD68  4B F8 5A 59 */	bl "__ct__26TCastToPtr<12CScriptWater>FP7CEntity"
/* 80120E0C 0011DD6C  80 83 00 04 */	lwz r4, 4(r3)
/* 80120E10 0011DD70  28 04 00 00 */	cmplwi r4, 0
/* 80120E14 0011DD74  41 82 00 1C */	beq lbl_80120E30
/* 80120E18 0011DD78  88 04 00 30 */	lbz r0, 0x30(r4)
/* 80120E1C 0011DD7C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80120E20 0011DD80  41 82 00 10 */	beq lbl_80120E30
/* 80120E24 0011DD84  38 61 00 5C */	addi r3, r1, 0x5c
/* 80120E28 0011DD88  4B F5 58 A5 */	bl GetTriggerBoundsWR__14CScriptTriggerCFv
/* 80120E2C 0011DD8C  C3 C1 00 70 */	lfs f30, 0x70(r1)
lbl_80120E30:
/* 80120E30 0011DD90  83 BE 08 5C */	lwz r29, 0x85c(r30)
/* 80120E34 0011DD94  7F C3 F3 78 */	mr r3, r30
/* 80120E38 0011DD98  4B F5 7C 51 */	bl CalcDyingThinkRate__10CPatternedFv
/* 80120E3C 0011DD9C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80120E40 0011DDA0  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80120E44 0011DDA4  FC 40 F0 90 */	fmr f2, f30
/* 80120E48 0011DDA8  7F A3 EB 78 */	mr r3, r29
/* 80120E4C 0011DDAC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80120E50 0011DDB0  7F E4 FB 78 */	mr r4, r31
/* 80120E54 0011DDB4  7D 89 03 A6 */	mtctr r12
/* 80120E58 0011DDB8  4E 80 04 21 */	bctrl
/* 80120E5C 0011DDBC  FC 20 F8 90 */	fmr f1, f31
/* 80120E60 0011DDC0  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80120E64 0011DDC4  7F E5 FB 78 */	mr r5, r31
/* 80120E68 0011DDC8  38 9E 00 34 */	addi r4, r30, 0x34
/* 80120E6C 0011DDCC  4B FF 47 21 */	bl AdvanceParticles__10CModelDataFRC12CTransform4ffR13CStateManager
lbl_80120E70:
/* 80120E70 0011DDD0  80 7E 08 5C */	lwz r3, 0x85c(r30)
/* 80120E74 0011DDD4  88 63 00 68 */	lbz r3, 0x68(r3)
/* 80120E78 0011DDD8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80120E7C 0011DDDC  41 82 00 78 */	beq lbl_80120EF4
/* 80120E80 0011DDE0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80120E84 0011DDE4  40 82 00 70 */	bne lbl_80120EF4
/* 80120E88 0011DDE8  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120E8C 0011DDEC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80120E90 0011DDF0  40 82 00 64 */	bne lbl_80120EF4
/* 80120E94 0011DDF4  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80120E98 0011DDF8  38 60 00 01 */	li r3, 1
/* 80120E9C 0011DDFC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80120EA0 0011DE00  C0 02 97 C4 */	lfs f0, lbl_805AB4E4@sda21(r2)
/* 80120EA4 0011DE04  98 1E 04 00 */	stb r0, 0x400(r30)
/* 80120EA8 0011DE08  7F C3 F3 78 */	mr r3, r30
/* 80120EAC 0011DE0C  7F E5 FB 78 */	mr r5, r31
/* 80120EB0 0011DE10  38 80 00 12 */	li r4, 0x12
/* 80120EB4 0011DE14  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
/* 80120EB8 0011DE18  4B F3 34 99 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80120EBC 0011DE1C  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80120EC0 0011DE20  38 60 00 01 */	li r3, 1
/* 80120EC4 0011DE24  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80120EC8 0011DE28  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80120ECC 0011DE2C  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80120ED0 0011DE30  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 80120ED4 0011DE34  7F C3 F3 78 */	mr r3, r30
/* 80120ED8 0011DE38  C0 04 00 00 */	lfs f0, 0(r4)
/* 80120EDC 0011DE3C  D0 1E 01 50 */	stfs f0, 0x150(r30)
/* 80120EE0 0011DE40  C0 04 00 04 */	lfs f0, 4(r4)
/* 80120EE4 0011DE44  D0 1E 01 54 */	stfs f0, 0x154(r30)
/* 80120EE8 0011DE48  C0 04 00 08 */	lfs f0, 8(r4)
/* 80120EEC 0011DE4C  D0 1E 01 58 */	stfs f0, 0x158(r30)
/* 80120EF0 0011DE50  4B FF A4 89 */	bl Stop__13CPhysicsActorFv
lbl_80120EF4:
/* 80120EF4 0011DE54  C0 1E 08 58 */	lfs f0, 0x858(r30)
/* 80120EF8 0011DE58  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80120EFC 0011DE5C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80120F00 0011DE60  40 81 00 B8 */	ble lbl_80120FB8
/* 80120F04 0011DE64  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80120F08 0011DE68  D0 1E 08 58 */	stfs f0, 0x858(r30)
/* 80120F0C 0011DE6C  C0 1E 08 58 */	lfs f0, 0x858(r30)
/* 80120F10 0011DE70  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80120F14 0011DE74  4C 40 13 82 */	cror 2, 0, 2
/* 80120F18 0011DE78  40 82 00 A0 */	bne lbl_80120FB8
/* 80120F1C 0011DE7C  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 80120F20 0011DE80  28 00 00 00 */	cmplwi r0, 0
/* 80120F24 0011DE84  40 82 00 8C */	bne lbl_80120FB0
/* 80120F28 0011DE88  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 80120F2C 0011DE8C  38 60 00 B4 */	li r3, 0xb4
/* 80120F30 0011DE90  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 80120F34 0011DE94  38 A0 00 00 */	li r5, 0
/* 80120F38 0011DE98  38 84 00 0A */	addi r4, r4, 0xa
/* 80120F3C 0011DE9C  48 1F 49 31 */	bl __nw__FUlPCcPCc
/* 80120F40 0011DEA0  7C 64 1B 79 */	or. r4, r3, r3
/* 80120F44 0011DEA4  41 82 00 50 */	beq lbl_80120F94
/* 80120F48 0011DEA8  88 9E 06 35 */	lbz r4, 0x635(r30)
/* 80120F4C 0011DEAC  39 20 00 04 */	li r9, 4
/* 80120F50 0011DEB0  38 00 00 03 */	li r0, 3
/* 80120F54 0011DEB4  A0 DE 06 00 */	lhz r6, 0x600(r30)
/* 80120F58 0011DEB8  54 87 07 FE */	clrlwi r7, r4, 0x1f
/* 80120F5C 0011DEBC  54 88 FF FE */	rlwinm r8, r4, 0x1f, 0x1f, 0x1f
/* 80120F60 0011DEC0  7C A7 00 D0 */	neg r5, r7
/* 80120F64 0011DEC4  7F E4 FB 78 */	mr r4, r31
/* 80120F68 0011DEC8  7C A5 3B 78 */	or r5, r5, r7
/* 80120F6C 0011DECC  7C E8 00 D0 */	neg r7, r8
/* 80120F70 0011DED0  7C AA FE 70 */	srawi r10, r5, 0x1f
/* 80120F74 0011DED4  7F C5 F3 78 */	mr r5, r30
/* 80120F78 0011DED8  7C E7 43 78 */	or r7, r7, r8
/* 80120F7C 0011DEDC  7C E7 FE 70 */	srawi r7, r7, 0x1f
/* 80120F80 0011DEE0  7D 28 50 38 */	and r8, r9, r10
/* 80120F84 0011DEE4  7C 00 38 38 */	and r0, r0, r7
/* 80120F88 0011DEE8  7C 07 43 78 */	or r7, r0, r8
/* 80120F8C 0011DEEC  48 00 B2 D1 */	bl __ct__14CPirateRagDollFR13CStateManagerP12CSpacePiratefUsUi
/* 80120F90 0011DEF0  7C 64 1B 78 */	mr r4, r3
lbl_80120F94:
/* 80120F94 0011DEF4  38 7E 08 5C */	addi r3, r30, 0x85c
/* 80120F98 0011DEF8  48 00 00 4D */	bl sub_80120fe4
/* 80120F9C 0011DEFC  7F C3 F3 78 */	mr r3, r30
/* 80120FA0 0011DF00  7F E6 FB 78 */	mr r6, r31
/* 80120FA4 0011DF04  38 80 00 29 */	li r4, 0x29
/* 80120FA8 0011DF08  38 A0 00 28 */	li r5, 0x28
/* 80120FAC 0011DF0C  4B F3 2F 29 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_80120FB0:
/* 80120FB0 0011DF10  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80120FB4 0011DF14  D0 1E 08 58 */	stfs f0, 0x858(r30)
lbl_80120FB8:
/* 80120FB8 0011DF18  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80120FBC 0011DF1C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80120FC0 0011DF20  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 80120FC4 0011DF24  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80120FC8 0011DF28  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80120FCC 0011DF2C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80120FD0 0011DF30  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80120FD4 0011DF34  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 80120FD8 0011DF38  7C 08 03 A6 */	mtlr r0
/* 80120FDC 0011DF3C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80120FE0 0011DF40  4E 80 00 20 */	blr

.global sub_80120fe4
sub_80120fe4:
/* 80120FE4 0011DF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80120FE8 0011DF48  7C 08 02 A6 */	mflr r0
/* 80120FEC 0011DF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80120FF0 0011DF50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80120FF4 0011DF54  7C 9F 23 78 */	mr r31, r4
/* 80120FF8 0011DF58  38 80 00 01 */	li r4, 1
/* 80120FFC 0011DF5C  93 C1 00 08 */	stw r30, 8(r1)
/* 80121000 0011DF60  7C 7E 1B 78 */	mr r30, r3
/* 80121004 0011DF64  80 63 00 00 */	lwz r3, 0(r3)
/* 80121008 0011DF68  4B FF F6 F9 */	bl __dt__14CPirateRagDollFv
/* 8012100C 0011DF6C  93 FE 00 00 */	stw r31, 0(r30)
/* 80121010 0011DF70  7F C3 F3 78 */	mr r3, r30
/* 80121014 0011DF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80121018 0011DF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012101C 0011DF7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80121020 0011DF80  7C 08 03 A6 */	mtlr r0
/* 80121024 0011DF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80121028 0011DF88  4E 80 00 20 */	blr

.global UpdateAimBodyState__12CSpacePirateFfR13CStateManager
UpdateAimBodyState__12CSpacePirateFfR13CStateManager:
/* 8012102C 0011DF8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80121030 0011DF90  7C 08 02 A6 */	mflr r0
/* 80121034 0011DF94  90 01 00 54 */	stw r0, 0x54(r1)
/* 80121038 0011DF98  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012103C 0011DF9C  7C 9F 23 78 */	mr r31, r4
/* 80121040 0011DFA0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80121044 0011DFA4  7C 7E 1B 78 */	mr r30, r3
/* 80121048 0011DFA8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8012104C 0011DFAC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80121050 0011DFB0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121054 0011DFB4  41 82 01 5C */	beq lbl_801211B0
/* 80121058 0011DFB8  88 7E 06 37 */	lbz r3, 0x637(r30)
/* 8012105C 0011DFBC  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80121060 0011DFC0  41 82 01 50 */	beq lbl_801211B0
/* 80121064 0011DFC4  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80121068 0011DFC8  40 82 01 48 */	bne lbl_801211B0
/* 8012106C 0011DFCC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80121070 0011DFD0  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80121074 0011DFD4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80121078 0011DFD8  40 82 01 38 */	bne lbl_801211B0
/* 8012107C 0011DFDC  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80121080 0011DFE0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80121084 0011DFE4  40 82 01 2C */	bne lbl_801211B0
/* 80121088 0011DFE8  80 1E 08 5C */	lwz r0, 0x85c(r30)
/* 8012108C 0011DFEC  28 00 00 00 */	cmplwi r0, 0
/* 80121090 0011DFF0  40 82 01 20 */	bne lbl_801211B0
/* 80121094 0011DFF4  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 80121098 0011DFF8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8012109C 0011DFFC  41 82 00 10 */	beq lbl_801210AC
/* 801210A0 0011E000  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801210A4 0011E004  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 801210A8 0011E008  41 82 01 08 */	beq lbl_801211B0
lbl_801210AC:
/* 801210AC 0011E00C  C0 43 03 24 */	lfs f2, 0x324(r3)
/* 801210B0 0011E010  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801210B4 0011E014  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801210B8 0011E018  41 81 00 F8 */	bgt lbl_801211B0
/* 801210BC 0011E01C  C0 1E 08 C4 */	lfs f0, 0x8c4(r30)
/* 801210C0 0011E020  38 81 00 08 */	addi r4, r1, 8
/* 801210C4 0011E024  38 6D 8A D0 */	addi r3, r13, lbl_805A7690@sda21
/* 801210C8 0011E028  EC 00 08 28 */	fsubs f0, f0, f1
/* 801210CC 0011E02C  D0 01 00 08 */	stfs f0, 8(r1)
/* 801210D0 0011E030  4B F2 E6 61 */	bl "Max<f>__5CMathFRCfRCf"
/* 801210D4 0011E034  C0 23 00 00 */	lfs f1, 0(r3)
/* 801210D8 0011E038  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801210DC 0011E03C  D0 3E 08 C4 */	stfs f1, 0x8c4(r30)
/* 801210E0 0011E040  C0 3E 08 C4 */	lfs f1, 0x8c4(r30)
/* 801210E4 0011E044  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801210E8 0011E048  40 82 01 10 */	bne lbl_801211F8
/* 801210EC 0011E04C  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801210F0 0011E050  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801210F4 0011E054  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801210F8 0011E058  3C 80 80 3E */	lis r4, lbl_803E061C@ha
/* 801210FC 0011E05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80121100 0011E060  38 04 06 1C */	addi r0, r4, lbl_803E061C@l
/* 80121104 0011E064  38 80 00 18 */	li r4, 0x18
/* 80121108 0011E068  3B A3 00 04 */	addi r29, r3, 4
/* 8012110C 0011E06C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80121110 0011E070  7F A3 EB 78 */	mr r3, r29
/* 80121114 0011E074  38 80 00 18 */	li r4, 0x18
/* 80121118 0011E078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012111C 0011E07C  48 01 03 1D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80121120 0011E080  3C 60 80 3E */	lis r3, lbl_803E061C@ha
/* 80121124 0011E084  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80121128 0011E088  38 03 06 1C */	addi r0, r3, lbl_803E061C@l
/* 8012112C 0011E08C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80121130 0011E090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80121134 0011E094  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80121138 0011E098  7F C4 F3 78 */	mr r4, r30
/* 8012113C 0011E09C  7F E5 FB 78 */	mr r5, r31
/* 80121140 0011E0A0  90 DD 02 74 */	stw r6, 0x274(r29)
/* 80121144 0011E0A4  38 61 00 28 */	addi r3, r1, 0x28
/* 80121148 0011E0A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012114C 0011E0AC  48 00 72 F9 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80121150 0011E0B0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80121154 0011E0B4  38 9E 00 34 */	addi r4, r30, 0x34
/* 80121158 0011E0B8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8012115C 0011E0BC  38 61 00 34 */	addi r3, r1, 0x34
/* 80121160 0011E0C0  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 80121164 0011E0C4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80121168 0011E0C8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8012116C 0011E0CC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80121170 0011E0D0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80121174 0011E0D4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80121178 0011E0D8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8012117C 0011E0DC  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80121180 0011E0E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80121184 0011E0E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80121188 0011E0E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012118C 0011E0EC  48 1F 18 99 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80121190 0011E0F0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80121194 0011E0F4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80121198 0011E0F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8012119C 0011E0FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801211A0 0011E100  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 801211A4 0011E104  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 801211A8 0011E108  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 801211AC 0011E10C  48 00 00 4C */	b lbl_801211F8
lbl_801211B0:
/* 801211B0 0011E110  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 801211B4 0011E114  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801211B8 0011E118  41 82 00 40 */	beq lbl_801211F8
/* 801211BC 0011E11C  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 801211C0 0011E120  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801211C4 0011E124  40 82 00 34 */	bne lbl_801211F8
/* 801211C8 0011E128  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801211CC 0011E12C  38 00 00 17 */	li r0, 0x17
/* 801211D0 0011E130  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801211D4 0011E134  90 01 00 10 */	stw r0, 0x10(r1)
/* 801211D8 0011E138  38 81 00 0C */	addi r4, r1, 0xc
/* 801211DC 0011E13C  90 61 00 0C */	stw r3, 0xc(r1)
/* 801211E0 0011E140  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801211E4 0011E144  38 63 00 04 */	addi r3, r3, 4
/* 801211E8 0011E148  48 01 05 D1 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801211EC 0011E14C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801211F0 0011E150  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801211F4 0011E154  90 01 00 0C */	stw r0, 0xc(r1)
lbl_801211F8:
/* 801211F8 0011E158  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801211FC 0011E15C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80121200 0011E160  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80121204 0011E164  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80121208 0011E168  7C 08 03 A6 */	mtlr r0
/* 8012120C 0011E16C  38 21 00 50 */	addi r1, r1, 0x50
/* 80121210 0011E170  4E 80 00 20 */	blr

.global UpdateAttacks__12CSpacePirateFfR13CStateManager
UpdateAttacks__12CSpacePirateFfR13CStateManager:
/* 80121214 0011E174  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80121218 0011E178  7C 08 02 A6 */	mflr r0
/* 8012121C 0011E17C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80121220 0011E180  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80121224 0011E184  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80121228 0011E188  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8012122C 0011E18C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 80121230 0011E190  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 80121234 0011E194  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80121238 0011E198  FF E0 08 90 */	fmr f31, f1
/* 8012123C 0011E19C  7C 7D 1B 78 */	mr r29, r3
/* 80121240 0011E1A0  7C 9E 23 78 */	mr r30, r4
/* 80121244 0011E1A4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121248 0011E1A8  3B E0 00 01 */	li r31, 1
/* 8012124C 0011E1AC  41 82 00 68 */	beq lbl_801212B4
/* 80121250 0011E1B0  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80121254 0011E1B4  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80121258 0011E1B8  48 01 2E 21 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 8012125C 0011E1BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80121260 0011E1C0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80121264 0011E1C4  7D 89 03 A6 */	mtctr r12
/* 80121268 0011E1C8  4E 80 04 21 */	bctrl
/* 8012126C 0011E1CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80121270 0011E1D0  41 82 03 D4 */	beq lbl_80121644
/* 80121274 0011E1D4  88 1D 06 37 */	lbz r0, 0x637(r29)
/* 80121278 0011E1D8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8012127C 0011E1DC  41 82 03 C8 */	beq lbl_80121644
/* 80121280 0011E1E0  88 7D 06 34 */	lbz r3, 0x634(r29)
/* 80121284 0011E1E4  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 80121288 0011E1E8  40 82 03 BC */	bne lbl_80121644
/* 8012128C 0011E1EC  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80121290 0011E1F0  40 82 03 B4 */	bne lbl_80121644
/* 80121294 0011E1F4  88 1D 06 39 */	lbz r0, 0x639(r29)
/* 80121298 0011E1F8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8012129C 0011E1FC  40 82 03 A8 */	bne lbl_80121644
/* 801212A0 0011E200  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801212A4 0011E204  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801212A8 0011E208  C0 23 03 24 */	lfs f1, 0x324(r3)
/* 801212AC 0011E20C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801212B0 0011E210  41 81 03 94 */	bgt lbl_80121644
lbl_801212B4:
/* 801212B4 0011E214  80 1D 07 C4 */	lwz r0, 0x7c4(r29)
/* 801212B8 0011E218  2C 00 FF FF */	cmpwi r0, -1
/* 801212BC 0011E21C  41 82 03 88 */	beq lbl_80121644
/* 801212C0 0011E220  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 801212C4 0011E224  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801212C8 0011E228  41 82 02 C8 */	beq lbl_80121590
/* 801212CC 0011E22C  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 801212D0 0011E230  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801212D4 0011E234  41 82 00 68 */	beq lbl_8012133C
/* 801212D8 0011E238  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801212DC 0011E23C  C0 1D 03 C8 */	lfs f0, 0x3c8(r29)
/* 801212E0 0011E240  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 801212E4 0011E244  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801212E8 0011E248  EC 00 00 32 */	fmuls f0, f0, f0
/* 801212EC 0011E24C  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 801212F0 0011E250  EC C7 08 28 */	fsubs f6, f7, f1
/* 801212F4 0011E254  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801212F8 0011E258  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 801212FC 0011E25C  EC 82 08 28 */	fsubs f4, f2, f1
/* 80121300 0011E260  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80121304 0011E264  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80121308 0011E268  EC A8 18 28 */	fsubs f5, f8, f3
/* 8012130C 0011E26C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80121310 0011E270  EC 44 01 32 */	fmuls f2, f4, f4
/* 80121314 0011E274  D0 E1 00 64 */	stfs f7, 0x64(r1)
/* 80121318 0011E278  EC 65 01 72 */	fmuls f3, f5, f5
/* 8012131C 0011E27C  EC 22 08 2A */	fadds f1, f2, f1
/* 80121320 0011E280  D1 01 00 68 */	stfs f8, 0x68(r1)
/* 80121324 0011E284  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80121328 0011E288  EC 23 08 2A */	fadds f1, f3, f1
/* 8012132C 0011E28C  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 80121330 0011E290  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121334 0011E294  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 80121338 0011E298  40 80 02 58 */	bge lbl_80121590
lbl_8012133C:
/* 8012133C 0011E29C  C0 3D 07 BC */	lfs f1, 0x7bc(r29)
/* 80121340 0011E2A0  3B E0 00 00 */	li r31, 0
/* 80121344 0011E2A4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80121348 0011E2A8  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8012134C 0011E2AC  D0 3D 07 BC */	stfs f1, 0x7bc(r29)
/* 80121350 0011E2B0  C0 3D 07 BC */	lfs f1, 0x7bc(r29)
/* 80121354 0011E2B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121358 0011E2B8  40 80 02 38 */	bge lbl_80121590
/* 8012135C 0011E2BC  A0 DD 00 08 */	lhz r6, 8(r29)
/* 80121360 0011E2C0  7F C3 F3 78 */	mr r3, r30
/* 80121364 0011E2C4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80121368 0011E2C8  38 A1 00 18 */	addi r5, r1, 0x18
/* 8012136C 0011E2CC  B0 C1 00 18 */	sth r6, 0x18(r1)
/* 80121370 0011E2D0  A0 1D 08 C8 */	lhz r0, 0x8c8(r29)
/* 80121374 0011E2D4  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 80121378 0011E2D8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8012137C 0011E2DC  48 11 8E 05 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 80121380 0011E2E0  28 03 00 00 */	cmplwi r3, 0
/* 80121384 0011E2E4  41 82 00 10 */	beq lbl_80121394
/* 80121388 0011E2E8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8012138C 0011E2EC  2C 00 00 02 */	cmpwi r0, 2
/* 80121390 0011E2F0  40 82 02 00 */	bne lbl_80121590
lbl_80121394:
/* 80121394 0011E2F4  A0 7D 08 C8 */	lhz r3, 0x8c8(r29)
/* 80121398 0011E2F8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012139C 0011E2FC  7C 03 00 40 */	cmplw r3, r0
/* 801213A0 0011E300  41 82 00 34 */	beq lbl_801213D4
/* 801213A4 0011E304  A0 FD 00 08 */	lhz r7, 8(r29)
/* 801213A8 0011E308  7F C4 F3 78 */	mr r4, r30
/* 801213AC 0011E30C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801213B0 0011E310  38 C1 00 0C */	addi r6, r1, 0xc
/* 801213B4 0011E314  B0 E1 00 0C */	sth r7, 0xc(r1)
/* 801213B8 0011E318  38 60 00 01 */	li r3, 1
/* 801213BC 0011E31C  A0 1D 08 C8 */	lhz r0, 0x8c8(r29)
/* 801213C0 0011E320  B0 E1 00 08 */	sth r7, 8(r1)
/* 801213C4 0011E324  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801213C8 0011E328  48 11 8C 29 */	bl AddAttacker__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueId
/* 801213CC 0011E32C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801213D0 0011E330  41 82 01 C0 */	beq lbl_80121590
lbl_801213D4:
/* 801213D4 0011E334  7F A3 EB 78 */	mr r3, r29
/* 801213D8 0011E338  7F C4 F3 78 */	mr r4, r30
/* 801213DC 0011E33C  48 00 05 3D */	bl ShouldFrenzy__12CSpacePirateFR13CStateManager
/* 801213E0 0011E340  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801213E4 0011E344  41 82 00 0C */	beq lbl_801213F0
/* 801213E8 0011E348  38 00 00 02 */	li r0, 2
/* 801213EC 0011E34C  90 1D 07 C4 */	stw r0, 0x7c4(r29)
lbl_801213F0:
/* 801213F0 0011E350  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 801213F4 0011E354  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801213F8 0011E358  41 82 00 0C */	beq lbl_80121404
/* 801213FC 0011E35C  38 00 00 05 */	li r0, 5
/* 80121400 0011E360  90 1D 07 C4 */	stw r0, 0x7c4(r29)
lbl_80121404:
/* 80121404 0011E364  7F A3 EB 78 */	mr r3, r29
/* 80121408 0011E368  7F C4 F3 78 */	mr r4, r30
/* 8012140C 0011E36C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80121410 0011E370  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80121414 0011E374  81 8C 01 B0 */	lwz r12, 0x1b0(r12)
/* 80121418 0011E378  7D 89 03 A6 */	mtctr r12
/* 8012141C 0011E37C  4E 80 04 21 */	bctrl
/* 80121420 0011E380  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80121424 0011E384  40 82 00 18 */	bne lbl_8012143C
/* 80121428 0011E388  80 7D 07 C4 */	lwz r3, 0x7c4(r29)
/* 8012142C 0011E38C  2C 03 00 06 */	cmpwi r3, 6
/* 80121430 0011E390  40 80 00 0C */	bge lbl_8012143C
/* 80121434 0011E394  38 03 00 06 */	addi r0, r3, 6
/* 80121438 0011E398  90 1D 07 C4 */	stw r0, 0x7c4(r29)
lbl_8012143C:
/* 8012143C 0011E39C  7F C4 F3 78 */	mr r4, r30
/* 80121440 0011E3A0  38 7D 07 C4 */	addi r3, r29, 0x7c4
/* 80121444 0011E3A4  48 08 BF E1 */	bl Start__10CBurstFireFR13CStateManager
/* 80121448 0011E3A8  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8012144C 0011E3AC  48 1F 10 91 */	bl Float__9CRandom16Fv
/* 80121450 0011E3B0  C0 5D 03 08 */	lfs f2, 0x308(r29)
/* 80121454 0011E3B4  7F C5 F3 78 */	mr r5, r30
/* 80121458 0011E3B8  C0 1D 03 04 */	lfs f0, 0x304(r29)
/* 8012145C 0011E3BC  38 61 00 30 */	addi r3, r1, 0x30
/* 80121460 0011E3C0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80121464 0011E3C4  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80121468 0011E3C8  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 8012146C 0011E3CC  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 80121470 0011E3D0  81 84 00 00 */	lwz r12, 0(r4)
/* 80121474 0011E3D4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80121478 0011E3D8  7D 89 03 A6 */	mtctr r12
/* 8012147C 0011E3DC  4E 80 04 21 */	bctrl
/* 80121480 0011E3E0  7F A4 EB 78 */	mr r4, r29
/* 80121484 0011E3E4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80121488 0011E3E8  4B F5 B6 49 */	bl GetGunEyePos__10CPatternedCFv
/* 8012148C 0011E3EC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80121490 0011E3F0  38 61 00 54 */	addi r3, r1, 0x54
/* 80121494 0011E3F4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80121498 0011E3F8  38 81 00 48 */	addi r4, r1, 0x48
/* 8012149C 0011E3FC  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 801214A0 0011E400  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801214A4 0011E404  EC 81 00 28 */	fsubs f4, f1, f0
/* 801214A8 0011E408  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 801214AC 0011E40C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801214B0 0011E410  EC 43 10 28 */	fsubs f2, f3, f2
/* 801214B4 0011E414  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801214B8 0011E418  EC 01 00 28 */	fsubs f0, f1, f0
/* 801214BC 0011E41C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801214C0 0011E420  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801214C4 0011E424  48 1F 33 8D */	bl AsNormalized__9CVector3fCFv
/* 801214C8 0011E428  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801214CC 0011E42C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801214D0 0011E430  C0 83 00 48 */	lfs f4, 0x48(r3)
/* 801214D4 0011E434  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 801214D8 0011E438  EC 00 01 32 */	fmuls f0, f0, f4
/* 801214DC 0011E43C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801214E0 0011E440  C0 A3 00 58 */	lfs f5, 0x58(r3)
/* 801214E4 0011E444  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 801214E8 0011E448  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 801214EC 0011E44C  C0 02 97 C8 */	lfs f0, lbl_805AB4E8@sda21(r2)
/* 801214F0 0011E450  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 801214F4 0011E454  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 801214F8 0011E458  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801214FC 0011E45C  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80121500 0011E460  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121504 0011E464  40 80 00 8C */	bge lbl_80121590
/* 80121508 0011E468  83 9E 08 38 */	lwz r28, 0x838(r30)
/* 8012150C 0011E46C  AB 7C 20 08 */	lha r27, 0x2008(r28)
/* 80121510 0011E470  48 00 00 78 */	b lbl_80121588
lbl_80121514:
/* 80121514 0011E474  7F 83 E3 78 */	mr r3, r28
/* 80121518 0011E478  7F 64 DB 78 */	mr r4, r27
/* 8012151C 0011E47C  4B EE E7 C1 */	bl __vc__11CObjectListCFi
/* 80121520 0011E480  7C 64 1B 78 */	mr r4, r3
/* 80121524 0011E484  38 61 00 20 */	addi r3, r1, 0x20
/* 80121528 0011E488  4B F8 3E A9 */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 8012152C 0011E48C  4B F8 3E 79 */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80121530 0011E490  28 03 00 00 */	cmplwi r3, 0
/* 80121534 0011E494  41 82 00 38 */	beq lbl_8012156C
/* 80121538 0011E498  7C 03 E8 40 */	cmplw r3, r29
/* 8012153C 0011E49C  41 82 00 30 */	beq lbl_8012156C
/* 80121540 0011E4A0  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80121544 0011E4A4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121548 0011E4A8  41 82 00 24 */	beq lbl_8012156C
/* 8012154C 0011E4AC  80 63 00 04 */	lwz r3, 4(r3)
/* 80121550 0011E4B0  80 1D 00 04 */	lwz r0, 4(r29)
/* 80121554 0011E4B4  7C 03 00 00 */	cmpw r3, r0
/* 80121558 0011E4B8  40 82 00 14 */	bne lbl_8012156C
/* 8012155C 0011E4BC  C0 3D 07 BC */	lfs f1, 0x7bc(r29)
/* 80121560 0011E4C0  C0 02 97 CC */	lfs f0, lbl_805AB4EC@sda21(r2)
/* 80121564 0011E4C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80121568 0011E4C8  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
lbl_8012156C:
/* 8012156C 0011E4CC  2C 1B FF FF */	cmpwi r27, -1
/* 80121570 0011E4D0  41 82 00 14 */	beq lbl_80121584
/* 80121574 0011E4D4  57 63 18 38 */	slwi r3, r27, 3
/* 80121578 0011E4D8  38 03 00 08 */	addi r0, r3, 8
/* 8012157C 0011E4DC  7F 7C 02 AE */	lhax r27, r28, r0
/* 80121580 0011E4E0  48 00 00 08 */	b lbl_80121588
lbl_80121584:
/* 80121584 0011E4E4  3B 60 FF FF */	li r27, -1
lbl_80121588:
/* 80121588 0011E4E8  2C 1B FF FF */	cmpwi r27, -1
/* 8012158C 0011E4EC  40 82 FF 88 */	bne lbl_80121514
lbl_80121590:
/* 80121590 0011E4F0  FC 20 F8 90 */	fmr f1, f31
/* 80121594 0011E4F4  7F C4 F3 78 */	mr r4, r30
/* 80121598 0011E4F8  38 7D 07 C4 */	addi r3, r29, 0x7c4
/* 8012159C 0011E4FC  48 08 BD B9 */	bl Update__10CBurstFireFR13CStateManagerf
/* 801215A0 0011E500  88 1D 07 D8 */	lbz r0, 0x7d8(r29)
/* 801215A4 0011E504  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801215A8 0011E508  41 82 00 8C */	beq lbl_80121634
/* 801215AC 0011E50C  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801215B0 0011E510  88 03 03 7C */	lbz r0, 0x37c(r3)
/* 801215B4 0011E514  28 00 00 00 */	cmplwi r0, 0
/* 801215B8 0011E518  41 82 00 28 */	beq lbl_801215E0
/* 801215BC 0011E51C  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801215C0 0011E520  48 1F 0F 1D */	bl Float__9CRandom16Fv
/* 801215C4 0011E524  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 801215C8 0011E528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801215CC 0011E52C  40 80 00 14 */	bge lbl_801215E0
/* 801215D0 0011E530  88 1D 07 D8 */	lbz r0, 0x7d8(r29)
/* 801215D4 0011E534  38 60 00 01 */	li r3, 1
/* 801215D8 0011E538  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801215DC 0011E53C  98 1D 07 D8 */	stb r0, 0x7d8(r29)
lbl_801215E0:
/* 801215E0 0011E540  FC 20 F8 90 */	fmr f1, f31
/* 801215E4 0011E544  7F A3 EB 78 */	mr r3, r29
/* 801215E8 0011E548  7F C4 F3 78 */	mr r4, r30
/* 801215EC 0011E54C  48 00 0A E1 */	bl FireProjectile__12CSpacePirateFfR13CStateManager
/* 801215F0 0011E550  88 1D 07 D8 */	lbz r0, 0x7d8(r29)
/* 801215F4 0011E554  38 60 00 00 */	li r3, 0
/* 801215F8 0011E558  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801215FC 0011E55C  98 1D 07 D8 */	stb r0, 0x7d8(r29)
/* 80121600 0011E560  C3 FD 06 08 */	lfs f31, 0x608(r29)
/* 80121604 0011E564  C3 DD 06 04 */	lfs f30, 0x604(r29)
/* 80121608 0011E568  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 8012160C 0011E56C  48 1F 0E D1 */	bl Float__9CRandom16Fv
/* 80121610 0011E570  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80121614 0011E574  C0 5D 07 CC */	lfs f2, 0x7cc(r29)
/* 80121618 0011E578  EC 21 00 28 */	fsubs f1, f1, f0
/* 8012161C 0011E57C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80121620 0011E580  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80121624 0011E584  EC 1F F0 7A */	fmadds f0, f31, f1, f30
/* 80121628 0011E588  40 81 00 1C */	ble lbl_80121644
/* 8012162C 0011E58C  D0 1D 07 CC */	stfs f0, 0x7cc(r29)
/* 80121630 0011E590  48 00 00 14 */	b lbl_80121644
lbl_80121634:
/* 80121634 0011E594  80 1D 07 DC */	lwz r0, 0x7dc(r29)
/* 80121638 0011E598  28 00 00 00 */	cmplwi r0, 0
/* 8012163C 0011E59C  40 82 00 08 */	bne lbl_80121644
/* 80121640 0011E5A0  3B E0 00 01 */	li r31, 1
lbl_80121644:
/* 80121644 0011E5A4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80121648 0011E5A8  41 82 00 10 */	beq lbl_80121658
/* 8012164C 0011E5AC  7F A3 EB 78 */	mr r3, r29
/* 80121650 0011E5B0  7F C4 F3 78 */	mr r4, r30
/* 80121654 0011E5B4  48 00 7F E5 */	bl SquadReset__12CSpacePirateFR13CStateManager
lbl_80121658:
/* 80121658 0011E5B8  7F A3 EB 78 */	mr r3, r29
/* 8012165C 0011E5BC  7F C4 F3 78 */	mr r4, r30
/* 80121660 0011E5C0  48 00 83 7D */	bl CheckTargetable__12CSpacePirateFR13CStateManager
/* 80121664 0011E5C4  88 1D 00 E7 */	lbz r0, 0xe7(r29)
/* 80121668 0011E5C8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8012166C 0011E5CC  98 1D 00 E7 */	stb r0, 0xe7(r29)
/* 80121670 0011E5D0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80121674 0011E5D4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80121678 0011E5D8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8012167C 0011E5DC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80121680 0011E5E0  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 80121684 0011E5E4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80121688 0011E5E8  7C 08 03 A6 */	mtlr r0
/* 8012168C 0011E5EC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80121690 0011E5F0  4E 80 00 20 */	blr

.global CanShoot__10CBodyStateCFv
CanShoot__10CBodyStateCFv:
/* 80121694 0011E5F4  38 60 00 00 */	li r3, 0
/* 80121698 0011E5F8  4E 80 00 20 */	blr

.global UpdateCloak__12CSpacePirateFfRC13CStateManager
UpdateCloak__12CSpacePirateFfRC13CStateManager:
/* 8012169C 0011E5FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801216A0 0011E600  7C 08 02 A6 */	mflr r0
/* 801216A4 0011E604  90 01 00 54 */	stw r0, 0x54(r1)
/* 801216A8 0011E608  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801216AC 0011E60C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801216B0 0011E610  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801216B4 0011E614  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801216B8 0011E618  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 801216BC 0011E61C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 801216C0 0011E620  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801216C4 0011E624  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801216C8 0011E628  88 03 06 35 */	lbz r0, 0x635(r3)
/* 801216CC 0011E62C  FF A0 08 90 */	fmr f29, f1
/* 801216D0 0011E630  7C 7E 1B 78 */	mr r30, r3
/* 801216D4 0011E634  7C 9F 23 78 */	mr r31, r4
/* 801216D8 0011E638  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801216DC 0011E63C  41 82 02 0C */	beq lbl_801218E8
/* 801216E0 0011E640  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 801216E4 0011E644  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801216E8 0011E648  41 82 00 38 */	beq lbl_80121720
/* 801216EC 0011E64C  C0 1E 08 A8 */	lfs f0, 0x8a8(r30)
/* 801216F0 0011E650  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 801216F4 0011E654  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801216F8 0011E658  40 81 00 38 */	ble lbl_80121730
/* 801216FC 0011E65C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80121700 0011E660  D0 1E 08 A8 */	stfs f0, 0x8a8(r30)
/* 80121704 0011E664  C0 1E 08 A8 */	lfs f0, 0x8a8(r30)
/* 80121708 0011E668  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012170C 0011E66C  4C 40 13 82 */	cror 2, 0, 2
/* 80121710 0011E670  40 82 00 20 */	bne lbl_80121730
/* 80121714 0011E674  C0 02 97 D4 */	lfs f0, lbl_805AB4F4@sda21(r2)
/* 80121718 0011E678  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
/* 8012171C 0011E67C  48 00 00 14 */	b lbl_80121730
lbl_80121720:
/* 80121720 0011E680  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80121724 0011E684  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80121728 0011E688  D0 3E 08 B8 */	stfs f1, 0x8b8(r30)
/* 8012172C 0011E68C  D0 1E 08 BC */	stfs f0, 0x8bc(r30)
lbl_80121730:
/* 80121730 0011E690  C0 1E 08 AC */	lfs f0, 0x8ac(r30)
/* 80121734 0011E694  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80121738 0011E698  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012173C 0011E69C  40 81 00 38 */	ble lbl_80121774
/* 80121740 0011E6A0  EC 00 E8 28 */	fsubs f0, f0, f29
/* 80121744 0011E6A4  D0 1E 08 AC */	stfs f0, 0x8ac(r30)
/* 80121748 0011E6A8  C0 1E 08 AC */	lfs f0, 0x8ac(r30)
/* 8012174C 0011E6AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80121750 0011E6B0  4C 40 13 82 */	cror 2, 0, 2
/* 80121754 0011E6B4  40 82 00 20 */	bne lbl_80121774
/* 80121758 0011E6B8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8012175C 0011E6BC  C0 03 03 24 */	lfs f0, 0x324(r3)
/* 80121760 0011E6C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80121764 0011E6C4  41 81 00 10 */	bgt lbl_80121774
/* 80121768 0011E6C8  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 8012176C 0011E6CC  7F C4 F3 78 */	mr r4, r30
/* 80121770 0011E6D0  48 0C 39 E1 */	bl StopElectric__20CActorModelParticlesFR5CActor
lbl_80121774:
/* 80121774 0011E6D4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80121778 0011E6D8  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8012177C 0011E6DC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80121780 0011E6E0  41 82 00 0C */	beq lbl_8012178C
/* 80121784 0011E6E4  C0 02 97 DC */	lfs f0, lbl_805AB4FC@sda21(r2)
/* 80121788 0011E6E8  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
lbl_8012178C:
/* 8012178C 0011E6EC  C0 1E 03 E8 */	lfs f0, 0x3e8(r30)
/* 80121790 0011E6F0  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80121794 0011E6F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80121798 0011E6F8  40 80 00 44 */	bge lbl_801217DC
/* 8012179C 0011E6FC  E0 5E A4 2F */	psq_l f2, 1071(r30), 1, qr2
/* 801217A0 0011E700  C0 02 97 E0 */	lfs f0, lbl_805AB500@sda21(r2)
/* 801217A4 0011E704  C0 7E 08 B8 */	lfs f3, 0x8b8(r30)
/* 801217A8 0011E708  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801217AC 0011E70C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 801217B0 0011E710  40 80 00 2C */	bge lbl_801217DC
/* 801217B4 0011E714  C0 02 97 E4 */	lfs f0, lbl_805AB504@sda21(r2)
/* 801217B8 0011E718  EF E0 00 F2 */	fmuls f31, f0, f3
/* 801217BC 0011E71C  F3 E1 A0 09 */	psq_st f31, 9(r1), 1, qr2
/* 801217C0 0011E720  7F C3 F3 78 */	mr r3, r30
/* 801217C4 0011E724  7F E5 FB 78 */	mr r5, r31
/* 801217C8 0011E728  38 80 00 28 */	li r4, 0x28
/* 801217CC 0011E72C  88 01 00 09 */	lbz r0, 9(r1)
/* 801217D0 0011E730  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 801217D4 0011E734  D0 3E 03 E8 */	stfs f1, 0x3e8(r30)
/* 801217D8 0011E738  4B F3 27 A9 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_801217DC:
/* 801217DC 0011E73C  C0 3E 03 E8 */	lfs f1, 0x3e8(r30)
/* 801217E0 0011E740  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801217E4 0011E744  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801217E8 0011E748  40 81 00 40 */	ble lbl_80121828
/* 801217EC 0011E74C  E0 3E A4 2F */	psq_l f1, 1071(r30), 1, qr2
/* 801217F0 0011E750  C0 02 97 E0 */	lfs f0, lbl_805AB500@sda21(r2)
/* 801217F4 0011E754  C0 5E 08 BC */	lfs f2, 0x8bc(r30)
/* 801217F8 0011E758  EC 00 00 72 */	fmuls f0, f0, f1
/* 801217FC 0011E75C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80121800 0011E760  40 81 00 28 */	ble lbl_80121828
/* 80121804 0011E764  C0 02 97 E4 */	lfs f0, lbl_805AB504@sda21(r2)
/* 80121808 0011E768  EF C0 00 B2 */	fmuls f30, f0, f2
/* 8012180C 0011E76C  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 80121810 0011E770  7F C3 F3 78 */	mr r3, r30
/* 80121814 0011E774  7F E5 FB 78 */	mr r5, r31
/* 80121818 0011E778  38 80 00 28 */	li r4, 0x28
/* 8012181C 0011E77C  88 01 00 08 */	lbz r0, 8(r1)
/* 80121820 0011E780  98 1E 04 2F */	stb r0, 0x42f(r30)
/* 80121824 0011E784  4B F3 2B 2D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80121828:
/* 80121828 0011E788  C0 3E 08 B0 */	lfs f1, 0x8b0(r30)
/* 8012182C 0011E78C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80121830 0011E790  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80121834 0011E794  D0 3E 08 B0 */	stfs f1, 0x8b0(r30)
/* 80121838 0011E798  C0 3E 08 B0 */	lfs f1, 0x8b0(r30)
/* 8012183C 0011E79C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121840 0011E7A0  40 80 00 A8 */	bge lbl_801218E8
/* 80121844 0011E7A4  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80121848 0011E7A8  48 1F 0C 95 */	bl Float__9CRandom16Fv
/* 8012184C 0011E7AC  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80121850 0011E7B0  C0 62 97 E8 */	lfs f3, lbl_805AB508@sda21(r2)
/* 80121854 0011E7B4  EC 40 08 28 */	fsubs f2, f0, f1
/* 80121858 0011E7B8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012185C 0011E7BC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80121860 0011E7C0  D0 5E 08 B0 */	stfs f2, 0x8b0(r30)
/* 80121864 0011E7C4  C0 5E 03 E8 */	lfs f2, 0x3e8(r30)
/* 80121868 0011E7C8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012186C 0011E7CC  40 80 00 40 */	bge lbl_801218AC
/* 80121870 0011E7D0  E0 1E A4 2F */	psq_l f0, 1071(r30), 1, qr2
/* 80121874 0011E7D4  C0 62 97 E0 */	lfs f3, lbl_805AB500@sda21(r2)
/* 80121878 0011E7D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8012187C 0011E7DC  D0 1E 08 B4 */	stfs f0, 0x8b4(r30)
/* 80121880 0011E7E0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 80121884 0011E7E4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121888 0011E7E8  41 82 00 60 */	beq lbl_801218E8
/* 8012188C 0011E7EC  E0 1E A4 2F */	psq_l f0, 1071(r30), 1, qr2
/* 80121890 0011E7F0  C0 5E 08 B8 */	lfs f2, 0x8b8(r30)
/* 80121894 0011E7F4  EC 63 00 32 */	fmuls f3, f3, f0
/* 80121898 0011E7F8  C0 1E 08 B4 */	lfs f0, 0x8b4(r30)
/* 8012189C 0011E7FC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801218A0 0011E800  EC 01 00 BC */	fnmsubs f0, f1, f2, f0
/* 801218A4 0011E804  D0 1E 08 B4 */	stfs f0, 0x8b4(r30)
/* 801218A8 0011E808  48 00 00 40 */	b lbl_801218E8
lbl_801218AC:
/* 801218AC 0011E80C  40 81 00 2C */	ble lbl_801218D8
/* 801218B0 0011E810  E0 9E A4 2F */	psq_l f4, 1071(r30), 1, qr2
/* 801218B4 0011E814  E0 5E A4 2F */	psq_l f2, 1071(r30), 1, qr2
/* 801218B8 0011E818  C0 02 97 E0 */	lfs f0, lbl_805AB500@sda21(r2)
/* 801218BC 0011E81C  C0 7E 08 BC */	lfs f3, 0x8bc(r30)
/* 801218C0 0011E820  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801218C4 0011E824  EC 00 01 32 */	fmuls f0, f0, f4
/* 801218C8 0011E828  EC 43 10 28 */	fsubs f2, f3, f2
/* 801218CC 0011E82C  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 801218D0 0011E830  D0 1E 08 B4 */	stfs f0, 0x8b4(r30)
/* 801218D4 0011E834  48 00 00 14 */	b lbl_801218E8
lbl_801218D8:
/* 801218D8 0011E838  E0 3E A4 2F */	psq_l f1, 1071(r30), 1, qr2
/* 801218DC 0011E83C  C0 02 97 E0 */	lfs f0, lbl_805AB500@sda21(r2)
/* 801218E0 0011E840  EC 00 00 72 */	fmuls f0, f0, f1
/* 801218E4 0011E844  D0 1E 08 B4 */	stfs f0, 0x8b4(r30)
lbl_801218E8:
/* 801218E8 0011E848  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801218EC 0011E84C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801218F0 0011E850  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801218F4 0011E854  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801218F8 0011E858  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 801218FC 0011E85C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80121900 0011E860  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80121904 0011E864  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80121908 0011E868  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012190C 0011E86C  7C 08 03 A6 */	mtlr r0
/* 80121910 0011E870  38 21 00 50 */	addi r1, r1, 0x50
/* 80121914 0011E874  4E 80 00 20 */	blr

.global ShouldFrenzy__12CSpacePirateFR13CStateManager
ShouldFrenzy__12CSpacePirateFR13CStateManager:
/* 80121918 0011E878  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012191C 0011E87C  7C 08 02 A6 */	mflr r0
/* 80121920 0011E880  90 01 00 24 */	stw r0, 0x24(r1)
/* 80121924 0011E884  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80121928 0011E888  3B E0 00 00 */	li r31, 0
/* 8012192C 0011E88C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80121930 0011E890  7C 9E 23 78 */	mr r30, r4
/* 80121934 0011E894  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80121938 0011E898  7C 7D 1B 78 */	mr r29, r3
/* 8012193C 0011E89C  88 63 06 38 */	lbz r3, 0x638(r3)
/* 80121940 0011E8A0  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80121944 0011E8A4  41 82 00 44 */	beq lbl_80121988
/* 80121948 0011E8A8  38 00 00 00 */	li r0, 0
/* 8012194C 0011E8AC  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80121950 0011E8B0  98 7D 06 38 */	stb r3, 0x638(r29)
/* 80121954 0011E8B4  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80121958 0011E8B8  48 1F 0B C9 */	bl Next__9CRandom16Fv
/* 8012195C 0011E8BC  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 80121960 0011E8C0  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 80121964 0011E8C4  7C 00 18 96 */	mulhw r0, r0, r3
/* 80121968 0011E8C8  7C 00 2E 70 */	srawi r0, r0, 5
/* 8012196C 0011E8CC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80121970 0011E8D0  7C 00 22 14 */	add r0, r0, r4
/* 80121974 0011E8D4  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80121978 0011E8D8  7C 00 18 50 */	subf r0, r0, r3
/* 8012197C 0011E8DC  2C 00 00 19 */	cmpwi r0, 0x19
/* 80121980 0011E8E0  40 80 00 08 */	bge lbl_80121988
/* 80121984 0011E8E4  3B E0 00 01 */	li r31, 1
lbl_80121988:
/* 80121988 0011E8E8  3C 60 80 57 */	lis r3, lbl_8056F85C@ha
/* 8012198C 0011E8EC  38 63 F8 5C */	addi r3, r3, lbl_8056F85C@l
/* 80121990 0011E8F0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80121994 0011E8F4  2C 00 00 00 */	cmpwi r0, 0
/* 80121998 0011E8F8  41 82 00 08 */	beq lbl_801219A0
/* 8012199C 0011E8FC  3B E0 00 01 */	li r31, 1
lbl_801219A0:
/* 801219A0 0011E900  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801219A4 0011E904  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 801219A8 0011E908  2C 00 00 01 */	cmpwi r0, 1
/* 801219AC 0011E90C  40 82 00 08 */	bne lbl_801219B4
/* 801219B0 0011E910  3B E0 00 01 */	li r31, 1
lbl_801219B4:
/* 801219B4 0011E914  7F A3 EB 78 */	mr r3, r29
/* 801219B8 0011E918  7F C4 F3 78 */	mr r4, r30
/* 801219BC 0011E91C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801219C0 0011E920  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801219C4 0011E924  7D 89 03 A6 */	mtctr r12
/* 801219C8 0011E928  4E 80 04 21 */	bctrl
/* 801219CC 0011E92C  C0 22 97 EC */	lfs f1, lbl_805AB50C@sda21(r2)
/* 801219D0 0011E930  C0 1D 07 50 */	lfs f0, 0x750(r29)
/* 801219D4 0011E934  C0 43 00 00 */	lfs f2, 0(r3)
/* 801219D8 0011E938  EC 01 00 32 */	fmuls f0, f1, f0
/* 801219DC 0011E93C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801219E0 0011E940  40 80 00 48 */	bge lbl_80121A28
/* 801219E4 0011E944  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 801219E8 0011E948  48 1F 0B 39 */	bl Next__9CRandom16Fv
/* 801219EC 0011E94C  3C 80 51 EC */	lis r4, 0x51EB851F@ha
/* 801219F0 0011E950  38 04 85 1F */	addi r0, r4, 0x51EB851F@l
/* 801219F4 0011E954  7C 00 18 96 */	mulhw r0, r0, r3
/* 801219F8 0011E958  7C 00 2E 70 */	srawi r0, r0, 5
/* 801219FC 0011E95C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80121A00 0011E960  7C 00 22 14 */	add r0, r0, r4
/* 80121A04 0011E964  1C 00 00 64 */	mulli r0, r0, 0x64
/* 80121A08 0011E968  7C 00 18 50 */	subf r0, r0, r3
/* 80121A0C 0011E96C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80121A10 0011E970  40 80 00 18 */	bge lbl_80121A28
/* 80121A14 0011E974  C0 3D 08 54 */	lfs f1, 0x854(r29)
/* 80121A18 0011E978  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80121A1C 0011E97C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121A20 0011E980  40 80 00 08 */	bge lbl_80121A28
/* 80121A24 0011E984  3B E0 00 01 */	li r31, 1
lbl_80121A28:
/* 80121A28 0011E988  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80121A2C 0011E98C  41 82 00 18 */	beq lbl_80121A44
/* 80121A30 0011E990  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80121A34 0011E994  38 80 00 02 */	li r4, 2
/* 80121A38 0011E998  38 A0 00 04 */	li r5, 4
/* 80121A3C 0011E99C  48 1F 0B 59 */	bl Range__9CRandom16Fii
/* 80121A40 0011E9A0  90 7D 06 3C */	stw r3, 0x63c(r29)
lbl_80121A44:
/* 80121A44 0011E9A4  80 7D 06 3C */	lwz r3, 0x63c(r29)
/* 80121A48 0011E9A8  38 63 FF FF */	addi r3, r3, -1
/* 80121A4C 0011E9AC  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80121A50 0011E9B0  90 7D 06 3C */	stw r3, 0x63c(r29)
/* 80121A54 0011E9B4  68 03 00 01 */	xori r3, r0, 1
/* 80121A58 0011E9B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80121A5C 0011E9BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80121A60 0011E9C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80121A64 0011E9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80121A68 0011E9C8  7C 08 03 A6 */	mtlr r0
/* 80121A6C 0011E9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80121A70 0011E9D0  4E 80 00 20 */	blr

.global GetSortingBounds__12CSpacePirateCFRC13CStateManager
GetSortingBounds__12CSpacePirateCFRC13CStateManager:
/* 80121A74 0011E9D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80121A78 0011E9D8  7C 08 02 A6 */	mflr r0
/* 80121A7C 0011E9DC  7C 85 23 78 */	mr r5, r4
/* 80121A80 0011E9E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80121A84 0011E9E4  38 A5 00 34 */	addi r5, r5, 0x34
/* 80121A88 0011E9E8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80121A8C 0011E9EC  7C 7F 1B 78 */	mr r31, r3
/* 80121A90 0011E9F0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80121A94 0011E9F4  80 84 00 64 */	lwz r4, 0x64(r4)
/* 80121A98 0011E9F8  4B FF 3D 1D */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 80121A9C 0011E9FC  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 80121AA0 0011EA00  38 61 00 20 */	addi r3, r1, 0x20
/* 80121AA4 0011EA04  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 80121AA8 0011EA08  38 81 00 44 */	addi r4, r1, 0x44
/* 80121AAC 0011EA0C  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 80121AB0 0011EA10  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80121AB4 0011EA14  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80121AB8 0011EA18  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80121ABC 0011EA1C  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80121AC0 0011EA20  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80121AC4 0011EA24  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80121AC8 0011EA28  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80121ACC 0011EA2C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80121AD0 0011EA30  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80121AD4 0011EA34  48 21 5B 39 */	bl GetCenterPoint__6CAABoxCFv
/* 80121AD8 0011EA38  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 80121ADC 0011EA3C  7F E3 FB 78 */	mr r3, r31
/* 80121AE0 0011EA40  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80121AE4 0011EA44  38 81 00 14 */	addi r4, r1, 0x14
/* 80121AE8 0011EA48  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80121AEC 0011EA4C  38 A1 00 08 */	addi r5, r1, 8
/* 80121AF0 0011EA50  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80121AF4 0011EA54  EC 63 10 28 */	fsubs f3, f3, f2
/* 80121AF8 0011EA58  C0 82 97 F0 */	lfs f4, lbl_805AB510@sda21(r2)
/* 80121AFC 0011EA5C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80121B00 0011EA60  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80121B04 0011EA64  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80121B08 0011EA68  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80121B0C 0011EA6C  C1 01 00 20 */	lfs f8, 0x20(r1)
/* 80121B10 0011EA70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80121B14 0011EA74  EC 28 18 2A */	fadds f1, f8, f3
/* 80121B18 0011EA78  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 80121B1C 0011EA7C  EC A4 00 B2 */	fmuls f5, f4, f2
/* 80121B20 0011EA80  C0 E1 00 28 */	lfs f7, 0x28(r1)
/* 80121B24 0011EA84  EC 84 00 32 */	fmuls f4, f4, f0
/* 80121B28 0011EA88  EC 08 18 28 */	fsubs f0, f8, f3
/* 80121B2C 0011EA8C  EC 66 28 2A */	fadds f3, f6, f5
/* 80121B30 0011EA90  D0 21 00 08 */	stfs f1, 8(r1)
/* 80121B34 0011EA94  EC 47 20 2A */	fadds f2, f7, f4
/* 80121B38 0011EA98  EC 26 28 28 */	fsubs f1, f6, f5
/* 80121B3C 0011EA9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80121B40 0011EAA0  EC 07 20 28 */	fsubs f0, f7, f4
/* 80121B44 0011EAA4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80121B48 0011EAA8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80121B4C 0011EAAC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80121B50 0011EAB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80121B54 0011EAB4  48 21 69 B5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80121B58 0011EAB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80121B5C 0011EABC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80121B60 0011EAC0  7C 08 03 A6 */	mtlr r0
/* 80121B64 0011EAC4  38 21 00 70 */	addi r1, r1, 0x70
/* 80121B68 0011EAC8  4E 80 00 20 */	blr

.global Render__12CSpacePirateCFRC13CStateManager
Render__12CSpacePirateCFRC13CStateManager:
/* 80121B6C 0011EACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80121B70 0011EAD0  7C 08 02 A6 */	mflr r0
/* 80121B74 0011EAD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80121B78 0011EAD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80121B7C 0011EADC  7C 9F 23 78 */	mr r31, r4
/* 80121B80 0011EAE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80121B84 0011EAE4  7C 7E 1B 78 */	mr r30, r3
/* 80121B88 0011EAE8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80121B8C 0011EAEC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121B90 0011EAF0  41 82 00 0C */	beq lbl_80121B9C
/* 80121B94 0011EAF4  48 1E 83 4D */	bl GetSecondsMod900__9CGraphicsFv
/* 80121B98 0011EAF8  48 00 00 08 */	b lbl_80121BA0
lbl_80121B9C:
/* 80121B9C 0011EAFC  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
lbl_80121BA0:
/* 80121BA0 0011EB00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80121BA4 0011EB04  38 61 00 0C */	addi r3, r1, 0xc
/* 80121BA8 0011EB08  38 81 00 08 */	addi r4, r1, 8
/* 80121BAC 0011EB0C  48 23 67 29 */	bl __ct__13CTimeProviderFRCf
/* 80121BB0 0011EB10  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 80121BB4 0011EB14  38 9E 08 CC */	addi r4, r30, 0x8cc
/* 80121BB8 0011EB18  81 83 00 00 */	lwz r12, 0(r3)
/* 80121BBC 0011EB1C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80121BC0 0011EB20  7D 89 03 A6 */	mtctr r12
/* 80121BC4 0011EB24  4E 80 04 21 */	bctrl
/* 80121BC8 0011EB28  7F C3 F3 78 */	mr r3, r30
/* 80121BCC 0011EB2C  7F E4 FB 78 */	mr r4, r31
/* 80121BD0 0011EB30  4B F5 64 5D */	bl Render__10CPatternedCFRC13CStateManager
/* 80121BD4 0011EB34  38 61 00 0C */	addi r3, r1, 0xc
/* 80121BD8 0011EB38  38 80 FF FF */	li r4, -1
/* 80121BDC 0011EB3C  48 23 66 81 */	bl __dt__13CTimeProviderFv
/* 80121BE0 0011EB40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80121BE4 0011EB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80121BE8 0011EB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80121BEC 0011EB4C  7C 08 03 A6 */	mtlr r0
/* 80121BF0 0011EB50  38 21 00 20 */	addi r1, r1, 0x20
/* 80121BF4 0011EB54  4E 80 00 20 */	blr

.global PreRender__12CSpacePirateFR13CStateManagerRC14CFrustumPlanes
PreRender__12CSpacePirateFR13CStateManagerRC14CFrustumPlanes:
/* 80121BF8 0011EB58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80121BFC 0011EB5C  7C 08 02 A6 */	mflr r0
/* 80121C00 0011EB60  90 01 00 44 */	stw r0, 0x44(r1)
/* 80121C04 0011EB64  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80121C08 0011EB68  7C BF 2B 78 */	mr r31, r5
/* 80121C0C 0011EB6C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80121C10 0011EB70  7C 9E 23 78 */	mr r30, r4
/* 80121C14 0011EB74  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80121C18 0011EB78  7C 7D 1B 78 */	mr r29, r3
/* 80121C1C 0011EB7C  80 63 08 5C */	lwz r3, 0x85c(r3)
/* 80121C20 0011EB80  28 03 00 00 */	cmplwi r3, 0
/* 80121C24 0011EB84  41 82 00 40 */	beq lbl_80121C64
/* 80121C28 0011EB88  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80121C2C 0011EB8C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80121C30 0011EB90  41 82 00 34 */	beq lbl_80121C64
/* 80121C34 0011EB94  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80121C38 0011EB98  38 81 00 20 */	addi r4, r1, 0x20
/* 80121C3C 0011EB9C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80121C40 0011EBA0  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80121C44 0011EBA4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80121C48 0011EBA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80121C4C 0011EBAC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80121C50 0011EBB0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80121C54 0011EBB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80121C58 0011EBB8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80121C5C 0011EBBC  7D 89 03 A6 */	mtctr r12
/* 80121C60 0011EBC0  4E 80 04 21 */	bctrl
lbl_80121C64:
/* 80121C64 0011EBC4  7F A3 EB 78 */	mr r3, r29
/* 80121C68 0011EBC8  7F C4 F3 78 */	mr r4, r30
/* 80121C6C 0011EBCC  7F E5 FB 78 */	mr r5, r31
/* 80121C70 0011EBD0  4B F5 66 6D */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 80121C74 0011EBD4  80 7D 08 5C */	lwz r3, 0x85c(r29)
/* 80121C78 0011EBD8  28 03 00 00 */	cmplwi r3, 0
/* 80121C7C 0011EBDC  41 82 00 10 */	beq lbl_80121C8C
/* 80121C80 0011EBE0  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80121C84 0011EBE4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80121C88 0011EBE8  40 82 00 74 */	bne lbl_80121CFC
lbl_80121C8C:
/* 80121C8C 0011EBEC  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80121C90 0011EBF0  7F C4 F3 78 */	mr r4, r30
/* 80121C94 0011EBF4  81 1D 04 50 */	lwz r8, 0x450(r29)
/* 80121C98 0011EBF8  38 7D 07 64 */	addi r3, r29, 0x764
/* 80121C9C 0011EBFC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80121CA0 0011EC00  38 DD 00 34 */	addi r6, r29, 0x34
/* 80121CA4 0011EC04  38 E1 00 14 */	addi r7, r1, 0x14
/* 80121CA8 0011EC08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80121CAC 0011EC0C  C0 05 00 04 */	lfs f0, 4(r5)
/* 80121CB0 0011EC10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80121CB4 0011EC14  C0 05 00 08 */	lfs f0, 8(r5)
/* 80121CB8 0011EC18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80121CBC 0011EC1C  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80121CC0 0011EC20  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80121CC4 0011EC24  48 05 3C 4D */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 80121CC8 0011EC28  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80121CCC 0011EC2C  38 7D 08 60 */	addi r3, r29, 0x860
/* 80121CD0 0011EC30  38 BD 00 34 */	addi r5, r29, 0x34
/* 80121CD4 0011EC34  38 C1 00 08 */	addi r6, r1, 8
/* 80121CD8 0011EC38  C0 04 00 00 */	lfs f0, 0(r4)
/* 80121CDC 0011EC3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80121CE0 0011EC40  C0 04 00 04 */	lfs f0, 4(r4)
/* 80121CE4 0011EC44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80121CE8 0011EC48  C0 04 00 08 */	lfs f0, 8(r4)
/* 80121CEC 0011EC4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80121CF0 0011EC50  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80121CF4 0011EC54  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80121CF8 0011EC58  48 10 3C 7D */	bl PreRender__8CIkChainFR9CAnimDataRC12CTransform4fRC9CVector3f
lbl_80121CFC:
/* 80121CFC 0011EC5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80121D00 0011EC60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80121D04 0011EC64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80121D08 0011EC68  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80121D0C 0011EC6C  7C 08 03 A6 */	mtlr r0
/* 80121D10 0011EC70  38 21 00 40 */	addi r1, r1, 0x40
/* 80121D14 0011EC74  4E 80 00 20 */	blr

.global CalculateRenderBounds__12CSpacePirateFv
CalculateRenderBounds__12CSpacePirateFv:
/* 80121D18 0011EC78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80121D1C 0011EC7C  7C 08 02 A6 */	mflr r0
/* 80121D20 0011EC80  90 01 00 64 */	stw r0, 0x64(r1)
/* 80121D24 0011EC84  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80121D28 0011EC88  7C 7F 1B 78 */	mr r31, r3
/* 80121D2C 0011EC8C  80 83 08 5C */	lwz r4, 0x85c(r3)
/* 80121D30 0011EC90  28 04 00 00 */	cmplwi r4, 0
/* 80121D34 0011EC94  41 82 00 C4 */	beq lbl_80121DF8
/* 80121D38 0011EC98  88 04 00 68 */	lbz r0, 0x68(r4)
/* 80121D3C 0011EC9C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80121D40 0011ECA0  41 82 00 B8 */	beq lbl_80121DF8
/* 80121D44 0011ECA4  38 61 00 38 */	addi r3, r1, 0x38
/* 80121D48 0011ECA8  48 0E AB 11 */	bl CalculateRenderBounds__8CRagDollCFv
/* 80121D4C 0011ECAC  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 80121D50 0011ECB0  38 61 00 20 */	addi r3, r1, 0x20
/* 80121D54 0011ECB4  C0 62 97 CC */	lfs f3, lbl_805AB4EC@sda21(r2)
/* 80121D58 0011ECB8  38 81 00 14 */	addi r4, r1, 0x14
/* 80121D5C 0011ECBC  C0 26 00 00 */	lfs f1, 0(r6)
/* 80121D60 0011ECC0  38 A1 00 08 */	addi r5, r1, 8
/* 80121D64 0011ECC4  C0 06 00 04 */	lfs f0, 4(r6)
/* 80121D68 0011ECC8  C0 46 00 08 */	lfs f2, 8(r6)
/* 80121D6C 0011ECCC  ED 03 00 72 */	fmuls f8, f3, f1
/* 80121D70 0011ECD0  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80121D74 0011ECD4  EC E3 00 32 */	fmuls f7, f3, f0
/* 80121D78 0011ECD8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80121D7C 0011ECDC  EC C3 00 B2 */	fmuls f6, f3, f2
/* 80121D80 0011ECE0  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 80121D84 0011ECE4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 80121D88 0011ECE8  EC A1 40 2A */	fadds f5, f1, f8
/* 80121D8C 0011ECEC  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80121D90 0011ECF0  EC 80 38 2A */	fadds f4, f0, f7
/* 80121D94 0011ECF4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80121D98 0011ECF8  EC 63 30 2A */	fadds f3, f3, f6
/* 80121D9C 0011ECFC  EC 42 40 28 */	fsubs f2, f2, f8
/* 80121DA0 0011ED00  EC 21 38 28 */	fsubs f1, f1, f7
/* 80121DA4 0011ED04  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80121DA8 0011ED08  EC 00 30 28 */	fsubs f0, f0, f6
/* 80121DAC 0011ED0C  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80121DB0 0011ED10  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80121DB4 0011ED14  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80121DB8 0011ED18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80121DBC 0011ED1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80121DC0 0011ED20  48 21 67 49 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80121DC4 0011ED24  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80121DC8 0011ED28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80121DCC 0011ED2C  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 80121DD0 0011ED30  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80121DD4 0011ED34  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80121DD8 0011ED38  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80121DDC 0011ED3C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80121DE0 0011ED40  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80121DE4 0011ED44  90 7F 00 A8 */	stw r3, 0xa8(r31)
/* 80121DE8 0011ED48  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80121DEC 0011ED4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80121DF0 0011ED50  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 80121DF4 0011ED54  48 00 00 0C */	b lbl_80121E00
lbl_80121DF8:
/* 80121DF8 0011ED58  7F E3 FB 78 */	mr r3, r31
/* 80121DFC 0011ED5C  4B F3 32 D9 */	bl CalculateRenderBounds__6CActorFv
lbl_80121E00:
/* 80121E00 0011ED60  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80121E04 0011ED64  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80121E08 0011ED68  7C 08 03 A6 */	mtlr r0
/* 80121E0C 0011ED6C  38 21 00 60 */	addi r1, r1, 0x60
/* 80121E10 0011ED70  4E 80 00 20 */	blr

.global GetModelAlphau8__12CSpacePirateCFRC13CStateManager
GetModelAlphau8__12CSpacePirateCFRC13CStateManager:
/* 80121E14 0011ED74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80121E18 0011ED78  7C 08 02 A6 */	mflr r0
/* 80121E1C 0011ED7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80121E20 0011ED80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80121E24 0011ED84  3B E0 00 FF */	li r31, 0xff
/* 80121E28 0011ED88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80121E2C 0011ED8C  7C 9E 23 78 */	mr r30, r4
/* 80121E30 0011ED90  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80121E34 0011ED94  7C 7D 1B 78 */	mr r29, r3
/* 80121E38 0011ED98  80 64 08 B8 */	lwz r3, 0x8b8(r4)
/* 80121E3C 0011ED9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80121E40 0011EDA0  4B F6 F7 19 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80121E44 0011EDA4  2C 03 00 01 */	cmpwi r3, 1
/* 80121E48 0011EDA8  41 82 00 1C */	beq lbl_80121E64
/* 80121E4C 0011EDAC  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 80121E50 0011EDB0  7F C4 F3 78 */	mr r4, r30
/* 80121E54 0011EDB4  80 63 00 00 */	lwz r3, 0(r3)
/* 80121E58 0011EDB8  4B F6 F7 01 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 80121E5C 0011EDBC  2C 03 00 03 */	cmpwi r3, 3
/* 80121E60 0011EDC0  40 82 00 10 */	bne lbl_80121E70
lbl_80121E64:
/* 80121E64 0011EDC4  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80121E68 0011EDC8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80121E6C 0011EDCC  40 82 00 30 */	bne lbl_80121E9C
lbl_80121E70:
/* 80121E70 0011EDD0  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 80121E74 0011EDD4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80121E78 0011EDD8  40 82 00 0C */	bne lbl_80121E84
/* 80121E7C 0011EDDC  8B FD 04 2F */	lbz r31, 0x42f(r29)
/* 80121E80 0011EDE0  48 00 00 1C */	b lbl_80121E9C
lbl_80121E84:
/* 80121E84 0011EDE4  C0 22 97 E4 */	lfs f1, lbl_805AB504@sda21(r2)
/* 80121E88 0011EDE8  C0 1D 08 B4 */	lfs f0, 0x8b4(r29)
/* 80121E8C 0011EDEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80121E90 0011EDF0  FC 00 00 1E */	fctiwz f0, f0
/* 80121E94 0011EDF4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80121E98 0011EDF8  83 E1 00 0C */	lwz r31, 0xc(r1)
lbl_80121E9C:
/* 80121E9C 0011EDFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80121EA0 0011EE00  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80121EA4 0011EE04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80121EA8 0011EE08  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80121EAC 0011EE0C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80121EB0 0011EE10  7C 08 03 A6 */	mtlr r0
/* 80121EB4 0011EE14  38 21 00 20 */	addi r1, r1, 0x20
/* 80121EB8 0011EE18  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CSpacePirateFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CSpacePirateFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 80121EBC 0011EE1C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80121EC0 0011EE20  7C 08 02 A6 */	mflr r0
/* 80121EC4 0011EE24  90 01 00 94 */	stw r0, 0x94(r1)
/* 80121EC8 0011EE28  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80121ECC 0011EE2C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80121ED0 0011EE30  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80121ED4 0011EE34  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80121ED8 0011EE38  93 A1 00 74 */	stw r29, 0x74(r1)
/* 80121EDC 0011EE3C  93 81 00 70 */	stw r28, 0x70(r1)
/* 80121EE0 0011EE40  7C DF 33 78 */	mr r31, r6
/* 80121EE4 0011EE44  FF E0 08 90 */	fmr f31, f1
/* 80121EE8 0011EE48  38 1F FF F5 */	addi r0, r31, -11
/* 80121EEC 0011EE4C  7C 7C 1B 78 */	mr r28, r3
/* 80121EF0 0011EE50  28 00 00 0A */	cmplwi r0, 0xa
/* 80121EF4 0011EE54  7C 9D 23 78 */	mr r29, r4
/* 80121EF8 0011EE58  7C BE 2B 78 */	mr r30, r5
/* 80121EFC 0011EE5C  38 A0 00 00 */	li r5, 0
/* 80121F00 0011EE60  41 81 01 84 */	bgt lbl_80122084
/* 80121F04 0011EE64  3C 80 80 3E */	lis r4, lbl_803E0ACC@ha
/* 80121F08 0011EE68  54 00 10 3A */	slwi r0, r0, 2
/* 80121F0C 0011EE6C  38 84 0A CC */	addi r4, r4, lbl_803E0ACC@l
/* 80121F10 0011EE70  7C 04 00 2E */	lwzx r0, r4, r0
/* 80121F14 0011EE74  7C 09 03 A6 */	mtctr r0
/* 80121F18 0011EE78  4E 80 04 20 */	bctr
.global lbl_80121F1C
lbl_80121F1C:
/* 80121F1C 0011EE7C  7F A5 EB 78 */	mr r5, r29
/* 80121F20 0011EE80  38 80 00 13 */	li r4, 0x13
/* 80121F24 0011EE84  4B F3 20 5D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80121F28 0011EE88  88 1C 06 38 */	lbz r0, 0x638(r28)
/* 80121F2C 0011EE8C  38 60 00 01 */	li r3, 1
/* 80121F30 0011EE90  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80121F34 0011EE94  38 A0 00 01 */	li r5, 1
/* 80121F38 0011EE98  98 1C 06 38 */	stb r0, 0x638(r28)
/* 80121F3C 0011EE9C  48 00 01 48 */	b lbl_80122084
.global lbl_80121F40
lbl_80121F40:
/* 80121F40 0011EEA0  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 80121F44 0011EEA4  38 60 00 00 */	li r3, 0
/* 80121F48 0011EEA8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80121F4C 0011EEAC  38 A0 00 01 */	li r5, 1
/* 80121F50 0011EEB0  98 1C 06 39 */	stb r0, 0x639(r28)
/* 80121F54 0011EEB4  48 00 01 30 */	b lbl_80122084
.global lbl_80121F58
lbl_80121F58:
/* 80121F58 0011EEB8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80121F5C 0011EEBC  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80121F60 0011EEC0  40 82 00 30 */	bne lbl_80121F90
/* 80121F64 0011EEC4  7F 83 E3 78 */	mr r3, r28
/* 80121F68 0011EEC8  7F A4 EB 78 */	mr r4, r29
/* 80121F6C 0011EECC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80121F70 0011EED0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80121F74 0011EED4  7D 89 03 A6 */	mtctr r12
/* 80121F78 0011EED8  4E 80 04 21 */	bctrl
/* 80121F7C 0011EEDC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80121F80 0011EEE0  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80121F84 0011EEE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80121F88 0011EEE8  4C 40 13 82 */	cror 2, 0, 2
/* 80121F8C 0011EEEC  40 82 00 1C */	bne lbl_80121FA8
lbl_80121F90:
/* 80121F90 0011EEF0  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 80121F94 0011EEF4  48 1F 05 49 */	bl Float__9CRandom16Fv
/* 80121F98 0011EEF8  C0 42 97 F8 */	lfs f2, lbl_805AB518@sda21(r2)
/* 80121F9C 0011EEFC  C0 02 97 F4 */	lfs f0, lbl_805AB514@sda21(r2)
/* 80121FA0 0011EF00  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80121FA4 0011EF04  D0 1C 08 58 */	stfs f0, 0x858(r28)
lbl_80121FA8:
/* 80121FA8 0011EF08  38 A0 00 01 */	li r5, 1
/* 80121FAC 0011EF0C  48 00 00 D8 */	b lbl_80122084
.global lbl_80121FB0
lbl_80121FB0:
/* 80121FB0 0011EF10  88 1C 08 A4 */	lbz r0, 0x8a4(r28)
/* 80121FB4 0011EF14  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80121FB8 0011EF18  40 82 00 70 */	bne lbl_80122028
/* 80121FBC 0011EF1C  80 9C 00 64 */	lwz r4, 0x64(r28)
/* 80121FC0 0011EF20  38 61 00 0C */	addi r3, r1, 0xc
/* 80121FC4 0011EF24  38 BE 00 3C */	addi r5, r30, 0x3c
/* 80121FC8 0011EF28  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80121FCC 0011EF2C  4B F0 C8 6D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80121FD0 0011EF30  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80121FD4 0011EF34  38 A1 00 0C */	addi r5, r1, 0xc
/* 80121FD8 0011EF38  28 00 00 03 */	cmplwi r0, 3
/* 80121FDC 0011EF3C  41 82 00 4C */	beq lbl_80122028
/* 80121FE0 0011EF40  7F 84 E3 78 */	mr r4, r28
/* 80121FE4 0011EF44  38 61 00 10 */	addi r3, r1, 0x10
/* 80121FE8 0011EF48  4B F5 68 D1 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80121FEC 0011EF4C  38 61 00 40 */	addi r3, r1, 0x40
/* 80121FF0 0011EF50  38 81 00 10 */	addi r4, r1, 0x10
/* 80121FF4 0011EF54  48 1F 0B 81 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80121FF8 0011EF58  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80121FFC 0011EF5C  38 7C 08 60 */	addi r3, r28, 0x860
/* 80122000 0011EF60  38 A1 00 08 */	addi r5, r1, 8
/* 80122004 0011EF64  38 C1 00 40 */	addi r6, r1, 0x40
/* 80122008 0011EF68  98 01 00 08 */	stb r0, 8(r1)
/* 8012200C 0011EF6C  80 9C 00 64 */	lwz r4, 0x64(r28)
/* 80122010 0011EF70  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80122014 0011EF74  48 10 3E 09 */	bl Activate__8CIkChainFRC9CAnimData6CSegIdRC12CTransform4f
/* 80122018 0011EF78  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 8012201C 0011EF7C  38 60 00 01 */	li r3, 1
/* 80122020 0011EF80  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80122024 0011EF84  98 1C 06 39 */	stb r0, 0x639(r28)
lbl_80122028:
/* 80122028 0011EF88  38 A0 00 01 */	li r5, 1
/* 8012202C 0011EF8C  48 00 00 58 */	b lbl_80122084
.global lbl_80122030
lbl_80122030:
/* 80122030 0011EF90  38 7C 08 60 */	addi r3, r28, 0x860
/* 80122034 0011EF94  48 10 39 2D */	bl Deactivate__8CIkChainFv
/* 80122038 0011EF98  38 A0 00 01 */	li r5, 1
/* 8012203C 0011EF9C  48 00 00 48 */	b lbl_80122084
.global lbl_80122040
lbl_80122040:
/* 80122040 0011EFA0  7F A5 EB 78 */	mr r5, r29
/* 80122044 0011EFA4  38 80 00 12 */	li r4, 0x12
/* 80122048 0011EFA8  38 C0 FF FF */	li r6, -1
/* 8012204C 0011EFAC  4B F2 F0 75 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
/* 80122050 0011EFB0  38 A0 00 01 */	li r5, 1
/* 80122054 0011EFB4  48 00 00 30 */	b lbl_80122084
.global lbl_80122058
lbl_80122058:
/* 80122058 0011EFB8  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 8012205C 0011EFBC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80122060 0011EFC0  41 82 00 20 */	beq lbl_80122080
/* 80122064 0011EFC4  C0 02 97 FC */	lfs f0, lbl_805AB51C@sda21(r2)
/* 80122068 0011EFC8  7F 84 E3 78 */	mr r4, r28
/* 8012206C 0011EFCC  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
/* 80122070 0011EFD0  80 7D 08 84 */	lwz r3, 0x884(r29)
/* 80122074 0011EFD4  48 0C 31 5D */	bl LoadAndStartElectric__20CActorModelParticlesFR6CActor
/* 80122078 0011EFD8  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 8012207C 0011EFDC  D0 1C 08 AC */	stfs f0, 0x8ac(r28)
lbl_80122080:
/* 80122080 0011EFE0  38 A0 00 01 */	li r5, 1
.global lbl_80122084
lbl_80122084:
/* 80122084 0011EFE4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80122088 0011EFE8  40 82 00 1C */	bne lbl_801220A4
/* 8012208C 0011EFEC  FC 20 F8 90 */	fmr f1, f31
/* 80122090 0011EFF0  7F 83 E3 78 */	mr r3, r28
/* 80122094 0011EFF4  7F A4 EB 78 */	mr r4, r29
/* 80122098 0011EFF8  7F C5 F3 78 */	mr r5, r30
/* 8012209C 0011EFFC  7F E6 FB 78 */	mr r6, r31
/* 801220A0 0011F000  4B F5 6E 11 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801220A4:
/* 801220A4 0011F004  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801220A8 0011F008  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801220AC 0011F00C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801220B0 0011F010  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801220B4 0011F014  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801220B8 0011F018  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801220BC 0011F01C  83 81 00 70 */	lwz r28, 0x70(r1)
/* 801220C0 0011F020  7C 08 03 A6 */	mtlr r0
/* 801220C4 0011F024  38 21 00 90 */	addi r1, r1, 0x90
/* 801220C8 0011F028  4E 80 00 20 */	blr

.global FireProjectile__12CSpacePirateFfR13CStateManager
FireProjectile__12CSpacePirateFfR13CStateManager:
/* 801220CC 0011F02C  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 801220D0 0011F030  7C 08 02 A6 */	mflr r0
/* 801220D4 0011F034  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 801220D8 0011F038  DB E1 02 D0 */	stfd f31, 0x2d0(r1)
/* 801220DC 0011F03C  F3 E1 02 D8 */	psq_st f31, 728(r1), 0, qr0
/* 801220E0 0011F040  93 E1 02 CC */	stw r31, 0x2cc(r1)
/* 801220E4 0011F044  93 C1 02 C8 */	stw r30, 0x2c8(r1)
/* 801220E8 0011F048  93 A1 02 C4 */	stw r29, 0x2c4(r1)
/* 801220EC 0011F04C  93 81 02 C0 */	stw r28, 0x2c0(r1)
/* 801220F0 0011F050  FF E0 08 90 */	fmr f31, f1
/* 801220F4 0011F054  7C 7D 1B 78 */	mr r29, r3
/* 801220F8 0011F058  7C 9E 23 78 */	mr r30, r4
/* 801220FC 0011F05C  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 80122100 0011F060  7F A4 EB 78 */	mr r4, r29
/* 80122104 0011F064  38 BD 07 B6 */	addi r5, r29, 0x7b6
/* 80122108 0011F068  3B E0 00 00 */	li r31, 0
/* 8012210C 0011F06C  4B F5 67 AD */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80122110 0011F070  38 61 02 40 */	addi r3, r1, 0x240
/* 80122114 0011F074  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 80122118 0011F078  48 1F 0A 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8012211C 0011F07C  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 80122120 0011F080  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80122124 0011F084  40 82 00 80 */	bne lbl_801221A4
/* 80122128 0011F088  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 8012212C 0011F08C  39 60 00 00 */	li r11, 0
/* 80122130 0011F090  99 61 01 34 */	stb r11, 0x134(r1)
/* 80122134 0011F094  38 01 01 1C */	addi r0, r1, 0x11c
/* 80122138 0011F098  A1 42 C5 FC */	lhz r10, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 8012213C 0011F09C  7F A3 EB 78 */	mr r3, r29
/* 80122140 0011F0A0  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80122144 0011F0A4  7F C5 F3 78 */	mr r5, r30
/* 80122148 0011F0A8  38 81 02 40 */	addi r4, r1, 0x240
/* 8012214C 0011F0AC  39 21 01 28 */	addi r9, r1, 0x128
/* 80122150 0011F0B0  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80122154 0011F0B4  38 C0 00 06 */	li r6, 6
/* 80122158 0011F0B8  38 E0 00 00 */	li r7, 0
/* 8012215C 0011F0BC  39 00 00 00 */	li r8, 0
/* 80122160 0011F0C0  D0 01 01 24 */	stfs f0, 0x124(r1)
/* 80122164 0011F0C4  91 61 00 08 */	stw r11, 8(r1)
/* 80122168 0011F0C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012216C 0011F0CC  4B F5 58 8D */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 80122170 0011F0D0  88 01 01 34 */	lbz r0, 0x134(r1)
/* 80122174 0011F0D4  28 00 00 00 */	cmplwi r0, 0
/* 80122178 0011F0D8  41 82 00 1C */	beq lbl_80122194
/* 8012217C 0011F0DC  34 61 01 28 */	addic. r3, r1, 0x128
/* 80122180 0011F0E0  41 82 00 14 */	beq lbl_80122194
/* 80122184 0011F0E4  28 03 00 00 */	cmplwi r3, 0
/* 80122188 0011F0E8  41 82 00 0C */	beq lbl_80122194
/* 8012218C 0011F0EC  38 80 00 00 */	li r4, 0
/* 80122190 0011F0F0  48 21 EC B1 */	bl __dt__6CTokenFv
lbl_80122194:
/* 80122194 0011F0F4  38 00 00 00 */	li r0, 0
/* 80122198 0011F0F8  3B E0 00 01 */	li r31, 1
/* 8012219C 0011F0FC  98 01 01 34 */	stb r0, 0x134(r1)
/* 801221A0 0011F100  48 00 03 AC */	b lbl_8012254C
lbl_801221A4:
/* 801221A4 0011F104  A0 1D 07 C0 */	lhz r0, 0x7c0(r29)
/* 801221A8 0011F108  7F C3 F3 78 */	mr r3, r30
/* 801221AC 0011F10C  38 81 00 10 */	addi r4, r1, 0x10
/* 801221B0 0011F110  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801221B4 0011F114  4B F2 A3 F1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801221B8 0011F118  7C 64 1B 78 */	mr r4, r3
/* 801221BC 0011F11C  38 61 00 18 */	addi r3, r1, 0x18
/* 801221C0 0011F120  4B F8 DA D1 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 801221C4 0011F124  80 63 00 04 */	lwz r3, 4(r3)
/* 801221C8 0011F128  28 03 00 00 */	cmplwi r3, 0
/* 801221CC 0011F12C  41 82 03 80 */	beq lbl_8012254C
/* 801221D0 0011F130  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801221D4 0011F134  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801221D8 0011F138  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801221DC 0011F13C  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 801221E0 0011F140  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 801221E4 0011F144  D0 41 01 4C */	stfs f2, 0x14c(r1)
/* 801221E8 0011F148  83 9E 08 4C */	lwz r28, 0x84c(r30)
/* 801221EC 0011F14C  A0 7D 07 C0 */	lhz r3, 0x7c0(r29)
/* 801221F0 0011F150  A0 1C 00 08 */	lhz r0, 8(r28)
/* 801221F4 0011F154  7C 03 00 40 */	cmplw r3, r0
/* 801221F8 0011F158  40 82 00 88 */	bne lbl_80122280
/* 801221FC 0011F15C  C0 21 02 4C */	lfs f1, 0x24c(r1)
/* 80122200 0011F160  7F 84 E3 78 */	mr r4, r28
/* 80122204 0011F164  C0 41 02 5C */	lfs f2, 0x25c(r1)
/* 80122208 0011F168  7F C5 F3 78 */	mr r5, r30
/* 8012220C 0011F16C  C0 01 02 6C */	lfs f0, 0x26c(r1)
/* 80122210 0011F170  38 61 00 F8 */	addi r3, r1, 0xf8
/* 80122214 0011F174  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80122218 0011F178  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012221C 0011F17C  D0 41 01 08 */	stfs f2, 0x108(r1)
/* 80122220 0011F180  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80122224 0011F184  81 9C 00 00 */	lwz r12, 0(r28)
/* 80122228 0011F188  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8012222C 0011F18C  7D 89 03 A6 */	mtctr r12
/* 80122230 0011F190  4E 80 04 21 */	bctrl
/* 80122234 0011F194  7F A3 EB 78 */	mr r3, r29
/* 80122238 0011F198  81 9D 00 00 */	lwz r12, 0(r29)
/* 8012223C 0011F19C  81 8C 02 C0 */	lwz r12, 0x2c0(r12)
/* 80122240 0011F1A0  7D 89 03 A6 */	mtctr r12
/* 80122244 0011F1A4  4E 80 04 21 */	bctrl
/* 80122248 0011F1A8  FC 20 F8 90 */	fmr f1, f31
/* 8012224C 0011F1AC  7C 64 1B 78 */	mr r4, r3
/* 80122250 0011F1B0  7F 87 E3 78 */	mr r7, r28
/* 80122254 0011F1B4  38 61 01 10 */	addi r3, r1, 0x110
/* 80122258 0011F1B8  38 A1 01 04 */	addi r5, r1, 0x104
/* 8012225C 0011F1BC  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 80122260 0011F1C0  39 00 00 01 */	li r8, 1
/* 80122264 0011F1C4  48 0F 9C 89 */	bl PredictInterceptPos__15CProjectileInfoFRC9CVector3fRC9CVector3fRC7CPlayerbf
/* 80122268 0011F1C8  C0 41 01 10 */	lfs f2, 0x110(r1)
/* 8012226C 0011F1CC  C0 21 01 14 */	lfs f1, 0x114(r1)
/* 80122270 0011F1D0  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 80122274 0011F1D4  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 80122278 0011F1D8  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 8012227C 0011F1DC  D0 01 01 4C */	stfs f0, 0x14c(r1)
lbl_80122280:
/* 80122280 0011F1E0  C0 41 02 6C */	lfs f2, 0x26c(r1)
/* 80122284 0011F1E4  38 61 01 38 */	addi r3, r1, 0x138
/* 80122288 0011F1E8  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8012228C 0011F1EC  C0 81 02 5C */	lfs f4, 0x25c(r1)
/* 80122290 0011F1F0  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 80122294 0011F1F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 80122298 0011F1F8  C0 61 02 4C */	lfs f3, 0x24c(r1)
/* 8012229C 0011F1FC  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 801222A0 0011F200  EC 21 20 28 */	fsubs f1, f1, f4
/* 801222A4 0011F204  D0 41 01 40 */	stfs f2, 0x140(r1)
/* 801222A8 0011F208  EC 00 18 28 */	fsubs f0, f0, f3
/* 801222AC 0011F20C  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 801222B0 0011F210  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 801222B4 0011F214  48 1F 26 05 */	bl Magnitude__9CVector3fCFv
/* 801222B8 0011F218  FF E0 08 90 */	fmr f31, f1
/* 801222BC 0011F21C  C0 62 97 D8 */	lfs f3, lbl_805AB4F8@sda21(r2)
/* 801222C0 0011F220  C0 81 01 38 */	lfs f4, 0x138(r1)
/* 801222C4 0011F224  7F A4 EB 78 */	mr r4, r29
/* 801222C8 0011F228  C0 41 01 3C */	lfs f2, 0x13c(r1)
/* 801222CC 0011F22C  38 61 01 80 */	addi r3, r1, 0x180
/* 801222D0 0011F230  EC A3 F8 24 */	fdivs f5, f3, f31
/* 801222D4 0011F234  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 801222D8 0011F238  38 BD 07 B7 */	addi r5, r29, 0x7b7
/* 801222DC 0011F23C  EC 64 01 72 */	fmuls f3, f4, f5
/* 801222E0 0011F240  EC 22 01 72 */	fmuls f1, f2, f5
/* 801222E4 0011F244  EC 00 01 72 */	fmuls f0, f0, f5
/* 801222E8 0011F248  D0 61 01 38 */	stfs f3, 0x138(r1)
/* 801222EC 0011F24C  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 801222F0 0011F250  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 801222F4 0011F254  4B F5 65 C5 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801222F8 0011F258  C0 41 01 AC */	lfs f2, 0x1ac(r1)
/* 801222FC 0011F25C  7F A4 EB 78 */	mr r4, r29
/* 80122300 0011F260  C0 21 01 9C */	lfs f1, 0x19c(r1)
/* 80122304 0011F264  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 80122308 0011F268  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8012230C 0011F26C  38 BD 07 B8 */	addi r5, r29, 0x7b8
/* 80122310 0011F270  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80122314 0011F274  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80122318 0011F278  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 8012231C 0011F27C  4B F5 65 9D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 80122320 0011F280  C0 A1 01 DC */	lfs f5, 0x1dc(r1)
/* 80122324 0011F284  38 61 00 EC */	addi r3, r1, 0xec
/* 80122328 0011F288  C0 81 01 CC */	lfs f4, 0x1cc(r1)
/* 8012232C 0011F28C  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80122330 0011F290  C0 61 01 BC */	lfs f3, 0x1bc(r1)
/* 80122334 0011F294  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 80122338 0011F298  C0 21 00 D0 */	lfs f1, 0xd0(r1)
/* 8012233C 0011F29C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80122340 0011F2A0  EC 44 10 28 */	fsubs f2, f4, f2
/* 80122344 0011F2A4  EC 25 08 28 */	fsubs f1, f5, f1
/* 80122348 0011F2A8  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 8012234C 0011F2AC  EC 03 00 28 */	fsubs f0, f3, f0
/* 80122350 0011F2B0  D0 81 00 D8 */	stfs f4, 0xd8(r1)
/* 80122354 0011F2B4  D0 A1 00 DC */	stfs f5, 0xdc(r1)
/* 80122358 0011F2B8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 8012235C 0011F2BC  D0 41 00 E4 */	stfs f2, 0xe4(r1)
/* 80122360 0011F2C0  D0 21 00 E8 */	stfs f1, 0xe8(r1)
/* 80122364 0011F2C4  48 1F 24 ED */	bl AsNormalized__9CVector3fCFv
/* 80122368 0011F2C8  C0 21 00 F0 */	lfs f1, 0xf0(r1)
/* 8012236C 0011F2CC  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 80122370 0011F2D0  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 80122374 0011F2D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80122378 0011F2D8  C0 21 01 38 */	lfs f1, 0x138(r1)
/* 8012237C 0011F2DC  C0 81 00 F4 */	lfs f4, 0xf4(r1)
/* 80122380 0011F2E0  C0 61 01 40 */	lfs f3, 0x140(r1)
/* 80122384 0011F2E4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80122388 0011F2E8  C0 02 98 00 */	lfs f0, lbl_805AB520@sda21(r2)
/* 8012238C 0011F2EC  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80122390 0011F2F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122394 0011F2F4  41 81 00 1C */	bgt lbl_801223B0
/* 80122398 0011F2F8  C0 02 98 04 */	lfs f0, lbl_805AB524@sda21(r2)
/* 8012239C 0011F2FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801223A0 0011F300  40 80 01 AC */	bge lbl_8012254C
/* 801223A4 0011F304  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 801223A8 0011F308  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801223AC 0011F30C  40 81 01 A0 */	ble lbl_8012254C
lbl_801223B0:
/* 801223B0 0011F310  38 00 00 00 */	li r0, 0
/* 801223B4 0011F314  80 AD 8A C8 */	lwz r5, lbl_805A7688@sda21(r13)
/* 801223B8 0011F318  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801223BC 0011F31C  38 60 00 00 */	li r3, 0
/* 801223C0 0011F320  38 80 00 01 */	li r4, 1
/* 801223C4 0011F324  90 01 00 68 */	stw r0, 0x68(r1)
/* 801223C8 0011F328  48 26 7B 2D */	bl __shl2i
/* 801223CC 0011F32C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801223D0 0011F330  80 C1 00 6C */	lwz r6, 0x6c(r1)
/* 801223D4 0011F334  7C 00 1B 78 */	or r0, r0, r3
/* 801223D8 0011F338  80 AD 8A CC */	lwz r5, lbl_805A768C@sda21(r13)
/* 801223DC 0011F33C  7C C4 23 78 */	or r4, r6, r4
/* 801223E0 0011F340  90 01 00 68 */	stw r0, 0x68(r1)
/* 801223E4 0011F344  38 60 00 00 */	li r3, 0
/* 801223E8 0011F348  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801223EC 0011F34C  38 80 00 01 */	li r4, 1
/* 801223F0 0011F350  48 26 7B 05 */	bl __shl2i
/* 801223F4 0011F354  80 01 00 68 */	lwz r0, 0x68(r1)
/* 801223F8 0011F358  38 A1 00 BC */	addi r5, r1, 0xbc
/* 801223FC 0011F35C  80 E1 00 6C */	lwz r7, 0x6c(r1)
/* 80122400 0011F360  38 C1 01 44 */	addi r6, r1, 0x144
/* 80122404 0011F364  7C 00 1B 78 */	or r0, r0, r3
/* 80122408 0011F368  C0 41 02 4C */	lfs f2, 0x24c(r1)
/* 8012240C 0011F36C  7C E4 23 78 */	or r4, r7, r4
/* 80122410 0011F370  C0 21 02 5C */	lfs f1, 0x25c(r1)
/* 80122414 0011F374  C0 01 02 6C */	lfs f0, 0x26c(r1)
/* 80122418 0011F378  7F A3 EB 78 */	mr r3, r29
/* 8012241C 0011F37C  90 81 00 6C */	stw r4, 0x6c(r1)
/* 80122420 0011F380  7F C4 F3 78 */	mr r4, r30
/* 80122424 0011F384  38 E1 00 68 */	addi r7, r1, 0x68
/* 80122428 0011F388  90 01 00 68 */	stw r0, 0x68(r1)
/* 8012242C 0011F38C  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 80122430 0011F390  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80122434 0011F394  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80122438 0011F398  48 00 6E 59 */	bl LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
/* 8012243C 0011F39C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80122440 0011F3A0  41 82 01 0C */	beq lbl_8012254C
/* 80122444 0011F3A4  FC 20 F8 90 */	fmr f1, f31
/* 80122448 0011F3A8  C0 42 98 04 */	lfs f2, lbl_805AB524@sda21(r2)
/* 8012244C 0011F3AC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80122450 0011F3B0  38 9D 07 C4 */	addi r4, r29, 0x7c4
/* 80122454 0011F3B4  48 08 AC F1 */	bl GetDistanceCompensatedError__10CBurstFireCFff
/* 80122458 0011F3B8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8012245C 0011F3BC  38 9D 00 34 */	addi r4, r29, 0x34
/* 80122460 0011F3C0  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80122464 0011F3C4  48 1F 06 1D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 80122468 0011F3C8  C0 61 01 44 */	lfs f3, 0x144(r1)
/* 8012246C 0011F3CC  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80122470 0011F3D0  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 80122474 0011F3D4  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 80122478 0011F3D8  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 8012247C 0011F3DC  38 61 01 50 */	addi r3, r1, 0x150
/* 80122480 0011F3E0  EC C3 10 2A */	fadds f6, f3, f2
/* 80122484 0011F3E4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80122488 0011F3E8  C0 81 01 4C */	lfs f4, 0x14c(r1)
/* 8012248C 0011F3EC  38 81 00 98 */	addi r4, r1, 0x98
/* 80122490 0011F3F0  EC A1 00 2A */	fadds f5, f1, f0
/* 80122494 0011F3F4  C0 61 00 B8 */	lfs f3, 0xb8(r1)
/* 80122498 0011F3F8  EC 64 18 2A */	fadds f3, f4, f3
/* 8012249C 0011F3FC  C0 41 02 4C */	lfs f2, 0x24c(r1)
/* 801224A0 0011F400  C0 21 02 5C */	lfs f1, 0x25c(r1)
/* 801224A4 0011F404  38 A1 01 44 */	addi r5, r1, 0x144
/* 801224A8 0011F408  C0 01 02 6C */	lfs f0, 0x26c(r1)
/* 801224AC 0011F40C  D0 C1 01 44 */	stfs f6, 0x144(r1)
/* 801224B0 0011F410  D0 A1 01 48 */	stfs f5, 0x148(r1)
/* 801224B4 0011F414  D0 61 01 4C */	stfs f3, 0x14c(r1)
/* 801224B8 0011F418  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801224BC 0011F41C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801224C0 0011F420  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801224C4 0011F424  48 1F 16 4D */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801224C8 0011F428  38 61 02 10 */	addi r3, r1, 0x210
/* 801224CC 0011F42C  38 81 01 50 */	addi r4, r1, 0x150
/* 801224D0 0011F430  48 1F 06 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801224D4 0011F434  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 801224D8 0011F438  39 60 00 00 */	li r11, 0
/* 801224DC 0011F43C  99 61 00 94 */	stb r11, 0x94(r1)
/* 801224E0 0011F440  38 01 00 7C */	addi r0, r1, 0x7c
/* 801224E4 0011F444  A1 42 C5 FC */	lhz r10, kInternalInvalidSfxId__11CSfxManager@sda21(r2)
/* 801224E8 0011F448  7F A3 EB 78 */	mr r3, r29
/* 801224EC 0011F44C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801224F0 0011F450  7F C5 F3 78 */	mr r5, r30
/* 801224F4 0011F454  38 81 02 10 */	addi r4, r1, 0x210
/* 801224F8 0011F458  39 21 00 88 */	addi r9, r1, 0x88
/* 801224FC 0011F45C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80122500 0011F460  38 C0 00 06 */	li r6, 6
/* 80122504 0011F464  38 E0 00 00 */	li r7, 0
/* 80122508 0011F468  39 00 00 00 */	li r8, 0
/* 8012250C 0011F46C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80122510 0011F470  91 61 00 08 */	stw r11, 8(r1)
/* 80122514 0011F474  90 01 00 0C */	stw r0, 0xc(r1)
/* 80122518 0011F478  4B F5 54 E1 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 8012251C 0011F47C  88 01 00 94 */	lbz r0, 0x94(r1)
/* 80122520 0011F480  28 00 00 00 */	cmplwi r0, 0
/* 80122524 0011F484  41 82 00 1C */	beq lbl_80122540
/* 80122528 0011F488  34 61 00 88 */	addic. r3, r1, 0x88
/* 8012252C 0011F48C  41 82 00 14 */	beq lbl_80122540
/* 80122530 0011F490  28 03 00 00 */	cmplwi r3, 0
/* 80122534 0011F494  41 82 00 0C */	beq lbl_80122540
/* 80122538 0011F498  38 80 00 00 */	li r4, 0
/* 8012253C 0011F49C  48 21 E9 05 */	bl __dt__6CTokenFv
lbl_80122540:
/* 80122540 0011F4A0  38 00 00 00 */	li r0, 0
/* 80122544 0011F4A4  3B E0 00 01 */	li r31, 1
/* 80122548 0011F4A8  98 01 00 94 */	stb r0, 0x94(r1)
lbl_8012254C:
/* 8012254C 0011F4AC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80122550 0011F4B0  41 82 01 6C */	beq lbl_801226BC
/* 80122554 0011F4B4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80122558 0011F4B8  48 01 7E FD */	bl GetPASDatabase__15CBodyControllerCFv
/* 8012255C 0011F4BC  7C 60 1B 78 */	mr r0, r3
/* 80122560 0011F4C0  38 61 00 28 */	addi r3, r1, 0x28
/* 80122564 0011F4C4  7C 1C 03 78 */	mr r28, r0
/* 80122568 0011F4C8  48 1C 0B 15 */	bl NoParameter__12CPASAnimParmFv
/* 8012256C 0011F4CC  38 61 00 30 */	addi r3, r1, 0x30
/* 80122570 0011F4D0  48 1C 0B 0D */	bl NoParameter__12CPASAnimParmFv
/* 80122574 0011F4D4  38 61 00 38 */	addi r3, r1, 0x38
/* 80122578 0011F4D8  48 1C 0B 05 */	bl NoParameter__12CPASAnimParmFv
/* 8012257C 0011F4DC  38 61 00 40 */	addi r3, r1, 0x40
/* 80122580 0011F4E0  48 1C 0A FD */	bl NoParameter__12CPASAnimParmFv
/* 80122584 0011F4E4  38 61 00 48 */	addi r3, r1, 0x48
/* 80122588 0011F4E8  48 1C 0A F5 */	bl NoParameter__12CPASAnimParmFv
/* 8012258C 0011F4EC  38 61 00 50 */	addi r3, r1, 0x50
/* 80122590 0011F4F0  48 1C 0A ED */	bl NoParameter__12CPASAnimParmFv
/* 80122594 0011F4F4  38 61 00 58 */	addi r3, r1, 0x58
/* 80122598 0011F4F8  48 1C 0A E5 */	bl NoParameter__12CPASAnimParmFv
/* 8012259C 0011F4FC  38 61 00 60 */	addi r3, r1, 0x60
/* 801225A0 0011F500  38 80 00 02 */	li r4, 2
/* 801225A4 0011F504  48 1C 09 E1 */	bl FromEnum__12CPASAnimParmFi
/* 801225A8 0011F508  38 61 00 30 */	addi r3, r1, 0x30
/* 801225AC 0011F50C  38 01 00 28 */	addi r0, r1, 0x28
/* 801225B0 0011F510  90 61 00 08 */	stw r3, 8(r1)
/* 801225B4 0011F514  38 61 02 70 */	addi r3, r1, 0x270
/* 801225B8 0011F518  38 A1 00 60 */	addi r5, r1, 0x60
/* 801225BC 0011F51C  38 C1 00 58 */	addi r6, r1, 0x58
/* 801225C0 0011F520  90 01 00 0C */	stw r0, 0xc(r1)
/* 801225C4 0011F524  38 E1 00 50 */	addi r7, r1, 0x50
/* 801225C8 0011F528  39 01 00 48 */	addi r8, r1, 0x48
/* 801225CC 0011F52C  39 21 00 40 */	addi r9, r1, 0x40
/* 801225D0 0011F530  39 41 00 38 */	addi r10, r1, 0x38
/* 801225D4 0011F534  38 80 00 18 */	li r4, 0x18
/* 801225D8 0011F538  4B F5 AC ED */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801225DC 0011F53C  80 DE 09 00 */	lwz r6, 0x900(r30)
/* 801225E0 0011F540  7F 84 E3 78 */	mr r4, r28
/* 801225E4 0011F544  38 61 00 20 */	addi r3, r1, 0x20
/* 801225E8 0011F548  38 A1 02 70 */	addi r5, r1, 0x270
/* 801225EC 0011F54C  38 E0 FF FF */	li r7, -1
/* 801225F0 0011F550  48 1C 2A 71 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801225F4 0011F554  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801225F8 0011F558  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801225FC 0011F55C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80122600 0011F560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122604 0011F564  40 81 00 1C */	ble lbl_80122620
/* 80122608 0011F568  80 7D 00 64 */	lwz r3, 0x64(r29)
/* 8012260C 0011F56C  38 A0 00 00 */	li r5, 0
/* 80122610 0011F570  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 80122614 0011F574  38 C0 00 01 */	li r6, 1
/* 80122618 0011F578  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8012261C 0011F57C  4B F0 7B B5 */	bl AddAdditiveAnimation__9CAnimDataFUifbb
lbl_80122620:
/* 80122620 0011F580  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80122624 0011F584  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80122628 0011F588  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8012262C 0011F58C  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80122630 0011F590  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80122634 0011F594  38 61 00 14 */	addi r3, r1, 0x14
/* 80122638 0011F598  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 8012263C 0011F59C  38 A1 00 70 */	addi r5, r1, 0x70
/* 80122640 0011F5A0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80122644 0011F5A4  38 E0 00 01 */	li r7, 1
/* 80122648 0011F5A8  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 8012264C 0011F5AC  39 00 00 00 */	li r8, 0
/* 80122650 0011F5B0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80122654 0011F5B4  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 80122658 0011F5B8  A0 9D 05 B0 */	lhz r4, 0x5b0(r29)
/* 8012265C 0011F5BC  48 1C 7C 55 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 80122660 0011F5C0  34 A1 02 74 */	addic. r5, r1, 0x274
/* 80122664 0011F5C4  41 82 00 58 */	beq lbl_801226BC
/* 80122668 0011F5C8  80 C5 00 00 */	lwz r6, 0(r5)
/* 8012266C 0011F5CC  38 60 00 00 */	li r3, 0
/* 80122670 0011F5D0  2C 06 00 00 */	cmpwi r6, 0
/* 80122674 0011F5D4  40 81 00 40 */	ble lbl_801226B4
/* 80122678 0011F5D8  2C 06 00 08 */	cmpwi r6, 8
/* 8012267C 0011F5DC  38 86 FF F8 */	addi r4, r6, -8
/* 80122680 0011F5E0  40 81 00 20 */	ble lbl_801226A0
/* 80122684 0011F5E4  38 04 00 07 */	addi r0, r4, 7
/* 80122688 0011F5E8  54 00 E8 FE */	srwi r0, r0, 3
/* 8012268C 0011F5EC  7C 09 03 A6 */	mtctr r0
/* 80122690 0011F5F0  2C 04 00 00 */	cmpwi r4, 0
/* 80122694 0011F5F4  40 81 00 0C */	ble lbl_801226A0
lbl_80122698:
/* 80122698 0011F5F8  38 63 00 08 */	addi r3, r3, 8
/* 8012269C 0011F5FC  42 00 FF FC */	bdnz lbl_80122698
lbl_801226A0:
/* 801226A0 0011F600  7C 03 30 50 */	subf r0, r3, r6
/* 801226A4 0011F604  7C 09 03 A6 */	mtctr r0
/* 801226A8 0011F608  7C 03 30 00 */	cmpw r3, r6
/* 801226AC 0011F60C  40 80 00 08 */	bge lbl_801226B4
lbl_801226B0:
/* 801226B0 0011F610  42 00 00 00 */	bdnz lbl_801226B0
lbl_801226B4:
/* 801226B4 0011F614  38 00 00 00 */	li r0, 0
/* 801226B8 0011F618  90 05 00 00 */	stw r0, 0(r5)
lbl_801226BC:
/* 801226BC 0011F61C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801226C0 0011F620  E3 E1 02 D8 */	psq_l f31, 728(r1), 0, qr0
/* 801226C4 0011F624  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 801226C8 0011F628  CB E1 02 D0 */	lfd f31, 0x2d0(r1)
/* 801226CC 0011F62C  83 E1 02 CC */	lwz r31, 0x2cc(r1)
/* 801226D0 0011F630  83 C1 02 C8 */	lwz r30, 0x2c8(r1)
/* 801226D4 0011F634  83 A1 02 C4 */	lwz r29, 0x2c4(r1)
/* 801226D8 0011F638  83 81 02 C0 */	lwz r28, 0x2c0(r1)
/* 801226DC 0011F63C  7C 08 03 A6 */	mtlr r0
/* 801226E0 0011F640  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 801226E4 0011F644  4E 80 00 20 */	blr

.global ProjectileInfo__12CSpacePirateFv
ProjectileInfo__12CSpacePirateFv:
/* 801226E8 0011F648  38 63 05 88 */	addi r3, r3, 0x588
/* 801226EC 0011F64C  4E 80 00 20 */	blr

.global UpdateLeashTimer__12CSpacePirateFf
UpdateLeashTimer__12CSpacePirateFf:
/* 801226F0 0011F650  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801226F4 0011F654  88 04 03 00 */	lbz r0, 0x300(r4)
/* 801226F8 0011F658  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801226FC 0011F65C  4C 82 00 20 */	bnelr
/* 80122700 0011F660  C0 44 03 24 */	lfs f2, 0x324(r4)
/* 80122704 0011F664  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80122708 0011F668  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012270C 0011F66C  4D 81 00 20 */	bgtlr
/* 80122710 0011F670  C0 03 08 DC */	lfs f0, 0x8dc(r3)
/* 80122714 0011F674  EC 00 08 2A */	fadds f0, f0, f1
/* 80122718 0011F678  D0 03 08 DC */	stfs f0, 0x8dc(r3)
/* 8012271C 0011F67C  4E 80 00 20 */	blr

.global Leash__12CSpacePirateFR13CStateManagerf
Leash__12CSpacePirateFR13CStateManagerf:
/* 80122720 0011F680  C0 03 08 DC */	lfs f0, 0x8dc(r3)
/* 80122724 0011F684  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80122728 0011F688  7C 00 00 26 */	mfcr r0
/* 8012272C 0011F68C  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 80122730 0011F690  4E 80 00 20 */	blr

.global Jump__12CSpacePirateFR13CStateManager9EStateMsgf
Jump__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80122734 0011F694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80122738 0011F698  7C 08 02 A6 */	mflr r0
/* 8012273C 0011F69C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80122740 0011F6A0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80122744 0011F6A4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80122748 0011F6A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012274C 0011F6AC  FF E0 08 90 */	fmr f31, f1
/* 80122750 0011F6B0  2C 05 00 01 */	cmpwi r5, 1
/* 80122754 0011F6B4  7C 7F 1B 78 */	mr r31, r3
/* 80122758 0011F6B8  41 82 00 6C */	beq lbl_801227C4
/* 8012275C 0011F6BC  40 80 00 10 */	bge lbl_8012276C
/* 80122760 0011F6C0  2C 05 00 00 */	cmpwi r5, 0
/* 80122764 0011F6C4  40 80 00 14 */	bge lbl_80122778
/* 80122768 0011F6C8  48 00 00 A4 */	b lbl_8012280C
lbl_8012276C:
/* 8012276C 0011F6CC  2C 05 00 03 */	cmpwi r5, 3
/* 80122770 0011F6D0  40 80 00 9C */	bge lbl_8012280C
/* 80122774 0011F6D4  48 00 00 90 */	b lbl_80122804
lbl_80122778:
/* 80122778 0011F6D8  38 00 00 01 */	li r0, 1
/* 8012277C 0011F6DC  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 80122780 0011F6E0  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80122784 0011F6E4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80122788 0011F6E8  C4 23 67 00 */	lfsu f1, sDownVector__9CVector3f@l(r3)
/* 8012278C 0011F6EC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80122790 0011F6F0  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 80122794 0011F6F4  C0 83 00 04 */	lfs f4, 4(r3)
/* 80122798 0011F6F8  EC 22 08 2A */	fadds f1, f2, f1
/* 8012279C 0011F6FC  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801227A0 0011F700  C0 43 00 08 */	lfs f2, 8(r3)
/* 801227A4 0011F704  EC 85 20 2A */	fadds f4, f5, f4
/* 801227A8 0011F708  D0 3F 08 28 */	stfs f1, 0x828(r31)
/* 801227AC 0011F70C  EC 23 10 2A */	fadds f1, f3, f2
/* 801227B0 0011F710  D0 9F 08 2C */	stfs f4, 0x82c(r31)
/* 801227B4 0011F714  D0 3F 08 30 */	stfs f1, 0x830(r31)
/* 801227B8 0011F718  D0 1F 08 24 */	stfs f0, 0x824(r31)
/* 801227BC 0011F71C  D0 1F 08 DC */	stfs f0, 0x8dc(r31)
/* 801227C0 0011F720  48 00 00 4C */	b lbl_8012280C
lbl_801227C4:
/* 801227C4 0011F724  3C A0 80 3E */	lis r5, lbl_803E07F4@ha
/* 801227C8 0011F728  38 C1 00 08 */	addi r6, r1, 8
/* 801227CC 0011F72C  39 45 07 F4 */	addi r10, r5, lbl_803E07F4@l
/* 801227D0 0011F730  38 A0 00 0D */	li r5, 0xd
/* 801227D4 0011F734  81 2A 00 00 */	lwz r9, 0(r10)
/* 801227D8 0011F738  38 E0 00 00 */	li r7, 0
/* 801227DC 0011F73C  81 0A 00 04 */	lwz r8, 4(r10)
/* 801227E0 0011F740  80 0A 00 08 */	lwz r0, 8(r10)
/* 801227E4 0011F744  91 21 00 08 */	stw r9, 8(r1)
/* 801227E8 0011F748  91 01 00 0C */	stw r8, 0xc(r1)
/* 801227EC 0011F74C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801227F0 0011F750  4B F5 9F C5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801227F4 0011F754  FC 20 F8 90 */	fmr f1, f31
/* 801227F8 0011F758  7F E3 FB 78 */	mr r3, r31
/* 801227FC 0011F75C  4B FF FE F5 */	bl UpdateLeashTimer__12CSpacePirateFf
/* 80122800 0011F760  48 00 00 0C */	b lbl_8012280C
lbl_80122804:
/* 80122804 0011F764  38 00 00 00 */	li r0, 0
/* 80122808 0011F768  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_8012280C:
/* 8012280C 0011F76C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80122810 0011F770  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80122814 0011F774  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80122818 0011F778  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012281C 0011F77C  7C 08 03 A6 */	mtlr r0
/* 80122820 0011F780  38 21 00 30 */	addi r1, r1, 0x30
/* 80122824 0011F784  4E 80 00 20 */	blr

.global TryJumpInLoop__10CPatternedFR13CStateManageri
TryJumpInLoop__10CPatternedFR13CStateManageri:
/* 80122828 0011F788  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012282C 0011F78C  7C 08 02 A6 */	mflr r0
/* 80122830 0011F790  3C E0 80 3E */	lis r7, lbl_803DAA68@ha
/* 80122834 0011F794  39 00 00 10 */	li r8, 0x10
/* 80122838 0011F798  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012283C 0011F79C  39 27 AA 68 */	addi r9, r7, lbl_803DAA68@l
/* 80122840 0011F7A0  3C E0 80 3E */	lis r7, lbl_803DA9FC@ha
/* 80122844 0011F7A4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80122848 0011F7A8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8012284C 0011F7AC  38 00 00 00 */	li r0, 0
/* 80122850 0011F7B0  88 C1 00 2C */	lbz r6, 0x2c(r1)
/* 80122854 0011F7B4  50 06 3E 30 */	rlwimi r6, r0, 7, 0x18, 0x18
/* 80122858 0011F7B8  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 8012285C 0011F7BC  38 E7 A9 FC */	addi r7, r7, lbl_803DA9FC@l
/* 80122860 0011F7C0  81 43 04 50 */	lwz r10, 0x450(r3)
/* 80122864 0011F7C4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 80122868 0011F7C8  C0 A3 02 E0 */	lfs f5, 0x2e0(r3)
/* 8012286C 0011F7CC  C0 83 02 E4 */	lfs f4, 0x2e4(r3)
/* 80122870 0011F7D0  3B EA 00 04 */	addi r31, r10, 4
/* 80122874 0011F7D4  C0 63 02 E8 */	lfs f3, 0x2e8(r3)
/* 80122878 0011F7D8  38 60 00 01 */	li r3, 1
/* 8012287C 0011F7DC  C0 24 00 04 */	lfs f1, 4(r4)
/* 80122880 0011F7E0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80122884 0011F7E4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80122888 0011F7E8  7F E3 FB 78 */	mr r3, r31
/* 8012288C 0011F7EC  91 21 00 08 */	stw r9, 8(r1)
/* 80122890 0011F7F0  38 80 00 10 */	li r4, 0x10
/* 80122894 0011F7F4  98 C1 00 2C */	stb r6, 0x2c(r1)
/* 80122898 0011F7F8  91 01 00 0C */	stw r8, 0xc(r1)
/* 8012289C 0011F7FC  90 E1 00 08 */	stw r7, 8(r1)
/* 801228A0 0011F800  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801228A4 0011F804  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801228A8 0011F808  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801228AC 0011F80C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 801228B0 0011F810  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801228B4 0011F814  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801228B8 0011F818  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801228BC 0011F81C  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801228C0 0011F820  48 00 EB 79 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801228C4 0011F824  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801228C8 0011F828  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 801228CC 0011F82C  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 801228D0 0011F830  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801228D4 0011F834  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 801228D8 0011F838  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801228DC 0011F83C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801228E0 0011F840  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801228E4 0011F844  90 BF 01 D8 */	stw r5, 0x1d8(r31)
/* 801228E8 0011F848  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801228EC 0011F84C  90 7F 01 DC */	stw r3, 0x1dc(r31)
/* 801228F0 0011F850  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801228F4 0011F854  90 BF 01 E0 */	stw r5, 0x1e0(r31)
/* 801228F8 0011F858  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801228FC 0011F85C  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 80122900 0011F860  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80122904 0011F864  90 BF 01 E8 */	stw r5, 0x1e8(r31)
/* 80122908 0011F868  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8012290C 0011F86C  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 80122910 0011F870  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 80122914 0011F874  90 BF 01 F0 */	stw r5, 0x1f0(r31)
/* 80122918 0011F878  90 81 00 08 */	stw r4, 8(r1)
/* 8012291C 0011F87C  98 7F 01 F4 */	stb r3, 0x1f4(r31)
/* 80122920 0011F880  90 01 00 08 */	stw r0, 8(r1)
/* 80122924 0011F884  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80122928 0011F888  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012292C 0011F88C  7C 08 03 A6 */	mtlr r0
/* 80122930 0011F890  38 21 00 40 */	addi r1, r1, 0x40
/* 80122934 0011F894  4E 80 00 20 */	blr

.global Landed__12CSpacePirateFR13CStateManagerf
Landed__12CSpacePirateFR13CStateManagerf:
/* 80122938 0011F898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012293C 0011F89C  7C 08 02 A6 */	mflr r0
/* 80122940 0011F8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80122944 0011F8A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80122948 0011F8A8  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 8012294C 0011F8AC  7D 89 03 A6 */	mtctr r12
/* 80122950 0011F8B0  4E 80 04 21 */	bctrl
/* 80122954 0011F8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80122958 0011F8B8  7C 08 03 A6 */	mtlr r0
/* 8012295C 0011F8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80122960 0011F8C0  4E 80 00 20 */	blr

.global OffLine__12CSpacePirateFR13CStateManagerf
OffLine__12CSpacePirateFR13CStateManagerf:
/* 80122964 0011F8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80122968 0011F8C8  7C 08 02 A6 */	mflr r0
/* 8012296C 0011F8CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80122970 0011F8D0  81 83 00 00 */	lwz r12, 0(r3)
/* 80122974 0011F8D4  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 80122978 0011F8D8  7D 89 03 A6 */	mtctr r12
/* 8012297C 0011F8DC  4E 80 04 21 */	bctrl
/* 80122980 0011F8E0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80122984 0011F8E4  7C 00 00 34 */	cntlzw r0, r0
/* 80122988 0011F8E8  54 03 D9 7E */	srwi r3, r0, 5
/* 8012298C 0011F8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80122990 0011F8F0  7C 08 03 A6 */	mtlr r0
/* 80122994 0011F8F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80122998 0011F8F8  4E 80 00 20 */	blr

.global Deactivate__12CSpacePirateFR13CStateManager9EStateMsgf
Deactivate__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 8012299C 0011F8FC  2C 05 00 00 */	cmpwi r5, 0
/* 801229A0 0011F900  4C 82 00 20 */	bnelr
/* 801229A4 0011F904  88 03 04 01 */	lbz r0, 0x401(r3)
/* 801229A8 0011F908  38 80 00 01 */	li r4, 1
/* 801229AC 0011F90C  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 801229B0 0011F910  98 03 04 01 */	stb r0, 0x401(r3)
/* 801229B4 0011F914  4E 80 00 20 */	blr

.global Dead__12CSpacePirateFR13CStateManager9EStateMsgf
Dead__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801229B8 0011F918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801229BC 0011F91C  7C 08 02 A6 */	mflr r0
/* 801229C0 0011F920  90 01 00 24 */	stw r0, 0x24(r1)
/* 801229C4 0011F924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801229C8 0011F928  7C BF 2B 78 */	mr r31, r5
/* 801229CC 0011F92C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801229D0 0011F930  7C 9E 23 78 */	mr r30, r4
/* 801229D4 0011F934  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801229D8 0011F938  7C 7D 1B 78 */	mr r29, r3
/* 801229DC 0011F93C  48 0D 3F E9 */	bl Dead__10CPatternedFR13CStateManager9EStateMsgf
/* 801229E0 0011F940  2C 1F 00 01 */	cmpwi r31, 1
/* 801229E4 0011F944  41 82 00 44 */	beq lbl_80122A28
/* 801229E8 0011F948  40 80 00 B0 */	bge lbl_80122A98
/* 801229EC 0011F94C  2C 1F 00 00 */	cmpwi r31, 0
/* 801229F0 0011F950  40 80 00 0C */	bge lbl_801229FC
/* 801229F4 0011F954  48 00 00 A4 */	b lbl_80122A98
/* 801229F8 0011F958  48 00 00 A0 */	b lbl_80122A98
lbl_801229FC:
/* 801229FC 0011F95C  38 7D 07 64 */	addi r3, r29, 0x764
/* 80122A00 0011F960  38 80 00 00 */	li r4, 0
/* 80122A04 0011F964  48 05 28 21 */	bl SetActive__13CBoneTrackingFb
/* 80122A08 0011F968  7F A3 EB 78 */	mr r3, r29
/* 80122A0C 0011F96C  7F C4 F3 78 */	mr r4, r30
/* 80122A10 0011F970  38 A0 00 00 */	li r5, 0
/* 80122A14 0011F974  48 00 70 01 */	bl SetEyeParticleActive__12CSpacePirateFR13CStateManagerb
/* 80122A18 0011F978  7F A3 EB 78 */	mr r3, r29
/* 80122A1C 0011F97C  7F C4 F3 78 */	mr r4, r30
/* 80122A20 0011F980  48 00 6C 19 */	bl SquadReset__12CSpacePirateFR13CStateManager
/* 80122A24 0011F984  48 00 00 74 */	b lbl_80122A98
lbl_80122A28:
/* 80122A28 0011F988  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80122A2C 0011F98C  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80122A30 0011F990  2C 00 00 04 */	cmpwi r0, 4
/* 80122A34 0011F994  40 82 00 64 */	bne lbl_80122A98
/* 80122A38 0011F998  7F A3 EB 78 */	mr r3, r29
/* 80122A3C 0011F99C  7F C6 F3 78 */	mr r6, r30
/* 80122A40 0011F9A0  38 80 00 28 */	li r4, 0x28
/* 80122A44 0011F9A4  38 A0 00 29 */	li r5, 0x29
/* 80122A48 0011F9A8  4B F3 14 8D */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80122A4C 0011F9AC  7F A3 EB 78 */	mr r3, r29
/* 80122A50 0011F9B0  7F C7 F3 78 */	mr r7, r30
/* 80122A54 0011F9B4  38 80 00 25 */	li r4, 0x25
/* 80122A58 0011F9B8  38 A0 00 13 */	li r5, 0x13
/* 80122A5C 0011F9BC  38 C0 00 30 */	li r6, 0x30
/* 80122A60 0011F9C0  4B F3 13 8D */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80122A64 0011F9C4  7F A3 EB 78 */	mr r3, r29
/* 80122A68 0011F9C8  7F C5 F3 78 */	mr r5, r30
/* 80122A6C 0011F9CC  38 80 00 12 */	li r4, 0x12
/* 80122A70 0011F9D0  4B F3 18 E1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80122A74 0011F9D4  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80122A78 0011F9D8  C4 04 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r4)
/* 80122A7C 0011F9DC  7F A3 EB 78 */	mr r3, r29
/* 80122A80 0011F9E0  D0 1D 01 50 */	stfs f0, 0x150(r29)
/* 80122A84 0011F9E4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80122A88 0011F9E8  D0 1D 01 54 */	stfs f0, 0x154(r29)
/* 80122A8C 0011F9EC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80122A90 0011F9F0  D0 1D 01 58 */	stfs f0, 0x158(r29)
/* 80122A94 0011F9F4  4B FF 88 E5 */	bl Stop__13CPhysicsActorFv
lbl_80122A98:
/* 80122A98 0011F9F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80122A9C 0011F9FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80122AA0 0011FA00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80122AA4 0011FA04  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80122AA8 0011FA08  7C 08 03 A6 */	mtlr r0
/* 80122AAC 0011FA0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80122AB0 0011FA10  4E 80 00 20 */	blr

.global Bounce__12CSpacePirateFR13CStateManager9EStateMsgf
Bounce__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80122AB4 0011FA14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80122AB8 0011FA18  7C 08 02 A6 */	mflr r0
/* 80122ABC 0011FA1C  2C 05 00 01 */	cmpwi r5, 1
/* 80122AC0 0011FA20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80122AC4 0011FA24  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80122AC8 0011FA28  7C 9F 23 78 */	mr r31, r4
/* 80122ACC 0011FA2C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80122AD0 0011FA30  7C 7E 1B 78 */	mr r30, r3
/* 80122AD4 0011FA34  41 82 01 60 */	beq lbl_80122C34
/* 80122AD8 0011FA38  40 80 01 8C */	bge lbl_80122C64
/* 80122ADC 0011FA3C  2C 05 00 00 */	cmpwi r5, 0
/* 80122AE0 0011FA40  40 80 00 0C */	bge lbl_80122AEC
/* 80122AE4 0011FA44  48 00 01 80 */	b lbl_80122C64
/* 80122AE8 0011FA48  48 00 01 7C */	b lbl_80122C64
lbl_80122AEC:
/* 80122AEC 0011FA4C  A0 1E 08 40 */	lhz r0, 0x840(r30)
/* 80122AF0 0011FA50  7F E3 FB 78 */	mr r3, r31
/* 80122AF4 0011FA54  38 81 00 0C */	addi r4, r1, 0xc
/* 80122AF8 0011FA58  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80122AFC 0011FA5C  4B F2 9A A9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80122B00 0011FA60  7C 64 1B 78 */	mr r4, r3
/* 80122B04 0011FA64  38 61 00 1C */	addi r3, r1, 0x1c
/* 80122B08 0011FA68  4B F8 8B D9 */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FP7CEntity"
/* 80122B0C 0011FA6C  80 63 00 04 */	lwz r3, 4(r3)
/* 80122B10 0011FA70  28 03 00 00 */	cmplwi r3, 0
/* 80122B14 0011FA74  41 82 01 50 */	beq lbl_80122C64
/* 80122B18 0011FA78  A0 03 01 0E */	lhz r0, 0x10e(r3)
/* 80122B1C 0011FA7C  7F E3 FB 78 */	mr r3, r31
/* 80122B20 0011FA80  38 81 00 08 */	addi r4, r1, 8
/* 80122B24 0011FA84  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80122B28 0011FA88  B0 01 00 08 */	sth r0, 8(r1)
/* 80122B2C 0011FA8C  4B F2 9A 79 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80122B30 0011FA90  7C 64 1B 78 */	mr r4, r3
/* 80122B34 0011FA94  38 61 00 14 */	addi r3, r1, 0x14
/* 80122B38 0011FA98  4B F8 3A 15 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80122B3C 0011FA9C  81 03 00 04 */	lwz r8, 4(r3)
/* 80122B40 0011FAA0  28 08 00 00 */	cmplwi r8, 0
/* 80122B44 0011FAA4  41 82 01 20 */	beq lbl_80122C64
/* 80122B48 0011FAA8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80122B4C 0011FAAC  88 A1 00 48 */	lbz r5, 0x48(r1)
/* 80122B50 0011FAB0  38 00 00 01 */	li r0, 1
/* 80122B54 0011FAB4  80 FE 04 50 */	lwz r7, 0x450(r30)
/* 80122B58 0011FAB8  50 05 3E 30 */	rlwimi r5, r0, 7, 0x18, 0x18
/* 80122B5C 0011FABC  38 83 AA 68 */	addi r4, r3, lbl_803DAA68@l
/* 80122B60 0011FAC0  C0 A8 00 60 */	lfs f5, 0x60(r8)
/* 80122B64 0011FAC4  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 80122B68 0011FAC8  C0 88 00 50 */	lfs f4, 0x50(r8)
/* 80122B6C 0011FACC  38 C0 00 00 */	li r6, 0
/* 80122B70 0011FAD0  C0 68 00 40 */	lfs f3, 0x40(r8)
/* 80122B74 0011FAD4  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80122B78 0011FAD8  C0 5E 08 28 */	lfs f2, 0x828(r30)
/* 80122B7C 0011FADC  39 00 00 10 */	li r8, 0x10
/* 80122B80 0011FAE0  C0 3E 08 2C */	lfs f1, 0x82c(r30)
/* 80122B84 0011FAE4  3B E7 00 04 */	addi r31, r7, 4
/* 80122B88 0011FAE8  C0 1E 08 30 */	lfs f0, 0x830(r30)
/* 80122B8C 0011FAEC  38 E3 A9 FC */	addi r7, r3, lbl_803DA9FC@l
/* 80122B90 0011FAF0  90 81 00 24 */	stw r4, 0x24(r1)
/* 80122B94 0011FAF4  50 C0 36 72 */	rlwimi r0, r6, 6, 0x19, 0x19
/* 80122B98 0011FAF8  7F E3 FB 78 */	mr r3, r31
/* 80122B9C 0011FAFC  38 80 00 10 */	li r4, 0x10
/* 80122BA0 0011FB00  98 A1 00 48 */	stb r5, 0x48(r1)
/* 80122BA4 0011FB04  91 01 00 28 */	stw r8, 0x28(r1)
/* 80122BA8 0011FB08  90 E1 00 24 */	stw r7, 0x24(r1)
/* 80122BAC 0011FB0C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 80122BB0 0011FB10  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80122BB4 0011FB14  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80122BB8 0011FB18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80122BBC 0011FB1C  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80122BC0 0011FB20  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80122BC4 0011FB24  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80122BC8 0011FB28  98 01 00 48 */	stb r0, 0x48(r1)
/* 80122BCC 0011FB2C  48 00 E8 6D */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80122BD0 0011FB30  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80122BD4 0011FB34  3C 60 80 3E */	lis r3, lbl_803DA9FC@ha
/* 80122BD8 0011FB38  38 83 A9 FC */	addi r4, r3, lbl_803DA9FC@l
/* 80122BDC 0011FB3C  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80122BE0 0011FB40  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 80122BE4 0011FB44  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80122BE8 0011FB48  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 80122BEC 0011FB4C  80 61 00 30 */	lwz r3, 0x30(r1)
/* 80122BF0 0011FB50  90 BF 01 D8 */	stw r5, 0x1d8(r31)
/* 80122BF4 0011FB54  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 80122BF8 0011FB58  90 7F 01 DC */	stw r3, 0x1dc(r31)
/* 80122BFC 0011FB5C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80122C00 0011FB60  90 BF 01 E0 */	stw r5, 0x1e0(r31)
/* 80122C04 0011FB64  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 80122C08 0011FB68  90 7F 01 E4 */	stw r3, 0x1e4(r31)
/* 80122C0C 0011FB6C  80 61 00 40 */	lwz r3, 0x40(r1)
/* 80122C10 0011FB70  90 BF 01 E8 */	stw r5, 0x1e8(r31)
/* 80122C14 0011FB74  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80122C18 0011FB78  90 7F 01 EC */	stw r3, 0x1ec(r31)
/* 80122C1C 0011FB7C  88 61 00 48 */	lbz r3, 0x48(r1)
/* 80122C20 0011FB80  90 BF 01 F0 */	stw r5, 0x1f0(r31)
/* 80122C24 0011FB84  90 81 00 24 */	stw r4, 0x24(r1)
/* 80122C28 0011FB88  98 7F 01 F4 */	stb r3, 0x1f4(r31)
/* 80122C2C 0011FB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80122C30 0011FB90  48 00 00 34 */	b lbl_80122C64
lbl_80122C34:
/* 80122C34 0011FB94  C0 3E 03 38 */	lfs f1, 0x338(r30)
/* 80122C38 0011FB98  C0 02 98 08 */	lfs f0, lbl_805AB528@sda21(r2)
/* 80122C3C 0011FB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122C40 0011FBA0  40 81 00 24 */	ble lbl_80122C64
/* 80122C44 0011FBA4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80122C48 0011FBA8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80122C4C 0011FBAC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80122C50 0011FBB0  41 82 00 14 */	beq lbl_80122C64
/* 80122C54 0011FBB4  88 1E 03 48 */	lbz r0, 0x348(r30)
/* 80122C58 0011FBB8  38 60 00 01 */	li r3, 1
/* 80122C5C 0011FBBC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80122C60 0011FBC0  98 1E 03 48 */	stb r0, 0x348(r30)
lbl_80122C64:
/* 80122C64 0011FBC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80122C68 0011FBC8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80122C6C 0011FBCC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80122C70 0011FBD0  7C 08 03 A6 */	mtlr r0
/* 80122C74 0011FBD4  38 21 00 60 */	addi r1, r1, 0x60
/* 80122C78 0011FBD8  4E 80 00 20 */	blr

.global PathFindEx__12CSpacePirateFR13CStateManager9EStateMsgf
PathFindEx__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80122C7C 0011FBDC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80122C80 0011FBE0  7C 08 02 A6 */	mflr r0
/* 80122C84 0011FBE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80122C88 0011FBE8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80122C8C 0011FBEC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80122C90 0011FBF0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80122C94 0011FBF4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80122C98 0011FBF8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80122C9C 0011FBFC  FF E0 08 90 */	fmr f31, f1
/* 80122CA0 0011FC00  7C 7F 1B 78 */	mr r31, r3
/* 80122CA4 0011FC04  7C 9D 23 78 */	mr r29, r4
/* 80122CA8 0011FC08  7C BE 2B 78 */	mr r30, r5
/* 80122CAC 0011FC0C  48 0D 3A 21 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 80122CB0 0011FC10  2C 1E 00 01 */	cmpwi r30, 1
/* 80122CB4 0011FC14  41 82 00 38 */	beq lbl_80122CEC
/* 80122CB8 0011FC18  40 80 00 10 */	bge lbl_80122CC8
/* 80122CBC 0011FC1C  2C 1E 00 00 */	cmpwi r30, 0
/* 80122CC0 0011FC20  40 80 00 14 */	bge lbl_80122CD4
/* 80122CC4 0011FC24  48 00 01 30 */	b lbl_80122DF4
lbl_80122CC8:
/* 80122CC8 0011FC28  2C 1E 00 03 */	cmpwi r30, 3
/* 80122CCC 0011FC2C  40 80 01 28 */	bge lbl_80122DF4
/* 80122CD0 0011FC30  48 00 01 14 */	b lbl_80122DE4
lbl_80122CD4:
/* 80122CD4 0011FC34  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80122CD8 0011FC38  38 60 00 00 */	li r3, 0
/* 80122CDC 0011FC3C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80122CE0 0011FC40  98 1F 06 39 */	stb r0, 0x639(r31)
/* 80122CE4 0011FC44  90 7F 03 0C */	stw r3, 0x30c(r31)
/* 80122CE8 0011FC48  48 00 01 0C */	b lbl_80122DF4
lbl_80122CEC:
/* 80122CEC 0011FC4C  7F E3 FB 78 */	mr r3, r31
/* 80122CF0 0011FC50  7F A4 EB 78 */	mr r4, r29
/* 80122CF4 0011FC54  48 00 5E DD */	bl AvoidActors__12CSpacePirateFR13CStateManager
/* 80122CF8 0011FC58  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80122CFC 0011FC5C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80122D00 0011FC60  40 82 00 F4 */	bne lbl_80122DF4
/* 80122D04 0011FC64  A0 1F 08 40 */	lhz r0, 0x840(r31)
/* 80122D08 0011FC68  7F A3 EB 78 */	mr r3, r29
/* 80122D0C 0011FC6C  38 81 00 08 */	addi r4, r1, 8
/* 80122D10 0011FC70  B0 01 00 08 */	sth r0, 8(r1)
/* 80122D14 0011FC74  4B F2 98 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80122D18 0011FC78  7C 64 1B 78 */	mr r4, r3
/* 80122D1C 0011FC7C  38 61 00 0C */	addi r3, r1, 0xc
/* 80122D20 0011FC80  4B F8 89 C1 */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FP7CEntity"
/* 80122D24 0011FC84  83 C3 00 04 */	lwz r30, 4(r3)
/* 80122D28 0011FC88  28 1E 00 00 */	cmplwi r30, 0
/* 80122D2C 0011FC8C  41 82 00 C8 */	beq lbl_80122DF4
/* 80122D30 0011FC90  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80122D34 0011FC94  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80122D38 0011FC98  48 01 11 75 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 80122D3C 0011FC9C  C0 42 98 0C */	lfs f2, lbl_805AB52C@sda21(r2)
/* 80122D40 0011FCA0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80122D44 0011FCA4  C0 02 98 08 */	lfs f0, lbl_805AB528@sda21(r2)
/* 80122D48 0011FCA8  C0 83 00 04 */	lfs f4, 4(r3)
/* 80122D4C 0011FCAC  EC 42 07 FA */	fmadds f2, f2, f31, f0
/* 80122D50 0011FCB0  C0 A3 00 00 */	lfs f5, 0(r3)
/* 80122D54 0011FCB4  C0 63 00 08 */	lfs f3, 8(r3)
/* 80122D58 0011FCB8  C0 1F 07 A4 */	lfs f0, 0x7a4(r31)
/* 80122D5C 0011FCBC  EC 42 01 32 */	fmuls f2, f2, f4
/* 80122D60 0011FCC0  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80122D64 0011FCC4  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80122D68 0011FCC8  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 80122D6C 0011FCCC  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 80122D70 0011FCD0  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 80122D74 0011FCD4  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 80122D78 0011FCD8  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80122D7C 0011FCDC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80122D80 0011FCE0  EC C7 00 28 */	fsubs f6, f7, f0
/* 80122D84 0011FCE4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80122D88 0011FCE8  C1 1F 00 60 */	lfs f8, 0x60(r31)
/* 80122D8C 0011FCEC  EC 83 00 28 */	fsubs f4, f3, f0
/* 80122D90 0011FCF0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80122D94 0011FCF4  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80122D98 0011FCF8  EC A8 00 28 */	fsubs f5, f8, f0
/* 80122D9C 0011FCFC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80122DA0 0011FD00  EC 44 01 32 */	fmuls f2, f4, f4
/* 80122DA4 0011FD04  C0 1F 07 54 */	lfs f0, 0x754(r31)
/* 80122DA8 0011FD08  EC 65 01 72 */	fmuls f3, f5, f5
/* 80122DAC 0011FD0C  D0 E1 00 18 */	stfs f7, 0x18(r1)
/* 80122DB0 0011FD10  EC 22 08 2A */	fadds f1, f2, f1
/* 80122DB4 0011FD14  EC 00 00 32 */	fmuls f0, f0, f0
/* 80122DB8 0011FD18  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 80122DBC 0011FD1C  EC 23 08 2A */	fadds f1, f3, f1
/* 80122DC0 0011FD20  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80122DC4 0011FD24  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 80122DC8 0011FD28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122DCC 0011FD2C  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80122DD0 0011FD30  7C 60 00 26 */	mfcr r3
/* 80122DD4 0011FD34  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80122DD8 0011FD38  50 60 2E F6 */	rlwimi r0, r3, 5, 0x1b, 0x1b
/* 80122DDC 0011FD3C  98 1F 06 39 */	stb r0, 0x639(r31)
/* 80122DE0 0011FD40  48 00 00 14 */	b lbl_80122DF4
lbl_80122DE4:
/* 80122DE4 0011FD44  88 1F 06 39 */	lbz r0, 0x639(r31)
/* 80122DE8 0011FD48  38 60 00 00 */	li r3, 0
/* 80122DEC 0011FD4C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80122DF0 0011FD50  98 1F 06 39 */	stb r0, 0x639(r31)
lbl_80122DF4:
/* 80122DF4 0011FD54  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80122DF8 0011FD58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80122DFC 0011FD5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80122E00 0011FD60  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80122E04 0011FD64  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80122E08 0011FD68  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80122E0C 0011FD6C  7C 08 03 A6 */	mtlr r0
/* 80122E10 0011FD70  38 21 00 60 */	addi r1, r1, 0x60
/* 80122E14 0011FD74  4E 80 00 20 */	blr

.global BounceFind__12CSpacePirateFR13CStateManagerf
BounceFind__12CSpacePirateFR13CStateManagerf:
/* 80122E18 0011FD78  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80122E1C 0011FD7C  7C 08 02 A6 */	mflr r0
/* 80122E20 0011FD80  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80122E24 0011FD84  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80122E28 0011FD88  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 80122E2C 0011FD8C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80122E30 0011FD90  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 80122E34 0011FD94  BE E1 00 8C */	stmw r23, 0x8c(r1)
/* 80122E38 0011FD98  83 E4 08 40 */	lwz r31, 0x840(r4)
/* 80122E3C 0011FD9C  7C 9A 23 78 */	mr r26, r4
/* 80122E40 0011FDA0  C3 C2 98 10 */	lfs f30, lbl_805AB530@sda21(r2)
/* 80122E44 0011FDA4  7C 79 1B 78 */	mr r25, r3
/* 80122E48 0011FDA8  AB 7F 20 08 */	lha r27, 0x2008(r31)
/* 80122E4C 0011FDAC  3B A0 00 00 */	li r29, 0
/* 80122E50 0011FDB0  3B 80 00 00 */	li r28, 0
/* 80122E54 0011FDB4  48 00 02 6C */	b lbl_801230C0
lbl_80122E58:
/* 80122E58 0011FDB8  7F E3 FB 78 */	mr r3, r31
/* 80122E5C 0011FDBC  7F 64 DB 78 */	mr r4, r27
/* 80122E60 0011FDC0  4B EE CE B5 */	bl __vc__11CObjectListFi
/* 80122E64 0011FDC4  7C 64 1B 78 */	mr r4, r3
/* 80122E68 0011FDC8  38 61 00 30 */	addi r3, r1, 0x30
/* 80122E6C 0011FDCC  4B F8 88 75 */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FP7CEntity"
/* 80122E70 0011FDD0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80122E74 0011FDD4  28 1E 00 00 */	cmplwi r30, 0
/* 80122E78 0011FDD8  41 82 02 2C */	beq lbl_801230A4
/* 80122E7C 0011FDDC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80122E80 0011FDE0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80122E84 0011FDE4  41 82 02 20 */	beq lbl_801230A4
/* 80122E88 0011FDE8  A0 19 00 08 */	lhz r0, 8(r25)
/* 80122E8C 0011FDEC  7F C3 F3 78 */	mr r3, r30
/* 80122E90 0011FDF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80122E94 0011FDF4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80122E98 0011FDF8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80122E9C 0011FDFC  48 0C C4 39 */	bl GetInUse__18CScriptAiJumpPointCF9TUniqueId
/* 80122EA0 0011FE00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80122EA4 0011FE04  40 82 02 00 */	bne lbl_801230A4
/* 80122EA8 0011FE08  A0 BE 01 0E */	lhz r5, 0x10e(r30)
/* 80122EAC 0011FE0C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80122EB0 0011FE10  7C 05 00 40 */	cmplw r5, r0
/* 80122EB4 0011FE14  41 82 01 F0 */	beq lbl_801230A4
/* 80122EB8 0011FE18  80 7E 00 04 */	lwz r3, 4(r30)
/* 80122EBC 0011FE1C  80 19 00 04 */	lwz r0, 4(r25)
/* 80122EC0 0011FE20  7C 03 00 00 */	cmpw r3, r0
/* 80122EC4 0011FE24  40 82 01 E0 */	bne lbl_801230A4
/* 80122EC8 0011FE28  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80122ECC 0011FE2C  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 80122ED0 0011FE30  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80122ED4 0011FE34  EC 81 00 28 */	fsubs f4, f1, f0
/* 80122ED8 0011FE38  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80122EDC 0011FE3C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80122EE0 0011FE40  EC A3 00 28 */	fsubs f5, f3, f0
/* 80122EE4 0011FE44  C0 39 00 60 */	lfs f1, 0x60(r25)
/* 80122EE8 0011FE48  EC 04 01 32 */	fmuls f0, f4, f4
/* 80122EEC 0011FE4C  EC 62 08 28 */	fsubs f3, f2, f1
/* 80122EF0 0011FE50  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 80122EF4 0011FE54  EF E3 00 FA */	fmadds f31, f3, f3, f0
/* 80122EF8 0011FE58  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80122EFC 0011FE5C  40 80 01 A8 */	bge lbl_801230A4
/* 80122F00 0011FE60  C0 DE 00 48 */	lfs f6, 0x48(r30)
/* 80122F04 0011FE64  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80122F08 0011FE68  EC 26 01 32 */	fmuls f1, f6, f4
/* 80122F0C 0011FE6C  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80122F10 0011FE70  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80122F14 0011FE74  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80122F18 0011FE78  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80122F1C 0011FE7C  D0 C1 00 78 */	stfs f6, 0x78(r1)
/* 80122F20 0011FE80  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80122F24 0011FE84  D0 81 00 7C */	stfs f4, 0x7c(r1)
/* 80122F28 0011FE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122F2C 0011FE8C  40 81 01 78 */	ble lbl_801230A4
/* 80122F30 0011FE90  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 80122F34 0011FE94  7F 43 D3 78 */	mr r3, r26
/* 80122F38 0011FE98  38 81 00 14 */	addi r4, r1, 0x14
/* 80122F3C 0011FE9C  B0 A1 00 14 */	sth r5, 0x14(r1)
/* 80122F40 0011FEA0  4B F2 96 65 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80122F44 0011FEA4  7C 64 1B 78 */	mr r4, r3
/* 80122F48 0011FEA8  38 61 00 28 */	addi r3, r1, 0x28
/* 80122F4C 0011FEAC  4B F8 36 01 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80122F50 0011FEB0  83 03 00 04 */	lwz r24, 4(r3)
/* 80122F54 0011FEB4  28 18 00 00 */	cmplwi r24, 0
/* 80122F58 0011FEB8  41 82 01 4C */	beq lbl_801230A4
/* 80122F5C 0011FEBC  C0 39 02 E4 */	lfs f1, 0x2e4(r25)
/* 80122F60 0011FEC0  C0 18 00 50 */	lfs f0, 0x50(r24)
/* 80122F64 0011FEC4  C0 79 02 E0 */	lfs f3, 0x2e0(r25)
/* 80122F68 0011FEC8  EC 81 00 28 */	fsubs f4, f1, f0
/* 80122F6C 0011FECC  C0 18 00 40 */	lfs f0, 0x40(r24)
/* 80122F70 0011FED0  C0 59 02 E8 */	lfs f2, 0x2e8(r25)
/* 80122F74 0011FED4  EC A3 00 28 */	fsubs f5, f3, f0
/* 80122F78 0011FED8  C0 38 00 60 */	lfs f1, 0x60(r24)
/* 80122F7C 0011FEDC  EC 04 01 32 */	fmuls f0, f4, f4
/* 80122F80 0011FEE0  EC 62 08 28 */	fsubs f3, f2, f1
/* 80122F84 0011FEE4  C0 22 98 14 */	lfs f1, lbl_805AB534@sda21(r2)
/* 80122F88 0011FEE8  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 80122F8C 0011FEEC  EC 21 00 F2 */	fmuls f1, f1, f3
/* 80122F90 0011FEF0  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 80122F94 0011FEF4  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 80122F98 0011FEF8  EF FF 00 2A */	fadds f31, f31, f0
/* 80122F9C 0011FEFC  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80122FA0 0011FF00  40 80 01 04 */	bge lbl_801230A4
/* 80122FA4 0011FF04  C0 D8 00 48 */	lfs f6, 0x48(r24)
/* 80122FA8 0011FF08  C0 58 00 38 */	lfs f2, 0x38(r24)
/* 80122FAC 0011FF0C  EC 26 01 32 */	fmuls f1, f6, f4
/* 80122FB0 0011FF10  C0 98 00 58 */	lfs f4, 0x58(r24)
/* 80122FB4 0011FF14  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80122FB8 0011FF18  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80122FBC 0011FF1C  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80122FC0 0011FF20  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 80122FC4 0011FF24  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80122FC8 0011FF28  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 80122FCC 0011FF2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80122FD0 0011FF30  40 81 00 D4 */	ble lbl_801230A4
/* 80122FD4 0011FF34  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80122FD8 0011FF38  7F 23 CB 78 */	mr r3, r25
/* 80122FDC 0011FF3C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80122FE0 0011FF40  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80122FE4 0011FF44  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80122FE8 0011FF48  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80122FEC 0011FF4C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80122FF0 0011FF50  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 80122FF4 0011FF54  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 80122FF8 0011FF58  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80122FFC 0011FF5C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80123000 0011FF60  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80123004 0011FF64  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80123008 0011FF68  81 99 00 00 */	lwz r12, 0(r25)
/* 8012300C 0011FF6C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123010 0011FF70  7D 89 03 A6 */	mtctr r12
/* 80123014 0011FF74  4E 80 04 21 */	bctrl
/* 80123018 0011FF78  38 81 00 5C */	addi r4, r1, 0x5c
/* 8012301C 0011FF7C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80123020 0011FF80  48 0A 3C A9 */	bl PathExists__15CPathFindSearchCFRC9CVector3fRC9CVector3f
/* 80123024 0011FF84  2C 03 00 00 */	cmpwi r3, 0
/* 80123028 0011FF88  40 82 00 7C */	bne lbl_801230A4
/* 8012302C 0011FF8C  C0 58 00 60 */	lfs f2, 0x60(r24)
/* 80123030 0011FF90  7F 23 CB 78 */	mr r3, r25
/* 80123034 0011FF94  C0 38 00 50 */	lfs f1, 0x50(r24)
/* 80123038 0011FF98  3A E0 00 00 */	li r23, 0
/* 8012303C 0011FF9C  C0 18 00 40 */	lfs f0, 0x40(r24)
/* 80123040 0011FFA0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80123044 0011FFA4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80123048 0011FFA8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8012304C 0011FFAC  81 99 00 00 */	lwz r12, 0(r25)
/* 80123050 0011FFB0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123054 0011FFB4  7D 89 03 A6 */	mtctr r12
/* 80123058 0011FFB8  4E 80 04 21 */	bctrl
/* 8012305C 0011FFBC  38 81 00 44 */	addi r4, r1, 0x44
/* 80123060 0011FFC0  38 B9 02 E0 */	addi r5, r25, 0x2e0
/* 80123064 0011FFC4  48 0A 3C 65 */	bl PathExists__15CPathFindSearchCFRC9CVector3fRC9CVector3f
/* 80123068 0011FFC8  7C 03 00 D0 */	neg r0, r3
/* 8012306C 0011FFCC  7C 00 1B 78 */	or r0, r0, r3
/* 80123070 0011FFD0  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80123074 0011FFD4  41 82 00 0C */	beq lbl_80123080
/* 80123078 0011FFD8  C0 02 98 18 */	lfs f0, lbl_805AB538@sda21(r2)
/* 8012307C 0011FFDC  EF FF 00 2A */	fadds f31, f31, f0
lbl_80123080:
/* 80123080 0011FFE0  28 00 00 00 */	cmplwi r0, 0
/* 80123084 0011FFE4  40 82 00 08 */	bne lbl_8012308C
/* 80123088 0011FFE8  3A E0 00 01 */	li r23, 1
lbl_8012308C:
/* 8012308C 0011FFEC  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80123090 0011FFF0  40 80 00 14 */	bge lbl_801230A4
/* 80123094 0011FFF4  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80123098 0011FFF8  FF C0 F8 90 */	fmr f30, f31
/* 8012309C 0011FFFC  7F DC F3 78 */	mr r28, r30
/* 801230A0 00120000  40 82 00 28 */	bne lbl_801230C8
lbl_801230A4:
/* 801230A4 00120004  2C 1B FF FF */	cmpwi r27, -1
/* 801230A8 00120008  41 82 00 14 */	beq lbl_801230BC
/* 801230AC 0012000C  57 63 18 38 */	slwi r3, r27, 3
/* 801230B0 00120010  38 03 00 08 */	addi r0, r3, 8
/* 801230B4 00120014  7F 7F 02 AE */	lhax r27, r31, r0
/* 801230B8 00120018  48 00 00 08 */	b lbl_801230C0
lbl_801230BC:
/* 801230BC 0012001C  3B 60 FF FF */	li r27, -1
lbl_801230C0:
/* 801230C0 00120020  2C 1B FF FF */	cmpwi r27, -1
/* 801230C4 00120024  40 82 FD 94 */	bne lbl_80122E58
lbl_801230C8:
/* 801230C8 00120028  28 1C 00 00 */	cmplwi r28, 0
/* 801230CC 0012002C  41 82 00 84 */	beq lbl_80123150
/* 801230D0 00120030  A0 1C 01 0C */	lhz r0, 0x10c(r28)
/* 801230D4 00120034  7F 43 D3 78 */	mr r3, r26
/* 801230D8 00120038  38 81 00 0C */	addi r4, r1, 0xc
/* 801230DC 0012003C  B0 01 00 08 */	sth r0, 8(r1)
/* 801230E0 00120040  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801230E4 00120044  4B F2 94 C1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801230E8 00120048  7C 64 1B 78 */	mr r4, r3
/* 801230EC 0012004C  38 61 00 20 */	addi r3, r1, 0x20
/* 801230F0 00120050  4B F8 34 5D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 801230F4 00120054  83 03 00 04 */	lwz r24, 4(r3)
/* 801230F8 00120058  28 18 00 00 */	cmplwi r24, 0
/* 801230FC 0012005C  41 82 00 54 */	beq lbl_80123150
/* 80123100 00120060  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 80123104 00120064  7F 23 CB 78 */	mr r3, r25
/* 80123108 00120068  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 8012310C 0012006C  38 81 00 38 */	addi r4, r1, 0x38
/* 80123110 00120070  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80123114 00120074  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80123118 00120078  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8012311C 0012007C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80123120 00120080  4B F5 9A 3D */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80123124 00120084  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80123128 00120088  3B A0 00 01 */	li r29, 1
/* 8012312C 0012008C  B0 19 08 40 */	sth r0, 0x840(r25)
/* 80123130 00120090  C0 1C 00 E8 */	lfs f0, 0xe8(r28)
/* 80123134 00120094  D0 19 08 24 */	stfs f0, 0x824(r25)
/* 80123138 00120098  C0 58 00 60 */	lfs f2, 0x60(r24)
/* 8012313C 0012009C  C0 38 00 50 */	lfs f1, 0x50(r24)
/* 80123140 001200A0  C0 18 00 40 */	lfs f0, 0x40(r24)
/* 80123144 001200A4  D0 19 08 28 */	stfs f0, 0x828(r25)
/* 80123148 001200A8  D0 39 08 2C */	stfs f1, 0x82c(r25)
/* 8012314C 001200AC  D0 59 08 30 */	stfs f2, 0x830(r25)
lbl_80123150:
/* 80123150 001200B0  7F A3 EB 78 */	mr r3, r29
/* 80123154 001200B4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80123158 001200B8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8012315C 001200BC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80123160 001200C0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80123164 001200C4  BA E1 00 8C */	lmw r23, 0x8c(r1)
/* 80123168 001200C8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8012316C 001200CC  7C 08 03 A6 */	mtlr r0
/* 80123170 001200D0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80123174 001200D4  4E 80 00 20 */	blr

.global BreakAttack__12CSpacePirateFR13CStateManagerf
BreakAttack__12CSpacePirateFR13CStateManagerf:
/* 80123178 001200D8  88 03 06 35 */	lbz r0, 0x635(r3)
/* 8012317C 001200DC  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 80123180 001200E0  4E 80 00 20 */	blr

.global StartAttack__12CSpacePirateFR13CStateManagerf
StartAttack__12CSpacePirateFR13CStateManagerf:
/* 80123184 001200E4  88 83 06 38 */	lbz r4, 0x638(r3)
/* 80123188 001200E8  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8012318C 001200EC  41 82 00 18 */	beq lbl_801231A4
/* 80123190 001200F0  38 00 00 00 */	li r0, 0
/* 80123194 001200F4  50 04 07 FE */	rlwimi r4, r0, 0, 0x1f, 0x1f
/* 80123198 001200F8  98 83 06 38 */	stb r4, 0x638(r3)
/* 8012319C 001200FC  38 60 00 01 */	li r3, 1
/* 801231A0 00120100  4E 80 00 20 */	blr
lbl_801231A4:
/* 801231A4 00120104  38 60 00 00 */	li r3, 0
/* 801231A8 00120108  4E 80 00 20 */	blr

.global SpecialAttack__12CSpacePirateFR13CStateManager9EStateMsgf
SpecialAttack__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801231AC 0012010C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801231B0 00120110  7C 08 02 A6 */	mflr r0
/* 801231B4 00120114  2C 05 00 01 */	cmpwi r5, 1
/* 801231B8 00120118  90 01 00 44 */	stw r0, 0x44(r1)
/* 801231BC 0012011C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801231C0 00120120  7C 9F 23 78 */	mr r31, r4
/* 801231C4 00120124  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801231C8 00120128  7C 7E 1B 78 */	mr r30, r3
/* 801231CC 0012012C  41 82 00 88 */	beq lbl_80123254
/* 801231D0 00120130  40 80 00 10 */	bge lbl_801231E0
/* 801231D4 00120134  2C 05 00 00 */	cmpwi r5, 0
/* 801231D8 00120138  40 80 00 14 */	bge lbl_801231EC
/* 801231DC 0012013C  48 00 00 DC */	b lbl_801232B8
lbl_801231E0:
/* 801231E0 00120140  2C 05 00 03 */	cmpwi r5, 3
/* 801231E4 00120144  40 80 00 D4 */	bge lbl_801232B8
/* 801231E8 00120148  48 00 00 C8 */	b lbl_801232B0
lbl_801231EC:
/* 801231EC 0012014C  38 00 00 01 */	li r0, 1
/* 801231F0 00120150  7F C4 F3 78 */	mr r4, r30
/* 801231F4 00120154  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801231F8 00120158  38 61 00 14 */	addi r3, r1, 0x14
/* 801231FC 0012015C  4B F5 98 D5 */	bl GetGunEyePos__10CPatternedCFv
/* 80123200 00120160  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80123204 00120164  7F E5 FB 78 */	mr r5, r31
/* 80123208 00120168  38 61 00 20 */	addi r3, r1, 0x20
/* 8012320C 0012016C  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80123210 00120170  81 84 00 00 */	lwz r12, 0(r4)
/* 80123214 00120174  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80123218 00120178  7D 89 03 A6 */	mtctr r12
/* 8012321C 0012017C  4E 80 04 21 */	bctrl
/* 80123220 00120180  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80123224 00120184  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80123228 00120188  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 8012322C 0012018C  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80123230 00120190  EC 01 00 28 */	fsubs f0, f1, f0
/* 80123234 00120194  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80123238 00120198  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8012323C 0012019C  EC 64 18 28 */	fsubs f3, f4, f3
/* 80123240 001201A0  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80123244 001201A4  EC 02 08 28 */	fsubs f0, f2, f1
/* 80123248 001201A8  D0 7E 06 4C */	stfs f3, 0x64c(r30)
/* 8012324C 001201AC  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 80123250 001201B0  48 00 00 68 */	b lbl_801232B8
lbl_80123254:
/* 80123254 001201B4  3C A0 80 3E */	lis r5, lbl_803E07E8@ha
/* 80123258 001201B8  38 C1 00 08 */	addi r6, r1, 8
/* 8012325C 001201BC  39 45 07 E8 */	addi r10, r5, lbl_803E07E8@l
/* 80123260 001201C0  38 A0 00 12 */	li r5, 0x12
/* 80123264 001201C4  81 2A 00 00 */	lwz r9, 0(r10)
/* 80123268 001201C8  38 E0 00 01 */	li r7, 1
/* 8012326C 001201CC  81 0A 00 04 */	lwz r8, 4(r10)
/* 80123270 001201D0  80 0A 00 08 */	lwz r0, 8(r10)
/* 80123274 001201D4  91 21 00 08 */	stw r9, 8(r1)
/* 80123278 001201D8  91 01 00 0C */	stw r8, 0xc(r1)
/* 8012327C 001201DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80123280 001201E0  4B F5 95 35 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80123284 001201E4  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80123288 001201E8  2C 00 00 01 */	cmpwi r0, 1
/* 8012328C 001201EC  40 82 00 2C */	bne lbl_801232B8
/* 80123290 001201F0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80123294 001201F4  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 80123298 001201F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8012329C 001201FC  C0 1E 06 4C */	lfs f0, 0x64c(r30)
/* 801232A0 00120200  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801232A4 00120204  C0 1E 06 50 */	lfs f0, 0x650(r30)
/* 801232A8 00120208  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801232AC 0012020C  48 00 00 0C */	b lbl_801232B8
lbl_801232B0:
/* 801232B0 00120210  38 00 00 00 */	li r0, 0
/* 801232B4 00120214  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_801232B8:
/* 801232B8 00120218  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801232BC 0012021C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801232C0 00120220  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801232C4 00120224  7C 08 03 A6 */	mtlr r0
/* 801232C8 00120228  38 21 00 40 */	addi r1, r1, 0x40
/* 801232CC 0012022C  4E 80 00 20 */	blr

.global LostInterest__12CSpacePirateFR13CStateManagerf
LostInterest__12CSpacePirateFR13CStateManagerf:
/* 801232D0 00120230  88 03 06 34 */	lbz r0, 0x634(r3)
/* 801232D4 00120234  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801232D8 00120238  41 82 00 1C */	beq lbl_801232F4
/* 801232DC 0012023C  C0 23 07 BC */	lfs f1, 0x7bc(r3)
/* 801232E0 00120240  C0 02 98 0C */	lfs f0, lbl_805AB52C@sda21(r2)
/* 801232E4 00120244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801232E8 00120248  40 80 00 0C */	bge lbl_801232F4
/* 801232EC 0012024C  38 60 00 01 */	li r3, 1
/* 801232F0 00120250  4E 80 00 20 */	blr
lbl_801232F4:
/* 801232F4 00120254  38 60 00 00 */	li r3, 0
/* 801232F8 00120258  4E 80 00 20 */	blr

.global ShouldSpecialAttack__12CSpacePirateFR13CStateManagerf
ShouldSpecialAttack__12CSpacePirateFR13CStateManagerf:
/* 801232FC 0012025C  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80123300 00120260  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80123304 00120264  41 82 00 28 */	beq lbl_8012332C
/* 80123308 00120268  80 03 07 DC */	lwz r0, 0x7dc(r3)
/* 8012330C 0012026C  28 00 00 00 */	cmplwi r0, 0
/* 80123310 00120270  40 82 00 1C */	bne lbl_8012332C
/* 80123314 00120274  C0 23 07 BC */	lfs f1, 0x7bc(r3)
/* 80123318 00120278  C0 02 97 DC */	lfs f0, lbl_805AB4FC@sda21(r2)
/* 8012331C 0012027C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123320 00120280  40 81 00 0C */	ble lbl_8012332C
/* 80123324 00120284  38 60 00 01 */	li r3, 1
/* 80123328 00120288  4E 80 00 20 */	blr
lbl_8012332C:
/* 8012332C 0012028C  38 60 00 00 */	li r3, 0
/* 80123330 00120290  4E 80 00 20 */	blr

.global JumpBack__12CSpacePirateFR13CStateManager9EStateMsgf
JumpBack__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80123334 00120294  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80123338 00120298  7C 08 02 A6 */	mflr r0
/* 8012333C 0012029C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80123340 001202A0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80123344 001202A4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80123348 001202A8  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 8012334C 001202AC  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80123350 001202B0  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80123354 001202B4  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80123358 001202B8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8012335C 001202BC  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80123360 001202C0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80123364 001202C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80123368 001202C8  7C 7E 1B 78 */	mr r30, r3
/* 8012336C 001202CC  7C 9F 23 78 */	mr r31, r4
/* 80123370 001202D0  7C BD 2B 78 */	mr r29, r5
/* 80123374 001202D4  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 80123378 001202D8  7D 89 03 A6 */	mtctr r12
/* 8012337C 001202DC  4E 80 04 21 */	bctrl
/* 80123380 001202E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80123384 001202E4  41 82 03 80 */	beq lbl_80123704
/* 80123388 001202E8  2C 1D 00 01 */	cmpwi r29, 1
/* 8012338C 001202EC  41 82 02 50 */	beq lbl_801235DC
/* 80123390 001202F0  40 80 00 10 */	bge lbl_801233A0
/* 80123394 001202F4  2C 1D 00 00 */	cmpwi r29, 0
/* 80123398 001202F8  40 80 00 14 */	bge lbl_801233AC
/* 8012339C 001202FC  48 00 03 68 */	b lbl_80123704
lbl_801233A0:
/* 801233A0 00120300  2C 1D 00 03 */	cmpwi r29, 3
/* 801233A4 00120304  40 80 03 60 */	bge lbl_80123704
/* 801233A8 00120308  48 00 03 34 */	b lbl_801236DC
lbl_801233AC:
/* 801233AC 0012030C  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 801233B0 00120310  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801233B4 00120314  40 82 03 50 */	bne lbl_80123704
/* 801233B8 00120318  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 801233BC 0012031C  7F C3 F3 78 */	mr r3, r30
/* 801233C0 00120320  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 801233C4 00120324  7F E4 FB 78 */	mr r4, r31
/* 801233C8 00120328  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 801233CC 0012032C  FC 00 28 50 */	fneg f0, f5
/* 801233D0 00120330  FC 40 08 50 */	fneg f2, f1
/* 801233D4 00120334  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 801233D8 00120338  FC 60 20 50 */	fneg f3, f4
/* 801233DC 0012033C  C0 22 98 1C */	lfs f1, lbl_805AB53C@sda21(r2)
/* 801233E0 00120340  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801233E4 00120344  38 A1 00 60 */	addi r5, r1, 0x60
/* 801233E8 00120348  D0 A1 00 5C */	stfs f5, 0x5c(r1)
/* 801233EC 0012034C  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 801233F0 00120350  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 801233F4 00120354  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801233F8 00120358  48 00 55 41 */	bl CantJumpBack__12CSpacePirateFR13CStateManagerR9CVector3ff
/* 801233FC 0012035C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80123400 00120360  40 82 03 04 */	bne lbl_80123704
/* 80123404 00120364  7F C3 F3 78 */	mr r3, r30
/* 80123408 00120368  81 9E 00 00 */	lwz r12, 0(r30)
/* 8012340C 0012036C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123410 00120370  7D 89 03 A6 */	mtctr r12
/* 80123414 00120374  4E 80 04 21 */	bctrl
/* 80123418 00120378  C3 E3 00 D0 */	lfs f31, 0xd0(r3)
/* 8012341C 0012037C  7F C3 F3 78 */	mr r3, r30
/* 80123420 00120380  C0 02 98 1C */	lfs f0, lbl_805AB53C@sda21(r2)
/* 80123424 00120384  C0 A2 98 20 */	lfs f5, lbl_805AB540@sda21(r2)
/* 80123428 00120388  EC 00 F8 2A */	fadds f0, f0, f31
/* 8012342C 0012038C  D0 1E 07 30 */	stfs f0, 0x730(r30)
/* 80123430 00120390  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80123434 00120394  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80123438 00120398  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8012343C 0012039C  EC 85 00 B2 */	fmuls f4, f5, f2
/* 80123440 001203A0  C0 DE 00 50 */	lfs f6, 0x50(r30)
/* 80123444 001203A4  EC 45 00 72 */	fmuls f2, f5, f1
/* 80123448 001203A8  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 8012344C 001203AC  EC 05 00 32 */	fmuls f0, f5, f0
/* 80123450 001203B0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80123454 001203B4  EC 86 20 2A */	fadds f4, f6, f4
/* 80123458 001203B8  EC 43 10 2A */	fadds f2, f3, f2
/* 8012345C 001203BC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80123460 001203C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80123464 001203C4  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 80123468 001203C8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8012346C 001203CC  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80123470 001203D0  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 80123474 001203D4  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80123478 001203D8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8012347C 001203DC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123480 001203E0  7D 89 03 A6 */	mtctr r12
/* 80123484 001203E4  4E 80 04 21 */	bctrl
/* 80123488 001203E8  38 81 00 48 */	addi r4, r1, 0x48
/* 8012348C 001203EC  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80123490 001203F0  48 0A 47 DD */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 80123494 001203F4  2C 03 00 00 */	cmpwi r3, 0
/* 80123498 001203F8  40 82 01 28 */	bne lbl_801235C0
/* 8012349C 001203FC  7F C3 F3 78 */	mr r3, r30
/* 801234A0 00120400  81 9E 00 00 */	lwz r12, 0(r30)
/* 801234A4 00120404  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801234A8 00120408  7D 89 03 A6 */	mtctr r12
/* 801234AC 0012040C  4E 80 04 21 */	bctrl
/* 801234B0 00120410  38 83 00 04 */	addi r4, r3, 4
/* 801234B4 00120414  C0 81 00 70 */	lfs f4, 0x70(r1)
/* 801234B8 00120418  80 63 00 04 */	lwz r3, 4(r3)
/* 801234BC 0012041C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 801234C0 00120420  38 03 FF FF */	addi r0, r3, -1
/* 801234C4 00120424  C0 61 00 74 */	lfs f3, 0x74(r1)
/* 801234C8 00120428  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801234CC 0012042C  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 801234D0 00120430  7C 64 02 14 */	add r3, r4, r0
/* 801234D4 00120434  C0 A3 00 08 */	lfs f5, 8(r3)
/* 801234D8 00120438  C0 43 00 04 */	lfs f2, 4(r3)
/* 801234DC 0012043C  EC C5 20 28 */	fsubs f6, f5, f4
/* 801234E0 00120440  C0 A3 00 0C */	lfs f5, 0xc(r3)
/* 801234E4 00120444  EC 82 08 28 */	fsubs f4, f2, f1
/* 801234E8 00120448  EC A5 18 28 */	fsubs f5, f5, f3
/* 801234EC 0012044C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 801234F0 00120450  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 801234F4 00120454  EC 44 01 32 */	fmuls f2, f4, f4
/* 801234F8 00120458  EC 65 01 72 */	fmuls f3, f5, f5
/* 801234FC 0012045C  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80123500 00120460  EC 22 08 2A */	fadds f1, f2, f1
/* 80123504 00120464  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80123508 00120468  EC 23 08 2A */	fadds f1, f3, f1
/* 8012350C 0012046C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123510 00120470  40 80 00 B0 */	bge lbl_801235C0
/* 80123514 00120474  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80123518 00120478  7F C3 F3 78 */	mr r3, r30
/* 8012351C 0012047C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80123520 00120480  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80123524 00120484  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80123528 00120488  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8012352C 0012048C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80123530 00120490  81 9E 00 00 */	lwz r12, 0(r30)
/* 80123534 00120494  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123538 00120498  7D 89 03 A6 */	mtctr r12
/* 8012353C 0012049C  4E 80 04 21 */	bctrl
/* 80123540 001204A0  38 81 00 30 */	addi r4, r1, 0x30
/* 80123544 001204A4  48 0A 85 2D */	bl RemainingPathDistance__15CPathFindSearchCFR9CVector3f
/* 80123548 001204A8  C0 42 98 20 */	lfs f2, lbl_805AB540@sda21(r2)
/* 8012354C 001204AC  C0 02 98 28 */	lfs f0, lbl_805AB548@sda21(r2)
/* 80123550 001204B0  EC 21 10 28 */	fsubs f1, f1, f2
/* 80123554 001204B4  FC 20 0A 10 */	fabs f1, f1
/* 80123558 001204B8  FC 20 08 18 */	frsp f1, f1
/* 8012355C 001204BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123560 001204C0  40 80 00 60 */	bge lbl_801235C0
/* 80123564 001204C4  7F C3 F3 78 */	mr r3, r30
/* 80123568 001204C8  81 9E 00 00 */	lwz r12, 0(r30)
/* 8012356C 001204CC  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80123570 001204D0  7D 89 03 A6 */	mtctr r12
/* 80123574 001204D4  4E 80 04 21 */	bctrl
/* 80123578 001204D8  38 A3 00 04 */	addi r5, r3, 4
/* 8012357C 001204DC  C0 02 98 1C */	lfs f0, lbl_805AB53C@sda21(r2)
/* 80123580 001204E0  80 83 00 04 */	lwz r4, 4(r3)
/* 80123584 001204E4  38 60 00 01 */	li r3, 1
/* 80123588 001204E8  38 04 FF FF */	addi r0, r4, -1
/* 8012358C 001204EC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80123590 001204F0  7C 85 02 14 */	add r4, r5, r0
/* 80123594 001204F4  C0 24 00 04 */	lfs f1, 4(r4)
/* 80123598 001204F8  D0 3E 08 28 */	stfs f1, 0x828(r30)
/* 8012359C 001204FC  C0 24 00 08 */	lfs f1, 8(r4)
/* 801235A0 00120500  D0 3E 08 2C */	stfs f1, 0x82c(r30)
/* 801235A4 00120504  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801235A8 00120508  D0 3E 08 30 */	stfs f1, 0x830(r30)
/* 801235AC 0012050C  D0 1E 08 24 */	stfs f0, 0x824(r30)
/* 801235B0 00120510  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801235B4 00120514  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801235B8 00120518  98 1E 06 39 */	stb r0, 0x639(r30)
/* 801235BC 0012051C  90 7E 03 2C */	stw r3, 0x32c(r30)
lbl_801235C0:
/* 801235C0 00120520  7F C3 F3 78 */	mr r3, r30
/* 801235C4 00120524  81 9E 00 00 */	lwz r12, 0(r30)
/* 801235C8 00120528  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801235CC 0012052C  7D 89 03 A6 */	mtctr r12
/* 801235D0 00120530  4E 80 04 21 */	bctrl
/* 801235D4 00120534  D3 E3 00 D0 */	stfs f31, 0xd0(r3)
/* 801235D8 00120538  48 00 01 2C */	b lbl_80123704
lbl_801235DC:
/* 801235DC 0012053C  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801235E0 00120540  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801235E4 00120544  40 82 00 BC */	bne lbl_801236A0
/* 801235E8 00120548  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801235EC 0012054C  38 C0 00 01 */	li r6, 1
/* 801235F0 00120550  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801235F4 00120554  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801235F8 00120558  3C 80 80 3E */	lis r4, lbl_803DA9E4@ha
/* 801235FC 0012055C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80123600 00120560  38 A4 A9 E4 */	addi r5, r4, lbl_803DA9E4@l
/* 80123604 00120564  38 00 00 00 */	li r0, 0
/* 80123608 00120568  3B A3 00 04 */	addi r29, r3, 4
/* 8012360C 0012056C  90 C1 00 24 */	stw r6, 0x24(r1)
/* 80123610 00120570  7F A3 EB 78 */	mr r3, r29
/* 80123614 00120574  38 80 00 01 */	li r4, 1
/* 80123618 00120578  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8012361C 0012057C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80123620 00120580  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80123624 00120584  48 00 DE 15 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80123628 00120588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012362C 0012058C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80123630 00120590  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 80123634 00120594  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80123638 00120598  90 1D 00 C8 */	stw r0, 0xc8(r29)
/* 8012363C 0012059C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80123640 001205A0  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80123644 001205A4  7F C4 F3 78 */	mr r4, r30
/* 80123648 001205A8  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 8012364C 001205AC  7F E5 FB 78 */	mr r5, r31
/* 80123650 001205B0  90 7D 00 CC */	stw r3, 0xcc(r29)
/* 80123654 001205B4  38 61 00 14 */	addi r3, r1, 0x14
/* 80123658 001205B8  90 FD 00 D0 */	stw r7, 0xd0(r29)
/* 8012365C 001205BC  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80123660 001205C0  C3 BE 00 60 */	lfs f29, 0x60(r30)
/* 80123664 001205C4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80123668 001205C8  C3 DE 00 50 */	lfs f30, 0x50(r30)
/* 8012366C 001205CC  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 80123670 001205D0  48 00 4D D5 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80123674 001205D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80123678 001205D8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8012367C 001205DC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80123680 001205E0  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80123684 001205E4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80123688 001205E8  EC 42 F0 28 */	fsubs f2, f2, f30
/* 8012368C 001205EC  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80123690 001205F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80123694 001205F4  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80123698 001205F8  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8012369C 001205FC  48 00 00 68 */	b lbl_80123704
lbl_801236A0:
/* 801236A0 00120600  3C 80 80 3E */	lis r4, lbl_803E07DC@ha
/* 801236A4 00120604  7F C3 F3 78 */	mr r3, r30
/* 801236A8 00120608  38 E4 07 DC */	addi r7, r4, lbl_803E07DC@l
/* 801236AC 0012060C  7F E4 FB 78 */	mr r4, r31
/* 801236B0 00120610  81 27 00 00 */	lwz r9, 0(r7)
/* 801236B4 00120614  38 C1 00 08 */	addi r6, r1, 8
/* 801236B8 00120618  81 07 00 04 */	lwz r8, 4(r7)
/* 801236BC 0012061C  38 A0 00 0D */	li r5, 0xd
/* 801236C0 00120620  80 07 00 08 */	lwz r0, 8(r7)
/* 801236C4 00120624  38 E0 00 00 */	li r7, 0
/* 801236C8 00120628  91 21 00 08 */	stw r9, 8(r1)
/* 801236CC 0012062C  91 01 00 0C */	stw r8, 0xc(r1)
/* 801236D0 00120630  90 01 00 10 */	stw r0, 0x10(r1)
/* 801236D4 00120634  4B F5 90 E1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801236D8 00120638  48 00 00 2C */	b lbl_80123704
lbl_801236DC:
/* 801236DC 0012063C  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801236E0 00120640  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801236E4 00120644  41 82 00 18 */	beq lbl_801236FC
/* 801236E8 00120648  38 60 00 00 */	li r3, 0
/* 801236EC 0012064C  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 801236F0 00120650  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801236F4 00120654  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801236F8 00120658  98 1E 06 39 */	stb r0, 0x639(r30)
lbl_801236FC:
/* 801236FC 0012065C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80123700 00120660  D0 1E 08 D8 */	stfs f0, 0x8d8(r30)
lbl_80123704:
/* 80123704 00120664  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 80123708 00120668  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8012370C 0012066C  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 80123710 00120670  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80123714 00120674  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 80123718 00120678  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 8012371C 0012067C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80123720 00120680  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80123724 00120684  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80123728 00120688  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8012372C 0012068C  7C 08 03 A6 */	mtlr r0
/* 80123730 00120690  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80123734 00120694  4E 80 00 20 */	blr

.global ShouldJumpBack__12CSpacePirateFR13CStateManagerf
ShouldJumpBack__12CSpacePirateFR13CStateManagerf:
/* 80123738 00120698  88 03 06 34 */	lbz r0, 0x634(r3)
/* 8012373C 0012069C  38 80 00 00 */	li r4, 0
/* 80123740 001206A0  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80123744 001206A4  41 82 00 14 */	beq lbl_80123758
/* 80123748 001206A8  C0 23 08 D8 */	lfs f1, 0x8d8(r3)
/* 8012374C 001206AC  C0 02 98 04 */	lfs f0, lbl_805AB524@sda21(r2)
/* 80123750 001206B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80123754 001206B4  40 81 00 08 */	ble lbl_8012375C
lbl_80123758:
/* 80123758 001206B8  38 80 00 01 */	li r4, 1
lbl_8012375C:
/* 8012375C 001206BC  7C 83 23 78 */	mr r3, r4
/* 80123760 001206C0  4E 80 00 20 */	blr

.global AnimOver__12CSpacePirateFR13CStateManagerf
AnimOver__12CSpacePirateFR13CStateManagerf:
/* 80123764 001206C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80123768 001206C8  7C 08 02 A6 */	mflr r0
/* 8012376C 001206CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80123770 001206D0  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80123774 001206D4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80123778 001206D8  41 82 00 20 */	beq lbl_80123798
/* 8012377C 001206DC  80 63 04 50 */	lwz r3, 0x450(r3)
/* 80123780 001206E0  80 83 02 B8 */	lwz r4, 0x2b8(r3)
/* 80123784 001206E4  20 64 00 14 */	subfic r3, r4, 0x14
/* 80123788 001206E8  38 04 FF EC */	addi r0, r4, -20
/* 8012378C 001206EC  7C 60 03 78 */	or r0, r3, r0
/* 80123790 001206F0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80123794 001206F4  48 00 00 08 */	b lbl_8012379C
lbl_80123798:
/* 80123798 001206F8  48 0D 23 DD */	bl AnimOver__10CPatternedFR13CStateManagerf
lbl_8012379C:
/* 8012379C 001206FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801237A0 00120700  7C 08 03 A6 */	mtlr r0
/* 801237A4 00120704  38 21 00 10 */	addi r1, r1, 0x10
/* 801237A8 00120708  4E 80 00 20 */	blr

.global WallDetach__12CSpacePirateFR13CStateManager9EStateMsgf
WallDetach__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801237AC 0012070C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801237B0 00120710  7C 08 02 A6 */	mflr r0
/* 801237B4 00120714  2C 05 00 01 */	cmpwi r5, 1
/* 801237B8 00120718  90 01 00 14 */	stw r0, 0x14(r1)
/* 801237BC 0012071C  41 82 00 34 */	beq lbl_801237F0
/* 801237C0 00120720  40 80 00 10 */	bge lbl_801237D0
/* 801237C4 00120724  2C 05 00 00 */	cmpwi r5, 0
/* 801237C8 00120728  40 80 00 14 */	bge lbl_801237DC
/* 801237CC 0012072C  48 00 00 68 */	b lbl_80123834
lbl_801237D0:
/* 801237D0 00120730  2C 05 00 03 */	cmpwi r5, 3
/* 801237D4 00120734  40 80 00 60 */	bge lbl_80123834
/* 801237D8 00120738  48 00 00 4C */	b lbl_80123824
lbl_801237DC:
/* 801237DC 0012073C  88 03 06 37 */	lbz r0, 0x637(r3)
/* 801237E0 00120740  38 80 00 01 */	li r4, 1
/* 801237E4 00120744  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 801237E8 00120748  98 03 06 37 */	stb r0, 0x637(r3)
/* 801237EC 0012074C  48 00 00 48 */	b lbl_80123834
lbl_801237F0:
/* 801237F0 00120750  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801237F4 00120754  38 00 00 0A */	li r0, 0xa
/* 801237F8 00120758  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 801237FC 0012075C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80123800 00120760  38 81 00 08 */	addi r4, r1, 8
/* 80123804 00120764  90 A1 00 08 */	stw r5, 8(r1)
/* 80123808 00120768  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8012380C 0012076C  38 63 00 04 */	addi r3, r3, 4
/* 80123810 00120770  48 00 DF A9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80123814 00120774  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80123818 00120778  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8012381C 0012077C  90 01 00 08 */	stw r0, 8(r1)
/* 80123820 00120780  48 00 00 14 */	b lbl_80123834
lbl_80123824:
/* 80123824 00120784  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80123828 00120788  38 80 00 00 */	li r4, 0
/* 8012382C 0012078C  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 80123830 00120790  98 03 06 37 */	stb r0, 0x637(r3)
lbl_80123834:
/* 80123834 00120794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80123838 00120798  7C 08 03 A6 */	mtlr r0
/* 8012383C 0012079C  38 21 00 10 */	addi r1, r1, 0x10
/* 80123840 001207A0  4E 80 00 20 */	blr

.global WallHang__12CSpacePirateFR13CStateManager9EStateMsgf
WallHang__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80123844 001207A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80123848 001207A8  7C 08 02 A6 */	mflr r0
/* 8012384C 001207AC  2C 05 00 01 */	cmpwi r5, 1
/* 80123850 001207B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80123854 001207B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80123858 001207B8  7C 9F 23 78 */	mr r31, r4
/* 8012385C 001207BC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80123860 001207C0  7C 7E 1B 78 */	mr r30, r3
/* 80123864 001207C4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80123868 001207C8  93 81 00 30 */	stw r28, 0x30(r1)
/* 8012386C 001207CC  41 82 01 30 */	beq lbl_8012399C
/* 80123870 001207D0  40 80 00 10 */	bge lbl_80123880
/* 80123874 001207D4  2C 05 00 00 */	cmpwi r5, 0
/* 80123878 001207D8  40 80 00 14 */	bge lbl_8012388C
/* 8012387C 001207DC  48 00 01 AC */	b lbl_80123A28
lbl_80123880:
/* 80123880 001207E0  2C 05 00 03 */	cmpwi r5, 3
/* 80123884 001207E4  40 80 01 A4 */	bge lbl_80123A28
/* 80123888 001207E8  48 00 01 80 */	b lbl_80123A08
lbl_8012388C:
/* 8012388C 001207EC  38 C0 00 01 */	li r6, 1
/* 80123890 001207F0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80123894 001207F4  90 DE 03 2C */	stw r6, 0x32c(r30)
/* 80123898 001207F8  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 8012389C 001207FC  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 801238A0 00120800  98 1E 06 37 */	stb r0, 0x637(r30)
/* 801238A4 00120804  A0 1E 06 40 */	lhz r0, 0x640(r30)
/* 801238A8 00120808  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801238AC 0012080C  4B F5 90 01 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801238B0 00120810  7C 7D 1B 79 */	or. r29, r3, r3
/* 801238B4 00120814  41 82 00 D4 */	beq lbl_80123988
/* 801238B8 00120818  83 9D 00 2C */	lwz r28, 0x2c(r29)
/* 801238BC 0012081C  48 00 00 B4 */	b lbl_80123970
lbl_801238C0:
/* 801238C0 00120820  80 1C 00 00 */	lwz r0, 0(r28)
/* 801238C4 00120824  2C 00 00 01 */	cmpwi r0, 1
/* 801238C8 00120828  40 82 00 A4 */	bne lbl_8012396C
/* 801238CC 0012082C  80 1C 00 04 */	lwz r0, 4(r28)
/* 801238D0 00120830  2C 00 00 08 */	cmpwi r0, 8
/* 801238D4 00120834  40 82 00 98 */	bne lbl_8012396C
/* 801238D8 00120838  80 1C 00 08 */	lwz r0, 8(r28)
/* 801238DC 0012083C  7F E4 FB 78 */	mr r4, r31
/* 801238E0 00120840  38 61 00 0C */	addi r3, r1, 0xc
/* 801238E4 00120844  38 A1 00 18 */	addi r5, r1, 0x18
/* 801238E8 00120848  90 01 00 18 */	stw r0, 0x18(r1)
/* 801238EC 0012084C  4B F2 46 31 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 801238F0 00120850  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801238F4 00120854  7F E3 FB 78 */	mr r3, r31
/* 801238F8 00120858  38 81 00 08 */	addi r4, r1, 8
/* 801238FC 0012085C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80123900 00120860  B0 01 00 08 */	sth r0, 8(r1)
/* 80123904 00120864  4B F2 8C 71 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80123908 00120868  7C 64 1B 78 */	mr r4, r3
/* 8012390C 0012086C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80123910 00120870  4B F8 2C 3D */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80123914 00120874  80 83 00 04 */	lwz r4, 4(r3)
/* 80123918 00120878  28 04 00 00 */	cmplwi r4, 0
/* 8012391C 0012087C  41 82 00 50 */	beq lbl_8012396C
/* 80123920 00120880  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80123924 00120884  38 60 00 00 */	li r3, 0
/* 80123928 00120888  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 8012392C 0012088C  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 80123930 00120890  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80123934 00120894  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80123938 00120898  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 8012393C 0012089C  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 80123940 001208A0  D0 5E 02 E8 */	stfs f2, 0x2e8(r30)
/* 80123944 001208A4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80123948 001208A8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8012394C 001208AC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80123950 001208B0  D0 1E 02 EC */	stfs f0, 0x2ec(r30)
/* 80123954 001208B4  D0 3E 02 F0 */	stfs f1, 0x2f0(r30)
/* 80123958 001208B8  D0 5E 02 F4 */	stfs f2, 0x2f4(r30)
/* 8012395C 001208BC  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80123960 001208C0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80123964 001208C4  98 1E 03 28 */	stb r0, 0x328(r30)
/* 80123968 001208C8  48 00 00 20 */	b lbl_80123988
lbl_8012396C:
/* 8012396C 001208CC  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_80123970:
/* 80123970 001208D0  80 1D 00 24 */	lwz r0, 0x24(r29)
/* 80123974 001208D4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80123978 001208D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8012397C 001208DC  7C 03 02 14 */	add r0, r3, r0
/* 80123980 001208E0  7C 1C 00 40 */	cmplw r28, r0
/* 80123984 001208E4  40 82 FF 3C */	bne lbl_801238C0
lbl_80123988:
/* 80123988 001208E8  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 8012398C 001208EC  38 60 00 01 */	li r3, 1
/* 80123990 001208F0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80123994 001208F4  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80123998 001208F8  48 00 00 90 */	b lbl_80123A28
lbl_8012399C:
/* 8012399C 001208FC  3C A0 80 3E */	lis r5, lbl_803E07D0@ha
/* 801239A0 00120900  38 C1 00 24 */	addi r6, r1, 0x24
/* 801239A4 00120904  39 45 07 D0 */	addi r10, r5, lbl_803E07D0@l
/* 801239A8 00120908  38 A0 00 14 */	li r5, 0x14
/* 801239AC 0012090C  81 2A 00 00 */	lwz r9, 0(r10)
/* 801239B0 00120910  38 E0 00 00 */	li r7, 0
/* 801239B4 00120914  81 0A 00 04 */	lwz r8, 4(r10)
/* 801239B8 00120918  80 0A 00 08 */	lwz r0, 8(r10)
/* 801239BC 0012091C  91 21 00 24 */	stw r9, 0x24(r1)
/* 801239C0 00120920  91 01 00 28 */	stw r8, 0x28(r1)
/* 801239C4 00120924  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801239C8 00120928  4B F5 8D ED */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801239CC 0012092C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801239D0 00120930  38 00 00 01 */	li r0, 1
/* 801239D4 00120934  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801239D8 00120938  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801239DC 0012093C  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801239E0 00120940  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801239E4 00120944  EC 21 00 28 */	fsubs f1, f1, f0
/* 801239E8 00120948  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801239EC 0012094C  EC 43 10 28 */	fsubs f2, f3, f2
/* 801239F0 00120950  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801239F4 00120954  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 801239F8 00120958  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 801239FC 0012095C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80123A00 00120960  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80123A04 00120964  48 00 00 24 */	b lbl_80123A28
lbl_80123A08:
/* 80123A08 00120968  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80123A0C 0012096C  38 60 00 00 */	li r3, 0
/* 80123A10 00120970  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80123A14 00120974  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80123A18 00120978  90 7E 03 2C */	stw r3, 0x32c(r30)
/* 80123A1C 0012097C  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80123A20 00120980  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80123A24 00120984  98 1E 06 36 */	stb r0, 0x636(r30)
lbl_80123A28:
/* 80123A28 00120988  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80123A2C 0012098C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80123A30 00120990  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80123A34 00120994  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80123A38 00120998  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80123A3C 0012099C  7C 08 03 A6 */	mtlr r0
/* 80123A40 001209A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80123A44 001209A4  4E 80 00 20 */	blr

.global ShouldWallHang__12CSpacePirateFR13CStateManagerf
ShouldWallHang__12CSpacePirateFR13CStateManagerf:
/* 80123A48 001209A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123A4C 001209AC  7C 08 02 A6 */	mflr r0
/* 80123A50 001209B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123A54 001209B4  38 A1 00 08 */	addi r5, r1, 8
/* 80123A58 001209B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80123A5C 001209BC  A0 03 06 40 */	lhz r0, 0x640(r3)
/* 80123A60 001209C0  B0 01 00 08 */	sth r0, 8(r1)
/* 80123A64 001209C4  4B F5 8E 49 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80123A68 001209C8  28 03 00 00 */	cmplwi r3, 0
/* 80123A6C 001209CC  3B E0 00 00 */	li r31, 0
/* 80123A70 001209D0  41 82 00 14 */	beq lbl_80123A84
/* 80123A74 001209D4  48 00 9B 8D */	bl ShouldWallHang__17CScriptCoverPointCFv
/* 80123A78 001209D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80123A7C 001209DC  41 82 00 08 */	beq lbl_80123A84
/* 80123A80 001209E0  3B E0 00 01 */	li r31, 1
lbl_80123A84:
/* 80123A84 001209E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123A88 001209E8  7F E3 FB 78 */	mr r3, r31
/* 80123A8C 001209EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123A90 001209F0  7C 08 03 A6 */	mtlr r0
/* 80123A94 001209F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80123A98 001209F8  4E 80 00 20 */	blr

.global TargetCover__12CSpacePirateFR13CStateManager9EStateMsgf
TargetCover__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80123A9C 001209FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123AA0 00120A00  7C 08 02 A6 */	mflr r0
/* 80123AA4 00120A04  2C 05 00 00 */	cmpwi r5, 0
/* 80123AA8 00120A08  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123AAC 00120A0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80123AB0 00120A10  7C 7F 1B 78 */	mr r31, r3
/* 80123AB4 00120A14  41 82 00 08 */	beq lbl_80123ABC
/* 80123AB8 00120A18  48 00 00 64 */	b lbl_80123B1C
lbl_80123ABC:
/* 80123ABC 00120A1C  A0 1F 06 40 */	lhz r0, 0x640(r31)
/* 80123AC0 00120A20  38 A1 00 08 */	addi r5, r1, 8
/* 80123AC4 00120A24  B0 01 00 08 */	sth r0, 8(r1)
/* 80123AC8 00120A28  4B F5 8D E5 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80123ACC 00120A2C  28 03 00 00 */	cmplwi r3, 0
/* 80123AD0 00120A30  41 82 00 24 */	beq lbl_80123AF4
/* 80123AD4 00120A34  A0 1F 06 40 */	lhz r0, 0x640(r31)
/* 80123AD8 00120A38  B0 1F 02 DC */	sth r0, 0x2dc(r31)
/* 80123ADC 00120A3C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80123AE0 00120A40  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80123AE4 00120A44  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80123AE8 00120A48  D0 1F 02 E0 */	stfs f0, 0x2e0(r31)
/* 80123AEC 00120A4C  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 80123AF0 00120A50  D0 5F 02 E8 */	stfs f2, 0x2e8(r31)
lbl_80123AF4:
/* 80123AF4 00120A54  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80123AF8 00120A58  38 60 00 00 */	li r3, 0
/* 80123AFC 00120A5C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80123B00 00120A60  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80123B04 00120A64  D0 1F 02 EC */	stfs f0, 0x2ec(r31)
/* 80123B08 00120A68  D0 3F 02 F0 */	stfs f1, 0x2f0(r31)
/* 80123B0C 00120A6C  D0 5F 02 F4 */	stfs f2, 0x2f4(r31)
/* 80123B10 00120A70  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80123B14 00120A74  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80123B18 00120A78  98 1F 03 28 */	stb r0, 0x328(r31)
lbl_80123B1C:
/* 80123B1C 00120A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123B20 00120A80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123B24 00120A84  7C 08 03 A6 */	mtlr r0
/* 80123B28 00120A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80123B2C 00120A8C  4E 80 00 20 */	blr

.global HasTargetingPoint__12CSpacePirateFR13CStateManagerf
HasTargetingPoint__12CSpacePirateFR13CStateManagerf:
/* 80123B30 00120A90  94 21 F7 60 */	stwu r1, -0x8a0(r1)
/* 80123B34 00120A94  7C 08 02 A6 */	mflr r0
/* 80123B38 00120A98  90 01 08 A4 */	stw r0, 0x8a4(r1)
/* 80123B3C 00120A9C  BF 41 08 88 */	stmw r26, 0x888(r1)
/* 80123B40 00120AA0  7C 9E 23 78 */	mr r30, r4
/* 80123B44 00120AA4  7C 7D 1B 78 */	mr r29, r3
/* 80123B48 00120AA8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80123B4C 00120AAC  3B E0 00 01 */	li r31, 1
/* 80123B50 00120AB0  A0 03 07 C0 */	lhz r0, 0x7c0(r3)
/* 80123B54 00120AB4  7F C3 F3 78 */	mr r3, r30
/* 80123B58 00120AB8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80123B5C 00120ABC  4B F2 8A 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80123B60 00120AC0  7C 64 1B 78 */	mr r4, r3
/* 80123B64 00120AC4  38 61 00 28 */	addi r3, r1, 0x28
/* 80123B68 00120AC8  4B F8 C1 29 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80123B6C 00120ACC  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80123B70 00120AD0  A0 9D 07 C0 */	lhz r4, 0x7c0(r29)
/* 80123B74 00120AD4  A0 05 00 08 */	lhz r0, 8(r5)
/* 80123B78 00120AD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80123B7C 00120ADC  7C 04 00 40 */	cmplw r4, r0
/* 80123B80 00120AE0  41 82 00 18 */	beq lbl_80123B98
/* 80123B84 00120AE4  28 03 00 00 */	cmplwi r3, 0
/* 80123B88 00120AE8  41 82 00 10 */	beq lbl_80123B98
/* 80123B8C 00120AEC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80123B90 00120AF0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80123B94 00120AF4  40 82 01 C8 */	bne lbl_80123D5C
lbl_80123B98:
/* 80123B98 00120AF8  A0 05 00 08 */	lhz r0, 8(r5)
/* 80123B9C 00120AFC  38 7D 07 64 */	addi r3, r29, 0x764
/* 80123BA0 00120B00  38 81 00 18 */	addi r4, r1, 0x18
/* 80123BA4 00120B04  3B E0 00 00 */	li r31, 0
/* 80123BA8 00120B08  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80123BAC 00120B0C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80123BB0 00120B10  48 05 16 69 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80123BB4 00120B14  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80123BB8 00120B18  38 61 00 60 */	addi r3, r1, 0x60
/* 80123BBC 00120B1C  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80123BC0 00120B20  38 81 00 3C */	addi r4, r1, 0x3c
/* 80123BC4 00120B24  A0 05 00 08 */	lhz r0, 8(r5)
/* 80123BC8 00120B28  38 A1 00 30 */	addi r5, r1, 0x30
/* 80123BCC 00120B2C  B0 1D 07 C0 */	sth r0, 0x7c0(r29)
/* 80123BD0 00120B30  C0 3D 05 70 */	lfs f1, 0x570(r29)
/* 80123BD4 00120B34  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 80123BD8 00120B38  EC C1 00 32 */	fmuls f6, f1, f0
/* 80123BDC 00120B3C  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80123BE0 00120B40  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80123BE4 00120B44  EC A3 30 2A */	fadds f5, f3, f6
/* 80123BE8 00120B48  EC 82 30 2A */	fadds f4, f2, f6
/* 80123BEC 00120B4C  EC 20 30 2A */	fadds f1, f0, f6
/* 80123BF0 00120B50  EC 63 30 28 */	fsubs f3, f3, f6
/* 80123BF4 00120B54  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 80123BF8 00120B58  EC 42 30 28 */	fsubs f2, f2, f6
/* 80123BFC 00120B5C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80123C00 00120B60  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80123C04 00120B64  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80123C08 00120B68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80123C0C 00120B6C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80123C10 00120B70  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80123C14 00120B74  48 21 48 F5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80123C18 00120B78  38 00 00 00 */	li r0, 0
/* 80123C1C 00120B7C  80 AD 8A C4 */	lwz r5, lbl_805A7684@sda21(r13)
/* 80123C20 00120B80  90 01 00 78 */	stw r0, 0x78(r1)
/* 80123C24 00120B84  38 60 00 00 */	li r3, 0
/* 80123C28 00120B88  38 80 00 01 */	li r4, 1
/* 80123C2C 00120B8C  48 26 62 C9 */	bl __shl2i
/* 80123C30 00120B90  39 20 FF FF */	li r9, -1
/* 80123C34 00120B94  39 00 00 00 */	li r8, 0
/* 80123C38 00120B98  38 00 00 02 */	li r0, 2
/* 80123C3C 00120B9C  90 81 00 54 */	stw r4, 0x54(r1)
/* 80123C40 00120BA0  38 81 00 78 */	addi r4, r1, 0x78
/* 80123C44 00120BA4  38 A1 00 60 */	addi r5, r1, 0x60
/* 80123C48 00120BA8  90 61 00 50 */	stw r3, 0x50(r1)
/* 80123C4C 00120BAC  7F C3 F3 78 */	mr r3, r30
/* 80123C50 00120BB0  38 C1 00 48 */	addi r6, r1, 0x48
/* 80123C54 00120BB4  38 E0 00 00 */	li r7, 0
/* 80123C58 00120BB8  91 21 00 4C */	stw r9, 0x4c(r1)
/* 80123C5C 00120BBC  91 01 00 48 */	stw r8, 0x48(r1)
/* 80123C60 00120BC0  90 01 00 58 */	stw r0, 0x58(r1)
/* 80123C64 00120BC4  4B F2 8A BD */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80123C68 00120BC8  3B 81 00 7C */	addi r28, r1, 0x7c
/* 80123C6C 00120BCC  3B 60 00 00 */	li r27, 0
/* 80123C70 00120BD0  48 00 00 8C */	b lbl_80123CFC
lbl_80123C74:
/* 80123C74 00120BD4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 80123C78 00120BD8  7F C3 F3 78 */	mr r3, r30
/* 80123C7C 00120BDC  38 81 00 10 */	addi r4, r1, 0x10
/* 80123C80 00120BE0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80123C84 00120BE4  4B F2 89 21 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80123C88 00120BE8  7C 64 1B 78 */	mr r4, r3
/* 80123C8C 00120BEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80123C90 00120BF0  4B F8 3B F9 */	bl "__ct__35TCastToPtr<21CScriptTargetingPoint>FP7CEntity"
/* 80123C94 00120BF4  83 43 00 04 */	lwz r26, 4(r3)
/* 80123C98 00120BF8  28 1A 00 00 */	cmplwi r26, 0
/* 80123C9C 00120BFC  41 82 00 58 */	beq lbl_80123CF4
/* 80123CA0 00120C00  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 80123CA4 00120C04  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80123CA8 00120C08  41 82 00 4C */	beq lbl_80123CF4
/* 80123CAC 00120C0C  80 7A 00 04 */	lwz r3, 4(r26)
/* 80123CB0 00120C10  80 1D 00 04 */	lwz r0, 4(r29)
/* 80123CB4 00120C14  7C 03 00 00 */	cmpw r3, r0
/* 80123CB8 00120C18  40 82 00 3C */	bne lbl_80123CF4
/* 80123CBC 00120C1C  7F 43 D3 78 */	mr r3, r26
/* 80123CC0 00120C20  48 06 96 29 */	bl GetLocked__21CScriptTargetingPointCFv
/* 80123CC4 00120C24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80123CC8 00120C28  40 82 00 2C */	bne lbl_80123CF4
/* 80123CCC 00120C2C  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80123CD0 00120C30  38 7D 07 64 */	addi r3, r29, 0x764
/* 80123CD4 00120C34  38 81 00 0C */	addi r4, r1, 0xc
/* 80123CD8 00120C38  3B E0 00 01 */	li r31, 1
/* 80123CDC 00120C3C  B0 01 00 08 */	sth r0, 8(r1)
/* 80123CE0 00120C40  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80123CE4 00120C44  48 05 15 35 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80123CE8 00120C48  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80123CEC 00120C4C  B0 1D 07 C0 */	sth r0, 0x7c0(r29)
/* 80123CF0 00120C50  48 00 00 18 */	b lbl_80123D08
lbl_80123CF4:
/* 80123CF4 00120C54  3B 9C 00 02 */	addi r28, r28, 2
/* 80123CF8 00120C58  3B 7B 00 01 */	addi r27, r27, 1
lbl_80123CFC:
/* 80123CFC 00120C5C  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80123D00 00120C60  7C 1B 00 00 */	cmpw r27, r0
/* 80123D04 00120C64  41 80 FF 70 */	blt lbl_80123C74
lbl_80123D08:
/* 80123D08 00120C68  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 80123D0C 00120C6C  38 60 00 00 */	li r3, 0
/* 80123D10 00120C70  2C 05 00 00 */	cmpwi r5, 0
/* 80123D14 00120C74  40 81 00 40 */	ble lbl_80123D54
/* 80123D18 00120C78  2C 05 00 08 */	cmpwi r5, 8
/* 80123D1C 00120C7C  38 85 FF F8 */	addi r4, r5, -8
/* 80123D20 00120C80  40 81 00 20 */	ble lbl_80123D40
/* 80123D24 00120C84  38 04 00 07 */	addi r0, r4, 7
/* 80123D28 00120C88  54 00 E8 FE */	srwi r0, r0, 3
/* 80123D2C 00120C8C  7C 09 03 A6 */	mtctr r0
/* 80123D30 00120C90  2C 04 00 00 */	cmpwi r4, 0
/* 80123D34 00120C94  40 81 00 0C */	ble lbl_80123D40
lbl_80123D38:
/* 80123D38 00120C98  38 63 00 08 */	addi r3, r3, 8
/* 80123D3C 00120C9C  42 00 FF FC */	bdnz lbl_80123D38
lbl_80123D40:
/* 80123D40 00120CA0  7C 03 28 50 */	subf r0, r3, r5
/* 80123D44 00120CA4  7C 09 03 A6 */	mtctr r0
/* 80123D48 00120CA8  7C 03 28 00 */	cmpw r3, r5
/* 80123D4C 00120CAC  40 80 00 08 */	bge lbl_80123D54
lbl_80123D50:
/* 80123D50 00120CB0  42 00 00 00 */	bdnz lbl_80123D50
lbl_80123D54:
/* 80123D54 00120CB4  38 00 00 00 */	li r0, 0
/* 80123D58 00120CB8  90 01 00 78 */	stw r0, 0x78(r1)
lbl_80123D5C:
/* 80123D5C 00120CBC  7F E3 FB 78 */	mr r3, r31
/* 80123D60 00120CC0  BB 41 08 88 */	lmw r26, 0x888(r1)
/* 80123D64 00120CC4  80 01 08 A4 */	lwz r0, 0x8a4(r1)
/* 80123D68 00120CC8  7C 08 03 A6 */	mtlr r0
/* 80123D6C 00120CCC  38 21 08 A0 */	addi r1, r1, 0x8a0
/* 80123D70 00120CD0  4E 80 00 20 */	blr

.global Attacked__12CSpacePirateFR13CStateManagerf
Attacked__12CSpacePirateFR13CStateManagerf:
/* 80123D74 00120CD4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80123D78 00120CD8  C0 43 08 50 */	lfs f2, 0x850(r3)
/* 80123D7C 00120CDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80123D80 00120CE0  41 82 00 08 */	beq lbl_80123D88
/* 80123D84 00120CE4  48 00 00 08 */	b lbl_80123D8C
lbl_80123D88:
/* 80123D88 00120CE8  C0 22 97 D0 */	lfs f1, lbl_805AB4F0@sda21(r2)
lbl_80123D8C:
/* 80123D8C 00120CEC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80123D90 00120CF0  7C 00 00 26 */	mfcr r0
/* 80123D94 00120CF4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80123D98 00120CF8  4E 80 00 20 */	blr

.global ShotAt__12CSpacePirateFR13CStateManagerf
ShotAt__12CSpacePirateFR13CStateManagerf:
/* 80123D9C 00120CFC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80123DA0 00120D00  C0 43 08 54 */	lfs f2, 0x854(r3)
/* 80123DA4 00120D04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80123DA8 00120D08  41 82 00 08 */	beq lbl_80123DB0
/* 80123DAC 00120D0C  48 00 00 08 */	b lbl_80123DB4
lbl_80123DB0:
/* 80123DB0 00120D10  C0 22 97 D0 */	lfs f1, lbl_805AB4F0@sda21(r2)
lbl_80123DB4:
/* 80123DB4 00120D14  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80123DB8 00120D18  7C 00 00 26 */	mfcr r0
/* 80123DBC 00120D1C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80123DC0 00120D20  4E 80 00 20 */	blr

.global ShouldMove__12CSpacePirateFR13CStateManagerf
ShouldMove__12CSpacePirateFR13CStateManagerf:
/* 80123DC4 00120D24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80123DC8 00120D28  7C 08 02 A6 */	mflr r0
/* 80123DCC 00120D2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80123DD0 00120D30  38 A1 00 08 */	addi r5, r1, 8
/* 80123DD4 00120D34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80123DD8 00120D38  A0 03 06 40 */	lhz r0, 0x640(r3)
/* 80123DDC 00120D3C  B0 01 00 08 */	sth r0, 8(r1)
/* 80123DE0 00120D40  4B F5 8A CD */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80123DE4 00120D44  28 03 00 00 */	cmplwi r3, 0
/* 80123DE8 00120D48  3B E0 00 00 */	li r31, 0
/* 80123DEC 00120D4C  41 82 00 14 */	beq lbl_80123E00
/* 80123DF0 00120D50  48 00 98 1D */	bl ShouldStay__17CScriptCoverPointCFv
/* 80123DF4 00120D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80123DF8 00120D58  40 82 00 08 */	bne lbl_80123E00
/* 80123DFC 00120D5C  3B E0 00 01 */	li r31, 1
lbl_80123E00:
/* 80123E00 00120D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80123E04 00120D64  7F E3 FB 78 */	mr r3, r31
/* 80123E08 00120D68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80123E0C 00120D6C  7C 08 03 A6 */	mtlr r0
/* 80123E10 00120D70  38 21 00 20 */	addi r1, r1, 0x20
/* 80123E14 00120D74  4E 80 00 20 */	blr

.global ShouldRetreat__12CSpacePirateFR13CStateManagerf
ShouldRetreat__12CSpacePirateFR13CStateManagerf:
/* 80123E18 00120D78  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80123E1C 00120D7C  7C 08 02 A6 */	mflr r0
/* 80123E20 00120D80  90 01 00 64 */	stw r0, 0x64(r1)
/* 80123E24 00120D84  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80123E28 00120D88  7C 7F 1B 78 */	mr r31, r3
/* 80123E2C 00120D8C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80123E30 00120D90  3B C0 00 00 */	li r30, 0
/* 80123E34 00120D94  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80123E38 00120D98  7C 9D 23 78 */	mr r29, r4
/* 80123E3C 00120D9C  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80123E40 00120DA0  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80123E44 00120DA4  41 82 01 64 */	beq lbl_80123FA8
/* 80123E48 00120DA8  7F E4 FB 78 */	mr r4, r31
/* 80123E4C 00120DAC  7F A5 EB 78 */	mr r5, r29
/* 80123E50 00120DB0  38 61 00 14 */	addi r3, r1, 0x14
/* 80123E54 00120DB4  38 C0 00 0D */	li r6, 0xd
/* 80123E58 00120DB8  38 E0 00 06 */	li r7, 6
/* 80123E5C 00120DBC  48 0D 11 3D */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80123E60 00120DC0  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80123E64 00120DC4  7F A3 EB 78 */	mr r3, r29
/* 80123E68 00120DC8  38 81 00 10 */	addi r4, r1, 0x10
/* 80123E6C 00120DCC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80123E70 00120DD0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80123E74 00120DD4  4B F2 87 31 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80123E78 00120DD8  7C 64 1B 78 */	mr r4, r3
/* 80123E7C 00120DDC  38 61 00 24 */	addi r3, r1, 0x24
/* 80123E80 00120DE0  4B F8 26 CD */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80123E84 00120DE4  80 03 00 04 */	lwz r0, 4(r3)
/* 80123E88 00120DE8  28 00 00 00 */	cmplwi r0, 0
/* 80123E8C 00120DEC  7C 05 03 78 */	mr r5, r0
/* 80123E90 00120DF0  40 82 00 44 */	bne lbl_80123ED4
/* 80123E94 00120DF4  7F E4 FB 78 */	mr r4, r31
/* 80123E98 00120DF8  7F A5 EB 78 */	mr r5, r29
/* 80123E9C 00120DFC  38 61 00 0C */	addi r3, r1, 0xc
/* 80123EA0 00120E00  38 C0 00 0C */	li r6, 0xc
/* 80123EA4 00120E04  38 E0 00 06 */	li r7, 6
/* 80123EA8 00120E08  48 0D 10 F1 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80123EAC 00120E0C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80123EB0 00120E10  7F A3 EB 78 */	mr r3, r29
/* 80123EB4 00120E14  38 81 00 08 */	addi r4, r1, 8
/* 80123EB8 00120E18  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80123EBC 00120E1C  B0 01 00 08 */	sth r0, 8(r1)
/* 80123EC0 00120E20  4B F2 86 E5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80123EC4 00120E24  7C 64 1B 78 */	mr r4, r3
/* 80123EC8 00120E28  38 61 00 1C */	addi r3, r1, 0x1c
/* 80123ECC 00120E2C  4B F8 26 81 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80123ED0 00120E30  80 A3 00 04 */	lwz r5, 4(r3)
lbl_80123ED4:
/* 80123ED4 00120E34  28 05 00 00 */	cmplwi r5, 0
/* 80123ED8 00120E38  41 82 00 34 */	beq lbl_80123F0C
/* 80123EDC 00120E3C  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 80123EE0 00120E40  7F E3 FB 78 */	mr r3, r31
/* 80123EE4 00120E44  38 81 00 38 */	addi r4, r1, 0x38
/* 80123EE8 00120E48  B0 1F 02 DC */	sth r0, 0x2dc(r31)
/* 80123EEC 00120E4C  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80123EF0 00120E50  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80123EF4 00120E54  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80123EF8 00120E58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80123EFC 00120E5C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80123F00 00120E60  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80123F04 00120E64  4B F5 8C 59 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80123F08 00120E68  48 00 00 30 */	b lbl_80123F38
lbl_80123F0C:
/* 80123F0C 00120E6C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80123F10 00120E70  7F E3 FB 78 */	mr r3, r31
/* 80123F14 00120E74  38 81 00 2C */	addi r4, r1, 0x2c
/* 80123F18 00120E78  B0 1F 02 DC */	sth r0, 0x2dc(r31)
/* 80123F1C 00120E7C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80123F20 00120E80  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80123F24 00120E84  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80123F28 00120E88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80123F2C 00120E8C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80123F30 00120E90  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80123F34 00120E94  4B F5 8C 29 */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_80123F38:
/* 80123F38 00120E98  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80123F3C 00120E9C  38 C0 00 00 */	li r6, 0
/* 80123F40 00120EA0  50 C0 17 7A */	rlwimi r0, r6, 2, 0x1d, 0x1d
/* 80123F44 00120EA4  7F E3 FB 78 */	mr r3, r31
/* 80123F48 00120EA8  98 1F 06 36 */	stb r0, 0x636(r31)
/* 80123F4C 00120EAC  7F A4 EB 78 */	mr r4, r29
/* 80123F50 00120EB0  38 BF 06 40 */	addi r5, r31, 0x640
/* 80123F54 00120EB4  3B C0 00 01 */	li r30, 1
/* 80123F58 00120EB8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80123F5C 00120EBC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80123F60 00120EC0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80123F64 00120EC4  D0 1F 02 EC */	stfs f0, 0x2ec(r31)
/* 80123F68 00120EC8  D0 3F 02 F0 */	stfs f1, 0x2f0(r31)
/* 80123F6C 00120ECC  D0 5F 02 F4 */	stfs f2, 0x2f4(r31)
/* 80123F70 00120ED0  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 80123F74 00120ED4  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 80123F78 00120ED8  98 1F 03 28 */	stb r0, 0x328(r31)
/* 80123F7C 00120EDC  4B F5 88 E1 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 80123F80 00120EE0  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80123F84 00120EE4  38 60 00 00 */	li r3, 0
/* 80123F88 00120EE8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80123F8C 00120EEC  98 1F 06 36 */	stb r0, 0x636(r31)
/* 80123F90 00120EF0  88 1F 06 37 */	lbz r0, 0x637(r31)
/* 80123F94 00120EF4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80123F98 00120EF8  98 1F 06 37 */	stb r0, 0x637(r31)
/* 80123F9C 00120EFC  88 1F 04 00 */	lbz r0, 0x400(r31)
/* 80123FA0 00120F00  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80123FA4 00120F04  98 1F 04 00 */	stb r0, 0x400(r31)
lbl_80123FA8:
/* 80123FA8 00120F08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80123FAC 00120F0C  7F C3 F3 78 */	mr r3, r30
/* 80123FB0 00120F10  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80123FB4 00120F14  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80123FB8 00120F18  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80123FBC 00120F1C  7C 08 03 A6 */	mtlr r0
/* 80123FC0 00120F20  38 21 00 60 */	addi r1, r1, 0x60
/* 80123FC4 00120F24  4E 80 00 20 */	blr

.global Dodge__12CSpacePirateFR13CStateManager9EStateMsgf
Dodge__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80123FC8 00120F28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80123FCC 00120F2C  7C 08 02 A6 */	mflr r0
/* 80123FD0 00120F30  90 01 00 64 */	stw r0, 0x64(r1)
/* 80123FD4 00120F34  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80123FD8 00120F38  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80123FDC 00120F3C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80123FE0 00120F40  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80123FE4 00120F44  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80123FE8 00120F48  2C 05 00 01 */	cmpwi r5, 1
/* 80123FEC 00120F4C  3C C0 80 3E */	lis r6, lbl_803E0700@ha
/* 80123FF0 00120F50  7C 7E 1B 78 */	mr r30, r3
/* 80123FF4 00120F54  7C 9F 23 78 */	mr r31, r4
/* 80123FF8 00120F58  3B A6 07 00 */	addi r29, r6, lbl_803E0700@l
/* 80123FFC 00120F5C  41 82 01 08 */	beq lbl_80124104
/* 80124000 00120F60  40 80 00 10 */	bge lbl_80124010
/* 80124004 00120F64  2C 05 00 00 */	cmpwi r5, 0
/* 80124008 00120F68  40 80 00 14 */	bge lbl_8012401C
/* 8012400C 00120F6C  48 00 02 68 */	b lbl_80124274
lbl_80124010:
/* 80124010 00120F70  2C 05 00 03 */	cmpwi r5, 3
/* 80124014 00120F74  40 80 02 60 */	bge lbl_80124274
/* 80124018 00120F78  48 00 02 14 */	b lbl_8012422C
lbl_8012401C:
/* 8012401C 00120F7C  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80124020 00120F80  38 A0 00 00 */	li r5, 0
/* 80124024 00120F84  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 80124028 00120F88  98 1E 06 39 */	stb r0, 0x639(r30)
/* 8012402C 00120F8C  88 1E 06 3A */	lbz r0, 0x63a(r30)
/* 80124030 00120F90  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80124034 00120F94  40 82 00 90 */	bne lbl_801240C4
/* 80124038 00120F98  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 8012403C 00120F9C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80124040 00120FA0  40 82 00 84 */	bne lbl_801240C4
/* 80124044 00120FA4  C0 3E 08 C0 */	lfs f1, 0x8c0(r30)
/* 80124048 00120FA8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012404C 00120FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124050 00120FB0  4C 40 13 82 */	cror 2, 0, 2
/* 80124054 00120FB4  40 82 00 70 */	bne lbl_801240C4
/* 80124058 00120FB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8012405C 00120FBC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80124060 00120FC0  7D 89 03 A6 */	mtctr r12
/* 80124064 00120FC4  4E 80 04 21 */	bctrl
/* 80124068 00120FC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8012406C 00120FCC  C0 9E 07 50 */	lfs f4, 0x750(r30)
/* 80124070 00120FD0  C0 22 98 28 */	lfs f1, lbl_805AB548@sda21(r2)
/* 80124074 00120FD4  EC 04 00 28 */	fsubs f0, f4, f0
/* 80124078 00120FD8  C0 42 97 D8 */	lfs f2, lbl_805AB4F8@sda21(r2)
/* 8012407C 00120FDC  C0 62 98 2C */	lfs f3, lbl_805AB54C@sda21(r2)
/* 80124080 00120FE0  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80124084 00120FE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80124088 00120FE8  EC 00 20 24 */	fdivs f0, f0, f4
/* 8012408C 00120FEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80124090 00120FF0  EF E3 00 32 */	fmuls f31, f3, f0
/* 80124094 00120FF4  48 1E E4 49 */	bl Float__9CRandom16Fv
/* 80124098 00120FF8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8012409C 00120FFC  40 80 00 14 */	bge lbl_801240B0
/* 801240A0 00121000  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801240A4 00121004  38 60 00 01 */	li r3, 1
/* 801240A8 00121008  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801240AC 0012100C  98 1E 06 39 */	stb r0, 0x639(r30)
lbl_801240B0:
/* 801240B0 00121010  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801240B4 00121014  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 801240B8 00121018  C0 5E 06 24 */	lfs f2, 0x624(r30)
/* 801240BC 0012101C  48 1E E4 89 */	bl Range__9CRandom16Fff
/* 801240C0 00121020  D0 3E 08 C0 */	stfs f1, 0x8c0(r30)
lbl_801240C4:
/* 801240C4 00121024  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 801240C8 00121028  7F C3 F3 78 */	mr r3, r30
/* 801240CC 0012102C  7F E4 FB 78 */	mr r4, r31
/* 801240D0 00121030  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801240D4 00121034  41 82 00 0C */	beq lbl_801240E0
/* 801240D8 00121038  C0 3E 08 4C */	lfs f1, 0x84c(r30)
/* 801240DC 0012103C  48 00 00 08 */	b lbl_801240E4
lbl_801240E0:
/* 801240E0 00121040  C0 3E 08 48 */	lfs f1, 0x848(r30)
lbl_801240E4:
/* 801240E4 00121044  48 00 45 F9 */	bl GetStrafeDir__12CSpacePirateCFR13CStateManagerf
/* 801240E8 00121048  90 7E 08 44 */	stw r3, 0x844(r30)
/* 801240EC 0012104C  80 1E 08 44 */	lwz r0, 0x844(r30)
/* 801240F0 00121050  2C 00 FF FF */	cmpwi r0, -1
/* 801240F4 00121054  41 82 01 80 */	beq lbl_80124274
/* 801240F8 00121058  38 00 00 01 */	li r0, 1
/* 801240FC 0012105C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80124100 00121060  48 00 01 74 */	b lbl_80124274
lbl_80124104:
/* 80124104 00121064  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80124108 00121068  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8012410C 0012106C  40 82 00 8C */	bne lbl_80124198
/* 80124110 00121070  88 1E 06 3A */	lbz r0, 0x63a(r30)
/* 80124114 00121074  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80124118 00121078  40 82 00 18 */	bne lbl_80124130
/* 8012411C 0012107C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80124120 00121080  48 1E E3 BD */	bl Float__9CRandom16Fv
/* 80124124 00121084  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80124128 00121088  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012412C 0012108C  40 80 00 38 */	bge lbl_80124164
lbl_80124130:
/* 80124130 00121090  80 BD 00 AC */	lwz r5, 0xac(r29)
/* 80124134 00121094  7F C3 F3 78 */	mr r3, r30
/* 80124138 00121098  80 FD 00 B0 */	lwz r7, 0xb0(r29)
/* 8012413C 0012109C  7F E4 FB 78 */	mr r4, r31
/* 80124140 001210A0  80 1D 00 B4 */	lwz r0, 0xb4(r29)
/* 80124144 001210A4  38 C1 00 28 */	addi r6, r1, 0x28
/* 80124148 001210A8  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8012414C 001210AC  38 A0 00 03 */	li r5, 3
/* 80124150 001210B0  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 80124154 001210B4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80124158 001210B8  80 FE 08 44 */	lwz r7, 0x844(r30)
/* 8012415C 001210BC  4B F5 86 59 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80124160 001210C0  48 00 01 14 */	b lbl_80124274
lbl_80124164:
/* 80124164 001210C4  80 BD 00 B8 */	lwz r5, 0xb8(r29)
/* 80124168 001210C8  7F C3 F3 78 */	mr r3, r30
/* 8012416C 001210CC  80 FD 00 BC */	lwz r7, 0xbc(r29)
/* 80124170 001210D0  7F E4 FB 78 */	mr r4, r31
/* 80124174 001210D4  80 1D 00 C0 */	lwz r0, 0xc0(r29)
/* 80124178 001210D8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8012417C 001210DC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80124180 001210E0  38 A0 00 03 */	li r5, 3
/* 80124184 001210E4  90 E1 00 20 */	stw r7, 0x20(r1)
/* 80124188 001210E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012418C 001210EC  80 FE 08 44 */	lwz r7, 0x844(r30)
/* 80124190 001210F0  4B F5 86 25 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80124194 001210F4  48 00 00 E0 */	b lbl_80124274
lbl_80124198:
/* 80124198 001210F8  81 1D 00 C4 */	lwz r8, 0xc4(r29)
/* 8012419C 001210FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 801241A0 00121100  80 FD 00 C8 */	lwz r7, 0xc8(r29)
/* 801241A4 00121104  38 A0 00 03 */	li r5, 3
/* 801241A8 00121108  80 1D 00 CC */	lwz r0, 0xcc(r29)
/* 801241AC 0012110C  91 01 00 10 */	stw r8, 0x10(r1)
/* 801241B0 00121110  90 E1 00 14 */	stw r7, 0x14(r1)
/* 801241B4 00121114  90 01 00 18 */	stw r0, 0x18(r1)
/* 801241B8 00121118  80 FE 08 44 */	lwz r7, 0x844(r30)
/* 801241BC 0012111C  4B F5 85 F9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801241C0 00121120  80 7E 00 68 */	lwz r3, 0x68(r30)
/* 801241C4 00121124  38 00 02 00 */	li r0, 0x200
/* 801241C8 00121128  80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 801241CC 0012112C  38 80 00 00 */	li r4, 0
/* 801241D0 00121130  7C 60 00 38 */	and r0, r3, r0
/* 801241D4 00121134  7C A3 20 38 */	and r3, r5, r4
/* 801241D8 00121138  7C 63 22 78 */	xor r3, r3, r4
/* 801241DC 0012113C  7C 00 22 78 */	xor r0, r0, r4
/* 801241E0 00121140  7C 60 03 79 */	or. r0, r3, r0
/* 801241E4 00121144  41 82 00 90 */	beq lbl_80124274
/* 801241E8 00121148  C0 3E 03 38 */	lfs f1, 0x338(r30)
/* 801241EC 0012114C  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 801241F0 00121150  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801241F4 00121154  40 81 00 80 */	ble lbl_80124274
/* 801241F8 00121158  7F C3 F3 78 */	mr r3, r30
/* 801241FC 0012115C  7F E5 FB 78 */	mr r5, r31
/* 80124200 00121160  38 80 00 29 */	li r4, 0x29
/* 80124204 00121164  4B F2 FD 7D */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80124208 00121168  A0 1E 00 08 */	lhz r0, 8(r30)
/* 8012420C 0012116C  7F E6 FB 78 */	mr r6, r31
/* 80124210 00121170  38 81 00 0C */	addi r4, r1, 0xc
/* 80124214 00121174  38 A0 00 08 */	li r5, 8
/* 80124218 00121178  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8012421C 0012117C  B0 01 00 08 */	sth r0, 8(r1)
/* 80124220 00121180  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80124224 00121184  48 05 70 31 */	bl SetOrbitRequestForTarget__7CPlayerF9TUniqueId19EPlayerOrbitRequestR13CStateManager
/* 80124228 00121188  48 00 00 4C */	b lbl_80124274
lbl_8012422C:
/* 8012422C 0012118C  38 C0 00 00 */	li r6, 0
/* 80124230 00121190  38 A0 00 01 */	li r5, 1
/* 80124234 00121194  90 DE 03 2C */	stw r6, 0x32c(r30)
/* 80124238 00121198  38 00 02 00 */	li r0, 0x200
/* 8012423C 0012119C  88 9E 06 38 */	lbz r4, 0x638(r30)
/* 80124240 001211A0  50 A4 17 7A */	rlwimi r4, r5, 2, 0x1d, 0x1d
/* 80124244 001211A4  98 9E 06 38 */	stb r4, 0x638(r30)
/* 80124248 001211A8  80 9E 00 68 */	lwz r4, 0x68(r30)
/* 8012424C 001211AC  80 BE 00 6C */	lwz r5, 0x6c(r30)
/* 80124250 001211B0  7C 80 00 38 */	and r0, r4, r0
/* 80124254 001211B4  7C A4 30 38 */	and r4, r5, r6
/* 80124258 001211B8  7C 84 32 78 */	xor r4, r4, r6
/* 8012425C 001211BC  7C 00 32 78 */	xor r0, r0, r6
/* 80124260 001211C0  7C 80 03 79 */	or. r0, r4, r0
/* 80124264 001211C4  40 82 00 10 */	bne lbl_80124274
/* 80124268 001211C8  7F E5 FB 78 */	mr r5, r31
/* 8012426C 001211CC  38 80 00 29 */	li r4, 0x29
/* 80124270 001211D0  4B F3 00 E1 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_80124274:
/* 80124274 001211D4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80124278 001211D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8012427C 001211DC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80124280 001211E0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80124284 001211E4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80124288 001211E8  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8012428C 001211EC  7C 08 03 A6 */	mtlr r0
/* 80124290 001211F0  38 21 00 60 */	addi r1, r1, 0x60
/* 80124294 001211F4  4E 80 00 20 */	blr

.global TryRollingDodge__10CPatternedFR13CStateManageri
TryRollingDodge__10CPatternedFR13CStateManageri:
/* 80124298 001211F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012429C 001211FC  7C 08 02 A6 */	mflr r0
/* 801242A0 00121200  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801242A4 00121204  90 01 00 24 */	stw r0, 0x24(r1)
/* 801242A8 00121208  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801242AC 0012120C  38 80 00 01 */	li r4, 1
/* 801242B0 00121210  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801242B4 00121214  80 E3 04 50 */	lwz r7, 0x450(r3)
/* 801242B8 00121218  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801242BC 0012121C  90 01 00 08 */	stw r0, 8(r1)
/* 801242C0 00121220  38 C3 A9 E4 */	addi r6, r3, lbl_803DA9E4@l
/* 801242C4 00121224  38 60 00 01 */	li r3, 1
/* 801242C8 00121228  38 00 00 03 */	li r0, 3
/* 801242CC 0012122C  3B E7 00 04 */	addi r31, r7, 4
/* 801242D0 00121230  90 61 00 0C */	stw r3, 0xc(r1)
/* 801242D4 00121234  7F E3 FB 78 */	mr r3, r31
/* 801242D8 00121238  90 C1 00 08 */	stw r6, 8(r1)
/* 801242DC 0012123C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801242E0 00121240  90 01 00 14 */	stw r0, 0x14(r1)
/* 801242E4 00121244  48 00 D1 55 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801242E8 00121248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801242EC 0012124C  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801242F0 00121250  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801242F4 00121254  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801242F8 00121258  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801242FC 0012125C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80124300 00121260  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80124304 00121264  90 81 00 08 */	stw r4, 8(r1)
/* 80124308 00121268  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8012430C 0012126C  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 80124310 00121270  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 80124314 00121274  90 01 00 08 */	stw r0, 8(r1)
/* 80124318 00121278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012431C 0012127C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80124320 00121280  7C 08 03 A6 */	mtlr r0
/* 80124324 00121284  38 21 00 20 */	addi r1, r1, 0x20
/* 80124328 00121288  4E 80 00 20 */	blr

.global ShouldDodge__12CSpacePirateFR13CStateManagerf
ShouldDodge__12CSpacePirateFR13CStateManagerf:
/* 8012432C 0012128C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80124330 00121290  7C 08 02 A6 */	mflr r0
/* 80124334 00121294  90 01 00 84 */	stw r0, 0x84(r1)
/* 80124338 00121298  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8012433C 0012129C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80124340 001212A0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80124344 001212A4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80124348 001212A8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8012434C 001212AC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80124350 001212B0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80124354 001212B4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80124358 001212B8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8012435C 001212BC  7C 7D 1B 78 */	mr r29, r3
/* 80124360 001212C0  88 63 06 38 */	lbz r3, 0x638(r3)
/* 80124364 001212C4  7C 9E 23 78 */	mr r30, r4
/* 80124368 001212C8  3B E0 00 00 */	li r31, 0
/* 8012436C 001212CC  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 80124370 001212D0  41 82 01 44 */	beq lbl_801244B4
/* 80124374 001212D4  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 80124378 001212D8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8012437C 001212DC  40 82 00 A0 */	bne lbl_8012441C
/* 80124380 001212E0  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 80124384 001212E4  40 82 00 98 */	bne lbl_8012441C
/* 80124388 001212E8  C3 BD 00 60 */	lfs f29, 0x60(r29)
/* 8012438C 001212EC  7F A4 EB 78 */	mr r4, r29
/* 80124390 001212F0  C3 DD 00 50 */	lfs f30, 0x50(r29)
/* 80124394 001212F4  7F C5 F3 78 */	mr r5, r30
/* 80124398 001212F8  C3 FD 00 40 */	lfs f31, 0x40(r29)
/* 8012439C 001212FC  38 61 00 28 */	addi r3, r1, 0x28
/* 801243A0 00121300  48 00 40 A5 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 801243A4 00121304  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801243A8 00121308  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801243AC 0012130C  EC 60 F0 28 */	fsubs f3, f0, f30
/* 801243B0 00121310  C0 BD 00 48 */	lfs f5, 0x48(r29)
/* 801243B4 00121314  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801243B8 00121318  EC 81 F8 28 */	fsubs f4, f1, f31
/* 801243BC 0012131C  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 801243C0 00121320  EC 23 01 72 */	fmuls f1, f3, f5
/* 801243C4 00121324  C0 DD 00 58 */	lfs f6, 0x58(r29)
/* 801243C8 00121328  EC 60 E8 28 */	fsubs f3, f0, f29
/* 801243CC 0012132C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801243D0 00121330  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 801243D4 00121334  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801243D8 00121338  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 801243DC 0012133C  EC 23 09 BA */	fmadds f1, f3, f6, f1
/* 801243E0 00121340  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 801243E4 00121344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801243E8 00121348  40 81 00 34 */	ble lbl_8012441C
/* 801243EC 0012134C  C0 1D 08 50 */	lfs f0, 0x850(r29)
/* 801243F0 00121350  C0 22 98 30 */	lfs f1, lbl_805AB550@sda21(r2)
/* 801243F4 00121354  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801243F8 00121358  41 80 00 10 */	blt lbl_80124408
/* 801243FC 0012135C  C0 1D 08 54 */	lfs f0, 0x854(r29)
/* 80124400 00121360  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80124404 00121364  40 80 00 18 */	bge lbl_8012441C
lbl_80124408:
/* 80124408 00121368  C0 3D 07 AC */	lfs f1, 0x7ac(r29)
/* 8012440C 0012136C  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80124410 00121370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124414 00121374  40 80 00 08 */	bge lbl_8012441C
/* 80124418 00121378  3B E0 00 01 */	li r31, 1
lbl_8012441C:
/* 8012441C 0012137C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80124420 00121380  40 82 00 94 */	bne lbl_801244B4
/* 80124424 00121384  A0 1D 07 C0 */	lhz r0, 0x7c0(r29)
/* 80124428 00121388  7F C3 F3 78 */	mr r3, r30
/* 8012442C 0012138C  38 81 00 08 */	addi r4, r1, 8
/* 80124430 00121390  B0 01 00 08 */	sth r0, 8(r1)
/* 80124434 00121394  4B F2 81 71 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80124438 00121398  7C 64 1B 78 */	mr r4, r3
/* 8012443C 0012139C  38 61 00 0C */	addi r3, r1, 0xc
/* 80124440 001213A0  4B F8 10 95 */	bl "__ct__25TPatternedCast<8CMetroid>FP7CEntity"
/* 80124444 001213A4  4B F8 10 65 */	bl "CastTo<8CMetroid>__10CPatternedFRC25TPatternedCast<8CMetroid>"
/* 80124448 001213A8  28 03 00 00 */	cmplwi r3, 0
/* 8012444C 001213AC  41 82 00 68 */	beq lbl_801244B4
/* 80124450 001213B0  88 03 09 BF */	lbz r0, 0x9bf(r3)
/* 80124454 001213B4  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80124458 001213B8  41 82 00 5C */	beq lbl_801244B4
/* 8012445C 001213BC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80124460 001213C0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80124464 001213C4  C0 C3 00 48 */	lfs f6, 0x48(r3)
/* 80124468 001213C8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8012446C 001213CC  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80124470 001213D0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80124474 001213D4  C0 43 00 38 */	lfs f2, 0x38(r3)
/* 80124478 001213D8  EC A1 00 28 */	fsubs f5, f1, f0
/* 8012447C 001213DC  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80124480 001213E0  EC 04 01 B2 */	fmuls f0, f4, f6
/* 80124484 001213E4  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80124488 001213E8  C0 83 00 58 */	lfs f4, 0x58(r3)
/* 8012448C 001213EC  EC 63 08 28 */	fsubs f3, f3, f1
/* 80124490 001213F0  EC 25 00 BA */	fmadds f1, f5, f2, f0
/* 80124494 001213F4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80124498 001213F8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8012449C 001213FC  EC 23 09 3A */	fmadds f1, f3, f4, f1
/* 801244A0 00121400  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801244A4 00121404  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801244A8 00121408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801244AC 0012140C  40 81 00 08 */	ble lbl_801244B4
/* 801244B0 00121410  3B E0 00 01 */	li r31, 1
lbl_801244B4:
/* 801244B4 00121414  7F E3 FB 78 */	mr r3, r31
/* 801244B8 00121418  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801244BC 0012141C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801244C0 00121420  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801244C4 00121424  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801244C8 00121428  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801244CC 0012142C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801244D0 00121430  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801244D4 00121434  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801244D8 00121438  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801244DC 0012143C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801244E0 00121440  7C 08 03 A6 */	mtlr r0
/* 801244E4 00121444  38 21 00 80 */	addi r1, r1, 0x80
/* 801244E8 00121448  4E 80 00 20 */	blr

.global TurnAround__12CSpacePirateFR13CStateManager9EStateMsgf
TurnAround__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801244EC 0012144C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801244F0 00121450  7C 08 02 A6 */	mflr r0
/* 801244F4 00121454  2C 05 00 01 */	cmpwi r5, 1
/* 801244F8 00121458  90 01 00 54 */	stw r0, 0x54(r1)
/* 801244FC 0012145C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80124500 00121460  7C 9F 23 78 */	mr r31, r4
/* 80124504 00121464  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80124508 00121468  7C 7E 1B 78 */	mr r30, r3
/* 8012450C 0012146C  41 82 00 C8 */	beq lbl_801245D4
/* 80124510 00121470  40 80 00 10 */	bge lbl_80124520
/* 80124514 00121474  2C 05 00 00 */	cmpwi r5, 0
/* 80124518 00121478  40 80 00 14 */	bge lbl_8012452C
/* 8012451C 0012147C  48 00 01 00 */	b lbl_8012461C
lbl_80124520:
/* 80124520 00121480  2C 05 00 03 */	cmpwi r5, 3
/* 80124524 00121484  40 80 00 F8 */	bge lbl_8012461C
/* 80124528 00121488  48 00 00 EC */	b lbl_80124614
lbl_8012452C:
/* 8012452C 0012148C  7F C4 F3 78 */	mr r4, r30
/* 80124530 00121490  7F E5 FB 78 */	mr r5, r31
/* 80124534 00121494  38 61 00 2C */	addi r3, r1, 0x2c
/* 80124538 00121498  48 00 3F 0D */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 8012453C 0012149C  7F C3 F3 78 */	mr r3, r30
/* 80124540 001214A0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80124544 001214A4  4B F5 86 19 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80124548 001214A8  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 8012454C 001214AC  38 61 00 14 */	addi r3, r1, 0x14
/* 80124550 001214B0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80124554 001214B4  38 81 00 38 */	addi r4, r1, 0x38
/* 80124558 001214B8  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 8012455C 001214BC  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80124560 001214C0  EC A1 00 28 */	fsubs f5, f1, f0
/* 80124564 001214C4  C0 5E 02 E0 */	lfs f2, 0x2e0(r30)
/* 80124568 001214C8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8012456C 001214CC  EC 64 18 28 */	fsubs f3, f4, f3
/* 80124570 001214D0  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80124574 001214D4  EC 22 08 28 */	fsubs f1, f2, f1
/* 80124578 001214D8  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 8012457C 001214DC  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 80124580 001214E0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80124584 001214E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80124588 001214E8  48 1F 02 C9 */	bl AsNormalized__9CVector3fCFv
/* 8012458C 001214EC  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 80124590 001214F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80124594 001214F4  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80124598 001214F8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8012459C 001214FC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801245A0 00121500  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 801245A4 00121504  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801245A8 00121508  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801245AC 0012150C  C0 02 98 34 */	lfs f0, lbl_805AB554@sda21(r2)
/* 801245B0 00121510  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801245B4 00121514  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801245B8 00121518  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 801245BC 0012151C  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 801245C0 00121520  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801245C4 00121524  40 80 00 58 */	bge lbl_8012461C
/* 801245C8 00121528  38 00 00 01 */	li r0, 1
/* 801245CC 0012152C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 801245D0 00121530  48 00 00 4C */	b lbl_8012461C
lbl_801245D4:
/* 801245D4 00121534  3C A0 80 3E */	lis r5, lbl_803E07A0@ha
/* 801245D8 00121538  38 C1 00 08 */	addi r6, r1, 8
/* 801245DC 0012153C  39 45 07 A0 */	addi r10, r5, lbl_803E07A0@l
/* 801245E0 00121540  38 A0 00 08 */	li r5, 8
/* 801245E4 00121544  81 2A 00 00 */	lwz r9, 0(r10)
/* 801245E8 00121548  38 E0 00 00 */	li r7, 0
/* 801245EC 0012154C  81 0A 00 04 */	lwz r8, 4(r10)
/* 801245F0 00121550  80 0A 00 08 */	lwz r0, 8(r10)
/* 801245F4 00121554  91 21 00 08 */	stw r9, 8(r1)
/* 801245F8 00121558  91 01 00 0C */	stw r8, 0xc(r1)
/* 801245FC 0012155C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80124600 00121560  4B F5 81 B5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80124604 00121564  7F C3 F3 78 */	mr r3, r30
/* 80124608 00121568  7F E4 FB 78 */	mr r4, r31
/* 8012460C 0012156C  48 00 49 91 */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 80124610 00121570  48 00 00 0C */	b lbl_8012461C
lbl_80124614:
/* 80124614 00121574  38 00 00 00 */	li r0, 0
/* 80124618 00121578  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_8012461C:
/* 8012461C 0012157C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80124620 00121580  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80124624 00121584  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80124628 00121588  7C 08 03 A6 */	mtlr r0
/* 8012462C 0012158C  38 21 00 50 */	addi r1, r1, 0x50
/* 80124630 00121590  4E 80 00 20 */	blr

.global Shuffle__12CSpacePirateFR13CStateManager9EStateMsgf
Shuffle__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80124634 00121594  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80124638 00121598  7C 08 02 A6 */	mflr r0
/* 8012463C 0012159C  90 01 01 24 */	stw r0, 0x124(r1)
/* 80124640 001215A0  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80124644 001215A4  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 80124648 001215A8  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 8012464C 001215AC  F3 C1 01 08 */	psq_st f30, 264(r1), 0, qr0
/* 80124650 001215B0  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 80124654 001215B4  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, qr0
/* 80124658 001215B8  93 E1 00 EC */	stw r31, 0xec(r1)
/* 8012465C 001215BC  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 80124660 001215C0  93 A1 00 E4 */	stw r29, 0xe4(r1)
/* 80124664 001215C4  7C BF 2B 79 */	or. r31, r5, r5
/* 80124668 001215C8  FF C0 08 90 */	fmr f30, f1
/* 8012466C 001215CC  7C 7D 1B 78 */	mr r29, r3
/* 80124670 001215D0  7C 9E 23 78 */	mr r30, r4
/* 80124674 001215D4  41 82 00 08 */	beq lbl_8012467C
/* 80124678 001215D8  48 00 02 D0 */	b lbl_80124948
lbl_8012467C:
/* 8012467C 001215DC  80 BD 04 50 */	lwz r5, 0x450(r29)
/* 80124680 001215E0  38 00 00 00 */	li r0, 0
/* 80124684 001215E4  90 05 00 34 */	stw r0, 0x34(r5)
/* 80124688 001215E8  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012468C 001215EC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80124690 001215F0  40 82 01 34 */	bne lbl_801247C4
/* 80124694 001215F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80124698 001215F8  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012469C 001215FC  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 801246A0 00121600  7D 89 03 A6 */	mtctr r12
/* 801246A4 00121604  4E 80 04 21 */	bctrl
/* 801246A8 00121608  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801246AC 0012160C  41 82 01 18 */	beq lbl_801247C4
/* 801246B0 00121610  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 801246B4 00121614  7F C4 F3 78 */	mr r4, r30
/* 801246B8 00121618  C0 42 98 1C */	lfs f2, lbl_805AB53C@sda21(r2)
/* 801246BC 0012161C  38 61 00 5C */	addi r3, r1, 0x5c
/* 801246C0 00121620  48 00 47 1D */	bl Random2f__FR13CStateManagerff
/* 801246C4 00121624  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 801246C8 00121628  38 61 00 8C */	addi r3, r1, 0x8c
/* 801246CC 0012162C  C0 FD 00 60 */	lfs f7, 0x60(r29)
/* 801246D0 00121630  38 81 00 80 */	addi r4, r1, 0x80
/* 801246D4 00121634  C0 A5 00 60 */	lfs f5, 0x60(r5)
/* 801246D8 00121638  C0 85 00 50 */	lfs f4, 0x50(r5)
/* 801246DC 0012163C  C0 DD 00 50 */	lfs f6, 0x50(r29)
/* 801246E0 00121640  EC 47 28 28 */	fsubs f2, f7, f5
/* 801246E4 00121644  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801246E8 00121648  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 801246EC 0012164C  EC 66 20 28 */	fsubs f3, f6, f4
/* 801246F0 00121650  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801246F4 00121654  EC 01 00 28 */	fsubs f0, f1, f0
/* 801246F8 00121658  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 801246FC 0012165C  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 80124700 00121660  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80124704 00121664  D0 C1 00 78 */	stfs f6, 0x78(r1)
/* 80124708 00121668  D0 E1 00 7C */	stfs f7, 0x7c(r1)
/* 8012470C 0012166C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80124710 00121670  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 80124714 00121674  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 80124718 00121678  48 1F 01 39 */	bl AsNormalized__9CVector3fCFv
/* 8012471C 0012167C  C0 7D 02 FC */	lfs f3, 0x2fc(r29)
/* 80124720 00121680  7F A3 EB 78 */	mr r3, r29
/* 80124724 00121684  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80124728 00121688  38 81 00 BC */	addi r4, r1, 0xbc
/* 8012472C 0012168C  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80124730 00121690  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80124734 00121694  EC E3 00 B2 */	fmuls f7, f3, f2
/* 80124738 00121698  C1 7D 00 60 */	lfs f11, 0x60(r29)
/* 8012473C 0012169C  EC C3 00 72 */	fmuls f6, f3, f1
/* 80124740 001216A0  C0 9D 00 40 */	lfs f4, 0x40(r29)
/* 80124744 001216A4  EC A3 00 32 */	fmuls f5, f3, f0
/* 80124748 001216A8  C1 5D 00 50 */	lfs f10, 0x50(r29)
/* 8012474C 001216AC  ED 0B 38 2A */	fadds f8, f11, f7
/* 80124750 001216B0  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 80124754 001216B4  ED 2A 28 2A */	fadds f9, f10, f5
/* 80124758 001216B8  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 8012475C 001216BC  EC 64 30 2A */	fadds f3, f4, f6
/* 80124760 001216C0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80124764 001216C4  EC 49 10 2A */	fadds f2, f9, f2
/* 80124768 001216C8  D0 C1 00 98 */	stfs f6, 0x98(r1)
/* 8012476C 001216CC  EC 28 08 2A */	fadds f1, f8, f1
/* 80124770 001216D0  EC 03 00 2A */	fadds f0, f3, f0
/* 80124774 001216D4  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 80124778 001216D8  D0 E1 00 A0 */	stfs f7, 0xa0(r1)
/* 8012477C 001216DC  D0 81 00 A4 */	stfs f4, 0xa4(r1)
/* 80124780 001216E0  D1 41 00 A8 */	stfs f10, 0xa8(r1)
/* 80124784 001216E4  D1 61 00 AC */	stfs f11, 0xac(r1)
/* 80124788 001216E8  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8012478C 001216EC  D1 21 00 B4 */	stfs f9, 0xb4(r1)
/* 80124790 001216F0  D1 01 00 B8 */	stfs f8, 0xb8(r1)
/* 80124794 001216F4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80124798 001216F8  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 8012479C 001216FC  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 801247A0 00121700  4B F5 83 BD */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801247A4 00121704  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801247A8 00121708  38 60 00 01 */	li r3, 1
/* 801247AC 0012170C  B0 1D 02 DC */	sth r0, 0x2dc(r29)
/* 801247B0 00121710  90 7D 03 0C */	stw r3, 0x30c(r29)
/* 801247B4 00121714  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 801247B8 00121718  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801247BC 0012171C  98 1D 06 36 */	stb r0, 0x636(r29)
/* 801247C0 00121720  48 00 01 80 */	b lbl_80124940
lbl_801247C4:
/* 801247C4 00121724  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801247C8 00121728  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 801247CC 0012172C  38 63 66 F4 */	addi r3, r3, sUpVector__9CVector3f@l
/* 801247D0 00121730  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 801247D4 00121734  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801247D8 00121738  C0 3D 00 60 */	lfs f1, 0x60(r29)
/* 801247DC 0012173C  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 801247E0 00121740  EC A3 10 28 */	fsubs f5, f3, f2
/* 801247E4 00121744  C0 E3 00 08 */	lfs f7, 8(r3)
/* 801247E8 00121748  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 801247EC 0012174C  EC 81 00 28 */	fsubs f4, f1, f0
/* 801247F0 00121750  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801247F4 00121754  EC 05 01 F2 */	fmuls f0, f5, f7
/* 801247F8 00121758  C0 C3 00 04 */	lfs f6, 4(r3)
/* 801247FC 0012175C  EC 62 08 28 */	fsubs f3, f2, f1
/* 80124800 00121760  C1 03 00 00 */	lfs f8, 0(r3)
/* 80124804 00121764  EC 26 01 38 */	fmsubs f1, f6, f4, f0
/* 80124808 00121768  D0 A1 00 D8 */	stfs f5, 0xd8(r1)
/* 8012480C 0012176C  EC 04 02 32 */	fmuls f0, f4, f8
/* 80124810 00121770  EC 43 01 B2 */	fmuls f2, f3, f6
/* 80124814 00121774  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 80124818 00121778  EC 07 00 F8 */	fmsubs f0, f7, f3, f0
/* 8012481C 0012177C  EC 48 11 78 */	fmsubs f2, f8, f5, f2
/* 80124820 00121780  D0 81 00 DC */	stfs f4, 0xdc(r1)
/* 80124824 00121784  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80124828 00121788  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8012482C 0012178C  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 80124830 00121790  C3 FD 03 00 */	lfs f31, 0x300(r29)
/* 80124834 00121794  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80124838 00121798  48 1E DC A5 */	bl Float__9CRandom16Fv
/* 8012483C 0012179C  EF FF F8 7A */	fmadds f31, f31, f1, f31
/* 80124840 001217A0  80 7E 09 00 */	lwz r3, 0x900(r30)
/* 80124844 001217A4  48 1E DC 99 */	bl Float__9CRandom16Fv
/* 80124848 001217A8  C0 62 97 D0 */	lfs f3, lbl_805AB4F0@sda21(r2)
/* 8012484C 001217AC  38 61 00 08 */	addi r3, r1, 8
/* 80124850 001217B0  C0 42 97 DC */	lfs f2, lbl_805AB4FC@sda21(r2)
/* 80124854 001217B4  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80124858 001217B8  C0 1D 03 00 */	lfs f0, 0x300(r29)
/* 8012485C 001217BC  EC 21 18 28 */	fsubs f1, f1, f3
/* 80124860 001217C0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80124864 001217C4  EF A0 00 72 */	fmuls f29, f0, f1
/* 80124868 001217C8  48 1E FF E9 */	bl AsNormalized__9CVector3fCFv
/* 8012486C 001217CC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80124870 001217D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80124874 001217D4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80124878 001217D8  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8012487C 001217DC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80124880 001217E0  EC 5D 00 B2 */	fmuls f2, f29, f2
/* 80124884 001217E4  EC 3D 00 72 */	fmuls f1, f29, f1
/* 80124888 001217E8  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8012488C 001217EC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80124890 001217F0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80124894 001217F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80124898 001217F8  48 1E FF B9 */	bl AsNormalized__9CVector3fCFv
/* 8012489C 001217FC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801248A0 00121800  7F A3 EB 78 */	mr r3, r29
/* 801248A4 00121804  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 801248A8 00121808  38 81 00 50 */	addi r4, r1, 0x50
/* 801248AC 0012180C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801248B0 00121810  EC FF 00 32 */	fmuls f7, f31, f0
/* 801248B4 00121814  C1 65 00 60 */	lfs f11, 0x60(r5)
/* 801248B8 00121818  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801248BC 0012181C  EC DF 00 72 */	fmuls f6, f31, f1
/* 801248C0 00121820  C0 85 00 40 */	lfs f4, 0x40(r5)
/* 801248C4 00121824  ED 0B 38 2A */	fadds f8, f11, f7
/* 801248C8 00121828  EC BF 00 32 */	fmuls f5, f31, f0
/* 801248CC 0012182C  C1 45 00 50 */	lfs f10, 0x50(r5)
/* 801248D0 00121830  EC 64 30 2A */	fadds f3, f4, f6
/* 801248D4 00121834  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801248D8 00121838  ED 2A 28 2A */	fadds f9, f10, f5
/* 801248DC 0012183C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801248E0 00121840  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801248E4 00121844  EC 28 08 2A */	fadds f1, f8, f1
/* 801248E8 00121848  D0 C1 00 2C */	stfs f6, 0x2c(r1)
/* 801248EC 0012184C  EC 49 10 2A */	fadds f2, f9, f2
/* 801248F0 00121850  EC 03 00 2A */	fadds f0, f3, f0
/* 801248F4 00121854  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801248F8 00121858  D0 E1 00 34 */	stfs f7, 0x34(r1)
/* 801248FC 0012185C  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80124900 00121860  D1 41 00 3C */	stfs f10, 0x3c(r1)
/* 80124904 00121864  D1 61 00 40 */	stfs f11, 0x40(r1)
/* 80124908 00121868  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 8012490C 0012186C  D1 21 00 48 */	stfs f9, 0x48(r1)
/* 80124910 00121870  D1 01 00 4C */	stfs f8, 0x4c(r1)
/* 80124914 00121874  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80124918 00121878  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8012491C 0012187C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80124920 00121880  4B F5 82 3D */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 80124924 00121884  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80124928 00121888  38 60 00 00 */	li r3, 0
/* 8012492C 0012188C  B0 1D 02 DC */	sth r0, 0x2dc(r29)
/* 80124930 00121890  90 7D 03 0C */	stw r3, 0x30c(r29)
/* 80124934 00121894  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 80124938 00121898  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8012493C 0012189C  98 1D 06 36 */	stb r0, 0x636(r29)
lbl_80124940:
/* 80124940 001218A0  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80124944 001218A4  D0 1D 06 44 */	stfs f0, 0x644(r29)
lbl_80124948:
/* 80124948 001218A8  FC 20 F0 90 */	fmr f1, f30
/* 8012494C 001218AC  7F A3 EB 78 */	mr r3, r29
/* 80124950 001218B0  7F C4 F3 78 */	mr r4, r30
/* 80124954 001218B4  7F E5 FB 78 */	mr r5, r31
/* 80124958 001218B8  48 0D 1D 75 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8012495C 001218BC  2C 1F 00 02 */	cmpwi r31, 2
/* 80124960 001218C0  41 82 00 24 */	beq lbl_80124984
/* 80124964 001218C4  40 80 00 30 */	bge lbl_80124994
/* 80124968 001218C8  2C 1F 00 01 */	cmpwi r31, 1
/* 8012496C 001218CC  40 80 00 08 */	bge lbl_80124974
/* 80124970 001218D0  48 00 00 24 */	b lbl_80124994
lbl_80124974:
/* 80124974 001218D4  7F A3 EB 78 */	mr r3, r29
/* 80124978 001218D8  7F C4 F3 78 */	mr r4, r30
/* 8012497C 001218DC  48 00 42 55 */	bl AvoidActors__12CSpacePirateFR13CStateManager
/* 80124980 001218E0  48 00 00 14 */	b lbl_80124994
lbl_80124984:
/* 80124984 001218E4  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 80124988 001218E8  38 60 00 00 */	li r3, 0
/* 8012498C 001218EC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80124990 001218F0  98 1D 06 36 */	stb r0, 0x636(r29)
lbl_80124994:
/* 80124994 001218F4  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80124998 001218F8  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 8012499C 001218FC  E3 C1 01 08 */	psq_l f30, 264(r1), 0, qr0
/* 801249A0 00121900  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 801249A4 00121904  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, qr0
/* 801249A8 00121908  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 801249AC 0012190C  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 801249B0 00121910  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 801249B4 00121914  80 01 01 24 */	lwz r0, 0x124(r1)
/* 801249B8 00121918  83 A1 00 E4 */	lwz r29, 0xe4(r1)
/* 801249BC 0012191C  7C 08 03 A6 */	mtlr r0
/* 801249C0 00121920  38 21 01 20 */	addi r1, r1, 0x120
/* 801249C4 00121924  4E 80 00 20 */	blr

.global InRange__12CSpacePirateFR13CStateManagerf
InRange__12CSpacePirateFR13CStateManagerf:
/* 801249C8 00121928  88 03 06 39 */	lbz r0, 0x639(r3)
/* 801249CC 0012192C  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 801249D0 00121930  4E 80 00 20 */	blr

.global PathFind__12CSpacePirateFR13CStateManager9EStateMsgf
PathFind__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801249D4 00121934  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 801249D8 00121938  7C 08 02 A6 */	mflr r0
/* 801249DC 0012193C  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 801249E0 00121940  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 801249E4 00121944  F3 E1 01 98 */	psq_st f31, 408(r1), 0, qr0
/* 801249E8 00121948  DB C1 01 80 */	stfd f30, 0x180(r1)
/* 801249EC 0012194C  F3 C1 01 88 */	psq_st f30, 392(r1), 0, qr0
/* 801249F0 00121950  DB A1 01 70 */	stfd f29, 0x170(r1)
/* 801249F4 00121954  F3 A1 01 78 */	psq_st f29, 376(r1), 0, qr0
/* 801249F8 00121958  BF 01 01 50 */	stmw r24, 0x150(r1)
/* 801249FC 0012195C  FF A0 08 90 */	fmr f29, f1
/* 80124A00 00121960  2C 05 00 01 */	cmpwi r5, 1
/* 80124A04 00121964  7C 7A 1B 78 */	mr r26, r3
/* 80124A08 00121968  7C 9B 23 78 */	mr r27, r4
/* 80124A0C 0012196C  41 82 06 3C */	beq lbl_80125048
/* 80124A10 00121970  40 80 00 10 */	bge lbl_80124A20
/* 80124A14 00121974  2C 05 00 00 */	cmpwi r5, 0
/* 80124A18 00121978  40 80 00 14 */	bge lbl_80124A2C
/* 80124A1C 0012197C  48 00 08 9C */	b lbl_801252B8
lbl_80124A20:
/* 80124A20 00121980  2C 05 00 03 */	cmpwi r5, 3
/* 80124A24 00121984  40 80 08 94 */	bge lbl_801252B8
/* 80124A28 00121988  48 00 08 60 */	b lbl_80125288
lbl_80124A2C:
/* 80124A2C 0012198C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80124A30 00121990  38 A1 00 28 */	addi r5, r1, 0x28
/* 80124A34 00121994  B0 1A 08 40 */	sth r0, 0x840(r26)
/* 80124A38 00121998  A0 1A 06 40 */	lhz r0, 0x640(r26)
/* 80124A3C 0012199C  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80124A40 001219A0  4B F5 7E 6D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80124A44 001219A4  28 03 00 00 */	cmplwi r3, 0
/* 80124A48 001219A8  41 82 00 4C */	beq lbl_80124A94
/* 80124A4C 001219AC  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80124A50 001219B0  38 80 00 00 */	li r4, 0
/* 80124A54 001219B4  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124A58 001219B8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124A5C 001219BC  D0 1A 02 EC */	stfs f0, 0x2ec(r26)
/* 80124A60 001219C0  D0 3A 02 F0 */	stfs f1, 0x2f0(r26)
/* 80124A64 001219C4  D0 5A 02 F4 */	stfs f2, 0x2f4(r26)
/* 80124A68 001219C8  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 80124A6C 001219CC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80124A70 001219D0  98 1A 03 28 */	stb r0, 0x328(r26)
/* 80124A74 001219D4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80124A78 001219D8  B0 1A 02 DC */	sth r0, 0x2dc(r26)
/* 80124A7C 001219DC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80124A80 001219E0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80124A84 001219E4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80124A88 001219E8  D0 1A 02 E0 */	stfs f0, 0x2e0(r26)
/* 80124A8C 001219EC  D0 3A 02 E4 */	stfs f1, 0x2e4(r26)
/* 80124A90 001219F0  D0 5A 02 E8 */	stfs f2, 0x2e8(r26)
lbl_80124A94:
/* 80124A94 001219F4  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80124A98 001219F8  7F 43 D3 78 */	mr r3, r26
/* 80124A9C 001219FC  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124AA0 00121A00  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124AA4 00121A04  D0 01 01 0C */	stfs f0, 0x10c(r1)
/* 80124AA8 00121A08  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 80124AAC 00121A0C  D0 41 01 14 */	stfs f2, 0x114(r1)
/* 80124AB0 00121A10  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124AB4 00121A14  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124AB8 00121A18  7D 89 03 A6 */	mtctr r12
/* 80124ABC 00121A1C  4E 80 04 21 */	bctrl
/* 80124AC0 00121A20  38 81 01 0C */	addi r4, r1, 0x10c
/* 80124AC4 00121A24  38 BA 02 E0 */	addi r5, r26, 0x2e0
/* 80124AC8 00121A28  48 0A 31 A5 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 80124ACC 00121A2C  2C 03 00 00 */	cmpwi r3, 0
/* 80124AD0 00121A30  40 82 00 FC */	bne lbl_80124BCC
/* 80124AD4 00121A34  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80124AD8 00121A38  7F 43 D3 78 */	mr r3, r26
/* 80124ADC 00121A3C  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124AE0 00121A40  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124AE4 00121A44  D0 1A 02 EC */	stfs f0, 0x2ec(r26)
/* 80124AE8 00121A48  D0 3A 02 F0 */	stfs f1, 0x2f0(r26)
/* 80124AEC 00121A4C  D0 5A 02 F4 */	stfs f2, 0x2f4(r26)
/* 80124AF0 00121A50  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124AF4 00121A54  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124AF8 00121A58  7D 89 03 A6 */	mtctr r12
/* 80124AFC 00121A5C  4E 80 04 21 */	bctrl
/* 80124B00 00121A60  80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 80124B04 00121A64  80 03 00 04 */	lwz r0, 4(r3)
/* 80124B08 00121A68  38 85 00 01 */	addi r4, r5, 1
/* 80124B0C 00121A6C  7C 04 00 00 */	cmpw r4, r0
/* 80124B10 00121A70  40 80 00 14 */	bge lbl_80124B24
/* 80124B14 00121A74  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80124B18 00121A78  7C C3 02 14 */	add r6, r3, r0
/* 80124B1C 00121A7C  38 C6 00 08 */	addi r6, r6, 8
/* 80124B20 00121A80  48 00 00 10 */	b lbl_80124B30
lbl_80124B24:
/* 80124B24 00121A84  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80124B28 00121A88  7C C3 02 14 */	add r6, r3, r0
/* 80124B2C 00121A8C  38 C6 00 08 */	addi r6, r6, 8
lbl_80124B30:
/* 80124B30 00121A90  C0 26 00 00 */	lfs f1, 0(r6)
/* 80124B34 00121A94  38 A0 00 00 */	li r5, 0
/* 80124B38 00121A98  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80124B3C 00121A9C  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80124B40 00121AA0  D0 3A 02 E0 */	stfs f1, 0x2e0(r26)
/* 80124B44 00121AA4  38 81 01 34 */	addi r4, r1, 0x134
/* 80124B48 00121AA8  C0 26 00 04 */	lfs f1, 4(r6)
/* 80124B4C 00121AAC  D0 3A 02 E4 */	stfs f1, 0x2e4(r26)
/* 80124B50 00121AB0  C0 26 00 08 */	lfs f1, 8(r6)
/* 80124B54 00121AB4  D0 3A 02 E8 */	stfs f1, 0x2e8(r26)
/* 80124B58 00121AB8  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 80124B5C 00121ABC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80124B60 00121AC0  98 1A 03 28 */	stb r0, 0x328(r26)
/* 80124B64 00121AC4  C0 5A 02 E4 */	lfs f2, 0x2e4(r26)
/* 80124B68 00121AC8  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124B6C 00121ACC  C0 9A 02 E8 */	lfs f4, 0x2e8(r26)
/* 80124B70 00121AD0  EC C2 08 28 */	fsubs f6, f2, f1
/* 80124B74 00121AD4  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 80124B78 00121AD8  C0 5A 02 E0 */	lfs f2, 0x2e0(r26)
/* 80124B7C 00121ADC  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80124B80 00121AE0  EC A4 18 28 */	fsubs f5, f4, f3
/* 80124B84 00121AE4  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80124B88 00121AE8  EC 82 08 28 */	fsubs f4, f2, f1
/* 80124B8C 00121AEC  D0 C1 01 38 */	stfs f6, 0x138(r1)
/* 80124B90 00121AF0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80124B94 00121AF4  C0 23 00 08 */	lfs f1, 8(r3)
/* 80124B98 00121AF8  D0 81 01 34 */	stfs f4, 0x134(r1)
/* 80124B9C 00121AFC  D0 A1 01 3C */	stfs f5, 0x13c(r1)
/* 80124BA0 00121B00  D0 61 01 40 */	stfs f3, 0x140(r1)
/* 80124BA4 00121B04  D0 41 01 44 */	stfs f2, 0x144(r1)
/* 80124BA8 00121B08  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 80124BAC 00121B0C  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80124BB0 00121B10  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80124BB4 00121B14  D0 81 01 00 */	stfs f4, 0x100(r1)
/* 80124BB8 00121B18  38 63 00 04 */	addi r3, r3, 4
/* 80124BBC 00121B1C  D0 C1 01 04 */	stfs f6, 0x104(r1)
/* 80124BC0 00121B20  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 80124BC4 00121B24  48 00 CB 55 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80124BC8 00121B28  48 00 04 3C */	b lbl_80125004
lbl_80124BCC:
/* 80124BCC 00121B2C  83 FB 08 40 */	lwz r31, 0x840(r27)
/* 80124BD0 00121B30  3B A0 00 00 */	li r29, 0
/* 80124BD4 00121B34  C3 A2 98 10 */	lfs f29, lbl_805AB530@sda21(r2)
/* 80124BD8 00121B38  AB 9F 20 08 */	lha r28, 0x2008(r31)
/* 80124BDC 00121B3C  48 00 02 90 */	b lbl_80124E6C
lbl_80124BE0:
/* 80124BE0 00121B40  7F E3 FB 78 */	mr r3, r31
/* 80124BE4 00121B44  7F 84 E3 78 */	mr r4, r28
/* 80124BE8 00121B48  4B EE B1 2D */	bl __vc__11CObjectListFi
/* 80124BEC 00121B4C  7C 64 1B 78 */	mr r4, r3
/* 80124BF0 00121B50  38 61 00 44 */	addi r3, r1, 0x44
/* 80124BF4 00121B54  4B F8 6A ED */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FP7CEntity"
/* 80124BF8 00121B58  83 C3 00 04 */	lwz r30, 4(r3)
/* 80124BFC 00121B5C  28 1E 00 00 */	cmplwi r30, 0
/* 80124C00 00121B60  41 82 02 50 */	beq lbl_80124E50
/* 80124C04 00121B64  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80124C08 00121B68  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80124C0C 00121B6C  41 82 02 44 */	beq lbl_80124E50
/* 80124C10 00121B70  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80124C14 00121B74  7F C3 F3 78 */	mr r3, r30
/* 80124C18 00121B78  38 81 00 24 */	addi r4, r1, 0x24
/* 80124C1C 00121B7C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80124C20 00121B80  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80124C24 00121B84  48 0C A6 B1 */	bl GetInUse__18CScriptAiJumpPointCF9TUniqueId
/* 80124C28 00121B88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80124C2C 00121B8C  40 82 02 24 */	bne lbl_80124E50
/* 80124C30 00121B90  A0 7E 01 0E */	lhz r3, 0x10e(r30)
/* 80124C34 00121B94  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80124C38 00121B98  7C 03 00 40 */	cmplw r3, r0
/* 80124C3C 00121B9C  40 82 02 14 */	bne lbl_80124E50
/* 80124C40 00121BA0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80124C44 00121BA4  80 1A 00 04 */	lwz r0, 4(r26)
/* 80124C48 00121BA8  7C 03 00 00 */	cmpw r3, r0
/* 80124C4C 00121BAC  40 82 02 04 */	bne lbl_80124E50
/* 80124C50 00121BB0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80124C54 00121BB4  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80124C58 00121BB8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80124C5C 00121BBC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80124C60 00121BC0  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124C64 00121BC4  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80124C68 00121BC8  EC 63 00 28 */	fsubs f3, f3, f0
/* 80124C6C 00121BCC  C0 1A 00 60 */	lfs f0, 0x60(r26)
/* 80124C70 00121BD0  EC 24 01 32 */	fmuls f1, f4, f4
/* 80124C74 00121BD4  EF E2 00 28 */	fsubs f31, f2, f0
/* 80124C78 00121BD8  C0 02 98 38 */	lfs f0, lbl_805AB558@sda21(r2)
/* 80124C7C 00121BDC  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80124C80 00121BE0  EF DF 0F FA */	fmadds f30, f31, f31, f1
/* 80124C84 00121BE4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80124C88 00121BE8  40 81 01 C8 */	ble lbl_80124E50
/* 80124C8C 00121BEC  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 80124C90 00121BF0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80124C94 00121BF4  EC 25 01 32 */	fmuls f1, f5, f4
/* 80124C98 00121BF8  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80124C9C 00121BFC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80124CA0 00121C00  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80124CA4 00121C04  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 80124CA8 00121C08  D0 A1 00 F8 */	stfs f5, 0xf8(r1)
/* 80124CAC 00121C0C  EC 24 0F FA */	fmadds f1, f4, f31, f1
/* 80124CB0 00121C10  D0 81 00 FC */	stfs f4, 0xfc(r1)
/* 80124CB4 00121C14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124CB8 00121C18  40 81 01 98 */	ble lbl_80124E50
/* 80124CBC 00121C1C  A0 1E 01 0C */	lhz r0, 0x10c(r30)
/* 80124CC0 00121C20  7F 63 DB 78 */	mr r3, r27
/* 80124CC4 00121C24  38 81 00 1C */	addi r4, r1, 0x1c
/* 80124CC8 00121C28  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80124CCC 00121C2C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80124CD0 00121C30  4B F2 78 D5 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80124CD4 00121C34  7C 64 1B 78 */	mr r4, r3
/* 80124CD8 00121C38  38 61 00 34 */	addi r3, r1, 0x34
/* 80124CDC 00121C3C  4B F8 18 71 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80124CE0 00121C40  83 23 00 04 */	lwz r25, 4(r3)
/* 80124CE4 00121C44  28 19 00 00 */	cmplwi r25, 0
/* 80124CE8 00121C48  41 82 01 68 */	beq lbl_80124E50
/* 80124CEC 00121C4C  C1 9E 00 60 */	lfs f12, 0x60(r30)
/* 80124CF0 00121C50  C1 59 00 60 */	lfs f10, 0x60(r25)
/* 80124CF4 00121C54  C1 3A 00 60 */	lfs f9, 0x60(r26)
/* 80124CF8 00121C58  C0 1A 02 E8 */	lfs f0, 0x2e8(r26)
/* 80124CFC 00121C5C  EC 2A 60 28 */	fsubs f1, f10, f12
/* 80124D00 00121C60  C1 7E 00 50 */	lfs f11, 0x50(r30)
/* 80124D04 00121C64  EC 40 48 28 */	fsubs f2, f0, f9
/* 80124D08 00121C68  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 80124D0C 00121C6C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80124D10 00121C70  C0 D9 00 50 */	lfs f6, 0x50(r25)
/* 80124D14 00121C74  EC 22 00 72 */	fmuls f1, f2, f1
/* 80124D18 00121C78  C0 99 00 40 */	lfs f4, 0x40(r25)
/* 80124D1C 00121C7C  C1 1A 00 50 */	lfs f8, 0x50(r26)
/* 80124D20 00121C80  C0 7A 00 40 */	lfs f3, 0x40(r26)
/* 80124D24 00121C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124D28 00121C88  D0 A1 00 D0 */	stfs f5, 0xd0(r1)
/* 80124D2C 00121C8C  D1 61 00 D4 */	stfs f11, 0xd4(r1)
/* 80124D30 00121C90  D1 81 00 D8 */	stfs f12, 0xd8(r1)
/* 80124D34 00121C94  D0 81 00 DC */	stfs f4, 0xdc(r1)
/* 80124D38 00121C98  D0 C1 00 E0 */	stfs f6, 0xe0(r1)
/* 80124D3C 00121C9C  D1 41 00 E4 */	stfs f10, 0xe4(r1)
/* 80124D40 00121CA0  D0 61 00 E8 */	stfs f3, 0xe8(r1)
/* 80124D44 00121CA4  D1 01 00 EC */	stfs f8, 0xec(r1)
/* 80124D48 00121CA8  D1 21 00 F0 */	stfs f9, 0xf0(r1)
/* 80124D4C 00121CAC  40 81 01 04 */	ble lbl_80124E50
/* 80124D50 00121CB0  C0 1A 02 E4 */	lfs f0, 0x2e4(r26)
/* 80124D54 00121CB4  C0 3A 02 E0 */	lfs f1, 0x2e0(r26)
/* 80124D58 00121CB8  EC C0 30 28 */	fsubs f6, f0, f6
/* 80124D5C 00121CBC  C0 1A 02 E8 */	lfs f0, 0x2e8(r26)
/* 80124D60 00121CC0  C0 42 98 28 */	lfs f2, lbl_805AB548@sda21(r2)
/* 80124D64 00121CC4  EC E1 20 28 */	fsubs f7, f1, f4
/* 80124D68 00121CC8  EC 80 50 28 */	fsubs f4, f0, f10
/* 80124D6C 00121CCC  C0 22 98 14 */	lfs f1, lbl_805AB534@sda21(r2)
/* 80124D70 00121CD0  EC 06 01 B2 */	fmuls f0, f6, f6
/* 80124D74 00121CD4  EC 42 07 F2 */	fmuls f2, f2, f31
/* 80124D78 00121CD8  EC 21 01 32 */	fmuls f1, f1, f4
/* 80124D7C 00121CDC  EC 07 01 FA */	fmadds f0, f7, f7, f0
/* 80124D80 00121CE0  EF C2 F7 FA */	fmadds f30, f2, f31, f30
/* 80124D84 00121CE4  EC 04 01 3A */	fmadds f0, f4, f4, f0
/* 80124D88 00121CE8  EC 01 01 3A */	fmadds f0, f1, f4, f0
/* 80124D8C 00121CEC  EF DE 00 2A */	fadds f30, f30, f0
/* 80124D90 00121CF0  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80124D94 00121CF4  40 80 00 BC */	bge lbl_80124E50
/* 80124D98 00121CF8  D0 A1 00 B8 */	stfs f5, 0xb8(r1)
/* 80124D9C 00121CFC  7F 43 D3 78 */	mr r3, r26
/* 80124DA0 00121D00  D1 61 00 BC */	stfs f11, 0xbc(r1)
/* 80124DA4 00121D04  D1 81 00 C0 */	stfs f12, 0xc0(r1)
/* 80124DA8 00121D08  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 80124DAC 00121D0C  D1 01 00 C8 */	stfs f8, 0xc8(r1)
/* 80124DB0 00121D10  D1 21 00 CC */	stfs f9, 0xcc(r1)
/* 80124DB4 00121D14  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124DB8 00121D18  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124DBC 00121D1C  7D 89 03 A6 */	mtctr r12
/* 80124DC0 00121D20  4E 80 04 21 */	bctrl
/* 80124DC4 00121D24  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80124DC8 00121D28  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80124DCC 00121D2C  48 0A 1E FD */	bl PathExists__15CPathFindSearchCFRC9CVector3fRC9CVector3f
/* 80124DD0 00121D30  2C 03 00 00 */	cmpwi r3, 0
/* 80124DD4 00121D34  40 82 00 7C */	bne lbl_80124E50
/* 80124DD8 00121D38  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 80124DDC 00121D3C  7F 43 D3 78 */	mr r3, r26
/* 80124DE0 00121D40  C0 39 00 50 */	lfs f1, 0x50(r25)
/* 80124DE4 00121D44  3B 00 00 00 */	li r24, 0
/* 80124DE8 00121D48  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80124DEC 00121D4C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80124DF0 00121D50  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 80124DF4 00121D54  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 80124DF8 00121D58  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124DFC 00121D5C  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124E00 00121D60  7D 89 03 A6 */	mtctr r12
/* 80124E04 00121D64  4E 80 04 21 */	bctrl
/* 80124E08 00121D68  38 81 00 AC */	addi r4, r1, 0xac
/* 80124E0C 00121D6C  38 BA 02 E0 */	addi r5, r26, 0x2e0
/* 80124E10 00121D70  48 0A 1E B9 */	bl PathExists__15CPathFindSearchCFRC9CVector3fRC9CVector3f
/* 80124E14 00121D74  7C 03 00 D0 */	neg r0, r3
/* 80124E18 00121D78  7C 00 1B 78 */	or r0, r0, r3
/* 80124E1C 00121D7C  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80124E20 00121D80  41 82 00 0C */	beq lbl_80124E2C
/* 80124E24 00121D84  C0 02 98 18 */	lfs f0, lbl_805AB538@sda21(r2)
/* 80124E28 00121D88  EF DE 00 2A */	fadds f30, f30, f0
lbl_80124E2C:
/* 80124E2C 00121D8C  28 00 00 00 */	cmplwi r0, 0
/* 80124E30 00121D90  40 82 00 08 */	bne lbl_80124E38
/* 80124E34 00121D94  3B 00 00 01 */	li r24, 1
lbl_80124E38:
/* 80124E38 00121D98  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 80124E3C 00121D9C  40 80 00 14 */	bge lbl_80124E50
/* 80124E40 00121DA0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80124E44 00121DA4  FF A0 F0 90 */	fmr f29, f30
/* 80124E48 00121DA8  7F DD F3 78 */	mr r29, r30
/* 80124E4C 00121DAC  40 82 00 28 */	bne lbl_80124E74
lbl_80124E50:
/* 80124E50 00121DB0  2C 1C FF FF */	cmpwi r28, -1
/* 80124E54 00121DB4  41 82 00 14 */	beq lbl_80124E68
/* 80124E58 00121DB8  57 83 18 38 */	slwi r3, r28, 3
/* 80124E5C 00121DBC  38 03 00 08 */	addi r0, r3, 8
/* 80124E60 00121DC0  7F 9F 02 AE */	lhax r28, r31, r0
/* 80124E64 00121DC4  48 00 00 08 */	b lbl_80124E6C
lbl_80124E68:
/* 80124E68 00121DC8  3B 80 FF FF */	li r28, -1
lbl_80124E6C:
/* 80124E6C 00121DCC  2C 1C FF FF */	cmpwi r28, -1
/* 80124E70 00121DD0  40 82 FD 70 */	bne lbl_80124BE0
lbl_80124E74:
/* 80124E74 00121DD4  28 1D 00 00 */	cmplwi r29, 0
/* 80124E78 00121DD8  41 82 01 8C */	beq lbl_80125004
/* 80124E7C 00121DDC  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80124E80 00121DE0  7F 43 D3 78 */	mr r3, r26
/* 80124E84 00121DE4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80124E88 00121DE8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80124E8C 00121DEC  D0 1A 02 E0 */	stfs f0, 0x2e0(r26)
/* 80124E90 00121DF0  D0 3A 02 E4 */	stfs f1, 0x2e4(r26)
/* 80124E94 00121DF4  D0 5A 02 E8 */	stfs f2, 0x2e8(r26)
/* 80124E98 00121DF8  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80124E9C 00121DFC  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124EA0 00121E00  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124EA4 00121E04  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80124EA8 00121E08  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80124EAC 00121E0C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80124EB0 00121E10  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124EB4 00121E14  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124EB8 00121E18  7D 89 03 A6 */	mtctr r12
/* 80124EBC 00121E1C  4E 80 04 21 */	bctrl
/* 80124EC0 00121E20  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80124EC4 00121E24  38 BA 02 E0 */	addi r5, r26, 0x2e0
/* 80124EC8 00121E28  48 0A 2D A5 */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 80124ECC 00121E2C  2C 03 00 00 */	cmpwi r3, 0
/* 80124ED0 00121E30  40 82 01 34 */	bne lbl_80125004
/* 80124ED4 00121E34  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80124ED8 00121E38  7F 43 D3 78 */	mr r3, r26
/* 80124EDC 00121E3C  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80124EE0 00121E40  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80124EE4 00121E44  D0 1A 02 EC */	stfs f0, 0x2ec(r26)
/* 80124EE8 00121E48  D0 3A 02 F0 */	stfs f1, 0x2f0(r26)
/* 80124EEC 00121E4C  D0 5A 02 F4 */	stfs f2, 0x2f4(r26)
/* 80124EF0 00121E50  81 9A 00 00 */	lwz r12, 0(r26)
/* 80124EF4 00121E54  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 80124EF8 00121E58  7D 89 03 A6 */	mtctr r12
/* 80124EFC 00121E5C  4E 80 04 21 */	bctrl
/* 80124F00 00121E60  80 A3 00 C8 */	lwz r5, 0xc8(r3)
/* 80124F04 00121E64  80 03 00 04 */	lwz r0, 4(r3)
/* 80124F08 00121E68  38 85 00 01 */	addi r4, r5, 1
/* 80124F0C 00121E6C  7C 04 00 00 */	cmpw r4, r0
/* 80124F10 00121E70  40 80 00 14 */	bge lbl_80124F24
/* 80124F14 00121E74  1C 04 00 0C */	mulli r0, r4, 0xc
/* 80124F18 00121E78  7C C3 02 14 */	add r6, r3, r0
/* 80124F1C 00121E7C  38 C6 00 08 */	addi r6, r6, 8
/* 80124F20 00121E80  48 00 00 10 */	b lbl_80124F30
lbl_80124F24:
/* 80124F24 00121E84  1C 05 00 0C */	mulli r0, r5, 0xc
/* 80124F28 00121E88  7C C3 02 14 */	add r6, r3, r0
/* 80124F2C 00121E8C  38 C6 00 08 */	addi r6, r6, 8
lbl_80124F30:
/* 80124F30 00121E90  C0 06 00 00 */	lfs f0, 0(r6)
/* 80124F34 00121E94  38 A0 00 00 */	li r5, 0
/* 80124F38 00121E98  7F 63 DB 78 */	mr r3, r27
/* 80124F3C 00121E9C  38 81 00 14 */	addi r4, r1, 0x14
/* 80124F40 00121EA0  D0 1A 02 E0 */	stfs f0, 0x2e0(r26)
/* 80124F44 00121EA4  C0 06 00 04 */	lfs f0, 4(r6)
/* 80124F48 00121EA8  D0 1A 02 E4 */	stfs f0, 0x2e4(r26)
/* 80124F4C 00121EAC  C0 06 00 08 */	lfs f0, 8(r6)
/* 80124F50 00121EB0  D0 1A 02 E8 */	stfs f0, 0x2e8(r26)
/* 80124F54 00121EB4  88 1A 03 28 */	lbz r0, 0x328(r26)
/* 80124F58 00121EB8  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80124F5C 00121EBC  98 1A 03 28 */	stb r0, 0x328(r26)
/* 80124F60 00121EC0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80124F64 00121EC4  B0 1A 08 40 */	sth r0, 0x840(r26)
/* 80124F68 00121EC8  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 80124F6C 00121ECC  D0 1A 08 24 */	stfs f0, 0x824(r26)
/* 80124F70 00121ED0  A0 1D 01 0C */	lhz r0, 0x10c(r29)
/* 80124F74 00121ED4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80124F78 00121ED8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80124F7C 00121EDC  4B F2 76 29 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80124F80 00121EE0  7C 64 1B 78 */	mr r4, r3
/* 80124F84 00121EE4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80124F88 00121EE8  4B F8 15 C5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80124F8C 00121EEC  80 83 00 04 */	lwz r4, 4(r3)
/* 80124F90 00121EF0  28 04 00 00 */	cmplwi r4, 0
/* 80124F94 00121EF4  41 82 00 70 */	beq lbl_80125004
/* 80124F98 00121EF8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80124F9C 00121EFC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80124FA0 00121F00  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 80124FA4 00121F04  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80124FA8 00121F08  38 81 01 18 */	addi r4, r1, 0x118
/* 80124FAC 00121F0C  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80124FB0 00121F10  D0 3A 08 28 */	stfs f1, 0x828(r26)
/* 80124FB4 00121F14  D0 5A 08 2C */	stfs f2, 0x82c(r26)
/* 80124FB8 00121F18  D0 7A 08 30 */	stfs f3, 0x830(r26)
/* 80124FBC 00121F1C  C0 3A 02 E0 */	lfs f1, 0x2e0(r26)
/* 80124FC0 00121F20  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80124FC4 00121F24  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 80124FC8 00121F28  C0 43 00 04 */	lfs f2, 4(r3)
/* 80124FCC 00121F2C  C0 9A 02 E4 */	lfs f4, 0x2e4(r26)
/* 80124FD0 00121F30  C0 23 00 08 */	lfs f1, 8(r3)
/* 80124FD4 00121F34  D0 81 01 1C */	stfs f4, 0x11c(r1)
/* 80124FD8 00121F38  C0 9A 02 E8 */	lfs f4, 0x2e8(r26)
/* 80124FDC 00121F3C  D0 81 01 20 */	stfs f4, 0x120(r1)
/* 80124FE0 00121F40  D0 61 01 24 */	stfs f3, 0x124(r1)
/* 80124FE4 00121F44  D0 41 01 28 */	stfs f2, 0x128(r1)
/* 80124FE8 00121F48  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 80124FEC 00121F4C  D0 01 01 30 */	stfs f0, 0x130(r1)
/* 80124FF0 00121F50  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80124FF4 00121F54  38 63 00 04 */	addi r3, r3, 4
/* 80124FF8 00121F58  48 00 C7 21 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80124FFC 00121F5C  38 00 00 00 */	li r0, 0
/* 80125000 00121F60  90 1A 03 0C */	stw r0, 0x30c(r26)
lbl_80125004:
/* 80125004 00121F64  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80125008 00121F68  38 00 00 01 */	li r0, 1
/* 8012500C 00121F6C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80125010 00121F70  88 1A 06 37 */	lbz r0, 0x637(r26)
/* 80125014 00121F74  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80125018 00121F78  41 82 00 0C */	beq lbl_80125024
/* 8012501C 00121F7C  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80125020 00121F80  D0 1A 06 44 */	stfs f0, 0x644(r26)
lbl_80125024:
/* 80125024 00121F84  88 1A 06 39 */	lbz r0, 0x639(r26)
/* 80125028 00121F88  38 60 00 00 */	li r3, 0
/* 8012502C 00121F8C  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80125030 00121F90  38 60 00 01 */	li r3, 1
/* 80125034 00121F94  98 1A 06 39 */	stb r0, 0x639(r26)
/* 80125038 00121F98  88 1A 06 3A */	lbz r0, 0x63a(r26)
/* 8012503C 00121F9C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80125040 00121FA0  98 1A 06 3A */	stb r0, 0x63a(r26)
/* 80125044 00121FA4  48 00 02 74 */	b lbl_801252B8
lbl_80125048:
/* 80125048 00121FA8  48 0D 16 85 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8012504C 00121FAC  A0 7A 08 40 */	lhz r3, 0x840(r26)
/* 80125050 00121FB0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80125054 00121FB4  7C 03 00 40 */	cmplw r3, r0
/* 80125058 00121FB8  41 82 01 0C */	beq lbl_80125164
/* 8012505C 00121FBC  A0 1A 08 40 */	lhz r0, 0x840(r26)
/* 80125060 00121FC0  7F 63 DB 78 */	mr r3, r27
/* 80125064 00121FC4  38 81 00 0C */	addi r4, r1, 0xc
/* 80125068 00121FC8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8012506C 00121FCC  4B F2 75 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80125070 00121FD0  7C 64 1B 78 */	mr r4, r3
/* 80125074 00121FD4  38 61 00 3C */	addi r3, r1, 0x3c
/* 80125078 00121FD8  4B F8 66 69 */	bl "__ct__32TCastToPtr<18CScriptAiJumpPoint>FP7CEntity"
/* 8012507C 00121FDC  83 23 00 04 */	lwz r25, 4(r3)
/* 80125080 00121FE0  28 19 00 00 */	cmplwi r25, 0
/* 80125084 00121FE4  41 82 00 E0 */	beq lbl_80125164
/* 80125088 00121FE8  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 8012508C 00121FEC  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80125090 00121FF0  48 00 EE 1D */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 80125094 00121FF4  C1 BA 00 50 */	lfs f13, 0x50(r26)
/* 80125098 00121FF8  80 7A 00 64 */	lwz r3, 0x64(r26)
/* 8012509C 00121FFC  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 801250A0 00122000  C0 BA 00 40 */	lfs f5, 0x40(r26)
/* 801250A4 00122004  ED 8D 00 28 */	fsubs f12, f13, f0
/* 801250A8 00122008  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 801250AC 0012200C  C1 23 00 04 */	lfs f9, 4(r3)
/* 801250B0 00122010  EC 85 00 28 */	fsubs f4, f5, f0
/* 801250B4 00122014  C3 DA 00 60 */	lfs f30, 0x60(r26)
/* 801250B8 00122018  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 801250BC 0012201C  C0 E2 98 0C */	lfs f7, lbl_805AB52C@sda21(r2)
/* 801250C0 00122020  EC 0C 03 32 */	fmuls f0, f12, f12
/* 801250C4 00122024  ED 7E 10 28 */	fsubs f11, f30, f2
/* 801250C8 00122028  C0 62 98 08 */	lfs f3, lbl_805AB528@sda21(r2)
/* 801250CC 0012202C  EC 44 01 32 */	fmuls f2, f4, f4
/* 801250D0 00122030  C0 DA 07 A4 */	lfs f6, 0x7a4(r26)
/* 801250D4 00122034  EC E7 1F 7A */	fmadds f7, f7, f29, f3
/* 801250D8 00122038  C1 43 00 00 */	lfs f10, 0(r3)
/* 801250DC 0012203C  C1 03 00 08 */	lfs f8, 8(r3)
/* 801250E0 00122040  EC 6B 02 F2 */	fmuls f3, f11, f11
/* 801250E4 00122044  EC 02 00 2A */	fadds f0, f2, f0
/* 801250E8 00122048  D1 41 00 94 */	stfs f10, 0x94(r1)
/* 801250EC 0012204C  EC 47 02 72 */	fmuls f2, f7, f9
/* 801250F0 00122050  D1 21 00 98 */	stfs f9, 0x98(r1)
/* 801250F4 00122054  EC 63 00 2A */	fadds f3, f3, f0
/* 801250F8 00122058  D1 01 00 9C */	stfs f8, 0x9c(r1)
/* 801250FC 0012205C  EC 01 30 BA */	fmadds f0, f1, f2, f6
/* 80125100 00122060  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 80125104 00122064  EC 00 00 32 */	fmuls f0, f0, f0
/* 80125108 00122068  D1 A1 00 80 */	stfs f13, 0x80(r1)
/* 8012510C 0012206C  D3 C1 00 84 */	stfs f30, 0x84(r1)
/* 80125110 00122070  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80125114 00122074  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 80125118 00122078  D1 81 00 8C */	stfs f12, 0x8c(r1)
/* 8012511C 0012207C  D1 61 00 90 */	stfs f11, 0x90(r1)
/* 80125120 00122080  40 80 00 44 */	bge lbl_80125164
/* 80125124 00122084  38 00 00 01 */	li r0, 1
/* 80125128 00122088  3C 60 80 3E */	lis r3, lbl_803E0794@ha
/* 8012512C 0012208C  90 1A 03 2C */	stw r0, 0x32c(r26)
/* 80125130 00122090  38 E3 07 94 */	addi r7, r3, lbl_803E0794@l
/* 80125134 00122094  7F 43 D3 78 */	mr r3, r26
/* 80125138 00122098  7F 64 DB 78 */	mr r4, r27
/* 8012513C 0012209C  81 27 00 00 */	lwz r9, 0(r7)
/* 80125140 001220A0  38 C1 00 70 */	addi r6, r1, 0x70
/* 80125144 001220A4  81 07 00 04 */	lwz r8, 4(r7)
/* 80125148 001220A8  38 A0 00 0D */	li r5, 0xd
/* 8012514C 001220AC  80 07 00 08 */	lwz r0, 8(r7)
/* 80125150 001220B0  38 E0 00 00 */	li r7, 0
/* 80125154 001220B4  91 21 00 70 */	stw r9, 0x70(r1)
/* 80125158 001220B8  91 01 00 74 */	stw r8, 0x74(r1)
/* 8012515C 001220BC  90 01 00 78 */	stw r0, 0x78(r1)
/* 80125160 001220C0  4B F5 76 55 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
lbl_80125164:
/* 80125164 001220C4  7F 43 D3 78 */	mr r3, r26
/* 80125168 001220C8  7F 64 DB 78 */	mr r4, r27
/* 8012516C 001220CC  48 00 3A 65 */	bl AvoidActors__12CSpacePirateFR13CStateManager
/* 80125170 001220D0  88 1A 06 39 */	lbz r0, 0x639(r26)
/* 80125174 001220D4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80125178 001220D8  40 82 00 F0 */	bne lbl_80125268
/* 8012517C 001220DC  A0 1A 06 40 */	lhz r0, 0x640(r26)
/* 80125180 001220E0  7F 43 D3 78 */	mr r3, r26
/* 80125184 001220E4  7F 64 DB 78 */	mr r4, r27
/* 80125188 001220E8  38 A1 00 08 */	addi r5, r1, 8
/* 8012518C 001220EC  B0 01 00 08 */	sth r0, 8(r1)
/* 80125190 001220F0  4B F5 77 1D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80125194 001220F4  7C 78 1B 79 */	or. r24, r3, r3
/* 80125198 001220F8  41 82 00 D0 */	beq lbl_80125268
/* 8012519C 001220FC  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801251A0 00122100  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801251A4 00122104  48 00 ED 09 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801251A8 00122108  C0 42 98 0C */	lfs f2, lbl_805AB52C@sda21(r2)
/* 801251AC 0012210C  7F 03 C3 78 */	mr r3, r24
/* 801251B0 00122110  80 9A 00 64 */	lwz r4, 0x64(r26)
/* 801251B4 00122114  C0 02 98 08 */	lfs f0, lbl_805AB528@sda21(r2)
/* 801251B8 00122118  C0 64 00 04 */	lfs f3, 4(r4)
/* 801251BC 0012211C  EC 02 07 7A */	fmadds f0, f2, f29, f0
/* 801251C0 00122120  C0 84 00 00 */	lfs f4, 0(r4)
/* 801251C4 00122124  C0 44 00 08 */	lfs f2, 8(r4)
/* 801251C8 00122128  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 801251CC 0012212C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801251D0 00122130  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 801251D4 00122134  EC 01 00 32 */	fmuls f0, f1, f0
/* 801251D8 00122138  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801251DC 0012213C  D0 1A 07 54 */	stfs f0, 0x754(r26)
/* 801251E0 00122140  48 00 84 21 */	bl ShouldWallHang__17CScriptCoverPointCFv
/* 801251E4 00122144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801251E8 00122148  41 82 00 14 */	beq lbl_801251FC
/* 801251EC 0012214C  C0 3A 07 54 */	lfs f1, 0x754(r26)
/* 801251F0 00122150  C0 1A 07 A4 */	lfs f0, 0x7a4(r26)
/* 801251F4 00122154  EC 01 00 2A */	fadds f0, f1, f0
/* 801251F8 00122158  D0 1A 07 54 */	stfs f0, 0x754(r26)
lbl_801251FC:
/* 801251FC 0012215C  C0 FA 00 50 */	lfs f7, 0x50(r26)
/* 80125200 00122160  C0 18 00 50 */	lfs f0, 0x50(r24)
/* 80125204 00122164  C0 7A 00 40 */	lfs f3, 0x40(r26)
/* 80125208 00122168  EC C7 00 28 */	fsubs f6, f7, f0
/* 8012520C 0012216C  C0 18 00 40 */	lfs f0, 0x40(r24)
/* 80125210 00122170  C1 1A 00 60 */	lfs f8, 0x60(r26)
/* 80125214 00122174  EC 83 00 28 */	fsubs f4, f3, f0
/* 80125218 00122178  C0 18 00 60 */	lfs f0, 0x60(r24)
/* 8012521C 0012217C  EC 26 01 B2 */	fmuls f1, f6, f6
/* 80125220 00122180  EC A8 00 28 */	fsubs f5, f8, f0
/* 80125224 00122184  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80125228 00122188  EC 44 01 32 */	fmuls f2, f4, f4
/* 8012522C 0012218C  C0 1A 07 54 */	lfs f0, 0x754(r26)
/* 80125230 00122190  EC 65 01 72 */	fmuls f3, f5, f5
/* 80125234 00122194  D0 E1 00 50 */	stfs f7, 0x50(r1)
/* 80125238 00122198  EC 22 08 2A */	fadds f1, f2, f1
/* 8012523C 0012219C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80125240 001221A0  D1 01 00 54 */	stfs f8, 0x54(r1)
/* 80125244 001221A4  EC 23 08 2A */	fadds f1, f3, f1
/* 80125248 001221A8  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 8012524C 001221AC  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 80125250 001221B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125254 001221B4  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 80125258 001221B8  7C 60 00 26 */	mfcr r3
/* 8012525C 001221BC  88 1A 06 39 */	lbz r0, 0x639(r26)
/* 80125260 001221C0  50 60 2E F6 */	rlwimi r0, r3, 5, 0x1b, 0x1b
/* 80125264 001221C4  98 1A 06 39 */	stb r0, 0x639(r26)
lbl_80125268:
/* 80125268 001221C8  7F 43 D3 78 */	mr r3, r26
/* 8012526C 001221CC  7F 64 DB 78 */	mr r4, r27
/* 80125270 001221D0  48 00 3D 2D */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 80125274 001221D4  FC 20 E8 90 */	fmr f1, f29
/* 80125278 001221D8  7F 43 D3 78 */	mr r3, r26
/* 8012527C 001221DC  7F 64 DB 78 */	mr r4, r27
/* 80125280 001221E0  48 00 3C 61 */	bl UpdateHeldPosition__12CSpacePirateFR13CStateManagerf
/* 80125284 001221E4  48 00 00 34 */	b lbl_801252B8
lbl_80125288:
/* 80125288 001221E8  48 0D 14 45 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8012528C 001221EC  38 80 00 00 */	li r4, 0
/* 80125290 001221F0  38 00 00 01 */	li r0, 1
/* 80125294 001221F4  90 9A 03 2C */	stw r4, 0x32c(r26)
/* 80125298 001221F8  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 8012529C 001221FC  B0 7A 08 40 */	sth r3, 0x840(r26)
/* 801252A0 00122200  90 1A 03 0C */	stw r0, 0x30c(r26)
/* 801252A4 00122204  88 1A 06 39 */	lbz r0, 0x639(r26)
/* 801252A8 00122208  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 801252AC 0012220C  98 1A 06 39 */	stb r0, 0x639(r26)
/* 801252B0 00122210  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 801252B4 00122214  90 83 00 34 */	stw r4, 0x34(r3)
lbl_801252B8:
/* 801252B8 00122218  E3 E1 01 98 */	psq_l f31, 408(r1), 0, qr0
/* 801252BC 0012221C  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 801252C0 00122220  E3 C1 01 88 */	psq_l f30, 392(r1), 0, qr0
/* 801252C4 00122224  CB C1 01 80 */	lfd f30, 0x180(r1)
/* 801252C8 00122228  E3 A1 01 78 */	psq_l f29, 376(r1), 0, qr0
/* 801252CC 0012222C  CB A1 01 70 */	lfd f29, 0x170(r1)
/* 801252D0 00122230  BB 01 01 50 */	lmw r24, 0x150(r1)
/* 801252D4 00122234  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 801252D8 00122238  7C 08 03 A6 */	mtlr r0
/* 801252DC 0012223C  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 801252E0 00122240  4E 80 00 20 */	blr

.global LineOfSight__12CSpacePirateFR13CStateManagerf
LineOfSight__12CSpacePirateFR13CStateManagerf:
/* 801252E4 00122244  88 03 06 37 */	lbz r0, 0x637(r3)
/* 801252E8 00122248  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 801252EC 0012224C  7C 00 00 34 */	cntlzw r0, r0
/* 801252F0 00122250  54 03 D9 7E */	srwi r3, r0, 5
/* 801252F4 00122254  4E 80 00 20 */	blr

.global SpotPlayer__12CSpacePirateFR13CStateManagerf
SpotPlayer__12CSpacePirateFR13CStateManagerf:
/* 801252F8 00122258  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801252FC 0012225C  7C 08 02 A6 */	mflr r0
/* 80125300 00122260  90 01 00 34 */	stw r0, 0x34(r1)
/* 80125304 00122264  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80125308 00122268  7C 7F 1B 78 */	mr r31, r3
/* 8012530C 0012226C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80125310 00122270  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80125314 00122274  38 61 00 14 */	addi r3, r1, 0x14
/* 80125318 00122278  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8012531C 0012227C  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80125320 00122280  EC 81 00 28 */	fsubs f4, f1, f0
/* 80125324 00122284  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80125328 00122288  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8012532C 0012228C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80125330 00122290  EC 43 10 28 */	fsubs f2, f3, f2
/* 80125334 00122294  EC 01 00 28 */	fsubs f0, f1, f0
/* 80125338 00122298  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8012533C 0012229C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80125340 001222A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80125344 001222A4  48 1E F5 75 */	bl Magnitude__9CVector3fCFv
/* 80125348 001222A8  C0 BF 00 48 */	lfs f5, 0x48(r31)
/* 8012534C 001222AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80125350 001222B0  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80125354 001222B4  EC 00 01 72 */	fmuls f0, f0, f5
/* 80125358 001222B8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8012535C 001222BC  C0 FF 03 C4 */	lfs f7, 0x3c4(r31)
/* 80125360 001222C0  C0 DF 00 58 */	lfs f6, 0x58(r31)
/* 80125364 001222C4  EC 42 01 3A */	fmadds f2, f2, f4, f0
/* 80125368 001222C8  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 8012536C 001222CC  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80125370 001222D0  D0 81 00 08 */	stfs f4, 8(r1)
/* 80125374 001222D4  EC 23 11 BA */	fmadds f1, f3, f6, f2
/* 80125378 001222D8  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8012537C 001222DC  D0 C1 00 10 */	stfs f6, 0x10(r1)
/* 80125380 001222E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125384 001222E4  7C 00 00 26 */	mfcr r0
/* 80125388 001222E8  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8012538C 001222EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80125390 001222F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80125394 001222F4  7C 08 03 A6 */	mtlr r0
/* 80125398 001222F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8012539C 001222FC  4E 80 00 20 */	blr

.global Approach__12CSpacePirateFR13CStateManager9EStateMsgf
Approach__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801253A0 00122300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801253A4 00122304  7C 08 02 A6 */	mflr r0
/* 801253A8 00122308  2C 05 00 01 */	cmpwi r5, 1
/* 801253AC 0012230C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801253B0 00122310  41 82 00 34 */	beq lbl_801253E4
/* 801253B4 00122314  40 80 00 34 */	bge lbl_801253E8
/* 801253B8 00122318  2C 05 00 00 */	cmpwi r5, 0
/* 801253BC 0012231C  40 80 00 0C */	bge lbl_801253C8
/* 801253C0 00122320  48 00 00 28 */	b lbl_801253E8
/* 801253C4 00122324  48 00 00 24 */	b lbl_801253E8
lbl_801253C8:
/* 801253C8 00122328  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801253CC 0012232C  38 00 00 00 */	li r0, 0
/* 801253D0 00122330  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 801253D4 00122334  90 04 00 34 */	stw r0, 0x34(r4)
/* 801253D8 00122338  90 03 03 0C */	stw r0, 0x30c(r3)
/* 801253DC 0012233C  D0 03 06 44 */	stfs f0, 0x644(r3)
/* 801253E0 00122340  48 00 00 08 */	b lbl_801253E8
lbl_801253E4:
/* 801253E4 00122344  48 00 37 ED */	bl AvoidActors__12CSpacePirateFR13CStateManager
lbl_801253E8:
/* 801253E8 00122348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801253EC 0012234C  7C 08 03 A6 */	mtlr r0
/* 801253F0 00122350  38 21 00 10 */	addi r1, r1, 0x10
/* 801253F4 00122354  4E 80 00 20 */	blr

.global Flee__12CSpacePirateFR13CStateManager9EStateMsgf
Flee__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801253F8 00122358  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801253FC 0012235C  7C 08 02 A6 */	mflr r0
/* 80125400 00122360  2C 05 00 01 */	cmpwi r5, 1
/* 80125404 00122364  90 01 00 54 */	stw r0, 0x54(r1)
/* 80125408 00122368  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8012540C 0012236C  7C 7F 1B 78 */	mr r31, r3
/* 80125410 00122370  41 82 00 DC */	beq lbl_801254EC
/* 80125414 00122374  40 80 00 DC */	bge lbl_801254F0
/* 80125418 00122378  2C 05 00 00 */	cmpwi r5, 0
/* 8012541C 0012237C  40 80 00 0C */	bge lbl_80125428
/* 80125420 00122380  48 00 00 D0 */	b lbl_801254F0
/* 80125424 00122384  48 00 00 CC */	b lbl_801254F0
lbl_80125428:
/* 80125428 00122388  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 8012542C 0012238C  38 00 00 00 */	li r0, 0
/* 80125430 00122390  38 61 00 08 */	addi r3, r1, 8
/* 80125434 00122394  90 05 00 34 */	stw r0, 0x34(r5)
/* 80125438 00122398  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8012543C 0012239C  38 81 00 38 */	addi r4, r1, 0x38
/* 80125440 001223A0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80125444 001223A4  C0 05 00 50 */	lfs f0, 0x50(r5)
/* 80125448 001223A8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8012544C 001223AC  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80125450 001223B0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80125454 001223B4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80125458 001223B8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 8012545C 001223BC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80125460 001223C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80125464 001223C4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80125468 001223C8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8012546C 001223CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80125470 001223D0  48 1E F3 E1 */	bl AsNormalized__9CVector3fCFv
/* 80125474 001223D4  C0 82 98 3C */	lfs f4, lbl_805AB55C@sda21(r2)
/* 80125478 001223D8  7F E3 FB 78 */	mr r3, r31
/* 8012547C 001223DC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80125480 001223E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 80125484 001223E4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80125488 001223E8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8012548C 001223EC  EC A4 00 B2 */	fmuls f5, f4, f2
/* 80125490 001223F0  C1 1F 00 60 */	lfs f8, 0x60(r31)
/* 80125494 001223F4  EC 64 00 72 */	fmuls f3, f4, f1
/* 80125498 001223F8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8012549C 001223FC  EC 44 00 32 */	fmuls f2, f4, f0
/* 801254A0 00122400  C0 FF 00 50 */	lfs f7, 0x50(r31)
/* 801254A4 00122404  EC 88 28 2A */	fadds f4, f8, f5
/* 801254A8 00122408  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801254AC 0012240C  EC C7 10 2A */	fadds f6, f7, f2
/* 801254B0 00122410  EC 01 18 2A */	fadds f0, f1, f3
/* 801254B4 00122414  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801254B8 00122418  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801254BC 0012241C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801254C0 00122420  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 801254C4 00122424  D1 01 00 28 */	stfs f8, 0x28(r1)
/* 801254C8 00122428  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801254CC 0012242C  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 801254D0 00122430  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 801254D4 00122434  4B F5 76 89 */	bl SetDestPos__10CPatternedFRC9CVector3f
/* 801254D8 00122438  38 00 00 00 */	li r0, 0
/* 801254DC 0012243C  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 801254E0 00122440  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 801254E4 00122444  D0 1F 06 44 */	stfs f0, 0x644(r31)
/* 801254E8 00122448  48 00 00 08 */	b lbl_801254F0
lbl_801254EC:
/* 801254EC 0012244C  48 00 36 E5 */	bl AvoidActors__12CSpacePirateFR13CStateManager
lbl_801254F0:
/* 801254F0 00122450  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801254F4 00122454  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801254F8 00122458  7C 08 03 A6 */	mtlr r0
/* 801254FC 0012245C  38 21 00 50 */	addi r1, r1, 0x50
/* 80125500 00122460  4E 80 00 20 */	blr

.global Skid__12CSpacePirateFR13CStateManager9EStateMsgf
Skid__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80125504 00122464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80125508 00122468  7C 08 02 A6 */	mflr r0
/* 8012550C 0012246C  2C 05 00 01 */	cmpwi r5, 1
/* 80125510 00122470  90 01 00 24 */	stw r0, 0x24(r1)
/* 80125514 00122474  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80125518 00122478  41 82 00 3C */	beq lbl_80125554
/* 8012551C 0012247C  40 80 00 10 */	bge lbl_8012552C
/* 80125520 00122480  2C 05 00 00 */	cmpwi r5, 0
/* 80125524 00122484  40 80 00 14 */	bge lbl_80125538
/* 80125528 00122488  48 00 00 C0 */	b lbl_801255E8
lbl_8012552C:
/* 8012552C 0012248C  2C 05 00 03 */	cmpwi r5, 3
/* 80125530 00122490  40 80 00 B8 */	bge lbl_801255E8
/* 80125534 00122494  48 00 00 A4 */	b lbl_801255D8
lbl_80125538:
/* 80125538 00122498  C0 02 98 28 */	lfs f0, lbl_805AB548@sda21(r2)
/* 8012553C 0012249C  38 80 00 01 */	li r4, 1
/* 80125540 001224A0  D0 03 08 38 */	stfs f0, 0x838(r3)
/* 80125544 001224A4  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80125548 001224A8  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 8012554C 001224AC  98 03 06 36 */	stb r0, 0x636(r3)
/* 80125550 001224B0  48 00 00 98 */	b lbl_801255E8
lbl_80125554:
/* 80125554 001224B4  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 80125558 001224B8  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 8012555C 001224BC  2C 00 00 03 */	cmpwi r0, 3
/* 80125560 001224C0  41 82 00 88 */	beq lbl_801255E8
/* 80125564 001224C4  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80125568 001224C8  80 E3 08 34 */	lwz r7, 0x834(r3)
/* 8012556C 001224CC  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80125570 001224D0  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 80125574 001224D4  90 01 00 08 */	stw r0, 8(r1)
/* 80125578 001224D8  38 A3 A9 E4 */	addi r5, r3, lbl_803DA9E4@l
/* 8012557C 001224DC  38 60 00 01 */	li r3, 1
/* 80125580 001224E0  38 00 00 00 */	li r0, 0
/* 80125584 001224E4  3B E6 00 04 */	addi r31, r6, 4
/* 80125588 001224E8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012558C 001224EC  7F E3 FB 78 */	mr r3, r31
/* 80125590 001224F0  38 80 00 01 */	li r4, 1
/* 80125594 001224F4  90 A1 00 08 */	stw r5, 8(r1)
/* 80125598 001224F8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8012559C 001224FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801255A0 00122500  48 00 BE 99 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801255A4 00122504  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801255A8 00122508  3C 60 80 3E */	lis r3, lbl_803DA9E4@ha
/* 801255AC 0012250C  38 83 A9 E4 */	addi r4, r3, lbl_803DA9E4@l
/* 801255B0 00122510  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801255B4 00122514  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801255B8 00122518  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801255BC 0012251C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801255C0 00122520  90 81 00 08 */	stw r4, 8(r1)
/* 801255C4 00122524  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801255C8 00122528  90 BF 00 CC */	stw r5, 0xcc(r31)
/* 801255CC 0012252C  90 7F 00 D0 */	stw r3, 0xd0(r31)
/* 801255D0 00122530  90 01 00 08 */	stw r0, 8(r1)
/* 801255D4 00122534  48 00 00 14 */	b lbl_801255E8
lbl_801255D8:
/* 801255D8 00122538  88 03 06 36 */	lbz r0, 0x636(r3)
/* 801255DC 0012253C  38 80 00 00 */	li r4, 0
/* 801255E0 00122540  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 801255E4 00122544  98 03 06 36 */	stb r0, 0x636(r3)
lbl_801255E8:
/* 801255E8 00122548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801255EC 0012254C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801255F0 00122550  7C 08 03 A6 */	mtlr r0
/* 801255F4 00122554  38 21 00 20 */	addi r1, r1, 0x20
/* 801255F8 00122558  4E 80 00 20 */	blr

.global ShouldStrafe__12CSpacePirateFR13CStateManagerf
ShouldStrafe__12CSpacePirateFR13CStateManagerf:
/* 801255FC 0012255C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80125600 00122560  7C 08 02 A6 */	mflr r0
/* 80125604 00122564  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80125608 00122568  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8012560C 0012256C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 80125610 00122570  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80125614 00122574  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 80125618 00122578  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 8012561C 0012257C  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, qr0
/* 80125620 00122580  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80125624 00122584  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80125628 00122588  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8012562C 0012258C  93 81 00 90 */	stw r28, 0x90(r1)
/* 80125630 00122590  38 00 FF FF */	li r0, -1
/* 80125634 00122594  7C 7C 1B 78 */	mr r28, r3
/* 80125638 00122598  90 03 08 34 */	stw r0, 0x834(r3)
/* 8012563C 0012259C  7C 9D 23 78 */	mr r29, r4
/* 80125640 001225A0  3B E0 00 00 */	li r31, 0
/* 80125644 001225A4  3B C0 00 00 */	li r30, 0
/* 80125648 001225A8  88 03 06 34 */	lbz r0, 0x634(r3)
/* 8012564C 001225AC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80125650 001225B0  40 82 02 14 */	bne lbl_80125864
/* 80125654 001225B4  C3 BC 00 60 */	lfs f29, 0x60(r28)
/* 80125658 001225B8  7F 84 E3 78 */	mr r4, r28
/* 8012565C 001225BC  C3 DC 00 50 */	lfs f30, 0x50(r28)
/* 80125660 001225C0  7F A5 EB 78 */	mr r5, r29
/* 80125664 001225C4  C3 FC 00 40 */	lfs f31, 0x40(r28)
/* 80125668 001225C8  38 61 00 68 */	addi r3, r1, 0x68
/* 8012566C 001225CC  48 00 2D D9 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125670 001225D0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80125674 001225D4  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80125678 001225D8  EC 60 F0 28 */	fsubs f3, f0, f30
/* 8012567C 001225DC  C0 BC 00 48 */	lfs f5, 0x48(r28)
/* 80125680 001225E0  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80125684 001225E4  EC 81 F8 28 */	fsubs f4, f1, f31
/* 80125688 001225E8  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 8012568C 001225EC  EC 23 01 72 */	fmuls f1, f3, f5
/* 80125690 001225F0  C0 DC 00 58 */	lfs f6, 0x58(r28)
/* 80125694 001225F4  EC 60 E8 28 */	fsubs f3, f0, f29
/* 80125698 001225F8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012569C 001225FC  EC 24 08 BA */	fmadds f1, f4, f2, f1
/* 801256A0 00122600  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801256A4 00122604  D0 A1 00 60 */	stfs f5, 0x60(r1)
/* 801256A8 00122608  EC 23 09 BA */	fmadds f1, f3, f6, f1
/* 801256AC 0012260C  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 801256B0 00122610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801256B4 00122614  40 81 01 B0 */	ble lbl_80125864
/* 801256B8 00122618  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 801256BC 0012261C  C0 22 98 40 */	lfs f1, lbl_805AB560@sda21(r2)
/* 801256C0 00122620  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801256C4 00122624  41 80 00 10 */	blt lbl_801256D4
/* 801256C8 00122628  C0 1C 08 50 */	lfs f0, 0x850(r28)
/* 801256CC 0012262C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801256D0 00122630  40 80 00 E0 */	bge lbl_801257B0
lbl_801256D4:
/* 801256D4 00122634  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 801256D8 00122638  C0 1C 08 38 */	lfs f0, 0x838(r28)
/* 801256DC 0012263C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801256E0 00122640  40 82 00 D0 */	bne lbl_801257B0
/* 801256E4 00122644  7F 84 E3 78 */	mr r4, r28
/* 801256E8 00122648  38 61 00 74 */	addi r3, r1, 0x74
/* 801256EC 0012264C  4B FF 52 41 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801256F0 00122650  38 61 00 50 */	addi r3, r1, 0x50
/* 801256F4 00122654  38 81 00 74 */	addi r4, r1, 0x74
/* 801256F8 00122658  48 21 1F 15 */	bl GetCenterPoint__6CAABoxCFv
/* 801256FC 0012265C  C3 A1 00 50 */	lfs f29, 0x50(r1)
/* 80125700 00122660  7F 84 E3 78 */	mr r4, r28
/* 80125704 00122664  C3 C1 00 54 */	lfs f30, 0x54(r1)
/* 80125708 00122668  7F A5 EB 78 */	mr r5, r29
/* 8012570C 0012266C  C3 E1 00 58 */	lfs f31, 0x58(r1)
/* 80125710 00122670  38 61 00 2C */	addi r3, r1, 0x2c
/* 80125714 00122674  48 00 2D 31 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125718 00122678  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8012571C 0012267C  38 61 00 44 */	addi r3, r1, 0x44
/* 80125720 00122680  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80125724 00122684  38 81 00 38 */	addi r4, r1, 0x38
/* 80125728 00122688  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8012572C 0012268C  EC 42 E8 28 */	fsubs f2, f2, f29
/* 80125730 00122690  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80125734 00122694  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80125738 00122698  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8012573C 0012269C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80125740 001226A0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80125744 001226A4  48 1E F1 0D */	bl AsNormalized__9CVector3fCFv
/* 80125748 001226A8  C0 9C 00 48 */	lfs f4, 0x48(r28)
/* 8012574C 001226AC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80125750 001226B0  C0 7C 00 38 */	lfs f3, 0x38(r28)
/* 80125754 001226B4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80125758 001226B8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8012575C 001226BC  C0 BC 00 58 */	lfs f5, 0x58(r28)
/* 80125760 001226C0  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80125764 001226C4  EC 21 00 FA */	fmadds f1, f1, f3, f0
/* 80125768 001226C8  C0 02 98 00 */	lfs f0, lbl_805AB520@sda21(r2)
/* 8012576C 001226CC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80125770 001226D0  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 80125774 001226D4  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80125778 001226D8  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 8012577C 001226DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125780 001226E0  40 81 00 30 */	ble lbl_801257B0
/* 80125784 001226E4  C0 22 98 20 */	lfs f1, lbl_805AB540@sda21(r2)
/* 80125788 001226E8  7F 83 E3 78 */	mr r3, r28
/* 8012578C 001226EC  7F A4 EB 78 */	mr r4, r29
/* 80125790 001226F0  48 00 2F 4D */	bl GetStrafeDir__12CSpacePirateCFR13CStateManagerf
/* 80125794 001226F4  90 7C 08 34 */	stw r3, 0x834(r28)
/* 80125798 001226F8  80 1C 08 34 */	lwz r0, 0x834(r28)
/* 8012579C 001226FC  2C 00 FF FF */	cmpwi r0, -1
/* 801257A0 00122700  41 82 00 0C */	beq lbl_801257AC
/* 801257A4 00122704  3B E0 00 01 */	li r31, 1
/* 801257A8 00122708  48 00 00 08 */	b lbl_801257B0
lbl_801257AC:
/* 801257AC 0012270C  3B C0 00 01 */	li r30, 1
lbl_801257B0:
/* 801257B0 00122710  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801257B4 00122714  40 82 00 B0 */	bne lbl_80125864
/* 801257B8 00122718  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801257BC 0012271C  40 82 00 A8 */	bne lbl_80125864
/* 801257C0 00122720  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 801257C4 00122724  A0 7C 07 C0 */	lhz r3, 0x7c0(r28)
/* 801257C8 00122728  A0 04 00 08 */	lhz r0, 8(r4)
/* 801257CC 0012272C  7C 03 00 40 */	cmplw r3, r0
/* 801257D0 00122730  40 82 00 94 */	bne lbl_80125864
/* 801257D4 00122734  C0 3C 07 AC */	lfs f1, 0x7ac(r28)
/* 801257D8 00122738  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 801257DC 0012273C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801257E0 00122740  40 81 00 84 */	ble lbl_80125864
/* 801257E4 00122744  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801257E8 00122748  38 61 00 14 */	addi r3, r1, 0x14
/* 801257EC 0012274C  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 801257F0 00122750  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801257F4 00122754  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 801257F8 00122758  EC 25 00 28 */	fsubs f1, f5, f0
/* 801257FC 0012275C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80125800 00122760  C0 7C 00 40 */	lfs f3, 0x40(r28)
/* 80125804 00122764  EC 44 10 28 */	fsubs f2, f4, f2
/* 80125808 00122768  D0 01 00 08 */	stfs f0, 8(r1)
/* 8012580C 0012276C  EC 00 18 28 */	fsubs f0, f0, f3
/* 80125810 00122770  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 80125814 00122774  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 80125818 00122778  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8012581C 0012277C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80125820 00122780  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80125824 00122784  48 1E F0 95 */	bl Magnitude__9CVector3fCFv
/* 80125828 00122788  C0 02 98 3C */	lfs f0, lbl_805AB55C@sda21(r2)
/* 8012582C 0012278C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125830 00122790  40 80 00 34 */	bge lbl_80125864
/* 80125834 00122794  80 1C 08 34 */	lwz r0, 0x834(r28)
/* 80125838 00122798  2C 00 FF FF */	cmpwi r0, -1
/* 8012583C 0012279C  40 82 00 28 */	bne lbl_80125864
/* 80125840 001227A0  C0 22 98 1C */	lfs f1, lbl_805AB53C@sda21(r2)
/* 80125844 001227A4  7F 83 E3 78 */	mr r3, r28
/* 80125848 001227A8  7F A4 EB 78 */	mr r4, r29
/* 8012584C 001227AC  48 00 2E 91 */	bl GetStrafeDir__12CSpacePirateCFR13CStateManagerf
/* 80125850 001227B0  90 7C 08 34 */	stw r3, 0x834(r28)
/* 80125854 001227B4  80 1C 08 34 */	lwz r0, 0x834(r28)
/* 80125858 001227B8  2C 00 FF FF */	cmpwi r0, -1
/* 8012585C 001227BC  41 82 00 08 */	beq lbl_80125864
/* 80125860 001227C0  3B E0 00 01 */	li r31, 1
lbl_80125864:
/* 80125864 001227C4  7F E3 FB 78 */	mr r3, r31
/* 80125868 001227C8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8012586C 001227CC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80125870 001227D0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80125874 001227D4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80125878 001227D8  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, qr0
/* 8012587C 001227DC  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80125880 001227E0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80125884 001227E4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80125888 001227E8  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8012588C 001227EC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80125890 001227F0  83 81 00 90 */	lwz r28, 0x90(r1)
/* 80125894 001227F4  7C 08 03 A6 */	mtlr r0
/* 80125898 001227F8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8012589C 001227FC  4E 80 00 20 */	blr

.global Crouch__12CSpacePirateFR13CStateManager9EStateMsgf
Crouch__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801258A0 00122800  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801258A4 00122804  7C 08 02 A6 */	mflr r0
/* 801258A8 00122808  90 01 00 34 */	stw r0, 0x34(r1)
/* 801258AC 0012280C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801258B0 00122810  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801258B4 00122814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801258B8 00122818  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801258BC 0012281C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801258C0 00122820  7C BF 2B 78 */	mr r31, r5
/* 801258C4 00122824  FF E0 08 90 */	fmr f31, f1
/* 801258C8 00122828  2C 1F 00 01 */	cmpwi r31, 1
/* 801258CC 0012282C  7C 7D 1B 78 */	mr r29, r3
/* 801258D0 00122830  7C 9E 23 78 */	mr r30, r4
/* 801258D4 00122834  41 82 00 90 */	beq lbl_80125964
/* 801258D8 00122838  40 80 00 AC */	bge lbl_80125984
/* 801258DC 0012283C  2C 1F 00 00 */	cmpwi r31, 0
/* 801258E0 00122840  40 80 00 0C */	bge lbl_801258EC
/* 801258E4 00122844  48 00 00 A0 */	b lbl_80125984
/* 801258E8 00122848  48 00 00 9C */	b lbl_80125984
lbl_801258EC:
/* 801258EC 0012284C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801258F0 00122850  38 80 00 00 */	li r4, 0
/* 801258F4 00122854  48 01 50 E5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801258F8 00122858  A0 1D 06 40 */	lhz r0, 0x640(r29)
/* 801258FC 0012285C  7F A3 EB 78 */	mr r3, r29
/* 80125900 00122860  7F C4 F3 78 */	mr r4, r30
/* 80125904 00122864  38 A1 00 08 */	addi r5, r1, 8
/* 80125908 00122868  B0 01 00 08 */	sth r0, 8(r1)
/* 8012590C 0012286C  4B F5 6F A1 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80125910 00122870  28 03 00 00 */	cmplwi r3, 0
/* 80125914 00122874  41 82 00 1C */	beq lbl_80125930
/* 80125918 00122878  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 8012591C 0012287C  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 80125920 00122880  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80125924 00122884  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 80125928 00122888  D0 3D 06 4C */	stfs f1, 0x64c(r29)
/* 8012592C 0012288C  D0 5D 06 50 */	stfs f2, 0x650(r29)
lbl_80125930:
/* 80125930 00122890  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80125934 00122894  7F A3 EB 78 */	mr r3, r29
/* 80125938 00122898  FC 20 F8 90 */	fmr f1, f31
/* 8012593C 0012289C  7F C4 F3 78 */	mr r4, r30
/* 80125940 001228A0  D0 1D 06 44 */	stfs f0, 0x644(r29)
/* 80125944 001228A4  7F E5 FB 78 */	mr r5, r31
/* 80125948 001228A8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8012594C 001228AC  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80125950 001228B0  7D 89 03 A6 */	mtctr r12
/* 80125954 001228B4  4E 80 04 21 */	bctrl
/* 80125958 001228B8  38 00 FF FF */	li r0, -1
/* 8012595C 001228BC  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 80125960 001228C0  48 00 00 24 */	b lbl_80125984
lbl_80125964:
/* 80125964 001228C4  80 BD 04 50 */	lwz r5, 0x450(r29)
/* 80125968 001228C8  C0 1D 06 48 */	lfs f0, 0x648(r29)
/* 8012596C 001228CC  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80125970 001228D0  C0 1D 06 4C */	lfs f0, 0x64c(r29)
/* 80125974 001228D4  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80125978 001228D8  C0 1D 06 50 */	lfs f0, 0x650(r29)
/* 8012597C 001228DC  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80125980 001228E0  48 00 36 1D */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
lbl_80125984:
/* 80125984 001228E4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80125988 001228E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012598C 001228EC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80125990 001228F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80125994 001228F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80125998 001228F8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8012599C 001228FC  7C 08 03 A6 */	mtlr r0
/* 801259A0 00122900  38 21 00 30 */	addi r1, r1, 0x30
/* 801259A4 00122904  4E 80 00 20 */	blr

.global ShouldCrouch__12CSpacePirateFR13CStateManagerf
ShouldCrouch__12CSpacePirateFR13CStateManagerf:
/* 801259A8 00122908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801259AC 0012290C  7C 08 02 A6 */	mflr r0
/* 801259B0 00122910  90 01 00 24 */	stw r0, 0x24(r1)
/* 801259B4 00122914  38 A1 00 08 */	addi r5, r1, 8
/* 801259B8 00122918  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801259BC 0012291C  3B E0 00 00 */	li r31, 0
/* 801259C0 00122920  A0 03 06 40 */	lhz r0, 0x640(r3)
/* 801259C4 00122924  B0 01 00 08 */	sth r0, 8(r1)
/* 801259C8 00122928  4B F5 6E E5 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801259CC 0012292C  28 03 00 00 */	cmplwi r3, 0
/* 801259D0 00122930  41 82 00 0C */	beq lbl_801259DC
/* 801259D4 00122934  48 00 7C 45 */	bl ShouldCrouch__17CScriptCoverPointCFv
/* 801259D8 00122938  7C 7F 1B 78 */	mr r31, r3
lbl_801259DC:
/* 801259DC 0012293C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801259E0 00122940  7F E3 FB 78 */	mr r3, r31
/* 801259E4 00122944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801259E8 00122948  7C 08 03 A6 */	mtlr r0
/* 801259EC 0012294C  38 21 00 20 */	addi r1, r1, 0x20
/* 801259F0 00122950  4E 80 00 20 */	blr

.global DoubleSnap__12CSpacePirateFR13CStateManager9EStateMsgf
DoubleSnap__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801259F4 00122954  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801259F8 00122958  7C 08 02 A6 */	mflr r0
/* 801259FC 0012295C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80125A00 00122960  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80125A04 00122964  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80125A08 00122968  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80125A0C 0012296C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 80125A10 00122970  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80125A14 00122974  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 80125A18 00122978  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80125A1C 0012297C  F3 81 00 78 */	psq_st f28, 120(r1), 0, qr0
/* 80125A20 00122980  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80125A24 00122984  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80125A28 00122988  FF E0 08 90 */	fmr f31, f1
/* 80125A2C 0012298C  2C 05 00 01 */	cmpwi r5, 1
/* 80125A30 00122990  7C 7E 1B 78 */	mr r30, r3
/* 80125A34 00122994  7C 9F 23 78 */	mr r31, r4
/* 80125A38 00122998  41 82 00 EC */	beq lbl_80125B24
/* 80125A3C 0012299C  40 80 00 10 */	bge lbl_80125A4C
/* 80125A40 001229A0  2C 05 00 00 */	cmpwi r5, 0
/* 80125A44 001229A4  40 80 00 14 */	bge lbl_80125A58
/* 80125A48 001229A8  48 00 03 08 */	b lbl_80125D50
lbl_80125A4C:
/* 80125A4C 001229AC  2C 05 00 03 */	cmpwi r5, 3
/* 80125A50 001229B0  40 80 03 00 */	bge lbl_80125D50
/* 80125A54 001229B4  48 00 02 DC */	b lbl_80125D30
lbl_80125A58:
/* 80125A58 001229B8  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 80125A5C 001229BC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80125A60 001229C0  40 82 00 0C */	bne lbl_80125A6C
/* 80125A64 001229C4  38 00 00 01 */	li r0, 1
/* 80125A68 001229C8  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_80125A6C:
/* 80125A6C 001229CC  7F C4 F3 78 */	mr r4, r30
/* 80125A70 001229D0  7F E5 FB 78 */	mr r5, r31
/* 80125A74 001229D4  38 61 00 48 */	addi r3, r1, 0x48
/* 80125A78 001229D8  48 00 29 CD */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125A7C 001229DC  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80125A80 001229E0  3C 60 80 57 */	lis r3, lbl_8056F85C@ha
/* 80125A84 001229E4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80125A88 001229E8  38 C0 00 01 */	li r6, 1
/* 80125A8C 001229EC  D0 3E 02 E0 */	stfs f1, 0x2e0(r30)
/* 80125A90 001229F0  38 A0 00 00 */	li r5, 0
/* 80125A94 001229F4  38 63 F8 5C */	addi r3, r3, lbl_8056F85C@l
/* 80125A98 001229F8  38 81 00 08 */	addi r4, r1, 8
/* 80125A9C 001229FC  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80125AA0 00122A00  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 80125AA4 00122A04  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80125AA8 00122A08  D0 3E 02 E8 */	stfs f1, 0x2e8(r30)
/* 80125AAC 00122A0C  C0 5E 02 E0 */	lfs f2, 0x2e0(r30)
/* 80125AB0 00122A10  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80125AB4 00122A14  C0 BE 02 E4 */	lfs f5, 0x2e4(r30)
/* 80125AB8 00122A18  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80125ABC 00122A1C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80125AC0 00122A20  C0 7E 02 E8 */	lfs f3, 0x2e8(r30)
/* 80125AC4 00122A24  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80125AC8 00122A28  EC 85 20 28 */	fsubs f4, f5, f4
/* 80125ACC 00122A2C  D0 3E 06 48 */	stfs f1, 0x648(r30)
/* 80125AD0 00122A30  EC 23 10 28 */	fsubs f1, f3, f2
/* 80125AD4 00122A34  D0 9E 06 4C */	stfs f4, 0x64c(r30)
/* 80125AD8 00122A38  D0 3E 06 50 */	stfs f1, 0x650(r30)
/* 80125ADC 00122A3C  D0 1E 06 44 */	stfs f0, 0x644(r30)
/* 80125AE0 00122A40  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80125AE4 00122A44  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 80125AE8 00122A48  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80125AEC 00122A4C  90 DE 08 3C */	stw r6, 0x83c(r30)
/* 80125AF0 00122A50  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80125AF4 00122A54  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80125AF8 00122A58  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80125AFC 00122A5C  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80125B00 00122A60  50 C0 07 FE */	rlwimi r0, r6, 0, 0x1f, 0x1f
/* 80125B04 00122A64  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80125B08 00122A68  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80125B0C 00122A6C  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 80125B10 00122A70  98 1E 06 39 */	stb r0, 0x639(r30)
/* 80125B14 00122A74  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80125B18 00122A78  B0 01 00 08 */	sth r0, 8(r1)
/* 80125B1C 00122A7C  48 00 02 6D */	bl "remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId"
/* 80125B20 00122A80  48 00 02 30 */	b lbl_80125D50
lbl_80125B24:
/* 80125B24 00122A84  3C A0 80 3E */	lis r5, lbl_803E0788@ha
/* 80125B28 00122A88  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80125B2C 00122A8C  39 25 07 88 */	addi r9, r5, lbl_803E0788@l
/* 80125B30 00122A90  38 A0 00 07 */	li r5, 7
/* 80125B34 00122A94  81 09 00 00 */	lwz r8, 0(r9)
/* 80125B38 00122A98  80 E9 00 04 */	lwz r7, 4(r9)
/* 80125B3C 00122A9C  80 09 00 08 */	lwz r0, 8(r9)
/* 80125B40 00122AA0  91 01 00 3C */	stw r8, 0x3c(r1)
/* 80125B44 00122AA4  90 E1 00 40 */	stw r7, 0x40(r1)
/* 80125B48 00122AA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80125B4C 00122AAC  80 FE 08 3C */	lwz r7, 0x83c(r30)
/* 80125B50 00122AB0  4B F5 6C 65 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80125B54 00122AB4  80 1E 08 3C */	lwz r0, 0x83c(r30)
/* 80125B58 00122AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80125B5C 00122ABC  40 82 01 0C */	bne lbl_80125C68
/* 80125B60 00122AC0  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80125B64 00122AC4  2C 00 00 03 */	cmpwi r0, 3
/* 80125B68 00122AC8  40 82 01 00 */	bne lbl_80125C68
/* 80125B6C 00122ACC  C3 9E 00 60 */	lfs f28, 0x60(r30)
/* 80125B70 00122AD0  7F C4 F3 78 */	mr r4, r30
/* 80125B74 00122AD4  C3 BE 00 50 */	lfs f29, 0x50(r30)
/* 80125B78 00122AD8  7F E5 FB 78 */	mr r5, r31
/* 80125B7C 00122ADC  C3 DE 00 40 */	lfs f30, 0x40(r30)
/* 80125B80 00122AE0  38 61 00 30 */	addi r3, r1, 0x30
/* 80125B84 00122AE4  48 00 28 C1 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125B88 00122AE8  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80125B8C 00122AEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80125B90 00122AF0  EC 61 F0 28 */	fsubs f3, f1, f30
/* 80125B94 00122AF4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80125B98 00122AF8  EC 40 E8 28 */	fsubs f2, f0, f29
/* 80125B9C 00122AFC  EC 81 E0 28 */	fsubs f4, f1, f28
/* 80125BA0 00122B00  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80125BA4 00122B04  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80125BA8 00122B08  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80125BAC 00122B0C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80125BB0 00122B10  EC 44 01 32 */	fmuls f2, f4, f4
/* 80125BB4 00122B14  D0 81 00 5C */	stfs f4, 0x5c(r1)
/* 80125BB8 00122B18  EC 01 00 2A */	fadds f0, f1, f0
/* 80125BBC 00122B1C  C0 7E 02 FC */	lfs f3, 0x2fc(r30)
/* 80125BC0 00122B20  EC 22 00 2A */	fadds f1, f2, f0
/* 80125BC4 00122B24  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80125BC8 00122B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125BCC 00122B2C  40 80 00 9C */	bge lbl_80125C68
/* 80125BD0 00122B30  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 80125BD4 00122B34  38 61 00 24 */	addi r3, r1, 0x24
/* 80125BD8 00122B38  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80125BDC 00122B3C  38 81 00 54 */	addi r4, r1, 0x54
/* 80125BE0 00122B40  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80125BE4 00122B44  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80125BE8 00122B48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80125BEC 00122B4C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80125BF0 00122B50  48 1E EC 61 */	bl AsNormalized__9CVector3fCFv
/* 80125BF4 00122B54  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80125BF8 00122B58  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80125BFC 00122B5C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 80125C00 00122B60  EC 01 00 32 */	fmuls f0, f1, f0
/* 80125C04 00122B64  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80125C08 00122B68  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 80125C0C 00122B6C  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80125C10 00122B70  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80125C14 00122B74  C0 02 98 44 */	lfs f0, lbl_805AB564@sda21(r2)
/* 80125C18 00122B78  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80125C1C 00122B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125C20 00122B80  40 81 00 48 */	ble lbl_80125C68
/* 80125C24 00122B84  38 80 00 01 */	li r4, 1
/* 80125C28 00122B88  38 00 00 02 */	li r0, 2
/* 80125C2C 00122B8C  90 9E 03 2C */	stw r4, 0x32c(r30)
/* 80125C30 00122B90  38 60 00 00 */	li r3, 0
/* 80125C34 00122B94  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80125C38 00122B98  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80125C3C 00122B9C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80125C40 00122BA0  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80125C44 00122BA4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80125C48 00122BA8  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80125C4C 00122BAC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80125C50 00122BB0  D0 1E 06 4C */	stfs f0, 0x64c(r30)
/* 80125C54 00122BB4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80125C58 00122BB8  D0 1E 06 50 */	stfs f0, 0x650(r30)
/* 80125C5C 00122BBC  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80125C60 00122BC0  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 80125C64 00122BC4  98 1E 06 39 */	stb r0, 0x639(r30)
lbl_80125C68:
/* 80125C68 00122BC8  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80125C6C 00122BCC  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80125C70 00122BD0  41 82 00 44 */	beq lbl_80125CB4
/* 80125C74 00122BD4  C3 DE 00 60 */	lfs f30, 0x60(r30)
/* 80125C78 00122BD8  7F C4 F3 78 */	mr r4, r30
/* 80125C7C 00122BDC  C3 BE 00 50 */	lfs f29, 0x50(r30)
/* 80125C80 00122BE0  7F E5 FB 78 */	mr r5, r31
/* 80125C84 00122BE4  C3 9E 00 40 */	lfs f28, 0x40(r30)
/* 80125C88 00122BE8  38 61 00 0C */	addi r3, r1, 0xc
/* 80125C8C 00122BEC  48 00 27 B9 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125C90 00122BF0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80125C94 00122BF4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80125C98 00122BF8  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80125C9C 00122BFC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80125CA0 00122C00  EC 42 E8 28 */	fsubs f2, f2, f29
/* 80125CA4 00122C04  EC 21 F0 28 */	fsubs f1, f1, f30
/* 80125CA8 00122C08  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 80125CAC 00122C0C  D0 5E 06 4C */	stfs f2, 0x64c(r30)
/* 80125CB0 00122C10  D0 3E 06 50 */	stfs f1, 0x650(r30)
lbl_80125CB4:
/* 80125CB4 00122C14  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80125CB8 00122C18  C0 1E 06 48 */	lfs f0, 0x648(r30)
/* 80125CBC 00122C1C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80125CC0 00122C20  C0 1E 06 4C */	lfs f0, 0x64c(r30)
/* 80125CC4 00122C24  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80125CC8 00122C28  C0 1E 06 50 */	lfs f0, 0x650(r30)
/* 80125CCC 00122C2C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80125CD0 00122C30  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 80125CD4 00122C34  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80125CD8 00122C38  41 82 00 2C */	beq lbl_80125D04
/* 80125CDC 00122C3C  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80125CE0 00122C40  2C 00 00 03 */	cmpwi r0, 3
/* 80125CE4 00122C44  40 82 00 10 */	bne lbl_80125CF4
/* 80125CE8 00122C48  C0 02 97 D4 */	lfs f0, lbl_805AB4F4@sda21(r2)
/* 80125CEC 00122C4C  D0 1E 03 E8 */	stfs f0, 0x3e8(r30)
/* 80125CF0 00122C50  48 00 00 14 */	b lbl_80125D04
lbl_80125CF4:
/* 80125CF4 00122C54  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 80125CF8 00122C58  C0 02 98 48 */	lfs f0, lbl_805AB568@sda21(r2)
/* 80125CFC 00122C5C  D0 3E 03 E8 */	stfs f1, 0x3e8(r30)
/* 80125D00 00122C60  D0 1E 08 BC */	stfs f0, 0x8bc(r30)
lbl_80125D04:
/* 80125D04 00122C64  7F C3 F3 78 */	mr r3, r30
/* 80125D08 00122C68  7F E4 FB 78 */	mr r4, r31
/* 80125D0C 00122C6C  48 00 32 91 */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 80125D10 00122C70  FC 20 F8 90 */	fmr f1, f31
/* 80125D14 00122C74  7F C3 F3 78 */	mr r3, r30
/* 80125D18 00122C78  7F E4 FB 78 */	mr r4, r31
/* 80125D1C 00122C7C  48 00 31 C5 */	bl UpdateHeldPosition__12CSpacePirateFR13CStateManagerf
/* 80125D20 00122C80  7F C3 F3 78 */	mr r3, r30
/* 80125D24 00122C84  7F E4 FB 78 */	mr r4, r31
/* 80125D28 00122C88  48 00 28 09 */	bl CheckBlade__12CSpacePirateFR13CStateManager
/* 80125D2C 00122C8C  48 00 00 24 */	b lbl_80125D50
lbl_80125D30:
/* 80125D30 00122C90  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80125D34 00122C94  38 60 00 00 */	li r3, 0
/* 80125D38 00122C98  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80125D3C 00122C9C  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80125D40 00122CA0  88 1E 06 36 */	lbz r0, 0x636(r30)
/* 80125D44 00122CA4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80125D48 00122CA8  98 1E 06 36 */	stb r0, 0x636(r30)
/* 80125D4C 00122CAC  90 7E 03 2C */	stw r3, 0x32c(r30)
lbl_80125D50:
/* 80125D50 00122CB0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80125D54 00122CB4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80125D58 00122CB8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 80125D5C 00122CBC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80125D60 00122CC0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 80125D64 00122CC4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 80125D68 00122CC8  E3 81 00 78 */	psq_l f28, 120(r1), 0, qr0
/* 80125D6C 00122CCC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 80125D70 00122CD0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80125D74 00122CD4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80125D78 00122CD8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80125D7C 00122CDC  7C 08 03 A6 */	mtlr r0
/* 80125D80 00122CE0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80125D84 00122CE4  4E 80 00 20 */	blr

.global "remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId"
"remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId":
/* 80125D88 00122CE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80125D8C 00122CEC  7C 08 02 A6 */	mflr r0
/* 80125D90 00122CF0  7C 85 23 78 */	mr r5, r4
/* 80125D94 00122CF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80125D98 00122CF8  38 81 00 08 */	addi r4, r1, 8
/* 80125D9C 00122CFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80125DA0 00122D00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80125DA4 00122D04  7C 7E 1B 78 */	mr r30, r3
/* 80125DA8 00122D08  38 61 00 0C */	addi r3, r1, 0xc
/* 80125DAC 00122D0C  48 00 6D 05 */	bl sub_8012cab0
/* 80125DB0 00122D10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80125DB4 00122D14  80 9E 00 04 */	lwz r4, 4(r30)
/* 80125DB8 00122D18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80125DBC 00122D1C  A3 E1 00 12 */	lhz r31, 0x12(r1)
/* 80125DC0 00122D20  48 00 00 24 */	b lbl_80125DE4
lbl_80125DC4:
/* 80125DC4 00122D24  A0 04 00 08 */	lhz r0, 8(r4)
/* 80125DC8 00122D28  7C 1F 00 40 */	cmplw r31, r0
/* 80125DCC 00122D2C  40 82 00 14 */	bne lbl_80125DE0
/* 80125DD0 00122D30  7F C3 F3 78 */	mr r3, r30
/* 80125DD4 00122D34  48 00 70 9D */	bl "erase__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRCQ34rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>8iterator"
/* 80125DD8 00122D38  7C 64 1B 78 */	mr r4, r3
/* 80125DDC 00122D3C  48 00 00 08 */	b lbl_80125DE4
lbl_80125DE0:
/* 80125DE0 00122D40  80 84 00 04 */	lwz r4, 4(r4)
lbl_80125DE4:
/* 80125DE4 00122D44  80 1E 00 08 */	lwz r0, 8(r30)
/* 80125DE8 00122D48  7C 04 00 40 */	cmplw r4, r0
/* 80125DEC 00122D4C  40 82 FF D8 */	bne lbl_80125DC4
/* 80125DF0 00122D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80125DF4 00122D54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80125DF8 00122D58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80125DFC 00122D5C  7C 08 03 A6 */	mtlr r0
/* 80125E00 00122D60  38 21 00 20 */	addi r1, r1, 0x20
/* 80125E04 00122D64  4E 80 00 20 */	blr

.global Attack__12CSpacePirateFR13CStateManager9EStateMsgf
Attack__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80125E08 00122D68  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80125E0C 00122D6C  7C 08 02 A6 */	mflr r0
/* 80125E10 00122D70  90 01 00 94 */	stw r0, 0x94(r1)
/* 80125E14 00122D74  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80125E18 00122D78  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80125E1C 00122D7C  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80125E20 00122D80  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80125E24 00122D84  FF E0 08 90 */	fmr f31, f1
/* 80125E28 00122D88  2C 05 00 01 */	cmpwi r5, 1
/* 80125E2C 00122D8C  7C 7F 1B 78 */	mr r31, r3
/* 80125E30 00122D90  7C 9E 23 78 */	mr r30, r4
/* 80125E34 00122D94  41 82 01 DC */	beq lbl_80126010
/* 80125E38 00122D98  40 80 00 10 */	bge lbl_80125E48
/* 80125E3C 00122D9C  2C 05 00 00 */	cmpwi r5, 0
/* 80125E40 00122DA0  40 80 00 14 */	bge lbl_80125E54
/* 80125E44 00122DA4  48 00 02 A4 */	b lbl_801260E8
lbl_80125E48:
/* 80125E48 00122DA8  2C 05 00 03 */	cmpwi r5, 3
/* 80125E4C 00122DAC  40 80 02 9C */	bge lbl_801260E8
/* 80125E50 00122DB0  48 00 02 78 */	b lbl_801260C8
lbl_80125E54:
/* 80125E54 00122DB4  38 00 00 01 */	li r0, 1
/* 80125E58 00122DB8  38 80 00 03 */	li r4, 3
/* 80125E5C 00122DBC  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80125E60 00122DC0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80125E64 00122DC4  48 01 4B 75 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80125E68 00122DC8  7F E4 FB 78 */	mr r4, r31
/* 80125E6C 00122DCC  7F C5 F3 78 */	mr r5, r30
/* 80125E70 00122DD0  38 61 00 38 */	addi r3, r1, 0x38
/* 80125E74 00122DD4  48 00 25 D1 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80125E78 00122DD8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80125E7C 00122DDC  7F E4 FB 78 */	mr r4, r31
/* 80125E80 00122DE0  38 61 00 60 */	addi r3, r1, 0x60
/* 80125E84 00122DE4  D0 1F 02 E0 */	stfs f0, 0x2e0(r31)
/* 80125E88 00122DE8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80125E8C 00122DEC  D0 1F 02 E4 */	stfs f0, 0x2e4(r31)
/* 80125E90 00122DF0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80125E94 00122DF4  D0 1F 02 E8 */	stfs f0, 0x2e8(r31)
/* 80125E98 00122DF8  4B FF 4A 95 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80125E9C 00122DFC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80125EA0 00122E00  38 81 00 60 */	addi r4, r1, 0x60
/* 80125EA4 00122E04  48 21 17 69 */	bl GetCenterPoint__6CAABoxCFv
/* 80125EA8 00122E08  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 80125EAC 00122E0C  38 80 00 00 */	li r4, 0
/* 80125EB0 00122E10  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80125EB4 00122E14  C0 BF 02 E4 */	lfs f5, 0x2e4(r31)
/* 80125EB8 00122E18  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 80125EBC 00122E1C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80125EC0 00122E20  C0 7F 02 E8 */	lfs f3, 0x2e8(r31)
/* 80125EC4 00122E24  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80125EC8 00122E28  EC 85 20 28 */	fsubs f4, f5, f4
/* 80125ECC 00122E2C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80125ED0 00122E30  D0 3F 06 48 */	stfs f1, 0x648(r31)
/* 80125ED4 00122E34  EC 23 10 28 */	fsubs f1, f3, f2
/* 80125ED8 00122E38  D0 9F 06 4C */	stfs f4, 0x64c(r31)
/* 80125EDC 00122E3C  D0 3F 06 50 */	stfs f1, 0x650(r31)
/* 80125EE0 00122E40  D0 1F 06 44 */	stfs f0, 0x644(r31)
/* 80125EE4 00122E44  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80125EE8 00122E48  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80125EEC 00122E4C  98 1F 06 36 */	stb r0, 0x636(r31)
/* 80125EF0 00122E50  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80125EF4 00122E54  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80125EF8 00122E58  40 82 00 68 */	bne lbl_80125F60
/* 80125EFC 00122E5C  C0 3F 06 48 */	lfs f1, 0x648(r31)
/* 80125F00 00122E60  C0 1F 06 4C */	lfs f0, 0x64c(r31)
/* 80125F04 00122E64  EC 41 00 72 */	fmuls f2, f1, f1
/* 80125F08 00122E68  C0 7F 06 50 */	lfs f3, 0x650(r31)
/* 80125F0C 00122E6C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80125F10 00122E70  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 80125F14 00122E74  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80125F18 00122E78  EC 00 00 32 */	fmuls f0, f0, f0
/* 80125F1C 00122E7C  EC 22 08 2A */	fadds f1, f2, f1
/* 80125F20 00122E80  EC 23 08 2A */	fadds f1, f3, f1
/* 80125F24 00122E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125F28 00122E88  40 80 00 38 */	bge lbl_80125F60
/* 80125F2C 00122E8C  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 80125F30 00122E90  C0 02 98 28 */	lfs f0, lbl_805AB548@sda21(r2)
/* 80125F34 00122E94  EC 21 00 72 */	fmuls f1, f1, f1
/* 80125F38 00122E98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125F3C 00122E9C  40 80 00 24 */	bge lbl_80125F60
/* 80125F40 00122EA0  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80125F44 00122EA4  38 60 00 01 */	li r3, 1
/* 80125F48 00122EA8  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80125F4C 00122EAC  98 1F 06 36 */	stb r0, 0x636(r31)
/* 80125F50 00122EB0  88 1F 06 38 */	lbz r0, 0x638(r31)
/* 80125F54 00122EB4  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80125F58 00122EB8  98 1F 06 38 */	stb r0, 0x638(r31)
/* 80125F5C 00122EBC  48 00 00 98 */	b lbl_80125FF4
lbl_80125F60:
/* 80125F60 00122EC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80125F64 00122EC4  38 9F 06 48 */	addi r4, r31, 0x648
/* 80125F68 00122EC8  48 1E E8 E9 */	bl AsNormalized__9CVector3fCFv
/* 80125F6C 00122ECC  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 80125F70 00122ED0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80125F74 00122ED4  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80125F78 00122ED8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80125F7C 00122EDC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80125F80 00122EE0  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80125F84 00122EE4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80125F88 00122EE8  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 80125F8C 00122EEC  C0 02 98 34 */	lfs f0, lbl_805AB554@sda21(r2)
/* 80125F90 00122EF0  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80125F94 00122EF4  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 80125F98 00122EF8  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80125F9C 00122EFC  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80125FA0 00122F00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80125FA4 00122F04  40 80 00 50 */	bge lbl_80125FF4
/* 80125FA8 00122F08  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80125FAC 00122F0C  C4 63 66 A0 */	lfsu f3, sZeroVector__9CVector3f@l(r3)
/* 80125FB0 00122F10  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80125FB4 00122F14  38 81 00 44 */	addi r4, r1, 0x44
/* 80125FB8 00122F18  C0 43 00 04 */	lfs f2, 4(r3)
/* 80125FBC 00122F1C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80125FC0 00122F20  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 80125FC4 00122F24  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80125FC8 00122F28  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80125FCC 00122F2C  C0 3F 06 48 */	lfs f1, 0x648(r31)
/* 80125FD0 00122F30  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80125FD4 00122F34  C0 3F 06 4C */	lfs f1, 0x64c(r31)
/* 80125FD8 00122F38  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80125FDC 00122F3C  C0 3F 06 50 */	lfs f1, 0x650(r31)
/* 80125FE0 00122F40  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80125FE4 00122F44  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80125FE8 00122F48  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80125FEC 00122F4C  38 63 00 04 */	addi r3, r3, 4
/* 80125FF0 00122F50  48 00 B7 29 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_80125FF4:
/* 80125FF4 00122F54  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80125FF8 00122F58  38 60 00 01 */	li r3, 1
/* 80125FFC 00122F5C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80126000 00122F60  C0 02 98 48 */	lfs f0, lbl_805AB568@sda21(r2)
/* 80126004 00122F64  98 1F 06 36 */	stb r0, 0x636(r31)
/* 80126008 00122F68  D0 1F 08 BC */	stfs f0, 0x8bc(r31)
/* 8012600C 00122F6C  48 00 00 DC */	b lbl_801260E8
lbl_80126010:
/* 80126010 00122F70  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 80126014 00122F74  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80126018 00122F78  41 82 00 90 */	beq lbl_801260A8
/* 8012601C 00122F7C  3C A0 80 3E */	lis r5, lbl_803E077C@ha
/* 80126020 00122F80  38 C1 00 08 */	addi r6, r1, 8
/* 80126024 00122F84  39 45 07 7C */	addi r10, r5, lbl_803E077C@l
/* 80126028 00122F88  38 A0 00 07 */	li r5, 7
/* 8012602C 00122F8C  81 2A 00 00 */	lwz r9, 0(r10)
/* 80126030 00122F90  38 E0 00 01 */	li r7, 1
/* 80126034 00122F94  81 0A 00 04 */	lwz r8, 4(r10)
/* 80126038 00122F98  80 0A 00 08 */	lwz r0, 8(r10)
/* 8012603C 00122F9C  91 21 00 08 */	stw r9, 8(r1)
/* 80126040 00122FA0  91 01 00 0C */	stw r8, 0xc(r1)
/* 80126044 00122FA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80126048 00122FA8  4B F5 67 6D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8012604C 00122FAC  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 80126050 00122FB0  7F E3 FB 78 */	mr r3, r31
/* 80126054 00122FB4  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 80126058 00122FB8  7F C4 F3 78 */	mr r4, r30
/* 8012605C 00122FBC  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80126060 00122FC0  C0 1F 06 4C */	lfs f0, 0x64c(r31)
/* 80126064 00122FC4  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 80126068 00122FC8  C0 1F 06 50 */	lfs f0, 0x650(r31)
/* 8012606C 00122FCC  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 80126070 00122FD0  48 00 24 C1 */	bl CheckBlade__12CSpacePirateFR13CStateManager
/* 80126074 00122FD4  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80126078 00122FD8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8012607C 00122FDC  41 82 00 2C */	beq lbl_801260A8
/* 80126080 00122FE0  80 1F 03 2C */	lwz r0, 0x32c(r31)
/* 80126084 00122FE4  2C 00 00 03 */	cmpwi r0, 3
/* 80126088 00122FE8  40 82 00 10 */	bne lbl_80126098
/* 8012608C 00122FEC  C0 02 97 D4 */	lfs f0, lbl_805AB4F4@sda21(r2)
/* 80126090 00122FF0  D0 1F 03 E8 */	stfs f0, 0x3e8(r31)
/* 80126094 00122FF4  48 00 00 14 */	b lbl_801260A8
lbl_80126098:
/* 80126098 00122FF8  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 8012609C 00122FFC  C0 02 98 48 */	lfs f0, lbl_805AB568@sda21(r2)
/* 801260A0 00123000  D0 3F 03 E8 */	stfs f1, 0x3e8(r31)
/* 801260A4 00123004  D0 1F 08 BC */	stfs f0, 0x8bc(r31)
lbl_801260A8:
/* 801260A8 00123008  7F E3 FB 78 */	mr r3, r31
/* 801260AC 0012300C  7F C4 F3 78 */	mr r4, r30
/* 801260B0 00123010  48 00 2E ED */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 801260B4 00123014  FC 20 F8 90 */	fmr f1, f31
/* 801260B8 00123018  7F E3 FB 78 */	mr r3, r31
/* 801260BC 0012301C  7F C4 F3 78 */	mr r4, r30
/* 801260C0 00123020  48 00 2E 21 */	bl UpdateHeldPosition__12CSpacePirateFR13CStateManagerf
/* 801260C4 00123024  48 00 00 24 */	b lbl_801260E8
lbl_801260C8:
/* 801260C8 00123028  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 801260CC 0012302C  38 60 00 00 */	li r3, 0
/* 801260D0 00123030  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801260D4 00123034  98 1F 06 36 */	stb r0, 0x636(r31)
/* 801260D8 00123038  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 801260DC 0012303C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801260E0 00123040  98 1F 06 36 */	stb r0, 0x636(r31)
/* 801260E4 00123044  90 7F 03 2C */	stw r3, 0x32c(r31)
lbl_801260E8:
/* 801260E8 00123048  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801260EC 0012304C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801260F0 00123050  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801260F4 00123054  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801260F8 00123058  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801260FC 0012305C  7C 08 03 A6 */	mtlr r0
/* 80126100 00123060  38 21 00 90 */	addi r1, r1, 0x90
/* 80126104 00123064  4E 80 00 20 */	blr

.global Enraged__12CSpacePirateFR13CStateManager9EStateMsgf
Enraged__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80126108 00123068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012610C 0012306C  7C 08 02 A6 */	mflr r0
/* 80126110 00123070  2C 05 00 00 */	cmpwi r5, 0
/* 80126114 00123074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80126118 00123078  41 82 00 08 */	beq lbl_80126120
/* 8012611C 0012307C  48 00 00 34 */	b lbl_80126150
lbl_80126120:
/* 80126120 00123080  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80126124 00123084  38 00 00 0A */	li r0, 0xa
/* 80126128 00123088  38 A4 AA 68 */	addi r5, r4, lbl_803DAA68@l
/* 8012612C 0012308C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80126130 00123090  38 81 00 08 */	addi r4, r1, 8
/* 80126134 00123094  90 A1 00 08 */	stw r5, 8(r1)
/* 80126138 00123098  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8012613C 0012309C  38 63 00 04 */	addi r3, r3, 4
/* 80126140 001230A0  48 00 B6 79 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 80126144 001230A4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80126148 001230A8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8012614C 001230AC  90 01 00 08 */	stw r0, 8(r1)
lbl_80126150:
/* 80126150 001230B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80126154 001230B4  7C 08 03 A6 */	mtlr r0
/* 80126158 001230B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8012615C 001230BC  4E 80 00 20 */	blr

.global CoverAttack__12CSpacePirateFR13CStateManager9EStateMsgf
CoverAttack__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80126160 001230C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80126164 001230C4  7C 08 02 A6 */	mflr r0
/* 80126168 001230C8  2C 05 00 01 */	cmpwi r5, 1
/* 8012616C 001230CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80126170 001230D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80126174 001230D4  7C 7F 1B 78 */	mr r31, r3
/* 80126178 001230D8  41 82 00 6C */	beq lbl_801261E4
/* 8012617C 001230DC  40 80 00 10 */	bge lbl_8012618C
/* 80126180 001230E0  2C 05 00 00 */	cmpwi r5, 0
/* 80126184 001230E4  40 80 00 14 */	bge lbl_80126198
/* 80126188 001230E8  48 00 00 74 */	b lbl_801261FC
lbl_8012618C:
/* 8012618C 001230EC  2C 05 00 03 */	cmpwi r5, 3
/* 80126190 001230F0  40 80 00 6C */	bge lbl_801261FC
/* 80126194 001230F4  48 00 00 58 */	b lbl_801261EC
lbl_80126198:
/* 80126198 001230F8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8012619C 001230FC  38 00 00 0B */	li r0, 0xb
/* 801261A0 00123100  38 63 AA 68 */	addi r3, r3, lbl_803DAA68@l
/* 801261A4 00123104  90 01 00 0C */	stw r0, 0xc(r1)
/* 801261A8 00123108  38 81 00 08 */	addi r4, r1, 8
/* 801261AC 0012310C  90 61 00 08 */	stw r3, 8(r1)
/* 801261B0 00123110  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801261B4 00123114  38 63 00 04 */	addi r3, r3, 4
/* 801261B8 00123118  48 00 B6 01 */	bl DeliverCmd__16CBodyStateCmdMgrFRC13CBodyStateCmd
/* 801261BC 0012311C  34 01 00 08 */	addic. r0, r1, 8
/* 801261C0 00123120  41 82 00 10 */	beq lbl_801261D0
/* 801261C4 00123124  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801261C8 00123128  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801261CC 0012312C  90 01 00 08 */	stw r0, 8(r1)
lbl_801261D0:
/* 801261D0 00123130  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 801261D4 00123134  38 60 00 01 */	li r3, 1
/* 801261D8 00123138  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801261DC 0012313C  98 1F 06 36 */	stb r0, 0x636(r31)
/* 801261E0 00123140  48 00 00 1C */	b lbl_801261FC
lbl_801261E4:
/* 801261E4 00123144  48 00 2D B9 */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 801261E8 00123148  48 00 00 14 */	b lbl_801261FC
lbl_801261EC:
/* 801261EC 0012314C  88 1F 06 36 */	lbz r0, 0x636(r31)
/* 801261F0 00123150  38 60 00 00 */	li r3, 0
/* 801261F4 00123154  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801261F8 00123158  98 1F 06 36 */	stb r0, 0x636(r31)
lbl_801261FC:
/* 801261FC 0012315C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80126200 00123160  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80126204 00123164  7C 08 03 A6 */	mtlr r0
/* 80126208 00123168  38 21 00 20 */	addi r1, r1, 0x20
/* 8012620C 0012316C  4E 80 00 20 */	blr

.global Cover__12CSpacePirateFR13CStateManager9EStateMsgf
Cover__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80126210 00123170  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80126214 00123174  7C 08 02 A6 */	mflr r0
/* 80126218 00123178  2C 05 00 01 */	cmpwi r5, 1
/* 8012621C 0012317C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80126220 00123180  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80126224 00123184  7C 7F 1B 78 */	mr r31, r3
/* 80126228 00123188  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8012622C 0012318C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80126230 00123190  7C 9D 23 78 */	mr r29, r4
/* 80126234 00123194  41 82 00 B0 */	beq lbl_801262E4
/* 80126238 00123198  40 80 00 10 */	bge lbl_80126248
/* 8012623C 0012319C  2C 05 00 00 */	cmpwi r5, 0
/* 80126240 001231A0  40 80 00 14 */	bge lbl_80126254
/* 80126244 001231A4  48 00 01 30 */	b lbl_80126374
lbl_80126248:
/* 80126248 001231A8  2C 05 00 03 */	cmpwi r5, 3
/* 8012624C 001231AC  40 80 01 28 */	bge lbl_80126374
/* 80126250 001231B0  48 00 01 1C */	b lbl_8012636C
lbl_80126254:
/* 80126254 001231B4  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 80126258 001231B8  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8012625C 001231BC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80126260 001231C0  41 82 01 14 */	beq lbl_80126374
/* 80126264 001231C4  A0 1F 06 40 */	lhz r0, 0x640(r31)
/* 80126268 001231C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8012626C 001231CC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80126270 001231D0  4B F5 66 3D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80126274 001231D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80126278 001231D8  41 82 00 FC */	beq lbl_80126374
/* 8012627C 001231DC  48 00 73 A9 */	bl GetAttackDirection__17CScriptCoverPointCFv
/* 80126280 001231E0  54 60 FF FE */	rlwinm r0, r3, 0x1f, 0x1f, 0x1f
/* 80126284 001231E4  3C 60 80 3E */	lis r3, lbl_803E0764@ha
/* 80126288 001231E8  90 1F 07 9C */	stw r0, 0x79c(r31)
/* 8012628C 001231EC  38 00 00 01 */	li r0, 1
/* 80126290 001231F0  39 23 07 64 */	addi r9, r3, lbl_803E0764@l
/* 80126294 001231F4  7F E3 FB 78 */	mr r3, r31
/* 80126298 001231F8  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 8012629C 001231FC  7F A4 EB 78 */	mr r4, r29
/* 801262A0 00123200  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801262A4 00123204  38 A0 00 13 */	li r5, 0x13
/* 801262A8 00123208  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801262AC 0012320C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801262B0 00123210  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801262B4 00123214  D0 1F 02 E0 */	stfs f0, 0x2e0(r31)
/* 801262B8 00123218  D0 3F 02 E4 */	stfs f1, 0x2e4(r31)
/* 801262BC 0012321C  D0 5F 02 E8 */	stfs f2, 0x2e8(r31)
/* 801262C0 00123220  81 09 00 00 */	lwz r8, 0(r9)
/* 801262C4 00123224  80 E9 00 04 */	lwz r7, 4(r9)
/* 801262C8 00123228  80 09 00 08 */	lwz r0, 8(r9)
/* 801262CC 0012322C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801262D0 00123230  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801262D4 00123234  90 01 00 24 */	stw r0, 0x24(r1)
/* 801262D8 00123238  80 FF 07 9C */	lwz r7, 0x79c(r31)
/* 801262DC 0012323C  4B F5 64 D9 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 801262E0 00123240  48 00 00 94 */	b lbl_80126374
lbl_801262E4:
/* 801262E4 00123244  3C A0 80 3E */	lis r5, lbl_803E0770@ha
/* 801262E8 00123248  38 C1 00 10 */	addi r6, r1, 0x10
/* 801262EC 0012324C  39 25 07 70 */	addi r9, r5, lbl_803E0770@l
/* 801262F0 00123250  38 A0 00 13 */	li r5, 0x13
/* 801262F4 00123254  81 09 00 00 */	lwz r8, 0(r9)
/* 801262F8 00123258  80 E9 00 04 */	lwz r7, 4(r9)
/* 801262FC 0012325C  80 09 00 08 */	lwz r0, 8(r9)
/* 80126300 00123260  91 01 00 10 */	stw r8, 0x10(r1)
/* 80126304 00123264  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80126308 00123268  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012630C 0012326C  80 FF 07 9C */	lwz r7, 0x79c(r31)
/* 80126310 00123270  4B F5 64 A5 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80126314 00123274  A0 1F 06 40 */	lhz r0, 0x640(r31)
/* 80126318 00123278  7F E3 FB 78 */	mr r3, r31
/* 8012631C 0012327C  7F A4 EB 78 */	mr r4, r29
/* 80126320 00123280  38 A1 00 08 */	addi r5, r1, 8
/* 80126324 00123284  B0 01 00 08 */	sth r0, 8(r1)
/* 80126328 00123288  4B F5 65 85 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 8012632C 0012328C  28 03 00 00 */	cmplwi r3, 0
/* 80126330 00123290  41 82 00 2C */	beq lbl_8012635C
/* 80126334 00123294  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80126338 00123298  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 8012633C 0012329C  FC 00 00 50 */	fneg f0, f0
/* 80126340 001232A0  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 80126344 001232A4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80126348 001232A8  FC 20 08 50 */	fneg f1, f1
/* 8012634C 001232AC  FC 40 10 50 */	fneg f2, f2
/* 80126350 001232B0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80126354 001232B4  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 80126358 001232B8  D0 43 00 24 */	stfs f2, 0x24(r3)
lbl_8012635C:
/* 8012635C 001232BC  7F E3 FB 78 */	mr r3, r31
/* 80126360 001232C0  7F A4 EB 78 */	mr r4, r29
/* 80126364 001232C4  48 00 2C 39 */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 80126368 001232C8  48 00 00 0C */	b lbl_80126374
lbl_8012636C:
/* 8012636C 001232CC  38 00 00 00 */	li r0, 0
/* 80126370 001232D0  90 1F 03 2C */	stw r0, 0x32c(r31)
lbl_80126374:
/* 80126374 001232D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80126378 001232D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8012637C 001232DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80126380 001232E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80126384 001232E4  7C 08 03 A6 */	mtlr r0
/* 80126388 001232E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8012638C 001232EC  4E 80 00 20 */	blr

.global ShouldAttack__12CSpacePirateFR13CStateManagerf
ShouldAttack__12CSpacePirateFR13CStateManagerf:
/* 80126390 001232F0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80126394 001232F4  7C 08 02 A6 */	mflr r0
/* 80126398 001232F8  90 01 00 94 */	stw r0, 0x94(r1)
/* 8012639C 001232FC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801263A0 00123300  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801263A4 00123304  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801263A8 00123308  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 801263AC 0012330C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 801263B0 00123310  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 801263B4 00123314  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 801263B8 00123318  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 801263BC 0012331C  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801263C0 00123320  7C 9B 23 78 */	mr r27, r4
/* 801263C4 00123324  7C 7F 1B 78 */	mr r31, r3
/* 801263C8 00123328  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 801263CC 0012332C  3B A0 00 01 */	li r29, 1
/* 801263D0 00123330  A0 9F 07 C0 */	lhz r4, 0x7c0(r31)
/* 801263D4 00123334  A0 03 00 08 */	lhz r0, 8(r3)
/* 801263D8 00123338  7C 04 00 40 */	cmplw r4, r0
/* 801263DC 0012333C  40 82 01 30 */	bne lbl_8012650C
/* 801263E0 00123340  7F E4 FB 78 */	mr r4, r31
/* 801263E4 00123344  7F 65 DB 78 */	mr r5, r27
/* 801263E8 00123348  38 61 00 24 */	addi r3, r1, 0x24
/* 801263EC 0012334C  48 00 20 59 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 801263F0 00123350  C3 A1 00 24 */	lfs f29, 0x24(r1)
/* 801263F4 00123354  3B 80 00 00 */	li r28, 0
/* 801263F8 00123358  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801263FC 0012335C  C3 E1 00 28 */	lfs f31, 0x28(r1)
/* 80126400 00123360  EC 40 E8 28 */	fsubs f2, f0, f29
/* 80126404 00123364  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80126408 00123368  83 DB 08 38 */	lwz r30, 0x838(r27)
/* 8012640C 0012336C  EC 80 F8 28 */	fsubs f4, f0, f31
/* 80126410 00123370  C3 C1 00 2C */	lfs f30, 0x2c(r1)
/* 80126414 00123374  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80126418 00123378  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8012641C 0012337C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80126420 00123380  EC 60 F0 28 */	fsubs f3, f0, f30
/* 80126424 00123384  EC 04 01 32 */	fmuls f0, f4, f4
/* 80126428 00123388  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8012642C 0012338C  AB 7E 20 08 */	lha r27, 0x2008(r30)
/* 80126430 00123390  EC 43 00 F2 */	fmuls f2, f3, f3
/* 80126434 00123394  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80126438 00123398  EC 01 00 2A */	fadds f0, f1, f0
/* 8012643C 0012339C  EF 82 00 2A */	fadds f28, f2, f0
/* 80126440 001233A0  48 00 00 C4 */	b lbl_80126504
lbl_80126444:
/* 80126444 001233A4  7F C3 F3 78 */	mr r3, r30
/* 80126448 001233A8  7F 64 DB 78 */	mr r4, r27
/* 8012644C 001233AC  4B EE 98 91 */	bl __vc__11CObjectListCFi
/* 80126450 001233B0  7C 64 1B 78 */	mr r4, r3
/* 80126454 001233B4  38 61 00 08 */	addi r3, r1, 8
/* 80126458 001233B8  4B F7 EF 79 */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 8012645C 001233BC  4B F7 EF 49 */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80126460 001233C0  28 03 00 00 */	cmplwi r3, 0
/* 80126464 001233C4  41 82 00 84 */	beq lbl_801264E8
/* 80126468 001233C8  7C 03 F8 40 */	cmplw r3, r31
/* 8012646C 001233CC  41 82 00 7C */	beq lbl_801264E8
/* 80126470 001233D0  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80126474 001233D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80126478 001233D8  41 82 00 70 */	beq lbl_801264E8
/* 8012647C 001233DC  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80126480 001233E0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80126484 001233E4  41 82 00 64 */	beq lbl_801264E8
/* 80126488 001233E8  80 83 00 04 */	lwz r4, 4(r3)
/* 8012648C 001233EC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80126490 001233F0  7C 04 00 00 */	cmpw r4, r0
/* 80126494 001233F4  40 82 00 54 */	bne lbl_801264E8
/* 80126498 001233F8  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8012649C 001233FC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801264A0 00123400  EC 41 F8 28 */	fsubs f2, f1, f31
/* 801264A4 00123404  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801264A8 00123408  EC 60 E8 28 */	fsubs f3, f0, f29
/* 801264AC 0012340C  EC 81 F0 28 */	fsubs f4, f1, f30
/* 801264B0 00123410  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801264B4 00123414  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801264B8 00123418  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801264BC 0012341C  EC 44 01 32 */	fmuls f2, f4, f4
/* 801264C0 00123420  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801264C4 00123424  EC 01 00 2A */	fadds f0, f1, f0
/* 801264C8 00123428  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801264CC 0012342C  EC 02 00 2A */	fadds f0, f2, f0
/* 801264D0 00123430  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 801264D4 00123434  40 80 00 14 */	bge lbl_801264E8
/* 801264D8 00123438  3B 9C 00 01 */	addi r28, r28, 1
/* 801264DC 0012343C  2C 1C 00 03 */	cmpwi r28, 3
/* 801264E0 00123440  40 81 00 08 */	ble lbl_801264E8
/* 801264E4 00123444  3B A0 00 00 */	li r29, 0
lbl_801264E8:
/* 801264E8 00123448  2C 1B FF FF */	cmpwi r27, -1
/* 801264EC 0012344C  41 82 00 14 */	beq lbl_80126500
/* 801264F0 00123450  57 63 18 38 */	slwi r3, r27, 3
/* 801264F4 00123454  38 03 00 08 */	addi r0, r3, 8
/* 801264F8 00123458  7F 7E 02 AE */	lhax r27, r30, r0
/* 801264FC 0012345C  48 00 00 08 */	b lbl_80126504
lbl_80126500:
/* 80126500 00123460  3B 60 FF FF */	li r27, -1
lbl_80126504:
/* 80126504 00123464  2C 1B FF FF */	cmpwi r27, -1
/* 80126508 00123468  40 82 FF 3C */	bne lbl_80126444
lbl_8012650C:
/* 8012650C 0012346C  7F A3 EB 78 */	mr r3, r29
/* 80126510 00123470  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80126514 00123474  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80126518 00123478  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8012651C 0012347C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80126520 00123480  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80126524 00123484  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80126528 00123488  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 8012652C 0012348C  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80126530 00123490  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 80126534 00123494  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80126538 00123498  7C 08 03 A6 */	mtlr r0
/* 8012653C 0012349C  38 21 00 90 */	addi r1, r1, 0x90
/* 80126540 001234A0  4E 80 00 20 */	blr

.global CoveringFire__12CSpacePirateFR13CStateManagerf
CoveringFire__12CSpacePirateFR13CStateManagerf:
/* 80126544 001234A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80126548 001234A8  7C 08 02 A6 */	mflr r0
/* 8012654C 001234AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80126550 001234B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80126554 001234B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80126558 001234B8  3B C0 00 00 */	li r30, 0
/* 8012655C 001234BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80126560 001234C0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80126564 001234C4  7C 7C 1B 78 */	mr r28, r3
/* 80126568 001234C8  83 E4 08 38 */	lwz r31, 0x838(r4)
/* 8012656C 001234CC  AB BF 20 08 */	lha r29, 0x2008(r31)
/* 80126570 001234D0  48 00 00 6C */	b lbl_801265DC
lbl_80126574:
/* 80126574 001234D4  7F E3 FB 78 */	mr r3, r31
/* 80126578 001234D8  7F A4 EB 78 */	mr r4, r29
/* 8012657C 001234DC  4B EE 97 61 */	bl __vc__11CObjectListCFi
/* 80126580 001234E0  7C 64 1B 78 */	mr r4, r3
/* 80126584 001234E4  38 61 00 08 */	addi r3, r1, 8
/* 80126588 001234E8  4B F7 EE 49 */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 8012658C 001234EC  4B F7 EE 19 */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80126590 001234F0  28 03 00 00 */	cmplwi r3, 0
/* 80126594 001234F4  41 82 00 2C */	beq lbl_801265C0
/* 80126598 001234F8  7C 03 E0 40 */	cmplw r3, r28
/* 8012659C 001234FC  41 82 00 24 */	beq lbl_801265C0
/* 801265A0 00123500  88 03 06 36 */	lbz r0, 0x636(r3)
/* 801265A4 00123504  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801265A8 00123508  41 82 00 18 */	beq lbl_801265C0
/* 801265AC 0012350C  80 63 00 04 */	lwz r3, 4(r3)
/* 801265B0 00123510  80 1C 00 04 */	lwz r0, 4(r28)
/* 801265B4 00123514  7C 03 00 00 */	cmpw r3, r0
/* 801265B8 00123518  40 82 00 08 */	bne lbl_801265C0
/* 801265BC 0012351C  3B C0 00 01 */	li r30, 1
lbl_801265C0:
/* 801265C0 00123520  2C 1D FF FF */	cmpwi r29, -1
/* 801265C4 00123524  41 82 00 14 */	beq lbl_801265D8
/* 801265C8 00123528  57 A3 18 38 */	slwi r3, r29, 3
/* 801265CC 0012352C  38 03 00 08 */	addi r0, r3, 8
/* 801265D0 00123530  7F BF 02 AE */	lhax r29, r31, r0
/* 801265D4 00123534  48 00 00 08 */	b lbl_801265DC
lbl_801265D8:
/* 801265D8 00123538  3B A0 FF FF */	li r29, -1
lbl_801265DC:
/* 801265DC 0012353C  2C 1D FF FF */	cmpwi r29, -1
/* 801265E0 00123540  40 82 FF 94 */	bne lbl_80126574
/* 801265E4 00123544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801265E8 00123548  7F C3 F3 78 */	mr r3, r30
/* 801265EC 0012354C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801265F0 00123550  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801265F4 00123554  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801265F8 00123558  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801265FC 0012355C  7C 08 03 A6 */	mtlr r0
/* 80126600 00123560  38 21 00 20 */	addi r1, r1, 0x20
/* 80126604 00123564  4E 80 00 20 */	blr

.global CoverNearlyBlown__12CSpacePirateFR13CStateManagerf
CoverNearlyBlown__12CSpacePirateFR13CStateManagerf:
/* 80126608 00123568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012660C 0012356C  7C 08 02 A6 */	mflr r0
/* 80126610 00123570  90 01 00 24 */	stw r0, 0x24(r1)
/* 80126614 00123574  38 A1 00 08 */	addi r5, r1, 8
/* 80126618 00123578  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012661C 0012357C  3B E0 00 01 */	li r31, 1
/* 80126620 00123580  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80126624 00123584  7C 9E 23 78 */	mr r30, r4
/* 80126628 00123588  A0 03 06 40 */	lhz r0, 0x640(r3)
/* 8012662C 0012358C  B0 01 00 08 */	sth r0, 8(r1)
/* 80126630 00123590  4B F5 62 7D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80126634 00123594  28 03 00 00 */	cmplwi r3, 0
/* 80126638 00123598  41 82 00 54 */	beq lbl_8012668C
/* 8012663C 0012359C  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 80126640 001235A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80126644 001235A4  C0 A2 97 D8 */	lfs f5, lbl_805AB4F8@sda21(r2)
/* 80126648 001235A8  C0 45 01 3C */	lfs f2, 0x13c(r5)
/* 8012664C 001235AC  C0 25 01 40 */	lfs f1, 0x140(r5)
/* 80126650 001235B0  C0 05 01 38 */	lfs f0, 0x138(r5)
/* 80126654 001235B4  EC 85 00 B2 */	fmuls f4, f5, f2
/* 80126658 001235B8  C0 C5 00 50 */	lfs f6, 0x50(r5)
/* 8012665C 001235BC  EC 45 00 72 */	fmuls f2, f5, f1
/* 80126660 001235C0  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 80126664 001235C4  EC 05 00 32 */	fmuls f0, f5, f0
/* 80126668 001235C8  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8012666C 001235CC  EC 86 20 2A */	fadds f4, f6, f4
/* 80126670 001235D0  EC 43 10 2A */	fadds f2, f3, f2
/* 80126674 001235D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80126678 001235D8  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8012667C 001235DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80126680 001235E0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80126684 001235E4  48 00 6D E1 */	bl Blown__17CScriptCoverPointCFRC9CVector3f
/* 80126688 001235E8  7C 7F 1B 78 */	mr r31, r3
lbl_8012668C:
/* 8012668C 001235EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80126690 001235F0  7F E3 FB 78 */	mr r3, r31
/* 80126694 001235F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80126698 001235F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012669C 001235FC  7C 08 03 A6 */	mtlr r0
/* 801266A0 00123600  38 21 00 20 */	addi r1, r1, 0x20
/* 801266A4 00123604  4E 80 00 20 */	blr

.global CoverBlown__12CSpacePirateFR13CStateManagerf
CoverBlown__12CSpacePirateFR13CStateManagerf:
/* 801266A8 00123608  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801266AC 0012360C  7C 08 02 A6 */	mflr r0
/* 801266B0 00123610  90 01 00 44 */	stw r0, 0x44(r1)
/* 801266B4 00123614  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801266B8 00123618  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801266BC 0012361C  3B C0 00 01 */	li r30, 1
/* 801266C0 00123620  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801266C4 00123624  7C 9D 23 78 */	mr r29, r4
/* 801266C8 00123628  93 81 00 30 */	stw r28, 0x30(r1)
/* 801266CC 0012362C  7C 7C 1B 78 */	mr r28, r3
/* 801266D0 00123630  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 801266D4 00123634  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 801266D8 00123638  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801266DC 0012363C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801266E0 00123640  EC 00 00 32 */	fmuls f0, f0, f0
/* 801266E4 00123644  C0 85 00 40 */	lfs f4, 0x40(r5)
/* 801266E8 00123648  EC A2 08 28 */	fsubs f5, f2, f1
/* 801266EC 0012364C  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801266F0 00123650  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801266F4 00123654  EC 84 08 28 */	fsubs f4, f4, f1
/* 801266F8 00123658  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801266FC 0012365C  EC 25 01 72 */	fmuls f1, f5, f5
/* 80126700 00123660  EC 43 10 28 */	fsubs f2, f3, f2
/* 80126704 00123664  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80126708 00123668  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8012670C 0012366C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80126710 00123670  40 81 00 CC */	ble lbl_801267DC
/* 80126714 00123674  A0 1C 06 40 */	lhz r0, 0x640(r28)
/* 80126718 00123678  38 A1 00 08 */	addi r5, r1, 8
/* 8012671C 0012367C  B0 01 00 08 */	sth r0, 8(r1)
/* 80126720 00123680  4B F5 61 8D */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80126724 00123684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80126728 00123688  41 82 00 B4 */	beq lbl_801267DC
/* 8012672C 0012368C  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 80126730 00123690  38 81 00 18 */	addi r4, r1, 0x18
/* 80126734 00123694  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80126738 00123698  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8012673C 0012369C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80126740 001236A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80126744 001236A4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80126748 001236A8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8012674C 001236AC  48 00 6D 19 */	bl Blown__17CScriptCoverPointCFRC9CVector3f
/* 80126750 001236B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80126754 001236B4  7C 7E 1B 78 */	mr r30, r3
/* 80126758 001236B8  40 82 00 84 */	bne lbl_801267DC
/* 8012675C 001236BC  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80126760 001236C0  C0 1C 06 44 */	lfs f0, 0x644(r28)
/* 80126764 001236C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80126768 001236C8  40 82 00 74 */	bne lbl_801267DC
/* 8012676C 001236CC  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80126770 001236D0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80126774 001236D4  2C 00 00 03 */	cmpwi r0, 3
/* 80126778 001236D8  41 82 00 64 */	beq lbl_801267DC
/* 8012677C 001236DC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80126780 001236E0  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 80126784 001236E4  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 80126788 001236E8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8012678C 001236EC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80126790 001236F0  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80126794 001236F4  C0 63 00 04 */	lfs f3, 4(r3)
/* 80126798 001236F8  EC C1 00 28 */	fsubs f6, f1, f0
/* 8012679C 001236FC  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 801267A0 00123700  EC 22 00 B2 */	fmuls f1, f2, f2
/* 801267A4 00123704  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 801267A8 00123708  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 801267AC 0012370C  EC A4 10 28 */	fsubs f5, f4, f2
/* 801267B0 00123710  EC 26 09 BA */	fmadds f1, f6, f6, f1
/* 801267B4 00123714  C0 83 00 00 */	lfs f4, 0(r3)
/* 801267B8 00123718  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801267BC 0012371C  C0 43 00 08 */	lfs f2, 8(r3)
/* 801267C0 00123720  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801267C4 00123724  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 801267C8 00123728  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 801267CC 0012372C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801267D0 00123730  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801267D4 00123734  40 81 00 08 */	ble lbl_801267DC
/* 801267D8 00123738  3B C0 00 01 */	li r30, 1
lbl_801267DC:
/* 801267DC 0012373C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801267E0 00123740  7F C3 F3 78 */	mr r3, r30
/* 801267E4 00123744  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801267E8 00123748  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801267EC 0012374C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801267F0 00123750  83 81 00 30 */	lwz r28, 0x30(r1)
/* 801267F4 00123754  7C 08 03 A6 */	mtlr r0
/* 801267F8 00123758  38 21 00 40 */	addi r1, r1, 0x40
/* 801267FC 0012375C  4E 80 00 20 */	blr

.global CoverFind__12CSpacePirateFR13CStateManagerf
CoverFind__12CSpacePirateFR13CStateManagerf:
/* 80126800 00123760  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80126804 00123764  7C 08 02 A6 */	mflr r0
/* 80126808 00123768  90 01 00 94 */	stw r0, 0x94(r1)
/* 8012680C 0012376C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80126810 00123770  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80126814 00123774  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80126818 00123778  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 8012681C 0012377C  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 80126820 00123780  C0 03 05 70 */	lfs f0, 0x570(r3)
/* 80126824 00123784  7C 7A 1B 78 */	mr r26, r3
/* 80126828 00123788  83 E4 08 40 */	lwz r31, 0x840(r4)
/* 8012682C 0012378C  7C 9B 23 78 */	mr r27, r4
/* 80126830 00123790  EF C0 00 32 */	fmuls f30, f0, f0
/* 80126834 00123794  3B C0 00 00 */	li r30, 0
/* 80126838 00123798  AB 9F 20 08 */	lha r28, 0x2008(r31)
/* 8012683C 0012379C  3B A0 00 00 */	li r29, 0
/* 80126840 001237A0  48 00 01 30 */	b lbl_80126970
lbl_80126844:
/* 80126844 001237A4  7F E3 FB 78 */	mr r3, r31
/* 80126848 001237A8  7F 84 E3 78 */	mr r4, r28
/* 8012684C 001237AC  4B EE 94 91 */	bl __vc__11CObjectListCFi
/* 80126850 001237B0  7C 64 1B 78 */	mr r4, r3
/* 80126854 001237B4  38 61 00 18 */	addi r3, r1, 0x18
/* 80126858 001237B8  4B F8 41 D5 */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 8012685C 001237BC  83 23 00 04 */	lwz r25, 4(r3)
/* 80126860 001237C0  28 19 00 00 */	cmplwi r25, 0
/* 80126864 001237C4  41 82 00 F0 */	beq lbl_80126954
/* 80126868 001237C8  88 19 00 30 */	lbz r0, 0x30(r25)
/* 8012686C 001237CC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80126870 001237D0  41 82 00 E4 */	beq lbl_80126954
/* 80126874 001237D4  7F 23 CB 78 */	mr r3, r25
/* 80126878 001237D8  48 00 6D 7D */	bl ShouldLandHere__17CScriptCoverPointCFv
/* 8012687C 001237DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80126880 001237E0  40 82 00 D4 */	bne lbl_80126954
/* 80126884 001237E4  A0 1A 00 08 */	lhz r0, 8(r26)
/* 80126888 001237E8  7F 23 CB 78 */	mr r3, r25
/* 8012688C 001237EC  38 81 00 14 */	addi r4, r1, 0x14
/* 80126890 001237F0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80126894 001237F4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80126898 001237F8  48 00 6B 7D */	bl GetInUse__17CScriptCoverPointCF9TUniqueId
/* 8012689C 001237FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801268A0 00123800  40 82 00 B4 */	bne lbl_80126954
/* 801268A4 00123804  80 79 00 04 */	lwz r3, 4(r25)
/* 801268A8 00123808  80 1A 00 04 */	lwz r0, 4(r26)
/* 801268AC 0012380C  7C 03 00 00 */	cmpw r3, r0
/* 801268B0 00123810  40 82 00 A4 */	bne lbl_80126954
/* 801268B4 00123814  A0 79 00 08 */	lhz r3, 8(r25)
/* 801268B8 00123818  A0 1A 06 42 */	lhz r0, 0x642(r26)
/* 801268BC 0012381C  7C 03 00 40 */	cmplw r3, r0
/* 801268C0 00123820  41 82 00 94 */	beq lbl_80126954
/* 801268C4 00123824  C0 DA 00 50 */	lfs f6, 0x50(r26)
/* 801268C8 00123828  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 801268CC 0012382C  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 801268D0 00123830  EC A6 00 28 */	fsubs f5, f6, f0
/* 801268D4 00123834  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 801268D8 00123838  C0 FA 00 60 */	lfs f7, 0x60(r26)
/* 801268DC 0012383C  EC 61 00 28 */	fsubs f3, f1, f0
/* 801268E0 00123840  C0 59 00 60 */	lfs f2, 0x60(r25)
/* 801268E4 00123844  EC 05 01 72 */	fmuls f0, f5, f5
/* 801268E8 00123848  EC 87 10 28 */	fsubs f4, f7, f2
/* 801268EC 0012384C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801268F0 00123850  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801268F4 00123854  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 801268F8 00123858  EC 44 01 32 */	fmuls f2, f4, f4
/* 801268FC 0012385C  EC 01 00 2A */	fadds f0, f1, f0
/* 80126900 00123860  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80126904 00123864  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 80126908 00123868  EF E2 00 2A */	fadds f31, f2, f0
/* 8012690C 0012386C  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80126910 00123870  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80126914 00123874  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80126918 00123878  40 80 00 3C */	bge lbl_80126954
/* 8012691C 0012387C  80 BB 08 4C */	lwz r5, 0x84c(r27)
/* 80126920 00123880  7F 23 CB 78 */	mr r3, r25
/* 80126924 00123884  38 81 00 28 */	addi r4, r1, 0x28
/* 80126928 00123888  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 8012692C 0012388C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80126930 00123890  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80126934 00123894  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80126938 00123898  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012693C 0012389C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80126940 001238A0  48 00 6B 25 */	bl Blown__17CScriptCoverPointCFRC9CVector3f
/* 80126944 001238A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80126948 001238A8  40 82 00 0C */	bne lbl_80126954
/* 8012694C 001238AC  FF C0 F8 90 */	fmr f30, f31
/* 80126950 001238B0  7F 3D CB 78 */	mr r29, r25
lbl_80126954:
/* 80126954 001238B4  2C 1C FF FF */	cmpwi r28, -1
/* 80126958 001238B8  41 82 00 14 */	beq lbl_8012696C
/* 8012695C 001238BC  57 83 18 38 */	slwi r3, r28, 3
/* 80126960 001238C0  38 03 00 08 */	addi r0, r3, 8
/* 80126964 001238C4  7F 9F 02 AE */	lhax r28, r31, r0
/* 80126968 001238C8  48 00 00 08 */	b lbl_80126970
lbl_8012696C:
/* 8012696C 001238CC  3B 80 FF FF */	li r28, -1
lbl_80126970:
/* 80126970 001238D0  2C 1C FF FF */	cmpwi r28, -1
/* 80126974 001238D4  40 82 FE D0 */	bne lbl_80126844
/* 80126978 001238D8  28 1D 00 00 */	cmplwi r29, 0
/* 8012697C 001238DC  41 82 00 88 */	beq lbl_80126A04
/* 80126980 001238E0  7F 43 D3 78 */	mr r3, r26
/* 80126984 001238E4  7F 64 DB 78 */	mr r4, r27
/* 80126988 001238E8  38 BA 06 40 */	addi r5, r26, 0x640
/* 8012698C 001238EC  4B F5 5E D1 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 80126990 001238F0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80126994 001238F4  7F 63 DB 78 */	mr r3, r27
/* 80126998 001238F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8012699C 001238FC  B0 01 00 08 */	sth r0, 8(r1)
/* 801269A0 00123900  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801269A4 00123904  4B F2 5B D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801269A8 00123908  7C 64 1B 78 */	mr r4, r3
/* 801269AC 0012390C  38 61 00 20 */	addi r3, r1, 0x20
/* 801269B0 00123910  4B F8 40 7D */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 801269B4 00123914  80 83 00 04 */	lwz r4, 4(r3)
/* 801269B8 00123918  28 04 00 00 */	cmplwi r4, 0
/* 801269BC 0012391C  41 82 00 48 */	beq lbl_80126A04
/* 801269C0 00123920  7F 43 D3 78 */	mr r3, r26
/* 801269C4 00123924  38 BA 06 40 */	addi r5, r26, 0x640
/* 801269C8 00123928  4B F5 5E 4D */	bl SetCoverPoint__10CPatternedFP17CScriptCoverPointR9TUniqueId
/* 801269CC 0012392C  A0 7A 06 40 */	lhz r3, 0x640(r26)
/* 801269D0 00123930  38 00 00 00 */	li r0, 0
/* 801269D4 00123934  3B C0 00 01 */	li r30, 1
/* 801269D8 00123938  B0 7A 06 42 */	sth r3, 0x642(r26)
/* 801269DC 0012393C  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 801269E0 00123940  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 801269E4 00123944  FC 00 00 50 */	fneg f0, f0
/* 801269E8 00123948  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 801269EC 0012394C  FC 20 08 50 */	fneg f1, f1
/* 801269F0 00123950  FC 40 10 50 */	fneg f2, f2
/* 801269F4 00123954  D0 1A 06 54 */	stfs f0, 0x654(r26)
/* 801269F8 00123958  D0 3A 06 58 */	stfs f1, 0x658(r26)
/* 801269FC 0012395C  D0 5A 06 5C */	stfs f2, 0x65c(r26)
/* 80126A00 00123960  90 1A 03 0C */	stw r0, 0x30c(r26)
lbl_80126A04:
/* 80126A04 00123964  7F C3 F3 78 */	mr r3, r30
/* 80126A08 00123968  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80126A0C 0012396C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80126A10 00123970  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80126A14 00123974  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80126A18 00123978  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 80126A1C 0012397C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80126A20 00123980  7C 08 03 A6 */	mtlr r0
/* 80126A24 00123984  38 21 00 90 */	addi r1, r1, 0x90
/* 80126A28 00123988  4E 80 00 20 */	blr

.global CoverCheck__12CSpacePirateFR13CStateManagerf
CoverCheck__12CSpacePirateFR13CStateManagerf:
/* 80126A2C 0012398C  88 03 06 38 */	lbz r0, 0x638(r3)
/* 80126A30 00123990  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 80126A34 00123994  4E 80 00 20 */	blr

.global AggressionCheck__12CSpacePirateFR13CStateManagerf
AggressionCheck__12CSpacePirateFR13CStateManagerf:
/* 80126A38 00123998  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80126A3C 0012399C  7C 08 02 A6 */	mflr r0
/* 80126A40 001239A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80126A44 001239A4  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80126A48 001239A8  3B E0 00 00 */	li r31, 0
/* 80126A4C 001239AC  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80126A50 001239B0  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80126A54 001239B4  40 82 01 20 */	bne lbl_80126B74
/* 80126A58 001239B8  88 03 06 38 */	lbz r0, 0x638(r3)
/* 80126A5C 001239BC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80126A60 001239C0  41 82 00 0C */	beq lbl_80126A6C
/* 80126A64 001239C4  3B E0 00 01 */	li r31, 1
/* 80126A68 001239C8  48 00 00 2C */	b lbl_80126A94
lbl_80126A6C:
/* 80126A6C 001239CC  3C 80 80 57 */	lis r4, lbl_8056F85C@ha
/* 80126A70 001239D0  38 84 F8 5C */	addi r4, r4, lbl_8056F85C@l
/* 80126A74 001239D4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 80126A78 001239D8  2C 00 00 00 */	cmpwi r0, 0
/* 80126A7C 001239DC  40 82 00 18 */	bne lbl_80126A94
/* 80126A80 001239E0  C0 23 07 AC */	lfs f1, 0x7ac(r3)
/* 80126A84 001239E4  C0 02 98 20 */	lfs f0, lbl_805AB540@sda21(r2)
/* 80126A88 001239E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80126A8C 001239EC  40 81 00 08 */	ble lbl_80126A94
/* 80126A90 001239F0  3B E0 00 01 */	li r31, 1
lbl_80126A94:
/* 80126A94 001239F4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80126A98 001239F8  41 82 00 DC */	beq lbl_80126B74
/* 80126A9C 001239FC  38 00 00 00 */	li r0, 0
/* 80126AA0 00123A00  3C 80 80 57 */	lis r4, lbl_8056F85C@ha
/* 80126AA4 00123A04  90 03 03 0C */	stw r0, 0x30c(r3)
/* 80126AA8 00123A08  3B C4 F8 5C */	addi r30, r4, lbl_8056F85C@l
/* 80126AAC 00123A0C  83 9E 00 08 */	lwz r28, 8(r30)
/* 80126AB0 00123A10  80 1E 00 04 */	lwz r0, 4(r30)
/* 80126AB4 00123A14  93 81 00 08 */	stw r28, 8(r1)
/* 80126AB8 00123A18  A3 63 00 08 */	lhz r27, 8(r3)
/* 80126ABC 00123A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80126AC0 00123A20  90 01 00 18 */	stw r0, 0x18(r1)
/* 80126AC4 00123A24  93 81 00 0C */	stw r28, 0xc(r1)
/* 80126AC8 00123A28  93 81 00 10 */	stw r28, 0x10(r1)
/* 80126ACC 00123A2C  48 00 00 10 */	b lbl_80126ADC
lbl_80126AD0:
/* 80126AD0 00123A30  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80126AD4 00123A34  80 03 00 04 */	lwz r0, 4(r3)
/* 80126AD8 00123A38  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80126ADC:
/* 80126ADC 00123A3C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80126AE0 00123A40  7C 00 E0 40 */	cmplw r0, r28
/* 80126AE4 00123A44  41 82 00 14 */	beq lbl_80126AF8
/* 80126AE8 00123A48  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80126AEC 00123A4C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80126AF0 00123A50  7C 00 D8 40 */	cmplw r0, r27
/* 80126AF4 00123A54  40 82 FF DC */	bne lbl_80126AD0
lbl_80126AF8:
/* 80126AF8 00123A58  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80126AFC 00123A5C  80 01 00 08 */	lwz r0, 8(r1)
/* 80126B00 00123A60  7C 03 00 40 */	cmplw r3, r0
/* 80126B04 00123A64  40 82 00 70 */	bne lbl_80126B74
/* 80126B08 00123A68  3C 60 80 3D */	lis r3, lbl_803CFF70@ha
/* 80126B0C 00123A6C  83 BC 00 00 */	lwz r29, 0(r28)
/* 80126B10 00123A70  38 83 FF 70 */	addi r4, r3, lbl_803CFF70@l
/* 80126B14 00123A74  38 60 00 0A */	li r3, 0xa
/* 80126B18 00123A78  38 84 00 0A */	addi r4, r4, 0xa
/* 80126B1C 00123A7C  38 A0 00 00 */	li r5, 0
/* 80126B20 00123A80  48 1E EC F9 */	bl __nwa__FUlPCcPCc
/* 80126B24 00123A84  28 03 00 00 */	cmplwi r3, 0
/* 80126B28 00123A88  41 82 00 0C */	beq lbl_80126B34
/* 80126B2C 00123A8C  93 A3 00 00 */	stw r29, 0(r3)
/* 80126B30 00123A90  93 83 00 04 */	stw r28, 4(r3)
lbl_80126B34:
/* 80126B34 00123A94  34 83 00 08 */	addic. r4, r3, 8
/* 80126B38 00123A98  41 82 00 08 */	beq lbl_80126B40
/* 80126B3C 00123A9C  B3 64 00 00 */	sth r27, 0(r4)
lbl_80126B40:
/* 80126B40 00123AA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80126B44 00123AA4  7C 1C 00 40 */	cmplw r28, r0
/* 80126B48 00123AA8  40 82 00 08 */	bne lbl_80126B50
/* 80126B4C 00123AAC  90 7E 00 04 */	stw r3, 4(r30)
lbl_80126B50:
/* 80126B50 00123AB0  80 A3 00 00 */	lwz r5, 0(r3)
/* 80126B54 00123AB4  3C 80 80 57 */	lis r4, lbl_8056F85C@ha
/* 80126B58 00123AB8  38 84 F8 5C */	addi r4, r4, lbl_8056F85C@l
/* 80126B5C 00123ABC  90 65 00 04 */	stw r3, 4(r5)
/* 80126B60 00123AC0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80126B64 00123AC4  90 65 00 00 */	stw r3, 0(r5)
/* 80126B68 00123AC8  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80126B6C 00123ACC  38 03 00 01 */	addi r0, r3, 1
/* 80126B70 00123AD0  90 04 00 14 */	stw r0, 0x14(r4)
lbl_80126B74:
/* 80126B74 00123AD4  7F E3 FB 78 */	mr r3, r31
/* 80126B78 00123AD8  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 80126B7C 00123ADC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80126B80 00123AE0  7C 08 03 A6 */	mtlr r0
/* 80126B84 00123AE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80126B88 00123AE8  4E 80 00 20 */	blr

.global Lurk__12CSpacePirateFR13CStateManager9EStateMsgf
Lurk__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80126B8C 00123AEC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80126B90 00123AF0  7C 08 02 A6 */	mflr r0
/* 80126B94 00123AF4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80126B98 00123AF8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80126B9C 00123AFC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80126BA0 00123B00  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80126BA4 00123B04  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80126BA8 00123B08  FF E0 08 90 */	fmr f31, f1
/* 80126BAC 00123B0C  2C 05 00 01 */	cmpwi r5, 1
/* 80126BB0 00123B10  7C 7E 1B 78 */	mr r30, r3
/* 80126BB4 00123B14  7C 9F 23 78 */	mr r31, r4
/* 80126BB8 00123B18  41 82 01 34 */	beq lbl_80126CEC
/* 80126BBC 00123B1C  40 80 00 10 */	bge lbl_80126BCC
/* 80126BC0 00123B20  2C 05 00 00 */	cmpwi r5, 0
/* 80126BC4 00123B24  40 80 00 14 */	bge lbl_80126BD8
/* 80126BC8 00123B28  48 00 02 E4 */	b lbl_80126EAC
lbl_80126BCC:
/* 80126BCC 00123B2C  2C 05 00 03 */	cmpwi r5, 3
/* 80126BD0 00123B30  40 80 02 DC */	bge lbl_80126EAC
/* 80126BD4 00123B34  48 00 02 B8 */	b lbl_80126E8C
lbl_80126BD8:
/* 80126BD8 00123B38  38 BE 06 40 */	addi r5, r30, 0x640
/* 80126BDC 00123B3C  4B F5 5C 81 */	bl ReleaseCoverPoint__10CPatternedFR13CStateManagerR9TUniqueId
/* 80126BE0 00123B40  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80126BE4 00123B44  38 80 00 03 */	li r4, 3
/* 80126BE8 00123B48  D0 1E 06 44 */	stfs f0, 0x644(r30)
/* 80126BEC 00123B4C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126BF0 00123B50  48 01 3D E9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80126BF4 00123B54  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80126BF8 00123B58  38 60 00 01 */	li r3, 1
/* 80126BFC 00123B5C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80126C00 00123B60  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80126C04 00123B64  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80126C08 00123B68  C0 42 98 4C */	lfs f2, lbl_805AB56C@sda21(r2)
/* 80126C0C 00123B6C  D0 3E 07 AC */	stfs f1, 0x7ac(r30)
/* 80126C10 00123B70  C3 FE 05 68 */	lfs f31, 0x568(r30)
/* 80126C14 00123B74  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80126C18 00123B78  48 1E B9 2D */	bl Range__9CRandom16Fff
/* 80126C1C 00123B7C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80126C20 00123B80  7C 60 00 26 */	mfcr r3
/* 80126C24 00123B84  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80126C28 00123B88  50 60 36 B4 */	rlwimi r0, r3, 6, 0x1a, 0x1a
/* 80126C2C 00123B8C  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80126C30 00123B90  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80126C34 00123B94  C0 42 98 4C */	lfs f2, lbl_805AB56C@sda21(r2)
/* 80126C38 00123B98  C3 FE 05 6C */	lfs f31, 0x56c(r30)
/* 80126C3C 00123B9C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80126C40 00123BA0  48 1E B9 05 */	bl Range__9CRandom16Fff
/* 80126C44 00123BA4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80126C48 00123BA8  7C 60 00 26 */	mfcr r3
/* 80126C4C 00123BAC  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80126C50 00123BB0  50 60 2E F6 */	rlwimi r0, r3, 5, 0x1b, 0x1b
/* 80126C54 00123BB4  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80126C58 00123BB8  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80126C5C 00123BBC  C0 42 98 4C */	lfs f2, lbl_805AB56C@sda21(r2)
/* 80126C60 00123BC0  C3 FE 05 FC */	lfs f31, 0x5fc(r30)
/* 80126C64 00123BC4  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80126C68 00123BC8  48 1E B8 DD */	bl Range__9CRandom16Fff
/* 80126C6C 00123BCC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80126C70 00123BD0  7C 60 00 26 */	mfcr r3
/* 80126C74 00123BD4  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80126C78 00123BD8  50 60 27 38 */	rlwimi r0, r3, 4, 0x1c, 0x1c
/* 80126C7C 00123BDC  38 A0 00 01 */	li r5, 1
/* 80126C80 00123BE0  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80126C84 00123BE4  38 7E 07 64 */	addi r3, r30, 0x764
/* 80126C88 00123BE8  38 80 00 01 */	li r4, 1
/* 80126C8C 00123BEC  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80126C90 00123BF0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80126C94 00123BF4  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80126C98 00123BF8  48 04 E5 8D */	bl SetActive__13CBoneTrackingFb
/* 80126C9C 00123BFC  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80126CA0 00123C00  38 7E 07 64 */	addi r3, r30, 0x764
/* 80126CA4 00123C04  38 81 00 0C */	addi r4, r1, 0xc
/* 80126CA8 00123C08  A0 05 00 08 */	lhz r0, 8(r5)
/* 80126CAC 00123C0C  B0 01 00 08 */	sth r0, 8(r1)
/* 80126CB0 00123C10  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80126CB4 00123C14  48 04 E5 65 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80126CB8 00123C18  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80126CBC 00123C1C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80126CC0 00123C20  41 82 00 18 */	beq lbl_80126CD8
/* 80126CC4 00123C24  38 00 00 04 */	li r0, 4
/* 80126CC8 00123C28  38 80 00 03 */	li r4, 3
/* 80126CCC 00123C2C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80126CD0 00123C30  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126CD4 00123C34  48 01 3D 05 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80126CD8:
/* 80126CD8 00123C38  88 1E 06 3A */	lbz r0, 0x63a(r30)
/* 80126CDC 00123C3C  38 60 00 00 */	li r3, 0
/* 80126CE0 00123C40  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80126CE4 00123C44  98 1E 06 3A */	stb r0, 0x63a(r30)
/* 80126CE8 00123C48  48 00 01 C4 */	b lbl_80126EAC
lbl_80126CEC:
/* 80126CEC 00123C4C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126CF0 00123C50  38 80 00 08 */	li r4, 8
/* 80126CF4 00123C54  48 01 3E C1 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 80126CF8 00123C58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80126CFC 00123C5C  41 82 01 04 */	beq lbl_80126E00
/* 80126D00 00123C60  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80126D04 00123C64  2C 00 00 00 */	cmpwi r0, 0
/* 80126D08 00123C68  41 82 00 3C */	beq lbl_80126D44
/* 80126D0C 00123C6C  3C 80 80 3E */	lis r4, lbl_803E0758@ha
/* 80126D10 00123C70  7F C3 F3 78 */	mr r3, r30
/* 80126D14 00123C74  38 E4 07 58 */	addi r7, r4, lbl_803E0758@l
/* 80126D18 00123C78  7F E4 FB 78 */	mr r4, r31
/* 80126D1C 00123C7C  81 27 00 00 */	lwz r9, 0(r7)
/* 80126D20 00123C80  38 C1 00 34 */	addi r6, r1, 0x34
/* 80126D24 00123C84  81 07 00 04 */	lwz r8, 4(r7)
/* 80126D28 00123C88  38 A0 00 08 */	li r5, 8
/* 80126D2C 00123C8C  80 07 00 08 */	lwz r0, 8(r7)
/* 80126D30 00123C90  38 E0 00 00 */	li r7, 0
/* 80126D34 00123C94  91 21 00 34 */	stw r9, 0x34(r1)
/* 80126D38 00123C98  91 01 00 38 */	stw r8, 0x38(r1)
/* 80126D3C 00123C9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80126D40 00123CA0  4B F5 5A 75 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
lbl_80126D44:
/* 80126D44 00123CA4  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80126D48 00123CA8  2C 00 00 02 */	cmpwi r0, 2
/* 80126D4C 00123CAC  41 82 00 B4 */	beq lbl_80126E00
/* 80126D50 00123CB0  7F C4 F3 78 */	mr r4, r30
/* 80126D54 00123CB4  7F E5 FB 78 */	mr r5, r31
/* 80126D58 00123CB8  38 61 00 28 */	addi r3, r1, 0x28
/* 80126D5C 00123CBC  48 00 16 E9 */	bl GetTargetPos__12CSpacePirateFR13CStateManager
/* 80126D60 00123CC0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80126D64 00123CC4  38 61 00 10 */	addi r3, r1, 0x10
/* 80126D68 00123CC8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80126D6C 00123CCC  38 81 00 40 */	addi r4, r1, 0x40
/* 80126D70 00123CD0  D0 3E 02 E0 */	stfs f1, 0x2e0(r30)
/* 80126D74 00123CD4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80126D78 00123CD8  D0 3E 02 E4 */	stfs f1, 0x2e4(r30)
/* 80126D7C 00123CDC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80126D80 00123CE0  D0 3E 02 E8 */	stfs f1, 0x2e8(r30)
/* 80126D84 00123CE4  C0 5E 02 E8 */	lfs f2, 0x2e8(r30)
/* 80126D88 00123CE8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80126D8C 00123CEC  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 80126D90 00123CF0  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80126D94 00123CF4  EC A2 08 28 */	fsubs f5, f2, f1
/* 80126D98 00123CF8  C0 5E 02 E0 */	lfs f2, 0x2e0(r30)
/* 80126D9C 00123CFC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80126DA0 00123D00  EC 64 18 28 */	fsubs f3, f4, f3
/* 80126DA4 00123D04  EC 22 08 28 */	fsubs f1, f2, f1
/* 80126DA8 00123D08  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 80126DAC 00123D0C  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 80126DB0 00123D10  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80126DB4 00123D14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80126DB8 00123D18  48 1E DA 99 */	bl AsNormalized__9CVector3fCFv
/* 80126DBC 00123D1C  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 80126DC0 00123D20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80126DC4 00123D24  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80126DC8 00123D28  EC 04 00 32 */	fmuls f0, f4, f0
/* 80126DCC 00123D2C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80126DD0 00123D30  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 80126DD4 00123D34  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80126DD8 00123D38  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 80126DDC 00123D3C  C0 02 97 C8 */	lfs f0, lbl_805AB4E8@sda21(r2)
/* 80126DE0 00123D40  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80126DE4 00123D44  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 80126DE8 00123D48  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80126DEC 00123D4C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80126DF0 00123D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80126DF4 00123D54  40 80 00 0C */	bge lbl_80126E00
/* 80126DF8 00123D58  38 00 00 01 */	li r0, 1
/* 80126DFC 00123D5C  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_80126E00:
/* 80126E00 00123D60  88 1E 06 35 */	lbz r0, 0x635(r30)
/* 80126E04 00123D64  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80126E08 00123D68  41 82 00 64 */	beq lbl_80126E6C
/* 80126E0C 00123D6C  88 1E 06 39 */	lbz r0, 0x639(r30)
/* 80126E10 00123D70  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80126E14 00123D74  41 82 00 58 */	beq lbl_80126E6C
/* 80126E18 00123D78  C0 5E 07 BC */	lfs f2, 0x7bc(r30)
/* 80126E1C 00123D7C  C0 3E 03 04 */	lfs f1, 0x304(r30)
/* 80126E20 00123D80  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80126E24 00123D84  40 81 00 20 */	ble lbl_80126E44
/* 80126E28 00123D88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126E2C 00123D8C  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 80126E30 00123D90  2C 00 00 03 */	cmpwi r0, 3
/* 80126E34 00123D94  40 82 00 10 */	bne lbl_80126E44
/* 80126E38 00123D98  38 80 00 05 */	li r4, 5
/* 80126E3C 00123D9C  48 01 3B 9D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80126E40 00123DA0  48 00 00 2C */	b lbl_80126E6C
lbl_80126E44:
/* 80126E44 00123DA4  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80126E48 00123DA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80126E4C 00123DAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80126E50 00123DB0  40 80 00 1C */	bge lbl_80126E6C
/* 80126E54 00123DB4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126E58 00123DB8  80 03 02 EC */	lwz r0, 0x2ec(r3)
/* 80126E5C 00123DBC  2C 00 00 05 */	cmpwi r0, 5
/* 80126E60 00123DC0  40 82 00 0C */	bne lbl_80126E6C
/* 80126E64 00123DC4  38 80 00 03 */	li r4, 3
/* 80126E68 00123DC8  48 01 3B 71 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80126E6C:
/* 80126E6C 00123DCC  7F C3 F3 78 */	mr r3, r30
/* 80126E70 00123DD0  7F E4 FB 78 */	mr r4, r31
/* 80126E74 00123DD4  48 00 21 29 */	bl UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
/* 80126E78 00123DD8  FC 20 F8 90 */	fmr f1, f31
/* 80126E7C 00123DDC  7F C3 F3 78 */	mr r3, r30
/* 80126E80 00123DE0  7F E4 FB 78 */	mr r4, r31
/* 80126E84 00123DE4  48 00 20 5D */	bl UpdateHeldPosition__12CSpacePirateFR13CStateManagerf
/* 80126E88 00123DE8  48 00 00 24 */	b lbl_80126EAC
lbl_80126E8C:
/* 80126E8C 00123DEC  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80126E90 00123DF0  38 60 00 00 */	li r3, 0
/* 80126E94 00123DF4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80126E98 00123DF8  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80126E9C 00123DFC  88 1E 06 38 */	lbz r0, 0x638(r30)
/* 80126EA0 00123E00  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80126EA4 00123E04  98 1E 06 38 */	stb r0, 0x638(r30)
/* 80126EA8 00123E08  90 7E 03 2C */	stw r3, 0x32c(r30)
lbl_80126EAC:
/* 80126EAC 00123E0C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80126EB0 00123E10  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80126EB4 00123E14  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80126EB8 00123E18  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80126EBC 00123E1C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80126EC0 00123E20  7C 08 03 A6 */	mtlr r0
/* 80126EC4 00123E24  38 21 00 70 */	addi r1, r1, 0x70
/* 80126EC8 00123E28  4E 80 00 20 */	blr

.global GetUp__12CSpacePirateFR13CStateManager9EStateMsgf
GetUp__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80126ECC 00123E2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80126ED0 00123E30  7C 08 02 A6 */	mflr r0
/* 80126ED4 00123E34  90 01 00 54 */	stw r0, 0x54(r1)
/* 80126ED8 00123E38  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80126EDC 00123E3C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80126EE0 00123E40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80126EE4 00123E44  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80126EE8 00123E48  FF E0 08 90 */	fmr f31, f1
/* 80126EEC 00123E4C  2C 05 00 01 */	cmpwi r5, 1
/* 80126EF0 00123E50  7C 7E 1B 78 */	mr r30, r3
/* 80126EF4 00123E54  7C 9F 23 78 */	mr r31, r4
/* 80126EF8 00123E58  41 82 00 38 */	beq lbl_80126F30
/* 80126EFC 00123E5C  40 80 00 10 */	bge lbl_80126F0C
/* 80126F00 00123E60  2C 05 00 00 */	cmpwi r5, 0
/* 80126F04 00123E64  40 80 00 14 */	bge lbl_80126F18
/* 80126F08 00123E68  48 00 00 D8 */	b lbl_80126FE0
lbl_80126F0C:
/* 80126F0C 00123E6C  2C 05 00 03 */	cmpwi r5, 3
/* 80126F10 00123E70  40 80 00 D0 */	bge lbl_80126FE0
/* 80126F14 00123E74  48 00 00 C4 */	b lbl_80126FD8
lbl_80126F18:
/* 80126F18 00123E78  38 00 00 01 */	li r0, 1
/* 80126F1C 00123E7C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80126F20 00123E80  48 00 27 19 */	bl SquadReset__12CSpacePirateFR13CStateManager
/* 80126F24 00123E84  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80126F28 00123E88  D0 1E 08 DC */	stfs f0, 0x8dc(r30)
/* 80126F2C 00123E8C  48 00 00 B4 */	b lbl_80126FE0
lbl_80126F30:
/* 80126F30 00123E90  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80126F34 00123E94  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80126F38 00123E98  2C 00 00 02 */	cmpwi r0, 2
/* 80126F3C 00123E9C  40 82 00 54 */	bne lbl_80126F90
/* 80126F40 00123EA0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80126F44 00123EA4  38 7E 06 60 */	addi r3, r30, 0x660
/* 80126F48 00123EA8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80126F4C 00123EAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80126F50 00123EB0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80126F54 00123EB4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80126F58 00123EB8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80126F5C 00123EBC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80126F60 00123EC0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80126F64 00123EC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80126F68 00123EC8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80126F6C 00123ECC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80126F70 00123ED0  48 0A 0C FD */	bl Search__15CPathFindSearchFRC9CVector3fRC9CVector3f
/* 80126F74 00123ED4  2C 03 00 02 */	cmpwi r3, 2
/* 80126F78 00123ED8  40 82 00 18 */	bne lbl_80126F90
/* 80126F7C 00123EDC  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 80126F80 00123EE0  38 60 00 01 */	li r3, 1
/* 80126F84 00123EE4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80126F88 00123EE8  98 1E 04 01 */	stb r0, 0x401(r30)
/* 80126F8C 00123EEC  48 00 00 3C */	b lbl_80126FC8
lbl_80126F90:
/* 80126F90 00123EF0  3C 80 80 3E */	lis r4, lbl_803E074C@ha
/* 80126F94 00123EF4  7F C3 F3 78 */	mr r3, r30
/* 80126F98 00123EF8  38 E4 07 4C */	addi r7, r4, lbl_803E074C@l
/* 80126F9C 00123EFC  7F E4 FB 78 */	mr r4, r31
/* 80126FA0 00123F00  81 27 00 00 */	lwz r9, 0(r7)
/* 80126FA4 00123F04  38 C1 00 08 */	addi r6, r1, 8
/* 80126FA8 00123F08  81 07 00 04 */	lwz r8, 4(r7)
/* 80126FAC 00123F0C  38 A0 00 01 */	li r5, 1
/* 80126FB0 00123F10  80 07 00 08 */	lwz r0, 8(r7)
/* 80126FB4 00123F14  38 E0 00 00 */	li r7, 0
/* 80126FB8 00123F18  91 21 00 08 */	stw r9, 8(r1)
/* 80126FBC 00123F1C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80126FC0 00123F20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80126FC4 00123F24  4B F5 57 F1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
lbl_80126FC8:
/* 80126FC8 00123F28  FC 20 F8 90 */	fmr f1, f31
/* 80126FCC 00123F2C  7F C3 F3 78 */	mr r3, r30
/* 80126FD0 00123F30  4B FF B7 21 */	bl UpdateLeashTimer__12CSpacePirateFf
/* 80126FD4 00123F34  48 00 00 0C */	b lbl_80126FE0
lbl_80126FD8:
/* 80126FD8 00123F38  38 00 00 00 */	li r0, 0
/* 80126FDC 00123F3C  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_80126FE0:
/* 80126FE0 00123F40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80126FE4 00123F44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80126FE8 00123F48  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80126FEC 00123F4C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80126FF0 00123F50  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80126FF4 00123F54  7C 08 03 A6 */	mtlr r0
/* 80126FF8 00123F58  38 21 00 50 */	addi r1, r1, 0x50
/* 80126FFC 00123F5C  4E 80 00 20 */	blr

.global Taunt__12CSpacePirateFR13CStateManager9EStateMsgf
Taunt__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80127000 00123F60  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80127004 00123F64  7C 08 02 A6 */	mflr r0
/* 80127008 00123F68  2C 05 00 01 */	cmpwi r5, 1
/* 8012700C 00123F6C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80127010 00123F70  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80127014 00123F74  7C 9F 23 78 */	mr r31, r4
/* 80127018 00123F78  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 8012701C 00123F7C  7C 7E 1B 78 */	mr r30, r3
/* 80127020 00123F80  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 80127024 00123F84  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 80127028 00123F88  41 82 03 20 */	beq lbl_80127348
/* 8012702C 00123F8C  40 80 00 10 */	bge lbl_8012703C
/* 80127030 00123F90  2C 05 00 00 */	cmpwi r5, 0
/* 80127034 00123F94  40 80 00 14 */	bge lbl_80127048
/* 80127038 00123F98  48 00 03 80 */	b lbl_801273B8
lbl_8012703C:
/* 8012703C 00123F9C  2C 05 00 03 */	cmpwi r5, 3
/* 80127040 00123FA0  40 80 03 78 */	bge lbl_801273B8
/* 80127044 00123FA4  48 00 03 38 */	b lbl_8012737C
lbl_80127048:
/* 80127048 00123FA8  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 8012704C 00123FAC  38 60 00 01 */	li r3, 1
/* 80127050 00123FB0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80127054 00123FB4  38 7E 07 64 */	addi r3, r30, 0x764
/* 80127058 00123FB8  98 1E 06 37 */	stb r0, 0x637(r30)
/* 8012705C 00123FBC  38 80 00 01 */	li r4, 1
/* 80127060 00123FC0  48 04 E1 C5 */	bl SetActive__13CBoneTrackingFb
/* 80127064 00123FC4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80127068 00123FC8  38 7E 07 64 */	addi r3, r30, 0x764
/* 8012706C 00123FCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80127070 00123FD0  A0 05 00 08 */	lhz r0, 8(r5)
/* 80127074 00123FD4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80127078 00123FD8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8012707C 00123FDC  48 04 E1 9D */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 80127080 00123FE0  A0 7E 07 C0 */	lhz r3, 0x7c0(r30)
/* 80127084 00123FE4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80127088 00123FE8  7C 03 00 40 */	cmplw r3, r0
/* 8012708C 00123FEC  40 82 00 10 */	bne lbl_8012709C
/* 80127090 00123FF0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80127094 00123FF4  A0 03 00 08 */	lhz r0, 8(r3)
/* 80127098 00123FF8  B0 1E 07 C0 */	sth r0, 0x7c0(r30)
lbl_8012709C:
/* 8012709C 00123FFC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801270A0 00124000  38 80 00 10 */	li r4, 0x10
/* 801270A4 00124004  48 01 3B 11 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 801270A8 00124008  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801270AC 0012400C  41 82 02 58 */	beq lbl_80127304
/* 801270B0 00124010  88 7E 06 35 */	lbz r3, 0x635(r30)
/* 801270B4 00124014  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 801270B8 00124018  40 82 02 2C */	bne lbl_801272E4
/* 801270BC 0012401C  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 801270C0 00124020  3B A0 00 01 */	li r29, 1
/* 801270C4 00124024  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801270C8 00124028  41 82 01 14 */	beq lbl_801271DC
/* 801270CC 0012402C  38 61 00 28 */	addi r3, r1, 0x28
/* 801270D0 00124030  48 1B BF AD */	bl NoParameter__12CPASAnimParmFv
/* 801270D4 00124034  38 61 00 30 */	addi r3, r1, 0x30
/* 801270D8 00124038  48 1B BF A5 */	bl NoParameter__12CPASAnimParmFv
/* 801270DC 0012403C  38 61 00 38 */	addi r3, r1, 0x38
/* 801270E0 00124040  48 1B BF 9D */	bl NoParameter__12CPASAnimParmFv
/* 801270E4 00124044  38 61 00 40 */	addi r3, r1, 0x40
/* 801270E8 00124048  48 1B BF 95 */	bl NoParameter__12CPASAnimParmFv
/* 801270EC 0012404C  38 61 00 48 */	addi r3, r1, 0x48
/* 801270F0 00124050  48 1B BF 8D */	bl NoParameter__12CPASAnimParmFv
/* 801270F4 00124054  38 61 00 50 */	addi r3, r1, 0x50
/* 801270F8 00124058  48 1B BF 85 */	bl NoParameter__12CPASAnimParmFv
/* 801270FC 0012405C  38 61 00 58 */	addi r3, r1, 0x58
/* 80127100 00124060  48 1B BF 7D */	bl NoParameter__12CPASAnimParmFv
/* 80127104 00124064  38 61 00 60 */	addi r3, r1, 0x60
/* 80127108 00124068  38 80 00 02 */	li r4, 2
/* 8012710C 0012406C  48 1B BE 79 */	bl FromEnum__12CPASAnimParmFi
/* 80127110 00124070  38 61 00 30 */	addi r3, r1, 0x30
/* 80127114 00124074  38 01 00 28 */	addi r0, r1, 0x28
/* 80127118 00124078  90 61 00 08 */	stw r3, 8(r1)
/* 8012711C 0012407C  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80127120 00124080  38 A1 00 60 */	addi r5, r1, 0x60
/* 80127124 00124084  38 C1 00 58 */	addi r6, r1, 0x58
/* 80127128 00124088  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012712C 0012408C  38 E1 00 50 */	addi r7, r1, 0x50
/* 80127130 00124090  39 01 00 48 */	addi r8, r1, 0x48
/* 80127134 00124094  39 21 00 40 */	addi r9, r1, 0x40
/* 80127138 00124098  39 41 00 38 */	addi r10, r1, 0x38
/* 8012713C 0012409C  38 80 00 10 */	li r4, 0x10
/* 80127140 001240A0  4B F5 61 85 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80127144 001240A4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127148 001240A8  48 01 33 0D */	bl GetPASDatabase__15CBodyControllerCFv
/* 8012714C 001240AC  80 DF 09 00 */	lwz r6, 0x900(r31)
/* 80127150 001240B0  7C 64 1B 78 */	mr r4, r3
/* 80127154 001240B4  38 61 00 20 */	addi r3, r1, 0x20
/* 80127158 001240B8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8012715C 001240BC  38 E0 FF FF */	li r7, -1
/* 80127160 001240C0  48 1B DF 01 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 80127164 001240C4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80127168 001240C8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012716C 001240CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80127170 001240D0  40 81 00 10 */	ble lbl_80127180
/* 80127174 001240D4  38 00 00 02 */	li r0, 2
/* 80127178 001240D8  3B A0 00 00 */	li r29, 0
/* 8012717C 001240DC  90 1E 07 60 */	stw r0, 0x760(r30)
lbl_80127180:
/* 80127180 001240E0  34 A1 00 A8 */	addic. r5, r1, 0xa8
/* 80127184 001240E4  41 82 00 58 */	beq lbl_801271DC
/* 80127188 001240E8  80 C5 00 00 */	lwz r6, 0(r5)
/* 8012718C 001240EC  38 60 00 00 */	li r3, 0
/* 80127190 001240F0  2C 06 00 00 */	cmpwi r6, 0
/* 80127194 001240F4  40 81 00 40 */	ble lbl_801271D4
/* 80127198 001240F8  2C 06 00 08 */	cmpwi r6, 8
/* 8012719C 001240FC  38 86 FF F8 */	addi r4, r6, -8
/* 801271A0 00124100  40 81 00 20 */	ble lbl_801271C0
/* 801271A4 00124104  38 04 00 07 */	addi r0, r4, 7
/* 801271A8 00124108  54 00 E8 FE */	srwi r0, r0, 3
/* 801271AC 0012410C  7C 09 03 A6 */	mtctr r0
/* 801271B0 00124110  2C 04 00 00 */	cmpwi r4, 0
/* 801271B4 00124114  40 81 00 0C */	ble lbl_801271C0
lbl_801271B8:
/* 801271B8 00124118  38 63 00 08 */	addi r3, r3, 8
/* 801271BC 0012411C  42 00 FF FC */	bdnz lbl_801271B8
lbl_801271C0:
/* 801271C0 00124120  7C 03 30 50 */	subf r0, r3, r6
/* 801271C4 00124124  7C 09 03 A6 */	mtctr r0
/* 801271C8 00124128  7C 03 30 00 */	cmpw r3, r6
/* 801271CC 0012412C  40 80 00 08 */	bge lbl_801271D4
lbl_801271D0:
/* 801271D0 00124130  42 00 00 00 */	bdnz lbl_801271D0
lbl_801271D4:
/* 801271D4 00124134  38 00 00 00 */	li r0, 0
/* 801271D8 00124138  90 05 00 00 */	stw r0, 0(r5)
lbl_801271DC:
/* 801271DC 0012413C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801271E0 00124140  41 82 01 18 */	beq lbl_801272F8
/* 801271E4 00124144  83 FF 08 38 */	lwz r31, 0x838(r31)
/* 801271E8 00124148  3B A0 00 00 */	li r29, 0
/* 801271EC 0012414C  AB 9F 20 08 */	lha r28, 0x2008(r31)
/* 801271F0 00124150  48 00 00 D8 */	b lbl_801272C8
lbl_801271F4:
/* 801271F4 00124154  7F E3 FB 78 */	mr r3, r31
/* 801271F8 00124158  7F 84 E3 78 */	mr r4, r28
/* 801271FC 0012415C  4B EE 8A E1 */	bl __vc__11CObjectListCFi
/* 80127200 00124160  7C 64 1B 78 */	mr r4, r3
/* 80127204 00124164  38 61 00 18 */	addi r3, r1, 0x18
/* 80127208 00124168  4B F7 E1 C9 */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 8012720C 0012416C  4B F7 E1 99 */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80127210 00124170  28 03 00 00 */	cmplwi r3, 0
/* 80127214 00124174  41 82 00 98 */	beq lbl_801272AC
/* 80127218 00124178  7C 03 F0 40 */	cmplw r3, r30
/* 8012721C 0012417C  41 82 00 90 */	beq lbl_801272AC
/* 80127220 00124180  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80127224 00124184  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127228 00124188  40 82 00 84 */	bne lbl_801272AC
/* 8012722C 0012418C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80127230 00124190  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127234 00124194  41 82 00 78 */	beq lbl_801272AC
/* 80127238 00124198  80 83 00 04 */	lwz r4, 4(r3)
/* 8012723C 0012419C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80127240 001241A0  7C 04 00 00 */	cmpw r4, r0
/* 80127244 001241A4  40 82 00 68 */	bne lbl_801272AC
/* 80127248 001241A8  C0 E3 00 50 */	lfs f7, 0x50(r3)
/* 8012724C 001241AC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80127250 001241B0  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 80127254 001241B4  EC C7 00 28 */	fsubs f6, f7, f0
/* 80127258 001241B8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8012725C 001241BC  C1 03 00 60 */	lfs f8, 0x60(r3)
/* 80127260 001241C0  EC 83 00 28 */	fsubs f4, f3, f0
/* 80127264 001241C4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80127268 001241C8  EC 26 01 B2 */	fmuls f1, f6, f6
/* 8012726C 001241CC  EC A8 00 28 */	fsubs f5, f8, f0
/* 80127270 001241D0  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80127274 001241D4  EC 44 01 32 */	fmuls f2, f4, f4
/* 80127278 001241D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8012727C 001241DC  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80127280 001241E0  EC 65 01 72 */	fmuls f3, f5, f5
/* 80127284 001241E4  EC 22 08 2A */	fadds f1, f2, f1
/* 80127288 001241E8  D0 E1 00 90 */	stfs f7, 0x90(r1)
/* 8012728C 001241EC  D1 01 00 94 */	stfs f8, 0x94(r1)
/* 80127290 001241F0  EC 23 08 2A */	fadds f1, f3, f1
/* 80127294 001241F4  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 80127298 001241F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012729C 001241FC  D0 C1 00 9C */	stfs f6, 0x9c(r1)
/* 801272A0 00124200  D0 A1 00 A0 */	stfs f5, 0xa0(r1)
/* 801272A4 00124204  40 80 00 08 */	bge lbl_801272AC
/* 801272A8 00124208  3B A0 00 01 */	li r29, 1
lbl_801272AC:
/* 801272AC 0012420C  2C 1C FF FF */	cmpwi r28, -1
/* 801272B0 00124210  41 82 00 14 */	beq lbl_801272C4
/* 801272B4 00124214  57 83 18 38 */	slwi r3, r28, 3
/* 801272B8 00124218  38 03 00 08 */	addi r0, r3, 8
/* 801272BC 0012421C  7F 9F 02 AE */	lhax r28, r31, r0
/* 801272C0 00124220  48 00 00 08 */	b lbl_801272C8
lbl_801272C4:
/* 801272C4 00124224  3B 80 FF FF */	li r28, -1
lbl_801272C8:
/* 801272C8 00124228  2C 1C FF FF */	cmpwi r28, -1
/* 801272CC 0012422C  40 82 FF 28 */	bne lbl_801271F4
/* 801272D0 00124230  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801272D4 00124234  7C 00 00 34 */	cntlzw r0, r0
/* 801272D8 00124238  54 00 D9 7E */	srwi r0, r0, 5
/* 801272DC 0012423C  90 1E 07 60 */	stw r0, 0x760(r30)
/* 801272E0 00124240  48 00 00 18 */	b lbl_801272F8
lbl_801272E4:
/* 801272E4 00124244  54 63 EF FE */	rlwinm r3, r3, 0x1d, 0x1f, 0x1f
/* 801272E8 00124248  7C 03 00 D0 */	neg r0, r3
/* 801272EC 0012424C  7C 00 1B 78 */	or r0, r0, r3
/* 801272F0 00124250  54 00 0F FE */	srwi r0, r0, 0x1f
/* 801272F4 00124254  90 1E 07 60 */	stw r0, 0x760(r30)
lbl_801272F8:
/* 801272F8 00124258  38 00 00 01 */	li r0, 1
/* 801272FC 0012425C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80127300 00124260  48 00 00 B8 */	b lbl_801273B8
lbl_80127304:
/* 80127304 00124264  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80127308 00124268  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012730C 0012426C  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80127310 00124270  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80127314 00124274  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80127318 00124278  38 61 00 1C */	addi r3, r1, 0x1c
/* 8012731C 0012427C  A9 22 C5 FA */	lha r9, kMedPriority__11CSfxManager@sda21(r2)
/* 80127320 00124280  38 A1 00 80 */	addi r5, r1, 0x80
/* 80127324 00124284  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80127328 00124288  38 E0 00 01 */	li r7, 1
/* 8012732C 0012428C  81 42 C6 00 */	lwz r10, kAllAreas__11CSfxManager@sda21(r2)
/* 80127330 00124290  39 00 00 00 */	li r8, 0
/* 80127334 00124294  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80127338 00124298  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8012733C 0012429C  A0 9E 06 0C */	lhz r4, 0x60c(r30)
/* 80127340 001242A0  48 1C 2F 71 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 80127344 001242A4  48 00 00 74 */	b lbl_801273B8
lbl_80127348:
/* 80127348 001242A8  3C A0 80 3E */	lis r5, lbl_803E0740@ha
/* 8012734C 001242AC  38 C1 00 74 */	addi r6, r1, 0x74
/* 80127350 001242B0  39 25 07 40 */	addi r9, r5, lbl_803E0740@l
/* 80127354 001242B4  38 A0 00 10 */	li r5, 0x10
/* 80127358 001242B8  81 09 00 00 */	lwz r8, 0(r9)
/* 8012735C 001242BC  80 E9 00 04 */	lwz r7, 4(r9)
/* 80127360 001242C0  80 09 00 08 */	lwz r0, 8(r9)
/* 80127364 001242C4  91 01 00 74 */	stw r8, 0x74(r1)
/* 80127368 001242C8  90 E1 00 78 */	stw r7, 0x78(r1)
/* 8012736C 001242CC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80127370 001242D0  80 FE 07 60 */	lwz r7, 0x760(r30)
/* 80127374 001242D4  4B F5 54 41 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80127378 001242D8  48 00 00 40 */	b lbl_801273B8
lbl_8012737C:
/* 8012737C 001242DC  80 1E 07 60 */	lwz r0, 0x760(r30)
/* 80127380 001242E0  2C 00 00 00 */	cmpwi r0, 0
/* 80127384 001242E4  40 82 00 2C */	bne lbl_801273B0
/* 80127388 001242E8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8012738C 001242EC  7F E3 FB 78 */	mr r3, r31
/* 80127390 001242F0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80127394 001242F4  38 81 00 68 */	addi r4, r1, 0x68
/* 80127398 001242F8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8012739C 001242FC  38 A0 00 00 */	li r5, 0
/* 801273A0 00124300  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801273A4 00124304  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 801273A8 00124308  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801273AC 0012430C  4B F2 13 D9 */	bl InformListeners__13CStateManagerFRC9CVector3f16EListenNoiseType
lbl_801273B0:
/* 801273B0 00124310  38 00 00 00 */	li r0, 0
/* 801273B4 00124314  90 1E 03 2C */	stw r0, 0x32c(r30)
lbl_801273B8:
/* 801273B8 00124318  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801273BC 0012431C  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801273C0 00124320  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801273C4 00124324  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801273C8 00124328  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 801273CC 0012432C  7C 08 03 A6 */	mtlr r0
/* 801273D0 00124330  38 21 01 00 */	addi r1, r1, 0x100
/* 801273D4 00124334  4E 80 00 20 */	blr

.global Run__12CSpacePirateFR13CStateManager9EStateMsgf
Run__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801273D8 00124338  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 801273DC 0012433C  D0 03 06 44 */	stfs f0, 0x644(r3)
/* 801273E0 00124340  4E 80 00 20 */	blr

.global Halt__12CSpacePirateFR13CStateManager9EStateMsgf
Halt__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801273E4 00124344  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801273E8 00124348  D0 03 06 44 */	stfs f0, 0x644(r3)
/* 801273EC 0012434C  4E 80 00 20 */	blr

.global HearPlayer__12CSpacePirateFR13CStateManagerf
HearPlayer__12CSpacePirateFR13CStateManagerf:
/* 801273F0 00124350  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801273F4 00124354  38 00 00 00 */	li r0, 0
/* 801273F8 00124358  C0 02 98 08 */	lfs f0, lbl_805AB528@sda21(r2)
/* 801273FC 0012435C  C0 44 01 38 */	lfs f2, 0x138(r4)
/* 80127400 00124360  C0 24 01 3C */	lfs f1, 0x13c(r4)
/* 80127404 00124364  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80127408 00124368  C0 64 01 40 */	lfs f3, 0x140(r4)
/* 8012740C 0012436C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80127410 00124370  EC 63 00 F2 */	fmuls f3, f3, f3
/* 80127414 00124374  EC 22 08 2A */	fadds f1, f2, f1
/* 80127418 00124378  EC 23 08 2A */	fadds f1, f3, f1
/* 8012741C 0012437C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80127420 00124380  40 81 00 48 */	ble lbl_80127468
/* 80127424 00124384  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 80127428 00124388  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8012742C 0012438C  C0 43 05 7C */	lfs f2, 0x57c(r3)
/* 80127430 00124390  EC A1 00 28 */	fsubs f5, f1, f0
/* 80127434 00124394  C0 84 00 40 */	lfs f4, 0x40(r4)
/* 80127438 00124398  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8012743C 0012439C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80127440 001243A0  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 80127444 001243A4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80127448 001243A8  EC 84 08 28 */	fsubs f4, f4, f1
/* 8012744C 001243AC  EC 25 01 72 */	fmuls f1, f5, f5
/* 80127450 001243B0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80127454 001243B4  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 80127458 001243B8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8012745C 001243BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80127460 001243C0  40 80 00 08 */	bge lbl_80127468
/* 80127464 001243C4  38 00 00 01 */	li r0, 1
lbl_80127468:
/* 80127468 001243C8  7C 03 03 78 */	mr r3, r0
/* 8012746C 001243CC  4E 80 00 20 */	blr

.global HearShot__12CSpacePirateFR13CStateManagerf
HearShot__12CSpacePirateFR13CStateManagerf:
/* 80127470 001243D0  88 A3 06 36 */	lbz r5, 0x636(r3)
/* 80127474 001243D4  38 00 00 00 */	li r0, 0
/* 80127478 001243D8  54 A4 D7 FE */	rlwinm r4, r5, 0x1a, 0x1f, 0x1f
/* 8012747C 001243DC  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 80127480 001243E0  98 A3 06 36 */	stb r5, 0x636(r3)
/* 80127484 001243E4  7C 83 23 78 */	mr r3, r4
/* 80127488 001243E8  4E 80 00 20 */	blr

.global PatternOver__12CSpacePirateFR13CStateManagerf
PatternOver__12CSpacePirateFR13CStateManagerf:
/* 8012748C 001243EC  A0 63 02 DC */	lhz r3, 0x2dc(r3)
/* 80127490 001243F0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80127494 001243F4  7C 03 00 50 */	subf r0, r3, r0
/* 80127498 001243F8  7C 00 00 34 */	cntlzw r0, r0
/* 8012749C 001243FC  54 03 D9 7E */	srwi r3, r0, 5
/* 801274A0 00124400  4E 80 00 20 */	blr

.global TargetPatrol__12CSpacePirateFR13CStateManager9EStateMsgf
TargetPatrol__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 801274A4 00124404  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801274A8 00124408  7C 08 02 A6 */	mflr r0
/* 801274AC 0012440C  90 01 00 84 */	stw r0, 0x84(r1)
/* 801274B0 00124410  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801274B4 00124414  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801274B8 00124418  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801274BC 0012441C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801274C0 00124420  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801274C4 00124424  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801274C8 00124428  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801274CC 0012442C  93 81 00 50 */	stw r28, 0x50(r1)
/* 801274D0 00124430  FF C0 08 90 */	fmr f30, f1
/* 801274D4 00124434  7C 7E 1B 78 */	mr r30, r3
/* 801274D8 00124438  7C 9F 23 78 */	mr r31, r4
/* 801274DC 0012443C  7C BC 2B 78 */	mr r28, r5
/* 801274E0 00124440  48 0C F9 95 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801274E4 00124444  2C 1C 00 01 */	cmpwi r28, 1
/* 801274E8 00124448  41 82 00 58 */	beq lbl_80127540
/* 801274EC 0012444C  40 80 00 10 */	bge lbl_801274FC
/* 801274F0 00124450  2C 1C 00 00 */	cmpwi r28, 0
/* 801274F4 00124454  40 80 00 14 */	bge lbl_80127508
/* 801274F8 00124458  48 00 02 38 */	b lbl_80127730
lbl_801274FC:
/* 801274FC 0012445C  2C 1C 00 03 */	cmpwi r28, 3
/* 80127500 00124460  40 80 02 30 */	bge lbl_80127730
/* 80127504 00124464  48 00 02 20 */	b lbl_80127724
lbl_80127508:
/* 80127508 00124468  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 8012750C 0012446C  38 00 00 01 */	li r0, 1
/* 80127510 00124470  7F C4 F3 78 */	mr r4, r30
/* 80127514 00124474  7F E5 FB 78 */	mr r5, r31
/* 80127518 00124478  D0 1E 06 44 */	stfs f0, 0x644(r30)
/* 8012751C 0012447C  38 61 00 10 */	addi r3, r1, 0x10
/* 80127520 00124480  38 C0 00 0A */	li r6, 0xa
/* 80127524 00124484  38 E0 00 06 */	li r7, 6
/* 80127528 00124488  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 8012752C 0012448C  90 08 00 34 */	stw r0, 0x34(r8)
/* 80127530 00124490  48 0C DA 69 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80127534 00124494  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80127538 00124498  B0 1E 02 DC */	sth r0, 0x2dc(r30)
/* 8012753C 0012449C  48 00 01 F4 */	b lbl_80127730
lbl_80127540:
/* 80127540 001244A0  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 80127544 001244A4  7F E3 FB 78 */	mr r3, r31
/* 80127548 001244A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8012754C 001244AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80127550 001244B0  4B F2 50 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80127554 001244B4  7C 64 1B 78 */	mr r4, r3
/* 80127558 001244B8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8012755C 001244BC  4B F7 EF F1 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 80127560 001244C0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80127564 001244C4  28 1D 00 00 */	cmplwi r29, 0
/* 80127568 001244C8  41 82 00 E0 */	beq lbl_80127648
/* 8012756C 001244CC  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80127570 001244D0  54 1C FF FF */	rlwinm. r28, r0, 0x1f, 0x1f, 0x1f
/* 80127574 001244D4  54 00 F7 FE */	rlwinm r0, r0, 0x1e, 0x1f, 0x1f
/* 80127578 001244D8  40 82 00 0C */	bne lbl_80127584
/* 8012757C 001244DC  28 00 00 00 */	cmplwi r0, 0
/* 80127580 001244E0  41 82 00 C8 */	beq lbl_80127648
lbl_80127584:
/* 80127584 001244E4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127588 001244E8  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8012758C 001244EC  48 00 C9 21 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 80127590 001244F0  C1 BE 00 50 */	lfs f13, 0x50(r30)
/* 80127594 001244F4  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80127598 001244F8  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8012759C 001244FC  C0 BE 00 40 */	lfs f5, 0x40(r30)
/* 801275A0 00124500  ED 8D 00 28 */	fsubs f12, f13, f0
/* 801275A4 00124504  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801275A8 00124508  C1 23 00 04 */	lfs f9, 4(r3)
/* 801275AC 0012450C  EC 85 00 28 */	fsubs f4, f5, f0
/* 801275B0 00124510  C3 FE 00 60 */	lfs f31, 0x60(r30)
/* 801275B4 00124514  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801275B8 00124518  C0 E2 98 0C */	lfs f7, lbl_805AB52C@sda21(r2)
/* 801275BC 0012451C  EC 0C 03 32 */	fmuls f0, f12, f12
/* 801275C0 00124520  ED 7F 10 28 */	fsubs f11, f31, f2
/* 801275C4 00124524  C0 62 98 08 */	lfs f3, lbl_805AB528@sda21(r2)
/* 801275C8 00124528  EC 44 01 32 */	fmuls f2, f4, f4
/* 801275CC 0012452C  C0 DE 07 A4 */	lfs f6, 0x7a4(r30)
/* 801275D0 00124530  EC E7 1F BA */	fmadds f7, f7, f30, f3
/* 801275D4 00124534  C1 43 00 00 */	lfs f10, 0(r3)
/* 801275D8 00124538  C1 03 00 08 */	lfs f8, 8(r3)
/* 801275DC 0012453C  EC 6B 02 F2 */	fmuls f3, f11, f11
/* 801275E0 00124540  EC 02 00 2A */	fadds f0, f2, f0
/* 801275E4 00124544  D1 41 00 3C */	stfs f10, 0x3c(r1)
/* 801275E8 00124548  EC 47 02 72 */	fmuls f2, f7, f9
/* 801275EC 0012454C  D1 21 00 40 */	stfs f9, 0x40(r1)
/* 801275F0 00124550  EC 63 00 2A */	fadds f3, f3, f0
/* 801275F4 00124554  D1 01 00 44 */	stfs f8, 0x44(r1)
/* 801275F8 00124558  EC 01 30 BA */	fmadds f0, f1, f2, f6
/* 801275FC 0012455C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80127600 00124560  EC 00 00 32 */	fmuls f0, f0, f0
/* 80127604 00124564  D1 A1 00 28 */	stfs f13, 0x28(r1)
/* 80127608 00124568  D3 E1 00 2C */	stfs f31, 0x2c(r1)
/* 8012760C 0012456C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80127610 00124570  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 80127614 00124574  D1 81 00 34 */	stfs f12, 0x34(r1)
/* 80127618 00124578  D1 61 00 38 */	stfs f11, 0x38(r1)
/* 8012761C 0012457C  40 80 00 2C */	bge lbl_80127648
/* 80127620 00124580  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 80127624 00124584  38 60 00 01 */	li r3, 1
/* 80127628 00124588  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8012762C 0012458C  28 1C 00 00 */	cmplwi r28, 0
/* 80127630 00124590  98 1E 03 28 */	stb r0, 0x328(r30)
/* 80127634 00124594  41 82 00 0C */	beq lbl_80127640
/* 80127638 00124598  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 8012763C 0012459C  48 00 00 08 */	b lbl_80127644
lbl_80127640:
/* 80127640 001245A0  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
lbl_80127644:
/* 80127644 001245A4  D0 1E 08 24 */	stfs f0, 0x824(r30)
lbl_80127648:
/* 80127648 001245A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8012764C 001245AC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80127650 001245B0  2C 00 00 0D */	cmpwi r0, 0xd
/* 80127654 001245B4  40 82 00 B4 */	bne lbl_80127708
/* 80127658 001245B8  A0 1E 02 DC */	lhz r0, 0x2dc(r30)
/* 8012765C 001245BC  7F E3 FB 78 */	mr r3, r31
/* 80127660 001245C0  38 81 00 08 */	addi r4, r1, 8
/* 80127664 001245C4  3B 80 00 01 */	li r28, 1
/* 80127668 001245C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8012766C 001245CC  4B F2 4F 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80127670 001245D0  7C 64 1B 78 */	mr r4, r3
/* 80127674 001245D4  38 61 00 14 */	addi r3, r1, 0x14
/* 80127678 001245D8  4B F7 EE D5 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8012767C 001245DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80127680 001245E0  28 04 00 00 */	cmplwi r4, 0
/* 80127684 001245E4  41 82 00 44 */	beq lbl_801276C8
/* 80127688 001245E8  80 A4 00 2C */	lwz r5, 0x2c(r4)
/* 8012768C 001245EC  48 00 00 24 */	b lbl_801276B0
lbl_80127690:
/* 80127690 001245F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80127694 001245F4  2C 00 00 01 */	cmpwi r0, 1
/* 80127698 001245F8  40 82 00 14 */	bne lbl_801276AC
/* 8012769C 001245FC  80 05 00 04 */	lwz r0, 4(r5)
/* 801276A0 00124600  2C 00 00 08 */	cmpwi r0, 8
/* 801276A4 00124604  40 82 00 08 */	bne lbl_801276AC
/* 801276A8 00124608  3B 80 00 00 */	li r28, 0
lbl_801276AC:
/* 801276AC 0012460C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_801276B0:
/* 801276B0 00124610  80 04 00 24 */	lwz r0, 0x24(r4)
/* 801276B4 00124614  80 64 00 2C */	lwz r3, 0x2c(r4)
/* 801276B8 00124618  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801276BC 0012461C  7C 03 02 14 */	add r0, r3, r0
/* 801276C0 00124620  7C 05 00 40 */	cmplw r5, r0
/* 801276C4 00124624  40 82 FF CC */	bne lbl_80127690
lbl_801276C8:
/* 801276C8 00124628  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 801276CC 0012462C  41 82 00 3C */	beq lbl_80127708
/* 801276D0 00124630  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801276D4 00124634  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801276D8 00124638  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801276DC 0012463C  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801276E0 00124640  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 801276E4 00124644  EC 01 00 28 */	fsubs f0, f1, f0
/* 801276E8 00124648  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801276EC 0012464C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801276F0 00124650  EC 64 18 28 */	fsubs f3, f4, f3
/* 801276F4 00124654  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801276F8 00124658  EC 22 08 28 */	fsubs f1, f2, f1
/* 801276FC 0012465C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80127700 00124660  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80127704 00124664  D0 23 00 24 */	stfs f1, 0x24(r3)
lbl_80127708:
/* 80127708 00124668  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 8012770C 0012466C  D0 1E 08 28 */	stfs f0, 0x828(r30)
/* 80127710 00124670  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 80127714 00124674  D0 1E 08 2C */	stfs f0, 0x82c(r30)
/* 80127718 00124678  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 8012771C 0012467C  D0 1E 08 30 */	stfs f0, 0x830(r30)
/* 80127720 00124680  48 00 00 10 */	b lbl_80127730
lbl_80127724:
/* 80127724 00124684  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127728 00124688  38 00 00 00 */	li r0, 0
/* 8012772C 0012468C  90 03 00 34 */	stw r0, 0x34(r3)
lbl_80127730:
/* 80127730 00124690  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80127734 00124694  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80127738 00124698  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 8012773C 0012469C  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80127740 001246A0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80127744 001246A4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80127748 001246A8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8012774C 001246AC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80127750 001246B0  83 81 00 50 */	lwz r28, 0x50(r1)
/* 80127754 001246B4  7C 08 03 A6 */	mtlr r0
/* 80127758 001246B8  38 21 00 80 */	addi r1, r1, 0x80
/* 8012775C 001246BC  4E 80 00 20 */	blr

.global Patrol__12CSpacePirateFR13CStateManager9EStateMsgf
Patrol__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80127760 001246C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80127764 001246C4  7C 08 02 A6 */	mflr r0
/* 80127768 001246C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012776C 001246CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80127770 001246D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80127774 001246D4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80127778 001246D8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 8012777C 001246DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80127780 001246E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80127784 001246E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80127788 001246E8  93 81 00 10 */	stw r28, 0x10(r1)
/* 8012778C 001246EC  7C BE 2B 78 */	mr r30, r5
/* 80127790 001246F0  FF C0 08 90 */	fmr f30, f1
/* 80127794 001246F4  2C 1E 00 01 */	cmpwi r30, 1
/* 80127798 001246F8  7C 7C 1B 78 */	mr r28, r3
/* 8012779C 001246FC  7C 9D 23 78 */	mr r29, r4
/* 801277A0 00124700  41 82 00 90 */	beq lbl_80127830
/* 801277A4 00124704  40 80 00 10 */	bge lbl_801277B4
/* 801277A8 00124708  2C 1E 00 00 */	cmpwi r30, 0
/* 801277AC 0012470C  40 80 00 14 */	bge lbl_801277C0
/* 801277B0 00124710  48 00 00 80 */	b lbl_80127830
lbl_801277B4:
/* 801277B4 00124714  2C 1E 00 03 */	cmpwi r30, 3
/* 801277B8 00124718  40 80 00 78 */	bge lbl_80127830
/* 801277BC 0012471C  48 00 00 3C */	b lbl_801277F8
lbl_801277C0:
/* 801277C0 00124720  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801277C4 00124724  38 80 00 01 */	li r4, 1
/* 801277C8 00124728  48 01 32 11 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801277CC 0012472C  83 FC 04 50 */	lwz r31, 0x450(r28)
/* 801277D0 00124730  38 80 00 02 */	li r4, 2
/* 801277D4 00124734  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 801277D8 00124738  48 00 C5 FD */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 801277DC 0012473C  FF E0 08 90 */	fmr f31, f1
/* 801277E0 00124740  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 801277E4 00124744  38 80 00 01 */	li r4, 1
/* 801277E8 00124748  48 00 C5 ED */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 801277EC 0012474C  EC 01 F8 24 */	fdivs f0, f1, f31
/* 801277F0 00124750  D0 1C 06 44 */	stfs f0, 0x644(r28)
/* 801277F4 00124754  48 00 00 3C */	b lbl_80127830
lbl_801277F8:
/* 801277F8 00124758  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801277FC 0012475C  38 80 00 03 */	li r4, 3
/* 80127800 00124760  48 01 31 D9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80127804 00124764  88 9C 06 39 */	lbz r4, 0x639(r28)
/* 80127808 00124768  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8012780C 0012476C  40 82 00 24 */	bne lbl_80127830
/* 80127810 00124770  38 00 00 01 */	li r0, 1
/* 80127814 00124774  7F 83 E3 78 */	mr r3, r28
/* 80127818 00124778  50 04 07 FE */	rlwimi r4, r0, 0, 0x1f, 0x1f
/* 8012781C 0012477C  7F A5 EB 78 */	mr r5, r29
/* 80127820 00124780  98 9C 06 39 */	stb r4, 0x639(r28)
/* 80127824 00124784  38 80 00 0A */	li r4, 0xa
/* 80127828 00124788  38 C0 FF FF */	li r6, -1
/* 8012782C 0012478C  4B F2 98 95 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80127830:
/* 80127830 00124790  88 1C 06 37 */	lbz r0, 0x637(r28)
/* 80127834 00124794  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80127838 00124798  41 82 00 A8 */	beq lbl_801278E0
/* 8012783C 0012479C  FC 20 F0 90 */	fmr f1, f30
/* 80127840 001247A0  7F 83 E3 78 */	mr r3, r28
/* 80127844 001247A4  7F A4 EB 78 */	mr r4, r29
/* 80127848 001247A8  7F C5 F3 78 */	mr r5, r30
/* 8012784C 001247AC  48 0C F6 29 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80127850 001247B0  2C 1E 00 01 */	cmpwi r30, 1
/* 80127854 001247B4  41 82 00 44 */	beq lbl_80127898
/* 80127858 001247B8  40 80 00 10 */	bge lbl_80127868
/* 8012785C 001247BC  2C 1E 00 00 */	cmpwi r30, 0
/* 80127860 001247C0  40 80 00 14 */	bge lbl_80127874
/* 80127864 001247C4  48 00 00 7C */	b lbl_801278E0
lbl_80127868:
/* 80127868 001247C8  2C 1E 00 03 */	cmpwi r30, 3
/* 8012786C 001247CC  40 80 00 74 */	bge lbl_801278E0
/* 80127870 001247D0  48 00 00 50 */	b lbl_801278C0
lbl_80127874:
/* 80127874 001247D4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80127878 001247D8  38 00 00 01 */	li r0, 1
/* 8012787C 001247DC  C0 02 98 50 */	lfs f0, lbl_805AB570@sda21(r2)
/* 80127880 001247E0  90 03 00 34 */	stw r0, 0x34(r3)
/* 80127884 001247E4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80127888 001247E8  C0 23 02 FC */	lfs f1, 0x2fc(r3)
/* 8012788C 001247EC  EC 21 00 24 */	fdivs f1, f1, f0
/* 80127890 001247F0  48 01 31 15 */	bl SetTurnSpeed__15CBodyControllerFf
/* 80127894 001247F4  48 00 00 4C */	b lbl_801278E0
lbl_80127898:
/* 80127898 001247F8  7F 83 E3 78 */	mr r3, r28
/* 8012789C 001247FC  7F A4 EB 78 */	mr r4, r29
/* 801278A0 00124800  48 00 13 31 */	bl AvoidActors__12CSpacePirateFR13CStateManager
/* 801278A4 00124804  C0 1C 02 E0 */	lfs f0, 0x2e0(r28)
/* 801278A8 00124808  D0 1C 08 28 */	stfs f0, 0x828(r28)
/* 801278AC 0012480C  C0 1C 02 E4 */	lfs f0, 0x2e4(r28)
/* 801278B0 00124810  D0 1C 08 2C */	stfs f0, 0x82c(r28)
/* 801278B4 00124814  C0 1C 02 E8 */	lfs f0, 0x2e8(r28)
/* 801278B8 00124818  D0 1C 08 30 */	stfs f0, 0x830(r28)
/* 801278BC 0012481C  48 00 00 24 */	b lbl_801278E0
lbl_801278C0:
/* 801278C0 00124820  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801278C4 00124824  38 00 00 00 */	li r0, 0
/* 801278C8 00124828  C0 22 98 50 */	lfs f1, lbl_805AB570@sda21(r2)
/* 801278CC 0012482C  90 03 00 34 */	stw r0, 0x34(r3)
/* 801278D0 00124830  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 801278D4 00124834  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 801278D8 00124838  EC 21 00 32 */	fmuls f1, f1, f0
/* 801278DC 0012483C  48 01 30 C9 */	bl SetTurnSpeed__15CBodyControllerFf
lbl_801278E0:
/* 801278E0 00124840  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801278E4 00124844  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801278E8 00124848  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 801278EC 0012484C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801278F0 00124850  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801278F4 00124854  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801278F8 00124858  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801278FC 0012485C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80127900 00124860  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80127904 00124864  7C 08 03 A6 */	mtlr r0
/* 80127908 00124868  38 21 00 40 */	addi r1, r1, 0x40
/* 8012790C 0012486C  4E 80 00 20 */	blr

.global Generate__12CSpacePirateFR13CStateManager9EStateMsgf
Generate__12CSpacePirateFR13CStateManager9EStateMsgf:
/* 80127910 00124870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80127914 00124874  7C 08 02 A6 */	mflr r0
/* 80127918 00124878  2C 05 00 01 */	cmpwi r5, 1
/* 8012791C 0012487C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80127920 00124880  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80127924 00124884  7C 9F 23 78 */	mr r31, r4
/* 80127928 00124888  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8012792C 0012488C  7C 7E 1B 78 */	mr r30, r3
/* 80127930 00124890  41 82 01 50 */	beq lbl_80127A80
/* 80127934 00124894  40 80 00 10 */	bge lbl_80127944
/* 80127938 00124898  2C 05 00 00 */	cmpwi r5, 0
/* 8012793C 0012489C  40 80 00 14 */	bge lbl_80127950
/* 80127940 001248A0  48 00 02 28 */	b lbl_80127B68
lbl_80127944:
/* 80127944 001248A4  2C 05 00 03 */	cmpwi r5, 3
/* 80127948 001248A8  40 80 02 20 */	bge lbl_80127B68
/* 8012794C 001248AC  48 00 01 C8 */	b lbl_80127B14
lbl_80127950:
/* 80127950 001248B0  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80127954 001248B4  38 80 00 01 */	li r4, 1
/* 80127958 001248B8  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012795C 001248BC  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80127960 001248C0  88 DE 06 39 */	lbz r6, 0x639(r30)
/* 80127964 001248C4  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 80127968 001248C8  40 82 00 1C */	bne lbl_80127984
/* 8012796C 001248CC  50 86 07 FE */	rlwimi r6, r4, 0, 0x1f, 0x1f
/* 80127970 001248D0  7F E5 FB 78 */	mr r5, r31
/* 80127974 001248D4  98 DE 06 39 */	stb r6, 0x639(r30)
/* 80127978 001248D8  38 80 00 0A */	li r4, 0xa
/* 8012797C 001248DC  38 C0 FF FF */	li r6, -1
/* 80127980 001248E0  4B F2 97 41 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_80127984:
/* 80127984 001248E4  38 00 00 01 */	li r0, 1
/* 80127988 001248E8  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 8012798C 001248EC  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80127990 001248F0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127994 001248F4  41 82 00 5C */	beq lbl_801279F0
/* 80127998 001248F8  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 8012799C 001248FC  C4 03 67 00 */	lfsu f0, sDownVector__9CVector3f@l(r3)
/* 801279A0 00124900  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801279A4 00124904  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 801279A8 00124908  C0 83 00 04 */	lfs f4, 4(r3)
/* 801279AC 0012490C  EC 21 00 2A */	fadds f1, f1, f0
/* 801279B0 00124910  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801279B4 00124914  C0 43 00 08 */	lfs f2, 8(r3)
/* 801279B8 00124918  EC 85 20 2A */	fadds f4, f5, f4
/* 801279BC 0012491C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801279C0 00124920  D0 3E 02 E0 */	stfs f1, 0x2e0(r30)
/* 801279C4 00124924  EC 23 10 2A */	fadds f1, f3, f2
/* 801279C8 00124928  D0 9E 02 E4 */	stfs f4, 0x2e4(r30)
/* 801279CC 0012492C  D0 3E 02 E8 */	stfs f1, 0x2e8(r30)
/* 801279D0 00124930  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 801279D4 00124934  D0 3E 08 28 */	stfs f1, 0x828(r30)
/* 801279D8 00124938  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 801279DC 0012493C  D0 3E 08 2C */	stfs f1, 0x82c(r30)
/* 801279E0 00124940  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 801279E4 00124944  D0 3E 08 30 */	stfs f1, 0x830(r30)
/* 801279E8 00124948  D0 1E 08 24 */	stfs f0, 0x824(r30)
/* 801279EC 0012494C  48 00 01 7C */	b lbl_80127B68
lbl_801279F0:
/* 801279F0 00124950  7F C4 F3 78 */	mr r4, r30
/* 801279F4 00124954  7F E5 FB 78 */	mr r5, r31
/* 801279F8 00124958  38 61 00 14 */	addi r3, r1, 0x14
/* 801279FC 0012495C  38 C0 00 0A */	li r6, 0xa
/* 80127A00 00124960  38 E0 00 06 */	li r7, 6
/* 80127A04 00124964  48 0C D5 95 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80127A08 00124968  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80127A0C 0012496C  7F E3 FB 78 */	mr r3, r31
/* 80127A10 00124970  38 81 00 10 */	addi r4, r1, 0x10
/* 80127A14 00124974  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80127A18 00124978  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80127A1C 0012497C  4B F2 4B 89 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80127A20 00124980  7C 64 1B 78 */	mr r4, r3
/* 80127A24 00124984  38 61 00 1C */	addi r3, r1, 0x1c
/* 80127A28 00124988  4B F8 82 69 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 80127A2C 0012498C  80 63 00 04 */	lwz r3, 4(r3)
/* 80127A30 00124990  28 03 00 00 */	cmplwi r3, 0
/* 80127A34 00124994  41 82 00 3C */	beq lbl_80127A70
/* 80127A38 00124998  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80127A3C 0012499C  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 80127A40 001249A0  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80127A44 001249A4  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 80127A48 001249A8  D0 3E 02 E0 */	stfs f1, 0x2e0(r30)
/* 80127A4C 001249AC  D0 5E 02 E4 */	stfs f2, 0x2e4(r30)
/* 80127A50 001249B0  D0 7E 02 E8 */	stfs f3, 0x2e8(r30)
/* 80127A54 001249B4  C0 3E 02 E0 */	lfs f1, 0x2e0(r30)
/* 80127A58 001249B8  D0 3E 08 28 */	stfs f1, 0x828(r30)
/* 80127A5C 001249BC  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 80127A60 001249C0  D0 3E 08 2C */	stfs f1, 0x82c(r30)
/* 80127A64 001249C4  C0 3E 02 E8 */	lfs f1, 0x2e8(r30)
/* 80127A68 001249C8  D0 3E 08 30 */	stfs f1, 0x830(r30)
/* 80127A6C 001249CC  D0 1E 08 24 */	stfs f0, 0x824(r30)
lbl_80127A70:
/* 80127A70 001249D0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127A74 001249D4  38 80 00 03 */	li r4, 3
/* 80127A78 001249D8  48 01 2F 61 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80127A7C 001249DC  48 00 00 EC */	b lbl_80127B68
lbl_80127A80:
/* 80127A80 001249E0  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80127A84 001249E4  38 E0 00 00 */	li r7, 0
/* 80127A88 001249E8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127A8C 001249EC  41 82 00 08 */	beq lbl_80127A94
/* 80127A90 001249F0  38 E0 00 02 */	li r7, 2
lbl_80127A94:
/* 80127A94 001249F4  3C 80 80 3E */	lis r4, lbl_803E0734@ha
/* 80127A98 001249F8  7F C3 F3 78 */	mr r3, r30
/* 80127A9C 001249FC  38 A4 07 34 */	addi r5, r4, lbl_803E0734@l
/* 80127AA0 00124A00  38 C1 00 24 */	addi r6, r1, 0x24
/* 80127AA4 00124A04  81 25 00 00 */	lwz r9, 0(r5)
/* 80127AA8 00124A08  7F E4 FB 78 */	mr r4, r31
/* 80127AAC 00124A0C  81 05 00 04 */	lwz r8, 4(r5)
/* 80127AB0 00124A10  80 05 00 08 */	lwz r0, 8(r5)
/* 80127AB4 00124A14  38 A0 00 0D */	li r5, 0xd
/* 80127AB8 00124A18  91 21 00 24 */	stw r9, 0x24(r1)
/* 80127ABC 00124A1C  91 01 00 28 */	stw r8, 0x28(r1)
/* 80127AC0 00124A20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80127AC4 00124A24  4B F5 4C F1 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80127AC8 00124A28  80 1E 03 2C */	lwz r0, 0x32c(r30)
/* 80127ACC 00124A2C  2C 00 00 02 */	cmpwi r0, 2
/* 80127AD0 00124A30  40 82 00 10 */	bne lbl_80127AE0
/* 80127AD4 00124A34  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127AD8 00124A38  38 80 00 03 */	li r4, 3
/* 80127ADC 00124A3C  48 01 2E FD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80127AE0:
/* 80127AE0 00124A40  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 80127AE4 00124A44  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80127AE8 00124A48  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80127AEC 00124A4C  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 80127AF0 00124A50  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80127AF4 00124A54  EC 21 00 28 */	fsubs f1, f1, f0
/* 80127AF8 00124A58  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127AFC 00124A5C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80127B00 00124A60  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80127B04 00124A64  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80127B08 00124A68  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 80127B0C 00124A6C  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80127B10 00124A70  48 00 00 58 */	b lbl_80127B68
lbl_80127B14:
/* 80127B14 00124A74  38 00 00 00 */	li r0, 0
/* 80127B18 00124A78  38 80 00 03 */	li r4, 3
/* 80127B1C 00124A7C  90 1E 03 2C */	stw r0, 0x32c(r30)
/* 80127B20 00124A80  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80127B24 00124A84  48 01 2E B5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80127B28 00124A88  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 80127B2C 00124A8C  38 A0 00 00 */	li r5, 0
/* 80127B30 00124A90  38 7E 07 64 */	addi r3, r30, 0x764
/* 80127B34 00124A94  38 80 00 01 */	li r4, 1
/* 80127B38 00124A98  D0 1E 08 24 */	stfs f0, 0x824(r30)
/* 80127B3C 00124A9C  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 80127B40 00124AA0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80127B44 00124AA4  98 1E 06 34 */	stb r0, 0x634(r30)
/* 80127B48 00124AA8  48 04 D6 DD */	bl SetActive__13CBoneTrackingFb
/* 80127B4C 00124AAC  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 80127B50 00124AB0  38 7E 07 64 */	addi r3, r30, 0x764
/* 80127B54 00124AB4  38 81 00 0C */	addi r4, r1, 0xc
/* 80127B58 00124AB8  A0 05 00 08 */	lhz r0, 8(r5)
/* 80127B5C 00124ABC  B0 01 00 08 */	sth r0, 8(r1)
/* 80127B60 00124AC0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80127B64 00124AC4  48 04 D6 B5 */	bl SetTarget__13CBoneTrackingF9TUniqueId
lbl_80127B68:
/* 80127B68 00124AC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80127B6C 00124ACC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80127B70 00124AD0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80127B74 00124AD4  7C 08 03 A6 */	mtlr r0
/* 80127B78 00124AD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80127B7C 00124ADC  4E 80 00 20 */	blr

.global PatternShagged__12CSpacePirateFR13CStateManagerf
PatternShagged__12CSpacePirateFR13CStateManagerf:
/* 80127B80 00124AE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80127B84 00124AE4  7C 08 02 A6 */	mflr r0
/* 80127B88 00124AE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80127B8C 00124AEC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80127B90 00124AF0  FF E0 08 90 */	fmr f31, f1
/* 80127B94 00124AF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80127B98 00124AF8  3B E0 00 00 */	li r31, 0
/* 80127B9C 00124AFC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80127BA0 00124B00  7C 9E 23 78 */	mr r30, r4
/* 80127BA4 00124B04  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80127BA8 00124B08  7C 7D 1B 78 */	mr r29, r3
/* 80127BAC 00124B0C  48 0C DF B1 */	bl Stuck__10CPatternedFR13CStateManagerf
/* 80127BB0 00124B10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127BB4 00124B14  40 82 00 1C */	bne lbl_80127BD0
/* 80127BB8 00124B18  FC 20 F8 90 */	fmr f1, f31
/* 80127BBC 00124B1C  7F A3 EB 78 */	mr r3, r29
/* 80127BC0 00124B20  7F C4 F3 78 */	mr r4, r30
/* 80127BC4 00124B24  48 0C E0 35 */	bl PatternShagged__10CPatternedFR13CStateManagerf
/* 80127BC8 00124B28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127BCC 00124B2C  41 82 00 08 */	beq lbl_80127BD4
lbl_80127BD0:
/* 80127BD0 00124B30  3B E0 00 01 */	li r31, 1
lbl_80127BD4:
/* 80127BD4 00124B34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80127BD8 00124B38  7F E3 FB 78 */	mr r3, r31
/* 80127BDC 00124B3C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80127BE0 00124B40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80127BE4 00124B44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80127BE8 00124B48  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80127BEC 00124B4C  7C 08 03 A6 */	mtlr r0
/* 80127BF0 00124B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80127BF4 00124B54  4E 80 00 20 */	blr

.global Stuck__12CSpacePirateFR13CStateManagerf
Stuck__12CSpacePirateFR13CStateManagerf:
/* 80127BF8 00124B58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80127BFC 00124B5C  7C 08 02 A6 */	mflr r0
/* 80127C00 00124B60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80127C04 00124B64  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80127C08 00124B68  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80127C0C 00124B6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80127C10 00124B70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80127C14 00124B74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80127C18 00124B78  7C 7D 1B 78 */	mr r29, r3
/* 80127C1C 00124B7C  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80127C20 00124B80  C0 43 03 38 */	lfs f2, 0x338(r3)
/* 80127C24 00124B84  FF E0 08 90 */	fmr f31, f1
/* 80127C28 00124B88  7C 9E 23 78 */	mr r30, r4
/* 80127C2C 00124B8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80127C30 00124B90  40 81 00 34 */	ble lbl_80127C64
/* 80127C34 00124B94  3B E0 00 00 */	li r31, 0
/* 80127C38 00124B98  48 0C DF 25 */	bl Stuck__10CPatternedFR13CStateManagerf
/* 80127C3C 00124B9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127C40 00124BA0  40 82 00 1C */	bne lbl_80127C5C
/* 80127C44 00124BA4  FC 20 F8 90 */	fmr f1, f31
/* 80127C48 00124BA8  7F A3 EB 78 */	mr r3, r29
/* 80127C4C 00124BAC  7F C4 F3 78 */	mr r4, r30
/* 80127C50 00124BB0  48 0C E0 FD */	bl PathShagged__10CPatternedFR13CStateManagerf
/* 80127C54 00124BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80127C58 00124BB8  41 82 00 10 */	beq lbl_80127C68
lbl_80127C5C:
/* 80127C5C 00124BBC  3B E0 00 01 */	li r31, 1
/* 80127C60 00124BC0  48 00 00 08 */	b lbl_80127C68
lbl_80127C64:
/* 80127C64 00124BC4  3B E0 00 00 */	li r31, 0
lbl_80127C68:
/* 80127C68 00124BC8  7F E3 FB 78 */	mr r3, r31
/* 80127C6C 00124BCC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80127C70 00124BD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80127C74 00124BD4  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80127C78 00124BD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80127C7C 00124BDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80127C80 00124BE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80127C84 00124BE4  7C 08 03 A6 */	mtlr r0
/* 80127C88 00124BE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80127C8C 00124BEC  4E 80 00 20 */	blr

.global Death__12CSpacePirateFRC9CVector3fR13CStateManager
Death__12CSpacePirateFRC9CVector3fR13CStateManager:
/* 80127C90 00124BF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80127C94 00124BF4  7C 08 02 A6 */	mflr r0
/* 80127C98 00124BF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80127C9C 00124BFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80127CA0 00124C00  7C 7F 1B 78 */	mr r31, r3
/* 80127CA4 00124C04  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80127CA8 00124C08  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127CAC 00124C0C  41 82 00 AC */	beq lbl_80127D58
/* 80127CB0 00124C10  4B F5 36 F5 */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 80127CB4 00124C14  A0 7F 07 B4 */	lhz r3, 0x7b4(r31)
/* 80127CB8 00124C18  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80127CBC 00124C1C  7C 03 00 40 */	cmplw r3, r0
/* 80127CC0 00124C20  41 82 00 98 */	beq lbl_80127D58
/* 80127CC4 00124C24  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80127CC8 00124C28  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80127CCC 00124C2C  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 80127CD0 00124C30  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80127CD4 00124C34  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80127CD8 00124C38  3C 80 80 3E */	lis r4, lbl_803DAA50@ha
/* 80127CDC 00124C3C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80127CE0 00124C40  38 C0 00 03 */	li r6, 3
/* 80127CE4 00124C44  38 00 00 02 */	li r0, 2
/* 80127CE8 00124C48  90 A1 00 08 */	stw r5, 8(r1)
/* 80127CEC 00124C4C  38 A4 AA 50 */	addi r5, r4, lbl_803DAA50@l
/* 80127CF0 00124C50  3B E3 00 04 */	addi r31, r3, 4
/* 80127CF4 00124C54  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80127CF8 00124C58  7F E3 FB 78 */	mr r3, r31
/* 80127CFC 00124C5C  38 80 00 03 */	li r4, 3
/* 80127D00 00124C60  90 A1 00 08 */	stw r5, 8(r1)
/* 80127D04 00124C64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80127D08 00124C68  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80127D0C 00124C6C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80127D10 00124C70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80127D14 00124C74  48 00 97 25 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80127D18 00124C78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80127D1C 00124C7C  3C 60 80 3E */	lis r3, lbl_803DAA50@ha
/* 80127D20 00124C80  38 83 AA 50 */	addi r4, r3, lbl_803DAA50@l
/* 80127D24 00124C84  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80127D28 00124C88  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 80127D2C 00124C8C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80127D30 00124C90  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80127D34 00124C94  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80127D38 00124C98  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 80127D3C 00124C9C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80127D40 00124CA0  90 7F 00 E8 */	stw r3, 0xe8(r31)
/* 80127D44 00124CA4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80127D48 00124CA8  90 BF 00 EC */	stw r5, 0xec(r31)
/* 80127D4C 00124CAC  90 81 00 08 */	stw r4, 8(r1)
/* 80127D50 00124CB0  90 7F 00 F0 */	stw r3, 0xf0(r31)
/* 80127D54 00124CB4  90 01 00 08 */	stw r0, 8(r1)
lbl_80127D58:
/* 80127D58 00124CB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80127D5C 00124CBC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80127D60 00124CC0  7C 08 03 A6 */	mtlr r0
/* 80127D64 00124CC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80127D68 00124CC8  4E 80 00 20 */	blr

.global KnockBack__12CSpacePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__12CSpacePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 80127D6C 00124CCC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80127D70 00124CD0  7C 08 02 A6 */	mflr r0
/* 80127D74 00124CD4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80127D78 00124CD8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80127D7C 00124CDC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 80127D80 00124CE0  BF 41 00 48 */	stmw r26, 0x48(r1)
/* 80127D84 00124CE4  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80127D88 00124CE8  FF E0 08 90 */	fmr f31, f1
/* 80127D8C 00124CEC  7C 7A 1B 78 */	mr r26, r3
/* 80127D90 00124CF0  7C 9B 23 78 */	mr r27, r4
/* 80127D94 00124CF4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127D98 00124CF8  7C BC 2B 78 */	mr r28, r5
/* 80127D9C 00124CFC  7C DD 33 78 */	mr r29, r6
/* 80127DA0 00124D00  7C FE 3B 78 */	mr r30, r7
/* 80127DA4 00124D04  7D 1F 43 78 */	mr r31, r8
/* 80127DA8 00124D08  41 82 00 18 */	beq lbl_80127DC0
/* 80127DAC 00124D0C  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 80127DB0 00124D10  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127DB4 00124D14  41 82 00 0C */	beq lbl_80127DC0
/* 80127DB8 00124D18  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80127DBC 00124D1C  41 82 02 C4 */	beq lbl_80128080
lbl_80127DC0:
/* 80127DC0 00124D20  88 1A 06 34 */	lbz r0, 0x634(r26)
/* 80127DC4 00124D24  38 7A 04 60 */	addi r3, r26, 0x460
/* 80127DC8 00124D28  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80127DCC 00124D2C  7C 00 00 34 */	cntlzw r0, r0
/* 80127DD0 00124D30  54 04 D9 7E */	srwi r4, r0, 5
/* 80127DD4 00124D34  48 10 BF 91 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 80127DD8 00124D38  7F 43 D3 78 */	mr r3, r26
/* 80127DDC 00124D3C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80127DE0 00124D40  81 8C 02 B8 */	lwz r12, 0x2b8(r12)
/* 80127DE4 00124D44  7D 89 03 A6 */	mtctr r12
/* 80127DE8 00124D48  4E 80 04 21 */	bctrl
/* 80127DEC 00124D4C  7C 65 1B 78 */	mr r5, r3
/* 80127DF0 00124D50  38 7A 04 60 */	addi r3, r26, 0x460
/* 80127DF4 00124D54  38 80 00 02 */	li r4, 2
/* 80127DF8 00124D58  48 10 BF CD */	bl SetAvailableState__20CKnockBackControllerFib
/* 80127DFC 00124D5C  88 1A 06 36 */	lbz r0, 0x636(r26)
/* 80127E00 00124D60  38 80 00 01 */	li r4, 1
/* 80127E04 00124D64  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80127E08 00124D68  40 82 00 10 */	bne lbl_80127E18
/* 80127E0C 00124D6C  88 1A 06 35 */	lbz r0, 0x635(r26)
/* 80127E10 00124D70  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80127E14 00124D74  41 82 00 1C */	beq lbl_80127E30
lbl_80127E18:
/* 80127E18 00124D78  88 7D 00 04 */	lbz r3, 4(r29)
/* 80127E1C 00124D7C  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 80127E20 00124D80  40 82 00 10 */	bne lbl_80127E30
/* 80127E24 00124D84  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80127E28 00124D88  40 82 00 08 */	bne lbl_80127E30
/* 80127E2C 00124D8C  38 80 00 00 */	li r4, 0
lbl_80127E30:
/* 80127E30 00124D90  88 1A 04 E1 */	lbz r0, 0x4e1(r26)
/* 80127E34 00124D94  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80127E38 00124D98  FC 20 F8 90 */	fmr f1, f31
/* 80127E3C 00124D9C  7F 43 D3 78 */	mr r3, r26
/* 80127E40 00124DA0  98 1A 04 E1 */	stb r0, 0x4e1(r26)
/* 80127E44 00124DA4  7F 64 DB 78 */	mr r4, r27
/* 80127E48 00124DA8  7F 85 E3 78 */	mr r5, r28
/* 80127E4C 00124DAC  7F A6 EB 78 */	mr r6, r29
/* 80127E50 00124DB0  7F C7 F3 78 */	mr r7, r30
/* 80127E54 00124DB4  7F E8 FB 78 */	mr r8, r31
/* 80127E58 00124DB8  4B F5 29 25 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 80127E5C 00124DBC  88 1A 06 35 */	lbz r0, 0x635(r26)
/* 80127E60 00124DC0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80127E64 00124DC4  41 82 00 B0 */	beq lbl_80127F14
/* 80127E68 00124DC8  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 80127E6C 00124DCC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127E70 00124DD0  41 82 00 7C */	beq lbl_80127EEC
/* 80127E74 00124DD4  C0 02 98 28 */	lfs f0, lbl_805AB548@sda21(r2)
/* 80127E78 00124DD8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80127E7C 00124DDC  4C 41 13 82 */	cror 2, 1, 2
/* 80127E80 00124DE0  40 82 00 94 */	bne lbl_80127F14
/* 80127E84 00124DE4  80 7A 04 50 */	lwz r3, 0x450(r26)
/* 80127E88 00124DE8  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80127E8C 00124DEC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80127E90 00124DF0  40 82 00 84 */	bne lbl_80127F14
/* 80127E94 00124DF4  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80127E98 00124DF8  38 9A 08 A8 */	addi r4, r26, 0x8a8
/* 80127E9C 00124DFC  C0 22 98 08 */	lfs f1, lbl_805AB528@sda21(r2)
/* 80127EA0 00124E00  38 6D 8A BC */	addi r3, r13, lbl_805A767C@sda21
/* 80127EA4 00124E04  D0 1A 03 E8 */	stfs f0, 0x3e8(r26)
/* 80127EA8 00124E08  38 AD 8A C0 */	addi r5, r13, lbl_805A7680@sda21
/* 80127EAC 00124E0C  C0 1A 08 A8 */	lfs f0, 0x8a8(r26)
/* 80127EB0 00124E10  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 80127EB4 00124E14  D0 1A 08 A8 */	stfs f0, 0x8a8(r26)
/* 80127EB8 00124E18  4B EE 43 FD */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 80127EBC 00124E1C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80127EC0 00124E20  7F 44 D3 78 */	mr r4, r26
/* 80127EC4 00124E24  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80127EC8 00124E28  D0 3A 08 A8 */	stfs f1, 0x8a8(r26)
/* 80127ECC 00124E2C  D0 1A 08 BC */	stfs f0, 0x8bc(r26)
/* 80127ED0 00124E30  80 7C 08 84 */	lwz r3, 0x884(r28)
/* 80127ED4 00124E34  48 0B D2 FD */	bl LoadAndStartElectric__20CActorModelParticlesFR6CActor
/* 80127ED8 00124E38  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 80127EDC 00124E3C  C0 1A 08 A8 */	lfs f0, 0x8a8(r26)
/* 80127EE0 00124E40  EC 01 00 2A */	fadds f0, f1, f0
/* 80127EE4 00124E44  D0 1A 08 AC */	stfs f0, 0x8ac(r26)
/* 80127EE8 00124E48  48 00 00 2C */	b lbl_80127F14
lbl_80127EEC:
/* 80127EEC 00124E4C  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 80127EF0 00124E50  7F 44 D3 78 */	mr r4, r26
/* 80127EF4 00124E54  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80127EF8 00124E58  D0 3A 03 E8 */	stfs f1, 0x3e8(r26)
/* 80127EFC 00124E5C  D0 3A 08 BC */	stfs f1, 0x8bc(r26)
/* 80127F00 00124E60  D0 1A 08 B8 */	stfs f0, 0x8b8(r26)
/* 80127F04 00124E64  80 7C 08 84 */	lwz r3, 0x884(r28)
/* 80127F08 00124E68  48 0B D2 C9 */	bl LoadAndStartElectric__20CActorModelParticlesFR6CActor
/* 80127F0C 00124E6C  C0 02 97 DC */	lfs f0, lbl_805AB4FC@sda21(r2)
/* 80127F10 00124E70  D0 1A 08 AC */	stfs f0, 0x8ac(r26)
lbl_80127F14:
/* 80127F14 00124E74  88 1A 06 35 */	lbz r0, 0x635(r26)
/* 80127F18 00124E78  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80127F1C 00124E7C  41 82 00 54 */	beq lbl_80127F70
/* 80127F20 00124E80  80 7A 08 5C */	lwz r3, 0x85c(r26)
/* 80127F24 00124E84  28 03 00 00 */	cmplwi r3, 0
/* 80127F28 00124E88  41 82 00 48 */	beq lbl_80127F70
/* 80127F2C 00124E8C  C0 02 98 54 */	lfs f0, lbl_805AB574@sda21(r2)
/* 80127F30 00124E90  C0 7B 00 00 */	lfs f3, 0(r27)
/* 80127F34 00124E94  EC 80 07 F2 */	fmuls f4, f0, f31
/* 80127F38 00124E98  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80127F3C 00124E9C  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80127F40 00124EA0  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80127F44 00124EA4  EC 64 00 F2 */	fmuls f3, f4, f3
/* 80127F48 00124EA8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80127F4C 00124EAC  EC 24 00 72 */	fmuls f1, f4, f1
/* 80127F50 00124EB0  EC 00 18 2A */	fadds f0, f0, f3
/* 80127F54 00124EB4  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 80127F58 00124EB8  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 80127F5C 00124EBC  EC 00 10 2A */	fadds f0, f0, f2
/* 80127F60 00124EC0  D0 03 00 88 */	stfs f0, 0x88(r3)
/* 80127F64 00124EC4  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80127F68 00124EC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80127F6C 00124ECC  D0 03 00 8C */	stfs f0, 0x8c(r3)
lbl_80127F70:
/* 80127F70 00124ED0  88 1A 04 00 */	lbz r0, 0x400(r26)
/* 80127F74 00124ED4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80127F78 00124ED8  41 82 00 9C */	beq lbl_80128014
/* 80127F7C 00124EDC  80 1A 04 64 */	lwz r0, 0x464(r26)
/* 80127F80 00124EE0  2C 00 00 03 */	cmpwi r0, 3
/* 80127F84 00124EE4  41 82 00 08 */	beq lbl_80127F8C
/* 80127F88 00124EE8  48 00 00 F8 */	b lbl_80128080
lbl_80127F8C:
/* 80127F8C 00124EEC  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 80127F90 00124EF0  38 61 00 30 */	addi r3, r1, 0x30
/* 80127F94 00124EF4  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 80127F98 00124EF8  38 84 00 11 */	addi r4, r4, 0x11
/* 80127F9C 00124EFC  4B ED CD 1D */	bl string_l__4rstlFPCc
/* 80127FA0 00124F00  7F 43 D3 78 */	mr r3, r26
/* 80127FA4 00124F04  4B F7 A9 55 */	bl GetStateMachine__3CAiFv
/* 80127FA8 00124F08  7C 66 1B 78 */	mr r6, r3
/* 80127FAC 00124F0C  7F 84 E3 78 */	mr r4, r28
/* 80127FB0 00124F10  7F 45 D3 78 */	mr r5, r26
/* 80127FB4 00124F14  38 7A 03 30 */	addi r3, r26, 0x330
/* 80127FB8 00124F18  38 E1 00 30 */	addi r7, r1, 0x30
/* 80127FBC 00124F1C  4B F5 7C 49 */	bl "SetState__18CStateMachineStateFR13CStateManagerR3CAiPC13CStateMachineRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80127FC0 00124F20  38 61 00 30 */	addi r3, r1, 0x30
/* 80127FC4 00124F24  48 21 5B 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80127FC8 00124F28  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80127FCC 00124F2C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80127FD0 00124F30  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80127FD4 00124F34  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80127FD8 00124F38  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80127FDC 00124F3C  38 61 00 14 */	addi r3, r1, 0x14
/* 80127FE0 00124F40  80 02 C6 00 */	lwz r0, kAllAreas__11CSfxManager@sda21(r2)
/* 80127FE4 00124F44  38 A1 00 24 */	addi r5, r1, 0x24
/* 80127FE8 00124F48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80127FEC 00124F4C  38 E0 00 7F */	li r7, 0x7f
/* 80127FF0 00124F50  A9 42 C5 FA */	lha r10, kMedPriority__11CSfxManager@sda21(r2)
/* 80127FF4 00124F54  39 00 00 01 */	li r8, 1
/* 80127FF8 00124F58  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80127FFC 00124F5C  39 20 00 00 */	li r9, 0
/* 80128000 00124F60  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80128004 00124F64  90 01 00 08 */	stw r0, 8(r1)
/* 80128008 00124F68  A0 9A 06 28 */	lhz r4, 0x628(r26)
/* 8012800C 00124F6C  48 1C 21 AD */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
/* 80128010 00124F70  48 00 00 70 */	b lbl_80128080
lbl_80128014:
/* 80128014 00124F74  80 1A 04 64 */	lwz r0, 0x464(r26)
/* 80128018 00124F78  2C 00 00 03 */	cmpwi r0, 3
/* 8012801C 00124F7C  41 82 00 08 */	beq lbl_80128024
/* 80128020 00124F80  48 00 00 60 */	b lbl_80128080
lbl_80128024:
/* 80128024 00124F84  80 1A 04 68 */	lwz r0, 0x468(r26)
/* 80128028 00124F88  2C 00 00 09 */	cmpwi r0, 9
/* 8012802C 00124F8C  41 82 00 54 */	beq lbl_80128080
/* 80128030 00124F90  2C 00 00 08 */	cmpwi r0, 8
/* 80128034 00124F94  41 82 00 4C */	beq lbl_80128080
/* 80128038 00124F98  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 8012803C 00124F9C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80128040 00124FA0  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80128044 00124FA4  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 80128048 00124FA8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 8012804C 00124FAC  38 61 00 10 */	addi r3, r1, 0x10
/* 80128050 00124FB0  80 02 C6 00 */	lwz r0, kAllAreas__11CSfxManager@sda21(r2)
/* 80128054 00124FB4  38 A1 00 18 */	addi r5, r1, 0x18
/* 80128058 00124FB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8012805C 00124FBC  38 E0 00 7F */	li r7, 0x7f
/* 80128060 00124FC0  A9 42 C5 FA */	lha r10, kMedPriority__11CSfxManager@sda21(r2)
/* 80128064 00124FC4  39 00 00 01 */	li r8, 1
/* 80128068 00124FC8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8012806C 00124FCC  39 20 00 00 */	li r9, 0
/* 80128070 00124FD0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80128074 00124FD4  90 01 00 08 */	stw r0, 8(r1)
/* 80128078 00124FD8  A0 9A 06 2A */	lhz r4, 0x62a(r26)
/* 8012807C 00124FDC  48 1C 21 3D */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
lbl_80128080:
/* 80128080 00124FE0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 80128084 00124FE4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80128088 00124FE8  BB 41 00 48 */	lmw r26, 0x48(r1)
/* 8012808C 00124FEC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80128090 00124FF0  7C 08 03 A6 */	mtlr r0
/* 80128094 00124FF4  38 21 00 70 */	addi r1, r1, 0x70
/* 80128098 00124FF8  4E 80 00 20 */	blr

.global TryWallHang__10CPatternedFR13CStateManageri
TryWallHang__10CPatternedFR13CStateManageri:
/* 8012809C 00124FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801280A0 00125000  7C 08 02 A6 */	mflr r0
/* 801280A4 00125004  38 A0 00 15 */	li r5, 0x15
/* 801280A8 00125008  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801280AC 0012500C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801280B0 00125010  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801280B4 00125014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801280B8 00125018  A0 C3 02 DC */	lhz r6, 0x2dc(r3)
/* 801280BC 0012501C  80 83 04 50 */	lwz r4, 0x450(r3)
/* 801280C0 00125020  3C 60 80 3E */	lis r3, lbl_803E0B98@ha
/* 801280C4 00125024  90 01 00 0C */	stw r0, 0xc(r1)
/* 801280C8 00125028  38 03 0B 98 */	addi r0, r3, lbl_803E0B98@l
/* 801280CC 0012502C  3B E4 00 04 */	addi r31, r4, 4
/* 801280D0 00125030  38 80 00 15 */	li r4, 0x15
/* 801280D4 00125034  B0 C1 00 08 */	sth r6, 8(r1)
/* 801280D8 00125038  7F E3 FB 78 */	mr r3, r31
/* 801280DC 0012503C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801280E0 00125040  90 01 00 0C */	stw r0, 0xc(r1)
/* 801280E4 00125044  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 801280E8 00125048  48 00 93 51 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801280EC 0012504C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801280F0 00125050  3C 60 80 3E */	lis r3, lbl_803E0B98@ha
/* 801280F4 00125054  38 83 0B 98 */	addi r4, r3, lbl_803E0B98@l
/* 801280F8 00125058  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801280FC 0012505C  90 1F 02 58 */	stw r0, 0x258(r31)
/* 80128100 00125060  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80128104 00125064  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 80128108 00125068  90 81 00 0C */	stw r4, 0xc(r1)
/* 8012810C 0012506C  B0 7F 02 5C */	sth r3, 0x25c(r31)
/* 80128110 00125070  90 01 00 0C */	stw r0, 0xc(r1)
/* 80128114 00125074  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80128118 00125078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012811C 0012507C  7C 08 03 A6 */	mtlr r0
/* 80128120 00125080  38 21 00 20 */	addi r1, r1, 0x20
/* 80128124 00125084  4E 80 00 20 */	blr

.global __dt__14CBCWallHangCmdFv
__dt__14CBCWallHangCmdFv:
/* 80128128 00125088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012812C 0012508C  7C 08 02 A6 */	mflr r0
/* 80128130 00125090  90 01 00 14 */	stw r0, 0x14(r1)
/* 80128134 00125094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80128138 00125098  7C 7F 1B 79 */	or. r31, r3, r3
/* 8012813C 0012509C  41 82 00 30 */	beq lbl_8012816C
/* 80128140 001250A0  3C 60 80 3E */	lis r3, lbl_803E0B98@ha
/* 80128144 001250A4  38 03 0B 98 */	addi r0, r3, lbl_803E0B98@l
/* 80128148 001250A8  90 1F 00 00 */	stw r0, 0(r31)
/* 8012814C 001250AC  41 82 00 10 */	beq lbl_8012815C
/* 80128150 001250B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80128154 001250B4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80128158 001250B8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8012815C:
/* 8012815C 001250BC  7C 80 07 35 */	extsh. r0, r4
/* 80128160 001250C0  40 81 00 0C */	ble lbl_8012816C
/* 80128164 001250C4  7F E3 FB 78 */	mr r3, r31
/* 80128168 001250C8  48 1E D7 C9 */	bl Free__7CMemoryFPCv
lbl_8012816C:
/* 8012816C 001250CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80128170 001250D0  7F E3 FB 78 */	mr r3, r31
/* 80128174 001250D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80128178 001250D8  7C 08 03 A6 */	mtlr r0
/* 8012817C 001250DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80128180 001250E0  4E 80 00 20 */	blr

.global TryCover__10CPatternedFR13CStateManageri
TryCover__10CPatternedFR13CStateManageri:
/* 80128184 001250E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80128188 001250E8  7C 08 02 A6 */	mflr r0
/* 8012818C 001250EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80128190 001250F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80128194 001250F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80128198 001250F8  7C BE 2B 78 */	mr r30, r5
/* 8012819C 001250FC  38 A1 00 08 */	addi r5, r1, 8
/* 801281A0 00125100  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 801281A4 00125104  A0 03 02 DC */	lhz r0, 0x2dc(r3)
/* 801281A8 00125108  3B E6 00 04 */	addi r31, r6, 4
/* 801281AC 0012510C  B0 01 00 08 */	sth r0, 8(r1)
/* 801281B0 00125110  4B F5 46 FD */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 801281B4 00125114  28 03 00 00 */	cmplwi r3, 0
/* 801281B8 00125118  41 82 00 C8 */	beq lbl_80128280
/* 801281BC 0012511C  C0 43 00 58 */	lfs f2, 0x58(r3)
/* 801281C0 00125120  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 801281C4 00125124  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 801281C8 00125128  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 801281CC 0012512C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 801281D0 00125130  FC 40 10 50 */	fneg f2, f2
/* 801281D4 00125134  FC 20 08 50 */	fneg f1, f1
/* 801281D8 00125138  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 801281DC 0012513C  FC 00 00 50 */	fneg f0, f0
/* 801281E0 00125140  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 801281E4 00125144  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 801281E8 00125148  3C 60 80 3E */	lis r3, lbl_803E0B8C@ha
/* 801281EC 0012514C  38 80 00 14 */	li r4, 0x14
/* 801281F0 00125150  90 01 00 0C */	stw r0, 0xc(r1)
/* 801281F4 00125154  38 03 0B 8C */	addi r0, r3, lbl_803E0B8C@l
/* 801281F8 00125158  7F E3 FB 78 */	mr r3, r31
/* 801281FC 0012515C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80128200 00125160  38 80 00 14 */	li r4, 0x14
/* 80128204 00125164  90 01 00 0C */	stw r0, 0xc(r1)
/* 80128208 00125168  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8012820C 0012516C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80128210 00125170  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80128214 00125174  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 80128218 00125178  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8012821C 0012517C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80128220 00125180  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80128224 00125184  48 00 92 15 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80128228 00125188  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8012822C 0012518C  3C 60 80 3E */	lis r3, lbl_803E0B8C@ha
/* 80128230 00125190  38 83 0B 8C */	addi r4, r3, lbl_803E0B8C@l
/* 80128234 00125194  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80128238 00125198  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8012823C 0012519C  90 1F 02 34 */	stw r0, 0x234(r31)
/* 80128240 001251A0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80128244 001251A4  7F C3 F3 78 */	mr r3, r30
/* 80128248 001251A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8012824C 001251AC  90 7F 02 38 */	stw r3, 0x238(r31)
/* 80128250 001251B0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80128254 001251B4  90 BF 02 3C */	stw r5, 0x23c(r31)
/* 80128258 001251B8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8012825C 001251BC  90 7F 02 40 */	stw r3, 0x240(r31)
/* 80128260 001251C0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80128264 001251C4  90 BF 02 44 */	stw r5, 0x244(r31)
/* 80128268 001251C8  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8012826C 001251CC  90 7F 02 48 */	stw r3, 0x248(r31)
/* 80128270 001251D0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80128274 001251D4  90 BF 02 4C */	stw r5, 0x24c(r31)
/* 80128278 001251D8  90 7F 02 50 */	stw r3, 0x250(r31)
/* 8012827C 001251DC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80128280:
/* 80128280 001251E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80128284 001251E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80128288 001251E8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8012828C 001251EC  7C 08 03 A6 */	mtlr r0
/* 80128290 001251F0  38 21 00 40 */	addi r1, r1, 0x40
/* 80128294 001251F4  4E 80 00 20 */	blr

.global __dt__11CBCCoverCmdFv
__dt__11CBCCoverCmdFv:
/* 80128298 001251F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012829C 001251FC  7C 08 02 A6 */	mflr r0
/* 801282A0 00125200  90 01 00 14 */	stw r0, 0x14(r1)
/* 801282A4 00125204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801282A8 00125208  7C 7F 1B 79 */	or. r31, r3, r3
/* 801282AC 0012520C  41 82 00 30 */	beq lbl_801282DC
/* 801282B0 00125210  3C 60 80 3E */	lis r3, lbl_803E0B8C@ha
/* 801282B4 00125214  38 03 0B 8C */	addi r0, r3, lbl_803E0B8C@l
/* 801282B8 00125218  90 1F 00 00 */	stw r0, 0(r31)
/* 801282BC 0012521C  41 82 00 10 */	beq lbl_801282CC
/* 801282C0 00125220  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801282C4 00125224  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801282C8 00125228  90 1F 00 00 */	stw r0, 0(r31)
lbl_801282CC:
/* 801282CC 0012522C  7C 80 07 35 */	extsh. r0, r4
/* 801282D0 00125230  40 81 00 0C */	ble lbl_801282DC
/* 801282D4 00125234  7F E3 FB 78 */	mr r3, r31
/* 801282D8 00125238  48 1E D6 59 */	bl Free__7CMemoryFPCv
lbl_801282DC:
/* 801282DC 0012523C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801282E0 00125240  7F E3 FB 78 */	mr r3, r31
/* 801282E4 00125244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801282E8 00125248  7C 08 03 A6 */	mtlr r0
/* 801282EC 0012524C  38 21 00 10 */	addi r1, r1, 0x10
/* 801282F0 00125250  4E 80 00 20 */	blr

.global SetNonCinematicCollision__12CSpacePirateFR13CStateManager
SetNonCinematicCollision__12CSpacePirateFR13CStateManager:
/* 801282F4 00125254  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801282F8 00125258  7C 08 02 A6 */	mflr r0
/* 801282FC 0012525C  7C 85 23 78 */	mr r5, r4
/* 80128300 00125260  38 80 00 30 */	li r4, 0x30
/* 80128304 00125264  90 01 00 34 */	stw r0, 0x34(r1)
/* 80128308 00125268  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012830C 0012526C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80128310 00125270  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80128314 00125274  93 81 00 20 */	stw r28, 0x20(r1)
/* 80128318 00125278  7C 7C 1B 78 */	mr r28, r3
/* 8012831C 0012527C  4B F2 C0 35 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80128320 00125280  7F 83 E3 78 */	mr r3, r28
/* 80128324 00125284  4B F2 B5 99 */	bl GetMaterialFilter__6CActorCFv
/* 80128328 00125288  80 AD 8A B8 */	lwz r5, lbl_805A7678@sda21(r13)
/* 8012832C 0012528C  7C 7F 1B 78 */	mr r31, r3
/* 80128330 00125290  38 60 00 00 */	li r3, 0
/* 80128334 00125294  38 80 00 01 */	li r4, 1
/* 80128338 00125298  48 26 1B BD */	bl __shl2i
/* 8012833C 0012529C  7C 7E 1B 78 */	mr r30, r3
/* 80128340 001252A0  7C 9D 23 78 */	mr r29, r4
/* 80128344 001252A4  7F 83 E3 78 */	mr r3, r28
/* 80128348 001252A8  4B F2 B5 75 */	bl GetMaterialFilter__6CActorCFv
/* 8012834C 001252AC  80 83 00 00 */	lwz r4, 0(r3)
/* 80128350 001252B0  38 00 00 03 */	li r0, 3
/* 80128354 001252B4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80128358 001252B8  7F 83 E3 78 */	mr r3, r28
/* 8012835C 001252BC  7C 85 F3 78 */	or r5, r4, r30
/* 80128360 001252C0  38 81 00 08 */	addi r4, r1, 8
/* 80128364 001252C4  7C C6 EB 78 */	or r6, r6, r29
/* 80128368 001252C8  90 A1 00 08 */	stw r5, 8(r1)
/* 8012836C 001252CC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80128370 001252D0  80 BF 00 08 */	lwz r5, 8(r31)
/* 80128374 001252D4  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 80128378 001252D8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8012837C 001252DC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80128380 001252E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80128384 001252E4  4B F2 B5 1D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80128388 001252E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012838C 001252EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80128390 001252F0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80128394 001252F4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80128398 001252F8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8012839C 001252FC  7C 08 03 A6 */	mtlr r0
/* 801283A0 00125300  38 21 00 30 */	addi r1, r1, 0x30
/* 801283A4 00125304  4E 80 00 20 */	blr

.global SetCinematicCollision__12CSpacePirateFR13CStateManager
SetCinematicCollision__12CSpacePirateFR13CStateManager:
/* 801283A8 00125308  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801283AC 0012530C  7C 08 02 A6 */	mflr r0
/* 801283B0 00125310  7C 85 23 78 */	mr r5, r4
/* 801283B4 00125314  38 80 00 30 */	li r4, 0x30
/* 801283B8 00125318  90 01 00 34 */	stw r0, 0x34(r1)
/* 801283BC 0012531C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801283C0 00125320  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801283C4 00125324  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801283C8 00125328  7C 7D 1B 78 */	mr r29, r3
/* 801283CC 0012532C  4B F2 BB B5 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801283D0 00125330  7F A3 EB 78 */	mr r3, r29
/* 801283D4 00125334  4B F2 B4 E9 */	bl GetMaterialFilter__6CActorCFv
/* 801283D8 00125338  83 E3 00 00 */	lwz r31, 0(r3)
/* 801283DC 0012533C  83 C3 00 04 */	lwz r30, 4(r3)
/* 801283E0 00125340  7F A3 EB 78 */	mr r3, r29
/* 801283E4 00125344  4B F2 B4 D9 */	bl GetMaterialFilter__6CActorCFv
/* 801283E8 00125348  3C 80 FF FF */	lis r4, 0xFFFEFFFF@ha
/* 801283EC 0012534C  38 C0 FF FF */	li r6, -1
/* 801283F0 00125350  38 A4 FF FF */	addi r5, r4, 0xFFFEFFFF@l
/* 801283F4 00125354  38 00 00 03 */	li r0, 3
/* 801283F8 00125358  7F C6 30 38 */	and r6, r30, r6
/* 801283FC 0012535C  38 81 00 08 */	addi r4, r1, 8
/* 80128400 00125360  7F E5 28 38 */	and r5, r31, r5
/* 80128404 00125364  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80128408 00125368  90 A1 00 08 */	stw r5, 8(r1)
/* 8012840C 0012536C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80128410 00125370  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80128414 00125374  7F A3 EB 78 */	mr r3, r29
/* 80128418 00125378  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8012841C 0012537C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80128420 00125380  90 01 00 18 */	stw r0, 0x18(r1)
/* 80128424 00125384  4B F2 B4 7D */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80128428 00125388  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012842C 0012538C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80128430 00125390  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80128434 00125394  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80128438 00125398  7C 08 03 A6 */	mtlr r0
/* 8012843C 0012539C  38 21 00 30 */	addi r1, r1, 0x30
/* 80128440 001253A0  4E 80 00 20 */	blr

.global GetTargetPos__12CSpacePirateFR13CStateManager
GetTargetPos__12CSpacePirateFR13CStateManager:
/* 80128444 001253A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80128448 001253A8  7C 08 02 A6 */	mflr r0
/* 8012844C 001253AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80128450 001253B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80128454 001253B4  7C BF 2B 78 */	mr r31, r5
/* 80128458 001253B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012845C 001253BC  7C 9E 23 78 */	mr r30, r4
/* 80128460 001253C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80128464 001253C4  7C 7D 1B 78 */	mr r29, r3
/* 80128468 001253C8  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 8012846C 001253CC  A0 7E 07 C0 */	lhz r3, 0x7c0(r30)
/* 80128470 001253D0  A0 04 00 08 */	lhz r0, 8(r4)
/* 80128474 001253D4  7C 03 00 40 */	cmplw r3, r0
/* 80128478 001253D8  41 82 00 80 */	beq lbl_801284F8
/* 8012847C 001253DC  A0 1E 07 C0 */	lhz r0, 0x7c0(r30)
/* 80128480 001253E0  7F E3 FB 78 */	mr r3, r31
/* 80128484 001253E4  38 81 00 10 */	addi r4, r1, 0x10
/* 80128488 001253E8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8012848C 001253EC  4B F2 41 19 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80128490 001253F0  7C 64 1B 78 */	mr r4, r3
/* 80128494 001253F4  38 61 00 14 */	addi r3, r1, 0x14
/* 80128498 001253F8  4B F8 77 F9 */	bl "__ct__19TCastToPtr<6CActor>FP7CEntity"
/* 8012849C 001253FC  80 63 00 04 */	lwz r3, 4(r3)
/* 801284A0 00125400  28 03 00 00 */	cmplwi r3, 0
/* 801284A4 00125404  41 82 00 2C */	beq lbl_801284D0
/* 801284A8 00125408  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801284AC 0012540C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801284B0 00125410  41 82 00 20 */	beq lbl_801284D0
/* 801284B4 00125414  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801284B8 00125418  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801284BC 0012541C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801284C0 00125420  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801284C4 00125424  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801284C8 00125428  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801284CC 0012542C  48 00 00 48 */	b lbl_80128514
lbl_801284D0:
/* 801284D0 00125430  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801284D4 00125434  38 7E 07 64 */	addi r3, r30, 0x764
/* 801284D8 00125438  38 81 00 0C */	addi r4, r1, 0xc
/* 801284DC 0012543C  A0 05 00 08 */	lhz r0, 8(r5)
/* 801284E0 00125440  B0 01 00 08 */	sth r0, 8(r1)
/* 801284E4 00125444  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801284E8 00125448  48 04 CD 31 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 801284EC 0012544C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801284F0 00125450  A0 03 00 08 */	lhz r0, 8(r3)
/* 801284F4 00125454  B0 1E 07 C0 */	sth r0, 0x7c0(r30)
lbl_801284F8:
/* 801284F8 00125458  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801284FC 0012545C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80128500 00125460  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80128504 00125464  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80128508 00125468  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8012850C 0012546C  D0 3D 00 04 */	stfs f1, 4(r29)
/* 80128510 00125470  D0 5D 00 08 */	stfs f2, 8(r29)
lbl_80128514:
/* 80128514 00125474  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80128518 00125478  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012851C 0012547C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80128520 00125480  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80128524 00125484  7C 08 03 A6 */	mtlr r0
/* 80128528 00125488  38 21 00 30 */	addi r1, r1, 0x30
/* 8012852C 0012548C  4E 80 00 20 */	blr

.global CheckBlade__12CSpacePirateFR13CStateManager
CheckBlade__12CSpacePirateFR13CStateManager:
/* 80128530 00125490  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80128534 00125494  7C 08 02 A6 */	mflr r0
/* 80128538 00125498  90 01 01 04 */	stw r0, 0x104(r1)
/* 8012853C 0012549C  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 80128540 001254A0  7C 7F 1B 78 */	mr r31, r3
/* 80128544 001254A4  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 80128548 001254A8  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 8012854C 001254AC  7C 9D 23 78 */	mr r29, r4
/* 80128550 001254B0  88 03 06 38 */	lbz r0, 0x638(r3)
/* 80128554 001254B4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80128558 001254B8  40 82 01 68 */	bne lbl_801286C0
/* 8012855C 001254BC  88 1F 07 B9 */	lbz r0, 0x7b9(r31)
/* 80128560 001254C0  28 00 00 FF */	cmplwi r0, 0xff
/* 80128564 001254C4  41 82 01 5C */	beq lbl_801286C0
/* 80128568 001254C8  A0 1F 07 C0 */	lhz r0, 0x7c0(r31)
/* 8012856C 001254CC  7F A3 EB 78 */	mr r3, r29
/* 80128570 001254D0  38 81 00 20 */	addi r4, r1, 0x20
/* 80128574 001254D4  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80128578 001254D8  4B F2 3F FD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8012857C 001254DC  7C 64 1B 78 */	mr r4, r3
/* 80128580 001254E0  38 61 00 24 */	addi r3, r1, 0x24
/* 80128584 001254E4  4B F8 41 61 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80128588 001254E8  83 C3 00 04 */	lwz r30, 4(r3)
/* 8012858C 001254EC  28 1E 00 00 */	cmplwi r30, 0
/* 80128590 001254F0  41 82 01 30 */	beq lbl_801286C0
/* 80128594 001254F4  7F E4 FB 78 */	mr r4, r31
/* 80128598 001254F8  38 61 00 90 */	addi r3, r1, 0x90
/* 8012859C 001254FC  38 BF 07 B9 */	addi r5, r31, 0x7b9
/* 801285A0 00125500  4B F5 03 19 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801285A4 00125504  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801285A8 00125508  38 81 00 90 */	addi r4, r1, 0x90
/* 801285AC 0012550C  48 1E A5 C9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801285B0 00125510  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 801285B4 00125514  38 61 00 78 */	addi r3, r1, 0x78
/* 801285B8 00125518  C0 42 97 D0 */	lfs f2, lbl_805AB4F0@sda21(r2)
/* 801285BC 0012551C  38 81 00 38 */	addi r4, r1, 0x38
/* 801285C0 00125520  C0 66 00 08 */	lfs f3, 8(r6)
/* 801285C4 00125524  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801285C8 00125528  C0 26 00 04 */	lfs f1, 4(r6)
/* 801285CC 0012552C  C0 06 00 00 */	lfs f0, 0(r6)
/* 801285D0 00125530  EC C3 00 B2 */	fmuls f6, f3, f2
/* 801285D4 00125534  C0 E1 00 EC */	lfs f7, 0xec(r1)
/* 801285D8 00125538  EC A1 00 B2 */	fmuls f5, f1, f2
/* 801285DC 0012553C  C1 01 00 DC */	lfs f8, 0xdc(r1)
/* 801285E0 00125540  EC 20 00 B2 */	fmuls f1, f0, f2
/* 801285E4 00125544  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 801285E8 00125548  EC 08 28 2A */	fadds f0, f8, f5
/* 801285EC 0012554C  EC 82 08 2A */	fadds f4, f2, f1
/* 801285F0 00125550  EC 67 30 2A */	fadds f3, f7, f6
/* 801285F4 00125554  EC 42 08 28 */	fsubs f2, f2, f1
/* 801285F8 00125558  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801285FC 0012555C  EC 28 28 28 */	fsubs f1, f8, f5
/* 80128600 00125560  EC 07 30 28 */	fsubs f0, f7, f6
/* 80128604 00125564  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80128608 00125568  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8012860C 0012556C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80128610 00125570  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80128614 00125574  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80128618 00125578  48 20 FE F1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8012861C 0012557C  7F C4 F3 78 */	mr r4, r30
/* 80128620 00125580  38 61 00 60 */	addi r3, r1, 0x60
/* 80128624 00125584  4B FF 23 09 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 80128628 00125588  38 61 00 78 */	addi r3, r1, 0x78
/* 8012862C 0012558C  38 81 00 60 */	addi r4, r1, 0x60
/* 80128630 00125590  48 20 F5 55 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 80128634 00125594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128638 00125598  41 82 00 88 */	beq lbl_801286C0
/* 8012863C 0012559C  80 AD 8A 90 */	lwz r5, lbl_805A7650@sda21(r13)
/* 80128640 001255A0  38 60 00 00 */	li r3, 0
/* 80128644 001255A4  38 80 00 01 */	li r4, 1
/* 80128648 001255A8  48 26 18 AD */	bl __shl2i
/* 8012864C 001255AC  39 40 00 00 */	li r10, 0
/* 80128650 001255B0  38 00 00 03 */	li r0, 3
/* 80128654 001255B4  90 81 00 4C */	stw r4, 0x4c(r1)
/* 80128658 001255B8  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8012865C 001255BC  39 24 66 A0 */	addi r9, r4, sZeroVector__9CVector3f@l
/* 80128660 001255C0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80128664 001255C4  90 61 00 48 */	stw r3, 0x48(r1)
/* 80128668 001255C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8012866C 001255CC  7F A3 EB 78 */	mr r3, r29
/* 80128670 001255D0  38 C1 00 0C */	addi r6, r1, 0xc
/* 80128674 001255D4  91 41 00 54 */	stw r10, 0x54(r1)
/* 80128678 001255D8  38 FF 05 B4 */	addi r7, r31, 0x5b4
/* 8012867C 001255DC  39 01 00 48 */	addi r8, r1, 0x48
/* 80128680 001255E0  91 41 00 50 */	stw r10, 0x50(r1)
/* 80128684 001255E4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80128688 001255E8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 8012868C 001255EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80128690 001255F0  A1 5E 00 08 */	lhz r10, 8(r30)
/* 80128694 001255F4  B0 01 00 08 */	sth r0, 8(r1)
/* 80128698 001255F8  B1 41 00 14 */	sth r10, 0x14(r1)
/* 8012869C 001255FC  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801286A0 00125600  B1 41 00 10 */	sth r10, 0x10(r1)
/* 801286A4 00125604  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801286A8 00125608  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801286AC 0012560C  4B F2 19 F5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801286B0 00125610  88 1F 06 38 */	lbz r0, 0x638(r31)
/* 801286B4 00125614  38 60 00 01 */	li r3, 1
/* 801286B8 00125618  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801286BC 0012561C  98 1F 06 38 */	stb r0, 0x638(r31)
lbl_801286C0:
/* 801286C0 00125620  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801286C4 00125624  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801286C8 00125628  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801286CC 0012562C  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801286D0 00125630  7C 08 03 A6 */	mtlr r0
/* 801286D4 00125634  38 21 01 00 */	addi r1, r1, 0x100
/* 801286D8 00125638  4E 80 00 20 */	blr

.global GetStrafeDir__12CSpacePirateCFR13CStateManagerf
GetStrafeDir__12CSpacePirateCFR13CStateManagerf:
/* 801286DC 0012563C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801286E0 00125640  7C 08 02 A6 */	mflr r0
/* 801286E4 00125644  90 01 00 84 */	stw r0, 0x84(r1)
/* 801286E8 00125648  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801286EC 0012564C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801286F0 00125650  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801286F4 00125654  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 801286F8 00125658  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 801286FC 0012565C  FF C0 08 90 */	fmr f30, f1
/* 80128700 00125660  83 64 08 38 */	lwz r27, 0x838(r4)
/* 80128704 00125664  7C 9C 23 78 */	mr r28, r4
/* 80128708 00125668  7C 79 1B 78 */	mr r25, r3
/* 8012870C 0012566C  AB 5B 20 08 */	lha r26, 0x2008(r27)
/* 80128710 00125670  3B E0 00 01 */	li r31, 1
/* 80128714 00125674  EF FE 07 B2 */	fmuls f31, f30, f30
/* 80128718 00125678  3B C0 00 01 */	li r30, 1
/* 8012871C 0012567C  3B A0 FF FF */	li r29, -1
/* 80128720 00125680  48 00 01 18 */	b lbl_80128838
lbl_80128724:
/* 80128724 00125684  7F 63 DB 78 */	mr r3, r27
/* 80128728 00125688  7F 44 D3 78 */	mr r4, r26
/* 8012872C 0012568C  4B EE 75 B1 */	bl __vc__11CObjectListCFi
/* 80128730 00125690  7C 64 1B 78 */	mr r4, r3
/* 80128734 00125694  38 61 00 08 */	addi r3, r1, 8
/* 80128738 00125698  4B F7 CC 99 */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 8012873C 0012569C  4B F7 CC 69 */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80128740 001256A0  28 03 00 00 */	cmplwi r3, 0
/* 80128744 001256A4  41 82 00 D8 */	beq lbl_8012881C
/* 80128748 001256A8  7C 03 C8 40 */	cmplw r3, r25
/* 8012874C 001256AC  41 82 00 D0 */	beq lbl_8012881C
/* 80128750 001256B0  80 83 00 04 */	lwz r4, 4(r3)
/* 80128754 001256B4  80 19 00 04 */	lwz r0, 4(r25)
/* 80128758 001256B8  7C 04 00 00 */	cmpw r4, r0
/* 8012875C 001256BC  40 82 00 C0 */	bne lbl_8012881C
/* 80128760 001256C0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80128764 001256C4  C0 19 00 50 */	lfs f0, 0x50(r25)
/* 80128768 001256C8  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 8012876C 001256CC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80128770 001256D0  C0 19 00 40 */	lfs f0, 0x40(r25)
/* 80128774 001256D4  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 80128778 001256D8  EC A3 00 28 */	fsubs f5, f3, f0
/* 8012877C 001256DC  C0 39 00 60 */	lfs f1, 0x60(r25)
/* 80128780 001256E0  EC 04 01 32 */	fmuls f0, f4, f4
/* 80128784 001256E4  EC 62 08 28 */	fsubs f3, f2, f1
/* 80128788 001256E8  EC 05 01 7A */	fmadds f0, f5, f5, f0
/* 8012878C 001256EC  EC E3 00 FA */	fmadds f7, f3, f3, f0
/* 80128790 001256F0  FC 07 F8 40 */	fcmpo cr0, f7, f31
/* 80128794 001256F4  40 80 00 88 */	bge lbl_8012881C
/* 80128798 001256F8  C0 D9 00 44 */	lfs f6, 0x44(r25)
/* 8012879C 001256FC  C0 59 00 34 */	lfs f2, 0x34(r25)
/* 801287A0 00125700  EC 24 01 B2 */	fmuls f1, f4, f6
/* 801287A4 00125704  C0 99 00 54 */	lfs f4, 0x54(r25)
/* 801287A8 00125708  C0 02 98 58 */	lfs f0, lbl_805AB578@sda21(r2)
/* 801287AC 0012570C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801287B0 00125710  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801287B4 00125714  EC 00 01 F2 */	fmuls f0, f0, f7
/* 801287B8 00125718  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801287BC 0012571C  EC 43 09 3A */	fmadds f2, f3, f4, f1
/* 801287C0 00125720  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801287C4 00125724  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801287C8 00125728  41 81 00 1C */	bgt lbl_801287E4
/* 801287CC 0012572C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801287D0 00125730  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801287D4 00125734  40 81 00 18 */	ble lbl_801287EC
/* 801287D8 00125738  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 801287DC 0012573C  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 801287E0 00125740  40 80 00 0C */	bge lbl_801287EC
lbl_801287E4:
/* 801287E4 00125744  3B C0 00 00 */	li r30, 0
/* 801287E8 00125748  48 00 00 34 */	b lbl_8012881C
lbl_801287EC:
/* 801287EC 0012574C  FC 00 38 50 */	fneg f0, f7
/* 801287F0 00125750  C0 22 98 58 */	lfs f1, lbl_805AB578@sda21(r2)
/* 801287F4 00125754  EC 01 00 32 */	fmuls f0, f1, f0
/* 801287F8 00125758  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801287FC 0012575C  41 80 00 1C */	blt lbl_80128818
/* 80128800 00125760  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80128804 00125764  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80128808 00125768  40 80 00 14 */	bge lbl_8012881C
/* 8012880C 0012576C  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 80128810 00125770  FC 07 00 40 */	fcmpo cr0, f7, f0
/* 80128814 00125774  40 80 00 08 */	bge lbl_8012881C
lbl_80128818:
/* 80128818 00125778  3B E0 00 00 */	li r31, 0
lbl_8012881C:
/* 8012881C 0012577C  2C 1A FF FF */	cmpwi r26, -1
/* 80128820 00125780  41 82 00 14 */	beq lbl_80128834
/* 80128824 00125784  57 43 18 38 */	slwi r3, r26, 3
/* 80128828 00125788  38 03 00 08 */	addi r0, r3, 8
/* 8012882C 0012578C  7F 5B 02 AE */	lhax r26, r27, r0
/* 80128830 00125790  48 00 00 08 */	b lbl_80128838
lbl_80128834:
/* 80128834 00125794  3B 40 FF FF */	li r26, -1
lbl_80128838:
/* 80128838 00125798  2C 1A FF FF */	cmpwi r26, -1
/* 8012883C 0012579C  40 82 FE E8 */	bne lbl_80128724
/* 80128840 001257A0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80128844 001257A4  41 82 00 34 */	beq lbl_80128878
/* 80128848 001257A8  C0 79 00 54 */	lfs f3, 0x54(r25)
/* 8012884C 001257AC  FC 20 F0 90 */	fmr f1, f30
/* 80128850 001257B0  C0 59 00 44 */	lfs f2, 0x44(r25)
/* 80128854 001257B4  7F 23 CB 78 */	mr r3, r25
/* 80128858 001257B8  C0 19 00 34 */	lfs f0, 0x34(r25)
/* 8012885C 001257BC  7F 84 E3 78 */	mr r4, r28
/* 80128860 001257C0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80128864 001257C4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80128868 001257C8  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8012886C 001257CC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80128870 001257D0  48 00 00 C9 */	bl CantJumpBack__12CSpacePirateFR13CStateManagerR9CVector3ff
/* 80128874 001257D4  7C 7E 1B 78 */	mr r30, r3
lbl_80128878:
/* 80128878 001257D8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8012887C 001257DC  41 82 00 4C */	beq lbl_801288C8
/* 80128880 001257E0  C0 D9 00 54 */	lfs f6, 0x54(r25)
/* 80128884 001257E4  FC 20 F0 90 */	fmr f1, f30
/* 80128888 001257E8  C0 B9 00 44 */	lfs f5, 0x44(r25)
/* 8012888C 001257EC  7F 23 CB 78 */	mr r3, r25
/* 80128890 001257F0  C0 99 00 34 */	lfs f4, 0x34(r25)
/* 80128894 001257F4  FC 00 30 50 */	fneg f0, f6
/* 80128898 001257F8  FC 40 28 50 */	fneg f2, f5
/* 8012889C 001257FC  FC 60 20 50 */	fneg f3, f4
/* 801288A0 00125800  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801288A4 00125804  7F 84 E3 78 */	mr r4, r28
/* 801288A8 00125808  38 A1 00 18 */	addi r5, r1, 0x18
/* 801288AC 0012580C  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801288B0 00125810  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801288B4 00125814  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801288B8 00125818  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801288BC 0012581C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801288C0 00125820  48 00 00 79 */	bl CantJumpBack__12CSpacePirateFR13CStateManagerR9CVector3ff
/* 801288C4 00125824  7C 7F 1B 78 */	mr r31, r3
lbl_801288C8:
/* 801288C8 00125828  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801288CC 0012582C  41 82 00 28 */	beq lbl_801288F4
/* 801288D0 00125830  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801288D4 00125834  41 82 00 20 */	beq lbl_801288F4
/* 801288D8 00125838  80 7C 09 00 */	lwz r3, 0x900(r28)
/* 801288DC 0012583C  48 1E 9C 45 */	bl Next__9CRandom16Fv
/* 801288E0 00125840  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 801288E4 00125844  41 82 00 0C */	beq lbl_801288F0
/* 801288E8 00125848  3B E0 00 00 */	li r31, 0
/* 801288EC 0012584C  48 00 00 08 */	b lbl_801288F4
lbl_801288F0:
/* 801288F0 00125850  3B C0 00 00 */	li r30, 0
lbl_801288F4:
/* 801288F4 00125854  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801288F8 00125858  41 82 00 0C */	beq lbl_80128904
/* 801288FC 0012585C  3B A0 00 02 */	li r29, 2
/* 80128900 00125860  48 00 00 10 */	b lbl_80128910
lbl_80128904:
/* 80128904 00125864  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80128908 00125868  41 82 00 08 */	beq lbl_80128910
/* 8012890C 0012586C  3B A0 00 03 */	li r29, 3
lbl_80128910:
/* 80128910 00125870  7F A3 EB 78 */	mr r3, r29
/* 80128914 00125874  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80128918 00125878  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8012891C 0012587C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80128920 00125880  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80128924 00125884  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 80128928 00125888  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8012892C 0012588C  7C 08 03 A6 */	mtlr r0
/* 80128930 00125890  38 21 00 80 */	addi r1, r1, 0x80
/* 80128934 00125894  4E 80 00 20 */	blr

.global CantJumpBack__12CSpacePirateFR13CStateManagerR9CVector3ff
CantJumpBack__12CSpacePirateFR13CStateManagerR9CVector3ff:
/* 80128938 00125898  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8012893C 0012589C  7C 08 02 A6 */	mflr r0
/* 80128940 001258A0  90 01 01 24 */	stw r0, 0x124(r1)
/* 80128944 001258A4  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 80128948 001258A8  F3 E1 01 18 */	psq_st f31, 280(r1), 0, qr0
/* 8012894C 001258AC  BF 61 00 FC */	stmw r27, 0xfc(r1)
/* 80128950 001258B0  FF E0 08 90 */	fmr f31, f1
/* 80128954 001258B4  7C 7B 1B 78 */	mr r27, r3
/* 80128958 001258B8  7C 9C 23 78 */	mr r28, r4
/* 8012895C 001258BC  7C BD 2B 78 */	mr r29, r5
/* 80128960 001258C0  7F 64 DB 78 */	mr r4, r27
/* 80128964 001258C4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 80128968 001258C8  4B FF 1F C5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8012896C 001258CC  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80128970 001258D0  38 81 00 E0 */	addi r4, r1, 0xe0
/* 80128974 001258D4  48 20 EC 99 */	bl GetCenterPoint__6CAABoxCFv
/* 80128978 001258D8  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8012897C 001258DC  38 00 00 00 */	li r0, 0
/* 80128980 001258E0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80128984 001258E4  7F 63 DB 78 */	mr r3, r27
/* 80128988 001258E8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8012898C 001258EC  EC DF 00 B2 */	fmuls f6, f31, f2
/* 80128990 001258F0  C0 61 00 CC */	lfs f3, 0xcc(r1)
/* 80128994 001258F4  EC BF 00 72 */	fmuls f5, f31, f1
/* 80128998 001258F8  C0 41 00 D0 */	lfs f2, 0xd0(r1)
/* 8012899C 001258FC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801289A0 00125900  C0 81 00 C8 */	lfs f4, 0xc8(r1)
/* 801289A4 00125904  EC E3 30 2A */	fadds f7, f3, f6
/* 801289A8 00125908  D0 61 00 D8 */	stfs f3, 0xd8(r1)
/* 801289AC 0012590C  EC 62 28 2A */	fadds f3, f2, f5
/* 801289B0 00125910  7F 84 E3 78 */	mr r4, r28
/* 801289B4 00125914  EC 04 08 2A */	fadds f0, f4, f1
/* 801289B8 00125918  D0 81 00 D4 */	stfs f4, 0xd4(r1)
/* 801289BC 0012591C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 801289C0 00125920  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 801289C4 00125924  38 C1 00 BC */	addi r6, r1, 0xbc
/* 801289C8 00125928  38 E1 00 18 */	addi r7, r1, 0x18
/* 801289CC 0012592C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801289D0 00125930  3B C0 00 01 */	li r30, 1
/* 801289D4 00125934  90 01 00 18 */	stw r0, 0x18(r1)
/* 801289D8 00125938  D0 21 00 B0 */	stfs f1, 0xb0(r1)
/* 801289DC 0012593C  D0 C1 00 B4 */	stfs f6, 0xb4(r1)
/* 801289E0 00125940  D0 A1 00 B8 */	stfs f5, 0xb8(r1)
/* 801289E4 00125944  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 801289E8 00125948  D0 E1 00 C0 */	stfs f7, 0xc0(r1)
/* 801289EC 0012594C  D0 61 00 C4 */	stfs f3, 0xc4(r1)
/* 801289F0 00125950  48 00 08 A1 */	bl LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
/* 801289F4 00125954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801289F8 00125958  41 82 01 B4 */	beq lbl_80128BAC
/* 801289FC 0012595C  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80128A00 00125960  38 00 00 00 */	li r0, 0
/* 80128A04 00125964  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 80128A08 00125968  C0 5D 00 00 */	lfs f2, 0(r29)
/* 80128A0C 0012596C  EC 60 07 F2 */	fmuls f3, f0, f31
/* 80128A10 00125970  3B E3 67 00 */	addi r31, r3, sDownVector__9CVector3f@l
/* 80128A14 00125974  C0 3D 00 04 */	lfs f1, 4(r29)
/* 80128A18 00125978  7F 63 DB 78 */	mr r3, r27
/* 80128A1C 0012597C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80128A20 00125980  7F 84 E3 78 */	mr r4, r28
/* 80128A24 00125984  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80128A28 00125988  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 80128A2C 0012598C  EC 83 00 72 */	fmuls f4, f3, f1
/* 80128A30 00125990  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80128A34 00125994  EC 63 00 32 */	fmuls f3, f3, f0
/* 80128A38 00125998  C0 C1 00 DC */	lfs f6, 0xdc(r1)
/* 80128A3C 0012599C  ED 02 28 2A */	fadds f8, f2, f5
/* 80128A40 001259A0  C0 42 98 1C */	lfs f2, lbl_805AB53C@sda21(r2)
/* 80128A44 001259A4  EC E1 20 2A */	fadds f7, f1, f4
/* 80128A48 001259A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80128A4C 001259AC  EC C6 18 2A */	fadds f6, f6, f3
/* 80128A50 001259B0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80128A54 001259B4  ED 42 00 32 */	fmuls f10, f2, f0
/* 80128A58 001259B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80128A5C 001259BC  ED 22 00 72 */	fmuls f9, f2, f1
/* 80128A60 001259C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80128A64 001259C4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80128A68 001259C8  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 80128A6C 001259CC  ED 67 50 2A */	fadds f11, f7, f10
/* 80128A70 001259D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80128A74 001259D4  EC 46 48 2A */	fadds f2, f6, f9
/* 80128A78 001259D8  38 C1 00 8C */	addi r6, r1, 0x8c
/* 80128A7C 001259DC  EC 08 08 2A */	fadds f0, f8, f1
/* 80128A80 001259E0  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80128A84 001259E4  D1 41 00 6C */	stfs f10, 0x6c(r1)
/* 80128A88 001259E8  38 E1 00 10 */	addi r7, r1, 0x10
/* 80128A8C 001259EC  D1 21 00 70 */	stfs f9, 0x70(r1)
/* 80128A90 001259F0  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 80128A94 001259F4  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 80128A98 001259F8  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 80128A9C 001259FC  D1 01 00 80 */	stfs f8, 0x80(r1)
/* 80128AA0 00125A00  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 80128AA4 00125A04  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 80128AA8 00125A08  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80128AAC 00125A0C  D1 61 00 90 */	stfs f11, 0x90(r1)
/* 80128AB0 00125A10  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 80128AB4 00125A14  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 80128AB8 00125A18  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80128ABC 00125A1C  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 80128AC0 00125A20  D1 01 00 A4 */	stfs f8, 0xa4(r1)
/* 80128AC4 00125A24  D0 E1 00 A8 */	stfs f7, 0xa8(r1)
/* 80128AC8 00125A28  D0 C1 00 AC */	stfs f6, 0xac(r1)
/* 80128ACC 00125A2C  48 00 07 C5 */	bl LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
/* 80128AD0 00125A30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128AD4 00125A34  40 82 00 D8 */	bne lbl_80128BAC
/* 80128AD8 00125A38  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80128ADC 00125A3C  38 00 00 00 */	li r0, 0
/* 80128AE0 00125A40  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80128AE4 00125A44  3C 60 80 5A */	lis r3, sDownVector__9CVector3f@ha
/* 80128AE8 00125A48  EC BF 00 32 */	fmuls f5, f31, f0
/* 80128AEC 00125A4C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80128AF0 00125A50  EC 9F 00 72 */	fmuls f4, f31, f1
/* 80128AF4 00125A54  38 83 67 00 */	addi r4, r3, sDownVector__9CVector3f@l
/* 80128AF8 00125A58  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80128AFC 00125A5C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80128B00 00125A60  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 80128B04 00125A64  7F 63 DB 78 */	mr r3, r27
/* 80128B08 00125A68  ED 00 08 2A */	fadds f8, f0, f1
/* 80128B0C 00125A6C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80128B10 00125A70  EC E2 28 2A */	fadds f7, f2, f5
/* 80128B14 00125A74  C0 62 98 1C */	lfs f3, lbl_805AB53C@sda21(r2)
/* 80128B18 00125A78  EC C0 20 2A */	fadds f6, f0, f4
/* 80128B1C 00125A7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80128B20 00125A80  ED 43 00 32 */	fmuls f10, f3, f0
/* 80128B24 00125A84  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80128B28 00125A88  C0 04 00 00 */	lfs f0, 0(r4)
/* 80128B2C 00125A8C  7F 84 E3 78 */	mr r4, r28
/* 80128B30 00125A90  ED 23 00 B2 */	fmuls f9, f3, f2
/* 80128B34 00125A94  90 01 00 0C */	stw r0, 0xc(r1)
/* 80128B38 00125A98  EC 43 00 32 */	fmuls f2, f3, f0
/* 80128B3C 00125A9C  90 01 00 08 */	stw r0, 8(r1)
/* 80128B40 00125AA0  ED 67 50 2A */	fadds f11, f7, f10
/* 80128B44 00125AA4  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80128B48 00125AA8  EC 66 48 2A */	fadds f3, f6, f9
/* 80128B4C 00125AAC  D1 41 00 24 */	stfs f10, 0x24(r1)
/* 80128B50 00125AB0  EC 08 10 2A */	fadds f0, f8, f2
/* 80128B54 00125AB4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80128B58 00125AB8  38 C1 00 44 */	addi r6, r1, 0x44
/* 80128B5C 00125ABC  38 E1 00 08 */	addi r7, r1, 8
/* 80128B60 00125AC0  D1 21 00 28 */	stfs f9, 0x28(r1)
/* 80128B64 00125AC4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80128B68 00125AC8  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 80128B6C 00125ACC  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 80128B70 00125AD0  D1 01 00 38 */	stfs f8, 0x38(r1)
/* 80128B74 00125AD4  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 80128B78 00125AD8  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 80128B7C 00125ADC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80128B80 00125AE0  D1 61 00 48 */	stfs f11, 0x48(r1)
/* 80128B84 00125AE4  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80128B88 00125AE8  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80128B8C 00125AEC  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 80128B90 00125AF0  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 80128B94 00125AF4  D1 01 00 5C */	stfs f8, 0x5c(r1)
/* 80128B98 00125AF8  D0 E1 00 60 */	stfs f7, 0x60(r1)
/* 80128B9C 00125AFC  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 80128BA0 00125B00  48 00 06 F1 */	bl LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
/* 80128BA4 00125B04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128BA8 00125B08  41 82 00 08 */	beq lbl_80128BB0
lbl_80128BAC:
/* 80128BAC 00125B0C  3B C0 00 00 */	li r30, 0
lbl_80128BB0:
/* 80128BB0 00125B10  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80128BB4 00125B14  E3 E1 01 18 */	psq_l f31, 280(r1), 0, qr0
/* 80128BB8 00125B18  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 80128BBC 00125B1C  BB 61 00 FC */	lmw r27, 0xfc(r1)
/* 80128BC0 00125B20  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80128BC4 00125B24  7C 08 03 A6 */	mtlr r0
/* 80128BC8 00125B28  38 21 01 20 */	addi r1, r1, 0x120
/* 80128BCC 00125B2C  4E 80 00 20 */	blr

.global AvoidActors__12CSpacePirateFR13CStateManager
AvoidActors__12CSpacePirateFR13CStateManager:
/* 80128BD0 00125B30  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80128BD4 00125B34  7C 08 02 A6 */	mflr r0
/* 80128BD8 00125B38  90 01 00 84 */	stw r0, 0x84(r1)
/* 80128BDC 00125B3C  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 80128BE0 00125B40  7C 7F 1B 78 */	mr r31, r3
/* 80128BE4 00125B44  83 A4 08 38 */	lwz r29, 0x838(r4)
/* 80128BE8 00125B48  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 80128BEC 00125B4C  3B C4 66 A0 */	addi r30, r4, sZeroVector__9CVector3f@l
/* 80128BF0 00125B50  AB 7D 20 08 */	lha r27, 0x2008(r29)
/* 80128BF4 00125B54  48 00 01 CC */	b lbl_80128DC0
lbl_80128BF8:
/* 80128BF8 00125B58  7F A3 EB 78 */	mr r3, r29
/* 80128BFC 00125B5C  7F 64 DB 78 */	mr r4, r27
/* 80128C00 00125B60  4B EE 70 DD */	bl __vc__11CObjectListCFi
/* 80128C04 00125B64  7C 64 1B 78 */	mr r4, r3
/* 80128C08 00125B68  38 61 00 0C */	addi r3, r1, 0xc
/* 80128C0C 00125B6C  4B F8 3E 51 */	bl "__ct__24TCastToPtr<10CPatterned>FP7CEntity"
/* 80128C10 00125B70  83 83 00 04 */	lwz r28, 4(r3)
/* 80128C14 00125B74  28 1C 00 00 */	cmplwi r28, 0
/* 80128C18 00125B78  41 82 01 8C */	beq lbl_80128DA4
/* 80128C1C 00125B7C  7C 1C F8 40 */	cmplw r28, r31
/* 80128C20 00125B80  41 82 01 84 */	beq lbl_80128DA4
/* 80128C24 00125B84  80 7C 00 04 */	lwz r3, 4(r28)
/* 80128C28 00125B88  80 1F 00 04 */	lwz r0, 4(r31)
/* 80128C2C 00125B8C  7C 03 00 00 */	cmpw r3, r0
/* 80128C30 00125B90  40 82 01 74 */	bne lbl_80128DA4
/* 80128C34 00125B94  C0 3F 06 30 */	lfs f1, 0x630(r31)
/* 80128C38 00125B98  7F E5 FB 78 */	mr r5, r31
/* 80128C3C 00125B9C  C0 7C 00 60 */	lfs f3, 0x60(r28)
/* 80128C40 00125BA0  38 61 00 38 */	addi r3, r1, 0x38
/* 80128C44 00125BA4  C0 5C 00 50 */	lfs f2, 0x50(r28)
/* 80128C48 00125BA8  38 9F 04 5C */	addi r4, r31, 0x45c
/* 80128C4C 00125BAC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80128C50 00125BB0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80128C54 00125BB4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80128C58 00125BB8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80128C5C 00125BBC  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80128C60 00125BC0  48 01 5C 91 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 80128C64 00125BC4  C0 C1 00 38 */	lfs f6, 0x38(r1)
/* 80128C68 00125BC8  38 00 00 00 */	li r0, 0
/* 80128C6C 00125BCC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80128C70 00125BD0  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 80128C74 00125BD4  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 80128C78 00125BD8  C0 A1 00 40 */	lfs f5, 0x40(r1)
/* 80128C7C 00125BDC  40 82 00 14 */	bne lbl_80128C90
/* 80128C80 00125BE0  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80128C84 00125BE4  40 82 00 0C */	bne lbl_80128C90
/* 80128C88 00125BE8  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 80128C8C 00125BEC  41 82 00 08 */	beq lbl_80128C94
lbl_80128C90:
/* 80128C90 00125BF0  38 00 00 01 */	li r0, 1
lbl_80128C94:
/* 80128C94 00125BF4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80128C98 00125BF8  41 82 01 0C */	beq lbl_80128DA4
/* 80128C9C 00125BFC  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80128CA0 00125C00  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80128CA4 00125C04  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80128CA8 00125C08  38 81 00 44 */	addi r4, r1, 0x44
/* 80128CAC 00125C0C  C0 63 66 A0 */	lfs f3, sZeroVector__9CVector3f@l(r3)
/* 80128CB0 00125C10  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80128CB4 00125C14  D0 C1 00 44 */	stfs f6, 0x44(r1)
/* 80128CB8 00125C18  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80128CBC 00125C1C  D0 A1 00 4C */	stfs f5, 0x4c(r1)
/* 80128CC0 00125C20  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80128CC4 00125C24  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80128CC8 00125C28  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80128CCC 00125C2C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80128CD0 00125C30  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80128CD4 00125C34  38 63 00 04 */	addi r3, r3, 4
/* 80128CD8 00125C38  48 00 8A 41 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80128CDC 00125C3C  C0 3F 07 48 */	lfs f1, 0x748(r31)
/* 80128CE0 00125C40  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80128CE4 00125C44  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80128CE8 00125C48  40 82 00 BC */	bne lbl_80128DA4
/* 80128CEC 00125C4C  7F 84 E3 78 */	mr r4, r28
/* 80128CF0 00125C50  38 61 00 08 */	addi r3, r1, 8
/* 80128CF4 00125C54  4B F7 C6 DD */	bl "__ct__30TPatternedCast<12CSpacePirate>FP7CEntity"
/* 80128CF8 00125C58  4B F7 C6 AD */	bl "CastTo<12CSpacePirate>__10CPatternedFRC30TPatternedCast<12CSpacePirate>"
/* 80128CFC 00125C5C  28 03 00 00 */	cmplwi r3, 0
/* 80128D00 00125C60  41 82 00 A4 */	beq lbl_80128DA4
/* 80128D04 00125C64  C0 03 07 48 */	lfs f0, 0x748(r3)
/* 80128D08 00125C68  C0 82 97 BC */	lfs f4, lbl_805AB4DC@sda21(r2)
/* 80128D0C 00125C6C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 80128D10 00125C70  40 82 00 94 */	bne lbl_80128DA4
/* 80128D14 00125C74  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 80128D18 00125C78  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80128D1C 00125C7C  C0 FF 00 48 */	lfs f7, 0x48(r31)
/* 80128D20 00125C80  EC A1 00 28 */	fsubs f5, f1, f0
/* 80128D24 00125C84  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 80128D28 00125C88  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80128D2C 00125C8C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80128D30 00125C90  EC C2 00 28 */	fsubs f6, f2, f0
/* 80128D34 00125C94  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 80128D38 00125C98  EC 07 01 72 */	fmuls f0, f7, f5
/* 80128D3C 00125C9C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80128D40 00125CA0  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80128D44 00125CA4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80128D48 00125CA8  EC 01 01 BA */	fmadds f0, f1, f6, f0
/* 80128D4C 00125CAC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80128D50 00125CB0  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80128D54 00125CB4  EC 05 00 BA */	fmadds f0, f5, f2, f0
/* 80128D58 00125CB8  D0 A1 00 28 */	stfs f5, 0x28(r1)
/* 80128D5C 00125CBC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80128D60 00125CC0  40 81 00 44 */	ble lbl_80128DA4
/* 80128D64 00125CC4  C0 A3 00 48 */	lfs f5, 0x48(r3)
/* 80128D68 00125CC8  C0 03 01 3C */	lfs f0, 0x13c(r3)
/* 80128D6C 00125CCC  C0 63 00 38 */	lfs f3, 0x38(r3)
/* 80128D70 00125CD0  EC 00 01 72 */	fmuls f0, f0, f5
/* 80128D74 00125CD4  C0 23 01 38 */	lfs f1, 0x138(r3)
/* 80128D78 00125CD8  C0 C3 00 58 */	lfs f6, 0x58(r3)
/* 80128D7C 00125CDC  C0 43 01 40 */	lfs f2, 0x140(r3)
/* 80128D80 00125CE0  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 80128D84 00125CE4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80128D88 00125CE8  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80128D8C 00125CEC  EC 02 01 BA */	fmadds f0, f2, f6, f0
/* 80128D90 00125CF0  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 80128D94 00125CF4  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 80128D98 00125CF8  40 81 00 0C */	ble lbl_80128DA4
/* 80128D9C 00125CFC  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80128DA0 00125D00  D0 1F 07 48 */	stfs f0, 0x748(r31)
lbl_80128DA4:
/* 80128DA4 00125D04  2C 1B FF FF */	cmpwi r27, -1
/* 80128DA8 00125D08  41 82 00 14 */	beq lbl_80128DBC
/* 80128DAC 00125D0C  57 63 18 38 */	slwi r3, r27, 3
/* 80128DB0 00125D10  38 03 00 08 */	addi r0, r3, 8
/* 80128DB4 00125D14  7F 7D 02 AE */	lhax r27, r29, r0
/* 80128DB8 00125D18  48 00 00 08 */	b lbl_80128DC0
lbl_80128DBC:
/* 80128DBC 00125D1C  3B 60 FF FF */	li r27, -1
lbl_80128DC0:
/* 80128DC0 00125D20  2C 1B FF FF */	cmpwi r27, -1
/* 80128DC4 00125D24  40 82 FE 34 */	bne lbl_80128BF8
/* 80128DC8 00125D28  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 80128DCC 00125D2C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80128DD0 00125D30  7C 08 03 A6 */	mtlr r0
/* 80128DD4 00125D34  38 21 00 80 */	addi r1, r1, 0x80
/* 80128DD8 00125D38  4E 80 00 20 */	blr

.global Random2f__FR13CStateManagerff
Random2f__FR13CStateManagerff:
/* 80128DDC 00125D3C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80128DE0 00125D40  7C 08 02 A6 */	mflr r0
/* 80128DE4 00125D44  90 01 00 54 */	stw r0, 0x54(r1)
/* 80128DE8 00125D48  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80128DEC 00125D4C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80128DF0 00125D50  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80128DF4 00125D54  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80128DF8 00125D58  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80128DFC 00125D5C  F3 A1 00 28 */	psq_st f29, 40(r1), 0, qr0
/* 80128E00 00125D60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80128E04 00125D64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80128E08 00125D68  7C 9F 23 78 */	mr r31, r4
/* 80128E0C 00125D6C  FF A0 08 90 */	fmr f29, f1
/* 80128E10 00125D70  7C 7E 1B 78 */	mr r30, r3
/* 80128E14 00125D74  FF C0 10 90 */	fmr f30, f2
/* 80128E18 00125D78  80 64 09 00 */	lwz r3, 0x900(r4)
/* 80128E1C 00125D7C  48 1E 96 C1 */	bl Float__9CRandom16Fv
/* 80128E20 00125D80  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80128E24 00125D84  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80128E28 00125D88  EF E1 00 28 */	fsubs f31, f1, f0
/* 80128E2C 00125D8C  48 1E 96 B1 */	bl Float__9CRandom16Fv
/* 80128E30 00125D90  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 80128E34 00125D94  C0 42 97 BC */	lfs f2, lbl_805AB4DC@sda21(r2)
/* 80128E38 00125D98  EC 21 00 28 */	fsubs f1, f1, f0
/* 80128E3C 00125D9C  C0 02 97 F4 */	lfs f0, lbl_805AB514@sda21(r2)
/* 80128E40 00125DA0  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80128E44 00125DA4  FC 60 0A 10 */	fabs f3, f1
/* 80128E48 00125DA8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80128E4C 00125DAC  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80128E50 00125DB0  FC 20 18 18 */	frsp f1, f3
/* 80128E54 00125DB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128E58 00125DB8  40 80 00 08 */	bge lbl_80128E60
/* 80128E5C 00125DBC  D0 01 00 08 */	stfs f0, 8(r1)
lbl_80128E60:
/* 80128E60 00125DC0  38 61 00 08 */	addi r3, r1, 8
/* 80128E64 00125DC4  48 1E BA 95 */	bl Normalize__9CVector3fFv
/* 80128E68 00125DC8  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80128E6C 00125DCC  48 1E 96 71 */	bl Float__9CRandom16Fv
/* 80128E70 00125DD0  EC 9E E8 28 */	fsubs f4, f30, f29
/* 80128E74 00125DD4  C0 61 00 08 */	lfs f3, 8(r1)
/* 80128E78 00125DD8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80128E7C 00125DDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80128E80 00125DE0  EC 84 E8 7A */	fmadds f4, f4, f1, f29
/* 80128E84 00125DE4  EC 63 01 32 */	fmuls f3, f3, f4
/* 80128E88 00125DE8  EC 22 01 32 */	fmuls f1, f2, f4
/* 80128E8C 00125DEC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80128E90 00125DF0  D0 61 00 08 */	stfs f3, 8(r1)
/* 80128E94 00125DF4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80128E98 00125DF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80128E9C 00125DFC  D0 7E 00 00 */	stfs f3, 0(r30)
/* 80128EA0 00125E00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80128EA4 00125E04  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80128EA8 00125E08  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80128EAC 00125E0C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80128EB0 00125E10  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80128EB4 00125E14  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80128EB8 00125E18  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80128EBC 00125E1C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80128EC0 00125E20  E3 A1 00 28 */	psq_l f29, 40(r1), 0, qr0
/* 80128EC4 00125E24  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80128EC8 00125E28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80128ECC 00125E2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80128ED0 00125E30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80128ED4 00125E34  7C 08 03 A6 */	mtlr r0
/* 80128ED8 00125E38  38 21 00 50 */	addi r1, r1, 0x50
/* 80128EDC 00125E3C  4E 80 00 20 */	blr

.global UpdateHeldPosition__12CSpacePirateFR13CStateManagerf
UpdateHeldPosition__12CSpacePirateFR13CStateManagerf:
/* 80128EE0 00125E40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80128EE4 00125E44  7C 08 02 A6 */	mflr r0
/* 80128EE8 00125E48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80128EEC 00125E4C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80128EF0 00125E50  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80128EF4 00125E54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80128EF8 00125E58  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80128EFC 00125E5C  FF E0 08 90 */	fmr f31, f1
/* 80128F00 00125E60  7C 7F 1B 78 */	mr r31, r3
/* 80128F04 00125E64  38 61 00 10 */	addi r3, r1, 0x10
/* 80128F08 00125E68  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 80128F0C 00125E6C  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 80128F10 00125E70  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80128F14 00125E74  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80128F18 00125E78  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80128F1C 00125E7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80128F20 00125E80  48 1E B2 E1 */	bl __ct__9CVector2fFff
/* 80128F24 00125E84  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80128F28 00125E88  38 61 00 08 */	addi r3, r1, 8
/* 80128F2C 00125E8C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80128F30 00125E90  38 81 00 18 */	addi r4, r1, 0x18
/* 80128F34 00125E94  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80128F38 00125E98  38 BF 08 D0 */	addi r5, r31, 0x8d0
/* 80128F3C 00125E9C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80128F40 00125EA0  48 1E AF F9 */	bl __mi__FRC9CVector2fRC9CVector2f
/* 80128F44 00125EA4  38 61 00 08 */	addi r3, r1, 8
/* 80128F48 00125EA8  48 1E B1 95 */	bl MagSquared__9CVector2fCFv
/* 80128F4C 00125EAC  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 80128F50 00125EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128F54 00125EB4  40 80 00 14 */	bge lbl_80128F68
/* 80128F58 00125EB8  C0 1F 08 D8 */	lfs f0, 0x8d8(r31)
/* 80128F5C 00125EBC  EC 00 F8 2A */	fadds f0, f0, f31
/* 80128F60 00125EC0  D0 1F 08 D8 */	stfs f0, 0x8d8(r31)
/* 80128F64 00125EC4  48 00 00 1C */	b lbl_80128F80
lbl_80128F68:
/* 80128F68 00125EC8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80128F6C 00125ECC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80128F70 00125ED0  D0 3F 08 D0 */	stfs f1, 0x8d0(r31)
/* 80128F74 00125ED4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80128F78 00125ED8  D0 3F 08 D4 */	stfs f1, 0x8d4(r31)
/* 80128F7C 00125EDC  D0 1F 08 D8 */	stfs f0, 0x8d8(r31)
lbl_80128F80:
/* 80128F80 00125EE0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80128F84 00125EE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80128F88 00125EE8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80128F8C 00125EEC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80128F90 00125EF0  7C 08 03 A6 */	mtlr r0
/* 80128F94 00125EF4  38 21 00 50 */	addi r1, r1, 0x50
/* 80128F98 00125EF8  4E 80 00 20 */	blr

.global UpdateCantSeePlayer__12CSpacePirateFR13CStateManager
UpdateCantSeePlayer__12CSpacePirateFR13CStateManager:
/* 80128F9C 00125EFC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80128FA0 00125F00  7C 08 02 A6 */	mflr r0
/* 80128FA4 00125F04  90 01 00 94 */	stw r0, 0x94(r1)
/* 80128FA8 00125F08  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80128FAC 00125F0C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80128FB0 00125F10  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80128FB4 00125F14  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 80128FB8 00125F18  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80128FBC 00125F1C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 80128FC0 00125F20  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80128FC4 00125F24  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80128FC8 00125F28  7C 7E 1B 78 */	mr r30, r3
/* 80128FCC 00125F2C  3C 60 92 49 */	lis r3, 0x92492493@ha
/* 80128FD0 00125F30  80 BE 07 B0 */	lwz r5, 0x7b0(r30)
/* 80128FD4 00125F34  38 03 24 93 */	addi r0, r3, 0x92492493@l
/* 80128FD8 00125F38  7C 9F 23 78 */	mr r31, r4
/* 80128FDC 00125F3C  38 85 00 01 */	addi r4, r5, 1
/* 80128FE0 00125F40  7C 00 20 96 */	mulhw r0, r0, r4
/* 80128FE4 00125F44  90 9E 07 B0 */	stw r4, 0x7b0(r30)
/* 80128FE8 00125F48  7C 00 22 14 */	add r0, r0, r4
/* 80128FEC 00125F4C  7C 00 16 70 */	srawi r0, r0, 2
/* 80128FF0 00125F50  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80128FF4 00125F54  7C 00 1A 14 */	add r0, r0, r3
/* 80128FF8 00125F58  1C 00 00 07 */	mulli r0, r0, 7
/* 80128FFC 00125F5C  7C 00 20 51 */	subf. r0, r0, r4
/* 80129000 00125F60  40 82 02 60 */	bne lbl_80129260
/* 80129004 00125F64  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80129008 00125F68  7F E5 FB 78 */	mr r5, r31
/* 8012900C 00125F6C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80129010 00125F70  38 61 00 3C */	addi r3, r1, 0x3c
/* 80129014 00125F74  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80129018 00125F78  EC 82 08 2A */	fadds f4, f2, f1
/* 8012901C 00125F7C  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80129020 00125F80  C0 5E 07 A8 */	lfs f2, 0x7a8(r30)
/* 80129024 00125F84  EC 00 08 2A */	fadds f0, f0, f1
/* 80129028 00125F88  EC 43 10 2A */	fadds f2, f3, f2
/* 8012902C 00125F8C  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80129030 00125F90  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80129034 00125F94  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80129038 00125F98  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8012903C 00125F9C  81 84 00 00 */	lwz r12, 0(r4)
/* 80129040 00125FA0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80129044 00125FA4  7D 89 03 A6 */	mtctr r12
/* 80129048 00125FA8  4E 80 04 21 */	bctrl
/* 8012904C 00125FAC  A0 1E 06 40 */	lhz r0, 0x640(r30)
/* 80129050 00125FB0  7F C3 F3 78 */	mr r3, r30
/* 80129054 00125FB4  C3 E1 00 3C */	lfs f31, 0x3c(r1)
/* 80129058 00125FB8  7F E4 FB 78 */	mr r4, r31
/* 8012905C 00125FBC  B0 01 00 08 */	sth r0, 8(r1)
/* 80129060 00125FC0  38 A1 00 08 */	addi r5, r1, 8
/* 80129064 00125FC4  C3 C1 00 40 */	lfs f30, 0x40(r1)
/* 80129068 00125FC8  C3 A1 00 44 */	lfs f29, 0x44(r1)
/* 8012906C 00125FCC  4B F5 38 41 */	bl GetCoverPoint__10CPatternedCFR13CStateManager9TUniqueId
/* 80129070 00125FD0  28 03 00 00 */	cmplwi r3, 0
/* 80129074 00125FD4  41 82 00 A8 */	beq lbl_8012911C
/* 80129078 00125FD8  80 1E 07 9C */	lwz r0, 0x79c(r30)
/* 8012907C 00125FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80129080 00125FE0  41 82 00 58 */	beq lbl_801290D8
/* 80129084 00125FE4  40 80 01 34 */	bge lbl_801291B8
/* 80129088 00125FE8  2C 00 00 00 */	cmpwi r0, 0
/* 8012908C 00125FEC  40 80 00 08 */	bge lbl_80129094
/* 80129090 00125FF0  48 00 01 28 */	b lbl_801291B8
lbl_80129094:
/* 80129094 00125FF4  C0 62 97 DC */	lfs f3, lbl_805AB4FC@sda21(r2)
/* 80129098 00125FF8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8012909C 00125FFC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 801290A0 00126000  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801290A4 00126004  EC A3 00 72 */	fmuls f5, f3, f1
/* 801290A8 00126008  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801290AC 0012600C  EC 83 00 32 */	fmuls f4, f3, f0
/* 801290B0 00126010  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801290B4 00126014  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801290B8 00126018  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 801290BC 0012601C  EC 21 28 28 */	fsubs f1, f1, f5
/* 801290C0 00126020  EC 43 10 28 */	fsubs f2, f3, f2
/* 801290C4 00126024  EC 00 20 28 */	fsubs f0, f0, f4
/* 801290C8 00126028  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801290CC 0012602C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801290D0 00126030  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801290D4 00126034  48 00 00 E4 */	b lbl_801291B8
lbl_801290D8:
/* 801290D8 00126038  C0 62 97 DC */	lfs f3, lbl_805AB4FC@sda21(r2)
/* 801290DC 0012603C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 801290E0 00126040  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 801290E4 00126044  C0 5E 00 34 */	lfs f2, 0x34(r30)
/* 801290E8 00126048  EC A3 00 72 */	fmuls f5, f3, f1
/* 801290EC 0012604C  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 801290F0 00126050  EC 83 00 32 */	fmuls f4, f3, f0
/* 801290F4 00126054  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801290F8 00126058  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801290FC 0012605C  C0 61 00 48 */	lfs f3, 0x48(r1)
/* 80129100 00126060  EC 21 28 2A */	fadds f1, f1, f5
/* 80129104 00126064  EC 43 10 2A */	fadds f2, f3, f2
/* 80129108 00126068  EC 00 20 2A */	fadds f0, f0, f4
/* 8012910C 0012606C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80129110 00126070  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80129114 00126074  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80129118 00126078  48 00 00 A0 */	b lbl_801291B8
lbl_8012911C:
/* 8012911C 0012607C  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 80129120 00126080  38 61 00 30 */	addi r3, r1, 0x30
/* 80129124 00126084  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80129128 00126088  38 81 00 24 */	addi r4, r1, 0x24
/* 8012912C 0012608C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80129130 00126090  EC 5E 10 28 */	fsubs f2, f30, f2
/* 80129134 00126094  EC 3D 08 28 */	fsubs f1, f29, f1
/* 80129138 00126098  EC 1F 00 28 */	fsubs f0, f31, f0
/* 8012913C 0012609C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80129140 001260A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80129144 001260A4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80129148 001260A8  48 1E B7 09 */	bl AsNormalized__9CVector3fCFv
/* 8012914C 001260AC  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 80129150 001260B0  C1 01 00 34 */	lfs f8, 0x34(r1)
/* 80129154 001260B4  38 63 66 F4 */	addi r3, r3, sUpVector__9CVector3f@l
/* 80129158 001260B8  C1 21 00 38 */	lfs f9, 0x38(r1)
/* 8012915C 001260BC  C0 63 00 04 */	lfs f3, 4(r3)
/* 80129160 001260C0  C1 43 00 00 */	lfs f10, 0(r3)
/* 80129164 001260C4  C0 83 00 08 */	lfs f4, 8(r3)
/* 80129168 001260C8  EC 23 02 72 */	fmuls f1, f3, f9
/* 8012916C 001260CC  C0 E1 00 30 */	lfs f7, 0x30(r1)
/* 80129170 001260D0  EC 4A 02 32 */	fmuls f2, f10, f8
/* 80129174 001260D4  C0 A2 98 5C */	lfs f5, lbl_805AB57C@sda21(r2)
/* 80129178 001260D8  EC 04 01 F2 */	fmuls f0, f4, f7
/* 8012917C 001260DC  C0 C1 00 48 */	lfs f6, 0x48(r1)
/* 80129180 001260E0  EC E7 10 F8 */	fmsubs f7, f7, f3, f2
/* 80129184 001260E4  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 80129188 001260E8  EC 88 09 38 */	fmsubs f4, f8, f4, f1
/* 8012918C 001260EC  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80129190 001260F0  EC 49 02 B8 */	fmsubs f2, f9, f10, f0
/* 80129194 001260F4  EC 85 01 32 */	fmuls f4, f5, f4
/* 80129198 001260F8  EC 05 01 F2 */	fmuls f0, f5, f7
/* 8012919C 001260FC  EC 45 00 B2 */	fmuls f2, f5, f2
/* 801291A0 00126100  EC 86 20 2A */	fadds f4, f6, f4
/* 801291A4 00126104  EC 01 00 2A */	fadds f0, f1, f0
/* 801291A8 00126108  EC 23 10 2A */	fadds f1, f3, f2
/* 801291AC 0012610C  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801291B0 00126110  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801291B4 00126114  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_801291B8:
/* 801291B8 00126118  38 00 00 00 */	li r0, 0
/* 801291BC 0012611C  80 AD 8A B0 */	lwz r5, lbl_805A7670@sda21(r13)
/* 801291C0 00126120  90 01 00 14 */	stw r0, 0x14(r1)
/* 801291C4 00126124  38 60 00 00 */	li r3, 0
/* 801291C8 00126128  38 80 00 01 */	li r4, 1
/* 801291CC 0012612C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801291D0 00126130  48 26 0D 25 */	bl __shl2i
/* 801291D4 00126134  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801291D8 00126138  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 801291DC 0012613C  7C 00 1B 78 */	or r0, r0, r3
/* 801291E0 00126140  80 AD 8A B4 */	lwz r5, lbl_805A7674@sda21(r13)
/* 801291E4 00126144  7C C4 23 78 */	or r4, r6, r4
/* 801291E8 00126148  90 01 00 10 */	stw r0, 0x10(r1)
/* 801291EC 0012614C  38 60 00 00 */	li r3, 0
/* 801291F0 00126150  90 81 00 14 */	stw r4, 0x14(r1)
/* 801291F4 00126154  38 80 00 01 */	li r4, 1
/* 801291F8 00126158  48 26 0C FD */	bl __shl2i
/* 801291FC 0012615C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80129200 00126160  7F E5 FB 78 */	mr r5, r31
/* 80129204 00126164  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80129208 00126168  7C 00 1B 78 */	or r0, r0, r3
/* 8012920C 0012616C  38 61 00 18 */	addi r3, r1, 0x18
/* 80129210 00126170  7C C4 23 78 */	or r4, r6, r4
/* 80129214 00126174  90 01 00 10 */	stw r0, 0x10(r1)
/* 80129218 00126178  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012921C 0012617C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80129220 00126180  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80129224 00126184  81 84 00 00 */	lwz r12, 0(r4)
/* 80129228 00126188  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8012922C 0012618C  7D 89 03 A6 */	mtctr r12
/* 80129230 00126190  4E 80 04 21 */	bctrl
/* 80129234 00126194  7F C3 F3 78 */	mr r3, r30
/* 80129238 00126198  7F E4 FB 78 */	mr r4, r31
/* 8012923C 0012619C  38 A1 00 48 */	addi r5, r1, 0x48
/* 80129240 001261A0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80129244 001261A4  38 E1 00 10 */	addi r7, r1, 0x10
/* 80129248 001261A8  48 00 00 49 */	bl LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
/* 8012924C 001261AC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80129250 001261B0  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80129254 001261B4  7C 63 00 34 */	cntlzw r3, r3
/* 80129258 001261B8  50 60 F7 38 */	rlwimi r0, r3, 0x1e, 0x1c, 0x1c
/* 8012925C 001261BC  98 1E 06 37 */	stb r0, 0x637(r30)
lbl_80129260:
/* 80129260 001261C0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80129264 001261C4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80129268 001261C8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 8012926C 001261CC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80129270 001261D0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80129274 001261D4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80129278 001261D8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8012927C 001261DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80129280 001261E0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80129284 001261E4  7C 08 03 A6 */	mtlr r0
/* 80129288 001261E8  38 21 00 90 */	addi r1, r1, 0x90
/* 8012928C 001261EC  4E 80 00 20 */	blr

.global LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList
LineOfSightTest__12CSpacePirateFR13CStateManagerRC9CVector3fRC9CVector3fRC13CMaterialList:
/* 80129290 001261F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80129294 001261F4  7C 08 02 A6 */	mflr r0
/* 80129298 001261F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8012929C 001261FC  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 801292A0 00126200  7C 7B 1B 78 */	mr r27, r3
/* 801292A4 00126204  7C 9C 23 78 */	mr r28, r4
/* 801292A8 00126208  7C BD 2B 78 */	mr r29, r5
/* 801292AC 0012620C  7C DE 33 78 */	mr r30, r6
/* 801292B0 00126210  7C FF 3B 78 */	mr r31, r7
/* 801292B4 00126214  38 60 00 00 */	li r3, 0
/* 801292B8 00126218  38 80 00 01 */	li r4, 1
/* 801292BC 0012621C  80 0D 8A AC */	lwz r0, lbl_805A766C@sda21(r13)
/* 801292C0 00126220  7C 05 03 78 */	mr r5, r0
/* 801292C4 00126224  48 26 0C 31 */	bl __shl2i
/* 801292C8 00126228  81 1F 00 00 */	lwz r8, 0(r31)
/* 801292CC 0012622C  38 00 00 03 */	li r0, 3
/* 801292D0 00126230  81 3F 00 04 */	lwz r9, 4(r31)
/* 801292D4 00126234  7F C5 F3 78 */	mr r5, r30
/* 801292D8 00126238  90 81 00 24 */	stw r4, 0x24(r1)
/* 801292DC 0012623C  7F A4 EB 78 */	mr r4, r29
/* 801292E0 00126240  7F 67 DB 78 */	mr r7, r27
/* 801292E4 00126244  38 C1 00 20 */	addi r6, r1, 0x20
/* 801292E8 00126248  90 61 00 20 */	stw r3, 0x20(r1)
/* 801292EC 0012624C  7F 83 E3 78 */	mr r3, r28
/* 801292F0 00126250  90 01 00 18 */	stw r0, 0x18(r1)
/* 801292F4 00126254  91 21 00 2C */	stw r9, 0x2c(r1)
/* 801292F8 00126258  91 01 00 28 */	stw r8, 0x28(r1)
/* 801292FC 0012625C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80129300 00126260  4B F2 3B 3D */	bl RayCollideWorld__13CStateManagerFRC9CVector3fRC9CVector3fRC15CMaterialFilterPC6CActor
/* 80129304 00126264  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 80129308 00126268  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8012930C 0012626C  7C 08 03 A6 */	mtlr r0
/* 80129310 00126270  38 21 00 50 */	addi r1, r1, 0x50
/* 80129314 00126274  4E 80 00 20 */	blr

.global CheckForProjectiles__12CSpacePirateFR13CStateManager
CheckForProjectiles__12CSpacePirateFR13CStateManager:
/* 80129318 00126278  94 21 F7 00 */	stwu r1, -0x900(r1)
/* 8012931C 0012627C  7C 08 02 A6 */	mflr r0
/* 80129320 00126280  90 01 09 04 */	stw r0, 0x904(r1)
/* 80129324 00126284  DB E1 08 F0 */	stfd f31, 0x8f0(r1)
/* 80129328 00126288  F3 E1 08 F8 */	psq_st f31, -1800(r1), 0, qr0
/* 8012932C 0012628C  DB C1 08 E0 */	stfd f30, 0x8e0(r1)
/* 80129330 00126290  F3 C1 08 E8 */	psq_st f30, -1816(r1), 0, qr0
/* 80129334 00126294  DB A1 08 D0 */	stfd f29, 0x8d0(r1)
/* 80129338 00126298  F3 A1 08 D8 */	psq_st f29, -1832(r1), 0, qr0
/* 8012933C 0012629C  BF 61 08 BC */	stmw r27, 0x8bc(r1)
/* 80129340 001262A0  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80129344 001262A4  7C 7E 1B 78 */	mr r30, r3
/* 80129348 001262A8  7C 9F 23 78 */	mr r31, r4
/* 8012934C 001262AC  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80129350 001262B0  41 82 02 BC */	beq lbl_8012960C
/* 80129354 001262B4  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 80129358 001262B8  7F E5 FB 78 */	mr r5, r31
/* 8012935C 001262BC  38 61 00 44 */	addi r3, r1, 0x44
/* 80129360 001262C0  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 80129364 001262C4  81 84 00 00 */	lwz r12, 0(r4)
/* 80129368 001262C8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8012936C 001262CC  7D 89 03 A6 */	mtctr r12
/* 80129370 001262D0  4E 80 04 21 */	bctrl
/* 80129374 001262D4  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80129378 001262D8  38 61 00 98 */	addi r3, r1, 0x98
/* 8012937C 001262DC  C0 82 98 1C */	lfs f4, lbl_805AB53C@sda21(r2)
/* 80129380 001262E0  38 81 00 38 */	addi r4, r1, 0x38
/* 80129384 001262E4  C0 C1 00 4C */	lfs f6, 0x4c(r1)
/* 80129388 001262E8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8012938C 001262EC  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80129390 001262F0  EC 01 20 2A */	fadds f0, f1, f4
/* 80129394 001262F4  EC 66 20 2A */	fadds f3, f6, f4
/* 80129398 001262F8  EC A2 20 2A */	fadds f5, f2, f4
/* 8012939C 001262FC  EC 42 20 28 */	fsubs f2, f2, f4
/* 801293A0 00126300  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801293A4 00126304  EC 21 20 28 */	fsubs f1, f1, f4
/* 801293A8 00126308  EC 06 20 28 */	fsubs f0, f6, f4
/* 801293AC 0012630C  D0 A1 00 2C */	stfs f5, 0x2c(r1)
/* 801293B0 00126310  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801293B4 00126314  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801293B8 00126318  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801293BC 0012631C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801293C0 00126320  48 20 F1 49 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801293C4 00126324  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 801293C8 00126328  38 C0 00 00 */	li r6, 0
/* 801293CC 0012632C  50 C0 26 F6 */	rlwimi r0, r6, 4, 0x1b, 0x1b
/* 801293D0 00126330  38 60 00 00 */	li r3, 0
/* 801293D4 00126334  98 1E 06 37 */	stb r0, 0x637(r30)
/* 801293D8 00126338  38 80 00 01 */	li r4, 1
/* 801293DC 0012633C  80 AD 8A A8 */	lwz r5, lbl_805A7668@sda21(r13)
/* 801293E0 00126340  90 C1 00 B0 */	stw r6, 0xb0(r1)
/* 801293E4 00126344  48 26 0B 11 */	bl __shl2i
/* 801293E8 00126348  39 00 00 00 */	li r8, 0
/* 801293EC 0012634C  38 00 00 01 */	li r0, 1
/* 801293F0 00126350  90 81 00 84 */	stw r4, 0x84(r1)
/* 801293F4 00126354  38 81 00 B0 */	addi r4, r1, 0xb0
/* 801293F8 00126358  38 A1 00 98 */	addi r5, r1, 0x98
/* 801293FC 0012635C  38 C1 00 80 */	addi r6, r1, 0x80
/* 80129400 00126360  90 61 00 80 */	stw r3, 0x80(r1)
/* 80129404 00126364  7F E3 FB 78 */	mr r3, r31
/* 80129408 00126368  38 E0 00 00 */	li r7, 0
/* 8012940C 0012636C  91 01 00 8C */	stw r8, 0x8c(r1)
/* 80129410 00126370  91 01 00 88 */	stw r8, 0x88(r1)
/* 80129414 00126374  90 01 00 90 */	stw r0, 0x90(r1)
/* 80129418 00126378  4B F2 33 09 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 8012941C 0012637C  3B A1 00 B4 */	addi r29, r1, 0xb4
/* 80129420 00126380  3B 80 00 00 */	li r28, 0
/* 80129424 00126384  48 00 01 7C */	b lbl_801295A0
lbl_80129428:
/* 80129428 00126388  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8012942C 0012638C  7F E3 FB 78 */	mr r3, r31
/* 80129430 00126390  38 81 00 08 */	addi r4, r1, 8
/* 80129434 00126394  B0 01 00 08 */	sth r0, 8(r1)
/* 80129438 00126398  4B F2 31 6D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8012943C 0012639C  7C 64 1B 78 */	mr r4, r3
/* 80129440 001263A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80129444 001263A4  4B F8 42 C9 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80129448 001263A8  83 63 00 04 */	lwz r27, 4(r3)
/* 8012944C 001263AC  28 1B 00 00 */	cmplwi r27, 0
/* 80129450 001263B0  41 82 01 48 */	beq lbl_80129598
/* 80129454 001263B4  C3 BB 00 60 */	lfs f29, 0x60(r27)
/* 80129458 001263B8  7F C4 F3 78 */	mr r4, r30
/* 8012945C 001263BC  C3 DB 00 50 */	lfs f30, 0x50(r27)
/* 80129460 001263C0  38 61 00 68 */	addi r3, r1, 0x68
/* 80129464 001263C4  C3 FB 00 40 */	lfs f31, 0x40(r27)
/* 80129468 001263C8  4B FF 14 C5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8012946C 001263CC  38 61 00 20 */	addi r3, r1, 0x20
/* 80129470 001263D0  38 81 00 68 */	addi r4, r1, 0x68
/* 80129474 001263D4  48 20 E1 99 */	bl GetCenterPoint__6CAABoxCFv
/* 80129478 001263D8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8012947C 001263DC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80129480 001263E0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80129484 001263E4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80129488 001263E8  EC 42 F0 28 */	fsubs f2, f2, f30
/* 8012948C 001263EC  EC 21 E8 28 */	fsubs f1, f1, f29
/* 80129490 001263F0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80129494 001263F4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80129498 001263F8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8012949C 001263FC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801294A0 00126400  48 1E B2 ED */	bl IsMagnitudeSafe__9CVector3fCFv
/* 801294A4 00126404  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801294A8 00126408  41 82 00 D4 */	beq lbl_8012957C
/* 801294AC 0012640C  C0 9E 00 48 */	lfs f4, 0x48(r30)
/* 801294B0 00126410  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 801294B4 00126414  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 801294B8 00126418  EC 04 00 32 */	fmuls f0, f4, f0
/* 801294BC 0012641C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801294C0 00126420  C0 BE 00 58 */	lfs f5, 0x58(r30)
/* 801294C4 00126424  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 801294C8 00126428  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 801294CC 0012642C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 801294D0 00126430  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 801294D4 00126434  EC 25 08 BA */	fmadds f1, f5, f2, f1
/* 801294D8 00126438  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801294DC 0012643C  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 801294E0 00126440  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801294E4 00126444  40 80 00 A8 */	bge lbl_8012958C
/* 801294E8 00126448  38 61 00 5C */	addi r3, r1, 0x5c
/* 801294EC 0012644C  48 1E B4 0D */	bl Normalize__9CVector3fFv
/* 801294F0 00126450  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 801294F4 00126454  38 61 00 50 */	addi r3, r1, 0x50
/* 801294F8 00126458  C0 1B 02 9C */	lfs f0, 0x29c(r27)
/* 801294FC 0012645C  C0 7B 00 60 */	lfs f3, 0x60(r27)
/* 80129500 00126460  C0 5B 02 A0 */	lfs f2, 0x2a0(r27)
/* 80129504 00126464  EC 81 00 28 */	fsubs f4, f1, f0
/* 80129508 00126468  C0 3B 00 40 */	lfs f1, 0x40(r27)
/* 8012950C 0012646C  C0 1B 02 98 */	lfs f0, 0x298(r27)
/* 80129510 00126470  EC 43 10 28 */	fsubs f2, f3, f2
/* 80129514 00126474  EC 01 00 28 */	fsubs f0, f1, f0
/* 80129518 00126478  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 8012951C 0012647C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80129520 00126480  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80129524 00126484  48 1E B2 69 */	bl IsMagnitudeSafe__9CVector3fCFv
/* 80129528 00126488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012952C 0012648C  41 82 00 60 */	beq lbl_8012958C
/* 80129530 00126490  38 61 00 50 */	addi r3, r1, 0x50
/* 80129534 00126494  48 1E B3 C5 */	bl Normalize__9CVector3fFv
/* 80129538 00126498  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 8012953C 0012649C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80129540 001264A0  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80129544 001264A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80129548 001264A8  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 8012954C 001264AC  C0 81 00 58 */	lfs f4, 0x58(r1)
/* 80129550 001264B0  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 80129554 001264B4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 80129558 001264B8  C0 02 98 60 */	lfs f0, lbl_805AB580@sda21(r2)
/* 8012955C 001264BC  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 80129560 001264C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129564 001264C4  40 81 00 28 */	ble lbl_8012958C
/* 80129568 001264C8  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 8012956C 001264CC  38 60 00 01 */	li r3, 1
/* 80129570 001264D0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80129574 001264D4  98 1E 06 37 */	stb r0, 0x637(r30)
/* 80129578 001264D8  48 00 00 14 */	b lbl_8012958C
lbl_8012957C:
/* 8012957C 001264DC  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80129580 001264E0  38 60 00 01 */	li r3, 1
/* 80129584 001264E4  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80129588 001264E8  98 1E 06 37 */	stb r0, 0x637(r30)
lbl_8012958C:
/* 8012958C 001264EC  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 80129590 001264F0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80129594 001264F4  40 82 00 18 */	bne lbl_801295AC
lbl_80129598:
/* 80129598 001264F8  3B BD 00 02 */	addi r29, r29, 2
/* 8012959C 001264FC  3B 9C 00 01 */	addi r28, r28, 1
lbl_801295A0:
/* 801295A0 00126500  80 01 00 B0 */	lwz r0, 0xb0(r1)
/* 801295A4 00126504  7C 1C 00 00 */	cmpw r28, r0
/* 801295A8 00126508  41 80 FE 80 */	blt lbl_80129428
lbl_801295AC:
/* 801295AC 0012650C  38 60 00 00 */	li r3, 0
/* 801295B0 00126510  88 1E 06 37 */	lbz r0, 0x637(r30)
/* 801295B4 00126514  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801295B8 00126518  98 1E 06 37 */	stb r0, 0x637(r30)
/* 801295BC 0012651C  80 A1 00 B0 */	lwz r5, 0xb0(r1)
/* 801295C0 00126520  2C 05 00 00 */	cmpwi r5, 0
/* 801295C4 00126524  40 81 00 40 */	ble lbl_80129604
/* 801295C8 00126528  2C 05 00 08 */	cmpwi r5, 8
/* 801295CC 0012652C  38 85 FF F8 */	addi r4, r5, -8
/* 801295D0 00126530  40 81 00 20 */	ble lbl_801295F0
/* 801295D4 00126534  38 04 00 07 */	addi r0, r4, 7
/* 801295D8 00126538  54 00 E8 FE */	srwi r0, r0, 3
/* 801295DC 0012653C  7C 09 03 A6 */	mtctr r0
/* 801295E0 00126540  2C 04 00 00 */	cmpwi r4, 0
/* 801295E4 00126544  40 81 00 0C */	ble lbl_801295F0
lbl_801295E8:
/* 801295E8 00126548  38 63 00 08 */	addi r3, r3, 8
/* 801295EC 0012654C  42 00 FF FC */	bdnz lbl_801295E8
lbl_801295F0:
/* 801295F0 00126550  7C 03 28 50 */	subf r0, r3, r5
/* 801295F4 00126554  7C 09 03 A6 */	mtctr r0
/* 801295F8 00126558  7C 03 28 00 */	cmpw r3, r5
/* 801295FC 0012655C  40 80 00 08 */	bge lbl_80129604
lbl_80129600:
/* 80129600 00126560  42 00 00 00 */	bdnz lbl_80129600
lbl_80129604:
/* 80129604 00126564  38 00 00 00 */	li r0, 0
/* 80129608 00126568  90 01 00 B0 */	stw r0, 0xb0(r1)
lbl_8012960C:
/* 8012960C 0012656C  E3 E1 08 F8 */	psq_l f31, -1800(r1), 0, qr0
/* 80129610 00126570  CB E1 08 F0 */	lfd f31, 0x8f0(r1)
/* 80129614 00126574  E3 C1 08 E8 */	psq_l f30, -1816(r1), 0, qr0
/* 80129618 00126578  CB C1 08 E0 */	lfd f30, 0x8e0(r1)
/* 8012961C 0012657C  E3 A1 08 D8 */	psq_l f29, -1832(r1), 0, qr0
/* 80129620 00126580  CB A1 08 D0 */	lfd f29, 0x8d0(r1)
/* 80129624 00126584  BB 61 08 BC */	lmw r27, 0x8bc(r1)
/* 80129628 00126588  80 01 09 04 */	lwz r0, 0x904(r1)
/* 8012962C 0012658C  7C 08 03 A6 */	mtlr r0
/* 80129630 00126590  38 21 09 00 */	addi r1, r1, 0x900
/* 80129634 00126594  4E 80 00 20 */	blr

.global SquadReset__12CSpacePirateFR13CStateManager
SquadReset__12CSpacePirateFR13CStateManager:
/* 80129638 00126598  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012963C 0012659C  7C 08 02 A6 */	mflr r0
/* 80129640 001265A0  38 E0 00 01 */	li r7, 1
/* 80129644 001265A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129648 001265A8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8012964C 001265AC  38 A1 00 10 */	addi r5, r1, 0x10
/* 80129650 001265B0  A1 03 00 08 */	lhz r8, 8(r3)
/* 80129654 001265B4  B1 01 00 0C */	sth r8, 0xc(r1)
/* 80129658 001265B8  A0 03 08 C8 */	lhz r0, 0x8c8(r3)
/* 8012965C 001265BC  B1 01 00 08 */	sth r8, 8(r1)
/* 80129660 001265C0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80129664 001265C4  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80129668 001265C8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8012966C 001265CC  7C 00 00 34 */	cntlzw r0, r0
/* 80129670 001265D0  54 03 D9 7E */	srwi r3, r0, 5
/* 80129674 001265D4  48 11 08 5D */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
/* 80129678 001265D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012967C 001265DC  7C 08 03 A6 */	mtlr r0
/* 80129680 001265E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80129684 001265E4  4E 80 00 20 */	blr

.global SquadRemove__12CSpacePirateFR13CStateManager
SquadRemove__12CSpacePirateFR13CStateManager:
/* 80129688 001265E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012968C 001265EC  7C 08 02 A6 */	mflr r0
/* 80129690 001265F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80129694 001265F4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80129698 001265F8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012969C 001265FC  7C 7E 1B 78 */	mr r30, r3
/* 801296A0 00126600  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801296A4 00126604  A0 63 08 C8 */	lhz r3, 0x8c8(r3)
/* 801296A8 00126608  7C 03 00 40 */	cmplw r3, r0
/* 801296AC 0012660C  41 82 00 70 */	beq lbl_8012971C
/* 801296B0 00126610  A0 1E 08 C8 */	lhz r0, 0x8c8(r30)
/* 801296B4 00126614  7C 83 23 78 */	mr r3, r4
/* 801296B8 00126618  38 81 00 18 */	addi r4, r1, 0x18
/* 801296BC 0012661C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801296C0 00126620  4B F2 2E B5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801296C4 00126624  7C 64 1B 78 */	mr r4, r3
/* 801296C8 00126628  38 61 00 1C */	addi r3, r1, 0x1c
/* 801296CC 0012662C  4B F7 DE A9 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801296D0 00126630  83 E3 00 04 */	lwz r31, 4(r3)
/* 801296D4 00126634  28 1F 00 00 */	cmplwi r31, 0
/* 801296D8 00126638  41 82 00 44 */	beq lbl_8012971C
/* 801296DC 0012663C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801296E0 00126640  7F E3 FB 78 */	mr r3, r31
/* 801296E4 00126644  38 81 00 14 */	addi r4, r1, 0x14
/* 801296E8 00126648  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801296EC 0012664C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801296F0 00126650  48 10 F9 01 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801296F4 00126654  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801296F8 00126658  41 82 00 24 */	beq lbl_8012971C
/* 801296FC 0012665C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80129700 00126660  7F E3 FB 78 */	mr r3, r31
/* 80129704 00126664  38 81 00 0C */	addi r4, r1, 0xc
/* 80129708 00126668  B0 01 00 08 */	sth r0, 8(r1)
/* 8012970C 0012666C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80129710 00126670  48 10 FD E5 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
/* 80129714 00126674  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80129718 00126678  B0 1E 08 C8 */	sth r0, 0x8c8(r30)
lbl_8012971C:
/* 8012971C 0012667C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80129720 00126680  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80129724 00126684  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80129728 00126688  7C 08 03 A6 */	mtlr r0
/* 8012972C 0012668C  38 21 00 30 */	addi r1, r1, 0x30
/* 80129730 00126690  4E 80 00 20 */	blr

.global SquadAdd__12CSpacePirateFR13CStateManager
SquadAdd__12CSpacePirateFR13CStateManager:
/* 80129734 00126694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80129738 00126698  7C 08 02 A6 */	mflr r0
/* 8012973C 0012669C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129740 001266A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80129744 001266A4  7C 9F 23 78 */	mr r31, r4
/* 80129748 001266A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012974C 001266AC  7C 7E 1B 78 */	mr r30, r3
/* 80129750 001266B0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80129754 001266B4  A0 63 08 C8 */	lhz r3, 0x8c8(r3)
/* 80129758 001266B8  7C 03 00 40 */	cmplw r3, r0
/* 8012975C 001266BC  40 82 00 1C */	bne lbl_80129778
/* 80129760 001266C0  7F C4 F3 78 */	mr r4, r30
/* 80129764 001266C4  7F E5 FB 78 */	mr r5, r31
/* 80129768 001266C8  38 61 00 0C */	addi r3, r1, 0xc
/* 8012976C 001266CC  48 11 0A 7D */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 80129770 001266D0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 80129774 001266D4  B0 1E 08 C8 */	sth r0, 0x8c8(r30)
lbl_80129778:
/* 80129778 001266D8  A0 7E 08 C8 */	lhz r3, 0x8c8(r30)
/* 8012977C 001266DC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80129780 001266E0  7C 03 00 40 */	cmplw r3, r0
/* 80129784 001266E4  41 82 00 54 */	beq lbl_801297D8
/* 80129788 001266E8  A0 1E 08 C8 */	lhz r0, 0x8c8(r30)
/* 8012978C 001266EC  7F E3 FB 78 */	mr r3, r31
/* 80129790 001266F0  38 81 00 08 */	addi r4, r1, 8
/* 80129794 001266F4  B0 01 00 08 */	sth r0, 8(r1)
/* 80129798 001266F8  4B F2 2D DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8012979C 001266FC  7C 64 1B 78 */	mr r4, r3
/* 801297A0 00126700  38 61 00 10 */	addi r3, r1, 0x10
/* 801297A4 00126704  4B F7 DD D1 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801297A8 00126708  80 63 00 04 */	lwz r3, 4(r3)
/* 801297AC 0012670C  28 03 00 00 */	cmplwi r3, 0
/* 801297B0 00126710  41 82 00 28 */	beq lbl_801297D8
/* 801297B4 00126714  88 1E 06 34 */	lbz r0, 0x634(r30)
/* 801297B8 00126718  7F C4 F3 78 */	mr r4, r30
/* 801297BC 0012671C  38 A0 00 02 */	li r5, 2
/* 801297C0 00126720  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 801297C4 00126724  41 82 00 08 */	beq lbl_801297CC
/* 801297C8 00126728  38 A0 00 01 */	li r5, 1
lbl_801297CC:
/* 801297CC 0012672C  38 C0 00 03 */	li r6, 3
/* 801297D0 00126730  38 E0 FF FF */	li r7, -1
/* 801297D4 00126734  48 10 FF D9 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_801297D8:
/* 801297D8 00126738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801297DC 0012673C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801297E0 00126740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801297E4 00126744  7C 08 03 A6 */	mtlr r0
/* 801297E8 00126748  38 21 00 20 */	addi r1, r1, 0x20
/* 801297EC 0012674C  4E 80 00 20 */	blr

.global GetOrigin__12CSpacePirateCFv
GetOrigin__12CSpacePirateCFv:
/* 801297F0 00126750  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801297F4 00126754  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801297F8 00126758  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801297FC 0012675C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80129800 00126760  D0 23 00 04 */	stfs f1, 4(r3)
/* 80129804 00126764  D0 43 00 08 */	stfs f2, 8(r3)
/* 80129808 00126768  4E 80 00 20 */	blr

.global DetachActorFromPirate__12CSpacePirateFv
DetachActorFromPirate__12CSpacePirateFv:
/* 8012980C 0012676C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80129810 00126770  B0 03 07 B4 */	sth r0, 0x7b4(r3)
/* 80129814 00126774  4E 80 00 20 */	blr

.global AttachActorToPirate__12CSpacePirateF9TUniqueId
AttachActorToPirate__12CSpacePirateF9TUniqueId:
/* 80129818 00126778  A0 A3 07 B4 */	lhz r5, 0x7b4(r3)
/* 8012981C 0012677C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80129820 00126780  7C 05 00 40 */	cmplw r5, r0
/* 80129824 00126784  40 82 00 14 */	bne lbl_80129838
/* 80129828 00126788  A0 04 00 00 */	lhz r0, 0(r4)
/* 8012982C 0012678C  B0 03 07 B4 */	sth r0, 0x7b4(r3)
/* 80129830 00126790  38 60 00 01 */	li r3, 1
/* 80129834 00126794  4E 80 00 20 */	blr
lbl_80129838:
/* 80129838 00126798  38 60 00 00 */	li r3, 0
/* 8012983C 0012679C  4E 80 00 20 */	blr

.global SetAttackTarget__12CSpacePirateF9TUniqueId
SetAttackTarget__12CSpacePirateF9TUniqueId:
/* 80129840 001267A0  A0 84 00 00 */	lhz r4, 0(r4)
/* 80129844 001267A4  38 00 00 01 */	li r0, 1
/* 80129848 001267A8  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012984C 001267AC  B0 83 07 C0 */	sth r4, 0x7c0(r3)
/* 80129850 001267B0  90 03 07 C4 */	stw r0, 0x7c4(r3)
/* 80129854 001267B4  D0 03 07 BC */	stfs f0, 0x7bc(r3)
/* 80129858 001267B8  4E 80 00 20 */	blr

.global SetVelocityForJump__12CSpacePirateFv
SetVelocityForJump__12CSpacePirateFv:
/* 8012985C 001267BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80129860 001267C0  7C 08 02 A6 */	mflr r0
/* 80129864 001267C4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80129868 001267C8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8012986C 001267CC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80129870 001267D0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80129874 001267D4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80129878 001267D8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8012987C 001267DC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80129880 001267E0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80129884 001267E4  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80129888 001267E8  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 8012988C 001267EC  F3 61 00 38 */	psq_st f27, 56(r1), 0, qr0
/* 80129890 001267F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80129894 001267F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80129898 001267F8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012989C 001267FC  88 03 06 37 */	lbz r0, 0x637(r3)
/* 801298A0 00126800  7C 7D 1B 78 */	mr r29, r3
/* 801298A4 00126804  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801298A8 00126808  40 82 00 F0 */	bne lbl_80129998
/* 801298AC 0012680C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 801298B0 00126810  C4 44 66 A0 */	lfsu f2, sZeroVector__9CVector3f@l(r4)
/* 801298B4 00126814  3B E1 00 10 */	addi r31, r1, 0x10
/* 801298B8 00126818  C0 24 00 04 */	lfs f1, 4(r4)
/* 801298BC 0012681C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801298C0 00126820  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801298C4 00126824  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801298C8 00126828  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801298CC 0012682C  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 801298D0 00126830  C0 7D 00 50 */	lfs f3, 0x50(r29)
/* 801298D4 00126834  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 801298D8 00126838  D0 41 00 08 */	stfs f2, 8(r1)
/* 801298DC 0012683C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 801298E0 00126840  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801298E4 00126844  81 83 00 00 */	lwz r12, 0(r3)
/* 801298E8 00126848  C0 3D 08 28 */	lfs f1, 0x828(r29)
/* 801298EC 0012684C  C0 1D 08 2C */	lfs f0, 0x82c(r29)
/* 801298F0 00126850  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 801298F4 00126854  EF A1 10 28 */	fsubs f29, f1, f2
/* 801298F8 00126858  EF C0 18 28 */	fsubs f30, f0, f3
/* 801298FC 0012685C  7D 89 03 A6 */	mtctr r12
/* 80129900 00126860  4E 80 04 21 */	bctrl
/* 80129904 00126864  FF E0 08 90 */	fmr f31, f1
/* 80129908 00126868  3B DD 08 30 */	addi r30, r29, 0x830
/* 8012990C 0012686C  7F C3 F3 78 */	mr r3, r30
/* 80129910 00126870  7F E4 FB 78 */	mr r4, r31
/* 80129914 00126874  4B F2 5E 1D */	bl "Max<f>__5CMathFRCfRCf"
/* 80129918 00126878  C0 43 00 00 */	lfs f2, 0(r3)
/* 8012991C 0012687C  C0 1D 08 24 */	lfs f0, 0x824(r29)
/* 80129920 00126880  C0 22 97 DC */	lfs f1, lbl_805AB4FC@sda21(r2)
/* 80129924 00126884  EF 80 10 2A */	fadds f28, f0, f2
/* 80129928 00126888  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8012992C 0012688C  EC 21 07 F2 */	fmuls f1, f1, f31
/* 80129930 00126890  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80129934 00126894  EC 21 00 32 */	fmuls f1, f1, f0
/* 80129938 00126898  48 1E BB C9 */	bl SqrtF__5CMathFf
/* 8012993C 0012689C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80129940 001268A0  FC 40 08 18 */	frsp f2, f1
/* 80129944 001268A4  C0 22 97 DC */	lfs f1, lbl_805AB4FC@sda21(r2)
/* 80129948 001268A8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012994C 001268AC  EF 62 F8 24 */	fdivs f27, f2, f31
/* 80129950 001268B0  EC 1C 00 28 */	fsubs f0, f28, f0
/* 80129954 001268B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80129958 001268B8  EC 20 F8 24 */	fdivs f1, f0, f31
/* 8012995C 001268BC  48 1E BB A5 */	bl SqrtF__5CMathFf
/* 80129960 001268C0  EF 7B 08 2A */	fadds f27, f27, f1
/* 80129964 001268C4  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 80129968 001268C8  7F A3 EB 78 */	mr r3, r29
/* 8012996C 001268CC  38 81 00 14 */	addi r4, r1, 0x14
/* 80129970 001268D0  EC 00 D8 24 */	fdivs f0, f0, f27
/* 80129974 001268D4  EC 20 07 72 */	fmuls f1, f0, f29
/* 80129978 001268D8  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8012997C 001268DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80129980 001268E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80129984 001268E4  4B FF 13 1D */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 80129988 001268E8  88 1D 06 37 */	lbz r0, 0x637(r29)
/* 8012998C 001268EC  38 60 00 01 */	li r3, 1
/* 80129990 001268F0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 80129994 001268F4  98 1D 06 37 */	stb r0, 0x637(r29)
lbl_80129998:
/* 80129998 001268F8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8012999C 001268FC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801299A0 00126900  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 801299A4 00126904  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801299A8 00126908  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 801299AC 0012690C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 801299B0 00126910  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 801299B4 00126914  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 801299B8 00126918  E3 61 00 38 */	psq_l f27, 56(r1), 0, qr0
/* 801299BC 0012691C  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 801299C0 00126920  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801299C4 00126924  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801299C8 00126928  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801299CC 0012692C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801299D0 00126930  7C 08 03 A6 */	mtlr r0
/* 801299D4 00126934  38 21 00 80 */	addi r1, r1, 0x80
/* 801299D8 00126938  4E 80 00 20 */	blr

.global CheckTargetable__12CSpacePirateFR13CStateManager
CheckTargetable__12CSpacePirateFR13CStateManager:
/* 801299DC 0012693C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801299E0 00126940  7C 08 02 A6 */	mflr r0
/* 801299E4 00126944  90 01 00 14 */	stw r0, 0x14(r1)
/* 801299E8 00126948  81 83 00 00 */	lwz r12, 0(r3)
/* 801299EC 0012694C  81 8C 02 B4 */	lwz r12, 0x2b4(r12)
/* 801299F0 00126950  7D 89 03 A6 */	mtctr r12
/* 801299F4 00126954  4E 80 04 21 */	bctrl
/* 801299F8 00126958  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801299FC 0012695C  20 00 00 7F */	subfic r0, r0, 0x7f
/* 80129A00 00126960  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80129A04 00126964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80129A08 00126968  7C 08 03 A6 */	mtlr r0
/* 80129A0C 0012696C  38 21 00 10 */	addi r1, r1, 0x10
/* 80129A10 00126970  4E 80 00 20 */	blr

.global SetEyeParticleActive__12CSpacePirateFR13CStateManagerb
SetEyeParticleActive__12CSpacePirateFR13CStateManagerb:
/* 80129A14 00126974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80129A18 00126978  7C 08 02 A6 */	mflr r0
/* 80129A1C 0012697C  7C 86 23 78 */	mr r6, r4
/* 80129A20 00126980  90 01 00 14 */	stw r0, 0x14(r1)
/* 80129A24 00126984  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80129A28 00126988  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80129A2C 0012698C  40 82 00 54 */	bne lbl_80129A80
/* 80129A30 00126990  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80129A34 00126994  80 83 00 64 */	lwz r4, 0x64(r3)
/* 80129A38 00126998  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80129A3C 0012699C  80 E4 00 10 */	lwz r7, 0x10(r4)
/* 80129A40 001269A0  41 82 00 10 */	beq lbl_80129A50
/* 80129A44 001269A4  88 03 06 35 */	lbz r0, 0x635(r3)
/* 80129A48 001269A8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80129A4C 001269AC  41 82 00 24 */	beq lbl_80129A70
lbl_80129A50:
/* 80129A50 001269B0  88 03 06 35 */	lbz r0, 0x635(r3)
/* 80129A54 001269B4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80129A58 001269B8  40 82 00 28 */	bne lbl_80129A80
/* 80129A5C 001269BC  3C 80 80 57 */	lis r4, lbl_8056F8A4@ha
/* 80129A60 001269C0  7C E3 3B 78 */	mr r3, r7
/* 80129A64 001269C4  38 84 F8 A4 */	addi r4, r4, lbl_8056F8A4@l
/* 80129A68 001269C8  4B F0 13 59 */	bl "SetParticleEffectState__9CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager"
/* 80129A6C 001269CC  48 00 00 14 */	b lbl_80129A80
lbl_80129A70:
/* 80129A70 001269D0  3C 80 80 57 */	lis r4, lbl_8056F894@ha
/* 80129A74 001269D4  7C E3 3B 78 */	mr r3, r7
/* 80129A78 001269D8  38 84 F8 94 */	addi r4, r4, lbl_8056F894@l
/* 80129A7C 001269DC  4B F0 13 45 */	bl "SetParticleEffectState__9CAnimDataFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bR13CStateManager"
lbl_80129A80:
/* 80129A80 001269E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80129A84 001269E4  7C 08 03 A6 */	mtlr r0
/* 80129A88 001269E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80129A8C 001269EC  4E 80 00 20 */	blr

.global Listen__12CSpacePirateFRC9CVector3f16EListenNoiseType
Listen__12CSpacePirateFRC9CVector3f16EListenNoiseType:
/* 80129A90 001269F0  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80129A94 001269F4  38 C0 00 00 */	li r6, 0
/* 80129A98 001269F8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80129A9C 001269FC  41 82 00 90 */	beq lbl_80129B2C
/* 80129AA0 00126A00  C0 24 00 04 */	lfs f1, 4(r4)
/* 80129AA4 00126A04  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80129AA8 00126A08  C0 43 05 7C */	lfs f2, 0x57c(r3)
/* 80129AAC 00126A0C  EC A1 00 28 */	fsubs f5, f1, f0
/* 80129AB0 00126A10  C0 84 00 00 */	lfs f4, 0(r4)
/* 80129AB4 00126A14  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 80129AB8 00126A18  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80129ABC 00126A1C  C0 44 00 08 */	lfs f2, 8(r4)
/* 80129AC0 00126A20  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80129AC4 00126A24  EC 64 18 28 */	fsubs f3, f4, f3
/* 80129AC8 00126A28  EC 42 08 28 */	fsubs f2, f2, f1
/* 80129ACC 00126A2C  EC 25 01 72 */	fmuls f1, f5, f5
/* 80129AD0 00126A30  EC 42 00 B2 */	fmuls f2, f2, f2
/* 80129AD4 00126A34  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 80129AD8 00126A38  EC 22 08 2A */	fadds f1, f2, f1
/* 80129ADC 00126A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129AE0 00126A40  40 80 00 34 */	bge lbl_80129B14
/* 80129AE4 00126A44  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80129AE8 00126A48  C0 23 03 C0 */	lfs f1, 0x3c0(r3)
/* 80129AEC 00126A4C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80129AF0 00126A50  41 82 00 10 */	beq lbl_80129B00
/* 80129AF4 00126A54  EC 01 00 72 */	fmuls f0, f1, f1
/* 80129AF8 00126A58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80129AFC 00126A5C  40 80 00 18 */	bge lbl_80129B14
lbl_80129B00:
/* 80129B00 00126A60  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80129B04 00126A64  38 80 00 01 */	li r4, 1
/* 80129B08 00126A68  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80129B0C 00126A6C  38 C0 00 01 */	li r6, 1
/* 80129B10 00126A70  98 03 06 36 */	stb r0, 0x636(r3)
lbl_80129B14:
/* 80129B14 00126A74  2C 05 00 00 */	cmpwi r5, 0
/* 80129B18 00126A78  40 82 00 14 */	bne lbl_80129B2C
/* 80129B1C 00126A7C  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80129B20 00126A80  38 80 00 01 */	li r4, 1
/* 80129B24 00126A84  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 80129B28 00126A88  98 03 06 37 */	stb r0, 0x637(r3)
lbl_80129B2C:
/* 80129B2C 00126A8C  54 C3 06 3E */	clrlwi r3, r6, 0x18
/* 80129B30 00126A90  4E 80 00 20 */	blr

.global Touch__12CSpacePirateFR6CActorR13CStateManager
Touch__12CSpacePirateFR6CActorR13CStateManager:
/* 80129B34 00126A94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80129B38 00126A98  7C 08 02 A6 */	mflr r0
/* 80129B3C 00126A9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80129B40 00126AA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80129B44 00126AA4  7C 9F 23 78 */	mr r31, r4
/* 80129B48 00126AA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80129B4C 00126AAC  7C 7E 1B 78 */	mr r30, r3
/* 80129B50 00126AB0  4B F4 FF 51 */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80129B54 00126AB4  80 7E 08 5C */	lwz r3, 0x85c(r30)
/* 80129B58 00126AB8  28 03 00 00 */	cmplwi r3, 0
/* 80129B5C 00126ABC  41 82 00 84 */	beq lbl_80129BE0
/* 80129B60 00126AC0  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80129B64 00126AC4  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80129B68 00126AC8  41 82 00 78 */	beq lbl_80129BE0
/* 80129B6C 00126ACC  7F E4 FB 78 */	mr r4, r31
/* 80129B70 00126AD0  38 61 00 08 */	addi r3, r1, 8
/* 80129B74 00126AD4  4B F7 D3 E1 */	bl "__ct__28TCastToPtr<14CScriptTrigger>FR7CEntity"
/* 80129B78 00126AD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80129B7C 00126ADC  28 03 00 00 */	cmplwi r3, 0
/* 80129B80 00126AE0  41 82 00 60 */	beq lbl_80129BE0
/* 80129B84 00126AE4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80129B88 00126AE8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80129B8C 00126AEC  41 82 00 54 */	beq lbl_80129BE0
/* 80129B90 00126AF0  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80129B94 00126AF4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80129B98 00126AF8  41 82 00 48 */	beq lbl_80129BE0
/* 80129B9C 00126AFC  C0 23 01 28 */	lfs f1, 0x128(r3)
/* 80129BA0 00126B00  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 80129BA4 00126B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80129BA8 00126B08  40 81 00 38 */	ble lbl_80129BE0
/* 80129BAC 00126B0C  80 9E 08 5C */	lwz r4, 0x85c(r30)
/* 80129BB0 00126B10  C0 03 01 1C */	lfs f0, 0x11c(r3)
/* 80129BB4 00126B14  C0 24 00 84 */	lfs f1, 0x84(r4)
/* 80129BB8 00126B18  EC 01 00 2A */	fadds f0, f1, f0
/* 80129BBC 00126B1C  D0 04 00 84 */	stfs f0, 0x84(r4)
/* 80129BC0 00126B20  C0 24 00 88 */	lfs f1, 0x88(r4)
/* 80129BC4 00126B24  C0 03 01 20 */	lfs f0, 0x120(r3)
/* 80129BC8 00126B28  EC 01 00 2A */	fadds f0, f1, f0
/* 80129BCC 00126B2C  D0 04 00 88 */	stfs f0, 0x88(r4)
/* 80129BD0 00126B30  C0 24 00 8C */	lfs f1, 0x8c(r4)
/* 80129BD4 00126B34  C0 03 01 24 */	lfs f0, 0x124(r3)
/* 80129BD8 00126B38  EC 01 00 2A */	fadds f0, f1, f0
/* 80129BDC 00126B3C  D0 04 00 8C */	stfs f0, 0x8c(r4)
lbl_80129BE0:
/* 80129BE0 00126B40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80129BE4 00126B44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80129BE8 00126B48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80129BEC 00126B4C  7C 08 03 A6 */	mtlr r0
/* 80129BF0 00126B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80129BF4 00126B54  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CSpacePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CSpacePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80129BF8 00126B58  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80129BFC 00126B5C  7C 08 02 A6 */	mflr r0
/* 80129C00 00126B60  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80129C04 00126B64  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80129C08 00126B68  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80129C0C 00126B6C  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 80129C10 00126B70  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80129C14 00126B74  7C 7C 1B 78 */	mr r28, r3
/* 80129C18 00126B78  7C 9D 23 78 */	mr r29, r4
/* 80129C1C 00126B7C  7C BE 2B 78 */	mr r30, r5
/* 80129C20 00126B80  54 03 F7 FF */	rlwinm. r3, r0, 0x1e, 0x1f, 0x1f
/* 80129C24 00126B84  7C DF 33 78 */	mr r31, r6
/* 80129C28 00126B88  40 82 00 10 */	bne lbl_80129C38
/* 80129C2C 00126B8C  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80129C30 00126B90  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80129C34 00126B94  41 82 00 D0 */	beq lbl_80129D04
lbl_80129C38:
/* 80129C38 00126B98  2C 1D 00 1A */	cmpwi r29, 0x1a
/* 80129C3C 00126B9C  41 82 00 14 */	beq lbl_80129C50
/* 80129C40 00126BA0  40 80 00 C4 */	bge lbl_80129D04
/* 80129C44 00126BA4  2C 1D 00 17 */	cmpwi r29, 0x17
/* 80129C48 00126BA8  41 82 00 B4 */	beq lbl_80129CFC
/* 80129C4C 00126BAC  48 00 00 B8 */	b lbl_80129D04
lbl_80129C50:
/* 80129C50 00126BB0  28 03 00 00 */	cmplwi r3, 0
/* 80129C54 00126BB4  41 82 00 34 */	beq lbl_80129C88
/* 80129C58 00126BB8  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80129C5C 00126BBC  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80129C60 00126BC0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80129C64 00126BC4  40 82 00 24 */	bne lbl_80129C88
/* 80129C68 00126BC8  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80129C6C 00126BCC  48 00 A4 0D */	bl GetCurrentState__14CBodyStateInfoCFv
/* 80129C70 00126BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80129C74 00126BD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80129C78 00126BD8  7D 89 03 A6 */	mtctr r12
/* 80129C7C 00126BDC  4E 80 04 21 */	bctrl
/* 80129C80 00126BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129C84 00126BE4  41 82 00 50 */	beq lbl_80129CD4
lbl_80129C88:
/* 80129C88 00126BE8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80129C8C 00126BEC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80129C90 00126BF0  41 82 00 74 */	beq lbl_80129D04
/* 80129C94 00126BF4  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 80129C98 00126BF8  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80129C9C 00126BFC  2C 00 00 05 */	cmpwi r0, 5
/* 80129CA0 00126C00  41 82 00 34 */	beq lbl_80129CD4
/* 80129CA4 00126C04  2C 00 00 0D */	cmpwi r0, 0xd
/* 80129CA8 00126C08  40 82 00 5C */	bne lbl_80129D04
/* 80129CAC 00126C0C  3B 63 02 A4 */	addi r27, r3, 0x2a4
/* 80129CB0 00126C10  7F 63 DB 78 */	mr r3, r27
/* 80129CB4 00126C14  48 00 A3 C5 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 80129CB8 00126C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80129CBC 00126C1C  80 9B 00 18 */	lwz r4, 0x18(r27)
/* 80129CC0 00126C20  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80129CC4 00126C24  7D 89 03 A6 */	mtctr r12
/* 80129CC8 00126C28  4E 80 04 21 */	bctrl
/* 80129CCC 00126C2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80129CD0 00126C30  40 82 00 34 */	bne lbl_80129D04
lbl_80129CD4:
/* 80129CD4 00126C34  7F 83 E3 78 */	mr r3, r28
/* 80129CD8 00126C38  4B FF 16 A1 */	bl Stop__13CPhysicsActorFv
/* 80129CDC 00126C3C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 80129CE0 00126C40  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 80129CE4 00126C44  D0 1C 01 50 */	stfs f0, 0x150(r28)
/* 80129CE8 00126C48  C0 03 00 04 */	lfs f0, 4(r3)
/* 80129CEC 00126C4C  D0 1C 01 54 */	stfs f0, 0x154(r28)
/* 80129CF0 00126C50  C0 03 00 08 */	lfs f0, 8(r3)
/* 80129CF4 00126C54  D0 1C 01 58 */	stfs f0, 0x158(r28)
/* 80129CF8 00126C58  48 00 05 EC */	b lbl_8012A2E4
lbl_80129CFC:
/* 80129CFC 00126C5C  C0 02 98 10 */	lfs f0, lbl_805AB530@sda21(r2)
/* 80129D00 00126C60  D0 1C 08 50 */	stfs f0, 0x850(r28)
lbl_80129D04:
/* 80129D04 00126C64  2C 1D 00 15 */	cmpwi r29, 0x15
/* 80129D08 00126C68  41 82 00 14 */	beq lbl_80129D1C
/* 80129D0C 00126C6C  40 80 00 88 */	bge lbl_80129D94
/* 80129D10 00126C70  2C 1D 00 01 */	cmpwi r29, 1
/* 80129D14 00126C74  41 82 00 08 */	beq lbl_80129D1C
/* 80129D18 00126C78  48 00 00 7C */	b lbl_80129D94
lbl_80129D1C:
/* 80129D1C 00126C7C  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 80129D20 00126C80  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80129D24 00126C84  41 82 00 44 */	beq lbl_80129D68
/* 80129D28 00126C88  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80129D2C 00126C8C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80129D30 00126C90  41 82 00 18 */	beq lbl_80129D48
/* 80129D34 00126C94  88 1C 06 38 */	lbz r0, 0x638(r28)
/* 80129D38 00126C98  38 60 00 01 */	li r3, 1
/* 80129D3C 00126C9C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80129D40 00126CA0  98 1C 06 38 */	stb r0, 0x638(r28)
/* 80129D44 00126CA4  48 00 00 14 */	b lbl_80129D58
lbl_80129D48:
/* 80129D48 00126CA8  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 80129D4C 00126CAC  38 60 00 01 */	li r3, 1
/* 80129D50 00126CB0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80129D54 00126CB4  98 1C 04 00 */	stb r0, 0x400(r28)
lbl_80129D58:
/* 80129D58 00126CB8  7F 83 E3 78 */	mr r3, r28
/* 80129D5C 00126CBC  7F E4 FB 78 */	mr r4, r31
/* 80129D60 00126CC0  4B FF F9 D5 */	bl SquadAdd__12CSpacePirateFR13CStateManager
/* 80129D64 00126CC4  48 00 00 30 */	b lbl_80129D94
lbl_80129D68:
/* 80129D68 00126CC8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80129D6C 00126CCC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80129D70 00126CD0  41 82 00 24 */	beq lbl_80129D94
/* 80129D74 00126CD4  7F 83 E3 78 */	mr r3, r28
/* 80129D78 00126CD8  7F E5 FB 78 */	mr r5, r31
/* 80129D7C 00126CDC  38 80 00 25 */	li r4, 0x25
/* 80129D80 00126CE0  4B F2 A2 01 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80129D84 00126CE4  88 1C 03 28 */	lbz r0, 0x328(r28)
/* 80129D88 00126CE8  38 60 00 00 */	li r3, 0
/* 80129D8C 00126CEC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80129D90 00126CF0  98 1C 03 28 */	stb r0, 0x328(r28)
lbl_80129D94:
/* 80129D94 00126CF4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80129D98 00126CF8  7F 83 E3 78 */	mr r3, r28
/* 80129D9C 00126CFC  7F A4 EB 78 */	mr r4, r29
/* 80129DA0 00126D00  7F E6 FB 78 */	mr r6, r31
/* 80129DA4 00126D04  B0 01 00 34 */	sth r0, 0x34(r1)
/* 80129DA8 00126D08  38 A1 00 34 */	addi r5, r1, 0x34
/* 80129DAC 00126D0C  4B F5 2D CD */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80129DB0 00126D10  38 1D FF FC */	addi r0, r29, -4
/* 80129DB4 00126D14  28 00 00 24 */	cmplwi r0, 0x24
/* 80129DB8 00126D18  41 81 05 2C */	bgt lbl_8012A2E4
/* 80129DBC 00126D1C  3C 60 80 3E */	lis r3, lbl_803E0AF8@ha
/* 80129DC0 00126D20  54 00 10 3A */	slwi r0, r0, 2
/* 80129DC4 00126D24  38 63 0A F8 */	addi r3, r3, lbl_803E0AF8@l
/* 80129DC8 00126D28  7C 03 00 2E */	lwzx r0, r3, r0
/* 80129DCC 00126D2C  7C 09 03 A6 */	mtctr r0
/* 80129DD0 00126D30  4E 80 04 20 */	bctr
.global lbl_80129DD4
lbl_80129DD4:
/* 80129DD4 00126D34  83 7C 00 2C */	lwz r27, 0x2c(r28)
/* 80129DD8 00126D38  48 00 00 A0 */	b lbl_80129E78
lbl_80129DDC:
/* 80129DDC 00126D3C  80 7B 00 00 */	lwz r3, 0(r27)
/* 80129DE0 00126D40  2C 03 00 0C */	cmpwi r3, 0xc
/* 80129DE4 00126D44  40 82 00 6C */	bne lbl_80129E50
/* 80129DE8 00126D48  80 1B 00 04 */	lwz r0, 4(r27)
/* 80129DEC 00126D4C  2C 00 00 08 */	cmpwi r0, 8
/* 80129DF0 00126D50  40 82 00 60 */	bne lbl_80129E50
/* 80129DF4 00126D54  80 1B 00 08 */	lwz r0, 8(r27)
/* 80129DF8 00126D58  7F E4 FB 78 */	mr r4, r31
/* 80129DFC 00126D5C  38 61 00 30 */	addi r3, r1, 0x30
/* 80129E00 00126D60  38 A1 00 44 */	addi r5, r1, 0x44
/* 80129E04 00126D64  90 01 00 44 */	stw r0, 0x44(r1)
/* 80129E08 00126D68  4B F1 E1 15 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 80129E0C 00126D6C  A0 01 00 30 */	lhz r0, 0x30(r1)
/* 80129E10 00126D70  7F E3 FB 78 */	mr r3, r31
/* 80129E14 00126D74  38 81 00 2C */	addi r4, r1, 0x2c
/* 80129E18 00126D78  B0 01 00 38 */	sth r0, 0x38(r1)
/* 80129E1C 00126D7C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80129E20 00126D80  4B F2 27 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80129E24 00126D84  7C 64 1B 78 */	mr r4, r3
/* 80129E28 00126D88  38 61 00 50 */	addi r3, r1, 0x50
/* 80129E2C 00126D8C  4B F8 0C 01 */	bl "__ct__31TCastToPtr<17CScriptCoverPoint>FP7CEntity"
/* 80129E30 00126D90  80 63 00 04 */	lwz r3, 4(r3)
/* 80129E34 00126D94  28 03 00 00 */	cmplwi r3, 0
/* 80129E38 00126D98  41 82 00 3C */	beq lbl_80129E74
/* 80129E3C 00126D9C  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80129E40 00126DA0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80129E44 00126DA4  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80129E48 00126DA8  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 80129E4C 00126DAC  48 00 00 28 */	b lbl_80129E74
lbl_80129E50:
/* 80129E50 00126DB0  2C 03 00 0D */	cmpwi r3, 0xd
/* 80129E54 00126DB4  40 82 00 20 */	bne lbl_80129E74
/* 80129E58 00126DB8  80 1B 00 04 */	lwz r0, 4(r27)
/* 80129E5C 00126DBC  2C 00 00 06 */	cmpwi r0, 6
/* 80129E60 00126DC0  40 82 00 14 */	bne lbl_80129E74
/* 80129E64 00126DC4  88 1C 06 37 */	lbz r0, 0x637(r28)
/* 80129E68 00126DC8  38 60 00 01 */	li r3, 1
/* 80129E6C 00126DCC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80129E70 00126DD0  98 1C 06 37 */	stb r0, 0x637(r28)
lbl_80129E74:
/* 80129E74 00126DD4  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_80129E78:
/* 80129E78 00126DD8  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 80129E7C 00126DDC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80129E80 00126DE0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80129E84 00126DE4  7C 03 02 14 */	add r0, r3, r0
/* 80129E88 00126DE8  7C 1B 00 40 */	cmplw r27, r0
/* 80129E8C 00126DEC  40 82 FF 50 */	bne lbl_80129DDC
/* 80129E90 00126DF0  80 BC 00 04 */	lwz r5, 4(r28)
/* 80129E94 00126DF4  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 80129E98 00126DF8  54 A3 18 38 */	slwi r3, r5, 3
/* 80129E9C 00126DFC  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 80129EA0 00126E00  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80129EA4 00126E04  38 03 00 04 */	addi r0, r3, 4
/* 80129EA8 00126E08  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80129EAC 00126E0C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80129EB0 00126E10  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80129EB4 00126E14  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80129EB8 00126E18  90 1C 06 60 */	stw r0, 0x660(r28)
/* 80129EBC 00126E1C  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 80129EC0 00126E20  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 80129EC4 00126E24  41 82 00 5C */	beq lbl_80129F20
/* 80129EC8 00126E28  C0 02 98 64 */	lfs f0, lbl_805AB584@sda21(r2)
/* 80129ECC 00126E2C  7F 83 E3 78 */	mr r3, r28
/* 80129ED0 00126E30  7F E8 FB 78 */	mr r8, r31
/* 80129ED4 00126E34  38 80 00 21 */	li r4, 0x21
/* 80129ED8 00126E38  D0 1C 08 58 */	stfs f0, 0x858(r28)
/* 80129EDC 00126E3C  38 A0 00 13 */	li r5, 0x13
/* 80129EE0 00126E40  38 C0 00 28 */	li r6, 0x28
/* 80129EE4 00126E44  38 E0 00 29 */	li r7, 0x29
/* 80129EE8 00126E48  4B F2 9E 01 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 80129EEC 00126E4C  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 80129EF0 00126E50  38 60 00 00 */	li r3, 0
/* 80129EF4 00126E54  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80129EF8 00126E58  7F 83 E3 78 */	mr r3, r28
/* 80129EFC 00126E5C  98 1C 04 00 */	stb r0, 0x400(r28)
/* 80129F00 00126E60  7F E4 FB 78 */	mr r4, r31
/* 80129F04 00126E64  81 9C 00 00 */	lwz r12, 0(r28)
/* 80129F08 00126E68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80129F0C 00126E6C  7D 89 03 A6 */	mtctr r12
/* 80129F10 00126E70  4E 80 04 21 */	bctrl
/* 80129F14 00126E74  C0 02 98 68 */	lfs f0, lbl_805AB588@sda21(r2)
/* 80129F18 00126E78  D0 03 00 00 */	stfs f0, 0(r3)
/* 80129F1C 00126E7C  48 00 03 C8 */	b lbl_8012A2E4
lbl_80129F20:
/* 80129F20 00126E80  7F 83 E3 78 */	mr r3, r28
/* 80129F24 00126E84  7F E4 FB 78 */	mr r4, r31
/* 80129F28 00126E88  38 A0 00 01 */	li r5, 1
/* 80129F2C 00126E8C  4B FF FA E9 */	bl SetEyeParticleActive__12CSpacePirateFR13CStateManagerb
/* 80129F30 00126E90  48 00 03 B4 */	b lbl_8012A2E4
.global lbl_80129F34
lbl_80129F34:
/* 80129F34 00126E94  80 7C 08 5C */	lwz r3, 0x85c(r28)
/* 80129F38 00126E98  28 03 00 00 */	cmplwi r3, 0
/* 80129F3C 00126E9C  41 82 03 A8 */	beq lbl_8012A2E4
/* 80129F40 00126EA0  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80129F44 00126EA4  38 80 00 00 */	li r4, 0
/* 80129F48 00126EA8  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 80129F4C 00126EAC  98 03 00 68 */	stb r0, 0x68(r3)
/* 80129F50 00126EB0  80 7C 08 5C */	lwz r3, 0x85c(r28)
/* 80129F54 00126EB4  88 03 00 68 */	lbz r0, 0x68(r3)
/* 80129F58 00126EB8  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 80129F5C 00126EBC  98 03 00 68 */	stb r0, 0x68(r3)
/* 80129F60 00126EC0  48 00 03 84 */	b lbl_8012A2E4
.global lbl_80129F64
lbl_80129F64:
/* 80129F64 00126EC4  88 7C 06 34 */	lbz r3, 0x634(r28)
/* 80129F68 00126EC8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 80129F6C 00126ECC  41 82 00 3C */	beq lbl_80129FA8
/* 80129F70 00126ED0  38 00 00 01 */	li r0, 1
/* 80129F74 00126ED4  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 80129F78 00126ED8  98 7C 06 34 */	stb r3, 0x634(r28)
/* 80129F7C 00126EDC  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 80129F80 00126EE0  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80129F84 00126EE4  41 82 00 24 */	beq lbl_80129FA8
/* 80129F88 00126EE8  C0 22 97 E4 */	lfs f1, lbl_805AB504@sda21(r2)
/* 80129F8C 00126EEC  C0 1C 06 18 */	lfs f0, 0x618(r28)
/* 80129F90 00126EF0  EF E1 00 32 */	fmuls f31, f1, f0
/* 80129F94 00126EF4  F3 E1 A0 08 */	psq_st f31, 8(r1), 1, qr2
/* 80129F98 00126EF8  C0 02 98 68 */	lfs f0, lbl_805AB588@sda21(r2)
/* 80129F9C 00126EFC  88 01 00 08 */	lbz r0, 8(r1)
/* 80129FA0 00126F00  98 1C 04 2F */	stb r0, 0x42f(r28)
/* 80129FA4 00126F04  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
lbl_80129FA8:
/* 80129FA8 00126F08  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80129FAC 00126F0C  48 1E 85 75 */	bl Next__9CRandom16Fv
/* 80129FB0 00126F10  3C 80 2A AB */	lis r4, 0x2AAAAAAB@ha
/* 80129FB4 00126F14  38 04 AA AB */	addi r0, r4, 0x2AAAAAAB@l
/* 80129FB8 00126F18  7C 80 18 96 */	mulhw r4, r0, r3
/* 80129FBC 00126F1C  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80129FC0 00126F20  7C 04 02 14 */	add r0, r4, r0
/* 80129FC4 00126F24  1C 00 00 06 */	mulli r0, r0, 6
/* 80129FC8 00126F28  7C 00 18 50 */	subf r0, r0, r3
/* 80129FCC 00126F2C  7F 83 E3 78 */	mr r3, r28
/* 80129FD0 00126F30  90 1C 07 5C */	stw r0, 0x75c(r28)
/* 80129FD4 00126F34  4B F2 98 E9 */	bl GetMaterialFilter__6CActorCFv
/* 80129FD8 00126F38  83 63 00 00 */	lwz r27, 0(r3)
/* 80129FDC 00126F3C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80129FE0 00126F40  7F 83 E3 78 */	mr r3, r28
/* 80129FE4 00126F44  4B F2 98 D9 */	bl GetMaterialFilter__6CActorCFv
/* 80129FE8 00126F48  80 AD 8A 9C */	lwz r5, lbl_805A765C@sda21(r13)
/* 80129FEC 00126F4C  38 80 00 01 */	li r4, 1
/* 80129FF0 00126F50  83 C3 00 08 */	lwz r30, 8(r3)
/* 80129FF4 00126F54  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80129FF8 00126F58  38 60 00 00 */	li r3, 0
/* 80129FFC 00126F5C  48 25 FE F9 */	bl __shl2i
/* 8012A000 00126F60  7C 85 20 F8 */	nor r5, r4, r4
/* 8012A004 00126F64  7C 60 18 F8 */	nor r0, r3, r3
/* 8012A008 00126F68  7F FF 23 78 */	or r31, r31, r4
/* 8012A00C 00126F6C  7F DE 1B 78 */	or r30, r30, r3
/* 8012A010 00126F70  7F BD 28 38 */	and r29, r29, r5
/* 8012A014 00126F74  7F 7B 00 38 */	and r27, r27, r0
/* 8012A018 00126F78  38 00 00 03 */	li r0, 3
/* 8012A01C 00126F7C  93 A1 00 6C */	stw r29, 0x6c(r1)
/* 8012A020 00126F80  7F 83 E3 78 */	mr r3, r28
/* 8012A024 00126F84  38 81 00 68 */	addi r4, r1, 0x68
/* 8012A028 00126F88  93 61 00 68 */	stw r27, 0x68(r1)
/* 8012A02C 00126F8C  93 E1 00 74 */	stw r31, 0x74(r1)
/* 8012A030 00126F90  93 C1 00 70 */	stw r30, 0x70(r1)
/* 8012A034 00126F94  90 01 00 78 */	stw r0, 0x78(r1)
/* 8012A038 00126F98  4B F2 98 69 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8012A03C 00126F9C  48 00 02 A8 */	b lbl_8012A2E4
.global lbl_8012A040
lbl_8012A040:
/* 8012A040 00126FA0  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 8012A044 00126FA4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012A048 00126FA8  41 82 02 9C */	beq lbl_8012A2E4
/* 8012A04C 00126FAC  88 1C 06 36 */	lbz r0, 0x636(r28)
/* 8012A050 00126FB0  38 60 00 01 */	li r3, 1
/* 8012A054 00126FB4  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8012A058 00126FB8  98 1C 06 36 */	stb r0, 0x636(r28)
/* 8012A05C 00126FBC  48 00 02 88 */	b lbl_8012A2E4
.global lbl_8012A060
lbl_8012A060:
/* 8012A060 00126FC0  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8012A064 00126FC4  88 03 03 00 */	lbz r0, 0x300(r3)
/* 8012A068 00126FC8  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8012A06C 00126FCC  40 82 00 48 */	bne lbl_8012A0B4
/* 8012A070 00126FD0  7F 83 E3 78 */	mr r3, r28
/* 8012A074 00126FD4  C3 FC 00 E8 */	lfs f31, 0xe8(r28)
/* 8012A078 00126FD8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8012A07C 00126FDC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 8012A080 00126FE0  7D 89 03 A6 */	mtctr r12
/* 8012A084 00126FE4  4E 80 04 21 */	bctrl
/* 8012A088 00126FE8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 8012A08C 00126FEC  EC 41 07 F2 */	fmuls f2, f1, f31
/* 8012A090 00126FF0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8012A094 00126FF4  41 82 00 0C */	beq lbl_8012A0A0
/* 8012A098 00126FF8  C0 02 98 24 */	lfs f0, lbl_805AB544@sda21(r2)
/* 8012A09C 00126FFC  EC 42 00 32 */	fmuls f2, f2, f0
lbl_8012A0A0:
/* 8012A0A0 00127000  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012A0A4 00127004  FC 00 10 50 */	fneg f0, f2
/* 8012A0A8 00127008  D0 3C 01 50 */	stfs f1, 0x150(r28)
/* 8012A0AC 0012700C  D0 3C 01 54 */	stfs f1, 0x154(r28)
/* 8012A0B0 00127010  D0 1C 01 58 */	stfs f0, 0x158(r28)
lbl_8012A0B4:
/* 8012A0B4 00127014  80 7C 04 50 */	lwz r3, 0x450(r28)
/* 8012A0B8 00127018  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8012A0BC 0012701C  2C 00 00 03 */	cmpwi r0, 3
/* 8012A0C0 00127020  40 82 00 24 */	bne lbl_8012A0E4
/* 8012A0C4 00127024  C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 8012A0C8 00127028  7F 83 E3 78 */	mr r3, r28
/* 8012A0CC 0012702C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012A0D0 00127030  38 81 00 58 */	addi r4, r1, 0x58
/* 8012A0D4 00127034  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8012A0D8 00127038  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8012A0DC 0012703C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8012A0E0 00127040  4B FF 0B C1 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
lbl_8012A0E4:
/* 8012A0E4 00127044  38 00 00 03 */	li r0, 3
/* 8012A0E8 00127048  90 1C 07 C4 */	stw r0, 0x7c4(r28)
/* 8012A0EC 0012704C  48 00 01 F8 */	b lbl_8012A2E4
.global lbl_8012A0F0
lbl_8012A0F0:
/* 8012A0F0 00127050  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8012A0F4 00127054  7F 83 E3 78 */	mr r3, r28
/* 8012A0F8 00127058  7F E6 FB 78 */	mr r6, r31
/* 8012A0FC 0012705C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8012A100 00127060  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8012A104 00127064  38 80 00 1A */	li r4, 0x1a
/* 8012A108 00127068  4B F5 2A 71 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8012A10C 0012706C  7F 83 E3 78 */	mr r3, r28
/* 8012A110 00127070  C3 FC 00 E8 */	lfs f31, 0xe8(r28)
/* 8012A114 00127074  81 9C 00 00 */	lwz r12, 0(r28)
/* 8012A118 00127078  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 8012A11C 0012707C  7D 89 03 A6 */	mtctr r12
/* 8012A120 00127080  4E 80 04 21 */	bctrl
/* 8012A124 00127084  FC 20 08 50 */	fneg f1, f1
/* 8012A128 00127088  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012A12C 0012708C  7F 83 E3 78 */	mr r3, r28
/* 8012A130 00127090  D0 1C 01 50 */	stfs f0, 0x150(r28)
/* 8012A134 00127094  EC 21 07 F2 */	fmuls f1, f1, f31
/* 8012A138 00127098  D0 1C 01 54 */	stfs f0, 0x154(r28)
/* 8012A13C 0012709C  D0 3C 01 58 */	stfs f1, 0x158(r28)
/* 8012A140 001270A0  4B FF F7 1D */	bl SetVelocityForJump__12CSpacePirateFv
/* 8012A144 001270A4  48 00 01 A0 */	b lbl_8012A2E4
.global lbl_8012A148
lbl_8012A148:
/* 8012A148 001270A8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 8012A14C 001270AC  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8012A150 001270B0  40 82 00 10 */	bne lbl_8012A160
/* 8012A154 001270B4  38 00 00 01 */	li r0, 1
/* 8012A158 001270B8  90 1C 07 C4 */	stw r0, 0x7c4(r28)
/* 8012A15C 001270BC  48 00 00 0C */	b lbl_8012A168
lbl_8012A160:
/* 8012A160 001270C0  38 00 00 04 */	li r0, 4
/* 8012A164 001270C4  90 1C 07 C4 */	stw r0, 0x7c4(r28)
lbl_8012A168:
/* 8012A168 001270C8  88 1C 06 37 */	lbz r0, 0x637(r28)
/* 8012A16C 001270CC  38 60 00 00 */	li r3, 0
/* 8012A170 001270D0  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8012A174 001270D4  98 1C 06 37 */	stb r0, 0x637(r28)
/* 8012A178 001270D8  88 1C 06 35 */	lbz r0, 0x635(r28)
/* 8012A17C 001270DC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8012A180 001270E0  41 82 01 64 */	beq lbl_8012A2E4
/* 8012A184 001270E4  C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 8012A188 001270E8  C0 02 98 68 */	lfs f0, lbl_805AB588@sda21(r2)
/* 8012A18C 001270EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012A190 001270F0  40 80 01 54 */	bge lbl_8012A2E4
/* 8012A194 001270F4  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 8012A198 001270F8  38 9C 08 A8 */	addi r4, r28, 0x8a8
/* 8012A19C 001270FC  C0 42 98 6C */	lfs f2, lbl_805AB58C@sda21(r2)
/* 8012A1A0 00127100  38 6D 8A A0 */	addi r3, r13, lbl_805A7660@sda21
/* 8012A1A4 00127104  D0 1C 03 E8 */	stfs f0, 0x3e8(r28)
/* 8012A1A8 00127108  38 AD 8A A4 */	addi r5, r13, lbl_805A7664@sda21
/* 8012A1AC 0012710C  C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 8012A1B0 00127110  C0 1C 08 A8 */	lfs f0, 0x8a8(r28)
/* 8012A1B4 00127114  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8012A1B8 00127118  D0 1C 08 A8 */	stfs f0, 0x8a8(r28)
/* 8012A1BC 0012711C  4B EE 20 F9 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 8012A1C0 00127120  C0 23 00 00 */	lfs f1, 0(r3)
/* 8012A1C4 00127124  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 8012A1C8 00127128  D0 3C 08 A8 */	stfs f1, 0x8a8(r28)
/* 8012A1CC 0012712C  D0 1C 08 BC */	stfs f0, 0x8bc(r28)
/* 8012A1D0 00127130  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 8012A1D4 00127134  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8012A1D8 00127138  41 82 01 0C */	beq lbl_8012A2E4
/* 8012A1DC 0012713C  80 7F 08 84 */	lwz r3, 0x884(r31)
/* 8012A1E0 00127140  7F 84 E3 78 */	mr r4, r28
/* 8012A1E4 00127144  48 0B AF ED */	bl LoadAndStartElectric__20CActorModelParticlesFR6CActor
/* 8012A1E8 00127148  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 8012A1EC 0012714C  C0 1C 08 A8 */	lfs f0, 0x8a8(r28)
/* 8012A1F0 00127150  EC 01 00 2A */	fadds f0, f1, f0
/* 8012A1F4 00127154  D0 1C 08 AC */	stfs f0, 0x8ac(r28)
/* 8012A1F8 00127158  48 00 00 EC */	b lbl_8012A2E4
.global lbl_8012A1FC
lbl_8012A1FC:
/* 8012A1FC 0012715C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8012A200 00127160  7F E3 FB 78 */	mr r3, r31
/* 8012A204 00127164  38 81 00 1C */	addi r4, r1, 0x1c
/* 8012A208 00127168  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8012A20C 0012716C  4B F2 23 69 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8012A210 00127170  7C 64 1B 78 */	mr r4, r3
/* 8012A214 00127174  38 61 00 48 */	addi r3, r1, 0x48
/* 8012A218 00127178  4B F7 D6 71 */	bl "__ct__35TCastToPtr<21CScriptTargetingPoint>FP7CEntity"
/* 8012A21C 0012717C  80 63 00 04 */	lwz r3, 4(r3)
/* 8012A220 00127180  28 03 00 00 */	cmplwi r3, 0
/* 8012A224 00127184  41 82 00 C0 */	beq lbl_8012A2E4
/* 8012A228 00127188  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8012A22C 0012718C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012A230 00127190  41 82 00 34 */	beq lbl_8012A264
/* 8012A234 00127194  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8012A238 00127198  38 7C 07 64 */	addi r3, r28, 0x764
/* 8012A23C 0012719C  38 81 00 18 */	addi r4, r1, 0x18
/* 8012A240 001271A0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8012A244 001271A4  48 04 AF D5 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8012A248 001271A8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8012A24C 001271AC  38 60 00 01 */	li r3, 1
/* 8012A250 001271B0  B0 1C 07 C0 */	sth r0, 0x7c0(r28)
/* 8012A254 001271B4  88 1C 04 00 */	lbz r0, 0x400(r28)
/* 8012A258 001271B8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8012A25C 001271BC  98 1C 04 00 */	stb r0, 0x400(r28)
/* 8012A260 001271C0  48 00 00 2C */	b lbl_8012A28C
lbl_8012A264:
/* 8012A264 001271C4  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8012A268 001271C8  38 7C 07 64 */	addi r3, r28, 0x764
/* 8012A26C 001271CC  38 81 00 14 */	addi r4, r1, 0x14
/* 8012A270 001271D0  A0 05 00 08 */	lhz r0, 8(r5)
/* 8012A274 001271D4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8012A278 001271D8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8012A27C 001271DC  48 04 AF 9D */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8012A280 001271E0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8012A284 001271E4  A0 03 00 08 */	lhz r0, 8(r3)
/* 8012A288 001271E8  B0 1C 07 C0 */	sth r0, 0x7c0(r28)
lbl_8012A28C:
/* 8012A28C 001271EC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012A290 001271F0  D0 1C 07 BC */	stfs f0, 0x7bc(r28)
/* 8012A294 001271F4  48 00 00 50 */	b lbl_8012A2E4
.global lbl_8012A298
lbl_8012A298:
/* 8012A298 001271F8  7F 83 E3 78 */	mr r3, r28
/* 8012A29C 001271FC  7F E4 FB 78 */	mr r4, r31
/* 8012A2A0 00127200  4B FF F3 E9 */	bl SquadRemove__12CSpacePirateFR13CStateManager
/* 8012A2A4 00127204  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8012A2A8 00127208  3C 60 80 57 */	lis r3, lbl_8056F85C@ha
/* 8012A2AC 0012720C  38 63 F8 5C */	addi r3, r3, lbl_8056F85C@l
/* 8012A2B0 00127210  38 81 00 0C */	addi r4, r1, 0xc
/* 8012A2B4 00127214  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8012A2B8 00127218  4B FF BA D1 */	bl "remove__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRC9TUniqueId"
/* 8012A2BC 0012721C  48 00 00 28 */	b lbl_8012A2E4
.global lbl_8012A2C0
lbl_8012A2C0:
/* 8012A2C0 00127220  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 8012A2C4 00127224  38 60 00 00 */	li r3, 0
/* 8012A2C8 00127228  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8012A2CC 0012722C  98 1C 06 39 */	stb r0, 0x639(r28)
/* 8012A2D0 00127230  48 00 00 14 */	b lbl_8012A2E4
.global lbl_8012A2D4
lbl_8012A2D4:
/* 8012A2D4 00127234  88 1C 06 39 */	lbz r0, 0x639(r28)
/* 8012A2D8 00127238  38 60 00 01 */	li r3, 1
/* 8012A2DC 0012723C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8012A2E0 00127240  98 1C 06 39 */	stb r0, 0x639(r28)
.global lbl_8012A2E4
lbl_8012A2E4:
/* 8012A2E4 00127244  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8012A2E8 00127248  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8012A2EC 0012724C  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 8012A2F0 00127250  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8012A2F4 00127254  7C 08 03 A6 */	mtlr r0
/* 8012A2F8 00127258  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8012A2FC 0012725C  4E 80 00 20 */	blr

.global IsInAir__10CBodyStateCFRC15CBodyController
IsInAir__10CBodyStateCFRC15CBodyController:
/* 8012A300 00127260  38 60 00 00 */	li r3, 0
/* 8012A304 00127264  4E 80 00 20 */	blr

.global ApplyGravity__10CBodyStateCFv
ApplyGravity__10CBodyStateCFv:
/* 8012A308 00127268  38 60 00 01 */	li r3, 1
/* 8012A30C 0012726C  4E 80 00 20 */	blr

.global Accept__12CSpacePirateFR8IVisitor
Accept__12CSpacePirateFR8IVisitor:
/* 8012A310 00127270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012A314 00127274  7C 08 02 A6 */	mflr r0
/* 8012A318 00127278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A31C 0012727C  7C 60 1B 78 */	mr r0, r3
/* 8012A320 00127280  7C 83 23 78 */	mr r3, r4
/* 8012A324 00127284  81 84 00 00 */	lwz r12, 0(r4)
/* 8012A328 00127288  7C 04 03 78 */	mr r4, r0
/* 8012A32C 0012728C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8012A330 00127290  7D 89 03 A6 */	mtctr r12
/* 8012A334 00127294  4E 80 04 21 */	bctrl
/* 8012A338 00127298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A33C 0012729C  7C 08 03 A6 */	mtlr r0
/* 8012A340 001272A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A344 001272A4  4E 80 00 20 */	blr

.global "__ct__12CSpacePirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoiififfUiUiRC11CDamageInfoUsRC11CDamageInfoiUi11CDamageInfoiUsffUsfi"
"__ct__12CSpacePirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC16CActorParametersRC14CPatternedInfoiififfUiUiRC11CDamageInfoUsRC11CDamageInfoiUi11CDamageInfoiUsffUsfi":
/* 8012A348 001272A8  94 21 FD 80 */	stwu r1, -0x280(r1)
/* 8012A34C 001272AC  7C 08 02 A6 */	mflr r0
/* 8012A350 001272B0  7C CC 33 78 */	mr r12, r6
/* 8012A354 001272B4  7C EB 3B 78 */	mr r11, r7
/* 8012A358 001272B8  90 01 02 84 */	stw r0, 0x284(r1)
/* 8012A35C 001272BC  7C A6 2B 78 */	mr r6, r5
/* 8012A360 001272C0  38 A1 00 34 */	addi r5, r1, 0x34
/* 8012A364 001272C4  38 E0 00 00 */	li r7, 0
/* 8012A368 001272C8  93 E1 02 7C */	stw r31, 0x27c(r1)
/* 8012A36C 001272CC  83 E1 02 8C */	lwz r31, 0x28c(r1)
/* 8012A370 001272D0  93 C1 02 78 */	stw r30, 0x278(r1)
/* 8012A374 001272D4  7D 5E 53 78 */	mr r30, r10
/* 8012A378 001272D8  7D 0A 43 78 */	mr r10, r8
/* 8012A37C 001272DC  7D 88 63 78 */	mr r8, r12
/* 8012A380 001272E0  93 A1 02 74 */	stw r29, 0x274(r1)
/* 8012A384 001272E4  7C 7D 1B 78 */	mr r29, r3
/* 8012A388 001272E8  93 81 02 70 */	stw r28, 0x270(r1)
/* 8012A38C 001272EC  83 81 02 88 */	lwz r28, 0x288(r1)
/* 8012A390 001272F0  A0 04 00 00 */	lhz r0, 0(r4)
/* 8012A394 001272F4  38 80 00 00 */	li r4, 0
/* 8012A398 001272F8  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8012A39C 001272FC  38 00 00 01 */	li r0, 1
/* 8012A3A0 00127300  93 C1 00 08 */	stw r30, 8(r1)
/* 8012A3A4 00127304  90 81 00 0C */	stw r4, 0xc(r1)
/* 8012A3A8 00127308  38 80 00 22 */	li r4, 0x22
/* 8012A3AC 0012730C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012A3B0 00127310  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A3B4 00127314  91 21 00 18 */	stw r9, 0x18(r1)
/* 8012A3B8 00127318  7D 69 5B 78 */	mr r9, r11
/* 8012A3BC 0012731C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012A3C0 00127320  4B F5 30 91 */	bl "__ct__10CPatternedFQ210CPatterned10ECharacter9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParameters17EKnockBackVariant"
/* 8012A3C4 00127324  3C 60 80 3E */	lis r3, lbl_803E0800@ha
/* 8012A3C8 00127328  7F 84 E3 78 */	mr r4, r28
/* 8012A3CC 0012732C  38 03 08 00 */	addi r0, r3, lbl_803E0800@l
/* 8012A3D0 00127330  7F E5 FB 78 */	mr r5, r31
/* 8012A3D4 00127334  90 1D 00 00 */	stw r0, 0(r29)
/* 8012A3D8 00127338  38 7D 05 68 */	addi r3, r29, 0x568
/* 8012A3DC 0012733C  48 00 0C 79 */	bl __ct__Q212CSpacePirate16CSpacePirateDataFR12CInputStreamUi
/* 8012A3E0 00127340  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A3E4 00127344  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A3E8 00127348  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8012A3EC 0012734C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A3F0 00127350  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A3F4 00127354  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A3F8 00127358  50 60 2E 72 */	rlwimi r0, r3, 5, 0x19, 0x19
/* 8012A3FC 0012735C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A400 00127360  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A404 00127364  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A408 00127368  50 60 1E B4 */	rlwimi r0, r3, 3, 0x1a, 0x1a
/* 8012A40C 0012736C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A410 00127370  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A414 00127374  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A418 00127378  50 60 0E F6 */	rlwimi r0, r3, 1, 0x1b, 0x1b
/* 8012A41C 0012737C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A420 00127380  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A424 00127384  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A428 00127388  50 60 FF 38 */	rlwimi r0, r3, 0x1f, 0x1c, 0x1c
/* 8012A42C 0012738C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A430 00127390  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A434 00127394  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A438 00127398  50 60 EF 7A */	rlwimi r0, r3, 0x1d, 0x1d, 0x1d
/* 8012A43C 0012739C  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A440 001273A0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A444 001273A4  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A448 001273A8  50 60 DF BC */	rlwimi r0, r3, 0x1b, 0x1e, 0x1e
/* 8012A44C 001273AC  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A450 001273B0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A454 001273B4  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A458 001273B8  50 60 CF FE */	rlwimi r0, r3, 0x19, 0x1f, 0x1f
/* 8012A45C 001273BC  98 1D 06 34 */	stb r0, 0x634(r29)
/* 8012A460 001273C0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A464 001273C4  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8012A468 001273C8  50 60 F6 30 */	rlwimi r0, r3, 0x1e, 0x18, 0x18
/* 8012A46C 001273CC  98 1D 06 35 */	stb r0, 0x635(r29)
/* 8012A470 001273D0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A474 001273D4  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8012A478 001273D8  50 60 E6 72 */	rlwimi r0, r3, 0x1c, 0x19, 0x19
/* 8012A47C 001273DC  98 1D 06 35 */	stb r0, 0x635(r29)
/* 8012A480 001273E0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A484 001273E4  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8012A488 001273E8  50 60 CE B4 */	rlwimi r0, r3, 0x19, 0x1a, 0x1a
/* 8012A48C 001273EC  98 1D 06 35 */	stb r0, 0x635(r29)
/* 8012A490 001273F0  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A494 001273F4  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8012A498 001273F8  50 60 BE F6 */	rlwimi r0, r3, 0x17, 0x1b, 0x1b
/* 8012A49C 001273FC  98 1D 06 35 */	stb r0, 0x635(r29)
/* 8012A4A0 00127400  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 8012A4A4 00127404  88 1D 06 35 */	lbz r0, 0x635(r29)
/* 8012A4A8 00127408  50 60 AF 38 */	rlwimi r0, r3, 0x15, 0x1c, 0x1c
/* 8012A4AC 0012740C  98 1D 06 35 */	stb r0, 0x635(r29)
/* 8012A4B0 00127410  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 8012A4B4 00127414  38 00 00 00 */	li r0, 0
/* 8012A4B8 00127418  88 7D 06 35 */	lbz r3, 0x635(r29)
/* 8012A4BC 0012741C  50 83 9F 7A */	rlwimi r3, r4, 0x13, 0x1d, 0x1d
/* 8012A4C0 00127420  98 7D 06 35 */	stb r3, 0x635(r29)
/* 8012A4C4 00127424  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 8012A4C8 00127428  88 7D 06 35 */	lbz r3, 0x635(r29)
/* 8012A4CC 0012742C  50 83 8F BC */	rlwimi r3, r4, 0x11, 0x1e, 0x1e
/* 8012A4D0 00127430  98 7D 06 35 */	stb r3, 0x635(r29)
/* 8012A4D4 00127434  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 8012A4D8 00127438  88 7D 06 35 */	lbz r3, 0x635(r29)
/* 8012A4DC 0012743C  50 83 7F FE */	rlwimi r3, r4, 0xf, 0x1f, 0x1f
/* 8012A4E0 00127440  98 7D 06 35 */	stb r3, 0x635(r29)
/* 8012A4E4 00127444  80 9D 05 80 */	lwz r4, 0x580(r29)
/* 8012A4E8 00127448  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A4EC 0012744C  50 83 AE 30 */	rlwimi r3, r4, 0x15, 0x18, 0x18
/* 8012A4F0 00127450  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A4F4 00127454  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A4F8 00127458  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 8012A4FC 0012745C  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A500 00127460  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A504 00127464  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 8012A508 00127468  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A50C 0012746C  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A510 00127470  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8012A514 00127474  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A518 00127478  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A51C 0012747C  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 8012A520 00127480  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A524 00127484  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A528 00127488  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 8012A52C 0012748C  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A530 00127490  88 7D 06 36 */	lbz r3, 0x636(r29)
/* 8012A534 00127494  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 8012A538 00127498  98 7D 06 36 */	stb r3, 0x636(r29)
/* 8012A53C 0012749C  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A540 001274A0  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 8012A544 001274A4  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A548 001274A8  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A54C 001274AC  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 8012A550 001274B0  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A554 001274B4  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A558 001274B8  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 8012A55C 001274BC  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A560 001274C0  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A564 001274C4  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8012A568 001274C8  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A56C 001274CC  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A570 001274D0  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 8012A574 001274D4  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A578 001274D8  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A57C 001274DC  50 03 17 7A */	rlwimi r3, r0, 2, 0x1d, 0x1d
/* 8012A580 001274E0  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A584 001274E4  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A588 001274E8  50 03 0F BC */	rlwimi r3, r0, 1, 0x1e, 0x1e
/* 8012A58C 001274EC  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A590 001274F0  88 7D 06 37 */	lbz r3, 0x637(r29)
/* 8012A594 001274F4  50 03 07 FE */	rlwimi r3, r0, 0, 0x1f, 0x1f
/* 8012A598 001274F8  98 7D 06 37 */	stb r3, 0x637(r29)
/* 8012A59C 001274FC  88 7D 06 38 */	lbz r3, 0x638(r29)
/* 8012A5A0 00127500  50 03 3E 30 */	rlwimi r3, r0, 7, 0x18, 0x18
/* 8012A5A4 00127504  98 7D 06 38 */	stb r3, 0x638(r29)
/* 8012A5A8 00127508  88 7D 06 38 */	lbz r3, 0x638(r29)
/* 8012A5AC 0012750C  50 03 36 72 */	rlwimi r3, r0, 6, 0x19, 0x19
/* 8012A5B0 00127510  98 7D 06 38 */	stb r3, 0x638(r29)
/* 8012A5B4 00127514  88 7D 06 38 */	lbz r3, 0x638(r29)
/* 8012A5B8 00127518  50 03 2E B4 */	rlwimi r3, r0, 5, 0x1a, 0x1a
/* 8012A5BC 0012751C  98 7D 06 38 */	stb r3, 0x638(r29)
/* 8012A5C0 00127520  88 7D 06 38 */	lbz r3, 0x638(r29)
/* 8012A5C4 00127524  50 03 26 F6 */	rlwimi r3, r0, 4, 0x1b, 0x1b
/* 8012A5C8 00127528  98 7D 06 38 */	stb r3, 0x638(r29)
/* 8012A5CC 0012752C  88 7D 06 38 */	lbz r3, 0x638(r29)
/* 8012A5D0 00127530  50 03 1F 38 */	rlwimi r3, r0, 3, 0x1c, 0x1c
/* 8012A5D4 00127534  3C 80 80 5A */	lis r4, sForwardVector__9CVector3f@ha
/* 8012A5D8 00127538  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 8012A5DC 0012753C  98 7D 06 38 */	stb r3, 0x638(r29)
/* 8012A5E0 00127540  38 C4 67 24 */	addi r6, r4, sForwardVector__9CVector3f@l
/* 8012A5E4 00127544  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012A5E8 00127548  FC 40 08 90 */	fmr f2, f1
/* 8012A5EC 0012754C  88 9D 06 38 */	lbz r4, 0x638(r29)
/* 8012A5F0 00127550  50 04 17 7A */	rlwimi r4, r0, 2, 0x1d, 0x1d
/* 8012A5F4 00127554  3B E3 66 A0 */	addi r31, r3, sZeroVector__9CVector3f@l
/* 8012A5F8 00127558  38 7D 06 60 */	addi r3, r29, 0x660
/* 8012A5FC 0012755C  98 9D 06 38 */	stb r4, 0x638(r29)
/* 8012A600 00127560  38 80 00 00 */	li r4, 0
/* 8012A604 00127564  38 A0 00 01 */	li r5, 1
/* 8012A608 00127568  88 FD 06 38 */	lbz r7, 0x638(r29)
/* 8012A60C 0012756C  50 07 0F BC */	rlwimi r7, r0, 1, 0x1e, 0x1e
/* 8012A610 00127570  98 FD 06 38 */	stb r7, 0x638(r29)
/* 8012A614 00127574  88 FD 06 38 */	lbz r7, 0x638(r29)
/* 8012A618 00127578  50 07 07 FE */	rlwimi r7, r0, 0, 0x1f, 0x1f
/* 8012A61C 0012757C  98 FD 06 38 */	stb r7, 0x638(r29)
/* 8012A620 00127580  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A624 00127584  50 07 3E 30 */	rlwimi r7, r0, 7, 0x18, 0x18
/* 8012A628 00127588  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A62C 0012758C  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A630 00127590  50 07 36 72 */	rlwimi r7, r0, 6, 0x19, 0x19
/* 8012A634 00127594  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A638 00127598  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A63C 0012759C  50 07 2E B4 */	rlwimi r7, r0, 5, 0x1a, 0x1a
/* 8012A640 001275A0  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A644 001275A4  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A648 001275A8  50 07 26 F6 */	rlwimi r7, r0, 4, 0x1b, 0x1b
/* 8012A64C 001275AC  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A650 001275B0  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A654 001275B4  50 07 1F 38 */	rlwimi r7, r0, 3, 0x1c, 0x1c
/* 8012A658 001275B8  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A65C 001275BC  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A660 001275C0  50 07 0F BC */	rlwimi r7, r0, 1, 0x1e, 0x1e
/* 8012A664 001275C4  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A668 001275C8  88 FD 06 39 */	lbz r7, 0x639(r29)
/* 8012A66C 001275CC  50 07 07 FE */	rlwimi r7, r0, 0, 0x1f, 0x1f
/* 8012A670 001275D0  98 FD 06 39 */	stb r7, 0x639(r29)
/* 8012A674 001275D4  88 FD 06 3A */	lbz r7, 0x63a(r29)
/* 8012A678 001275D8  50 07 3E 30 */	rlwimi r7, r0, 7, 0x18, 0x18
/* 8012A67C 001275DC  98 FD 06 3A */	stb r7, 0x63a(r29)
/* 8012A680 001275E0  90 1D 06 3C */	stw r0, 0x63c(r29)
/* 8012A684 001275E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012A688 001275E8  B0 1D 06 40 */	sth r0, 0x640(r29)
/* 8012A68C 001275EC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012A690 001275F0  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 8012A694 001275F4  D0 3D 06 44 */	stfs f1, 0x644(r29)
/* 8012A698 001275F8  C0 06 00 00 */	lfs f0, 0(r6)
/* 8012A69C 001275FC  D0 1D 06 48 */	stfs f0, 0x648(r29)
/* 8012A6A0 00127600  C0 06 00 04 */	lfs f0, 4(r6)
/* 8012A6A4 00127604  D0 1D 06 4C */	stfs f0, 0x64c(r29)
/* 8012A6A8 00127608  C0 06 00 08 */	lfs f0, 8(r6)
/* 8012A6AC 0012760C  D0 1D 06 50 */	stfs f0, 0x650(r29)
/* 8012A6B0 00127610  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8012A6B4 00127614  D0 1D 06 54 */	stfs f0, 0x654(r29)
/* 8012A6B8 00127618  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8012A6BC 0012761C  D0 1D 06 58 */	stfs f0, 0x658(r29)
/* 8012A6C0 00127620  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8012A6C4 00127624  D0 1D 06 5C */	stfs f0, 0x65c(r29)
/* 8012A6C8 00127628  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 8012A6CC 0012762C  48 09 E6 C9 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 8012A6D0 00127630  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012A6D4 00127634  3C 60 80 3D */	lis r3, lbl_803CFF70@ha
/* 8012A6D8 00127638  38 83 FF 70 */	addi r4, r3, lbl_803CFF70@l
/* 8012A6DC 0012763C  38 C0 00 00 */	li r6, 0
/* 8012A6E0 00127640  D0 3D 07 48 */	stfs f1, 0x748(r29)
/* 8012A6E4 00127644  38 A0 00 FF */	li r5, 0xff
/* 8012A6E8 00127648  38 00 FF FF */	li r0, -1
/* 8012A6EC 0012764C  38 61 01 88 */	addi r3, r1, 0x188
/* 8012A6F0 00127650  90 DD 07 4C */	stw r6, 0x74c(r29)
/* 8012A6F4 00127654  38 84 00 1A */	addi r4, r4, 0x1a
/* 8012A6F8 00127658  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8012A6FC 0012765C  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 8012A700 00127660  D0 3D 07 54 */	stfs f1, 0x754(r29)
/* 8012A704 00127664  98 BD 07 58 */	stb r5, 0x758(r29)
/* 8012A708 00127668  90 DD 07 5C */	stw r6, 0x75c(r29)
/* 8012A70C 0012766C  90 1D 07 60 */	stw r0, 0x760(r29)
/* 8012A710 00127670  4B ED A5 A9 */	bl string_l__4rstlFPCc
/* 8012A714 00127674  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 8012A718 00127678  38 7D 07 64 */	addi r3, r29, 0x764
/* 8012A71C 0012767C  C0 22 98 70 */	lfs f1, lbl_805AB590@sda21(r2)
/* 8012A720 00127680  38 A1 01 88 */	addi r5, r1, 0x188
/* 8012A724 00127684  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8012A728 00127688  38 C0 00 00 */	li r6, 0
/* 8012A72C 0012768C  C0 42 98 74 */	lfs f2, lbl_805AB594@sda21(r2)
/* 8012A730 00127690  48 04 B2 89 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 8012A734 00127694  38 61 01 88 */	addi r3, r1, 0x188
/* 8012A738 00127698  48 21 33 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A73C 0012769C  38 00 FF FF */	li r0, -1
/* 8012A740 001276A0  3C 60 80 3E */	lis r3, lbl_803E0700@ha
/* 8012A744 001276A4  90 1D 07 9C */	stw r0, 0x79c(r29)
/* 8012A748 001276A8  38 83 07 00 */	addi r4, r3, lbl_803E0700@l
/* 8012A74C 001276AC  C0 42 97 D8 */	lfs f2, lbl_805AB4F8@sda21(r2)
/* 8012A750 001276B0  38 A0 00 00 */	li r5, 0
/* 8012A754 001276B4  C0 22 97 DC */	lfs f1, lbl_805AB4FC@sda21(r2)
/* 8012A758 001276B8  38 00 00 FF */	li r0, 0xff
/* 8012A75C 001276BC  D0 5D 07 A4 */	stfs f2, 0x7a4(r29)
/* 8012A760 001276C0  38 7D 07 C4 */	addi r3, r29, 0x7c4
/* 8012A764 001276C4  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012A768 001276C8  D0 3D 07 A8 */	stfs f1, 0x7a8(r29)
/* 8012A76C 001276CC  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 8012A770 001276D0  90 BD 07 B0 */	stw r5, 0x7b0(r29)
/* 8012A774 001276D4  A0 AD A3 8C */	lhz r5, kInvalidUniqueId@sda21(r13)
/* 8012A778 001276D8  B0 BD 07 B4 */	sth r5, 0x7b4(r29)
/* 8012A77C 001276DC  98 1D 07 B6 */	stb r0, 0x7b6(r29)
/* 8012A780 001276E0  98 1D 07 B7 */	stb r0, 0x7b7(r29)
/* 8012A784 001276E4  98 1D 07 B8 */	stb r0, 0x7b8(r29)
/* 8012A788 001276E8  98 1D 07 B9 */	stb r0, 0x7b9(r29)
/* 8012A78C 001276EC  D0 5D 07 BC */	stfs f2, 0x7bc(r29)
/* 8012A790 001276F0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012A794 001276F4  B0 1D 07 C0 */	sth r0, 0x7c0(r29)
/* 8012A798 001276F8  80 BD 06 14 */	lwz r5, 0x614(r29)
/* 8012A79C 001276FC  48 08 2D 69 */	bl __ct__10CBurstFireFPPC6SBursti
/* 8012A7A0 00127700  C0 62 98 24 */	lfs f3, lbl_805AB544@sda21(r2)
/* 8012A7A4 00127704  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012A7A8 00127708  38 83 66 A0 */	addi r4, r3, sZeroVector__9CVector3f@l
/* 8012A7AC 0012770C  38 A0 FF FF */	li r5, -1
/* 8012A7B0 00127710  D0 7D 08 24 */	stfs f3, 0x824(r29)
/* 8012A7B4 00127714  38 00 00 00 */	li r0, 0
/* 8012A7B8 00127718  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012A7BC 0012771C  38 7D 08 60 */	addi r3, r29, 0x860
/* 8012A7C0 00127720  C0 44 00 00 */	lfs f2, 0(r4)
/* 8012A7C4 00127724  C0 02 98 10 */	lfs f0, lbl_805AB530@sda21(r2)
/* 8012A7C8 00127728  D0 5D 08 28 */	stfs f2, 0x828(r29)
/* 8012A7CC 0012772C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8012A7D0 00127730  D0 5D 08 2C */	stfs f2, 0x82c(r29)
/* 8012A7D4 00127734  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8012A7D8 00127738  D0 5D 08 30 */	stfs f2, 0x830(r29)
/* 8012A7DC 0012773C  90 BD 08 34 */	stw r5, 0x834(r29)
/* 8012A7E0 00127740  D0 3D 08 38 */	stfs f1, 0x838(r29)
/* 8012A7E4 00127744  90 BD 08 3C */	stw r5, 0x83c(r29)
/* 8012A7E8 00127748  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 8012A7EC 0012774C  B0 9D 08 40 */	sth r4, 0x840(r29)
/* 8012A7F0 00127750  90 BD 08 44 */	stw r5, 0x844(r29)
/* 8012A7F4 00127754  D0 7D 08 48 */	stfs f3, 0x848(r29)
/* 8012A7F8 00127758  D0 7D 08 4C */	stfs f3, 0x84c(r29)
/* 8012A7FC 0012775C  D0 1D 08 50 */	stfs f0, 0x850(r29)
/* 8012A800 00127760  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 8012A804 00127764  D0 3D 08 58 */	stfs f1, 0x858(r29)
/* 8012A808 00127768  90 1D 08 5C */	stw r0, 0x85c(r29)
/* 8012A80C 0012776C  48 00 07 91 */	bl __ct__8CIkChainFv
/* 8012A810 00127770  C0 22 97 BC */	lfs f1, lbl_805AB4DC@sda21(r2)
/* 8012A814 00127774  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 8012A818 00127778  D0 3D 08 A8 */	stfs f1, 0x8a8(r29)
/* 8012A81C 0012777C  D0 3D 08 AC */	stfs f1, 0x8ac(r29)
/* 8012A820 00127780  D0 3D 08 B0 */	stfs f1, 0x8b0(r29)
/* 8012A824 00127784  D0 1D 08 B4 */	stfs f0, 0x8b4(r29)
/* 8012A828 00127788  C0 1D 06 18 */	lfs f0, 0x618(r29)
/* 8012A82C 0012778C  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 8012A830 00127790  C0 1D 06 1C */	lfs f0, 0x61c(r29)
/* 8012A834 00127794  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 8012A838 00127798  C0 1D 06 20 */	lfs f0, 0x620(r29)
/* 8012A83C 0012779C  D0 1D 08 C0 */	stfs f0, 0x8c0(r29)
/* 8012A840 001277A0  C0 1D 06 10 */	lfs f0, 0x610(r29)
/* 8012A844 001277A4  D0 1D 08 C4 */	stfs f0, 0x8c4(r29)
/* 8012A848 001277A8  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012A84C 001277AC  B0 1D 08 C8 */	sth r0, 0x8c8(r29)
/* 8012A850 001277B0  48 21 F7 5D */	bl White__6CColorFv
/* 8012A854 001277B4  80 03 00 00 */	lwz r0, 0(r3)
/* 8012A858 001277B8  3C 60 80 3D */	lis r3, lbl_803CFF70@ha
/* 8012A85C 001277BC  38 83 FF 70 */	addi r4, r3, lbl_803CFF70@l
/* 8012A860 001277C0  38 AD A8 98 */	addi r5, r13, skZeroVector__9CVector2f@sda21
/* 8012A864 001277C4  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 8012A868 001277C8  38 61 01 78 */	addi r3, r1, 0x178
/* 8012A86C 001277CC  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012A870 001277D0  38 84 00 1A */	addi r4, r4, 0x1a
/* 8012A874 001277D4  C0 2D A8 98 */	lfs f1, skZeroVector__9CVector2f@sda21(r13)
/* 8012A878 001277D8  D0 3D 08 D0 */	stfs f1, 0x8d0(r29)
/* 8012A87C 001277DC  C0 25 00 04 */	lfs f1, 4(r5)
/* 8012A880 001277E0  D0 3D 08 D4 */	stfs f1, 0x8d4(r29)
/* 8012A884 001277E4  D0 1D 08 D8 */	stfs f0, 0x8d8(r29)
/* 8012A888 001277E8  D0 1D 08 DC */	stfs f0, 0x8dc(r29)
/* 8012A88C 001277EC  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8012A890 001277F0  83 C5 00 10 */	lwz r30, 0x10(r5)
/* 8012A894 001277F4  4B ED A4 25 */	bl string_l__4rstlFPCc
/* 8012A898 001277F8  7F C4 F3 78 */	mr r4, r30
/* 8012A89C 001277FC  38 61 00 30 */	addi r3, r1, 0x30
/* 8012A8A0 00127800  38 A1 01 78 */	addi r5, r1, 0x178
/* 8012A8A4 00127804  4B F0 3F 95 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012A8A8 00127808  88 01 00 30 */	lbz r0, 0x30(r1)
/* 8012A8AC 0012780C  38 61 01 78 */	addi r3, r1, 0x178
/* 8012A8B0 00127810  98 1D 07 58 */	stb r0, 0x758(r29)
/* 8012A8B4 00127814  48 21 32 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A8B8 00127818  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012A8BC 0012781C  38 61 01 68 */	addi r3, r1, 0x168
/* 8012A8C0 00127820  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012A8C4 00127824  38 84 00 21 */	addi r4, r4, 0x21
/* 8012A8C8 00127828  4B ED A3 F1 */	bl string_l__4rstlFPCc
/* 8012A8CC 0012782C  7F C4 F3 78 */	mr r4, r30
/* 8012A8D0 00127830  38 61 00 2C */	addi r3, r1, 0x2c
/* 8012A8D4 00127834  38 A1 01 68 */	addi r5, r1, 0x168
/* 8012A8D8 00127838  4B F0 3F 61 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012A8DC 0012783C  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 8012A8E0 00127840  38 61 01 68 */	addi r3, r1, 0x168
/* 8012A8E4 00127844  98 1D 07 B6 */	stb r0, 0x7b6(r29)
/* 8012A8E8 00127848  48 21 31 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A8EC 0012784C  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012A8F0 00127850  38 61 01 58 */	addi r3, r1, 0x158
/* 8012A8F4 00127854  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012A8F8 00127858  38 84 00 2C */	addi r4, r4, 0x2c
/* 8012A8FC 0012785C  4B ED A3 BD */	bl string_l__4rstlFPCc
/* 8012A900 00127860  7F C4 F3 78 */	mr r4, r30
/* 8012A904 00127864  38 61 00 28 */	addi r3, r1, 0x28
/* 8012A908 00127868  38 A1 01 58 */	addi r5, r1, 0x158
/* 8012A90C 0012786C  4B F0 3F 2D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012A910 00127870  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8012A914 00127874  38 61 01 58 */	addi r3, r1, 0x158
/* 8012A918 00127878  98 1D 07 B7 */	stb r0, 0x7b7(r29)
/* 8012A91C 0012787C  48 21 31 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A920 00127880  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012A924 00127884  38 61 01 48 */	addi r3, r1, 0x148
/* 8012A928 00127888  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012A92C 0012788C  38 84 00 34 */	addi r4, r4, 0x34
/* 8012A930 00127890  4B ED A3 89 */	bl string_l__4rstlFPCc
/* 8012A934 00127894  7F C4 F3 78 */	mr r4, r30
/* 8012A938 00127898  38 61 00 24 */	addi r3, r1, 0x24
/* 8012A93C 0012789C  38 A1 01 48 */	addi r5, r1, 0x148
/* 8012A940 001278A0  4B F0 3E F9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012A944 001278A4  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8012A948 001278A8  38 61 01 48 */	addi r3, r1, 0x148
/* 8012A94C 001278AC  98 1D 07 B8 */	stb r0, 0x7b8(r29)
/* 8012A950 001278B0  48 21 31 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A954 001278B4  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012A958 001278B8  38 61 01 38 */	addi r3, r1, 0x138
/* 8012A95C 001278BC  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012A960 001278C0  38 84 00 3C */	addi r4, r4, 0x3c
/* 8012A964 001278C4  4B ED A3 55 */	bl string_l__4rstlFPCc
/* 8012A968 001278C8  7F C4 F3 78 */	mr r4, r30
/* 8012A96C 001278CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8012A970 001278D0  38 A1 01 38 */	addi r5, r1, 0x138
/* 8012A974 001278D4  4B F0 3E C5 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012A978 001278D8  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8012A97C 001278DC  38 61 01 38 */	addi r3, r1, 0x138
/* 8012A980 001278E0  98 1D 07 B9 */	stb r0, 0x7b9(r29)
/* 8012A984 001278E4  48 21 31 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012A988 001278E8  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012A98C 001278EC  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8012A990 001278F0  40 82 02 FC */	bne lbl_8012AC8C
/* 8012A994 001278F4  38 61 00 EC */	addi r3, r1, 0xec
/* 8012A998 001278F8  48 1B 86 E5 */	bl NoParameter__12CPASAnimParmFv
/* 8012A99C 001278FC  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8012A9A0 00127900  48 1B 86 DD */	bl NoParameter__12CPASAnimParmFv
/* 8012A9A4 00127904  38 61 00 FC */	addi r3, r1, 0xfc
/* 8012A9A8 00127908  48 1B 86 D5 */	bl NoParameter__12CPASAnimParmFv
/* 8012A9AC 0012790C  38 61 01 04 */	addi r3, r1, 0x104
/* 8012A9B0 00127910  48 1B 86 CD */	bl NoParameter__12CPASAnimParmFv
/* 8012A9B4 00127914  38 61 01 0C */	addi r3, r1, 0x10c
/* 8012A9B8 00127918  48 1B 86 C5 */	bl NoParameter__12CPASAnimParmFv
/* 8012A9BC 0012791C  38 61 01 14 */	addi r3, r1, 0x114
/* 8012A9C0 00127920  48 1B 86 BD */	bl NoParameter__12CPASAnimParmFv
/* 8012A9C4 00127924  38 61 01 1C */	addi r3, r1, 0x11c
/* 8012A9C8 00127928  38 80 00 00 */	li r4, 0
/* 8012A9CC 0012792C  48 1B 85 B9 */	bl FromEnum__12CPASAnimParmFi
/* 8012A9D0 00127930  38 61 01 24 */	addi r3, r1, 0x124
/* 8012A9D4 00127934  38 80 00 00 */	li r4, 0
/* 8012A9D8 00127938  48 1B 85 AD */	bl FromEnum__12CPASAnimParmFi
/* 8012A9DC 0012793C  38 61 00 F4 */	addi r3, r1, 0xf4
/* 8012A9E0 00127940  38 01 00 EC */	addi r0, r1, 0xec
/* 8012A9E4 00127944  90 61 00 08 */	stw r3, 8(r1)
/* 8012A9E8 00127948  38 61 02 28 */	addi r3, r1, 0x228
/* 8012A9EC 0012794C  38 A1 01 24 */	addi r5, r1, 0x124
/* 8012A9F0 00127950  38 C1 01 1C */	addi r6, r1, 0x11c
/* 8012A9F4 00127954  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012A9F8 00127958  38 E1 01 14 */	addi r7, r1, 0x114
/* 8012A9FC 0012795C  39 01 01 0C */	addi r8, r1, 0x10c
/* 8012AA00 00127960  39 21 01 04 */	addi r9, r1, 0x104
/* 8012AA04 00127964  39 41 00 FC */	addi r10, r1, 0xfc
/* 8012AA08 00127968  38 80 00 0D */	li r4, 0xd
/* 8012AA0C 0012796C  4B F5 28 B9 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8012AA10 00127970  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 8012AA14 00127974  7F A3 EB 78 */	mr r3, r29
/* 8012AA18 00127978  38 81 02 28 */	addi r4, r1, 0x228
/* 8012AA1C 0012797C  C0 45 00 00 */	lfs f2, 0(r5)
/* 8012AA20 00127980  C0 25 00 04 */	lfs f1, 4(r5)
/* 8012AA24 00127984  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012AA28 00127988  D0 41 01 2C */	stfs f2, 0x12c(r1)
/* 8012AA2C 0012798C  D0 21 01 30 */	stfs f1, 0x130(r1)
/* 8012AA30 00127990  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8012AA34 00127994  4B F5 1F CD */	bl func_8007CA00
/* 8012AA38 00127998  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 8012AA3C 0012799C  38 61 00 AC */	addi r3, r1, 0xac
/* 8012AA40 001279A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012AA44 001279A4  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
/* 8012AA48 001279A8  48 1B 86 35 */	bl NoParameter__12CPASAnimParmFv
/* 8012AA4C 001279AC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8012AA50 001279B0  48 1B 86 2D */	bl NoParameter__12CPASAnimParmFv
/* 8012AA54 001279B4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8012AA58 001279B8  48 1B 86 25 */	bl NoParameter__12CPASAnimParmFv
/* 8012AA5C 001279BC  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8012AA60 001279C0  48 1B 86 1D */	bl NoParameter__12CPASAnimParmFv
/* 8012AA64 001279C4  38 61 00 CC */	addi r3, r1, 0xcc
/* 8012AA68 001279C8  48 1B 86 15 */	bl NoParameter__12CPASAnimParmFv
/* 8012AA6C 001279CC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8012AA70 001279D0  48 1B 86 0D */	bl NoParameter__12CPASAnimParmFv
/* 8012AA74 001279D4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8012AA78 001279D8  38 80 00 01 */	li r4, 1
/* 8012AA7C 001279DC  48 1B 85 09 */	bl FromEnum__12CPASAnimParmFi
/* 8012AA80 001279E0  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8012AA84 001279E4  38 80 00 03 */	li r4, 3
/* 8012AA88 001279E8  48 1B 84 FD */	bl FromEnum__12CPASAnimParmFi
/* 8012AA8C 001279EC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8012AA90 001279F0  38 01 00 AC */	addi r0, r1, 0xac
/* 8012AA94 001279F4  90 61 00 08 */	stw r3, 8(r1)
/* 8012AA98 001279F8  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8012AA9C 001279FC  38 A1 00 E4 */	addi r5, r1, 0xe4
/* 8012AAA0 00127A00  38 C1 00 DC */	addi r6, r1, 0xdc
/* 8012AAA4 00127A04  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012AAA8 00127A08  38 E1 00 D4 */	addi r7, r1, 0xd4
/* 8012AAAC 00127A0C  39 01 00 CC */	addi r8, r1, 0xcc
/* 8012AAB0 00127A10  39 21 00 C4 */	addi r9, r1, 0xc4
/* 8012AAB4 00127A14  39 41 00 BC */	addi r10, r1, 0xbc
/* 8012AAB8 00127A18  38 80 00 03 */	li r4, 3
/* 8012AABC 00127A1C  4B F5 28 09 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8012AAC0 00127A20  83 DD 00 64 */	lwz r30, 0x64(r29)
/* 8012AAC4 00127A24  7F A3 EB 78 */	mr r3, r29
/* 8012AAC8 00127A28  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 8012AACC 00127A2C  4B F5 1F 35 */	bl func_8007CA00
/* 8012AAD0 00127A30  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012AAD4 00127A34  38 61 00 6C */	addi r3, r1, 0x6c
/* 8012AAD8 00127A38  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012AADC 00127A3C  D0 1D 08 48 */	stfs f0, 0x848(r29)
/* 8012AAE0 00127A40  48 1B 85 9D */	bl NoParameter__12CPASAnimParmFv
/* 8012AAE4 00127A44  38 61 00 74 */	addi r3, r1, 0x74
/* 8012AAE8 00127A48  48 1B 85 95 */	bl NoParameter__12CPASAnimParmFv
/* 8012AAEC 00127A4C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8012AAF0 00127A50  48 1B 85 8D */	bl NoParameter__12CPASAnimParmFv
/* 8012AAF4 00127A54  38 61 00 84 */	addi r3, r1, 0x84
/* 8012AAF8 00127A58  48 1B 85 85 */	bl NoParameter__12CPASAnimParmFv
/* 8012AAFC 00127A5C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8012AB00 00127A60  48 1B 85 7D */	bl NoParameter__12CPASAnimParmFv
/* 8012AB04 00127A64  38 61 00 94 */	addi r3, r1, 0x94
/* 8012AB08 00127A68  48 1B 85 75 */	bl NoParameter__12CPASAnimParmFv
/* 8012AB0C 00127A6C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8012AB10 00127A70  38 80 00 02 */	li r4, 2
/* 8012AB14 00127A74  48 1B 84 71 */	bl FromEnum__12CPASAnimParmFi
/* 8012AB18 00127A78  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8012AB1C 00127A7C  38 80 00 03 */	li r4, 3
/* 8012AB20 00127A80  48 1B 84 65 */	bl FromEnum__12CPASAnimParmFi
/* 8012AB24 00127A84  38 61 00 74 */	addi r3, r1, 0x74
/* 8012AB28 00127A88  38 01 00 6C */	addi r0, r1, 0x6c
/* 8012AB2C 00127A8C  90 61 00 08 */	stw r3, 8(r1)
/* 8012AB30 00127A90  38 61 01 98 */	addi r3, r1, 0x198
/* 8012AB34 00127A94  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8012AB38 00127A98  38 C1 00 9C */	addi r6, r1, 0x9c
/* 8012AB3C 00127A9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8012AB40 00127AA0  38 E1 00 94 */	addi r7, r1, 0x94
/* 8012AB44 00127AA4  39 01 00 8C */	addi r8, r1, 0x8c
/* 8012AB48 00127AA8  39 21 00 84 */	addi r9, r1, 0x84
/* 8012AB4C 00127AAC  39 41 00 7C */	addi r10, r1, 0x7c
/* 8012AB50 00127AB0  38 80 00 03 */	li r4, 3
/* 8012AB54 00127AB4  4B F5 27 71 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8012AB58 00127AB8  83 DD 00 64 */	lwz r30, 0x64(r29)
/* 8012AB5C 00127ABC  7F A3 EB 78 */	mr r3, r29
/* 8012AB60 00127AC0  38 81 01 98 */	addi r4, r1, 0x198
/* 8012AB64 00127AC4  4B F5 1E 9D */	bl func_8007CA00
/* 8012AB68 00127AC8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8012AB6C 00127ACC  34 A1 01 9C */	addic. r5, r1, 0x19c
/* 8012AB70 00127AD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012AB74 00127AD4  D0 1D 08 4C */	stfs f0, 0x84c(r29)
/* 8012AB78 00127AD8  41 82 00 58 */	beq lbl_8012ABD0
/* 8012AB7C 00127ADC  80 C5 00 00 */	lwz r6, 0(r5)
/* 8012AB80 00127AE0  38 60 00 00 */	li r3, 0
/* 8012AB84 00127AE4  2C 06 00 00 */	cmpwi r6, 0
/* 8012AB88 00127AE8  40 81 00 40 */	ble lbl_8012ABC8
/* 8012AB8C 00127AEC  2C 06 00 08 */	cmpwi r6, 8
/* 8012AB90 00127AF0  38 86 FF F8 */	addi r4, r6, -8
/* 8012AB94 00127AF4  40 81 00 20 */	ble lbl_8012ABB4
/* 8012AB98 00127AF8  38 04 00 07 */	addi r0, r4, 7
/* 8012AB9C 00127AFC  54 00 E8 FE */	srwi r0, r0, 3
/* 8012ABA0 00127B00  7C 09 03 A6 */	mtctr r0
/* 8012ABA4 00127B04  2C 04 00 00 */	cmpwi r4, 0
/* 8012ABA8 00127B08  40 81 00 0C */	ble lbl_8012ABB4
lbl_8012ABAC:
/* 8012ABAC 00127B0C  38 63 00 08 */	addi r3, r3, 8
/* 8012ABB0 00127B10  42 00 FF FC */	bdnz lbl_8012ABAC
lbl_8012ABB4:
/* 8012ABB4 00127B14  7C 03 30 50 */	subf r0, r3, r6
/* 8012ABB8 00127B18  7C 09 03 A6 */	mtctr r0
/* 8012ABBC 00127B1C  7C 03 30 00 */	cmpw r3, r6
/* 8012ABC0 00127B20  40 80 00 08 */	bge lbl_8012ABC8
lbl_8012ABC4:
/* 8012ABC4 00127B24  42 00 00 00 */	bdnz lbl_8012ABC4
lbl_8012ABC8:
/* 8012ABC8 00127B28  38 00 00 00 */	li r0, 0
/* 8012ABCC 00127B2C  90 05 00 00 */	stw r0, 0(r5)
lbl_8012ABD0:
/* 8012ABD0 00127B30  34 A1 01 E4 */	addic. r5, r1, 0x1e4
/* 8012ABD4 00127B34  41 82 00 58 */	beq lbl_8012AC2C
/* 8012ABD8 00127B38  80 C5 00 00 */	lwz r6, 0(r5)
/* 8012ABDC 00127B3C  38 60 00 00 */	li r3, 0
/* 8012ABE0 00127B40  2C 06 00 00 */	cmpwi r6, 0
/* 8012ABE4 00127B44  40 81 00 40 */	ble lbl_8012AC24
/* 8012ABE8 00127B48  2C 06 00 08 */	cmpwi r6, 8
/* 8012ABEC 00127B4C  38 86 FF F8 */	addi r4, r6, -8
/* 8012ABF0 00127B50  40 81 00 20 */	ble lbl_8012AC10
/* 8012ABF4 00127B54  38 04 00 07 */	addi r0, r4, 7
/* 8012ABF8 00127B58  54 00 E8 FE */	srwi r0, r0, 3
/* 8012ABFC 00127B5C  7C 09 03 A6 */	mtctr r0
/* 8012AC00 00127B60  2C 04 00 00 */	cmpwi r4, 0
/* 8012AC04 00127B64  40 81 00 0C */	ble lbl_8012AC10
lbl_8012AC08:
/* 8012AC08 00127B68  38 63 00 08 */	addi r3, r3, 8
/* 8012AC0C 00127B6C  42 00 FF FC */	bdnz lbl_8012AC08
lbl_8012AC10:
/* 8012AC10 00127B70  7C 03 30 50 */	subf r0, r3, r6
/* 8012AC14 00127B74  7C 09 03 A6 */	mtctr r0
/* 8012AC18 00127B78  7C 03 30 00 */	cmpw r3, r6
/* 8012AC1C 00127B7C  40 80 00 08 */	bge lbl_8012AC24
lbl_8012AC20:
/* 8012AC20 00127B80  42 00 00 00 */	bdnz lbl_8012AC20
lbl_8012AC24:
/* 8012AC24 00127B84  38 00 00 00 */	li r0, 0
/* 8012AC28 00127B88  90 05 00 00 */	stw r0, 0(r5)
lbl_8012AC2C:
/* 8012AC2C 00127B8C  34 A1 02 2C */	addic. r5, r1, 0x22c
/* 8012AC30 00127B90  41 82 00 70 */	beq lbl_8012ACA0
/* 8012AC34 00127B94  80 C5 00 00 */	lwz r6, 0(r5)
/* 8012AC38 00127B98  38 60 00 00 */	li r3, 0
/* 8012AC3C 00127B9C  2C 06 00 00 */	cmpwi r6, 0
/* 8012AC40 00127BA0  40 81 00 40 */	ble lbl_8012AC80
/* 8012AC44 00127BA4  2C 06 00 08 */	cmpwi r6, 8
/* 8012AC48 00127BA8  38 86 FF F8 */	addi r4, r6, -8
/* 8012AC4C 00127BAC  40 81 00 20 */	ble lbl_8012AC6C
/* 8012AC50 00127BB0  38 04 00 07 */	addi r0, r4, 7
/* 8012AC54 00127BB4  54 00 E8 FE */	srwi r0, r0, 3
/* 8012AC58 00127BB8  7C 09 03 A6 */	mtctr r0
/* 8012AC5C 00127BBC  2C 04 00 00 */	cmpwi r4, 0
/* 8012AC60 00127BC0  40 81 00 0C */	ble lbl_8012AC6C
lbl_8012AC64:
/* 8012AC64 00127BC4  38 63 00 08 */	addi r3, r3, 8
/* 8012AC68 00127BC8  42 00 FF FC */	bdnz lbl_8012AC64
lbl_8012AC6C:
/* 8012AC6C 00127BCC  7C 03 30 50 */	subf r0, r3, r6
/* 8012AC70 00127BD0  7C 09 03 A6 */	mtctr r0
/* 8012AC74 00127BD4  7C 03 30 00 */	cmpw r3, r6
/* 8012AC78 00127BD8  40 80 00 08 */	bge lbl_8012AC80
lbl_8012AC7C:
/* 8012AC7C 00127BDC  42 00 00 00 */	bdnz lbl_8012AC7C
lbl_8012AC80:
/* 8012AC80 00127BE0  38 00 00 00 */	li r0, 0
/* 8012AC84 00127BE4  90 05 00 00 */	stw r0, 0(r5)
/* 8012AC88 00127BE8  48 00 00 18 */	b lbl_8012ACA0
lbl_8012AC8C:
/* 8012AC8C 00127BEC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8012AC90 00127BF0  38 80 00 01 */	li r4, 1
/* 8012AC94 00127BF4  88 03 02 D8 */	lbz r0, 0x2d8(r3)
/* 8012AC98 00127BF8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012AC9C 00127BFC  98 03 02 D8 */	stb r0, 0x2d8(r3)
lbl_8012ACA0:
/* 8012ACA0 00127C00  7F A3 EB 78 */	mr r3, r29
/* 8012ACA4 00127C04  4B FE FD 1D */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 8012ACA8 00127C08  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8012ACAC 00127C0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012ACB0 00127C10  C0 42 98 78 */	lfs f2, lbl_805AB598@sda21(r2)
/* 8012ACB4 00127C14  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012ACB8 00127C18  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012ACBC 00127C1C  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8012ACC0 00127C20  80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8012ACC4 00127C24  28 04 00 00 */	cmplwi r4, 0
/* 8012ACC8 00127C28  41 82 00 14 */	beq lbl_8012ACDC
/* 8012ACCC 00127C2C  88 04 02 98 */	lbz r0, 0x298(r4)
/* 8012ACD0 00127C30  38 60 00 00 */	li r3, 0
/* 8012ACD4 00127C34  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8012ACD8 00127C38  98 04 02 98 */	stb r0, 0x298(r4)
lbl_8012ACDC:
/* 8012ACDC 00127C3C  C0 22 98 24 */	lfs f1, lbl_805AB544@sda21(r2)
/* 8012ACE0 00127C40  38 7D 04 60 */	addi r3, r29, 0x460
/* 8012ACE4 00127C44  C0 42 98 10 */	lfs f2, lbl_805AB530@sda21(r2)
/* 8012ACE8 00127C48  38 80 00 03 */	li r4, 3
/* 8012ACEC 00127C4C  48 10 90 55 */	bl sub_80233d40
/* 8012ACF0 00127C50  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8012ACF4 00127C54  38 60 00 01 */	li r3, 1
/* 8012ACF8 00127C58  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 8012ACFC 00127C5C  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 8012AD00 00127C60  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012AD04 00127C64  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8012AD08 00127C68  41 82 00 14 */	beq lbl_8012AD1C
/* 8012AD0C 00127C6C  38 7D 04 60 */	addi r3, r29, 0x460
/* 8012AD10 00127C70  38 80 00 00 */	li r4, 0
/* 8012AD14 00127C74  48 10 90 15 */	bl SetKnockBackVariant__20CKnockBackControllerF17EKnockBackVariant
/* 8012AD18 00127C78  48 00 00 74 */	b lbl_8012AD8C
lbl_8012AD1C:
/* 8012AD1C 00127C7C  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 8012AD20 00127C80  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012AD24 00127C84  41 82 00 68 */	beq lbl_8012AD8C
/* 8012AD28 00127C88  88 01 00 68 */	lbz r0, 0x68(r1)
/* 8012AD2C 00127C8C  38 80 00 00 */	li r4, 0
/* 8012AD30 00127C90  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012AD34 00127C94  38 A0 00 03 */	li r5, 3
/* 8012AD38 00127C98  98 01 00 68 */	stb r0, 0x68(r1)
/* 8012AD3C 00127C9C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AD40 00127CA0  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012AD44 00127CA4  7F A3 EB 78 */	mr r3, r29
/* 8012AD48 00127CA8  98 01 00 68 */	stb r0, 0x68(r1)
/* 8012AD4C 00127CAC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AD50 00127CB0  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8012AD54 00127CB4  90 A1 00 64 */	stw r5, 0x64(r1)
/* 8012AD58 00127CB8  98 01 00 68 */	stb r0, 0x68(r1)
/* 8012AD5C 00127CBC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8012AD60 00127CC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8012AD64 00127CC4  7D 89 03 A6 */	mtctr r12
/* 8012AD68 00127CC8  4E 80 04 21 */	bctrl
/* 8012AD6C 00127CCC  38 81 00 64 */	addi r4, r1, 0x64
/* 8012AD70 00127CD0  38 A0 00 00 */	li r5, 0
/* 8012AD74 00127CD4  4B FD 79 95 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8012AD78 00127CD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AD7C 00127CDC  41 82 00 10 */	beq lbl_8012AD8C
/* 8012AD80 00127CE0  38 7D 04 60 */	addi r3, r29, 0x460
/* 8012AD84 00127CE4  38 80 00 02 */	li r4, 2
/* 8012AD88 00127CE8  48 10 8F A1 */	bl SetKnockBackVariant__20CKnockBackControllerF17EKnockBackVariant
lbl_8012AD8C:
/* 8012AD8C 00127CEC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8012AD90 00127CF0  38 80 00 16 */	li r4, 0x16
/* 8012AD94 00127CF4  48 00 FE 21 */	bl HasBodyState__15CBodyControllerCFQ23pas15EAnimationState
/* 8012AD98 00127CF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AD9C 00127CFC  40 82 00 14 */	bne lbl_8012ADB0
/* 8012ADA0 00127D00  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8012ADA4 00127D04  38 60 00 01 */	li r3, 1
/* 8012ADA8 00127D08  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8012ADAC 00127D0C  98 1D 06 34 */	stb r0, 0x634(r29)
lbl_8012ADB0:
/* 8012ADB0 00127D10  88 1D 06 36 */	lbz r0, 0x636(r29)
/* 8012ADB4 00127D14  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012ADB8 00127D18  41 82 01 C0 */	beq lbl_8012AF78
/* 8012ADBC 00127D1C  7F A3 EB 78 */	mr r3, r29
/* 8012ADC0 00127D20  81 9D 00 00 */	lwz r12, 0(r29)
/* 8012ADC4 00127D24  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8012ADC8 00127D28  7D 89 03 A6 */	mtctr r12
/* 8012ADCC 00127D2C  4E 80 04 21 */	bctrl
/* 8012ADD0 00127D30  88 01 00 60 */	lbz r0, 0x60(r1)
/* 8012ADD4 00127D34  38 80 00 00 */	li r4, 0
/* 8012ADD8 00127D38  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012ADDC 00127D3C  38 A0 00 03 */	li r5, 3
/* 8012ADE0 00127D40  98 01 00 60 */	stb r0, 0x60(r1)
/* 8012ADE4 00127D44  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012ADE8 00127D48  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012ADEC 00127D4C  7C 7F 1B 78 */	mr r31, r3
/* 8012ADF0 00127D50  98 01 00 60 */	stb r0, 0x60(r1)
/* 8012ADF4 00127D54  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012ADF8 00127D58  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8012ADFC 00127D5C  38 81 00 5C */	addi r4, r1, 0x5c
/* 8012AE00 00127D60  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8012AE04 00127D64  38 A0 00 00 */	li r5, 0
/* 8012AE08 00127D68  98 01 00 60 */	stb r0, 0x60(r1)
/* 8012AE0C 00127D6C  4B FD 78 FD */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8012AE10 00127D70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AE14 00127D74  41 82 00 30 */	beq lbl_8012AE44
/* 8012AE18 00127D78  38 A0 00 FE */	li r5, 0xfe
/* 8012AE1C 00127D7C  38 80 00 00 */	li r4, 0
/* 8012AE20 00127D80  38 60 00 28 */	li r3, 0x28
/* 8012AE24 00127D84  38 00 00 FF */	li r0, 0xff
/* 8012AE28 00127D88  98 A1 00 40 */	stb r5, 0x40(r1)
/* 8012AE2C 00127D8C  98 81 00 41 */	stb r4, 0x41(r1)
/* 8012AE30 00127D90  98 61 00 42 */	stb r3, 0x42(r1)
/* 8012AE34 00127D94  98 01 00 43 */	stb r0, 0x43(r1)
/* 8012AE38 00127D98  80 01 00 40 */	lwz r0, 0x40(r1)
/* 8012AE3C 00127D9C  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 8012AE40 00127DA0  48 00 01 38 */	b lbl_8012AF78
lbl_8012AE44:
/* 8012AE44 00127DA4  88 01 00 58 */	lbz r0, 0x58(r1)
/* 8012AE48 00127DA8  38 80 00 00 */	li r4, 0
/* 8012AE4C 00127DAC  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012AE50 00127DB0  38 A0 00 01 */	li r5, 1
/* 8012AE54 00127DB4  98 01 00 58 */	stb r0, 0x58(r1)
/* 8012AE58 00127DB8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AE5C 00127DBC  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012AE60 00127DC0  7F E3 FB 78 */	mr r3, r31
/* 8012AE64 00127DC4  98 01 00 58 */	stb r0, 0x58(r1)
/* 8012AE68 00127DC8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AE6C 00127DCC  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8012AE70 00127DD0  38 81 00 54 */	addi r4, r1, 0x54
/* 8012AE74 00127DD4  90 A1 00 54 */	stw r5, 0x54(r1)
/* 8012AE78 00127DD8  38 A0 00 00 */	li r5, 0
/* 8012AE7C 00127DDC  98 01 00 58 */	stb r0, 0x58(r1)
/* 8012AE80 00127DE0  4B FD 78 89 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8012AE84 00127DE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AE88 00127DE8  41 82 00 14 */	beq lbl_8012AE9C
/* 8012AE8C 00127DEC  48 21 F1 21 */	bl White__6CColorFv
/* 8012AE90 00127DF0  80 03 00 00 */	lwz r0, 0(r3)
/* 8012AE94 00127DF4  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 8012AE98 00127DF8  48 00 00 E0 */	b lbl_8012AF78
lbl_8012AE9C:
/* 8012AE9C 00127DFC  38 C0 00 00 */	li r6, 0
/* 8012AEA0 00127E00  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8012AEA4 00127E04  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 8012AEA8 00127E08  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 8012AEAC 00127E0C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8012AEB0 00127E10  7F E3 FB 78 */	mr r3, r31
/* 8012AEB4 00127E14  50 C5 36 72 */	rlwimi r5, r6, 6, 0x19, 0x19
/* 8012AEB8 00127E18  98 01 00 50 */	stb r0, 0x50(r1)
/* 8012AEBC 00127E1C  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 8012AEC0 00127E20  38 81 00 4C */	addi r4, r1, 0x4c
/* 8012AEC4 00127E24  98 A1 00 50 */	stb r5, 0x50(r1)
/* 8012AEC8 00127E28  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 8012AECC 00127E2C  38 A0 00 00 */	li r5, 0
/* 8012AED0 00127E30  98 01 00 50 */	stb r0, 0x50(r1)
/* 8012AED4 00127E34  4B FD 78 35 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8012AED8 00127E38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AEDC 00127E3C  41 82 00 30 */	beq lbl_8012AF0C
/* 8012AEE0 00127E40  38 A0 00 FD */	li r5, 0xfd
/* 8012AEE4 00127E44  38 80 00 EF */	li r4, 0xef
/* 8012AEE8 00127E48  38 60 00 56 */	li r3, 0x56
/* 8012AEEC 00127E4C  38 00 00 FF */	li r0, 0xff
/* 8012AEF0 00127E50  98 A1 00 3C */	stb r5, 0x3c(r1)
/* 8012AEF4 00127E54  98 81 00 3D */	stb r4, 0x3d(r1)
/* 8012AEF8 00127E58  98 61 00 3E */	stb r3, 0x3e(r1)
/* 8012AEFC 00127E5C  98 01 00 3F */	stb r0, 0x3f(r1)
/* 8012AF00 00127E60  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8012AF04 00127E64  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 8012AF08 00127E68  48 00 00 70 */	b lbl_8012AF78
lbl_8012AF0C:
/* 8012AF0C 00127E6C  88 01 00 48 */	lbz r0, 0x48(r1)
/* 8012AF10 00127E70  38 80 00 00 */	li r4, 0
/* 8012AF14 00127E74  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012AF18 00127E78  38 A0 00 02 */	li r5, 2
/* 8012AF1C 00127E7C  98 01 00 48 */	stb r0, 0x48(r1)
/* 8012AF20 00127E80  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AF24 00127E84  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8012AF28 00127E88  7F E3 FB 78 */	mr r3, r31
/* 8012AF2C 00127E8C  98 01 00 48 */	stb r0, 0x48(r1)
/* 8012AF30 00127E90  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8012AF34 00127E94  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8012AF38 00127E98  38 81 00 44 */	addi r4, r1, 0x44
/* 8012AF3C 00127E9C  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8012AF40 00127EA0  38 A0 00 00 */	li r5, 0
/* 8012AF44 00127EA4  98 01 00 48 */	stb r0, 0x48(r1)
/* 8012AF48 00127EA8  4B FD 77 C1 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8012AF4C 00127EAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012AF50 00127EB0  41 82 00 28 */	beq lbl_8012AF78
/* 8012AF54 00127EB4  38 00 00 FF */	li r0, 0xff
/* 8012AF58 00127EB8  38 80 00 C6 */	li r4, 0xc6
/* 8012AF5C 00127EBC  38 60 00 0E */	li r3, 0xe
/* 8012AF60 00127EC0  98 81 00 38 */	stb r4, 0x38(r1)
/* 8012AF64 00127EC4  98 61 00 39 */	stb r3, 0x39(r1)
/* 8012AF68 00127EC8  98 01 00 3A */	stb r0, 0x3a(r1)
/* 8012AF6C 00127ECC  98 01 00 3B */	stb r0, 0x3b(r1)
/* 8012AF70 00127ED0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 8012AF74 00127ED4  90 1D 08 CC */	stw r0, 0x8cc(r29)
lbl_8012AF78:
/* 8012AF78 00127ED8  80 01 02 84 */	lwz r0, 0x284(r1)
/* 8012AF7C 00127EDC  7F A3 EB 78 */	mr r3, r29
/* 8012AF80 00127EE0  83 E1 02 7C */	lwz r31, 0x27c(r1)
/* 8012AF84 00127EE4  83 C1 02 78 */	lwz r30, 0x278(r1)
/* 8012AF88 00127EE8  83 A1 02 74 */	lwz r29, 0x274(r1)
/* 8012AF8C 00127EEC  83 81 02 70 */	lwz r28, 0x270(r1)
/* 8012AF90 00127EF0  7C 08 03 A6 */	mtlr r0
/* 8012AF94 00127EF4  38 21 02 80 */	addi r1, r1, 0x280
/* 8012AF98 00127EF8  4E 80 00 20 */	blr

.global __ct__8CIkChainFv
__ct__8CIkChainFv:
/* 8012AF9C 00127EFC  38 00 00 FF */	li r0, 0xff
/* 8012AFA0 00127F00  3C C0 80 5A */	lis r6, sForwardVector__9CVector3f@ha
/* 8012AFA4 00127F04  98 03 00 00 */	stb r0, 0(r3)
/* 8012AFA8 00127F08  3C A0 80 5A */	lis r5, sNoRotation__11CQuaternion@ha
/* 8012AFAC 00127F0C  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 8012AFB0 00127F10  38 E6 67 24 */	addi r7, r6, sForwardVector__9CVector3f@l
/* 8012AFB4 00127F14  98 03 00 01 */	stb r0, 1(r3)
/* 8012AFB8 00127F18  38 C5 66 60 */	addi r6, r5, sNoRotation__11CQuaternion@l
/* 8012AFBC 00127F1C  C0 22 97 D8 */	lfs f1, lbl_805AB4F8@sda21(r2)
/* 8012AFC0 00127F20  38 A4 66 A0 */	addi r5, r4, sZeroVector__9CVector3f@l
/* 8012AFC4 00127F24  98 03 00 02 */	stb r0, 2(r3)
/* 8012AFC8 00127F28  38 80 00 00 */	li r4, 0
/* 8012AFCC 00127F2C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012AFD0 00127F30  C0 47 00 00 */	lfs f2, 0(r7)
/* 8012AFD4 00127F34  D0 43 00 04 */	stfs f2, 4(r3)
/* 8012AFD8 00127F38  C0 47 00 04 */	lfs f2, 4(r7)
/* 8012AFDC 00127F3C  D0 43 00 08 */	stfs f2, 8(r3)
/* 8012AFE0 00127F40  C0 47 00 08 */	lfs f2, 8(r7)
/* 8012AFE4 00127F44  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8012AFE8 00127F48  C0 47 00 00 */	lfs f2, 0(r7)
/* 8012AFEC 00127F4C  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 8012AFF0 00127F50  C0 47 00 04 */	lfs f2, 4(r7)
/* 8012AFF4 00127F54  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 8012AFF8 00127F58  C0 47 00 08 */	lfs f2, 8(r7)
/* 8012AFFC 00127F5C  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 8012B000 00127F60  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 8012B004 00127F64  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 8012B008 00127F68  C0 26 00 00 */	lfs f1, 0(r6)
/* 8012B00C 00127F6C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8012B010 00127F70  C0 26 00 04 */	lfs f1, 4(r6)
/* 8012B014 00127F74  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8012B018 00127F78  C0 26 00 08 */	lfs f1, 8(r6)
/* 8012B01C 00127F7C  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 8012B020 00127F80  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8012B024 00127F84  D0 23 00 30 */	stfs f1, 0x30(r3)
/* 8012B028 00127F88  C0 25 00 00 */	lfs f1, 0(r5)
/* 8012B02C 00127F8C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 8012B030 00127F90  C0 25 00 04 */	lfs f1, 4(r5)
/* 8012B034 00127F94  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8012B038 00127F98  C0 25 00 08 */	lfs f1, 8(r5)
/* 8012B03C 00127F9C  D0 23 00 3C */	stfs f1, 0x3c(r3)
/* 8012B040 00127FA0  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8012B044 00127FA4  88 03 00 44 */	lbz r0, 0x44(r3)
/* 8012B048 00127FA8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8012B04C 00127FAC  98 03 00 44 */	stb r0, 0x44(r3)
/* 8012B050 00127FB0  4E 80 00 20 */	blr

.global __ct__Q212CSpacePirate16CSpacePirateDataFR12CInputStreamUi
__ct__Q212CSpacePirate16CSpacePirateDataFR12CInputStreamUi:
/* 8012B054 00127FB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012B058 00127FB8  7C 08 02 A6 */	mflr r0
/* 8012B05C 00127FBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012B060 00127FC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8012B064 00127FC4  7C BF 2B 78 */	mr r31, r5
/* 8012B068 00127FC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8012B06C 00127FCC  7C 9E 23 78 */	mr r30, r4
/* 8012B070 00127FD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8012B074 00127FD4  7C 7D 1B 78 */	mr r29, r3
/* 8012B078 00127FD8  7F C3 F3 78 */	mr r3, r30
/* 8012B07C 00127FDC  48 21 3B AD */	bl ReadFloat__12CInputStreamFv
/* 8012B080 00127FE0  D0 3D 00 00 */	stfs f1, 0(r29)
/* 8012B084 00127FE4  7F C3 F3 78 */	mr r3, r30
/* 8012B088 00127FE8  48 21 3B A1 */	bl ReadFloat__12CInputStreamFv
/* 8012B08C 00127FEC  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8012B090 00127FF0  7F C3 F3 78 */	mr r3, r30
/* 8012B094 00127FF4  48 21 3B 95 */	bl ReadFloat__12CInputStreamFv
/* 8012B098 00127FF8  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8012B09C 00127FFC  7F C3 F3 78 */	mr r3, r30
/* 8012B0A0 00128000  48 21 3B 89 */	bl ReadFloat__12CInputStreamFv
/* 8012B0A4 00128004  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 8012B0A8 00128008  7F C3 F3 78 */	mr r3, r30
/* 8012B0AC 0012800C  48 21 3B 7D */	bl ReadFloat__12CInputStreamFv
/* 8012B0B0 00128010  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 8012B0B4 00128014  7F C3 F3 78 */	mr r3, r30
/* 8012B0B8 00128018  48 21 3B 71 */	bl ReadFloat__12CInputStreamFv
/* 8012B0BC 0012801C  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 8012B0C0 00128020  7F C3 F3 78 */	mr r3, r30
/* 8012B0C4 00128024  48 21 3B C1 */	bl ReadLong__12CInputStreamFv
/* 8012B0C8 00128028  90 7D 00 18 */	stw r3, 0x18(r29)
/* 8012B0CC 0012802C  7F C3 F3 78 */	mr r3, r30
/* 8012B0D0 00128030  48 21 3C 0D */	bl ReadBool__12CInputStreamFv
/* 8012B0D4 00128034  98 7D 00 1C */	stb r3, 0x1c(r29)
/* 8012B0D8 00128038  7F C4 F3 78 */	mr r4, r30
/* 8012B0DC 0012803C  38 7D 00 20 */	addi r3, r29, 0x20
/* 8012B0E0 00128040  48 0F 0F 31 */	bl __ct__15CProjectileInfoFR12CInputStream
/* 8012B0E4 00128044  7F C3 F3 78 */	mr r3, r30
/* 8012B0E8 00128048  48 21 3B 9D */	bl ReadLong__12CInputStreamFv
/* 8012B0EC 0012804C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8012B0F0 00128050  48 1B D8 C1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8012B0F4 00128054  B0 7D 00 48 */	sth r3, 0x48(r29)
/* 8012B0F8 00128058  7F C4 F3 78 */	mr r4, r30
/* 8012B0FC 0012805C  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8012B100 00128060  4B F9 84 61 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8012B104 00128064  7F C3 F3 78 */	mr r3, r30
/* 8012B108 00128068  48 21 3B 21 */	bl ReadFloat__12CInputStreamFv
/* 8012B10C 0012806C  D0 3D 00 68 */	stfs f1, 0x68(r29)
/* 8012B110 00128070  7F C4 F3 78 */	mr r4, r30
/* 8012B114 00128074  38 7D 00 6C */	addi r3, r29, 0x6c
/* 8012B118 00128078  48 0F 0E F9 */	bl __ct__15CProjectileInfoFR12CInputStream
/* 8012B11C 0012807C  7F C3 F3 78 */	mr r3, r30
/* 8012B120 00128080  48 21 3B 09 */	bl ReadFloat__12CInputStreamFv
/* 8012B124 00128084  D0 3D 00 94 */	stfs f1, 0x94(r29)
/* 8012B128 00128088  7F C3 F3 78 */	mr r3, r30
/* 8012B12C 0012808C  48 21 3B 59 */	bl ReadLong__12CInputStreamFv
/* 8012B130 00128090  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8012B134 00128094  48 1B D8 7D */	bl TranslateSFXID__11CSfxManagerFUs
/* 8012B138 00128098  B0 7D 00 98 */	sth r3, 0x98(r29)
/* 8012B13C 0012809C  7F C3 F3 78 */	mr r3, r30
/* 8012B140 001280A0  48 21 3A E9 */	bl ReadFloat__12CInputStreamFv
/* 8012B144 001280A4  D0 3D 00 9C */	stfs f1, 0x9c(r29)
/* 8012B148 001280A8  7F C3 F3 78 */	mr r3, r30
/* 8012B14C 001280AC  48 21 3A DD */	bl ReadFloat__12CInputStreamFv
/* 8012B150 001280B0  D0 3D 00 A0 */	stfs f1, 0xa0(r29)
/* 8012B154 001280B4  7F C3 F3 78 */	mr r3, r30
/* 8012B158 001280B8  48 21 3B 2D */	bl ReadLong__12CInputStreamFv
/* 8012B15C 001280BC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8012B160 001280C0  48 1B D8 51 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8012B164 001280C4  B0 7D 00 A4 */	sth r3, 0xa4(r29)
/* 8012B168 001280C8  7F C3 F3 78 */	mr r3, r30
/* 8012B16C 001280CC  48 21 3A BD */	bl ReadFloat__12CInputStreamFv
/* 8012B170 001280D0  D0 3D 00 A8 */	stfs f1, 0xa8(r29)
/* 8012B174 001280D4  7F C3 F3 78 */	mr r3, r30
/* 8012B178 001280D8  48 21 3B 0D */	bl ReadLong__12CInputStreamFv
/* 8012B17C 001280DC  90 7D 00 AC */	stw r3, 0xac(r29)
/* 8012B180 001280E0  7F C3 F3 78 */	mr r3, r30
/* 8012B184 001280E4  48 21 3A A5 */	bl ReadFloat__12CInputStreamFv
/* 8012B188 001280E8  D0 3D 00 B0 */	stfs f1, 0xb0(r29)
/* 8012B18C 001280EC  7F C3 F3 78 */	mr r3, r30
/* 8012B190 001280F0  48 21 3A 99 */	bl ReadFloat__12CInputStreamFv
/* 8012B194 001280F4  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
/* 8012B198 001280F8  7F C3 F3 78 */	mr r3, r30
/* 8012B19C 001280FC  48 21 3A 8D */	bl ReadFloat__12CInputStreamFv
/* 8012B1A0 00128100  D0 3D 00 B8 */	stfs f1, 0xb8(r29)
/* 8012B1A4 00128104  7F C3 F3 78 */	mr r3, r30
/* 8012B1A8 00128108  48 21 3A 81 */	bl ReadFloat__12CInputStreamFv
/* 8012B1AC 0012810C  D0 3D 00 BC */	stfs f1, 0xbc(r29)
/* 8012B1B0 00128110  7F C3 F3 78 */	mr r3, r30
/* 8012B1B4 00128114  48 21 3A D1 */	bl ReadLong__12CInputStreamFv
/* 8012B1B8 00128118  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8012B1BC 0012811C  48 1B D7 F5 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8012B1C0 00128120  B0 7D 00 C0 */	sth r3, 0xc0(r29)
/* 8012B1C4 00128124  7F C3 F3 78 */	mr r3, r30
/* 8012B1C8 00128128  48 21 3A BD */	bl ReadLong__12CInputStreamFv
/* 8012B1CC 0012812C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8012B1D0 00128130  48 1B D7 E1 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8012B1D4 00128134  2C 1F 00 23 */	cmpwi r31, 0x23
/* 8012B1D8 00128138  B0 7D 00 C2 */	sth r3, 0xc2(r29)
/* 8012B1DC 0012813C  41 80 00 10 */	blt lbl_8012B1EC
/* 8012B1E0 00128140  7F C3 F3 78 */	mr r3, r30
/* 8012B1E4 00128144  48 21 3A 45 */	bl ReadFloat__12CInputStreamFv
/* 8012B1E8 00128148  48 00 00 08 */	b lbl_8012B1F0
lbl_8012B1EC:
/* 8012B1EC 0012814C  C0 22 97 CC */	lfs f1, lbl_805AB4EC@sda21(r2)
lbl_8012B1F0:
/* 8012B1F0 00128150  2C 1F 00 24 */	cmpwi r31, 0x24
/* 8012B1F4 00128154  D0 3D 00 C4 */	stfs f1, 0xc4(r29)
/* 8012B1F8 00128158  41 80 00 10 */	blt lbl_8012B208
/* 8012B1FC 0012815C  7F C3 F3 78 */	mr r3, r30
/* 8012B200 00128160  48 21 3A 29 */	bl ReadFloat__12CInputStreamFv
/* 8012B204 00128164  48 00 00 08 */	b lbl_8012B20C
lbl_8012B208:
/* 8012B208 00128168  C0 22 98 7C */	lfs f1, lbl_805AB59C@sda21(r2)
lbl_8012B20C:
/* 8012B20C 0012816C  D0 3D 00 C8 */	stfs f1, 0xc8(r29)
/* 8012B210 00128170  38 7D 00 20 */	addi r3, r29, 0x20
/* 8012B214 00128174  48 21 5B 71 */	bl Lock__6CTokenFv
/* 8012B218 00128178  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012B21C 0012817C  7F A3 EB 78 */	mr r3, r29
/* 8012B220 00128180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8012B224 00128184  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8012B228 00128188  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8012B22C 0012818C  7C 08 03 A6 */	mtlr r0
/* 8012B230 00128190  38 21 00 20 */	addi r1, r1, 0x20
/* 8012B234 00128194  4E 80 00 20 */	blr

.global PreRender__14CPirateRagDollFRC9CVector3fR10CModelData
PreRender__14CPirateRagDollFRC9CVector3fR10CModelData:
/* 8012B238 00128198  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 8012B23C 0012819C  7C 08 02 A6 */	mflr r0
/* 8012B240 001281A0  90 01 02 94 */	stw r0, 0x294(r1)
/* 8012B244 001281A4  BF 21 02 74 */	stmw r25, 0x274(r1)
/* 8012B248 001281A8  7C 7A 1B 78 */	mr r26, r3
/* 8012B24C 001281AC  7C 9B 23 78 */	mr r27, r4
/* 8012B250 001281B0  7C BD 2B 78 */	mr r29, r5
/* 8012B254 001281B4  88 63 00 68 */	lbz r3, 0x68(r3)
/* 8012B258 001281B8  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8012B25C 001281BC  41 82 00 0C */	beq lbl_8012B268
/* 8012B260 001281C0  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 8012B264 001281C4  41 82 07 28 */	beq lbl_8012B98C
lbl_8012B268:
/* 8012B268 001281C8  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 8012B26C 001281CC  3C 60 80 5A */	lis r3, sNoRotation__11CQuaternion@ha
/* 8012B270 001281D0  38 63 66 60 */	addi r3, r3, sNoRotation__11CQuaternion@l
/* 8012B274 001281D4  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 8012B278 001281D8  3B DF 02 FC */	addi r30, r31, 0x2fc
/* 8012B27C 001281DC  3B 9E 00 40 */	addi r28, r30, 0x40
/* 8012B280 001281E0  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 8012B284 001281E4  48 00 00 70 */	b lbl_8012B2F4
lbl_8012B288:
/* 8012B288 001281E8  80 DF 00 D4 */	lwz r6, 0xd4(r31)
/* 8012B28C 001281EC  88 05 00 00 */	lbz r0, 0(r5)
/* 8012B290 001281F0  81 06 00 00 */	lwz r8, 0(r6)
/* 8012B294 001281F4  54 07 0D FC */	rlwinm r7, r0, 1, 0x17, 0x1e
/* 8012B298 001281F8  7C C8 3A 14 */	add r6, r8, r7
/* 8012B29C 001281FC  81 08 00 D0 */	lwz r8, 0xd0(r8)
/* 8012B2A0 00128200  88 06 00 09 */	lbz r0, 9(r6)
/* 8012B2A4 00128204  54 06 2C F4 */	rlwinm r6, r0, 5, 0x13, 0x1a
/* 8012B2A8 00128208  38 06 00 14 */	addi r0, r6, 0x14
/* 8012B2AC 0012820C  7C 08 00 2E */	lwzx r0, r8, r0
/* 8012B2B0 00128210  2C 00 00 01 */	cmpwi r0, 1
/* 8012B2B4 00128214  40 81 00 3C */	ble lbl_8012B2F0
/* 8012B2B8 00128218  38 07 00 01 */	addi r0, r7, 1
/* 8012B2BC 0012821C  3C C0 80 5A */	lis r6, sNoRotation__11CQuaternion@ha
/* 8012B2C0 00128220  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8012B2C4 00128224  80 FE 01 08 */	lwz r7, 0x108(r30)
/* 8012B2C8 00128228  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B2CC 0012822C  C0 06 66 60 */	lfs f0, sNoRotation__11CQuaternion@l(r6)
/* 8012B2D0 00128230  7C E7 02 14 */	add r7, r7, r0
/* 8012B2D4 00128234  D0 07 00 04 */	stfs f0, 4(r7)
/* 8012B2D8 00128238  80 C3 00 04 */	lwz r6, 4(r3)
/* 8012B2DC 0012823C  80 03 00 08 */	lwz r0, 8(r3)
/* 8012B2E0 00128240  90 C7 00 08 */	stw r6, 8(r7)
/* 8012B2E4 00128244  90 07 00 0C */	stw r0, 0xc(r7)
/* 8012B2E8 00128248  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8012B2EC 0012824C  90 07 00 10 */	stw r0, 0x10(r7)
lbl_8012B2F0:
/* 8012B2F0 00128250  38 A5 00 01 */	addi r5, r5, 1
lbl_8012B2F4:
/* 8012B2F4 00128254  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 8012B2F8 00128258  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8012B2FC 0012825C  7C 06 02 14 */	add r0, r6, r0
/* 8012B300 00128260  7C 05 00 40 */	cmplw r5, r0
/* 8012B304 00128264  40 82 FF 84 */	bne lbl_8012B288
/* 8012B308 00128268  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012B30C 0012826C  38 61 01 94 */	addi r3, r1, 0x194
/* 8012B310 00128270  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012B314 00128274  38 84 00 48 */	addi r4, r4, 0x48
/* 8012B318 00128278  4B ED 99 A1 */	bl string_l__4rstlFPCc
/* 8012B31C 0012827C  7F E4 FB 78 */	mr r4, r31
/* 8012B320 00128280  38 61 00 08 */	addi r3, r1, 8
/* 8012B324 00128284  38 A1 01 94 */	addi r5, r1, 0x194
/* 8012B328 00128288  4B F0 35 11 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012B32C 0012828C  8B 21 00 08 */	lbz r25, 8(r1)
/* 8012B330 00128290  38 61 01 94 */	addi r3, r1, 0x194
/* 8012B334 00128294  48 21 27 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012B338 00128298  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8012B33C 0012829C  57 20 0D FC */	rlwinm r0, r25, 1, 0x17, 0x1e
/* 8012B340 001282A0  C0 7D 00 00 */	lfs f3, 0(r29)
/* 8012B344 001282A4  7F 3C 02 14 */	add r25, r28, r0
/* 8012B348 001282A8  C0 85 02 04 */	lfs f4, 0x204(r5)
/* 8012B34C 001282AC  38 61 01 70 */	addi r3, r1, 0x170
/* 8012B350 001282B0  C0 45 02 C4 */	lfs f2, 0x2c4(r5)
/* 8012B354 001282B4  38 81 01 64 */	addi r4, r1, 0x164
/* 8012B358 001282B8  88 19 00 01 */	lbz r0, 1(r25)
/* 8012B35C 001282BC  EC A4 10 2A */	fadds f5, f4, f2
/* 8012B360 001282C0  C0 C2 97 D0 */	lfs f6, lbl_805AB4F0@sda21(r2)
/* 8012B364 001282C4  C0 25 02 08 */	lfs f1, 0x208(r5)
/* 8012B368 001282C8  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B36C 001282CC  C0 05 02 C8 */	lfs f0, 0x2c8(r5)
/* 8012B370 001282D0  EC A6 01 72 */	fmuls f5, f6, f5
/* 8012B374 001282D4  EC 81 00 2A */	fadds f4, f1, f0
/* 8012B378 001282D8  C0 1B 00 00 */	lfs f0, 0(r27)
/* 8012B37C 001282DC  C0 45 02 0C */	lfs f2, 0x20c(r5)
/* 8012B380 001282E0  EC A5 00 28 */	fsubs f5, f5, f0
/* 8012B384 001282E4  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8012B388 001282E8  EC E6 01 32 */	fmuls f7, f6, f4
/* 8012B38C 001282EC  C0 25 02 CC */	lfs f1, 0x2cc(r5)
/* 8012B390 001282F0  80 BE 01 08 */	lwz r5, 0x108(r30)
/* 8012B394 001282F4  EC E7 00 28 */	fsubs f7, f7, f0
/* 8012B398 001282F8  C0 9B 00 08 */	lfs f4, 8(r27)
/* 8012B39C 001282FC  EC 05 18 24 */	fdivs f0, f5, f3
/* 8012B3A0 00128300  7C A5 02 14 */	add r5, r5, r0
/* 8012B3A4 00128304  D0 61 01 7C */	stfs f3, 0x17c(r1)
/* 8012B3A8 00128308  D0 61 01 88 */	stfs f3, 0x188(r1)
/* 8012B3AC 0012830C  EC 22 08 2A */	fadds f1, f2, f1
/* 8012B3B0 00128310  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8012B3B4 00128314  D0 41 01 80 */	stfs f2, 0x180(r1)
/* 8012B3B8 00128318  ED 06 00 72 */	fmuls f8, f6, f1
/* 8012B3BC 0012831C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8012B3C0 00128320  D0 41 01 8C */	stfs f2, 0x18c(r1)
/* 8012B3C4 00128324  ED 08 20 28 */	fsubs f8, f8, f4
/* 8012B3C8 00128328  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8012B3CC 0012832C  EC 87 10 24 */	fdivs f4, f7, f2
/* 8012B3D0 00128330  D0 21 01 84 */	stfs f1, 0x184(r1)
/* 8012B3D4 00128334  D0 21 01 90 */	stfs f1, 0x190(r1)
/* 8012B3D8 00128338  EC 08 08 24 */	fdivs f0, f8, f1
/* 8012B3DC 0012833C  D0 85 00 18 */	stfs f4, 0x18(r5)
/* 8012B3E0 00128340  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8012B3E4 00128344  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8012B3E8 00128348  C0 25 00 88 */	lfs f1, 0x88(r5)
/* 8012B3EC 0012834C  C0 05 01 48 */	lfs f0, 0x148(r5)
/* 8012B3F0 00128350  C0 65 00 8C */	lfs f3, 0x8c(r5)
/* 8012B3F4 00128354  EC 81 00 28 */	fsubs f4, f1, f0
/* 8012B3F8 00128358  C0 45 01 4C */	lfs f2, 0x14c(r5)
/* 8012B3FC 0012835C  C0 25 00 84 */	lfs f1, 0x84(r5)
/* 8012B400 00128360  C0 05 01 44 */	lfs f0, 0x144(r5)
/* 8012B404 00128364  EC 43 10 28 */	fsubs f2, f3, f2
/* 8012B408 00128368  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012B40C 0012836C  D0 81 02 18 */	stfs f4, 0x218(r1)
/* 8012B410 00128370  D0 41 02 1C */	stfs f2, 0x21c(r1)
/* 8012B414 00128374  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 8012B418 00128378  C0 25 02 08 */	lfs f1, 0x208(r5)
/* 8012B41C 0012837C  C0 05 02 C8 */	lfs f0, 0x2c8(r5)
/* 8012B420 00128380  C0 45 02 0C */	lfs f2, 0x20c(r5)
/* 8012B424 00128384  EC A1 00 2A */	fadds f5, f1, f0
/* 8012B428 00128388  C0 05 02 CC */	lfs f0, 0x2cc(r5)
/* 8012B42C 0012838C  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 8012B430 00128390  EC 82 00 2A */	fadds f4, f2, f0
/* 8012B434 00128394  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 8012B438 00128398  ED 06 01 72 */	fmuls f8, f6, f5
/* 8012B43C 0012839C  EC 61 00 2A */	fadds f3, f1, f0
/* 8012B440 001283A0  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012B444 001283A4  EC E6 01 32 */	fmuls f7, f6, f4
/* 8012B448 001283A8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8012B44C 001283AC  ED 20 40 28 */	fsubs f9, f0, f8
/* 8012B450 001283B0  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8012B454 001283B4  C0 05 00 04 */	lfs f0, 4(r5)
/* 8012B458 001283B8  EC 21 38 28 */	fsubs f1, f1, f7
/* 8012B45C 001283BC  D0 61 01 4C */	stfs f3, 0x14c(r1)
/* 8012B460 001283C0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8012B464 001283C4  D0 A1 01 50 */	stfs f5, 0x150(r1)
/* 8012B468 001283C8  D0 81 01 54 */	stfs f4, 0x154(r1)
/* 8012B46C 001283CC  D0 41 01 58 */	stfs f2, 0x158(r1)
/* 8012B470 001283D0  D1 01 01 5C */	stfs f8, 0x15c(r1)
/* 8012B474 001283D4  D0 E1 01 60 */	stfs f7, 0x160(r1)
/* 8012B478 001283D8  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 8012B47C 001283DC  D1 21 01 68 */	stfs f9, 0x168(r1)
/* 8012B480 001283E0  D0 21 01 6C */	stfs f1, 0x16c(r1)
/* 8012B484 001283E4  48 1E 93 CD */	bl AsNormalized__9CVector3fCFv
/* 8012B488 001283E8  C0 A1 01 70 */	lfs f5, 0x170(r1)
/* 8012B48C 001283EC  38 61 01 40 */	addi r3, r1, 0x140
/* 8012B490 001283F0  C0 81 01 74 */	lfs f4, 0x174(r1)
/* 8012B494 001283F4  38 81 01 34 */	addi r4, r1, 0x134
/* 8012B498 001283F8  C0 61 01 78 */	lfs f3, 0x178(r1)
/* 8012B49C 001283FC  C0 C1 02 18 */	lfs f6, 0x218(r1)
/* 8012B4A0 00128400  C0 E1 02 1C */	lfs f7, 0x21c(r1)
/* 8012B4A4 00128404  C1 01 02 14 */	lfs f8, 0x214(r1)
/* 8012B4A8 00128408  EC 46 00 F2 */	fmuls f2, f6, f3
/* 8012B4AC 0012840C  EC 27 01 72 */	fmuls f1, f7, f5
/* 8012B4B0 00128410  D0 A1 02 08 */	stfs f5, 0x208(r1)
/* 8012B4B4 00128414  EC 08 01 32 */	fmuls f0, f8, f4
/* 8012B4B8 00128418  EC 44 11 F8 */	fmsubs f2, f4, f7, f2
/* 8012B4BC 0012841C  D0 81 02 0C */	stfs f4, 0x20c(r1)
/* 8012B4C0 00128420  EC 23 0A 38 */	fmsubs f1, f3, f8, f1
/* 8012B4C4 00128424  EC 05 01 B8 */	fmsubs f0, f5, f6, f0
/* 8012B4C8 00128428  D0 61 02 10 */	stfs f3, 0x210(r1)
/* 8012B4CC 0012842C  D0 41 01 34 */	stfs f2, 0x134(r1)
/* 8012B4D0 00128430  D0 21 01 38 */	stfs f1, 0x138(r1)
/* 8012B4D4 00128434  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8012B4D8 00128438  48 1E 93 79 */	bl AsNormalized__9CVector3fCFv
/* 8012B4DC 0012843C  C0 A1 01 40 */	lfs f5, 0x140(r1)
/* 8012B4E0 00128440  38 61 02 44 */	addi r3, r1, 0x244
/* 8012B4E4 00128444  C0 81 01 44 */	lfs f4, 0x144(r1)
/* 8012B4E8 00128448  38 81 02 14 */	addi r4, r1, 0x214
/* 8012B4EC 0012844C  C0 61 01 48 */	lfs f3, 0x148(r1)
/* 8012B4F0 00128450  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 8012B4F4 00128454  C0 C1 02 0C */	lfs f6, 0x20c(r1)
/* 8012B4F8 00128458  38 C1 02 08 */	addi r6, r1, 0x208
/* 8012B4FC 0012845C  C0 E1 02 10 */	lfs f7, 0x210(r1)
/* 8012B500 00128460  C1 01 02 08 */	lfs f8, 0x208(r1)
/* 8012B504 00128464  EC 26 00 F2 */	fmuls f1, f6, f3
/* 8012B508 00128468  EC 07 01 72 */	fmuls f0, f7, f5
/* 8012B50C 0012846C  D0 A1 01 FC */	stfs f5, 0x1fc(r1)
/* 8012B510 00128470  EC 48 01 32 */	fmuls f2, f8, f4
/* 8012B514 00128474  EC 24 09 F8 */	fmsubs f1, f4, f7, f1
/* 8012B518 00128478  D0 81 02 00 */	stfs f4, 0x200(r1)
/* 8012B51C 0012847C  EC 03 02 38 */	fmsubs f0, f3, f8, f0
/* 8012B520 00128480  EC 45 11 B8 */	fmsubs f2, f5, f6, f2
/* 8012B524 00128484  D0 61 02 04 */	stfs f3, 0x204(r1)
/* 8012B528 00128488  D0 21 02 14 */	stfs f1, 0x214(r1)
/* 8012B52C 0012848C  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 8012B530 00128490  D0 41 02 1C */	stfs f2, 0x21c(r1)
/* 8012B534 00128494  48 1E 51 49 */	bl __ct__9CMatrix3fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 8012B538 00128498  C1 01 02 44 */	lfs f8, 0x244(r1)
/* 8012B53C 0012849C  38 61 01 24 */	addi r3, r1, 0x124
/* 8012B540 001284A0  C0 E1 02 50 */	lfs f7, 0x250(r1)
/* 8012B544 001284A4  38 81 02 20 */	addi r4, r1, 0x220
/* 8012B548 001284A8  C0 C1 02 5C */	lfs f6, 0x25c(r1)
/* 8012B54C 001284AC  C0 A1 02 48 */	lfs f5, 0x248(r1)
/* 8012B550 001284B0  C0 81 02 54 */	lfs f4, 0x254(r1)
/* 8012B554 001284B4  C0 61 02 60 */	lfs f3, 0x260(r1)
/* 8012B558 001284B8  C0 41 02 4C */	lfs f2, 0x24c(r1)
/* 8012B55C 001284BC  C0 21 02 58 */	lfs f1, 0x258(r1)
/* 8012B560 001284C0  C0 01 02 64 */	lfs f0, 0x264(r1)
/* 8012B564 001284C4  D1 01 02 20 */	stfs f8, 0x220(r1)
/* 8012B568 001284C8  D0 E1 02 24 */	stfs f7, 0x224(r1)
/* 8012B56C 001284CC  D0 C1 02 28 */	stfs f6, 0x228(r1)
/* 8012B570 001284D0  D0 A1 02 2C */	stfs f5, 0x22c(r1)
/* 8012B574 001284D4  D0 81 02 30 */	stfs f4, 0x230(r1)
/* 8012B578 001284D8  D0 61 02 34 */	stfs f3, 0x234(r1)
/* 8012B57C 001284DC  D0 41 02 38 */	stfs f2, 0x238(r1)
/* 8012B580 001284E0  D0 21 02 3C */	stfs f1, 0x23c(r1)
/* 8012B584 001284E4  D0 01 02 40 */	stfs f0, 0x240(r1)
/* 8012B588 001284E8  48 1E 6B F9 */	bl FromMatrix__11CQuaternionFRC9CMatrix3f
/* 8012B58C 001284EC  C0 61 01 24 */	lfs f3, 0x124(r1)
/* 8012B590 001284F0  C0 41 01 28 */	lfs f2, 0x128(r1)
/* 8012B594 001284F4  C0 21 01 2C */	lfs f1, 0x12c(r1)
/* 8012B598 001284F8  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 8012B59C 001284FC  D0 61 01 EC */	stfs f3, 0x1ec(r1)
/* 8012B5A0 00128500  D0 41 01 F0 */	stfs f2, 0x1f0(r1)
/* 8012B5A4 00128504  D0 21 01 F4 */	stfs f1, 0x1f4(r1)
/* 8012B5A8 00128508  D0 01 01 F8 */	stfs f0, 0x1f8(r1)
/* 8012B5AC 0012850C  88 19 00 01 */	lbz r0, 1(r25)
/* 8012B5B0 00128510  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8012B5B4 00128514  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B5B8 00128518  7C 83 02 14 */	add r4, r3, r0
/* 8012B5BC 0012851C  D0 64 00 04 */	stfs f3, 4(r4)
/* 8012B5C0 00128520  80 61 01 F0 */	lwz r3, 0x1f0(r1)
/* 8012B5C4 00128524  80 01 01 F4 */	lwz r0, 0x1f4(r1)
/* 8012B5C8 00128528  90 64 00 08 */	stw r3, 8(r4)
/* 8012B5CC 0012852C  90 04 00 0C */	stw r0, 0xc(r4)
/* 8012B5D0 00128530  80 01 01 F8 */	lwz r0, 0x1f8(r1)
/* 8012B5D4 00128534  90 04 00 10 */	stw r0, 0x10(r4)
/* 8012B5D8 00128538  80 7A 00 6C */	lwz r3, 0x6c(r26)
/* 8012B5DC 0012853C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012B5E0 00128540  A0 63 07 B4 */	lhz r3, 0x7b4(r3)
/* 8012B5E4 00128544  83 BF 00 D4 */	lwz r29, 0xd4(r31)
/* 8012B5E8 00128548  7C 03 00 40 */	cmplw r3, r0
/* 8012B5EC 0012854C  40 82 01 24 */	bne lbl_8012B710
/* 8012B5F0 00128550  80 BA 00 10 */	lwz r5, 0x10(r26)
/* 8012B5F4 00128554  7F A4 EB 78 */	mr r4, r29
/* 8012B5F8 00128558  38 61 01 18 */	addi r3, r1, 0x118
/* 8012B5FC 0012855C  38 A5 00 40 */	addi r5, r5, 0x40
/* 8012B600 00128560  48 00 03 A1 */	bl GetFromParentUnrotated__15CCharLayoutInfoCFRC6CSegId
/* 8012B604 00128564  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 8012B608 00128568  38 61 01 0C */	addi r3, r1, 0x10c
/* 8012B60C 0012856C  C0 21 01 1C */	lfs f1, 0x11c(r1)
/* 8012B610 00128570  38 81 00 FC */	addi r4, r1, 0xfc
/* 8012B614 00128574  C0 41 01 20 */	lfs f2, 0x120(r1)
/* 8012B618 00128578  38 A1 01 D4 */	addi r5, r1, 0x1d4
/* 8012B61C 0012857C  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 8012B620 00128580  C0 01 01 F8 */	lfs f0, 0x1f8(r1)
/* 8012B624 00128584  D0 21 01 E4 */	stfs f1, 0x1e4(r1)
/* 8012B628 00128588  C0 21 01 F4 */	lfs f1, 0x1f4(r1)
/* 8012B62C 0012858C  FD 00 00 50 */	fneg f8, f0
/* 8012B630 00128590  D0 41 01 E8 */	stfs f2, 0x1e8(r1)
/* 8012B634 00128594  C0 01 01 F0 */	lfs f0, 0x1f0(r1)
/* 8012B638 00128598  FC E0 08 50 */	fneg f7, f1
/* 8012B63C 0012859C  80 DA 00 10 */	lwz r6, 0x10(r26)
/* 8012B640 001285A0  FC C0 00 50 */	fneg f6, f0
/* 8012B644 001285A4  C0 01 01 EC */	lfs f0, 0x1ec(r1)
/* 8012B648 001285A8  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 8012B64C 001285AC  C0 26 00 08 */	lfs f1, 8(r6)
/* 8012B650 001285B0  C0 86 00 4C */	lfs f4, 0x4c(r6)
/* 8012B654 001285B4  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8012B658 001285B8  EC A2 08 28 */	fsubs f5, f2, f1
/* 8012B65C 001285BC  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 8012B660 001285C0  C0 26 00 04 */	lfs f1, 4(r6)
/* 8012B664 001285C4  EC 64 18 28 */	fsubs f3, f4, f3
/* 8012B668 001285C8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8012B66C 001285CC  D0 A1 01 D8 */	stfs f5, 0x1d8(r1)
/* 8012B670 001285D0  D0 61 01 DC */	stfs f3, 0x1dc(r1)
/* 8012B674 001285D4  D0 21 01 D4 */	stfs f1, 0x1d4(r1)
/* 8012B678 001285D8  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8012B67C 001285DC  D0 C1 01 00 */	stfs f6, 0x100(r1)
/* 8012B680 001285E0  D0 E1 01 04 */	stfs f7, 0x104(r1)
/* 8012B684 001285E4  D1 01 01 08 */	stfs f8, 0x108(r1)
/* 8012B688 001285E8  48 1E 5B DD */	bl Transform__11CQuaternionCFRC9CVector3f
/* 8012B68C 001285EC  C0 41 01 0C */	lfs f2, 0x10c(r1)
/* 8012B690 001285F0  38 61 00 EC */	addi r3, r1, 0xec
/* 8012B694 001285F4  C0 21 01 10 */	lfs f1, 0x110(r1)
/* 8012B698 001285F8  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 8012B69C 001285FC  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 8012B6A0 00128600  38 A1 01 D4 */	addi r5, r1, 0x1d4
/* 8012B6A4 00128604  D0 41 01 D4 */	stfs f2, 0x1d4(r1)
/* 8012B6A8 00128608  D0 21 01 D8 */	stfs f1, 0x1d8(r1)
/* 8012B6AC 0012860C  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 8012B6B0 00128610  48 1E 64 09 */	bl ShortestRotationArc__11CQuaternionFRC9CVector3fRC9CVector3f
/* 8012B6B4 00128614  80 7A 00 10 */	lwz r3, 0x10(r26)
/* 8012B6B8 00128618  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8012B6BC 0012861C  88 03 00 40 */	lbz r0, 0x40(r3)
/* 8012B6C0 00128620  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 8012B6C4 00128624  54 03 08 3C */	slwi r3, r0, 1
/* 8012B6C8 00128628  C0 41 00 EC */	lfs f2, 0xec(r1)
/* 8012B6CC 0012862C  38 03 00 01 */	addi r0, r3, 1
/* 8012B6D0 00128630  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 8012B6D4 00128634  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8012B6D8 00128638  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8012B6DC 0012863C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 8012B6E0 00128640  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B6E4 00128644  7C 83 02 14 */	add r4, r3, r0
/* 8012B6E8 00128648  D0 21 01 CC */	stfs f1, 0x1cc(r1)
/* 8012B6EC 0012864C  80 01 01 C8 */	lwz r0, 0x1c8(r1)
/* 8012B6F0 00128650  D0 44 00 04 */	stfs f2, 4(r4)
/* 8012B6F4 00128654  80 61 01 CC */	lwz r3, 0x1cc(r1)
/* 8012B6F8 00128658  90 04 00 08 */	stw r0, 8(r4)
/* 8012B6FC 0012865C  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 8012B700 00128660  80 01 01 D0 */	lwz r0, 0x1d0(r1)
/* 8012B704 00128664  90 64 00 0C */	stw r3, 0xc(r4)
/* 8012B708 00128668  D0 41 01 C4 */	stfs f2, 0x1c4(r1)
/* 8012B70C 0012866C  90 04 00 10 */	stw r0, 0x10(r4)
lbl_8012B710:
/* 8012B710 00128670  7F 44 D3 78 */	mr r4, r26
/* 8012B714 00128674  7F C5 F3 78 */	mr r5, r30
/* 8012B718 00128678  7F A6 EB 78 */	mr r6, r29
/* 8012B71C 0012867C  38 61 00 DC */	addi r3, r1, 0xdc
/* 8012B720 00128680  39 21 01 EC */	addi r9, r1, 0x1ec
/* 8012B724 00128684  38 E0 00 02 */	li r7, 2
/* 8012B728 00128688  39 00 00 03 */	li r8, 3
/* 8012B72C 0012868C  48 0E 12 31 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B730 00128690  C0 61 00 DC */	lfs f3, 0xdc(r1)
/* 8012B734 00128694  38 61 00 BC */	addi r3, r1, 0xbc
/* 8012B738 00128698  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 8012B73C 0012869C  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8012B740 001286A0  C0 21 00 E4 */	lfs f1, 0xe4(r1)
/* 8012B744 001286A4  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8012B748 001286A8  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 8012B74C 001286AC  D0 61 01 B4 */	stfs f3, 0x1b4(r1)
/* 8012B750 001286B0  D0 41 01 B8 */	stfs f2, 0x1b8(r1)
/* 8012B754 001286B4  D0 21 01 BC */	stfs f1, 0x1bc(r1)
/* 8012B758 001286B8  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 8012B75C 001286BC  48 1E 5A 45 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8012B760 001286C0  7F 44 D3 78 */	mr r4, r26
/* 8012B764 001286C4  7F C5 F3 78 */	mr r5, r30
/* 8012B768 001286C8  7F A6 EB 78 */	mr r6, r29
/* 8012B76C 001286CC  38 61 00 CC */	addi r3, r1, 0xcc
/* 8012B770 001286D0  39 21 00 BC */	addi r9, r1, 0xbc
/* 8012B774 001286D4  38 E0 00 03 */	li r7, 3
/* 8012B778 001286D8  39 00 00 04 */	li r8, 4
/* 8012B77C 001286DC  48 0E 11 E1 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B780 001286E0  7F 44 D3 78 */	mr r4, r26
/* 8012B784 001286E4  7F C5 F3 78 */	mr r5, r30
/* 8012B788 001286E8  7F A6 EB 78 */	mr r6, r29
/* 8012B78C 001286EC  38 61 00 AC */	addi r3, r1, 0xac
/* 8012B790 001286F0  39 21 01 EC */	addi r9, r1, 0x1ec
/* 8012B794 001286F4  38 E0 00 05 */	li r7, 5
/* 8012B798 001286F8  39 00 00 06 */	li r8, 6
/* 8012B79C 001286FC  48 0E 11 C1 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B7A0 00128700  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8012B7A4 00128704  38 61 00 8C */	addi r3, r1, 0x8c
/* 8012B7A8 00128708  80 E1 00 B0 */	lwz r7, 0xb0(r1)
/* 8012B7AC 0012870C  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8012B7B0 00128710  80 C1 00 B4 */	lwz r6, 0xb4(r1)
/* 8012B7B4 00128714  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8012B7B8 00128718  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 8012B7BC 0012871C  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8012B7C0 00128720  90 E1 01 B8 */	stw r7, 0x1b8(r1)
/* 8012B7C4 00128724  90 C1 01 BC */	stw r6, 0x1bc(r1)
/* 8012B7C8 00128728  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 8012B7CC 0012872C  48 1E 59 D5 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8012B7D0 00128730  7F 44 D3 78 */	mr r4, r26
/* 8012B7D4 00128734  7F C5 F3 78 */	mr r5, r30
/* 8012B7D8 00128738  7F A6 EB 78 */	mr r6, r29
/* 8012B7DC 0012873C  38 61 00 9C */	addi r3, r1, 0x9c
/* 8012B7E0 00128740  39 21 00 8C */	addi r9, r1, 0x8c
/* 8012B7E4 00128744  38 E0 00 06 */	li r7, 6
/* 8012B7E8 00128748  39 00 00 07 */	li r8, 7
/* 8012B7EC 0012874C  48 0E 11 71 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B7F0 00128750  7F 44 D3 78 */	mr r4, r26
/* 8012B7F4 00128754  7F C5 F3 78 */	mr r5, r30
/* 8012B7F8 00128758  7F A6 EB 78 */	mr r6, r29
/* 8012B7FC 0012875C  38 61 00 7C */	addi r3, r1, 0x7c
/* 8012B800 00128760  39 21 01 EC */	addi r9, r1, 0x1ec
/* 8012B804 00128764  38 E0 00 08 */	li r7, 8
/* 8012B808 00128768  39 00 00 09 */	li r8, 9
/* 8012B80C 0012876C  48 0E 11 51 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B810 00128770  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8012B814 00128774  38 61 00 5C */	addi r3, r1, 0x5c
/* 8012B818 00128778  80 E1 00 80 */	lwz r7, 0x80(r1)
/* 8012B81C 0012877C  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8012B820 00128780  80 C1 00 84 */	lwz r6, 0x84(r1)
/* 8012B824 00128784  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8012B828 00128788  80 01 00 88 */	lwz r0, 0x88(r1)
/* 8012B82C 0012878C  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8012B830 00128790  90 E1 01 B8 */	stw r7, 0x1b8(r1)
/* 8012B834 00128794  90 C1 01 BC */	stw r6, 0x1bc(r1)
/* 8012B838 00128798  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 8012B83C 0012879C  48 1E 59 65 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8012B840 001287A0  7F 44 D3 78 */	mr r4, r26
/* 8012B844 001287A4  7F C5 F3 78 */	mr r5, r30
/* 8012B848 001287A8  7F A6 EB 78 */	mr r6, r29
/* 8012B84C 001287AC  38 61 00 6C */	addi r3, r1, 0x6c
/* 8012B850 001287B0  39 21 00 5C */	addi r9, r1, 0x5c
/* 8012B854 001287B4  38 E0 00 09 */	li r7, 9
/* 8012B858 001287B8  39 00 00 0A */	li r8, 0xa
/* 8012B85C 001287BC  48 0E 11 01 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B860 001287C0  7F 44 D3 78 */	mr r4, r26
/* 8012B864 001287C4  7F C5 F3 78 */	mr r5, r30
/* 8012B868 001287C8  7F A6 EB 78 */	mr r6, r29
/* 8012B86C 001287CC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8012B870 001287D0  39 21 01 EC */	addi r9, r1, 0x1ec
/* 8012B874 001287D4  38 E0 00 0B */	li r7, 0xb
/* 8012B878 001287D8  39 00 00 0C */	li r8, 0xc
/* 8012B87C 001287DC  48 0E 10 E1 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B880 001287E0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8012B884 001287E4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8012B888 001287E8  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 8012B88C 001287EC  38 81 01 EC */	addi r4, r1, 0x1ec
/* 8012B890 001287F0  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 8012B894 001287F4  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8012B898 001287F8  80 01 00 58 */	lwz r0, 0x58(r1)
/* 8012B89C 001287FC  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8012B8A0 00128800  90 E1 01 B8 */	stw r7, 0x1b8(r1)
/* 8012B8A4 00128804  90 C1 01 BC */	stw r6, 0x1bc(r1)
/* 8012B8A8 00128808  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 8012B8AC 0012880C  48 1E 58 F5 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 8012B8B0 00128810  7F 44 D3 78 */	mr r4, r26
/* 8012B8B4 00128814  7F C5 F3 78 */	mr r5, r30
/* 8012B8B8 00128818  7F A6 EB 78 */	mr r6, r29
/* 8012B8BC 0012881C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8012B8C0 00128820  39 21 00 2C */	addi r9, r1, 0x2c
/* 8012B8C4 00128824  38 E0 00 0C */	li r7, 0xc
/* 8012B8C8 00128828  39 00 00 0D */	li r8, 0xd
/* 8012B8CC 0012882C  48 0E 10 91 */	bl BoneAlign__8CRagDollFR21CHierarchyPoseBuilderRC15CCharLayoutInfoiiRC11CQuaternion
/* 8012B8D0 00128830  C0 02 98 80 */	lfs f0, lbl_805AB5A0@sda21(r2)
/* 8012B8D4 00128834  38 61 00 1C */	addi r3, r1, 0x1c
/* 8012B8D8 00128838  38 81 00 0C */	addi r4, r1, 0xc
/* 8012B8DC 0012883C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012B8E0 00128840  48 1E 58 89 */	bl XRotation__11CQuaternionFRC9CRelAngle
/* 8012B8E4 00128844  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8012B8E8 00128848  38 60 00 00 */	li r3, 0
/* 8012B8EC 0012884C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8012B8F0 00128850  88 04 02 80 */	lbz r0, 0x280(r4)
/* 8012B8F4 00128854  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8012B8F8 00128858  54 04 08 3C */	slwi r4, r0, 1
/* 8012B8FC 0012885C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 8012B900 00128860  38 04 00 01 */	addi r0, r4, 1
/* 8012B904 00128864  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8012B908 00128868  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8012B90C 0012886C  80 9E 01 08 */	lwz r4, 0x108(r30)
/* 8012B910 00128870  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8012B914 00128874  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B918 00128878  7C 84 02 14 */	add r4, r4, r0
/* 8012B91C 0012887C  D0 21 01 AC */	stfs f1, 0x1ac(r1)
/* 8012B920 00128880  81 01 01 A8 */	lwz r8, 0x1a8(r1)
/* 8012B924 00128884  D0 44 00 04 */	stfs f2, 4(r4)
/* 8012B928 00128888  80 E1 01 AC */	lwz r7, 0x1ac(r1)
/* 8012B92C 0012888C  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 8012B930 00128890  91 04 00 08 */	stw r8, 8(r4)
/* 8012B934 00128894  80 C1 01 B0 */	lwz r6, 0x1b0(r1)
/* 8012B938 00128898  90 E4 00 0C */	stw r7, 0xc(r4)
/* 8012B93C 0012889C  90 C4 00 10 */	stw r6, 0x10(r4)
/* 8012B940 001288A0  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 8012B944 001288A4  80 BE 01 08 */	lwz r5, 0x108(r30)
/* 8012B948 001288A8  88 04 03 40 */	lbz r0, 0x340(r4)
/* 8012B94C 001288AC  D0 41 01 A4 */	stfs f2, 0x1a4(r1)
/* 8012B950 001288B0  54 04 08 3C */	slwi r4, r0, 1
/* 8012B954 001288B4  38 04 00 01 */	addi r0, r4, 1
/* 8012B958 001288B8  91 01 00 10 */	stw r8, 0x10(r1)
/* 8012B95C 001288BC  7C 1C 00 AE */	lbzx r0, r28, r0
/* 8012B960 001288C0  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8012B964 001288C4  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8012B968 001288C8  7C 85 02 14 */	add r4, r5, r0
/* 8012B96C 001288CC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8012B970 001288D0  D0 44 00 04 */	stfs f2, 4(r4)
/* 8012B974 001288D4  91 04 00 08 */	stw r8, 8(r4)
/* 8012B978 001288D8  90 E4 00 0C */	stw r7, 0xc(r4)
/* 8012B97C 001288DC  90 C4 00 10 */	stw r6, 0x10(r4)
/* 8012B980 001288E0  88 1F 02 20 */	lbz r0, 0x220(r31)
/* 8012B984 001288E4  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 8012B988 001288E8  98 1F 02 20 */	stb r0, 0x220(r31)
lbl_8012B98C:
/* 8012B98C 001288EC  BB 21 02 74 */	lmw r25, 0x274(r1)
/* 8012B990 001288F0  80 01 02 94 */	lwz r0, 0x294(r1)
/* 8012B994 001288F4  7C 08 03 A6 */	mtlr r0
/* 8012B998 001288F8  38 21 02 90 */	addi r1, r1, 0x290
/* 8012B99C 001288FC  4E 80 00 20 */	blr

.global GetFromParentUnrotated__15CCharLayoutInfoCFRC6CSegId
GetFromParentUnrotated__15CCharLayoutInfoCFRC6CSegId:
/* 8012B9A0 00128900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012B9A4 00128904  88 05 00 00 */	lbz r0, 0(r5)
/* 8012B9A8 00128908  38 A0 00 00 */	li r5, 0
/* 8012B9AC 0012890C  81 24 00 00 */	lwz r9, 0(r4)
/* 8012B9B0 00128910  54 04 08 3C */	slwi r4, r0, 1
/* 8012B9B4 00128914  88 0D 8A 94 */	lbz r0, lbl_805A7654@sda21(r13)
/* 8012B9B8 00128918  7C C9 22 14 */	add r6, r9, r4
/* 8012B9BC 0012891C  88 8D 8A 95 */	lbz r4, lbl_805A7655@sda21(r13)
/* 8012B9C0 00128920  88 C6 00 09 */	lbz r6, 9(r6)
/* 8012B9C4 00128924  7C 00 07 74 */	extsb r0, r0
/* 8012B9C8 00128928  80 E9 00 D0 */	lwz r7, 0xd0(r9)
/* 8012B9CC 0012892C  7C 88 07 74 */	extsb r8, r4
/* 8012B9D0 00128930  54 C4 2C F4 */	rlwinm r4, r6, 5, 0x13, 0x1a
/* 8012B9D4 00128934  7C C7 22 14 */	add r6, r7, r4
/* 8012B9D8 00128938  89 46 00 00 */	lbz r10, 0(r6)
/* 8012B9DC 0012893C  55 44 0D FC */	rlwinm r4, r10, 1, 0x17, 0x1e
/* 8012B9E0 00128940  7C E9 22 14 */	add r7, r9, r4
/* 8012B9E4 00128944  88 87 00 08 */	lbz r4, 8(r7)
/* 8012B9E8 00128948  7C 84 07 74 */	extsb r4, r4
/* 8012B9EC 0012894C  7C 04 00 00 */	cmpw r4, r0
/* 8012B9F0 00128950  40 82 00 14 */	bne lbl_8012BA04
/* 8012B9F4 00128954  88 07 00 09 */	lbz r0, 9(r7)
/* 8012B9F8 00128958  7C 00 07 74 */	extsb r0, r0
/* 8012B9FC 0012895C  7C 00 40 00 */	cmpw r0, r8
/* 8012BA00 00128960  41 82 00 08 */	beq lbl_8012BA08
lbl_8012BA04:
/* 8012BA04 00128964  38 A0 00 01 */	li r5, 1
lbl_8012BA08:
/* 8012BA08 00128968  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8012BA0C 0012896C  40 82 00 0C */	bne lbl_8012BA18
/* 8012BA10 00128970  38 E6 00 04 */	addi r7, r6, 4
/* 8012BA14 00128974  48 00 00 54 */	b lbl_8012BA68
lbl_8012BA18:
/* 8012BA18 00128978  55 40 0D FC */	rlwinm r0, r10, 1, 0x17, 0x1e
/* 8012BA1C 0012897C  80 A9 00 D0 */	lwz r5, 0xd0(r9)
/* 8012BA20 00128980  7C 89 02 14 */	add r4, r9, r0
/* 8012BA24 00128984  C0 A6 00 08 */	lfs f5, 8(r6)
/* 8012BA28 00128988  88 04 00 09 */	lbz r0, 9(r4)
/* 8012BA2C 0012898C  38 E1 00 08 */	addi r7, r1, 8
/* 8012BA30 00128990  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 8012BA34 00128994  54 04 2C F4 */	rlwinm r4, r0, 5, 0x13, 0x1a
/* 8012BA38 00128998  C0 26 00 04 */	lfs f1, 4(r6)
/* 8012BA3C 0012899C  38 84 00 04 */	addi r4, r4, 4
/* 8012BA40 001289A0  7C 85 22 14 */	add r4, r5, r4
/* 8012BA44 001289A4  C0 84 00 04 */	lfs f4, 4(r4)
/* 8012BA48 001289A8  C0 44 00 08 */	lfs f2, 8(r4)
/* 8012BA4C 001289AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8012BA50 001289B0  EC 85 20 28 */	fsubs f4, f5, f4
/* 8012BA54 001289B4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8012BA58 001289B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BA5C 001289BC  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8012BA60 001289C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8012BA64 001289C4  D0 41 00 10 */	stfs f2, 0x10(r1)
lbl_8012BA68:
/* 8012BA68 001289C8  C0 07 00 00 */	lfs f0, 0(r7)
/* 8012BA6C 001289CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8012BA70 001289D0  C0 07 00 04 */	lfs f0, 4(r7)
/* 8012BA74 001289D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8012BA78 001289D8  C0 07 00 08 */	lfs f0, 8(r7)
/* 8012BA7C 001289DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012BA80 001289E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8012BA84 001289E4  4E 80 00 20 */	blr

.global Update__14CPirateRagDollFR13CStateManagerf
Update__14CPirateRagDollFR13CStateManagerf:
/* 8012BA88 001289E8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8012BA8C 001289EC  7C 08 02 A6 */	mflr r0
/* 8012BA90 001289F0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8012BA94 001289F4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8012BA98 001289F8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8012BA9C 001289FC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8012BAA0 00128A00  F3 C1 00 98 */	psq_st f30, 152(r1), 0, qr0
/* 8012BAA4 00128A04  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8012BAA8 00128A08  F3 A1 00 88 */	psq_st f29, 136(r1), 0, qr0
/* 8012BAAC 00128A0C  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 8012BAB0 00128A10  7C 7E 1B 78 */	mr r30, r3
/* 8012BAB4 00128A14  88 63 00 68 */	lbz r3, 0x68(r3)
/* 8012BAB8 00128A18  FF A0 08 90 */	fmr f29, f1
/* 8012BABC 00128A1C  7C 9F 23 78 */	mr r31, r4
/* 8012BAC0 00128A20  FF C0 10 90 */	fmr f30, f2
/* 8012BAC4 00128A24  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8012BAC8 00128A28  41 82 00 0C */	beq lbl_8012BAD4
/* 8012BACC 00128A2C  54 60 E7 FF */	rlwinm. r0, r3, 0x1c, 0x1f, 0x1f
/* 8012BAD0 00128A30  41 82 06 88 */	beq lbl_8012C158
lbl_8012BAD4:
/* 8012BAD4 00128A34  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012BAD8 00128A38  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8012BADC 00128A3C  A0 63 07 B4 */	lhz r3, 0x7b4(r3)
/* 8012BAE0 00128A40  7C 03 00 40 */	cmplw r3, r0
/* 8012BAE4 00128A44  41 82 01 70 */	beq lbl_8012BC54
/* 8012BAE8 00128A48  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8012BAEC 00128A4C  C0 02 98 84 */	lfs f0, lbl_805AB5A4@sda21(r2)
/* 8012BAF0 00128A50  C0 43 00 8C */	lfs f2, 0x8c(r3)
/* 8012BAF4 00128A54  C0 23 01 4C */	lfs f1, 0x14c(r3)
/* 8012BAF8 00128A58  EC 42 08 28 */	fsubs f2, f2, f1
/* 8012BAFC 00128A5C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8012BB00 00128A60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012BB04 00128A64  40 81 00 7C */	ble lbl_8012BB80
/* 8012BB08 00128A68  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012BB0C 00128A6C  C0 22 98 08 */	lfs f1, lbl_805AB528@sda21(r2)
/* 8012BB10 00128A70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012BB14 00128A74  40 81 00 10 */	ble lbl_8012BB24
/* 8012BB18 00128A78  C0 02 97 F0 */	lfs f0, lbl_805AB510@sda21(r2)
/* 8012BB1C 00128A7C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8012BB20 00128A80  48 00 00 0C */	b lbl_8012BB2C
lbl_8012BB24:
/* 8012BB24 00128A84  C0 02 97 F0 */	lfs f0, lbl_805AB510@sda21(r2)
/* 8012BB28 00128A88  EC 00 10 2A */	fadds f0, f0, f2
lbl_8012BB2C:
/* 8012BB2C 00128A8C  C0 62 97 BC */	lfs f3, lbl_805AB4DC@sda21(r2)
/* 8012BB30 00128A90  EC 81 00 32 */	fmuls f4, f1, f0
/* 8012BB34 00128A94  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 8012BB38 00128A98  C0 43 00 88 */	lfs f2, 0x88(r3)
/* 8012BB3C 00128A9C  C0 23 00 8C */	lfs f1, 0x8c(r3)
/* 8012BB40 00128AA0  EC 00 18 28 */	fsubs f0, f0, f3
/* 8012BB44 00128AA4  EC 42 18 28 */	fsubs f2, f2, f3
/* 8012BB48 00128AA8  EC 21 20 28 */	fsubs f1, f1, f4
/* 8012BB4C 00128AAC  D0 03 00 84 */	stfs f0, 0x84(r3)
/* 8012BB50 00128AB0  D0 43 00 88 */	stfs f2, 0x88(r3)
/* 8012BB54 00128AB4  D0 23 00 8C */	stfs f1, 0x8c(r3)
/* 8012BB58 00128AB8  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8012BB5C 00128ABC  C0 03 01 44 */	lfs f0, 0x144(r3)
/* 8012BB60 00128AC0  C0 43 01 48 */	lfs f2, 0x148(r3)
/* 8012BB64 00128AC4  C0 23 01 4C */	lfs f1, 0x14c(r3)
/* 8012BB68 00128AC8  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BB6C 00128ACC  EC 42 18 2A */	fadds f2, f2, f3
/* 8012BB70 00128AD0  EC 21 20 2A */	fadds f1, f1, f4
/* 8012BB74 00128AD4  D0 03 01 44 */	stfs f0, 0x144(r3)
/* 8012BB78 00128AD8  D0 43 01 48 */	stfs f2, 0x148(r3)
/* 8012BB7C 00128ADC  D0 23 01 4C */	stfs f1, 0x14c(r3)
lbl_8012BB80:
/* 8012BB80 00128AE0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8012BB84 00128AE4  C0 62 97 D0 */	lfs f3, lbl_805AB4F0@sda21(r2)
/* 8012BB88 00128AE8  C0 43 02 0C */	lfs f2, 0x20c(r3)
/* 8012BB8C 00128AEC  C0 03 02 CC */	lfs f0, 0x2cc(r3)
/* 8012BB90 00128AF0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8012BB94 00128AF4  EC 42 00 2A */	fadds f2, f2, f0
/* 8012BB98 00128AF8  C0 02 98 84 */	lfs f0, lbl_805AB5A4@sda21(r2)
/* 8012BB9C 00128AFC  EC 43 08 BC */	fnmsubs f2, f3, f2, f1
/* 8012BBA0 00128B00  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8012BBA4 00128B04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012BBA8 00128B08  40 81 00 AC */	ble lbl_8012BC54
/* 8012BBAC 00128B0C  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012BBB0 00128B10  C0 22 98 08 */	lfs f1, lbl_805AB528@sda21(r2)
/* 8012BBB4 00128B14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012BBB8 00128B18  40 81 00 10 */	ble lbl_8012BBC8
/* 8012BBBC 00128B1C  C0 02 97 F0 */	lfs f0, lbl_805AB510@sda21(r2)
/* 8012BBC0 00128B20  EC 02 00 28 */	fsubs f0, f2, f0
/* 8012BBC4 00128B24  48 00 00 0C */	b lbl_8012BBD0
lbl_8012BBC8:
/* 8012BBC8 00128B28  C0 02 97 F0 */	lfs f0, lbl_805AB510@sda21(r2)
/* 8012BBCC 00128B2C  EC 00 10 2A */	fadds f0, f0, f2
lbl_8012BBD0:
/* 8012BBD0 00128B30  C0 62 97 BC */	lfs f3, lbl_805AB4DC@sda21(r2)
/* 8012BBD4 00128B34  EC A1 00 32 */	fmuls f5, f1, f0
/* 8012BBD8 00128B38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012BBDC 00128B3C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8012BBE0 00128B40  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8012BBE4 00128B44  EC 20 18 28 */	fsubs f1, f0, f3
/* 8012BBE8 00128B48  EC 84 18 28 */	fsubs f4, f4, f3
/* 8012BBEC 00128B4C  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 8012BBF0 00128B50  EC 42 28 28 */	fsubs f2, f2, f5
/* 8012BBF4 00128B54  D0 23 00 04 */	stfs f1, 4(r3)
/* 8012BBF8 00128B58  EC A0 01 72 */	fmuls f5, f0, f5
/* 8012BBFC 00128B5C  D0 83 00 08 */	stfs f4, 8(r3)
/* 8012BC00 00128B60  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8012BC04 00128B64  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8012BC08 00128B68  C0 03 02 04 */	lfs f0, 0x204(r3)
/* 8012BC0C 00128B6C  C0 43 02 08 */	lfs f2, 0x208(r3)
/* 8012BC10 00128B70  C0 23 02 0C */	lfs f1, 0x20c(r3)
/* 8012BC14 00128B74  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BC18 00128B78  EC 42 18 2A */	fadds f2, f2, f3
/* 8012BC1C 00128B7C  EC 21 28 2A */	fadds f1, f1, f5
/* 8012BC20 00128B80  D0 03 02 04 */	stfs f0, 0x204(r3)
/* 8012BC24 00128B84  D0 43 02 08 */	stfs f2, 0x208(r3)
/* 8012BC28 00128B88  D0 23 02 0C */	stfs f1, 0x20c(r3)
/* 8012BC2C 00128B8C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8012BC30 00128B90  C0 03 02 C4 */	lfs f0, 0x2c4(r3)
/* 8012BC34 00128B94  C0 43 02 C8 */	lfs f2, 0x2c8(r3)
/* 8012BC38 00128B98  C0 23 02 CC */	lfs f1, 0x2cc(r3)
/* 8012BC3C 00128B9C  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BC40 00128BA0  EC 42 18 2A */	fadds f2, f2, f3
/* 8012BC44 00128BA4  EC 21 28 2A */	fadds f1, f1, f5
/* 8012BC48 00128BA8  D0 03 02 C4 */	stfs f0, 0x2c4(r3)
/* 8012BC4C 00128BAC  D0 43 02 C8 */	stfs f2, 0x2c8(r3)
/* 8012BC50 00128BB0  D0 23 02 CC */	stfs f1, 0x2cc(r3)
lbl_8012BC54:
/* 8012BC54 00128BB4  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BC58 00128BB8  3B 81 00 64 */	addi r28, r1, 0x64
/* 8012BC5C 00128BBC  C0 62 97 F0 */	lfs f3, lbl_805AB510@sda21(r2)
/* 8012BC60 00128BC0  38 61 00 34 */	addi r3, r1, 0x34
/* 8012BC64 00128BC4  C0 45 02 08 */	lfs f2, 0x208(r5)
/* 8012BC68 00128BC8  38 81 00 30 */	addi r4, r1, 0x30
/* 8012BC6C 00128BCC  C0 25 02 C8 */	lfs f1, 0x2c8(r5)
/* 8012BC70 00128BD0  C0 05 02 0C */	lfs f0, 0x20c(r5)
/* 8012BC74 00128BD4  ED 43 00 B2 */	fmuls f10, f3, f2
/* 8012BC78 00128BD8  C0 A5 02 CC */	lfs f5, 0x2cc(r5)
/* 8012BC7C 00128BDC  ED 23 00 72 */	fmuls f9, f3, f1
/* 8012BC80 00128BE0  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 8012BC84 00128BE4  EC C3 00 32 */	fmuls f6, f3, f0
/* 8012BC88 00128BE8  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 8012BC8C 00128BEC  EC 83 01 72 */	fmuls f4, f3, f5
/* 8012BC90 00128BF0  C1 02 97 D0 */	lfs f8, lbl_805AB4F0@sda21(r2)
/* 8012BC94 00128BF4  C0 E5 00 08 */	lfs f7, 8(r5)
/* 8012BC98 00128BF8  EC 43 00 72 */	fmuls f2, f3, f1
/* 8012BC9C 00128BFC  EC 23 00 32 */	fmuls f1, f3, f0
/* 8012BCA0 00128C00  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 8012BCA4 00128C04  C0 05 00 04 */	lfs f0, 4(r5)
/* 8012BCA8 00128C08  ED 2A 48 2A */	fadds f9, f10, f9
/* 8012BCAC 00128C0C  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8012BCB0 00128C10  EC 86 20 2A */	fadds f4, f6, f4
/* 8012BCB4 00128C14  EC 68 00 F2 */	fmuls f3, f8, f3
/* 8012BCB8 00128C18  EC C9 38 2A */	fadds f6, f9, f7
/* 8012BCBC 00128C1C  EC 22 08 2A */	fadds f1, f2, f1
/* 8012BCC0 00128C20  EC 08 00 32 */	fmuls f0, f8, f0
/* 8012BCC4 00128C24  EC 44 18 2A */	fadds f2, f4, f3
/* 8012BCC8 00128C28  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 8012BCCC 00128C2C  EC 01 00 2A */	fadds f0, f1, f0
/* 8012BCD0 00128C30  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8012BCD4 00128C34  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8012BCD8 00128C38  C0 05 02 D0 */	lfs f0, 0x2d0(r5)
/* 8012BCDC 00128C3C  EC 05 00 28 */	fsubs f0, f5, f0
/* 8012BCE0 00128C40  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8012BCE4 00128C44  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BCE8 00128C48  C0 25 02 0C */	lfs f1, 0x20c(r5)
/* 8012BCEC 00128C4C  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 8012BCF0 00128C50  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BCF4 00128C54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8012BCF8 00128C58  4B F5 20 E9 */	bl "Min<f>__5CMathFRCfRCf"
/* 8012BCFC 00128C5C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8012BD00 00128C60  7F 84 E3 78 */	mr r4, r28
/* 8012BD04 00128C64  38 61 00 2C */	addi r3, r1, 0x2c
/* 8012BD08 00128C68  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8012BD0C 00128C6C  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BD10 00128C70  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8012BD14 00128C74  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8012BD18 00128C78  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BD1C 00128C7C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8012BD20 00128C80  4B F5 20 C1 */	bl "Min<f>__5CMathFRCfRCf"
/* 8012BD24 00128C84  C0 02 97 D0 */	lfs f0, lbl_805AB4F0@sda21(r2)
/* 8012BD28 00128C88  C0 23 00 00 */	lfs f1, 0(r3)
/* 8012BD2C 00128C8C  EC 00 F0 2A */	fadds f0, f0, f30
/* 8012BD30 00128C90  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8012BD34 00128C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012BD38 00128C98  40 80 00 2C */	bge lbl_8012BD64
/* 8012BD3C 00128C9C  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 8012BD40 00128CA0  C0 22 98 18 */	lfs f1, lbl_805AB538@sda21(r2)
/* 8012BD44 00128CA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012BD48 00128CA8  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 8012BD4C 00128CAC  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8012BD50 00128CB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012BD54 00128CB4  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 8012BD58 00128CB8  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 8012BD5C 00128CBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8012BD60 00128CC0  D0 1E 00 8C */	stfs f0, 0x8c(r30)
lbl_8012BD64:
/* 8012BD64 00128CC4  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8012BD68 00128CC8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012BD6C 00128CCC  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8012BD70 00128CD0  38 A3 66 A0 */	addi r5, r3, sZeroVector__9CVector3f@l
/* 8012BD74 00128CD4  C0 62 97 D8 */	lfs f3, lbl_805AB4F8@sda21(r2)
/* 8012BD78 00128CD8  FC 20 E8 90 */	fmr f1, f29
/* 8012BD7C 00128CDC  C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 8012BD80 00128CE0  FC 40 F0 90 */	fmr f2, f30
/* 8012BD84 00128CE4  C0 C2 98 88 */	lfs f6, lbl_805AB5A8@sda21(r2)
/* 8012BD88 00128CE8  7F C3 F3 78 */	mr r3, r30
/* 8012BD8C 00128CEC  EC E3 00 24 */	fdivs f7, f3, f0
/* 8012BD90 00128CF0  C0 BE 00 84 */	lfs f5, 0x84(r30)
/* 8012BD94 00128CF4  7F E4 FB 78 */	mr r4, r31
/* 8012BD98 00128CF8  C0 9E 00 88 */	lfs f4, 0x88(r30)
/* 8012BD9C 00128CFC  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 8012BDA0 00128D00  C0 06 02 E0 */	lfs f0, 0x2e0(r6)
/* 8012BDA4 00128D04  EC A6 01 72 */	fmuls f5, f6, f5
/* 8012BDA8 00128D08  EC 86 01 32 */	fmuls f4, f6, f4
/* 8012BDAC 00128D0C  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8012BDB0 00128D10  EC A7 01 72 */	fmuls f5, f7, f5
/* 8012BDB4 00128D14  EC 87 01 32 */	fmuls f4, f7, f4
/* 8012BDB8 00128D18  EC 67 00 F2 */	fmuls f3, f7, f3
/* 8012BDBC 00128D1C  EC 00 28 2A */	fadds f0, f0, f5
/* 8012BDC0 00128D20  D0 06 02 E0 */	stfs f0, 0x2e0(r6)
/* 8012BDC4 00128D24  C0 06 02 E4 */	lfs f0, 0x2e4(r6)
/* 8012BDC8 00128D28  EC 00 20 2A */	fadds f0, f0, f4
/* 8012BDCC 00128D2C  D0 06 02 E4 */	stfs f0, 0x2e4(r6)
/* 8012BDD0 00128D30  C0 06 02 E8 */	lfs f0, 0x2e8(r6)
/* 8012BDD4 00128D34  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BDD8 00128D38  D0 06 02 E8 */	stfs f0, 0x2e8(r6)
/* 8012BDDC 00128D3C  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8012BDE0 00128D40  C0 06 02 20 */	lfs f0, 0x220(r6)
/* 8012BDE4 00128D44  EC 00 28 2A */	fadds f0, f0, f5
/* 8012BDE8 00128D48  D0 06 02 20 */	stfs f0, 0x220(r6)
/* 8012BDEC 00128D4C  C0 06 02 24 */	lfs f0, 0x224(r6)
/* 8012BDF0 00128D50  EC 00 20 2A */	fadds f0, f0, f4
/* 8012BDF4 00128D54  D0 06 02 24 */	stfs f0, 0x224(r6)
/* 8012BDF8 00128D58  C0 06 02 28 */	lfs f0, 0x228(r6)
/* 8012BDFC 00128D5C  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BE00 00128D60  D0 06 02 28 */	stfs f0, 0x228(r6)
/* 8012BE04 00128D64  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 8012BE08 00128D68  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 8012BE0C 00128D6C  EC 00 28 2A */	fadds f0, f0, f5
/* 8012BE10 00128D70  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8012BE14 00128D74  C0 06 00 24 */	lfs f0, 0x24(r6)
/* 8012BE18 00128D78  EC 00 20 2A */	fadds f0, f0, f4
/* 8012BE1C 00128D7C  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8012BE20 00128D80  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 8012BE24 00128D84  EC 00 18 2A */	fadds f0, f0, f3
/* 8012BE28 00128D88  D0 06 00 28 */	stfs f0, 0x28(r6)
/* 8012BE2C 00128D8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8012BE30 00128D90  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 8012BE34 00128D94  C0 05 00 04 */	lfs f0, 4(r5)
/* 8012BE38 00128D98  D0 1E 00 88 */	stfs f0, 0x88(r30)
/* 8012BE3C 00128D9C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012BE40 00128DA0  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 8012BE44 00128DA4  48 0E 15 91 */	bl Update__8CRagDollFR13CStateManagerff
/* 8012BE48 00128DA8  3B BE 00 94 */	addi r29, r30, 0x94
/* 8012BE4C 00128DAC  3B 9E 00 A0 */	addi r28, r30, 0xa0
/* 8012BE50 00128DB0  3B 60 00 00 */	li r27, 0
/* 8012BE54 00128DB4  48 00 00 64 */	b lbl_8012BEB8
lbl_8012BE58:
/* 8012BE58 00128DB8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8012BE5C 00128DBC  7F E3 FB 78 */	mr r3, r31
/* 8012BE60 00128DC0  38 81 00 14 */	addi r4, r1, 0x14
/* 8012BE64 00128DC4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8012BE68 00128DC8  4B F2 07 3D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8012BE6C 00128DCC  28 03 00 00 */	cmplwi r3, 0
/* 8012BE70 00128DD0  41 82 00 3C */	beq lbl_8012BEAC
/* 8012BE74 00128DD4  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8012BE78 00128DD8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012BE7C 00128DDC  41 82 00 30 */	beq lbl_8012BEAC
/* 8012BE80 00128DE0  80 1C 00 00 */	lwz r0, 0(r28)
/* 8012BE84 00128DE4  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BE88 00128DE8  54 04 30 32 */	slwi r4, r0, 6
/* 8012BE8C 00128DEC  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8012BE90 00128DF0  38 84 00 04 */	addi r4, r4, 4
/* 8012BE94 00128DF4  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8012BE98 00128DF8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8012BE9C 00128DFC  7C 85 22 14 */	add r4, r5, r4
/* 8012BEA0 00128E00  D0 04 00 00 */	stfs f0, 0(r4)
/* 8012BEA4 00128E04  D0 24 00 04 */	stfs f1, 4(r4)
/* 8012BEA8 00128E08  D0 44 00 08 */	stfs f2, 8(r4)
lbl_8012BEAC:
/* 8012BEAC 00128E0C  3B BD 00 02 */	addi r29, r29, 2
/* 8012BEB0 00128E10  3B 9C 00 04 */	addi r28, r28, 4
/* 8012BEB4 00128E14  3B 7B 00 01 */	addi r27, r27, 1
lbl_8012BEB8:
/* 8012BEB8 00128E18  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 8012BEBC 00128E1C  7C 1B 00 00 */	cmpw r27, r0
/* 8012BEC0 00128E20  41 80 FF 98 */	blt lbl_8012BE58
/* 8012BEC4 00128E24  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BEC8 00128E28  3B 81 00 58 */	addi r28, r1, 0x58
/* 8012BECC 00128E2C  C0 62 97 F0 */	lfs f3, lbl_805AB510@sda21(r2)
/* 8012BED0 00128E30  38 61 00 28 */	addi r3, r1, 0x28
/* 8012BED4 00128E34  C0 45 02 08 */	lfs f2, 0x208(r5)
/* 8012BED8 00128E38  38 81 00 24 */	addi r4, r1, 0x24
/* 8012BEDC 00128E3C  C0 25 02 C8 */	lfs f1, 0x2c8(r5)
/* 8012BEE0 00128E40  C0 05 02 0C */	lfs f0, 0x20c(r5)
/* 8012BEE4 00128E44  ED 43 00 B2 */	fmuls f10, f3, f2
/* 8012BEE8 00128E48  C0 A5 02 CC */	lfs f5, 0x2cc(r5)
/* 8012BEEC 00128E4C  ED 23 00 72 */	fmuls f9, f3, f1
/* 8012BEF0 00128E50  C0 25 02 04 */	lfs f1, 0x204(r5)
/* 8012BEF4 00128E54  EC C3 00 32 */	fmuls f6, f3, f0
/* 8012BEF8 00128E58  C0 05 02 C4 */	lfs f0, 0x2c4(r5)
/* 8012BEFC 00128E5C  EC 83 01 72 */	fmuls f4, f3, f5
/* 8012BF00 00128E60  C1 02 97 D0 */	lfs f8, lbl_805AB4F0@sda21(r2)
/* 8012BF04 00128E64  C0 E5 00 08 */	lfs f7, 8(r5)
/* 8012BF08 00128E68  EC 43 00 72 */	fmuls f2, f3, f1
/* 8012BF0C 00128E6C  EC 23 00 32 */	fmuls f1, f3, f0
/* 8012BF10 00128E70  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 8012BF14 00128E74  C0 05 00 04 */	lfs f0, 4(r5)
/* 8012BF18 00128E78  ED 2A 48 2A */	fadds f9, f10, f9
/* 8012BF1C 00128E7C  EC E8 01 F2 */	fmuls f7, f8, f7
/* 8012BF20 00128E80  EC 86 20 2A */	fadds f4, f6, f4
/* 8012BF24 00128E84  EC 68 00 F2 */	fmuls f3, f8, f3
/* 8012BF28 00128E88  EC C9 38 2A */	fadds f6, f9, f7
/* 8012BF2C 00128E8C  EC 22 08 2A */	fadds f1, f2, f1
/* 8012BF30 00128E90  EC 08 00 32 */	fmuls f0, f8, f0
/* 8012BF34 00128E94  EC 44 18 2A */	fadds f2, f4, f3
/* 8012BF38 00128E98  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8012BF3C 00128E9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8012BF40 00128EA0  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8012BF44 00128EA4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8012BF48 00128EA8  C0 05 02 D0 */	lfs f0, 0x2d0(r5)
/* 8012BF4C 00128EAC  EC 05 00 28 */	fsubs f0, f5, f0
/* 8012BF50 00128EB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8012BF54 00128EB4  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BF58 00128EB8  C0 25 02 0C */	lfs f1, 0x20c(r5)
/* 8012BF5C 00128EBC  C0 05 02 10 */	lfs f0, 0x210(r5)
/* 8012BF60 00128EC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BF64 00128EC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8012BF68 00128EC8  4B F5 1E 79 */	bl "Min<f>__5CMathFRCfRCf"
/* 8012BF6C 00128ECC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8012BF70 00128ED0  7F 84 E3 78 */	mr r4, r28
/* 8012BF74 00128ED4  38 61 00 20 */	addi r3, r1, 0x20
/* 8012BF78 00128ED8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8012BF7C 00128EDC  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 8012BF80 00128EE0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8012BF84 00128EE4  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8012BF88 00128EE8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BF8C 00128EEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8012BF90 00128EF0  4B F5 1E 51 */	bl "Min<f>__5CMathFRCfRCf"
/* 8012BF94 00128EF4  C0 02 97 D8 */	lfs f0, lbl_805AB4F8@sda21(r2)
/* 8012BF98 00128EF8  3C 80 80 5A */	lis r4, sIdentity__12CTransform4f@ha
/* 8012BF9C 00128EFC  C0 A3 00 00 */	lfs f5, 0(r3)
/* 8012BFA0 00128F00  38 84 66 70 */	addi r4, r4, sIdentity__12CTransform4f@l
/* 8012BFA4 00128F04  EC C0 E8 24 */	fdivs f6, f0, f29
/* 8012BFA8 00128F08  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 8012BFAC 00128F0C  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 8012BFB0 00128F10  C0 61 00 60 */	lfs f3, 0x60(r1)
/* 8012BFB4 00128F14  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 8012BFB8 00128F18  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8012BFBC 00128F1C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8012BFC0 00128F20  D0 A1 00 58 */	stfs f5, 0x58(r1)
/* 8012BFC4 00128F24  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012BFC8 00128F28  EC 45 10 28 */	fsubs f2, f5, f2
/* 8012BFCC 00128F2C  EC 66 00 F2 */	fmuls f3, f6, f3
/* 8012BFD0 00128F30  EC 06 00 32 */	fmuls f0, f6, f0
/* 8012BFD4 00128F34  EC 26 00 B2 */	fmuls f1, f6, f2
/* 8012BFD8 00128F38  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8012BFDC 00128F3C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8012BFE0 00128F40  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8012BFE4 00128F44  83 BE 00 6C */	lwz r29, 0x6c(r30)
/* 8012BFE8 00128F48  38 7D 00 34 */	addi r3, r29, 0x34
/* 8012BFEC 00128F4C  48 1E 6B 55 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8012BFF0 00128F50  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8012BFF4 00128F54  38 60 00 01 */	li r3, 1
/* 8012BFF8 00128F58  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8012BFFC 00128F5C  38 81 00 50 */	addi r4, r1, 0x50
/* 8012C000 00128F60  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8012C004 00128F64  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8012C008 00128F68  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8012C00C 00128F6C  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8012C010 00128F70  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 8012C014 00128F74  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8012C018 00128F78  98 1D 00 E4 */	stb r0, 0xe4(r29)
/* 8012C01C 00128F7C  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012C020 00128F80  4B F2 6E 6D */	bl SetTranslation__6CActorFRC9CVector3f
/* 8012C024 00128F84  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012C028 00128F88  38 81 00 44 */	addi r4, r1, 0x44
/* 8012C02C 00128F8C  4B FE EC 75 */	bl SetVelocityWR__13CPhysicsActorFRC9CVector3f
/* 8012C030 00128F90  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8012C034 00128F94  C0 02 98 8C */	lfs f0, lbl_805AB5AC@sda21(r2)
/* 8012C038 00128F98  EC 21 E8 28 */	fsubs f1, f1, f29
/* 8012C03C 00128F9C  D0 3E 00 74 */	stfs f1, 0x74(r30)
/* 8012C040 00128FA0  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 8012C044 00128FA4  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 8012C048 00128FA8  40 81 01 38 */	ble lbl_8012C180
/* 8012C04C 00128FAC  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8012C050 00128FB0  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012C054 00128FB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C058 00128FB8  40 80 01 28 */	bge lbl_8012C180
/* 8012C05C 00128FBC  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012C060 00128FC0  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 8012C064 00128FC4  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8012C068 00128FC8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8012C06C 00128FCC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8012C070 00128FD0  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8012C074 00128FD4  EC 81 00 28 */	fsubs f4, f1, f0
/* 8012C078 00128FD8  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 8012C07C 00128FDC  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8012C080 00128FE0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8012C084 00128FE4  EC 63 10 28 */	fsubs f3, f3, f2
/* 8012C088 00128FE8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8012C08C 00128FEC  40 82 00 1C */	bne lbl_8012C0A8
/* 8012C090 00128FF0  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8012C094 00128FF4  C0 02 98 08 */	lfs f0, lbl_805AB528@sda21(r2)
/* 8012C098 00128FF8  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8012C09C 00128FFC  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8012C0A0 00129000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8012C0A4 00129004  40 81 00 DC */	ble lbl_8012C180
lbl_8012C0A8:
/* 8012C0A8 00129008  C0 02 98 38 */	lfs f0, lbl_805AB558@sda21(r2)
/* 8012C0AC 0012900C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8012C0B0 00129010  38 8D 8A 98 */	addi r4, r13, lbl_805A7658@sda21
/* 8012C0B4 00129014  EC 00 01 72 */	fmuls f0, f0, f5
/* 8012C0B8 00129018  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8012C0BC 0012901C  4B F5 1D 25 */	bl "Min<f>__5CMathFRCfRCf"
/* 8012C0C0 00129020  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8012C0C4 00129024  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8012C0C8 00129028  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8012C0CC 0012902C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8012C0D0 00129030  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8012C0D4 00129034  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8012C0D8 00129038  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8012C0DC 0012903C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8012C0E0 00129040  F3 E1 A0 10 */	psq_st f31, 16(r1), 1, qr2
/* 8012C0E4 00129044  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012C0E8 00129048  80 02 C6 00 */	lwz r0, kAllAreas__11CSfxManager@sda21(r2)
/* 8012C0EC 0012904C  38 C3 66 A0 */	addi r6, r3, sZeroVector__9CVector3f@l
/* 8012C0F0 00129050  88 E1 00 10 */	lbz r7, 0x10(r1)
/* 8012C0F4 00129054  38 61 00 18 */	addi r3, r1, 0x18
/* 8012C0F8 00129058  90 01 00 08 */	stw r0, 8(r1)
/* 8012C0FC 0012905C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8012C100 00129060  A9 42 C5 FA */	lha r10, kMedPriority__11CSfxManager@sda21(r2)
/* 8012C104 00129064  39 00 00 01 */	li r8, 1
/* 8012C108 00129068  A0 9E 00 70 */	lhz r4, 0x70(r30)
/* 8012C10C 0012906C  39 20 00 00 */	li r9, 0
/* 8012C110 00129070  48 1B E0 A9 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fUcbbsi
/* 8012C114 00129074  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 8012C118 00129078  48 1E 63 C5 */	bl Float__9CRandom16Fv
/* 8012C11C 0012907C  C0 02 98 90 */	lfs f0, lbl_805AB5B0@sda21(r2)
/* 8012C120 00129080  38 60 00 00 */	li r3, 0
/* 8012C124 00129084  EC 00 00 7A */	fmadds f0, f0, f1, f0
/* 8012C128 00129088  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8012C12C 0012908C  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 8012C130 00129090  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8012C134 00129094  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 8012C138 00129098  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012C13C 0012909C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8012C140 001290A0  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8012C144 001290A4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8012C148 001290A8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8012C14C 001290AC  D0 3E 00 7C */	stfs f1, 0x7c(r30)
/* 8012C150 001290B0  D0 5E 00 80 */	stfs f2, 0x80(r30)
/* 8012C154 001290B4  48 00 00 2C */	b lbl_8012C180
lbl_8012C158:
/* 8012C158 001290B8  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012C15C 001290BC  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 8012C160 001290C0  C4 03 66 A0 */	lfsu f0, sZeroVector__9CVector3f@l(r3)
/* 8012C164 001290C4  D0 04 01 50 */	stfs f0, 0x150(r4)
/* 8012C168 001290C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012C16C 001290CC  D0 04 01 54 */	stfs f0, 0x154(r4)
/* 8012C170 001290D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012C174 001290D4  D0 04 01 58 */	stfs f0, 0x158(r4)
/* 8012C178 001290D8  80 7E 00 6C */	lwz r3, 0x6c(r30)
/* 8012C17C 001290DC  4B FE F1 FD */	bl Stop__13CPhysicsActorFv
lbl_8012C180:
/* 8012C180 001290E0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8012C184 001290E4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8012C188 001290E8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, qr0
/* 8012C18C 001290EC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8012C190 001290F0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, qr0
/* 8012C194 001290F4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8012C198 001290F8  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 8012C19C 001290FC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8012C1A0 00129100  7C 08 03 A6 */	mtlr r0
/* 8012C1A4 00129104  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8012C1A8 00129108  4E 80 00 20 */	blr

.global Prime__14CPirateRagDollFR13CStateManagerRC12CTransform4fR10CModelData
Prime__14CPirateRagDollFR13CStateManagerRC12CTransform4fR10CModelData:
/* 8012C1AC 0012910C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012C1B0 00129110  7C 08 02 A6 */	mflr r0
/* 8012C1B4 00129114  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012C1B8 00129118  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8012C1BC 0012911C  7C DF 33 78 */	mr r31, r6
/* 8012C1C0 00129120  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8012C1C4 00129124  7C BE 2B 78 */	mr r30, r5
/* 8012C1C8 00129128  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8012C1CC 0012912C  7C 9D 23 78 */	mr r29, r4
/* 8012C1D0 00129130  93 81 00 30 */	stw r28, 0x30(r1)
/* 8012C1D4 00129134  7C 7C 1B 78 */	mr r28, r3
/* 8012C1D8 00129138  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8012C1DC 0012913C  4B FE E7 E5 */	bl GetBaseBoundingBox__13CPhysicsActorCFv
/* 8012C1E0 00129140  7C 64 1B 78 */	mr r4, r3
/* 8012C1E4 00129144  C0 22 97 D0 */	lfs f1, lbl_805AB4F0@sda21(r2)
/* 8012C1E8 00129148  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8012C1EC 0012914C  38 61 00 14 */	addi r3, r1, 0x14
/* 8012C1F0 00129150  38 A1 00 08 */	addi r5, r1, 8
/* 8012C1F4 00129154  D0 01 00 08 */	stfs f0, 8(r1)
/* 8012C1F8 00129158  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8012C1FC 0012915C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8012C200 00129160  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8012C204 00129164  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012C208 00129168  C0 44 00 08 */	lfs f2, 8(r4)
/* 8012C20C 0012916C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8012C210 00129170  EC 01 10 3A */	fmadds f0, f1, f0, f2
/* 8012C214 00129174  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8012C218 00129178  48 20 C2 F1 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8012C21C 0012917C  7C 64 1B 78 */	mr r4, r3
/* 8012C220 00129180  80 7C 00 6C */	lwz r3, 0x6c(r28)
/* 8012C224 00129184  4B FE E4 35 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 8012C228 00129188  7F 83 E3 78 */	mr r3, r28
/* 8012C22C 0012918C  7F A4 EB 78 */	mr r4, r29
/* 8012C230 00129190  7F C5 F3 78 */	mr r5, r30
/* 8012C234 00129194  7F E6 FB 78 */	mr r6, r31
/* 8012C238 00129198  48 0E 24 9D */	bl Prime__8CRagDollFR13CStateManagerRC12CTransform4fR10CModelData
/* 8012C23C 0012919C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012C240 001291A0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8012C244 001291A4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8012C248 001291A8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8012C24C 001291AC  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8012C250 001291B0  7C 08 03 A6 */	mtlr r0
/* 8012C254 001291B4  38 21 00 40 */	addi r1, r1, 0x40
/* 8012C258 001291B8  4E 80 00 20 */	blr

.global __ct__14CPirateRagDollFR13CStateManagerP12CSpacePiratefUsUi
__ct__14CPirateRagDollFR13CStateManagerP12CSpacePiratefUsUi:
/* 8012C25C 001291BC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8012C260 001291C0  7C 08 02 A6 */	mflr r0
/* 8012C264 001291C4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8012C268 001291C8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8012C26C 001291CC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8012C270 001291D0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8012C274 001291D4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8012C278 001291D8  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 8012C27C 001291DC  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 8012C280 001291E0  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 8012C284 001291E4  7C BB 2B 78 */	mr r27, r5
/* 8012C288 001291E8  7C 7D 1B 78 */	mr r29, r3
/* 8012C28C 001291EC  7F 63 DB 78 */	mr r3, r27
/* 8012C290 001291F0  7C 9E 23 78 */	mr r30, r4
/* 8012C294 001291F4  81 9B 00 00 */	lwz r12, 0(r27)
/* 8012C298 001291F8  7C DA 33 78 */	mr r26, r6
/* 8012C29C 001291FC  7C F9 3B 78 */	mr r25, r7
/* 8012C2A0 00129200  C3 A2 97 B4 */	lfs f29, lbl_805AB4D4@sda21(r2)
/* 8012C2A4 00129204  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 8012C2A8 00129208  7D 89 03 A6 */	mtctr r12
/* 8012C2AC 0012920C  4E 80 04 21 */	bctrl
/* 8012C2B0 00129210  FC 20 08 50 */	fneg f1, f1
/* 8012C2B4 00129214  C0 62 98 7C */	lfs f3, lbl_805AB59C@sda21(r2)
/* 8012C2B8 00129218  FC 40 E8 50 */	fneg f2, f29
/* 8012C2BC 0012921C  7F A3 EB 78 */	mr r3, r29
/* 8012C2C0 00129220  7F 24 CB 78 */	mr r4, r25
/* 8012C2C4 00129224  48 0E 26 0D */	bl __ct__8CRagDollFfffUi
/* 8012C2C8 00129228  3C 80 80 3E */	lis r4, lbl_803E0BE0@ha
/* 8012C2CC 0012922C  3C 60 80 5A */	lis r3, sZeroVector__9CVector3f@ha
/* 8012C2D0 00129230  38 04 0B E0 */	addi r0, r4, lbl_803E0BE0@l
/* 8012C2D4 00129234  C0 02 97 BC */	lfs f0, lbl_805AB4DC@sda21(r2)
/* 8012C2D8 00129238  90 1D 00 00 */	stw r0, 0(r29)
/* 8012C2DC 0012923C  39 03 66 A0 */	addi r8, r3, sZeroVector__9CVector3f@l
/* 8012C2E0 00129240  38 00 00 00 */	li r0, 0
/* 8012C2E4 00129244  38 60 00 01 */	li r3, 1
/* 8012C2E8 00129248  93 7D 00 6C */	stw r27, 0x6c(r29)
/* 8012C2EC 0012924C  7F C7 F3 78 */	mr r7, r30
/* 8012C2F0 00129250  38 80 00 13 */	li r4, 0x13
/* 8012C2F4 00129254  38 A0 00 30 */	li r5, 0x30
/* 8012C2F8 00129258  B3 5D 00 70 */	sth r26, 0x70(r29)
/* 8012C2FC 0012925C  38 C0 00 25 */	li r6, 0x25
/* 8012C300 00129260  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8012C304 00129264  C0 08 00 00 */	lfs f0, 0(r8)
/* 8012C308 00129268  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 8012C30C 0012926C  C0 08 00 04 */	lfs f0, 4(r8)
/* 8012C310 00129270  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 8012C314 00129274  C0 08 00 08 */	lfs f0, 8(r8)
/* 8012C318 00129278  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 8012C31C 0012927C  C0 08 00 00 */	lfs f0, 0(r8)
/* 8012C320 00129280  D0 1D 00 84 */	stfs f0, 0x84(r29)
/* 8012C324 00129284  C0 08 00 04 */	lfs f0, 4(r8)
/* 8012C328 00129288  D0 1D 00 88 */	stfs f0, 0x88(r29)
/* 8012C32C 0012928C  C0 08 00 08 */	lfs f0, 8(r8)
/* 8012C330 00129290  D0 1D 00 8C */	stfs f0, 0x8c(r29)
/* 8012C334 00129294  90 1D 00 90 */	stw r0, 0x90(r29)
/* 8012C338 00129298  90 1D 00 9C */	stw r0, 0x9c(r29)
/* 8012C33C 0012929C  88 1D 00 B0 */	lbz r0, 0xb0(r29)
/* 8012C340 001292A0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8012C344 001292A4  98 1D 00 B0 */	stb r0, 0xb0(r29)
/* 8012C348 001292A8  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8012C34C 001292AC  4B F2 7A A1 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypes14EMaterialTypesR13CStateManager
/* 8012C350 001292B0  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8012C354 001292B4  7F C4 F3 78 */	mr r4, r30
/* 8012C358 001292B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8012C35C 001292BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8012C360 001292C0  7D 89 03 A6 */	mtctr r12
/* 8012C364 001292C4  4E 80 04 21 */	bctrl
/* 8012C368 001292C8  C0 02 98 68 */	lfs f0, lbl_805AB588@sda21(r2)
/* 8012C36C 001292CC  38 80 00 0E */	li r4, 0xe
/* 8012C370 001292D0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8012C374 001292D4  38 7D 00 04 */	addi r3, r29, 4
/* 8012C378 001292D8  48 00 07 4D */	bl "reserve__Q24rstl64vector<Q28CRagDoll16CRagDollParticle,Q24rstl17rmemory_allocator>Fi"
/* 8012C37C 001292DC  38 7D 00 14 */	addi r3, r29, 0x14
/* 8012C380 001292E0  38 80 00 2F */	li r4, 0x2f
/* 8012C384 001292E4  48 00 08 C9 */	bl "reserve__Q24rstl72vector<Q28CRagDoll24CRagDollLengthConstraint,Q24rstl17rmemory_allocator>Fi"
/* 8012C388 001292E8  38 7D 00 24 */	addi r3, r29, 0x24
/* 8012C38C 001292EC  38 80 00 04 */	li r4, 4
/* 8012C390 001292F0  48 00 09 C5 */	bl "reserve__Q24rstl71vector<Q28CRagDoll23CRagDollJointConstraint,Q24rstl17rmemory_allocator>Fi"
/* 8012C394 001292F4  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 8012C398 001292F8  3B FB 00 34 */	addi r31, r27, 0x34
/* 8012C39C 001292FC  C0 43 00 00 */	lfs f2, 0(r3)
/* 8012C3A0 00129300  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012C3A4 00129304  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012C3A8 00129308  83 83 00 10 */	lwz r28, 0x10(r3)
/* 8012C3AC 0012930C  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8012C3B0 00129310  7F 83 E3 78 */	mr r3, r28
/* 8012C3B4 00129314  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8012C3B8 00129318  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8012C3BC 0012931C  4B F0 06 A5 */	bl BuildPose__9CAnimDataFv
/* 8012C3C0 00129320  7F 64 DB 78 */	mr r4, r27
/* 8012C3C4 00129324  38 61 00 70 */	addi r3, r1, 0x70
/* 8012C3C8 00129328  4B FE E5 65 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8012C3CC 0012932C  38 61 00 40 */	addi r3, r1, 0x40
/* 8012C3D0 00129330  38 81 00 70 */	addi r4, r1, 0x70
/* 8012C3D4 00129334  48 20 B2 39 */	bl GetCenterPoint__6CAABoxCFv
/* 8012C3D8 00129338  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8012C3DC 0012933C  3C 80 80 47 */	lis r4, lbl_8046C618@ha
/* 8012C3E0 00129340  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8012C3E4 00129344  3C 60 80 3D */	lis r3, lbl_803CF438@ha
/* 8012C3E8 00129348  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8012C3EC 0012934C  3B 64 C6 18 */	addi r27, r4, lbl_8046C618@l
/* 8012C3F0 00129350  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 8012C3F4 00129354  3B 43 F4 38 */	addi r26, r3, lbl_803CF438@l
/* 8012C3F8 00129358  C3 A1 00 54 */	lfs f29, 0x54(r1)
/* 8012C3FC 0012935C  3B 20 00 00 */	li r25, 0
/* 8012C400 00129360  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8012C404 00129364  C3 C1 00 50 */	lfs f30, 0x50(r1)
/* 8012C408 00129368  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8012C40C 0012936C  C3 E1 00 4C */	lfs f31, 0x4c(r1)
lbl_8012C410:
/* 8012C410 00129370  7F 84 E3 78 */	mr r4, r28
/* 8012C414 00129374  7F 65 DB 78 */	mr r5, r27
/* 8012C418 00129378  38 61 00 08 */	addi r3, r1, 8
/* 8012C41C 0012937C  4B F0 24 1D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012C420 00129380  88 01 00 08 */	lbz r0, 8(r1)
/* 8012C424 00129384  38 7C 02 24 */	addi r3, r28, 0x224
/* 8012C428 00129388  38 81 00 0C */	addi r4, r1, 0xc
/* 8012C42C 0012938C  98 01 00 0C */	stb r0, 0xc(r1)
/* 8012C430 00129390  48 23 CB 29 */	bl GetOffset__17CPoseAsTransformsCFRC6CSegId
/* 8012C434 00129394  C0 43 00 08 */	lfs f2, 8(r3)
/* 8012C438 00129398  7F E4 FB 78 */	mr r4, r31
/* 8012C43C 0012939C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8012C440 001293A0  38 A1 00 28 */	addi r5, r1, 0x28
/* 8012C444 001293A4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8012C448 001293A8  EC 5D 00 B2 */	fmuls f2, f29, f2
/* 8012C44C 001293AC  EC 3E 00 72 */	fmuls f1, f30, f1
/* 8012C450 001293B0  38 61 00 34 */	addi r3, r1, 0x34
/* 8012C454 001293B4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8012C458 001293B8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8012C45C 001293BC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8012C460 001293C0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8012C464 001293C4  48 1E 66 85 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 8012C468 001293C8  C0 1A 00 00 */	lfs f0, 0(r26)
/* 8012C46C 001293CC  7F A3 EB 78 */	mr r3, r29
/* 8012C470 001293D0  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 8012C474 001293D4  38 81 00 0C */	addi r4, r1, 0xc
/* 8012C478 001293D8  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8012C47C 001293DC  EC 20 07 72 */	fmuls f1, f0, f29
/* 8012C480 001293E0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8012C484 001293E4  38 A1 00 64 */	addi r5, r1, 0x64
/* 8012C488 001293E8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8012C48C 001293EC  38 C1 00 58 */	addi r6, r1, 0x58
/* 8012C490 001293F0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8012C494 001293F4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8012C498 001293F8  48 0E 09 85 */	bl AddParticle__8CRagDollFRC6CSegIdRC9CVector3fRC9CVector3ff
/* 8012C49C 001293FC  3B 39 00 01 */	addi r25, r25, 1
/* 8012C4A0 00129400  3B 5A 00 04 */	addi r26, r26, 4
/* 8012C4A4 00129404  2C 19 00 0E */	cmpwi r25, 0xe
/* 8012C4A8 00129408  3B 7B 00 10 */	addi r27, r27, 0x10
/* 8012C4AC 0012940C  41 80 FF 64 */	blt lbl_8012C410
/* 8012C4B0 00129410  7F A3 EB 78 */	mr r3, r29
/* 8012C4B4 00129414  7F C4 F3 78 */	mr r4, r30
/* 8012C4B8 00129418  48 0E 23 6D */	bl SatisfyWorldConstraintsOnConstruction__8CRagDollFR13CStateManager
/* 8012C4BC 0012941C  7F A3 EB 78 */	mr r3, r29
/* 8012C4C0 00129420  38 80 00 00 */	li r4, 0
/* 8012C4C4 00129424  38 A0 00 01 */	li r5, 1
/* 8012C4C8 00129428  48 0E 08 4D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C4CC 0012942C  7F A3 EB 78 */	mr r3, r29
/* 8012C4D0 00129430  38 80 00 00 */	li r4, 0
/* 8012C4D4 00129434  38 A0 00 02 */	li r5, 2
/* 8012C4D8 00129438  48 0E 08 3D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C4DC 0012943C  7F A3 EB 78 */	mr r3, r29
/* 8012C4E0 00129440  38 80 00 00 */	li r4, 0
/* 8012C4E4 00129444  38 A0 00 08 */	li r5, 8
/* 8012C4E8 00129448  48 0E 08 2D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C4EC 0012944C  7F A3 EB 78 */	mr r3, r29
/* 8012C4F0 00129450  38 80 00 00 */	li r4, 0
/* 8012C4F4 00129454  38 A0 00 0B */	li r5, 0xb
/* 8012C4F8 00129458  48 0E 08 1D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C4FC 0012945C  7F A3 EB 78 */	mr r3, r29
/* 8012C500 00129460  38 80 00 00 */	li r4, 0
/* 8012C504 00129464  38 A0 00 05 */	li r5, 5
/* 8012C508 00129468  48 0E 08 0D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C50C 0012946C  7F A3 EB 78 */	mr r3, r29
/* 8012C510 00129470  38 80 00 02 */	li r4, 2
/* 8012C514 00129474  38 A0 00 03 */	li r5, 3
/* 8012C518 00129478  48 0E 07 FD */	bl AddLengthConstraint__8CRagDollFii
/* 8012C51C 0012947C  7F A3 EB 78 */	mr r3, r29
/* 8012C520 00129480  38 80 00 03 */	li r4, 3
/* 8012C524 00129484  38 A0 00 04 */	li r5, 4
/* 8012C528 00129488  48 0E 07 ED */	bl AddLengthConstraint__8CRagDollFii
/* 8012C52C 0012948C  7F A3 EB 78 */	mr r3, r29
/* 8012C530 00129490  38 80 00 05 */	li r4, 5
/* 8012C534 00129494  38 A0 00 06 */	li r5, 6
/* 8012C538 00129498  48 0E 07 DD */	bl AddLengthConstraint__8CRagDollFii
/* 8012C53C 0012949C  7F A3 EB 78 */	mr r3, r29
/* 8012C540 001294A0  38 80 00 06 */	li r4, 6
/* 8012C544 001294A4  38 A0 00 07 */	li r5, 7
/* 8012C548 001294A8  48 0E 07 CD */	bl AddLengthConstraint__8CRagDollFii
/* 8012C54C 001294AC  7F A3 EB 78 */	mr r3, r29
/* 8012C550 001294B0  38 80 00 02 */	li r4, 2
/* 8012C554 001294B4  38 A0 00 05 */	li r5, 5
/* 8012C558 001294B8  48 0E 07 BD */	bl AddLengthConstraint__8CRagDollFii
/* 8012C55C 001294BC  7F A3 EB 78 */	mr r3, r29
/* 8012C560 001294C0  38 80 00 02 */	li r4, 2
/* 8012C564 001294C4  38 A0 00 08 */	li r5, 8
/* 8012C568 001294C8  48 0E 07 AD */	bl AddLengthConstraint__8CRagDollFii
/* 8012C56C 001294CC  7F A3 EB 78 */	mr r3, r29
/* 8012C570 001294D0  38 80 00 02 */	li r4, 2
/* 8012C574 001294D4  38 A0 00 0B */	li r5, 0xb
/* 8012C578 001294D8  48 0E 07 9D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C57C 001294DC  7F A3 EB 78 */	mr r3, r29
/* 8012C580 001294E0  38 80 00 05 */	li r4, 5
/* 8012C584 001294E4  38 A0 00 08 */	li r5, 8
/* 8012C588 001294E8  48 0E 07 8D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C58C 001294EC  7F A3 EB 78 */	mr r3, r29
/* 8012C590 001294F0  38 80 00 05 */	li r4, 5
/* 8012C594 001294F4  38 A0 00 0B */	li r5, 0xb
/* 8012C598 001294F8  48 0E 07 7D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C59C 001294FC  7F A3 EB 78 */	mr r3, r29
/* 8012C5A0 00129500  38 80 00 08 */	li r4, 8
/* 8012C5A4 00129504  38 A0 00 0B */	li r5, 0xb
/* 8012C5A8 00129508  48 0E 07 6D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C5AC 0012950C  7F A3 EB 78 */	mr r3, r29
/* 8012C5B0 00129510  38 80 00 08 */	li r4, 8
/* 8012C5B4 00129514  38 A0 00 09 */	li r5, 9
/* 8012C5B8 00129518  48 0E 07 5D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C5BC 0012951C  7F A3 EB 78 */	mr r3, r29
/* 8012C5C0 00129520  38 80 00 09 */	li r4, 9
/* 8012C5C4 00129524  38 A0 00 0A */	li r5, 0xa
/* 8012C5C8 00129528  48 0E 07 4D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C5CC 0012952C  7F A3 EB 78 */	mr r3, r29
/* 8012C5D0 00129530  38 80 00 0B */	li r4, 0xb
/* 8012C5D4 00129534  38 A0 00 0C */	li r5, 0xc
/* 8012C5D8 00129538  48 0E 07 3D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C5DC 0012953C  7F A3 EB 78 */	mr r3, r29
/* 8012C5E0 00129540  38 80 00 0C */	li r4, 0xc
/* 8012C5E4 00129544  38 A0 00 0D */	li r5, 0xd
/* 8012C5E8 00129548  48 0E 07 2D */	bl AddLengthConstraint__8CRagDollFii
/* 8012C5EC 0012954C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C5F0 00129550  7F A3 EB 78 */	mr r3, r29
/* 8012C5F4 00129554  38 80 00 01 */	li r4, 1
/* 8012C5F8 00129558  38 A0 00 08 */	li r5, 8
/* 8012C5FC 0012955C  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 8012C600 00129560  48 0E 06 61 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C604 00129564  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C608 00129568  7F A3 EB 78 */	mr r3, r29
/* 8012C60C 0012956C  38 80 00 01 */	li r4, 1
/* 8012C610 00129570  38 A0 00 0B */	li r5, 0xb
/* 8012C614 00129574  C0 26 00 38 */	lfs f1, 0x38(r6)
/* 8012C618 00129578  48 0E 06 49 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C61C 0012957C  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8012C620 00129580  7F A3 EB 78 */	mr r3, r29
/* 8012C624 00129584  C0 22 97 C8 */	lfs f1, lbl_805AB4E8@sda21(r2)
/* 8012C628 00129588  38 80 00 01 */	li r4, 1
/* 8012C62C 0012958C  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8012C630 00129590  38 A0 00 02 */	li r5, 2
/* 8012C634 00129594  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012C638 00129598  48 0E 06 29 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C63C 0012959C  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8012C640 001295A0  7F A3 EB 78 */	mr r3, r29
/* 8012C644 001295A4  C0 22 97 C8 */	lfs f1, lbl_805AB4E8@sda21(r2)
/* 8012C648 001295A8  38 80 00 01 */	li r4, 1
/* 8012C64C 001295AC  C0 05 00 48 */	lfs f0, 0x48(r5)
/* 8012C650 001295B0  38 A0 00 05 */	li r5, 5
/* 8012C654 001295B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012C658 001295B8  48 0E 06 09 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C65C 001295BC  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8012C660 001295C0  7F A3 EB 78 */	mr r3, r29
/* 8012C664 001295C4  C0 22 98 8C */	lfs f1, lbl_805AB5AC@sda21(r2)
/* 8012C668 001295C8  38 80 00 01 */	li r4, 1
/* 8012C66C 001295CC  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012C670 001295D0  38 A0 00 04 */	li r5, 4
/* 8012C674 001295D4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012C678 001295D8  48 0E 05 E9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C67C 001295DC  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8012C680 001295E0  7F A3 EB 78 */	mr r3, r29
/* 8012C684 001295E4  C0 22 98 8C */	lfs f1, lbl_805AB5AC@sda21(r2)
/* 8012C688 001295E8  38 80 00 01 */	li r4, 1
/* 8012C68C 001295EC  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012C690 001295F0  38 A0 00 07 */	li r5, 7
/* 8012C694 001295F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012C698 001295F8  48 0E 05 C9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C69C 001295FC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C6A0 00129600  7F A3 EB 78 */	mr r3, r29
/* 8012C6A4 00129604  38 80 00 04 */	li r4, 4
/* 8012C6A8 00129608  38 A0 00 02 */	li r5, 2
/* 8012C6AC 0012960C  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 8012C6B0 00129610  48 0E 05 B1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C6B4 00129614  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C6B8 00129618  7F A3 EB 78 */	mr r3, r29
/* 8012C6BC 0012961C  38 80 00 07 */	li r4, 7
/* 8012C6C0 00129620  38 A0 00 05 */	li r5, 5
/* 8012C6C4 00129624  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 8012C6C8 00129628  48 0E 05 99 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C6CC 0012962C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C6D0 00129630  7F A3 EB 78 */	mr r3, r29
/* 8012C6D4 00129634  C0 42 97 D0 */	lfs f2, lbl_805AB4F0@sda21(r2)
/* 8012C6D8 00129638  38 80 00 03 */	li r4, 3
/* 8012C6DC 0012963C  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 8012C6E0 00129640  38 A0 00 05 */	li r5, 5
/* 8012C6E4 00129644  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8012C6E8 00129648  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C6EC 0012964C  48 0E 05 75 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C6F0 00129650  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C6F4 00129654  7F A3 EB 78 */	mr r3, r29
/* 8012C6F8 00129658  C0 42 97 D0 */	lfs f2, lbl_805AB4F0@sda21(r2)
/* 8012C6FC 0012965C  38 80 00 06 */	li r4, 6
/* 8012C700 00129660  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 8012C704 00129664  38 A0 00 02 */	li r5, 2
/* 8012C708 00129668  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8012C70C 0012966C  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C710 00129670  48 0E 05 51 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C714 00129674  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C718 00129678  7F A3 EB 78 */	mr r3, r29
/* 8012C71C 0012967C  C0 42 97 D0 */	lfs f2, lbl_805AB4F0@sda21(r2)
/* 8012C720 00129680  38 80 00 04 */	li r4, 4
/* 8012C724 00129684  C0 26 00 58 */	lfs f1, 0x58(r6)
/* 8012C728 00129688  38 A0 00 05 */	li r5, 5
/* 8012C72C 0012968C  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8012C730 00129690  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C734 00129694  48 0E 05 2D */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C738 00129698  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C73C 0012969C  7F A3 EB 78 */	mr r3, r29
/* 8012C740 001296A0  C0 42 97 D0 */	lfs f2, lbl_805AB4F0@sda21(r2)
/* 8012C744 001296A4  38 80 00 07 */	li r4, 7
/* 8012C748 001296A8  C0 26 00 78 */	lfs f1, 0x78(r6)
/* 8012C74C 001296AC  38 A0 00 02 */	li r5, 2
/* 8012C750 001296B0  C0 06 00 98 */	lfs f0, 0x98(r6)
/* 8012C754 001296B4  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C758 001296B8  48 0E 05 09 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C75C 001296BC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C760 001296C0  7F A3 EB 78 */	mr r3, r29
/* 8012C764 001296C4  38 80 00 04 */	li r4, 4
/* 8012C768 001296C8  38 A0 00 07 */	li r5, 7
/* 8012C76C 001296CC  C0 26 00 98 */	lfs f1, 0x98(r6)
/* 8012C770 001296D0  48 0E 04 F1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C774 001296D4  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C778 001296D8  7F A3 EB 78 */	mr r3, r29
/* 8012C77C 001296DC  38 80 00 04 */	li r4, 4
/* 8012C780 001296E0  38 A0 00 08 */	li r5, 8
/* 8012C784 001296E4  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C788 001296E8  48 0E 04 D9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C78C 001296EC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C790 001296F0  7F A3 EB 78 */	mr r3, r29
/* 8012C794 001296F4  38 80 00 07 */	li r4, 7
/* 8012C798 001296F8  38 A0 00 0B */	li r5, 0xb
/* 8012C79C 001296FC  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C7A0 00129700  48 0E 04 C1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C7A4 00129704  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C7A8 00129708  7F A3 EB 78 */	mr r3, r29
/* 8012C7AC 0012970C  38 80 00 0A */	li r4, 0xa
/* 8012C7B0 00129710  38 A0 00 08 */	li r5, 8
/* 8012C7B4 00129714  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 8012C7B8 00129718  48 0E 04 A9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C7BC 0012971C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C7C0 00129720  7F A3 EB 78 */	mr r3, r29
/* 8012C7C4 00129724  38 80 00 0D */	li r4, 0xd
/* 8012C7C8 00129728  38 A0 00 0B */	li r5, 0xb
/* 8012C7CC 0012972C  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 8012C7D0 00129730  48 0E 04 91 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C7D4 00129734  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C7D8 00129738  7F A3 EB 78 */	mr r3, r29
/* 8012C7DC 0012973C  C0 42 98 00 */	lfs f2, lbl_805AB520@sda21(r2)
/* 8012C7E0 00129740  38 80 00 09 */	li r4, 9
/* 8012C7E4 00129744  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 8012C7E8 00129748  38 A0 00 02 */	li r5, 2
/* 8012C7EC 0012974C  C0 06 00 A8 */	lfs f0, 0xa8(r6)
/* 8012C7F0 00129750  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C7F4 00129754  48 0E 04 6D */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C7F8 00129758  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C7FC 0012975C  7F A3 EB 78 */	mr r3, r29
/* 8012C800 00129760  C0 42 98 00 */	lfs f2, lbl_805AB520@sda21(r2)
/* 8012C804 00129764  38 80 00 0C */	li r4, 0xc
/* 8012C808 00129768  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 8012C80C 0012976C  38 A0 00 05 */	li r5, 5
/* 8012C810 00129770  C0 06 00 D8 */	lfs f0, 0xd8(r6)
/* 8012C814 00129774  EC 22 00 7A */	fmadds f1, f2, f1, f0
/* 8012C818 00129778  48 0E 04 49 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C81C 0012977C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C820 00129780  7F A3 EB 78 */	mr r3, r29
/* 8012C824 00129784  38 80 00 09 */	li r4, 9
/* 8012C828 00129788  38 A0 00 0B */	li r5, 0xb
/* 8012C82C 0012978C  C0 26 00 F8 */	lfs f1, 0xf8(r6)
/* 8012C830 00129790  48 0E 04 31 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C834 00129794  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C838 00129798  7F A3 EB 78 */	mr r3, r29
/* 8012C83C 0012979C  38 80 00 0C */	li r4, 0xc
/* 8012C840 001297A0  38 A0 00 08 */	li r5, 8
/* 8012C844 001297A4  C0 26 01 18 */	lfs f1, 0x118(r6)
/* 8012C848 001297A8  48 0E 04 19 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C84C 001297AC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C850 001297B0  7F A3 EB 78 */	mr r3, r29
/* 8012C854 001297B4  38 80 00 0A */	li r4, 0xa
/* 8012C858 001297B8  38 A0 00 00 */	li r5, 0
/* 8012C85C 001297BC  C0 26 00 28 */	lfs f1, 0x28(r6)
/* 8012C860 001297C0  C0 06 00 F8 */	lfs f0, 0xf8(r6)
/* 8012C864 001297C4  EC 21 00 2A */	fadds f1, f1, f0
/* 8012C868 001297C8  48 0E 03 F9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C86C 001297CC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C870 001297D0  7F A3 EB 78 */	mr r3, r29
/* 8012C874 001297D4  38 80 00 0D */	li r4, 0xd
/* 8012C878 001297D8  38 A0 00 00 */	li r5, 0
/* 8012C87C 001297DC  C0 26 00 38 */	lfs f1, 0x38(r6)
/* 8012C880 001297E0  C0 06 01 18 */	lfs f0, 0x118(r6)
/* 8012C884 001297E4  EC 21 00 2A */	fadds f1, f1, f0
/* 8012C888 001297E8  48 0E 03 D9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C88C 001297EC  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C890 001297F0  7F A3 EB 78 */	mr r3, r29
/* 8012C894 001297F4  38 80 00 0A */	li r4, 0xa
/* 8012C898 001297F8  38 A0 00 0D */	li r5, 0xd
/* 8012C89C 001297FC  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C8A0 00129800  48 0E 03 C1 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C8A4 00129804  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C8A8 00129808  7F A3 EB 78 */	mr r3, r29
/* 8012C8AC 0012980C  38 80 00 09 */	li r4, 9
/* 8012C8B0 00129810  38 A0 00 0C */	li r5, 0xc
/* 8012C8B4 00129814  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C8B8 00129818  48 0E 03 A9 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C8BC 0012981C  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C8C0 00129820  7F A3 EB 78 */	mr r3, r29
/* 8012C8C4 00129824  38 80 00 0A */	li r4, 0xa
/* 8012C8C8 00129828  38 A0 00 0C */	li r5, 0xc
/* 8012C8CC 0012982C  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C8D0 00129830  48 0E 03 91 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C8D4 00129834  80 DD 00 20 */	lwz r6, 0x20(r29)
/* 8012C8D8 00129838  7F A3 EB 78 */	mr r3, r29
/* 8012C8DC 0012983C  38 80 00 0D */	li r4, 0xd
/* 8012C8E0 00129840  38 A0 00 09 */	li r5, 9
/* 8012C8E4 00129844  C0 26 00 E8 */	lfs f1, 0xe8(r6)
/* 8012C8E8 00129848  48 0E 03 79 */	bl AddMinLengthConstraint__8CRagDollFiif
/* 8012C8EC 0012984C  80 BD 00 20 */	lwz r5, 0x20(r29)
/* 8012C8F0 00129850  7F A3 EB 78 */	mr r3, r29
/* 8012C8F4 00129854  C0 22 98 1C */	lfs f1, lbl_805AB53C@sda21(r2)
/* 8012C8F8 00129858  38 80 00 0A */	li r4, 0xa
/* 8012C8FC 0012985C  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 8012C900 00129860  38 A0 00 0D */	li r5, 0xd
/* 8012C904 00129864  EC 21 00 32 */	fmuls f1, f1, f0
/* 8012C908 00129868  48 0E 02 A5 */	bl AddMaxLengthConstraint__8CRagDollFiif
/* 8012C90C 0012986C  7F A3 EB 78 */	mr r3, r29
/* 8012C910 00129870  38 80 00 08 */	li r4, 8
/* 8012C914 00129874  38 A0 00 02 */	li r5, 2
/* 8012C918 00129878  38 C0 00 05 */	li r6, 5
/* 8012C91C 0012987C  38 E0 00 08 */	li r7, 8
/* 8012C920 00129880  39 00 00 09 */	li r8, 9
/* 8012C924 00129884  39 20 00 0A */	li r9, 0xa
/* 8012C928 00129888  48 0E 01 C9 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 8012C92C 0012988C  7F A3 EB 78 */	mr r3, r29
/* 8012C930 00129890  38 80 00 0B */	li r4, 0xb
/* 8012C934 00129894  38 A0 00 02 */	li r5, 2
/* 8012C938 00129898  38 C0 00 05 */	li r6, 5
/* 8012C93C 0012989C  38 E0 00 0B */	li r7, 0xb
/* 8012C940 001298A0  39 00 00 0C */	li r8, 0xc
/* 8012C944 001298A4  39 20 00 0D */	li r9, 0xd
/* 8012C948 001298A8  48 0E 01 A9 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 8012C94C 001298AC  7F A3 EB 78 */	mr r3, r29
/* 8012C950 001298B0  38 80 00 02 */	li r4, 2
/* 8012C954 001298B4  38 A0 00 0B */	li r5, 0xb
/* 8012C958 001298B8  38 C0 00 05 */	li r6, 5
/* 8012C95C 001298BC  38 E0 00 02 */	li r7, 2
/* 8012C960 001298C0  39 00 00 03 */	li r8, 3
/* 8012C964 001298C4  39 20 00 04 */	li r9, 4
/* 8012C968 001298C8  48 0E 01 89 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 8012C96C 001298CC  7F A3 EB 78 */	mr r3, r29
/* 8012C970 001298D0  38 80 00 05 */	li r4, 5
/* 8012C974 001298D4  38 A0 00 02 */	li r5, 2
/* 8012C978 001298D8  38 C0 00 08 */	li r6, 8
/* 8012C97C 001298DC  38 E0 00 05 */	li r7, 5
/* 8012C980 001298E0  39 00 00 06 */	li r8, 6
/* 8012C984 001298E4  39 20 00 07 */	li r9, 7
/* 8012C988 001298E8  48 0E 01 69 */	bl AddJointConstraint__8CRagDollFiiiiii
/* 8012C98C 001298EC  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8012C990 001298F0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8012C994 001298F4  48 00 00 D0 */	b lbl_8012CA64
lbl_8012C998:
/* 8012C998 001298F8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8012C99C 001298FC  2C 00 00 19 */	cmpwi r0, 0x19
/* 8012C9A0 00129900  40 82 00 C0 */	bne lbl_8012CA60
/* 8012C9A4 00129904  80 1F 00 04 */	lwz r0, 4(r31)
/* 8012C9A8 00129908  2C 00 00 06 */	cmpwi r0, 6
/* 8012C9AC 0012990C  40 82 00 B4 */	bne lbl_8012CA60
/* 8012C9B0 00129910  80 1F 00 08 */	lwz r0, 8(r31)
/* 8012C9B4 00129914  7F C4 F3 78 */	mr r4, r30
/* 8012C9B8 00129918  38 61 00 14 */	addi r3, r1, 0x14
/* 8012C9BC 0012991C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8012C9C0 00129920  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8012C9C4 00129924  4B F1 B5 59 */	bl GetIdForScript__13CStateManagerCF9TEditorId
/* 8012C9C8 00129928  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 8012C9CC 0012992C  7F C3 F3 78 */	mr r3, r30
/* 8012C9D0 00129930  38 81 00 10 */	addi r4, r1, 0x10
/* 8012C9D4 00129934  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8012C9D8 00129938  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8012C9DC 0012993C  4B F1 FB C9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8012C9E0 00129940  7C 64 1B 78 */	mr r4, r3
/* 8012C9E4 00129944  38 61 00 20 */	addi r3, r1, 0x20
/* 8012C9E8 00129948  4B F7 9B 65 */	bl "__ct__29TCastToPtr<15CScriptWaypoint>FP7CEntity"
/* 8012C9EC 0012994C  80 83 00 04 */	lwz r4, 4(r3)
/* 8012C9F0 00129950  28 04 00 00 */	cmplwi r4, 0
/* 8012C9F4 00129954  41 82 00 6C */	beq lbl_8012CA60
/* 8012C9F8 00129958  38 7D 00 90 */	addi r3, r29, 0x90
/* 8012C9FC 0012995C  80 1D 00 90 */	lwz r0, 0x90(r29)
/* 8012CA00 00129960  54 00 08 3C */	slwi r0, r0, 1
/* 8012CA04 00129964  7C 63 02 14 */	add r3, r3, r0
/* 8012CA08 00129968  34 63 00 04 */	addic. r3, r3, 4
/* 8012CA0C 0012996C  41 82 00 0C */	beq lbl_8012CA18
/* 8012CA10 00129970  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 8012CA14 00129974  B0 03 00 00 */	sth r0, 0(r3)
lbl_8012CA18:
/* 8012CA18 00129978  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8012CA1C 0012997C  38 BD 00 9C */	addi r5, r29, 0x9c
/* 8012CA20 00129980  38 03 00 01 */	addi r0, r3, 1
/* 8012CA24 00129984  90 1D 00 90 */	stw r0, 0x90(r29)
/* 8012CA28 00129988  80 1D 00 9C */	lwz r0, 0x9c(r29)
/* 8012CA2C 0012998C  80 64 00 EC */	lwz r3, 0xec(r4)
/* 8012CA30 00129990  54 00 10 3A */	slwi r0, r0, 2
/* 8012CA34 00129994  7C 85 02 14 */	add r4, r5, r0
/* 8012CA38 00129998  34 84 00 04 */	addic. r4, r4, 4
/* 8012CA3C 0012999C  41 82 00 08 */	beq lbl_8012CA44
/* 8012CA40 001299A0  90 64 00 00 */	stw r3, 0(r4)
lbl_8012CA44:
/* 8012CA44 001299A4  80 7D 00 9C */	lwz r3, 0x9c(r29)
/* 8012CA48 001299A8  38 03 00 01 */	addi r0, r3, 1
/* 8012CA4C 001299AC  90 1D 00 9C */	stw r0, 0x9c(r29)
/* 8012CA50 001299B0  80 1D 00 90 */	lwz r0, 0x90(r29)
/* 8012CA54 001299B4  20 00 00 04 */	subfic r0, r0, 4
/* 8012CA58 001299B8  2C 00 00 00 */	cmpwi r0, 0
/* 8012CA5C 001299BC  40 81 00 24 */	ble lbl_8012CA80
lbl_8012CA60:
/* 8012CA60 001299C0  3B FF 00 0C */	addi r31, r31, 0xc
lbl_8012CA64:
/* 8012CA64 001299C4  80 7D 00 6C */	lwz r3, 0x6c(r29)
/* 8012CA68 001299C8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8012CA6C 001299CC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8012CA70 001299D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8012CA74 001299D4  7C 03 02 14 */	add r0, r3, r0
/* 8012CA78 001299D8  7C 1F 00 40 */	cmplw r31, r0
/* 8012CA7C 001299DC  40 82 FF 1C */	bne lbl_8012C998
lbl_8012CA80:
/* 8012CA80 001299E0  7F A3 EB 78 */	mr r3, r29
/* 8012CA84 001299E4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8012CA88 001299E8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8012CA8C 001299EC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8012CA90 001299F0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8012CA94 001299F4  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 8012CA98 001299F8  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 8012CA9C 001299FC  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 8012CAA0 00129A00  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8012CAA4 00129A04  7C 08 03 A6 */	mtlr r0
/* 8012CAA8 00129A08  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8012CAAC 00129A0C  4E 80 00 20 */	blr

.global sub_8012cab0
sub_8012cab0:
/* 8012CAB0 00129A10  A0 A5 00 00 */	lhz r5, 0(r5)
/* 8012CAB4 00129A14  88 04 00 00 */	lbz r0, 0(r4)
/* 8012CAB8 00129A18  98 03 00 00 */	stb r0, 0(r3)
/* 8012CABC 00129A1C  B0 A3 00 02 */	sth r5, 2(r3)
/* 8012CAC0 00129A20  4E 80 00 20 */	blr

.global "reserve__Q24rstl64vector<Q28CRagDoll16CRagDollParticle,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl64vector<Q28CRagDoll16CRagDollParticle,Q24rstl17rmemory_allocator>Fi":
/* 8012CAC4 00129A24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012CAC8 00129A28  7C 08 02 A6 */	mflr r0
/* 8012CACC 00129A2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012CAD0 00129A30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012CAD4 00129A34  7C 9F 23 78 */	mr r31, r4
/* 8012CAD8 00129A38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012CADC 00129A3C  7C 7E 1B 78 */	mr r30, r3
/* 8012CAE0 00129A40  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012CAE4 00129A44  80 03 00 08 */	lwz r0, 8(r3)
/* 8012CAE8 00129A48  7C 1F 00 00 */	cmpw r31, r0
/* 8012CAEC 00129A4C  40 81 00 98 */	ble lbl_8012CB84
/* 8012CAF0 00129A50  57 E3 30 33 */	rlwinm. r3, r31, 6, 0, 0x19
/* 8012CAF4 00129A54  40 82 00 0C */	bne lbl_8012CB00
/* 8012CAF8 00129A58  3B A0 00 00 */	li r29, 0
/* 8012CAFC 00129A5C  48 00 00 1C */	b lbl_8012CB18
lbl_8012CB00:
/* 8012CB00 00129A60  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CB04 00129A64  38 A0 00 00 */	li r5, 0
/* 8012CB08 00129A68  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CB0C 00129A6C  38 84 00 0A */	addi r4, r4, 0xa
/* 8012CB10 00129A70  48 1E 8D 09 */	bl __nwa__FUlPCcPCc
/* 8012CB14 00129A74  7C 7D 1B 78 */	mr r29, r3
lbl_8012CB18:
/* 8012CB18 00129A78  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CB1C 00129A7C  7F A5 EB 78 */	mr r5, r29
/* 8012CB20 00129A80  80 DE 00 0C */	lwz r6, 0xc(r30)
/* 8012CB24 00129A84  38 61 00 14 */	addi r3, r1, 0x14
/* 8012CB28 00129A88  54 00 30 32 */	slwi r0, r0, 6
/* 8012CB2C 00129A8C  38 81 00 0C */	addi r4, r1, 0xc
/* 8012CB30 00129A90  7C C6 02 14 */	add r6, r6, r0
/* 8012CB34 00129A94  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8012CB38 00129A98  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8012CB3C 00129A9C  90 C1 00 08 */	stw r6, 8(r1)
/* 8012CB40 00129AA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8012CB44 00129AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012CB48 00129AA8  48 00 00 59 */	bl sub_8012cba0
/* 8012CB4C 00129AAC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CB50 00129AB0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8012CB54 00129AB4  54 00 30 32 */	slwi r0, r0, 6
/* 8012CB58 00129AB8  7C 64 1B 78 */	mr r4, r3
/* 8012CB5C 00129ABC  7C 03 02 14 */	add r0, r3, r0
/* 8012CB60 00129AC0  48 00 00 08 */	b lbl_8012CB68
lbl_8012CB64:
/* 8012CB64 00129AC4  38 84 00 40 */	addi r4, r4, 0x40
lbl_8012CB68:
/* 8012CB68 00129AC8  7C 04 00 40 */	cmplw r4, r0
/* 8012CB6C 00129ACC  40 82 FF F8 */	bne lbl_8012CB64
/* 8012CB70 00129AD0  28 03 00 00 */	cmplwi r3, 0
/* 8012CB74 00129AD4  41 82 00 08 */	beq lbl_8012CB7C
/* 8012CB78 00129AD8  48 1E 8D B9 */	bl Free__7CMemoryFPCv
lbl_8012CB7C:
/* 8012CB7C 00129ADC  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8012CB80 00129AE0  93 FE 00 08 */	stw r31, 8(r30)
lbl_8012CB84:
/* 8012CB84 00129AE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012CB88 00129AE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012CB8C 00129AEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012CB90 00129AF0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012CB94 00129AF4  7C 08 03 A6 */	mtlr r0
/* 8012CB98 00129AF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8012CB9C 00129AFC  4E 80 00 20 */	blr

.global sub_8012cba0
sub_8012cba0:
/* 8012CBA0 00129B00  80 63 00 00 */	lwz r3, 0(r3)
/* 8012CBA4 00129B04  48 00 00 94 */	b lbl_8012CC38
lbl_8012CBA8:
/* 8012CBA8 00129B08  28 05 00 00 */	cmplwi r5, 0
/* 8012CBAC 00129B0C  41 82 00 84 */	beq lbl_8012CC30
/* 8012CBB0 00129B10  88 03 00 00 */	lbz r0, 0(r3)
/* 8012CBB4 00129B14  98 05 00 00 */	stb r0, 0(r5)
/* 8012CBB8 00129B18  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012CBBC 00129B1C  D0 05 00 04 */	stfs f0, 4(r5)
/* 8012CBC0 00129B20  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012CBC4 00129B24  D0 05 00 08 */	stfs f0, 8(r5)
/* 8012CBC8 00129B28  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8012CBCC 00129B2C  D0 05 00 0C */	stfs f0, 0xc(r5)
/* 8012CBD0 00129B30  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8012CBD4 00129B34  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8012CBD8 00129B38  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8012CBDC 00129B3C  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 8012CBE0 00129B40  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8012CBE4 00129B44  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8012CBE8 00129B48  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8012CBEC 00129B4C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8012CBF0 00129B50  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8012CBF4 00129B54  D0 05 00 20 */	stfs f0, 0x20(r5)
/* 8012CBF8 00129B58  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8012CBFC 00129B5C  D0 05 00 24 */	stfs f0, 0x24(r5)
/* 8012CC00 00129B60  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8012CC04 00129B64  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 8012CC08 00129B68  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8012CC0C 00129B6C  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 8012CC10 00129B70  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8012CC14 00129B74  D0 05 00 30 */	stfs f0, 0x30(r5)
/* 8012CC18 00129B78  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8012CC1C 00129B7C  D0 05 00 34 */	stfs f0, 0x34(r5)
/* 8012CC20 00129B80  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8012CC24 00129B84  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 8012CC28 00129B88  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 8012CC2C 00129B8C  98 05 00 3C */	stb r0, 0x3c(r5)
lbl_8012CC30:
/* 8012CC30 00129B90  38 A5 00 40 */	addi r5, r5, 0x40
/* 8012CC34 00129B94  38 63 00 40 */	addi r3, r3, 0x40
lbl_8012CC38:
/* 8012CC38 00129B98  80 04 00 00 */	lwz r0, 0(r4)
/* 8012CC3C 00129B9C  7C 03 00 40 */	cmplw r3, r0
/* 8012CC40 00129BA0  40 82 FF 68 */	bne lbl_8012CBA8
/* 8012CC44 00129BA4  7C A3 2B 78 */	mr r3, r5
/* 8012CC48 00129BA8  4E 80 00 20 */	blr

.global "reserve__Q24rstl72vector<Q28CRagDoll24CRagDollLengthConstraint,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl72vector<Q28CRagDoll24CRagDollLengthConstraint,Q24rstl17rmemory_allocator>Fi":
/* 8012CC4C 00129BAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012CC50 00129BB0  7C 08 02 A6 */	mflr r0
/* 8012CC54 00129BB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012CC58 00129BB8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012CC5C 00129BBC  7C 9F 23 78 */	mr r31, r4
/* 8012CC60 00129BC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012CC64 00129BC4  7C 7E 1B 78 */	mr r30, r3
/* 8012CC68 00129BC8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012CC6C 00129BCC  80 03 00 08 */	lwz r0, 8(r3)
/* 8012CC70 00129BD0  7C 1F 00 00 */	cmpw r31, r0
/* 8012CC74 00129BD4  40 81 00 C4 */	ble lbl_8012CD38
/* 8012CC78 00129BD8  57 E3 20 37 */	rlwinm. r3, r31, 4, 0, 0x1b
/* 8012CC7C 00129BDC  40 82 00 0C */	bne lbl_8012CC88
/* 8012CC80 00129BE0  3B A0 00 00 */	li r29, 0
/* 8012CC84 00129BE4  48 00 00 1C */	b lbl_8012CCA0
lbl_8012CC88:
/* 8012CC88 00129BE8  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CC8C 00129BEC  38 A0 00 00 */	li r5, 0
/* 8012CC90 00129BF0  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CC94 00129BF4  38 84 00 0A */	addi r4, r4, 0xa
/* 8012CC98 00129BF8  48 1E 8B 81 */	bl __nwa__FUlPCcPCc
/* 8012CC9C 00129BFC  7C 7D 1B 78 */	mr r29, r3
lbl_8012CCA0:
/* 8012CCA0 00129C00  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CCA4 00129C04  7F A4 EB 78 */	mr r4, r29
/* 8012CCA8 00129C08  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 8012CCAC 00129C0C  54 00 20 36 */	slwi r0, r0, 4
/* 8012CCB0 00129C10  7C 65 02 14 */	add r3, r5, r0
/* 8012CCB4 00129C14  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8012CCB8 00129C18  90 61 00 08 */	stw r3, 8(r1)
/* 8012CCBC 00129C1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012CCC0 00129C20  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8012CCC4 00129C24  48 00 00 34 */	b lbl_8012CCF8
lbl_8012CCC8:
/* 8012CCC8 00129C28  28 04 00 00 */	cmplwi r4, 0
/* 8012CCCC 00129C2C  41 82 00 24 */	beq lbl_8012CCF0
/* 8012CCD0 00129C30  80 05 00 00 */	lwz r0, 0(r5)
/* 8012CCD4 00129C34  90 04 00 00 */	stw r0, 0(r4)
/* 8012CCD8 00129C38  80 05 00 04 */	lwz r0, 4(r5)
/* 8012CCDC 00129C3C  90 04 00 04 */	stw r0, 4(r4)
/* 8012CCE0 00129C40  C0 05 00 08 */	lfs f0, 8(r5)
/* 8012CCE4 00129C44  D0 04 00 08 */	stfs f0, 8(r4)
/* 8012CCE8 00129C48  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8012CCEC 00129C4C  90 04 00 0C */	stw r0, 0xc(r4)
lbl_8012CCF0:
/* 8012CCF0 00129C50  38 84 00 10 */	addi r4, r4, 0x10
/* 8012CCF4 00129C54  38 A5 00 10 */	addi r5, r5, 0x10
lbl_8012CCF8:
/* 8012CCF8 00129C58  7C 05 18 40 */	cmplw r5, r3
/* 8012CCFC 00129C5C  40 82 FF CC */	bne lbl_8012CCC8
/* 8012CD00 00129C60  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CD04 00129C64  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8012CD08 00129C68  54 00 20 36 */	slwi r0, r0, 4
/* 8012CD0C 00129C6C  7C 64 1B 78 */	mr r4, r3
/* 8012CD10 00129C70  7C 03 02 14 */	add r0, r3, r0
/* 8012CD14 00129C74  48 00 00 08 */	b lbl_8012CD1C
lbl_8012CD18:
/* 8012CD18 00129C78  38 84 00 10 */	addi r4, r4, 0x10
lbl_8012CD1C:
/* 8012CD1C 00129C7C  7C 04 00 40 */	cmplw r4, r0
/* 8012CD20 00129C80  40 82 FF F8 */	bne lbl_8012CD18
/* 8012CD24 00129C84  28 03 00 00 */	cmplwi r3, 0
/* 8012CD28 00129C88  41 82 00 08 */	beq lbl_8012CD30
/* 8012CD2C 00129C8C  48 1E 8C 05 */	bl Free__7CMemoryFPCv
lbl_8012CD30:
/* 8012CD30 00129C90  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8012CD34 00129C94  93 FE 00 08 */	stw r31, 8(r30)
lbl_8012CD38:
/* 8012CD38 00129C98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012CD3C 00129C9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012CD40 00129CA0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012CD44 00129CA4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012CD48 00129CA8  7C 08 03 A6 */	mtlr r0
/* 8012CD4C 00129CAC  38 21 00 30 */	addi r1, r1, 0x30
/* 8012CD50 00129CB0  4E 80 00 20 */	blr

.global "reserve__Q24rstl71vector<Q28CRagDoll23CRagDollJointConstraint,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl71vector<Q28CRagDoll23CRagDollJointConstraint,Q24rstl17rmemory_allocator>Fi":
/* 8012CD54 00129CB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8012CD58 00129CB8  7C 08 02 A6 */	mflr r0
/* 8012CD5C 00129CBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8012CD60 00129CC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012CD64 00129CC4  7C 9F 23 78 */	mr r31, r4
/* 8012CD68 00129CC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8012CD6C 00129CCC  7C 7E 1B 78 */	mr r30, r3
/* 8012CD70 00129CD0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8012CD74 00129CD4  80 03 00 08 */	lwz r0, 8(r3)
/* 8012CD78 00129CD8  7C 1F 00 00 */	cmpw r31, r0
/* 8012CD7C 00129CDC  40 81 00 D8 */	ble lbl_8012CE54
/* 8012CD80 00129CE0  1C 7F 00 18 */	mulli r3, r31, 0x18
/* 8012CD84 00129CE4  2C 03 00 00 */	cmpwi r3, 0
/* 8012CD88 00129CE8  40 82 00 0C */	bne lbl_8012CD94
/* 8012CD8C 00129CEC  3B A0 00 00 */	li r29, 0
/* 8012CD90 00129CF0  48 00 00 1C */	b lbl_8012CDAC
lbl_8012CD94:
/* 8012CD94 00129CF4  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CD98 00129CF8  38 A0 00 00 */	li r5, 0
/* 8012CD9C 00129CFC  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CDA0 00129D00  38 84 00 0A */	addi r4, r4, 0xa
/* 8012CDA4 00129D04  48 1E 8A 75 */	bl __nwa__FUlPCcPCc
/* 8012CDA8 00129D08  7C 7D 1B 78 */	mr r29, r3
lbl_8012CDAC:
/* 8012CDAC 00129D0C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CDB0 00129D10  7F A4 EB 78 */	mr r4, r29
/* 8012CDB4 00129D14  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 8012CDB8 00129D18  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8012CDBC 00129D1C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8012CDC0 00129D20  7C 65 02 14 */	add r3, r5, r0
/* 8012CDC4 00129D24  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8012CDC8 00129D28  90 61 00 08 */	stw r3, 8(r1)
/* 8012CDCC 00129D2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8012CDD0 00129D30  48 00 00 44 */	b lbl_8012CE14
lbl_8012CDD4:
/* 8012CDD4 00129D34  28 04 00 00 */	cmplwi r4, 0
/* 8012CDD8 00129D38  41 82 00 34 */	beq lbl_8012CE0C
/* 8012CDDC 00129D3C  80 05 00 00 */	lwz r0, 0(r5)
/* 8012CDE0 00129D40  90 04 00 00 */	stw r0, 0(r4)
/* 8012CDE4 00129D44  80 05 00 04 */	lwz r0, 4(r5)
/* 8012CDE8 00129D48  90 04 00 04 */	stw r0, 4(r4)
/* 8012CDEC 00129D4C  80 05 00 08 */	lwz r0, 8(r5)
/* 8012CDF0 00129D50  90 04 00 08 */	stw r0, 8(r4)
/* 8012CDF4 00129D54  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8012CDF8 00129D58  90 04 00 0C */	stw r0, 0xc(r4)
/* 8012CDFC 00129D5C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8012CE00 00129D60  90 04 00 10 */	stw r0, 0x10(r4)
/* 8012CE04 00129D64  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8012CE08 00129D68  90 04 00 14 */	stw r0, 0x14(r4)
lbl_8012CE0C:
/* 8012CE0C 00129D6C  38 84 00 18 */	addi r4, r4, 0x18
/* 8012CE10 00129D70  38 A5 00 18 */	addi r5, r5, 0x18
lbl_8012CE14:
/* 8012CE14 00129D74  7C 05 18 40 */	cmplw r5, r3
/* 8012CE18 00129D78  40 82 FF BC */	bne lbl_8012CDD4
/* 8012CE1C 00129D7C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8012CE20 00129D80  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8012CE24 00129D84  1C 00 00 18 */	mulli r0, r0, 0x18
/* 8012CE28 00129D88  7C 64 1B 78 */	mr r4, r3
/* 8012CE2C 00129D8C  7C 03 02 14 */	add r0, r3, r0
/* 8012CE30 00129D90  48 00 00 08 */	b lbl_8012CE38
lbl_8012CE34:
/* 8012CE34 00129D94  38 84 00 18 */	addi r4, r4, 0x18
lbl_8012CE38:
/* 8012CE38 00129D98  7C 04 00 40 */	cmplw r4, r0
/* 8012CE3C 00129D9C  40 82 FF F8 */	bne lbl_8012CE34
/* 8012CE40 00129DA0  28 03 00 00 */	cmplwi r3, 0
/* 8012CE44 00129DA4  41 82 00 08 */	beq lbl_8012CE4C
/* 8012CE48 00129DA8  48 1E 8A E9 */	bl Free__7CMemoryFPCv
lbl_8012CE4C:
/* 8012CE4C 00129DAC  93 BE 00 0C */	stw r29, 0xc(r30)
/* 8012CE50 00129DB0  93 FE 00 08 */	stw r31, 8(r30)
lbl_8012CE54:
/* 8012CE54 00129DB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8012CE58 00129DB8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012CE5C 00129DBC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8012CE60 00129DC0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8012CE64 00129DC4  7C 08 03 A6 */	mtlr r0
/* 8012CE68 00129DC8  38 21 00 30 */	addi r1, r1, 0x30
/* 8012CE6C 00129DCC  4E 80 00 20 */	blr

.global "erase__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRCQ34rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>8iterator"
"erase__Q24rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>FRCQ34rstl43list<9TUniqueId,Q24rstl17rmemory_allocator>8iterator":
/* 8012CE70 00129DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012CE74 00129DD4  7C 08 02 A6 */	mflr r0
/* 8012CE78 00129DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012CE7C 00129DDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012CE80 00129DE0  93 C1 00 08 */	stw r30, 8(r1)
/* 8012CE84 00129DE4  7C 7E 1B 78 */	mr r30, r3
/* 8012CE88 00129DE8  80 03 00 04 */	lwz r0, 4(r3)
/* 8012CE8C 00129DEC  83 E4 00 04 */	lwz r31, 4(r4)
/* 8012CE90 00129DF0  7C 04 00 40 */	cmplw r4, r0
/* 8012CE94 00129DF4  40 82 00 08 */	bne lbl_8012CE9C
/* 8012CE98 00129DF8  93 FE 00 04 */	stw r31, 4(r30)
lbl_8012CE9C:
/* 8012CE9C 00129DFC  80 04 00 04 */	lwz r0, 4(r4)
/* 8012CEA0 00129E00  28 04 00 00 */	cmplwi r4, 0
/* 8012CEA4 00129E04  80 64 00 00 */	lwz r3, 0(r4)
/* 8012CEA8 00129E08  90 03 00 04 */	stw r0, 4(r3)
/* 8012CEAC 00129E0C  80 04 00 00 */	lwz r0, 0(r4)
/* 8012CEB0 00129E10  80 64 00 04 */	lwz r3, 4(r4)
/* 8012CEB4 00129E14  90 03 00 00 */	stw r0, 0(r3)
/* 8012CEB8 00129E18  41 82 00 0C */	beq lbl_8012CEC4
/* 8012CEBC 00129E1C  7C 83 23 78 */	mr r3, r4
/* 8012CEC0 00129E20  48 1E 8A 71 */	bl Free__7CMemoryFPCv
lbl_8012CEC4:
/* 8012CEC4 00129E24  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8012CEC8 00129E28  7F E3 FB 78 */	mr r3, r31
/* 8012CECC 00129E2C  38 04 FF FF */	addi r0, r4, -1
/* 8012CED0 00129E30  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8012CED4 00129E34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012CED8 00129E38  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012CEDC 00129E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012CEE0 00129E40  7C 08 03 A6 */	mtlr r0
/* 8012CEE4 00129E44  38 21 00 10 */	addi r1, r1, 0x10
/* 8012CEE8 00129E48  4E 80 00 20 */	blr

.global __sinit_CSpacePirate_cpp
__sinit_CSpacePirate_cpp:
/* 8012CEEC 00129E4C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8012CEF0 00129E50  7C 08 02 A6 */	mflr r0
/* 8012CEF4 00129E54  3C 60 80 3D */	lis r3, lbl_803CFF70@ha
/* 8012CEF8 00129E58  3C A0 80 47 */	lis r5, lbl_8046C570@ha
/* 8012CEFC 00129E5C  90 01 01 14 */	stw r0, 0x114(r1)
/* 8012CF00 00129E60  38 83 FF 70 */	addi r4, r3, lbl_803CFF70@l
/* 8012CF04 00129E64  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8012CF08 00129E68  93 E1 01 0C */	stw r31, 0x10c(r1)
/* 8012CF0C 00129E6C  3B E5 C5 70 */	addi r31, r5, lbl_8046C570@l
/* 8012CF10 00129E70  38 84 00 56 */	addi r4, r4, 0x56
/* 8012CF14 00129E74  4B ED 7D A5 */	bl string_l__4rstlFPCc
/* 8012CF18 00129E78  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012CF1C 00129E7C  38 81 00 F8 */	addi r4, r1, 0xf8
/* 8012CF20 00129E80  48 21 12 41 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012CF24 00129E84  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012CF28 00129E88  38 BF 00 00 */	addi r5, r31, 0
/* 8012CF2C 00129E8C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012CF30 00129E90  48 25 C7 5D */	bl __register_global_object
/* 8012CF34 00129E94  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8012CF38 00129E98  48 21 0B A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012CF3C 00129E9C  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CF40 00129EA0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8012CF44 00129EA4  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CF48 00129EA8  38 84 00 5D */	addi r4, r4, 0x5d
/* 8012CF4C 00129EAC  4B ED 7D 6D */	bl string_l__4rstlFPCc
/* 8012CF50 00129EB0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012CF54 00129EB4  38 81 00 E8 */	addi r4, r1, 0xe8
/* 8012CF58 00129EB8  38 63 00 10 */	addi r3, r3, 0x10
/* 8012CF5C 00129EBC  48 21 12 05 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012CF60 00129EC0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012CF64 00129EC4  38 BF 00 0C */	addi r5, r31, 0xc
/* 8012CF68 00129EC8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012CF6C 00129ECC  48 25 C7 21 */	bl __register_global_object
/* 8012CF70 00129ED0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8012CF74 00129ED4  48 21 0B 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012CF78 00129ED8  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CF7C 00129EDC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8012CF80 00129EE0  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CF84 00129EE4  38 84 00 64 */	addi r4, r4, 0x64
/* 8012CF88 00129EE8  4B ED 7D 31 */	bl string_l__4rstlFPCc
/* 8012CF8C 00129EEC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012CF90 00129EF0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8012CF94 00129EF4  38 63 00 20 */	addi r3, r3, 0x20
/* 8012CF98 00129EF8  48 21 11 C9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012CF9C 00129EFC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012CFA0 00129F00  38 BF 00 18 */	addi r5, r31, 0x18
/* 8012CFA4 00129F04  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012CFA8 00129F08  48 25 C6 E5 */	bl __register_global_object
/* 8012CFAC 00129F0C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8012CFB0 00129F10  48 21 0B 31 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012CFB4 00129F14  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CFB8 00129F18  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8012CFBC 00129F1C  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CFC0 00129F20  38 84 00 2C */	addi r4, r4, 0x2c
/* 8012CFC4 00129F24  4B ED 7C F5 */	bl string_l__4rstlFPCc
/* 8012CFC8 00129F28  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012CFCC 00129F2C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8012CFD0 00129F30  38 63 00 30 */	addi r3, r3, 0x30
/* 8012CFD4 00129F34  48 21 11 8D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012CFD8 00129F38  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012CFDC 00129F3C  38 BF 00 24 */	addi r5, r31, 0x24
/* 8012CFE0 00129F40  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012CFE4 00129F44  48 25 C6 A9 */	bl __register_global_object
/* 8012CFE8 00129F48  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8012CFEC 00129F4C  48 21 0A F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012CFF0 00129F50  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012CFF4 00129F54  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012CFF8 00129F58  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012CFFC 00129F5C  38 84 00 34 */	addi r4, r4, 0x34
/* 8012D000 00129F60  4B ED 7C B9 */	bl string_l__4rstlFPCc
/* 8012D004 00129F64  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D008 00129F68  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8012D00C 00129F6C  38 63 00 40 */	addi r3, r3, 0x40
/* 8012D010 00129F70  48 21 11 51 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D014 00129F74  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D018 00129F78  38 BF 00 30 */	addi r5, r31, 0x30
/* 8012D01C 00129F7C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D020 00129F80  48 25 C6 6D */	bl __register_global_object
/* 8012D024 00129F84  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8012D028 00129F88  48 21 0A B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D02C 00129F8C  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D030 00129F90  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8012D034 00129F94  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D038 00129F98  38 84 00 6F */	addi r4, r4, 0x6f
/* 8012D03C 00129F9C  4B ED 7C 7D */	bl string_l__4rstlFPCc
/* 8012D040 00129FA0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D044 00129FA4  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8012D048 00129FA8  38 63 00 50 */	addi r3, r3, 0x50
/* 8012D04C 00129FAC  48 21 11 15 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D050 00129FB0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D054 00129FB4  38 BF 00 3C */	addi r5, r31, 0x3c
/* 8012D058 00129FB8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D05C 00129FBC  48 25 C6 31 */	bl __register_global_object
/* 8012D060 00129FC0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8012D064 00129FC4  48 21 0A 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D068 00129FC8  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D06C 00129FCC  38 61 00 98 */	addi r3, r1, 0x98
/* 8012D070 00129FD0  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D074 00129FD4  38 84 00 7A */	addi r4, r4, 0x7a
/* 8012D078 00129FD8  4B ED 7C 41 */	bl string_l__4rstlFPCc
/* 8012D07C 00129FDC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D080 00129FE0  38 81 00 98 */	addi r4, r1, 0x98
/* 8012D084 00129FE4  38 63 00 60 */	addi r3, r3, 0x60
/* 8012D088 00129FE8  48 21 10 D9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D08C 00129FEC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D090 00129FF0  38 BF 00 48 */	addi r5, r31, 0x48
/* 8012D094 00129FF4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D098 00129FF8  48 25 C5 F5 */	bl __register_global_object
/* 8012D09C 00129FFC  38 61 00 98 */	addi r3, r1, 0x98
/* 8012D0A0 0012A000  48 21 0A 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D0A4 0012A004  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D0A8 0012A008  38 61 00 88 */	addi r3, r1, 0x88
/* 8012D0AC 0012A00C  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D0B0 0012A010  38 84 00 82 */	addi r4, r4, 0x82
/* 8012D0B4 0012A014  4B ED 7C 05 */	bl string_l__4rstlFPCc
/* 8012D0B8 0012A018  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D0BC 0012A01C  38 81 00 88 */	addi r4, r1, 0x88
/* 8012D0C0 0012A020  38 63 00 70 */	addi r3, r3, 0x70
/* 8012D0C4 0012A024  48 21 10 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D0C8 0012A028  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D0CC 0012A02C  38 BF 00 54 */	addi r5, r31, 0x54
/* 8012D0D0 0012A030  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D0D4 0012A034  48 25 C5 B9 */	bl __register_global_object
/* 8012D0D8 0012A038  38 61 00 88 */	addi r3, r1, 0x88
/* 8012D0DC 0012A03C  48 21 0A 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D0E0 0012A040  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D0E4 0012A044  38 61 00 78 */	addi r3, r1, 0x78
/* 8012D0E8 0012A048  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D0EC 0012A04C  38 84 00 8A */	addi r4, r4, 0x8a
/* 8012D0F0 0012A050  4B ED 7B C9 */	bl string_l__4rstlFPCc
/* 8012D0F4 0012A054  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D0F8 0012A058  38 81 00 78 */	addi r4, r1, 0x78
/* 8012D0FC 0012A05C  38 63 00 80 */	addi r3, r3, 0x80
/* 8012D100 0012A060  48 21 10 61 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D104 0012A064  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D108 0012A068  38 BF 00 60 */	addi r5, r31, 0x60
/* 8012D10C 0012A06C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D110 0012A070  48 25 C5 7D */	bl __register_global_object
/* 8012D114 0012A074  38 61 00 78 */	addi r3, r1, 0x78
/* 8012D118 0012A078  48 21 09 C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D11C 0012A07C  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D120 0012A080  38 61 00 68 */	addi r3, r1, 0x68
/* 8012D124 0012A084  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D128 0012A088  38 84 00 90 */	addi r4, r4, 0x90
/* 8012D12C 0012A08C  4B ED 7B 8D */	bl string_l__4rstlFPCc
/* 8012D130 0012A090  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D134 0012A094  38 81 00 68 */	addi r4, r1, 0x68
/* 8012D138 0012A098  38 63 00 90 */	addi r3, r3, 0x90
/* 8012D13C 0012A09C  48 21 10 25 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D140 0012A0A0  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D144 0012A0A4  38 BF 00 6C */	addi r5, r31, 0x6c
/* 8012D148 0012A0A8  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D14C 0012A0AC  48 25 C5 41 */	bl __register_global_object
/* 8012D150 0012A0B0  38 61 00 68 */	addi r3, r1, 0x68
/* 8012D154 0012A0B4  48 21 09 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D158 0012A0B8  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D15C 0012A0BC  38 61 00 58 */	addi r3, r1, 0x58
/* 8012D160 0012A0C0  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D164 0012A0C4  38 84 00 97 */	addi r4, r4, 0x97
/* 8012D168 0012A0C8  4B ED 7B 51 */	bl string_l__4rstlFPCc
/* 8012D16C 0012A0CC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D170 0012A0D0  38 81 00 58 */	addi r4, r1, 0x58
/* 8012D174 0012A0D4  38 63 00 A0 */	addi r3, r3, 0xa0
/* 8012D178 0012A0D8  48 21 0F E9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D17C 0012A0DC  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D180 0012A0E0  38 BF 00 78 */	addi r5, r31, 0x78
/* 8012D184 0012A0E4  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D188 0012A0E8  48 25 C5 05 */	bl __register_global_object
/* 8012D18C 0012A0EC  38 61 00 58 */	addi r3, r1, 0x58
/* 8012D190 0012A0F0  48 21 09 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D194 0012A0F4  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D198 0012A0F8  38 61 00 48 */	addi r3, r1, 0x48
/* 8012D19C 0012A0FC  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D1A0 0012A100  38 84 00 9F */	addi r4, r4, 0x9f
/* 8012D1A4 0012A104  4B ED 7B 15 */	bl string_l__4rstlFPCc
/* 8012D1A8 0012A108  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D1AC 0012A10C  38 81 00 48 */	addi r4, r1, 0x48
/* 8012D1B0 0012A110  38 63 00 B0 */	addi r3, r3, 0xb0
/* 8012D1B4 0012A114  48 21 0F AD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D1B8 0012A118  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D1BC 0012A11C  38 BF 00 84 */	addi r5, r31, 0x84
/* 8012D1C0 0012A120  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D1C4 0012A124  48 25 C4 C9 */	bl __register_global_object
/* 8012D1C8 0012A128  38 61 00 48 */	addi r3, r1, 0x48
/* 8012D1CC 0012A12C  48 21 09 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D1D0 0012A130  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D1D4 0012A134  38 61 00 38 */	addi r3, r1, 0x38
/* 8012D1D8 0012A138  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D1DC 0012A13C  38 84 00 A5 */	addi r4, r4, 0xa5
/* 8012D1E0 0012A140  4B ED 7A D9 */	bl string_l__4rstlFPCc
/* 8012D1E4 0012A144  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D1E8 0012A148  38 81 00 38 */	addi r4, r1, 0x38
/* 8012D1EC 0012A14C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 8012D1F0 0012A150  48 21 0F 71 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D1F4 0012A154  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D1F8 0012A158  38 BF 00 90 */	addi r5, r31, 0x90
/* 8012D1FC 0012A15C  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D200 0012A160  48 25 C4 8D */	bl __register_global_object
/* 8012D204 0012A164  38 61 00 38 */	addi r3, r1, 0x38
/* 8012D208 0012A168  48 21 08 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D20C 0012A16C  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D210 0012A170  38 61 00 28 */	addi r3, r1, 0x28
/* 8012D214 0012A174  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D218 0012A178  38 84 00 AC */	addi r4, r4, 0xac
/* 8012D21C 0012A17C  4B ED 7A 9D */	bl string_l__4rstlFPCc
/* 8012D220 0012A180  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8012D224 0012A184  38 81 00 28 */	addi r4, r1, 0x28
/* 8012D228 0012A188  38 63 00 D0 */	addi r3, r3, 0xd0
/* 8012D22C 0012A18C  48 21 0F 35 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D230 0012A190  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D234 0012A194  38 BF 00 9C */	addi r5, r31, 0x9c
/* 8012D238 0012A198  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D23C 0012A19C  48 25 C4 51 */	bl __register_global_object
/* 8012D240 0012A1A0  38 61 00 28 */	addi r3, r1, 0x28
/* 8012D244 0012A1A4  48 21 08 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D248 0012A1A8  3C 60 80 57 */	lis r3, lbl_8056F85C@ha
/* 8012D24C 0012A1AC  3C 80 80 05 */	lis r4, sub_80050534@ha
/* 8012D250 0012A1B0  38 63 F8 5C */	addi r3, r3, lbl_8056F85C@l
/* 8012D254 0012A1B4  38 00 00 00 */	li r0, 0
/* 8012D258 0012A1B8  38 C3 00 0C */	addi r6, r3, 0xc
/* 8012D25C 0012A1BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8012D260 0012A1C0  38 84 05 34 */	addi r4, r4, sub_80050534@l
/* 8012D264 0012A1C4  38 BF 01 88 */	addi r5, r31, 0x188
/* 8012D268 0012A1C8  90 C3 00 04 */	stw r6, 4(r3)
/* 8012D26C 0012A1CC  90 C3 00 08 */	stw r6, 8(r3)
/* 8012D270 0012A1D0  90 C6 00 00 */	stw r6, 0(r6)
/* 8012D274 0012A1D4  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8012D278 0012A1D8  48 25 C4 15 */	bl __register_global_object
/* 8012D27C 0012A1DC  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D280 0012A1E0  38 61 00 18 */	addi r3, r1, 0x18
/* 8012D284 0012A1E4  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D288 0012A1E8  38 84 00 B4 */	addi r4, r4, 0xb4
/* 8012D28C 0012A1EC  4B ED 7A 2D */	bl string_l__4rstlFPCc
/* 8012D290 0012A1F0  3C 60 80 57 */	lis r3, lbl_8056F894@ha
/* 8012D294 0012A1F4  38 81 00 18 */	addi r4, r1, 0x18
/* 8012D298 0012A1F8  38 63 F8 94 */	addi r3, r3, lbl_8056F894@l
/* 8012D29C 0012A1FC  48 21 0E C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D2A0 0012A200  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D2A4 0012A204  38 BF 01 94 */	addi r5, r31, 0x194
/* 8012D2A8 0012A208  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D2AC 0012A20C  48 25 C3 E1 */	bl __register_global_object
/* 8012D2B0 0012A210  38 61 00 18 */	addi r3, r1, 0x18
/* 8012D2B4 0012A214  48 21 08 2D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D2B8 0012A218  3C 80 80 3D */	lis r4, lbl_803CFF70@ha
/* 8012D2BC 0012A21C  38 61 00 08 */	addi r3, r1, 8
/* 8012D2C0 0012A220  38 84 FF 70 */	addi r4, r4, lbl_803CFF70@l
/* 8012D2C4 0012A224  38 84 00 BB */	addi r4, r4, 0xbb
/* 8012D2C8 0012A228  4B ED 79 F1 */	bl string_l__4rstlFPCc
/* 8012D2CC 0012A22C  3C 60 80 57 */	lis r3, lbl_8056F8A4@ha
/* 8012D2D0 0012A230  38 81 00 08 */	addi r4, r1, 8
/* 8012D2D4 0012A234  38 63 F8 A4 */	addi r3, r3, lbl_8056F8A4@l
/* 8012D2D8 0012A238  48 21 0E 89 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8012D2DC 0012A23C  3C 80 80 00 */	lis r4, sub_80004a9c@ha
/* 8012D2E0 0012A240  38 BF 01 A0 */	addi r5, r31, 0x1a0
/* 8012D2E4 0012A244  38 84 4A 9C */	addi r4, r4, sub_80004a9c@l
/* 8012D2E8 0012A248  48 25 C3 A5 */	bl __register_global_object
/* 8012D2EC 0012A24C  38 61 00 08 */	addi r3, r1, 8
/* 8012D2F0 0012A250  48 21 07 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8012D2F4 0012A254  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8012D2F8 0012A258  83 E1 01 0C */	lwz r31, 0x10c(r1)
/* 8012D2FC 0012A25C  7C 08 03 A6 */	mtlr r0
/* 8012D300 0012A260  38 21 01 10 */	addi r1, r1, 0x110
/* 8012D304 0012A264  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CF438
lbl_803CF438:
	# ROM: 0x3CC438
	.float 0.45
	.float 0.52
	.float 0.35
	.float 0.1
	.float 0.15
	.float 0.35
	.float 0.1
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15
	.float 0.15

.global lbl_803CF470
lbl_803CF470:

	# ROM: 0x3CC470
	.4byte 0x00000014
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF578
lbl_803CF578:

	# ROM: 0x3CC578
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF6AC
lbl_803CF6AC:

	# ROM: 0x3CC6AC
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF788
lbl_803CF788:

	# ROM: 0x3CC788
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000005
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF838
lbl_803CF838:

	# ROM: 0x3CC838
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000019
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000007
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF940
lbl_803CF940:

	# ROM: 0x3CC940
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CF9F0
lbl_803CF9F0:

	# ROM: 0x3CC9F0
	.4byte 0x0000000A
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x0000000E
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFAF8
lbl_803CFAF8:

	# ROM: 0x3CCAF8
	.4byte 0x0000001A
	.4byte 0x00000010
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000E
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001A
	.4byte 0x00000010
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000010
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000008
	.4byte 0x00000006
	.4byte 0x00000008
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFC2C
lbl_803CFC2C:

	# ROM: 0x3CCC2C
	.4byte 0x00000028
	.4byte 0x00000001
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000B
	.4byte 0x00000007
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFD08
lbl_803CFD08:

	# ROM: 0x3CCD08
	.4byte 0x00000028
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000028
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000014
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFDB8
lbl_803CFDB8:

	# ROM: 0x3CCDB8
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x00000009
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000000F
	.4byte 0x0000000E
	.4byte 0x0000000A
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000F
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFEC0
lbl_803CFEC0:

	# ROM: 0x3CCEC0
	.4byte 0x00000023
	.4byte 0x00000007
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x00000023
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0x0000001E
	.4byte 0x00000010
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.float 0.1
	.4byte 0x3D4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_803CFF70
lbl_803CFF70:
	# ROM: 0x3CCF70
	.asciz "Ambushing"
	.byte 0x3F, 0x3F
	.asciz "(??)"
	.byte 0x47, 0x65, 0x74
	.asciz "UpNow"
	.byte 0x48, 0x65
	.asciz "ad_1"
	.byte 0x52, 0x5F, 0x67
	.asciz "un_LCTR"
	.asciz "R_elbow"
	.asciz "R_wrist"
	.asciz "Swoosh_LCTR"
	.asciz "Skeleton_Root"
	.byte 0x43, 0x6F
	.asciz "llar"
	.byte 0x4E, 0x65, 0x63
	.4byte 0x6B5F3100
	.asciz "R_shoulder"
	.byte 0x4C
	.asciz "_shoulder"
	.byte 0x4C, 0x5F
	.asciz "elbow"
	.byte 0x4C, 0x5F
	.asciz "wrist"
	.byte 0x52, 0x5F
	.4byte 0x68697000
	.4byte 0x525F6B6E
	.4byte 0x65650052
	.asciz "_ankle"
	.byte 0x4C
	.asciz "_hip"
	.byte 0x4C, 0x5F, 0x6B
	.4byte 0x6E656500
	.asciz "L_ankle"
	.asciz "OneEye"
	.byte 0x54
	.asciz "woEyes"
	.balign 4
	.4byte 0

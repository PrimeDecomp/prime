.include "macros.inc"

.section .data


.global lbl_803E7AE0
lbl_803E7AE0:
	# ROM: 0x3E4AE0
	.4byte 0
	.4byte 0
	.4byte __dt__12CElitePirateFv
	.4byte Accept__12CElitePirateFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CElitePirateFfR13CStateManager
	.4byte AcceptScriptMsg__12CElitePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__12CElitePirateFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__10CPatternedCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__12CElitePirateCFv
	.4byte GetDamageVulnerability__12CElitePirateCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__10CPatternedFR6CActorR13CStateManager
	.4byte GetOrbitPosition__12CElitePirateCFRC13CStateManager
	.4byte GetAimPosition__12CElitePirateCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__12CElitePirateFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__12CElitePirateCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__12CElitePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__12CElitePirateFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__3CAiFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Generate__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__12CElitePirateFR13CStateManager9EStateMsgf
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
	.4byte Taunt__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Suck__3CAiFR13CStateManager9EStateMsgf
	.4byte Flee__3CAiFR13CStateManager9EStateMsgf
	.4byte Lurk__3CAiFR13CStateManager9EStateMsgf
	.4byte ProjectileAttack__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Flinch__3CAiFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__3CAiFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__12CElitePirateFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__3CAiFR13CStateManagerf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__10CPatternedFR13CStateManagerf
	.4byte PathShagged__10CPatternedFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__12CElitePirateFR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__12CElitePirateFR13CStateManagerf
	.4byte SpotPlayer__12CElitePirateFR13CStateManagerf
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
	.4byte sub_8022bcc0
	.4byte ShouldAttack__12CElitePirateFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__12CElitePirateFR13CStateManagerf
	.4byte ShouldTurn__12CElitePirateFR13CStateManagerf
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
	.4byte AggressionCheck__12CElitePirateFR13CStateManagerf
	.4byte AttackOver__3CAiFR13CStateManagerf
	.4byte ShouldTaunt__12CElitePirateFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__12CElitePirateFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__12CElitePirateFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__3CAiFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__3CAiFR13CStateManagerf
	.4byte BreakAttack__3CAiFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__12CElitePirateFR13CStateManagerf
	.4byte LostInterest__3CAiFR13CStateManagerf
	.4byte CodeTrigger__10CPatternedFR13CStateManagerf
	.4byte BounceFind__3CAiFR13CStateManagerf
	.4byte Random__10CPatternedFR13CStateManagerf
	.4byte FixedRandom__10CPatternedFR13CStateManagerf
	.4byte IsDizzy__3CAiFR13CStateManagerf
	.4byte ShouldCallForBackup__12CElitePirateFR13CStateManagerf
	.4byte Freeze__10CPatternedFRC9CVector3f13CUnitVector3ff
	.4byte KnockbackWhenFrozen__10CPatternedCFv
	.4byte MassiveDeath__10CPatternedFR13CStateManager
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__12CElitePirateFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte sub_802273a8
	.4byte sub_802273b0
	.4byte sub_80229114
	.4byte sub_802289b0
	.4byte sub_802273b8

.global lbl_803E7DC0
lbl_803E7DC0:
	# ROM: 0x3E4DC0
	.4byte lbl_8022C460
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C6EC
	.4byte lbl_8022C704
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C71C
	.4byte lbl_8022C4B0
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C7A8
	.4byte lbl_8022C728

.global lbl_803E7E20
lbl_803E7E20:
	# ROM: 0x3E4E20
	.4byte lbl_8022D344
	.4byte lbl_8022CCBC
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022CD18
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022CDCC
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022CE10
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022CC18
	.4byte lbl_8022CD84
	.4byte lbl_8022CDE0
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D344
	.4byte lbl_8022D0EC
	.4byte lbl_8022D2F4
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global GetSearchPath__12CElitePirateFv
GetSearchPath__12CElitePirateFv:
/* 80227398 002242F8  38 63 07 D0 */	addi r3, r3, 0x7d0
/* 8022739C 002242FC  4E 80 00 20 */	blr 

.global GetCollisionPrimitive__12CElitePirateCFv
GetCollisionPrimitive__12CElitePirateCFv:
/* 802273A0 00224300  38 63 07 38 */	addi r3, r3, 0x738
/* 802273A4 00224304  4E 80 00 20 */	blr 

.global sub_802273a8
sub_802273a8:
/* 802273A8 00224308  38 60 00 01 */	li r3, 1
/* 802273AC 0022430C  4E 80 00 20 */	blr 

.global sub_802273b0
sub_802273b0:
/* 802273B0 00224310  38 60 00 01 */	li r3, 1
/* 802273B4 00224314  4E 80 00 20 */	blr 

.global sub_802273b8
sub_802273b8:
/* 802273B8 00224318  A0 A4 06 F4 */	lhz r5, 0x6f4(r4)
/* 802273BC 0022431C  38 00 00 08 */	li r0, 8
/* 802273C0 00224320  80 C4 06 F0 */	lwz r6, 0x6f0(r4)
/* 802273C4 00224324  80 E4 06 D0 */	lwz r7, 0x6d0(r4)
/* 802273C8 00224328  C0 42 B5 B8 */	lfs f2, lbl_805AD2D8@sda21(r2)
/* 802273CC 0022432C  90 03 00 00 */	stw r0, 0(r3)
/* 802273D0 00224330  C0 22 B5 BC */	lfs f1, lbl_805AD2DC@sda21(r2)
/* 802273D4 00224334  90 E3 00 04 */	stw r7, 4(r3)
/* 802273D8 00224338  C0 02 B5 C0 */	lfs f0, lbl_805AD2E0@sda21(r2)
/* 802273DC 0022433C  80 04 06 D4 */	lwz r0, 0x6d4(r4)
/* 802273E0 00224340  90 03 00 08 */	stw r0, 8(r3)
/* 802273E4 00224344  88 04 06 D8 */	lbz r0, 0x6d8(r4)
/* 802273E8 00224348  98 03 00 0C */	stb r0, 0xc(r3)
/* 802273EC 0022434C  C0 64 06 DC */	lfs f3, 0x6dc(r4)
/* 802273F0 00224350  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 802273F4 00224354  C0 64 06 E0 */	lfs f3, 0x6e0(r4)
/* 802273F8 00224358  D0 63 00 14 */	stfs f3, 0x14(r3)
/* 802273FC 0022435C  C0 64 06 E4 */	lfs f3, 0x6e4(r4)
/* 80227400 00224360  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80227404 00224364  C0 64 06 E8 */	lfs f3, 0x6e8(r4)
/* 80227408 00224368  D0 63 00 1C */	stfs f3, 0x1c(r3)
/* 8022740C 0022436C  88 04 06 EC */	lbz r0, 0x6ec(r4)
/* 80227410 00224370  98 03 00 20 */	stb r0, 0x20(r3)
/* 80227414 00224374  D0 43 00 24 */	stfs f2, 0x24(r3)
/* 80227418 00224378  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 8022741C 0022437C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80227420 00224380  D0 43 00 30 */	stfs f2, 0x30(r3)
/* 80227424 00224384  90 C3 00 34 */	stw r6, 0x34(r3)
/* 80227428 00224388  B0 A3 00 38 */	sth r5, 0x38(r3)
/* 8022742C 0022438C  4E 80 00 20 */	blr 

.global sub_80227430
sub_80227430:
/* 80227430 00224390  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80227434 00224394  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80227438 00224398  41 82 00 24 */	beq lbl_8022745C
/* 8022743C 0022439C  88 04 00 04 */	lbz r0, 4(r4)
/* 80227440 002243A0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80227444 002243A4  40 82 00 18 */	bne lbl_8022745C
/* 80227448 002243A8  80 04 00 00 */	lwz r0, 0(r4)
/* 8022744C 002243AC  2C 00 00 03 */	cmpwi r0, 3
/* 80227450 002243B0  40 82 00 0C */	bne lbl_8022745C
/* 80227454 002243B4  38 60 00 00 */	li r3, 0
/* 80227458 002243B8  4E 80 00 20 */	blr 
lbl_8022745C:
/* 8022745C 002243BC  38 60 00 01 */	li r3, 1
/* 80227460 002243C0  4E 80 00 20 */	blr 

.global sub_80227464
sub_80227464:
/* 80227464 002243C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80227468 002243C8  7C 08 02 A6 */	mflr r0
/* 8022746C 002243CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80227470 002243D0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80227474 002243D4  7C 7F 1B 78 */	mr r31, r3
/* 80227478 002243D8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8022747C 002243DC  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80227480 002243E0  7C BD 2B 78 */	mr r29, r5
/* 80227484 002243E4  93 81 00 60 */	stw r28, 0x60(r1)
/* 80227488 002243E8  7C 9C 23 78 */	mr r28, r4
/* 8022748C 002243EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80227490 002243F0  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 80227494 002243F4  7D 89 03 A6 */	mtctr r12
/* 80227498 002243F8  4E 80 04 21 */	bctrl 
/* 8022749C 002243FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802274A0 00224400  41 82 00 DC */	beq lbl_8022757C
/* 802274A4 00224404  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802274A8 00224408  7F 83 E3 78 */	mr r3, r28
/* 802274AC 0022440C  38 81 00 18 */	addi r4, r1, 0x18
/* 802274B0 00224410  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802274B4 00224414  4B E2 50 F1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802274B8 00224418  7C 64 1B 78 */	mr r4, r3
/* 802274BC 0022441C  38 61 00 1C */	addi r3, r1, 0x1c
/* 802274C0 00224420  4B E7 E3 D9 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 802274C4 00224424  83 C3 00 04 */	lwz r30, 4(r3)
/* 802274C8 00224428  28 1E 00 00 */	cmplwi r30, 0
/* 802274CC 0022442C  41 82 00 B0 */	beq lbl_8022757C
/* 802274D0 00224430  80 1E 01 2C */	lwz r0, 0x12c(r30)
/* 802274D4 00224434  38 60 00 00 */	li r3, 0
/* 802274D8 00224438  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 802274DC 0022443C  38 80 00 01 */	li r4, 1
/* 802274E0 00224440  90 01 00 40 */	stw r0, 0x40(r1)
/* 802274E4 00224444  80 AD 95 68 */	lwz r5, lbl_805A8128@sda21(r13)
/* 802274E8 00224448  88 1E 01 30 */	lbz r0, 0x130(r30)
/* 802274EC 0022444C  98 01 00 44 */	stb r0, 0x44(r1)
/* 802274F0 00224450  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 802274F4 00224454  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 802274F8 00224458  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 802274FC 0022445C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80227500 00224460  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 80227504 00224464  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80227508 00224468  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 8022750C 0022446C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80227510 00224470  88 1E 01 44 */	lbz r0, 0x144(r30)
/* 80227514 00224474  98 01 00 58 */	stb r0, 0x58(r1)
/* 80227518 00224478  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8022751C 0022447C  48 16 29 D9 */	bl __shl2i
/* 80227520 00224480  39 00 00 00 */	li r8, 0
/* 80227524 00224484  39 40 00 03 */	li r10, 3
/* 80227528 00224488  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8022752C 0022448C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80227530 00224490  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 80227534 00224494  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80227538 00224498  90 61 00 28 */	stw r3, 0x28(r1)
/* 8022753C 0022449C  7F 83 E3 78 */	mr r3, r28
/* 80227540 002244A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80227544 002244A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 80227548 002244A8  91 01 00 34 */	stw r8, 0x34(r1)
/* 8022754C 002244AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80227550 002244B0  38 E1 00 40 */	addi r7, r1, 0x40
/* 80227554 002244B4  91 01 00 30 */	stw r8, 0x30(r1)
/* 80227558 002244B8  39 01 00 28 */	addi r8, r1, 0x28
/* 8022755C 002244BC  91 41 00 38 */	stw r10, 0x38(r1)
/* 80227560 002244C0  A1 7E 00 EC */	lhz r11, 0xec(r30)
/* 80227564 002244C4  B1 61 00 0C */	sth r11, 0xc(r1)
/* 80227568 002244C8  A1 5F 07 70 */	lhz r10, 0x770(r31)
/* 8022756C 002244CC  B1 61 00 08 */	sth r11, 8(r1)
/* 80227570 002244D0  B1 41 00 10 */	sth r10, 0x10(r1)
/* 80227574 002244D4  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80227578 002244D8  4B E2 2B 29 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_8022757C:
/* 8022757C 002244DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80227580 002244E0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80227584 002244E4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80227588 002244E8  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8022758C 002244EC  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80227590 002244F0  7C 08 03 A6 */	mtlr r0
/* 80227594 002244F4  38 21 00 70 */	addi r1, r1, 0x70
/* 80227598 002244F8  4E 80 00 20 */	blr 

.global sub_8022759c
sub_8022759c:
/* 8022759C 002244FC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802275A0 00224500  7C 08 02 A6 */	mflr r0
/* 802275A4 00224504  90 01 00 44 */	stw r0, 0x44(r1)
/* 802275A8 00224508  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802275AC 0022450C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802275B0 00224510  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802275B4 00224514  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 802275B8 00224518  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802275BC 0022451C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802275C0 00224520  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802275C4 00224524  81 83 00 00 */	lwz r12, 0(r3)
/* 802275C8 00224528  7C 7D 1B 78 */	mr r29, r3
/* 802275CC 0022452C  7C 9E 23 78 */	mr r30, r4
/* 802275D0 00224530  7C BF 2B 78 */	mr r31, r5
/* 802275D4 00224534  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 802275D8 00224538  7D 89 03 A6 */	mtctr r12
/* 802275DC 0022453C  4E 80 04 21 */	bctrl 
/* 802275E0 00224540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802275E4 00224544  41 82 00 70 */	beq lbl_80227654
/* 802275E8 00224548  C0 3D 07 B4 */	lfs f1, 0x7b4(r29)
/* 802275EC 0022454C  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 802275F0 00224550  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802275F4 00224554  40 81 00 60 */	ble lbl_80227654
/* 802275F8 00224558  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802275FC 0022455C  41 82 00 58 */	beq lbl_80227654
/* 80227600 00224560  7F A3 EB 78 */	mr r3, r29
/* 80227604 00224564  7F E4 FB 78 */	mr r4, r31
/* 80227608 00224568  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022760C 0022456C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80227610 00224570  7D 89 03 A6 */	mtctr r12
/* 80227614 00224574  4E 80 04 21 */	bctrl 
/* 80227618 00224578  C0 43 00 00 */	lfs f2, 0(r3)
/* 8022761C 0022457C  C0 1D 07 B4 */	lfs f0, 0x7b4(r29)
/* 80227620 00224580  C0 3D 07 B0 */	lfs f1, 0x7b0(r29)
/* 80227624 00224584  EC 02 00 24 */	fdivs f0, f2, f0
/* 80227628 00224588  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022762C 0022458C  4C 40 13 82 */	cror 2, 0, 2
/* 80227630 00224590  40 82 00 30 */	bne lbl_80227660
/* 80227634 00224594  C0 02 B5 C4 */	lfs f0, lbl_805AD2E4@sda21(r2)
/* 80227638 00224598  38 60 00 01 */	li r3, 1
/* 8022763C 0022459C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80227640 002245A0  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 80227644 002245A4  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 80227648 002245A8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8022764C 002245AC  98 1D 09 88 */	stb r0, 0x988(r29)
/* 80227650 002245B0  48 00 00 10 */	b lbl_80227660
lbl_80227654:
/* 80227654 002245B4  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 80227658 002245B8  53 C0 26 F6 */	rlwimi r0, r30, 4, 0x1b, 0x1b
/* 8022765C 002245BC  98 1D 09 88 */	stb r0, 0x988(r29)
lbl_80227660:
/* 80227660 002245C0  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 80227664 002245C4  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80227668 002245C8  41 82 00 20 */	beq lbl_80227688
/* 8022766C 002245CC  C3 FD 05 F0 */	lfs f31, 0x5f0(r29)
/* 80227670 002245D0  C3 DD 05 EC */	lfs f30, 0x5ec(r29)
/* 80227674 002245D4  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80227678 002245D8  48 0E AE 65 */	bl Float__9CRandom16Fv
/* 8022767C 002245DC  EC 01 F7 FA */	fmadds f0, f1, f31, f30
/* 80227680 002245E0  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
/* 80227684 002245E4  48 00 00 0C */	b lbl_80227690
lbl_80227688:
/* 80227688 002245E8  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022768C 002245EC  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
lbl_80227690:
/* 80227690 002245F0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80227694 002245F4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80227698 002245F8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 8022769C 002245FC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802276A0 00224600  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802276A4 00224604  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802276A8 00224608  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802276AC 0022460C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802276B0 00224610  7C 08 03 A6 */	mtlr r0
/* 802276B4 00224614  38 21 00 40 */	addi r1, r1, 0x40
/* 802276B8 00224618  4E 80 00 20 */	blr 

.global sub_802276bc
sub_802276bc:
/* 802276BC 0022461C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802276C0 00224620  7C 08 02 A6 */	mflr r0
/* 802276C4 00224624  90 01 00 44 */	stw r0, 0x44(r1)
/* 802276C8 00224628  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802276CC 0022462C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802276D0 00224630  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802276D4 00224634  7C 7B 1B 78 */	mr r27, r3
/* 802276D8 00224638  7C DE 33 78 */	mr r30, r6
/* 802276DC 0022463C  C0 26 00 04 */	lfs f1, 4(r6)
/* 802276E0 00224640  7C BD 2B 78 */	mr r29, r5
/* 802276E4 00224644  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 802276E8 00224648  7C 9C 23 78 */	mr r28, r4
/* 802276EC 0022464C  C0 66 00 00 */	lfs f3, 0(r6)
/* 802276F0 00224650  3B FD 00 04 */	addi r31, r29, 4
/* 802276F4 00224654  EC 81 00 28 */	fsubs f4, f1, f0
/* 802276F8 00224658  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 802276FC 0022465C  C0 46 00 08 */	lfs f2, 8(r6)
/* 80227700 00224660  EC 63 00 28 */	fsubs f3, f3, f0
/* 80227704 00224664  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 80227708 00224668  EC 04 01 32 */	fmuls f0, f4, f4
/* 8022770C 0022466C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80227710 00224670  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 80227714 00224674  EF E1 00 7A */	fmadds f31, f1, f1, f0
/* 80227718 00224678  48 00 00 90 */	b lbl_802277A8
lbl_8022771C:
/* 8022771C 0022467C  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80227720 00224680  7F 83 E3 78 */	mr r3, r28
/* 80227724 00224684  38 81 00 08 */	addi r4, r1, 8
/* 80227728 00224688  B0 01 00 08 */	sth r0, 8(r1)
/* 8022772C 0022468C  4B E2 4E 79 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80227730 00224690  7C 64 1B 78 */	mr r4, r3
/* 80227734 00224694  38 61 00 0C */	addi r3, r1, 0xc
/* 80227738 00224698  4B E8 53 25 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 8022773C 0022469C  80 83 00 04 */	lwz r4, 4(r3)
/* 80227740 002246A0  28 04 00 00 */	cmplwi r4, 0
/* 80227744 002246A4  41 82 00 60 */	beq lbl_802277A4
/* 80227748 002246A8  A0 64 00 08 */	lhz r3, 8(r4)
/* 8022774C 002246AC  A0 1B 00 08 */	lhz r0, 8(r27)
/* 80227750 002246B0  7C 03 00 40 */	cmplw r3, r0
/* 80227754 002246B4  41 82 00 50 */	beq lbl_802277A4
/* 80227758 002246B8  88 04 03 28 */	lbz r0, 0x328(r4)
/* 8022775C 002246BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80227760 002246C0  41 82 00 44 */	beq lbl_802277A4
/* 80227764 002246C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80227768 002246C8  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 8022776C 002246CC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80227770 002246D0  EC 81 00 28 */	fsubs f4, f1, f0
/* 80227774 002246D4  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80227778 002246D8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8022777C 002246DC  EC 63 00 28 */	fsubs f3, f3, f0
/* 80227780 002246E0  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 80227784 002246E4  EC 04 01 32 */	fmuls f0, f4, f4
/* 80227788 002246E8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8022778C 002246EC  EC 03 00 FA */	fmadds f0, f3, f3, f0
/* 80227790 002246F0  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 80227794 002246F4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80227798 002246F8  40 80 00 0C */	bge lbl_802277A4
/* 8022779C 002246FC  38 60 00 00 */	li r3, 0
/* 802277A0 00224700  48 00 00 24 */	b lbl_802277C4
lbl_802277A4:
/* 802277A4 00224704  3B FF 00 02 */	addi r31, r31, 2
lbl_802277A8:
/* 802277A8 00224708  80 1D 00 00 */	lwz r0, 0(r29)
/* 802277AC 0022470C  54 00 08 3C */	slwi r0, r0, 1
/* 802277B0 00224710  7C 7D 02 14 */	add r3, r29, r0
/* 802277B4 00224714  38 03 00 04 */	addi r0, r3, 4
/* 802277B8 00224718  7C 1F 00 40 */	cmplw r31, r0
/* 802277BC 0022471C  40 82 FF 60 */	bne lbl_8022771C
/* 802277C0 00224720  38 60 00 01 */	li r3, 1
lbl_802277C4:
/* 802277C4 00224724  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802277C8 00224728  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802277CC 0022472C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802277D0 00224730  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802277D4 00224734  7C 08 03 A6 */	mtlr r0
/* 802277D8 00224738  38 21 00 40 */	addi r1, r1, 0x40
/* 802277DC 0022473C  4E 80 00 20 */	blr 

.global sub_802277e0
sub_802277e0:
/* 802277E0 00224740  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802277E4 00224744  7C 08 02 A6 */	mflr r0
/* 802277E8 00224748  90 01 00 74 */	stw r0, 0x74(r1)
/* 802277EC 0022474C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802277F0 00224750  7C 9F 23 78 */	mr r31, r4
/* 802277F4 00224754  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802277F8 00224758  7C 7E 1B 78 */	mr r30, r3
/* 802277FC 0022475C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80227800 00224760  88 03 09 88 */	lbz r0, 0x988(r3)
/* 80227804 00224764  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80227808 00224768  41 82 02 6C */	beq lbl_80227A74
/* 8022780C 0022476C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80227810 00224770  88 03 03 00 */	lbz r0, 0x300(r3)
/* 80227814 00224774  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80227818 00224778  40 82 02 5C */	bne lbl_80227A74
/* 8022781C 0022477C  C0 5E 07 C4 */	lfs f2, 0x7c4(r30)
/* 80227820 00224780  C0 02 B5 C8 */	lfs f0, lbl_805AD2E8@sda21(r2)
/* 80227824 00224784  EC 22 08 2A */	fadds f1, f2, f1
/* 80227828 00224788  D0 3E 07 C4 */	stfs f1, 0x7c4(r30)
/* 8022782C 0022478C  C0 3E 07 C4 */	lfs f1, 0x7c4(r30)
/* 80227830 00224790  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80227834 00224794  4C 41 13 82 */	cror 2, 1, 2
/* 80227838 00224798  40 82 02 3C */	bne lbl_80227A74
/* 8022783C 0022479C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80227840 002247A0  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 80227844 002247A4  2C 00 00 08 */	cmpwi r0, 8
/* 80227848 002247A8  41 82 00 24 */	beq lbl_8022786C
/* 8022784C 002247AC  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 80227850 002247B0  4B F0 C8 29 */	bl GetCurrentState__14CBodyStateInfoCFv
/* 80227854 002247B4  81 83 00 00 */	lwz r12, 0(r3)
/* 80227858 002247B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8022785C 002247BC  7D 89 03 A6 */	mtctr r12
/* 80227860 002247C0  4E 80 04 21 */	bctrl 
/* 80227864 002247C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80227868 002247C8  40 82 01 80 */	bne lbl_802279E8
lbl_8022786C:
/* 8022786C 002247CC  7F C3 F3 78 */	mr r3, r30
/* 80227870 002247D0  3B A0 00 00 */	li r29, 0
/* 80227874 002247D4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80227878 002247D8  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022787C 002247DC  7D 89 03 A6 */	mtctr r12
/* 80227880 002247E0  4E 80 04 21 */	bctrl 
/* 80227884 002247E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80227888 002247E8  41 82 00 98 */	beq lbl_80227920
/* 8022788C 002247EC  A0 1E 07 70 */	lhz r0, 0x770(r30)
/* 80227890 002247F0  7F E3 FB 78 */	mr r3, r31
/* 80227894 002247F4  38 81 00 08 */	addi r4, r1, 8
/* 80227898 002247F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8022789C 002247FC  4B E2 4D 09 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802278A0 00224800  7C 64 1B 78 */	mr r4, r3
/* 802278A4 00224804  38 61 00 0C */	addi r3, r1, 0xc
/* 802278A8 00224808  4B E8 7A A5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802278AC 0022480C  80 63 00 04 */	lwz r3, 4(r3)
/* 802278B0 00224810  28 03 00 00 */	cmplwi r3, 0
/* 802278B4 00224814  41 82 00 6C */	beq lbl_80227920
/* 802278B8 00224818  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 802278BC 0022481C  C0 DE 00 60 */	lfs f6, 0x60(r30)
/* 802278C0 00224820  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 802278C4 00224824  EC 24 30 28 */	fsubs f1, f4, f6
/* 802278C8 00224828  C0 02 B5 BC */	lfs f0, lbl_805AD2DC@sda21(r2)
/* 802278CC 0022482C  C1 04 00 60 */	lfs f8, 0x60(r4)
/* 802278D0 00224830  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 802278D4 00224834  EC 00 20 7C */	fnmsubs f0, f0, f1, f4
/* 802278D8 00224838  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 802278DC 0022483C  C0 BE 00 50 */	lfs f5, 0x50(r30)
/* 802278E0 00224840  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 802278E4 00224844  C0 E4 00 50 */	lfs f7, 0x50(r4)
/* 802278E8 00224848  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 802278EC 0022484C  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 802278F0 00224850  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802278F4 00224854  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 802278F8 00224858  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 802278FC 0022485C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80227900 00224860  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80227904 00224864  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80227908 00224868  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022790C 0022486C  D0 E1 00 18 */	stfs f7, 0x18(r1)
/* 80227910 00224870  D1 01 00 1C */	stfs f8, 0x1c(r1)
/* 80227914 00224874  4C 41 13 82 */	cror 2, 1, 2
/* 80227918 00224878  7C 00 00 26 */	mfcr r0
/* 8022791C 0022487C  54 1D 1F FE */	rlwinm r29, r0, 3, 0x1f, 0x1f
lbl_80227920:
/* 80227920 00224880  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80227924 00224884  3B A0 00 00 */	li r29, 0
/* 80227928 00224888  40 82 00 28 */	bne lbl_80227950
/* 8022792C 0022488C  7F C3 F3 78 */	mr r3, r30
/* 80227930 00224890  7F E4 FB 78 */	mr r4, r31
/* 80227934 00224894  81 9E 00 00 */	lwz r12, 0(r30)
/* 80227938 00224898  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022793C 0022489C  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 80227940 002248A0  7D 89 03 A6 */	mtctr r12
/* 80227944 002248A4  4E 80 04 21 */	bctrl 
/* 80227948 002248A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022794C 002248AC  41 82 00 08 */	beq lbl_80227954
lbl_80227950:
/* 80227950 002248B0  3B A0 00 01 */	li r29, 1
lbl_80227954:
/* 80227954 002248B4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80227958 002248B8  38 C0 00 05 */	li r6, 5
/* 8022795C 002248BC  41 82 00 08 */	beq lbl_80227964
/* 80227960 002248C0  38 C0 00 07 */	li r6, 7
lbl_80227964:
/* 80227964 002248C4  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80227968 002248C8  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022796C 002248CC  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80227970 002248D0  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80227974 002248D4  3C 80 80 3E */	lis r4, lbl_803E10C8@ha
/* 80227978 002248D8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8022797C 002248DC  38 A4 10 C8 */	addi r5, r4, lbl_803E10C8@l
/* 80227980 002248E0  38 80 00 1A */	li r4, 0x1a
/* 80227984 002248E4  38 00 00 00 */	li r0, 0
/* 80227988 002248E8  3B A3 00 04 */	addi r29, r3, 4
/* 8022798C 002248EC  90 81 00 50 */	stw r4, 0x50(r1)
/* 80227990 002248F0  7F A3 EB 78 */	mr r3, r29
/* 80227994 002248F4  38 80 00 1A */	li r4, 0x1a
/* 80227998 002248F8  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 8022799C 002248FC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802279A0 00224900  90 C1 00 58 */	stw r6, 0x58(r1)
/* 802279A4 00224904  98 01 00 5C */	stb r0, 0x5c(r1)
/* 802279A8 00224908  4B F0 9A 91 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 802279AC 0022490C  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802279B0 00224910  3C 60 80 3E */	lis r3, lbl_803E10C8@ha
/* 802279B4 00224914  38 83 10 C8 */	addi r4, r3, lbl_803E10C8@l
/* 802279B8 00224918  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802279BC 0022491C  90 1D 02 88 */	stw r0, 0x288(r29)
/* 802279C0 00224920  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802279C4 00224924  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 802279C8 00224928  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 802279CC 0022492C  D0 1D 02 8C */	stfs f0, 0x28c(r29)
/* 802279D0 00224930  88 61 00 5C */	lbz r3, 0x5c(r1)
/* 802279D4 00224934  90 BD 02 90 */	stw r5, 0x290(r29)
/* 802279D8 00224938  90 81 00 4C */	stw r4, 0x4c(r1)
/* 802279DC 0022493C  98 7D 02 94 */	stb r3, 0x294(r29)
/* 802279E0 00224940  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802279E4 00224944  48 00 00 88 */	b lbl_80227A6C
lbl_802279E8:
/* 802279E8 00224948  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 802279EC 0022494C  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 802279F0 00224950  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 802279F4 00224954  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802279F8 00224958  3C 80 80 3E */	lis r4, lbl_803E10C8@ha
/* 802279FC 0022495C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80227A00 00224960  38 C4 10 C8 */	addi r6, r4, lbl_803E10C8@l
/* 80227A04 00224964  38 80 00 1A */	li r4, 0x1a
/* 80227A08 00224968  38 A0 00 06 */	li r5, 6
/* 80227A0C 0022496C  38 00 00 00 */	li r0, 0
/* 80227A10 00224970  3B A3 00 04 */	addi r29, r3, 4
/* 80227A14 00224974  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80227A18 00224978  7F A3 EB 78 */	mr r3, r29
/* 80227A1C 0022497C  38 80 00 1A */	li r4, 0x1a
/* 80227A20 00224980  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80227A24 00224984  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80227A28 00224988  90 A1 00 44 */	stw r5, 0x44(r1)
/* 80227A2C 0022498C  98 01 00 48 */	stb r0, 0x48(r1)
/* 80227A30 00224990  4B F0 9A 09 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80227A34 00224994  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80227A38 00224998  3C 60 80 3E */	lis r3, lbl_803E10C8@ha
/* 80227A3C 0022499C  38 83 10 C8 */	addi r4, r3, lbl_803E10C8@l
/* 80227A40 002249A0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80227A44 002249A4  90 1D 02 88 */	stw r0, 0x288(r29)
/* 80227A48 002249A8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80227A4C 002249AC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80227A50 002249B0  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80227A54 002249B4  D0 1D 02 8C */	stfs f0, 0x28c(r29)
/* 80227A58 002249B8  88 61 00 48 */	lbz r3, 0x48(r1)
/* 80227A5C 002249BC  90 BD 02 90 */	stw r5, 0x290(r29)
/* 80227A60 002249C0  90 81 00 38 */	stw r4, 0x38(r1)
/* 80227A64 002249C4  98 7D 02 94 */	stb r3, 0x294(r29)
/* 80227A68 002249C8  90 01 00 38 */	stw r0, 0x38(r1)
lbl_80227A6C:
/* 80227A6C 002249CC  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80227A70 002249D0  D0 1E 07 C4 */	stfs f0, 0x7c4(r30)
lbl_80227A74:
/* 80227A74 002249D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80227A78 002249D8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80227A7C 002249DC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80227A80 002249E0  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80227A84 002249E4  7C 08 03 A6 */	mtlr r0
/* 80227A88 002249E8  38 21 00 70 */	addi r1, r1, 0x70
/* 80227A8C 002249EC  4E 80 00 20 */	blr 

.global sub_80227a90
sub_80227a90:
/* 80227A90 002249F0  94 21 ED 30 */	stwu r1, -0x12d0(r1)
/* 80227A94 002249F4  7C 08 02 A6 */	mflr r0
/* 80227A98 002249F8  90 01 12 D4 */	stw r0, 0x12d4(r1)
/* 80227A9C 002249FC  38 00 12 C8 */	li r0, 0x12c8
/* 80227AA0 00224A00  DB E1 12 C0 */	stfd f31, 0x12c0(r1)
/* 80227AA4 00224A04  13 E1 00 0E */	psq_stx f31, r1, r0, 0, qr0
/* 80227AA8 00224A08  38 00 12 B8 */	li r0, 0x12b8
/* 80227AAC 00224A0C  DB C1 12 B0 */	stfd f30, 0x12b0(r1)
/* 80227AB0 00224A10  13 C1 00 0E */	psq_stx f30, r1, r0, 0, qr0
/* 80227AB4 00224A14  38 00 12 A8 */	li r0, 0x12a8
/* 80227AB8 00224A18  DB A1 12 A0 */	stfd f29, 0x12a0(r1)
/* 80227ABC 00224A1C  13 A1 00 0E */	psq_stx f29, r1, r0, 0, qr0
/* 80227AC0 00224A20  38 00 12 98 */	li r0, 0x1298
/* 80227AC4 00224A24  DB 81 12 90 */	stfd f28, 0x1290(r1)
/* 80227AC8 00224A28  13 81 00 0E */	psq_stx f28, r1, r0, 0, qr0
/* 80227ACC 00224A2C  38 00 12 88 */	li r0, 0x1288
/* 80227AD0 00224A30  DB 61 12 80 */	stfd f27, 0x1280(r1)
/* 80227AD4 00224A34  13 61 00 0E */	psq_stx f27, r1, r0, 0, qr0
/* 80227AD8 00224A38  38 00 12 78 */	li r0, 0x1278
/* 80227ADC 00224A3C  DB 41 12 70 */	stfd f26, 0x1270(r1)
/* 80227AE0 00224A40  13 41 00 0E */	psq_stx f26, r1, r0, 0, qr0
/* 80227AE4 00224A44  BF 41 12 58 */	stmw r26, 0x1258(r1)
/* 80227AE8 00224A48  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80227AEC 00224A4C  7C 7C 1B 78 */	mr r28, r3
/* 80227AF0 00224A50  7C 9D 23 78 */	mr r29, r4
/* 80227AF4 00224A54  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80227AF8 00224A58  41 82 06 84 */	beq lbl_8022817C
/* 80227AFC 00224A5C  A0 1C 07 9C */	lhz r0, 0x79c(r28)
/* 80227B00 00224A60  7F A3 EB 78 */	mr r3, r29
/* 80227B04 00224A64  38 81 00 0C */	addi r4, r1, 0xc
/* 80227B08 00224A68  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80227B0C 00224A6C  4B E2 4A 99 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 80227B10 00224A70  7C 64 1B 78 */	mr r4, r3
/* 80227B14 00224A74  38 61 00 10 */	addi r3, r1, 0x10
/* 80227B18 00224A78  4B E8 78 35 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80227B1C 00224A7C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80227B20 00224A80  28 05 00 00 */	cmplwi r5, 0
/* 80227B24 00224A84  41 82 06 58 */	beq lbl_8022817C
/* 80227B28 00224A88  C0 45 00 60 */	lfs f2, 0x60(r5)
/* 80227B2C 00224A8C  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 80227B30 00224A90  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80227B34 00224A94  38 81 01 04 */	addi r4, r1, 0x104
/* 80227B38 00224A98  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 80227B3C 00224A9C  38 A1 00 F8 */	addi r5, r1, 0xf8
/* 80227B40 00224AA0  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80227B44 00224AA4  D0 21 01 50 */	stfs f1, 0x150(r1)
/* 80227B48 00224AA8  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 80227B4C 00224AAC  C0 7C 05 F4 */	lfs f3, 0x5f4(r28)
/* 80227B50 00224AB0  C0 5C 00 60 */	lfs f2, 0x60(r28)
/* 80227B54 00224AB4  C0 3C 00 50 */	lfs f1, 0x50(r28)
/* 80227B58 00224AB8  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80227B5C 00224ABC  EF E2 18 2A */	fadds f31, f2, f3
/* 80227B60 00224AC0  EF C1 18 2A */	fadds f30, f1, f3
/* 80227B64 00224AC4  EF A0 18 2A */	fadds f29, f0, f3
/* 80227B68 00224AC8  EF 80 18 28 */	fsubs f28, f0, f3
/* 80227B6C 00224ACC  D3 E1 01 00 */	stfs f31, 0x100(r1)
/* 80227B70 00224AD0  EF 61 18 28 */	fsubs f27, f1, f3
/* 80227B74 00224AD4  EF 42 18 28 */	fsubs f26, f2, f3
/* 80227B78 00224AD8  D3 A1 00 F8 */	stfs f29, 0xf8(r1)
/* 80227B7C 00224ADC  D3 C1 00 FC */	stfs f30, 0xfc(r1)
/* 80227B80 00224AE0  D3 81 01 04 */	stfs f28, 0x104(r1)
/* 80227B84 00224AE4  D3 61 01 08 */	stfs f27, 0x108(r1)
/* 80227B88 00224AE8  D3 41 01 0C */	stfs f26, 0x10c(r1)
/* 80227B8C 00224AEC  48 11 09 7D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80227B90 00224AF0  80 AD 95 B0 */	lwz r5, lbl_805A8170@sda21(r13)
/* 80227B94 00224AF4  38 60 00 00 */	li r3, 0
/* 80227B98 00224AF8  38 80 00 01 */	li r4, 1
/* 80227B9C 00224AFC  48 16 23 59 */	bl __shl2i
/* 80227BA0 00224B00  38 00 00 00 */	li r0, 0
/* 80227BA4 00224B04  39 00 00 01 */	li r8, 1
/* 80227BA8 00224B08  90 81 01 BC */	stw r4, 0x1bc(r1)
/* 80227BAC 00224B0C  38 81 0A 4C */	addi r4, r1, 0xa4c
/* 80227BB0 00224B10  38 A1 01 D0 */	addi r5, r1, 0x1d0
/* 80227BB4 00224B14  38 C1 01 B8 */	addi r6, r1, 0x1b8
/* 80227BB8 00224B18  90 61 01 B8 */	stw r3, 0x1b8(r1)
/* 80227BBC 00224B1C  7F A3 EB 78 */	mr r3, r29
/* 80227BC0 00224B20  38 E0 00 00 */	li r7, 0
/* 80227BC4 00224B24  91 01 01 80 */	stw r8, 0x180(r1)
/* 80227BC8 00224B28  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 80227BCC 00224B2C  90 01 01 C0 */	stw r0, 0x1c0(r1)
/* 80227BD0 00224B30  91 01 01 C8 */	stw r8, 0x1c8(r1)
/* 80227BD4 00224B34  90 01 0A 4C */	stw r0, 0xa4c(r1)
/* 80227BD8 00224B38  4B E2 4B 49 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80227BDC 00224B3C  80 01 0A 4C */	lwz r0, 0xa4c(r1)
/* 80227BE0 00224B40  2C 00 00 00 */	cmpwi r0, 0
/* 80227BE4 00224B44  41 82 05 44 */	beq lbl_80228128
/* 80227BE8 00224B48  D3 A1 00 E0 */	stfs f29, 0xe0(r1)
/* 80227BEC 00224B4C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80227BF0 00224B50  38 81 00 EC */	addi r4, r1, 0xec
/* 80227BF4 00224B54  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 80227BF8 00224B58  D3 C1 00 E4 */	stfs f30, 0xe4(r1)
/* 80227BFC 00224B5C  D3 E1 00 E8 */	stfs f31, 0xe8(r1)
/* 80227C00 00224B60  D3 81 00 EC */	stfs f28, 0xec(r1)
/* 80227C04 00224B64  D3 61 00 F0 */	stfs f27, 0xf0(r1)
/* 80227C08 00224B68  D3 41 00 F4 */	stfs f26, 0xf4(r1)
/* 80227C0C 00224B6C  48 11 08 FD */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 80227C10 00224B70  80 AD 95 B4 */	lwz r5, lbl_805A8174@sda21(r13)
/* 80227C14 00224B74  38 60 00 00 */	li r3, 0
/* 80227C18 00224B78  38 80 00 01 */	li r4, 1
/* 80227C1C 00224B7C  48 16 22 D9 */	bl __shl2i
/* 80227C20 00224B80  38 00 00 00 */	li r0, 0
/* 80227C24 00224B84  39 00 00 01 */	li r8, 1
/* 80227C28 00224B88  90 81 01 8C */	stw r4, 0x18c(r1)
/* 80227C2C 00224B8C  38 81 02 48 */	addi r4, r1, 0x248
/* 80227C30 00224B90  38 A1 01 A0 */	addi r5, r1, 0x1a0
/* 80227C34 00224B94  38 C1 01 88 */	addi r6, r1, 0x188
/* 80227C38 00224B98  90 61 01 88 */	stw r3, 0x188(r1)
/* 80227C3C 00224B9C  7F A3 EB 78 */	mr r3, r29
/* 80227C40 00224BA0  38 E0 00 00 */	li r7, 0
/* 80227C44 00224BA4  91 01 01 68 */	stw r8, 0x168(r1)
/* 80227C48 00224BA8  90 01 01 94 */	stw r0, 0x194(r1)
/* 80227C4C 00224BAC  90 01 01 90 */	stw r0, 0x190(r1)
/* 80227C50 00224BB0  91 01 01 98 */	stw r8, 0x198(r1)
/* 80227C54 00224BB4  90 01 02 48 */	stw r0, 0x248(r1)
/* 80227C58 00224BB8  4B E2 4A C9 */	bl "BuildNearList__13CStateManagerCFRQ24rstl32reserved_vector<9TUniqueId,1024>RC6CAABoxRC15CMaterialFilterPC6CActor"
/* 80227C5C 00224BBC  3B E1 0A 50 */	addi r31, r1, 0xa50
/* 80227C60 00224BC0  7F FE FB 78 */	mr r30, r31
/* 80227C64 00224BC4  48 00 04 5C */	b lbl_802280C0
lbl_80227C68:
/* 80227C68 00224BC8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80227C6C 00224BCC  7F A3 EB 78 */	mr r3, r29
/* 80227C70 00224BD0  38 81 00 08 */	addi r4, r1, 8
/* 80227C74 00224BD4  B0 01 00 08 */	sth r0, 8(r1)
/* 80227C78 00224BD8  4B E2 48 FD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80227C7C 00224BDC  7C 64 1B 78 */	mr r4, r3
/* 80227C80 00224BE0  38 61 00 18 */	addi r3, r1, 0x18
/* 80227C84 00224BE4  4B E8 5A 89 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80227C88 00224BE8  83 43 00 04 */	lwz r26, 4(r3)
/* 80227C8C 00224BEC  28 1A 00 00 */	cmplwi r26, 0
/* 80227C90 00224BF0  41 82 04 2C */	beq lbl_802280BC
/* 80227C94 00224BF4  80 1A 00 F0 */	lwz r0, 0xf0(r26)
/* 80227C98 00224BF8  2C 00 00 06 */	cmpwi r0, 6
/* 80227C9C 00224BFC  41 82 04 20 */	beq lbl_802280BC
/* 80227CA0 00224C00  80 7D 08 4C */	lwz r3, 0x84c(r29)
/* 80227CA4 00224C04  A0 9A 00 EC */	lhz r4, 0xec(r26)
/* 80227CA8 00224C08  A0 03 00 08 */	lhz r0, 8(r3)
/* 80227CAC 00224C0C  7C 04 00 40 */	cmplw r4, r0
/* 80227CB0 00224C10  40 82 04 0C */	bne lbl_802280BC
/* 80227CB4 00224C14  80 7A 00 04 */	lwz r3, 4(r26)
/* 80227CB8 00224C18  80 1C 00 04 */	lwz r0, 4(r28)
/* 80227CBC 00224C1C  7C 03 00 00 */	cmpw r3, r0
/* 80227CC0 00224C20  40 82 03 FC */	bne lbl_802280BC
/* 80227CC4 00224C24  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 80227CC8 00224C28  C0 DA 00 50 */	lfs f6, 0x50(r26)
/* 80227CCC 00224C2C  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 80227CD0 00224C30  C0 BA 00 60 */	lfs f5, 0x60(r26)
/* 80227CD4 00224C34  ED 00 30 28 */	fsubs f8, f0, f6
/* 80227CD8 00224C38  C0 9A 00 40 */	lfs f4, 0x40(r26)
/* 80227CDC 00224C3C  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 80227CE0 00224C40  EC E1 28 28 */	fsubs f7, f1, f5
/* 80227CE4 00224C44  D1 01 01 44 */	stfs f8, 0x144(r1)
/* 80227CE8 00224C48  EC 60 20 28 */	fsubs f3, f0, f4
/* 80227CEC 00224C4C  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80227CF0 00224C50  D0 E1 01 48 */	stfs f7, 0x148(r1)
/* 80227CF4 00224C54  D0 61 01 40 */	stfs f3, 0x140(r1)
/* 80227CF8 00224C58  C1 3C 00 48 */	lfs f9, 0x48(r28)
/* 80227CFC 00224C5C  C0 5C 00 38 */	lfs f2, 0x38(r28)
/* 80227D00 00224C60  EC 29 02 32 */	fmuls f1, f9, f8
/* 80227D04 00224C64  C1 1C 00 58 */	lfs f8, 0x58(r28)
/* 80227D08 00224C68  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 80227D0C 00224C6C  EC 22 08 FA */	fmadds f1, f2, f3, f1
/* 80227D10 00224C70  D1 21 00 D8 */	stfs f9, 0xd8(r1)
/* 80227D14 00224C74  D1 01 00 DC */	stfs f8, 0xdc(r1)
/* 80227D18 00224C78  EC 28 09 FA */	fmadds f1, f8, f7, f1
/* 80227D1C 00224C7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80227D20 00224C80  40 80 03 8C */	bge lbl_802280AC
/* 80227D24 00224C84  C0 5A 02 9C */	lfs f2, 0x29c(r26)
/* 80227D28 00224C88  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80227D2C 00224C8C  C0 3A 02 A0 */	lfs f1, 0x2a0(r26)
/* 80227D30 00224C90  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 80227D34 00224C94  EC 46 10 28 */	fsubs f2, f6, f2
/* 80227D38 00224C98  EC 25 08 28 */	fsubs f1, f5, f1
/* 80227D3C 00224C9C  EC 04 00 28 */	fsubs f0, f4, f0
/* 80227D40 00224CA0  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 80227D44 00224CA4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80227D48 00224CA8  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80227D4C 00224CAC  48 0E C9 AD */	bl CanBeNormalized__9CVector3fCFv
/* 80227D50 00224CB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80227D54 00224CB4  41 82 03 58 */	beq lbl_802280AC
/* 80227D58 00224CB8  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80227D5C 00224CBC  7F 83 E3 78 */	mr r3, r28
/* 80227D60 00224CC0  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80227D64 00224CC4  7F A4 EB 78 */	mr r4, r29
/* 80227D68 00224CC8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80227D6C 00224CCC  38 A1 02 48 */	addi r5, r1, 0x248
/* 80227D70 00224CD0  38 C1 00 BC */	addi r6, r1, 0xbc
/* 80227D74 00224CD4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80227D78 00224CD8  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80227D7C 00224CDC  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 80227D80 00224CE0  4B FF F9 3D */	bl sub_802276bc
/* 80227D84 00224CE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80227D88 00224CE8  41 82 03 24 */	beq lbl_802280AC
/* 80227D8C 00224CEC  38 61 01 40 */	addi r3, r1, 0x140
/* 80227D90 00224CF0  48 0E CB 29 */	bl Magnitude__9CVector3fCFv
/* 80227D94 00224CF4  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 80227D98 00224CF8  FF E0 08 90 */	fmr f31, f1
/* 80227D9C 00224CFC  C0 1A 02 9C */	lfs f0, 0x29c(r26)
/* 80227DA0 00224D00  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80227DA4 00224D04  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 80227DA8 00224D08  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80227DAC 00224D0C  C0 5A 02 A0 */	lfs f2, 0x2a0(r26)
/* 80227DB0 00224D10  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80227DB4 00224D14  EC 84 00 28 */	fsubs f4, f4, f0
/* 80227DB8 00224D18  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 80227DBC 00224D1C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80227DC0 00224D20  EC 01 00 28 */	fsubs f0, f1, f0
/* 80227DC4 00224D24  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 80227DC8 00224D28  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 80227DCC 00224D2C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80227DD0 00224D30  48 0E CA 81 */	bl AsNormalized__9CVector3fCFv
/* 80227DD4 00224D34  C0 02 B5 BC */	lfs f0, lbl_805AD2DC@sda21(r2)
/* 80227DD8 00224D38  3B 7A 01 70 */	addi r27, r26, 0x170
/* 80227DDC 00224D3C  C0 42 B5 D0 */	lfs f2, lbl_805AD2F0@sda21(r2)
/* 80227DE0 00224D40  38 61 00 98 */	addi r3, r1, 0x98
/* 80227DE4 00224D44  ED 20 07 F2 */	fmuls f9, f0, f31
/* 80227DE8 00224D48  C0 81 00 B0 */	lfs f4, 0xb0(r1)
/* 80227DEC 00224D4C  EC 22 07 F2 */	fmuls f1, f2, f31
/* 80227DF0 00224D50  C0 61 00 B4 */	lfs f3, 0xb4(r1)
/* 80227DF4 00224D54  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80227DF8 00224D58  38 81 00 8C */	addi r4, r1, 0x8c
/* 80227DFC 00224D5C  EC A9 01 32 */	fmuls f5, f9, f4
/* 80227E00 00224D60  C0 DA 00 40 */	lfs f6, 0x40(r26)
/* 80227E04 00224D64  EC 69 00 F2 */	fmuls f3, f9, f3
/* 80227E08 00224D68  C1 1A 00 50 */	lfs f8, 0x50(r26)
/* 80227E0C 00224D6C  C0 FA 00 60 */	lfs f7, 0x60(r26)
/* 80227E10 00224D70  EC 09 00 32 */	fmuls f0, f9, f0
/* 80227E14 00224D74  ED 48 18 2A */	fadds f10, f8, f3
/* 80227E18 00224D78  C0 61 01 50 */	lfs f3, 0x150(r1)
/* 80227E1C 00224D7C  C0 82 B5 B8 */	lfs f4, lbl_805AD2D8@sda21(r2)
/* 80227E20 00224D80  ED 27 00 2A */	fadds f9, f7, f0
/* 80227E24 00224D84  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 80227E28 00224D88  EC A6 28 2A */	fadds f5, f6, f5
/* 80227E2C 00224D8C  ED 63 20 2A */	fadds f11, f3, f4
/* 80227E30 00224D90  C0 61 01 54 */	lfs f3, 0x154(r1)
/* 80227E34 00224D94  EC 42 00 72 */	fmuls f2, f2, f1
/* 80227E38 00224D98  D0 A1 01 34 */	stfs f5, 0x134(r1)
/* 80227E3C 00224D9C  EC 00 20 2A */	fadds f0, f0, f4
/* 80227E40 00224DA0  C0 22 B5 D4 */	lfs f1, lbl_805AD2F4@sda21(r2)
/* 80227E44 00224DA4  EC 43 10 2A */	fadds f2, f3, f2
/* 80227E48 00224DA8  D1 41 01 38 */	stfs f10, 0x138(r1)
/* 80227E4C 00224DAC  38 A1 01 34 */	addi r5, r1, 0x134
/* 80227E50 00224DB0  38 C1 01 28 */	addi r6, r1, 0x128
/* 80227E54 00224DB4  D1 21 01 3C */	stfs f9, 0x13c(r1)
/* 80227E58 00224DB8  38 E1 01 4C */	addi r7, r1, 0x14c
/* 80227E5C 00224DBC  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80227E60 00224DC0  D1 61 01 2C */	stfs f11, 0x12c(r1)
/* 80227E64 00224DC4  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 80227E68 00224DC8  D0 C1 00 8C */	stfs f6, 0x8c(r1)
/* 80227E6C 00224DCC  D1 01 00 90 */	stfs f8, 0x90(r1)
/* 80227E70 00224DD0  D0 E1 00 94 */	stfs f7, 0x94(r1)
/* 80227E74 00224DD4  48 0E D0 A5 */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 80227E78 00224DD8  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80227E7C 00224DDC  38 61 00 80 */	addi r3, r1, 0x80
/* 80227E80 00224DE0  C0 3A 00 50 */	lfs f1, 0x50(r26)
/* 80227E84 00224DE4  38 81 00 74 */	addi r4, r1, 0x74
/* 80227E88 00224DE8  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80227E8C 00224DEC  38 A1 01 34 */	addi r5, r1, 0x134
/* 80227E90 00224DF0  C3 E1 00 98 */	lfs f31, 0x98(r1)
/* 80227E94 00224DF4  38 C1 01 28 */	addi r6, r1, 0x128
/* 80227E98 00224DF8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80227E9C 00224DFC  38 E1 01 4C */	addi r7, r1, 0x14c
/* 80227EA0 00224E00  C3 A1 00 9C */	lfs f29, 0x9c(r1)
/* 80227EA4 00224E04  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80227EA8 00224E08  C3 C1 00 A0 */	lfs f30, 0xa0(r1)
/* 80227EAC 00224E0C  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80227EB0 00224E10  C0 22 B5 D8 */	lfs f1, lbl_805AD2F8@sda21(r2)
/* 80227EB4 00224E14  48 0E D0 65 */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 80227EB8 00224E18  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 80227EBC 00224E1C  38 61 00 50 */	addi r3, r1, 0x50
/* 80227EC0 00224E20  C0 E1 00 88 */	lfs f7, 0x88(r1)
/* 80227EC4 00224E24  C0 A1 00 80 */	lfs f5, 0x80(r1)
/* 80227EC8 00224E28  EC 06 E8 28 */	fsubs f0, f6, f29
/* 80227ECC 00224E2C  EC 67 F0 28 */	fsubs f3, f7, f30
/* 80227ED0 00224E30  C0 41 01 50 */	lfs f2, 0x150(r1)
/* 80227ED4 00224E34  EC 85 F8 28 */	fsubs f4, f5, f31
/* 80227ED8 00224E38  C0 21 01 54 */	lfs f1, 0x154(r1)
/* 80227EDC 00224E3C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80227EE0 00224E40  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 80227EE4 00224E44  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 80227EE8 00224E48  EC C2 30 28 */	fsubs f6, f2, f6
/* 80227EEC 00224E4C  EC 81 38 28 */	fsubs f4, f1, f7
/* 80227EF0 00224E50  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80227EF4 00224E54  EC 00 28 28 */	fsubs f0, f0, f5
/* 80227EF8 00224E58  C0 7A 00 50 */	lfs f3, 0x50(r26)
/* 80227EFC 00224E5C  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80227F00 00224E60  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80227F04 00224E64  EC 7D 18 28 */	fsubs f3, f29, f3
/* 80227F08 00224E68  EC 5E 10 28 */	fsubs f2, f30, f2
/* 80227F0C 00224E6C  EC 3F 08 28 */	fsubs f1, f31, f1
/* 80227F10 00224E70  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80227F14 00224E74  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 80227F18 00224E78  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80227F1C 00224E7C  D0 41 00 64 */	stfs f2, 0x64(r1)
/* 80227F20 00224E80  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 80227F24 00224E84  D0 81 00 70 */	stfs f4, 0x70(r1)
/* 80227F28 00224E88  48 0E C9 91 */	bl Magnitude__9CVector3fCFv
/* 80227F2C 00224E8C  FF E0 08 90 */	fmr f31, f1
/* 80227F30 00224E90  38 61 00 5C */	addi r3, r1, 0x5c
/* 80227F34 00224E94  48 0E C9 85 */	bl Magnitude__9CVector3fCFv
/* 80227F38 00224E98  EF E1 F8 2A */	fadds f31, f1, f31
/* 80227F3C 00224E9C  38 61 00 68 */	addi r3, r1, 0x68
/* 80227F40 00224EA0  48 0E C9 79 */	bl Magnitude__9CVector3fCFv
/* 80227F44 00224EA4  C0 9A 00 50 */	lfs f4, 0x50(r26)
/* 80227F48 00224EA8  EF 41 F8 2A */	fadds f26, f1, f31
/* 80227F4C 00224EAC  C0 1A 02 9C */	lfs f0, 0x29c(r26)
/* 80227F50 00224EB0  38 61 00 44 */	addi r3, r1, 0x44
/* 80227F54 00224EB4  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 80227F58 00224EB8  C0 5A 02 A0 */	lfs f2, 0x2a0(r26)
/* 80227F5C 00224EBC  EC 84 00 28 */	fsubs f4, f4, f0
/* 80227F60 00224EC0  C0 3A 00 40 */	lfs f1, 0x40(r26)
/* 80227F64 00224EC4  C0 1A 02 98 */	lfs f0, 0x298(r26)
/* 80227F68 00224EC8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80227F6C 00224ECC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80227F70 00224ED0  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80227F74 00224ED4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80227F78 00224ED8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80227F7C 00224EDC  48 0E C9 3D */	bl Magnitude__9CVector3fCFv
/* 80227F80 00224EE0  EC 21 D0 24 */	fdivs f1, f1, f26
/* 80227F84 00224EE4  C0 7A 00 60 */	lfs f3, 0x60(r26)
/* 80227F88 00224EE8  C0 5A 00 50 */	lfs f2, 0x50(r26)
/* 80227F8C 00224EEC  38 61 00 38 */	addi r3, r1, 0x38
/* 80227F90 00224EF0  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80227F94 00224EF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80227F98 00224EF8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80227F9C 00224EFC  38 A1 01 34 */	addi r5, r1, 0x134
/* 80227FA0 00224F00  38 C1 01 28 */	addi r6, r1, 0x128
/* 80227FA4 00224F04  38 E1 01 4C */	addi r7, r1, 0x14c
/* 80227FA8 00224F08  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80227FAC 00224F0C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80227FB0 00224F10  48 0E CF 69 */	bl GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 80227FB4 00224F14  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80227FB8 00224F18  38 61 01 1C */	addi r3, r1, 0x11c
/* 80227FBC 00224F1C  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80227FC0 00224F20  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80227FC4 00224F24  C0 5A 00 60 */	lfs f2, 0x60(r26)
/* 80227FC8 00224F28  EC 81 00 28 */	fsubs f4, f1, f0
/* 80227FCC 00224F2C  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80227FD0 00224F30  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80227FD4 00224F34  EC 43 10 28 */	fsubs f2, f3, f2
/* 80227FD8 00224F38  D0 81 01 20 */	stfs f4, 0x120(r1)
/* 80227FDC 00224F3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80227FE0 00224F40  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 80227FE4 00224F44  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 80227FE8 00224F48  48 0E C7 11 */	bl CanBeNormalized__9CVector3fCFv
/* 80227FEC 00224F4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80227FF0 00224F50  41 82 00 BC */	beq lbl_802280AC
/* 80227FF4 00224F54  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80227FF8 00224F58  3C A0 80 5A */	lis r5, lbl_805A66F4@ha
/* 80227FFC 00224F5C  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80228000 00224F60  38 C5 66 F4 */	addi r6, r5, lbl_805A66F4@l
/* 80228004 00224F64  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 80228008 00224F68  38 A1 01 1C */	addi r5, r1, 0x11c
/* 8022800C 00224F6C  48 0E BB 05 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 80228010 00224F70  38 61 02 18 */	addi r3, r1, 0x218
/* 80228014 00224F74  38 81 01 E8 */	addi r4, r1, 0x1e8
/* 80228018 00224F78  48 0E AB 5D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8022801C 00224F7C  38 61 02 18 */	addi r3, r1, 0x218
/* 80228020 00224F80  48 0E B3 85 */	bl Orthonormalize__12CTransform4fFv
/* 80228024 00224F84  7F 63 DB 78 */	mr r3, r27
/* 80228028 00224F88  38 81 02 18 */	addi r4, r1, 0x218
/* 8022802C 00224F8C  48 08 84 79 */	bl SetWorldSpaceOrientation__17CProjectileWeaponFRC12CTransform4f
/* 80228030 00224F90  7F 63 DB 78 */	mr r3, r27
/* 80228034 00224F94  48 08 71 01 */	bl GetVelocity__17CProjectileWeaponCFv
/* 80228038 00224F98  7C 64 1B 78 */	mr r4, r3
/* 8022803C 00224F9C  38 61 00 20 */	addi r3, r1, 0x20
/* 80228040 00224FA0  48 0E C8 11 */	bl AsNormalized__9CVector3fCFv
/* 80228044 00224FA4  C0 62 B5 DC */	lfs f3, lbl_805AD2FC@sda21(r2)
/* 80228048 00224FA8  7F 63 DB 78 */	mr r3, r27
/* 8022804C 00224FAC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80228050 00224FB0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80228054 00224FB4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80228058 00224FB8  EF A3 00 B2 */	fmuls f29, f3, f2
/* 8022805C 00224FBC  EF C3 00 72 */	fmuls f30, f3, f1
/* 80228060 00224FC0  EF E3 00 32 */	fmuls f31, f3, f0
/* 80228064 00224FC4  48 08 70 D1 */	bl GetVelocity__17CProjectileWeaponCFv
/* 80228068 00224FC8  C0 02 B5 E4 */	lfs f0, lbl_805AD304@sda21(r2)
/* 8022806C 00224FCC  38 81 01 10 */	addi r4, r1, 0x110
/* 80228070 00224FD0  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80228074 00224FD4  EC 9E 00 32 */	fmuls f4, f30, f0
/* 80228078 00224FD8  C0 A2 B5 E0 */	lfs f5, lbl_805AD300@sda21(r2)
/* 8022807C 00224FDC  EC 5F 00 32 */	fmuls f2, f31, f0
/* 80228080 00224FE0  C0 63 00 08 */	lfs f3, 8(r3)
/* 80228084 00224FE4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80228088 00224FE8  EC 1D 00 32 */	fmuls f0, f29, f0
/* 8022808C 00224FEC  EC 86 21 7A */	fmadds f4, f6, f5, f4
/* 80228090 00224FF0  7F 63 DB 78 */	mr r3, r27
/* 80228094 00224FF4  EC 43 11 7A */	fmadds f2, f3, f5, f2
/* 80228098 00224FF8  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 8022809C 00224FFC  D0 81 01 14 */	stfs f4, 0x114(r1)
/* 802280A0 00225000  D0 01 01 10 */	stfs f0, 0x110(r1)
/* 802280A4 00225004  D0 41 01 18 */	stfs f2, 0x118(r1)
/* 802280A8 00225008  48 08 70 95 */	bl SetVelocity__17CProjectileWeaponFRC9CVector3f
lbl_802280AC:
/* 802280AC 0022500C  7F 83 E3 78 */	mr r3, r28
/* 802280B0 00225010  7F A5 EB 78 */	mr r5, r29
/* 802280B4 00225014  38 80 00 01 */	li r4, 1
/* 802280B8 00225018  4B FF F4 E5 */	bl sub_8022759c
lbl_802280BC:
/* 802280BC 0022501C  3B DE 00 02 */	addi r30, r30, 2
lbl_802280C0:
/* 802280C0 00225020  80 01 0A 4C */	lwz r0, 0xa4c(r1)
/* 802280C4 00225024  54 00 08 3C */	slwi r0, r0, 1
/* 802280C8 00225028  7C 1F 02 14 */	add r0, r31, r0
/* 802280CC 0022502C  7C 1E 00 40 */	cmplw r30, r0
/* 802280D0 00225030  40 82 FB 98 */	bne lbl_80227C68
/* 802280D4 00225034  80 A1 02 48 */	lwz r5, 0x248(r1)
/* 802280D8 00225038  38 60 00 00 */	li r3, 0
/* 802280DC 0022503C  2C 05 00 00 */	cmpwi r5, 0
/* 802280E0 00225040  40 81 00 40 */	ble lbl_80228120
/* 802280E4 00225044  2C 05 00 08 */	cmpwi r5, 8
/* 802280E8 00225048  38 85 FF F8 */	addi r4, r5, -8
/* 802280EC 0022504C  40 81 00 20 */	ble lbl_8022810C
/* 802280F0 00225050  38 04 00 07 */	addi r0, r4, 7
/* 802280F4 00225054  54 00 E8 FE */	srwi r0, r0, 3
/* 802280F8 00225058  7C 09 03 A6 */	mtctr r0
/* 802280FC 0022505C  2C 04 00 00 */	cmpwi r4, 0
/* 80228100 00225060  40 81 00 0C */	ble lbl_8022810C
lbl_80228104:
/* 80228104 00225064  38 63 00 08 */	addi r3, r3, 8
/* 80228108 00225068  42 00 FF FC */	bdnz lbl_80228104
lbl_8022810C:
/* 8022810C 0022506C  7C 03 28 50 */	subf r0, r3, r5
/* 80228110 00225070  7C 09 03 A6 */	mtctr r0
/* 80228114 00225074  7C 03 28 00 */	cmpw r3, r5
/* 80228118 00225078  40 80 00 08 */	bge lbl_80228120
lbl_8022811C:
/* 8022811C 0022507C  42 00 00 00 */	bdnz lbl_8022811C
lbl_80228120:
/* 80228120 00225080  38 00 00 00 */	li r0, 0
/* 80228124 00225084  90 01 02 48 */	stw r0, 0x248(r1)
lbl_80228128:
/* 80228128 00225088  80 A1 0A 4C */	lwz r5, 0xa4c(r1)
/* 8022812C 0022508C  38 60 00 00 */	li r3, 0
/* 80228130 00225090  2C 05 00 00 */	cmpwi r5, 0
/* 80228134 00225094  40 81 00 40 */	ble lbl_80228174
/* 80228138 00225098  2C 05 00 08 */	cmpwi r5, 8
/* 8022813C 0022509C  38 85 FF F8 */	addi r4, r5, -8
/* 80228140 002250A0  40 81 00 20 */	ble lbl_80228160
/* 80228144 002250A4  38 04 00 07 */	addi r0, r4, 7
/* 80228148 002250A8  54 00 E8 FE */	srwi r0, r0, 3
/* 8022814C 002250AC  7C 09 03 A6 */	mtctr r0
/* 80228150 002250B0  2C 04 00 00 */	cmpwi r4, 0
/* 80228154 002250B4  40 81 00 0C */	ble lbl_80228160
lbl_80228158:
/* 80228158 002250B8  38 63 00 08 */	addi r3, r3, 8
/* 8022815C 002250BC  42 00 FF FC */	bdnz lbl_80228158
lbl_80228160:
/* 80228160 002250C0  7C 03 28 50 */	subf r0, r3, r5
/* 80228164 002250C4  7C 09 03 A6 */	mtctr r0
/* 80228168 002250C8  7C 03 28 00 */	cmpw r3, r5
/* 8022816C 002250CC  40 80 00 08 */	bge lbl_80228174
lbl_80228170:
/* 80228170 002250D0  42 00 00 00 */	bdnz lbl_80228170
lbl_80228174:
/* 80228174 002250D4  38 00 00 00 */	li r0, 0
/* 80228178 002250D8  90 01 0A 4C */	stw r0, 0xa4c(r1)
lbl_8022817C:
/* 8022817C 002250DC  38 00 12 C8 */	li r0, 0x12c8
/* 80228180 002250E0  13 E1 00 0C */	psq_lx f31, r1, r0, 0, qr0
/* 80228184 002250E4  CB E1 12 C0 */	lfd f31, 0x12c0(r1)
/* 80228188 002250E8  38 00 12 B8 */	li r0, 0x12b8
/* 8022818C 002250EC  13 C1 00 0C */	psq_lx f30, r1, r0, 0, qr0
/* 80228190 002250F0  CB C1 12 B0 */	lfd f30, 0x12b0(r1)
/* 80228194 002250F4  38 00 12 A8 */	li r0, 0x12a8
/* 80228198 002250F8  13 A1 00 0C */	psq_lx f29, r1, r0, 0, qr0
/* 8022819C 002250FC  CB A1 12 A0 */	lfd f29, 0x12a0(r1)
/* 802281A0 00225100  38 00 12 98 */	li r0, 0x1298
/* 802281A4 00225104  13 81 00 0C */	psq_lx f28, r1, r0, 0, qr0
/* 802281A8 00225108  CB 81 12 90 */	lfd f28, 0x1290(r1)
/* 802281AC 0022510C  38 00 12 88 */	li r0, 0x1288
/* 802281B0 00225110  13 61 00 0C */	psq_lx f27, r1, r0, 0, qr0
/* 802281B4 00225114  CB 61 12 80 */	lfd f27, 0x1280(r1)
/* 802281B8 00225118  38 00 12 78 */	li r0, 0x1278
/* 802281BC 0022511C  13 41 00 0C */	psq_lx f26, r1, r0, 0, qr0
/* 802281C0 00225120  CB 41 12 70 */	lfd f26, 0x1270(r1)
/* 802281C4 00225124  BB 41 12 58 */	lmw r26, 0x1258(r1)
/* 802281C8 00225128  80 01 12 D4 */	lwz r0, 0x12d4(r1)
/* 802281CC 0022512C  7C 08 03 A6 */	mtlr r0
/* 802281D0 00225130  38 21 12 D0 */	addi r1, r1, 0x12d0
/* 802281D4 00225134  4E 80 00 20 */	blr 

.global sub_802281d8
sub_802281d8:
/* 802281D8 00225138  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802281DC 0022513C  7C 08 02 A6 */	mflr r0
/* 802281E0 00225140  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 802281E4 00225144  90 01 00 94 */	stw r0, 0x94(r1)
/* 802281E8 00225148  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 802281EC 0022514C  7C 7D 1B 78 */	mr r29, r3
/* 802281F0 00225150  7C 9E 23 78 */	mr r30, r4
/* 802281F4 00225154  7C BB 2B 78 */	mr r27, r5
/* 802281F8 00225158  C0 23 07 AC */	lfs f1, 0x7ac(r3)
/* 802281FC 0022515C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80228200 00225160  4C 40 13 82 */	cror 2, 0, 2
/* 80228204 00225164  40 82 01 90 */	bne lbl_80228394
/* 80228208 00225168  3C 60 80 3D */	lis r3, lbl_803D3310@ha
/* 8022820C 0022516C  3B 80 00 00 */	li r28, 0
/* 80228210 00225170  38 63 33 10 */	addi r3, r3, lbl_803D3310@l
/* 80228214 00225174  3B 40 00 00 */	li r26, 0
/* 80228218 00225178  38 83 00 B8 */	addi r4, r3, 0xb8
/* 8022821C 0022517C  38 60 01 00 */	li r3, 0x100
/* 80228220 00225180  38 A0 00 00 */	li r5, 0
/* 80228224 00225184  48 0E D6 49 */	bl __nw__FUlPCcPCc
/* 80228228 00225188  7C 7F 1B 79 */	or. r31, r3, r3
/* 8022822C 0022518C  41 82 00 B4 */	beq lbl_802282E0
/* 80228230 00225190  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80228234 00225194  3C 60 80 3D */	lis r3, lbl_803D3310@ha
/* 80228238 00225198  38 83 33 10 */	addi r4, r3, lbl_803D3310@l
/* 8022823C 0022519C  38 61 00 44 */	addi r3, r1, 0x44
/* 80228240 002251A0  C0 05 00 00 */	lfs f0, 0(r5)
/* 80228244 002251A4  38 84 00 BF */	addi r4, r4, 0xbf
/* 80228248 002251A8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8022824C 002251AC  C0 05 00 04 */	lfs f0, 4(r5)
/* 80228250 002251B0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80228254 002251B4  C0 05 00 08 */	lfs f0, 8(r5)
/* 80228258 002251B8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8022825C 002251BC  4B DD CA 5D */	bl string_l__4rstlFPCc
/* 80228260 002251C0  80 0D A3 88 */	lwz r0, lbl_805A8F48@sda21(r13)
/* 80228264 002251C4  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 80228268 002251C8  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 8022826C 002251CC  38 81 00 30 */	addi r4, r1, 0x30
/* 80228270 002251D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80228274 002251D4  38 61 00 60 */	addi r3, r1, 0x60
/* 80228278 002251D8  38 C1 00 34 */	addi r6, r1, 0x34
/* 8022827C 002251DC  3B 80 00 01 */	li r28, 1
/* 80228280 002251E0  80 1D 00 04 */	lwz r0, 4(r29)
/* 80228284 002251E4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80228288 002251E8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022828C 002251EC  4B E2 91 F9 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80228290 002251F0  7F C4 F3 78 */	mr r4, r30
/* 80228294 002251F4  38 61 00 10 */	addi r3, r1, 0x10
/* 80228298 002251F8  3B 40 00 01 */	li r26, 1
/* 8022829C 002251FC  4B E2 4E 41 */	bl AllocateUniqueId__13CStateManagerFv
/* 802282A0 00225200  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 802282A4 00225204  B0 01 00 14 */	sth r0, 0x14(r1)
/* 802282A8 00225208  48 12 1D 05 */	bl White__6CColorFv
/* 802282AC 0022520C  38 01 00 54 */	addi r0, r1, 0x54
/* 802282B0 00225210  7F 69 DB 78 */	mr r9, r27
/* 802282B4 00225214  90 01 00 08 */	stw r0, 8(r1)
/* 802282B8 00225218  38 9D 07 60 */	addi r4, r29, 0x760
/* 802282BC 0022521C  38 A1 00 14 */	addi r5, r1, 0x14
/* 802282C0 00225220  38 E1 00 60 */	addi r7, r1, 0x60
/* 802282C4 00225224  90 61 00 0C */	stw r3, 0xc(r1)
/* 802282C8 00225228  7F E3 FB 78 */	mr r3, r31
/* 802282CC 0022522C  39 01 00 44 */	addi r8, r1, 0x44
/* 802282D0 00225230  38 C0 00 01 */	li r6, 1
/* 802282D4 00225234  39 40 00 00 */	li r10, 0
/* 802282D8 00225238  4B E3 28 21 */	bl "__ct__10CExplosionFRC31TLockedToken<15CGenDescription>9TUniqueIdbRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4fUiRC9CVector3fRC6CColor"
/* 802282DC 0022523C  7C 7F 1B 78 */	mr r31, r3
lbl_802282E0:
/* 802282E0 00225240  7F 40 07 75 */	extsb. r0, r26
/* 802282E4 00225244  41 82 00 44 */	beq lbl_80228328
/* 802282E8 00225248  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802282EC 0022524C  80 61 00 70 */	lwz r3, 0x70(r1)
/* 802282F0 00225250  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802282F4 00225254  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802282F8 00225258  7C 64 1B 78 */	mr r4, r3
/* 802282FC 0022525C  7C 03 02 14 */	add r0, r3, r0
/* 80228300 00225260  90 61 00 18 */	stw r3, 0x18(r1)
/* 80228304 00225264  90 01 00 24 */	stw r0, 0x24(r1)
/* 80228308 00225268  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022830C 0022526C  48 00 00 08 */	b lbl_80228314
lbl_80228310:
/* 80228310 00225270  38 84 00 0C */	addi r4, r4, 0xc
lbl_80228314:
/* 80228314 00225274  7C 04 00 40 */	cmplw r4, r0
/* 80228318 00225278  40 82 FF F8 */	bne lbl_80228310
/* 8022831C 0022527C  28 03 00 00 */	cmplwi r3, 0
/* 80228320 00225280  41 82 00 08 */	beq lbl_80228328
/* 80228324 00225284  48 0E D6 0D */	bl Free__7CMemoryFPCv
lbl_80228328:
/* 80228328 00225288  7F 80 07 75 */	extsb. r0, r28
/* 8022832C 0022528C  41 82 00 0C */	beq lbl_80228338
/* 80228330 00225290  38 61 00 44 */	addi r3, r1, 0x44
/* 80228334 00225294  48 11 57 AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80228338:
/* 80228338 00225298  28 1F 00 00 */	cmplwi r31, 0
/* 8022833C 0022529C  41 82 00 58 */	beq lbl_80228394
/* 80228340 002252A0  7F C3 F3 78 */	mr r3, r30
/* 80228344 002252A4  7F E4 FB 78 */	mr r4, r31
/* 80228348 002252A8  4B E2 49 AD */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 8022834C 002252AC  81 5D 00 04 */	lwz r10, 4(r29)
/* 80228350 002252B0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80228354 002252B4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 80228358 002252B8  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 8022835C 002252BC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 80228360 002252C0  38 61 00 28 */	addi r3, r1, 0x28
/* 80228364 002252C4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80228368 002252C8  38 A1 00 38 */	addi r5, r1, 0x38
/* 8022836C 002252CC  A9 22 C5 FA */	lha r9, lbl_805AE31A@sda21(r2)
/* 80228370 002252D0  38 E0 00 00 */	li r7, 0
/* 80228374 002252D4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80228378 002252D8  39 00 00 00 */	li r8, 0
/* 8022837C 002252DC  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80228380 002252E0  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80228384 002252E4  A0 9D 05 FC */	lhz r4, 0x5fc(r29)
/* 80228388 002252E8  48 0C 1F 29 */	bl AddEmitter__11CSfxManagerFUsRC9CVector3fRC9CVector3fbbsi
/* 8022838C 002252EC  C0 02 B5 E8 */	lfs f0, lbl_805AD308@sda21(r2)
/* 80228390 002252F0  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
lbl_80228394:
/* 80228394 002252F4  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 80228398 002252F8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8022839C 002252FC  7C 08 03 A6 */	mtlr r0
/* 802283A0 00225300  38 21 00 90 */	addi r1, r1, 0x90
/* 802283A4 00225304  4E 80 00 20 */	blr 

.global sub_802283a8
sub_802283a8:
/* 802283A8 00225308  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 802283AC 0022530C  7C 08 02 A6 */	mflr r0
/* 802283B0 00225310  90 01 01 44 */	stw r0, 0x144(r1)
/* 802283B4 00225314  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 802283B8 00225318  F3 E1 01 38 */	psq_st f31, 312(r1), 0, qr0
/* 802283BC 0022531C  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 802283C0 00225320  F3 C1 01 28 */	psq_st f30, 296(r1), 0, qr0
/* 802283C4 00225324  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 802283C8 00225328  93 C1 01 18 */	stw r30, 0x118(r1)
/* 802283CC 0022532C  93 A1 01 14 */	stw r29, 0x114(r1)
/* 802283D0 00225330  7C 9F 23 78 */	mr r31, r4
/* 802283D4 00225334  7C 7D 1B 78 */	mr r29, r3
/* 802283D8 00225338  83 C4 08 4C */	lwz r30, 0x84c(r4)
/* 802283DC 0022533C  38 61 00 24 */	addi r3, r1, 0x24
/* 802283E0 00225340  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 802283E4 00225344  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 802283E8 00225348  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 802283EC 0022534C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 802283F0 00225350  EC 81 00 28 */	fsubs f4, f1, f0
/* 802283F4 00225354  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 802283F8 00225358  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 802283FC 0022535C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80228400 00225360  EC 01 00 28 */	fsubs f0, f1, f0
/* 80228404 00225364  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80228408 00225368  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8022840C 0022536C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80228410 00225370  48 0E C4 A9 */	bl Magnitude__9CVector3fCFv
/* 80228414 00225374  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 80228418 00225378  FF E0 08 90 */	fmr f31, f1
/* 8022841C 0022537C  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 80228420 00225380  41 82 00 0C */	beq lbl_8022842C
/* 80228424 00225384  C3 C2 B5 CC */	lfs f30, lbl_805AD2EC@sda21(r2)
/* 80228428 00225388  48 00 00 08 */	b lbl_80228430
lbl_8022842C:
/* 8022842C 0022538C  C3 C2 B5 E8 */	lfs f30, lbl_805AD308@sda21(r2)
lbl_80228430:
/* 80228430 00225390  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80228434 00225394  38 61 00 18 */	addi r3, r1, 0x18
/* 80228438 00225398  C0 04 00 00 */	lfs f0, 0(r4)
/* 8022843C 0022539C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80228440 002253A0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80228444 002253A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80228448 002253A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022844C 002253AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80228450 002253B0  48 0E C4 69 */	bl Magnitude__9CVector3fCFv
/* 80228454 002253B4  EF DE 00 72 */	fmuls f30, f30, f1
/* 80228458 002253B8  C0 22 B5 EC */	lfs f1, lbl_805AD30C@sda21(r2)
/* 8022845C 002253BC  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80228460 002253C0  EF C1 F7 FC */	fnmsubs f30, f1, f31, f30
/* 80228464 002253C4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80228468 002253C8  40 81 01 30 */	ble lbl_80228598
/* 8022846C 002253CC  80 1E 02 B0 */	lwz r0, 0x2b0(r30)
/* 80228470 002253D0  2C 00 00 02 */	cmpwi r0, 2
/* 80228474 002253D4  40 82 00 0C */	bne lbl_80228480
/* 80228478 002253D8  80 1E 02 AC */	lwz r0, 0x2ac(r30)
/* 8022847C 002253DC  48 00 00 08 */	b lbl_80228484
lbl_80228480:
/* 80228480 002253E0  38 00 00 04 */	li r0, 4
lbl_80228484:
/* 80228484 002253E4  2C 00 00 01 */	cmpwi r0, 1
/* 80228488 002253E8  41 82 01 10 */	beq lbl_80228598
/* 8022848C 002253EC  88 1E 09 C4 */	lbz r0, 0x9c4(r30)
/* 80228490 002253F0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80228494 002253F4  40 82 01 04 */	bne lbl_80228598
/* 80228498 002253F8  80 1E 02 F8 */	lwz r0, 0x2f8(r30)
/* 8022849C 002253FC  2C 00 00 01 */	cmpwi r0, 1
/* 802284A0 00225400  41 82 00 84 */	beq lbl_80228524
/* 802284A4 00225404  80 9F 08 70 */	lwz r4, 0x870(r31)
/* 802284A8 00225408  38 61 00 08 */	addi r3, r1, 8
/* 802284AC 0022540C  80 A4 00 7C */	lwz r5, 0x7c(r4)
/* 802284B0 00225410  A3 C5 00 08 */	lhz r30, 8(r5)
/* 802284B4 00225414  4B DE 37 25 */	bl GetCurrentCameraId__14CCameraManagerCFv
/* 802284B8 00225418  A0 01 00 08 */	lhz r0, 8(r1)
/* 802284BC 0022541C  7C 00 F0 40 */	cmplw r0, r30
/* 802284C0 00225420  40 82 00 D8 */	bne lbl_80228598
/* 802284C4 00225424  FC 40 F0 90 */	fmr f2, f30
/* 802284C8 00225428  C0 22 B5 BC */	lfs f1, lbl_805AD2DC@sda21(r2)
/* 802284CC 0022542C  38 61 00 30 */	addi r3, r1, 0x30
/* 802284D0 00225430  4B F3 53 61 */	bl __ct__16CCameraShakeDataFff
/* 802284D4 00225434  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 802284D8 00225438  38 81 00 30 */	addi r4, r1, 0x30
/* 802284DC 0022543C  38 A0 00 01 */	li r5, 1
/* 802284E0 00225440  4B DE 25 41 */	bl AddCameraShaker__14CCameraManagerFRC16CCameraShakeDatab
/* 802284E4 00225444  34 81 00 B0 */	addic. r4, r1, 0xb0
/* 802284E8 00225448  41 82 00 10 */	beq lbl_802284F8
/* 802284EC 0022544C  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 802284F0 00225450  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 802284F4 00225454  90 04 00 00 */	stw r0, 0(r4)
lbl_802284F8:
/* 802284F8 00225458  34 81 00 74 */	addic. r4, r1, 0x74
/* 802284FC 0022545C  41 82 00 10 */	beq lbl_8022850C
/* 80228500 00225460  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80228504 00225464  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 80228508 00225468  90 04 00 00 */	stw r0, 0(r4)
lbl_8022850C:
/* 8022850C 0022546C  34 81 00 38 */	addic. r4, r1, 0x38
/* 80228510 00225470  41 82 00 88 */	beq lbl_80228598
/* 80228514 00225474  3C 60 80 3E */	lis r3, lbl_803D8EA8@ha
/* 80228518 00225478  38 03 8E A8 */	addi r0, r3, lbl_803D8EA8@l
/* 8022851C 0022547C  90 04 00 00 */	stw r0, 0(r4)
/* 80228520 00225480  48 00 00 78 */	b lbl_80228598
lbl_80228524:
/* 80228524 00225484  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 80228528 00225488  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 8022852C 0022548C  41 82 00 0C */	beq lbl_80228538
/* 80228530 00225490  C0 62 B5 F0 */	lfs f3, lbl_805AD310@sda21(r2)
/* 80228534 00225494  48 00 00 08 */	b lbl_8022853C
lbl_80228538:
/* 80228538 00225498  C0 62 B5 F4 */	lfs f3, lbl_805AD314@sda21(r2)
lbl_8022853C:
/* 8022853C 0022549C  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 80228540 002254A0  C4 43 66 F4 */	lfsu f2, lbl_805A66F4@l(r3)
/* 80228544 002254A4  C0 9E 00 E8 */	lfs f4, 0xe8(r30)
/* 80228548 002254A8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8022854C 002254AC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80228550 002254B0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80228554 002254B4  EC 23 00 72 */	fmuls f1, f3, f1
/* 80228558 002254B8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8022855C 002254BC  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80228560 002254C0  EC 24 00 72 */	fmuls f1, f4, f1
/* 80228564 002254C4  EC 04 00 32 */	fmuls f0, f4, f0
/* 80228568 002254C8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8022856C 002254CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80228570 002254D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80228574 002254D4  4B DF 2F C1 */	bl Identity__10CAxisAngleFv
/* 80228578 002254D8  7C 65 1B 78 */	mr r5, r3
/* 8022857C 002254DC  7F C3 F3 78 */	mr r3, r30
/* 80228580 002254E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80228584 002254E4  4B EF 3E 15 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
/* 80228588 002254E8  7F C3 F3 78 */	mr r3, r30
/* 8022858C 002254EC  7F E5 FB 78 */	mr r5, r31
/* 80228590 002254F0  38 80 00 02 */	li r4, 2
/* 80228594 002254F4  48 05 DE 59 */	bl SetMoveState__7CPlayerFQ27NPlayer20EPlayerMovementStateR13CStateManager
lbl_80228598:
/* 80228598 002254F8  E3 E1 01 38 */	psq_l f31, 312(r1), 0, qr0
/* 8022859C 002254FC  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 802285A0 00225500  E3 C1 01 28 */	psq_l f30, 296(r1), 0, qr0
/* 802285A4 00225504  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 802285A8 00225508  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 802285AC 0022550C  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 802285B0 00225510  80 01 01 44 */	lwz r0, 0x144(r1)
/* 802285B4 00225514  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 802285B8 00225518  7C 08 03 A6 */	mtlr r0
/* 802285BC 0022551C  38 21 01 40 */	addi r1, r1, 0x140
/* 802285C0 00225520  4E 80 00 20 */	blr 

.global sub_802285c4
sub_802285c4:
/* 802285C4 00225524  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802285C8 00225528  7C 08 02 A6 */	mflr r0
/* 802285CC 0022552C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802285D0 00225530  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 802285D4 00225534  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 802285D8 00225538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802285DC 0022553C  93 C1 00 08 */	stw r30, 8(r1)
/* 802285E0 00225540  7C 7E 1B 78 */	mr r30, r3
/* 802285E4 00225544  7C 9F 23 78 */	mr r31, r4
/* 802285E8 00225548  C3 E3 05 E8 */	lfs f31, 0x5e8(r3)
/* 802285EC 0022554C  80 64 09 00 */	lwz r3, 0x900(r4)
/* 802285F0 00225550  48 0E 9E ED */	bl Float__9CRandom16Fv
/* 802285F4 00225554  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 802285F8 00225558  40 81 00 1C */	ble lbl_80228614
/* 802285FC 0022555C  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 80228600 00225560  48 0E 9E DD */	bl Float__9CRandom16Fv
/* 80228604 00225564  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 80228608 00225568  C0 1E 03 04 */	lfs f0, 0x304(r30)
/* 8022860C 0022556C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80228610 00225570  D0 1E 07 B8 */	stfs f0, 0x7b8(r30)
lbl_80228614:
/* 80228614 00225574  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 80228618 00225578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022861C 0022557C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80228620 00225580  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228624 00225584  83 C1 00 08 */	lwz r30, 8(r1)
/* 80228628 00225588  7C 08 03 A6 */	mtlr r0
/* 8022862C 0022558C  38 21 00 20 */	addi r1, r1, 0x20
/* 80228630 00225590  4E 80 00 20 */	blr 

.global sub_80228634
sub_80228634:
/* 80228634 00225594  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80228638 00225598  7C 08 02 A6 */	mflr r0
/* 8022863C 0022559C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80228640 002255A0  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80228644 002255A4  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80228648 002255A8  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8022864C 002255AC  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80228650 002255B0  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80228654 002255B4  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80228658 002255B8  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 8022865C 002255BC  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80228660 002255C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80228664 002255C4  7C 7F 1B 78 */	mr r31, r3
/* 80228668 002255C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8022866C 002255CC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80228670 002255D0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80228674 002255D4  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80228678 002255D8  D0 1F 08 B4 */	stfs f0, 0x8b4(r31)
/* 8022867C 002255DC  D0 3F 08 B8 */	stfs f1, 0x8b8(r31)
/* 80228680 002255E0  D0 5F 08 BC */	stfs f2, 0x8bc(r31)
/* 80228684 002255E4  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 80228688 002255E8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8022868C 002255EC  C3 C4 00 50 */	lfs f30, 0x50(r4)
/* 80228690 002255F0  C3 A4 00 60 */	lfs f29, 0x60(r4)
/* 80228694 002255F4  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80228698 002255F8  EC 40 F0 28 */	fsubs f2, f0, f30
/* 8022869C 002255FC  C3 E4 00 40 */	lfs f31, 0x40(r4)
/* 802286A0 00225600  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802286A4 00225604  EC 21 E8 28 */	fsubs f1, f1, f29
/* 802286A8 00225608  EC 00 F8 28 */	fsubs f0, f0, f31
/* 802286AC 0022560C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 802286B0 00225610  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 802286B4 00225614  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802286B8 00225618  C0 1F 02 FC */	lfs f0, 0x2fc(r31)
/* 802286BC 0022561C  EF 80 00 32 */	fmuls f28, f0, f0
/* 802286C0 00225620  48 0E C0 39 */	bl CanBeNormalized__9CVector3fCFv
/* 802286C4 00225624  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802286C8 00225628  41 82 00 9C */	beq lbl_80228764
/* 802286CC 0022562C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 802286D0 00225630  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802286D4 00225634  EC 21 00 72 */	fmuls f1, f1, f1
/* 802286D8 00225638  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 802286DC 0022563C  EC 00 00 32 */	fmuls f0, f0, f0
/* 802286E0 00225640  EC 42 00 B2 */	fmuls f2, f2, f2
/* 802286E4 00225644  EC 01 00 2A */	fadds f0, f1, f0
/* 802286E8 00225648  EC 02 00 2A */	fadds f0, f2, f0
/* 802286EC 0022564C  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 802286F0 00225650  40 81 00 74 */	ble lbl_80228764
/* 802286F4 00225654  C3 9F 02 FC */	lfs f28, 0x2fc(r31)
/* 802286F8 00225658  38 61 00 08 */	addi r3, r1, 8
/* 802286FC 0022565C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80228700 00225660  48 0E C1 51 */	bl AsNormalized__9CVector3fCFv
/* 80228704 00225664  C0 21 00 08 */	lfs f1, 8(r1)
/* 80228708 00225668  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8022870C 0022566C  EC 5C 00 72 */	fmuls f2, f28, f1
/* 80228710 00225670  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80228714 00225674  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80228718 00225678  EC 7C 00 72 */	fmuls f3, f28, f1
/* 8022871C 0022567C  EC 3F 10 2A */	fadds f1, f31, f2
/* 80228720 00225680  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80228724 00225684  EC 9E 00 2A */	fadds f4, f30, f0
/* 80228728 00225688  EC 5D 18 2A */	fadds f2, f29, f3
/* 8022872C 0022568C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80228730 00225690  D0 3F 02 E0 */	stfs f1, 0x2e0(r31)
/* 80228734 00225694  D0 9F 02 E4 */	stfs f4, 0x2e4(r31)
/* 80228738 00225698  D0 5F 02 E8 */	stfs f2, 0x2e8(r31)
/* 8022873C 0022569C  C0 1F 02 E0 */	lfs f0, 0x2e0(r31)
/* 80228740 002256A0  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80228744 002256A4  D0 1F 08 B4 */	stfs f0, 0x8b4(r31)
/* 80228748 002256A8  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 8022874C 002256AC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80228750 002256B0  D0 1F 08 B8 */	stfs f0, 0x8b8(r31)
/* 80228754 002256B4  C0 1F 02 E8 */	lfs f0, 0x2e8(r31)
/* 80228758 002256B8  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 8022875C 002256BC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80228760 002256C0  D0 1F 08 BC */	stfs f0, 0x8bc(r31)
lbl_80228764:
/* 80228764 002256C4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80228768 002256C8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8022876C 002256CC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80228770 002256D0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80228774 002256D4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 80228778 002256D8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8022877C 002256DC  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 80228780 002256E0  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80228784 002256E4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80228788 002256E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8022878C 002256EC  7C 08 03 A6 */	mtlr r0
/* 80228790 002256F0  38 21 00 80 */	addi r1, r1, 0x80
/* 80228794 002256F4  4E 80 00 20 */	blr 

.global sub_80228798
sub_80228798:
/* 80228798 002256F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022879C 002256FC  7C 08 02 A6 */	mflr r0
/* 802287A0 00225700  90 01 00 34 */	stw r0, 0x34(r1)
/* 802287A4 00225704  38 81 00 14 */	addi r4, r1, 0x14
/* 802287A8 00225708  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802287AC 0022570C  7C 7F 1B 78 */	mr r31, r3
/* 802287B0 00225710  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 802287B4 00225714  38 7F 07 D0 */	addi r3, r31, 0x7d0
/* 802287B8 00225718  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 802287BC 0022571C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 802287C0 00225720  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802287C4 00225724  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802287C8 00225728  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 802287CC 0022572C  4B F9 E3 69 */	bl OnPath__15CPathFindSearchCFRC9CVector3f
/* 802287D0 00225730  2C 03 00 00 */	cmpwi r3, 0
/* 802287D4 00225734  40 82 00 58 */	bne lbl_8022882C
/* 802287D8 00225738  80 BF 08 C4 */	lwz r5, 0x8c4(r31)
/* 802287DC 0022573C  38 60 00 00 */	li r3, 0
/* 802287E0 00225740  2C 05 00 00 */	cmpwi r5, 0
/* 802287E4 00225744  40 81 00 40 */	ble lbl_80228824
/* 802287E8 00225748  2C 05 00 08 */	cmpwi r5, 8
/* 802287EC 0022574C  38 85 FF F8 */	addi r4, r5, -8
/* 802287F0 00225750  40 81 00 20 */	ble lbl_80228810
/* 802287F4 00225754  38 04 00 07 */	addi r0, r4, 7
/* 802287F8 00225758  54 00 E8 FE */	srwi r0, r0, 3
/* 802287FC 0022575C  7C 09 03 A6 */	mtctr r0
/* 80228800 00225760  2C 04 00 00 */	cmpwi r4, 0
/* 80228804 00225764  40 81 00 0C */	ble lbl_80228810
lbl_80228808:
/* 80228808 00225768  38 63 00 08 */	addi r3, r3, 8
/* 8022880C 0022576C  42 00 FF FC */	bdnz lbl_80228808
lbl_80228810:
/* 80228810 00225770  7C 03 28 50 */	subf r0, r3, r5
/* 80228814 00225774  7C 09 03 A6 */	mtctr r0
/* 80228818 00225778  7C 03 28 00 */	cmpw r3, r5
/* 8022881C 0022577C  40 80 00 08 */	bge lbl_80228824
lbl_80228820:
/* 80228820 00225780  42 00 00 00 */	bdnz lbl_80228820
lbl_80228824:
/* 80228824 00225784  38 00 00 00 */	li r0, 0
/* 80228828 00225788  90 1F 08 C4 */	stw r0, 0x8c4(r31)
lbl_8022882C:
/* 8022882C 0022578C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80228830 00225790  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 80228834 00225794  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80228838 00225798  38 81 00 08 */	addi r4, r1, 8
/* 8022883C 0022579C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80228840 002257A0  90 C1 00 08 */	stw r6, 8(r1)
/* 80228844 002257A4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80228848 002257A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022884C 002257AC  48 07 80 E5 */	bl sub_802a0930
/* 80228850 002257B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80228854 002257B4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80228858 002257B8  7C 08 03 A6 */	mtlr r0
/* 8022885C 002257BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80228860 002257C0  4E 80 00 20 */	blr 

.global sub_80228864
sub_80228864:
/* 80228864 002257C4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80228868 002257C8  7C 08 02 A6 */	mflr r0
/* 8022886C 002257CC  80 82 B5 B4 */	lwz r4, lbl_805AD2D4@sda21(r2)
/* 80228870 002257D0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80228874 002257D4  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80228878 002257D8  7C BF 2B 78 */	mr r31, r5
/* 8022887C 002257DC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80228880 002257E0  7C 7E 1B 78 */	mr r30, r3
/* 80228884 002257E4  38 61 00 20 */	addi r3, r1, 0x20
/* 80228888 002257E8  4B DD C4 31 */	bl string_l__4rstlFPCc
/* 8022888C 002257EC  7F E4 FB 78 */	mr r4, r31
/* 80228890 002257F0  38 61 00 30 */	addi r3, r1, 0x30
/* 80228894 002257F4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80228898 002257F8  4B E2 A6 69 */	bl "GetLocatorTransform__6CActorCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8022889C 002257FC  38 61 00 60 */	addi r3, r1, 0x60
/* 802288A0 00225800  38 81 00 30 */	addi r4, r1, 0x30
/* 802288A4 00225804  48 0E A2 D1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802288A8 00225808  38 61 00 20 */	addi r3, r1, 0x20
/* 802288AC 0022580C  48 11 52 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802288B0 00225810  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 802288B4 00225814  38 61 00 14 */	addi r3, r1, 0x14
/* 802288B8 00225818  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 802288BC 0022581C  38 9F 00 34 */	addi r4, r31, 0x34
/* 802288C0 00225820  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 802288C4 00225824  38 A1 00 08 */	addi r5, r1, 8
/* 802288C8 00225828  D0 41 00 08 */	stfs f2, 8(r1)
/* 802288CC 0022582C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802288D0 00225830  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802288D4 00225834  48 0E A1 AD */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 802288D8 00225838  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 802288DC 0022583C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802288E0 00225840  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 802288E4 00225844  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 802288E8 00225848  EC 01 00 2A */	fadds f0, f1, f0
/* 802288EC 0022584C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 802288F0 00225850  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 802288F4 00225854  EC 64 18 2A */	fadds f3, f4, f3
/* 802288F8 00225858  D0 1E 00 00 */	stfs f0, 0(r30)
/* 802288FC 0022585C  EC 02 08 2A */	fadds f0, f2, f1
/* 80228900 00225860  D0 7E 00 04 */	stfs f3, 4(r30)
/* 80228904 00225864  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80228908 00225868  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8022890C 0022586C  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80228910 00225870  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80228914 00225874  7C 08 03 A6 */	mtlr r0
/* 80228918 00225878  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8022891C 0022587C  4E 80 00 20 */	blr 

.global sub_80228920
sub_80228920:
/* 80228920 00225880  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80228924 00225884  7C 08 02 A6 */	mflr r0
/* 80228928 00225888  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022892C 0022588C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80228930 00225890  7C BF 2B 78 */	mr r31, r5
/* 80228934 00225894  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80228938 00225898  7C 9E 23 78 */	mr r30, r4
/* 8022893C 0022589C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80228940 002258A0  7C 7D 1B 78 */	mr r29, r3
/* 80228944 002258A4  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80228948 002258A8  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022894C 002258AC  7C 06 00 40 */	cmplw r6, r0
/* 80228950 002258B0  41 82 00 44 */	beq lbl_80228994
/* 80228954 002258B4  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 80228958 002258B8  7F C3 F3 78 */	mr r3, r30
/* 8022895C 002258BC  38 81 00 10 */	addi r4, r1, 0x10
/* 80228960 002258C0  4B E2 3C 15 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80228964 002258C4  7C 64 1B 79 */	or. r4, r3, r3
/* 80228968 002258C8  41 82 00 2C */	beq lbl_80228994
/* 8022896C 002258CC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80228970 002258D0  38 C0 00 0F */	li r6, 0xf
/* 80228974 002258D4  41 82 00 08 */	beq lbl_8022897C
/* 80228978 002258D8  38 C0 00 0E */	li r6, 0xe
lbl_8022897C:
/* 8022897C 002258DC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80228980 002258E0  7F C3 F3 78 */	mr r3, r30
/* 80228984 002258E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80228988 002258E8  B0 01 00 08 */	sth r0, 8(r1)
/* 8022898C 002258EC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80228990 002258F0  4B E1 B5 41 */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_80228994:
/* 80228994 002258F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80228998 002258F8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022899C 002258FC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802289A0 00225900  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802289A4 00225904  7C 08 03 A6 */	mtlr r0
/* 802289A8 00225908  38 21 00 30 */	addi r1, r1, 0x30
/* 802289AC 0022590C  4E 80 00 20 */	blr 

.global sub_802289b0
sub_802289b0:
/* 802289B0 00225910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802289B4 00225914  7C 08 02 A6 */	mflr r0
/* 802289B8 00225918  90 01 00 14 */	stw r0, 0x14(r1)
/* 802289BC 0022591C  38 C1 00 08 */	addi r6, r1, 8
/* 802289C0 00225920  A0 03 07 72 */	lhz r0, 0x772(r3)
/* 802289C4 00225924  B0 01 00 08 */	sth r0, 8(r1)
/* 802289C8 00225928  4B FF FF 59 */	bl sub_80228920
/* 802289CC 0022592C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802289D0 00225930  7C 08 03 A6 */	mtlr r0
/* 802289D4 00225934  38 21 00 10 */	addi r1, r1, 0x10
/* 802289D8 00225938  4E 80 00 20 */	blr 

.global sub_802289dc
sub_802289dc:
/* 802289DC 0022593C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802289E0 00225940  7C 08 02 A6 */	mflr r0
/* 802289E4 00225944  90 01 00 84 */	stw r0, 0x84(r1)
/* 802289E8 00225948  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 802289EC 0022594C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 802289F0 00225950  7C DE 33 78 */	mr r30, r6
/* 802289F4 00225954  93 A1 00 74 */	stw r29, 0x74(r1)
/* 802289F8 00225958  7C BD 2B 78 */	mr r29, r5
/* 802289FC 0022595C  93 81 00 70 */	stw r28, 0x70(r1)
/* 80228A00 00225960  7C 7C 1B 78 */	mr r28, r3
/* 80228A04 00225964  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 80228A08 00225968  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80228A0C 0022596C  7C 05 00 40 */	cmplw r5, r0
/* 80228A10 00225970  41 82 00 7C */	beq lbl_80228A8C
/* 80228A14 00225974  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80228A18 00225978  7C 83 23 78 */	mr r3, r4
/* 80228A1C 0022597C  38 81 00 08 */	addi r4, r1, 8
/* 80228A20 00225980  B0 01 00 08 */	sth r0, 8(r1)
/* 80228A24 00225984  4B E2 3B 51 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80228A28 00225988  7C 7F 1B 79 */	or. r31, r3, r3
/* 80228A2C 0022598C  41 82 00 58 */	beq lbl_80228A84
/* 80228A30 00225990  7F 84 E3 78 */	mr r4, r28
/* 80228A34 00225994  7F C5 F3 78 */	mr r5, r30
/* 80228A38 00225998  38 61 00 0C */	addi r3, r1, 0xc
/* 80228A3C 0022599C  4B E4 FF 3D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80228A40 002259A0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80228A44 002259A4  38 81 00 0C */	addi r4, r1, 0xc
/* 80228A48 002259A8  48 0E A1 2D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80228A4C 002259AC  38 7F 00 34 */	addi r3, r31, 0x34
/* 80228A50 002259B0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80228A54 002259B4  48 0E A0 ED */	bl __as__12CTransform4fFRC12CTransform4f
/* 80228A58 002259B8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80228A5C 002259BC  38 60 00 01 */	li r3, 1
/* 80228A60 002259C0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80228A64 002259C4  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80228A68 002259C8  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80228A6C 002259CC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 80228A70 002259D0  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80228A74 002259D4  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 80228A78 002259D8  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 80228A7C 002259DC  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 80228A80 002259E0  48 00 00 0C */	b lbl_80228A8C
lbl_80228A84:
/* 80228A84 002259E4  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 80228A88 002259E8  B0 1D 00 00 */	sth r0, 0(r29)
lbl_80228A8C:
/* 80228A8C 002259EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80228A90 002259F0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80228A94 002259F4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80228A98 002259F8  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 80228A9C 002259FC  83 81 00 70 */	lwz r28, 0x70(r1)
/* 80228AA0 00225A00  7C 08 03 A6 */	mtlr r0
/* 80228AA4 00225A04  38 21 00 80 */	addi r1, r1, 0x80
/* 80228AA8 00225A08  4E 80 00 20 */	blr 

.global sub_80228aac
sub_80228aac:
/* 80228AAC 00225A0C  94 21 FD F0 */	stwu r1, -0x210(r1)
/* 80228AB0 00225A10  7C 08 02 A6 */	mflr r0
/* 80228AB4 00225A14  90 01 02 14 */	stw r0, 0x214(r1)
/* 80228AB8 00225A18  BF 41 01 F8 */	stmw r26, 0x1f8(r1)
/* 80228ABC 00225A1C  7C 7D 1B 78 */	mr r29, r3
/* 80228AC0 00225A20  7C 9E 23 78 */	mr r30, r4
/* 80228AC4 00225A24  7C BF 2B 78 */	mr r31, r5
/* 80228AC8 00225A28  80 C3 06 68 */	lwz r6, 0x668(r3)
/* 80228ACC 00225A2C  3C 06 00 01 */	addis r0, r6, 1
/* 80228AD0 00225A30  28 00 FF FF */	cmplwi r0, 0xffff
/* 80228AD4 00225A34  41 82 02 B8 */	beq lbl_80228D8C
/* 80228AD8 00225A38  80 BD 00 64 */	lwz r5, 0x64(r29)
/* 80228ADC 00225A3C  38 00 00 01 */	li r0, 1
/* 80228AE0 00225A40  80 FD 06 70 */	lwz r7, 0x670(r29)
/* 80228AE4 00225A44  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80228AE8 00225A48  C0 45 00 00 */	lfs f2, 0(r5)
/* 80228AEC 00225A4C  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80228AF0 00225A50  C0 25 00 04 */	lfs f1, 4(r5)
/* 80228AF4 00225A54  C0 05 00 08 */	lfs f0, 8(r5)
/* 80228AF8 00225A58  80 BD 06 6C */	lwz r5, 0x66c(r29)
/* 80228AFC 00225A5C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80228B00 00225A60  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80228B04 00225A64  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80228B08 00225A68  90 C1 00 C0 */	stw r6, 0xc0(r1)
/* 80228B0C 00225A6C  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 80228B10 00225A70  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 80228B14 00225A74  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80228B18 00225A78  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80228B1C 00225A7C  98 01 00 D4 */	stb r0, 0xd4(r1)
/* 80228B20 00225A80  90 E1 00 D8 */	stw r7, 0xd8(r1)
/* 80228B24 00225A84  4B EE E0 31 */	bl __ct__10CModelDataFRC8CAnimRes
/* 80228B28 00225A88  81 5D 06 84 */	lwz r10, 0x684(r29)
/* 80228B2C 00225A8C  38 61 01 48 */	addi r3, r1, 0x148
/* 80228B30 00225A90  81 3D 06 88 */	lwz r9, 0x688(r29)
/* 80228B34 00225A94  38 81 01 0C */	addi r4, r1, 0x10c
/* 80228B38 00225A98  80 FD 06 8C */	lwz r7, 0x68c(r29)
/* 80228B3C 00225A9C  39 01 00 64 */	addi r8, r1, 0x64
/* 80228B40 00225AA0  80 DD 06 90 */	lwz r6, 0x690(r29)
/* 80228B44 00225AA4  80 BD 06 94 */	lwz r5, 0x694(r29)
/* 80228B48 00225AA8  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 80228B4C 00225AAC  91 41 00 A8 */	stw r10, 0xa8(r1)
/* 80228B50 00225AB0  81 5D 06 80 */	lwz r10, 0x680(r29)
/* 80228B54 00225AB4  91 21 00 AC */	stw r9, 0xac(r1)
/* 80228B58 00225AB8  A1 3D 06 CE */	lhz r9, 0x6ce(r29)
/* 80228B5C 00225ABC  90 E1 00 B0 */	stw r7, 0xb0(r1)
/* 80228B60 00225AC0  A0 FD 06 CC */	lhz r7, 0x6cc(r29)
/* 80228B64 00225AC4  90 C1 00 B4 */	stw r6, 0xb4(r1)
/* 80228B68 00225AC8  80 DD 06 C8 */	lwz r6, 0x6c8(r29)
/* 80228B6C 00225ACC  90 A1 00 B8 */	stw r5, 0xb8(r1)
/* 80228B70 00225AD0  81 7D 06 AC */	lwz r11, 0x6ac(r29)
/* 80228B74 00225AD4  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80228B78 00225AD8  81 9D 06 A8 */	lwz r12, 0x6a8(r29)
/* 80228B7C 00225ADC  83 9D 06 A4 */	lwz r28, 0x6a4(r29)
/* 80228B80 00225AE0  83 7D 06 A0 */	lwz r27, 0x6a0(r29)
/* 80228B84 00225AE4  C0 BD 06 B4 */	lfs f5, 0x6b4(r29)
/* 80228B88 00225AE8  C0 9D 06 B0 */	lfs f4, 0x6b0(r29)
/* 80228B8C 00225AEC  88 A1 00 A8 */	lbz r5, 0xa8(r1)
/* 80228B90 00225AF0  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 80228B94 00225AF4  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 80228B98 00225AF8  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80228B9C 00225AFC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80228BA0 00225B00  88 01 00 BC */	lbz r0, 0xbc(r1)
/* 80228BA4 00225B04  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 80228BA8 00225B08  D0 A1 01 10 */	stfs f5, 0x110(r1)
/* 80228BAC 00225B0C  91 41 01 14 */	stw r10, 0x114(r1)
/* 80228BB0 00225B10  98 A1 01 18 */	stb r5, 0x118(r1)
/* 80228BB4 00225B14  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 80228BB8 00225B18  D0 41 01 20 */	stfs f2, 0x120(r1)
/* 80228BBC 00225B1C  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 80228BC0 00225B20  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 80228BC4 00225B24  98 01 01 2C */	stb r0, 0x12c(r1)
/* 80228BC8 00225B28  93 61 01 30 */	stw r27, 0x130(r1)
/* 80228BCC 00225B2C  93 81 01 34 */	stw r28, 0x134(r1)
/* 80228BD0 00225B30  91 81 01 38 */	stw r12, 0x138(r1)
/* 80228BD4 00225B34  91 61 01 3C */	stw r11, 0x13c(r1)
/* 80228BD8 00225B38  90 C1 01 40 */	stw r6, 0x140(r1)
/* 80228BDC 00225B3C  B0 E1 01 44 */	sth r7, 0x144(r1)
/* 80228BE0 00225B40  B1 21 01 46 */	sth r9, 0x146(r1)
/* 80228BE4 00225B44  C0 3D 06 C4 */	lfs f1, 0x6c4(r29)
/* 80228BE8 00225B48  C0 5D 06 C0 */	lfs f2, 0x6c0(r29)
/* 80228BEC 00225B4C  C0 7D 06 BC */	lfs f3, 0x6bc(r29)
/* 80228BF0 00225B50  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 80228BF4 00225B54  91 41 00 A4 */	stw r10, 0xa4(r1)
/* 80228BF8 00225B58  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80228BFC 00225B5C  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 80228C00 00225B60  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80228C04 00225B64  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80228C08 00225B68  80 BD 06 7C */	lwz r5, 0x67c(r29)
/* 80228C0C 00225B6C  80 DD 06 74 */	lwz r6, 0x674(r29)
/* 80228C10 00225B70  A0 FD 06 78 */	lhz r7, 0x678(r29)
/* 80228C14 00225B74  48 00 01 8D */	bl sub_80228da0
/* 80228C18 00225B78  3C 60 80 3D */	lis r3, lbl_803D3310@ha
/* 80228C1C 00225B7C  3B 80 00 00 */	li r28, 0
/* 80228C20 00225B80  38 63 33 10 */	addi r3, r3, lbl_803D3310@l
/* 80228C24 00225B84  3B 40 00 00 */	li r26, 0
/* 80228C28 00225B88  38 83 00 B8 */	addi r4, r3, 0xb8
/* 80228C2C 00225B8C  38 60 04 00 */	li r3, 0x400
/* 80228C30 00225B90  38 A0 00 00 */	li r5, 0
/* 80228C34 00225B94  48 0E CC 39 */	bl __nw__FUlPCcPCc
/* 80228C38 00225B98  7C 7B 1B 79 */	or. r27, r3, r3
/* 80228C3C 00225B9C  41 82 00 D8 */	beq lbl_80228D14
/* 80228C40 00225BA0  A0 DD 00 08 */	lhz r6, 8(r29)
/* 80228C44 00225BA4  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 80228C48 00225BA8  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 80228C4C 00225BAC  C0 02 B5 F4 */	lfs f0, lbl_805AD314@sda21(r2)
/* 80228C50 00225BB0  B0 C1 00 20 */	sth r6, 0x20(r1)
/* 80228C54 00225BB4  38 61 00 74 */	addi r3, r1, 0x74
/* 80228C58 00225BB8  80 0D A3 88 */	lwz r0, lbl_805A8F48@sda21(r13)
/* 80228C5C 00225BBC  38 81 00 38 */	addi r4, r1, 0x38
/* 80228C60 00225BC0  C0 3D 06 9C */	lfs f1, 0x69c(r29)
/* 80228C64 00225BC4  B0 C1 00 1C */	sth r6, 0x1c(r1)
/* 80228C68 00225BC8  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80228C6C 00225BCC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80228C70 00225BD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80228C74 00225BD4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80228C78 00225BD8  80 1D 00 04 */	lwz r0, 4(r29)
/* 80228C7C 00225BDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80228C80 00225BE0  90 01 00 38 */	stw r0, 0x38(r1)
/* 80228C84 00225BE4  4B E2 88 01 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 80228C88 00225BE8  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 80228C8C 00225BEC  38 61 00 48 */	addi r3, r1, 0x48
/* 80228C90 00225BF0  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 80228C94 00225BF4  3B 80 00 01 */	li r28, 1
/* 80228C98 00225BF8  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80228C9C 00225BFC  4B DD C0 1D */	bl string_l__4rstlFPCc
/* 80228CA0 00225C00  A0 1F 00 00 */	lhz r0, 0(r31)
/* 80228CA4 00225C04  38 61 00 DC */	addi r3, r1, 0xdc
/* 80228CA8 00225C08  38 9D 00 34 */	addi r4, r29, 0x34
/* 80228CAC 00225C0C  3B 40 00 01 */	li r26, 1
/* 80228CB0 00225C10  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80228CB4 00225C14  48 0E 9F 8D */	bl GetRotation__12CTransform4fCFv
/* 80228CB8 00225C18  38 61 00 8C */	addi r3, r1, 0x8c
/* 80228CBC 00225C1C  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 80228CC0 00225C20  38 A1 00 DC */	addi r5, r1, 0xdc
/* 80228CC4 00225C24  4B EE CA F1 */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 80228CC8 00225C28  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80228CCC 00225C2C  38 7D 06 00 */	addi r3, r29, 0x600
/* 80228CD0 00225C30  90 01 00 08 */	stw r0, 8(r1)
/* 80228CD4 00225C34  38 C1 00 20 */	addi r6, r1, 0x20
/* 80228CD8 00225C38  38 01 01 48 */	addi r0, r1, 0x148
/* 80228CDC 00225C3C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 80228CE0 00225C40  90 61 00 0C */	stw r3, 0xc(r1)
/* 80228CE4 00225C44  7F 63 DB 78 */	mr r3, r27
/* 80228CE8 00225C48  38 81 00 18 */	addi r4, r1, 0x18
/* 80228CEC 00225C4C  38 A1 00 48 */	addi r5, r1, 0x48
/* 80228CF0 00225C50  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80228CF4 00225C54  38 C1 00 74 */	addi r6, r1, 0x74
/* 80228CF8 00225C58  38 FD 00 34 */	addi r7, r29, 0x34
/* 80228CFC 00225C5C  39 01 01 A0 */	addi r8, r1, 0x1a0
/* 80228D00 00225C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228D04 00225C64  39 21 00 8C */	addi r9, r1, 0x8c
/* 80228D08 00225C68  39 41 00 40 */	addi r10, r1, 0x40
/* 80228D0C 00225C6C  48 00 82 7D */	bl __ct__16CGrenadeLauncherF9TUniqueId
/* 80228D10 00225C70  7C 7B 1B 78 */	mr r27, r3
lbl_80228D14:
/* 80228D14 00225C74  7F 40 07 75 */	extsb. r0, r26
/* 80228D18 00225C78  41 82 00 0C */	beq lbl_80228D24
/* 80228D1C 00225C7C  38 61 00 48 */	addi r3, r1, 0x48
/* 80228D20 00225C80  48 11 4D C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80228D24:
/* 80228D24 00225C84  7F 80 07 75 */	extsb. r0, r28
/* 80228D28 00225C88  41 82 00 44 */	beq lbl_80228D6C
/* 80228D2C 00225C8C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80228D30 00225C90  80 61 00 84 */	lwz r3, 0x84(r1)
/* 80228D34 00225C94  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80228D38 00225C98  90 61 00 28 */	stw r3, 0x28(r1)
/* 80228D3C 00225C9C  7C 64 1B 78 */	mr r4, r3
/* 80228D40 00225CA0  7C 03 02 14 */	add r0, r3, r0
/* 80228D44 00225CA4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80228D48 00225CA8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80228D4C 00225CAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80228D50 00225CB0  48 00 00 08 */	b lbl_80228D58
lbl_80228D54:
/* 80228D54 00225CB4  38 84 00 0C */	addi r4, r4, 0xc
lbl_80228D58:
/* 80228D58 00225CB8  7C 04 00 40 */	cmplw r4, r0
/* 80228D5C 00225CBC  40 82 FF F8 */	bne lbl_80228D54
/* 80228D60 00225CC0  28 03 00 00 */	cmplwi r3, 0
/* 80228D64 00225CC4  41 82 00 08 */	beq lbl_80228D6C
/* 80228D68 00225CC8  48 0E CB C9 */	bl Free__7CMemoryFPCv
lbl_80228D6C:
/* 80228D6C 00225CCC  28 1B 00 00 */	cmplwi r27, 0
/* 80228D70 00225CD0  41 82 00 10 */	beq lbl_80228D80
/* 80228D74 00225CD4  7F C3 F3 78 */	mr r3, r30
/* 80228D78 00225CD8  7F 64 DB 78 */	mr r4, r27
/* 80228D7C 00225CDC  4B E2 3F 79 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_80228D80:
/* 80228D80 00225CE0  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 80228D84 00225CE4  38 80 FF FF */	li r4, -1
/* 80228D88 00225CE8  4B EE DC C5 */	bl __dt__10CModelDataFv
lbl_80228D8C:
/* 80228D8C 00225CEC  BB 41 01 F8 */	lmw r26, 0x1f8(r1)
/* 80228D90 00225CF0  80 01 02 14 */	lwz r0, 0x214(r1)
/* 80228D94 00225CF4  7C 08 03 A6 */	mtlr r0
/* 80228D98 00225CF8  38 21 02 10 */	addi r1, r1, 0x210
/* 80228D9C 00225CFC  4E 80 00 20 */	blr 

.global sub_80228da0
sub_80228da0:
/* 80228DA0 00225D00  C0 04 00 00 */	lfs f0, 0(r4)
/* 80228DA4 00225D04  D0 03 00 00 */	stfs f0, 0(r3)
/* 80228DA8 00225D08  C0 04 00 04 */	lfs f0, 4(r4)
/* 80228DAC 00225D0C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80228DB0 00225D10  80 04 00 08 */	lwz r0, 8(r4)
/* 80228DB4 00225D14  90 03 00 08 */	stw r0, 8(r3)
/* 80228DB8 00225D18  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80228DBC 00225D1C  98 03 00 0C */	stb r0, 0xc(r3)
/* 80228DC0 00225D20  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80228DC4 00225D24  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80228DC8 00225D28  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80228DCC 00225D2C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 80228DD0 00225D30  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80228DD4 00225D34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80228DD8 00225D38  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80228DDC 00225D3C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80228DE0 00225D40  88 04 00 20 */	lbz r0, 0x20(r4)
/* 80228DE4 00225D44  98 03 00 20 */	stb r0, 0x20(r3)
/* 80228DE8 00225D48  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80228DEC 00225D4C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80228DF0 00225D50  80 04 00 28 */	lwz r0, 0x28(r4)
/* 80228DF4 00225D54  90 03 00 28 */	stw r0, 0x28(r3)
/* 80228DF8 00225D58  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80228DFC 00225D5C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80228E00 00225D60  80 04 00 30 */	lwz r0, 0x30(r4)
/* 80228E04 00225D64  90 03 00 30 */	stw r0, 0x30(r3)
/* 80228E08 00225D68  80 04 00 34 */	lwz r0, 0x34(r4)
/* 80228E0C 00225D6C  90 03 00 34 */	stw r0, 0x34(r3)
/* 80228E10 00225D70  A0 04 00 38 */	lhz r0, 0x38(r4)
/* 80228E14 00225D74  B0 03 00 38 */	sth r0, 0x38(r3)
/* 80228E18 00225D78  A0 04 00 3A */	lhz r0, 0x3a(r4)
/* 80228E1C 00225D7C  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 80228E20 00225D80  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80228E24 00225D84  90 C3 00 40 */	stw r6, 0x40(r3)
/* 80228E28 00225D88  B0 E3 00 44 */	sth r7, 0x44(r3)
/* 80228E2C 00225D8C  C0 08 00 00 */	lfs f0, 0(r8)
/* 80228E30 00225D90  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 80228E34 00225D94  C0 08 00 04 */	lfs f0, 4(r8)
/* 80228E38 00225D98  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 80228E3C 00225D9C  C0 08 00 08 */	lfs f0, 8(r8)
/* 80228E40 00225DA0  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 80228E44 00225DA4  C0 08 00 0C */	lfs f0, 0xc(r8)
/* 80228E48 00225DA8  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 80228E4C 00225DAC  4E 80 00 20 */	blr 

.global sub_80228e50
sub_80228e50:
/* 80228E50 00225DB0  C0 43 07 B8 */	lfs f2, 0x7b8(r3)
/* 80228E54 00225DB4  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80228E58 00225DB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80228E5C 00225DBC  40 81 00 0C */	ble lbl_80228E68
/* 80228E60 00225DC0  EC 02 08 28 */	fsubs f0, f2, f1
/* 80228E64 00225DC4  D0 03 07 B8 */	stfs f0, 0x7b8(r3)
lbl_80228E68:
/* 80228E68 00225DC8  C0 43 07 AC */	lfs f2, 0x7ac(r3)
/* 80228E6C 00225DCC  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80228E70 00225DD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80228E74 00225DD4  4C 81 00 20 */	blelr 
/* 80228E78 00225DD8  EC 02 08 28 */	fsubs f0, f2, f1
/* 80228E7C 00225DDC  D0 03 07 AC */	stfs f0, 0x7ac(r3)
/* 80228E80 00225DE0  4E 80 00 20 */	blr 

.global sub_80228e84
sub_80228e84:
/* 80228E84 00225DE4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80228E88 00225DE8  7C 08 02 A6 */	mflr r0
/* 80228E8C 00225DEC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80228E90 00225DF0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80228E94 00225DF4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80228E98 00225DF8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80228E9C 00225DFC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80228EA0 00225E00  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80228EA4 00225E04  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80228EA8 00225E08  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80228EAC 00225E0C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80228EB0 00225E10  81 83 00 00 */	lwz r12, 0(r3)
/* 80228EB4 00225E14  7C 7C 1B 78 */	mr r28, r3
/* 80228EB8 00225E18  7C 9D 23 78 */	mr r29, r4
/* 80228EBC 00225E1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228EC0 00225E20  7D 89 03 A6 */	mtctr r12
/* 80228EC4 00225E24  4E 80 04 21 */	bctrl 
/* 80228EC8 00225E28  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80228ECC 00225E2C  7F 83 E3 78 */	mr r3, r28
/* 80228ED0 00225E30  81 9C 00 00 */	lwz r12, 0(r28)
/* 80228ED4 00225E34  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 80228ED8 00225E38  7D 89 03 A6 */	mtctr r12
/* 80228EDC 00225E3C  4E 80 04 21 */	bctrl 
/* 80228EE0 00225E40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80228EE4 00225E44  41 82 00 B4 */	beq lbl_80228F98
/* 80228EE8 00225E48  A0 1C 07 70 */	lhz r0, 0x770(r28)
/* 80228EEC 00225E4C  7F A3 EB 78 */	mr r3, r29
/* 80228EF0 00225E50  38 81 00 08 */	addi r4, r1, 8
/* 80228EF4 00225E54  B0 01 00 08 */	sth r0, 8(r1)
/* 80228EF8 00225E58  4B E2 36 7D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80228EFC 00225E5C  7C 64 1B 78 */	mr r4, r3
/* 80228F00 00225E60  38 61 00 0C */	addi r3, r1, 0xc
/* 80228F04 00225E64  4B E8 64 49 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80228F08 00225E68  83 C3 00 04 */	lwz r30, 4(r3)
/* 80228F0C 00225E6C  28 1E 00 00 */	cmplwi r30, 0
/* 80228F10 00225E70  41 82 00 88 */	beq lbl_80228F98
/* 80228F14 00225E74  7F C3 F3 78 */	mr r3, r30
/* 80228F18 00225E78  7F A4 EB 78 */	mr r4, r29
/* 80228F1C 00225E7C  81 9E 00 00 */	lwz r12, 0(r30)
/* 80228F20 00225E80  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228F24 00225E84  7D 89 03 A6 */	mtctr r12
/* 80228F28 00225E88  4E 80 04 21 */	bctrl 
/* 80228F2C 00225E8C  C3 C3 00 00 */	lfs f30, 0(r3)
/* 80228F30 00225E90  7F 83 E3 78 */	mr r3, r28
/* 80228F34 00225E94  81 9C 00 00 */	lwz r12, 0(r28)
/* 80228F38 00225E98  7F A4 EB 78 */	mr r4, r29
/* 80228F3C 00225E9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228F40 00225EA0  7D 89 03 A6 */	mtctr r12
/* 80228F44 00225EA4  4E 80 04 21 */	bctrl 
/* 80228F48 00225EA8  EC 1F F0 28 */	fsubs f0, f31, f30
/* 80228F4C 00225EAC  7F A4 EB 78 */	mr r4, r29
/* 80228F50 00225EB0  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80228F54 00225EB4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80228F58 00225EB8  7F 83 E3 78 */	mr r3, r28
/* 80228F5C 00225EBC  81 9C 00 00 */	lwz r12, 0(r28)
/* 80228F60 00225EC0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228F64 00225EC4  7D 89 03 A6 */	mtctr r12
/* 80228F68 00225EC8  4E 80 04 21 */	bctrl 
/* 80228F6C 00225ECC  7C 7F 1B 78 */	mr r31, r3
/* 80228F70 00225ED0  7F C3 F3 78 */	mr r3, r30
/* 80228F74 00225ED4  81 9E 00 00 */	lwz r12, 0(r30)
/* 80228F78 00225ED8  7F A4 EB 78 */	mr r4, r29
/* 80228F7C 00225EDC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228F80 00225EE0  7D 89 03 A6 */	mtctr r12
/* 80228F84 00225EE4  4E 80 04 21 */	bctrl 
/* 80228F88 00225EE8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80228F8C 00225EEC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80228F90 00225EF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80228F94 00225EF4  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80228F98:
/* 80228F98 00225EF8  7F 83 E3 78 */	mr r3, r28
/* 80228F9C 00225EFC  7F A4 EB 78 */	mr r4, r29
/* 80228FA0 00225F00  81 9C 00 00 */	lwz r12, 0(r28)
/* 80228FA4 00225F04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80228FA8 00225F08  7D 89 03 A6 */	mtctr r12
/* 80228FAC 00225F0C  4E 80 04 21 */	bctrl 
/* 80228FB0 00225F10  C0 23 00 00 */	lfs f1, 0(r3)
/* 80228FB4 00225F14  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 80228FB8 00225F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80228FBC 00225F1C  4C 40 13 82 */	cror 2, 0, 2
/* 80228FC0 00225F20  40 82 00 3C */	bne lbl_80228FFC
/* 80228FC4 00225F24  81 9C 00 00 */	lwz r12, 0(r28)
/* 80228FC8 00225F28  3C 80 80 5A */	lis r4, skZero3f@ha
/* 80228FCC 00225F2C  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 80228FD0 00225F30  7F 83 E3 78 */	mr r3, r28
/* 80228FD4 00225F34  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80228FD8 00225F38  7F A4 EB 78 */	mr r4, r29
/* 80228FDC 00225F3C  38 C0 00 14 */	li r6, 0x14
/* 80228FE0 00225F40  7D 89 03 A6 */	mtctr r12
/* 80228FE4 00225F44  4E 80 04 21 */	bctrl 
/* 80228FE8 00225F48  7F 83 E3 78 */	mr r3, r28
/* 80228FEC 00225F4C  7F A6 EB 78 */	mr r6, r29
/* 80228FF0 00225F50  38 80 00 29 */	li r4, 0x29
/* 80228FF4 00225F54  38 A0 00 28 */	li r5, 0x28
/* 80228FF8 00225F58  4B E2 AE DD */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_80228FFC:
/* 80228FFC 00225F5C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 80229000 00225F60  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80229004 00225F64  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 80229008 00225F68  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8022900C 00225F6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80229010 00225F70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80229014 00225F74  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80229018 00225F78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022901C 00225F7C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80229020 00225F80  7C 08 03 A6 */	mtlr r0
/* 80229024 00225F84  38 21 00 50 */	addi r1, r1, 0x50
/* 80229028 00225F88  4E 80 00 20 */	blr 

.global sub_8022902c
sub_8022902c:
/* 8022902C 00225F8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80229030 00225F90  7C 08 02 A6 */	mflr r0
/* 80229034 00225F94  90 01 00 54 */	stw r0, 0x54(r1)
/* 80229038 00225F98  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8022903C 00225F9C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 80229040 00225FA0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80229044 00225FA4  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 80229048 00225FA8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022904C 00225FAC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80229050 00225FB0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80229054 00225FB4  93 81 00 20 */	stw r28, 0x20(r1)
/* 80229058 00225FB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022905C 00225FBC  7C 7C 1B 78 */	mr r28, r3
/* 80229060 00225FC0  7C 9D 23 78 */	mr r29, r4
/* 80229064 00225FC4  7C BE 2B 78 */	mr r30, r5
/* 80229068 00225FC8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8022906C 00225FCC  7D 89 03 A6 */	mtctr r12
/* 80229070 00225FD0  4E 80 04 21 */	bctrl 
/* 80229074 00225FD4  A0 9E 00 00 */	lhz r4, 0(r30)
/* 80229078 00225FD8  7C 7F 1B 78 */	mr r31, r3
/* 8022907C 00225FDC  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 80229080 00225FE0  7C 04 00 40 */	cmplw r4, r0
/* 80229084 00225FE4  41 82 00 60 */	beq lbl_802290E4
/* 80229088 00225FE8  B0 81 00 08 */	sth r4, 8(r1)
/* 8022908C 00225FEC  7F A3 EB 78 */	mr r3, r29
/* 80229090 00225FF0  38 81 00 08 */	addi r4, r1, 8
/* 80229094 00225FF4  4B E2 34 E1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80229098 00225FF8  7C 64 1B 78 */	mr r4, r3
/* 8022909C 00225FFC  38 61 00 0C */	addi r3, r1, 0xc
/* 802290A0 00226000  4B E8 62 AD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 802290A4 00226004  83 C3 00 04 */	lwz r30, 4(r3)
/* 802290A8 00226008  28 1E 00 00 */	cmplwi r30, 0
/* 802290AC 0022600C  41 82 00 38 */	beq lbl_802290E4
/* 802290B0 00226010  7F C3 F3 78 */	mr r3, r30
/* 802290B4 00226014  7F A4 EB 78 */	mr r4, r29
/* 802290B8 00226018  81 9E 00 00 */	lwz r12, 0(r30)
/* 802290BC 0022601C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 802290C0 00226020  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802290C4 00226024  C3 DC 06 9C */	lfs f30, 0x69c(r28)
/* 802290C8 00226028  7D 89 03 A6 */	mtctr r12
/* 802290CC 0022602C  4E 80 04 21 */	bctrl 
/* 802290D0 00226030  D3 C3 00 00 */	stfs f30, 0(r3)
/* 802290D4 00226034  38 9C 05 6C */	addi r4, r28, 0x56c
/* 802290D8 00226038  D3 E3 00 04 */	stfs f31, 4(r3)
/* 802290DC 0022603C  7F C3 F3 78 */	mr r3, r30
/* 802290E0 00226040  4B F7 FA B9 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_802290E4:
/* 802290E4 00226044  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 802290E8 00226048  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802290EC 0022604C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 802290F0 00226050  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802290F4 00226054  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802290F8 00226058  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802290FC 0022605C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80229100 00226060  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80229104 00226064  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80229108 00226068  7C 08 03 A6 */	mtlr r0
/* 8022910C 0022606C  38 21 00 50 */	addi r1, r1, 0x50
/* 80229110 00226070  4E 80 00 20 */	blr 

.global sub_80229114
sub_80229114:
/* 80229114 00226074  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80229118 00226078  7C 08 02 A6 */	mflr r0
/* 8022911C 0022607C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80229120 00226080  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80229124 00226084  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80229128 00226088  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8022912C 0022608C  7C 9D 23 78 */	mr r29, r4
/* 80229130 00226090  93 81 00 20 */	stw r28, 0x20(r1)
/* 80229134 00226094  7C 7C 1B 78 */	mr r28, r3
/* 80229138 00226098  81 83 00 00 */	lwz r12, 0(r3)
/* 8022913C 0022609C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80229140 002260A0  7D 89 03 A6 */	mtctr r12
/* 80229144 002260A4  4E 80 04 21 */	bctrl 
/* 80229148 002260A8  7C 7F 1B 78 */	mr r31, r3
/* 8022914C 002260AC  7F 83 E3 78 */	mr r3, r28
/* 80229150 002260B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80229154 002260B4  D0 1C 07 B4 */	stfs f0, 0x7b4(r28)
/* 80229158 002260B8  81 9C 00 00 */	lwz r12, 0(r28)
/* 8022915C 002260BC  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 80229160 002260C0  7D 89 03 A6 */	mtctr r12
/* 80229164 002260C4  4E 80 04 21 */	bctrl 
/* 80229168 002260C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022916C 002260CC  41 82 00 64 */	beq lbl_802291D0
/* 80229170 002260D0  A0 1C 07 70 */	lhz r0, 0x770(r28)
/* 80229174 002260D4  7F A3 EB 78 */	mr r3, r29
/* 80229178 002260D8  38 81 00 0C */	addi r4, r1, 0xc
/* 8022917C 002260DC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80229180 002260E0  4B E2 33 F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80229184 002260E4  7C 64 1B 78 */	mr r4, r3
/* 80229188 002260E8  38 61 00 10 */	addi r3, r1, 0x10
/* 8022918C 002260EC  4B E8 61 C1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80229190 002260F0  83 C3 00 04 */	lwz r30, 4(r3)
/* 80229194 002260F4  28 1E 00 00 */	cmplwi r30, 0
/* 80229198 002260F8  41 82 00 38 */	beq lbl_802291D0
/* 8022919C 002260FC  7F C3 F3 78 */	mr r3, r30
/* 802291A0 00226100  7F A4 EB 78 */	mr r4, r29
/* 802291A4 00226104  81 9E 00 00 */	lwz r12, 0(r30)
/* 802291A8 00226108  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802291AC 0022610C  7D 89 03 A6 */	mtctr r12
/* 802291B0 00226110  4E 80 04 21 */	bctrl 
/* 802291B4 00226114  C0 1F 00 00 */	lfs f0, 0(r31)
/* 802291B8 00226118  38 9C 05 6C */	addi r4, r28, 0x56c
/* 802291BC 0022611C  D0 03 00 00 */	stfs f0, 0(r3)
/* 802291C0 00226120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802291C4 00226124  D0 03 00 04 */	stfs f0, 4(r3)
/* 802291C8 00226128  7F C3 F3 78 */	mr r3, r30
/* 802291CC 0022612C  4B F7 F9 CD */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_802291D0:
/* 802291D0 00226130  A0 1C 07 72 */	lhz r0, 0x772(r28)
/* 802291D4 00226134  7F 83 E3 78 */	mr r3, r28
/* 802291D8 00226138  7F A4 EB 78 */	mr r4, r29
/* 802291DC 0022613C  38 A1 00 08 */	addi r5, r1, 8
/* 802291E0 00226140  B0 01 00 08 */	sth r0, 8(r1)
/* 802291E4 00226144  4B FF FE 49 */	bl sub_8022902c
/* 802291E8 00226148  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802291EC 0022614C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802291F0 00226150  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802291F4 00226154  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802291F8 00226158  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802291FC 0022615C  7C 08 03 A6 */	mtlr r0
/* 80229200 00226160  38 21 00 30 */	addi r1, r1, 0x30
/* 80229204 00226164  4E 80 00 20 */	blr 

.global sub_80229208
sub_80229208:
/* 80229208 00226168  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8022920C 0022616C  38 60 00 00 */	li r3, 0
/* 80229210 00226170  80 04 02 EC */	lwz r0, 0x2ec(r4)
/* 80229214 00226174  2C 00 00 00 */	cmpwi r0, 0
/* 80229218 00226178  4C 82 00 20 */	bnelr 
/* 8022921C 0022617C  80 84 02 B8 */	lwz r4, 0x2b8(r4)
/* 80229220 00226180  38 00 00 01 */	li r0, 1
/* 80229224 00226184  2C 04 00 05 */	cmpwi r4, 5
/* 80229228 00226188  41 82 00 10 */	beq lbl_80229238
/* 8022922C 0022618C  2C 04 00 08 */	cmpwi r4, 8
/* 80229230 00226190  41 82 00 08 */	beq lbl_80229238
/* 80229234 00226194  7C 60 1B 78 */	mr r0, r3
lbl_80229238:
/* 80229238 00226198  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022923C 0022619C  4D 82 00 20 */	beqlr 
/* 80229240 002261A0  38 60 00 01 */	li r3, 1
/* 80229244 002261A4  4E 80 00 20 */	blr 

.global sub_80229248
sub_80229248:
/* 80229248 002261A8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8022924C 002261AC  7C 08 02 A6 */	mflr r0
/* 80229250 002261B0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80229254 002261B4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80229258 002261B8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8022925C 002261BC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80229260 002261C0  7C 7F 1B 78 */	mr r31, r3
/* 80229264 002261C4  81 83 00 00 */	lwz r12, 0(r3)
/* 80229268 002261C8  80 83 00 64 */	lwz r4, 0x64(r3)
/* 8022926C 002261CC  C0 02 B5 F8 */	lfs f0, lbl_805AD318@sda21(r2)
/* 80229270 002261D0  C0 44 00 04 */	lfs f2, 4(r4)
/* 80229274 002261D4  C0 64 00 00 */	lfs f3, 0(r4)
/* 80229278 002261D8  C0 24 00 08 */	lfs f1, 8(r4)
/* 8022927C 002261DC  EF E0 00 B2 */	fmuls f31, f0, f2
/* 80229280 002261E0  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 80229284 002261E4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80229288 002261E8  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8022928C 002261EC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80229290 002261F0  7D 89 03 A6 */	mtctr r12
/* 80229294 002261F4  4E 80 04 21 */	bctrl 
/* 80229298 002261F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022929C 002261FC  41 82 00 0C */	beq lbl_802292A8
/* 802292A0 00226200  C0 22 B5 FC */	lfs f1, lbl_805AD31C@sda21(r2)
/* 802292A4 00226204  48 00 00 08 */	b lbl_802292AC
lbl_802292A8:
/* 802292A8 00226208  C0 22 B5 CC */	lfs f1, lbl_805AD2EC@sda21(r2)
lbl_802292AC:
/* 802292AC 0022620C  FC 40 F8 50 */	fneg f2, f31
/* 802292B0 00226210  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 802292B4 00226214  EC 21 07 F2 */	fmuls f1, f1, f31
/* 802292B8 00226218  D3 E1 00 08 */	stfs f31, 8(r1)
/* 802292BC 0022621C  38 61 00 2C */	addi r3, r1, 0x2c
/* 802292C0 00226220  38 81 00 14 */	addi r4, r1, 0x14
/* 802292C4 00226224  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 802292C8 00226228  38 A1 00 08 */	addi r5, r1, 8
/* 802292CC 0022622C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 802292D0 00226230  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 802292D4 00226234  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802292D8 00226238  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802292DC 0022623C  48 10 F2 2D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802292E0 00226240  7F E3 FB 78 */	mr r3, r31
/* 802292E4 00226244  38 81 00 2C */	addi r4, r1, 0x2c
/* 802292E8 00226248  4B EF 13 71 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 802292EC 0022624C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 802292F0 00226250  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802292F4 00226254  C0 02 B5 C8 */	lfs f0, lbl_805AD2E8@sda21(r2)
/* 802292F8 00226258  90 7F 07 48 */	stw r3, 0x748(r31)
/* 802292FC 0022625C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80229300 00226260  90 1F 07 4C */	stw r0, 0x74c(r31)
/* 80229304 00226264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80229308 00226268  90 1F 07 50 */	stw r0, 0x750(r31)
/* 8022930C 0022626C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80229310 00226270  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80229314 00226274  90 7F 07 54 */	stw r3, 0x754(r31)
/* 80229318 00226278  90 1F 07 58 */	stw r0, 0x758(r31)
/* 8022931C 0022627C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80229320 00226280  90 1F 07 5C */	stw r0, 0x75c(r31)
/* 80229324 00226284  D3 FF 08 A4 */	stfs f31, 0x8a4(r31)
/* 80229328 00226288  D0 1F 08 A0 */	stfs f0, 0x8a0(r31)
/* 8022932C 0022628C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80229330 00226290  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80229334 00226294  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80229338 00226298  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8022933C 0022629C  7C 08 03 A6 */	mtlr r0
/* 80229340 002262A0  38 21 00 60 */	addi r1, r1, 0x60
/* 80229344 002262A4  4E 80 00 20 */	blr 

.global sub_80229348
sub_80229348:
/* 80229348 002262A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022934C 002262AC  7C 08 02 A6 */	mflr r0
/* 80229350 002262B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80229354 002262B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80229358 002262B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8022935C 002262BC  7C DE 33 78 */	mr r30, r6
/* 80229360 002262C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80229364 002262C4  7C BD 2B 78 */	mr r29, r5
/* 80229368 002262C8  3B FD 00 04 */	addi r31, r29, 4
/* 8022936C 002262CC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80229370 002262D0  7C 9C 23 78 */	mr r28, r4
/* 80229374 002262D4  48 00 00 4C */	b lbl_802293C0
lbl_80229378:
/* 80229378 002262D8  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8022937C 002262DC  7F 83 E3 78 */	mr r3, r28
/* 80229380 002262E0  38 81 00 08 */	addi r4, r1, 8
/* 80229384 002262E4  B0 01 00 08 */	sth r0, 8(r1)
/* 80229388 002262E8  4B E2 31 ED */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022938C 002262EC  7C 64 1B 78 */	mr r4, r3
/* 80229390 002262F0  38 61 00 0C */	addi r3, r1, 0xc
/* 80229394 002262F4  4B E8 5F B9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80229398 002262F8  80 63 00 04 */	lwz r3, 4(r3)
/* 8022939C 002262FC  28 03 00 00 */	cmplwi r3, 0
/* 802293A0 00226300  41 82 00 1C */	beq lbl_802293BC
/* 802293A4 00226304  C0 1E 00 00 */	lfs f0, 0(r30)
/* 802293A8 00226308  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 802293AC 0022630C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 802293B0 00226310  D0 03 03 08 */	stfs f0, 0x308(r3)
/* 802293B4 00226314  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802293B8 00226318  D0 03 03 0C */	stfs f0, 0x30c(r3)
lbl_802293BC:
/* 802293BC 0022631C  3B FF 00 02 */	addi r31, r31, 2
lbl_802293C0:
/* 802293C0 00226320  80 1D 00 00 */	lwz r0, 0(r29)
/* 802293C4 00226324  54 00 08 3C */	slwi r0, r0, 1
/* 802293C8 00226328  7C 7D 02 14 */	add r3, r29, r0
/* 802293CC 0022632C  38 03 00 04 */	addi r0, r3, 4
/* 802293D0 00226330  7C 1F 00 40 */	cmplw r31, r0
/* 802293D4 00226334  40 82 FF A4 */	bne lbl_80229378
/* 802293D8 00226338  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802293DC 0022633C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802293E0 00226340  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802293E4 00226344  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802293E8 00226348  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802293EC 0022634C  7C 08 03 A6 */	mtlr r0
/* 802293F0 00226350  38 21 00 30 */	addi r1, r1, 0x30
/* 802293F4 00226354  4E 80 00 20 */	blr 

.global sub_802293f8
sub_802293f8:
/* 802293F8 00226358  80 05 00 00 */	lwz r0, 0(r5)
/* 802293FC 0022635C  38 C5 00 04 */	addi r6, r5, 4
/* 80229400 00226360  54 00 08 3C */	slwi r0, r0, 1
/* 80229404 00226364  7C A5 02 14 */	add r5, r5, r0
/* 80229408 00226368  38 A5 00 04 */	addi r5, r5, 4
/* 8022940C 0022636C  48 00 00 20 */	b lbl_8022942C
lbl_80229410:
/* 80229410 00226370  A0 66 00 00 */	lhz r3, 0(r6)
/* 80229414 00226374  A0 04 00 00 */	lhz r0, 0(r4)
/* 80229418 00226378  7C 03 00 40 */	cmplw r3, r0
/* 8022941C 0022637C  40 82 00 0C */	bne lbl_80229428
/* 80229420 00226380  38 60 00 01 */	li r3, 1
/* 80229424 00226384  4E 80 00 20 */	blr 
lbl_80229428:
/* 80229428 00226388  38 C6 00 02 */	addi r6, r6, 2
lbl_8022942C:
/* 8022942C 0022638C  7C 06 28 40 */	cmplw r6, r5
/* 80229430 00226390  40 82 FF E0 */	bne lbl_80229410
/* 80229434 00226394  38 60 00 00 */	li r3, 0
/* 80229438 00226398  4E 80 00 20 */	blr 

.global sub_8022943c
sub_8022943c:
/* 8022943C 0022639C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80229440 002263A0  7C 08 02 A6 */	mflr r0
/* 80229444 002263A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80229448 002263A8  38 61 00 18 */	addi r3, r1, 0x18
/* 8022944C 002263AC  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 80229450 002263B0  7C 9B 23 78 */	mr r27, r4
/* 80229454 002263B4  7C DD 33 78 */	mr r29, r6
/* 80229458 002263B8  7C FC 3B 78 */	mr r28, r7
/* 8022945C 002263BC  7C A4 2B 78 */	mr r4, r5
/* 80229460 002263C0  4B DD B8 59 */	bl string_l__4rstlFPCc
/* 80229464 002263C4  7F 63 DB 78 */	mr r3, r27
/* 80229468 002263C8  38 81 00 18 */	addi r4, r1, 0x18
/* 8022946C 002263CC  4B E2 91 75 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 80229470 002263D0  7C 7F 1B 78 */	mr r31, r3
/* 80229474 002263D4  38 61 00 18 */	addi r3, r1, 0x18
/* 80229478 002263D8  48 11 46 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8022947C 002263DC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80229480 002263E0  41 82 00 0C */	beq lbl_8022948C
/* 80229484 002263E4  38 60 00 01 */	li r3, 1
/* 80229488 002263E8  48 00 00 58 */	b lbl_802294E0
lbl_8022948C:
/* 8022948C 002263EC  7F BE EB 78 */	mr r30, r29
/* 80229490 002263F0  3B A0 00 00 */	li r29, 0
/* 80229494 002263F4  48 00 00 40 */	b lbl_802294D4
lbl_80229498:
/* 80229498 002263F8  80 9E 00 00 */	lwz r4, 0(r30)
/* 8022949C 002263FC  38 61 00 08 */	addi r3, r1, 8
/* 802294A0 00226400  4B DD B8 19 */	bl string_l__4rstlFPCc
/* 802294A4 00226404  7F 63 DB 78 */	mr r3, r27
/* 802294A8 00226408  38 81 00 08 */	addi r4, r1, 8
/* 802294AC 0022640C  4B E2 91 35 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 802294B0 00226410  7C 7F 1B 78 */	mr r31, r3
/* 802294B4 00226414  38 61 00 08 */	addi r3, r1, 8
/* 802294B8 00226418  48 11 46 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802294BC 0022641C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802294C0 00226420  41 82 00 0C */	beq lbl_802294CC
/* 802294C4 00226424  38 60 00 01 */	li r3, 1
/* 802294C8 00226428  48 00 00 18 */	b lbl_802294E0
lbl_802294CC:
/* 802294CC 0022642C  3B DE 00 10 */	addi r30, r30, 0x10
/* 802294D0 00226430  3B BD 00 01 */	addi r29, r29, 1
lbl_802294D4:
/* 802294D4 00226434  7C 1D E0 00 */	cmpw r29, r28
/* 802294D8 00226438  41 80 FF C0 */	blt lbl_80229498
/* 802294DC 0022643C  38 60 00 00 */	li r3, 0
lbl_802294E0:
/* 802294E0 00226440  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 802294E4 00226444  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802294E8 00226448  7C 08 03 A6 */	mtlr r0
/* 802294EC 0022644C  38 21 00 40 */	addi r1, r1, 0x40
/* 802294F0 00226450  4E 80 00 20 */	blr 

.global sub_802294f4
sub_802294f4:
/* 802294F4 00226454  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 802294F8 00226458  7C 08 02 A6 */	mflr r0
/* 802294FC 0022645C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80229500 00226460  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 80229504 00226464  7C B9 2B 78 */	mr r25, r5
/* 80229508 00226468  7C DA 33 78 */	mr r26, r6
/* 8022950C 0022646C  7C 9E 23 78 */	mr r30, r4
/* 80229510 00226470  3B A1 00 60 */	addi r29, r1, 0x60
/* 80229514 00226474  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 80229518 00226478  3B 60 00 00 */	li r27, 0
/* 8022951C 0022647C  80 63 00 64 */	lwz r3, 0x64(r3)
/* 80229520 00226480  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 80229524 00226484  48 00 01 20 */	b lbl_80229644
lbl_80229528:
/* 80229528 00226488  80 9E 00 00 */	lwz r4, 0(r30)
/* 8022952C 0022648C  38 61 00 24 */	addi r3, r1, 0x24
/* 80229530 00226490  4B DD B7 89 */	bl string_l__4rstlFPCc
/* 80229534 00226494  7F E4 FB 78 */	mr r4, r31
/* 80229538 00226498  38 61 00 0C */	addi r3, r1, 0xc
/* 8022953C 0022649C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80229540 002264A0  4B E0 52 F9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80229544 002264A4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80229548 002264A8  38 61 00 24 */	addi r3, r1, 0x24
/* 8022954C 002264AC  98 01 00 10 */	stb r0, 0x10(r1)
/* 80229550 002264B0  48 11 45 91 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80229554 002264B4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80229558 002264B8  28 00 00 FF */	cmplwi r0, 0xff
/* 8022955C 002264BC  41 82 00 E0 */	beq lbl_8022963C
/* 80229560 002264C0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80229564 002264C4  38 61 00 14 */	addi r3, r1, 0x14
/* 80229568 002264C8  4B DD B7 51 */	bl string_l__4rstlFPCc
/* 8022956C 002264CC  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80229570 002264D0  38 61 00 34 */	addi r3, r1, 0x34
/* 80229574 002264D4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80229578 002264D8  38 81 00 08 */	addi r4, r1, 8
/* 8022957C 002264DC  98 01 00 08 */	stb r0, 8(r1)
/* 80229580 002264E0  38 A1 00 14 */	addi r5, r1, 0x14
/* 80229584 002264E4  C0 42 B5 F4 */	lfs f2, lbl_805AD314@sda21(r2)
/* 80229588 002264E8  4B F7 F2 85 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 8022958C 002264EC  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 80229590 002264F0  7F 83 E3 78 */	mr r3, r28
/* 80229594 002264F4  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 80229598 002264F8  7F A4 EB 78 */	mr r4, r29
/* 8022959C 002264FC  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 802295A0 00226500  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 802295A4 00226504  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 802295A8 00226508  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 802295AC 0022650C  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 802295B0 00226510  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 802295B4 00226514  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 802295B8 00226518  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 802295BC 0022651C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 802295C0 00226520  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802295C4 00226524  90 E1 00 78 */	stw r7, 0x78(r1)
/* 802295C8 00226528  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 802295CC 0022652C  98 A1 00 80 */	stb r5, 0x80(r1)
/* 802295D0 00226530  98 01 00 81 */	stb r0, 0x81(r1)
/* 802295D4 00226534  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 802295D8 00226538  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 802295DC 0022653C  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 802295E0 00226540  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 802295E4 00226544  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 802295E8 00226548  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 802295EC 0022654C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 802295F0 00226550  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 802295F4 00226554  48 11 4B 6D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802295F8 00226558  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 802295FC 0022655C  28 1D 00 00 */	cmplwi r29, 0
/* 80229600 00226560  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80229604 00226564  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 80229608 00226568  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8022960C 0022656C  41 82 00 0C */	beq lbl_80229618
/* 80229610 00226570  7F A3 EB 78 */	mr r3, r29
/* 80229614 00226574  48 11 44 CD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80229618:
/* 80229618 00226578  38 61 00 14 */	addi r3, r1, 0x14
/* 8022961C 0022657C  48 11 44 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80229620 00226580  7F 43 D3 78 */	mr r3, r26
/* 80229624 00226584  38 81 00 78 */	addi r4, r1, 0x78
/* 80229628 00226588  4B F2 CC 09 */	bl sub_80156230
/* 8022962C 0022658C  28 1C 00 00 */	cmplwi r28, 0
/* 80229630 00226590  41 82 00 0C */	beq lbl_8022963C
/* 80229634 00226594  7F 83 E3 78 */	mr r3, r28
/* 80229638 00226598  48 11 44 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8022963C:
/* 8022963C 0022659C  3B DE 00 08 */	addi r30, r30, 8
/* 80229640 002265A0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80229644:
/* 80229644 002265A4  7C 1B C8 00 */	cmpw r27, r25
/* 80229648 002265A8  41 80 FE E0 */	blt lbl_80229528
/* 8022964C 002265AC  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 80229650 002265B0  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80229654 002265B4  7C 08 03 A6 */	mtlr r0
/* 80229658 002265B8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8022965C 002265BC  4E 80 00 20 */	blr 

.global sub_80229660
sub_80229660:
/* 80229660 002265C0  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80229664 002265C4  7C 08 02 A6 */	mflr r0
/* 80229668 002265C8  90 01 01 04 */	stw r0, 0x104(r1)
/* 8022966C 002265CC  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 80229670 002265D0  7C B9 2B 78 */	mr r25, r5
/* 80229674 002265D4  7C DA 33 78 */	mr r26, r6
/* 80229678 002265D8  7C 9E 23 78 */	mr r30, r4
/* 8022967C 002265DC  3B A1 00 7C */	addi r29, r1, 0x7c
/* 80229680 002265E0  3B 81 00 C0 */	addi r28, r1, 0xc0
/* 80229684 002265E4  3B 60 00 00 */	li r27, 0
/* 80229688 002265E8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 8022968C 002265EC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 80229690 002265F0  48 00 01 6C */	b lbl_802297FC
lbl_80229694:
/* 80229694 002265F4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80229698 002265F8  38 61 00 40 */	addi r3, r1, 0x40
/* 8022969C 002265FC  4B DD B6 1D */	bl string_l__4rstlFPCc
/* 802296A0 00226600  7F E4 FB 78 */	mr r4, r31
/* 802296A4 00226604  38 61 00 14 */	addi r3, r1, 0x14
/* 802296A8 00226608  38 A1 00 40 */	addi r5, r1, 0x40
/* 802296AC 0022660C  4B E0 51 8D */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802296B0 00226610  88 01 00 14 */	lbz r0, 0x14(r1)
/* 802296B4 00226614  38 61 00 40 */	addi r3, r1, 0x40
/* 802296B8 00226618  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802296BC 0022661C  48 11 44 25 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802296C0 00226620  80 9E 00 04 */	lwz r4, 4(r30)
/* 802296C4 00226624  38 61 00 30 */	addi r3, r1, 0x30
/* 802296C8 00226628  4B DD B5 F1 */	bl string_l__4rstlFPCc
/* 802296CC 0022662C  7F E4 FB 78 */	mr r4, r31
/* 802296D0 00226630  38 61 00 10 */	addi r3, r1, 0x10
/* 802296D4 00226634  38 A1 00 30 */	addi r5, r1, 0x30
/* 802296D8 00226638  4B E0 51 61 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802296DC 0022663C  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802296E0 00226640  38 61 00 30 */	addi r3, r1, 0x30
/* 802296E4 00226644  98 01 00 18 */	stb r0, 0x18(r1)
/* 802296E8 00226648  48 11 43 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802296EC 0022664C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802296F0 00226650  28 00 00 FF */	cmplwi r0, 0xff
/* 802296F4 00226654  41 82 01 00 */	beq lbl_802297F4
/* 802296F8 00226658  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802296FC 0022665C  28 00 00 FF */	cmplwi r0, 0xff
/* 80229700 00226660  41 82 00 F4 */	beq lbl_802297F4
/* 80229704 00226664  80 9E 00 00 */	lwz r4, 0(r30)
/* 80229708 00226668  38 61 00 20 */	addi r3, r1, 0x20
/* 8022970C 0022666C  4B DD B5 AD */	bl string_l__4rstlFPCc
/* 80229710 00226670  88 A1 00 18 */	lbz r5, 0x18(r1)
/* 80229714 00226674  38 61 00 50 */	addi r3, r1, 0x50
/* 80229718 00226678  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 8022971C 0022667C  38 81 00 0C */	addi r4, r1, 0xc
/* 80229720 00226680  98 A1 00 08 */	stb r5, 8(r1)
/* 80229724 00226684  38 A1 00 08 */	addi r5, r1, 8
/* 80229728 00226688  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8022972C 0022668C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80229730 00226690  98 01 00 0C */	stb r0, 0xc(r1)
/* 80229734 00226694  38 C0 00 01 */	li r6, 1
/* 80229738 00226698  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 8022973C 0022669C  C0 62 B5 F4 */	lfs f3, lbl_805AD314@sda21(r2)
/* 80229740 002266A0  4B F7 F0 15 */	bl "SphereSubdivideCollision__26CJointCollisionDescriptionF6CSegId6CSegIdffQ226CJointCollisionDescription16EOrientationTypeRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80229744 002266A4  80 E1 00 50 */	lwz r7, 0x50(r1)
/* 80229748 002266A8  7F 83 E3 78 */	mr r3, r28
/* 8022974C 002266AC  80 C1 00 54 */	lwz r6, 0x54(r1)
/* 80229750 002266B0  7F A4 EB 78 */	mr r4, r29
/* 80229754 002266B4  88 A1 00 58 */	lbz r5, 0x58(r1)
/* 80229758 002266B8  88 01 00 59 */	lbz r0, 0x59(r1)
/* 8022975C 002266BC  C0 E1 00 5C */	lfs f7, 0x5c(r1)
/* 80229760 002266C0  C0 C1 00 60 */	lfs f6, 0x60(r1)
/* 80229764 002266C4  C0 A1 00 64 */	lfs f5, 0x64(r1)
/* 80229768 002266C8  C0 81 00 68 */	lfs f4, 0x68(r1)
/* 8022976C 002266CC  C0 61 00 6C */	lfs f3, 0x6c(r1)
/* 80229770 002266D0  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80229774 002266D4  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80229778 002266D8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8022977C 002266DC  90 E1 00 94 */	stw r7, 0x94(r1)
/* 80229780 002266E0  90 C1 00 98 */	stw r6, 0x98(r1)
/* 80229784 002266E4  98 A1 00 9C */	stb r5, 0x9c(r1)
/* 80229788 002266E8  98 01 00 9D */	stb r0, 0x9d(r1)
/* 8022978C 002266EC  D0 E1 00 A0 */	stfs f7, 0xa0(r1)
/* 80229790 002266F0  D0 C1 00 A4 */	stfs f6, 0xa4(r1)
/* 80229794 002266F4  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 80229798 002266F8  D0 81 00 AC */	stfs f4, 0xac(r1)
/* 8022979C 002266FC  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 802297A0 00226700  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 802297A4 00226704  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 802297A8 00226708  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 802297AC 0022670C  48 11 49 B5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802297B0 00226710  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 802297B4 00226714  28 1D 00 00 */	cmplwi r29, 0
/* 802297B8 00226718  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 802297BC 0022671C  B0 01 00 D0 */	sth r0, 0xd0(r1)
/* 802297C0 00226720  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 802297C4 00226724  41 82 00 0C */	beq lbl_802297D0
/* 802297C8 00226728  7F A3 EB 78 */	mr r3, r29
/* 802297CC 0022672C  48 11 43 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802297D0:
/* 802297D0 00226730  38 61 00 20 */	addi r3, r1, 0x20
/* 802297D4 00226734  48 11 43 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802297D8 00226738  7F 43 D3 78 */	mr r3, r26
/* 802297DC 0022673C  38 81 00 94 */	addi r4, r1, 0x94
/* 802297E0 00226740  4B F2 CA 51 */	bl sub_80156230
/* 802297E4 00226744  28 1C 00 00 */	cmplwi r28, 0
/* 802297E8 00226748  41 82 00 0C */	beq lbl_802297F4
/* 802297EC 0022674C  7F 83 E3 78 */	mr r3, r28
/* 802297F0 00226750  48 11 42 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802297F4:
/* 802297F4 00226754  3B DE 00 10 */	addi r30, r30, 0x10
/* 802297F8 00226758  3B 7B 00 01 */	addi r27, r27, 1
lbl_802297FC:
/* 802297FC 0022675C  7C 1B C8 00 */	cmpw r27, r25
/* 80229800 00226760  41 80 FE 94 */	blt lbl_80229694
/* 80229804 00226764  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 80229808 00226768  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8022980C 0022676C  7C 08 03 A6 */	mtlr r0
/* 80229810 00226770  38 21 01 00 */	addi r1, r1, 0x100
/* 80229814 00226774  4E 80 00 20 */	blr 

.global sub_80229818
sub_80229818:
/* 80229818 00226778  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8022981C 0022677C  7C 08 02 A6 */	mflr r0
/* 80229820 00226780  3C A0 80 57 */	lis r5, lbl_80570004@ha
/* 80229824 00226784  90 01 01 04 */	stw r0, 0x104(r1)
/* 80229828 00226788  BD C1 00 B8 */	stmw r14, 0xb8(r1)
/* 8022982C 0022678C  7C 9F 23 78 */	mr r31, r4
/* 80229830 00226790  7C 7E 1B 78 */	mr r30, r3
/* 80229834 00226794  85 E5 D7 80 */	lwzu r15, -0x2880(r5)
/* 80229838 00226798  82 05 00 04 */	lwz r16, lbl_80570004@l(r5)
/* 8022983C 0022679C  82 25 00 08 */	lwz r17, 8(r5)
/* 80229840 002267A0  82 45 00 0C */	lwz r18, 0xc(r5)
/* 80229844 002267A4  82 65 00 10 */	lwz r19, 0x10(r5)
/* 80229848 002267A8  82 85 00 14 */	lwz r20, 0x14(r5)
/* 8022984C 002267AC  82 A5 00 18 */	lwz r21, 0x18(r5)
/* 80229850 002267B0  82 C5 00 1C */	lwz r22, 0x1c(r5)
/* 80229854 002267B4  82 E5 00 20 */	lwz r23, 0x20(r5)
/* 80229858 002267B8  83 05 00 24 */	lwz r24, 0x24(r5)
/* 8022985C 002267BC  83 25 00 28 */	lwz r25, 0x28(r5)
/* 80229860 002267C0  83 45 00 2C */	lwz r26, 0x2c(r5)
/* 80229864 002267C4  83 65 00 30 */	lwz r27, 0x30(r5)
/* 80229868 002267C8  83 85 00 34 */	lwz r28, 0x34(r5)
/* 8022986C 002267CC  83 A5 00 38 */	lwz r29, 0x38(r5)
/* 80229870 002267D0  81 85 00 3C */	lwz r12, 0x3c(r5)
/* 80229874 002267D4  81 65 00 40 */	lwz r11, 0x40(r5)
/* 80229878 002267D8  81 45 00 44 */	lwz r10, 0x44(r5)
/* 8022987C 002267DC  81 25 00 48 */	lwz r9, 0x48(r5)
/* 80229880 002267E0  81 05 00 4C */	lwz r8, 0x4c(r5)
/* 80229884 002267E4  80 E5 00 50 */	lwz r7, 0x50(r5)
/* 80229888 002267E8  80 C5 00 54 */	lwz r6, 0x54(r5)
/* 8022988C 002267EC  80 85 00 58 */	lwz r4, 0x58(r5)
/* 80229890 002267F0  80 05 00 5C */	lwz r0, 0x5c(r5)
/* 80229894 002267F4  81 C5 00 60 */	lwz r14, 0x60(r5)
/* 80229898 002267F8  80 A5 00 64 */	lwz r5, 0x64(r5)
/* 8022989C 002267FC  91 E1 00 48 */	stw r15, 0x48(r1)
/* 802298A0 00226800  92 01 00 4C */	stw r16, 0x4c(r1)
/* 802298A4 00226804  92 21 00 50 */	stw r17, 0x50(r1)
/* 802298A8 00226808  92 41 00 54 */	stw r18, 0x54(r1)
/* 802298AC 0022680C  92 61 00 58 */	stw r19, 0x58(r1)
/* 802298B0 00226810  92 81 00 5C */	stw r20, 0x5c(r1)
/* 802298B4 00226814  92 A1 00 60 */	stw r21, 0x60(r1)
/* 802298B8 00226818  92 C1 00 64 */	stw r22, 0x64(r1)
/* 802298BC 0022681C  92 E1 00 68 */	stw r23, 0x68(r1)
/* 802298C0 00226820  93 01 00 6C */	stw r24, 0x6c(r1)
/* 802298C4 00226824  93 21 00 70 */	stw r25, 0x70(r1)
/* 802298C8 00226828  93 41 00 74 */	stw r26, 0x74(r1)
/* 802298CC 0022682C  93 61 00 78 */	stw r27, 0x78(r1)
/* 802298D0 00226830  93 81 00 7C */	stw r28, 0x7c(r1)
/* 802298D4 00226834  93 A1 00 80 */	stw r29, 0x80(r1)
/* 802298D8 00226838  91 81 00 84 */	stw r12, 0x84(r1)
/* 802298DC 0022683C  91 61 00 88 */	stw r11, 0x88(r1)
/* 802298E0 00226840  91 41 00 8C */	stw r10, 0x8c(r1)
/* 802298E4 00226844  91 21 00 90 */	stw r9, 0x90(r1)
/* 802298E8 00226848  91 01 00 94 */	stw r8, 0x94(r1)
/* 802298EC 0022684C  90 E1 00 98 */	stw r7, 0x98(r1)
/* 802298F0 00226850  90 C1 00 9C */	stw r6, 0x9c(r1)
/* 802298F4 00226854  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 802298F8 00226858  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802298FC 0022685C  91 C1 00 A8 */	stw r14, 0xa8(r1)
/* 80229900 00226860  90 A1 00 AC */	stw r5, 0xac(r1)
/* 80229904 00226864  81 83 00 00 */	lwz r12, 0(r3)
/* 80229908 00226868  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022990C 0022686C  7D 89 03 A6 */	mtctr r12
/* 80229910 00226870  4E 80 04 21 */	bctrl 
/* 80229914 00226874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80229918 00226878  41 82 01 E4 */	beq lbl_80229AFC
/* 8022991C 0022687C  39 DE 07 78 */	addi r14, r30, 0x778
/* 80229920 00226880  39 FE 07 8C */	addi r15, r30, 0x78c
/* 80229924 00226884  3A 00 00 00 */	li r16, 0
/* 80229928 00226888  48 00 01 30 */	b lbl_80229A58
lbl_8022992C:
/* 8022992C 0022688C  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 80229930 00226890  7E 04 83 78 */	mr r4, r16
/* 80229934 00226894  4B F7 D9 05 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80229938 00226898  7C 73 1B 78 */	mr r19, r3
/* 8022993C 0022689C  7F E3 FB 78 */	mr r3, r31
/* 80229940 002268A0  A0 13 00 3C */	lhz r0, 0x3c(r19)
/* 80229944 002268A4  38 81 00 0C */	addi r4, r1, 0xc
/* 80229948 002268A8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8022994C 002268AC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80229950 002268B0  4B E2 2C 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80229954 002268B4  7C 64 1B 78 */	mr r4, r3
/* 80229958 002268B8  38 61 00 30 */	addi r3, r1, 0x30
/* 8022995C 002268BC  4B E8 59 F1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80229960 002268C0  82 23 00 04 */	lwz r17, 4(r3)
/* 80229964 002268C4  28 11 00 00 */	cmplwi r17, 0
/* 80229968 002268C8  41 82 00 EC */	beq lbl_80229A54
/* 8022996C 002268CC  80 82 B5 A4 */	lwz r4, lbl_805AD2C4@sda21(r2)
/* 80229970 002268D0  38 61 00 38 */	addi r3, r1, 0x38
/* 80229974 002268D4  4B DD B3 45 */	bl string_l__4rstlFPCc
/* 80229978 002268D8  38 73 00 2C */	addi r3, r19, 0x2c
/* 8022997C 002268DC  38 81 00 38 */	addi r4, r1, 0x38
/* 80229980 002268E0  4B E2 8C 61 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 80229984 002268E4  7C 72 1B 78 */	mr r18, r3
/* 80229988 002268E8  38 61 00 38 */	addi r3, r1, 0x38
/* 8022998C 002268EC  48 11 41 55 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80229990 002268F0  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 80229994 002268F4  41 82 00 10 */	beq lbl_802299A4
/* 80229998 002268F8  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8022999C 002268FC  B0 1E 07 70 */	sth r0, 0x770(r30)
/* 802299A0 00226900  48 00 00 98 */	b lbl_80229A38
lbl_802299A4:
/* 802299A4 00226904  3C 60 80 3D */	lis r3, lbl_803D32A8@ha
/* 802299A8 00226908  80 A2 B5 AC */	lwz r5, lbl_805AD2CC@sda21(r2)
/* 802299AC 0022690C  38 C3 32 A8 */	addi r6, r3, lbl_803D32A8@l
/* 802299B0 00226910  38 93 00 2C */	addi r4, r19, 0x2c
/* 802299B4 00226914  7F C3 F3 78 */	mr r3, r30
/* 802299B8 00226918  38 E0 00 03 */	li r7, 3
/* 802299BC 0022691C  4B FF FA 81 */	bl sub_8022943c
/* 802299C0 00226920  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802299C4 00226924  41 82 00 2C */	beq lbl_802299F0
/* 802299C8 00226928  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 802299CC 0022692C  54 00 08 3C */	slwi r0, r0, 1
/* 802299D0 00226930  7C 6E 02 15 */	add. r3, r14, r0
/* 802299D4 00226934  41 82 00 0C */	beq lbl_802299E0
/* 802299D8 00226938  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 802299DC 0022693C  B0 03 00 00 */	sth r0, 0(r3)
lbl_802299E0:
/* 802299E0 00226940  80 7E 07 74 */	lwz r3, 0x774(r30)
/* 802299E4 00226944  38 03 00 01 */	addi r0, r3, 1
/* 802299E8 00226948  90 1E 07 74 */	stw r0, 0x774(r30)
/* 802299EC 0022694C  48 00 00 4C */	b lbl_80229A38
lbl_802299F0:
/* 802299F0 00226950  3C 60 80 3D */	lis r3, lbl_803D3278@ha
/* 802299F4 00226954  80 A2 B5 B0 */	lwz r5, lbl_805AD2D0@sda21(r2)
/* 802299F8 00226958  38 C3 32 78 */	addi r6, r3, lbl_803D3278@l
/* 802299FC 0022695C  38 93 00 2C */	addi r4, r19, 0x2c
/* 80229A00 00226960  7F C3 F3 78 */	mr r3, r30
/* 80229A04 00226964  38 E0 00 03 */	li r7, 3
/* 80229A08 00226968  4B FF FA 35 */	bl sub_8022943c
/* 80229A0C 0022696C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80229A10 00226970  41 82 00 28 */	beq lbl_80229A38
/* 80229A14 00226974  80 1E 07 88 */	lwz r0, 0x788(r30)
/* 80229A18 00226978  54 00 08 3C */	slwi r0, r0, 1
/* 80229A1C 0022697C  7C 6F 02 15 */	add. r3, r15, r0
/* 80229A20 00226980  41 82 00 0C */	beq lbl_80229A2C
/* 80229A24 00226984  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 80229A28 00226988  B0 03 00 00 */	sth r0, 0(r3)
lbl_80229A2C:
/* 80229A2C 0022698C  80 7E 07 88 */	lwz r3, 0x788(r30)
/* 80229A30 00226990  38 03 00 01 */	addi r0, r3, 1
/* 80229A34 00226994  90 1E 07 88 */	stw r0, 0x788(r30)
lbl_80229A38:
/* 80229A38 00226998  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 80229A3C 0022699C  A0 1E 07 70 */	lhz r0, 0x770(r30)
/* 80229A40 002269A0  7C 03 00 40 */	cmplw r3, r0
/* 80229A44 002269A4  41 82 00 10 */	beq lbl_80229A54
/* 80229A48 002269A8  7E 23 8B 78 */	mr r3, r17
/* 80229A4C 002269AC  38 81 00 48 */	addi r4, r1, 0x48
/* 80229A50 002269B0  4B F7 F1 49 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_80229A54:
/* 80229A54 002269B4  3A 10 00 01 */	addi r16, r16, 1
lbl_80229A58:
/* 80229A58 002269B8  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 80229A5C 002269BC  4B F7 D7 ED */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 80229A60 002269C0  7C 10 18 40 */	cmplw r16, r3
/* 80229A64 002269C4  41 80 FE C8 */	blt lbl_8022992C
/* 80229A68 002269C8  38 00 00 00 */	li r0, 0
/* 80229A6C 002269CC  80 AD 95 9C */	lwz r5, lbl_805A815C@sda21(r13)
/* 80229A70 002269D0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80229A74 002269D4  38 60 00 00 */	li r3, 0
/* 80229A78 002269D8  38 80 00 01 */	li r4, 1
/* 80229A7C 002269DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80229A80 002269E0  48 16 04 75 */	bl __shl2i
/* 80229A84 002269E4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80229A88 002269E8  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80229A8C 002269EC  7C 00 1B 78 */	or r0, r0, r3
/* 80229A90 002269F0  80 AD 95 A0 */	lwz r5, lbl_805A8160@sda21(r13)
/* 80229A94 002269F4  7C C4 23 78 */	or r4, r6, r4
/* 80229A98 002269F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80229A9C 002269FC  38 60 00 00 */	li r3, 0
/* 80229AA0 00226A00  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80229AA4 00226A04  38 80 00 01 */	li r4, 1
/* 80229AA8 00226A08  48 16 04 4D */	bl __shl2i
/* 80229AAC 00226A0C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80229AB0 00226A10  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80229AB4 00226A14  7C 00 1B 78 */	or r0, r0, r3
/* 80229AB8 00226A18  80 AD 95 A4 */	lwz r5, lbl_805A8164@sda21(r13)
/* 80229ABC 00226A1C  7C C4 23 78 */	or r4, r6, r4
/* 80229AC0 00226A20  90 01 00 28 */	stw r0, 0x28(r1)
/* 80229AC4 00226A24  38 60 00 00 */	li r3, 0
/* 80229AC8 00226A28  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80229ACC 00226A2C  38 80 00 01 */	li r4, 1
/* 80229AD0 00226A30  48 16 04 25 */	bl __shl2i
/* 80229AD4 00226A34  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80229AD8 00226A38  38 A1 00 28 */	addi r5, r1, 0x28
/* 80229ADC 00226A3C  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 80229AE0 00226A40  7C 00 1B 78 */	or r0, r0, r3
/* 80229AE4 00226A44  7C C3 23 78 */	or r3, r6, r4
/* 80229AE8 00226A48  90 01 00 28 */	stw r0, 0x28(r1)
/* 80229AEC 00226A4C  7F E4 FB 78 */	mr r4, r31
/* 80229AF0 00226A50  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80229AF4 00226A54  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 80229AF8 00226A58  4B F7 D7 59 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
lbl_80229AFC:
/* 80229AFC 00226A5C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80229B00 00226A60  38 80 00 00 */	li r4, 0
/* 80229B04 00226A64  4B F7 D7 35 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 80229B08 00226A68  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 80229B0C 00226A6C  7F E3 FB 78 */	mr r3, r31
/* 80229B10 00226A70  38 81 00 08 */	addi r4, r1, 8
/* 80229B14 00226A74  B0 1E 07 9C */	sth r0, 0x79c(r30)
/* 80229B18 00226A78  A0 1E 07 9C */	lhz r0, 0x79c(r30)
/* 80229B1C 00226A7C  B0 01 00 08 */	sth r0, 8(r1)
/* 80229B20 00226A80  4B E2 2A 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80229B24 00226A84  7C 64 1B 78 */	mr r4, r3
/* 80229B28 00226A88  38 61 00 20 */	addi r3, r1, 0x20
/* 80229B2C 00226A8C  4B E8 58 21 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 80229B30 00226A90  80 63 00 04 */	lwz r3, 4(r3)
/* 80229B34 00226A94  28 03 00 00 */	cmplwi r3, 0
/* 80229B38 00226A98  41 82 00 0C */	beq lbl_80229B44
/* 80229B3C 00226A9C  38 00 00 00 */	li r0, 0
/* 80229B40 00226AA0  90 03 03 00 */	stw r0, 0x300(r3)
lbl_80229B44:
/* 80229B44 00226AA4  38 00 00 00 */	li r0, 0
/* 80229B48 00226AA8  80 AD 95 A8 */	lwz r5, lbl_805A8168@sda21(r13)
/* 80229B4C 00226AAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80229B50 00226AB0  38 60 00 00 */	li r3, 0
/* 80229B54 00226AB4  38 80 00 01 */	li r4, 1
/* 80229B58 00226AB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80229B5C 00226ABC  48 16 03 99 */	bl __shl2i
/* 80229B60 00226AC0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80229B64 00226AC4  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80229B68 00226AC8  7C 00 1B 78 */	or r0, r0, r3
/* 80229B6C 00226ACC  80 AD 95 AC */	lwz r5, lbl_805A816C@sda21(r13)
/* 80229B70 00226AD0  7C C4 23 78 */	or r4, r6, r4
/* 80229B74 00226AD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80229B78 00226AD8  38 60 00 00 */	li r3, 0
/* 80229B7C 00226ADC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80229B80 00226AE0  38 80 00 01 */	li r4, 1
/* 80229B84 00226AE4  48 16 03 71 */	bl __shl2i
/* 80229B88 00226AE8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80229B8C 00226AEC  38 A1 00 18 */	addi r5, r1, 0x18
/* 80229B90 00226AF0  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80229B94 00226AF4  7C 00 1B 78 */	or r0, r0, r3
/* 80229B98 00226AF8  7C C3 23 78 */	or r3, r6, r4
/* 80229B9C 00226AFC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80229BA0 00226B00  7F E4 FB 78 */	mr r4, r31
/* 80229BA4 00226B04  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80229BA8 00226B08  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 80229BAC 00226B0C  4B F7 D6 A5 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 80229BB0 00226B10  B9 C1 00 B8 */	lmw r14, 0xb8(r1)
/* 80229BB4 00226B14  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80229BB8 00226B18  7C 08 03 A6 */	mtlr r0
/* 80229BBC 00226B1C  38 21 01 00 */	addi r1, r1, 0x100
/* 80229BC0 00226B20  4E 80 00 20 */	blr 

.global sub_80229bc4
sub_80229bc4:
/* 80229BC4 00226B24  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80229BC8 00226B28  7C 08 02 A6 */	mflr r0
/* 80229BCC 00226B2C  3C A0 80 3D */	lis r5, lbl_803D3278@ha
/* 80229BD0 00226B30  90 01 01 34 */	stw r0, 0x134(r1)
/* 80229BD4 00226B34  38 00 00 00 */	li r0, 0
/* 80229BD8 00226B38  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 80229BDC 00226B3C  7C 7D 1B 78 */	mr r29, r3
/* 80229BE0 00226B40  7C 9E 23 78 */	mr r30, r4
/* 80229BE4 00226B44  3B 85 32 78 */	addi r28, r5, lbl_803D3278@l
/* 80229BE8 00226B48  38 61 00 64 */	addi r3, r1, 0x64
/* 80229BEC 00226B4C  38 80 00 0D */	li r4, 0xd
/* 80229BF0 00226B50  90 01 00 68 */	stw r0, 0x68(r1)
/* 80229BF4 00226B54  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80229BF8 00226B58  90 01 00 70 */	stw r0, 0x70(r1)
/* 80229BFC 00226B5C  4B F2 CB BD */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 80229C00 00226B60  7F A3 EB 78 */	mr r3, r29
/* 80229C04 00226B64  38 9C 00 00 */	addi r4, r28, 0
/* 80229C08 00226B68  38 C1 00 64 */	addi r6, r1, 0x64
/* 80229C0C 00226B6C  38 A0 00 03 */	li r5, 3
/* 80229C10 00226B70  4B FF FA 51 */	bl sub_80229660
/* 80229C14 00226B74  7F A3 EB 78 */	mr r3, r29
/* 80229C18 00226B78  38 9C 00 30 */	addi r4, r28, 0x30
/* 80229C1C 00226B7C  38 C1 00 64 */	addi r6, r1, 0x64
/* 80229C20 00226B80  38 A0 00 03 */	li r5, 3
/* 80229C24 00226B84  4B FF FA 3D */	bl sub_80229660
/* 80229C28 00226B88  7F A3 EB 78 */	mr r3, r29
/* 80229C2C 00226B8C  38 9C 00 60 */	addi r4, r28, 0x60
/* 80229C30 00226B90  38 C1 00 64 */	addi r6, r1, 0x64
/* 80229C34 00226B94  38 A0 00 07 */	li r5, 7
/* 80229C38 00226B98  4B FF F8 BD */	bl sub_802294f4
/* 80229C3C 00226B9C  7F A3 EB 78 */	mr r3, r29
/* 80229C40 00226BA0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80229C44 00226BA4  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 80229C48 00226BA8  7D 89 03 A6 */	mtctr r12
/* 80229C4C 00226BAC  4E 80 04 21 */	bctrl 
/* 80229C50 00226BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80229C54 00226BB4  41 82 00 7C */	beq lbl_80229CD0
/* 80229C58 00226BB8  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 80229C5C 00226BBC  38 60 00 18 */	li r3, 0x18
/* 80229C60 00226BC0  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 80229C64 00226BC4  38 A0 00 00 */	li r5, 0
/* 80229C68 00226BC8  38 84 00 B8 */	addi r4, r4, 0xb8
/* 80229C6C 00226BCC  48 0E BC 01 */	bl __nw__FUlPCcPCc
/* 80229C70 00226BD0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80229C74 00226BD4  41 82 00 38 */	beq lbl_80229CAC
/* 80229C78 00226BD8  81 3D 00 04 */	lwz r9, 4(r29)
/* 80229C7C 00226BDC  7F C4 F3 78 */	mr r4, r30
/* 80229C80 00226BE0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80229C84 00226BE4  38 C1 00 40 */	addi r6, r1, 0x40
/* 80229C88 00226BE8  91 21 00 40 */	stw r9, 0x40(r1)
/* 80229C8C 00226BEC  38 E1 00 64 */	addi r7, r1, 0x64
/* 80229C90 00226BF0  39 00 00 01 */	li r8, 1
/* 80229C94 00226BF4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80229C98 00226BF8  91 21 00 3C */	stw r9, 0x3c(r1)
/* 80229C9C 00226BFC  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80229CA0 00226C00  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80229CA4 00226C04  4B F7 DC 8D */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80229CA8 00226C08  7C 7C 1B 78 */	mr r28, r3
lbl_80229CAC:
/* 80229CAC 00226C0C  80 7D 07 30 */	lwz r3, 0x730(r29)
/* 80229CB0 00226C10  38 80 00 01 */	li r4, 1
/* 80229CB4 00226C14  4B F7 DC 29 */	bl sub_801a78dc
/* 80229CB8 00226C18  93 9D 07 30 */	stw r28, 0x730(r29)
/* 80229CBC 00226C1C  7F C4 F3 78 */	mr r4, r30
/* 80229CC0 00226C20  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 80229CC4 00226C24  80 7D 07 30 */	lwz r3, 0x730(r29)
/* 80229CC8 00226C28  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 80229CCC 00226C2C  4B F7 D6 2D */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_80229CD0:
/* 80229CD0 00226C30  80 BD 07 74 */	lwz r5, 0x774(r29)
/* 80229CD4 00226C34  38 60 00 00 */	li r3, 0
/* 80229CD8 00226C38  2C 05 00 00 */	cmpwi r5, 0
/* 80229CDC 00226C3C  40 81 00 40 */	ble lbl_80229D1C
/* 80229CE0 00226C40  2C 05 00 08 */	cmpwi r5, 8
/* 80229CE4 00226C44  38 85 FF F8 */	addi r4, r5, -8
/* 80229CE8 00226C48  40 81 00 20 */	ble lbl_80229D08
/* 80229CEC 00226C4C  38 04 00 07 */	addi r0, r4, 7
/* 80229CF0 00226C50  54 00 E8 FE */	srwi r0, r0, 3
/* 80229CF4 00226C54  7C 09 03 A6 */	mtctr r0
/* 80229CF8 00226C58  2C 04 00 00 */	cmpwi r4, 0
/* 80229CFC 00226C5C  40 81 00 0C */	ble lbl_80229D08
lbl_80229D00:
/* 80229D00 00226C60  38 63 00 08 */	addi r3, r3, 8
/* 80229D04 00226C64  42 00 FF FC */	bdnz lbl_80229D00
lbl_80229D08:
/* 80229D08 00226C68  7C 03 28 50 */	subf r0, r3, r5
/* 80229D0C 00226C6C  7C 09 03 A6 */	mtctr r0
/* 80229D10 00226C70  7C 03 28 00 */	cmpw r3, r5
/* 80229D14 00226C74  40 80 00 08 */	bge lbl_80229D1C
lbl_80229D18:
/* 80229D18 00226C78  42 00 00 00 */	bdnz lbl_80229D18
lbl_80229D1C:
/* 80229D1C 00226C7C  38 60 00 00 */	li r3, 0
/* 80229D20 00226C80  90 7D 07 74 */	stw r3, 0x774(r29)
/* 80229D24 00226C84  80 BD 07 88 */	lwz r5, 0x788(r29)
/* 80229D28 00226C88  2C 05 00 00 */	cmpwi r5, 0
/* 80229D2C 00226C8C  40 81 00 40 */	ble lbl_80229D6C
/* 80229D30 00226C90  2C 05 00 08 */	cmpwi r5, 8
/* 80229D34 00226C94  38 85 FF F8 */	addi r4, r5, -8
/* 80229D38 00226C98  40 81 00 20 */	ble lbl_80229D58
/* 80229D3C 00226C9C  38 04 00 07 */	addi r0, r4, 7
/* 80229D40 00226CA0  54 00 E8 FE */	srwi r0, r0, 3
/* 80229D44 00226CA4  7C 09 03 A6 */	mtctr r0
/* 80229D48 00226CA8  2C 04 00 00 */	cmpwi r4, 0
/* 80229D4C 00226CAC  40 81 00 0C */	ble lbl_80229D58
lbl_80229D50:
/* 80229D50 00226CB0  38 63 00 08 */	addi r3, r3, 8
/* 80229D54 00226CB4  42 00 FF FC */	bdnz lbl_80229D50
lbl_80229D58:
/* 80229D58 00226CB8  7C 03 28 50 */	subf r0, r3, r5
/* 80229D5C 00226CBC  7C 09 03 A6 */	mtctr r0
/* 80229D60 00226CC0  7C 03 28 00 */	cmpw r3, r5
/* 80229D64 00226CC4  40 80 00 08 */	bge lbl_80229D6C
lbl_80229D68:
/* 80229D68 00226CC8  42 00 00 00 */	bdnz lbl_80229D68
lbl_80229D6C:
/* 80229D6C 00226CCC  38 00 00 00 */	li r0, 0
/* 80229D70 00226CD0  80 82 B5 B0 */	lwz r4, lbl_805AD2D0@sda21(r2)
/* 80229D74 00226CD4  90 1D 07 88 */	stw r0, 0x788(r29)
/* 80229D78 00226CD8  38 61 00 54 */	addi r3, r1, 0x54
/* 80229D7C 00226CDC  4B DD AF 3D */	bl string_l__4rstlFPCc
/* 80229D80 00226CE0  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 80229D84 00226CE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80229D88 00226CE8  38 A1 00 54 */	addi r5, r1, 0x54
/* 80229D8C 00226CEC  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80229D90 00226CF0  4B E0 4A A9 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80229D94 00226CF4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80229D98 00226CF8  38 61 00 54 */	addi r3, r1, 0x54
/* 80229D9C 00226CFC  98 01 00 10 */	stb r0, 0x10(r1)
/* 80229DA0 00226D00  48 11 3D 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80229DA4 00226D04  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 80229DA8 00226D08  38 61 00 44 */	addi r3, r1, 0x44
/* 80229DAC 00226D0C  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 80229DB0 00226D10  38 84 00 E1 */	addi r4, r4, 0xe1
/* 80229DB4 00226D14  4B DD AF 05 */	bl string_l__4rstlFPCc
/* 80229DB8 00226D18  88 01 00 10 */	lbz r0, 0x10(r1)
/* 80229DBC 00226D1C  3C 80 80 57 */	lis r4, lbl_805723F8@ha
/* 80229DC0 00226D20  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80229DC4 00226D24  C0 22 B5 F4 */	lfs f1, lbl_805AD314@sda21(r2)
/* 80229DC8 00226D28  98 01 00 08 */	stb r0, 8(r1)
/* 80229DCC 00226D2C  38 A4 23 F8 */	addi r5, r4, lbl_805723F8@l
/* 80229DD0 00226D30  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 80229DD4 00226D34  38 61 00 90 */	addi r3, r1, 0x90
/* 80229DD8 00226D38  38 81 00 08 */	addi r4, r1, 8
/* 80229DDC 00226D3C  38 E1 00 44 */	addi r7, r1, 0x44
/* 80229DE0 00226D40  4B F7 E7 39 */	bl "OBBCollision__26CJointCollisionDescriptionF6CSegIdRC9CVector3fRC9CVector3fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 80229DE4 00226D44  80 E1 00 90 */	lwz r7, 0x90(r1)
/* 80229DE8 00226D48  3B E1 01 00 */	addi r31, r1, 0x100
/* 80229DEC 00226D4C  80 C1 00 94 */	lwz r6, 0x94(r1)
/* 80229DF0 00226D50  3B 61 00 BC */	addi r27, r1, 0xbc
/* 80229DF4 00226D54  88 A1 00 98 */	lbz r5, 0x98(r1)
/* 80229DF8 00226D58  7F E3 FB 78 */	mr r3, r31
/* 80229DFC 00226D5C  88 01 00 99 */	lbz r0, 0x99(r1)
/* 80229E00 00226D60  7F 64 DB 78 */	mr r4, r27
/* 80229E04 00226D64  C0 E1 00 9C */	lfs f7, 0x9c(r1)
/* 80229E08 00226D68  C0 C1 00 A0 */	lfs f6, 0xa0(r1)
/* 80229E0C 00226D6C  C0 A1 00 A4 */	lfs f5, 0xa4(r1)
/* 80229E10 00226D70  C0 81 00 A8 */	lfs f4, 0xa8(r1)
/* 80229E14 00226D74  C0 61 00 AC */	lfs f3, 0xac(r1)
/* 80229E18 00226D78  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 80229E1C 00226D7C  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80229E20 00226D80  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80229E24 00226D84  90 E1 00 D4 */	stw r7, 0xd4(r1)
/* 80229E28 00226D88  90 C1 00 D8 */	stw r6, 0xd8(r1)
/* 80229E2C 00226D8C  98 A1 00 DC */	stb r5, 0xdc(r1)
/* 80229E30 00226D90  98 01 00 DD */	stb r0, 0xdd(r1)
/* 80229E34 00226D94  D0 E1 00 E0 */	stfs f7, 0xe0(r1)
/* 80229E38 00226D98  D0 C1 00 E4 */	stfs f6, 0xe4(r1)
/* 80229E3C 00226D9C  D0 A1 00 E8 */	stfs f5, 0xe8(r1)
/* 80229E40 00226DA0  D0 81 00 EC */	stfs f4, 0xec(r1)
/* 80229E44 00226DA4  D0 61 00 F0 */	stfs f3, 0xf0(r1)
/* 80229E48 00226DA8  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 80229E4C 00226DAC  D0 21 00 F8 */	stfs f1, 0xf8(r1)
/* 80229E50 00226DB0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80229E54 00226DB4  48 11 43 0D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80229E58 00226DB8  A0 01 00 CC */	lhz r0, 0xcc(r1)
/* 80229E5C 00226DBC  28 1B 00 00 */	cmplwi r27, 0
/* 80229E60 00226DC0  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80229E64 00226DC4  B0 01 01 10 */	sth r0, 0x110(r1)
/* 80229E68 00226DC8  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80229E6C 00226DCC  41 82 00 0C */	beq lbl_80229E78
/* 80229E70 00226DD0  7F 63 DB 78 */	mr r3, r27
/* 80229E74 00226DD4  48 11 3C 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80229E78:
/* 80229E78 00226DD8  38 61 00 44 */	addi r3, r1, 0x44
/* 80229E7C 00226DDC  48 11 3C 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80229E80 00226DE0  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80229E84 00226DE4  83 61 00 70 */	lwz r27, 0x70(r1)
/* 80229E88 00226DE8  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80229E8C 00226DEC  93 61 00 28 */	stw r27, 0x28(r1)
/* 80229E90 00226DF0  7F 9B 02 14 */	add r28, r27, r0
/* 80229E94 00226DF4  93 61 00 24 */	stw r27, 0x24(r1)
/* 80229E98 00226DF8  93 81 00 30 */	stw r28, 0x30(r1)
/* 80229E9C 00226DFC  93 81 00 2C */	stw r28, 0x2c(r1)
/* 80229EA0 00226E00  48 00 00 20 */	b lbl_80229EC0
lbl_80229EA4:
/* 80229EA4 00226E04  28 1B 00 00 */	cmplwi r27, 0
/* 80229EA8 00226E08  41 82 00 14 */	beq lbl_80229EBC
/* 80229EAC 00226E0C  34 1B 00 2C */	addic. r0, r27, 0x2c
/* 80229EB0 00226E10  41 82 00 0C */	beq lbl_80229EBC
/* 80229EB4 00226E14  38 7B 00 2C */	addi r3, r27, 0x2c
/* 80229EB8 00226E18  48 11 3C 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80229EBC:
/* 80229EBC 00226E1C  3B 7B 00 44 */	addi r27, r27, 0x44
lbl_80229EC0:
/* 80229EC0 00226E20  7C 1B E0 40 */	cmplw r27, r28
/* 80229EC4 00226E24  40 82 FF E0 */	bne lbl_80229EA4
/* 80229EC8 00226E28  38 00 00 00 */	li r0, 0
/* 80229ECC 00226E2C  38 61 00 64 */	addi r3, r1, 0x64
/* 80229ED0 00226E30  90 01 00 68 */	stw r0, 0x68(r1)
/* 80229ED4 00226E34  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80229ED8 00226E38  4B F2 C3 59 */	bl sub_80156230
/* 80229EDC 00226E3C  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 80229EE0 00226E40  38 60 00 18 */	li r3, 0x18
/* 80229EE4 00226E44  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 80229EE8 00226E48  38 A0 00 00 */	li r5, 0
/* 80229EEC 00226E4C  38 84 00 B8 */	addi r4, r4, 0xb8
/* 80229EF0 00226E50  48 0E B9 7D */	bl __nw__FUlPCcPCc
/* 80229EF4 00226E54  7C 7C 1B 79 */	or. r28, r3, r3
/* 80229EF8 00226E58  41 82 00 38 */	beq lbl_80229F30
/* 80229EFC 00226E5C  81 3D 00 04 */	lwz r9, 4(r29)
/* 80229F00 00226E60  7F C4 F3 78 */	mr r4, r30
/* 80229F04 00226E64  38 A1 00 18 */	addi r5, r1, 0x18
/* 80229F08 00226E68  38 C1 00 38 */	addi r6, r1, 0x38
/* 80229F0C 00226E6C  91 21 00 38 */	stw r9, 0x38(r1)
/* 80229F10 00226E70  38 E1 00 64 */	addi r7, r1, 0x64
/* 80229F14 00226E74  39 00 00 00 */	li r8, 0
/* 80229F18 00226E78  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80229F1C 00226E7C  91 21 00 34 */	stw r9, 0x34(r1)
/* 80229F20 00226E80  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80229F24 00226E84  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80229F28 00226E88  4B F7 DA 09 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 80229F2C 00226E8C  7C 7C 1B 78 */	mr r28, r3
lbl_80229F30:
/* 80229F30 00226E90  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80229F34 00226E94  38 80 00 01 */	li r4, 1
/* 80229F38 00226E98  4B F7 D9 A5 */	bl sub_801a78dc
/* 80229F3C 00226E9C  93 9D 05 D4 */	stw r28, 0x5d4(r29)
/* 80229F40 00226EA0  7F A3 EB 78 */	mr r3, r29
/* 80229F44 00226EA4  7F C4 F3 78 */	mr r4, r30
/* 80229F48 00226EA8  4B FF F8 D1 */	bl sub_80229818
/* 80229F4C 00226EAC  7F A3 EB 78 */	mr r3, r29
/* 80229F50 00226EB0  7F C4 F3 78 */	mr r4, r30
/* 80229F54 00226EB4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80229F58 00226EB8  81 8C 02 D4 */	lwz r12, 0x2d4(r12)
/* 80229F5C 00226EBC  7D 89 03 A6 */	mtctr r12
/* 80229F60 00226EC0  4E 80 04 21 */	bctrl 
/* 80229F64 00226EC4  80 AD 95 8C */	lwz r5, lbl_805A814C@sda21(r13)
/* 80229F68 00226EC8  38 60 00 00 */	li r3, 0
/* 80229F6C 00226ECC  38 80 00 01 */	li r4, 1
/* 80229F70 00226ED0  48 15 FF 85 */	bl __shl2i
/* 80229F74 00226ED4  80 AD 95 90 */	lwz r5, lbl_805A8150@sda21(r13)
/* 80229F78 00226ED8  7C 9B 23 78 */	mr r27, r4
/* 80229F7C 00226EDC  7C 7C 1B 78 */	mr r28, r3
/* 80229F80 00226EE0  38 60 00 00 */	li r3, 0
/* 80229F84 00226EE4  38 80 00 01 */	li r4, 1
/* 80229F88 00226EE8  48 15 FF 6D */	bl __shl2i
/* 80229F8C 00226EEC  80 AD 95 94 */	lwz r5, lbl_805A8154@sda21(r13)
/* 80229F90 00226EF0  7F 7B 23 78 */	or r27, r27, r4
/* 80229F94 00226EF4  7F 9C 1B 78 */	or r28, r28, r3
/* 80229F98 00226EF8  38 60 00 00 */	li r3, 0
/* 80229F9C 00226EFC  38 80 00 01 */	li r4, 1
/* 80229FA0 00226F00  48 15 FF 55 */	bl __shl2i
/* 80229FA4 00226F04  80 AD 95 98 */	lwz r5, lbl_805A8158@sda21(r13)
/* 80229FA8 00226F08  7F 7B 23 78 */	or r27, r27, r4
/* 80229FAC 00226F0C  7F 9C 1B 78 */	or r28, r28, r3
/* 80229FB0 00226F10  38 60 00 00 */	li r3, 0
/* 80229FB4 00226F14  38 80 00 01 */	li r4, 1
/* 80229FB8 00226F18  48 15 FF 3D */	bl __shl2i
/* 80229FBC 00226F1C  3C A0 00 02 */	lis r5, 2
/* 80229FC0 00226F20  38 00 00 03 */	li r0, 3
/* 80229FC4 00226F24  7F 85 2B 78 */	or r5, r28, r5
/* 80229FC8 00226F28  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80229FCC 00226F2C  38 81 00 78 */	addi r4, r1, 0x78
/* 80229FD0 00226F30  90 61 00 78 */	stw r3, 0x78(r1)
/* 80229FD4 00226F34  7F A3 EB 78 */	mr r3, r29
/* 80229FD8 00226F38  93 61 00 84 */	stw r27, 0x84(r1)
/* 80229FDC 00226F3C  90 A1 00 80 */	stw r5, 0x80(r1)
/* 80229FE0 00226F40  90 01 00 88 */	stw r0, 0x88(r1)
/* 80229FE4 00226F44  4B E2 98 BD */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 80229FE8 00226F48  7F A3 EB 78 */	mr r3, r29
/* 80229FEC 00226F4C  7F C5 F3 78 */	mr r5, r30
/* 80229FF0 00226F50  38 80 00 12 */	li r4, 0x12
/* 80229FF4 00226F54  4B E2 A3 5D */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 80229FF8 00226F58  28 1F 00 00 */	cmplwi r31, 0
/* 80229FFC 00226F5C  41 82 00 0C */	beq lbl_8022A008
/* 8022A000 00226F60  7F E3 FB 78 */	mr r3, r31
/* 8022A004 00226F64  48 11 3A DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8022A008:
/* 8022A008 00226F68  38 61 00 64 */	addi r3, r1, 0x64
/* 8022A00C 00226F6C  38 80 FF FF */	li r4, -1
/* 8022A010 00226F70  4B F2 C3 1D */	bl sub_8015632c
/* 8022A014 00226F74  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 8022A018 00226F78  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8022A01C 00226F7C  7C 08 03 A6 */	mtlr r0
/* 8022A020 00226F80  38 21 01 30 */	addi r1, r1, 0x130
/* 8022A024 00226F84  4E 80 00 20 */	blr 

.global CallForBackup__12CElitePirateFR13CStateManager9EStateMsgf
CallForBackup__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022A028 00226F88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022A02C 00226F8C  7C 08 02 A6 */	mflr r0
/* 8022A030 00226F90  2C 05 00 01 */	cmpwi r5, 1
/* 8022A034 00226F94  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022A038 00226F98  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022A03C 00226F9C  41 82 00 48 */	beq lbl_8022A084
/* 8022A040 00226FA0  40 80 00 10 */	bge lbl_8022A050
/* 8022A044 00226FA4  2C 05 00 00 */	cmpwi r5, 0
/* 8022A048 00226FA8  40 80 00 14 */	bge lbl_8022A05C
/* 8022A04C 00226FAC  48 00 01 78 */	b lbl_8022A1C4
lbl_8022A050:
/* 8022A050 00226FB0  2C 05 00 03 */	cmpwi r5, 3
/* 8022A054 00226FB4  40 80 01 70 */	bge lbl_8022A1C4
/* 8022A058 00226FB8  48 00 01 5C */	b lbl_8022A1B4
lbl_8022A05C:
/* 8022A05C 00226FBC  38 00 00 00 */	li r0, 0
/* 8022A060 00226FC0  38 C0 00 01 */	li r6, 1
/* 8022A064 00226FC4  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022A068 00226FC8  7C 85 23 78 */	mr r5, r4
/* 8022A06C 00226FCC  38 80 00 00 */	li r4, 0
/* 8022A070 00226FD0  88 03 09 88 */	lbz r0, 0x988(r3)
/* 8022A074 00226FD4  50 C0 0F BC */	rlwimi r0, r6, 1, 0x1e, 0x1e
/* 8022A078 00226FD8  98 03 09 88 */	stb r0, 0x988(r3)
/* 8022A07C 00226FDC  4B FF D5 21 */	bl sub_8022759c
/* 8022A080 00226FE0  48 00 01 44 */	b lbl_8022A1C4
lbl_8022A084:
/* 8022A084 00226FE4  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8022A088 00226FE8  2C 00 00 01 */	cmpwi r0, 1
/* 8022A08C 00226FEC  41 82 01 38 */	beq lbl_8022A1C4
/* 8022A090 00226FF0  40 80 00 10 */	bge lbl_8022A0A0
/* 8022A094 00226FF4  2C 00 00 00 */	cmpwi r0, 0
/* 8022A098 00226FF8  40 80 00 14 */	bge lbl_8022A0AC
/* 8022A09C 00226FFC  48 00 01 28 */	b lbl_8022A1C4
lbl_8022A0A0:
/* 8022A0A0 00227000  2C 00 00 03 */	cmpwi r0, 3
/* 8022A0A4 00227004  40 80 01 20 */	bge lbl_8022A1C4
/* 8022A0A8 00227008  48 00 00 F0 */	b lbl_8022A198
lbl_8022A0AC:
/* 8022A0AC 0022700C  81 43 04 50 */	lwz r10, 0x450(r3)
/* 8022A0B0 00227010  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8022A0B4 00227014  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022A0B8 00227018  40 82 00 10 */	bne lbl_8022A0C8
/* 8022A0BC 0022701C  38 00 00 02 */	li r0, 2
/* 8022A0C0 00227020  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022A0C4 00227024  48 00 01 00 */	b lbl_8022A1C4
lbl_8022A0C8:
/* 8022A0C8 00227028  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 8022A0CC 0022702C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022A0D0 00227030  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 8022A0D4 00227034  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8022A0D8 00227038  38 60 00 00 */	li r3, 0
/* 8022A0DC 0022703C  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 8022A0E0 00227040  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 8022A0E4 00227044  C0 45 00 00 */	lfs f2, 0(r5)
/* 8022A0E8 00227048  C0 25 00 04 */	lfs f1, 4(r5)
/* 8022A0EC 0022704C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8022A0F0 00227050  C0 05 00 08 */	lfs f0, 8(r5)
/* 8022A0F4 00227054  7C 80 23 78 */	mr r0, r4
/* 8022A0F8 00227058  39 00 00 0E */	li r8, 0xe
/* 8022A0FC 0022705C  38 C0 00 05 */	li r6, 5
/* 8022A100 00227060  38 A0 FF FF */	li r5, -1
/* 8022A104 00227064  3B EA 00 04 */	addi r31, r10, 4
/* 8022A108 00227068  91 21 00 08 */	stw r9, 8(r1)
/* 8022A10C 0022706C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8022A110 00227070  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 8022A114 00227074  7F E3 FB 78 */	mr r3, r31
/* 8022A118 00227078  90 81 00 24 */	stw r4, 0x24(r1)
/* 8022A11C 0022707C  38 80 00 0E */	li r4, 0xe
/* 8022A120 00227080  91 01 00 0C */	stw r8, 0xc(r1)
/* 8022A124 00227084  90 E1 00 08 */	stw r7, 8(r1)
/* 8022A128 00227088  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8022A12C 0022708C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8022A130 00227090  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8022A134 00227094  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022A138 00227098  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8022A13C 0022709C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022A140 002270A0  4B F0 72 F9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022A144 002270A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022A148 002270A8  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8022A14C 002270AC  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8022A150 002270B0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022A154 002270B4  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8022A158 002270B8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022A15C 002270BC  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8022A160 002270C0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8022A164 002270C4  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8022A168 002270C8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8022A16C 002270CC  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8022A170 002270D0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8022A174 002270D4  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8022A178 002270D8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8022A17C 002270DC  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8022A180 002270E0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8022A184 002270E4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8022A188 002270E8  90 81 00 08 */	stw r4, 8(r1)
/* 8022A18C 002270EC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8022A190 002270F0  90 01 00 08 */	stw r0, 8(r1)
/* 8022A194 002270F4  48 00 00 30 */	b lbl_8022A1C4
lbl_8022A198:
/* 8022A198 002270F8  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8022A19C 002270FC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8022A1A0 00227100  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022A1A4 00227104  41 82 00 20 */	beq lbl_8022A1C4
/* 8022A1A8 00227108  38 00 00 03 */	li r0, 3
/* 8022A1AC 0022710C  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022A1B0 00227110  48 00 00 14 */	b lbl_8022A1C4
lbl_8022A1B4:
/* 8022A1B4 00227114  7C 85 23 78 */	mr r5, r4
/* 8022A1B8 00227118  38 80 00 09 */	li r4, 9
/* 8022A1BC 0022711C  38 C0 FF FF */	li r6, -1
/* 8022A1C0 00227120  4B E2 6F 01 */	bl SendScriptMsgs__7CEntityF18EScriptObjectStateR13CStateManager20EScriptObjectMessage
lbl_8022A1C4:
/* 8022A1C4 00227124  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022A1C8 00227128  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022A1CC 0022712C  7C 08 03 A6 */	mtlr r0
/* 8022A1D0 00227130  38 21 00 30 */	addi r1, r1, 0x30
/* 8022A1D4 00227134  4E 80 00 20 */	blr 

.global Cover__12CElitePirateFR13CStateManager9EStateMsgf
Cover__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022A1D8 00227138  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8022A1DC 0022713C  7C 08 02 A6 */	mflr r0
/* 8022A1E0 00227140  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8022A1E4 00227144  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8022A1E8 00227148  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8022A1EC 0022714C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8022A1F0 00227150  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8022A1F4 00227154  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 8022A1F8 00227158  7C BF 2B 78 */	mr r31, r5
/* 8022A1FC 0022715C  FF E0 08 90 */	fmr f31, f1
/* 8022A200 00227160  2C 1F 00 01 */	cmpwi r31, 1
/* 8022A204 00227164  7C 7D 1B 78 */	mr r29, r3
/* 8022A208 00227168  7C 9E 23 78 */	mr r30, r4
/* 8022A20C 0022716C  41 82 01 0C */	beq lbl_8022A318
/* 8022A210 00227170  40 80 00 10 */	bge lbl_8022A220
/* 8022A214 00227174  2C 1F 00 00 */	cmpwi r31, 0
/* 8022A218 00227178  40 80 00 14 */	bge lbl_8022A22C
/* 8022A21C 0022717C  48 00 04 68 */	b lbl_8022A684
lbl_8022A220:
/* 8022A220 00227180  2C 1F 00 03 */	cmpwi r31, 3
/* 8022A224 00227184  40 80 04 60 */	bge lbl_8022A684
/* 8022A228 00227188  48 00 03 E4 */	b lbl_8022A60C
lbl_8022A22C:
/* 8022A22C 0022718C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022A230 00227190  38 80 00 00 */	li r4, 0
/* 8022A234 00227194  4B F1 07 A5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022A238 00227198  7F A3 EB 78 */	mr r3, r29
/* 8022A23C 0022719C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A240 002271A0  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022A244 002271A4  7D 89 03 A6 */	mtctr r12
/* 8022A248 002271A8  4E 80 04 21 */	bctrl 
/* 8022A24C 002271AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A250 002271B0  41 82 00 3C */	beq lbl_8022A28C
/* 8022A254 002271B4  A0 1D 07 70 */	lhz r0, 0x770(r29)
/* 8022A258 002271B8  7F C3 F3 78 */	mr r3, r30
/* 8022A25C 002271BC  38 81 00 14 */	addi r4, r1, 0x14
/* 8022A260 002271C0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8022A264 002271C4  4B E2 23 11 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022A268 002271C8  7C 64 1B 78 */	mr r4, r3
/* 8022A26C 002271CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8022A270 002271D0  4B E8 50 DD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022A274 002271D4  80 63 00 04 */	lwz r3, 4(r3)
/* 8022A278 002271D8  28 03 00 00 */	cmplwi r3, 0
/* 8022A27C 002271DC  41 82 00 10 */	beq lbl_8022A28C
/* 8022A280 002271E0  3C 80 80 57 */	lis r4, lbl_8056D718@ha
/* 8022A284 002271E4  38 84 D7 18 */	addi r4, r4, lbl_8056D718@l
/* 8022A288 002271E8  4B F7 E9 11 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8022A28C:
/* 8022A28C 002271EC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8022A290 002271F0  7F C4 F3 78 */	mr r4, r30
/* 8022A294 002271F4  38 A0 00 01 */	li r5, 1
/* 8022A298 002271F8  4B F7 D0 61 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8022A29C 002271FC  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 8022A2A0 00227200  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8022A2A4 00227204  38 81 00 10 */	addi r4, r1, 0x10
/* 8022A2A8 00227208  A0 05 00 08 */	lhz r0, 8(r5)
/* 8022A2AC 0022720C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022A2B0 00227210  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8022A2B4 00227214  4B F4 AF 65 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8022A2B8 00227218  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8022A2BC 0022721C  38 80 00 01 */	li r4, 1
/* 8022A2C0 00227220  4B F4 AF 65 */	bl SetActive__13CBoneTrackingFb
/* 8022A2C4 00227224  7F A3 EB 78 */	mr r3, r29
/* 8022A2C8 00227228  7F C4 F3 78 */	mr r4, r30
/* 8022A2CC 0022722C  4B FF E3 69 */	bl sub_80228634
/* 8022A2D0 00227230  FC 20 F8 90 */	fmr f1, f31
/* 8022A2D4 00227234  7F A3 EB 78 */	mr r3, r29
/* 8022A2D8 00227238  7F C4 F3 78 */	mr r4, r30
/* 8022A2DC 0022723C  7F E5 FB 78 */	mr r5, r31
/* 8022A2E0 00227240  4B FC C3 ED */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022A2E4 00227244  7F A3 EB 78 */	mr r3, r29
/* 8022A2E8 00227248  7F C4 F3 78 */	mr r4, r30
/* 8022A2EC 0022724C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A2F0 00227250  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A2F4 00227254  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8022A2F8 00227258  7D 89 03 A6 */	mtctr r12
/* 8022A2FC 0022725C  4E 80 04 21 */	bctrl 
/* 8022A300 00227260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A304 00227264  41 82 03 80 */	beq lbl_8022A684
/* 8022A308 00227268  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022A30C 0022726C  38 63 00 04 */	addi r3, r3, 4
/* 8022A310 00227270  4B F0 71 99 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8022A314 00227274  48 00 03 70 */	b lbl_8022A684
lbl_8022A318:
/* 8022A318 00227278  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022A31C 0022727C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8022A320 00227280  41 82 00 34 */	beq lbl_8022A354
/* 8022A324 00227284  C0 3D 07 C0 */	lfs f1, 0x7c0(r29)
/* 8022A328 00227288  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022A32C 0022728C  EC 21 F8 28 */	fsubs f1, f1, f31
/* 8022A330 00227290  D0 3D 07 C0 */	stfs f1, 0x7c0(r29)
/* 8022A334 00227294  C0 3D 07 C0 */	lfs f1, 0x7c0(r29)
/* 8022A338 00227298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022A33C 0022729C  4C 40 13 82 */	cror 2, 0, 2
/* 8022A340 002272A0  40 82 00 14 */	bne lbl_8022A354
/* 8022A344 002272A4  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022A348 002272A8  38 60 00 00 */	li r3, 0
/* 8022A34C 002272AC  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8022A350 002272B0  98 1D 09 88 */	stb r0, 0x988(r29)
lbl_8022A354:
/* 8022A354 002272B4  7F A3 EB 78 */	mr r3, r29
/* 8022A358 002272B8  7F C4 F3 78 */	mr r4, r30
/* 8022A35C 002272BC  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A360 002272C0  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A364 002272C4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022A368 002272C8  7D 89 03 A6 */	mtctr r12
/* 8022A36C 002272CC  4E 80 04 21 */	bctrl 
/* 8022A370 002272D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A374 002272D4  41 82 00 10 */	beq lbl_8022A384
/* 8022A378 002272D8  C0 1D 07 A8 */	lfs f0, 0x7a8(r29)
/* 8022A37C 002272DC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8022A380 002272E0  48 00 00 08 */	b lbl_8022A388
lbl_8022A384:
/* 8022A384 002272E4  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
lbl_8022A388:
/* 8022A388 002272E8  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8022A38C 002272EC  7F A3 EB 78 */	mr r3, r29
/* 8022A390 002272F0  7F C4 F3 78 */	mr r4, r30
/* 8022A394 002272F4  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A398 002272F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A39C 002272FC  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8022A3A0 00227300  7D 89 03 A6 */	mtctr r12
/* 8022A3A4 00227304  4E 80 04 21 */	bctrl 
/* 8022A3A8 00227308  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A3AC 0022730C  40 82 00 40 */	bne lbl_8022A3EC
/* 8022A3B0 00227310  7F A3 EB 78 */	mr r3, r29
/* 8022A3B4 00227314  7F C4 F3 78 */	mr r4, r30
/* 8022A3B8 00227318  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A3BC 0022731C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A3C0 00227320  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022A3C4 00227324  7D 89 03 A6 */	mtctr r12
/* 8022A3C8 00227328  4E 80 04 21 */	bctrl 
/* 8022A3CC 0022732C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A3D0 00227330  40 82 00 1C */	bne lbl_8022A3EC
/* 8022A3D4 00227334  FC 20 F8 90 */	fmr f1, f31
/* 8022A3D8 00227338  7F A3 EB 78 */	mr r3, r29
/* 8022A3DC 0022733C  7F C4 F3 78 */	mr r4, r30
/* 8022A3E0 00227340  7F E5 FB 78 */	mr r5, r31
/* 8022A3E4 00227344  4B FC C2 E9 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022A3E8 00227348  48 00 02 04 */	b lbl_8022A5EC
lbl_8022A3EC:
/* 8022A3EC 0022734C  7F A3 EB 78 */	mr r3, r29
/* 8022A3F0 00227350  7F C4 F3 78 */	mr r4, r30
/* 8022A3F4 00227354  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A3F8 00227358  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A3FC 0022735C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022A400 00227360  7D 89 03 A6 */	mtctr r12
/* 8022A404 00227364  4E 80 04 21 */	bctrl 
/* 8022A408 00227368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A40C 0022736C  41 82 00 F4 */	beq lbl_8022A500
/* 8022A410 00227370  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 8022A414 00227374  38 61 00 70 */	addi r3, r1, 0x70
/* 8022A418 00227378  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8022A41C 0022737C  38 9D 08 C0 */	addi r4, r29, 0x8c0
/* 8022A420 00227380  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 8022A424 00227384  38 A1 00 64 */	addi r5, r1, 0x64
/* 8022A428 00227388  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8022A42C 0022738C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8022A430 00227390  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8022A434 00227394  81 01 00 40 */	lwz r8, 0x40(r1)
/* 8022A438 00227398  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8022A43C 0022739C  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8022A440 002273A0  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8022A444 002273A4  91 01 00 4C */	stw r8, 0x4c(r1)
/* 8022A448 002273A8  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8022A44C 002273AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022A450 002273B0  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 8022A454 002273B4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8022A458 002273B8  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 8022A45C 002273BC  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8022A460 002273C0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8022A464 002273C4  81 01 00 58 */	lwz r8, 0x58(r1)
/* 8022A468 002273C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8022A46C 002273CC  80 E1 00 5C */	lwz r7, 0x5c(r1)
/* 8022A470 002273D0  80 01 00 60 */	lwz r0, 0x60(r1)
/* 8022A474 002273D4  91 01 00 64 */	stw r8, 0x64(r1)
/* 8022A478 002273D8  90 E1 00 68 */	stw r7, 0x68(r1)
/* 8022A47C 002273DC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8022A480 002273E0  48 07 63 71 */	bl sub_802a07f0
/* 8022A484 002273E4  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8022A488 002273E8  38 00 00 00 */	li r0, 0
/* 8022A48C 002273EC  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022A490 002273F0  C0 81 00 74 */	lfs f4, 0x74(r1)
/* 8022A494 002273F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022A498 002273F8  C0 A1 00 78 */	lfs f5, 0x78(r1)
/* 8022A49C 002273FC  40 82 00 14 */	bne lbl_8022A4B0
/* 8022A4A0 00227400  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8022A4A4 00227404  40 82 00 0C */	bne lbl_8022A4B0
/* 8022A4A8 00227408  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8022A4AC 0022740C  41 82 00 08 */	beq lbl_8022A4B4
lbl_8022A4B0:
/* 8022A4B0 00227410  38 00 00 01 */	li r0, 1
lbl_8022A4B4:
/* 8022A4B4 00227414  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022A4B8 00227418  41 82 01 34 */	beq lbl_8022A5EC
/* 8022A4BC 0022741C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022A4C0 00227420  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 8022A4C4 00227424  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022A4C8 00227428  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8022A4CC 0022742C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8022A4D0 00227430  C0 43 00 04 */	lfs f2, 4(r3)
/* 8022A4D4 00227434  C0 23 00 08 */	lfs f1, 8(r3)
/* 8022A4D8 00227438  D0 81 00 A8 */	stfs f4, 0xa8(r1)
/* 8022A4DC 0022743C  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 8022A4E0 00227440  D0 61 00 B0 */	stfs f3, 0xb0(r1)
/* 8022A4E4 00227444  D0 41 00 B4 */	stfs f2, 0xb4(r1)
/* 8022A4E8 00227448  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 8022A4EC 0022744C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8022A4F0 00227450  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022A4F4 00227454  38 63 00 04 */	addi r3, r3, 4
/* 8022A4F8 00227458  4B F0 72 21 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022A4FC 0022745C  48 00 00 F0 */	b lbl_8022A5EC
lbl_8022A500:
/* 8022A500 00227460  7F A3 EB 78 */	mr r3, r29
/* 8022A504 00227464  7F C4 F3 78 */	mr r4, r30
/* 8022A508 00227468  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A50C 0022746C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A510 00227470  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022A514 00227474  7D 89 03 A6 */	mtctr r12
/* 8022A518 00227478  4E 80 04 21 */	bctrl 
/* 8022A51C 0022747C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A520 00227480  41 82 00 CC */	beq lbl_8022A5EC
/* 8022A524 00227484  80 DD 00 64 */	lwz r6, 0x64(r29)
/* 8022A528 00227488  7F C5 F3 78 */	mr r5, r30
/* 8022A52C 0022748C  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8022A530 00227490  38 61 00 34 */	addi r3, r1, 0x34
/* 8022A534 00227494  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022A538 00227498  81 84 00 00 */	lwz r12, 0(r4)
/* 8022A53C 0022749C  C0 22 B5 BC */	lfs f1, lbl_805AD2DC@sda21(r2)
/* 8022A540 002274A0  C0 06 02 00 */	lfs f0, 0x200(r6)
/* 8022A544 002274A4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022A548 002274A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022A54C 002274AC  7D 89 03 A6 */	mtctr r12
/* 8022A550 002274B0  4E 80 04 21 */	bctrl 
/* 8022A554 002274B4  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8022A558 002274B8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8022A55C 002274BC  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8022A560 002274C0  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 8022A564 002274C4  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 8022A568 002274C8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8022A56C 002274CC  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8022A570 002274D0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8022A574 002274D4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022A578 002274D8  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 8022A57C 002274DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022A580 002274E0  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 8022A584 002274E4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8022A588 002274E8  48 0E A1 71 */	bl CanBeNormalized__9CVector3fCFv
/* 8022A58C 002274EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A590 002274F0  41 82 00 5C */	beq lbl_8022A5EC
/* 8022A594 002274F4  38 61 00 28 */	addi r3, r1, 0x28
/* 8022A598 002274F8  38 81 00 7C */	addi r4, r1, 0x7c
/* 8022A59C 002274FC  48 0E A2 B5 */	bl AsNormalized__9CVector3fCFv
/* 8022A5A0 00227500  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022A5A4 00227504  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8022A5A8 00227508  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8022A5AC 0022750C  38 81 00 88 */	addi r4, r1, 0x88
/* 8022A5B0 00227510  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8022A5B4 00227514  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8022A5B8 00227518  C0 83 00 08 */	lfs f4, 8(r3)
/* 8022A5BC 0022751C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8022A5C0 00227520  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022A5C4 00227524  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 8022A5C8 00227528  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8022A5CC 0022752C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8022A5D0 00227530  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8022A5D4 00227534  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8022A5D8 00227538  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8022A5DC 0022753C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8022A5E0 00227540  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022A5E4 00227544  38 63 00 04 */	addi r3, r3, 4
/* 8022A5E8 00227548  4B F0 71 31 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_8022A5EC:
/* 8022A5EC 0022754C  7F A3 EB 78 */	mr r3, r29
/* 8022A5F0 00227550  7F C4 F3 78 */	mr r4, r30
/* 8022A5F4 00227554  4B FF D4 9D */	bl sub_80227a90
/* 8022A5F8 00227558  FC 20 F8 90 */	fmr f1, f31
/* 8022A5FC 0022755C  7F A3 EB 78 */	mr r3, r29
/* 8022A600 00227560  7F C4 F3 78 */	mr r4, r30
/* 8022A604 00227564  4B FF D1 DD */	bl sub_802277e0
/* 8022A608 00227568  48 00 00 7C */	b lbl_8022A684
lbl_8022A60C:
/* 8022A60C 0022756C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022A610 00227570  38 80 00 01 */	li r4, 1
/* 8022A614 00227574  4B F1 03 C5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022A618 00227578  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8022A61C 0022757C  38 80 00 00 */	li r4, 0
/* 8022A620 00227580  4B F4 AC 05 */	bl SetActive__13CBoneTrackingFb
/* 8022A624 00227584  7F A3 EB 78 */	mr r3, r29
/* 8022A628 00227588  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022A62C 0022758C  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022A630 00227590  7D 89 03 A6 */	mtctr r12
/* 8022A634 00227594  4E 80 04 21 */	bctrl 
/* 8022A638 00227598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A63C 0022759C  41 82 00 38 */	beq lbl_8022A674
/* 8022A640 002275A0  A0 1D 07 70 */	lhz r0, 0x770(r29)
/* 8022A644 002275A4  7F C3 F3 78 */	mr r3, r30
/* 8022A648 002275A8  38 81 00 08 */	addi r4, r1, 8
/* 8022A64C 002275AC  B0 01 00 08 */	sth r0, 8(r1)
/* 8022A650 002275B0  4B E2 1F 25 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022A654 002275B4  7C 64 1B 78 */	mr r4, r3
/* 8022A658 002275B8  38 61 00 18 */	addi r3, r1, 0x18
/* 8022A65C 002275BC  4B E8 4C F1 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022A660 002275C0  80 63 00 04 */	lwz r3, 4(r3)
/* 8022A664 002275C4  28 03 00 00 */	cmplwi r3, 0
/* 8022A668 002275C8  41 82 00 0C */	beq lbl_8022A674
/* 8022A66C 002275CC  38 9D 05 6C */	addi r4, r29, 0x56c
/* 8022A670 002275D0  4B F7 E5 29 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_8022A674:
/* 8022A674 002275D4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8022A678 002275D8  7F C4 F3 78 */	mr r4, r30
/* 8022A67C 002275DC  38 A0 00 00 */	li r5, 0
/* 8022A680 002275E0  4B F7 CC 79 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_8022A684:
/* 8022A684 002275E4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8022A688 002275E8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8022A68C 002275EC  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8022A690 002275F0  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8022A694 002275F4  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8022A698 002275F8  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 8022A69C 002275FC  7C 08 03 A6 */	mtlr r0
/* 8022A6A0 00227600  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8022A6A4 00227604  4E 80 00 20 */	blr 

.global Attack__12CElitePirateFR13CStateManager9EStateMsgf
Attack__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022A6A8 00227608  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022A6AC 0022760C  7C 08 02 A6 */	mflr r0
/* 8022A6B0 00227610  2C 05 00 01 */	cmpwi r5, 1
/* 8022A6B4 00227614  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022A6B8 00227618  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8022A6BC 0022761C  7C 9F 23 78 */	mr r31, r4
/* 8022A6C0 00227620  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8022A6C4 00227624  7C 7E 1B 78 */	mr r30, r3
/* 8022A6C8 00227628  41 82 00 54 */	beq lbl_8022A71C
/* 8022A6CC 0022762C  40 80 00 10 */	bge lbl_8022A6DC
/* 8022A6D0 00227630  2C 05 00 00 */	cmpwi r5, 0
/* 8022A6D4 00227634  40 80 00 14 */	bge lbl_8022A6E8
/* 8022A6D8 00227638  48 00 03 90 */	b lbl_8022AA68
lbl_8022A6DC:
/* 8022A6DC 0022763C  2C 05 00 03 */	cmpwi r5, 3
/* 8022A6E0 00227640  40 80 03 88 */	bge lbl_8022AA68
/* 8022A6E4 00227644  48 00 03 10 */	b lbl_8022A9F4
lbl_8022A6E8:
/* 8022A6E8 00227648  38 00 00 00 */	li r0, 0
/* 8022A6EC 0022764C  3C A0 80 57 */	lis r5, lbl_805723E0@ha
/* 8022A6F0 00227650  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022A6F4 00227654  38 C5 23 E0 */	addi r6, r5, lbl_805723E0@l
/* 8022A6F8 00227658  38 BE 07 74 */	addi r5, r30, 0x774
/* 8022A6FC 0022765C  4B FF EC 4D */	bl sub_80229348
/* 8022A700 00227660  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8022A704 00227664  4B EE A5 45 */	bl GetNumMaterialSets__10CModelDataCFv
/* 8022A708 00227668  2C 03 00 01 */	cmpwi r3, 1
/* 8022A70C 0022766C  40 81 03 5C */	ble lbl_8022AA68
/* 8022A710 00227670  38 00 00 01 */	li r0, 1
/* 8022A714 00227674  90 1E 07 CC */	stw r0, 0x7cc(r30)
/* 8022A718 00227678  48 00 03 50 */	b lbl_8022AA68
lbl_8022A71C:
/* 8022A71C 0022767C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8022A720 00227680  2C 00 00 01 */	cmpwi r0, 1
/* 8022A724 00227684  41 82 00 FC */	beq lbl_8022A820
/* 8022A728 00227688  40 80 00 10 */	bge lbl_8022A738
/* 8022A72C 0022768C  2C 00 00 00 */	cmpwi r0, 0
/* 8022A730 00227690  40 80 00 14 */	bge lbl_8022A744
/* 8022A734 00227694  48 00 03 34 */	b lbl_8022AA68
lbl_8022A738:
/* 8022A738 00227698  2C 00 00 03 */	cmpwi r0, 3
/* 8022A73C 0022769C  40 80 03 2C */	bge lbl_8022AA68
/* 8022A740 002276A0  48 00 02 60 */	b lbl_8022A9A0
lbl_8022A744:
/* 8022A744 002276A4  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 8022A748 002276A8  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 8022A74C 002276AC  2C 00 00 07 */	cmpwi r0, 7
/* 8022A750 002276B0  40 82 00 28 */	bne lbl_8022A778
/* 8022A754 002276B4  38 60 00 01 */	li r3, 1
/* 8022A758 002276B8  90 7E 05 68 */	stw r3, 0x568(r30)
/* 8022A75C 002276BC  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022A760 002276C0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 8022A764 002276C4  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022A768 002276C8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022A76C 002276CC  80 03 02 F8 */	lwz r0, 0x2f8(r3)
/* 8022A770 002276D0  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 8022A774 002276D4  48 00 02 F4 */	b lbl_8022AA68
lbl_8022A778:
/* 8022A778 002276D8  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8022A77C 002276DC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022A780 002276E0  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 8022A784 002276E4  38 C5 AA 68 */	addi r6, r5, lbl_803DAA68@l
/* 8022A788 002276E8  3C 80 80 3E */	lis r4, lbl_803DA9D8@ha
/* 8022A78C 002276EC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8022A790 002276F0  38 C4 A9 D8 */	addi r6, r4, lbl_803DA9D8@l
/* 8022A794 002276F4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8022A798 002276F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8022A79C 002276FC  38 E0 00 05 */	li r7, 5
/* 8022A7A0 00227700  38 A0 00 01 */	li r5, 1
/* 8022A7A4 00227704  38 00 00 00 */	li r0, 0
/* 8022A7A8 00227708  3B C8 00 04 */	addi r30, r8, 4
/* 8022A7AC 0022770C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 8022A7B0 00227710  7F C3 F3 78 */	mr r3, r30
/* 8022A7B4 00227714  38 80 00 05 */	li r4, 5
/* 8022A7B8 00227718  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8022A7BC 0022771C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8022A7C0 00227720  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8022A7C4 00227724  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8022A7C8 00227728  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8022A7CC 0022772C  98 01 00 3C */	stb r0, 0x3c(r1)
/* 8022A7D0 00227730  4B F0 6C 69 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022A7D4 00227734  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8022A7D8 00227738  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8022A7DC 0022773C  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8022A7E0 00227740  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022A7E4 00227744  90 1E 01 10 */	stw r0, 0x110(r30)
/* 8022A7E8 00227748  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022A7EC 0022774C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8022A7F0 00227750  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 8022A7F4 00227754  90 7E 01 14 */	stw r3, 0x114(r30)
/* 8022A7F8 00227758  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8022A7FC 0022775C  90 BE 01 18 */	stw r5, 0x118(r30)
/* 8022A800 00227760  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8022A804 00227764  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 8022A808 00227768  88 61 00 3C */	lbz r3, 0x3c(r1)
/* 8022A80C 0022776C  90 BE 01 20 */	stw r5, 0x120(r30)
/* 8022A810 00227770  90 81 00 24 */	stw r4, 0x24(r1)
/* 8022A814 00227774  98 7E 01 24 */	stb r3, 0x124(r30)
/* 8022A818 00227778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022A81C 0022777C  48 00 02 4C */	b lbl_8022AA68
lbl_8022A820:
/* 8022A820 00227780  80 DE 04 50 */	lwz r6, 0x450(r30)
/* 8022A824 00227784  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 8022A828 00227788  2C 00 00 07 */	cmpwi r0, 7
/* 8022A82C 0022778C  41 82 00 10 */	beq lbl_8022A83C
/* 8022A830 00227790  38 00 00 03 */	li r0, 3
/* 8022A834 00227794  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022A838 00227798  48 00 02 30 */	b lbl_8022AA68
lbl_8022A83C:
/* 8022A83C 0022779C  80 BE 07 C8 */	lwz r5, 0x7c8(r30)
/* 8022A840 002277A0  80 06 02 F8 */	lwz r0, 0x2f8(r6)
/* 8022A844 002277A4  7C 05 00 00 */	cmpw r5, r0
/* 8022A848 002277A8  41 82 00 58 */	beq lbl_8022A8A0
/* 8022A84C 002277AC  38 00 00 02 */	li r0, 2
/* 8022A850 002277B0  3C A0 80 5A */	lis r5, skZero3f@ha
/* 8022A854 002277B4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022A858 002277B8  38 C5 66 A0 */	addi r6, r5, skZero3f@l
/* 8022A85C 002277BC  38 A0 00 00 */	li r5, 0
/* 8022A860 002277C0  38 E0 00 01 */	li r7, 1
/* 8022A864 002277C4  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022A868 002277C8  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 8022A86C 002277CC  38 BE 07 74 */	addi r5, r30, 0x774
/* 8022A870 002277D0  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022A874 002277D4  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022A878 002277D8  50 E0 2E B4 */	rlwimi r0, r7, 5, 0x1a, 0x1a
/* 8022A87C 002277DC  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022A880 002277E0  4B FF EA C9 */	bl sub_80229348
/* 8022A884 002277E4  3C 80 80 57 */	lis r4, lbl_805723E0@ha
/* 8022A888 002277E8  7F C3 F3 78 */	mr r3, r30
/* 8022A88C 002277EC  38 C4 23 E0 */	addi r6, r4, lbl_805723E0@l
/* 8022A890 002277F0  38 BE 07 88 */	addi r5, r30, 0x788
/* 8022A894 002277F4  7F E4 FB 78 */	mr r4, r31
/* 8022A898 002277F8  4B FF EA B1 */	bl sub_80229348
/* 8022A89C 002277FC  48 00 01 CC */	b lbl_8022AA68
lbl_8022A8A0:
/* 8022A8A0 00227800  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8022A8A4 00227804  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8022A8A8 00227808  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 8022A8AC 0022780C  C0 A5 00 50 */	lfs f5, 0x50(r5)
/* 8022A8B0 00227810  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 8022A8B4 00227814  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022A8B8 00227818  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 8022A8BC 0022781C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8022A8C0 00227820  EC 85 20 28 */	fsubs f4, f5, f4
/* 8022A8C4 00227824  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022A8C8 00227828  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 8022A8CC 0022782C  EC 03 10 28 */	fsubs f0, f3, f2
/* 8022A8D0 00227830  D0 86 00 20 */	stfs f4, 0x20(r6)
/* 8022A8D4 00227834  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8022A8D8 00227838  81 83 00 00 */	lwz r12, 0(r3)
/* 8022A8DC 0022783C  81 8C 01 DC */	lwz r12, 0x1dc(r12)
/* 8022A8E0 00227840  7D 89 03 A6 */	mtctr r12
/* 8022A8E4 00227844  4E 80 04 21 */	bctrl 
/* 8022A8E8 00227848  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022A8EC 0022784C  41 82 01 7C */	beq lbl_8022AA68
/* 8022A8F0 00227850  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8022A8F4 00227854  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022A8F8 00227858  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 8022A8FC 0022785C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022A900 00227860  39 05 AA 68 */	addi r8, r5, lbl_803DAA68@l
/* 8022A904 00227864  C0 44 00 00 */	lfs f2, 0(r4)
/* 8022A908 00227868  C0 24 00 04 */	lfs f1, 4(r4)
/* 8022A90C 0022786C  3C C0 80 3E */	lis r6, lbl_803DA9D8@ha
/* 8022A910 00227870  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022A914 00227874  38 E0 00 05 */	li r7, 5
/* 8022A918 00227878  38 A0 00 02 */	li r5, 2
/* 8022A91C 0022787C  38 00 00 00 */	li r0, 0
/* 8022A920 00227880  3B C3 00 04 */	addi r30, r3, 4
/* 8022A924 00227884  91 01 00 08 */	stw r8, 8(r1)
/* 8022A928 00227888  38 C6 A9 D8 */	addi r6, r6, lbl_803DA9D8@l
/* 8022A92C 0022788C  38 80 00 05 */	li r4, 5
/* 8022A930 00227890  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8022A934 00227894  7F C3 F3 78 */	mr r3, r30
/* 8022A938 00227898  90 C1 00 08 */	stw r6, 8(r1)
/* 8022A93C 0022789C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8022A940 002278A0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8022A944 002278A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8022A948 002278A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022A94C 002278AC  98 01 00 20 */	stb r0, 0x20(r1)
/* 8022A950 002278B0  4B F0 6A E9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022A954 002278B4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022A958 002278B8  3C 60 80 3E */	lis r3, lbl_803DA9D8@ha
/* 8022A95C 002278BC  38 83 A9 D8 */	addi r4, r3, lbl_803DA9D8@l
/* 8022A960 002278C0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022A964 002278C4  90 1E 01 10 */	stw r0, 0x110(r30)
/* 8022A968 002278C8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022A96C 002278CC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8022A970 002278D0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8022A974 002278D4  90 7E 01 14 */	stw r3, 0x114(r30)
/* 8022A978 002278D8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8022A97C 002278DC  90 BE 01 18 */	stw r5, 0x118(r30)
/* 8022A980 002278E0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8022A984 002278E4  90 7E 01 1C */	stw r3, 0x11c(r30)
/* 8022A988 002278E8  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8022A98C 002278EC  90 BE 01 20 */	stw r5, 0x120(r30)
/* 8022A990 002278F0  90 81 00 08 */	stw r4, 8(r1)
/* 8022A994 002278F4  98 7E 01 24 */	stb r3, 0x124(r30)
/* 8022A998 002278F8  90 01 00 08 */	stw r0, 8(r1)
/* 8022A99C 002278FC  48 00 00 CC */	b lbl_8022AA68
lbl_8022A9A0:
/* 8022A9A0 00227900  80 9E 04 50 */	lwz r4, 0x450(r30)
/* 8022A9A4 00227904  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8022A9A8 00227908  2C 00 00 07 */	cmpwi r0, 7
/* 8022A9AC 0022790C  41 82 00 10 */	beq lbl_8022A9BC
/* 8022A9B0 00227910  38 00 00 03 */	li r0, 3
/* 8022A9B4 00227914  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022A9B8 00227918  48 00 00 B0 */	b lbl_8022AA68
lbl_8022A9BC:
/* 8022A9BC 0022791C  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8022A9C0 00227920  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8022A9C4 00227924  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8022A9C8 00227928  C0 83 00 50 */	lfs f4, 0x50(r3)
/* 8022A9CC 0022792C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 8022A9D0 00227930  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022A9D4 00227934  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8022A9D8 00227938  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8022A9DC 0022793C  EC 64 18 28 */	fsubs f3, f4, f3
/* 8022A9E0 00227940  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8022A9E4 00227944  EC 02 08 28 */	fsubs f0, f2, f1
/* 8022A9E8 00227948  D0 64 00 20 */	stfs f3, 0x20(r4)
/* 8022A9EC 0022794C  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 8022A9F0 00227950  48 00 00 78 */	b lbl_8022AA68
lbl_8022A9F4:
/* 8022A9F4 00227954  4B FF DB D1 */	bl sub_802285c4
/* 8022A9F8 00227958  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022A9FC 0022795C  39 00 00 00 */	li r8, 0
/* 8022AA00 00227960  51 00 3E 30 */	rlwimi r0, r8, 7, 0x18, 0x18
/* 8022AA04 00227964  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022AA08 00227968  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022AA0C 0022796C  54 08 CF FE */	rlwinm r8, r0, 0x19, 0x1f, 0x1f
/* 8022AA10 00227970  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 8022AA14 00227974  38 00 FF FF */	li r0, -1
/* 8022AA18 00227978  88 BE 09 88 */	lbz r5, 0x988(r30)
/* 8022AA1C 0022797C  51 05 2E B4 */	rlwimi r5, r8, 5, 0x1a, 0x1a
/* 8022AA20 00227980  7F C3 F3 78 */	mr r3, r30
/* 8022AA24 00227984  7F E4 FB 78 */	mr r4, r31
/* 8022AA28 00227988  98 BE 09 88 */	stb r5, 0x988(r30)
/* 8022AA2C 0022798C  54 A8 DF FE */	rlwinm r8, r5, 0x1b, 0x1f, 0x1f
/* 8022AA30 00227990  38 BE 07 74 */	addi r5, r30, 0x774
/* 8022AA34 00227994  88 FE 09 88 */	lbz r7, 0x988(r30)
/* 8022AA38 00227998  51 07 36 72 */	rlwimi r7, r8, 6, 0x19, 0x19
/* 8022AA3C 0022799C  98 FE 09 88 */	stb r7, 0x988(r30)
/* 8022AA40 002279A0  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 8022AA44 002279A4  4B FF E9 05 */	bl sub_80229348
/* 8022AA48 002279A8  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8022AA4C 002279AC  7F C3 F3 78 */	mr r3, r30
/* 8022AA50 002279B0  38 C4 66 A0 */	addi r6, r4, skZero3f@l
/* 8022AA54 002279B4  38 BE 07 88 */	addi r5, r30, 0x788
/* 8022AA58 002279B8  7F E4 FB 78 */	mr r4, r31
/* 8022AA5C 002279BC  4B FF E8 ED */	bl sub_80229348
/* 8022AA60 002279C0  38 00 00 00 */	li r0, 0
/* 8022AA64 002279C4  90 1E 07 CC */	stw r0, 0x7cc(r30)
lbl_8022AA68:
/* 8022AA68 002279C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022AA6C 002279CC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8022AA70 002279D0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8022AA74 002279D4  7C 08 03 A6 */	mtlr r0
/* 8022AA78 002279D8  38 21 00 50 */	addi r1, r1, 0x50
/* 8022AA7C 002279DC  4E 80 00 20 */	blr 

.global SpecialAttack__12CElitePirateFR13CStateManager9EStateMsgf
SpecialAttack__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022AA80 002279E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022AA84 002279E4  7C 08 02 A6 */	mflr r0
/* 8022AA88 002279E8  2C 05 00 01 */	cmpwi r5, 1
/* 8022AA8C 002279EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022AA90 002279F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022AA94 002279F4  7C 7F 1B 78 */	mr r31, r3
/* 8022AA98 002279F8  41 82 00 2C */	beq lbl_8022AAC4
/* 8022AA9C 002279FC  40 80 00 10 */	bge lbl_8022AAAC
/* 8022AAA0 00227A00  2C 05 00 00 */	cmpwi r5, 0
/* 8022AAA4 00227A04  40 80 00 14 */	bge lbl_8022AAB8
/* 8022AAA8 00227A08  48 00 01 70 */	b lbl_8022AC18
lbl_8022AAAC:
/* 8022AAAC 00227A0C  2C 05 00 03 */	cmpwi r5, 3
/* 8022AAB0 00227A10  40 80 01 68 */	bge lbl_8022AC18
/* 8022AAB4 00227A14  48 00 01 50 */	b lbl_8022AC04
lbl_8022AAB8:
/* 8022AAB8 00227A18  38 00 00 00 */	li r0, 0
/* 8022AABC 00227A1C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8022AAC0 00227A20  48 00 01 58 */	b lbl_8022AC18
lbl_8022AAC4:
/* 8022AAC4 00227A24  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8022AAC8 00227A28  80 64 08 4C */	lwz r3, 0x84c(r4)
/* 8022AACC 00227A2C  2C 00 00 01 */	cmpwi r0, 1
/* 8022AAD0 00227A30  C0 83 00 60 */	lfs f4, 0x60(r3)
/* 8022AAD4 00227A34  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8022AAD8 00227A38  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8022AADC 00227A3C  41 82 01 3C */	beq lbl_8022AC18
/* 8022AAE0 00227A40  40 80 00 10 */	bge lbl_8022AAF0
/* 8022AAE4 00227A44  2C 00 00 00 */	cmpwi r0, 0
/* 8022AAE8 00227A48  40 80 00 14 */	bge lbl_8022AAFC
/* 8022AAEC 00227A4C  48 00 01 2C */	b lbl_8022AC18
lbl_8022AAF0:
/* 8022AAF0 00227A50  2C 00 00 03 */	cmpwi r0, 3
/* 8022AAF4 00227A54  40 80 01 24 */	bge lbl_8022AC18
/* 8022AAF8 00227A58  48 00 00 C8 */	b lbl_8022ABC0
lbl_8022AAFC:
/* 8022AAFC 00227A5C  80 FF 04 50 */	lwz r7, 0x450(r31)
/* 8022AB00 00227A60  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 8022AB04 00227A64  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022AB08 00227A68  40 82 00 20 */	bne lbl_8022AB28
/* 8022AB0C 00227A6C  38 00 00 02 */	li r0, 2
/* 8022AB10 00227A70  38 60 00 01 */	li r3, 1
/* 8022AB14 00227A74  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8022AB18 00227A78  88 1F 09 88 */	lbz r0, 0x988(r31)
/* 8022AB1C 00227A7C  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8022AB20 00227A80  98 1F 09 88 */	stb r0, 0x988(r31)
/* 8022AB24 00227A84  48 00 00 F4 */	b lbl_8022AC18
lbl_8022AB28:
/* 8022AB28 00227A88  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8022AB2C 00227A8C  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8022AB30 00227A90  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8022AB34 00227A94  38 80 00 06 */	li r4, 6
/* 8022AB38 00227A98  90 01 00 08 */	stw r0, 8(r1)
/* 8022AB3C 00227A9C  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 8022AB40 00227AA0  38 A0 00 02 */	li r5, 2
/* 8022AB44 00227AA4  38 00 00 00 */	li r0, 0
/* 8022AB48 00227AA8  3B E7 00 04 */	addi r31, r7, 4
/* 8022AB4C 00227AAC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022AB50 00227AB0  7F E3 FB 78 */	mr r3, r31
/* 8022AB54 00227AB4  38 80 00 06 */	li r4, 6
/* 8022AB58 00227AB8  90 C1 00 08 */	stw r6, 8(r1)
/* 8022AB5C 00227ABC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8022AB60 00227AC0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8022AB64 00227AC4  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8022AB68 00227AC8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8022AB6C 00227ACC  98 01 00 20 */	stb r0, 0x20(r1)
/* 8022AB70 00227AD0  4B F0 68 C9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022AB74 00227AD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022AB78 00227AD8  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8022AB7C 00227ADC  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 8022AB80 00227AE0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022AB84 00227AE4  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8022AB88 00227AE8  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022AB8C 00227AEC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8022AB90 00227AF0  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8022AB94 00227AF4  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8022AB98 00227AF8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8022AB9C 00227AFC  90 BF 01 34 */	stw r5, 0x134(r31)
/* 8022ABA0 00227B00  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8022ABA4 00227B04  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8022ABA8 00227B08  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8022ABAC 00227B0C  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 8022ABB0 00227B10  90 81 00 08 */	stw r4, 8(r1)
/* 8022ABB4 00227B14  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8022ABB8 00227B18  90 01 00 08 */	stw r0, 8(r1)
/* 8022ABBC 00227B1C  48 00 00 5C */	b lbl_8022AC18
lbl_8022ABC0:
/* 8022ABC0 00227B20  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022ABC4 00227B24  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8022ABC8 00227B28  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022ABCC 00227B2C  41 82 00 10 */	beq lbl_8022ABDC
/* 8022ABD0 00227B30  38 00 00 03 */	li r0, 3
/* 8022ABD4 00227B34  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8022ABD8 00227B38  48 00 00 40 */	b lbl_8022AC18
lbl_8022ABDC:
/* 8022ABDC 00227B3C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8022ABE0 00227B40  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 8022ABE4 00227B44  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022ABE8 00227B48  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8022ABEC 00227B4C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022ABF0 00227B50  EC 24 08 28 */	fsubs f1, f4, f1
/* 8022ABF4 00227B54  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8022ABF8 00227B58  D0 43 00 20 */	stfs f2, 0x20(r3)
/* 8022ABFC 00227B5C  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 8022AC00 00227B60  48 00 00 18 */	b lbl_8022AC18
lbl_8022AC04:
/* 8022AC04 00227B64  4B FF D9 C1 */	bl sub_802285c4
/* 8022AC08 00227B68  88 1F 09 88 */	lbz r0, 0x988(r31)
/* 8022AC0C 00227B6C  38 60 00 00 */	li r3, 0
/* 8022AC10 00227B70  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8022AC14 00227B74  98 1F 09 88 */	stb r0, 0x988(r31)
lbl_8022AC18:
/* 8022AC18 00227B78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022AC1C 00227B7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022AC20 00227B80  7C 08 03 A6 */	mtlr r0
/* 8022AC24 00227B84  38 21 00 30 */	addi r1, r1, 0x30
/* 8022AC28 00227B88  4E 80 00 20 */	blr 

.global ProjectileAttack__12CElitePirateFR13CStateManager9EStateMsgf
ProjectileAttack__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022AC2C 00227B8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022AC30 00227B90  7C 08 02 A6 */	mflr r0
/* 8022AC34 00227B94  2C 05 00 01 */	cmpwi r5, 1
/* 8022AC38 00227B98  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022AC3C 00227B9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022AC40 00227BA0  41 82 00 2C */	beq lbl_8022AC6C
/* 8022AC44 00227BA4  40 80 00 10 */	bge lbl_8022AC54
/* 8022AC48 00227BA8  2C 05 00 00 */	cmpwi r5, 0
/* 8022AC4C 00227BAC  40 80 00 14 */	bge lbl_8022AC60
/* 8022AC50 00227BB0  48 00 01 50 */	b lbl_8022ADA0
lbl_8022AC54:
/* 8022AC54 00227BB4  2C 05 00 03 */	cmpwi r5, 3
/* 8022AC58 00227BB8  40 80 01 48 */	bge lbl_8022ADA0
/* 8022AC5C 00227BBC  48 00 01 40 */	b lbl_8022AD9C
lbl_8022AC60:
/* 8022AC60 00227BC0  38 00 00 00 */	li r0, 0
/* 8022AC64 00227BC4  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022AC68 00227BC8  48 00 01 38 */	b lbl_8022ADA0
lbl_8022AC6C:
/* 8022AC6C 00227BCC  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8022AC70 00227BD0  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8022AC74 00227BD4  2C 00 00 01 */	cmpwi r0, 1
/* 8022AC78 00227BD8  C0 84 00 60 */	lfs f4, 0x60(r4)
/* 8022AC7C 00227BDC  C0 64 00 50 */	lfs f3, 0x50(r4)
/* 8022AC80 00227BE0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8022AC84 00227BE4  41 82 01 1C */	beq lbl_8022ADA0
/* 8022AC88 00227BE8  40 80 00 10 */	bge lbl_8022AC98
/* 8022AC8C 00227BEC  2C 00 00 00 */	cmpwi r0, 0
/* 8022AC90 00227BF0  40 80 00 14 */	bge lbl_8022ACA4
/* 8022AC94 00227BF4  48 00 01 0C */	b lbl_8022ADA0
lbl_8022AC98:
/* 8022AC98 00227BF8  2C 00 00 03 */	cmpwi r0, 3
/* 8022AC9C 00227BFC  40 80 01 04 */	bge lbl_8022ADA0
/* 8022ACA0 00227C00  48 00 00 B8 */	b lbl_8022AD58
lbl_8022ACA4:
/* 8022ACA4 00227C04  80 E3 04 50 */	lwz r7, 0x450(r3)
/* 8022ACA8 00227C08  80 07 02 B8 */	lwz r0, 0x2b8(r7)
/* 8022ACAC 00227C0C  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022ACB0 00227C10  40 82 00 10 */	bne lbl_8022ACC0
/* 8022ACB4 00227C14  38 00 00 02 */	li r0, 2
/* 8022ACB8 00227C18  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022ACBC 00227C1C  48 00 00 E4 */	b lbl_8022ADA0
lbl_8022ACC0:
/* 8022ACC0 00227C20  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8022ACC4 00227C24  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8022ACC8 00227C28  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8022ACCC 00227C2C  38 80 00 06 */	li r4, 6
/* 8022ACD0 00227C30  90 01 00 08 */	stw r0, 8(r1)
/* 8022ACD4 00227C34  38 C3 A9 CC */	addi r6, r3, lbl_803DA9CC@l
/* 8022ACD8 00227C38  38 A0 00 01 */	li r5, 1
/* 8022ACDC 00227C3C  38 00 00 00 */	li r0, 0
/* 8022ACE0 00227C40  3B E7 00 04 */	addi r31, r7, 4
/* 8022ACE4 00227C44  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022ACE8 00227C48  7F E3 FB 78 */	mr r3, r31
/* 8022ACEC 00227C4C  38 80 00 06 */	li r4, 6
/* 8022ACF0 00227C50  90 C1 00 08 */	stw r6, 8(r1)
/* 8022ACF4 00227C54  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8022ACF8 00227C58  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8022ACFC 00227C5C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8022AD00 00227C60  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8022AD04 00227C64  98 01 00 20 */	stb r0, 0x20(r1)
/* 8022AD08 00227C68  4B F0 67 31 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022AD0C 00227C6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022AD10 00227C70  3C 60 80 3E */	lis r3, lbl_803DA9CC@ha
/* 8022AD14 00227C74  38 83 A9 CC */	addi r4, r3, lbl_803DA9CC@l
/* 8022AD18 00227C78  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022AD1C 00227C7C  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 8022AD20 00227C80  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022AD24 00227C84  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8022AD28 00227C88  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8022AD2C 00227C8C  90 7F 01 30 */	stw r3, 0x130(r31)
/* 8022AD30 00227C90  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8022AD34 00227C94  90 BF 01 34 */	stw r5, 0x134(r31)
/* 8022AD38 00227C98  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8022AD3C 00227C9C  90 7F 01 38 */	stw r3, 0x138(r31)
/* 8022AD40 00227CA0  88 61 00 20 */	lbz r3, 0x20(r1)
/* 8022AD44 00227CA4  90 BF 01 3C */	stw r5, 0x13c(r31)
/* 8022AD48 00227CA8  90 81 00 08 */	stw r4, 8(r1)
/* 8022AD4C 00227CAC  98 7F 01 40 */	stb r3, 0x140(r31)
/* 8022AD50 00227CB0  90 01 00 08 */	stw r0, 8(r1)
/* 8022AD54 00227CB4  48 00 00 4C */	b lbl_8022ADA0
lbl_8022AD58:
/* 8022AD58 00227CB8  80 83 04 50 */	lwz r4, 0x450(r3)
/* 8022AD5C 00227CBC  80 04 02 B8 */	lwz r0, 0x2b8(r4)
/* 8022AD60 00227CC0  2C 00 00 12 */	cmpwi r0, 0x12
/* 8022AD64 00227CC4  41 82 00 10 */	beq lbl_8022AD74
/* 8022AD68 00227CC8  38 00 00 03 */	li r0, 3
/* 8022AD6C 00227CCC  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022AD70 00227CD0  48 00 00 30 */	b lbl_8022ADA0
lbl_8022AD74:
/* 8022AD74 00227CD4  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022AD78 00227CD8  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8022AD7C 00227CDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022AD80 00227CE0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8022AD84 00227CE4  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022AD88 00227CE8  EC 24 08 28 */	fsubs f1, f4, f1
/* 8022AD8C 00227CEC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 8022AD90 00227CF0  D0 44 00 20 */	stfs f2, 0x20(r4)
/* 8022AD94 00227CF4  D0 24 00 24 */	stfs f1, 0x24(r4)
/* 8022AD98 00227CF8  48 00 00 08 */	b lbl_8022ADA0
lbl_8022AD9C:
/* 8022AD9C 00227CFC  4B FF D8 29 */	bl sub_802285c4
lbl_8022ADA0:
/* 8022ADA0 00227D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022ADA4 00227D04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022ADA8 00227D08  7C 08 03 A6 */	mtlr r0
/* 8022ADAC 00227D0C  38 21 00 30 */	addi r1, r1, 0x30
/* 8022ADB0 00227D10  4E 80 00 20 */	blr 

.global Generate__12CElitePirateFR13CStateManager9EStateMsgf
Generate__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022ADB4 00227D14  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8022ADB8 00227D18  7C 08 02 A6 */	mflr r0
/* 8022ADBC 00227D1C  2C 05 00 01 */	cmpwi r5, 1
/* 8022ADC0 00227D20  90 01 00 74 */	stw r0, 0x74(r1)
/* 8022ADC4 00227D24  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8022ADC8 00227D28  7C 9F 23 78 */	mr r31, r4
/* 8022ADCC 00227D2C  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8022ADD0 00227D30  7C 7E 1B 78 */	mr r30, r3
/* 8022ADD4 00227D34  41 82 00 2C */	beq lbl_8022AE00
/* 8022ADD8 00227D38  40 80 00 10 */	bge lbl_8022ADE8
/* 8022ADDC 00227D3C  2C 05 00 00 */	cmpwi r5, 0
/* 8022ADE0 00227D40  40 80 00 14 */	bge lbl_8022ADF4
/* 8022ADE4 00227D44  48 00 02 34 */	b lbl_8022B018
lbl_8022ADE8:
/* 8022ADE8 00227D48  2C 05 00 03 */	cmpwi r5, 3
/* 8022ADEC 00227D4C  40 80 02 2C */	bge lbl_8022B018
/* 8022ADF0 00227D50  48 00 02 00 */	b lbl_8022AFF0
lbl_8022ADF4:
/* 8022ADF4 00227D54  38 00 00 01 */	li r0, 1
/* 8022ADF8 00227D58  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022ADFC 00227D5C  48 00 02 1C */	b lbl_8022B018
lbl_8022AE00:
/* 8022AE00 00227D60  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 8022AE04 00227D64  2C 00 00 01 */	cmpwi r0, 1
/* 8022AE08 00227D68  41 82 00 20 */	beq lbl_8022AE28
/* 8022AE0C 00227D6C  40 80 00 10 */	bge lbl_8022AE1C
/* 8022AE10 00227D70  2C 00 00 00 */	cmpwi r0, 0
/* 8022AE14 00227D74  40 80 00 DC */	bge lbl_8022AEF0
/* 8022AE18 00227D78  48 00 02 00 */	b lbl_8022B018
lbl_8022AE1C:
/* 8022AE1C 00227D7C  2C 00 00 03 */	cmpwi r0, 3
/* 8022AE20 00227D80  40 80 01 F8 */	bge lbl_8022B018
/* 8022AE24 00227D84  48 00 01 B0 */	b lbl_8022AFD4
lbl_8022AE28:
/* 8022AE28 00227D88  81 83 00 00 */	lwz r12, 0(r3)
/* 8022AE2C 00227D8C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022AE30 00227D90  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022AE34 00227D94  7D 89 03 A6 */	mtctr r12
/* 8022AE38 00227D98  4E 80 04 21 */	bctrl 
/* 8022AE3C 00227D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022AE40 00227DA0  41 82 00 A4 */	beq lbl_8022AEE4
/* 8022AE44 00227DA4  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8022AE48 00227DA8  38 61 00 14 */	addi r3, r1, 0x14
/* 8022AE4C 00227DAC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8022AE50 00227DB0  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8022AE54 00227DB4  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 8022AE58 00227DB8  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8022AE5C 00227DBC  EC 81 00 28 */	fsubs f4, f1, f0
/* 8022AE60 00227DC0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8022AE64 00227DC4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8022AE68 00227DC8  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022AE6C 00227DCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022AE70 00227DD0  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 8022AE74 00227DD4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8022AE78 00227DD8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022AE7C 00227DDC  48 0E 98 7D */	bl CanBeNormalized__9CVector3fCFv
/* 8022AE80 00227DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022AE84 00227DE4  41 82 01 94 */	beq lbl_8022B018
/* 8022AE88 00227DE8  38 61 00 08 */	addi r3, r1, 8
/* 8022AE8C 00227DEC  38 81 00 14 */	addi r4, r1, 0x14
/* 8022AE90 00227DF0  48 0E 99 C1 */	bl AsNormalized__9CVector3fCFv
/* 8022AE94 00227DF4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022AE98 00227DF8  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8022AE9C 00227DFC  C0 61 00 08 */	lfs f3, 8(r1)
/* 8022AEA0 00227E00  38 81 00 40 */	addi r4, r1, 0x40
/* 8022AEA4 00227E04  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8022AEA8 00227E08  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8022AEAC 00227E0C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8022AEB0 00227E10  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8022AEB4 00227E14  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022AEB8 00227E18  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 8022AEBC 00227E1C  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 8022AEC0 00227E20  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8022AEC4 00227E24  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8022AEC8 00227E28  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8022AECC 00227E2C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8022AED0 00227E30  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8022AED4 00227E34  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022AED8 00227E38  38 63 00 04 */	addi r3, r3, 4
/* 8022AEDC 00227E3C  4B F0 68 3D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022AEE0 00227E40  48 00 01 38 */	b lbl_8022B018
lbl_8022AEE4:
/* 8022AEE4 00227E44  38 00 00 00 */	li r0, 0
/* 8022AEE8 00227E48  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022AEEC 00227E4C  48 00 01 2C */	b lbl_8022B018
lbl_8022AEF0:
/* 8022AEF0 00227E50  81 5E 04 50 */	lwz r10, 0x450(r30)
/* 8022AEF4 00227E54  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 8022AEF8 00227E58  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022AEFC 00227E5C  40 82 00 10 */	bne lbl_8022AF0C
/* 8022AF00 00227E60  38 00 00 02 */	li r0, 2
/* 8022AF04 00227E64  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022AF08 00227E68  48 00 01 10 */	b lbl_8022B018
lbl_8022AF0C:
/* 8022AF0C 00227E6C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 8022AF10 00227E70  38 C0 00 00 */	li r6, 0
/* 8022AF14 00227E74  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 8022AF18 00227E78  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8022AF1C 00227E7C  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 8022AF20 00227E80  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8022AF24 00227E84  C4 44 66 A0 */	lfsu f2, skZero3f@l(r4)
/* 8022AF28 00227E88  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 8022AF2C 00227E8C  7C 60 1B 78 */	mr r0, r3
/* 8022AF30 00227E90  39 00 00 0E */	li r8, 0xe
/* 8022AF34 00227E94  C0 24 00 04 */	lfs f1, 4(r4)
/* 8022AF38 00227E98  38 A0 FF FF */	li r5, -1
/* 8022AF3C 00227E9C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022AF40 00227EA0  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 8022AF44 00227EA4  91 21 00 20 */	stw r9, 0x20(r1)
/* 8022AF48 00227EA8  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 8022AF4C 00227EAC  3B EA 00 04 */	addi r31, r10, 4
/* 8022AF50 00227EB0  38 80 00 0E */	li r4, 0xe
/* 8022AF54 00227EB4  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8022AF58 00227EB8  7F E3 FB 78 */	mr r3, r31
/* 8022AF5C 00227EBC  91 01 00 24 */	stw r8, 0x24(r1)
/* 8022AF60 00227EC0  90 E1 00 20 */	stw r7, 0x20(r1)
/* 8022AF64 00227EC4  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8022AF68 00227EC8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8022AF6C 00227ECC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8022AF70 00227ED0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8022AF74 00227ED4  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8022AF78 00227ED8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022AF7C 00227EDC  4B F0 64 BD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022AF80 00227EE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022AF84 00227EE4  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 8022AF88 00227EE8  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 8022AF8C 00227EEC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022AF90 00227EF0  90 1F 01 90 */	stw r0, 0x190(r31)
/* 8022AF94 00227EF4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022AF98 00227EF8  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 8022AF9C 00227EFC  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 8022AFA0 00227F00  90 BF 01 94 */	stw r5, 0x194(r31)
/* 8022AFA4 00227F04  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 8022AFA8 00227F08  90 7F 01 98 */	stw r3, 0x198(r31)
/* 8022AFAC 00227F0C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8022AFB0 00227F10  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 8022AFB4 00227F14  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 8022AFB8 00227F18  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 8022AFBC 00227F1C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 8022AFC0 00227F20  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8022AFC4 00227F24  90 81 00 20 */	stw r4, 0x20(r1)
/* 8022AFC8 00227F28  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8022AFCC 00227F2C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022AFD0 00227F30  48 00 00 48 */	b lbl_8022B018
lbl_8022AFD4:
/* 8022AFD4 00227F34  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022AFD8 00227F38  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 8022AFDC 00227F3C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8022AFE0 00227F40  41 82 00 38 */	beq lbl_8022B018
/* 8022AFE4 00227F44  38 00 00 03 */	li r0, 3
/* 8022AFE8 00227F48  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8022AFEC 00227F4C  48 00 00 2C */	b lbl_8022B018
lbl_8022AFF0:
/* 8022AFF0 00227F50  7F E5 FB 78 */	mr r5, r31
/* 8022AFF4 00227F54  38 80 00 00 */	li r4, 0
/* 8022AFF8 00227F58  4B FF C5 A5 */	bl sub_8022759c
/* 8022AFFC 00227F5C  7F C3 F3 78 */	mr r3, r30
/* 8022B000 00227F60  7F E4 FB 78 */	mr r4, r31
/* 8022B004 00227F64  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022B008 00227F68  38 A0 00 01 */	li r5, 1
/* 8022B00C 00227F6C  81 8C 02 D8 */	lwz r12, 0x2d8(r12)
/* 8022B010 00227F70  7D 89 03 A6 */	mtctr r12
/* 8022B014 00227F74  4E 80 04 21 */	bctrl 
lbl_8022B018:
/* 8022B018 00227F78  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022B01C 00227F7C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8022B020 00227F80  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8022B024 00227F84  7C 08 03 A6 */	mtlr r0
/* 8022B028 00227F88  38 21 00 70 */	addi r1, r1, 0x70
/* 8022B02C 00227F8C  4E 80 00 20 */	blr 

.global Patrol__12CElitePirateFR13CStateManager9EStateMsgf
Patrol__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B030 00227F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B034 00227F94  7C 08 02 A6 */	mflr r0
/* 8022B038 00227F98  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B03C 00227F9C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8022B040 00227FA0  FF E0 08 90 */	fmr f31, f1
/* 8022B044 00227FA4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8022B048 00227FA8  7C BF 2B 79 */	or. r31, r5, r5
/* 8022B04C 00227FAC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8022B050 00227FB0  7C 9E 23 78 */	mr r30, r4
/* 8022B054 00227FB4  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8022B058 00227FB8  7C 7D 1B 78 */	mr r29, r3
/* 8022B05C 00227FBC  41 82 00 08 */	beq lbl_8022B064
/* 8022B060 00227FC0  48 00 00 2C */	b lbl_8022B08C
lbl_8022B064:
/* 8022B064 00227FC4  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022B068 00227FC8  38 80 00 01 */	li r4, 1
/* 8022B06C 00227FCC  4B F0 F9 6D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022B070 00227FD0  88 1D 04 00 */	lbz r0, 0x400(r29)
/* 8022B074 00227FD4  38 60 00 00 */	li r3, 0
/* 8022B078 00227FD8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022B07C 00227FDC  98 1D 04 00 */	stb r0, 0x400(r29)
/* 8022B080 00227FE0  88 1D 09 89 */	lbz r0, 0x989(r29)
/* 8022B084 00227FE4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022B088 00227FE8  98 1D 09 89 */	stb r0, 0x989(r29)
lbl_8022B08C:
/* 8022B08C 00227FEC  FC 20 F8 90 */	fmr f1, f31
/* 8022B090 00227FF0  7F A3 EB 78 */	mr r3, r29
/* 8022B094 00227FF4  7F C4 F3 78 */	mr r4, r30
/* 8022B098 00227FF8  7F E5 FB 78 */	mr r5, r31
/* 8022B09C 00227FFC  4B FC BD D9 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B0A0 00228000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022B0A4 00228004  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8022B0A8 00228008  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8022B0AC 0022800C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8022B0B0 00228010  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8022B0B4 00228014  7C 08 03 A6 */	mtlr r0
/* 8022B0B8 00228018  38 21 00 20 */	addi r1, r1, 0x20
/* 8022B0BC 0022801C  4E 80 00 20 */	blr 

.global TargetPatrol__12CElitePirateFR13CStateManager9EStateMsgf
TargetPatrol__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B0C0 00228020  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022B0C4 00228024  7C 08 02 A6 */	mflr r0
/* 8022B0C8 00228028  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022B0CC 0022802C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8022B0D0 00228030  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 8022B0D4 00228034  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8022B0D8 00228038  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8022B0DC 0022803C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8022B0E0 00228040  7C BF 2B 78 */	mr r31, r5
/* 8022B0E4 00228044  FF E0 08 90 */	fmr f31, f1
/* 8022B0E8 00228048  2C 1F 00 01 */	cmpwi r31, 1
/* 8022B0EC 0022804C  7C 7D 1B 78 */	mr r29, r3
/* 8022B0F0 00228050  7C 9E 23 78 */	mr r30, r4
/* 8022B0F4 00228054  41 82 00 CC */	beq lbl_8022B1C0
/* 8022B0F8 00228058  40 80 00 10 */	bge lbl_8022B108
/* 8022B0FC 0022805C  2C 1F 00 00 */	cmpwi r31, 0
/* 8022B100 00228060  40 80 00 14 */	bge lbl_8022B114
/* 8022B104 00228064  48 00 01 68 */	b lbl_8022B26C
lbl_8022B108:
/* 8022B108 00228068  2C 1F 00 03 */	cmpwi r31, 3
/* 8022B10C 0022806C  40 80 01 60 */	bge lbl_8022B26C
/* 8022B110 00228070  48 00 01 4C */	b lbl_8022B25C
lbl_8022B114:
/* 8022B114 00228074  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022B118 00228078  38 80 00 01 */	li r4, 1
/* 8022B11C 0022807C  4B F0 F8 BD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022B120 00228080  7F A3 EB 78 */	mr r3, r29
/* 8022B124 00228084  7F C4 F3 78 */	mr r4, r30
/* 8022B128 00228088  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022B12C 0022808C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B130 00228090  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 8022B134 00228094  7D 89 03 A6 */	mtctr r12
/* 8022B138 00228098  4E 80 04 21 */	bctrl 
/* 8022B13C 0022809C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B140 002280A0  41 82 00 28 */	beq lbl_8022B168
/* 8022B144 002280A4  FC 20 F8 90 */	fmr f1, f31
/* 8022B148 002280A8  7F A3 EB 78 */	mr r3, r29
/* 8022B14C 002280AC  7F C4 F3 78 */	mr r4, r30
/* 8022B150 002280B0  7F E5 FB 78 */	mr r5, r31
/* 8022B154 002280B4  4B FC BD 21 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B158 002280B8  7F A3 EB 78 */	mr r3, r29
/* 8022B15C 002280BC  7F C4 F3 78 */	mr r4, r30
/* 8022B160 002280C0  4B FC A1 31 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 8022B164 002280C4  48 00 00 10 */	b lbl_8022B174
lbl_8022B168:
/* 8022B168 002280C8  7F A3 EB 78 */	mr r3, r29
/* 8022B16C 002280CC  38 9D 03 A0 */	addi r4, r29, 0x3a0
/* 8022B170 002280D0  4B E5 19 ED */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_8022B174:
/* 8022B174 002280D4  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 8022B178 002280D8  7F A3 EB 78 */	mr r3, r29
/* 8022B17C 002280DC  D0 1D 08 B4 */	stfs f0, 0x8b4(r29)
/* 8022B180 002280E0  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 8022B184 002280E4  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 8022B188 002280E8  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 8022B18C 002280EC  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 8022B190 002280F0  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022B194 002280F4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 8022B198 002280F8  7D 89 03 A6 */	mtctr r12
/* 8022B19C 002280FC  4E 80 04 21 */	bctrl 
/* 8022B1A0 00228100  28 03 00 00 */	cmplwi r3, 0
/* 8022B1A4 00228104  41 82 00 C8 */	beq lbl_8022B26C
/* 8022B1A8 00228108  FC 20 F8 90 */	fmr f1, f31
/* 8022B1AC 0022810C  7F A3 EB 78 */	mr r3, r29
/* 8022B1B0 00228110  7F C4 F3 78 */	mr r4, r30
/* 8022B1B4 00228114  7F E5 FB 78 */	mr r5, r31
/* 8022B1B8 00228118  4B FC B5 15 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B1BC 0022811C  48 00 00 B0 */	b lbl_8022B26C
lbl_8022B1C0:
/* 8022B1C0 00228120  81 83 00 00 */	lwz r12, 0(r3)
/* 8022B1C4 00228124  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B1C8 00228128  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022B1CC 0022812C  7D 89 03 A6 */	mtctr r12
/* 8022B1D0 00228130  4E 80 04 21 */	bctrl 
/* 8022B1D4 00228134  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B1D8 00228138  40 82 00 1C */	bne lbl_8022B1F4
/* 8022B1DC 0022813C  FC 20 F8 90 */	fmr f1, f31
/* 8022B1E0 00228140  7F A3 EB 78 */	mr r3, r29
/* 8022B1E4 00228144  7F C4 F3 78 */	mr r4, r30
/* 8022B1E8 00228148  7F E5 FB 78 */	mr r5, r31
/* 8022B1EC 0022814C  4B FC B4 E1 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B1F0 00228150  48 00 00 7C */	b lbl_8022B26C
lbl_8022B1F4:
/* 8022B1F4 00228154  C0 22 B6 00 */	lfs f1, lbl_805AD320@sda21(r2)
/* 8022B1F8 00228158  7F A5 EB 78 */	mr r5, r29
/* 8022B1FC 0022815C  38 61 00 08 */	addi r3, r1, 8
/* 8022B200 00228160  38 9D 04 5C */	addi r4, r29, 0x45c
/* 8022B204 00228164  38 DD 08 B4 */	addi r6, r29, 0x8b4
/* 8022B208 00228168  4B F1 39 15 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 8022B20C 0022816C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022B210 00228170  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 8022B214 00228174  C0 C1 00 08 */	lfs f6, 8(r1)
/* 8022B218 00228178  38 81 00 14 */	addi r4, r1, 0x14
/* 8022B21C 0022817C  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 8022B220 00228180  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 8022B224 00228184  C0 43 00 04 */	lfs f2, 4(r3)
/* 8022B228 00228188  C0 23 00 08 */	lfs f1, 8(r3)
/* 8022B22C 0022818C  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022B230 00228190  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 8022B234 00228194  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8022B238 00228198  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 8022B23C 0022819C  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8022B240 002281A0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8022B244 002281A4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8022B248 002281A8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8022B24C 002281AC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022B250 002281B0  38 63 00 04 */	addi r3, r3, 4
/* 8022B254 002281B4  4B F0 64 C5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022B258 002281B8  48 00 00 14 */	b lbl_8022B26C
lbl_8022B25C:
/* 8022B25C 002281BC  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022B260 002281C0  38 60 00 00 */	li r3, 0
/* 8022B264 002281C4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8022B268 002281C8  98 1D 09 88 */	stb r0, 0x988(r29)
lbl_8022B26C:
/* 8022B26C 002281CC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 8022B270 002281D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022B274 002281D4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8022B278 002281D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8022B27C 002281DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8022B280 002281E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8022B284 002281E4  7C 08 03 A6 */	mtlr r0
/* 8022B288 002281E8  38 21 00 50 */	addi r1, r1, 0x50
/* 8022B28C 002281EC  4E 80 00 20 */	blr 

.global Taunt__12CElitePirateFR13CStateManager9EStateMsgf
Taunt__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B290 002281F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022B294 002281F4  7C 08 02 A6 */	mflr r0
/* 8022B298 002281F8  2C 05 00 01 */	cmpwi r5, 1
/* 8022B29C 002281FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022B2A0 00228200  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022B2A4 00228204  41 82 00 20 */	beq lbl_8022B2C4
/* 8022B2A8 00228208  40 80 01 14 */	bge lbl_8022B3BC
/* 8022B2AC 0022820C  2C 05 00 00 */	cmpwi r5, 0
/* 8022B2B0 00228210  40 80 00 08 */	bge lbl_8022B2B8
/* 8022B2B4 00228214  48 00 01 08 */	b lbl_8022B3BC
lbl_8022B2B8:
/* 8022B2B8 00228218  38 00 00 00 */	li r0, 0
/* 8022B2BC 0022821C  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022B2C0 00228220  48 00 00 FC */	b lbl_8022B3BC
lbl_8022B2C4:
/* 8022B2C4 00228224  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8022B2C8 00228228  2C 00 00 01 */	cmpwi r0, 1
/* 8022B2CC 0022822C  41 82 00 F0 */	beq lbl_8022B3BC
/* 8022B2D0 00228230  40 80 00 10 */	bge lbl_8022B2E0
/* 8022B2D4 00228234  2C 00 00 00 */	cmpwi r0, 0
/* 8022B2D8 00228238  40 80 00 14 */	bge lbl_8022B2EC
/* 8022B2DC 0022823C  48 00 00 E0 */	b lbl_8022B3BC
lbl_8022B2E0:
/* 8022B2E0 00228240  2C 00 00 03 */	cmpwi r0, 3
/* 8022B2E4 00228244  40 80 00 D8 */	bge lbl_8022B3BC
/* 8022B2E8 00228248  48 00 00 84 */	b lbl_8022B36C
lbl_8022B2EC:
/* 8022B2EC 0022824C  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 8022B2F0 00228250  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 8022B2F4 00228254  2C 00 00 10 */	cmpwi r0, 0x10
/* 8022B2F8 00228258  40 82 00 10 */	bne lbl_8022B308
/* 8022B2FC 0022825C  38 00 00 02 */	li r0, 2
/* 8022B300 00228260  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022B304 00228264  48 00 00 B8 */	b lbl_8022B3BC
lbl_8022B308:
/* 8022B308 00228268  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 8022B30C 0022826C  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8022B310 00228270  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 8022B314 00228274  38 80 00 12 */	li r4, 0x12
/* 8022B318 00228278  90 01 00 08 */	stw r0, 8(r1)
/* 8022B31C 0022827C  38 A3 AA 14 */	addi r5, r3, lbl_803DAA14@l
/* 8022B320 00228280  38 00 00 00 */	li r0, 0
/* 8022B324 00228284  3B E6 00 04 */	addi r31, r6, 4
/* 8022B328 00228288  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022B32C 0022828C  7F E3 FB 78 */	mr r3, r31
/* 8022B330 00228290  38 80 00 12 */	li r4, 0x12
/* 8022B334 00228294  90 A1 00 08 */	stw r5, 8(r1)
/* 8022B338 00228298  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022B33C 0022829C  4B F0 60 FD */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022B340 002282A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022B344 002282A4  3C 60 80 3E */	lis r3, lbl_803DAA14@ha
/* 8022B348 002282A8  38 83 AA 14 */	addi r4, r3, lbl_803DAA14@l
/* 8022B34C 002282AC  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022B350 002282B0  90 1F 02 14 */	stw r0, 0x214(r31)
/* 8022B354 002282B4  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022B358 002282B8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8022B35C 002282BC  90 81 00 08 */	stw r4, 8(r1)
/* 8022B360 002282C0  90 7F 02 18 */	stw r3, 0x218(r31)
/* 8022B364 002282C4  90 01 00 08 */	stw r0, 8(r1)
/* 8022B368 002282C8  48 00 00 54 */	b lbl_8022B3BC
lbl_8022B36C:
/* 8022B36C 002282CC  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 8022B370 002282D0  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 8022B374 002282D4  2C 00 00 10 */	cmpwi r0, 0x10
/* 8022B378 002282D8  41 82 00 10 */	beq lbl_8022B388
/* 8022B37C 002282DC  38 00 00 03 */	li r0, 3
/* 8022B380 002282E0  90 03 05 68 */	stw r0, 0x568(r3)
/* 8022B384 002282E4  48 00 00 38 */	b lbl_8022B3BC
lbl_8022B388:
/* 8022B388 002282E8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8022B38C 002282EC  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022B390 002282F0  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8022B394 002282F4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8022B398 002282F8  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 8022B39C 002282FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022B3A0 00228300  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8022B3A4 00228304  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 8022B3A8 00228308  EC 64 18 28 */	fsubs f3, f4, f3
/* 8022B3AC 0022830C  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 8022B3B0 00228310  EC 02 08 28 */	fsubs f0, f2, f1
/* 8022B3B4 00228314  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 8022B3B8 00228318  D0 05 00 24 */	stfs f0, 0x24(r5)
lbl_8022B3BC:
/* 8022B3BC 0022831C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022B3C0 00228320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022B3C4 00228324  7C 08 03 A6 */	mtlr r0
/* 8022B3C8 00228328  38 21 00 20 */	addi r1, r1, 0x20
/* 8022B3CC 0022832C  4E 80 00 20 */	blr 

.global PathFind__12CElitePirateFR13CStateManager9EStateMsgf
PathFind__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B3D0 00228330  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8022B3D4 00228334  7C 08 02 A6 */	mflr r0
/* 8022B3D8 00228338  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8022B3DC 0022833C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8022B3E0 00228340  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 8022B3E4 00228344  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 8022B3E8 00228348  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 8022B3EC 0022834C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8022B3F0 00228350  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8022B3F4 00228354  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8022B3F8 00228358  7C BE 2B 78 */	mr r30, r5
/* 8022B3FC 0022835C  FF C0 08 90 */	fmr f30, f1
/* 8022B400 00228360  2C 1E 00 01 */	cmpwi r30, 1
/* 8022B404 00228364  7C 7F 1B 78 */	mr r31, r3
/* 8022B408 00228368  7C 9D 23 78 */	mr r29, r4
/* 8022B40C 0022836C  41 82 00 E0 */	beq lbl_8022B4EC
/* 8022B410 00228370  40 80 00 10 */	bge lbl_8022B420
/* 8022B414 00228374  2C 1E 00 00 */	cmpwi r30, 0
/* 8022B418 00228378  40 80 00 14 */	bge lbl_8022B42C
/* 8022B41C 0022837C  48 00 03 58 */	b lbl_8022B774
lbl_8022B420:
/* 8022B420 00228380  2C 1E 00 03 */	cmpwi r30, 3
/* 8022B424 00228384  40 80 03 50 */	bge lbl_8022B774
/* 8022B428 00228388  48 00 03 40 */	b lbl_8022B768
lbl_8022B42C:
/* 8022B42C 0022838C  88 1F 09 89 */	lbz r0, 0x989(r31)
/* 8022B430 00228390  38 60 00 01 */	li r3, 1
/* 8022B434 00228394  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022B438 00228398  38 60 00 00 */	li r3, 0
/* 8022B43C 0022839C  98 1F 09 89 */	stb r0, 0x989(r31)
/* 8022B440 002283A0  38 80 00 01 */	li r4, 1
/* 8022B444 002283A4  88 1F 09 88 */	lbz r0, 0x988(r31)
/* 8022B448 002283A8  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8022B44C 002283AC  98 1F 09 88 */	stb r0, 0x988(r31)
/* 8022B450 002283B0  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022B454 002283B4  4B F0 F5 85 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022B458 002283B8  80 BD 08 4C */	lwz r5, 0x84c(r29)
/* 8022B45C 002283BC  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8022B460 002283C0  38 81 00 0C */	addi r4, r1, 0xc
/* 8022B464 002283C4  A0 05 00 08 */	lhz r0, 8(r5)
/* 8022B468 002283C8  B0 01 00 08 */	sth r0, 8(r1)
/* 8022B46C 002283CC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022B470 002283D0  4B F4 9D A9 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8022B474 002283D4  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8022B478 002283D8  38 80 00 01 */	li r4, 1
/* 8022B47C 002283DC  4B F4 9D A9 */	bl SetActive__13CBoneTrackingFb
/* 8022B480 002283E0  7F E3 FB 78 */	mr r3, r31
/* 8022B484 002283E4  7F A4 EB 78 */	mr r4, r29
/* 8022B488 002283E8  4B FF D1 AD */	bl sub_80228634
/* 8022B48C 002283EC  FC 20 F0 90 */	fmr f1, f30
/* 8022B490 002283F0  7F E3 FB 78 */	mr r3, r31
/* 8022B494 002283F4  7F A4 EB 78 */	mr r4, r29
/* 8022B498 002283F8  7F C5 F3 78 */	mr r5, r30
/* 8022B49C 002283FC  4B FC B2 31 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B4A0 00228400  C3 FF 05 DC */	lfs f31, 0x5dc(r31)
/* 8022B4A4 00228404  C3 DF 05 D8 */	lfs f30, 0x5d8(r31)
/* 8022B4A8 00228408  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 8022B4AC 0022840C  48 0E 70 31 */	bl Float__9CRandom16Fv
/* 8022B4B0 00228410  EC 01 F7 FA */	fmadds f0, f1, f31, f30
/* 8022B4B4 00228414  7F E3 FB 78 */	mr r3, r31
/* 8022B4B8 00228418  7F A4 EB 78 */	mr r4, r29
/* 8022B4BC 0022841C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B4C0 00228420  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 8022B4C4 00228424  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022B4C8 00228428  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8022B4CC 0022842C  7D 89 03 A6 */	mtctr r12
/* 8022B4D0 00228430  4E 80 04 21 */	bctrl 
/* 8022B4D4 00228434  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B4D8 00228438  41 82 02 9C */	beq lbl_8022B774
/* 8022B4DC 0022843C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022B4E0 00228440  38 63 00 04 */	addi r3, r3, 4
/* 8022B4E4 00228444  4B F0 5F C5 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 8022B4E8 00228448  48 00 02 8C */	b lbl_8022B774
lbl_8022B4EC:
/* 8022B4EC 0022844C  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 8022B4F0 00228450  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022B4F4 00228454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022B4F8 00228458  40 81 00 0C */	ble lbl_8022B504
/* 8022B4FC 0022845C  EC 01 F0 28 */	fsubs f0, f1, f30
/* 8022B500 00228460  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
lbl_8022B504:
/* 8022B504 00228464  7F E3 FB 78 */	mr r3, r31
/* 8022B508 00228468  7F A4 EB 78 */	mr r4, r29
/* 8022B50C 0022846C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022B510 00228470  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B514 00228474  81 8C 01 9C */	lwz r12, 0x19c(r12)
/* 8022B518 00228478  7D 89 03 A6 */	mtctr r12
/* 8022B51C 0022847C  4E 80 04 21 */	bctrl 
/* 8022B520 00228480  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B524 00228484  40 82 00 40 */	bne lbl_8022B564
/* 8022B528 00228488  7F E3 FB 78 */	mr r3, r31
/* 8022B52C 0022848C  7F A4 EB 78 */	mr r4, r29
/* 8022B530 00228490  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022B534 00228494  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B538 00228498  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022B53C 0022849C  7D 89 03 A6 */	mtctr r12
/* 8022B540 002284A0  4E 80 04 21 */	bctrl 
/* 8022B544 002284A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B548 002284A8  40 82 00 1C */	bne lbl_8022B564
/* 8022B54C 002284AC  FC 20 F0 90 */	fmr f1, f30
/* 8022B550 002284B0  7F E3 FB 78 */	mr r3, r31
/* 8022B554 002284B4  7F A4 EB 78 */	mr r4, r29
/* 8022B558 002284B8  7F C5 F3 78 */	mr r5, r30
/* 8022B55C 002284BC  4B FC B1 71 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022B560 002284C0  48 00 02 14 */	b lbl_8022B774
lbl_8022B564:
/* 8022B564 002284C4  7F E3 FB 78 */	mr r3, r31
/* 8022B568 002284C8  7F A4 EB 78 */	mr r4, r29
/* 8022B56C 002284CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022B570 002284D0  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B574 002284D4  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022B578 002284D8  7D 89 03 A6 */	mtctr r12
/* 8022B57C 002284DC  4E 80 04 21 */	bctrl 
/* 8022B580 002284E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B584 002284E4  41 82 00 F4 */	beq lbl_8022B678
/* 8022B588 002284E8  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8022B58C 002284EC  38 61 00 58 */	addi r3, r1, 0x58
/* 8022B590 002284F0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8022B594 002284F4  38 9F 08 C0 */	addi r4, r31, 0x8c0
/* 8022B598 002284F8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8022B59C 002284FC  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8022B5A0 00228500  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8022B5A4 00228504  38 C1 00 34 */	addi r6, r1, 0x34
/* 8022B5A8 00228508  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8022B5AC 0022850C  81 01 00 28 */	lwz r8, 0x28(r1)
/* 8022B5B0 00228510  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8022B5B4 00228514  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 8022B5B8 00228518  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8022B5BC 0022851C  91 01 00 34 */	stw r8, 0x34(r1)
/* 8022B5C0 00228520  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8022B5C4 00228524  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022B5C8 00228528  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 8022B5CC 0022852C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8022B5D0 00228530  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8022B5D4 00228534  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8022B5D8 00228538  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8022B5DC 0022853C  81 01 00 40 */	lwz r8, 0x40(r1)
/* 8022B5E0 00228540  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8022B5E4 00228544  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8022B5E8 00228548  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8022B5EC 0022854C  91 01 00 4C */	stw r8, 0x4c(r1)
/* 8022B5F0 00228550  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8022B5F4 00228554  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022B5F8 00228558  48 07 51 F9 */	bl sub_802a07f0
/* 8022B5FC 0022855C  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8022B600 00228560  38 00 00 00 */	li r0, 0
/* 8022B604 00228564  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022B608 00228568  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 8022B60C 0022856C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022B610 00228570  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 8022B614 00228574  40 82 00 14 */	bne lbl_8022B628
/* 8022B618 00228578  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8022B61C 0022857C  40 82 00 0C */	bne lbl_8022B628
/* 8022B620 00228580  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8022B624 00228584  41 82 00 08 */	beq lbl_8022B62C
lbl_8022B628:
/* 8022B628 00228588  38 00 00 01 */	li r0, 1
lbl_8022B62C:
/* 8022B62C 0022858C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022B630 00228590  41 82 01 44 */	beq lbl_8022B774
/* 8022B634 00228594  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022B638 00228598  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 8022B63C 0022859C  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022B640 002285A0  38 81 00 8C */	addi r4, r1, 0x8c
/* 8022B644 002285A4  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8022B648 002285A8  C0 43 00 04 */	lfs f2, 4(r3)
/* 8022B64C 002285AC  C0 23 00 08 */	lfs f1, 8(r3)
/* 8022B650 002285B0  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8022B654 002285B4  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8022B658 002285B8  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8022B65C 002285BC  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8022B660 002285C0  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8022B664 002285C4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8022B668 002285C8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022B66C 002285CC  38 63 00 04 */	addi r3, r3, 4
/* 8022B670 002285D0  4B F0 60 A9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022B674 002285D4  48 00 01 00 */	b lbl_8022B774
lbl_8022B678:
/* 8022B678 002285D8  7F E3 FB 78 */	mr r3, r31
/* 8022B67C 002285DC  7F A4 EB 78 */	mr r4, r29
/* 8022B680 002285E0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8022B684 002285E4  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022B688 002285E8  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022B68C 002285EC  7D 89 03 A6 */	mtctr r12
/* 8022B690 002285F0  4E 80 04 21 */	bctrl 
/* 8022B694 002285F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B698 002285F8  41 82 00 DC */	beq lbl_8022B774
/* 8022B69C 002285FC  80 DF 00 64 */	lwz r6, 0x64(r31)
/* 8022B6A0 00228600  7F A5 EB 78 */	mr r5, r29
/* 8022B6A4 00228604  80 9D 08 4C */	lwz r4, 0x84c(r29)
/* 8022B6A8 00228608  38 61 00 1C */	addi r3, r1, 0x1c
/* 8022B6AC 0022860C  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022B6B0 00228610  81 84 00 00 */	lwz r12, 0(r4)
/* 8022B6B4 00228614  C0 22 B5 BC */	lfs f1, lbl_805AD2DC@sda21(r2)
/* 8022B6B8 00228618  C0 06 02 00 */	lfs f0, 0x200(r6)
/* 8022B6BC 0022861C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022B6C0 00228620  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022B6C4 00228624  7D 89 03 A6 */	mtctr r12
/* 8022B6C8 00228628  4E 80 04 21 */	bctrl 
/* 8022B6CC 0022862C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8022B6D0 00228630  38 61 00 64 */	addi r3, r1, 0x64
/* 8022B6D4 00228634  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8022B6D8 00228638  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8022B6DC 0022863C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8022B6E0 00228640  EC 81 00 28 */	fsubs f4, f1, f0
/* 8022B6E4 00228644  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8022B6E8 00228648  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8022B6EC 0022864C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022B6F0 00228650  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 8022B6F4 00228654  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022B6F8 00228658  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8022B6FC 0022865C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8022B700 00228660  48 0E 8F F9 */	bl CanBeNormalized__9CVector3fCFv
/* 8022B704 00228664  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022B708 00228668  41 82 00 6C */	beq lbl_8022B774
/* 8022B70C 0022866C  38 61 00 10 */	addi r3, r1, 0x10
/* 8022B710 00228670  38 81 00 64 */	addi r4, r1, 0x64
/* 8022B714 00228674  48 0E 91 3D */	bl AsNormalized__9CVector3fCFv
/* 8022B718 00228678  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022B71C 0022867C  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8022B720 00228680  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8022B724 00228684  38 81 00 70 */	addi r4, r1, 0x70
/* 8022B728 00228688  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8022B72C 0022868C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8022B730 00228690  C0 83 00 08 */	lfs f4, 8(r3)
/* 8022B734 00228694  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8022B738 00228698  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022B73C 0022869C  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 8022B740 002286A0  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 8022B744 002286A4  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 8022B748 002286A8  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 8022B74C 002286AC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8022B750 002286B0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8022B754 002286B4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8022B758 002286B8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022B75C 002286BC  38 63 00 04 */	addi r3, r3, 4
/* 8022B760 002286C0  4B F0 5F B9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022B764 002286C4  48 00 00 10 */	b lbl_8022B774
lbl_8022B768:
/* 8022B768 002286C8  38 7F 06 F8 */	addi r3, r31, 0x6f8
/* 8022B76C 002286CC  38 80 00 00 */	li r4, 0
/* 8022B770 002286D0  4B F4 9A B5 */	bl SetActive__13CBoneTrackingFb
lbl_8022B774:
/* 8022B774 002286D4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 8022B778 002286D8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8022B77C 002286DC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 8022B780 002286E0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 8022B784 002286E4  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8022B788 002286E8  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8022B78C 002286EC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8022B790 002286F0  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8022B794 002286F4  7C 08 03 A6 */	mtlr r0
/* 8022B798 002286F8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8022B79C 002286FC  4E 80 00 20 */	blr 

.global Halt__12CElitePirateFR13CStateManager9EStateMsgf
Halt__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B7A0 00228700  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8022B7A4 00228704  7C 08 02 A6 */	mflr r0
/* 8022B7A8 00228708  2C 05 00 01 */	cmpwi r5, 1
/* 8022B7AC 0022870C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022B7B0 00228710  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8022B7B4 00228714  7C 7F 1B 78 */	mr r31, r3
/* 8022B7B8 00228718  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8022B7BC 0022871C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8022B7C0 00228720  41 82 01 AC */	beq lbl_8022B96C
/* 8022B7C4 00228724  40 80 00 10 */	bge lbl_8022B7D4
/* 8022B7C8 00228728  2C 05 00 00 */	cmpwi r5, 0
/* 8022B7CC 0022872C  40 80 00 14 */	bge lbl_8022B7E0
/* 8022B7D0 00228730  48 00 01 9C */	b lbl_8022B96C
lbl_8022B7D4:
/* 8022B7D4 00228734  2C 05 00 03 */	cmpwi r5, 3
/* 8022B7D8 00228738  40 80 01 94 */	bge lbl_8022B96C
/* 8022B7DC 0022873C  48 00 00 D8 */	b lbl_8022B8B4
lbl_8022B7E0:
/* 8022B7E0 00228740  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8022B7E4 00228744  38 80 00 02 */	li r4, 2
/* 8022B7E8 00228748  4B F0 F1 F1 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022B7EC 0022874C  88 1F 09 89 */	lbz r0, 0x989(r31)
/* 8022B7F0 00228750  38 60 00 00 */	li r3, 0
/* 8022B7F4 00228754  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022B7F8 00228758  7F E3 FB 78 */	mr r3, r31
/* 8022B7FC 0022875C  98 1F 09 89 */	stb r0, 0x989(r31)
/* 8022B800 00228760  4B E2 80 BD */	bl GetMaterialFilter__6CActorCFv
/* 8022B804 00228764  80 03 00 00 */	lwz r0, 0(r3)
/* 8022B808 00228768  38 80 00 01 */	li r4, 1
/* 8022B80C 0022876C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8022B810 00228770  80 AD 95 6C */	lwz r5, lbl_805A812C@sda21(r13)
/* 8022B814 00228774  90 C1 00 24 */	stw r6, 0x24(r1)
/* 8022B818 00228778  90 01 00 20 */	stw r0, 0x20(r1)
/* 8022B81C 0022877C  80 03 00 08 */	lwz r0, 8(r3)
/* 8022B820 00228780  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8022B824 00228784  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8022B828 00228788  90 01 00 28 */	stw r0, 0x28(r1)
/* 8022B82C 0022878C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8022B830 00228790  38 60 00 00 */	li r3, 0
/* 8022B834 00228794  90 01 00 30 */	stw r0, 0x30(r1)
/* 8022B838 00228798  48 15 E6 BD */	bl __shl2i
/* 8022B83C 0022879C  80 AD 95 70 */	lwz r5, lbl_805A8130@sda21(r13)
/* 8022B840 002287A0  7C 9D 23 78 */	mr r29, r4
/* 8022B844 002287A4  7C 7E 1B 78 */	mr r30, r3
/* 8022B848 002287A8  38 60 00 00 */	li r3, 0
/* 8022B84C 002287AC  38 80 00 01 */	li r4, 1
/* 8022B850 002287B0  48 15 E6 A5 */	bl __shl2i
/* 8022B854 002287B4  80 AD 95 74 */	lwz r5, lbl_805A8134@sda21(r13)
/* 8022B858 002287B8  7F BD 23 78 */	or r29, r29, r4
/* 8022B85C 002287BC  7F DE 1B 78 */	or r30, r30, r3
/* 8022B860 002287C0  38 60 00 00 */	li r3, 0
/* 8022B864 002287C4  38 80 00 01 */	li r4, 1
/* 8022B868 002287C8  48 15 E6 8D */	bl __shl2i
/* 8022B86C 002287CC  80 AD 95 78 */	lwz r5, lbl_805A8138@sda21(r13)
/* 8022B870 002287D0  7F BD 23 78 */	or r29, r29, r4
/* 8022B874 002287D4  7F DE 1B 78 */	or r30, r30, r3
/* 8022B878 002287D8  38 60 00 00 */	li r3, 0
/* 8022B87C 002287DC  38 80 00 01 */	li r4, 1
/* 8022B880 002287E0  48 15 E6 75 */	bl __shl2i
/* 8022B884 002287E4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8022B888 002287E8  7F DE 1B 78 */	or r30, r30, r3
/* 8022B88C 002287EC  7F BD 23 78 */	or r29, r29, r4
/* 8022B890 002287F0  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8022B894 002287F4  7C 00 F3 78 */	or r0, r0, r30
/* 8022B898 002287F8  7F E3 FB 78 */	mr r3, r31
/* 8022B89C 002287FC  7C 85 EB 78 */	or r5, r4, r29
/* 8022B8A0 00228800  90 01 00 28 */	stw r0, 0x28(r1)
/* 8022B8A4 00228804  38 81 00 20 */	addi r4, r1, 0x20
/* 8022B8A8 00228808  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8022B8AC 0022880C  4B E2 7F F5 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8022B8B0 00228810  48 00 00 BC */	b lbl_8022B96C
lbl_8022B8B4:
/* 8022B8B4 00228814  4B E2 80 09 */	bl GetMaterialFilter__6CActorCFv
/* 8022B8B8 00228818  80 03 00 00 */	lwz r0, 0(r3)
/* 8022B8BC 0022881C  38 80 00 01 */	li r4, 1
/* 8022B8C0 00228820  80 C3 00 04 */	lwz r6, 4(r3)
/* 8022B8C4 00228824  80 AD 95 7C */	lwz r5, lbl_805A813C@sda21(r13)
/* 8022B8C8 00228828  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8022B8CC 0022882C  90 01 00 08 */	stw r0, 8(r1)
/* 8022B8D0 00228830  80 03 00 08 */	lwz r0, 8(r3)
/* 8022B8D4 00228834  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 8022B8D8 00228838  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8022B8DC 0022883C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022B8E0 00228840  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8022B8E4 00228844  38 60 00 00 */	li r3, 0
/* 8022B8E8 00228848  90 01 00 18 */	stw r0, 0x18(r1)
/* 8022B8EC 0022884C  48 15 E6 09 */	bl __shl2i
/* 8022B8F0 00228850  80 AD 95 80 */	lwz r5, lbl_805A8140@sda21(r13)
/* 8022B8F4 00228854  7C 9E 23 78 */	mr r30, r4
/* 8022B8F8 00228858  7C 7D 1B 78 */	mr r29, r3
/* 8022B8FC 0022885C  38 60 00 00 */	li r3, 0
/* 8022B900 00228860  38 80 00 01 */	li r4, 1
/* 8022B904 00228864  48 15 E5 F1 */	bl __shl2i
/* 8022B908 00228868  80 AD 95 84 */	lwz r5, lbl_805A8144@sda21(r13)
/* 8022B90C 0022886C  7F DE 23 78 */	or r30, r30, r4
/* 8022B910 00228870  7F BD 1B 78 */	or r29, r29, r3
/* 8022B914 00228874  38 60 00 00 */	li r3, 0
/* 8022B918 00228878  38 80 00 01 */	li r4, 1
/* 8022B91C 0022887C  48 15 E5 D9 */	bl __shl2i
/* 8022B920 00228880  80 AD 95 88 */	lwz r5, lbl_805A8148@sda21(r13)
/* 8022B924 00228884  7F DE 23 78 */	or r30, r30, r4
/* 8022B928 00228888  7F BD 1B 78 */	or r29, r29, r3
/* 8022B92C 0022888C  38 60 00 00 */	li r3, 0
/* 8022B930 00228890  38 80 00 01 */	li r4, 1
/* 8022B934 00228894  48 15 E5 C1 */	bl __shl2i
/* 8022B938 00228898  7F DE 23 78 */	or r30, r30, r4
/* 8022B93C 0022889C  7F BD 1B 78 */	or r29, r29, r3
/* 8022B940 002288A0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8022B944 002288A4  7F A0 E8 F8 */	nor r0, r29, r29
/* 8022B948 002288A8  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8022B94C 002288AC  7F C4 F0 F8 */	nor r4, r30, r30
/* 8022B950 002288B0  7C 60 00 38 */	and r0, r3, r0
/* 8022B954 002288B4  7F E3 FB 78 */	mr r3, r31
/* 8022B958 002288B8  7C A5 20 38 */	and r5, r5, r4
/* 8022B95C 002288BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022B960 002288C0  38 81 00 08 */	addi r4, r1, 8
/* 8022B964 002288C4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8022B968 002288C8  4B E2 7F 39 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
lbl_8022B96C:
/* 8022B96C 002288CC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8022B970 002288D0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8022B974 002288D4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8022B978 002288D8  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 8022B97C 002288DC  7C 08 03 A6 */	mtlr r0
/* 8022B980 002288E0  38 21 00 50 */	addi r1, r1, 0x50
/* 8022B984 002288E4  4E 80 00 20 */	blr 

.global Run__12CElitePirateFR13CStateManager9EStateMsgf
Run__12CElitePirateFR13CStateManager9EStateMsgf:
/* 8022B988 002288E8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8022B98C 002288EC  7C 08 02 A6 */	mflr r0
/* 8022B990 002288F0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8022B994 002288F4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8022B998 002288F8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 8022B99C 002288FC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8022B9A0 00228900  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8022B9A4 00228904  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 8022B9A8 00228908  7C BD 2B 78 */	mr r29, r5
/* 8022B9AC 0022890C  FF E0 08 90 */	fmr f31, f1
/* 8022B9B0 00228910  2C 1D 00 01 */	cmpwi r29, 1
/* 8022B9B4 00228914  7C 7E 1B 78 */	mr r30, r3
/* 8022B9B8 00228918  7C 9F 23 78 */	mr r31, r4
/* 8022B9BC 0022891C  41 82 00 9C */	beq lbl_8022BA58
/* 8022B9C0 00228920  40 80 00 10 */	bge lbl_8022B9D0
/* 8022B9C4 00228924  2C 1D 00 00 */	cmpwi r29, 0
/* 8022B9C8 00228928  40 80 00 14 */	bge lbl_8022B9DC
/* 8022B9CC 0022892C  48 00 02 D0 */	b lbl_8022BC9C
lbl_8022B9D0:
/* 8022B9D0 00228930  2C 1D 00 03 */	cmpwi r29, 3
/* 8022B9D4 00228934  40 80 02 C8 */	bge lbl_8022BC9C
/* 8022B9D8 00228938  48 00 02 94 */	b lbl_8022BC6C
lbl_8022B9DC:
/* 8022B9DC 0022893C  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022B9E0 00228940  38 60 00 01 */	li r3, 1
/* 8022B9E4 00228944  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8022B9E8 00228948  38 80 00 01 */	li r4, 1
/* 8022B9EC 0022894C  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022B9F0 00228950  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022B9F4 00228954  4B F0 EF E5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 8022B9F8 00228958  C0 22 B5 CC */	lfs f1, lbl_805AD2EC@sda21(r2)
/* 8022B9FC 0022895C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022BA00 00228960  FC 40 08 90 */	fmr f2, f1
/* 8022BA04 00228964  38 63 00 04 */	addi r3, r3, 4
/* 8022BA08 00228968  4B F0 5D E1 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8022BA0C 0022896C  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8022BA10 00228970  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8022BA14 00228974  38 81 00 0C */	addi r4, r1, 0xc
/* 8022BA18 00228978  A0 05 00 08 */	lhz r0, 8(r5)
/* 8022BA1C 0022897C  B0 01 00 08 */	sth r0, 8(r1)
/* 8022BA20 00228980  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022BA24 00228984  4B F4 97 F5 */	bl SetTarget__13CBoneTrackingF9TUniqueId
/* 8022BA28 00228988  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8022BA2C 0022898C  38 80 00 01 */	li r4, 1
/* 8022BA30 00228990  4B F4 97 F5 */	bl SetActive__13CBoneTrackingFb
/* 8022BA34 00228994  7F C3 F3 78 */	mr r3, r30
/* 8022BA38 00228998  7F E4 FB 78 */	mr r4, r31
/* 8022BA3C 0022899C  4B FF CB F9 */	bl sub_80228634
/* 8022BA40 002289A0  FC 20 F8 90 */	fmr f1, f31
/* 8022BA44 002289A4  7F C3 F3 78 */	mr r3, r30
/* 8022BA48 002289A8  7F E4 FB 78 */	mr r4, r31
/* 8022BA4C 002289AC  7F A5 EB 78 */	mr r5, r29
/* 8022BA50 002289B0  4B FC AC 7D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022BA54 002289B4  48 00 02 48 */	b lbl_8022BC9C
lbl_8022BA58:
/* 8022BA58 002289B8  81 83 00 00 */	lwz r12, 0(r3)
/* 8022BA5C 002289BC  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022BA60 002289C0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022BA64 002289C4  7D 89 03 A6 */	mtctr r12
/* 8022BA68 002289C8  4E 80 04 21 */	bctrl 
/* 8022BA6C 002289CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BA70 002289D0  40 82 00 1C */	bne lbl_8022BA8C
/* 8022BA74 002289D4  FC 20 F8 90 */	fmr f1, f31
/* 8022BA78 002289D8  7F C3 F3 78 */	mr r3, r30
/* 8022BA7C 002289DC  7F E4 FB 78 */	mr r4, r31
/* 8022BA80 002289E0  7F A5 EB 78 */	mr r5, r29
/* 8022BA84 002289E4  4B FC AC 49 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 8022BA88 002289E8  48 00 02 14 */	b lbl_8022BC9C
lbl_8022BA8C:
/* 8022BA8C 002289EC  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8022BA90 002289F0  38 61 00 58 */	addi r3, r1, 0x58
/* 8022BA94 002289F4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8022BA98 002289F8  38 9E 08 C0 */	addi r4, r30, 0x8c0
/* 8022BA9C 002289FC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8022BAA0 00228A00  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8022BAA4 00228A04  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8022BAA8 00228A08  38 C1 00 34 */	addi r6, r1, 0x34
/* 8022BAAC 00228A0C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8022BAB0 00228A10  81 01 00 28 */	lwz r8, 0x28(r1)
/* 8022BAB4 00228A14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8022BAB8 00228A18  80 E1 00 2C */	lwz r7, 0x2c(r1)
/* 8022BABC 00228A1C  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8022BAC0 00228A20  91 01 00 34 */	stw r8, 0x34(r1)
/* 8022BAC4 00228A24  90 E1 00 38 */	stw r7, 0x38(r1)
/* 8022BAC8 00228A28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022BACC 00228A2C  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 8022BAD0 00228A30  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8022BAD4 00228A34  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8022BAD8 00228A38  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 8022BADC 00228A3C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8022BAE0 00228A40  81 01 00 40 */	lwz r8, 0x40(r1)
/* 8022BAE4 00228A44  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8022BAE8 00228A48  80 E1 00 44 */	lwz r7, 0x44(r1)
/* 8022BAEC 00228A4C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 8022BAF0 00228A50  91 01 00 4C */	stw r8, 0x4c(r1)
/* 8022BAF4 00228A54  90 E1 00 50 */	stw r7, 0x50(r1)
/* 8022BAF8 00228A58  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022BAFC 00228A5C  48 07 4C F5 */	bl sub_802a07f0
/* 8022BB00 00228A60  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 8022BB04 00228A64  38 00 00 00 */	li r0, 0
/* 8022BB08 00228A68  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022BB0C 00228A6C  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 8022BB10 00228A70  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8022BB14 00228A74  C0 A1 00 60 */	lfs f5, 0x60(r1)
/* 8022BB18 00228A78  40 82 00 14 */	bne lbl_8022BB2C
/* 8022BB1C 00228A7C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8022BB20 00228A80  40 82 00 0C */	bne lbl_8022BB2C
/* 8022BB24 00228A84  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 8022BB28 00228A88  41 82 00 08 */	beq lbl_8022BB30
lbl_8022BB2C:
/* 8022BB2C 00228A8C  38 00 00 01 */	li r0, 1
lbl_8022BB30:
/* 8022BB30 00228A90  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8022BB34 00228A94  41 82 00 48 */	beq lbl_8022BB7C
/* 8022BB38 00228A98  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022BB3C 00228A9C  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 8022BB40 00228AA0  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022BB44 00228AA4  38 81 00 8C */	addi r4, r1, 0x8c
/* 8022BB48 00228AA8  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8022BB4C 00228AAC  C0 43 00 04 */	lfs f2, 4(r3)
/* 8022BB50 00228AB0  C0 23 00 08 */	lfs f1, 8(r3)
/* 8022BB54 00228AB4  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8022BB58 00228AB8  D0 A1 00 94 */	stfs f5, 0x94(r1)
/* 8022BB5C 00228ABC  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 8022BB60 00228AC0  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 8022BB64 00228AC4  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8022BB68 00228AC8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8022BB6C 00228ACC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022BB70 00228AD0  38 63 00 04 */	addi r3, r3, 4
/* 8022BB74 00228AD4  4B F0 5B A5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022BB78 00228AD8  48 00 01 24 */	b lbl_8022BC9C
lbl_8022BB7C:
/* 8022BB7C 00228ADC  7F C3 F3 78 */	mr r3, r30
/* 8022BB80 00228AE0  7F E4 FB 78 */	mr r4, r31
/* 8022BB84 00228AE4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022BB88 00228AE8  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022BB8C 00228AEC  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022BB90 00228AF0  7D 89 03 A6 */	mtctr r12
/* 8022BB94 00228AF4  4E 80 04 21 */	bctrl 
/* 8022BB98 00228AF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BB9C 00228AFC  41 82 01 00 */	beq lbl_8022BC9C
/* 8022BBA0 00228B00  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 8022BBA4 00228B04  7F E5 FB 78 */	mr r5, r31
/* 8022BBA8 00228B08  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 8022BBAC 00228B0C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8022BBB0 00228B10  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022BBB4 00228B14  81 84 00 00 */	lwz r12, 0(r4)
/* 8022BBB8 00228B18  C0 22 B5 BC */	lfs f1, lbl_805AD2DC@sda21(r2)
/* 8022BBBC 00228B1C  C0 06 02 00 */	lfs f0, 0x200(r6)
/* 8022BBC0 00228B20  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022BBC4 00228B24  EC 21 00 32 */	fmuls f1, f1, f0
/* 8022BBC8 00228B28  7D 89 03 A6 */	mtctr r12
/* 8022BBCC 00228B2C  4E 80 04 21 */	bctrl 
/* 8022BBD0 00228B30  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8022BBD4 00228B34  38 61 00 64 */	addi r3, r1, 0x64
/* 8022BBD8 00228B38  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8022BBDC 00228B3C  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 8022BBE0 00228B40  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8022BBE4 00228B44  EC 81 00 28 */	fsubs f4, f1, f0
/* 8022BBE8 00228B48  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8022BBEC 00228B4C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8022BBF0 00228B50  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022BBF4 00228B54  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 8022BBF8 00228B58  EC 01 00 28 */	fsubs f0, f1, f0
/* 8022BBFC 00228B5C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8022BC00 00228B60  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8022BC04 00228B64  48 0E 8A F5 */	bl CanBeNormalized__9CVector3fCFv
/* 8022BC08 00228B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BC0C 00228B6C  41 82 00 90 */	beq lbl_8022BC9C
/* 8022BC10 00228B70  38 61 00 10 */	addi r3, r1, 0x10
/* 8022BC14 00228B74  38 81 00 64 */	addi r4, r1, 0x64
/* 8022BC18 00228B78  48 0E 8C 39 */	bl AsNormalized__9CVector3fCFv
/* 8022BC1C 00228B7C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022BC20 00228B80  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 8022BC24 00228B84  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8022BC28 00228B88  38 81 00 70 */	addi r4, r1, 0x70
/* 8022BC2C 00228B8C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8022BC30 00228B90  C0 A3 00 04 */	lfs f5, 4(r3)
/* 8022BC34 00228B94  C0 83 00 08 */	lfs f4, 8(r3)
/* 8022BC38 00228B98  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8022BC3C 00228B9C  C0 02 B5 CC */	lfs f0, lbl_805AD2EC@sda21(r2)
/* 8022BC40 00228BA0  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 8022BC44 00228BA4  D0 A1 00 74 */	stfs f5, 0x74(r1)
/* 8022BC48 00228BA8  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 8022BC4C 00228BAC  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 8022BC50 00228BB0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 8022BC54 00228BB4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8022BC58 00228BB8  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8022BC5C 00228BBC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022BC60 00228BC0  38 63 00 04 */	addi r3, r3, 4
/* 8022BC64 00228BC4  4B F0 5A B5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 8022BC68 00228BC8  48 00 00 34 */	b lbl_8022BC9C
lbl_8022BC6C:
/* 8022BC6C 00228BCC  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022BC70 00228BD0  38 60 00 00 */	li r3, 0
/* 8022BC74 00228BD4  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8022BC78 00228BD8  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8022BC7C 00228BDC  98 1E 09 88 */	stb r0, 0x988(r30)
/* 8022BC80 00228BE0  38 80 00 00 */	li r4, 0
/* 8022BC84 00228BE4  4B F4 95 A1 */	bl SetActive__13CBoneTrackingFb
/* 8022BC88 00228BE8  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 8022BC8C 00228BEC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8022BC90 00228BF0  FC 40 08 90 */	fmr f2, f1
/* 8022BC94 00228BF4  38 63 00 04 */	addi r3, r3, 4
/* 8022BC98 00228BF8  4B F0 5B 51 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
lbl_8022BC9C:
/* 8022BC9C 00228BFC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 8022BCA0 00228C00  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8022BCA4 00228C04  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8022BCA8 00228C08  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8022BCAC 00228C0C  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8022BCB0 00228C10  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 8022BCB4 00228C14  7C 08 03 A6 */	mtlr r0
/* 8022BCB8 00228C18  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8022BCBC 00228C1C  4E 80 00 20 */	blr 

.global sub_8022bcc0
sub_8022bcc0:
/* 8022BCC0 00228C20  80 03 05 68 */	lwz r0, 0x568(r3)
/* 8022BCC4 00228C24  20 00 00 03 */	subfic r0, r0, 3
/* 8022BCC8 00228C28  7C 00 00 34 */	cntlzw r0, r0
/* 8022BCCC 00228C2C  54 03 D9 7E */	srwi r3, r0, 5
/* 8022BCD0 00228C30  4E 80 00 20 */	blr 

.global AggressionCheck__12CElitePirateFR13CStateManagerf
AggressionCheck__12CElitePirateFR13CStateManagerf:
/* 8022BCD4 00228C34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022BCD8 00228C38  7C 08 02 A6 */	mflr r0
/* 8022BCDC 00228C3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022BCE0 00228C40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022BCE4 00228C44  7C 9F 23 78 */	mr r31, r4
/* 8022BCE8 00228C48  93 C1 00 08 */	stw r30, 8(r1)
/* 8022BCEC 00228C4C  7C 7E 1B 78 */	mr r30, r3
/* 8022BCF0 00228C50  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022BCF4 00228C54  A0 A3 07 72 */	lhz r5, 0x772(r3)
/* 8022BCF8 00228C58  7C 05 00 40 */	cmplw r5, r0
/* 8022BCFC 00228C5C  40 82 00 84 */	bne lbl_8022BD80
/* 8022BD00 00228C60  81 83 00 00 */	lwz r12, 0(r3)
/* 8022BD04 00228C64  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8022BD08 00228C68  7D 89 03 A6 */	mtctr r12
/* 8022BD0C 00228C6C  4E 80 04 21 */	bctrl 
/* 8022BD10 00228C70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BD14 00228C74  40 82 00 6C */	bne lbl_8022BD80
/* 8022BD18 00228C78  88 1E 09 88 */	lbz r0, 0x988(r30)
/* 8022BD1C 00228C7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8022BD20 00228C80  40 82 00 58 */	bne lbl_8022BD78
/* 8022BD24 00228C84  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8022BD28 00228C88  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8022BD2C 00228C8C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022BD30 00228C90  C0 63 00 40 */	lfs f3, 0x40(r3)
/* 8022BD34 00228C94  EC 81 00 28 */	fsubs f4, f1, f0
/* 8022BD38 00228C98  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 8022BD3C 00228C9C  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8022BD40 00228CA0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8022BD44 00228CA4  EC 63 08 28 */	fsubs f3, f3, f1
/* 8022BD48 00228CA8  EC 24 01 32 */	fmuls f1, f4, f4
/* 8022BD4C 00228CAC  C0 9E 03 00 */	lfs f4, 0x300(r30)
/* 8022BD50 00228CB0  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022BD54 00228CB4  C0 02 B6 04 */	lfs f0, lbl_805AD324@sda21(r2)
/* 8022BD58 00228CB8  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8022BD5C 00228CBC  EC 00 01 32 */	fmuls f0, f0, f4
/* 8022BD60 00228CC0  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022BD64 00228CC4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8022BD68 00228CC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BD6C 00228CCC  7C 00 00 26 */	mfcr r0
/* 8022BD70 00228CD0  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8022BD74 00228CD4  48 00 00 10 */	b lbl_8022BD84
lbl_8022BD78:
/* 8022BD78 00228CD8  38 60 00 01 */	li r3, 1
/* 8022BD7C 00228CDC  48 00 00 08 */	b lbl_8022BD84
lbl_8022BD80:
/* 8022BD80 00228CE0  38 60 00 00 */	li r3, 0
lbl_8022BD84:
/* 8022BD84 00228CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022BD88 00228CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022BD8C 00228CEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022BD90 00228CF0  7C 08 03 A6 */	mtlr r0
/* 8022BD94 00228CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 8022BD98 00228CF8  4E 80 00 20 */	blr 

.global TooClose__12CElitePirateFR13CStateManagerf
TooClose__12CElitePirateFR13CStateManagerf:
/* 8022BD9C 00228CFC  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8022BDA0 00228D00  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 8022BDA4 00228D04  C0 43 00 50 */	lfs f2, 0x50(r3)
/* 8022BDA8 00228D08  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 8022BDAC 00228D0C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8022BDB0 00228D10  C0 83 00 40 */	lfs f4, 0x40(r3)
/* 8022BDB4 00228D14  EC A2 08 28 */	fsubs f5, f2, f1
/* 8022BDB8 00228D18  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 8022BDBC 00228D1C  C0 63 00 60 */	lfs f3, 0x60(r3)
/* 8022BDC0 00228D20  EC 84 08 28 */	fsubs f4, f4, f1
/* 8022BDC4 00228D24  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 8022BDC8 00228D28  EC 25 01 72 */	fmuls f1, f5, f5
/* 8022BDCC 00228D2C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022BDD0 00228D30  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8022BDD4 00228D34  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022BDD8 00228D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BDDC 00228D3C  7C 00 00 26 */	mfcr r0
/* 8022BDE0 00228D40  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8022BDE4 00228D44  4E 80 00 20 */	blr 

.global InPosition__12CElitePirateFR13CStateManagerf
InPosition__12CElitePirateFR13CStateManagerf:
/* 8022BDE8 00228D48  C0 23 08 B8 */	lfs f1, 0x8b8(r3)
/* 8022BDEC 00228D4C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 8022BDF0 00228D50  C0 63 08 B4 */	lfs f3, 0x8b4(r3)
/* 8022BDF4 00228D54  EC 21 00 28 */	fsubs f1, f1, f0
/* 8022BDF8 00228D58  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022BDFC 00228D5C  C0 43 08 BC */	lfs f2, 0x8bc(r3)
/* 8022BE00 00228D60  EC 63 00 28 */	fsubs f3, f3, f0
/* 8022BE04 00228D64  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 8022BE08 00228D68  EC 21 00 72 */	fmuls f1, f1, f1
/* 8022BE0C 00228D6C  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022BE10 00228D70  C0 02 B6 00 */	lfs f0, lbl_805AD320@sda21(r2)
/* 8022BE14 00228D74  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 8022BE18 00228D78  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022BE1C 00228D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BE20 00228D80  7C 00 00 26 */	mfcr r0
/* 8022BE24 00228D84  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8022BE28 00228D88  4E 80 00 20 */	blr 

.global ShotAt__12CElitePirateFR13CStateManagerf
ShotAt__12CElitePirateFR13CStateManagerf:
/* 8022BE2C 00228D8C  88 03 09 88 */	lbz r0, 0x988(r3)
/* 8022BE30 00228D90  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 8022BE34 00228D94  4E 80 00 20 */	blr 

.global sub_8022be38
sub_8022be38:
/* 8022BE38 00228D98  88 03 09 88 */	lbz r0, 0x988(r3)
/* 8022BE3C 00228D9C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 8022BE40 00228DA0  40 82 00 3C */	bne lbl_8022BE7C
/* 8022BE44 00228DA4  A0 85 00 00 */	lhz r4, 0(r5)
/* 8022BE48 00228DA8  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022BE4C 00228DAC  7C 04 00 40 */	cmplw r4, r0
/* 8022BE50 00228DB0  40 82 00 2C */	bne lbl_8022BE7C
/* 8022BE54 00228DB4  88 03 06 F6 */	lbz r0, 0x6f6(r3)
/* 8022BE58 00228DB8  28 00 00 00 */	cmplwi r0, 0
/* 8022BE5C 00228DBC  41 82 00 20 */	beq lbl_8022BE7C
/* 8022BE60 00228DC0  C0 23 07 A8 */	lfs f1, 0x7a8(r3)
/* 8022BE64 00228DC4  C0 02 B5 C8 */	lfs f0, lbl_805AD2E8@sda21(r2)
/* 8022BE68 00228DC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BE6C 00228DCC  4C 41 13 82 */	cror 2, 1, 2
/* 8022BE70 00228DD0  7C 00 00 26 */	mfcr r0
/* 8022BE74 00228DD4  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8022BE78 00228DD8  4E 80 00 20 */	blr 
lbl_8022BE7C:
/* 8022BE7C 00228DDC  38 60 00 00 */	li r3, 0
/* 8022BE80 00228DE0  4E 80 00 20 */	blr 

.global ShouldCallForBackup__12CElitePirateFR13CStateManagerf
ShouldCallForBackup__12CElitePirateFR13CStateManagerf:
/* 8022BE84 00228DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022BE88 00228DE8  7C 08 02 A6 */	mflr r0
/* 8022BE8C 00228DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022BE90 00228DF0  38 A1 00 08 */	addi r5, r1, 8
/* 8022BE94 00228DF4  A0 03 07 72 */	lhz r0, 0x772(r3)
/* 8022BE98 00228DF8  B0 01 00 08 */	sth r0, 8(r1)
/* 8022BE9C 00228DFC  4B FF FF 9D */	bl sub_8022be38
/* 8022BEA0 00228E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022BEA4 00228E04  7C 08 03 A6 */	mtlr r0
/* 8022BEA8 00228E08  38 21 00 10 */	addi r1, r1, 0x10
/* 8022BEAC 00228E0C  4E 80 00 20 */	blr 

.global ShouldSpecialAttack__12CElitePirateFR13CStateManagerf
ShouldSpecialAttack__12CElitePirateFR13CStateManagerf:
/* 8022BEB0 00228E10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022BEB4 00228E14  7C 08 02 A6 */	mflr r0
/* 8022BEB8 00228E18  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022BEBC 00228E1C  7C 85 23 78 */	mr r5, r4
/* 8022BEC0 00228E20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022BEC4 00228E24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022BEC8 00228E28  7C 7F 1B 78 */	mr r31, r3
/* 8022BECC 00228E2C  C0 03 07 B8 */	lfs f0, 0x7b8(r3)
/* 8022BED0 00228E30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8022BED4 00228E34  4C 40 13 82 */	cror 2, 0, 2
/* 8022BED8 00228E38  40 82 00 A0 */	bne lbl_8022BF78
/* 8022BEDC 00228E3C  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 8022BEE0 00228E40  80 7F 00 04 */	lwz r3, 4(r31)
/* 8022BEE4 00228E44  80 04 00 04 */	lwz r0, 4(r4)
/* 8022BEE8 00228E48  7C 03 00 00 */	cmpw r3, r0
/* 8022BEEC 00228E4C  40 82 00 8C */	bne lbl_8022BF78
/* 8022BEF0 00228E50  81 84 00 00 */	lwz r12, 0(r4)
/* 8022BEF4 00228E54  38 61 00 08 */	addi r3, r1, 8
/* 8022BEF8 00228E58  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022BEFC 00228E5C  7D 89 03 A6 */	mtctr r12
/* 8022BF00 00228E60  4E 80 04 21 */	bctrl 
/* 8022BF04 00228E64  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8022BF08 00228E68  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8022BF0C 00228E6C  C0 5F 02 FC */	lfs f2, 0x2fc(r31)
/* 8022BF10 00228E70  EC A1 00 28 */	fsubs f5, f1, f0
/* 8022BF14 00228E74  C0 81 00 08 */	lfs f4, 8(r1)
/* 8022BF18 00228E78  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8022BF1C 00228E7C  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8022BF20 00228E80  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8022BF24 00228E84  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8022BF28 00228E88  EC 84 08 28 */	fsubs f4, f4, f1
/* 8022BF2C 00228E8C  EC 25 01 72 */	fmuls f1, f5, f5
/* 8022BF30 00228E90  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022BF34 00228E94  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8022BF38 00228E98  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022BF3C 00228E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BF40 00228EA0  4C 41 13 82 */	cror 2, 1, 2
/* 8022BF44 00228EA4  40 82 00 34 */	bne lbl_8022BF78
/* 8022BF48 00228EA8  C0 1F 03 00 */	lfs f0, 0x300(r31)
/* 8022BF4C 00228EAC  EC 00 00 32 */	fmuls f0, f0, f0
/* 8022BF50 00228EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BF54 00228EB4  4C 40 13 82 */	cror 2, 0, 2
/* 8022BF58 00228EB8  40 82 00 20 */	bne lbl_8022BF78
/* 8022BF5C 00228EBC  FC 20 12 10 */	fabs f1, f2
/* 8022BF60 00228EC0  C0 02 B5 C8 */	lfs f0, lbl_805AD2E8@sda21(r2)
/* 8022BF64 00228EC4  FC 20 08 18 */	frsp f1, f1
/* 8022BF68 00228EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BF6C 00228ECC  7C 00 00 26 */	mfcr r0
/* 8022BF70 00228ED0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8022BF74 00228ED4  48 00 00 08 */	b lbl_8022BF7C
lbl_8022BF78:
/* 8022BF78 00228ED8  38 60 00 00 */	li r3, 0
lbl_8022BF7C:
/* 8022BF7C 00228EDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022BF80 00228EE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022BF84 00228EE4  7C 08 03 A6 */	mtlr r0
/* 8022BF88 00228EE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022BF8C 00228EEC  4E 80 00 20 */	blr 

.global ShouldAttack__12CElitePirateFR13CStateManagerf
ShouldAttack__12CElitePirateFR13CStateManagerf:
/* 8022BF90 00228EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022BF94 00228EF4  7C 08 02 A6 */	mflr r0
/* 8022BF98 00228EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022BF9C 00228EFC  80 A4 08 4C */	lwz r5, 0x84c(r4)
/* 8022BFA0 00228F00  C0 03 02 FC */	lfs f0, 0x2fc(r3)
/* 8022BFA4 00228F04  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 8022BFA8 00228F08  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022BFAC 00228F0C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8022BFB0 00228F10  C0 85 00 40 */	lfs f4, 0x40(r5)
/* 8022BFB4 00228F14  EC A2 08 28 */	fsubs f5, f2, f1
/* 8022BFB8 00228F18  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 8022BFBC 00228F1C  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 8022BFC0 00228F20  EC 84 08 28 */	fsubs f4, f4, f1
/* 8022BFC4 00228F24  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8022BFC8 00228F28  EC 25 01 72 */	fmuls f1, f5, f5
/* 8022BFCC 00228F2C  EC 43 10 28 */	fsubs f2, f3, f2
/* 8022BFD0 00228F30  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8022BFD4 00228F34  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022BFD8 00228F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022BFDC 00228F3C  4C 40 13 82 */	cror 2, 0, 2
/* 8022BFE0 00228F40  40 82 00 28 */	bne lbl_8022C008
/* 8022BFE4 00228F44  81 83 00 00 */	lwz r12, 0(r3)
/* 8022BFE8 00228F48  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022BFEC 00228F4C  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022BFF0 00228F50  7D 89 03 A6 */	mtctr r12
/* 8022BFF4 00228F54  4E 80 04 21 */	bctrl 
/* 8022BFF8 00228F58  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022BFFC 00228F5C  7C 00 00 34 */	cntlzw r0, r0
/* 8022C000 00228F60  54 03 D9 7E */	srwi r3, r0, 5
/* 8022C004 00228F64  48 00 00 08 */	b lbl_8022C00C
lbl_8022C008:
/* 8022C008 00228F68  38 60 00 00 */	li r3, 0
lbl_8022C00C:
/* 8022C00C 00228F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C010 00228F70  7C 08 03 A6 */	mtlr r0
/* 8022C014 00228F74  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C018 00228F78  4E 80 00 20 */	blr 

.global sub_8022c01c
sub_8022c01c:
/* 8022C01C 00228F7C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8022C020 00228F80  7C 08 02 A6 */	mflr r0
/* 8022C024 00228F84  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8022C028 00228F88  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8022C02C 00228F8C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 8022C030 00228F90  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8022C034 00228F94  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8022C038 00228F98  93 A1 00 94 */	stw r29, 0x94(r1)
/* 8022C03C 00228F9C  7C 7D 1B 78 */	mr r29, r3
/* 8022C040 00228FA0  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022C044 00228FA4  C0 23 07 B8 */	lfs f1, 0x7b8(r3)
/* 8022C048 00228FA8  7C 9E 23 78 */	mr r30, r4
/* 8022C04C 00228FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022C050 00228FB0  4C 40 13 82 */	cror 2, 0, 2
/* 8022C054 00228FB4  40 82 02 08 */	bne lbl_8022C25C
/* 8022C058 00228FB8  A0 65 00 00 */	lhz r3, 0(r5)
/* 8022C05C 00228FBC  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022C060 00228FC0  7C 03 00 40 */	cmplw r3, r0
/* 8022C064 00228FC4  41 82 01 F8 */	beq lbl_8022C25C
/* 8022C068 00228FC8  B0 61 00 08 */	sth r3, 8(r1)
/* 8022C06C 00228FCC  7F C3 F3 78 */	mr r3, r30
/* 8022C070 00228FD0  38 81 00 08 */	addi r4, r1, 8
/* 8022C074 00228FD4  4B E2 05 31 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022C078 00228FD8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8022C07C 00228FDC  41 82 01 E0 */	beq lbl_8022C25C
/* 8022C080 00228FE0  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8022C084 00228FE4  7F C5 F3 78 */	mr r5, r30
/* 8022C088 00228FE8  38 61 00 38 */	addi r3, r1, 0x38
/* 8022C08C 00228FEC  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022C090 00228FF0  81 84 00 00 */	lwz r12, 0(r4)
/* 8022C094 00228FF4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022C098 00228FF8  7D 89 03 A6 */	mtctr r12
/* 8022C09C 00228FFC  4E 80 04 21 */	bctrl 
/* 8022C0A0 00229000  C0 81 00 38 */	lfs f4, 0x38(r1)
/* 8022C0A4 00229004  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 8022C0A8 00229008  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8022C0AC 0022900C  D0 81 00 84 */	stfs f4, 0x84(r1)
/* 8022C0B0 00229010  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 8022C0B4 00229014  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 8022C0B8 00229018  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8022C0BC 0022901C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 8022C0C0 00229020  EC 63 00 28 */	fsubs f3, f3, f0
/* 8022C0C4 00229024  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 8022C0C8 00229028  EC 84 08 28 */	fsubs f4, f4, f1
/* 8022C0CC 0022902C  C0 BD 03 00 */	lfs f5, 0x300(r29)
/* 8022C0D0 00229030  EC 42 00 28 */	fsubs f2, f2, f0
/* 8022C0D4 00229034  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8022C0D8 00229038  EC 05 01 72 */	fmuls f0, f5, f5
/* 8022C0DC 0022903C  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 8022C0E0 00229040  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 8022C0E4 00229044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022C0E8 00229048  4C 41 13 82 */	cror 2, 1, 2
/* 8022C0EC 0022904C  40 82 01 70 */	bne lbl_8022C25C
/* 8022C0F0 00229050  7F A3 EB 78 */	mr r3, r29
/* 8022C0F4 00229054  7F C4 F3 78 */	mr r4, r30
/* 8022C0F8 00229058  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022C0FC 0022905C  C0 22 B5 B8 */	lfs f1, lbl_805AD2D8@sda21(r2)
/* 8022C100 00229060  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 8022C104 00229064  7D 89 03 A6 */	mtctr r12
/* 8022C108 00229068  4E 80 04 21 */	bctrl 
/* 8022C10C 0022906C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C110 00229070  40 82 01 4C */	bne lbl_8022C25C
/* 8022C114 00229074  7F A4 EB 78 */	mr r4, r29
/* 8022C118 00229078  7F E5 FB 78 */	mr r5, r31
/* 8022C11C 0022907C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8022C120 00229080  4B FF C7 45 */	bl sub_80228864
/* 8022C124 00229084  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8022C128 00229088  7F A3 EB 78 */	mr r3, r29
/* 8022C12C 0022908C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8022C130 00229090  7F C4 F3 78 */	mr r4, r30
/* 8022C134 00229094  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8022C138 00229098  38 A1 00 78 */	addi r5, r1, 0x78
/* 8022C13C 0022909C  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8022C140 002290A0  38 C1 00 84 */	addi r6, r1, 0x84
/* 8022C144 002290A4  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8022C148 002290A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8022C14C 002290AC  4B FC 8C 85 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 8022C150 002290B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C154 002290B4  40 82 01 08 */	bne lbl_8022C25C
/* 8022C158 002290B8  C0 1D 06 C0 */	lfs f0, 0x6c0(r29)
/* 8022C15C 002290BC  7F C4 F3 78 */	mr r4, r30
/* 8022C160 002290C0  38 61 00 20 */	addi r3, r1, 0x20
/* 8022C164 002290C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8022C168 002290C8  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8022C16C 002290CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8022C170 002290D0  C0 3D 06 C4 */	lfs f1, 0x6c4(r29)
/* 8022C174 002290D4  C0 5D 06 C0 */	lfs f2, 0x6c0(r29)
/* 8022C178 002290D8  C0 7D 06 BC */	lfs f3, 0x6bc(r29)
/* 8022C17C 002290DC  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8022C180 002290E0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8022C184 002290E4  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 8022C188 002290E8  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 8022C18C 002290EC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8022C190 002290F0  48 00 46 D5 */	bl sub_80230864
/* 8022C194 002290F4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8022C198 002290F8  38 61 00 5C */	addi r3, r1, 0x5c
/* 8022C19C 002290FC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8022C1A0 00229100  38 81 00 78 */	addi r4, r1, 0x78
/* 8022C1A4 00229104  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8022C1A8 00229108  38 A1 00 68 */	addi r5, r1, 0x68
/* 8022C1AC 0022910C  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8022C1B0 00229110  38 C1 00 10 */	addi r6, r1, 0x10
/* 8022C1B4 00229114  38 E1 00 0C */	addi r7, r1, 0xc
/* 8022C1B8 00229118  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8022C1BC 0022911C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8022C1C0 00229120  48 00 44 49 */	bl sub_80230608
/* 8022C1C4 00229124  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8022C1C8 00229128  48 0E 8C 29 */	bl FastSinR__5CMathFf
/* 8022C1CC 0022912C  FF E0 08 90 */	fmr f31, f1
/* 8022C1D0 00229130  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8022C1D4 00229134  48 0E 8B 71 */	bl FastCosR__5CMathFf
/* 8022C1D8 00229138  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022C1DC 0022913C  38 61 00 14 */	addi r3, r1, 0x14
/* 8022C1E0 00229140  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8022C1E4 00229144  38 9D 00 34 */	addi r4, r29, 0x34
/* 8022C1E8 00229148  38 A1 00 50 */	addi r5, r1, 0x50
/* 8022C1EC 0022914C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8022C1F0 00229150  D3 E1 00 58 */	stfs f31, 0x58(r1)
/* 8022C1F4 00229154  48 0E 68 8D */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 8022C1F8 00229158  C0 A2 B6 08 */	lfs f5, lbl_805AD328@sda21(r2)
/* 8022C1FC 0022915C  7F A3 EB 78 */	mr r3, r29
/* 8022C200 00229160  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8022C204 00229164  7F C4 F3 78 */	mr r4, r30
/* 8022C208 00229168  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8022C20C 0022916C  38 A1 00 78 */	addi r5, r1, 0x78
/* 8022C210 00229170  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8022C214 00229174  EC 85 00 B2 */	fmuls f4, f5, f2
/* 8022C218 00229178  C0 C1 00 7C */	lfs f6, 0x7c(r1)
/* 8022C21C 0022917C  EC 45 00 72 */	fmuls f2, f5, f1
/* 8022C220 00229180  C0 61 00 80 */	lfs f3, 0x80(r1)
/* 8022C224 00229184  EC 05 00 32 */	fmuls f0, f5, f0
/* 8022C228 00229188  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8022C22C 0022918C  EC 86 20 2A */	fadds f4, f6, f4
/* 8022C230 00229190  38 C1 00 44 */	addi r6, r1, 0x44
/* 8022C234 00229194  EC 43 10 2A */	fadds f2, f3, f2
/* 8022C238 00229198  EC 01 00 2A */	fadds f0, f1, f0
/* 8022C23C 0022919C  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8022C240 002291A0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8022C244 002291A4  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8022C248 002291A8  4B FC 8B 89 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 8022C24C 002291AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022C250 002291B0  7C 00 00 34 */	cntlzw r0, r0
/* 8022C254 002291B4  54 03 D9 7E */	srwi r3, r0, 5
/* 8022C258 002291B8  48 00 00 08 */	b lbl_8022C260
lbl_8022C25C:
/* 8022C25C 002291BC  38 60 00 00 */	li r3, 0
lbl_8022C260:
/* 8022C260 002291C0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 8022C264 002291C4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8022C268 002291C8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8022C26C 002291CC  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8022C270 002291D0  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8022C274 002291D4  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 8022C278 002291D8  7C 08 03 A6 */	mtlr r0
/* 8022C27C 002291DC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8022C280 002291E0  4E 80 00 20 */	blr 

.global ShouldFire__12CElitePirateFR13CStateManagerf
ShouldFire__12CElitePirateFR13CStateManagerf:
/* 8022C284 002291E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C288 002291E8  7C 08 02 A6 */	mflr r0
/* 8022C28C 002291EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C290 002291F0  38 A1 00 08 */	addi r5, r1, 8
/* 8022C294 002291F4  A0 03 07 72 */	lhz r0, 0x772(r3)
/* 8022C298 002291F8  B0 01 00 08 */	sth r0, 8(r1)
/* 8022C29C 002291FC  4B FF FD 81 */	bl sub_8022c01c
/* 8022C2A0 00229200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C2A4 00229204  7C 08 03 A6 */	mtlr r0
/* 8022C2A8 00229208  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C2AC 0022920C  4E 80 00 20 */	blr 

.global ShouldTaunt__12CElitePirateFR13CStateManagerf
ShouldTaunt__12CElitePirateFR13CStateManagerf:
/* 8022C2B0 00229210  C0 23 07 BC */	lfs f1, 0x7bc(r3)
/* 8022C2B4 00229214  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022C2B8 00229218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022C2BC 0022921C  4C 40 13 82 */	cror 2, 0, 2
/* 8022C2C0 00229220  7C 00 00 26 */	mfcr r0
/* 8022C2C4 00229224  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 8022C2C8 00229228  4E 80 00 20 */	blr 

.global ShouldTurn__12CElitePirateFR13CStateManagerf
ShouldTurn__12CElitePirateFR13CStateManagerf:
/* 8022C2CC 0022922C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8022C2D0 00229230  7C 08 02 A6 */	mflr r0
/* 8022C2D4 00229234  90 01 00 64 */	stw r0, 0x64(r1)
/* 8022C2D8 00229238  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8022C2DC 0022923C  7C 7F 1B 78 */	mr r31, r3
/* 8022C2E0 00229240  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 8022C2E4 00229244  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022C2E8 00229248  38 61 00 10 */	addi r3, r1, 0x10
/* 8022C2EC 0022924C  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 8022C2F0 00229250  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 8022C2F4 00229254  EC 44 08 28 */	fsubs f2, f4, f1
/* 8022C2F8 00229258  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8022C2FC 0022925C  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 8022C300 00229260  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 8022C304 00229264  EC 20 08 28 */	fsubs f1, f0, f1
/* 8022C308 00229268  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8022C30C 0022926C  EC 65 18 28 */	fsubs f3, f5, f3
/* 8022C310 00229270  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8022C314 00229274  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8022C318 00229278  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8022C31C 0022927C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8022C320 00229280  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 8022C324 00229284  48 0E 7E DD */	bl __ct__9CVector2fFff
/* 8022C328 00229288  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8022C32C 0022928C  38 61 00 08 */	addi r3, r1, 8
/* 8022C330 00229290  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8022C334 00229294  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8022C338 00229298  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8022C33C 0022929C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8022C340 002292A0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8022C344 002292A4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8022C348 002292A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8022C34C 002292AC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8022C350 002292B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8022C354 002292B4  48 0E 7E AD */	bl __ct__9CVector2fFff
/* 8022C358 002292B8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8022C35C 002292BC  38 61 00 18 */	addi r3, r1, 0x18
/* 8022C360 002292C0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8022C364 002292C4  38 81 00 20 */	addi r4, r1, 0x20
/* 8022C368 002292C8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8022C36C 002292CC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022C370 002292D0  48 0E 7C 55 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 8022C374 002292D4  C0 02 B6 0C */	lfs f0, lbl_805AD32C@sda21(r2)
/* 8022C378 002292D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022C37C 002292DC  7C 00 00 26 */	mfcr r0
/* 8022C380 002292E0  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8022C384 002292E4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8022C388 002292E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8022C38C 002292EC  7C 08 03 A6 */	mtlr r0
/* 8022C390 002292F0  38 21 00 60 */	addi r1, r1, 0x60
/* 8022C394 002292F4  4E 80 00 20 */	blr 

.global InDetectionRange__12CElitePirateFR13CStateManagerf
InDetectionRange__12CElitePirateFR13CStateManagerf:
/* 8022C398 002292F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C39C 002292FC  7C 08 02 A6 */	mflr r0
/* 8022C3A0 00229300  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C3A4 00229304  88 03 09 88 */	lbz r0, 0x988(r3)
/* 8022C3A8 00229308  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8022C3AC 0022930C  41 82 00 0C */	beq lbl_8022C3B8
/* 8022C3B0 00229310  38 60 00 01 */	li r3, 1
/* 8022C3B4 00229314  48 00 00 08 */	b lbl_8022C3BC
lbl_8022C3B8:
/* 8022C3B8 00229318  4B FC 9F B5 */	bl InDetectionRange__10CPatternedFR13CStateManagerf
lbl_8022C3BC:
/* 8022C3BC 0022931C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C3C0 00229320  7C 08 03 A6 */	mtlr r0
/* 8022C3C4 00229324  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C3C8 00229328  4E 80 00 20 */	blr 

.global SpotPlayer__12CElitePirateFR13CStateManagerf
SpotPlayer__12CElitePirateFR13CStateManagerf:
/* 8022C3CC 0022932C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C3D0 00229330  7C 08 02 A6 */	mflr r0
/* 8022C3D4 00229334  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C3D8 00229338  88 03 09 88 */	lbz r0, 0x988(r3)
/* 8022C3DC 0022933C  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 8022C3E0 00229340  41 82 00 0C */	beq lbl_8022C3EC
/* 8022C3E4 00229344  38 60 00 01 */	li r3, 1
/* 8022C3E8 00229348  48 00 00 08 */	b lbl_8022C3F0
lbl_8022C3EC:
/* 8022C3EC 0022934C  4B FC 9E 11 */	bl SpotPlayer__10CPatternedFR13CStateManagerf
lbl_8022C3F0:
/* 8022C3F0 00229350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C3F4 00229354  7C 08 03 A6 */	mtlr r0
/* 8022C3F8 00229358  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C3FC 0022935C  4E 80 00 20 */	blr 

.global DoUserAnimEvent__12CElitePirateFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CElitePirateFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 8022C400 00229360  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 8022C404 00229364  7C 08 02 A6 */	mflr r0
/* 8022C408 00229368  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 8022C40C 0022936C  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 8022C410 00229370  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, qr0
/* 8022C414 00229374  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 8022C418 00229378  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, qr0
/* 8022C41C 0022937C  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 8022C420 00229380  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, qr0
/* 8022C424 00229384  BF 21 01 94 */	stmw r25, 0x194(r1)
/* 8022C428 00229388  7C DF 33 78 */	mr r31, r6
/* 8022C42C 0022938C  FF E0 08 90 */	fmr f31, f1
/* 8022C430 00229390  28 1F 00 17 */	cmplwi r31, 0x17
/* 8022C434 00229394  7C 7C 1B 78 */	mr r28, r3
/* 8022C438 00229398  7C 9D 23 78 */	mr r29, r4
/* 8022C43C 0022939C  7C BE 2B 78 */	mr r30, r5
/* 8022C440 002293A0  38 C0 00 00 */	li r6, 0
/* 8022C444 002293A4  41 81 03 64 */	bgt lbl_8022C7A8
/* 8022C448 002293A8  3C A0 80 3E */	lis r5, lbl_803E7DC0@ha
/* 8022C44C 002293AC  57 E0 10 3A */	slwi r0, r31, 2
/* 8022C450 002293B0  38 A5 7D C0 */	addi r5, r5, lbl_803E7DC0@l
/* 8022C454 002293B4  7C 05 00 2E */	lwzx r0, r5, r0
/* 8022C458 002293B8  7C 09 03 A6 */	mtctr r0
/* 8022C45C 002293BC  4E 80 04 20 */	bctr 
.global lbl_8022C460
lbl_8022C460:
/* 8022C460 002293C0  A0 7C 07 72 */	lhz r3, 0x772(r28)
/* 8022C464 002293C4  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022C468 002293C8  7C 03 00 40 */	cmplw r3, r0
/* 8022C46C 002293CC  41 82 00 3C */	beq lbl_8022C4A8
/* 8022C470 002293D0  A0 1C 07 72 */	lhz r0, 0x772(r28)
/* 8022C474 002293D4  7F A3 EB 78 */	mr r3, r29
/* 8022C478 002293D8  38 81 00 24 */	addi r4, r1, 0x24
/* 8022C47C 002293DC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8022C480 002293E0  4B E2 00 F5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022C484 002293E4  7C 64 1B 79 */	or. r4, r3, r3
/* 8022C488 002293E8  41 82 00 20 */	beq lbl_8022C4A8
/* 8022C48C 002293EC  A0 1C 00 08 */	lhz r0, 8(r28)
/* 8022C490 002293F0  7F A3 EB 78 */	mr r3, r29
/* 8022C494 002293F4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8022C498 002293F8  38 C0 00 13 */	li r6, 0x13
/* 8022C49C 002293FC  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8022C4A0 00229400  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8022C4A4 00229404  4B E1 7A 2D */	bl SendScriptMsg__13CStateManagerFP7CEntity9TEditorId20EScriptObjectMessage
lbl_8022C4A8:
/* 8022C4A8 00229408  38 C0 00 01 */	li r6, 1
/* 8022C4AC 0022940C  48 00 02 FC */	b lbl_8022C7A8
.global lbl_8022C4B0
lbl_8022C4B0:
/* 8022C4B0 00229410  7F 84 E3 78 */	mr r4, r28
/* 8022C4B4 00229414  38 61 00 FC */	addi r3, r1, 0xfc
/* 8022C4B8 00229418  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8022C4BC 0022941C  4B E4 C4 BD */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8022C4C0 00229420  38 61 01 5C */	addi r3, r1, 0x15c
/* 8022C4C4 00229424  38 81 00 FC */	addi r4, r1, 0xfc
/* 8022C4C8 00229428  48 0E 66 AD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8022C4CC 0022942C  C0 FC 00 50 */	lfs f7, 0x50(r28)
/* 8022C4D0 00229430  38 61 00 CC */	addi r3, r1, 0xcc
/* 8022C4D4 00229434  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 8022C4D8 00229438  38 81 00 6C */	addi r4, r1, 0x6c
/* 8022C4DC 0022943C  C1 1C 00 40 */	lfs f8, 0x40(r28)
/* 8022C4E0 00229440  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 8022C4E4 00229444  EC 00 38 28 */	fsubs f0, f0, f7
/* 8022C4E8 00229448  C0 9C 00 48 */	lfs f4, 0x48(r28)
/* 8022C4EC 0022944C  EC 21 40 28 */	fsubs f1, f1, f8
/* 8022C4F0 00229450  C0 DC 00 60 */	lfs f6, 0x60(r28)
/* 8022C4F4 00229454  C0 41 01 88 */	lfs f2, 0x188(r1)
/* 8022C4F8 00229458  EC 00 01 32 */	fmuls f0, f0, f4
/* 8022C4FC 0022945C  C0 7C 00 38 */	lfs f3, 0x38(r28)
/* 8022C500 00229460  EC 42 30 28 */	fsubs f2, f2, f6
/* 8022C504 00229464  EC 01 00 FA */	fmadds f0, f1, f3, f0
/* 8022C508 00229468  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 8022C50C 0022946C  D1 01 00 60 */	stfs f8, 0x60(r1)
/* 8022C510 00229470  EC A2 00 7A */	fmadds f5, f2, f1, f0
/* 8022C514 00229474  D0 E1 00 64 */	stfs f7, 0x64(r1)
/* 8022C518 00229478  D0 C1 00 68 */	stfs f6, 0x68(r1)
/* 8022C51C 0022947C  EC 05 00 72 */	fmuls f0, f5, f1
/* 8022C520 00229480  EC 45 00 F2 */	fmuls f2, f5, f3
/* 8022C524 00229484  EC 25 01 32 */	fmuls f1, f5, f4
/* 8022C528 00229488  EC 06 00 2A */	fadds f0, f6, f0
/* 8022C52C 0022948C  EC 48 10 2A */	fadds f2, f8, f2
/* 8022C530 00229490  EC 27 08 2A */	fadds f1, f7, f1
/* 8022C534 00229494  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8022C538 00229498  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8022C53C 0022949C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8022C540 002294A0  D0 C1 00 74 */	stfs f6, 0x74(r1)
/* 8022C544 002294A4  48 0E 6B FD */	bl Translate__12CTransform4fFRC9CVector3f
/* 8022C548 002294A8  38 61 01 2C */	addi r3, r1, 0x12c
/* 8022C54C 002294AC  38 81 00 CC */	addi r4, r1, 0xcc
/* 8022C550 002294B0  48 0E 66 25 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8022C554 002294B4  3C 60 80 3D */	lis r3, lbl_803D3310@ha
/* 8022C558 002294B8  3B 40 00 00 */	li r26, 0
/* 8022C55C 002294BC  38 63 33 10 */	addi r3, r3, lbl_803D3310@l
/* 8022C560 002294C0  3B 20 00 00 */	li r25, 0
/* 8022C564 002294C4  38 83 00 B8 */	addi r4, r3, 0xb8
/* 8022C568 002294C8  38 60 09 88 */	li r3, 0x988
/* 8022C56C 002294CC  38 A0 00 00 */	li r5, 0
/* 8022C570 002294D0  48 0E 92 FD */	bl __nw__FUlPCcPCc
/* 8022C574 002294D4  7C 7B 1B 79 */	or. r27, r3, r3
/* 8022C578 002294D8  41 82 01 00 */	beq lbl_8022C678
/* 8022C57C 002294DC  7F 83 E3 78 */	mr r3, r28
/* 8022C580 002294E0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8022C584 002294E4  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 8022C588 002294E8  7D 89 03 A6 */	mtctr r12
/* 8022C58C 002294EC  4E 80 04 21 */	bctrl 
/* 8022C590 002294F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C594 002294F4  41 82 00 0C */	beq lbl_8022C5A0
/* 8022C598 002294F8  C3 C2 B5 D0 */	lfs f30, lbl_805AD2F0@sda21(r2)
/* 8022C59C 002294FC  48 00 00 08 */	b lbl_8022C5A4
lbl_8022C5A0:
/* 8022C5A0 00229500  C3 C2 B5 BC */	lfs f30, lbl_805AD2DC@sda21(r2)
lbl_8022C5A4:
/* 8022C5A4 00229504  7F 83 E3 78 */	mr r3, r28
/* 8022C5A8 00229508  81 9C 00 00 */	lwz r12, 0(r28)
/* 8022C5AC 0022950C  81 8C 02 D0 */	lwz r12, 0x2d0(r12)
/* 8022C5B0 00229510  7D 89 03 A6 */	mtctr r12
/* 8022C5B4 00229514  4E 80 04 21 */	bctrl 
/* 8022C5B8 00229518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C5BC 0022951C  41 82 00 0C */	beq lbl_8022C5C8
/* 8022C5C0 00229520  C3 A2 B6 10 */	lfs f29, lbl_805AD330@sda21(r2)
/* 8022C5C4 00229524  48 00 00 08 */	b lbl_8022C5CC
lbl_8022C5C8:
/* 8022C5C8 00229528  C3 A2 B6 14 */	lfs f29, lbl_805AD334@sda21(r2)
lbl_8022C5CC:
/* 8022C5CC 0022952C  A0 FC 00 08 */	lhz r7, 8(r28)
/* 8022C5D0 00229530  3C 60 80 57 */	lis r3, lbl_8056D410@ha
/* 8022C5D4 00229534  80 0D A3 88 */	lwz r0, lbl_805A8F48@sda21(r13)
/* 8022C5D8 00229538  38 A3 D4 10 */	addi r5, r3, lbl_8056D410@l
/* 8022C5DC 0022953C  B0 E1 00 18 */	sth r7, 0x18(r1)
/* 8022C5E0 00229540  38 61 00 78 */	addi r3, r1, 0x78
/* 8022C5E4 00229544  38 81 00 40 */	addi r4, r1, 0x40
/* 8022C5E8 00229548  38 C1 00 44 */	addi r6, r1, 0x44
/* 8022C5EC 0022954C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022C5F0 00229550  80 1C 00 04 */	lwz r0, 4(r28)
/* 8022C5F4 00229554  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 8022C5F8 00229558  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8022C5FC 0022955C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8022C600 00229560  4B E2 4E 85 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8022C604 00229564  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 8022C608 00229568  38 61 00 50 */	addi r3, r1, 0x50
/* 8022C60C 0022956C  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 8022C610 00229570  3B 40 00 01 */	li r26, 1
/* 8022C614 00229574  38 84 00 E8 */	addi r4, r4, 0xe8
/* 8022C618 00229578  4B DD 86 A1 */	bl string_l__4rstlFPCc
/* 8022C61C 0022957C  7F A4 EB 78 */	mr r4, r29
/* 8022C620 00229580  38 61 00 0C */	addi r3, r1, 0xc
/* 8022C624 00229584  3B 20 00 01 */	li r25, 1
/* 8022C628 00229588  4B E2 0A B5 */	bl AllocateUniqueId__13CStateManagerFv
/* 8022C62C 0022958C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8022C630 00229590  7F 84 E3 78 */	mr r4, r28
/* 8022C634 00229594  38 61 00 90 */	addi r3, r1, 0x90
/* 8022C638 00229598  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8022C63C 0022959C  81 9C 00 00 */	lwz r12, 0(r28)
/* 8022C640 002295A0  81 8C 02 DC */	lwz r12, 0x2dc(r12)
/* 8022C644 002295A4  7D 89 03 A6 */	mtctr r12
/* 8022C648 002295A8  4E 80 04 21 */	bctrl 
/* 8022C64C 002295AC  FC 20 E8 90 */	fmr f1, f29
/* 8022C650 002295B0  7F 63 DB 78 */	mr r3, r27
/* 8022C654 002295B4  FC 40 F0 90 */	fmr f2, f30
/* 8022C658 002295B8  38 81 00 10 */	addi r4, r1, 0x10
/* 8022C65C 002295BC  38 A1 00 50 */	addi r5, r1, 0x50
/* 8022C660 002295C0  38 C1 00 78 */	addi r6, r1, 0x78
/* 8022C664 002295C4  38 E1 01 2C */	addi r7, r1, 0x12c
/* 8022C668 002295C8  39 01 00 18 */	addi r8, r1, 0x18
/* 8022C66C 002295CC  39 21 00 90 */	addi r9, r1, 0x90
/* 8022C670 002295D0  48 00 5C E9 */	bl __ct__10CShockWaveFv
/* 8022C674 002295D4  7C 7B 1B 78 */	mr r27, r3
lbl_8022C678:
/* 8022C678 002295D8  7F 20 07 75 */	extsb. r0, r25
/* 8022C67C 002295DC  41 82 00 0C */	beq lbl_8022C688
/* 8022C680 002295E0  38 61 00 50 */	addi r3, r1, 0x50
/* 8022C684 002295E4  48 11 14 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8022C688:
/* 8022C688 002295E8  7F 40 07 75 */	extsb. r0, r26
/* 8022C68C 002295EC  41 82 00 44 */	beq lbl_8022C6D0
/* 8022C690 002295F0  80 01 00 80 */	lwz r0, 0x80(r1)
/* 8022C694 002295F4  80 61 00 88 */	lwz r3, 0x88(r1)
/* 8022C698 002295F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8022C69C 002295FC  90 61 00 30 */	stw r3, 0x30(r1)
/* 8022C6A0 00229600  7C 64 1B 78 */	mr r4, r3
/* 8022C6A4 00229604  7C 03 02 14 */	add r0, r3, r0
/* 8022C6A8 00229608  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8022C6AC 0022960C  90 01 00 38 */	stw r0, 0x38(r1)
/* 8022C6B0 00229610  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022C6B4 00229614  48 00 00 08 */	b lbl_8022C6BC
lbl_8022C6B8:
/* 8022C6B8 00229618  38 84 00 0C */	addi r4, r4, 0xc
lbl_8022C6BC:
/* 8022C6BC 0022961C  7C 04 00 40 */	cmplw r4, r0
/* 8022C6C0 00229620  40 82 FF F8 */	bne lbl_8022C6B8
/* 8022C6C4 00229624  28 03 00 00 */	cmplwi r3, 0
/* 8022C6C8 00229628  41 82 00 08 */	beq lbl_8022C6D0
/* 8022C6CC 0022962C  48 0E 92 65 */	bl Free__7CMemoryFPCv
lbl_8022C6D0:
/* 8022C6D0 00229630  28 1B 00 00 */	cmplwi r27, 0
/* 8022C6D4 00229634  41 82 00 10 */	beq lbl_8022C6E4
/* 8022C6D8 00229638  7F A3 EB 78 */	mr r3, r29
/* 8022C6DC 0022963C  7F 64 DB 78 */	mr r4, r27
/* 8022C6E0 00229640  4B E2 06 15 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
lbl_8022C6E4:
/* 8022C6E4 00229644  38 C0 00 01 */	li r6, 1
/* 8022C6E8 00229648  48 00 00 C0 */	b lbl_8022C7A8
.global lbl_8022C6EC
lbl_8022C6EC:
/* 8022C6EC 0022964C  88 1C 09 88 */	lbz r0, 0x988(r28)
/* 8022C6F0 00229650  38 60 00 01 */	li r3, 1
/* 8022C6F4 00229654  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022C6F8 00229658  38 C0 00 01 */	li r6, 1
/* 8022C6FC 0022965C  98 1C 09 88 */	stb r0, 0x988(r28)
/* 8022C700 00229660  48 00 00 A8 */	b lbl_8022C7A8
.global lbl_8022C704
lbl_8022C704:
/* 8022C704 00229664  88 1C 09 88 */	lbz r0, 0x988(r28)
/* 8022C708 00229668  38 60 00 00 */	li r3, 0
/* 8022C70C 0022966C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022C710 00229670  38 C0 00 01 */	li r6, 1
/* 8022C714 00229674  98 1C 09 88 */	stb r0, 0x988(r28)
/* 8022C718 00229678  48 00 00 90 */	b lbl_8022C7A8
.global lbl_8022C71C
lbl_8022C71C:
/* 8022C71C 0022967C  4B FF BC 8D */	bl sub_802283a8
/* 8022C720 00229680  38 C0 00 01 */	li r6, 1
/* 8022C724 00229684  48 00 00 84 */	b lbl_8022C7A8
.global lbl_8022C728
lbl_8022C728:
/* 8022C728 00229688  81 83 00 00 */	lwz r12, 0(r3)
/* 8022C72C 0022968C  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022C730 00229690  7D 89 03 A6 */	mtctr r12
/* 8022C734 00229694  4E 80 04 21 */	bctrl 
/* 8022C738 00229698  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C73C 0022969C  41 82 00 68 */	beq lbl_8022C7A4
/* 8022C740 002296A0  3B 60 00 00 */	li r27, 0
/* 8022C744 002296A4  48 00 00 50 */	b lbl_8022C794
lbl_8022C748:
/* 8022C748 002296A8  80 7C 07 30 */	lwz r3, 0x730(r28)
/* 8022C74C 002296AC  7F 64 DB 78 */	mr r4, r27
/* 8022C750 002296B0  4B F7 AA E9 */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 8022C754 002296B4  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 8022C758 002296B8  7F A3 EB 78 */	mr r3, r29
/* 8022C75C 002296BC  38 81 00 08 */	addi r4, r1, 8
/* 8022C760 002296C0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 8022C764 002296C4  B0 01 00 08 */	sth r0, 8(r1)
/* 8022C768 002296C8  4B E1 FE 0D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022C76C 002296CC  7C 64 1B 78 */	mr r4, r3
/* 8022C770 002296D0  38 61 00 48 */	addi r3, r1, 0x48
/* 8022C774 002296D4  4B E8 2B D9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022C778 002296D8  80 63 00 04 */	lwz r3, 4(r3)
/* 8022C77C 002296DC  28 03 00 00 */	cmplwi r3, 0
/* 8022C780 002296E0  41 82 00 10 */	beq lbl_8022C790
/* 8022C784 002296E4  7F A5 EB 78 */	mr r5, r29
/* 8022C788 002296E8  38 80 00 12 */	li r4, 0x12
/* 8022C78C 002296EC  4B E2 7B C5 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8022C790:
/* 8022C790 002296F0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8022C794:
/* 8022C794 002296F4  80 7C 07 30 */	lwz r3, 0x730(r28)
/* 8022C798 002296F8  4B F7 AA B1 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 8022C79C 002296FC  7C 1B 18 40 */	cmplw r27, r3
/* 8022C7A0 00229700  41 80 FF A8 */	blt lbl_8022C748
lbl_8022C7A4:
/* 8022C7A4 00229704  38 C0 00 01 */	li r6, 1
.global lbl_8022C7A8
lbl_8022C7A8:
/* 8022C7A8 00229708  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8022C7AC 0022970C  40 82 00 1C */	bne lbl_8022C7C8
/* 8022C7B0 00229710  FC 20 F8 90 */	fmr f1, f31
/* 8022C7B4 00229714  7F 83 E3 78 */	mr r3, r28
/* 8022C7B8 00229718  7F A4 EB 78 */	mr r4, r29
/* 8022C7BC 0022971C  7F C5 F3 78 */	mr r5, r30
/* 8022C7C0 00229720  7F E6 FB 78 */	mr r6, r31
/* 8022C7C4 00229724  4B E4 C6 ED */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_8022C7C8:
/* 8022C7C8 00229728  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, qr0
/* 8022C7CC 0022972C  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 8022C7D0 00229730  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, qr0
/* 8022C7D4 00229734  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 8022C7D8 00229738  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, qr0
/* 8022C7DC 0022973C  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 8022C7E0 00229740  BB 21 01 94 */	lmw r25, 0x194(r1)
/* 8022C7E4 00229744  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 8022C7E8 00229748  7C 08 03 A6 */	mtlr r0
/* 8022C7EC 0022974C  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 8022C7F0 00229750  4E 80 00 20 */	blr 

.global GetDamageVulnerability__12CElitePirateCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__12CElitePirateCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 8022C7F4 00229754  3C 60 80 57 */	lis r3, lbl_8056D7E8@ha
/* 8022C7F8 00229758  38 63 D7 E8 */	addi r3, r3, lbl_8056D7E8@l
/* 8022C7FC 0022975C  4E 80 00 20 */	blr 

.global GetDamageVulnerability__12CElitePirateCFv
GetDamageVulnerability__12CElitePirateCFv:
/* 8022C800 00229760  3C 60 80 57 */	lis r3, lbl_8056D7E8@ha
/* 8022C804 00229764  38 63 D7 E8 */	addi r3, r3, lbl_8056D7E8@l
/* 8022C808 00229768  4E 80 00 20 */	blr 

.global TakeDamage__12CElitePirateFRC9CVector3ff
TakeDamage__12CElitePirateFRC9CVector3ff:
/* 8022C80C 0022976C  4E 80 00 20 */	blr 

.global GetOrbitPosition__12CElitePirateCFRC13CStateManager
GetOrbitPosition__12CElitePirateCFRC13CStateManager:
/* 8022C810 00229770  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8022C814 00229774  7C 08 02 A6 */	mflr r0
/* 8022C818 00229778  90 01 00 74 */	stw r0, 0x74(r1)
/* 8022C81C 0022977C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8022C820 00229780  7C BF 2B 78 */	mr r31, r5
/* 8022C824 00229784  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8022C828 00229788  7C 9E 23 78 */	mr r30, r4
/* 8022C82C 0022978C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8022C830 00229790  7C 7D 1B 78 */	mr r29, r3
/* 8022C834 00229794  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022C838 00229798  A0 84 07 72 */	lhz r4, 0x772(r4)
/* 8022C83C 0022979C  7C 04 00 40 */	cmplw r4, r0
/* 8022C840 002297A0  41 82 00 40 */	beq lbl_8022C880
/* 8022C844 002297A4  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 8022C848 002297A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8022C84C 002297AC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8022C850 002297B0  2C 00 00 03 */	cmpwi r0, 3
/* 8022C854 002297B4  40 82 00 2C */	bne lbl_8022C880
/* 8022C858 002297B8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 8022C85C 002297BC  7F E3 FB 78 */	mr r3, r31
/* 8022C860 002297C0  38 81 00 10 */	addi r4, r1, 0x10
/* 8022C864 002297C4  4B E1 FD 41 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022C868 002297C8  7C 65 1B 79 */	or. r5, r3, r3
/* 8022C86C 002297CC  41 82 00 14 */	beq lbl_8022C880
/* 8022C870 002297D0  7F A3 EB 78 */	mr r3, r29
/* 8022C874 002297D4  7F C4 F3 78 */	mr r4, r30
/* 8022C878 002297D8  4B FF BF ED */	bl sub_80228864
/* 8022C87C 002297DC  48 00 00 B4 */	b lbl_8022C930
lbl_8022C880:
/* 8022C880 002297E0  7F C3 F3 78 */	mr r3, r30
/* 8022C884 002297E4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022C888 002297E8  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022C88C 002297EC  7D 89 03 A6 */	mtctr r12
/* 8022C890 002297F0  4E 80 04 21 */	bctrl 
/* 8022C894 002297F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C898 002297F8  41 82 00 4C */	beq lbl_8022C8E4
/* 8022C89C 002297FC  A0 1E 07 70 */	lhz r0, 0x770(r30)
/* 8022C8A0 00229800  7F E3 FB 78 */	mr r3, r31
/* 8022C8A4 00229804  38 81 00 0C */	addi r4, r1, 0xc
/* 8022C8A8 00229808  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022C8AC 0022980C  4B E1 FC F9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022C8B0 00229810  7C 64 1B 78 */	mr r4, r3
/* 8022C8B4 00229814  38 61 00 14 */	addi r3, r1, 0x14
/* 8022C8B8 00229818  4B E8 2A 95 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022C8BC 0022981C  80 63 00 04 */	lwz r3, 4(r3)
/* 8022C8C0 00229820  28 03 00 00 */	cmplwi r3, 0
/* 8022C8C4 00229824  41 82 00 20 */	beq lbl_8022C8E4
/* 8022C8C8 00229828  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8022C8CC 0022982C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022C8D0 00229830  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022C8D4 00229834  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8022C8D8 00229838  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8022C8DC 0022983C  D0 5D 00 08 */	stfs f2, 8(r29)
/* 8022C8E0 00229840  48 00 00 50 */	b lbl_8022C930
lbl_8022C8E4:
/* 8022C8E4 00229844  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 8022C8E8 00229848  38 61 00 1C */	addi r3, r1, 0x1c
/* 8022C8EC 0022984C  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 8022C8F0 00229850  38 C1 00 08 */	addi r6, r1, 8
/* 8022C8F4 00229854  38 84 00 A5 */	addi r4, r4, 0xa5
/* 8022C8F8 00229858  38 A0 FF FF */	li r5, -1
/* 8022C8FC 0022985C  48 11 18 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCciRCQ24rstl17rmemory_allocator"
/* 8022C900 00229860  7F C4 F3 78 */	mr r4, r30
/* 8022C904 00229864  38 61 00 2C */	addi r3, r1, 0x2c
/* 8022C908 00229868  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8022C90C 0022986C  4B E4 C0 6D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8022C910 00229870  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 8022C914 00229874  38 61 00 1C */	addi r3, r1, 0x1c
/* 8022C918 00229878  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 8022C91C 0022987C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8022C920 00229880  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8022C924 00229884  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8022C928 00229888  D0 5D 00 08 */	stfs f2, 8(r29)
/* 8022C92C 0022988C  48 11 11 B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8022C930:
/* 8022C930 00229890  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8022C934 00229894  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8022C938 00229898  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8022C93C 0022989C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8022C940 002298A0  7C 08 03 A6 */	mtlr r0
/* 8022C944 002298A4  38 21 00 70 */	addi r1, r1, 0x70
/* 8022C948 002298A8  4E 80 00 20 */	blr 

.global GetAimPosition__12CElitePirateCFRC13CStateManagerf
GetAimPosition__12CElitePirateCFRC13CStateManagerf:
/* 8022C94C 002298AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022C950 002298B0  7C 08 02 A6 */	mflr r0
/* 8022C954 002298B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022C958 002298B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022C95C 002298BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8022C960 002298C0  7C BE 2B 78 */	mr r30, r5
/* 8022C964 002298C4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8022C968 002298C8  7C 9D 23 78 */	mr r29, r4
/* 8022C96C 002298CC  93 81 00 20 */	stw r28, 0x20(r1)
/* 8022C970 002298D0  7C 7C 1B 78 */	mr r28, r3
/* 8022C974 002298D4  80 85 08 B8 */	lwz r4, 0x8b8(r5)
/* 8022C978 002298D8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8022C97C 002298DC  83 E4 00 00 */	lwz r31, 0(r4)
/* 8022C980 002298E0  4B F7 AA 3D */	bl GetActive__22CCollisionActorManagerCFv
/* 8022C984 002298E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022C988 002298E8  41 82 00 64 */	beq lbl_8022C9EC
/* 8022C98C 002298EC  88 1F 00 00 */	lbz r0, 0(r31)
/* 8022C990 002298F0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8022C994 002298F4  41 82 00 58 */	beq lbl_8022C9EC
/* 8022C998 002298F8  80 1F 00 08 */	lwz r0, 8(r31)
/* 8022C99C 002298FC  2C 00 00 02 */	cmpwi r0, 2
/* 8022C9A0 00229900  40 82 00 4C */	bne lbl_8022C9EC
/* 8022C9A4 00229904  A0 1D 07 9C */	lhz r0, 0x79c(r29)
/* 8022C9A8 00229908  7F C3 F3 78 */	mr r3, r30
/* 8022C9AC 0022990C  38 81 00 08 */	addi r4, r1, 8
/* 8022C9B0 00229910  B0 01 00 08 */	sth r0, 8(r1)
/* 8022C9B4 00229914  4B E1 FB F1 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022C9B8 00229918  7C 64 1B 78 */	mr r4, r3
/* 8022C9BC 0022991C  38 61 00 0C */	addi r3, r1, 0xc
/* 8022C9C0 00229920  4B E8 29 8D */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022C9C4 00229924  80 63 00 04 */	lwz r3, 4(r3)
/* 8022C9C8 00229928  28 03 00 00 */	cmplwi r3, 0
/* 8022C9CC 0022992C  41 82 00 20 */	beq lbl_8022C9EC
/* 8022C9D0 00229930  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 8022C9D4 00229934  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 8022C9D8 00229938  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8022C9DC 0022993C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8022C9E0 00229940  D0 3C 00 04 */	stfs f1, 4(r28)
/* 8022C9E4 00229944  D0 5C 00 08 */	stfs f2, 8(r28)
/* 8022C9E8 00229948  48 00 00 20 */	b lbl_8022CA08
lbl_8022C9EC:
/* 8022C9EC 0022994C  7F A4 EB 78 */	mr r4, r29
/* 8022C9F0 00229950  7F 83 E3 78 */	mr r3, r28
/* 8022C9F4 00229954  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022C9F8 00229958  7F C5 F3 78 */	mr r5, r30
/* 8022C9FC 0022995C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8022CA00 00229960  7D 89 03 A6 */	mtctr r12
/* 8022CA04 00229964  4E 80 04 21 */	bctrl 
lbl_8022CA08:
/* 8022CA08 00229968  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022CA0C 0022996C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022CA10 00229970  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8022CA14 00229974  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8022CA18 00229978  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8022CA1C 0022997C  7C 08 03 A6 */	mtlr r0
/* 8022CA20 00229980  38 21 00 30 */	addi r1, r1, 0x30
/* 8022CA24 00229984  4E 80 00 20 */	blr 

.global KnockBack__12CElitePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__12CElitePirateFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 8022CA28 00229988  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8022CA2C 0022998C  7C 08 02 A6 */	mflr r0
/* 8022CA30 00229990  90 01 00 64 */	stw r0, 0x64(r1)
/* 8022CA34 00229994  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8022CA38 00229998  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 8022CA3C 0022999C  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 8022CA40 002299A0  FF E0 08 90 */	fmr f31, f1
/* 8022CA44 002299A4  7C DD 33 78 */	mr r29, r6
/* 8022CA48 002299A8  7C 9B 23 78 */	mr r27, r4
/* 8022CA4C 002299AC  7C 7A 1B 78 */	mr r26, r3
/* 8022CA50 002299B0  7C BC 2B 78 */	mr r28, r5
/* 8022CA54 002299B4  7C FE 3B 78 */	mr r30, r7
/* 8022CA58 002299B8  7D 1F 43 78 */	mr r31, r8
/* 8022CA5C 002299BC  7F A4 EB 78 */	mr r4, r29
/* 8022CA60 002299C0  4B FF A9 D1 */	bl sub_80227430
/* 8022CA64 002299C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CA68 002299C8  41 82 00 A4 */	beq lbl_8022CB0C
/* 8022CA6C 002299CC  FC 20 F8 90 */	fmr f1, f31
/* 8022CA70 002299D0  7F 43 D3 78 */	mr r3, r26
/* 8022CA74 002299D4  7F 64 DB 78 */	mr r4, r27
/* 8022CA78 002299D8  7F 85 E3 78 */	mr r5, r28
/* 8022CA7C 002299DC  7F A6 EB 78 */	mr r6, r29
/* 8022CA80 002299E0  7F C7 F3 78 */	mr r7, r30
/* 8022CA84 002299E4  7F E8 FB 78 */	mr r8, r31
/* 8022CA88 002299E8  4B E4 DC F5 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 8022CA8C 002299EC  88 1D 00 04 */	lbz r0, 4(r29)
/* 8022CA90 002299F0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8022CA94 002299F4  41 82 00 78 */	beq lbl_8022CB0C
/* 8022CA98 002299F8  80 1D 00 00 */	lwz r0, 0(r29)
/* 8022CA9C 002299FC  2C 00 00 01 */	cmpwi r0, 1
/* 8022CAA0 00229A00  40 82 00 6C */	bne lbl_8022CB0C
/* 8022CAA4 00229A04  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022CAA8 00229A08  7F 65 DB 78 */	mr r5, r27
/* 8022CAAC 00229A0C  38 61 00 14 */	addi r3, r1, 0x14
/* 8022CAB0 00229A10  38 9A 00 34 */	addi r4, r26, 0x34
/* 8022CAB4 00229A14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8022CAB8 00229A18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8022CABC 00229A1C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8022CAC0 00229A20  48 0E 5F 65 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 8022CAC4 00229A24  38 61 00 20 */	addi r3, r1, 0x20
/* 8022CAC8 00229A28  38 81 00 14 */	addi r4, r1, 0x14
/* 8022CACC 00229A2C  48 0E 73 05 */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 8022CAD0 00229A30  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8022CAD4 00229A34  7F 43 D3 78 */	mr r3, r26
/* 8022CAD8 00229A38  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 8022CADC 00229A3C  7F 84 E3 78 */	mr r4, r28
/* 8022CAE0 00229A40  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8022CAE4 00229A44  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8022CAE8 00229A48  90 C1 00 08 */	stw r6, 8(r1)
/* 8022CAEC 00229A4C  38 C1 00 08 */	addi r6, r1, 8
/* 8022CAF0 00229A50  C0 22 B5 F8 */	lfs f1, lbl_805AD318@sda21(r2)
/* 8022CAF4 00229A54  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8022CAF8 00229A58  90 01 00 10 */	stw r0, 0x10(r1)
/* 8022CAFC 00229A5C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8022CB00 00229A60  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 8022CB04 00229A64  7D 89 03 A6 */	mtctr r12
/* 8022CB08 00229A68  4E 80 04 21 */	bctrl 
lbl_8022CB0C:
/* 8022CB0C 00229A6C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8022CB10 00229A70  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8022CB14 00229A74  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 8022CB18 00229A78  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8022CB1C 00229A7C  7C 08 03 A6 */	mtlr r0
/* 8022CB20 00229A80  38 21 00 60 */	addi r1, r1, 0x60
/* 8022CB24 00229A84  4E 80 00 20 */	blr 

.global PreRender__12CElitePirateFR13CStateManagerRC14CFrustumPlanes
PreRender__12CElitePirateFR13CStateManagerRC14CFrustumPlanes:
/* 8022CB28 00229A88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022CB2C 00229A8C  7C 08 02 A6 */	mflr r0
/* 8022CB30 00229A90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022CB34 00229A94  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8022CB38 00229A98  7C 9F 23 78 */	mr r31, r4
/* 8022CB3C 00229A9C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8022CB40 00229AA0  7C 7E 1B 78 */	mr r30, r3
/* 8022CB44 00229AA4  4B E4 B7 99 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 8022CB48 00229AA8  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8022CB4C 00229AAC  7F E4 FB 78 */	mr r4, r31
/* 8022CB50 00229AB0  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 8022CB54 00229AB4  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8022CB58 00229AB8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8022CB5C 00229ABC  38 DE 00 34 */	addi r6, r30, 0x34
/* 8022CB60 00229AC0  38 E1 00 10 */	addi r7, r1, 0x10
/* 8022CB64 00229AC4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8022CB68 00229AC8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8022CB6C 00229ACC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022CB70 00229AD0  C0 05 00 08 */	lfs f0, 8(r5)
/* 8022CB74 00229AD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8022CB78 00229AD8  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8022CB7C 00229ADC  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 8022CB80 00229AE0  4B F4 8D 91 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 8022CB84 00229AE4  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8022CB88 00229AE8  4B EE 80 C1 */	bl GetNumMaterialSets__10CModelDataCFv
/* 8022CB8C 00229AEC  38 83 FF FF */	addi r4, r3, -1
/* 8022CB90 00229AF0  38 61 00 0C */	addi r3, r1, 0xc
/* 8022CB94 00229AF4  90 81 00 08 */	stw r4, 8(r1)
/* 8022CB98 00229AF8  80 1E 07 CC */	lwz r0, 0x7cc(r30)
/* 8022CB9C 00229AFC  7C 04 00 00 */	cmpw r4, r0
/* 8022CBA0 00229B00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022CBA4 00229B04  40 80 00 08 */	bge lbl_8022CBAC
/* 8022CBA8 00229B08  38 61 00 08 */	addi r3, r1, 8
lbl_8022CBAC:
/* 8022CBAC 00229B0C  80 63 00 00 */	lwz r3, 0(r3)
/* 8022CBB0 00229B10  98 7E 00 B5 */	stb r3, 0xb5(r30)
/* 8022CBB4 00229B14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022CBB8 00229B18  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8022CBBC 00229B1C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8022CBC0 00229B20  7C 08 03 A6 */	mtlr r0
/* 8022CBC4 00229B24  38 21 00 30 */	addi r1, r1, 0x30
/* 8022CBC8 00229B28  4E 80 00 20 */	blr 

.global AcceptScriptMsg__12CElitePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CElitePirateF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8022CBCC 00229B2C  94 21 FE 70 */	stwu r1, -0x190(r1)
/* 8022CBD0 00229B30  7C 08 02 A6 */	mflr r0
/* 8022CBD4 00229B34  90 01 01 94 */	stw r0, 0x194(r1)
/* 8022CBD8 00229B38  DB E1 01 80 */	stfd f31, 0x180(r1)
/* 8022CBDC 00229B3C  F3 E1 01 88 */	psq_st f31, 392(r1), 0, qr0
/* 8022CBE0 00229B40  BF 41 01 68 */	stmw r26, 0x168(r1)
/* 8022CBE4 00229B44  7C 9C 23 78 */	mr r28, r4
/* 8022CBE8 00229B48  7C 7D 1B 78 */	mr r29, r3
/* 8022CBEC 00229B4C  28 1C 00 2A */	cmplwi r28, 0x2a
/* 8022CBF0 00229B50  7C BE 2B 78 */	mr r30, r5
/* 8022CBF4 00229B54  7C DF 33 78 */	mr r31, r6
/* 8022CBF8 00229B58  3B 60 00 01 */	li r27, 1
/* 8022CBFC 00229B5C  41 81 07 48 */	bgt lbl_8022D344
/* 8022CC00 00229B60  3C 80 80 3E */	lis r4, lbl_803E7E20@ha
/* 8022CC04 00229B64  57 80 10 3A */	slwi r0, r28, 2
/* 8022CC08 00229B68  38 84 7E 20 */	addi r4, r4, lbl_803E7E20@l
/* 8022CC0C 00229B6C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8022CC10 00229B70  7C 09 03 A6 */	mtctr r0
/* 8022CC14 00229B74  4E 80 04 20 */	bctr 
.global lbl_8022CC18
lbl_8022CC18:
/* 8022CC18 00229B78  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022CC1C 00229B7C  7F E4 FB 78 */	mr r4, r31
/* 8022CC20 00229B80  4B F0 E0 D1 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8022CC24 00229B84  7F A3 EB 78 */	mr r3, r29
/* 8022CC28 00229B88  7F E4 FB 78 */	mr r4, r31
/* 8022CC2C 00229B8C  4B FF CF 99 */	bl sub_80229bc4
/* 8022CC30 00229B90  7F E4 FB 78 */	mr r4, r31
/* 8022CC34 00229B94  38 61 00 7C */	addi r3, r1, 0x7c
/* 8022CC38 00229B98  4B E2 04 A5 */	bl AllocateUniqueId__13CStateManagerFv
/* 8022CC3C 00229B9C  A0 01 00 7C */	lhz r0, 0x7c(r1)
/* 8022CC40 00229BA0  7F A3 EB 78 */	mr r3, r29
/* 8022CC44 00229BA4  7F E4 FB 78 */	mr r4, r31
/* 8022CC48 00229BA8  38 A1 00 78 */	addi r5, r1, 0x78
/* 8022CC4C 00229BAC  B0 1D 07 72 */	sth r0, 0x772(r29)
/* 8022CC50 00229BB0  A0 1D 07 72 */	lhz r0, 0x772(r29)
/* 8022CC54 00229BB4  B0 01 00 78 */	sth r0, 0x78(r1)
/* 8022CC58 00229BB8  4B FF BE 55 */	bl sub_80228aac
/* 8022CC5C 00229BBC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022CC60 00229BC0  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8022CC64 00229BC4  4B F0 72 49 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8022CC68 00229BC8  FF E0 08 90 */	fmr f31, f1
/* 8022CC6C 00229BCC  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022CC70 00229BD0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8022CC74 00229BD4  40 81 00 24 */	ble lbl_8022CC98
/* 8022CC78 00229BD8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022CC7C 00229BDC  38 80 00 01 */	li r4, 1
/* 8022CC80 00229BE0  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 8022CC84 00229BE4  4B F0 71 51 */	bl GetLocomotionSpeed__14CBodyStateInfoCFQ23pas15ELocomotionAnim
/* 8022CC88 00229BE8  C0 02 B6 18 */	lfs f0, lbl_805AD338@sda21(r2)
/* 8022CC8C 00229BEC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022CC90 00229BF0  EC 00 F8 24 */	fdivs f0, f0, f31
/* 8022CC94 00229BF4  D0 1D 07 A4 */	stfs f0, 0x7a4(r29)
lbl_8022CC98:
/* 8022CC98 00229BF8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022CC9C 00229BFC  38 00 00 01 */	li r0, 1
/* 8022CCA0 00229C00  90 03 00 34 */	stw r0, 0x34(r3)
/* 8022CCA4 00229C04  C0 3D 07 A4 */	lfs f1, 0x7a4(r29)
/* 8022CCA8 00229C08  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022CCAC 00229C0C  FC 40 08 90 */	fmr f2, f1
/* 8022CCB0 00229C10  38 63 00 04 */	addi r3, r3, 4
/* 8022CCB4 00229C14  4B F0 4B 35 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8022CCB8 00229C18  48 00 06 8C */	b lbl_8022D344
.global lbl_8022CCBC
lbl_8022CCBC:
/* 8022CCBC 00229C1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CCC0 00229C20  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022CCC4 00229C24  7D 89 03 A6 */	mtctr r12
/* 8022CCC8 00229C28  4E 80 04 21 */	bctrl 
/* 8022CCCC 00229C2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CCD0 00229C30  41 82 00 14 */	beq lbl_8022CCE4
/* 8022CCD4 00229C34  80 7D 07 30 */	lwz r3, 0x730(r29)
/* 8022CCD8 00229C38  7F E4 FB 78 */	mr r4, r31
/* 8022CCDC 00229C3C  38 A0 00 01 */	li r5, 1
/* 8022CCE0 00229C40  4B F7 A6 19 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_8022CCE4:
/* 8022CCE4 00229C44  A0 1D 07 72 */	lhz r0, 0x772(r29)
/* 8022CCE8 00229C48  7F E3 FB 78 */	mr r3, r31
/* 8022CCEC 00229C4C  38 81 00 74 */	addi r4, r1, 0x74
/* 8022CCF0 00229C50  B0 01 00 74 */	sth r0, 0x74(r1)
/* 8022CCF4 00229C54  4B E1 F8 81 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022CCF8 00229C58  28 03 00 00 */	cmplwi r3, 0
/* 8022CCFC 00229C5C  41 82 06 48 */	beq lbl_8022D344
/* 8022CD00 00229C60  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD04 00229C64  38 80 00 01 */	li r4, 1
/* 8022CD08 00229C68  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8022CD0C 00229C6C  7D 89 03 A6 */	mtctr r12
/* 8022CD10 00229C70  4E 80 04 21 */	bctrl 
/* 8022CD14 00229C74  48 00 06 30 */	b lbl_8022D344
.global lbl_8022CD18
lbl_8022CD18:
/* 8022CD18 00229C78  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD1C 00229C7C  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022CD20 00229C80  7D 89 03 A6 */	mtctr r12
/* 8022CD24 00229C84  4E 80 04 21 */	bctrl 
/* 8022CD28 00229C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CD2C 00229C8C  41 82 00 14 */	beq lbl_8022CD40
/* 8022CD30 00229C90  80 7D 07 30 */	lwz r3, 0x730(r29)
/* 8022CD34 00229C94  7F E4 FB 78 */	mr r4, r31
/* 8022CD38 00229C98  38 A0 00 00 */	li r5, 0
/* 8022CD3C 00229C9C  4B F7 A5 BD */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_8022CD40:
/* 8022CD40 00229CA0  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8022CD44 00229CA4  7F E4 FB 78 */	mr r4, r31
/* 8022CD48 00229CA8  38 A0 00 00 */	li r5, 0
/* 8022CD4C 00229CAC  4B F7 A5 AD */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 8022CD50 00229CB0  A0 1D 07 72 */	lhz r0, 0x772(r29)
/* 8022CD54 00229CB4  7F E3 FB 78 */	mr r3, r31
/* 8022CD58 00229CB8  38 81 00 70 */	addi r4, r1, 0x70
/* 8022CD5C 00229CBC  B0 01 00 70 */	sth r0, 0x70(r1)
/* 8022CD60 00229CC0  4B E1 F8 15 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022CD64 00229CC4  28 03 00 00 */	cmplwi r3, 0
/* 8022CD68 00229CC8  41 82 05 DC */	beq lbl_8022D344
/* 8022CD6C 00229CCC  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD70 00229CD0  38 80 00 00 */	li r4, 0
/* 8022CD74 00229CD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8022CD78 00229CD8  7D 89 03 A6 */	mtctr r12
/* 8022CD7C 00229CDC  4E 80 04 21 */	bctrl 
/* 8022CD80 00229CE0  48 00 05 C4 */	b lbl_8022D344
.global lbl_8022CD84
lbl_8022CD84:
/* 8022CD84 00229CE4  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD88 00229CE8  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022CD8C 00229CEC  7D 89 03 A6 */	mtctr r12
/* 8022CD90 00229CF0  4E 80 04 21 */	bctrl 
/* 8022CD94 00229CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CD98 00229CF8  41 82 00 10 */	beq lbl_8022CDA8
/* 8022CD9C 00229CFC  80 7D 07 30 */	lwz r3, 0x730(r29)
/* 8022CDA0 00229D00  7F E4 FB 78 */	mr r4, r31
/* 8022CDA4 00229D04  4B F7 A6 21 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
lbl_8022CDA8:
/* 8022CDA8 00229D08  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 8022CDAC 00229D0C  7F E4 FB 78 */	mr r4, r31
/* 8022CDB0 00229D10  4B F7 A6 15 */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 8022CDB4 00229D14  A0 1D 07 72 */	lhz r0, 0x772(r29)
/* 8022CDB8 00229D18  7F E3 FB 78 */	mr r3, r31
/* 8022CDBC 00229D1C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8022CDC0 00229D20  B0 01 00 6C */	sth r0, 0x6c(r1)
/* 8022CDC4 00229D24  4B E1 F4 A9 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8022CDC8 00229D28  48 00 05 7C */	b lbl_8022D344
.global lbl_8022CDCC
lbl_8022CDCC:
/* 8022CDCC 00229D2C  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022CDD0 00229D30  38 60 00 01 */	li r3, 1
/* 8022CDD4 00229D34  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8022CDD8 00229D38  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022CDDC 00229D3C  48 00 05 68 */	b lbl_8022D344
.global lbl_8022CDE0
lbl_8022CDE0:
/* 8022CDE0 00229D40  80 BD 00 04 */	lwz r5, 4(r29)
/* 8022CDE4 00229D44  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 8022CDE8 00229D48  54 A3 18 38 */	slwi r3, r5, 3
/* 8022CDEC 00229D4C  90 A1 00 8C */	stw r5, 0x8c(r1)
/* 8022CDF0 00229D50  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8022CDF4 00229D54  38 03 00 04 */	addi r0, r3, 4
/* 8022CDF8 00229D58  90 A1 00 88 */	stw r5, 0x88(r1)
/* 8022CDFC 00229D5C  7C 64 00 2E */	lwzx r3, r4, r0
/* 8022CE00 00229D60  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 8022CE04 00229D64  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 8022CE08 00229D68  90 1D 07 D0 */	stw r0, 0x7d0(r29)
/* 8022CE0C 00229D6C  48 00 05 38 */	b lbl_8022D344
.global lbl_8022CE10
lbl_8022CE10:
/* 8022CE10 00229D70  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CE14 00229D74  7F E4 FB 78 */	mr r4, r31
/* 8022CE18 00229D78  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8022CE1C 00229D7C  7D 89 03 A6 */	mtctr r12
/* 8022CE20 00229D80  4E 80 04 21 */	bctrl 
/* 8022CE24 00229D84  C0 23 00 00 */	lfs f1, 0(r3)
/* 8022CE28 00229D88  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022CE2C 00229D8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022CE30 00229D90  40 81 05 14 */	ble lbl_8022D344
/* 8022CE34 00229D94  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022CE38 00229D98  7F E3 FB 78 */	mr r3, r31
/* 8022CE3C 00229D9C  38 81 00 68 */	addi r4, r1, 0x68
/* 8022CE40 00229DA0  B0 01 00 68 */	sth r0, 0x68(r1)
/* 8022CE44 00229DA4  4B E1 F7 61 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022CE48 00229DA8  7C 64 1B 78 */	mr r4, r3
/* 8022CE4C 00229DAC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8022CE50 00229DB0  4B E8 24 FD */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022CE54 00229DB4  80 83 00 04 */	lwz r4, 4(r3)
/* 8022CE58 00229DB8  28 04 00 00 */	cmplwi r4, 0
/* 8022CE5C 00229DBC  41 82 02 60 */	beq lbl_8022D0BC
/* 8022CE60 00229DC0  38 61 00 64 */	addi r3, r1, 0x64
/* 8022CE64 00229DC4  4B F7 BD 29 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8022CE68 00229DC8  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 8022CE6C 00229DCC  A0 81 00 64 */	lhz r4, 0x64(r1)
/* 8022CE70 00229DD0  A0 03 00 08 */	lhz r0, 8(r3)
/* 8022CE74 00229DD4  B0 81 00 84 */	sth r4, 0x84(r1)
/* 8022CE78 00229DD8  7C 04 00 40 */	cmplw r4, r0
/* 8022CE7C 00229DDC  40 82 02 04 */	bne lbl_8022D080
/* 8022CE80 00229DE0  88 7D 09 88 */	lbz r3, 0x988(r29)
/* 8022CE84 00229DE4  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 8022CE88 00229DE8  41 82 01 04 */	beq lbl_8022CF8C
/* 8022CE8C 00229DEC  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 8022CE90 00229DF0  41 82 00 24 */	beq lbl_8022CEB4
/* 8022CE94 00229DF4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022CE98 00229DF8  7F A3 EB 78 */	mr r3, r29
/* 8022CE9C 00229DFC  38 81 00 60 */	addi r4, r1, 0x60
/* 8022CEA0 00229E00  38 BD 07 74 */	addi r5, r29, 0x774
/* 8022CEA4 00229E04  B0 01 00 60 */	sth r0, 0x60(r1)
/* 8022CEA8 00229E08  4B FF C5 51 */	bl sub_802293f8
/* 8022CEAC 00229E0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CEB0 00229E10  40 82 00 30 */	bne lbl_8022CEE0
lbl_8022CEB4:
/* 8022CEB4 00229E14  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022CEB8 00229E18  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 8022CEBC 00229E1C  41 82 04 88 */	beq lbl_8022D344
/* 8022CEC0 00229E20  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022CEC4 00229E24  7F A3 EB 78 */	mr r3, r29
/* 8022CEC8 00229E28  38 81 00 5C */	addi r4, r1, 0x5c
/* 8022CECC 00229E2C  38 BD 07 88 */	addi r5, r29, 0x788
/* 8022CED0 00229E30  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 8022CED4 00229E34  4B FF C5 25 */	bl sub_802293f8
/* 8022CED8 00229E38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022CEDC 00229E3C  41 82 04 68 */	beq lbl_8022D344
lbl_8022CEE0:
/* 8022CEE0 00229E40  80 AD 95 68 */	lwz r5, lbl_805A8128@sda21(r13)
/* 8022CEE4 00229E44  38 60 00 00 */	li r3, 0
/* 8022CEE8 00229E48  38 80 00 01 */	li r4, 1
/* 8022CEEC 00229E4C  48 15 D0 09 */	bl __shl2i
/* 8022CEF0 00229E50  38 A0 00 00 */	li r5, 0
/* 8022CEF4 00229E54  38 00 00 03 */	li r0, 3
/* 8022CEF8 00229E58  90 81 01 1C */	stw r4, 0x11c(r1)
/* 8022CEFC 00229E5C  7F A4 EB 78 */	mr r4, r29
/* 8022CF00 00229E60  90 61 01 18 */	stw r3, 0x118(r1)
/* 8022CF04 00229E64  38 61 01 30 */	addi r3, r1, 0x130
/* 8022CF08 00229E68  90 A1 01 24 */	stw r5, 0x124(r1)
/* 8022CF0C 00229E6C  90 A1 01 20 */	stw r5, 0x120(r1)
/* 8022CF10 00229E70  90 01 01 28 */	stw r0, 0x128(r1)
/* 8022CF14 00229E74  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8022CF18 00229E78  B0 01 00 48 */	sth r0, 0x48(r1)
/* 8022CF1C 00229E7C  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 8022CF20 00229E80  B0 01 00 44 */	sth r0, 0x44(r1)
/* 8022CF24 00229E84  A0 A5 00 08 */	lhz r5, 8(r5)
/* 8022CF28 00229E88  B0 A1 00 50 */	sth r5, 0x50(r1)
/* 8022CF2C 00229E8C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8022CF30 00229E90  B0 A1 00 4C */	sth r5, 0x4c(r1)
/* 8022CF34 00229E94  B0 01 00 58 */	sth r0, 0x58(r1)
/* 8022CF38 00229E98  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022CF3C 00229E9C  B0 01 00 54 */	sth r0, 0x54(r1)
/* 8022CF40 00229EA0  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8022CF44 00229EA4  7D 89 03 A6 */	mtctr r12
/* 8022CF48 00229EA8  4E 80 04 21 */	bctrl 
/* 8022CF4C 00229EAC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8022CF50 00229EB0  7F E3 FB 78 */	mr r3, r31
/* 8022CF54 00229EB4  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 8022CF58 00229EB8  38 A1 00 50 */	addi r5, r1, 0x50
/* 8022CF5C 00229EBC  38 81 00 58 */	addi r4, r1, 0x58
/* 8022CF60 00229EC0  38 C1 00 48 */	addi r6, r1, 0x48
/* 8022CF64 00229EC4  38 E1 01 30 */	addi r7, r1, 0x130
/* 8022CF68 00229EC8  39 01 01 18 */	addi r8, r1, 0x118
/* 8022CF6C 00229ECC  4B E1 D1 35 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8022CF70 00229ED0  C0 1D 04 24 */	lfs f0, 0x424(r29)
/* 8022CF74 00229ED4  38 60 00 00 */	li r3, 0
/* 8022CF78 00229ED8  D0 1D 04 20 */	stfs f0, 0x420(r29)
/* 8022CF7C 00229EDC  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022CF80 00229EE0  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022CF84 00229EE4  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022CF88 00229EE8  48 00 03 BC */	b lbl_8022D344
lbl_8022CF8C:
/* 8022CF8C 00229EEC  C0 3D 04 20 */	lfs f1, 0x420(r29)
/* 8022CF90 00229EF0  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022CF94 00229EF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8022CF98 00229EF8  4C 40 13 82 */	cror 2, 0, 2
/* 8022CF9C 00229EFC  40 82 03 A8 */	bne lbl_8022D344
/* 8022CFA0 00229F00  7F A4 EB 78 */	mr r4, r29
/* 8022CFA4 00229F04  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8022CFA8 00229F08  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022CFAC 00229F0C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 8022CFB0 00229F10  7D 89 03 A6 */	mtctr r12
/* 8022CFB4 00229F14  4E 80 04 21 */	bctrl 
/* 8022CFB8 00229F18  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 8022CFBC 00229F1C  38 60 00 00 */	li r3, 0
/* 8022CFC0 00229F20  C0 02 B5 BC */	lfs f0, lbl_805AD2DC@sda21(r2)
/* 8022CFC4 00229F24  38 80 00 01 */	li r4, 1
/* 8022CFC8 00229F28  80 E1 00 F8 */	lwz r7, 0xf8(r1)
/* 8022CFCC 00229F2C  88 C1 00 FC */	lbz r6, 0xfc(r1)
/* 8022CFD0 00229F30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022CFD4 00229F34  D0 21 01 54 */	stfs f1, 0x154(r1)
/* 8022CFD8 00229F38  C0 61 01 04 */	lfs f3, 0x104(r1)
/* 8022CFDC 00229F3C  C0 41 01 08 */	lfs f2, 0x108(r1)
/* 8022CFE0 00229F40  C0 21 01 0C */	lfs f1, 0x10c(r1)
/* 8022CFE4 00229F44  88 01 01 10 */	lbz r0, 0x110(r1)
/* 8022CFE8 00229F48  80 AD 95 68 */	lwz r5, lbl_805A8128@sda21(r13)
/* 8022CFEC 00229F4C  90 E1 01 4C */	stw r7, 0x14c(r1)
/* 8022CFF0 00229F50  98 C1 01 50 */	stb r6, 0x150(r1)
/* 8022CFF4 00229F54  D0 61 01 58 */	stfs f3, 0x158(r1)
/* 8022CFF8 00229F58  D0 41 01 5C */	stfs f2, 0x15c(r1)
/* 8022CFFC 00229F5C  D0 21 01 60 */	stfs f1, 0x160(r1)
/* 8022D000 00229F60  98 01 01 64 */	stb r0, 0x164(r1)
/* 8022D004 00229F64  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 8022D008 00229F68  48 15 CE ED */	bl __shl2i
/* 8022D00C 00229F6C  39 40 00 00 */	li r10, 0
/* 8022D010 00229F70  38 00 00 03 */	li r0, 3
/* 8022D014 00229F74  90 81 00 E4 */	stw r4, 0xe4(r1)
/* 8022D018 00229F78  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8022D01C 00229F7C  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 8022D020 00229F80  38 A1 00 38 */	addi r5, r1, 0x38
/* 8022D024 00229F84  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 8022D028 00229F88  38 81 00 40 */	addi r4, r1, 0x40
/* 8022D02C 00229F8C  7F E3 FB 78 */	mr r3, r31
/* 8022D030 00229F90  38 C1 00 30 */	addi r6, r1, 0x30
/* 8022D034 00229F94  91 41 00 EC */	stw r10, 0xec(r1)
/* 8022D038 00229F98  38 E1 01 4C */	addi r7, r1, 0x14c
/* 8022D03C 00229F9C  39 01 00 E0 */	addi r8, r1, 0xe0
/* 8022D040 00229FA0  91 41 00 E8 */	stw r10, 0xe8(r1)
/* 8022D044 00229FA4  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8022D048 00229FA8  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8022D04C 00229FAC  B0 01 00 30 */	sth r0, 0x30(r1)
/* 8022D050 00229FB0  81 5F 08 4C */	lwz r10, 0x84c(r31)
/* 8022D054 00229FB4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8022D058 00229FB8  A1 4A 00 08 */	lhz r10, 8(r10)
/* 8022D05C 00229FBC  B1 41 00 38 */	sth r10, 0x38(r1)
/* 8022D060 00229FC0  A0 1D 00 08 */	lhz r0, 8(r29)
/* 8022D064 00229FC4  B1 41 00 34 */	sth r10, 0x34(r1)
/* 8022D068 00229FC8  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 8022D06C 00229FCC  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8022D070 00229FD0  4B E1 D0 31 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 8022D074 00229FD4  C0 1D 04 24 */	lfs f0, 0x424(r29)
/* 8022D078 00229FD8  D0 1D 04 20 */	stfs f0, 0x420(r29)
/* 8022D07C 00229FDC  48 00 02 C8 */	b lbl_8022D344
lbl_8022D080:
/* 8022D080 00229FE0  B0 81 00 28 */	sth r4, 0x28(r1)
/* 8022D084 00229FE4  7F E3 FB 78 */	mr r3, r31
/* 8022D088 00229FE8  38 81 00 28 */	addi r4, r1, 0x28
/* 8022D08C 00229FEC  4B E1 F5 19 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022D090 00229FF0  7C 64 1B 78 */	mr r4, r3
/* 8022D094 00229FF4  38 61 00 98 */	addi r3, r1, 0x98
/* 8022D098 00229FF8  4B E8 06 75 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8022D09C 00229FFC  80 03 00 04 */	lwz r0, 4(r3)
/* 8022D0A0 0022A000  28 00 00 00 */	cmplwi r0, 0
/* 8022D0A4 0022A004  41 82 02 A0 */	beq lbl_8022D344
/* 8022D0A8 0022A008  7F A3 EB 78 */	mr r3, r29
/* 8022D0AC 0022A00C  7F E5 FB 78 */	mr r5, r31
/* 8022D0B0 0022A010  38 80 00 01 */	li r4, 1
/* 8022D0B4 0022A014  4B FF A4 E9 */	bl sub_8022759c
/* 8022D0B8 0022A018  48 00 02 8C */	b lbl_8022D344
lbl_8022D0BC:
/* 8022D0BC 0022A01C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D0C0 0022A020  A0 7D 07 72 */	lhz r3, 0x772(r29)
/* 8022D0C4 0022A024  7C 00 18 40 */	cmplw r0, r3
/* 8022D0C8 0022A028  40 82 02 7C */	bne lbl_8022D344
/* 8022D0CC 0022A02C  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022D0D0 0022A030  7C 03 00 40 */	cmplw r3, r0
/* 8022D0D4 0022A034  41 82 02 70 */	beq lbl_8022D344
/* 8022D0D8 0022A038  7F A3 EB 78 */	mr r3, r29
/* 8022D0DC 0022A03C  7F E5 FB 78 */	mr r5, r31
/* 8022D0E0 0022A040  38 80 00 01 */	li r4, 1
/* 8022D0E4 0022A044  4B FF A4 B9 */	bl sub_8022759c
/* 8022D0E8 0022A048  48 00 02 5C */	b lbl_8022D344
.global lbl_8022D0EC
lbl_8022D0EC:
/* 8022D0EC 0022A04C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D0F0 0022A050  7F E3 FB 78 */	mr r3, r31
/* 8022D0F4 0022A054  38 81 00 24 */	addi r4, r1, 0x24
/* 8022D0F8 0022A058  3B 60 00 00 */	li r27, 0
/* 8022D0FC 0022A05C  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8022D100 0022A060  4B E1 F4 75 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022D104 0022A064  7C 64 1B 78 */	mr r4, r3
/* 8022D108 0022A068  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8022D10C 0022A06C  4B E8 22 41 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022D110 0022A070  80 83 00 04 */	lwz r4, 4(r3)
/* 8022D114 0022A074  28 04 00 00 */	cmplwi r4, 0
/* 8022D118 0022A078  41 82 01 0C */	beq lbl_8022D224
/* 8022D11C 0022A07C  38 61 00 20 */	addi r3, r1, 0x20
/* 8022D120 0022A080  4B F7 BA 6D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 8022D124 0022A084  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 8022D128 0022A088  7F E3 FB 78 */	mr r3, r31
/* 8022D12C 0022A08C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8022D130 0022A090  B0 01 00 80 */	sth r0, 0x80(r1)
/* 8022D134 0022A094  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 8022D138 0022A098  4B E1 F4 6D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022D13C 0022A09C  7C 64 1B 78 */	mr r4, r3
/* 8022D140 0022A0A0  38 61 00 90 */	addi r3, r1, 0x90
/* 8022D144 0022A0A4  4B E8 05 C9 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 8022D148 0022A0A8  81 23 00 04 */	lwz r9, 4(r3)
/* 8022D14C 0022A0AC  28 09 00 00 */	cmplwi r9, 0
/* 8022D150 0022A0B0  41 82 01 F4 */	beq lbl_8022D344
/* 8022D154 0022A0B4  A0 7E 00 00 */	lhz r3, 0(r30)
/* 8022D158 0022A0B8  A0 1D 07 70 */	lhz r0, 0x770(r29)
/* 8022D15C 0022A0BC  7C 03 00 40 */	cmplw r3, r0
/* 8022D160 0022A0C0  40 82 00 88 */	bne lbl_8022D1E8
/* 8022D164 0022A0C4  C0 02 88 F0 */	lfs f0, lbl_805AA610@sda21(r2)
/* 8022D168 0022A0C8  7F A3 EB 78 */	mr r3, r29
/* 8022D16C 0022A0CC  7F E5 FB 78 */	mr r5, r31
/* 8022D170 0022A0D0  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8022D174 0022A0D4  D0 1D 04 28 */	stfs f0, 0x428(r29)
/* 8022D178 0022A0D8  38 C9 01 2C */	addi r6, r9, 0x12c
/* 8022D17C 0022A0DC  38 E0 00 01 */	li r7, 1
/* 8022D180 0022A0E0  39 00 00 00 */	li r8, 0
/* 8022D184 0022A0E4  C0 49 00 50 */	lfs f2, 0x50(r9)
/* 8022D188 0022A0E8  C0 29 02 9C */	lfs f1, 0x29c(r9)
/* 8022D18C 0022A0EC  C0 69 00 60 */	lfs f3, 0x60(r9)
/* 8022D190 0022A0F0  EC 82 08 28 */	fsubs f4, f2, f1
/* 8022D194 0022A0F4  C0 09 02 A0 */	lfs f0, 0x2a0(r9)
/* 8022D198 0022A0F8  C0 49 00 40 */	lfs f2, 0x40(r9)
/* 8022D19C 0022A0FC  EC 63 00 28 */	fsubs f3, f3, f0
/* 8022D1A0 0022A100  C0 09 02 98 */	lfs f0, 0x298(r9)
/* 8022D1A4 0022A104  C0 29 01 40 */	lfs f1, 0x140(r9)
/* 8022D1A8 0022A108  EC 02 00 28 */	fsubs f0, f2, f0
/* 8022D1AC 0022A10C  D0 81 00 BC */	stfs f4, 0xbc(r1)
/* 8022D1B0 0022A110  D0 61 00 C0 */	stfs f3, 0xc0(r1)
/* 8022D1B4 0022A114  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8022D1B8 0022A118  81 9D 00 00 */	lwz r12, 0(r29)
/* 8022D1BC 0022A11C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8022D1C0 0022A120  7D 89 03 A6 */	mtctr r12
/* 8022D1C4 0022A124  4E 80 04 21 */	bctrl 
/* 8022D1C8 0022A128  A0 01 00 80 */	lhz r0, 0x80(r1)
/* 8022D1CC 0022A12C  7F A3 EB 78 */	mr r3, r29
/* 8022D1D0 0022A130  7F 84 E3 78 */	mr r4, r28
/* 8022D1D4 0022A134  7F E6 FB 78 */	mr r6, r31
/* 8022D1D8 0022A138  B0 01 00 18 */	sth r0, 0x18(r1)
/* 8022D1DC 0022A13C  38 A1 00 18 */	addi r5, r1, 0x18
/* 8022D1E0 0022A140  4B E4 F9 99 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8022D1E4 0022A144  48 00 00 2C */	b lbl_8022D210
lbl_8022D1E8:
/* 8022D1E8 0022A148  A0 1D 07 9C */	lhz r0, 0x79c(r29)
/* 8022D1EC 0022A14C  7C 03 00 40 */	cmplw r3, r0
/* 8022D1F0 0022A150  40 82 00 20 */	bne lbl_8022D210
/* 8022D1F4 0022A154  88 1D 07 6C */	lbz r0, 0x76c(r29)
/* 8022D1F8 0022A158  28 00 00 00 */	cmplwi r0, 0
/* 8022D1FC 0022A15C  41 82 00 14 */	beq lbl_8022D210
/* 8022D200 0022A160  7F A3 EB 78 */	mr r3, r29
/* 8022D204 0022A164  7F E4 FB 78 */	mr r4, r31
/* 8022D208 0022A168  38 A9 00 34 */	addi r5, r9, 0x34
/* 8022D20C 0022A16C  4B FF AF CD */	bl sub_802281d8
lbl_8022D210:
/* 8022D210 0022A170  7F A3 EB 78 */	mr r3, r29
/* 8022D214 0022A174  7F E5 FB 78 */	mr r5, r31
/* 8022D218 0022A178  38 80 00 01 */	li r4, 1
/* 8022D21C 0022A17C  4B FF A3 81 */	bl sub_8022759c
/* 8022D220 0022A180  48 00 01 24 */	b lbl_8022D344
lbl_8022D224:
/* 8022D224 0022A184  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D228 0022A188  A0 7D 07 72 */	lhz r3, 0x772(r29)
/* 8022D22C 0022A18C  7C 00 18 40 */	cmplw r0, r3
/* 8022D230 0022A190  40 82 00 A8 */	bne lbl_8022D2D8
/* 8022D234 0022A194  A0 0D A3 8C */	lhz r0, lbl_805A8F4C@sda21(r13)
/* 8022D238 0022A198  7C 03 00 40 */	cmplw r3, r0
/* 8022D23C 0022A19C  41 82 00 9C */	beq lbl_8022D2D8
/* 8022D240 0022A1A0  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022D244 0022A1A4  C0 5D 00 58 */	lfs f2, 0x58(r29)
/* 8022D248 0022A1A8  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8022D24C 0022A1AC  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8022D250 0022A1B0  C0 1D 00 38 */	lfs f0, 0x38(r29)
/* 8022D254 0022A1B4  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 8022D258 0022A1B8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8022D25C 0022A1BC  38 C0 00 04 */	li r6, 4
/* 8022D260 0022A1C0  38 00 00 08 */	li r0, 8
/* 8022D264 0022A1C4  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 8022D268 0022A1C8  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 8022D26C 0022A1CC  3B 43 00 04 */	addi r26, r3, 4
/* 8022D270 0022A1D0  90 C1 00 C8 */	stw r6, 0xc8(r1)
/* 8022D274 0022A1D4  7F 43 D3 78 */	mr r3, r26
/* 8022D278 0022A1D8  38 80 00 04 */	li r4, 4
/* 8022D27C 0022A1DC  90 A1 00 C4 */	stw r5, 0xc4(r1)
/* 8022D280 0022A1E0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8022D284 0022A1E4  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 8022D288 0022A1E8  D0 41 00 D4 */	stfs f2, 0xd4(r1)
/* 8022D28C 0022A1EC  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 8022D290 0022A1F0  4B F0 41 A9 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8022D294 0022A1F4  80 01 00 C8 */	lwz r0, 0xc8(r1)
/* 8022D298 0022A1F8  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8022D29C 0022A1FC  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 8022D2A0 0022A200  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8022D2A4 0022A204  90 1A 00 F8 */	stw r0, 0xf8(r26)
/* 8022D2A8 0022A208  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8022D2AC 0022A20C  80 A1 00 CC */	lwz r5, 0xcc(r1)
/* 8022D2B0 0022A210  80 61 00 D0 */	lwz r3, 0xd0(r1)
/* 8022D2B4 0022A214  90 BA 00 FC */	stw r5, 0xfc(r26)
/* 8022D2B8 0022A218  80 A1 00 D4 */	lwz r5, 0xd4(r1)
/* 8022D2BC 0022A21C  90 7A 01 00 */	stw r3, 0x100(r26)
/* 8022D2C0 0022A220  80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 8022D2C4 0022A224  90 BA 01 04 */	stw r5, 0x104(r26)
/* 8022D2C8 0022A228  90 81 00 C4 */	stw r4, 0xc4(r1)
/* 8022D2CC 0022A22C  90 7A 01 08 */	stw r3, 0x108(r26)
/* 8022D2D0 0022A230  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8022D2D4 0022A234  48 00 00 70 */	b lbl_8022D344
lbl_8022D2D8:
/* 8022D2D8 0022A238  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D2DC 0022A23C  7F A3 EB 78 */	mr r3, r29
/* 8022D2E0 0022A240  7F E4 FB 78 */	mr r4, r31
/* 8022D2E4 0022A244  38 A1 00 14 */	addi r5, r1, 0x14
/* 8022D2E8 0022A248  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8022D2EC 0022A24C  4B FF A1 79 */	bl sub_80227464
/* 8022D2F0 0022A250  48 00 00 54 */	b lbl_8022D344
.global lbl_8022D2F4
lbl_8022D2F4:
/* 8022D2F4 0022A254  7F E5 FB 78 */	mr r5, r31
/* 8022D2F8 0022A258  38 80 00 01 */	li r4, 1
/* 8022D2FC 0022A25C  4B FF A2 A1 */	bl sub_8022759c
/* 8022D300 0022A260  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D304 0022A264  7F E3 FB 78 */	mr r3, r31
/* 8022D308 0022A268  38 81 00 10 */	addi r4, r1, 0x10
/* 8022D30C 0022A26C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8022D310 0022A270  4B E1 F2 65 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8022D314 0022A274  7C 64 1B 78 */	mr r4, r3
/* 8022D318 0022A278  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8022D31C 0022A27C  4B E8 20 31 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 8022D320 0022A280  80 03 00 04 */	lwz r0, 4(r3)
/* 8022D324 0022A284  28 00 00 00 */	cmplwi r0, 0
/* 8022D328 0022A288  40 82 00 1C */	bne lbl_8022D344
/* 8022D32C 0022A28C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D330 0022A290  7F A3 EB 78 */	mr r3, r29
/* 8022D334 0022A294  7F E4 FB 78 */	mr r4, r31
/* 8022D338 0022A298  38 A1 00 0C */	addi r5, r1, 0xc
/* 8022D33C 0022A29C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8022D340 0022A2A0  4B FF A1 25 */	bl sub_80227464
.global lbl_8022D344
lbl_8022D344:
/* 8022D344 0022A2A4  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8022D348 0022A2A8  41 82 00 20 */	beq lbl_8022D368
/* 8022D34C 0022A2AC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 8022D350 0022A2B0  7F A3 EB 78 */	mr r3, r29
/* 8022D354 0022A2B4  7F 84 E3 78 */	mr r4, r28
/* 8022D358 0022A2B8  7F E6 FB 78 */	mr r6, r31
/* 8022D35C 0022A2BC  B0 01 00 08 */	sth r0, 8(r1)
/* 8022D360 0022A2C0  38 A1 00 08 */	addi r5, r1, 8
/* 8022D364 0022A2C4  4B E4 F8 15 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_8022D368:
/* 8022D368 0022A2C8  E3 E1 01 88 */	psq_l f31, 392(r1), 0, qr0
/* 8022D36C 0022A2CC  CB E1 01 80 */	lfd f31, 0x180(r1)
/* 8022D370 0022A2D0  BB 41 01 68 */	lmw r26, 0x168(r1)
/* 8022D374 0022A2D4  80 01 01 94 */	lwz r0, 0x194(r1)
/* 8022D378 0022A2D8  7C 08 03 A6 */	mtlr r0
/* 8022D37C 0022A2DC  38 21 01 90 */	addi r1, r1, 0x190
/* 8022D380 0022A2E0  4E 80 00 20 */	blr 

.global Think__12CElitePirateFfR13CStateManager
Think__12CElitePirateFfR13CStateManager:
/* 8022D384 0022A2E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8022D388 0022A2E8  7C 08 02 A6 */	mflr r0
/* 8022D38C 0022A2EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8022D390 0022A2F0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8022D394 0022A2F4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8022D398 0022A2F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022D39C 0022A2FC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8022D3A0 0022A300  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8022D3A4 0022A304  FF E0 08 90 */	fmr f31, f1
/* 8022D3A8 0022A308  7C 7E 1B 78 */	mr r30, r3
/* 8022D3AC 0022A30C  7C 9F 23 78 */	mr r31, r4
/* 8022D3B0 0022A310  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8022D3B4 0022A314  41 82 00 EC */	beq lbl_8022D4A0
/* 8022D3B8 0022A318  4B E4 C7 61 */	bl Think__10CPatternedFfR13CStateManager
/* 8022D3BC 0022A31C  FC 20 F8 90 */	fmr f1, f31
/* 8022D3C0 0022A320  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8022D3C4 0022A324  4B F4 85 E5 */	bl Update__13CBoneTrackingFf
/* 8022D3C8 0022A328  7F C3 F3 78 */	mr r3, r30
/* 8022D3CC 0022A32C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8022D3D0 0022A330  81 8C 02 CC */	lwz r12, 0x2cc(r12)
/* 8022D3D4 0022A334  7D 89 03 A6 */	mtctr r12
/* 8022D3D8 0022A338  4E 80 04 21 */	bctrl 
/* 8022D3DC 0022A33C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022D3E0 0022A340  41 82 00 18 */	beq lbl_8022D3F8
/* 8022D3E4 0022A344  FC 20 F8 90 */	fmr f1, f31
/* 8022D3E8 0022A348  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 8022D3EC 0022A34C  7F E4 FB 78 */	mr r4, r31
/* 8022D3F0 0022A350  38 A0 00 00 */	li r5, 0
/* 8022D3F4 0022A354  4B F7 A0 5D */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
lbl_8022D3F8:
/* 8022D3F8 0022A358  FC 20 F8 90 */	fmr f1, f31
/* 8022D3FC 0022A35C  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8022D400 0022A360  7F E4 FB 78 */	mr r4, r31
/* 8022D404 0022A364  38 A0 00 00 */	li r5, 0
/* 8022D408 0022A368  4B F7 A0 49 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 8022D40C 0022A36C  7F C3 F3 78 */	mr r3, r30
/* 8022D410 0022A370  4B FF BD F9 */	bl sub_80229208
/* 8022D414 0022A374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022D418 0022A378  41 82 00 24 */	beq lbl_8022D43C
/* 8022D41C 0022A37C  88 1E 06 F7 */	lbz r0, 0x6f7(r30)
/* 8022D420 0022A380  28 00 00 00 */	cmplwi r0, 0
/* 8022D424 0022A384  41 82 00 18 */	beq lbl_8022D43C
/* 8022D428 0022A388  C0 22 B6 10 */	lfs f1, lbl_805AD330@sda21(r2)
/* 8022D42C 0022A38C  C0 1E 07 A0 */	lfs f0, 0x7a0(r30)
/* 8022D430 0022A390  EC 01 00 32 */	fmuls f0, f1, f0
/* 8022D434 0022A394  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
/* 8022D438 0022A398  48 00 00 0C */	b lbl_8022D444
lbl_8022D43C:
/* 8022D43C 0022A39C  C0 1E 07 A0 */	lfs f0, 0x7a0(r30)
/* 8022D440 0022A3A0  D0 1E 03 B4 */	stfs f0, 0x3b4(r30)
lbl_8022D444:
/* 8022D444 0022A3A4  FC 20 F8 90 */	fmr f1, f31
/* 8022D448 0022A3A8  7F C3 F3 78 */	mr r3, r30
/* 8022D44C 0022A3AC  4B FF BA 05 */	bl sub_80228e50
/* 8022D450 0022A3B0  7F C3 F3 78 */	mr r3, r30
/* 8022D454 0022A3B4  4B FF B3 45 */	bl sub_80228798
/* 8022D458 0022A3B8  80 82 B5 A8 */	lwz r4, lbl_805AD2C8@sda21(r2)
/* 8022D45C 0022A3BC  38 61 00 08 */	addi r3, r1, 8
/* 8022D460 0022A3C0  4B DD 78 59 */	bl string_l__4rstlFPCc
/* 8022D464 0022A3C4  7F C3 F3 78 */	mr r3, r30
/* 8022D468 0022A3C8  7F E4 FB 78 */	mr r4, r31
/* 8022D46C 0022A3CC  38 BE 07 72 */	addi r5, r30, 0x772
/* 8022D470 0022A3D0  38 C1 00 08 */	addi r6, r1, 8
/* 8022D474 0022A3D4  4B FF B5 69 */	bl sub_802289dc
/* 8022D478 0022A3D8  38 61 00 08 */	addi r3, r1, 8
/* 8022D47C 0022A3DC  48 11 06 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8022D480 0022A3E0  7F C3 F3 78 */	mr r3, r30
/* 8022D484 0022A3E4  7F E4 FB 78 */	mr r4, r31
/* 8022D488 0022A3E8  4B FF B9 FD */	bl sub_80228e84
/* 8022D48C 0022A3EC  7F C3 F3 78 */	mr r3, r30
/* 8022D490 0022A3F0  4B FF BD 79 */	bl sub_80229208
/* 8022D494 0022A3F4  88 1E 03 28 */	lbz r0, 0x328(r30)
/* 8022D498 0022A3F8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 8022D49C 0022A3FC  98 1E 03 28 */	stb r0, 0x328(r30)
lbl_8022D4A0:
/* 8022D4A0 0022A400  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8022D4A4 0022A404  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8022D4A8 0022A408  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8022D4AC 0022A40C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022D4B0 0022A410  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8022D4B4 0022A414  7C 08 03 A6 */	mtlr r0
/* 8022D4B8 0022A418  38 21 00 30 */	addi r1, r1, 0x30
/* 8022D4BC 0022A41C  4E 80 00 20 */	blr 

.global Accept__12CElitePirateFR8IVisitor
Accept__12CElitePirateFR8IVisitor:
/* 8022D4C0 0022A420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022D4C4 0022A424  7C 08 02 A6 */	mflr r0
/* 8022D4C8 0022A428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022D4CC 0022A42C  7C 60 1B 78 */	mr r0, r3
/* 8022D4D0 0022A430  7C 83 23 78 */	mr r3, r4
/* 8022D4D4 0022A434  81 84 00 00 */	lwz r12, 0(r4)
/* 8022D4D8 0022A438  7C 04 03 78 */	mr r4, r0
/* 8022D4DC 0022A43C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022D4E0 0022A440  7D 89 03 A6 */	mtctr r12
/* 8022D4E4 0022A444  4E 80 04 21 */	bctrl 
/* 8022D4E8 0022A448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022D4EC 0022A44C  7C 08 03 A6 */	mtlr r0
/* 8022D4F0 0022A450  38 21 00 10 */	addi r1, r1, 0x10
/* 8022D4F4 0022A454  4E 80 00 20 */	blr 

.global __dt__12CElitePirateFv
__dt__12CElitePirateFv:
/* 8022D4F8 0022A458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022D4FC 0022A45C  7C 08 02 A6 */	mflr r0
/* 8022D500 0022A460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022D504 0022A464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022D508 0022A468  7C 9F 23 78 */	mr r31, r4
/* 8022D50C 0022A46C  93 C1 00 08 */	stw r30, 8(r1)
/* 8022D510 0022A470  7C 7E 1B 79 */	or. r30, r3, r3
/* 8022D514 0022A474  41 82 02 60 */	beq lbl_8022D774
/* 8022D518 0022A478  3C 60 80 3E */	lis r3, lbl_803E7AE0@ha
/* 8022D51C 0022A47C  34 1E 08 C0 */	addic. r0, r30, 0x8c0
/* 8022D520 0022A480  38 03 7A E0 */	addi r0, r3, lbl_803E7AE0@l
/* 8022D524 0022A484  90 1E 00 00 */	stw r0, 0(r30)
/* 8022D528 0022A488  41 82 00 60 */	beq lbl_8022D588
/* 8022D52C 0022A48C  34 1E 08 C4 */	addic. r0, r30, 0x8c4
/* 8022D530 0022A490  41 82 00 58 */	beq lbl_8022D588
/* 8022D534 0022A494  80 BE 08 C4 */	lwz r5, 0x8c4(r30)
/* 8022D538 0022A498  38 60 00 00 */	li r3, 0
/* 8022D53C 0022A49C  2C 05 00 00 */	cmpwi r5, 0
/* 8022D540 0022A4A0  40 81 00 40 */	ble lbl_8022D580
/* 8022D544 0022A4A4  2C 05 00 08 */	cmpwi r5, 8
/* 8022D548 0022A4A8  38 85 FF F8 */	addi r4, r5, -8
/* 8022D54C 0022A4AC  40 81 00 20 */	ble lbl_8022D56C
/* 8022D550 0022A4B0  38 04 00 07 */	addi r0, r4, 7
/* 8022D554 0022A4B4  54 00 E8 FE */	srwi r0, r0, 3
/* 8022D558 0022A4B8  7C 09 03 A6 */	mtctr r0
/* 8022D55C 0022A4BC  2C 04 00 00 */	cmpwi r4, 0
/* 8022D560 0022A4C0  40 81 00 0C */	ble lbl_8022D56C
lbl_8022D564:
/* 8022D564 0022A4C4  38 63 00 08 */	addi r3, r3, 8
/* 8022D568 0022A4C8  42 00 FF FC */	bdnz lbl_8022D564
lbl_8022D56C:
/* 8022D56C 0022A4CC  7C 03 28 50 */	subf r0, r3, r5
/* 8022D570 0022A4D0  7C 09 03 A6 */	mtctr r0
/* 8022D574 0022A4D4  7C 03 28 00 */	cmpw r3, r5
/* 8022D578 0022A4D8  40 80 00 08 */	bge lbl_8022D580
lbl_8022D57C:
/* 8022D57C 0022A4DC  42 00 00 00 */	bdnz lbl_8022D57C
lbl_8022D580:
/* 8022D580 0022A4E0  38 00 00 00 */	li r0, 0
/* 8022D584 0022A4E4  90 1E 08 C4 */	stw r0, 0x8c4(r30)
lbl_8022D588:
/* 8022D588 0022A4E8  34 1E 07 D0 */	addic. r0, r30, 0x7d0
/* 8022D58C 0022A4EC  41 82 00 60 */	beq lbl_8022D5EC
/* 8022D590 0022A4F0  34 1E 07 D4 */	addic. r0, r30, 0x7d4
/* 8022D594 0022A4F4  41 82 00 58 */	beq lbl_8022D5EC
/* 8022D598 0022A4F8  80 BE 07 D4 */	lwz r5, 0x7d4(r30)
/* 8022D59C 0022A4FC  38 60 00 00 */	li r3, 0
/* 8022D5A0 0022A500  2C 05 00 00 */	cmpwi r5, 0
/* 8022D5A4 0022A504  40 81 00 40 */	ble lbl_8022D5E4
/* 8022D5A8 0022A508  2C 05 00 08 */	cmpwi r5, 8
/* 8022D5AC 0022A50C  38 85 FF F8 */	addi r4, r5, -8
/* 8022D5B0 0022A510  40 81 00 20 */	ble lbl_8022D5D0
/* 8022D5B4 0022A514  38 04 00 07 */	addi r0, r4, 7
/* 8022D5B8 0022A518  54 00 E8 FE */	srwi r0, r0, 3
/* 8022D5BC 0022A51C  7C 09 03 A6 */	mtctr r0
/* 8022D5C0 0022A520  2C 04 00 00 */	cmpwi r4, 0
/* 8022D5C4 0022A524  40 81 00 0C */	ble lbl_8022D5D0
lbl_8022D5C8:
/* 8022D5C8 0022A528  38 63 00 08 */	addi r3, r3, 8
/* 8022D5CC 0022A52C  42 00 FF FC */	bdnz lbl_8022D5C8
lbl_8022D5D0:
/* 8022D5D0 0022A530  7C 03 28 50 */	subf r0, r3, r5
/* 8022D5D4 0022A534  7C 09 03 A6 */	mtctr r0
/* 8022D5D8 0022A538  7C 03 28 00 */	cmpw r3, r5
/* 8022D5DC 0022A53C  40 80 00 08 */	bge lbl_8022D5E4
lbl_8022D5E0:
/* 8022D5E0 0022A540  42 00 00 00 */	bdnz lbl_8022D5E0
lbl_8022D5E4:
/* 8022D5E4 0022A544  38 00 00 00 */	li r0, 0
/* 8022D5E8 0022A548  90 1E 07 D4 */	stw r0, 0x7d4(r30)
lbl_8022D5EC:
/* 8022D5EC 0022A54C  34 1E 07 88 */	addic. r0, r30, 0x788
/* 8022D5F0 0022A550  41 82 00 58 */	beq lbl_8022D648
/* 8022D5F4 0022A554  80 BE 07 88 */	lwz r5, 0x788(r30)
/* 8022D5F8 0022A558  38 60 00 00 */	li r3, 0
/* 8022D5FC 0022A55C  2C 05 00 00 */	cmpwi r5, 0
/* 8022D600 0022A560  40 81 00 40 */	ble lbl_8022D640
/* 8022D604 0022A564  2C 05 00 08 */	cmpwi r5, 8
/* 8022D608 0022A568  38 85 FF F8 */	addi r4, r5, -8
/* 8022D60C 0022A56C  40 81 00 20 */	ble lbl_8022D62C
/* 8022D610 0022A570  38 04 00 07 */	addi r0, r4, 7
/* 8022D614 0022A574  54 00 E8 FE */	srwi r0, r0, 3
/* 8022D618 0022A578  7C 09 03 A6 */	mtctr r0
/* 8022D61C 0022A57C  2C 04 00 00 */	cmpwi r4, 0
/* 8022D620 0022A580  40 81 00 0C */	ble lbl_8022D62C
lbl_8022D624:
/* 8022D624 0022A584  38 63 00 08 */	addi r3, r3, 8
/* 8022D628 0022A588  42 00 FF FC */	bdnz lbl_8022D624
lbl_8022D62C:
/* 8022D62C 0022A58C  7C 03 28 50 */	subf r0, r3, r5
/* 8022D630 0022A590  7C 09 03 A6 */	mtctr r0
/* 8022D634 0022A594  7C 03 28 00 */	cmpw r3, r5
/* 8022D638 0022A598  40 80 00 08 */	bge lbl_8022D640
lbl_8022D63C:
/* 8022D63C 0022A59C  42 00 00 00 */	bdnz lbl_8022D63C
lbl_8022D640:
/* 8022D640 0022A5A0  38 00 00 00 */	li r0, 0
/* 8022D644 0022A5A4  90 1E 07 88 */	stw r0, 0x788(r30)
lbl_8022D648:
/* 8022D648 0022A5A8  34 1E 07 74 */	addic. r0, r30, 0x774
/* 8022D64C 0022A5AC  41 82 00 58 */	beq lbl_8022D6A4
/* 8022D650 0022A5B0  80 BE 07 74 */	lwz r5, 0x774(r30)
/* 8022D654 0022A5B4  38 60 00 00 */	li r3, 0
/* 8022D658 0022A5B8  2C 05 00 00 */	cmpwi r5, 0
/* 8022D65C 0022A5BC  40 81 00 40 */	ble lbl_8022D69C
/* 8022D660 0022A5C0  2C 05 00 08 */	cmpwi r5, 8
/* 8022D664 0022A5C4  38 85 FF F8 */	addi r4, r5, -8
/* 8022D668 0022A5C8  40 81 00 20 */	ble lbl_8022D688
/* 8022D66C 0022A5CC  38 04 00 07 */	addi r0, r4, 7
/* 8022D670 0022A5D0  54 00 E8 FE */	srwi r0, r0, 3
/* 8022D674 0022A5D4  7C 09 03 A6 */	mtctr r0
/* 8022D678 0022A5D8  2C 04 00 00 */	cmpwi r4, 0
/* 8022D67C 0022A5DC  40 81 00 0C */	ble lbl_8022D688
lbl_8022D680:
/* 8022D680 0022A5E0  38 63 00 08 */	addi r3, r3, 8
/* 8022D684 0022A5E4  42 00 FF FC */	bdnz lbl_8022D680
lbl_8022D688:
/* 8022D688 0022A5E8  7C 03 28 50 */	subf r0, r3, r5
/* 8022D68C 0022A5EC  7C 09 03 A6 */	mtctr r0
/* 8022D690 0022A5F0  7C 03 28 00 */	cmpw r3, r5
/* 8022D694 0022A5F4  40 80 00 08 */	bge lbl_8022D69C
lbl_8022D698:
/* 8022D698 0022A5F8  42 00 00 00 */	bdnz lbl_8022D698
lbl_8022D69C:
/* 8022D69C 0022A5FC  38 00 00 00 */	li r0, 0
/* 8022D6A0 0022A600  90 1E 07 74 */	stw r0, 0x774(r30)
lbl_8022D6A4:
/* 8022D6A4 0022A604  34 1E 07 60 */	addic. r0, r30, 0x760
/* 8022D6A8 0022A608  41 82 00 30 */	beq lbl_8022D6D8
/* 8022D6AC 0022A60C  88 1E 07 6C */	lbz r0, 0x76c(r30)
/* 8022D6B0 0022A610  28 00 00 00 */	cmplwi r0, 0
/* 8022D6B4 0022A614  41 82 00 1C */	beq lbl_8022D6D0
/* 8022D6B8 0022A618  34 7E 07 60 */	addic. r3, r30, 0x760
/* 8022D6BC 0022A61C  41 82 00 14 */	beq lbl_8022D6D0
/* 8022D6C0 0022A620  28 03 00 00 */	cmplwi r3, 0
/* 8022D6C4 0022A624  41 82 00 0C */	beq lbl_8022D6D0
/* 8022D6C8 0022A628  38 80 00 00 */	li r4, 0
/* 8022D6CC 0022A62C  48 11 37 75 */	bl __dt__6CTokenFv
lbl_8022D6D0:
/* 8022D6D0 0022A630  38 00 00 00 */	li r0, 0
/* 8022D6D4 0022A634  98 1E 07 6C */	stb r0, 0x76c(r30)
lbl_8022D6D8:
/* 8022D6D8 0022A638  34 1E 07 38 */	addic. r0, r30, 0x738
/* 8022D6DC 0022A63C  41 82 00 24 */	beq lbl_8022D700
/* 8022D6E0 0022A640  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 8022D6E4 0022A644  34 1E 07 38 */	addic. r0, r30, 0x738
/* 8022D6E8 0022A648  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 8022D6EC 0022A64C  90 1E 07 38 */	stw r0, 0x738(r30)
/* 8022D6F0 0022A650  41 82 00 10 */	beq lbl_8022D700
/* 8022D6F4 0022A654  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 8022D6F8 0022A658  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 8022D6FC 0022A65C  90 1E 07 38 */	stw r0, 0x738(r30)
lbl_8022D700:
/* 8022D700 0022A660  34 1E 07 30 */	addic. r0, r30, 0x730
/* 8022D704 0022A664  41 82 00 10 */	beq lbl_8022D714
/* 8022D708 0022A668  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 8022D70C 0022A66C  38 80 00 01 */	li r4, 1
/* 8022D710 0022A670  4B F7 A1 CD */	bl sub_801a78dc
lbl_8022D714:
/* 8022D714 0022A674  34 1E 06 F8 */	addic. r0, r30, 0x6f8
/* 8022D718 0022A678  41 82 00 14 */	beq lbl_8022D72C
/* 8022D71C 0022A67C  34 1E 07 1C */	addic. r0, r30, 0x71c
/* 8022D720 0022A680  41 82 00 0C */	beq lbl_8022D72C
/* 8022D724 0022A684  38 00 00 00 */	li r0, 0
/* 8022D728 0022A688  98 1E 07 28 */	stb r0, 0x728(r30)
lbl_8022D72C:
/* 8022D72C 0022A68C  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 8022D730 0022A690  41 82 00 14 */	beq lbl_8022D744
/* 8022D734 0022A694  34 7E 06 00 */	addic. r3, r30, 0x600
/* 8022D738 0022A698  41 82 00 0C */	beq lbl_8022D744
/* 8022D73C 0022A69C  38 80 FF FF */	li r4, -1
/* 8022D740 0022A6A0  4B ED 8E C9 */	bl __dt__16CActorParametersFv
lbl_8022D744:
/* 8022D744 0022A6A4  34 1E 05 D4 */	addic. r0, r30, 0x5d4
/* 8022D748 0022A6A8  41 82 00 10 */	beq lbl_8022D758
/* 8022D74C 0022A6AC  80 7E 05 D4 */	lwz r3, 0x5d4(r30)
/* 8022D750 0022A6B0  38 80 00 01 */	li r4, 1
/* 8022D754 0022A6B4  4B F7 A1 89 */	bl sub_801a78dc
lbl_8022D758:
/* 8022D758 0022A6B8  7F C3 F3 78 */	mr r3, r30
/* 8022D75C 0022A6BC  38 80 00 00 */	li r4, 0
/* 8022D760 0022A6C0  4B E4 9E 11 */	bl __dt__10CPatternedFv
/* 8022D764 0022A6C4  7F E0 07 35 */	extsh. r0, r31
/* 8022D768 0022A6C8  40 81 00 0C */	ble lbl_8022D774
/* 8022D76C 0022A6CC  7F C3 F3 78 */	mr r3, r30
/* 8022D770 0022A6D0  48 0E 81 C1 */	bl Free__7CMemoryFPCv
lbl_8022D774:
/* 8022D774 0022A6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022D778 0022A6D8  7F C3 F3 78 */	mr r3, r30
/* 8022D77C 0022A6DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022D780 0022A6E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022D784 0022A6E4  7C 08 03 A6 */	mtlr r0
/* 8022D788 0022A6E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022D78C 0022A6EC  4E 80 00 20 */	blr 

.global "__ct__12CElitePirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC16CElitePirateData"
"__ct__12CElitePirateF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC16CElitePirateData":
/* 8022D790 0022A6F0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8022D794 0022A6F4  7C 08 02 A6 */	mflr r0
/* 8022D798 0022A6F8  39 60 00 01 */	li r11, 1
/* 8022D79C 0022A6FC  7D 0C 43 78 */	mr r12, r8
/* 8022D7A0 0022A700  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8022D7A4 0022A704  BE E1 00 8C */	stmw r23, 0x8c(r1)
/* 8022D7A8 0022A708  7C D8 33 78 */	mr r24, r6
/* 8022D7AC 0022A70C  7D 3E 4B 78 */	mr r30, r9
/* 8022D7B0 0022A710  7C A6 2B 78 */	mr r6, r5
/* 8022D7B4 0022A714  7C E9 3B 78 */	mr r9, r7
/* 8022D7B8 0022A718  83 E1 00 B8 */	lwz r31, 0xb8(r1)
/* 8022D7BC 0022A71C  7C 7D 1B 78 */	mr r29, r3
/* 8022D7C0 0022A720  7F 08 C3 78 */	mr r8, r24
/* 8022D7C4 0022A724  38 A1 00 20 */	addi r5, r1, 0x20
/* 8022D7C8 0022A728  38 E0 00 00 */	li r7, 0
/* 8022D7CC 0022A72C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8022D7D0 0022A730  38 80 00 00 */	li r4, 0
/* 8022D7D4 0022A734  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8022D7D8 0022A738  38 00 00 02 */	li r0, 2
/* 8022D7DC 0022A73C  93 C1 00 08 */	stw r30, 8(r1)
/* 8022D7E0 0022A740  90 81 00 0C */	stw r4, 0xc(r1)
/* 8022D7E4 0022A744  38 80 00 08 */	li r4, 8
/* 8022D7E8 0022A748  91 61 00 10 */	stw r11, 0x10(r1)
/* 8022D7EC 0022A74C  91 61 00 14 */	stw r11, 0x14(r1)
/* 8022D7F0 0022A750  91 41 00 18 */	stw r10, 0x18(r1)
/* 8022D7F4 0022A754  7D 8A 63 78 */	mr r10, r12
/* 8022D7F8 0022A758  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8022D7FC 0022A75C  4B E4 FC 55 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8022D800 0022A760  3C 60 80 3E */	lis r3, lbl_803E7AE0@ha
/* 8022D804 0022A764  38 A0 FF FF */	li r5, -1
/* 8022D808 0022A768  38 63 7A E0 */	addi r3, r3, lbl_803E7AE0@l
/* 8022D80C 0022A76C  38 00 00 00 */	li r0, 0
/* 8022D810 0022A770  90 7D 00 00 */	stw r3, 0(r29)
/* 8022D814 0022A774  7F E4 FB 78 */	mr r4, r31
/* 8022D818 0022A778  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 8022D81C 0022A77C  90 BD 05 68 */	stw r5, 0x568(r29)
/* 8022D820 0022A780  80 DE 00 5C */	lwz r6, 0x5c(r30)
/* 8022D824 0022A784  80 BE 00 60 */	lwz r5, 0x60(r30)
/* 8022D828 0022A788  90 DD 05 6C */	stw r6, 0x56c(r29)
/* 8022D82C 0022A78C  90 BD 05 70 */	stw r5, 0x570(r29)
/* 8022D830 0022A790  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 8022D834 0022A794  80 BE 00 68 */	lwz r5, 0x68(r30)
/* 8022D838 0022A798  90 DD 05 74 */	stw r6, 0x574(r29)
/* 8022D83C 0022A79C  90 BD 05 78 */	stw r5, 0x578(r29)
/* 8022D840 0022A7A0  80 DE 00 6C */	lwz r6, 0x6c(r30)
/* 8022D844 0022A7A4  80 BE 00 70 */	lwz r5, 0x70(r30)
/* 8022D848 0022A7A8  90 DD 05 7C */	stw r6, 0x57c(r29)
/* 8022D84C 0022A7AC  90 BD 05 80 */	stw r5, 0x580(r29)
/* 8022D850 0022A7B0  80 DE 00 74 */	lwz r6, 0x74(r30)
/* 8022D854 0022A7B4  80 BE 00 78 */	lwz r5, 0x78(r30)
/* 8022D858 0022A7B8  90 DD 05 84 */	stw r6, 0x584(r29)
/* 8022D85C 0022A7BC  90 BD 05 88 */	stw r5, 0x588(r29)
/* 8022D860 0022A7C0  80 DE 00 7C */	lwz r6, 0x7c(r30)
/* 8022D864 0022A7C4  80 BE 00 80 */	lwz r5, 0x80(r30)
/* 8022D868 0022A7C8  90 DD 05 8C */	stw r6, 0x58c(r29)
/* 8022D86C 0022A7CC  90 BD 05 90 */	stw r5, 0x590(r29)
/* 8022D870 0022A7D0  80 DE 00 84 */	lwz r6, 0x84(r30)
/* 8022D874 0022A7D4  80 BE 00 88 */	lwz r5, 0x88(r30)
/* 8022D878 0022A7D8  90 DD 05 94 */	stw r6, 0x594(r29)
/* 8022D87C 0022A7DC  90 BD 05 98 */	stw r5, 0x598(r29)
/* 8022D880 0022A7E0  80 DE 00 8C */	lwz r6, 0x8c(r30)
/* 8022D884 0022A7E4  80 BE 00 90 */	lwz r5, 0x90(r30)
/* 8022D888 0022A7E8  90 DD 05 9C */	stw r6, 0x59c(r29)
/* 8022D88C 0022A7EC  90 BD 05 A0 */	stw r5, 0x5a0(r29)
/* 8022D890 0022A7F0  80 BE 00 94 */	lwz r5, 0x94(r30)
/* 8022D894 0022A7F4  90 BD 05 A4 */	stw r5, 0x5a4(r29)
/* 8022D898 0022A7F8  80 DE 00 98 */	lwz r6, 0x98(r30)
/* 8022D89C 0022A7FC  80 BE 00 9C */	lwz r5, 0x9c(r30)
/* 8022D8A0 0022A800  90 DD 05 A8 */	stw r6, 0x5a8(r29)
/* 8022D8A4 0022A804  90 BD 05 AC */	stw r5, 0x5ac(r29)
/* 8022D8A8 0022A808  80 DE 00 A0 */	lwz r6, 0xa0(r30)
/* 8022D8AC 0022A80C  80 BE 00 A4 */	lwz r5, 0xa4(r30)
/* 8022D8B0 0022A810  90 DD 05 B0 */	stw r6, 0x5b0(r29)
/* 8022D8B4 0022A814  90 BD 05 B4 */	stw r5, 0x5b4(r29)
/* 8022D8B8 0022A818  80 DE 00 A8 */	lwz r6, 0xa8(r30)
/* 8022D8BC 0022A81C  80 BE 00 AC */	lwz r5, 0xac(r30)
/* 8022D8C0 0022A820  90 DD 05 B8 */	stw r6, 0x5b8(r29)
/* 8022D8C4 0022A824  90 BD 05 BC */	stw r5, 0x5bc(r29)
/* 8022D8C8 0022A828  80 DE 00 B0 */	lwz r6, 0xb0(r30)
/* 8022D8CC 0022A82C  80 BE 00 B4 */	lwz r5, 0xb4(r30)
/* 8022D8D0 0022A830  90 DD 05 C0 */	stw r6, 0x5c0(r29)
/* 8022D8D4 0022A834  90 BD 05 C4 */	stw r5, 0x5c4(r29)
/* 8022D8D8 0022A838  80 BE 00 B8 */	lwz r5, 0xb8(r30)
/* 8022D8DC 0022A83C  90 BD 05 C8 */	stw r5, 0x5c8(r29)
/* 8022D8E0 0022A840  80 BE 00 BC */	lwz r5, 0xbc(r30)
/* 8022D8E4 0022A844  90 BD 05 CC */	stw r5, 0x5cc(r29)
/* 8022D8E8 0022A848  80 BE 00 C0 */	lwz r5, 0xc0(r30)
/* 8022D8EC 0022A84C  90 BD 05 D0 */	stw r5, 0x5d0(r29)
/* 8022D8F0 0022A850  90 1D 05 D4 */	stw r0, 0x5d4(r29)
/* 8022D8F4 0022A854  48 00 03 9D */	bl __ct__16CElitePirateDataFRC16CElitePirateData
/* 8022D8F8 0022A858  3C 80 80 3D */	lis r4, lbl_803D3310@ha
/* 8022D8FC 0022A85C  38 61 00 60 */	addi r3, r1, 0x60
/* 8022D900 0022A860  38 84 33 10 */	addi r4, r4, lbl_803D3310@l
/* 8022D904 0022A864  38 84 00 54 */	addi r4, r4, 0x54
/* 8022D908 0022A868  4B DD 73 B1 */	bl string_l__4rstlFPCc
/* 8022D90C 0022A86C  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 8022D910 0022A870  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 8022D914 0022A874  C0 22 B6 1C */	lfs f1, lbl_805AD33C@sda21(r2)
/* 8022D918 0022A878  38 A1 00 60 */	addi r5, r1, 0x60
/* 8022D91C 0022A87C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8022D920 0022A880  38 C0 00 00 */	li r6, 0
/* 8022D924 0022A884  C0 42 B6 20 */	lfs f2, lbl_805AD340@sda21(r2)
/* 8022D928 0022A888  4B F4 80 91 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 8022D92C 0022A88C  38 61 00 60 */	addi r3, r1, 0x60
/* 8022D930 0022A890  48 11 01 B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8022D934 0022A894  38 00 00 00 */	li r0, 0
/* 8022D938 0022A898  7F A4 EB 78 */	mr r4, r29
/* 8022D93C 0022A89C  90 1D 07 30 */	stw r0, 0x730(r29)
/* 8022D940 0022A8A0  3B 1D 00 68 */	addi r24, r29, 0x68
/* 8022D944 0022A8A4  38 61 00 70 */	addi r3, r1, 0x70
/* 8022D948 0022A8A8  4B EE CF E5 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 8022D94C 0022A8AC  3A FD 07 38 */	addi r23, r29, 0x738
/* 8022D950 0022A8B0  7F 04 C3 78 */	mr r4, r24
/* 8022D954 0022A8B4  7E E3 BB 78 */	mr r3, r23
/* 8022D958 0022A8B8  48 0A 1F 5D */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 8022D95C 0022A8BC  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 8022D960 0022A8C0  3B 80 00 00 */	li r28, 0
/* 8022D964 0022A8C4  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 8022D968 0022A8C8  3B 60 00 00 */	li r27, 0
/* 8022D96C 0022A8CC  90 17 00 00 */	stw r0, 0(r23)
/* 8022D970 0022A8D0  3B 40 00 00 */	li r26, 0
/* 8022D974 0022A8D4  3B 20 00 00 */	li r25, 0
/* 8022D978 0022A8D8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8022D97C 0022A8DC  D0 17 00 10 */	stfs f0, 0x10(r23)
/* 8022D980 0022A8E0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8022D984 0022A8E4  D0 17 00 14 */	stfs f0, 0x14(r23)
/* 8022D988 0022A8E8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8022D98C 0022A8EC  D0 17 00 18 */	stfs f0, 0x18(r23)
/* 8022D990 0022A8F0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8022D994 0022A8F4  D0 17 00 1C */	stfs f0, 0x1c(r23)
/* 8022D998 0022A8F8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8022D99C 0022A8FC  D0 17 00 20 */	stfs f0, 0x20(r23)
/* 8022D9A0 0022A900  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8022D9A4 0022A904  D0 17 00 24 */	stfs f0, 0x24(r23)
/* 8022D9A8 0022A908  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8022D9AC 0022A90C  3C 04 00 01 */	addis r0, r4, 1
/* 8022D9B0 0022A910  28 00 FF FF */	cmplwi r0, 0xffff
/* 8022D9B4 0022A914  41 82 00 90 */	beq lbl_8022DA44
/* 8022D9B8 0022A918  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 8022D9BC 0022A91C  90 81 00 30 */	stw r4, 0x30(r1)
/* 8022D9C0 0022A920  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 8022D9C4 0022A924  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 8022D9C8 0022A928  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8022D9CC 0022A92C  38 61 00 24 */	addi r3, r1, 0x24
/* 8022D9D0 0022A930  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8022D9D4 0022A934  81 84 00 00 */	lwz r12, 0(r4)
/* 8022D9D8 0022A938  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022D9DC 0022A93C  7D 89 03 A6 */	mtctr r12
/* 8022D9E0 0022A940  4E 80 04 21 */	bctrl 
/* 8022D9E4 0022A944  3A E1 00 54 */	addi r23, r1, 0x54
/* 8022D9E8 0022A948  38 81 00 24 */	addi r4, r1, 0x24
/* 8022D9EC 0022A94C  7E E3 BB 78 */	mr r3, r23
/* 8022D9F0 0022A950  3B 80 00 01 */	li r28, 1
/* 8022D9F4 0022A954  48 11 34 B5 */	bl __ct__6CTokenFRC6CToken
/* 8022D9F8 0022A958  7E E3 BB 78 */	mr r3, r23
/* 8022D9FC 0022A95C  48 11 34 11 */	bl GetObj__6CTokenFv
/* 8022DA00 0022A960  80 63 00 04 */	lwz r3, 4(r3)
/* 8022DA04 0022A964  38 00 00 01 */	li r0, 1
/* 8022DA08 0022A968  37 41 00 44 */	addic. r26, r1, 0x44
/* 8022DA0C 0022A96C  3B 60 00 01 */	li r27, 1
/* 8022DA10 0022A970  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8022DA14 0022A974  98 01 00 50 */	stb r0, 0x50(r1)
/* 8022DA18 0022A978  41 82 00 20 */	beq lbl_8022DA38
/* 8022DA1C 0022A97C  7F 43 D3 78 */	mr r3, r26
/* 8022DA20 0022A980  7E E4 BB 78 */	mr r4, r23
/* 8022DA24 0022A984  48 11 34 85 */	bl __ct__6CTokenFRC6CToken
/* 8022DA28 0022A988  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8022DA2C 0022A98C  7F 43 D3 78 */	mr r3, r26
/* 8022DA30 0022A990  90 1A 00 08 */	stw r0, 8(r26)
/* 8022DA34 0022A994  48 11 33 51 */	bl Lock__6CTokenFv
lbl_8022DA38:
/* 8022DA38 0022A998  3B E1 00 44 */	addi r31, r1, 0x44
/* 8022DA3C 0022A99C  3B 40 00 01 */	li r26, 1
/* 8022DA40 0022A9A0  48 00 00 14 */	b lbl_8022DA54
lbl_8022DA44:
/* 8022DA44 0022A9A4  38 00 00 00 */	li r0, 0
/* 8022DA48 0022A9A8  3B E1 00 34 */	addi r31, r1, 0x34
/* 8022DA4C 0022A9AC  98 01 00 40 */	stb r0, 0x40(r1)
/* 8022DA50 0022A9B0  3B 20 00 01 */	li r25, 1
lbl_8022DA54:
/* 8022DA54 0022A9B4  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8022DA58 0022A9B8  98 1D 07 6C */	stb r0, 0x76c(r29)
/* 8022DA5C 0022A9BC  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8022DA60 0022A9C0  28 00 00 00 */	cmplwi r0, 0
/* 8022DA64 0022A9C4  41 82 00 28 */	beq lbl_8022DA8C
/* 8022DA68 0022A9C8  37 1D 07 60 */	addic. r24, r29, 0x760
/* 8022DA6C 0022A9CC  41 82 00 20 */	beq lbl_8022DA8C
/* 8022DA70 0022A9D0  7F 03 C3 78 */	mr r3, r24
/* 8022DA74 0022A9D4  7F E4 FB 78 */	mr r4, r31
/* 8022DA78 0022A9D8  48 11 34 31 */	bl __ct__6CTokenFRC6CToken
/* 8022DA7C 0022A9DC  80 1F 00 08 */	lwz r0, 8(r31)
/* 8022DA80 0022A9E0  7F 03 C3 78 */	mr r3, r24
/* 8022DA84 0022A9E4  90 18 00 08 */	stw r0, 8(r24)
/* 8022DA88 0022A9E8  48 11 32 FD */	bl Lock__6CTokenFv
lbl_8022DA8C:
/* 8022DA8C 0022A9EC  7F 20 07 75 */	extsb. r0, r25
/* 8022DA90 0022A9F0  41 82 00 30 */	beq lbl_8022DAC0
/* 8022DA94 0022A9F4  88 01 00 40 */	lbz r0, 0x40(r1)
/* 8022DA98 0022A9F8  28 00 00 00 */	cmplwi r0, 0
/* 8022DA9C 0022A9FC  41 82 00 1C */	beq lbl_8022DAB8
/* 8022DAA0 0022AA00  34 61 00 34 */	addic. r3, r1, 0x34
/* 8022DAA4 0022AA04  41 82 00 14 */	beq lbl_8022DAB8
/* 8022DAA8 0022AA08  28 03 00 00 */	cmplwi r3, 0
/* 8022DAAC 0022AA0C  41 82 00 0C */	beq lbl_8022DAB8
/* 8022DAB0 0022AA10  38 80 00 00 */	li r4, 0
/* 8022DAB4 0022AA14  48 11 33 8D */	bl __dt__6CTokenFv
lbl_8022DAB8:
/* 8022DAB8 0022AA18  38 00 00 00 */	li r0, 0
/* 8022DABC 0022AA1C  98 01 00 40 */	stb r0, 0x40(r1)
lbl_8022DAC0:
/* 8022DAC0 0022AA20  7F 40 07 75 */	extsb. r0, r26
/* 8022DAC4 0022AA24  41 82 00 30 */	beq lbl_8022DAF4
/* 8022DAC8 0022AA28  88 01 00 50 */	lbz r0, 0x50(r1)
/* 8022DACC 0022AA2C  28 00 00 00 */	cmplwi r0, 0
/* 8022DAD0 0022AA30  41 82 00 1C */	beq lbl_8022DAEC
/* 8022DAD4 0022AA34  34 61 00 44 */	addic. r3, r1, 0x44
/* 8022DAD8 0022AA38  41 82 00 14 */	beq lbl_8022DAEC
/* 8022DADC 0022AA3C  28 03 00 00 */	cmplwi r3, 0
/* 8022DAE0 0022AA40  41 82 00 0C */	beq lbl_8022DAEC
/* 8022DAE4 0022AA44  38 80 00 00 */	li r4, 0
/* 8022DAE8 0022AA48  48 11 33 59 */	bl __dt__6CTokenFv
lbl_8022DAEC:
/* 8022DAEC 0022AA4C  38 00 00 00 */	li r0, 0
/* 8022DAF0 0022AA50  98 01 00 50 */	stb r0, 0x50(r1)
lbl_8022DAF4:
/* 8022DAF4 0022AA54  7F 60 07 75 */	extsb. r0, r27
/* 8022DAF8 0022AA58  41 82 00 10 */	beq lbl_8022DB08
/* 8022DAFC 0022AA5C  38 61 00 54 */	addi r3, r1, 0x54
/* 8022DB00 0022AA60  38 80 00 00 */	li r4, 0
/* 8022DB04 0022AA64  48 11 33 3D */	bl __dt__6CTokenFv
lbl_8022DB08:
/* 8022DB08 0022AA68  7F 80 07 75 */	extsb. r0, r28
/* 8022DB0C 0022AA6C  41 82 00 10 */	beq lbl_8022DB1C
/* 8022DB10 0022AA70  38 61 00 24 */	addi r3, r1, 0x24
/* 8022DB14 0022AA74  38 80 FF FF */	li r4, -1
/* 8022DB18 0022AA78  48 11 33 29 */	bl __dt__6CTokenFv
lbl_8022DB1C:
/* 8022DB1C 0022AA7C  A0 6D A3 8C */	lhz r3, lbl_805A8F4C@sda21(r13)
/* 8022DB20 0022AA80  38 E0 00 00 */	li r7, 0
/* 8022DB24 0022AA84  C0 22 B5 CC */	lfs f1, lbl_805AD2EC@sda21(r2)
/* 8022DB28 0022AA88  38 00 FF FF */	li r0, -1
/* 8022DB2C 0022AA8C  B0 7D 07 70 */	sth r3, 0x770(r29)
/* 8022DB30 0022AA90  38 7D 07 D0 */	addi r3, r29, 0x7d0
/* 8022DB34 0022AA94  C0 02 B5 B8 */	lfs f0, lbl_805AD2D8@sda21(r2)
/* 8022DB38 0022AA98  FC 40 08 90 */	fmr f2, f1
/* 8022DB3C 0022AA9C  A0 CD A3 8C */	lhz r6, lbl_805A8F4C@sda21(r13)
/* 8022DB40 0022AAA0  38 80 00 00 */	li r4, 0
/* 8022DB44 0022AAA4  38 A0 00 01 */	li r5, 1
/* 8022DB48 0022AAA8  B0 DD 07 72 */	sth r6, 0x772(r29)
/* 8022DB4C 0022AAAC  90 FD 07 74 */	stw r7, 0x774(r29)
/* 8022DB50 0022AAB0  90 FD 07 88 */	stw r7, 0x788(r29)
/* 8022DB54 0022AAB4  A0 CD A3 8C */	lhz r6, lbl_805A8F4C@sda21(r13)
/* 8022DB58 0022AAB8  B0 DD 07 9C */	sth r6, 0x79c(r29)
/* 8022DB5C 0022AABC  C0 7D 03 B4 */	lfs f3, 0x3b4(r29)
/* 8022DB60 0022AAC0  D0 7D 07 A0 */	stfs f3, 0x7a0(r29)
/* 8022DB64 0022AAC4  D0 3D 07 A4 */	stfs f1, 0x7a4(r29)
/* 8022DB68 0022AAC8  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 8022DB6C 0022AACC  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 8022DB70 0022AAD0  D0 3D 07 B0 */	stfs f1, 0x7b0(r29)
/* 8022DB74 0022AAD4  D0 1D 07 B4 */	stfs f0, 0x7b4(r29)
/* 8022DB78 0022AAD8  D0 1D 07 B8 */	stfs f0, 0x7b8(r29)
/* 8022DB7C 0022AADC  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
/* 8022DB80 0022AAE0  D0 1D 07 C0 */	stfs f0, 0x7c0(r29)
/* 8022DB84 0022AAE4  D0 1D 07 C4 */	stfs f0, 0x7c4(r29)
/* 8022DB88 0022AAE8  90 1D 07 C8 */	stw r0, 0x7c8(r29)
/* 8022DB8C 0022AAEC  90 FD 07 CC */	stw r7, 0x7cc(r29)
/* 8022DB90 0022AAF0  80 DE 01 0C */	lwz r6, 0x10c(r30)
/* 8022DB94 0022AAF4  4B F9 B2 01 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 8022DB98 0022AAF8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8022DB9C 0022AAFC  C0 22 B5 FC */	lfs f1, lbl_805AD31C@sda21(r2)
/* 8022DBA0 0022AB00  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 8022DBA4 0022AB04  38 7D 08 C0 */	addi r3, r29, 0x8c0
/* 8022DBA8 0022AB08  C0 04 00 00 */	lfs f0, 0(r4)
/* 8022DBAC 0022AB0C  D0 1D 08 B4 */	stfs f0, 0x8b4(r29)
/* 8022DBB0 0022AB10  C0 04 00 04 */	lfs f0, 4(r4)
/* 8022DBB4 0022AB14  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 8022DBB8 0022AB18  C0 04 00 08 */	lfs f0, 8(r4)
/* 8022DBBC 0022AB1C  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 8022DBC0 0022AB20  48 07 2E 39 */	bl sub_802a09f8
/* 8022DBC4 0022AB24  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DBC8 0022AB28  38 80 00 00 */	li r4, 0
/* 8022DBCC 0022AB2C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8022DBD0 0022AB30  7F A3 EB 78 */	mr r3, r29
/* 8022DBD4 0022AB34  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DBD8 0022AB38  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DBDC 0022AB3C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8022DBE0 0022AB40  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DBE4 0022AB44  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DBE8 0022AB48  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8022DBEC 0022AB4C  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DBF0 0022AB50  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DBF4 0022AB54  50 80 26 F6 */	rlwimi r0, r4, 4, 0x1b, 0x1b
/* 8022DBF8 0022AB58  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DBFC 0022AB5C  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DC00 0022AB60  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8022DC04 0022AB64  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DC08 0022AB68  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DC0C 0022AB6C  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8022DC10 0022AB70  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DC14 0022AB74  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DC18 0022AB78  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8022DC1C 0022AB7C  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DC20 0022AB80  88 1D 09 88 */	lbz r0, 0x988(r29)
/* 8022DC24 0022AB84  50 80 07 FE */	rlwimi r0, r4, 0, 0x1f, 0x1f
/* 8022DC28 0022AB88  98 1D 09 88 */	stb r0, 0x988(r29)
/* 8022DC2C 0022AB8C  88 1D 09 89 */	lbz r0, 0x989(r29)
/* 8022DC30 0022AB90  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8022DC34 0022AB94  98 1D 09 89 */	stb r0, 0x989(r29)
/* 8022DC38 0022AB98  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8022DC3C 0022AB9C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 8022DC40 0022ABA0  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8022DC44 0022ABA4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8022DC48 0022ABA8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8022DC4C 0022ABAC  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 8022DC50 0022ABB0  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8022DC54 0022ABB4  50 80 1F 38 */	rlwimi r0, r4, 3, 0x1c, 0x1c
/* 8022DC58 0022ABB8  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8022DC5C 0022ABBC  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8022DC60 0022ABC0  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8022DC64 0022ABC4  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8022DC68 0022ABC8  88 1D 04 E1 */	lbz r0, 0x4e1(r29)
/* 8022DC6C 0022ABCC  50 80 0F BC */	rlwimi r0, r4, 1, 0x1e, 0x1e
/* 8022DC70 0022ABD0  98 1D 04 E1 */	stb r0, 0x4e1(r29)
/* 8022DC74 0022ABD4  4B FF B5 D5 */	bl sub_80229248
/* 8022DC78 0022ABD8  7F A3 EB 78 */	mr r3, r29
/* 8022DC7C 0022ABDC  BA E1 00 8C */	lmw r23, 0x8c(r1)
/* 8022DC80 0022ABE0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8022DC84 0022ABE4  7C 08 03 A6 */	mtlr r0
/* 8022DC88 0022ABE8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8022DC8C 0022ABEC  4E 80 00 20 */	blr 

.global __ct__16CElitePirateDataFRC16CElitePirateData
__ct__16CElitePirateDataFRC16CElitePirateData:
/* 8022DC90 0022ABF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022DC94 0022ABF4  7C 08 02 A6 */	mflr r0
/* 8022DC98 0022ABF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022DC9C 0022ABFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022DCA0 0022AC00  7C 9F 23 78 */	mr r31, r4
/* 8022DCA4 0022AC04  93 C1 00 08 */	stw r30, 8(r1)
/* 8022DCA8 0022AC08  7C 7E 1B 78 */	mr r30, r3
/* 8022DCAC 0022AC0C  38 7E 00 28 */	addi r3, r30, 0x28
/* 8022DCB0 0022AC10  C0 04 00 00 */	lfs f0, 0(r4)
/* 8022DCB4 0022AC14  38 9F 00 28 */	addi r4, r31, 0x28
/* 8022DCB8 0022AC18  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8022DCBC 0022AC1C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8022DCC0 0022AC20  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8022DCC4 0022AC24  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8022DCC8 0022AC28  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8022DCCC 0022AC2C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8022DCD0 0022AC30  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8022DCD4 0022AC34  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8022DCD8 0022AC38  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8022DCDC 0022AC3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8022DCE0 0022AC40  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8022DCE4 0022AC44  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8022DCE8 0022AC48  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 8022DCEC 0022AC4C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8022DCF0 0022AC50  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8022DCF4 0022AC54  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8022DCF8 0022AC58  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8022DCFC 0022AC5C  A0 1F 00 24 */	lhz r0, 0x24(r31)
/* 8022DD00 0022AC60  B0 1E 00 24 */	sth r0, 0x24(r30)
/* 8022DD04 0022AC64  4B E9 79 19 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 8022DD08 0022AC68  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 8022DD0C 0022AC6C  7F C3 F3 78 */	mr r3, r30
/* 8022DD10 0022AC70  90 1E 00 90 */	stw r0, 0x90(r30)
/* 8022DD14 0022AC74  80 1F 00 94 */	lwz r0, 0x94(r31)
/* 8022DD18 0022AC78  90 1E 00 94 */	stw r0, 0x94(r30)
/* 8022DD1C 0022AC7C  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 8022DD20 0022AC80  90 1E 00 98 */	stw r0, 0x98(r30)
/* 8022DD24 0022AC84  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 8022DD28 0022AC88  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 8022DD2C 0022AC8C  A0 1F 00 A0 */	lhz r0, 0xa0(r31)
/* 8022DD30 0022AC90  B0 1E 00 A0 */	sth r0, 0xa0(r30)
/* 8022DD34 0022AC94  80 1F 00 A4 */	lwz r0, 0xa4(r31)
/* 8022DD38 0022AC98  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 8022DD3C 0022AC9C  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 8022DD40 0022ACA0  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 8022DD44 0022ACA4  88 1F 00 AC */	lbz r0, 0xac(r31)
/* 8022DD48 0022ACA8  98 1E 00 AC */	stb r0, 0xac(r30)
/* 8022DD4C 0022ACAC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8022DD50 0022ACB0  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 8022DD54 0022ACB4  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8022DD58 0022ACB8  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 8022DD5C 0022ACBC  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 8022DD60 0022ACC0  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 8022DD64 0022ACC4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8022DD68 0022ACC8  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 8022DD6C 0022ACCC  88 1F 00 C0 */	lbz r0, 0xc0(r31)
/* 8022DD70 0022ACD0  98 1E 00 C0 */	stb r0, 0xc0(r30)
/* 8022DD74 0022ACD4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8022DD78 0022ACD8  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 8022DD7C 0022ACDC  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 8022DD80 0022ACE0  90 1E 00 C8 */	stw r0, 0xc8(r30)
/* 8022DD84 0022ACE4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8022DD88 0022ACE8  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 8022DD8C 0022ACEC  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 8022DD90 0022ACF0  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 8022DD94 0022ACF4  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 8022DD98 0022ACF8  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 8022DD9C 0022ACFC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8022DDA0 0022AD00  D0 1E 00 D8 */	stfs f0, 0xd8(r30)
/* 8022DDA4 0022AD04  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8022DDA8 0022AD08  D0 1E 00 DC */	stfs f0, 0xdc(r30)
/* 8022DDAC 0022AD0C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8022DDB0 0022AD10  D0 1E 00 E0 */	stfs f0, 0xe0(r30)
/* 8022DDB4 0022AD14  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8022DDB8 0022AD18  D0 1E 00 E4 */	stfs f0, 0xe4(r30)
/* 8022DDBC 0022AD1C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8022DDC0 0022AD20  D0 1E 00 E8 */	stfs f0, 0xe8(r30)
/* 8022DDC4 0022AD24  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8022DDC8 0022AD28  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 8022DDCC 0022AD2C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8022DDD0 0022AD30  90 1E 00 F0 */	stw r0, 0xf0(r30)
/* 8022DDD4 0022AD34  A0 1F 00 F4 */	lhz r0, 0xf4(r31)
/* 8022DDD8 0022AD38  B0 1E 00 F4 */	sth r0, 0xf4(r30)
/* 8022DDDC 0022AD3C  A0 1F 00 F6 */	lhz r0, 0xf6(r31)
/* 8022DDE0 0022AD40  B0 1E 00 F6 */	sth r0, 0xf6(r30)
/* 8022DDE4 0022AD44  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 8022DDE8 0022AD48  90 1E 00 F8 */	stw r0, 0xf8(r30)
/* 8022DDEC 0022AD4C  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 8022DDF0 0022AD50  90 1E 00 FC */	stw r0, 0xfc(r30)
/* 8022DDF4 0022AD54  88 1F 01 00 */	lbz r0, 0x100(r31)
/* 8022DDF8 0022AD58  98 1E 01 00 */	stb r0, 0x100(r30)
/* 8022DDFC 0022AD5C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8022DE00 0022AD60  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 8022DE04 0022AD64  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8022DE08 0022AD68  D0 1E 01 08 */	stfs f0, 0x108(r30)
/* 8022DE0C 0022AD6C  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8022DE10 0022AD70  D0 1E 01 0C */	stfs f0, 0x10c(r30)
/* 8022DE14 0022AD74  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 8022DE18 0022AD78  D0 1E 01 10 */	stfs f0, 0x110(r30)
/* 8022DE1C 0022AD7C  88 1F 01 14 */	lbz r0, 0x114(r31)
/* 8022DE20 0022AD80  98 1E 01 14 */	stb r0, 0x114(r30)
/* 8022DE24 0022AD84  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 8022DE28 0022AD88  90 1E 01 18 */	stw r0, 0x118(r30)
/* 8022DE2C 0022AD8C  A0 1F 01 1C */	lhz r0, 0x11c(r31)
/* 8022DE30 0022AD90  B0 1E 01 1C */	sth r0, 0x11c(r30)
/* 8022DE34 0022AD94  88 1F 01 1E */	lbz r0, 0x11e(r31)
/* 8022DE38 0022AD98  98 1E 01 1E */	stb r0, 0x11e(r30)
/* 8022DE3C 0022AD9C  88 1F 01 1F */	lbz r0, 0x11f(r31)
/* 8022DE40 0022ADA0  98 1E 01 1F */	stb r0, 0x11f(r30)
/* 8022DE44 0022ADA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022DE48 0022ADA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022DE4C 0022ADAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022DE50 0022ADB0  7C 08 03 A6 */	mtlr r0
/* 8022DE54 0022ADB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8022DE58 0022ADB8  4E 80 00 20 */	blr 

.global __ct__16CElitePirateDataFR12CInputStreami
__ct__16CElitePirateDataFR12CInputStreami:
/* 8022DE5C 0022ADBC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8022DE60 0022ADC0  7C 08 02 A6 */	mflr r0
/* 8022DE64 0022ADC4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8022DE68 0022ADC8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8022DE6C 0022ADCC  7C BF 2B 78 */	mr r31, r5
/* 8022DE70 0022ADD0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8022DE74 0022ADD4  7C 9E 23 78 */	mr r30, r4
/* 8022DE78 0022ADD8  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8022DE7C 0022ADDC  7C 7D 1B 78 */	mr r29, r3
/* 8022DE80 0022ADE0  7F C3 F3 78 */	mr r3, r30
/* 8022DE84 0022ADE4  48 11 0D A5 */	bl ReadFloat__12CInputStreamFv
/* 8022DE88 0022ADE8  D0 3D 00 00 */	stfs f1, 0(r29)
/* 8022DE8C 0022ADEC  7F C3 F3 78 */	mr r3, r30
/* 8022DE90 0022ADF0  48 11 0D 99 */	bl ReadFloat__12CInputStreamFv
/* 8022DE94 0022ADF4  D0 3D 00 04 */	stfs f1, 4(r29)
/* 8022DE98 0022ADF8  7F C3 F3 78 */	mr r3, r30
/* 8022DE9C 0022ADFC  48 11 0D 8D */	bl ReadFloat__12CInputStreamFv
/* 8022DEA0 0022AE00  D0 3D 00 08 */	stfs f1, 8(r29)
/* 8022DEA4 0022AE04  7F C3 F3 78 */	mr r3, r30
/* 8022DEA8 0022AE08  48 11 0D 81 */	bl ReadFloat__12CInputStreamFv
/* 8022DEAC 0022AE0C  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 8022DEB0 0022AE10  7F C3 F3 78 */	mr r3, r30
/* 8022DEB4 0022AE14  48 11 0D 75 */	bl ReadFloat__12CInputStreamFv
/* 8022DEB8 0022AE18  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 8022DEBC 0022AE1C  7F C3 F3 78 */	mr r3, r30
/* 8022DEC0 0022AE20  48 11 0D 69 */	bl ReadFloat__12CInputStreamFv
/* 8022DEC4 0022AE24  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 8022DEC8 0022AE28  7F C3 F3 78 */	mr r3, r30
/* 8022DECC 0022AE2C  48 11 0D 5D */	bl ReadFloat__12CInputStreamFv
/* 8022DED0 0022AE30  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 8022DED4 0022AE34  7F C3 F3 78 */	mr r3, r30
/* 8022DED8 0022AE38  48 11 0D 51 */	bl ReadFloat__12CInputStreamFv
/* 8022DEDC 0022AE3C  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 8022DEE0 0022AE40  7F C3 F3 78 */	mr r3, r30
/* 8022DEE4 0022AE44  48 11 0D A1 */	bl ReadLong__12CInputStreamFv
/* 8022DEE8 0022AE48  90 7D 00 20 */	stw r3, 0x20(r29)
/* 8022DEEC 0022AE4C  7F C3 F3 78 */	mr r3, r30
/* 8022DEF0 0022AE50  48 11 0D 95 */	bl ReadLong__12CInputStreamFv
/* 8022DEF4 0022AE54  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022DEF8 0022AE58  48 0B AA B9 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022DEFC 0022AE5C  B0 7D 00 24 */	sth r3, 0x24(r29)
/* 8022DF00 0022AE60  7F C4 F3 78 */	mr r4, r30
/* 8022DF04 0022AE64  38 61 00 14 */	addi r3, r1, 0x14
/* 8022DF08 0022AE68  4B EA BE 6D */	bl LoadActorParameters__FR12CInputStream
/* 8022DF0C 0022AE6C  38 7D 00 28 */	addi r3, r29, 0x28
/* 8022DF10 0022AE70  38 81 00 14 */	addi r4, r1, 0x14
/* 8022DF14 0022AE74  4B E9 77 09 */	bl __ct__16CActorParametersFRC16CActorParameters
/* 8022DF18 0022AE78  38 61 00 14 */	addi r3, r1, 0x14
/* 8022DF1C 0022AE7C  38 80 FF FF */	li r4, -1
/* 8022DF20 0022AE80  4B ED 86 E9 */	bl __dt__16CActorParametersFv
/* 8022DF24 0022AE84  7F C4 F3 78 */	mr r4, r30
/* 8022DF28 0022AE88  38 61 00 08 */	addi r3, r1, 8
/* 8022DF2C 0022AE8C  4B EA C4 E1 */	bl LoadAnimationParameters__FR12CInputStream
/* 8022DF30 0022AE90  80 01 00 08 */	lwz r0, 8(r1)
/* 8022DF34 0022AE94  7F C3 F3 78 */	mr r3, r30
/* 8022DF38 0022AE98  90 1D 00 90 */	stw r0, 0x90(r29)
/* 8022DF3C 0022AE9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8022DF40 0022AEA0  90 1D 00 94 */	stw r0, 0x94(r29)
/* 8022DF44 0022AEA4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8022DF48 0022AEA8  90 1D 00 98 */	stw r0, 0x98(r29)
/* 8022DF4C 0022AEAC  48 11 0D 39 */	bl ReadLong__12CInputStreamFv
/* 8022DF50 0022AEB0  90 7D 00 9C */	stw r3, 0x9c(r29)
/* 8022DF54 0022AEB4  7F C3 F3 78 */	mr r3, r30
/* 8022DF58 0022AEB8  48 11 0D 2D */	bl ReadLong__12CInputStreamFv
/* 8022DF5C 0022AEBC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022DF60 0022AEC0  48 0B AA 51 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022DF64 0022AEC4  B0 7D 00 A0 */	sth r3, 0xa0(r29)
/* 8022DF68 0022AEC8  7F C3 F3 78 */	mr r3, r30
/* 8022DF6C 0022AECC  48 11 0D 19 */	bl ReadLong__12CInputStreamFv
/* 8022DF70 0022AED0  90 7D 00 A4 */	stw r3, 0xa4(r29)
/* 8022DF74 0022AED4  7F C4 F3 78 */	mr r4, r30
/* 8022DF78 0022AED8  38 7D 00 A8 */	addi r3, r29, 0xa8
/* 8022DF7C 0022AEDC  4B E9 55 E5 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8022DF80 0022AEE0  7F C3 F3 78 */	mr r3, r30
/* 8022DF84 0022AEE4  48 11 0C A5 */	bl ReadFloat__12CInputStreamFv
/* 8022DF88 0022AEE8  D0 3D 00 C4 */	stfs f1, 0xc4(r29)
/* 8022DF8C 0022AEEC  7F C3 F3 78 */	mr r3, r30
/* 8022DF90 0022AEF0  48 11 0C F5 */	bl ReadLong__12CInputStreamFv
/* 8022DF94 0022AEF4  90 7D 00 C8 */	stw r3, 0xc8(r29)
/* 8022DF98 0022AEF8  7F C3 F3 78 */	mr r3, r30
/* 8022DF9C 0022AEFC  48 11 0C E9 */	bl ReadLong__12CInputStreamFv
/* 8022DFA0 0022AF00  90 7D 00 CC */	stw r3, 0xcc(r29)
/* 8022DFA4 0022AF04  7F C3 F3 78 */	mr r3, r30
/* 8022DFA8 0022AF08  48 11 0C DD */	bl ReadLong__12CInputStreamFv
/* 8022DFAC 0022AF0C  90 7D 00 D0 */	stw r3, 0xd0(r29)
/* 8022DFB0 0022AF10  7F C3 F3 78 */	mr r3, r30
/* 8022DFB4 0022AF14  48 11 0C D1 */	bl ReadLong__12CInputStreamFv
/* 8022DFB8 0022AF18  90 7D 00 D4 */	stw r3, 0xd4(r29)
/* 8022DFBC 0022AF1C  7F C3 F3 78 */	mr r3, r30
/* 8022DFC0 0022AF20  48 11 0C 69 */	bl ReadFloat__12CInputStreamFv
/* 8022DFC4 0022AF24  D0 3D 00 D8 */	stfs f1, 0xd8(r29)
/* 8022DFC8 0022AF28  7F C3 F3 78 */	mr r3, r30
/* 8022DFCC 0022AF2C  48 11 0C 5D */	bl ReadFloat__12CInputStreamFv
/* 8022DFD0 0022AF30  D0 3D 00 DC */	stfs f1, 0xdc(r29)
/* 8022DFD4 0022AF34  7F C3 F3 78 */	mr r3, r30
/* 8022DFD8 0022AF38  48 11 0C 51 */	bl ReadFloat__12CInputStreamFv
/* 8022DFDC 0022AF3C  D0 3D 00 E0 */	stfs f1, 0xe0(r29)
/* 8022DFE0 0022AF40  7F C3 F3 78 */	mr r3, r30
/* 8022DFE4 0022AF44  48 11 0C 45 */	bl ReadFloat__12CInputStreamFv
/* 8022DFE8 0022AF48  D0 3D 00 E4 */	stfs f1, 0xe4(r29)
/* 8022DFEC 0022AF4C  7F C3 F3 78 */	mr r3, r30
/* 8022DFF0 0022AF50  48 11 0C 39 */	bl ReadFloat__12CInputStreamFv
/* 8022DFF4 0022AF54  C0 02 B6 24 */	lfs f0, lbl_805AD344@sda21(r2)
/* 8022DFF8 0022AF58  7F C3 F3 78 */	mr r3, r30
/* 8022DFFC 0022AF5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E000 0022AF60  D0 1D 00 E8 */	stfs f0, 0xe8(r29)
/* 8022E004 0022AF64  48 11 0C 25 */	bl ReadFloat__12CInputStreamFv
/* 8022E008 0022AF68  C0 02 B6 24 */	lfs f0, lbl_805AD344@sda21(r2)
/* 8022E00C 0022AF6C  7F C3 F3 78 */	mr r3, r30
/* 8022E010 0022AF70  EC 00 00 72 */	fmuls f0, f0, f1
/* 8022E014 0022AF74  D0 1D 00 EC */	stfs f0, 0xec(r29)
/* 8022E018 0022AF78  48 11 0C 6D */	bl ReadLong__12CInputStreamFv
/* 8022E01C 0022AF7C  90 7D 00 F0 */	stw r3, 0xf0(r29)
/* 8022E020 0022AF80  7F C3 F3 78 */	mr r3, r30
/* 8022E024 0022AF84  48 11 0C 61 */	bl ReadLong__12CInputStreamFv
/* 8022E028 0022AF88  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022E02C 0022AF8C  48 0B A9 85 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022E030 0022AF90  B0 7D 00 F4 */	sth r3, 0xf4(r29)
/* 8022E034 0022AF94  7F C3 F3 78 */	mr r3, r30
/* 8022E038 0022AF98  48 11 0C 4D */	bl ReadLong__12CInputStreamFv
/* 8022E03C 0022AF9C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022E040 0022AFA0  48 0B A9 71 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022E044 0022AFA4  B0 7D 00 F6 */	sth r3, 0xf6(r29)
/* 8022E048 0022AFA8  7F C3 F3 78 */	mr r3, r30
/* 8022E04C 0022AFAC  48 11 0C 39 */	bl ReadLong__12CInputStreamFv
/* 8022E050 0022AFB0  90 7D 00 F8 */	stw r3, 0xf8(r29)
/* 8022E054 0022AFB4  7F C4 F3 78 */	mr r4, r30
/* 8022E058 0022AFB8  38 7D 00 FC */	addi r3, r29, 0xfc
/* 8022E05C 0022AFBC  4B E9 55 05 */	bl __ct__11CDamageInfoFR12CInputStream
/* 8022E060 0022AFC0  7F C3 F3 78 */	mr r3, r30
/* 8022E064 0022AFC4  48 11 0C 21 */	bl ReadLong__12CInputStreamFv
/* 8022E068 0022AFC8  90 7D 01 18 */	stw r3, 0x118(r29)
/* 8022E06C 0022AFCC  7F C3 F3 78 */	mr r3, r30
/* 8022E070 0022AFD0  48 11 0C 15 */	bl ReadLong__12CInputStreamFv
/* 8022E074 0022AFD4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022E078 0022AFD8  48 0B A9 39 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022E07C 0022AFDC  B0 7D 01 1C */	sth r3, 0x11c(r29)
/* 8022E080 0022AFE0  7F C3 F3 78 */	mr r3, r30
/* 8022E084 0022AFE4  48 11 0C 59 */	bl ReadBool__12CInputStreamFv
/* 8022E088 0022AFE8  2C 1F 00 2A */	cmpwi r31, 0x2a
/* 8022E08C 0022AFEC  98 7D 01 1E */	stb r3, 0x11e(r29)
/* 8022E090 0022AFF0  41 80 00 10 */	blt lbl_8022E0A0
/* 8022E094 0022AFF4  7F C3 F3 78 */	mr r3, r30
/* 8022E098 0022AFF8  48 11 0C 45 */	bl ReadBool__12CInputStreamFv
/* 8022E09C 0022AFFC  48 00 00 08 */	b lbl_8022E0A4
lbl_8022E0A0:
/* 8022E0A0 0022B000  38 60 00 01 */	li r3, 1
lbl_8022E0A4:
/* 8022E0A4 0022B004  98 7D 01 1F */	stb r3, 0x11f(r29)
/* 8022E0A8 0022B008  7F A3 EB 78 */	mr r3, r29
/* 8022E0AC 0022B00C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8022E0B0 0022B010  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8022E0B4 0022B014  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8022E0B8 0022B018  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8022E0BC 0022B01C  7C 08 03 A6 */	mtlr r0
/* 8022E0C0 0022B020  38 21 00 90 */	addi r1, r1, 0x90
/* 8022E0C4 0022B024  4E 80 00 20 */	blr 

.global __sinit_CElitePirate_cpp
__sinit_CElitePirate_cpp:
/* 8022E0C8 0022B028  C0 22 B6 10 */	lfs f1, lbl_805AD330@sda21(r2)
/* 8022E0CC 0022B02C  3C 80 80 57 */	lis r4, lbl_805723E0@ha
/* 8022E0D0 0022B030  C0 02 B6 04 */	lfs f0, lbl_805AD324@sda21(r2)
/* 8022E0D4 0022B034  3C 60 80 57 */	lis r3, lbl_805723F8@ha
/* 8022E0D8 0022B038  D4 24 23 E0 */	stfsu f1, lbl_805723E0@l(r4)
/* 8022E0DC 0022B03C  D4 03 23 F8 */	stfsu f0, lbl_805723F8@l(r3)
/* 8022E0E0 0022B040  D0 24 00 04 */	stfs f1, 4(r4)
/* 8022E0E4 0022B044  D0 24 00 08 */	stfs f1, 8(r4)
/* 8022E0E8 0022B048  D0 03 00 04 */	stfs f0, 4(r3)
/* 8022E0EC 0022B04C  D0 23 00 08 */	stfs f1, 8(r3)
/* 8022E0F0 0022B050  4E 80 00 20 */	blr

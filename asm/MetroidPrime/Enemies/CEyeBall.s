.include "macros.inc"

.section .data

.global lbl_803E7740
lbl_803E7740:
	# ROM: 0x3E4740
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_80224c84

.global lbl_803E774C
lbl_803E774C:
	# ROM: 0x3E474C
	.4byte 0
	.4byte 0
	.4byte __dt__8CEyeBallFv
	.4byte Accept__8CEyeBallFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__8CEyeBallFfR13CStateManager
	.4byte AcceptScriptMsg__8CEyeBallF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__8CEyeBallFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__8CEyeBallCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__8CEyeBallFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__8CEyeBallFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__13CPhysicsActorCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__8CEyeBallFRC9CVector3fR13CStateManager
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
	.4byte Active__8CEyeBallFR13CStateManager9EStateMsgf
	.4byte InActive__8CEyeBallFR13CStateManager9EStateMsgf
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
	.4byte Flinch__8CEyeBallFR13CStateManager9EStateMsgf
	.4byte Hurled__3CAiFR13CStateManager9EStateMsgf
	.4byte TelegraphAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__8CEyeBallFR13CStateManager9EStateMsgf
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
	.4byte ShouldAttack__8CEyeBallFR13CStateManagerf
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
	.4byte ShouldFire__8CEyeBallFR13CStateManagerf
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

.global F
lbl_803E7A18:
	# ROM: 0x3E4A18
	.4byte lbl_802253D8
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_802253EC
	.4byte lbl_80225428
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_80225478
	.4byte lbl_802252D8
	.4byte lbl_80225358

.section .sdata

.global lbl_805A80F8
lbl_805A80F8:
	# ROM: 0x3F5A98
	.4byte 0x803D3248
	.4byte 0

.section .sbss, "wa"

.global lbl_805A90D0
lbl_805A90D0:
	.skip 0x4
.global lbl_805A90D4
lbl_805A90D4:
	.skip 0x4

.section .text, "ax"

.global __dt__8CEyeBallFv
__dt__8CEyeBallFv:
/* 80224690 002215F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224694 002215F4  7C 08 02 A6 */	mflr r0
/* 80224698 002215F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022469C 002215FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802246A0 00221600  7C 9F 23 78 */	mr r31, r4
/* 802246A4 00221604  93 C1 00 08 */	stw r30, 8(r1)
/* 802246A8 00221608  7C 7E 1B 79 */	or. r30, r3, r3
/* 802246AC 0022160C  41 82 00 68 */	beq lbl_80224714
/* 802246B0 00221610  3C 60 80 3E */	lis r3, lbl_803E774C@ha
/* 802246B4 00221614  34 1E 05 B4 */	addic. r0, r30, 0x5b4
/* 802246B8 00221618  38 03 77 4C */	addi r0, r3, lbl_803E774C@l
/* 802246BC 0022161C  90 1E 00 00 */	stw r0, 0(r30)
/* 802246C0 00221620  41 82 00 20 */	beq lbl_802246E0
/* 802246C4 00221624  34 1E 05 B4 */	addic. r0, r30, 0x5b4
/* 802246C8 00221628  41 82 00 18 */	beq lbl_802246E0
/* 802246CC 0022162C  34 1E 05 B4 */	addic. r0, r30, 0x5b4
/* 802246D0 00221630  41 82 00 10 */	beq lbl_802246E0
/* 802246D4 00221634  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 802246D8 00221638  38 80 00 00 */	li r4, 0
/* 802246DC 0022163C  48 11 C7 65 */	bl __dt__6CTokenFv
lbl_802246E0:
/* 802246E0 00221640  34 1E 05 70 */	addic. r0, r30, 0x570
/* 802246E4 00221644  41 82 00 14 */	beq lbl_802246F8
/* 802246E8 00221648  34 1E 05 94 */	addic. r0, r30, 0x594
/* 802246EC 0022164C  41 82 00 0C */	beq lbl_802246F8
/* 802246F0 00221650  38 00 00 00 */	li r0, 0
/* 802246F4 00221654  98 1E 05 A0 */	stb r0, 0x5a0(r30)
lbl_802246F8:
/* 802246F8 00221658  7F C3 F3 78 */	mr r3, r30
/* 802246FC 0022165C  38 80 00 00 */	li r4, 0
/* 80224700 00221660  4B E5 2E 71 */	bl __dt__10CPatternedFv
/* 80224704 00221664  7F E0 07 35 */	extsh. r0, r31
/* 80224708 00221668  40 81 00 0C */	ble lbl_80224714
/* 8022470C 0022166C  7F C3 F3 78 */	mr r3, r30
/* 80224710 00221670  48 0F 12 21 */	bl Free__7CMemoryFPCv
lbl_80224714:
/* 80224714 00221674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224718 00221678  7F C3 F3 78 */	mr r3, r30
/* 8022471C 0022167C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224720 00221680  83 C1 00 08 */	lwz r30, 8(r1)
/* 80224724 00221684  7C 08 03 A6 */	mtlr r0
/* 80224728 00221688  38 21 00 10 */	addi r1, r1, 0x10
/* 8022472C 0022168C  4E 80 00 20 */	blr

.global Death__8CEyeBallFRC9CVector3fR13CStateManager
Death__8CEyeBallFRC9CVector3fR13CStateManager:
/* 80224730 00221690  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80224734 00221694  7C 08 02 A6 */	mflr r0
/* 80224738 00221698  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022473C 0022169C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80224740 002216A0  7C DF 33 78 */	mr r31, r6
/* 80224744 002216A4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80224748 002216A8  7C BE 2B 78 */	mr r30, r5
/* 8022474C 002216AC  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80224750 002216B0  7C 9D 23 78 */	mr r29, r4
/* 80224754 002216B4  93 81 00 40 */	stw r28, 0x40(r1)
/* 80224758 002216B8  7C 7C 1B 78 */	mr r28, r3
/* 8022475C 002216BC  38 61 00 08 */	addi r3, r1, 8
/* 80224760 002216C0  38 9C 00 34 */	addi r4, r28, 0x34
/* 80224764 002216C4  48 0E E4 11 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80224768 002216C8  7F 83 E3 78 */	mr r3, r28
/* 8022476C 002216CC  7F A4 EB 78 */	mr r4, r29
/* 80224770 002216D0  7F C5 F3 78 */	mr r5, r30
/* 80224774 002216D4  7F E6 FB 78 */	mr r6, r31
/* 80224778 002216D8  4B E5 6C 2D */	bl Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
/* 8022477C 002216DC  38 7C 00 34 */	addi r3, r28, 0x34
/* 80224780 002216E0  38 81 00 08 */	addi r4, r1, 8
/* 80224784 002216E4  48 0E E3 BD */	bl __as__12CTransform4fFRC12CTransform4f
/* 80224788 002216E8  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 8022478C 002216EC  38 60 00 01 */	li r3, 1
/* 80224790 002216F0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80224794 002216F4  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 80224798 002216F8  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 8022479C 002216FC  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 802247A0 00221700  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 802247A4 00221704  88 1C 00 E4 */	lbz r0, 0xe4(r28)
/* 802247A8 00221708  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 802247AC 0022170C  98 1C 00 E4 */	stb r0, 0xe4(r28)
/* 802247B0 00221710  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802247B4 00221714  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802247B8 00221718  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802247BC 0022171C  83 81 00 40 */	lwz r28, 0x40(r1)
/* 802247C0 00221720  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802247C4 00221724  7C 08 03 A6 */	mtlr r0
/* 802247C8 00221728  38 21 00 50 */	addi r1, r1, 0x50
/* 802247CC 0022172C  4E 80 00 20 */	blr

.global ResetBeamState__8CEyeballFR13CStateManager
ResetBeamState__8CEyeballFR13CStateManager:
/* 802247D0 00221730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802247D4 00221734  7C 08 02 A6 */	mflr r0
/* 802247D8 00221738  90 01 00 24 */	stw r0, 0x24(r1)
/* 802247DC 0022173C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802247E0 00221740  7C 9F 23 78 */	mr r31, r4
/* 802247E4 00221744  38 81 00 08 */	addi r4, r1, 8
/* 802247E8 00221748  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802247EC 0022174C  7C 7E 1B 78 */	mr r30, r3
/* 802247F0 00221750  A0 03 05 EC */	lhz r0, 0x5ec(r3)
/* 802247F4 00221754  7F E3 FB 78 */	mr r3, r31
/* 802247F8 00221758  B0 01 00 08 */	sth r0, 8(r1)
/* 802247FC 0022175C  4B E2 7D 79 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80224800 00221760  28 03 00 00 */	cmplwi r3, 0
/* 80224804 00221764  41 82 00 1C */	beq lbl_80224820
/* 80224808 00221768  81 83 00 00 */	lwz r12, 0(r3)
/* 8022480C 0022176C  7F E4 FB 78 */	mr r4, r31
/* 80224810 00221770  38 A0 00 01 */	li r5, 1
/* 80224814 00221774  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80224818 00221778  7D 89 03 A6 */	mtctr r12
/* 8022481C 0022177C  4E 80 04 21 */	bctrl
lbl_80224820:
/* 80224820 00221780  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80224824 00221784  38 60 00 00 */	li r3, 0
/* 80224828 00221788  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8022482C 0022178C  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 80224830 00221790  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80224834 00221794  28 00 00 00 */	cmplwi r0, 0
/* 80224838 00221798  41 82 00 1C */	beq lbl_80224854
/* 8022483C 0022179C  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80224840 002217A0  38 61 00 0C */	addi r3, r1, 0xc
/* 80224844 002217A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80224848 002217A8  48 0C 56 3D */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 8022484C 002217AC  38 00 00 00 */	li r0, 0
/* 80224850 002217B0  90 1E 06 08 */	stw r0, 0x608(r30)
lbl_80224854:
/* 80224854 002217B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80224858 002217B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022485C 002217BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80224860 002217C0  7C 08 03 A6 */	mtlr r0
/* 80224864 002217C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80224868 002217C8  4E 80 00 20 */	blr

.global FireBeam__8CEyeballFR13CStateManagerRC12CTransform4f
FireBeam__8CEyeballFR13CStateManagerRC12CTransform4f:
/* 8022486C 002217CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80224870 002217D0  7C 08 02 A6 */	mflr r0
/* 80224874 002217D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80224878 002217D8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8022487C 002217DC  7C 7F 1B 78 */	mr r31, r3
/* 80224880 002217E0  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80224884 002217E4  7C BE 2B 78 */	mr r30, r5
/* 80224888 002217E8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 8022488C 002217EC  7C 9D 23 78 */	mr r29, r4
/* 80224890 002217F0  38 81 00 08 */	addi r4, r1, 8
/* 80224894 002217F4  A0 03 05 EC */	lhz r0, 0x5ec(r3)
/* 80224898 002217F8  7F A3 EB 78 */	mr r3, r29
/* 8022489C 002217FC  B0 01 00 08 */	sth r0, 8(r1)
/* 802248A0 00221800  4B E2 7C D5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 802248A4 00221804  28 03 00 00 */	cmplwi r3, 0
/* 802248A8 00221808  41 82 01 00 */	beq lbl_802249A8
/* 802248AC 0022180C  88 03 00 30 */	lbz r0, 0x30(r3)
/* 802248B0 00221810  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802248B4 00221814  40 82 00 F4 */	bne lbl_802249A8
/* 802248B8 00221818  81 83 00 00 */	lwz r12, 0(r3)
/* 802248BC 0022181C  7F C4 F3 78 */	mr r4, r30
/* 802248C0 00221820  7F A5 EB 78 */	mr r5, r29
/* 802248C4 00221824  38 C0 00 00 */	li r6, 0
/* 802248C8 00221828  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 802248CC 0022182C  7D 89 03 A6 */	mtctr r12
/* 802248D0 00221830  4E 80 04 21 */	bctrl
/* 802248D4 00221834  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 802248D8 00221838  39 80 00 01 */	li r12, 1
/* 802248DC 0022183C  51 80 1F 38 */	rlwimi r0, r12, 3, 0x1c, 0x1c
/* 802248E0 00221840  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 802248E4 00221844  80 1F 06 08 */	lwz r0, 0x608(r31)
/* 802248E8 00221848  28 00 00 00 */	cmplwi r0, 0
/* 802248EC 0022184C  40 82 00 BC */	bne lbl_802249A8
/* 802248F0 00221850  81 1F 00 04 */	lwz r8, 4(r31)
/* 802248F4 00221854  39 60 00 00 */	li r11, 0
/* 802248F8 00221858  C0 A2 B4 70 */	lfs f5, lbl_805AD190@sda21(r2)
/* 802248FC 0022185C  39 40 00 7F */	li r10, 0x7f
/* 80224900 00221860  C0 82 B4 74 */	lfs f4, lbl_805AD194@sda21(r2)
/* 80224904 00221864  39 20 00 14 */	li r9, 0x14
/* 80224908 00221868  C0 62 B4 78 */	lfs f3, lbl_805AD198@sda21(r2)
/* 8022490C 0022186C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80224910 00221870  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 80224914 00221874  88 02 CC 41 */	lbz r0, lbl_805AE961@sda21(r2)
/* 80224918 00221878  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 8022491C 0022187C  38 61 00 0C */	addi r3, r1, 0xc
/* 80224920 00221880  C0 46 00 00 */	lfs f2, 0(r6)
/* 80224924 00221884  38 81 00 10 */	addi r4, r1, 0x10
/* 80224928 00221888  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 8022492C 0022188C  38 A0 00 01 */	li r5, 1
/* 80224930 00221890  C0 26 00 04 */	lfs f1, 4(r6)
/* 80224934 00221894  38 E0 00 01 */	li r7, 1
/* 80224938 00221898  C0 06 00 08 */	lfs f0, 8(r6)
/* 8022493C 0022189C  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80224940 002218A0  A8 C2 C5 FA */	lha r6, lbl_805AE31A@sda21(r2)
/* 80224944 002218A4  D0 A1 00 1C */	stfs f5, 0x1c(r1)
/* 80224948 002218A8  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 8022494C 002218AC  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80224950 002218B0  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 80224954 002218B4  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80224958 002218B8  91 81 00 30 */	stw r12, 0x30(r1)
/* 8022495C 002218BC  B1 61 00 34 */	sth r11, 0x34(r1)
/* 80224960 002218C0  99 41 00 36 */	stb r10, 0x36(r1)
/* 80224964 002218C4  99 21 00 37 */	stb r9, 0x37(r1)
/* 80224968 002218C8  99 61 00 38 */	stb r11, 0x38(r1)
/* 8022496C 002218CC  98 01 00 39 */	stb r0, 0x39(r1)
/* 80224970 002218D0  C0 BF 00 60 */	lfs f5, 0x60(r31)
/* 80224974 002218D4  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80224978 002218D8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 8022497C 002218DC  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80224980 002218E0  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80224984 002218E4  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80224988 002218E8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8022498C 002218EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80224990 002218F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80224994 002218F4  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 80224998 002218F8  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8022499C 002218FC  48 0C 56 45 */	bl AddEmitter__11CSfxManagerFRQ29CAudioSys18C3DEmitterParmDatabsbi
/* 802249A0 00221900  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802249A4 00221904  90 1F 06 08 */	stw r0, 0x608(r31)
lbl_802249A8:
/* 802249A8 00221908  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802249AC 0022190C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802249B0 00221910  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802249B4 00221914  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802249B8 00221918  7C 08 03 A6 */	mtlr r0
/* 802249BC 0022191C  38 21 00 50 */	addi r1, r1, 0x50
/* 802249C0 00221920  4E 80 00 20 */	blr

.global Touch__8CEyeBallFR6CActorR13CStateManager
Touch__8CEyeBallFR6CActorR13CStateManager:
/* 802249C4 00221924  4E 80 00 20 */	blr

.global UpdateAnimation__8CEyeballFv
UpdateAnimation__8CEyeballFv:
/* 802249C8 00221928  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802249CC 0022192C  7C 08 02 A6 */	mflr r0
/* 802249D0 00221930  3C 80 80 3D */	lis r4, lbl_803D3248@ha
/* 802249D4 00221934  90 01 00 44 */	stw r0, 0x44(r1)
/* 802249D8 00221938  38 84 32 48 */	addi r4, r4, lbl_803D3248@l
/* 802249DC 0022193C  38 84 00 0B */	addi r4, r4, 0xb
/* 802249E0 00221940  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802249E4 00221944  7C 7F 1B 78 */	mr r31, r3
/* 802249E8 00221948  38 61 00 08 */	addi r3, r1, 8
/* 802249EC 0022194C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802249F0 00221950  4B DE 02 C9 */	bl string_l__4rstlFPCc
/* 802249F4 00221954  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802249F8 00221958  38 81 00 08 */	addi r4, r1, 8
/* 802249FC 0022195C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80224A00 00221960  4B E0 7A 6D */	bl "GetAnimTimeRemaining__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80224A04 00221964  C0 42 B4 70 */	lfs f2, lbl_805AD190@sda21(r2)
/* 80224A08 00221968  C8 02 B4 80 */	lfd f0, lbl_805AD1A0@sda21(r2)
/* 80224A0C 0022196C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80224A10 00221970  FC 20 0A 10 */	fabs f1, f1
/* 80224A14 00221974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80224A18 00221978  7C 00 00 26 */	mfcr r0
/* 80224A1C 0022197C  38 61 00 08 */	addi r3, r1, 8
/* 80224A20 00221980  54 1E 0F FE */	srwi r30, r0, 0x1f
/* 80224A24 00221984  48 11 90 BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80224A28 00221988  28 1E 00 00 */	cmplwi r30, 0
/* 80224A2C 0022198C  41 82 01 14 */	beq lbl_80224B40
/* 80224A30 00221990  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80224A34 00221994  38 A0 00 00 */	li r5, 0
/* 80224A38 00221998  38 63 00 01 */	addi r3, r3, 1
/* 80224A3C 0022199C  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80224A40 002219A0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80224A44 002219A4  7C 03 00 50 */	subf r0, r3, r0
/* 80224A48 002219A8  54 00 10 3E */	rotlwi r0, r0, 2
/* 80224A4C 002219AC  7C 00 1A 14 */	add r0, r0, r3
/* 80224A50 002219B0  90 1F 05 F0 */	stw r0, 0x5f0(r31)
/* 80224A54 002219B4  48 00 00 24 */	b lbl_80224A78
lbl_80224A58:
/* 80224A58 002219B8  38 64 00 01 */	addi r3, r4, 1
/* 80224A5C 002219BC  38 A5 00 01 */	addi r5, r5, 1
/* 80224A60 002219C0  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80224A64 002219C4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80224A68 002219C8  7C 03 00 50 */	subf r0, r3, r0
/* 80224A6C 002219CC  54 00 10 3E */	rotlwi r0, r0, 2
/* 80224A70 002219D0  7C 00 1A 14 */	add r0, r0, r3
/* 80224A74 002219D4  90 1F 05 F0 */	stw r0, 0x5f0(r31)
lbl_80224A78:
/* 80224A78 002219D8  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80224A7C 002219DC  54 83 10 3A */	slwi r3, r4, 2
/* 80224A80 002219E0  38 03 05 F4 */	addi r0, r3, 0x5f4
/* 80224A84 002219E4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80224A88 002219E8  2C 00 FF FF */	cmpwi r0, -1
/* 80224A8C 002219EC  40 82 00 0C */	bne lbl_80224A98
/* 80224A90 002219F0  2C 05 00 04 */	cmpwi r5, 4
/* 80224A94 002219F4  41 80 FF C4 */	blt lbl_80224A58
lbl_80224A98:
/* 80224A98 002219F8  54 80 10 3A */	slwi r0, r4, 2
/* 80224A9C 002219FC  7C 7F 02 14 */	add r3, r31, r0
/* 80224AA0 00221A00  81 23 05 F4 */	lwz r9, 0x5f4(r3)
/* 80224AA4 00221A04  2C 09 FF FF */	cmpwi r9, -1
/* 80224AA8 00221A08  41 82 00 98 */	beq lbl_80224B40
/* 80224AAC 00221A0C  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 80224AB0 00221A10  88 61 00 24 */	lbz r3, 0x24(r1)
/* 80224AB4 00221A14  38 80 00 00 */	li r4, 0
/* 80224AB8 00221A18  81 1F 04 50 */	lwz r8, 0x450(r31)
/* 80224ABC 00221A1C  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 80224AC0 00221A20  38 E5 AA 68 */	addi r7, r5, lbl_803DAA68@l
/* 80224AC4 00221A24  C0 02 B4 70 */	lfs f0, lbl_805AD190@sda21(r2)
/* 80224AC8 00221A28  3C A0 80 3E */	lis r5, lbl_803DFE40@ha
/* 80224ACC 00221A2C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80224AD0 00221A30  38 C0 00 13 */	li r6, 0x13
/* 80224AD4 00221A34  3B C8 00 04 */	addi r30, r8, 4
/* 80224AD8 00221A38  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80224ADC 00221A3C  38 A5 FE 40 */	addi r5, r5, lbl_803DFE40@l
/* 80224AE0 00221A40  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80224AE4 00221A44  98 61 00 24 */	stb r3, 0x24(r1)
/* 80224AE8 00221A48  7F C3 F3 78 */	mr r3, r30
/* 80224AEC 00221A4C  38 80 00 13 */	li r4, 0x13
/* 80224AF0 00221A50  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80224AF4 00221A54  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80224AF8 00221A58  91 21 00 20 */	stw r9, 0x20(r1)
/* 80224AFC 00221A5C  98 01 00 24 */	stb r0, 0x24(r1)
/* 80224B00 00221A60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80224B04 00221A64  4B F0 C9 35 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80224B08 00221A68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80224B0C 00221A6C  3C 60 80 3E */	lis r3, lbl_803DFE40@ha
/* 80224B10 00221A70  38 83 FE 40 */	addi r4, r3, lbl_803DFE40@l
/* 80224B14 00221A74  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80224B18 00221A78  90 1E 02 20 */	stw r0, 0x220(r30)
/* 80224B1C 00221A7C  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80224B20 00221A80  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 80224B24 00221A84  88 61 00 24 */	lbz r3, 0x24(r1)
/* 80224B28 00221A88  90 BE 02 24 */	stw r5, 0x224(r30)
/* 80224B2C 00221A8C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80224B30 00221A90  98 7E 02 28 */	stb r3, 0x228(r30)
/* 80224B34 00221A94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80224B38 00221A98  D0 1E 02 2C */	stfs f0, 0x22c(r30)
/* 80224B3C 00221A9C  90 01 00 18 */	stw r0, 0x18(r1)
lbl_80224B40:
/* 80224B40 00221AA0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80224B44 00221AA4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80224B48 00221AA8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80224B4C 00221AAC  7C 08 03 A6 */	mtlr r0
/* 80224B50 00221AB0  38 21 00 40 */	addi r1, r1, 0x40
/* 80224B54 00221AB4  4E 80 00 20 */	blr

.global ShouldAttack__8CEyeBallFR13CStateManagerf
ShouldAttack__8CEyeBallFR13CStateManagerf:
/* 80224B58 00221AB8  88 03 06 0C */	lbz r0, 0x60c(r3)
/* 80224B5C 00221ABC  54 03 DF FE */	rlwinm r3, r0, 0x1b, 0x1f, 0x1f
/* 80224B60 00221AC0  4E 80 00 20 */	blr

.global ShouldFire__8CEyeBallFR13CStateManagerf
ShouldFire__8CEyeBallFR13CStateManagerf:
/* 80224B64 00221AC4  88 03 06 0C */	lbz r0, 0x60c(r3)
/* 80224B68 00221AC8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80224B6C 00221ACC  7C 00 00 34 */	cntlzw r0, r0
/* 80224B70 00221AD0  54 03 D9 7E */	srwi r3, r0, 5
/* 80224B74 00221AD4  4E 80 00 20 */	blr

.global Cover__8CEyeBallFR13CStateManager9EStateMsgf
Cover__8CEyeBallFR13CStateManager9EStateMsgf:
/* 80224B78 00221AD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224B7C 00221ADC  7C 08 02 A6 */	mflr r0
/* 80224B80 00221AE0  2C 05 00 00 */	cmpwi r5, 0
/* 80224B84 00221AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224B88 00221AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224B8C 00221AEC  7C 7F 1B 78 */	mr r31, r3
/* 80224B90 00221AF0  41 82 00 0C */	beq lbl_80224B9C
/* 80224B94 00221AF4  41 80 00 2C */	blt lbl_80224BC0
/* 80224B98 00221AF8  48 00 00 28 */	b lbl_80224BC0
lbl_80224B9C:
/* 80224B9C 00221AFC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80224BA0 00221B00  38 80 00 02 */	li r4, 2
/* 80224BA4 00221B04  4B F1 5E 35 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 80224BA8 00221B08  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80224BAC 00221B0C  38 60 00 00 */	li r3, 0
/* 80224BB0 00221B10  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80224BB4 00221B14  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 80224BB8 00221B18  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 80224BBC 00221B1C  D0 1F 03 40 */	stfs f0, 0x340(r31)
lbl_80224BC0:
/* 80224BC0 00221B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224BC4 00221B24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224BC8 00221B28  7C 08 03 A6 */	mtlr r0
/* 80224BCC 00221B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80224BD0 00221B30  4E 80 00 20 */	blr

.global Flinch__8CEyeBallFR13CStateManager9EStateMsgf
Flinch__8CEyeBallFR13CStateManager9EStateMsgf:
/* 80224BD4 00221B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80224BD8 00221B38  7C 08 02 A6 */	mflr r0
/* 80224BDC 00221B3C  2C 05 00 01 */	cmpwi r5, 1
/* 80224BE0 00221B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80224BE4 00221B44  41 82 00 34 */	beq lbl_80224C18
/* 80224BE8 00221B48  40 80 00 10 */	bge lbl_80224BF8
/* 80224BEC 00221B4C  2C 05 00 00 */	cmpwi r5, 0
/* 80224BF0 00221B50  40 80 00 14 */	bge lbl_80224C04
/* 80224BF4 00221B54  48 00 00 60 */	b lbl_80224C54
lbl_80224BF8:
/* 80224BF8 00221B58  2C 05 00 03 */	cmpwi r5, 3
/* 80224BFC 00221B5C  40 80 00 58 */	bge lbl_80224C54
/* 80224C00 00221B60  48 00 00 4C */	b lbl_80224C4C
lbl_80224C04:
/* 80224C04 00221B64  38 00 00 01 */	li r0, 1
/* 80224C08 00221B68  90 03 03 2C */	stw r0, 0x32c(r3)
/* 80224C0C 00221B6C  C0 03 05 68 */	lfs f0, 0x568(r3)
/* 80224C10 00221B70  D0 03 03 40 */	stfs f0, 0x340(r3)
/* 80224C14 00221B74  48 00 00 40 */	b lbl_80224C54
lbl_80224C18:
/* 80224C18 00221B78  3C A0 80 3E */	lis r5, lbl_803E7740@ha
/* 80224C1C 00221B7C  38 C1 00 08 */	addi r6, r1, 8
/* 80224C20 00221B80  39 45 77 40 */	addi r10, r5, lbl_803E7740@l
/* 80224C24 00221B84  38 A0 00 06 */	li r5, 6
/* 80224C28 00221B88  81 2A 00 00 */	lwz r9, 0(r10)
/* 80224C2C 00221B8C  38 E0 00 00 */	li r7, 0
/* 80224C30 00221B90  81 0A 00 04 */	lwz r8, 4(r10)
/* 80224C34 00221B94  80 0A 00 08 */	lwz r0, 8(r10)
/* 80224C38 00221B98  91 21 00 08 */	stw r9, 8(r1)
/* 80224C3C 00221B9C  91 01 00 0C */	stw r8, 0xc(r1)
/* 80224C40 00221BA0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80224C44 00221BA4  4B E5 7B 71 */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 80224C48 00221BA8  48 00 00 0C */	b lbl_80224C54
lbl_80224C4C:
/* 80224C4C 00221BAC  38 00 00 00 */	li r0, 0
/* 80224C50 00221BB0  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_80224C54:
/* 80224C54 00221BB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80224C58 00221BB8  7C 08 03 A6 */	mtlr r0
/* 80224C5C 00221BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80224C60 00221BC0  4E 80 00 20 */	blr

.global Render__8CEyeBallCFRC13CStateManager
Render__8CEyeBallCFRC13CStateManager:
/* 80224C64 00221BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224C68 00221BC8  7C 08 02 A6 */	mflr r0
/* 80224C6C 00221BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224C70 00221BD0  4B E5 33 BD */	bl Render__10CPatternedCFRC13CStateManager
/* 80224C74 00221BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224C78 00221BD8  7C 08 03 A6 */	mtlr r0
/* 80224C7C 00221BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80224C80 00221BE0  4E 80 00 20 */	blr

.global sub_80224c84
sub_80224c84:
/* 80224C84 00221BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80224C88 00221BE8  7C 08 02 A6 */	mflr r0
/* 80224C8C 00221BEC  3C 80 80 3E */	lis r4, lbl_803DAA68@ha
/* 80224C90 00221BF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80224C94 00221BF4  38 04 AA 68 */	addi r0, r4, lbl_803DAA68@l
/* 80224C98 00221BF8  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 80224C9C 00221BFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80224CA0 00221C00  80 C3 04 50 */	lwz r6, 0x450(r3)
/* 80224CA4 00221C04  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 80224CA8 00221C08  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80224CAC 00221C0C  3B E6 00 04 */	addi r31, r6, 4
/* 80224CB0 00221C10  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80224CB4 00221C14  38 60 00 04 */	li r3, 4
/* 80224CB8 00221C18  90 01 00 08 */	stw r0, 8(r1)
/* 80224CBC 00221C1C  38 04 AA 44 */	addi r0, r4, lbl_803DAA44@l
/* 80224CC0 00221C20  38 80 00 04 */	li r4, 4
/* 80224CC4 00221C24  90 61 00 0C */	stw r3, 0xc(r1)
/* 80224CC8 00221C28  7F E3 FB 78 */	mr r3, r31
/* 80224CCC 00221C2C  90 01 00 08 */	stw r0, 8(r1)
/* 80224CD0 00221C30  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80224CD4 00221C34  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80224CD8 00221C38  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80224CDC 00221C3C  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 80224CE0 00221C40  4B F0 C7 59 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80224CE4 00221C44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80224CE8 00221C48  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 80224CEC 00221C4C  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 80224CF0 00221C50  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 80224CF4 00221C54  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 80224CF8 00221C58  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 80224CFC 00221C5C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80224D00 00221C60  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80224D04 00221C64  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 80224D08 00221C68  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80224D0C 00221C6C  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80224D10 00221C70  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80224D14 00221C74  90 BF 01 04 */	stw r5, 0x104(r31)
/* 80224D18 00221C78  90 81 00 08 */	stw r4, 8(r1)
/* 80224D1C 00221C7C  90 7F 01 08 */	stw r3, 0x108(r31)
/* 80224D20 00221C80  90 01 00 08 */	stw r0, 8(r1)
/* 80224D24 00221C84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80224D28 00221C88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80224D2C 00221C8C  7C 08 03 A6 */	mtlr r0
/* 80224D30 00221C90  38 21 00 30 */	addi r1, r1, 0x30
/* 80224D34 00221C94  4E 80 00 20 */	blr

.global Think__8CEyeBallFfR13CStateManager
Think__8CEyeBallFfR13CStateManager:
/* 80224D38 00221C98  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80224D3C 00221C9C  7C 08 02 A6 */	mflr r0
/* 80224D40 00221CA0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80224D44 00221CA4  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80224D48 00221CA8  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 80224D4C 00221CAC  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 80224D50 00221CB0  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80224D54 00221CB4  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 80224D58 00221CB8  FF E0 08 90 */	fmr f31, f1
/* 80224D5C 00221CBC  7C 7E 1B 78 */	mr r30, r3
/* 80224D60 00221CC0  7C 9F 23 78 */	mr r31, r4
/* 80224D64 00221CC4  4B E5 4D B5 */	bl Think__10CPatternedFfR13CStateManager
/* 80224D68 00221CC8  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80224D6C 00221CCC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80224D70 00221CD0  41 82 02 74 */	beq lbl_80224FE4
/* 80224D74 00221CD4  88 0D A5 14 */	lbz r0, lbl_805A90D4@sda21(r13)
/* 80224D78 00221CD8  83 BF 08 4C */	lwz r29, 0x84c(r31)
/* 80224D7C 00221CDC  7C 00 07 75 */	extsb. r0, r0
/* 80224D80 00221CE0  40 82 00 18 */	bne lbl_80224D98
/* 80224D84 00221CE4  C0 22 B4 88 */	lfs f1, lbl_805AD1A8@sda21(r2)
/* 80224D88 00221CE8  48 0E FF BD */	bl FastCosR__5CMathFf
/* 80224D8C 00221CEC  38 00 00 01 */	li r0, 1
/* 80224D90 00221CF0  D0 2D A5 10 */	stfs f1, lbl_805A90D0@sda21(r13)
/* 80224D94 00221CF4  98 0D A5 14 */	stb r0, lbl_805A90D4@sda21(r13)
lbl_80224D98:
/* 80224D98 00221CF8  C0 BD 00 60 */	lfs f5, 0x60(r29)
/* 80224D9C 00221CFC  38 61 00 54 */	addi r3, r1, 0x54
/* 80224DA0 00221D00  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80224DA4 00221D04  38 81 00 48 */	addi r4, r1, 0x48
/* 80224DA8 00221D08  C0 9D 00 50 */	lfs f4, 0x50(r29)
/* 80224DAC 00221D0C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80224DB0 00221D10  EC 25 00 28 */	fsubs f1, f5, f0
/* 80224DB4 00221D14  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80224DB8 00221D18  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80224DBC 00221D1C  EC 44 10 28 */	fsubs f2, f4, f2
/* 80224DC0 00221D20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80224DC4 00221D24  EC 00 18 28 */	fsubs f0, f0, f3
/* 80224DC8 00221D28  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 80224DCC 00221D2C  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 80224DD0 00221D30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80224DD4 00221D34  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80224DD8 00221D38  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80224DDC 00221D3C  48 0E FA 75 */	bl AsNormalized__9CVector3fCFv
/* 80224DE0 00221D40  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80224DE4 00221D44  38 60 00 00 */	li r3, 0
/* 80224DE8 00221D48  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80224DEC 00221D4C  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80224DF0 00221D50  EC 03 00 32 */	fmuls f0, f3, f0
/* 80224DF4 00221D54  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80224DF8 00221D58  C0 9E 00 58 */	lfs f4, 0x58(r30)
/* 80224DFC 00221D5C  80 1D 02 F8 */	lwz r0, 0x2f8(r29)
/* 80224E00 00221D60  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 80224E04 00221D64  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80224E08 00221D68  2C 00 00 01 */	cmpwi r0, 1
/* 80224E0C 00221D6C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80224E10 00221D70  EC 24 00 7A */	fmadds f1, f4, f1, f0
/* 80224E14 00221D74  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80224E18 00221D78  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 80224E1C 00221D7C  40 82 00 14 */	bne lbl_80224E30
/* 80224E20 00221D80  C0 0D A5 10 */	lfs f0, lbl_805A90D0@sda21(r13)
/* 80224E24 00221D84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80224E28 00221D88  40 81 00 08 */	ble lbl_80224E30
/* 80224E2C 00221D8C  38 60 00 01 */	li r3, 1
lbl_80224E30:
/* 80224E30 00221D90  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80224E34 00221D94  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80224E38 00221D98  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 80224E3C 00221D9C  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80224E40 00221DA0  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80224E44 00221DA4  41 82 00 B4 */	beq lbl_80224EF8
/* 80224E48 00221DA8  38 7E 05 70 */	addi r3, r30, 0x570
/* 80224E4C 00221DAC  38 80 00 01 */	li r4, 1
/* 80224E50 00221DB0  4B F5 03 D5 */	bl SetActive__13CBoneTrackingFb
/* 80224E54 00221DB4  C0 A2 B4 8C */	lfs f5, lbl_805AD1AC@sda21(r2)
/* 80224E58 00221DB8  38 7E 05 70 */	addi r3, r30, 0x570
/* 80224E5C 00221DBC  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80224E60 00221DC0  38 9E 05 A8 */	addi r4, r30, 0x5a8
/* 80224E64 00221DC4  C0 7D 01 3C */	lfs f3, 0x13c(r29)
/* 80224E68 00221DC8  EC 05 00 32 */	fmuls f0, f5, f0
/* 80224E6C 00221DCC  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80224E70 00221DD0  C0 5D 01 40 */	lfs f2, 0x140(r29)
/* 80224E74 00221DD4  EC 85 00 F2 */	fmuls f4, f5, f3
/* 80224E78 00221DD8  C0 DD 00 50 */	lfs f6, 0x50(r29)
/* 80224E7C 00221DDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80224E80 00221DE0  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80224E84 00221DE4  EC 25 00 B2 */	fmuls f1, f5, f2
/* 80224E88 00221DE8  EC 46 20 28 */	fsubs f2, f6, f4
/* 80224E8C 00221DEC  D0 1E 05 A8 */	stfs f0, 0x5a8(r30)
/* 80224E90 00221DF0  EC 03 08 28 */	fsubs f0, f3, f1
/* 80224E94 00221DF4  D0 5E 05 AC */	stfs f2, 0x5ac(r30)
/* 80224E98 00221DF8  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 80224E9C 00221DFC  4B F5 03 1D */	bl SetTargetPosition__13CBoneTrackingFRC9CVector3f
/* 80224EA0 00221E00  FC 20 F8 90 */	fmr f1, f31
/* 80224EA4 00221E04  38 7E 05 70 */	addi r3, r30, 0x570
/* 80224EA8 00221E08  4B F5 0B 01 */	bl Update__13CBoneTrackingFf
/* 80224EAC 00221E0C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 80224EB0 00221E10  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80224EB4 00221E14  4B E0 7B 51 */	bl PreRender__9CAnimDataFv
/* 80224EB8 00221E18  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80224EBC 00221E1C  7F E4 FB 78 */	mr r4, r31
/* 80224EC0 00221E20  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 80224EC4 00221E24  38 7E 05 70 */	addi r3, r30, 0x570
/* 80224EC8 00221E28  C0 05 00 00 */	lfs f0, 0(r5)
/* 80224ECC 00221E2C  38 DE 00 34 */	addi r6, r30, 0x34
/* 80224ED0 00221E30  38 E1 00 24 */	addi r7, r1, 0x24
/* 80224ED4 00221E34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80224ED8 00221E38  C0 05 00 04 */	lfs f0, 4(r5)
/* 80224EDC 00221E3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80224EE0 00221E40  C0 05 00 08 */	lfs f0, 8(r5)
/* 80224EE4 00221E44  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80224EE8 00221E48  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 80224EEC 00221E4C  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80224EF0 00221E50  4B F5 0A 21 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 80224EF4 00221E54  48 00 00 10 */	b lbl_80224F04
lbl_80224EF8:
/* 80224EF8 00221E58  38 7E 05 70 */	addi r3, r30, 0x570
/* 80224EFC 00221E5C  38 80 00 00 */	li r4, 0
/* 80224F00 00221E60  4B F5 03 25 */	bl SetActive__13CBoneTrackingFb
lbl_80224F04:
/* 80224F04 00221E64  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 80224F08 00221E68  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80224F0C 00221E6C  41 82 00 7C */	beq lbl_80224F88
/* 80224F10 00221E70  A0 1E 05 EC */	lhz r0, 0x5ec(r30)
/* 80224F14 00221E74  7F E3 FB 78 */	mr r3, r31
/* 80224F18 00221E78  38 81 00 08 */	addi r4, r1, 8
/* 80224F1C 00221E7C  B0 01 00 08 */	sth r0, 8(r1)
/* 80224F20 00221E80  4B E2 76 55 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80224F24 00221E84  7C 7D 1B 79 */	or. r29, r3, r3
/* 80224F28 00221E88  41 82 00 60 */	beq lbl_80224F88
/* 80224F2C 00221E8C  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 80224F30 00221E90  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80224F34 00221E94  41 82 00 54 */	beq lbl_80224F88
/* 80224F38 00221E98  80 8D 95 38 */	lwz r4, lbl_805A80F8@sda21(r13)
/* 80224F3C 00221E9C  38 61 00 14 */	addi r3, r1, 0x14
/* 80224F40 00221EA0  4B DD FD 79 */	bl string_l__4rstlFPCc
/* 80224F44 00221EA4  7F C4 F3 78 */	mr r4, r30
/* 80224F48 00221EA8  38 61 00 60 */	addi r3, r1, 0x60
/* 80224F4C 00221EAC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80224F50 00221EB0  4B E5 3A 29 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80224F54 00221EB4  38 61 00 90 */	addi r3, r1, 0x90
/* 80224F58 00221EB8  38 81 00 60 */	addi r4, r1, 0x60
/* 80224F5C 00221EBC  48 0E DC 19 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80224F60 00221EC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80224F64 00221EC4  48 11 8B 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80224F68 00221EC8  7F A3 EB 78 */	mr r3, r29
/* 80224F6C 00221ECC  FC 20 F8 90 */	fmr f1, f31
/* 80224F70 00221ED0  81 9D 00 00 */	lwz r12, 0(r29)
/* 80224F74 00221ED4  7F E5 FB 78 */	mr r5, r31
/* 80224F78 00221ED8  38 81 00 90 */	addi r4, r1, 0x90
/* 80224F7C 00221EDC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80224F80 00221EE0  7D 89 03 A6 */	mtctr r12
/* 80224F84 00221EE4  4E 80 04 21 */	bctrl
lbl_80224F88:
/* 80224F88 00221EE8  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80224F8C 00221EEC  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80224F90 00221EF0  41 82 00 54 */	beq lbl_80224FE4
/* 80224F94 00221EF4  80 BE 00 04 */	lwz r5, 4(r30)
/* 80224F98 00221EF8  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 80224F9C 00221EFC  54 A3 18 38 */	slwi r3, r5, 3
/* 80224FA0 00221F00  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80224FA4 00221F04  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80224FA8 00221F08  38 03 00 04 */	addi r0, r3, 4
/* 80224FAC 00221F0C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80224FB0 00221F10  7C 64 00 2E */	lwzx r3, r4, r0
/* 80224FB4 00221F14  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 80224FB8 00221F18  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80224FBC 00221F1C  41 82 00 10 */	beq lbl_80224FCC
/* 80224FC0 00221F20  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80224FC4 00221F24  80 03 10 DC */	lwz r0, 0x10dc(r3)
/* 80224FC8 00221F28  48 00 00 08 */	b lbl_80224FD0
lbl_80224FCC:
/* 80224FCC 00221F2C  38 00 00 00 */	li r0, 0
lbl_80224FD0:
/* 80224FD0 00221F30  2C 00 00 01 */	cmpwi r0, 1
/* 80224FD4 00221F34  41 82 00 10 */	beq lbl_80224FE4
/* 80224FD8 00221F38  7F C3 F3 78 */	mr r3, r30
/* 80224FDC 00221F3C  7F E4 FB 78 */	mr r4, r31
/* 80224FE0 00221F40  4B FF F7 F1 */	bl ResetBeamState__8CEyeballFR13CStateManager
lbl_80224FE4:
/* 80224FE4 00221F44  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 80224FE8 00221F48  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80224FEC 00221F4C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80224FF0 00221F50  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80224FF4 00221F54  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 80224FF8 00221F58  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 80224FFC 00221F5C  7C 08 03 A6 */	mtlr r0
/* 80225000 00221F60  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80225004 00221F64  4E 80 00 20 */	blr

.global PreRender__8CEyeBallFR13CStateManagerRC14CFrustumPlanes
PreRender__8CEyeBallFR13CStateManagerRC14CFrustumPlanes:
/* 80225008 00221F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022500C 00221F6C  7C 08 02 A6 */	mflr r0
/* 80225010 00221F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80225014 00221F74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80225018 00221F78  7C 9F 23 78 */	mr r31, r4
/* 8022501C 00221F7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80225020 00221F80  7C 7E 1B 78 */	mr r30, r3
/* 80225024 00221F84  4B E5 32 B9 */	bl PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
/* 80225028 00221F88  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8022502C 00221F8C  7F E4 FB 78 */	mr r4, r31
/* 80225030 00221F90  81 1E 04 50 */	lwz r8, 0x450(r30)
/* 80225034 00221F94  38 7E 05 70 */	addi r3, r30, 0x570
/* 80225038 00221F98  C0 05 00 00 */	lfs f0, 0(r5)
/* 8022503C 00221F9C  38 DE 00 34 */	addi r6, r30, 0x34
/* 80225040 00221FA0  38 E1 00 08 */	addi r7, r1, 8
/* 80225044 00221FA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80225048 00221FA8  C0 05 00 04 */	lfs f0, 4(r5)
/* 8022504C 00221FAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80225050 00221FB0  C0 05 00 08 */	lfs f0, 8(r5)
/* 80225054 00221FB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80225058 00221FB8  80 BE 00 64 */	lwz r5, 0x64(r30)
/* 8022505C 00221FBC  80 A5 00 10 */	lwz r5, 0x10(r5)
/* 80225060 00221FC0  4B F5 08 B1 */	bl PreRender__13CBoneTrackingFRC13CStateManagerR9CAnimDataRC12CTransform4fRC9CVector3fRC15CBodyController
/* 80225064 00221FC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80225068 00221FC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022506C 00221FCC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80225070 00221FD0  7C 08 03 A6 */	mtlr r0
/* 80225074 00221FD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80225078 00221FD8  4E 80 00 20 */	blr

.global Active__8CEyeBallFR13CStateManager9EStateMsgf
Active__8CEyeBallFR13CStateManager9EStateMsgf:
/* 8022507C 00221FDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80225080 00221FE0  7C 08 02 A6 */	mflr r0
/* 80225084 00221FE4  2C 05 00 01 */	cmpwi r5, 1
/* 80225088 00221FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022508C 00221FEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80225090 00221FF0  7C 9F 23 78 */	mr r31, r4
/* 80225094 00221FF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80225098 00221FF8  7C 7E 1B 78 */	mr r30, r3
/* 8022509C 00221FFC  41 82 00 50 */	beq lbl_802250EC
/* 802250A0 00222000  40 80 00 10 */	bge lbl_802250B0
/* 802250A4 00222004  2C 05 00 00 */	cmpwi r5, 0
/* 802250A8 00222008  40 80 00 14 */	bge lbl_802250BC
/* 802250AC 0022200C  48 00 00 D0 */	b lbl_8022517C
lbl_802250B0:
/* 802250B0 00222010  2C 05 00 03 */	cmpwi r5, 3
/* 802250B4 00222014  40 80 00 C8 */	bge lbl_8022517C
/* 802250B8 00222018  48 00 00 60 */	b lbl_80225118
lbl_802250BC:
/* 802250BC 0022201C  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 802250C0 00222020  38 60 00 00 */	li r3, 0
/* 802250C4 00222024  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802250C8 00222028  38 80 00 03 */	li r4, 3
/* 802250CC 0022202C  98 1E 04 00 */	stb r0, 0x400(r30)
/* 802250D0 00222030  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 802250D4 00222034  4B F1 59 05 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802250D8 00222038  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 802250DC 0022203C  38 60 00 00 */	li r3, 0
/* 802250E0 00222040  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802250E4 00222044  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 802250E8 00222048  48 00 00 94 */	b lbl_8022517C
lbl_802250EC:
/* 802250EC 0022204C  C0 5E 03 38 */	lfs f2, 0x338(r30)
/* 802250F0 00222050  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 802250F4 00222054  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802250F8 00222058  40 81 00 14 */	ble lbl_8022510C
/* 802250FC 0022205C  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80225100 00222060  38 60 00 01 */	li r3, 1
/* 80225104 00222064  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80225108 00222068  98 1E 06 0C */	stb r0, 0x60c(r30)
lbl_8022510C:
/* 8022510C 0022206C  7F C3 F3 78 */	mr r3, r30
/* 80225110 00222070  4B FF F8 B9 */	bl UpdateAnimation__8CEyeballFv
/* 80225114 00222074  48 00 00 68 */	b lbl_8022517C
lbl_80225118:
/* 80225118 00222078  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 8022511C 0022207C  7F E3 FB 78 */	mr r3, r31
/* 80225120 00222080  38 81 00 08 */	addi r4, r1, 8
/* 80225124 00222084  D0 1E 03 40 */	stfs f0, 0x340(r30)
/* 80225128 00222088  A0 1E 05 EC */	lhz r0, 0x5ec(r30)
/* 8022512C 0022208C  B0 01 00 08 */	sth r0, 8(r1)
/* 80225130 00222090  4B E2 74 45 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 80225134 00222094  28 03 00 00 */	cmplwi r3, 0
/* 80225138 00222098  41 82 00 1C */	beq lbl_80225154
/* 8022513C 0022209C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225140 002220A0  7F E4 FB 78 */	mr r4, r31
/* 80225144 002220A4  38 A0 00 01 */	li r5, 1
/* 80225148 002220A8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8022514C 002220AC  7D 89 03 A6 */	mtctr r12
/* 80225150 002220B0  4E 80 04 21 */	bctrl
lbl_80225154:
/* 80225154 002220B4  88 1E 06 0C */	lbz r0, 0x60c(r30)
/* 80225158 002220B8  38 60 00 00 */	li r3, 0
/* 8022515C 002220BC  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80225160 002220C0  38 61 00 0C */	addi r3, r1, 0xc
/* 80225164 002220C4  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 80225168 002220C8  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 8022516C 002220CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80225170 002220D0  48 0C 4D 15 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80225174 002220D4  38 00 00 00 */	li r0, 0
/* 80225178 002220D8  90 1E 06 08 */	stw r0, 0x608(r30)
lbl_8022517C:
/* 8022517C 002220DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80225180 002220E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80225184 002220E4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80225188 002220E8  7C 08 03 A6 */	mtlr r0
/* 8022518C 002220EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80225190 002220F0  4E 80 00 20 */	blr

.global InActive__8CEyeBallFR13CStateManager9EStateMsgf
InActive__8CEyeBallFR13CStateManager9EStateMsgf:
/* 80225194 002220F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225198 002220F8  7C 08 02 A6 */	mflr r0
/* 8022519C 002220FC  2C 05 00 00 */	cmpwi r5, 0
/* 802251A0 00222100  90 01 00 14 */	stw r0, 0x14(r1)
/* 802251A4 00222104  41 82 00 0C */	beq lbl_802251B0
/* 802251A8 00222108  41 80 00 14 */	blt lbl_802251BC
/* 802251AC 0022210C  48 00 00 10 */	b lbl_802251BC
lbl_802251B0:
/* 802251B0 00222110  80 63 04 50 */	lwz r3, 0x450(r3)
/* 802251B4 00222114  38 80 00 01 */	li r4, 1
/* 802251B8 00222118  4B F1 58 21 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_802251BC:
/* 802251BC 0022211C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802251C0 00222120  7C 08 03 A6 */	mtlr r0
/* 802251C4 00222124  38 21 00 10 */	addi r1, r1, 0x10
/* 802251C8 00222128  4E 80 00 20 */	blr

.global DoUserAnimEvent__8CEyeBallFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__8CEyeBallFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 802251CC 0022212C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802251D0 00222130  7C 08 02 A6 */	mflr r0
/* 802251D4 00222134  90 01 00 94 */	stw r0, 0x94(r1)
/* 802251D8 00222138  DB E1 00 88 */	stfd f31, 0x88(r1)
/* 802251DC 0022213C  FF E0 08 90 */	fmr f31, f1
/* 802251E0 00222140  BF 61 00 74 */	stmw r27, 0x74(r1)
/* 802251E4 00222144  7C DE 33 78 */	mr r30, r6
/* 802251E8 00222148  2C 1E 00 09 */	cmpwi r30, 9
/* 802251EC 0022214C  7C 7B 1B 78 */	mr r27, r3
/* 802251F0 00222150  7C 9C 23 78 */	mr r28, r4
/* 802251F4 00222154  7C BD 2B 78 */	mr r29, r5
/* 802251F8 00222158  3B E0 00 00 */	li r31, 0
/* 802251FC 0022215C  41 82 00 54 */	beq lbl_80225250
/* 80225200 00222160  40 80 00 58 */	bge lbl_80225258
/* 80225204 00222164  2C 1E 00 08 */	cmpwi r30, 8
/* 80225208 00222168  40 80 00 08 */	bge lbl_80225210
/* 8022520C 0022216C  48 00 00 4C */	b lbl_80225258
lbl_80225210:
/* 80225210 00222170  88 1B 06 0C */	lbz r0, 0x60c(r27)
/* 80225214 00222174  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80225218 00222178  41 82 00 40 */	beq lbl_80225258
/* 8022521C 0022217C  7F 64 DB 78 */	mr r4, r27
/* 80225220 00222180  38 61 00 08 */	addi r3, r1, 8
/* 80225224 00222184  38 BD 00 3C */	addi r5, r29, 0x3c
/* 80225228 00222188  3B E0 00 01 */	li r31, 1
/* 8022522C 0022218C  4B E5 37 4D */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80225230 00222190  38 61 00 38 */	addi r3, r1, 0x38
/* 80225234 00222194  38 81 00 08 */	addi r4, r1, 8
/* 80225238 00222198  48 0E D9 3D */	bl __ct__12CTransform4fFRC12CTransform4f
/* 8022523C 0022219C  7F 63 DB 78 */	mr r3, r27
/* 80225240 002221A0  7F 84 E3 78 */	mr r4, r28
/* 80225244 002221A4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80225248 002221A8  4B FF F6 25 */	bl FireBeam__8CEyeballFR13CStateManagerRC12CTransform4f
/* 8022524C 002221AC  48 00 00 0C */	b lbl_80225258
lbl_80225250:
/* 80225250 002221B0  3B E0 00 01 */	li r31, 1
/* 80225254 002221B4  4B FF F5 7D */	bl ResetBeamState__8CEyeballFR13CStateManager
lbl_80225258:
/* 80225258 002221B8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8022525C 002221BC  40 82 00 1C */	bne lbl_80225278
/* 80225260 002221C0  FC 20 F8 90 */	fmr f1, f31
/* 80225264 002221C4  7F 63 DB 78 */	mr r3, r27
/* 80225268 002221C8  7F 84 E3 78 */	mr r4, r28
/* 8022526C 002221CC  7F A5 EB 78 */	mr r5, r29
/* 80225270 002221D0  7F C6 F3 78 */	mr r6, r30
/* 80225274 002221D4  4B E5 3C 3D */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80225278:
/* 80225278 002221D8  CB E1 00 88 */	lfd f31, 0x88(r1)
/* 8022527C 002221DC  BB 61 00 74 */	lmw r27, 0x74(r1)
/* 80225280 002221E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80225284 002221E4  7C 08 03 A6 */	mtlr r0
/* 80225288 002221E8  38 21 00 90 */	addi r1, r1, 0x90
/* 8022528C 002221EC  4E 80 00 20 */	blr

.global AcceptScriptMsg__8CEyeBallF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__8CEyeBallF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80225290 002221F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80225294 002221F4  7C 08 02 A6 */	mflr r0
/* 80225298 002221F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8022529C 002221FC  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802252A0 00222200  7C 9C 23 78 */	mr r28, r4
/* 802252A4 00222204  38 1C FF EB */	addi r0, r28, -21
/* 802252A8 00222208  7C 7B 1B 78 */	mr r27, r3
/* 802252AC 0022220C  28 00 00 15 */	cmplwi r0, 0x15
/* 802252B0 00222210  7C BD 2B 78 */	mr r29, r5
/* 802252B4 00222214  7C DE 33 78 */	mr r30, r6
/* 802252B8 00222218  3B E0 00 00 */	li r31, 0
/* 802252BC 0022221C  41 81 01 BC */	bgt lbl_80225478
/* 802252C0 00222220  3C 80 80 3E */	lis r4, lbl_803E7A18@ha
/* 802252C4 00222224  54 00 10 3A */	slwi r0, r0, 2
/* 802252C8 00222228  38 84 7A 18 */	addi r4, r4, lbl_803E7A18@l
/* 802252CC 0022222C  7C 04 00 2E */	lwzx r0, r4, r0
/* 802252D0 00222230  7C 09 03 A6 */	mtctr r0
/* 802252D4 00222234  4E 80 04 20 */	bctr
.global lbl_802252D8
lbl_802252D8:
/* 802252D8 00222238  A0 1D 00 00 */	lhz r0, 0(r29)
/* 802252DC 0022223C  7F C3 F3 78 */	mr r3, r30
/* 802252E0 00222240  38 81 00 14 */	addi r4, r1, 0x14
/* 802252E4 00222244  B0 01 00 14 */	sth r0, 0x14(r1)
/* 802252E8 00222248  4B E2 72 BD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 802252EC 0022224C  7C 64 1B 78 */	mr r4, r3
/* 802252F0 00222250  38 61 00 24 */	addi r3, r1, 0x24
/* 802252F4 00222254  4B E8 84 19 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 802252F8 00222258  83 E3 00 04 */	lwz r31, 4(r3)
/* 802252FC 0022225C  28 1F 00 00 */	cmplwi r31, 0
/* 80225300 00222260  41 82 00 50 */	beq lbl_80225350
/* 80225304 00222264  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80225308 00222268  A0 9F 00 EC */	lhz r4, 0xec(r31)
/* 8022530C 0022226C  A0 03 00 08 */	lhz r0, 8(r3)
/* 80225310 00222270  7C 04 00 40 */	cmplw r4, r0
/* 80225314 00222274  40 82 00 3C */	bne lbl_80225350
/* 80225318 00222278  7F 63 DB 78 */	mr r3, r27
/* 8022531C 0022227C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80225320 00222280  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80225324 00222284  7D 89 03 A6 */	mtctr r12
/* 80225328 00222288  4E 80 04 21 */	bctrl
/* 8022532C 0022228C  38 9F 01 2C */	addi r4, r31, 0x12c
/* 80225330 00222290  38 A0 00 00 */	li r5, 0
/* 80225334 00222294  4B ED D1 89 */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponMode
/* 80225338 00222298  2C 03 00 02 */	cmpwi r3, 2
/* 8022533C 0022229C  41 82 00 14 */	beq lbl_80225350
/* 80225340 002222A0  88 1B 04 00 */	lbz r0, 0x400(r27)
/* 80225344 002222A4  38 60 00 01 */	li r3, 1
/* 80225348 002222A8  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8022534C 002222AC  98 1B 04 00 */	stb r0, 0x400(r27)
lbl_80225350:
/* 80225350 002222B0  3B E0 00 01 */	li r31, 1
/* 80225354 002222B4  48 00 01 24 */	b lbl_80225478
.global lbl_80225358
lbl_80225358:
/* 80225358 002222B8  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8022535C 002222BC  7F C3 F3 78 */	mr r3, r30
/* 80225360 002222C0  38 81 00 10 */	addi r4, r1, 0x10
/* 80225364 002222C4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80225368 002222C8  4B E2 72 3D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 8022536C 002222CC  7C 64 1B 78 */	mr r4, r3
/* 80225370 002222D0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80225374 002222D4  4B E8 83 99 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 80225378 002222D8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022537C 002222DC  28 1F 00 00 */	cmplwi r31, 0
/* 80225380 002222E0  41 82 00 50 */	beq lbl_802253D0
/* 80225384 002222E4  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 80225388 002222E8  A0 9F 00 EC */	lhz r4, 0xec(r31)
/* 8022538C 002222EC  A0 03 00 08 */	lhz r0, 8(r3)
/* 80225390 002222F0  7C 04 00 40 */	cmplw r4, r0
/* 80225394 002222F4  40 82 00 3C */	bne lbl_802253D0
/* 80225398 002222F8  7F 63 DB 78 */	mr r3, r27
/* 8022539C 002222FC  81 9B 00 00 */	lwz r12, 0(r27)
/* 802253A0 00222300  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802253A4 00222304  7D 89 03 A6 */	mtctr r12
/* 802253A8 00222308  4E 80 04 21 */	bctrl
/* 802253AC 0022230C  38 9F 01 2C */	addi r4, r31, 0x12c
/* 802253B0 00222310  38 A0 00 00 */	li r5, 0
/* 802253B4 00222314  4B ED D1 09 */	bl GetVulnerability__20CDamageVulnerabilityCFRC11CWeaponMode
/* 802253B8 00222318  2C 03 00 02 */	cmpwi r3, 2
/* 802253BC 0022231C  41 82 00 14 */	beq lbl_802253D0
/* 802253C0 00222320  88 1B 04 00 */	lbz r0, 0x400(r27)
/* 802253C4 00222324  38 60 00 01 */	li r3, 1
/* 802253C8 00222328  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802253CC 0022232C  98 1B 04 00 */	stb r0, 0x400(r27)
lbl_802253D0:
/* 802253D0 00222330  3B E0 00 01 */	li r31, 1
/* 802253D4 00222334  48 00 00 A4 */	b lbl_80225478
.global lbl_802253D8
lbl_802253D8:
/* 802253D8 00222338  88 1B 06 0C */	lbz r0, 0x60c(r27)
/* 802253DC 0022233C  38 60 00 01 */	li r3, 1
/* 802253E0 00222340  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802253E4 00222344  98 1B 06 0C */	stb r0, 0x60c(r27)
/* 802253E8 00222348  48 00 00 90 */	b lbl_80225478
.global lbl_802253EC
lbl_802253EC:
/* 802253EC 0022234C  38 80 00 28 */	li r4, 0x28
/* 802253F0 00222350  38 A0 00 29 */	li r5, 0x29
/* 802253F4 00222354  4B E2 EA E1 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
/* 802253F8 00222358  80 7B 04 50 */	lwz r3, 0x450(r27)
/* 802253FC 0022235C  7F C4 F3 78 */	mr r4, r30
/* 80225400 00222360  4B F1 58 F1 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80225404 00222364  C0 02 B4 70 */	lfs f0, lbl_805AD190@sda21(r2)
/* 80225408 00222368  7F 63 DB 78 */	mr r3, r27
/* 8022540C 0022236C  38 80 00 00 */	li r4, 0
/* 80225410 00222370  D0 1B 03 40 */	stfs f0, 0x340(r27)
/* 80225414 00222374  4B E2 D9 59 */	bl CreateShadow__6CActorFb
/* 80225418 00222378  7F 63 DB 78 */	mr r3, r27
/* 8022541C 0022237C  7F C4 F3 78 */	mr r4, r30
/* 80225420 00222380  48 00 00 91 */	bl CreateBeam__8CEyeballFR13CStateManager
/* 80225424 00222384  48 00 00 54 */	b lbl_80225478
.global lbl_80225428
lbl_80225428:
/* 80225428 00222388  A0 7B 05 EC */	lhz r3, 0x5ec(r27)
/* 8022542C 0022238C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80225430 00222390  7C 03 00 40 */	cmplw r3, r0
/* 80225434 00222394  41 82 00 3C */	beq lbl_80225470
/* 80225438 00222398  A0 1B 05 EC */	lhz r0, 0x5ec(r27)
/* 8022543C 0022239C  7F C3 F3 78 */	mr r3, r30
/* 80225440 002223A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80225444 002223A4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80225448 002223A8  4B E2 6E 25 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8022544C 002223AC  80 1B 06 08 */	lwz r0, 0x608(r27)
/* 80225450 002223B0  28 00 00 00 */	cmplwi r0, 0
/* 80225454 002223B4  41 82 00 1C */	beq lbl_80225470
/* 80225458 002223B8  80 1B 06 08 */	lwz r0, 0x608(r27)
/* 8022545C 002223BC  38 61 00 18 */	addi r3, r1, 0x18
/* 80225460 002223C0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80225464 002223C4  48 0C 4A 21 */	bl RemoveEmitter__11CSfxManagerFRC10CSfxHandle
/* 80225468 002223C8  38 00 00 00 */	li r0, 0
/* 8022546C 002223CC  90 1B 06 08 */	stw r0, 0x608(r27)
lbl_80225470:
/* 80225470 002223D0  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80225474 002223D4  B0 1B 05 EC */	sth r0, 0x5ec(r27)
.global lbl_80225478
lbl_80225478:
/* 80225478 002223D8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8022547C 002223DC  40 82 00 20 */	bne lbl_8022549C
/* 80225480 002223E0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80225484 002223E4  7F 63 DB 78 */	mr r3, r27
/* 80225488 002223E8  7F 84 E3 78 */	mr r4, r28
/* 8022548C 002223EC  7F C6 F3 78 */	mr r6, r30
/* 80225490 002223F0  B0 01 00 08 */	sth r0, 8(r1)
/* 80225494 002223F4  38 A1 00 08 */	addi r5, r1, 8
/* 80225498 002223F8  4B E5 76 E1 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
lbl_8022549C:
/* 8022549C 002223FC  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802254A0 00222400  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802254A4 00222404  7C 08 03 A6 */	mtlr r0
/* 802254A8 00222408  38 21 00 50 */	addi r1, r1, 0x50
/* 802254AC 0022240C  4E 80 00 20 */	blr

.global CreateBeam__8CEyeballFR13CStateManager
CreateBeam__8CEyeballFR13CStateManager:
/* 802254B0 00222410  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802254B4 00222414  7C 08 02 A6 */	mflr r0
/* 802254B8 00222418  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802254BC 0022241C  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 802254C0 00222420  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 802254C4 00222424  7C 9E 23 78 */	mr r30, r4
/* 802254C8 00222428  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 802254CC 0022242C  7C 7D 1B 78 */	mr r29, r3
/* 802254D0 00222430  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 802254D4 00222434  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802254D8 00222438  A0 63 05 EC */	lhz r3, 0x5ec(r3)
/* 802254DC 0022243C  7C 03 00 40 */	cmplw r3, r0
/* 802254E0 00222440  40 82 01 C0 */	bne lbl_802256A0
/* 802254E4 00222444  C0 22 B4 70 */	lfs f1, lbl_805AD190@sda21(r2)
/* 802254E8 00222448  38 61 00 38 */	addi r3, r1, 0x38
/* 802254EC 0022244C  C0 42 B4 90 */	lfs f2, lbl_805AD1B0@sda21(r2)
/* 802254F0 00222450  FC 80 08 90 */	fmr f4, f1
/* 802254F4 00222454  C0 62 B4 8C */	lfs f3, lbl_805AD1AC@sda21(r2)
/* 802254F8 00222458  48 13 DE F5 */	bl __ct__6CColorFffff
/* 802254FC 0022245C  C0 22 B4 90 */	lfs f1, lbl_805AD1B0@sda21(r2)
/* 80225500 00222460  38 61 00 3C */	addi r3, r1, 0x3c
/* 80225504 00222464  C0 82 B4 70 */	lfs f4, lbl_805AD190@sda21(r2)
/* 80225508 00222468  FC 40 08 90 */	fmr f2, f1
/* 8022550C 0022246C  FC 60 08 90 */	fmr f3, f1
/* 80225510 00222470  48 13 DE DD */	bl __ct__6CColorFffff
/* 80225514 00222474  81 7D 05 E8 */	lwz r11, 0x5e8(r29)
/* 80225518 00222478  38 E0 00 03 */	li r7, 3
/* 8022551C 0022247C  81 5D 05 E4 */	lwz r10, 0x5e4(r29)
/* 80225520 00222480  38 C0 00 32 */	li r6, 0x32
/* 80225524 00222484  81 3D 05 E0 */	lwz r9, 0x5e0(r29)
/* 80225528 00222488  7F C4 F3 78 */	mr r4, r30
/* 8022552C 0022248C  81 1D 05 DC */	lwz r8, 0x5dc(r29)
/* 80225530 00222490  38 61 00 2C */	addi r3, r1, 0x2c
/* 80225534 00222494  C0 62 B4 90 */	lfs f3, lbl_805AD1B0@sda21(r2)
/* 80225538 00222498  C0 42 B4 98 */	lfs f2, lbl_805AD1B8@sda21(r2)
/* 8022553C 0022249C  C0 82 B4 94 */	lfs f4, lbl_805AD1B4@sda21(r2)
/* 80225540 002224A0  C0 22 B4 9C */	lfs f1, lbl_805AD1BC@sda21(r2)
/* 80225544 002224A4  C0 02 B4 A0 */	lfs f0, lbl_805AD1C0@sda21(r2)
/* 80225548 002224A8  80 A1 00 3C */	lwz r5, 0x3c(r1)
/* 8022554C 002224AC  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80225550 002224B0  90 E1 00 78 */	stw r7, 0x78(r1)
/* 80225554 002224B4  91 01 00 7C */	stw r8, 0x7c(r1)
/* 80225558 002224B8  91 21 00 80 */	stw r9, 0x80(r1)
/* 8022555C 002224BC  91 41 00 84 */	stw r10, 0x84(r1)
/* 80225560 002224C0  91 61 00 88 */	stw r11, 0x88(r1)
/* 80225564 002224C4  90 C1 00 8C */	stw r6, 0x8c(r1)
/* 80225568 002224C8  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8022556C 002224CC  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80225570 002224D0  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80225574 002224D4  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80225578 002224D8  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8022557C 002224DC  D0 61 00 A4 */	stfs f3, 0xa4(r1)
/* 80225580 002224E0  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80225584 002224E4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80225588 002224E8  90 A1 00 B0 */	stw r5, 0xb0(r1)
/* 8022558C 002224EC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80225590 002224F0  4B E2 7B 4D */	bl AllocateUniqueId__13CStateManagerFv
/* 80225594 002224F4  A0 01 00 2C */	lhz r0, 0x2c(r1)
/* 80225598 002224F8  3C 60 80 3D */	lis r3, lbl_803D3248@ha
/* 8022559C 002224FC  38 63 32 48 */	addi r3, r3, lbl_803D3248@l
/* 802255A0 00222500  3B 80 00 00 */	li r28, 0
/* 802255A4 00222504  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 802255A8 00222508  38 83 00 16 */	addi r4, r3, 0x16
/* 802255AC 0022250C  38 60 05 50 */	li r3, 0x550
/* 802255B0 00222510  38 A0 00 00 */	li r5, 0
/* 802255B4 00222514  48 0F 02 B9 */	bl __nw__FUlPCcPCc
/* 802255B8 00222518  7C 7F 1B 79 */	or. r31, r3, r3
/* 802255BC 0022251C  41 82 00 C4 */	beq lbl_80225680
/* 802255C0 00222520  38 00 FF FF */	li r0, -1
/* 802255C4 00222524  38 60 00 08 */	li r3, 8
/* 802255C8 00222528  90 61 00 50 */	stw r3, 0x50(r1)
/* 802255CC 0022252C  3C 60 80 3D */	lis r3, lbl_803D3248@ha
/* 802255D0 00222530  38 83 32 48 */	addi r4, r3, lbl_803D3248@l
/* 802255D4 00222534  38 61 00 40 */	addi r3, r1, 0x40
/* 802255D8 00222538  90 01 00 54 */	stw r0, 0x54(r1)
/* 802255DC 0022253C  38 84 00 1D */	addi r4, r4, 0x1d
/* 802255E0 00222540  90 01 00 58 */	stw r0, 0x58(r1)
/* 802255E4 00222544  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802255E8 00222548  90 01 00 60 */	stw r0, 0x60(r1)
/* 802255EC 0022254C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802255F0 00222550  90 01 00 68 */	stw r0, 0x68(r1)
/* 802255F4 00222554  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802255F8 00222558  90 01 00 70 */	stw r0, 0x70(r1)
/* 802255FC 0022255C  A0 1D 00 08 */	lhz r0, 8(r29)
/* 80225600 00222560  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80225604 00222564  80 BD 00 04 */	lwz r5, 4(r29)
/* 80225608 00222568  B0 01 00 24 */	sth r0, 0x24(r1)
/* 8022560C 0022256C  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80225610 00222570  A0 1D 05 EC */	lhz r0, 0x5ec(r29)
/* 80225614 00222574  90 A1 00 30 */	stw r5, 0x30(r1)
/* 80225618 00222578  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8022561C 0022257C  4B DD F6 9D */	bl string_l__4rstlFPCc
/* 80225620 00222580  38 01 00 20 */	addi r0, r1, 0x20
/* 80225624 00222584  3C 60 80 5A */	lis r3, skIdentity4f@ha
/* 80225628 00222588  90 01 00 08 */	stw r0, 8(r1)
/* 8022562C 0022258C  38 01 00 34 */	addi r0, r1, 0x34
/* 80225630 00222590  39 03 66 70 */	addi r8, r3, skIdentity4f@l
/* 80225634 00222594  38 61 00 28 */	addi r3, r1, 0x28
/* 80225638 00222598  90 01 00 0C */	stw r0, 0xc(r1)
/* 8022563C 0022259C  38 A1 00 50 */	addi r5, r1, 0x50
/* 80225640 002225A0  38 C0 00 00 */	li r6, 0
/* 80225644 002225A4  3C 00 00 02 */	lis r0, 2
/* 80225648 002225A8  90 61 00 10 */	stw r3, 0x10(r1)
/* 8022564C 002225AC  7F E3 FB 78 */	mr r3, r31
/* 80225650 002225B0  38 9D 05 B4 */	addi r4, r29, 0x5b4
/* 80225654 002225B4  38 E1 00 74 */	addi r7, r1, 0x74
/* 80225658 002225B8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8022565C 002225BC  38 A1 00 40 */	addi r5, r1, 0x40
/* 80225660 002225C0  39 5D 05 C0 */	addi r10, r29, 0x5c0
/* 80225664 002225C4  3B 80 00 01 */	li r28, 1
/* 80225668 002225C8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8022566C 002225CC  38 C0 00 09 */	li r6, 9
/* 80225670 002225D0  39 20 00 21 */	li r9, 0x21
/* 80225674 002225D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80225678 002225D8  4B F5 35 B1 */	bl "__ct__17CPlasmaProjectileFRC28TToken<18CWeaponDescription>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>11EWeaponTypeRC9CBeamInfoRC12CTransform4f14EMaterialTypesRC11CDamageInfo9TUniqueId9TUniqueIdbUi"
/* 8022567C 002225DC  7C 7F 1B 78 */	mr r31, r3
lbl_80225680:
/* 80225680 002225E0  7F 80 07 75 */	extsb. r0, r28
/* 80225684 002225E4  7F FD FB 78 */	mr r29, r31
/* 80225688 002225E8  41 82 00 0C */	beq lbl_80225694
/* 8022568C 002225EC  38 61 00 40 */	addi r3, r1, 0x40
/* 80225690 002225F0  48 11 84 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80225694:
/* 80225694 002225F4  7F C3 F3 78 */	mr r3, r30
/* 80225698 002225F8  7F A4 EB 78 */	mr r4, r29
/* 8022569C 002225FC  4B E2 74 79 */	bl AddObject__13CStateManagerFR7CEntity
lbl_802256A0:
/* 802256A0 00222600  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802256A4 00222604  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 802256A8 00222608  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 802256AC 0022260C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 802256B0 00222610  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 802256B4 00222614  7C 08 03 A6 */	mtlr r0
/* 802256B8 00222618  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802256BC 0022261C  4E 80 00 20 */	blr

.global Accept__8CEyeBallFR8IVisitor
Accept__8CEyeBallFR8IVisitor:
/* 802256C0 00222620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802256C4 00222624  7C 08 02 A6 */	mflr r0
/* 802256C8 00222628  90 01 00 14 */	stw r0, 0x14(r1)
/* 802256CC 0022262C  7C 60 1B 78 */	mr r0, r3
/* 802256D0 00222630  7C 83 23 78 */	mr r3, r4
/* 802256D4 00222634  81 84 00 00 */	lwz r12, 0(r4)
/* 802256D8 00222638  7C 04 03 78 */	mr r4, r0
/* 802256DC 0022263C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802256E0 00222640  7D 89 03 A6 */	mtctr r12
/* 802256E4 00222644  4E 80 04 21 */	bctrl
/* 802256E8 00222648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802256EC 0022264C  7C 08 03 A6 */	mtlr r0
/* 802256F0 00222650  38 21 00 10 */	addi r1, r1, 0x10
/* 802256F4 00222654  4E 80 00 20 */	blr

.global "__ct__8CEyeBallF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoffUiRC11CDamageInfoUiUiUiUiRC16CActorParameters"
"__ct__8CEyeBallF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoffUiRC11CDamageInfoUiUiUiUiRC16CActorParameters":
/* 802256F8 00222658  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802256FC 0022265C  7C 08 02 A6 */	mflr r0
/* 80225700 00222660  90 01 00 94 */	stw r0, 0x94(r1)
/* 80225704 00222664  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80225708 00222668  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8022570C 0022266C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80225710 00222670  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 80225714 00222674  BE 61 00 3C */	stmw r19, 0x3c(r1)
/* 80225718 00222678  A0 04 00 00 */	lhz r0, 0(r4)
/* 8022571C 0022267C  7D 2B 4B 78 */	mr r11, r9
/* 80225720 00222680  7C F8 3B 78 */	mr r24, r7
/* 80225724 00222684  7C D7 33 78 */	mr r23, r6
/* 80225728 00222688  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8022572C 0022268C  7D 0C 43 78 */	mr r12, r8
/* 80225730 00222690  7F 08 C3 78 */	mr r8, r24
/* 80225734 00222694  7C A6 2B 78 */	mr r6, r5
/* 80225738 00222698  91 41 00 08 */	stw r10, 8(r1)
/* 8022573C 0022269C  39 20 00 01 */	li r9, 1
/* 80225740 002226A0  38 80 00 00 */	li r4, 0
/* 80225744 002226A4  38 00 00 02 */	li r0, 2
/* 80225748 002226A8  91 21 00 0C */	stw r9, 0xc(r1)
/* 8022574C 002226AC  FF C0 08 90 */	fmr f30, f1
/* 80225750 002226B0  80 E1 00 C8 */	lwz r7, 0xc8(r1)
/* 80225754 002226B4  FF E0 10 90 */	fmr f31, f2
/* 80225758 002226B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8022575C 002226BC  7C 73 1B 78 */	mr r19, r3
/* 80225760 002226C0  82 81 00 98 */	lwz r20, 0x98(r1)
/* 80225764 002226C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225768 002226C8  7D 6A 5B 78 */	mr r10, r11
/* 8022576C 002226CC  82 A1 00 9C */	lwz r21, 0x9c(r1)
/* 80225770 002226D0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80225774 002226D4  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80225778 002226D8  7E E7 BB 78 */	mr r7, r23
/* 8022577C 002226DC  82 C1 00 A0 */	lwz r22, 0xa0(r1)
/* 80225780 002226E0  38 80 00 09 */	li r4, 9
/* 80225784 002226E4  91 21 00 1C */	stw r9, 0x1c(r1)
/* 80225788 002226E8  7D 89 63 78 */	mr r9, r12
/* 8022578C 002226EC  82 E1 00 A4 */	lwz r23, 0xa4(r1)
/* 80225790 002226F0  83 01 00 A8 */	lwz r24, 0xa8(r1)
/* 80225794 002226F4  83 21 00 AC */	lwz r25, 0xac(r1)
/* 80225798 002226F8  83 41 00 B0 */	lwz r26, 0xb0(r1)
/* 8022579C 002226FC  83 61 00 B4 */	lwz r27, 0xb4(r1)
/* 802257A0 00222700  83 81 00 B8 */	lwz r28, 0xb8(r1)
/* 802257A4 00222704  83 A1 00 BC */	lwz r29, 0xbc(r1)
/* 802257A8 00222708  83 C1 00 C0 */	lwz r30, 0xc0(r1)
/* 802257AC 0022270C  8B E1 00 C7 */	lbz r31, 0xc7(r1)
/* 802257B0 00222710  4B E5 7C A1 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 802257B4 00222714  3C 60 80 3E */	lis r3, lbl_803E774C@ha
/* 802257B8 00222718  3C 80 80 3D */	lis r4, lbl_803D3248@ha
/* 802257BC 0022271C  38 03 77 4C */	addi r0, r3, lbl_803E774C@l
/* 802257C0 00222720  38 61 00 24 */	addi r3, r1, 0x24
/* 802257C4 00222724  90 13 00 00 */	stw r0, 0(r19)
/* 802257C8 00222728  38 84 32 48 */	addi r4, r4, lbl_803D3248@l
/* 802257CC 0022272C  38 84 00 2A */	addi r4, r4, 0x2a
/* 802257D0 00222730  D3 D3 05 68 */	stfs f30, 0x568(r19)
/* 802257D4 00222734  D3 F3 05 6C */	stfs f31, 0x56c(r19)
/* 802257D8 00222738  4B DD F4 E1 */	bl string_l__4rstlFPCc
/* 802257DC 0022273C  80 93 00 64 */	lwz r4, 0x64(r19)
/* 802257E0 00222740  38 73 05 70 */	addi r3, r19, 0x570
/* 802257E4 00222744  C0 22 B4 88 */	lfs f1, lbl_805AD1A8@sda21(r2)
/* 802257E8 00222748  38 A1 00 24 */	addi r5, r1, 0x24
/* 802257EC 0022274C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 802257F0 00222750  38 C0 00 01 */	li r6, 1
/* 802257F4 00222754  C0 42 B4 A4 */	lfs f2, lbl_805AD1C4@sda21(r2)
/* 802257F8 00222758  4B F5 01 C1 */	bl "__ct__13CBoneTrackingFRC9CAnimDataRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>ffb"
/* 802257FC 0022275C  38 61 00 24 */	addi r3, r1, 0x24
/* 80225800 00222760  48 11 82 E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80225804 00222764  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80225808 00222768  7E 84 A3 78 */	mr r4, r20
/* 8022580C 0022276C  38 C3 66 A0 */	addi r6, r3, skZero3f@l
/* 80225810 00222770  7E A5 AB 78 */	mr r5, r21
/* 80225814 00222774  C0 06 00 00 */	lfs f0, 0(r6)
/* 80225818 00222778  38 73 05 B4 */	addi r3, r19, 0x5b4
/* 8022581C 0022277C  D0 13 05 A8 */	stfs f0, 0x5a8(r19)
/* 80225820 00222780  C0 06 00 04 */	lfs f0, 4(r6)
/* 80225824 00222784  D0 13 05 AC */	stfs f0, 0x5ac(r19)
/* 80225828 00222788  C0 06 00 08 */	lfs f0, 8(r6)
/* 8022582C 0022278C  D0 13 05 B0 */	stfs f0, 0x5b0(r19)
/* 80225830 00222790  4B FF 68 79 */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80225834 00222794  92 D3 05 DC */	stw r22, 0x5dc(r19)
/* 80225838 00222798  38 00 00 00 */	li r0, 0
/* 8022583C 0022279C  57 C3 04 3E */	clrlwi r3, r30, 0x10
/* 80225840 002227A0  92 F3 05 E0 */	stw r23, 0x5e0(r19)
/* 80225844 002227A4  93 13 05 E4 */	stw r24, 0x5e4(r19)
/* 80225848 002227A8  93 33 05 E8 */	stw r25, 0x5e8(r19)
/* 8022584C 002227AC  A0 8D A3 8C */	lhz r4, kInvalidUniqueId@sda21(r13)
/* 80225850 002227B0  B0 93 05 EC */	sth r4, 0x5ec(r19)
/* 80225854 002227B4  90 13 05 F0 */	stw r0, 0x5f0(r19)
/* 80225858 002227B8  48 0C 31 59 */	bl TranslateSFXID__11CSfxManagerFUs
/* 8022585C 002227BC  B0 73 06 04 */	sth r3, 0x604(r19)
/* 80225860 002227C0  38 A0 00 00 */	li r5, 0
/* 80225864 002227C4  38 73 04 60 */	addi r3, r19, 0x460
/* 80225868 002227C8  38 80 00 00 */	li r4, 0
/* 8022586C 002227CC  90 B3 06 08 */	stw r5, 0x608(r19)
/* 80225870 002227D0  88 13 06 0C */	lbz r0, 0x60c(r19)
/* 80225874 002227D4  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80225878 002227D8  98 13 06 0C */	stb r0, 0x60c(r19)
/* 8022587C 002227DC  88 13 06 0C */	lbz r0, 0x60c(r19)
/* 80225880 002227E0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 80225884 002227E4  98 13 06 0C */	stb r0, 0x60c(r19)
/* 80225888 002227E8  88 13 06 0C */	lbz r0, 0x60c(r19)
/* 8022588C 002227EC  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 80225890 002227F0  98 13 06 0C */	stb r0, 0x60c(r19)
/* 80225894 002227F4  88 13 06 0C */	lbz r0, 0x60c(r19)
/* 80225898 002227F8  53 E0 26 F6 */	rlwimi r0, r31, 4, 0x1b, 0x1b
/* 8022589C 002227FC  98 13 06 0C */	stb r0, 0x60c(r19)
/* 802258A0 00222800  88 13 06 0C */	lbz r0, 0x60c(r19)
/* 802258A4 00222804  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 802258A8 00222808  98 13 06 0C */	stb r0, 0x60c(r19)
/* 802258AC 0022280C  93 53 05 F4 */	stw r26, 0x5f4(r19)
/* 802258B0 00222810  93 73 05 F8 */	stw r27, 0x5f8(r19)
/* 802258B4 00222814  93 93 05 FC */	stw r28, 0x5fc(r19)
/* 802258B8 00222818  93 B3 06 00 */	stw r29, 0x600(r19)
/* 802258BC 0022281C  48 00 E4 A9 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 802258C0 00222820  7E 63 9B 78 */	mr r3, r19
/* 802258C4 00222824  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802258C8 00222828  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802258CC 0022282C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802258D0 00222830  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802258D4 00222834  BA 61 00 3C */	lmw r19, 0x3c(r1)
/* 802258D8 00222838  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802258DC 0022283C  7C 08 03 A6 */	mtlr r0
/* 802258E0 00222840  38 21 00 90 */	addi r1, r1, 0x90
/* 802258E4 00222844  4E 80 00 20 */	blr

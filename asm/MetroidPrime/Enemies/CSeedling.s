.include "macros.inc"

.section .data

.global lbl_803E9DF8
lbl_803E9DF8:
	# ROM: 0x3E6DF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte TryProjectileAttack__10CPatternedFR13CStateManageri

.global lbl_803E9E04
lbl_803E9E04:
	# ROM: 0x3E6E04
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte sub_8007c060

.global lbl_803E9E10
lbl_803E9E10:
	# ROM: 0x3E6E10
	.4byte 0
	.4byte 0
	.4byte __dt__9CSeedlingFv
	.4byte Accept__10CPatternedFR8IVisitor
	.4byte PreThink__11CWallWalkerFfR13CStateManager
	.4byte Think__9CSeedlingFfR13CStateManager
	.4byte AcceptScriptMsg__9CSeedlingF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__10CPatternedCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__9CSeedlingCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__3CAiCFv
	.4byte GetDamageVulnerability__6CActorCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__9CSeedlingCFv
	.4byte Touch__9CSeedlingFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__10CPatternedCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__10CPatternedCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__9CSeedlingFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__11CWallWalkerCFv
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
	.4byte Patrol__9CSeedlingFR13CStateManager9EStateMsgf
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
	.4byte Generate__9CSeedlingFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__3CAiFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__3CAiFR13CStateManager9EStateMsgf
	.4byte Skid__3CAiFR13CStateManager9EStateMsgf
	.4byte Active__9CSeedlingFR13CStateManager9EStateMsgf
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
	.4byte ProjectileAttack__9CSeedlingFR13CStateManager9EStateMsgf
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
	.4byte Enraged__9CSeedlingFR13CStateManager9EStateMsgf
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
	.4byte ShouldAttack__9CSeedlingFR13CStateManagerf
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
	.4byte sub_80266048
	.4byte MassiveFrozenDeath__10CPatternedFR13CStateManager
	.4byte Burn__10CPatternedFff
	.4byte Shock__10CPatternedFff
	.4byte ThinkAboutMove__10CPatternedFf
	.4byte GetSearchPath__9CSeedlingFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__9CSeedlingCF
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv
	.4byte 0

.section .sdata

.global lbl_805A83F8
lbl_805A83F8:
	# ROM: 0x3F5D98
	.4byte 0x00000013
	.4byte 0

.section .text, "ax"

.global GetSearchPath__9CSeedlingFv
GetSearchPath__9CSeedlingFv:
/* 80266040 00262FA0  38 63 05 D8 */	addi r3, r3, 0x5d8
/* 80266044 00262FA4  4E 80 00 20 */	blr

.global sub_80266048
sub_80266048:
/* 80266048 00262FA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026604C 00262FAC  7C 08 02 A6 */	mflr r0
/* 80266050 00262FB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80266054 00262FB4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80266058 00262FB8  7C 9F 23 78 */	mr r31, r4
/* 8026605C 00262FBC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80266060 00262FC0  7C 7E 1B 78 */	mr r30, r3
/* 80266064 00262FC4  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80266068 00262FC8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 8026606C 00262FCC  41 82 00 7C */	beq lbl_802660E8
/* 80266070 00262FD0  80 AD 98 38 */	lwz r5, lbl_805A83F8@sda21(r13)
/* 80266074 00262FD4  38 60 00 00 */	li r3, 0
/* 80266078 00262FD8  38 80 00 01 */	li r4, 1
/* 8026607C 00262FDC  48 12 3E 79 */	bl __shl2i
/* 80266080 00262FE0  39 20 00 00 */	li r9, 0
/* 80266084 00262FE4  38 00 00 03 */	li r0, 3
/* 80266088 00262FE8  90 81 00 24 */	stw r4, 0x24(r1)
/* 8026608C 00262FEC  7F C5 F3 78 */	mr r5, r30
/* 80266090 00262FF0  38 81 00 0C */	addi r4, r1, 0xc
/* 80266094 00262FF4  38 C1 00 10 */	addi r6, r1, 0x10
/* 80266098 00262FF8  90 61 00 20 */	stw r3, 0x20(r1)
/* 8026609C 00262FFC  7F E3 FB 78 */	mr r3, r31
/* 802660A0 00263000  38 FE 06 E8 */	addi r7, r30, 0x6e8
/* 802660A4 00263004  39 01 00 20 */	addi r8, r1, 0x20
/* 802660A8 00263008  91 21 00 2C */	stw r9, 0x2c(r1)
/* 802660AC 0026300C  91 21 00 28 */	stw r9, 0x28(r1)
/* 802660B0 00263010  90 01 00 30 */	stw r0, 0x30(r1)
/* 802660B4 00263014  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 802660B8 00263018  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 802660BC 0026301C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 802660C0 00263020  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802660C4 00263024  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 802660C8 00263028  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 802660CC 0026302C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 802660D0 00263030  B0 01 00 08 */	sth r0, 8(r1)
/* 802660D4 00263034  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802660D8 00263038  4B DE 2B D5 */	bl ApplyDamageToWorld__13CStateManagerF9TUniqueIdRC6CActorRC9CVector3fRC11CDamageInfoRC15CMaterialFilter
/* 802660DC 0026303C  7F C3 F3 78 */	mr r3, r30
/* 802660E0 00263040  7F E4 FB 78 */	mr r4, r31
/* 802660E4 00263044  48 00 01 99 */	bl sub_8026627c
lbl_802660E8:
/* 802660E8 00263048  7F C3 F3 78 */	mr r3, r30
/* 802660EC 0026304C  7F E4 FB 78 */	mr r4, r31
/* 802660F0 00263050  4B E1 4B F9 */	bl MassiveDeath__10CPatternedFR13CStateManager
/* 802660F4 00263054  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802660F8 00263058  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802660FC 0026305C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80266100 00263060  7C 08 03 A6 */	mtlr r0
/* 80266104 00263064  38 21 00 40 */	addi r1, r1, 0x40
/* 80266108 00263068  4E 80 00 20 */	blr

.global Touch__9CSeedlingFR6CActorR13CStateManager
Touch__9CSeedlingFR6CActorR13CStateManager:
/* 8026610C 0026306C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80266110 00263070  7C 08 02 A6 */	mflr r0
/* 80266114 00263074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266118 00263078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026611C 0026307C  7C BF 2B 78 */	mr r31, r5
/* 80266120 00263080  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80266124 00263084  7C 9E 23 78 */	mr r30, r4
/* 80266128 00263088  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026612C 0026308C  7C 7D 1B 78 */	mr r29, r3
/* 80266130 00263090  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80266134 00263094  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80266138 00263098  41 82 00 30 */	beq lbl_80266168
/* 8026613C 0026309C  38 61 00 08 */	addi r3, r1, 8
/* 80266140 002630A0  4B E4 62 C1 */	bl "__ct__20TCastToPtr<7CPlayer>FR7CEntity"
/* 80266144 002630A4  80 03 00 04 */	lwz r0, 4(r3)
/* 80266148 002630A8  28 00 00 00 */	cmplwi r0, 0
/* 8026614C 002630AC  41 82 00 1C */	beq lbl_80266168
/* 80266150 002630B0  7F A3 EB 78 */	mr r3, r29
/* 80266154 002630B4  7F E4 FB 78 */	mr r4, r31
/* 80266158 002630B8  81 9D 00 00 */	lwz r12, 0(r29)
/* 8026615C 002630BC  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 80266160 002630C0  7D 89 03 A6 */	mtctr r12
/* 80266164 002630C4  4E 80 04 21 */	bctrl
lbl_80266168:
/* 80266168 002630C8  7F A3 EB 78 */	mr r3, r29
/* 8026616C 002630CC  7F C4 F3 78 */	mr r4, r30
/* 80266170 002630D0  7F E5 FB 78 */	mr r5, r31
/* 80266174 002630D4  4B E1 39 2D */	bl Touch__10CPatternedFR6CActorR13CStateManager
/* 80266178 002630D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026617C 002630DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80266180 002630E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80266184 002630E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80266188 002630E8  7C 08 03 A6 */	mtlr r0
/* 8026618C 002630EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80266190 002630F0  4E 80 00 20 */	blr

.global GetTouchBounds__9CSeedlingCFv
GetTouchBounds__9CSeedlingCFv:
/* 80266194 002630F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80266198 002630F8  7C 08 02 A6 */	mflr r0
/* 8026619C 002630FC  7C 85 23 78 */	mr r5, r4
/* 802661A0 00263100  90 01 00 34 */	stw r0, 0x34(r1)
/* 802661A4 00263104  38 85 07 04 */	addi r4, r5, 0x704
/* 802661A8 00263108  38 A5 00 34 */	addi r5, r5, 0x34
/* 802661AC 0026310C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802661B0 00263110  7C 7F 1B 78 */	mr r31, r3
/* 802661B4 00263114  38 61 00 08 */	addi r3, r1, 8
/* 802661B8 00263118  48 0D 17 45 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 802661BC 0026311C  38 00 00 01 */	li r0, 1
/* 802661C0 00263120  28 1F 00 00 */	cmplwi r31, 0
/* 802661C4 00263124  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802661C8 00263128  41 82 00 34 */	beq lbl_802661FC
/* 802661CC 0026312C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802661D0 00263130  D0 1F 00 00 */	stfs f0, 0(r31)
/* 802661D4 00263134  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802661D8 00263138  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802661DC 0026313C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802661E0 00263140  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802661E4 00263144  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802661E8 00263148  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802661EC 0026314C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802661F0 00263150  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802661F4 00263154  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802661F8 00263158  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_802661FC:
/* 802661FC 0026315C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80266200 00263160  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80266204 00263164  7C 08 03 A6 */	mtlr r0
/* 80266208 00263168  38 21 00 30 */	addi r1, r1, 0x30
/* 8026620C 0026316C  4E 80 00 20 */	blr

.global ShouldAttack__9CSeedlingFR13CStateManagerf
ShouldAttack__9CSeedlingFR13CStateManagerf:
/* 80266210 00263170  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80266214 00263174  7C 08 02 A6 */	mflr r0
/* 80266218 00263178  C0 02 BA C8 */	lfs f0, lbl_805AD7E8@sda21(r2)
/* 8026621C 0026317C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266220 00263180  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80266224 00263184  3B E0 00 00 */	li r31, 0
/* 80266228 00263188  C0 23 07 1C */	lfs f1, 0x71c(r3)
/* 8026622C 0026318C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266230 00263190  4C 40 13 82 */	cror 2, 0, 2
/* 80266234 00263194  40 82 00 30 */	bne lbl_80266264
/* 80266238 00263198  A0 03 00 08 */	lhz r0, 8(r3)
/* 8026623C 0026319C  7C 83 23 78 */	mr r3, r4
/* 80266240 002631A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80266244 002631A4  38 A0 00 09 */	li r5, 9
/* 80266248 002631A8  B0 01 00 08 */	sth r0, 8(r1)
/* 8026624C 002631AC  38 C0 00 06 */	li r6, 6
/* 80266250 002631B0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80266254 002631B4  4B DD F4 DD */	bl CanCreateProjectile__13CStateManagerCF9TUniqueId11EWeaponTypei
/* 80266258 002631B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8026625C 002631BC  41 82 00 08 */	beq lbl_80266264
/* 80266260 002631C0  3B E0 00 01 */	li r31, 1
lbl_80266264:
/* 80266264 002631C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266268 002631C8  7F E3 FB 78 */	mr r3, r31
/* 8026626C 002631CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80266270 002631D0  7C 08 03 A6 */	mtlr r0
/* 80266274 002631D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80266278 002631D8  4E 80 00 20 */	blr

.global sub_8026627c
sub_8026627c:
/* 8026627C 002631DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80266280 002631E0  7C 08 02 A6 */	mflr r0
/* 80266284 002631E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80266288 002631E8  38 00 00 06 */	li r0, 6
/* 8026628C 002631EC  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 80266290 002631F0  7C 7D 1B 78 */	mr r29, r3
/* 80266294 002631F4  3C 60 80 3D */	lis r3, lbl_803D52B0@ha
/* 80266298 002631F8  7C 9E 23 78 */	mr r30, r4
/* 8026629C 002631FC  3B 63 52 B0 */	addi r27, r3, lbl_803D52B0@l
/* 802662A0 00263200  3B 81 00 10 */	addi r28, r1, 0x10
/* 802662A4 00263204  3B E0 00 00 */	li r31, 0
/* 802662A8 00263208  88 BD 07 22 */	lbz r5, 0x722(r29)
/* 802662AC 0026320C  54 A4 D7 FE */	rlwinm r4, r5, 0x1a, 0x1f, 0x1f
/* 802662B0 00263210  7C 64 00 D0 */	neg r3, r4
/* 802662B4 00263214  7C 63 23 78 */	or r3, r3, r4
/* 802662B8 00263218  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 802662BC 0026321C  7C 1A 18 78 */	andc r26, r0, r3
lbl_802662C0:
/* 802662C0 00263220  7C 1F D2 14 */	add r0, r31, r26
/* 802662C4 00263224  38 61 00 2C */	addi r3, r1, 0x2c
/* 802662C8 00263228  54 00 10 3A */	slwi r0, r0, 2
/* 802662CC 0026322C  7C 9B 00 2E */	lwzx r4, r27, r0
/* 802662D0 00263230  4B D9 E9 E9 */	bl string_l__4rstlFPCc
/* 802662D4 00263234  7F A4 EB 78 */	mr r4, r29
/* 802662D8 00263238  38 61 00 3C */	addi r3, r1, 0x3c
/* 802662DC 0026323C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 802662E0 00263240  4B E1 26 99 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802662E4 00263244  38 61 00 6C */	addi r3, r1, 0x6c
/* 802662E8 00263248  38 81 00 3C */	addi r4, r1, 0x3c
/* 802662EC 0026324C  48 0A C8 89 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 802662F0 00263250  38 61 00 2C */	addi r3, r1, 0x2c
/* 802662F4 00263254  48 0D 77 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802662F8 00263258  38 00 00 00 */	li r0, 0
/* 802662FC 0026325C  A1 42 C5 FC */	lhz r10, lbl_805AE31C@sda21(r2)
/* 80266300 00263260  98 01 00 28 */	stb r0, 0x28(r1)
/* 80266304 00263264  7F A3 EB 78 */	mr r3, r29
/* 80266308 00263268  7F C5 F3 78 */	mr r5, r30
/* 8026630C 0026326C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80266310 00263270  81 7D 00 64 */	lwz r11, 0x64(r29)
/* 80266314 00263274  39 21 00 1C */	addi r9, r1, 0x1c
/* 80266318 00263278  38 C0 00 06 */	li r6, 6
/* 8026631C 0026327C  38 E0 00 00 */	li r7, 0
/* 80266320 00263280  C0 0B 00 00 */	lfs f0, 0(r11)
/* 80266324 00263284  39 00 00 01 */	li r8, 1
/* 80266328 00263288  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8026632C 0026328C  C0 0B 00 04 */	lfs f0, 4(r11)
/* 80266330 00263290  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80266334 00263294  C0 0B 00 08 */	lfs f0, 8(r11)
/* 80266338 00263298  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8026633C 0026329C  90 01 00 08 */	stw r0, 8(r1)
/* 80266340 002632A0  93 81 00 0C */	stw r28, 0xc(r1)
/* 80266344 002632A4  4B E1 16 B5 */	bl "LaunchProjectile__10CPatternedFRC12CTransform4fR13CStateManageriQ27CWeapon17EProjectileAttribbRCQ24rstl50optional_object<31TLockedToken<15CGenDescription>>sbRC9CVector3f"
/* 80266348 002632A8  88 01 00 28 */	lbz r0, 0x28(r1)
/* 8026634C 002632AC  28 00 00 00 */	cmplwi r0, 0
/* 80266350 002632B0  41 82 00 1C */	beq lbl_8026636C
/* 80266354 002632B4  34 61 00 1C */	addic. r3, r1, 0x1c
/* 80266358 002632B8  41 82 00 14 */	beq lbl_8026636C
/* 8026635C 002632BC  28 03 00 00 */	cmplwi r3, 0
/* 80266360 002632C0  41 82 00 0C */	beq lbl_8026636C
/* 80266364 002632C4  38 80 00 00 */	li r4, 0
/* 80266368 002632C8  48 0D AA D9 */	bl __dt__6CTokenFv
lbl_8026636C:
/* 8026636C 002632CC  3B FF 00 01 */	addi r31, r31, 1
/* 80266370 002632D0  38 80 00 00 */	li r4, 0
/* 80266374 002632D4  2C 1F 00 06 */	cmpwi r31, 6
/* 80266378 002632D8  98 81 00 28 */	stb r4, 0x28(r1)
/* 8026637C 002632DC  41 80 FF 44 */	blt lbl_802662C0
/* 80266380 002632E0  88 7D 07 22 */	lbz r3, 0x722(r29)
/* 80266384 002632E4  54 60 D7 FE */	rlwinm r0, r3, 0x1a, 0x1f, 0x1f
/* 80266388 002632E8  7C 00 00 34 */	cntlzw r0, r0
/* 8026638C 002632EC  50 03 0E 72 */	rlwimi r3, r0, 1, 0x19, 0x19
/* 80266390 002632F0  98 7D 07 22 */	stb r3, 0x722(r29)
/* 80266394 002632F4  88 1D 07 22 */	lbz r0, 0x722(r29)
/* 80266398 002632F8  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 8026639C 002632FC  98 1D 07 22 */	stb r0, 0x722(r29)
/* 802663A0 00263300  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 802663A4 00263304  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802663A8 00263308  7C 08 03 A6 */	mtlr r0
/* 802663AC 0026330C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802663B0 00263310  4E 80 00 20 */	blr

.global DoUserAnimEvent__9CSeedlingFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__9CSeedlingFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 802663B4 00263314  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802663B8 00263318  7C 08 02 A6 */	mflr r0
/* 802663BC 0026331C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802663C0 00263320  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802663C4 00263324  FF E0 08 90 */	fmr f31, f1
/* 802663C8 00263328  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802663CC 0026332C  7C DF 33 78 */	mr r31, r6
/* 802663D0 00263330  2C 1F 00 11 */	cmpwi r31, 0x11
/* 802663D4 00263334  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802663D8 00263338  7C BE 2B 78 */	mr r30, r5
/* 802663DC 0026333C  38 A0 00 00 */	li r5, 0
/* 802663E0 00263340  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802663E4 00263344  7C 9D 23 78 */	mr r29, r4
/* 802663E8 00263348  93 81 00 08 */	stw r28, 8(r1)
/* 802663EC 0026334C  7C 7C 1B 78 */	mr r28, r3
/* 802663F0 00263350  41 82 00 14 */	beq lbl_80266404
/* 802663F4 00263354  40 80 00 30 */	bge lbl_80266424
/* 802663F8 00263358  2C 1F 00 00 */	cmpwi r31, 0
/* 802663FC 0026335C  41 82 00 20 */	beq lbl_8026641C
/* 80266400 00263360  48 00 00 24 */	b lbl_80266424
lbl_80266404:
/* 80266404 00263364  88 1C 07 22 */	lbz r0, 0x722(r28)
/* 80266408 00263368  38 60 00 01 */	li r3, 1
/* 8026640C 0026336C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80266410 00263370  38 A0 00 01 */	li r5, 1
/* 80266414 00263374  98 1C 07 22 */	stb r0, 0x722(r28)
/* 80266418 00263378  48 00 00 0C */	b lbl_80266424
lbl_8026641C:
/* 8026641C 0026337C  4B FF FE 61 */	bl sub_8026627c
/* 80266420 00263380  38 A0 00 01 */	li r5, 1
lbl_80266424:
/* 80266424 00263384  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80266428 00263388  40 82 00 1C */	bne lbl_80266444
/* 8026642C 0026338C  FC 20 F8 90 */	fmr f1, f31
/* 80266430 00263390  7F 83 E3 78 */	mr r3, r28
/* 80266434 00263394  7F A4 EB 78 */	mr r4, r29
/* 80266438 00263398  7F C5 F3 78 */	mr r5, r30
/* 8026643C 0026339C  7F E6 FB 78 */	mr r6, r31
/* 80266440 002633A0  4B E1 2A 71 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_80266444:
/* 80266444 002633A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266448 002633A8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8026644C 002633AC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80266450 002633B0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80266454 002633B4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80266458 002633B8  83 81 00 08 */	lwz r28, 8(r1)
/* 8026645C 002633BC  7C 08 03 A6 */	mtlr r0
/* 80266460 002633C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80266464 002633C4  4E 80 00 20 */	blr

.global GetProjectileInfo__9CSeedlingCF
GetProjectileInfo__9CSeedlingCF:
/* 80266468 002633C8  38 63 06 C0 */	addi r3, r3, 0x6c0
/* 8026646C 002633CC  4E 80 00 20 */	blr

.global Generate__9CSeedlingFR13CStateManager9EStateMsgf
Generate__9CSeedlingFR13CStateManager9EStateMsgf:
/* 80266470 002633D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80266474 002633D4  7C 08 02 A6 */	mflr r0
/* 80266478 002633D8  2C 05 00 01 */	cmpwi r5, 1
/* 8026647C 002633DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266480 002633E0  41 82 00 2C */	beq lbl_802664AC
/* 80266484 002633E4  40 80 00 10 */	bge lbl_80266494
/* 80266488 002633E8  2C 05 00 00 */	cmpwi r5, 0
/* 8026648C 002633EC  40 80 00 14 */	bge lbl_802664A0
/* 80266490 002633F0  48 00 00 58 */	b lbl_802664E8
lbl_80266494:
/* 80266494 002633F4  2C 05 00 03 */	cmpwi r5, 3
/* 80266498 002633F8  40 80 00 50 */	bge lbl_802664E8
/* 8026649C 002633FC  48 00 00 44 */	b lbl_802664E0
lbl_802664A0:
/* 802664A0 00263400  38 00 00 01 */	li r0, 1
/* 802664A4 00263404  90 03 03 2C */	stw r0, 0x32c(r3)
/* 802664A8 00263408  48 00 00 40 */	b lbl_802664E8
lbl_802664AC:
/* 802664AC 0026340C  3C A0 80 3F */	lis r5, lbl_803E9E04@ha
/* 802664B0 00263410  38 C1 00 08 */	addi r6, r1, 8
/* 802664B4 00263414  39 45 9E 04 */	addi r10, r5, lbl_803E9E04@l
/* 802664B8 00263418  38 A0 00 0C */	li r5, 0xc
/* 802664BC 0026341C  81 2A 00 00 */	lwz r9, 0(r10)
/* 802664C0 00263420  38 E0 00 00 */	li r7, 0
/* 802664C4 00263424  81 0A 00 04 */	lwz r8, 4(r10)
/* 802664C8 00263428  80 0A 00 08 */	lwz r0, 8(r10)
/* 802664CC 0026342C  91 21 00 08 */	stw r9, 8(r1)
/* 802664D0 00263430  91 01 00 0C */	stw r8, 0xc(r1)
/* 802664D4 00263434  90 01 00 10 */	stw r0, 0x10(r1)
/* 802664D8 00263438  4B E1 62 DD */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 802664DC 0026343C  48 00 00 0C */	b lbl_802664E8
lbl_802664E0:
/* 802664E0 00263440  38 00 00 00 */	li r0, 0
/* 802664E4 00263444  90 03 03 2C */	stw r0, 0x32c(r3)
lbl_802664E8:
/* 802664E8 00263448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802664EC 0026344C  7C 08 03 A6 */	mtlr r0
/* 802664F0 00263450  38 21 00 20 */	addi r1, r1, 0x20
/* 802664F4 00263454  4E 80 00 20 */	blr

.global ProjectileAttack__9CSeedlingFR13CStateManager9EStateMsgf
ProjectileAttack__9CSeedlingFR13CStateManager9EStateMsgf:
/* 802664F8 00263458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802664FC 0026345C  7C 08 02 A6 */	mflr r0
/* 80266500 00263460  2C 05 00 01 */	cmpwi r5, 1
/* 80266504 00263464  90 01 00 24 */	stw r0, 0x24(r1)
/* 80266508 00263468  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026650C 0026346C  7C 7F 1B 78 */	mr r31, r3
/* 80266510 00263470  41 82 00 2C */	beq lbl_8026653C
/* 80266514 00263474  40 80 00 10 */	bge lbl_80266524
/* 80266518 00263478  2C 05 00 00 */	cmpwi r5, 0
/* 8026651C 0026347C  40 80 00 14 */	bge lbl_80266530
/* 80266520 00263480  48 00 00 70 */	b lbl_80266590
lbl_80266524:
/* 80266524 00263484  2C 05 00 03 */	cmpwi r5, 3
/* 80266528 00263488  40 80 00 68 */	bge lbl_80266590
/* 8026652C 0026348C  48 00 00 44 */	b lbl_80266570
lbl_80266530:
/* 80266530 00263490  38 00 00 01 */	li r0, 1
/* 80266534 00263494  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80266538 00263498  48 00 00 58 */	b lbl_80266590
lbl_8026653C:
/* 8026653C 0026349C  3C A0 80 3F */	lis r5, lbl_803E9DF8@ha
/* 80266540 002634A0  38 C1 00 08 */	addi r6, r1, 8
/* 80266544 002634A4  39 45 9D F8 */	addi r10, r5, lbl_803E9DF8@l
/* 80266548 002634A8  38 A0 00 12 */	li r5, 0x12
/* 8026654C 002634AC  81 2A 00 00 */	lwz r9, 0(r10)
/* 80266550 002634B0  38 E0 00 00 */	li r7, 0
/* 80266554 002634B4  81 0A 00 04 */	lwz r8, 4(r10)
/* 80266558 002634B8  80 0A 00 08 */	lwz r0, 8(r10)
/* 8026655C 002634BC  91 21 00 08 */	stw r9, 8(r1)
/* 80266560 002634C0  91 01 00 0C */	stw r8, 0xc(r1)
/* 80266564 002634C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80266568 002634C8  4B E1 62 4D */	bl TryCommand__10CPatternedFR13CStateManageriM10CPatternedFR13CStateManageri_vi
/* 8026656C 002634CC  48 00 00 24 */	b lbl_80266590
lbl_80266570:
/* 80266570 002634D0  38 00 00 00 */	li r0, 0
/* 80266574 002634D4  90 1F 03 2C */	stw r0, 0x32c(r31)
/* 80266578 002634D8  80 64 09 00 */	lwz r3, 0x900(r4)
/* 8026657C 002634DC  48 0A BF 61 */	bl Float__9CRandom16Fv
/* 80266580 002634E0  C0 5F 03 08 */	lfs f2, 0x308(r31)
/* 80266584 002634E4  C0 1F 03 04 */	lfs f0, 0x304(r31)
/* 80266588 002634E8  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 8026658C 002634EC  D0 1F 07 1C */	stfs f0, 0x71c(r31)
lbl_80266590:
/* 80266590 002634F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266594 002634F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80266598 002634F8  7C 08 03 A6 */	mtlr r0
/* 8026659C 002634FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802665A0 00263500  4E 80 00 20 */	blr

.global Enraged__9CSeedlingFR13CStateManager9EStateMsgf
Enraged__9CSeedlingFR13CStateManager9EStateMsgf:
/* 802665A4 00263504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802665A8 00263508  7C 08 02 A6 */	mflr r0
/* 802665AC 0026350C  2C 05 00 00 */	cmpwi r5, 0
/* 802665B0 00263510  90 01 00 14 */	stw r0, 0x14(r1)
/* 802665B4 00263514  41 82 00 0C */	beq lbl_802665C0
/* 802665B8 00263518  41 80 00 14 */	blt lbl_802665CC
/* 802665BC 0026351C  48 00 00 10 */	b lbl_802665CC
lbl_802665C0:
/* 802665C0 00263520  80 63 04 50 */	lwz r3, 0x450(r3)
/* 802665C4 00263524  38 80 00 08 */	li r4, 8
/* 802665C8 00263528  4B ED 44 11 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_802665CC:
/* 802665CC 0026352C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802665D0 00263530  7C 08 03 A6 */	mtlr r0
/* 802665D4 00263534  38 21 00 10 */	addi r1, r1, 0x10
/* 802665D8 00263538  4E 80 00 20 */	blr

.global Active__9CSeedlingFR13CStateManager9EStateMsgf
Active__9CSeedlingFR13CStateManager9EStateMsgf:
/* 802665DC 0026353C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802665E0 00263540  7C 08 02 A6 */	mflr r0
/* 802665E4 00263544  90 01 00 24 */	stw r0, 0x24(r1)
/* 802665E8 00263548  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802665EC 0026354C  FF E0 08 90 */	fmr f31, f1
/* 802665F0 00263550  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802665F4 00263554  7C BF 2B 79 */	or. r31, r5, r5
/* 802665F8 00263558  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802665FC 0026355C  7C 9E 23 78 */	mr r30, r4
/* 80266600 00263560  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80266604 00263564  7C 7D 1B 78 */	mr r29, r3
/* 80266608 00263568  41 82 00 0C */	beq lbl_80266614
/* 8026660C 0026356C  41 80 00 14 */	blt lbl_80266620
/* 80266610 00263570  48 00 00 10 */	b lbl_80266620
lbl_80266614:
/* 80266614 00263574  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 80266618 00263578  38 80 00 02 */	li r4, 2
/* 8026661C 0026357C  4B ED 43 BD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
lbl_80266620:
/* 80266620 00263580  FC 20 F8 90 */	fmr f1, f31
/* 80266624 00263584  7F A3 EB 78 */	mr r3, r29
/* 80266628 00263588  7F C4 F3 78 */	mr r4, r30
/* 8026662C 0026358C  7F E5 FB 78 */	mr r5, r31
/* 80266630 00263590  4B F9 08 45 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 80266634 00263594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80266638 00263598  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8026663C 0026359C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80266640 002635A0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80266644 002635A4  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80266648 002635A8  7C 08 03 A6 */	mtlr r0
/* 8026664C 002635AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80266650 002635B0  4E 80 00 20 */	blr

.global Patrol__9CSeedlingFR13CStateManager9EStateMsgf
Patrol__9CSeedlingFR13CStateManager9EStateMsgf:
/* 80266654 002635B4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80266658 002635B8  7C 08 02 A6 */	mflr r0
/* 8026665C 002635BC  2C 05 00 01 */	cmpwi r5, 1
/* 80266660 002635C0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80266664 002635C4  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80266668 002635C8  7C 7F 1B 78 */	mr r31, r3
/* 8026666C 002635CC  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80266670 002635D0  7C 9E 23 78 */	mr r30, r4
/* 80266674 002635D4  41 82 00 C4 */	beq lbl_80266738
/* 80266678 002635D8  40 80 00 10 */	bge lbl_80266688
/* 8026667C 002635DC  2C 05 00 00 */	cmpwi r5, 0
/* 80266680 002635E0  40 80 00 14 */	bge lbl_80266694
/* 80266684 002635E4  48 00 02 90 */	b lbl_80266914
lbl_80266688:
/* 80266688 002635E8  2C 05 00 03 */	cmpwi r5, 3
/* 8026668C 002635EC  40 80 02 88 */	bge lbl_80266914
/* 80266690 002635F0  48 00 02 7C */	b lbl_8026690C
lbl_80266694:
/* 80266694 002635F4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80266698 002635F8  38 80 00 01 */	li r4, 1
/* 8026669C 002635FC  4B ED 43 3D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 802666A0 00263600  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 802666A4 00263604  38 60 00 01 */	li r3, 1
/* 802666A8 00263608  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802666AC 0026360C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802666B0 00263610  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 802666B4 00263614  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 802666B8 00263618  38 60 00 00 */	li r3, 0
/* 802666BC 0026361C  C0 04 00 00 */	lfs f0, 0(r4)
/* 802666C0 00263620  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 802666C4 00263624  C0 04 00 04 */	lfs f0, 4(r4)
/* 802666C8 00263628  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 802666CC 0026362C  C0 04 00 08 */	lfs f0, 8(r4)
/* 802666D0 00263630  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 802666D4 00263634  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 802666D8 00263638  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802666DC 0026363C  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 802666E0 00263640  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 802666E4 00263644  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802666E8 00263648  98 1F 00 F8 */	stb r0, 0xf8(r31)
/* 802666EC 0026364C  A0 7F 07 20 */	lhz r3, 0x720(r31)
/* 802666F0 00263650  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802666F4 00263654  7C 03 00 40 */	cmplw r3, r0
/* 802666F8 00263658  41 82 00 0C */	beq lbl_80266704
/* 802666FC 0026365C  38 7F 07 20 */	addi r3, r31, 0x720
/* 80266700 00263660  48 00 00 20 */	b lbl_80266720
lbl_80266704:
/* 80266704 00263664  7F E4 FB 78 */	mr r4, r31
/* 80266708 00263668  7F C5 F3 78 */	mr r5, r30
/* 8026670C 0026366C  38 61 00 08 */	addi r3, r1, 8
/* 80266710 00263670  38 C0 00 0D */	li r6, 0xd
/* 80266714 00263674  38 E0 00 06 */	li r7, 6
/* 80266718 00263678  4B F8 E8 81 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 8026671C 0026367C  38 61 00 08 */	addi r3, r1, 8
lbl_80266720:
/* 80266720 00263680  A0 63 00 00 */	lhz r3, 0(r3)
/* 80266724 00263684  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80266728 00263688  7C 03 00 40 */	cmplw r3, r0
/* 8026672C 0026368C  41 82 01 E8 */	beq lbl_80266914
/* 80266730 00263690  B0 7F 02 DC */	sth r3, 0x2dc(r31)
/* 80266734 00263694  48 00 01 E0 */	b lbl_80266914
lbl_80266738:
/* 80266738 00263698  48 00 1F B5 */	bl GotoNextWaypoint__11CWallWalkerFR13CStateManager
/* 8026673C 0026369C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80266740 002636A0  38 61 00 60 */	addi r3, r1, 0x60
/* 80266744 002636A4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80266748 002636A8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 8026674C 002636AC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80266750 002636B0  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80266754 002636B4  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80266758 002636B8  C0 3F 02 E4 */	lfs f1, 0x2e4(r31)
/* 8026675C 002636BC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80266760 002636C0  C0 7F 02 E8 */	lfs f3, 0x2e8(r31)
/* 80266764 002636C4  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80266768 002636C8  EC 81 00 28 */	fsubs f4, f1, f0
/* 8026676C 002636CC  C0 3F 02 E0 */	lfs f1, 0x2e0(r31)
/* 80266770 002636D0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80266774 002636D4  EC 43 10 28 */	fsubs f2, f3, f2
/* 80266778 002636D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026677C 002636DC  D0 81 00 64 */	stfs f4, 0x64(r1)
/* 80266780 002636E0  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80266784 002636E4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80266788 002636E8  48 0A E1 71 */	bl Normalize__9CVector3fFv
/* 8026678C 002636EC  38 61 00 48 */	addi r3, r1, 0x48
/* 80266790 002636F0  38 81 00 60 */	addi r4, r1, 0x60
/* 80266794 002636F4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80266798 002636F8  48 00 2A 05 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 8026679C 002636FC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 802667A0 00263700  C0 C1 00 48 */	lfs f6, 0x48(r1)
/* 802667A4 00263704  3B C3 66 A0 */	addi r30, r3, skZero3f@l
/* 802667A8 00263708  C0 A1 00 4C */	lfs f5, 0x4c(r1)
/* 802667AC 0026370C  C0 81 00 50 */	lfs f4, 0x50(r1)
/* 802667B0 00263710  38 81 00 B0 */	addi r4, r1, 0xb0
/* 802667B4 00263714  C0 7E 00 00 */	lfs f3, 0(r30)
/* 802667B8 00263718  C0 5E 00 04 */	lfs f2, 4(r30)
/* 802667BC 0026371C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802667C0 00263720  C0 02 BA C8 */	lfs f0, lbl_805AD7E8@sda21(r2)
/* 802667C4 00263724  D0 C1 00 B0 */	stfs f6, 0xb0(r1)
/* 802667C8 00263728  D0 A1 00 B4 */	stfs f5, 0xb4(r1)
/* 802667CC 0026372C  D0 81 00 B8 */	stfs f4, 0xb8(r1)
/* 802667D0 00263730  D0 61 00 BC */	stfs f3, 0xbc(r1)
/* 802667D4 00263734  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 802667D8 00263738  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 802667DC 0026373C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 802667E0 00263740  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802667E4 00263744  38 63 00 04 */	addi r3, r3, 4
/* 802667E8 00263748  4B EC AF 31 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 802667EC 0026374C  7F E5 FB 78 */	mr r5, r31
/* 802667F0 00263750  38 61 00 30 */	addi r3, r1, 0x30
/* 802667F4 00263754  38 9F 04 5C */	addi r4, r31, 0x45c
/* 802667F8 00263758  38 DF 02 E0 */	addi r6, r31, 0x2e0
/* 802667FC 0026375C  4B ED 84 25 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 80266800 00263760  38 61 00 3C */	addi r3, r1, 0x3c
/* 80266804 00263764  38 81 00 30 */	addi r4, r1, 0x30
/* 80266808 00263768  38 A1 00 6C */	addi r5, r1, 0x6c
/* 8026680C 0026376C  48 00 29 91 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 80266810 00263770  C0 62 BA CC */	lfs f3, lbl_805AD7EC@sda21(r2)
/* 80266814 00263774  38 61 00 24 */	addi r3, r1, 0x24
/* 80266818 00263778  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8026681C 0026377C  38 81 00 54 */	addi r4, r1, 0x54
/* 80266820 00263780  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80266824 00263784  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80266828 00263788  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8026682C 0026378C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80266830 00263790  EC 23 00 72 */	fmuls f1, f3, f1
/* 80266834 00263794  EC 03 00 32 */	fmuls f0, f3, f0
/* 80266838 00263798  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8026683C 0026379C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80266840 002637A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80266844 002637A4  48 00 29 59 */	bl ProjectVectorToPlane__11CWallWalkerFRC9CVector3fRC9CVector3f
/* 80266848 002637A8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8026684C 002637AC  C0 C1 00 24 */	lfs f6, 0x24(r1)
/* 80266850 002637B0  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 80266854 002637B4  38 81 00 94 */	addi r4, r1, 0x94
/* 80266858 002637B8  C0 81 00 2C */	lfs f4, 0x2c(r1)
/* 8026685C 002637BC  C0 63 66 A0 */	lfs f3, skZero3f@l(r3)
/* 80266860 002637C0  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80266864 002637C4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80266868 002637C8  C0 02 BA CC */	lfs f0, lbl_805AD7EC@sda21(r2)
/* 8026686C 002637CC  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 80266870 002637D0  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 80266874 002637D4  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80266878 002637D8  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8026687C 002637DC  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 80266880 002637E0  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 80266884 002637E4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80266888 002637E8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 8026688C 002637EC  38 63 00 04 */	addi r3, r3, 4
/* 80266890 002637F0  4B EC AE 89 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80266894 002637F4  C1 3F 00 58 */	lfs f9, 0x58(r31)
/* 80266898 002637F8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 8026689C 002637FC  C1 1F 00 48 */	lfs f8, 0x48(r31)
/* 802668A0 00263800  38 81 00 78 */	addi r4, r1, 0x78
/* 802668A4 00263804  C0 02 BA CC */	lfs f0, lbl_805AD7EC@sda21(r2)
/* 802668A8 00263808  C0 BF 00 38 */	lfs f5, 0x38(r31)
/* 802668AC 0026380C  EC E0 02 32 */	fmuls f7, f0, f8
/* 802668B0 00263810  C0 63 66 A0 */	lfs f3, skZero3f@l(r3)
/* 802668B4 00263814  EC C0 02 72 */	fmuls f6, f0, f9
/* 802668B8 00263818  C0 5E 00 04 */	lfs f2, 4(r30)
/* 802668BC 0026381C  EC 80 01 72 */	fmuls f4, f0, f5
/* 802668C0 00263820  C0 3E 00 08 */	lfs f1, 8(r30)
/* 802668C4 00263824  C0 02 BA C8 */	lfs f0, lbl_805AD7E8@sda21(r2)
/* 802668C8 00263828  D0 81 00 78 */	stfs f4, 0x78(r1)
/* 802668CC 0026382C  D0 E1 00 7C */	stfs f7, 0x7c(r1)
/* 802668D0 00263830  D0 C1 00 80 */	stfs f6, 0x80(r1)
/* 802668D4 00263834  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 802668D8 00263838  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 802668DC 0026383C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 802668E0 00263840  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 802668E4 00263844  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 802668E8 00263848  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 802668EC 0026384C  38 63 00 04 */	addi r3, r3, 4
/* 802668F0 00263850  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 802668F4 00263854  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 802668F8 00263858  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 802668FC 0026385C  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 80266900 00263860  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 80266904 00263864  4B EC AE 15 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 80266908 00263868  48 00 00 0C */	b lbl_80266914
lbl_8026690C:
/* 8026690C 0026386C  A0 1F 02 DC */	lhz r0, 0x2dc(r31)
/* 80266910 00263870  B0 1F 07 20 */	sth r0, 0x720(r31)
lbl_80266914:
/* 80266914 00263874  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80266918 00263878  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 8026691C 0026387C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80266920 00263880  7C 08 03 A6 */	mtlr r0
/* 80266924 00263884  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80266928 00263888  4E 80 00 20 */	blr

.global Think__9CSeedlingFfR13CStateManager
Think__9CSeedlingFfR13CStateManager:
/* 8026692C 0026388C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80266930 00263890  7C 08 02 A6 */	mflr r0
/* 80266934 00263894  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80266938 00263898  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8026693C 0026389C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 80266940 002638A0  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80266944 002638A4  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, qr0
/* 80266948 002638A8  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8026694C 002638AC  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 80266950 002638B0  88 03 00 30 */	lbz r0, 0x30(r3)
/* 80266954 002638B4  FF E0 08 90 */	fmr f31, f1
/* 80266958 002638B8  7C 7E 1B 78 */	mr r30, r3
/* 8026695C 002638BC  7C 9F 23 78 */	mr r31, r4
/* 80266960 002638C0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80266964 002638C4  41 82 02 68 */	beq lbl_80266BCC
/* 80266968 002638C8  A8 7E 05 D4 */	lha r3, 0x5d4(r30)
/* 8026696C 002638CC  38 C0 00 00 */	li r6, 0
/* 80266970 002638D0  38 03 00 01 */	addi r0, r3, 1
/* 80266974 002638D4  B0 1E 05 D4 */	sth r0, 0x5d4(r30)
/* 80266978 002638D8  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 8026697C 002638DC  50 C0 2E B4 */	rlwimi r0, r6, 5, 0x1a, 0x1a
/* 80266980 002638E0  98 1E 05 D6 */	stb r0, 0x5d6(r30)
/* 80266984 002638E4  80 BE 00 04 */	lwz r5, 4(r30)
/* 80266988 002638E8  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 8026698C 002638EC  54 A3 18 38 */	slwi r3, r5, 3
/* 80266990 002638F0  90 A1 00 08 */	stw r5, 8(r1)
/* 80266994 002638F4  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80266998 002638F8  38 03 00 04 */	addi r0, r3, 4
/* 8026699C 002638FC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802669A0 00263900  7C 64 00 2E */	lwzx r3, r4, r0
/* 802669A4 00263904  88 03 00 F0 */	lbz r0, 0xf0(r3)
/* 802669A8 00263908  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802669AC 0026390C  41 82 00 0C */	beq lbl_802669B8
/* 802669B0 00263910  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 802669B4 00263914  80 C3 10 DC */	lwz r6, 0x10dc(r3)
lbl_802669B8:
/* 802669B8 00263918  2C 06 00 01 */	cmpwi r6, 1
/* 802669BC 0026391C  41 82 00 14 */	beq lbl_802669D0
/* 802669C0 00263920  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 802669C4 00263924  38 60 00 01 */	li r3, 1
/* 802669C8 00263928  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 802669CC 0026392C  98 1E 05 D6 */	stb r0, 0x5d6(r30)
lbl_802669D0:
/* 802669D0 00263930  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 802669D4 00263934  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 802669D8 00263938  40 82 00 D4 */	bne lbl_80266AAC
/* 802669DC 0026393C  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 802669E0 00263940  38 61 00 58 */	addi r3, r1, 0x58
/* 802669E4 00263944  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 802669E8 00263948  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 802669EC 0026394C  C0 64 00 40 */	lfs f3, 0x40(r4)
/* 802669F0 00263950  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 802669F4 00263954  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 802669F8 00263958  D0 A1 00 6C */	stfs f5, 0x6c(r1)
/* 802669FC 0026395C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80266A00 00263960  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80266A04 00263964  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80266A08 00263968  EC 44 10 28 */	fsubs f2, f4, f2
/* 80266A0C 0026396C  EC 25 08 28 */	fsubs f1, f5, f1
/* 80266A10 00263970  EC 03 00 28 */	fsubs f0, f3, f0
/* 80266A14 00263974  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 80266A18 00263978  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80266A1C 0026397C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80266A20 00263980  48 0A DE 99 */	bl Magnitude__9CVector3fCFv
/* 80266A24 00263984  FF C0 08 90 */	fmr f30, f1
/* 80266A28 00263988  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 80266A2C 0026398C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80266A30 00263990  40 81 00 7C */	ble lbl_80266AAC
/* 80266A34 00263994  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80266A38 00263998  38 61 00 4C */	addi r3, r1, 0x4c
/* 80266A3C 0026399C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80266A40 002639A0  38 81 00 40 */	addi r4, r1, 0x40
/* 80266A44 002639A4  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80266A48 002639A8  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 80266A4C 002639AC  EC 81 00 28 */	fsubs f4, f1, f0
/* 80266A50 002639B0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80266A54 002639B4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80266A58 002639B8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80266A5C 002639BC  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80266A60 002639C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80266A64 002639C4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80266A68 002639C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80266A6C 002639CC  48 0A DD E5 */	bl AsNormalized__9CVector3fCFv
/* 80266A70 002639D0  FC 20 F0 90 */	fmr f1, f30
/* 80266A74 002639D4  3C 60 80 5A */	lis r3, lbl_8059FD18@ha
/* 80266A78 002639D8  38 E3 FD 18 */	addi r7, r3, lbl_8059FD18@l
/* 80266A7C 002639DC  7F E4 FB 78 */	mr r4, r31
/* 80266A80 002639E0  38 61 00 70 */	addi r3, r1, 0x70
/* 80266A84 002639E4  38 A1 00 64 */	addi r5, r1, 0x64
/* 80266A88 002639E8  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80266A8C 002639EC  4B DE 65 0D */	bl RayStaticIntersection__13CStateManagerCFRC9CVector3fRC9CVector3ffRC15CMaterialFilter
/* 80266A90 002639F0  88 01 00 90 */	lbz r0, 0x90(r1)
/* 80266A94 002639F4  28 00 00 00 */	cmplwi r0, 0
/* 80266A98 002639F8  41 82 00 14 */	beq lbl_80266AAC
/* 80266A9C 002639FC  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80266AA0 00263A00  38 60 00 01 */	li r3, 1
/* 80266AA4 00263A04  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 80266AA8 00263A08  98 1E 05 D6 */	stb r0, 0x5d6(r30)
lbl_80266AAC:
/* 80266AAC 00263A0C  88 7E 05 D6 */	lbz r3, 0x5d6(r30)
/* 80266AB0 00263A10  54 60 DF FF */	rlwinm. r0, r3, 0x1b, 0x1f, 0x1f
/* 80266AB4 00263A14  41 82 00 18 */	beq lbl_80266ACC
/* 80266AB8 00263A18  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 80266ABC 00263A1C  38 60 00 00 */	li r3, 0
/* 80266AC0 00263A20  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80266AC4 00263A24  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 80266AC8 00263A28  48 00 01 04 */	b lbl_80266BCC
lbl_80266ACC:
/* 80266ACC 00263A2C  54 63 CF FE */	rlwinm r3, r3, 0x19, 0x1f, 0x1f
/* 80266AD0 00263A30  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 80266AD4 00263A34  7C 63 00 34 */	cntlzw r3, r3
/* 80266AD8 00263A38  FC 20 F8 90 */	fmr f1, f31
/* 80266ADC 00263A3C  54 64 DE 3E */	rlwinm r4, r3, 0x1b, 0x18, 0x1f
/* 80266AE0 00263A40  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 80266AE4 00263A44  7F C3 F3 78 */	mr r3, r30
/* 80266AE8 00263A48  98 1E 00 F8 */	stb r0, 0xf8(r30)
/* 80266AEC 00263A4C  7F E4 FB 78 */	mr r4, r31
/* 80266AF0 00263A50  48 00 1A 7D */	bl Think__11CWallWalkerFfR13CStateManager
/* 80266AF4 00263A54  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80266AF8 00263A58  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80266AFC 00263A5C  40 82 00 B8 */	bne lbl_80266BB4
/* 80266B00 00263A60  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 80266B04 00263A64  4B ED 35 C9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 80266B08 00263A68  C0 42 BA C8 */	lfs f2, lbl_805AD7E8@sda21(r2)
/* 80266B0C 00263A6C  C0 02 BA D0 */	lfs f0, lbl_805AD7F0@sda21(r2)
/* 80266B10 00263A70  EC 21 10 28 */	fsubs f1, f1, f2
/* 80266B14 00263A74  FC 20 0A 10 */	fabs f1, f1
/* 80266B18 00263A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266B1C 00263A7C  40 80 00 98 */	bge lbl_80266BB4
/* 80266B20 00263A80  88 1E 05 D6 */	lbz r0, 0x5d6(r30)
/* 80266B24 00263A84  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80266B28 00263A88  41 82 00 8C */	beq lbl_80266BB4
/* 80266B2C 00263A8C  C0 7E 01 3C */	lfs f3, 0x13c(r30)
/* 80266B30 00263A90  FC 40 F8 90 */	fmr f2, f31
/* 80266B34 00263A94  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80266B38 00263A98  7F C3 F3 78 */	mr r3, r30
/* 80266B3C 00263A9C  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80266B40 00263AA0  EC DF 00 F2 */	fmuls f6, f31, f3
/* 80266B44 00263AA4  EC BF 00 32 */	fmuls f5, f31, f0
/* 80266B48 00263AA8  C0 02 BA D4 */	lfs f0, lbl_805AD7F4@sda21(r2)
/* 80266B4C 00263AAC  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80266B50 00263AB0  C1 9E 00 60 */	lfs f12, 0x60(r30)
/* 80266B54 00263AB4  7F E4 FB 78 */	mr r4, r31
/* 80266B58 00263AB8  EC E0 01 72 */	fmuls f7, f0, f5
/* 80266B5C 00263ABC  ED 00 01 B2 */	fmuls f8, f0, f6
/* 80266B60 00263AC0  C1 7E 00 50 */	lfs f11, 0x50(r30)
/* 80266B64 00263AC4  EC 80 00 72 */	fmuls f4, f0, f1
/* 80266B68 00263AC8  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 80266B6C 00263ACC  ED 2C 38 2A */	fadds f9, f12, f7
/* 80266B70 00263AD0  ED 4B 40 2A */	fadds f10, f11, f8
/* 80266B74 00263AD4  EC 03 20 2A */	fadds f0, f3, f4
/* 80266B78 00263AD8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80266B7C 00263ADC  38 A1 00 34 */	addi r5, r1, 0x34
/* 80266B80 00263AE0  D1 41 00 38 */	stfs f10, 0x38(r1)
/* 80266B84 00263AE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80266B88 00263AE8  D1 21 00 3C */	stfs f9, 0x3c(r1)
/* 80266B8C 00263AEC  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 80266B90 00263AF0  C0 3E 05 AC */	lfs f1, 0x5ac(r30)
/* 80266B94 00263AF4  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80266B98 00263AF8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80266B9C 00263AFC  D1 01 00 20 */	stfs f8, 0x20(r1)
/* 80266BA0 00263B00  D0 E1 00 24 */	stfs f7, 0x24(r1)
/* 80266BA4 00263B04  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80266BA8 00263B08  D1 61 00 2C */	stfs f11, 0x2c(r1)
/* 80266BAC 00263B0C  D1 81 00 30 */	stfs f12, 0x30(r1)
/* 80266BB0 00263B10  48 00 1E 99 */	bl AlignToFloor__11CWallWalkerFR13CStateManagerfRC9CVector3ff
lbl_80266BB4:
/* 80266BB4 00263B14  C0 3E 07 1C */	lfs f1, 0x71c(r30)
/* 80266BB8 00263B18  C0 02 BA C8 */	lfs f0, lbl_805AD7E8@sda21(r2)
/* 80266BBC 00263B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266BC0 00263B20  40 81 00 0C */	ble lbl_80266BCC
/* 80266BC4 00263B24  EC 01 F8 28 */	fsubs f0, f1, f31
/* 80266BC8 00263B28  D0 1E 07 1C */	stfs f0, 0x71c(r30)
lbl_80266BCC:
/* 80266BCC 00263B2C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 80266BD0 00263B30  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80266BD4 00263B34  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, qr0
/* 80266BD8 00263B38  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80266BDC 00263B3C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 80266BE0 00263B40  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80266BE4 00263B44  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 80266BE8 00263B48  7C 08 03 A6 */	mtlr r0
/* 80266BEC 00263B4C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80266BF0 00263B50  4E 80 00 20 */	blr

.global Render__9CSeedlingCFRC13CStateManager
Render__9CSeedlingCFRC13CStateManager:
/* 80266BF4 00263B54  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80266BF8 00263B58  7C 08 02 A6 */	mflr r0
/* 80266BFC 00263B5C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80266C00 00263B60  BF 21 00 84 */	stmw r25, 0x84(r1)
/* 80266C04 00263B64  7C 7E 1B 78 */	mr r30, r3
/* 80266C08 00263B68  7C 9F 23 78 */	mr r31, r4
/* 80266C0C 00263B6C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 80266C10 00263B70  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 80266C14 00263B74  41 82 00 E8 */	beq lbl_80266CFC
/* 80266C18 00263B78  80 1E 06 BC */	lwz r0, 0x6bc(r30)
/* 80266C1C 00263B7C  28 00 00 00 */	cmplwi r0, 0
/* 80266C20 00263B80  41 82 00 DC */	beq lbl_80266CFC
/* 80266C24 00263B84  88 1E 07 22 */	lbz r0, 0x722(r30)
/* 80266C28 00263B88  54 05 CF FF */	rlwinm. r5, r0, 0x19, 0x1f, 0x1f
/* 80266C2C 00263B8C  41 82 00 0C */	beq lbl_80266C38
/* 80266C30 00263B90  3B 60 00 00 */	li r27, 0
/* 80266C34 00263B94  48 00 00 1C */	b lbl_80266C50
lbl_80266C38:
/* 80266C38 00263B98  54 04 D7 FE */	rlwinm r4, r0, 0x1a, 0x1f, 0x1f
/* 80266C3C 00263B9C  38 00 00 06 */	li r0, 6
/* 80266C40 00263BA0  7C 64 00 D0 */	neg r3, r4
/* 80266C44 00263BA4  7C 63 23 78 */	or r3, r3, r4
/* 80266C48 00263BA8  7C 63 FE 70 */	srawi r3, r3, 0x1f
/* 80266C4C 00263BAC  7C 1B 18 38 */	and r27, r0, r3
lbl_80266C50:
/* 80266C50 00263BB0  28 05 00 00 */	cmplwi r5, 0
/* 80266C54 00263BB4  3B 80 00 06 */	li r28, 6
/* 80266C58 00263BB8  41 82 00 08 */	beq lbl_80266C60
/* 80266C5C 00263BBC  3B 80 00 0C */	li r28, 0xc
lbl_80266C60:
/* 80266C60 00263BC0  3C 60 80 3D */	lis r3, lbl_803D52B0@ha
/* 80266C64 00263BC4  3B 41 00 0C */	addi r26, r1, 0xc
/* 80266C68 00263BC8  3B A3 52 B0 */	addi r29, r3, lbl_803D52B0@l
/* 80266C6C 00263BCC  3B 20 00 00 */	li r25, 0
/* 80266C70 00263BD0  48 00 00 84 */	b lbl_80266CF4
lbl_80266C74:
/* 80266C74 00263BD4  7C 19 DA 14 */	add r0, r25, r27
/* 80266C78 00263BD8  38 61 00 10 */	addi r3, r1, 0x10
/* 80266C7C 00263BDC  54 00 10 3A */	slwi r0, r0, 2
/* 80266C80 00263BE0  7C 9D 00 2E */	lwzx r4, r29, r0
/* 80266C84 00263BE4  4B D9 E0 35 */	bl string_l__4rstlFPCc
/* 80266C88 00263BE8  7F C4 F3 78 */	mr r4, r30
/* 80266C8C 00263BEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80266C90 00263BF0  38 A1 00 10 */	addi r5, r1, 0x10
/* 80266C94 00263BF4  4B E1 1C E5 */	bl "GetLctrTransform__10CPatternedCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80266C98 00263BF8  38 61 00 50 */	addi r3, r1, 0x50
/* 80266C9C 00263BFC  38 81 00 20 */	addi r4, r1, 0x20
/* 80266CA0 00263C00  48 0A BE D5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 80266CA4 00263C04  38 61 00 10 */	addi r3, r1, 0x10
/* 80266CA8 00263C08  48 0D 6E 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80266CAC 00263C0C  C0 22 BA CC */	lfs f1, lbl_805AD7EC@sda21(r2)
/* 80266CB0 00263C10  38 80 00 00 */	li r4, 0
/* 80266CB4 00263C14  38 00 00 03 */	li r0, 3
/* 80266CB8 00263C18  98 81 00 08 */	stb r4, 8(r1)
/* 80266CBC 00263C1C  FC 40 08 90 */	fmr f2, f1
/* 80266CC0 00263C20  7F 43 D3 78 */	mr r3, r26
/* 80266CC4 00263C24  FC 60 08 90 */	fmr f3, f1
/* 80266CC8 00263C28  98 81 00 09 */	stb r4, 9(r1)
/* 80266CCC 00263C2C  FC 80 08 90 */	fmr f4, f1
/* 80266CD0 00263C30  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80266CD4 00263C34  48 0F C7 19 */	bl __ct__6CColorFffff
/* 80266CD8 00263C38  80 7E 06 BC */	lwz r3, 0x6bc(r30)
/* 80266CDC 00263C3C  7F E4 FB 78 */	mr r4, r31
/* 80266CE0 00263C40  80 DE 00 90 */	lwz r6, 0x90(r30)
/* 80266CE4 00263C44  38 A1 00 50 */	addi r5, r1, 0x50
/* 80266CE8 00263C48  38 E1 00 08 */	addi r7, r1, 8
/* 80266CEC 00263C4C  4B EA E0 D1 */	bl Render__10CModelDataCFRC13CStateManagerRC12CTransform4fPC12CActorLightsRC11CModelFlags
/* 80266CF0 00263C50  3B 39 00 01 */	addi r25, r25, 1
lbl_80266CF4:
/* 80266CF4 00263C54  7C 19 E0 00 */	cmpw r25, r28
/* 80266CF8 00263C58  41 80 FF 7C */	blt lbl_80266C74
lbl_80266CFC:
/* 80266CFC 00263C5C  7F C3 F3 78 */	mr r3, r30
/* 80266D00 00263C60  7F E4 FB 78 */	mr r4, r31
/* 80266D04 00263C64  48 00 19 C9 */	bl Render__11CWallWalkerCFRC13CStateManager
/* 80266D08 00263C68  BB 21 00 84 */	lmw r25, 0x84(r1)
/* 80266D0C 00263C6C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80266D10 00263C70  7C 08 03 A6 */	mtlr r0
/* 80266D14 00263C74  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80266D18 00263C78  4E 80 00 20 */	blr

.global AcceptScriptMsg__9CSeedlingF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__9CSeedlingF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 80266D1C 00263C7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80266D20 00263C80  7C 08 02 A6 */	mflr r0
/* 80266D24 00263C84  90 01 00 44 */	stw r0, 0x44(r1)
/* 80266D28 00263C88  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80266D2C 00263C8C  7C 7F 1B 78 */	mr r31, r3
/* 80266D30 00263C90  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80266D34 00263C94  7C DE 33 78 */	mr r30, r6
/* 80266D38 00263C98  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80266D3C 00263C9C  7C 9D 23 78 */	mr r29, r4
/* 80266D40 00263CA0  A0 05 00 00 */	lhz r0, 0(r5)
/* 80266D44 00263CA4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80266D48 00263CA8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80266D4C 00263CAC  4B E1 5E 2D */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 80266D50 00263CB0  2C 1D 00 21 */	cmpwi r29, 0x21
/* 80266D54 00263CB4  41 82 00 20 */	beq lbl_80266D74
/* 80266D58 00263CB8  40 80 00 10 */	bge lbl_80266D68
/* 80266D5C 00263CBC  2C 1D 00 01 */	cmpwi r29, 1
/* 80266D60 00263CC0  41 82 00 90 */	beq lbl_80266DF0
/* 80266D64 00263CC4  48 00 00 C8 */	b lbl_80266E2C
lbl_80266D68:
/* 80266D68 00263CC8  2C 1D 00 23 */	cmpwi r29, 0x23
/* 80266D6C 00263CCC  41 82 00 54 */	beq lbl_80266DC0
/* 80266D70 00263CD0  48 00 00 BC */	b lbl_80266E2C
lbl_80266D74:
/* 80266D74 00263CD4  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 80266D78 00263CD8  7F C4 F3 78 */	mr r4, r30
/* 80266D7C 00263CDC  4B ED 3F 75 */	bl Activate__15CBodyControllerFR13CStateManager
/* 80266D80 00263CE0  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80266D84 00263CE4  38 61 00 18 */	addi r3, r1, 0x18
/* 80266D88 00263CE8  4B EA E8 3D */	bl GetBounds__10CModelDataCFv
/* 80266D8C 00263CEC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80266D90 00263CF0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80266D94 00263CF4  90 7F 07 04 */	stw r3, 0x704(r31)
/* 80266D98 00263CF8  90 1F 07 08 */	stw r0, 0x708(r31)
/* 80266D9C 00263CFC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80266DA0 00263D00  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 80266DA4 00263D04  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80266DA8 00263D08  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80266DAC 00263D0C  90 7F 07 10 */	stw r3, 0x710(r31)
/* 80266DB0 00263D10  90 1F 07 14 */	stw r0, 0x714(r31)
/* 80266DB4 00263D14  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80266DB8 00263D18  90 1F 07 18 */	stw r0, 0x718(r31)
/* 80266DBC 00263D1C  48 00 00 70 */	b lbl_80266E2C
lbl_80266DC0:
/* 80266DC0 00263D20  80 BF 00 04 */	lwz r5, 4(r31)
/* 80266DC4 00263D24  80 9E 08 50 */	lwz r4, 0x850(r30)
/* 80266DC8 00263D28  54 A3 18 38 */	slwi r3, r5, 3
/* 80266DCC 00263D2C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80266DD0 00263D30  80 84 00 20 */	lwz r4, 0x20(r4)
/* 80266DD4 00263D34  38 03 00 04 */	addi r0, r3, 4
/* 80266DD8 00263D38  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80266DDC 00263D3C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80266DE0 00263D40  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 80266DE4 00263D44  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 80266DE8 00263D48  90 1F 05 D8 */	stw r0, 0x5d8(r31)
/* 80266DEC 00263D4C  48 00 00 40 */	b lbl_80266E2C
lbl_80266DF0:
/* 80266DF0 00263D50  88 1F 05 D6 */	lbz r0, 0x5d6(r31)
/* 80266DF4 00263D54  38 60 00 00 */	li r3, 0
/* 80266DF8 00263D58  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 80266DFC 00263D5C  7F E4 FB 78 */	mr r4, r31
/* 80266E00 00263D60  98 1F 05 D6 */	stb r0, 0x5d6(r31)
/* 80266E04 00263D64  7F C5 F3 78 */	mr r5, r30
/* 80266E08 00263D68  38 61 00 08 */	addi r3, r1, 8
/* 80266E0C 00263D6C  38 C0 00 0D */	li r6, 0xd
/* 80266E10 00263D70  38 E0 00 06 */	li r7, 6
/* 80266E14 00263D74  4B F8 E1 85 */	bl GetWaypointForState__10CPatternedFR13CStateManager18EScriptObjectState
/* 80266E18 00263D78  A0 61 00 08 */	lhz r3, 8(r1)
/* 80266E1C 00263D7C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 80266E20 00263D80  7C 03 00 40 */	cmplw r3, r0
/* 80266E24 00263D84  41 82 00 08 */	beq lbl_80266E2C
/* 80266E28 00263D88  B0 7F 02 DC */	sth r3, 0x2dc(r31)
lbl_80266E2C:
/* 80266E2C 00263D8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80266E30 00263D90  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80266E34 00263D94  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80266E38 00263D98  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80266E3C 00263D9C  7C 08 03 A6 */	mtlr r0
/* 80266E40 00263DA0  38 21 00 40 */	addi r1, r1, 0x40
/* 80266E44 00263DA4  4E 80 00 20 */	blr

.global __dt__9CSeedlingFv
__dt__9CSeedlingFv:
/* 80266E48 00263DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266E4C 00263DAC  7C 08 02 A6 */	mflr r0
/* 80266E50 00263DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80266E54 00263DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80266E58 00263DB8  7C 9F 23 78 */	mr r31, r4
/* 80266E5C 00263DBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80266E60 00263DC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80266E64 00263DC4  41 82 00 C8 */	beq lbl_80266F2C
/* 80266E68 00263DC8  3C 60 80 3F */	lis r3, lbl_803E9E10@ha
/* 80266E6C 00263DCC  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80266E70 00263DD0  38 03 9E 10 */	addi r0, r3, lbl_803E9E10@l
/* 80266E74 00263DD4  90 1E 00 00 */	stw r0, 0(r30)
/* 80266E78 00263DD8  41 82 00 20 */	beq lbl_80266E98
/* 80266E7C 00263DDC  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80266E80 00263DE0  41 82 00 18 */	beq lbl_80266E98
/* 80266E84 00263DE4  34 1E 06 C0 */	addic. r0, r30, 0x6c0
/* 80266E88 00263DE8  41 82 00 10 */	beq lbl_80266E98
/* 80266E8C 00263DEC  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80266E90 00263DF0  38 80 00 00 */	li r4, 0
/* 80266E94 00263DF4  48 0D 9F AD */	bl __dt__6CTokenFv
lbl_80266E98:
/* 80266E98 00263DF8  34 1E 06 BC */	addic. r0, r30, 0x6bc
/* 80266E9C 00263DFC  41 82 00 10 */	beq lbl_80266EAC
/* 80266EA0 00263E00  80 7E 06 BC */	lwz r3, 0x6bc(r30)
/* 80266EA4 00263E04  38 80 00 01 */	li r4, 1
/* 80266EA8 00263E08  4B EA FB A5 */	bl __dt__10CModelDataFv
lbl_80266EAC:
/* 80266EAC 00263E0C  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 80266EB0 00263E10  41 82 00 60 */	beq lbl_80266F10
/* 80266EB4 00263E14  34 1E 05 DC */	addic. r0, r30, 0x5dc
/* 80266EB8 00263E18  41 82 00 58 */	beq lbl_80266F10
/* 80266EBC 00263E1C  80 BE 05 DC */	lwz r5, 0x5dc(r30)
/* 80266EC0 00263E20  38 60 00 00 */	li r3, 0
/* 80266EC4 00263E24  2C 05 00 00 */	cmpwi r5, 0
/* 80266EC8 00263E28  40 81 00 40 */	ble lbl_80266F08
/* 80266ECC 00263E2C  2C 05 00 08 */	cmpwi r5, 8
/* 80266ED0 00263E30  38 85 FF F8 */	addi r4, r5, -8
/* 80266ED4 00263E34  40 81 00 20 */	ble lbl_80266EF4
/* 80266ED8 00263E38  38 04 00 07 */	addi r0, r4, 7
/* 80266EDC 00263E3C  54 00 E8 FE */	srwi r0, r0, 3
/* 80266EE0 00263E40  7C 09 03 A6 */	mtctr r0
/* 80266EE4 00263E44  2C 04 00 00 */	cmpwi r4, 0
/* 80266EE8 00263E48  40 81 00 0C */	ble lbl_80266EF4
lbl_80266EEC:
/* 80266EEC 00263E4C  38 63 00 08 */	addi r3, r3, 8
/* 80266EF0 00263E50  42 00 FF FC */	bdnz lbl_80266EEC
lbl_80266EF4:
/* 80266EF4 00263E54  7C 03 28 50 */	subf r0, r3, r5
/* 80266EF8 00263E58  7C 09 03 A6 */	mtctr r0
/* 80266EFC 00263E5C  7C 03 28 00 */	cmpw r3, r5
/* 80266F00 00263E60  40 80 00 08 */	bge lbl_80266F08
lbl_80266F04:
/* 80266F04 00263E64  42 00 00 00 */	bdnz lbl_80266F04
lbl_80266F08:
/* 80266F08 00263E68  38 00 00 00 */	li r0, 0
/* 80266F0C 00263E6C  90 1E 05 DC */	stw r0, 0x5dc(r30)
lbl_80266F10:
/* 80266F10 00263E70  7F C3 F3 78 */	mr r3, r30
/* 80266F14 00263E74  38 80 00 00 */	li r4, 0
/* 80266F18 00263E78  4B EE FB 5D */	bl __dt__11CWallWalkerFv
/* 80266F1C 00263E7C  7F E0 07 35 */	extsh. r0, r31
/* 80266F20 00263E80  40 81 00 0C */	ble lbl_80266F2C
/* 80266F24 00263E84  7F C3 F3 78 */	mr r3, r30
/* 80266F28 00263E88  48 0A EA 09 */	bl Free__7CMemoryFPCv
lbl_80266F2C:
/* 80266F2C 00263E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266F30 00263E90  7F C3 F3 78 */	mr r3, r30
/* 80266F34 00263E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80266F38 00263E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80266F3C 00263E9C  7C 08 03 A6 */	mtlr r0
/* 80266F40 00263EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80266F44 00263EA4  4E 80 00 20 */	blr

.global __ct__9CSeedlingF
__ct__9CSeedlingF:
/* 80266F48 00263EA8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80266F4C 00263EAC  7C 08 02 A6 */	mflr r0
/* 80266F50 00263EB0  FC 00 08 90 */	fmr f0, f1
/* 80266F54 00263EB4  7C CC 33 78 */	mr r12, r6
/* 80266F58 00263EB8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80266F5C 00263EBC  FC 20 18 90 */	fmr f1, f3
/* 80266F60 00263EC0  7C A6 2B 78 */	mr r6, r5
/* 80266F64 00263EC4  39 60 00 00 */	li r11, 0
/* 80266F68 00263EC8  BF 21 00 54 */	stmw r25, 0x54(r1)
/* 80266F6C 00263ECC  7D 39 4B 78 */	mr r25, r9
/* 80266F70 00263ED0  7D 1B 43 78 */	mr r27, r8
/* 80266F74 00263ED4  7C E9 3B 78 */	mr r9, r7
/* 80266F78 00263ED8  FC 60 00 90 */	fmr f3, f0
/* 80266F7C 00263EDC  83 81 00 78 */	lwz r28, 0x78(r1)
/* 80266F80 00263EE0  83 A1 00 7C */	lwz r29, 0x7c(r1)
/* 80266F84 00263EE4  7C 7A 1B 78 */	mr r26, r3
/* 80266F88 00263EE8  83 C1 00 80 */	lwz r30, 0x80(r1)
/* 80266F8C 00263EEC  7D 88 63 78 */	mr r8, r12
/* 80266F90 00263EF0  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 80266F94 00263EF4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80266F98 00263EF8  38 E0 00 00 */	li r7, 0
/* 80266F9C 00263EFC  A0 04 00 00 */	lhz r0, 0(r4)
/* 80266FA0 00263F00  38 80 00 06 */	li r4, 6
/* 80266FA4 00263F04  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80266FA8 00263F08  38 00 00 01 */	li r0, 1
/* 80266FAC 00263F0C  93 21 00 08 */	stw r25, 8(r1)
/* 80266FB0 00263F10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80266FB4 00263F14  38 00 00 04 */	li r0, 4
/* 80266FB8 00263F18  91 61 00 10 */	stw r11, 0x10(r1)
/* 80266FBC 00263F1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80266FC0 00263F20  38 80 00 20 */	li r4, 0x20
/* 80266FC4 00263F24  91 41 00 18 */	stw r10, 0x18(r1)
/* 80266FC8 00263F28  7F 6A DB 78 */	mr r10, r27
/* 80266FCC 00263F2C  91 61 00 1C */	stw r11, 0x1c(r1)
/* 80266FD0 00263F30  90 01 00 20 */	stw r0, 0x20(r1)
/* 80266FD4 00263F34  91 61 00 24 */	stw r11, 0x24(r1)
/* 80266FD8 00263F38  48 00 22 89 */	bl "__ct__11CWallWalkerFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUiUi"
/* 80266FDC 00263F3C  3C 60 80 3F */	lis r3, lbl_803E9E10@ha
/* 80266FE0 00263F40  C0 22 BA CC */	lfs f1, lbl_805AD7EC@sda21(r2)
/* 80266FE4 00263F44  38 03 9E 10 */	addi r0, r3, lbl_803E9E10@l
/* 80266FE8 00263F48  38 7A 05 D8 */	addi r3, r26, 0x5d8
/* 80266FEC 00263F4C  90 1A 00 00 */	stw r0, 0(r26)
/* 80266FF0 00263F50  FC 40 08 90 */	fmr f2, f1
/* 80266FF4 00263F54  38 80 00 00 */	li r4, 0
/* 80266FF8 00263F58  38 A0 00 01 */	li r5, 1
/* 80266FFC 00263F5C  80 D9 01 0C */	lwz r6, 0x10c(r25)
/* 80267000 00263F60  4B F6 1D 95 */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 80267004 00263F64  3C 80 80 3D */	lis r4, lbl_803D52E0@ha
/* 80267008 00263F68  38 60 00 4C */	li r3, 0x4c
/* 8026700C 00263F6C  38 84 52 E0 */	addi r4, r4, lbl_803D52E0@l
/* 80267010 00263F70  38 A0 00 00 */	li r5, 0
/* 80267014 00263F74  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80267018 00263F78  48 0A E8 55 */	bl __nw__FUlPCcPCc
/* 8026701C 00263F7C  7C 60 1B 79 */	or. r0, r3, r3
/* 80267020 00263F80  41 82 00 3C */	beq lbl_8026705C
/* 80267024 00263F84  C0 5B 00 00 */	lfs f2, 0(r27)
/* 80267028 00263F88  38 81 00 2C */	addi r4, r1, 0x2c
/* 8026702C 00263F8C  80 1C 00 00 */	lwz r0, 0(r28)
/* 80267030 00263F90  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80267034 00263F94  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80267038 00263F98  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8026703C 00263F9C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80267040 00263FA0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80267044 00263FA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80267048 00263FA8  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8026704C 00263FAC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80267050 00263FB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80267054 00263FB4  4B EA FD 09 */	bl __ct__10CModelDataFRC10CStaticRes
/* 80267058 00263FB8  7C 60 1B 78 */	mr r0, r3
lbl_8026705C:
/* 8026705C 00263FBC  90 1A 06 BC */	stw r0, 0x6bc(r26)
/* 80267060 00263FC0  7F C5 F3 78 */	mr r5, r30
/* 80267064 00263FC4  38 7A 06 C0 */	addi r3, r26, 0x6c0
/* 80267068 00263FC8  80 9D 00 00 */	lwz r4, 0(r29)
/* 8026706C 00263FCC  4B FB 50 3D */	bl __ct__15CProjectileInfoFUiRC11CDamageInfo
/* 80267070 00263FD0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80267074 00263FD4  3C 60 80 5A */	lis r3, lbl_805A6784@ha
/* 80267078 00263FD8  38 C3 67 84 */	addi r6, r3, lbl_805A6784@l
/* 8026707C 00263FDC  C0 02 BA C8 */	lfs f0, lbl_805AD7E8@sda21(r2)
/* 80267080 00263FE0  90 1A 06 E8 */	stw r0, 0x6e8(r26)
/* 80267084 00263FE4  38 A0 00 01 */	li r5, 1
/* 80267088 00263FE8  38 80 00 00 */	li r4, 0
/* 8026708C 00263FEC  38 7A 06 C0 */	addi r3, r26, 0x6c0
/* 80267090 00263FF0  88 1F 00 04 */	lbz r0, 4(r31)
/* 80267094 00263FF4  98 1A 06 EC */	stb r0, 0x6ec(r26)
/* 80267098 00263FF8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8026709C 00263FFC  D0 3A 06 F0 */	stfs f1, 0x6f0(r26)
/* 802670A0 00264000  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802670A4 00264004  D0 3A 06 F4 */	stfs f1, 0x6f4(r26)
/* 802670A8 00264008  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 802670AC 0026400C  D0 3A 06 F8 */	stfs f1, 0x6f8(r26)
/* 802670B0 00264010  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 802670B4 00264014  D0 3A 06 FC */	stfs f1, 0x6fc(r26)
/* 802670B8 00264018  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 802670BC 0026401C  98 1A 07 00 */	stb r0, 0x700(r26)
/* 802670C0 00264020  C0 26 00 00 */	lfs f1, 0(r6)
/* 802670C4 00264024  D0 3A 07 04 */	stfs f1, 0x704(r26)
/* 802670C8 00264028  C0 26 00 04 */	lfs f1, 4(r6)
/* 802670CC 0026402C  D0 3A 07 08 */	stfs f1, 0x708(r26)
/* 802670D0 00264030  C0 26 00 08 */	lfs f1, 8(r6)
/* 802670D4 00264034  D0 3A 07 0C */	stfs f1, 0x70c(r26)
/* 802670D8 00264038  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 802670DC 0026403C  D0 3A 07 10 */	stfs f1, 0x710(r26)
/* 802670E0 00264040  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 802670E4 00264044  D0 3A 07 14 */	stfs f1, 0x714(r26)
/* 802670E8 00264048  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 802670EC 0026404C  D0 3A 07 18 */	stfs f1, 0x718(r26)
/* 802670F0 00264050  D0 1A 07 1C */	stfs f0, 0x71c(r26)
/* 802670F4 00264054  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 802670F8 00264058  B0 1A 07 20 */	sth r0, 0x720(r26)
/* 802670FC 0026405C  88 1A 07 22 */	lbz r0, 0x722(r26)
/* 80267100 00264060  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 80267104 00264064  98 1A 07 22 */	stb r0, 0x722(r26)
/* 80267108 00264068  88 1A 07 22 */	lbz r0, 0x722(r26)
/* 8026710C 0026406C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 80267110 00264070  98 1A 07 22 */	stb r0, 0x722(r26)
/* 80267114 00264074  48 0D 9C 71 */	bl Lock__6CTokenFv
/* 80267118 00264078  7F 43 D3 78 */	mr r3, r26
/* 8026711C 0026407C  38 80 00 00 */	li r4, 0
/* 80267120 00264080  4B DE BC 4D */	bl CreateShadow__6CActorFb
/* 80267124 00264084  7F 43 D3 78 */	mr r3, r26
/* 80267128 00264088  4B E1 07 6D */	bl MakeThermalColdAndHot__10CPatternedFv
/* 8026712C 0026408C  7F 43 D3 78 */	mr r3, r26
/* 80267130 00264090  BB 21 00 54 */	lmw r25, 0x54(r1)
/* 80267134 00264094  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80267138 00264098  7C 08 03 A6 */	mtlr r0
/* 8026713C 0026409C  38 21 00 70 */	addi r1, r1, 0x70
/* 80267140 002640A0  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AD7E8
lbl_805AD7E8:
	# ROM: 0x3FA088
	.4byte 0

.global lbl_805AD7EC
lbl_805AD7EC:
	# ROM: 0x3FA08C
	.float 1.0

.global lbl_805AD7F0
lbl_805AD7F0:
	# ROM: 0x3FA090
	.4byte 0x3727C5AC

.global lbl_805AD7F4
lbl_805AD7F4:
	# ROM: 0x3FA094
	.float 2.0


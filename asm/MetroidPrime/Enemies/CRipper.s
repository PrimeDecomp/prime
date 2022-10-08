.include "macros.inc"

.section .data
.balign 8

.global lbl_803E3348
lbl_803E3348:
	# ROM: 0x3E0348
	.4byte 0
	.4byte 0
	.4byte __dt__7CRipperFv
	.4byte Accept__7CRipperFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__7CRipperFfR13CStateManager
	.4byte AcceptScriptMsg__7CRipperF20EScriptObjectMessage9TUniqueIdR13CStateManager
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
	.4byte GetCollisionResponseType__7CRipperFRC9CVector3fRC9CVector3fRC11CWeaponModei
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
	.4byte KnockBack__7CRipperFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__3CAiCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__3CAiCFv
	.4byte Patrol__7CRipperFR13CStateManager9EStateMsgf
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
	.4byte PathOver__7CRipperFR13CStateManagerf
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
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A7878
lbl_805A7878:
	# ROM: 0x3F5218
	.4byte 0x00000013

.global lbl_805A787C
lbl_805A787C:
	# ROM: 0x3F521C
	.4byte 0x00000026

.global lbl_805A7880
lbl_805A7880:
	# ROM: 0x3F5220
	.4byte 0x00000014

.global lbl_805A7884
lbl_805A7884:
	# ROM: 0x3F5224
	.4byte 0x00000031

.section .text, "ax"

.global RemovePlatform__7CRipperFR13CStateManager
RemovePlatform__7CRipperFR13CStateManager:
/* 8015BDCC 00158D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015BDD0 00158D30  7C 08 02 A6 */	mflr r0
/* 8015BDD4 00158D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015BDD8 00158D38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015BDDC 00158D3C  7C 7F 1B 78 */	mr r31, r3
/* 8015BDE0 00158D40  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015BDE4 00158D44  A0 63 05 9A */	lhz r3, 0x59a(r3)
/* 8015BDE8 00158D48  7C 03 00 40 */	cmplw r3, r0
/* 8015BDEC 00158D4C  41 82 00 20 */	beq lbl_8015BE0C
/* 8015BDF0 00158D50  A0 1F 05 9A */	lhz r0, 0x59a(r31)
/* 8015BDF4 00158D54  7C 83 23 78 */	mr r3, r4
/* 8015BDF8 00158D58  38 81 00 08 */	addi r4, r1, 8
/* 8015BDFC 00158D5C  B0 01 00 08 */	sth r0, 8(r1)
/* 8015BE00 00158D60  4B EF 04 6D */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8015BE04 00158D64  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015BE08 00158D68  B0 1F 05 9A */	sth r0, 0x59a(r31)
lbl_8015BE0C:
/* 8015BE0C 00158D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015BE10 00158D70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015BE14 00158D74  7C 08 03 A6 */	mtlr r0
/* 8015BE18 00158D78  38 21 00 20 */	addi r1, r1, 0x20
/* 8015BE1C 00158D7C  4E 80 00 20 */	blr

.global AddPlatform__7CRipperFR13CStateManager
AddPlatform__7CRipperFR13CStateManager:
/* 8015BE20 00158D80  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8015BE24 00158D84  7C 08 02 A6 */	mflr r0
/* 8015BE28 00158D88  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8015BE2C 00158D8C  BF 41 00 D8 */	stmw r26, 0xd8(r1)
/* 8015BE30 00158D90  7C 7D 1B 78 */	mr r29, r3
/* 8015BE34 00158D94  7C 9E 23 78 */	mr r30, r4
/* 8015BE38 00158D98  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015BE3C 00158D9C  A0 63 05 9A */	lhz r3, 0x59a(r3)
/* 8015BE40 00158DA0  7C 03 00 40 */	cmplw r3, r0
/* 8015BE44 00158DA4  40 82 01 DC */	bne lbl_8015C020
/* 8015BE48 00158DA8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8015BE4C 00158DAC  4B EF 12 91 */	bl AllocateUniqueId__13CStateManagerFv
/* 8015BE50 00158DB0  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 8015BE54 00158DB4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8015BE58 00158DB8  38 9D 00 34 */	addi r4, r29, 0x34
/* 8015BE5C 00158DBC  B0 1D 05 9A */	sth r0, 0x59a(r29)
/* 8015BE60 00158DC0  83 9D 00 64 */	lwz r28, 0x64(r29)
/* 8015BE64 00158DC4  48 1B 6D DD */	bl GetRotation__12CTransform4fCFv
/* 8015BE68 00158DC8  7F 84 E3 78 */	mr r4, r28
/* 8015BE6C 00158DCC  38 61 00 74 */	addi r3, r1, 0x74
/* 8015BE70 00158DD0  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8015BE74 00158DD4  4B FB 99 41 */	bl GetBounds__10CModelDataCFRC12CTransform4f
/* 8015BE78 00158DD8  C0 A1 00 74 */	lfs f5, 0x74(r1)
/* 8015BE7C 00158DDC  3C 60 80 3D */	lis r3, lbl_803D0358@ha
/* 8015BE80 00158DE0  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 8015BE84 00158DE4  38 83 03 58 */	addi r4, r3, lbl_803D0358@l
/* 8015BE88 00158DE8  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 8015BE8C 00158DEC  3B 80 00 00 */	li r28, 0
/* 8015BE90 00158DF0  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 8015BE94 00158DF4  3B 40 00 00 */	li r26, 0
/* 8015BE98 00158DF8  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 8015BE9C 00158DFC  3B 60 00 00 */	li r27, 0
/* 8015BEA0 00158E00  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8015BEA4 00158E04  38 60 03 60 */	li r3, 0x360
/* 8015BEA8 00158E08  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 8015BEAC 00158E0C  38 A0 00 00 */	li r5, 0
/* 8015BEB0 00158E10  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 8015BEB4 00158E14  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 8015BEB8 00158E18  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 8015BEBC 00158E1C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 8015BEC0 00158E20  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8015BEC4 00158E24  48 1B 99 A9 */	bl __nw__FUlPCcPCc
/* 8015BEC8 00158E28  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015BECC 00158E2C  41 82 00 A4 */	beq lbl_8015BF70
/* 8015BED0 00158E30  38 00 00 00 */	li r0, 0
/* 8015BED4 00158E34  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8015BED8 00158E38  98 01 00 58 */	stb r0, 0x58(r1)
/* 8015BEDC 00158E3C  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8015BEE0 00158E40  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8015BEE4 00158E44  38 61 00 5C */	addi r3, r1, 0x5c
/* 8015BEE8 00158E48  88 FD 00 30 */	lbz r7, 0x30(r29)
/* 8015BEEC 00158E4C  38 81 00 34 */	addi r4, r1, 0x34
/* 8015BEF0 00158E50  38 C1 00 38 */	addi r6, r1, 0x38
/* 8015BEF4 00158E54  3B 80 00 01 */	li r28, 1
/* 8015BEF8 00158E58  90 01 00 38 */	stw r0, 0x38(r1)
/* 8015BEFC 00158E5C  54 FB CF FE */	rlwinm r27, r7, 0x19, 0x1f, 0x1f
/* 8015BF00 00158E60  80 1D 00 04 */	lwz r0, 4(r29)
/* 8015BF04 00158E64  90 01 00 30 */	stw r0, 0x30(r1)
/* 8015BF08 00158E68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015BF0C 00158E6C  4B EF 55 79 */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8015BF10 00158E70  3C 80 80 3D */	lis r4, lbl_803D0358@ha
/* 8015BF14 00158E74  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015BF18 00158E78  38 84 03 58 */	addi r4, r4, lbl_803D0358@l
/* 8015BF1C 00158E7C  3B 40 00 01 */	li r26, 1
/* 8015BF20 00158E80  38 84 00 07 */	addi r4, r4, 7
/* 8015BF24 00158E84  4B EA 8D 95 */	bl string_l__4rstlFPCc
/* 8015BF28 00158E88  A1 1D 00 08 */	lhz r8, 8(r29)
/* 8015BF2C 00158E8C  38 01 00 4C */	addi r0, r1, 0x4c
/* 8015BF30 00158E90  7F E3 FB 78 */	mr r3, r31
/* 8015BF34 00158E94  7F 6A DB 78 */	mr r10, r27
/* 8015BF38 00158E98  B1 01 00 18 */	sth r8, 0x18(r1)
/* 8015BF3C 00158E9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8015BF40 00158EA0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8015BF44 00158EA4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8015BF48 00158EA8  A1 7D 05 9A */	lhz r11, 0x59a(r29)
/* 8015BF4C 00158EAC  38 E1 00 5C */	addi r7, r1, 0x5c
/* 8015BF50 00158EB0  B1 01 00 14 */	sth r8, 0x14(r1)
/* 8015BF54 00158EB4  39 1D 00 34 */	addi r8, r29, 0x34
/* 8015BF58 00158EB8  39 21 00 8C */	addi r9, r1, 0x8c
/* 8015BF5C 00158EBC  3B 60 00 01 */	li r27, 1
/* 8015BF60 00158EC0  B1 61 00 10 */	sth r11, 0x10(r1)
/* 8015BF64 00158EC4  90 01 00 08 */	stw r0, 8(r1)
/* 8015BF68 00158EC8  48 0D 6C 31 */	bl "__ct__25CRipperControlledPlatformF9TUniqueId9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC6CAABoxbRCQ24rstl58optional_object<39TLockedToken<23CCollidableOBBTreeGroup>>"
/* 8015BF6C 00158ECC  7C 7F 1B 78 */	mr r31, r3
lbl_8015BF70:
/* 8015BF70 00158ED0  7F 60 07 75 */	extsb. r0, r27
/* 8015BF74 00158ED4  41 82 00 0C */	beq lbl_8015BF80
/* 8015BF78 00158ED8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015BF7C 00158EDC  48 1E 1B 65 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8015BF80:
/* 8015BF80 00158EE0  7F 40 07 75 */	extsb. r0, r26
/* 8015BF84 00158EE4  41 82 00 44 */	beq lbl_8015BFC8
/* 8015BF88 00158EE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015BF8C 00158EEC  80 61 00 6C */	lwz r3, 0x6c(r1)
/* 8015BF90 00158EF0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8015BF94 00158EF4  90 61 00 24 */	stw r3, 0x24(r1)
/* 8015BF98 00158EF8  7C 64 1B 78 */	mr r4, r3
/* 8015BF9C 00158EFC  7C 03 02 14 */	add r0, r3, r0
/* 8015BFA0 00158F00  90 61 00 20 */	stw r3, 0x20(r1)
/* 8015BFA4 00158F04  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8015BFA8 00158F08  90 01 00 28 */	stw r0, 0x28(r1)
/* 8015BFAC 00158F0C  48 00 00 08 */	b lbl_8015BFB4
lbl_8015BFB0:
/* 8015BFB0 00158F10  38 84 00 0C */	addi r4, r4, 0xc
lbl_8015BFB4:
/* 8015BFB4 00158F14  7C 04 00 40 */	cmplw r4, r0
/* 8015BFB8 00158F18  40 82 FF F8 */	bne lbl_8015BFB0
/* 8015BFBC 00158F1C  28 03 00 00 */	cmplwi r3, 0
/* 8015BFC0 00158F20  41 82 00 08 */	beq lbl_8015BFC8
/* 8015BFC4 00158F24  48 1B 99 6D */	bl Free__7CMemoryFPCv
lbl_8015BFC8:
/* 8015BFC8 00158F28  7F 80 07 75 */	extsb. r0, r28
/* 8015BFCC 00158F2C  41 82 00 30 */	beq lbl_8015BFFC
/* 8015BFD0 00158F30  88 01 00 58 */	lbz r0, 0x58(r1)
/* 8015BFD4 00158F34  28 00 00 00 */	cmplwi r0, 0
/* 8015BFD8 00158F38  41 82 00 1C */	beq lbl_8015BFF4
/* 8015BFDC 00158F3C  34 61 00 4C */	addic. r3, r1, 0x4c
/* 8015BFE0 00158F40  41 82 00 14 */	beq lbl_8015BFF4
/* 8015BFE4 00158F44  28 03 00 00 */	cmplwi r3, 0
/* 8015BFE8 00158F48  41 82 00 0C */	beq lbl_8015BFF4
/* 8015BFEC 00158F4C  38 80 00 00 */	li r4, 0
/* 8015BFF0 00158F50  48 1E 4E 51 */	bl __dt__6CTokenFv
lbl_8015BFF4:
/* 8015BFF4 00158F54  38 00 00 00 */	li r0, 0
/* 8015BFF8 00158F58  98 01 00 58 */	stb r0, 0x58(r1)
lbl_8015BFFC:
/* 8015BFFC 00158F5C  28 1F 00 00 */	cmplwi r31, 0
/* 8015C000 00158F60  41 82 00 20 */	beq lbl_8015C020
/* 8015C004 00158F64  7F C3 F3 78 */	mr r3, r30
/* 8015C008 00158F68  7F E4 FB 78 */	mr r4, r31
/* 8015C00C 00158F6C  4B EF 0C E9 */	bl AddObject__13CStateManagerFP7CEntity
/* 8015C010 00158F70  7F E3 FB 78 */	mr r3, r31
/* 8015C014 00158F74  7F C5 F3 78 */	mr r5, r30
/* 8015C018 00158F78  38 80 00 12 */	li r4, 0x12
/* 8015C01C 00158F7C  4B EF 83 35 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8015C020:
/* 8015C020 00158F80  BB 41 00 D8 */	lmw r26, 0xd8(r1)
/* 8015C024 00158F84  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8015C028 00158F88  7C 08 03 A6 */	mtlr r0
/* 8015C02C 00158F8C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8015C030 00158F90  4E 80 00 20 */	blr

.global sub_8015c034
sub_8015c034:
/* 8015C034 00158F94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C038 00158F98  7C 08 02 A6 */	mflr r0
/* 8015C03C 00158F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C040 00158FA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C044 00158FA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015C048 00158FA8  7C 7E 1B 78 */	mr r30, r3
/* 8015C04C 00158FAC  80 03 03 FC */	lwz r0, 0x3fc(r3)
/* 8015C050 00158FB0  2C 00 00 01 */	cmpwi r0, 1
/* 8015C054 00158FB4  40 82 00 74 */	bne lbl_8015C0C8
/* 8015C058 00158FB8  A0 7E 05 98 */	lhz r3, 0x598(r30)
/* 8015C05C 00158FBC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C060 00158FC0  7C 03 00 40 */	cmplw r3, r0
/* 8015C064 00158FC4  41 82 00 64 */	beq lbl_8015C0C8
/* 8015C068 00158FC8  A0 1E 05 98 */	lhz r0, 0x598(r30)
/* 8015C06C 00158FCC  7C 83 23 78 */	mr r3, r4
/* 8015C070 00158FD0  38 81 00 08 */	addi r4, r1, 8
/* 8015C074 00158FD4  B0 01 00 08 */	sth r0, 8(r1)
/* 8015C078 00158FD8  4B EF 04 FD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 8015C07C 00158FDC  7C 64 1B 78 */	mr r4, r3
/* 8015C080 00158FE0  38 61 00 0C */	addi r3, r1, 0xc
/* 8015C084 00158FE4  4B F4 DA 45 */	bl "__ct__33TCastToPtr<19CScriptGrapplePoint>FP7CEntity"
/* 8015C088 00158FE8  83 E3 00 04 */	lwz r31, 4(r3)
/* 8015C08C 00158FEC  28 1F 00 00 */	cmplwi r31, 0
/* 8015C090 00158FF0  41 82 00 38 */	beq lbl_8015C0C8
/* 8015C094 00158FF4  38 7F 00 34 */	addi r3, r31, 0x34
/* 8015C098 00158FF8  38 9E 00 34 */	addi r4, r30, 0x34
/* 8015C09C 00158FFC  48 1B 6A A5 */	bl __as__12CTransform4fFRC12CTransform4f
/* 8015C0A0 00159000  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8015C0A4 00159004  38 60 00 01 */	li r3, 1
/* 8015C0A8 00159008  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8015C0AC 0015900C  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8015C0B0 00159010  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8015C0B4 00159014  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8015C0B8 00159018  98 1F 00 E4 */	stb r0, 0xe4(r31)
/* 8015C0BC 0015901C  88 1F 00 E4 */	lbz r0, 0xe4(r31)
/* 8015C0C0 00159020  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 8015C0C4 00159024  98 1F 00 E4 */	stb r0, 0xe4(r31)
lbl_8015C0C8:
/* 8015C0C8 00159028  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C0CC 0015902C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C0D0 00159030  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015C0D4 00159034  7C 08 03 A6 */	mtlr r0
/* 8015C0D8 00159038  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C0DC 0015903C  4E 80 00 20 */	blr

.global sub_8015c0e0
sub_8015c0e0:
/* 8015C0E0 00159040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C0E4 00159044  7C 08 02 A6 */	mflr r0
/* 8015C0E8 00159048  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C0EC 0015904C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C0F0 00159050  7C 7F 1B 78 */	mr r31, r3
/* 8015C0F4 00159054  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C0F8 00159058  A0 63 05 98 */	lhz r3, 0x598(r3)
/* 8015C0FC 0015905C  7C 03 00 40 */	cmplw r3, r0
/* 8015C100 00159060  41 82 00 20 */	beq lbl_8015C120
/* 8015C104 00159064  A0 1F 05 98 */	lhz r0, 0x598(r31)
/* 8015C108 00159068  7C 83 23 78 */	mr r3, r4
/* 8015C10C 0015906C  38 81 00 08 */	addi r4, r1, 8
/* 8015C110 00159070  B0 01 00 08 */	sth r0, 8(r1)
/* 8015C114 00159074  4B EF 01 59 */	bl FreeScriptObject__13CStateManagerF9TUniqueId
/* 8015C118 00159078  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C11C 0015907C  B0 1F 05 98 */	sth r0, 0x598(r31)
lbl_8015C120:
/* 8015C120 00159080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C124 00159084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C128 00159088  7C 08 03 A6 */	mtlr r0
/* 8015C12C 0015908C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C130 00159090  4E 80 00 20 */	blr

.global AddGrapplePoint__7CRipperFR13CStateManager
AddGrapplePoint__7CRipperFR13CStateManager:
/* 8015C134 00159094  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8015C138 00159098  7C 08 02 A6 */	mflr r0
/* 8015C13C 0015909C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8015C140 001590A0  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 8015C144 001590A4  7C 7D 1B 78 */	mr r29, r3
/* 8015C148 001590A8  7C 9E 23 78 */	mr r30, r4
/* 8015C14C 001590AC  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C150 001590B0  A0 63 05 98 */	lhz r3, 0x598(r3)
/* 8015C154 001590B4  7C 03 00 40 */	cmplw r3, r0
/* 8015C158 001590B8  40 82 01 10 */	bne lbl_8015C268
/* 8015C15C 001590BC  38 61 00 0C */	addi r3, r1, 0xc
/* 8015C160 001590C0  4B EF 0F 7D */	bl AllocateUniqueId__13CStateManagerFv
/* 8015C164 001590C4  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8015C168 001590C8  3C 60 80 3D */	lis r3, lbl_803D0358@ha
/* 8015C16C 001590CC  38 83 03 58 */	addi r4, r3, lbl_803D0358@l
/* 8015C170 001590D0  3B 80 00 00 */	li r28, 0
/* 8015C174 001590D4  B0 1D 05 98 */	sth r0, 0x598(r29)
/* 8015C178 001590D8  3B 60 00 00 */	li r27, 0
/* 8015C17C 001590DC  38 60 01 30 */	li r3, 0x130
/* 8015C180 001590E0  38 A0 00 00 */	li r5, 0
/* 8015C184 001590E4  48 1B 96 E9 */	bl __nw__FUlPCcPCc
/* 8015C188 001590E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015C18C 001590EC  41 82 00 78 */	beq lbl_8015C204
/* 8015C190 001590F0  80 0D A3 88 */	lwz r0, kInvalidEditorId@sda21(r13)
/* 8015C194 001590F4  3C 60 80 57 */	lis r3, NullConnectionList__7CEntity@ha
/* 8015C198 001590F8  38 A3 D4 10 */	addi r5, r3, NullConnectionList__7CEntity@l
/* 8015C19C 001590FC  38 81 00 24 */	addi r4, r1, 0x24
/* 8015C1A0 00159100  90 01 00 28 */	stw r0, 0x28(r1)
/* 8015C1A4 00159104  38 61 00 3C */	addi r3, r1, 0x3c
/* 8015C1A8 00159108  38 C1 00 28 */	addi r6, r1, 0x28
/* 8015C1AC 0015910C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8015C1B0 00159110  90 01 00 20 */	stw r0, 0x20(r1)
/* 8015C1B4 00159114  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C1B8 00159118  4B EF 52 CD */	bl "__ct__11CEntityInfoF7TAreaIdRCQ24rstl48vector<11SConnection,Q24rstl17rmemory_allocator>9TEditorId"
/* 8015C1BC 0015911C  3C 80 80 3D */	lis r4, lbl_803D0358@ha
/* 8015C1C0 00159120  38 61 00 2C */	addi r3, r1, 0x2c
/* 8015C1C4 00159124  38 84 03 58 */	addi r4, r4, lbl_803D0358@l
/* 8015C1C8 00159128  3B 80 00 01 */	li r28, 1
/* 8015C1CC 0015912C  38 84 00 22 */	addi r4, r4, 0x22
/* 8015C1D0 00159130  4B EA 8A E9 */	bl string_l__4rstlFPCc
/* 8015C1D4 00159134  A0 1D 05 98 */	lhz r0, 0x598(r29)
/* 8015C1D8 00159138  7F E3 FB 78 */	mr r3, r31
/* 8015C1DC 0015913C  38 81 00 08 */	addi r4, r1, 8
/* 8015C1E0 00159140  38 A1 00 2C */	addi r5, r1, 0x2c
/* 8015C1E4 00159144  B0 01 00 08 */	sth r0, 8(r1)
/* 8015C1E8 00159148  38 C1 00 3C */	addi r6, r1, 0x3c
/* 8015C1EC 0015914C  38 FD 00 34 */	addi r7, r29, 0x34
/* 8015C1F0 00159150  39 3D 05 68 */	addi r9, r29, 0x568
/* 8015C1F4 00159154  3B 60 00 01 */	li r27, 1
/* 8015C1F8 00159158  39 00 00 01 */	li r8, 1
/* 8015C1FC 0015915C  4B FD 37 25 */	bl "__ct__19CScriptGrapplePointF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fbRC18CGrappleParameters"
/* 8015C200 00159160  7C 7F 1B 78 */	mr r31, r3
lbl_8015C204:
/* 8015C204 00159164  7F C3 F3 78 */	mr r3, r30
/* 8015C208 00159168  7F E4 FB 78 */	mr r4, r31
/* 8015C20C 0015916C  4B EF 0A E9 */	bl AddObject__13CStateManagerFP7CEntity
/* 8015C210 00159170  7F 60 07 75 */	extsb. r0, r27
/* 8015C214 00159174  41 82 00 0C */	beq lbl_8015C220
/* 8015C218 00159178  38 61 00 2C */	addi r3, r1, 0x2c
/* 8015C21C 0015917C  48 1E 18 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8015C220:
/* 8015C220 00159180  7F 80 07 75 */	extsb. r0, r28
/* 8015C224 00159184  41 82 00 44 */	beq lbl_8015C268
/* 8015C228 00159188  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015C22C 0015918C  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 8015C230 00159190  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8015C234 00159194  90 61 00 14 */	stw r3, 0x14(r1)
/* 8015C238 00159198  7C 64 1B 78 */	mr r4, r3
/* 8015C23C 0015919C  7C 03 02 14 */	add r0, r3, r0
/* 8015C240 001591A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8015C244 001591A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015C248 001591A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8015C24C 001591AC  48 00 00 08 */	b lbl_8015C254
lbl_8015C250:
/* 8015C250 001591B0  38 84 00 0C */	addi r4, r4, 0xc
lbl_8015C254:
/* 8015C254 001591B4  7C 04 00 40 */	cmplw r4, r0
/* 8015C258 001591B8  40 82 FF F8 */	bne lbl_8015C250
/* 8015C25C 001591BC  28 03 00 00 */	cmplwi r3, 0
/* 8015C260 001591C0  41 82 00 08 */	beq lbl_8015C268
/* 8015C264 001591C4  48 1B 96 CD */	bl Free__7CMemoryFPCv
lbl_8015C268:
/* 8015C268 001591C8  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 8015C26C 001591CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8015C270 001591D0  7C 08 03 A6 */	mtlr r0
/* 8015C274 001591D4  38 21 00 70 */	addi r1, r1, 0x70
/* 8015C278 001591D8  4E 80 00 20 */	blr

.global Patrol__7CRipperFR13CStateManager9EStateMsgf
Patrol__7CRipperFR13CStateManager9EStateMsgf:
/* 8015C27C 001591DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015C280 001591E0  7C 08 02 A6 */	mflr r0
/* 8015C284 001591E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015C288 001591E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8015C28C 001591EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8015C290 001591F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C294 001591F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015C298 001591F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015C29C 001591FC  7C 7D 1B 78 */	mr r29, r3
/* 8015C2A0 00159200  FF E0 08 90 */	fmr f31, f1
/* 8015C2A4 00159204  80 63 04 50 */	lwz r3, 0x450(r3)
/* 8015C2A8 00159208  38 00 00 01 */	li r0, 1
/* 8015C2AC 0015920C  C0 22 9E DC */	lfs f1, lbl_805ABBFC@sda21(r2)
/* 8015C2B0 00159210  7C 9E 23 78 */	mr r30, r4
/* 8015C2B4 00159214  90 03 00 34 */	stw r0, 0x34(r3)
/* 8015C2B8 00159218  FC 40 08 90 */	fmr f2, f1
/* 8015C2BC 0015921C  7C BF 2B 78 */	mr r31, r5
/* 8015C2C0 00159220  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8015C2C4 00159224  38 63 00 04 */	addi r3, r3, 4
/* 8015C2C8 00159228  4B FD 55 21 */	bl SetSteeringSpeedRange__16CBodyStateCmdMgrFff
/* 8015C2CC 0015922C  FC 20 F8 90 */	fmr f1, f31
/* 8015C2D0 00159230  7F A3 EB 78 */	mr r3, r29
/* 8015C2D4 00159234  7F C4 F3 78 */	mr r4, r30
/* 8015C2D8 00159238  7F E5 FB 78 */	mr r5, r31
/* 8015C2DC 0015923C  48 09 AB 99 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 8015C2E0 00159240  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8015C2E4 00159244  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015C2E8 00159248  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8015C2EC 0015924C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C2F0 00159250  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015C2F4 00159254  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015C2F8 00159258  7C 08 03 A6 */	mtlr r0
/* 8015C2FC 0015925C  38 21 00 30 */	addi r1, r1, 0x30
/* 8015C300 00159260  4E 80 00 20 */	blr

.global PathOver__7CRipperFR13CStateManagerf
PathOver__7CRipperFR13CStateManagerf:
/* 8015C304 00159264  38 60 00 00 */	li r3, 0
/* 8015C308 00159268  4E 80 00 20 */	blr

.global KnockBack__7CRipperFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
KnockBack__7CRipperFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef:
/* 8015C30C 0015926C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8015C310 00159270  7C 08 02 A6 */	mflr r0
/* 8015C314 00159274  90 01 00 34 */	stw r0, 0x34(r1)
/* 8015C318 00159278  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8015C31C 0015927C  7C 9F 23 78 */	mr r31, r4
/* 8015C320 00159280  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8015C324 00159284  7C 7E 1B 78 */	mr r30, r3
/* 8015C328 00159288  4B F1 E4 55 */	bl KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
/* 8015C32C 0015928C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8015C330 00159290  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015C334 00159294  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8015C338 00159298  38 A3 AA 68 */	addi r5, r3, lbl_803DAA68@l
/* 8015C33C 0015929C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8015C340 001592A0  FC 40 10 50 */	fneg f2, f2
/* 8015C344 001592A4  FC 20 08 50 */	fneg f1, f1
/* 8015C348 001592A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 8015C34C 001592AC  FC 00 00 50 */	fneg f0, f0
/* 8015C350 001592B0  3C 80 80 3E */	lis r4, lbl_803DAA44@ha
/* 8015C354 001592B4  38 C0 00 04 */	li r6, 4
/* 8015C358 001592B8  38 00 00 01 */	li r0, 1
/* 8015C35C 001592BC  3B E3 00 04 */	addi r31, r3, 4
/* 8015C360 001592C0  90 A1 00 08 */	stw r5, 8(r1)
/* 8015C364 001592C4  38 A4 AA 44 */	addi r5, r4, lbl_803DAA44@l
/* 8015C368 001592C8  38 80 00 04 */	li r4, 4
/* 8015C36C 001592CC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8015C370 001592D0  7F E3 FB 78 */	mr r3, r31
/* 8015C374 001592D4  90 A1 00 08 */	stw r5, 8(r1)
/* 8015C378 001592D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015C37C 001592DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8015C380 001592E0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8015C384 001592E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8015C388 001592E8  4B FD 50 B1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8015C38C 001592EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8015C390 001592F0  3C 60 80 3E */	lis r3, lbl_803DAA44@ha
/* 8015C394 001592F4  38 83 AA 44 */	addi r4, r3, lbl_803DAA44@l
/* 8015C398 001592F8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 8015C39C 001592FC  90 1F 00 F8 */	stw r0, 0xf8(r31)
/* 8015C3A0 00159300  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 8015C3A4 00159304  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 8015C3A8 00159308  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8015C3AC 0015930C  90 BF 00 FC */	stw r5, 0xfc(r31)
/* 8015C3B0 00159310  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 8015C3B4 00159314  90 7F 01 00 */	stw r3, 0x100(r31)
/* 8015C3B8 00159318  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8015C3BC 0015931C  90 BF 01 04 */	stw r5, 0x104(r31)
/* 8015C3C0 00159320  90 81 00 08 */	stw r4, 8(r1)
/* 8015C3C4 00159324  90 7F 01 08 */	stw r3, 0x108(r31)
/* 8015C3C8 00159328  90 01 00 08 */	stw r0, 8(r1)
/* 8015C3CC 0015932C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8015C3D0 00159330  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8015C3D4 00159334  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8015C3D8 00159338  7C 08 03 A6 */	mtlr r0
/* 8015C3DC 0015933C  38 21 00 30 */	addi r1, r1, 0x30
/* 8015C3E0 00159340  4E 80 00 20 */	blr

.global GetCollisionResponseType__7CRipperFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__7CRipperFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 8015C3E4 00159344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C3E8 00159348  7C 08 02 A6 */	mflr r0
/* 8015C3EC 0015934C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C3F0 00159350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C3F4 00159354  3B E0 00 20 */	li r31, 0x20
/* 8015C3F8 00159358  93 C1 00 08 */	stw r30, 8(r1)
/* 8015C3FC 0015935C  7C DE 33 78 */	mr r30, r6
/* 8015C400 00159360  81 83 00 00 */	lwz r12, 0(r3)
/* 8015C404 00159364  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8015C408 00159368  7D 89 03 A6 */	mtctr r12
/* 8015C40C 0015936C  4E 80 04 21 */	bctrl
/* 8015C410 00159370  7F C4 F3 78 */	mr r4, r30
/* 8015C414 00159374  38 A0 00 00 */	li r5, 0
/* 8015C418 00159378  4B FA 61 6D */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 8015C41C 0015937C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015C420 00159380  40 82 00 08 */	bne lbl_8015C428
/* 8015C424 00159384  3B E0 00 52 */	li r31, 0x52
lbl_8015C428:
/* 8015C428 00159388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C42C 0015938C  7F E3 FB 78 */	mr r3, r31
/* 8015C430 00159390  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C434 00159394  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015C438 00159398  7C 08 03 A6 */	mtlr r0
/* 8015C43C 0015939C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C440 001593A0  4E 80 00 20 */	blr

.global AcceptScriptMsg__7CRipperF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__7CRipperF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8015C444 001593A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C448 001593A8  7C 08 02 A6 */	mflr r0
/* 8015C44C 001593AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C450 001593B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015C454 001593B4  7C DF 33 78 */	mr r31, r6
/* 8015C458 001593B8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015C45C 001593BC  7C 9E 23 78 */	mr r30, r4
/* 8015C460 001593C0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015C464 001593C4  7C 7D 1B 78 */	mr r29, r3
/* 8015C468 001593C8  A0 05 00 00 */	lhz r0, 0(r5)
/* 8015C46C 001593CC  38 A1 00 08 */	addi r5, r1, 8
/* 8015C470 001593D0  B0 01 00 08 */	sth r0, 8(r1)
/* 8015C474 001593D4  4B F2 07 05 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8015C478 001593D8  2C 1E 00 04 */	cmpwi r30, 4
/* 8015C47C 001593DC  41 82 00 C8 */	beq lbl_8015C544
/* 8015C480 001593E0  40 80 00 10 */	bge lbl_8015C490
/* 8015C484 001593E4  2C 1E 00 01 */	cmpwi r30, 1
/* 8015C488 001593E8  41 82 00 A0 */	beq lbl_8015C528
/* 8015C48C 001593EC  48 00 00 D0 */	b lbl_8015C55C
lbl_8015C490:
/* 8015C490 001593F0  2C 1E 00 22 */	cmpwi r30, 0x22
/* 8015C494 001593F4  41 82 00 78 */	beq lbl_8015C50C
/* 8015C498 001593F8  40 80 00 C4 */	bge lbl_8015C55C
/* 8015C49C 001593FC  2C 1E 00 21 */	cmpwi r30, 0x21
/* 8015C4A0 00159400  40 80 00 08 */	bge lbl_8015C4A8
/* 8015C4A4 00159404  48 00 00 B8 */	b lbl_8015C55C
lbl_8015C4A8:
/* 8015C4A8 00159408  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 8015C4AC 0015940C  7F E4 FB 78 */	mr r4, r31
/* 8015C4B0 00159410  4B FD E8 41 */	bl Activate__15CBodyControllerFR13CStateManager
/* 8015C4B4 00159414  7F A3 EB 78 */	mr r3, r29
/* 8015C4B8 00159418  7F E5 FB 78 */	mr r5, r31
/* 8015C4BC 0015941C  38 80 00 2B */	li r4, 0x2b
/* 8015C4C0 00159420  4B EF 7E 91 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8015C4C4 00159424  7F A3 EB 78 */	mr r3, r29
/* 8015C4C8 00159428  7F E5 FB 78 */	mr r5, r31
/* 8015C4CC 0015942C  38 80 00 13 */	li r4, 0x13
/* 8015C4D0 00159430  4B EF 7A B1 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 8015C4D4 00159434  80 1D 03 FC */	lwz r0, 0x3fc(r29)
/* 8015C4D8 00159438  2C 00 00 01 */	cmpwi r0, 1
/* 8015C4DC 0015943C  40 82 00 20 */	bne lbl_8015C4FC
/* 8015C4E0 00159440  7F A3 EB 78 */	mr r3, r29
/* 8015C4E4 00159444  7F E4 FB 78 */	mr r4, r31
/* 8015C4E8 00159448  4B FF FC 4D */	bl AddGrapplePoint__7CRipperFR13CStateManager
/* 8015C4EC 0015944C  7F A3 EB 78 */	mr r3, r29
/* 8015C4F0 00159450  7F E5 FB 78 */	mr r5, r31
/* 8015C4F4 00159454  38 80 00 29 */	li r4, 0x29
/* 8015C4F8 00159458  4B EF 7A 89 */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
lbl_8015C4FC:
/* 8015C4FC 0015945C  7F A3 EB 78 */	mr r3, r29
/* 8015C500 00159460  7F E4 FB 78 */	mr r4, r31
/* 8015C504 00159464  4B FF F9 1D */	bl AddPlatform__7CRipperFR13CStateManager
/* 8015C508 00159468  48 00 00 54 */	b lbl_8015C55C
lbl_8015C50C:
/* 8015C50C 0015946C  7F A3 EB 78 */	mr r3, r29
/* 8015C510 00159470  7F E4 FB 78 */	mr r4, r31
/* 8015C514 00159474  4B FF FB CD */	bl sub_8015c0e0
/* 8015C518 00159478  7F A3 EB 78 */	mr r3, r29
/* 8015C51C 0015947C  7F E4 FB 78 */	mr r4, r31
/* 8015C520 00159480  4B FF F8 AD */	bl RemovePlatform__7CRipperFR13CStateManager
/* 8015C524 00159484  48 00 00 38 */	b lbl_8015C55C
lbl_8015C528:
/* 8015C528 00159488  7F A3 EB 78 */	mr r3, r29
/* 8015C52C 0015948C  7F E4 FB 78 */	mr r4, r31
/* 8015C530 00159490  4B FF FC 05 */	bl AddGrapplePoint__7CRipperFR13CStateManager
/* 8015C534 00159494  7F A3 EB 78 */	mr r3, r29
/* 8015C538 00159498  7F E4 FB 78 */	mr r4, r31
/* 8015C53C 0015949C  4B FF F8 E5 */	bl AddPlatform__7CRipperFR13CStateManager
/* 8015C540 001594A0  48 00 00 1C */	b lbl_8015C55C
lbl_8015C544:
/* 8015C544 001594A4  7F A3 EB 78 */	mr r3, r29
/* 8015C548 001594A8  7F E4 FB 78 */	mr r4, r31
/* 8015C54C 001594AC  4B FF FB 95 */	bl sub_8015c0e0
/* 8015C550 001594B0  7F A3 EB 78 */	mr r3, r29
/* 8015C554 001594B4  7F E4 FB 78 */	mr r4, r31
/* 8015C558 001594B8  4B FF F8 75 */	bl RemovePlatform__7CRipperFR13CStateManager
lbl_8015C55C:
/* 8015C55C 001594BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C560 001594C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015C564 001594C4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015C568 001594C8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015C56C 001594CC  7C 08 03 A6 */	mtlr r0
/* 8015C570 001594D0  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C574 001594D4  4E 80 00 20 */	blr

.global Think__7CRipperFfR13CStateManager
Think__7CRipperFfR13CStateManager:
/* 8015C578 001594D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015C57C 001594DC  7C 08 02 A6 */	mflr r0
/* 8015C580 001594E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015C584 001594E4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 8015C588 001594E8  FF E0 08 90 */	fmr f31, f1
/* 8015C58C 001594EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8015C590 001594F0  7C 7F 1B 78 */	mr r31, r3
/* 8015C594 001594F4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8015C598 001594F8  7C 9E 23 78 */	mr r30, r4
/* 8015C59C 001594FC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8015C5A0 00159500  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8015C5A4 00159504  41 82 00 D8 */	beq lbl_8015C67C
/* 8015C5A8 00159508  4B FF FA 8D */	bl sub_8015c034
/* 8015C5AC 0015950C  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 8015C5B0 00159510  A0 BF 05 98 */	lhz r5, 0x598(r31)
/* 8015C5B4 00159514  80 64 04 90 */	lwz r3, 0x490(r4)
/* 8015C5B8 00159518  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C5BC 0015951C  80 63 07 40 */	lwz r3, 0x740(r3)
/* 8015C5C0 00159520  7C 05 00 40 */	cmplw r5, r0
/* 8015C5C4 00159524  80 63 03 34 */	lwz r3, 0x334(r3)
/* 8015C5C8 00159528  41 82 00 1C */	beq lbl_8015C5E4
/* 8015C5CC 0015952C  A0 04 03 10 */	lhz r0, 0x310(r4)
/* 8015C5D0 00159530  7C 00 28 40 */	cmplw r0, r5
/* 8015C5D4 00159534  40 82 00 10 */	bne lbl_8015C5E4
/* 8015C5D8 00159538  80 04 03 B8 */	lwz r0, 0x3b8(r4)
/* 8015C5DC 0015953C  2C 00 00 00 */	cmpwi r0, 0
/* 8015C5E0 00159540  40 82 00 40 */	bne lbl_8015C620
lbl_8015C5E4:
/* 8015C5E4 00159544  FC 20 F8 90 */	fmr f1, f31
/* 8015C5E8 00159548  7F E3 FB 78 */	mr r3, r31
/* 8015C5EC 0015954C  7F C4 F3 78 */	mr r4, r30
/* 8015C5F0 00159550  4B F1 D5 29 */	bl Think__10CPatternedFfR13CStateManager
/* 8015C5F4 00159554  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 8015C5F8 00159558  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8015C5FC 0015955C  41 82 00 80 */	beq lbl_8015C67C
/* 8015C600 00159560  7F E3 FB 78 */	mr r3, r31
/* 8015C604 00159564  38 80 00 00 */	li r4, 0
/* 8015C608 00159568  4B EF 6D E5 */	bl SetMuted__6CActorFb
/* 8015C60C 0015956C  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 8015C610 00159570  38 60 00 00 */	li r3, 0
/* 8015C614 00159574  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8015C618 00159578  98 1F 05 9C */	stb r0, 0x59c(r31)
/* 8015C61C 0015957C  48 00 00 60 */	b lbl_8015C67C
lbl_8015C620:
/* 8015C620 00159580  2C 00 00 01 */	cmpwi r0, 1
/* 8015C624 00159584  40 82 00 28 */	bne lbl_8015C64C
/* 8015C628 00159588  28 03 00 02 */	cmplwi r3, 2
/* 8015C62C 0015958C  40 81 00 0C */	ble lbl_8015C638
/* 8015C630 00159590  2C 03 00 03 */	cmpwi r3, 3
/* 8015C634 00159594  40 82 00 18 */	bne lbl_8015C64C
lbl_8015C638:
/* 8015C638 00159598  FC 20 F8 90 */	fmr f1, f31
/* 8015C63C 0015959C  7F E3 FB 78 */	mr r3, r31
/* 8015C640 001595A0  7F C4 F3 78 */	mr r4, r30
/* 8015C644 001595A4  4B F1 D4 D5 */	bl Think__10CPatternedFfR13CStateManager
/* 8015C648 001595A8  48 00 00 34 */	b lbl_8015C67C
lbl_8015C64C:
/* 8015C64C 001595AC  7F E3 FB 78 */	mr r3, r31
/* 8015C650 001595B0  4B FB ED 29 */	bl Stop__13CPhysicsActorFv
/* 8015C654 001595B4  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 8015C658 001595B8  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8015C65C 001595BC  40 82 00 20 */	bne lbl_8015C67C
/* 8015C660 001595C0  7F E3 FB 78 */	mr r3, r31
/* 8015C664 001595C4  38 80 00 01 */	li r4, 1
/* 8015C668 001595C8  4B EF 6D 85 */	bl SetMuted__6CActorFb
/* 8015C66C 001595CC  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 8015C670 001595D0  38 60 00 01 */	li r3, 1
/* 8015C674 001595D4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 8015C678 001595D8  98 1F 05 9C */	stb r0, 0x59c(r31)
lbl_8015C67C:
/* 8015C67C 001595DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015C680 001595E0  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 8015C684 001595E4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8015C688 001595E8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8015C68C 001595EC  7C 08 03 A6 */	mtlr r0
/* 8015C690 001595F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8015C694 001595F4  4E 80 00 20 */	blr

.global Accept__7CRipperFR8IVisitor
Accept__7CRipperFR8IVisitor:
/* 8015C698 001595F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C69C 001595FC  7C 08 02 A6 */	mflr r0
/* 8015C6A0 00159600  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C6A4 00159604  7C 60 1B 78 */	mr r0, r3
/* 8015C6A8 00159608  7C 83 23 78 */	mr r3, r4
/* 8015C6AC 0015960C  81 84 00 00 */	lwz r12, 0(r4)
/* 8015C6B0 00159610  7C 04 03 78 */	mr r4, r0
/* 8015C6B4 00159614  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8015C6B8 00159618  7D 89 03 A6 */	mtctr r12
/* 8015C6BC 0015961C  4E 80 04 21 */	bctrl
/* 8015C6C0 00159620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C6C4 00159624  7C 08 03 A6 */	mtlr r0
/* 8015C6C8 00159628  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C6CC 0015962C  4E 80 00 20 */	blr

.global __dt__7CRipperFv
__dt__7CRipperFv:
/* 8015C6D0 00159630  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C6D4 00159634  7C 08 02 A6 */	mflr r0
/* 8015C6D8 00159638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C6DC 0015963C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C6E0 00159640  7C 9F 23 78 */	mr r31, r4
/* 8015C6E4 00159644  93 C1 00 08 */	stw r30, 8(r1)
/* 8015C6E8 00159648  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015C6EC 0015964C  41 82 00 28 */	beq lbl_8015C714
/* 8015C6F0 00159650  3C A0 80 3E */	lis r5, lbl_803E3348@ha
/* 8015C6F4 00159654  38 80 00 00 */	li r4, 0
/* 8015C6F8 00159658  38 05 33 48 */	addi r0, r5, lbl_803E3348@l
/* 8015C6FC 0015965C  90 1E 00 00 */	stw r0, 0(r30)
/* 8015C700 00159660  4B F1 AE 71 */	bl __dt__10CPatternedFv
/* 8015C704 00159664  7F E0 07 35 */	extsh. r0, r31
/* 8015C708 00159668  40 81 00 0C */	ble lbl_8015C714
/* 8015C70C 0015966C  7F C3 F3 78 */	mr r3, r30
/* 8015C710 00159670  48 1B 92 21 */	bl Free__7CMemoryFPCv
lbl_8015C714:
/* 8015C714 00159674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C718 00159678  7F C3 F3 78 */	mr r3, r30
/* 8015C71C 0015967C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C720 00159680  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015C724 00159684  7C 08 03 A6 */	mtlr r0
/* 8015C728 00159688  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C72C 0015968C  4E 80 00 20 */	blr

.global "__ct__7CRipperF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC18CGrappleParameters"
"__ct__7CRipperF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC18CGrappleParameters":
/* 8015C730 00159690  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8015C734 00159694  7C 08 02 A6 */	mflr r0
/* 8015C738 00159698  39 60 00 01 */	li r11, 1
/* 8015C73C 0015969C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8015C740 001596A0  81 81 00 68 */	lwz r12, 0x68(r1)
/* 8015C744 001596A4  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 8015C748 001596A8  7C DB 33 78 */	mr r27, r6
/* 8015C74C 001596AC  7C FC 3B 78 */	mr r28, r7
/* 8015C750 001596B0  7D 1E 43 78 */	mr r30, r8
/* 8015C754 001596B4  7C A6 2B 78 */	mr r6, r5
/* 8015C758 001596B8  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 8015C75C 001596BC  7C 7F 1B 78 */	mr r31, r3
/* 8015C760 001596C0  7F 67 DB 78 */	mr r7, r27
/* 8015C764 001596C4  7F 88 E3 78 */	mr r8, r28
/* 8015C768 001596C8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8015C76C 001596CC  A0 04 00 00 */	lhz r0, 0(r4)
/* 8015C770 001596D0  7D 24 4B 78 */	mr r4, r9
/* 8015C774 001596D4  7F C9 F3 78 */	mr r9, r30
/* 8015C778 001596D8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 8015C77C 001596DC  38 00 00 03 */	li r0, 3
/* 8015C780 001596E0  91 41 00 08 */	stw r10, 8(r1)
/* 8015C784 001596E4  7C 8A 23 78 */	mr r10, r4
/* 8015C788 001596E8  38 80 00 1F */	li r4, 0x1f
/* 8015C78C 001596EC  91 61 00 0C */	stw r11, 0xc(r1)
/* 8015C790 001596F0  91 61 00 10 */	stw r11, 0x10(r1)
/* 8015C794 001596F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C798 001596F8  91 81 00 18 */	stw r12, 0x18(r1)
/* 8015C79C 001596FC  91 61 00 1C */	stw r11, 0x1c(r1)
/* 8015C7A0 00159700  4B F2 0C B1 */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 8015C7A4 00159704  3C 60 80 3E */	lis r3, lbl_803E3348@ha
/* 8015C7A8 00159708  38 A0 00 00 */	li r5, 0
/* 8015C7AC 0015970C  38 03 33 48 */	addi r0, r3, lbl_803E3348@l
/* 8015C7B0 00159710  38 80 00 01 */	li r4, 1
/* 8015C7B4 00159714  90 1F 00 00 */	stw r0, 0(r31)
/* 8015C7B8 00159718  38 60 00 00 */	li r3, 0
/* 8015C7BC 0015971C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8015C7C0 00159720  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 8015C7C4 00159724  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8015C7C8 00159728  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 8015C7CC 0015972C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8015C7D0 00159730  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 8015C7D4 00159734  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8015C7D8 00159738  D0 1F 05 74 */	stfs f0, 0x574(r31)
/* 8015C7DC 0015973C  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 8015C7E0 00159740  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 8015C7E4 00159744  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8015C7E8 00159748  D0 1F 05 7C */	stfs f0, 0x57c(r31)
/* 8015C7EC 0015974C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8015C7F0 00159750  D0 1F 05 80 */	stfs f0, 0x580(r31)
/* 8015C7F4 00159754  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8015C7F8 00159758  D0 1F 05 84 */	stfs f0, 0x584(r31)
/* 8015C7FC 0015975C  C0 1D 00 20 */	lfs f0, 0x20(r29)
/* 8015C800 00159760  D0 1F 05 88 */	stfs f0, 0x588(r31)
/* 8015C804 00159764  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8015C808 00159768  D0 1F 05 8C */	stfs f0, 0x58c(r31)
/* 8015C80C 0015976C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8015C810 00159770  D0 1F 05 90 */	stfs f0, 0x590(r31)
/* 8015C814 00159774  88 1D 00 2C */	lbz r0, 0x2c(r29)
/* 8015C818 00159778  98 1F 05 94 */	stb r0, 0x594(r31)
/* 8015C81C 0015977C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C820 00159780  B0 1F 05 98 */	sth r0, 0x598(r31)
/* 8015C824 00159784  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 8015C828 00159788  B0 1F 05 9A */	sth r0, 0x59a(r31)
/* 8015C82C 0015978C  88 1F 05 9C */	lbz r0, 0x59c(r31)
/* 8015C830 00159790  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 8015C834 00159794  98 1F 05 9C */	stb r0, 0x59c(r31)
/* 8015C838 00159798  80 AD 8C BC */	lwz r5, lbl_805A787C@sda21(r13)
/* 8015C83C 0015979C  48 22 D6 B9 */	bl __shl2i
/* 8015C840 001597A0  80 AD 8C C0 */	lwz r5, lbl_805A7880@sda21(r13)
/* 8015C844 001597A4  7C 9D 23 78 */	mr r29, r4
/* 8015C848 001597A8  7C 7E 1B 78 */	mr r30, r3
/* 8015C84C 001597AC  38 60 00 00 */	li r3, 0
/* 8015C850 001597B0  38 80 00 01 */	li r4, 1
/* 8015C854 001597B4  48 22 D6 A1 */	bl __shl2i
/* 8015C858 001597B8  80 AD 8C C4 */	lwz r5, lbl_805A7884@sda21(r13)
/* 8015C85C 001597BC  7F BD 23 78 */	or r29, r29, r4
/* 8015C860 001597C0  7F DE 1B 78 */	or r30, r30, r3
/* 8015C864 001597C4  38 60 00 00 */	li r3, 0
/* 8015C868 001597C8  38 80 00 01 */	li r4, 1
/* 8015C86C 001597CC  48 22 D6 89 */	bl __shl2i
/* 8015C870 001597D0  80 AD 8C B8 */	lwz r5, lbl_805A7878@sda21(r13)
/* 8015C874 001597D4  7F BD 23 78 */	or r29, r29, r4
/* 8015C878 001597D8  7F DE 1B 78 */	or r30, r30, r3
/* 8015C87C 001597DC  38 60 00 00 */	li r3, 0
/* 8015C880 001597E0  38 80 00 01 */	li r4, 1
/* 8015C884 001597E4  48 22 D6 71 */	bl __shl2i
/* 8015C888 001597E8  38 00 00 03 */	li r0, 3
/* 8015C88C 001597EC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 8015C890 001597F0  38 81 00 28 */	addi r4, r1, 0x28
/* 8015C894 001597F4  90 61 00 28 */	stw r3, 0x28(r1)
/* 8015C898 001597F8  7F E3 FB 78 */	mr r3, r31
/* 8015C89C 001597FC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8015C8A0 00159800  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8015C8A4 00159804  90 01 00 38 */	stw r0, 0x38(r1)
/* 8015C8A8 00159808  4B EF 6F F9 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 8015C8AC 0015980C  38 7F 04 60 */	addi r3, r31, 0x460
/* 8015C8B0 00159810  38 80 00 00 */	li r4, 0
/* 8015C8B4 00159814  48 0D 74 B1 */	bl SetAutoResetImpulse__20CKnockBackControllerFb
/* 8015C8B8 00159818  38 7F 04 60 */	addi r3, r31, 0x460
/* 8015C8BC 0015981C  38 80 00 01 */	li r4, 1
/* 8015C8C0 00159820  38 A0 00 02 */	li r5, 2
/* 8015C8C4 00159824  48 0D 74 D1 */	bl SetAnimationStateRange__20CKnockBackControllerF24EKnockBackAnimationState24EKnockBackAnimationState
/* 8015C8C8 00159828  7F E3 FB 78 */	mr r3, r31
/* 8015C8CC 0015982C  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 8015C8D0 00159830  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8015C8D4 00159834  7C 08 03 A6 */	mtlr r0
/* 8015C8D8 00159838  38 21 00 60 */	addi r1, r1, 0x60
/* 8015C8DC 0015983C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABBF8
lbl_805ABBF8:
	# ROM: 0x3F8498
	.4byte 0x00000008

.global lbl_805ABBFC
lbl_805ABBFC:
	# ROM: 0x3F849C
	.float 1.0


.section .rodata
.balign 8
.global lbl_803D0358
lbl_803D0358:
	# ROM: 0x3CD358
	.asciz "??(??)"
	.byte 0x52
	.asciz "ipper Controlled Platform"
	.byte 0x52, 0x69
	.asciz "pperGrapplePoint"
	.balign 4

.include "macros.inc"

.section .data

.global lbl_803E5388
lbl_803E5388:
	# ROM: 0x3E2388
	.4byte 0
	.4byte 0
	.4byte __dt__12CMetroidBetaFv
	.4byte Accept__12CMetroidBetaFR8IVisitor
	.4byte PreThink__10CPatternedFfR13CStateManager
	.4byte Think__12CMetroidBetaFfR13CStateManager
	.4byte AcceptScriptMsg__12CMetroidBetaF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__6CActorFb
	.4byte PreRender__10CPatternedFR13CStateManagerRC14CFrustumPlanes
	.4byte AddToRenderer__12CMetroidBetaCFRC14CFrustumPlanesRC13CStateManager
	.4byte Render__12CMetroidBetaCFRC13CStateManager
	.4byte CanRenderUnsorted__10CPatternedCFRC13CStateManager
	.4byte CalculateRenderBounds__6CActorFv
	.4byte HealthInfo__3CAiFR13CStateManager
	.4byte GetDamageVulnerability__12CMetroidBetaCFv
	.4byte GetDamageVulnerability__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CDamageInfo
	.4byte GetTouchBounds__10CPatternedCFv
	.4byte Touch__12CMetroidBetaFR6CActorR13CStateManager
	.4byte GetOrbitPosition__10CPatternedCFRC13CStateManager
	.4byte GetAimPosition__12CMetroidBetaCFRC13CStateManagerf
	.4byte GetHomingPosition__6CActorCFRC13CStateManagerf
	.4byte GetScanObjectIndicatorPosition__6CActorCFRC13CStateManager
	.4byte GetCollisionResponseType__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CWeaponModei
	.4byte FluidFXThink__3CAiFQ26CActor11EFluidStateR12CScriptWaterR13CStateManager
	.4byte OnScanStateChange__6CActorFQ26CActor10EScanStateR13CStateManager
	.4byte GetSortingBounds__6CActorCFRC12CTransform4f
	.4byte DoUserAnimEvent__12CMetroidBetaFR13CStateManagerRC13CInt32POINode14EUserEventType
	.4byte GetCollisionPrimitive__12CMetroidBetaCFv
	.4byte GetPrimitiveTransform__13CPhysicsActorCFv
	.4byte CollidedWith__12CMetroidBetaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
	.4byte GetStepDownHeight__13CPhysicsActorCFv
	.4byte GetStepUpHeight__13CPhysicsActorCFv
	.4byte GetWeight__13CPhysicsActorCFv
	.4byte Death__10CPatternedFR13CStateManagerRC9CVector3f18EScriptObjectState
	.4byte KnockBack__10CPatternedFRC9CVector3fR13CStateManagerRC11CDamageInfo14EKnockBackTypef
	.4byte GetDamageVulnerability__3CAiFv
	.4byte TakeDamage__10CPatternedFRC9CVector3ff
	.4byte CanBeShot__3CAiFRC13CStateManageri
	.4byte IsListening__12CMetroidBetaCFv
	.4byte Listen__3CAiFRC9CVector3f16EListenNoiseType
	.4byte GetOrigin__12CMetroidBetaCFRC13CStateManagerRC11CTeamAiRole
	.4byte Patrol__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte FollowPattern__10CPatternedFR13CStateManager9EStateMsgf
	.4byte Dead__10CPatternedFR13CStateManager9EStateMsgf
	.4byte PathFind__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte Start__10CPatternedFR13CStateManager9EStateMsgf
	.4byte SelectTarget__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte TargetPatrol__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte TargetPlayer__10CPatternedFR13CStateManager9EStateMsgf
	.4byte TargetCover__3CAiFR13CStateManager9EStateMsgf
	.4byte Halt__3CAiFR13CStateManager9EStateMsgf
	.4byte Walk__3CAiFR13CStateManager9EStateMsgf
	.4byte Run__3CAiFR13CStateManager9EStateMsgf
	.4byte Generate__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte Deactivate__3CAiFR13CStateManager9EStateMsgf
	.4byte Attack__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte LoopedAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte JumpBack__3CAiFR13CStateManager9EStateMsgf
	.4byte DoubleSnap__3CAiFR13CStateManager9EStateMsgf
	.4byte Shuffle__3CAiFR13CStateManager9EStateMsgf
	.4byte TurnAround__12CMetroidBetaFR13CStateManager9EStateMsgf
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
	.4byte TelegraphAttack__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte Jump__3CAiFR13CStateManager9EStateMsgf
	.4byte Explode__3CAiFR13CStateManager9EStateMsgf
	.4byte Dodge__3CAiFR13CStateManager9EStateMsgf
	.4byte Retreat__3CAiFR13CStateManager9EStateMsgf
	.4byte Cover__3CAiFR13CStateManager9EStateMsgf
	.4byte Approach__3CAiFR13CStateManager9EStateMsgf
	.4byte WallHang__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte WallDetach__3CAiFR13CStateManager9EStateMsgf
	.4byte Enraged__3CAiFR13CStateManager9EStateMsgf
	.4byte SpecialAttack__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte Growth__3CAiFR13CStateManager9EStateMsgf
	.4byte Faint__3CAiFR13CStateManager9EStateMsgf
	.4byte Land__3CAiFR13CStateManager9EStateMsgf
	.4byte Bounce__3CAiFR13CStateManager9EStateMsgf
	.4byte PathFindEx__3CAiFR13CStateManager9EStateMsgf
	.4byte Dizzy__3CAiFR13CStateManager9EStateMsgf
	.4byte CallForBackup__3CAiFR13CStateManager9EStateMsgf
	.4byte BulbAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte PodAttack__3CAiFR13CStateManager9EStateMsgf
	.4byte InAttackPosition__12CMetroidBetaFR13CStateManager9EStateMsgf
	.4byte Leash__10CPatternedFR13CStateManagerf
	.4byte OffLine__10CPatternedFR13CStateManagerf
	.4byte Attacked__12CMetroidBetaFR13CStateManagerf
	.4byte PathShagged__12CMetroidBetaFR13CStateManagerf
	.4byte PathOver__10CPatternedFR13CStateManagerf
	.4byte PathFound__10CPatternedFR13CStateManagerf
	.4byte TooClose__10CPatternedFR13CStateManagerf
	.4byte InRange__10CPatternedFR13CStateManagerf
	.4byte InMaxRange__10CPatternedFR13CStateManagerf
	.4byte InDetectionRange__12CMetroidBetaFR13CStateManagerf
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
	.4byte sub_801c4304
	.4byte ShouldAttack__12CMetroidBetaFR13CStateManagerf
	.4byte ShouldDoubleSnap__3CAiFR13CStateManagerf
	.4byte InPosition__12CMetroidBetaFR13CStateManagerf
	.4byte ShouldTurn__12CMetroidBetaFR13CStateManagerf
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
	.4byte AttackOver__12CMetroidBetaFR13CStateManagerf
	.4byte ShouldTaunt__3CAiFR13CStateManagerf
	.4byte Inside__3CAiFR13CStateManagerf
	.4byte ShouldFire__3CAiFR13CStateManagerf
	.4byte ShouldFlinch__3CAiFR13CStateManagerf
	.4byte PatrolPathOver__10CPatternedFR13CStateManagerf
	.4byte ShouldDodge__3CAiFR13CStateManagerf
	.4byte ShouldRetreat__3CAiFR13CStateManagerf
	.4byte ShouldCrouch__3CAiFR13CStateManagerf
	.4byte ShouldMove__3CAiFR13CStateManagerf
	.4byte ShotAt__12CMetroidBetaFR13CStateManagerf
	.4byte HasTargetingPoint__3CAiFR13CStateManagerf
	.4byte ShouldWallHang__12CMetroidBetaFR13CStateManagerf
	.4byte SetAIStage__3CAiFR13CStateManagerf
	.4byte AIStage__3CAiFR13CStateManagerf
	.4byte StartAttack__12CMetroidBetaFR13CStateManagerf
	.4byte BreakAttack__12CMetroidBetaFR13CStateManagerf
	.4byte ShouldStrafe__3CAiFR13CStateManagerf
	.4byte ShouldSpecialAttack__12CMetroidBetaFR13CStateManagerf
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
	.4byte GetSearchPath__12CMetroidBetaFv
	.4byte GetContactDamage__10CPatternedCFv
	.4byte GetModelAlphau8__10CPatternedCFRC13CStateManager
	.4byte IsOnGround__10CPatternedCFv
	.4byte GetGravityConstant__10CPatternedCFv
	.4byte GetProjectileInfo__10CPatternedFv
	.4byte PhazeOut__10CPatternedFR13CStateManager
	.4byte GetDeathExplosionParticle__10CPatternedCFv

.global lbl_803E5654
lbl_803E5654:
	# ROM: 0x3E2654
	.4byte lbl_801C5D14
	.4byte lbl_801C57FC
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5810
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5AB4
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5AC8
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5778
	.4byte lbl_801C5830
	.4byte lbl_801C5CA4
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C584C
	.4byte lbl_801C584C
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5D14
	.4byte lbl_801C5CFC

.section .sdata

.global lbl_805A7CE8
lbl_805A7CE8:
	# ROM: 0x3F5688
	.4byte 0x00000013

.global lbl_805A7CEC
lbl_805A7CEC:
	# ROM: 0x3F568C
	.4byte 0x0000001D

.global lbl_805A7CF0
lbl_805A7CF0:
	# ROM: 0x3F5690
	.4byte 0x0000001E

.global lbl_805A7CF4
lbl_805A7CF4:
	# ROM: 0x3F5694
	.4byte 0x00000021

.global lbl_805A7CF8
lbl_805A7CF8:
	# ROM: 0x3F5698
	.4byte 0

.global lbl_805A7CFC
lbl_805A7CFC:
	# ROM: 0x3F569C
	.float 1.0

.global lbl_805A7D00
lbl_805A7D00:
	# ROM: 0x3F56A0
	.4byte 0

.global lbl_805A7D04
lbl_805A7D04:
	# ROM: 0x3F56A4
	.float 1.0

.global lbl_805A7D08
lbl_805A7D08:
	# ROM: 0x3F56A8
	.4byte 0x00000013

.global lbl_805A7D0C
lbl_805A7D0C:
	# ROM: 0x3F56AC
	.4byte 0x0000001E

.global lbl_805A7D10
lbl_805A7D10:
	# ROM: 0x3F56B0
	.4byte 0x0000001F

.global lbl_805A7D14
lbl_805A7D14:
	# ROM: 0x3F56B4
	.4byte 0x0000001D

.global lbl_805A7D18
lbl_805A7D18:
	# ROM: 0x3F56B8
	.4byte 0x0000002F

.global lbl_805A7D1C
lbl_805A7D1C:
	# ROM: 0x3F56BC
	.4byte 0x00000020

.global lbl_805A7D20
lbl_805A7D20:
	# ROM: 0x3F56C0
	.4byte 0x00000021

.global lbl_805A7D24
lbl_805A7D24:
	# ROM: 0x3F56C4
	.4byte 0x00000035

.global lbl_805A7D28
lbl_805A7D28:
	# ROM: 0x3F56C8
	.4byte 0x00000015

.global lbl_805A7D2C
lbl_805A7D2C:
	# ROM: 0x3F56CC
	.4byte 0

.global lbl_805A7D30
lbl_805A7D30:
	# ROM: 0x3F56D0
	.float 1.0

.global lbl_805A7D34
lbl_805A7D34:
	# ROM: 0x3F56D4
	.4byte 0

.global lbl_805A7D38
lbl_805A7D38:
	# ROM: 0x3F56D8
	.float 1.0

.global lbl_805A7D3C
lbl_805A7D3C:
	# ROM: 0x3F56DC
	.byte 0x00

.global lbl_805A7D3D
lbl_805A7D3D:
	# ROM: 0x3F56DD
	.byte 0x7F, 0x00, 0x00

.global lbl_805A7D40
lbl_805A7D40:
	# ROM: 0x3F56E0
	.4byte 0

.global lbl_805A7D44
lbl_805A7D44:
	# ROM: 0x3F56E4
	.4byte 0x00003FFF

.section .sbss, "wa"

.global lbl_805A9060
lbl_805A9060:
	.skip 0x8
.global lbl_805A9068
lbl_805A9068:
	.skip 0x4
.global lbl_805A906C
lbl_805A906C:
	.skip 0x4

.section .text, "ax"

.global IsListening__12CMetroidBetaCFv
IsListening__12CMetroidBetaCFv:
/* 801C0D8C 001BDCEC  38 60 00 01 */	li r3, 1
/* 801C0D90 001BDCF0  4E 80 00 20 */	blr

.global GetCollisionPrimitive__12CMetroidBetaCFv
GetCollisionPrimitive__12CMetroidBetaCFv:
/* 801C0D94 001BDCF4  38 63 07 68 */	addi r3, r3, 0x768
/* 801C0D98 001BDCF8  4E 80 00 20 */	blr

.global GetSearchPath__12CMetroidBetaFv
GetSearchPath__12CMetroidBetaFv:
/* 801C0D9C 001BDCFC  38 63 06 7C */	addi r3, r3, 0x67c
/* 801C0DA0 001BDD00  4E 80 00 20 */	blr

.global sub_801c0da4
sub_801c0da4:
/* 801C0DA4 001BDD04  C0 43 07 94 */	lfs f2, 0x794(r3)
/* 801C0DA8 001BDD08  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C0DAC 001BDD0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C0DB0 001BDD10  40 81 00 30 */	ble lbl_801C0DE0
/* 801C0DB4 001BDD14  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C0DB8 001BDD18  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801C0DBC 001BDD1C  2C 00 00 01 */	cmpwi r0, 1
/* 801C0DC0 001BDD20  40 82 00 10 */	bne lbl_801C0DD0
/* 801C0DC4 001BDD24  C0 02 AA 9C */	lfs f0, lbl_805AC7BC@sda21(r2)
/* 801C0DC8 001BDD28  EC 40 00 72 */	fmuls f2, f0, f1
/* 801C0DCC 001BDD2C  48 00 00 08 */	b lbl_801C0DD4
lbl_801C0DD0:
/* 801C0DD0 001BDD30  FC 40 08 90 */	fmr f2, f1
lbl_801C0DD4:
/* 801C0DD4 001BDD34  C0 03 07 94 */	lfs f0, 0x794(r3)
/* 801C0DD8 001BDD38  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C0DDC 001BDD3C  D0 03 07 94 */	stfs f0, 0x794(r3)
lbl_801C0DE0:
/* 801C0DE0 001BDD40  C0 02 AA A0 */	lfs f0, lbl_805AC7C0@sda21(r2)
/* 801C0DE4 001BDD44  C0 43 08 3C */	lfs f2, 0x83c(r3)
/* 801C0DE8 001BDD48  EC 00 00 72 */	fmuls f0, f0, f1
/* 801C0DEC 001BDD4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C0DF0 001BDD50  40 81 00 0C */	ble lbl_801C0DFC
/* 801C0DF4 001BDD54  EC 02 00 28 */	fsubs f0, f2, f0
/* 801C0DF8 001BDD58  48 00 00 08 */	b lbl_801C0E00
lbl_801C0DFC:
/* 801C0DFC 001BDD5C  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
lbl_801C0E00:
/* 801C0E00 001BDD60  D0 03 08 3C */	stfs f0, 0x83c(r3)
/* 801C0E04 001BDD64  4E 80 00 20 */	blr

.global sub_801c0e08
sub_801c0e08:
/* 801C0E08 001BDD68  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C0E0C 001BDD6C  7C 08 02 A6 */	mflr r0
/* 801C0E10 001BDD70  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C0E14 001BDD74  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C0E18 001BDD78  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C0E1C 001BDD7C  7C 7F 1B 78 */	mr r31, r3
/* 801C0E20 001BDD80  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801C0E24 001BDD84  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C0E28 001BDD88  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 801C0E2C 001BDD8C  C0 63 00 08 */	lfs f3, 8(r3)
/* 801C0E30 001BDD90  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801C0E34 001BDD94  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 801C0E38 001BDD98  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801C0E3C 001BDD9C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801C0E40 001BDDA0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 801C0E44 001BDDA4  EC 21 00 F2 */	fmuls f1, f1, f3
/* 801C0E48 001BDDA8  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 801C0E4C 001BDDAC  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 801C0E50 001BDDB0  EC 23 09 3A */	fmadds f1, f3, f4, f1
/* 801C0E54 001BDDB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C0E58 001BDDB8  40 80 00 78 */	bge lbl_801C0ED0
/* 801C0E5C 001BDDBC  38 61 00 14 */	addi r3, r1, 0x14
/* 801C0E60 001BDDC0  48 15 38 99 */	bl CanBeNormalized__9CVector3fCFv
/* 801C0E64 001BDDC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C0E68 001BDDC8  41 82 00 68 */	beq lbl_801C0ED0
/* 801C0E6C 001BDDCC  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C0E70 001BDDD0  38 63 00 04 */	addi r3, r3, 4
/* 801C0E74 001BDDD4  4B F7 06 35 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801C0E78 001BDDD8  38 61 00 08 */	addi r3, r1, 8
/* 801C0E7C 001BDDDC  38 81 00 14 */	addi r4, r1, 0x14
/* 801C0E80 001BDDE0  48 15 39 D1 */	bl AsNormalized__9CVector3fCFv
/* 801C0E84 001BDDE4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C0E88 001BDDE8  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 801C0E8C 001BDDEC  C0 61 00 08 */	lfs f3, 8(r1)
/* 801C0E90 001BDDF0  38 81 00 20 */	addi r4, r1, 0x20
/* 801C0E94 001BDDF4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801C0E98 001BDDF8  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C0E9C 001BDDFC  C0 83 00 08 */	lfs f4, 8(r3)
/* 801C0EA0 001BDE00  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801C0EA4 001BDE04  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C0EA8 001BDE08  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 801C0EAC 001BDE0C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 801C0EB0 001BDE10  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801C0EB4 001BDE14  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801C0EB8 001BDE18  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801C0EBC 001BDE1C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801C0EC0 001BDE20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801C0EC4 001BDE24  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C0EC8 001BDE28  38 63 00 04 */	addi r3, r3, 4
/* 801C0ECC 001BDE2C  4B F7 08 4D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C0ED0:
/* 801C0ED0 001BDE30  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C0ED4 001BDE34  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C0ED8 001BDE38  7C 08 03 A6 */	mtlr r0
/* 801C0EDC 001BDE3C  38 21 00 50 */	addi r1, r1, 0x50
/* 801C0EE0 001BDE40  4E 80 00 20 */	blr

.global sub_801c0ee4
sub_801c0ee4:
/* 801C0EE4 001BDE44  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801C0EE8 001BDE48  7C 08 02 A6 */	mflr r0
/* 801C0EEC 001BDE4C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801C0EF0 001BDE50  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 801C0EF4 001BDE54  7C BF 2B 78 */	mr r31, r5
/* 801C0EF8 001BDE58  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 801C0EFC 001BDE5C  7C 9E 23 78 */	mr r30, r4
/* 801C0F00 001BDE60  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 801C0F04 001BDE64  7C 7D 1B 78 */	mr r29, r3
/* 801C0F08 001BDE68  C0 C3 00 50 */	lfs f6, 0x50(r3)
/* 801C0F0C 001BDE6C  C0 05 00 04 */	lfs f0, 4(r5)
/* 801C0F10 001BDE70  C0 E3 00 40 */	lfs f7, 0x40(r3)
/* 801C0F14 001BDE74  EC 20 30 28 */	fsubs f1, f0, f6
/* 801C0F18 001BDE78  C0 05 00 00 */	lfs f0, 0(r5)
/* 801C0F1C 001BDE7C  C0 A3 00 60 */	lfs f5, 0x60(r3)
/* 801C0F20 001BDE80  EC 60 38 28 */	fsubs f3, f0, f7
/* 801C0F24 001BDE84  C0 85 00 08 */	lfs f4, 8(r5)
/* 801C0F28 001BDE88  EC 21 00 72 */	fmuls f1, f1, f1
/* 801C0F2C 001BDE8C  EC 44 28 28 */	fsubs f2, f4, f5
/* 801C0F30 001BDE90  C0 02 AA A8 */	lfs f0, lbl_805AC7C8@sda21(r2)
/* 801C0F34 001BDE94  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801C0F38 001BDE98  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801C0F3C 001BDE9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C0F40 001BDEA0  40 81 00 FC */	ble lbl_801C103C
/* 801C0F44 001BDEA4  D0 E1 00 2C */	stfs f7, 0x2c(r1)
/* 801C0F48 001BDEA8  7F A5 EB 78 */	mr r5, r29
/* 801C0F4C 001BDEAC  C0 22 AA AC */	lfs f1, lbl_805AC7CC@sda21(r2)
/* 801C0F50 001BDEB0  38 61 00 20 */	addi r3, r1, 0x20
/* 801C0F54 001BDEB4  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 801C0F58 001BDEB8  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801C0F5C 001BDEBC  38 C1 00 44 */	addi r6, r1, 0x44
/* 801C0F60 001BDEC0  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 801C0F64 001BDEC4  D0 E1 00 44 */	stfs f7, 0x44(r1)
/* 801C0F68 001BDEC8  D0 C1 00 48 */	stfs f6, 0x48(r1)
/* 801C0F6C 001BDECC  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 801C0F70 001BDED0  4B F7 DB AD */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801C0F74 001BDED4  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 801C0F78 001BDED8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801C0F7C 001BDEDC  EC 24 01 32 */	fmuls f1, f4, f4
/* 801C0F80 001BDEE0  C0 A1 00 28 */	lfs f5, 0x28(r1)
/* 801C0F84 001BDEE4  C0 02 AA B0 */	lfs f0, lbl_805AC7D0@sda21(r2)
/* 801C0F88 001BDEE8  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801C0F8C 001BDEEC  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 801C0F90 001BDEF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C0F94 001BDEF4  40 81 00 44 */	ble lbl_801C0FD8
/* 801C0F98 001BDEF8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C0F9C 001BDEFC  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C0FA0 001BDF00  C0 02 AA B4 */	lfs f0, lbl_805AC7D4@sda21(r2)
/* 801C0FA4 001BDF04  38 81 00 88 */	addi r4, r1, 0x88
/* 801C0FA8 001BDF08  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 801C0FAC 001BDF0C  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C0FB0 001BDF10  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C0FB4 001BDF14  D0 81 00 8C */	stfs f4, 0x8c(r1)
/* 801C0FB8 001BDF18  D0 A1 00 90 */	stfs f5, 0x90(r1)
/* 801C0FBC 001BDF1C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801C0FC0 001BDF20  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801C0FC4 001BDF24  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801C0FC8 001BDF28  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801C0FCC 001BDF2C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C0FD0 001BDF30  38 63 00 04 */	addi r3, r3, 4
/* 801C0FD4 001BDF34  4B F7 07 45 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C0FD8:
/* 801C0FD8 001BDF38  7F A5 EB 78 */	mr r5, r29
/* 801C0FDC 001BDF3C  7F E6 FB 78 */	mr r6, r31
/* 801C0FE0 001BDF40  38 61 00 14 */	addi r3, r1, 0x14
/* 801C0FE4 001BDF44  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801C0FE8 001BDF48  4B F7 DC 39 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 801C0FEC 001BDF4C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C0FF0 001BDF50  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C0FF4 001BDF54  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 801C0FF8 001BDF58  38 81 00 6C */	addi r4, r1, 0x6c
/* 801C0FFC 001BDF5C  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 801C1000 001BDF60  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 801C1004 001BDF64  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C1008 001BDF68  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C100C 001BDF6C  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C1010 001BDF70  D0 C1 00 6C */	stfs f6, 0x6c(r1)
/* 801C1014 001BDF74  D0 A1 00 70 */	stfs f5, 0x70(r1)
/* 801C1018 001BDF78  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 801C101C 001BDF7C  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 801C1020 001BDF80  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801C1024 001BDF84  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801C1028 001BDF88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801C102C 001BDF8C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C1030 001BDF90  38 63 00 04 */	addi r3, r3, 4
/* 801C1034 001BDF94  4B F7 06 E5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801C1038 001BDF98  48 00 00 BC */	b lbl_801C10F4
lbl_801C103C:
/* 801C103C 001BDF9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1040 001BDFA0  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C1044 001BDFA4  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801C1048 001BDFA8  7D 89 03 A6 */	mtctr r12
/* 801C104C 001BDFAC  4E 80 04 21 */	bctrl
/* 801C1050 001BDFB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C1054 001BDFB4  41 82 00 A0 */	beq lbl_801C10F4
/* 801C1058 001BDFB8  80 9E 08 4C */	lwz r4, 0x84c(r30)
/* 801C105C 001BDFBC  38 61 00 38 */	addi r3, r1, 0x38
/* 801C1060 001BDFC0  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 801C1064 001BDFC4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801C1068 001BDFC8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801C106C 001BDFCC  C0 5D 00 60 */	lfs f2, 0x60(r29)
/* 801C1070 001BDFD0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801C1074 001BDFD4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801C1078 001BDFD8  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 801C107C 001BDFDC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C1080 001BDFE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C1084 001BDFE4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801C1088 001BDFE8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801C108C 001BDFEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801C1090 001BDFF0  48 15 36 69 */	bl CanBeNormalized__9CVector3fCFv
/* 801C1094 001BDFF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C1098 001BDFF8  41 82 00 5C */	beq lbl_801C10F4
/* 801C109C 001BDFFC  38 61 00 08 */	addi r3, r1, 8
/* 801C10A0 001BE000  38 81 00 38 */	addi r4, r1, 0x38
/* 801C10A4 001BE004  48 15 37 AD */	bl AsNormalized__9CVector3fCFv
/* 801C10A8 001BE008  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C10AC 001BE00C  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 801C10B0 001BE010  C0 61 00 08 */	lfs f3, 8(r1)
/* 801C10B4 001BE014  38 81 00 50 */	addi r4, r1, 0x50
/* 801C10B8 001BE018  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801C10BC 001BE01C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C10C0 001BE020  C0 83 00 08 */	lfs f4, 8(r3)
/* 801C10C4 001BE024  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801C10C8 001BE028  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C10CC 001BE02C  D0 C1 00 50 */	stfs f6, 0x50(r1)
/* 801C10D0 001BE030  D0 A1 00 54 */	stfs f5, 0x54(r1)
/* 801C10D4 001BE034  D0 81 00 58 */	stfs f4, 0x58(r1)
/* 801C10D8 001BE038  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 801C10DC 001BE03C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801C10E0 001BE040  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 801C10E4 001BE044  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801C10E8 001BE048  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C10EC 001BE04C  38 63 00 04 */	addi r3, r3, 4
/* 801C10F0 001BE050  4B F7 06 29 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C10F4:
/* 801C10F4 001BE054  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801C10F8 001BE058  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801C10FC 001BE05C  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801C1100 001BE060  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 801C1104 001BE064  7C 08 03 A6 */	mtlr r0
/* 801C1108 001BE068  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801C110C 001BE06C  4E 80 00 20 */	blr

.global sub_801c1110
sub_801c1110:
/* 801C1110 001BE070  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C1114 001BE074  7C 08 02 A6 */	mflr r0
/* 801C1118 001BE078  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C111C 001BE07C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801C1120 001BE080  7C 7F 1B 78 */	mr r31, r3
/* 801C1124 001BE084  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801C1128 001BE088  93 A1 00 54 */	stw r29, 0x54(r1)
/* 801C112C 001BE08C  93 81 00 50 */	stw r28, 0x50(r1)
/* 801C1130 001BE090  83 A4 08 38 */	lwz r29, 0x838(r4)
/* 801C1134 001BE094  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C1138 001BE098  3B C4 66 A0 */	addi r30, r4, skZero3f@l
/* 801C113C 001BE09C  AB 9D 20 08 */	lha r28, 0x2008(r29)
/* 801C1140 001BE0A0  48 00 01 04 */	b lbl_801C1244
lbl_801C1144:
/* 801C1144 001BE0A4  7F A3 EB 78 */	mr r3, r29
/* 801C1148 001BE0A8  7F 84 E3 78 */	mr r4, r28
/* 801C114C 001BE0AC  4B E4 EB 91 */	bl __vc__11CObjectListCFi
/* 801C1150 001BE0B0  7C 64 1B 78 */	mr r4, r3
/* 801C1154 001BE0B4  38 61 00 08 */	addi r3, r1, 8
/* 801C1158 001BE0B8  4B EE B9 05 */	bl "__ct__16TCastToPtr<3CAi>FP7CEntity"
/* 801C115C 001BE0BC  80 83 00 04 */	lwz r4, 4(r3)
/* 801C1160 001BE0C0  28 04 00 00 */	cmplwi r4, 0
/* 801C1164 001BE0C4  41 82 00 C4 */	beq lbl_801C1228
/* 801C1168 001BE0C8  7C 04 F8 40 */	cmplw r4, r31
/* 801C116C 001BE0CC  41 82 00 BC */	beq lbl_801C1228
/* 801C1170 001BE0D0  80 64 00 04 */	lwz r3, 4(r4)
/* 801C1174 001BE0D4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801C1178 001BE0D8  7C 03 00 00 */	cmpw r3, r0
/* 801C117C 001BE0DC  40 82 00 AC */	bne lbl_801C1228
/* 801C1180 001BE0E0  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801C1184 001BE0E4  7F E5 FB 78 */	mr r5, r31
/* 801C1188 001BE0E8  C0 44 00 50 */	lfs f2, 0x50(r4)
/* 801C118C 001BE0EC  38 61 00 1C */	addi r3, r1, 0x1c
/* 801C1190 001BE0F0  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801C1194 001BE0F4  38 9F 04 5C */	addi r4, r31, 0x45c
/* 801C1198 001BE0F8  C0 22 AA B8 */	lfs f1, lbl_805AC7D8@sda21(r2)
/* 801C119C 001BE0FC  38 C1 00 10 */	addi r6, r1, 0x10
/* 801C11A0 001BE100  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C11A4 001BE104  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C11A8 001BE108  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801C11AC 001BE10C  4B F7 D7 45 */	bl Separation__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801C11B0 001BE110  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 801C11B4 001BE114  38 00 00 00 */	li r0, 0
/* 801C11B8 001BE118  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C11BC 001BE11C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801C11C0 001BE120  FC 00 30 00 */	fcmpu cr0, f0, f6
/* 801C11C4 001BE124  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 801C11C8 001BE128  40 82 00 14 */	bne lbl_801C11DC
/* 801C11CC 001BE12C  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 801C11D0 001BE130  40 82 00 0C */	bne lbl_801C11DC
/* 801C11D4 001BE134  FC 00 28 00 */	fcmpu cr0, f0, f5
/* 801C11D8 001BE138  41 82 00 08 */	beq lbl_801C11E0
lbl_801C11DC:
/* 801C11DC 001BE13C  38 00 00 01 */	li r0, 1
lbl_801C11E0:
/* 801C11E0 001BE140  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801C11E4 001BE144  41 82 00 44 */	beq lbl_801C1228
/* 801C11E8 001BE148  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C11EC 001BE14C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 801C11F0 001BE150  C0 3E 00 08 */	lfs f1, 8(r30)
/* 801C11F4 001BE154  38 81 00 28 */	addi r4, r1, 0x28
/* 801C11F8 001BE158  C0 63 66 A0 */	lfs f3, skZero3f@l(r3)
/* 801C11FC 001BE15C  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C1200 001BE160  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 801C1204 001BE164  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801C1208 001BE168  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801C120C 001BE16C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801C1210 001BE170  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801C1214 001BE174  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801C1218 001BE178  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801C121C 001BE17C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C1220 001BE180  38 63 00 04 */	addi r3, r3, 4
/* 801C1224 001BE184  4B F7 04 F5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C1228:
/* 801C1228 001BE188  2C 1C FF FF */	cmpwi r28, -1
/* 801C122C 001BE18C  41 82 00 14 */	beq lbl_801C1240
/* 801C1230 001BE190  57 83 18 38 */	slwi r3, r28, 3
/* 801C1234 001BE194  38 03 00 08 */	addi r0, r3, 8
/* 801C1238 001BE198  7F 9D 02 AE */	lhax r28, r29, r0
/* 801C123C 001BE19C  48 00 00 08 */	b lbl_801C1244
lbl_801C1240:
/* 801C1240 001BE1A0  3B 80 FF FF */	li r28, -1
lbl_801C1244:
/* 801C1244 001BE1A4  2C 1C FF FF */	cmpwi r28, -1
/* 801C1248 001BE1A8  40 82 FE FC */	bne lbl_801C1144
/* 801C124C 001BE1AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C1250 001BE1B0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801C1254 001BE1B4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801C1258 001BE1B8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 801C125C 001BE1BC  83 81 00 50 */	lwz r28, 0x50(r1)
/* 801C1260 001BE1C0  7C 08 03 A6 */	mtlr r0
/* 801C1264 001BE1C4  38 21 00 60 */	addi r1, r1, 0x60
/* 801C1268 001BE1C8  4E 80 00 20 */	blr

.global sub_801c126c
sub_801c126c:
/* 801C126C 001BE1CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C1270 001BE1D0  7C 08 02 A6 */	mflr r0
/* 801C1274 001BE1D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C1278 001BE1D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C127C 001BE1DC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C1280 001BE1E0  7C 7E 1B 78 */	mr r30, r3
/* 801C1284 001BE1E4  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801C1288 001BE1E8  A0 63 06 78 */	lhz r3, 0x678(r3)
/* 801C128C 001BE1EC  7C 03 00 40 */	cmplw r3, r0
/* 801C1290 001BE1F0  41 82 00 68 */	beq lbl_801C12F8
/* 801C1294 001BE1F4  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C1298 001BE1F8  7C 83 23 78 */	mr r3, r4
/* 801C129C 001BE1FC  38 81 00 18 */	addi r4, r1, 0x18
/* 801C12A0 001BE200  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C12A4 001BE204  4B E8 B2 D1 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C12A8 001BE208  7C 64 1B 78 */	mr r4, r3
/* 801C12AC 001BE20C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801C12B0 001BE210  4B EE 62 C5 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801C12B4 001BE214  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C12B8 001BE218  28 1F 00 00 */	cmplwi r31, 0
/* 801C12BC 001BE21C  41 82 00 3C */	beq lbl_801C12F8
/* 801C12C0 001BE220  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C12C4 001BE224  7F E3 FB 78 */	mr r3, r31
/* 801C12C8 001BE228  38 81 00 14 */	addi r4, r1, 0x14
/* 801C12CC 001BE22C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C12D0 001BE230  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C12D4 001BE234  48 07 7D 1D */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801C12D8 001BE238  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C12DC 001BE23C  41 82 00 1C */	beq lbl_801C12F8
/* 801C12E0 001BE240  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C12E4 001BE244  7F E3 FB 78 */	mr r3, r31
/* 801C12E8 001BE248  38 81 00 0C */	addi r4, r1, 0xc
/* 801C12EC 001BE24C  B0 01 00 08 */	sth r0, 8(r1)
/* 801C12F0 001BE250  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C12F4 001BE254  48 07 82 01 */	bl RemoveTeamAiRole__10CTeamAiMgrF9TUniqueId
lbl_801C12F8:
/* 801C12F8 001BE258  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C12FC 001BE25C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C1300 001BE260  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C1304 001BE264  7C 08 03 A6 */	mtlr r0
/* 801C1308 001BE268  38 21 00 30 */	addi r1, r1, 0x30
/* 801C130C 001BE26C  4E 80 00 20 */	blr

.global sub_801c1310
sub_801c1310:
/* 801C1310 001BE270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C1314 001BE274  7C 08 02 A6 */	mflr r0
/* 801C1318 001BE278  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C131C 001BE27C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C1320 001BE280  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C1324 001BE284  7C 7E 1B 78 */	mr r30, r3
/* 801C1328 001BE288  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801C132C 001BE28C  A0 63 06 78 */	lhz r3, 0x678(r3)
/* 801C1330 001BE290  7C 03 00 40 */	cmplw r3, r0
/* 801C1334 001BE294  41 82 00 68 */	beq lbl_801C139C
/* 801C1338 001BE298  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C133C 001BE29C  7C 83 23 78 */	mr r3, r4
/* 801C1340 001BE2A0  38 81 00 10 */	addi r4, r1, 0x10
/* 801C1344 001BE2A4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C1348 001BE2A8  4B E8 B2 2D */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C134C 001BE2AC  7C 64 1B 78 */	mr r4, r3
/* 801C1350 001BE2B0  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1354 001BE2B4  4B EE 62 21 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801C1358 001BE2B8  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C135C 001BE2BC  28 1F 00 00 */	cmplwi r31, 0
/* 801C1360 001BE2C0  41 82 00 3C */	beq lbl_801C139C
/* 801C1364 001BE2C4  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C1368 001BE2C8  7F E3 FB 78 */	mr r3, r31
/* 801C136C 001BE2CC  38 81 00 0C */	addi r4, r1, 0xc
/* 801C1370 001BE2D0  B0 01 00 08 */	sth r0, 8(r1)
/* 801C1374 001BE2D4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C1378 001BE2D8  48 07 7C 79 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801C137C 001BE2DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C1380 001BE2E0  40 82 00 1C */	bne lbl_801C139C
/* 801C1384 001BE2E4  7F E3 FB 78 */	mr r3, r31
/* 801C1388 001BE2E8  7F C4 F3 78 */	mr r4, r30
/* 801C138C 001BE2EC  38 A0 00 02 */	li r5, 2
/* 801C1390 001BE2F0  38 C0 FF FF */	li r6, -1
/* 801C1394 001BE2F4  38 E0 FF FF */	li r7, -1
/* 801C1398 001BE2F8  48 07 84 15 */	bl AssignTeamAiRole__10CTeamAiMgrFRC3CAiiii
lbl_801C139C:
/* 801C139C 001BE2FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C13A0 001BE300  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C13A4 001BE304  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C13A8 001BE308  7C 08 03 A6 */	mtlr r0
/* 801C13AC 001BE30C  38 21 00 30 */	addi r1, r1, 0x30
/* 801C13B0 001BE310  4E 80 00 20 */	blr

.global sub_801c13b4
sub_801c13b4:
/* 801C13B4 001BE314  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801C13B8 001BE318  C0 04 00 00 */	lfs f0, 0(r4)
/* 801C13BC 001BE31C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C13C0 001BE320  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C13C4 001BE324  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C13C8 001BE328  C0 04 00 08 */	lfs f0, 8(r4)
/* 801C13CC 001BE32C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C13D0 001BE330  4E 80 00 20 */	blr

.global sub_801c13d4
sub_801c13d4:
/* 801C13D4 001BE334  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C13D8 001BE338  7C 08 02 A6 */	mflr r0
/* 801C13DC 001BE33C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C13E0 001BE340  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801C13E4 001BE344  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801C13E8 001BE348  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 801C13EC 001BE34C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, qr0
/* 801C13F0 001BE350  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C13F4 001BE354  7C 7F 1B 78 */	mr r31, r3
/* 801C13F8 001BE358  48 00 01 65 */	bl sub_801c155c
/* 801C13FC 001BE35C  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C1400 001BE360  38 81 00 10 */	addi r4, r1, 0x10
/* 801C1404 001BE364  38 6D 91 74 */	addi r3, r13, lbl_805A7D34@sda21
/* 801C1408 001BE368  38 AD 91 78 */	addi r5, r13, lbl_805A7D38@sda21
/* 801C140C 001BE36C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C1410 001BE370  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C1414 001BE374  4B E4 AE A1 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801C1418 001BE378  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801C141C 001BE37C  C0 22 AA C4 */	lfs f1, lbl_805AC7E4@sda21(r2)
/* 801C1420 001BE380  C0 02 AA C0 */	lfs f0, lbl_805AC7E0@sda21(r2)
/* 801C1424 001BE384  C0 42 AA BC */	lfs f2, lbl_805AC7DC@sda21(r2)
/* 801C1428 001BE388  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 801C142C 001BE38C  EF C2 00 32 */	fmuls f30, f2, f0
/* 801C1430 001BE390  F3 C1 A0 08 */	psq_st f30, 8(r1), 1, qr2
/* 801C1434 001BE394  38 81 00 09 */	addi r4, r1, 9
/* 801C1438 001BE398  38 6D 91 7C */	addi r3, r13, lbl_805A7D3C@sda21
/* 801C143C 001BE39C  38 AD 91 7D */	addi r5, r13, lbl_805A7D3D@sda21
/* 801C1440 001BE3A0  88 01 00 08 */	lbz r0, 8(r1)
/* 801C1444 001BE3A4  98 01 00 09 */	stb r0, 9(r1)
/* 801C1448 001BE3A8  4B FB 13 C9 */	bl sub_80172810
/* 801C144C 001BE3AC  88 83 00 00 */	lbz r4, 0(r3)
/* 801C1450 001BE3B0  7F E3 FB 78 */	mr r3, r31
/* 801C1454 001BE3B4  4B E9 1F 1D */	bl SetVolume__6CActorFUc
/* 801C1458 001BE3B8  C0 02 AA C8 */	lfs f0, lbl_805AC7E8@sda21(r2)
/* 801C145C 001BE3BC  38 81 00 0C */	addi r4, r1, 0xc
/* 801C1460 001BE3C0  38 6D 91 80 */	addi r3, r13, lbl_805A7D40@sda21
/* 801C1464 001BE3C4  38 AD 91 84 */	addi r5, r13, lbl_805A7D44@sda21
/* 801C1468 001BE3C8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801C146C 001BE3CC  FC 00 00 1E */	fctiwz f0, f0
/* 801C1470 001BE3D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801C1474 001BE3D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801C1478 001BE3D8  20 00 10 00 */	subfic r0, r0, 0x1000
/* 801C147C 001BE3DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801C1480 001BE3E0  4B E9 8B E5 */	bl "Clamp<i>__5CMathFRCiRCiRCi"
/* 801C1484 001BE3E4  80 83 00 00 */	lwz r4, 0(r3)
/* 801C1488 001BE3E8  7F E3 FB 78 */	mr r3, r31
/* 801C148C 001BE3EC  4B E9 1E 99 */	bl SetSoundEventPitchBend__6CActorFi
/* 801C1490 001BE3F0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801C1494 001BE3F4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801C1498 001BE3F8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, qr0
/* 801C149C 001BE3FC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 801C14A0 001BE400  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C14A4 001BE404  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C14A8 001BE408  7C 08 03 A6 */	mtlr r0
/* 801C14AC 001BE40C  38 21 00 50 */	addi r1, r1, 0x50
/* 801C14B0 001BE410  4E 80 00 20 */	blr

.global sub_801c14b4
sub_801c14b4:
/* 801C14B4 001BE414  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C14B8 001BE418  7C 08 02 A6 */	mflr r0
/* 801C14BC 001BE41C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C14C0 001BE420  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801C14C4 001BE424  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 801C14C8 001BE428  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C14CC 001BE42C  7C 7F 1B 78 */	mr r31, r3
/* 801C14D0 001BE430  38 81 00 08 */	addi r4, r1, 8
/* 801C14D4 001BE434  C0 03 07 DC */	lfs f0, 0x7dc(r3)
/* 801C14D8 001BE438  38 6D 91 6C */	addi r3, r13, lbl_805A7D2C@sda21
/* 801C14DC 001BE43C  38 AD 91 70 */	addi r5, r13, lbl_805A7D30@sda21
/* 801C14E0 001BE440  EC 00 08 2A */	fadds f0, f0, f1
/* 801C14E4 001BE444  D0 1F 07 DC */	stfs f0, 0x7dc(r31)
/* 801C14E8 001BE448  C0 3F 07 DC */	lfs f1, 0x7dc(r31)
/* 801C14EC 001BE44C  C0 1F 06 58 */	lfs f0, 0x658(r31)
/* 801C14F0 001BE450  C0 5F 06 54 */	lfs f2, 0x654(r31)
/* 801C14F4 001BE454  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C14F8 001BE458  C0 3F 07 D0 */	lfs f1, 0x7d0(r31)
/* 801C14FC 001BE45C  EF E2 08 28 */	fsubs f31, f2, f1
/* 801C1500 001BE460  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C1504 001BE464  4B E4 AD B1 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801C1508 001BE468  C0 43 00 00 */	lfs f2, 0(r3)
/* 801C150C 001BE46C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C1510 001BE470  C0 1F 07 D0 */	lfs f0, 0x7d0(r31)
/* 801C1514 001BE474  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801C1518 001BE478  7F E3 FB 78 */	mr r3, r31
/* 801C151C 001BE47C  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C1520 001BE480  EC 02 07 FA */	fmadds f0, f2, f31, f0
/* 801C1524 001BE484  D0 1F 07 B4 */	stfs f0, 0x7b4(r31)
/* 801C1528 001BE488  D0 1F 07 B8 */	stfs f0, 0x7b8(r31)
/* 801C152C 001BE48C  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 801C1530 001BE490  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C1534 001BE494  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 801C1538 001BE498  7D 89 03 A6 */	mtctr r12
/* 801C153C 001BE49C  4E 80 04 21 */	bctrl
/* 801C1540 001BE4A0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801C1544 001BE4A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C1548 001BE4A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801C154C 001BE4AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C1550 001BE4B0  7C 08 03 A6 */	mtlr r0
/* 801C1554 001BE4B4  38 21 00 30 */	addi r1, r1, 0x30
/* 801C1558 001BE4B8  4E 80 00 20 */	blr

.global sub_801c155c
sub_801c155c:
/* 801C155C 001BE4BC  C0 23 07 DC */	lfs f1, 0x7dc(r3)
/* 801C1560 001BE4C0  C0 03 06 58 */	lfs f0, 0x658(r3)
/* 801C1564 001BE4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1568 001BE4C8  40 80 00 14 */	bge lbl_801C157C
/* 801C156C 001BE4CC  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C1570 001BE4D0  C0 22 AA A4 */	lfs f1, lbl_805AC7C4@sda21(r2)
/* 801C1574 001BE4D4  EC 21 00 2A */	fadds f1, f1, f0
/* 801C1578 001BE4D8  4E 80 00 20 */	blr
lbl_801C157C:
/* 801C157C 001BE4DC  C0 63 06 5C */	lfs f3, 0x65c(r3)
/* 801C1580 001BE4E0  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 801C1584 001BE4E4  40 80 00 1C */	bge lbl_801C15A0
/* 801C1588 001BE4E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C158C 001BE4EC  C0 42 AA 9C */	lfs f2, lbl_805AC7BC@sda21(r2)
/* 801C1590 001BE4F0  EC 03 00 28 */	fsubs f0, f3, f0
/* 801C1594 001BE4F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801C1598 001BE4F8  EC 22 00 2A */	fadds f1, f2, f0
/* 801C159C 001BE4FC  4E 80 00 20 */	blr
lbl_801C15A0:
/* 801C15A0 001BE500  C0 22 AA B4 */	lfs f1, lbl_805AC7D4@sda21(r2)
/* 801C15A4 001BE504  4E 80 00 20 */	blr

.global sub_801c15a8
sub_801c15a8:
/* 801C15A8 001BE508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C15AC 001BE50C  7C 08 02 A6 */	mflr r0
/* 801C15B0 001BE510  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C15B4 001BE514  4B FF FF A9 */	bl sub_801c155c
/* 801C15B8 001BE518  C0 42 AA A4 */	lfs f2, lbl_805AC7C4@sda21(r2)
/* 801C15BC 001BE51C  C0 02 AA AC */	lfs f0, lbl_805AC7CC@sda21(r2)
/* 801C15C0 001BE520  EC 21 10 28 */	fsubs f1, f1, f2
/* 801C15C4 001BE524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C15C8 001BE528  EC 20 10 7A */	fmadds f1, f0, f1, f2
/* 801C15CC 001BE52C  7C 08 03 A6 */	mtlr r0
/* 801C15D0 001BE530  38 21 00 10 */	addi r1, r1, 0x10
/* 801C15D4 001BE534  4E 80 00 20 */	blr

.global sub_801c15d8
sub_801c15d8:
/* 801C15D8 001BE538  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C15DC 001BE53C  7C 08 02 A6 */	mflr r0
/* 801C15E0 001BE540  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C15E4 001BE544  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C15E8 001BE548  7C 7F 1B 78 */	mr r31, r3
/* 801C15EC 001BE54C  80 85 08 4C */	lwz r4, 0x84c(r5)
/* 801C15F0 001BE550  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801C15F4 001BE554  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801C15F8 001BE558  2C 00 00 00 */	cmpwi r0, 0
/* 801C15FC 001BE55C  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801C1600 001BE560  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801C1604 001BE564  41 82 00 14 */	beq lbl_801C1618
/* 801C1608 001BE568  41 80 00 48 */	blt lbl_801C1650
/* 801C160C 001BE56C  2C 00 00 04 */	cmpwi r0, 4
/* 801C1610 001BE570  40 80 00 40 */	bge lbl_801C1650
/* 801C1614 001BE574  48 00 00 18 */	b lbl_801C162C
lbl_801C1618:
/* 801C1618 001BE578  80 64 04 90 */	lwz r3, 0x490(r4)
/* 801C161C 001BE57C  C0 03 03 F4 */	lfs f0, 0x3f4(r3)
/* 801C1620 001BE580  C0 23 04 04 */	lfs f1, 0x404(r3)
/* 801C1624 001BE584  C0 43 04 14 */	lfs f2, 0x414(r3)
/* 801C1628 001BE588  48 00 00 28 */	b lbl_801C1650
lbl_801C162C:
/* 801C162C 001BE58C  81 84 00 00 */	lwz r12, 0(r4)
/* 801C1630 001BE590  38 61 00 08 */	addi r3, r1, 8
/* 801C1634 001BE594  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C1638 001BE598  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801C163C 001BE59C  7D 89 03 A6 */	mtctr r12
/* 801C1640 001BE5A0  4E 80 04 21 */	bctrl
/* 801C1644 001BE5A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C1648 001BE5A8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801C164C 001BE5AC  C0 41 00 10 */	lfs f2, 0x10(r1)
lbl_801C1650:
/* 801C1650 001BE5B0  D0 1F 00 00 */	stfs f0, 0(r31)
/* 801C1654 001BE5B4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 801C1658 001BE5B8  D0 5F 00 08 */	stfs f2, 8(r31)
/* 801C165C 001BE5BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C1660 001BE5C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1664 001BE5C4  7C 08 03 A6 */	mtlr r0
/* 801C1668 001BE5C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801C166C 001BE5CC  4E 80 00 20 */	blr

.global sub_801c1670
sub_801c1670:
/* 801C1670 001BE5D0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 801C1674 001BE5D4  7C 08 02 A6 */	mflr r0
/* 801C1678 001BE5D8  90 01 01 14 */	stw r0, 0x114(r1)
/* 801C167C 001BE5DC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 801C1680 001BE5E0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, qr0
/* 801C1684 001BE5E4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 801C1688 001BE5E8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, qr0
/* 801C168C 001BE5EC  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 801C1690 001BE5F0  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, qr0
/* 801C1694 001BE5F4  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801C1698 001BE5F8  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801C169C 001BE5FC  7C 9F 23 78 */	mr r31, r4
/* 801C16A0 001BE600  7C 7E 1B 78 */	mr r30, r3
/* 801C16A4 001BE604  38 61 00 44 */	addi r3, r1, 0x44
/* 801C16A8 001BE608  38 BF 07 60 */	addi r5, r31, 0x760
/* 801C16AC 001BE60C  4B EB 72 0D */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801C16B0 001BE610  38 61 00 A4 */	addi r3, r1, 0xa4
/* 801C16B4 001BE614  38 81 00 44 */	addi r4, r1, 0x44
/* 801C16B8 001BE618  48 15 14 BD */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801C16BC 001BE61C  C3 E1 00 D0 */	lfs f31, 0xd0(r1)
/* 801C16C0 001BE620  7F E4 FB 78 */	mr r4, r31
/* 801C16C4 001BE624  C3 C1 00 C0 */	lfs f30, 0xc0(r1)
/* 801C16C8 001BE628  38 61 00 14 */	addi r3, r1, 0x14
/* 801C16CC 001BE62C  C3 A1 00 B0 */	lfs f29, 0xb0(r1)
/* 801C16D0 001BE630  38 BF 07 61 */	addi r5, r31, 0x761
/* 801C16D4 001BE634  4B EB 71 E5 */	bl GetLctrTransform__10CPatternedCFRC6CSegId
/* 801C16D8 001BE638  38 61 00 74 */	addi r3, r1, 0x74
/* 801C16DC 001BE63C  38 81 00 14 */	addi r4, r1, 0x14
/* 801C16E0 001BE640  48 15 14 95 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801C16E4 001BE644  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 801C16E8 001BE648  3C 60 80 57 */	lis r3, lbl_80572060@ha
/* 801C16EC 001BE64C  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 801C16F0 001BE650  38 A3 20 60 */	addi r5, r3, lbl_80572060@l
/* 801C16F4 001BE654  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 801C16F8 001BE658  EC 5D 10 2A */	fadds f2, f29, f2
/* 801C16FC 001BE65C  C0 62 AA AC */	lfs f3, lbl_805AC7CC@sda21(r2)
/* 801C1700 001BE660  EC 3E 08 2A */	fadds f1, f30, f1
/* 801C1704 001BE664  EC 1F 00 2A */	fadds f0, f31, f0
/* 801C1708 001BE668  38 61 00 08 */	addi r3, r1, 8
/* 801C170C 001BE66C  EF A3 00 B2 */	fmuls f29, f3, f2
/* 801C1710 001BE670  EF C3 00 72 */	fmuls f30, f3, f1
/* 801C1714 001BE674  38 9F 00 34 */	addi r4, r31, 0x34
/* 801C1718 001BE678  EF E3 00 32 */	fmuls f31, f3, f0
/* 801C171C 001BE67C  48 15 13 65 */	bl Rotate__12CTransform4fCFRC9CVector3f
/* 801C1720 001BE680  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801C1724 001BE684  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C1728 001BE688  C0 23 00 00 */	lfs f1, 0(r3)
/* 801C172C 001BE68C  C0 63 00 04 */	lfs f3, 4(r3)
/* 801C1730 001BE690  EC 01 00 32 */	fmuls f0, f1, f0
/* 801C1734 001BE694  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801C1738 001BE698  C0 43 00 08 */	lfs f2, 8(r3)
/* 801C173C 001BE69C  EC 63 00 72 */	fmuls f3, f3, f1
/* 801C1740 001BE6A0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801C1744 001BE6A4  EC 1D 00 2A */	fadds f0, f29, f0
/* 801C1748 001BE6A8  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C174C 001BE6AC  EC 5E 18 2A */	fadds f2, f30, f3
/* 801C1750 001BE6B0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 801C1754 001BE6B4  EC 1F 08 2A */	fadds f0, f31, f1
/* 801C1758 001BE6B8  D0 5E 00 04 */	stfs f2, 4(r30)
/* 801C175C 001BE6BC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 801C1760 001BE6C0  E3 E1 01 08 */	psq_l f31, 264(r1), 0, qr0
/* 801C1764 001BE6C4  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 801C1768 001BE6C8  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, qr0
/* 801C176C 001BE6CC  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 801C1770 001BE6D0  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, qr0
/* 801C1774 001BE6D4  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 801C1778 001BE6D8  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801C177C 001BE6DC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 801C1780 001BE6E0  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801C1784 001BE6E4  7C 08 03 A6 */	mtlr r0
/* 801C1788 001BE6E8  38 21 01 10 */	addi r1, r1, 0x110
/* 801C178C 001BE6EC  4E 80 00 20 */	blr

.global sub_801c1790
sub_801c1790:
/* 801C1790 001BE6F0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C1794 001BE6F4  7C 08 02 A6 */	mflr r0
/* 801C1798 001BE6F8  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C179C 001BE6FC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801C17A0 001BE700  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801C17A4 001BE704  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801C17A8 001BE708  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801C17AC 001BE70C  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C17B0 001BE710  7C 7F 1B 78 */	mr r31, r3
/* 801C17B4 001BE714  7C 9E 23 78 */	mr r30, r4
/* 801C17B8 001BE718  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801C17BC 001BE71C  41 82 00 E0 */	beq lbl_801C189C
/* 801C17C0 001BE720  C3 FF 06 44 */	lfs f31, 0x644(r31)
/* 801C17C4 001BE724  4B FF FD E5 */	bl sub_801c15a8
/* 801C17C8 001BE728  38 E0 00 00 */	li r7, 0
/* 801C17CC 001BE72C  88 01 00 24 */	lbz r0, 0x24(r1)
/* 801C17D0 001BE730  50 E0 3E 30 */	rlwimi r0, r7, 7, 0x18, 0x18
/* 801C17D4 001BE734  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801C17D8 001BE738  98 01 00 24 */	stb r0, 0x24(r1)
/* 801C17DC 001BE73C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801C17E0 001BE740  50 E0 36 72 */	rlwimi r0, r7, 6, 0x19, 0x19
/* 801C17E4 001BE744  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C17E8 001BE748  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 801C17EC 001BE74C  98 01 00 24 */	stb r0, 0x24(r1)
/* 801C17F0 001BE750  50 E6 2E B4 */	rlwimi r6, r7, 5, 0x1a, 0x1a
/* 801C17F4 001BE754  88 01 00 58 */	lbz r0, 0x58(r1)
/* 801C17F8 001BE758  38 60 00 01 */	li r3, 1
/* 801C17FC 001BE75C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C1800 001BE760  80 AD 91 28 */	lwz r5, lbl_805A7CE8@sda21(r13)
/* 801C1804 001BE764  90 E1 00 20 */	stw r7, 0x20(r1)
/* 801C1808 001BE768  38 60 00 00 */	li r3, 0
/* 801C180C 001BE76C  38 80 00 01 */	li r4, 1
/* 801C1810 001BE770  98 C1 00 24 */	stb r6, 0x24(r1)
/* 801C1814 001BE774  90 E1 00 40 */	stw r7, 0x40(r1)
/* 801C1818 001BE778  98 C1 00 44 */	stb r6, 0x44(r1)
/* 801C181C 001BE77C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 801C1820 001BE780  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801C1824 001BE784  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801C1828 001BE788  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801C182C 001BE78C  98 01 00 58 */	stb r0, 0x58(r1)
/* 801C1830 001BE790  48 1C 86 C5 */	bl __shl2i
/* 801C1834 001BE794  39 40 00 00 */	li r10, 0
/* 801C1838 001BE798  38 00 00 03 */	li r0, 3
/* 801C183C 001BE79C  90 81 00 2C */	stw r4, 0x2c(r1)
/* 801C1840 001BE7A0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C1844 001BE7A4  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801C1848 001BE7A8  38 A1 00 14 */	addi r5, r1, 0x14
/* 801C184C 001BE7AC  90 61 00 28 */	stw r3, 0x28(r1)
/* 801C1850 001BE7B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801C1854 001BE7B4  7F C3 F3 78 */	mr r3, r30
/* 801C1858 001BE7B8  38 C1 00 0C */	addi r6, r1, 0xc
/* 801C185C 001BE7BC  91 41 00 34 */	stw r10, 0x34(r1)
/* 801C1860 001BE7C0  38 E1 00 40 */	addi r7, r1, 0x40
/* 801C1864 001BE7C4  39 01 00 28 */	addi r8, r1, 0x28
/* 801C1868 001BE7C8  91 41 00 30 */	stw r10, 0x30(r1)
/* 801C186C 001BE7CC  90 01 00 38 */	stw r0, 0x38(r1)
/* 801C1870 001BE7D0  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801C1874 001BE7D4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C1878 001BE7D8  81 5E 08 4C */	lwz r10, 0x84c(r30)
/* 801C187C 001BE7DC  B0 01 00 08 */	sth r0, 8(r1)
/* 801C1880 001BE7E0  A1 4A 00 08 */	lhz r10, 8(r10)
/* 801C1884 001BE7E4  B1 41 00 14 */	sth r10, 0x14(r1)
/* 801C1888 001BE7E8  A0 1F 00 08 */	lhz r0, 8(r31)
/* 801C188C 001BE7EC  B1 41 00 10 */	sth r10, 0x10(r1)
/* 801C1890 001BE7F0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C1894 001BE7F4  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801C1898 001BE7F8  4B E8 88 09 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
lbl_801C189C:
/* 801C189C 001BE7FC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801C18A0 001BE800  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C18A4 001BE804  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801C18A8 001BE808  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801C18AC 001BE80C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801C18B0 001BE810  7C 08 03 A6 */	mtlr r0
/* 801C18B4 001BE814  38 21 00 80 */	addi r1, r1, 0x80
/* 801C18B8 001BE818  4E 80 00 20 */	blr

.global sub_801c18bc
sub_801c18bc:
/* 801C18BC 001BE81C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C18C0 001BE820  7C 08 02 A6 */	mflr r0
/* 801C18C4 001BE824  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C18C8 001BE828  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C18CC 001BE82C  7C BF 2B 78 */	mr r31, r5
/* 801C18D0 001BE830  A0 03 07 90 */	lhz r0, 0x790(r3)
/* 801C18D4 001BE834  7C 83 23 78 */	mr r3, r4
/* 801C18D8 001BE838  38 81 00 08 */	addi r4, r1, 8
/* 801C18DC 001BE83C  B0 01 00 08 */	sth r0, 8(r1)
/* 801C18E0 001BE840  4B E8 AC 95 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C18E4 001BE844  7C 64 1B 78 */	mr r4, r3
/* 801C18E8 001BE848  38 61 00 0C */	addi r3, r1, 0xc
/* 801C18EC 001BE84C  4B EE DA 61 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C18F0 001BE850  80 63 00 04 */	lwz r3, 4(r3)
/* 801C18F4 001BE854  28 03 00 00 */	cmplwi r3, 0
/* 801C18F8 001BE858  41 82 00 1C */	beq lbl_801C1914
/* 801C18FC 001BE85C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801C1900 001BE860  D0 03 03 04 */	stfs f0, 0x304(r3)
/* 801C1904 001BE864  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801C1908 001BE868  D0 03 03 08 */	stfs f0, 0x308(r3)
/* 801C190C 001BE86C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 801C1910 001BE870  D0 03 03 0C */	stfs f0, 0x30c(r3)
lbl_801C1914:
/* 801C1914 001BE874  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1918 001BE878  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C191C 001BE87C  7C 08 03 A6 */	mtlr r0
/* 801C1920 001BE880  38 21 00 20 */	addi r1, r1, 0x20
/* 801C1924 001BE884  4E 80 00 20 */	blr

.global sub_801c1928
sub_801c1928:
/* 801C1928 001BE888  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C192C 001BE88C  7C 08 02 A6 */	mflr r0
/* 801C1930 001BE890  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C1934 001BE894  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C1938 001BE898  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801C193C 001BE89C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C1940 001BE8A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C1944 001BE8A4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C1948 001BE8A8  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801C194C 001BE8AC  7C 7D 1B 78 */	mr r29, r3
/* 801C1950 001BE8B0  7C 9E 23 78 */	mr r30, r4
/* 801C1954 001BE8B4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C1958 001BE8B8  41 82 00 F8 */	beq lbl_801C1A50
/* 801C195C 001BE8BC  A0 1D 07 90 */	lhz r0, 0x790(r29)
/* 801C1960 001BE8C0  7F C3 F3 78 */	mr r3, r30
/* 801C1964 001BE8C4  38 81 00 08 */	addi r4, r1, 8
/* 801C1968 001BE8C8  B0 01 00 08 */	sth r0, 8(r1)
/* 801C196C 001BE8CC  4B E8 AC 09 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C1970 001BE8D0  7C 64 1B 78 */	mr r4, r3
/* 801C1974 001BE8D4  38 61 00 0C */	addi r3, r1, 0xc
/* 801C1978 001BE8D8  4B EE D9 D5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C197C 001BE8DC  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C1980 001BE8E0  28 1F 00 00 */	cmplwi r31, 0
/* 801C1984 001BE8E4  41 82 00 5C */	beq lbl_801C19E0
/* 801C1988 001BE8E8  7F A3 EB 78 */	mr r3, r29
/* 801C198C 001BE8EC  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C1990 001BE8F0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C1994 001BE8F4  7D 89 03 A6 */	mtctr r12
/* 801C1998 001BE8F8  4E 80 04 21 */	bctrl
/* 801C199C 001BE8FC  7C 64 1B 78 */	mr r4, r3
/* 801C19A0 001BE900  7F E3 FB 78 */	mr r3, r31
/* 801C19A4 001BE904  4B FE 71 F5 */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
/* 801C19A8 001BE908  7F E3 FB 78 */	mr r3, r31
/* 801C19AC 001BE90C  7F C4 F3 78 */	mr r4, r30
/* 801C19B0 001BE910  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C19B4 001BE914  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C19B8 001BE918  7D 89 03 A6 */	mtctr r12
/* 801C19BC 001BE91C  4E 80 04 21 */	bctrl
/* 801C19C0 001BE920  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801C19C4 001BE924  7F A3 EB 78 */	mr r3, r29
/* 801C19C8 001BE928  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C19CC 001BE92C  7F C4 F3 78 */	mr r4, r30
/* 801C19D0 001BE930  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C19D4 001BE934  7D 89 03 A6 */	mtctr r12
/* 801C19D8 001BE938  4E 80 04 21 */	bctrl
/* 801C19DC 001BE93C  D3 E3 00 00 */	stfs f31, 0(r3)
lbl_801C19E0:
/* 801C19E0 001BE940  7F A3 EB 78 */	mr r3, r29
/* 801C19E4 001BE944  7F C4 F3 78 */	mr r4, r30
/* 801C19E8 001BE948  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C19EC 001BE94C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C19F0 001BE950  7D 89 03 A6 */	mtctr r12
/* 801C19F4 001BE954  4E 80 04 21 */	bctrl
/* 801C19F8 001BE958  C0 23 00 00 */	lfs f1, 0(r3)
/* 801C19FC 001BE95C  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C1A00 001BE960  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C1A04 001BE964  4C 40 13 82 */	cror 2, 0, 2
/* 801C1A08 001BE968  40 82 00 48 */	bne lbl_801C1A50
/* 801C1A0C 001BE96C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C1A10 001BE970  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C1A14 001BE974  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 801C1A18 001BE978  7F A3 EB 78 */	mr r3, r29
/* 801C1A1C 001BE97C  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 801C1A20 001BE980  7F C4 F3 78 */	mr r4, r30
/* 801C1A24 001BE984  38 C0 00 14 */	li r6, 0x14
/* 801C1A28 001BE988  7D 89 03 A6 */	mtctr r12
/* 801C1A2C 001BE98C  4E 80 04 21 */	bctrl
/* 801C1A30 001BE990  7F A3 EB 78 */	mr r3, r29
/* 801C1A34 001BE994  7F C4 F3 78 */	mr r4, r30
/* 801C1A38 001BE998  4B FF F8 35 */	bl sub_801c126c
/* 801C1A3C 001BE99C  7F A3 EB 78 */	mr r3, r29
/* 801C1A40 001BE9A0  7F C6 F3 78 */	mr r6, r30
/* 801C1A44 001BE9A4  38 80 00 29 */	li r4, 0x29
/* 801C1A48 001BE9A8  38 A0 00 28 */	li r5, 0x28
/* 801C1A4C 001BE9AC  4B E9 24 89 */	bl RemoveMaterial__6CActorF14EMaterialTypes14EMaterialTypesR13CStateManager
lbl_801C1A50:
/* 801C1A50 001BE9B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801C1A54 001BE9B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C1A58 001BE9B8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C1A5C 001BE9BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C1A60 001BE9C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C1A64 001BE9C4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C1A68 001BE9C8  7C 08 03 A6 */	mtlr r0
/* 801C1A6C 001BE9CC  38 21 00 40 */	addi r1, r1, 0x40
/* 801C1A70 001BE9D0  4E 80 00 20 */	blr

.global sub_801c1a74
sub_801c1a74:
/* 801C1A74 001BE9D4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C1A78 001BE9D8  7C 08 02 A6 */	mflr r0
/* 801C1A7C 001BE9DC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C1A80 001BE9E0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C1A84 001BE9E4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C1A88 001BE9E8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C1A8C 001BE9EC  7C 9D 23 78 */	mr r29, r4
/* 801C1A90 001BE9F0  93 81 00 20 */	stw r28, 0x20(r1)
/* 801C1A94 001BE9F4  7C 7C 1B 78 */	mr r28, r3
/* 801C1A98 001BE9F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1A9C 001BE9FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C1AA0 001BEA00  7D 89 03 A6 */	mtctr r12
/* 801C1AA4 001BEA04  4E 80 04 21 */	bctrl
/* 801C1AA8 001BEA08  A0 1C 07 90 */	lhz r0, 0x790(r28)
/* 801C1AAC 001BEA0C  7C 7F 1B 78 */	mr r31, r3
/* 801C1AB0 001BEA10  7F A3 EB 78 */	mr r3, r29
/* 801C1AB4 001BEA14  38 81 00 08 */	addi r4, r1, 8
/* 801C1AB8 001BEA18  B0 01 00 08 */	sth r0, 8(r1)
/* 801C1ABC 001BEA1C  4B E8 AA B9 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C1AC0 001BEA20  7C 64 1B 78 */	mr r4, r3
/* 801C1AC4 001BEA24  38 61 00 0C */	addi r3, r1, 0xc
/* 801C1AC8 001BEA28  4B EE D8 85 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C1ACC 001BEA2C  83 C3 00 04 */	lwz r30, 4(r3)
/* 801C1AD0 001BEA30  28 1E 00 00 */	cmplwi r30, 0
/* 801C1AD4 001BEA34  41 82 00 4C */	beq lbl_801C1B20
/* 801C1AD8 001BEA38  7F C3 F3 78 */	mr r3, r30
/* 801C1ADC 001BEA3C  7F A4 EB 78 */	mr r4, r29
/* 801C1AE0 001BEA40  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C1AE4 001BEA44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C1AE8 001BEA48  7D 89 03 A6 */	mtctr r12
/* 801C1AEC 001BEA4C  4E 80 04 21 */	bctrl
/* 801C1AF0 001BEA50  C0 1F 00 00 */	lfs f0, 0(r31)
/* 801C1AF4 001BEA54  D0 03 00 00 */	stfs f0, 0(r3)
/* 801C1AF8 001BEA58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 801C1AFC 001BEA5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C1B00 001BEA60  7F 83 E3 78 */	mr r3, r28
/* 801C1B04 001BEA64  81 9C 00 00 */	lwz r12, 0(r28)
/* 801C1B08 001BEA68  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C1B0C 001BEA6C  7D 89 03 A6 */	mtctr r12
/* 801C1B10 001BEA70  4E 80 04 21 */	bctrl
/* 801C1B14 001BEA74  7C 64 1B 78 */	mr r4, r3
/* 801C1B18 001BEA78  7F C3 F3 78 */	mr r3, r30
/* 801C1B1C 001BEA7C  4B FE 70 7D */	bl SetDamageVulnerability__15CCollisionActorFRC20CDamageVulnerability
lbl_801C1B20:
/* 801C1B20 001BEA80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C1B24 001BEA84  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C1B28 001BEA88  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C1B2C 001BEA8C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C1B30 001BEA90  83 81 00 20 */	lwz r28, 0x20(r1)
/* 801C1B34 001BEA94  7C 08 03 A6 */	mtlr r0
/* 801C1B38 001BEA98  38 21 00 30 */	addi r1, r1, 0x30
/* 801C1B3C 001BEA9C  4E 80 00 20 */	blr

.global sub_801c1b40
sub_801c1b40:
/* 801C1B40 001BEAA0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801C1B44 001BEAA4  7C 08 02 A6 */	mflr r0
/* 801C1B48 001BEAA8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801C1B4C 001BEAAC  BF 21 00 C4 */	stmw r25, 0xc4(r1)
/* 801C1B50 001BEAB0  7C B9 2B 78 */	mr r25, r5
/* 801C1B54 001BEAB4  7C DA 33 78 */	mr r26, r6
/* 801C1B58 001BEAB8  7C 9E 23 78 */	mr r30, r4
/* 801C1B5C 001BEABC  3B A1 00 60 */	addi r29, r1, 0x60
/* 801C1B60 001BEAC0  3B 81 00 A4 */	addi r28, r1, 0xa4
/* 801C1B64 001BEAC4  3B 60 00 00 */	li r27, 0
/* 801C1B68 001BEAC8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801C1B6C 001BEACC  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801C1B70 001BEAD0  48 00 01 20 */	b lbl_801C1C90
lbl_801C1B74:
/* 801C1B74 001BEAD4  80 9E 00 00 */	lwz r4, 0(r30)
/* 801C1B78 001BEAD8  38 61 00 24 */	addi r3, r1, 0x24
/* 801C1B7C 001BEADC  4B E4 31 3D */	bl string_l__4rstlFPCc
/* 801C1B80 001BEAE0  7F E4 FB 78 */	mr r4, r31
/* 801C1B84 001BEAE4  38 61 00 0C */	addi r3, r1, 0xc
/* 801C1B88 001BEAE8  38 A1 00 24 */	addi r5, r1, 0x24
/* 801C1B8C 001BEAEC  4B E6 CC AD */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801C1B90 001BEAF0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801C1B94 001BEAF4  38 61 00 24 */	addi r3, r1, 0x24
/* 801C1B98 001BEAF8  98 01 00 10 */	stb r0, 0x10(r1)
/* 801C1B9C 001BEAFC  48 17 BF 45 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801C1BA0 001BEB00  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801C1BA4 001BEB04  28 00 00 FF */	cmplwi r0, 0xff
/* 801C1BA8 001BEB08  41 82 00 E0 */	beq lbl_801C1C88
/* 801C1BAC 001BEB0C  80 9E 00 00 */	lwz r4, 0(r30)
/* 801C1BB0 001BEB10  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1BB4 001BEB14  4B E4 31 05 */	bl string_l__4rstlFPCc
/* 801C1BB8 001BEB18  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801C1BBC 001BEB1C  38 61 00 34 */	addi r3, r1, 0x34
/* 801C1BC0 001BEB20  C0 3E 00 04 */	lfs f1, 4(r30)
/* 801C1BC4 001BEB24  38 81 00 08 */	addi r4, r1, 8
/* 801C1BC8 001BEB28  98 01 00 08 */	stb r0, 8(r1)
/* 801C1BCC 001BEB2C  38 A1 00 14 */	addi r5, r1, 0x14
/* 801C1BD0 001BEB30  C0 42 AA CC */	lfs f2, lbl_805AC7EC@sda21(r2)
/* 801C1BD4 001BEB34  4B FE 6C 39 */	bl "SphereCollision__26CJointCollisionDescriptionF6CSegIdfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>f"
/* 801C1BD8 001BEB38  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 801C1BDC 001BEB3C  7F 83 E3 78 */	mr r3, r28
/* 801C1BE0 001BEB40  80 C1 00 38 */	lwz r6, 0x38(r1)
/* 801C1BE4 001BEB44  7F A4 EB 78 */	mr r4, r29
/* 801C1BE8 001BEB48  88 A1 00 3C */	lbz r5, 0x3c(r1)
/* 801C1BEC 001BEB4C  88 01 00 3D */	lbz r0, 0x3d(r1)
/* 801C1BF0 001BEB50  C0 E1 00 40 */	lfs f7, 0x40(r1)
/* 801C1BF4 001BEB54  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 801C1BF8 001BEB58  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 801C1BFC 001BEB5C  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 801C1C00 001BEB60  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 801C1C04 001BEB64  C0 41 00 54 */	lfs f2, 0x54(r1)
/* 801C1C08 001BEB68  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 801C1C0C 001BEB6C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801C1C10 001BEB70  90 E1 00 78 */	stw r7, 0x78(r1)
/* 801C1C14 001BEB74  90 C1 00 7C */	stw r6, 0x7c(r1)
/* 801C1C18 001BEB78  98 A1 00 80 */	stb r5, 0x80(r1)
/* 801C1C1C 001BEB7C  98 01 00 81 */	stb r0, 0x81(r1)
/* 801C1C20 001BEB80  D0 E1 00 84 */	stfs f7, 0x84(r1)
/* 801C1C24 001BEB84  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 801C1C28 001BEB88  D0 A1 00 8C */	stfs f5, 0x8c(r1)
/* 801C1C2C 001BEB8C  D0 81 00 90 */	stfs f4, 0x90(r1)
/* 801C1C30 001BEB90  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 801C1C34 001BEB94  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 801C1C38 001BEB98  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 801C1C3C 001BEB9C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 801C1C40 001BEBA0  48 17 C5 21 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801C1C44 001BEBA4  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 801C1C48 001BEBA8  28 1D 00 00 */	cmplwi r29, 0
/* 801C1C4C 001BEBAC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 801C1C50 001BEBB0  B0 01 00 B4 */	sth r0, 0xb4(r1)
/* 801C1C54 001BEBB4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 801C1C58 001BEBB8  41 82 00 0C */	beq lbl_801C1C64
/* 801C1C5C 001BEBBC  7F A3 EB 78 */	mr r3, r29
/* 801C1C60 001BEBC0  48 17 BE 81 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801C1C64:
/* 801C1C64 001BEBC4  38 61 00 14 */	addi r3, r1, 0x14
/* 801C1C68 001BEBC8  48 17 BE 79 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801C1C6C 001BEBCC  7F 43 D3 78 */	mr r3, r26
/* 801C1C70 001BEBD0  38 81 00 78 */	addi r4, r1, 0x78
/* 801C1C74 001BEBD4  4B F9 45 BD */	bl sub_80156230
/* 801C1C78 001BEBD8  28 1C 00 00 */	cmplwi r28, 0
/* 801C1C7C 001BEBDC  41 82 00 0C */	beq lbl_801C1C88
/* 801C1C80 001BEBE0  7F 83 E3 78 */	mr r3, r28
/* 801C1C84 001BEBE4  48 17 BE 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_801C1C88:
/* 801C1C88 001BEBE8  3B DE 00 08 */	addi r30, r30, 8
/* 801C1C8C 001BEBEC  3B 7B 00 01 */	addi r27, r27, 1
lbl_801C1C90:
/* 801C1C90 001BEBF0  7C 1B C8 00 */	cmpw r27, r25
/* 801C1C94 001BEBF4  41 80 FE E0 */	blt lbl_801C1B74
/* 801C1C98 001BEBF8  BB 21 00 C4 */	lmw r25, 0xc4(r1)
/* 801C1C9C 001BEBFC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801C1CA0 001BEC00  7C 08 03 A6 */	mtlr r0
/* 801C1CA4 001BEC04  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801C1CA8 001BEC08  4E 80 00 20 */	blr

.global sub_801c1cac
sub_801c1cac:
/* 801C1CAC 001BEC0C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C1CB0 001BEC10  7C 08 02 A6 */	mflr r0
/* 801C1CB4 001BEC14  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C1CB8 001BEC18  38 00 00 00 */	li r0, 0
/* 801C1CBC 001BEC1C  BF 41 00 68 */	stmw r26, 0x68(r1)
/* 801C1CC0 001BEC20  7C 7E 1B 78 */	mr r30, r3
/* 801C1CC4 001BEC24  7C 9F 23 78 */	mr r31, r4
/* 801C1CC8 001BEC28  38 61 00 40 */	addi r3, r1, 0x40
/* 801C1CCC 001BEC2C  38 80 00 01 */	li r4, 1
/* 801C1CD0 001BEC30  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C1CD4 001BEC34  90 01 00 48 */	stw r0, 0x48(r1)
/* 801C1CD8 001BEC38  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801C1CDC 001BEC3C  4B F9 4A DD */	bl "reserve__Q24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>Fi"
/* 801C1CE0 001BEC40  7F C3 F3 78 */	mr r3, r30
/* 801C1CE4 001BEC44  38 C1 00 40 */	addi r6, r1, 0x40
/* 801C1CE8 001BEC48  38 82 AA 84 */	addi r4, r2, lbl_805AC7A4@sda21
/* 801C1CEC 001BEC4C  38 A0 00 01 */	li r5, 1
/* 801C1CF0 001BEC50  4B FF FE 51 */	bl sub_801c1b40
/* 801C1CF4 001BEC54  3C 80 80 3D */	lis r4, lbl_803D1A80@ha
/* 801C1CF8 001BEC58  38 60 00 18 */	li r3, 0x18
/* 801C1CFC 001BEC5C  38 84 1A 80 */	addi r4, r4, lbl_803D1A80@l
/* 801C1D00 001BEC60  38 A0 00 00 */	li r5, 0
/* 801C1D04 001BEC64  38 84 00 19 */	addi r4, r4, 0x19
/* 801C1D08 001BEC68  48 15 3B 65 */	bl __nw__FUlPCcPCc
/* 801C1D0C 001BEC6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C1D10 001BEC70  41 82 00 38 */	beq lbl_801C1D48
/* 801C1D14 001BEC74  81 3E 00 04 */	lwz r9, 4(r30)
/* 801C1D18 001BEC78  7F E4 FB 78 */	mr r4, r31
/* 801C1D1C 001BEC7C  38 A1 00 10 */	addi r5, r1, 0x10
/* 801C1D20 001BEC80  38 C1 00 1C */	addi r6, r1, 0x1c
/* 801C1D24 001BEC84  91 21 00 1C */	stw r9, 0x1c(r1)
/* 801C1D28 001BEC88  38 E1 00 40 */	addi r7, r1, 0x40
/* 801C1D2C 001BEC8C  39 00 00 00 */	li r8, 0
/* 801C1D30 001BEC90  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C1D34 001BEC94  91 21 00 18 */	stw r9, 0x18(r1)
/* 801C1D38 001BEC98  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C1D3C 001BEC9C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C1D40 001BECA0  4B FE 5B F1 */	bl "__ct__22CCollisionActorManagerFR13CStateManager9TUniqueId7TAreaIdRCQ24rstl63vector<26CJointCollisionDescription,Q24rstl17rmemory_allocator>b"
/* 801C1D44 001BECA4  7C 7D 1B 78 */	mr r29, r3
lbl_801C1D48:
/* 801C1D48 001BECA8  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C1D4C 001BECAC  38 80 00 01 */	li r4, 1
/* 801C1D50 001BECB0  4B FE 5B 8D */	bl sub_801a78dc
/* 801C1D54 001BECB4  93 BE 07 64 */	stw r29, 0x764(r30)
/* 801C1D58 001BECB8  7F E4 FB 78 */	mr r4, r31
/* 801C1D5C 001BECBC  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 801C1D60 001BECC0  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C1D64 001BECC4  54 05 CF FE */	rlwinm r5, r0, 0x19, 0x1f, 0x1f
/* 801C1D68 001BECC8  4B FE 55 91 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801C1D6C 001BECCC  3B 40 00 00 */	li r26, 0
/* 801C1D70 001BECD0  48 00 00 7C */	b lbl_801C1DEC
lbl_801C1D74:
/* 801C1D74 001BECD4  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C1D78 001BECD8  7F 44 D3 78 */	mr r4, r26
/* 801C1D7C 001BECDC  4B FE 54 BD */	bl GetCollisionDescFromIndex__22CCollisionActorManagerCFUi
/* 801C1D80 001BECE0  7C 7D 1B 78 */	mr r29, r3
/* 801C1D84 001BECE4  7F E3 FB 78 */	mr r3, r31
/* 801C1D88 001BECE8  A0 1D 00 3C */	lhz r0, 0x3c(r29)
/* 801C1D8C 001BECEC  38 81 00 08 */	addi r4, r1, 8
/* 801C1D90 001BECF0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C1D94 001BECF4  B0 01 00 08 */	sth r0, 8(r1)
/* 801C1D98 001BECF8  4B E8 A7 DD */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C1D9C 001BECFC  7C 64 1B 78 */	mr r4, r3
/* 801C1DA0 001BED00  38 61 00 28 */	addi r3, r1, 0x28
/* 801C1DA4 001BED04  4B EE D5 A9 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C1DA8 001BED08  80 03 00 04 */	lwz r0, 4(r3)
/* 801C1DAC 001BED0C  28 00 00 00 */	cmplwi r0, 0
/* 801C1DB0 001BED10  41 82 00 38 */	beq lbl_801C1DE8
/* 801C1DB4 001BED14  80 82 AA 94 */	lwz r4, lbl_805AC7B4@sda21(r2)
/* 801C1DB8 001BED18  38 61 00 30 */	addi r3, r1, 0x30
/* 801C1DBC 001BED1C  4B E4 2E FD */	bl string_l__4rstlFPCc
/* 801C1DC0 001BED20  38 7D 00 2C */	addi r3, r29, 0x2c
/* 801C1DC4 001BED24  38 81 00 30 */	addi r4, r1, 0x30
/* 801C1DC8 001BED28  4B E9 08 19 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 801C1DCC 001BED2C  7C 7D 1B 78 */	mr r29, r3
/* 801C1DD0 001BED30  38 61 00 30 */	addi r3, r1, 0x30
/* 801C1DD4 001BED34  48 17 BD 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801C1DD8 001BED38  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801C1DDC 001BED3C  41 82 00 0C */	beq lbl_801C1DE8
/* 801C1DE0 001BED40  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801C1DE4 001BED44  B0 1E 07 90 */	sth r0, 0x790(r30)
lbl_801C1DE8:
/* 801C1DE8 001BED48  3B 5A 00 01 */	addi r26, r26, 1
lbl_801C1DEC:
/* 801C1DEC 001BED4C  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C1DF0 001BED50  4B FE 54 59 */	bl GetNumCollisionActors__22CCollisionActorManagerCFv
/* 801C1DF4 001BED54  7C 1A 18 40 */	cmplw r26, r3
/* 801C1DF8 001BED58  41 80 FF 7C */	blt lbl_801C1D74
/* 801C1DFC 001BED5C  7F C3 F3 78 */	mr r3, r30
/* 801C1E00 001BED60  7F E4 FB 78 */	mr r4, r31
/* 801C1E04 001BED64  4B FF FC 71 */	bl sub_801c1a74
/* 801C1E08 001BED68  80 AD 91 58 */	lwz r5, lbl_805A7D18@sda21(r13)
/* 801C1E0C 001BED6C  38 60 00 00 */	li r3, 0
/* 801C1E10 001BED70  38 80 00 01 */	li r4, 1
/* 801C1E14 001BED74  48 1C 80 E1 */	bl __shl2i
/* 801C1E18 001BED78  80 AD 91 5C */	lwz r5, lbl_805A7D1C@sda21(r13)
/* 801C1E1C 001BED7C  7C 9C 23 78 */	mr r28, r4
/* 801C1E20 001BED80  7C 7D 1B 78 */	mr r29, r3
/* 801C1E24 001BED84  38 60 00 00 */	li r3, 0
/* 801C1E28 001BED88  38 80 00 01 */	li r4, 1
/* 801C1E2C 001BED8C  48 1C 80 C9 */	bl __shl2i
/* 801C1E30 001BED90  80 AD 91 60 */	lwz r5, lbl_805A7D20@sda21(r13)
/* 801C1E34 001BED94  7F 9C 23 78 */	or r28, r28, r4
/* 801C1E38 001BED98  7F BD 1B 78 */	or r29, r29, r3
/* 801C1E3C 001BED9C  38 60 00 00 */	li r3, 0
/* 801C1E40 001BEDA0  38 80 00 01 */	li r4, 1
/* 801C1E44 001BEDA4  48 1C 80 B1 */	bl __shl2i
/* 801C1E48 001BEDA8  80 AD 91 48 */	lwz r5, lbl_805A7D08@sda21(r13)
/* 801C1E4C 001BEDAC  7F 9C 23 78 */	or r28, r28, r4
/* 801C1E50 001BEDB0  7F BD 1B 78 */	or r29, r29, r3
/* 801C1E54 001BEDB4  38 60 00 00 */	li r3, 0
/* 801C1E58 001BEDB8  38 80 00 01 */	li r4, 1
/* 801C1E5C 001BEDBC  48 1C 80 99 */	bl __shl2i
/* 801C1E60 001BEDC0  80 AD 91 4C */	lwz r5, lbl_805A7D0C@sda21(r13)
/* 801C1E64 001BEDC4  7C 9A 23 78 */	mr r26, r4
/* 801C1E68 001BEDC8  7C 7B 1B 78 */	mr r27, r3
/* 801C1E6C 001BEDCC  38 60 00 00 */	li r3, 0
/* 801C1E70 001BEDD0  38 80 00 01 */	li r4, 1
/* 801C1E74 001BEDD4  48 1C 80 81 */	bl __shl2i
/* 801C1E78 001BEDD8  80 AD 91 50 */	lwz r5, lbl_805A7D10@sda21(r13)
/* 801C1E7C 001BEDDC  7F 5A 23 78 */	or r26, r26, r4
/* 801C1E80 001BEDE0  7F 7B 1B 78 */	or r27, r27, r3
/* 801C1E84 001BEDE4  38 60 00 00 */	li r3, 0
/* 801C1E88 001BEDE8  38 80 00 01 */	li r4, 1
/* 801C1E8C 001BEDEC  48 1C 80 69 */	bl __shl2i
/* 801C1E90 001BEDF0  80 AD 91 54 */	lwz r5, lbl_805A7D14@sda21(r13)
/* 801C1E94 001BEDF4  7F 5A 23 78 */	or r26, r26, r4
/* 801C1E98 001BEDF8  7F 7B 1B 78 */	or r27, r27, r3
/* 801C1E9C 001BEDFC  38 60 00 00 */	li r3, 0
/* 801C1EA0 001BEE00  38 80 00 01 */	li r4, 1
/* 801C1EA4 001BEE04  48 1C 80 51 */	bl __shl2i
/* 801C1EA8 001BEE08  7F 5A 23 78 */	or r26, r26, r4
/* 801C1EAC 001BEE0C  7F 7B 1B 78 */	or r27, r27, r3
/* 801C1EB0 001BEE10  38 00 00 03 */	li r0, 3
/* 801C1EB4 001BEE14  93 41 00 54 */	stw r26, 0x54(r1)
/* 801C1EB8 001BEE18  7F C3 F3 78 */	mr r3, r30
/* 801C1EBC 001BEE1C  38 81 00 50 */	addi r4, r1, 0x50
/* 801C1EC0 001BEE20  93 61 00 50 */	stw r27, 0x50(r1)
/* 801C1EC4 001BEE24  93 81 00 5C */	stw r28, 0x5c(r1)
/* 801C1EC8 001BEE28  93 A1 00 58 */	stw r29, 0x58(r1)
/* 801C1ECC 001BEE2C  90 01 00 60 */	stw r0, 0x60(r1)
/* 801C1ED0 001BEE30  4B E9 19 D1 */	bl SetMaterialFilter__6CActorFRC15CMaterialFilter
/* 801C1ED4 001BEE34  7F C3 F3 78 */	mr r3, r30
/* 801C1ED8 001BEE38  7F E5 FB 78 */	mr r5, r31
/* 801C1EDC 001BEE3C  38 80 00 12 */	li r4, 0x12
/* 801C1EE0 001BEE40  4B E9 24 71 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801C1EE4 001BEE44  38 00 00 00 */	li r0, 0
/* 801C1EE8 001BEE48  80 AD 91 64 */	lwz r5, lbl_805A7D24@sda21(r13)
/* 801C1EEC 001BEE4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C1EF0 001BEE50  38 60 00 00 */	li r3, 0
/* 801C1EF4 001BEE54  38 80 00 01 */	li r4, 1
/* 801C1EF8 001BEE58  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C1EFC 001BEE5C  48 1C 7F F9 */	bl __shl2i
/* 801C1F00 001BEE60  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801C1F04 001BEE64  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801C1F08 001BEE68  7C 00 1B 78 */	or r0, r0, r3
/* 801C1F0C 001BEE6C  80 AD 91 68 */	lwz r5, lbl_805A7D28@sda21(r13)
/* 801C1F10 001BEE70  7C C4 23 78 */	or r4, r6, r4
/* 801C1F14 001BEE74  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C1F18 001BEE78  38 60 00 00 */	li r3, 0
/* 801C1F1C 001BEE7C  90 81 00 24 */	stw r4, 0x24(r1)
/* 801C1F20 001BEE80  38 80 00 01 */	li r4, 1
/* 801C1F24 001BEE84  48 1C 7F D1 */	bl __shl2i
/* 801C1F28 001BEE88  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801C1F2C 001BEE8C  38 A1 00 20 */	addi r5, r1, 0x20
/* 801C1F30 001BEE90  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 801C1F34 001BEE94  7C 00 1B 78 */	or r0, r0, r3
/* 801C1F38 001BEE98  7C C3 23 78 */	or r3, r6, r4
/* 801C1F3C 001BEE9C  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C1F40 001BEEA0  7F E4 FB 78 */	mr r4, r31
/* 801C1F44 001BEEA4  90 61 00 24 */	stw r3, 0x24(r1)
/* 801C1F48 001BEEA8  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C1F4C 001BEEAC  4B FE 53 05 */	bl AddMaterial__22CCollisionActorManagerFR13CStateManagerRC13CMaterialList
/* 801C1F50 001BEEB0  38 61 00 40 */	addi r3, r1, 0x40
/* 801C1F54 001BEEB4  38 80 FF FF */	li r4, -1
/* 801C1F58 001BEEB8  4B F9 43 D5 */	bl sub_8015632c
/* 801C1F5C 001BEEBC  BB 41 00 68 */	lmw r26, 0x68(r1)
/* 801C1F60 001BEEC0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C1F64 001BEEC4  7C 08 03 A6 */	mtlr r0
/* 801C1F68 001BEEC8  38 21 00 80 */	addi r1, r1, 0x80
/* 801C1F6C 001BEECC  4E 80 00 20 */	blr

.global sub_801c1f70
sub_801c1f70:
/* 801C1F70 001BEED0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801C1F74 001BEED4  7C 08 02 A6 */	mflr r0
/* 801C1F78 001BEED8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801C1F7C 001BEEDC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801C1F80 001BEEE0  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801C1F84 001BEEE4  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 801C1F88 001BEEE8  93 C1 00 88 */	stw r30, 0x88(r1)
/* 801C1F8C 001BEEEC  93 A1 00 84 */	stw r29, 0x84(r1)
/* 801C1F90 001BEEF0  7C 7D 1B 78 */	mr r29, r3
/* 801C1F94 001BEEF4  7C 9F 23 78 */	mr r31, r4
/* 801C1F98 001BEEF8  80 63 08 28 */	lwz r3, 0x828(r3)
/* 801C1F9C 001BEEFC  FF E0 08 90 */	fmr f31, f1
/* 801C1FA0 001BEF00  7C BE 2B 78 */	mr r30, r5
/* 801C1FA4 001BEF04  38 80 00 00 */	li r4, 0
/* 801C1FA8 001BEF08  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1FAC 001BEF0C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C1FB0 001BEF10  7D 89 03 A6 */	mtctr r12
/* 801C1FB4 001BEF14  4E 80 04 21 */	bctrl
/* 801C1FB8 001BEF18  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 801C1FBC 001BEF1C  38 80 00 00 */	li r4, 0
/* 801C1FC0 001BEF20  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1FC4 001BEF24  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C1FC8 001BEF28  7D 89 03 A6 */	mtctr r12
/* 801C1FCC 001BEF2C  4E 80 04 21 */	bctrl
/* 801C1FD0 001BEF30  83 FF 08 4C */	lwz r31, 0x84c(r31)
/* 801C1FD4 001BEF34  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801C1FD8 001BEF38  2C 00 00 01 */	cmpwi r0, 1
/* 801C1FDC 001BEF3C  41 82 00 14 */	beq lbl_801C1FF0
/* 801C1FE0 001BEF40  40 80 01 80 */	bge lbl_801C2160
/* 801C1FE4 001BEF44  2C 00 00 00 */	cmpwi r0, 0
/* 801C1FE8 001BEF48  40 80 00 A0 */	bge lbl_801C2088
/* 801C1FEC 001BEF4C  48 00 01 74 */	b lbl_801C2160
lbl_801C1FF0:
/* 801C1FF0 001BEF50  80 7D 08 28 */	lwz r3, 0x828(r29)
/* 801C1FF4 001BEF54  38 80 00 01 */	li r4, 1
/* 801C1FF8 001BEF58  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1FFC 001BEF5C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C2000 001BEF60  7D 89 03 A6 */	mtctr r12
/* 801C2004 001BEF64  4E 80 04 21 */	bctrl
/* 801C2008 001BEF68  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 801C200C 001BEF6C  4B F3 6D F9 */	bl GetBallRadius__10CMorphBallCFv
/* 801C2010 001BEF70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801C2014 001BEF74  38 81 00 38 */	addi r4, r1, 0x38
/* 801C2018 001BEF78  C0 7E 00 04 */	lfs f3, 4(r30)
/* 801C201C 001BEF7C  C0 42 AA 98 */	lfs f2, lbl_805AC7B8@sda21(r2)
/* 801C2020 001BEF80  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C2024 001BEF84  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801C2028 001BEF88  EC 63 10 28 */	fsubs f3, f3, f2
/* 801C202C 001BEF8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801C2030 001BEF90  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801C2034 001BEF94  D0 61 00 3C */	stfs f3, 0x3c(r1)
/* 801C2038 001BEF98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801C203C 001BEF9C  80 7D 08 28 */	lwz r3, 0x828(r29)
/* 801C2040 001BEFA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2044 001BEFA4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C2048 001BEFA8  7D 89 03 A6 */	mtctr r12
/* 801C204C 001BEFAC  4E 80 04 21 */	bctrl
/* 801C2050 001BEFB0  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 801C2054 001BEFB4  38 81 00 20 */	addi r4, r1, 0x20
/* 801C2058 001BEFB8  C0 03 00 00 */	lfs f0, 0(r3)
/* 801C205C 001BEFBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801C2060 001BEFC0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801C2064 001BEFC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801C2068 001BEFC8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801C206C 001BEFCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801C2070 001BEFD0  80 7D 08 28 */	lwz r3, 0x828(r29)
/* 801C2074 001BEFD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2078 001BEFD8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C207C 001BEFDC  7D 89 03 A6 */	mtctr r12
/* 801C2080 001BEFE0  4E 80 04 21 */	bctrl
/* 801C2084 001BEFE4  48 00 00 DC */	b lbl_801C2160
lbl_801C2088:
/* 801C2088 001BEFE8  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 801C208C 001BEFEC  38 80 00 01 */	li r4, 1
/* 801C2090 001BEFF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2094 001BEFF4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C2098 001BEFF8  7D 89 03 A6 */	mtctr r12
/* 801C209C 001BEFFC  4E 80 04 21 */	bctrl
/* 801C20A0 001BF000  80 9F 04 90 */	lwz r4, 0x490(r31)
/* 801C20A4 001BF004  38 61 00 44 */	addi r3, r1, 0x44
/* 801C20A8 001BF008  C0 A2 AA D0 */	lfs f5, lbl_805AC7F0@sda21(r2)
/* 801C20AC 001BF00C  38 84 03 E8 */	addi r4, r4, 0x3e8
/* 801C20B0 001BF010  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 801C20B4 001BF014  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C20B8 001BF018  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 801C20BC 001BF01C  EC 85 00 B2 */	fmuls f4, f5, f2
/* 801C20C0 001BF020  C0 C4 00 1C */	lfs f6, 0x1c(r4)
/* 801C20C4 001BF024  EC 05 00 32 */	fmuls f0, f5, f0
/* 801C20C8 001BF028  EC 45 00 72 */	fmuls f2, f5, f1
/* 801C20CC 001BF02C  C0 64 00 2C */	lfs f3, 0x2c(r4)
/* 801C20D0 001BF030  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 801C20D4 001BF034  EC 86 20 2A */	fadds f4, f6, f4
/* 801C20D8 001BF038  EC 43 10 2A */	fadds f2, f3, f2
/* 801C20DC 001BF03C  EC 01 00 2A */	fadds f0, f1, f0
/* 801C20E0 001BF040  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801C20E4 001BF044  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801C20E8 001BF048  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801C20EC 001BF04C  83 FD 08 2C */	lwz r31, 0x82c(r29)
/* 801C20F0 001BF050  48 15 0B 51 */	bl GetRotation__12CTransform4fCFv
/* 801C20F4 001BF054  7F E3 FB 78 */	mr r3, r31
/* 801C20F8 001BF058  38 81 00 44 */	addi r4, r1, 0x44
/* 801C20FC 001BF05C  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C2100 001BF060  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801C2104 001BF064  7D 89 03 A6 */	mtctr r12
/* 801C2108 001BF068  4E 80 04 21 */	bctrl
/* 801C210C 001BF06C  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 801C2110 001BF070  38 81 00 2C */	addi r4, r1, 0x2c
/* 801C2114 001BF074  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2118 001BF078  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C211C 001BF07C  7D 89 03 A6 */	mtctr r12
/* 801C2120 001BF080  4E 80 04 21 */	bctrl
/* 801C2124 001BF084  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C2128 001BF088  38 81 00 14 */	addi r4, r1, 0x14
/* 801C212C 001BF08C  C0 22 84 4C */	lfs f1, lbl_805AA16C@sda21(r2)
/* 801C2130 001BF090  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C2134 001BF094  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C2138 001BF098  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C213C 001BF09C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801C2140 001BF0A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C2144 001BF0A4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801C2148 001BF0A8  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 801C214C 001BF0AC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C2150 001BF0B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2154 001BF0B4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C2158 001BF0B8  7D 89 03 A6 */	mtctr r12
/* 801C215C 001BF0BC  4E 80 04 21 */	bctrl
lbl_801C2160:
/* 801C2160 001BF0C0  80 7D 08 28 */	lwz r3, 0x828(r29)
/* 801C2164 001BF0C4  FC 20 F8 90 */	fmr f1, f31
/* 801C2168 001BF0C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C216C 001BF0CC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C2170 001BF0D0  7D 89 03 A6 */	mtctr r12
/* 801C2174 001BF0D4  4E 80 04 21 */	bctrl
/* 801C2178 001BF0D8  80 7D 08 2C */	lwz r3, 0x82c(r29)
/* 801C217C 001BF0DC  FC 20 F8 90 */	fmr f1, f31
/* 801C2180 001BF0E0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2184 001BF0E4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C2188 001BF0E8  7D 89 03 A6 */	mtctr r12
/* 801C218C 001BF0EC  4E 80 04 21 */	bctrl
/* 801C2190 001BF0F0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801C2194 001BF0F4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801C2198 001BF0F8  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801C219C 001BF0FC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 801C21A0 001BF100  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 801C21A4 001BF104  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 801C21A8 001BF108  7C 08 03 A6 */	mtlr r0
/* 801C21AC 001BF10C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801C21B0 001BF110  4E 80 00 20 */	blr

.global sub_801c21b4
sub_801c21b4:
/* 801C21B4 001BF114  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 801C21B8 001BF118  7C 08 02 A6 */	mflr r0
/* 801C21BC 001BF11C  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 801C21C0 001BF120  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 801C21C4 001BF124  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, qr0
/* 801C21C8 001BF128  DB C1 01 C0 */	stfd f30, 0x1c0(r1)
/* 801C21CC 001BF12C  F3 C1 01 C8 */	psq_st f30, 456(r1), 0, qr0
/* 801C21D0 001BF130  DB A1 01 B0 */	stfd f29, 0x1b0(r1)
/* 801C21D4 001BF134  F3 A1 01 B8 */	psq_st f29, 440(r1), 0, qr0
/* 801C21D8 001BF138  DB 81 01 A0 */	stfd f28, 0x1a0(r1)
/* 801C21DC 001BF13C  F3 81 01 A8 */	psq_st f28, 424(r1), 0, qr0
/* 801C21E0 001BF140  DB 61 01 90 */	stfd f27, 0x190(r1)
/* 801C21E4 001BF144  F3 61 01 98 */	psq_st f27, 408(r1), 0, qr0
/* 801C21E8 001BF148  DB 41 01 80 */	stfd f26, 0x180(r1)
/* 801C21EC 001BF14C  F3 41 01 88 */	psq_st f26, 392(r1), 0, qr0
/* 801C21F0 001BF150  DB 21 01 70 */	stfd f25, 0x170(r1)
/* 801C21F4 001BF154  F3 21 01 78 */	psq_st f25, 376(r1), 0, qr0
/* 801C21F8 001BF158  DB 01 01 60 */	stfd f24, 0x160(r1)
/* 801C21FC 001BF15C  F3 01 01 68 */	psq_st f24, 360(r1), 0, qr0
/* 801C2200 001BF160  DA E1 01 50 */	stfd f23, 0x150(r1)
/* 801C2204 001BF164  F2 E1 01 58 */	psq_st f23, 344(r1), 0, qr0
/* 801C2208 001BF168  DA C1 01 40 */	stfd f22, 0x140(r1)
/* 801C220C 001BF16C  F2 C1 01 48 */	psq_st f22, 328(r1), 0, qr0
/* 801C2210 001BF170  DA A1 01 30 */	stfd f21, 0x130(r1)
/* 801C2214 001BF174  F2 A1 01 38 */	psq_st f21, 312(r1), 0, qr0
/* 801C2218 001BF178  DA 81 01 20 */	stfd f20, 0x120(r1)
/* 801C221C 001BF17C  F2 81 01 28 */	psq_st f20, 296(r1), 0, qr0
/* 801C2220 001BF180  DA 61 01 10 */	stfd f19, 0x110(r1)
/* 801C2224 001BF184  F2 61 01 18 */	psq_st f19, 280(r1), 0, qr0
/* 801C2228 001BF188  BE E1 00 EC */	stmw r23, 0xec(r1)
/* 801C222C 001BF18C  FE C0 08 90 */	fmr f22, f1
/* 801C2230 001BF190  7C 78 1B 78 */	mr r24, r3
/* 801C2234 001BF194  7C 99 23 78 */	mr r25, r4
/* 801C2238 001BF198  48 00 2A 79 */	bl sub_801c4cb0
/* 801C223C 001BF19C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C2240 001BF1A0  41 82 03 DC */	beq lbl_801C261C
/* 801C2244 001BF1A4  83 D8 08 24 */	lwz r30, 0x824(r24)
/* 801C2248 001BF1A8  7F 04 C3 78 */	mr r4, r24
/* 801C224C 001BF1AC  7F 25 CB 78 */	mr r5, r25
/* 801C2250 001BF1B0  38 61 00 38 */	addi r3, r1, 0x38
/* 801C2254 001BF1B4  83 BE 01 60 */	lwz r29, 0x160(r30)
/* 801C2258 001BF1B8  4B FF F3 81 */	bl sub_801c15d8
/* 801C225C 001BF1BC  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801C2260 001BF1C0  7F 04 C3 78 */	mr r4, r24
/* 801C2264 001BF1C4  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 801C2268 001BF1C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 801C226C 001BF1CC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801C2270 001BF1D0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801C2274 001BF1D4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 801C2278 001BF1D8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801C227C 001BF1DC  4B FF F3 F5 */	bl sub_801c1670
/* 801C2280 001BF1E0  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 801C2284 001BF1E4  3C 00 43 30 */	lis r0, 0x4330
/* 801C2288 001BF1E8  90 61 00 CC */	stw r3, 0xcc(r1)
/* 801C228C 001BF1EC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C2290 001BF1F0  3C 60 80 5A */	lis r3, lbl_805A66F4@ha
/* 801C2294 001BF1F4  C8 42 AA E0 */	lfd f2, lbl_805AC800@sda21(r2)
/* 801C2298 001BF1F8  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 801C229C 001BF1FC  38 C3 66 F4 */	addi r6, r3, lbl_805A66F4@l
/* 801C22A0 001BF200  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C22A4 001BF204  38 84 66 A0 */	addi r4, r4, skZero3f@l
/* 801C22A8 001BF208  C8 21 00 C8 */	lfd f1, 0xc8(r1)
/* 801C22AC 001BF20C  38 61 00 68 */	addi r3, r1, 0x68
/* 801C22B0 001BF210  C3 21 00 2C */	lfs f25, 0x2c(r1)
/* 801C22B4 001BF214  38 A1 00 50 */	addi r5, r1, 0x50
/* 801C22B8 001BF218  EF 81 10 28 */	fsubs f28, f1, f2
/* 801C22BC 001BF21C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 801C22C0 001BF220  C3 61 00 30 */	lfs f27, 0x30(r1)
/* 801C22C4 001BF224  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 801C22C8 001BF228  EC 21 C8 28 */	fsubs f1, f1, f25
/* 801C22CC 001BF22C  EC A0 E0 24 */	fdivs f5, f0, f28
/* 801C22D0 001BF230  C3 41 00 34 */	lfs f26, 0x34(r1)
/* 801C22D4 001BF234  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801C22D8 001BF238  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801C22DC 001BF23C  EC 82 D8 28 */	fsubs f4, f2, f27
/* 801C22E0 001BF240  EC 60 D0 28 */	fsubs f3, f0, f26
/* 801C22E4 001BF244  EC 41 01 72 */	fmuls f2, f1, f5
/* 801C22E8 001BF248  EC 24 01 72 */	fmuls f1, f4, f5
/* 801C22EC 001BF24C  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801C22F0 001BF250  EC 03 01 72 */	fmuls f0, f3, f5
/* 801C22F4 001BF254  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 801C22F8 001BF258  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 801C22FC 001BF25C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 801C2300 001BF260  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801C2304 001BF264  48 15 18 0D */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 801C2308 001BF268  38 61 00 98 */	addi r3, r1, 0x98
/* 801C230C 001BF26C  38 81 00 68 */	addi r4, r1, 0x68
/* 801C2310 001BF270  48 15 08 65 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 801C2314 001BF274  80 78 08 20 */	lwz r3, 0x820(r24)
/* 801C2318 001BF278  38 80 00 01 */	li r4, 1
/* 801C231C 001BF27C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2320 001BF280  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C2324 001BF284  7D 89 03 A6 */	mtctr r12
/* 801C2328 001BF288  4E 80 04 21 */	bctrl
/* 801C232C 001BF28C  C0 38 08 3C */	lfs f1, 0x83c(r24)
/* 801C2330 001BF290  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C2334 001BF294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C2338 001BF298  40 81 00 20 */	ble lbl_801C2358
/* 801C233C 001BF29C  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C2340 001BF2A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801C2344 001BF2A4  EC 1C 00 32 */	fmuls f0, f28, f0
/* 801C2348 001BF2A8  FC 00 00 1E */	fctiwz f0, f0
/* 801C234C 001BF2AC  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801C2350 001BF2B0  83 81 00 D4 */	lwz r28, 0xd4(r1)
/* 801C2354 001BF2B4  48 00 00 08 */	b lbl_801C235C
lbl_801C2358:
/* 801C2358 001BF2B8  3B 80 FF FF */	li r28, -1
lbl_801C235C:
/* 801C235C 001BF2BC  80 78 08 30 */	lwz r3, 0x830(r24)
/* 801C2360 001BF2C0  57 80 0F FE */	srwi r0, r28, 0x1f
/* 801C2364 001BF2C4  68 04 00 01 */	xori r4, r0, 1
/* 801C2368 001BF2C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C236C 001BF2CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C2370 001BF2D0  7D 89 03 A6 */	mtctr r12
/* 801C2374 001BF2D4  4E 80 04 21 */	bctrl
/* 801C2378 001BF2D8  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 801C237C 001BF2DC  3F E0 43 30 */	lis r31, 0x4330
/* 801C2380 001BF2E0  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801C2384 001BF2E4  3B 40 00 00 */	li r26, 0
/* 801C2388 001BF2E8  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 801C238C 001BF2EC  3B 60 00 00 */	li r27, 0
/* 801C2390 001BF2F0  93 E1 00 D8 */	stw r31, 0xd8(r1)
/* 801C2394 001BF2F4  CB 82 AA E0 */	lfd f28, lbl_805AC800@sda21(r2)
/* 801C2398 001BF2F8  38 03 FF FF */	addi r0, r3, -1
/* 801C239C 001BF2FC  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801C23A0 001BF300  54 03 38 30 */	slwi r3, r0, 7
/* 801C23A4 001BF304  C0 22 AA A4 */	lfs f1, lbl_805AC7C4@sda21(r2)
/* 801C23A8 001BF308  38 03 00 30 */	addi r0, r3, 0x30
/* 801C23AC 001BF30C  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801C23B0 001BF310  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 801C23B4 001BF314  C3 A2 AA 98 */	lfs f29, lbl_805AC7B8@sda21(r2)
/* 801C23B8 001BF318  7E E3 04 2E */	lfsx f23, r3, r0
/* 801C23BC 001BF31C  EF 01 00 24 */	fdivs f24, f1, f0
/* 801C23C0 001BF320  C3 C2 AA D0 */	lfs f30, lbl_805AC7F0@sda21(r2)
/* 801C23C4 001BF324  C3 E2 AA AC */	lfs f31, lbl_805AC7CC@sda21(r2)
/* 801C23C8 001BF328  48 00 01 F8 */	b lbl_801C25C0
lbl_801C23CC:
/* 801C23CC 001BF32C  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 801C23D0 001BF330  93 E1 00 D0 */	stw r31, 0xd0(r1)
/* 801C23D4 001BF334  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801C23D8 001BF338  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 801C23DC 001BF33C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801C23E0 001BF340  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801C23E4 001BF344  93 E1 00 D8 */	stw r31, 0xd8(r1)
/* 801C23E8 001BF348  C8 21 00 D8 */	lfd f1, 0xd8(r1)
/* 801C23EC 001BF34C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 801C23F0 001BF350  EC 21 E0 28 */	fsubs f1, f1, f28
/* 801C23F4 001BF354  40 81 00 10 */	ble lbl_801C2404
/* 801C23F8 001BF358  C0 02 AA D4 */	lfs f0, lbl_805AC7F4@sda21(r2)
/* 801C23FC 001BF35C  EE A0 08 24 */	fdivs f21, f0, f1
/* 801C2400 001BF360  48 00 00 08 */	b lbl_801C2408
lbl_801C2404:
/* 801C2404 001BF364  FE A0 E8 90 */	fmr f21, f29
lbl_801C2408:
/* 801C2408 001BF368  EC 1E 00 72 */	fmuls f0, f30, f1
/* 801C240C 001BF36C  38 78 08 38 */	addi r3, r24, 0x838
/* 801C2410 001BF370  EE 80 06 32 */	fmuls f20, f0, f24
/* 801C2414 001BF374  48 15 00 C9 */	bl Float__9CRandom16Fv
/* 801C2418 001BF378  C0 18 08 34 */	lfs f0, 0x834(r24)
/* 801C241C 001BF37C  EE 7F 00 72 */	fmuls f19, f31, f1
/* 801C2420 001BF380  EC 35 00 2A */	fadds f1, f21, f0
/* 801C2424 001BF384  48 15 29 21 */	bl FastCosR__5CMathFf
/* 801C2428 001BF388  EC 14 00 72 */	fmuls f0, f20, f1
/* 801C242C 001BF38C  FC 20 A8 90 */	fmr f1, f21
/* 801C2430 001BF390  EE B3 00 32 */	fmuls f21, f19, f0
/* 801C2434 001BF394  48 15 29 BD */	bl FastSinR__5CMathFf
/* 801C2438 001BF398  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 801C243C 001BF39C  EC 14 00 72 */	fmuls f0, f20, f1
/* 801C2440 001BF3A0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801C2444 001BF3A4  93 E1 00 C8 */	stw r31, 0xc8(r1)
/* 801C2448 001BF3A8  EC 33 00 32 */	fmuls f1, f19, f0
/* 801C244C 001BF3AC  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801C2450 001BF3B0  EC 00 E0 28 */	fsubs f0, f0, f28
/* 801C2454 001BF3B4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 801C2458 001BF3B8  40 81 00 28 */	ble lbl_801C2480
/* 801C245C 001BF3BC  D2 A1 00 20 */	stfs f21, 0x20(r1)
/* 801C2460 001BF3C0  38 61 00 14 */	addi r3, r1, 0x14
/* 801C2464 001BF3C4  38 81 00 98 */	addi r4, r1, 0x98
/* 801C2468 001BF3C8  38 A1 00 20 */	addi r5, r1, 0x20
/* 801C246C 001BF3CC  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 801C2470 001BF3D0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801C2474 001BF3D4  48 15 06 75 */	bl __ml__12CTransform4fCFRC9CVector3f
/* 801C2478 001BF3D8  38 61 00 14 */	addi r3, r1, 0x14
/* 801C247C 001BF3DC  48 00 00 0C */	b lbl_801C2488
lbl_801C2480:
/* 801C2480 001BF3E0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C2484 001BF3E4  38 63 66 A0 */	addi r3, r3, skZero3f@l
lbl_801C2488:
/* 801C2488 001BF3E8  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C248C 001BF3EC  3A E0 00 00 */	li r23, 0
/* 801C2490 001BF3F0  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C2494 001BF3F4  C0 03 00 00 */	lfs f0, 0(r3)
/* 801C2498 001BF3F8  EC 5B 10 2A */	fadds f2, f27, f2
/* 801C249C 001BF3FC  EC 3A 08 2A */	fadds f1, f26, f1
/* 801C24A0 001BF400  EC 19 00 2A */	fadds f0, f25, f0
/* 801C24A4 001BF404  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801C24A8 001BF408  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801C24AC 001BF40C  D0 21 00 4C */	stfs f1, 0x4c(r1)
lbl_801C24B0:
/* 801C24B0 001BF410  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 801C24B4 001BF414  93 E1 00 D8 */	stw r31, 0xd8(r1)
/* 801C24B8 001BF418  C0 81 00 54 */	lfs f4, 0x54(r1)
/* 801C24BC 001BF41C  38 81 00 08 */	addi r4, r1, 8
/* 801C24C0 001BF420  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801C24C4 001BF424  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 801C24C8 001BF428  C8 21 00 D8 */	lfd f1, 0xd8(r1)
/* 801C24CC 001BF42C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 801C24D0 001BF430  EC C1 E0 28 */	fsubs f6, f1, f28
/* 801C24D4 001BF434  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 801C24D8 001BF438  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 801C24DC 001BF43C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 801C24E0 001BF440  EC 86 01 32 */	fmuls f4, f6, f4
/* 801C24E4 001BF444  EC 46 00 B2 */	fmuls f2, f6, f2
/* 801C24E8 001BF448  EC 06 00 32 */	fmuls f0, f6, f0
/* 801C24EC 001BF44C  EC 98 01 32 */	fmuls f4, f24, f4
/* 801C24F0 001BF450  EC 58 00 B2 */	fmuls f2, f24, f2
/* 801C24F4 001BF454  EC 18 00 32 */	fmuls f0, f24, f0
/* 801C24F8 001BF458  EC 85 20 2A */	fadds f4, f5, f4
/* 801C24FC 001BF45C  EC 43 10 2A */	fadds f2, f3, f2
/* 801C2500 001BF460  EC 01 00 2A */	fadds f0, f1, f0
/* 801C2504 001BF464  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 801C2508 001BF468  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C250C 001BF46C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801C2510 001BF470  80 78 08 20 */	lwz r3, 0x820(r24)
/* 801C2514 001BF474  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2518 001BF478  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C251C 001BF47C  7D 89 03 A6 */	mtctr r12
/* 801C2520 001BF480  4E 80 04 21 */	bctrl
/* 801C2524 001BF484  80 78 08 20 */	lwz r3, 0x820(r24)
/* 801C2528 001BF488  38 80 00 01 */	li r4, 1
/* 801C252C 001BF48C  48 15 A3 95 */	bl ForceParticleCreation__11CElementGenFi
/* 801C2530 001BF490  3A F7 00 01 */	addi r23, r23, 1
/* 801C2534 001BF494  2C 17 00 03 */	cmpwi r23, 3
/* 801C2538 001BF498  41 80 FF 78 */	blt lbl_801C24B0
/* 801C253C 001BF49C  80 1E 01 68 */	lwz r0, 0x168(r30)
/* 801C2540 001BF4A0  7C 1A E0 00 */	cmpw r26, r28
/* 801C2544 001BF4A4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801C2548 001BF4A8  7C 60 DA 14 */	add r3, r0, r27
/* 801C254C 001BF4AC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801C2550 001BF4B0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801C2554 001BF4B4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801C2558 001BF4B8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801C255C 001BF4BC  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801C2560 001BF4C0  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 801C2564 001BF4C4  D2 E3 00 30 */	stfs f23, 0x30(r3)
/* 801C2568 001BF4C8  FE E0 00 90 */	fmr f23, f0
/* 801C256C 001BF4CC  40 82 00 34 */	bne lbl_801C25A0
/* 801C2570 001BF4D0  80 78 08 30 */	lwz r3, 0x830(r24)
/* 801C2574 001BF4D4  38 81 00 44 */	addi r4, r1, 0x44
/* 801C2578 001BF4D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C257C 001BF4DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801C2580 001BF4E0  7D 89 03 A6 */	mtctr r12
/* 801C2584 001BF4E4  4E 80 04 21 */	bctrl
/* 801C2588 001BF4E8  80 78 08 30 */	lwz r3, 0x830(r24)
/* 801C258C 001BF4EC  FC 20 B0 90 */	fmr f1, f22
/* 801C2590 001BF4F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2594 001BF4F4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C2598 001BF4F8  7D 89 03 A6 */	mtctr r12
/* 801C259C 001BF4FC  4E 80 04 21 */	bctrl
lbl_801C25A0:
/* 801C25A0 001BF500  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 801C25A4 001BF504  3B 7B 00 80 */	addi r27, r27, 0x80
/* 801C25A8 001BF508  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801C25AC 001BF50C  3B 5A 00 01 */	addi r26, r26, 1
/* 801C25B0 001BF510  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801C25B4 001BF514  EF 39 10 2A */	fadds f25, f25, f2
/* 801C25B8 001BF518  EF 7B 08 2A */	fadds f27, f27, f1
/* 801C25BC 001BF51C  EF 5A 00 2A */	fadds f26, f26, f0
lbl_801C25C0:
/* 801C25C0 001BF520  7C 1A E8 00 */	cmpw r26, r29
/* 801C25C4 001BF524  41 80 FE 08 */	blt lbl_801C23CC
/* 801C25C8 001BF528  80 78 08 20 */	lwz r3, 0x820(r24)
/* 801C25CC 001BF52C  38 80 00 00 */	li r4, 0
/* 801C25D0 001BF530  81 83 00 00 */	lwz r12, 0(r3)
/* 801C25D4 001BF534  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C25D8 001BF538  7D 89 03 A6 */	mtctr r12
/* 801C25DC 001BF53C  4E 80 04 21 */	bctrl
/* 801C25E0 001BF540  80 78 08 20 */	lwz r3, 0x820(r24)
/* 801C25E4 001BF544  FC 20 B0 90 */	fmr f1, f22
/* 801C25E8 001BF548  81 83 00 00 */	lwz r12, 0(r3)
/* 801C25EC 001BF54C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C25F0 001BF550  7D 89 03 A6 */	mtctr r12
/* 801C25F4 001BF554  4E 80 04 21 */	bctrl
/* 801C25F8 001BF558  C0 58 08 34 */	lfs f2, 0x834(r24)
/* 801C25FC 001BF55C  FC 20 B0 90 */	fmr f1, f22
/* 801C2600 001BF560  C0 02 AA D8 */	lfs f0, lbl_805AC7F8@sda21(r2)
/* 801C2604 001BF564  7F 03 C3 78 */	mr r3, r24
/* 801C2608 001BF568  7F 24 CB 78 */	mr r4, r25
/* 801C260C 001BF56C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801C2610 001BF570  EC 02 00 2A */	fadds f0, f2, f0
/* 801C2614 001BF574  D0 18 08 34 */	stfs f0, 0x834(r24)
/* 801C2618 001BF578  4B FF F9 59 */	bl sub_801c1f70
lbl_801C261C:
/* 801C261C 001BF57C  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, qr0
/* 801C2620 001BF580  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 801C2624 001BF584  E3 C1 01 C8 */	psq_l f30, 456(r1), 0, qr0
/* 801C2628 001BF588  CB C1 01 C0 */	lfd f30, 0x1c0(r1)
/* 801C262C 001BF58C  E3 A1 01 B8 */	psq_l f29, 440(r1), 0, qr0
/* 801C2630 001BF590  CB A1 01 B0 */	lfd f29, 0x1b0(r1)
/* 801C2634 001BF594  E3 81 01 A8 */	psq_l f28, 424(r1), 0, qr0
/* 801C2638 001BF598  CB 81 01 A0 */	lfd f28, 0x1a0(r1)
/* 801C263C 001BF59C  E3 61 01 98 */	psq_l f27, 408(r1), 0, qr0
/* 801C2640 001BF5A0  CB 61 01 90 */	lfd f27, 0x190(r1)
/* 801C2644 001BF5A4  E3 41 01 88 */	psq_l f26, 392(r1), 0, qr0
/* 801C2648 001BF5A8  CB 41 01 80 */	lfd f26, 0x180(r1)
/* 801C264C 001BF5AC  E3 21 01 78 */	psq_l f25, 376(r1), 0, qr0
/* 801C2650 001BF5B0  CB 21 01 70 */	lfd f25, 0x170(r1)
/* 801C2654 001BF5B4  E3 01 01 68 */	psq_l f24, 360(r1), 0, qr0
/* 801C2658 001BF5B8  CB 01 01 60 */	lfd f24, 0x160(r1)
/* 801C265C 001BF5BC  E2 E1 01 58 */	psq_l f23, 344(r1), 0, qr0
/* 801C2660 001BF5C0  CA E1 01 50 */	lfd f23, 0x150(r1)
/* 801C2664 001BF5C4  E2 C1 01 48 */	psq_l f22, 328(r1), 0, qr0
/* 801C2668 001BF5C8  CA C1 01 40 */	lfd f22, 0x140(r1)
/* 801C266C 001BF5CC  E2 A1 01 38 */	psq_l f21, 312(r1), 0, qr0
/* 801C2670 001BF5D0  CA A1 01 30 */	lfd f21, 0x130(r1)
/* 801C2674 001BF5D4  E2 81 01 28 */	psq_l f20, 296(r1), 0, qr0
/* 801C2678 001BF5D8  CA 81 01 20 */	lfd f20, 0x120(r1)
/* 801C267C 001BF5DC  E2 61 01 18 */	psq_l f19, 280(r1), 0, qr0
/* 801C2680 001BF5E0  CA 61 01 10 */	lfd f19, 0x110(r1)
/* 801C2684 001BF5E4  BA E1 00 EC */	lmw r23, 0xec(r1)
/* 801C2688 001BF5E8  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 801C268C 001BF5EC  7C 08 03 A6 */	mtlr r0
/* 801C2690 001BF5F0  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 801C2694 001BF5F4  4E 80 00 20 */	blr

.global sub_801c2698
sub_801c2698:
/* 801C2698 001BF5F8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801C269C 001BF5FC  7C 08 02 A6 */	mflr r0
/* 801C26A0 001BF600  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801C26A4 001BF604  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801C26A8 001BF608  F3 E1 00 98 */	psq_st f31, 152(r1), 0, qr0
/* 801C26AC 001BF60C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801C26B0 001BF610  F3 C1 00 88 */	psq_st f30, 136(r1), 0, qr0
/* 801C26B4 001BF614  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 801C26B8 001BF618  93 C1 00 78 */	stw r30, 0x78(r1)
/* 801C26BC 001BF61C  93 A1 00 74 */	stw r29, 0x74(r1)
/* 801C26C0 001BF620  7C 7D 1B 78 */	mr r29, r3
/* 801C26C4 001BF624  7C 9E 23 78 */	mr r30, r4
/* 801C26C8 001BF628  FF C0 08 90 */	fmr f30, f1
/* 801C26CC 001BF62C  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801C26D0 001BF630  C3 E3 06 3C */	lfs f31, 0x63c(r3)
/* 801C26D4 001BF634  4B FF EE D5 */	bl sub_801c15a8
/* 801C26D8 001BF638  EC 1E 07 F2 */	fmuls f0, f30, f31
/* 801C26DC 001BF63C  38 E0 00 0A */	li r7, 0xa
/* 801C26E0 001BF640  C0 5D 07 9C */	lfs f2, 0x79c(r29)
/* 801C26E4 001BF644  38 80 00 00 */	li r4, 0
/* 801C26E8 001BF648  88 61 00 2C */	lbz r3, 0x2c(r1)
/* 801C26EC 001BF64C  50 83 3E 30 */	rlwimi r3, r4, 7, 0x18, 0x18
/* 801C26F0 001BF650  EC 60 00 72 */	fmuls f3, f0, f1
/* 801C26F4 001BF654  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C26F8 001BF658  98 61 00 2C */	stb r3, 0x2c(r1)
/* 801C26FC 001BF65C  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 801C2700 001BF660  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 801C2704 001BF664  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C2708 001BF668  EC 22 18 2A */	fadds f1, f2, f3
/* 801C270C 001BF66C  50 86 2E B4 */	rlwimi r6, r4, 5, 0x1a, 0x1a
/* 801C2710 001BF670  98 01 00 2C */	stb r0, 0x2c(r1)
/* 801C2714 001BF674  38 A0 00 01 */	li r5, 1
/* 801C2718 001BF678  38 60 00 00 */	li r3, 0
/* 801C271C 001BF67C  38 80 00 01 */	li r4, 1
/* 801C2720 001BF680  D0 3D 07 9C */	stfs f1, 0x79c(r29)
/* 801C2724 001BF684  88 01 00 60 */	lbz r0, 0x60(r1)
/* 801C2728 001BF688  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801C272C 001BF68C  90 E1 00 48 */	stw r7, 0x48(r1)
/* 801C2730 001BF690  98 C1 00 4C */	stb r6, 0x4c(r1)
/* 801C2734 001BF694  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 801C2738 001BF698  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 801C273C 001BF69C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801C2740 001BF6A0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801C2744 001BF6A4  98 01 00 60 */	stb r0, 0x60(r1)
/* 801C2748 001BF6A8  88 1F 09 C7 */	lbz r0, 0x9c7(r31)
/* 801C274C 001BF6AC  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801C2750 001BF6B0  90 E1 00 28 */	stw r7, 0x28(r1)
/* 801C2754 001BF6B4  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 801C2758 001BF6B8  80 AD 91 28 */	lwz r5, lbl_805A7CE8@sda21(r13)
/* 801C275C 001BF6BC  98 C1 00 2C */	stb r6, 0x2c(r1)
/* 801C2760 001BF6C0  48 1C 77 95 */	bl __shl2i
/* 801C2764 001BF6C4  39 40 00 00 */	li r10, 0
/* 801C2768 001BF6C8  38 00 00 03 */	li r0, 3
/* 801C276C 001BF6CC  90 81 00 34 */	stw r4, 0x34(r1)
/* 801C2770 001BF6D0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C2774 001BF6D4  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801C2778 001BF6D8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801C277C 001BF6DC  90 61 00 30 */	stw r3, 0x30(r1)
/* 801C2780 001BF6E0  38 81 00 24 */	addi r4, r1, 0x24
/* 801C2784 001BF6E4  7F C3 F3 78 */	mr r3, r30
/* 801C2788 001BF6E8  38 C1 00 14 */	addi r6, r1, 0x14
/* 801C278C 001BF6EC  91 41 00 3C */	stw r10, 0x3c(r1)
/* 801C2790 001BF6F0  38 E1 00 48 */	addi r7, r1, 0x48
/* 801C2794 001BF6F4  39 01 00 30 */	addi r8, r1, 0x30
/* 801C2798 001BF6F8  91 41 00 38 */	stw r10, 0x38(r1)
/* 801C279C 001BF6FC  90 01 00 40 */	stw r0, 0x40(r1)
/* 801C27A0 001BF700  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801C27A4 001BF704  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C27A8 001BF708  A1 5F 00 08 */	lhz r10, 8(r31)
/* 801C27AC 001BF70C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C27B0 001BF710  B1 41 00 1C */	sth r10, 0x1c(r1)
/* 801C27B4 001BF714  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801C27B8 001BF718  B1 41 00 18 */	sth r10, 0x18(r1)
/* 801C27BC 001BF71C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801C27C0 001BF720  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801C27C4 001BF724  4B E8 78 DD */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801C27C8 001BF728  88 1F 09 C7 */	lbz r0, 0x9c7(r31)
/* 801C27CC 001BF72C  38 60 00 00 */	li r3, 0
/* 801C27D0 001BF730  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C27D4 001BF734  98 1F 09 C7 */	stb r0, 0x9c7(r31)
/* 801C27D8 001BF738  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801C27DC 001BF73C  2C 00 00 00 */	cmpwi r0, 0
/* 801C27E0 001BF740  40 82 00 6C */	bne lbl_801C284C
/* 801C27E4 001BF744  C0 22 AA E8 */	lfs f1, lbl_805AC808@sda21(r2)
/* 801C27E8 001BF748  C0 1D 07 A0 */	lfs f0, 0x7a0(r29)
/* 801C27EC 001BF74C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C27F0 001BF750  48 15 26 01 */	bl FastSinR__5CMathFf
/* 801C27F4 001BF754  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801C27F8 001BF758  FC 00 0A 10 */	fabs f0, f1
/* 801C27FC 001BF75C  C0 22 AA EC */	lfs f1, lbl_805AC80C@sda21(r2)
/* 801C2800 001BF760  38 81 00 0C */	addi r4, r1, 0xc
/* 801C2804 001BF764  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C2808 001BF768  FC 00 00 18 */	frsp f0, f0
/* 801C280C 001BF76C  C0 42 AA F0 */	lfs f2, lbl_805AC810@sda21(r2)
/* 801C2810 001BF770  80 7E 08 B8 */	lwz r3, 0x8b8(r30)
/* 801C2814 001BF774  B0 01 00 08 */	sth r0, 8(r1)
/* 801C2818 001BF778  80 63 00 00 */	lwz r3, 0(r3)
/* 801C281C 001BF77C  EC 21 00 32 */	fmuls f1, f1, f0
/* 801C2820 001BF780  38 63 01 88 */	addi r3, r3, 0x188
/* 801C2824 001BF784  4B FF E3 15 */	bl AddSource__19CStaticInterferenceF9TUniqueId
/* 801C2828 001BF788  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801C282C 001BF78C  C0 22 AA F0 */	lfs f1, lbl_805AC810@sda21(r2)
/* 801C2830 001BF790  C0 03 07 40 */	lfs f0, 0x740(r3)
/* 801C2834 001BF794  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C2838 001BF798  40 80 00 14 */	bge lbl_801C284C
/* 801C283C 001BF79C  C0 42 80 F8 */	lfs f2, lbl_805A9E18@sda21(r2)
/* 801C2840 001BF7A0  7F E3 FB 78 */	mr r3, r31
/* 801C2844 001BF7A4  C0 62 80 FC */	lfs f3, lbl_805A9E1C@sda21(r2)
/* 801C2848 001BF7A8  4B E5 08 25 */	bl SetHudDisable__7CPlayerFfff
lbl_801C284C:
/* 801C284C 001BF7AC  C0 1D 07 A0 */	lfs f0, 0x7a0(r29)
/* 801C2850 001BF7B0  EC 00 F0 2A */	fadds f0, f0, f30
/* 801C2854 001BF7B4  D0 1D 07 A0 */	stfs f0, 0x7a0(r29)
/* 801C2858 001BF7B8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, qr0
/* 801C285C 001BF7BC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801C2860 001BF7C0  E3 C1 00 88 */	psq_l f30, 136(r1), 0, qr0
/* 801C2864 001BF7C4  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801C2868 001BF7C8  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 801C286C 001BF7CC  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 801C2870 001BF7D0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801C2874 001BF7D4  83 A1 00 74 */	lwz r29, 0x74(r1)
/* 801C2878 001BF7D8  7C 08 03 A6 */	mtlr r0
/* 801C287C 001BF7DC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801C2880 001BF7E0  4E 80 00 20 */	blr

.global sub_801c2884
sub_801c2884:
/* 801C2884 001BF7E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C2888 001BF7E8  7C 08 02 A6 */	mflr r0
/* 801C288C 001BF7EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C2890 001BF7F0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801C2894 001BF7F4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801C2898 001BF7F8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C289C 001BF7FC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801C28A0 001BF800  7C 7E 1B 78 */	mr r30, r3
/* 801C28A4 001BF804  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801C28A8 001BF808  7C 9F 23 78 */	mr r31, r4
/* 801C28AC 001BF80C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801C28B0 001BF810  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801C28B4 001BF814  41 82 00 0C */	beq lbl_801C28C0
/* 801C28B8 001BF818  38 60 00 01 */	li r3, 1
/* 801C28BC 001BF81C  48 00 01 58 */	b lbl_801C2A14
lbl_801C28C0:
/* 801C28C0 001BF820  C0 3E 08 3C */	lfs f1, 0x83c(r30)
/* 801C28C4 001BF824  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C28C8 001BF828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C28CC 001BF82C  4C 41 13 82 */	cror 2, 1, 2
/* 801C28D0 001BF830  40 82 00 1C */	bne lbl_801C28EC
/* 801C28D4 001BF834  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C28D8 001BF838  38 60 00 00 */	li r3, 0
/* 801C28DC 001BF83C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C28E0 001BF840  38 60 00 01 */	li r3, 1
/* 801C28E4 001BF844  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C28E8 001BF848  48 00 01 2C */	b lbl_801C2A14
lbl_801C28EC:
/* 801C28EC 001BF84C  7F C4 F3 78 */	mr r4, r30
/* 801C28F0 001BF850  38 61 00 24 */	addi r3, r1, 0x24
/* 801C28F4 001BF854  4B FF ED 7D */	bl sub_801c1670
/* 801C28F8 001BF858  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801C28FC 001BF85C  7F C4 F3 78 */	mr r4, r30
/* 801C2900 001BF860  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801C2904 001BF864  7F E5 FB 78 */	mr r5, r31
/* 801C2908 001BF868  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801C290C 001BF86C  38 61 00 18 */	addi r3, r1, 0x18
/* 801C2910 001BF870  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801C2914 001BF874  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801C2918 001BF878  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 801C291C 001BF87C  4B FF EC BD */	bl sub_801c15d8
/* 801C2920 001BF880  C0 A1 00 1C */	lfs f5, 0x1c(r1)
/* 801C2924 001BF884  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801C2928 001BF888  C0 C1 00 18 */	lfs f6, 0x18(r1)
/* 801C292C 001BF88C  EC 45 00 28 */	fsubs f2, f5, f0
/* 801C2930 001BF890  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801C2934 001BF894  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801C2938 001BF898  EC 26 00 28 */	fsubs f1, f6, f0
/* 801C293C 001BF89C  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 801C2940 001BF8A0  EC 02 00 B2 */	fmuls f0, f2, f2
/* 801C2944 001BF8A4  D0 C1 00 30 */	stfs f6, 0x30(r1)
/* 801C2948 001BF8A8  EC 64 18 28 */	fsubs f3, f4, f3
/* 801C294C 001BF8AC  EC 01 00 7A */	fmadds f0, f1, f1, f0
/* 801C2950 001BF8B0  D0 A1 00 34 */	stfs f5, 0x34(r1)
/* 801C2954 001BF8B4  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801C2958 001BF8B8  EC 63 00 FA */	fmadds f3, f3, f3, f0
/* 801C295C 001BF8BC  C0 1E 03 00 */	lfs f0, 0x300(r30)
/* 801C2960 001BF8C0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801C2964 001BF8C4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C2968 001BF8C8  40 81 00 0C */	ble lbl_801C2974
/* 801C296C 001BF8CC  38 60 00 01 */	li r3, 1
/* 801C2970 001BF8D0  48 00 00 A4 */	b lbl_801C2A14
lbl_801C2974:
/* 801C2974 001BF8D4  38 61 00 08 */	addi r3, r1, 8
/* 801C2978 001BF8D8  48 15 18 89 */	bl __ct__9CVector2fFff
/* 801C297C 001BF8DC  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C2980 001BF8E0  38 61 00 10 */	addi r3, r1, 0x10
/* 801C2984 001BF8E4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801C2988 001BF8E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C298C 001BF8EC  C0 02 AA D0 */	lfs f0, lbl_805AC7F0@sda21(r2)
/* 801C2990 001BF8F0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801C2994 001BF8F4  C0 3E 02 FC */	lfs f1, 0x2fc(r30)
/* 801C2998 001BF8F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801C299C 001BF8FC  EF E0 00 72 */	fmuls f31, f0, f1
/* 801C29A0 001BF900  48 15 17 3D */	bl MagSquared__9CVector2fCFv
/* 801C29A4 001BF904  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801C29A8 001BF908  40 80 00 0C */	bge lbl_801C29B4
/* 801C29AC 001BF90C  38 60 00 01 */	li r3, 1
/* 801C29B0 001BF910  48 00 00 64 */	b lbl_801C2A14
lbl_801C29B4:
/* 801C29B4 001BF914  7F C3 F3 78 */	mr r3, r30
/* 801C29B8 001BF918  7F E4 FB 78 */	mr r4, r31
/* 801C29BC 001BF91C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801C29C0 001BF920  38 C1 00 30 */	addi r6, r1, 0x30
/* 801C29C4 001BF924  48 03 24 0D */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801C29C8 001BF928  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C29CC 001BF92C  41 82 00 0C */	beq lbl_801C29D8
/* 801C29D0 001BF930  38 60 00 01 */	li r3, 1
/* 801C29D4 001BF934  48 00 00 40 */	b lbl_801C2A14
lbl_801C29D8:
/* 801C29D8 001BF938  C3 FE 06 40 */	lfs f31, 0x640(r30)
/* 801C29DC 001BF93C  7F C3 F3 78 */	mr r3, r30
/* 801C29E0 001BF940  4B FF EB C9 */	bl sub_801c15a8
/* 801C29E4 001BF944  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801C29E8 001BF948  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 801C29EC 001BF94C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C29F0 001BF950  4C 41 13 82 */	cror 2, 1, 2
/* 801C29F4 001BF954  41 82 00 14 */	beq lbl_801C2A08
/* 801C29F8 001BF958  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801C29FC 001BF95C  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 801C2A00 001BF960  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801C2A04 001BF964  41 82 00 0C */	beq lbl_801C2A10
lbl_801C2A08:
/* 801C2A08 001BF968  38 60 00 01 */	li r3, 1
/* 801C2A0C 001BF96C  48 00 00 08 */	b lbl_801C2A14
lbl_801C2A10:
/* 801C2A10 001BF970  38 60 00 00 */	li r3, 0
lbl_801C2A14:
/* 801C2A14 001BF974  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801C2A18 001BF978  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C2A1C 001BF97C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801C2A20 001BF980  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C2A24 001BF984  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801C2A28 001BF988  7C 08 03 A6 */	mtlr r0
/* 801C2A2C 001BF98C  38 21 00 60 */	addi r1, r1, 0x60
/* 801C2A30 001BF990  4E 80 00 20 */	blr

.global WallHang__12CMetroidBetaFR13CStateManager9EStateMsgf
WallHang__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C2A34 001BF994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C2A38 001BF998  7C 08 02 A6 */	mflr r0
/* 801C2A3C 001BF99C  2C 05 00 01 */	cmpwi r5, 1
/* 801C2A40 001BF9A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C2A44 001BF9A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C2A48 001BF9A8  7C 9F 23 78 */	mr r31, r4
/* 801C2A4C 001BF9AC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C2A50 001BF9B0  7C 7E 1B 78 */	mr r30, r3
/* 801C2A54 001BF9B4  41 82 00 58 */	beq lbl_801C2AAC
/* 801C2A58 001BF9B8  40 80 00 10 */	bge lbl_801C2A68
/* 801C2A5C 001BF9BC  2C 05 00 00 */	cmpwi r5, 0
/* 801C2A60 001BF9C0  40 80 00 14 */	bge lbl_801C2A74
/* 801C2A64 001BF9C4  48 00 01 A4 */	b lbl_801C2C08
lbl_801C2A68:
/* 801C2A68 001BF9C8  2C 05 00 03 */	cmpwi r5, 3
/* 801C2A6C 001BF9CC  40 80 01 9C */	bge lbl_801C2C08
/* 801C2A70 001BF9D0  48 00 01 7C */	b lbl_801C2BEC
lbl_801C2A74:
/* 801C2A74 001BF9D4  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C2A78 001BF9D8  38 80 00 00 */	li r4, 0
/* 801C2A7C 001BF9DC  4B F7 7F 5D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C2A80 001BF9E0  38 00 00 00 */	li r0, 0
/* 801C2A84 001BF9E4  7F C3 F3 78 */	mr r3, r30
/* 801C2A88 001BF9E8  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C2A8C 001BF9EC  7F E5 FB 78 */	mr r5, r31
/* 801C2A90 001BF9F0  38 80 00 13 */	li r4, 0x13
/* 801C2A94 001BF9F4  4B E9 14 ED */	bl RemoveMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801C2A98 001BF9F8  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C2A9C 001BF9FC  7F E4 FB 78 */	mr r4, r31
/* 801C2AA0 001BFA00  38 A0 00 00 */	li r5, 0
/* 801C2AA4 001BFA04  4B FE 48 55 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801C2AA8 001BFA08  48 00 01 60 */	b lbl_801C2C08
lbl_801C2AAC:
/* 801C2AAC 001BFA0C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801C2AB0 001BFA10  2C 00 00 01 */	cmpwi r0, 1
/* 801C2AB4 001BFA14  41 82 00 38 */	beq lbl_801C2AEC
/* 801C2AB8 001BFA18  40 80 00 10 */	bge lbl_801C2AC8
/* 801C2ABC 001BFA1C  2C 00 00 00 */	cmpwi r0, 0
/* 801C2AC0 001BFA20  40 80 00 14 */	bge lbl_801C2AD4
/* 801C2AC4 001BFA24  48 00 01 44 */	b lbl_801C2C08
lbl_801C2AC8:
/* 801C2AC8 001BFA28  2C 00 00 03 */	cmpwi r0, 3
/* 801C2ACC 001BFA2C  40 80 01 3C */	bge lbl_801C2C08
/* 801C2AD0 001BFA30  48 00 01 00 */	b lbl_801C2BD0
lbl_801C2AD4:
/* 801C2AD4 001BFA34  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C2AD8 001BFA38  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801C2ADC 001BFA3C  41 82 01 2C */	beq lbl_801C2C08
/* 801C2AE0 001BFA40  38 00 00 01 */	li r0, 1
/* 801C2AE4 001BFA44  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C2AE8 001BFA48  48 00 01 20 */	b lbl_801C2C08
lbl_801C2AEC:
/* 801C2AEC 001BFA4C  81 5E 04 50 */	lwz r10, 0x450(r30)
/* 801C2AF0 001BFA50  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801C2AF4 001BFA54  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C2AF8 001BFA58  40 82 00 10 */	bne lbl_801C2B08
/* 801C2AFC 001BFA5C  38 00 00 02 */	li r0, 2
/* 801C2B00 001BFA60  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C2B04 001BFA64  48 00 01 04 */	b lbl_801C2C08
lbl_801C2B08:
/* 801C2B08 001BFA68  3C A0 80 3E */	lis r5, lbl_803DAA68@ha
/* 801C2B0C 001BFA6C  38 C0 00 00 */	li r6, 0
/* 801C2B10 001BFA70  39 25 AA 68 */	addi r9, r5, lbl_803DAA68@l
/* 801C2B14 001BFA74  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801C2B18 001BFA78  50 C3 F8 00 */	rlwimi r3, r6, 0x1f, 0, 0
/* 801C2B1C 001BFA7C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C2B20 001BFA80  C4 44 66 A0 */	lfsu f2, skZero3f@l(r4)
/* 801C2B24 001BFA84  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801C2B28 001BFA88  7C 60 1B 78 */	mr r0, r3
/* 801C2B2C 001BFA8C  39 00 00 0E */	li r8, 0xe
/* 801C2B30 001BFA90  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C2B34 001BFA94  38 A0 FF FF */	li r5, -1
/* 801C2B38 001BFA98  C0 04 00 08 */	lfs f0, 8(r4)
/* 801C2B3C 001BFA9C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801C2B40 001BFAA0  91 21 00 08 */	stw r9, 8(r1)
/* 801C2B44 001BFAA4  50 C0 F0 42 */	rlwimi r0, r6, 0x1e, 1, 1
/* 801C2B48 001BFAA8  3B EA 00 04 */	addi r31, r10, 4
/* 801C2B4C 001BFAAC  38 80 00 0E */	li r4, 0xe
/* 801C2B50 001BFAB0  90 61 00 24 */	stw r3, 0x24(r1)
/* 801C2B54 001BFAB4  7F E3 FB 78 */	mr r3, r31
/* 801C2B58 001BFAB8  91 01 00 0C */	stw r8, 0xc(r1)
/* 801C2B5C 001BFABC  90 E1 00 08 */	stw r7, 8(r1)
/* 801C2B60 001BFAC0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801C2B64 001BFAC4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C2B68 001BFAC8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C2B6C 001BFACC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801C2B70 001BFAD0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801C2B74 001BFAD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C2B78 001BFAD8  4B F6 E8 C1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801C2B7C 001BFADC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C2B80 001BFAE0  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801C2B84 001BFAE4  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801C2B88 001BFAE8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801C2B8C 001BFAEC  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801C2B90 001BFAF0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801C2B94 001BFAF4  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801C2B98 001BFAF8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801C2B9C 001BFAFC  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801C2BA0 001BFB00  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801C2BA4 001BFB04  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801C2BA8 001BFB08  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801C2BAC 001BFB0C  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801C2BB0 001BFB10  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801C2BB4 001BFB14  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801C2BB8 001BFB18  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801C2BBC 001BFB1C  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801C2BC0 001BFB20  90 81 00 08 */	stw r4, 8(r1)
/* 801C2BC4 001BFB24  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801C2BC8 001BFB28  90 01 00 08 */	stw r0, 8(r1)
/* 801C2BCC 001BFB2C  48 00 00 3C */	b lbl_801C2C08
lbl_801C2BD0:
/* 801C2BD0 001BFB30  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C2BD4 001BFB34  80 03 02 B8 */	lwz r0, 0x2b8(r3)
/* 801C2BD8 001BFB38  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C2BDC 001BFB3C  41 82 00 2C */	beq lbl_801C2C08
/* 801C2BE0 001BFB40  38 00 00 03 */	li r0, 3
/* 801C2BE4 001BFB44  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C2BE8 001BFB48  48 00 00 20 */	b lbl_801C2C08
lbl_801C2BEC:
/* 801C2BEC 001BFB4C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C2BF0 001BFB50  38 80 00 01 */	li r4, 1
/* 801C2BF4 001BFB54  4B F7 7D E5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C2BF8 001BFB58  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C2BFC 001BFB5C  7F E4 FB 78 */	mr r4, r31
/* 801C2C00 001BFB60  38 A0 00 01 */	li r5, 1
/* 801C2C04 001BFB64  4B FE 46 F5 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
lbl_801C2C08:
/* 801C2C08 001BFB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C2C0C 001BFB6C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C2C10 001BFB70  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C2C14 001BFB74  7C 08 03 A6 */	mtlr r0
/* 801C2C18 001BFB78  38 21 00 30 */	addi r1, r1, 0x30
/* 801C2C1C 001BFB7C  4E 80 00 20 */	blr

.global Generate__12CMetroidBetaFR13CStateManager9EStateMsgf
Generate__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C2C20 001BFB80  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C2C24 001BFB84  7C 08 02 A6 */	mflr r0
/* 801C2C28 001BFB88  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C2C2C 001BFB8C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801C2C30 001BFB90  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801C2C34 001BFB94  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801C2C38 001BFB98  2C 05 00 01 */	cmpwi r5, 1
/* 801C2C3C 001BFB9C  7C 7F 1B 78 */	mr r31, r3
/* 801C2C40 001BFBA0  41 82 00 78 */	beq lbl_801C2CB8
/* 801C2C44 001BFBA4  40 80 00 10 */	bge lbl_801C2C54
/* 801C2C48 001BFBA8  2C 05 00 00 */	cmpwi r5, 0
/* 801C2C4C 001BFBAC  40 80 00 14 */	bge lbl_801C2C60
/* 801C2C50 001BFBB0  48 00 04 4C */	b lbl_801C309C
lbl_801C2C54:
/* 801C2C54 001BFBB4  2C 05 00 03 */	cmpwi r5, 3
/* 801C2C58 001BFBB8  40 80 04 44 */	bge lbl_801C309C
/* 801C2C5C 001BFBBC  48 00 03 F4 */	b lbl_801C3050
lbl_801C2C60:
/* 801C2C60 001BFBC0  C0 3F 07 DC */	lfs f1, 0x7dc(r31)
/* 801C2C64 001BFBC4  C0 1F 06 5C */	lfs f0, 0x65c(r31)
/* 801C2C68 001BFBC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C2C6C 001BFBCC  4C 41 13 82 */	cror 2, 1, 2
/* 801C2C70 001BFBD0  40 82 00 14 */	bne lbl_801C2C84
/* 801C2C74 001BFBD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2C78 001BFBD8  81 8C 02 98 */	lwz r12, 0x298(r12)
/* 801C2C7C 001BFBDC  7D 89 03 A6 */	mtctr r12
/* 801C2C80 001BFBE0  4E 80 04 21 */	bctrl
lbl_801C2C84:
/* 801C2C84 001BFBE4  38 60 00 01 */	li r3, 1
/* 801C2C88 001BFBE8  90 7F 05 68 */	stw r3, 0x568(r31)
/* 801C2C8C 001BFBEC  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 801C2C90 001BFBF0  C0 24 00 04 */	lfs f1, 4(r4)
/* 801C2C94 001BFBF4  C0 44 00 08 */	lfs f2, 8(r4)
/* 801C2C98 001BFBF8  C0 04 00 00 */	lfs f0, 0(r4)
/* 801C2C9C 001BFBFC  D0 1F 07 C0 */	stfs f0, 0x7c0(r31)
/* 801C2CA0 001BFC00  D0 3F 07 C4 */	stfs f1, 0x7c4(r31)
/* 801C2CA4 001BFC04  D0 5F 07 C8 */	stfs f2, 0x7c8(r31)
/* 801C2CA8 001BFC08  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 801C2CAC 001BFC0C  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801C2CB0 001BFC10  98 1F 08 40 */	stb r0, 0x840(r31)
/* 801C2CB4 001BFC14  48 00 03 E8 */	b lbl_801C309C
lbl_801C2CB8:
/* 801C2CB8 001BFC18  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 801C2CBC 001BFC1C  2C 00 00 02 */	cmpwi r0, 2
/* 801C2CC0 001BFC20  41 82 02 10 */	beq lbl_801C2ED0
/* 801C2CC4 001BFC24  40 80 03 D8 */	bge lbl_801C309C
/* 801C2CC8 001BFC28  2C 00 00 01 */	cmpwi r0, 1
/* 801C2CCC 001BFC2C  40 80 00 08 */	bge lbl_801C2CD4
/* 801C2CD0 001BFC30  48 00 03 CC */	b lbl_801C309C
lbl_801C2CD4:
/* 801C2CD4 001BFC34  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 801C2CD8 001BFC38  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801C2CDC 001BFC3C  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C2CE0 001BFC40  40 82 00 34 */	bne lbl_801C2D14
/* 801C2CE4 001BFC44  7C A3 2B 78 */	mr r3, r5
/* 801C2CE8 001BFC48  4B F7 7B D1 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 801C2CEC 001BFC4C  D0 3F 07 D8 */	stfs f1, 0x7d8(r31)
/* 801C2CF0 001BFC50  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C2CF4 001BFC54  C0 3F 07 D8 */	lfs f1, 0x7d8(r31)
/* 801C2CF8 001BFC58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C2CFC 001BFC5C  40 81 00 0C */	ble lbl_801C2D08
/* 801C2D00 001BFC60  38 00 00 02 */	li r0, 2
/* 801C2D04 001BFC64  48 00 00 08 */	b lbl_801C2D0C
lbl_801C2D08:
/* 801C2D08 001BFC68  38 00 00 03 */	li r0, 3
lbl_801C2D0C:
/* 801C2D0C 001BFC6C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801C2D10 001BFC70  48 00 03 8C */	b lbl_801C309C
lbl_801C2D14:
/* 801C2D14 001BFC74  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2D18 001BFC78  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C2D1C 001BFC7C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 801C2D20 001BFC80  7D 89 03 A6 */	mtctr r12
/* 801C2D24 001BFC84  4E 80 04 21 */	bctrl
/* 801C2D28 001BFC88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C2D2C 001BFC8C  41 82 00 D4 */	beq lbl_801C2E00
/* 801C2D30 001BFC90  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801C2D34 001BFC94  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C2D38 001BFC98  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801C2D3C 001BFC9C  39 46 AA 68 */	addi r10, r6, lbl_803DAA68@l
/* 801C2D40 001BFCA0  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 801C2D44 001BFCA4  80 81 00 58 */	lwz r4, 0x58(r1)
/* 801C2D48 001BFCA8  38 A0 00 00 */	li r5, 0
/* 801C2D4C 001BFCAC  C0 23 00 04 */	lfs f1, 4(r3)
/* 801C2D50 001BFCB0  50 A4 F8 00 */	rlwimi r4, r5, 0x1f, 0, 0
/* 801C2D54 001BFCB4  C0 03 00 08 */	lfs f0, 8(r3)
/* 801C2D58 001BFCB8  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C2D5C 001BFCBC  7C 80 23 78 */	mr r0, r4
/* 801C2D60 001BFCC0  90 81 00 58 */	stw r4, 0x58(r1)
/* 801C2D64 001BFCC4  39 20 00 0E */	li r9, 0xe
/* 801C2D68 001BFCC8  38 E0 00 02 */	li r7, 2
/* 801C2D6C 001BFCCC  38 C0 FF FF */	li r6, -1
/* 801C2D70 001BFCD0  50 A0 F0 42 */	rlwimi r0, r5, 0x1e, 1, 1
/* 801C2D74 001BFCD4  3B E3 00 04 */	addi r31, r3, 4
/* 801C2D78 001BFCD8  91 41 00 3C */	stw r10, 0x3c(r1)
/* 801C2D7C 001BFCDC  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 801C2D80 001BFCE0  7F E3 FB 78 */	mr r3, r31
/* 801C2D84 001BFCE4  38 80 00 0E */	li r4, 0xe
/* 801C2D88 001BFCE8  91 21 00 40 */	stw r9, 0x40(r1)
/* 801C2D8C 001BFCEC  91 01 00 3C */	stw r8, 0x3c(r1)
/* 801C2D90 001BFCF0  90 E1 00 44 */	stw r7, 0x44(r1)
/* 801C2D94 001BFCF4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801C2D98 001BFCF8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801C2D9C 001BFCFC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801C2DA0 001BFD00  90 C1 00 54 */	stw r6, 0x54(r1)
/* 801C2DA4 001BFD04  90 01 00 58 */	stw r0, 0x58(r1)
/* 801C2DA8 001BFD08  4B F6 E6 91 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801C2DAC 001BFD0C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801C2DB0 001BFD10  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801C2DB4 001BFD14  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801C2DB8 001BFD18  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801C2DBC 001BFD1C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801C2DC0 001BFD20  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801C2DC4 001BFD24  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 801C2DC8 001BFD28  80 61 00 48 */	lwz r3, 0x48(r1)
/* 801C2DCC 001BFD2C  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801C2DD0 001BFD30  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 801C2DD4 001BFD34  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801C2DD8 001BFD38  80 61 00 50 */	lwz r3, 0x50(r1)
/* 801C2DDC 001BFD3C  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801C2DE0 001BFD40  80 A1 00 54 */	lwz r5, 0x54(r1)
/* 801C2DE4 001BFD44  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801C2DE8 001BFD48  80 61 00 58 */	lwz r3, 0x58(r1)
/* 801C2DEC 001BFD4C  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801C2DF0 001BFD50  90 81 00 3C */	stw r4, 0x3c(r1)
/* 801C2DF4 001BFD54  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801C2DF8 001BFD58  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801C2DFC 001BFD5C  48 00 02 A0 */	b lbl_801C309C
lbl_801C2E00:
/* 801C2E00 001BFD60  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801C2E04 001BFD64  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C2E08 001BFD68  C4 43 66 A0 */	lfsu f2, skZero3f@l(r3)
/* 801C2E0C 001BFD6C  39 46 AA 68 */	addi r10, r6, lbl_803DAA68@l
/* 801C2E10 001BFD70  3D 00 80 3E */	lis r8, lbl_803DA9F0@ha
/* 801C2E14 001BFD74  80 81 00 38 */	lwz r4, 0x38(r1)
/* 801C2E18 001BFD78  38 A0 00 00 */	li r5, 0
/* 801C2E1C 001BFD7C  C0 23 00 04 */	lfs f1, 4(r3)
/* 801C2E20 001BFD80  50 A4 F8 00 */	rlwimi r4, r5, 0x1f, 0, 0
/* 801C2E24 001BFD84  C0 03 00 08 */	lfs f0, 8(r3)
/* 801C2E28 001BFD88  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C2E2C 001BFD8C  7C 80 23 78 */	mr r0, r4
/* 801C2E30 001BFD90  90 81 00 38 */	stw r4, 0x38(r1)
/* 801C2E34 001BFD94  39 20 00 0E */	li r9, 0xe
/* 801C2E38 001BFD98  38 E0 00 07 */	li r7, 7
/* 801C2E3C 001BFD9C  38 C0 FF FF */	li r6, -1
/* 801C2E40 001BFDA0  50 A0 F0 42 */	rlwimi r0, r5, 0x1e, 1, 1
/* 801C2E44 001BFDA4  3B E3 00 04 */	addi r31, r3, 4
/* 801C2E48 001BFDA8  91 41 00 1C */	stw r10, 0x1c(r1)
/* 801C2E4C 001BFDAC  39 08 A9 F0 */	addi r8, r8, lbl_803DA9F0@l
/* 801C2E50 001BFDB0  7F E3 FB 78 */	mr r3, r31
/* 801C2E54 001BFDB4  38 80 00 0E */	li r4, 0xe
/* 801C2E58 001BFDB8  91 21 00 20 */	stw r9, 0x20(r1)
/* 801C2E5C 001BFDBC  91 01 00 1C */	stw r8, 0x1c(r1)
/* 801C2E60 001BFDC0  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801C2E64 001BFDC4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801C2E68 001BFDC8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801C2E6C 001BFDCC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801C2E70 001BFDD0  90 C1 00 34 */	stw r6, 0x34(r1)
/* 801C2E74 001BFDD4  90 01 00 38 */	stw r0, 0x38(r1)
/* 801C2E78 001BFDD8  4B F6 E5 C1 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801C2E7C 001BFDDC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801C2E80 001BFDE0  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801C2E84 001BFDE4  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801C2E88 001BFDE8  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801C2E8C 001BFDEC  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801C2E90 001BFDF0  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801C2E94 001BFDF4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 801C2E98 001BFDF8  80 61 00 28 */	lwz r3, 0x28(r1)
/* 801C2E9C 001BFDFC  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801C2EA0 001BFE00  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 801C2EA4 001BFE04  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801C2EA8 001BFE08  80 61 00 30 */	lwz r3, 0x30(r1)
/* 801C2EAC 001BFE0C  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801C2EB0 001BFE10  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 801C2EB4 001BFE14  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801C2EB8 001BFE18  80 61 00 38 */	lwz r3, 0x38(r1)
/* 801C2EBC 001BFE1C  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801C2EC0 001BFE20  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801C2EC4 001BFE24  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801C2EC8 001BFE28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C2ECC 001BFE2C  48 00 01 D0 */	b lbl_801C309C
lbl_801C2ED0:
/* 801C2ED0 001BFE30  80 BF 04 50 */	lwz r5, 0x450(r31)
/* 801C2ED4 001BFE34  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801C2ED8 001BFE38  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C2EDC 001BFE3C  41 82 00 10 */	beq lbl_801C2EEC
/* 801C2EE0 001BFE40  38 00 00 03 */	li r0, 3
/* 801C2EE4 001BFE44  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801C2EE8 001BFE48  48 00 01 B4 */	b lbl_801C309C
lbl_801C2EEC:
/* 801C2EEC 001BFE4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2EF0 001BFE50  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C2EF4 001BFE54  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 801C2EF8 001BFE58  7D 89 03 A6 */	mtctr r12
/* 801C2EFC 001BFE5C  4E 80 04 21 */	bctrl
/* 801C2F00 001BFE60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C2F04 001BFE64  41 82 01 98 */	beq lbl_801C309C
/* 801C2F08 001BFE68  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C2F0C 001BFE6C  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801C2F10 001BFE70  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801C2F14 001BFE74  40 82 01 88 */	bne lbl_801C309C
/* 801C2F18 001BFE78  4B F7 79 A1 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 801C2F1C 001BFE7C  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 801C2F20 001BFE80  FF E0 08 90 */	fmr f31, f1
/* 801C2F24 001BFE84  C0 22 AA A4 */	lfs f1, lbl_805AC7C4@sda21(r2)
/* 801C2F28 001BFE88  38 81 00 0C */	addi r4, r1, 0xc
/* 801C2F2C 001BFE8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C2F30 001BFE90  38 6D 91 38 */	addi r3, r13, lbl_805A7CF8@sda21
/* 801C2F34 001BFE94  38 AD 91 3C */	addi r5, r13, lbl_805A7CFC@sda21
/* 801C2F38 001BFE98  C0 1F 07 C4 */	lfs f0, 0x7c4(r31)
/* 801C2F3C 001BFE9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801C2F40 001BFEA0  C0 1F 07 C8 */	lfs f0, 0x7c8(r31)
/* 801C2F44 001BFEA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801C2F48 001BFEA8  C0 1F 07 D8 */	lfs f0, 0x7d8(r31)
/* 801C2F4C 001BFEAC  EC 1F 00 24 */	fdivs f0, f31, f0
/* 801C2F50 001BFEB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C2F54 001BFEB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C2F58 001BFEB8  4B E4 93 5D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801C2F5C 001BFEBC  C0 23 00 00 */	lfs f1, 0(r3)
/* 801C2F60 001BFEC0  C0 02 AA D0 */	lfs f0, lbl_805AC7F0@sda21(r2)
/* 801C2F64 001BFEC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C2F68 001BFEC8  40 80 00 54 */	bge lbl_801C2FBC
/* 801C2F6C 001BFECC  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C2F70 001BFED0  C0 42 AA AC */	lfs f2, lbl_805AC7CC@sda21(r2)
/* 801C2F74 001BFED4  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C2F78 001BFED8  38 81 00 08 */	addi r4, r1, 8
/* 801C2F7C 001BFEDC  38 6D 91 40 */	addi r3, r13, lbl_805A7D00@sda21
/* 801C2F80 001BFEE0  38 AD 91 44 */	addi r5, r13, lbl_805A7D04@sda21
/* 801C2F84 001BFEE4  EC 02 00 7C */	fnmsubs f0, f2, f1, f0
/* 801C2F88 001BFEE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C2F8C 001BFEEC  4B E4 93 29 */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801C2F90 001BFEF0  C0 63 00 00 */	lfs f3, 0(r3)
/* 801C2F94 001BFEF4  C0 5F 07 C4 */	lfs f2, 0x7c4(r31)
/* 801C2F98 001BFEF8  C0 3F 07 C8 */	lfs f1, 0x7c8(r31)
/* 801C2F9C 001BFEFC  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 801C2FA0 001BFF00  EC 43 00 B2 */	fmuls f2, f3, f2
/* 801C2FA4 001BFF04  EC 23 00 72 */	fmuls f1, f3, f1
/* 801C2FA8 001BFF08  EC 03 00 32 */	fmuls f0, f3, f0
/* 801C2FAC 001BFF0C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C2FB0 001BFF10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C2FB4 001BFF14  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C2FB8 001BFF18  48 00 00 80 */	b lbl_801C3038
lbl_801C2FBC:
/* 801C2FBC 001BFF1C  C0 42 AA F4 */	lfs f2, lbl_805AC814@sda21(r2)
/* 801C2FC0 001BFF20  C0 3F 07 D8 */	lfs f1, 0x7d8(r31)
/* 801C2FC4 001BFF24  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C2FC8 001BFF28  ED 02 00 72 */	fmuls f8, f2, f1
/* 801C2FCC 001BFF2C  C0 C2 AA AC */	lfs f6, lbl_805AC7CC@sda21(r2)
/* 801C2FD0 001BFF30  C0 BF 07 C0 */	lfs f5, 0x7c0(r31)
/* 801C2FD4 001BFF34  C0 9F 07 C4 */	lfs f4, 0x7c4(r31)
/* 801C2FD8 001BFF38  EC E0 40 24 */	fdivs f7, f0, f8
/* 801C2FDC 001BFF3C  C0 7F 07 C8 */	lfs f3, 0x7c8(r31)
/* 801C2FE0 001BFF40  C0 5F 07 B8 */	lfs f2, 0x7b8(r31)
/* 801C2FE4 001BFF44  C0 3F 07 BC */	lfs f1, 0x7bc(r31)
/* 801C2FE8 001BFF48  C0 1F 07 B4 */	lfs f0, 0x7b4(r31)
/* 801C2FEC 001BFF4C  EC A6 01 72 */	fmuls f5, f6, f5
/* 801C2FF0 001BFF50  EC 86 01 32 */	fmuls f4, f6, f4
/* 801C2FF4 001BFF54  EC 66 00 F2 */	fmuls f3, f6, f3
/* 801C2FF8 001BFF58  EC 00 28 28 */	fsubs f0, f0, f5
/* 801C2FFC 001BFF5C  EC 42 20 28 */	fsubs f2, f2, f4
/* 801C3000 001BFF60  EC 21 18 28 */	fsubs f1, f1, f3
/* 801C3004 001BFF64  EC C8 F8 28 */	fsubs f6, f8, f31
/* 801C3008 001BFF68  EC 47 00 B2 */	fmuls f2, f7, f2
/* 801C300C 001BFF6C  EC 27 00 72 */	fmuls f1, f7, f1
/* 801C3010 001BFF70  EC 07 00 32 */	fmuls f0, f7, f0
/* 801C3014 001BFF74  EC 46 00 B2 */	fmuls f2, f6, f2
/* 801C3018 001BFF78  EC 26 00 72 */	fmuls f1, f6, f1
/* 801C301C 001BFF7C  EC 06 00 32 */	fmuls f0, f6, f0
/* 801C3020 001BFF80  EC 44 10 2A */	fadds f2, f4, f2
/* 801C3024 001BFF84  EC 23 08 2A */	fadds f1, f3, f1
/* 801C3028 001BFF88  EC 05 00 2A */	fadds f0, f5, f0
/* 801C302C 001BFF8C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C3030 001BFF90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801C3034 001BFF94  D0 21 00 18 */	stfs f1, 0x18(r1)
lbl_801C3038:
/* 801C3038 001BFF98  7F E3 FB 78 */	mr r3, r31
/* 801C303C 001BFF9C  38 81 00 10 */	addi r4, r1, 0x10
/* 801C3040 001BFFA0  4B FF E3 75 */	bl sub_801c13b4
/* 801C3044 001BFFA4  7F E3 FB 78 */	mr r3, r31
/* 801C3048 001BFFA8  4B FF E3 8D */	bl sub_801c13d4
/* 801C304C 001BFFAC  48 00 00 50 */	b lbl_801C309C
lbl_801C3050:
/* 801C3050 001BFFB0  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C3054 001BFFB4  38 A0 00 00 */	li r5, 0
/* 801C3058 001BFFB8  D0 3F 07 D8 */	stfs f1, 0x7d8(r31)
/* 801C305C 001BFFBC  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 801C3060 001BFFC0  50 A0 1F 38 */	rlwimi r0, r5, 3, 0x1c, 0x1c
/* 801C3064 001BFFC4  98 1F 08 40 */	stb r0, 0x840(r31)
/* 801C3068 001BFFC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C306C 001BFFCC  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 801C3070 001BFFD0  7D 89 03 A6 */	mtctr r12
/* 801C3074 001BFFD4  4E 80 04 21 */	bctrl
/* 801C3078 001BFFD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C307C 001BFFDC  41 82 00 18 */	beq lbl_801C3094
/* 801C3080 001BFFE0  C0 1F 07 DC */	lfs f0, 0x7dc(r31)
/* 801C3084 001BFFE4  7F E3 FB 78 */	mr r3, r31
/* 801C3088 001BFFE8  38 9F 07 B4 */	addi r4, r31, 0x7b4
/* 801C308C 001BFFEC  D0 1F 07 E0 */	stfs f0, 0x7e0(r31)
/* 801C3090 001BFFF0  4B FF E3 25 */	bl sub_801c13b4
lbl_801C3094:
/* 801C3094 001BFFF4  7F E3 FB 78 */	mr r3, r31
/* 801C3098 001BFFF8  4B FF E3 3D */	bl sub_801c13d4
lbl_801C309C:
/* 801C309C 001BFFFC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801C30A0 001C0000  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C30A4 001C0004  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801C30A8 001C0008  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801C30AC 001C000C  7C 08 03 A6 */	mtlr r0
/* 801C30B0 001C0010  38 21 00 80 */	addi r1, r1, 0x80
/* 801C30B4 001C0014  4E 80 00 20 */	blr

.global TelegraphAttack__12CMetroidBetaFR13CStateManager9EStateMsgf
TelegraphAttack__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C30B8 001C0018  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C30BC 001C001C  7C 08 02 A6 */	mflr r0
/* 801C30C0 001C0020  2C 05 00 01 */	cmpwi r5, 1
/* 801C30C4 001C0024  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C30C8 001C0028  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C30CC 001C002C  7C 7F 1B 78 */	mr r31, r3
/* 801C30D0 001C0030  41 82 00 5C */	beq lbl_801C312C
/* 801C30D4 001C0034  40 80 00 10 */	bge lbl_801C30E4
/* 801C30D8 001C0038  2C 05 00 00 */	cmpwi r5, 0
/* 801C30DC 001C003C  40 80 00 14 */	bge lbl_801C30F0
/* 801C30E0 001C0040  48 00 01 24 */	b lbl_801C3204
lbl_801C30E4:
/* 801C30E4 001C0044  2C 05 00 03 */	cmpwi r5, 3
/* 801C30E8 001C0048  40 80 01 1C */	bge lbl_801C3204
/* 801C30EC 001C004C  48 00 01 08 */	b lbl_801C31F4
lbl_801C30F0:
/* 801C30F0 001C0050  38 00 00 02 */	li r0, 2
/* 801C30F4 001C0054  38 60 00 00 */	li r3, 0
/* 801C30F8 001C0058  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801C30FC 001C005C  C0 1F 06 48 */	lfs f0, 0x648(r31)
/* 801C3100 001C0060  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 801C3104 001C0064  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 801C3108 001C0068  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801C310C 001C006C  98 1F 08 40 */	stb r0, 0x840(r31)
/* 801C3110 001C0070  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C3114 001C0074  38 63 00 04 */	addi r3, r3, 4
/* 801C3118 001C0078  4B F6 E3 91 */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801C311C 001C007C  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C3120 001C0080  38 80 00 03 */	li r4, 3
/* 801C3124 001C0084  4B F7 78 B5 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C3128 001C0088  48 00 00 DC */	b lbl_801C3204
lbl_801C312C:
/* 801C312C 001C008C  C0 5F 07 98 */	lfs f2, 0x798(r31)
/* 801C3130 001C0090  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C3134 001C0094  EC 22 08 28 */	fsubs f1, f2, f1
/* 801C3138 001C0098  D0 3F 07 98 */	stfs f1, 0x798(r31)
/* 801C313C 001C009C  C0 3F 07 98 */	lfs f1, 0x798(r31)
/* 801C3140 001C00A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C3144 001C00A4  40 81 00 A4 */	ble lbl_801C31E8
/* 801C3148 001C00A8  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C314C 001C00AC  38 61 00 14 */	addi r3, r1, 0x14
/* 801C3150 001C00B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801C3154 001C00B4  C0 24 00 50 */	lfs f1, 0x50(r4)
/* 801C3158 001C00B8  C0 64 00 60 */	lfs f3, 0x60(r4)
/* 801C315C 001C00BC  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 801C3160 001C00C0  EC 81 00 28 */	fsubs f4, f1, f0
/* 801C3164 001C00C4  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801C3168 001C00C8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801C316C 001C00CC  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3170 001C00D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C3174 001C00D4  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 801C3178 001C00D8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801C317C 001C00DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801C3180 001C00E0  48 15 15 79 */	bl CanBeNormalized__9CVector3fCFv
/* 801C3184 001C00E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3188 001C00E8  41 82 00 7C */	beq lbl_801C3204
/* 801C318C 001C00EC  38 61 00 08 */	addi r3, r1, 8
/* 801C3190 001C00F0  38 81 00 14 */	addi r4, r1, 0x14
/* 801C3194 001C00F4  48 15 16 BD */	bl AsNormalized__9CVector3fCFv
/* 801C3198 001C00F8  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C319C 001C00FC  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 801C31A0 001C0100  C0 61 00 08 */	lfs f3, 8(r1)
/* 801C31A4 001C0104  38 81 00 20 */	addi r4, r1, 0x20
/* 801C31A8 001C0108  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 801C31AC 001C010C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C31B0 001C0110  C0 83 00 08 */	lfs f4, 8(r3)
/* 801C31B4 001C0114  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801C31B8 001C0118  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C31BC 001C011C  D0 C1 00 20 */	stfs f6, 0x20(r1)
/* 801C31C0 001C0120  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 801C31C4 001C0124  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 801C31C8 001C0128  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801C31CC 001C012C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801C31D0 001C0130  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801C31D4 001C0134  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801C31D8 001C0138  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C31DC 001C013C  38 63 00 04 */	addi r3, r3, 4
/* 801C31E0 001C0140  4B F6 E5 39 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801C31E4 001C0144  48 00 00 20 */	b lbl_801C3204
lbl_801C31E8:
/* 801C31E8 001C0148  38 00 00 03 */	li r0, 3
/* 801C31EC 001C014C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 801C31F0 001C0150  48 00 00 14 */	b lbl_801C3204
lbl_801C31F4:
/* 801C31F4 001C0154  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 801C31F8 001C0158  38 60 00 00 */	li r3, 0
/* 801C31FC 001C015C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801C3200 001C0160  98 1F 08 40 */	stb r0, 0x840(r31)
lbl_801C3204:
/* 801C3204 001C0164  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C3208 001C0168  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C320C 001C016C  7C 08 03 A6 */	mtlr r0
/* 801C3210 001C0170  38 21 00 50 */	addi r1, r1, 0x50
/* 801C3214 001C0174  4E 80 00 20 */	blr

.global SelectTarget__12CMetroidBetaFR13CStateManager9EStateMsgf
SelectTarget__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C3218 001C0178  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C321C 001C017C  7C 08 02 A6 */	mflr r0
/* 801C3220 001C0180  2C 05 00 01 */	cmpwi r5, 1
/* 801C3224 001C0184  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C3228 001C0188  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C322C 001C018C  41 82 00 24 */	beq lbl_801C3250
/* 801C3230 001C0190  40 80 01 78 */	bge lbl_801C33A8
/* 801C3234 001C0194  2C 05 00 00 */	cmpwi r5, 0
/* 801C3238 001C0198  40 80 00 0C */	bge lbl_801C3244
/* 801C323C 001C019C  48 00 01 6C */	b lbl_801C33A8
/* 801C3240 001C01A0  48 00 01 68 */	b lbl_801C33A8
lbl_801C3244:
/* 801C3244 001C01A4  38 00 00 01 */	li r0, 1
/* 801C3248 001C01A8  90 03 05 68 */	stw r0, 0x568(r3)
/* 801C324C 001C01AC  48 00 01 5C */	b lbl_801C33A8
lbl_801C3250:
/* 801C3250 001C01B0  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801C3254 001C01B4  2C 00 00 02 */	cmpwi r0, 2
/* 801C3258 001C01B8  41 82 01 00 */	beq lbl_801C3358
/* 801C325C 001C01BC  40 80 01 4C */	bge lbl_801C33A8
/* 801C3260 001C01C0  2C 00 00 01 */	cmpwi r0, 1
/* 801C3264 001C01C4  40 80 00 08 */	bge lbl_801C326C
/* 801C3268 001C01C8  48 00 01 40 */	b lbl_801C33A8
lbl_801C326C:
/* 801C326C 001C01CC  81 43 04 50 */	lwz r10, 0x450(r3)
/* 801C3270 001C01D0  80 0A 02 B8 */	lwz r0, 0x2b8(r10)
/* 801C3274 001C01D4  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C3278 001C01D8  40 82 00 10 */	bne lbl_801C3288
/* 801C327C 001C01DC  38 00 00 02 */	li r0, 2
/* 801C3280 001C01E0  90 03 05 68 */	stw r0, 0x568(r3)
/* 801C3284 001C01E4  48 00 01 24 */	b lbl_801C33A8
lbl_801C3288:
/* 801C3288 001C01E8  3C C0 80 3E */	lis r6, lbl_803DAA68@ha
/* 801C328C 001C01EC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3290 001C01F0  38 A3 66 A0 */	addi r5, r3, skZero3f@l
/* 801C3294 001C01F4  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801C3298 001C01F8  38 60 00 00 */	li r3, 0
/* 801C329C 001C01FC  39 26 AA 68 */	addi r9, r6, lbl_803DAA68@l
/* 801C32A0 001C0200  50 64 F8 00 */	rlwimi r4, r3, 0x1f, 0, 0
/* 801C32A4 001C0204  C0 45 00 00 */	lfs f2, 0(r5)
/* 801C32A8 001C0208  C0 25 00 04 */	lfs f1, 4(r5)
/* 801C32AC 001C020C  3C E0 80 3E */	lis r7, lbl_803DA9F0@ha
/* 801C32B0 001C0210  C0 05 00 08 */	lfs f0, 8(r5)
/* 801C32B4 001C0214  7C 80 23 78 */	mr r0, r4
/* 801C32B8 001C0218  39 00 00 0E */	li r8, 0xe
/* 801C32BC 001C021C  38 C0 00 03 */	li r6, 3
/* 801C32C0 001C0220  38 A0 FF FF */	li r5, -1
/* 801C32C4 001C0224  3B EA 00 04 */	addi r31, r10, 4
/* 801C32C8 001C0228  91 21 00 08 */	stw r9, 8(r1)
/* 801C32CC 001C022C  38 E7 A9 F0 */	addi r7, r7, lbl_803DA9F0@l
/* 801C32D0 001C0230  50 60 F0 42 */	rlwimi r0, r3, 0x1e, 1, 1
/* 801C32D4 001C0234  7F E3 FB 78 */	mr r3, r31
/* 801C32D8 001C0238  90 81 00 24 */	stw r4, 0x24(r1)
/* 801C32DC 001C023C  38 80 00 0E */	li r4, 0xe
/* 801C32E0 001C0240  91 01 00 0C */	stw r8, 0xc(r1)
/* 801C32E4 001C0244  90 E1 00 08 */	stw r7, 8(r1)
/* 801C32E8 001C0248  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801C32EC 001C024C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C32F0 001C0250  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C32F4 001C0254  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801C32F8 001C0258  90 A1 00 20 */	stw r5, 0x20(r1)
/* 801C32FC 001C025C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C3300 001C0260  4B F6 E1 39 */	bl DeliverCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801C3304 001C0264  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C3308 001C0268  3C 60 80 3E */	lis r3, lbl_803DA9F0@ha
/* 801C330C 001C026C  38 83 A9 F0 */	addi r4, r3, lbl_803DA9F0@l
/* 801C3310 001C0270  3C 60 80 3E */	lis r3, lbl_803DAA68@ha
/* 801C3314 001C0274  90 1F 01 90 */	stw r0, 0x190(r31)
/* 801C3318 001C0278  38 03 AA 68 */	addi r0, r3, lbl_803DAA68@l
/* 801C331C 001C027C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801C3320 001C0280  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801C3324 001C0284  90 BF 01 94 */	stw r5, 0x194(r31)
/* 801C3328 001C0288  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 801C332C 001C028C  90 7F 01 98 */	stw r3, 0x198(r31)
/* 801C3330 001C0290  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 801C3334 001C0294  90 BF 01 9C */	stw r5, 0x19c(r31)
/* 801C3338 001C0298  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 801C333C 001C029C  90 7F 01 A0 */	stw r3, 0x1a0(r31)
/* 801C3340 001C02A0  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801C3344 001C02A4  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 801C3348 001C02A8  90 81 00 08 */	stw r4, 8(r1)
/* 801C334C 001C02AC  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 801C3350 001C02B0  90 01 00 08 */	stw r0, 8(r1)
/* 801C3354 001C02B4  48 00 00 54 */	b lbl_801C33A8
lbl_801C3358:
/* 801C3358 001C02B8  80 A3 04 50 */	lwz r5, 0x450(r3)
/* 801C335C 001C02BC  80 05 02 B8 */	lwz r0, 0x2b8(r5)
/* 801C3360 001C02C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 801C3364 001C02C4  41 82 00 10 */	beq lbl_801C3374
/* 801C3368 001C02C8  38 00 00 03 */	li r0, 3
/* 801C336C 001C02CC  90 03 05 68 */	stw r0, 0x568(r3)
/* 801C3370 001C02D0  48 00 00 38 */	b lbl_801C33A8
lbl_801C3374:
/* 801C3374 001C02D4  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C3378 001C02D8  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801C337C 001C02DC  C0 24 00 40 */	lfs f1, 0x40(r4)
/* 801C3380 001C02E0  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801C3384 001C02E4  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801C3388 001C02E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801C338C 001C02EC  C0 44 00 60 */	lfs f2, 0x60(r4)
/* 801C3390 001C02F0  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801C3394 001C02F4  EC 64 18 28 */	fsubs f3, f4, f3
/* 801C3398 001C02F8  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 801C339C 001C02FC  EC 02 08 28 */	fsubs f0, f2, f1
/* 801C33A0 001C0300  D0 65 00 20 */	stfs f3, 0x20(r5)
/* 801C33A4 001C0304  D0 05 00 24 */	stfs f0, 0x24(r5)
lbl_801C33A8:
/* 801C33A8 001C0308  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C33AC 001C030C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C33B0 001C0310  7C 08 03 A6 */	mtlr r0
/* 801C33B4 001C0314  38 21 00 30 */	addi r1, r1, 0x30
/* 801C33B8 001C0318  4E 80 00 20 */	blr

.global TargetPatrol__12CMetroidBetaFR13CStateManager9EStateMsgf
TargetPatrol__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C33BC 001C031C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C33C0 001C0320  7C 08 02 A6 */	mflr r0
/* 801C33C4 001C0324  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C33C8 001C0328  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 801C33CC 001C032C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, qr0
/* 801C33D0 001C0330  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801C33D4 001C0334  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801C33D8 001C0338  93 A1 00 34 */	stw r29, 0x34(r1)
/* 801C33DC 001C033C  7C BF 2B 78 */	mr r31, r5
/* 801C33E0 001C0340  FF E0 08 90 */	fmr f31, f1
/* 801C33E4 001C0344  2C 1F 00 01 */	cmpwi r31, 1
/* 801C33E8 001C0348  7C 7D 1B 78 */	mr r29, r3
/* 801C33EC 001C034C  7C 9E 23 78 */	mr r30, r4
/* 801C33F0 001C0350  41 82 00 C0 */	beq lbl_801C34B0
/* 801C33F4 001C0354  40 80 01 80 */	bge lbl_801C3574
/* 801C33F8 001C0358  2C 1F 00 00 */	cmpwi r31, 0
/* 801C33FC 001C035C  40 80 00 08 */	bge lbl_801C3404
/* 801C3400 001C0360  48 00 01 74 */	b lbl_801C3574
lbl_801C3404:
/* 801C3404 001C0364  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C3408 001C0368  38 80 00 01 */	li r4, 1
/* 801C340C 001C036C  4B F7 75 CD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C3410 001C0370  7F A3 EB 78 */	mr r3, r29
/* 801C3414 001C0374  7F C4 F3 78 */	mr r4, r30
/* 801C3418 001C0378  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C341C 001C037C  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C3420 001C0380  81 8C 01 C0 */	lwz r12, 0x1c0(r12)
/* 801C3424 001C0384  7D 89 03 A6 */	mtctr r12
/* 801C3428 001C0388  4E 80 04 21 */	bctrl
/* 801C342C 001C038C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3430 001C0390  41 82 00 28 */	beq lbl_801C3458
/* 801C3434 001C0394  FC 20 F8 90 */	fmr f1, f31
/* 801C3438 001C0398  7F A3 EB 78 */	mr r3, r29
/* 801C343C 001C039C  7F C4 F3 78 */	mr r4, r30
/* 801C3440 001C03A0  7F E5 FB 78 */	mr r5, r31
/* 801C3444 001C03A4  48 03 3A 31 */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801C3448 001C03A8  7F A3 EB 78 */	mr r3, r29
/* 801C344C 001C03AC  7F C4 F3 78 */	mr r4, r30
/* 801C3450 001C03B0  48 03 1E 41 */	bl UpdateDest__10CPatternedFR13CStateManager
/* 801C3454 001C03B4  48 00 00 10 */	b lbl_801C3464
lbl_801C3458:
/* 801C3458 001C03B8  7F A3 EB 78 */	mr r3, r29
/* 801C345C 001C03BC  38 9D 03 A0 */	addi r4, r29, 0x3a0
/* 801C3460 001C03C0  4B EB 96 FD */	bl SetDestPos__10CPatternedFRC9CVector3f
lbl_801C3464:
/* 801C3464 001C03C4  C0 1D 02 E0 */	lfs f0, 0x2e0(r29)
/* 801C3468 001C03C8  7F A3 EB 78 */	mr r3, r29
/* 801C346C 001C03CC  D0 1D 07 A8 */	stfs f0, 0x7a8(r29)
/* 801C3470 001C03D0  C0 1D 02 E4 */	lfs f0, 0x2e4(r29)
/* 801C3474 001C03D4  D0 1D 07 AC */	stfs f0, 0x7ac(r29)
/* 801C3478 001C03D8  C0 1D 02 E8 */	lfs f0, 0x2e8(r29)
/* 801C347C 001C03DC  D0 1D 07 B0 */	stfs f0, 0x7b0(r29)
/* 801C3480 001C03E0  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C3484 001C03E4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801C3488 001C03E8  7D 89 03 A6 */	mtctr r12
/* 801C348C 001C03EC  4E 80 04 21 */	bctrl
/* 801C3490 001C03F0  28 03 00 00 */	cmplwi r3, 0
/* 801C3494 001C03F4  41 82 00 E0 */	beq lbl_801C3574
/* 801C3498 001C03F8  FC 20 F8 90 */	fmr f1, f31
/* 801C349C 001C03FC  7F A3 EB 78 */	mr r3, r29
/* 801C34A0 001C0400  7F C4 F3 78 */	mr r4, r30
/* 801C34A4 001C0404  7F E5 FB 78 */	mr r5, r31
/* 801C34A8 001C0408  48 03 32 25 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801C34AC 001C040C  48 00 00 C8 */	b lbl_801C3574
lbl_801C34B0:
/* 801C34B0 001C0410  81 83 00 00 */	lwz r12, 0(r3)
/* 801C34B4 001C0414  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801C34B8 001C0418  7D 89 03 A6 */	mtctr r12
/* 801C34BC 001C041C  4E 80 04 21 */	bctrl
/* 801C34C0 001C0420  28 03 00 00 */	cmplwi r3, 0
/* 801C34C4 001C0424  41 82 00 40 */	beq lbl_801C3504
/* 801C34C8 001C0428  7F A3 EB 78 */	mr r3, r29
/* 801C34CC 001C042C  7F C4 F3 78 */	mr r4, r30
/* 801C34D0 001C0430  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C34D4 001C0434  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C34D8 001C0438  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801C34DC 001C043C  7D 89 03 A6 */	mtctr r12
/* 801C34E0 001C0440  4E 80 04 21 */	bctrl
/* 801C34E4 001C0444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C34E8 001C0448  40 82 00 1C */	bne lbl_801C3504
/* 801C34EC 001C044C  FC 20 F8 90 */	fmr f1, f31
/* 801C34F0 001C0450  7F A3 EB 78 */	mr r3, r29
/* 801C34F4 001C0454  7F C4 F3 78 */	mr r4, r30
/* 801C34F8 001C0458  7F E5 FB 78 */	mr r5, r31
/* 801C34FC 001C045C  48 03 31 D1 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801C3500 001C0460  48 00 00 68 */	b lbl_801C3568
lbl_801C3504:
/* 801C3504 001C0464  C0 22 AA F8 */	lfs f1, lbl_805AC818@sda21(r2)
/* 801C3508 001C0468  7F A5 EB 78 */	mr r5, r29
/* 801C350C 001C046C  38 61 00 08 */	addi r3, r1, 8
/* 801C3510 001C0470  38 9D 04 5C */	addi r4, r29, 0x45c
/* 801C3514 001C0474  38 DD 07 A8 */	addi r6, r29, 0x7a8
/* 801C3518 001C0478  4B F7 B6 05 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801C351C 001C047C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3520 001C0480  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C3524 001C0484  C0 C1 00 08 */	lfs f6, 8(r1)
/* 801C3528 001C0488  38 81 00 14 */	addi r4, r1, 0x14
/* 801C352C 001C048C  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 801C3530 001C0490  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 801C3534 001C0494  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C3538 001C0498  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C353C 001C049C  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C3540 001C04A0  D0 C1 00 14 */	stfs f6, 0x14(r1)
/* 801C3544 001C04A4  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 801C3548 001C04A8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 801C354C 001C04AC  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 801C3550 001C04B0  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801C3554 001C04B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801C3558 001C04B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801C355C 001C04BC  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C3560 001C04C0  38 63 00 04 */	addi r3, r3, 4
/* 801C3564 001C04C4  4B F6 E1 B5 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C3568:
/* 801C3568 001C04C8  7F A3 EB 78 */	mr r3, r29
/* 801C356C 001C04CC  7F C4 F3 78 */	mr r4, r30
/* 801C3570 001C04D0  4B FF DB A1 */	bl sub_801c1110
lbl_801C3574:
/* 801C3574 001C04D4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, qr0
/* 801C3578 001C04D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C357C 001C04DC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 801C3580 001C04E0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801C3584 001C04E4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801C3588 001C04E8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 801C358C 001C04EC  7C 08 03 A6 */	mtlr r0
/* 801C3590 001C04F0  38 21 00 50 */	addi r1, r1, 0x50
/* 801C3594 001C04F4  4E 80 00 20 */	blr

.global Patrol__12CMetroidBetaFR13CStateManager9EStateMsgf
Patrol__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C3598 001C04F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C359C 001C04FC  7C 08 02 A6 */	mflr r0
/* 801C35A0 001C0500  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C35A4 001C0504  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801C35A8 001C0508  FF E0 08 90 */	fmr f31, f1
/* 801C35AC 001C050C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801C35B0 001C0510  7C BF 2B 79 */	or. r31, r5, r5
/* 801C35B4 001C0514  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801C35B8 001C0518  7C 9E 23 78 */	mr r30, r4
/* 801C35BC 001C051C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801C35C0 001C0520  7C 7D 1B 78 */	mr r29, r3
/* 801C35C4 001C0524  41 82 00 08 */	beq lbl_801C35CC
/* 801C35C8 001C0528  48 00 00 20 */	b lbl_801C35E8
lbl_801C35CC:
/* 801C35CC 001C052C  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C35D0 001C0530  38 80 00 01 */	li r4, 1
/* 801C35D4 001C0534  4B F7 74 05 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C35D8 001C0538  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C35DC 001C053C  38 60 00 00 */	li r3, 0
/* 801C35E0 001C0540  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801C35E4 001C0544  98 1D 08 40 */	stb r0, 0x840(r29)
lbl_801C35E8:
/* 801C35E8 001C0548  FC 20 F8 90 */	fmr f1, f31
/* 801C35EC 001C054C  7F A3 EB 78 */	mr r3, r29
/* 801C35F0 001C0550  7F C4 F3 78 */	mr r4, r30
/* 801C35F4 001C0554  7F E5 FB 78 */	mr r5, r31
/* 801C35F8 001C0558  48 03 38 7D */	bl Patrol__10CPatternedFR13CStateManager9EStateMsgf
/* 801C35FC 001C055C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C3600 001C0560  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801C3604 001C0564  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801C3608 001C0568  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801C360C 001C056C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801C3610 001C0570  7C 08 03 A6 */	mtlr r0
/* 801C3614 001C0574  38 21 00 20 */	addi r1, r1, 0x20
/* 801C3618 001C0578  4E 80 00 20 */	blr

.global SpecialAttack__12CMetroidBetaFR13CStateManager9EStateMsgf
SpecialAttack__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C361C 001C057C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C3620 001C0580  7C 08 02 A6 */	mflr r0
/* 801C3624 001C0584  2C 05 00 01 */	cmpwi r5, 1
/* 801C3628 001C0588  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C362C 001C058C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801C3630 001C0590  7C 9F 23 78 */	mr r31, r4
/* 801C3634 001C0594  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801C3638 001C0598  7C 7E 1B 78 */	mr r30, r3
/* 801C363C 001C059C  41 82 00 84 */	beq lbl_801C36C0
/* 801C3640 001C05A0  40 80 00 10 */	bge lbl_801C3650
/* 801C3644 001C05A4  2C 05 00 00 */	cmpwi r5, 0
/* 801C3648 001C05A8  40 80 00 14 */	bge lbl_801C365C
/* 801C364C 001C05AC  48 00 02 48 */	b lbl_801C3894
lbl_801C3650:
/* 801C3650 001C05B0  2C 05 00 03 */	cmpwi r5, 3
/* 801C3654 001C05B4  40 80 02 40 */	bge lbl_801C3894
/* 801C3658 001C05B8  48 00 01 B0 */	b lbl_801C3808
lbl_801C365C:
/* 801C365C 001C05BC  38 00 00 02 */	li r0, 2
/* 801C3660 001C05C0  38 A0 00 01 */	li r5, 1
/* 801C3664 001C05C4  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C3668 001C05C8  38 60 00 00 */	li r3, 0
/* 801C366C 001C05CC  38 80 00 0A */	li r4, 0xa
/* 801C3670 001C05D0  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3674 001C05D4  50 A0 0F BC */	rlwimi r0, r5, 1, 0x1e, 0x1e
/* 801C3678 001C05D8  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C367C 001C05DC  54 05 FF FE */	rlwinm r5, r0, 0x1f, 0x1f, 0x1f
/* 801C3680 001C05E0  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3684 001C05E4  50 A0 17 7A */	rlwimi r0, r5, 2, 0x1d, 0x1d
/* 801C3688 001C05E8  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C368C 001C05EC  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3690 001C05F0  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801C3694 001C05F4  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3698 001C05F8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C369C 001C05FC  4B F7 73 3D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C36A0 001C0600  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C36A4 001C0604  3C 60 80 57 */	lis r3, lbl_80572048@ha
/* 801C36A8 001C0608  38 A3 20 48 */	addi r5, r3, lbl_80572048@l
/* 801C36AC 001C060C  7F E4 FB 78 */	mr r4, r31
/* 801C36B0 001C0610  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 801C36B4 001C0614  7F C3 F3 78 */	mr r3, r30
/* 801C36B8 001C0618  4B FF E2 05 */	bl sub_801c18bc
/* 801C36BC 001C061C  48 00 01 D8 */	b lbl_801C3894
lbl_801C36C0:
/* 801C36C0 001C0620  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 801C36C4 001C0624  2C 00 00 02 */	cmpwi r0, 2
/* 801C36C8 001C0628  41 82 00 08 */	beq lbl_801C36D0
/* 801C36CC 001C062C  48 00 01 C8 */	b lbl_801C3894
lbl_801C36D0:
/* 801C36D0 001C0630  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 801C36D4 001C0634  EC 00 08 2A */	fadds f0, f0, f1
/* 801C36D8 001C0638  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 801C36DC 001C063C  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 801C36E0 001C0640  C0 1E 06 4C */	lfs f0, 0x64c(r30)
/* 801C36E4 001C0644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C36E8 001C0648  40 80 01 14 */	bge lbl_801C37FC
/* 801C36EC 001C064C  88 7E 08 40 */	lbz r3, 0x840(r30)
/* 801C36F0 001C0650  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 801C36F4 001C0654  41 82 00 0C */	beq lbl_801C3700
/* 801C36F8 001C0658  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801C36FC 001C065C  41 82 00 10 */	beq lbl_801C370C
lbl_801C3700:
/* 801C3700 001C0660  38 00 00 03 */	li r0, 3
/* 801C3704 001C0664  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C3708 001C0668  48 00 01 8C */	b lbl_801C3894
lbl_801C370C:
/* 801C370C 001C066C  80 9F 08 4C */	lwz r4, 0x84c(r31)
/* 801C3710 001C0670  7F E5 FB 78 */	mr r5, r31
/* 801C3714 001C0674  38 61 00 20 */	addi r3, r1, 0x20
/* 801C3718 001C0678  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C371C 001C067C  81 84 00 00 */	lwz r12, 0(r4)
/* 801C3720 001C0680  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801C3724 001C0684  7D 89 03 A6 */	mtctr r12
/* 801C3728 001C0688  4E 80 04 21 */	bctrl
/* 801C372C 001C068C  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801C3730 001C0690  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801C3734 001C0694  C0 C1 00 28 */	lfs f6, 0x28(r1)
/* 801C3738 001C0698  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801C373C 001C069C  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C3740 001C06A0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801C3744 001C06A4  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 801C3748 001C06A8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801C374C 001C06AC  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 801C3750 001C06B0  C0 BE 00 60 */	lfs f5, 0x60(r30)
/* 801C3754 001C06B4  EC 22 08 28 */	fsubs f1, f2, f1
/* 801C3758 001C06B8  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 801C375C 001C06BC  EC 64 18 28 */	fsubs f3, f4, f3
/* 801C3760 001C06C0  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 801C3764 001C06C4  EC A6 28 28 */	fsubs f5, f6, f5
/* 801C3768 001C06C8  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C376C 001C06CC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801C3770 001C06D0  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 801C3774 001C06D4  EC 22 09 7A */	fmadds f1, f2, f5, f1
/* 801C3778 001C06D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C377C 001C06DC  40 81 00 74 */	ble lbl_801C37F0
/* 801C3780 001C06E0  7F C5 F3 78 */	mr r5, r30
/* 801C3784 001C06E4  38 61 00 14 */	addi r3, r1, 0x14
/* 801C3788 001C06E8  38 9E 04 5C */	addi r4, r30, 0x45c
/* 801C378C 001C06EC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801C3790 001C06F0  4B F7 B4 91 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 801C3794 001C06F4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3798 001C06F8  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C379C 001C06FC  C0 C1 00 14 */	lfs f6, 0x14(r1)
/* 801C37A0 001C0700  38 81 00 38 */	addi r4, r1, 0x38
/* 801C37A4 001C0704  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 801C37A8 001C0708  C0 81 00 1C */	lfs f4, 0x1c(r1)
/* 801C37AC 001C070C  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C37B0 001C0710  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C37B4 001C0714  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C37B8 001C0718  D0 C1 00 38 */	stfs f6, 0x38(r1)
/* 801C37BC 001C071C  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801C37C0 001C0720  D0 81 00 40 */	stfs f4, 0x40(r1)
/* 801C37C4 001C0724  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801C37C8 001C0728  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801C37CC 001C072C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801C37D0 001C0730  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801C37D4 001C0734  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C37D8 001C0738  38 63 00 04 */	addi r3, r3, 4
/* 801C37DC 001C073C  4B F6 DF 3D */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801C37E0 001C0740  7F C3 F3 78 */	mr r3, r30
/* 801C37E4 001C0744  7F E4 FB 78 */	mr r4, r31
/* 801C37E8 001C0748  4B FF D9 29 */	bl sub_801c1110
/* 801C37EC 001C074C  48 00 00 A8 */	b lbl_801C3894
lbl_801C37F0:
/* 801C37F0 001C0750  38 00 00 03 */	li r0, 3
/* 801C37F4 001C0754  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C37F8 001C0758  48 00 00 9C */	b lbl_801C3894
lbl_801C37FC:
/* 801C37FC 001C075C  38 00 00 03 */	li r0, 3
/* 801C3800 001C0760  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C3804 001C0764  48 00 00 90 */	b lbl_801C3894
lbl_801C3808:
/* 801C3808 001C0768  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801C380C 001C076C  48 14 EC D1 */	bl Float__9CRandom16Fv
/* 801C3810 001C0770  C0 7E 03 08 */	lfs f3, 0x308(r30)
/* 801C3814 001C0774  38 60 00 00 */	li r3, 0
/* 801C3818 001C0778  C0 5E 03 04 */	lfs f2, 0x304(r30)
/* 801C381C 001C077C  38 80 00 02 */	li r4, 2
/* 801C3820 001C0780  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C3824 001C0784  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 801C3828 001C0788  D0 3E 07 94 */	stfs f1, 0x794(r30)
/* 801C382C 001C078C  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3830 001C0790  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801C3834 001C0794  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3838 001C0798  54 03 FF FE */	rlwinm r3, r0, 0x1f, 0x1f, 0x1f
/* 801C383C 001C079C  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3840 001C07A0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801C3844 001C07A4  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3848 001C07A8  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 801C384C 001C07AC  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C3850 001C07B0  4B F7 71 89 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C3854 001C07B4  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C3858 001C07B8  7F C3 F3 78 */	mr r3, r30
/* 801C385C 001C07BC  38 A4 66 A0 */	addi r5, r4, skZero3f@l
/* 801C3860 001C07C0  7F E4 FB 78 */	mr r4, r31
/* 801C3864 001C07C4  4B FF E0 59 */	bl sub_801c18bc
/* 801C3868 001C07C8  A1 1E 00 08 */	lhz r8, 8(r30)
/* 801C386C 001C07CC  7F E4 FB 78 */	mr r4, r31
/* 801C3870 001C07D0  38 A1 00 10 */	addi r5, r1, 0x10
/* 801C3874 001C07D4  38 C1 00 0C */	addi r6, r1, 0xc
/* 801C3878 001C07D8  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801C387C 001C07DC  38 60 00 00 */	li r3, 0
/* 801C3880 001C07E0  38 E0 00 01 */	li r7, 1
/* 801C3884 001C07E4  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C3888 001C07E8  B1 01 00 08 */	sth r8, 8(r1)
/* 801C388C 001C07EC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C3890 001C07F0  48 07 66 41 */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_801C3894:
/* 801C3894 001C07F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C3898 001C07F8  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801C389C 001C07FC  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801C38A0 001C0800  7C 08 03 A6 */	mtlr r0
/* 801C38A4 001C0804  38 21 00 60 */	addi r1, r1, 0x60
/* 801C38A8 001C0808  4E 80 00 20 */	blr

.global Attack__12CMetroidBetaFR13CStateManager9EStateMsgf
Attack__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C38AC 001C080C  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 801C38B0 001C0810  7C 08 02 A6 */	mflr r0
/* 801C38B4 001C0814  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 801C38B8 001C0818  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 801C38BC 001C081C  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 801C38C0 001C0820  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 801C38C4 001C0824  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 801C38C8 001C0828  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 801C38CC 001C082C  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 801C38D0 001C0830  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 801C38D4 001C0834  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 801C38D8 001C0838  93 E1 01 6C */	stw r31, 0x16c(r1)
/* 801C38DC 001C083C  93 C1 01 68 */	stw r30, 0x168(r1)
/* 801C38E0 001C0840  93 A1 01 64 */	stw r29, 0x164(r1)
/* 801C38E4 001C0844  7C 9F 23 78 */	mr r31, r4
/* 801C38E8 001C0848  2C 05 00 01 */	cmpwi r5, 1
/* 801C38EC 001C084C  83 A4 08 4C */	lwz r29, 0x84c(r4)
/* 801C38F0 001C0850  7C 7E 1B 78 */	mr r30, r3
/* 801C38F4 001C0854  41 82 00 B4 */	beq lbl_801C39A8
/* 801C38F8 001C0858  40 80 00 10 */	bge lbl_801C3908
/* 801C38FC 001C085C  2C 05 00 00 */	cmpwi r5, 0
/* 801C3900 001C0860  40 80 00 14 */	bge lbl_801C3914
/* 801C3904 001C0864  48 00 04 24 */	b lbl_801C3D28
lbl_801C3908:
/* 801C3908 001C0868  2C 05 00 03 */	cmpwi r5, 3
/* 801C390C 001C086C  40 80 04 1C */	bge lbl_801C3D28
/* 801C3910 001C0870  48 00 03 18 */	b lbl_801C3C28
lbl_801C3914:
/* 801C3914 001C0874  38 00 00 02 */	li r0, 2
/* 801C3918 001C0878  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C391C 001C087C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C3920 001C0880  38 60 00 01 */	li r3, 1
/* 801C3924 001C0884  38 80 00 06 */	li r4, 6
/* 801C3928 001C0888  D0 1E 07 9C */	stfs f0, 0x79c(r30)
/* 801C392C 001C088C  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3930 001C0890  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801C3934 001C0894  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3938 001C0898  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C393C 001C089C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C3940 001C08A0  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3944 001C08A4  D0 1E 08 3C */	stfs f0, 0x83c(r30)
/* 801C3948 001C08A8  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C394C 001C08AC  4B F7 70 8D */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C3950 001C08B0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C3954 001C08B4  38 7D 02 74 */	addi r3, r29, 0x274
/* 801C3958 001C08B8  C0 22 AA A4 */	lfs f1, lbl_805AC7C4@sda21(r2)
/* 801C395C 001C08BC  38 81 00 30 */	addi r4, r1, 0x30
/* 801C3960 001C08C0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801C3964 001C08C4  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801C3968 001C08C8  4B FF 0F 2D */	bl sub_801b4894
/* 801C396C 001C08CC  80 1D 02 F8 */	lwz r0, 0x2f8(r29)
/* 801C3970 001C08D0  2C 00 00 01 */	cmpwi r0, 1
/* 801C3974 001C08D4  41 82 03 B4 */	beq lbl_801C3D28
/* 801C3978 001C08D8  7F A3 EB 78 */	mr r3, r29
/* 801C397C 001C08DC  7F E5 FB 78 */	mr r5, r31
/* 801C3980 001C08E0  38 80 00 04 */	li r4, 4
/* 801C3984 001C08E4  4B FB 7B 11 */	bl SetOrbitState__7CPlayerFQ27CPlayer17EPlayerOrbitStateR13CStateManager
/* 801C3988 001C08E8  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C398C 001C08EC  7F A3 EB 78 */	mr r3, r29
/* 801C3990 001C08F0  7F E5 FB 78 */	mr r5, r31
/* 801C3994 001C08F4  38 81 00 28 */	addi r4, r1, 0x28
/* 801C3998 001C08F8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801C399C 001C08FC  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801C39A0 001C0900  4B FB 7C 4D */	bl SetOrbitTargetId__7CPlayerF9TUniqueIdR13CStateManager
/* 801C39A4 001C0904  48 00 03 84 */	b lbl_801C3D28
lbl_801C39A8:
/* 801C39A8 001C0908  4B FF EC F1 */	bl sub_801c2698
/* 801C39AC 001C090C  7F C4 F3 78 */	mr r4, r30
/* 801C39B0 001C0910  7F E5 FB 78 */	mr r5, r31
/* 801C39B4 001C0914  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801C39B8 001C0918  4B FF DC 21 */	bl sub_801c15d8
/* 801C39BC 001C091C  C3 A1 00 C0 */	lfs f29, 0xc0(r1)
/* 801C39C0 001C0920  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801C39C4 001C0924  C3 E1 00 C4 */	lfs f31, 0xc4(r1)
/* 801C39C8 001C0928  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801C39CC 001C092C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801C39D0 001C0930  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801C39D4 001C0934  EC A1 F8 28 */	fsubs f5, f1, f31
/* 801C39D8 001C0938  C3 C1 00 C8 */	lfs f30, 0xc8(r1)
/* 801C39DC 001C093C  C0 62 AA 98 */	lfs f3, lbl_805AC7B8@sda21(r2)
/* 801C39E0 001C0940  EC 20 00 32 */	fmuls f1, f0, f0
/* 801C39E4 001C0944  EC 82 F0 28 */	fsubs f4, f2, f30
/* 801C39E8 001C0948  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 801C39EC 001C094C  EC 05 01 72 */	fmuls f0, f5, f5
/* 801C39F0 001C0950  D0 A1 01 08 */	stfs f5, 0x108(r1)
/* 801C39F4 001C0954  EC 43 00 F2 */	fmuls f2, f3, f3
/* 801C39F8 001C0958  D0 81 01 0C */	stfs f4, 0x10c(r1)
/* 801C39FC 001C095C  EC 01 00 2A */	fadds f0, f1, f0
/* 801C3A00 001C0960  D0 61 01 0C */	stfs f3, 0x10c(r1)
/* 801C3A04 001C0964  C3 9E 02 FC */	lfs f28, 0x2fc(r30)
/* 801C3A08 001C0968  EC 22 00 2A */	fadds f1, f2, f0
/* 801C3A0C 001C096C  EC 1C 07 32 */	fmuls f0, f28, f28
/* 801C3A10 001C0970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C3A14 001C0974  4C 41 13 82 */	cror 2, 1, 2
/* 801C3A18 001C0978  40 82 00 A0 */	bne lbl_801C3AB8
/* 801C3A1C 001C097C  38 61 00 B4 */	addi r3, r1, 0xb4
/* 801C3A20 001C0980  38 81 01 04 */	addi r4, r1, 0x104
/* 801C3A24 001C0984  48 15 0E 2D */	bl AsNormalized__9CVector3fCFv
/* 801C3A28 001C0988  C0 41 00 B4 */	lfs f2, 0xb4(r1)
/* 801C3A2C 001C098C  7F C5 F3 78 */	mr r5, r30
/* 801C3A30 001C0990  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 801C3A34 001C0994  38 61 00 A8 */	addi r3, r1, 0xa8
/* 801C3A38 001C0998  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 801C3A3C 001C099C  EC 5C 00 B2 */	fmuls f2, f28, f2
/* 801C3A40 001C09A0  EC 3C 00 72 */	fmuls f1, f28, f1
/* 801C3A44 001C09A4  38 9E 04 5C */	addi r4, r30, 0x45c
/* 801C3A48 001C09A8  EC 1C 00 32 */	fmuls f0, f28, f0
/* 801C3A4C 001C09AC  38 C1 00 F8 */	addi r6, r1, 0xf8
/* 801C3A50 001C09B0  EC 5D 10 2A */	fadds f2, f29, f2
/* 801C3A54 001C09B4  EC 3F 08 2A */	fadds f1, f31, f1
/* 801C3A58 001C09B8  EC 1E 00 2A */	fadds f0, f30, f0
/* 801C3A5C 001C09BC  D0 41 00 F8 */	stfs f2, 0xf8(r1)
/* 801C3A60 001C09C0  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 801C3A64 001C09C4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 801C3A68 001C09C8  4B F7 B1 B9 */	bl Seek__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3f
/* 801C3A6C 001C09CC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3A70 001C09D0  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C3A74 001C09D4  C0 C1 00 A8 */	lfs f6, 0xa8(r1)
/* 801C3A78 001C09D8  38 81 01 10 */	addi r4, r1, 0x110
/* 801C3A7C 001C09DC  C0 A1 00 AC */	lfs f5, 0xac(r1)
/* 801C3A80 001C09E0  C0 81 00 B0 */	lfs f4, 0xb0(r1)
/* 801C3A84 001C09E4  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C3A88 001C09E8  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C3A8C 001C09EC  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C3A90 001C09F0  D0 C1 01 10 */	stfs f6, 0x110(r1)
/* 801C3A94 001C09F4  D0 A1 01 14 */	stfs f5, 0x114(r1)
/* 801C3A98 001C09F8  D0 81 01 18 */	stfs f4, 0x118(r1)
/* 801C3A9C 001C09FC  D0 61 01 1C */	stfs f3, 0x11c(r1)
/* 801C3AA0 001C0A00  D0 41 01 20 */	stfs f2, 0x120(r1)
/* 801C3AA4 001C0A04  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 801C3AA8 001C0A08  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 801C3AAC 001C0A0C  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C3AB0 001C0A10  38 63 00 04 */	addi r3, r3, 4
/* 801C3AB4 001C0A14  4B F6 DC 65 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C3AB8:
/* 801C3AB8 001C0A18  C0 41 01 0C */	lfs f2, 0x10c(r1)
/* 801C3ABC 001C0A1C  38 61 00 EC */	addi r3, r1, 0xec
/* 801C3AC0 001C0A20  C0 21 01 08 */	lfs f1, 0x108(r1)
/* 801C3AC4 001C0A24  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 801C3AC8 001C0A28  FC 40 10 50 */	fneg f2, f2
/* 801C3ACC 001C0A2C  FC 20 08 50 */	fneg f1, f1
/* 801C3AD0 001C0A30  FC 00 00 50 */	fneg f0, f0
/* 801C3AD4 001C0A34  D0 41 00 F4 */	stfs f2, 0xf4(r1)
/* 801C3AD8 001C0A38  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 801C3ADC 001C0A3C  D0 21 00 F0 */	stfs f1, 0xf0(r1)
/* 801C3AE0 001C0A40  48 15 0C 19 */	bl CanBeNormalized__9CVector3fCFv
/* 801C3AE4 001C0A44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3AE8 001C0A48  41 82 01 20 */	beq lbl_801C3C08
/* 801C3AEC 001C0A4C  38 61 00 9C */	addi r3, r1, 0x9c
/* 801C3AF0 001C0A50  38 81 00 EC */	addi r4, r1, 0xec
/* 801C3AF4 001C0A54  48 15 0D 5D */	bl AsNormalized__9CVector3fCFv
/* 801C3AF8 001C0A58  C0 DE 00 58 */	lfs f6, 0x58(r30)
/* 801C3AFC 001C0A5C  38 61 00 8C */	addi r3, r1, 0x8c
/* 801C3B00 001C0A60  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 801C3B04 001C0A64  38 81 00 80 */	addi r4, r1, 0x80
/* 801C3B08 001C0A68  C0 9E 00 38 */	lfs f4, 0x38(r30)
/* 801C3B0C 001C0A6C  38 A1 00 74 */	addi r5, r1, 0x74
/* 801C3B10 001C0A70  C0 62 AA D4 */	lfs f3, lbl_805AC7F4@sda21(r2)
/* 801C3B14 001C0A74  38 C1 00 34 */	addi r6, r1, 0x34
/* 801C3B18 001C0A78  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 801C3B1C 001C0A7C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 801C3B20 001C0A80  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 801C3B24 001C0A84  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801C3B28 001C0A88  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 801C3B2C 001C0A8C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 801C3B30 001C0A90  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801C3B34 001C0A94  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 801C3B38 001C0A98  D0 A1 00 84 */	stfs f5, 0x84(r1)
/* 801C3B3C 001C0A9C  D0 C1 00 88 */	stfs f6, 0x88(r1)
/* 801C3B40 001C0AA0  48 14 DB 55 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 801C3B44 001C0AA4  C0 61 00 8C */	lfs f3, 0x8c(r1)
/* 801C3B48 001C0AA8  38 61 00 54 */	addi r3, r1, 0x54
/* 801C3B4C 001C0AAC  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 801C3B50 001C0AB0  38 9E 00 34 */	addi r4, r30, 0x34
/* 801C3B54 001C0AB4  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 801C3B58 001C0AB8  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 801C3B5C 001C0ABC  D0 61 00 DC */	stfs f3, 0xdc(r1)
/* 801C3B60 001C0AC0  D0 41 00 E0 */	stfs f2, 0xe0(r1)
/* 801C3B64 001C0AC4  D0 21 00 E4 */	stfs f1, 0xe4(r1)
/* 801C3B68 001C0AC8  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 801C3B6C 001C0ACC  48 14 E5 BD */	bl FromMatrix__11CQuaternionFRC12CTransform4f
/* 801C3B70 001C0AD0  38 61 00 64 */	addi r3, r1, 0x64
/* 801C3B74 001C0AD4  38 81 00 54 */	addi r4, r1, 0x54
/* 801C3B78 001C0AD8  38 A1 00 DC */	addi r5, r1, 0xdc
/* 801C3B7C 001C0ADC  48 14 D6 25 */	bl __ml__11CQuaternionCFRC11CQuaternion
/* 801C3B80 001C0AE0  C0 61 00 64 */	lfs f3, 0x64(r1)
/* 801C3B84 001C0AE4  38 61 00 44 */	addi r3, r1, 0x44
/* 801C3B88 001C0AE8  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 801C3B8C 001C0AEC  38 81 00 CC */	addi r4, r1, 0xcc
/* 801C3B90 001C0AF0  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 801C3B94 001C0AF4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801C3B98 001C0AF8  D0 61 00 CC */	stfs f3, 0xcc(r1)
/* 801C3B9C 001C0AFC  D0 41 00 D0 */	stfs f2, 0xd0(r1)
/* 801C3BA0 001C0B00  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 801C3BA4 001C0B04  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 801C3BA8 001C0B08  48 14 D7 F5 */	bl BuildNormalized__11CQuaternionCFv
/* 801C3BAC 001C0B0C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801C3BB0 001C0B10  38 61 01 2C */	addi r3, r1, 0x12c
/* 801C3BB4 001C0B14  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801C3BB8 001C0B18  38 81 00 44 */	addi r4, r1, 0x44
/* 801C3BBC 001C0B1C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801C3BC0 001C0B20  38 A1 00 38 */	addi r5, r1, 0x38
/* 801C3BC4 001C0B24  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801C3BC8 001C0B28  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801C3BCC 001C0B2C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801C3BD0 001C0B30  48 14 E2 ED */	bl BuildTransform4f__11CQuaternionCFRC9CVector3f
/* 801C3BD4 001C0B34  38 7E 00 34 */	addi r3, r30, 0x34
/* 801C3BD8 001C0B38  38 81 01 2C */	addi r4, r1, 0x12c
/* 801C3BDC 001C0B3C  48 14 EF 65 */	bl __as__12CTransform4fFRC12CTransform4f
/* 801C3BE0 001C0B40  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801C3BE4 001C0B44  38 60 00 01 */	li r3, 1
/* 801C3BE8 001C0B48  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801C3BEC 001C0B4C  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 801C3BF0 001C0B50  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801C3BF4 001C0B54  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801C3BF8 001C0B58  98 1E 00 E4 */	stb r0, 0xe4(r30)
/* 801C3BFC 001C0B5C  88 1E 00 E4 */	lbz r0, 0xe4(r30)
/* 801C3C00 001C0B60  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801C3C04 001C0B64  98 1E 00 E4 */	stb r0, 0xe4(r30)
lbl_801C3C08:
/* 801C3C08 001C0B68  7F C3 F3 78 */	mr r3, r30
/* 801C3C0C 001C0B6C  7F E4 FB 78 */	mr r4, r31
/* 801C3C10 001C0B70  4B FF EC 75 */	bl sub_801c2884
/* 801C3C14 001C0B74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3C18 001C0B78  41 82 01 10 */	beq lbl_801C3D28
/* 801C3C1C 001C0B7C  38 00 00 03 */	li r0, 3
/* 801C3C20 001C0B80  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C3C24 001C0B84  48 00 01 04 */	b lbl_801C3D28
lbl_801C3C28:
/* 801C3C28 001C0B88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C3C2C 001C0B8C  38 80 00 02 */	li r4, 2
/* 801C3C30 001C0B90  4B F7 6D A9 */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C3C34 001C0B94  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 801C3C38 001C0B98  48 14 E8 A5 */	bl Float__9CRandom16Fv
/* 801C3C3C 001C0B9C  C0 7E 03 08 */	lfs f3, 0x308(r30)
/* 801C3C40 001C0BA0  38 A0 00 00 */	li r5, 0
/* 801C3C44 001C0BA4  C0 5E 03 04 */	lfs f2, 0x304(r30)
/* 801C3C48 001C0BA8  7F C3 F3 78 */	mr r3, r30
/* 801C3C4C 001C0BAC  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C3C50 001C0BB0  7F E4 FB 78 */	mr r4, r31
/* 801C3C54 001C0BB4  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 801C3C58 001C0BB8  D0 3E 07 94 */	stfs f1, 0x794(r30)
/* 801C3C5C 001C0BBC  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C3C60 001C0BC0  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801C3C64 001C0BC4  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C3C68 001C0BC8  D0 1E 08 3C */	stfs f0, 0x83c(r30)
/* 801C3C6C 001C0BCC  4B FF DB 25 */	bl sub_801c1790
/* 801C3C70 001C0BD0  7F C3 F3 78 */	mr r3, r30
/* 801C3C74 001C0BD4  4B FF D8 E9 */	bl sub_801c155c
/* 801C3C78 001C0BD8  C0 02 AA 9C */	lfs f0, lbl_805AC7BC@sda21(r2)
/* 801C3C7C 001C0BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C3C80 001C0BE0  40 80 00 14 */	bge lbl_801C3C94
/* 801C3C84 001C0BE4  C0 3E 07 9C */	lfs f1, 0x79c(r30)
/* 801C3C88 001C0BE8  7F C3 F3 78 */	mr r3, r30
/* 801C3C8C 001C0BEC  7F E4 FB 78 */	mr r4, r31
/* 801C3C90 001C0BF0  4B FF D8 25 */	bl sub_801c14b4
lbl_801C3C94:
/* 801C3C94 001C0BF4  83 BF 08 4C */	lwz r29, 0x84c(r31)
/* 801C3C98 001C0BF8  38 81 00 20 */	addi r4, r1, 0x20
/* 801C3C9C 001C0BFC  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C3CA0 001C0C00  38 7D 02 74 */	addi r3, r29, 0x274
/* 801C3CA4 001C0C04  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 801C3CA8 001C0C08  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801C3CAC 001C0C0C  4B FF 0A 19 */	bl RemoveEnergyDrainSource__18CPlayerEnergyDrainF9TUniqueId
/* 801C3CB0 001C0C10  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C3CB4 001C0C14  38 81 00 18 */	addi r4, r1, 0x18
/* 801C3CB8 001C0C18  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C3CBC 001C0C1C  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801C3CC0 001C0C20  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C3CC4 001C0C24  80 63 00 00 */	lwz r3, 0(r3)
/* 801C3CC8 001C0C28  38 63 01 88 */	addi r3, r3, 0x188
/* 801C3CCC 001C0C2C  4B FF CC E9 */	bl sub_801c09b4
/* 801C3CD0 001C0C30  80 1D 03 04 */	lwz r0, 0x304(r29)
/* 801C3CD4 001C0C34  2C 00 00 04 */	cmpwi r0, 4
/* 801C3CD8 001C0C38  40 82 00 24 */	bne lbl_801C3CFC
/* 801C3CDC 001C0C3C  A0 7D 03 10 */	lhz r3, 0x310(r29)
/* 801C3CE0 001C0C40  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C3CE4 001C0C44  7C 03 00 40 */	cmplw r3, r0
/* 801C3CE8 001C0C48  40 82 00 14 */	bne lbl_801C3CFC
/* 801C3CEC 001C0C4C  7F A3 EB 78 */	mr r3, r29
/* 801C3CF0 001C0C50  7F E5 FB 78 */	mr r5, r31
/* 801C3CF4 001C0C54  38 80 00 01 */	li r4, 1
/* 801C3CF8 001C0C58  4B FB 77 9D */	bl SetOrbitState__7CPlayerFQ27CPlayer17EPlayerOrbitStateR13CStateManager
lbl_801C3CFC:
/* 801C3CFC 001C0C5C  A1 1E 00 08 */	lhz r8, 8(r30)
/* 801C3D00 001C0C60  7F E4 FB 78 */	mr r4, r31
/* 801C3D04 001C0C64  38 A1 00 10 */	addi r5, r1, 0x10
/* 801C3D08 001C0C68  38 C1 00 0C */	addi r6, r1, 0xc
/* 801C3D0C 001C0C6C  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801C3D10 001C0C70  38 60 00 01 */	li r3, 1
/* 801C3D14 001C0C74  38 E0 00 01 */	li r7, 1
/* 801C3D18 001C0C78  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C3D1C 001C0C7C  B1 01 00 08 */	sth r8, 8(r1)
/* 801C3D20 001C0C80  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C3D24 001C0C84  48 07 61 AD */	bl ResetTeamAiRole__10CTeamAiMgrF11EAttackTypeR13CStateManager9TUniqueId9TUniqueIdb
lbl_801C3D28:
/* 801C3D28 001C0C88  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 801C3D2C 001C0C8C  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 801C3D30 001C0C90  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 801C3D34 001C0C94  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 801C3D38 001C0C98  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 801C3D3C 001C0C9C  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 801C3D40 001C0CA0  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 801C3D44 001C0CA4  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 801C3D48 001C0CA8  83 E1 01 6C */	lwz r31, 0x16c(r1)
/* 801C3D4C 001C0CAC  83 C1 01 68 */	lwz r30, 0x168(r1)
/* 801C3D50 001C0CB0  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 801C3D54 001C0CB4  83 A1 01 64 */	lwz r29, 0x164(r1)
/* 801C3D58 001C0CB8  7C 08 03 A6 */	mtlr r0
/* 801C3D5C 001C0CBC  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 801C3D60 001C0CC0  4E 80 00 20 */	blr

.global TurnAround__12CMetroidBetaFR13CStateManager9EStateMsgf
TurnAround__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C3D64 001C0CC4  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801C3D68 001C0CC8  7C 08 02 A6 */	mflr r0
/* 801C3D6C 001C0CCC  2C 05 00 01 */	cmpwi r5, 1
/* 801C3D70 001C0CD0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801C3D74 001C0CD4  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 801C3D78 001C0CD8  7C 7F 1B 78 */	mr r31, r3
/* 801C3D7C 001C0CDC  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 801C3D80 001C0CE0  7C 9E 23 78 */	mr r30, r4
/* 801C3D84 001C0CE4  41 82 00 08 */	beq lbl_801C3D8C
/* 801C3D88 001C0CE8  48 00 02 2C */	b lbl_801C3FB4
lbl_801C3D8C:
/* 801C3D8C 001C0CEC  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 801C3D90 001C0CF0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 801C3D94 001C0CF4  C0 45 00 50 */	lfs f2, 0x50(r5)
/* 801C3D98 001C0CF8  C0 65 00 60 */	lfs f3, 0x60(r5)
/* 801C3D9C 001C0CFC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 801C3DA0 001C0D00  EC 82 00 28 */	fsubs f4, f2, f0
/* 801C3DA4 001C0D04  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 801C3DA8 001C0D08  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801C3DAC 001C0D0C  EC 63 08 28 */	fsubs f3, f3, f1
/* 801C3DB0 001C0D10  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C3DB4 001C0D14  EC 02 00 28 */	fsubs f0, f2, f0
/* 801C3DB8 001C0D18  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 801C3DBC 001C0D1C  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 801C3DC0 001C0D20  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801C3DC4 001C0D24  81 83 00 00 */	lwz r12, 0(r3)
/* 801C3DC8 001C0D28  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801C3DCC 001C0D2C  7D 89 03 A6 */	mtctr r12
/* 801C3DD0 001C0D30  4E 80 04 21 */	bctrl
/* 801C3DD4 001C0D34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3DD8 001C0D38  41 82 00 70 */	beq lbl_801C3E48
/* 801C3DDC 001C0D3C  38 61 00 64 */	addi r3, r1, 0x64
/* 801C3DE0 001C0D40  48 15 09 19 */	bl CanBeNormalized__9CVector3fCFv
/* 801C3DE4 001C0D44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C3DE8 001C0D48  41 82 00 60 */	beq lbl_801C3E48
/* 801C3DEC 001C0D4C  38 61 00 4C */	addi r3, r1, 0x4c
/* 801C3DF0 001C0D50  38 81 00 64 */	addi r4, r1, 0x64
/* 801C3DF4 001C0D54  48 15 0A 5D */	bl AsNormalized__9CVector3fCFv
/* 801C3DF8 001C0D58  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3DFC 001C0D5C  C4 C3 66 A0 */	lfsu f6, skZero3f@l(r3)
/* 801C3E00 001C0D60  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 801C3E04 001C0D64  38 81 00 8C */	addi r4, r1, 0x8c
/* 801C3E08 001C0D68  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 801C3E0C 001C0D6C  C0 A3 00 04 */	lfs f5, 4(r3)
/* 801C3E10 001C0D70  C0 83 00 08 */	lfs f4, 8(r3)
/* 801C3E14 001C0D74  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 801C3E18 001C0D78  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C3E1C 001C0D7C  D0 C1 00 8C */	stfs f6, 0x8c(r1)
/* 801C3E20 001C0D80  D0 A1 00 90 */	stfs f5, 0x90(r1)
/* 801C3E24 001C0D84  D0 81 00 94 */	stfs f4, 0x94(r1)
/* 801C3E28 001C0D88  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 801C3E2C 001C0D8C  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 801C3E30 001C0D90  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 801C3E34 001C0D94  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 801C3E38 001C0D98  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C3E3C 001C0D9C  38 63 00 04 */	addi r3, r3, 4
/* 801C3E40 001C0DA0  4B F6 D8 D9 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
/* 801C3E44 001C0DA4  48 00 01 70 */	b lbl_801C3FB4
lbl_801C3E48:
/* 801C3E48 001C0DA8  A0 DF 00 08 */	lhz r6, 8(r31)
/* 801C3E4C 001C0DAC  7F C3 F3 78 */	mr r3, r30
/* 801C3E50 001C0DB0  38 81 00 18 */	addi r4, r1, 0x18
/* 801C3E54 001C0DB4  38 A1 00 14 */	addi r5, r1, 0x14
/* 801C3E58 001C0DB8  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 801C3E5C 001C0DBC  A0 1F 06 78 */	lhz r0, 0x678(r31)
/* 801C3E60 001C0DC0  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 801C3E64 001C0DC4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C3E68 001C0DC8  48 07 63 19 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 801C3E6C 001C0DCC  28 03 00 00 */	cmplwi r3, 0
/* 801C3E70 001C0DD0  41 82 00 0C */	beq lbl_801C3E7C
/* 801C3E74 001C0DD4  38 C3 00 1C */	addi r6, r3, 0x1c
/* 801C3E78 001C0DD8  48 00 00 98 */	b lbl_801C3F10
lbl_801C3E7C:
/* 801C3E7C 001C0DDC  80 BE 08 4C */	lwz r5, 0x84c(r30)
/* 801C3E80 001C0DE0  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3E84 001C0DE4  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801C3E88 001C0DE8  39 20 FF FF */	li r9, -1
/* 801C3E8C 001C0DEC  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 801C3E90 001C0DF0  38 00 00 00 */	li r0, 0
/* 801C3E94 001C0DF4  C0 65 00 50 */	lfs f3, 0x50(r5)
/* 801C3E98 001C0DF8  7F E4 FB 78 */	mr r4, r31
/* 801C3E9C 001C0DFC  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801C3EA0 001C0E00  7F C5 F3 78 */	mr r5, r30
/* 801C3EA4 001C0E04  C0 48 00 00 */	lfs f2, 0(r8)
/* 801C3EA8 001C0E08  38 61 00 34 */	addi r3, r1, 0x34
/* 801C3EAC 001C0E0C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801C3EB0 001C0E10  38 C1 00 A8 */	addi r6, r1, 0xa8
/* 801C3EB4 001C0E14  C0 28 00 04 */	lfs f1, 4(r8)
/* 801C3EB8 001C0E18  38 E1 00 40 */	addi r7, r1, 0x40
/* 801C3EBC 001C0E1C  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 801C3EC0 001C0E20  C0 08 00 08 */	lfs f0, 8(r8)
/* 801C3EC4 001C0E24  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 801C3EC8 001C0E28  A1 1F 00 08 */	lhz r8, 8(r31)
/* 801C3ECC 001C0E2C  B1 01 00 A8 */	sth r8, 0xa8(r1)
/* 801C3ED0 001C0E30  91 21 00 AC */	stw r9, 0xac(r1)
/* 801C3ED4 001C0E34  91 21 00 B0 */	stw r9, 0xb0(r1)
/* 801C3ED8 001C0E38  91 21 00 B4 */	stw r9, 0xb4(r1)
/* 801C3EDC 001C0E3C  91 21 00 B8 */	stw r9, 0xb8(r1)
/* 801C3EE0 001C0E40  91 21 00 BC */	stw r9, 0xbc(r1)
/* 801C3EE4 001C0E44  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801C3EE8 001C0E48  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801C3EEC 001C0E4C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 801C3EF0 001C0E50  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801C3EF4 001C0E54  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C3EF8 001C0E58  B1 01 00 08 */	sth r8, 8(r1)
/* 801C3EFC 001C0E5C  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 801C3F00 001C0E60  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801C3F04 001C0E64  7D 89 03 A6 */	mtctr r12
/* 801C3F08 001C0E68  4E 80 04 21 */	bctrl
/* 801C3F0C 001C0E6C  38 C1 00 34 */	addi r6, r1, 0x34
lbl_801C3F10:
/* 801C3F10 001C0E70  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 801C3F14 001C0E74  7F E5 FB 78 */	mr r5, r31
/* 801C3F18 001C0E78  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 801C3F1C 001C0E7C  38 61 00 1C */	addi r3, r1, 0x1c
/* 801C3F20 001C0E80  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801C3F24 001C0E84  38 9F 04 5C */	addi r4, r31, 0x45c
/* 801C3F28 001C0E88  C0 46 00 08 */	lfs f2, 8(r6)
/* 801C3F2C 001C0E8C  38 C1 00 58 */	addi r6, r1, 0x58
/* 801C3F30 001C0E90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801C3F34 001C0E94  C0 22 AA AC */	lfs f1, lbl_805AC7CC@sda21(r2)
/* 801C3F38 001C0E98  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 801C3F3C 001C0E9C  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 801C3F40 001C0EA0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 801C3F44 001C0EA4  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 801C3F48 001C0EA8  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801C3F4C 001C0EAC  4B F7 AB D1 */	bl Arrival__18CSteeringBehaviorsCFRC13CPhysicsActorRC9CVector3ff
/* 801C3F50 001C0EB0  C0 81 00 20 */	lfs f4, 0x20(r1)
/* 801C3F54 001C0EB4  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801C3F58 001C0EB8  EC 24 01 32 */	fmuls f1, f4, f4
/* 801C3F5C 001C0EBC  C0 A1 00 24 */	lfs f5, 0x24(r1)
/* 801C3F60 001C0EC0  C0 02 AA B0 */	lfs f0, lbl_805AC7D0@sda21(r2)
/* 801C3F64 001C0EC4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801C3F68 001C0EC8  EC 25 09 7A */	fmadds f1, f5, f5, f1
/* 801C3F6C 001C0ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C3F70 001C0ED0  40 81 00 44 */	ble lbl_801C3FB4
/* 801C3F74 001C0ED4  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C3F78 001C0ED8  C4 63 66 A0 */	lfsu f3, skZero3f@l(r3)
/* 801C3F7C 001C0EDC  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C3F80 001C0EE0  38 81 00 70 */	addi r4, r1, 0x70
/* 801C3F84 001C0EE4  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 801C3F88 001C0EE8  C0 43 00 04 */	lfs f2, 4(r3)
/* 801C3F8C 001C0EEC  C0 23 00 08 */	lfs f1, 8(r3)
/* 801C3F90 001C0EF0  D0 81 00 74 */	stfs f4, 0x74(r1)
/* 801C3F94 001C0EF4  D0 A1 00 78 */	stfs f5, 0x78(r1)
/* 801C3F98 001C0EF8  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 801C3F9C 001C0EFC  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 801C3FA0 001C0F00  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 801C3FA4 001C0F04  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 801C3FA8 001C0F08  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C3FAC 001C0F0C  38 63 00 04 */	addi r3, r3, 4
/* 801C3FB0 001C0F10  4B F6 D7 69 */	bl DeliverCmd__16CBodyStateCmdMgrFRC16CBCLocomotionCmd
lbl_801C3FB4:
/* 801C3FB4 001C0F14  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801C3FB8 001C0F18  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 801C3FBC 001C0F1C  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 801C3FC0 001C0F20  7C 08 03 A6 */	mtlr r0
/* 801C3FC4 001C0F24  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801C3FC8 001C0F28  4E 80 00 20 */	blr

.global PathFind__12CMetroidBetaFR13CStateManager9EStateMsgf
PathFind__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C3FCC 001C0F2C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 801C3FD0 001C0F30  7C 08 02 A6 */	mflr r0
/* 801C3FD4 001C0F34  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 801C3FD8 001C0F38  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 801C3FDC 001C0F3C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, qr0
/* 801C3FE0 001C0F40  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 801C3FE4 001C0F44  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 801C3FE8 001C0F48  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 801C3FEC 001C0F4C  7C BD 2B 78 */	mr r29, r5
/* 801C3FF0 001C0F50  FF E0 08 90 */	fmr f31, f1
/* 801C3FF4 001C0F54  2C 1D 00 01 */	cmpwi r29, 1
/* 801C3FF8 001C0F58  7C 7E 1B 78 */	mr r30, r3
/* 801C3FFC 001C0F5C  7C 9F 23 78 */	mr r31, r4
/* 801C4000 001C0F60  41 82 01 50 */	beq lbl_801C4150
/* 801C4004 001C0F64  40 80 02 D0 */	bge lbl_801C42D4
/* 801C4008 001C0F68  2C 1D 00 00 */	cmpwi r29, 0
/* 801C400C 001C0F6C  40 80 00 08 */	bge lbl_801C4014
/* 801C4010 001C0F70  48 00 02 C4 */	b lbl_801C42D4
lbl_801C4014:
/* 801C4014 001C0F74  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C4018 001C0F78  38 60 00 00 */	li r3, 0
/* 801C401C 001C0F7C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801C4020 001C0F80  38 80 00 02 */	li r4, 2
/* 801C4024 001C0F84  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C4028 001C0F88  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C402C 001C0F8C  4B F7 69 AD */	bl SetLocomotionType__15CBodyControllerFQ23pas15ELocomotionType
/* 801C4030 001C0F90  A0 DE 00 08 */	lhz r6, 8(r30)
/* 801C4034 001C0F94  7F E3 FB 78 */	mr r3, r31
/* 801C4038 001C0F98  38 81 00 2C */	addi r4, r1, 0x2c
/* 801C403C 001C0F9C  38 A1 00 28 */	addi r5, r1, 0x28
/* 801C4040 001C0FA0  B0 C1 00 28 */	sth r6, 0x28(r1)
/* 801C4044 001C0FA4  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C4048 001C0FA8  B0 C1 00 24 */	sth r6, 0x24(r1)
/* 801C404C 001C0FAC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 801C4050 001C0FB0  48 07 61 31 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 801C4054 001C0FB4  28 03 00 00 */	cmplwi r3, 0
/* 801C4058 001C0FB8  41 82 00 20 */	beq lbl_801C4078
/* 801C405C 001C0FBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801C4060 001C0FC0  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801C4064 001C0FC4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801C4068 001C0FC8  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801C406C 001C0FCC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801C4070 001C0FD0  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
/* 801C4074 001C0FD4  48 00 00 AC */	b lbl_801C4120
lbl_801C4078:
/* 801C4078 001C0FD8  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801C407C 001C0FDC  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C4080 001C0FE0  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801C4084 001C0FE4  39 20 FF FF */	li r9, -1
/* 801C4088 001C0FE8  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 801C408C 001C0FEC  38 00 00 00 */	li r0, 0
/* 801C4090 001C0FF0  C0 65 00 50 */	lfs f3, 0x50(r5)
/* 801C4094 001C0FF4  7F C4 F3 78 */	mr r4, r30
/* 801C4098 001C0FF8  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801C409C 001C0FFC  7F E5 FB 78 */	mr r5, r31
/* 801C40A0 001C1000  C0 48 00 00 */	lfs f2, 0(r8)
/* 801C40A4 001C1004  38 61 00 54 */	addi r3, r1, 0x54
/* 801C40A8 001C1008  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801C40AC 001C100C  38 C1 00 88 */	addi r6, r1, 0x88
/* 801C40B0 001C1010  C0 28 00 04 */	lfs f1, 4(r8)
/* 801C40B4 001C1014  38 E1 00 48 */	addi r7, r1, 0x48
/* 801C40B8 001C1018  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 801C40BC 001C101C  C0 08 00 08 */	lfs f0, 8(r8)
/* 801C40C0 001C1020  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 801C40C4 001C1024  A1 1E 00 08 */	lhz r8, 8(r30)
/* 801C40C8 001C1028  B1 01 00 88 */	sth r8, 0x88(r1)
/* 801C40CC 001C102C  91 21 00 8C */	stw r9, 0x8c(r1)
/* 801C40D0 001C1030  91 21 00 90 */	stw r9, 0x90(r1)
/* 801C40D4 001C1034  91 21 00 94 */	stw r9, 0x94(r1)
/* 801C40D8 001C1038  91 21 00 98 */	stw r9, 0x98(r1)
/* 801C40DC 001C103C  91 21 00 9C */	stw r9, 0x9c(r1)
/* 801C40E0 001C1040  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 801C40E4 001C1044  D0 41 00 A4 */	stfs f2, 0xa4(r1)
/* 801C40E8 001C1048  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 801C40EC 001C104C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 801C40F0 001C1050  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C40F4 001C1054  B1 01 00 1C */	sth r8, 0x1c(r1)
/* 801C40F8 001C1058  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 801C40FC 001C105C  B1 01 00 20 */	sth r8, 0x20(r1)
/* 801C4100 001C1060  7D 89 03 A6 */	mtctr r12
/* 801C4104 001C1064  4E 80 04 21 */	bctrl
/* 801C4108 001C1068  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 801C410C 001C106C  D0 1E 02 E0 */	stfs f0, 0x2e0(r30)
/* 801C4110 001C1070  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 801C4114 001C1074  D0 1E 02 E4 */	stfs f0, 0x2e4(r30)
/* 801C4118 001C1078  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801C411C 001C107C  D0 1E 02 E8 */	stfs f0, 0x2e8(r30)
lbl_801C4120:
/* 801C4120 001C1080  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 801C4124 001C1084  7F C3 F3 78 */	mr r3, r30
/* 801C4128 001C1088  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C412C 001C108C  7F E4 FB 78 */	mr r4, r31
/* 801C4130 001C1090  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 801C4134 001C1094  38 A0 00 00 */	li r5, 0
/* 801C4138 001C1098  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 801C413C 001C109C  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 801C4140 001C10A0  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 801C4144 001C10A4  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 801C4148 001C10A8  48 03 25 85 */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801C414C 001C10AC  48 00 01 88 */	b lbl_801C42D4
lbl_801C4150:
/* 801C4150 001C10B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4154 001C10B4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801C4158 001C10B8  7D 89 03 A6 */	mtctr r12
/* 801C415C 001C10BC  4E 80 04 21 */	bctrl
/* 801C4160 001C10C0  28 03 00 00 */	cmplwi r3, 0
/* 801C4164 001C10C4  41 82 00 64 */	beq lbl_801C41C8
/* 801C4168 001C10C8  7F C3 F3 78 */	mr r3, r30
/* 801C416C 001C10CC  7F E4 FB 78 */	mr r4, r31
/* 801C4170 001C10D0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C4174 001C10D4  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C4178 001C10D8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 801C417C 001C10DC  7D 89 03 A6 */	mtctr r12
/* 801C4180 001C10E0  4E 80 04 21 */	bctrl
/* 801C4184 001C10E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4188 001C10E8  40 82 00 40 */	bne lbl_801C41C8
/* 801C418C 001C10EC  7F C3 F3 78 */	mr r3, r30
/* 801C4190 001C10F0  7F E4 FB 78 */	mr r4, r31
/* 801C4194 001C10F4  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C4198 001C10F8  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C419C 001C10FC  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 801C41A0 001C1100  7D 89 03 A6 */	mtctr r12
/* 801C41A4 001C1104  4E 80 04 21 */	bctrl
/* 801C41A8 001C1108  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C41AC 001C110C  40 82 00 1C */	bne lbl_801C41C8
/* 801C41B0 001C1110  FC 20 F8 90 */	fmr f1, f31
/* 801C41B4 001C1114  7F C3 F3 78 */	mr r3, r30
/* 801C41B8 001C1118  7F E4 FB 78 */	mr r4, r31
/* 801C41BC 001C111C  7F A5 EB 78 */	mr r5, r29
/* 801C41C0 001C1120  48 03 25 0D */	bl PathFind__10CPatternedFR13CStateManager9EStateMsgf
/* 801C41C4 001C1124  48 00 01 04 */	b lbl_801C42C8
lbl_801C41C8:
/* 801C41C8 001C1128  A0 DE 00 08 */	lhz r6, 8(r30)
/* 801C41CC 001C112C  7F E3 FB 78 */	mr r3, r31
/* 801C41D0 001C1130  38 81 00 18 */	addi r4, r1, 0x18
/* 801C41D4 001C1134  38 A1 00 14 */	addi r5, r1, 0x14
/* 801C41D8 001C1138  B0 C1 00 14 */	sth r6, 0x14(r1)
/* 801C41DC 001C113C  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C41E0 001C1140  B0 C1 00 10 */	sth r6, 0x10(r1)
/* 801C41E4 001C1144  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C41E8 001C1148  48 07 5F 99 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 801C41EC 001C114C  28 03 00 00 */	cmplwi r3, 0
/* 801C41F0 001C1150  41 82 00 20 */	beq lbl_801C4210
/* 801C41F4 001C1154  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 801C41F8 001C1158  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 801C41FC 001C115C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801C4200 001C1160  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 801C4204 001C1164  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801C4208 001C1168  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 801C420C 001C116C  48 00 00 AC */	b lbl_801C42B8
lbl_801C4210:
/* 801C4210 001C1170  80 BF 08 4C */	lwz r5, 0x84c(r31)
/* 801C4214 001C1174  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801C4218 001C1178  39 03 66 A0 */	addi r8, r3, skZero3f@l
/* 801C421C 001C117C  39 20 FF FF */	li r9, -1
/* 801C4220 001C1180  C0 85 00 60 */	lfs f4, 0x60(r5)
/* 801C4224 001C1184  38 00 00 00 */	li r0, 0
/* 801C4228 001C1188  C0 65 00 50 */	lfs f3, 0x50(r5)
/* 801C422C 001C118C  7F C4 F3 78 */	mr r4, r30
/* 801C4230 001C1190  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 801C4234 001C1194  7F E5 FB 78 */	mr r5, r31
/* 801C4238 001C1198  C0 48 00 00 */	lfs f2, 0(r8)
/* 801C423C 001C119C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801C4240 001C11A0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801C4244 001C11A4  38 C1 00 60 */	addi r6, r1, 0x60
/* 801C4248 001C11A8  C0 28 00 04 */	lfs f1, 4(r8)
/* 801C424C 001C11AC  38 E1 00 30 */	addi r7, r1, 0x30
/* 801C4250 001C11B0  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801C4254 001C11B4  C0 08 00 08 */	lfs f0, 8(r8)
/* 801C4258 001C11B8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801C425C 001C11BC  A1 1E 00 08 */	lhz r8, 8(r30)
/* 801C4260 001C11C0  B1 01 00 60 */	sth r8, 0x60(r1)
/* 801C4264 001C11C4  91 21 00 64 */	stw r9, 0x64(r1)
/* 801C4268 001C11C8  91 21 00 68 */	stw r9, 0x68(r1)
/* 801C426C 001C11CC  91 21 00 6C */	stw r9, 0x6c(r1)
/* 801C4270 001C11D0  91 21 00 70 */	stw r9, 0x70(r1)
/* 801C4274 001C11D4  91 21 00 74 */	stw r9, 0x74(r1)
/* 801C4278 001C11D8  90 01 00 78 */	stw r0, 0x78(r1)
/* 801C427C 001C11DC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 801C4280 001C11E0  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 801C4284 001C11E4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801C4288 001C11E8  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C428C 001C11EC  B1 01 00 08 */	sth r8, 8(r1)
/* 801C4290 001C11F0  81 8C 00 A0 */	lwz r12, 0xa0(r12)
/* 801C4294 001C11F4  B1 01 00 0C */	sth r8, 0xc(r1)
/* 801C4298 001C11F8  7D 89 03 A6 */	mtctr r12
/* 801C429C 001C11FC  4E 80 04 21 */	bctrl
/* 801C42A0 001C1200  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801C42A4 001C1204  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 801C42A8 001C1208  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 801C42AC 001C120C  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 801C42B0 001C1210  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 801C42B4 001C1214  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
lbl_801C42B8:
/* 801C42B8 001C1218  7F C3 F3 78 */	mr r3, r30
/* 801C42BC 001C121C  7F E4 FB 78 */	mr r4, r31
/* 801C42C0 001C1220  38 BE 07 A8 */	addi r5, r30, 0x7a8
/* 801C42C4 001C1224  4B FF CC 21 */	bl sub_801c0ee4
lbl_801C42C8:
/* 801C42C8 001C1228  7F C3 F3 78 */	mr r3, r30
/* 801C42CC 001C122C  7F E4 FB 78 */	mr r4, r31
/* 801C42D0 001C1230  4B FF CE 41 */	bl sub_801c1110
lbl_801C42D4:
/* 801C42D4 001C1234  7F C3 F3 78 */	mr r3, r30
/* 801C42D8 001C1238  7F E4 FB 78 */	mr r4, r31
/* 801C42DC 001C123C  4B FF CB 2D */	bl sub_801c0e08
/* 801C42E0 001C1240  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, qr0
/* 801C42E4 001C1244  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801C42E8 001C1248  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801C42EC 001C124C  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 801C42F0 001C1250  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 801C42F4 001C1254  83 A1 00 B4 */	lwz r29, 0xb4(r1)
/* 801C42F8 001C1258  7C 08 03 A6 */	mtlr r0
/* 801C42FC 001C125C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801C4300 001C1260  4E 80 00 20 */	blr

.global sub_801c4304
sub_801c4304:
/* 801C4304 001C1264  80 03 05 68 */	lwz r0, 0x568(r3)
/* 801C4308 001C1268  20 00 00 03 */	subfic r0, r0, 3
/* 801C430C 001C126C  7C 00 00 34 */	cntlzw r0, r0
/* 801C4310 001C1270  54 03 D9 7E */	srwi r3, r0, 5
/* 801C4314 001C1274  4E 80 00 20 */	blr

.global ShouldWallHang__12CMetroidBetaFR13CStateManagerf
ShouldWallHang__12CMetroidBetaFR13CStateManagerf:
/* 801C4318 001C1278  88 03 06 74 */	lbz r0, 0x674(r3)
/* 801C431C 001C127C  54 03 CF FE */	rlwinm r3, r0, 0x19, 0x1f, 0x1f
/* 801C4320 001C1280  4E 80 00 20 */	blr

.global ShouldTurn__12CMetroidBetaFR13CStateManagerf
ShouldTurn__12CMetroidBetaFR13CStateManagerf:
/* 801C4324 001C1284  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C4328 001C1288  7C 08 02 A6 */	mflr r0
/* 801C432C 001C128C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C4330 001C1290  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801C4334 001C1294  7C 7F 1B 78 */	mr r31, r3
/* 801C4338 001C1298  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C433C 001C129C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801C4340 001C12A0  38 61 00 10 */	addi r3, r1, 0x10
/* 801C4344 001C12A4  C0 84 00 50 */	lfs f4, 0x50(r4)
/* 801C4348 001C12A8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801C434C 001C12AC  EC 44 08 28 */	fsubs f2, f4, f1
/* 801C4350 001C12B0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801C4354 001C12B4  C0 A4 00 60 */	lfs f5, 0x60(r4)
/* 801C4358 001C12B8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801C435C 001C12BC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C4360 001C12C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801C4364 001C12C4  EC 65 18 28 */	fsubs f3, f5, f3
/* 801C4368 001C12C8  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 801C436C 001C12CC  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 801C4370 001C12D0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801C4374 001C12D4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801C4378 001C12D8  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801C437C 001C12DC  48 14 FE 85 */	bl __ct__9CVector2fFff
/* 801C4380 001C12E0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801C4384 001C12E4  38 61 00 08 */	addi r3, r1, 8
/* 801C4388 001C12E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801C438C 001C12EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801C4390 001C12F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801C4394 001C12F4  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801C4398 001C12F8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801C439C 001C12FC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 801C43A0 001C1300  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801C43A4 001C1304  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801C43A8 001C1308  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801C43AC 001C130C  48 14 FE 55 */	bl __ct__9CVector2fFff
/* 801C43B0 001C1310  C0 21 00 08 */	lfs f1, 8(r1)
/* 801C43B4 001C1314  38 61 00 18 */	addi r3, r1, 0x18
/* 801C43B8 001C1318  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801C43BC 001C131C  38 81 00 20 */	addi r4, r1, 0x20
/* 801C43C0 001C1320  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C43C4 001C1324  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801C43C8 001C1328  48 14 FB FD */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801C43CC 001C132C  C0 02 AA FC */	lfs f0, lbl_805AC81C@sda21(r2)
/* 801C43D0 001C1330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C43D4 001C1334  7C 00 00 26 */	mfcr r0
/* 801C43D8 001C1338  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801C43DC 001C133C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801C43E0 001C1340  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C43E4 001C1344  7C 08 03 A6 */	mtlr r0
/* 801C43E8 001C1348  38 21 00 60 */	addi r1, r1, 0x60
/* 801C43EC 001C134C  4E 80 00 20 */	blr

.global InPosition__12CMetroidBetaFR13CStateManagerf
InPosition__12CMetroidBetaFR13CStateManagerf:
/* 801C43F0 001C1350  C0 23 07 AC */	lfs f1, 0x7ac(r3)
/* 801C43F4 001C1354  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 801C43F8 001C1358  C0 63 07 A8 */	lfs f3, 0x7a8(r3)
/* 801C43FC 001C135C  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C4400 001C1360  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801C4404 001C1364  C0 43 07 B0 */	lfs f2, 0x7b0(r3)
/* 801C4408 001C1368  EC 63 00 28 */	fsubs f3, f3, f0
/* 801C440C 001C136C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801C4410 001C1370  EC 21 00 72 */	fmuls f1, f1, f1
/* 801C4414 001C1374  EC 42 00 28 */	fsubs f2, f2, f0
/* 801C4418 001C1378  C0 02 AA A8 */	lfs f0, lbl_805AC7C8@sda21(r2)
/* 801C441C 001C137C  EC 23 08 FA */	fmadds f1, f3, f3, f1
/* 801C4420 001C1380  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801C4424 001C1384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4428 001C1388  7C 00 00 26 */	mfcr r0
/* 801C442C 001C138C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801C4430 001C1390  4E 80 00 20 */	blr

.global InDetectionRange__12CMetroidBetaFR13CStateManagerf
InDetectionRange__12CMetroidBetaFR13CStateManagerf:
/* 801C4434 001C1394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4438 001C1398  7C 08 02 A6 */	mflr r0
/* 801C443C 001C139C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4440 001C13A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4444 001C13A4  93 C1 00 08 */	stw r30, 8(r1)
/* 801C4448 001C13A8  7C 9E 23 78 */	mr r30, r4
/* 801C444C 001C13AC  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C4450 001C13B0  54 1F DF FF */	rlwinm. r31, r0, 0x1b, 0x1f, 0x1f
/* 801C4454 001C13B4  41 82 00 08 */	beq lbl_801C445C
/* 801C4458 001C13B8  48 00 00 28 */	b lbl_801C4480
lbl_801C445C:
/* 801C445C 001C13BC  3B E0 00 00 */	li r31, 0
/* 801C4460 001C13C0  48 03 1F 0D */	bl InDetectionRange__10CPatternedFR13CStateManagerf
/* 801C4464 001C13C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4468 001C13C8  41 82 00 18 */	beq lbl_801C4480
/* 801C446C 001C13CC  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801C4470 001C13D0  88 03 09 C4 */	lbz r0, 0x9c4(r3)
/* 801C4474 001C13D4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801C4478 001C13D8  40 82 00 08 */	bne lbl_801C4480
/* 801C447C 001C13DC  3B E0 00 01 */	li r31, 1
lbl_801C4480:
/* 801C4480 001C13E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4484 001C13E4  7F E3 FB 78 */	mr r3, r31
/* 801C4488 001C13E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C448C 001C13EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C4490 001C13F0  7C 08 03 A6 */	mtlr r0
/* 801C4494 001C13F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4498 001C13F8  4E 80 00 20 */	blr

.global BreakAttack__12CMetroidBetaFR13CStateManagerf
BreakAttack__12CMetroidBetaFR13CStateManagerf:
/* 801C449C 001C13FC  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C44A0 001C1400  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 801C44A4 001C1404  4E 80 00 20 */	blr

.global StartAttack__12CMetroidBetaFR13CStateManagerf
StartAttack__12CMetroidBetaFR13CStateManagerf:
/* 801C44A8 001C1408  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C44AC 001C140C  7C 08 02 A6 */	mflr r0
/* 801C44B0 001C1410  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C44B4 001C1414  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 801C44B8 001C1418  7C 9F 23 78 */	mr r31, r4
/* 801C44BC 001C141C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 801C44C0 001C1420  7C 7E 1B 78 */	mr r30, r3
/* 801C44C4 001C1424  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C44C8 001C1428  88 04 09 C4 */	lbz r0, 0x9c4(r4)
/* 801C44CC 001C142C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801C44D0 001C1430  40 82 00 24 */	bne lbl_801C44F4
/* 801C44D4 001C1434  80 7E 00 04 */	lwz r3, 4(r30)
/* 801C44D8 001C1438  80 04 00 04 */	lwz r0, 4(r4)
/* 801C44DC 001C143C  7C 03 00 00 */	cmpw r3, r0
/* 801C44E0 001C1440  40 82 00 14 */	bne lbl_801C44F4
/* 801C44E4 001C1444  C0 3E 07 94 */	lfs f1, 0x794(r30)
/* 801C44E8 001C1448  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C44EC 001C144C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C44F0 001C1450  40 81 00 0C */	ble lbl_801C44FC
lbl_801C44F4:
/* 801C44F4 001C1454  38 60 00 00 */	li r3, 0
/* 801C44F8 001C1458  48 00 01 60 */	b lbl_801C4658
lbl_801C44FC:
/* 801C44FC 001C145C  80 04 03 04 */	lwz r0, 0x304(r4)
/* 801C4500 001C1460  2C 00 00 04 */	cmpwi r0, 4
/* 801C4504 001C1464  41 82 00 24 */	beq lbl_801C4528
/* 801C4508 001C1468  2C 00 00 05 */	cmpwi r0, 5
/* 801C450C 001C146C  41 82 00 1C */	beq lbl_801C4528
/* 801C4510 001C1470  80 04 03 B8 */	lwz r0, 0x3b8(r4)
/* 801C4514 001C1474  2C 00 00 00 */	cmpwi r0, 0
/* 801C4518 001C1478  40 82 00 10 */	bne lbl_801C4528
/* 801C451C 001C147C  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801C4520 001C1480  2C 00 00 03 */	cmpwi r0, 3
/* 801C4524 001C1484  40 82 00 0C */	bne lbl_801C4530
lbl_801C4528:
/* 801C4528 001C1488  38 60 00 00 */	li r3, 0
/* 801C452C 001C148C  48 00 01 2C */	b lbl_801C4658
lbl_801C4530:
/* 801C4530 001C1490  7F C4 F3 78 */	mr r4, r30
/* 801C4534 001C1494  38 61 00 30 */	addi r3, r1, 0x30
/* 801C4538 001C1498  4B FF D1 39 */	bl sub_801c1670
/* 801C453C 001C149C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801C4540 001C14A0  7F C4 F3 78 */	mr r4, r30
/* 801C4544 001C14A4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 801C4548 001C14A8  7F E5 FB 78 */	mr r5, r31
/* 801C454C 001C14AC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801C4550 001C14B0  38 61 00 24 */	addi r3, r1, 0x24
/* 801C4554 001C14B4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801C4558 001C14B8  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 801C455C 001C14BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 801C4560 001C14C0  4B FF D0 79 */	bl sub_801c15d8
/* 801C4564 001C14C4  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 801C4568 001C14C8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 801C456C 001C14CC  C0 81 00 24 */	lfs f4, 0x24(r1)
/* 801C4570 001C14D0  EC A3 00 28 */	fsubs f5, f3, f0
/* 801C4574 001C14D4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 801C4578 001C14D8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 801C457C 001C14DC  EC C4 00 28 */	fsubs f6, f4, f0
/* 801C4580 001C14E0  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 801C4584 001C14E4  EC 05 01 72 */	fmuls f0, f5, f5
/* 801C4588 001C14E8  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801C458C 001C14EC  EC 22 08 28 */	fsubs f1, f2, f1
/* 801C4590 001C14F0  EC 06 01 BA */	fmadds f0, f6, f6, f0
/* 801C4594 001C14F4  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801C4598 001C14F8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801C459C 001C14FC  EC 21 00 7A */	fmadds f1, f1, f1, f0
/* 801C45A0 001C1500  C0 1E 02 FC */	lfs f0, 0x2fc(r30)
/* 801C45A4 001C1504  C0 5E 03 00 */	lfs f2, 0x300(r30)
/* 801C45A8 001C1508  EC 00 00 32 */	fmuls f0, f0, f0
/* 801C45AC 001C150C  EC 42 00 B2 */	fmuls f2, f2, f2
/* 801C45B0 001C1510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C45B4 001C1514  41 80 00 0C */	blt lbl_801C45C0
/* 801C45B8 001C1518  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801C45BC 001C151C  40 81 00 0C */	ble lbl_801C45C8
lbl_801C45C0:
/* 801C45C0 001C1520  38 60 00 00 */	li r3, 0
/* 801C45C4 001C1524  48 00 00 94 */	b lbl_801C4658
lbl_801C45C8:
/* 801C45C8 001C1528  7F C3 F3 78 */	mr r3, r30
/* 801C45CC 001C152C  7F E4 FB 78 */	mr r4, r31
/* 801C45D0 001C1530  38 A1 00 48 */	addi r5, r1, 0x48
/* 801C45D4 001C1534  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801C45D8 001C1538  48 03 07 F9 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801C45DC 001C153C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C45E0 001C1540  41 82 00 0C */	beq lbl_801C45EC
/* 801C45E4 001C1544  38 60 00 00 */	li r3, 0
/* 801C45E8 001C1548  48 00 00 70 */	b lbl_801C4658
lbl_801C45EC:
/* 801C45EC 001C154C  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C45F0 001C1550  7F E3 FB 78 */	mr r3, r31
/* 801C45F4 001C1554  38 81 00 18 */	addi r4, r1, 0x18
/* 801C45F8 001C1558  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C45FC 001C155C  4B E8 7F 79 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C4600 001C1560  7C 64 1B 78 */	mr r4, r3
/* 801C4604 001C1564  38 61 00 1C */	addi r3, r1, 0x1c
/* 801C4608 001C1568  4B EE 2F 6D */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801C460C 001C156C  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C4610 001C1570  28 1F 00 00 */	cmplwi r31, 0
/* 801C4614 001C1574  41 82 00 40 */	beq lbl_801C4654
/* 801C4618 001C1578  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C461C 001C157C  7F E3 FB 78 */	mr r3, r31
/* 801C4620 001C1580  38 81 00 14 */	addi r4, r1, 0x14
/* 801C4624 001C1584  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C4628 001C1588  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C462C 001C158C  48 07 49 C5 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801C4630 001C1590  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4634 001C1594  41 82 00 20 */	beq lbl_801C4654
/* 801C4638 001C1598  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C463C 001C159C  7F E3 FB 78 */	mr r3, r31
/* 801C4640 001C15A0  38 81 00 0C */	addi r4, r1, 0xc
/* 801C4644 001C15A4  B0 01 00 08 */	sth r0, 8(r1)
/* 801C4648 001C15A8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C464C 001C15AC  48 07 3F 79 */	bl AddProjectileAttacker__10CTeamAiMgrF9TUniqueId
/* 801C4650 001C15B0  48 00 00 08 */	b lbl_801C4658
lbl_801C4654:
/* 801C4654 001C15B4  38 60 00 01 */	li r3, 1
lbl_801C4658:
/* 801C4658 001C15B8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C465C 001C15BC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 801C4660 001C15C0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 801C4664 001C15C4  7C 08 03 A6 */	mtlr r0
/* 801C4668 001C15C8  38 21 00 60 */	addi r1, r1, 0x60
/* 801C466C 001C15CC  4E 80 00 20 */	blr

.global InAttackPosition__12CMetroidBetaFR13CStateManager9EStateMsgf
InAttackPosition__12CMetroidBetaFR13CStateManager9EStateMsgf:
/* 801C4670 001C15D0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 801C4674 001C15D4  7C 08 02 A6 */	mflr r0
/* 801C4678 001C15D8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 801C467C 001C15DC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 801C4680 001C15E0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, qr0
/* 801C4684 001C15E4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 801C4688 001C15E8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, qr0
/* 801C468C 001C15EC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 801C4690 001C15F0  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, qr0
/* 801C4694 001C15F4  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 801C4698 001C15F8  F3 81 00 A8 */	psq_st f28, 168(r1), 0, qr0
/* 801C469C 001C15FC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801C46A0 001C1600  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801C46A4 001C1604  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801C46A8 001C1608  7C 9E 23 78 */	mr r30, r4
/* 801C46AC 001C160C  7C 7D 1B 78 */	mr r29, r3
/* 801C46B0 001C1610  83 E4 08 4C */	lwz r31, 0x84c(r4)
/* 801C46B4 001C1614  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 801C46B8 001C1618  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 801C46BC 001C161C  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801C46C0 001C1620  C0 63 00 50 */	lfs f3, 0x50(r3)
/* 801C46C4 001C1624  EF A1 00 28 */	fsubs f29, f1, f0
/* 801C46C8 001C1628  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 801C46CC 001C162C  2C 00 00 01 */	cmpwi r0, 1
/* 801C46D0 001C1630  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 801C46D4 001C1634  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 801C46D8 001C1638  EF C3 10 28 */	fsubs f30, f3, f2
/* 801C46DC 001C163C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 801C46E0 001C1640  EF E1 00 28 */	fsubs f31, f1, f0
/* 801C46E4 001C1644  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 801C46E8 001C1648  C3 82 AB 00 */	lfs f28, lbl_805AC820@sda21(r2)
/* 801C46EC 001C164C  41 82 00 08 */	beq lbl_801C46F4
/* 801C46F0 001C1650  C3 82 AB 04 */	lfs f28, lbl_805AC824@sda21(r2)
lbl_801C46F4:
/* 801C46F4 001C1654  38 61 00 08 */	addi r3, r1, 8
/* 801C46F8 001C1658  48 14 FB 09 */	bl __ct__9CVector2fFff
/* 801C46FC 001C165C  FC 20 E8 90 */	fmr f1, f29
/* 801C4700 001C1660  38 61 00 10 */	addi r3, r1, 0x10
/* 801C4704 001C1664  FC 40 F0 90 */	fmr f2, f30
/* 801C4708 001C1668  48 14 FA F9 */	bl __ct__9CVector2fFff
/* 801C470C 001C166C  38 61 00 10 */	addi r3, r1, 0x10
/* 801C4710 001C1670  38 81 00 08 */	addi r4, r1, 8
/* 801C4714 001C1674  48 14 F8 B1 */	bl GetAngleDiff__9CVector2fFRC9CVector2fRC9CVector2f
/* 801C4718 001C1678  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 801C471C 001C167C  40 80 01 34 */	bge lbl_801C4850
/* 801C4720 001C1680  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 801C4724 001C1684  C0 5D 00 38 */	lfs f2, 0x38(r29)
/* 801C4728 001C1688  EC 3E 00 F2 */	fmuls f1, f30, f3
/* 801C472C 001C168C  C0 9D 00 58 */	lfs f4, 0x58(r29)
/* 801C4730 001C1690  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4734 001C1694  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801C4738 001C1698  EC 3D 08 BA */	fmadds f1, f29, f2, f1
/* 801C473C 001C169C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 801C4740 001C16A0  EC 3F 09 3A */	fmadds f1, f31, f4, f1
/* 801C4744 001C16A4  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 801C4748 001C16A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C474C 001C16AC  40 80 01 04 */	bge lbl_801C4850
/* 801C4750 001C16B0  C1 1F 00 50 */	lfs f8, 0x50(r31)
/* 801C4754 001C16B4  C1 7D 00 50 */	lfs f11, 0x50(r29)
/* 801C4758 001C16B8  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 801C475C 001C16BC  EC E8 58 28 */	fsubs f7, f8, f11
/* 801C4760 001C16C0  C1 9D 00 40 */	lfs f12, 0x40(r29)
/* 801C4764 001C16C4  C1 3F 00 60 */	lfs f9, 0x60(r31)
/* 801C4768 001C16C8  EC 85 60 28 */	fsubs f4, f5, f12
/* 801C476C 001C16CC  C1 5D 00 60 */	lfs f10, 0x60(r29)
/* 801C4770 001C16D0  EC 27 01 F2 */	fmuls f1, f7, f7
/* 801C4774 001C16D4  EC C9 50 28 */	fsubs f6, f9, f10
/* 801C4778 001C16D8  C0 1D 03 00 */	lfs f0, 0x300(r29)
/* 801C477C 001C16DC  EC 44 01 32 */	fmuls f2, f4, f4
/* 801C4780 001C16E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 801C4784 001C16E4  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 801C4788 001C16E8  EC 66 01 B2 */	fmuls f3, f6, f6
/* 801C478C 001C16EC  EC 22 08 2A */	fadds f1, f2, f1
/* 801C4790 001C16F0  D1 01 00 4C */	stfs f8, 0x4c(r1)
/* 801C4794 001C16F4  D1 21 00 50 */	stfs f9, 0x50(r1)
/* 801C4798 001C16F8  EC 23 08 2A */	fadds f1, f3, f1
/* 801C479C 001C16FC  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 801C47A0 001C1700  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C47A4 001C1704  D0 E1 00 58 */	stfs f7, 0x58(r1)
/* 801C47A8 001C1708  D0 C1 00 5C */	stfs f6, 0x5c(r1)
/* 801C47AC 001C170C  40 80 00 A4 */	bge lbl_801C4850
/* 801C47B0 001C1710  FC 0A 48 40 */	fcmpo cr0, f10, f9
/* 801C47B4 001C1714  D1 81 00 3C */	stfs f12, 0x3c(r1)
/* 801C47B8 001C1718  D1 61 00 40 */	stfs f11, 0x40(r1)
/* 801C47BC 001C171C  D1 41 00 44 */	stfs f10, 0x44(r1)
/* 801C47C0 001C1720  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 801C47C4 001C1724  D1 01 00 34 */	stfs f8, 0x34(r1)
/* 801C47C8 001C1728  D1 21 00 38 */	stfs f9, 0x38(r1)
/* 801C47CC 001C172C  40 81 00 84 */	ble lbl_801C4850
/* 801C47D0 001C1730  C0 02 AA AC */	lfs f0, lbl_805AC7CC@sda21(r2)
/* 801C47D4 001C1734  EC 00 48 2A */	fadds f0, f0, f9
/* 801C47D8 001C1738  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 801C47DC 001C173C  40 80 00 74 */	bge lbl_801C4850
/* 801C47E0 001C1740  7F A4 EB 78 */	mr r4, r29
/* 801C47E4 001C1744  38 61 00 24 */	addi r3, r1, 0x24
/* 801C47E8 001C1748  4B FF CE 89 */	bl sub_801c1670
/* 801C47EC 001C174C  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801C47F0 001C1750  7F A4 EB 78 */	mr r4, r29
/* 801C47F4 001C1754  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 801C47F8 001C1758  7F C5 F3 78 */	mr r5, r30
/* 801C47FC 001C175C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801C4800 001C1760  38 61 00 18 */	addi r3, r1, 0x18
/* 801C4804 001C1764  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 801C4808 001C1768  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 801C480C 001C176C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801C4810 001C1770  4B FF CD C9 */	bl sub_801c15d8
/* 801C4814 001C1774  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801C4818 001C1778  7F A3 EB 78 */	mr r3, r29
/* 801C481C 001C177C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 801C4820 001C1780  7F C4 F3 78 */	mr r4, r30
/* 801C4824 001C1784  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801C4828 001C1788  38 A1 00 78 */	addi r5, r1, 0x78
/* 801C482C 001C178C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 801C4830 001C1790  38 C1 00 6C */	addi r6, r1, 0x6c
/* 801C4834 001C1794  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801C4838 001C1798  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 801C483C 001C179C  48 03 05 95 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801C4840 001C17A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C4844 001C17A4  7C 00 00 34 */	cntlzw r0, r0
/* 801C4848 001C17A8  54 03 D9 7E */	srwi r3, r0, 5
/* 801C484C 001C17AC  48 00 00 08 */	b lbl_801C4854
lbl_801C4850:
/* 801C4850 001C17B0  38 60 00 00 */	li r3, 0
lbl_801C4854:
/* 801C4854 001C17B4  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, qr0
/* 801C4858 001C17B8  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 801C485C 001C17BC  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, qr0
/* 801C4860 001C17C0  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 801C4864 001C17C4  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, qr0
/* 801C4868 001C17C8  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 801C486C 001C17CC  E3 81 00 A8 */	psq_l f28, 168(r1), 0, qr0
/* 801C4870 001C17D0  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 801C4874 001C17D4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801C4878 001C17D8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 801C487C 001C17DC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801C4880 001C17E0  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 801C4884 001C17E4  7C 08 03 A6 */	mtlr r0
/* 801C4888 001C17E8  38 21 00 E0 */	addi r1, r1, 0xe0
/* 801C488C 001C17EC  4E 80 00 20 */	blr

.global ShouldSpecialAttack__12CMetroidBetaFR13CStateManagerf
ShouldSpecialAttack__12CMetroidBetaFR13CStateManagerf:
/* 801C4890 001C17F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C4894 001C17F4  7C 08 02 A6 */	mflr r0
/* 801C4898 001C17F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C489C 001C17FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C48A0 001C1800  7C 9F 23 78 */	mr r31, r4
/* 801C48A4 001C1804  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801C48A8 001C1808  7C 7E 1B 78 */	mr r30, r3
/* 801C48AC 001C180C  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C48B0 001C1810  80 63 00 04 */	lwz r3, 4(r3)
/* 801C48B4 001C1814  80 04 00 04 */	lwz r0, 4(r4)
/* 801C48B8 001C1818  7C 03 00 00 */	cmpw r3, r0
/* 801C48BC 001C181C  40 82 01 44 */	bne lbl_801C4A00
/* 801C48C0 001C1820  C0 1E 07 94 */	lfs f0, 0x794(r30)
/* 801C48C4 001C1824  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C48C8 001C1828  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C48CC 001C182C  4C 40 13 82 */	cror 2, 0, 2
/* 801C48D0 001C1830  40 82 01 30 */	bne lbl_801C4A00
/* 801C48D4 001C1834  81 84 00 00 */	lwz r12, 0(r4)
/* 801C48D8 001C1838  7F E5 FB 78 */	mr r5, r31
/* 801C48DC 001C183C  38 61 00 30 */	addi r3, r1, 0x30
/* 801C48E0 001C1840  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801C48E4 001C1844  7D 89 03 A6 */	mtctr r12
/* 801C48E8 001C1848  4E 80 04 21 */	bctrl
/* 801C48EC 001C184C  C0 81 00 30 */	lfs f4, 0x30(r1)
/* 801C48F0 001C1850  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 801C48F4 001C1854  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 801C48F8 001C1858  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801C48FC 001C185C  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 801C4900 001C1860  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801C4904 001C1864  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 801C4908 001C1868  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 801C490C 001C186C  EC 63 00 28 */	fsubs f3, f3, f0
/* 801C4910 001C1870  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801C4914 001C1874  EC 84 08 28 */	fsubs f4, f4, f1
/* 801C4918 001C1878  C0 BE 02 FC */	lfs f5, 0x2fc(r30)
/* 801C491C 001C187C  EC 42 00 28 */	fsubs f2, f2, f0
/* 801C4920 001C1880  EC 23 00 F2 */	fmuls f1, f3, f3
/* 801C4924 001C1884  EC 05 01 72 */	fmuls f0, f5, f5
/* 801C4928 001C1888  EC 24 09 3A */	fmadds f1, f4, f4, f1
/* 801C492C 001C188C  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 801C4930 001C1890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4934 001C1894  40 80 00 CC */	bge lbl_801C4A00
/* 801C4938 001C1898  7F C3 F3 78 */	mr r3, r30
/* 801C493C 001C189C  7F E4 FB 78 */	mr r4, r31
/* 801C4940 001C18A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C4944 001C18A4  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C4948 001C18A8  81 8C 01 E8 */	lwz r12, 0x1e8(r12)
/* 801C494C 001C18AC  7D 89 03 A6 */	mtctr r12
/* 801C4950 001C18B0  4E 80 04 21 */	bctrl
/* 801C4954 001C18B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4958 001C18B8  40 82 00 A8 */	bne lbl_801C4A00
/* 801C495C 001C18BC  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 801C4960 001C18C0  7F C3 F3 78 */	mr r3, r30
/* 801C4964 001C18C4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 801C4968 001C18C8  7F E4 FB 78 */	mr r4, r31
/* 801C496C 001C18CC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 801C4970 001C18D0  38 A1 00 24 */	addi r5, r1, 0x24
/* 801C4974 001C18D4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 801C4978 001C18D8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801C497C 001C18DC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 801C4980 001C18E0  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801C4984 001C18E4  48 03 04 4D */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801C4988 001C18E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C498C 001C18EC  40 82 00 74 */	bne lbl_801C4A00
/* 801C4990 001C18F0  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C4994 001C18F4  7F E3 FB 78 */	mr r3, r31
/* 801C4998 001C18F8  38 81 00 18 */	addi r4, r1, 0x18
/* 801C499C 001C18FC  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C49A0 001C1900  4B E8 7B D5 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C49A4 001C1904  7C 64 1B 78 */	mr r4, r3
/* 801C49A8 001C1908  38 61 00 1C */	addi r3, r1, 0x1c
/* 801C49AC 001C190C  4B EE 2B C9 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801C49B0 001C1910  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C49B4 001C1914  28 1F 00 00 */	cmplwi r31, 0
/* 801C49B8 001C1918  41 82 00 40 */	beq lbl_801C49F8
/* 801C49BC 001C191C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C49C0 001C1920  7F E3 FB 78 */	mr r3, r31
/* 801C49C4 001C1924  38 81 00 14 */	addi r4, r1, 0x14
/* 801C49C8 001C1928  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C49CC 001C192C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C49D0 001C1930  48 07 46 21 */	bl IsPartOfTeam__10CTeamAiMgrCF9TUniqueId
/* 801C49D4 001C1934  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C49D8 001C1938  41 82 00 20 */	beq lbl_801C49F8
/* 801C49DC 001C193C  A0 1E 00 08 */	lhz r0, 8(r30)
/* 801C49E0 001C1940  7F E3 FB 78 */	mr r3, r31
/* 801C49E4 001C1944  38 81 00 0C */	addi r4, r1, 0xc
/* 801C49E8 001C1948  B0 01 00 08 */	sth r0, 8(r1)
/* 801C49EC 001C194C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C49F0 001C1950  48 07 42 BD */	bl AddMeleeAttacker__10CTeamAiMgrF9TUniqueId
/* 801C49F4 001C1954  48 00 00 10 */	b lbl_801C4A04
lbl_801C49F8:
/* 801C49F8 001C1958  38 60 00 01 */	li r3, 1
/* 801C49FC 001C195C  48 00 00 08 */	b lbl_801C4A04
lbl_801C4A00:
/* 801C4A00 001C1960  38 60 00 00 */	li r3, 0
lbl_801C4A04:
/* 801C4A04 001C1964  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C4A08 001C1968  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C4A0C 001C196C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801C4A10 001C1970  7C 08 03 A6 */	mtlr r0
/* 801C4A14 001C1974  38 21 00 50 */	addi r1, r1, 0x50
/* 801C4A18 001C1978  4E 80 00 20 */	blr

.global ShouldAttack__12CMetroidBetaFR13CStateManagerf
ShouldAttack__12CMetroidBetaFR13CStateManagerf:
/* 801C4A1C 001C197C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801C4A20 001C1980  7C 08 02 A6 */	mflr r0
/* 801C4A24 001C1984  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C4A28 001C1988  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801C4A2C 001C198C  7C 9F 23 78 */	mr r31, r4
/* 801C4A30 001C1990  93 C1 00 48 */	stw r30, 0x48(r1)
/* 801C4A34 001C1994  7C 7E 1B 78 */	mr r30, r3
/* 801C4A38 001C1998  80 84 08 4C */	lwz r4, 0x84c(r4)
/* 801C4A3C 001C199C  88 04 09 C4 */	lbz r0, 0x9c4(r4)
/* 801C4A40 001C19A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801C4A44 001C19A4  40 82 00 24 */	bne lbl_801C4A68
/* 801C4A48 001C19A8  80 7E 00 04 */	lwz r3, 4(r30)
/* 801C4A4C 001C19AC  80 04 00 04 */	lwz r0, 4(r4)
/* 801C4A50 001C19B0  7C 03 00 00 */	cmpw r3, r0
/* 801C4A54 001C19B4  40 82 00 14 */	bne lbl_801C4A68
/* 801C4A58 001C19B8  C0 3E 07 94 */	lfs f1, 0x794(r30)
/* 801C4A5C 001C19BC  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4A60 001C19C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4A64 001C19C4  40 81 00 0C */	ble lbl_801C4A70
lbl_801C4A68:
/* 801C4A68 001C19C8  38 60 00 00 */	li r3, 0
/* 801C4A6C 001C19CC  48 00 01 54 */	b lbl_801C4BC0
lbl_801C4A70:
/* 801C4A70 001C19D0  80 04 03 04 */	lwz r0, 0x304(r4)
/* 801C4A74 001C19D4  2C 00 00 04 */	cmpwi r0, 4
/* 801C4A78 001C19D8  41 82 00 24 */	beq lbl_801C4A9C
/* 801C4A7C 001C19DC  2C 00 00 05 */	cmpwi r0, 5
/* 801C4A80 001C19E0  41 82 00 1C */	beq lbl_801C4A9C
/* 801C4A84 001C19E4  80 04 03 B8 */	lwz r0, 0x3b8(r4)
/* 801C4A88 001C19E8  2C 00 00 00 */	cmpwi r0, 0
/* 801C4A8C 001C19EC  40 82 00 10 */	bne lbl_801C4A9C
/* 801C4A90 001C19F0  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 801C4A94 001C19F4  2C 00 00 03 */	cmpwi r0, 3
/* 801C4A98 001C19F8  40 82 00 0C */	bne lbl_801C4AA4
lbl_801C4A9C:
/* 801C4A9C 001C19FC  38 60 00 00 */	li r3, 0
/* 801C4AA0 001C1A00  48 00 01 20 */	b lbl_801C4BC0
lbl_801C4AA4:
/* 801C4AA4 001C1A04  7F C4 F3 78 */	mr r4, r30
/* 801C4AA8 001C1A08  38 61 00 20 */	addi r3, r1, 0x20
/* 801C4AAC 001C1A0C  4B FF CB C5 */	bl sub_801c1670
/* 801C4AB0 001C1A10  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801C4AB4 001C1A14  7F C4 F3 78 */	mr r4, r30
/* 801C4AB8 001C1A18  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 801C4ABC 001C1A1C  7F E5 FB 78 */	mr r5, r31
/* 801C4AC0 001C1A20  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801C4AC4 001C1A24  38 61 00 14 */	addi r3, r1, 0x14
/* 801C4AC8 001C1A28  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801C4ACC 001C1A2C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 801C4AD0 001C1A30  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 801C4AD4 001C1A34  4B FF CB 05 */	bl sub_801c15d8
/* 801C4AD8 001C1A38  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 801C4ADC 001C1A3C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801C4AE0 001C1A40  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 801C4AE4 001C1A44  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 801C4AE8 001C1A48  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801C4AEC 001C1A4C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 801C4AF0 001C1A50  EC 21 00 28 */	fsubs f1, f1, f0
/* 801C4AF4 001C1A54  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801C4AF8 001C1A58  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 801C4AFC 001C1A5C  C0 42 AA D0 */	lfs f2, lbl_805AC7F0@sda21(r2)
/* 801C4B00 001C1A60  EC 84 00 28 */	fsubs f4, f4, f0
/* 801C4B04 001C1A64  EC 01 00 72 */	fmuls f0, f1, f1
/* 801C4B08 001C1A68  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 801C4B0C 001C1A6C  C0 BE 03 00 */	lfs f5, 0x300(r30)
/* 801C4B10 001C1A70  C0 DE 02 FC */	lfs f6, 0x2fc(r30)
/* 801C4B14 001C1A74  EC 63 08 28 */	fsubs f3, f3, f1
/* 801C4B18 001C1A78  EC 04 01 3A */	fmadds f0, f4, f4, f0
/* 801C4B1C 001C1A7C  EC 25 30 28 */	fsubs f1, f5, f6
/* 801C4B20 001C1A80  EC 63 00 FA */	fmadds f3, f3, f3, f0
/* 801C4B24 001C1A84  EC 22 00 72 */	fmuls f1, f2, f1
/* 801C4B28 001C1A88  EC 01 30 2A */	fadds f0, f1, f6
/* 801C4B2C 001C1A8C  EC 25 08 28 */	fsubs f1, f5, f1
/* 801C4B30 001C1A90  EC 00 00 32 */	fmuls f0, f0, f0
/* 801C4B34 001C1A94  EC 21 00 72 */	fmuls f1, f1, f1
/* 801C4B38 001C1A98  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C4B3C 001C1A9C  41 80 00 0C */	blt lbl_801C4B48
/* 801C4B40 001C1AA0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801C4B44 001C1AA4  40 81 00 0C */	ble lbl_801C4B50
lbl_801C4B48:
/* 801C4B48 001C1AA8  38 60 00 00 */	li r3, 0
/* 801C4B4C 001C1AAC  48 00 00 74 */	b lbl_801C4BC0
lbl_801C4B50:
/* 801C4B50 001C1AB0  7F C3 F3 78 */	mr r3, r30
/* 801C4B54 001C1AB4  7F E4 FB 78 */	mr r4, r31
/* 801C4B58 001C1AB8  38 A1 00 38 */	addi r5, r1, 0x38
/* 801C4B5C 001C1ABC  38 C1 00 2C */	addi r6, r1, 0x2c
/* 801C4B60 001C1AC0  48 03 02 71 */	bl IsPatternObstructed__10CPatternedCFR13CStateManagerRC9CVector3fRC9CVector3f
/* 801C4B64 001C1AC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4B68 001C1AC8  41 82 00 0C */	beq lbl_801C4B74
/* 801C4B6C 001C1ACC  38 60 00 00 */	li r3, 0
/* 801C4B70 001C1AD0  48 00 00 50 */	b lbl_801C4BC0
lbl_801C4B74:
/* 801C4B74 001C1AD4  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C4B78 001C1AD8  7F E3 FB 78 */	mr r3, r31
/* 801C4B7C 001C1ADC  38 81 00 08 */	addi r4, r1, 8
/* 801C4B80 001C1AE0  B0 01 00 08 */	sth r0, 8(r1)
/* 801C4B84 001C1AE4  4B E8 7A 21 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801C4B88 001C1AE8  7C 64 1B 78 */	mr r4, r3
/* 801C4B8C 001C1AEC  38 61 00 0C */	addi r3, r1, 0xc
/* 801C4B90 001C1AF0  4B EE 29 E5 */	bl "__ct__24TCastToPtr<10CTeamAiMgr>FP7CEntity"
/* 801C4B94 001C1AF4  80 63 00 04 */	lwz r3, 4(r3)
/* 801C4B98 001C1AF8  28 03 00 00 */	cmplwi r3, 0
/* 801C4B9C 001C1AFC  41 82 00 20 */	beq lbl_801C4BBC
/* 801C4BA0 001C1B00  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 801C4BA4 001C1B04  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 801C4BA8 001C1B08  7C 60 02 78 */	xor r0, r3, r0
/* 801C4BAC 001C1B0C  7C 00 00 34 */	cntlzw r0, r0
/* 801C4BB0 001C1B10  7C 60 00 30 */	slw r0, r3, r0
/* 801C4BB4 001C1B14  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801C4BB8 001C1B18  48 00 00 08 */	b lbl_801C4BC0
lbl_801C4BBC:
/* 801C4BBC 001C1B1C  38 60 00 01 */	li r3, 1
lbl_801C4BC0:
/* 801C4BC0 001C1B20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801C4BC4 001C1B24  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801C4BC8 001C1B28  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801C4BCC 001C1B2C  7C 08 03 A6 */	mtlr r0
/* 801C4BD0 001C1B30  38 21 00 50 */	addi r1, r1, 0x50
/* 801C4BD4 001C1B34  4E 80 00 20 */	blr

.global ShotAt__12CMetroidBetaFR13CStateManagerf
ShotAt__12CMetroidBetaFR13CStateManagerf:
/* 801C4BD8 001C1B38  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C4BDC 001C1B3C  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 801C4BE0 001C1B40  4E 80 00 20 */	blr

.global Attacked__12CMetroidBetaFR13CStateManagerf
Attacked__12CMetroidBetaFR13CStateManagerf:
/* 801C4BE4 001C1B44  C0 63 07 DC */	lfs f3, 0x7dc(r3)
/* 801C4BE8 001C1B48  C0 43 07 E0 */	lfs f2, 0x7e0(r3)
/* 801C4BEC 001C1B4C  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4BF0 001C1B50  EC 23 10 28 */	fsubs f1, f3, f2
/* 801C4BF4 001C1B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4BF8 001C1B58  40 81 00 3C */	ble lbl_801C4C34
/* 801C4BFC 001C1B5C  C0 03 06 58 */	lfs f0, 0x658(r3)
/* 801C4C00 001C1B60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C4C04 001C1B64  40 80 00 18 */	bge lbl_801C4C1C
/* 801C4C08 001C1B68  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C4C0C 001C1B6C  4C 41 13 82 */	cror 2, 1, 2
/* 801C4C10 001C1B70  7C 00 00 26 */	mfcr r0
/* 801C4C14 001C1B74  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 801C4C18 001C1B78  4E 80 00 20 */	blr
lbl_801C4C1C:
/* 801C4C1C 001C1B7C  C0 03 06 5C */	lfs f0, 0x65c(r3)
/* 801C4C20 001C1B80  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 801C4C24 001C1B84  4C 41 13 82 */	cror 2, 1, 2
/* 801C4C28 001C1B88  40 82 00 0C */	bne lbl_801C4C34
/* 801C4C2C 001C1B8C  38 60 00 01 */	li r3, 1
/* 801C4C30 001C1B90  4E 80 00 20 */	blr
lbl_801C4C34:
/* 801C4C34 001C1B94  38 60 00 00 */	li r3, 0
/* 801C4C38 001C1B98  4E 80 00 20 */	blr

.global PathShagged__12CMetroidBetaFR13CStateManagerf
PathShagged__12CMetroidBetaFR13CStateManagerf:
/* 801C4C3C 001C1B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4C40 001C1BA0  7C 08 02 A6 */	mflr r0
/* 801C4C44 001C1BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4C48 001C1BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4C4C 001C1BAC  7C 7F 1B 78 */	mr r31, r3
/* 801C4C50 001C1BB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4C54 001C1BB4  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801C4C58 001C1BB8  7D 89 03 A6 */	mtctr r12
/* 801C4C5C 001C1BBC  4E 80 04 21 */	bctrl
/* 801C4C60 001C1BC0  28 03 00 00 */	cmplwi r3, 0
/* 801C4C64 001C1BC4  41 82 00 2C */	beq lbl_801C4C90
/* 801C4C68 001C1BC8  7F E3 FB 78 */	mr r3, r31
/* 801C4C6C 001C1BCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C4C70 001C1BD0  81 8C 02 AC */	lwz r12, 0x2ac(r12)
/* 801C4C74 001C1BD4  7D 89 03 A6 */	mtctr r12
/* 801C4C78 001C1BD8  4E 80 04 21 */	bctrl
/* 801C4C7C 001C1BDC  80 63 00 CC */	lwz r3, 0xcc(r3)
/* 801C4C80 001C1BE0  7C 03 00 D0 */	neg r0, r3
/* 801C4C84 001C1BE4  7C 00 1B 78 */	or r0, r0, r3
/* 801C4C88 001C1BE8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 801C4C8C 001C1BEC  48 00 00 08 */	b lbl_801C4C94
lbl_801C4C90:
/* 801C4C90 001C1BF0  38 60 00 00 */	li r3, 0
lbl_801C4C94:
/* 801C4C94 001C1BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4C98 001C1BF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4C9C 001C1BFC  7C 08 03 A6 */	mtlr r0
/* 801C4CA0 001C1C00  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4CA4 001C1C04  4E 80 00 20 */	blr

.global AttackOver__12CMetroidBetaFR13CStateManagerf
AttackOver__12CMetroidBetaFR13CStateManagerf:
/* 801C4CA8 001C1C08  38 60 00 00 */	li r3, 0
/* 801C4CAC 001C1C0C  4E 80 00 20 */	blr

.global sub_801c4cb0
sub_801c4cb0:
/* 801C4CB0 001C1C10  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C4CB4 001C1C14  38 80 00 00 */	li r4, 0
/* 801C4CB8 001C1C18  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C4CBC 001C1C1C  41 82 00 18 */	beq lbl_801C4CD4
/* 801C4CC0 001C1C20  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801C4CC4 001C1C24  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801C4CC8 001C1C28  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801C4CCC 001C1C2C  40 82 00 08 */	bne lbl_801C4CD4
/* 801C4CD0 001C1C30  38 80 00 01 */	li r4, 1
lbl_801C4CD4:
/* 801C4CD4 001C1C34  7C 83 23 78 */	mr r3, r4
/* 801C4CD8 001C1C38  4E 80 00 20 */	blr

.global GetCollisionResponseType__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CWeaponModei
GetCollisionResponseType__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CWeaponModei:
/* 801C4CDC 001C1C3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C4CE0 001C1C40  7C 08 02 A6 */	mflr r0
/* 801C4CE4 001C1C44  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C4CE8 001C1C48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C4CEC 001C1C4C  3B E0 00 21 */	li r31, 0x21
/* 801C4CF0 001C1C50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C4CF4 001C1C54  7C 7E 1B 78 */	mr r30, r3
/* 801C4CF8 001C1C58  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C4CFC 001C1C5C  7C DD 33 78 */	mr r29, r6
/* 801C4D00 001C1C60  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801C4D04 001C1C64  4B F7 53 C9 */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801C4D08 001C1C68  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4D0C 001C1C6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4D10 001C1C70  7C 00 00 26 */	mfcr r0
/* 801C4D14 001C1C74  7F C3 F3 78 */	mr r3, r30
/* 801C4D18 001C1C78  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C4D1C 001C1C7C  54 1E 17 FE */	rlwinm r30, r0, 2, 0x1f, 0x1f
/* 801C4D20 001C1C80  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C4D24 001C1C84  7D 89 03 A6 */	mtctr r12
/* 801C4D28 001C1C88  4E 80 04 21 */	bctrl
/* 801C4D2C 001C1C8C  7F A4 EB 78 */	mr r4, r29
/* 801C4D30 001C1C90  38 A0 00 00 */	li r5, 0
/* 801C4D34 001C1C94  4B F3 D9 D5 */	bl WeaponHurts__20CDamageVulnerabilityCFRC11CWeaponMode
/* 801C4D38 001C1C98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4D3C 001C1C9C  40 82 00 10 */	bne lbl_801C4D4C
/* 801C4D40 001C1CA0  28 1E 00 00 */	cmplwi r30, 0
/* 801C4D44 001C1CA4  40 82 00 08 */	bne lbl_801C4D4C
/* 801C4D48 001C1CA8  3B E0 00 3A */	li r31, 0x3a
lbl_801C4D4C:
/* 801C4D4C 001C1CAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C4D50 001C1CB0  7F E3 FB 78 */	mr r3, r31
/* 801C4D54 001C1CB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C4D58 001C1CB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C4D5C 001C1CBC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C4D60 001C1CC0  7C 08 03 A6 */	mtlr r0
/* 801C4D64 001C1CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 801C4D68 001C1CC8  4E 80 00 20 */	blr

.global GetDamageVulnerability__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CDamageInfo
GetDamageVulnerability__12CMetroidBetaCFRC9CVector3fRC9CVector3fRC11CDamageInfo:
/* 801C4D6C 001C1CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4D70 001C1CD0  7C 08 02 A6 */	mflr r0
/* 801C4D74 001C1CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4D78 001C1CD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4D7C 001C1CDC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C4D80 001C1CE0  7D 89 03 A6 */	mtctr r12
/* 801C4D84 001C1CE4  4E 80 04 21 */	bctrl
/* 801C4D88 001C1CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4D8C 001C1CEC  7C 08 03 A6 */	mtlr r0
/* 801C4D90 001C1CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4D94 001C1CF4  4E 80 00 20 */	blr

.global GetDamageVulnerability__12CMetroidBetaCFv
GetDamageVulnerability__12CMetroidBetaCFv:
/* 801C4D98 001C1CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C4D9C 001C1CFC  7C 08 02 A6 */	mflr r0
/* 801C4DA0 001C1D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C4DA4 001C1D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C4DA8 001C1D08  7C 7F 1B 78 */	mr r31, r3
/* 801C4DAC 001C1D0C  80 63 04 50 */	lwz r3, 0x450(r3)
/* 801C4DB0 001C1D10  4B F7 53 1D */	bl GetPercentageFrozen__15CBodyControllerCFv
/* 801C4DB4 001C1D14  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4DB8 001C1D18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C4DBC 001C1D1C  40 81 00 0C */	ble lbl_801C4DC8
/* 801C4DC0 001C1D20  38 7F 05 6C */	addi r3, r31, 0x56c
/* 801C4DC4 001C1D24  48 00 00 40 */	b lbl_801C4E04
lbl_801C4DC8:
/* 801C4DC8 001C1D28  88 7F 08 40 */	lbz r3, 0x840(r31)
/* 801C4DCC 001C1D2C  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801C4DD0 001C1D30  41 82 00 0C */	beq lbl_801C4DDC
/* 801C4DD4 001C1D34  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 801C4DD8 001C1D38  48 00 00 2C */	b lbl_801C4E04
lbl_801C4DDC:
/* 801C4DDC 001C1D3C  54 60 EF FF */	rlwinm. r0, r3, 0x1d, 0x1f, 0x1f
/* 801C4DE0 001C1D40  41 82 00 1C */	beq lbl_801C4DFC
/* 801C4DE4 001C1D44  80 7F 04 50 */	lwz r3, 0x450(r31)
/* 801C4DE8 001C1D48  88 03 03 00 */	lbz r0, 0x300(r3)
/* 801C4DEC 001C1D4C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 801C4DF0 001C1D50  40 82 00 0C */	bne lbl_801C4DFC
/* 801C4DF4 001C1D54  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 801C4DF8 001C1D58  48 00 00 0C */	b lbl_801C4E04
lbl_801C4DFC:
/* 801C4DFC 001C1D5C  7F E3 FB 78 */	mr r3, r31
/* 801C4E00 001C1D60  4B ED DF 71 */	bl GetDamageVulnerability__3CAiCFv
lbl_801C4E04:
/* 801C4E04 001C1D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C4E08 001C1D68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C4E0C 001C1D6C  7C 08 03 A6 */	mtlr r0
/* 801C4E10 001C1D70  38 21 00 10 */	addi r1, r1, 0x10
/* 801C4E14 001C1D74  4E 80 00 20 */	blr

.global GetOrigin__12CMetroidBetaCFRC13CStateManagerRC11CTeamAiRole
GetOrigin__12CMetroidBetaCFRC13CStateManagerRC11CTeamAiRole:
/* 801C4E18 001C1D78  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801C4E1C 001C1D7C  7C 08 02 A6 */	mflr r0
/* 801C4E20 001C1D80  90 01 00 94 */	stw r0, 0x94(r1)
/* 801C4E24 001C1D84  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801C4E28 001C1D88  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 801C4E2C 001C1D8C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801C4E30 001C1D90  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 801C4E34 001C1D94  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801C4E38 001C1D98  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801C4E3C 001C1D9C  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801C4E40 001C1DA0  83 E5 08 4C */	lwz r31, 0x84c(r5)
/* 801C4E44 001C1DA4  7C 7D 1B 78 */	mr r29, r3
/* 801C4E48 001C1DA8  C0 A4 00 50 */	lfs f5, 0x50(r4)
/* 801C4E4C 001C1DAC  7C 9E 23 78 */	mr r30, r4
/* 801C4E50 001C1DB0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 801C4E54 001C1DB4  38 61 00 08 */	addi r3, r1, 8
/* 801C4E58 001C1DB8  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 801C4E5C 001C1DBC  EC 45 08 28 */	fsubs f2, f5, f1
/* 801C4E60 001C1DC0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 801C4E64 001C1DC4  C0 84 00 60 */	lfs f4, 0x60(r4)
/* 801C4E68 001C1DC8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801C4E6C 001C1DCC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C4E70 001C1DD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801C4E74 001C1DD4  EC 64 18 28 */	fsubs f3, f4, f3
/* 801C4E78 001C1DD8  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 801C4E7C 001C1DDC  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 801C4E80 001C1DE0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 801C4E84 001C1DE4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801C4E88 001C1DE8  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 801C4E8C 001C1DEC  48 14 F3 75 */	bl __ct__9CVector2fFff
/* 801C4E90 001C1DF0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801C4E94 001C1DF4  38 61 00 4C */	addi r3, r1, 0x4c
/* 801C4E98 001C1DF8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801C4E9C 001C1DFC  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C4EA0 001C1E00  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801C4EA4 001C1E04  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801C4EA8 001C1E08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801C4EAC 001C1E0C  48 14 F8 4D */	bl CanBeNormalized__9CVector3fCFv
/* 801C4EB0 001C1E10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C4EB4 001C1E14  41 82 00 18 */	beq lbl_801C4ECC
/* 801C4EB8 001C1E18  38 61 00 28 */	addi r3, r1, 0x28
/* 801C4EBC 001C1E1C  38 81 00 4C */	addi r4, r1, 0x4c
/* 801C4EC0 001C1E20  48 14 F9 91 */	bl AsNormalized__9CVector3fCFv
/* 801C4EC4 001C1E24  38 81 00 28 */	addi r4, r1, 0x28
/* 801C4EC8 001C1E28  48 00 00 20 */	b lbl_801C4EE8
lbl_801C4ECC:
/* 801C4ECC 001C1E2C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 801C4ED0 001C1E30  38 81 00 1C */	addi r4, r1, 0x1c
/* 801C4ED4 001C1E34  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 801C4ED8 001C1E38  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 801C4EDC 001C1E3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801C4EE0 001C1E40  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801C4EE4 001C1E44  D0 41 00 24 */	stfs f2, 0x24(r1)
lbl_801C4EE8:
/* 801C4EE8 001C1E48  80 7E 04 50 */	lwz r3, 0x450(r30)
/* 801C4EEC 001C1E4C  C3 E4 00 00 */	lfs f31, 0(r4)
/* 801C4EF0 001C1E50  C3 C4 00 04 */	lfs f30, 4(r4)
/* 801C4EF4 001C1E54  38 63 02 A4 */	addi r3, r3, 0x2a4
/* 801C4EF8 001C1E58  4B F6 EF B5 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801C4EFC 001C1E5C  C0 02 AA AC */	lfs f0, lbl_805AC7CC@sda21(r2)
/* 801C4F00 001C1E60  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 801C4F04 001C1E64  EC 00 00 72 */	fmuls f0, f0, f1
/* 801C4F08 001C1E68  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 801C4F0C 001C1E6C  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 801C4F10 001C1E70  C0 42 AB 08 */	lfs f2, lbl_805AC828@sda21(r2)
/* 801C4F14 001C1E74  EC 20 07 F2 */	fmuls f1, f0, f31
/* 801C4F18 001C1E78  D0 A1 00 10 */	stfs f5, 0x10(r1)
/* 801C4F1C 001C1E7C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801C4F20 001C1E80  EC 42 18 2A */	fadds f2, f2, f3
/* 801C4F24 001C1E84  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 801C4F28 001C1E88  EC 25 08 2A */	fadds f1, f5, f1
/* 801C4F2C 001C1E8C  EC 04 00 2A */	fadds f0, f4, f0
/* 801C4F30 001C1E90  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 801C4F34 001C1E94  D0 3D 00 00 */	stfs f1, 0(r29)
/* 801C4F38 001C1E98  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801C4F3C 001C1E9C  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801C4F40 001C1EA0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 801C4F44 001C1EA4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801C4F48 001C1EA8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 801C4F4C 001C1EAC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801C4F50 001C1EB0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801C4F54 001C1EB4  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801C4F58 001C1EB8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801C4F5C 001C1EBC  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801C4F60 001C1EC0  7C 08 03 A6 */	mtlr r0
/* 801C4F64 001C1EC4  38 21 00 90 */	addi r1, r1, 0x90
/* 801C4F68 001C1EC8  4E 80 00 20 */	blr

.global GetAimPosition__12CMetroidBetaCFRC13CStateManagerf
GetAimPosition__12CMetroidBetaCFRC13CStateManagerf:
/* 801C4F6C 001C1ECC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C4F70 001C1ED0  7C 08 02 A6 */	mflr r0
/* 801C4F74 001C1ED4  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C4F78 001C1ED8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C4F7C 001C1EDC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801C4F80 001C1EE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C4F84 001C1EE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C4F88 001C1EE8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C4F8C 001C1EEC  7C 9E 23 78 */	mr r30, r4
/* 801C4F90 001C1EF0  FF E0 08 90 */	fmr f31, f1
/* 801C4F94 001C1EF4  A0 04 07 90 */	lhz r0, 0x790(r4)
/* 801C4F98 001C1EF8  7C BF 2B 78 */	mr r31, r5
/* 801C4F9C 001C1EFC  7C 7D 1B 78 */	mr r29, r3
/* 801C4FA0 001C1F00  38 81 00 08 */	addi r4, r1, 8
/* 801C4FA4 001C1F04  B0 01 00 08 */	sth r0, 8(r1)
/* 801C4FA8 001C1F08  7F E3 FB 78 */	mr r3, r31
/* 801C4FAC 001C1F0C  4B E8 75 F9 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801C4FB0 001C1F10  7C 64 1B 78 */	mr r4, r3
/* 801C4FB4 001C1F14  38 61 00 0C */	addi r3, r1, 0xc
/* 801C4FB8 001C1F18  4B EE A3 95 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C4FBC 001C1F1C  80 63 00 04 */	lwz r3, 4(r3)
/* 801C4FC0 001C1F20  28 03 00 00 */	cmplwi r3, 0
/* 801C4FC4 001C1F24  41 82 00 20 */	beq lbl_801C4FE4
/* 801C4FC8 001C1F28  C0 43 00 60 */	lfs f2, 0x60(r3)
/* 801C4FCC 001C1F2C  C0 23 00 50 */	lfs f1, 0x50(r3)
/* 801C4FD0 001C1F30  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 801C4FD4 001C1F34  D0 1D 00 00 */	stfs f0, 0(r29)
/* 801C4FD8 001C1F38  D0 3D 00 04 */	stfs f1, 4(r29)
/* 801C4FDC 001C1F3C  D0 5D 00 08 */	stfs f2, 8(r29)
/* 801C4FE0 001C1F40  48 00 00 18 */	b lbl_801C4FF8
lbl_801C4FE4:
/* 801C4FE4 001C1F44  FC 20 F8 90 */	fmr f1, f31
/* 801C4FE8 001C1F48  7F A3 EB 78 */	mr r3, r29
/* 801C4FEC 001C1F4C  7F C4 F3 78 */	mr r4, r30
/* 801C4FF0 001C1F50  7F E5 FB 78 */	mr r5, r31
/* 801C4FF4 001C1F54  4B EB 35 F5 */	bl GetAimPosition__10CPatternedCFRC13CStateManagerf
lbl_801C4FF8:
/* 801C4FF8 001C1F58  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801C4FFC 001C1F5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C5000 001C1F60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C5004 001C1F64  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C5008 001C1F68  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C500C 001C1F6C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C5010 001C1F70  7C 08 03 A6 */	mtlr r0
/* 801C5014 001C1F74  38 21 00 40 */	addi r1, r1, 0x40
/* 801C5018 001C1F78  4E 80 00 20 */	blr

.global DoUserAnimEvent__12CMetroidBetaFR13CStateManagerRC13CInt32POINode14EUserEventType
DoUserAnimEvent__12CMetroidBetaFR13CStateManagerRC13CInt32POINode14EUserEventType:
/* 801C501C 001C1F7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5020 001C1F80  7C 08 02 A6 */	mflr r0
/* 801C5024 001C1F84  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C5028 001C1F88  38 00 00 00 */	li r0, 0
/* 801C502C 001C1F8C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801C5030 001C1F90  FF E0 08 90 */	fmr f31, f1
/* 801C5034 001C1F94  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801C5038 001C1F98  7C DF 33 78 */	mr r31, r6
/* 801C503C 001C1F9C  2C 1F 00 07 */	cmpwi r31, 7
/* 801C5040 001C1FA0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 801C5044 001C1FA4  7C BE 2B 78 */	mr r30, r5
/* 801C5048 001C1FA8  93 A1 00 0C */	stw r29, 0xc(r1)
/* 801C504C 001C1FAC  7C 9D 23 78 */	mr r29, r4
/* 801C5050 001C1FB0  93 81 00 08 */	stw r28, 8(r1)
/* 801C5054 001C1FB4  7C 7C 1B 78 */	mr r28, r3
/* 801C5058 001C1FB8  41 82 00 08 */	beq lbl_801C5060
/* 801C505C 001C1FBC  48 00 00 14 */	b lbl_801C5070
lbl_801C5060:
/* 801C5060 001C1FC0  7F A5 EB 78 */	mr r5, r29
/* 801C5064 001C1FC4  38 80 00 13 */	li r4, 0x13
/* 801C5068 001C1FC8  4B E8 F2 E9 */	bl AddMaterial__6CActorF14EMaterialTypesR13CStateManager
/* 801C506C 001C1FCC  38 00 00 01 */	li r0, 1
lbl_801C5070:
/* 801C5070 001C1FD0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801C5074 001C1FD4  40 82 00 1C */	bne lbl_801C5090
/* 801C5078 001C1FD8  FC 20 F8 90 */	fmr f1, f31
/* 801C507C 001C1FDC  7F 83 E3 78 */	mr r3, r28
/* 801C5080 001C1FE0  7F A4 EB 78 */	mr r4, r29
/* 801C5084 001C1FE4  7F C5 F3 78 */	mr r5, r30
/* 801C5088 001C1FE8  7F E6 FB 78 */	mr r6, r31
/* 801C508C 001C1FEC  4B EB 3E 25 */	bl DoUserAnimEvent__10CPatternedFR13CStateManagerRC13CInt32POINode14EUserEventType
lbl_801C5090:
/* 801C5090 001C1FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C5094 001C1FF4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801C5098 001C1FF8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801C509C 001C1FFC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 801C50A0 001C2000  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 801C50A4 001C2004  83 81 00 08 */	lwz r28, 8(r1)
/* 801C50A8 001C2008  7C 08 03 A6 */	mtlr r0
/* 801C50AC 001C200C  38 21 00 20 */	addi r1, r1, 0x20
/* 801C50B0 001C2010  4E 80 00 20 */	blr

.global CollidedWith__12CMetroidBetaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
CollidedWith__12CMetroidBetaFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager:
/* 801C50B4 001C2014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C50B8 001C2018  7C 08 02 A6 */	mflr r0
/* 801C50BC 001C201C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C50C0 001C2020  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C50C4 001C2024  7C DF 33 78 */	mr r31, r6
/* 801C50C8 001C2028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C50CC 001C202C  7C BE 2B 78 */	mr r30, r5
/* 801C50D0 001C2030  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801C50D4 001C2034  7C 9D 23 78 */	mr r29, r4
/* 801C50D8 001C2038  93 81 00 10 */	stw r28, 0x10(r1)
/* 801C50DC 001C203C  7C 7C 1B 78 */	mr r28, r3
/* 801C50E0 001C2040  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C50E4 001C2044  54 00 F7 FF */	rlwinm. r0, r0, 0x1e, 0x1f, 0x1f
/* 801C50E8 001C2048  41 82 00 FC */	beq lbl_801C51E4
/* 801C50EC 001C204C  88 0D A4 A0 */	lbz r0, lbl_805A9060@sda21(r13)
/* 801C50F0 001C2050  7C 00 07 75 */	extsb. r0, r0
/* 801C50F4 001C2054  40 82 00 90 */	bne lbl_801C5184
/* 801C50F8 001C2058  38 00 00 00 */	li r0, 0
/* 801C50FC 001C205C  80 AD 91 2C */	lwz r5, lbl_805A7CEC@sda21(r13)
/* 801C5100 001C2060  90 0D A4 AC */	stw r0, lbl_805A906C@sda21(r13)
/* 801C5104 001C2064  38 60 00 00 */	li r3, 0
/* 801C5108 001C2068  38 80 00 01 */	li r4, 1
/* 801C510C 001C206C  90 0D A4 A8 */	stw r0, lbl_805A9068@sda21(r13)
/* 801C5110 001C2070  48 1C 4D E5 */	bl __shl2i
/* 801C5114 001C2074  80 0D A4 A8 */	lwz r0, lbl_805A9068@sda21(r13)
/* 801C5118 001C2078  80 CD A4 AC */	lwz r6, lbl_805A906C@sda21(r13)
/* 801C511C 001C207C  7C 00 1B 78 */	or r0, r0, r3
/* 801C5120 001C2080  80 AD 91 30 */	lwz r5, lbl_805A7CF0@sda21(r13)
/* 801C5124 001C2084  7C C4 23 78 */	or r4, r6, r4
/* 801C5128 001C2088  90 0D A4 A8 */	stw r0, lbl_805A9068@sda21(r13)
/* 801C512C 001C208C  38 60 00 00 */	li r3, 0
/* 801C5130 001C2090  90 8D A4 AC */	stw r4, lbl_805A906C@sda21(r13)
/* 801C5134 001C2094  38 80 00 01 */	li r4, 1
/* 801C5138 001C2098  48 1C 4D BD */	bl __shl2i
/* 801C513C 001C209C  80 0D A4 A8 */	lwz r0, lbl_805A9068@sda21(r13)
/* 801C5140 001C20A0  80 CD A4 AC */	lwz r6, lbl_805A906C@sda21(r13)
/* 801C5144 001C20A4  7C 00 1B 78 */	or r0, r0, r3
/* 801C5148 001C20A8  80 AD 91 34 */	lwz r5, lbl_805A7CF4@sda21(r13)
/* 801C514C 001C20AC  7C C4 23 78 */	or r4, r6, r4
/* 801C5150 001C20B0  90 0D A4 A8 */	stw r0, lbl_805A9068@sda21(r13)
/* 801C5154 001C20B4  38 60 00 00 */	li r3, 0
/* 801C5158 001C20B8  90 8D A4 AC */	stw r4, lbl_805A906C@sda21(r13)
/* 801C515C 001C20BC  38 80 00 01 */	li r4, 1
/* 801C5160 001C20C0  48 1C 4D 95 */	bl __shl2i
/* 801C5164 001C20C4  80 AD A4 A8 */	lwz r5, lbl_805A9068@sda21(r13)
/* 801C5168 001C20C8  38 00 00 01 */	li r0, 1
/* 801C516C 001C20CC  80 CD A4 AC */	lwz r6, lbl_805A906C@sda21(r13)
/* 801C5170 001C20D0  7C A3 1B 78 */	or r3, r5, r3
/* 801C5174 001C20D4  98 0D A4 A0 */	stb r0, lbl_805A9060@sda21(r13)
/* 801C5178 001C20D8  7C C0 23 78 */	or r0, r6, r4
/* 801C517C 001C20DC  90 0D A4 AC */	stw r0, lbl_805A906C@sda21(r13)
/* 801C5180 001C20E0  90 6D A4 A8 */	stw r3, lbl_805A9068@sda21(r13)
lbl_801C5184:
/* 801C5184 001C20E4  80 1E 00 00 */	lwz r0, 0(r30)
/* 801C5188 001C20E8  38 BE 00 04 */	addi r5, r30, 4
/* 801C518C 001C20EC  80 CD A4 A8 */	lwz r6, lbl_805A9068@sda21(r13)
/* 801C5190 001C20F0  38 80 00 00 */	li r4, 0
/* 801C5194 001C20F4  80 ED A4 AC */	lwz r7, lbl_805A906C@sda21(r13)
/* 801C5198 001C20F8  7C 09 03 A6 */	mtctr r0
/* 801C519C 001C20FC  2C 00 00 00 */	cmpwi r0, 0
/* 801C51A0 001C2100  40 81 00 44 */	ble lbl_801C51E4
lbl_801C51A4:
/* 801C51A4 001C2104  80 05 00 38 */	lwz r0, 0x38(r5)
/* 801C51A8 001C2108  80 65 00 3C */	lwz r3, 0x3c(r5)
/* 801C51AC 001C210C  7C C0 00 38 */	and r0, r6, r0
/* 801C51B0 001C2110  7C E3 18 38 */	and r3, r7, r3
/* 801C51B4 001C2114  7C 63 22 78 */	xor r3, r3, r4
/* 801C51B8 001C2118  7C 00 22 78 */	xor r0, r0, r4
/* 801C51BC 001C211C  7C 60 03 79 */	or. r0, r3, r0
/* 801C51C0 001C2120  41 82 00 1C */	beq lbl_801C51DC
/* 801C51C4 001C2124  C0 42 AA B4 */	lfs f2, lbl_805AC7D4@sda21(r2)
/* 801C51C8 001C2128  C0 3C 05 00 */	lfs f1, 0x500(r28)
/* 801C51CC 001C212C  C0 1C 07 A4 */	lfs f0, 0x7a4(r28)
/* 801C51D0 001C2130  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 801C51D4 001C2134  D0 1C 07 A4 */	stfs f0, 0x7a4(r28)
/* 801C51D8 001C2138  48 00 00 0C */	b lbl_801C51E4
lbl_801C51DC:
/* 801C51DC 001C213C  38 A5 00 60 */	addi r5, r5, 0x60
/* 801C51E0 001C2140  42 00 FF C4 */	bdnz lbl_801C51A4
lbl_801C51E4:
/* 801C51E4 001C2144  7F 83 E3 78 */	mr r3, r28
/* 801C51E8 001C2148  7F A4 EB 78 */	mr r4, r29
/* 801C51EC 001C214C  7F C5 F3 78 */	mr r5, r30
/* 801C51F0 001C2150  7F E6 FB 78 */	mr r6, r31
/* 801C51F4 001C2154  4B EB 44 5D */	bl CollidedWith__10CPatternedFRC9TUniqueIdRC18CCollisionInfoListR13CStateManager
/* 801C51F8 001C2158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C51FC 001C215C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C5200 001C2160  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C5204 001C2164  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801C5208 001C2168  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801C520C 001C216C  7C 08 03 A6 */	mtlr r0
/* 801C5210 001C2170  38 21 00 20 */	addi r1, r1, 0x20
/* 801C5214 001C2174  4E 80 00 20 */	blr

.global Touch__12CMetroidBetaFR6CActorR13CStateManager
Touch__12CMetroidBetaFR6CActorR13CStateManager:
/* 801C5218 001C2178  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801C521C 001C217C  7C 08 02 A6 */	mflr r0
/* 801C5220 001C2180  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C5224 001C2184  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801C5228 001C2188  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 801C522C 001C218C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801C5230 001C2190  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801C5234 001C2194  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801C5238 001C2198  93 81 00 60 */	stw r28, 0x60(r1)
/* 801C523C 001C219C  88 03 04 00 */	lbz r0, 0x400(r3)
/* 801C5240 001C21A0  7C 7C 1B 78 */	mr r28, r3
/* 801C5244 001C21A4  7C 9D 23 78 */	mr r29, r4
/* 801C5248 001C21A8  7C BE 2B 78 */	mr r30, r5
/* 801C524C 001C21AC  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C5250 001C21B0  41 82 01 E8 */	beq lbl_801C5438
/* 801C5254 001C21B4  38 61 00 10 */	addi r3, r1, 0x10
/* 801C5258 001C21B8  4B EE 85 21 */	bl "__ct__29TCastToPtr<15CGameProjectile>FR7CEntity"
/* 801C525C 001C21BC  83 E3 00 04 */	lwz r31, 4(r3)
/* 801C5260 001C21C0  28 1F 00 00 */	cmplwi r31, 0
/* 801C5264 001C21C4  41 82 01 C4 */	beq lbl_801C5428
/* 801C5268 001C21C8  80 7E 08 4C */	lwz r3, 0x84c(r30)
/* 801C526C 001C21CC  A0 9F 00 EC */	lhz r4, 0xec(r31)
/* 801C5270 001C21D0  A0 03 00 08 */	lhz r0, 8(r3)
/* 801C5274 001C21D4  7C 04 00 40 */	cmplw r4, r0
/* 801C5278 001C21D8  40 82 01 B0 */	bne lbl_801C5428
/* 801C527C 001C21DC  80 7F 00 E8 */	lwz r3, 0xe8(r31)
/* 801C5280 001C21E0  54 60 07 7A */	rlwinm r0, r3, 0, 0x1d, 0x1d
/* 801C5284 001C21E4  2C 00 00 04 */	cmpwi r0, 4
/* 801C5288 001C21E8  40 82 00 40 */	bne lbl_801C52C8
/* 801C528C 001C21EC  54 60 07 38 */	rlwinm r0, r3, 0, 0x1c, 0x1c
/* 801C5290 001C21F0  2C 00 00 08 */	cmpwi r0, 8
/* 801C5294 001C21F4  41 82 00 34 */	beq lbl_801C52C8
/* 801C5298 001C21F8  C3 FC 06 40 */	lfs f31, 0x640(r28)
/* 801C529C 001C21FC  7F 83 E3 78 */	mr r3, r28
/* 801C52A0 001C2200  4B FF C3 09 */	bl sub_801c15a8
/* 801C52A4 001C2204  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801C52A8 001C2208  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C52AC 001C220C  38 60 00 00 */	li r3, 0
/* 801C52B0 001C2210  D0 3C 07 9C */	stfs f1, 0x79c(r28)
/* 801C52B4 001C2214  D0 1C 08 3C */	stfs f0, 0x83c(r28)
/* 801C52B8 001C2218  88 1C 08 40 */	lbz r0, 0x840(r28)
/* 801C52BC 001C221C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C52C0 001C2220  98 1C 08 40 */	stb r0, 0x840(r28)
/* 801C52C4 001C2224  48 00 01 54 */	b lbl_801C5418
lbl_801C52C8:
/* 801C52C8 001C2228  7F 83 E3 78 */	mr r3, r28
/* 801C52CC 001C222C  81 9C 00 00 */	lwz r12, 0(r28)
/* 801C52D0 001C2230  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C52D4 001C2234  7D 89 03 A6 */	mtctr r12
/* 801C52D8 001C2238  4E 80 04 21 */	bctrl
/* 801C52DC 001C223C  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 801C52E0 001C2240  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 801C52E4 001C2244  2C 00 00 08 */	cmpwi r0, 8
/* 801C52E8 001C2248  40 82 01 20 */	bne lbl_801C5408
/* 801C52EC 001C224C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801C52F0 001C2250  38 A0 00 00 */	li r5, 0
/* 801C52F4 001C2254  50 A0 3E 30 */	rlwimi r0, r5, 7, 0x18, 0x18
/* 801C52F8 001C2258  38 C0 00 01 */	li r6, 1
/* 801C52FC 001C225C  98 01 00 0C */	stb r0, 0xc(r1)
/* 801C5300 001C2260  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801C5304 001C2264  50 A0 36 72 */	rlwimi r0, r5, 6, 0x19, 0x19
/* 801C5308 001C2268  38 81 00 08 */	addi r4, r1, 8
/* 801C530C 001C226C  98 01 00 0C */	stb r0, 0xc(r1)
/* 801C5310 001C2270  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801C5314 001C2274  50 A0 2E B4 */	rlwimi r0, r5, 5, 0x1a, 0x1a
/* 801C5318 001C2278  38 A0 00 00 */	li r5, 0
/* 801C531C 001C227C  90 C1 00 08 */	stw r6, 8(r1)
/* 801C5320 001C2280  98 01 00 0C */	stb r0, 0xc(r1)
/* 801C5324 001C2284  4B F3 D2 61 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 801C5328 001C2288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C532C 001C228C  41 82 00 DC */	beq lbl_801C5408
/* 801C5330 001C2290  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 801C5334 001C2294  C3 E2 AA A4 */	lfs f31, lbl_805AC7C4@sda21(r2)
/* 801C5338 001C2298  54 00 07 7A */	rlwinm r0, r0, 0, 0x1d, 0x1d
/* 801C533C 001C229C  2C 00 00 04 */	cmpwi r0, 4
/* 801C5340 001C22A0  40 82 00 08 */	bne lbl_801C5348
/* 801C5344 001C22A4  C3 E2 AA 9C */	lfs f31, lbl_805AC7BC@sda21(r2)
lbl_801C5348:
/* 801C5348 001C22A8  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 801C534C 001C22AC  38 61 00 30 */	addi r3, r1, 0x30
/* 801C5350 001C22B0  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 801C5354 001C22B4  38 9C 00 34 */	addi r4, r28, 0x34
/* 801C5358 001C22B8  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 801C535C 001C22BC  38 A1 00 24 */	addi r5, r1, 0x24
/* 801C5360 001C22C0  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 801C5364 001C22C4  EC 45 00 28 */	fsubs f2, f5, f0
/* 801C5368 001C22C8  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 801C536C 001C22CC  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 801C5370 001C22D0  EC 24 08 28 */	fsubs f1, f4, f1
/* 801C5374 001C22D4  EC 03 00 28 */	fsubs f0, f3, f0
/* 801C5378 001C22D8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801C537C 001C22DC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801C5380 001C22E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 801C5384 001C22E4  C0 5F 02 9C */	lfs f2, 0x29c(r31)
/* 801C5388 001C22E8  C0 3F 02 A0 */	lfs f1, 0x2a0(r31)
/* 801C538C 001C22EC  C0 1F 02 98 */	lfs f0, 0x298(r31)
/* 801C5390 001C22F0  EC 45 10 28 */	fsubs f2, f5, f2
/* 801C5394 001C22F4  EC 24 08 28 */	fsubs f1, f4, f1
/* 801C5398 001C22F8  EC 03 00 28 */	fsubs f0, f3, f0
/* 801C539C 001C22FC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801C53A0 001C2300  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801C53A4 001C2304  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 801C53A8 001C2308  48 14 D6 7D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801C53AC 001C230C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801C53B0 001C2310  38 81 00 30 */	addi r4, r1, 0x30
/* 801C53B4 001C2314  48 14 EA 1D */	bl __ct__13CUnitVector3fFRC9CVector3f
/* 801C53B8 001C2318  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 801C53BC 001C231C  7F 83 E3 78 */	mr r3, r28
/* 801C53C0 001C2320  80 C1 00 3C */	lwz r6, 0x3c(r1)
/* 801C53C4 001C2324  7F C4 F3 78 */	mr r4, r30
/* 801C53C8 001C2328  80 E1 00 40 */	lwz r7, 0x40(r1)
/* 801C53CC 001C232C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 801C53D0 001C2330  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C53D4 001C2334  38 A1 00 48 */	addi r5, r1, 0x48
/* 801C53D8 001C2338  90 C1 00 18 */	stw r6, 0x18(r1)
/* 801C53DC 001C233C  38 C1 00 18 */	addi r6, r1, 0x18
/* 801C53E0 001C2340  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 801C53E4 001C2344  90 01 00 20 */	stw r0, 0x20(r1)
/* 801C53E8 001C2348  81 9C 00 00 */	lwz r12, 0(r28)
/* 801C53EC 001C234C  81 8C 02 90 */	lwz r12, 0x290(r12)
/* 801C53F0 001C2350  7D 89 03 A6 */	mtctr r12
/* 801C53F4 001C2354  4E 80 04 21 */	bctrl
/* 801C53F8 001C2358  88 1C 08 40 */	lbz r0, 0x840(r28)
/* 801C53FC 001C235C  38 60 00 00 */	li r3, 0
/* 801C5400 001C2360  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C5404 001C2364  98 1C 08 40 */	stb r0, 0x840(r28)
lbl_801C5408:
/* 801C5408 001C2368  C0 3C 08 3C */	lfs f1, 0x83c(r28)
/* 801C540C 001C236C  C0 02 AA EC */	lfs f0, lbl_805AC80C@sda21(r2)
/* 801C5410 001C2370  EC 01 00 2A */	fadds f0, f1, f0
/* 801C5414 001C2374  D0 1C 08 3C */	stfs f0, 0x83c(r28)
lbl_801C5418:
/* 801C5418 001C2378  88 1C 08 40 */	lbz r0, 0x840(r28)
/* 801C541C 001C237C  38 60 00 01 */	li r3, 1
/* 801C5420 001C2380  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801C5424 001C2384  98 1C 08 40 */	stb r0, 0x840(r28)
lbl_801C5428:
/* 801C5428 001C2388  7F 83 E3 78 */	mr r3, r28
/* 801C542C 001C238C  7F A4 EB 78 */	mr r4, r29
/* 801C5430 001C2390  7F C5 F3 78 */	mr r5, r30
/* 801C5434 001C2394  4B EB 46 6D */	bl Touch__10CPatternedFR6CActorR13CStateManager
lbl_801C5438:
/* 801C5438 001C2398  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 801C543C 001C239C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801C5440 001C23A0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801C5444 001C23A4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801C5448 001C23A8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801C544C 001C23AC  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801C5450 001C23B0  83 81 00 60 */	lwz r28, 0x60(r1)
/* 801C5454 001C23B4  7C 08 03 A6 */	mtlr r0
/* 801C5458 001C23B8  38 21 00 80 */	addi r1, r1, 0x80
/* 801C545C 001C23BC  4E 80 00 20 */	blr

.global AddToRenderer__12CMetroidBetaCFRC14CFrustumPlanesRC13CStateManager
AddToRenderer__12CMetroidBetaCFRC14CFrustumPlanesRC13CStateManager:
/* 801C5460 001C23C0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801C5464 001C23C4  7C 08 02 A6 */	mflr r0
/* 801C5468 001C23C8  90 01 00 74 */	stw r0, 0x74(r1)
/* 801C546C 001C23CC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 801C5470 001C23D0  7C BF 2B 78 */	mr r31, r5
/* 801C5474 001C23D4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 801C5478 001C23D8  7C 9E 23 78 */	mr r30, r4
/* 801C547C 001C23DC  38 80 00 00 */	li r4, 0
/* 801C5480 001C23E0  93 A1 00 64 */	stw r29, 0x64(r1)
/* 801C5484 001C23E4  7C 7D 1B 78 */	mr r29, r3
/* 801C5488 001C23E8  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801C548C 001C23EC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801C5490 001C23F0  28 00 00 00 */	cmplwi r0, 0
/* 801C5494 001C23F4  40 82 00 14 */	bne lbl_801C54A8
/* 801C5498 001C23F8  88 03 00 28 */	lbz r0, 0x28(r3)
/* 801C549C 001C23FC  28 00 00 00 */	cmplwi r0, 0
/* 801C54A0 001C2400  40 82 00 08 */	bne lbl_801C54A8
/* 801C54A4 001C2404  38 80 00 01 */	li r4, 1
lbl_801C54A8:
/* 801C54A8 001C2408  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801C54AC 001C240C  40 82 01 64 */	bne lbl_801C5610
/* 801C54B0 001C2410  7F C4 F3 78 */	mr r4, r30
/* 801C54B4 001C2414  4B F5 07 CD */	bl RenderParticles__10CModelDataCFRC14CFrustumPlanes
/* 801C54B8 001C2418  88 1D 00 E4 */	lbz r0, 0xe4(r29)
/* 801C54BC 001C241C  54 00 FF FF */	rlwinm. r0, r0, 0x1f, 0x1f, 0x1f
/* 801C54C0 001C2420  41 82 00 14 */	beq lbl_801C54D4
/* 801C54C4 001C2424  7F A3 EB 78 */	mr r3, r29
/* 801C54C8 001C2428  4B FF F7 E9 */	bl sub_801c4cb0
/* 801C54CC 001C242C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C54D0 001C2430  41 82 00 4C */	beq lbl_801C551C
lbl_801C54D4:
/* 801C54D4 001C2434  7F A3 EB 78 */	mr r3, r29
/* 801C54D8 001C2438  7F E4 FB 78 */	mr r4, r31
/* 801C54DC 001C243C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C54E0 001C2440  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C54E4 001C2444  7D 89 03 A6 */	mtctr r12
/* 801C54E8 001C2448  4E 80 04 21 */	bctrl
/* 801C54EC 001C244C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C54F0 001C2450  41 82 00 20 */	beq lbl_801C5510
/* 801C54F4 001C2454  7F A3 EB 78 */	mr r3, r29
/* 801C54F8 001C2458  7F E4 FB 78 */	mr r4, r31
/* 801C54FC 001C245C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C5500 001C2460  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 801C5504 001C2464  7D 89 03 A6 */	mtctr r12
/* 801C5508 001C2468  4E 80 04 21 */	bctrl
/* 801C550C 001C246C  48 00 00 10 */	b lbl_801C551C
lbl_801C5510:
/* 801C5510 001C2470  7F A3 EB 78 */	mr r3, r29
/* 801C5514 001C2474  7F E4 FB 78 */	mr r4, r31
/* 801C5518 001C2478  4B E8 F4 B5 */	bl EnsureRendered__6CActorCFRC13CStateManager
lbl_801C551C:
/* 801C551C 001C247C  80 7F 08 B8 */	lwz r3, 0x8b8(r31)
/* 801C5520 001C2480  7F E4 FB 78 */	mr r4, r31
/* 801C5524 001C2484  80 63 00 00 */	lwz r3, 0(r3)
/* 801C5528 001C2488  4B EC C0 31 */	bl GetActiveVisor__12CPlayerStateCFRC13CStateManager
/* 801C552C 001C248C  2C 03 00 01 */	cmpwi r3, 1
/* 801C5530 001C2490  41 82 00 E0 */	beq lbl_801C5610
/* 801C5534 001C2494  88 1D 00 E5 */	lbz r0, 0xe5(r29)
/* 801C5538 001C2498  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801C553C 001C249C  41 82 00 D4 */	beq lbl_801C5610
/* 801C5540 001C24A0  80 7D 00 94 */	lwz r3, 0x94(r29)
/* 801C5544 001C24A4  4B F4 05 BD */	bl Valid__13CSimpleShadowCFv
/* 801C5548 001C24A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C554C 001C24AC  41 82 00 C4 */	beq lbl_801C5610
/* 801C5550 001C24B0  80 9D 00 94 */	lwz r4, 0x94(r29)
/* 801C5554 001C24B4  38 61 00 44 */	addi r3, r1, 0x44
/* 801C5558 001C24B8  4B F4 07 1D */	bl GetBounds__13CSimpleShadowCFv
/* 801C555C 001C24BC  7F C3 F3 78 */	mr r3, r30
/* 801C5560 001C24C0  38 81 00 44 */	addi r4, r1, 0x44
/* 801C5564 001C24C4  48 17 FC 6D */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 801C5568 001C24C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801C556C 001C24CC  28 00 00 01 */	cmplwi r0, 1
/* 801C5570 001C24D0  40 82 00 A0 */	bne lbl_801C5610
/* 801C5574 001C24D4  80 7D 00 94 */	lwz r3, 0x94(r29)
/* 801C5578 001C24D8  4B F4 07 99 */	bl GetTransform__13CSimpleShadowCFv
/* 801C557C 001C24DC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 801C5580 001C24E0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801C5584 001C24E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801C5588 001C24E8  80 7D 00 94 */	lwz r3, 0x94(r29)
/* 801C558C 001C24EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C5590 001C24F0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801C5594 001C24F4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801C5598 001C24F8  4B F4 07 79 */	bl GetTransform__13CSimpleShadowCFv
/* 801C559C 001C24FC  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 801C55A0 001C2500  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801C55A4 001C2504  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801C55A8 001C2508  80 7D 00 94 */	lwz r3, 0x94(r29)
/* 801C55AC 001C250C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801C55B0 001C2510  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801C55B4 001C2514  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801C55B8 001C2518  4B F4 07 59 */	bl GetTransform__13CSimpleShadowCFv
/* 801C55BC 001C251C  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 801C55C0 001C2520  38 81 00 14 */	addi r4, r1, 0x14
/* 801C55C4 001C2524  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 801C55C8 001C2528  38 A1 00 08 */	addi r5, r1, 8
/* 801C55CC 001C252C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801C55D0 001C2530  38 61 00 2C */	addi r3, r1, 0x2c
/* 801C55D4 001C2534  83 FD 00 94 */	lwz r31, 0x94(r29)
/* 801C55D8 001C2538  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801C55DC 001C253C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801C55E0 001C2540  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801C55E4 001C2544  48 17 2F 25 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801C55E8 001C2548  7C 66 1B 78 */	mr r6, r3
/* 801C55EC 001C254C  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 801C55F0 001C2550  7F E4 FB 78 */	mr r4, r31
/* 801C55F4 001C2554  38 A1 00 20 */	addi r5, r1, 0x20
/* 801C55F8 001C2558  81 83 00 00 */	lwz r12, 0(r3)
/* 801C55FC 001C255C  38 E0 00 01 */	li r7, 1
/* 801C5600 001C2560  39 00 00 00 */	li r8, 0
/* 801C5604 001C2564  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 801C5608 001C2568  7D 89 03 A6 */	mtctr r12
/* 801C560C 001C256C  4E 80 04 21 */	bctrl
lbl_801C5610:
/* 801C5610 001C2570  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801C5614 001C2574  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 801C5618 001C2578  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 801C561C 001C257C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 801C5620 001C2580  7C 08 03 A6 */	mtlr r0
/* 801C5624 001C2584  38 21 00 70 */	addi r1, r1, 0x70
/* 801C5628 001C2588  4E 80 00 20 */	blr

.global RenderHitGunEffect__12CMetroidBetaCFv
RenderHitGunEffect__12CMetroidBetaCFv:
/* 801C562C 001C258C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5630 001C2590  7C 08 02 A6 */	mflr r0
/* 801C5634 001C2594  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5638 001C2598  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C563C 001C259C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C5640 001C25A0  41 82 00 18 */	beq lbl_801C5658
/* 801C5644 001C25A4  80 63 08 2C */	lwz r3, 0x82c(r3)
/* 801C5648 001C25A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801C564C 001C25AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C5650 001C25B0  7D 89 03 A6 */	mtctr r12
/* 801C5654 001C25B4  4E 80 04 21 */	bctrl
lbl_801C5658:
/* 801C5658 001C25B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C565C 001C25BC  7C 08 03 A6 */	mtlr r0
/* 801C5660 001C25C0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5664 001C25C4  4E 80 00 20 */	blr

.global RenderHitBallEffect__12CMetroidBetaCFv
RenderHitBallEffect__12CMetroidBetaCFv:
/* 801C5668 001C25C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C566C 001C25CC  7C 08 02 A6 */	mflr r0
/* 801C5670 001C25D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5674 001C25D4  88 03 08 40 */	lbz r0, 0x840(r3)
/* 801C5678 001C25D8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C567C 001C25DC  41 82 00 18 */	beq lbl_801C5694
/* 801C5680 001C25E0  80 63 08 28 */	lwz r3, 0x828(r3)
/* 801C5684 001C25E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5688 001C25E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C568C 001C25EC  7D 89 03 A6 */	mtctr r12
/* 801C5690 001C25F0  4E 80 04 21 */	bctrl
lbl_801C5694:
/* 801C5694 001C25F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C5698 001C25F8  7C 08 03 A6 */	mtlr r0
/* 801C569C 001C25FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C56A0 001C2600  4E 80 00 20 */	blr

.global Render__12CMetroidBetaCFRC13CStateManager
Render__12CMetroidBetaCFRC13CStateManager:
/* 801C56A4 001C2604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C56A8 001C2608  7C 08 02 A6 */	mflr r0
/* 801C56AC 001C260C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C56B0 001C2610  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C56B4 001C2614  7C 7F 1B 78 */	mr r31, r3
/* 801C56B8 001C2618  4B EB 29 75 */	bl Render__10CPatternedCFRC13CStateManager
/* 801C56BC 001C261C  88 1F 08 40 */	lbz r0, 0x840(r31)
/* 801C56C0 001C2620  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C56C4 001C2624  41 82 00 50 */	beq lbl_801C5714
/* 801C56C8 001C2628  80 7F 08 20 */	lwz r3, 0x820(r31)
/* 801C56CC 001C262C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C56D0 001C2630  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C56D4 001C2634  7D 89 03 A6 */	mtctr r12
/* 801C56D8 001C2638  4E 80 04 21 */	bctrl
/* 801C56DC 001C263C  80 7F 08 24 */	lwz r3, 0x824(r31)
/* 801C56E0 001C2640  81 83 00 00 */	lwz r12, 0(r3)
/* 801C56E4 001C2644  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C56E8 001C2648  7D 89 03 A6 */	mtctr r12
/* 801C56EC 001C264C  4E 80 04 21 */	bctrl
/* 801C56F0 001C2650  C0 3F 08 3C */	lfs f1, 0x83c(r31)
/* 801C56F4 001C2654  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C56F8 001C2658  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C56FC 001C265C  40 81 00 18 */	ble lbl_801C5714
/* 801C5700 001C2660  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 801C5704 001C2664  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5708 001C2668  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C570C 001C266C  7D 89 03 A6 */	mtctr r12
/* 801C5710 001C2670  4E 80 04 21 */	bctrl
lbl_801C5714:
/* 801C5714 001C2674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C5718 001C2678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C571C 001C267C  7C 08 03 A6 */	mtlr r0
/* 801C5720 001C2680  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5724 001C2684  4E 80 00 20 */	blr

.global AcceptScriptMsg__12CMetroidBetaF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__12CMetroidBetaF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 801C5728 001C2688  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 801C572C 001C268C  7C 08 02 A6 */	mflr r0
/* 801C5730 001C2690  90 01 01 74 */	stw r0, 0x174(r1)
/* 801C5734 001C2694  BF 61 01 5C */	stmw r27, 0x15c(r1)
/* 801C5738 001C2698  7C BE 2B 78 */	mr r30, r5
/* 801C573C 001C269C  7C 7D 1B 78 */	mr r29, r3
/* 801C5740 001C26A0  7C 9B 23 78 */	mr r27, r4
/* 801C5744 001C26A4  7C DF 33 78 */	mr r31, r6
/* 801C5748 001C26A8  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C574C 001C26AC  38 A1 00 54 */	addi r5, r1, 0x54
/* 801C5750 001C26B0  B0 01 00 54 */	sth r0, 0x54(r1)
/* 801C5754 001C26B4  4B EB 74 25 */	bl AcceptScriptMsg__10CPatternedF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 801C5758 001C26B8  28 1B 00 30 */	cmplwi r27, 0x30
/* 801C575C 001C26BC  41 81 05 B8 */	bgt lbl_801C5D14
/* 801C5760 001C26C0  3C 60 80 3E */	lis r3, lbl_803E5654@ha
/* 801C5764 001C26C4  57 60 10 3A */	slwi r0, r27, 2
/* 801C5768 001C26C8  38 63 56 54 */	addi r3, r3, lbl_803E5654@l
/* 801C576C 001C26CC  7C 03 00 2E */	lwzx r0, r3, r0
/* 801C5770 001C26D0  7C 09 03 A6 */	mtctr r0
/* 801C5774 001C26D4  4E 80 04 20 */	bctr
.global lbl_801C5778
lbl_801C5778:
/* 801C5778 001C26D8  80 7D 04 50 */	lwz r3, 0x450(r29)
/* 801C577C 001C26DC  7F E4 FB 78 */	mr r4, r31
/* 801C5780 001C26E0  4B F7 55 71 */	bl Activate__15CBodyControllerFR13CStateManager
/* 801C5784 001C26E4  7F A3 EB 78 */	mr r3, r29
/* 801C5788 001C26E8  7F E4 FB 78 */	mr r4, r31
/* 801C578C 001C26EC  4B FF C5 21 */	bl sub_801c1cac
/* 801C5790 001C26F0  7F A3 EB 78 */	mr r3, r29
/* 801C5794 001C26F4  4B FF BC 41 */	bl sub_801c13d4
/* 801C5798 001C26F8  80 82 AA 8C */	lwz r4, lbl_805AC7AC@sda21(r2)
/* 801C579C 001C26FC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801C57A0 001C2700  4B E3 F5 19 */	bl string_l__4rstlFPCc
/* 801C57A4 001C2704  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 801C57A8 001C2708  38 61 00 0C */	addi r3, r1, 0xc
/* 801C57AC 001C270C  38 A1 00 A0 */	addi r5, r1, 0xa0
/* 801C57B0 001C2710  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801C57B4 001C2714  4B E6 90 85 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801C57B8 001C2718  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801C57BC 001C271C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 801C57C0 001C2720  98 1D 07 60 */	stb r0, 0x760(r29)
/* 801C57C4 001C2724  48 17 83 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801C57C8 001C2728  80 82 AA 90 */	lwz r4, lbl_805AC7B0@sda21(r2)
/* 801C57CC 001C272C  38 61 00 90 */	addi r3, r1, 0x90
/* 801C57D0 001C2730  4B E3 F4 E9 */	bl string_l__4rstlFPCc
/* 801C57D4 001C2734  80 9D 00 64 */	lwz r4, 0x64(r29)
/* 801C57D8 001C2738  38 61 00 08 */	addi r3, r1, 8
/* 801C57DC 001C273C  38 A1 00 90 */	addi r5, r1, 0x90
/* 801C57E0 001C2740  80 84 00 10 */	lwz r4, 0x10(r4)
/* 801C57E4 001C2744  4B E6 90 55 */	bl "GetLocatorSegId__9CAnimDataCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 801C57E8 001C2748  88 01 00 08 */	lbz r0, 8(r1)
/* 801C57EC 001C274C  38 61 00 90 */	addi r3, r1, 0x90
/* 801C57F0 001C2750  98 1D 07 61 */	stb r0, 0x761(r29)
/* 801C57F4 001C2754  48 17 82 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 801C57F8 001C2758  48 00 05 1C */	b lbl_801C5D14
.global lbl_801C57FC
lbl_801C57FC:
/* 801C57FC 001C275C  80 7D 07 64 */	lwz r3, 0x764(r29)
/* 801C5800 001C2760  7F E4 FB 78 */	mr r4, r31
/* 801C5804 001C2764  38 A0 00 01 */	li r5, 1
/* 801C5808 001C2768  4B FE 1A F1 */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801C580C 001C276C  48 00 05 08 */	b lbl_801C5D14
.global lbl_801C5810
lbl_801C5810:
/* 801C5810 001C2770  80 7D 07 64 */	lwz r3, 0x764(r29)
/* 801C5814 001C2774  7F E4 FB 78 */	mr r4, r31
/* 801C5818 001C2778  38 A0 00 00 */	li r5, 0
/* 801C581C 001C277C  4B FE 1A DD */	bl SetActive__22CCollisionActorManagerFR13CStateManagerb
/* 801C5820 001C2780  7F A3 EB 78 */	mr r3, r29
/* 801C5824 001C2784  7F E4 FB 78 */	mr r4, r31
/* 801C5828 001C2788  4B FF BA 45 */	bl sub_801c126c
/* 801C582C 001C278C  48 00 04 E8 */	b lbl_801C5D14
.global lbl_801C5830
lbl_801C5830:
/* 801C5830 001C2790  80 7D 07 64 */	lwz r3, 0x764(r29)
/* 801C5834 001C2794  7F E4 FB 78 */	mr r4, r31
/* 801C5838 001C2798  4B FE 1B 8D */	bl Destroy__22CCollisionActorManagerCFR13CStateManager
/* 801C583C 001C279C  7F A3 EB 78 */	mr r3, r29
/* 801C5840 001C27A0  7F E4 FB 78 */	mr r4, r31
/* 801C5844 001C27A4  4B FF BA 29 */	bl sub_801c126c
/* 801C5848 001C27A8  48 00 04 CC */	b lbl_801C5D14
.global lbl_801C584C
lbl_801C584C:
/* 801C584C 001C27AC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C5850 001C27B0  7F E3 FB 78 */	mr r3, r31
/* 801C5854 001C27B4  38 81 00 50 */	addi r4, r1, 0x50
/* 801C5858 001C27B8  B0 01 00 50 */	sth r0, 0x50(r1)
/* 801C585C 001C27BC  4B E8 6D 19 */	bl ObjectById__13CStateManagerF9TUniqueId
/* 801C5860 001C27C0  7C 64 1B 78 */	mr r4, r3
/* 801C5864 001C27C4  38 61 00 7C */	addi r3, r1, 0x7c
/* 801C5868 001C27C8  4B EE 9A E5 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C586C 001C27CC  83 83 00 04 */	lwz r28, 4(r3)
/* 801C5870 001C27D0  28 1C 00 00 */	cmplwi r28, 0
/* 801C5874 001C27D4  41 82 01 64 */	beq lbl_801C59D8
/* 801C5878 001C27D8  7F 84 E3 78 */	mr r4, r28
/* 801C587C 001C27DC  38 61 00 4C */	addi r3, r1, 0x4c
/* 801C5880 001C27E0  4B FE 33 0D */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801C5884 001C27E4  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 801C5888 001C27E8  7F E3 FB 78 */	mr r3, r31
/* 801C588C 001C27EC  38 81 00 48 */	addi r4, r1, 0x48
/* 801C5890 001C27F0  B0 01 00 58 */	sth r0, 0x58(r1)
/* 801C5894 001C27F4  B0 01 00 48 */	sth r0, 0x48(r1)
/* 801C5898 001C27F8  4B E8 6D 0D */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801C589C 001C27FC  7C 64 1B 78 */	mr r4, r3
/* 801C58A0 001C2800  38 61 00 74 */	addi r3, r1, 0x74
/* 801C58A4 001C2804  4B EE 7E 69 */	bl "__ct__29TCastToPtr<15CGameProjectile>FP7CEntity"
/* 801C58A8 001C2808  83 C3 00 04 */	lwz r30, 4(r3)
/* 801C58AC 001C280C  28 1E 00 00 */	cmplwi r30, 0
/* 801C58B0 001C2810  41 82 04 64 */	beq lbl_801C5D14
/* 801C58B4 001C2814  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801C58B8 001C2818  A0 9E 00 EC */	lhz r4, 0xec(r30)
/* 801C58BC 001C281C  A0 03 00 08 */	lhz r0, 8(r3)
/* 801C58C0 001C2820  7C 04 00 40 */	cmplw r4, r0
/* 801C58C4 001C2824  40 82 04 50 */	bne lbl_801C5D14
/* 801C58C8 001C2828  7F 83 E3 78 */	mr r3, r28
/* 801C58CC 001C282C  81 9C 00 00 */	lwz r12, 0(r28)
/* 801C58D0 001C2830  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801C58D4 001C2834  7D 89 03 A6 */	mtctr r12
/* 801C58D8 001C2838  4E 80 04 21 */	bctrl
/* 801C58DC 001C283C  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 801C58E0 001C2840  7C 7B 1B 78 */	mr r27, r3
/* 801C58E4 001C2844  3B 9E 01 2C */	addi r28, r30, 0x12c
/* 801C58E8 001C2848  7F A3 EB 78 */	mr r3, r29
/* 801C58EC 001C284C  7F E4 FB 78 */	mr r4, r31
/* 801C58F0 001C2850  4B FF BB C5 */	bl sub_801c14b4
/* 801C58F4 001C2854  7F 63 DB 78 */	mr r3, r27
/* 801C58F8 001C2858  7F 84 E3 78 */	mr r4, r28
/* 801C58FC 001C285C  38 A0 00 00 */	li r5, 0
/* 801C5900 001C2860  4B F3 CC 85 */	bl WeaponHits__20CDamageVulnerabilityCFRC11CWeaponModei
/* 801C5904 001C2864  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C5908 001C2868  41 82 00 A0 */	beq lbl_801C59A8
/* 801C590C 001C286C  88 7C 00 04 */	lbz r3, 4(r28)
/* 801C5910 001C2870  54 60 CF FF */	rlwinm. r0, r3, 0x19, 0x1f, 0x1f
/* 801C5914 001C2874  40 82 00 18 */	bne lbl_801C592C
/* 801C5918 001C2878  54 60 D7 FF */	rlwinm. r0, r3, 0x1a, 0x1f, 0x1f
/* 801C591C 001C287C  40 82 00 10 */	bne lbl_801C592C
/* 801C5920 001C2880  80 1C 00 00 */	lwz r0, 0(r28)
/* 801C5924 001C2884  2C 00 00 06 */	cmpwi r0, 6
/* 801C5928 001C2888  40 82 00 24 */	bne lbl_801C594C
lbl_801C592C:
/* 801C592C 001C288C  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C5930 001C2890  38 60 00 01 */	li r3, 1
/* 801C5934 001C2894  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801C5938 001C2898  C0 02 AA A4 */	lfs f0, lbl_805AC7C4@sda21(r2)
/* 801C593C 001C289C  98 1D 08 40 */	stb r0, 0x840(r29)
/* 801C5940 001C28A0  C0 3D 08 3C */	lfs f1, 0x83c(r29)
/* 801C5944 001C28A4  EC 01 00 2A */	fadds f0, f1, f0
/* 801C5948 001C28A8  D0 1D 08 3C */	stfs f0, 0x83c(r29)
lbl_801C594C:
/* 801C594C 001C28AC  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 801C5950 001C28B0  7F A3 EB 78 */	mr r3, r29
/* 801C5954 001C28B4  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 801C5958 001C28B8  7F E5 FB 78 */	mr r5, r31
/* 801C595C 001C28BC  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 801C5960 001C28C0  7F 86 E3 78 */	mr r6, r28
/* 801C5964 001C28C4  EC 82 08 28 */	fsubs f4, f2, f1
/* 801C5968 001C28C8  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 801C596C 001C28CC  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 801C5970 001C28D0  38 81 00 84 */	addi r4, r1, 0x84
/* 801C5974 001C28D4  EC 63 00 28 */	fsubs f3, f3, f0
/* 801C5978 001C28D8  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 801C597C 001C28DC  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 801C5980 001C28E0  EC 02 00 28 */	fsubs f0, f2, f0
/* 801C5984 001C28E4  38 E0 00 01 */	li r7, 1
/* 801C5988 001C28E8  39 00 00 00 */	li r8, 0
/* 801C598C 001C28EC  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 801C5990 001C28F0  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 801C5994 001C28F4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801C5998 001C28F8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C599C 001C28FC  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 801C59A0 001C2900  7D 89 03 A6 */	mtctr r12
/* 801C59A4 001C2904  4E 80 04 21 */	bctrl
lbl_801C59A8:
/* 801C59A8 001C2908  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C59AC 001C290C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C59B0 001C2910  41 82 00 14 */	beq lbl_801C59C4
/* 801C59B4 001C2914  C0 3D 08 3C */	lfs f1, 0x83c(r29)
/* 801C59B8 001C2918  C0 02 AA EC */	lfs f0, lbl_805AC80C@sda21(r2)
/* 801C59BC 001C291C  EC 01 00 2A */	fadds f0, f1, f0
/* 801C59C0 001C2920  D0 1D 08 3C */	stfs f0, 0x83c(r29)
lbl_801C59C4:
/* 801C59C4 001C2924  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C59C8 001C2928  38 60 00 01 */	li r3, 1
/* 801C59CC 001C292C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801C59D0 001C2930  98 1D 08 40 */	stb r0, 0x840(r29)
/* 801C59D4 001C2934  48 00 03 40 */	b lbl_801C5D14
lbl_801C59D8:
/* 801C59D8 001C2938  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C59DC 001C293C  7F E3 FB 78 */	mr r3, r31
/* 801C59E0 001C2940  38 81 00 44 */	addi r4, r1, 0x44
/* 801C59E4 001C2944  B0 01 00 44 */	sth r0, 0x44(r1)
/* 801C59E8 001C2948  4B E8 6B BD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801C59EC 001C294C  7C 64 1B 78 */	mr r4, r3
/* 801C59F0 001C2950  38 61 00 6C */	addi r3, r1, 0x6c
/* 801C59F4 001C2954  4B ED FE A5 */	bl "__ct__20TCastToPtr<7CWeapon>FP7CEntity"
/* 801C59F8 001C2958  83 83 00 04 */	lwz r28, 4(r3)
/* 801C59FC 001C295C  28 1C 00 00 */	cmplwi r28, 0
/* 801C5A00 001C2960  41 82 03 14 */	beq lbl_801C5D14
/* 801C5A04 001C2964  80 1C 01 2C */	lwz r0, 0x12c(r28)
/* 801C5A08 001C2968  38 60 00 00 */	li r3, 0
/* 801C5A0C 001C296C  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C5A10 001C2970  38 80 00 01 */	li r4, 1
/* 801C5A14 001C2974  90 01 01 34 */	stw r0, 0x134(r1)
/* 801C5A18 001C2978  80 AD 91 28 */	lwz r5, lbl_805A7CE8@sda21(r13)
/* 801C5A1C 001C297C  88 1C 01 30 */	lbz r0, 0x130(r28)
/* 801C5A20 001C2980  98 01 01 38 */	stb r0, 0x138(r1)
/* 801C5A24 001C2984  C0 3C 01 34 */	lfs f1, 0x134(r28)
/* 801C5A28 001C2988  D0 21 01 3C */	stfs f1, 0x13c(r1)
/* 801C5A2C 001C298C  C0 3C 01 38 */	lfs f1, 0x138(r28)
/* 801C5A30 001C2990  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 801C5A34 001C2994  C0 3C 01 3C */	lfs f1, 0x13c(r28)
/* 801C5A38 001C2998  D0 21 01 44 */	stfs f1, 0x144(r1)
/* 801C5A3C 001C299C  C0 3C 01 40 */	lfs f1, 0x140(r28)
/* 801C5A40 001C29A0  D0 21 01 48 */	stfs f1, 0x148(r1)
/* 801C5A44 001C29A4  88 1C 01 44 */	lbz r0, 0x144(r28)
/* 801C5A48 001C29A8  98 01 01 4C */	stb r0, 0x14c(r1)
/* 801C5A4C 001C29AC  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 801C5A50 001C29B0  48 1C 44 A5 */	bl __shl2i
/* 801C5A54 001C29B4  39 00 00 00 */	li r8, 0
/* 801C5A58 001C29B8  39 40 00 03 */	li r10, 3
/* 801C5A5C 001C29BC  90 81 01 04 */	stw r4, 0x104(r1)
/* 801C5A60 001C29C0  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C5A64 001C29C4  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801C5A68 001C29C8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C5A6C 001C29CC  90 61 01 00 */	stw r3, 0x100(r1)
/* 801C5A70 001C29D0  7F E3 FB 78 */	mr r3, r31
/* 801C5A74 001C29D4  38 81 00 40 */	addi r4, r1, 0x40
/* 801C5A78 001C29D8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801C5A7C 001C29DC  91 01 01 0C */	stw r8, 0x10c(r1)
/* 801C5A80 001C29E0  38 C1 00 38 */	addi r6, r1, 0x38
/* 801C5A84 001C29E4  38 E1 01 34 */	addi r7, r1, 0x134
/* 801C5A88 001C29E8  91 01 01 08 */	stw r8, 0x108(r1)
/* 801C5A8C 001C29EC  39 01 01 00 */	addi r8, r1, 0x100
/* 801C5A90 001C29F0  91 41 01 10 */	stw r10, 0x110(r1)
/* 801C5A94 001C29F4  A1 7C 00 EC */	lhz r11, 0xec(r28)
/* 801C5A98 001C29F8  B1 61 00 38 */	sth r11, 0x38(r1)
/* 801C5A9C 001C29FC  A1 5D 07 90 */	lhz r10, 0x790(r29)
/* 801C5AA0 001C2A00  B1 61 00 34 */	sth r11, 0x34(r1)
/* 801C5AA4 001C2A04  B1 41 00 3C */	sth r10, 0x3c(r1)
/* 801C5AA8 001C2A08  B0 01 00 40 */	sth r0, 0x40(r1)
/* 801C5AAC 001C2A0C  4B E8 45 F5 */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801C5AB0 001C2A10  48 00 02 64 */	b lbl_801C5D14
.global lbl_801C5AB4
lbl_801C5AB4:
/* 801C5AB4 001C2A14  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C5AB8 001C2A18  38 60 00 01 */	li r3, 1
/* 801C5ABC 001C2A1C  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801C5AC0 001C2A20  98 1D 08 40 */	stb r0, 0x840(r29)
/* 801C5AC4 001C2A24  48 00 02 50 */	b lbl_801C5D14
.global lbl_801C5AC8
lbl_801C5AC8:
/* 801C5AC8 001C2A28  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C5ACC 001C2A2C  7F E3 FB 78 */	mr r3, r31
/* 801C5AD0 001C2A30  38 81 00 30 */	addi r4, r1, 0x30
/* 801C5AD4 001C2A34  B0 01 00 30 */	sth r0, 0x30(r1)
/* 801C5AD8 001C2A38  4B E8 6A CD */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801C5ADC 001C2A3C  7C 64 1B 78 */	mr r4, r3
/* 801C5AE0 001C2A40  38 61 00 64 */	addi r3, r1, 0x64
/* 801C5AE4 001C2A44  4B EE 98 69 */	bl "__ct__29TCastToPtr<15CCollisionActor>FP7CEntity"
/* 801C5AE8 001C2A48  83 83 00 04 */	lwz r28, 4(r3)
/* 801C5AEC 001C2A4C  28 1C 00 00 */	cmplwi r28, 0
/* 801C5AF0 001C2A50  41 82 02 24 */	beq lbl_801C5D14
/* 801C5AF4 001C2A54  7F A3 EB 78 */	mr r3, r29
/* 801C5AF8 001C2A58  7F E4 FB 78 */	mr r4, r31
/* 801C5AFC 001C2A5C  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C5B00 001C2A60  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 801C5B04 001C2A64  7D 89 03 A6 */	mtctr r12
/* 801C5B08 001C2A68  4E 80 04 21 */	bctrl
/* 801C5B0C 001C2A6C  C0 23 00 00 */	lfs f1, 0(r3)
/* 801C5B10 001C2A70  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C5B14 001C2A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C5B18 001C2A78  40 81 01 FC */	ble lbl_801C5D14
/* 801C5B1C 001C2A7C  7F 84 E3 78 */	mr r4, r28
/* 801C5B20 001C2A80  38 61 00 2C */	addi r3, r1, 0x2c
/* 801C5B24 001C2A84  4B FE 30 69 */	bl GetLastTouchedObject__15CCollisionActorCFv
/* 801C5B28 001C2A88  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 801C5B2C 001C2A8C  A0 81 00 2C */	lhz r4, 0x2c(r1)
/* 801C5B30 001C2A90  A0 03 00 08 */	lhz r0, 8(r3)
/* 801C5B34 001C2A94  7C 04 00 40 */	cmplw r4, r0
/* 801C5B38 001C2A98  40 82 01 DC */	bne lbl_801C5D14
/* 801C5B3C 001C2A9C  C0 3D 04 20 */	lfs f1, 0x420(r29)
/* 801C5B40 001C2AA0  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C5B44 001C2AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C5B48 001C2AA8  4C 40 13 82 */	cror 2, 0, 2
/* 801C5B4C 001C2AAC  40 82 01 C8 */	bne lbl_801C5D14
/* 801C5B50 001C2AB0  7F A4 EB 78 */	mr r4, r29
/* 801C5B54 001C2AB4  38 61 00 E4 */	addi r3, r1, 0xe4
/* 801C5B58 001C2AB8  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C5B5C 001C2ABC  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801C5B60 001C2AC0  7D 89 03 A6 */	mtctr r12
/* 801C5B64 001C2AC4  4E 80 04 21 */	bctrl
/* 801C5B68 001C2AC8  C0 21 00 EC */	lfs f1, 0xec(r1)
/* 801C5B6C 001C2ACC  C0 02 AA AC */	lfs f0, lbl_805AC7CC@sda21(r2)
/* 801C5B70 001C2AD0  80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 801C5B74 001C2AD4  88 61 00 E8 */	lbz r3, 0xe8(r1)
/* 801C5B78 001C2AD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801C5B7C 001C2ADC  D0 21 01 20 */	stfs f1, 0x120(r1)
/* 801C5B80 001C2AE0  C0 61 00 F0 */	lfs f3, 0xf0(r1)
/* 801C5B84 001C2AE4  C0 41 00 F4 */	lfs f2, 0xf4(r1)
/* 801C5B88 001C2AE8  C0 21 00 F8 */	lfs f1, 0xf8(r1)
/* 801C5B8C 001C2AEC  88 01 00 FC */	lbz r0, 0xfc(r1)
/* 801C5B90 001C2AF0  90 81 01 18 */	stw r4, 0x118(r1)
/* 801C5B94 001C2AF4  98 61 01 1C */	stb r3, 0x11c(r1)
/* 801C5B98 001C2AF8  D0 61 01 24 */	stfs f3, 0x124(r1)
/* 801C5B9C 001C2AFC  D0 41 01 28 */	stfs f2, 0x128(r1)
/* 801C5BA0 001C2B00  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 801C5BA4 001C2B04  98 01 01 30 */	stb r0, 0x130(r1)
/* 801C5BA8 001C2B08  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 801C5BAC 001C2B0C  88 7D 08 40 */	lbz r3, 0x840(r29)
/* 801C5BB0 001C2B10  54 60 F7 FF */	rlwinm. r0, r3, 0x1e, 0x1f, 0x1f
/* 801C5BB4 001C2B14  41 82 00 5C */	beq lbl_801C5C10
/* 801C5BB8 001C2B18  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 801C5BBC 001C2B1C  41 82 00 54 */	beq lbl_801C5C10
/* 801C5BC0 001C2B20  7F A4 EB 78 */	mr r4, r29
/* 801C5BC4 001C2B24  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801C5BC8 001C2B28  81 9D 00 00 */	lwz r12, 0(r29)
/* 801C5BCC 001C2B2C  81 8C 02 B0 */	lwz r12, 0x2b0(r12)
/* 801C5BD0 001C2B30  7D 89 03 A6 */	mtctr r12
/* 801C5BD4 001C2B34  4E 80 04 21 */	bctrl
/* 801C5BD8 001C2B38  80 81 00 C8 */	lwz r4, 0xc8(r1)
/* 801C5BDC 001C2B3C  80 61 00 CC */	lwz r3, 0xcc(r1)
/* 801C5BE0 001C2B40  C0 61 00 D0 */	lfs f3, 0xd0(r1)
/* 801C5BE4 001C2B44  C0 41 00 D4 */	lfs f2, 0xd4(r1)
/* 801C5BE8 001C2B48  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 801C5BEC 001C2B4C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 801C5BF0 001C2B50  88 01 00 E0 */	lbz r0, 0xe0(r1)
/* 801C5BF4 001C2B54  90 81 01 18 */	stw r4, 0x118(r1)
/* 801C5BF8 001C2B58  90 61 01 1C */	stw r3, 0x11c(r1)
/* 801C5BFC 001C2B5C  D0 61 01 20 */	stfs f3, 0x120(r1)
/* 801C5C00 001C2B60  D0 41 01 24 */	stfs f2, 0x124(r1)
/* 801C5C04 001C2B64  D0 21 01 28 */	stfs f1, 0x128(r1)
/* 801C5C08 001C2B68  D0 01 01 2C */	stfs f0, 0x12c(r1)
/* 801C5C0C 001C2B6C  98 01 01 30 */	stb r0, 0x130(r1)
lbl_801C5C10:
/* 801C5C10 001C2B70  80 AD 91 28 */	lwz r5, lbl_805A7CE8@sda21(r13)
/* 801C5C14 001C2B74  38 60 00 00 */	li r3, 0
/* 801C5C18 001C2B78  38 80 00 01 */	li r4, 1
/* 801C5C1C 001C2B7C  48 1C 42 D9 */	bl __shl2i
/* 801C5C20 001C2B80  39 40 00 00 */	li r10, 0
/* 801C5C24 001C2B84  38 00 00 03 */	li r0, 3
/* 801C5C28 001C2B88  90 81 00 B4 */	stw r4, 0xb4(r1)
/* 801C5C2C 001C2B8C  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C5C30 001C2B90  39 24 66 A0 */	addi r9, r4, skZero3f@l
/* 801C5C34 001C2B94  38 A1 00 20 */	addi r5, r1, 0x20
/* 801C5C38 001C2B98  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 801C5C3C 001C2B9C  38 81 00 28 */	addi r4, r1, 0x28
/* 801C5C40 001C2BA0  7F E3 FB 78 */	mr r3, r31
/* 801C5C44 001C2BA4  38 C1 00 18 */	addi r6, r1, 0x18
/* 801C5C48 001C2BA8  91 41 00 BC */	stw r10, 0xbc(r1)
/* 801C5C4C 001C2BAC  38 E1 01 18 */	addi r7, r1, 0x118
/* 801C5C50 001C2BB0  39 01 00 B0 */	addi r8, r1, 0xb0
/* 801C5C54 001C2BB4  91 41 00 B8 */	stw r10, 0xb8(r1)
/* 801C5C58 001C2BB8  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 801C5C5C 001C2BBC  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801C5C60 001C2BC0  B0 01 00 18 */	sth r0, 0x18(r1)
/* 801C5C64 001C2BC4  81 5F 08 4C */	lwz r10, 0x84c(r31)
/* 801C5C68 001C2BC8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801C5C6C 001C2BCC  A1 4A 00 08 */	lhz r10, 8(r10)
/* 801C5C70 001C2BD0  B1 41 00 20 */	sth r10, 0x20(r1)
/* 801C5C74 001C2BD4  A0 1D 00 08 */	lhz r0, 8(r29)
/* 801C5C78 001C2BD8  B1 41 00 1C */	sth r10, 0x1c(r1)
/* 801C5C7C 001C2BDC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 801C5C80 001C2BE0  B0 01 00 28 */	sth r0, 0x28(r1)
/* 801C5C84 001C2BE4  4B E8 44 1D */	bl ApplyDamage__13CStateManagerF9TUniqueId9TUniqueId9TUniqueIdRC11CDamageInfoRC15CMaterialFilterRC9CVector3f
/* 801C5C88 001C2BE8  C0 1D 04 24 */	lfs f0, 0x424(r29)
/* 801C5C8C 001C2BEC  38 60 00 00 */	li r3, 0
/* 801C5C90 001C2BF0  D0 1D 04 20 */	stfs f0, 0x420(r29)
/* 801C5C94 001C2BF4  88 1D 08 40 */	lbz r0, 0x840(r29)
/* 801C5C98 001C2BF8  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801C5C9C 001C2BFC  98 1D 08 40 */	stb r0, 0x840(r29)
/* 801C5CA0 001C2C00  48 00 00 74 */	b lbl_801C5D14
.global lbl_801C5CA4
lbl_801C5CA4:
/* 801C5CA4 001C2C04  A0 7D 06 78 */	lhz r3, 0x678(r29)
/* 801C5CA8 001C2C08  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801C5CAC 001C2C0C  7C 03 00 40 */	cmplw r3, r0
/* 801C5CB0 001C2C10  40 82 00 1C */	bne lbl_801C5CCC
/* 801C5CB4 001C2C14  7F A4 EB 78 */	mr r4, r29
/* 801C5CB8 001C2C18  7F E5 FB 78 */	mr r5, r31
/* 801C5CBC 001C2C1C  38 61 00 10 */	addi r3, r1, 0x10
/* 801C5CC0 001C2C20  48 07 45 29 */	bl GetTeamAiMgr__10CTeamAiMgrF3CAiRC13CStateManager
/* 801C5CC4 001C2C24  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 801C5CC8 001C2C28  B0 1D 06 78 */	sth r0, 0x678(r29)
lbl_801C5CCC:
/* 801C5CCC 001C2C2C  80 BD 00 04 */	lwz r5, 4(r29)
/* 801C5CD0 001C2C30  80 9F 08 50 */	lwz r4, 0x850(r31)
/* 801C5CD4 001C2C34  54 A3 18 38 */	slwi r3, r5, 3
/* 801C5CD8 001C2C38  90 A1 00 60 */	stw r5, 0x60(r1)
/* 801C5CDC 001C2C3C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 801C5CE0 001C2C40  38 03 00 04 */	addi r0, r3, 4
/* 801C5CE4 001C2C44  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 801C5CE8 001C2C48  7C 64 00 2E */	lwzx r3, r4, r0
/* 801C5CEC 001C2C4C  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801C5CF0 001C2C50  80 03 10 BC */	lwz r0, 0x10bc(r3)
/* 801C5CF4 001C2C54  90 1D 06 7C */	stw r0, 0x67c(r29)
/* 801C5CF8 001C2C58  48 00 00 1C */	b lbl_801C5D14
.global lbl_801C5CFC
lbl_801C5CFC:
/* 801C5CFC 001C2C5C  80 7D 07 64 */	lwz r3, 0x764(r29)
/* 801C5D00 001C2C60  28 03 00 00 */	cmplwi r3, 0
/* 801C5D04 001C2C64  41 82 00 10 */	beq lbl_801C5D14
/* 801C5D08 001C2C68  7F E4 FB 78 */	mr r4, r31
/* 801C5D0C 001C2C6C  38 A0 00 00 */	li r5, 0
/* 801C5D10 001C2C70  4B FE 11 B1 */	bl SetMovable__22CCollisionActorManagerFb
.global lbl_801C5D14
lbl_801C5D14:
/* 801C5D14 001C2C74  BB 61 01 5C */	lmw r27, 0x15c(r1)
/* 801C5D18 001C2C78  80 01 01 74 */	lwz r0, 0x174(r1)
/* 801C5D1C 001C2C7C  7C 08 03 A6 */	mtlr r0
/* 801C5D20 001C2C80  38 21 01 70 */	addi r1, r1, 0x170
/* 801C5D24 001C2C84  4E 80 00 20 */	blr

.global Think__12CMetroidBetaFfR13CStateManager
Think__12CMetroidBetaFfR13CStateManager:
/* 801C5D28 001C2C88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C5D2C 001C2C8C  7C 08 02 A6 */	mflr r0
/* 801C5D30 001C2C90  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C5D34 001C2C94  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801C5D38 001C2C98  FF E0 08 90 */	fmr f31, f1
/* 801C5D3C 001C2C9C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 801C5D40 001C2CA0  7C 9F 23 78 */	mr r31, r4
/* 801C5D44 001C2CA4  93 C1 00 20 */	stw r30, 0x20(r1)
/* 801C5D48 001C2CA8  7C 7E 1B 78 */	mr r30, r3
/* 801C5D4C 001C2CAC  88 03 00 30 */	lbz r0, 0x30(r3)
/* 801C5D50 001C2CB0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801C5D54 001C2CB4  41 82 00 8C */	beq lbl_801C5DE0
/* 801C5D58 001C2CB8  A0 DE 00 08 */	lhz r6, 8(r30)
/* 801C5D5C 001C2CBC  7F E3 FB 78 */	mr r3, r31
/* 801C5D60 001C2CC0  38 81 00 10 */	addi r4, r1, 0x10
/* 801C5D64 001C2CC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 801C5D68 001C2CC8  B0 C1 00 0C */	sth r6, 0xc(r1)
/* 801C5D6C 001C2CCC  A0 1E 06 78 */	lhz r0, 0x678(r30)
/* 801C5D70 001C2CD0  B0 C1 00 08 */	sth r6, 8(r1)
/* 801C5D74 001C2CD4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801C5D78 001C2CD8  48 07 44 09 */	bl GetTeamAiRole__10CTeamAiMgrCFRC13CStateManager9TUniqueId9TUniqueId
/* 801C5D7C 001C2CDC  28 03 00 00 */	cmplwi r3, 0
/* 801C5D80 001C2CE0  40 82 00 10 */	bne lbl_801C5D90
/* 801C5D84 001C2CE4  7F C3 F3 78 */	mr r3, r30
/* 801C5D88 001C2CE8  7F E4 FB 78 */	mr r4, r31
/* 801C5D8C 001C2CEC  4B FF B5 85 */	bl sub_801c1310
lbl_801C5D90:
/* 801C5D90 001C2CF0  FC 20 F8 90 */	fmr f1, f31
/* 801C5D94 001C2CF4  7F C3 F3 78 */	mr r3, r30
/* 801C5D98 001C2CF8  7F E4 FB 78 */	mr r4, r31
/* 801C5D9C 001C2CFC  4B EB 3D 7D */	bl Think__10CPatternedFfR13CStateManager
/* 801C5DA0 001C2D00  FC 20 F8 90 */	fmr f1, f31
/* 801C5DA4 001C2D04  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C5DA8 001C2D08  7F E4 FB 78 */	mr r4, r31
/* 801C5DAC 001C2D0C  38 A0 00 00 */	li r5, 0
/* 801C5DB0 001C2D10  4B FE 16 A1 */	bl Update__22CCollisionActorManagerCFfR13CStateManagerQ222CCollisionActorManager14EUpdateOptions
/* 801C5DB4 001C2D14  7F C3 F3 78 */	mr r3, r30
/* 801C5DB8 001C2D18  7F E4 FB 78 */	mr r4, r31
/* 801C5DBC 001C2D1C  4B FF BB 6D */	bl sub_801c1928
/* 801C5DC0 001C2D20  FC 20 F8 90 */	fmr f1, f31
/* 801C5DC4 001C2D24  7F C3 F3 78 */	mr r3, r30
/* 801C5DC8 001C2D28  7F E4 FB 78 */	mr r4, r31
/* 801C5DCC 001C2D2C  4B FF AF D9 */	bl sub_801c0da4
/* 801C5DD0 001C2D30  FC 20 F8 90 */	fmr f1, f31
/* 801C5DD4 001C2D34  7F C3 F3 78 */	mr r3, r30
/* 801C5DD8 001C2D38  7F E4 FB 78 */	mr r4, r31
/* 801C5DDC 001C2D3C  4B FF C3 D9 */	bl sub_801c21b4
lbl_801C5DE0:
/* 801C5DE0 001C2D40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5DE4 001C2D44  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801C5DE8 001C2D48  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 801C5DEC 001C2D4C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 801C5DF0 001C2D50  7C 08 03 A6 */	mtlr r0
/* 801C5DF4 001C2D54  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5DF8 001C2D58  4E 80 00 20 */	blr

.global Accept__12CMetroidBetaFR8IVisitor
Accept__12CMetroidBetaFR8IVisitor:
/* 801C5DFC 001C2D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5E00 001C2D60  7C 08 02 A6 */	mflr r0
/* 801C5E04 001C2D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5E08 001C2D68  7C 60 1B 78 */	mr r0, r3
/* 801C5E0C 001C2D6C  7C 83 23 78 */	mr r3, r4
/* 801C5E10 001C2D70  81 84 00 00 */	lwz r12, 0(r4)
/* 801C5E14 001C2D74  7C 04 03 78 */	mr r4, r0
/* 801C5E18 001C2D78  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 801C5E1C 001C2D7C  7D 89 03 A6 */	mtctr r12
/* 801C5E20 001C2D80  4E 80 04 21 */	bctrl
/* 801C5E24 001C2D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C5E28 001C2D88  7C 08 03 A6 */	mtlr r0
/* 801C5E2C 001C2D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5E30 001C2D90  4E 80 00 20 */	blr

.global __dt__12CMetroidBetaFv
__dt__12CMetroidBetaFv:
/* 801C5E34 001C2D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5E38 001C2D98  7C 08 02 A6 */	mflr r0
/* 801C5E3C 001C2D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5E40 001C2DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C5E44 001C2DA4  7C 9F 23 78 */	mr r31, r4
/* 801C5E48 001C2DA8  93 C1 00 08 */	stw r30, 8(r1)
/* 801C5E4C 001C2DAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C5E50 001C2DB0  41 82 02 20 */	beq lbl_801C6070
/* 801C5E54 001C2DB4  3C 60 80 3E */	lis r3, lbl_803E5388@ha
/* 801C5E58 001C2DB8  34 1E 08 30 */	addic. r0, r30, 0x830
/* 801C5E5C 001C2DBC  38 03 53 88 */	addi r0, r3, lbl_803E5388@l
/* 801C5E60 001C2DC0  90 1E 00 00 */	stw r0, 0(r30)
/* 801C5E64 001C2DC4  41 82 00 24 */	beq lbl_801C5E88
/* 801C5E68 001C2DC8  80 7E 08 30 */	lwz r3, 0x830(r30)
/* 801C5E6C 001C2DCC  28 03 00 00 */	cmplwi r3, 0
/* 801C5E70 001C2DD0  41 82 00 18 */	beq lbl_801C5E88
/* 801C5E74 001C2DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5E78 001C2DD8  38 80 00 01 */	li r4, 1
/* 801C5E7C 001C2DDC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5E80 001C2DE0  7D 89 03 A6 */	mtctr r12
/* 801C5E84 001C2DE4  4E 80 04 21 */	bctrl
lbl_801C5E88:
/* 801C5E88 001C2DE8  34 1E 08 2C */	addic. r0, r30, 0x82c
/* 801C5E8C 001C2DEC  41 82 00 24 */	beq lbl_801C5EB0
/* 801C5E90 001C2DF0  80 7E 08 2C */	lwz r3, 0x82c(r30)
/* 801C5E94 001C2DF4  28 03 00 00 */	cmplwi r3, 0
/* 801C5E98 001C2DF8  41 82 00 18 */	beq lbl_801C5EB0
/* 801C5E9C 001C2DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5EA0 001C2E00  38 80 00 01 */	li r4, 1
/* 801C5EA4 001C2E04  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5EA8 001C2E08  7D 89 03 A6 */	mtctr r12
/* 801C5EAC 001C2E0C  4E 80 04 21 */	bctrl
lbl_801C5EB0:
/* 801C5EB0 001C2E10  34 1E 08 28 */	addic. r0, r30, 0x828
/* 801C5EB4 001C2E14  41 82 00 24 */	beq lbl_801C5ED8
/* 801C5EB8 001C2E18  80 7E 08 28 */	lwz r3, 0x828(r30)
/* 801C5EBC 001C2E1C  28 03 00 00 */	cmplwi r3, 0
/* 801C5EC0 001C2E20  41 82 00 18 */	beq lbl_801C5ED8
/* 801C5EC4 001C2E24  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5EC8 001C2E28  38 80 00 01 */	li r4, 1
/* 801C5ECC 001C2E2C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5ED0 001C2E30  7D 89 03 A6 */	mtctr r12
/* 801C5ED4 001C2E34  4E 80 04 21 */	bctrl
lbl_801C5ED8:
/* 801C5ED8 001C2E38  34 1E 08 24 */	addic. r0, r30, 0x824
/* 801C5EDC 001C2E3C  41 82 00 24 */	beq lbl_801C5F00
/* 801C5EE0 001C2E40  80 7E 08 24 */	lwz r3, 0x824(r30)
/* 801C5EE4 001C2E44  28 03 00 00 */	cmplwi r3, 0
/* 801C5EE8 001C2E48  41 82 00 18 */	beq lbl_801C5F00
/* 801C5EEC 001C2E4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5EF0 001C2E50  38 80 00 01 */	li r4, 1
/* 801C5EF4 001C2E54  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5EF8 001C2E58  7D 89 03 A6 */	mtctr r12
/* 801C5EFC 001C2E5C  4E 80 04 21 */	bctrl
lbl_801C5F00:
/* 801C5F00 001C2E60  34 1E 08 20 */	addic. r0, r30, 0x820
/* 801C5F04 001C2E64  41 82 00 24 */	beq lbl_801C5F28
/* 801C5F08 001C2E68  80 7E 08 20 */	lwz r3, 0x820(r30)
/* 801C5F0C 001C2E6C  28 03 00 00 */	cmplwi r3, 0
/* 801C5F10 001C2E70  41 82 00 18 */	beq lbl_801C5F28
/* 801C5F14 001C2E74  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5F18 001C2E78  38 80 00 01 */	li r4, 1
/* 801C5F1C 001C2E7C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801C5F20 001C2E80  7D 89 03 A6 */	mtctr r12
/* 801C5F24 001C2E84  4E 80 04 21 */	bctrl
lbl_801C5F28:
/* 801C5F28 001C2E88  34 1E 08 14 */	addic. r0, r30, 0x814
/* 801C5F2C 001C2E8C  41 82 00 18 */	beq lbl_801C5F44
/* 801C5F30 001C2E90  34 1E 08 14 */	addic. r0, r30, 0x814
/* 801C5F34 001C2E94  41 82 00 10 */	beq lbl_801C5F44
/* 801C5F38 001C2E98  38 7E 08 14 */	addi r3, r30, 0x814
/* 801C5F3C 001C2E9C  38 80 00 00 */	li r4, 0
/* 801C5F40 001C2EA0  48 17 AF 01 */	bl __dt__6CTokenFv
lbl_801C5F44:
/* 801C5F44 001C2EA4  34 1E 08 08 */	addic. r0, r30, 0x808
/* 801C5F48 001C2EA8  41 82 00 18 */	beq lbl_801C5F60
/* 801C5F4C 001C2EAC  34 1E 08 08 */	addic. r0, r30, 0x808
/* 801C5F50 001C2EB0  41 82 00 10 */	beq lbl_801C5F60
/* 801C5F54 001C2EB4  38 7E 08 08 */	addi r3, r30, 0x808
/* 801C5F58 001C2EB8  38 80 00 00 */	li r4, 0
/* 801C5F5C 001C2EBC  48 17 AE E5 */	bl __dt__6CTokenFv
lbl_801C5F60:
/* 801C5F60 001C2EC0  34 1E 07 FC */	addic. r0, r30, 0x7fc
/* 801C5F64 001C2EC4  41 82 00 18 */	beq lbl_801C5F7C
/* 801C5F68 001C2EC8  34 1E 07 FC */	addic. r0, r30, 0x7fc
/* 801C5F6C 001C2ECC  41 82 00 10 */	beq lbl_801C5F7C
/* 801C5F70 001C2ED0  38 7E 07 FC */	addi r3, r30, 0x7fc
/* 801C5F74 001C2ED4  38 80 00 00 */	li r4, 0
/* 801C5F78 001C2ED8  48 17 AE C9 */	bl __dt__6CTokenFv
lbl_801C5F7C:
/* 801C5F7C 001C2EDC  34 1E 07 F0 */	addic. r0, r30, 0x7f0
/* 801C5F80 001C2EE0  41 82 00 18 */	beq lbl_801C5F98
/* 801C5F84 001C2EE4  34 1E 07 F0 */	addic. r0, r30, 0x7f0
/* 801C5F88 001C2EE8  41 82 00 10 */	beq lbl_801C5F98
/* 801C5F8C 001C2EEC  38 7E 07 F0 */	addi r3, r30, 0x7f0
/* 801C5F90 001C2EF0  38 80 00 00 */	li r4, 0
/* 801C5F94 001C2EF4  48 17 AE AD */	bl __dt__6CTokenFv
lbl_801C5F98:
/* 801C5F98 001C2EF8  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 801C5F9C 001C2EFC  41 82 00 18 */	beq lbl_801C5FB4
/* 801C5FA0 001C2F00  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 801C5FA4 001C2F04  41 82 00 10 */	beq lbl_801C5FB4
/* 801C5FA8 001C2F08  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 801C5FAC 001C2F0C  38 80 00 00 */	li r4, 0
/* 801C5FB0 001C2F10  48 17 AE 91 */	bl __dt__6CTokenFv
lbl_801C5FB4:
/* 801C5FB4 001C2F14  34 1E 07 68 */	addic. r0, r30, 0x768
/* 801C5FB8 001C2F18  41 82 00 24 */	beq lbl_801C5FDC
/* 801C5FBC 001C2F1C  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 801C5FC0 001C2F20  34 1E 07 68 */	addic. r0, r30, 0x768
/* 801C5FC4 001C2F24  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 801C5FC8 001C2F28  90 1E 07 68 */	stw r0, 0x768(r30)
/* 801C5FCC 001C2F2C  41 82 00 10 */	beq lbl_801C5FDC
/* 801C5FD0 001C2F30  3C 60 80 3E */	lis r3, lbl_803D97E4@ha
/* 801C5FD4 001C2F34  38 03 97 E4 */	addi r0, r3, lbl_803D97E4@l
/* 801C5FD8 001C2F38  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_801C5FDC:
/* 801C5FDC 001C2F3C  34 1E 07 64 */	addic. r0, r30, 0x764
/* 801C5FE0 001C2F40  41 82 00 10 */	beq lbl_801C5FF0
/* 801C5FE4 001C2F44  80 7E 07 64 */	lwz r3, 0x764(r30)
/* 801C5FE8 001C2F48  38 80 00 01 */	li r4, 1
/* 801C5FEC 001C2F4C  4B FE 18 F1 */	bl sub_801a78dc
lbl_801C5FF0:
/* 801C5FF0 001C2F50  34 1E 06 7C */	addic. r0, r30, 0x67c
/* 801C5FF4 001C2F54  41 82 00 60 */	beq lbl_801C6054
/* 801C5FF8 001C2F58  34 1E 06 80 */	addic. r0, r30, 0x680
/* 801C5FFC 001C2F5C  41 82 00 58 */	beq lbl_801C6054
/* 801C6000 001C2F60  80 BE 06 80 */	lwz r5, 0x680(r30)
/* 801C6004 001C2F64  38 60 00 00 */	li r3, 0
/* 801C6008 001C2F68  2C 05 00 00 */	cmpwi r5, 0
/* 801C600C 001C2F6C  40 81 00 40 */	ble lbl_801C604C
/* 801C6010 001C2F70  2C 05 00 08 */	cmpwi r5, 8
/* 801C6014 001C2F74  38 85 FF F8 */	addi r4, r5, -8
/* 801C6018 001C2F78  40 81 00 20 */	ble lbl_801C6038
/* 801C601C 001C2F7C  38 04 00 07 */	addi r0, r4, 7
/* 801C6020 001C2F80  54 00 E8 FE */	srwi r0, r0, 3
/* 801C6024 001C2F84  7C 09 03 A6 */	mtctr r0
/* 801C6028 001C2F88  2C 04 00 00 */	cmpwi r4, 0
/* 801C602C 001C2F8C  40 81 00 0C */	ble lbl_801C6038
lbl_801C6030:
/* 801C6030 001C2F90  38 63 00 08 */	addi r3, r3, 8
/* 801C6034 001C2F94  42 00 FF FC */	bdnz lbl_801C6030
lbl_801C6038:
/* 801C6038 001C2F98  7C 03 28 50 */	subf r0, r3, r5
/* 801C603C 001C2F9C  7C 09 03 A6 */	mtctr r0
/* 801C6040 001C2FA0  7C 03 28 00 */	cmpw r3, r5
/* 801C6044 001C2FA4  40 80 00 08 */	bge lbl_801C604C
lbl_801C6048:
/* 801C6048 001C2FA8  42 00 00 00 */	bdnz lbl_801C6048
lbl_801C604C:
/* 801C604C 001C2FAC  38 00 00 00 */	li r0, 0
/* 801C6050 001C2FB0  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_801C6054:
/* 801C6054 001C2FB4  7F C3 F3 78 */	mr r3, r30
/* 801C6058 001C2FB8  38 80 00 00 */	li r4, 0
/* 801C605C 001C2FBC  4B EB 15 15 */	bl __dt__10CPatternedFv
/* 801C6060 001C2FC0  7F E0 07 35 */	extsh. r0, r31
/* 801C6064 001C2FC4  40 81 00 0C */	ble lbl_801C6070
/* 801C6068 001C2FC8  7F C3 F3 78 */	mr r3, r30
/* 801C606C 001C2FCC  48 14 F8 C5 */	bl Free__7CMemoryFPCv
lbl_801C6070:
/* 801C6070 001C2FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C6074 001C2FD4  7F C3 F3 78 */	mr r3, r30
/* 801C6078 001C2FD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C607C 001C2FDC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C6080 001C2FE0  7C 08 03 A6 */	mtlr r0
/* 801C6084 001C2FE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C6088 001C2FE8  4E 80 00 20 */	blr

.global "__ct__12CMetroidBetaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CMetroidData"
"__ct__12CMetroidBetaF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoRC16CActorParametersRC12CMetroidData":
/* 801C608C 001C2FEC  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801C6090 001C2FF0  7C 08 02 A6 */	mflr r0
/* 801C6094 001C2FF4  39 60 00 03 */	li r11, 3
/* 801C6098 001C2FF8  7D 0C 43 78 */	mr r12, r8
/* 801C609C 001C2FFC  90 01 01 04 */	stw r0, 0x104(r1)
/* 801C60A0 001C3000  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 801C60A4 001C3004  83 E1 01 08 */	lwz r31, 0x108(r1)
/* 801C60A8 001C3008  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 801C60AC 001C300C  7C 7E 1B 78 */	mr r30, r3
/* 801C60B0 001C3010  93 A1 00 F4 */	stw r29, 0xf4(r1)
/* 801C60B4 001C3014  7C DD 33 78 */	mr r29, r6
/* 801C60B8 001C3018  7C A6 2B 78 */	mr r6, r5
/* 801C60BC 001C301C  38 A1 00 20 */	addi r5, r1, 0x20
/* 801C60C0 001C3020  93 81 00 F0 */	stw r28, 0xf0(r1)
/* 801C60C4 001C3024  7D 3C 4B 78 */	mr r28, r9
/* 801C60C8 001C3028  7C E9 3B 78 */	mr r9, r7
/* 801C60CC 001C302C  7F A8 EB 78 */	mr r8, r29
/* 801C60D0 001C3030  A0 04 00 00 */	lhz r0, 0(r4)
/* 801C60D4 001C3034  38 80 00 01 */	li r4, 1
/* 801C60D8 001C3038  38 E0 00 01 */	li r7, 1
/* 801C60DC 001C303C  B0 01 00 20 */	sth r0, 0x20(r1)
/* 801C60E0 001C3040  38 00 00 02 */	li r0, 2
/* 801C60E4 001C3044  93 81 00 08 */	stw r28, 8(r1)
/* 801C60E8 001C3048  90 81 00 0C */	stw r4, 0xc(r1)
/* 801C60EC 001C304C  90 81 00 10 */	stw r4, 0x10(r1)
/* 801C60F0 001C3050  38 80 00 14 */	li r4, 0x14
/* 801C60F4 001C3054  91 61 00 14 */	stw r11, 0x14(r1)
/* 801C60F8 001C3058  91 41 00 18 */	stw r10, 0x18(r1)
/* 801C60FC 001C305C  7D 8A 63 78 */	mr r10, r12
/* 801C6100 001C3060  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C6104 001C3064  4B EB 73 4D */	bl "__ct__10CPatternedFUi9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Q210CPatterned11EFlavorTypeRC11CEntityInfoRC12CTransform4fRC10CModelDataRC14CPatternedInfoQ210CPatterned13EMovementTypeQ210CPatterned13EColliderType9EBodyTypeRC16CActorParametersUi"
/* 801C6108 001C3068  3C 60 80 3E */	lis r3, lbl_803E5388@ha
/* 801C610C 001C306C  38 00 FF FF */	li r0, -1
/* 801C6110 001C3070  38 63 53 88 */	addi r3, r3, lbl_803E5388@l
/* 801C6114 001C3074  7F E4 FB 78 */	mr r4, r31
/* 801C6118 001C3078  90 7E 00 00 */	stw r3, 0(r30)
/* 801C611C 001C307C  38 7E 05 6C */	addi r3, r30, 0x56c
/* 801C6120 001C3080  90 1E 05 68 */	stw r0, 0x568(r30)
/* 801C6124 001C3084  48 00 06 BD */	bl sub_801c67e0
/* 801C6128 001C3088  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 801C612C 001C308C  38 7E 06 7C */	addi r3, r30, 0x67c
/* 801C6130 001C3090  C0 22 AA A4 */	lfs f1, lbl_805AC7C4@sda21(r2)
/* 801C6134 001C3094  38 80 00 00 */	li r4, 0
/* 801C6138 001C3098  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 801C613C 001C309C  38 A0 00 03 */	li r5, 3
/* 801C6140 001C30A0  FC 40 08 90 */	fmr f2, f1
/* 801C6144 001C30A4  80 DC 01 0C */	lwz r6, 0x10c(r28)
/* 801C6148 001C30A8  48 00 2C 4D */	bl __ct__15CPathFindSearchFP7CPFAreaUiff
/* 801C614C 001C30AC  38 A0 00 FF */	li r5, 0xff
/* 801C6150 001C30B0  38 00 00 00 */	li r0, 0
/* 801C6154 001C30B4  98 BE 07 60 */	stb r5, 0x760(r30)
/* 801C6158 001C30B8  7F C4 F3 78 */	mr r4, r30
/* 801C615C 001C30BC  3B BE 00 68 */	addi r29, r30, 0x68
/* 801C6160 001C30C0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 801C6164 001C30C4  98 BE 07 61 */	stb r5, 0x761(r30)
/* 801C6168 001C30C8  90 1E 07 64 */	stw r0, 0x764(r30)
/* 801C616C 001C30CC  4B F5 47 C1 */	bl GetBoundingBox__13CPhysicsActorCFv
/* 801C6170 001C30D0  3B 9E 07 68 */	addi r28, r30, 0x768
/* 801C6174 001C30D4  7F A4 EB 78 */	mr r4, r29
/* 801C6178 001C30D8  7F 83 E3 78 */	mr r3, r28
/* 801C617C 001C30DC  48 10 97 39 */	bl __ct__19CCollisionPrimitiveFRC13CMaterialList
/* 801C6180 001C30E0  3C 60 80 3F */	lis r3, lbl_803ECAD0@ha
/* 801C6184 001C30E4  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C6188 001C30E8  38 03 CA D0 */	addi r0, r3, lbl_803ECAD0@l
/* 801C618C 001C30EC  3C 80 80 5A */	lis r4, skZero3f@ha
/* 801C6190 001C30F0  90 1C 00 00 */	stw r0, 0(r28)
/* 801C6194 001C30F4  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801C6198 001C30F8  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801C619C 001C30FC  38 A1 00 94 */	addi r5, r1, 0x94
/* 801C61A0 001C3100  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 801C61A4 001C3104  38 61 00 8C */	addi r3, r1, 0x8c
/* 801C61A8 001C3108  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 801C61AC 001C310C  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 801C61B0 001C3110  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 801C61B4 001C3114  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 801C61B8 001C3118  D0 1C 00 18 */	stfs f0, 0x18(r28)
/* 801C61BC 001C311C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 801C61C0 001C3120  D0 1C 00 1C */	stfs f0, 0x1c(r28)
/* 801C61C4 001C3124  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 801C61C8 001C3128  D0 1C 00 20 */	stfs f0, 0x20(r28)
/* 801C61CC 001C312C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 801C61D0 001C3130  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 801C61D4 001C3134  A0 CD A3 8C */	lhz r6, kInvalidUniqueId@sda21(r13)
/* 801C61D8 001C3138  B0 DE 07 90 */	sth r6, 0x790(r30)
/* 801C61DC 001C313C  D0 3E 07 94 */	stfs f1, 0x794(r30)
/* 801C61E0 001C3140  D0 3E 07 98 */	stfs f1, 0x798(r30)
/* 801C61E4 001C3144  D0 3E 07 9C */	stfs f1, 0x79c(r30)
/* 801C61E8 001C3148  D0 3E 07 A0 */	stfs f1, 0x7a0(r30)
/* 801C61EC 001C314C  D0 3E 07 A4 */	stfs f1, 0x7a4(r30)
/* 801C61F0 001C3150  C4 04 66 A0 */	lfsu f0, skZero3f@l(r4)
/* 801C61F4 001C3154  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 801C61F8 001C3158  C0 04 00 04 */	lfs f0, 4(r4)
/* 801C61FC 001C315C  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 801C6200 001C3160  C0 04 00 08 */	lfs f0, 8(r4)
/* 801C6204 001C3164  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 801C6208 001C3168  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801C620C 001C316C  C0 44 00 04 */	lfs f2, 4(r4)
/* 801C6210 001C3170  C0 64 00 08 */	lfs f3, 8(r4)
/* 801C6214 001C3174  C0 04 00 00 */	lfs f0, 0(r4)
/* 801C6218 001C3178  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 801C621C 001C317C  D0 5E 07 B8 */	stfs f2, 0x7b8(r30)
/* 801C6220 001C3180  D0 7E 07 BC */	stfs f3, 0x7bc(r30)
/* 801C6224 001C3184  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801C6228 001C3188  C0 44 00 04 */	lfs f2, 4(r4)
/* 801C622C 001C318C  C0 64 00 08 */	lfs f3, 8(r4)
/* 801C6230 001C3190  C0 04 00 00 */	lfs f0, 0(r4)
/* 801C6234 001C3194  D0 1E 07 C0 */	stfs f0, 0x7c0(r30)
/* 801C6238 001C3198  D0 5E 07 C4 */	stfs f2, 0x7c4(r30)
/* 801C623C 001C319C  D0 7E 07 C8 */	stfs f3, 0x7c8(r30)
/* 801C6240 001C31A0  80 9E 00 64 */	lwz r4, 0x64(r30)
/* 801C6244 001C31A4  C0 44 00 04 */	lfs f2, 4(r4)
/* 801C6248 001C31A8  C0 64 00 08 */	lfs f3, 8(r4)
/* 801C624C 001C31AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 801C6250 001C31B0  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 801C6254 001C31B4  D0 5E 07 D0 */	stfs f2, 0x7d0(r30)
/* 801C6258 001C31B8  D0 7E 07 D4 */	stfs f3, 0x7d4(r30)
/* 801C625C 001C31BC  D0 3E 07 D8 */	stfs f1, 0x7d8(r30)
/* 801C6260 001C31C0  D0 3E 07 DC */	stfs f1, 0x7dc(r30)
/* 801C6264 001C31C4  D0 3E 07 E0 */	stfs f1, 0x7e0(r30)
/* 801C6268 001C31C8  80 DF 00 F4 */	lwz r6, 0xf4(r31)
/* 801C626C 001C31CC  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801C6270 001C31D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 801C6274 001C31D4  90 C1 00 98 */	stw r6, 0x98(r1)
/* 801C6278 001C31D8  81 84 00 00 */	lwz r12, 0(r4)
/* 801C627C 001C31DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6280 001C31E0  7D 89 03 A6 */	mtctr r12
/* 801C6284 001C31E4  4E 80 04 21 */	bctrl
/* 801C6288 001C31E8  3B 9E 07 E4 */	addi r28, r30, 0x7e4
/* 801C628C 001C31EC  38 81 00 8C */	addi r4, r1, 0x8c
/* 801C6290 001C31F0  7F 83 E3 78 */	mr r3, r28
/* 801C6294 001C31F4  48 17 AC 15 */	bl __ct__6CTokenFRC6CToken
/* 801C6298 001C31F8  7F 83 E3 78 */	mr r3, r28
/* 801C629C 001C31FC  48 17 AB 71 */	bl GetObj__6CTokenFv
/* 801C62A0 001C3200  80 03 00 04 */	lwz r0, 4(r3)
/* 801C62A4 001C3204  38 61 00 8C */	addi r3, r1, 0x8c
/* 801C62A8 001C3208  38 80 FF FF */	li r4, -1
/* 801C62AC 001C320C  90 1C 00 08 */	stw r0, 8(r28)
/* 801C62B0 001C3210  48 17 AB 91 */	bl __dt__6CTokenFv
/* 801C62B4 001C3214  80 DF 00 F8 */	lwz r6, 0xf8(r31)
/* 801C62B8 001C3218  3C 60 53 57 */	lis r3, 0x53574843@ha
/* 801C62BC 001C321C  38 03 48 43 */	addi r0, r3, 0x53574843@l
/* 801C62C0 001C3220  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801C62C4 001C3224  90 01 00 84 */	stw r0, 0x84(r1)
/* 801C62C8 001C3228  38 61 00 7C */	addi r3, r1, 0x7c
/* 801C62CC 001C322C  38 A1 00 84 */	addi r5, r1, 0x84
/* 801C62D0 001C3230  90 C1 00 88 */	stw r6, 0x88(r1)
/* 801C62D4 001C3234  81 84 00 00 */	lwz r12, 0(r4)
/* 801C62D8 001C3238  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C62DC 001C323C  7D 89 03 A6 */	mtctr r12
/* 801C62E0 001C3240  4E 80 04 21 */	bctrl
/* 801C62E4 001C3244  3B 9E 07 F0 */	addi r28, r30, 0x7f0
/* 801C62E8 001C3248  38 81 00 7C */	addi r4, r1, 0x7c
/* 801C62EC 001C324C  7F 83 E3 78 */	mr r3, r28
/* 801C62F0 001C3250  48 17 AB B9 */	bl __ct__6CTokenFRC6CToken
/* 801C62F4 001C3254  7F 83 E3 78 */	mr r3, r28
/* 801C62F8 001C3258  48 17 AB 15 */	bl GetObj__6CTokenFv
/* 801C62FC 001C325C  80 03 00 04 */	lwz r0, 4(r3)
/* 801C6300 001C3260  38 61 00 7C */	addi r3, r1, 0x7c
/* 801C6304 001C3264  38 80 FF FF */	li r4, -1
/* 801C6308 001C3268  90 1C 00 08 */	stw r0, 8(r28)
/* 801C630C 001C326C  48 17 AB 35 */	bl __dt__6CTokenFv
/* 801C6310 001C3270  80 DF 00 FC */	lwz r6, 0xfc(r31)
/* 801C6314 001C3274  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801C6318 001C3278  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801C631C 001C327C  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801C6320 001C3280  90 01 00 74 */	stw r0, 0x74(r1)
/* 801C6324 001C3284  38 61 00 6C */	addi r3, r1, 0x6c
/* 801C6328 001C3288  38 A1 00 74 */	addi r5, r1, 0x74
/* 801C632C 001C328C  90 C1 00 78 */	stw r6, 0x78(r1)
/* 801C6330 001C3290  81 84 00 00 */	lwz r12, 0(r4)
/* 801C6334 001C3294  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6338 001C3298  7D 89 03 A6 */	mtctr r12
/* 801C633C 001C329C  4E 80 04 21 */	bctrl
/* 801C6340 001C32A0  3B 9E 07 FC */	addi r28, r30, 0x7fc
/* 801C6344 001C32A4  38 81 00 6C */	addi r4, r1, 0x6c
/* 801C6348 001C32A8  7F 83 E3 78 */	mr r3, r28
/* 801C634C 001C32AC  48 17 AB 5D */	bl __ct__6CTokenFRC6CToken
/* 801C6350 001C32B0  7F 83 E3 78 */	mr r3, r28
/* 801C6354 001C32B4  48 17 AA B9 */	bl GetObj__6CTokenFv
/* 801C6358 001C32B8  80 03 00 04 */	lwz r0, 4(r3)
/* 801C635C 001C32BC  38 61 00 6C */	addi r3, r1, 0x6c
/* 801C6360 001C32C0  38 80 FF FF */	li r4, -1
/* 801C6364 001C32C4  90 1C 00 08 */	stw r0, 8(r28)
/* 801C6368 001C32C8  48 17 AA D9 */	bl __dt__6CTokenFv
/* 801C636C 001C32CC  80 DF 01 00 */	lwz r6, 0x100(r31)
/* 801C6370 001C32D0  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801C6374 001C32D4  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801C6378 001C32D8  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801C637C 001C32DC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C6380 001C32E0  38 61 00 5C */	addi r3, r1, 0x5c
/* 801C6384 001C32E4  38 A1 00 64 */	addi r5, r1, 0x64
/* 801C6388 001C32E8  90 C1 00 68 */	stw r6, 0x68(r1)
/* 801C638C 001C32EC  81 84 00 00 */	lwz r12, 0(r4)
/* 801C6390 001C32F0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6394 001C32F4  7D 89 03 A6 */	mtctr r12
/* 801C6398 001C32F8  4E 80 04 21 */	bctrl
/* 801C639C 001C32FC  3B 9E 08 08 */	addi r28, r30, 0x808
/* 801C63A0 001C3300  38 81 00 5C */	addi r4, r1, 0x5c
/* 801C63A4 001C3304  7F 83 E3 78 */	mr r3, r28
/* 801C63A8 001C3308  48 17 AB 01 */	bl __ct__6CTokenFRC6CToken
/* 801C63AC 001C330C  7F 83 E3 78 */	mr r3, r28
/* 801C63B0 001C3310  48 17 AA 5D */	bl GetObj__6CTokenFv
/* 801C63B4 001C3314  80 03 00 04 */	lwz r0, 4(r3)
/* 801C63B8 001C3318  38 61 00 5C */	addi r3, r1, 0x5c
/* 801C63BC 001C331C  38 80 FF FF */	li r4, -1
/* 801C63C0 001C3320  90 1C 00 08 */	stw r0, 8(r28)
/* 801C63C4 001C3324  48 17 AA 7D */	bl __dt__6CTokenFv
/* 801C63C8 001C3328  80 DF 01 04 */	lwz r6, 0x104(r31)
/* 801C63CC 001C332C  3C 60 50 41 */	lis r3, 0x50415254@ha
/* 801C63D0 001C3330  38 03 52 54 */	addi r0, r3, 0x50415254@l
/* 801C63D4 001C3334  80 8D A0 64 */	lwz r4, gpSimplePool@sda21(r13)
/* 801C63D8 001C3338  90 01 00 54 */	stw r0, 0x54(r1)
/* 801C63DC 001C333C  38 61 00 4C */	addi r3, r1, 0x4c
/* 801C63E0 001C3340  38 A1 00 54 */	addi r5, r1, 0x54
/* 801C63E4 001C3344  90 C1 00 58 */	stw r6, 0x58(r1)
/* 801C63E8 001C3348  81 84 00 00 */	lwz r12, 0(r4)
/* 801C63EC 001C334C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C63F0 001C3350  7D 89 03 A6 */	mtctr r12
/* 801C63F4 001C3354  4E 80 04 21 */	bctrl
/* 801C63F8 001C3358  3B 9E 08 14 */	addi r28, r30, 0x814
/* 801C63FC 001C335C  38 81 00 4C */	addi r4, r1, 0x4c
/* 801C6400 001C3360  7F 83 E3 78 */	mr r3, r28
/* 801C6404 001C3364  48 17 AA A5 */	bl __ct__6CTokenFRC6CToken
/* 801C6408 001C3368  7F 83 E3 78 */	mr r3, r28
/* 801C640C 001C336C  48 17 AA 01 */	bl GetObj__6CTokenFv
/* 801C6410 001C3370  80 03 00 04 */	lwz r0, 4(r3)
/* 801C6414 001C3374  38 61 00 4C */	addi r3, r1, 0x4c
/* 801C6418 001C3378  38 80 FF FF */	li r4, -1
/* 801C641C 001C337C  90 1C 00 08 */	stw r0, 8(r28)
/* 801C6420 001C3380  48 17 AA 21 */	bl __dt__6CTokenFv
/* 801C6424 001C3384  3C 60 80 3D */	lis r3, lbl_803D1A80@ha
/* 801C6428 001C3388  3B 80 00 00 */	li r28, 0
/* 801C642C 001C338C  38 83 1A 80 */	addi r4, r3, lbl_803D1A80@l
/* 801C6430 001C3390  38 60 03 40 */	li r3, 0x340
/* 801C6434 001C3394  38 84 00 19 */	addi r4, r4, 0x19
/* 801C6438 001C3398  38 A0 00 00 */	li r5, 0
/* 801C643C 001C339C  48 14 F4 31 */	bl __nw__FUlPCcPCc
/* 801C6440 001C33A0  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C6444 001C33A4  41 82 00 2C */	beq lbl_801C6470
/* 801C6448 001C33A8  38 61 00 44 */	addi r3, r1, 0x44
/* 801C644C 001C33AC  38 9E 07 E4 */	addi r4, r30, 0x7e4
/* 801C6450 001C33B0  48 17 AA 59 */	bl __ct__6CTokenFRC6CToken
/* 801C6454 001C33B4  7F A3 EB 78 */	mr r3, r29
/* 801C6458 001C33B8  38 81 00 44 */	addi r4, r1, 0x44
/* 801C645C 001C33BC  3B 80 00 01 */	li r28, 1
/* 801C6460 001C33C0  38 A0 00 00 */	li r5, 0
/* 801C6464 001C33C4  38 C0 00 01 */	li r6, 1
/* 801C6468 001C33C8  48 15 8F 79 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801C646C 001C33CC  7C 7D 1B 78 */	mr r29, r3
lbl_801C6470:
/* 801C6470 001C33D0  7F 80 07 75 */	extsb. r0, r28
/* 801C6474 001C33D4  93 BE 08 20 */	stw r29, 0x820(r30)
/* 801C6478 001C33D8  41 82 00 10 */	beq lbl_801C6488
/* 801C647C 001C33DC  38 61 00 44 */	addi r3, r1, 0x44
/* 801C6480 001C33E0  38 80 00 00 */	li r4, 0
/* 801C6484 001C33E4  48 17 A9 BD */	bl __dt__6CTokenFv
lbl_801C6488:
/* 801C6488 001C33E8  3C 60 80 3D */	lis r3, lbl_803D1A80@ha
/* 801C648C 001C33EC  3B 80 00 00 */	li r28, 0
/* 801C6490 001C33F0  38 83 1A 80 */	addi r4, r3, lbl_803D1A80@l
/* 801C6494 001C33F4  38 60 02 10 */	li r3, 0x210
/* 801C6498 001C33F8  38 84 00 19 */	addi r4, r4, 0x19
/* 801C649C 001C33FC  38 A0 00 00 */	li r5, 0
/* 801C64A0 001C3400  48 14 F3 CD */	bl __nw__FUlPCcPCc
/* 801C64A4 001C3404  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C64A8 001C3408  41 82 00 28 */	beq lbl_801C64D0
/* 801C64AC 001C340C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801C64B0 001C3410  38 9E 07 F0 */	addi r4, r30, 0x7f0
/* 801C64B4 001C3414  48 17 A9 F5 */	bl __ct__6CTokenFRC6CToken
/* 801C64B8 001C3418  7F A3 EB 78 */	mr r3, r29
/* 801C64BC 001C341C  38 81 00 3C */	addi r4, r1, 0x3c
/* 801C64C0 001C3420  3B 80 00 01 */	li r28, 1
/* 801C64C4 001C3424  38 A0 00 00 */	li r5, 0
/* 801C64C8 001C3428  48 16 89 1D */	bl "__ct__15CParticleSwooshF28TToken<18CSwooshDescription>i"
/* 801C64CC 001C342C  7C 7D 1B 78 */	mr r29, r3
lbl_801C64D0:
/* 801C64D0 001C3430  7F 80 07 75 */	extsb. r0, r28
/* 801C64D4 001C3434  93 BE 08 24 */	stw r29, 0x824(r30)
/* 801C64D8 001C3438  41 82 00 10 */	beq lbl_801C64E8
/* 801C64DC 001C343C  38 61 00 3C */	addi r3, r1, 0x3c
/* 801C64E0 001C3440  38 80 00 00 */	li r4, 0
/* 801C64E4 001C3444  48 17 A9 5D */	bl __dt__6CTokenFv
lbl_801C64E8:
/* 801C64E8 001C3448  3C 60 80 3D */	lis r3, lbl_803D1A80@ha
/* 801C64EC 001C344C  3B 80 00 00 */	li r28, 0
/* 801C64F0 001C3450  38 83 1A 80 */	addi r4, r3, lbl_803D1A80@l
/* 801C64F4 001C3454  38 60 03 40 */	li r3, 0x340
/* 801C64F8 001C3458  38 84 00 19 */	addi r4, r4, 0x19
/* 801C64FC 001C345C  38 A0 00 00 */	li r5, 0
/* 801C6500 001C3460  48 14 F3 6D */	bl __nw__FUlPCcPCc
/* 801C6504 001C3464  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C6508 001C3468  41 82 00 2C */	beq lbl_801C6534
/* 801C650C 001C346C  38 61 00 34 */	addi r3, r1, 0x34
/* 801C6510 001C3470  38 9E 07 FC */	addi r4, r30, 0x7fc
/* 801C6514 001C3474  48 17 A9 95 */	bl __ct__6CTokenFRC6CToken
/* 801C6518 001C3478  7F A3 EB 78 */	mr r3, r29
/* 801C651C 001C347C  38 81 00 34 */	addi r4, r1, 0x34
/* 801C6520 001C3480  3B 80 00 01 */	li r28, 1
/* 801C6524 001C3484  38 A0 00 00 */	li r5, 0
/* 801C6528 001C3488  38 C0 00 01 */	li r6, 1
/* 801C652C 001C348C  48 15 8E B5 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801C6530 001C3490  7C 7D 1B 78 */	mr r29, r3
lbl_801C6534:
/* 801C6534 001C3494  7F 80 07 75 */	extsb. r0, r28
/* 801C6538 001C3498  93 BE 08 28 */	stw r29, 0x828(r30)
/* 801C653C 001C349C  41 82 00 10 */	beq lbl_801C654C
/* 801C6540 001C34A0  38 61 00 34 */	addi r3, r1, 0x34
/* 801C6544 001C34A4  38 80 00 00 */	li r4, 0
/* 801C6548 001C34A8  48 17 A8 F9 */	bl __dt__6CTokenFv
lbl_801C654C:
/* 801C654C 001C34AC  3C 60 80 3D */	lis r3, lbl_803D1A80@ha
/* 801C6550 001C34B0  3B 80 00 00 */	li r28, 0
/* 801C6554 001C34B4  38 83 1A 80 */	addi r4, r3, lbl_803D1A80@l
/* 801C6558 001C34B8  38 60 03 40 */	li r3, 0x340
/* 801C655C 001C34BC  38 84 00 19 */	addi r4, r4, 0x19
/* 801C6560 001C34C0  38 A0 00 00 */	li r5, 0
/* 801C6564 001C34C4  48 14 F3 09 */	bl __nw__FUlPCcPCc
/* 801C6568 001C34C8  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C656C 001C34CC  41 82 00 2C */	beq lbl_801C6598
/* 801C6570 001C34D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 801C6574 001C34D4  38 9E 08 08 */	addi r4, r30, 0x808
/* 801C6578 001C34D8  48 17 A9 31 */	bl __ct__6CTokenFRC6CToken
/* 801C657C 001C34DC  7F A3 EB 78 */	mr r3, r29
/* 801C6580 001C34E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 801C6584 001C34E4  3B 80 00 01 */	li r28, 1
/* 801C6588 001C34E8  38 A0 00 00 */	li r5, 0
/* 801C658C 001C34EC  38 C0 00 01 */	li r6, 1
/* 801C6590 001C34F0  48 15 8E 51 */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801C6594 001C34F4  7C 7D 1B 78 */	mr r29, r3
lbl_801C6598:
/* 801C6598 001C34F8  7F 80 07 75 */	extsb. r0, r28
/* 801C659C 001C34FC  93 BE 08 2C */	stw r29, 0x82c(r30)
/* 801C65A0 001C3500  41 82 00 10 */	beq lbl_801C65B0
/* 801C65A4 001C3504  38 61 00 2C */	addi r3, r1, 0x2c
/* 801C65A8 001C3508  38 80 00 00 */	li r4, 0
/* 801C65AC 001C350C  48 17 A8 95 */	bl __dt__6CTokenFv
lbl_801C65B0:
/* 801C65B0 001C3510  3C 60 80 3D */	lis r3, lbl_803D1A80@ha
/* 801C65B4 001C3514  3B 80 00 00 */	li r28, 0
/* 801C65B8 001C3518  38 83 1A 80 */	addi r4, r3, lbl_803D1A80@l
/* 801C65BC 001C351C  38 60 03 40 */	li r3, 0x340
/* 801C65C0 001C3520  38 84 00 19 */	addi r4, r4, 0x19
/* 801C65C4 001C3524  38 A0 00 00 */	li r5, 0
/* 801C65C8 001C3528  48 14 F2 A5 */	bl __nw__FUlPCcPCc
/* 801C65CC 001C352C  7C 7D 1B 79 */	or. r29, r3, r3
/* 801C65D0 001C3530  41 82 00 2C */	beq lbl_801C65FC
/* 801C65D4 001C3534  38 61 00 24 */	addi r3, r1, 0x24
/* 801C65D8 001C3538  38 9E 08 14 */	addi r4, r30, 0x814
/* 801C65DC 001C353C  48 17 A8 CD */	bl __ct__6CTokenFRC6CToken
/* 801C65E0 001C3540  7F A3 EB 78 */	mr r3, r29
/* 801C65E4 001C3544  38 81 00 24 */	addi r4, r1, 0x24
/* 801C65E8 001C3548  3B 80 00 01 */	li r28, 1
/* 801C65EC 001C354C  38 A0 00 00 */	li r5, 0
/* 801C65F0 001C3550  38 C0 00 01 */	li r6, 1
/* 801C65F4 001C3554  48 15 8D ED */	bl "__ct__11CElementGenF25TToken<15CGenDescription>Q211CElementGen21EModelOrientationTypeQ211CElementGen20EOptionalSystemFlags"
/* 801C65F8 001C3558  7C 7D 1B 78 */	mr r29, r3
lbl_801C65FC:
/* 801C65FC 001C355C  7F 80 07 75 */	extsb. r0, r28
/* 801C6600 001C3560  93 BE 08 30 */	stw r29, 0x830(r30)
/* 801C6604 001C3564  41 82 00 10 */	beq lbl_801C6614
/* 801C6608 001C3568  38 61 00 24 */	addi r3, r1, 0x24
/* 801C660C 001C356C  38 80 00 00 */	li r4, 0
/* 801C6610 001C3570  48 17 A8 31 */	bl __dt__6CTokenFv
lbl_801C6614:
/* 801C6614 001C3574  C0 02 AA 98 */	lfs f0, lbl_805AC7B8@sda21(r2)
/* 801C6618 001C3578  38 7E 08 38 */	addi r3, r30, 0x838
/* 801C661C 001C357C  38 80 05 BD */	li r4, 0x5bd
/* 801C6620 001C3580  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 801C6624 001C3584  48 14 BF C9 */	bl __ct__9CRandom16FUi
/* 801C6628 001C3588  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C662C 001C358C  38 60 00 00 */	li r3, 0
/* 801C6630 001C3590  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C6634 001C3594  38 80 00 00 */	li r4, 0
/* 801C6638 001C3598  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C663C 001C359C  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C6640 001C35A0  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 801C6644 001C35A4  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6648 001C35A8  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C664C 001C35AC  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 801C6650 001C35B0  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6654 001C35B4  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C6658 001C35B8  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 801C665C 001C35BC  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6660 001C35C0  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C6664 001C35C4  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 801C6668 001C35C8  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C666C 001C35CC  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C6670 001C35D0  50 60 17 7A */	rlwimi r0, r3, 2, 0x1d, 0x1d
/* 801C6674 001C35D4  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6678 001C35D8  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C667C 001C35DC  50 60 0F BC */	rlwimi r0, r3, 1, 0x1e, 0x1e
/* 801C6680 001C35E0  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6684 001C35E4  88 1E 08 40 */	lbz r0, 0x840(r30)
/* 801C6688 001C35E8  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 801C668C 001C35EC  98 1E 08 40 */	stb r0, 0x840(r30)
/* 801C6690 001C35F0  80 7E 08 20 */	lwz r3, 0x820(r30)
/* 801C6694 001C35F4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6698 001C35F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C669C 001C35FC  7D 89 03 A6 */	mtctr r12
/* 801C66A0 001C3600  4E 80 04 21 */	bctrl
/* 801C66A4 001C3604  80 7E 08 28 */	lwz r3, 0x828(r30)
/* 801C66A8 001C3608  38 80 00 00 */	li r4, 0
/* 801C66AC 001C360C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C66B0 001C3610  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C66B4 001C3614  7D 89 03 A6 */	mtctr r12
/* 801C66B8 001C3618  4E 80 04 21 */	bctrl
/* 801C66BC 001C361C  80 7E 08 2C */	lwz r3, 0x82c(r30)
/* 801C66C0 001C3620  38 80 00 00 */	li r4, 0
/* 801C66C4 001C3624  81 83 00 00 */	lwz r12, 0(r3)
/* 801C66C8 001C3628  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C66CC 001C362C  7D 89 03 A6 */	mtctr r12
/* 801C66D0 001C3630  4E 80 04 21 */	bctrl
/* 801C66D4 001C3634  83 BE 08 24 */	lwz r29, 0x824(r30)
/* 801C66D8 001C3638  3B 80 00 00 */	li r28, 0
/* 801C66DC 001C363C  3B E0 00 01 */	li r31, 1
/* 801C66E0 001C3640  48 00 00 30 */	b lbl_801C6710
lbl_801C66E4:
/* 801C66E4 001C3644  80 7E 08 24 */	lwz r3, 0x824(r30)
/* 801C66E8 001C3648  C8 22 AB 10 */	lfd f1, lbl_805AC830@sda21(r2)
/* 801C66EC 001C364C  88 03 01 D0 */	lbz r0, 0x1d0(r3)
/* 801C66F0 001C3650  53 E0 2E B4 */	rlwimi r0, r31, 5, 0x1a, 0x1a
/* 801C66F4 001C3654  98 03 01 D0 */	stb r0, 0x1d0(r3)
/* 801C66F8 001C3658  80 7E 08 24 */	lwz r3, 0x824(r30)
/* 801C66FC 001C365C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C6700 001C3660  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C6704 001C3664  7D 89 03 A6 */	mtctr r12
/* 801C6708 001C3668  4E 80 04 21 */	bctrl
/* 801C670C 001C366C  3B 9C 00 01 */	addi r28, r28, 1
lbl_801C6710:
/* 801C6710 001C3670  80 7D 01 60 */	lwz r3, 0x160(r29)
/* 801C6714 001C3674  38 03 FF FF */	addi r0, r3, -1
/* 801C6718 001C3678  7C 1C 00 00 */	cmpw r28, r0
/* 801C671C 001C367C  41 80 FF C8 */	blt lbl_801C66E4
/* 801C6720 001C3680  80 DE 00 64 */	lwz r6, 0x64(r30)
/* 801C6724 001C3684  38 61 00 D8 */	addi r3, r1, 0xd8
/* 801C6728 001C3688  C0 02 AA F4 */	lfs f0, lbl_805AC814@sda21(r2)
/* 801C672C 001C368C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 801C6730 001C3690  C0 66 00 04 */	lfs f3, 4(r6)
/* 801C6734 001C3694  38 A1 00 9C */	addi r5, r1, 0x9c
/* 801C6738 001C3698  C0 86 00 00 */	lfs f4, 0(r6)
/* 801C673C 001C369C  EC C0 00 F2 */	fmuls f6, f0, f3
/* 801C6740 001C36A0  C0 46 00 08 */	lfs f2, 8(r6)
/* 801C6744 001C36A4  C0 22 AA 9C */	lfs f1, lbl_805AC7BC@sda21(r2)
/* 801C6748 001C36A8  C0 02 AB 18 */	lfs f0, lbl_805AC838@sda21(r2)
/* 801C674C 001C36AC  FC A0 30 50 */	fneg f5, f6
/* 801C6750 001C36B0  D0 81 00 B4 */	stfs f4, 0xb4(r1)
/* 801C6754 001C36B4  EC 21 01 B2 */	fmuls f1, f1, f6
/* 801C6758 001C36B8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 801C675C 001C36BC  D0 61 00 B8 */	stfs f3, 0xb8(r1)
/* 801C6760 001C36C0  D0 41 00 BC */	stfs f2, 0xbc(r1)
/* 801C6764 001C36C4  D0 C1 00 9C */	stfs f6, 0x9c(r1)
/* 801C6768 001C36C8  D0 C1 00 A0 */	stfs f6, 0xa0(r1)
/* 801C676C 001C36CC  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 801C6770 001C36D0  D0 A1 00 A8 */	stfs f5, 0xa8(r1)
/* 801C6774 001C36D4  D0 A1 00 AC */	stfs f5, 0xac(r1)
/* 801C6778 001C36D8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 801C677C 001C36DC  48 17 1D 8D */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 801C6780 001C36E0  7F C3 F3 78 */	mr r3, r30
/* 801C6784 001C36E4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 801C6788 001C36E8  4B F5 3E D1 */	bl SetBoundingBox__13CPhysicsActorFRC6CAABox
/* 801C678C 001C36EC  80 81 00 D8 */	lwz r4, 0xd8(r1)
/* 801C6790 001C36F0  7F C3 F3 78 */	mr r3, r30
/* 801C6794 001C36F4  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 801C6798 001C36F8  90 9E 07 78 */	stw r4, 0x778(r30)
/* 801C679C 001C36FC  90 1E 07 7C */	stw r0, 0x77c(r30)
/* 801C67A0 001C3700  80 01 00 E0 */	lwz r0, 0xe0(r1)
/* 801C67A4 001C3704  90 1E 07 80 */	stw r0, 0x780(r30)
/* 801C67A8 001C3708  80 81 00 E4 */	lwz r4, 0xe4(r1)
/* 801C67AC 001C370C  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 801C67B0 001C3710  90 9E 07 84 */	stw r4, 0x784(r30)
/* 801C67B4 001C3714  90 1E 07 88 */	stw r0, 0x788(r30)
/* 801C67B8 001C3718  80 01 00 EC */	lwz r0, 0xec(r1)
/* 801C67BC 001C371C  90 1E 07 8C */	stw r0, 0x78c(r30)
/* 801C67C0 001C3720  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 801C67C4 001C3724  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 801C67C8 001C3728  83 A1 00 F4 */	lwz r29, 0xf4(r1)
/* 801C67CC 001C372C  83 81 00 F0 */	lwz r28, 0xf0(r1)
/* 801C67D0 001C3730  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801C67D4 001C3734  7C 08 03 A6 */	mtlr r0
/* 801C67D8 001C3738  38 21 01 00 */	addi r1, r1, 0x100
/* 801C67DC 001C373C  4E 80 00 20 */	blr

.global sub_801c67e0
sub_801c67e0:
/* 801C67E0 001C3740  80 A4 00 00 */	lwz r5, 0(r4)
/* 801C67E4 001C3744  80 04 00 04 */	lwz r0, 4(r4)
/* 801C67E8 001C3748  90 A3 00 00 */	stw r5, 0(r3)
/* 801C67EC 001C374C  90 03 00 04 */	stw r0, 4(r3)
/* 801C67F0 001C3750  80 A4 00 08 */	lwz r5, 8(r4)
/* 801C67F4 001C3754  80 04 00 0C */	lwz r0, 0xc(r4)
/* 801C67F8 001C3758  90 A3 00 08 */	stw r5, 8(r3)
/* 801C67FC 001C375C  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C6800 001C3760  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 801C6804 001C3764  80 04 00 14 */	lwz r0, 0x14(r4)
/* 801C6808 001C3768  90 A3 00 10 */	stw r5, 0x10(r3)
/* 801C680C 001C376C  90 03 00 14 */	stw r0, 0x14(r3)
/* 801C6810 001C3770  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 801C6814 001C3774  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 801C6818 001C3778  90 A3 00 18 */	stw r5, 0x18(r3)
/* 801C681C 001C377C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 801C6820 001C3780  80 A4 00 20 */	lwz r5, 0x20(r4)
/* 801C6824 001C3784  80 04 00 24 */	lwz r0, 0x24(r4)
/* 801C6828 001C3788  90 A3 00 20 */	stw r5, 0x20(r3)
/* 801C682C 001C378C  90 03 00 24 */	stw r0, 0x24(r3)
/* 801C6830 001C3790  80 A4 00 28 */	lwz r5, 0x28(r4)
/* 801C6834 001C3794  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 801C6838 001C3798  90 A3 00 28 */	stw r5, 0x28(r3)
/* 801C683C 001C379C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 801C6840 001C37A0  80 A4 00 30 */	lwz r5, 0x30(r4)
/* 801C6844 001C37A4  80 04 00 34 */	lwz r0, 0x34(r4)
/* 801C6848 001C37A8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 801C684C 001C37AC  90 03 00 34 */	stw r0, 0x34(r3)
/* 801C6850 001C37B0  80 04 00 38 */	lwz r0, 0x38(r4)
/* 801C6854 001C37B4  90 03 00 38 */	stw r0, 0x38(r3)
/* 801C6858 001C37B8  80 A4 00 3C */	lwz r5, 0x3c(r4)
/* 801C685C 001C37BC  80 04 00 40 */	lwz r0, 0x40(r4)
/* 801C6860 001C37C0  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 801C6864 001C37C4  90 03 00 40 */	stw r0, 0x40(r3)
/* 801C6868 001C37C8  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 801C686C 001C37CC  80 04 00 48 */	lwz r0, 0x48(r4)
/* 801C6870 001C37D0  90 A3 00 44 */	stw r5, 0x44(r3)
/* 801C6874 001C37D4  90 03 00 48 */	stw r0, 0x48(r3)
/* 801C6878 001C37D8  80 A4 00 4C */	lwz r5, 0x4c(r4)
/* 801C687C 001C37DC  80 04 00 50 */	lwz r0, 0x50(r4)
/* 801C6880 001C37E0  90 A3 00 4C */	stw r5, 0x4c(r3)
/* 801C6884 001C37E4  90 03 00 50 */	stw r0, 0x50(r3)
/* 801C6888 001C37E8  80 A4 00 54 */	lwz r5, 0x54(r4)
/* 801C688C 001C37EC  80 04 00 58 */	lwz r0, 0x58(r4)
/* 801C6890 001C37F0  90 A3 00 54 */	stw r5, 0x54(r3)
/* 801C6894 001C37F4  90 03 00 58 */	stw r0, 0x58(r3)
/* 801C6898 001C37F8  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 801C689C 001C37FC  90 03 00 5C */	stw r0, 0x5c(r3)
/* 801C68A0 001C3800  80 04 00 60 */	lwz r0, 0x60(r4)
/* 801C68A4 001C3804  90 03 00 60 */	stw r0, 0x60(r3)
/* 801C68A8 001C3808  80 04 00 64 */	lwz r0, 0x64(r4)
/* 801C68AC 001C380C  90 03 00 64 */	stw r0, 0x64(r3)
/* 801C68B0 001C3810  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 801C68B4 001C3814  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 801C68B8 001C3818  90 A3 00 68 */	stw r5, 0x68(r3)
/* 801C68BC 001C381C  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801C68C0 001C3820  80 A4 00 70 */	lwz r5, 0x70(r4)
/* 801C68C4 001C3824  80 04 00 74 */	lwz r0, 0x74(r4)
/* 801C68C8 001C3828  90 A3 00 70 */	stw r5, 0x70(r3)
/* 801C68CC 001C382C  90 03 00 74 */	stw r0, 0x74(r3)
/* 801C68D0 001C3830  80 A4 00 78 */	lwz r5, 0x78(r4)
/* 801C68D4 001C3834  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 801C68D8 001C3838  90 A3 00 78 */	stw r5, 0x78(r3)
/* 801C68DC 001C383C  90 03 00 7C */	stw r0, 0x7c(r3)
/* 801C68E0 001C3840  80 A4 00 80 */	lwz r5, 0x80(r4)
/* 801C68E4 001C3844  80 04 00 84 */	lwz r0, 0x84(r4)
/* 801C68E8 001C3848  90 A3 00 80 */	stw r5, 0x80(r3)
/* 801C68EC 001C384C  90 03 00 84 */	stw r0, 0x84(r3)
/* 801C68F0 001C3850  80 A4 00 88 */	lwz r5, 0x88(r4)
/* 801C68F4 001C3854  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 801C68F8 001C3858  90 A3 00 88 */	stw r5, 0x88(r3)
/* 801C68FC 001C385C  90 03 00 8C */	stw r0, 0x8c(r3)
/* 801C6900 001C3860  80 A4 00 90 */	lwz r5, 0x90(r4)
/* 801C6904 001C3864  80 04 00 94 */	lwz r0, 0x94(r4)
/* 801C6908 001C3868  90 A3 00 90 */	stw r5, 0x90(r3)
/* 801C690C 001C386C  90 03 00 94 */	stw r0, 0x94(r3)
/* 801C6910 001C3870  80 A4 00 98 */	lwz r5, 0x98(r4)
/* 801C6914 001C3874  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 801C6918 001C3878  90 A3 00 98 */	stw r5, 0x98(r3)
/* 801C691C 001C387C  90 03 00 9C */	stw r0, 0x9c(r3)
/* 801C6920 001C3880  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 801C6924 001C3884  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 801C6928 001C3888  80 A4 00 A4 */	lwz r5, 0xa4(r4)
/* 801C692C 001C388C  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 801C6930 001C3890  90 A3 00 A4 */	stw r5, 0xa4(r3)
/* 801C6934 001C3894  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 801C6938 001C3898  80 A4 00 AC */	lwz r5, 0xac(r4)
/* 801C693C 001C389C  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 801C6940 001C38A0  90 A3 00 AC */	stw r5, 0xac(r3)
/* 801C6944 001C38A4  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 801C6948 001C38A8  80 A4 00 B4 */	lwz r5, 0xb4(r4)
/* 801C694C 001C38AC  80 04 00 B8 */	lwz r0, 0xb8(r4)
/* 801C6950 001C38B0  90 A3 00 B4 */	stw r5, 0xb4(r3)
/* 801C6954 001C38B4  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 801C6958 001C38B8  80 A4 00 BC */	lwz r5, 0xbc(r4)
/* 801C695C 001C38BC  80 04 00 C0 */	lwz r0, 0xc0(r4)
/* 801C6960 001C38C0  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 801C6964 001C38C4  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 801C6968 001C38C8  80 04 00 C4 */	lwz r0, 0xc4(r4)
/* 801C696C 001C38CC  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 801C6970 001C38D0  80 04 00 C8 */	lwz r0, 0xc8(r4)
/* 801C6974 001C38D4  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 801C6978 001C38D8  80 04 00 CC */	lwz r0, 0xcc(r4)
/* 801C697C 001C38DC  90 03 00 CC */	stw r0, 0xcc(r3)
/* 801C6980 001C38E0  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 801C6984 001C38E4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801C6988 001C38E8  C0 04 00 D4 */	lfs f0, 0xd4(r4)
/* 801C698C 001C38EC  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 801C6990 001C38F0  C0 04 00 D8 */	lfs f0, 0xd8(r4)
/* 801C6994 001C38F4  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 801C6998 001C38F8  C0 04 00 DC */	lfs f0, 0xdc(r4)
/* 801C699C 001C38FC  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 801C69A0 001C3900  C0 04 00 E0 */	lfs f0, 0xe0(r4)
/* 801C69A4 001C3904  D0 03 00 E0 */	stfs f0, 0xe0(r3)
/* 801C69A8 001C3908  C0 04 00 E4 */	lfs f0, 0xe4(r4)
/* 801C69AC 001C390C  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 801C69B0 001C3910  C0 04 00 E8 */	lfs f0, 0xe8(r4)
/* 801C69B4 001C3914  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 801C69B8 001C3918  C0 04 00 EC */	lfs f0, 0xec(r4)
/* 801C69BC 001C391C  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 801C69C0 001C3920  C0 04 00 F0 */	lfs f0, 0xf0(r4)
/* 801C69C4 001C3924  D0 03 00 F0 */	stfs f0, 0xf0(r3)
/* 801C69C8 001C3928  80 04 00 F4 */	lwz r0, 0xf4(r4)
/* 801C69CC 001C392C  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 801C69D0 001C3930  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 801C69D4 001C3934  90 03 00 F8 */	stw r0, 0xf8(r3)
/* 801C69D8 001C3938  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 801C69DC 001C393C  90 03 00 FC */	stw r0, 0xfc(r3)
/* 801C69E0 001C3940  80 04 01 00 */	lwz r0, 0x100(r4)
/* 801C69E4 001C3944  90 03 01 00 */	stw r0, 0x100(r3)
/* 801C69E8 001C3948  80 04 01 04 */	lwz r0, 0x104(r4)
/* 801C69EC 001C394C  90 03 01 04 */	stw r0, 0x104(r3)
/* 801C69F0 001C3950  88 04 01 08 */	lbz r0, 0x108(r4)
/* 801C69F4 001C3954  98 03 01 08 */	stb r0, 0x108(r3)
/* 801C69F8 001C3958  4E 80 00 20 */	blr

.global __ct__16CMetroidBetaDataFR12CInputStream
__ct__16CMetroidBetaDataFR12CInputStream:
/* 801C69FC 001C395C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C6A00 001C3960  7C 08 02 A6 */	mflr r0
/* 801C6A04 001C3964  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C6A08 001C3968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C6A0C 001C396C  7C 9F 23 78 */	mr r31, r4
/* 801C6A10 001C3970  93 C1 00 08 */	stw r30, 8(r1)
/* 801C6A14 001C3974  7C 7E 1B 78 */	mr r30, r3
/* 801C6A18 001C3978  4B F3 C1 41 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801C6A1C 001C397C  7F E4 FB 78 */	mr r4, r31
/* 801C6A20 001C3980  38 7E 00 68 */	addi r3, r30, 0x68
/* 801C6A24 001C3984  4B F3 C1 35 */	bl __ct__20CDamageVulnerabilityFR12CInputStream
/* 801C6A28 001C3988  7F E3 FB 78 */	mr r3, r31
/* 801C6A2C 001C398C  48 17 81 FD */	bl ReadFloat__12CInputStreamFv
/* 801C6A30 001C3990  D0 3E 00 D0 */	stfs f1, 0xd0(r30)
/* 801C6A34 001C3994  7F E3 FB 78 */	mr r3, r31
/* 801C6A38 001C3998  48 17 81 F1 */	bl ReadFloat__12CInputStreamFv
/* 801C6A3C 001C399C  D0 3E 00 D4 */	stfs f1, 0xd4(r30)
/* 801C6A40 001C39A0  7F E3 FB 78 */	mr r3, r31
/* 801C6A44 001C39A4  48 17 81 E5 */	bl ReadFloat__12CInputStreamFv
/* 801C6A48 001C39A8  D0 3E 00 D8 */	stfs f1, 0xd8(r30)
/* 801C6A4C 001C39AC  7F E3 FB 78 */	mr r3, r31
/* 801C6A50 001C39B0  48 17 81 D9 */	bl ReadFloat__12CInputStreamFv
/* 801C6A54 001C39B4  D0 3E 00 DC */	stfs f1, 0xdc(r30)
/* 801C6A58 001C39B8  7F E3 FB 78 */	mr r3, r31
/* 801C6A5C 001C39BC  48 17 81 CD */	bl ReadFloat__12CInputStreamFv
/* 801C6A60 001C39C0  D0 3E 00 E0 */	stfs f1, 0xe0(r30)
/* 801C6A64 001C39C4  7F E3 FB 78 */	mr r3, r31
/* 801C6A68 001C39C8  48 17 81 C1 */	bl ReadFloat__12CInputStreamFv
/* 801C6A6C 001C39CC  D0 3E 00 E4 */	stfs f1, 0xe4(r30)
/* 801C6A70 001C39D0  7F E3 FB 78 */	mr r3, r31
/* 801C6A74 001C39D4  48 17 81 B5 */	bl ReadFloat__12CInputStreamFv
/* 801C6A78 001C39D8  D0 3E 00 E8 */	stfs f1, 0xe8(r30)
/* 801C6A7C 001C39DC  7F E3 FB 78 */	mr r3, r31
/* 801C6A80 001C39E0  48 17 81 A9 */	bl ReadFloat__12CInputStreamFv
/* 801C6A84 001C39E4  D0 3E 00 EC */	stfs f1, 0xec(r30)
/* 801C6A88 001C39E8  7F E3 FB 78 */	mr r3, r31
/* 801C6A8C 001C39EC  48 17 81 9D */	bl ReadFloat__12CInputStreamFv
/* 801C6A90 001C39F0  D0 3E 00 F0 */	stfs f1, 0xf0(r30)
/* 801C6A94 001C39F4  7F E3 FB 78 */	mr r3, r31
/* 801C6A98 001C39F8  48 17 81 ED */	bl ReadLong__12CInputStreamFv
/* 801C6A9C 001C39FC  90 7E 00 F4 */	stw r3, 0xf4(r30)
/* 801C6AA0 001C3A00  7F E3 FB 78 */	mr r3, r31
/* 801C6AA4 001C3A04  48 17 81 E1 */	bl ReadLong__12CInputStreamFv
/* 801C6AA8 001C3A08  90 7E 00 F8 */	stw r3, 0xf8(r30)
/* 801C6AAC 001C3A0C  7F E3 FB 78 */	mr r3, r31
/* 801C6AB0 001C3A10  48 17 81 D5 */	bl ReadLong__12CInputStreamFv
/* 801C6AB4 001C3A14  90 7E 00 FC */	stw r3, 0xfc(r30)
/* 801C6AB8 001C3A18  7F E3 FB 78 */	mr r3, r31
/* 801C6ABC 001C3A1C  48 17 81 C9 */	bl ReadLong__12CInputStreamFv
/* 801C6AC0 001C3A20  90 7E 01 00 */	stw r3, 0x100(r30)
/* 801C6AC4 001C3A24  7F E3 FB 78 */	mr r3, r31
/* 801C6AC8 001C3A28  48 17 81 BD */	bl ReadLong__12CInputStreamFv
/* 801C6ACC 001C3A2C  90 7E 01 04 */	stw r3, 0x104(r30)
/* 801C6AD0 001C3A30  7F E3 FB 78 */	mr r3, r31
/* 801C6AD4 001C3A34  48 17 82 09 */	bl ReadBool__12CInputStreamFv
/* 801C6AD8 001C3A38  88 1E 01 08 */	lbz r0, 0x108(r30)
/* 801C6ADC 001C3A3C  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 801C6AE0 001C3A40  7F C3 F3 78 */	mr r3, r30
/* 801C6AE4 001C3A44  98 1E 01 08 */	stb r0, 0x108(r30)
/* 801C6AE8 001C3A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C6AEC 001C3A4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C6AF0 001C3A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C6AF4 001C3A54  7C 08 03 A6 */	mtlr r0
/* 801C6AF8 001C3A58  38 21 00 10 */	addi r1, r1, 0x10
/* 801C6AFC 001C3A5C  4E 80 00 20 */	blr

.global __sinit_CMetroidBeta_cpp
__sinit_CMetroidBeta_cpp:
/* 801C6B00 001C3A60  C0 62 AA A4 */	lfs f3, lbl_805AC7C4@sda21(r2)
/* 801C6B04 001C3A64  3C 80 80 57 */	lis r4, lbl_80572048@ha
/* 801C6B08 001C3A68  C0 42 AB 1C */	lfs f2, lbl_805AC83C@sda21(r2)
/* 801C6B0C 001C3A6C  3C 60 80 57 */	lis r3, lbl_80572060@ha
/* 801C6B10 001C3A70  D4 64 20 48 */	stfsu f3, lbl_80572048@l(r4)
/* 801C6B14 001C3A74  C0 22 AA 98 */	lfs f1, lbl_805AC7B8@sda21(r2)
/* 801C6B18 001C3A78  D4 43 20 60 */	stfsu f2, lbl_80572060@l(r3)
/* 801C6B1C 001C3A7C  C0 02 AB 20 */	lfs f0, lbl_805AC840@sda21(r2)
/* 801C6B20 001C3A80  D0 64 00 04 */	stfs f3, 4(r4)
/* 801C6B24 001C3A84  D0 64 00 08 */	stfs f3, 8(r4)
/* 801C6B28 001C3A88  D0 23 00 04 */	stfs f1, 4(r3)
/* 801C6B2C 001C3A8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801C6B30 001C3A90  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AC7A0
lbl_805AC7A0:
	# ROM: 0x3F9040
	.4byte 0x00000017

.global lbl_805AC7A4
lbl_805AC7A4:
	# ROM: 0x3F9044
	.4byte 0x803D1A80
	.float 1.5

.global lbl_805AC7AC
lbl_805AC7AC:
	# ROM: 0x3F904C
	.4byte 0x803D1A87

.global lbl_805AC7B0
lbl_805AC7B0:
	# ROM: 0x3F9050
	.4byte 0x803D1A90

.global lbl_805AC7B4
lbl_805AC7B4:
	# ROM: 0x3F9054
	.4byte 0x803D1A80

.global lbl_805AC7B8
lbl_805AC7B8:
	# ROM: 0x3F9058
	.4byte 0

.global lbl_805AC7BC
lbl_805AC7BC:
	# ROM: 0x3F905C
	.float 2.0

.global lbl_805AC7C0
lbl_805AC7C0:
	# ROM: 0x3F9060
	.float 0.3

.global lbl_805AC7C4
lbl_805AC7C4:
	# ROM: 0x3F9064
	.float 1.0

.global lbl_805AC7C8
lbl_805AC7C8:
	# ROM: 0x3F9068
	.4byte 0x41C80000

.global lbl_805AC7CC
lbl_805AC7CC:
	# ROM: 0x3F906C
	.float 0.5

.global lbl_805AC7D0
lbl_805AC7D0:
	# ROM: 0x3F9070
	.float 0.01

.global lbl_805AC7D4
lbl_805AC7D4:
	# ROM: 0x3F9074
	.4byte 0x40400000

.global lbl_805AC7D8
lbl_805AC7D8:
	# ROM: 0x3F9078
	.float 5.0

.global lbl_805AC7DC
lbl_805AC7DC:
	# ROM: 0x3F907C
	.4byte 0x42FE0000

.global lbl_805AC7E0
lbl_805AC7E0:
	# ROM: 0x3F9080
	.4byte 0x3F2B851F

.global lbl_805AC7E4
lbl_805AC7E4:
	# ROM: 0x3F9084
	.4byte 0x3EA8F5C2

.global lbl_805AC7E8
lbl_805AC7E8:
	# ROM: 0x3F9088
	.4byte 0x45800000

.global lbl_805AC7EC
lbl_805AC7EC:
	# ROM: 0x3F908C
	.4byte 0x447A0000

.global lbl_805AC7F0
lbl_805AC7F0:
	# ROM: 0x3F9090
	.float 0.25

.global lbl_805AC7F4
lbl_805AC7F4:
	# ROM: 0x3F9094
	.float 6.2831855

.global lbl_805AC7F8
lbl_805AC7F8:
	# ROM: 0x3F9098
	.4byte 0x3E2E147B
	.4byte 0

.global lbl_805AC800
lbl_805AC800:
	# ROM: 0x3F90A0
	.double 4.503601774854144E15

.global lbl_805AC808
lbl_805AC808:
	# ROM: 0x3F90A8
	.4byte 0x3FC90FDB

.global lbl_805AC80C
lbl_805AC80C:
	# ROM: 0x3F90AC
	.float 0.1

.global lbl_805AC810
lbl_805AC810:
	# ROM: 0x3F90B0
	.float 0.2

.global lbl_805AC814
lbl_805AC814:
	# ROM: 0x3F90B4
	.float 0.75

.global lbl_805AC818
lbl_805AC818:
	# ROM: 0x3F90B8
	.float 15.0

.global lbl_805AC81C
lbl_805AC81C:
	# ROM: 0x3F90BC
	.4byte 0x3E860A92

.global lbl_805AC820
lbl_805AC820:
	# ROM: 0x3F90C0
	.4byte 0x40490FDB

.global lbl_805AC824
lbl_805AC824:
	# ROM: 0x3F90C4
	.float 0.7853982

.global lbl_805AC828
lbl_805AC828:
	# ROM: 0x3F90C8
	.4byte 0x40600000
	.4byte 0

.global lbl_805AC830
lbl_805AC830:
	# ROM: 0x3F90D0
	.4byte 0
	.4byte 0

.global lbl_805AC838
lbl_805AC838:
	# ROM: 0x3F90D8
	.4byte 0xC0000000

.global lbl_805AC83C
lbl_805AC83C:
	# ROM: 0x3F90DC
	.4byte 0xBE4CCCCD

.global lbl_805AC840
lbl_805AC840:
	# ROM: 0x3F90E0
	.4byte 0xBE99999A
	.4byte 0


.section .rodata
.global lbl_803D1A80
lbl_803D1A80:
	# ROM: 0x3CEA80
	.asciz "Pelvis"
	.byte 0x4C
	.asciz "_Claw_1"
	.asciz "R_Claw_1"
	.byte 0x3F, 0x3F, 0x28
	.4byte 0x3F3F2900


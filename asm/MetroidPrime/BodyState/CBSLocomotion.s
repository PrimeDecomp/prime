.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CBSFlyerLocomotion_cpp

.section .data

.global lbl_803E14C0
lbl_803E14C0:
	# ROM: 0x3DE4C0
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_803E14D8
lbl_803E14D8:
	# ROM: 0x3DE4D8
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_803E14F0
lbl_803E14F0:
	# ROM: 0x3DE4F0
	.4byte 0
	.4byte 0
	.4byte __dt__28CBSRestrictedFlyerLocomotionFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__23CBSRestrictedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__13CBSLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte GetLocomotionSpeed__23CBSRestrictedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__28CBSRestrictedFlyerLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__23CBSRestrictedLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController

.global lbl_803E153C
lbl_803E153C:
	# ROM: 0x3DE53C
	.4byte 0
	.4byte 0
	.4byte __dt__21CBSNewFlyerLocomotion
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__18CBSBiPedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__21CBSNewFlyerLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__21CBSNewFlyerLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController
	.4byte IsStrafing__18CBSBiPedLocomotionCFR15CBodyController

.global lbl_803E158C
lbl_803E158C:
	# ROM: 0x3DE58C
	.4byte 0
	.4byte 0
	.4byte __dt__23CBSWallWalkerLocomotion
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__18CBSBiPedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__23CBSWallWalkerLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__18CBSBiPedLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController
	.4byte IsStrafing__18CBSBiPedLocomotionCFR15CBodyController

.global lbl_803E15DC
lbl_803E15DC:
	# ROM: 0x3DE5DC
	.4byte 0
	.4byte 0
	.4byte __dt__18CBSFlyerLocomotion
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__18CBSBiPedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__18CBSFlyerLocomotionCFv
	.4byte GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__18CBSFlyerLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__18CBSBiPedLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController
	.4byte IsStrafing__18CBSBiPedLocomotionCFR15CBodyController
	.4byte IsBackPedal__18CBSFlyerLocomotionCFR15CBodyController

.global lbl_803E1630
lbl_803E1630:
	# ROM: 0x3DE630
	.4byte 0
	.4byte 0
	.4byte __dt__23CBSRestrictedLocomotionFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__23CBSRestrictedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__13CBSLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte GetLocomotionSpeed__23CBSRestrictedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__23CBSRestrictedLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController

.global lbl_803E167C
lbl_803E167C:
	# ROM: 0x3DE67C
	.4byte 0
	.4byte 0
	.4byte __dt__18CBSBiPedLocomotionFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__18CBSBiPedLocomotionCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
	.4byte ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController
	.4byte UpdateLocomotionAnimation__18CBSBiPedLocomotionFffR15CBodyControllerb
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController
	.4byte IsStrafing__18CBSBiPedLocomotionCFR15CBodyController

.global lbl_803E16CC
lbl_803E16CC:
	# ROM: 0x3DE6CC
	.4byte 0
	.4byte 0
	.4byte __dt__13CBSLocomotionFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte 0
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__13CBSLocomotionCFv
	.4byte Start__13CBSLocomotionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__13CBSLocomotionFR15CBodyController
	.4byte IsPitchable__13CBSLocomotionCFv
	.4byte 0
	.4byte ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController
	.4byte 0
	.4byte GetBodyStateTransition__13CBSLocomotionFfR15CBodyController

.section .sdata

.global lbl_805A7718
lbl_805A7718:
	# ROM: 0x3F50B8
	.float 1.0

.global lbl_805A771C
lbl_805A771C:
	# ROM: 0x3F50BC
	.float 1.0

.global lbl_805A7720
lbl_805A7720:
	# ROM: 0x3F50C0
	.float 1.0

.global lbl_805A7724
lbl_805A7724:
	# ROM: 0x3F50C4
	.4byte 0

.global lbl_805A7728
lbl_805A7728:
	# ROM: 0x3F50C8
	.4byte 0

.global lbl_805A772C
lbl_805A772C:
	# ROM: 0x3F50CC
	.4byte 0

.global lbl_805A7730
lbl_805A7730:
	# ROM: 0x3F50D0
	.float 1.0

.global lbl_805A7734
lbl_805A7734:
	# ROM: 0x3F50D4
	.4byte 0xFFFFFFFF

.global lbl_805A7738
lbl_805A7738:
	# ROM: 0x3F50D8
	.float 1.0
	.4byte 0

.section .sbss

# CBSFlyerLocomotion
.global lbl_805A8F80
lbl_805A8F80:
	.skip 0x8

.section .text, "ax"

.global __dt__28CBSRestrictedFlyerLocomotionFv
__dt__28CBSRestrictedFlyerLocomotionFv:
/* 80136B50 00133AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136B54 00133AB4  7C 08 02 A6 */	mflr r0
/* 80136B58 00133AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136B5C 00133ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136B60 00133AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80136B64 00133AC4  41 82 00 B0 */	beq lbl_80136C14
/* 80136B68 00133AC8  3C 60 80 3E */	lis r3, lbl_803E14F0@ha
/* 80136B6C 00133ACC  38 03 14 F0 */	addi r0, r3, lbl_803E14F0@l
/* 80136B70 00133AD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80136B74 00133AD4  41 82 00 90 */	beq lbl_80136C04
/* 80136B78 00133AD8  3C 60 80 3E */	lis r3, lbl_803E1630@ha
/* 80136B7C 00133ADC  34 1F 00 08 */	addic. r0, r31, 8
/* 80136B80 00133AE0  38 03 16 30 */	addi r0, r3, lbl_803E1630@l
/* 80136B84 00133AE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80136B88 00133AE8  41 82 00 58 */	beq lbl_80136BE0
/* 80136B8C 00133AEC  80 DF 00 08 */	lwz r6, 8(r31)
/* 80136B90 00133AF0  38 60 00 00 */	li r3, 0
/* 80136B94 00133AF4  2C 06 00 00 */	cmpwi r6, 0
/* 80136B98 00133AF8  40 81 00 40 */	ble lbl_80136BD8
/* 80136B9C 00133AFC  2C 06 00 08 */	cmpwi r6, 8
/* 80136BA0 00133B00  38 A6 FF F8 */	addi r5, r6, -8
/* 80136BA4 00133B04  40 81 00 20 */	ble lbl_80136BC4
/* 80136BA8 00133B08  38 05 00 07 */	addi r0, r5, 7
/* 80136BAC 00133B0C  54 00 E8 FE */	srwi r0, r0, 3
/* 80136BB0 00133B10  7C 09 03 A6 */	mtctr r0
/* 80136BB4 00133B14  2C 05 00 00 */	cmpwi r5, 0
/* 80136BB8 00133B18  40 81 00 0C */	ble lbl_80136BC4
lbl_80136BBC:
/* 80136BBC 00133B1C  38 63 00 08 */	addi r3, r3, 8
/* 80136BC0 00133B20  42 00 FF FC */	bdnz lbl_80136BBC
lbl_80136BC4:
/* 80136BC4 00133B24  7C 03 30 50 */	subf r0, r3, r6
/* 80136BC8 00133B28  7C 09 03 A6 */	mtctr r0
/* 80136BCC 00133B2C  7C 03 30 00 */	cmpw r3, r6
/* 80136BD0 00133B30  40 80 00 08 */	bge lbl_80136BD8
lbl_80136BD4:
/* 80136BD4 00133B34  42 00 00 00 */	bdnz lbl_80136BD4
lbl_80136BD8:
/* 80136BD8 00133B38  38 00 00 00 */	li r0, 0
/* 80136BDC 00133B3C  90 1F 00 08 */	stw r0, 8(r31)
lbl_80136BE0:
/* 80136BE0 00133B40  28 1F 00 00 */	cmplwi r31, 0
/* 80136BE4 00133B44  41 82 00 20 */	beq lbl_80136C04
/* 80136BE8 00133B48  3C 60 80 3E */	lis r3, lbl_803E16CC@ha
/* 80136BEC 00133B4C  38 03 16 CC */	addi r0, r3, lbl_803E16CC@l
/* 80136BF0 00133B50  90 1F 00 00 */	stw r0, 0(r31)
/* 80136BF4 00133B54  41 82 00 10 */	beq lbl_80136C04
/* 80136BF8 00133B58  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 80136BFC 00133B5C  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 80136C00 00133B60  90 1F 00 00 */	stw r0, 0(r31)
lbl_80136C04:
/* 80136C04 00133B64  7C 80 07 35 */	extsh. r0, r4
/* 80136C08 00133B68  40 81 00 0C */	ble lbl_80136C14
/* 80136C0C 00133B6C  7F E3 FB 78 */	mr r3, r31
/* 80136C10 00133B70  48 1D ED 21 */	bl Free__7CMemoryFPCv
lbl_80136C14:
/* 80136C14 00133B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136C18 00133B78  7F E3 FB 78 */	mr r3, r31
/* 80136C1C 00133B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136C20 00133B80  7C 08 03 A6 */	mtlr r0
/* 80136C24 00133B84  38 21 00 10 */	addi r1, r1, 0x10
/* 80136C28 00133B88  4E 80 00 20 */	blr

.global IsMoving__23CBSRestrictedLocomotionCFv
IsMoving__23CBSRestrictedLocomotionCFv:
/* 80136C2C 00133B8C  38 60 00 00 */	li r3, 0
/* 80136C30 00133B90  4E 80 00 20 */	blr

.global GetLocomotionSpeed__23CBSRestrictedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
GetLocomotionSpeed__23CBSRestrictedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim:
/* 80136C34 00133B94  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80136C38 00133B98  4E 80 00 20 */	blr

.global CanShoot__13CBSLocomotionCFv
CanShoot__13CBSLocomotionCFv:
/* 80136C3C 00133B9C  38 60 00 01 */	li r3, 1
/* 80136C40 00133BA0  4E 80 00 20 */	blr

.global IsPitchable__13CBSLocomotionCFv
IsPitchable__13CBSLocomotionCFv:
/* 80136C44 00133BA4  38 60 00 00 */	li r3, 0
/* 80136C48 00133BA8  4E 80 00 20 */	blr

.global ApplyLocomotionPhysics__28CBSRestrictedFlyerLocomotionFfR15CBodyController
ApplyLocomotionPhysics__28CBSRestrictedFlyerLocomotionFfR15CBodyController:
/* 80136C4C 00133BAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80136C50 00133BB0  7C 08 02 A6 */	mflr r0
/* 80136C54 00133BB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80136C58 00133BB8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80136C5C 00133BBC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 80136C60 00133BC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80136C64 00133BC4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80136C68 00133BC8  7C 9E 23 78 */	mr r30, r4
/* 80136C6C 00133BCC  FF E0 08 90 */	fmr f31, f1
/* 80136C70 00133BD0  80 84 00 00 */	lwz r4, 0(r4)
/* 80136C74 00133BD4  38 61 00 08 */	addi r3, r1, 8
/* 80136C78 00133BD8  4B F7 5A D9 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FR7CEntity"
/* 80136C7C 00133BDC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80136C80 00133BE0  28 1F 00 00 */	cmplwi r31, 0
/* 80136C84 00133BE4  41 82 00 60 */	beq lbl_80136CE4
/* 80136C88 00133BE8  FC 20 F8 90 */	fmr f1, f31
/* 80136C8C 00133BEC  7F C3 F3 78 */	mr r3, r30
/* 80136C90 00133BF0  38 9E 00 10 */	addi r4, r30, 0x10
/* 80136C94 00133BF4  48 00 3A 11 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
/* 80136C98 00133BF8  C0 7E 03 30 */	lfs f3, 0x330(r30)
/* 80136C9C 00133BFC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80136CA0 00133C00  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80136CA4 00133C04  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80136CA8 00133C08  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80136CAC 00133C0C  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 80136CB0 00133C10  EC 23 00 72 */	fmuls f1, f3, f1
/* 80136CB4 00133C14  EC 03 00 32 */	fmuls f0, f3, f0
/* 80136CB8 00133C18  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80136CBC 00133C1C  EC 24 00 72 */	fmuls f1, f4, f1
/* 80136CC0 00133C20  EC 04 00 32 */	fmuls f0, f4, f0
/* 80136CC4 00133C24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80136CC8 00133C28  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80136CCC 00133C2C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80136CD0 00133C30  4B EE 48 65 */	bl Identity__10CAxisAngleFv
/* 80136CD4 00133C34  7C 65 1B 78 */	mr r5, r3
/* 80136CD8 00133C38  7F E3 FB 78 */	mr r3, r31
/* 80136CDC 00133C3C  38 81 00 10 */	addi r4, r1, 0x10
/* 80136CE0 00133C40  4B FE 56 B9 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_80136CE4:
/* 80136CE4 00133C44  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80136CE8 00133C48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80136CEC 00133C4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80136CF0 00133C50  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80136CF4 00133C54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80136CF8 00133C58  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80136CFC 00133C5C  7C 08 03 A6 */	mtlr r0
/* 80136D00 00133C60  38 21 00 40 */	addi r1, r1, 0x40
/* 80136D04 00133C64  4E 80 00 20 */	blr

.global __ct__28CBSRestrictedFlyerLocomotionFR6CActor
__ct__28CBSRestrictedFlyerLocomotionFR6CActor:
/* 80136D08 00133C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136D0C 00133C6C  7C 08 02 A6 */	mflr r0
/* 80136D10 00133C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136D14 00133C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136D18 00133C78  7C 7F 1B 78 */	mr r31, r3
/* 80136D1C 00133C7C  48 00 08 E1 */	bl __ct__23CBSRestrictedLocomotionFR6CActor
/* 80136D20 00133C80  3C 80 80 3E */	lis r4, lbl_803E14F0@ha
/* 80136D24 00133C84  7F E3 FB 78 */	mr r3, r31
/* 80136D28 00133C88  38 04 14 F0 */	addi r0, r4, lbl_803E14F0@l
/* 80136D2C 00133C8C  90 1F 00 00 */	stw r0, 0(r31)
/* 80136D30 00133C90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136D34 00133C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136D38 00133C98  7C 08 03 A6 */	mtlr r0
/* 80136D3C 00133C9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80136D40 00133CA0  4E 80 00 20 */	blr

.global __dt__23CBSRestrictedLocomotionFv
__dt__23CBSRestrictedLocomotionFv:
/* 80136D44 00133CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136D48 00133CA8  7C 08 02 A6 */	mflr r0
/* 80136D4C 00133CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80136D50 00133CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80136D54 00133CB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80136D58 00133CB8  41 82 00 A0 */	beq lbl_80136DF8
/* 80136D5C 00133CBC  3C 60 80 3E */	lis r3, lbl_803E1630@ha
/* 80136D60 00133CC0  34 1F 00 08 */	addic. r0, r31, 8
/* 80136D64 00133CC4  38 03 16 30 */	addi r0, r3, lbl_803E1630@l
/* 80136D68 00133CC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80136D6C 00133CCC  41 82 00 58 */	beq lbl_80136DC4
/* 80136D70 00133CD0  80 DF 00 08 */	lwz r6, 8(r31)
/* 80136D74 00133CD4  38 60 00 00 */	li r3, 0
/* 80136D78 00133CD8  2C 06 00 00 */	cmpwi r6, 0
/* 80136D7C 00133CDC  40 81 00 40 */	ble lbl_80136DBC
/* 80136D80 00133CE0  2C 06 00 08 */	cmpwi r6, 8
/* 80136D84 00133CE4  38 A6 FF F8 */	addi r5, r6, -8
/* 80136D88 00133CE8  40 81 00 20 */	ble lbl_80136DA8
/* 80136D8C 00133CEC  38 05 00 07 */	addi r0, r5, 7
/* 80136D90 00133CF0  54 00 E8 FE */	srwi r0, r0, 3
/* 80136D94 00133CF4  7C 09 03 A6 */	mtctr r0
/* 80136D98 00133CF8  2C 05 00 00 */	cmpwi r5, 0
/* 80136D9C 00133CFC  40 81 00 0C */	ble lbl_80136DA8
lbl_80136DA0:
/* 80136DA0 00133D00  38 63 00 08 */	addi r3, r3, 8
/* 80136DA4 00133D04  42 00 FF FC */	bdnz lbl_80136DA0
lbl_80136DA8:
/* 80136DA8 00133D08  7C 03 30 50 */	subf r0, r3, r6
/* 80136DAC 00133D0C  7C 09 03 A6 */	mtctr r0
/* 80136DB0 00133D10  7C 03 30 00 */	cmpw r3, r6
/* 80136DB4 00133D14  40 80 00 08 */	bge lbl_80136DBC
lbl_80136DB8:
/* 80136DB8 00133D18  42 00 00 00 */	bdnz lbl_80136DB8
lbl_80136DBC:
/* 80136DBC 00133D1C  38 00 00 00 */	li r0, 0
/* 80136DC0 00133D20  90 1F 00 08 */	stw r0, 8(r31)
lbl_80136DC4:
/* 80136DC4 00133D24  28 1F 00 00 */	cmplwi r31, 0
/* 80136DC8 00133D28  41 82 00 20 */	beq lbl_80136DE8
/* 80136DCC 00133D2C  3C 60 80 3E */	lis r3, lbl_803E16CC@ha
/* 80136DD0 00133D30  38 03 16 CC */	addi r0, r3, lbl_803E16CC@l
/* 80136DD4 00133D34  90 1F 00 00 */	stw r0, 0(r31)
/* 80136DD8 00133D38  41 82 00 10 */	beq lbl_80136DE8
/* 80136DDC 00133D3C  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 80136DE0 00133D40  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 80136DE4 00133D44  90 1F 00 00 */	stw r0, 0(r31)
lbl_80136DE8:
/* 80136DE8 00133D48  7C 80 07 35 */	extsh. r0, r4
/* 80136DEC 00133D4C  40 81 00 0C */	ble lbl_80136DF8
/* 80136DF0 00133D50  7F E3 FB 78 */	mr r3, r31
/* 80136DF4 00133D54  48 1D EB 3D */	bl Free__7CMemoryFPCv
lbl_80136DF8:
/* 80136DF8 00133D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80136DFC 00133D5C  7F E3 FB 78 */	mr r3, r31
/* 80136E00 00133D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80136E04 00133D64  7C 08 03 A6 */	mtlr r0
/* 80136E08 00133D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80136E0C 00133D6C  4E 80 00 20 */	blr

.global UpdateLocomotionAnimation__21CBSNewFlyerLocomotionFffR15CBodyControllerb
UpdateLocomotionAnimation__21CBSNewFlyerLocomotionFffR15CBodyControllerb:
/* 80136E10 00133D70  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80136E14 00133D74  7C 08 02 A6 */	mflr r0
/* 80136E18 00133D78  90 01 00 84 */	stw r0, 0x84(r1)
/* 80136E1C 00133D7C  BF 41 00 68 */	stmw r26, 0x68(r1)
/* 80136E20 00133D80  7C 9E 23 78 */	mr r30, r4
/* 80136E24 00133D84  7C 7D 1B 78 */	mr r29, r3
/* 80136E28 00133D88  7C BF 2B 78 */	mr r31, r5
/* 80136E2C 00133D8C  38 61 00 08 */	addi r3, r1, 8
/* 80136E30 00133D90  80 84 00 00 */	lwz r4, 0(r4)
/* 80136E34 00133D94  4B F7 58 B1 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80136E38 00133D98  83 83 00 04 */	lwz r28, 4(r3)
/* 80136E3C 00133D9C  28 1C 00 00 */	cmplwi r28, 0
/* 80136E40 00133DA0  41 82 01 80 */	beq lbl_80136FC0
/* 80136E44 00133DA4  3B 7E 00 04 */	addi r27, r30, 4
/* 80136E48 00133DA8  3B 40 00 00 */	li r26, 0
/* 80136E4C 00133DAC  7F 63 DB 78 */	mr r3, r27
/* 80136E50 00133DB0  48 1D D8 A9 */	bl CanBeNormalized__9CVector3fCFv
/* 80136E54 00133DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80136E58 00133DB8  41 82 00 DC */	beq lbl_80136F34
/* 80136E5C 00133DBC  7F 65 DB 78 */	mr r5, r27
/* 80136E60 00133DC0  38 61 00 10 */	addi r3, r1, 0x10
/* 80136E64 00133DC4  38 9C 00 34 */	addi r4, r28, 0x34
/* 80136E68 00133DC8  48 1D BB BD */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80136E6C 00133DCC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80136E70 00133DD0  38 A0 00 00 */	li r5, 0
/* 80136E74 00133DD4  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 80136E78 00133DD8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80136E7C 00133DDC  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80136E80 00133DE0  EC 80 00 32 */	fmuls f4, f0, f0
/* 80136E84 00133DE4  EC A3 00 F2 */	fmuls f5, f3, f3
/* 80136E88 00133DE8  54 A0 10 3A */	slwi r0, r5, 2
/* 80136E8C 00133DEC  EC C2 00 B2 */	fmuls f6, f2, f2
/* 80136E90 00133DF0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80136E94 00133DF4  FC 20 20 18 */	frsp f1, f4
/* 80136E98 00133DF8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80136E9C 00133DFC  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 80136EA0 00133E00  D0 C1 00 24 */	stfs f6, 0x24(r1)
/* 80136EA4 00133E04  7C 03 04 2E */	lfsx f0, r3, r0
/* 80136EA8 00133E08  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80136EAC 00133E0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136EB0 00133E10  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80136EB4 00133E14  4C 41 13 82 */	cror 2, 1, 2
/* 80136EB8 00133E18  40 82 00 08 */	bne lbl_80136EC0
/* 80136EBC 00133E1C  38 A0 00 00 */	li r5, 0
lbl_80136EC0:
/* 80136EC0 00133E20  54 A0 10 3A */	slwi r0, r5, 2
/* 80136EC4 00133E24  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80136EC8 00133E28  7C 03 04 2E */	lfsx f0, r3, r0
/* 80136ECC 00133E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136ED0 00133E30  4C 41 13 82 */	cror 2, 1, 2
/* 80136ED4 00133E34  40 82 00 08 */	bne lbl_80136EDC
/* 80136ED8 00133E38  38 A0 00 01 */	li r5, 1
lbl_80136EDC:
/* 80136EDC 00133E3C  54 A0 10 3A */	slwi r0, r5, 2
/* 80136EE0 00133E40  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80136EE4 00133E44  7C 03 04 2E */	lfsx f0, r3, r0
/* 80136EE8 00133E48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136EEC 00133E4C  4C 41 13 82 */	cror 2, 1, 2
/* 80136EF0 00133E50  40 82 00 08 */	bne lbl_80136EF8
/* 80136EF4 00133E54  38 A0 00 02 */	li r5, 2
lbl_80136EF8:
/* 80136EF8 00133E58  54 A0 10 3A */	slwi r0, r5, 2
/* 80136EFC 00133E5C  38 61 00 28 */	addi r3, r1, 0x28
/* 80136F00 00133E60  7C 23 04 2E */	lfsx f1, r3, r0
/* 80136F04 00133E64  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80136F08 00133E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80136F0C 00133E6C  40 81 00 0C */	ble lbl_80136F18
/* 80136F10 00133E70  38 80 00 00 */	li r4, 0
/* 80136F14 00133E74  48 00 00 08 */	b lbl_80136F1C
lbl_80136F18:
/* 80136F18 00133E78  38 80 00 01 */	li r4, 1
lbl_80136F1C:
/* 80136F1C 00133E7C  54 A0 08 3C */	slwi r0, r5, 1
/* 80136F20 00133E80  3C 60 80 3E */	lis r3, lbl_803E14D8@ha
/* 80136F24 00133E84  7C 04 02 14 */	add r0, r4, r0
/* 80136F28 00133E88  54 00 10 3A */	slwi r0, r0, 2
/* 80136F2C 00133E8C  38 63 14 D8 */	addi r3, r3, lbl_803E14D8@l
/* 80136F30 00133E90  7F 43 00 2E */	lwzx r26, r3, r0
lbl_80136F34:
/* 80136F34 00133E94  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80136F38 00133E98  40 82 00 10 */	bne lbl_80136F48
/* 80136F3C 00133E9C  80 1D 03 C4 */	lwz r0, 0x3c4(r29)
/* 80136F40 00133EA0  7C 1A 00 00 */	cmpw r26, r0
/* 80136F44 00133EA4  41 82 00 7C */	beq lbl_80136FC0
lbl_80136F48:
/* 80136F48 00133EA8  80 9D 00 04 */	lwz r4, 4(r29)
/* 80136F4C 00133EAC  7F A3 EB 78 */	mr r3, r29
/* 80136F50 00133EB0  7F 45 D3 78 */	mr r5, r26
/* 80136F54 00133EB4  48 00 0E F5 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80136F58 00133EB8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80136F5C 00133EBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80136F60 00133EC0  40 82 00 10 */	bne lbl_80136F70
/* 80136F64 00133EC4  80 1E 02 F8 */	lwz r0, 0x2f8(r30)
/* 80136F68 00133EC8  7C 03 00 00 */	cmpw r3, r0
/* 80136F6C 00133ECC  41 82 00 50 */	beq lbl_80136FBC
lbl_80136F70:
/* 80136F70 00133ED0  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80136F74 00133ED4  38 00 00 00 */	li r0, 0
/* 80136F78 00133ED8  38 C0 FF FF */	li r6, -1
/* 80136F7C 00133EDC  38 E0 00 01 */	li r7, 1
/* 80136F80 00133EE0  90 61 00 34 */	stw r3, 0x34(r1)
/* 80136F84 00133EE4  7F C3 F3 78 */	mr r3, r30
/* 80136F88 00133EE8  38 81 00 34 */	addi r4, r1, 0x34
/* 80136F8C 00133EEC  38 A0 00 01 */	li r5, 1
/* 80136F90 00133EF0  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80136F94 00133EF4  38 C0 00 00 */	li r6, 0
/* 80136F98 00133EF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80136F9C 00133EFC  98 E1 00 40 */	stb r7, 0x40(r1)
/* 80136FA0 00133F00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80136FA4 00133F04  90 01 00 48 */	stw r0, 0x48(r1)
/* 80136FA8 00133F08  98 01 00 4C */	stb r0, 0x4c(r1)
/* 80136FAC 00133F0C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80136FB0 00133F10  90 01 00 54 */	stw r0, 0x54(r1)
/* 80136FB4 00133F14  90 01 00 58 */	stw r0, 0x58(r1)
/* 80136FB8 00133F18  48 00 39 65 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
lbl_80136FBC:
/* 80136FBC 00133F1C  93 5D 03 C4 */	stw r26, 0x3c4(r29)
lbl_80136FC0:
/* 80136FC0 00133F20  BB 41 00 68 */	lmw r26, 0x68(r1)
/* 80136FC4 00133F24  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80136FC8 00133F28  C0 22 9A 38 */	lfs f1, lbl_805AB758@sda21(r2)
/* 80136FCC 00133F2C  7C 08 03 A6 */	mtlr r0
/* 80136FD0 00133F30  38 21 00 80 */	addi r1, r1, 0x80
/* 80136FD4 00133F34  4E 80 00 20 */	blr

.global ApplyLocomotionPhysics__21CBSNewFlyerLocomotionFfR15CBodyController
ApplyLocomotionPhysics__21CBSNewFlyerLocomotionFfR15CBodyController:
/* 80136FD8 00133F38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80136FDC 00133F3C  7C 08 02 A6 */	mflr r0
/* 80136FE0 00133F40  90 01 00 34 */	stw r0, 0x34(r1)
/* 80136FE4 00133F44  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80136FE8 00133F48  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 80136FEC 00133F4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80136FF0 00133F50  7C 9F 23 78 */	mr r31, r4
/* 80136FF4 00133F54  FF E0 08 90 */	fmr f31, f1
/* 80136FF8 00133F58  80 84 00 00 */	lwz r4, 0(r4)
/* 80136FFC 00133F5C  38 61 00 08 */	addi r3, r1, 8
/* 80137000 00133F60  4B F7 56 E5 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80137004 00133F64  80 03 00 04 */	lwz r0, 4(r3)
/* 80137008 00133F68  28 00 00 00 */	cmplwi r0, 0
/* 8013700C 00133F6C  41 82 00 14 */	beq lbl_80137020
/* 80137010 00133F70  FC 20 F8 90 */	fmr f1, f31
/* 80137014 00133F74  7F E3 FB 78 */	mr r3, r31
/* 80137018 00133F78  38 9F 00 10 */	addi r4, r31, 0x10
/* 8013701C 00133F7C  48 00 36 89 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80137020:
/* 80137020 00133F80  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80137024 00133F84  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80137028 00133F88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013702C 00133F8C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80137030 00133F90  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80137034 00133F94  7C 08 03 A6 */	mtlr r0
/* 80137038 00133F98  38 21 00 30 */	addi r1, r1, 0x30
/* 8013703C 00133F9C  4E 80 00 20 */	blr

.global __ct__21CBSNewFlyerLocomotionFR6CActor
__ct__21CBSNewFlyerLocomotionFR6CActor:
/* 80137040 00133FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137044 00133FA4  7C 08 02 A6 */	mflr r0
/* 80137048 00133FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013704C 00133FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80137050 00133FB0  7C 7F 1B 78 */	mr r31, r3
/* 80137054 00133FB4  48 00 10 D9 */	bl __ct__18CBSBiPedLocomotionFR6CActor
/* 80137058 00133FB8  3C 80 80 3E */	lis r4, lbl_803E153C@ha
/* 8013705C 00133FBC  7F E3 FB 78 */	mr r3, r31
/* 80137060 00133FC0  38 04 15 3C */	addi r0, r4, lbl_803E153C@l
/* 80137064 00133FC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80137068 00133FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013706C 00133FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137070 00133FD0  7C 08 03 A6 */	mtlr r0
/* 80137074 00133FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80137078 00133FD8  4E 80 00 20 */	blr

.global __dt__18CBSBiPedLocomotionFv
__dt__18CBSBiPedLocomotionFv:
/* 8013707C 00133FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137080 00133FE0  7C 08 02 A6 */	mflr r0
/* 80137084 00133FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137088 00133FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013708C 00133FEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80137090 00133FF0  41 82 00 D4 */	beq lbl_80137164
/* 80137094 00133FF4  3C 60 80 3E */	lis r3, lbl_803E167C@ha
/* 80137098 00133FF8  34 1F 00 08 */	addic. r0, r31, 8
/* 8013709C 00133FFC  38 03 16 7C */	addi r0, r3, lbl_803E167C@l
/* 801370A0 00134000  90 1F 00 00 */	stw r0, 0(r31)
/* 801370A4 00134004  41 82 00 8C */	beq lbl_80137130
/* 801370A8 00134008  38 FF 00 0C */	addi r7, r31, 0xc
/* 801370AC 0013400C  38 60 00 00 */	li r3, 0
/* 801370B0 00134010  48 00 00 6C */	b lbl_8013711C
lbl_801370B4:
/* 801370B4 00134014  28 07 00 00 */	cmplwi r7, 0
/* 801370B8 00134018  41 82 00 5C */	beq lbl_80137114
/* 801370BC 0013401C  81 07 00 00 */	lwz r8, 0(r7)
/* 801370C0 00134020  38 A0 00 00 */	li r5, 0
/* 801370C4 00134024  2C 08 00 00 */	cmpwi r8, 0
/* 801370C8 00134028  40 81 00 44 */	ble lbl_8013710C
/* 801370CC 0013402C  2C 08 00 08 */	cmpwi r8, 8
/* 801370D0 00134030  38 C8 FF F8 */	addi r6, r8, -8
/* 801370D4 00134034  40 81 00 20 */	ble lbl_801370F4
/* 801370D8 00134038  38 06 00 07 */	addi r0, r6, 7
/* 801370DC 0013403C  54 00 E8 FE */	srwi r0, r0, 3
/* 801370E0 00134040  7C 09 03 A6 */	mtctr r0
/* 801370E4 00134044  2C 06 00 00 */	cmpwi r6, 0
/* 801370E8 00134048  40 81 00 0C */	ble lbl_801370F4
lbl_801370EC:
/* 801370EC 0013404C  38 A5 00 08 */	addi r5, r5, 8
/* 801370F0 00134050  42 00 FF FC */	bdnz lbl_801370EC
lbl_801370F4:
/* 801370F4 00134054  7C 05 40 50 */	subf r0, r5, r8
/* 801370F8 00134058  7C 09 03 A6 */	mtctr r0
/* 801370FC 0013405C  7C 05 40 00 */	cmpw r5, r8
/* 80137100 00134060  40 80 00 0C */	bge lbl_8013710C
lbl_80137104:
/* 80137104 00134064  38 A5 00 01 */	addi r5, r5, 1
/* 80137108 00134068  42 00 FF FC */	bdnz lbl_80137104
lbl_8013710C:
/* 8013710C 0013406C  38 00 00 00 */	li r0, 0
/* 80137110 00134070  90 07 00 00 */	stw r0, 0(r7)
lbl_80137114:
/* 80137114 00134074  38 E7 00 44 */	addi r7, r7, 0x44
/* 80137118 00134078  38 63 00 01 */	addi r3, r3, 1
lbl_8013711C:
/* 8013711C 0013407C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80137120 00134080  7C 03 00 00 */	cmpw r3, r0
/* 80137124 00134084  41 80 FF 90 */	blt lbl_801370B4
/* 80137128 00134088  38 00 00 00 */	li r0, 0
/* 8013712C 0013408C  90 1F 00 08 */	stw r0, 8(r31)
lbl_80137130:
/* 80137130 00134090  28 1F 00 00 */	cmplwi r31, 0
/* 80137134 00134094  41 82 00 20 */	beq lbl_80137154
/* 80137138 00134098  3C 60 80 3E */	lis r3, lbl_803E16CC@ha
/* 8013713C 0013409C  38 03 16 CC */	addi r0, r3, lbl_803E16CC@l
/* 80137140 001340A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80137144 001340A4  41 82 00 10 */	beq lbl_80137154
/* 80137148 001340A8  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 8013714C 001340AC  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 80137150 001340B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80137154:
/* 80137154 001340B4  7C 80 07 35 */	extsh. r0, r4
/* 80137158 001340B8  40 81 00 0C */	ble lbl_80137164
/* 8013715C 001340BC  7F E3 FB 78 */	mr r3, r31
/* 80137160 001340C0  48 1D E7 D1 */	bl Free__7CMemoryFPCv
lbl_80137164:
/* 80137164 001340C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137168 001340C8  7F E3 FB 78 */	mr r3, r31
/* 8013716C 001340CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137170 001340D0  7C 08 03 A6 */	mtlr r0
/* 80137174 001340D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80137178 001340D8  4E 80 00 20 */	blr

.global ApplyLocomotionPhysics__23CBSWallWalkerLocomotionFfR15CBodyController
ApplyLocomotionPhysics__23CBSWallWalkerLocomotionFfR15CBodyController:
/* 8013717C 001340DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80137180 001340E0  7C 08 02 A6 */	mflr r0
/* 80137184 001340E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80137188 001340E8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8013718C 001340EC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80137190 001340F0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80137194 001340F4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80137198 001340F8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8013719C 001340FC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 801371A0 00134100  93 A1 00 94 */	stw r29, 0x94(r1)
/* 801371A4 00134104  7C 9D 23 78 */	mr r29, r4
/* 801371A8 00134108  FF C0 08 90 */	fmr f30, f1
/* 801371AC 0013410C  80 84 00 00 */	lwz r4, 0(r4)
/* 801371B0 00134110  38 61 00 0C */	addi r3, r1, 0xc
/* 801371B4 00134114  4B F7 55 31 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 801371B8 00134118  83 E3 00 04 */	lwz r31, 4(r3)
/* 801371BC 0013411C  28 1F 00 00 */	cmplwi r31, 0
/* 801371C0 00134120  41 82 01 B0 */	beq lbl_80137370
/* 801371C4 00134124  38 7D 02 A4 */	addi r3, r29, 0x2a4
/* 801371C8 00134128  4B FF CC E5 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801371CC 0013412C  FF E0 08 90 */	fmr f31, f1
/* 801371D0 00134130  C0 5D 00 08 */	lfs f2, 8(r29)
/* 801371D4 00134134  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 801371D8 00134138  3B DD 00 10 */	addi r30, r29, 0x10
/* 801371DC 0013413C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801371E0 00134140  7F C3 F3 78 */	mr r3, r30
/* 801371E4 00134144  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 801371E8 00134148  38 81 00 80 */	addi r4, r1, 0x80
/* 801371EC 0013414C  EC 3F 00 72 */	fmuls f1, f31, f1
/* 801371F0 00134150  EC 1F 00 32 */	fmuls f0, f31, f0
/* 801371F4 00134154  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 801371F8 00134158  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801371FC 0013415C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80137200 00134160  48 1D D4 31 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 80137204 00134164  C0 02 9A 3C */	lfs f0, lbl_805AB75C@sda21(r2)
/* 80137208 00134168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013720C 0013416C  40 80 00 08 */	bge lbl_80137214
/* 80137210 00134170  3B C1 00 80 */	addi r30, r1, 0x80
lbl_80137214:
/* 80137214 00134174  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80137218 00134178  38 61 00 74 */	addi r3, r1, 0x74
/* 8013721C 0013417C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80137220 00134180  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80137224 00134184  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80137228 00134188  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8013722C 0013418C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80137230 00134190  48 1D D4 C9 */	bl CanBeNormalized__9CVector3fCFv
/* 80137234 00134194  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137238 00134198  41 82 00 3C */	beq lbl_80137274
/* 8013723C 0013419C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 80137240 001341A0  38 61 00 50 */	addi r3, r1, 0x50
/* 80137244 001341A4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80137248 001341A8  38 81 00 80 */	addi r4, r1, 0x80
/* 8013724C 001341AC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80137250 001341B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80137254 001341B4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80137258 001341B8  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 8013725C 001341BC  48 1D D5 F5 */	bl AsNormalized__9CVector3fCFv
/* 80137260 001341C0  FC 20 F0 90 */	fmr f1, f30
/* 80137264 001341C4  7F A3 EB 78 */	mr r3, r29
/* 80137268 001341C8  38 81 00 50 */	addi r4, r1, 0x50
/* 8013726C 001341CC  38 A1 00 44 */	addi r5, r1, 0x44
/* 80137270 001341D0  48 00 31 F9 */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
lbl_80137274:
/* 80137274 001341D4  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 80137278 001341D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8013727C 001341DC  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 80137280 001341E0  38 9F 00 34 */	addi r4, r31, 0x34
/* 80137284 001341E4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80137288 001341E8  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8013728C 001341EC  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80137290 001341F0  38 A1 00 68 */	addi r5, r1, 0x68
/* 80137294 001341F4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80137298 001341F8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8013729C 001341FC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801372A0 00134200  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 801372A4 00134204  48 1D B7 81 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 801372A8 00134208  FC 20 F0 90 */	fmr f1, f30
/* 801372AC 0013420C  7F E4 FB 78 */	mr r4, r31
/* 801372B0 00134210  38 61 00 38 */	addi r3, r1, 0x38
/* 801372B4 00134214  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801372B8 00134218  4B FE 3D 51 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 801372BC 0013421C  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 801372C0 00134220  C0 02 9A 40 */	lfs f0, lbl_805AB760@sda21(r2)
/* 801372C4 00134224  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801372C8 00134228  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801372CC 0013422C  C0 61 00 3C */	lfs f3, 0x3c(r1)
/* 801372D0 00134230  C0 81 00 40 */	lfs f4, 0x40(r1)
/* 801372D4 00134234  40 81 00 2C */	ble lbl_80137300
/* 801372D8 00134238  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 801372DC 0013423C  38 61 00 20 */	addi r3, r1, 0x20
/* 801372E0 00134240  EC 00 10 24 */	fdivs f0, f0, f2
/* 801372E4 00134244  EC 40 00 72 */	fmuls f2, f0, f1
/* 801372E8 00134248  EC 20 00 F2 */	fmuls f1, f0, f3
/* 801372EC 0013424C  EC 00 01 32 */	fmuls f0, f0, f4
/* 801372F0 00134250  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801372F4 00134254  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801372F8 00134258  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801372FC 0013425C  48 00 00 20 */	b lbl_8013731C
lbl_80137300:
/* 80137300 00134260  38 7F 01 38 */	addi r3, r31, 0x138
/* 80137304 00134264  48 1D D5 B5 */	bl Magnitude__9CVector3fCFv
/* 80137308 00134268  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 8013730C 0013426C  38 61 00 14 */	addi r3, r1, 0x14
/* 80137310 00134270  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80137314 00134274  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80137318 00134278  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8013731C:
/* 8013731C 0013427C  C0 23 00 00 */	lfs f1, 0(r3)
/* 80137320 00134280  C0 02 9A 40 */	lfs f0, lbl_805AB760@sda21(r2)
/* 80137324 00134284  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80137328 00134288  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8013732C 0013428C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80137330 00134290  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80137334 00134294  C0 03 00 08 */	lfs f0, 8(r3)
/* 80137338 00134298  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8013733C 0013429C  40 81 00 34 */	ble lbl_80137370
/* 80137340 001342A0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80137344 001342A4  48 1D D5 75 */	bl Magnitude__9CVector3fCFv
/* 80137348 001342A8  EC 21 F8 24 */	fdivs f1, f1, f31
/* 8013734C 001342AC  C0 0D 8B 78 */	lfs f0, lbl_805A7738@sda21(r13)
/* 80137350 001342B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80137354 001342B4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80137358 001342B8  40 80 00 0C */	bge lbl_80137364
/* 8013735C 001342BC  38 6D 8B 78 */	addi r3, r13, lbl_805A7738@sda21
/* 80137360 001342C0  48 00 00 08 */	b lbl_80137368
lbl_80137364:
/* 80137364 001342C4  38 61 00 08 */	addi r3, r1, 8
lbl_80137368:
/* 80137368 001342C8  C0 23 00 00 */	lfs f1, 0(r3)
/* 8013736C 001342CC  48 00 00 08 */	b lbl_80137374
lbl_80137370:
/* 80137370 001342D0  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_80137374:
/* 80137374 001342D4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 80137378 001342D8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8013737C 001342DC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 80137380 001342E0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80137384 001342E4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80137388 001342E8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8013738C 001342EC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80137390 001342F0  83 A1 00 94 */	lwz r29, 0x94(r1)
/* 80137394 001342F4  7C 08 03 A6 */	mtlr r0
/* 80137398 001342F8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8013739C 001342FC  4E 80 00 20 */	blr

.global __ct__23CBSWallWalkerLocomotionFR6CActor
__ct__23CBSWallWalkerLocomotionFR6CActor:
/* 801373A0 00134300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801373A4 00134304  7C 08 02 A6 */	mflr r0
/* 801373A8 00134308  90 01 00 14 */	stw r0, 0x14(r1)
/* 801373AC 0013430C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801373B0 00134310  7C 7F 1B 78 */	mr r31, r3
/* 801373B4 00134314  48 00 0D 79 */	bl __ct__18CBSBiPedLocomotionFR6CActor
/* 801373B8 00134318  3C 80 80 3E */	lis r4, lbl_803E158C@ha
/* 801373BC 0013431C  7F E3 FB 78 */	mr r3, r31
/* 801373C0 00134320  38 04 15 8C */	addi r0, r4, lbl_803E158C@l
/* 801373C4 00134324  90 1F 00 00 */	stw r0, 0(r31)
/* 801373C8 00134328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801373CC 0013432C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801373D0 00134330  7C 08 03 A6 */	mtlr r0
/* 801373D4 00134334  38 21 00 10 */	addi r1, r1, 0x10
/* 801373D8 00134338  4E 80 00 20 */	blr

.global ApplyLocomotionPhysics__18CBSFlyerLocomotionFfR15CBodyController
ApplyLocomotionPhysics__18CBSFlyerLocomotionFfR15CBodyController:
/* 801373DC 0013433C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801373E0 00134340  7C 08 02 A6 */	mflr r0
/* 801373E4 00134344  90 01 00 74 */	stw r0, 0x74(r1)
/* 801373E8 00134348  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801373EC 0013434C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801373F0 00134350  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 801373F4 00134354  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 801373F8 00134358  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801373FC 0013435C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80137400 00134360  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80137404 00134364  FF C0 08 90 */	fmr f30, f1
/* 80137408 00134368  7C 7D 1B 78 */	mr r29, r3
/* 8013740C 0013436C  7C 9E 23 78 */	mr r30, r4
/* 80137410 00134370  48 00 14 65 */	bl ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController
/* 80137414 00134374  FF E0 08 90 */	fmr f31, f1
/* 80137418 00134378  80 9E 00 00 */	lwz r4, 0(r30)
/* 8013741C 0013437C  38 61 00 08 */	addi r3, r1, 8
/* 80137420 00134380  4B F7 52 C5 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80137424 00134384  83 E3 00 04 */	lwz r31, 4(r3)
/* 80137428 00134388  28 1F 00 00 */	cmplwi r31, 0
/* 8013742C 0013438C  41 82 00 9C */	beq lbl_801374C8
/* 80137430 00134390  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80137434 00134394  C0 02 9A 44 */	lfs f0, lbl_805AB764@sda21(r2)
/* 80137438 00134398  FC 20 0A 10 */	fabs f1, f1
/* 8013743C 0013439C  FC 20 08 18 */	frsp f1, f1
/* 80137440 001343A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137444 001343A4  40 81 00 84 */	ble lbl_801374C8
/* 80137448 001343A8  88 1D 03 CC */	lbz r0, 0x3cc(r29)
/* 8013744C 001343AC  28 00 00 00 */	cmplwi r0, 0
/* 80137450 001343B0  41 82 00 14 */	beq lbl_80137464
/* 80137454 001343B4  C0 3E 02 D4 */	lfs f1, 0x2d4(r30)
/* 80137458 001343B8  C0 0D A3 C0 */	lfs f0, lbl_805A8F80@sda21(r13)
/* 8013745C 001343BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137460 001343C0  40 80 00 68 */	bge lbl_801374C8
lbl_80137464:
/* 80137464 001343C4  38 7E 02 A4 */	addi r3, r30, 0x2a4
/* 80137468 001343C8  4B FF CA 45 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 8013746C 001343CC  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 80137470 001343D0  7F E4 FB 78 */	mr r4, r31
/* 80137474 001343D4  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80137478 001343D8  38 61 00 10 */	addi r3, r1, 0x10
/* 8013747C 001343DC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80137480 001343E0  38 A1 00 28 */	addi r5, r1, 0x28
/* 80137484 001343E4  FC 20 F0 90 */	fmr f1, f30
/* 80137488 001343E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8013748C 001343EC  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 80137490 001343F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80137494 001343F4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80137498 001343F8  4B FE 3B 71 */	bl GetMoveToORImpulseWR__13CPhysicsActorCFRC9CVector3ff
/* 8013749C 001343FC  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 801374A0 00134400  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801374A4 00134404  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801374A8 00134408  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801374AC 0013440C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 801374B0 00134410  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801374B4 00134414  4B EE 40 81 */	bl Identity__10CAxisAngleFv
/* 801374B8 00134418  7C 65 1B 78 */	mr r5, r3
/* 801374BC 0013441C  7F E3 FB 78 */	mr r3, r31
/* 801374C0 00134420  38 81 00 1C */	addi r4, r1, 0x1c
/* 801374C4 00134424  4B FE 4E D5 */	bl ApplyImpulseWR__13CPhysicsActorFRC9CVector3fRC10CAxisAngle
lbl_801374C8:
/* 801374C8 00134428  FC 20 F8 90 */	fmr f1, f31
/* 801374CC 0013442C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801374D0 00134430  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801374D4 00134434  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 801374D8 00134438  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 801374DC 0013443C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801374E0 00134440  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 801374E4 00134444  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801374E8 00134448  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 801374EC 0013444C  7C 08 03 A6 */	mtlr r0
/* 801374F0 00134450  38 21 00 70 */	addi r1, r1, 0x70
/* 801374F4 00134454  4E 80 00 20 */	blr

.global __ct__18CBSFlyerLocomotionFR6CActorb
__ct__18CBSFlyerLocomotionFR6CActorb:
/* 801374F8 00134458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801374FC 0013445C  7C 08 02 A6 */	mflr r0
/* 80137500 00134460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137504 00134464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80137508 00134468  7C BF 2B 78 */	mr r31, r5
/* 8013750C 0013446C  93 C1 00 08 */	stw r30, 8(r1)
/* 80137510 00134470  7C 7E 1B 78 */	mr r30, r3
/* 80137514 00134474  48 00 0C 19 */	bl __ct__18CBSBiPedLocomotionFR6CActor
/* 80137518 00134478  3C 80 80 3E */	lis r4, lbl_803E15DC@ha
/* 8013751C 0013447C  7F C3 F3 78 */	mr r3, r30
/* 80137520 00134480  38 04 15 DC */	addi r0, r4, lbl_803E15DC@l
/* 80137524 00134484  90 1E 00 00 */	stw r0, 0(r30)
/* 80137528 00134488  9B FE 03 CC */	stb r31, 0x3cc(r30)
/* 8013752C 0013448C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137530 00134490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137534 00134494  83 C1 00 08 */	lwz r30, 8(r1)
/* 80137538 00134498  7C 08 03 A6 */	mtlr r0
/* 8013753C 0013449C  38 21 00 10 */	addi r1, r1, 0x10
/* 80137540 001344A0  4E 80 00 20 */	blr

.global UpdateLocomotionAnimation__23CBSRestrictedLocomotionFffR15CBodyControllerb
UpdateLocomotionAnimation__23CBSRestrictedLocomotionFffR15CBodyControllerb:
/* 80137544 001344A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80137548 001344A8  7C 08 02 A6 */	mflr r0
/* 8013754C 001344AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80137550 001344B0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80137554 001344B4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80137558 001344B8  7C 7F 1B 78 */	mr r31, r3
/* 8013755C 001344BC  41 82 00 0C */	beq lbl_80137568
/* 80137560 001344C0  38 00 FF FF */	li r0, -1
/* 80137564 001344C4  48 00 00 08 */	b lbl_8013756C
lbl_80137568:
/* 80137568 001344C8  80 1F 00 44 */	lwz r0, 0x44(r31)
lbl_8013756C:
/* 8013756C 001344CC  2C 00 00 00 */	cmpwi r0, 0
/* 80137570 001344D0  41 82 00 74 */	beq lbl_801375E4
/* 80137574 001344D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80137578 001344D8  80 04 02 F8 */	lwz r0, 0x2f8(r4)
/* 8013757C 001344DC  54 63 10 3A */	slwi r3, r3, 2
/* 80137580 001344E0  7C 7F 1A 14 */	add r3, r31, r3
/* 80137584 001344E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80137588 001344E8  7C 03 00 00 */	cmpw r3, r0
/* 8013758C 001344EC  41 82 00 50 */	beq lbl_801375DC
/* 80137590 001344F0  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80137594 001344F4  38 00 00 00 */	li r0, 0
/* 80137598 001344F8  38 C0 FF FF */	li r6, -1
/* 8013759C 001344FC  38 E0 00 01 */	li r7, 1
/* 801375A0 00134500  90 61 00 08 */	stw r3, 8(r1)
/* 801375A4 00134504  7C 83 23 78 */	mr r3, r4
/* 801375A8 00134508  38 81 00 08 */	addi r4, r1, 8
/* 801375AC 0013450C  38 A0 00 01 */	li r5, 1
/* 801375B0 00134510  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801375B4 00134514  38 C0 00 00 */	li r6, 0
/* 801375B8 00134518  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801375BC 0013451C  98 E1 00 14 */	stb r7, 0x14(r1)
/* 801375C0 00134520  90 01 00 18 */	stw r0, 0x18(r1)
/* 801375C4 00134524  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801375C8 00134528  98 01 00 20 */	stb r0, 0x20(r1)
/* 801375CC 0013452C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801375D0 00134530  90 01 00 28 */	stw r0, 0x28(r1)
/* 801375D4 00134534  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801375D8 00134538  48 00 33 45 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
lbl_801375DC:
/* 801375DC 0013453C  38 00 00 00 */	li r0, 0
/* 801375E0 00134540  90 1F 00 44 */	stw r0, 0x44(r31)
lbl_801375E4:
/* 801375E4 00134544  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801375E8 00134548  C0 22 9A 38 */	lfs f1, lbl_805AB758@sda21(r2)
/* 801375EC 0013454C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801375F0 00134550  7C 08 03 A6 */	mtlr r0
/* 801375F4 00134554  38 21 00 40 */	addi r1, r1, 0x40
/* 801375F8 00134558  4E 80 00 20 */	blr

.global __ct__23CBSRestrictedLocomotionFR6CActor
__ct__23CBSRestrictedLocomotionFR6CActor:
/* 801375FC 0013455C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80137600 00134560  7C 08 02 A6 */	mflr r0
/* 80137604 00134564  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80137608 00134568  BF 21 00 A4 */	stmw r25, 0xa4(r1)
/* 8013760C 0013456C  7C 7F 1B 78 */	mr r31, r3
/* 80137610 00134570  7C 9B 23 78 */	mr r27, r4
/* 80137614 00134574  48 00 16 1D */	bl __ct__13CBSLocomotionFv
/* 80137618 00134578  3C 80 80 3E */	lis r4, lbl_803E1630@ha
/* 8013761C 0013457C  38 60 00 0E */	li r3, 0xe
/* 80137620 00134580  38 84 16 30 */	addi r4, r4, lbl_803E1630@l
/* 80137624 00134584  38 00 00 02 */	li r0, 2
/* 80137628 00134588  90 9F 00 00 */	stw r4, 0(r31)
/* 8013762C 0013458C  38 BF 00 0C */	addi r5, r31, 0xc
/* 80137630 00134590  38 80 00 00 */	li r4, 0
/* 80137634 00134594  90 7F 00 08 */	stw r3, 8(r31)
/* 80137638 00134598  7C 09 03 A6 */	mtctr r0
lbl_8013763C:
/* 8013763C 0013459C  28 05 00 00 */	cmplwi r5, 0
/* 80137640 001345A0  41 82 00 0C */	beq lbl_8013764C
/* 80137644 001345A4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137648 001345A8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013764C:
/* 8013764C 001345AC  34 A5 00 04 */	addic. r5, r5, 4
/* 80137650 001345B0  41 82 00 0C */	beq lbl_8013765C
/* 80137654 001345B4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137658 001345B8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013765C:
/* 8013765C 001345BC  34 A5 00 04 */	addic. r5, r5, 4
/* 80137660 001345C0  41 82 00 0C */	beq lbl_8013766C
/* 80137664 001345C4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137668 001345C8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013766C:
/* 8013766C 001345CC  34 A5 00 04 */	addic. r5, r5, 4
/* 80137670 001345D0  41 82 00 0C */	beq lbl_8013767C
/* 80137674 001345D4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137678 001345D8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013767C:
/* 8013767C 001345DC  34 A5 00 04 */	addic. r5, r5, 4
/* 80137680 001345E0  41 82 00 0C */	beq lbl_8013768C
/* 80137684 001345E4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137688 001345E8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013768C:
/* 8013768C 001345EC  34 A5 00 04 */	addic. r5, r5, 4
/* 80137690 001345F0  41 82 00 0C */	beq lbl_8013769C
/* 80137694 001345F4  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 80137698 001345F8  90 05 00 00 */	stw r0, 0(r5)
lbl_8013769C:
/* 8013769C 001345FC  34 A5 00 04 */	addic. r5, r5, 4
/* 801376A0 00134600  41 82 00 0C */	beq lbl_801376AC
/* 801376A4 00134604  80 0D 8B 74 */	lwz r0, lbl_805A7734@sda21(r13)
/* 801376A8 00134608  90 05 00 00 */	stw r0, 0(r5)
lbl_801376AC:
/* 801376AC 0013460C  38 84 00 06 */	addi r4, r4, 6
/* 801376B0 00134610  38 A5 00 04 */	addi r5, r5, 4
/* 801376B4 00134614  42 00 FF 88 */	bdnz lbl_8013763C
/* 801376B8 00134618  38 00 FF FF */	li r0, -1
/* 801376BC 0013461C  3B 41 00 5C */	addi r26, r1, 0x5c
/* 801376C0 00134620  90 1F 00 44 */	stw r0, 0x44(r31)
/* 801376C4 00134624  3B 81 00 20 */	addi r28, r1, 0x20
/* 801376C8 00134628  3B A1 00 18 */	addi r29, r1, 0x18
/* 801376CC 0013462C  3B 20 00 00 */	li r25, 0
/* 801376D0 00134630  80 7B 00 64 */	lwz r3, 0x64(r27)
/* 801376D4 00134634  3B C0 00 00 */	li r30, 0
/* 801376D8 00134638  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801376DC 0013463C  3B 63 00 3C */	addi r27, r3, 0x3c
lbl_801376E0:
/* 801376E0 00134640  38 61 00 18 */	addi r3, r1, 0x18
/* 801376E4 00134644  48 1A B9 99 */	bl NoParameter__12CPASAnimParmFv
/* 801376E8 00134648  38 61 00 20 */	addi r3, r1, 0x20
/* 801376EC 0013464C  48 1A B9 91 */	bl NoParameter__12CPASAnimParmFv
/* 801376F0 00134650  38 61 00 28 */	addi r3, r1, 0x28
/* 801376F4 00134654  48 1A B9 89 */	bl NoParameter__12CPASAnimParmFv
/* 801376F8 00134658  38 61 00 30 */	addi r3, r1, 0x30
/* 801376FC 0013465C  48 1A B9 81 */	bl NoParameter__12CPASAnimParmFv
/* 80137700 00134660  38 61 00 38 */	addi r3, r1, 0x38
/* 80137704 00134664  48 1A B9 79 */	bl NoParameter__12CPASAnimParmFv
/* 80137708 00134668  38 61 00 40 */	addi r3, r1, 0x40
/* 8013770C 0013466C  48 1A B9 71 */	bl NoParameter__12CPASAnimParmFv
/* 80137710 00134670  7F 24 CB 78 */	mr r4, r25
/* 80137714 00134674  38 61 00 48 */	addi r3, r1, 0x48
/* 80137718 00134678  48 1A B8 6D */	bl FromEnum__12CPASAnimParmFi
/* 8013771C 0013467C  38 61 00 50 */	addi r3, r1, 0x50
/* 80137720 00134680  38 80 00 00 */	li r4, 0
/* 80137724 00134684  48 1A B8 61 */	bl FromEnum__12CPASAnimParmFi
/* 80137728 00134688  93 81 00 08 */	stw r28, 8(r1)
/* 8013772C 0013468C  38 61 00 58 */	addi r3, r1, 0x58
/* 80137730 00134690  38 A1 00 50 */	addi r5, r1, 0x50
/* 80137734 00134694  38 C1 00 48 */	addi r6, r1, 0x48
/* 80137738 00134698  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8013773C 0013469C  38 E1 00 40 */	addi r7, r1, 0x40
/* 80137740 001346A0  39 01 00 38 */	addi r8, r1, 0x38
/* 80137744 001346A4  39 21 00 30 */	addi r9, r1, 0x30
/* 80137748 001346A8  39 41 00 28 */	addi r10, r1, 0x28
/* 8013774C 001346AC  38 80 00 05 */	li r4, 5
/* 80137750 001346B0  4B F4 5B 75 */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80137754 001346B4  7F 64 DB 78 */	mr r4, r27
/* 80137758 001346B8  38 61 00 10 */	addi r3, r1, 0x10
/* 8013775C 001346BC  38 A1 00 58 */	addi r5, r1, 0x58
/* 80137760 001346C0  38 C0 FF FF */	li r6, -1
/* 80137764 001346C4  48 1A DA 09 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
/* 80137768 001346C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013776C 001346CC  7C 7F F2 14 */	add r3, r31, r30
/* 80137770 001346D0  28 1A 00 00 */	cmplwi r26, 0
/* 80137774 001346D4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80137778 001346D8  41 82 00 5C */	beq lbl_801377D4
/* 8013777C 001346DC  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 80137780 001346E0  38 60 00 00 */	li r3, 0
/* 80137784 001346E4  2C 05 00 00 */	cmpwi r5, 0
/* 80137788 001346E8  40 81 00 44 */	ble lbl_801377CC
/* 8013778C 001346EC  2C 05 00 08 */	cmpwi r5, 8
/* 80137790 001346F0  38 85 FF F8 */	addi r4, r5, -8
/* 80137794 001346F4  40 81 00 20 */	ble lbl_801377B4
/* 80137798 001346F8  38 04 00 07 */	addi r0, r4, 7
/* 8013779C 001346FC  54 00 E8 FE */	srwi r0, r0, 3
/* 801377A0 00134700  7C 09 03 A6 */	mtctr r0
/* 801377A4 00134704  2C 04 00 00 */	cmpwi r4, 0
/* 801377A8 00134708  40 81 00 0C */	ble lbl_801377B4
lbl_801377AC:
/* 801377AC 0013470C  38 63 00 08 */	addi r3, r3, 8
/* 801377B0 00134710  42 00 FF FC */	bdnz lbl_801377AC
lbl_801377B4:
/* 801377B4 00134714  7C 03 28 50 */	subf r0, r3, r5
/* 801377B8 00134718  7C 09 03 A6 */	mtctr r0
/* 801377BC 0013471C  7C 03 28 00 */	cmpw r3, r5
/* 801377C0 00134720  40 80 00 0C */	bge lbl_801377CC
lbl_801377C4:
/* 801377C4 00134724  38 63 00 01 */	addi r3, r3, 1
/* 801377C8 00134728  42 00 FF FC */	bdnz lbl_801377C4
lbl_801377CC:
/* 801377CC 0013472C  38 00 00 00 */	li r0, 0
/* 801377D0 00134730  90 01 00 5C */	stw r0, 0x5c(r1)
lbl_801377D4:
/* 801377D4 00134734  3B 39 00 01 */	addi r25, r25, 1
/* 801377D8 00134738  3B DE 00 04 */	addi r30, r30, 4
/* 801377DC 0013473C  2C 19 00 0E */	cmpwi r25, 0xe
/* 801377E0 00134740  41 80 FF 00 */	blt lbl_801376E0
/* 801377E4 00134744  7F E3 FB 78 */	mr r3, r31
/* 801377E8 00134748  BB 21 00 A4 */	lmw r25, 0xa4(r1)
/* 801377EC 0013474C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801377F0 00134750  7C 08 03 A6 */	mtlr r0
/* 801377F4 00134754  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801377F8 00134758  4E 80 00 20 */	blr

.global __dt__13CBSLocomotionFv
__dt__13CBSLocomotionFv:
/* 801377FC 0013475C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137800 00134760  7C 08 02 A6 */	mflr r0
/* 80137804 00134764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137808 00134768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013780C 0013476C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80137810 00134770  41 82 00 30 */	beq lbl_80137840
/* 80137814 00134774  3C 60 80 3E */	lis r3, lbl_803E16CC@ha
/* 80137818 00134778  38 03 16 CC */	addi r0, r3, lbl_803E16CC@l
/* 8013781C 0013477C  90 1F 00 00 */	stw r0, 0(r31)
/* 80137820 00134780  41 82 00 10 */	beq lbl_80137830
/* 80137824 00134784  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 80137828 00134788  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 8013782C 0013478C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80137830:
/* 80137830 00134790  7C 80 07 35 */	extsh. r0, r4
/* 80137834 00134794  40 81 00 0C */	ble lbl_80137840
/* 80137838 00134798  7F E3 FB 78 */	mr r3, r31
/* 8013783C 0013479C  48 1D E0 F5 */	bl Free__7CMemoryFPCv
lbl_80137840:
/* 80137840 001347A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137844 001347A4  7F E3 FB 78 */	mr r3, r31
/* 80137848 001347A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013784C 001347AC  7C 08 03 A6 */	mtlr r0
/* 80137850 001347B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80137854 001347B4  4E 80 00 20 */	blr

.global UpdateRun__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
UpdateRun__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim:
/* 80137858 001347B8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8013785C 001347BC  7C 08 02 A6 */	mflr r0
/* 80137860 001347C0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80137864 001347C4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80137868 001347C8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 8013786C 001347CC  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 80137870 001347D0  7C 7E 1B 78 */	mr r30, r3
/* 80137874 001347D4  FF E0 08 90 */	fmr f31, f1
/* 80137878 001347D8  7C 9F 23 78 */	mr r31, r4
/* 8013787C 001347DC  80 83 00 04 */	lwz r4, 4(r3)
/* 80137880 001347E0  7C BB 2B 78 */	mr r27, r5
/* 80137884 001347E4  38 A0 00 01 */	li r5, 1
/* 80137888 001347E8  48 00 05 C1 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 8013788C 001347EC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80137890 001347F0  7C 7D 1B 78 */	mr r29, r3
/* 80137894 001347F4  7F C3 F3 78 */	mr r3, r30
/* 80137898 001347F8  38 A0 00 02 */	li r5, 2
/* 8013789C 001347FC  48 00 05 AD */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 801378A0 00134800  FC 20 F8 90 */	fmr f1, f31
/* 801378A4 00134804  7C 7C 1B 78 */	mr r28, r3
/* 801378A8 00134808  7F C3 F3 78 */	mr r3, r30
/* 801378AC 0013480C  7F A4 EB 78 */	mr r4, r29
/* 801378B0 00134810  7F 85 E3 78 */	mr r5, r28
/* 801378B4 00134814  48 00 0E 4D */	bl "ComputeWeightPercentage__13CBSLocomotionCFRCQ24rstl9pair<i,f>RCQ24rstl9pair<i,f>f"
/* 801378B8 00134818  C0 02 9A 48 */	lfs f0, lbl_805AB768@sda21(r2)
/* 801378BC 0013481C  80 7D 00 00 */	lwz r3, 0(r29)
/* 801378C0 00134820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801378C4 00134824  80 9C 00 00 */	lwz r4, 0(r28)
/* 801378C8 00134828  40 80 00 A0 */	bge lbl_80137968
/* 801378CC 0013482C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801378D0 00134830  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 801378D4 00134834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801378D8 00134838  40 81 00 0C */	ble lbl_801378E4
/* 801378DC 0013483C  EF FF 08 24 */	fdivs f31, f31, f1
/* 801378E0 00134840  48 00 00 08 */	b lbl_801378E8
lbl_801378E4:
/* 801378E4 00134844  C3 E2 9A 38 */	lfs f31, lbl_805AB758@sda21(r2)
lbl_801378E8:
/* 801378E8 00134848  2C 1B 00 01 */	cmpwi r27, 1
/* 801378EC 0013484C  41 82 00 64 */	beq lbl_80137950
/* 801378F0 00134850  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 801378F4 00134854  7C 03 00 00 */	cmpw r3, r0
/* 801378F8 00134858  41 82 00 58 */	beq lbl_80137950
/* 801378FC 0013485C  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80137900 00134860  38 00 00 00 */	li r0, 0
/* 80137904 00134864  38 C0 FF FF */	li r6, -1
/* 80137908 00134868  38 E0 00 01 */	li r7, 1
/* 8013790C 0013486C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80137910 00134870  7F E3 FB 78 */	mr r3, r31
/* 80137914 00134874  38 81 00 34 */	addi r4, r1, 0x34
/* 80137918 00134878  38 A0 00 01 */	li r5, 1
/* 8013791C 0013487C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80137920 00134880  38 C0 00 00 */	li r6, 0
/* 80137924 00134884  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80137928 00134888  98 E1 00 40 */	stb r7, 0x40(r1)
/* 8013792C 0013488C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80137930 00134890  90 01 00 48 */	stw r0, 0x48(r1)
/* 80137934 00134894  98 01 00 4C */	stb r0, 0x4c(r1)
/* 80137938 00134898  90 01 00 50 */	stw r0, 0x50(r1)
/* 8013793C 0013489C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80137940 001348A0  90 01 00 58 */	stw r0, 0x58(r1)
/* 80137944 001348A4  48 00 2F D9 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80137948 001348A8  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 8013794C 001348AC  D0 1E 03 C8 */	stfs f0, 0x3c8(r30)
lbl_80137950:
/* 80137950 001348B0  FC 20 F8 90 */	fmr f1, f31
/* 80137954 001348B4  7F E3 FB 78 */	mr r3, r31
/* 80137958 001348B8  48 00 2F 09 */	bl MultiplyPlaybackRate__15CBodyControllerFf
/* 8013795C 001348BC  38 00 00 01 */	li r0, 1
/* 80137960 001348C0  90 1E 03 C4 */	stw r0, 0x3c4(r30)
/* 80137964 001348C4  48 00 00 A8 */	b lbl_80137A0C
lbl_80137968:
/* 80137968 001348C8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 8013796C 001348CC  C0 0D 8B 70 */	lfs f0, lbl_805A7730@sda21(r13)
/* 80137970 001348D0  EC 3F 08 24 */	fdivs f1, f31, f1
/* 80137974 001348D4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80137978 001348D8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013797C 001348DC  40 80 00 0C */	bge lbl_80137988
/* 80137980 001348E0  38 6D 8B 70 */	addi r3, r13, lbl_805A7730@sda21
/* 80137984 001348E4  48 00 00 08 */	b lbl_8013798C
lbl_80137988:
/* 80137988 001348E8  38 61 00 08 */	addi r3, r1, 8
lbl_8013798C:
/* 8013798C 001348EC  2C 1B 00 02 */	cmpwi r27, 2
/* 80137990 001348F0  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80137994 001348F4  41 82 00 64 */	beq lbl_801379F8
/* 80137998 001348F8  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 8013799C 001348FC  7C 04 00 00 */	cmpw r4, r0
/* 801379A0 00134900  41 82 00 58 */	beq lbl_801379F8
/* 801379A4 00134904  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 801379A8 00134908  38 00 00 00 */	li r0, 0
/* 801379AC 0013490C  38 C0 FF FF */	li r6, -1
/* 801379B0 00134910  38 E0 00 01 */	li r7, 1
/* 801379B4 00134914  90 81 00 0C */	stw r4, 0xc(r1)
/* 801379B8 00134918  7F E3 FB 78 */	mr r3, r31
/* 801379BC 0013491C  38 81 00 0C */	addi r4, r1, 0xc
/* 801379C0 00134920  38 A0 00 01 */	li r5, 1
/* 801379C4 00134924  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801379C8 00134928  38 C0 00 00 */	li r6, 0
/* 801379CC 0013492C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801379D0 00134930  98 E1 00 18 */	stb r7, 0x18(r1)
/* 801379D4 00134934  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801379D8 00134938  90 01 00 20 */	stw r0, 0x20(r1)
/* 801379DC 0013493C  98 01 00 24 */	stb r0, 0x24(r1)
/* 801379E0 00134940  90 01 00 28 */	stw r0, 0x28(r1)
/* 801379E4 00134944  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801379E8 00134948  90 01 00 30 */	stw r0, 0x30(r1)
/* 801379EC 0013494C  48 00 2F 31 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 801379F0 00134950  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 801379F4 00134954  D0 1E 03 C8 */	stfs f0, 0x3c8(r30)
lbl_801379F8:
/* 801379F8 00134958  FC 20 F8 90 */	fmr f1, f31
/* 801379FC 0013495C  7F E3 FB 78 */	mr r3, r31
/* 80137A00 00134960  48 00 2E 61 */	bl MultiplyPlaybackRate__15CBodyControllerFf
/* 80137A04 00134964  38 00 00 02 */	li r0, 2
/* 80137A08 00134968  90 1E 03 C4 */	stw r0, 0x3c4(r30)
lbl_80137A0C:
/* 80137A0C 0013496C  FC 20 F8 90 */	fmr f1, f31
/* 80137A10 00134970  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80137A14 00134974  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80137A18 00134978  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 80137A1C 0013497C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80137A20 00134980  7C 08 03 A6 */	mtlr r0
/* 80137A24 00134984  38 21 00 90 */	addi r1, r1, 0x90
/* 80137A28 00134988  4E 80 00 20 */	blr

.global UpdateWalk__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
UpdateWalk__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim:
/* 80137A2C 0013498C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80137A30 00134990  7C 08 02 A6 */	mflr r0
/* 80137A34 00134994  90 01 00 64 */	stw r0, 0x64(r1)
/* 80137A38 00134998  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80137A3C 0013499C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 80137A40 001349A0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80137A44 001349A4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80137A48 001349A8  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80137A4C 001349AC  FF E0 08 90 */	fmr f31, f1
/* 80137A50 001349B0  2C 05 00 01 */	cmpwi r5, 1
/* 80137A54 001349B4  7C 7D 1B 78 */	mr r29, r3
/* 80137A58 001349B8  7C 9E 23 78 */	mr r30, r4
/* 80137A5C 001349BC  41 82 00 7C */	beq lbl_80137AD8
/* 80137A60 001349C0  80 9D 00 04 */	lwz r4, 4(r29)
/* 80137A64 001349C4  38 A0 00 01 */	li r5, 1
/* 80137A68 001349C8  48 00 03 E1 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137A6C 001349CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80137A70 001349D0  80 1E 02 F8 */	lwz r0, 0x2f8(r30)
/* 80137A74 001349D4  7C 03 00 00 */	cmpw r3, r0
/* 80137A78 001349D8  41 82 00 58 */	beq lbl_80137AD0
/* 80137A7C 001349DC  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80137A80 001349E0  38 00 00 00 */	li r0, 0
/* 80137A84 001349E4  38 C0 FF FF */	li r6, -1
/* 80137A88 001349E8  38 E0 00 01 */	li r7, 1
/* 80137A8C 001349EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80137A90 001349F0  7F C3 F3 78 */	mr r3, r30
/* 80137A94 001349F4  38 81 00 0C */	addi r4, r1, 0xc
/* 80137A98 001349F8  38 A0 00 01 */	li r5, 1
/* 80137A9C 001349FC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80137AA0 00134A00  38 C0 00 00 */	li r6, 0
/* 80137AA4 00134A04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80137AA8 00134A08  98 E1 00 18 */	stb r7, 0x18(r1)
/* 80137AAC 00134A0C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80137AB0 00134A10  90 01 00 20 */	stw r0, 0x20(r1)
/* 80137AB4 00134A14  98 01 00 24 */	stb r0, 0x24(r1)
/* 80137AB8 00134A18  90 01 00 28 */	stw r0, 0x28(r1)
/* 80137ABC 00134A1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80137AC0 00134A20  90 01 00 30 */	stw r0, 0x30(r1)
/* 80137AC4 00134A24  48 00 2E 59 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80137AC8 00134A28  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80137ACC 00134A2C  D0 1D 03 C8 */	stfs f0, 0x3c8(r29)
lbl_80137AD0:
/* 80137AD0 00134A30  38 00 00 01 */	li r0, 1
/* 80137AD4 00134A34  90 1D 03 C4 */	stw r0, 0x3c4(r29)
lbl_80137AD8:
/* 80137AD8 00134A38  80 9D 00 04 */	lwz r4, 4(r29)
/* 80137ADC 00134A3C  7F A3 EB 78 */	mr r3, r29
/* 80137AE0 00134A40  38 A0 00 00 */	li r5, 0
/* 80137AE4 00134A44  48 00 03 65 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137AE8 00134A48  80 9D 00 04 */	lwz r4, 4(r29)
/* 80137AEC 00134A4C  7C 7F 1B 78 */	mr r31, r3
/* 80137AF0 00134A50  7F A3 EB 78 */	mr r3, r29
/* 80137AF4 00134A54  38 A0 00 01 */	li r5, 1
/* 80137AF8 00134A58  48 00 03 51 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137AFC 00134A5C  FC 20 F8 90 */	fmr f1, f31
/* 80137B00 00134A60  7C 65 1B 78 */	mr r5, r3
/* 80137B04 00134A64  7F A3 EB 78 */	mr r3, r29
/* 80137B08 00134A68  7F E4 FB 78 */	mr r4, r31
/* 80137B0C 00134A6C  48 00 0B F5 */	bl "ComputeWeightPercentage__13CBSLocomotionCFRCQ24rstl9pair<i,f>RCQ24rstl9pair<i,f>f"
/* 80137B10 00134A70  FC 00 08 18 */	frsp f0, f1
/* 80137B14 00134A74  C0 42 9A 30 */	lfs f2, lbl_805AB750@sda21(r2)
/* 80137B18 00134A78  D0 21 00 08 */	stfs f1, 8(r1)
/* 80137B1C 00134A7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80137B20 00134A80  40 80 00 0C */	bge lbl_80137B2C
/* 80137B24 00134A84  38 61 00 08 */	addi r3, r1, 8
/* 80137B28 00134A88  48 00 00 08 */	b lbl_80137B30
lbl_80137B2C:
/* 80137B2C 00134A8C  38 62 9A 30 */	addi r3, r2, lbl_805AB750@sda21
lbl_80137B30:
/* 80137B30 00134A90  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80137B34 00134A94  7F C3 F3 78 */	mr r3, r30
/* 80137B38 00134A98  FC 20 F8 90 */	fmr f1, f31
/* 80137B3C 00134A9C  48 00 2D 25 */	bl MultiplyPlaybackRate__15CBodyControllerFf
/* 80137B40 00134AA0  FC 20 F8 90 */	fmr f1, f31
/* 80137B44 00134AA4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 80137B48 00134AA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80137B4C 00134AAC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80137B50 00134AB0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80137B54 00134AB4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80137B58 00134AB8  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80137B5C 00134ABC  7C 08 03 A6 */	mtlr r0
/* 80137B60 00134AC0  38 21 00 60 */	addi r1, r1, 0x60
/* 80137B64 00134AC4  4E 80 00 20 */	blr

.global UpdateStrafe__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
UpdateStrafe__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim:
/* 80137B68 00134AC8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80137B6C 00134ACC  7C 08 02 A6 */	mflr r0
/* 80137B70 00134AD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80137B74 00134AD4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80137B78 00134AD8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80137B7C 00134ADC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80137B80 00134AE0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80137B84 00134AE4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 80137B88 00134AE8  93 81 00 60 */	stw r28, 0x60(r1)
/* 80137B8C 00134AEC  7C 9F 23 78 */	mr r31, r4
/* 80137B90 00134AF0  FF E0 08 90 */	fmr f31, f1
/* 80137B94 00134AF4  80 84 00 00 */	lwz r4, 0(r4)
/* 80137B98 00134AF8  7C 7E 1B 78 */	mr r30, r3
/* 80137B9C 00134AFC  7C BC 2B 78 */	mr r28, r5
/* 80137BA0 00134B00  38 61 00 0C */	addi r3, r1, 0xc
/* 80137BA4 00134B04  4B F7 4B 41 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80137BA8 00134B08  80 83 00 04 */	lwz r4, 4(r3)
/* 80137BAC 00134B0C  28 04 00 00 */	cmplwi r4, 0
/* 80137BB0 00134B10  41 82 01 F8 */	beq lbl_80137DA8
/* 80137BB4 00134B14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80137BB8 00134B18  38 61 00 14 */	addi r3, r1, 0x14
/* 80137BBC 00134B1C  38 84 00 34 */	addi r4, r4, 0x34
/* 80137BC0 00134B20  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80137BC4 00134B24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80137BC8 00134B28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80137BCC 00134B2C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80137BD0 00134B30  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80137BD4 00134B34  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80137BD8 00134B38  48 1D AE 4D */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80137BDC 00134B3C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80137BE0 00134B40  38 A0 00 00 */	li r5, 0
/* 80137BE4 00134B44  C0 61 00 18 */	lfs f3, 0x18(r1)
/* 80137BE8 00134B48  38 61 00 20 */	addi r3, r1, 0x20
/* 80137BEC 00134B4C  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80137BF0 00134B50  EC 80 00 32 */	fmuls f4, f0, f0
/* 80137BF4 00134B54  EC A3 00 F2 */	fmuls f5, f3, f3
/* 80137BF8 00134B58  54 A0 10 3A */	slwi r0, r5, 2
/* 80137BFC 00134B5C  EC C2 00 B2 */	fmuls f6, f2, f2
/* 80137C00 00134B60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80137C04 00134B64  FC 20 20 18 */	frsp f1, f4
/* 80137C08 00134B68  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80137C0C 00134B6C  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 80137C10 00134B70  D0 C1 00 28 */	stfs f6, 0x28(r1)
/* 80137C14 00134B74  7C 03 04 2E */	lfsx f0, r3, r0
/* 80137C18 00134B78  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 80137C1C 00134B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137C20 00134B80  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80137C24 00134B84  4C 41 13 82 */	cror 2, 1, 2
/* 80137C28 00134B88  40 82 00 08 */	bne lbl_80137C30
/* 80137C2C 00134B8C  38 A0 00 00 */	li r5, 0
lbl_80137C30:
/* 80137C30 00134B90  54 A0 10 3A */	slwi r0, r5, 2
/* 80137C34 00134B94  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80137C38 00134B98  7C 03 04 2E */	lfsx f0, r3, r0
/* 80137C3C 00134B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137C40 00134BA0  4C 41 13 82 */	cror 2, 1, 2
/* 80137C44 00134BA4  40 82 00 08 */	bne lbl_80137C4C
/* 80137C48 00134BA8  38 A0 00 01 */	li r5, 1
lbl_80137C4C:
/* 80137C4C 00134BAC  54 A0 10 3A */	slwi r0, r5, 2
/* 80137C50 00134BB0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80137C54 00134BB4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80137C58 00134BB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137C5C 00134BBC  4C 41 13 82 */	cror 2, 1, 2
/* 80137C60 00134BC0  40 82 00 08 */	bne lbl_80137C68
/* 80137C64 00134BC4  38 A0 00 02 */	li r5, 2
lbl_80137C68:
/* 80137C68 00134BC8  54 A0 10 3A */	slwi r0, r5, 2
/* 80137C6C 00134BCC  38 61 00 2C */	addi r3, r1, 0x2c
/* 80137C70 00134BD0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80137C74 00134BD4  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80137C78 00134BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137C7C 00134BDC  40 81 00 0C */	ble lbl_80137C88
/* 80137C80 00134BE0  38 80 00 00 */	li r4, 0
/* 80137C84 00134BE4  48 00 00 08 */	b lbl_80137C8C
lbl_80137C88:
/* 80137C88 00134BE8  38 80 00 01 */	li r4, 1
lbl_80137C8C:
/* 80137C8C 00134BEC  7F C3 F3 78 */	mr r3, r30
/* 80137C90 00134BF0  54 A0 08 3C */	slwi r0, r5, 1
/* 80137C94 00134BF4  7C 04 02 14 */	add r0, r4, r0
/* 80137C98 00134BF8  81 9E 00 00 */	lwz r12, 0(r30)
/* 80137C9C 00134BFC  3C A0 80 3E */	lis r5, lbl_803E14C0@ha
/* 80137CA0 00134C00  80 9E 00 04 */	lwz r4, 4(r30)
/* 80137CA4 00134C04  54 00 10 3A */	slwi r0, r0, 2
/* 80137CA8 00134C08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80137CAC 00134C0C  38 A5 14 C0 */	addi r5, r5, lbl_803E14C0@l
/* 80137CB0 00134C10  7F A5 00 2E */	lwzx r29, r5, r0
/* 80137CB4 00134C14  7F A5 EB 78 */	mr r5, r29
/* 80137CB8 00134C18  7D 89 03 A6 */	mtctr r12
/* 80137CBC 00134C1C  4E 80 04 21 */	bctrl
/* 80137CC0 00134C20  7C 1C E8 00 */	cmpw r28, r29
/* 80137CC4 00134C24  EF FF 00 72 */	fmuls f31, f31, f1
/* 80137CC8 00134C28  41 82 00 7C */	beq lbl_80137D44
/* 80137CCC 00134C2C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80137CD0 00134C30  7F C3 F3 78 */	mr r3, r30
/* 80137CD4 00134C34  7F A5 EB 78 */	mr r5, r29
/* 80137CD8 00134C38  48 00 01 71 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137CDC 00134C3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80137CE0 00134C40  80 1F 02 F8 */	lwz r0, 0x2f8(r31)
/* 80137CE4 00134C44  7C 03 00 00 */	cmpw r3, r0
/* 80137CE8 00134C48  41 82 00 58 */	beq lbl_80137D40
/* 80137CEC 00134C4C  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80137CF0 00134C50  38 00 00 00 */	li r0, 0
/* 80137CF4 00134C54  38 C0 FF FF */	li r6, -1
/* 80137CF8 00134C58  38 E0 00 01 */	li r7, 1
/* 80137CFC 00134C5C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80137D00 00134C60  7F E3 FB 78 */	mr r3, r31
/* 80137D04 00134C64  38 81 00 38 */	addi r4, r1, 0x38
/* 80137D08 00134C68  38 A0 00 01 */	li r5, 1
/* 80137D0C 00134C6C  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80137D10 00134C70  38 C0 00 00 */	li r6, 0
/* 80137D14 00134C74  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80137D18 00134C78  98 E1 00 44 */	stb r7, 0x44(r1)
/* 80137D1C 00134C7C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80137D20 00134C80  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80137D24 00134C84  98 01 00 50 */	stb r0, 0x50(r1)
/* 80137D28 00134C88  90 01 00 54 */	stw r0, 0x54(r1)
/* 80137D2C 00134C8C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80137D30 00134C90  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80137D34 00134C94  48 00 2B E9 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80137D38 00134C98  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80137D3C 00134C9C  D0 1E 03 C8 */	stfs f0, 0x3c8(r30)
lbl_80137D40:
/* 80137D40 00134CA0  93 BE 03 C4 */	stw r29, 0x3c4(r30)
lbl_80137D44:
/* 80137D44 00134CA4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80137D48 00134CA8  7F C3 F3 78 */	mr r3, r30
/* 80137D4C 00134CAC  38 A0 00 00 */	li r5, 0
/* 80137D50 00134CB0  48 00 00 F9 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137D54 00134CB4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80137D58 00134CB8  7C 7C 1B 78 */	mr r28, r3
/* 80137D5C 00134CBC  7F C3 F3 78 */	mr r3, r30
/* 80137D60 00134CC0  7F A5 EB 78 */	mr r5, r29
/* 80137D64 00134CC4  48 00 00 E5 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137D68 00134CC8  FC 20 F8 90 */	fmr f1, f31
/* 80137D6C 00134CCC  7C 65 1B 78 */	mr r5, r3
/* 80137D70 00134CD0  7F C3 F3 78 */	mr r3, r30
/* 80137D74 00134CD4  7F 84 E3 78 */	mr r4, r28
/* 80137D78 00134CD8  48 00 09 89 */	bl "ComputeWeightPercentage__13CBSLocomotionCFRCQ24rstl9pair<i,f>RCQ24rstl9pair<i,f>f"
/* 80137D7C 00134CDC  FC 00 08 18 */	frsp f0, f1
/* 80137D80 00134CE0  C0 42 9A 30 */	lfs f2, lbl_805AB750@sda21(r2)
/* 80137D84 00134CE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80137D88 00134CE8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80137D8C 00134CEC  40 80 00 0C */	bge lbl_80137D98
/* 80137D90 00134CF0  38 61 00 08 */	addi r3, r1, 8
/* 80137D94 00134CF4  48 00 00 08 */	b lbl_80137D9C
lbl_80137D98:
/* 80137D98 00134CF8  38 62 9A 30 */	addi r3, r2, lbl_805AB750@sda21
lbl_80137D9C:
/* 80137D9C 00134CFC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80137DA0 00134D00  7F E3 FB 78 */	mr r3, r31
/* 80137DA4 00134D04  48 00 2A BD */	bl MultiplyPlaybackRate__15CBodyControllerFf
lbl_80137DA8:
/* 80137DA8 00134D08  C0 22 9A 38 */	lfs f1, lbl_805AB758@sda21(r2)
/* 80137DAC 00134D0C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 80137DB0 00134D10  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80137DB4 00134D14  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80137DB8 00134D18  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80137DBC 00134D1C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80137DC0 00134D20  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80137DC4 00134D24  83 81 00 60 */	lwz r28, 0x60(r1)
/* 80137DC8 00134D28  7C 08 03 A6 */	mtlr r0
/* 80137DCC 00134D2C  38 21 00 80 */	addi r1, r1, 0x80
/* 80137DD0 00134D30  4E 80 00 20 */	blr

.global IsStrafing__18CBSBiPedLocomotionCFR15CBodyController
IsStrafing__18CBSBiPedLocomotionCFR15CBodyController:
/* 80137DD4 00134D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137DD8 00134D38  7C 08 02 A6 */	mflr r0
/* 80137DDC 00134D3C  3C A0 80 5A */	lis r5, skZero3f@ha
/* 80137DE0 00134D40  38 64 00 04 */	addi r3, r4, 4
/* 80137DE4 00134D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137DE8 00134D48  38 85 66 A0 */	addi r4, r5, skZero3f@l
/* 80137DEC 00134D4C  C0 22 9A 4C */	lfs f1, lbl_805AB76C@sda21(r2)
/* 80137DF0 00134D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80137DF4 00134D54  3B E0 00 00 */	li r31, 0
/* 80137DF8 00134D58  93 C1 00 08 */	stw r30, 8(r1)
/* 80137DFC 00134D5C  3B C3 00 0C */	addi r30, r3, 0xc
/* 80137E00 00134D60  48 1D 81 65 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 80137E04 00134D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137E08 00134D68  40 82 00 24 */	bne lbl_80137E2C
/* 80137E0C 00134D6C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 80137E10 00134D70  C0 22 9A 4C */	lfs f1, lbl_805AB76C@sda21(r2)
/* 80137E14 00134D74  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 80137E18 00134D78  7F C3 F3 78 */	mr r3, r30
/* 80137E1C 00134D7C  48 1D 81 49 */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 80137E20 00134D80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137E24 00134D84  40 82 00 08 */	bne lbl_80137E2C
/* 80137E28 00134D88  3B E0 00 01 */	li r31, 1
lbl_80137E2C:
/* 80137E2C 00134D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137E30 00134D90  7F E3 FB 78 */	mr r3, r31
/* 80137E34 00134D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137E38 00134D98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80137E3C 00134D9C  7C 08 03 A6 */	mtlr r0
/* 80137E40 00134DA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80137E44 00134DA4  4E 80 00 20 */	blr

.global GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim:
/* 80137E48 00134DA8  1C 84 00 44 */	mulli r4, r4, 0x44
/* 80137E4C 00134DAC  54 A0 18 38 */	slwi r0, r5, 3
/* 80137E50 00134DB0  7C 63 22 14 */	add r3, r3, r4
/* 80137E54 00134DB4  7C 63 02 14 */	add r3, r3, r0
/* 80137E58 00134DB8  38 63 00 10 */	addi r3, r3, 0x10
/* 80137E5C 00134DBC  4E 80 00 20 */	blr

.global UpdateLocomotionAnimation__18CBSBiPedLocomotionFffR15CBodyControllerb
UpdateLocomotionAnimation__18CBSBiPedLocomotionFffR15CBodyControllerb:
/* 80137E60 00134DC0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80137E64 00134DC4  7C 08 02 A6 */	mflr r0
/* 80137E68 00134DC8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80137E6C 00134DCC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80137E70 00134DD0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, qr0
/* 80137E74 00134DD4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80137E78 00134DD8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, qr0
/* 80137E7C 00134DDC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80137E80 00134DE0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, qr0
/* 80137E84 00134DE4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80137E88 00134DE8  F3 81 00 48 */	psq_st f28, 72(r1), 0, qr0
/* 80137E8C 00134DEC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80137E90 00134DF0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80137E94 00134DF4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80137E98 00134DF8  93 81 00 30 */	stw r28, 0x30(r1)
/* 80137E9C 00134DFC  FF 80 08 90 */	fmr f28, f1
/* 80137EA0 00134E00  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80137EA4 00134E04  FF A0 10 90 */	fmr f29, f2
/* 80137EA8 00134E08  C3 E2 9A 38 */	lfs f31, lbl_805AB758@sda21(r2)
/* 80137EAC 00134E0C  7C BE 2B 78 */	mr r30, r5
/* 80137EB0 00134E10  7C 7C 1B 78 */	mr r28, r3
/* 80137EB4 00134E14  7C 9D 23 78 */	mr r29, r4
/* 80137EB8 00134E18  40 82 00 18 */	bne lbl_80137ED0
/* 80137EBC 00134E1C  C0 3C 03 C8 */	lfs f1, 0x3c8(r28)
/* 80137EC0 00134E20  C0 02 9A 50 */	lfs f0, lbl_805AB770@sda21(r2)
/* 80137EC4 00134E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137EC8 00134E28  4C 41 13 82 */	cror 2, 1, 2
/* 80137ECC 00134E2C  40 82 01 98 */	bne lbl_80138064
lbl_80137ED0:
/* 80137ED0 00134E30  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80137ED4 00134E34  41 82 00 0C */	beq lbl_80137EE0
/* 80137ED8 00134E38  3B E0 FF FF */	li r31, -1
/* 80137EDC 00134E3C  48 00 00 08 */	b lbl_80137EE4
lbl_80137EE0:
/* 80137EE0 00134E40  83 FC 03 C4 */	lwz r31, 0x3c4(r28)
lbl_80137EE4:
/* 80137EE4 00134E44  7F 83 E3 78 */	mr r3, r28
/* 80137EE8 00134E48  80 9C 00 04 */	lwz r4, 4(r28)
/* 80137EEC 00134E4C  81 9C 00 00 */	lwz r12, 0(r28)
/* 80137EF0 00134E50  38 A0 00 02 */	li r5, 2
/* 80137EF4 00134E54  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80137EF8 00134E58  7D 89 03 A6 */	mtctr r12
/* 80137EFC 00134E5C  4E 80 04 21 */	bctrl
/* 80137F00 00134E60  7F 83 E3 78 */	mr r3, r28
/* 80137F04 00134E64  EF DD 00 72 */	fmuls f30, f29, f1
/* 80137F08 00134E68  81 9C 00 00 */	lwz r12, 0(r28)
/* 80137F0C 00134E6C  7F A4 EB 78 */	mr r4, r29
/* 80137F10 00134E70  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80137F14 00134E74  7D 89 03 A6 */	mtctr r12
/* 80137F18 00134E78  4E 80 04 21 */	bctrl
/* 80137F1C 00134E7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137F20 00134E80  41 82 00 30 */	beq lbl_80137F50
/* 80137F24 00134E84  C0 02 9A 44 */	lfs f0, lbl_805AB764@sda21(r2)
/* 80137F28 00134E88  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 80137F2C 00134E8C  4C 41 13 82 */	cror 2, 1, 2
/* 80137F30 00134E90  40 82 00 20 */	bne lbl_80137F50
/* 80137F34 00134E94  FC 20 E8 90 */	fmr f1, f29
/* 80137F38 00134E98  7F 83 E3 78 */	mr r3, r28
/* 80137F3C 00134E9C  7F A4 EB 78 */	mr r4, r29
/* 80137F40 00134EA0  7F E5 FB 78 */	mr r5, r31
/* 80137F44 00134EA4  4B FF FC 25 */	bl UpdateStrafe__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
/* 80137F48 00134EA8  FF E0 08 90 */	fmr f31, f1
/* 80137F4C 00134EAC  48 00 01 18 */	b lbl_80138064
lbl_80137F50:
/* 80137F50 00134EB0  C0 02 9A 44 */	lfs f0, lbl_805AB764@sda21(r2)
/* 80137F54 00134EB4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80137F58 00134EB8  40 80 00 BC */	bge lbl_80138014
/* 80137F5C 00134EBC  2C 1F 00 00 */	cmpwi r31, 0
/* 80137F60 00134EC0  40 82 00 0C */	bne lbl_80137F6C
/* 80137F64 00134EC4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80137F68 00134EC8  41 82 00 FC */	beq lbl_80138064
lbl_80137F6C:
/* 80137F6C 00134ECC  88 1D 02 D8 */	lbz r0, 0x2d8(r29)
/* 80137F70 00134ED0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80137F74 00134ED4  41 82 00 20 */	beq lbl_80137F94
/* 80137F78 00134ED8  7F A3 EB 78 */	mr r3, r29
/* 80137F7C 00134EDC  48 00 29 3D */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 80137F80 00134EE0  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80137F84 00134EE4  4C 40 13 82 */	cror 2, 0, 2
/* 80137F88 00134EE8  41 82 00 0C */	beq lbl_80137F94
/* 80137F8C 00134EEC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80137F90 00134EF0  41 82 00 D4 */	beq lbl_80138064
lbl_80137F94:
/* 80137F94 00134EF4  80 9C 00 04 */	lwz r4, 4(r28)
/* 80137F98 00134EF8  7F 83 E3 78 */	mr r3, r28
/* 80137F9C 00134EFC  38 A0 00 00 */	li r5, 0
/* 80137FA0 00134F00  4B FF FE A9 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80137FA4 00134F04  80 63 00 00 */	lwz r3, 0(r3)
/* 80137FA8 00134F08  80 1D 02 F8 */	lwz r0, 0x2f8(r29)
/* 80137FAC 00134F0C  7C 03 00 00 */	cmpw r3, r0
/* 80137FB0 00134F10  41 82 00 58 */	beq lbl_80138008
/* 80137FB4 00134F14  C0 02 9A 38 */	lfs f0, lbl_805AB758@sda21(r2)
/* 80137FB8 00134F18  38 00 00 00 */	li r0, 0
/* 80137FBC 00134F1C  38 C0 FF FF */	li r6, -1
/* 80137FC0 00134F20  38 E0 00 01 */	li r7, 1
/* 80137FC4 00134F24  90 61 00 08 */	stw r3, 8(r1)
/* 80137FC8 00134F28  7F A3 EB 78 */	mr r3, r29
/* 80137FCC 00134F2C  38 81 00 08 */	addi r4, r1, 8
/* 80137FD0 00134F30  38 A0 00 01 */	li r5, 1
/* 80137FD4 00134F34  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80137FD8 00134F38  38 C0 00 00 */	li r6, 0
/* 80137FDC 00134F3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80137FE0 00134F40  98 E1 00 14 */	stb r7, 0x14(r1)
/* 80137FE4 00134F44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80137FE8 00134F48  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80137FEC 00134F4C  98 01 00 20 */	stb r0, 0x20(r1)
/* 80137FF0 00134F50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80137FF4 00134F54  90 01 00 28 */	stw r0, 0x28(r1)
/* 80137FF8 00134F58  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80137FFC 00134F5C  48 00 29 21 */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80138000 00134F60  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80138004 00134F64  D0 1C 03 C8 */	stfs f0, 0x3c8(r28)
lbl_80138008:
/* 80138008 00134F68  38 00 00 00 */	li r0, 0
/* 8013800C 00134F6C  90 1C 03 C4 */	stw r0, 0x3c4(r28)
/* 80138010 00134F70  48 00 00 54 */	b lbl_80138064
lbl_80138014:
/* 80138014 00134F74  80 9C 00 04 */	lwz r4, 4(r28)
/* 80138018 00134F78  7F 83 E3 78 */	mr r3, r28
/* 8013801C 00134F7C  38 A0 00 01 */	li r5, 1
/* 80138020 00134F80  4B FF FE 29 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80138024 00134F84  C0 03 00 04 */	lfs f0, 4(r3)
/* 80138028 00134F88  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 8013802C 00134F8C  40 80 00 20 */	bge lbl_8013804C
/* 80138030 00134F90  FC 20 F0 90 */	fmr f1, f30
/* 80138034 00134F94  7F 83 E3 78 */	mr r3, r28
/* 80138038 00134F98  7F A4 EB 78 */	mr r4, r29
/* 8013803C 00134F9C  7F E5 FB 78 */	mr r5, r31
/* 80138040 00134FA0  4B FF F9 ED */	bl UpdateWalk__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
/* 80138044 00134FA4  FF E0 08 90 */	fmr f31, f1
/* 80138048 00134FA8  48 00 00 1C */	b lbl_80138064
lbl_8013804C:
/* 8013804C 00134FAC  FC 20 F0 90 */	fmr f1, f30
/* 80138050 00134FB0  7F 83 E3 78 */	mr r3, r28
/* 80138054 00134FB4  7F A4 EB 78 */	mr r4, r29
/* 80138058 00134FB8  7F E5 FB 78 */	mr r5, r31
/* 8013805C 00134FBC  4B FF F7 FD */	bl UpdateRun__18CBSBiPedLocomotionFfR15CBodyControllerQ23pas15ELocomotionAnim
/* 80138060 00134FC0  FF E0 08 90 */	fmr f31, f1
lbl_80138064:
/* 80138064 00134FC4  FC 20 F8 90 */	fmr f1, f31
/* 80138068 00134FC8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, qr0
/* 8013806C 00134FCC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80138070 00134FD0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, qr0
/* 80138074 00134FD4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80138078 00134FD8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, qr0
/* 8013807C 00134FDC  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80138080 00134FE0  E3 81 00 48 */	psq_l f28, 72(r1), 0, qr0
/* 80138084 00134FE4  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80138088 00134FE8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8013808C 00134FEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80138090 00134FF0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80138094 00134FF4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80138098 00134FF8  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8013809C 00134FFC  7C 08 03 A6 */	mtlr r0
/* 801380A0 00135000  38 21 00 80 */	addi r1, r1, 0x80
/* 801380A4 00135004  4E 80 00 20 */	blr

.global UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager
UpdateBody__18CBSBiPedLocomotionFfR15CBodyControllerR13CStateManager:
/* 801380A8 00135008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801380AC 0013500C  7C 08 02 A6 */	mflr r0
/* 801380B0 00135010  C0 02 9A 50 */	lfs f0, lbl_805AB770@sda21(r2)
/* 801380B4 00135014  90 01 00 14 */	stw r0, 0x14(r1)
/* 801380B8 00135018  C0 43 03 C8 */	lfs f2, 0x3c8(r3)
/* 801380BC 0013501C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801380C0 00135020  40 80 00 0C */	bge lbl_801380CC
/* 801380C4 00135024  EC 02 08 2A */	fadds f0, f2, f1
/* 801380C8 00135028  D0 03 03 C8 */	stfs f0, 0x3c8(r3)
lbl_801380CC:
/* 801380CC 0013502C  48 00 0A 45 */	bl UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager
/* 801380D0 00135030  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801380D4 00135034  7C 08 03 A6 */	mtlr r0
/* 801380D8 00135038  38 21 00 10 */	addi r1, r1, 0x10
/* 801380DC 0013503C  4E 80 00 20 */	blr

.global Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager
Start__18CBSBiPedLocomotionFR15CBodyControllerR13CStateManager:
/* 801380E0 00135040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801380E4 00135044  7C 08 02 A6 */	mflr r0
/* 801380E8 00135048  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 801380EC 0013504C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801380F0 00135050  D0 03 03 C8 */	stfs f0, 0x3c8(r3)
/* 801380F4 00135054  48 00 0A C9 */	bl Start__13CBSLocomotionFR15CBodyControllerR13CStateManager
/* 801380F8 00135058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801380FC 0013505C  7C 08 03 A6 */	mtlr r0
/* 80138100 00135060  38 21 00 10 */	addi r1, r1, 0x10
/* 80138104 00135064  4E 80 00 20 */	blr

.global GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
GetLocomotionSpeed__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim:
/* 80138108 00135068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013810C 0013506C  7C 08 02 A6 */	mflr r0
/* 80138110 00135070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138114 00135074  4B FF FD 35 */	bl GetLocoAnimation__18CBSBiPedLocomotionCFQ23pas15ELocomotionTypeQ23pas15ELocomotionAnim
/* 80138118 00135078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013811C 0013507C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80138120 00135080  7C 08 03 A6 */	mtlr r0
/* 80138124 00135084  38 21 00 10 */	addi r1, r1, 0x10
/* 80138128 00135088  4E 80 00 20 */	blr

.global __ct__18CBSBiPedLocomotionFR6CActor
__ct__18CBSBiPedLocomotionFR6CActor:
/* 8013812C 0013508C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80138130 00135090  7C 08 02 A6 */	mflr r0
/* 80138134 00135094  90 01 01 24 */	stw r0, 0x124(r1)
/* 80138138 00135098  BE 81 00 F0 */	stmw r20, 0xf0(r1)
/* 8013813C 0013509C  7C 7B 1B 78 */	mr r27, r3
/* 80138140 001350A0  7C 9C 23 78 */	mr r28, r4
/* 80138144 001350A4  48 00 0A ED */	bl __ct__13CBSLocomotionFv
/* 80138148 001350A8  3C 60 80 3E */	lis r3, lbl_803E167C@ha
/* 8013814C 001350AC  34 E1 00 5C */	addic. r7, r1, 0x5c
/* 80138150 001350B0  38 63 16 7C */	addi r3, r3, lbl_803E167C@l
/* 80138154 001350B4  38 00 00 08 */	li r0, 8
/* 80138158 001350B8  90 7B 00 00 */	stw r3, 0(r27)
/* 8013815C 001350BC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80138160 001350C0  80 0D 8B 68 */	lwz r0, lbl_805A7728@sda21(r13)
/* 80138164 001350C4  C0 0D 8B 6C */	lfs f0, lbl_805A772C@sda21(r13)
/* 80138168 001350C8  41 82 00 0C */	beq lbl_80138174
/* 8013816C 001350CC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80138170 001350D0  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_80138174:
/* 80138174 001350D4  34 67 00 08 */	addic. r3, r7, 8
/* 80138178 001350D8  41 82 00 0C */	beq lbl_80138184
/* 8013817C 001350DC  90 03 00 00 */	stw r0, 0(r3)
/* 80138180 001350E0  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80138184:
/* 80138184 001350E4  34 63 00 08 */	addic. r3, r3, 8
/* 80138188 001350E8  41 82 00 0C */	beq lbl_80138194
/* 8013818C 001350EC  90 03 00 00 */	stw r0, 0(r3)
/* 80138190 001350F0  D0 03 00 04 */	stfs f0, 4(r3)
lbl_80138194:
/* 80138194 001350F4  34 63 00 08 */	addic. r3, r3, 8
/* 80138198 001350F8  41 82 00 0C */	beq lbl_801381A4
/* 8013819C 001350FC  90 03 00 00 */	stw r0, 0(r3)
/* 801381A0 00135100  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801381A4:
/* 801381A4 00135104  34 63 00 08 */	addic. r3, r3, 8
/* 801381A8 00135108  41 82 00 0C */	beq lbl_801381B4
/* 801381AC 0013510C  90 03 00 00 */	stw r0, 0(r3)
/* 801381B0 00135110  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801381B4:
/* 801381B4 00135114  34 63 00 08 */	addic. r3, r3, 8
/* 801381B8 00135118  41 82 00 0C */	beq lbl_801381C4
/* 801381BC 0013511C  90 03 00 00 */	stw r0, 0(r3)
/* 801381C0 00135120  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801381C4:
/* 801381C4 00135124  34 63 00 08 */	addic. r3, r3, 8
/* 801381C8 00135128  41 82 00 0C */	beq lbl_801381D4
/* 801381CC 0013512C  90 03 00 00 */	stw r0, 0(r3)
/* 801381D0 00135130  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801381D4:
/* 801381D4 00135134  34 63 00 08 */	addic. r3, r3, 8
/* 801381D8 00135138  41 82 00 0C */	beq lbl_801381E4
/* 801381DC 0013513C  90 03 00 00 */	stw r0, 0(r3)
/* 801381E0 00135140  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801381E4:
/* 801381E4 00135144  38 00 00 0E */	li r0, 0xe
/* 801381E8 00135148  38 9B 00 0C */	addi r4, r27, 0xc
/* 801381EC 0013514C  90 1B 00 08 */	stw r0, 8(r27)
/* 801381F0 00135150  38 60 00 00 */	li r3, 0
lbl_801381F4:
/* 801381F4 00135154  28 04 00 00 */	cmplwi r4, 0
/* 801381F8 00135158  41 82 00 48 */	beq lbl_80138240
/* 801381FC 0013515C  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80138200 00135160  7C E6 3B 78 */	mr r6, r7
/* 80138204 00135164  38 A4 00 04 */	addi r5, r4, 4
/* 80138208 00135168  90 04 00 00 */	stw r0, 0(r4)
/* 8013820C 0013516C  80 04 00 00 */	lwz r0, 0(r4)
/* 80138210 00135170  7C 09 03 A6 */	mtctr r0
/* 80138214 00135174  2C 00 00 00 */	cmpwi r0, 0
/* 80138218 00135178  40 81 00 28 */	ble lbl_80138240
lbl_8013821C:
/* 8013821C 0013517C  28 05 00 00 */	cmplwi r5, 0
/* 80138220 00135180  41 82 00 14 */	beq lbl_80138234
/* 80138224 00135184  80 06 00 00 */	lwz r0, 0(r6)
/* 80138228 00135188  90 05 00 00 */	stw r0, 0(r5)
/* 8013822C 0013518C  C0 06 00 04 */	lfs f0, 4(r6)
/* 80138230 00135190  D0 05 00 04 */	stfs f0, 4(r5)
lbl_80138234:
/* 80138234 00135194  38 A5 00 08 */	addi r5, r5, 8
/* 80138238 00135198  38 C6 00 08 */	addi r6, r6, 8
/* 8013823C 0013519C  42 00 FF E0 */	bdnz lbl_8013821C
lbl_80138240:
/* 80138240 001351A0  38 63 00 01 */	addi r3, r3, 1
/* 80138244 001351A4  38 84 00 44 */	addi r4, r4, 0x44
/* 80138248 001351A8  2C 03 00 0E */	cmpwi r3, 0xe
/* 8013824C 001351AC  41 80 FF A8 */	blt lbl_801381F4
/* 80138250 001351B0  80 A1 00 58 */	lwz r5, 0x58(r1)
/* 80138254 001351B4  38 60 00 00 */	li r3, 0
/* 80138258 001351B8  2C 05 00 00 */	cmpwi r5, 0
/* 8013825C 001351BC  40 81 00 40 */	ble lbl_8013829C
/* 80138260 001351C0  2C 05 00 08 */	cmpwi r5, 8
/* 80138264 001351C4  38 85 FF F8 */	addi r4, r5, -8
/* 80138268 001351C8  40 81 00 20 */	ble lbl_80138288
/* 8013826C 001351CC  38 04 00 07 */	addi r0, r4, 7
/* 80138270 001351D0  54 00 E8 FE */	srwi r0, r0, 3
/* 80138274 001351D4  7C 09 03 A6 */	mtctr r0
/* 80138278 001351D8  2C 04 00 00 */	cmpwi r4, 0
/* 8013827C 001351DC  40 81 00 0C */	ble lbl_80138288
lbl_80138280:
/* 80138280 001351E0  38 63 00 08 */	addi r3, r3, 8
/* 80138284 001351E4  42 00 FF FC */	bdnz lbl_80138280
lbl_80138288:
/* 80138288 001351E8  7C 03 28 50 */	subf r0, r3, r5
/* 8013828C 001351EC  7C 09 03 A6 */	mtctr r0
/* 80138290 001351F0  7C 03 28 00 */	cmpw r3, r5
/* 80138294 001351F4  40 80 00 08 */	bge lbl_8013829C
lbl_80138298:
/* 80138298 001351F8  42 00 00 00 */	bdnz lbl_80138298
lbl_8013829C:
/* 8013829C 001351FC  38 60 00 00 */	li r3, 0
/* 801382A0 00135200  38 00 FF FF */	li r0, -1
/* 801382A4 00135204  90 61 00 58 */	stw r3, 0x58(r1)
/* 801382A8 00135208  3B E1 00 A0 */	addi r31, r1, 0xa0
/* 801382AC 0013520C  3A C1 00 20 */	addi r22, r1, 0x20
/* 801382B0 00135210  3A E1 00 18 */	addi r23, r1, 0x18
/* 801382B4 00135214  90 1B 03 C4 */	stw r0, 0x3c4(r27)
/* 801382B8 00135218  3B C0 00 00 */	li r30, 0
/* 801382BC 0013521C  3B 40 00 00 */	li r26, 0
/* 801382C0 00135220  80 7C 00 64 */	lwz r3, 0x64(r28)
/* 801382C4 00135224  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801382C8 00135228  3A A3 00 3C */	addi r21, r3, 0x3c
lbl_801382CC:
/* 801382CC 0013522C  7F 1B D2 14 */	add r24, r27, r26
/* 801382D0 00135230  3B A0 00 00 */	li r29, 0
/* 801382D4 00135234  3B 20 00 00 */	li r25, 0
lbl_801382D8:
/* 801382D8 00135238  38 61 00 18 */	addi r3, r1, 0x18
/* 801382DC 0013523C  48 1A AD A1 */	bl NoParameter__12CPASAnimParmFv
/* 801382E0 00135240  38 61 00 20 */	addi r3, r1, 0x20
/* 801382E4 00135244  48 1A AD 99 */	bl NoParameter__12CPASAnimParmFv
/* 801382E8 00135248  38 61 00 28 */	addi r3, r1, 0x28
/* 801382EC 0013524C  48 1A AD 91 */	bl NoParameter__12CPASAnimParmFv
/* 801382F0 00135250  38 61 00 30 */	addi r3, r1, 0x30
/* 801382F4 00135254  48 1A AD 89 */	bl NoParameter__12CPASAnimParmFv
/* 801382F8 00135258  38 61 00 38 */	addi r3, r1, 0x38
/* 801382FC 0013525C  48 1A AD 81 */	bl NoParameter__12CPASAnimParmFv
/* 80138300 00135260  38 61 00 40 */	addi r3, r1, 0x40
/* 80138304 00135264  48 1A AD 79 */	bl NoParameter__12CPASAnimParmFv
/* 80138308 00135268  7F C4 F3 78 */	mr r4, r30
/* 8013830C 0013526C  38 61 00 48 */	addi r3, r1, 0x48
/* 80138310 00135270  48 1A AC 75 */	bl FromEnum__12CPASAnimParmFi
/* 80138314 00135274  7F A4 EB 78 */	mr r4, r29
/* 80138318 00135278  38 61 00 50 */	addi r3, r1, 0x50
/* 8013831C 0013527C  48 1A AC 69 */	bl FromEnum__12CPASAnimParmFi
/* 80138320 00135280  92 C1 00 08 */	stw r22, 8(r1)
/* 80138324 00135284  38 61 00 9C */	addi r3, r1, 0x9c
/* 80138328 00135288  38 A1 00 50 */	addi r5, r1, 0x50
/* 8013832C 0013528C  38 C1 00 48 */	addi r6, r1, 0x48
/* 80138330 00135290  92 E1 00 0C */	stw r23, 0xc(r1)
/* 80138334 00135294  38 E1 00 40 */	addi r7, r1, 0x40
/* 80138338 00135298  39 01 00 38 */	addi r8, r1, 0x38
/* 8013833C 0013529C  39 21 00 30 */	addi r9, r1, 0x30
/* 80138340 001352A0  39 41 00 28 */	addi r10, r1, 0x28
/* 80138344 001352A4  38 80 00 05 */	li r4, 5
/* 80138348 001352A8  4B F4 4F 7D */	bl __ct__16CPASAnimParmDataFiRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8013834C 001352AC  7E A4 AB 78 */	mr r4, r21
/* 80138350 001352B0  38 61 00 10 */	addi r3, r1, 0x10
/* 80138354 001352B4  38 A1 00 9C */	addi r5, r1, 0x9c
/* 80138358 001352B8  38 C0 FF FF */	li r6, -1
/* 8013835C 001352BC  48 1A CE 11 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
/* 80138360 001352C0  82 81 00 14 */	lwz r20, 0x14(r1)
/* 80138364 001352C4  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80138368 001352C8  2C 14 FF FF */	cmpwi r20, -1
/* 8013836C 001352CC  41 82 00 20 */	beq lbl_8013838C
/* 80138370 001352D0  7F 83 E3 78 */	mr r3, r28
/* 80138374 001352D4  7E 84 A3 78 */	mr r4, r20
/* 80138378 001352D8  4B F1 CE 51 */	bl GetAverageAnimVelocity__6CActorFi
/* 8013837C 001352DC  2C 1D 00 00 */	cmpwi r29, 0
/* 80138380 001352E0  41 82 00 08 */	beq lbl_80138388
/* 80138384 001352E4  48 00 00 08 */	b lbl_8013838C
lbl_80138388:
/* 80138388 001352E8  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_8013838C:
/* 8013838C 001352EC  7C 78 CA 14 */	add r3, r24, r25
/* 80138390 001352F0  28 1F 00 00 */	cmplwi r31, 0
/* 80138394 001352F4  92 83 00 10 */	stw r20, 0x10(r3)
/* 80138398 001352F8  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 8013839C 001352FC  41 82 00 5C */	beq lbl_801383F8
/* 801383A0 00135300  80 A1 00 A0 */	lwz r5, 0xa0(r1)
/* 801383A4 00135304  38 60 00 00 */	li r3, 0
/* 801383A8 00135308  2C 05 00 00 */	cmpwi r5, 0
/* 801383AC 0013530C  40 81 00 44 */	ble lbl_801383F0
/* 801383B0 00135310  2C 05 00 08 */	cmpwi r5, 8
/* 801383B4 00135314  38 85 FF F8 */	addi r4, r5, -8
/* 801383B8 00135318  40 81 00 20 */	ble lbl_801383D8
/* 801383BC 0013531C  38 04 00 07 */	addi r0, r4, 7
/* 801383C0 00135320  54 00 E8 FE */	srwi r0, r0, 3
/* 801383C4 00135324  7C 09 03 A6 */	mtctr r0
/* 801383C8 00135328  2C 04 00 00 */	cmpwi r4, 0
/* 801383CC 0013532C  40 81 00 0C */	ble lbl_801383D8
lbl_801383D0:
/* 801383D0 00135330  38 63 00 08 */	addi r3, r3, 8
/* 801383D4 00135334  42 00 FF FC */	bdnz lbl_801383D0
lbl_801383D8:
/* 801383D8 00135338  7C 03 28 50 */	subf r0, r3, r5
/* 801383DC 0013533C  7C 09 03 A6 */	mtctr r0
/* 801383E0 00135340  7C 03 28 00 */	cmpw r3, r5
/* 801383E4 00135344  40 80 00 0C */	bge lbl_801383F0
lbl_801383E8:
/* 801383E8 00135348  38 63 00 01 */	addi r3, r3, 1
/* 801383EC 0013534C  42 00 FF FC */	bdnz lbl_801383E8
lbl_801383F0:
/* 801383F0 00135350  38 00 00 00 */	li r0, 0
/* 801383F4 00135354  90 01 00 A0 */	stw r0, 0xa0(r1)
lbl_801383F8:
/* 801383F8 00135358  3B BD 00 01 */	addi r29, r29, 1
/* 801383FC 0013535C  3B 39 00 08 */	addi r25, r25, 8
/* 80138400 00135360  2C 1D 00 08 */	cmpwi r29, 8
/* 80138404 00135364  41 80 FE D4 */	blt lbl_801382D8
/* 80138408 00135368  3B DE 00 01 */	addi r30, r30, 1
/* 8013840C 0013536C  3B 5A 00 44 */	addi r26, r26, 0x44
/* 80138410 00135370  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80138414 00135374  41 80 FE B8 */	blt lbl_801382CC
/* 80138418 00135378  7F 63 DB 78 */	mr r3, r27
/* 8013841C 0013537C  BA 81 00 F0 */	lmw r20, 0xf0(r1)
/* 80138420 00135380  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80138424 00135384  7C 08 03 A6 */	mtlr r0
/* 80138428 00135388  38 21 01 20 */	addi r1, r1, 0x120
/* 8013842C 0013538C  4E 80 00 20 */	blr

.global GetBodyStateTransition__13CBSLocomotionFfR15CBodyController
GetBodyStateTransition__13CBSLocomotionFfR15CBodyController:
/* 80138430 00135390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138434 00135394  7C 08 02 A6 */	mflr r0
/* 80138438 00135398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013843C 0013539C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80138440 001353A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80138444 001353A4  7C 9E 23 78 */	mr r30, r4
/* 80138448 001353A8  3B FE 00 04 */	addi r31, r30, 4
/* 8013844C 001353AC  38 80 00 0F */	li r4, 0xf
/* 80138450 001353B0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80138454 001353B4  7C 7D 1B 78 */	mr r29, r3
/* 80138458 001353B8  7F E3 FB 78 */	mr r3, r31
/* 8013845C 001353BC  4B FF 8F F5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138460 001353C0  28 03 00 00 */	cmplwi r3, 0
/* 80138464 001353C4  41 82 00 0C */	beq lbl_80138470
/* 80138468 001353C8  38 60 00 0E */	li r3, 0xe
/* 8013846C 001353CC  48 00 02 78 */	b lbl_801386E4
lbl_80138470:
/* 80138470 001353D0  7F E3 FB 78 */	mr r3, r31
/* 80138474 001353D4  38 80 00 03 */	li r4, 3
/* 80138478 001353D8  4B FF 8F D9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013847C 001353DC  28 03 00 00 */	cmplwi r3, 0
/* 80138480 001353E0  41 82 00 0C */	beq lbl_8013848C
/* 80138484 001353E4  38 60 00 00 */	li r3, 0
/* 80138488 001353E8  48 00 02 5C */	b lbl_801386E4
lbl_8013848C:
/* 8013848C 001353EC  7F E3 FB 78 */	mr r3, r31
/* 80138490 001353F0  38 80 00 09 */	li r4, 9
/* 80138494 001353F4  4B FF 8F BD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138498 001353F8  28 03 00 00 */	cmplwi r3, 0
/* 8013849C 001353FC  41 82 00 0C */	beq lbl_801384A8
/* 801384A0 00135400  38 60 00 0A */	li r3, 0xa
/* 801384A4 00135404  48 00 02 40 */	b lbl_801386E4
lbl_801384A8:
/* 801384A8 00135408  7F E3 FB 78 */	mr r3, r31
/* 801384AC 0013540C  38 80 00 04 */	li r4, 4
/* 801384B0 00135410  4B FF 8F A1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801384B4 00135414  28 03 00 00 */	cmplwi r3, 0
/* 801384B8 00135418  41 82 00 0C */	beq lbl_801384C4
/* 801384BC 0013541C  38 60 00 06 */	li r3, 6
/* 801384C0 00135420  48 00 02 24 */	b lbl_801386E4
lbl_801384C4:
/* 801384C4 00135424  7F E3 FB 78 */	mr r3, r31
/* 801384C8 00135428  38 80 00 16 */	li r4, 0x16
/* 801384CC 0013542C  4B FF 8F 85 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801384D0 00135430  28 03 00 00 */	cmplwi r3, 0
/* 801384D4 00135434  41 82 00 10 */	beq lbl_801384E4
/* 801384D8 00135438  7F E3 FB 78 */	mr r3, r31
/* 801384DC 0013543C  4B FF 8F CD */	bl ClearLocomotionCmds__16CBodyStateCmdMgrFv
/* 801384E0 00135440  48 00 02 00 */	b lbl_801386E0
lbl_801384E4:
/* 801384E4 00135444  7F E3 FB 78 */	mr r3, r31
/* 801384E8 00135448  38 80 00 11 */	li r4, 0x11
/* 801384EC 0013544C  4B FF 8F 65 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801384F0 00135450  28 03 00 00 */	cmplwi r3, 0
/* 801384F4 00135454  41 82 00 0C */	beq lbl_80138500
/* 801384F8 00135458  38 60 00 0F */	li r3, 0xf
/* 801384FC 0013545C  48 00 01 E8 */	b lbl_801386E4
lbl_80138500:
/* 80138500 00135460  7F E3 FB 78 */	mr r3, r31
/* 80138504 00135464  38 80 00 0E */	li r4, 0xe
/* 80138508 00135468  4B FF 8F 49 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013850C 0013546C  28 03 00 00 */	cmplwi r3, 0
/* 80138510 00135470  41 82 00 0C */	beq lbl_8013851C
/* 80138514 00135474  38 60 00 0C */	li r3, 0xc
/* 80138518 00135478  48 00 01 CC */	b lbl_801386E4
lbl_8013851C:
/* 8013851C 0013547C  7F E3 FB 78 */	mr r3, r31
/* 80138520 00135480  38 80 00 05 */	li r4, 5
/* 80138524 00135484  4B FF 8F 2D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138528 00135488  28 03 00 00 */	cmplwi r3, 0
/* 8013852C 0013548C  41 82 00 0C */	beq lbl_80138538
/* 80138530 00135490  38 60 00 07 */	li r3, 7
/* 80138534 00135494  48 00 01 B0 */	b lbl_801386E4
lbl_80138538:
/* 80138538 00135498  7F E3 FB 78 */	mr r3, r31
/* 8013853C 0013549C  38 80 00 06 */	li r4, 6
/* 80138540 001354A0  4B FF 8F 11 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138544 001354A4  28 03 00 00 */	cmplwi r3, 0
/* 80138548 001354A8  41 82 00 0C */	beq lbl_80138554
/* 8013854C 001354AC  38 60 00 12 */	li r3, 0x12
/* 80138550 001354B0  48 00 01 94 */	b lbl_801386E4
lbl_80138554:
/* 80138554 001354B4  7F E3 FB 78 */	mr r3, r31
/* 80138558 001354B8  38 80 00 07 */	li r4, 7
/* 8013855C 001354BC  4B FF 8E F5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138560 001354C0  28 03 00 00 */	cmplwi r3, 0
/* 80138564 001354C4  41 82 00 0C */	beq lbl_80138570
/* 80138568 001354C8  38 60 00 09 */	li r3, 9
/* 8013856C 001354CC  48 00 01 78 */	b lbl_801386E4
lbl_80138570:
/* 80138570 001354D0  7F E3 FB 78 */	mr r3, r31
/* 80138574 001354D4  38 80 00 08 */	li r4, 8
/* 80138578 001354D8  4B FF 8E D9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8013857C 001354DC  28 03 00 00 */	cmplwi r3, 0
/* 80138580 001354E0  41 82 00 0C */	beq lbl_8013858C
/* 80138584 001354E4  38 60 00 0A */	li r3, 0xa
/* 80138588 001354E8  48 00 01 5C */	b lbl_801386E4
lbl_8013858C:
/* 8013858C 001354EC  7F E3 FB 78 */	mr r3, r31
/* 80138590 001354F0  38 80 00 10 */	li r4, 0x10
/* 80138594 001354F4  4B FF 8E BD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138598 001354F8  28 03 00 00 */	cmplwi r3, 0
/* 8013859C 001354FC  41 82 00 0C */	beq lbl_801385A8
/* 801385A0 00135500  38 60 00 0D */	li r3, 0xd
/* 801385A4 00135504  48 00 01 40 */	b lbl_801386E4
lbl_801385A8:
/* 801385A8 00135508  7F E3 FB 78 */	mr r3, r31
/* 801385AC 0013550C  38 80 00 12 */	li r4, 0x12
/* 801385B0 00135510  4B FF 8E A1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801385B4 00135514  28 03 00 00 */	cmplwi r3, 0
/* 801385B8 00135518  41 82 00 0C */	beq lbl_801385C4
/* 801385BC 0013551C  38 60 00 10 */	li r3, 0x10
/* 801385C0 00135520  48 00 01 24 */	b lbl_801386E4
lbl_801385C4:
/* 801385C4 00135524  7F E3 FB 78 */	mr r3, r31
/* 801385C8 00135528  38 80 00 01 */	li r4, 1
/* 801385CC 0013552C  4B FF 8E 85 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801385D0 00135530  28 03 00 00 */	cmplwi r3, 0
/* 801385D4 00135534  41 82 00 0C */	beq lbl_801385E0
/* 801385D8 00135538  38 60 00 03 */	li r3, 3
/* 801385DC 0013553C  48 00 01 08 */	b lbl_801386E4
lbl_801385E0:
/* 801385E0 00135540  7F E3 FB 78 */	mr r3, r31
/* 801385E4 00135544  38 80 00 14 */	li r4, 0x14
/* 801385E8 00135548  4B FF 8E 69 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801385EC 0013554C  28 03 00 00 */	cmplwi r3, 0
/* 801385F0 00135550  41 82 00 0C */	beq lbl_801385FC
/* 801385F4 00135554  38 60 00 13 */	li r3, 0x13
/* 801385F8 00135558  48 00 00 EC */	b lbl_801386E4
lbl_801385FC:
/* 801385FC 0013555C  7F E3 FB 78 */	mr r3, r31
/* 80138600 00135560  38 80 00 15 */	li r4, 0x15
/* 80138604 00135564  4B FF 8E 4D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138608 00135568  28 03 00 00 */	cmplwi r3, 0
/* 8013860C 0013556C  41 82 00 0C */	beq lbl_80138618
/* 80138610 00135570  38 60 00 14 */	li r3, 0x14
/* 80138614 00135574  48 00 00 D0 */	b lbl_801386E4
lbl_80138618:
/* 80138618 00135578  7F E3 FB 78 */	mr r3, r31
/* 8013861C 0013557C  38 80 00 13 */	li r4, 0x13
/* 80138620 00135580  4B FF 8E 31 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138624 00135584  28 03 00 00 */	cmplwi r3, 0
/* 80138628 00135588  41 82 00 0C */	beq lbl_80138634
/* 8013862C 0013558C  38 60 00 11 */	li r3, 0x11
/* 80138630 00135590  48 00 00 B4 */	b lbl_801386E4
lbl_80138634:
/* 80138634 00135594  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80138638 00135598  38 00 00 00 */	li r0, 0
/* 8013863C 0013559C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80138640 001355A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80138644 001355A4  40 82 00 1C */	bne lbl_80138660
/* 80138648 001355A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8013864C 001355AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80138650 001355B0  40 82 00 10 */	bne lbl_80138660
/* 80138654 001355B4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80138658 001355B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013865C 001355BC  41 82 00 08 */	beq lbl_80138664
lbl_80138660:
/* 80138660 001355C0  38 00 00 01 */	li r0, 1
lbl_80138664:
/* 80138664 001355C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80138668 001355C8  40 82 00 60 */	bne lbl_801386C8
/* 8013866C 001355CC  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 80138670 001355D0  38 00 00 00 */	li r0, 0
/* 80138674 001355D4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80138678 001355D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8013867C 001355DC  40 82 00 1C */	bne lbl_80138698
/* 80138680 001355E0  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80138684 001355E4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80138688 001355E8  40 82 00 10 */	bne lbl_80138698
/* 8013868C 001355EC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80138690 001355F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80138694 001355F4  41 82 00 08 */	beq lbl_8013869C
lbl_80138698:
/* 80138698 001355F8  38 00 00 01 */	li r0, 1
lbl_8013869C:
/* 8013869C 001355FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 801386A0 00135600  41 82 00 28 */	beq lbl_801386C8
/* 801386A4 00135604  7F A3 EB 78 */	mr r3, r29
/* 801386A8 00135608  81 9D 00 00 */	lwz r12, 0(r29)
/* 801386AC 0013560C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801386B0 00135610  7D 89 03 A6 */	mtctr r12
/* 801386B4 00135614  4E 80 04 21 */	bctrl
/* 801386B8 00135618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801386BC 0013561C  40 82 00 0C */	bne lbl_801386C8
/* 801386C0 00135620  38 60 00 08 */	li r3, 8
/* 801386C4 00135624  48 00 00 20 */	b lbl_801386E4
lbl_801386C8:
/* 801386C8 00135628  80 7D 00 04 */	lwz r3, 4(r29)
/* 801386CC 0013562C  80 1E 02 EC */	lwz r0, 0x2ec(r30)
/* 801386D0 00135630  7C 03 00 00 */	cmpw r3, r0
/* 801386D4 00135634  41 82 00 0C */	beq lbl_801386E0
/* 801386D8 00135638  38 60 00 05 */	li r3, 5
/* 801386DC 0013563C  48 00 00 08 */	b lbl_801386E4
lbl_801386E0:
/* 801386E0 00135640  38 60 FF FF */	li r3, -1
lbl_801386E4:
/* 801386E4 00135644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801386E8 00135648  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801386EC 0013564C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801386F0 00135650  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801386F4 00135654  7C 08 03 A6 */	mtlr r0
/* 801386F8 00135658  38 21 00 20 */	addi r1, r1, 0x20
/* 801386FC 0013565C  4E 80 00 20 */	blr

.global "ComputeWeightPercentage__13CBSLocomotionCFRCQ24rstl9pair<i,f>RCQ24rstl9pair<i,f>f"
"ComputeWeightPercentage__13CBSLocomotionCFRCQ24rstl9pair<i,f>RCQ24rstl9pair<i,f>f":
/* 80138700 00135660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138704 00135664  C0 02 9A 40 */	lfs f0, lbl_805AB760@sda21(r2)
/* 80138708 00135668  C0 45 00 04 */	lfs f2, 4(r5)
/* 8013870C 0013566C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80138710 00135670  EC 42 18 28 */	fsubs f2, f2, f3
/* 80138714 00135674  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80138718 00135678  40 81 00 44 */	ble lbl_8013875C
/* 8013871C 0013567C  EC 21 18 28 */	fsubs f1, f1, f3
/* 80138720 00135680  C0 0D 8B 60 */	lfs f0, lbl_805A7720@sda21(r13)
/* 80138724 00135684  EC 21 10 24 */	fdivs f1, f1, f2
/* 80138728 00135688  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8013872C 0013568C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80138730 00135690  40 80 00 0C */	bge lbl_8013873C
/* 80138734 00135694  38 6D 8B 60 */	addi r3, r13, lbl_805A7720@sda21
/* 80138738 00135698  48 00 00 08 */	b lbl_80138740
lbl_8013873C:
/* 8013873C 0013569C  38 61 00 08 */	addi r3, r1, 8
lbl_80138740:
/* 80138740 001356A0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80138744 001356A4  C0 0D 8B 64 */	lfs f0, lbl_805A7724@sda21(r13)
/* 80138748 001356A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013874C 001356AC  40 80 00 08 */	bge lbl_80138754
/* 80138750 001356B0  38 6D 8B 64 */	addi r3, r13, lbl_805A7724@sda21
lbl_80138754:
/* 80138754 001356B4  C0 23 00 00 */	lfs f1, 0(r3)
/* 80138758 001356B8  48 00 00 08 */	b lbl_80138760
lbl_8013875C:
/* 8013875C 001356BC  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_80138760:
/* 80138760 001356C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80138764 001356C4  4E 80 00 20 */	blr

.global GetStartVelocityMagnitude__13CBSLocomotionCFR15CBodyController
GetStartVelocityMagnitude__13CBSLocomotionCFR15CBodyController:
/* 80138768 001356C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013876C 001356CC  7C 08 02 A6 */	mflr r0
/* 80138770 001356D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80138774 001356D4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80138778 001356D8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8013877C 001356DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80138780 001356E0  7C 9F 23 78 */	mr r31, r4
/* 80138784 001356E4  38 61 00 0C */	addi r3, r1, 0xc
/* 80138788 001356E8  80 84 00 00 */	lwz r4, 0(r4)
/* 8013878C 001356EC  4B F7 3F 59 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 80138790 001356F0  80 63 00 04 */	lwz r3, 4(r3)
/* 80138794 001356F4  28 03 00 00 */	cmplwi r3, 0
/* 80138798 001356F8  41 82 00 50 */	beq lbl_801387E8
/* 8013879C 001356FC  38 63 01 38 */	addi r3, r3, 0x138
/* 801387A0 00135700  48 1D C1 19 */	bl Magnitude__9CVector3fCFv
/* 801387A4 00135704  FF E0 08 90 */	fmr f31, f1
/* 801387A8 00135708  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 801387AC 0013570C  4B FF B7 01 */	bl GetMaxSpeed__14CBodyStateInfoCFv
/* 801387B0 00135710  C0 42 9A 34 */	lfs f2, lbl_805AB754@sda21(r2)
/* 801387B4 00135714  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 801387B8 00135718  40 81 00 08 */	ble lbl_801387C0
/* 801387BC 0013571C  EC 5F 08 24 */	fdivs f2, f31, f1
lbl_801387C0:
/* 801387C0 00135720  C0 0D 8B 5C */	lfs f0, lbl_805A771C@sda21(r13)
/* 801387C4 00135724  D0 41 00 08 */	stfs f2, 8(r1)
/* 801387C8 00135728  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801387CC 0013572C  40 80 00 0C */	bge lbl_801387D8
/* 801387D0 00135730  38 6D 8B 5C */	addi r3, r13, lbl_805A771C@sda21
/* 801387D4 00135734  48 00 00 08 */	b lbl_801387DC
lbl_801387D8:
/* 801387D8 00135738  38 61 00 08 */	addi r3, r1, 8
lbl_801387DC:
/* 801387DC 0013573C  C0 23 00 00 */	lfs f1, 0(r3)
/* 801387E0 00135740  D0 21 00 08 */	stfs f1, 8(r1)
/* 801387E4 00135744  48 00 00 08 */	b lbl_801387EC
lbl_801387E8:
/* 801387E8 00135748  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_801387EC:
/* 801387EC 0013574C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 801387F0 00135750  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801387F4 00135754  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801387F8 00135758  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801387FC 0013575C  7C 08 03 A6 */	mtlr r0
/* 80138800 00135760  38 21 00 30 */	addi r1, r1, 0x30
/* 80138804 00135764  4E 80 00 20 */	blr

.global ReStartBodyState__13CBSLocomotionFR15CBodyControllerb
ReStartBodyState__13CBSLocomotionFR15CBodyControllerb:
/* 80138808 00135768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013880C 0013576C  7C 08 02 A6 */	mflr r0
/* 80138810 00135770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138814 00135774  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80138818 00135778  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013881C 0013577C  7C 9F 23 78 */	mr r31, r4
/* 80138820 00135780  93 C1 00 08 */	stw r30, 8(r1)
/* 80138824 00135784  7C 7E 1B 78 */	mr r30, r3
/* 80138828 00135788  41 82 00 0C */	beq lbl_80138834
/* 8013882C 0013578C  4B FF FF 3D */	bl GetStartVelocityMagnitude__13CBSLocomotionCFR15CBodyController
/* 80138830 00135790  48 00 00 08 */	b lbl_80138838
lbl_80138834:
/* 80138834 00135794  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_80138838:
/* 80138838 00135798  7F C3 F3 78 */	mr r3, r30
/* 8013883C 0013579C  FC 40 08 90 */	fmr f2, f1
/* 80138840 001357A0  81 9E 00 00 */	lwz r12, 0(r30)
/* 80138844 001357A4  7F E4 FB 78 */	mr r4, r31
/* 80138848 001357A8  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
/* 8013884C 001357AC  38 A0 00 01 */	li r5, 1
/* 80138850 001357B0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80138854 001357B4  7D 89 03 A6 */	mtctr r12
/* 80138858 001357B8  4E 80 04 21 */	bctrl
/* 8013885C 001357BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138860 001357C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138864 001357C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138868 001357C8  7C 08 03 A6 */	mtlr r0
/* 8013886C 001357CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80138870 001357D0  4E 80 00 20 */	blr

.global ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController
ApplyLocomotionPhysics__13CBSLocomotionFfR15CBodyController:
/* 80138874 001357D4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80138878 001357D8  7C 08 02 A6 */	mflr r0
/* 8013887C 001357DC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80138880 001357E0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80138884 001357E4  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, qr0
/* 80138888 001357E8  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 8013888C 001357EC  7C 9C 23 78 */	mr r28, r4
/* 80138890 001357F0  FF E0 08 90 */	fmr f31, f1
/* 80138894 001357F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80138898 001357F8  7C 7B 1B 78 */	mr r27, r3
/* 8013889C 001357FC  38 61 00 14 */	addi r3, r1, 0x14
/* 801388A0 00135800  4B F7 3E 45 */	bl "__ct__27TCastToPtr<13CPhysicsActor>FP7CEntity"
/* 801388A4 00135804  83 E3 00 04 */	lwz r31, 4(r3)
/* 801388A8 00135808  28 1F 00 00 */	cmplwi r31, 0
/* 801388AC 0013580C  41 82 02 1C */	beq lbl_80138AC8
/* 801388B0 00135810  3B DC 00 04 */	addi r30, r28, 4
/* 801388B4 00135814  3C 60 80 5A */	lis r3, skZero3f@ha
/* 801388B8 00135818  3B BE 00 0C */	addi r29, r30, 0xc
/* 801388BC 0013581C  C0 22 9A 4C */	lfs f1, lbl_805AB76C@sda21(r2)
/* 801388C0 00135820  38 83 66 A0 */	addi r4, r3, skZero3f@l
/* 801388C4 00135824  7F A3 EB 78 */	mr r3, r29
/* 801388C8 00135828  48 1D 76 9D */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 801388CC 0013582C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801388D0 00135830  41 82 00 08 */	beq lbl_801388D8
/* 801388D4 00135834  7F DD F3 78 */	mr r29, r30
lbl_801388D8:
/* 801388D8 00135838  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801388DC 0013583C  38 61 00 7C */	addi r3, r1, 0x7c
/* 801388E0 00135840  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 801388E4 00135844  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801388E8 00135848  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 801388EC 0013584C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 801388F0 00135850  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801388F4 00135854  48 1D BE 05 */	bl CanBeNormalized__9CVector3fCFv
/* 801388F8 00135858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801388FC 0013585C  41 82 01 9C */	beq lbl_80138A98
/* 80138900 00135860  7F 63 DB 78 */	mr r3, r27
/* 80138904 00135864  81 9B 00 00 */	lwz r12, 0(r27)
/* 80138908 00135868  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8013890C 0013586C  7D 89 03 A6 */	mtctr r12
/* 80138910 00135870  4E 80 04 21 */	bctrl
/* 80138914 00135874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80138918 00135878  41 82 01 64 */	beq lbl_80138A7C
/* 8013891C 0013587C  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80138920 00135880  38 61 00 64 */	addi r3, r1, 0x64
/* 80138924 00135884  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80138928 00135888  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8013892C 0013588C  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80138930 00135890  D0 61 00 6C */	stfs f3, 0x6c(r1)
/* 80138934 00135894  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80138938 00135898  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 8013893C 0013589C  D0 61 00 78 */	stfs f3, 0x78(r1)
/* 80138940 001358A0  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80138944 001358A4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80138948 001358A8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8013894C 001358AC  48 1D BF AD */	bl Normalize__9CVector3fFv
/* 80138950 001358B0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80138954 001358B4  FC 20 F8 90 */	fmr f1, f31
/* 80138958 001358B8  C0 61 00 7C */	lfs f3, 0x7c(r1)
/* 8013895C 001358BC  7F 83 E3 78 */	mr r3, r28
/* 80138960 001358C0  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80138964 001358C4  38 81 00 58 */	addi r4, r1, 0x58
/* 80138968 001358C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8013896C 001358CC  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80138970 001358D0  38 A1 00 64 */	addi r5, r1, 0x64
/* 80138974 001358D4  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80138978 001358D8  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8013897C 001358DC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80138980 001358E0  48 00 1A E9 */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
/* 80138984 001358E4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80138988 001358E8  38 61 00 4C */	addi r3, r1, 0x4c
/* 8013898C 001358EC  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80138990 001358F0  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80138994 001358F4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80138998 001358F8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8013899C 001358FC  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801389A0 00135900  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801389A4 00135904  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 801389A8 00135908  48 1D BF 51 */	bl Normalize__9CVector3fFv
/* 801389AC 0013590C  C0 22 9A 4C */	lfs f1, lbl_805AB76C@sda21(r2)
/* 801389B0 00135910  38 61 00 64 */	addi r3, r1, 0x64
/* 801389B4 00135914  38 81 00 4C */	addi r4, r1, 0x4c
/* 801389B8 00135918  48 1D 75 AD */	bl close_enough__FRC9CVector3fRC9CVector3ff
/* 801389BC 0013591C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801389C0 00135920  40 82 00 64 */	bne lbl_80138A24
/* 801389C4 00135924  3B BC 02 D4 */	addi r29, r28, 0x2d4
/* 801389C8 00135928  38 61 00 7C */	addi r3, r1, 0x7c
/* 801389CC 0013592C  38 81 00 58 */	addi r4, r1, 0x58
/* 801389D0 00135930  48 1D BC 61 */	bl GetAngleDiff__9CVector3fFRC9CVector3fRC9CVector3f
/* 801389D4 00135934  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801389D8 00135938  FC 00 08 18 */	frsp f0, f1
/* 801389DC 0013593C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 801389E0 00135940  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801389E4 00135944  40 80 00 08 */	bge lbl_801389EC
/* 801389E8 00135948  48 00 00 08 */	b lbl_801389F0
lbl_801389EC:
/* 801389EC 0013594C  3B A1 00 0C */	addi r29, r1, 0xc
lbl_801389F0:
/* 801389F0 00135950  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801389F4 00135954  38 61 00 28 */	addi r3, r1, 0x28
/* 801389F8 00135958  38 81 00 64 */	addi r4, r1, 0x64
/* 801389FC 0013595C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80138A00 00135960  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80138A04 00135964  38 C1 00 10 */	addi r6, r1, 0x10
/* 80138A08 00135968  48 1D BF 4D */	bl Slerp__9CVector3fFRC9CVector3fRC9CVector3fRC9CRelAngle
/* 80138A0C 0013596C  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80138A10 00135970  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80138A14 00135974  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80138A18 00135978  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80138A1C 0013597C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80138A20 00135980  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_80138A24:
/* 80138A24 00135984  FC 20 F8 90 */	fmr f1, f31
/* 80138A28 00135988  7F 83 E3 78 */	mr r3, r28
/* 80138A2C 0013598C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80138A30 00135990  38 A1 00 70 */	addi r5, r1, 0x70
/* 80138A34 00135994  48 00 1A 35 */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
/* 80138A38 00135998  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80138A3C 0013599C  FC 20 F8 90 */	fmr f1, f31
/* 80138A40 001359A0  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80138A44 001359A4  7F 83 E3 78 */	mr r3, r28
/* 80138A48 001359A8  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80138A4C 001359AC  38 81 00 34 */	addi r4, r1, 0x34
/* 80138A50 001359B0  C0 02 9A 34 */	lfs f0, lbl_805AB754@sda21(r2)
/* 80138A54 001359B4  D0 81 00 3C */	stfs f4, 0x3c(r1)
/* 80138A58 001359B8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80138A5C 001359BC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80138A60 001359C0  D0 61 00 44 */	stfs f3, 0x44(r1)
/* 80138A64 001359C4  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 80138A68 001359C8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80138A6C 001359CC  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80138A70 001359D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80138A74 001359D4  48 00 19 F5 */	bl FaceDirection3D__15CBodyControllerFRC9CVector3ff
/* 80138A78 001359D8  48 00 00 20 */	b lbl_80138A98
lbl_80138A7C:
/* 80138A7C 001359DC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80138A80 001359E0  38 81 00 7C */	addi r4, r1, 0x7c
/* 80138A84 001359E4  48 1D BD CD */	bl AsNormalized__9CVector3fCFv
/* 80138A88 001359E8  FC 20 F8 90 */	fmr f1, f31
/* 80138A8C 001359EC  7F 83 E3 78 */	mr r3, r28
/* 80138A90 001359F0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80138A94 001359F4  48 00 1C 11 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80138A98:
/* 80138A98 001359F8  7F C3 F3 78 */	mr r3, r30
/* 80138A9C 001359FC  48 1D BE 1D */	bl Magnitude__9CVector3fCFv
/* 80138AA0 00135A00  FC 00 08 18 */	frsp f0, f1
/* 80138AA4 00135A04  C0 4D 8B 58 */	lfs f2, lbl_805A7718@sda21(r13)
/* 80138AA8 00135A08  D0 21 00 08 */	stfs f1, 8(r1)
/* 80138AAC 00135A0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80138AB0 00135A10  40 80 00 0C */	bge lbl_80138ABC
/* 80138AB4 00135A14  38 6D 8B 58 */	addi r3, r13, lbl_805A7718@sda21
/* 80138AB8 00135A18  48 00 00 08 */	b lbl_80138AC0
lbl_80138ABC:
/* 80138ABC 00135A1C  38 61 00 08 */	addi r3, r1, 8
lbl_80138AC0:
/* 80138AC0 00135A20  C0 23 00 00 */	lfs f1, 0(r3)
/* 80138AC4 00135A24  48 00 00 08 */	b lbl_80138ACC
lbl_80138AC8:
/* 80138AC8 00135A28  C0 22 9A 34 */	lfs f1, lbl_805AB754@sda21(r2)
lbl_80138ACC:
/* 80138ACC 00135A2C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, qr0
/* 80138AD0 00135A30  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80138AD4 00135A34  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 80138AD8 00135A38  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80138ADC 00135A3C  7C 08 03 A6 */	mtlr r0
/* 80138AE0 00135A40  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80138AE4 00135A44  4E 80 00 20 */	blr

.global Shutdown__13CBSLocomotionFR15CBodyController
Shutdown__13CBSLocomotionFR15CBodyController:
/* 80138AE8 00135A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138AEC 00135A4C  7C 08 02 A6 */	mflr r0
/* 80138AF0 00135A50  C0 22 9A 38 */	lfs f1, lbl_805AB758@sda21(r2)
/* 80138AF4 00135A54  7C 83 23 78 */	mr r3, r4
/* 80138AF8 00135A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138AFC 00135A5C  48 00 1D 65 */	bl MultiplyPlaybackRate__15CBodyControllerFf
/* 80138B00 00135A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138B04 00135A64  7C 08 03 A6 */	mtlr r0
/* 80138B08 00135A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80138B0C 00135A6C  4E 80 00 20 */	blr

.global UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager
UpdateBody__13CBSLocomotionFfR15CBodyControllerR13CStateManager:
/* 80138B10 00135A70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138B14 00135A74  7C 08 02 A6 */	mflr r0
/* 80138B18 00135A78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138B1C 00135A7C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80138B20 00135A80  FF E0 08 90 */	fmr f31, f1
/* 80138B24 00135A84  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80138B28 00135A88  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80138B2C 00135A8C  7C 9E 23 78 */	mr r30, r4
/* 80138B30 00135A90  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80138B34 00135A94  7C 7D 1B 78 */	mr r29, r3
/* 80138B38 00135A98  81 83 00 00 */	lwz r12, 0(r3)
/* 80138B3C 00135A9C  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80138B40 00135AA0  7D 89 03 A6 */	mtctr r12
/* 80138B44 00135AA4  4E 80 04 21 */	bctrl
/* 80138B48 00135AA8  7C 7F 1B 78 */	mr r31, r3
/* 80138B4C 00135AAC  2C 1F FF FF */	cmpwi r31, -1
/* 80138B50 00135AB0  40 82 00 48 */	bne lbl_80138B98
/* 80138B54 00135AB4  7F A3 EB 78 */	mr r3, r29
/* 80138B58 00135AB8  FC 20 F8 90 */	fmr f1, f31
/* 80138B5C 00135ABC  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138B60 00135AC0  7F C4 F3 78 */	mr r4, r30
/* 80138B64 00135AC4  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80138B68 00135AC8  7D 89 03 A6 */	mtctr r12
/* 80138B6C 00135ACC  4E 80 04 21 */	bctrl
/* 80138B70 00135AD0  FC 00 08 90 */	fmr f0, f1
/* 80138B74 00135AD4  81 9D 00 00 */	lwz r12, 0(r29)
/* 80138B78 00135AD8  FC 20 F8 90 */	fmr f1, f31
/* 80138B7C 00135ADC  7F A3 EB 78 */	mr r3, r29
/* 80138B80 00135AE0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80138B84 00135AE4  7F C4 F3 78 */	mr r4, r30
/* 80138B88 00135AE8  FC 40 00 90 */	fmr f2, f0
/* 80138B8C 00135AEC  38 A0 00 00 */	li r5, 0
/* 80138B90 00135AF0  7D 89 03 A6 */	mtctr r12
/* 80138B94 00135AF4  4E 80 04 21 */	bctrl
lbl_80138B98:
/* 80138B98 00135AF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80138B9C 00135AFC  7F E3 FB 78 */	mr r3, r31
/* 80138BA0 00135B00  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80138BA4 00135B04  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80138BA8 00135B08  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80138BAC 00135B0C  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 80138BB0 00135B10  7C 08 03 A6 */	mtlr r0
/* 80138BB4 00135B14  38 21 00 20 */	addi r1, r1, 0x20
/* 80138BB8 00135B18  4E 80 00 20 */	blr

.global Start__13CBSLocomotionFR15CBodyControllerR13CStateManager
Start__13CBSLocomotionFR15CBodyControllerR13CStateManager:
/* 80138BBC 00135B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138BC0 00135B20  7C 08 02 A6 */	mflr r0
/* 80138BC4 00135B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138BC8 00135B28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138BCC 00135B2C  7C 9F 23 78 */	mr r31, r4
/* 80138BD0 00135B30  93 C1 00 08 */	stw r30, 8(r1)
/* 80138BD4 00135B34  7C 7E 1B 78 */	mr r30, r3
/* 80138BD8 00135B38  38 7F 00 04 */	addi r3, r31, 4
/* 80138BDC 00135B3C  80 04 02 EC */	lwz r0, 0x2ec(r4)
/* 80138BE0 00135B40  38 80 00 0D */	li r4, 0xd
/* 80138BE4 00135B44  90 1E 00 04 */	stw r0, 4(r30)
/* 80138BE8 00135B48  4B FF 88 69 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80138BEC 00135B4C  28 03 00 00 */	cmplwi r3, 0
/* 80138BF0 00135B50  41 82 00 18 */	beq lbl_80138C08
/* 80138BF4 00135B54  7F C3 F3 78 */	mr r3, r30
/* 80138BF8 00135B58  7F E4 FB 78 */	mr r4, r31
/* 80138BFC 00135B5C  38 A0 00 01 */	li r5, 1
/* 80138C00 00135B60  4B FF FC 09 */	bl ReStartBodyState__13CBSLocomotionFR15CBodyControllerb
/* 80138C04 00135B64  48 00 00 14 */	b lbl_80138C18
lbl_80138C08:
/* 80138C08 00135B68  7F C3 F3 78 */	mr r3, r30
/* 80138C0C 00135B6C  7F E4 FB 78 */	mr r4, r31
/* 80138C10 00135B70  38 A0 00 00 */	li r5, 0
/* 80138C14 00135B74  4B FF FB F5 */	bl ReStartBodyState__13CBSLocomotionFR15CBodyControllerb
lbl_80138C18:
/* 80138C18 00135B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138C1C 00135B7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138C20 00135B80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138C24 00135B84  7C 08 03 A6 */	mtlr r0
/* 80138C28 00135B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80138C2C 00135B8C  4E 80 00 20 */	blr

.global __ct__13CBSLocomotionFv
__ct__13CBSLocomotionFv:
/* 80138C30 00135B90  3C A0 80 3E */	lis r5, lbl_803E1318@ha
/* 80138C34 00135B94  3C 80 80 3E */	lis r4, lbl_803E16CC@ha
/* 80138C38 00135B98  38 A5 13 18 */	addi r5, r5, lbl_803E1318@l
/* 80138C3C 00135B9C  38 00 FF FF */	li r0, -1
/* 80138C40 00135BA0  90 A3 00 00 */	stw r5, 0(r3)
/* 80138C44 00135BA4  38 84 16 CC */	addi r4, r4, lbl_803E16CC@l
/* 80138C48 00135BA8  90 83 00 00 */	stw r4, 0(r3)
/* 80138C4C 00135BAC  90 03 00 04 */	stw r0, 4(r3)
/* 80138C50 00135BB0  4E 80 00 20 */	blr

.global __dt__21CBSNewFlyerLocomotion
__dt__21CBSNewFlyerLocomotion:
/* 80138C54 00135BB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138C58 00135BB8  7C 08 02 A6 */	mflr r0
/* 80138C5C 00135BBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138C60 00135BC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138C64 00135BC4  7C 9F 23 78 */	mr r31, r4
/* 80138C68 00135BC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80138C6C 00135BCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80138C70 00135BD0  41 82 00 28 */	beq lbl_80138C98
/* 80138C74 00135BD4  3C A0 80 3E */	lis r5, lbl_803E153C@ha
/* 80138C78 00135BD8  38 80 00 00 */	li r4, 0
/* 80138C7C 00135BDC  38 05 15 3C */	addi r0, r5, lbl_803E153C@l
/* 80138C80 00135BE0  90 1E 00 00 */	stw r0, 0(r30)
/* 80138C84 00135BE4  4B FF E3 F9 */	bl __dt__18CBSBiPedLocomotionFv
/* 80138C88 00135BE8  7F E0 07 35 */	extsh. r0, r31
/* 80138C8C 00135BEC  40 81 00 0C */	ble lbl_80138C98
/* 80138C90 00135BF0  7F C3 F3 78 */	mr r3, r30
/* 80138C94 00135BF4  48 1D CC 9D */	bl Free__7CMemoryFPCv
lbl_80138C98:
/* 80138C98 00135BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138C9C 00135BFC  7F C3 F3 78 */	mr r3, r30
/* 80138CA0 00135C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138CA4 00135C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138CA8 00135C08  7C 08 03 A6 */	mtlr r0
/* 80138CAC 00135C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80138CB0 00135C10  4E 80 00 20 */	blr

.global IsMoving__18CBSBiPedLocomotionCFv
IsMoving__18CBSBiPedLocomotionCFv:
/* 80138CB4 00135C14  80 63 03 C4 */	lwz r3, 0x3c4(r3)
/* 80138CB8 00135C18  7C 03 00 D0 */	neg r0, r3
/* 80138CBC 00135C1C  7C 00 1B 78 */	or r0, r0, r3
/* 80138CC0 00135C20  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80138CC4 00135C24  4E 80 00 20 */	blr

.global __dt__23CBSWallWalkerLocomotion
__dt__23CBSWallWalkerLocomotion:
/* 80138CC8 00135C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138CCC 00135C2C  7C 08 02 A6 */	mflr r0
/* 80138CD0 00135C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138CD4 00135C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138CD8 00135C38  7C 9F 23 78 */	mr r31, r4
/* 80138CDC 00135C3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80138CE0 00135C40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80138CE4 00135C44  41 82 00 28 */	beq lbl_80138D0C
/* 80138CE8 00135C48  3C A0 80 3E */	lis r5, lbl_803E158C@ha
/* 80138CEC 00135C4C  38 80 00 00 */	li r4, 0
/* 80138CF0 00135C50  38 05 15 8C */	addi r0, r5, lbl_803E158C@l
/* 80138CF4 00135C54  90 1E 00 00 */	stw r0, 0(r30)
/* 80138CF8 00135C58  4B FF E3 85 */	bl __dt__18CBSBiPedLocomotionFv
/* 80138CFC 00135C5C  7F E0 07 35 */	extsh. r0, r31
/* 80138D00 00135C60  40 81 00 0C */	ble lbl_80138D0C
/* 80138D04 00135C64  7F C3 F3 78 */	mr r3, r30
/* 80138D08 00135C68  48 1D CC 29 */	bl Free__7CMemoryFPCv
lbl_80138D0C:
/* 80138D0C 00135C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138D10 00135C70  7F C3 F3 78 */	mr r3, r30
/* 80138D14 00135C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138D18 00135C78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138D1C 00135C7C  7C 08 03 A6 */	mtlr r0
/* 80138D20 00135C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80138D24 00135C84  4E 80 00 20 */	blr

.global __dt__18CBSFlyerLocomotion
__dt__18CBSFlyerLocomotion:
/* 80138D28 00135C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80138D2C 00135C8C  7C 08 02 A6 */	mflr r0
/* 80138D30 00135C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80138D34 00135C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80138D38 00135C98  7C 9F 23 78 */	mr r31, r4
/* 80138D3C 00135C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80138D40 00135CA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80138D44 00135CA4  41 82 00 28 */	beq lbl_80138D6C
/* 80138D48 00135CA8  3C A0 80 3E */	lis r5, lbl_803E15DC@ha
/* 80138D4C 00135CAC  38 80 00 00 */	li r4, 0
/* 80138D50 00135CB0  38 05 15 DC */	addi r0, r5, lbl_803E15DC@l
/* 80138D54 00135CB4  90 1E 00 00 */	stw r0, 0(r30)
/* 80138D58 00135CB8  4B FF E3 25 */	bl __dt__18CBSBiPedLocomotionFv
/* 80138D5C 00135CBC  7F E0 07 35 */	extsh. r0, r31
/* 80138D60 00135CC0  40 81 00 0C */	ble lbl_80138D6C
/* 80138D64 00135CC4  7F C3 F3 78 */	mr r3, r30
/* 80138D68 00135CC8  48 1D CB C9 */	bl Free__7CMemoryFPCv
lbl_80138D6C:
/* 80138D6C 00135CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80138D70 00135CD0  7F C3 F3 78 */	mr r3, r30
/* 80138D74 00135CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80138D78 00135CD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80138D7C 00135CDC  7C 08 03 A6 */	mtlr r0
/* 80138D80 00135CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80138D84 00135CE4  4E 80 00 20 */	blr

.global IsBackPedal__18CBSFlyerLocomotionCFR15CBodyController
IsBackPedal__18CBSFlyerLocomotionCFR15CBodyController:
/* 80138D88 00135CE8  38 60 00 00 */	li r3, 0
/* 80138D8C 00135CEC  4E 80 00 20 */	blr

.global IsPitchable__18CBSFlyerLocomotionCFv
IsPitchable__18CBSFlyerLocomotionCFv:
/* 80138D90 00135CF0  88 63 03 CC */	lbz r3, 0x3cc(r3)
/* 80138D94 00135CF4  4E 80 00 20 */	blr

.global __sinit_CBSFlyerLocomotion_cpp
__sinit_CBSFlyerLocomotion_cpp:
/* 80138D98 00135CF8  C0 02 9A 54 */	lfs f0, lbl_805AB774@sda21(r2)
/* 80138D9C 00135CFC  D0 0D A3 C0 */	stfs f0, lbl_805A8F80@sda21(r13)
/* 80138DA0 00135D00  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AB750
lbl_805AB750:
	# ROM: 0x3F7FF0
	.float 0.5

.global lbl_805AB754
lbl_805AB754:
	# ROM: 0x3F7FF4
	.4byte 0

.global lbl_805AB758
lbl_805AB758:
	# ROM: 0x3F7FF8
	.float 1.0

.global lbl_805AB75C
lbl_805AB75C:
	# ROM: 0x3F7FFC
	.4byte 0x3FC90FDB

.global lbl_805AB760
lbl_805AB760:
	# ROM: 0x3F8000
	.float 1.1920929E-7

.global lbl_805AB764
lbl_805AB764:
	# ROM: 0x3F8004
	.float 0.01

.global lbl_805AB768
lbl_805AB768:
	# ROM: 0x3F8008
	.float 0.4

.global lbl_805AB76C
lbl_805AB76C:
	# ROM: 0x3F800C
	.float 1.0E-4

.global lbl_805AB770
lbl_805AB770:
	# ROM: 0x3F8010
	.float 0.2

.global lbl_805AB774
lbl_805AB774:
	# ROM: 0x3F8014
	.4byte 0x3E32B8C2


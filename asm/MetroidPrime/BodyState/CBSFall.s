.include "macros.inc"

.section .data
.balign 8

.global lbl_803E13E0
lbl_803E13E0:
	# ROM: 0x3DE3E0
	.4byte 0
	.4byte 0
	.4byte __dt__7CBSFallFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__7CBSFallFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__7CBSFallFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__7CBSFallFR15CBodyController

.section .text, "ax"

.global __dt__7CBSFallFv
__dt__7CBSFallFv:
/* 80135938 00132898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013593C 0013289C  7C 08 02 A6 */	mflr r0
/* 80135940 001328A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80135944 001328A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135948 001328A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8013594C 001328AC  41 82 00 30 */	beq lbl_8013597C
/* 80135950 001328B0  3C 60 80 3E */	lis r3, lbl_803E13E0@ha
/* 80135954 001328B4  38 03 13 E0 */	addi r0, r3, lbl_803E13E0@l
/* 80135958 001328B8  90 1F 00 00 */	stw r0, 0(r31)
/* 8013595C 001328BC  41 82 00 10 */	beq lbl_8013596C
/* 80135960 001328C0  3C 60 80 3E */	lis r3, __vt__10CBodyState@ha
/* 80135964 001328C4  38 03 13 18 */	addi r0, r3, __vt__10CBodyState@l
/* 80135968 001328C8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8013596C:
/* 8013596C 001328CC  7C 80 07 35 */	extsh. r0, r4
/* 80135970 001328D0  40 81 00 0C */	ble lbl_8013597C
/* 80135974 001328D4  7F E3 FB 78 */	mr r3, r31
/* 80135978 001328D8  48 1D FF B9 */	bl Free__7CMemoryFPCv
lbl_8013597C:
/* 8013597C 001328DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80135980 001328E0  7F E3 FB 78 */	mr r3, r31
/* 80135984 001328E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80135988 001328E8  7C 08 03 A6 */	mtlr r0
/* 8013598C 001328EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80135990 001328F0  4E 80 00 20 */	blr

.global GetBodyStateTransition__7CBSFallFfR15CBodyController
GetBodyStateTransition__7CBSFallFfR15CBodyController:
/* 80135994 001328F4  88 04 03 00 */	lbz r0, 0x300(r4)
/* 80135998 001328F8  38 60 FF FF */	li r3, -1
/* 8013599C 001328FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801359A0 00132900  4D 82 00 20 */	beqlr
/* 801359A4 00132904  38 60 00 02 */	li r3, 2
/* 801359A8 00132908  4E 80 00 20 */	blr

.global Shutdown__7CBSFallFR15CBodyController
Shutdown__7CBSFallFR15CBodyController:
/* 801359AC 0013290C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801359B0 00132910  7C 08 02 A6 */	mflr r0
/* 801359B4 00132914  90 01 00 14 */	stw r0, 0x14(r1)
/* 801359B8 00132918  7C 80 23 78 */	mr r0, r4
/* 801359BC 0013291C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 801359C0 00132920  7C 03 03 78 */	mr r3, r0
/* 801359C4 00132924  48 00 51 E1 */	bl SetFallState__15CBodyControllerFQ23pas10EFallState
/* 801359C8 00132928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801359CC 0013292C  7C 08 03 A6 */	mtlr r0
/* 801359D0 00132930  38 21 00 10 */	addi r1, r1, 0x10
/* 801359D4 00132934  4E 80 00 20 */	blr

.global UpdateBody__7CBSFallFfR15CBodyControllerR13CStateManager
UpdateBody__7CBSFallFfR15CBodyControllerR13CStateManager:
/* 801359D8 00132938  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801359DC 0013293C  7C 08 02 A6 */	mflr r0
/* 801359E0 00132940  90 01 00 44 */	stw r0, 0x44(r1)
/* 801359E4 00132944  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801359E8 00132948  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801359EC 0013294C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801359F0 00132950  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801359F4 00132954  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801359F8 00132958  FF E0 08 90 */	fmr f31, f1
/* 801359FC 0013295C  7C 7D 1B 78 */	mr r29, r3
/* 80135A00 00132960  7C 9E 23 78 */	mr r30, r4
/* 80135A04 00132964  4B FF FF 91 */	bl GetBodyStateTransition__7CBSFallFfR15CBodyController
/* 80135A08 00132968  7C 7F 1B 78 */	mr r31, r3
/* 80135A0C 0013296C  2C 1F FF FF */	cmpwi r31, -1
/* 80135A10 00132970  40 82 00 44 */	bne lbl_80135A54
/* 80135A14 00132974  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80135A18 00132978  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135A1C 0013297C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135A20 00132980  40 81 00 34 */	ble lbl_80135A54
/* 80135A24 00132984  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80135A28 00132988  38 61 00 0C */	addi r3, r1, 0xc
/* 80135A2C 0013298C  38 81 00 08 */	addi r4, r1, 8
/* 80135A30 00132990  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80135A34 00132994  D0 01 00 08 */	stfs f0, 8(r1)
/* 80135A38 00132998  48 1D B6 C1 */	bl ZRotation__11CQuaternionFRC9CRelAngle
/* 80135A3C 0013299C  7F C3 F3 78 */	mr r3, r30
/* 80135A40 001329A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80135A44 001329A4  48 00 4D C5 */	bl SetDeltaRotation__15CBodyControllerFRC11CQuaternion
/* 80135A48 001329A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80135A4C 001329AC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80135A50 001329B0  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80135A54:
/* 80135A54 001329B4  7F E3 FB 78 */	mr r3, r31
/* 80135A58 001329B8  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 80135A5C 001329BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80135A60 001329C0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80135A64 001329C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80135A68 001329C8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80135A6C 001329CC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80135A70 001329D0  7C 08 03 A6 */	mtlr r0
/* 80135A74 001329D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80135A78 001329D8  4E 80 00 20 */	blr

.global Start__7CBSFallFR15CBodyControllerR13CStateManager
Start__7CBSFallFR15CBodyControllerR13CStateManager:
/* 80135A7C 001329DC  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80135A80 001329E0  7C 08 02 A6 */	mflr r0
/* 80135A84 001329E4  90 01 01 64 */	stw r0, 0x164(r1)
/* 80135A88 001329E8  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80135A8C 001329EC  F3 E1 01 58 */	psq_st f31, 344(r1), 0, qr0
/* 80135A90 001329F0  BF 61 01 3C */	stmw r27, 0x13c(r1)
/* 80135A94 001329F4  7C 9E 23 78 */	mr r30, r4
/* 80135A98 001329F8  7C 7D 1B 78 */	mr r29, r3
/* 80135A9C 001329FC  7C BB 2B 78 */	mr r27, r5
/* 80135AA0 00132A00  38 80 00 03 */	li r4, 3
/* 80135AA4 00132A04  38 7E 00 04 */	addi r3, r30, 4
/* 80135AA8 00132A08  4B FF B9 A9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80135AAC 00132A0C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80135AB0 00132A10  7C 7F 1B 78 */	mr r31, r3
/* 80135AB4 00132A14  38 61 00 90 */	addi r3, r1, 0x90
/* 80135AB8 00132A18  38 84 00 34 */	addi r4, r4, 0x34
/* 80135ABC 00132A1C  38 BF 00 08 */	addi r5, r31, 8
/* 80135AC0 00132A20  48 1D CF 65 */	bl TransposeRotate__12CTransform4fCFRC9CVector3f
/* 80135AC4 00132A24  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 80135AC8 00132A28  C0 41 00 90 */	lfs f2, 0x90(r1)
/* 80135ACC 00132A2C  48 25 F1 A1 */	bl atan2
/* 80135AD0 00132A30  FC 80 08 18 */	frsp f4, f1
/* 80135AD4 00132A34  C0 02 99 C4 */	lfs f0, lbl_805AB6E4@sda21(r2)
/* 80135AD8 00132A38  3C 00 43 30 */	lis r0, 0x4330
/* 80135ADC 00132A3C  C8 62 99 E8 */	lfd f3, lbl_805AB708@sda21(r2)
/* 80135AE0 00132A40  90 01 01 18 */	stw r0, 0x118(r1)
/* 80135AE4 00132A44  EC 44 00 32 */	fmuls f2, f4, f0
/* 80135AE8 00132A48  C0 22 99 C8 */	lfs f1, lbl_805AB6E8@sda21(r2)
/* 80135AEC 00132A4C  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135AF0 00132A50  FC 40 10 1E */	fctiwz f2, f2
/* 80135AF4 00132A54  D8 41 01 10 */	stfd f2, 0x110(r1)
/* 80135AF8 00132A58  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80135AFC 00132A5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80135B00 00132A60  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80135B04 00132A64  C8 41 01 18 */	lfd f2, 0x118(r1)
/* 80135B08 00132A68  EC 42 18 28 */	fsubs f2, f2, f3
/* 80135B0C 00132A6C  EF E2 20 7C */	fnmsubs f31, f2, f1, f4
/* 80135B10 00132A70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80135B14 00132A74  40 80 00 08 */	bge lbl_80135B1C
/* 80135B18 00132A78  EF FF 08 2A */	fadds f31, f31, f1
lbl_80135B1C:
/* 80135B1C 00132A7C  7F C3 F3 78 */	mr r3, r30
/* 80135B20 00132A80  48 00 49 35 */	bl GetPASDatabase__15CBodyControllerCFv
/* 80135B24 00132A84  83 FF 00 14 */	lwz r31, 0x14(r31)
/* 80135B28 00132A88  7C 7C 1B 78 */	mr r28, r3
/* 80135B2C 00132A8C  38 61 00 38 */	addi r3, r1, 0x38
/* 80135B30 00132A90  48 1A D5 4D */	bl NoParameter__12CPASAnimParmFv
/* 80135B34 00132A94  38 61 00 40 */	addi r3, r1, 0x40
/* 80135B38 00132A98  48 1A D5 45 */	bl NoParameter__12CPASAnimParmFv
/* 80135B3C 00132A9C  38 61 00 48 */	addi r3, r1, 0x48
/* 80135B40 00132AA0  48 1A D5 3D */	bl NoParameter__12CPASAnimParmFv
/* 80135B44 00132AA4  38 61 00 50 */	addi r3, r1, 0x50
/* 80135B48 00132AA8  48 1A D5 35 */	bl NoParameter__12CPASAnimParmFv
/* 80135B4C 00132AAC  38 61 00 58 */	addi r3, r1, 0x58
/* 80135B50 00132AB0  48 1A D5 2D */	bl NoParameter__12CPASAnimParmFv
/* 80135B54 00132AB4  38 61 00 60 */	addi r3, r1, 0x60
/* 80135B58 00132AB8  48 1A D5 25 */	bl NoParameter__12CPASAnimParmFv
/* 80135B5C 00132ABC  7F E4 FB 78 */	mr r4, r31
/* 80135B60 00132AC0  38 61 00 68 */	addi r3, r1, 0x68
/* 80135B64 00132AC4  48 1A D4 21 */	bl FromEnum__12CPASAnimParmFi
/* 80135B68 00132AC8  C0 02 99 CC */	lfs f0, lbl_805AB6EC@sda21(r2)
/* 80135B6C 00132ACC  38 61 00 70 */	addi r3, r1, 0x70
/* 80135B70 00132AD0  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80135B74 00132AD4  48 1A D4 75 */	bl FromReal32__12CPASAnimParmFf
/* 80135B78 00132AD8  38 61 00 40 */	addi r3, r1, 0x40
/* 80135B7C 00132ADC  38 01 00 38 */	addi r0, r1, 0x38
/* 80135B80 00132AE0  90 61 00 08 */	stw r3, 8(r1)
/* 80135B84 00132AE4  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80135B88 00132AE8  38 A1 00 70 */	addi r5, r1, 0x70
/* 80135B8C 00132AEC  38 C1 00 68 */	addi r6, r1, 0x68
/* 80135B90 00132AF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80135B94 00132AF4  38 E1 00 60 */	addi r7, r1, 0x60
/* 80135B98 00132AF8  39 01 00 58 */	addi r8, r1, 0x58
/* 80135B9C 00132AFC  39 21 00 50 */	addi r9, r1, 0x50
/* 80135BA0 00132B00  39 41 00 48 */	addi r10, r1, 0x48
/* 80135BA4 00132B04  38 80 00 00 */	li r4, 0
/* 80135BA8 00132B08  4B F4 77 1D */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80135BAC 00132B0C  80 DB 09 00 */	lwz r6, 0x900(r27)
/* 80135BB0 00132B10  7F 84 E3 78 */	mr r4, r28
/* 80135BB4 00132B14  38 61 00 30 */	addi r3, r1, 0x30
/* 80135BB8 00132B18  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 80135BBC 00132B1C  38 E0 FF FF */	li r7, -1
/* 80135BC0 00132B20  48 1A F4 A1 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 80135BC4 00132B24  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 80135BC8 00132B28  38 00 00 00 */	li r0, 0
/* 80135BCC 00132B2C  C0 02 99 D0 */	lfs f0, lbl_805AB6F0@sda21(r2)
/* 80135BD0 00132B30  38 A0 FF FF */	li r5, -1
/* 80135BD4 00132B34  38 E0 00 01 */	li r7, 1
/* 80135BD8 00132B38  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80135BDC 00132B3C  7F C3 F3 78 */	mr r3, r30
/* 80135BE0 00132B40  38 81 00 9C */	addi r4, r1, 0x9c
/* 80135BE4 00132B44  90 A1 00 A0 */	stw r5, 0xa0(r1)
/* 80135BE8 00132B48  38 A0 00 00 */	li r5, 0
/* 80135BEC 00132B4C  38 C0 00 00 */	li r6, 0
/* 80135BF0 00132B50  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80135BF4 00132B54  98 E1 00 A8 */	stb r7, 0xa8(r1)
/* 80135BF8 00132B58  90 01 00 AC */	stw r0, 0xac(r1)
/* 80135BFC 00132B5C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80135C00 00132B60  98 01 00 B4 */	stb r0, 0xb4(r1)
/* 80135C04 00132B64  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80135C08 00132B68  90 01 00 BC */	stw r0, 0xbc(r1)
/* 80135C0C 00132B6C  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80135C10 00132B70  48 00 4D 0D */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80135C14 00132B74  7F 83 E3 78 */	mr r3, r28
/* 80135C18 00132B78  38 80 00 00 */	li r4, 0
/* 80135C1C 00132B7C  48 1A F2 A9 */	bl GetAnimState__12CPASDatabaseCFi
/* 80135C20 00132B80  7C 7C 1B 78 */	mr r28, r3
/* 80135C24 00132B84  7F E5 FB 78 */	mr r5, r31
/* 80135C28 00132B88  38 61 00 28 */	addi r3, r1, 0x28
/* 80135C2C 00132B8C  38 C0 00 02 */	li r6, 2
/* 80135C30 00132B90  7F 84 E3 78 */	mr r4, r28
/* 80135C34 00132B94  48 1A E3 C1 */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 80135C38 00132B98  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80135C3C 00132B9C  38 61 00 88 */	addi r3, r1, 0x88
/* 80135C40 00132BA0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80135C44 00132BA4  90 81 00 88 */	stw r4, 0x88(r1)
/* 80135C48 00132BA8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80135C4C 00132BAC  48 1A D3 19 */	bl GetBoolValue__12CPASAnimParmCFv
/* 80135C50 00132BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135C54 00132BB4  40 82 01 50 */	bne lbl_80135DA4
/* 80135C58 00132BB8  7F 84 E3 78 */	mr r4, r28
/* 80135C5C 00132BBC  7F E5 FB 78 */	mr r5, r31
/* 80135C60 00132BC0  38 61 00 20 */	addi r3, r1, 0x20
/* 80135C64 00132BC4  38 C0 00 00 */	li r6, 0
/* 80135C68 00132BC8  48 1A E3 8D */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 80135C6C 00132BCC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80135C70 00132BD0  38 61 00 80 */	addi r3, r1, 0x80
/* 80135C74 00132BD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80135C78 00132BD8  90 81 00 80 */	stw r4, 0x80(r1)
/* 80135C7C 00132BDC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80135C80 00132BE0  48 1A D2 ED */	bl GetReal32Value__12CPASAnimParmCFv
/* 80135C84 00132BE4  C0 02 99 D4 */	lfs f0, lbl_805AB6F4@sda21(r2)
/* 80135C88 00132BE8  3C 00 43 30 */	lis r0, 0x4330
/* 80135C8C 00132BEC  C0 42 99 C4 */	lfs f2, lbl_805AB6E4@sda21(r2)
/* 80135C90 00132BF0  EC A0 00 72 */	fmuls f5, f0, f1
/* 80135C94 00132BF4  90 01 01 10 */	stw r0, 0x110(r1)
/* 80135C98 00132BF8  C8 62 99 E8 */	lfd f3, lbl_805AB708@sda21(r2)
/* 80135C9C 00132BFC  C0 22 99 C8 */	lfs f1, lbl_805AB6E8@sda21(r2)
/* 80135CA0 00132C00  EC 9F 28 28 */	fsubs f4, f31, f5
/* 80135CA4 00132C04  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135CA8 00132C08  EC 44 00 B2 */	fmuls f2, f4, f2
/* 80135CAC 00132C0C  FC 40 10 1E */	fctiwz f2, f2
/* 80135CB0 00132C10  D8 41 01 18 */	stfd f2, 0x118(r1)
/* 80135CB4 00132C14  80 01 01 1C */	lwz r0, 0x11c(r1)
/* 80135CB8 00132C18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80135CBC 00132C1C  90 01 01 14 */	stw r0, 0x114(r1)
/* 80135CC0 00132C20  C8 41 01 10 */	lfd f2, 0x110(r1)
/* 80135CC4 00132C24  EC 42 18 28 */	fsubs f2, f2, f3
/* 80135CC8 00132C28  EC C2 20 7C */	fnmsubs f6, f2, f1, f4
/* 80135CCC 00132C2C  FC 80 30 90 */	fmr f4, f6
/* 80135CD0 00132C30  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80135CD4 00132C34  40 80 00 08 */	bge lbl_80135CDC
/* 80135CD8 00132C38  EC 86 08 2A */	fadds f4, f6, f1
lbl_80135CDC:
/* 80135CDC 00132C3C  EC A5 F8 28 */	fsubs f5, f5, f31
/* 80135CE0 00132C40  C0 02 99 C4 */	lfs f0, lbl_805AB6E4@sda21(r2)
/* 80135CE4 00132C44  3C 00 43 30 */	lis r0, 0x4330
/* 80135CE8 00132C48  C8 62 99 E8 */	lfd f3, lbl_805AB708@sda21(r2)
/* 80135CEC 00132C4C  90 01 01 28 */	stw r0, 0x128(r1)
/* 80135CF0 00132C50  EC 45 00 32 */	fmuls f2, f5, f0
/* 80135CF4 00132C54  C0 22 99 C8 */	lfs f1, lbl_805AB6E8@sda21(r2)
/* 80135CF8 00132C58  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135CFC 00132C5C  FC 40 10 1E */	fctiwz f2, f2
/* 80135D00 00132C60  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80135D04 00132C64  D8 41 01 20 */	stfd f2, 0x120(r1)
/* 80135D08 00132C68  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80135D0C 00132C6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80135D10 00132C70  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80135D14 00132C74  C8 41 01 28 */	lfd f2, 0x128(r1)
/* 80135D18 00132C78  EC 42 18 28 */	fsubs f2, f2, f3
/* 80135D1C 00132C7C  EC 42 28 7C */	fnmsubs f2, f2, f1, f5
/* 80135D20 00132C80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80135D24 00132C84  40 80 00 08 */	bge lbl_80135D2C
/* 80135D28 00132C88  EC 42 08 2A */	fadds f2, f2, f1
lbl_80135D2C:
/* 80135D2C 00132C8C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 80135D30 00132C90  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80135D34 00132C94  40 80 00 0C */	bge lbl_80135D40
/* 80135D38 00132C98  38 61 00 10 */	addi r3, r1, 0x10
/* 80135D3C 00132C9C  48 00 00 08 */	b lbl_80135D44
lbl_80135D40:
/* 80135D40 00132CA0  38 61 00 14 */	addi r3, r1, 0x14
lbl_80135D44:
/* 80135D44 00132CA4  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135D48 00132CA8  C0 23 00 00 */	lfs f1, 0(r3)
/* 80135D4C 00132CAC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80135D50 00132CB0  40 80 00 0C */	bge lbl_80135D5C
/* 80135D54 00132CB4  C0 02 99 C8 */	lfs f0, lbl_805AB6E8@sda21(r2)
/* 80135D58 00132CB8  EC C6 00 2A */	fadds f6, f6, f0
lbl_80135D5C:
/* 80135D5C 00132CBC  C0 02 99 D8 */	lfs f0, lbl_805AB6F8@sda21(r2)
/* 80135D60 00132CC0  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 80135D64 00132CC4  40 81 00 0C */	ble lbl_80135D70
/* 80135D68 00132CC8  FF E0 08 50 */	fneg f31, f1
/* 80135D6C 00132CCC  48 00 00 08 */	b lbl_80135D74
lbl_80135D70:
/* 80135D70 00132CD0  FF E0 08 90 */	fmr f31, f1
lbl_80135D74:
/* 80135D74 00132CD4  7F C3 F3 78 */	mr r3, r30
/* 80135D78 00132CD8  48 00 4B 41 */	bl GetAnimTimeRemaining__15CBodyControllerCFv
/* 80135D7C 00132CDC  C0 42 99 DC */	lfs f2, lbl_805AB6FC@sda21(r2)
/* 80135D80 00132CE0  C0 02 99 E0 */	lfs f0, lbl_805AB700@sda21(r2)
/* 80135D84 00132CE4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80135D88 00132CE8  D0 3D 00 08 */	stfs f1, 8(r29)
/* 80135D8C 00132CEC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80135D90 00132CF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135D94 00132CF4  40 81 00 08 */	ble lbl_80135D9C
/* 80135D98 00132CF8  EF FF 08 24 */	fdivs f31, f31, f1
lbl_80135D9C:
/* 80135D9C 00132CFC  D3 FD 00 04 */	stfs f31, 4(r29)
/* 80135DA0 00132D00  48 00 00 10 */	b lbl_80135DB0
lbl_80135DA4:
/* 80135DA4 00132D04  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135DA8 00132D08  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80135DAC 00132D0C  D0 1D 00 04 */	stfs f0, 4(r29)
lbl_80135DB0:
/* 80135DB0 00132D10  7F 84 E3 78 */	mr r4, r28
/* 80135DB4 00132D14  7F E5 FB 78 */	mr r5, r31
/* 80135DB8 00132D18  38 61 00 18 */	addi r3, r1, 0x18
/* 80135DBC 00132D1C  38 C0 00 03 */	li r6, 3
/* 80135DC0 00132D20  48 1A E2 35 */	bl GetAnimParmData__13CPASAnimStateCFiUi
/* 80135DC4 00132D24  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80135DC8 00132D28  38 61 00 78 */	addi r3, r1, 0x78
/* 80135DCC 00132D2C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80135DD0 00132D30  90 81 00 78 */	stw r4, 0x78(r1)
/* 80135DD4 00132D34  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80135DD8 00132D38  48 1A D1 85 */	bl GetEnumValue__12CPASAnimParmCFv
/* 80135DDC 00132D3C  34 A1 00 C8 */	addic. r5, r1, 0xc8
/* 80135DE0 00132D40  90 7D 00 0C */	stw r3, 0xc(r29)
/* 80135DE4 00132D44  41 82 00 58 */	beq lbl_80135E3C
/* 80135DE8 00132D48  80 C5 00 00 */	lwz r6, 0(r5)
/* 80135DEC 00132D4C  38 60 00 00 */	li r3, 0
/* 80135DF0 00132D50  2C 06 00 00 */	cmpwi r6, 0
/* 80135DF4 00132D54  40 81 00 40 */	ble lbl_80135E34
/* 80135DF8 00132D58  2C 06 00 08 */	cmpwi r6, 8
/* 80135DFC 00132D5C  38 86 FF F8 */	addi r4, r6, -8
/* 80135E00 00132D60  40 81 00 20 */	ble lbl_80135E20
/* 80135E04 00132D64  38 04 00 07 */	addi r0, r4, 7
/* 80135E08 00132D68  54 00 E8 FE */	srwi r0, r0, 3
/* 80135E0C 00132D6C  7C 09 03 A6 */	mtctr r0
/* 80135E10 00132D70  2C 04 00 00 */	cmpwi r4, 0
/* 80135E14 00132D74  40 81 00 0C */	ble lbl_80135E20
lbl_80135E18:
/* 80135E18 00132D78  38 63 00 08 */	addi r3, r3, 8
/* 80135E1C 00132D7C  42 00 FF FC */	bdnz lbl_80135E18
lbl_80135E20:
/* 80135E20 00132D80  7C 03 30 50 */	subf r0, r3, r6
/* 80135E24 00132D84  7C 09 03 A6 */	mtctr r0
/* 80135E28 00132D88  7C 03 30 00 */	cmpw r3, r6
/* 80135E2C 00132D8C  40 80 00 08 */	bge lbl_80135E34
lbl_80135E30:
/* 80135E30 00132D90  42 00 00 00 */	bdnz lbl_80135E30
lbl_80135E34:
/* 80135E34 00132D94  38 00 00 00 */	li r0, 0
/* 80135E38 00132D98  90 05 00 00 */	stw r0, 0(r5)
lbl_80135E3C:
/* 80135E3C 00132D9C  E3 E1 01 58 */	psq_l f31, 344(r1), 0, qr0
/* 80135E40 00132DA0  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80135E44 00132DA4  BB 61 01 3C */	lmw r27, 0x13c(r1)
/* 80135E48 00132DA8  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80135E4C 00132DAC  7C 08 03 A6 */	mtlr r0
/* 80135E50 00132DB0  38 21 01 60 */	addi r1, r1, 0x160
/* 80135E54 00132DB4  4E 80 00 20 */	blr

.global __ct__7CBSFallFv
__ct__7CBSFallFv:
/* 80135E58 00132DB8  3C A0 80 3E */	lis r5, __vt__10CBodyState@ha
/* 80135E5C 00132DBC  3C 80 80 3E */	lis r4, lbl_803E13E0@ha
/* 80135E60 00132DC0  38 05 13 18 */	addi r0, r5, __vt__10CBodyState@l
/* 80135E64 00132DC4  C0 02 99 C0 */	lfs f0, lbl_805AB6E0@sda21(r2)
/* 80135E68 00132DC8  90 03 00 00 */	stw r0, 0(r3)
/* 80135E6C 00132DCC  38 84 13 E0 */	addi r4, r4, lbl_803E13E0@l
/* 80135E70 00132DD0  38 00 FF FF */	li r0, -1
/* 80135E74 00132DD4  90 83 00 00 */	stw r4, 0(r3)
/* 80135E78 00132DD8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80135E7C 00132DDC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80135E80 00132DE0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80135E84 00132DE4  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB6E0
lbl_805AB6E0:
	# ROM: 0x3F7F80
	.4byte 0

.global lbl_805AB6E4
lbl_805AB6E4:
	# ROM: 0x3F7F84
	.4byte 0x3E22F983

.global lbl_805AB6E8
lbl_805AB6E8:
	# ROM: 0x3F7F88
	.float 6.2831855

.global lbl_805AB6EC
lbl_805AB6EC:
	# ROM: 0x3F7F8C
	.4byte 0x42652EE0

.global lbl_805AB6F0
lbl_805AB6F0:
	# ROM: 0x3F7F90
	.float 1.0

.global lbl_805AB6F4
lbl_805AB6F4:
	# ROM: 0x3F7F94
	.float 0.017453292

.global lbl_805AB6F8
lbl_805AB6F8:
	# ROM: 0x3F7F98
	.4byte 0x40490FDB

.global lbl_805AB6FC
lbl_805AB6FC:
	# ROM: 0x3F7F9C
	.float 0.15

.global lbl_805AB700
lbl_805AB700:
	# ROM: 0x3F7FA0
	.float 1.1920929E-7
	.4byte 0

.global lbl_805AB708
lbl_805AB708:
	# ROM: 0x3F7FA8
	.double 4.503601774854144E15

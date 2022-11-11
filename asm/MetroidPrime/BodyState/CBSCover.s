.include "macros.inc"

.section .data
.balign 8

.global __vt__8CBSCover
__vt__8CBSCover:
	# ROM: 0x3E0E48
	.4byte 0
	.4byte 0
	.4byte __dt__8CBSCoverFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__8CBSCoverCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__8CBSCoverCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__8CBSCoverCFv
	.4byte Start__8CBSCoverFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__8CBSCoverFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__8CBSCoverFR15CBodyController

.section .text, "ax"

.global __dt__8CBSCoverFv
__dt__8CBSCoverFv:
/* 80175CD8 00172C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80175CDC 00172C3C  7C 08 02 A6 */	mflr r0
/* 80175CE0 00172C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80175CE4 00172C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80175CE8 00172C48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80175CEC 00172C4C  41 82 00 30 */	beq lbl_80175D1C
/* 80175CF0 00172C50  3C 60 80 3E */	lis r3, __vt__8CBSCover@ha
/* 80175CF4 00172C54  38 03 3E 48 */	addi r0, r3, __vt__8CBSCover@l
/* 80175CF8 00172C58  90 1F 00 00 */	stw r0, 0(r31)
/* 80175CFC 00172C5C  41 82 00 10 */	beq lbl_80175D0C
/* 80175D00 00172C60  3C 60 80 3E */	lis r3, __vt__10CBodyState@ha
/* 80175D04 00172C64  38 03 13 18 */	addi r0, r3, __vt__10CBodyState@l
/* 80175D08 00172C68  90 1F 00 00 */	stw r0, 0(r31)
lbl_80175D0C:
/* 80175D0C 00172C6C  7C 80 07 35 */	extsh. r0, r4
/* 80175D10 00172C70  40 81 00 0C */	ble lbl_80175D1C
/* 80175D14 00172C74  7F E3 FB 78 */	mr r3, r31
/* 80175D18 00172C78  48 19 FC 19 */	bl Free__7CMemoryFPCv
lbl_80175D1C:
/* 80175D1C 00172C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80175D20 00172C80  7F E3 FB 78 */	mr r3, r31
/* 80175D24 00172C84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80175D28 00172C88  7C 08 03 A6 */	mtlr r0
/* 80175D2C 00172C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80175D30 00172C90  4E 80 00 20 */	blr

.global IsMoving__8CBSCoverCFv
IsMoving__8CBSCoverCFv:
/* 80175D34 00172C94  38 60 00 01 */	li r3, 1
/* 80175D38 00172C98  4E 80 00 20 */	blr

.global ApplyHeadTracking__8CBSCoverCFv
ApplyHeadTracking__8CBSCoverCFv:
/* 80175D3C 00172C9C  38 60 00 00 */	li r3, 0
/* 80175D40 00172CA0  4E 80 00 20 */	blr

.global GetBodyStateTransition__8CBSCoverFfR15CBodyController
GetBodyStateTransition__8CBSCoverFfR15CBodyController:
/* 80175D44 00172CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80175D48 00172CA8  7C 08 02 A6 */	mflr r0
/* 80175D4C 00172CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80175D50 00172CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80175D54 00172CB4  3B E4 00 04 */	addi r31, r4, 4
/* 80175D58 00172CB8  38 80 00 0F */	li r4, 0xf
/* 80175D5C 00172CBC  7F E3 FB 78 */	mr r3, r31
/* 80175D60 00172CC0  4B FB B6 F1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175D64 00172CC4  28 03 00 00 */	cmplwi r3, 0
/* 80175D68 00172CC8  41 82 00 0C */	beq lbl_80175D74
/* 80175D6C 00172CCC  38 60 00 0E */	li r3, 0xe
/* 80175D70 00172CD0  48 00 00 74 */	b lbl_80175DE4
lbl_80175D74:
/* 80175D74 00172CD4  7F E3 FB 78 */	mr r3, r31
/* 80175D78 00172CD8  38 80 00 03 */	li r4, 3
/* 80175D7C 00172CDC  4B FB B6 D5 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175D80 00172CE0  28 03 00 00 */	cmplwi r3, 0
/* 80175D84 00172CE4  41 82 00 0C */	beq lbl_80175D90
/* 80175D88 00172CE8  38 60 00 00 */	li r3, 0
/* 80175D8C 00172CEC  48 00 00 58 */	b lbl_80175DE4
lbl_80175D90:
/* 80175D90 00172CF0  7F E3 FB 78 */	mr r3, r31
/* 80175D94 00172CF4  38 80 00 09 */	li r4, 9
/* 80175D98 00172CF8  4B FB B6 B9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175D9C 00172CFC  28 03 00 00 */	cmplwi r3, 0
/* 80175DA0 00172D00  41 82 00 0C */	beq lbl_80175DAC
/* 80175DA4 00172D04  38 60 00 0A */	li r3, 0xa
/* 80175DA8 00172D08  48 00 00 3C */	b lbl_80175DE4
lbl_80175DAC:
/* 80175DAC 00172D0C  7F E3 FB 78 */	mr r3, r31
/* 80175DB0 00172D10  38 80 00 04 */	li r4, 4
/* 80175DB4 00172D14  4B FB B6 9D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175DB8 00172D18  28 03 00 00 */	cmplwi r3, 0
/* 80175DBC 00172D1C  41 82 00 0C */	beq lbl_80175DC8
/* 80175DC0 00172D20  38 60 00 06 */	li r3, 6
/* 80175DC4 00172D24  48 00 00 20 */	b lbl_80175DE4
lbl_80175DC8:
/* 80175DC8 00172D28  7F E3 FB 78 */	mr r3, r31
/* 80175DCC 00172D2C  38 80 00 16 */	li r4, 0x16
/* 80175DD0 00172D30  4B FB B6 81 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175DD4 00172D34  28 03 00 00 */	cmplwi r3, 0
/* 80175DD8 00172D38  38 60 FF FF */	li r3, -1
/* 80175DDC 00172D3C  41 82 00 08 */	beq lbl_80175DE4
/* 80175DE0 00172D40  38 60 00 05 */	li r3, 5
lbl_80175DE4:
/* 80175DE4 00172D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80175DE8 00172D48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80175DEC 00172D4C  7C 08 03 A6 */	mtlr r0
/* 80175DF0 00172D50  38 21 00 10 */	addi r1, r1, 0x10
/* 80175DF4 00172D54  4E 80 00 20 */	blr

.global Shutdown__8CBSCoverFR15CBodyController
Shutdown__8CBSCoverFR15CBodyController:
/* 80175DF8 00172D58  4E 80 00 20 */	blr

.global UpdateBody__8CBSCoverFfR15CBodyControllerR13CStateManager
UpdateBody__8CBSCoverFfR15CBodyControllerR13CStateManager:
/* 80175DFC 00172D5C  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80175E00 00172D60  7C 08 02 A6 */	mflr r0
/* 80175E04 00172D64  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80175E08 00172D68  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 80175E0C 00172D6C  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, qr0
/* 80175E10 00172D70  BF 61 01 AC */	stmw r27, 0x1ac(r1)
/* 80175E14 00172D74  FF E0 08 90 */	fmr f31, f1
/* 80175E18 00172D78  7C 7C 1B 78 */	mr r28, r3
/* 80175E1C 00172D7C  7C 9D 23 78 */	mr r29, r4
/* 80175E20 00172D80  7C BE 2B 78 */	mr r30, r5
/* 80175E24 00172D84  4B FF FF 21 */	bl GetBodyStateTransition__8CBSCoverFfR15CBodyController
/* 80175E28 00172D88  7C 7F 1B 78 */	mr r31, r3
/* 80175E2C 00172D8C  2C 1F FF FF */	cmpwi r31, -1
/* 80175E30 00172D90  40 82 03 E0 */	bne lbl_80176210
/* 80175E34 00172D94  80 1C 00 04 */	lwz r0, 4(r28)
/* 80175E38 00172D98  2C 00 00 02 */	cmpwi r0, 2
/* 80175E3C 00172D9C  41 82 00 24 */	beq lbl_80175E60
/* 80175E40 00172DA0  40 80 00 14 */	bge lbl_80175E54
/* 80175E44 00172DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80175E48 00172DA8  41 82 00 18 */	beq lbl_80175E60
/* 80175E4C 00172DAC  40 80 01 34 */	bge lbl_80175F80
/* 80175E50 00172DB0  48 00 03 C0 */	b lbl_80176210
lbl_80175E54:
/* 80175E54 00172DB4  2C 00 00 04 */	cmpwi r0, 4
/* 80175E58 00172DB8  40 80 03 B8 */	bge lbl_80176210
/* 80175E5C 00172DBC  48 00 03 9C */	b lbl_801761F8
lbl_80175E60:
/* 80175E60 00172DC0  88 1D 03 00 */	lbz r0, 0x300(r29)
/* 80175E64 00172DC4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80175E68 00172DC8  41 82 00 F8 */	beq lbl_80175F60
/* 80175E6C 00172DCC  38 00 00 01 */	li r0, 1
/* 80175E70 00172DD0  38 61 00 90 */	addi r3, r1, 0x90
/* 80175E74 00172DD4  90 1C 00 04 */	stw r0, 4(r28)
/* 80175E78 00172DD8  83 7C 00 08 */	lwz r27, 8(r28)
/* 80175E7C 00172DDC  48 16 D2 01 */	bl NoParameter__12CPASAnimParmFv
/* 80175E80 00172DE0  38 61 00 98 */	addi r3, r1, 0x98
/* 80175E84 00172DE4  48 16 D1 F9 */	bl NoParameter__12CPASAnimParmFv
/* 80175E88 00172DE8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80175E8C 00172DEC  48 16 D1 F1 */	bl NoParameter__12CPASAnimParmFv
/* 80175E90 00172DF0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80175E94 00172DF4  48 16 D1 E9 */	bl NoParameter__12CPASAnimParmFv
/* 80175E98 00172DF8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80175E9C 00172DFC  48 16 D1 E1 */	bl NoParameter__12CPASAnimParmFv
/* 80175EA0 00172E00  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80175EA4 00172E04  48 16 D1 D9 */	bl NoParameter__12CPASAnimParmFv
/* 80175EA8 00172E08  7F 64 DB 78 */	mr r4, r27
/* 80175EAC 00172E0C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80175EB0 00172E10  48 16 D0 D5 */	bl FromEnum__12CPASAnimParmFi
/* 80175EB4 00172E14  80 9C 00 04 */	lwz r4, 4(r28)
/* 80175EB8 00172E18  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80175EBC 00172E1C  48 16 D0 C9 */	bl FromEnum__12CPASAnimParmFi
/* 80175EC0 00172E20  38 61 00 98 */	addi r3, r1, 0x98
/* 80175EC4 00172E24  38 01 00 90 */	addi r0, r1, 0x90
/* 80175EC8 00172E28  90 61 00 08 */	stw r3, 8(r1)
/* 80175ECC 00172E2C  38 61 01 60 */	addi r3, r1, 0x160
/* 80175ED0 00172E30  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80175ED4 00172E34  38 C1 00 C0 */	addi r6, r1, 0xc0
/* 80175ED8 00172E38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80175EDC 00172E3C  38 E1 00 B8 */	addi r7, r1, 0xb8
/* 80175EE0 00172E40  39 01 00 B0 */	addi r8, r1, 0xb0
/* 80175EE4 00172E44  39 21 00 A8 */	addi r9, r1, 0xa8
/* 80175EE8 00172E48  39 41 00 A0 */	addi r10, r1, 0xa0
/* 80175EEC 00172E4C  38 80 00 13 */	li r4, 0x13
/* 80175EF0 00172E50  4B F0 73 D5 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80175EF4 00172E54  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 80175EF8 00172E58  7F A3 EB 78 */	mr r3, r29
/* 80175EFC 00172E5C  38 81 01 60 */	addi r4, r1, 0x160
/* 80175F00 00172E60  4B FC 43 FD */	bl LoopBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 80175F04 00172E64  34 A1 01 64 */	addic. r5, r1, 0x164
/* 80175F08 00172E68  41 82 00 58 */	beq lbl_80175F60
/* 80175F0C 00172E6C  80 C5 00 00 */	lwz r6, 0(r5)
/* 80175F10 00172E70  38 60 00 00 */	li r3, 0
/* 80175F14 00172E74  2C 06 00 00 */	cmpwi r6, 0
/* 80175F18 00172E78  40 81 00 40 */	ble lbl_80175F58
/* 80175F1C 00172E7C  2C 06 00 08 */	cmpwi r6, 8
/* 80175F20 00172E80  38 86 FF F8 */	addi r4, r6, -8
/* 80175F24 00172E84  40 81 00 20 */	ble lbl_80175F44
/* 80175F28 00172E88  38 04 00 07 */	addi r0, r4, 7
/* 80175F2C 00172E8C  54 00 E8 FE */	srwi r0, r0, 3
/* 80175F30 00172E90  7C 09 03 A6 */	mtctr r0
/* 80175F34 00172E94  2C 04 00 00 */	cmpwi r4, 0
/* 80175F38 00172E98  40 81 00 0C */	ble lbl_80175F44
lbl_80175F3C:
/* 80175F3C 00172E9C  38 63 00 08 */	addi r3, r3, 8
/* 80175F40 00172EA0  42 00 FF FC */	bdnz lbl_80175F3C
lbl_80175F44:
/* 80175F44 00172EA4  7C 03 30 50 */	subf r0, r3, r6
/* 80175F48 00172EA8  7C 09 03 A6 */	mtctr r0
/* 80175F4C 00172EAC  7C 03 30 00 */	cmpw r3, r6
/* 80175F50 00172EB0  40 80 00 08 */	bge lbl_80175F58
lbl_80175F54:
/* 80175F54 00172EB4  42 00 00 00 */	bdnz lbl_80175F54
lbl_80175F58:
/* 80175F58 00172EB8  38 00 00 00 */	li r0, 0
/* 80175F5C 00172EBC  90 05 00 00 */	stw r0, 0(r5)
lbl_80175F60:
/* 80175F60 00172EC0  38 7D 00 04 */	addi r3, r29, 4
/* 80175F64 00172EC4  38 80 00 0A */	li r4, 0xa
/* 80175F68 00172EC8  4B FB B4 E9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175F6C 00172ECC  28 03 00 00 */	cmplwi r3, 0
/* 80175F70 00172ED0  41 82 02 A0 */	beq lbl_80176210
/* 80175F74 00172ED4  38 00 00 01 */	li r0, 1
/* 80175F78 00172ED8  98 1C 00 0C */	stb r0, 0xc(r28)
/* 80175F7C 00172EDC  48 00 02 94 */	b lbl_80176210
lbl_80175F80:
/* 80175F80 00172EE0  3B 7D 00 04 */	addi r27, r29, 4
/* 80175F84 00172EE4  C0 22 A1 A0 */	lfs f1, lbl_805ABEC0@sda21(r2)
/* 80175F88 00172EE8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80175F8C 00172EEC  38 00 00 00 */	li r0, 0
/* 80175F90 00172EF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80175F94 00172EF4  40 82 00 1C */	bne lbl_80175FB0
/* 80175F98 00172EF8  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 80175F9C 00172EFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80175FA0 00172F00  40 82 00 10 */	bne lbl_80175FB0
/* 80175FA4 00172F04  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 80175FA8 00172F08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80175FAC 00172F0C  41 82 00 08 */	beq lbl_80175FB4
lbl_80175FB0:
/* 80175FB0 00172F10  38 00 00 01 */	li r0, 1
lbl_80175FB4:
/* 80175FB4 00172F14  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80175FB8 00172F18  41 82 00 14 */	beq lbl_80175FCC
/* 80175FBC 00172F1C  FC 20 F8 90 */	fmr f1, f31
/* 80175FC0 00172F20  7F A3 EB 78 */	mr r3, r29
/* 80175FC4 00172F24  38 9B 00 18 */	addi r4, r27, 0x18
/* 80175FC8 00172F28  4B FC 46 DD */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80175FCC:
/* 80175FCC 00172F2C  7F 63 DB 78 */	mr r3, r27
/* 80175FD0 00172F30  38 80 00 0A */	li r4, 0xa
/* 80175FD4 00172F34  4B FB B4 7D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80175FD8 00172F38  28 03 00 00 */	cmplwi r3, 0
/* 80175FDC 00172F3C  40 82 00 10 */	bne lbl_80175FEC
/* 80175FE0 00172F40  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 80175FE4 00172F44  28 00 00 00 */	cmplwi r0, 0
/* 80175FE8 00172F48  41 82 01 04 */	beq lbl_801760EC
lbl_80175FEC:
/* 80175FEC 00172F4C  38 60 00 00 */	li r3, 0
/* 80175FF0 00172F50  38 00 00 03 */	li r0, 3
/* 80175FF4 00172F54  98 7C 00 0C */	stb r3, 0xc(r28)
/* 80175FF8 00172F58  38 61 00 50 */	addi r3, r1, 0x50
/* 80175FFC 00172F5C  90 1C 00 04 */	stw r0, 4(r28)
/* 80176000 00172F60  83 7C 00 08 */	lwz r27, 8(r28)
/* 80176004 00172F64  48 16 D0 79 */	bl NoParameter__12CPASAnimParmFv
/* 80176008 00172F68  38 61 00 58 */	addi r3, r1, 0x58
/* 8017600C 00172F6C  48 16 D0 71 */	bl NoParameter__12CPASAnimParmFv
/* 80176010 00172F70  38 61 00 60 */	addi r3, r1, 0x60
/* 80176014 00172F74  48 16 D0 69 */	bl NoParameter__12CPASAnimParmFv
/* 80176018 00172F78  38 61 00 68 */	addi r3, r1, 0x68
/* 8017601C 00172F7C  48 16 D0 61 */	bl NoParameter__12CPASAnimParmFv
/* 80176020 00172F80  38 61 00 70 */	addi r3, r1, 0x70
/* 80176024 00172F84  48 16 D0 59 */	bl NoParameter__12CPASAnimParmFv
/* 80176028 00172F88  38 61 00 78 */	addi r3, r1, 0x78
/* 8017602C 00172F8C  48 16 D0 51 */	bl NoParameter__12CPASAnimParmFv
lbl_80176030:
/* 80176030 00172F90  7F 64 DB 78 */	mr r4, r27
/* 80176034 00172F94  38 61 00 80 */	addi r3, r1, 0x80
/* 80176038 00172F98  48 16 CF 4D */	bl FromEnum__12CPASAnimParmFi
/* 8017603C 00172F9C  80 9C 00 04 */	lwz r4, 4(r28)
/* 80176040 00172FA0  38 61 00 88 */	addi r3, r1, 0x88
/* 80176044 00172FA4  48 16 CF 41 */	bl FromEnum__12CPASAnimParmFi
/* 80176048 00172FA8  38 61 00 58 */	addi r3, r1, 0x58
/* 8017604C 00172FAC  38 01 00 50 */	addi r0, r1, 0x50
/* 80176050 00172FB0  90 61 00 08 */	stw r3, 8(r1)
/* 80176054 00172FB4  38 61 01 18 */	addi r3, r1, 0x118
/* 80176058 00172FB8  38 A1 00 88 */	addi r5, r1, 0x88
/* 8017605C 00172FBC  38 C1 00 80 */	addi r6, r1, 0x80
/* 80176060 00172FC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80176064 00172FC4  38 E1 00 78 */	addi r7, r1, 0x78
/* 80176068 00172FC8  39 01 00 70 */	addi r8, r1, 0x70
/* 8017606C 00172FCC  39 21 00 68 */	addi r9, r1, 0x68
/* 80176070 00172FD0  39 41 00 60 */	addi r10, r1, 0x60
/* 80176074 00172FD4  38 80 00 13 */	li r4, 0x13
/* 80176078 00172FD8  4B F0 72 4D */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 8017607C 00172FDC  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 80176080 00172FE0  7F A3 EB 78 */	mr r3, r29
/* 80176084 00172FE4  38 81 01 18 */	addi r4, r1, 0x118
/* 80176088 00172FE8  4B FC 43 21 */	bl PlayBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 8017608C 00172FEC  34 A1 01 1C */	addic. r5, r1, 0x11c
/* 80176090 00172FF0  41 82 01 80 */	beq lbl_80176210
/* 80176094 00172FF4  80 C5 00 00 */	lwz r6, 0(r5)
/* 80176098 00172FF8  38 60 00 00 */	li r3, 0
/* 8017609C 00172FFC  2C 06 00 00 */	cmpwi r6, 0
/* 801760A0 00173000  40 81 00 40 */	ble lbl_801760E0
/* 801760A4 00173004  2C 06 00 08 */	cmpwi r6, 8
/* 801760A8 00173008  38 86 FF F8 */	addi r4, r6, -8
/* 801760AC 0017300C  40 81 00 20 */	ble lbl_801760CC
/* 801760B0 00173010  38 04 00 07 */	addi r0, r4, 7
/* 801760B4 00173014  54 00 E8 FE */	srwi r0, r0, 3
/* 801760B8 00173018  7C 09 03 A6 */	mtctr r0
/* 801760BC 0017301C  2C 04 00 00 */	cmpwi r4, 0
/* 801760C0 00173020  40 81 00 0C */	ble lbl_801760CC
lbl_801760C4:
/* 801760C4 00173024  38 63 00 08 */	addi r3, r3, 8
/* 801760C8 00173028  42 00 FF FC */	bdnz lbl_801760C4
lbl_801760CC:
/* 801760CC 0017302C  7C 03 30 50 */	subf r0, r3, r6
/* 801760D0 00173030  7C 09 03 A6 */	mtctr r0
/* 801760D4 00173034  7C 03 30 00 */	cmpw r3, r6
/* 801760D8 00173038  40 80 00 08 */	bge lbl_801760E0
lbl_801760DC:
/* 801760DC 0017303C  42 00 00 00 */	bdnz lbl_801760DC
lbl_801760E0:
/* 801760E0 00173040  38 00 00 00 */	li r0, 0
/* 801760E4 00173044  90 05 00 00 */	stw r0, 0(r5)
/* 801760E8 00173048  48 00 01 28 */	b lbl_80176210
lbl_801760EC:
/* 801760EC 0017304C  7F 63 DB 78 */	mr r3, r27
/* 801760F0 00173050  38 80 00 0B */	li r4, 0xb
/* 801760F4 00173054  4B FB B3 5D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801760F8 00173058  28 03 00 00 */	cmplwi r3, 0
/* 801760FC 0017305C  41 82 01 14 */	beq lbl_80176210
/* 80176100 00173060  38 00 00 02 */	li r0, 2
/* 80176104 00173064  38 61 00 10 */	addi r3, r1, 0x10
/* 80176108 00173068  90 1C 00 04 */	stw r0, 4(r28)
/* 8017610C 0017306C  83 7C 00 08 */	lwz r27, 8(r28)
/* 80176110 00173070  48 16 CF 6D */	bl NoParameter__12CPASAnimParmFv
/* 80176114 00173074  38 61 00 18 */	addi r3, r1, 0x18
/* 80176118 00173078  48 16 CF 65 */	bl NoParameter__12CPASAnimParmFv
/* 8017611C 0017307C  38 61 00 20 */	addi r3, r1, 0x20
/* 80176120 00173080  48 16 CF 5D */	bl NoParameter__12CPASAnimParmFv
/* 80176124 00173084  38 61 00 28 */	addi r3, r1, 0x28
/* 80176128 00173088  48 16 CF 55 */	bl NoParameter__12CPASAnimParmFv
/* 8017612C 0017308C  38 61 00 30 */	addi r3, r1, 0x30
/* 80176130 00173090  48 16 CF 4D */	bl NoParameter__12CPASAnimParmFv
/* 80176134 00173094  38 61 00 38 */	addi r3, r1, 0x38
/* 80176138 00173098  48 16 CF 45 */	bl NoParameter__12CPASAnimParmFv
/* 8017613C 0017309C  7F 64 DB 78 */	mr r4, r27
/* 80176140 001730A0  38 61 00 40 */	addi r3, r1, 0x40
/* 80176144 001730A4  48 16 CE 41 */	bl FromEnum__12CPASAnimParmFi
/* 80176148 001730A8  80 9C 00 04 */	lwz r4, 4(r28)
/* 8017614C 001730AC  38 61 00 48 */	addi r3, r1, 0x48
/* 80176150 001730B0  48 16 CE 35 */	bl FromEnum__12CPASAnimParmFi
/* 80176154 001730B4  38 61 00 18 */	addi r3, r1, 0x18
/* 80176158 001730B8  38 01 00 10 */	addi r0, r1, 0x10
/* 8017615C 001730BC  90 61 00 08 */	stw r3, 8(r1)
/* 80176160 001730C0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80176164 001730C4  38 A1 00 48 */	addi r5, r1, 0x48
/* 80176168 001730C8  38 C1 00 40 */	addi r6, r1, 0x40
/* 8017616C 001730CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80176170 001730D0  38 E1 00 38 */	addi r7, r1, 0x38
/* 80176174 001730D4  39 01 00 30 */	addi r8, r1, 0x30
/* 80176178 001730D8  39 21 00 28 */	addi r9, r1, 0x28
/* 8017617C 001730DC  39 41 00 20 */	addi r10, r1, 0x20
/* 80176180 001730E0  38 80 00 13 */	li r4, 0x13
/* 80176184 001730E4  4B F0 71 41 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80176188 001730E8  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 8017618C 001730EC  7F A3 EB 78 */	mr r3, r29
/* 80176190 001730F0  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80176194 001730F4  4B FC 42 15 */	bl PlayBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 80176198 001730F8  34 A1 00 D4 */	addic. r5, r1, 0xd4
/* 8017619C 001730FC  41 82 00 74 */	beq lbl_80176210
/* 801761A0 00173100  80 C5 00 00 */	lwz r6, 0(r5)
/* 801761A4 00173104  38 60 00 00 */	li r3, 0
/* 801761A8 00173108  2C 06 00 00 */	cmpwi r6, 0
/* 801761AC 0017310C  40 81 00 40 */	ble lbl_801761EC
/* 801761B0 00173110  2C 06 00 08 */	cmpwi r6, 8
/* 801761B4 00173114  38 86 FF F8 */	addi r4, r6, -8
/* 801761B8 00173118  40 81 00 20 */	ble lbl_801761D8
/* 801761BC 0017311C  38 04 00 07 */	addi r0, r4, 7
/* 801761C0 00173120  54 00 E8 FE */	srwi r0, r0, 3
/* 801761C4 00173124  7C 09 03 A6 */	mtctr r0
/* 801761C8 00173128  2C 04 00 00 */	cmpwi r4, 0
/* 801761CC 0017312C  40 81 00 0C */	ble lbl_801761D8
lbl_801761D0:
/* 801761D0 00173130  38 63 00 08 */	addi r3, r3, 8
/* 801761D4 00173134  42 00 FF FC */	bdnz lbl_801761D0
lbl_801761D8:
/* 801761D8 00173138  7C 03 30 50 */	subf r0, r3, r6
/* 801761DC 0017313C  7C 09 03 A6 */	mtctr r0
/* 801761E0 00173140  7C 03 30 00 */	cmpw r3, r6
/* 801761E4 00173144  40 80 00 08 */	bge lbl_801761EC
lbl_801761E8:
/* 801761E8 00173148  42 00 00 00 */	bdnz lbl_801761E8
lbl_801761EC:
/* 801761EC 0017314C  38 00 00 00 */	li r0, 0
/* 801761F0 00173150  90 05 00 00 */	stw r0, 0(r5)
/* 801761F4 00173154  48 00 00 1C */	b lbl_80176210
lbl_801761F8:
/* 801761F8 00173158  88 1D 03 00 */	lbz r0, 0x300(r29)
/* 801761FC 0017315C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80176200 00173160  41 82 00 10 */	beq lbl_80176210
/* 80176204 00173164  38 00 FF FF */	li r0, -1
/* 80176208 00173168  3B E0 00 05 */	li r31, 5
/* 8017620C 0017316C  90 1C 00 04 */	stw r0, 4(r28)
lbl_80176210:
/* 80176210 00173170  7F E3 FB 78 */	mr r3, r31
/* 80176214 00173174  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, qr0
/* 80176218 00173178  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 8017621C 0017317C  BB 61 01 AC */	lmw r27, 0x1ac(r1)
/* 80176220 00173180  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80176224 00173184  7C 08 03 A6 */	mtlr r0
/* 80176228 00173188  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8017622C 0017318C  4E 80 00 20 */	blr

.global Start__8CBSCoverFR15CBodyControllerR13CStateManager
Start__8CBSCoverFR15CBodyControllerR13CStateManager:
/* 80176230 00173190  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80176234 00173194  7C 08 02 A6 */	mflr r0
/* 80176238 00173198  90 01 01 34 */	stw r0, 0x134(r1)
/* 8017623C 0017319C  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 80176240 001731A0  7C 9F 23 78 */	mr r31, r4
/* 80176244 001731A4  7C 7E 1B 78 */	mr r30, r3
/* 80176248 001731A8  7C BB 2B 78 */	mr r27, r5
/* 8017624C 001731AC  38 80 00 14 */	li r4, 0x14
/* 80176250 001731B0  38 7F 00 04 */	addi r3, r31, 4
/* 80176254 001731B4  4B FB B1 FD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80176258 001731B8  7C 7D 1B 78 */	mr r29, r3
/* 8017625C 001731BC  38 00 00 00 */	li r0, 0
/* 80176260 001731C0  80 83 00 08 */	lwz r4, 8(r3)
/* 80176264 001731C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80176268 001731C8  90 9E 00 08 */	stw r4, 8(r30)
/* 8017626C 001731CC  90 1E 00 04 */	stw r0, 4(r30)
/* 80176270 001731D0  83 9E 00 08 */	lwz r28, 8(r30)
/* 80176274 001731D4  48 16 CE 09 */	bl NoParameter__12CPASAnimParmFv
/* 80176278 001731D8  38 61 00 24 */	addi r3, r1, 0x24
/* 8017627C 001731DC  48 16 CE 01 */	bl NoParameter__12CPASAnimParmFv
/* 80176280 001731E0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80176284 001731E4  48 16 CD F9 */	bl NoParameter__12CPASAnimParmFv
/* 80176288 001731E8  38 61 00 34 */	addi r3, r1, 0x34
/* 8017628C 001731EC  48 16 CD F1 */	bl NoParameter__12CPASAnimParmFv
/* 80176290 001731F0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80176294 001731F4  48 16 CD E9 */	bl NoParameter__12CPASAnimParmFv
/* 80176298 001731F8  38 61 00 44 */	addi r3, r1, 0x44
/* 8017629C 001731FC  48 16 CD E1 */	bl NoParameter__12CPASAnimParmFv
/* 801762A0 00173200  7F 84 E3 78 */	mr r4, r28
/* 801762A4 00173204  38 61 00 4C */	addi r3, r1, 0x4c
/* 801762A8 00173208  48 16 CC DD */	bl FromEnum__12CPASAnimParmFi
/* 801762AC 0017320C  80 9E 00 04 */	lwz r4, 4(r30)
/* 801762B0 00173210  38 61 00 54 */	addi r3, r1, 0x54
/* 801762B4 00173214  48 16 CC D1 */	bl FromEnum__12CPASAnimParmFi
/* 801762B8 00173218  38 61 00 24 */	addi r3, r1, 0x24
/* 801762BC 0017321C  38 01 00 1C */	addi r0, r1, 0x1c
/* 801762C0 00173220  90 61 00 08 */	stw r3, 8(r1)
/* 801762C4 00173224  38 61 00 C8 */	addi r3, r1, 0xc8
/* 801762C8 00173228  38 A1 00 54 */	addi r5, r1, 0x54
/* 801762CC 0017322C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 801762D0 00173230  90 01 00 0C */	stw r0, 0xc(r1)
/* 801762D4 00173234  38 E1 00 44 */	addi r7, r1, 0x44
/* 801762D8 00173238  39 01 00 3C */	addi r8, r1, 0x3c
/* 801762DC 0017323C  39 21 00 34 */	addi r9, r1, 0x34
/* 801762E0 00173240  39 41 00 2C */	addi r10, r1, 0x2c
/* 801762E4 00173244  38 80 00 13 */	li r4, 0x13
/* 801762E8 00173248  4B F0 6F DD */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801762EC 0017324C  7F E3 FB 78 */	mr r3, r31
/* 801762F0 00173250  4B FC 41 65 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801762F4 00173254  80 DB 09 00 */	lwz r6, 0x900(r27)
/* 801762F8 00173258  7C 64 1B 78 */	mr r4, r3
/* 801762FC 0017325C  38 61 00 14 */	addi r3, r1, 0x14
/* 80176300 00173260  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80176304 00173264  38 E0 FF FF */	li r7, -1
/* 80176308 00173268  48 16 ED 59 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 8017630C 0017326C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80176310 00173270  3C 60 80 5A */	lis r3, sForwardVector__9CVector3f@ha
/* 80176314 00173274  38 E3 67 24 */	addi r7, r3, sForwardVector__9CVector3f@l
/* 80176318 00173278  C0 62 A1 A4 */	lfs f3, lbl_805ABEC4@sda21(r2)
/* 8017631C 0017327C  81 04 00 64 */	lwz r8, 0x64(r4)
/* 80176320 00173280  38 61 00 74 */	addi r3, r1, 0x74
/* 80176324 00173284  C0 47 00 00 */	lfs f2, 0(r7)
/* 80176328 00173288  38 81 00 68 */	addi r4, r1, 0x68
/* 8017632C 0017328C  C0 88 00 04 */	lfs f4, 4(r8)
/* 80176330 00173290  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80176334 00173294  C0 A8 00 08 */	lfs f5, 8(r8)
/* 80176338 00173298  38 C1 00 10 */	addi r6, r1, 0x10
/* 8017633C 0017329C  C0 08 00 00 */	lfs f0, 0(r8)
/* 80176340 001732A0  C0 27 00 04 */	lfs f1, 4(r7)
/* 80176344 001732A4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80176348 001732A8  C0 07 00 08 */	lfs f0, 8(r7)
/* 8017634C 001732AC  D0 81 00 98 */	stfs f4, 0x98(r1)
/* 80176350 001732B0  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80176354 001732B4  D0 A1 00 9C */	stfs f5, 0x9c(r1)
/* 80176358 001732B8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8017635C 001732BC  C0 7D 00 18 */	lfs f3, 0x18(r29)
/* 80176360 001732C0  D0 61 00 5C */	stfs f3, 0x5c(r1)
/* 80176364 001732C4  C0 7D 00 1C */	lfs f3, 0x1c(r29)
/* 80176368 001732C8  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8017636C 001732CC  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 80176370 001732D0  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80176374 001732D4  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80176378 001732D8  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8017637C 001732DC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80176380 001732E0  48 19 B3 15 */	bl LookAt__11CQuaternionFRC13CUnitVector3fRC13CUnitVector3fRC9CRelAngle
/* 80176384 001732E4  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80176388 001732E8  39 1D 00 0C */	addi r8, r29, 0xc
/* 8017638C 001732EC  C0 61 00 78 */	lfs f3, 0x78(r1)
/* 80176390 001732F0  38 E1 00 84 */	addi r7, r1, 0x84
/* 80176394 001732F4  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 80176398 001732F8  38 01 00 94 */	addi r0, r1, 0x94
/* 8017639C 001732FC  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 801763A0 00173300  39 60 FF FF */	li r11, -1
/* 801763A4 00173304  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 801763A8 00173308  39 40 00 01 */	li r10, 1
/* 801763AC 0017330C  C0 02 A1 A8 */	lfs f0, lbl_805ABEC8@sda21(r2)
/* 801763B0 00173310  39 20 00 00 */	li r9, 0
/* 801763B4 00173314  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 801763B8 00173318  7F E3 FB 78 */	mr r3, r31
/* 801763BC 0017331C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 801763C0 00173320  38 A0 00 00 */	li r5, 0
/* 801763C4 00173324  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 801763C8 00173328  38 C0 00 00 */	li r6, 0
/* 801763CC 0017332C  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 801763D0 00173330  81 9F 00 00 */	lwz r12, 0(r31)
/* 801763D4 00173334  39 8C 00 34 */	addi r12, r12, 0x34
/* 801763D8 00173338  93 81 00 A0 */	stw r28, 0xa0(r1)
/* 801763DC 0017333C  91 61 00 A4 */	stw r11, 0xa4(r1)
/* 801763E0 00173340  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 801763E4 00173344  99 41 00 AC */	stb r10, 0xac(r1)
/* 801763E8 00173348  91 21 00 B0 */	stw r9, 0xb0(r1)
/* 801763EC 0017334C  91 01 00 B4 */	stw r8, 0xb4(r1)
/* 801763F0 00173350  99 21 00 B8 */	stb r9, 0xb8(r1)
/* 801763F4 00173354  90 E1 00 BC */	stw r7, 0xbc(r1)
/* 801763F8 00173358  91 81 00 C0 */	stw r12, 0xc0(r1)
/* 801763FC 0017335C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80176400 00173360  4B FC 45 1D */	bl SetCurrentAnimation__15CBodyControllerFRC18CAnimPlaybackParmsbb
/* 80176404 00173364  38 00 00 00 */	li r0, 0
/* 80176408 00173368  38 7F 00 04 */	addi r3, r31, 4
/* 8017640C 0017336C  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80176410 00173370  38 80 00 0A */	li r4, 0xa
/* 80176414 00173374  4B FB B0 3D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80176418 00173378  28 03 00 00 */	cmplwi r3, 0
/* 8017641C 0017337C  41 82 00 0C */	beq lbl_80176428
/* 80176420 00173380  38 00 00 01 */	li r0, 1
/* 80176424 00173384  98 1E 00 0C */	stb r0, 0xc(r30)
lbl_80176428:
/* 80176428 00173388  34 A1 00 CC */	addic. r5, r1, 0xcc
/* 8017642C 0017338C  41 82 00 58 */	beq lbl_80176484
/* 80176430 00173390  80 C5 00 00 */	lwz r6, 0(r5)
/* 80176434 00173394  38 60 00 00 */	li r3, 0
/* 80176438 00173398  2C 06 00 00 */	cmpwi r6, 0
/* 8017643C 0017339C  40 81 00 40 */	ble lbl_8017647C
/* 80176440 001733A0  2C 06 00 08 */	cmpwi r6, 8
/* 80176444 001733A4  38 86 FF F8 */	addi r4, r6, -8
/* 80176448 001733A8  40 81 00 20 */	ble lbl_80176468
/* 8017644C 001733AC  38 04 00 07 */	addi r0, r4, 7
/* 80176450 001733B0  54 00 E8 FE */	srwi r0, r0, 3
/* 80176454 001733B4  7C 09 03 A6 */	mtctr r0
/* 80176458 001733B8  2C 04 00 00 */	cmpwi r4, 0
/* 8017645C 001733BC  40 81 00 0C */	ble lbl_80176468
lbl_80176460:
/* 80176460 001733C0  38 63 00 08 */	addi r3, r3, 8
/* 80176464 001733C4  42 00 FF FC */	bdnz lbl_80176460
lbl_80176468:
/* 80176468 001733C8  7C 03 30 50 */	subf r0, r3, r6
/* 8017646C 001733CC  7C 09 03 A6 */	mtctr r0
/* 80176470 001733D0  7C 03 30 00 */	cmpw r3, r6
/* 80176474 001733D4  40 80 00 08 */	bge lbl_8017647C
lbl_80176478:
/* 80176478 001733D8  42 00 00 00 */	bdnz lbl_80176478
lbl_8017647C:
/* 8017647C 001733DC  38 00 00 00 */	li r0, 0
/* 80176480 001733E0  90 05 00 00 */	stw r0, 0(r5)
lbl_80176484:
/* 80176484 001733E4  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 80176488 001733E8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8017648C 001733EC  7C 08 03 A6 */	mtlr r0
/* 80176490 001733F0  38 21 01 30 */	addi r1, r1, 0x130
/* 80176494 001733F4  4E 80 00 20 */	blr

.global __ct__8CBSCoverFv
__ct__8CBSCoverFv:
/* 80176498 001733F8  3C C0 80 3E */	lis r6, __vt__10CBodyState@ha
/* 8017649C 001733FC  3C A0 80 3E */	lis r5, __vt__8CBSCover@ha
/* 801764A0 00173400  38 06 13 18 */	addi r0, r6, __vt__10CBodyState@l
/* 801764A4 00173404  38 80 FF FF */	li r4, -1
/* 801764A8 00173408  90 03 00 00 */	stw r0, 0(r3)
/* 801764AC 0017340C  38 A5 3E 48 */	addi r5, r5, __vt__8CBSCover@l
/* 801764B0 00173410  38 00 00 00 */	li r0, 0
/* 801764B4 00173414  90 A3 00 00 */	stw r5, 0(r3)
/* 801764B8 00173418  90 83 00 04 */	stw r4, 4(r3)
/* 801764BC 0017341C  90 83 00 08 */	stw r4, 8(r3)
/* 801764C0 00173420  98 03 00 0C */	stb r0, 0xc(r3)
/* 801764C4 00173424  4E 80 00 20 */	blr

.global CanShoot__8CBSCoverCFv
CanShoot__8CBSCoverCFv:
/* 801764C8 00173428  80 03 00 04 */	lwz r0, 4(r3)
/* 801764CC 0017342C  20 00 00 02 */	subfic r0, r0, 2
/* 801764D0 00173430  7C 00 00 34 */	cntlzw r0, r0
/* 801764D4 00173434  54 03 D9 7E */	srwi r3, r0, 5
/* 801764D8 00173438  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ABEC0
lbl_805ABEC0:
	# ROM: 0x3F8760
	.4byte 0

.global lbl_805ABEC4
lbl_805ABEC4:
	# ROM: 0x3F8764
	.float 6.2831855

.global lbl_805ABEC8
lbl_805ABEC8:
	# ROM: 0x3F8768
	.float 1.0
	.4byte 0

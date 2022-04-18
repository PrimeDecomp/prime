.include "macros.inc"

.section .data

.global lbl_803ED9C0
lbl_803ED9C0:
	# ROM: 0x3EA9C0
	.4byte 0
	.4byte 0
	.4byte __dt__10IAllocatorFv
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

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__10IAllocatorFv
__dt__10IAllocatorFv:
/* 80315C98 00312BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80315C9C 00312BFC  7C 08 02 A6 */	mflr r0
/* 80315CA0 00312C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80315CA4 00312C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80315CA8 00312C08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315CAC 00312C0C  41 82 00 1C */	beq lbl_80315CC8
/* 80315CB0 00312C10  3C A0 80 3F */	lis r5, lbl_803ED9C0@ha
/* 80315CB4 00312C14  7C 80 07 35 */	extsh. r0, r4
/* 80315CB8 00312C18  38 05 D9 C0 */	addi r0, r5, lbl_803ED9C0@l
/* 80315CBC 00312C1C  90 1F 00 00 */	stw r0, 0(r31)
/* 80315CC0 00312C20  40 81 00 08 */	ble lbl_80315CC8
/* 80315CC4 00312C24  4B FF FC 6D */	bl Free__7CMemoryFPCv
lbl_80315CC8:
/* 80315CC8 00312C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315CCC 00312C2C  7F E3 FB 78 */	mr r3, r31
/* 80315CD0 00312C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315CD4 00312C34  7C 08 03 A6 */	mtlr r0
/* 80315CD8 00312C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80315CDC 00312C3C  4E 80 00 20 */	blr 

.global __ct__Q210IAllocator8SMetricsFUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUi
__ct__Q210IAllocator8SMetricsFUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUiUi:
/* 80315CE0 00312C40  90 83 00 00 */	stw r4, 0(r3)
/* 80315CE4 00312C44  80 01 00 08 */	lwz r0, 8(r1)
/* 80315CE8 00312C48  90 A3 00 04 */	stw r5, 4(r3)
/* 80315CEC 00312C4C  81 81 00 0C */	lwz r12, 0xc(r1)
/* 80315CF0 00312C50  90 C3 00 08 */	stw r6, 8(r3)
/* 80315CF4 00312C54  81 61 00 10 */	lwz r11, 0x10(r1)
/* 80315CF8 00312C58  90 E3 00 0C */	stw r7, 0xc(r3)
/* 80315CFC 00312C5C  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 80315D00 00312C60  91 03 00 10 */	stw r8, 0x10(r3)
/* 80315D04 00312C64  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80315D08 00312C68  91 23 00 14 */	stw r9, 0x14(r3)
/* 80315D0C 00312C6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80315D10 00312C70  91 43 00 18 */	stw r10, 0x18(r3)
/* 80315D14 00312C74  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80315D18 00312C78  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80315D1C 00312C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80315D20 00312C80  91 83 00 20 */	stw r12, 0x20(r3)
/* 80315D24 00312C84  81 21 00 28 */	lwz r9, 0x28(r1)
/* 80315D28 00312C88  91 63 00 24 */	stw r11, 0x24(r3)
/* 80315D2C 00312C8C  81 01 00 2C */	lwz r8, 0x2c(r1)
/* 80315D30 00312C90  90 E3 00 28 */	stw r7, 0x28(r3)
/* 80315D34 00312C94  80 E1 00 30 */	lwz r7, 0x30(r1)
/* 80315D38 00312C98  90 C3 00 2C */	stw r6, 0x2c(r3)
/* 80315D3C 00312C9C  80 C1 00 34 */	lwz r6, 0x34(r1)
/* 80315D40 00312CA0  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80315D44 00312CA4  80 A1 00 38 */	lwz r5, 0x38(r1)
/* 80315D48 00312CA8  90 83 00 34 */	stw r4, 0x34(r3)
/* 80315D4C 00312CAC  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80315D50 00312CB0  90 03 00 38 */	stw r0, 0x38(r3)
/* 80315D54 00312CB4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80315D58 00312CB8  91 23 00 3C */	stw r9, 0x3c(r3)
/* 80315D5C 00312CBC  91 03 00 40 */	stw r8, 0x40(r3)
/* 80315D60 00312CC0  90 E3 00 44 */	stw r7, 0x44(r3)
/* 80315D64 00312CC4  90 C3 00 48 */	stw r6, 0x48(r3)
/* 80315D68 00312CC8  90 A3 00 4C */	stw r5, 0x4c(r3)
/* 80315D6C 00312CCC  90 83 00 50 */	stw r4, 0x50(r3)
/* 80315D70 00312CD0  90 03 00 54 */	stw r0, 0x54(r3)
/* 80315D74 00312CD4  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global SubtractFromTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
SubtractFromTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem:
/* 802F7BA8 002F4B08  80 0D A7 58 */	lwz r0, lbl_805A9318@sda21(r13)
/* 802F7BAC 002F4B0C  7C 03 00 50 */	subf r0, r3, r0
/* 802F7BB0 002F4B10  90 0D A7 58 */	stw r0, lbl_805A9318@sda21(r13)
/* 802F7BB4 002F4B14  4E 80 00 20 */	blr 

.global AddToTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
AddToTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem:
/* 802F7BB8 002F4B18  80 0D A7 58 */	lwz r0, lbl_805A9318@sda21(r13)
/* 802F7BBC 002F4B1C  7C 00 1A 14 */	add r0, r0, r3
/* 802F7BC0 002F4B20  90 0D A7 58 */	stw r0, lbl_805A9318@sda21(r13)
/* 802F7BC4 002F4B24  4E 80 00 20 */	blr 

.global sub_802f7bc8
sub_802f7bc8:
/* 802F7BC8 002F4B28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7BCC 002F4B2C  7C 08 02 A6 */	mflr r0
/* 802F7BD0 002F4B30  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7BD4 002F4B34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7BD8 002F4B38  7C 9F 23 78 */	mr r31, r4
/* 802F7BDC 002F4B3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F7BE0 002F4B40  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F7BE4 002F4B44  41 82 00 64 */	beq lbl_802F7C48
/* 802F7BE8 002F4B48  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F7BEC 002F4B4C  38 80 00 02 */	li r4, 2
/* 802F7BF0 002F4B50  4B FF FF B9 */	bl SubtractFromTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
/* 802F7BF4 002F4B54  28 1E 00 00 */	cmplwi r30, 0
/* 802F7BF8 002F4B58  41 82 00 40 */	beq lbl_802F7C38
/* 802F7BFC 002F4B5C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F7C00 002F4B60  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F7C04 002F4B64  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F7C08 002F4B68  7C 83 02 14 */	add r4, r3, r0
/* 802F7C0C 002F4B6C  7C 03 20 50 */	subf r0, r3, r4
/* 802F7C10 002F4B70  90 81 00 14 */	stw r4, 0x14(r1)
/* 802F7C14 002F4B74  90 81 00 10 */	stw r4, 0x10(r1)
/* 802F7C18 002F4B78  90 61 00 08 */	stw r3, 8(r1)
/* 802F7C1C 002F4B7C  7C 09 03 A6 */	mtctr r0
/* 802F7C20 002F4B80  7C 03 20 40 */	cmplw r3, r4
/* 802F7C24 002F4B84  41 82 00 08 */	beq lbl_802F7C2C
lbl_802F7C28:
/* 802F7C28 002F4B88  42 00 00 00 */	bdnz lbl_802F7C28
lbl_802F7C2C:
/* 802F7C2C 002F4B8C  28 03 00 00 */	cmplwi r3, 0
/* 802F7C30 002F4B90  41 82 00 08 */	beq lbl_802F7C38
/* 802F7C34 002F4B94  48 01 DC FD */	bl Free__7CMemoryFPCv
lbl_802F7C38:
/* 802F7C38 002F4B98  7F E0 07 35 */	extsh. r0, r31
/* 802F7C3C 002F4B9C  40 81 00 0C */	ble lbl_802F7C48
/* 802F7C40 002F4BA0  7F C3 F3 78 */	mr r3, r30
/* 802F7C44 002F4BA4  48 01 DC ED */	bl Free__7CMemoryFPCv
lbl_802F7C48:
/* 802F7C48 002F4BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7C4C 002F4BAC  7F C3 F3 78 */	mr r3, r30
/* 802F7C50 002F4BB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7C54 002F4BB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F7C58 002F4BB8  7C 08 03 A6 */	mtlr r0
/* 802F7C5C 002F4BBC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7C60 002F4BC0  4E 80 00 20 */	blr

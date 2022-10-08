.include "macros.inc"

.section .data
.balign 8

.global __vt__29CArchMsgParmInt32Int32VoidPtr
__vt__29CArchMsgParmInt32Int32VoidPtr:
	# ROM: 0x3D6E60
	.4byte 0
	.4byte 0
	.4byte __dt__29CArchMsgParmInt32Int32VoidPtrFv
	.4byte 0

.section .text, "ax"

.global __dt__29CArchMsgParmInt32Int32VoidPtrFv
__dt__29CArchMsgParmInt32Int32VoidPtrFv:
/* 80051644 0004E5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051648 0004E5A8  7C 08 02 A6 */	mflr r0
/* 8005164C 0004E5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051650 0004E5B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80051654 0004E5B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80051658 0004E5B8  41 82 00 30 */	beq lbl_80051688
/* 8005165C 0004E5BC  3C 60 80 3E */	lis r3, __vt__29CArchMsgParmInt32Int32VoidPtr@ha
/* 80051660 0004E5C0  38 03 9E 60 */	addi r0, r3, __vt__29CArchMsgParmInt32Int32VoidPtr@l
/* 80051664 0004E5C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80051668 0004E5C8  41 82 00 10 */	beq lbl_80051678
/* 8005166C 0004E5CC  3C 60 80 3E */	lis r3, __vt__24IArchitectureMessageParm@ha
/* 80051670 0004E5D0  38 03 8E 9C */	addi r0, r3, __vt__24IArchitectureMessageParm@l
/* 80051674 0004E5D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80051678:
/* 80051678 0004E5D8  7C 80 07 35 */	extsh. r0, r4
/* 8005167C 0004E5DC  40 81 00 0C */	ble lbl_80051688
/* 80051680 0004E5E0  7F E3 FB 78 */	mr r3, r31
/* 80051684 0004E5E4  48 2C 42 AD */	bl Free__7CMemoryFPCv
lbl_80051688:
/* 80051688 0004E5E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005168C 0004E5EC  7F E3 FB 78 */	mr r3, r31
/* 80051690 0004E5F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051694 0004E5F4  7C 08 03 A6 */	mtlr r0
/* 80051698 0004E5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8005169C 0004E5FC  4E 80 00 20 */	blr

.global __ct__29CArchMsgParmInt32Int32VoidPtrFiiPCv
__ct__29CArchMsgParmInt32Int32VoidPtrFiiPCv:
/* 800516A0 0004E600  3D 00 80 3E */	lis r8, __vt__24IArchitectureMessageParm@ha
/* 800516A4 0004E604  3C E0 80 3E */	lis r7, __vt__29CArchMsgParmInt32Int32VoidPtr@ha
/* 800516A8 0004E608  39 08 8E 9C */	addi r8, r8, __vt__24IArchitectureMessageParm@l
/* 800516AC 0004E60C  91 03 00 00 */	stw r8, 0(r3)
/* 800516B0 0004E610  38 07 9E 60 */	addi r0, r7, __vt__29CArchMsgParmInt32Int32VoidPtr@l
/* 800516B4 0004E614  90 03 00 00 */	stw r0, 0(r3)
/* 800516B8 0004E618  90 83 00 04 */	stw r4, 4(r3)
/* 800516BC 0004E61C  90 A3 00 08 */	stw r5, 8(r3)
/* 800516C0 0004E620  90 C3 00 0C */	stw r6, 0xc(r3)
/* 800516C4 0004E624  4E 80 00 20 */	blr

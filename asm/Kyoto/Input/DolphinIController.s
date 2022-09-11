.include "macros.inc"

.section .data
.balign 8

.global lbl_803EF680
lbl_803EF680:
	# ROM: 0x3EC680
	.4byte 0
	.4byte 0
	.4byte __dt__11IControllerFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .text, "ax"

.global Create__11IControllerFRC10COsContext
Create__11IControllerFRC10COsContext:
/* 8034EFB4 0034BF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034EFB8 0034BF18  7C 08 02 A6 */	mflr r0
/* 8034EFBC 0034BF1C  3C 80 80 3E */	lis r4, lbl_803D8228@ha
/* 8034EFC0 0034BF20  38 60 01 D0 */	li r3, 0x1d0
/* 8034EFC4 0034BF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034EFC8 0034BF28  38 84 82 28 */	addi r4, r4, lbl_803D8228@l
/* 8034EFCC 0034BF2C  38 A0 00 00 */	li r5, 0
/* 8034EFD0 0034BF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034EFD4 0034BF34  4B FC 68 99 */	bl __nw__FUlPCcPCc
/* 8034EFD8 0034BF38  7C 7F 1B 79 */	or. r31, r3, r3
/* 8034EFDC 0034BF3C  41 82 00 0C */	beq lbl_8034EFE8
/* 8034EFE0 0034BF40  48 00 07 A9 */	bl __ct__18CDolphinControllerFv
/* 8034EFE4 0034BF44  7C 7F 1B 78 */	mr r31, r3
lbl_8034EFE8:
/* 8034EFE8 0034BF48  7F E3 FB 78 */	mr r3, r31
/* 8034EFEC 0034BF4C  48 00 06 95 */	bl Initialize__18CDolphinControllerFv
/* 8034EFF0 0034BF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034EFF4 0034BF54  7F E3 FB 78 */	mr r3, r31
/* 8034EFF8 0034BF58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034EFFC 0034BF5C  7C 08 03 A6 */	mtlr r0
/* 8034F000 0034BF60  38 21 00 10 */	addi r1, r1, 0x10
/* 8034F004 0034BF64  4E 80 00 20 */	blr

.global __dt__11IControllerFv
__dt__11IControllerFv:
/* 8034F008 0034BF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034F00C 0034BF6C  7C 08 02 A6 */	mflr r0
/* 8034F010 0034BF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F014 0034BF74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034F018 0034BF78  7C 7F 1B 79 */	or. r31, r3, r3
/* 8034F01C 0034BF7C  41 82 00 1C */	beq lbl_8034F038
/* 8034F020 0034BF80  3C A0 80 3F */	lis r5, lbl_803EF680@ha
/* 8034F024 0034BF84  7C 80 07 35 */	extsh. r0, r4
/* 8034F028 0034BF88  38 05 F6 80 */	addi r0, r5, lbl_803EF680@l
/* 8034F02C 0034BF8C  90 1F 00 00 */	stw r0, 0(r31)
/* 8034F030 0034BF90  40 81 00 08 */	ble lbl_8034F038
/* 8034F034 0034BF94  4B FC 68 FD */	bl Free__7CMemoryFPCv
lbl_8034F038:
/* 8034F038 0034BF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034F03C 0034BF9C  7F E3 FB 78 */	mr r3, r31
/* 8034F040 0034BFA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034F044 0034BFA4  7C 08 03 A6 */	mtlr r0
/* 8034F048 0034BFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034F04C 0034BFAC  4E 80 00 20 */	blr

.global __ct__11IControllerFv
__ct__11IControllerFv:
/* 8034F050 0034BFB0  3C 80 80 3F */	lis r4, lbl_803EF680@ha
/* 8034F054 0034BFB4  38 04 F6 80 */	addi r0, r4, lbl_803EF680@l
/* 8034F058 0034BFB8  90 03 00 00 */	stw r0, 0(r3)
/* 8034F05C 0034BFBC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D8228
lbl_803D8228:
	# ROM: 0x3D5228
	.asciz "??(??)"
	.balign 4

.section .sdata2, "a"
.balign 8

.global kAbsoluteMinimum__11IController
kAbsoluteMinimum__11IController:
	# ROM: 0x3FB210
	.float -1.0

.global kAbsoluteMaximum__11IController
kAbsoluteMaximum__11IController:
	# ROM: 0x3FB214
	.float 1.0

.global kRelativeMinimum__11IController
kRelativeMinimum__11IController:
	# ROM: 0x3FB218
	.float -1.0

.global kRelativeMaximum__11IController
kRelativeMaximum__11IController:
	# ROM: 0x3FB21C
	.float 1.0

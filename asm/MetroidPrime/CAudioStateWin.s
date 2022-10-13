.include "macros.inc"

.section .data
.balign 8

.global __vt__14CAudioStateWin
__vt__14CAudioStateWin:
	# ROM: 0x3DD2A8
	.4byte 0
	.4byte 0
	.4byte __dt__14CAudioStateWinFv
	.4byte OnMessage__14CAudioStateWinFRC20CArchitectureMessageR18CArchitectureQueue
	.4byte GetIsContinueDraw__6CIOWinCFv
	.4byte Draw__6CIOWinCFv
	.4byte PreDraw__6CIOWinCFv
	.4byte 0

.section .text, "ax"

.global __dt__14CAudioStateWinFv
__dt__14CAudioStateWinFv:
/* 80111CCC 0010EC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80111CD0 0010EC30  7C 08 02 A6 */	mflr r0
/* 80111CD4 0010EC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80111CD8 0010EC38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80111CDC 0010EC3C  7C 9F 23 78 */	mr r31, r4
/* 80111CE0 0010EC40  93 C1 00 08 */	stw r30, 8(r1)
/* 80111CE4 0010EC44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80111CE8 0010EC48  41 82 00 28 */	beq lbl_80111D10
/* 80111CEC 0010EC4C  3C A0 80 3E */	lis r5, __vt__14CAudioStateWin@ha
/* 80111CF0 0010EC50  38 80 00 00 */	li r4, 0
/* 80111CF4 0010EC54  38 05 02 A8 */	addi r0, r5, __vt__14CAudioStateWin@l
/* 80111CF8 0010EC58  90 1E 00 00 */	stw r0, 0(r30)
/* 80111CFC 0010EC5C  4B F4 0E A9 */	bl __dt__6CIOWinFv
/* 80111D00 0010EC60  7F E0 07 35 */	extsh. r0, r31
/* 80111D04 0010EC64  40 81 00 0C */	ble lbl_80111D10
/* 80111D08 0010EC68  7F C3 F3 78 */	mr r3, r30
/* 80111D0C 0010EC6C  48 20 3C 25 */	bl Free__7CMemoryFPCv
lbl_80111D10:
/* 80111D10 0010EC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80111D14 0010EC74  7F C3 F3 78 */	mr r3, r30
/* 80111D18 0010EC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80111D1C 0010EC7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80111D20 0010EC80  7C 08 03 A6 */	mtlr r0
/* 80111D24 0010EC84  38 21 00 10 */	addi r1, r1, 0x10
/* 80111D28 0010EC88  4E 80 00 20 */	blr

.global OnMessage__14CAudioStateWinFRC20CArchitectureMessageR18CArchitectureQueue
OnMessage__14CAudioStateWinFRC20CArchitectureMessageR18CArchitectureQueue:
/* 80111D2C 0010EC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80111D30 0010EC90  7C 08 02 A6 */	mflr r0
/* 80111D34 0010EC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80111D38 0010EC98  80 04 00 04 */	lwz r0, 4(r4)
/* 80111D3C 0010EC9C  2C 00 00 07 */	cmpwi r0, 7
/* 80111D40 0010ECA0  41 82 00 70 */	beq lbl_80111DB0
/* 80111D44 0010ECA4  40 80 00 10 */	bge lbl_80111D54
/* 80111D48 0010ECA8  2C 00 00 06 */	cmpwi r0, 6
/* 80111D4C 0010ECAC  40 80 00 14 */	bge lbl_80111D60
/* 80111D50 0010ECB0  48 00 00 60 */	b lbl_80111DB0
lbl_80111D54:
/* 80111D54 0010ECB4  2C 00 00 09 */	cmpwi r0, 9
/* 80111D58 0010ECB8  40 80 00 58 */	bge lbl_80111DB0
/* 80111D5C 0010ECBC  48 00 00 18 */	b lbl_80111D74
lbl_80111D60:
/* 80111D60 0010ECC0  38 60 00 01 */	li r3, 1
/* 80111D64 0010ECC4  48 1D 7D 51 */	bl KillAll__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 80111D68 0010ECC8  38 60 00 01 */	li r3, 1
/* 80111D6C 0010ECCC  48 1D 7B 49 */	bl SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 80111D70 0010ECD0  48 00 00 40 */	b lbl_80111DB0
lbl_80111D74:
/* 80111D74 0010ECD4  80 6D A0 80 */	lwz r3, gpGameState@sda21(r13)
/* 80111D78 0010ECD8  48 0C 1B A1 */	bl WorldTransitionManager__10CGameStateFv
/* 80111D7C 0010ECDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80111D80 0010ECE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80111D84 0010ECE4  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80111D88 0010ECE8  2C 00 00 00 */	cmpwi r0, 0
/* 80111D8C 0010ECEC  41 82 00 14 */	beq lbl_80111DA0
/* 80111D90 0010ECF0  80 6D A0 78 */	lwz r3, gpMain@sda21(r13)
/* 80111D94 0010ECF4  80 03 01 2C */	lwz r0, 0x12c(r3)
/* 80111D98 0010ECF8  2C 00 00 00 */	cmpwi r0, 0
/* 80111D9C 0010ECFC  41 82 00 14 */	beq lbl_80111DB0
lbl_80111DA0:
/* 80111DA0 0010ED00  38 60 00 00 */	li r3, 0
/* 80111DA4 0010ED04  48 1D 7B 11 */	bl SetChannel__11CSfxManagerFQ211CSfxManager12ESfxChannels
/* 80111DA8 0010ED08  38 60 00 01 */	li r3, 1
/* 80111DAC 0010ED0C  48 1D 7D 09 */	bl KillAll__11CSfxManagerFQ211CSfxManager12ESfxChannels
lbl_80111DB0:
/* 80111DB0 0010ED10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80111DB4 0010ED14  38 60 00 00 */	li r3, 0
/* 80111DB8 0010ED18  7C 08 03 A6 */	mtlr r0
/* 80111DBC 0010ED1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80111DC0 0010ED20  4E 80 00 20 */	blr

.global __ct__14CAudioStateWinFv
__ct__14CAudioStateWinFv:
/* 80111DC4 0010ED24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80111DC8 0010ED28  7C 08 02 A6 */	mflr r0
/* 80111DCC 0010ED2C  3C 80 80 3D */	lis r4, lbl_803CF200@ha
/* 80111DD0 0010ED30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80111DD4 0010ED34  38 84 F2 00 */	addi r4, r4, lbl_803CF200@l
/* 80111DD8 0010ED38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80111DDC 0010ED3C  7C 7F 1B 78 */	mr r31, r3
/* 80111DE0 0010ED40  38 61 00 08 */	addi r3, r1, 8
/* 80111DE4 0010ED44  4B EF 2E D5 */	bl string_l__4rstlFPCc
/* 80111DE8 0010ED48  7F E3 FB 78 */	mr r3, r31
/* 80111DEC 0010ED4C  38 81 00 08 */	addi r4, r1, 8
/* 80111DF0 0010ED50  4B F4 0E 1D */	bl "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80111DF4 0010ED54  38 61 00 08 */	addi r3, r1, 8
/* 80111DF8 0010ED58  48 22 BC E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 80111DFC 0010ED5C  3C 80 80 3E */	lis r4, __vt__14CAudioStateWin@ha
/* 80111E00 0010ED60  7F E3 FB 78 */	mr r3, r31
/* 80111E04 0010ED64  38 04 02 A8 */	addi r0, r4, __vt__14CAudioStateWin@l
/* 80111E08 0010ED68  90 1F 00 00 */	stw r0, 0(r31)
/* 80111E0C 0010ED6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80111E10 0010ED70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80111E14 0010ED74  7C 08 03 A6 */	mtlr r0
/* 80111E18 0010ED78  38 21 00 20 */	addi r1, r1, 0x20
/* 80111E1C 0010ED7C  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CF200
lbl_803CF200:
	# ROM: 0x3CC200
	.asciz "CAudioStateWin"
	.balign 4

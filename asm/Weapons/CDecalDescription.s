.include "macros.inc"

.section .text, "ax"

.global __ct__Q217CDecalDescription10SQuadDescrFv
__ct__Q217CDecalDescription10SQuadDescrFv:
/* 802B5CC0 002B2C20  38 00 00 00 */	li r0, 0
/* 802B5CC4 002B2C24  90 03 00 00 */	stw r0, 0(r3)
/* 802B5CC8 002B2C28  90 03 00 04 */	stw r0, 4(r3)
/* 802B5CCC 002B2C2C  90 03 00 08 */	stw r0, 8(r3)
/* 802B5CD0 002B2C30  90 03 00 0C */	stw r0, 0xc(r3)
/* 802B5CD4 002B2C34  90 03 00 10 */	stw r0, 0x10(r3)
/* 802B5CD8 002B2C38  90 03 00 14 */	stw r0, 0x14(r3)
/* 802B5CDC 002B2C3C  98 03 00 18 */	stb r0, 0x18(r3)
/* 802B5CE0 002B2C40  4E 80 00 20 */	blr

.global __ct__17CDecalDescriptionFv
__ct__17CDecalDescriptionFv:
/* 802B5CE4 002B2C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5CE8 002B2C48  7C 08 02 A6 */	mflr r0
/* 802B5CEC 002B2C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5CF0 002B2C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5CF4 002B2C54  7C 7F 1B 78 */	mr r31, r3
/* 802B5CF8 002B2C58  4B FF FF C9 */	bl __ct__Q217CDecalDescription10SQuadDescrFv
/* 802B5CFC 002B2C5C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802B5D00 002B2C60  4B FF FF C1 */	bl __ct__Q217CDecalDescription10SQuadDescrFv
/* 802B5D04 002B2C64  38 80 00 00 */	li r4, 0
/* 802B5D08 002B2C68  7F E3 FB 78 */	mr r3, r31
/* 802B5D0C 002B2C6C  98 9F 00 44 */	stb r4, 0x44(r31)
/* 802B5D10 002B2C70  90 9F 00 48 */	stw r4, 0x48(r31)
/* 802B5D14 002B2C74  90 9F 00 4C */	stw r4, 0x4c(r31)
/* 802B5D18 002B2C78  90 9F 00 50 */	stw r4, 0x50(r31)
/* 802B5D1C 002B2C7C  90 9F 00 54 */	stw r4, 0x54(r31)
/* 802B5D20 002B2C80  90 9F 00 58 */	stw r4, 0x58(r31)
/* 802B5D24 002B2C84  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802B5D28 002B2C88  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802B5D2C 002B2C8C  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802B5D30 002B2C90  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 802B5D34 002B2C94  50 80 36 72 */	rlwimi r0, r4, 6, 0x19, 0x19
/* 802B5D38 002B2C98  98 1F 00 5C */	stb r0, 0x5c(r31)
/* 802B5D3C 002B2C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B5D40 002B2CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B5D44 002B2CA4  7C 08 03 A6 */	mtlr r0
/* 802B5D48 002B2CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B5D4C 002B2CAC  4E 80 00 20 */	blr

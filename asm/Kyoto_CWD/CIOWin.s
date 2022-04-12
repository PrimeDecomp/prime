.include "macros.inc"

.section .text, "ax"

.global PreDraw__6CIOWinCFv
PreDraw__6CIOWinCFv:
/* 80052B8C 0004FAEC  4E 80 00 20 */	blr 

.global Draw__6CIOWinCFv
Draw__6CIOWinCFv:
/* 80052B90 0004FAF0  4E 80 00 20 */	blr 

.global GetIsContinueDraw__6CIOWinCFv
GetIsContinueDraw__6CIOWinCFv:
/* 80052B94 0004FAF4  38 60 00 01 */	li r3, 1
/* 80052B98 0004FAF8  4E 80 00 20 */	blr 

.global GetName__6CIOWinCFv
GetName__6CIOWinCFv:
/* 80052B9C 0004FAFC  38 63 00 04 */	addi r3, r3, 4
/* 80052BA0 0004FB00  4E 80 00 20 */	blr 

.global __dt__6CIOWinFv
__dt__6CIOWinFv:
/* 80052BA4 0004FB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80052BA8 0004FB08  7C 08 02 A6 */	mflr r0
/* 80052BAC 0004FB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80052BB0 0004FB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80052BB4 0004FB14  7C 9F 23 78 */	mr r31, r4
/* 80052BB8 0004FB18  93 C1 00 08 */	stw r30, 8(r1)
/* 80052BBC 0004FB1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80052BC0 0004FB20  41 82 00 30 */	beq lbl_80052BF0
/* 80052BC4 0004FB24  3C 60 80 3E */	lis r3, lbl_803D9E90@ha
/* 80052BC8 0004FB28  34 1E 00 04 */	addic. r0, r30, 4
/* 80052BCC 0004FB2C  38 03 9E 90 */	addi r0, r3, lbl_803D9E90@l
/* 80052BD0 0004FB30  90 1E 00 00 */	stw r0, 0(r30)
/* 80052BD4 0004FB34  41 82 00 0C */	beq lbl_80052BE0
/* 80052BD8 0004FB38  38 7E 00 04 */	addi r3, r30, 4
/* 80052BDC 0004FB3C  48 2E AF 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_80052BE0:
/* 80052BE0 0004FB40  7F E0 07 35 */	extsh. r0, r31
/* 80052BE4 0004FB44  40 81 00 0C */	ble lbl_80052BF0
/* 80052BE8 0004FB48  7F C3 F3 78 */	mr r3, r30
/* 80052BEC 0004FB4C  48 2C 2D 45 */	bl Free__7CMemoryFPCv
lbl_80052BF0:
/* 80052BF0 0004FB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80052BF4 0004FB54  7F C3 F3 78 */	mr r3, r30
/* 80052BF8 0004FB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80052BFC 0004FB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80052C00 0004FB60  7C 08 03 A6 */	mtlr r0
/* 80052C04 0004FB64  38 21 00 10 */	addi r1, r1, 0x10
/* 80052C08 0004FB68  4E 80 00 20 */	blr 

.global "__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__6CIOWinFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 80052C0C 0004FB6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80052C10 0004FB70  7C 08 02 A6 */	mflr r0
/* 80052C14 0004FB74  3C A0 80 3E */	lis r5, lbl_803D9E90@ha
/* 80052C18 0004FB78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80052C1C 0004FB7C  38 05 9E 90 */	addi r0, r5, lbl_803D9E90@l
/* 80052C20 0004FB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80052C24 0004FB84  7C 7F 1B 78 */	mr r31, r3
/* 80052C28 0004FB88  90 03 00 00 */	stw r0, 0(r3)
/* 80052C2C 0004FB8C  38 7F 00 04 */	addi r3, r31, 4
/* 80052C30 0004FB90  48 2E B5 31 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 80052C34 0004FB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80052C38 0004FB98  7F E3 FB 78 */	mr r3, r31
/* 80052C3C 0004FB9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80052C40 0004FBA0  7C 08 03 A6 */	mtlr r0
/* 80052C44 0004FBA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80052C48 0004FBA8  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __ct__9TEditorIdFR12CInputStream
__ct__9TEditorIdFR12CInputStream:
/* 8011A460 001173C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011A464 001173C4  7C 08 02 A6 */	mflr r0
/* 8011A468 001173C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011A46C 001173CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011A470 001173D0  7C 7F 1B 78 */	mr r31, r3
/* 8011A474 001173D4  7C 83 23 78 */	mr r3, r4
/* 8011A478 001173D8  48 22 48 0D */	bl ReadLong__12CInputStreamFv
/* 8011A47C 001173DC  90 7F 00 00 */	stw r3, 0(r31)
/* 8011A480 001173E0  7F E3 FB 78 */	mr r3, r31
/* 8011A484 001173E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011A488 001173E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011A48C 001173EC  7C 08 03 A6 */	mtlr r0
/* 8011A490 001173F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8011A494 001173F4  4E 80 00 20 */	blr 

.global __sinit_TGameTypes_cpp
__sinit_TGameTypes_cpp:
/* 8011A498 001173F8  3C 60 00 01 */	lis r3, 1
/* 8011A49C 001173FC  38 80 FF FF */	li r4, -1
/* 8011A4A0 00117400  38 03 FF FF */	subi r0, r3, 1
/* 8011A4A4 00117404  90 8D A3 88 */	stw r4, kInvalidEditorId@sda21(r13)
/* 8011A4A8 00117408  B0 0D A3 8C */	sth r0, kInvalidUniqueId@sda21(r13)
/* 8011A4AC 0011740C  90 8D A3 90 */	stw r4, kInvalidAreaId@sda21(r13)
/* 8011A4B0 00117410  90 8D A3 94 */	stw r4, lbl_805A8F54@sda21(r13)
/* 8011A4B4 00117414  4E 80 00 20 */	blr

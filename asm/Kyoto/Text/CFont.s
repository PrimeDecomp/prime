.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global DrawString__5CFontCFPCcllRC6CColor
DrawString__5CFontCFPCcllRC6CColor:
/* 80305F98 00302EF8  4E 80 00 20 */	blr 

.global CharWidth__5CFontCFc
CharWidth__5CFontCFc:
/* 80305F9C 00302EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305FA0 00302F00  C0 22 C7 70 */	lfs f1, lbl_805AE490@sda21(r2)
/* 80305FA4 00302F04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80305FA8 00302F08  EC 01 00 32 */	fmuls f0, f1, f0
/* 80305FAC 00302F0C  FC 00 00 1E */	fctiwz f0, f0
/* 80305FB0 00302F10  D8 01 00 08 */	stfd f0, 8(r1)
/* 80305FB4 00302F14  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80305FB8 00302F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80305FBC 00302F1C  4E 80 00 20 */	blr 

.global __dt__5CFontFv
__dt__5CFontFv:
/* 80305FC0 00302F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305FC4 00302F24  7C 08 02 A6 */	mflr r0
/* 80305FC8 00302F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305FCC 00302F2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80305FD0 00302F30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80305FD4 00302F34  41 82 00 10 */	beq lbl_80305FE4
/* 80305FD8 00302F38  7C 80 07 35 */	extsh. r0, r4
/* 80305FDC 00302F3C  40 81 00 08 */	ble lbl_80305FE4
/* 80305FE0 00302F40  48 00 F9 51 */	bl Free__7CMemoryFPCv
lbl_80305FE4:
/* 80305FE4 00302F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305FE8 00302F48  7F E3 FB 78 */	mr r3, r31
/* 80305FEC 00302F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80305FF0 00302F50  7C 08 03 A6 */	mtlr r0
/* 80305FF4 00302F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80305FF8 00302F58  4E 80 00 20 */	blr 

.global __ct__5CFontFf
__ct__5CFontFf:
/* 80305FFC 00302F5C  C0 02 C7 74 */	lfs f0, lbl_805AE494@sda21(r2)
/* 80306000 00302F60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306004 00302F64  EC 00 00 72 */	fmuls f0, f0, f1
/* 80306008 00302F68  FC 00 00 1E */	fctiwz f0, f0
/* 8030600C 00302F6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80306010 00302F70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80306014 00302F74  90 03 00 00 */	stw r0, 0(r3)
/* 80306018 00302F78  D0 23 00 04 */	stfs f1, 4(r3)
/* 8030601C 00302F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80306020 00302F80  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

.global qsort
qsort:
/* 8038FD04 0038CC64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8038FD08 0038CC68  7C 08 02 A6 */	mflr r0
/* 8038FD0C 0038CC6C  28 04 00 02 */	cmplwi r4, 2
/* 8038FD10 0038CC70  90 01 00 44 */	stw r0, 0x44(r1)
/* 8038FD14 0038CC74  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 8038FD18 0038CC78  7C 7D 1B 78 */	mr r29, r3
/* 8038FD1C 0038CC7C  7C BE 2B 78 */	mr r30, r5
/* 8038FD20 0038CC80  7C DF 33 78 */	mr r31, r6
/* 8038FD24 0038CC84  41 80 01 3C */	blt lbl_8038FE60
/* 8038FD28 0038CC88  54 83 F8 7E */	srwi r3, r4, 1
/* 8038FD2C 0038CC8C  38 04 FF FF */	addi r0, r4, -1
/* 8038FD30 0038CC90  3B 83 00 01 */	addi r28, r3, 1
/* 8038FD34 0038CC94  7C 9B 23 78 */	mr r27, r4
/* 8038FD38 0038CC98  38 7C FF FF */	addi r3, r28, -1
/* 8038FD3C 0038CC9C  7C 7E 19 D6 */	mullw r3, r30, r3
/* 8038FD40 0038CCA0  7C 1E 01 D6 */	mullw r0, r30, r0
/* 8038FD44 0038CCA4  7F 3D 1A 14 */	add r25, r29, r3
/* 8038FD48 0038CCA8  7F 1D 02 14 */	add r24, r29, r0
lbl_8038FD4C:
/* 8038FD4C 0038CCAC  28 1C 00 01 */	cmplwi r28, 1
/* 8038FD50 0038CCB0  40 81 00 10 */	ble lbl_8038FD60
/* 8038FD54 0038CCB4  7F 3E C8 50 */	subf r25, r30, r25
/* 8038FD58 0038CCB8  3B 9C FF FF */	addi r28, r28, -1
/* 8038FD5C 0038CCBC  48 00 00 48 */	b lbl_8038FDA4
lbl_8038FD60:
/* 8038FD60 0038CCC0  38 78 FF FF */	addi r3, r24, -1
/* 8038FD64 0038CCC4  38 99 FF FF */	addi r4, r25, -1
/* 8038FD68 0038CCC8  38 BE 00 01 */	addi r5, r30, 1
/* 8038FD6C 0038CCCC  48 00 00 20 */	b lbl_8038FD8C
lbl_8038FD70:
/* 8038FD70 0038CCD0  88 C4 00 01 */	lbz r6, 1(r4)
/* 8038FD74 0038CCD4  88 03 00 01 */	lbz r0, 1(r3)
/* 8038FD78 0038CCD8  7C C6 07 74 */	extsb r6, r6
/* 8038FD7C 0038CCDC  98 04 00 01 */	stb r0, 1(r4)
/* 8038FD80 0038CCE0  38 84 00 01 */	addi r4, r4, 1
/* 8038FD84 0038CCE4  98 C3 00 01 */	stb r6, 1(r3)
/* 8038FD88 0038CCE8  38 63 00 01 */	addi r3, r3, 1
lbl_8038FD8C:
/* 8038FD8C 0038CCEC  34 A5 FF FF */	addic. r5, r5, -1
/* 8038FD90 0038CCF0  40 82 FF E0 */	bne lbl_8038FD70
/* 8038FD94 0038CCF4  3B 7B FF FF */	addi r27, r27, -1
/* 8038FD98 0038CCF8  28 1B 00 01 */	cmplwi r27, 1
/* 8038FD9C 0038CCFC  41 82 00 C4 */	beq lbl_8038FE60
/* 8038FDA0 0038CD00  7F 1E C0 50 */	subf r24, r30, r24
lbl_8038FDA4:
/* 8038FDA4 0038CD04  38 1C FF FF */	addi r0, r28, -1
/* 8038FDA8 0038CD08  7F 9A E3 78 */	mr r26, r28
/* 8038FDAC 0038CD0C  7C 1E 01 D6 */	mullw r0, r30, r0
/* 8038FDB0 0038CD10  7E DD 02 14 */	add r22, r29, r0
/* 8038FDB4 0038CD14  48 00 00 9C */	b lbl_8038FE50
lbl_8038FDB8:
/* 8038FDB8 0038CD18  38 00 00 02 */	li r0, 2
/* 8038FDBC 0038CD1C  7E D7 B3 78 */	mr r23, r22
/* 8038FDC0 0038CD20  7F 5A 01 D6 */	mullw r26, r26, r0
/* 8038FDC4 0038CD24  38 1A FF FF */	addi r0, r26, -1
/* 8038FDC8 0038CD28  7C 1E 01 D6 */	mullw r0, r30, r0
/* 8038FDCC 0038CD2C  7C 1A D8 40 */	cmplw r26, r27
/* 8038FDD0 0038CD30  7E DD 02 14 */	add r22, r29, r0
/* 8038FDD4 0038CD34  40 80 00 2C */	bge lbl_8038FE00
/* 8038FDD8 0038CD38  7E B6 F2 14 */	add r21, r22, r30
/* 8038FDDC 0038CD3C  7F EC FB 78 */	mr r12, r31
/* 8038FDE0 0038CD40  7E C3 B3 78 */	mr r3, r22
/* 8038FDE4 0038CD44  7E A4 AB 78 */	mr r4, r21
/* 8038FDE8 0038CD48  7D 89 03 A6 */	mtctr r12
/* 8038FDEC 0038CD4C  4E 80 04 21 */	bctrl
/* 8038FDF0 0038CD50  2C 03 00 00 */	cmpwi r3, 0
/* 8038FDF4 0038CD54  40 80 00 0C */	bge lbl_8038FE00
/* 8038FDF8 0038CD58  7E B6 AB 78 */	mr r22, r21
/* 8038FDFC 0038CD5C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8038FE00:
/* 8038FE00 0038CD60  7F EC FB 78 */	mr r12, r31
/* 8038FE04 0038CD64  7E E3 BB 78 */	mr r3, r23
/* 8038FE08 0038CD68  7E C4 B3 78 */	mr r4, r22
/* 8038FE0C 0038CD6C  7D 89 03 A6 */	mtctr r12
/* 8038FE10 0038CD70  4E 80 04 21 */	bctrl
/* 8038FE14 0038CD74  2C 03 00 00 */	cmpwi r3, 0
/* 8038FE18 0038CD78  40 80 FF 34 */	bge lbl_8038FD4C
/* 8038FE1C 0038CD7C  38 76 FF FF */	addi r3, r22, -1
/* 8038FE20 0038CD80  38 97 FF FF */	addi r4, r23, -1
/* 8038FE24 0038CD84  38 BE 00 01 */	addi r5, r30, 1
/* 8038FE28 0038CD88  48 00 00 20 */	b lbl_8038FE48
lbl_8038FE2C:
/* 8038FE2C 0038CD8C  88 C4 00 01 */	lbz r6, 1(r4)
/* 8038FE30 0038CD90  88 03 00 01 */	lbz r0, 1(r3)
/* 8038FE34 0038CD94  7C C6 07 74 */	extsb r6, r6
/* 8038FE38 0038CD98  98 04 00 01 */	stb r0, 1(r4)
/* 8038FE3C 0038CD9C  38 84 00 01 */	addi r4, r4, 1
/* 8038FE40 0038CDA0  98 C3 00 01 */	stb r6, 1(r3)
/* 8038FE44 0038CDA4  38 63 00 01 */	addi r3, r3, 1
lbl_8038FE48:
/* 8038FE48 0038CDA8  34 A5 FF FF */	addic. r5, r5, -1
/* 8038FE4C 0038CDAC  40 82 FF E0 */	bne lbl_8038FE2C
lbl_8038FE50:
/* 8038FE50 0038CDB0  57 40 08 3C */	slwi r0, r26, 1
/* 8038FE54 0038CDB4  7C 00 D8 40 */	cmplw r0, r27
/* 8038FE58 0038CDB8  40 81 FF 60 */	ble lbl_8038FDB8
/* 8038FE5C 0038CDBC  4B FF FE F0 */	b lbl_8038FD4C
lbl_8038FE60:
/* 8038FE60 0038CDC0  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 8038FE64 0038CDC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038FE68 0038CDC8  7C 08 03 A6 */	mtlr r0
/* 8038FE6C 0038CDCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8038FE70 0038CDD0  4E 80 00 20 */	blr

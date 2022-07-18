.include "macros.inc"

.section .data

.global __vt__12CInputStream
__vt__12CInputStream:
	# ROM: 0x3EB388
	.4byte 0
	.4byte 0
	.4byte __dt__12CInputStreamFv
	.4byte 0

.section .sbss, "wa"

.global lbl_805A94F0
lbl_805A94F0:
	.skip 0x2
.global lbl_805A94F2
lbl_805A94F2:
	.skip 0x2
.global lbl_805A94F4
lbl_805A94F4:
	.skip 0x4
.global lbl_805A94F8
lbl_805A94F8:
	.skip 0x4
.global lbl_805A94FC
lbl_805A94FC:
	.skip 0x4
.global lbl_805A9500
lbl_805A9500:
	.skip 0x8

.section .text, "ax"

.global ReadFloat__12CInputStreamFv
ReadFloat__12CInputStreamFv:
/* 8033EC28 0033BB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033EC2C 0033BB8C  7C 08 02 A6 */	mflr r0
/* 8033EC30 0033BB90  38 8D A9 40 */	addi r4, r13, lbl_805A9500@sda21
/* 8033EC34 0033BB94  38 A0 00 04 */	li r5, 4
/* 8033EC38 0033BB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033EC3C 0033BB9C  48 00 03 19 */	bl Get__12CInputStreamFPvUl
/* 8033EC40 0033BBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033EC44 0033BBA4  C0 2D A9 40 */	lfs f1, lbl_805A9500@sda21(r13)
/* 8033EC48 0033BBA8  7C 08 03 A6 */	mtlr r0
/* 8033EC4C 0033BBAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8033EC50 0033BBB0  4E 80 00 20 */	blr

.global ReadLongLong__12CInputStreamFv
ReadLongLong__12CInputStreamFv:
/* 8033EC54 0033BBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033EC58 0033BBB8  7C 08 02 A6 */	mflr r0
/* 8033EC5C 0033BBBC  38 8D A9 38 */	addi r4, r13, lbl_805A94F8@sda21
/* 8033EC60 0033BBC0  38 A0 00 08 */	li r5, 8
/* 8033EC64 0033BBC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033EC68 0033BBC8  48 00 02 ED */	bl Get__12CInputStreamFPvUl
/* 8033EC6C 0033BBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033EC70 0033BBD0  80 6D A9 38 */	lwz r3, lbl_805A94F8@sda21(r13)
/* 8033EC74 0033BBD4  80 8D A9 3C */	lwz r4, lbl_805A94FC@sda21(r13)
/* 8033EC78 0033BBD8  7C 08 03 A6 */	mtlr r0
/* 8033EC7C 0033BBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8033EC80 0033BBE0  4E 80 00 20 */	blr

.global ReadLong__12CInputStreamFv
ReadLong__12CInputStreamFv:
/* 8033EC84 0033BBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033EC88 0033BBE8  7C 08 02 A6 */	mflr r0
/* 8033EC8C 0033BBEC  38 8D A9 34 */	addi r4, r13, lbl_805A94F4@sda21
/* 8033EC90 0033BBF0  38 A0 00 04 */	li r5, 4
/* 8033EC94 0033BBF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033EC98 0033BBF8  48 00 02 BD */	bl Get__12CInputStreamFPvUl
/* 8033EC9C 0033BBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033ECA0 0033BC00  80 6D A9 34 */	lwz r3, lbl_805A94F4@sda21(r13)
/* 8033ECA4 0033BC04  7C 08 03 A6 */	mtlr r0
/* 8033ECA8 0033BC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8033ECAC 0033BC0C  4E 80 00 20 */	blr

.global ReadShort__12CInputStreamFv
ReadShort__12CInputStreamFv:
/* 8033ECB0 0033BC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033ECB4 0033BC14  7C 08 02 A6 */	mflr r0
/* 8033ECB8 0033BC18  38 8D A9 32 */	addi r4, r13, lbl_805A94F2@sda21
/* 8033ECBC 0033BC1C  38 A0 00 02 */	li r5, 2
/* 8033ECC0 0033BC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033ECC4 0033BC24  48 00 02 91 */	bl Get__12CInputStreamFPvUl
/* 8033ECC8 0033BC28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033ECCC 0033BC2C  A0 6D A9 32 */	lhz r3, lbl_805A94F2@sda21(r13)
/* 8033ECD0 0033BC30  7C 08 03 A6 */	mtlr r0
/* 8033ECD4 0033BC34  38 21 00 10 */	addi r1, r1, 0x10
/* 8033ECD8 0033BC38  4E 80 00 20 */	blr

.global ReadBool__12CInputStreamFv
ReadBool__12CInputStreamFv:
/* 8033ECDC 0033BC3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033ECE0 0033BC40  7C 08 02 A6 */	mflr r0
/* 8033ECE4 0033BC44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033ECE8 0033BC48  48 00 00 25 */	bl ReadChar__12CInputStreamFv
/* 8033ECEC 0033BC4C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8033ECF0 0033BC50  7C 03 00 D0 */	neg r0, r3
/* 8033ECF4 0033BC54  7C 00 1B 78 */	or r0, r0, r3
/* 8033ECF8 0033BC58  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8033ECFC 0033BC5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033ED00 0033BC60  7C 08 03 A6 */	mtlr r0
/* 8033ED04 0033BC64  38 21 00 10 */	addi r1, r1, 0x10
/* 8033ED08 0033BC68  4E 80 00 20 */	blr

.global ReadChar__12CInputStreamFv
ReadChar__12CInputStreamFv:
/* 8033ED0C 0033BC6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033ED10 0033BC70  7C 08 02 A6 */	mflr r0
/* 8033ED14 0033BC74  38 8D A9 30 */	addi r4, r13, lbl_805A94F0@sda21
/* 8033ED18 0033BC78  38 A0 00 01 */	li r5, 1
/* 8033ED1C 0033BC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033ED20 0033BC80  48 00 02 35 */	bl Get__12CInputStreamFPvUl
/* 8033ED24 0033BC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033ED28 0033BC88  88 6D A9 30 */	lbz r3, lbl_805A94F0@sda21(r13)
/* 8033ED2C 0033BC8C  7C 08 03 A6 */	mtlr r0
/* 8033ED30 0033BC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8033ED34 0033BC94  4E 80 00 20 */	blr

.global ReadBits__12CInputStreamFUi
ReadBits__12CInputStreamFUi:
/* 8033ED38 0033BC98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033ED3C 0033BC9C  7C 08 02 A6 */	mflr r0
/* 8033ED40 0033BCA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033ED44 0033BCA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033ED48 0033BCA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033ED4C 0033BCAC  7C 7E 1B 78 */	mr r30, r3
/* 8033ED50 0033BCB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033ED54 0033BCB4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8033ED58 0033BCB8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8033ED5C 0033BCBC  7C 03 20 40 */	cmplw r3, r4
/* 8033ED60 0033BCC0  41 80 00 48 */	blt lbl_8033EDA8
/* 8033ED64 0033BCC4  28 04 00 20 */	cmplwi r4, 0x20
/* 8033ED68 0033BCC8  20 C4 00 20 */	subfic r6, r4, 0x20
/* 8033ED6C 0033BCCC  38 A0 FF FF */	li r5, -1
/* 8033ED70 0033BCD0  41 82 00 10 */	beq lbl_8033ED80
/* 8033ED74 0033BCD4  38 00 00 01 */	li r0, 1
/* 8033ED78 0033BCD8  7C 03 20 30 */	slw r3, r0, r4
/* 8033ED7C 0033BCDC  38 A3 FF FF */	addi r5, r3, -1
lbl_8033ED80:
/* 8033ED80 0033BCE0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8033ED84 0033BCE4  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8033ED88 0033BCE8  7C 04 00 50 */	subf r0, r4, r0
/* 8033ED8C 0033BCEC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8033ED90 0033BCF0  7C 60 34 30 */	srw r0, r3, r6
/* 8033ED94 0033BCF4  7C A3 00 38 */	and r3, r5, r0
/* 8033ED98 0033BCF8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8033ED9C 0033BCFC  7C 00 20 30 */	slw r0, r0, r4
/* 8033EDA0 0033BD00  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8033EDA4 0033BD04  48 00 00 BC */	b lbl_8033EE60
lbl_8033EDA8:
/* 8033EDA8 0033BD08  28 03 00 20 */	cmplwi r3, 0x20
/* 8033EDAC 0033BD0C  7F E3 20 50 */	subf r31, r3, r4
/* 8033EDB0 0033BD10  20 E3 00 20 */	subfic r7, r3, 0x20
/* 8033EDB4 0033BD14  38 C0 FF FF */	li r6, -1
/* 8033EDB8 0033BD18  41 82 00 10 */	beq lbl_8033EDC8
/* 8033EDBC 0033BD1C  38 00 00 01 */	li r0, 1
/* 8033EDC0 0033BD20  7C 03 18 30 */	slw r3, r0, r3
/* 8033EDC4 0033BD24  38 C3 FF FF */	addi r6, r3, -1
lbl_8033EDC8:
/* 8033EDC8 0033BD28  57 E4 07 7E */	clrlwi r4, r31, 0x1d
/* 8033EDCC 0033BD2C  80 BE 00 1C */	lwz r5, 0x1c(r30)
/* 8033EDD0 0033BD30  7C 64 00 D0 */	neg r3, r4
/* 8033EDD4 0033BD34  38 00 00 00 */	li r0, 0
/* 8033EDD8 0033BD38  7C 63 23 78 */	or r3, r3, r4
/* 8033EDDC 0033BD3C  7C A5 3C 30 */	srw r5, r5, r7
/* 8033EDE0 0033BD40  57 E4 E8 FE */	srwi r4, r31, 3
/* 8033EDE4 0033BD44  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8033EDE8 0033BD48  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8033EDEC 0033BD4C  7C C6 28 38 */	and r6, r6, r5
/* 8033EDF0 0033BD50  7F A4 02 14 */	add r29, r4, r0
/* 8033EDF4 0033BD54  7F C3 F3 78 */	mr r3, r30
/* 8033EDF8 0033BD58  7F A5 EB 78 */	mr r5, r29
/* 8033EDFC 0033BD5C  7C DC F8 30 */	slw r28, r6, r31
/* 8033EE00 0033BD60  38 9E 00 1C */	addi r4, r30, 0x1c
/* 8033EE04 0033BD64  48 00 01 51 */	bl Get__12CInputStreamFPvUl
/* 8033EE08 0033BD68  28 1F 00 20 */	cmplwi r31, 0x20
/* 8033EE0C 0033BD6C  20 DF 00 20 */	subfic r6, r31, 0x20
/* 8033EE10 0033BD70  38 A0 FF FF */	li r5, -1
/* 8033EE14 0033BD74  41 82 00 10 */	beq lbl_8033EE24
/* 8033EE18 0033BD78  38 00 00 01 */	li r0, 1
/* 8033EE1C 0033BD7C  7C 03 F8 30 */	slw r3, r0, r31
/* 8033EE20 0033BD80  38 A3 FF FF */	addi r5, r3, -1
lbl_8033EE24:
/* 8033EE24 0033BD84  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8033EE28 0033BD88  57 A0 18 38 */	slwi r0, r29, 3
/* 8033EE2C 0033BD8C  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8033EE30 0033BD90  7C 84 34 30 */	srw r4, r4, r6
/* 8033EE34 0033BD94  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8033EE38 0033BD98  7C A0 20 38 */	and r0, r5, r4
/* 8033EE3C 0033BD9C  7C 03 18 30 */	slw r3, r0, r3
/* 8033EE40 0033BDA0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8033EE44 0033BDA4  7F 9C 1B 78 */	or r28, r28, r3
/* 8033EE48 0033BDA8  7F 83 E3 78 */	mr r3, r28
/* 8033EE4C 0033BDAC  7C 1F 00 50 */	subf r0, r31, r0
/* 8033EE50 0033BDB0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8033EE54 0033BDB4  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8033EE58 0033BDB8  7C 00 F8 30 */	slw r0, r0, r31
/* 8033EE5C 0033BDBC  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_8033EE60:
/* 8033EE60 0033BDC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033EE64 0033BDC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033EE68 0033BDC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033EE6C 0033BDCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033EE70 0033BDD0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8033EE74 0033BDD4  7C 08 03 A6 */	mtlr r0
/* 8033EE78 0033BDD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8033EE7C 0033BDDC  4E 80 00 20 */	blr

.global ReadBytes__12CInputStreamFPvUl
ReadBytes__12CInputStreamFPvUl:
/* 8033EE80 0033BDE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033EE84 0033BDE4  7C 08 02 A6 */	mflr r0
/* 8033EE88 0033BDE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033EE8C 0033BDEC  BF 41 00 08 */	stmw r26, 8(r1)
/* 8033EE90 0033BDF0  7C BC 2B 79 */	or. r28, r5, r5
/* 8033EE94 0033BDF4  7C 7A 1B 78 */	mr r26, r3
/* 8033EE98 0033BDF8  7C 9B 23 78 */	mr r27, r4
/* 8033EE9C 0033BDFC  40 82 00 0C */	bne lbl_8033EEA8
/* 8033EEA0 0033BE00  38 60 00 00 */	li r3, 0
/* 8033EEA4 0033BE04  48 00 00 9C */	b lbl_8033EF40
lbl_8033EEA8:
/* 8033EEA8 0033BE08  80 9A 00 04 */	lwz r4, 4(r26)
/* 8033EEAC 0033BE0C  80 1A 00 08 */	lwz r0, 8(r26)
/* 8033EEB0 0033BE10  7C 04 00 40 */	cmplw r4, r0
/* 8033EEB4 0033BE14  40 82 00 08 */	bne lbl_8033EEBC
/* 8033EEB8 0033BE18  48 00 01 79 */	bl GrabAnotherBlock__12CInputStreamFv
lbl_8033EEBC:
/* 8033EEBC 0033BE1C  7F 9E E3 78 */	mr r30, r28
/* 8033EEC0 0033BE20  3B A0 00 00 */	li r29, 0
/* 8033EEC4 0033BE24  48 00 00 64 */	b lbl_8033EF28
lbl_8033EEC8:
/* 8033EEC8 0033BE28  80 9A 00 04 */	lwz r4, 4(r26)
/* 8033EECC 0033BE2C  80 1A 00 08 */	lwz r0, 8(r26)
/* 8033EED0 0033BE30  7C 04 00 51 */	subf. r0, r4, r0
/* 8033EED4 0033BE34  40 82 00 1C */	bne lbl_8033EEF0
/* 8033EED8 0033BE38  7F 43 D3 78 */	mr r3, r26
/* 8033EEDC 0033BE3C  48 00 01 75 */	bl InternalReadNext__12CInputStreamFv
/* 8033EEE0 0033BE40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8033EEE4 0033BE44  40 82 00 44 */	bne lbl_8033EF28
/* 8033EEE8 0033BE48  7F A3 EB 78 */	mr r3, r29
/* 8033EEEC 0033BE4C  48 00 00 54 */	b lbl_8033EF40
lbl_8033EEF0:
/* 8033EEF0 0033BE50  7C 1E 00 40 */	cmplw r30, r0
/* 8033EEF4 0033BE54  7C 1F 03 78 */	mr r31, r0
/* 8033EEF8 0033BE58  40 80 00 08 */	bge lbl_8033EF00
/* 8033EEFC 0033BE5C  7F DF F3 78 */	mr r31, r30
lbl_8033EF00:
/* 8033EF00 0033BE60  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 8033EF04 0033BE64  7F E5 FB 78 */	mr r5, r31
/* 8033EF08 0033BE68  7C 7B EA 14 */	add r3, r27, r29
/* 8033EF0C 0033BE6C  7C 80 22 14 */	add r4, r0, r4
/* 8033EF10 0033BE70  4B CC 45 81 */	bl memcpy
/* 8033EF14 0033BE74  80 1A 00 04 */	lwz r0, 4(r26)
/* 8033EF18 0033BE78  7F BD FA 14 */	add r29, r29, r31
/* 8033EF1C 0033BE7C  7F DF F0 50 */	subf r30, r31, r30
/* 8033EF20 0033BE80  7C 00 FA 14 */	add r0, r0, r31
/* 8033EF24 0033BE84  90 1A 00 04 */	stw r0, 4(r26)
lbl_8033EF28:
/* 8033EF28 0033BE88  7C 1D E0 40 */	cmplw r29, r28
/* 8033EF2C 0033BE8C  41 80 FF 9C */	blt lbl_8033EEC8
/* 8033EF30 0033BE90  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 8033EF34 0033BE94  7F A3 EB 78 */	mr r3, r29
/* 8033EF38 0033BE98  7C 00 EA 14 */	add r0, r0, r29
/* 8033EF3C 0033BE9C  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_8033EF40:
/* 8033EF40 0033BEA0  BB 41 00 08 */	lmw r26, 8(r1)
/* 8033EF44 0033BEA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033EF48 0033BEA8  7C 08 03 A6 */	mtlr r0
/* 8033EF4C 0033BEAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8033EF50 0033BEB0  4E 80 00 20 */	blr

.global Get__12CInputStreamFPvUl
Get__12CInputStreamFPvUl:
/* 8033EF54 0033BEB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033EF58 0033BEB8  7C 08 02 A6 */	mflr r0
/* 8033EF5C 0033BEBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8033EF60 0033BEC0  38 00 00 00 */	li r0, 0
/* 8033EF64 0033BEC4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8033EF68 0033BEC8  7C 7B 1B 78 */	mr r27, r3
/* 8033EF6C 0033BECC  7C 9C 23 78 */	mr r28, r4
/* 8033EF70 0033BED0  3B A0 00 00 */	li r29, 0
/* 8033EF74 0033BED4  7C BE 2B 78 */	mr r30, r5
/* 8033EF78 0033BED8  90 03 00 20 */	stw r0, 0x20(r3)
/* 8033EF7C 0033BEDC  48 00 00 8C */	b lbl_8033F008
lbl_8033EF80:
/* 8033EF80 0033BEE0  80 9B 00 04 */	lwz r4, 4(r27)
/* 8033EF84 0033BEE4  80 1B 00 08 */	lwz r0, 8(r27)
/* 8033EF88 0033BEE8  7C 04 00 50 */	subf r0, r4, r0
/* 8033EF8C 0033BEEC  7C 1E 00 40 */	cmplw r30, r0
/* 8033EF90 0033BEF0  7C 1F 03 78 */	mr r31, r0
/* 8033EF94 0033BEF4  40 80 00 08 */	bge lbl_8033EF9C
/* 8033EF98 0033BEF8  7F DF F3 78 */	mr r31, r30
lbl_8033EF9C:
/* 8033EF9C 0033BEFC  28 1F 00 00 */	cmplwi r31, 0
/* 8033EFA0 0033BF00  41 82 00 30 */	beq lbl_8033EFD0
/* 8033EFA4 0033BF04  80 1B 00 10 */	lwz r0, 0x10(r27)
/* 8033EFA8 0033BF08  7F E5 FB 78 */	mr r5, r31
/* 8033EFAC 0033BF0C  7C 7C EA 14 */	add r3, r28, r29
/* 8033EFB0 0033BF10  7C 80 22 14 */	add r4, r0, r4
/* 8033EFB4 0033BF14  4B CC 44 DD */	bl memcpy
/* 8033EFB8 0033BF18  80 1B 00 04 */	lwz r0, 4(r27)
/* 8033EFBC 0033BF1C  7F DF F0 50 */	subf r30, r31, r30
/* 8033EFC0 0033BF20  7F BD FA 14 */	add r29, r29, r31
/* 8033EFC4 0033BF24  7C 00 FA 14 */	add r0, r0, r31
/* 8033EFC8 0033BF28  90 1B 00 04 */	stw r0, 4(r27)
/* 8033EFCC 0033BF2C  48 00 00 3C */	b lbl_8033F008
lbl_8033EFD0:
/* 8033EFD0 0033BF30  28 1E 01 00 */	cmplwi r30, 0x100
/* 8033EFD4 0033BF34  40 81 00 2C */	ble lbl_8033F000
/* 8033EFD8 0033BF38  7F 63 DB 78 */	mr r3, r27
/* 8033EFDC 0033BF3C  7F C5 F3 78 */	mr r5, r30
/* 8033EFE0 0033BF40  81 9B 00 00 */	lwz r12, 0(r27)
/* 8033EFE4 0033BF44  7C 9C EA 14 */	add r4, r28, r29
/* 8033EFE8 0033BF48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8033EFEC 0033BF4C  7D 89 03 A6 */	mtctr r12
/* 8033EFF0 0033BF50  4E 80 04 21 */	bctrl
/* 8033EFF4 0033BF54  7F C3 F0 50 */	subf r30, r3, r30
/* 8033EFF8 0033BF58  7F BD 1A 14 */	add r29, r29, r3
/* 8033EFFC 0033BF5C  48 00 00 0C */	b lbl_8033F008
lbl_8033F000:
/* 8033F000 0033BF60  7F 63 DB 78 */	mr r3, r27
/* 8033F004 0033BF64  48 00 00 2D */	bl GrabAnotherBlock__12CInputStreamFv
lbl_8033F008:
/* 8033F008 0033BF68  28 1E 00 00 */	cmplwi r30, 0
/* 8033F00C 0033BF6C  40 82 FF 74 */	bne lbl_8033EF80
/* 8033F010 0033BF70  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 8033F014 0033BF74  7C 00 EA 14 */	add r0, r0, r29
/* 8033F018 0033BF78  90 1B 00 18 */	stw r0, 0x18(r27)
/* 8033F01C 0033BF7C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8033F020 0033BF80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F024 0033BF84  7C 08 03 A6 */	mtlr r0
/* 8033F028 0033BF88  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F02C 0033BF8C  4E 80 00 20 */	blr

.global GrabAnotherBlock__12CInputStreamFv
GrabAnotherBlock__12CInputStreamFv:
/* 8033F030 0033BF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F034 0033BF94  7C 08 02 A6 */	mflr r0
/* 8033F038 0033BF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F03C 0033BF9C  48 00 00 15 */	bl InternalReadNext__12CInputStreamFv
/* 8033F040 0033BFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F044 0033BFA4  7C 08 03 A6 */	mtlr r0
/* 8033F048 0033BFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F04C 0033BFAC  4E 80 00 20 */	blr

.global InternalReadNext__12CInputStreamFv
InternalReadNext__12CInputStreamFv:
/* 8033F050 0033BFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F054 0033BFB4  7C 08 02 A6 */	mflr r0
/* 8033F058 0033BFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F05C 0033BFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F060 0033BFC0  7C 7F 1B 78 */	mr r31, r3
/* 8033F064 0033BFC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8033F068 0033BFC8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8033F06C 0033BFCC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8033F070 0033BFD0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 8033F074 0033BFD4  7D 89 03 A6 */	mtctr r12
/* 8033F078 0033BFD8  4E 80 04 21 */	bctrl
/* 8033F07C 0033BFDC  90 7F 00 08 */	stw r3, 8(r31)
/* 8033F080 0033BFE0  38 00 00 00 */	li r0, 0
/* 8033F084 0033BFE4  90 1F 00 04 */	stw r0, 4(r31)
/* 8033F088 0033BFE8  80 7F 00 08 */	lwz r3, 8(r31)
/* 8033F08C 0033BFEC  7C 03 00 D0 */	neg r0, r3
/* 8033F090 0033BFF0  7C 00 1B 78 */	or r0, r0, r3
/* 8033F094 0033BFF4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8033F098 0033BFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F09C 0033BFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F0A0 0033C000  7C 08 03 A6 */	mtlr r0
/* 8033F0A4 0033C004  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F0A8 0033C008  4E 80 00 20 */	blr

.global __dt__12CInputStreamFv
__dt__12CInputStreamFv:
/* 8033F0AC 0033C00C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F0B0 0033C010  7C 08 02 A6 */	mflr r0
/* 8033F0B4 0033C014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F0B8 0033C018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F0BC 0033C01C  7C 9F 23 78 */	mr r31, r4
/* 8033F0C0 0033C020  93 C1 00 08 */	stw r30, 8(r1)
/* 8033F0C4 0033C024  7C 7E 1B 79 */	or. r30, r3, r3
/* 8033F0C8 0033C028  41 82 00 34 */	beq lbl_8033F0FC
/* 8033F0CC 0033C02C  3C 60 80 3F */	lis r3, __vt__12CInputStream@ha
/* 8033F0D0 0033C030  38 03 E3 88 */	addi r0, r3, __vt__12CInputStream@l
/* 8033F0D4 0033C034  90 1E 00 00 */	stw r0, 0(r30)
/* 8033F0D8 0033C038  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 8033F0DC 0033C03C  28 00 00 00 */	cmplwi r0, 0
/* 8033F0E0 0033C040  41 82 00 0C */	beq lbl_8033F0EC
/* 8033F0E4 0033C044  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8033F0E8 0033C048  4B FD 68 49 */	bl Free__7CMemoryFPCv
lbl_8033F0EC:
/* 8033F0EC 0033C04C  7F E0 07 35 */	extsh. r0, r31
/* 8033F0F0 0033C050  40 81 00 0C */	ble lbl_8033F0FC
/* 8033F0F4 0033C054  7F C3 F3 78 */	mr r3, r30
/* 8033F0F8 0033C058  4B FD 68 39 */	bl Free__7CMemoryFPCv
lbl_8033F0FC:
/* 8033F0FC 0033C05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F100 0033C060  7F C3 F3 78 */	mr r3, r30
/* 8033F104 0033C064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F108 0033C068  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033F10C 0033C06C  7C 08 03 A6 */	mtlr r0
/* 8033F110 0033C070  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F114 0033C074  4E 80 00 20 */	blr

.global __ct__12CInputStreamFPCvib
__ct__12CInputStreamFPCvib:
/* 8033F118 0033C078  3C E0 80 3F */	lis r7, __vt__12CInputStream@ha
/* 8033F11C 0033C07C  38 00 00 00 */	li r0, 0
/* 8033F120 0033C080  38 E7 E3 88 */	addi r7, r7, __vt__12CInputStream@l
/* 8033F124 0033C084  90 E3 00 00 */	stw r7, 0(r3)
/* 8033F128 0033C088  90 03 00 04 */	stw r0, 4(r3)
/* 8033F12C 0033C08C  90 A3 00 08 */	stw r5, 8(r3)
/* 8033F130 0033C090  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8033F134 0033C094  90 83 00 10 */	stw r4, 0x10(r3)
/* 8033F138 0033C098  98 C3 00 14 */	stb r6, 0x14(r3)
/* 8033F13C 0033C09C  90 03 00 18 */	stw r0, 0x18(r3)
/* 8033F140 0033C0A0  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8033F144 0033C0A4  90 03 00 20 */	stw r0, 0x20(r3)
/* 8033F148 0033C0A8  4E 80 00 20 */	blr

.global __ct__12CInputStreamFi
__ct__12CInputStreamFi:
/* 8033F14C 0033C0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F150 0033C0B0  7C 08 02 A6 */	mflr r0
/* 8033F154 0033C0B4  3C C0 80 3F */	lis r6, __vt__12CInputStream@ha
/* 8033F158 0033C0B8  3C A0 80 3D */	lis r5, lbl_803D7A68@ha
/* 8033F15C 0033C0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F160 0033C0C0  38 06 E3 88 */	addi r0, r6, __vt__12CInputStream@l
/* 8033F164 0033C0C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F168 0033C0C8  7C 7F 1B 78 */	mr r31, r3
/* 8033F16C 0033C0CC  7C 83 23 78 */	mr r3, r4
/* 8033F170 0033C0D0  38 85 7A 68 */	addi r4, r5, lbl_803D7A68@l
/* 8033F174 0033C0D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8033F178 0033C0D8  38 00 00 00 */	li r0, 0
/* 8033F17C 0033C0DC  38 A0 00 00 */	li r5, 0
/* 8033F180 0033C0E0  90 1F 00 04 */	stw r0, 4(r31)
/* 8033F184 0033C0E4  90 1F 00 08 */	stw r0, 8(r31)
/* 8033F188 0033C0E8  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8033F18C 0033C0EC  4B FD 66 8D */	bl __nwa__FUlPCcPCc
/* 8033F190 0033C0F0  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8033F194 0033C0F4  38 80 00 01 */	li r4, 1
/* 8033F198 0033C0F8  38 00 00 00 */	li r0, 0
/* 8033F19C 0033C0FC  7F E3 FB 78 */	mr r3, r31
/* 8033F1A0 0033C100  98 9F 00 14 */	stb r4, 0x14(r31)
/* 8033F1A4 0033C104  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033F1A8 0033C108  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8033F1AC 0033C10C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8033F1B0 0033C110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F1B4 0033C114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F1B8 0033C118  7C 08 03 A6 */	mtlr r0
/* 8033F1BC 0033C11C  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F1C0 0033C120  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D7A68
lbl_803D7A68:
	# ROM: 0x3D4A68
	.asciz "??(??)"
	.balign 4


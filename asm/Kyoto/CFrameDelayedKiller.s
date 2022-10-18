.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CFrameDelayedKiller_cpp

.section .bss
.balign 8

.lcomm lbl_80540A40, 0xC, 4
.lcomm lbl_80540A4C, 0x34, 4

.section .sbss, "wa"
.balign 8

.global lbl_805A96B0
lbl_805A96B0:
	.skip 0x8

.section .text, "ax"

.global __dl__8IElementFPvUl
__dl__8IElementFPvUl:
/* 8036CA64 003699C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CA68 003699C8  7C 08 02 A6 */	mflr r0
/* 8036CA6C 003699CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CA70 003699D0  4B FB D7 45 */	bl sub_8032a1b4
/* 8036CA74 003699D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CA78 003699D8  7C 08 03 A6 */	mtlr r0
/* 8036CA7C 003699DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CA80 003699E0  4E 80 00 20 */	blr

.global __nw__8IElementFUlPCcPCc
__nw__8IElementFUlPCcPCc:
/* 8036CA84 003699E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CA88 003699E8  7C 08 02 A6 */	mflr r0
/* 8036CA8C 003699EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CA90 003699F0  4B FB D8 41 */	bl sub_8032a2d0
/* 8036CA94 003699F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CA98 003699F8  7C 08 03 A6 */	mtlr r0
/* 8036CA9C 003699FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CAA0 00369A00  4E 80 00 20 */	blr

.global sub_8036caa4
sub_8036caa4:
/* 8036CAA4 00369A04  80 63 00 08 */	lwz r3, 8(r3)
/* 8036CAA8 00369A08  4E 80 00 20 */	blr

.global sub_8036caac
sub_8036caac:
/* 8036CAAC 00369A0C  80 03 00 04 */	lwz r0, 4(r3)
/* 8036CAB0 00369A10  54 03 10 3A */	slwi r3, r0, 2
/* 8036CAB4 00369A14  4E 80 00 20 */	blr

.global sub_8036cab8
sub_8036cab8:
/* 8036CAB8 00369A18  38 84 00 03 */	addi r4, r4, 3
/* 8036CABC 00369A1C  80 03 00 04 */	lwz r0, 4(r3)
/* 8036CAC0 00369A20  54 84 F0 BE */	srwi r4, r4, 2
/* 8036CAC4 00369A24  7C 04 00 40 */	cmplw r4, r0
/* 8036CAC8 00369A28  40 81 00 10 */	ble lbl_8036CAD8
/* 8036CACC 00369A2C  38 00 00 00 */	li r0, 0
/* 8036CAD0 00369A30  90 03 00 04 */	stw r0, 4(r3)
/* 8036CAD4 00369A34  4E 80 00 20 */	blr
lbl_8036CAD8:
/* 8036CAD8 00369A38  7C 04 00 50 */	subf r0, r4, r0
/* 8036CADC 00369A3C  90 03 00 04 */	stw r0, 4(r3)
/* 8036CAE0 00369A40  4E 80 00 20 */	blr

.global sub_8036cae4
sub_8036cae4:
/* 8036CAE4 00369A44  80 83 00 08 */	lwz r4, 8(r3)
/* 8036CAE8 00369A48  38 04 FF FF */	addi r0, r4, -1
/* 8036CAEC 00369A4C  90 03 00 08 */	stw r0, 8(r3)
/* 8036CAF0 00369A50  4E 80 00 20 */	blr

.global sub_8036caf4
sub_8036caf4:
/* 8036CAF4 00369A54  38 04 00 03 */	addi r0, r4, 3
/* 8036CAF8 00369A58  80 83 00 04 */	lwz r4, 4(r3)
/* 8036CAFC 00369A5C  54 00 F0 BE */	srwi r0, r0, 2
/* 8036CB00 00369A60  7C 04 02 14 */	add r0, r4, r0
/* 8036CB04 00369A64  54 84 10 3A */	slwi r4, r4, 2
/* 8036CB08 00369A68  90 03 00 04 */	stw r0, 4(r3)
/* 8036CB0C 00369A6C  38 A4 00 0C */	addi r5, r4, 0xc
/* 8036CB10 00369A70  7C A3 2A 14 */	add r5, r3, r5
/* 8036CB14 00369A74  80 83 00 08 */	lwz r4, 8(r3)
/* 8036CB18 00369A78  38 04 00 01 */	addi r0, r4, 1
/* 8036CB1C 00369A7C  90 03 00 08 */	stw r0, 8(r3)
/* 8036CB20 00369A80  7C A3 2B 78 */	mr r3, r5
/* 8036CB24 00369A84  4E 80 00 20 */	blr

.global sub_8036cb28
sub_8036cb28:
/* 8036CB28 00369A88  38 03 00 0C */	addi r0, r3, 0xc
/* 8036CB2C 00369A8C  80 63 00 00 */	lwz r3, 0(r3)
/* 8036CB30 00369A90  7C 00 20 50 */	subf r0, r0, r4
/* 8036CB34 00369A94  7C 00 16 70 */	srawi r0, r0, 2
/* 8036CB38 00369A98  7C 00 01 94 */	addze r0, r0
/* 8036CB3C 00369A9C  7C 60 02 78 */	xor r0, r3, r0
/* 8036CB40 00369AA0  7C 00 00 34 */	cntlzw r0, r0
/* 8036CB44 00369AA4  7C 60 00 30 */	slw r0, r3, r0
/* 8036CB48 00369AA8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8036CB4C 00369AAC  4E 80 00 20 */	blr

.global sub_8036cb50
sub_8036cb50:
/* 8036CB50 00369AB0  38 04 00 03 */	addi r0, r4, 3
/* 8036CB54 00369AB4  80 83 00 04 */	lwz r4, 4(r3)
/* 8036CB58 00369AB8  54 00 F0 BE */	srwi r0, r0, 2
/* 8036CB5C 00369ABC  80 63 00 00 */	lwz r3, 0(r3)
/* 8036CB60 00369AC0  7C 04 02 14 */	add r0, r4, r0
/* 8036CB64 00369AC4  7C 60 02 78 */	xor r0, r3, r0
/* 8036CB68 00369AC8  7C 00 00 34 */	cntlzw r0, r0
/* 8036CB6C 00369ACC  7C 60 00 30 */	slw r0, r3, r0
/* 8036CB70 00369AD0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8036CB74 00369AD4  4E 80 00 20 */	blr

.global sub_8036cb78
sub_8036cb78:
/* 8036CB78 00369AD8  38 80 01 00 */	li r4, 0x100
/* 8036CB7C 00369ADC  38 00 00 00 */	li r0, 0
/* 8036CB80 00369AE0  90 83 00 00 */	stw r4, 0(r3)
/* 8036CB84 00369AE4  90 03 00 04 */	stw r0, 4(r3)
/* 8036CB88 00369AE8  90 03 00 08 */	stw r0, 8(r3)
/* 8036CB8C 00369AEC  4E 80 00 20 */	blr

.global sub_8036cb90
sub_8036cb90:
/* 8036CB90 00369AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CB94 00369AF4  7C 08 02 A6 */	mflr r0
/* 8036CB98 00369AF8  3C 60 80 54 */	lis r3, lbl_80540A4C@ha
/* 8036CB9C 00369AFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CBA0 00369B00  38 03 0A 4C */	addi r0, r3, lbl_80540A4C@l
/* 8036CBA4 00369B04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CBA8 00369B08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CBAC 00369B0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036CBB0 00369B10  80 8D AA F0 */	lwz r4, lbl_805A96B0@sda21(r13)
/* 8036CBB4 00369B14  68 84 00 01 */	xori r4, r4, 1
/* 8036CBB8 00369B18  1C 64 00 18 */	mulli r3, r4, 0x18
/* 8036CBBC 00369B1C  90 8D AA F0 */	stw r4, lbl_805A96B0@sda21(r13)
/* 8036CBC0 00369B20  7F A0 1A 14 */	add r29, r0, r3
/* 8036CBC4 00369B24  83 FD 00 04 */	lwz r31, 4(r29)
/* 8036CBC8 00369B28  48 00 00 10 */	b lbl_8036CBD8
lbl_8036CBCC:
/* 8036CBCC 00369B2C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8036CBD0 00369B30  4B FA 8D 61 */	bl Free__7CMemoryFPCv
/* 8036CBD4 00369B34  83 FF 00 04 */	lwz r31, 4(r31)
lbl_8036CBD8:
/* 8036CBD8 00369B38  83 DD 00 08 */	lwz r30, 8(r29)
/* 8036CBDC 00369B3C  7C 1F F0 40 */	cmplw r31, r30
/* 8036CBE0 00369B40  40 82 FF EC */	bne lbl_8036CBCC
/* 8036CBE4 00369B44  80 9D 00 04 */	lwz r4, 4(r29)
/* 8036CBE8 00369B48  48 00 00 10 */	b lbl_8036CBF8
lbl_8036CBEC:
/* 8036CBEC 00369B4C  7F A3 EB 78 */	mr r3, r29
/* 8036CBF0 00369B50  48 00 01 A9 */	bl sub_8036cd98
/* 8036CBF4 00369B54  7C 64 1B 78 */	mr r4, r3
lbl_8036CBF8:
/* 8036CBF8 00369B58  7C 04 F0 40 */	cmplw r4, r30
/* 8036CBFC 00369B5C  40 82 FF F0 */	bne lbl_8036CBEC
/* 8036CC00 00369B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CC04 00369B64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CC08 00369B68  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CC0C 00369B6C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036CC10 00369B70  7C 08 03 A6 */	mtlr r0
/* 8036CC14 00369B74  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CC18 00369B78  4E 80 00 20 */	blr

.global sub_8036cc1c
sub_8036cc1c:
/* 8036CC1C 00369B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CC20 00369B80  7C 08 02 A6 */	mflr r0
/* 8036CC24 00369B84  2C 03 00 01 */	cmpwi r3, 1
/* 8036CC28 00369B88  3C 60 80 54 */	lis r3, lbl_80540A4C@ha
/* 8036CC2C 00369B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CC30 00369B90  38 A3 0A 4C */	addi r5, r3, lbl_80540A4C@l
/* 8036CC34 00369B94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CC38 00369B98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CC3C 00369B9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036CC40 00369BA0  93 81 00 10 */	stw r28, 0x10(r1)
/* 8036CC44 00369BA4  7C 9C 23 78 */	mr r28, r4
/* 8036CC48 00369BA8  80 0D AA F0 */	lwz r0, lbl_805A96B0@sda21(r13)
/* 8036CC4C 00369BAC  68 03 00 01 */	xori r3, r0, 1
/* 8036CC50 00369BB0  40 82 00 08 */	bne lbl_8036CC58
/* 8036CC54 00369BB4  7C 03 03 78 */	mr r3, r0
lbl_8036CC58:
/* 8036CC58 00369BB8  1F A3 00 18 */	mulli r29, r3, 0x18
/* 8036CC5C 00369BBC  3C 80 80 3E */	lis r4, lbl_803D8568@ha
/* 8036CC60 00369BC0  38 60 00 0C */	li r3, 0xc
/* 8036CC64 00369BC4  38 84 85 68 */	addi r4, r4, lbl_803D8568@l
/* 8036CC68 00369BC8  7C C5 EA 14 */	add r6, r5, r29
/* 8036CC6C 00369BCC  38 A0 00 00 */	li r5, 0
/* 8036CC70 00369BD0  83 E6 00 08 */	lwz r31, 8(r6)
/* 8036CC74 00369BD4  83 DF 00 00 */	lwz r30, 0(r31)
/* 8036CC78 00369BD8  4B FA 8B A1 */	bl __nwa__FUlPCcPCc
/* 8036CC7C 00369BDC  28 03 00 00 */	cmplwi r3, 0
/* 8036CC80 00369BE0  41 82 00 0C */	beq lbl_8036CC8C
/* 8036CC84 00369BE4  93 C3 00 00 */	stw r30, 0(r3)
/* 8036CC88 00369BE8  93 E3 00 04 */	stw r31, 4(r3)
lbl_8036CC8C:
/* 8036CC8C 00369BEC  34 83 00 08 */	addic. r4, r3, 8
/* 8036CC90 00369BF0  41 82 00 08 */	beq lbl_8036CC98
/* 8036CC94 00369BF4  93 84 00 00 */	stw r28, 0(r4)
lbl_8036CC98:
/* 8036CC98 00369BF8  3C 80 80 54 */	lis r4, lbl_80540A4C@ha
/* 8036CC9C 00369BFC  38 04 0A 4C */	addi r0, r4, lbl_80540A4C@l
/* 8036CCA0 00369C00  7C 80 EA 14 */	add r4, r0, r29
/* 8036CCA4 00369C04  84 04 00 04 */	lwzu r0, 4(r4)
/* 8036CCA8 00369C08  7C 1F 00 40 */	cmplw r31, r0
/* 8036CCAC 00369C0C  40 82 00 08 */	bne lbl_8036CCB4
/* 8036CCB0 00369C10  90 64 00 00 */	stw r3, 0(r4)
lbl_8036CCB4:
/* 8036CCB4 00369C14  80 A3 00 00 */	lwz r5, 0(r3)
/* 8036CCB8 00369C18  3C 80 80 54 */	lis r4, lbl_80540A4C@ha
/* 8036CCBC 00369C1C  38 04 0A 4C */	addi r0, r4, lbl_80540A4C@l
/* 8036CCC0 00369C20  90 65 00 04 */	stw r3, 4(r5)
/* 8036CCC4 00369C24  7C 80 EA 14 */	add r4, r0, r29
/* 8036CCC8 00369C28  80 A3 00 04 */	lwz r5, 4(r3)
/* 8036CCCC 00369C2C  90 65 00 00 */	stw r3, 0(r5)
/* 8036CCD0 00369C30  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8036CCD4 00369C34  38 03 00 01 */	addi r0, r3, 1
/* 8036CCD8 00369C38  90 04 00 14 */	stw r0, 0x14(r4)
/* 8036CCDC 00369C3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CCE0 00369C40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CCE4 00369C44  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036CCE8 00369C48  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8036CCEC 00369C4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CCF0 00369C50  7C 08 03 A6 */	mtlr r0
/* 8036CCF4 00369C54  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CCF8 00369C58  4E 80 00 20 */	blr

.global sub_8036ccfc
sub_8036ccfc:
/* 8036CCFC 00369C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CD00 00369C60  7C 08 02 A6 */	mflr r0
/* 8036CD04 00369C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CD08 00369C68  48 00 B7 DD */	bl GXDrawDone
/* 8036CD0C 00369C6C  48 00 00 15 */	bl sub_8036cd20
/* 8036CD10 00369C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CD14 00369C74  7C 08 03 A6 */	mtlr r0
/* 8036CD18 00369C78  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CD1C 00369C7C  4E 80 00 20 */	blr

.global sub_8036cd20
sub_8036cd20:
/* 8036CD20 00369C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CD24 00369C84  7C 08 02 A6 */	mflr r0
/* 8036CD28 00369C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CD2C 00369C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036CD30 00369C90  3B E0 00 00 */	li r31, 0
lbl_8036CD34:
/* 8036CD34 00369C94  4B FF FE 5D */	bl sub_8036cb90
/* 8036CD38 00369C98  3B FF 00 01 */	addi r31, r31, 1
/* 8036CD3C 00369C9C  2C 1F 00 02 */	cmpwi r31, 2
/* 8036CD40 00369CA0  41 80 FF F4 */	blt lbl_8036CD34
/* 8036CD44 00369CA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CD48 00369CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036CD4C 00369CAC  7C 08 03 A6 */	mtlr r0
/* 8036CD50 00369CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CD54 00369CB4  4E 80 00 20 */	blr

.global ShutDown__19CFrameDelayedKillerFv
ShutDown__19CFrameDelayedKillerFv:
/* 8036CD58 00369CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CD5C 00369CBC  7C 08 02 A6 */	mflr r0
/* 8036CD60 00369CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CD64 00369CC4  4B FF FF 99 */	bl sub_8036ccfc
/* 8036CD68 00369CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CD6C 00369CCC  7C 08 03 A6 */	mtlr r0
/* 8036CD70 00369CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CD74 00369CD4  4E 80 00 20 */	blr

.global Initialize__19CFrameDelayedKillerFv
Initialize__19CFrameDelayedKillerFv:
/* 8036CD78 00369CD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CD7C 00369CDC  7C 08 02 A6 */	mflr r0
/* 8036CD80 00369CE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CD84 00369CE4  4B FF FF 79 */	bl sub_8036ccfc
/* 8036CD88 00369CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CD8C 00369CEC  7C 08 03 A6 */	mtlr r0
/* 8036CD90 00369CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CD94 00369CF4  4E 80 00 20 */	blr

.global sub_8036cd98
sub_8036cd98:
/* 8036CD98 00369CF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CD9C 00369CFC  7C 08 02 A6 */	mflr r0
/* 8036CDA0 00369D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CDA4 00369D04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036CDA8 00369D08  93 C1 00 08 */	stw r30, 8(r1)
/* 8036CDAC 00369D0C  7C 7E 1B 78 */	mr r30, r3
/* 8036CDB0 00369D10  80 03 00 04 */	lwz r0, 4(r3)
/* 8036CDB4 00369D14  83 E4 00 04 */	lwz r31, 4(r4)
/* 8036CDB8 00369D18  7C 04 00 40 */	cmplw r4, r0
/* 8036CDBC 00369D1C  40 82 00 08 */	bne lbl_8036CDC4
/* 8036CDC0 00369D20  93 FE 00 04 */	stw r31, 4(r30)
lbl_8036CDC4:
/* 8036CDC4 00369D24  80 04 00 04 */	lwz r0, 4(r4)
/* 8036CDC8 00369D28  28 04 00 00 */	cmplwi r4, 0
/* 8036CDCC 00369D2C  80 64 00 00 */	lwz r3, 0(r4)
/* 8036CDD0 00369D30  90 03 00 04 */	stw r0, 4(r3)
/* 8036CDD4 00369D34  80 04 00 00 */	lwz r0, 0(r4)
/* 8036CDD8 00369D38  80 64 00 04 */	lwz r3, 4(r4)
/* 8036CDDC 00369D3C  90 03 00 00 */	stw r0, 0(r3)
/* 8036CDE0 00369D40  41 82 00 0C */	beq lbl_8036CDEC
/* 8036CDE4 00369D44  7C 83 23 78 */	mr r3, r4
/* 8036CDE8 00369D48  4B FA 8B 49 */	bl Free__7CMemoryFPCv
lbl_8036CDEC:
/* 8036CDEC 00369D4C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8036CDF0 00369D50  7F E3 FB 78 */	mr r3, r31
/* 8036CDF4 00369D54  38 04 FF FF */	addi r0, r4, -1
/* 8036CDF8 00369D58  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8036CDFC 00369D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036CE00 00369D60  83 C1 00 08 */	lwz r30, 8(r1)
/* 8036CE04 00369D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CE08 00369D68  7C 08 03 A6 */	mtlr r0
/* 8036CE0C 00369D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CE10 00369D70  4E 80 00 20 */	blr

.global __sinit_CFrameDelayedKiller_cpp
__sinit_CFrameDelayedKiller_cpp:
/* 8036CE14 00369D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CE18 00369D78  7C 08 02 A6 */	mflr r0
/* 8036CE1C 00369D7C  3C 60 80 54 */	lis r3, lbl_80540A4C@ha
/* 8036CE20 00369D80  3C 80 80 37 */	lis r4, sub_8036cf1c@ha
/* 8036CE24 00369D84  3C A0 80 37 */	lis r5, sub_8036ce6c@ha
/* 8036CE28 00369D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CE2C 00369D8C  38 C0 00 18 */	li r6, 0x18
/* 8036CE30 00369D90  38 63 0A 4C */	addi r3, r3, lbl_80540A4C@l
/* 8036CE34 00369D94  38 84 CF 1C */	addi r4, r4, sub_8036cf1c@l
/* 8036CE38 00369D98  38 A5 CE 6C */	addi r5, r5, sub_8036ce6c@l
/* 8036CE3C 00369D9C  38 E0 00 02 */	li r7, 2
/* 8036CE40 00369DA0  48 01 C9 0D */	bl __construct_array
/* 8036CE44 00369DA4  3C 60 80 37 */	lis r3, __arraydtor$381@ha
/* 8036CE48 00369DA8  3C A0 80 54 */	lis r5, lbl_80540A40@ha
/* 8036CE4C 00369DAC  38 83 CE E4 */	addi r4, r3, __arraydtor$381@l
/* 8036CE50 00369DB0  38 60 00 00 */	li r3, 0
/* 8036CE54 00369DB4  38 A5 0A 40 */	addi r5, r5, lbl_80540A40@l
/* 8036CE58 00369DB8  48 01 C8 35 */	bl __register_global_object
/* 8036CE5C 00369DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CE60 00369DC0  7C 08 03 A6 */	mtlr r0
/* 8036CE64 00369DC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CE68 00369DC8  4E 80 00 20 */	blr

.global sub_8036ce6c
sub_8036ce6c:
/* 8036CE6C 00369DCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036CE70 00369DD0  7C 08 02 A6 */	mflr r0
/* 8036CE74 00369DD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036CE78 00369DD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036CE7C 00369DDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036CE80 00369DE0  7C 9E 23 78 */	mr r30, r4
/* 8036CE84 00369DE4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036CE88 00369DE8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8036CE8C 00369DEC  41 82 00 38 */	beq lbl_8036CEC4
/* 8036CE90 00369DF0  83 FD 00 04 */	lwz r31, 4(r29)
/* 8036CE94 00369DF4  48 00 00 14 */	b lbl_8036CEA8
lbl_8036CE98:
/* 8036CE98 00369DF8  7F E3 FB 79 */	or. r3, r31, r31
/* 8036CE9C 00369DFC  83 FF 00 04 */	lwz r31, 4(r31)
/* 8036CEA0 00369E00  41 82 00 08 */	beq lbl_8036CEA8
/* 8036CEA4 00369E04  4B FA 8A 8D */	bl Free__7CMemoryFPCv
lbl_8036CEA8:
/* 8036CEA8 00369E08  80 1D 00 08 */	lwz r0, 8(r29)
/* 8036CEAC 00369E0C  7C 1F 00 40 */	cmplw r31, r0
/* 8036CEB0 00369E10  40 82 FF E8 */	bne lbl_8036CE98
/* 8036CEB4 00369E14  7F C0 07 35 */	extsh. r0, r30
/* 8036CEB8 00369E18  40 81 00 0C */	ble lbl_8036CEC4
/* 8036CEBC 00369E1C  7F A3 EB 78 */	mr r3, r29
/* 8036CEC0 00369E20  4B FA 8A 71 */	bl Free__7CMemoryFPCv
lbl_8036CEC4:
/* 8036CEC4 00369E24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036CEC8 00369E28  7F A3 EB 78 */	mr r3, r29
/* 8036CECC 00369E2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036CED0 00369E30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036CED4 00369E34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036CED8 00369E38  7C 08 03 A6 */	mtlr r0
/* 8036CEDC 00369E3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8036CEE0 00369E40  4E 80 00 20 */	blr

.global __arraydtor$381
__arraydtor$381:
/* 8036CEE4 00369E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036CEE8 00369E48  7C 08 02 A6 */	mflr r0
/* 8036CEEC 00369E4C  3C 60 80 54 */	lis r3, lbl_80540A4C@ha
/* 8036CEF0 00369E50  3C 80 80 37 */	lis r4, sub_8036ce6c@ha
/* 8036CEF4 00369E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036CEF8 00369E58  38 63 0A 4C */	addi r3, r3, lbl_80540A4C@l
/* 8036CEFC 00369E5C  38 A0 00 18 */	li r5, 0x18
/* 8036CF00 00369E60  38 84 CE 6C */	addi r4, r4, sub_8036ce6c@l
/* 8036CF04 00369E64  38 C0 00 02 */	li r6, 2
/* 8036CF08 00369E68  48 01 C7 CD */	bl __destroy_arr
/* 8036CF0C 00369E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036CF10 00369E70  7C 08 03 A6 */	mtlr r0
/* 8036CF14 00369E74  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CF18 00369E78  4E 80 00 20 */	blr

.global sub_8036cf1c
sub_8036cf1c:
/* 8036CF1C 00369E7C  38 83 00 0C */	addi r4, r3, 0xc
/* 8036CF20 00369E80  38 00 00 00 */	li r0, 0
/* 8036CF24 00369E84  90 83 00 04 */	stw r4, 4(r3)
/* 8036CF28 00369E88  90 83 00 08 */	stw r4, 8(r3)
/* 8036CF2C 00369E8C  90 83 00 0C */	stw r4, 0xc(r3)
/* 8036CF30 00369E90  90 83 00 10 */	stw r4, 0x10(r3)
/* 8036CF34 00369E94  90 03 00 14 */	stw r0, 0x14(r3)
/* 8036CF38 00369E98  4E 80 00 20 */	blr


.section .rodata
.balign 8
.global lbl_803D8568
lbl_803D8568:
	# ROM: 0x3D5568
	.asciz "??(??)"
	.balign 4

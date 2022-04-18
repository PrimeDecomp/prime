.include "macros.inc"

.section .data

.global lbl_803DA098
lbl_803DA098:
	# ROM: 0x3D7098
	.4byte 0
	.4byte 0
	.4byte __dt__28CArchMsgParmControllerStatusFv
	.4byte 0

.section .text, "ax"

.global __dt__28CArchMsgParmControllerStatusFv
__dt__28CArchMsgParmControllerStatusFv:
/* 8005A090 00056FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A094 00056FF4  7C 08 02 A6 */	mflr r0
/* 8005A098 00056FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A09C 00056FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A0A0 00057000  7C 7F 1B 79 */	or. r31, r3, r3
/* 8005A0A4 00057004  41 82 00 30 */	beq lbl_8005A0D4
/* 8005A0A8 00057008  3C 60 80 3E */	lis r3, lbl_803DA098@ha
/* 8005A0AC 0005700C  38 03 A0 98 */	addi r0, r3, lbl_803DA098@l
/* 8005A0B0 00057010  90 1F 00 00 */	stw r0, 0(r31)
/* 8005A0B4 00057014  41 82 00 10 */	beq lbl_8005A0C4
/* 8005A0B8 00057018  3C 60 80 3E */	lis r3, lbl_803D8E9C@ha
/* 8005A0BC 0005701C  38 03 8E 9C */	addi r0, r3, lbl_803D8E9C@l
/* 8005A0C0 00057020  90 1F 00 00 */	stw r0, 0(r31)
lbl_8005A0C4:
/* 8005A0C4 00057024  7C 80 07 35 */	extsh. r0, r4
/* 8005A0C8 00057028  40 81 00 0C */	ble lbl_8005A0D4
/* 8005A0CC 0005702C  7F E3 FB 78 */	mr r3, r31
/* 8005A0D0 00057030  48 2B B8 61 */	bl Free__7CMemoryFPCv
lbl_8005A0D4:
/* 8005A0D4 00057034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A0D8 00057038  7F E3 FB 78 */	mr r3, r31
/* 8005A0DC 0005703C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A0E0 00057040  7C 08 03 A6 */	mtlr r0
/* 8005A0E4 00057044  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A0E8 00057048  4E 80 00 20 */	blr 

.global __ct__28CArchMsgParmControllerStatusFsb
__ct__28CArchMsgParmControllerStatusFsb:
/* 8005A0EC 0005704C  3C E0 80 3E */	lis r7, lbl_803D8E9C@ha
/* 8005A0F0 00057050  3C C0 80 3E */	lis r6, lbl_803DA098@ha
/* 8005A0F4 00057054  38 E7 8E 9C */	addi r7, r7, lbl_803D8E9C@l
/* 8005A0F8 00057058  90 E3 00 00 */	stw r7, 0(r3)
/* 8005A0FC 0005705C  38 06 A0 98 */	addi r0, r6, lbl_803DA098@l
/* 8005A100 00057060  90 03 00 00 */	stw r0, 0(r3)
/* 8005A104 00057064  B0 83 00 04 */	sth r4, 4(r3)
/* 8005A108 00057068  98 A3 00 06 */	stb r5, 6(r3)
/* 8005A10C 0005706C  4E 80 00 20 */	blr 


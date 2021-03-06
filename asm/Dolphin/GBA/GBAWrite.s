.include "macros.inc"

.section .text, "ax"

.global WriteProc
WriteProc:
/* 803CAA80 003C79E0  3C 80 80 57 */	lis r4, __GBA@ha
/* 803CAA84 003C79E4  54 63 40 2E */	slwi r3, r3, 8
/* 803CAA88 003C79E8  38 04 A1 A0 */	addi r0, r4, __GBA@l
/* 803CAA8C 003C79EC  7C 60 1A 14 */	add r3, r0, r3
/* 803CAA90 003C79F0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 803CAA94 003C79F4  2C 00 00 00 */	cmpwi r0, 0
/* 803CAA98 003C79F8  4C 82 00 20 */	bnelr
/* 803CAA9C 003C79FC  88 03 00 05 */	lbz r0, 5(r3)
/* 803CAAA0 003C7A00  80 63 00 14 */	lwz r3, 0x14(r3)
/* 803CAAA4 003C7A04  70 00 00 3A */	andi. r0, r0, 0x3a
/* 803CAAA8 003C7A08  98 03 00 00 */	stb r0, 0(r3)
/* 803CAAAC 003C7A0C  4E 80 00 20 */	blr

.global GBAWriteAsync
GBAWriteAsync:
/* 803CAAB0 003C7A10  7C 08 02 A6 */	mflr r0
/* 803CAAB4 003C7A14  90 01 00 04 */	stw r0, 4(r1)
/* 803CAAB8 003C7A18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CAABC 003C7A1C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 803CAAC0 003C7A20  3B 63 00 00 */	addi r27, r3, 0
/* 803CAAC4 003C7A24  3C 60 80 57 */	lis r3, __GBA@ha
/* 803CAAC8 003C7A28  57 67 40 2E */	slwi r7, r27, 8
/* 803CAACC 003C7A2C  38 03 A1 A0 */	addi r0, r3, __GBA@l
/* 803CAAD0 003C7A30  7F E0 3A 14 */	add r31, r0, r7
/* 803CAAD4 003C7A34  3B 84 00 00 */	addi r28, r4, 0
/* 803CAAD8 003C7A38  3B A5 00 00 */	addi r29, r5, 0
/* 803CAADC 003C7A3C  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803CAAE0 003C7A40  3B C6 00 00 */	addi r30, r6, 0
/* 803CAAE4 003C7A44  28 00 00 00 */	cmplwi r0, 0
/* 803CAAE8 003C7A48  41 82 00 0C */	beq lbl_803CAAF4
/* 803CAAEC 003C7A4C  38 60 00 02 */	li r3, 2
/* 803CAAF0 003C7A50  48 00 00 40 */	b lbl_803CAB30
lbl_803CAAF4:
/* 803CAAF4 003C7A54  38 00 00 15 */	li r0, 0x15
/* 803CAAF8 003C7A58  98 1F 00 00 */	stb r0, 0(r31)
/* 803CAAFC 003C7A5C  38 9C 00 00 */	addi r4, r28, 0
/* 803CAB00 003C7A60  38 7F 00 01 */	addi r3, r31, 1
/* 803CAB04 003C7A64  38 A0 00 04 */	li r5, 4
/* 803CAB08 003C7A68  4B C3 89 89 */	bl memcpy
/* 803CAB0C 003C7A6C  93 9F 00 18 */	stw r28, 0x18(r31)
/* 803CAB10 003C7A70  3C 60 80 3D */	lis r3, WriteProc@ha
/* 803CAB14 003C7A74  38 C3 AA 80 */	addi r6, r3, WriteProc@l
/* 803CAB18 003C7A78  93 BF 00 14 */	stw r29, 0x14(r31)
/* 803CAB1C 003C7A7C  7F 63 DB 78 */	mr r3, r27
/* 803CAB20 003C7A80  38 80 00 05 */	li r4, 5
/* 803CAB24 003C7A84  93 DF 00 1C */	stw r30, 0x1c(r31)
/* 803CAB28 003C7A88  38 A0 00 01 */	li r5, 1
/* 803CAB2C 003C7A8C  48 00 03 7D */	bl __GBATransfer
lbl_803CAB30:
/* 803CAB30 003C7A90  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 803CAB34 003C7A94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CAB38 003C7A98  38 21 00 30 */	addi r1, r1, 0x30
/* 803CAB3C 003C7A9C  7C 08 03 A6 */	mtlr r0
/* 803CAB40 003C7AA0  4E 80 00 20 */	blr

.global GBAWrite
GBAWrite:
/* 803CAB44 003C7AA4  7C 08 02 A6 */	mflr r0
/* 803CAB48 003C7AA8  90 01 00 04 */	stw r0, 4(r1)
/* 803CAB4C 003C7AAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803CAB50 003C7AB0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803CAB54 003C7AB4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803CAB58 003C7AB8  3B C5 00 00 */	addi r30, r5, 0
/* 803CAB5C 003C7ABC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803CAB60 003C7AC0  3B A4 00 00 */	addi r29, r4, 0
/* 803CAB64 003C7AC4  93 81 00 20 */	stw r28, 0x20(r1)
/* 803CAB68 003C7AC8  3B 83 00 00 */	addi r28, r3, 0
/* 803CAB6C 003C7ACC  3C 60 80 57 */	lis r3, __GBA@ha
/* 803CAB70 003C7AD0  57 86 40 2E */	slwi r6, r28, 8
/* 803CAB74 003C7AD4  38 03 A1 A0 */	addi r0, r3, __GBA@l
/* 803CAB78 003C7AD8  7F E0 32 14 */	add r31, r0, r6
/* 803CAB7C 003C7ADC  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 803CAB80 003C7AE0  28 00 00 00 */	cmplwi r0, 0
/* 803CAB84 003C7AE4  41 82 00 0C */	beq lbl_803CAB90
/* 803CAB88 003C7AE8  38 60 00 02 */	li r3, 2
/* 803CAB8C 003C7AEC  48 00 00 48 */	b lbl_803CABD4
lbl_803CAB90:
/* 803CAB90 003C7AF0  38 00 00 15 */	li r0, 0x15
/* 803CAB94 003C7AF4  98 1F 00 00 */	stb r0, 0(r31)
/* 803CAB98 003C7AF8  38 9D 00 00 */	addi r4, r29, 0
/* 803CAB9C 003C7AFC  38 7F 00 01 */	addi r3, r31, 1
/* 803CABA0 003C7B00  38 A0 00 04 */	li r5, 4
/* 803CABA4 003C7B04  4B C3 88 ED */	bl memcpy
/* 803CABA8 003C7B08  93 BF 00 18 */	stw r29, 0x18(r31)
/* 803CABAC 003C7B0C  3C 80 80 3D */	lis r4, __GBASyncCallback@ha
/* 803CABB0 003C7B10  38 04 AC E4 */	addi r0, r4, __GBASyncCallback@l
/* 803CABB4 003C7B14  93 DF 00 14 */	stw r30, 0x14(r31)
/* 803CABB8 003C7B18  3C 60 80 3D */	lis r3, WriteProc@ha
/* 803CABBC 003C7B1C  38 C3 AA 80 */	addi r6, r3, WriteProc@l
/* 803CABC0 003C7B20  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803CABC4 003C7B24  38 7C 00 00 */	addi r3, r28, 0
/* 803CABC8 003C7B28  38 80 00 05 */	li r4, 5
/* 803CABCC 003C7B2C  38 A0 00 01 */	li r5, 1
/* 803CABD0 003C7B30  48 00 02 D9 */	bl __GBATransfer
lbl_803CABD4:
/* 803CABD4 003C7B34  2C 03 00 00 */	cmpwi r3, 0
/* 803CABD8 003C7B38  41 82 00 08 */	beq lbl_803CABE0
/* 803CABDC 003C7B3C  48 00 00 0C */	b lbl_803CABE8
lbl_803CABE0:
/* 803CABE0 003C7B40  7F 83 E3 78 */	mr r3, r28
/* 803CABE4 003C7B44  48 00 01 35 */	bl __GBASync
lbl_803CABE8:
/* 803CABE8 003C7B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803CABEC 003C7B4C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803CABF0 003C7B50  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803CABF4 003C7B54  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803CABF8 003C7B58  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803CABFC 003C7B5C  38 21 00 30 */	addi r1, r1, 0x30
/* 803CAC00 003C7B60  7C 08 03 A6 */	mtlr r0
/* 803CAC04 003C7B64  4E 80 00 20 */	blr

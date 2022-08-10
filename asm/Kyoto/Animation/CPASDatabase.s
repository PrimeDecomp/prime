.include "macros.inc"

.section .sdata
.balign 8

.global lbl_805A8740
lbl_805A8740:
	# ROM: 0x3F60E0
	.4byte 0

.global lbl_805A8744
lbl_805A8744:
	# ROM: 0x3F60E4
	.4byte 0xFFFFFFFF

.global lbl_805A8748
lbl_805A8748:
	# ROM: 0x3F60E8
	.4byte 0

.global lbl_805A874C
lbl_805A874C:
	# ROM: 0x3F60EC
	.4byte 0xFFFFFFFF

.section .text, "ax"

.global AddAnimState__12CPASDatabaseFRC13CPASAnimState
AddAnimState__12CPASDatabaseFRC13CPASAnimState:
/* 802E4AA0 002E1A00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E4AA4 002E1A04  7C 08 02 A6 */	mflr r0
/* 802E4AA8 002E1A08  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E4AAC 002E1A0C  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E4AB0 002E1A10  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E4AB4 002E1A14  7C 9F 23 78 */	mr r31, r4
/* 802E4AB8 002E1A18  7F E6 FB 78 */	mr r6, r31
/* 802E4ABC 002E1A1C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802E4AC0 002E1A20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E4AC4 002E1A24  7C 7E 1B 78 */	mr r30, r3
/* 802E4AC8 002E1A28  80 03 00 04 */	lwz r0, 4(r3)
/* 802E4ACC 002E1A2C  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 802E4AD0 002E1A30  38 61 00 20 */	addi r3, r1, 0x20
/* 802E4AD4 002E1A34  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E4AD8 002E1A38  7C E7 02 14 */	add r7, r7, r0
/* 802E4ADC 002E1A3C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802E4AE0 002E1A40  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802E4AE4 002E1A44  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E4AE8 002E1A48  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4AEC 002E1A4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E4AF0 002E1A50  48 00 09 11 */	bl "lower_bound<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E4AF4 002E1A54  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802E4AF8 002E1A58  7F C4 F3 78 */	mr r4, r30
/* 802E4AFC 002E1A5C  7F E6 FB 78 */	mr r6, r31
/* 802E4B00 002E1A60  38 61 00 0C */	addi r3, r1, 0xc
/* 802E4B04 002E1A64  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E4B08 002E1A68  38 A1 00 08 */	addi r5, r1, 8
/* 802E4B0C 002E1A6C  90 01 00 08 */	stw r0, 8(r1)
/* 802E4B10 002E1A70  48 00 00 1D */	bl "insert__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E4B14 002E1A74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E4B18 002E1A78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E4B1C 002E1A7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E4B20 002E1A80  7C 08 03 A6 */	mtlr r0
/* 802E4B24 002E1A84  38 21 00 30 */	addi r1, r1, 0x30
/* 802E4B28 002E1A88  4E 80 00 20 */	blr

.global "insert__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
"insert__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState":
/* 802E4B2C 002E1A8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E4B30 002E1A90  7C 08 02 A6 */	mflr r0
/* 802E4B34 002E1A94  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E4B38 002E1A98  38 00 00 00 */	li r0, 0
/* 802E4B3C 002E1A9C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E4B40 002E1AA0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E4B44 002E1AA4  7C 9E 23 78 */	mr r30, r4
/* 802E4B48 002E1AA8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E4B4C 002E1AAC  7C 7D 1B 78 */	mr r29, r3
/* 802E4B50 002E1AB0  7F C3 F3 78 */	mr r3, r30
/* 802E4B54 002E1AB4  81 05 00 00 */	lwz r8, 0(r5)
/* 802E4B58 002E1AB8  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 802E4B5C 002E1ABC  3C 80 4E C5 */	lis r4, 0x4EC4EC4F@ha
/* 802E4B60 002E1AC0  38 84 EC 4F */	addi r4, r4, 0x4EC4EC4F@l
/* 802E4B64 002E1AC4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 802E4B68 002E1AC8  7C A5 40 50 */	subf r5, r5, r8
/* 802E4B6C 002E1ACC  7C E4 28 96 */	mulhw r7, r4, r5
/* 802E4B70 002E1AD0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802E4B74 002E1AD4  38 81 00 08 */	addi r4, r1, 8
/* 802E4B78 002E1AD8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4B7C 002E1ADC  38 C1 00 0C */	addi r6, r1, 0xc
/* 802E4B80 002E1AE0  38 A0 00 01 */	li r5, 1
/* 802E4B84 002E1AE4  7C E7 26 70 */	srawi r7, r7, 4
/* 802E4B88 002E1AE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E4B8C 002E1AEC  54 E0 0F FE */	srwi r0, r7, 0x1f
/* 802E4B90 002E1AF0  91 01 00 08 */	stw r8, 8(r1)
/* 802E4B94 002E1AF4  7F E7 02 14 */	add r31, r7, r0
/* 802E4B98 002E1AF8  48 00 00 31 */	bl "insert_into<Q24rstl40const_counting_iterator<13CPASAnimState>>__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl40const_counting_iterator<13CPASAnimState>"
/* 802E4B9C 002E1AFC  1C 1F 00 34 */	mulli r0, r31, 0x34
/* 802E4BA0 002E1B00  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802E4BA4 002E1B04  7C 63 02 14 */	add r3, r3, r0
/* 802E4BA8 002E1B08  90 7D 00 00 */	stw r3, 0(r29)
/* 802E4BAC 002E1B0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E4BB0 002E1B10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E4BB4 002E1B14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E4BB8 002E1B18  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E4BBC 002E1B1C  7C 08 03 A6 */	mtlr r0
/* 802E4BC0 002E1B20  38 21 00 30 */	addi r1, r1, 0x30
/* 802E4BC4 002E1B24  4E 80 00 20 */	blr

.global "insert_into<Q24rstl40const_counting_iterator<13CPASAnimState>>__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl40const_counting_iterator<13CPASAnimState>"
"insert_into<Q24rstl40const_counting_iterator<13CPASAnimState>>__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>FQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl40const_counting_iterator<13CPASAnimState>":
/* 802E4BC8 002E1B28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E4BCC 002E1B2C  7C 08 02 A6 */	mflr r0
/* 802E4BD0 002E1B30  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E4BD4 002E1B34  BE A1 00 14 */	stmw r21, 0x14(r1)
/* 802E4BD8 002E1B38  7C BA 2B 78 */	mr r26, r5
/* 802E4BDC 002E1B3C  7C 79 1B 78 */	mr r25, r3
/* 802E4BE0 002E1B40  7C 95 23 78 */	mr r21, r4
/* 802E4BE4 002E1B44  80 A3 00 04 */	lwz r5, 4(r3)
/* 802E4BE8 002E1B48  80 63 00 08 */	lwz r3, 8(r3)
/* 802E4BEC 002E1B4C  7C E5 D2 14 */	add r7, r5, r26
/* 802E4BF0 002E1B50  80 99 00 0C */	lwz r4, 0xc(r25)
/* 802E4BF4 002E1B54  7C 07 18 00 */	cmpw r7, r3
/* 802E4BF8 002E1B58  83 C6 00 00 */	lwz r30, 0(r6)
/* 802E4BFC 002E1B5C  7C 9D 23 78 */	mr r29, r4
/* 802E4C00 002E1B60  41 81 00 B4 */	bgt lbl_802E4CB4
/* 802E4C04 002E1B64  80 15 00 00 */	lwz r0, 0(r21)
/* 802E4C08 002E1B68  3C 60 4E C5 */	lis r3, 0x4EC4EC4F@ha
/* 802E4C0C 002E1B6C  38 63 EC 4F */	addi r3, r3, 0x4EC4EC4F@l
/* 802E4C10 002E1B70  7C 04 00 50 */	subf r0, r4, r0
/* 802E4C14 002E1B74  7C 03 00 96 */	mulhw r0, r3, r0
/* 802E4C18 002E1B78  7C 00 26 70 */	srawi r0, r0, 4
/* 802E4C1C 002E1B7C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802E4C20 002E1B80  7F 60 1A 14 */	add r27, r0, r3
/* 802E4C24 002E1B84  7C 7B 28 50 */	subf r3, r27, r5
/* 802E4C28 002E1B88  3A E3 FF FF */	addi r23, r3, -1
/* 802E4C2C 002E1B8C  1C 7B 00 34 */	mulli r3, r27, 0x34
/* 802E4C30 002E1B90  1C 1A 00 34 */	mulli r0, r26, 0x34
/* 802E4C34 002E1B94  7E C4 1A 14 */	add r22, r4, r3
/* 802E4C38 002E1B98  1C 77 00 34 */	mulli r3, r23, 0x34
/* 802E4C3C 002E1B9C  7F 00 1A 14 */	add r24, r0, r3
/* 802E4C40 002E1BA0  7F 16 C2 14 */	add r24, r22, r24
/* 802E4C44 002E1BA4  7F 96 1A 14 */	add r28, r22, r3
/* 802E4C48 002E1BA8  48 00 00 30 */	b lbl_802E4C78
lbl_802E4C4C:
/* 802E4C4C 002E1BAC  7C 1B BA 14 */	add r0, r27, r23
/* 802E4C50 002E1BB0  80 99 00 0C */	lwz r4, 0xc(r25)
/* 802E4C54 002E1BB4  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E4C58 002E1BB8  7F 03 C3 78 */	mr r3, r24
/* 802E4C5C 002E1BBC  7C 84 02 14 */	add r4, r4, r0
/* 802E4C60 002E1BC0  48 00 02 25 */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E4C64 002E1BC4  7F 83 E3 78 */	mr r3, r28
/* 802E4C68 002E1BC8  48 00 01 F9 */	bl sub_802e4e60
/* 802E4C6C 002E1BCC  3B 18 FF CC */	addi r24, r24, -52
/* 802E4C70 002E1BD0  3B 9C FF CC */	addi r28, r28, -52
/* 802E4C74 002E1BD4  3A F7 FF FF */	addi r23, r23, -1
lbl_802E4C78:
/* 802E4C78 002E1BD8  2C 17 00 00 */	cmpwi r23, 0
/* 802E4C7C 002E1BDC  40 80 FF D0 */	bge lbl_802E4C4C
/* 802E4C80 002E1BE0  3A E0 00 00 */	li r23, 0
/* 802E4C84 002E1BE4  48 00 00 18 */	b lbl_802E4C9C
lbl_802E4C88:
/* 802E4C88 002E1BE8  7E C3 B3 78 */	mr r3, r22
/* 802E4C8C 002E1BEC  7F C4 F3 78 */	mr r4, r30
/* 802E4C90 002E1BF0  48 00 01 F5 */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E4C94 002E1BF4  3A D6 00 34 */	addi r22, r22, 0x34
/* 802E4C98 002E1BF8  3A F7 00 01 */	addi r23, r23, 1
lbl_802E4C9C:
/* 802E4C9C 002E1BFC  7C 17 D0 00 */	cmpw r23, r26
/* 802E4CA0 002E1C00  41 80 FF E8 */	blt lbl_802E4C88
/* 802E4CA4 002E1C04  80 19 00 04 */	lwz r0, 4(r25)
/* 802E4CA8 002E1C08  7C 00 D2 14 */	add r0, r0, r26
/* 802E4CAC 002E1C0C  90 19 00 04 */	stw r0, 4(r25)
/* 802E4CB0 002E1C10  48 00 01 50 */	b lbl_802E4E00
lbl_802E4CB4:
/* 802E4CB4 002E1C14  2C 03 00 00 */	cmpwi r3, 0
/* 802E4CB8 002E1C18  38 00 00 04 */	li r0, 4
/* 802E4CBC 002E1C1C  41 82 00 08 */	beq lbl_802E4CC4
/* 802E4CC0 002E1C20  54 60 08 3C */	slwi r0, r3, 1
lbl_802E4CC4:
/* 802E4CC4 002E1C24  7C 1C 03 78 */	mr r28, r0
/* 802E4CC8 002E1C28  48 00 00 08 */	b lbl_802E4CD0
lbl_802E4CCC:
/* 802E4CCC 002E1C2C  57 9C 08 3C */	slwi r28, r28, 1
lbl_802E4CD0:
/* 802E4CD0 002E1C30  7C 1C 38 00 */	cmpw r28, r7
/* 802E4CD4 002E1C34  41 80 FF F8 */	blt lbl_802E4CCC
/* 802E4CD8 002E1C38  1C 7C 00 34 */	mulli r3, r28, 0x34
/* 802E4CDC 002E1C3C  2C 03 00 00 */	cmpwi r3, 0
/* 802E4CE0 002E1C40  40 82 00 0C */	bne lbl_802E4CEC
/* 802E4CE4 002E1C44  3B E0 00 00 */	li r31, 0
/* 802E4CE8 002E1C48  48 00 00 18 */	b lbl_802E4D00
lbl_802E4CEC:
/* 802E4CEC 002E1C4C  3C 80 80 3D */	lis r4, lbl_803D6DB0@ha
/* 802E4CF0 002E1C50  38 A0 00 00 */	li r5, 0
/* 802E4CF4 002E1C54  38 84 6D B0 */	addi r4, r4, lbl_803D6DB0@l
/* 802E4CF8 002E1C58  48 03 0B 21 */	bl __nwa__FUlPCcPCc
/* 802E4CFC 002E1C5C  7C 7F 1B 78 */	mr r31, r3
lbl_802E4D00:
/* 802E4D00 002E1C60  80 99 00 0C */	lwz r4, 0xc(r25)
/* 802E4D04 002E1C64  3C 60 4E C5 */	lis r3, 0x4EC4EC4F@ha
/* 802E4D08 002E1C68  80 15 00 00 */	lwz r0, 0(r21)
/* 802E4D0C 002E1C6C  38 63 EC 4F */	addi r3, r3, 0x4EC4EC4F@l
/* 802E4D10 002E1C70  7F F6 FB 78 */	mr r22, r31
/* 802E4D14 002E1C74  3B 60 00 00 */	li r27, 0
/* 802E4D18 002E1C78  7C 04 00 50 */	subf r0, r4, r0
/* 802E4D1C 002E1C7C  3A A0 00 00 */	li r21, 0
/* 802E4D20 002E1C80  7C 03 00 96 */	mulhw r0, r3, r0
/* 802E4D24 002E1C84  3A E0 00 00 */	li r23, 0
/* 802E4D28 002E1C88  7C 00 26 70 */	srawi r0, r0, 4
/* 802E4D2C 002E1C8C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802E4D30 002E1C90  7F 00 1A 14 */	add r24, r0, r3
/* 802E4D34 002E1C94  48 00 00 24 */	b lbl_802E4D58
lbl_802E4D38:
/* 802E4D38 002E1C98  80 19 00 0C */	lwz r0, 0xc(r25)
/* 802E4D3C 002E1C9C  7E C3 B3 78 */	mr r3, r22
/* 802E4D40 002E1CA0  7C 80 BA 14 */	add r4, r0, r23
/* 802E4D44 002E1CA4  48 00 01 41 */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E4D48 002E1CA8  3A D6 00 34 */	addi r22, r22, 0x34
/* 802E4D4C 002E1CAC  3B 7B 00 01 */	addi r27, r27, 1
/* 802E4D50 002E1CB0  3A F7 00 34 */	addi r23, r23, 0x34
/* 802E4D54 002E1CB4  3A B5 00 01 */	addi r21, r21, 1
lbl_802E4D58:
/* 802E4D58 002E1CB8  7C 15 C0 00 */	cmpw r21, r24
/* 802E4D5C 002E1CBC  41 80 FF DC */	blt lbl_802E4D38
/* 802E4D60 002E1CC0  1C 1B 00 34 */	mulli r0, r27, 0x34
/* 802E4D64 002E1CC4  3A A0 00 00 */	li r21, 0
/* 802E4D68 002E1CC8  7E DF 02 14 */	add r22, r31, r0
/* 802E4D6C 002E1CCC  48 00 00 1C */	b lbl_802E4D88
lbl_802E4D70:
/* 802E4D70 002E1CD0  7E C3 B3 78 */	mr r3, r22
/* 802E4D74 002E1CD4  7F C4 F3 78 */	mr r4, r30
/* 802E4D78 002E1CD8  48 00 01 0D */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E4D7C 002E1CDC  3A D6 00 34 */	addi r22, r22, 0x34
/* 802E4D80 002E1CE0  3B 7B 00 01 */	addi r27, r27, 1
/* 802E4D84 002E1CE4  3A B5 00 01 */	addi r21, r21, 1
lbl_802E4D88:
/* 802E4D88 002E1CE8  7C 15 D0 00 */	cmpw r21, r26
/* 802E4D8C 002E1CEC  41 80 FF E4 */	blt lbl_802E4D70
/* 802E4D90 002E1CF0  1C 1B 00 34 */	mulli r0, r27, 0x34
/* 802E4D94 002E1CF4  7F 15 C3 78 */	mr r21, r24
/* 802E4D98 002E1CF8  1E D8 00 34 */	mulli r22, r24, 0x34
/* 802E4D9C 002E1CFC  7E FF 02 14 */	add r23, r31, r0
/* 802E4DA0 002E1D00  48 00 00 20 */	b lbl_802E4DC0
lbl_802E4DA4:
/* 802E4DA4 002E1D04  80 19 00 0C */	lwz r0, 0xc(r25)
/* 802E4DA8 002E1D08  7E E3 BB 78 */	mr r3, r23
/* 802E4DAC 002E1D0C  7C 80 B2 14 */	add r4, r0, r22
/* 802E4DB0 002E1D10  48 00 00 D5 */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E4DB4 002E1D14  3A F7 00 34 */	addi r23, r23, 0x34
/* 802E4DB8 002E1D18  3A D6 00 34 */	addi r22, r22, 0x34
/* 802E4DBC 002E1D1C  3A B5 00 01 */	addi r21, r21, 1
lbl_802E4DC0:
/* 802E4DC0 002E1D20  80 19 00 04 */	lwz r0, 4(r25)
/* 802E4DC4 002E1D24  7C 15 00 00 */	cmpw r21, r0
/* 802E4DC8 002E1D28  41 80 FF DC */	blt lbl_802E4DA4
/* 802E4DCC 002E1D2C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E4DD0 002E1D30  7F A3 EB 78 */	mr r3, r29
/* 802E4DD4 002E1D34  7C 9D 02 14 */	add r4, r29, r0
/* 802E4DD8 002E1D38  48 00 00 3D */	bl "allocate<13CPASAnimState>__Q24rstl17rmemory_allocatorFRP13CPASAnimStatei"
/* 802E4DDC 002E1D3C  80 79 00 0C */	lwz r3, 0xc(r25)
/* 802E4DE0 002E1D40  28 03 00 00 */	cmplwi r3, 0
/* 802E4DE4 002E1D44  41 82 00 08 */	beq lbl_802E4DEC
/* 802E4DE8 002E1D48  48 03 0B 49 */	bl Free__7CMemoryFPCv
lbl_802E4DEC:
/* 802E4DEC 002E1D4C  93 F9 00 0C */	stw r31, 0xc(r25)
/* 802E4DF0 002E1D50  93 99 00 08 */	stw r28, 8(r25)
/* 802E4DF4 002E1D54  80 19 00 04 */	lwz r0, 4(r25)
/* 802E4DF8 002E1D58  7C 00 D2 14 */	add r0, r0, r26
/* 802E4DFC 002E1D5C  90 19 00 04 */	stw r0, 4(r25)
lbl_802E4E00:
/* 802E4E00 002E1D60  BA A1 00 14 */	lmw r21, 0x14(r1)
/* 802E4E04 002E1D64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E4E08 002E1D68  7C 08 03 A6 */	mtlr r0
/* 802E4E0C 002E1D6C  38 21 00 40 */	addi r1, r1, 0x40
/* 802E4E10 002E1D70  4E 80 00 20 */	blr

.global "allocate<13CPASAnimState>__Q24rstl17rmemory_allocatorFRP13CPASAnimStatei"
"allocate<13CPASAnimState>__Q24rstl17rmemory_allocatorFRP13CPASAnimStatei":
/* 802E4E14 002E1D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4E18 002E1D78  7C 08 02 A6 */	mflr r0
/* 802E4E1C 002E1D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4E20 002E1D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E4E24 002E1D84  7C 7F 1B 78 */	mr r31, r3
/* 802E4E28 002E1D88  93 C1 00 08 */	stw r30, 8(r1)
/* 802E4E2C 002E1D8C  7C 9E 23 78 */	mr r30, r4
/* 802E4E30 002E1D90  48 00 00 10 */	b lbl_802E4E40
lbl_802E4E34:
/* 802E4E34 002E1D94  7F E3 FB 78 */	mr r3, r31
/* 802E4E38 002E1D98  48 00 00 29 */	bl sub_802e4e60
/* 802E4E3C 002E1D9C  3B FF 00 34 */	addi r31, r31, 0x34
lbl_802E4E40:
/* 802E4E40 002E1DA0  7C 1F F0 40 */	cmplw r31, r30
/* 802E4E44 002E1DA4  40 82 FF F0 */	bne lbl_802E4E34
/* 802E4E48 002E1DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4E4C 002E1DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E4E50 002E1DB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E4E54 002E1DB4  7C 08 03 A6 */	mtlr r0
/* 802E4E58 002E1DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4E5C 002E1DBC  4E 80 00 20 */	blr

.global sub_802e4e60
sub_802e4e60:
/* 802E4E60 002E1DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4E64 002E1DC4  7C 08 02 A6 */	mflr r0
/* 802E4E68 002E1DC8  38 80 FF FF */	li r4, -1
/* 802E4E6C 002E1DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4E70 002E1DD0  4B D4 A3 51 */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E4E74 002E1DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4E78 002E1DD8  7C 08 03 A6 */	mtlr r0
/* 802E4E7C 002E1DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4E80 002E1DE0  4E 80 00 20 */	blr

.global "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
"__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv":
/* 802E4E84 002E1DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E4E88 002E1DE8  7C 08 02 A6 */	mflr r0
/* 802E4E8C 002E1DEC  28 03 00 00 */	cmplwi r3, 0
/* 802E4E90 002E1DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4E94 002E1DF4  41 82 00 08 */	beq lbl_802E4E9C
/* 802E4E98 002E1DF8  4B D4 BD 3D */	bl sub_80030bd4
lbl_802E4E9C:
/* 802E4E9C 002E1DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E4EA0 002E1E00  7C 08 03 A6 */	mtlr r0
/* 802E4EA4 002E1E04  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4EA8 002E1E08  4E 80 00 20 */	blr

.global SetDefaultState__12CPASDatabaseFi
SetDefaultState__12CPASDatabaseFi:
/* 802E4EAC 002E1E0C  90 83 00 10 */	stw r4, 0x10(r3)
/* 802E4EB0 002E1E10  4E 80 00 20 */	blr

.global GetAnimStateByIndex__12CPASDatabaseCFi
GetAnimStateByIndex__12CPASDatabaseCFi:
/* 802E4EB4 002E1E14  1C 04 00 34 */	mulli r0, r4, 0x34
/* 802E4EB8 002E1E18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802E4EBC 002E1E1C  7C 63 02 14 */	add r3, r3, r0
/* 802E4EC0 002E1E20  4E 80 00 20 */	blr

.global GetAnimState__12CPASDatabaseCFi
GetAnimState__12CPASDatabaseCFi:
/* 802E4EC4 002E1E24  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802E4EC8 002E1E28  7C 08 02 A6 */	mflr r0
/* 802E4ECC 002E1E2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E4ED0 002E1E30  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802E4ED4 002E1E34  7C 7F 1B 78 */	mr r31, r3
/* 802E4ED8 002E1E38  38 61 00 24 */	addi r3, r1, 0x24
/* 802E4EDC 002E1E3C  4B FF F6 19 */	bl __ct__13CPASAnimStateFi
/* 802E4EE0 002E1E40  80 1F 00 04 */	lwz r0, 4(r31)
/* 802E4EE4 002E1E44  38 61 00 0C */	addi r3, r1, 0xc
/* 802E4EE8 002E1E48  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 802E4EEC 002E1E4C  38 81 00 10 */	addi r4, r1, 0x10
/* 802E4EF0 002E1E50  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E4EF4 002E1E54  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E4EF8 002E1E58  90 E1 00 20 */	stw r7, 0x20(r1)
/* 802E4EFC 002E1E5C  38 C1 00 24 */	addi r6, r1, 0x24
/* 802E4F00 002E1E60  7C 07 02 14 */	add r0, r7, r0
/* 802E4F04 002E1E64  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E4F08 002E1E68  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4F0C 002E1E6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E4F10 002E1E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4F14 002E1E74  48 00 04 2D */	bl "lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E4F18 002E1E78  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E4F1C 002E1E7C  38 80 00 00 */	li r4, 0
/* 802E4F20 002E1E80  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E4F24 002E1E84  90 A1 00 08 */	stw r5, 8(r1)
/* 802E4F28 002E1E88  7C 05 00 40 */	cmplw r5, r0
/* 802E4F2C 002E1E8C  41 82 00 18 */	beq lbl_802E4F44
/* 802E4F30 002E1E90  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E4F34 002E1E94  80 05 00 00 */	lwz r0, 0(r5)
/* 802E4F38 002E1E98  7C 03 00 00 */	cmpw r3, r0
/* 802E4F3C 002E1E9C  41 80 00 08 */	blt lbl_802E4F44
/* 802E4F40 002E1EA0  38 80 00 01 */	li r4, 1
lbl_802E4F44:
/* 802E4F44 002E1EA4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E4F48 002E1EA8  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E4F4C 002E1EAC  41 82 00 08 */	beq lbl_802E4F54
/* 802E4F50 002E1EB0  38 61 00 08 */	addi r3, r1, 8
lbl_802E4F54:
/* 802E4F54 002E1EB4  83 E3 00 00 */	lwz r31, 0(r3)
/* 802E4F58 002E1EB8  38 61 00 24 */	addi r3, r1, 0x24
/* 802E4F5C 002E1EBC  38 80 FF FF */	li r4, -1
/* 802E4F60 002E1EC0  4B D4 A2 61 */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E4F64 002E1EC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802E4F68 002E1EC8  7F E3 FB 78 */	mr r3, r31
/* 802E4F6C 002E1ECC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802E4F70 002E1ED0  7C 08 03 A6 */	mtlr r0
/* 802E4F74 002E1ED4  38 21 00 60 */	addi r1, r1, 0x60
/* 802E4F78 002E1ED8  4E 80 00 20 */	blr

.global HasState__12CPASDatabaseCFi
HasState__12CPASDatabaseCFi:
/* 802E4F7C 002E1EDC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802E4F80 002E1EE0  7C 08 02 A6 */	mflr r0
/* 802E4F84 002E1EE4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E4F88 002E1EE8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802E4F8C 002E1EEC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802E4F90 002E1EF0  7C 7E 1B 78 */	mr r30, r3
/* 802E4F94 002E1EF4  38 61 00 24 */	addi r3, r1, 0x24
/* 802E4F98 002E1EF8  4B FF F5 5D */	bl __ct__13CPASAnimStateFi
/* 802E4F9C 002E1EFC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E4FA0 002E1F00  38 61 00 0C */	addi r3, r1, 0xc
/* 802E4FA4 002E1F04  80 FE 00 0C */	lwz r7, 0xc(r30)
/* 802E4FA8 002E1F08  38 81 00 10 */	addi r4, r1, 0x10
/* 802E4FAC 002E1F0C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E4FB0 002E1F10  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E4FB4 002E1F14  90 E1 00 20 */	stw r7, 0x20(r1)
/* 802E4FB8 002E1F18  38 C1 00 24 */	addi r6, r1, 0x24
/* 802E4FBC 002E1F1C  7C 07 02 14 */	add r0, r7, r0
/* 802E4FC0 002E1F20  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E4FC4 002E1F24  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E4FC8 002E1F28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E4FCC 002E1F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E4FD0 002E1F30  48 00 03 71 */	bl "lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E4FD4 002E1F34  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E4FD8 002E1F38  38 80 00 00 */	li r4, 0
/* 802E4FDC 002E1F3C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E4FE0 002E1F40  90 A1 00 08 */	stw r5, 8(r1)
/* 802E4FE4 002E1F44  7C 05 00 40 */	cmplw r5, r0
/* 802E4FE8 002E1F48  41 82 00 18 */	beq lbl_802E5000
/* 802E4FEC 002E1F4C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E4FF0 002E1F50  80 05 00 00 */	lwz r0, 0(r5)
/* 802E4FF4 002E1F54  7C 03 00 00 */	cmpw r3, r0
/* 802E4FF8 002E1F58  41 80 00 08 */	blt lbl_802E5000
/* 802E4FFC 002E1F5C  38 80 00 01 */	li r4, 1
lbl_802E5000:
/* 802E5000 002E1F60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E5004 002E1F64  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E5008 002E1F68  41 82 00 08 */	beq lbl_802E5010
/* 802E500C 002E1F6C  38 61 00 08 */	addi r3, r1, 8
lbl_802E5010:
/* 802E5010 002E1F70  83 E3 00 00 */	lwz r31, 0(r3)
/* 802E5014 002E1F74  38 61 00 24 */	addi r3, r1, 0x24
/* 802E5018 002E1F78  38 80 FF FF */	li r4, -1
/* 802E501C 002E1F7C  4B D4 A1 A5 */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E5020 002E1F80  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E5024 002E1F84  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802E5028 002E1F88  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E502C 002E1F8C  7C 03 02 14 */	add r0, r3, r0
/* 802E5030 002E1F90  7C 7F 00 50 */	subf r3, r31, r0
/* 802E5034 002E1F94  7C 00 F8 50 */	subf r0, r0, r31
/* 802E5038 002E1F98  7C 60 03 78 */	or r0, r3, r0
/* 802E503C 002E1F9C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802E5040 002E1FA0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802E5044 002E1FA4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802E5048 002E1FA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802E504C 002E1FAC  7C 08 03 A6 */	mtlr r0
/* 802E5050 002E1FB0  38 21 00 60 */	addi r1, r1, 0x60
/* 802E5054 002E1FB4  4E 80 00 20 */	blr

.global GetNumAnimStates__12CPASDatabaseCFv
GetNumAnimStates__12CPASDatabaseCFv:
/* 802E5058 002E1FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 802E505C 002E1FBC  4E 80 00 20 */	blr

.global FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i:
/* 802E5060 002E1FC0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E5064 002E1FC4  7C 08 02 A6 */	mflr r0
/* 802E5068 002E1FC8  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E506C 002E1FCC  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 802E5070 002E1FD0  7C 9C 23 78 */	mr r28, r4
/* 802E5074 002E1FD4  7C 7B 1B 78 */	mr r27, r3
/* 802E5078 002E1FD8  7C BD 2B 78 */	mr r29, r5
/* 802E507C 002E1FDC  7C DE 33 78 */	mr r30, r6
/* 802E5080 002E1FE0  7C FF 3B 78 */	mr r31, r7
/* 802E5084 002E1FE4  38 61 00 24 */	addi r3, r1, 0x24
/* 802E5088 002E1FE8  80 85 00 00 */	lwz r4, 0(r5)
/* 802E508C 002E1FEC  4B FF F4 69 */	bl __ct__13CPASAnimStateFi
/* 802E5090 002E1FF0  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E5094 002E1FF4  38 61 00 0C */	addi r3, r1, 0xc
/* 802E5098 002E1FF8  80 FC 00 0C */	lwz r7, 0xc(r28)
/* 802E509C 002E1FFC  38 81 00 10 */	addi r4, r1, 0x10
/* 802E50A0 002E2000  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E50A4 002E2004  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E50A8 002E2008  90 E1 00 20 */	stw r7, 0x20(r1)
/* 802E50AC 002E200C  38 C1 00 24 */	addi r6, r1, 0x24
/* 802E50B0 002E2010  7C 07 02 14 */	add r0, r7, r0
/* 802E50B4 002E2014  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E50B8 002E2018  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E50BC 002E201C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E50C0 002E2020  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E50C4 002E2024  48 00 02 7D */	bl "lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E50C8 002E2028  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E50CC 002E202C  38 80 00 00 */	li r4, 0
/* 802E50D0 002E2030  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E50D4 002E2034  90 A1 00 08 */	stw r5, 8(r1)
/* 802E50D8 002E2038  7C 05 00 40 */	cmplw r5, r0
/* 802E50DC 002E203C  41 82 00 18 */	beq lbl_802E50F4
/* 802E50E0 002E2040  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802E50E4 002E2044  80 05 00 00 */	lwz r0, 0(r5)
/* 802E50E8 002E2048  7C 03 00 00 */	cmpw r3, r0
/* 802E50EC 002E204C  41 80 00 08 */	blt lbl_802E50F4
/* 802E50F0 002E2050  38 80 00 01 */	li r4, 1
lbl_802E50F4:
/* 802E50F4 002E2054  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E50F8 002E2058  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E50FC 002E205C  41 82 00 08 */	beq lbl_802E5104
/* 802E5100 002E2060  38 61 00 08 */	addi r3, r1, 8
lbl_802E5104:
/* 802E5104 002E2064  83 43 00 00 */	lwz r26, 0(r3)
/* 802E5108 002E2068  38 61 00 24 */	addi r3, r1, 0x24
/* 802E510C 002E206C  38 80 FF FF */	li r4, -1
/* 802E5110 002E2070  4B D4 A0 B1 */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E5114 002E2074  80 1C 00 04 */	lwz r0, 4(r28)
/* 802E5118 002E2078  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802E511C 002E207C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E5120 002E2080  7C 03 02 14 */	add r0, r3, r0
/* 802E5124 002E2084  7C 1A 00 40 */	cmplw r26, r0
/* 802E5128 002E2088  41 82 00 20 */	beq lbl_802E5148
/* 802E512C 002E208C  7F 63 DB 78 */	mr r3, r27
/* 802E5130 002E2090  7F 44 D3 78 */	mr r4, r26
/* 802E5134 002E2094  7F C6 F3 78 */	mr r6, r30
/* 802E5138 002E2098  7F E7 FB 78 */	mr r7, r31
/* 802E513C 002E209C  38 BD 00 04 */	addi r5, r29, 4
/* 802E5140 002E20A0  4B FF E6 B9 */	bl "FindBestAnimation__13CPASAnimStateCFRCQ24rstl33reserved_vector<12CPASAnimParm,8>R9CRandom16i"
/* 802E5144 002E20A4  48 00 00 14 */	b lbl_802E5158
lbl_802E5148:
/* 802E5148 002E20A8  C0 0D 9B 88 */	lfs f0, lbl_805A8748@sda21(r13)
/* 802E514C 002E20AC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 802E5150 002E20B0  80 0D 9B 8C */	lwz r0, lbl_805A874C@sda21(r13)
/* 802E5154 002E20B4  90 1B 00 04 */	stw r0, 4(r27)
lbl_802E5158:
/* 802E5158 002E20B8  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 802E515C 002E20BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802E5160 002E20C0  7C 08 03 A6 */	mtlr r0
/* 802E5164 002E20C4  38 21 00 70 */	addi r1, r1, 0x70
/* 802E5168 002E20C8  4E 80 00 20 */	blr

.global FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai:
/* 802E516C 002E20CC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802E5170 002E20D0  7C 08 02 A6 */	mflr r0
/* 802E5174 002E20D4  90 01 00 84 */	stw r0, 0x84(r1)
/* 802E5178 002E20D8  BF 61 00 6C */	stmw r27, 0x6c(r1)
/* 802E517C 002E20DC  7C 9B 23 78 */	mr r27, r4
/* 802E5180 002E20E0  7C 7D 1B 78 */	mr r29, r3
/* 802E5184 002E20E4  7C BE 2B 78 */	mr r30, r5
/* 802E5188 002E20E8  7C DF 33 78 */	mr r31, r6
/* 802E518C 002E20EC  38 61 00 28 */	addi r3, r1, 0x28
/* 802E5190 002E20F0  80 85 00 00 */	lwz r4, 0(r5)
/* 802E5194 002E20F4  4B FF F3 61 */	bl __ct__13CPASAnimStateFi
/* 802E5198 002E20F8  80 1B 00 04 */	lwz r0, 4(r27)
/* 802E519C 002E20FC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E51A0 002E2100  80 FB 00 0C */	lwz r7, 0xc(r27)
/* 802E51A4 002E2104  38 81 00 10 */	addi r4, r1, 0x10
/* 802E51A8 002E2108  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E51AC 002E210C  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E51B0 002E2110  90 E1 00 20 */	stw r7, 0x20(r1)
/* 802E51B4 002E2114  38 C1 00 28 */	addi r6, r1, 0x28
/* 802E51B8 002E2118  7C 07 02 14 */	add r0, r7, r0
/* 802E51BC 002E211C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802E51C0 002E2120  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E51C4 002E2124  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E51C8 002E2128  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E51CC 002E212C  48 00 01 75 */	bl "lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
/* 802E51D0 002E2130  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E51D4 002E2134  38 80 00 00 */	li r4, 0
/* 802E51D8 002E2138  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E51DC 002E213C  90 A1 00 08 */	stw r5, 8(r1)
/* 802E51E0 002E2140  7C 05 00 40 */	cmplw r5, r0
/* 802E51E4 002E2144  41 82 00 18 */	beq lbl_802E51FC
/* 802E51E8 002E2148  80 61 00 28 */	lwz r3, 0x28(r1)
/* 802E51EC 002E214C  80 05 00 00 */	lwz r0, 0(r5)
/* 802E51F0 002E2150  7C 03 00 00 */	cmpw r3, r0
/* 802E51F4 002E2154  41 80 00 08 */	blt lbl_802E51FC
/* 802E51F8 002E2158  38 80 00 01 */	li r4, 1
lbl_802E51FC:
/* 802E51FC 002E215C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802E5200 002E2160  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E5204 002E2164  41 82 00 08 */	beq lbl_802E520C
/* 802E5208 002E2168  38 61 00 08 */	addi r3, r1, 8
lbl_802E520C:
/* 802E520C 002E216C  83 83 00 00 */	lwz r28, 0(r3)
/* 802E5210 002E2170  38 61 00 28 */	addi r3, r1, 0x28
/* 802E5214 002E2174  38 80 FF FF */	li r4, -1
/* 802E5218 002E2178  4B D4 9F A9 */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E521C 002E217C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802E5220 002E2180  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802E5224 002E2184  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E5228 002E2188  7C 03 02 14 */	add r0, r3, r0
/* 802E522C 002E218C  7C 1C 00 40 */	cmplw r28, r0
/* 802E5230 002E2190  41 82 00 2C */	beq lbl_802E525C
/* 802E5234 002E2194  38 61 00 24 */	addi r3, r1, 0x24
/* 802E5238 002E2198  38 80 12 34 */	li r4, 0x1234
/* 802E523C 002E219C  48 02 D3 B1 */	bl __ct__9CRandom16FUi
/* 802E5240 002E21A0  7F A3 EB 78 */	mr r3, r29
/* 802E5244 002E21A4  7F 84 E3 78 */	mr r4, r28
/* 802E5248 002E21A8  7F E7 FB 78 */	mr r7, r31
/* 802E524C 002E21AC  38 BE 00 04 */	addi r5, r30, 4
/* 802E5250 002E21B0  38 C1 00 24 */	addi r6, r1, 0x24
/* 802E5254 002E21B4  4B FF E5 A5 */	bl "FindBestAnimation__13CPASAnimStateCFRCQ24rstl33reserved_vector<12CPASAnimParm,8>R9CRandom16i"
/* 802E5258 002E21B8  48 00 00 14 */	b lbl_802E526C
lbl_802E525C:
/* 802E525C 002E21BC  C0 0D 9B 80 */	lfs f0, lbl_805A8740@sda21(r13)
/* 802E5260 002E21C0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 802E5264 002E21C4  80 0D 9B 84 */	lwz r0, lbl_805A8744@sda21(r13)
/* 802E5268 002E21C8  90 1D 00 04 */	stw r0, 4(r29)
lbl_802E526C:
/* 802E526C 002E21CC  BB 61 00 6C */	lmw r27, 0x6c(r1)
/* 802E5270 002E21D0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802E5274 002E21D4  7C 08 03 A6 */	mtlr r0
/* 802E5278 002E21D8  38 21 00 80 */	addi r1, r1, 0x80
/* 802E527C 002E21DC  4E 80 00 20 */	blr

.global __ct__12CPASDatabaseFR12CInputStream
__ct__12CPASDatabaseFR12CInputStream:
/* 802E5280 002E21E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802E5284 002E21E4  7C 08 02 A6 */	mflr r0
/* 802E5288 002E21E8  38 A0 00 00 */	li r5, 0
/* 802E528C 002E21EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E5290 002E21F0  38 00 FF FF */	li r0, -1
/* 802E5294 002E21F4  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 802E5298 002E21F8  7C 7B 1B 78 */	mr r27, r3
/* 802E529C 002E21FC  7C 9C 23 78 */	mr r28, r4
/* 802E52A0 002E2200  90 A3 00 04 */	stw r5, 4(r3)
/* 802E52A4 002E2204  90 A3 00 08 */	stw r5, 8(r3)
/* 802E52A8 002E2208  7F 83 E3 78 */	mr r3, r28
/* 802E52AC 002E220C  90 BB 00 0C */	stw r5, 0xc(r27)
/* 802E52B0 002E2210  90 1B 00 10 */	stw r0, 0x10(r27)
/* 802E52B4 002E2214  48 05 99 D1 */	bl ReadLong__12CInputStreamFv
/* 802E52B8 002E2218  7F 83 E3 78 */	mr r3, r28
/* 802E52BC 002E221C  48 05 99 C9 */	bl ReadLong__12CInputStreamFv
/* 802E52C0 002E2220  7C 7F 1B 78 */	mr r31, r3
/* 802E52C4 002E2224  7F 63 DB 78 */	mr r3, r27
/* 802E52C8 002E2228  7F E4 FB 78 */	mr r4, r31
/* 802E52CC 002E222C  48 00 01 F5 */	bl "reserve__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>Fi"
/* 802E52D0 002E2230  7F 83 E3 78 */	mr r3, r28
/* 802E52D4 002E2234  48 05 99 B1 */	bl ReadLong__12CInputStreamFv
/* 802E52D8 002E2238  3B A0 00 00 */	li r29, 0
/* 802E52DC 002E223C  7C 7E 1B 78 */	mr r30, r3
/* 802E52E0 002E2240  48 00 00 2C */	b lbl_802E530C
lbl_802E52E4:
/* 802E52E4 002E2244  7F 84 E3 78 */	mr r4, r28
/* 802E52E8 002E2248  38 61 00 08 */	addi r3, r1, 8
/* 802E52EC 002E224C  4B FF EE 65 */	bl __ct__13CPASAnimStateFR12CInputStream
/* 802E52F0 002E2250  7F 63 DB 78 */	mr r3, r27
/* 802E52F4 002E2254  38 81 00 08 */	addi r4, r1, 8
/* 802E52F8 002E2258  4B FF F7 A9 */	bl AddAnimState__12CPASDatabaseFRC13CPASAnimState
/* 802E52FC 002E225C  38 61 00 08 */	addi r3, r1, 8
/* 802E5300 002E2260  38 80 FF FF */	li r4, -1
/* 802E5304 002E2264  4B D4 9E BD */	bl "__rf__Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>CFv"
/* 802E5308 002E2268  3B BD 00 01 */	addi r29, r29, 1
lbl_802E530C:
/* 802E530C 002E226C  7C 1D F8 40 */	cmplw r29, r31
/* 802E5310 002E2270  41 80 FF D4 */	blt lbl_802E52E4
/* 802E5314 002E2274  28 1F 00 00 */	cmplwi r31, 0
/* 802E5318 002E2278  41 82 00 10 */	beq lbl_802E5328
/* 802E531C 002E227C  7F 63 DB 78 */	mr r3, r27
/* 802E5320 002E2280  7F C4 F3 78 */	mr r4, r30
/* 802E5324 002E2284  4B FF FB 89 */	bl SetDefaultState__12CPASDatabaseFi
lbl_802E5328:
/* 802E5328 002E2288  7F 63 DB 78 */	mr r3, r27
/* 802E532C 002E228C  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 802E5330 002E2290  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802E5334 002E2294  7C 08 03 A6 */	mtlr r0
/* 802E5338 002E2298  38 21 00 60 */	addi r1, r1, 0x60
/* 802E533C 002E229C  4E 80 00 20 */	blr

.global "lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
"lower_bound<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState":
/* 802E5340 002E22A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E5344 002E22A4  7C 08 02 A6 */	mflr r0
/* 802E5348 002E22A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E534C 002E22AC  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802E5350 002E22B0  7C 9F 23 78 */	mr r31, r4
/* 802E5354 002E22B4  7C 7E 1B 78 */	mr r30, r3
/* 802E5358 002E22B8  7C DB 33 78 */	mr r27, r6
/* 802E535C 002E22BC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E5360 002E22C0  80 85 00 00 */	lwz r4, 0(r5)
/* 802E5364 002E22C4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E5368 002E22C8  90 81 00 08 */	stw r4, 8(r1)
/* 802E536C 002E22CC  38 81 00 08 */	addi r4, r1, 8
/* 802E5370 002E22D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5374 002E22D4  48 00 03 05 */	bl "distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 802E5378 002E22D8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E537C 002E22DC  7C 7D 1B 78 */	mr r29, r3
/* 802E5380 002E22E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5384 002E22E4  48 00 00 58 */	b lbl_802E53DC
lbl_802E5388:
/* 802E5388 002E22E8  57 A3 0F FE */	srwi r3, r29, 0x1f
/* 802E538C 002E22EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E5390 002E22F0  7C 83 EA 14 */	add r4, r3, r29
/* 802E5394 002E22F4  38 61 00 10 */	addi r3, r1, 0x10
/* 802E5398 002E22F8  7C 9C 0E 70 */	srawi r28, r4, 1
/* 802E539C 002E22FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E53A0 002E2300  7F 84 E3 78 */	mr r4, r28
/* 802E53A4 002E2304  48 00 02 55 */	bl "advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
/* 802E53A8 002E2308  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802E53AC 002E230C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802E53B0 002E2310  80 64 00 00 */	lwz r3, 0(r4)
/* 802E53B4 002E2314  7C 03 00 00 */	cmpw r3, r0
/* 802E53B8 002E2318  40 80 00 20 */	bge lbl_802E53D8
/* 802E53BC 002E231C  90 9F 00 00 */	stw r4, 0(r31)
/* 802E53C0 002E2320  7C 7C E8 50 */	subf r3, r28, r29
/* 802E53C4 002E2324  3B A3 FF FF */	addi r29, r3, -1
/* 802E53C8 002E2328  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E53CC 002E232C  38 03 00 34 */	addi r0, r3, 0x34
/* 802E53D0 002E2330  90 1F 00 00 */	stw r0, 0(r31)
/* 802E53D4 002E2334  48 00 00 08 */	b lbl_802E53DC
lbl_802E53D8:
/* 802E53D8 002E2338  7F 9D E3 78 */	mr r29, r28
lbl_802E53DC:
/* 802E53DC 002E233C  2C 1D 00 00 */	cmpwi r29, 0
/* 802E53E0 002E2340  41 81 FF A8 */	bgt lbl_802E5388
/* 802E53E4 002E2344  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E53E8 002E2348  90 1E 00 00 */	stw r0, 0(r30)
/* 802E53EC 002E234C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802E53F0 002E2350  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E53F4 002E2354  7C 08 03 A6 */	mtlr r0
/* 802E53F8 002E2358  38 21 00 30 */	addi r1, r1, 0x30
/* 802E53FC 002E235C  4E 80 00 20 */	blr

.global "lower_bound<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState"
"lower_bound<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,13CPASAnimState>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC13CPASAnimState":
/* 802E5400 002E2360  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E5404 002E2364  7C 08 02 A6 */	mflr r0
/* 802E5408 002E2368  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E540C 002E236C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802E5410 002E2370  7C 9F 23 78 */	mr r31, r4
/* 802E5414 002E2374  7C 7E 1B 78 */	mr r30, r3
/* 802E5418 002E2378  7C DB 33 78 */	mr r27, r6
/* 802E541C 002E237C  38 61 00 0C */	addi r3, r1, 0xc
/* 802E5420 002E2380  80 85 00 00 */	lwz r4, 0(r5)
/* 802E5424 002E2384  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E5428 002E2388  90 81 00 08 */	stw r4, 8(r1)
/* 802E542C 002E238C  38 81 00 08 */	addi r4, r1, 8
/* 802E5430 002E2390  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E5434 002E2394  48 00 02 89 */	bl "distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 802E5438 002E2398  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E543C 002E239C  7C 7D 1B 78 */	mr r29, r3
/* 802E5440 002E23A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5444 002E23A4  48 00 00 58 */	b lbl_802E549C
lbl_802E5448:
/* 802E5448 002E23A8  57 A3 0F FE */	srwi r3, r29, 0x1f
/* 802E544C 002E23AC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E5450 002E23B0  7C 83 EA 14 */	add r4, r3, r29
/* 802E5454 002E23B4  38 61 00 10 */	addi r3, r1, 0x10
/* 802E5458 002E23B8  7C 9C 0E 70 */	srawi r28, r4, 1
/* 802E545C 002E23BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5460 002E23C0  7F 84 E3 78 */	mr r4, r28
/* 802E5464 002E23C4  48 00 01 C1 */	bl "advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
/* 802E5468 002E23C8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802E546C 002E23CC  80 1B 00 00 */	lwz r0, 0(r27)
/* 802E5470 002E23D0  80 64 00 00 */	lwz r3, 0(r4)
/* 802E5474 002E23D4  7C 03 00 00 */	cmpw r3, r0
/* 802E5478 002E23D8  40 80 00 20 */	bge lbl_802E5498
/* 802E547C 002E23DC  90 9F 00 00 */	stw r4, 0(r31)
/* 802E5480 002E23E0  7C 7C E8 50 */	subf r3, r28, r29
/* 802E5484 002E23E4  3B A3 FF FF */	addi r29, r3, -1
/* 802E5488 002E23E8  80 7F 00 00 */	lwz r3, 0(r31)
/* 802E548C 002E23EC  38 03 00 34 */	addi r0, r3, 0x34
/* 802E5490 002E23F0  90 1F 00 00 */	stw r0, 0(r31)
/* 802E5494 002E23F4  48 00 00 08 */	b lbl_802E549C
lbl_802E5498:
/* 802E5498 002E23F8  7F 9D E3 78 */	mr r29, r28
lbl_802E549C:
/* 802E549C 002E23FC  2C 1D 00 00 */	cmpwi r29, 0
/* 802E54A0 002E2400  41 81 FF A8 */	bgt lbl_802E5448
/* 802E54A4 002E2404  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E54A8 002E2408  90 1E 00 00 */	stw r0, 0(r30)
/* 802E54AC 002E240C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802E54B0 002E2410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E54B4 002E2414  7C 08 03 A6 */	mtlr r0
/* 802E54B8 002E2418  38 21 00 30 */	addi r1, r1, 0x30
/* 802E54BC 002E241C  4E 80 00 20 */	blr

.global "reserve__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>Fi":
/* 802E54C0 002E2420  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E54C4 002E2424  7C 08 02 A6 */	mflr r0
/* 802E54C8 002E2428  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E54CC 002E242C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E54D0 002E2430  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E54D4 002E2434  7C 9E 23 78 */	mr r30, r4
/* 802E54D8 002E2438  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E54DC 002E243C  7C 7D 1B 78 */	mr r29, r3
/* 802E54E0 002E2440  80 03 00 08 */	lwz r0, 8(r3)
/* 802E54E4 002E2444  7C 1E 00 00 */	cmpw r30, r0
/* 802E54E8 002E2448  40 81 00 8C */	ble lbl_802E5574
/* 802E54EC 002E244C  1C 7E 00 34 */	mulli r3, r30, 0x34
/* 802E54F0 002E2450  2C 03 00 00 */	cmpwi r3, 0
/* 802E54F4 002E2454  40 82 00 0C */	bne lbl_802E5500
/* 802E54F8 002E2458  3B E0 00 00 */	li r31, 0
/* 802E54FC 002E245C  48 00 00 18 */	b lbl_802E5514
lbl_802E5500:
/* 802E5500 002E2460  3C 80 80 3D */	lis r4, lbl_803D6DB0@ha
/* 802E5504 002E2464  38 A0 00 00 */	li r5, 0
/* 802E5508 002E2468  38 84 6D B0 */	addi r4, r4, lbl_803D6DB0@l
/* 802E550C 002E246C  48 03 03 0D */	bl __nwa__FUlPCcPCc
/* 802E5510 002E2470  7C 7F 1B 78 */	mr r31, r3
lbl_802E5514:
/* 802E5514 002E2474  80 1D 00 04 */	lwz r0, 4(r29)
/* 802E5518 002E2478  7F E5 FB 78 */	mr r5, r31
/* 802E551C 002E247C  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 802E5520 002E2480  38 61 00 14 */	addi r3, r1, 0x14
/* 802E5524 002E2484  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E5528 002E2488  38 81 00 0C */	addi r4, r1, 0xc
/* 802E552C 002E248C  7C C6 02 14 */	add r6, r6, r0
/* 802E5530 002E2490  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802E5534 002E2494  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802E5538 002E2498  90 C1 00 08 */	stw r6, 8(r1)
/* 802E553C 002E249C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E5540 002E24A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5544 002E24A4  48 00 00 4D */	bl "construct<13CPASAnimState>__4rstlFPvRC13CPASAnimState"
/* 802E5548 002E24A8  80 1D 00 04 */	lwz r0, 4(r29)
/* 802E554C 002E24AC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802E5550 002E24B0  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802E5554 002E24B4  7C 83 02 14 */	add r4, r3, r0
/* 802E5558 002E24B8  4B FF F8 BD */	bl "allocate<13CPASAnimState>__Q24rstl17rmemory_allocatorFRP13CPASAnimStatei"
/* 802E555C 002E24BC  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802E5560 002E24C0  28 03 00 00 */	cmplwi r3, 0
/* 802E5564 002E24C4  41 82 00 08 */	beq lbl_802E556C
/* 802E5568 002E24C8  48 03 03 C9 */	bl Free__7CMemoryFPCv
lbl_802E556C:
/* 802E556C 002E24CC  93 FD 00 0C */	stw r31, 0xc(r29)
/* 802E5570 002E24D0  93 DD 00 08 */	stw r30, 8(r29)
lbl_802E5574:
/* 802E5574 002E24D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E5578 002E24D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E557C 002E24DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E5580 002E24E0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E5584 002E24E4  7C 08 03 A6 */	mtlr r0
/* 802E5588 002E24E8  38 21 00 30 */	addi r1, r1, 0x30
/* 802E558C 002E24EC  4E 80 00 20 */	blr

.global "construct<13CPASAnimState>__4rstlFPvRC13CPASAnimState"
"construct<13CPASAnimState>__4rstlFPvRC13CPASAnimState":
/* 802E5590 002E24F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E5594 002E24F4  7C 08 02 A6 */	mflr r0
/* 802E5598 002E24F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E559C 002E24FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E55A0 002E2500  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E55A4 002E2504  7C BE 2B 78 */	mr r30, r5
/* 802E55A8 002E2508  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E55AC 002E250C  7C 9D 23 78 */	mr r29, r4
/* 802E55B0 002E2510  83 E3 00 00 */	lwz r31, 0(r3)
/* 802E55B4 002E2514  48 00 00 18 */	b lbl_802E55CC
lbl_802E55B8:
/* 802E55B8 002E2518  7F C3 F3 78 */	mr r3, r30
/* 802E55BC 002E251C  7F E4 FB 78 */	mr r4, r31
/* 802E55C0 002E2520  4B FF F8 C5 */	bl "__ml__Q24rstl39const_counting_iterator<12CPASAnimInfo>CFv"
/* 802E55C4 002E2524  3B DE 00 34 */	addi r30, r30, 0x34
/* 802E55C8 002E2528  3B FF 00 34 */	addi r31, r31, 0x34
lbl_802E55CC:
/* 802E55CC 002E252C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802E55D0 002E2530  7C 1F 00 40 */	cmplw r31, r0
/* 802E55D4 002E2534  40 82 FF E4 */	bne lbl_802E55B8
/* 802E55D8 002E2538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E55DC 002E253C  7F C3 F3 78 */	mr r3, r30
/* 802E55E0 002E2540  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E55E4 002E2544  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E55E8 002E2548  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E55EC 002E254C  7C 08 03 A6 */	mtlr r0
/* 802E55F0 002E2550  38 21 00 20 */	addi r1, r1, 0x20
/* 802E55F4 002E2554  4E 80 00 20 */	blr

.global "advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
"advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i":
/* 802E55F8 002E2558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E55FC 002E255C  7C 08 02 A6 */	mflr r0
/* 802E5600 002E2560  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5604 002E2564  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E5608 002E2568  88 01 00 08 */	lbz r0, 8(r1)
/* 802E560C 002E256C  98 01 00 0C */	stb r0, 0xc(r1)
/* 802E5610 002E2570  48 00 00 55 */	bl "__advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
/* 802E5614 002E2574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5618 002E2578  7C 08 03 A6 */	mtlr r0
/* 802E561C 002E257C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5620 002E2580  4E 80 00 20 */	blr

.global "advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
"advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i":
/* 802E5624 002E2584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5628 002E2588  7C 08 02 A6 */	mflr r0
/* 802E562C 002E258C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5630 002E2590  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E5634 002E2594  88 01 00 08 */	lbz r0, 8(r1)
/* 802E5638 002E2598  98 01 00 0C */	stb r0, 0xc(r1)
/* 802E563C 002E259C  48 00 00 15 */	bl "__advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
/* 802E5640 002E25A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5644 002E25A4  7C 08 03 A6 */	mtlr r0
/* 802E5648 002E25A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802E564C 002E25AC  4E 80 00 20 */	blr

.global "__advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
"__advance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag":
/* 802E5650 002E25B0  1C 04 00 34 */	mulli r0, r4, 0x34
/* 802E5654 002E25B4  80 83 00 00 */	lwz r4, 0(r3)
/* 802E5658 002E25B8  7C 04 02 14 */	add r0, r4, r0
/* 802E565C 002E25BC  90 03 00 00 */	stw r0, 0(r3)
/* 802E5660 002E25C0  4E 80 00 20 */	blr

.global "__advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
"__advance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag":
/* 802E5664 002E25C4  1C 04 00 34 */	mulli r0, r4, 0x34
/* 802E5668 002E25C8  80 83 00 00 */	lwz r4, 0(r3)
/* 802E566C 002E25CC  7C 04 02 14 */	add r0, r4, r0
/* 802E5670 002E25D0  90 03 00 00 */	stw r0, 0(r3)
/* 802E5674 002E25D4  4E 80 00 20 */	blr

.global "distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 802E5678 002E25D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E567C 002E25DC  7C 08 02 A6 */	mflr r0
/* 802E5680 002E25E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5684 002E25E4  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E5688 002E25E8  88 E1 00 08 */	lbz r7, 8(r1)
/* 802E568C 002E25EC  80 C4 00 00 */	lwz r6, 0(r4)
/* 802E5690 002E25F0  38 81 00 10 */	addi r4, r1, 0x10
/* 802E5694 002E25F4  80 03 00 00 */	lwz r0, 0(r3)
/* 802E5698 002E25F8  38 61 00 14 */	addi r3, r1, 0x14
/* 802E569C 002E25FC  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802E56A0 002E2600  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802E56A4 002E2604  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E56A8 002E2608  48 00 00 81 */	bl "__distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
/* 802E56AC 002E260C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E56B0 002E2610  7C 08 03 A6 */	mtlr r0
/* 802E56B4 002E2614  38 21 00 20 */	addi r1, r1, 0x20
/* 802E56B8 002E2618  4E 80 00 20 */	blr

.global "distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 802E56BC 002E261C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E56C0 002E2620  7C 08 02 A6 */	mflr r0
/* 802E56C4 002E2624  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E56C8 002E2628  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E56CC 002E262C  88 E1 00 08 */	lbz r7, 8(r1)
/* 802E56D0 002E2630  80 C4 00 00 */	lwz r6, 0(r4)
/* 802E56D4 002E2634  38 81 00 10 */	addi r4, r1, 0x10
/* 802E56D8 002E2638  80 03 00 00 */	lwz r0, 0(r3)
/* 802E56DC 002E263C  38 61 00 14 */	addi r3, r1, 0x14
/* 802E56E0 002E2640  90 C1 00 10 */	stw r6, 0x10(r1)
/* 802E56E4 002E2644  98 E1 00 0C */	stb r7, 0xc(r1)
/* 802E56E8 002E2648  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E56EC 002E264C  48 00 00 15 */	bl "__distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
/* 802E56F0 002E2650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E56F4 002E2654  7C 08 03 A6 */	mtlr r0
/* 802E56F8 002E2658  38 21 00 20 */	addi r1, r1, 0x20
/* 802E56FC 002E265C  4E 80 00 20 */	blr

.global "__distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
"__distance<Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl120pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag":
/* 802E5700 002E2660  80 A3 00 00 */	lwz r5, 0(r3)
/* 802E5704 002E2664  3C 60 4E C5 */	lis r3, 0x4EC4EC4F@ha
/* 802E5708 002E2668  80 04 00 00 */	lwz r0, 0(r4)
/* 802E570C 002E266C  38 63 EC 4F */	addi r3, r3, 0x4EC4EC4F@l
/* 802E5710 002E2670  7C 05 00 50 */	subf r0, r5, r0
/* 802E5714 002E2674  7C 03 00 96 */	mulhw r0, r3, r0
/* 802E5718 002E2678  7C 00 26 70 */	srawi r0, r0, 4
/* 802E571C 002E267C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802E5720 002E2680  7C 60 1A 14 */	add r3, r0, r3
/* 802E5724 002E2684  4E 80 00 20 */	blr

.global "__distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
"__distance<Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl126const_pointer_iterator<13CPASAnimState,Q24rstl50vector<13CPASAnimState,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag":
/* 802E5728 002E2688  80 A3 00 00 */	lwz r5, 0(r3)
/* 802E572C 002E268C  3C 60 4E C5 */	lis r3, 0x4EC4EC4F@ha
/* 802E5730 002E2690  80 04 00 00 */	lwz r0, 0(r4)
/* 802E5734 002E2694  38 63 EC 4F */	addi r3, r3, 0x4EC4EC4F@l
/* 802E5738 002E2698  7C 05 00 50 */	subf r0, r5, r0
/* 802E573C 002E269C  7C 03 00 96 */	mulhw r0, r3, r0
/* 802E5740 002E26A0  7C 00 26 70 */	srawi r0, r0, 4
/* 802E5744 002E26A4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802E5748 002E26A8  7C 60 1A 14 */	add r3, r0, r3
/* 802E574C 002E26AC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6DB0
lbl_803D6DB0:
	# ROM: 0x3D3DB0
	.asciz "??(??)"
	.balign 4


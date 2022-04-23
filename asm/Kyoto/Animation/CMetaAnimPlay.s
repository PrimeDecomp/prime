.include "macros.inc"

.section .data

.global lbl_803ECD30
lbl_803ECD30:
	# ROM: 0x3E9D30
	.4byte 0
	.4byte 0
	.4byte __dt__13CMetaAnimPlayFv
	.4byte GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
	.4byte "GetUniquePrimitives__13CMetaAnimPlayCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
	.4byte GetType__13CMetaAnimPlayCFv
	.4byte WriteAnimData__13CMetaAnimPlayCFR13COutputStream
	.4byte VGetAnimationTree__13CMetaAnimPlayCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders

.section .sdata

.global lbl_805A8720
lbl_805A8720:
	# ROM: 0x3F60C0
	.byte 0x01

.global lbl_805A8721
lbl_805A8721:
	# ROM: 0x3F60C1
	.byte 0x00

.global lbl_805A8722
lbl_805A8722:
	# ROM: 0x3F60C2
	.byte 0x01, 0x00
	.4byte 0

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global __dt__13CMetaAnimPlayFv
__dt__13CMetaAnimPlayFv:
/* 802E09E8 002DD948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E09EC 002DD94C  7C 08 02 A6 */	mflr r0
/* 802E09F0 002DD950  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E09F4 002DD954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E09F8 002DD958  7C 9F 23 78 */	mr r31, r4
/* 802E09FC 002DD95C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E0A00 002DD960  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E0A04 002DD964  41 82 00 48 */	beq lbl_802E0A4C
/* 802E0A08 002DD968  3C 60 80 3F */	lis r3, lbl_803ECD30@ha
/* 802E0A0C 002DD96C  34 1E 00 04 */	addic. r0, r30, 4
/* 802E0A10 002DD970  38 03 CD 30 */	addi r0, r3, lbl_803ECD30@l
/* 802E0A14 002DD974  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0A18 002DD978  41 82 00 10 */	beq lbl_802E0A28
/* 802E0A1C 002DD97C  34 7E 00 0C */	addic. r3, r30, 0xc
/* 802E0A20 002DD980  41 82 00 08 */	beq lbl_802E0A28
/* 802E0A24 002DD984  48 05 D0 BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E0A28:
/* 802E0A28 002DD988  28 1E 00 00 */	cmplwi r30, 0
/* 802E0A2C 002DD98C  41 82 00 10 */	beq lbl_802E0A3C
/* 802E0A30 002DD990  3C 60 80 3F */	lis r3, lbl_803ECDF0@ha
/* 802E0A34 002DD994  38 03 CD F0 */	addi r0, r3, lbl_803ECDF0@l
/* 802E0A38 002DD998  90 1E 00 00 */	stw r0, 0(r30)
lbl_802E0A3C:
/* 802E0A3C 002DD99C  7F E0 07 35 */	extsh. r0, r31
/* 802E0A40 002DD9A0  40 81 00 0C */	ble lbl_802E0A4C
/* 802E0A44 002DD9A4  7F C3 F3 78 */	mr r3, r30
/* 802E0A48 002DD9A8  48 03 4E E9 */	bl Free__7CMemoryFPCv
lbl_802E0A4C:
/* 802E0A4C 002DD9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0A50 002DD9B0  7F C3 F3 78 */	mr r3, r30
/* 802E0A54 002DD9B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E0A58 002DD9B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E0A5C 002DD9BC  7C 08 03 A6 */	mtlr r0
/* 802E0A60 002DD9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0A64 002DD9C4  4E 80 00 20 */	blr 

.global GetType__13CMetaAnimPlayCFv
GetType__13CMetaAnimPlayCFv:
/* 802E0A68 002DD9C8  38 60 00 00 */	li r3, 0
/* 802E0A6C 002DD9CC  4E 80 00 20 */	blr 

.global WriteAnimData__13CMetaAnimPlayCFR13COutputStream
WriteAnimData__13CMetaAnimPlayCFR13COutputStream:
/* 802E0A70 002DD9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0A74 002DD9D4  7C 08 02 A6 */	mflr r0
/* 802E0A78 002DD9D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E0A7C 002DD9DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E0A80 002DD9E0  7C 9F 23 78 */	mr r31, r4
/* 802E0A84 002DD9E4  93 C1 00 08 */	stw r30, 8(r1)
/* 802E0A88 002DD9E8  7C 7E 1B 78 */	mr r30, r3
/* 802E0A8C 002DD9EC  38 7E 00 04 */	addi r3, r30, 4
/* 802E0A90 002DD9F0  48 00 4E 19 */	bl PutTo__10CPrimitiveCFR13COutputStream
/* 802E0A94 002DD9F4  7F E4 FB 78 */	mr r4, r31
/* 802E0A98 002DD9F8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802E0A9C 002DD9FC  48 06 78 99 */	bl PutTo__13CCharAnimTimeCFR13COutputStream
/* 802E0AA0 002DDA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E0AA4 002DDA04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E0AA8 002DDA08  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E0AAC 002DDA0C  7C 08 03 A6 */	mtlr r0
/* 802E0AB0 002DDA10  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0AB4 002DDA14  4E 80 00 20 */	blr 

.global "GetUniquePrimitives__13CMetaAnimPlayCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
"GetUniquePrimitives__13CMetaAnimPlayCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>":
/* 802E0AB8 002DDA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E0ABC 002DDA1C  7C 08 02 A6 */	mflr r0
/* 802E0AC0 002DDA20  7C 66 1B 78 */	mr r6, r3
/* 802E0AC4 002DDA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E0AC8 002DDA28  38 61 00 08 */	addi r3, r1, 8
/* 802E0ACC 002DDA2C  38 C6 00 04 */	addi r6, r6, 4
/* 802E0AD0 002DDA30  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 802E0AD4 002DDA34  48 00 01 FD */	bl "insert_into__Q24rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>FPQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>4nodeRC10CPrimitive"
/* 802E0AD8 002DDA38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E0ADC 002DDA3C  7C 08 03 A6 */	mtlr r0
/* 802E0AE0 002DDA40  38 21 00 20 */	addi r1, r1, 0x20
/* 802E0AE4 002DDA44  4E 80 00 20 */	blr 

.global VGetAnimationTree__13CMetaAnimPlayCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
VGetAnimationTree__13CMetaAnimPlayCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders:
/* 802E0AE8 002DDA48  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802E0AEC 002DDA4C  7C 08 02 A6 */	mflr r0
/* 802E0AF0 002DDA50  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802E0AF4 002DDA54  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 802E0AF8 002DDA58  7C 9F 23 78 */	mr r31, r4
/* 802E0AFC 002DDA5C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 802E0B00 002DDA60  7C 7E 1B 78 */	mr r30, r3
/* 802E0B04 002DDA64  93 A1 00 C4 */	stw r29, 0xc4(r1)
/* 802E0B08 002DDA68  93 81 00 C0 */	stw r28, 0xc0(r1)
/* 802E0B0C 002DDA6C  7C BC 2B 78 */	mr r28, r5
/* 802E0B10 002DDA70  88 06 00 40 */	lbz r0, 0x40(r6)
/* 802E0B14 002DDA74  28 00 00 00 */	cmplwi r0, 0
/* 802E0B18 002DDA78  41 82 00 40 */	beq lbl_802E0B58
/* 802E0B1C 002DDA7C  7C C4 33 78 */	mr r4, r6
/* 802E0B20 002DDA80  38 61 00 34 */	addi r3, r1, 0x34
/* 802E0B24 002DDA84  48 00 6A 7D */	bl PreAdvanceForAll__24CMetaAnimTreeBuildOrdersFRC20CPreAdvanceIndicator
/* 802E0B28 002DDA88  7F E4 FB 78 */	mr r4, r31
/* 802E0B2C 002DDA8C  7F C3 F3 78 */	mr r3, r30
/* 802E0B30 002DDA90  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E0B34 002DDA94  7F 85 E3 78 */	mr r5, r28
/* 802E0B38 002DDA98  38 C1 00 34 */	addi r6, r1, 0x34
/* 802E0B3C 002DDA9C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E0B40 002DDAA0  7D 89 03 A6 */	mtctr r12
/* 802E0B44 002DDAA4  4E 80 04 21 */	bctrl 
/* 802E0B48 002DDAA8  38 00 00 00 */	li r0, 0
/* 802E0B4C 002DDAAC  98 01 00 B8 */	stb r0, 0xb8(r1)
/* 802E0B50 002DDAB0  98 01 00 74 */	stb r0, 0x74(r1)
/* 802E0B54 002DDAB4  48 00 01 5C */	b lbl_802E0CB0
lbl_802E0B58:
/* 802E0B58 002DDAB8  80 DF 00 04 */	lwz r6, 4(r31)
/* 802E0B5C 002DDABC  3C 60 41 4E */	lis r3, 0x414E494D@ha
/* 802E0B60 002DDAC0  38 03 49 4D */	addi r0, r3, 0x414E494D@l
/* 802E0B64 002DDAC4  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 802E0B68 002DDAC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E0B6C 002DDACC  38 61 00 10 */	addi r3, r1, 0x10
/* 802E0B70 002DDAD0  38 A1 00 20 */	addi r5, r1, 0x20
/* 802E0B74 002DDAD4  90 C1 00 24 */	stw r6, 0x24(r1)
/* 802E0B78 002DDAD8  81 84 00 00 */	lwz r12, 0(r4)
/* 802E0B7C 002DDADC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E0B80 002DDAE0  7D 89 03 A6 */	mtctr r12
/* 802E0B84 002DDAE4  4E 80 04 21 */	bctrl 
/* 802E0B88 002DDAE8  3B 81 00 28 */	addi r28, r1, 0x28
/* 802E0B8C 002DDAEC  38 81 00 10 */	addi r4, r1, 0x10
/* 802E0B90 002DDAF0  7F 83 E3 78 */	mr r3, r28
/* 802E0B94 002DDAF4  48 06 03 15 */	bl __ct__6CTokenFRC6CToken
/* 802E0B98 002DDAF8  7F 83 E3 78 */	mr r3, r28
/* 802E0B9C 002DDAFC  48 06 02 71 */	bl GetObj__6CTokenFv
/* 802E0BA0 002DDB00  80 03 00 04 */	lwz r0, 4(r3)
/* 802E0BA4 002DDB04  38 61 00 10 */	addi r3, r1, 0x10
/* 802E0BA8 002DDB08  38 80 FF FF */	li r4, -1
/* 802E0BAC 002DDB0C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802E0BB0 002DDB10  48 06 02 91 */	bl __dt__6CTokenFv
/* 802E0BB4 002DDB14  38 61 00 08 */	addi r3, r1, 8
/* 802E0BB8 002DDB18  7F 84 E3 78 */	mr r4, r28
/* 802E0BBC 002DDB1C  38 BF 00 1C */	addi r5, r31, 0x1c
/* 802E0BC0 002DDB20  48 01 D3 B1 */	bl "GetNewReader__21CAllFormatsAnimSourceFRC37TLockedToken<21CAllFormatsAnimSource>RC13CCharAnimTime"
/* 802E0BC4 002DDB24  88 81 00 08 */	lbz r4, 8(r1)
/* 802E0BC8 002DDB28  38 00 00 00 */	li r0, 0
/* 802E0BCC 002DDB2C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802E0BD0 002DDB30  98 81 00 18 */	stb r4, 0x18(r1)
/* 802E0BD4 002DDB34  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802E0BD8 002DDB38  98 01 00 08 */	stb r0, 8(r1)
/* 802E0BDC 002DDB3C  48 00 00 1C */	b lbl_802E0BF8
/* 802E0BE0 002DDB40  41 82 00 18 */	beq lbl_802E0BF8
/* 802E0BE4 002DDB44  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0BE8 002DDB48  38 80 00 01 */	li r4, 1
/* 802E0BEC 002DDB4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E0BF0 002DDB50  7D 89 03 A6 */	mtctr r12
/* 802E0BF4 002DDB54  4E 80 04 21 */	bctrl 
lbl_802E0BF8:
/* 802E0BF8 002DDB58  3C 80 80 3D */	lis r4, lbl_803D6D70@ha
/* 802E0BFC 002DDB5C  38 60 00 20 */	li r3, 0x20
/* 802E0C00 002DDB60  38 84 6D 70 */	addi r4, r4, lbl_803D6D70@l
/* 802E0C04 002DDB64  38 A0 00 00 */	li r5, 0
/* 802E0C08 002DDB68  48 03 4C 65 */	bl __nw__FUlPCcPCc
/* 802E0C0C 002DDB6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E0C10 002DDB70  41 82 00 3C */	beq lbl_802E0C4C
/* 802E0C14 002DDB74  83 9F 00 08 */	lwz r28, 8(r31)
/* 802E0C18 002DDB78  38 9F 00 0C */	addi r4, r31, 0xc
/* 802E0C1C 002DDB7C  48 01 30 B5 */	bl "__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E0C20 002DDB80  3C 60 80 3F */	lis r3, lbl_803ED068@ha
/* 802E0C24 002DDB84  38 A0 00 00 */	li r5, 0
/* 802E0C28 002DDB88  38 63 D0 68 */	addi r3, r3, lbl_803ED068@l
/* 802E0C2C 002DDB8C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802E0C30 002DDB90  90 7D 00 00 */	stw r3, 0(r29)
/* 802E0C34 002DDB94  38 60 00 08 */	li r3, 8
/* 802E0C38 002DDB98  38 80 00 02 */	li r4, 2
/* 802E0C3C 002DDB9C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 802E0C40 002DDBA0  98 A1 00 18 */	stb r5, 0x18(r1)
/* 802E0C44 002DDBA4  93 9D 00 1C */	stw r28, 0x1c(r29)
/* 802E0C48 002DDBA8  48 01 6F 71 */	bl AddToTotalSize__22CCharAnimMemoryMetricsFUiQ222CCharAnimMemoryMetrics14EAnimSubSystem
lbl_802E0C4C:
/* 802E0C4C 002DDBAC  3C 80 80 3D */	lis r4, lbl_803D6D70@ha
/* 802E0C50 002DDBB0  38 60 00 08 */	li r3, 8
/* 802E0C54 002DDBB4  38 84 6D 70 */	addi r4, r4, lbl_803D6D70@l
/* 802E0C58 002DDBB8  38 A0 00 00 */	li r5, 0
/* 802E0C5C 002DDBBC  48 03 4C 11 */	bl __nw__FUlPCcPCc
/* 802E0C60 002DDBC0  28 03 00 00 */	cmplwi r3, 0
/* 802E0C64 002DDBC4  41 82 00 10 */	beq lbl_802E0C74
/* 802E0C68 002DDBC8  93 A3 00 00 */	stw r29, 0(r3)
/* 802E0C6C 002DDBCC  38 00 00 01 */	li r0, 1
/* 802E0C70 002DDBD0  90 03 00 04 */	stw r0, 4(r3)
lbl_802E0C74:
/* 802E0C74 002DDBD4  88 01 00 18 */	lbz r0, 0x18(r1)
/* 802E0C78 002DDBD8  90 7E 00 00 */	stw r3, 0(r30)
/* 802E0C7C 002DDBDC  28 00 00 00 */	cmplwi r0, 0
/* 802E0C80 002DDBE0  41 82 00 24 */	beq lbl_802E0CA4
/* 802E0C84 002DDBE4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 802E0C88 002DDBE8  28 03 00 00 */	cmplwi r3, 0
/* 802E0C8C 002DDBEC  41 82 00 18 */	beq lbl_802E0CA4
/* 802E0C90 002DDBF0  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0C94 002DDBF4  38 80 00 01 */	li r4, 1
/* 802E0C98 002DDBF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802E0C9C 002DDBFC  7D 89 03 A6 */	mtctr r12
/* 802E0CA0 002DDC00  4E 80 04 21 */	bctrl 
lbl_802E0CA4:
/* 802E0CA4 002DDC04  38 61 00 28 */	addi r3, r1, 0x28
/* 802E0CA8 002DDC08  38 80 00 00 */	li r4, 0
/* 802E0CAC 002DDC0C  48 06 01 95 */	bl __dt__6CTokenFv
lbl_802E0CB0:
/* 802E0CB0 002DDC10  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802E0CB4 002DDC14  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 802E0CB8 002DDC18  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 802E0CBC 002DDC1C  83 A1 00 C4 */	lwz r29, 0xc4(r1)
/* 802E0CC0 002DDC20  83 81 00 C0 */	lwz r28, 0xc0(r1)
/* 802E0CC4 002DDC24  7C 08 03 A6 */	mtlr r0
/* 802E0CC8 002DDC28  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802E0CCC 002DDC2C  4E 80 00 20 */	blr 

.global "insert_into__Q24rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>FPQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>4nodeRC10CPrimitive"
"insert_into__Q24rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>FPQ34rstl130red_black_tree<10CPrimitive,10CPrimitive,0,Q24rstl22identity<10CPrimitive>,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>4nodeRC10CPrimitive":
/* 802E0CD0 002DDC30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E0CD4 002DDC34  7C 08 02 A6 */	mflr r0
/* 802E0CD8 002DDC38  28 05 00 00 */	cmplwi r5, 0
/* 802E0CDC 002DDC3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E0CE0 002DDC40  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802E0CE4 002DDC44  7C 7C 1B 78 */	mr r28, r3
/* 802E0CE8 002DDC48  7C 9D 23 78 */	mr r29, r4
/* 802E0CEC 002DDC4C  7C DE 33 78 */	mr r30, r6
/* 802E0CF0 002DDC50  40 82 00 94 */	bne lbl_802E0D84
/* 802E0CF4 002DDC54  3C 80 80 3D */	lis r4, lbl_803D6D70@ha
/* 802E0CF8 002DDC58  38 60 00 28 */	li r3, 0x28
/* 802E0CFC 002DDC5C  38 84 6D 70 */	addi r4, r4, lbl_803D6D70@l
/* 802E0D00 002DDC60  38 A0 00 00 */	li r5, 0
/* 802E0D04 002DDC64  48 03 4B 15 */	bl __nwa__FUlPCcPCc
/* 802E0D08 002DDC68  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E0D0C 002DDC6C  41 82 00 3C */	beq lbl_802E0D48
/* 802E0D10 002DDC70  38 00 00 00 */	li r0, 0
/* 802E0D14 002DDC74  34 BF 00 10 */	addic. r5, r31, 0x10
/* 802E0D18 002DDC78  90 1F 00 00 */	stw r0, 0(r31)
/* 802E0D1C 002DDC7C  90 1F 00 04 */	stw r0, 4(r31)
/* 802E0D20 002DDC80  90 1F 00 08 */	stw r0, 8(r31)
/* 802E0D24 002DDC84  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802E0D28 002DDC88  41 82 00 20 */	beq lbl_802E0D48
/* 802E0D2C 002DDC8C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802E0D30 002DDC90  38 65 00 08 */	addi r3, r5, 8
/* 802E0D34 002DDC94  38 9E 00 08 */	addi r4, r30, 8
/* 802E0D38 002DDC98  90 05 00 00 */	stw r0, 0(r5)
/* 802E0D3C 002DDC9C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E0D40 002DDCA0  90 05 00 04 */	stw r0, 4(r5)
/* 802E0D44 002DDCA4  48 05 D4 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802E0D48:
/* 802E0D48 002DDCA8  93 FD 00 10 */	stw r31, 0x10(r29)
/* 802E0D4C 002DDCAC  38 1D 00 08 */	addi r0, r29, 8
/* 802E0D50 002DDCB0  80 7D 00 04 */	lwz r3, 4(r29)
/* 802E0D54 002DDCB4  38 63 00 01 */	addi r3, r3, 1
/* 802E0D58 002DDCB8  90 7D 00 04 */	stw r3, 4(r29)
/* 802E0D5C 002DDCBC  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802E0D60 002DDCC0  90 7D 00 08 */	stw r3, 8(r29)
/* 802E0D64 002DDCC4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802E0D68 002DDCC8  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802E0D6C 002DDCCC  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802E0D70 002DDCD0  90 7C 00 00 */	stw r3, 0(r28)
/* 802E0D74 002DDCD4  90 1C 00 04 */	stw r0, 4(r28)
/* 802E0D78 002DDCD8  88 0D 9B 60 */	lbz r0, lbl_805A8720@sda21(r13)
/* 802E0D7C 002DDCDC  98 1C 00 08 */	stb r0, 8(r28)
/* 802E0D80 002DDCE0  48 00 01 9C */	b lbl_802E0F1C
lbl_802E0D84:
/* 802E0D84 002DDCE4  7C BF 2B 78 */	mr r31, r5
/* 802E0D88 002DDCE8  3B 20 00 00 */	li r25, 0
/* 802E0D8C 002DDCEC  48 00 01 5C */	b lbl_802E0EE8
lbl_802E0D90:
/* 802E0D90 002DDCF0  3B 5F 00 18 */	addi r26, r31, 0x18
/* 802E0D94 002DDCF4  38 7E 00 08 */	addi r3, r30, 8
/* 802E0D98 002DDCF8  7F 44 D3 78 */	mr r4, r26
/* 802E0D9C 002DDCFC  48 05 DC 51 */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E0DA0 002DDD00  54 7B 0F FF */	rlwinm. r27, r3, 1, 0x1f, 0x1f
/* 802E0DA4 002DDD04  40 82 00 30 */	bne lbl_802E0DD4
/* 802E0DA8 002DDD08  7F 43 D3 78 */	mr r3, r26
/* 802E0DAC 002DDD0C  38 9E 00 08 */	addi r4, r30, 8
/* 802E0DB0 002DDD10  48 05 DC 3D */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E0DB4 002DDD14  2C 03 00 00 */	cmpwi r3, 0
/* 802E0DB8 002DDD18  41 80 00 1C */	blt lbl_802E0DD4
/* 802E0DBC 002DDD1C  93 FC 00 00 */	stw r31, 0(r28)
/* 802E0DC0 002DDD20  38 1D 00 08 */	addi r0, r29, 8
/* 802E0DC4 002DDD24  90 1C 00 04 */	stw r0, 4(r28)
/* 802E0DC8 002DDD28  88 0D 9B 61 */	lbz r0, lbl_805A8721@sda21(r13)
/* 802E0DCC 002DDD2C  98 1C 00 08 */	stb r0, 8(r28)
/* 802E0DD0 002DDD30  48 00 01 4C */	b lbl_802E0F1C
lbl_802E0DD4:
/* 802E0DD4 002DDD34  28 1B 00 00 */	cmplwi r27, 0
/* 802E0DD8 002DDD38  41 82 00 8C */	beq lbl_802E0E64
/* 802E0DDC 002DDD3C  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E0DE0 002DDD40  28 00 00 00 */	cmplwi r0, 0
/* 802E0DE4 002DDD44  40 82 00 78 */	bne lbl_802E0E5C
/* 802E0DE8 002DDD48  3C 80 80 3D */	lis r4, lbl_803D6D70@ha
/* 802E0DEC 002DDD4C  38 60 00 28 */	li r3, 0x28
/* 802E0DF0 002DDD50  38 84 6D 70 */	addi r4, r4, lbl_803D6D70@l
/* 802E0DF4 002DDD54  38 A0 00 00 */	li r5, 0
/* 802E0DF8 002DDD58  48 03 4A 21 */	bl __nwa__FUlPCcPCc
/* 802E0DFC 002DDD5C  7C 7B 1B 79 */	or. r27, r3, r3
/* 802E0E00 002DDD60  41 82 00 40 */	beq lbl_802E0E40
/* 802E0E04 002DDD64  38 60 00 00 */	li r3, 0
/* 802E0E08 002DDD68  34 BB 00 10 */	addic. r5, r27, 0x10
/* 802E0E0C 002DDD6C  90 7B 00 00 */	stw r3, 0(r27)
/* 802E0E10 002DDD70  38 00 00 01 */	li r0, 1
/* 802E0E14 002DDD74  90 7B 00 04 */	stw r3, 4(r27)
/* 802E0E18 002DDD78  93 FB 00 08 */	stw r31, 8(r27)
/* 802E0E1C 002DDD7C  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802E0E20 002DDD80  41 82 00 20 */	beq lbl_802E0E40
/* 802E0E24 002DDD84  80 1E 00 00 */	lwz r0, 0(r30)
/* 802E0E28 002DDD88  38 65 00 08 */	addi r3, r5, 8
/* 802E0E2C 002DDD8C  38 9E 00 08 */	addi r4, r30, 8
/* 802E0E30 002DDD90  90 05 00 00 */	stw r0, 0(r5)
/* 802E0E34 002DDD94  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E0E38 002DDD98  90 05 00 04 */	stw r0, 4(r5)
/* 802E0E3C 002DDD9C  48 05 D3 25 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802E0E40:
/* 802E0E40 002DDDA0  93 7F 00 00 */	stw r27, 0(r31)
/* 802E0E44 002DDDA4  7F 79 DB 78 */	mr r25, r27
/* 802E0E48 002DDDA8  80 1D 00 08 */	lwz r0, 8(r29)
/* 802E0E4C 002DDDAC  7C 1F 00 40 */	cmplw r31, r0
/* 802E0E50 002DDDB0  40 82 00 98 */	bne lbl_802E0EE8
/* 802E0E54 002DDDB4  93 7D 00 08 */	stw r27, 8(r29)
/* 802E0E58 002DDDB8  48 00 00 90 */	b lbl_802E0EE8
lbl_802E0E5C:
/* 802E0E5C 002DDDBC  7C 1F 03 78 */	mr r31, r0
/* 802E0E60 002DDDC0  48 00 00 88 */	b lbl_802E0EE8
lbl_802E0E64:
/* 802E0E64 002DDDC4  80 1F 00 04 */	lwz r0, 4(r31)
/* 802E0E68 002DDDC8  28 00 00 00 */	cmplwi r0, 0
/* 802E0E6C 002DDDCC  40 82 00 78 */	bne lbl_802E0EE4
/* 802E0E70 002DDDD0  3C 80 80 3D */	lis r4, lbl_803D6D70@ha
/* 802E0E74 002DDDD4  38 60 00 28 */	li r3, 0x28
/* 802E0E78 002DDDD8  38 84 6D 70 */	addi r4, r4, lbl_803D6D70@l
/* 802E0E7C 002DDDDC  38 A0 00 00 */	li r5, 0
/* 802E0E80 002DDDE0  48 03 49 99 */	bl __nwa__FUlPCcPCc
/* 802E0E84 002DDDE4  7C 7B 1B 79 */	or. r27, r3, r3
/* 802E0E88 002DDDE8  41 82 00 40 */	beq lbl_802E0EC8
/* 802E0E8C 002DDDEC  38 60 00 00 */	li r3, 0
/* 802E0E90 002DDDF0  34 BB 00 10 */	addic. r5, r27, 0x10
/* 802E0E94 002DDDF4  90 7B 00 00 */	stw r3, 0(r27)
/* 802E0E98 002DDDF8  38 00 00 01 */	li r0, 1
/* 802E0E9C 002DDDFC  90 7B 00 04 */	stw r3, 4(r27)
/* 802E0EA0 002DDE00  93 FB 00 08 */	stw r31, 8(r27)
/* 802E0EA4 002DDE04  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802E0EA8 002DDE08  41 82 00 20 */	beq lbl_802E0EC8
/* 802E0EAC 002DDE0C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802E0EB0 002DDE10  38 65 00 08 */	addi r3, r5, 8
/* 802E0EB4 002DDE14  38 9E 00 08 */	addi r4, r30, 8
/* 802E0EB8 002DDE18  90 05 00 00 */	stw r0, 0(r5)
/* 802E0EBC 002DDE1C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E0EC0 002DDE20  90 05 00 04 */	stw r0, 4(r5)
/* 802E0EC4 002DDE24  48 05 D2 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802E0EC8:
/* 802E0EC8 002DDE28  93 7F 00 04 */	stw r27, 4(r31)
/* 802E0ECC 002DDE2C  7F 79 DB 78 */	mr r25, r27
/* 802E0ED0 002DDE30  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802E0ED4 002DDE34  7C 1F 00 40 */	cmplw r31, r0
/* 802E0ED8 002DDE38  40 82 00 10 */	bne lbl_802E0EE8
/* 802E0EDC 002DDE3C  93 7D 00 0C */	stw r27, 0xc(r29)
/* 802E0EE0 002DDE40  48 00 00 08 */	b lbl_802E0EE8
lbl_802E0EE4:
/* 802E0EE4 002DDE44  7C 1F 03 78 */	mr r31, r0
lbl_802E0EE8:
/* 802E0EE8 002DDE48  28 19 00 00 */	cmplwi r25, 0
/* 802E0EEC 002DDE4C  41 82 FE A4 */	beq lbl_802E0D90
/* 802E0EF0 002DDE50  80 BD 00 04 */	lwz r5, 4(r29)
/* 802E0EF4 002DDE54  7F 24 CB 78 */	mr r4, r25
/* 802E0EF8 002DDE58  38 7D 00 08 */	addi r3, r29, 8
/* 802E0EFC 002DDE5C  38 05 00 01 */	addi r0, r5, 1
/* 802E0F00 002DDE60  90 1D 00 04 */	stw r0, 4(r29)
/* 802E0F04 002DDE64  48 05 BB 95 */	bl rbtree_rebalance__4rstlFPvPv
/* 802E0F08 002DDE68  93 3C 00 00 */	stw r25, 0(r28)
/* 802E0F0C 002DDE6C  38 1D 00 08 */	addi r0, r29, 8
/* 802E0F10 002DDE70  90 1C 00 04 */	stw r0, 4(r28)
/* 802E0F14 002DDE74  88 0D 9B 62 */	lbz r0, lbl_805A8722@sda21(r13)
/* 802E0F18 002DDE78  98 1C 00 08 */	stb r0, 8(r28)
lbl_802E0F1C:
/* 802E0F1C 002DDE7C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802E0F20 002DDE80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E0F24 002DDE84  7C 08 03 A6 */	mtlr r0
/* 802E0F28 002DDE88  38 21 00 30 */	addi r1, r1, 0x30
/* 802E0F2C 002DDE8C  4E 80 00 20 */	blr 

.include "macros.inc"

.section .data

.global lbl_803ECCD0
lbl_803ECCD0:
	# ROM: 0x3E9CD0
	.4byte 0
	.4byte 0
	.4byte __dt__14CMetaAnimBlendFv
	.4byte GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
	.4byte "GetUniquePrimitives__14CMetaAnimBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
	.4byte GetType__14CMetaAnimBlendCFv
	.4byte WriteAnimData__14CMetaAnimBlendCFR13COutputStream
	.4byte VGetAnimationTree__14CMetaAnimBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders


.section .text, "ax"

.global __dt__14CMetaAnimBlendFv
__dt__14CMetaAnimBlendFv:
/* 802DF8E8 002DC848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF8EC 002DC84C  7C 08 02 A6 */	mflr r0
/* 802DF8F0 002DC850  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF8F4 002DC854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF8F8 002DC858  7C 9F 23 78 */	mr r31, r4
/* 802DF8FC 002DC85C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF900 002DC860  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DF904 002DC864  41 82 00 54 */	beq lbl_802DF958
/* 802DF908 002DC868  3C 60 80 3F */	lis r3, lbl_803ECCD0@ha
/* 802DF90C 002DC86C  34 1E 00 08 */	addic. r0, r30, 8
/* 802DF910 002DC870  38 03 CC D0 */	addi r0, r3, lbl_803ECCD0@l
/* 802DF914 002DC874  90 1E 00 00 */	stw r0, 0(r30)
/* 802DF918 002DC878  41 82 00 0C */	beq lbl_802DF924
/* 802DF91C 002DC87C  38 7E 00 08 */	addi r3, r30, 8
/* 802DF920 002DC880  4B D5 16 11 */	bl sub_80030f30
lbl_802DF924:
/* 802DF924 002DC884  34 1E 00 04 */	addic. r0, r30, 4
/* 802DF928 002DC888  41 82 00 0C */	beq lbl_802DF934
/* 802DF92C 002DC88C  38 7E 00 04 */	addi r3, r30, 4
/* 802DF930 002DC890  4B D5 16 01 */	bl sub_80030f30
lbl_802DF934:
/* 802DF934 002DC894  28 1E 00 00 */	cmplwi r30, 0
/* 802DF938 002DC898  41 82 00 10 */	beq lbl_802DF948
/* 802DF93C 002DC89C  3C 60 80 3F */	lis r3, lbl_803ECDF0@ha
/* 802DF940 002DC8A0  38 03 CD F0 */	addi r0, r3, lbl_803ECDF0@l
/* 802DF944 002DC8A4  90 1E 00 00 */	stw r0, 0(r30)
lbl_802DF948:
/* 802DF948 002DC8A8  7F E0 07 35 */	extsh. r0, r31
/* 802DF94C 002DC8AC  40 81 00 0C */	ble lbl_802DF958
/* 802DF950 002DC8B0  7F C3 F3 78 */	mr r3, r30
/* 802DF954 002DC8B4  48 03 5F DD */	bl Free__7CMemoryFPCv
lbl_802DF958:
/* 802DF958 002DC8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF95C 002DC8BC  7F C3 F3 78 */	mr r3, r30
/* 802DF960 002DC8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF964 002DC8C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF968 002DC8C8  7C 08 03 A6 */	mtlr r0
/* 802DF96C 002DC8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF970 002DC8D0  4E 80 00 20 */	blr

.global GetType__14CMetaAnimBlendCFv
GetType__14CMetaAnimBlendCFv:
/* 802DF974 002DC8D4  38 60 00 01 */	li r3, 1
/* 802DF978 002DC8D8  4E 80 00 20 */	blr

.global WriteAnimData__14CMetaAnimBlendCFR13COutputStream
WriteAnimData__14CMetaAnimBlendCFR13COutputStream:
/* 802DF97C 002DC8DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF980 002DC8E0  7C 08 02 A6 */	mflr r0
/* 802DF984 002DC8E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF988 002DC8E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DF98C 002DC8EC  7C 7F 1B 78 */	mr r31, r3
/* 802DF990 002DC8F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DF994 002DC8F4  7C 9E 23 78 */	mr r30, r4
/* 802DF998 002DC8F8  80 63 00 04 */	lwz r3, 4(r3)
/* 802DF99C 002DC8FC  80 63 00 00 */	lwz r3, 0(r3)
/* 802DF9A0 002DC900  48 00 79 81 */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802DF9A4 002DC904  80 7F 00 08 */	lwz r3, 8(r31)
/* 802DF9A8 002DC908  7F C4 F3 78 */	mr r4, r30
/* 802DF9AC 002DC90C  80 63 00 00 */	lwz r3, 0(r3)
/* 802DF9B0 002DC910  48 00 79 71 */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802DF9B4 002DC914  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802DF9B8 002DC918  7F C3 F3 78 */	mr r3, r30
/* 802DF9BC 002DC91C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802DF9C0 002DC920  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802DF9C4 002DC924  90 01 00 08 */	stw r0, 8(r1)
/* 802DF9C8 002DC928  48 05 FA F1 */	bl FlushShiftRegister__13COutputStreamFv
/* 802DF9CC 002DC92C  7F C3 F3 78 */	mr r3, r30
/* 802DF9D0 002DC930  38 81 00 08 */	addi r4, r1, 8
/* 802DF9D4 002DC934  38 A0 00 04 */	li r5, 4
/* 802DF9D8 002DC938  48 05 FB D1 */	bl DoPut__13COutputStreamFPCvUl
/* 802DF9DC 002DC93C  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802DF9E0 002DC940  7F C3 F3 78 */	mr r3, r30
/* 802DF9E4 002DC944  7C 04 00 D0 */	neg r0, r4
/* 802DF9E8 002DC948  7C 00 23 78 */	or r0, r0, r4
/* 802DF9EC 002DC94C  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 802DF9F0 002DC950  48 05 FA C9 */	bl FlushShiftRegister__13COutputStreamFv
/* 802DF9F4 002DC954  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DF9F8 002DC958  80 1E 00 08 */	lwz r0, 8(r30)
/* 802DF9FC 002DC95C  7C 03 00 40 */	cmplw r3, r0
/* 802DFA00 002DC960  41 80 00 0C */	blt lbl_802DFA0C
/* 802DFA04 002DC964  7F C3 F3 78 */	mr r3, r30
/* 802DFA08 002DC968  48 05 FB 1D */	bl DoFlush__13COutputStreamFv
lbl_802DFA0C:
/* 802DFA0C 002DC96C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802DFA10 002DC970  38 03 00 01 */	addi r0, r3, 1
/* 802DFA14 002DC974  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802DFA18 002DC978  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DFA1C 002DC97C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802DFA20 002DC980  38 03 00 01 */	addi r0, r3, 1
/* 802DFA24 002DC984  90 1E 00 04 */	stw r0, 4(r30)
/* 802DFA28 002DC988  7F E4 19 AE */	stbx r31, r4, r3
/* 802DFA2C 002DC98C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFA30 002DC990  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFA34 002DC994  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFA38 002DC998  7C 08 03 A6 */	mtlr r0
/* 802DFA3C 002DC99C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFA40 002DC9A0  4E 80 00 20 */	blr

.global "GetUniquePrimitives__14CMetaAnimBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
"GetUniquePrimitives__14CMetaAnimBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>":
/* 802DFA44 002DC9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DFA48 002DC9A8  7C 08 02 A6 */	mflr r0
/* 802DFA4C 002DC9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DFA50 002DC9B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DFA54 002DC9B4  7C 9F 23 78 */	mr r31, r4
/* 802DFA58 002DC9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DFA5C 002DC9BC  7C 7E 1B 78 */	mr r30, r3
/* 802DFA60 002DC9C0  80 63 00 04 */	lwz r3, 4(r3)
/* 802DFA64 002DC9C4  80 63 00 00 */	lwz r3, 0(r3)
/* 802DFA68 002DC9C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFA6C 002DC9CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802DFA70 002DC9D0  7D 89 03 A6 */	mtctr r12
/* 802DFA74 002DC9D4  4E 80 04 21 */	bctrl
/* 802DFA78 002DC9D8  80 7E 00 08 */	lwz r3, 8(r30)
/* 802DFA7C 002DC9DC  7F E4 FB 78 */	mr r4, r31
/* 802DFA80 002DC9E0  80 63 00 00 */	lwz r3, 0(r3)
/* 802DFA84 002DC9E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DFA88 002DC9E8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802DFA8C 002DC9EC  7D 89 03 A6 */	mtctr r12
/* 802DFA90 002DC9F0  4E 80 04 21 */	bctrl
/* 802DFA94 002DC9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DFA98 002DC9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DFA9C 002DC9FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DFAA0 002DCA00  7C 08 03 A6 */	mtlr r0
/* 802DFAA4 002DCA04  38 21 00 10 */	addi r1, r1, 0x10
/* 802DFAA8 002DCA08  4E 80 00 20 */	blr

.global VGetAnimationTree__14CMetaAnimBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
VGetAnimationTree__14CMetaAnimBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders:
/* 802DFAAC 002DCA0C  94 21 FC F0 */	stwu r1, -0x310(r1)
/* 802DFAB0 002DCA10  7C 08 02 A6 */	mflr r0
/* 802DFAB4 002DCA14  90 01 03 14 */	stw r0, 0x314(r1)
/* 802DFAB8 002DCA18  DB E1 03 00 */	stfd f31, 0x300(r1)
/* 802DFABC 002DCA1C  F3 E1 03 08 */	psq_st f31, 776(r1), 0, qr0
/* 802DFAC0 002DCA20  BE E1 02 DC */	stmw r23, 0x2dc(r1)
/* 802DFAC4 002DCA24  7C 7C 1B 78 */	mr r28, r3
/* 802DFAC8 002DCA28  7C 9D 23 78 */	mr r29, r4
/* 802DFACC 002DCA2C  7C BE 2B 78 */	mr r30, r5
/* 802DFAD0 002DCA30  7C DF 33 78 */	mr r31, r6
/* 802DFAD4 002DCA34  38 61 01 38 */	addi r3, r1, 0x138
/* 802DFAD8 002DCA38  48 00 7D 41 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802DFADC 002DCA3C  88 01 01 78 */	lbz r0, 0x178(r1)
/* 802DFAE0 002DCA40  3A E1 02 48 */	addi r23, r1, 0x248
/* 802DFAE4 002DCA44  28 00 00 00 */	cmplwi r0, 0
/* 802DFAE8 002DCA48  98 01 02 88 */	stb r0, 0x288(r1)
/* 802DFAEC 002DCA4C  41 82 00 8C */	beq lbl_802DFB78
/* 802DFAF0 002DCA50  28 17 00 00 */	cmplwi r23, 0
/* 802DFAF4 002DCA54  41 82 00 84 */	beq lbl_802DFB78
/* 802DFAF8 002DCA58  8B 01 01 38 */	lbz r24, 0x138(r1)
/* 802DFAFC 002DCA5C  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 802DFB00 002DCA60  83 21 01 40 */	lwz r25, 0x140(r1)
/* 802DFB04 002DCA64  83 61 01 44 */	lwz r27, 0x144(r1)
/* 802DFB08 002DCA68  83 41 01 48 */	lwz r26, 0x148(r1)
/* 802DFB0C 002DCA6C  81 81 01 4C */	lwz r12, 0x14c(r1)
/* 802DFB10 002DCA70  81 61 01 50 */	lwz r11, 0x150(r1)
/* 802DFB14 002DCA74  81 41 01 54 */	lwz r10, 0x154(r1)
/* 802DFB18 002DCA78  81 21 01 58 */	lwz r9, 0x158(r1)
/* 802DFB1C 002DCA7C  81 01 01 5C */	lwz r8, 0x15c(r1)
/* 802DFB20 002DCA80  80 E1 01 60 */	lwz r7, 0x160(r1)
/* 802DFB24 002DCA84  80 C1 01 64 */	lwz r6, 0x164(r1)
/* 802DFB28 002DCA88  80 A1 01 68 */	lwz r5, 0x168(r1)
/* 802DFB2C 002DCA8C  80 81 01 6C */	lwz r4, 0x16c(r1)
/* 802DFB30 002DCA90  80 61 01 70 */	lwz r3, 0x170(r1)
/* 802DFB34 002DCA94  A0 01 01 74 */	lhz r0, 0x174(r1)
/* 802DFB38 002DCA98  9B 01 02 48 */	stb r24, 0x248(r1)
/* 802DFB3C 002DCA9C  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 802DFB40 002DCAA0  93 21 02 50 */	stw r25, 0x250(r1)
/* 802DFB44 002DCAA4  93 61 02 54 */	stw r27, 0x254(r1)
/* 802DFB48 002DCAA8  93 41 02 58 */	stw r26, 0x258(r1)
/* 802DFB4C 002DCAAC  91 81 02 5C */	stw r12, 0x25c(r1)
/* 802DFB50 002DCAB0  91 61 02 60 */	stw r11, 0x260(r1)
/* 802DFB54 002DCAB4  91 41 02 64 */	stw r10, 0x264(r1)
/* 802DFB58 002DCAB8  91 21 02 68 */	stw r9, 0x268(r1)
/* 802DFB5C 002DCABC  91 01 02 6C */	stw r8, 0x26c(r1)
/* 802DFB60 002DCAC0  90 E1 02 70 */	stw r7, 0x270(r1)
/* 802DFB64 002DCAC4  90 C1 02 74 */	stw r6, 0x274(r1)
/* 802DFB68 002DCAC8  90 A1 02 78 */	stw r5, 0x278(r1)
/* 802DFB6C 002DCACC  90 81 02 7C */	stw r4, 0x27c(r1)
/* 802DFB70 002DCAD0  90 61 02 80 */	stw r3, 0x280(r1)
/* 802DFB74 002DCAD4  B0 01 02 84 */	sth r0, 0x284(r1)
lbl_802DFB78:
/* 802DFB78 002DCAD8  88 01 01 BC */	lbz r0, 0x1bc(r1)
/* 802DFB7C 002DCADC  28 00 00 00 */	cmplwi r0, 0
/* 802DFB80 002DCAE0  98 01 02 CC */	stb r0, 0x2cc(r1)
/* 802DFB84 002DCAE4  41 82 00 8C */	beq lbl_802DFC10
/* 802DFB88 002DCAE8  34 97 00 44 */	addic. r4, r23, 0x44
/* 802DFB8C 002DCAEC  41 82 00 84 */	beq lbl_802DFC10
/* 802DFB90 002DCAF0  88 01 01 7C */	lbz r0, 0x17c(r1)
/* 802DFB94 002DCAF4  98 04 00 00 */	stb r0, 0(r4)
/* 802DFB98 002DCAF8  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 802DFB9C 002DCAFC  D0 04 00 04 */	stfs f0, 4(r4)
/* 802DFBA0 002DCB00  80 01 01 84 */	lwz r0, 0x184(r1)
/* 802DFBA4 002DCB04  90 04 00 08 */	stw r0, 8(r4)
/* 802DFBA8 002DCB08  80 61 01 88 */	lwz r3, 0x188(r1)
/* 802DFBAC 002DCB0C  80 01 01 8C */	lwz r0, 0x18c(r1)
/* 802DFBB0 002DCB10  90 64 00 0C */	stw r3, 0xc(r4)
/* 802DFBB4 002DCB14  90 04 00 10 */	stw r0, 0x10(r4)
/* 802DFBB8 002DCB18  80 61 01 90 */	lwz r3, 0x190(r1)
/* 802DFBBC 002DCB1C  80 01 01 94 */	lwz r0, 0x194(r1)
/* 802DFBC0 002DCB20  90 64 00 14 */	stw r3, 0x14(r4)
/* 802DFBC4 002DCB24  90 04 00 18 */	stw r0, 0x18(r4)
/* 802DFBC8 002DCB28  80 61 01 98 */	lwz r3, 0x198(r1)
/* 802DFBCC 002DCB2C  80 01 01 9C */	lwz r0, 0x19c(r1)
/* 802DFBD0 002DCB30  90 64 00 1C */	stw r3, 0x1c(r4)
/* 802DFBD4 002DCB34  90 04 00 20 */	stw r0, 0x20(r4)
/* 802DFBD8 002DCB38  80 61 01 A0 */	lwz r3, 0x1a0(r1)
/* 802DFBDC 002DCB3C  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 802DFBE0 002DCB40  90 64 00 24 */	stw r3, 0x24(r4)
/* 802DFBE4 002DCB44  90 04 00 28 */	stw r0, 0x28(r4)
/* 802DFBE8 002DCB48  80 61 01 A8 */	lwz r3, 0x1a8(r1)
/* 802DFBEC 002DCB4C  80 01 01 AC */	lwz r0, 0x1ac(r1)
/* 802DFBF0 002DCB50  90 64 00 2C */	stw r3, 0x2c(r4)
/* 802DFBF4 002DCB54  90 04 00 30 */	stw r0, 0x30(r4)
/* 802DFBF8 002DCB58  80 61 01 B0 */	lwz r3, 0x1b0(r1)
/* 802DFBFC 002DCB5C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 802DFC00 002DCB60  90 64 00 34 */	stw r3, 0x34(r4)
/* 802DFC04 002DCB64  90 04 00 38 */	stw r0, 0x38(r4)
/* 802DFC08 002DCB68  A0 01 01 B8 */	lhz r0, 0x1b8(r1)
/* 802DFC0C 002DCB6C  B0 04 00 3C */	sth r0, 0x3c(r4)
lbl_802DFC10:
/* 802DFC10 002DCB70  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 802DFC14 002DCB74  38 60 00 00 */	li r3, 0
/* 802DFC18 002DCB78  98 61 01 BC */	stb r3, 0x1bc(r1)
/* 802DFC1C 002DCB7C  3B 60 00 00 */	li r27, 0
/* 802DFC20 002DCB80  28 00 00 00 */	cmplwi r0, 0
/* 802DFC24 002DCB84  3B 40 00 00 */	li r26, 0
/* 802DFC28 002DCB88  98 61 01 78 */	stb r3, 0x178(r1)
/* 802DFC2C 002DCB8C  41 82 00 1C */	beq lbl_802DFC48
/* 802DFC30 002DCB90  7F E4 FB 78 */	mr r4, r31
/* 802DFC34 002DCB94  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802DFC38 002DCB98  48 00 79 69 */	bl PreAdvanceForAll__24CMetaAnimTreeBuildOrdersFRC20CPreAdvanceIndicator
/* 802DFC3C 002DCB9C  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802DFC40 002DCBA0  3B 60 00 01 */	li r27, 1
/* 802DFC44 002DCBA4  48 00 00 14 */	b lbl_802DFC58
lbl_802DFC48:
/* 802DFC48 002DCBA8  38 61 00 28 */	addi r3, r1, 0x28
/* 802DFC4C 002DCBAC  48 00 7B CD */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802DFC50 002DCBB0  3B 40 00 01 */	li r26, 1
/* 802DFC54 002DCBB4  38 61 00 28 */	addi r3, r1, 0x28
lbl_802DFC58:
/* 802DFC58 002DCBB8  88 03 00 40 */	lbz r0, 0x40(r3)
/* 802DFC5C 002DCBBC  38 A1 01 C0 */	addi r5, r1, 0x1c0
/* 802DFC60 002DCBC0  28 00 00 00 */	cmplwi r0, 0
/* 802DFC64 002DCBC4  98 01 02 00 */	stb r0, 0x200(r1)
/* 802DFC68 002DCBC8  41 82 00 8C */	beq lbl_802DFCF4
/* 802DFC6C 002DCBCC  28 05 00 00 */	cmplwi r5, 0
/* 802DFC70 002DCBD0  41 82 00 84 */	beq lbl_802DFCF4
/* 802DFC74 002DCBD4  88 03 00 00 */	lbz r0, 0(r3)
/* 802DFC78 002DCBD8  98 01 01 C0 */	stb r0, 0x1c0(r1)
/* 802DFC7C 002DCBDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 802DFC80 002DCBE0  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 802DFC84 002DCBE4  80 03 00 08 */	lwz r0, 8(r3)
/* 802DFC88 002DCBE8  90 01 01 C8 */	stw r0, 0x1c8(r1)
/* 802DFC8C 002DCBEC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802DFC90 002DCBF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802DFC94 002DCBF4  90 81 01 CC */	stw r4, 0x1cc(r1)
/* 802DFC98 002DCBF8  90 01 01 D0 */	stw r0, 0x1d0(r1)
/* 802DFC9C 002DCBFC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802DFCA0 002DCC00  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802DFCA4 002DCC04  90 81 01 D4 */	stw r4, 0x1d4(r1)
/* 802DFCA8 002DCC08  90 01 01 D8 */	stw r0, 0x1d8(r1)
/* 802DFCAC 002DCC0C  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802DFCB0 002DCC10  80 03 00 20 */	lwz r0, 0x20(r3)
/* 802DFCB4 002DCC14  90 81 01 DC */	stw r4, 0x1dc(r1)
/* 802DFCB8 002DCC18  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 802DFCBC 002DCC1C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 802DFCC0 002DCC20  80 03 00 28 */	lwz r0, 0x28(r3)
/* 802DFCC4 002DCC24  90 81 01 E4 */	stw r4, 0x1e4(r1)
/* 802DFCC8 002DCC28  90 01 01 E8 */	stw r0, 0x1e8(r1)
/* 802DFCCC 002DCC2C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 802DFCD0 002DCC30  80 03 00 30 */	lwz r0, 0x30(r3)
/* 802DFCD4 002DCC34  90 81 01 EC */	stw r4, 0x1ec(r1)
/* 802DFCD8 002DCC38  90 01 01 F0 */	stw r0, 0x1f0(r1)
/* 802DFCDC 002DCC3C  80 83 00 34 */	lwz r4, 0x34(r3)
/* 802DFCE0 002DCC40  80 03 00 38 */	lwz r0, 0x38(r3)
/* 802DFCE4 002DCC44  90 81 01 F4 */	stw r4, 0x1f4(r1)
/* 802DFCE8 002DCC48  90 01 01 F8 */	stw r0, 0x1f8(r1)
/* 802DFCEC 002DCC4C  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 802DFCF0 002DCC50  B0 01 01 FC */	sth r0, 0x1fc(r1)
lbl_802DFCF4:
/* 802DFCF4 002DCC54  88 03 00 84 */	lbz r0, 0x84(r3)
/* 802DFCF8 002DCC58  28 00 00 00 */	cmplwi r0, 0
/* 802DFCFC 002DCC5C  98 01 02 44 */	stb r0, 0x244(r1)
/* 802DFD00 002DCC60  41 82 00 8C */	beq lbl_802DFD8C
/* 802DFD04 002DCC64  34 A5 00 44 */	addic. r5, r5, 0x44
/* 802DFD08 002DCC68  41 82 00 84 */	beq lbl_802DFD8C
/* 802DFD0C 002DCC6C  88 03 00 44 */	lbz r0, 0x44(r3)
/* 802DFD10 002DCC70  98 05 00 00 */	stb r0, 0(r5)
/* 802DFD14 002DCC74  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 802DFD18 002DCC78  D0 05 00 04 */	stfs f0, 4(r5)
/* 802DFD1C 002DCC7C  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802DFD20 002DCC80  90 05 00 08 */	stw r0, 8(r5)
/* 802DFD24 002DCC84  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802DFD28 002DCC88  80 03 00 54 */	lwz r0, 0x54(r3)
/* 802DFD2C 002DCC8C  90 85 00 0C */	stw r4, 0xc(r5)
/* 802DFD30 002DCC90  90 05 00 10 */	stw r0, 0x10(r5)
/* 802DFD34 002DCC94  80 83 00 58 */	lwz r4, 0x58(r3)
/* 802DFD38 002DCC98  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 802DFD3C 002DCC9C  90 85 00 14 */	stw r4, 0x14(r5)
/* 802DFD40 002DCCA0  90 05 00 18 */	stw r0, 0x18(r5)
/* 802DFD44 002DCCA4  80 83 00 60 */	lwz r4, 0x60(r3)
/* 802DFD48 002DCCA8  80 03 00 64 */	lwz r0, 0x64(r3)
/* 802DFD4C 002DCCAC  90 85 00 1C */	stw r4, 0x1c(r5)
/* 802DFD50 002DCCB0  90 05 00 20 */	stw r0, 0x20(r5)
/* 802DFD54 002DCCB4  80 83 00 68 */	lwz r4, 0x68(r3)
/* 802DFD58 002DCCB8  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 802DFD5C 002DCCBC  90 85 00 24 */	stw r4, 0x24(r5)
/* 802DFD60 002DCCC0  90 05 00 28 */	stw r0, 0x28(r5)
/* 802DFD64 002DCCC4  80 83 00 70 */	lwz r4, 0x70(r3)
/* 802DFD68 002DCCC8  80 03 00 74 */	lwz r0, 0x74(r3)
/* 802DFD6C 002DCCCC  90 85 00 2C */	stw r4, 0x2c(r5)
/* 802DFD70 002DCCD0  90 05 00 30 */	stw r0, 0x30(r5)
/* 802DFD74 002DCCD4  80 83 00 78 */	lwz r4, 0x78(r3)
/* 802DFD78 002DCCD8  80 03 00 7C */	lwz r0, 0x7c(r3)
/* 802DFD7C 002DCCDC  90 85 00 34 */	stw r4, 0x34(r5)
/* 802DFD80 002DCCE0  90 05 00 38 */	stw r0, 0x38(r5)
/* 802DFD84 002DCCE4  A0 03 00 80 */	lhz r0, 0x80(r3)
/* 802DFD88 002DCCE8  B0 05 00 3C */	sth r0, 0x3c(r5)
lbl_802DFD8C:
/* 802DFD8C 002DCCEC  7F 40 07 75 */	extsb. r0, r26
/* 802DFD90 002DCCF0  41 82 00 10 */	beq lbl_802DFDA0
/* 802DFD94 002DCCF4  38 00 00 00 */	li r0, 0
/* 802DFD98 002DCCF8  98 01 00 AC */	stb r0, 0xac(r1)
/* 802DFD9C 002DCCFC  98 01 00 68 */	stb r0, 0x68(r1)
lbl_802DFDA0:
/* 802DFDA0 002DCD00  7F 60 07 75 */	extsb. r0, r27
/* 802DFDA4 002DCD04  41 82 00 10 */	beq lbl_802DFDB4
/* 802DFDA8 002DCD08  38 00 00 00 */	li r0, 0
/* 802DFDAC 002DCD0C  98 01 01 34 */	stb r0, 0x134(r1)
/* 802DFDB0 002DCD10  98 01 00 F0 */	stb r0, 0xf0(r1)
lbl_802DFDB4:
/* 802DFDB4 002DCD14  80 9D 00 04 */	lwz r4, 4(r29)
/* 802DFDB8 002DCD18  7F C5 F3 78 */	mr r5, r30
/* 802DFDBC 002DCD1C  38 61 00 0C */	addi r3, r1, 0xc
/* 802DFDC0 002DCD20  38 C1 02 48 */	addi r6, r1, 0x248
/* 802DFDC4 002DCD24  80 84 00 00 */	lwz r4, 0(r4)
/* 802DFDC8 002DCD28  81 84 00 00 */	lwz r12, 0(r4)
/* 802DFDCC 002DCD2C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802DFDD0 002DCD30  7D 89 03 A6 */	mtctr r12
/* 802DFDD4 002DCD34  4E 80 04 21 */	bctrl
/* 802DFDD8 002DCD38  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802DFDDC 002DCD3C  38 61 00 0C */	addi r3, r1, 0xc
/* 802DFDE0 002DCD40  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802DFDE4 002DCD44  80 85 00 04 */	lwz r4, 4(r5)
/* 802DFDE8 002DCD48  38 04 00 01 */	addi r0, r4, 1
/* 802DFDEC 002DCD4C  90 05 00 04 */	stw r0, 4(r5)
/* 802DFDF0 002DCD50  4B D5 11 B1 */	bl sub_80030fa0
/* 802DFDF4 002DCD54  80 9D 00 08 */	lwz r4, 8(r29)
/* 802DFDF8 002DCD58  7F C5 F3 78 */	mr r5, r30
/* 802DFDFC 002DCD5C  38 61 00 08 */	addi r3, r1, 8
/* 802DFE00 002DCD60  38 C1 01 C0 */	addi r6, r1, 0x1c0
/* 802DFE04 002DCD64  80 84 00 00 */	lwz r4, 0(r4)
/* 802DFE08 002DCD68  81 84 00 00 */	lwz r12, 0(r4)
/* 802DFE0C 002DCD6C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802DFE10 002DCD70  7D 89 03 A6 */	mtctr r12
/* 802DFE14 002DCD74  4E 80 04 21 */	bctrl
/* 802DFE18 002DCD78  80 A1 00 08 */	lwz r5, 8(r1)
/* 802DFE1C 002DCD7C  38 61 00 08 */	addi r3, r1, 8
/* 802DFE20 002DCD80  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802DFE24 002DCD84  80 85 00 04 */	lwz r4, 4(r5)
/* 802DFE28 002DCD88  38 04 00 01 */	addi r0, r4, 1
/* 802DFE2C 002DCD8C  90 05 00 04 */	stw r0, 4(r5)
/* 802DFE30 002DCD90  4B D5 11 71 */	bl sub_80030fa0
/* 802DFE34 002DCD94  3C 60 80 3D */	lis r3, lbl_803D6D58@ha
/* 802DFE38 002DCD98  3A E0 00 00 */	li r23, 0
/* 802DFE3C 002DCD9C  38 83 6D 58 */	addi r4, r3, lbl_803D6D58@l
/* 802DFE40 002DCDA0  38 A0 00 00 */	li r5, 0
/* 802DFE44 002DCDA4  38 60 00 28 */	li r3, 0x28
/* 802DFE48 002DCDA8  48 03 5A 25 */	bl __nw__FUlPCcPCc
/* 802DFE4C 002DCDAC  7C 78 1B 79 */	or. r24, r3, r3
/* 802DFE50 002DCDB0  41 82 00 54 */	beq lbl_802DFEA4
/* 802DFE54 002DCDB4  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 802DFE58 002DCDB8  38 61 00 18 */	addi r3, r1, 0x18
/* 802DFE5C 002DCDBC  38 81 00 14 */	addi r4, r1, 0x14
/* 802DFE60 002DCDC0  38 A1 00 10 */	addi r5, r1, 0x10
/* 802DFE64 002DCDC4  48 01 23 45 */	bl "CreatePrimitiveName__14CAnimTreeBlendFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>f"
/* 802DFE68 002DCDC8  80 E2 C6 B8 */	lwz r7, lbl_805AE3D8@sda21(r2)
/* 802DFE6C 002DCDCC  7F 03 C3 78 */	mr r3, r24
/* 802DFE70 002DCDD0  80 02 C6 BC */	lwz r0, lbl_805AE3DC@sda21(r2)
/* 802DFE74 002DCDD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 802DFE78 002DCDD8  C3 FD 00 0C */	lfs f31, 0xc(r29)
/* 802DFE7C 002DCDDC  38 C1 00 10 */	addi r6, r1, 0x10
/* 802DFE80 002DCDE0  88 9D 00 10 */	lbz r4, 0x10(r29)
/* 802DFE84 002DCDE4  7C E7 03 78 */	or r7, r7, r0
/* 802DFE88 002DCDE8  39 01 00 18 */	addi r8, r1, 0x18
/* 802DFE8C 002DCDEC  3A E0 00 01 */	li r23, 1
/* 802DFE90 002DCDF0  48 01 7B 99 */	bl "__ct__18CAnimTreeTweenBaseFbRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DFE94 002DCDF4  3C 60 80 3F */	lis r3, lbl_803ED0D8@ha
/* 802DFE98 002DCDF8  38 03 D0 D8 */	addi r0, r3, lbl_803ED0D8@l
/* 802DFE9C 002DCDFC  90 18 00 00 */	stw r0, 0(r24)
/* 802DFEA0 002DCE00  D3 F8 00 24 */	stfs f31, 0x24(r24)
lbl_802DFEA4:
/* 802DFEA4 002DCE04  3C 80 80 3D */	lis r4, lbl_803D6D58@ha
/* 802DFEA8 002DCE08  38 60 00 08 */	li r3, 8
/* 802DFEAC 002DCE0C  38 84 6D 58 */	addi r4, r4, lbl_803D6D58@l
/* 802DFEB0 002DCE10  38 A0 00 00 */	li r5, 0
/* 802DFEB4 002DCE14  48 03 59 B9 */	bl __nw__FUlPCcPCc
/* 802DFEB8 002DCE18  28 03 00 00 */	cmplwi r3, 0
/* 802DFEBC 002DCE1C  41 82 00 10 */	beq lbl_802DFECC
/* 802DFEC0 002DCE20  93 03 00 00 */	stw r24, 0(r3)
/* 802DFEC4 002DCE24  38 00 00 01 */	li r0, 1
/* 802DFEC8 002DCE28  90 03 00 04 */	stw r0, 4(r3)
lbl_802DFECC:
/* 802DFECC 002DCE2C  7E E0 07 75 */	extsb. r0, r23
/* 802DFED0 002DCE30  90 7C 00 00 */	stw r3, 0(r28)
/* 802DFED4 002DCE34  41 82 00 0C */	beq lbl_802DFEE0
/* 802DFED8 002DCE38  38 61 00 18 */	addi r3, r1, 0x18
/* 802DFEDC 002DCE3C  48 05 DC 05 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DFEE0:
/* 802DFEE0 002DCE40  38 61 00 10 */	addi r3, r1, 0x10
/* 802DFEE4 002DCE44  4B D5 10 BD */	bl sub_80030fa0
/* 802DFEE8 002DCE48  38 61 00 14 */	addi r3, r1, 0x14
/* 802DFEEC 002DCE4C  4B D5 10 B5 */	bl sub_80030fa0
/* 802DFEF0 002DCE50  38 00 00 00 */	li r0, 0
/* 802DFEF4 002DCE54  98 01 02 44 */	stb r0, 0x244(r1)
/* 802DFEF8 002DCE58  98 01 02 00 */	stb r0, 0x200(r1)
/* 802DFEFC 002DCE5C  98 01 02 CC */	stb r0, 0x2cc(r1)
/* 802DFF00 002DCE60  98 01 02 88 */	stb r0, 0x288(r1)
/* 802DFF04 002DCE64  E3 E1 03 08 */	psq_l f31, 776(r1), 0, qr0
/* 802DFF08 002DCE68  CB E1 03 00 */	lfd f31, 0x300(r1)
/* 802DFF0C 002DCE6C  BA E1 02 DC */	lmw r23, 0x2dc(r1)
/* 802DFF10 002DCE70  80 01 03 14 */	lwz r0, 0x314(r1)
/* 802DFF14 002DCE74  7C 08 03 A6 */	mtlr r0
/* 802DFF18 002DCE78  38 21 03 10 */	addi r1, r1, 0x310
/* 802DFF1C 002DCE7C  4E 80 00 20 */	blr

.global __ct__14CMetaAnimBlendFR12CInputStream
__ct__14CMetaAnimBlendFR12CInputStream:
/* 802DFF20 002DCE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DFF24 002DCE84  7C 08 02 A6 */	mflr r0
/* 802DFF28 002DCE88  3C A0 80 3F */	lis r5, lbl_803ECDF0@ha
/* 802DFF2C 002DCE8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DFF30 002DCE90  38 05 CD F0 */	addi r0, r5, lbl_803ECDF0@l
/* 802DFF34 002DCE94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DFF38 002DCE98  7C 9F 23 78 */	mr r31, r4
/* 802DFF3C 002DCE9C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DFF40 002DCEA0  7C 7E 1B 78 */	mr r30, r3
/* 802DFF44 002DCEA4  3C 60 80 3F */	lis r3, lbl_803ECCD0@ha
/* 802DFF48 002DCEA8  90 1E 00 00 */	stw r0, 0(r30)
/* 802DFF4C 002DCEAC  38 03 CC D0 */	addi r0, r3, lbl_803ECCD0@l
/* 802DFF50 002DCEB0  38 61 00 0C */	addi r3, r1, 0xc
/* 802DFF54 002DCEB4  90 1E 00 00 */	stw r0, 0(r30)
/* 802DFF58 002DCEB8  48 00 00 85 */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802DFF5C 002DCEBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802DFF60 002DCEC0  38 61 00 0C */	addi r3, r1, 0xc
/* 802DFF64 002DCEC4  90 1E 00 04 */	stw r0, 4(r30)
/* 802DFF68 002DCEC8  80 BE 00 04 */	lwz r5, 4(r30)
/* 802DFF6C 002DCECC  80 85 00 04 */	lwz r4, 4(r5)
/* 802DFF70 002DCED0  38 04 00 01 */	addi r0, r4, 1
/* 802DFF74 002DCED4  90 05 00 04 */	stw r0, 4(r5)
/* 802DFF78 002DCED8  4B D5 0F B9 */	bl sub_80030f30
/* 802DFF7C 002DCEDC  7F E4 FB 78 */	mr r4, r31
/* 802DFF80 002DCEE0  38 61 00 08 */	addi r3, r1, 8
/* 802DFF84 002DCEE4  48 00 00 59 */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802DFF88 002DCEE8  80 01 00 08 */	lwz r0, 8(r1)
/* 802DFF8C 002DCEEC  38 61 00 08 */	addi r3, r1, 8
/* 802DFF90 002DCEF0  90 1E 00 08 */	stw r0, 8(r30)
/* 802DFF94 002DCEF4  80 BE 00 08 */	lwz r5, 8(r30)
/* 802DFF98 002DCEF8  80 85 00 04 */	lwz r4, 4(r5)
/* 802DFF9C 002DCEFC  38 04 00 01 */	addi r0, r4, 1
/* 802DFFA0 002DCF00  90 05 00 04 */	stw r0, 4(r5)
/* 802DFFA4 002DCF04  4B D5 0F 8D */	bl sub_80030f30
/* 802DFFA8 002DCF08  7F E3 FB 78 */	mr r3, r31
/* 802DFFAC 002DCF0C  48 05 EC 7D */	bl ReadFloat__12CInputStreamFv
/* 802DFFB0 002DCF10  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 802DFFB4 002DCF14  7F E3 FB 78 */	mr r3, r31
/* 802DFFB8 002DCF18  48 05 ED 25 */	bl ReadBool__12CInputStreamFv
/* 802DFFBC 002DCF1C  98 7E 00 10 */	stb r3, 0x10(r30)
/* 802DFFC0 002DCF20  7F C3 F3 78 */	mr r3, r30
/* 802DFFC4 002DCF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DFFC8 002DCF28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DFFCC 002DCF2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DFFD0 002DCF30  7C 08 03 A6 */	mtlr r0
/* 802DFFD4 002DCF34  38 21 00 20 */	addi r1, r1, 0x20
/* 802DFFD8 002DCF38  4E 80 00 20 */	blr

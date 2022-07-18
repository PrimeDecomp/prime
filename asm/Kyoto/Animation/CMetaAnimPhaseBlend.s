.include "macros.inc"

.section .data

.global lbl_803ECCF0
lbl_803ECCF0:
	# ROM: 0x3E9CF0
	.4byte 0
	.4byte 0
	.4byte __dt__19CMetaAnimPhaseBlendFv
	.4byte GetAnimationTree__9IMetaAnimCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
	.4byte "GetUniquePrimitives__19CMetaAnimPhaseBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
	.4byte GetType__19CMetaAnimPhaseBlendCFv
	.4byte WriteAnimData__19CMetaAnimPhaseBlendCFR13COutputStream
	.4byte VGetAnimationTree__19CMetaAnimPhaseBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders

.global lbl_803ECD10
lbl_803ECD10:
	# ROM: 0x3E9D10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata

.global lbl_805A8710
lbl_805A8710:
	# ROM: 0x3F60B0
	.4byte 0x00000002

.global lbl_805A8714
lbl_805A8714:
	# ROM: 0x3F60B4
	.4byte 0

.global lbl_805A8718
lbl_805A8718:
	# ROM: 0x3F60B8
	.4byte 0x00000004

.global lbl_805A871C
lbl_805A871C:
	# ROM: 0x3F60BC
	.float 1.0

.section .text, "ax"

.global __dt__19CMetaAnimPhaseBlendFv
__dt__19CMetaAnimPhaseBlendFv:
/* 802E0240 002DD1A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E0244 002DD1A4  7C 08 02 A6 */	mflr r0
/* 802E0248 002DD1A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E024C 002DD1AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E0250 002DD1B0  7C 9F 23 78 */	mr r31, r4
/* 802E0254 002DD1B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802E0258 002DD1B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E025C 002DD1BC  41 82 00 54 */	beq lbl_802E02B0
/* 802E0260 002DD1C0  3C 60 80 3F */	lis r3, lbl_803ECCF0@ha
/* 802E0264 002DD1C4  34 1E 00 08 */	addic. r0, r30, 8
/* 802E0268 002DD1C8  38 03 CC F0 */	addi r0, r3, lbl_803ECCF0@l
/* 802E026C 002DD1CC  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0270 002DD1D0  41 82 00 0C */	beq lbl_802E027C
/* 802E0274 002DD1D4  38 7E 00 08 */	addi r3, r30, 8
/* 802E0278 002DD1D8  4B D5 0C B9 */	bl sub_80030f30
lbl_802E027C:
/* 802E027C 002DD1DC  34 1E 00 04 */	addic. r0, r30, 4
/* 802E0280 002DD1E0  41 82 00 0C */	beq lbl_802E028C
/* 802E0284 002DD1E4  38 7E 00 04 */	addi r3, r30, 4
/* 802E0288 002DD1E8  4B D5 0C A9 */	bl sub_80030f30
lbl_802E028C:
/* 802E028C 002DD1EC  28 1E 00 00 */	cmplwi r30, 0
/* 802E0290 002DD1F0  41 82 00 10 */	beq lbl_802E02A0
/* 802E0294 002DD1F4  3C 60 80 3F */	lis r3, lbl_803ECDF0@ha
/* 802E0298 002DD1F8  38 03 CD F0 */	addi r0, r3, lbl_803ECDF0@l
/* 802E029C 002DD1FC  90 1E 00 00 */	stw r0, 0(r30)
lbl_802E02A0:
/* 802E02A0 002DD200  7F E0 07 35 */	extsh. r0, r31
/* 802E02A4 002DD204  40 81 00 0C */	ble lbl_802E02B0
/* 802E02A8 002DD208  7F C3 F3 78 */	mr r3, r30
/* 802E02AC 002DD20C  48 03 56 85 */	bl Free__7CMemoryFPCv
lbl_802E02B0:
/* 802E02B0 002DD210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E02B4 002DD214  7F C3 F3 78 */	mr r3, r30
/* 802E02B8 002DD218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E02BC 002DD21C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E02C0 002DD220  7C 08 03 A6 */	mtlr r0
/* 802E02C4 002DD224  38 21 00 10 */	addi r1, r1, 0x10
/* 802E02C8 002DD228  4E 80 00 20 */	blr

.global GetType__19CMetaAnimPhaseBlendCFv
GetType__19CMetaAnimPhaseBlendCFv:
/* 802E02CC 002DD22C  38 60 00 02 */	li r3, 2
/* 802E02D0 002DD230  4E 80 00 20 */	blr

.global WriteAnimData__19CMetaAnimPhaseBlendCFR13COutputStream
WriteAnimData__19CMetaAnimPhaseBlendCFR13COutputStream:
/* 802E02D4 002DD234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E02D8 002DD238  7C 08 02 A6 */	mflr r0
/* 802E02DC 002DD23C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E02E0 002DD240  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E02E4 002DD244  7C 7F 1B 78 */	mr r31, r3
/* 802E02E8 002DD248  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E02EC 002DD24C  7C 9E 23 78 */	mr r30, r4
/* 802E02F0 002DD250  80 63 00 04 */	lwz r3, 4(r3)
/* 802E02F4 002DD254  80 63 00 00 */	lwz r3, 0(r3)
/* 802E02F8 002DD258  48 00 70 29 */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802E02FC 002DD25C  80 7F 00 08 */	lwz r3, 8(r31)
/* 802E0300 002DD260  7F C4 F3 78 */	mr r4, r30
/* 802E0304 002DD264  80 63 00 00 */	lwz r3, 0(r3)
/* 802E0308 002DD268  48 00 70 19 */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802E030C 002DD26C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 802E0310 002DD270  7F C3 F3 78 */	mr r3, r30
/* 802E0314 002DD274  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802E0318 002DD278  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E031C 002DD27C  90 01 00 08 */	stw r0, 8(r1)
/* 802E0320 002DD280  48 05 F1 99 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E0324 002DD284  7F C3 F3 78 */	mr r3, r30
/* 802E0328 002DD288  38 81 00 08 */	addi r4, r1, 8
/* 802E032C 002DD28C  38 A0 00 04 */	li r5, 4
/* 802E0330 002DD290  48 05 F2 79 */	bl DoPut__13COutputStreamFPCvUl
/* 802E0334 002DD294  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802E0338 002DD298  7F C3 F3 78 */	mr r3, r30
/* 802E033C 002DD29C  7C 04 00 D0 */	neg r0, r4
/* 802E0340 002DD2A0  7C 00 23 78 */	or r0, r0, r4
/* 802E0344 002DD2A4  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 802E0348 002DD2A8  48 05 F1 71 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E034C 002DD2AC  80 7E 00 04 */	lwz r3, 4(r30)
/* 802E0350 002DD2B0  80 1E 00 08 */	lwz r0, 8(r30)
/* 802E0354 002DD2B4  7C 03 00 40 */	cmplw r3, r0
/* 802E0358 002DD2B8  41 80 00 0C */	blt lbl_802E0364
/* 802E035C 002DD2BC  7F C3 F3 78 */	mr r3, r30
/* 802E0360 002DD2C0  48 05 F1 C5 */	bl DoFlush__13COutputStreamFv
lbl_802E0364:
/* 802E0364 002DD2C4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802E0368 002DD2C8  38 03 00 01 */	addi r0, r3, 1
/* 802E036C 002DD2CC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802E0370 002DD2D0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802E0374 002DD2D4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802E0378 002DD2D8  38 03 00 01 */	addi r0, r3, 1
/* 802E037C 002DD2DC  90 1E 00 04 */	stw r0, 4(r30)
/* 802E0380 002DD2E0  7F E4 19 AE */	stbx r31, r4, r3
/* 802E0384 002DD2E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E0388 002DD2E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E038C 002DD2EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E0390 002DD2F0  7C 08 03 A6 */	mtlr r0
/* 802E0394 002DD2F4  38 21 00 20 */	addi r1, r1, 0x20
/* 802E0398 002DD2F8  4E 80 00 20 */	blr

.global "GetUniquePrimitives__19CMetaAnimPhaseBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>"
"GetUniquePrimitives__19CMetaAnimPhaseBlendCFRQ24rstl72set<10CPrimitive,Q24rstl18less<10CPrimitive>,Q24rstl17rmemory_allocator>":
/* 802E039C 002DD2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E03A0 002DD300  7C 08 02 A6 */	mflr r0
/* 802E03A4 002DD304  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E03A8 002DD308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E03AC 002DD30C  7C 9F 23 78 */	mr r31, r4
/* 802E03B0 002DD310  93 C1 00 08 */	stw r30, 8(r1)
/* 802E03B4 002DD314  7C 7E 1B 78 */	mr r30, r3
/* 802E03B8 002DD318  80 63 00 04 */	lwz r3, 4(r3)
/* 802E03BC 002DD31C  80 63 00 00 */	lwz r3, 0(r3)
/* 802E03C0 002DD320  81 83 00 00 */	lwz r12, 0(r3)
/* 802E03C4 002DD324  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802E03C8 002DD328  7D 89 03 A6 */	mtctr r12
/* 802E03CC 002DD32C  4E 80 04 21 */	bctrl
/* 802E03D0 002DD330  80 7E 00 08 */	lwz r3, 8(r30)
/* 802E03D4 002DD334  7F E4 FB 78 */	mr r4, r31
/* 802E03D8 002DD338  80 63 00 00 */	lwz r3, 0(r3)
/* 802E03DC 002DD33C  81 83 00 00 */	lwz r12, 0(r3)
/* 802E03E0 002DD340  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802E03E4 002DD344  7D 89 03 A6 */	mtctr r12
/* 802E03E8 002DD348  4E 80 04 21 */	bctrl
/* 802E03EC 002DD34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E03F0 002DD350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E03F4 002DD354  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E03F8 002DD358  7C 08 03 A6 */	mtlr r0
/* 802E03FC 002DD35C  38 21 00 10 */	addi r1, r1, 0x10
/* 802E0400 002DD360  4E 80 00 20 */	blr

.global VGetAnimationTree__19CMetaAnimPhaseBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders
VGetAnimationTree__19CMetaAnimPhaseBlendCFRC15CAnimSysContextRC24CMetaAnimTreeBuildOrders:
/* 802E0404 002DD364  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 802E0408 002DD368  7C 08 02 A6 */	mflr r0
/* 802E040C 002DD36C  90 01 02 E4 */	stw r0, 0x2e4(r1)
/* 802E0410 002DD370  DB E1 02 D0 */	stfd f31, 0x2d0(r1)
/* 802E0414 002DD374  F3 E1 02 D8 */	psq_st f31, 728(r1), 0, qr0
/* 802E0418 002DD378  DB C1 02 C0 */	stfd f30, 0x2c0(r1)
/* 802E041C 002DD37C  F3 C1 02 C8 */	psq_st f30, 712(r1), 0, qr0
/* 802E0420 002DD380  93 E1 02 BC */	stw r31, 0x2bc(r1)
/* 802E0424 002DD384  93 C1 02 B8 */	stw r30, 0x2b8(r1)
/* 802E0428 002DD388  93 A1 02 B4 */	stw r29, 0x2b4(r1)
/* 802E042C 002DD38C  93 81 02 B0 */	stw r28, 0x2b0(r1)
/* 802E0430 002DD390  88 06 00 40 */	lbz r0, 0x40(r6)
/* 802E0434 002DD394  7C 7E 1B 78 */	mr r30, r3
/* 802E0438 002DD398  7C 9F 23 78 */	mr r31, r4
/* 802E043C 002DD39C  7C BD 2B 78 */	mr r29, r5
/* 802E0440 002DD3A0  28 00 00 00 */	cmplwi r0, 0
/* 802E0444 002DD3A4  41 82 00 40 */	beq lbl_802E0484
/* 802E0448 002DD3A8  7C C4 33 78 */	mr r4, r6
/* 802E044C 002DD3AC  38 61 02 20 */	addi r3, r1, 0x220
/* 802E0450 002DD3B0  48 00 71 51 */	bl PreAdvanceForAll__24CMetaAnimTreeBuildOrdersFRC20CPreAdvanceIndicator
/* 802E0454 002DD3B4  7F E4 FB 78 */	mr r4, r31
/* 802E0458 002DD3B8  7F C3 F3 78 */	mr r3, r30
/* 802E045C 002DD3BC  81 9F 00 00 */	lwz r12, 0(r31)
/* 802E0460 002DD3C0  7F A5 EB 78 */	mr r5, r29
/* 802E0464 002DD3C4  38 C1 02 20 */	addi r6, r1, 0x220
/* 802E0468 002DD3C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E046C 002DD3CC  7D 89 03 A6 */	mtctr r12
/* 802E0470 002DD3D0  4E 80 04 21 */	bctrl
/* 802E0474 002DD3D4  38 00 00 00 */	li r0, 0
/* 802E0478 002DD3D8  98 01 02 A4 */	stb r0, 0x2a4(r1)
/* 802E047C 002DD3DC  98 01 02 60 */	stb r0, 0x260(r1)
/* 802E0480 002DD3E0  48 00 03 78 */	b lbl_802E07F8
lbl_802E0484:
/* 802E0484 002DD3E4  38 61 01 98 */	addi r3, r1, 0x198
/* 802E0488 002DD3E8  48 00 73 91 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E048C 002DD3EC  80 9F 00 04 */	lwz r4, 4(r31)
/* 802E0490 002DD3F0  7F A5 EB 78 */	mr r5, r29
/* 802E0494 002DD3F4  38 61 00 0C */	addi r3, r1, 0xc
/* 802E0498 002DD3F8  38 C1 01 98 */	addi r6, r1, 0x198
/* 802E049C 002DD3FC  80 84 00 00 */	lwz r4, 0(r4)
/* 802E04A0 002DD400  81 84 00 00 */	lwz r12, 0(r4)
/* 802E04A4 002DD404  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E04A8 002DD408  7D 89 03 A6 */	mtctr r12
/* 802E04AC 002DD40C  4E 80 04 21 */	bctrl
/* 802E04B0 002DD410  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 802E04B4 002DD414  38 61 00 0C */	addi r3, r1, 0xc
/* 802E04B8 002DD418  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 802E04BC 002DD41C  80 85 00 04 */	lwz r4, 4(r5)
/* 802E04C0 002DD420  38 04 00 01 */	addi r0, r4, 1
/* 802E04C4 002DD424  90 05 00 04 */	stw r0, 4(r5)
/* 802E04C8 002DD428  4B D5 0A D9 */	bl sub_80030fa0
/* 802E04CC 002DD42C  38 00 00 00 */	li r0, 0
/* 802E04D0 002DD430  38 61 01 10 */	addi r3, r1, 0x110
/* 802E04D4 002DD434  98 01 02 1C */	stb r0, 0x21c(r1)
/* 802E04D8 002DD438  98 01 01 D8 */	stb r0, 0x1d8(r1)
/* 802E04DC 002DD43C  48 00 73 3D */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E04E0 002DD440  80 9F 00 08 */	lwz r4, 8(r31)
/* 802E04E4 002DD444  7F A5 EB 78 */	mr r5, r29
/* 802E04E8 002DD448  38 61 00 08 */	addi r3, r1, 8
/* 802E04EC 002DD44C  38 C1 01 10 */	addi r6, r1, 0x110
/* 802E04F0 002DD450  80 84 00 00 */	lwz r4, 0(r4)
/* 802E04F4 002DD454  81 84 00 00 */	lwz r12, 0(r4)
/* 802E04F8 002DD458  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E04FC 002DD45C  7D 89 03 A6 */	mtctr r12
/* 802E0500 002DD460  4E 80 04 21 */	bctrl
/* 802E0504 002DD464  80 A1 00 08 */	lwz r5, 8(r1)
/* 802E0508 002DD468  38 61 00 08 */	addi r3, r1, 8
/* 802E050C 002DD46C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 802E0510 002DD470  80 85 00 04 */	lwz r4, 4(r5)
/* 802E0514 002DD474  38 04 00 01 */	addi r0, r4, 1
/* 802E0518 002DD478  90 05 00 04 */	stw r0, 4(r5)
/* 802E051C 002DD47C  4B D5 0A 85 */	bl sub_80030fa0
/* 802E0520 002DD480  38 00 00 00 */	li r0, 0
/* 802E0524 002DD484  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 802E0528 002DD488  98 01 01 94 */	stb r0, 0x194(r1)
/* 802E052C 002DD48C  38 61 00 D8 */	addi r3, r1, 0xd8
/* 802E0530 002DD490  98 01 01 50 */	stb r0, 0x150(r1)
/* 802E0534 002DD494  80 84 00 00 */	lwz r4, 0(r4)
/* 802E0538 002DD498  4B D4 E6 51 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E053C 002DD49C  34 61 00 DC */	addic. r3, r1, 0xdc
/* 802E0540 002DD4A0  41 82 00 08 */	beq lbl_802E0548
/* 802E0544 002DD4A4  48 05 D5 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E0548:
/* 802E0548 002DD4A8  80 01 00 F0 */	lwz r0, 0xf0(r1)
/* 802E054C 002DD4AC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802E0550 002DD4B0  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 802E0554 002DD4B4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802E0558 002DD4B8  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802E055C 002DD4BC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 802E0560 002DD4C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E0564 002DD4C4  80 84 00 00 */	lwz r4, 0(r4)
/* 802E0568 002DD4C8  4B D4 E6 21 */	bl GetContributionOfHighestInfluence__13CAnimTreeNodeCFv
/* 802E056C 002DD4CC  34 61 00 A4 */	addic. r3, r1, 0xa4
/* 802E0570 002DD4D0  41 82 00 08 */	beq lbl_802E0578
/* 802E0574 002DD4D4  48 05 D5 6D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E0578:
/* 802E0578 002DD4D8  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 802E057C 002DD4DC  38 61 00 30 */	addi r3, r1, 0x30
/* 802E0580 002DD4E0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 802E0584 002DD4E4  38 81 00 60 */	addi r4, r1, 0x60
/* 802E0588 002DD4E8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802E058C 002DD4EC  38 A1 00 68 */	addi r5, r1, 0x68
/* 802E0590 002DD4F0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 802E0594 002DD4F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802E0598 002DD4F8  48 06 81 CD */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E059C 002DD4FC  38 61 00 38 */	addi r3, r1, 0x38
/* 802E05A0 002DD500  38 81 00 30 */	addi r4, r1, 0x30
/* 802E05A4 002DD504  38 BF 00 0C */	addi r5, r31, 0xc
/* 802E05A8 002DD508  48 06 83 4D */	bl __ml__13CCharAnimTimeCFRCf
/* 802E05AC 002DD50C  38 61 00 40 */	addi r3, r1, 0x40
/* 802E05B0 002DD510  38 81 00 68 */	addi r4, r1, 0x68
/* 802E05B4 002DD514  38 A1 00 38 */	addi r5, r1, 0x38
/* 802E05B8 002DD518  48 06 7F ED */	bl __pl__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E05BC 002DD51C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 802E05C0 002DD520  38 61 00 68 */	addi r3, r1, 0x68
/* 802E05C4 002DD524  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E05C8 002DD528  38 81 00 58 */	addi r4, r1, 0x58
/* 802E05CC 002DD52C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 802E05D0 002DD530  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802E05D4 002DD534  48 06 84 45 */	bl __dv__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E05D8 002DD538  FF E0 08 90 */	fmr f31, f1
/* 802E05DC 002DD53C  38 61 00 60 */	addi r3, r1, 0x60
/* 802E05E0 002DD540  38 81 00 58 */	addi r4, r1, 0x58
/* 802E05E4 002DD544  48 06 84 35 */	bl __dv__13CCharAnimTimeCFRC13CCharAnimTime
/* 802E05E8 002DD548  FF C0 08 90 */	fmr f30, f1
/* 802E05EC 002DD54C  3C 60 80 3D */	lis r3, lbl_803D6D68@ha
/* 802E05F0 002DD550  38 83 6D 68 */	addi r4, r3, lbl_803D6D68@l
/* 802E05F4 002DD554  3B 80 00 00 */	li r28, 0
/* 802E05F8 002DD558  38 60 00 38 */	li r3, 0x38
/* 802E05FC 002DD55C  38 A0 00 00 */	li r5, 0
/* 802E0600 002DD560  48 03 52 6D */	bl __nw__FUlPCcPCc
/* 802E0604 002DD564  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E0608 002DD568  41 82 00 48 */	beq lbl_802E0650
/* 802E060C 002DD56C  C0 0D 9B 5C */	lfs f0, lbl_805A871C@sda21(r13)
/* 802E0610 002DD570  FC 20 F8 90 */	fmr f1, f31
/* 802E0614 002DD574  80 0D 9B 58 */	lwz r0, lbl_805A8718@sda21(r13)
/* 802E0618 002DD578  38 61 00 90 */	addi r3, r1, 0x90
/* 802E061C 002DD57C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802E0620 002DD580  38 81 00 1C */	addi r4, r1, 0x1c
/* 802E0624 002DD584  C0 42 C5 A8 */	lfs f2, lbl_805AE2C8@sda21(r2)
/* 802E0628 002DD588  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E062C 002DD58C  38 A1 00 28 */	addi r5, r1, 0x28
/* 802E0630 002DD590  48 01 3A A5 */	bl "CreatePrimitiveName__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRC13CCharAnimTimef"
/* 802E0634 002DD594  FC 20 F8 90 */	fmr f1, f31
/* 802E0638 002DD598  7F A3 EB 78 */	mr r3, r29
/* 802E063C 002DD59C  38 81 00 1C */	addi r4, r1, 0x1c
/* 802E0640 002DD5A0  38 A1 00 90 */	addi r5, r1, 0x90
/* 802E0644 002DD5A4  3B 80 00 01 */	li r28, 1
/* 802E0648 002DD5A8  48 00 01 E1 */	bl "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E064C 002DD5AC  7C 7D 1B 78 */	mr r29, r3
lbl_802E0650:
/* 802E0650 002DD5B0  3C 80 80 3D */	lis r4, lbl_803D6D68@ha
/* 802E0654 002DD5B4  38 60 00 08 */	li r3, 8
/* 802E0658 002DD5B8  38 84 6D 68 */	addi r4, r4, lbl_803D6D68@l
/* 802E065C 002DD5BC  38 A0 00 00 */	li r5, 0
/* 802E0660 002DD5C0  48 03 52 0D */	bl __nw__FUlPCcPCc
/* 802E0664 002DD5C4  28 03 00 00 */	cmplwi r3, 0
/* 802E0668 002DD5C8  41 82 00 10 */	beq lbl_802E0678
/* 802E066C 002DD5CC  93 A3 00 00 */	stw r29, 0(r3)
/* 802E0670 002DD5D0  38 00 00 01 */	li r0, 1
/* 802E0674 002DD5D4  90 03 00 04 */	stw r0, 4(r3)
lbl_802E0678:
/* 802E0678 002DD5D8  7F 80 07 75 */	extsb. r0, r28
/* 802E067C 002DD5DC  90 61 00 14 */	stw r3, 0x14(r1)
/* 802E0680 002DD5E0  41 82 00 0C */	beq lbl_802E068C
/* 802E0684 002DD5E4  38 61 00 90 */	addi r3, r1, 0x90
/* 802E0688 002DD5E8  48 05 D4 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E068C:
/* 802E068C 002DD5EC  3C 60 80 3D */	lis r3, lbl_803D6D68@ha
/* 802E0690 002DD5F0  3B 80 00 00 */	li r28, 0
/* 802E0694 002DD5F4  38 83 6D 68 */	addi r4, r3, lbl_803D6D68@l
/* 802E0698 002DD5F8  38 A0 00 00 */	li r5, 0
/* 802E069C 002DD5FC  38 60 00 38 */	li r3, 0x38
/* 802E06A0 002DD600  48 03 51 CD */	bl __nw__FUlPCcPCc
/* 802E06A4 002DD604  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E06A8 002DD608  41 82 00 48 */	beq lbl_802E06F0
/* 802E06AC 002DD60C  C0 0D 9B 5C */	lfs f0, lbl_805A871C@sda21(r13)
/* 802E06B0 002DD610  FC 20 F0 90 */	fmr f1, f30
/* 802E06B4 002DD614  80 0D 9B 58 */	lwz r0, lbl_805A8718@sda21(r13)
/* 802E06B8 002DD618  38 61 00 80 */	addi r3, r1, 0x80
/* 802E06BC 002DD61C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802E06C0 002DD620  38 81 00 18 */	addi r4, r1, 0x18
/* 802E06C4 002DD624  C0 42 C5 A8 */	lfs f2, lbl_805AE2C8@sda21(r2)
/* 802E06C8 002DD628  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E06CC 002DD62C  38 A1 00 20 */	addi r5, r1, 0x20
/* 802E06D0 002DD630  48 01 3A 05 */	bl "CreatePrimitiveName__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRC13CCharAnimTimef"
/* 802E06D4 002DD634  FC 20 F0 90 */	fmr f1, f30
/* 802E06D8 002DD638  7F A3 EB 78 */	mr r3, r29
/* 802E06DC 002DD63C  38 81 00 18 */	addi r4, r1, 0x18
/* 802E06E0 002DD640  38 A1 00 80 */	addi r5, r1, 0x80
/* 802E06E4 002DD644  3B 80 00 01 */	li r28, 1
/* 802E06E8 002DD648  48 00 01 41 */	bl "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E06EC 002DD64C  7C 7D 1B 78 */	mr r29, r3
lbl_802E06F0:
/* 802E06F0 002DD650  3C 80 80 3D */	lis r4, lbl_803D6D68@ha
/* 802E06F4 002DD654  38 60 00 08 */	li r3, 8
/* 802E06F8 002DD658  38 84 6D 68 */	addi r4, r4, lbl_803D6D68@l
/* 802E06FC 002DD65C  38 A0 00 00 */	li r5, 0
/* 802E0700 002DD660  48 03 51 6D */	bl __nw__FUlPCcPCc
/* 802E0704 002DD664  28 03 00 00 */	cmplwi r3, 0
/* 802E0708 002DD668  41 82 00 10 */	beq lbl_802E0718
/* 802E070C 002DD66C  93 A3 00 00 */	stw r29, 0(r3)
/* 802E0710 002DD670  38 00 00 01 */	li r0, 1
/* 802E0714 002DD674  90 03 00 04 */	stw r0, 4(r3)
lbl_802E0718:
/* 802E0718 002DD678  7F 80 07 75 */	extsb. r0, r28
/* 802E071C 002DD67C  90 61 00 10 */	stw r3, 0x10(r1)
/* 802E0720 002DD680  41 82 00 0C */	beq lbl_802E072C
/* 802E0724 002DD684  38 61 00 80 */	addi r3, r1, 0x80
/* 802E0728 002DD688  48 05 D3 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E072C:
/* 802E072C 002DD68C  3C 60 80 3D */	lis r3, lbl_803D6D68@ha
/* 802E0730 002DD690  3B 80 00 00 */	li r28, 0
/* 802E0734 002DD694  38 83 6D 68 */	addi r4, r3, lbl_803D6D68@l
/* 802E0738 002DD698  38 A0 00 00 */	li r5, 0
/* 802E073C 002DD69C  38 60 00 28 */	li r3, 0x28
/* 802E0740 002DD6A0  48 03 51 2D */	bl __nw__FUlPCcPCc
/* 802E0744 002DD6A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802E0748 002DD6A8  41 82 00 54 */	beq lbl_802E079C
/* 802E074C 002DD6AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 802E0750 002DD6B0  38 61 00 70 */	addi r3, r1, 0x70
/* 802E0754 002DD6B4  38 81 00 14 */	addi r4, r1, 0x14
/* 802E0758 002DD6B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 802E075C 002DD6BC  48 01 1A 4D */	bl "CreatePrimitiveName__14CAnimTreeBlendFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>f"
/* 802E0760 002DD6C0  80 E2 C6 B8 */	lwz r7, lbl_805AE3D8@sda21(r2)
/* 802E0764 002DD6C4  7F A3 EB 78 */	mr r3, r29
/* 802E0768 002DD6C8  80 02 C6 BC */	lwz r0, lbl_805AE3DC@sda21(r2)
/* 802E076C 002DD6CC  38 A1 00 14 */	addi r5, r1, 0x14
/* 802E0770 002DD6D0  C3 FF 00 0C */	lfs f31, 0xc(r31)
/* 802E0774 002DD6D4  38 C1 00 10 */	addi r6, r1, 0x10
/* 802E0778 002DD6D8  88 9F 00 10 */	lbz r4, 0x10(r31)
/* 802E077C 002DD6DC  7C E7 03 78 */	or r7, r7, r0
/* 802E0780 002DD6E0  39 01 00 70 */	addi r8, r1, 0x70
/* 802E0784 002DD6E4  3B 80 00 01 */	li r28, 1
/* 802E0788 002DD6E8  48 01 72 A1 */	bl "__ct__18CAnimTreeTweenBaseFbRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>iRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E078C 002DD6EC  3C 60 80 3F */	lis r3, lbl_803ED0D8@ha
/* 802E0790 002DD6F0  38 03 D0 D8 */	addi r0, r3, lbl_803ED0D8@l
/* 802E0794 002DD6F4  90 1D 00 00 */	stw r0, 0(r29)
/* 802E0798 002DD6F8  D3 FD 00 24 */	stfs f31, 0x24(r29)
lbl_802E079C:
/* 802E079C 002DD6FC  3C 80 80 3D */	lis r4, lbl_803D6D68@ha
/* 802E07A0 002DD700  38 60 00 08 */	li r3, 8
/* 802E07A4 002DD704  38 84 6D 68 */	addi r4, r4, lbl_803D6D68@l
/* 802E07A8 002DD708  38 A0 00 00 */	li r5, 0
/* 802E07AC 002DD70C  48 03 50 C1 */	bl __nw__FUlPCcPCc
/* 802E07B0 002DD710  28 03 00 00 */	cmplwi r3, 0
/* 802E07B4 002DD714  41 82 00 10 */	beq lbl_802E07C4
/* 802E07B8 002DD718  93 A3 00 00 */	stw r29, 0(r3)
/* 802E07BC 002DD71C  38 00 00 01 */	li r0, 1
/* 802E07C0 002DD720  90 03 00 04 */	stw r0, 4(r3)
lbl_802E07C4:
/* 802E07C4 002DD724  7F 80 07 75 */	extsb. r0, r28
/* 802E07C8 002DD728  90 7E 00 00 */	stw r3, 0(r30)
/* 802E07CC 002DD72C  41 82 00 0C */	beq lbl_802E07D8
/* 802E07D0 002DD730  38 61 00 70 */	addi r3, r1, 0x70
/* 802E07D4 002DD734  48 05 D3 0D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E07D8:
/* 802E07D8 002DD738  38 61 00 10 */	addi r3, r1, 0x10
/* 802E07DC 002DD73C  4B D5 07 C5 */	bl sub_80030fa0
/* 802E07E0 002DD740  38 61 00 14 */	addi r3, r1, 0x14
/* 802E07E4 002DD744  4B D5 07 BD */	bl sub_80030fa0
/* 802E07E8 002DD748  38 61 00 18 */	addi r3, r1, 0x18
/* 802E07EC 002DD74C  4B D5 07 B5 */	bl sub_80030fa0
/* 802E07F0 002DD750  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E07F4 002DD754  4B D5 07 AD */	bl sub_80030fa0
lbl_802E07F8:
/* 802E07F8 002DD758  E3 E1 02 D8 */	psq_l f31, 728(r1), 0, qr0
/* 802E07FC 002DD75C  CB E1 02 D0 */	lfd f31, 0x2d0(r1)
/* 802E0800 002DD760  E3 C1 02 C8 */	psq_l f30, 712(r1), 0, qr0
/* 802E0804 002DD764  CB C1 02 C0 */	lfd f30, 0x2c0(r1)
/* 802E0808 002DD768  83 E1 02 BC */	lwz r31, 0x2bc(r1)
/* 802E080C 002DD76C  83 C1 02 B8 */	lwz r30, 0x2b8(r1)
/* 802E0810 002DD770  83 A1 02 B4 */	lwz r29, 0x2b4(r1)
/* 802E0814 002DD774  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 802E0818 002DD778  83 81 02 B0 */	lwz r28, 0x2b0(r1)
/* 802E081C 002DD77C  7C 08 03 A6 */	mtlr r0
/* 802E0820 002DD780  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 802E0824 002DD784  4E 80 00 20 */	blr

.global "__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"__ct__18CAnimTreeTimeScaleFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>fRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802E0828 002DD788  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E082C 002DD78C  7C 08 02 A6 */	mflr r0
/* 802E0830 002DD790  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E0834 002DD794  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802E0838 002DD798  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 802E083C 002DD79C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E0840 002DD7A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802E0844 002DD7A4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802E0848 002DD7A8  7C 7F 1B 78 */	mr r31, r3
/* 802E084C 002DD7AC  FF E0 08 90 */	fmr f31, f1
/* 802E0850 002DD7B0  7F E0 FB 78 */	mr r0, r31
/* 802E0854 002DD7B4  7C 9E 23 78 */	mr r30, r4
/* 802E0858 002DD7B8  7C 1D 03 78 */	mr r29, r0
/* 802E085C 002DD7BC  7C A4 2B 78 */	mr r4, r5
/* 802E0860 002DD7C0  48 01 34 71 */	bl "__ct__13CAnimTreeNodeFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E0864 002DD7C4  3C 60 80 3F */	lis r3, lbl_803ED240@ha
/* 802E0868 002DD7C8  3C A0 80 3F */	lis r5, lbl_803ED2B0@ha
/* 802E086C 002DD7CC  38 03 D2 40 */	addi r0, r3, lbl_803ED240@l
/* 802E0870 002DD7D0  90 1D 00 00 */	stw r0, 0(r29)
/* 802E0874 002DD7D4  38 05 D2 B0 */	addi r0, r5, lbl_803ED2B0@l
/* 802E0878 002DD7D8  3C 60 80 3D */	lis r3, lbl_803D6D68@ha
/* 802E087C 002DD7DC  38 A0 00 00 */	li r5, 0
/* 802E0880 002DD7E0  80 DE 00 00 */	lwz r6, 0(r30)
/* 802E0884 002DD7E4  38 83 6D 68 */	addi r4, r3, lbl_803D6D68@l
/* 802E0888 002DD7E8  38 60 00 08 */	li r3, 8
/* 802E088C 002DD7EC  90 DD 00 14 */	stw r6, 0x14(r29)
/* 802E0890 002DD7F0  80 FD 00 14 */	lwz r7, 0x14(r29)
/* 802E0894 002DD7F4  80 C7 00 04 */	lwz r6, 4(r7)
/* 802E0898 002DD7F8  38 C6 00 01 */	addi r6, r6, 1
/* 802E089C 002DD7FC  90 C7 00 04 */	stw r6, 4(r7)
/* 802E08A0 002DD800  90 1F 00 00 */	stw r0, 0(r31)
/* 802E08A4 002DD804  48 03 4F C9 */	bl __nw__FUlPCcPCc
/* 802E08A8 002DD808  28 03 00 00 */	cmplwi r3, 0
/* 802E08AC 002DD80C  41 82 00 20 */	beq lbl_802E08CC
/* 802E08B0 002DD810  3C A0 80 3F */	lis r5, lbl_803ECD10@ha
/* 802E08B4 002DD814  3C 80 80 3F */	lis r4, lbl_803ED4EC@ha
/* 802E08B8 002DD818  38 05 CD 10 */	addi r0, r5, lbl_803ECD10@l
/* 802E08BC 002DD81C  90 03 00 00 */	stw r0, 0(r3)
/* 802E08C0 002DD820  38 04 D4 EC */	addi r0, r4, lbl_803ED4EC@l
/* 802E08C4 002DD824  90 03 00 00 */	stw r0, 0(r3)
/* 802E08C8 002DD828  D3 E3 00 04 */	stfs f31, 4(r3)
lbl_802E08CC:
/* 802E08CC 002DD82C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802E08D0 002DD830  38 7F 00 20 */	addi r3, r31, 0x20
/* 802E08D4 002DD834  C0 22 C5 AC */	lfs f1, lbl_805AE2CC@sda21(r2)
/* 802E08D8 002DD838  48 06 85 15 */	bl __ct__13CCharAnimTimeFf
/* 802E08DC 002DD83C  80 0D 9B 58 */	lwz r0, lbl_805A8718@sda21(r13)
/* 802E08E0 002DD840  7F E3 FB 78 */	mr r3, r31
/* 802E08E4 002DD844  C0 0D 9B 5C */	lfs f0, lbl_805A871C@sda21(r13)
/* 802E08E8 002DD848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E08EC 002DD84C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802E08F0 002DD850  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802E08F4 002DD854  80 0D 9B 50 */	lwz r0, lbl_805A8710@sda21(r13)
/* 802E08F8 002DD858  C0 0D 9B 54 */	lfs f0, lbl_805A8714@sda21(r13)
/* 802E08FC 002DD85C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E0900 002DD860  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 802E0904 002DD864  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802E0908 002DD868  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 802E090C 002DD86C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E0910 002DD870  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802E0914 002DD874  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E0918 002DD878  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802E091C 002DD87C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802E0920 002DD880  7C 08 03 A6 */	mtlr r0
/* 802E0924 002DD884  38 21 00 40 */	addi r1, r1, 0x40
/* 802E0928 002DD888  4E 80 00 20 */	blr

.global __ct__19CMetaAnimPhaseBlendFR12CInputStream
__ct__19CMetaAnimPhaseBlendFR12CInputStream:
/* 802E092C 002DD88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E0930 002DD890  7C 08 02 A6 */	mflr r0
/* 802E0934 002DD894  3C A0 80 3F */	lis r5, lbl_803ECDF0@ha
/* 802E0938 002DD898  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E093C 002DD89C  38 05 CD F0 */	addi r0, r5, lbl_803ECDF0@l
/* 802E0940 002DD8A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E0944 002DD8A4  7C 9F 23 78 */	mr r31, r4
/* 802E0948 002DD8A8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E094C 002DD8AC  7C 7E 1B 78 */	mr r30, r3
/* 802E0950 002DD8B0  3C 60 80 3F */	lis r3, lbl_803ECCF0@ha
/* 802E0954 002DD8B4  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0958 002DD8B8  38 03 CC F0 */	addi r0, r3, lbl_803ECCF0@l
/* 802E095C 002DD8BC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E0960 002DD8C0  90 1E 00 00 */	stw r0, 0(r30)
/* 802E0964 002DD8C4  4B FF F6 79 */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802E0968 002DD8C8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E096C 002DD8CC  38 61 00 0C */	addi r3, r1, 0xc
/* 802E0970 002DD8D0  90 1E 00 04 */	stw r0, 4(r30)
/* 802E0974 002DD8D4  80 BE 00 04 */	lwz r5, 4(r30)
/* 802E0978 002DD8D8  80 85 00 04 */	lwz r4, 4(r5)
/* 802E097C 002DD8DC  38 04 00 01 */	addi r0, r4, 1
/* 802E0980 002DD8E0  90 05 00 04 */	stw r0, 4(r5)
/* 802E0984 002DD8E4  4B D5 05 AD */	bl sub_80030f30
/* 802E0988 002DD8E8  7F E4 FB 78 */	mr r4, r31
/* 802E098C 002DD8EC  38 61 00 08 */	addi r3, r1, 8
/* 802E0990 002DD8F0  4B FF F6 4D */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802E0994 002DD8F4  80 01 00 08 */	lwz r0, 8(r1)
/* 802E0998 002DD8F8  38 61 00 08 */	addi r3, r1, 8
/* 802E099C 002DD8FC  90 1E 00 08 */	stw r0, 8(r30)
/* 802E09A0 002DD900  80 BE 00 08 */	lwz r5, 8(r30)
/* 802E09A4 002DD904  80 85 00 04 */	lwz r4, 4(r5)
/* 802E09A8 002DD908  38 04 00 01 */	addi r0, r4, 1
/* 802E09AC 002DD90C  90 05 00 04 */	stw r0, 4(r5)
/* 802E09B0 002DD910  4B D5 05 81 */	bl sub_80030f30
/* 802E09B4 002DD914  7F E3 FB 78 */	mr r3, r31
/* 802E09B8 002DD918  48 05 E2 71 */	bl ReadFloat__12CInputStreamFv
/* 802E09BC 002DD91C  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 802E09C0 002DD920  7F E3 FB 78 */	mr r3, r31
/* 802E09C4 002DD924  48 05 E3 19 */	bl ReadBool__12CInputStreamFv
/* 802E09C8 002DD928  98 7E 00 10 */	stb r3, 0x10(r30)
/* 802E09CC 002DD92C  7F C3 F3 78 */	mr r3, r30
/* 802E09D0 002DD930  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E09D4 002DD934  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E09D8 002DD938  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E09DC 002DD93C  7C 08 03 A6 */	mtlr r0
/* 802E09E0 002DD940  38 21 00 20 */	addi r1, r1, 0x20
/* 802E09E4 002DD944  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE2C8
lbl_805AE2C8:
	# ROM: 0x3FAB68
	.float -1.0


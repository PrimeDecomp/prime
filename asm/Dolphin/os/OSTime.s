.include "macros.inc"

.section .data
.balign 8
.global YearDays
YearDays:
	.4byte 0x00000000
	.4byte 0x0000001F
	.4byte 0x0000003B
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x00000097
	.4byte 0x000000B5
	.4byte 0x000000D4
	.4byte 0x000000F3
	.4byte 0x00000111
	.4byte 0x00000130
	.4byte 0x0000014E

.global lbl_803F2320
lbl_803F2320:
	.4byte 0x00000000
	.4byte 0x0000001F
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x00000079
	.4byte 0x00000098
	.4byte 0x000000B6
	.4byte 0x000000D5
	.4byte 0x000000F4
	.4byte 0x00000112
	.4byte 0x00000131
	.4byte 0x0000014F

.section .text, "ax"

.global OSGetTime
OSGetTime:
/* 803853A8 00382308  7C 6D 42 E6 */	mftbu r3
/* 803853AC 0038230C  7C 8C 42 E6 */	mftb r4, 0x10c
/* 803853B0 00382310  7C AD 42 E6 */	mftbu r5
/* 803853B4 00382314  7C 03 28 00 */	cmpw r3, r5
/* 803853B8 00382318  40 82 FF F0 */	bne OSGetTime
/* 803853BC 0038231C  4E 80 00 20 */	blr

.global OSGetTick
OSGetTick:
/* 803853C0 00382320  7C 6C 42 E6 */	mftb r3, 0x10c
/* 803853C4 00382324  4E 80 00 20 */	blr

.global __OSGetSystemTime
__OSGetSystemTime:
/* 803853C8 00382328  7C 08 02 A6 */	mflr r0
/* 803853CC 0038232C  90 01 00 04 */	stw r0, 4(r1)
/* 803853D0 00382330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803853D4 00382334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803853D8 00382338  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803853DC 0038233C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803853E0 00382340  4B FF C2 81 */	bl OSDisableInterrupts
/* 803853E4 00382344  7C 7F 1B 78 */	mr r31, r3
/* 803853E8 00382348  4B FF FF C1 */	bl OSGetTime
/* 803853EC 0038234C  3C C0 80 00 */	lis r6, 0x800030DC@ha
/* 803853F0 00382350  80 A6 30 DC */	lwz r5, 0x800030DC@l(r6)
/* 803853F4 00382354  80 06 30 D8 */	lwz r0, 0x30d8(r6)
/* 803853F8 00382358  7F A5 20 14 */	addc r29, r5, r4
/* 803853FC 0038235C  7F C0 19 14 */	adde r30, r0, r3
/* 80385400 00382360  7F E3 FB 78 */	mr r3, r31
/* 80385404 00382364  4B FF C2 85 */	bl OSRestoreInterrupts
/* 80385408 00382368  7F A4 EB 78 */	mr r4, r29
/* 8038540C 0038236C  7F C3 F3 78 */	mr r3, r30
/* 80385410 00382370  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80385414 00382374  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80385418 00382378  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8038541C 0038237C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80385420 00382380  38 21 00 20 */	addi r1, r1, 0x20
/* 80385424 00382384  7C 08 03 A6 */	mtlr r0
/* 80385428 00382388  4E 80 00 20 */	blr

.global __OSTimeToSystemTime
__OSTimeToSystemTime:
/* 8038542C 0038238C  7C 08 02 A6 */	mflr r0
/* 80385430 00382390  90 01 00 04 */	stw r0, 4(r1)
/* 80385434 00382394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80385438 00382398  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8038543C 0038239C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80385440 003823A0  7C 7F 1B 78 */	mr r31, r3
/* 80385444 003823A4  7C 9E 23 78 */	mr r30, r4
/* 80385448 003823A8  4B FF C2 19 */	bl OSDisableInterrupts
/* 8038544C 003823AC  3C A0 80 00 */	lis r5, 0x800030DC@ha
/* 80385450 003823B0  80 85 30 DC */	lwz r4, 0x800030DC@l(r5)
/* 80385454 003823B4  80 05 30 D8 */	lwz r0, 0x30d8(r5)
/* 80385458 003823B8  7F C4 F0 14 */	addc r30, r4, r30
/* 8038545C 003823BC  7F E0 F9 14 */	adde r31, r0, r31
/* 80385460 003823C0  4B FF C2 29 */	bl OSRestoreInterrupts
/* 80385464 003823C4  7F C4 F3 78 */	mr r4, r30
/* 80385468 003823C8  7F E3 FB 78 */	mr r3, r31
/* 8038546C 003823CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80385470 003823D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80385474 003823D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80385478 003823D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8038547C 003823DC  7C 08 03 A6 */	mtlr r0
/* 80385480 003823E0  4E 80 00 20 */	blr

.global GetDates
GetDates:
/* 80385484 003823E4  3C A0 92 49 */	lis r5, 0x92492493@ha
/* 80385488 003823E8  38 05 24 93 */	addi r0, r5, 0x92492493@l
/* 8038548C 003823EC  38 E3 00 06 */	addi r7, r3, 6
/* 80385490 003823F0  7C C0 38 96 */	mulhw r6, r0, r7
/* 80385494 003823F4  3C A0 B3 8D */	lis r5, 0xB38CF9B1@ha
/* 80385498 003823F8  38 05 F9 B1 */	addi r0, r5, 0xB38CF9B1@l
/* 8038549C 003823FC  7C 00 18 96 */	mulhw r0, r0, r3
/* 803854A0 00382400  7C A6 3A 14 */	add r5, r6, r7
/* 803854A4 00382404  7C A5 16 70 */	srawi r5, r5, 2
/* 803854A8 00382408  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 803854AC 0038240C  7C A5 32 14 */	add r5, r5, r6
/* 803854B0 00382410  7C 00 1A 14 */	add r0, r0, r3
/* 803854B4 00382414  1C C5 00 07 */	mulli r6, r5, 7
/* 803854B8 00382418  7C 00 46 70 */	srawi r0, r0, 8
/* 803854BC 0038241C  54 05 0F FE */	srwi r5, r0, 0x1f
/* 803854C0 00382420  7C A0 2A 14 */	add r5, r0, r5
/* 803854C4 00382424  7C 06 38 50 */	subf r0, r6, r7
/* 803854C8 00382428  1D 65 01 6D */	mulli r11, r5, 0x16d
/* 803854CC 0038242C  90 04 00 18 */	stw r0, 0x18(r4)
/* 803854D0 00382430  48 00 00 04 */	b lbl_803854D4
lbl_803854D4:
/* 803854D4 00382434  3C C0 51 EC */	lis r6, 0x51EB851F@ha
/* 803854D8 00382438  39 46 85 1F */	addi r10, r6, 0x51EB851F@l
/* 803854DC 0038243C  48 00 00 04 */	b lbl_803854E0
lbl_803854E0:
/* 803854E0 00382440  48 00 00 0C */	b lbl_803854EC
lbl_803854E4:
/* 803854E4 00382444  39 6B FE 93 */	addi r11, r11, -365
/* 803854E8 00382448  38 A5 FF FF */	addi r5, r5, -1
lbl_803854EC:
/* 803854EC 0038244C  2C 05 00 01 */	cmpwi r5, 1
/* 803854F0 00382450  40 80 00 0C */	bge lbl_803854FC
/* 803854F4 00382454  38 00 00 00 */	li r0, 0
/* 803854F8 00382458  48 00 00 38 */	b lbl_80385530
lbl_803854FC:
/* 803854FC 0038245C  38 05 FF FF */	addi r0, r5, -1
/* 80385500 00382460  7C 0A 00 96 */	mulhw r0, r10, r0
/* 80385504 00382464  7C 08 3E 70 */	srawi r8, r0, 7
/* 80385508 00382468  7C 06 2E 70 */	srawi r6, r0, 5
/* 8038550C 0038246C  38 05 00 03 */	addi r0, r5, 3
/* 80385510 00382470  54 C7 0F FE */	srwi r7, r6, 0x1f
/* 80385514 00382474  7C 00 16 70 */	srawi r0, r0, 2
/* 80385518 00382478  55 09 0F FE */	srwi r9, r8, 0x1f
/* 8038551C 0038247C  7C C6 3A 14 */	add r6, r6, r7
/* 80385520 00382480  7C 00 01 94 */	addze r0, r0
/* 80385524 00382484  7C E8 4A 14 */	add r7, r8, r9
/* 80385528 00382488  7C 06 00 50 */	subf r0, r6, r0
/* 8038552C 0038248C  7C 07 02 14 */	add r0, r7, r0
lbl_80385530:
/* 80385530 00382490  7C 0B 02 14 */	add r0, r11, r0
/* 80385534 00382494  7C 03 00 00 */	cmpw r3, r0
/* 80385538 00382498  41 80 FF AC */	blt lbl_803854E4
/* 8038553C 0038249C  7C A6 16 70 */	srawi r6, r5, 2
/* 80385540 003824A0  90 A4 00 14 */	stw r5, 0x14(r4)
/* 80385544 003824A4  7C C6 01 94 */	addze r6, r6
/* 80385548 003824A8  54 C6 10 3A */	slwi r6, r6, 2
/* 8038554C 003824AC  7C C6 28 10 */	subfc r6, r6, r5
/* 80385550 003824B0  7C 00 18 50 */	subf r0, r0, r3
/* 80385554 003824B4  2C 06 00 00 */	cmpwi r6, 0
/* 80385558 003824B8  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8038555C 003824BC  38 E0 00 01 */	li r7, 1
/* 80385560 003824C0  39 00 00 00 */	li r8, 0
/* 80385564 003824C4  40 82 00 30 */	bne lbl_80385594
/* 80385568 003824C8  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 8038556C 003824CC  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 80385570 003824D0  7C 63 28 96 */	mulhw r3, r3, r5
/* 80385574 003824D4  7C 63 2E 70 */	srawi r3, r3, 5
/* 80385578 003824D8  54 66 0F FE */	srwi r6, r3, 0x1f
/* 8038557C 003824DC  7C 63 32 14 */	add r3, r3, r6
/* 80385580 003824E0  1C 63 00 64 */	mulli r3, r3, 0x64
/* 80385584 003824E4  7C 63 28 50 */	subf r3, r3, r5
/* 80385588 003824E8  2C 03 00 00 */	cmpwi r3, 0
/* 8038558C 003824EC  41 82 00 08 */	beq lbl_80385594
/* 80385590 003824F0  7C E8 3B 78 */	mr r8, r7
lbl_80385594:
/* 80385594 003824F4  2C 08 00 00 */	cmpwi r8, 0
/* 80385598 003824F8  40 82 00 30 */	bne lbl_803855C8
/* 8038559C 003824FC  3C 60 51 EC */	lis r3, 0x51EB851F@ha
/* 803855A0 00382500  38 63 85 1F */	addi r3, r3, 0x51EB851F@l
/* 803855A4 00382504  7C 63 28 96 */	mulhw r3, r3, r5
/* 803855A8 00382508  7C 63 3E 70 */	srawi r3, r3, 7
/* 803855AC 0038250C  54 66 0F FE */	srwi r6, r3, 0x1f
/* 803855B0 00382510  7C 63 32 14 */	add r3, r3, r6
/* 803855B4 00382514  1C 63 01 90 */	mulli r3, r3, 0x190
/* 803855B8 00382518  7C 63 28 50 */	subf r3, r3, r5
/* 803855BC 0038251C  2C 03 00 00 */	cmpwi r3, 0
/* 803855C0 00382520  41 82 00 08 */	beq lbl_803855C8
/* 803855C4 00382524  38 E0 00 00 */	li r7, 0
lbl_803855C8:
/* 803855C8 00382528  2C 07 00 00 */	cmpwi r7, 0
/* 803855CC 0038252C  41 82 00 10 */	beq lbl_803855DC
/* 803855D0 00382530  3C 60 80 3F */	lis r3, lbl_803F2320@ha
/* 803855D4 00382534  38 C3 23 20 */	addi r6, r3, lbl_803F2320@l
/* 803855D8 00382538  48 00 00 0C */	b lbl_803855E4
lbl_803855DC:
/* 803855DC 0038253C  3C 60 80 3F */	lis r3, YearDays@ha
/* 803855E0 00382540  38 C3 22 F0 */	addi r6, r3, YearDays@l
lbl_803855E4:
/* 803855E4 00382544  38 E0 00 0C */	li r7, 0xc
/* 803855E8 00382548  38 60 00 30 */	li r3, 0x30
/* 803855EC 0038254C  48 00 00 04 */	b lbl_803855F0
lbl_803855F0:
/* 803855F0 00382550  48 00 00 04 */	b lbl_803855F4
lbl_803855F4:
/* 803855F4 00382554  38 63 FF FC */	addi r3, r3, -4
/* 803855F8 00382558  7C A6 18 2E */	lwzx r5, r6, r3
/* 803855FC 0038255C  38 E7 FF FF */	addi r7, r7, -1
/* 80385600 00382560  7C 00 28 00 */	cmpw r0, r5
/* 80385604 00382564  41 80 FF F0 */	blt lbl_803855F4
/* 80385608 00382568  90 E4 00 10 */	stw r7, 0x10(r4)
/* 8038560C 0038256C  7C 66 18 2E */	lwzx r3, r6, r3
/* 80385610 00382570  7C 63 00 50 */	subf r3, r3, r0
/* 80385614 00382574  38 03 00 01 */	addi r0, r3, 1
/* 80385618 00382578  90 04 00 0C */	stw r0, 0xc(r4)
/* 8038561C 0038257C  4E 80 00 20 */	blr

.global OSTicksToCalendarTime
OSTicksToCalendarTime:
/* 80385620 00382580  7C 08 02 A6 */	mflr r0
/* 80385624 00382584  90 01 00 04 */	stw r0, 4(r1)
/* 80385628 00382588  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 8038562C 0038258C  BF 21 00 1C */	stmw r25, 0x1c(r1)
/* 80385630 00382590  7C 7D 1B 78 */	mr r29, r3
/* 80385634 00382594  7C 9E 23 78 */	mr r30, r4
/* 80385638 00382598  7C BF 2B 78 */	mr r31, r5
/* 8038563C 0038259C  3F 60 80 00 */	lis r27, 0x800000F8@ha
/* 80385640 003825A0  80 1B 00 F8 */	lwz r0, 0x800000F8@l(r27)
/* 80385644 003825A4  7F A3 EB 78 */	mr r3, r29
/* 80385648 003825A8  7F C4 F3 78 */	mr r4, r30
/* 8038564C 003825AC  54 06 F0 BE */	srwi r6, r0, 2
/* 80385650 003825B0  38 A0 00 00 */	li r5, 0
/* 80385654 003825B4  48 00 47 95 */	bl __mod2i
/* 80385658 003825B8  7C 7A 1B 78 */	mr r26, r3
/* 8038565C 003825BC  38 A0 00 00 */	li r5, 0
/* 80385660 003825C0  7C 99 23 78 */	mr r25, r4
/* 80385664 003825C4  6F 44 80 00 */	xoris r4, r26, 0x8000
/* 80385668 003825C8  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 8038566C 003825CC  7C 05 C8 10 */	subfc r0, r5, r25
/* 80385670 003825D0  7C 63 21 10 */	subfe r3, r3, r4
/* 80385674 003825D4  7C 64 21 10 */	subfe r3, r4, r4
/* 80385678 003825D8  7C 63 00 D0 */	neg r3, r3
/* 8038567C 003825DC  2C 03 00 00 */	cmpwi r3, 0
/* 80385680 003825E0  41 82 00 14 */	beq lbl_80385694
/* 80385684 003825E4  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 80385688 003825E8  54 00 F0 BE */	srwi r0, r0, 2
/* 8038568C 003825EC  7F 39 00 14 */	addc r25, r25, r0
/* 80385690 003825F0  7F 5A 29 14 */	adde r26, r26, r5
lbl_80385694:
/* 80385694 003825F4  38 80 00 08 */	li r4, 8
/* 80385698 003825F8  7C 7A 21 D6 */	mullw r3, r26, r4
/* 8038569C 003825FC  7C 19 20 16 */	mulhwu r0, r25, r4
/* 803856A0 00382600  3F 60 80 00 */	lis r27, 0x800000F8@ha
/* 803856A4 00382604  80 DB 00 F8 */	lwz r6, 0x800000F8@l(r27)
/* 803856A8 00382608  3C A0 43 1C */	lis r5, 0x431BDE83@ha
/* 803856AC 0038260C  38 A5 DE 83 */	addi r5, r5, 0x431BDE83@l
/* 803856B0 00382610  54 C6 F0 BE */	srwi r6, r6, 2
/* 803856B4 00382614  7C A5 30 16 */	mulhwu r5, r5, r6
/* 803856B8 00382618  54 A6 8B FE */	srwi r6, r5, 0xf
/* 803856BC 0038261C  3B 80 00 00 */	li r28, 0
/* 803856C0 00382620  7C 63 02 14 */	add r3, r3, r0
/* 803856C4 00382624  7C 19 E1 D6 */	mullw r0, r25, r28
/* 803856C8 00382628  7C 99 21 D6 */	mullw r4, r25, r4
/* 803856CC 0038262C  7C 63 02 14 */	add r3, r3, r0
/* 803856D0 00382630  38 A0 00 00 */	li r5, 0
/* 803856D4 00382634  48 00 44 F9 */	bl __div2i
/* 803856D8 00382638  38 A0 00 00 */	li r5, 0
/* 803856DC 0038263C  38 C0 03 E8 */	li r6, 0x3e8
/* 803856E0 00382640  48 00 47 09 */	bl __mod2i
/* 803856E4 00382644  90 9F 00 24 */	stw r4, 0x24(r31)
/* 803856E8 00382648  3C 60 10 62 */	lis r3, 0x10624DD3@ha
/* 803856EC 0038264C  38 A3 4D D3 */	addi r5, r3, 0x10624DD3@l
/* 803856F0 00382650  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 803856F4 00382654  7F 43 D3 78 */	mr r3, r26
/* 803856F8 00382658  7F 24 CB 78 */	mr r4, r25
/* 803856FC 0038265C  54 00 F0 BE */	srwi r0, r0, 2
/* 80385700 00382660  7C 05 00 16 */	mulhwu r0, r5, r0
/* 80385704 00382664  54 06 D1 BE */	srwi r6, r0, 6
/* 80385708 00382668  38 A0 00 00 */	li r5, 0
/* 8038570C 0038266C  48 00 44 C1 */	bl __div2i
/* 80385710 00382670  38 A0 00 00 */	li r5, 0
/* 80385714 00382674  38 C0 03 E8 */	li r6, 0x3e8
/* 80385718 00382678  48 00 46 D1 */	bl __mod2i
/* 8038571C 0038267C  90 9F 00 20 */	stw r4, 0x20(r31)
/* 80385720 00382680  7F D9 F0 10 */	subfc r30, r25, r30
/* 80385724 00382684  7F BA E9 10 */	subfe r29, r26, r29
/* 80385728 00382688  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8038572C 0038268C  3C A0 00 01 */	lis r5, 0x00015180@ha
/* 80385730 00382690  3B 25 51 80 */	addi r25, r5, 0x00015180@l
/* 80385734 00382694  7F A3 EB 78 */	mr r3, r29
/* 80385738 00382698  54 06 F0 BE */	srwi r6, r0, 2
/* 8038573C 0038269C  7F C4 F3 78 */	mr r4, r30
/* 80385740 003826A0  38 A0 00 00 */	li r5, 0
/* 80385744 003826A4  48 00 44 89 */	bl __div2i
/* 80385748 003826A8  7F 26 CB 78 */	mr r6, r25
/* 8038574C 003826AC  38 A0 00 00 */	li r5, 0
/* 80385750 003826B0  48 00 44 7D */	bl __div2i
/* 80385754 003826B4  3C A0 00 0B */	lis r5, 0x000B2575@ha
/* 80385758 003826B8  80 1B 00 F8 */	lwz r0, 0xf8(r27)
/* 8038575C 003826BC  38 A5 25 75 */	addi r5, r5, 0x000B2575@l
/* 80385760 003826C0  7F 44 28 14 */	addc r26, r4, r5
/* 80385764 003826C4  54 06 F0 BE */	srwi r6, r0, 2
/* 80385768 003826C8  7C 03 E1 14 */	adde r0, r3, r28
/* 8038576C 003826CC  7F A3 EB 78 */	mr r3, r29
/* 80385770 003826D0  7F C4 F3 78 */	mr r4, r30
/* 80385774 003826D4  38 A0 00 00 */	li r5, 0
/* 80385778 003826D8  48 00 44 55 */	bl __div2i
/* 8038577C 003826DC  7F 26 CB 78 */	mr r6, r25
/* 80385780 003826E0  38 A0 00 00 */	li r5, 0
/* 80385784 003826E4  48 00 46 65 */	bl __mod2i
/* 80385788 003826E8  7C 9B 23 78 */	mr r27, r4
/* 8038578C 003826EC  2C 1B 00 00 */	cmpwi r27, 0
/* 80385790 003826F0  40 80 00 10 */	bge lbl_803857A0
/* 80385794 003826F4  3F 7B 00 01 */	addis r27, r27, 1
/* 80385798 003826F8  3B 5A FF FF */	addi r26, r26, -1
/* 8038579C 003826FC  3B 7B 51 80 */	addi r27, r27, 0x5180
lbl_803857A0:
/* 803857A0 00382700  7F 43 D3 78 */	mr r3, r26
/* 803857A4 00382704  7F E4 FB 78 */	mr r4, r31
/* 803857A8 00382708  4B FF FC DD */	bl GetDates
/* 803857AC 0038270C  3C 60 88 89 */	lis r3, 0x88888889@ha
/* 803857B0 00382710  38 A3 88 89 */	addi r5, r3, 0x88888889@l
/* 803857B4 00382714  7C 05 D8 96 */	mulhw r0, r5, r27
/* 803857B8 00382718  7C 80 DA 14 */	add r4, r0, r27
/* 803857BC 0038271C  7C 80 2E 70 */	srawi r0, r4, 5
/* 803857C0 00382720  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803857C4 00382724  7C E0 1A 14 */	add r7, r0, r3
/* 803857C8 00382728  7C 05 38 96 */	mulhw r0, r5, r7
/* 803857CC 0038272C  7C 00 3A 14 */	add r0, r0, r7
/* 803857D0 00382730  7C 05 2E 70 */	srawi r5, r0, 5
/* 803857D4 00382734  7C 00 2E 70 */	srawi r0, r0, 5
/* 803857D8 00382738  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803857DC 0038273C  7C 60 1A 14 */	add r3, r0, r3
/* 803857E0 00382740  7C 80 2E 70 */	srawi r0, r4, 5
/* 803857E4 00382744  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 803857E8 00382748  1C 83 00 3C */	mulli r4, r3, 0x3c
/* 803857EC 0038274C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 803857F0 00382750  7C A5 32 14 */	add r5, r5, r6
/* 803857F4 00382754  7C 00 1A 14 */	add r0, r0, r3
/* 803857F8 00382758  90 BF 00 08 */	stw r5, 8(r31)
/* 803857FC 0038275C  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 80385800 00382760  7C 64 38 50 */	subf r3, r4, r7
/* 80385804 00382764  90 7F 00 04 */	stw r3, 4(r31)
/* 80385808 00382768  7C 00 D8 50 */	subf r0, r0, r27
/* 8038580C 0038276C  90 1F 00 00 */	stw r0, 0(r31)
/* 80385810 00382770  BB 21 00 1C */	lmw r25, 0x1c(r1)
/* 80385814 00382774  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80385818 00382778  38 21 00 38 */	addi r1, r1, 0x38
/* 8038581C 0038277C  7C 08 03 A6 */	mtlr r0
/* 80385820 00382780  4E 80 00 20 */	blr

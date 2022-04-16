.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global "TokenizeString__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PCci"
"TokenizeString__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PCci":
/* 8033E430 0033B390  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8033E434 0033B394  7C 08 02 A6 */	mflr r0
/* 8033E438 0033B398  2C 06 00 00 */	cmpwi r6, 0
/* 8033E43C 0033B39C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8033E440 0033B3A0  38 00 00 00 */	li r0, 0
/* 8033E444 0033B3A4  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 8033E448 0033B3A8  7C 7D 1B 78 */	mr r29, r3
/* 8033E44C 0033B3AC  7C 9E 23 78 */	mr r30, r4
/* 8033E450 0033B3B0  7C BF 2B 78 */	mr r31, r5
/* 8033E454 0033B3B4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8033E458 0033B3B8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8033E45C 0033B3BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033E460 0033B3C0  40 81 00 10 */	ble lbl_8033E470
/* 8033E464 0033B3C4  7C C4 33 78 */	mr r4, r6
/* 8033E468 0033B3C8  38 61 00 28 */	addi r3, r1, 0x28
/* 8033E46C 0033B3CC  4B D1 B7 49 */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
lbl_8033E470:
/* 8033E470 0033B3D0  83 9E 00 08 */	lwz r28, 8(r30)
/* 8033E474 0033B3D4  3B 60 00 00 */	li r27, 0
/* 8033E478 0033B3D8  48 00 00 D8 */	b lbl_8033E550
/* 8033E47C 0033B3DC  48 00 00 08 */	b lbl_8033E484
lbl_8033E480:
/* 8033E480 0033B3E0  3B 7B 00 01 */	addi r27, r27, 1
lbl_8033E484:
/* 8033E484 0033B3E4  7C 1B E0 00 */	cmpw r27, r28
/* 8033E488 0033B3E8  40 80 00 20 */	bge lbl_8033E4A8
/* 8033E48C 0033B3EC  80 9E 00 00 */	lwz r4, 0(r30)
/* 8033E490 0033B3F0  7F E3 FB 78 */	mr r3, r31
/* 8033E494 0033B3F4  7C 84 D8 AE */	lbzx r4, r4, r27
/* 8033E498 0033B3F8  7C 84 07 74 */	extsb r4, r4
/* 8033E49C 0033B3FC  48 05 1A 91 */	bl strchr
/* 8033E4A0 0033B400  28 03 00 00 */	cmplwi r3, 0
/* 8033E4A4 0033B404  40 82 FF DC */	bne lbl_8033E480
lbl_8033E4A8:
/* 8033E4A8 0033B408  7C 1B E0 00 */	cmpw r27, r28
/* 8033E4AC 0033B40C  41 82 00 AC */	beq lbl_8033E558
/* 8033E4B0 0033B410  3B 5B 00 01 */	addi r26, r27, 1
/* 8033E4B4 0033B414  48 00 00 08 */	b lbl_8033E4BC
lbl_8033E4B8:
/* 8033E4B8 0033B418  3B 5A 00 01 */	addi r26, r26, 1
lbl_8033E4BC:
/* 8033E4BC 0033B41C  7C 1A E0 00 */	cmpw r26, r28
/* 8033E4C0 0033B420  40 80 00 20 */	bge lbl_8033E4E0
/* 8033E4C4 0033B424  80 9E 00 00 */	lwz r4, 0(r30)
/* 8033E4C8 0033B428  7F E3 FB 78 */	mr r3, r31
/* 8033E4CC 0033B42C  7C 84 D0 AE */	lbzx r4, r4, r26
/* 8033E4D0 0033B430  7C 84 07 74 */	extsb r4, r4
/* 8033E4D4 0033B434  48 05 1A 59 */	bl strchr
/* 8033E4D8 0033B438  28 03 00 00 */	cmplwi r3, 0
/* 8033E4DC 0033B43C  41 82 FF DC */	beq lbl_8033E4B8
lbl_8033E4E0:
/* 8033E4E0 0033B440  7F C4 F3 78 */	mr r4, r30
/* 8033E4E4 0033B444  7F 65 DB 78 */	mr r5, r27
/* 8033E4E8 0033B448  38 61 00 18 */	addi r3, r1, 0x18
/* 8033E4EC 0033B44C  7C DB D0 50 */	subf r6, r27, r26
/* 8033E4F0 0033B450  4B ED EB D9 */	bl "substr__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>CFii"
/* 8033E4F4 0033B454  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E4F8 0033B458  80 A1 00 30 */	lwz r5, 0x30(r1)
/* 8033E4FC 0033B45C  7C 00 28 00 */	cmpw r0, r5
/* 8033E500 0033B460  41 80 00 1C */	blt lbl_8033E51C
/* 8033E504 0033B464  2C 05 00 00 */	cmpwi r5, 0
/* 8033E508 0033B468  38 61 00 28 */	addi r3, r1, 0x28
/* 8033E50C 0033B46C  38 80 00 04 */	li r4, 4
/* 8033E510 0033B470  41 82 00 08 */	beq lbl_8033E518
/* 8033E514 0033B474  54 A4 08 3C */	slwi r4, r5, 1
lbl_8033E518:
/* 8033E518 0033B478  4B D1 B6 9D */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
lbl_8033E51C:
/* 8033E51C 0033B47C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E520 0033B480  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8033E524 0033B484  54 00 20 36 */	slwi r0, r0, 4
/* 8033E528 0033B488  7C 63 02 15 */	add. r3, r3, r0
/* 8033E52C 0033B48C  41 82 00 0C */	beq lbl_8033E538
/* 8033E530 0033B490  38 81 00 18 */	addi r4, r1, 0x18
/* 8033E534 0033B494  4B FF FC 2D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8033E538:
/* 8033E538 0033B498  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8033E53C 0033B49C  38 61 00 18 */	addi r3, r1, 0x18
/* 8033E540 0033B4A0  38 04 00 01 */	addi r0, r4, 1
/* 8033E544 0033B4A4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8033E548 0033B4A8  4B FF F5 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8033E54C 0033B4AC  3B 7A 00 01 */	addi r27, r26, 1
lbl_8033E550:
/* 8033E550 0033B4B0  7C 1B E0 00 */	cmpw r27, r28
/* 8033E554 0033B4B4  41 80 FF 30 */	blt lbl_8033E484
lbl_8033E558:
/* 8033E558 0033B4B8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E55C 0033B4BC  90 1D 00 04 */	stw r0, 4(r29)
/* 8033E560 0033B4C0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8033E564 0033B4C4  90 1D 00 08 */	stw r0, 8(r29)
/* 8033E568 0033B4C8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E56C 0033B4CC  2C 00 00 00 */	cmpwi r0, 0
/* 8033E570 0033B4D0  40 82 00 1C */	bne lbl_8033E58C
/* 8033E574 0033B4D4  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8033E578 0033B4D8  2C 00 00 00 */	cmpwi r0, 0
/* 8033E57C 0033B4DC  40 82 00 10 */	bne lbl_8033E58C
/* 8033E580 0033B4E0  38 00 00 00 */	li r0, 0
/* 8033E584 0033B4E4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8033E588 0033B4E8  48 00 00 6C */	b lbl_8033E5F4
lbl_8033E58C:
/* 8033E58C 0033B4EC  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033E590 0033B4F0  54 03 20 37 */	rlwinm. r3, r0, 4, 0, 0x1b
/* 8033E594 0033B4F4  40 82 00 10 */	bne lbl_8033E5A4
/* 8033E598 0033B4F8  38 00 00 00 */	li r0, 0
/* 8033E59C 0033B4FC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8033E5A0 0033B500  48 00 00 18 */	b lbl_8033E5B8
lbl_8033E5A4:
/* 8033E5A4 0033B504  3C 80 80 3D */	lis r4, lbl_803D7A50@ha
/* 8033E5A8 0033B508  38 A0 00 00 */	li r5, 0
/* 8033E5AC 0033B50C  38 84 7A 50 */	addi r4, r4, lbl_803D7A50@l
/* 8033E5B0 0033B510  4B FD 72 69 */	bl __nwa__FUlPCcPCc
/* 8033E5B4 0033B514  90 7D 00 0C */	stw r3, 0xc(r29)
lbl_8033E5B8:
/* 8033E5B8 0033B518  83 9D 00 04 */	lwz r28, 4(r29)
/* 8033E5BC 0033B51C  3B C0 00 00 */	li r30, 0
/* 8033E5C0 0033B520  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8033E5C4 0033B524  83 BD 00 0C */	lwz r29, 0xc(r29)
/* 8033E5C8 0033B528  48 00 00 24 */	b lbl_8033E5EC
lbl_8033E5CC:
/* 8033E5CC 0033B52C  28 1D 00 00 */	cmplwi r29, 0
/* 8033E5D0 0033B530  41 82 00 10 */	beq lbl_8033E5E0
/* 8033E5D4 0033B534  7F A3 EB 78 */	mr r3, r29
/* 8033E5D8 0033B538  7F E4 FB 78 */	mr r4, r31
/* 8033E5DC 0033B53C  4B FF FB 85 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_8033E5E0:
/* 8033E5E0 0033B540  3B BD 00 10 */	addi r29, r29, 0x10
/* 8033E5E4 0033B544  3B DE 00 01 */	addi r30, r30, 1
/* 8033E5E8 0033B548  3B FF 00 10 */	addi r31, r31, 0x10
lbl_8033E5EC:
/* 8033E5EC 0033B54C  7C 1E E0 00 */	cmpw r30, r28
/* 8033E5F0 0033B550  41 80 FF DC */	blt lbl_8033E5CC
lbl_8033E5F4:
/* 8033E5F4 0033B554  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033E5F8 0033B558  83 81 00 34 */	lwz r28, 0x34(r1)
/* 8033E5FC 0033B55C  54 00 20 36 */	slwi r0, r0, 4
/* 8033E600 0033B560  7F BC 02 14 */	add r29, r28, r0
/* 8033E604 0033B564  93 81 00 0C */	stw r28, 0xc(r1)
/* 8033E608 0033B568  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033E60C 0033B56C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8033E610 0033B570  93 81 00 08 */	stw r28, 8(r1)
/* 8033E614 0033B574  48 00 00 18 */	b lbl_8033E62C
lbl_8033E618:
/* 8033E618 0033B578  28 1C 00 00 */	cmplwi r28, 0
/* 8033E61C 0033B57C  41 82 00 0C */	beq lbl_8033E628
/* 8033E620 0033B580  7F 83 E3 78 */	mr r3, r28
/* 8033E624 0033B584  4B FF F4 BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8033E628:
/* 8033E628 0033B588  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_8033E62C:
/* 8033E62C 0033B58C  7C 1C E8 40 */	cmplw r28, r29
/* 8033E630 0033B590  40 82 FF E8 */	bne lbl_8033E618
/* 8033E634 0033B594  80 61 00 34 */	lwz r3, 0x34(r1)
/* 8033E638 0033B598  28 03 00 00 */	cmplwi r3, 0
/* 8033E63C 0033B59C  41 82 00 08 */	beq lbl_8033E644
/* 8033E640 0033B5A0  4B FD 72 F1 */	bl Free__7CMemoryFPCv
lbl_8033E644:
/* 8033E644 0033B5A4  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 8033E648 0033B5A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8033E64C 0033B5AC  7C 08 03 A6 */	mtlr r0
/* 8033E650 0033B5B0  38 21 00 50 */	addi r1, r1, 0x50
/* 8033E654 0033B5B4  4E 80 00 20 */	blr 

.global ReadString__13CStringExtrasFR12CInputStream
ReadString__13CStringExtrasFR12CInputStream:
/* 8033E658 0033B5B8  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 8033E65C 0033B5BC  7C 08 02 A6 */	mflr r0
/* 8033E660 0033B5C0  38 AD A9 18 */	addi r5, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8033E664 0033B5C4  90 01 02 34 */	stw r0, 0x234(r1)
/* 8033E668 0033B5C8  38 00 00 00 */	li r0, 0
/* 8033E66C 0033B5CC  93 E1 02 2C */	stw r31, 0x22c(r1)
/* 8033E670 0033B5D0  93 C1 02 28 */	stw r30, 0x228(r1)
/* 8033E674 0033B5D4  93 A1 02 24 */	stw r29, 0x224(r1)
/* 8033E678 0033B5D8  7C 9D 23 78 */	mr r29, r4
/* 8033E67C 0033B5DC  93 81 02 20 */	stw r28, 0x220(r1)
/* 8033E680 0033B5E0  7C 7C 1B 78 */	mr r28, r3
/* 8033E684 0033B5E4  7F A3 EB 78 */	mr r3, r29
/* 8033E688 0033B5E8  90 A1 00 08 */	stw r5, 8(r1)
/* 8033E68C 0033B5EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8033E690 0033B5F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8033E694 0033B5F4  48 00 05 F1 */	bl ReadLong__12CInputStreamFv
/* 8033E698 0033B5F8  7C 64 1B 78 */	mr r4, r3
/* 8033E69C 0033B5FC  38 61 00 08 */	addi r3, r1, 8
/* 8033E6A0 0033B600  38 A0 00 01 */	li r5, 1
/* 8033E6A4 0033B604  7C 9E 23 78 */	mr r30, r4
/* 8033E6A8 0033B608  4B FF F2 89 */	bl "internal_prepare_to_write__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fib"
/* 8033E6AC 0033B60C  48 00 00 38 */	b lbl_8033E6E4
lbl_8033E6B0:
/* 8033E6B0 0033B610  28 1E 02 00 */	cmplwi r30, 0x200
/* 8033E6B4 0033B614  3B E0 02 00 */	li r31, 0x200
/* 8033E6B8 0033B618  41 81 00 08 */	bgt lbl_8033E6C0
/* 8033E6BC 0033B61C  7F DF F3 78 */	mr r31, r30
lbl_8033E6C0:
/* 8033E6C0 0033B620  7F A3 EB 78 */	mr r3, r29
/* 8033E6C4 0033B624  7F E5 FB 78 */	mr r5, r31
/* 8033E6C8 0033B628  38 81 00 18 */	addi r4, r1, 0x18
/* 8033E6CC 0033B62C  48 00 07 B5 */	bl ReadBytes__12CInputStreamFPvUl
/* 8033E6D0 0033B630  7F E5 FB 78 */	mr r5, r31
/* 8033E6D4 0033B634  38 61 00 08 */	addi r3, r1, 8
/* 8033E6D8 0033B638  38 81 00 18 */	addi r4, r1, 0x18
/* 8033E6DC 0033B63C  4B FF F8 09 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCci"
/* 8033E6E0 0033B640  7F DF F0 50 */	subf r30, r31, r30
lbl_8033E6E4:
/* 8033E6E4 0033B644  2C 1E 00 00 */	cmpwi r30, 0
/* 8033E6E8 0033B648  41 81 FF C8 */	bgt lbl_8033E6B0
/* 8033E6EC 0033B64C  7F 83 E3 78 */	mr r3, r28
/* 8033E6F0 0033B650  38 81 00 08 */	addi r4, r1, 8
/* 8033E6F4 0033B654  4B FF FA 6D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8033E6F8 0033B658  38 61 00 08 */	addi r3, r1, 8
/* 8033E6FC 0033B65C  4B FF F3 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8033E700 0033B660  80 01 02 34 */	lwz r0, 0x234(r1)
/* 8033E704 0033B664  83 E1 02 2C */	lwz r31, 0x22c(r1)
/* 8033E708 0033B668  83 C1 02 28 */	lwz r30, 0x228(r1)
/* 8033E70C 0033B66C  83 A1 02 24 */	lwz r29, 0x224(r1)
/* 8033E710 0033B670  83 81 02 20 */	lwz r28, 0x220(r1)
/* 8033E714 0033B674  7C 08 03 A6 */	mtlr r0
/* 8033E718 0033B678  38 21 02 30 */	addi r1, r1, 0x230
/* 8033E71C 0033B67C  4E 80 00 20 */	blr 

.global "ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"ConvertToUNICODE__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 8033E720 0033B680  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033E724 0033B684  7C 08 02 A6 */	mflr r0
/* 8033E728 0033B688  38 AD A9 1A */	addi r5, r13, lbl_805A94DA@sda21
/* 8033E72C 0033B68C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033E730 0033B690  38 00 00 00 */	li r0, 0
/* 8033E734 0033B694  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8033E738 0033B698  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8033E73C 0033B69C  7C 9E 23 78 */	mr r30, r4
/* 8033E740 0033B6A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8033E744 0033B6A4  7C 7D 1B 78 */	mr r29, r3
/* 8033E748 0033B6A8  38 61 00 08 */	addi r3, r1, 8
/* 8033E74C 0033B6AC  80 84 00 08 */	lwz r4, 8(r4)
/* 8033E750 0033B6B0  90 A1 00 08 */	stw r5, 8(r1)
/* 8033E754 0033B6B4  38 A0 00 01 */	li r5, 1
/* 8033E758 0033B6B8  38 84 00 01 */	addi r4, r4, 1
/* 8033E75C 0033B6BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8033E760 0033B6C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8033E764 0033B6C4  4B FF E8 11 */	bl "internal_prepare_to_write__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fib"
/* 8033E768 0033B6C8  3B E0 00 00 */	li r31, 0
/* 8033E76C 0033B6CC  48 00 00 20 */	b lbl_8033E78C
lbl_8033E770:
/* 8033E770 0033B6D0  80 BE 00 00 */	lwz r5, 0(r30)
/* 8033E774 0033B6D4  38 61 00 08 */	addi r3, r1, 8
/* 8033E778 0033B6D8  38 80 00 01 */	li r4, 1
/* 8033E77C 0033B6DC  7C A5 F8 AE */	lbzx r5, r5, r31
/* 8033E780 0033B6E0  7C A5 07 74 */	extsb r5, r5
/* 8033E784 0033B6E4  4B FF EC 55 */	bl "append__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fiw"
/* 8033E788 0033B6E8  3B FF 00 01 */	addi r31, r31, 1
lbl_8033E78C:
/* 8033E78C 0033B6EC  80 1E 00 08 */	lwz r0, 8(r30)
/* 8033E790 0033B6F0  7C 1F 00 00 */	cmpw r31, r0
/* 8033E794 0033B6F4  41 80 FF DC */	blt lbl_8033E770
/* 8033E798 0033B6F8  7F A3 EB 78 */	mr r3, r29
/* 8033E79C 0033B6FC  38 81 00 08 */	addi r4, r1, 8
/* 8033E7A0 0033B700  4B FF EF E9 */	bl "__ct__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
/* 8033E7A4 0033B704  38 61 00 08 */	addi r3, r1, 8
/* 8033E7A8 0033B708  4B FF E9 8D */	bl "internal_dereference__Q24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>Fv"
/* 8033E7AC 0033B70C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033E7B0 0033B710  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8033E7B4 0033B714  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8033E7B8 0033B718  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8033E7BC 0033B71C  7C 08 03 A6 */	mtlr r0
/* 8033E7C0 0033B720  38 21 00 30 */	addi r1, r1, 0x30
/* 8033E7C4 0033B724  4E 80 00 20 */	blr 

.global "ConvertToANSI__13CStringExtrasFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>"
"ConvertToANSI__13CStringExtrasFRCQ24rstl66basic_string<w,Q24rstl14char_traits<w>,Q24rstl17rmemory_allocator>":
/* 8033E7C8 0033B728  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033E7CC 0033B72C  7C 08 02 A6 */	mflr r0
/* 8033E7D0 0033B730  38 AD A9 18 */	addi r5, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8033E7D4 0033B734  90 01 00 44 */	stw r0, 0x44(r1)
/* 8033E7D8 0033B738  38 00 00 00 */	li r0, 0
/* 8033E7DC 0033B73C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8033E7E0 0033B740  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8033E7E4 0033B744  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8033E7E8 0033B748  7C 9D 23 78 */	mr r29, r4
/* 8033E7EC 0033B74C  93 81 00 30 */	stw r28, 0x30(r1)
/* 8033E7F0 0033B750  7C 7C 1B 78 */	mr r28, r3
/* 8033E7F4 0033B754  38 61 00 18 */	addi r3, r1, 0x18
/* 8033E7F8 0033B758  80 84 00 08 */	lwz r4, 8(r4)
/* 8033E7FC 0033B75C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 8033E800 0033B760  38 A0 00 01 */	li r5, 1
/* 8033E804 0033B764  38 84 00 01 */	addi r4, r4, 1
/* 8033E808 0033B768  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8033E80C 0033B76C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8033E810 0033B770  4B FF F1 21 */	bl "internal_prepare_to_write__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fib"
/* 8033E814 0033B774  3B C0 00 00 */	li r30, 0
/* 8033E818 0033B778  3B E0 00 00 */	li r31, 0
/* 8033E81C 0033B77C  48 00 00 38 */	b lbl_8033E854
lbl_8033E820:
/* 8033E820 0033B780  80 BD 00 00 */	lwz r5, 0(r29)
/* 8033E824 0033B784  38 61 00 08 */	addi r3, r1, 8
/* 8033E828 0033B788  38 81 00 18 */	addi r4, r1, 0x18
/* 8033E82C 0033B78C  7C 05 FA 2E */	lhzx r0, r5, r31
/* 8033E830 0033B790  7C 05 07 74 */	extsb r5, r0
/* 8033E834 0033B794  4B EC D8 61 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>c"
/* 8033E838 0033B798  38 61 00 18 */	addi r3, r1, 0x18
/* 8033E83C 0033B79C  38 81 00 08 */	addi r4, r1, 8
/* 8033E840 0033B7A0  4B FF F5 1D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8033E844 0033B7A4  38 61 00 08 */	addi r3, r1, 8
/* 8033E848 0033B7A8  4B FF F2 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8033E84C 0033B7AC  3B FF 00 02 */	addi r31, r31, 2
/* 8033E850 0033B7B0  3B DE 00 01 */	addi r30, r30, 1
lbl_8033E854:
/* 8033E854 0033B7B4  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033E858 0033B7B8  7C 1E 00 00 */	cmpw r30, r0
/* 8033E85C 0033B7BC  41 80 FF C4 */	blt lbl_8033E820
/* 8033E860 0033B7C0  7F 83 E3 78 */	mr r3, r28
/* 8033E864 0033B7C4  38 81 00 18 */	addi r4, r1, 0x18
/* 8033E868 0033B7C8  4B FF F8 F9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8033E86C 0033B7CC  38 61 00 18 */	addi r3, r1, 0x18
/* 8033E870 0033B7D0  4B FF F2 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8033E874 0033B7D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033E878 0033B7D8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8033E87C 0033B7DC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8033E880 0033B7E0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8033E884 0033B7E4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8033E888 0033B7E8  7C 08 03 A6 */	mtlr r0
/* 8033E88C 0033B7EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8033E890 0033B7F0  4E 80 00 20 */	blr 

.global CreateFromInteger__13CStringExtrasFi
CreateFromInteger__13CStringExtrasFi:
/* 8033E894 0033B7F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8033E898 0033B7F8  7C 08 02 A6 */	mflr r0
/* 8033E89C 0033B7FC  7C 85 FE 70 */	srawi r5, r4, 0x1f
/* 8033E8A0 0033B800  2C 04 00 00 */	cmpwi r4, 0
/* 8033E8A4 0033B804  90 01 00 44 */	stw r0, 0x44(r1)
/* 8033E8A8 0033B808  7C A0 22 78 */	xor r0, r5, r4
/* 8033E8AC 0033B80C  7D 05 00 50 */	subf r8, r5, r0
/* 8033E8B0 0033B810  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8033E8B4 0033B814  3B E0 00 00 */	li r31, 0
/* 8033E8B8 0033B818  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8033E8BC 0033B81C  7C 7E 1B 78 */	mr r30, r3
/* 8033E8C0 0033B820  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8033E8C4 0033B824  93 81 00 30 */	stw r28, 0x30(r1)
/* 8033E8C8 0033B828  40 82 00 18 */	bne lbl_8033E8E0
/* 8033E8CC 0033B82C  3C 80 80 3D */	lis r4, lbl_803D7A50@ha
/* 8033E8D0 0033B830  38 84 7A 50 */	addi r4, r4, lbl_803D7A50@l
/* 8033E8D4 0033B834  38 84 00 0E */	addi r4, r4, 0xe
/* 8033E8D8 0033B838  4B CC 63 E1 */	bl string_l__4rstlFPCc
/* 8033E8DC 0033B83C  48 00 00 CC */	b lbl_8033E9A8
lbl_8033E8E0:
/* 8033E8E0 0033B840  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 8033E8E4 0033B844  38 E1 00 18 */	addi r7, r1, 0x18
/* 8033E8E8 0033B848  38 C3 66 67 */	addi r6, r3, 0x66666667@l
/* 8033E8EC 0033B84C  48 00 00 38 */	b lbl_8033E924
lbl_8033E8F0:
/* 8033E8F0 0033B850  7C 06 40 96 */	mulhw r0, r6, r8
/* 8033E8F4 0033B854  3B FF 00 01 */	addi r31, r31, 1
/* 8033E8F8 0033B858  7C 03 16 70 */	srawi r3, r0, 2
/* 8033E8FC 0033B85C  54 65 0F FE */	srwi r5, r3, 0x1f
/* 8033E900 0033B860  7C 00 16 70 */	srawi r0, r0, 2
/* 8033E904 0033B864  7C 63 2A 14 */	add r3, r3, r5
/* 8033E908 0033B868  1C A3 00 0A */	mulli r5, r3, 0xa
/* 8033E90C 0033B86C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8033E910 0033B870  7C A5 40 50 */	subf r5, r5, r8
/* 8033E914 0033B874  7D 00 1A 14 */	add r8, r0, r3
/* 8033E918 0033B878  38 05 00 30 */	addi r0, r5, 0x30
/* 8033E91C 0033B87C  98 07 00 00 */	stb r0, 0(r7)
/* 8033E920 0033B880  38 E7 00 01 */	addi r7, r7, 1
lbl_8033E924:
/* 8033E924 0033B884  2C 08 00 00 */	cmpwi r8, 0
/* 8033E928 0033B888  41 81 FF C8 */	bgt lbl_8033E8F0
/* 8033E92C 0033B88C  38 00 00 00 */	li r0, 0
/* 8033E930 0033B890  38 6D A9 18 */	addi r3, r13, "_EmptyString__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"@sda21
/* 8033E934 0033B894  2C 04 00 00 */	cmpwi r4, 0
/* 8033E938 0033B898  90 61 00 08 */	stw r3, 8(r1)
/* 8033E93C 0033B89C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8033E940 0033B8A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8033E944 0033B8A4  40 80 00 1C */	bge lbl_8033E960
/* 8033E948 0033B8A8  3C 80 80 3D */	lis r4, lbl_803D7A50@ha
/* 8033E94C 0033B8AC  38 61 00 08 */	addi r3, r1, 8
/* 8033E950 0033B8B0  38 84 7A 50 */	addi r4, r4, lbl_803D7A50@l
/* 8033E954 0033B8B4  38 A0 FF FF */	li r5, -1
/* 8033E958 0033B8B8  38 84 00 10 */	addi r4, r4, 0x10
/* 8033E95C 0033B8BC  4B FF F5 89 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCci"
lbl_8033E960:
/* 8033E960 0033B8C0  3B A1 00 18 */	addi r29, r1, 0x18
/* 8033E964 0033B8C4  3B 80 00 00 */	li r28, 0
/* 8033E968 0033B8C8  48 00 00 24 */	b lbl_8033E98C
lbl_8033E96C:
/* 8033E96C 0033B8CC  7C 9C F8 50 */	subf r4, r28, r31
/* 8033E970 0033B8D0  38 61 00 08 */	addi r3, r1, 8
/* 8033E974 0033B8D4  38 04 FF FF */	addi r0, r4, -1
/* 8033E978 0033B8D8  38 80 00 01 */	li r4, 1
/* 8033E97C 0033B8DC  7C 1D 00 AE */	lbzx r0, r29, r0
/* 8033E980 0033B8E0  7C 05 07 74 */	extsb r5, r0
/* 8033E984 0033B8E4  4B FF F4 65 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fic"
/* 8033E988 0033B8E8  3B 9C 00 01 */	addi r28, r28, 1
lbl_8033E98C:
/* 8033E98C 0033B8EC  7C 1C F8 00 */	cmpw r28, r31
/* 8033E990 0033B8F0  41 80 FF DC */	blt lbl_8033E96C
/* 8033E994 0033B8F4  7F C3 F3 78 */	mr r3, r30
/* 8033E998 0033B8F8  38 81 00 08 */	addi r4, r1, 8
/* 8033E99C 0033B8FC  4B FF F7 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8033E9A0 0033B900  38 61 00 08 */	addi r3, r1, 8
/* 8033E9A4 0033B904  4B FF F1 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8033E9A8:
/* 8033E9A8 0033B908  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8033E9AC 0033B90C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8033E9B0 0033B910  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8033E9B4 0033B914  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8033E9B8 0033B918  83 81 00 30 */	lwz r28, 0x30(r1)
/* 8033E9BC 0033B91C  7C 08 03 A6 */	mtlr r0
/* 8033E9C0 0033B920  38 21 00 40 */	addi r1, r1, 0x40
/* 8033E9C4 0033B924  4E 80 00 20 */	blr 

.global ConvertToUpperCase__13CStringExtrasFc
ConvertToUpperCase__13CStringExtrasFc:
/* 8033E9C8 0033B928  7C 60 07 74 */	extsb r0, r3
/* 8033E9CC 0033B92C  2C 00 00 61 */	cmpwi r0, 0x61
/* 8033E9D0 0033B930  4D 80 00 20 */	bltlr 
/* 8033E9D4 0033B934  2C 00 00 7A */	cmpwi r0, 0x7a
/* 8033E9D8 0033B938  4D 81 00 20 */	bgtlr 
/* 8033E9DC 0033B93C  38 03 FF E0 */	addi r0, r3, -32
/* 8033E9E0 0033B940  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8033E9E4 0033B944  7C 03 07 74 */	extsb r3, r0
/* 8033E9E8 0033B948  4E 80 00 20 */	blr 

.global "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 8033E9EC 0033B94C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033E9F0 0033B950  7C 08 02 A6 */	mflr r0
/* 8033E9F4 0033B954  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033E9F8 0033B958  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8033E9FC 0033B95C  7C 9B 23 78 */	mr r27, r4
/* 8033EA00 0033B960  7C 7A 1B 78 */	mr r26, r3
/* 8033EA04 0033B964  80 03 00 08 */	lwz r0, 8(r3)
/* 8033EA08 0033B968  38 61 00 0C */	addi r3, r1, 0xc
/* 8033EA0C 0033B96C  80 84 00 08 */	lwz r4, 8(r4)
/* 8033EA10 0033B970  90 01 00 0C */	stw r0, 0xc(r1)
/* 8033EA14 0033B974  7C 04 00 00 */	cmpw r4, r0
/* 8033EA18 0033B978  90 81 00 08 */	stw r4, 8(r1)
/* 8033EA1C 0033B97C  40 80 00 08 */	bge lbl_8033EA24
/* 8033EA20 0033B980  38 61 00 08 */	addi r3, r1, 8
lbl_8033EA24:
/* 8033EA24 0033B984  83 A3 00 00 */	lwz r29, 0(r3)
/* 8033EA28 0033B988  3B 80 00 00 */	li r28, 0
/* 8033EA2C 0033B98C  48 00 00 68 */	b lbl_8033EA94
lbl_8033EA30:
/* 8033EA30 0033B990  80 7B 00 00 */	lwz r3, 0(r27)
/* 8033EA34 0033B994  83 FA 00 00 */	lwz r31, 0(r26)
/* 8033EA38 0033B998  7C 63 E0 AE */	lbzx r3, r3, r28
/* 8033EA3C 0033B99C  4B FF FF 8D */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EA40 0033B9A0  7C 7E 07 74 */	extsb r30, r3
/* 8033EA44 0033B9A4  7C 7F E0 AE */	lbzx r3, r31, r28
/* 8033EA48 0033B9A8  4B FF FF 81 */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EA4C 0033B9AC  7C 60 07 74 */	extsb r0, r3
/* 8033EA50 0033B9B0  7C 00 F0 00 */	cmpw r0, r30
/* 8033EA54 0033B9B4  40 80 00 0C */	bge lbl_8033EA60
/* 8033EA58 0033B9B8  38 60 FF FF */	li r3, -1
/* 8033EA5C 0033B9BC  48 00 00 6C */	b lbl_8033EAC8
lbl_8033EA60:
/* 8033EA60 0033B9C0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8033EA64 0033B9C4  83 DA 00 00 */	lwz r30, 0(r26)
/* 8033EA68 0033B9C8  7C 63 E0 AE */	lbzx r3, r3, r28
/* 8033EA6C 0033B9CC  4B FF FF 5D */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EA70 0033B9D0  7C 7F 07 74 */	extsb r31, r3
/* 8033EA74 0033B9D4  7C 7E E0 AE */	lbzx r3, r30, r28
/* 8033EA78 0033B9D8  4B FF FF 51 */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EA7C 0033B9DC  7C 60 07 74 */	extsb r0, r3
/* 8033EA80 0033B9E0  7C 00 F8 00 */	cmpw r0, r31
/* 8033EA84 0033B9E4  40 81 00 0C */	ble lbl_8033EA90
/* 8033EA88 0033B9E8  38 60 00 01 */	li r3, 1
/* 8033EA8C 0033B9EC  48 00 00 3C */	b lbl_8033EAC8
lbl_8033EA90:
/* 8033EA90 0033B9F0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8033EA94:
/* 8033EA94 0033B9F4  7C 1C E8 00 */	cmpw r28, r29
/* 8033EA98 0033B9F8  41 80 FF 98 */	blt lbl_8033EA30
/* 8033EA9C 0033B9FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8033EAA0 0033BA00  80 01 00 08 */	lwz r0, 8(r1)
/* 8033EAA4 0033BA04  7C 04 00 00 */	cmpw r4, r0
/* 8033EAA8 0033BA08  40 80 00 0C */	bge lbl_8033EAB4
/* 8033EAAC 0033BA0C  38 60 FF FF */	li r3, -1
/* 8033EAB0 0033BA10  48 00 00 18 */	b lbl_8033EAC8
lbl_8033EAB4:
/* 8033EAB4 0033BA14  7C 80 02 78 */	xor r0, r4, r0
/* 8033EAB8 0033BA18  7C 03 0E 70 */	srawi r3, r0, 1
/* 8033EABC 0033BA1C  7C 00 20 38 */	and r0, r0, r4
/* 8033EAC0 0033BA20  7C 00 18 50 */	subf r0, r0, r3
/* 8033EAC4 0033BA24  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_8033EAC8:
/* 8033EAC8 0033BA28  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8033EACC 0033BA2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033EAD0 0033BA30  7C 08 03 A6 */	mtlr r0
/* 8033EAD4 0033BA34  38 21 00 30 */	addi r1, r1, 0x30
/* 8033EAD8 0033BA38  4E 80 00 20 */	blr 

.global "IndexOfSubstring__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"IndexOfSubstring__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 8033EADC 0033BA3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033EAE0 0033BA40  7C 08 02 A6 */	mflr r0
/* 8033EAE4 0033BA44  90 01 00 34 */	stw r0, 0x34(r1)
/* 8033EAE8 0033BA48  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 8033EAEC 0033BA4C  7C 99 23 78 */	mr r25, r4
/* 8033EAF0 0033BA50  7C 78 1B 78 */	mr r24, r3
/* 8033EAF4 0033BA54  83 A4 00 08 */	lwz r29, 8(r4)
/* 8033EAF8 0033BA58  2C 1D 00 00 */	cmpwi r29, 0
/* 8033EAFC 0033BA5C  40 82 00 0C */	bne lbl_8033EB08
/* 8033EB00 0033BA60  38 60 00 00 */	li r3, 0
/* 8033EB04 0033BA64  48 00 00 88 */	b lbl_8033EB8C
lbl_8033EB08:
/* 8033EB08 0033BA68  80 18 00 08 */	lwz r0, 8(r24)
/* 8033EB0C 0033BA6C  2C 00 00 00 */	cmpwi r0, 0
/* 8033EB10 0033BA70  40 82 00 0C */	bne lbl_8033EB1C
/* 8033EB14 0033BA74  38 60 FF FF */	li r3, -1
/* 8033EB18 0033BA78  48 00 00 74 */	b lbl_8033EB8C
lbl_8033EB1C:
/* 8033EB1C 0033BA7C  7C 7D 00 50 */	subf r3, r29, r0
/* 8033EB20 0033BA80  3B 60 00 00 */	li r27, 0
/* 8033EB24 0033BA84  3B 83 00 01 */	addi r28, r3, 1
/* 8033EB28 0033BA88  48 00 00 58 */	b lbl_8033EB80
lbl_8033EB2C:
/* 8033EB2C 0033BA8C  3B 40 00 00 */	li r26, 0
/* 8033EB30 0033BA90  48 00 00 34 */	b lbl_8033EB64
lbl_8033EB34:
/* 8033EB34 0033BA94  80 18 00 00 */	lwz r0, 0(r24)
/* 8033EB38 0033BA98  83 D9 00 00 */	lwz r30, 0(r25)
/* 8033EB3C 0033BA9C  7C 1A 02 14 */	add r0, r26, r0
/* 8033EB40 0033BAA0  7C 7B 00 AE */	lbzx r3, r27, r0
/* 8033EB44 0033BAA4  4B FF FE 85 */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EB48 0033BAA8  7C 7F 07 74 */	extsb r31, r3
/* 8033EB4C 0033BAAC  7C 7E D0 AE */	lbzx r3, r30, r26
/* 8033EB50 0033BAB0  4B FF FE 79 */	bl ConvertToUpperCase__13CStringExtrasFc
/* 8033EB54 0033BAB4  7C 60 07 74 */	extsb r0, r3
/* 8033EB58 0033BAB8  7C 00 F8 00 */	cmpw r0, r31
/* 8033EB5C 0033BABC  40 82 00 10 */	bne lbl_8033EB6C
/* 8033EB60 0033BAC0  3B 5A 00 01 */	addi r26, r26, 1
lbl_8033EB64:
/* 8033EB64 0033BAC4  7C 1A E8 00 */	cmpw r26, r29
/* 8033EB68 0033BAC8  41 80 FF CC */	blt lbl_8033EB34
lbl_8033EB6C:
/* 8033EB6C 0033BACC  7C 1A E8 00 */	cmpw r26, r29
/* 8033EB70 0033BAD0  40 82 00 0C */	bne lbl_8033EB7C
/* 8033EB74 0033BAD4  7F 63 DB 78 */	mr r3, r27
/* 8033EB78 0033BAD8  48 00 00 14 */	b lbl_8033EB8C
lbl_8033EB7C:
/* 8033EB7C 0033BADC  3B 7B 00 01 */	addi r27, r27, 1
lbl_8033EB80:
/* 8033EB80 0033BAE0  7C 1B E0 00 */	cmpw r27, r28
/* 8033EB84 0033BAE4  41 80 FF A8 */	blt lbl_8033EB2C
/* 8033EB88 0033BAE8  38 60 FF FF */	li r3, -1
lbl_8033EB8C:
/* 8033EB8C 0033BAEC  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 8033EB90 0033BAF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033EB94 0033BAF4  7C 08 03 A6 */	mtlr r0
/* 8033EB98 0033BAF8  38 21 00 30 */	addi r1, r1, 0x30
/* 8033EB9C 0033BAFC  4E 80 00 20 */	blr 

.global __sinit_RstlExtras_cpp
__sinit_RstlExtras_cpp:
/* 8033EBA0 0033BB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033EBA4 0033BB04  7C 08 02 A6 */	mflr r0
/* 8033EBA8 0033BB08  3C 80 80 34 */	lis r4, __ct__Q24rstl8CRefDataFPCPvi@ha
/* 8033EBAC 0033BB0C  3C A0 01 00 */	lis r5, 0x00FFFFFF@ha
/* 8033EBB0 0033BB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033EBB4 0033BB14  38 E0 00 00 */	li r7, 0
/* 8033EBB8 0033BB18  38 05 FF FF */	addi r0, r5, 0x00FFFFFF@l
/* 8033EBBC 0033BB1C  38 CD A9 28 */	addi r6, r13, lbl_805A94E8@sda21
/* 8033EBC0 0033BB20  3C 60 80 4C */	lis r3, lbl_804BFF30@ha
/* 8033EBC4 0033BB24  90 ED A9 28 */	stw r7, lbl_805A94E8@sda21(r13)
/* 8033EBC8 0033BB28  38 A3 FF 30 */	addi r5, r3, lbl_804BFF30@l
/* 8033EBCC 0033BB2C  38 84 EB EC */	addi r4, r4, __ct__Q24rstl8CRefDataFPCPvi@l
/* 8033EBD0 0033BB30  90 06 00 04 */	stw r0, 4(r6)
/* 8033EBD4 0033BB34  38 6D A9 28 */	addi r3, r13, lbl_805A94E8@sda21
/* 8033EBD8 0033BB38  48 04 AA B5 */	bl __register_global_object
/* 8033EBDC 0033BB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033EBE0 0033BB40  7C 08 03 A6 */	mtlr r0
/* 8033EBE4 0033BB44  38 21 00 10 */	addi r1, r1, 0x10
/* 8033EBE8 0033BB48  4E 80 00 20 */	blr

.global __ct__Q24rstl8CRefDataFPCPvi
__ct__Q24rstl8CRefDataFPCPvi:
/* 8033EBEC 0033BB4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033EBF0 0033BB50  7C 08 02 A6 */	mflr r0
/* 8033EBF4 0033BB54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033EBF8 0033BB58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033EBFC 0033BB5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8033EC00 0033BB60  41 82 00 10 */	beq lbl_8033EC10
/* 8033EC04 0033BB64  7C 80 07 35 */	extsh. r0, r4
/* 8033EC08 0033BB68  40 81 00 08 */	ble lbl_8033EC10
/* 8033EC0C 0033BB6C  4B FD 6D 25 */	bl Free__7CMemoryFPCv
lbl_8033EC10:
/* 8033EC10 0033BB70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033EC14 0033BB74  7F E3 FB 78 */	mr r3, r31
/* 8033EC18 0033BB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033EC1C 0033BB7C  7C 08 03 A6 */	mtlr r0
/* 8033EC20 0033BB80  38 21 00 10 */	addi r1, r1, 0x10
/* 8033EC24 0033BB84  4E 80 00 20 */	blr 


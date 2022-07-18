.include "macros.inc"

.section .data

.global lbl_803E46E8
lbl_803E46E8:
	# ROM: 0x3E16E8
	.4byte 0
	.4byte 0
	.4byte __dt__15CFluidPlaneDoorFv
	.4byte nullsub_145
	.4byte nullsub_144
	.4byte nullsub_143
	.4byte nullsub_209
	.4byte Render__15CFluidPlaneDoorCFRC13CStateManagerRC6CAABoxRC14CFrustumPlanesRC14CRippleManagerRC9CVector3f

.section .sdata

.global lbl_805A7BB0
lbl_805A7BB0:
	# ROM: 0x3F5550
	.4byte 0xFFFFFFFF
	.4byte 0

.section .text, "ax"

.global nullsub_143
nullsub_143:
/* 8019D3A0 0019A300  4E 80 00 20 */	blr

.global nullsub_144
nullsub_144:
/* 8019D3A4 0019A304  4E 80 00 20 */	blr

.global nullsub_145
nullsub_145:
/* 8019D3A8 0019A308  4E 80 00 20 */	blr

.global RenderCleanup__15CFluidPlaneDoorCFv
RenderCleanup__15CFluidPlaneDoorCFv:
/* 8019D3AC 0019A30C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019D3B0 0019A310  7C 08 02 A6 */	mflr r0
/* 8019D3B4 0019A314  38 60 00 00 */	li r3, 0
/* 8019D3B8 0019A318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019D3BC 0019A31C  48 1E 1B 09 */	bl LCQueueWait
/* 8019D3C0 0019A320  38 60 00 00 */	li r3, 0
/* 8019D3C4 0019A324  38 80 00 00 */	li r4, 0
/* 8019D3C8 0019A328  38 A0 00 04 */	li r5, 4
/* 8019D3CC 0019A32C  38 C0 00 3C */	li r6, 0x3c
/* 8019D3D0 0019A330  38 E0 00 00 */	li r7, 0
/* 8019D3D4 0019A334  39 00 00 7D */	li r8, 0x7d
/* 8019D3D8 0019A338  48 16 B2 F5 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019D3DC 0019A33C  38 60 00 01 */	li r3, 1
/* 8019D3E0 0019A340  38 80 00 00 */	li r4, 0
/* 8019D3E4 0019A344  38 A0 00 05 */	li r5, 5
/* 8019D3E8 0019A348  38 C0 00 3C */	li r6, 0x3c
/* 8019D3EC 0019A34C  38 E0 00 00 */	li r7, 0
/* 8019D3F0 0019A350  39 00 00 7D */	li r8, 0x7d
/* 8019D3F4 0019A354  48 16 B2 D9 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019D3F8 0019A358  38 60 00 02 */	li r3, 2
/* 8019D3FC 0019A35C  38 80 00 00 */	li r4, 0
/* 8019D400 0019A360  38 A0 00 06 */	li r5, 6
/* 8019D404 0019A364  38 C0 00 3C */	li r6, 0x3c
/* 8019D408 0019A368  38 E0 00 00 */	li r7, 0
/* 8019D40C 0019A36C  39 00 00 7D */	li r8, 0x7d
/* 8019D410 0019A370  48 16 B2 BD */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019D414 0019A374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019D418 0019A378  7C 08 03 A6 */	mtlr r0
/* 8019D41C 0019A37C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019D420 0019A380  4E 80 00 20 */	blr

.global Render__15CFluidPlaneDoorCFRC13CStateManagerRC6CAABoxRC14CFrustumPlanesRC14CRippleManagerRC9CVector3f
Render__15CFluidPlaneDoorCFRC13CStateManagerRC6CAABoxRC14CFrustumPlanesRC14CRippleManagerRC9CVector3f:
/* 8019D424 0019A384  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 8019D428 0019A388  7C 08 02 A6 */	mflr r0
/* 8019D42C 0019A38C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8019D430 0019A390  DB E1 01 A0 */	stfd f31, 0x1a0(r1)
/* 8019D434 0019A394  F3 E1 01 A8 */	psq_st f31, 424(r1), 0, qr0
/* 8019D438 0019A398  DB C1 01 90 */	stfd f30, 0x190(r1)
/* 8019D43C 0019A39C  F3 C1 01 98 */	psq_st f30, 408(r1), 0, qr0
/* 8019D440 0019A3A0  DB A1 01 80 */	stfd f29, 0x180(r1)
/* 8019D444 0019A3A4  F3 A1 01 88 */	psq_st f29, 392(r1), 0, qr0
/* 8019D448 0019A3A8  DB 81 01 70 */	stfd f28, 0x170(r1)
/* 8019D44C 0019A3AC  F3 81 01 78 */	psq_st f28, 376(r1), 0, qr0
/* 8019D450 0019A3B0  DB 61 01 60 */	stfd f27, 0x160(r1)
/* 8019D454 0019A3B4  F3 61 01 68 */	psq_st f27, 360(r1), 0, qr0
/* 8019D458 0019A3B8  DB 41 01 50 */	stfd f26, 0x150(r1)
/* 8019D45C 0019A3BC  F3 41 01 58 */	psq_st f26, 344(r1), 0, qr0
/* 8019D460 0019A3C0  DB 21 01 40 */	stfd f25, 0x140(r1)
/* 8019D464 0019A3C4  F3 21 01 48 */	psq_st f25, 328(r1), 0, qr0
/* 8019D468 0019A3C8  DB 01 01 30 */	stfd f24, 0x130(r1)
/* 8019D46C 0019A3CC  F3 01 01 38 */	psq_st f24, 312(r1), 0, qr0
/* 8019D470 0019A3D0  DA E1 01 20 */	stfd f23, 0x120(r1)
/* 8019D474 0019A3D4  F2 E1 01 28 */	psq_st f23, 296(r1), 0, qr0
/* 8019D478 0019A3D8  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 8019D47C 0019A3DC  93 C1 01 18 */	stw r30, 0x118(r1)
/* 8019D480 0019A3E0  93 A1 01 14 */	stw r29, 0x114(r1)
/* 8019D484 0019A3E4  93 81 01 10 */	stw r28, 0x110(r1)
/* 8019D488 0019A3E8  88 02 98 E8 */	lbz r0, lbl_805AB608@sda21(r2)
/* 8019D48C 0019A3EC  7C 7D 1B 78 */	mr r29, r3
/* 8019D490 0019A3F0  7C BC 2B 78 */	mr r28, r5
/* 8019D494 0019A3F4  7C DE 33 78 */	mr r30, r6
/* 8019D498 0019A3F8  28 00 00 00 */	cmplwi r0, 0
/* 8019D49C 0019A3FC  7D 3F 4B 78 */	mr r31, r9
/* 8019D4A0 0019A400  41 82 03 04 */	beq lbl_8019D7A4
/* 8019D4A4 0019A404  7F C5 F3 78 */	mr r5, r30
/* 8019D4A8 0019A408  7F 86 E3 78 */	mr r6, r28
/* 8019D4AC 0019A40C  7D 07 43 78 */	mr r7, r8
/* 8019D4B0 0019A410  48 00 03 5D */	bl RenderSetup__15CFluidPlaneDoorCFRC13CStateManagerfRC12CTransform4fRC6CAABox
/* 8019D4B4 0019A414  48 16 A9 C9 */	bl SetIndexedPositionVtxFmt__14CFluidPlaneCPUFv
/* 8019D4B8 0019A418  38 60 00 09 */	li r3, 9
/* 8019D4BC 0019A41C  38 80 00 01 */	li r4, 1
/* 8019D4C0 0019A420  48 16 A9 E5 */	bl SetAttrFmt__11CFluidPlaneF6GXAttr10GXAttrType
/* 8019D4C4 0019A424  80 DD 00 A4 */	lwz r6, 0xa4(r29)
/* 8019D4C8 0019A428  38 00 00 2A */	li r0, 0x2a
/* 8019D4CC 0019A42C  C3 DD 00 A8 */	lfs f30, 0xa8(r29)
/* 8019D4D0 0019A430  7F 84 E3 78 */	mr r4, r28
/* 8019D4D4 0019A434  7C A0 33 D6 */	divw r5, r0, r6
/* 8019D4D8 0019A438  C0 02 A7 20 */	lfs f0, lbl_805AC440@sda21(r2)
/* 8019D4DC 0019A43C  90 CD A5 74 */	stw r6, lbl_805A9134@sda21(r13)
/* 8019D4E0 0019A440  38 61 00 58 */	addi r3, r1, 0x58
/* 8019D4E4 0019A444  EF 20 F0 24 */	fdivs f25, f0, f30
/* 8019D4E8 0019A448  7C 05 31 D6 */	mullw r0, r5, r6
/* 8019D4EC 0019A44C  90 AD A5 70 */	stw r5, lbl_805A9130@sda21(r13)
/* 8019D4F0 0019A450  90 0D A5 78 */	stw r0, lbl_805A9138@sda21(r13)
/* 8019D4F4 0019A454  48 19 A1 19 */	bl GetCenterPoint__6CAABoxCFv
/* 8019D4F8 0019A458  C2 E1 00 5C */	lfs f23, 0x5c(r1)
/* 8019D4FC 0019A45C  7F 84 E3 78 */	mr r4, r28
/* 8019D500 0019A460  38 61 00 64 */	addi r3, r1, 0x64
/* 8019D504 0019A464  48 19 A1 09 */	bl GetCenterPoint__6CAABoxCFv
/* 8019D508 0019A468  FC 40 B8 90 */	fmr f2, f23
/* 8019D50C 0019A46C  C0 21 00 64 */	lfs f1, 0x64(r1)
/* 8019D510 0019A470  38 61 00 38 */	addi r3, r1, 0x38
/* 8019D514 0019A474  48 17 6C ED */	bl __ct__9CVector2fFff
/* 8019D518 0019A478  80 8D A5 78 */	lwz r4, lbl_805A9138@sda21(r13)
/* 8019D51C 0019A47C  3C 00 43 30 */	lis r0, 0x4330
/* 8019D520 0019A480  C0 BC 00 00 */	lfs f5, 0(r28)
/* 8019D524 0019A484  38 61 00 30 */	addi r3, r1, 0x30
/* 8019D528 0019A488  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8019D52C 0019A48C  C0 9C 00 04 */	lfs f4, 4(r28)
/* 8019D530 0019A490  90 81 00 FC */	stw r4, 0xfc(r1)
/* 8019D534 0019A494  C0 7C 00 08 */	lfs f3, 8(r28)
/* 8019D538 0019A498  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 8019D53C 0019A49C  C8 22 A7 28 */	lfd f1, lbl_805AC448@sda21(r2)
/* 8019D540 0019A4A0  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 8019D544 0019A4A4  90 81 01 04 */	stw r4, 0x104(r1)
/* 8019D548 0019A4A8  EC 40 08 28 */	fsubs f2, f0, f1
/* 8019D54C 0019A4AC  C3 BC 00 0C */	lfs f29, 0xc(r28)
/* 8019D550 0019A4B0  90 01 01 00 */	stw r0, 0x100(r1)
/* 8019D554 0019A4B4  C3 9C 00 10 */	lfs f28, 0x10(r28)
/* 8019D558 0019A4B8  C8 01 01 00 */	lfd f0, 0x100(r1)
/* 8019D55C 0019A4BC  EC 5E 00 B2 */	fmuls f2, f30, f2
/* 8019D560 0019A4C0  D0 A1 00 7C */	stfs f5, 0x7c(r1)
/* 8019D564 0019A4C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019D568 0019A4C8  C3 7C 00 14 */	lfs f27, 0x14(r28)
/* 8019D56C 0019A4CC  D0 81 00 80 */	stfs f4, 0x80(r1)
/* 8019D570 0019A4D0  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8019D574 0019A4D4  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 8019D578 0019A4D8  48 17 6C 89 */	bl __ct__9CVector2fFff
/* 8019D57C 0019A4DC  C3 01 00 7C */	lfs f24, 0x7c(r1)
/* 8019D580 0019A4E0  48 00 02 14 */	b lbl_8019D794
lbl_8019D584:
/* 8019D584 0019A4E4  EC 1D C0 28 */	fsubs f0, f29, f24
/* 8019D588 0019A4E8  C2 E1 00 80 */	lfs f23, 0x80(r1)
/* 8019D58C 0019A4EC  EF 59 00 32 */	fmuls f26, f25, f0
/* 8019D590 0019A4F0  48 00 01 F4 */	b lbl_8019D784
lbl_8019D594:
/* 8019D594 0019A4F4  F3 41 D0 22 */	psq_st f26, 34(r1), 1, qr5
/* 8019D598 0019A4F8  38 61 00 2A */	addi r3, r1, 0x2a
/* 8019D59C 0019A4FC  80 8D A5 78 */	lwz r4, lbl_805A9138@sda21(r13)
/* 8019D5A0 0019A500  A8 A1 00 22 */	lha r5, 0x22(r1)
/* 8019D5A4 0019A504  7C 80 07 34 */	extsh r0, r4
/* 8019D5A8 0019A508  B0 81 00 2A */	sth r4, 0x2a(r1)
/* 8019D5AC 0019A50C  7C 05 00 00 */	cmpw r5, r0
/* 8019D5B0 0019A510  B0 A1 00 28 */	sth r5, 0x28(r1)
/* 8019D5B4 0019A514  40 80 00 08 */	bge lbl_8019D5BC
/* 8019D5B8 0019A518  38 61 00 28 */	addi r3, r1, 0x28
lbl_8019D5BC:
/* 8019D5BC 0019A51C  EC 1C B8 28 */	fsubs f0, f28, f23
/* 8019D5C0 0019A520  A8 03 00 00 */	lha r0, 0(r3)
/* 8019D5C4 0019A524  B0 01 00 2E */	sth r0, 0x2e(r1)
/* 8019D5C8 0019A528  EF F9 00 32 */	fmuls f31, f25, f0
/* 8019D5CC 0019A52C  F3 E1 D0 20 */	psq_st f31, 32(r1), 1, qr5
/* 8019D5D0 0019A530  38 61 00 26 */	addi r3, r1, 0x26
/* 8019D5D4 0019A534  80 8D A5 78 */	lwz r4, lbl_805A9138@sda21(r13)
/* 8019D5D8 0019A538  A8 A1 00 20 */	lha r5, 0x20(r1)
/* 8019D5DC 0019A53C  7C 80 07 34 */	extsh r0, r4
/* 8019D5E0 0019A540  B0 81 00 26 */	sth r4, 0x26(r1)
/* 8019D5E4 0019A544  7C 05 00 00 */	cmpw r5, r0
/* 8019D5E8 0019A548  B0 A1 00 24 */	sth r5, 0x24(r1)
/* 8019D5EC 0019A54C  40 80 00 08 */	bge lbl_8019D5F4
/* 8019D5F0 0019A550  38 61 00 24 */	addi r3, r1, 0x24
lbl_8019D5F4:
/* 8019D5F4 0019A554  A8 03 00 00 */	lha r0, 0(r3)
/* 8019D5F8 0019A558  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8019D5FC 0019A55C  E0 01 D0 2C */	psq_l f0, 44(r1), 1, qr5
/* 8019D600 0019A560  E0 21 D0 2E */	psq_l f1, 46(r1), 1, qr5
/* 8019D604 0019A564  38 61 00 88 */	addi r3, r1, 0x88
/* 8019D608 0019A568  EC 1E B8 3A */	fmadds f0, f30, f0, f23
/* 8019D60C 0019A56C  D3 61 00 78 */	stfs f27, 0x78(r1)
/* 8019D610 0019A570  EC 3E C0 7A */	fmadds f1, f30, f1, f24
/* 8019D614 0019A574  38 81 00 7C */	addi r4, r1, 0x7c
/* 8019D618 0019A578  38 A1 00 70 */	addi r5, r1, 0x70
/* 8019D61C 0019A57C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8019D620 0019A580  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 8019D624 0019A584  48 19 AE E5 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 8019D628 0019A588  7C 64 1B 78 */	mr r4, r3
/* 8019D62C 0019A58C  7F C5 F3 78 */	mr r5, r30
/* 8019D630 0019A590  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8019D634 0019A594  48 19 A2 C9 */	bl GetTransformedAABox__6CAABoxCFRC12CTransform4f
/* 8019D638 0019A598  7F E3 FB 78 */	mr r3, r31
/* 8019D63C 0019A59C  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8019D640 0019A5A0  48 1A 7B 91 */	bl BoxInFrustumPlanes__14CFrustumPlanesCFRC6CAABox
/* 8019D644 0019A5A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019D648 0019A5A8  41 82 01 34 */	beq lbl_8019D77C
/* 8019D64C 0019A5AC  C0 BE 00 2C */	lfs f5, 0x2c(r30)
/* 8019D650 0019A5B0  38 00 00 00 */	li r0, 0
/* 8019D654 0019A5B4  C0 9E 00 1C */	lfs f4, 0x1c(r30)
/* 8019D658 0019A5B8  FC 20 F0 90 */	fmr f1, f30
/* 8019D65C 0019A5BC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8019D660 0019A5C0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8019D664 0019A5C4  C0 C1 00 84 */	lfs f6, 0x84(r1)
/* 8019D668 0019A5C8  38 81 00 4C */	addi r4, r1, 0x4c
/* 8019D66C 0019A5CC  C0 5D 00 A0 */	lfs f2, 0xa0(r29)
/* 8019D670 0019A5D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8019D674 0019A5D4  38 A1 00 70 */	addi r5, r1, 0x70
/* 8019D678 0019A5D8  C0 62 A7 24 */	lfs f3, lbl_805AC444@sda21(r2)
/* 8019D67C 0019A5DC  38 C1 00 40 */	addi r6, r1, 0x40
/* 8019D680 0019A5E0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 8019D684 0019A5E4  39 00 00 00 */	li r8, 0
/* 8019D688 0019A5E8  39 20 00 00 */	li r9, 0
/* 8019D68C 0019A5EC  39 40 00 00 */	li r10, 0
/* 8019D690 0019A5F0  D0 A1 00 48 */	stfs f5, 0x48(r1)
/* 8019D694 0019A5F4  D3 01 00 4C */	stfs f24, 0x4c(r1)
/* 8019D698 0019A5F8  D2 E1 00 50 */	stfs f23, 0x50(r1)
/* 8019D69C 0019A5FC  D0 C1 00 54 */	stfs f6, 0x54(r1)
/* 8019D6A0 0019A600  90 01 00 08 */	stw r0, 8(r1)
/* 8019D6A4 0019A604  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019D6A8 0019A608  90 01 00 10 */	stw r0, 0x10(r1)
/* 8019D6AC 0019A60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019D6B0 0019A610  90 01 00 18 */	stw r0, 0x18(r1)
/* 8019D6B4 0019A614  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8019D6B8 0019A618  80 ED A5 78 */	lwz r7, lbl_805A9138@sda21(r13)
/* 8019D6BC 0019A61C  4B FF CB ED */	bl __ct__Q220CFluidPlaneCPURender10SPatchInfoFRC9CVector3fRC9CVector3fRC9CVector3fffb
/* 8019D6C0 0019A620  88 01 00 B8 */	lbz r0, 0xb8(r1)
/* 8019D6C4 0019A624  3C C0 E0 00 */	lis r6, 0xE0000000@ha
/* 8019D6C8 0019A628  3C 60 E0 00 */	lis r3, 0xe000
/* 8019D6CC 0019A62C  38 80 00 01 */	li r4, 1
/* 8019D6D0 0019A630  98 06 00 00 */	stb r0, 0xE0000000@l(r6)
/* 8019D6D4 0019A634  38 A0 00 01 */	li r5, 1
/* 8019D6D8 0019A638  88 01 00 B9 */	lbz r0, 0xb9(r1)
/* 8019D6DC 0019A63C  98 06 00 01 */	stb r0, 1(r6)
/* 8019D6E0 0019A640  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8019D6E4 0019A644  D0 06 00 04 */	stfs f0, 4(r6)
/* 8019D6E8 0019A648  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8019D6EC 0019A64C  D0 06 00 08 */	stfs f0, 8(r6)
/* 8019D6F0 0019A650  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8019D6F4 0019A654  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 8019D6F8 0019A658  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8019D6FC 0019A65C  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 8019D700 0019A660  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8019D704 0019A664  D0 06 00 14 */	stfs f0, 0x14(r6)
/* 8019D708 0019A668  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8019D70C 0019A66C  D0 06 00 18 */	stfs f0, 0x18(r6)
/* 8019D710 0019A670  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8019D714 0019A674  D0 06 00 1C */	stfs f0, 0x1c(r6)
/* 8019D718 0019A678  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8019D71C 0019A67C  D0 06 00 20 */	stfs f0, 0x20(r6)
/* 8019D720 0019A680  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8019D724 0019A684  D0 06 00 24 */	stfs f0, 0x24(r6)
/* 8019D728 0019A688  A8 01 00 E0 */	lha r0, 0xe0(r1)
/* 8019D72C 0019A68C  B0 06 00 28 */	sth r0, 0x28(r6)
/* 8019D730 0019A690  A8 01 00 E2 */	lha r0, 0xe2(r1)
/* 8019D734 0019A694  B0 06 00 2A */	sth r0, 0x2a(r6)
/* 8019D738 0019A698  A8 01 00 E4 */	lha r0, 0xe4(r1)
/* 8019D73C 0019A69C  B0 06 00 2C */	sth r0, 0x2c(r6)
/* 8019D740 0019A6A0  A8 01 00 E6 */	lha r0, 0xe6(r1)
/* 8019D744 0019A6A4  B0 06 00 2E */	sth r0, 0x2e(r6)
/* 8019D748 0019A6A8  80 01 00 E8 */	lwz r0, 0xe8(r1)
/* 8019D74C 0019A6AC  90 06 00 30 */	stw r0, 0x30(r6)
/* 8019D750 0019A6B0  88 01 00 EC */	lbz r0, 0xec(r1)
/* 8019D754 0019A6B4  98 06 00 34 */	stb r0, 0x34(r6)
/* 8019D758 0019A6B8  88 01 00 ED */	lbz r0, 0xed(r1)
/* 8019D75C 0019A6BC  98 06 00 35 */	stb r0, 0x35(r6)
/* 8019D760 0019A6C0  88 01 00 EE */	lbz r0, 0xee(r1)
/* 8019D764 0019A6C4  98 06 00 36 */	stb r0, 0x36(r6)
/* 8019D768 0019A6C8  88 01 00 EF */	lbz r0, 0xef(r1)
/* 8019D76C 0019A6CC  98 06 00 37 */	stb r0, 0x37(r6)
/* 8019D770 0019A6D0  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8019D774 0019A6D4  D0 06 00 38 */	stfs f0, 0x38(r6)
/* 8019D778 0019A6D8  48 0C E4 79 */	bl RenderPatch__FRCQ220CFluidPlaneCPURender10SPatchInfob
lbl_8019D77C:
/* 8019D77C 0019A6DC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8019D780 0019A6E0  EE F7 00 2A */	fadds f23, f23, f0
lbl_8019D784:
/* 8019D784 0019A6E4  FC 17 E0 40 */	fcmpo cr0, f23, f28
/* 8019D788 0019A6E8  41 80 FE 0C */	blt lbl_8019D594
/* 8019D78C 0019A6EC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8019D790 0019A6F0  EF 18 00 2A */	fadds f24, f24, f0
lbl_8019D794:
/* 8019D794 0019A6F4  FC 18 E8 40 */	fcmpo cr0, f24, f29
/* 8019D798 0019A6F8  41 80 FD EC */	blt lbl_8019D584
/* 8019D79C 0019A6FC  7F A3 EB 78 */	mr r3, r29
/* 8019D7A0 0019A700  4B FF FC 0D */	bl RenderCleanup__15CFluidPlaneDoorCFv
lbl_8019D7A4:
/* 8019D7A4 0019A704  E3 E1 01 A8 */	psq_l f31, 424(r1), 0, qr0
/* 8019D7A8 0019A708  CB E1 01 A0 */	lfd f31, 0x1a0(r1)
/* 8019D7AC 0019A70C  E3 C1 01 98 */	psq_l f30, 408(r1), 0, qr0
/* 8019D7B0 0019A710  CB C1 01 90 */	lfd f30, 0x190(r1)
/* 8019D7B4 0019A714  E3 A1 01 88 */	psq_l f29, 392(r1), 0, qr0
/* 8019D7B8 0019A718  CB A1 01 80 */	lfd f29, 0x180(r1)
/* 8019D7BC 0019A71C  E3 81 01 78 */	psq_l f28, 376(r1), 0, qr0
/* 8019D7C0 0019A720  CB 81 01 70 */	lfd f28, 0x170(r1)
/* 8019D7C4 0019A724  E3 61 01 68 */	psq_l f27, 360(r1), 0, qr0
/* 8019D7C8 0019A728  CB 61 01 60 */	lfd f27, 0x160(r1)
/* 8019D7CC 0019A72C  E3 41 01 58 */	psq_l f26, 344(r1), 0, qr0
/* 8019D7D0 0019A730  CB 41 01 50 */	lfd f26, 0x150(r1)
/* 8019D7D4 0019A734  E3 21 01 48 */	psq_l f25, 328(r1), 0, qr0
/* 8019D7D8 0019A738  CB 21 01 40 */	lfd f25, 0x140(r1)
/* 8019D7DC 0019A73C  E3 01 01 38 */	psq_l f24, 312(r1), 0, qr0
/* 8019D7E0 0019A740  CB 01 01 30 */	lfd f24, 0x130(r1)
/* 8019D7E4 0019A744  E2 E1 01 28 */	psq_l f23, 296(r1), 0, qr0
/* 8019D7E8 0019A748  CA E1 01 20 */	lfd f23, 0x120(r1)
/* 8019D7EC 0019A74C  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 8019D7F0 0019A750  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 8019D7F4 0019A754  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 8019D7F8 0019A758  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 8019D7FC 0019A75C  83 81 01 10 */	lwz r28, 0x110(r1)
/* 8019D800 0019A760  7C 08 03 A6 */	mtlr r0
/* 8019D804 0019A764  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 8019D808 0019A768  4E 80 00 20 */	blr

.global RenderSetup__15CFluidPlaneDoorCFRC13CStateManagerfRC12CTransform4fRC6CAABox
RenderSetup__15CFluidPlaneDoorCFRC13CStateManagerfRC12CTransform4fRC6CAABox:
/* 8019D80C 0019A76C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8019D810 0019A770  7C 08 02 A6 */	mflr r0
/* 8019D814 0019A774  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8019D818 0019A778  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 8019D81C 0019A77C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 8019D820 0019A780  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 8019D824 0019A784  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, qr0
/* 8019D828 0019A788  BD E1 00 8C */	stmw r15, 0x8c(r1)
/* 8019D82C 0019A78C  7C 7E 1B 78 */	mr r30, r3
/* 8019D830 0019A790  80 6D A0 68 */	lwz r3, gpRender@sda21(r13)
/* 8019D834 0019A794  80 C4 08 7C */	lwz r6, 0x87c(r4)
/* 8019D838 0019A798  3C E0 80 3D */	lis r7, lbl_803D1300@ha
/* 8019D83C 0019A79C  81 83 00 00 */	lwz r12, 0(r3)
/* 8019D840 0019A7A0  FF C0 08 90 */	fmr f30, f1
/* 8019D844 0019A7A4  7C A4 2B 78 */	mr r4, r5
/* 8019D848 0019A7A8  3B E7 13 00 */	addi r31, r7, lbl_803D1300@l
/* 8019D84C 0019A7AC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8019D850 0019A7B0  C3 E6 01 1C */	lfs f31, 0x11c(r6)
/* 8019D854 0019A7B4  7D 89 03 A6 */	mtctr r12
/* 8019D858 0019A7B8  4E 80 04 21 */	bctrl
/* 8019D85C 0019A7BC  38 60 00 00 */	li r3, 0
/* 8019D860 0019A7C0  38 8D 8F F0 */	addi r4, r13, lbl_805A7BB0@sda21
/* 8019D864 0019A7C4  48 16 B4 F9 */	bl SetChanMatColor__3CGXFQ23CGX10EChannelIdRC8_GXColor
/* 8019D868 0019A7C8  38 60 00 00 */	li r3, 0
/* 8019D86C 0019A7CC  38 80 00 00 */	li r4, 0
/* 8019D870 0019A7D0  38 A0 00 00 */	li r5, 0
/* 8019D874 0019A7D4  38 C0 00 00 */	li r6, 0
/* 8019D878 0019A7D8  38 E0 00 00 */	li r7, 0
/* 8019D87C 0019A7DC  39 00 00 00 */	li r8, 0
/* 8019D880 0019A7E0  39 20 00 02 */	li r9, 2
/* 8019D884 0019A7E4  48 16 B4 49 */	bl SetChanCtrl__3CGXFQ23CGX10EChannelIdUc11_GXColorSrc11_GXColorSrc10_GXLightID12_GXDiffuseFn9_GXAttnFn
/* 8019D888 0019A7E8  38 60 00 00 */	li r3, 0
/* 8019D88C 0019A7EC  48 16 B5 C5 */	bl SetNumChans__3CGXFUc
/* 8019D890 0019A7F0  88 1E 00 1C */	lbz r0, 0x1c(r30)
/* 8019D894 0019A7F4  28 00 00 00 */	cmplwi r0, 0
/* 8019D898 0019A7F8  41 82 00 14 */	beq lbl_8019D8AC
/* 8019D89C 0019A7FC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8019D8A0 0019A800  38 80 00 00 */	li r4, 0
/* 8019D8A4 0019A804  38 A0 00 01 */	li r5, 1
/* 8019D8A8 0019A808  48 17 1E 95 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
lbl_8019D8AC:
/* 8019D8AC 0019A80C  88 1E 00 2C */	lbz r0, 0x2c(r30)
/* 8019D8B0 0019A810  28 00 00 00 */	cmplwi r0, 0
/* 8019D8B4 0019A814  41 82 00 14 */	beq lbl_8019D8C8
/* 8019D8B8 0019A818  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 8019D8BC 0019A81C  38 80 00 01 */	li r4, 1
/* 8019D8C0 0019A820  38 A0 00 01 */	li r5, 1
/* 8019D8C4 0019A824  48 17 1E 79 */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
lbl_8019D8C8:
/* 8019D8C8 0019A828  88 1E 00 3C */	lbz r0, 0x3c(r30)
/* 8019D8CC 0019A82C  28 00 00 00 */	cmplwi r0, 0
/* 8019D8D0 0019A830  41 82 00 14 */	beq lbl_8019D8E4
/* 8019D8D4 0019A834  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8019D8D8 0019A838  38 80 00 02 */	li r4, 2
/* 8019D8DC 0019A83C  38 A0 00 01 */	li r5, 1
/* 8019D8E0 0019A840  48 17 1E 5D */	bl Load__8CTextureCF11_GXTexMapIDQ28CTexture10EClampMode
lbl_8019D8E4:
/* 8019D8E4 0019A844  38 60 00 03 */	li r3, 3
/* 8019D8E8 0019A848  48 16 B5 2D */	bl SetNumTexGens__3CGXFUc
/* 8019D8EC 0019A84C  FC 20 F8 90 */	fmr f1, f31
/* 8019D8F0 0019A850  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8019D8F4 0019A854  38 81 00 6C */	addi r4, r1, 0x6c
/* 8019D8F8 0019A858  4B F7 F1 ED */	bl CalculateFluidTextureOffset__14CFluidUVMotionCFfPA2_f
/* 8019D8FC 0019A85C  82 1F 00 00 */	lwz r16, 0(r31)
/* 8019D900 0019A860  38 61 00 4C */	addi r3, r1, 0x4c
/* 8019D904 0019A864  82 7F 00 0C */	lwz r19, 0xc(r31)
/* 8019D908 0019A868  38 80 00 2D */	li r4, 0x2d
/* 8019D90C 0019A86C  82 BF 00 14 */	lwz r21, 0x14(r31)
/* 8019D910 0019A870  38 A0 00 01 */	li r5, 1
/* 8019D914 0019A874  82 FF 00 1C */	lwz r23, 0x1c(r31)
/* 8019D918 0019A878  83 1F 00 20 */	lwz r24, 0x20(r31)
/* 8019D91C 0019A87C  83 7F 00 2C */	lwz r27, 0x2c(r31)
/* 8019D920 0019A880  83 BF 00 34 */	lwz r29, 0x34(r31)
/* 8019D924 0019A884  81 7F 00 3C */	lwz r11, 0x3c(r31)
/* 8019D928 0019A888  81 5F 00 40 */	lwz r10, 0x40(r31)
/* 8019D92C 0019A88C  80 FF 00 4C */	lwz r7, 0x4c(r31)
/* 8019D930 0019A890  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 8019D934 0019A894  81 FF 00 5C */	lwz r15, 0x5c(r31)
/* 8019D938 0019A898  82 3F 00 04 */	lwz r17, 4(r31)
/* 8019D93C 0019A89C  82 5F 00 08 */	lwz r18, 8(r31)
/* 8019D940 0019A8A0  82 9F 00 10 */	lwz r20, 0x10(r31)
/* 8019D944 0019A8A4  82 DF 00 18 */	lwz r22, 0x18(r31)
/* 8019D948 0019A8A8  83 3F 00 24 */	lwz r25, 0x24(r31)
/* 8019D94C 0019A8AC  83 5F 00 28 */	lwz r26, 0x28(r31)
/* 8019D950 0019A8B0  83 9F 00 30 */	lwz r28, 0x30(r31)
/* 8019D954 0019A8B4  81 9F 00 38 */	lwz r12, 0x38(r31)
/* 8019D958 0019A8B8  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 8019D95C 0019A8BC  81 1F 00 48 */	lwz r8, 0x48(r31)
/* 8019D960 0019A8C0  80 DF 00 50 */	lwz r6, 0x50(r31)
/* 8019D964 0019A8C4  83 FF 00 58 */	lwz r31, 0x58(r31)
/* 8019D968 0019A8C8  92 01 00 4C */	stw r16, 0x4c(r1)
/* 8019D96C 0019A8CC  C0 DE 00 7C */	lfs f6, 0x7c(r30)
/* 8019D970 0019A8D0  92 A1 00 60 */	stw r21, 0x60(r1)
/* 8019D974 0019A8D4  C1 01 00 74 */	lfs f8, 0x74(r1)
/* 8019D978 0019A8D8  92 61 00 58 */	stw r19, 0x58(r1)
/* 8019D97C 0019A8DC  C0 E1 00 78 */	lfs f7, 0x78(r1)
/* 8019D980 0019A8E0  92 E1 00 68 */	stw r23, 0x68(r1)
/* 8019D984 0019A8E4  C0 A1 00 7C */	lfs f5, 0x7c(r1)
/* 8019D988 0019A8E8  93 61 00 38 */	stw r27, 0x38(r1)
/* 8019D98C 0019A8EC  C0 81 00 80 */	lfs f4, 0x80(r1)
/* 8019D990 0019A8F0  91 61 00 48 */	stw r11, 0x48(r1)
/* 8019D994 0019A8F4  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 8019D998 0019A8F8  93 01 00 2C */	stw r24, 0x2c(r1)
/* 8019D99C 0019A8FC  C0 41 00 6C */	lfs f2, 0x6c(r1)
/* 8019D9A0 0019A900  93 A1 00 40 */	stw r29, 0x40(r1)
/* 8019D9A4 0019A904  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 8019D9A8 0019A908  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8019D9AC 0019A90C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8019D9B0 0019A910  91 41 00 0C */	stw r10, 0xc(r1)
/* 8019D9B4 0019A914  90 01 00 20 */	stw r0, 0x20(r1)
/* 8019D9B8 0019A918  91 E1 00 28 */	stw r15, 0x28(r1)
/* 8019D9BC 0019A91C  92 21 00 50 */	stw r17, 0x50(r1)
/* 8019D9C0 0019A920  92 41 00 54 */	stw r18, 0x54(r1)
/* 8019D9C4 0019A924  92 81 00 5C */	stw r20, 0x5c(r1)
/* 8019D9C8 0019A928  92 C1 00 64 */	stw r22, 0x64(r1)
/* 8019D9CC 0019A92C  D1 01 00 58 */	stfs f8, 0x58(r1)
/* 8019D9D0 0019A930  D0 E1 00 68 */	stfs f7, 0x68(r1)
/* 8019D9D4 0019A934  D0 C1 00 60 */	stfs f6, 0x60(r1)
/* 8019D9D8 0019A938  D0 C1 00 4C */	stfs f6, 0x4c(r1)
/* 8019D9DC 0019A93C  93 21 00 30 */	stw r25, 0x30(r1)
/* 8019D9E0 0019A940  93 41 00 34 */	stw r26, 0x34(r1)
/* 8019D9E4 0019A944  93 81 00 3C */	stw r28, 0x3c(r1)
/* 8019D9E8 0019A948  91 81 00 44 */	stw r12, 0x44(r1)
/* 8019D9EC 0019A94C  D0 A1 00 38 */	stfs f5, 0x38(r1)
/* 8019D9F0 0019A950  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 8019D9F4 0019A954  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8019D9F8 0019A958  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8019D9FC 0019A95C  91 21 00 10 */	stw r9, 0x10(r1)
/* 8019DA00 0019A960  91 01 00 14 */	stw r8, 0x14(r1)
/* 8019DA04 0019A964  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8019DA08 0019A968  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8019DA0C 0019A96C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8019DA10 0019A970  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8019DA14 0019A974  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8019DA18 0019A978  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8019DA1C 0019A97C  48 1D EA 75 */	bl GXLoadTexMtxImm
/* 8019DA20 0019A980  38 61 00 2C */	addi r3, r1, 0x2c
/* 8019DA24 0019A984  38 80 00 30 */	li r4, 0x30
/* 8019DA28 0019A988  38 A0 00 01 */	li r5, 1
/* 8019DA2C 0019A98C  48 1D EA 65 */	bl GXLoadTexMtxImm
/* 8019DA30 0019A990  38 61 00 0C */	addi r3, r1, 0xc
/* 8019DA34 0019A994  38 80 00 33 */	li r4, 0x33
/* 8019DA38 0019A998  38 A0 00 01 */	li r5, 1
/* 8019DA3C 0019A99C  48 1D EA 55 */	bl GXLoadTexMtxImm
/* 8019DA40 0019A9A0  38 60 00 00 */	li r3, 0
/* 8019DA44 0019A9A4  38 80 00 01 */	li r4, 1
/* 8019DA48 0019A9A8  38 A0 00 00 */	li r5, 0
/* 8019DA4C 0019A9AC  38 C0 00 2D */	li r6, 0x2d
/* 8019DA50 0019A9B0  38 E0 00 00 */	li r7, 0
/* 8019DA54 0019A9B4  39 00 00 7D */	li r8, 0x7d
/* 8019DA58 0019A9B8  48 16 AC 75 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019DA5C 0019A9BC  38 60 00 01 */	li r3, 1
/* 8019DA60 0019A9C0  38 80 00 01 */	li r4, 1
/* 8019DA64 0019A9C4  38 A0 00 00 */	li r5, 0
/* 8019DA68 0019A9C8  38 C0 00 30 */	li r6, 0x30
/* 8019DA6C 0019A9CC  38 E0 00 00 */	li r7, 0
/* 8019DA70 0019A9D0  39 00 00 7D */	li r8, 0x7d
/* 8019DA74 0019A9D4  48 16 AC 59 */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019DA78 0019A9D8  38 60 00 02 */	li r3, 2
/* 8019DA7C 0019A9DC  38 80 00 01 */	li r4, 1
/* 8019DA80 0019A9E0  38 A0 00 00 */	li r5, 0
/* 8019DA84 0019A9E4  38 C0 00 33 */	li r6, 0x33
/* 8019DA88 0019A9E8  38 E0 00 00 */	li r7, 0
/* 8019DA8C 0019A9EC  39 00 00 7D */	li r8, 0x7d
/* 8019DA90 0019A9F0  48 16 AC 3D */	bl SetTexCoordGen__3CGXF13_GXTexCoordID13_GXTexGenType12_GXTexGenSrc9_GXTexMtxUc11_GXPTTexMtx
/* 8019DA94 0019A9F4  38 60 00 00 */	li r3, 0
/* 8019DA98 0019A9F8  38 80 00 00 */	li r4, 0
/* 8019DA9C 0019A9FC  38 A0 00 00 */	li r5, 0
/* 8019DAA0 0019AA00  38 C0 00 FF */	li r6, 0xff
/* 8019DAA4 0019AA04  48 16 AE A9 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8019DAA8 0019AA08  38 60 00 01 */	li r3, 1
/* 8019DAAC 0019AA0C  38 80 00 01 */	li r4, 1
/* 8019DAB0 0019AA10  38 A0 00 01 */	li r5, 1
/* 8019DAB4 0019AA14  38 C0 00 FF */	li r6, 0xff
/* 8019DAB8 0019AA18  48 16 AE 95 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8019DABC 0019AA1C  38 60 00 02 */	li r3, 2
/* 8019DAC0 0019AA20  38 80 00 02 */	li r4, 2
/* 8019DAC4 0019AA24  38 A0 00 02 */	li r5, 2
/* 8019DAC8 0019AA28  38 C0 00 FF */	li r6, 0xff
/* 8019DACC 0019AA2C  48 16 AE 81 */	bl SetTevOrder__3CGXF13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID
/* 8019DAD0 0019AA30  38 60 00 03 */	li r3, 3
/* 8019DAD4 0019AA34  48 16 B1 BD */	bl SetNumTevStages__3CGXFUc
/* 8019DAD8 0019AA38  38 60 00 00 */	li r3, 0
/* 8019DADC 0019AA3C  38 80 00 0F */	li r4, 0xf
/* 8019DAE0 0019AA40  38 A0 00 08 */	li r5, 8
/* 8019DAE4 0019AA44  38 C0 00 0E */	li r6, 0xe
/* 8019DAE8 0019AA48  38 E0 00 0F */	li r7, 0xf
/* 8019DAEC 0019AA4C  48 16 B1 01 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 8019DAF0 0019AA50  38 60 00 01 */	li r3, 1
/* 8019DAF4 0019AA54  38 80 00 0F */	li r4, 0xf
/* 8019DAF8 0019AA58  38 A0 00 08 */	li r5, 8
/* 8019DAFC 0019AA5C  38 C0 00 00 */	li r6, 0
/* 8019DB00 0019AA60  38 E0 00 0F */	li r7, 0xf
/* 8019DB04 0019AA64  48 16 B0 E9 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 8019DB08 0019AA68  38 60 00 02 */	li r3, 2
/* 8019DB0C 0019AA6C  38 80 00 0F */	li r4, 0xf
/* 8019DB10 0019AA70  38 A0 00 08 */	li r5, 8
/* 8019DB14 0019AA74  38 C0 00 0C */	li r6, 0xc
/* 8019DB18 0019AA78  38 E0 00 00 */	li r7, 0
/* 8019DB1C 0019AA7C  48 16 B0 D1 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 8019DB20 0019AA80  38 60 00 02 */	li r3, 2
/* 8019DB24 0019AA84  38 80 00 07 */	li r4, 7
/* 8019DB28 0019AA88  38 A0 00 07 */	li r5, 7
/* 8019DB2C 0019AA8C  38 C0 00 07 */	li r6, 7
/* 8019DB30 0019AA90  38 E0 00 06 */	li r7, 6
/* 8019DB34 0019AA94  48 16 B0 61 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 8019DB38 0019AA98  C0 22 A7 20 */	lfs f1, lbl_805AC440@sda21(r2)
/* 8019DB3C 0019AA9C  FC 80 F0 90 */	fmr f4, f30
/* 8019DB40 0019AAA0  38 61 00 08 */	addi r3, r1, 8
/* 8019DB44 0019AAA4  FC 40 08 90 */	fmr f2, f1
/* 8019DB48 0019AAA8  FC 60 08 90 */	fmr f3, f1
/* 8019DB4C 0019AAAC  48 1C 58 A1 */	bl __ct__6CColorFffff
/* 8019DB50 0019AAB0  7C 64 1B 78 */	mr r4, r3
/* 8019DB54 0019AAB4  38 60 00 00 */	li r3, 0
/* 8019DB58 0019AAB8  48 16 B0 ED */	bl SetTevKColor__3CGXF14_GXTevKColorIDRC8_GXColor
/* 8019DB5C 0019AABC  38 60 00 00 */	li r3, 0
/* 8019DB60 0019AAC0  38 80 00 0C */	li r4, 0xc
/* 8019DB64 0019AAC4  48 16 AE 7D */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 8019DB68 0019AAC8  38 60 00 02 */	li r3, 2
/* 8019DB6C 0019AACC  38 80 00 1C */	li r4, 0x1c
/* 8019DB70 0019AAD0  48 16 AE 2D */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 8019DB74 0019AAD4  38 60 00 00 */	li r3, 0
/* 8019DB78 0019AAD8  48 16 A0 D9 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 8019DB7C 0019AADC  38 60 00 01 */	li r3, 1
/* 8019DB80 0019AAE0  48 16 A0 D1 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 8019DB84 0019AAE4  38 60 00 02 */	li r3, 2
/* 8019DB88 0019AAE8  48 16 A0 C9 */	bl SetStandardTevColorAlphaOp__3CGXF13_GXTevStageID
/* 8019DB8C 0019AAEC  C0 02 A7 20 */	lfs f0, lbl_805AC440@sda21(r2)
/* 8019DB90 0019AAF0  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 8019DB94 0019AAF4  40 82 00 0C */	bne lbl_8019DBA0
/* 8019DB98 0019AAF8  38 60 00 00 */	li r3, 0
/* 8019DB9C 0019AAFC  48 00 00 08 */	b lbl_8019DBA4
lbl_8019DBA0:
/* 8019DBA0 0019AB00  38 60 00 01 */	li r3, 1
lbl_8019DBA4:
/* 8019DBA4 0019AB04  38 80 00 04 */	li r4, 4
/* 8019DBA8 0019AB08  38 A0 00 05 */	li r5, 5
/* 8019DBAC 0019AB0C  38 C0 00 00 */	li r6, 0
/* 8019DBB0 0019AB10  48 16 AD 21 */	bl SetBlendMode__3CGXF12_GXBlendMode14_GXBlendFactor14_GXBlendFactor10_GXLogicOp
/* 8019DBB4 0019AB14  38 60 00 01 */	li r3, 1
/* 8019DBB8 0019AB18  38 80 00 03 */	li r4, 3
/* 8019DBBC 0019AB1C  38 A0 00 00 */	li r5, 0
/* 8019DBC0 0019AB20  48 16 AC BD */	bl SetZMode__3CGXFb10_GXCompareb
/* 8019DBC4 0019AB24  38 60 00 07 */	li r3, 7
/* 8019DBC8 0019AB28  38 80 00 00 */	li r4, 0
/* 8019DBCC 0019AB2C  38 A0 00 00 */	li r5, 0
/* 8019DBD0 0019AB30  38 C0 00 07 */	li r6, 7
/* 8019DBD4 0019AB34  38 E0 00 00 */	li r7, 0
/* 8019DBD8 0019AB38  48 16 AC 3D */	bl SetAlphaCompare__3CGXF10_GXCompareUc10_GXAlphaOp10_GXCompareUc
/* 8019DBDC 0019AB3C  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 8019DBE0 0019AB40  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 8019DBE4 0019AB44  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, qr0
/* 8019DBE8 0019AB48  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 8019DBEC 0019AB4C  B9 E1 00 8C */	lmw r15, 0x8c(r1)
/* 8019DBF0 0019AB50  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8019DBF4 0019AB54  7C 08 03 A6 */	mtlr r0
/* 8019DBF8 0019AB58  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8019DBFC 0019AB5C  4E 80 00 20 */	blr

.global __dt__15CFluidPlaneDoorFv
__dt__15CFluidPlaneDoorFv:
/* 8019DC00 0019AB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019DC04 0019AB64  7C 08 02 A6 */	mflr r0
/* 8019DC08 0019AB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019DC0C 0019AB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019DC10 0019AB70  7C 9F 23 78 */	mr r31, r4
/* 8019DC14 0019AB74  93 C1 00 08 */	stw r30, 8(r1)
/* 8019DC18 0019AB78  7C 7E 1B 79 */	or. r30, r3, r3
/* 8019DC1C 0019AB7C  41 82 00 28 */	beq lbl_8019DC44
/* 8019DC20 0019AB80  3C A0 80 3E */	lis r5, lbl_803E46E8@ha
/* 8019DC24 0019AB84  38 80 00 00 */	li r4, 0
/* 8019DC28 0019AB88  38 05 46 E8 */	addi r0, r5, lbl_803E46E8@l
/* 8019DC2C 0019AB8C  90 1E 00 00 */	stw r0, 0(r30)
/* 8019DC30 0019AB90  4B F9 0F AD */	bl __dt__11CFluidPlaneFv
/* 8019DC34 0019AB94  7F E0 07 35 */	extsh. r0, r31
/* 8019DC38 0019AB98  40 81 00 0C */	ble lbl_8019DC44
/* 8019DC3C 0019AB9C  7F C3 F3 78 */	mr r3, r30
/* 8019DC40 0019ABA0  48 17 7C F1 */	bl Free__7CMemoryFPCv
lbl_8019DC44:
/* 8019DC44 0019ABA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019DC48 0019ABA8  7F C3 F3 78 */	mr r3, r30
/* 8019DC4C 0019ABAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019DC50 0019ABB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019DC54 0019ABB4  7C 08 03 A6 */	mtlr r0
/* 8019DC58 0019ABB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019DC5C 0019ABBC  4E 80 00 20 */	blr

.global __ct__15CFluidPlaneDoorFUiUiUifUiQ211CFluidPlane10EFluidTypefRC14CFluidUVMotion
__ct__15CFluidPlaneDoorFUiUiUifUiQ211CFluidPlane10EFluidTypefRC14CFluidUVMotion:
/* 8019DC60 0019ABC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019DC64 0019ABC4  7C 08 02 A6 */	mflr r0
/* 8019DC68 0019ABC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019DC6C 0019ABCC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8019DC70 0019ABD0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8019DC74 0019ABD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8019DC78 0019ABD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8019DC7C 0019ABDC  FC 00 10 90 */	fmr f0, f2
/* 8019DC80 0019ABE0  7C FF 3B 78 */	mr r31, r7
/* 8019DC84 0019ABE4  FF E0 08 90 */	fmr f31, f1
/* 8019DC88 0019ABE8  7D 07 43 78 */	mr r7, r8
/* 8019DC8C 0019ABEC  C0 42 A7 30 */	lfs f2, lbl_805AC450@sda21(r2)
/* 8019DC90 0019ABF0  7C 7E 1B 78 */	mr r30, r3
/* 8019DC94 0019ABF4  FC 20 00 90 */	fmr f1, f0
/* 8019DC98 0019ABF8  7D 28 4B 78 */	mr r8, r9
/* 8019DC9C 0019ABFC  4B F9 10 99 */	bl __ct__11CFluidPlaneFUiUiUifQ211CFluidPlane10EFluidTypefRC14CFluidUVMotion
/* 8019DCA0 0019AC00  3C 60 80 3E */	lis r3, lbl_803E46E8@ha
/* 8019DCA4 0019AC04  3C 00 43 30 */	lis r0, 0x4330
/* 8019DCA8 0019AC08  38 63 46 E8 */	addi r3, r3, lbl_803E46E8@l
/* 8019DCAC 0019AC0C  57 E4 00 3C */	rlwinm r4, r31, 0, 0, 0x1e
/* 8019DCB0 0019AC10  90 7E 00 00 */	stw r3, 0(r30)
/* 8019DCB4 0019AC14  7F C3 F3 78 */	mr r3, r30
/* 8019DCB8 0019AC18  C8 22 A7 28 */	lfd f1, lbl_805AC448@sda21(r2)
/* 8019DCBC 0019AC1C  D3 FE 00 A0 */	stfs f31, 0xa0(r30)
/* 8019DCC0 0019AC20  90 9E 00 A4 */	stw r4, 0xa4(r30)
/* 8019DCC4 0019AC24  80 9E 00 A4 */	lwz r4, 0xa4(r30)
/* 8019DCC8 0019AC28  90 01 00 08 */	stw r0, 8(r1)
/* 8019DCCC 0019AC2C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8019DCD0 0019AC30  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019DCD4 0019AC34  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019DCD8 0019AC38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019DCDC 0019AC3C  EC 1F 00 24 */	fdivs f0, f31, f0
/* 8019DCE0 0019AC40  D0 1E 00 A8 */	stfs f0, 0xa8(r30)
/* 8019DCE4 0019AC44  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 8019DCE8 0019AC48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019DCEC 0019AC4C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8019DCF0 0019AC50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8019DCF4 0019AC54  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8019DCF8 0019AC58  7C 08 03 A6 */	mtlr r0
/* 8019DCFC 0019AC5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8019DD00 0019AC60  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AC440
lbl_805AC440:
	# ROM: 0x3F8CE0
	.float 1.0

.global lbl_805AC444
lbl_805AC444:
	# ROM: 0x3F8CE4
	.4byte 0

.global lbl_805AC448
lbl_805AC448:
	# ROM: 0x3F8CE8
	.double 4.503601774854144E15

.global lbl_805AC450
lbl_805AC450:
	# ROM: 0x3F8CF0
	.float 0.5
	.4byte 0


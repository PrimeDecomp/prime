.include "macros.inc"

.section .sdata2
.balign 8
.global lbl_805AF2C8
lbl_805AF2C8:
	# ROM: 0x3FBB68
	.float 2.0
	.4byte 0

.global lbl_805AF2D0
lbl_805AF2D0:
	# ROM: 0x3FBB70
	.4byte 0x325A740E

.global lbl_805AF2D4
lbl_805AF2D4:
	# ROM: 0x3FBB74
	.4byte 0x447A0000

.global lbl_805AF2D8
lbl_805AF2D8:
	# ROM: 0x3FBB78
	.double 4.503601774854144E15

.global lbl_805AF2E0
lbl_805AF2E0:
	# ROM: 0x3FBB80
	.4byte 0x39A9C84A
	.4byte 0

.global lbl_805AF2E8
lbl_805AF2E8:
	# ROM: 0x3FBB88
	.4byte 0x43300000
	.4byte 0



.section .text, "ax"

.global adsrConvertTimeCents
adsrConvertTimeCents:
/* 803A9210 003A6170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A9214 003A6174  7C 08 02 A6 */	mflr r0
/* 803A9218 003A6178  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803A921C 003A617C  C8 42 D5 B8 */	lfd f2, lbl_805AF2D8@sda21(r2)
/* 803A9220 003A6180  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A9224 003A6184  3C 00 43 30 */	lis r0, 0x4330
/* 803A9228 003A6188  C0 62 D5 B0 */	lfs f3, lbl_805AF2D0@sda21(r2)
/* 803A922C 003A618C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A9230 003A6190  C8 22 D5 A8 */	lfd f1, lbl_805AF2C8@sda21(r2)
/* 803A9234 003A6194  90 01 00 08 */	stw r0, 8(r1)
/* 803A9238 003A6198  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A923C 003A619C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A9240 003A61A0  EC 43 00 32 */	fmuls f2, f3, f0
/* 803A9244 003A61A4  4B FE BA A9 */	bl pow
/* 803A9248 003A61A8  FC 20 08 18 */	frsp f1, f1
/* 803A924C 003A61AC  C0 02 D5 B4 */	lfs f0, lbl_805AF2D4@sda21(r2)
/* 803A9250 003A61B0  EC 20 00 72 */	fmuls f1, f0, f1
/* 803A9254 003A61B4  4B FE 07 01 */	bl __cvt_fp2unsigned
/* 803A9258 003A61B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A925C 003A61BC  7C 08 03 A6 */	mtlr r0
/* 803A9260 003A61C0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A9264 003A61C4  4E 80 00 20 */	blr

.global salChangeADSRState
salChangeADSRState:
/* 803A9268 003A61C8  88 83 00 00 */	lbz r4, 0(r3)
/* 803A926C 003A61CC  38 00 00 00 */	li r0, 0
/* 803A9270 003A61D0  2C 04 00 01 */	cmpwi r4, 1
/* 803A9274 003A61D4  41 82 00 F0 */	beq lbl_803A9364
/* 803A9278 003A61D8  40 80 02 54 */	bge lbl_803A94CC
/* 803A927C 003A61DC  2C 04 00 00 */	cmpwi r4, 0
/* 803A9280 003A61E0  40 80 00 08 */	bge lbl_803A9288
/* 803A9284 003A61E4  48 00 02 48 */	b lbl_803A94CC
lbl_803A9288:
/* 803A9288 003A61E8  88 83 00 01 */	lbz r4, 1(r3)
/* 803A928C 003A61EC  2C 04 00 02 */	cmpwi r4, 2
/* 803A9290 003A61F0  41 82 00 98 */	beq lbl_803A9328
/* 803A9294 003A61F4  40 80 00 14 */	bge lbl_803A92A8
/* 803A9298 003A61F8  2C 04 00 00 */	cmpwi r4, 0
/* 803A929C 003A61FC  41 82 00 18 */	beq lbl_803A92B4
/* 803A92A0 003A6200  40 80 00 48 */	bge lbl_803A92E8
/* 803A92A4 003A6204  48 00 02 28 */	b lbl_803A94CC
lbl_803A92A8:
/* 803A92A8 003A6208  2C 04 00 04 */	cmpwi r4, 4
/* 803A92AC 003A620C  41 82 00 A8 */	beq lbl_803A9354
/* 803A92B0 003A6210  48 00 02 1C */	b lbl_803A94CC
lbl_803A92B4:
/* 803A92B4 003A6214  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803A92B8 003A6218  28 04 00 00 */	cmplwi r4, 0
/* 803A92BC 003A621C  90 83 00 04 */	stw r4, 4(r3)
/* 803A92C0 003A6220  41 82 00 28 */	beq lbl_803A92E8
/* 803A92C4 003A6224  38 A0 00 01 */	li r5, 1
/* 803A92C8 003A6228  38 80 00 00 */	li r4, 0
/* 803A92CC 003A622C  98 A3 00 01 */	stb r5, 1(r3)
/* 803A92D0 003A6230  3C A0 7F FF */	lis r5, 0x7fff
/* 803A92D4 003A6234  90 83 00 08 */	stw r4, 8(r3)
/* 803A92D8 003A6238  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803A92DC 003A623C  7C 85 23 96 */	divwu r4, r5, r4
/* 803A92E0 003A6240  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A92E4 003A6244  48 00 01 E8 */	b lbl_803A94CC
lbl_803A92E8:
/* 803A92E8 003A6248  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803A92EC 003A624C  28 04 00 00 */	cmplwi r4, 0
/* 803A92F0 003A6250  90 83 00 04 */	stw r4, 4(r3)
/* 803A92F4 003A6254  41 82 00 34 */	beq lbl_803A9328
/* 803A92F8 003A6258  38 80 00 02 */	li r4, 2
/* 803A92FC 003A625C  3C C0 7F FF */	lis r6, 0x7fff
/* 803A9300 003A6260  98 83 00 01 */	stb r4, 1(r3)
/* 803A9304 003A6264  90 C3 00 08 */	stw r6, 8(r3)
/* 803A9308 003A6268  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 803A930C 003A626C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803A9310 003A6270  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803A9314 003A6274  7C A5 30 50 */	subf r5, r5, r6
/* 803A9318 003A6278  7C 85 23 96 */	divwu r4, r5, r4
/* 803A931C 003A627C  7C 84 00 D0 */	neg r4, r4
/* 803A9320 003A6280  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A9324 003A6284  48 00 01 A8 */	b lbl_803A94CC
lbl_803A9328:
/* 803A9328 003A6288  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 803A932C 003A628C  28 04 00 00 */	cmplwi r4, 0
/* 803A9330 003A6290  41 82 00 24 */	beq lbl_803A9354
/* 803A9334 003A6294  38 A0 00 03 */	li r5, 3
/* 803A9338 003A6298  38 80 00 00 */	li r4, 0
/* 803A933C 003A629C  98 A3 00 01 */	stb r5, 1(r3)
/* 803A9340 003A62A0  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 803A9344 003A62A4  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803A9348 003A62A8  90 A3 00 08 */	stw r5, 8(r3)
/* 803A934C 003A62AC  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A9350 003A62B0  48 00 01 7C */	b lbl_803A94CC
lbl_803A9354:
/* 803A9354 003A62B4  38 80 00 00 */	li r4, 0
/* 803A9358 003A62B8  38 00 00 01 */	li r0, 1
/* 803A935C 003A62BC  90 83 00 08 */	stw r4, 8(r3)
/* 803A9360 003A62C0  48 00 01 6C */	b lbl_803A94CC
lbl_803A9364:
/* 803A9364 003A62C4  88 83 00 01 */	lbz r4, 1(r3)
/* 803A9368 003A62C8  2C 04 00 02 */	cmpwi r4, 2
/* 803A936C 003A62CC  41 82 00 F4 */	beq lbl_803A9460
/* 803A9370 003A62D0  40 80 00 14 */	bge lbl_803A9384
/* 803A9374 003A62D4  2C 04 00 00 */	cmpwi r4, 0
/* 803A9378 003A62D8  41 82 00 18 */	beq lbl_803A9390
/* 803A937C 003A62DC  40 80 00 74 */	bge lbl_803A93F0
/* 803A9380 003A62E0  48 00 01 4C */	b lbl_803A94CC
lbl_803A9384:
/* 803A9384 003A62E4  2C 04 00 04 */	cmpwi r4, 4
/* 803A9388 003A62E8  41 82 01 38 */	beq lbl_803A94C0
/* 803A938C 003A62EC  48 00 01 40 */	b lbl_803A94CC
lbl_803A9390:
/* 803A9390 003A62F0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803A9394 003A62F4  28 04 00 00 */	cmplwi r4, 0
/* 803A9398 003A62F8  90 83 00 04 */	stw r4, 4(r3)
/* 803A939C 003A62FC  41 82 00 54 */	beq lbl_803A93F0
/* 803A93A0 003A6300  38 80 00 01 */	li r4, 1
/* 803A93A4 003A6304  98 83 00 01 */	stb r4, 1(r3)
/* 803A93A8 003A6308  88 83 00 26 */	lbz r4, 0x26(r3)
/* 803A93AC 003A630C  28 04 00 00 */	cmplwi r4, 0
/* 803A93B0 003A6310  40 82 00 20 */	bne lbl_803A93D0
/* 803A93B4 003A6314  38 80 00 00 */	li r4, 0
/* 803A93B8 003A6318  3C A0 7F FF */	lis r5, 0x7fff
/* 803A93BC 003A631C  90 83 00 08 */	stw r4, 8(r3)
/* 803A93C0 003A6320  80 83 00 04 */	lwz r4, 4(r3)
/* 803A93C4 003A6324  7C 85 23 96 */	divwu r4, r5, r4
/* 803A93C8 003A6328  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A93CC 003A632C  48 00 01 00 */	b lbl_803A94CC
lbl_803A93D0:
/* 803A93D0 003A6330  38 80 00 00 */	li r4, 0
/* 803A93D4 003A6334  3C A0 00 C1 */	lis r5, 0xc1
/* 803A93D8 003A6338  90 83 00 0C */	stw r4, 0xc(r3)
/* 803A93DC 003A633C  90 83 00 08 */	stw r4, 8(r3)
/* 803A93E0 003A6340  80 83 00 04 */	lwz r4, 4(r3)
/* 803A93E4 003A6344  7C 85 23 96 */	divwu r4, r5, r4
/* 803A93E8 003A6348  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A93EC 003A634C  48 00 00 E0 */	b lbl_803A94CC
lbl_803A93F0:
/* 803A93F0 003A6350  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 803A93F4 003A6354  3C 80 15 39 */	lis r4, 0x15390949@ha
/* 803A93F8 003A6358  38 C4 09 49 */	addi r6, r4, 0x15390949@l
/* 803A93FC 003A635C  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 803A9400 003A6360  20 85 00 C1 */	subfic r4, r5, 0xc1
/* 803A9404 003A6364  54 84 80 1E */	slwi r4, r4, 0x10
/* 803A9408 003A6368  7C 86 20 16 */	mulhwu r4, r6, r4
/* 803A940C 003A636C  54 84 E1 3E */	srwi r4, r4, 4
/* 803A9410 003A6370  7C 87 21 D6 */	mullw r4, r7, r4
/* 803A9414 003A6374  54 84 84 3E */	srwi r4, r4, 0x10
/* 803A9418 003A6378  90 83 00 04 */	stw r4, 4(r3)
/* 803A941C 003A637C  80 83 00 04 */	lwz r4, 4(r3)
/* 803A9420 003A6380  28 04 00 00 */	cmplwi r4, 0
/* 803A9424 003A6384  41 82 00 3C */	beq lbl_803A9460
/* 803A9428 003A6388  38 80 00 02 */	li r4, 2
/* 803A942C 003A638C  3C A0 7F FF */	lis r5, 0x7fff
/* 803A9430 003A6390  98 83 00 01 */	stb r4, 1(r3)
/* 803A9434 003A6394  3C 80 00 C1 */	lis r4, 0xc1
/* 803A9438 003A6398  90 A3 00 08 */	stw r5, 8(r3)
/* 803A943C 003A639C  90 83 00 0C */	stw r4, 0xc(r3)
/* 803A9440 003A63A0  A0 A3 00 1C */	lhz r5, 0x1c(r3)
/* 803A9444 003A63A4  80 83 00 04 */	lwz r4, 4(r3)
/* 803A9448 003A63A8  20 A5 00 C1 */	subfic r5, r5, 0xc1
/* 803A944C 003A63AC  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803A9450 003A63B0  7C 85 23 96 */	divwu r4, r5, r4
/* 803A9454 003A63B4  7C 84 00 D0 */	neg r4, r4
/* 803A9458 003A63B8  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A945C 003A63BC  48 00 00 70 */	b lbl_803A94CC
lbl_803A9460:
/* 803A9460 003A63C0  A0 83 00 1C */	lhz r4, 0x1c(r3)
/* 803A9464 003A63C4  28 04 00 00 */	cmplwi r4, 0
/* 803A9468 003A63C8  41 82 00 58 */	beq lbl_803A94C0
/* 803A946C 003A63CC  38 A0 00 03 */	li r5, 3
/* 803A9470 003A63D0  3C 80 80 3F */	lis r4, dspAttenuationTab@ha
/* 803A9474 003A63D4  98 A3 00 01 */	stb r5, 1(r3)
/* 803A9478 003A63D8  38 A4 38 20 */	addi r5, r4, dspAttenuationTab@l
/* 803A947C 003A63DC  38 80 00 00 */	li r4, 0
/* 803A9480 003A63E0  A0 C3 00 1C */	lhz r6, 0x1c(r3)
/* 803A9484 003A63E4  54 C6 80 1E */	slwi r6, r6, 0x10
/* 803A9488 003A63E8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 803A948C 003A63EC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 803A9490 003A63F0  3C C6 00 01 */	addis r6, r6, 1
/* 803A9494 003A63F4  38 C6 80 00 */	addi r6, r6, -32768
/* 803A9498 003A63F8  7C C6 86 70 */	srawi r6, r6, 0x10
/* 803A949C 003A63FC  20 E6 00 C1 */	subfic r7, r6, 0xc1
/* 803A94A0 003A6400  7C E6 FE 70 */	srawi r6, r7, 0x1f
/* 803A94A4 003A6404  7C E6 30 78 */	andc r6, r7, r6
/* 803A94A8 003A6408  54 C6 08 3C */	slwi r6, r6, 1
/* 803A94AC 003A640C  7C A5 32 2E */	lhzx r5, r5, r6
/* 803A94B0 003A6410  54 A5 80 1E */	slwi r5, r5, 0x10
/* 803A94B4 003A6414  90 A3 00 08 */	stw r5, 8(r3)
/* 803A94B8 003A6418  90 83 00 10 */	stw r4, 0x10(r3)
/* 803A94BC 003A641C  48 00 00 10 */	b lbl_803A94CC
lbl_803A94C0:
/* 803A94C0 003A6420  38 80 00 00 */	li r4, 0
/* 803A94C4 003A6424  38 00 00 01 */	li r0, 1
/* 803A94C8 003A6428  90 83 00 08 */	stw r4, 8(r3)
lbl_803A94CC:
/* 803A94CC 003A642C  7C 03 03 78 */	mr r3, r0
/* 803A94D0 003A6430  4E 80 00 20 */	blr

.global adsrSetup
adsrSetup:
/* 803A94D4 003A6434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A94D8 003A6438  7C 08 02 A6 */	mflr r0
/* 803A94DC 003A643C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A94E0 003A6440  38 00 00 00 */	li r0, 0
/* 803A94E4 003A6444  98 03 00 01 */	stb r0, 1(r3)
/* 803A94E8 003A6448  4B FF FD 81 */	bl salChangeADSRState
/* 803A94EC 003A644C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A94F0 003A6450  7C 08 03 A6 */	mtlr r0
/* 803A94F4 003A6454  38 21 00 10 */	addi r1, r1, 0x10
/* 803A94F8 003A6458  4E 80 00 20 */	blr

.global adsrStartRelease
adsrStartRelease:
/* 803A94FC 003A645C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9500 003A6460  7C 08 02 A6 */	mflr r0
/* 803A9504 003A6464  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9508 003A6468  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A950C 003A646C  7C 7F 1B 78 */	mr r31, r3
/* 803A9510 003A6470  88 03 00 00 */	lbz r0, 0(r3)
/* 803A9514 003A6474  2C 00 00 01 */	cmpwi r0, 1
/* 803A9518 003A6478  41 82 00 54 */	beq lbl_803A956C
/* 803A951C 003A647C  40 80 01 18 */	bge lbl_803A9634
/* 803A9520 003A6480  2C 00 00 00 */	cmpwi r0, 0
/* 803A9524 003A6484  40 80 00 08 */	bge lbl_803A952C
/* 803A9528 003A6488  48 00 01 0C */	b lbl_803A9634
lbl_803A952C:
/* 803A952C 003A648C  38 00 00 04 */	li r0, 4
/* 803A9530 003A6490  28 04 00 00 */	cmplwi r4, 0
/* 803A9534 003A6494  98 1F 00 01 */	stb r0, 1(r31)
/* 803A9538 003A6498  90 9F 00 04 */	stw r4, 4(r31)
/* 803A953C 003A649C  40 82 00 1C */	bne lbl_803A9558
/* 803A9540 003A64A0  38 60 00 01 */	li r3, 1
/* 803A9544 003A64A4  38 00 00 00 */	li r0, 0
/* 803A9548 003A64A8  90 7F 00 04 */	stw r3, 4(r31)
/* 803A954C 003A64AC  38 60 00 01 */	li r3, 1
/* 803A9550 003A64B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A9554 003A64B4  48 00 00 E4 */	b lbl_803A9638
lbl_803A9558:
/* 803A9558 003A64B8  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A955C 003A64BC  7C 00 23 96 */	divwu r0, r0, r4
/* 803A9560 003A64C0  7C 00 00 D0 */	neg r0, r0
/* 803A9564 003A64C4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A9568 003A64C8  48 00 00 CC */	b lbl_803A9634
lbl_803A956C:
/* 803A956C 003A64CC  88 1F 00 26 */	lbz r0, 0x26(r31)
/* 803A9570 003A64D0  28 00 00 00 */	cmplwi r0, 0
/* 803A9574 003A64D4  40 82 00 30 */	bne lbl_803A95A4
/* 803A9578 003A64D8  88 1F 00 01 */	lbz r0, 1(r31)
/* 803A957C 003A64DC  28 00 00 01 */	cmplwi r0, 1
/* 803A9580 003A64E0  40 82 00 24 */	bne lbl_803A95A4
/* 803A9584 003A64E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A9588 003A64E8  3C 60 80 3F */	lis r3, dspScale2IndexTab@ha
/* 803A958C 003A64EC  38 63 39 A4 */	addi r3, r3, dspScale2IndexTab@l
/* 803A9590 003A64F0  7C 00 AE 70 */	srawi r0, r0, 0x15
/* 803A9594 003A64F4  7C 03 00 AE */	lbzx r0, r3, r0
/* 803A9598 003A64F8  20 00 00 C1 */	subfic r0, r0, 0xc1
/* 803A959C 003A64FC  54 00 80 1E */	slwi r0, r0, 0x10
/* 803A95A0 003A6500  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_803A95A4:
/* 803A95A4 003A6504  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803A95A8 003A6508  3C 00 43 30 */	lis r0, 0x4330
/* 803A95AC 003A650C  90 01 00 08 */	stw r0, 8(r1)
/* 803A95B0 003A6510  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803A95B4 003A6514  C8 22 D5 B8 */	lfd f1, lbl_805AF2D8@sda21(r2)
/* 803A95B8 003A6518  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A95BC 003A651C  C0 62 D5 C0 */	lfs f3, lbl_805AF2E0@sda21(r2)
/* 803A95C0 003A6520  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A95C4 003A6524  90 81 00 14 */	stw r4, 0x14(r1)
/* 803A95C8 003A6528  EC 40 08 28 */	fsubs f2, f0, f1
/* 803A95CC 003A652C  C8 22 D5 C8 */	lfd f1, lbl_805AF2E8@sda21(r2)
/* 803A95D0 003A6530  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A95D4 003A6534  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A95D8 003A6538  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803A95DC 003A653C  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A95E0 003A6540  EC 22 00 32 */	fmuls f1, f2, f0
/* 803A95E4 003A6544  4B FE 03 71 */	bl __cvt_fp2unsigned
/* 803A95E8 003A6548  54 63 A3 3E */	srwi r3, r3, 0xc
/* 803A95EC 003A654C  38 00 00 04 */	li r0, 4
/* 803A95F0 003A6550  90 7F 00 04 */	stw r3, 4(r31)
/* 803A95F4 003A6554  98 1F 00 01 */	stb r0, 1(r31)
/* 803A95F8 003A6558  80 7F 00 04 */	lwz r3, 4(r31)
/* 803A95FC 003A655C  28 03 00 00 */	cmplwi r3, 0
/* 803A9600 003A6560  40 82 00 24 */	bne lbl_803A9624
/* 803A9604 003A6564  38 60 00 01 */	li r3, 1
/* 803A9608 003A6568  38 00 00 00 */	li r0, 0
/* 803A960C 003A656C  90 7F 00 04 */	stw r3, 4(r31)
/* 803A9610 003A6570  38 60 00 01 */	li r3, 1
/* 803A9614 003A6574  90 1F 00 08 */	stw r0, 8(r31)
/* 803A9618 003A6578  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803A961C 003A657C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A9620 003A6580  48 00 00 18 */	b lbl_803A9638
lbl_803A9624:
/* 803A9624 003A6584  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803A9628 003A6588  7C 00 1B 96 */	divwu r0, r0, r3
/* 803A962C 003A658C  7C 00 00 D0 */	neg r0, r0
/* 803A9630 003A6590  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_803A9634:
/* 803A9634 003A6594  38 60 00 00 */	li r3, 0
lbl_803A9638:
/* 803A9638 003A6598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A963C 003A659C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A9640 003A65A0  7C 08 03 A6 */	mtlr r0
/* 803A9644 003A65A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A9648 003A65A8  4E 80 00 20 */	blr

.global adsrRelease
adsrRelease:
/* 803A964C 003A65AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9650 003A65B0  7C 08 02 A6 */	mflr r0
/* 803A9654 003A65B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9658 003A65B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A965C 003A65BC  7C 7F 1B 78 */	mr r31, r3
/* 803A9660 003A65C0  88 03 00 00 */	lbz r0, 0(r3)
/* 803A9664 003A65C4  2C 00 00 02 */	cmpwi r0, 2
/* 803A9668 003A65C8  40 80 01 34 */	bge lbl_803A979C
/* 803A966C 003A65CC  2C 00 00 00 */	cmpwi r0, 0
/* 803A9670 003A65D0  40 80 00 08 */	bge lbl_803A9678
/* 803A9674 003A65D4  48 00 01 28 */	b lbl_803A979C
lbl_803A9678:
/* 803A9678 003A65D8  2C 00 00 01 */	cmpwi r0, 1
/* 803A967C 003A65DC  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 803A9680 003A65E0  41 82 00 50 */	beq lbl_803A96D0
/* 803A9684 003A65E4  40 80 01 10 */	bge lbl_803A9794
/* 803A9688 003A65E8  2C 00 00 00 */	cmpwi r0, 0
/* 803A968C 003A65EC  40 80 00 08 */	bge lbl_803A9694
/* 803A9690 003A65F0  48 00 01 04 */	b lbl_803A9794
lbl_803A9694:
/* 803A9694 003A65F4  38 00 00 04 */	li r0, 4
/* 803A9698 003A65F8  28 04 00 00 */	cmplwi r4, 0
/* 803A969C 003A65FC  98 1F 00 01 */	stb r0, 1(r31)
/* 803A96A0 003A6600  90 9F 00 04 */	stw r4, 4(r31)
/* 803A96A4 003A6604  40 82 00 18 */	bne lbl_803A96BC
/* 803A96A8 003A6608  38 60 00 01 */	li r3, 1
/* 803A96AC 003A660C  38 00 00 00 */	li r0, 0
/* 803A96B0 003A6610  90 7F 00 04 */	stw r3, 4(r31)
/* 803A96B4 003A6614  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A96B8 003A6618  48 00 00 E8 */	b lbl_803A97A0
lbl_803A96BC:
/* 803A96BC 003A661C  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A96C0 003A6620  7C 00 23 96 */	divwu r0, r0, r4
/* 803A96C4 003A6624  7C 00 00 D0 */	neg r0, r0
/* 803A96C8 003A6628  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A96CC 003A662C  48 00 00 C8 */	b lbl_803A9794
lbl_803A96D0:
/* 803A96D0 003A6630  88 1F 00 26 */	lbz r0, 0x26(r31)
/* 803A96D4 003A6634  28 00 00 00 */	cmplwi r0, 0
/* 803A96D8 003A6638  40 82 00 30 */	bne lbl_803A9708
/* 803A96DC 003A663C  88 1F 00 01 */	lbz r0, 1(r31)
/* 803A96E0 003A6640  28 00 00 01 */	cmplwi r0, 1
/* 803A96E4 003A6644  40 82 00 24 */	bne lbl_803A9708
/* 803A96E8 003A6648  80 1F 00 08 */	lwz r0, 8(r31)
/* 803A96EC 003A664C  3C 60 80 3F */	lis r3, dspScale2IndexTab@ha
/* 803A96F0 003A6650  38 63 39 A4 */	addi r3, r3, dspScale2IndexTab@l
/* 803A96F4 003A6654  7C 00 AE 70 */	srawi r0, r0, 0x15
/* 803A96F8 003A6658  7C 03 00 AE */	lbzx r0, r3, r0
/* 803A96FC 003A665C  20 00 00 C1 */	subfic r0, r0, 0xc1
/* 803A9700 003A6660  54 00 80 1E */	slwi r0, r0, 0x10
/* 803A9704 003A6664  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_803A9708:
/* 803A9708 003A6668  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 803A970C 003A666C  3C 00 43 30 */	lis r0, 0x4330
/* 803A9710 003A6670  90 01 00 08 */	stw r0, 8(r1)
/* 803A9714 003A6674  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 803A9718 003A6678  C8 22 D5 B8 */	lfd f1, lbl_805AF2D8@sda21(r2)
/* 803A971C 003A667C  90 61 00 0C */	stw r3, 0xc(r1)
/* 803A9720 003A6680  C0 62 D5 C0 */	lfs f3, lbl_805AF2E0@sda21(r2)
/* 803A9724 003A6684  C8 01 00 08 */	lfd f0, 8(r1)
/* 803A9728 003A6688  90 81 00 14 */	stw r4, 0x14(r1)
/* 803A972C 003A668C  EC 40 08 28 */	fsubs f2, f0, f1
/* 803A9730 003A6690  C8 22 D5 C8 */	lfd f1, lbl_805AF2E8@sda21(r2)
/* 803A9734 003A6694  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A9738 003A6698  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A973C 003A669C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803A9740 003A66A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 803A9744 003A66A4  EC 22 00 32 */	fmuls f1, f2, f0
/* 803A9748 003A66A8  4B FE 02 0D */	bl __cvt_fp2unsigned
/* 803A974C 003A66AC  54 63 A3 3E */	srwi r3, r3, 0xc
/* 803A9750 003A66B0  38 00 00 04 */	li r0, 4
/* 803A9754 003A66B4  90 7F 00 04 */	stw r3, 4(r31)
/* 803A9758 003A66B8  98 1F 00 01 */	stb r0, 1(r31)
/* 803A975C 003A66BC  80 7F 00 04 */	lwz r3, 4(r31)
/* 803A9760 003A66C0  28 03 00 00 */	cmplwi r3, 0
/* 803A9764 003A66C4  40 82 00 20 */	bne lbl_803A9784
/* 803A9768 003A66C8  38 60 00 01 */	li r3, 1
/* 803A976C 003A66CC  38 00 00 00 */	li r0, 0
/* 803A9770 003A66D0  90 7F 00 04 */	stw r3, 4(r31)
/* 803A9774 003A66D4  90 1F 00 08 */	stw r0, 8(r31)
/* 803A9778 003A66D8  90 1F 00 0C */	stw r0, 0xc(r31)
/* 803A977C 003A66DC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 803A9780 003A66E0  48 00 00 20 */	b lbl_803A97A0
lbl_803A9784:
/* 803A9784 003A66E4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803A9788 003A66E8  7C 00 1B 96 */	divwu r0, r0, r3
/* 803A978C 003A66EC  7C 00 00 D0 */	neg r0, r0
/* 803A9790 003A66F0  90 1F 00 10 */	stw r0, 0x10(r31)
lbl_803A9794:
/* 803A9794 003A66F4  38 60 00 00 */	li r3, 0
/* 803A9798 003A66F8  48 00 00 08 */	b lbl_803A97A0
lbl_803A979C:
/* 803A979C 003A66FC  38 60 00 00 */	li r3, 0
lbl_803A97A0:
/* 803A97A0 003A6700  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A97A4 003A6704  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A97A8 003A6708  7C 08 03 A6 */	mtlr r0
/* 803A97AC 003A670C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A97B0 003A6710  4E 80 00 20 */	blr

.global adsrHandle
adsrHandle:
/* 803A97B4 003A6714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A97B8 003A6718  7C 08 02 A6 */	mflr r0
/* 803A97BC 003A671C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A97C0 003A6720  38 00 00 00 */	li r0, 0
/* 803A97C4 003A6724  88 C3 00 00 */	lbz r6, 0(r3)
/* 803A97C8 003A6728  2C 06 00 01 */	cmpwi r6, 1
/* 803A97CC 003A672C  41 82 00 94 */	beq lbl_803A9860
/* 803A97D0 003A6730  40 80 01 68 */	bge lbl_803A9938
/* 803A97D4 003A6734  2C 06 00 00 */	cmpwi r6, 0
/* 803A97D8 003A6738  40 80 00 08 */	bge lbl_803A97E0
/* 803A97DC 003A673C  48 00 01 5C */	b lbl_803A9938
lbl_803A97E0:
/* 803A97E0 003A6740  88 C3 00 01 */	lbz r6, 1(r3)
/* 803A97E4 003A6744  28 06 00 03 */	cmplwi r6, 3
/* 803A97E8 003A6748  41 82 00 60 */	beq lbl_803A9848
/* 803A97EC 003A674C  81 03 00 08 */	lwz r8, 8(r3)
/* 803A97F0 003A6750  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 803A97F4 003A6754  7D 06 86 70 */	srawi r6, r8, 0x10
/* 803A97F8 003A6758  7C E8 3A 14 */	add r7, r8, r7
/* 803A97FC 003A675C  90 E3 00 08 */	stw r7, 8(r3)
/* 803A9800 003A6760  B0 C4 00 00 */	sth r6, 0(r4)
/* 803A9804 003A6764  80 83 00 10 */	lwz r4, 0x10(r3)
/* 803A9808 003A6768  2C 04 00 00 */	cmpwi r4, 0
/* 803A980C 003A676C  41 80 00 10 */	blt lbl_803A981C
/* 803A9810 003A6770  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 803A9814 003A6774  B0 85 00 00 */	sth r4, 0(r5)
/* 803A9818 003A6778  48 00 00 14 */	b lbl_803A982C
lbl_803A981C:
/* 803A981C 003A677C  7C 84 00 D0 */	neg r4, r4
/* 803A9820 003A6780  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 803A9824 003A6784  7C 84 00 D0 */	neg r4, r4
/* 803A9828 003A6788  B0 85 00 00 */	sth r4, 0(r5)
lbl_803A982C:
/* 803A982C 003A678C  80 83 00 04 */	lwz r4, 4(r3)
/* 803A9830 003A6790  34 84 FF FF */	addic. r4, r4, -1
/* 803A9834 003A6794  90 83 00 04 */	stw r4, 4(r3)
/* 803A9838 003A6798  40 82 01 00 */	bne lbl_803A9938
/* 803A983C 003A679C  4B FF FA 2D */	bl salChangeADSRState
/* 803A9840 003A67A0  7C 60 1B 78 */	mr r0, r3
/* 803A9844 003A67A4  48 00 00 F4 */	b lbl_803A9938
lbl_803A9848:
/* 803A9848 003A67A8  80 C3 00 08 */	lwz r6, 8(r3)
/* 803A984C 003A67AC  38 60 00 00 */	li r3, 0
/* 803A9850 003A67B0  7C C6 86 70 */	srawi r6, r6, 0x10
/* 803A9854 003A67B4  B0 C4 00 00 */	sth r6, 0(r4)
/* 803A9858 003A67B8  B0 65 00 00 */	sth r3, 0(r5)
/* 803A985C 003A67BC  48 00 00 DC */	b lbl_803A9938
lbl_803A9860:
/* 803A9860 003A67C0  88 E3 00 01 */	lbz r7, 1(r3)
/* 803A9864 003A67C4  28 07 00 03 */	cmplwi r7, 3
/* 803A9868 003A67C8  41 82 00 BC */	beq lbl_803A9924
/* 803A986C 003A67CC  88 C3 00 26 */	lbz r6, 0x26(r3)
/* 803A9870 003A67D0  81 23 00 08 */	lwz r9, 8(r3)
/* 803A9874 003A67D4  28 06 00 00 */	cmplwi r6, 0
/* 803A9878 003A67D8  40 82 00 1C */	bne lbl_803A9894
/* 803A987C 003A67DC  28 07 00 01 */	cmplwi r7, 1
/* 803A9880 003A67E0  40 82 00 14 */	bne lbl_803A9894
/* 803A9884 003A67E4  80 C3 00 10 */	lwz r6, 0x10(r3)
/* 803A9888 003A67E8  7C C9 32 14 */	add r6, r9, r6
/* 803A988C 003A67EC  90 C3 00 08 */	stw r6, 8(r3)
/* 803A9890 003A67F0  48 00 00 48 */	b lbl_803A98D8
lbl_803A9894:
/* 803A9894 003A67F4  81 03 00 0C */	lwz r8, 0xc(r3)
/* 803A9898 003A67F8  3C C0 80 3F */	lis r6, dspAttenuationTab@ha
/* 803A989C 003A67FC  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 803A98A0 003A6800  38 C6 38 20 */	addi r6, r6, dspAttenuationTab@l
/* 803A98A4 003A6804  7C E8 3A 14 */	add r7, r8, r7
/* 803A98A8 003A6808  90 E3 00 0C */	stw r7, 0xc(r3)
/* 803A98AC 003A680C  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 803A98B0 003A6810  3C E7 00 01 */	addis r7, r7, 1
/* 803A98B4 003A6814  38 E7 80 00 */	addi r7, r7, -32768
/* 803A98B8 003A6818  7C E7 86 70 */	srawi r7, r7, 0x10
/* 803A98BC 003A681C  21 07 00 C1 */	subfic r8, r7, 0xc1
/* 803A98C0 003A6820  7D 07 FE 70 */	srawi r7, r8, 0x1f
/* 803A98C4 003A6824  7D 07 38 78 */	andc r7, r8, r7
/* 803A98C8 003A6828  54 E7 08 3C */	slwi r7, r7, 1
/* 803A98CC 003A682C  7C C6 3A 2E */	lhzx r6, r6, r7
/* 803A98D0 003A6830  54 C6 80 1E */	slwi r6, r6, 0x10
/* 803A98D4 003A6834  90 C3 00 08 */	stw r6, 8(r3)
lbl_803A98D8:
/* 803A98D8 003A6838  7D 26 86 70 */	srawi r6, r9, 0x10
/* 803A98DC 003A683C  B0 C4 00 00 */	sth r6, 0(r4)
/* 803A98E0 003A6840  80 83 00 08 */	lwz r4, 8(r3)
/* 803A98E4 003A6844  7C 89 20 51 */	subf. r4, r9, r4
/* 803A98E8 003A6848  41 80 00 10 */	blt lbl_803A98F8
/* 803A98EC 003A684C  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 803A98F0 003A6850  B0 85 00 00 */	sth r4, 0(r5)
/* 803A98F4 003A6854  48 00 00 14 */	b lbl_803A9908
lbl_803A98F8:
/* 803A98F8 003A6858  7C 84 00 D0 */	neg r4, r4
/* 803A98FC 003A685C  7C 84 AE 70 */	srawi r4, r4, 0x15
/* 803A9900 003A6860  7C 84 00 D0 */	neg r4, r4
/* 803A9904 003A6864  B0 85 00 00 */	sth r4, 0(r5)
lbl_803A9908:
/* 803A9908 003A6868  80 83 00 04 */	lwz r4, 4(r3)
/* 803A990C 003A686C  34 84 FF FF */	addic. r4, r4, -1
/* 803A9910 003A6870  90 83 00 04 */	stw r4, 4(r3)
/* 803A9914 003A6874  40 82 00 24 */	bne lbl_803A9938
/* 803A9918 003A6878  4B FF F9 51 */	bl salChangeADSRState
/* 803A991C 003A687C  7C 60 1B 78 */	mr r0, r3
/* 803A9920 003A6880  48 00 00 18 */	b lbl_803A9938
lbl_803A9924:
/* 803A9924 003A6884  80 C3 00 08 */	lwz r6, 8(r3)
/* 803A9928 003A6888  38 60 00 00 */	li r3, 0
/* 803A992C 003A688C  7C C6 86 70 */	srawi r6, r6, 0x10
/* 803A9930 003A6890  B0 C4 00 00 */	sth r6, 0(r4)
/* 803A9934 003A6894  B0 65 00 00 */	sth r3, 0(r5)
lbl_803A9938:
/* 803A9938 003A6898  7C 03 03 78 */	mr r3, r0
/* 803A993C 003A689C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A9940 003A68A0  7C 08 03 A6 */	mtlr r0
/* 803A9944 003A68A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803A9948 003A68A8  4E 80 00 20 */	blr

.global adsrHandleLowPrecision
adsrHandleLowPrecision:
/* 803A994C 003A68AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A9950 003A68B0  7C 08 02 A6 */	mflr r0
/* 803A9954 003A68B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A9958 003A68B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A995C 003A68BC  3B E0 00 00 */	li r31, 0
/* 803A9960 003A68C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A9964 003A68C4  7C BE 2B 78 */	mr r30, r5
/* 803A9968 003A68C8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A996C 003A68CC  7C 9D 23 78 */	mr r29, r4
/* 803A9970 003A68D0  93 81 00 10 */	stw r28, 0x10(r1)
/* 803A9974 003A68D4  7C 7C 1B 78 */	mr r28, r3
/* 803A9978 003A68D8  48 00 00 28 */	b lbl_803A99A0
lbl_803A997C:
/* 803A997C 003A68DC  7F 83 E3 78 */	mr r3, r28
/* 803A9980 003A68E0  7F A4 EB 78 */	mr r4, r29
/* 803A9984 003A68E4  7F C5 F3 78 */	mr r5, r30
/* 803A9988 003A68E8  4B FF FE 2D */	bl adsrHandle
/* 803A998C 003A68EC  28 03 00 00 */	cmplwi r3, 0
/* 803A9990 003A68F0  41 82 00 0C */	beq lbl_803A999C
/* 803A9994 003A68F4  38 60 00 01 */	li r3, 1
/* 803A9998 003A68F8  48 00 00 18 */	b lbl_803A99B0
lbl_803A999C:
/* 803A999C 003A68FC  3B FF 00 01 */	addi r31, r31, 1
lbl_803A99A0:
/* 803A99A0 003A6900  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803A99A4 003A6904  28 00 00 0F */	cmplwi r0, 0xf
/* 803A99A8 003A6908  41 80 FF D4 */	blt lbl_803A997C
/* 803A99AC 003A690C  38 60 00 00 */	li r3, 0
lbl_803A99B0:
/* 803A99B0 003A6910  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A99B4 003A6914  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A99B8 003A6918  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A99BC 003A691C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A99C0 003A6920  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803A99C4 003A6924  7C 08 03 A6 */	mtlr r0
/* 803A99C8 003A6928  38 21 00 20 */	addi r1, r1, 0x20
/* 803A99CC 003A692C  4E 80 00 20 */	blr
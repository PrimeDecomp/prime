.include "macros.inc"

.section .data
.balign 8

.global lbl_803E2390
lbl_803E2390:
	# ROM: 0x3DF390
	.4byte 0
	.4byte 0
	.4byte __dt__8CBSTauntFv
	.4byte IsInAir__10CBodyStateCFRC15CBodyController
	.4byte IsDead__10CBodyStateCFv
	.4byte IsDying__10CBodyStateCFv
	.4byte IsMoving__10CBodyStateCFv
	.4byte ApplyGravity__10CBodyStateCFv
	.4byte ApplyHeadTracking__10CBodyStateCFv
	.4byte ApplyAnimationDeltas__10CBodyStateCFv
	.4byte CanShoot__10CBodyStateCFv
	.4byte Start__8CBSTauntFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__8CBSTauntFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__8CBSTauntFR15CBodyController

.section .text, "ax"

.global __dt__8CBSTauntFv
__dt__8CBSTauntFv:
/* 801492B0 00146210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801492B4 00146214  7C 08 02 A6 */	mflr r0
/* 801492B8 00146218  90 01 00 14 */	stw r0, 0x14(r1)
/* 801492BC 0014621C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801492C0 00146220  7C 7F 1B 79 */	or. r31, r3, r3
/* 801492C4 00146224  41 82 00 30 */	beq lbl_801492F4
/* 801492C8 00146228  3C 60 80 3E */	lis r3, lbl_803E2390@ha
/* 801492CC 0014622C  38 03 23 90 */	addi r0, r3, lbl_803E2390@l
/* 801492D0 00146230  90 1F 00 00 */	stw r0, 0(r31)
/* 801492D4 00146234  41 82 00 10 */	beq lbl_801492E4
/* 801492D8 00146238  3C 60 80 3E */	lis r3, lbl_803E1318@ha
/* 801492DC 0014623C  38 03 13 18 */	addi r0, r3, lbl_803E1318@l
/* 801492E0 00146240  90 1F 00 00 */	stw r0, 0(r31)
lbl_801492E4:
/* 801492E4 00146244  7C 80 07 35 */	extsh. r0, r4
/* 801492E8 00146248  40 81 00 0C */	ble lbl_801492F4
/* 801492EC 0014624C  7F E3 FB 78 */	mr r3, r31
/* 801492F0 00146250  48 1C C6 41 */	bl Free__7CMemoryFPCv
lbl_801492F4:
/* 801492F4 00146254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801492F8 00146258  7F E3 FB 78 */	mr r3, r31
/* 801492FC 0014625C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80149300 00146260  7C 08 03 A6 */	mtlr r0
/* 80149304 00146264  38 21 00 10 */	addi r1, r1, 0x10
/* 80149308 00146268  4E 80 00 20 */	blr

.global GetBodyStateTransition__8CBSTauntFfR15CBodyController
GetBodyStateTransition__8CBSTauntFfR15CBodyController:
/* 8014930C 0014626C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80149310 00146270  7C 08 02 A6 */	mflr r0
/* 80149314 00146274  90 01 00 14 */	stw r0, 0x14(r1)
/* 80149318 00146278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014931C 0014627C  93 C1 00 08 */	stw r30, 8(r1)
/* 80149320 00146280  7C 9E 23 78 */	mr r30, r4
/* 80149324 00146284  3B FE 00 04 */	addi r31, r30, 4
/* 80149328 00146288  38 80 00 0F */	li r4, 0xf
/* 8014932C 0014628C  7F E3 FB 78 */	mr r3, r31
/* 80149330 00146290  4B FE 81 21 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80149334 00146294  28 03 00 00 */	cmplwi r3, 0
/* 80149338 00146298  41 82 00 0C */	beq lbl_80149344
/* 8014933C 0014629C  38 60 00 0E */	li r3, 0xe
/* 80149340 001462A0  48 00 00 88 */	b lbl_801493C8
lbl_80149344:
/* 80149344 001462A4  7F E3 FB 78 */	mr r3, r31
/* 80149348 001462A8  38 80 00 03 */	li r4, 3
/* 8014934C 001462AC  4B FE 81 05 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80149350 001462B0  28 03 00 00 */	cmplwi r3, 0
/* 80149354 001462B4  41 82 00 0C */	beq lbl_80149360
/* 80149358 001462B8  38 60 00 00 */	li r3, 0
/* 8014935C 001462BC  48 00 00 6C */	b lbl_801493C8
lbl_80149360:
/* 80149360 001462C0  7F E3 FB 78 */	mr r3, r31
/* 80149364 001462C4  38 80 00 09 */	li r4, 9
/* 80149368 001462C8  4B FE 80 E9 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 8014936C 001462CC  28 03 00 00 */	cmplwi r3, 0
/* 80149370 001462D0  41 82 00 0C */	beq lbl_8014937C
/* 80149374 001462D4  38 60 00 0A */	li r3, 0xa
/* 80149378 001462D8  48 00 00 50 */	b lbl_801493C8
lbl_8014937C:
/* 8014937C 001462DC  7F E3 FB 78 */	mr r3, r31
/* 80149380 001462E0  38 80 00 04 */	li r4, 4
/* 80149384 001462E4  4B FE 80 CD */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 80149388 001462E8  28 03 00 00 */	cmplwi r3, 0
/* 8014938C 001462EC  41 82 00 0C */	beq lbl_80149398
/* 80149390 001462F0  38 60 00 06 */	li r3, 6
/* 80149394 001462F4  48 00 00 34 */	b lbl_801493C8
lbl_80149398:
/* 80149398 001462F8  7F E3 FB 78 */	mr r3, r31
/* 8014939C 001462FC  38 80 00 16 */	li r4, 0x16
/* 801493A0 00146300  4B FE 80 B1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801493A4 00146304  28 03 00 00 */	cmplwi r3, 0
/* 801493A8 00146308  41 82 00 0C */	beq lbl_801493B4
/* 801493AC 0014630C  38 60 00 05 */	li r3, 5
/* 801493B0 00146310  48 00 00 18 */	b lbl_801493C8
lbl_801493B4:
/* 801493B4 00146314  88 1E 03 00 */	lbz r0, 0x300(r30)
/* 801493B8 00146318  38 60 FF FF */	li r3, -1
/* 801493BC 0014631C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801493C0 00146320  41 82 00 08 */	beq lbl_801493C8
/* 801493C4 00146324  38 60 00 05 */	li r3, 5
lbl_801493C8:
/* 801493C8 00146328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801493CC 0014632C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801493D0 00146330  83 C1 00 08 */	lwz r30, 8(r1)
/* 801493D4 00146334  7C 08 03 A6 */	mtlr r0
/* 801493D8 00146338  38 21 00 10 */	addi r1, r1, 0x10
/* 801493DC 0014633C  4E 80 00 20 */	blr

.global Shutdown__8CBSTauntFR15CBodyController
Shutdown__8CBSTauntFR15CBodyController:
/* 801493E0 00146340  4E 80 00 20 */	blr

.global UpdateBody__8CBSTauntFfR15CBodyControllerR13CStateManager
UpdateBody__8CBSTauntFfR15CBodyControllerR13CStateManager:
/* 801493E4 00146344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801493E8 00146348  7C 08 02 A6 */	mflr r0
/* 801493EC 0014634C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801493F0 00146350  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801493F4 00146354  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 801493F8 00146358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801493FC 0014635C  93 C1 00 08 */	stw r30, 8(r1)
/* 80149400 00146360  FF E0 08 90 */	fmr f31, f1
/* 80149404 00146364  7C 9E 23 78 */	mr r30, r4
/* 80149408 00146368  4B FF FF 05 */	bl GetBodyStateTransition__8CBSTauntFfR15CBodyController
/* 8014940C 0014636C  7C 7F 1B 78 */	mr r31, r3
/* 80149410 00146370  2C 1F FF FF */	cmpwi r31, -1
/* 80149414 00146374  40 82 00 50 */	bne lbl_80149464
/* 80149418 00146378  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8014941C 0014637C  C0 22 9C D0 */	lfs f1, lbl_805AB9F0@sda21(r2)
/* 80149420 00146380  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80149424 00146384  38 00 00 00 */	li r0, 0
/* 80149428 00146388  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8014942C 0014638C  40 82 00 1C */	bne lbl_80149448
/* 80149430 00146390  C0 03 00 04 */	lfs f0, 4(r3)
/* 80149434 00146394  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80149438 00146398  40 82 00 10 */	bne lbl_80149448
/* 8014943C 0014639C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80149440 001463A0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80149444 001463A4  41 82 00 08 */	beq lbl_8014944C
lbl_80149448:
/* 80149448 001463A8  38 00 00 01 */	li r0, 1
lbl_8014944C:
/* 8014944C 001463AC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80149450 001463B0  41 82 00 14 */	beq lbl_80149464
/* 80149454 001463B4  FC 20 F8 90 */	fmr f1, f31
/* 80149458 001463B8  7F C3 F3 78 */	mr r3, r30
/* 8014945C 001463BC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80149460 001463C0  4B FF 12 45 */	bl FaceDirection__15CBodyControllerFRC9CVector3ff
lbl_80149464:
/* 80149464 001463C4  7F E3 FB 78 */	mr r3, r31
/* 80149468 001463C8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 8014946C 001463CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80149470 001463D0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80149474 001463D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80149478 001463D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014947C 001463DC  7C 08 03 A6 */	mtlr r0
/* 80149480 001463E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80149484 001463E4  4E 80 00 20 */	blr

.global Start__8CBSTauntFR15CBodyControllerR13CStateManager
Start__8CBSTauntFR15CBodyControllerR13CStateManager:
/* 80149488 001463E8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014948C 001463EC  7C 08 02 A6 */	mflr r0
/* 80149490 001463F0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80149494 001463F4  93 E1 00 AC */	stw r31, 0xac(r1)
/* 80149498 001463F8  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8014949C 001463FC  7C BE 2B 78 */	mr r30, r5
/* 801494A0 00146400  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 801494A4 00146404  7C 9D 23 78 */	mr r29, r4
/* 801494A8 00146408  38 7D 00 04 */	addi r3, r29, 4
/* 801494AC 0014640C  38 80 00 12 */	li r4, 0x12
/* 801494B0 00146410  4B FE 7F A1 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801494B4 00146414  83 E3 00 08 */	lwz r31, 8(r3)
/* 801494B8 00146418  38 61 00 10 */	addi r3, r1, 0x10
/* 801494BC 0014641C  48 19 9B C1 */	bl NoParameter__12CPASAnimParmFv
/* 801494C0 00146420  38 61 00 18 */	addi r3, r1, 0x18
/* 801494C4 00146424  48 19 9B B9 */	bl NoParameter__12CPASAnimParmFv
/* 801494C8 00146428  38 61 00 20 */	addi r3, r1, 0x20
/* 801494CC 0014642C  48 19 9B B1 */	bl NoParameter__12CPASAnimParmFv
/* 801494D0 00146430  38 61 00 28 */	addi r3, r1, 0x28
/* 801494D4 00146434  48 19 9B A9 */	bl NoParameter__12CPASAnimParmFv
/* 801494D8 00146438  38 61 00 30 */	addi r3, r1, 0x30
/* 801494DC 0014643C  48 19 9B A1 */	bl NoParameter__12CPASAnimParmFv
/* 801494E0 00146440  38 61 00 38 */	addi r3, r1, 0x38
/* 801494E4 00146444  48 19 9B 99 */	bl NoParameter__12CPASAnimParmFv
/* 801494E8 00146448  38 61 00 40 */	addi r3, r1, 0x40
/* 801494EC 0014644C  48 19 9B 91 */	bl NoParameter__12CPASAnimParmFv
/* 801494F0 00146450  7F E4 FB 78 */	mr r4, r31
/* 801494F4 00146454  38 61 00 48 */	addi r3, r1, 0x48
/* 801494F8 00146458  48 19 9A 8D */	bl FromEnum__12CPASAnimParmFi
/* 801494FC 0014645C  38 61 00 18 */	addi r3, r1, 0x18
/* 80149500 00146460  38 01 00 10 */	addi r0, r1, 0x10
/* 80149504 00146464  90 61 00 08 */	stw r3, 8(r1)
/* 80149508 00146468  38 61 00 50 */	addi r3, r1, 0x50
/* 8014950C 0014646C  38 A1 00 48 */	addi r5, r1, 0x48
/* 80149510 00146470  38 C1 00 40 */	addi r6, r1, 0x40
/* 80149514 00146474  90 01 00 0C */	stw r0, 0xc(r1)
/* 80149518 00146478  38 E1 00 38 */	addi r7, r1, 0x38
/* 8014951C 0014647C  39 01 00 30 */	addi r8, r1, 0x30
/* 80149520 00146480  39 21 00 28 */	addi r9, r1, 0x28
/* 80149524 00146484  39 41 00 20 */	addi r10, r1, 0x20
/* 80149528 00146488  38 80 00 10 */	li r4, 0x10
/* 8014952C 0014648C  4B F3 3D 99 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 80149530 00146490  80 BE 09 00 */	lwz r5, 0x900(r30)
/* 80149534 00146494  7F A3 EB 78 */	mr r3, r29
/* 80149538 00146498  38 81 00 50 */	addi r4, r1, 0x50
/* 8014953C 0014649C  4B FF 0E 6D */	bl PlayBestAnimation__15CBodyControllerFRC16CPASAnimParmDataR9CRandom16
/* 80149540 001464A0  34 A1 00 54 */	addic. r5, r1, 0x54
/* 80149544 001464A4  41 82 00 58 */	beq lbl_8014959C
/* 80149548 001464A8  80 C5 00 00 */	lwz r6, 0(r5)
/* 8014954C 001464AC  38 60 00 00 */	li r3, 0
/* 80149550 001464B0  2C 06 00 00 */	cmpwi r6, 0
/* 80149554 001464B4  40 81 00 40 */	ble lbl_80149594
/* 80149558 001464B8  2C 06 00 08 */	cmpwi r6, 8
/* 8014955C 001464BC  38 86 FF F8 */	addi r4, r6, -8
/* 80149560 001464C0  40 81 00 20 */	ble lbl_80149580
/* 80149564 001464C4  38 04 00 07 */	addi r0, r4, 7
/* 80149568 001464C8  54 00 E8 FE */	srwi r0, r0, 3
/* 8014956C 001464CC  7C 09 03 A6 */	mtctr r0
/* 80149570 001464D0  2C 04 00 00 */	cmpwi r4, 0
/* 80149574 001464D4  40 81 00 0C */	ble lbl_80149580
lbl_80149578:
/* 80149578 001464D8  38 63 00 08 */	addi r3, r3, 8
/* 8014957C 001464DC  42 00 FF FC */	bdnz lbl_80149578
lbl_80149580:
/* 80149580 001464E0  7C 03 30 50 */	subf r0, r3, r6
/* 80149584 001464E4  7C 09 03 A6 */	mtctr r0
/* 80149588 001464E8  7C 03 30 00 */	cmpw r3, r6
/* 8014958C 001464EC  40 80 00 08 */	bge lbl_80149594
lbl_80149590:
/* 80149590 001464F0  42 00 00 00 */	bdnz lbl_80149590
lbl_80149594:
/* 80149594 001464F4  38 00 00 00 */	li r0, 0
/* 80149598 001464F8  90 05 00 00 */	stw r0, 0(r5)
lbl_8014959C:
/* 8014959C 001464FC  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801495A0 00146500  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801495A4 00146504  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801495A8 00146508  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 801495AC 0014650C  7C 08 03 A6 */	mtlr r0
/* 801495B0 00146510  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801495B4 00146514  4E 80 00 20 */	blr

.global __ct__8CBSTauntFv
__ct__8CBSTauntFv:
/* 801495B8 00146518  3C A0 80 3E */	lis r5, lbl_803E1318@ha
/* 801495BC 0014651C  3C 80 80 3E */	lis r4, lbl_803E2390@ha
/* 801495C0 00146520  38 A5 13 18 */	addi r5, r5, lbl_803E1318@l
/* 801495C4 00146524  90 A3 00 00 */	stw r5, 0(r3)
/* 801495C8 00146528  38 04 23 90 */	addi r0, r4, lbl_803E2390@l
/* 801495CC 0014652C  90 03 00 00 */	stw r0, 0(r3)
/* 801495D0 00146530  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AB9F0
lbl_805AB9F0:
	# ROM: 0x3F8290
	.4byte 0
	.4byte 0

.include "macros.inc"

.section .text, "ax"

.global __pl__FRC10CAxisAngleRC10CAxisAngle
__pl__FRC10CAxisAngleRC10CAxisAngle:
/* 8001B424 00018384  C0 24 00 00 */	lfs f1, 0(r4)
/* 8001B428 00018388  C0 05 00 00 */	lfs f0, 0(r5)
/* 8001B42C 0001838C  C0 84 00 04 */	lfs f4, 4(r4)
/* 8001B430 00018390  C0 65 00 04 */	lfs f3, 4(r5)
/* 8001B434 00018394  EC 01 00 2A */	fadds f0, f1, f0
/* 8001B438 00018398  C0 44 00 08 */	lfs f2, 8(r4)
/* 8001B43C 0001839C  C0 25 00 08 */	lfs f1, 8(r5)
/* 8001B440 000183A0  EC 64 18 2A */	fadds f3, f4, f3
/* 8001B444 000183A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B448 000183A8  EC 02 08 2A */	fadds f0, f2, f1
/* 8001B44C 000183AC  D0 63 00 04 */	stfs f3, 4(r3)
/* 8001B450 000183B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B454 000183B4  4E 80 00 20 */	blr 

.global __ml__FRCfRC10CAxisAngle
__ml__FRCfRC10CAxisAngle:
/* 8001B458 000183B8  C0 64 00 00 */	lfs f3, 0(r4)
/* 8001B45C 000183BC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8001B460 000183C0  C0 45 00 04 */	lfs f2, 4(r5)
/* 8001B464 000183C4  C0 25 00 08 */	lfs f1, 8(r5)
/* 8001B468 000183C8  EC 03 00 32 */	fmuls f0, f3, f0
/* 8001B46C 000183CC  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8001B470 000183D0  EC 23 00 72 */	fmuls f1, f3, f1
/* 8001B474 000183D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B478 000183D8  D0 43 00 04 */	stfs f2, 4(r3)
/* 8001B47C 000183DC  D0 23 00 08 */	stfs f1, 8(r3)
/* 8001B480 000183E0  4E 80 00 20 */	blr 

.global __ml__FRC10CAxisAngleRCf
__ml__FRC10CAxisAngleRCf:
/* 8001B484 000183E4  C0 65 00 00 */	lfs f3, 0(r5)
/* 8001B488 000183E8  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001B48C 000183EC  C0 44 00 04 */	lfs f2, 4(r4)
/* 8001B490 000183F0  C0 24 00 08 */	lfs f1, 8(r4)
/* 8001B494 000183F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 8001B498 000183F8  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8001B49C 000183FC  EC 23 00 72 */	fmuls f1, f3, f1
/* 8001B4A0 00018400  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B4A4 00018404  D0 43 00 04 */	stfs f2, 4(r3)
/* 8001B4A8 00018408  D0 23 00 08 */	stfs f1, 8(r3)
/* 8001B4AC 0001840C  4E 80 00 20 */	blr 

.global __apl__10CAxisAngleFRC10CAxisAngle
__apl__10CAxisAngleFRC10CAxisAngle:
/* 8001B4B0 00018410  C0 23 00 00 */	lfs f1, 0(r3)
/* 8001B4B4 00018414  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001B4B8 00018418  EC 01 00 2A */	fadds f0, f1, f0
/* 8001B4BC 0001841C  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B4C0 00018420  C0 23 00 04 */	lfs f1, 4(r3)
/* 8001B4C4 00018424  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001B4C8 00018428  EC 01 00 2A */	fadds f0, f1, f0
/* 8001B4CC 0001842C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001B4D0 00018430  C0 23 00 08 */	lfs f1, 8(r3)
/* 8001B4D4 00018434  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001B4D8 00018438  EC 01 00 2A */	fadds f0, f1, f0
/* 8001B4DC 0001843C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B4E0 00018440  4E 80 00 20 */	blr 

.global __amu__10CAxisAngleFRCf
__amu__10CAxisAngleFRCf:
/* 8001B4E4 00018444  C0 24 00 00 */	lfs f1, 0(r4)
/* 8001B4E8 00018448  C0 03 00 00 */	lfs f0, 0(r3)
/* 8001B4EC 0001844C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001B4F0 00018450  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B4F4 00018454  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001B4F8 00018458  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001B4FC 0001845C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001B500 00018460  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001B504 00018464  EC 00 00 72 */	fmuls f0, f0, f1
/* 8001B508 00018468  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B50C 0001846C  4E 80 00 20 */	blr 

.global GetAngle__10CAxisAngleCFv
GetAngle__10CAxisAngleCFv:
/* 8001B510 00018470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B514 00018474  7C 08 02 A6 */	mflr r0
/* 8001B518 00018478  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B51C 0001847C  48 2F 93 9D */	bl Magnitude__9CVector3fCFv
/* 8001B520 00018480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B524 00018484  7C 08 03 A6 */	mtlr r0
/* 8001B528 00018488  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B52C 0001848C  4E 80 00 20 */	blr 

.global GetVector__10CAxisAngleCFv
GetVector__10CAxisAngleCFv:
/* 8001B530 00018490  4E 80 00 20 */	blr 

.global Identity__10CAxisAngleFv
Identity__10CAxisAngleFv:
/* 8001B534 00018494  3C 60 80 57 */	lis r3, lbl_8056A5E8@ha
/* 8001B538 00018498  38 63 A5 E8 */	addi r3, r3, lbl_8056A5E8@l
/* 8001B53C 0001849C  4E 80 00 20 */	blr 

.global FromVector__10CAxisAngleFRC9CVector3f
FromVector__10CAxisAngleFRC9CVector3f:
/* 8001B540 000184A0  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001B544 000184A4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B548 000184A8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001B54C 000184AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001B550 000184B0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001B554 000184B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B558 000184B8  4E 80 00 20 */	blr 

.global __ct__10CAxisAngleFRC13CUnitVector3ff
__ct__10CAxisAngleFRC13CUnitVector3ff:
/* 8001B55C 000184BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001B560 000184C0  C0 64 00 04 */	lfs f3, 4(r4)
/* 8001B564 000184C4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8001B568 000184C8  C0 44 00 08 */	lfs f2, 8(r4)
/* 8001B56C 000184CC  EC 61 00 F2 */	fmuls f3, f1, f3
/* 8001B570 000184D0  EC 21 00 B2 */	fmuls f1, f1, f2
/* 8001B574 000184D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B578 000184D8  D0 63 00 04 */	stfs f3, 4(r3)
/* 8001B57C 000184DC  D0 23 00 08 */	stfs f1, 8(r3)
/* 8001B580 000184E0  4E 80 00 20 */	blr 

.global __ct__10CAxisAngleFRC9CVector3f
__ct__10CAxisAngleFRC9CVector3f:
/* 8001B584 000184E4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8001B588 000184E8  D0 03 00 00 */	stfs f0, 0(r3)
/* 8001B58C 000184EC  C0 04 00 04 */	lfs f0, 4(r4)
/* 8001B590 000184F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8001B594 000184F4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001B598 000184F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B59C 000184FC  4E 80 00 20 */	blr 

.global __sinit_CAxisAngle_cpp
__sinit_CAxisAngle_cpp:
/* 8001B5A0 00018500  3C 80 80 5A */	lis r4, skZero3f@ha
/* 8001B5A4 00018504  C4 44 66 A0 */	lfsu f2, skZero3f@l(r4)
/* 8001B5A8 00018508  3C 60 80 57 */	lis r3, lbl_8056A5E8@ha
/* 8001B5AC 0001850C  C0 24 00 04 */	lfs f1, 4(r4)
/* 8001B5B0 00018510  D4 43 A5 E8 */	stfsu f2, lbl_8056A5E8@l(r3)
/* 8001B5B4 00018514  C0 04 00 08 */	lfs f0, 8(r4)
/* 8001B5B8 00018518  D0 23 00 04 */	stfs f1, 4(r3)
/* 8001B5BC 0001851C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8001B5C0 00018520  4E 80 00 20 */	blr 

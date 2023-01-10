.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CPlayerCameraBob_cpp

.section .sdata
.balign 8

.global kCameraBobExtentX__16CPlayerCameraBob
kCameraBobExtentX__16CPlayerCameraBob:
	# ROM: 0x3F4D18
	.float 0.071

.global kCameraBobExtentY__16CPlayerCameraBob
kCameraBobExtentY__16CPlayerCameraBob:
	# ROM: 0x3F4D1C
	.float 0.142

.global kCameraBobPeriod__16CPlayerCameraBob
kCameraBobPeriod__16CPlayerCameraBob:
	# ROM: 0x3F4D20
	.float 0.47

.global kOrbitBobScale__16CPlayerCameraBob
kOrbitBobScale__16CPlayerCameraBob:
	# ROM: 0x3F4D24
	.float 0.77

.global kMaxOrbitBobScale__16CPlayerCameraBob
kMaxOrbitBobScale__16CPlayerCameraBob:
	# ROM: 0x3F4D28
	.float 0.8

.global kSlowSpeedPeriodScale__16CPlayerCameraBob
kSlowSpeedPeriodScale__16CPlayerCameraBob:
	# ROM: 0x3F4D2C
	.float 0.3

.global kTargetMagnitudeTrackingRate__16CPlayerCameraBob
kTargetMagnitudeTrackingRate__16CPlayerCameraBob:
	# ROM: 0x3F4D30
	.float 0.1

.global kLandingBobSpringConstant__16CPlayerCameraBob
kLandingBobSpringConstant__16CPlayerCameraBob:
	# ROM: 0x3F4D34
	.float 150.0

.global lbl_805A7398__16CPlayerCameraBob
lbl_805A7398__16CPlayerCameraBob:
	# ROM: 0x3F4D38
	.float -30.0

.global lbl_805A739C__16CPlayerCameraBob
lbl_805A739C__16CPlayerCameraBob:
	# ROM: 0x3F4D3C
	.float -35.0

.global kLandingBobSpringConstant2__16CPlayerCameraBob
kLandingBobSpringConstant2__16CPlayerCameraBob:
	# ROM: 0x3F4D40
	.float 40.0

.global lbl_805A73A4__16CPlayerCameraBob
lbl_805A73A4__16CPlayerCameraBob:
	# ROM: 0x3F4D44
	.float 80.0

.global kViewWanderRadius__16CPlayerCameraBob
kViewWanderRadius__16CPlayerCameraBob:
	# ROM: 0x3F4D48
	.float 0.03

.global kViewWanderSpeedMin__16CPlayerCameraBob
kViewWanderSpeedMin__16CPlayerCameraBob:
	# ROM: 0x3F4D4C
	.float 0.1

.global kViewWanderSpeedMax__16CPlayerCameraBob
kViewWanderSpeedMax__16CPlayerCameraBob:
	# ROM: 0x3F4D50
	.float 0.3

.global kViewWanderRollVariation__16CPlayerCameraBob
kViewWanderRollVariation__16CPlayerCameraBob:
	# ROM: 0x3F4D54
	.float 0.3

.global kGunBobMagnitude__16CPlayerCameraBob
kGunBobMagnitude__16CPlayerCameraBob:
	# ROM: 0x3F4D58
	.float 0.3

.global kHelmetBobMagnitude__16CPlayerCameraBob
kHelmetBobMagnitude__16CPlayerCameraBob:
	# ROM: 0x3F4D5C
	.float 2.0

.global lbl_805A73C0
lbl_805A73C0:
	# ROM: 0x3F4D60
	.float 2.0

.global lbl_805A73C4
lbl_805A73C4:
	# ROM: 0x3F4D64
	.float 0

.global lbl_805A73C8
lbl_805A73C8:
	# ROM: 0x3F4D68
	.float 0

.global lbl_805A73CC
lbl_805A73CC:
	# ROM: 0x3F4D6C
	.float 1.0

.global lbl_805A73D0
lbl_805A73D0:
	# ROM: 0x3F4D70
	.float 0.0

.global lbl_805A73D4
lbl_805A73D4:
	# ROM: 0x3F4D74
	.float 1.0

.section .sbss
.balign 8

# CPlayerCameraBob
.global kLandingBobDamping__16CPlayerCameraBob
kLandingBobDamping__16CPlayerCameraBob:
	.skip 0x4
.global kLandingBobDamping2__16CPlayerCameraBob
kLandingBobDamping2__16CPlayerCameraBob:
	.skip 0x4
.global kCameraDamping__16CPlayerCameraBob
kCameraDamping__16CPlayerCameraBob:
	.skip 0x4

.section .sdata2, "a"
.balign 8

.global lbl_805AAD98
lbl_805AAD98:
	# ROM: 0x3F7638
	.4byte 0

.global lbl_805AAD9C
lbl_805AAD9C:
	# ROM: 0x3F763C
	.float 1.0

.global lbl_805AADA0
lbl_805AADA0:
	# ROM: 0x3F7640
	.float 0.017453292

.global lbl_805AADA4
lbl_805AADA4:
	# ROM: 0x3F7644
	.float 2.0

.global lbl_805AADA8
lbl_805AADA8:
	# ROM: 0x3F7648
	.float 0.5

.global lbl_805AADAC
lbl_805AADAC:
	# ROM: 0x3F764C
	.4byte 0x40490FDB

.global lbl_805AADB0
lbl_805AADB0:
	# ROM: 0x3F7650
	.4byte 0x401921FB
	.4byte 0x54442D18

.global lbl_805AADB8
lbl_805AADB8:
	# ROM: 0x3F7658
	.float 2.0
	.4byte 0

.global lbl_805AADC0
lbl_805AADC0:
	# ROM: 0x3F7660
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AADC8
lbl_805AADC8:
	# ROM: 0x3F7668
	.4byte 0x400921FB
	.4byte 0x54442D18

.global lbl_805AADD0
lbl_805AADD0:
	# ROM: 0x3F7670
	.4byte 0x3BA3D70A

.global lbl_805AADD4
lbl_805AADD4:
	# ROM: 0x3F7674
	.float 0.2

.global lbl_805AADD8
lbl_805AADD8:
	# ROM: 0x3F7678
	.float 1.1920929E-7

.global lbl_805AADDC
lbl_805AADDC:
	# ROM: 0x3F767C
	.float 4.0

.global lbl_805AADE0
lbl_805AADE0:
	# ROM: 0x3F7680
	.4byte 0x40C00000
	.4byte 0

.section .text, "ax"

.global GetViewWanderTransform__16CPlayerCameraBobCFv
GetViewWanderTransform__16CPlayerCameraBobCFv:
/* 800E9570 000E64D0  38 63 00 D0 */	addi r3, r3, 0xd0
/* 800E9574 000E64D4  4E 80 00 20 */	blr

.global UpdateViewWander__16CPlayerCameraBobFfR13CStateManager
UpdateViewWander__16CPlayerCameraBobFfR13CStateManager:
/* 800E9578 000E64D8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800E957C 000E64DC  7C 08 02 A6 */	mflr r0
/* 800E9580 000E64E0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 800E9584 000E64E4  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 800E9588 000E64E8  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 800E958C 000E64EC  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 800E9590 000E64F0  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 800E9594 000E64F4  93 A1 00 D4 */	stw r29, 0xd4(r1)
/* 800E9598 000E64F8  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 800E959C 000E64FC  81 23 00 CC */	lwz r9, 0xcc(r3)
/* 800E95A0 000E6500  7C 7C 1B 78 */	mr r28, r3
/* 800E95A4 000E6504  FF E0 08 90 */	fmr f31, f1
/* 800E95A8 000E6508  C0 23 00 C4 */	lfs f1, 0xc4(r3)
/* 800E95AC 000E650C  38 A9 00 03 */	addi r5, r9, 3
/* 800E95B0 000E6510  7C 9D 23 78 */	mr r29, r4
/* 800E95B4 000E6514  38 09 00 01 */	addi r0, r9, 1
/* 800E95B8 000E6518  38 69 00 02 */	addi r3, r9, 2
/* 800E95BC 000E651C  54 A4 F0 02 */	slwi r4, r5, 0x1e
/* 800E95C0 000E6520  54 A8 0F FE */	srwi r8, r5, 0x1f
/* 800E95C4 000E6524  7C E8 20 50 */	subf r7, r8, r4
/* 800E95C8 000E6528  54 05 F0 02 */	slwi r5, r0, 0x1e
/* 800E95CC 000E652C  54 06 0F FE */	srwi r6, r0, 0x1f
/* 800E95D0 000E6530  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 800E95D4 000E6534  54 64 0F FE */	srwi r4, r3, 0x1f
/* 800E95D8 000E6538  54 E7 10 3E */	rotlwi r7, r7, 2
/* 800E95DC 000E653C  7C A6 28 50 */	subf r5, r6, r5
/* 800E95E0 000E6540  3B FC 00 80 */	addi r31, r28, 0x80
/* 800E95E4 000E6544  7C 04 00 50 */	subf r0, r4, r0
/* 800E95E8 000E6548  7C E7 42 14 */	add r7, r7, r8
/* 800E95EC 000E654C  54 A5 10 3E */	rotlwi r5, r5, 2
/* 800E95F0 000E6550  38 61 00 24 */	addi r3, r1, 0x24
/* 800E95F4 000E6554  54 00 10 3E */	rotlwi r0, r0, 2
/* 800E95F8 000E6558  7C 00 22 14 */	add r0, r0, r4
/* 800E95FC 000E655C  7C A5 32 14 */	add r5, r5, r6
/* 800E9600 000E6560  1C E7 00 0C */	mulli r7, r7, 0xc
/* 800E9604 000E6564  1C 89 00 0C */	mulli r4, r9, 0xc
/* 800E9608 000E6568  7C FF 3A 14 */	add r7, r31, r7
/* 800E960C 000E656C  1C A5 00 0C */	mulli r5, r5, 0xc
/* 800E9610 000E6570  7C 9F 22 14 */	add r4, r31, r4
/* 800E9614 000E6574  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E9618 000E6578  7C BF 2A 14 */	add r5, r31, r5
/* 800E961C 000E657C  7C DF 02 14 */	add r6, r31, r0
/* 800E9620 000E6580  48 22 BA A5 */	bl GetCatmullRomSplinePoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff
/* 800E9624 000E6584  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800E9628 000E6588  3B DC 00 B4 */	addi r30, r28, 0xb4
/* 800E962C 000E658C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800E9630 000E6590  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E9634 000E6594  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800E9638 000E6598  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 800E963C 000E659C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800E9640 000E65A0  80 9C 00 CC */	lwz r4, 0xcc(r28)
/* 800E9644 000E65A4  C0 BC 00 C4 */	lfs f5, 0xc4(r28)
/* 800E9648 000E65A8  38 A4 00 03 */	addi r5, r4, 3
/* 800E964C 000E65AC  38 04 00 01 */	addi r0, r4, 1
/* 800E9650 000E65B0  38 64 00 02 */	addi r3, r4, 2
/* 800E9654 000E65B4  54 86 10 3A */	slwi r6, r4, 2
/* 800E9658 000E65B8  54 A4 F0 02 */	slwi r4, r5, 0x1e
/* 800E965C 000E65BC  54 A8 0F FE */	srwi r8, r5, 0x1f
/* 800E9660 000E65C0  7C E8 20 50 */	subf r7, r8, r4
/* 800E9664 000E65C4  54 04 F0 02 */	slwi r4, r0, 0x1e
/* 800E9668 000E65C8  54 05 0F FE */	srwi r5, r0, 0x1f
/* 800E966C 000E65CC  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 800E9670 000E65D0  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800E9674 000E65D4  54 E7 10 3E */	rotlwi r7, r7, 2
/* 800E9678 000E65D8  7C 85 20 50 */	subf r4, r5, r4
/* 800E967C 000E65DC  7C 3E 34 2E */	lfsx f1, r30, r6
/* 800E9680 000E65E0  7C 03 00 50 */	subf r0, r3, r0
/* 800E9684 000E65E4  7C C7 42 14 */	add r6, r7, r8
/* 800E9688 000E65E8  54 84 10 3E */	rotlwi r4, r4, 2
/* 800E968C 000E65EC  54 00 10 3E */	rotlwi r0, r0, 2
/* 800E9690 000E65F0  54 C6 10 3A */	slwi r6, r6, 2
/* 800E9694 000E65F4  7C 84 2A 14 */	add r4, r4, r5
/* 800E9698 000E65F8  7C 9E 34 2E */	lfsx f4, r30, r6
/* 800E969C 000E65FC  7C 00 1A 14 */	add r0, r0, r3
/* 800E96A0 000E6600  54 83 10 3A */	slwi r3, r4, 2
/* 800E96A4 000E6604  54 00 10 3A */	slwi r0, r0, 2
/* 800E96A8 000E6608  7C 5E 1C 2E */	lfsx f2, r30, r3
/* 800E96AC 000E660C  7C 7E 04 2E */	lfsx f3, r30, r0
/* 800E96B0 000E6610  48 22 B9 69 */	bl GetCatmullRomSplinePoint__5CMathFfffff
/* 800E96B4 000E6614  C0 BC 01 00 */	lfs f5, 0x100(r28)
/* 800E96B8 000E6618  38 61 00 3C */	addi r3, r1, 0x3c
/* 800E96BC 000E661C  C0 61 00 38 */	lfs f3, 0x38(r1)
/* 800E96C0 000E6620  38 81 00 08 */	addi r4, r1, 8
/* 800E96C4 000E6624  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 800E96C8 000E6628  EC 21 01 72 */	fmuls f1, f1, f5
/* 800E96CC 000E662C  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E96D0 000E6630  EC 85 00 F2 */	fmuls f4, f5, f3
/* 800E96D4 000E6634  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800E96D8 000E6638  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 800E96DC 000E663C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E96E0 000E6640  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800E96E4 000E6644  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 800E96E8 000E6648  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 800E96EC 000E664C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E96F0 000E6650  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E96F4 000E6654  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E96F8 000E6658  48 22 A1 B1 */	bl RotateY__12CTransform4fFRC9CRelAngle
/* 800E96FC 000E665C  3C 80 80 5A */	lis r4, sUpVector__9CVector3f@ha
/* 800E9700 000E6660  38 61 00 6C */	addi r3, r1, 0x6c
/* 800E9704 000E6664  38 C4 66 F4 */	addi r6, r4, sUpVector__9CVector3f@l
/* 800E9708 000E6668  38 A1 00 30 */	addi r5, r1, 0x30
/* 800E970C 000E666C  38 81 00 18 */	addi r4, r1, 0x18
/* 800E9710 000E6670  48 22 A4 01 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 800E9714 000E6674  38 61 00 9C */	addi r3, r1, 0x9c
/* 800E9718 000E6678  38 81 00 6C */	addi r4, r1, 0x6c
/* 800E971C 000E667C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800E9720 000E6680  48 22 92 31 */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800E9724 000E6684  38 7C 00 D0 */	addi r3, r28, 0xd0
/* 800E9728 000E6688  38 81 00 9C */	addi r4, r1, 0x9c
/* 800E972C 000E668C  48 22 94 15 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800E9730 000E6690  C0 5C 00 C8 */	lfs f2, 0xc8(r28)
/* 800E9734 000E6694  C0 3C 00 C4 */	lfs f1, 0xc4(r28)
/* 800E9738 000E6698  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800E973C 000E669C  EC 22 0F FA */	fmadds f1, f2, f31, f1
/* 800E9740 000E66A0  D0 3C 00 C4 */	stfs f1, 0xc4(r28)
/* 800E9744 000E66A4  C0 3C 00 C4 */	lfs f1, 0xc4(r28)
/* 800E9748 000E66A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E974C 000E66AC  4C 41 13 82 */	cror 2, 1, 2
/* 800E9750 000E66B0  40 82 00 A4 */	bne lbl_800E97F4
/* 800E9754 000E66B4  7F 84 E3 78 */	mr r4, r28
/* 800E9758 000E66B8  7F A5 EB 78 */	mr r5, r29
/* 800E975C 000E66BC  38 61 00 0C */	addi r3, r1, 0xc
/* 800E9760 000E66C0  48 00 01 01 */	bl CalculateRandomViewWanderPosition__16CPlayerCameraBobFR13CStateManager
/* 800E9764 000E66C4  80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 800E9768 000E66C8  7F 83 E3 78 */	mr r3, r28
/* 800E976C 000E66CC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E9770 000E66D0  7F A4 EB 78 */	mr r4, r29
/* 800E9774 000E66D4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800E9778 000E66D8  7C BF 02 14 */	add r5, r31, r0
/* 800E977C 000E66DC  D0 05 00 00 */	stfs f0, 0(r5)
/* 800E9780 000E66E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E9784 000E66E4  D0 05 00 04 */	stfs f0, 4(r5)
/* 800E9788 000E66E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800E978C 000E66EC  D0 05 00 08 */	stfs f0, 8(r5)
/* 800E9790 000E66F0  80 1C 00 CC */	lwz r0, 0xcc(r28)
/* 800E9794 000E66F4  54 1F 10 3A */	slwi r31, r0, 2
/* 800E9798 000E66F8  48 00 00 85 */	bl CalculateRandomViewWanderPitch__16CPlayerCameraBobFR13CStateManager
/* 800E979C 000E66FC  7C 3E FD 2E */	stfsx f1, r30, r31
/* 800E97A0 000E6700  C3 ED 87 EC */	lfs f31, kViewWanderSpeedMin__16CPlayerCameraBob@sda21(r13)
/* 800E97A4 000E6704  80 7D 09 00 */	lwz r3, 0x900(r29)
/* 800E97A8 000E6708  48 22 8D 35 */	bl Float__9CRandom16Fv
/* 800E97AC 000E670C  C0 4D 87 F0 */	lfs f2, kViewWanderSpeedMax__16CPlayerCameraBob@sda21(r13)
/* 800E97B0 000E6710  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800E97B4 000E6714  EC 42 F8 28 */	fsubs f2, f2, f31
/* 800E97B8 000E6718  EC 22 F8 7A */	fmadds f1, f2, f1, f31
/* 800E97BC 000E671C  D0 3C 00 C8 */	stfs f1, 0xc8(r28)
/* 800E97C0 000E6720  80 7C 00 CC */	lwz r3, 0xcc(r28)
/* 800E97C4 000E6724  38 03 00 01 */	addi r0, r3, 1
/* 800E97C8 000E6728  90 1C 00 CC */	stw r0, 0xcc(r28)
/* 800E97CC 000E672C  80 7C 00 CC */	lwz r3, 0xcc(r28)
/* 800E97D0 000E6730  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 800E97D4 000E6734  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800E97D8 000E6738  7C 03 00 50 */	subf r0, r3, r0
/* 800E97DC 000E673C  54 00 10 3E */	rotlwi r0, r0, 2
/* 800E97E0 000E6740  7C 00 1A 14 */	add r0, r0, r3
/* 800E97E4 000E6744  90 1C 00 CC */	stw r0, 0xcc(r28)
/* 800E97E8 000E6748  C0 3C 00 C4 */	lfs f1, 0xc4(r28)
/* 800E97EC 000E674C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E97F0 000E6750  D0 1C 00 C4 */	stfs f0, 0xc4(r28)
lbl_800E97F4:
/* 800E97F4 000E6754  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 800E97F8 000E6758  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800E97FC 000E675C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 800E9800 000E6760  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 800E9804 000E6764  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 800E9808 000E6768  83 A1 00 D4 */	lwz r29, 0xd4(r1)
/* 800E980C 000E676C  83 81 00 D0 */	lwz r28, 0xd0(r1)
/* 800E9810 000E6770  7C 08 03 A6 */	mtlr r0
/* 800E9814 000E6774  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800E9818 000E6778  4E 80 00 20 */	blr

.global CalculateRandomViewWanderPitch__16CPlayerCameraBobFR13CStateManager
CalculateRandomViewWanderPitch__16CPlayerCameraBobFR13CStateManager:
/* 800E981C 000E677C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E9820 000E6780  7C 08 02 A6 */	mflr r0
/* 800E9824 000E6784  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E9828 000E6788  80 64 09 00 */	lwz r3, 0x900(r4)
/* 800E982C 000E678C  48 22 8C B1 */	bl Float__9CRandom16Fv
/* 800E9830 000E6790  C0 02 90 88 */	lfs f0, lbl_805AADA8@sda21(r2)
/* 800E9834 000E6794  C0 42 90 84 */	lfs f2, lbl_805AADA4@sda21(r2)
/* 800E9838 000E6798  EC 61 00 28 */	fsubs f3, f1, f0
/* 800E983C 000E679C  C0 2D 87 F4 */	lfs f1, kViewWanderRollVariation__16CPlayerCameraBob@sda21(r13)
/* 800E9840 000E67A0  C0 02 90 80 */	lfs f0, lbl_805AADA0@sda21(r2)
/* 800E9844 000E67A4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 800E9848 000E67A8  EC 21 00 B2 */	fmuls f1, f1, f2
/* 800E984C 000E67AC  EC 20 00 72 */	fmuls f1, f0, f1
/* 800E9850 000E67B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9854 000E67B4  7C 08 03 A6 */	mtlr r0
/* 800E9858 000E67B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E985C 000E67BC  4E 80 00 20 */	blr

.global CalculateRandomViewWanderPosition__16CPlayerCameraBobFR13CStateManager
CalculateRandomViewWanderPosition__16CPlayerCameraBobFR13CStateManager:
/* 800E9860 000E67C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E9864 000E67C4  7C 08 02 A6 */	mflr r0
/* 800E9868 000E67C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E986C 000E67CC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E9870 000E67D0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800E9874 000E67D4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800E9878 000E67D8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 800E987C 000E67DC  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 800E9880 000E67E0  F3 A1 00 18 */	psq_st f29, 24(r1), 0, qr0
/* 800E9884 000E67E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E9888 000E67E8  93 C1 00 08 */	stw r30, 8(r1)
/* 800E988C 000E67EC  7C BF 2B 78 */	mr r31, r5
/* 800E9890 000E67F0  7C 7E 1B 78 */	mr r30, r3
/* 800E9894 000E67F4  80 65 09 00 */	lwz r3, 0x900(r5)
/* 800E9898 000E67F8  48 22 8C 45 */	bl Float__9CRandom16Fv
/* 800E989C 000E67FC  C0 42 90 8C */	lfs f2, lbl_805AADAC@sda21(r2)
/* 800E98A0 000E6800  C0 02 90 84 */	lfs f0, lbl_805AADA4@sda21(r2)
/* 800E98A4 000E6804  EC 22 00 72 */	fmuls f1, f2, f1
/* 800E98A8 000E6808  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 800E98AC 000E680C  EF C0 00 72 */	fmuls f30, f0, f1
/* 800E98B0 000E6810  48 22 8C 2D */	bl Float__9CRandom16Fv
/* 800E98B4 000E6814  C0 0D 87 E8 */	lfs f0, kViewWanderRadius__16CPlayerCameraBob@sda21(r13)
/* 800E98B8 000E6818  EF A0 00 72 */	fmuls f29, f0, f1
/* 800E98BC 000E681C  FC 20 F0 90 */	fmr f1, f30
/* 800E98C0 000E6820  48 22 BA 25 */	bl SlowCosineR__5CMathFf
/* 800E98C4 000E6824  EF FD 00 72 */	fmuls f31, f29, f1
/* 800E98C8 000E6828  FC 20 F0 90 */	fmr f1, f30
/* 800E98CC 000E682C  48 22 BA 3D */	bl SlowSineR__5CMathFf
/* 800E98D0 000E6830  EC 3D 00 72 */	fmuls f1, f29, f1
/* 800E98D4 000E6834  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800E98D8 000E6838  D0 3E 00 00 */	stfs f1, 0(r30)
/* 800E98DC 000E683C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800E98E0 000E6840  D3 FE 00 08 */	stfs f31, 8(r30)
/* 800E98E4 000E6844  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800E98E8 000E6848  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E98EC 000E684C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 800E98F0 000E6850  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800E98F4 000E6854  E3 A1 00 18 */	psq_l f29, 24(r1), 0, qr0
/* 800E98F8 000E6858  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 800E98FC 000E685C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E9900 000E6860  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E9904 000E6864  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E9908 000E6868  7C 08 03 A6 */	mtlr r0
/* 800E990C 000E686C  38 21 00 40 */	addi r1, r1, 0x40
/* 800E9910 000E6870  4E 80 00 20 */	blr

.global InitViewWander__16CPlayerCameraBobFR13CStateManager
InitViewWander__16CPlayerCameraBobFR13CStateManager:
/* 800E9914 000E6874  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800E9918 000E6878  7C 08 02 A6 */	mflr r0
/* 800E991C 000E687C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800E9920 000E6880  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800E9924 000E6884  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 800E9928 000E6888  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E992C 000E688C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E9930 000E6890  C0 22 90 78 */	lfs f1, lbl_805AAD98@sda21(r2)
/* 800E9934 000E6894  7C 7E 1B 78 */	mr r30, r3
/* 800E9938 000E6898  7C 9F 23 78 */	mr r31, r4
/* 800E993C 000E689C  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800E9940 000E68A0  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 800E9944 000E68A4  7F C4 F3 78 */	mr r4, r30
/* 800E9948 000E68A8  7F E5 FB 78 */	mr r5, r31
/* 800E994C 000E68AC  38 61 00 08 */	addi r3, r1, 8
/* 800E9950 000E68B0  D0 1E 00 84 */	stfs f0, 0x84(r30)
/* 800E9954 000E68B4  D0 3E 00 88 */	stfs f1, 0x88(r30)
/* 800E9958 000E68B8  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 800E995C 000E68BC  D0 1E 00 8C */	stfs f0, 0x8c(r30)
/* 800E9960 000E68C0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 800E9964 000E68C4  D0 1E 00 90 */	stfs f0, 0x90(r30)
/* 800E9968 000E68C8  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 800E996C 000E68CC  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 800E9970 000E68D0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 800E9974 000E68D4  D0 1E 00 98 */	stfs f0, 0x98(r30)
/* 800E9978 000E68D8  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 800E997C 000E68DC  D0 1E 00 9C */	stfs f0, 0x9c(r30)
/* 800E9980 000E68E0  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 800E9984 000E68E4  D0 1E 00 A0 */	stfs f0, 0xa0(r30)
/* 800E9988 000E68E8  4B FF FE D9 */	bl CalculateRandomViewWanderPosition__16CPlayerCameraBobFR13CStateManager
/* 800E998C 000E68EC  C0 21 00 08 */	lfs f1, 8(r1)
/* 800E9990 000E68F0  7F C3 F3 78 */	mr r3, r30
/* 800E9994 000E68F4  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E9998 000E68F8  7F E4 FB 78 */	mr r4, r31
/* 800E999C 000E68FC  D0 3E 00 A4 */	stfs f1, 0xa4(r30)
/* 800E99A0 000E6900  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800E99A4 000E6904  D0 3E 00 A8 */	stfs f1, 0xa8(r30)
/* 800E99A8 000E6908  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800E99AC 000E690C  D0 3E 00 AC */	stfs f1, 0xac(r30)
/* 800E99B0 000E6910  D0 1E 00 B4 */	stfs f0, 0xb4(r30)
/* 800E99B4 000E6914  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 800E99B8 000E6918  D0 1E 00 B8 */	stfs f0, 0xb8(r30)
/* 800E99BC 000E691C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 800E99C0 000E6920  D0 1E 00 BC */	stfs f0, 0xbc(r30)
/* 800E99C4 000E6924  4B FF FE 59 */	bl CalculateRandomViewWanderPitch__16CPlayerCameraBobFR13CStateManager
/* 800E99C8 000E6928  D0 3E 00 C0 */	stfs f1, 0xc0(r30)
/* 800E99CC 000E692C  C3 ED 87 EC */	lfs f31, kViewWanderSpeedMin__16CPlayerCameraBob@sda21(r13)
/* 800E99D0 000E6930  80 7F 09 00 */	lwz r3, 0x900(r31)
/* 800E99D4 000E6934  48 22 8B 09 */	bl Float__9CRandom16Fv
/* 800E99D8 000E6938  C0 4D 87 F0 */	lfs f2, kViewWanderSpeedMax__16CPlayerCameraBob@sda21(r13)
/* 800E99DC 000E693C  38 00 00 00 */	li r0, 0
/* 800E99E0 000E6940  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E99E4 000E6944  EC 42 F8 28 */	fsubs f2, f2, f31
/* 800E99E8 000E6948  EC 22 F8 7A */	fmadds f1, f2, f1, f31
/* 800E99EC 000E694C  D0 3E 00 C8 */	stfs f1, 0xc8(r30)
/* 800E99F0 000E6950  D0 1E 00 C4 */	stfs f0, 0xc4(r30)
/* 800E99F4 000E6954  90 1E 00 CC */	stw r0, 0xcc(r30)
/* 800E99F8 000E6958  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 800E99FC 000E695C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800E9A00 000E6960  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800E9A04 000E6964  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E9A08 000E6968  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E9A0C 000E696C  7C 08 03 A6 */	mtlr r0
/* 800E9A10 000E6970  38 21 00 30 */	addi r1, r1, 0x30
/* 800E9A14 000E6974  4E 80 00 20 */	blr

.global SetPlayerVelocity__16CPlayerCameraBobFRC9CVector3f
SetPlayerVelocity__16CPlayerCameraBobFRC9CVector3f:
/* 800E9A18 000E6978  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9A1C 000E697C  38 A4 00 08 */	addi r5, r4, 8
/* 800E9A20 000E6980  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 800E9A24 000E6984  C0 04 00 04 */	lfs f0, 4(r4)
/* 800E9A28 000E6988  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 800E9A2C 000E698C  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E9A30 000E6990  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 800E9A34 000E6994  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 800E9A38 000E6998  C0 04 00 08 */	lfs f0, 8(r4)
/* 800E9A3C 000E699C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9A40 000E69A0  40 80 00 08 */	bge lbl_800E9A48
/* 800E9A44 000E69A4  38 A3 00 68 */	addi r5, r3, 0x68
lbl_800E9A48:
/* 800E9A48 000E69A8  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E9A4C 000E69AC  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 800E9A50 000E69B0  4E 80 00 20 */	blr

.global SetState__16CPlayerCameraBobFQ216CPlayerCameraBob15ECameraBobStateR13CStateManager
SetState__16CPlayerCameraBobFQ216CPlayerCameraBob15ECameraBobStateR13CStateManager:
/* 800E9A54 000E69B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E9A58 000E69B8  7C 08 02 A6 */	mflr r0
/* 800E9A5C 000E69BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E9A60 000E69C0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800E9A64 000E69C4  7C 04 00 00 */	cmpw r4, r0
/* 800E9A68 000E69C8  41 82 00 B4 */	beq lbl_800E9B1C
/* 800E9A6C 000E69CC  90 03 00 20 */	stw r0, 0x20(r3)
/* 800E9A70 000E69D0  90 83 00 24 */	stw r4, 0x24(r3)
/* 800E9A74 000E69D4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 800E9A78 000E69D8  2C 00 00 02 */	cmpwi r0, 2
/* 800E9A7C 000E69DC  40 82 00 7C */	bne lbl_800E9AF8
/* 800E9A80 000E69E0  38 00 00 01 */	li r0, 1
/* 800E9A84 000E69E4  98 03 00 28 */	stb r0, 0x28(r3)
/* 800E9A88 000E69E8  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 800E9A8C 000E69EC  C0 0D 87 DC */	lfs f0, lbl_805A739C__16CPlayerCameraBob@sda21(r13)
/* 800E9A90 000E69F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9A94 000E69F4  40 80 00 0C */	bge lbl_800E9AA0
/* 800E9A98 000E69F8  38 8D 87 DC */	addi r4, r13, lbl_805A739C__16CPlayerCameraBob@sda21
/* 800E9A9C 000E69FC  48 00 00 08 */	b lbl_800E9AA4
lbl_800E9AA0:
/* 800E9AA0 000E6A00  38 83 00 68 */	addi r4, r3, 0x68
lbl_800E9AA4:
/* 800E9AA4 000E6A04  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9AA8 000E6A08  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 800E9AAC 000E6A0C  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 800E9AB0 000E6A10  C0 0D 87 D8 */	lfs f0, lbl_805A7398__16CPlayerCameraBob@sda21(r13)
/* 800E9AB4 000E6A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9AB8 000E6A18  7C 00 00 26 */	mfcr r0
/* 800E9ABC 000E6A1C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 800E9AC0 000E6A20  98 03 00 29 */	stb r0, 0x29(r3)
/* 800E9AC4 000E6A24  88 03 00 29 */	lbz r0, 0x29(r3)
/* 800E9AC8 000E6A28  28 00 00 00 */	cmplwi r0, 0
/* 800E9ACC 000E6A2C  41 82 00 14 */	beq lbl_800E9AE0
/* 800E9AD0 000E6A30  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 800E9AD4 000E6A34  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800E9AD8 000E6A38  EC 01 00 2A */	fadds f0, f1, f0
/* 800E9ADC 000E6A3C  D0 03 00 74 */	stfs f0, 0x74(r3)
lbl_800E9AE0:
/* 800E9AE0 000E6A40  C0 43 00 6C */	lfs f2, 0x6c(r3)
/* 800E9AE4 000E6A44  C0 23 00 68 */	lfs f1, 0x68(r3)
/* 800E9AE8 000E6A48  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E9AEC 000E6A4C  EC 22 08 2A */	fadds f1, f2, f1
/* 800E9AF0 000E6A50  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 800E9AF4 000E6A54  D0 03 00 68 */	stfs f0, 0x68(r3)
lbl_800E9AF8:
/* 800E9AF8 000E6A58  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800E9AFC 000E6A5C  2C 00 00 03 */	cmpwi r0, 3
/* 800E9B00 000E6A60  40 82 00 1C */	bne lbl_800E9B1C
/* 800E9B04 000E6A64  C0 23 01 00 */	lfs f1, 0x100(r3)
/* 800E9B08 000E6A68  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E9B0C 000E6A6C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800E9B10 000E6A70  41 82 00 0C */	beq lbl_800E9B1C
/* 800E9B14 000E6A74  7C A4 2B 78 */	mr r4, r5
/* 800E9B18 000E6A78  4B FF FD FD */	bl InitViewWander__16CPlayerCameraBobFR13CStateManager
lbl_800E9B1C:
/* 800E9B1C 000E6A7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9B20 000E6A80  7C 08 03 A6 */	mtlr r0
/* 800E9B24 000E6A84  38 21 00 10 */	addi r1, r1, 0x10
/* 800E9B28 000E6A88  4E 80 00 20 */	blr

.global ResetCameraBobTime__16CPlayerCameraBobFv
ResetCameraBobTime__16CPlayerCameraBobFv:
/* 800E9B2C 000E6A8C  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E9B30 000E6A90  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800E9B34 000E6A94  4E 80 00 20 */	blr

.global CalculateMovingTranslation__16CPlayerCameraBobCFRfRf
CalculateMovingTranslation__16CPlayerCameraBobCFRfRf:
/* 800E9B38 000E6A98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E9B3C 000E6A9C  7C 08 02 A6 */	mflr r0
/* 800E9B40 000E6AA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E9B44 000E6AA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E9B48 000E6AA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 800E9B4C 000E6AAC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800E9B50 000E6AB0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 800E9B54 000E6AB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E9B58 000E6AB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E9B5C 000E6ABC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800E9B60 000E6AC0  7C 7D 1B 78 */	mr r29, r3
/* 800E9B64 000E6AC4  7C 9E 23 78 */	mr r30, r4
/* 800E9B68 000E6AC8  80 03 00 00 */	lwz r0, 0(r3)
/* 800E9B6C 000E6ACC  7C BF 2B 78 */	mr r31, r5
/* 800E9B70 000E6AD0  2C 00 00 01 */	cmpwi r0, 1
/* 800E9B74 000E6AD4  41 82 00 94 */	beq lbl_800E9C08
/* 800E9B78 000E6AD8  40 80 01 3C */	bge lbl_800E9CB4
/* 800E9B7C 000E6ADC  2C 00 00 00 */	cmpwi r0, 0
/* 800E9B80 000E6AE0  40 80 00 08 */	bge lbl_800E9B88
/* 800E9B84 000E6AE4  48 00 01 30 */	b lbl_800E9CB4
lbl_800E9B88:
/* 800E9B88 000E6AE8  C8 42 90 98 */	lfd f2, lbl_805AADB8@sda21(r2)
/* 800E9B8C 000E6AEC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800E9B90 000E6AF0  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 800E9B94 000E6AF4  FC 42 00 32 */	fmul f2, f2, f0
/* 800E9B98 000E6AF8  48 2A B1 15 */	bl fmod
/* 800E9B9C 000E6AFC  C8 42 90 90 */	lfd f2, lbl_805AADB0@sda21(r2)
/* 800E9BA0 000E6B00  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800E9BA4 000E6B04  FC 22 00 72 */	fmul f1, f2, f1
/* 800E9BA8 000E6B08  FF C1 00 24 */	fdiv f30, f1, f0
/* 800E9BAC 000E6B0C  FC 20 F0 90 */	fmr f1, f30
/* 800E9BB0 000E6B10  48 2A AF 2D */	bl sin
/* 800E9BB4 000E6B14  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 800E9BB8 000E6B18  FC 20 08 18 */	frsp f1, f1
/* 800E9BBC 000E6B1C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 800E9BC0 000E6B20  C8 02 90 A0 */	lfd f0, lbl_805AADC0@sda21(r2)
/* 800E9BC4 000E6B24  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800E9BC8 000E6B28  FF DE 00 32 */	fmul f30, f30, f0
/* 800E9BCC 000E6B2C  EC 02 00 72 */	fmuls f0, f2, f1
/* 800E9BD0 000E6B30  FC 20 F0 90 */	fmr f1, f30
/* 800E9BD4 000E6B34  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800E9BD8 000E6B38  48 2A A8 19 */	bl cos
/* 800E9BDC 000E6B3C  FF E0 0A 10 */	fabs f31, f1
/* 800E9BE0 000E6B40  FC 20 F0 90 */	fmr f1, f30
/* 800E9BE4 000E6B44  48 2A A8 0D */	bl cos
/* 800E9BE8 000E6B48  FC 41 07 F2 */	fmul f2, f1, f31
/* 800E9BEC 000E6B4C  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 800E9BF0 000E6B50  C0 1D 00 08 */	lfs f0, 8(r29)
/* 800E9BF4 000E6B54  EC 21 00 32 */	fmuls f1, f1, f0
/* 800E9BF8 000E6B58  FC 00 10 18 */	frsp f0, f2
/* 800E9BFC 000E6B5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E9C00 000E6B60  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800E9C04 000E6B64  48 00 00 B0 */	b lbl_800E9CB4
lbl_800E9C08:
/* 800E9C08 000E6B68  C8 42 90 98 */	lfd f2, lbl_805AADB8@sda21(r2)
/* 800E9C0C 000E6B6C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800E9C10 000E6B70  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 800E9C14 000E6B74  FC 42 00 32 */	fmul f2, f2, f0
/* 800E9C18 000E6B78  48 2A B0 95 */	bl fmod
/* 800E9C1C 000E6B7C  FC 40 08 18 */	frsp f2, f1
/* 800E9C20 000E6B80  C8 02 90 A8 */	lfd f0, lbl_805AADC8@sda21(r2)
/* 800E9C24 000E6B84  C0 7D 00 0C */	lfs f3, 0xc(r29)
/* 800E9C28 000E6B88  FC 00 00 B2 */	fmul f0, f0, f2
/* 800E9C2C 000E6B8C  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 800E9C30 000E6B90  FC 20 18 24 */	fdiv f1, f0, f3
/* 800E9C34 000E6B94  40 81 00 28 */	ble lbl_800E9C5C
/* 800E9C38 000E6B98  EC 62 18 24 */	fdivs f3, f2, f3
/* 800E9C3C 000E6B9C  C0 82 90 84 */	lfs f4, lbl_805AADA4@sda21(r2)
/* 800E9C40 000E6BA0  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 800E9C44 000E6BA4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800E9C48 000E6BA8  EC 64 18 28 */	fsubs f3, f4, f3
/* 800E9C4C 000E6BAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E9C50 000E6BB0  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E9C54 000E6BB4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800E9C58 000E6BB8  48 00 00 1C */	b lbl_800E9C74
lbl_800E9C5C:
/* 800E9C5C 000E6BBC  EC 62 18 24 */	fdivs f3, f2, f3
/* 800E9C60 000E6BC0  C0 5D 00 14 */	lfs f2, 0x14(r29)
/* 800E9C64 000E6BC4  C0 1D 00 04 */	lfs f0, 4(r29)
/* 800E9C68 000E6BC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E9C6C 000E6BCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E9C70 000E6BD0  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_800E9C74:
/* 800E9C74 000E6BD4  C8 42 90 A8 */	lfd f2, lbl_805AADC8@sda21(r2)
/* 800E9C78 000E6BD8  48 2A B0 35 */	bl fmod
/* 800E9C7C 000E6BDC  48 2A AE 61 */	bl sin
/* 800E9C80 000E6BE0  FC A0 08 18 */	frsp f5, f1
/* 800E9C84 000E6BE4  C0 62 90 7C */	lfs f3, lbl_805AAD9C@sda21(r2)
/* 800E9C88 000E6BE8  C0 9D 00 14 */	lfs f4, 0x14(r29)
/* 800E9C8C 000E6BEC  C0 5D 00 08 */	lfs f2, 8(r29)
/* 800E9C90 000E6BF0  EC 05 19 7C */	fnmsubs f0, f5, f5, f3
/* 800E9C94 000E6BF4  C0 22 90 88 */	lfs f1, lbl_805AADA8@sda21(r2)
/* 800E9C98 000E6BF8  EC 44 00 B2 */	fmuls f2, f4, f2
/* 800E9C9C 000E6BFC  EC 63 28 28 */	fsubs f3, f3, f5
/* 800E9CA0 000E6C00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E9CA4 000E6C04  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800E9CA8 000E6C08  EC 01 00 32 */	fmuls f0, f1, f0
/* 800E9CAC 000E6C0C  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 800E9CB0 000E6C10  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_800E9CB4:
/* 800E9CB4 000E6C14  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 800E9CB8 000E6C18  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800E9CBC 000E6C1C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 800E9CC0 000E6C20  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800E9CC4 000E6C24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E9CC8 000E6C28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E9CCC 000E6C2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800E9CD0 000E6C30  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800E9CD4 000E6C34  7C 08 03 A6 */	mtlr r0
/* 800E9CD8 000E6C38  38 21 00 40 */	addi r1, r1, 0x40
/* 800E9CDC 000E6C3C  4E 80 00 20 */	blr

.global CalculateLandingTranslation__16CPlayerCameraBobCFv
CalculateLandingTranslation__16CPlayerCameraBobCFv:
/* 800E9CE0 000E6C40  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 800E9CE4 000E6C44  4E 80 00 20 */	blr

.global GetHelmetBobTranslation__16CPlayerCameraBobCFv
GetHelmetBobTranslation__16CPlayerCameraBobCFv:
/* 800E9CE8 000E6C48  C0 22 90 78 */	lfs f1, lbl_805AAD98@sda21(r2)
/* 800E9CEC 000E6C4C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 800E9CF0 000E6C50  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 800E9CF4 000E6C54  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E9CF8 000E6C58  C0 8D 87 FC */	lfs f4, kHelmetBobMagnitude__16CPlayerCameraBob@sda21(r13)
/* 800E9CFC 000E6C5C  EC 62 08 28 */	fsubs f3, f2, f1
/* 800E9D00 000E6C60  C0 44 00 58 */	lfs f2, 0x58(r4)
/* 800E9D04 000E6C64  C0 24 00 78 */	lfs f1, 0x78(r4)
/* 800E9D08 000E6C68  EC 04 00 32 */	fmuls f0, f4, f0
/* 800E9D0C 000E6C6C  EC 22 08 28 */	fsubs f1, f2, f1
/* 800E9D10 000E6C70  EC 44 00 F2 */	fmuls f2, f4, f3
/* 800E9D14 000E6C74  D0 03 00 00 */	stfs f0, 0(r3)
/* 800E9D18 000E6C78  EC 04 00 72 */	fmuls f0, f4, f1
/* 800E9D1C 000E6C7C  D0 43 00 04 */	stfs f2, 4(r3)
/* 800E9D20 000E6C80  D0 03 00 08 */	stfs f0, 8(r3)
/* 800E9D24 000E6C84  4E 80 00 20 */	blr

.global GetGunBobTransformation__16CPlayerCameraBobCFv
GetGunBobTransformation__16CPlayerCameraBobCFv:
/* 800E9D28 000E6C88  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800E9D2C 000E6C8C  7C 08 02 A6 */	mflr r0
/* 800E9D30 000E6C90  C0 22 90 7C */	lfs f1, lbl_805AAD9C@sda21(r2)
/* 800E9D34 000E6C94  90 01 00 64 */	stw r0, 0x64(r1)
/* 800E9D38 000E6C98  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800E9D3C 000E6C9C  7C 7F 1B 78 */	mr r31, r3
/* 800E9D40 000E6CA0  38 61 00 20 */	addi r3, r1, 0x20
/* 800E9D44 000E6CA4  C0 0D 87 F8 */	lfs f0, kGunBobMagnitude__16CPlayerCameraBob@sda21(r13)
/* 800E9D48 000E6CA8  C0 84 00 58 */	lfs f4, 0x58(r4)
/* 800E9D4C 000E6CAC  EC 61 00 2A */	fadds f3, f1, f0
/* 800E9D50 000E6CB0  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 800E9D54 000E6CB4  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 800E9D58 000E6CB8  38 81 00 14 */	addi r4, r1, 0x14
/* 800E9D5C 000E6CBC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E9D60 000E6CC0  EC 43 00 72 */	fmuls f2, f3, f1
/* 800E9D64 000E6CC4  EC 23 01 32 */	fmuls f1, f3, f4
/* 800E9D68 000E6CC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E9D6C 000E6CCC  EC 03 00 32 */	fmuls f0, f3, f0
/* 800E9D70 000E6CD0  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 800E9D74 000E6CD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E9D78 000E6CD8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800E9D7C 000E6CDC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800E9D80 000E6CE0  48 22 93 C1 */	bl Translate__12CTransform4fFRC9CVector3f
/* 800E9D84 000E6CE4  7F E3 FB 78 */	mr r3, r31
/* 800E9D88 000E6CE8  38 81 00 20 */	addi r4, r1, 0x20
/* 800E9D8C 000E6CEC  48 22 8D E9 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E9D90 000E6CF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800E9D94 000E6CF4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 800E9D98 000E6CF8  7C 08 03 A6 */	mtlr r0
/* 800E9D9C 000E6CFC  38 21 00 60 */	addi r1, r1, 0x60
/* 800E9DA0 000E6D00  4E 80 00 20 */	blr

.global GetCameraBobTransformation__16CPlayerCameraBobCFv
GetCameraBobTransformation__16CPlayerCameraBobCFv:
/* 800E9DA4 000E6D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E9DA8 000E6D08  7C 08 02 A6 */	mflr r0
/* 800E9DAC 000E6D0C  38 84 00 2C */	addi r4, r4, 0x2c
/* 800E9DB0 000E6D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E9DB4 000E6D14  48 22 8D C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800E9DB8 000E6D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E9DBC 000E6D1C  7C 08 03 A6 */	mtlr r0
/* 800E9DC0 000E6D20  38 21 00 10 */	addi r1, r1, 0x10
/* 800E9DC4 000E6D24  4E 80 00 20 */	blr

.global CalculateCameraBobTransformation__16CPlayerCameraBobCFv
CalculateCameraBobTransformation__16CPlayerCameraBobCFv:
/* 800E9DC8 000E6D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E9DCC 000E6D2C  7C 08 02 A6 */	mflr r0
/* 800E9DD0 000E6D30  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800E9DD4 000E6D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E9DD8 000E6D38  38 A1 00 08 */	addi r5, r1, 8
/* 800E9DDC 000E6D3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E9DE0 000E6D40  7C 9F 23 78 */	mr r31, r4
/* 800E9DE4 000E6D44  38 81 00 0C */	addi r4, r1, 0xc
/* 800E9DE8 000E6D48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E9DEC 000E6D4C  7C 7E 1B 78 */	mr r30, r3
/* 800E9DF0 000E6D50  7F E3 FB 78 */	mr r3, r31
/* 800E9DF4 000E6D54  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E9DF8 000E6D58  D0 01 00 08 */	stfs f0, 8(r1)
/* 800E9DFC 000E6D5C  4B FF FD 3D */	bl CalculateMovingTranslation__16CPlayerCameraBobCFRfRf
/* 800E9E00 000E6D60  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 800E9E04 000E6D64  28 00 00 00 */	cmplwi r0, 0
/* 800E9E08 000E6D68  41 82 00 18 */	beq lbl_800E9E20
/* 800E9E0C 000E6D6C  7F E3 FB 78 */	mr r3, r31
/* 800E9E10 000E6D70  4B FF FE D1 */	bl CalculateLandingTranslation__16CPlayerCameraBobCFv
/* 800E9E14 000E6D74  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E9E18 000E6D78  EC 00 08 2A */	fadds f0, f0, f1
/* 800E9E1C 000E6D7C  D0 01 00 08 */	stfs f0, 8(r1)
lbl_800E9E20:
/* 800E9E20 000E6D80  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 800E9E24 000E6D84  7F C3 F3 78 */	mr r3, r30
/* 800E9E28 000E6D88  C0 42 90 78 */	lfs f2, lbl_805AAD98@sda21(r2)
/* 800E9E2C 000E6D8C  C0 61 00 08 */	lfs f3, 8(r1)
/* 800E9E30 000E6D90  48 22 93 59 */	bl Translate__12CTransform4fFfff
/* 800E9E34 000E6D94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E9E38 000E6D98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E9E3C 000E6D9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E9E40 000E6DA0  7C 08 03 A6 */	mtlr r0
/* 800E9E44 000E6DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 800E9E48 000E6DA8  4E 80 00 20 */	blr

.global SetBobMagnitude__16CPlayerCameraBobFf
SetBobMagnitude__16CPlayerCameraBobFf:
/* 800E9E4C 000E6DAC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 800E9E50 000E6DB0  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 800E9E54 000E6DB4  C0 0D 88 10 */	lfs f0, lbl_805A73D0@sda21(r13)
/* 800E9E58 000E6DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9E5C 000E6DBC  40 80 00 0C */	bge lbl_800E9E68
/* 800E9E60 000E6DC0  38 8D 88 10 */	addi r4, r13, lbl_805A73D0@sda21
/* 800E9E64 000E6DC4  48 00 00 08 */	b lbl_800E9E6C
lbl_800E9E68:
/* 800E9E68 000E6DC8  38 83 00 10 */	addi r4, r3, 0x10
lbl_800E9E6C:
/* 800E9E6C 000E6DCC  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9E70 000E6DD0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800E9E74 000E6DD4  C0 2D 88 14 */	lfs f1, lbl_805A73D4@sda21(r13)
/* 800E9E78 000E6DD8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800E9E7C 000E6DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9E80 000E6DE0  40 80 00 0C */	bge lbl_800E9E8C
/* 800E9E84 000E6DE4  38 8D 88 14 */	addi r4, r13, lbl_805A73D4@sda21
/* 800E9E88 000E6DE8  48 00 00 08 */	b lbl_800E9E90
lbl_800E9E8C:
/* 800E9E8C 000E6DEC  38 83 00 10 */	addi r4, r3, 0x10
lbl_800E9E90:
/* 800E9E90 000E6DF0  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9E94 000E6DF4  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800E9E98 000E6DF8  4E 80 00 20 */	blr

.global SetBobTimeScale__16CPlayerCameraBobFf
SetBobTimeScale__16CPlayerCameraBobFf:
/* 800E9E9C 000E6DFC  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 800E9EA0 000E6E00  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 800E9EA4 000E6E04  C0 0D 88 08 */	lfs f0, lbl_805A73C8@sda21(r13)
/* 800E9EA8 000E6E08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9EAC 000E6E0C  40 80 00 0C */	bge lbl_800E9EB8
/* 800E9EB0 000E6E10  38 8D 88 08 */	addi r4, r13, lbl_805A73C8@sda21
/* 800E9EB4 000E6E14  48 00 00 08 */	b lbl_800E9EBC
lbl_800E9EB8:
/* 800E9EB8 000E6E18  38 83 00 18 */	addi r4, r3, 0x18
lbl_800E9EBC:
/* 800E9EBC 000E6E1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9EC0 000E6E20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800E9EC4 000E6E24  C0 2D 88 0C */	lfs f1, lbl_805A73CC@sda21(r13)
/* 800E9EC8 000E6E28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800E9ECC 000E6E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9ED0 000E6E30  40 80 00 0C */	bge lbl_800E9EDC
/* 800E9ED4 000E6E34  38 8D 88 0C */	addi r4, r13, lbl_805A73CC@sda21
/* 800E9ED8 000E6E38  48 00 00 08 */	b lbl_800E9EE0
lbl_800E9EDC:
/* 800E9EDC 000E6E3C  38 83 00 18 */	addi r4, r3, 0x18
lbl_800E9EE0:
/* 800E9EE0 000E6E40  C0 04 00 00 */	lfs f0, 0(r4)
/* 800E9EE4 000E6E44  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800E9EE8 000E6E48  4E 80 00 20 */	blr

.global Update__16CPlayerCameraBobFfR13CStateManager
Update__16CPlayerCameraBobFfR13CStateManager:
/* 800E9EEC 000E6E4C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 800E9EF0 000E6E50  7C 08 02 A6 */	mflr r0
/* 800E9EF4 000E6E54  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 800E9EF8 000E6E58  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 800E9EFC 000E6E5C  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, qr0
/* 800E9F00 000E6E60  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 800E9F04 000E6E64  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 800E9F08 000E6E68  7C 7E 1B 78 */	mr r30, r3
/* 800E9F0C 000E6E6C  FF E0 08 90 */	fmr f31, f1
/* 800E9F10 000E6E70  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 800E9F14 000E6E74  7C 9F 23 78 */	mr r31, r4
/* 800E9F18 000E6E78  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800E9F1C 000E6E7C  EC 1F 00 7A */	fmadds f0, f31, f1, f0
/* 800E9F20 000E6E80  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800E9F24 000E6E84  88 03 00 28 */	lbz r0, 0x28(r3)
/* 800E9F28 000E6E88  28 00 00 00 */	cmplwi r0, 0
/* 800E9F2C 000E6E8C  41 82 00 E8 */	beq lbl_800EA014
/* 800E9F30 000E6E90  88 1E 00 29 */	lbz r0, 0x29(r30)
/* 800E9F34 000E6E94  C0 0D A3 10 */	lfs f0, kLandingBobDamping__16CPlayerCameraBob@sda21(r13)
/* 800E9F38 000E6E98  28 00 00 00 */	cmplwi r0, 0
/* 800E9F3C 000E6E9C  C0 8D 87 D4 */	lfs f4, kLandingBobSpringConstant__16CPlayerCameraBob@sda21(r13)
/* 800E9F40 000E6EA0  41 82 00 0C */	beq lbl_800E9F4C
/* 800E9F44 000E6EA4  C0 0D A3 14 */	lfs f0, kLandingBobDamping2__16CPlayerCameraBob@sda21(r13)
/* 800E9F48 000E6EA8  C0 8D 87 E0 */	lfs f4, kLandingBobSpringConstant2__16CPlayerCameraBob@sda21(r13)
lbl_800E9F4C:
/* 800E9F4C 000E6EAC  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 800E9F50 000E6EB0  C0 7E 00 70 */	lfs f3, 0x70(r30)
/* 800E9F54 000E6EB4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E9F58 000E6EB8  C0 22 90 B0 */	lfs f1, lbl_805AADD0@sda21(r2)
/* 800E9F5C 000E6EBC  FC 00 00 50 */	fneg f0, f0
/* 800E9F60 000E6EC0  EC 04 00 FC */	fnmsubs f0, f4, f3, f0
/* 800E9F64 000E6EC4  EC 1F 10 3A */	fmadds f0, f31, f0, f2
/* 800E9F68 000E6EC8  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 800E9F6C 000E6ECC  C0 5E 00 6C */	lfs f2, 0x6c(r30)
/* 800E9F70 000E6ED0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 800E9F74 000E6ED4  EC 02 07 FA */	fmadds f0, f2, f31, f0
/* 800E9F78 000E6ED8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 800E9F7C 000E6EDC  C0 0D A3 18 */	lfs f0, kCameraDamping__16CPlayerCameraBob@sda21(r13)
/* 800E9F80 000E6EE0  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 800E9F84 000E6EE4  C0 8D 87 E4 */	lfs f4, lbl_805A73A4__16CPlayerCameraBob@sda21(r13)
/* 800E9F88 000E6EE8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800E9F8C 000E6EEC  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 800E9F90 000E6EF0  FC 00 00 50 */	fneg f0, f0
/* 800E9F94 000E6EF4  EC 04 00 FC */	fnmsubs f0, f4, f3, f0
/* 800E9F98 000E6EF8  EC 1F 10 3A */	fmadds f0, f31, f0, f2
/* 800E9F9C 000E6EFC  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 800E9FA0 000E6F00  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 800E9FA4 000E6F04  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 800E9FA8 000E6F08  EC 02 07 FA */	fmadds f0, f2, f31, f0
/* 800E9FAC 000E6F0C  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 800E9FB0 000E6F10  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 800E9FB4 000E6F14  FC 00 02 10 */	fabs f0, f0
/* 800E9FB8 000E6F18  FC 00 00 18 */	frsp f0, f0
/* 800E9FBC 000E6F1C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E9FC0 000E6F20  40 80 00 54 */	bge lbl_800EA014
/* 800E9FC4 000E6F24  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 800E9FC8 000E6F28  FC 00 02 10 */	fabs f0, f0
/* 800E9FCC 000E6F2C  FC 00 00 18 */	frsp f0, f0
/* 800E9FD0 000E6F30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E9FD4 000E6F34  40 80 00 40 */	bge lbl_800EA014
/* 800E9FD8 000E6F38  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 800E9FDC 000E6F3C  FC 00 02 10 */	fabs f0, f0
/* 800E9FE0 000E6F40  FC 00 00 18 */	frsp f0, f0
/* 800E9FE4 000E6F44  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E9FE8 000E6F48  40 80 00 2C */	bge lbl_800EA014
/* 800E9FEC 000E6F4C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 800E9FF0 000E6F50  FC 00 02 10 */	fabs f0, f0
/* 800E9FF4 000E6F54  FC 00 00 18 */	frsp f0, f0
/* 800E9FF8 000E6F58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E9FFC 000E6F5C  40 80 00 18 */	bge lbl_800EA014
/* 800EA000 000E6F60  38 00 00 00 */	li r0, 0
/* 800EA004 000E6F64  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800EA008 000E6F68  98 1E 00 28 */	stb r0, 0x28(r30)
/* 800EA00C 000E6F6C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 800EA010 000E6F70  D0 1E 00 78 */	stfs f0, 0x78(r30)
lbl_800EA014:
/* 800EA014 000E6F74  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 800EA018 000E6F78  2C 00 00 03 */	cmpwi r0, 3
/* 800EA01C 000E6F7C  40 82 00 10 */	bne lbl_800EA02C
/* 800EA020 000E6F80  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800EA024 000E6F84  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 800EA028 000E6F88  48 00 00 0C */	b lbl_800EA034
lbl_800EA02C:
/* 800EA02C 000E6F8C  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800EA030 000E6F90  D0 1E 01 04 */	stfs f0, 0x104(r30)
lbl_800EA034:
/* 800EA034 000E6F94  80 7F 08 70 */	lwz r3, 0x870(r31)
/* 800EA038 000E6F98  4B F1 F1 11 */	bl GetCameraBobMagnitude__14CCameraManagerCFv
/* 800EA03C 000E6F9C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 800EA040 000E6FA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA044 000E6FA4  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 800EA048 000E6FA8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 800EA04C 000E6FAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA050 000E6FB0  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 800EA054 000E6FB4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 800EA058 000E6FB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA05C 000E6FBC  D0 1E 01 04 */	stfs f0, 0x104(r30)
/* 800EA060 000E6FC0  80 7F 08 4C */	lwz r3, 0x84c(r31)
/* 800EA064 000E6FC4  88 03 03 8C */	lbz r0, 0x38c(r3)
/* 800EA068 000E6FC8  28 00 00 00 */	cmplwi r0, 0
/* 800EA06C 000E6FCC  41 82 00 2C */	beq lbl_800EA098
/* 800EA070 000E6FD0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 800EA074 000E6FD4  C0 22 90 B4 */	lfs f1, lbl_805AADD4@sda21(r2)
/* 800EA078 000E6FD8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA07C 000E6FDC  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 800EA080 000E6FE0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 800EA084 000E6FE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA088 000E6FE8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 800EA08C 000E6FEC  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 800EA090 000E6FF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA094 000E6FF4  D0 1E 01 04 */	stfs f0, 0x104(r30)
lbl_800EA098:
/* 800EA098 000E6FF8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 800EA09C 000E6FFC  C0 5E 01 00 */	lfs f2, 0x100(r30)
/* 800EA0A0 000E7000  C0 6D 87 D0 */	lfs f3, kTargetMagnitudeTrackingRate__16CPlayerCameraBob@sda21(r13)
/* 800EA0A4 000E7004  EC 20 10 28 */	fsubs f1, f0, f2
/* 800EA0A8 000E7008  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800EA0AC 000E700C  EC 23 10 7A */	fmadds f1, f3, f1, f2
/* 800EA0B0 000E7010  D0 3E 01 00 */	stfs f1, 0x100(r30)
/* 800EA0B4 000E7014  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 800EA0B8 000E7018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA0BC 000E701C  40 80 00 08 */	bge lbl_800EA0C4
/* 800EA0C0 000E7020  D0 1E 01 00 */	stfs f0, 0x100(r30)
lbl_800EA0C4:
/* 800EA0C4 000E7024  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 800EA0C8 000E7028  FC 20 F8 90 */	fmr f1, f31
/* 800EA0CC 000E702C  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 800EA0D0 000E7030  7F C3 F3 78 */	mr r3, r30
/* 800EA0D4 000E7034  C0 6D 87 D0 */	lfs f3, kTargetMagnitudeTrackingRate__16CPlayerCameraBob@sda21(r13)
/* 800EA0D8 000E7038  7F E4 FB 78 */	mr r4, r31
/* 800EA0DC 000E703C  EC 00 10 28 */	fsubs f0, f0, f2
/* 800EA0E0 000E7040  EC 03 10 3A */	fmadds f0, f3, f0, f2
/* 800EA0E4 000E7044  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 800EA0E8 000E7048  4B FF F4 91 */	bl UpdateViewWander__16CPlayerCameraBobFfR13CStateManager
/* 800EA0EC 000E704C  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 800EA0F0 000E7050  3C 80 80 5A */	lis r4, sZeroVector__9CVector3f@ha
/* 800EA0F4 000E7054  C0 22 90 78 */	lfs f1, lbl_805AAD98@sda21(r2)
/* 800EA0F8 000E7058  3C 60 80 5A */	lis r3, sUpVector__9CVector3f@ha
/* 800EA0FC 000E705C  C0 0D 88 00 */	lfs f0, lbl_805A73C0@sda21(r13)
/* 800EA100 000E7060  38 C3 66 F4 */	addi r6, r3, sUpVector__9CVector3f@l
/* 800EA104 000E7064  D0 21 00 08 */	stfs f1, 8(r1)
/* 800EA108 000E7068  38 84 66 A0 */	addi r4, r4, sZeroVector__9CVector3f@l
/* 800EA10C 000E706C  38 61 00 14 */	addi r3, r1, 0x14
/* 800EA110 000E7070  38 A1 00 08 */	addi r5, r1, 8
/* 800EA114 000E7074  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800EA118 000E7078  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800EA11C 000E707C  48 22 99 F5 */	bl LookAt__12CTransform4fFRC9CVector3fRC9CVector3fRC9CVector3f
/* 800EA120 000E7080  7F C3 F3 78 */	mr r3, r30
/* 800EA124 000E7084  4B FF F4 4D */	bl GetViewWanderTransform__16CPlayerCameraBobCFv
/* 800EA128 000E7088  7C 7F 1B 78 */	mr r31, r3
/* 800EA12C 000E708C  7F C4 F3 78 */	mr r4, r30
/* 800EA130 000E7090  38 61 00 44 */	addi r3, r1, 0x44
/* 800EA134 000E7094  4B FF FC 95 */	bl CalculateCameraBobTransformation__16CPlayerCameraBobCFv
/* 800EA138 000E7098  7F E5 FB 78 */	mr r5, r31
/* 800EA13C 000E709C  38 61 00 74 */	addi r3, r1, 0x74
/* 800EA140 000E70A0  38 81 00 44 */	addi r4, r1, 0x44
/* 800EA144 000E70A4  48 22 88 0D */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800EA148 000E70A8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 800EA14C 000E70AC  38 81 00 74 */	addi r4, r1, 0x74
/* 800EA150 000E70B0  38 A1 00 14 */	addi r5, r1, 0x14
/* 800EA154 000E70B4  48 22 87 FD */	bl __ml__12CTransform4fCFRC12CTransform4f
/* 800EA158 000E70B8  38 7E 00 2C */	addi r3, r30, 0x2c
/* 800EA15C 000E70BC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 800EA160 000E70C0  48 22 89 E1 */	bl __as__12CTransform4fFRC12CTransform4f
/* 800EA164 000E70C4  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, qr0
/* 800EA168 000E70C8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 800EA16C 000E70CC  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 800EA170 000E70D0  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 800EA174 000E70D4  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 800EA178 000E70D8  7C 08 03 A6 */	mtlr r0
/* 800EA17C 000E70DC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 800EA180 000E70E0  4E 80 00 20 */	blr

.global ReadTweaks__16CPlayerCameraBobFR12CInputStream
ReadTweaks__16CPlayerCameraBobFR12CInputStream:
/* 800EA184 000E70E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA188 000E70E8  7C 08 02 A6 */	mflr r0
/* 800EA18C 000E70EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA190 000E70F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA194 000E70F4  7C 7F 1B 78 */	mr r31, r3
/* 800EA198 000E70F8  48 25 4A 91 */	bl ReadFloat__12CInputStreamFv
/* 800EA19C 000E70FC  D0 2D 87 B8 */	stfs f1, kCameraBobExtentX__16CPlayerCameraBob@sda21(r13)
/* 800EA1A0 000E7100  7F E3 FB 78 */	mr r3, r31
/* 800EA1A4 000E7104  48 25 4A 85 */	bl ReadFloat__12CInputStreamFv
/* 800EA1A8 000E7108  D0 2D 87 BC */	stfs f1, kCameraBobExtentY__16CPlayerCameraBob@sda21(r13)
/* 800EA1AC 000E710C  7F E3 FB 78 */	mr r3, r31
/* 800EA1B0 000E7110  48 25 4A 79 */	bl ReadFloat__12CInputStreamFv
/* 800EA1B4 000E7114  D0 2D 87 C0 */	stfs f1, kCameraBobPeriod__16CPlayerCameraBob@sda21(r13)
/* 800EA1B8 000E7118  7F E3 FB 78 */	mr r3, r31
/* 800EA1BC 000E711C  48 25 4A 6D */	bl ReadFloat__12CInputStreamFv
/* 800EA1C0 000E7120  D0 2D 87 C4 */	stfs f1, kOrbitBobScale__16CPlayerCameraBob@sda21(r13)
/* 800EA1C4 000E7124  7F E3 FB 78 */	mr r3, r31
/* 800EA1C8 000E7128  48 25 4A 61 */	bl ReadFloat__12CInputStreamFv
/* 800EA1CC 000E712C  D0 2D 87 C8 */	stfs f1, kMaxOrbitBobScale__16CPlayerCameraBob@sda21(r13)
/* 800EA1D0 000E7130  7F E3 FB 78 */	mr r3, r31
/* 800EA1D4 000E7134  48 25 4A 55 */	bl ReadFloat__12CInputStreamFv
/* 800EA1D8 000E7138  D0 2D 87 CC */	stfs f1, kSlowSpeedPeriodScale__16CPlayerCameraBob@sda21(r13)
/* 800EA1DC 000E713C  7F E3 FB 78 */	mr r3, r31
/* 800EA1E0 000E7140  48 25 4A 49 */	bl ReadFloat__12CInputStreamFv
/* 800EA1E4 000E7144  D0 2D 87 D0 */	stfs f1, kTargetMagnitudeTrackingRate__16CPlayerCameraBob@sda21(r13)
/* 800EA1E8 000E7148  7F E3 FB 78 */	mr r3, r31
/* 800EA1EC 000E714C  48 25 4A 3D */	bl ReadFloat__12CInputStreamFv
/* 800EA1F0 000E7150  D0 2D 87 D4 */	stfs f1, kLandingBobSpringConstant__16CPlayerCameraBob@sda21(r13)
/* 800EA1F4 000E7154  7F E3 FB 78 */	mr r3, r31
/* 800EA1F8 000E7158  48 25 4A 31 */	bl ReadFloat__12CInputStreamFv
/* 800EA1FC 000E715C  D0 2D 87 E8 */	stfs f1, kViewWanderRadius__16CPlayerCameraBob@sda21(r13)
/* 800EA200 000E7160  7F E3 FB 78 */	mr r3, r31
/* 800EA204 000E7164  48 25 4A 25 */	bl ReadFloat__12CInputStreamFv
/* 800EA208 000E7168  D0 2D 87 EC */	stfs f1, kViewWanderSpeedMin__16CPlayerCameraBob@sda21(r13)
/* 800EA20C 000E716C  7F E3 FB 78 */	mr r3, r31
/* 800EA210 000E7170  48 25 4A 19 */	bl ReadFloat__12CInputStreamFv
/* 800EA214 000E7174  D0 2D 87 F0 */	stfs f1, kViewWanderSpeedMax__16CPlayerCameraBob@sda21(r13)
/* 800EA218 000E7178  7F E3 FB 78 */	mr r3, r31
/* 800EA21C 000E717C  48 25 4A 0D */	bl ReadFloat__12CInputStreamFv
/* 800EA220 000E7180  D0 2D 87 F4 */	stfs f1, kViewWanderRollVariation__16CPlayerCameraBob@sda21(r13)
/* 800EA224 000E7184  7F E3 FB 78 */	mr r3, r31
/* 800EA228 000E7188  48 25 4A 01 */	bl ReadFloat__12CInputStreamFv
/* 800EA22C 000E718C  D0 2D 87 F8 */	stfs f1, kGunBobMagnitude__16CPlayerCameraBob@sda21(r13)
/* 800EA230 000E7190  7F E3 FB 78 */	mr r3, r31
/* 800EA234 000E7194  48 25 49 F5 */	bl ReadFloat__12CInputStreamFv
/* 800EA238 000E7198  D0 2D 87 FC */	stfs f1, kHelmetBobMagnitude__16CPlayerCameraBob@sda21(r13)
/* 800EA23C 000E719C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA240 000E71A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA244 000E71A4  7C 08 03 A6 */	mtlr r0
/* 800EA248 000E71A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA24C 000E71AC  4E 80 00 20 */	blr

.global __ct__16CPlayerCameraBobFQ216CPlayerCameraBob14ECameraBobTypeRC9CVector2ff
__ct__16CPlayerCameraBobFQ216CPlayerCameraBob14ECameraBobTypeRC9CVector2ff:
/* 800EA250 000E71B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA254 000E71B4  7C 08 02 A6 */	mflr r0
/* 800EA258 000E71B8  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800EA25C 000E71BC  38 C0 00 08 */	li r6, 8
/* 800EA260 000E71C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA264 000E71C4  38 00 00 00 */	li r0, 0
/* 800EA268 000E71C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA26C 000E71CC  7C 7F 1B 78 */	mr r31, r3
/* 800EA270 000E71D0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800EA274 000E71D4  90 9F 00 00 */	stw r4, 0(r31)
/* 800EA278 000E71D8  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 800EA27C 000E71DC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 800EA280 000E71E0  C0 45 00 00 */	lfs f2, 0(r5)
/* 800EA284 000E71E4  D0 5F 00 04 */	stfs f2, 4(r31)
/* 800EA288 000E71E8  C0 45 00 04 */	lfs f2, 4(r5)
/* 800EA28C 000E71EC  D0 5F 00 08 */	stfs f2, 8(r31)
/* 800EA290 000E71F0  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 800EA294 000E71F4  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 800EA298 000E71F8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800EA29C 000E71FC  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800EA2A0 000E7200  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800EA2A4 000E7204  90 DF 00 20 */	stw r6, 0x20(r31)
/* 800EA2A8 000E7208  90 DF 00 24 */	stw r6, 0x24(r31)
/* 800EA2AC 000E720C  98 1F 00 28 */	stb r0, 0x28(r31)
/* 800EA2B0 000E7210  98 1F 00 29 */	stb r0, 0x29(r31)
/* 800EA2B4 000E7214  48 22 88 C1 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800EA2B8 000E7218  C0 02 90 78 */	lfs f0, lbl_805AAD98@sda21(r2)
/* 800EA2BC 000E721C  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800EA2C0 000E7220  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 800EA2C4 000E7224  38 00 00 00 */	li r0, 0
/* 800EA2C8 000E7228  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 800EA2CC 000E722C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 800EA2D0 000E7230  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 800EA2D4 000E7234  D0 1F 00 64 */	stfs f0, 0x64(r31)
/* 800EA2D8 000E7238  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 800EA2DC 000E723C  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 800EA2E0 000E7240  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 800EA2E4 000E7244  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 800EA2E8 000E7248  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 800EA2EC 000E724C  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800EA2F0 000E7250  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800EA2F4 000E7254  D0 1F 00 C4 */	stfs f0, 0xc4(r31)
/* 800EA2F8 000E7258  C0 0D 87 EC */	lfs f0, kViewWanderSpeedMin__16CPlayerCameraBob@sda21(r13)
/* 800EA2FC 000E725C  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 800EA300 000E7260  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 800EA304 000E7264  48 22 88 71 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800EA308 000E7268  C0 02 90 B8 */	lfs f0, lbl_805AADD8@sda21(r2)
/* 800EA30C 000E726C  38 9F 00 7C */	addi r4, r31, 0x7c
/* 800EA310 000E7270  C0 22 90 78 */	lfs f1, lbl_805AAD98@sda21(r2)
/* 800EA314 000E7274  D0 1F 01 00 */	stfs f0, 0x100(r31)
/* 800EA318 000E7278  C0 02 90 7C */	lfs f0, lbl_805AAD9C@sda21(r2)
/* 800EA31C 000E727C  D0 3F 01 04 */	stfs f1, 0x104(r31)
/* 800EA320 000E7280  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 800EA324 000E7284  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800EA328 000E7288  7C 64 02 14 */	add r3, r4, r0
/* 800EA32C 000E728C  34 63 00 04 */	addic. r3, r3, 4
/* 800EA330 000E7290  41 82 00 10 */	beq lbl_800EA340
/* 800EA334 000E7294  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EA338 000E7298  D0 03 00 04 */	stfs f0, 4(r3)
/* 800EA33C 000E729C  D0 23 00 08 */	stfs f1, 8(r3)
lbl_800EA340:
/* 800EA340 000E72A0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800EA344 000E72A4  38 03 00 01 */	addi r0, r3, 1
/* 800EA348 000E72A8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800EA34C 000E72AC  80 04 00 00 */	lwz r0, 0(r4)
/* 800EA350 000E72B0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800EA354 000E72B4  7C 64 02 14 */	add r3, r4, r0
/* 800EA358 000E72B8  34 63 00 04 */	addic. r3, r3, 4
/* 800EA35C 000E72BC  41 82 00 10 */	beq lbl_800EA36C
/* 800EA360 000E72C0  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EA364 000E72C4  D0 03 00 04 */	stfs f0, 4(r3)
/* 800EA368 000E72C8  D0 23 00 08 */	stfs f1, 8(r3)
lbl_800EA36C:
/* 800EA36C 000E72CC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800EA370 000E72D0  38 03 00 01 */	addi r0, r3, 1
/* 800EA374 000E72D4  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800EA378 000E72D8  80 04 00 00 */	lwz r0, 0(r4)
/* 800EA37C 000E72DC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800EA380 000E72E0  7C 64 02 14 */	add r3, r4, r0
/* 800EA384 000E72E4  34 63 00 04 */	addic. r3, r3, 4
/* 800EA388 000E72E8  41 82 00 10 */	beq lbl_800EA398
/* 800EA38C 000E72EC  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EA390 000E72F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 800EA394 000E72F4  D0 23 00 08 */	stfs f1, 8(r3)
lbl_800EA398:
/* 800EA398 000E72F8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800EA39C 000E72FC  38 03 00 01 */	addi r0, r3, 1
/* 800EA3A0 000E7300  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800EA3A4 000E7304  80 04 00 00 */	lwz r0, 0(r4)
/* 800EA3A8 000E7308  1C 00 00 0C */	mulli r0, r0, 0xc
/* 800EA3AC 000E730C  7C 64 02 14 */	add r3, r4, r0
/* 800EA3B0 000E7310  34 63 00 04 */	addic. r3, r3, 4
/* 800EA3B4 000E7314  41 82 00 10 */	beq lbl_800EA3C4
/* 800EA3B8 000E7318  D0 23 00 00 */	stfs f1, 0(r3)
/* 800EA3BC 000E731C  D0 03 00 04 */	stfs f0, 4(r3)
/* 800EA3C0 000E7320  D0 23 00 08 */	stfs f1, 8(r3)
lbl_800EA3C4:
/* 800EA3C4 000E7324  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800EA3C8 000E7328  38 BF 00 B0 */	addi r5, r31, 0xb0
/* 800EA3CC 000E732C  38 03 00 01 */	addi r0, r3, 1
/* 800EA3D0 000E7330  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 800EA3D4 000E7334  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 800EA3D8 000E7338  54 00 10 3A */	slwi r0, r0, 2
/* 800EA3DC 000E733C  7C 65 02 14 */	add r3, r5, r0
/* 800EA3E0 000E7340  34 63 00 04 */	addic. r3, r3, 4
/* 800EA3E4 000E7344  41 82 00 0C */	beq lbl_800EA3F0
/* 800EA3E8 000E7348  C0 0D 88 04 */	lfs f0, lbl_805A73C4@sda21(r13)
/* 800EA3EC 000E734C  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800EA3F0:
/* 800EA3F0 000E7350  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 800EA3F4 000E7354  38 04 00 01 */	addi r0, r4, 1
/* 800EA3F8 000E7358  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800EA3FC 000E735C  80 05 00 00 */	lwz r0, 0(r5)
/* 800EA400 000E7360  54 00 10 3A */	slwi r0, r0, 2
/* 800EA404 000E7364  7C 65 02 14 */	add r3, r5, r0
/* 800EA408 000E7368  34 63 00 04 */	addic. r3, r3, 4
/* 800EA40C 000E736C  41 82 00 0C */	beq lbl_800EA418
/* 800EA410 000E7370  C0 0D 88 04 */	lfs f0, lbl_805A73C4@sda21(r13)
/* 800EA414 000E7374  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800EA418:
/* 800EA418 000E7378  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 800EA41C 000E737C  38 04 00 01 */	addi r0, r4, 1
/* 800EA420 000E7380  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800EA424 000E7384  80 05 00 00 */	lwz r0, 0(r5)
/* 800EA428 000E7388  54 00 10 3A */	slwi r0, r0, 2
/* 800EA42C 000E738C  7C 65 02 14 */	add r3, r5, r0
/* 800EA430 000E7390  34 63 00 04 */	addic. r3, r3, 4
/* 800EA434 000E7394  41 82 00 0C */	beq lbl_800EA440
/* 800EA438 000E7398  C0 0D 88 04 */	lfs f0, lbl_805A73C4@sda21(r13)
/* 800EA43C 000E739C  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800EA440:
/* 800EA440 000E73A0  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 800EA444 000E73A4  38 04 00 01 */	addi r0, r4, 1
/* 800EA448 000E73A8  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800EA44C 000E73AC  80 05 00 00 */	lwz r0, 0(r5)
/* 800EA450 000E73B0  54 00 10 3A */	slwi r0, r0, 2
/* 800EA454 000E73B4  7C 65 02 14 */	add r3, r5, r0
/* 800EA458 000E73B8  34 63 00 04 */	addic. r3, r3, 4
/* 800EA45C 000E73BC  41 82 00 0C */	beq lbl_800EA468
/* 800EA460 000E73C0  C0 0D 88 04 */	lfs f0, lbl_805A73C4@sda21(r13)
/* 800EA464 000E73C4  D0 03 00 00 */	stfs f0, 0(r3)
lbl_800EA468:
/* 800EA468 000E73C8  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 800EA46C 000E73CC  7F E3 FB 78 */	mr r3, r31
/* 800EA470 000E73D0  38 04 00 01 */	addi r0, r4, 1
/* 800EA474 000E73D4  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 800EA478 000E73D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA47C 000E73DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA480 000E73E0  7C 08 03 A6 */	mtlr r0
/* 800EA484 000E73E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA488 000E73E8  4E 80 00 20 */	blr

.fn __sinit_CPlayerCameraBob_cpp, local
/* 800EA48C 000E73EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA490 000E73F0  7C 08 02 A6 */	mflr r0
/* 800EA494 000E73F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA498 000E73F8  C0 2D 87 D4 */	lfs f1, kLandingBobSpringConstant__16CPlayerCameraBob@sda21(r13)
/* 800EA49C 000E73FC  48 22 B0 65 */	bl SqrtF__5CMathFf
/* 800EA4A0 000E7400  C0 02 90 84 */	lfs f0, lbl_805AADA4@sda21(r2)
/* 800EA4A4 000E7404  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA4A8 000E7408  C0 2D 87 E0 */	lfs f1, kLandingBobSpringConstant2__16CPlayerCameraBob@sda21(r13)
/* 800EA4AC 000E740C  D0 0D A3 10 */	stfs f0, kLandingBobDamping__16CPlayerCameraBob@sda21(r13)
/* 800EA4B0 000E7410  48 22 B0 51 */	bl SqrtF__5CMathFf
/* 800EA4B4 000E7414  C0 02 90 BC */	lfs f0, lbl_805AADDC@sda21(r2)
/* 800EA4B8 000E7418  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA4BC 000E741C  C0 2D 87 E4 */	lfs f1, lbl_805A73A4__16CPlayerCameraBob@sda21(r13)
/* 800EA4C0 000E7420  D0 0D A3 14 */	stfs f0, kLandingBobDamping2__16CPlayerCameraBob@sda21(r13)
/* 800EA4C4 000E7424  48 22 B0 3D */	bl SqrtF__5CMathFf
/* 800EA4C8 000E7428  C0 02 90 C0 */	lfs f0, lbl_805AADE0@sda21(r2)
/* 800EA4CC 000E742C  EC 00 00 72 */	fmuls f0, f0, f1
/* 800EA4D0 000E7430  D0 0D A3 18 */	stfs f0, kCameraDamping__16CPlayerCameraBob@sda21(r13)
/* 800EA4D4 000E7434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA4D8 000E7438  7C 08 03 A6 */	mtlr r0
/* 800EA4DC 000E743C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA4E0 000E7440  4E 80 00 20 */	blr
.endfn __sinit_CPlayerCameraBob_cpp

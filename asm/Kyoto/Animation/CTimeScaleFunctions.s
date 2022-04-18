.include "macros.inc"

.section .data

.global lbl_803ED4D0
lbl_803ED4D0:
	# ROM: 0x3EA4D0
	.4byte 0
	.4byte 0
	.4byte GetType__25CLinearAnimationTimeScaleCFv
	.4byte VTimeScaleIntegral__25CLinearAnimationTimeScaleCFRCfRCf
	.4byte VFindUpperLimit__25CLinearAnimationTimeScaleCFRCfRCf
	.4byte VClone__25CLinearAnimationTimeScaleCFv
	.4byte VGetFunctionMirrored__25CLinearAnimationTimeScaleCFRCf

.global lbl_803ED4EC
lbl_803ED4EC:
	# ROM: 0x3EA4EC
	.4byte 0
	.4byte 0
	.4byte GetType__27CConstantAnimationTimeScaleCFv
	.4byte VTimeScaleIntegral__27CConstantAnimationTimeScaleCFRCfRCf
	.4byte VFindUpperLimit__27CConstantAnimationTimeScaleCFRCfRCf
	.4byte VClone__27CConstantAnimationTimeScaleCFv
	.4byte VGetFunctionMirrored__27CConstantAnimationTimeScaleCFRCf


.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global GetType__25CLinearAnimationTimeScaleCFv
GetType__25CLinearAnimationTimeScaleCFv:
/* 802FD6DC 002FA63C  38 60 00 01 */	li r3, 1
/* 802FD6E0 002FA640  4E 80 00 20 */	blr 

.global VGetFunctionMirrored__25CLinearAnimationTimeScaleCFRCf
VGetFunctionMirrored__25CLinearAnimationTimeScaleCFRCf:
/* 802FD6E4 002FA644  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802FD6E8 002FA648  7C 08 02 A6 */	mflr r0
/* 802FD6EC 002FA64C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802FD6F0 002FA650  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802FD6F4 002FA654  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802FD6F8 002FA658  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802FD6FC 002FA65C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 802FD700 002FA660  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802FD704 002FA664  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 802FD708 002FA668  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802FD70C 002FA66C  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 802FD710 002FA670  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802FD714 002FA674  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 802FD718 002FA678  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 802FD71C 002FA67C  F3 41 00 38 */	psq_st f26, 56(r1), 0, qr0
/* 802FD720 002FA680  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802FD724 002FA684  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802FD728 002FA688  C0 05 00 00 */	lfs f0, 0(r5)
/* 802FD72C 002FA68C  3C A0 80 3D */	lis r5, lbl_803D6E50@ha
/* 802FD730 002FA690  C0 22 C7 18 */	lfs f1, lbl_805AE438@sda21(r2)
/* 802FD734 002FA694  7C 7E 1B 78 */	mr r30, r3
/* 802FD738 002FA698  C0 84 00 04 */	lfs f4, 4(r4)
/* 802FD73C 002FA69C  38 05 6E 50 */	addi r0, r5, lbl_803D6E50@l
/* 802FD740 002FA6A0  EC 61 00 32 */	fmuls f3, f1, f0
/* 802FD744 002FA6A4  C0 44 00 08 */	lfs f2, 8(r4)
/* 802FD748 002FA6A8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 802FD74C 002FA6AC  FF 80 20 50 */	fneg f28, f4
/* 802FD750 002FA6B0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802FD754 002FA6B4  7C 04 03 78 */	mr r4, r0
/* 802FD758 002FA6B8  EF 64 10 FC */	fnmsubs f27, f4, f3, f2
/* 802FD75C 002FA6BC  38 60 00 14 */	li r3, 0x14
/* 802FD760 002FA6C0  EF A3 08 28 */	fsubs f29, f3, f1
/* 802FD764 002FA6C4  38 A0 00 00 */	li r5, 0
/* 802FD768 002FA6C8  EF 43 00 28 */	fsubs f26, f3, f0
/* 802FD76C 002FA6CC  48 01 81 01 */	bl __nw__FUlPCcPCc
/* 802FD770 002FA6D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FD774 002FA6D4  41 82 00 90 */	beq lbl_802FD804
/* 802FD778 002FA6D8  FC 20 D0 90 */	fmr f1, f26
/* 802FD77C 002FA6DC  38 61 00 20 */	addi r3, r1, 0x20
/* 802FD780 002FA6E0  48 04 B6 6D */	bl __ct__13CCharAnimTimeFf
/* 802FD784 002FA6E4  FC 20 E8 90 */	fmr f1, f29
/* 802FD788 002FA6E8  38 61 00 18 */	addi r3, r1, 0x18
/* 802FD78C 002FA6EC  EF FC DF 7A */	fmadds f31, f28, f29, f27
/* 802FD790 002FA6F0  48 04 B6 5D */	bl __ct__13CCharAnimTimeFf
/* 802FD794 002FA6F4  3C 60 80 3F */	lis r3, lbl_803ECD10@ha
/* 802FD798 002FA6F8  3C 80 80 3F */	lis r4, lbl_803ED4D0@ha
/* 802FD79C 002FA6FC  38 03 CD 10 */	addi r0, r3, lbl_803ECD10@l
/* 802FD7A0 002FA700  38 61 00 10 */	addi r3, r1, 0x10
/* 802FD7A4 002FA704  90 1F 00 00 */	stw r0, 0(r31)
/* 802FD7A8 002FA708  38 04 D4 D0 */	addi r0, r4, lbl_803ED4D0@l
/* 802FD7AC 002FA70C  38 81 00 20 */	addi r4, r1, 0x20
/* 802FD7B0 002FA710  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FD7B4 002FA714  90 1F 00 00 */	stw r0, 0(r31)
/* 802FD7B8 002FA718  C3 C1 00 20 */	lfs f30, 0x20(r1)
/* 802FD7BC 002FA71C  C3 A1 00 18 */	lfs f29, 0x18(r1)
/* 802FD7C0 002FA720  48 04 AF A5 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FD7C4 002FA724  EC 5C DE BA */	fmadds f2, f28, f26, f27
/* 802FD7C8 002FA728  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802FD7CC 002FA72C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802FD7D0 002FA730  38 61 00 08 */	addi r3, r1, 8
/* 802FD7D4 002FA734  38 81 00 20 */	addi r4, r1, 0x20
/* 802FD7D8 002FA738  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FD7DC 002FA73C  EF 42 F8 28 */	fsubs f26, f2, f31
/* 802FD7E0 002FA740  EC 3A 08 24 */	fdivs f1, f26, f1
/* 802FD7E4 002FA744  EF E1 F8 3C */	fnmsubs f31, f1, f0, f31
/* 802FD7E8 002FA748  48 04 AF 7D */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FD7EC 002FA74C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802FD7F0 002FA750  EC 1A 00 24 */	fdivs f0, f26, f0
/* 802FD7F4 002FA754  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802FD7F8 002FA758  D3 FF 00 08 */	stfs f31, 8(r31)
/* 802FD7FC 002FA75C  D3 BF 00 0C */	stfs f29, 0xc(r31)
/* 802FD800 002FA760  D3 DF 00 10 */	stfs f30, 0x10(r31)
lbl_802FD804:
/* 802FD804 002FA764  7C 1F 00 D0 */	neg r0, r31
/* 802FD808 002FA768  7C 00 FB 78 */	or r0, r0, r31
/* 802FD80C 002FA76C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FD810 002FA770  98 1E 00 00 */	stb r0, 0(r30)
/* 802FD814 002FA774  93 FE 00 04 */	stw r31, 4(r30)
/* 802FD818 002FA778  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802FD81C 002FA77C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802FD820 002FA780  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802FD824 002FA784  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802FD828 002FA788  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 802FD82C 002FA78C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802FD830 002FA790  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 802FD834 002FA794  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802FD838 002FA798  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 802FD83C 002FA79C  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802FD840 002FA7A0  E3 41 00 38 */	psq_l f26, 56(r1), 0, qr0
/* 802FD844 002FA7A4  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 802FD848 002FA7A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802FD84C 002FA7AC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802FD850 002FA7B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802FD854 002FA7B4  7C 08 03 A6 */	mtlr r0
/* 802FD858 002FA7B8  38 21 00 90 */	addi r1, r1, 0x90
/* 802FD85C 002FA7BC  4E 80 00 20 */	blr 

.global VClone__25CLinearAnimationTimeScaleCFv
VClone__25CLinearAnimationTimeScaleCFv:
/* 802FD860 002FA7C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802FD864 002FA7C4  7C 08 02 A6 */	mflr r0
/* 802FD868 002FA7C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 802FD86C 002FA7CC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 802FD870 002FA7D0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 802FD874 002FA7D4  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 802FD878 002FA7D8  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 802FD87C 002FA7DC  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 802FD880 002FA7E0  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 802FD884 002FA7E4  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 802FD888 002FA7E8  F3 81 00 58 */	psq_st f28, 88(r1), 0, qr0
/* 802FD88C 002FA7EC  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 802FD890 002FA7F0  F3 61 00 48 */	psq_st f27, 72(r1), 0, qr0
/* 802FD894 002FA7F4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FD898 002FA7F8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802FD89C 002FA7FC  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802FD8A0 002FA800  3C A0 80 3D */	lis r5, lbl_803D6E50@ha
/* 802FD8A4 002FA804  7C 7D 1B 78 */	mr r29, r3
/* 802FD8A8 002FA808  38 05 6E 50 */	addi r0, r5, lbl_803D6E50@l
/* 802FD8AC 002FA80C  7C 9E 23 78 */	mr r30, r4
/* 802FD8B0 002FA810  7C 04 03 78 */	mr r4, r0
/* 802FD8B4 002FA814  38 60 00 14 */	li r3, 0x14
/* 802FD8B8 002FA818  38 A0 00 00 */	li r5, 0
/* 802FD8BC 002FA81C  48 01 7F B1 */	bl __nw__FUlPCcPCc
/* 802FD8C0 002FA820  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FD8C4 002FA824  41 82 00 A0 */	beq lbl_802FD964
/* 802FD8C8 002FA828  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 802FD8CC 002FA82C  38 61 00 20 */	addi r3, r1, 0x20
/* 802FD8D0 002FA830  C0 5E 00 04 */	lfs f2, 4(r30)
/* 802FD8D4 002FA834  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802FD8D8 002FA838  EF E2 00 7A */	fmadds f31, f2, f1, f0
/* 802FD8DC 002FA83C  48 04 B5 11 */	bl __ct__13CCharAnimTimeFf
/* 802FD8E0 002FA840  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 802FD8E4 002FA844  38 61 00 18 */	addi r3, r1, 0x18
/* 802FD8E8 002FA848  C0 5E 00 04 */	lfs f2, 4(r30)
/* 802FD8EC 002FA84C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 802FD8F0 002FA850  EF C2 00 7A */	fmadds f30, f2, f1, f0
/* 802FD8F4 002FA854  48 04 B4 F9 */	bl __ct__13CCharAnimTimeFf
/* 802FD8F8 002FA858  3C 60 80 3F */	lis r3, lbl_803ECD10@ha
/* 802FD8FC 002FA85C  3C 80 80 3F */	lis r4, lbl_803ED4D0@ha
/* 802FD900 002FA860  38 03 CD 10 */	addi r0, r3, lbl_803ECD10@l
/* 802FD904 002FA864  38 61 00 10 */	addi r3, r1, 0x10
/* 802FD908 002FA868  90 1F 00 00 */	stw r0, 0(r31)
/* 802FD90C 002FA86C  38 04 D4 D0 */	addi r0, r4, lbl_803ED4D0@l
/* 802FD910 002FA870  38 81 00 20 */	addi r4, r1, 0x20
/* 802FD914 002FA874  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FD918 002FA878  90 1F 00 00 */	stw r0, 0(r31)
/* 802FD91C 002FA87C  C3 A1 00 20 */	lfs f29, 0x20(r1)
/* 802FD920 002FA880  C3 81 00 18 */	lfs f28, 0x18(r1)
/* 802FD924 002FA884  48 04 AE 41 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FD928 002FA888  EF 7F F0 28 */	fsubs f27, f31, f30
/* 802FD92C 002FA88C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 802FD930 002FA890  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802FD934 002FA894  38 61 00 08 */	addi r3, r1, 8
/* 802FD938 002FA898  38 81 00 20 */	addi r4, r1, 0x20
/* 802FD93C 002FA89C  38 A1 00 18 */	addi r5, r1, 0x18
/* 802FD940 002FA8A0  EC 3B 08 24 */	fdivs f1, f27, f1
/* 802FD944 002FA8A4  EF E1 F0 3C */	fnmsubs f31, f1, f0, f30
/* 802FD948 002FA8A8  48 04 AE 1D */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FD94C 002FA8AC  C0 01 00 08 */	lfs f0, 8(r1)
/* 802FD950 002FA8B0  EC 1B 00 24 */	fdivs f0, f27, f0
/* 802FD954 002FA8B4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802FD958 002FA8B8  D3 FF 00 08 */	stfs f31, 8(r31)
/* 802FD95C 002FA8BC  D3 9F 00 0C */	stfs f28, 0xc(r31)
/* 802FD960 002FA8C0  D3 BF 00 10 */	stfs f29, 0x10(r31)
lbl_802FD964:
/* 802FD964 002FA8C4  7C 1F 00 D0 */	neg r0, r31
/* 802FD968 002FA8C8  7C 00 FB 78 */	or r0, r0, r31
/* 802FD96C 002FA8CC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FD970 002FA8D0  98 1D 00 00 */	stb r0, 0(r29)
/* 802FD974 002FA8D4  93 FD 00 04 */	stw r31, 4(r29)
/* 802FD978 002FA8D8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 802FD97C 002FA8DC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 802FD980 002FA8E0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 802FD984 002FA8E4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802FD988 002FA8E8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 802FD98C 002FA8EC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802FD990 002FA8F0  E3 81 00 58 */	psq_l f28, 88(r1), 0, qr0
/* 802FD994 002FA8F4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802FD998 002FA8F8  E3 61 00 48 */	psq_l f27, 72(r1), 0, qr0
/* 802FD99C 002FA8FC  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802FD9A0 002FA900  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FD9A4 002FA904  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802FD9A8 002FA908  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802FD9AC 002FA90C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802FD9B0 002FA910  7C 08 03 A6 */	mtlr r0
/* 802FD9B4 002FA914  38 21 00 90 */	addi r1, r1, 0x90
/* 802FD9B8 002FA918  4E 80 00 20 */	blr 

.global VFindUpperLimit__25CLinearAnimationTimeScaleCFRCfRCf
VFindUpperLimit__25CLinearAnimationTimeScaleCFRCfRCf:
/* 802FD9BC 002FA91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FD9C0 002FA920  7C 08 02 A6 */	mflr r0
/* 802FD9C4 002FA924  38 63 00 04 */	addi r3, r3, 4
/* 802FD9C8 002FA928  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FD9CC 002FA92C  48 00 00 15 */	bl FindUpperLimitFromRoot__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf
/* 802FD9D0 002FA930  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FD9D4 002FA934  7C 08 03 A6 */	mtlr r0
/* 802FD9D8 002FA938  38 21 00 10 */	addi r1, r1, 0x10
/* 802FD9DC 002FA93C  4E 80 00 20 */	blr 

.global FindUpperLimitFromRoot__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf
FindUpperLimitFromRoot__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf:
/* 802FD9E0 002FA940  C0 22 C7 1C */	lfs f1, lbl_805AE43C@sda21(r2)
/* 802FD9E4 002FA944  38 00 00 04 */	li r0, 4
/* 802FD9E8 002FA948  C0 03 00 00 */	lfs f0, 0(r3)
/* 802FD9EC 002FA94C  38 C0 00 00 */	li r6, 0
/* 802FD9F0 002FA950  C0 A4 00 00 */	lfs f5, 0(r4)
/* 802FD9F4 002FA954  EC E1 00 32 */	fmuls f7, f1, f0
/* 802FD9F8 002FA958  C1 03 00 04 */	lfs f8, 4(r3)
/* 802FD9FC 002FA95C  C0 42 C7 18 */	lfs f2, lbl_805AE438@sda21(r2)
/* 802FDA00 002FA960  FC 20 28 90 */	fmr f1, f5
/* 802FDA04 002FA964  EC 68 01 72 */	fmuls f3, f8, f5
/* 802FDA08 002FA968  C8 02 C7 20 */	lfd f0, lbl_805AE440@sda21(r2)
/* 802FDA0C 002FA96C  EC 87 01 72 */	fmuls f4, f7, f5
/* 802FDA10 002FA970  EC C2 01 F2 */	fmuls f6, f2, f7
/* 802FDA14 002FA974  ED 25 19 3A */	fmadds f9, f5, f4, f3
/* 802FDA18 002FA978  7C 09 03 A6 */	mtctr r0
lbl_802FDA1C:
/* 802FDA1C 002FA97C  EC A7 00 72 */	fmuls f5, f7, f1
/* 802FDA20 002FA980  C0 85 00 00 */	lfs f4, 0(r5)
/* 802FDA24 002FA984  EC 68 00 72 */	fmuls f3, f8, f1
/* 802FDA28 002FA988  EC 46 40 7A */	fmadds f2, f6, f1, f8
/* 802FDA2C 002FA98C  EC 61 19 7A */	fmadds f3, f1, f5, f3
/* 802FDA30 002FA990  EC 63 48 28 */	fsubs f3, f3, f9
/* 802FDA34 002FA994  EC 63 20 28 */	fsubs f3, f3, f4
/* 802FDA38 002FA998  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FDA3C 002FA99C  FC 40 1A 10 */	fabs f2, f3
/* 802FDA40 002FA9A0  EC 21 18 28 */	fsubs f1, f1, f3
/* 802FDA44 002FA9A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FDA48 002FA9A8  4D 80 00 20 */	bltlr 
/* 802FDA4C 002FA9AC  EC A7 00 72 */	fmuls f5, f7, f1
/* 802FDA50 002FA9B0  EC 68 00 72 */	fmuls f3, f8, f1
/* 802FDA54 002FA9B4  EC 46 40 7A */	fmadds f2, f6, f1, f8
/* 802FDA58 002FA9B8  EC 61 19 7A */	fmadds f3, f1, f5, f3
/* 802FDA5C 002FA9BC  EC 63 48 28 */	fsubs f3, f3, f9
/* 802FDA60 002FA9C0  EC 63 20 28 */	fsubs f3, f3, f4
/* 802FDA64 002FA9C4  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FDA68 002FA9C8  FC 40 1A 10 */	fabs f2, f3
/* 802FDA6C 002FA9CC  EC 21 18 28 */	fsubs f1, f1, f3
/* 802FDA70 002FA9D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FDA74 002FA9D4  4D 80 00 20 */	bltlr 
/* 802FDA78 002FA9D8  EC A7 00 72 */	fmuls f5, f7, f1
/* 802FDA7C 002FA9DC  EC 68 00 72 */	fmuls f3, f8, f1
/* 802FDA80 002FA9E0  EC 46 40 7A */	fmadds f2, f6, f1, f8
/* 802FDA84 002FA9E4  EC 61 19 7A */	fmadds f3, f1, f5, f3
/* 802FDA88 002FA9E8  EC 63 48 28 */	fsubs f3, f3, f9
/* 802FDA8C 002FA9EC  EC 63 20 28 */	fsubs f3, f3, f4
/* 802FDA90 002FA9F0  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FDA94 002FA9F4  FC 40 1A 10 */	fabs f2, f3
/* 802FDA98 002FA9F8  EC 21 18 28 */	fsubs f1, f1, f3
/* 802FDA9C 002FA9FC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FDAA0 002FAA00  4D 80 00 20 */	bltlr 
/* 802FDAA4 002FAA04  EC A7 00 72 */	fmuls f5, f7, f1
/* 802FDAA8 002FAA08  EC 68 00 72 */	fmuls f3, f8, f1
/* 802FDAAC 002FAA0C  EC 46 40 7A */	fmadds f2, f6, f1, f8
/* 802FDAB0 002FAA10  EC 61 19 7A */	fmadds f3, f1, f5, f3
/* 802FDAB4 002FAA14  EC 63 48 28 */	fsubs f3, f3, f9
/* 802FDAB8 002FAA18  EC 63 20 28 */	fsubs f3, f3, f4
/* 802FDABC 002FAA1C  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FDAC0 002FAA20  FC 40 1A 10 */	fabs f2, f3
/* 802FDAC4 002FAA24  EC 21 18 28 */	fsubs f1, f1, f3
/* 802FDAC8 002FAA28  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FDACC 002FAA2C  4D 80 00 20 */	bltlr 
/* 802FDAD0 002FAA30  EC A7 00 72 */	fmuls f5, f7, f1
/* 802FDAD4 002FAA34  EC 68 00 72 */	fmuls f3, f8, f1
/* 802FDAD8 002FAA38  EC 46 40 7A */	fmadds f2, f6, f1, f8
/* 802FDADC 002FAA3C  EC 61 19 7A */	fmadds f3, f1, f5, f3
/* 802FDAE0 002FAA40  EC 63 48 28 */	fsubs f3, f3, f9
/* 802FDAE4 002FAA44  EC 63 20 28 */	fsubs f3, f3, f4
/* 802FDAE8 002FAA48  EC 63 10 24 */	fdivs f3, f3, f2
/* 802FDAEC 002FAA4C  FC 40 1A 10 */	fabs f2, f3
/* 802FDAF0 002FAA50  EC 21 18 28 */	fsubs f1, f1, f3
/* 802FDAF4 002FAA54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802FDAF8 002FAA58  4D 80 00 20 */	bltlr 
/* 802FDAFC 002FAA5C  38 C6 00 04 */	addi r6, r6, 4
/* 802FDB00 002FAA60  42 00 FF 1C */	bdnz lbl_802FDA1C
/* 802FDB04 002FAA64  C0 22 C7 28 */	lfs f1, lbl_805AE448@sda21(r2)
/* 802FDB08 002FAA68  4E 80 00 20 */	blr 

.global VTimeScaleIntegral__25CLinearAnimationTimeScaleCFRCfRCf
VTimeScaleIntegral__25CLinearAnimationTimeScaleCFRCfRCf:
/* 802FDB0C 002FAA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDB10 002FAA70  7C 08 02 A6 */	mflr r0
/* 802FDB14 002FAA74  7C 86 23 78 */	mr r6, r4
/* 802FDB18 002FAA78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDB1C 002FAA7C  C0 24 00 00 */	lfs f1, 0(r4)
/* 802FDB20 002FAA80  C0 05 00 00 */	lfs f0, 0(r5)
/* 802FDB24 002FAA84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802FDB28 002FAA88  4C 40 13 82 */	cror 2, 0, 2
/* 802FDB2C 002FAA8C  40 82 00 10 */	bne lbl_802FDB3C
/* 802FDB30 002FAA90  38 63 00 04 */	addi r3, r3, 4
/* 802FDB34 002FAA94  48 00 00 2D */	bl TimeScaleIntegralWithSortedLimits__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf
/* 802FDB38 002FAA98  48 00 00 18 */	b lbl_802FDB50
lbl_802FDB3C:
/* 802FDB3C 002FAA9C  7C A4 2B 78 */	mr r4, r5
/* 802FDB40 002FAAA0  7C C5 33 78 */	mr r5, r6
/* 802FDB44 002FAAA4  38 63 00 04 */	addi r3, r3, 4
/* 802FDB48 002FAAA8  48 00 00 19 */	bl TimeScaleIntegralWithSortedLimits__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf
/* 802FDB4C 002FAAAC  FC 20 08 50 */	fneg f1, f1
lbl_802FDB50:
/* 802FDB50 002FAAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDB54 002FAAB4  7C 08 03 A6 */	mtlr r0
/* 802FDB58 002FAAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDB5C 002FAABC  4E 80 00 20 */	blr 

.global TimeScaleIntegralWithSortedLimits__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf
TimeScaleIntegralWithSortedLimits__25CLinearAnimationTimeScaleFRCQ225CLinearAnimationTimeScale20CFunctionDescriptionRCfRCf:
/* 802FDB60 002FAAC0  C0 24 00 00 */	lfs f1, 0(r4)
/* 802FDB64 002FAAC4  C0 A5 00 00 */	lfs f5, 0(r5)
/* 802FDB68 002FAAC8  C0 03 00 00 */	lfs f0, 0(r3)
/* 802FDB6C 002FAACC  C0 83 00 04 */	lfs f4, 4(r3)
/* 802FDB70 002FAAD0  EC 65 08 28 */	fsubs f3, f5, f1
/* 802FDB74 002FAAD4  C0 42 C7 1C */	lfs f2, lbl_805AE43C@sda21(r2)
/* 802FDB78 002FAAD8  EC 20 20 7A */	fmadds f1, f0, f1, f4
/* 802FDB7C 002FAADC  EC 00 21 7A */	fmadds f0, f0, f5, f4
/* 802FDB80 002FAAE0  EC 01 00 2A */	fadds f0, f1, f0
/* 802FDB84 002FAAE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802FDB88 002FAAE8  EC 23 00 32 */	fmuls f1, f3, f0
/* 802FDB8C 002FAAEC  4E 80 00 20 */	blr 

.global VGetFunctionMirrored__27CConstantAnimationTimeScaleCFRCf
VGetFunctionMirrored__27CConstantAnimationTimeScaleCFRCf:
/* 802FDB90 002FAAF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDB94 002FAAF4  7C 08 02 A6 */	mflr r0
/* 802FDB98 002FAAF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDB9C 002FAAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FDBA0 002FAB00  7C 7F 1B 78 */	mr r31, r3
/* 802FDBA4 002FAB04  4B FF 6B 15 */	bl Clone__26IVaryingAnimationTimeScaleCFv
/* 802FDBA8 002FAB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDBAC 002FAB0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FDBB0 002FAB10  7C 08 03 A6 */	mtlr r0
/* 802FDBB4 002FAB14  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDBB8 002FAB18  4E 80 00 20 */	blr 

.global VClone__27CConstantAnimationTimeScaleCFv
VClone__27CConstantAnimationTimeScaleCFv:
/* 802FDBBC 002FAB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FDBC0 002FAB20  7C 08 02 A6 */	mflr r0
/* 802FDBC4 002FAB24  3C A0 80 3D */	lis r5, lbl_803D6E50@ha
/* 802FDBC8 002FAB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FDBCC 002FAB2C  38 05 6E 50 */	addi r0, r5, lbl_803D6E50@l
/* 802FDBD0 002FAB30  38 A0 00 00 */	li r5, 0
/* 802FDBD4 002FAB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FDBD8 002FAB38  7C 9F 23 78 */	mr r31, r4
/* 802FDBDC 002FAB3C  7C 04 03 78 */	mr r4, r0
/* 802FDBE0 002FAB40  93 C1 00 08 */	stw r30, 8(r1)
/* 802FDBE4 002FAB44  7C 7E 1B 78 */	mr r30, r3
/* 802FDBE8 002FAB48  38 60 00 08 */	li r3, 8
/* 802FDBEC 002FAB4C  48 01 7C 81 */	bl __nw__FUlPCcPCc
/* 802FDBF0 002FAB50  28 03 00 00 */	cmplwi r3, 0
/* 802FDBF4 002FAB54  41 82 00 24 */	beq lbl_802FDC18
/* 802FDBF8 002FAB58  3C 80 80 3F */	lis r4, lbl_803ECD10@ha
/* 802FDBFC 002FAB5C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 802FDC00 002FAB60  38 04 CD 10 */	addi r0, r4, lbl_803ECD10@l
/* 802FDC04 002FAB64  3C 80 80 3F */	lis r4, lbl_803ED4EC@ha
/* 802FDC08 002FAB68  90 03 00 00 */	stw r0, 0(r3)
/* 802FDC0C 002FAB6C  38 04 D4 EC */	addi r0, r4, lbl_803ED4EC@l
/* 802FDC10 002FAB70  90 03 00 00 */	stw r0, 0(r3)
/* 802FDC14 002FAB74  D0 03 00 04 */	stfs f0, 4(r3)
lbl_802FDC18:
/* 802FDC18 002FAB78  7C 03 00 D0 */	neg r0, r3
/* 802FDC1C 002FAB7C  7C 00 1B 78 */	or r0, r0, r3
/* 802FDC20 002FAB80  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802FDC24 002FAB84  98 1E 00 00 */	stb r0, 0(r30)
/* 802FDC28 002FAB88  90 7E 00 04 */	stw r3, 4(r30)
/* 802FDC2C 002FAB8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FDC30 002FAB90  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FDC34 002FAB94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FDC38 002FAB98  7C 08 03 A6 */	mtlr r0
/* 802FDC3C 002FAB9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802FDC40 002FABA0  4E 80 00 20 */	blr 

.global VFindUpperLimit__27CConstantAnimationTimeScaleCFRCfRCf
VFindUpperLimit__27CConstantAnimationTimeScaleCFRCfRCf:
/* 802FDC44 002FABA4  C0 25 00 00 */	lfs f1, 0(r5)
/* 802FDC48 002FABA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 802FDC4C 002FABAC  C0 44 00 00 */	lfs f2, 0(r4)
/* 802FDC50 002FABB0  EC 01 00 24 */	fdivs f0, f1, f0
/* 802FDC54 002FABB4  EC 22 00 2A */	fadds f1, f2, f0
/* 802FDC58 002FABB8  4E 80 00 20 */	blr 

.global VTimeScaleIntegral__27CConstantAnimationTimeScaleCFRCfRCf
VTimeScaleIntegral__27CConstantAnimationTimeScaleCFRCfRCf:
/* 802FDC5C 002FABBC  C0 25 00 00 */	lfs f1, 0(r5)
/* 802FDC60 002FABC0  C0 04 00 00 */	lfs f0, 0(r4)
/* 802FDC64 002FABC4  C0 43 00 04 */	lfs f2, 4(r3)
/* 802FDC68 002FABC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 802FDC6C 002FABCC  EC 22 00 32 */	fmuls f1, f2, f0
/* 802FDC70 002FABD0  4E 80 00 20 */	blr 

.global GetType__27CConstantAnimationTimeScaleCFv
GetType__27CConstantAnimationTimeScaleCFv:
/* 802FDC74 002FABD4  38 60 00 00 */	li r3, 0
/* 802FDC78 002FABD8  4E 80 00 20 */	blr

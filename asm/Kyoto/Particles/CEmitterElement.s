.include "macros.inc"

.section .data

.global lbl_803EF748
lbl_803EF748:
	# ROM: 0x3EC748
	.4byte 0
	.4byte 0
	.4byte __dt__14CVEAngleSphereFv
	.4byte GetValue__14CVEAngleSphereCFiR9CVector3fR9CVector3f

.global lbl_803EF758
lbl_803EF758:
	# ROM: 0x3EC758
	.4byte 0
	.4byte 0
	.4byte __dt__15CEmitterElement
	.4byte 0

.global lbl_803EF768
lbl_803EF768:
	# ROM: 0x3EC768
	.4byte 0
	.4byte 0
	.4byte __dt__9CVESphereFv
	.4byte GetValue__9CVESphereCFiR9CVector3fR9CVector3f

.global lbl_803EF778
lbl_803EF778:
	# ROM: 0x3EC778
	.4byte 0
	.4byte 0
	.4byte __dt__16CEESimpleEmitterFv
	.4byte GetValue__16CEESimpleEmitterCFiR9CVector3fR9CVector3f


.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global GetValue__14CVEAngleSphereCFiR9CVector3fR9CVector3f
GetValue__14CVEAngleSphereCFiR9CVector3fR9CVector3f:
/* 8035690C 0035386C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80356910 00353870  7C 08 02 A6 */	mflr r0
/* 80356914 00353874  90 01 00 94 */	stw r0, 0x94(r1)
/* 80356918 00353878  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8035691C 0035387C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, qr0
/* 80356920 00353880  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80356924 00353884  F3 C1 00 78 */	psq_st f30, 120(r1), 0, qr0
/* 80356928 00353888  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8035692C 0035388C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, qr0
/* 80356930 00353890  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80356934 00353894  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80356938 00353898  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8035693C 0035389C  93 81 00 50 */	stw r28, 0x50(r1)
/* 80356940 003538A0  3C E0 80 5A */	lis r7, skZero3f@ha
/* 80356944 003538A4  7C 7C 1B 78 */	mr r28, r3
/* 80356948 003538A8  38 67 66 A0 */	addi r3, r7, skZero3f@l
/* 8035694C 003538AC  7C BE 2B 78 */	mr r30, r5
/* 80356950 003538B0  C0 43 00 00 */	lfs f2, 0(r3)
/* 80356954 003538B4  7C 9D 23 78 */	mr r29, r4
/* 80356958 003538B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8035695C 003538BC  7C DF 33 78 */	mr r31, r6
/* 80356960 003538C0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80356964 003538C4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80356968 003538C8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8035696C 003538CC  80 7C 00 04 */	lwz r3, 4(r28)
/* 80356970 003538D0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80356974 003538D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80356978 003538D8  81 83 00 00 */	lwz r12, 0(r3)
/* 8035697C 003538DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80356980 003538E0  7D 89 03 A6 */	mtctr r12
/* 80356984 003538E4  4E 80 04 21 */	bctrl 
/* 80356988 003538E8  80 7C 00 08 */	lwz r3, 8(r28)
/* 8035698C 003538EC  7F A4 EB 78 */	mr r4, r29
/* 80356990 003538F0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80356994 003538F4  81 83 00 00 */	lwz r12, 0(r3)
/* 80356998 003538F8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8035699C 003538FC  7D 89 03 A6 */	mtctr r12
/* 803569A0 00353900  4E 80 04 21 */	bctrl 
/* 803569A4 00353904  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 803569A8 00353908  7F A4 EB 78 */	mr r4, r29
/* 803569AC 0035390C  38 A1 00 14 */	addi r5, r1, 0x14
/* 803569B0 00353910  81 83 00 00 */	lwz r12, 0(r3)
/* 803569B4 00353914  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803569B8 00353918  7D 89 03 A6 */	mtctr r12
/* 803569BC 0035391C  4E 80 04 21 */	bctrl 
/* 803569C0 00353920  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 803569C4 00353924  7F A4 EB 78 */	mr r4, r29
/* 803569C8 00353928  38 A1 00 0C */	addi r5, r1, 0xc
/* 803569CC 0035392C  81 83 00 00 */	lwz r12, 0(r3)
/* 803569D0 00353930  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803569D4 00353934  7D 89 03 A6 */	mtctr r12
/* 803569D8 00353938  4E 80 04 21 */	bctrl 
/* 803569DC 0035393C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 803569E0 00353940  7F A4 EB 78 */	mr r4, r29
/* 803569E4 00353944  38 A1 00 10 */	addi r5, r1, 0x10
/* 803569E8 00353948  81 83 00 00 */	lwz r12, 0(r3)
/* 803569EC 0035394C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803569F0 00353950  7D 89 03 A6 */	mtctr r12
/* 803569F4 00353954  4E 80 04 21 */	bctrl 
/* 803569F8 00353958  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 803569FC 0035395C  7F A4 EB 78 */	mr r4, r29
/* 80356A00 00353960  38 A1 00 08 */	addi r5, r1, 8
/* 80356A04 00353964  81 83 00 00 */	lwz r12, 0(r3)
/* 80356A08 00353968  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80356A0C 0035396C  7D 89 03 A6 */	mtctr r12
/* 80356A10 00353970  4E 80 04 21 */	bctrl 
/* 80356A14 00353974  C3 A1 00 10 */	lfs f29, 0x10(r1)
/* 80356A18 00353978  4B FB BB E5 */	bl GetRandomNumber__9CRandom16Fv
/* 80356A1C 0035397C  4B FB BA C1 */	bl Float__9CRandom16Fv
/* 80356A20 00353980  EC 7D 00 72 */	fmuls f3, f29, f1
/* 80356A24 00353984  C0 42 CC A8 */	lfs f2, lbl_805AE9C8@sda21(r2)
/* 80356A28 00353988  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80356A2C 0035398C  C0 02 CC AC */	lfs f0, lbl_805AE9CC@sda21(r2)
/* 80356A30 00353990  EC 42 1F 78 */	fmsubs f2, f2, f29, f3
/* 80356A34 00353994  C3 A1 00 08 */	lfs f29, 8(r1)
/* 80356A38 00353998  EC 21 10 2A */	fadds f1, f1, f2
/* 80356A3C 0035399C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80356A40 003539A0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80356A44 003539A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80356A48 003539A8  4B FB BB B5 */	bl GetRandomNumber__9CRandom16Fv
/* 80356A4C 003539AC  4B FB BA 91 */	bl Float__9CRandom16Fv
/* 80356A50 003539B0  EC 7D 00 72 */	fmuls f3, f29, f1
/* 80356A54 003539B4  C0 42 CC A8 */	lfs f2, lbl_805AE9C8@sda21(r2)
/* 80356A58 003539B8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80356A5C 003539BC  C0 02 CC AC */	lfs f0, lbl_805AE9CC@sda21(r2)
/* 80356A60 003539C0  EC 42 1F 78 */	fmsubs f2, f2, f29, f3
/* 80356A64 003539C4  EC 41 10 2A */	fadds f2, f1, f2
/* 80356A68 003539C8  EC 22 00 32 */	fmuls f1, f2, f0
/* 80356A6C 003539CC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80356A70 003539D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80356A74 003539D4  4B FB E2 D1 */	bl FastCosR__5CMathFf
/* 80356A78 003539D8  FF C0 08 90 */	fmr f30, f1
/* 80356A7C 003539DC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80356A80 003539E0  4B FB E2 C5 */	bl FastCosR__5CMathFf
/* 80356A84 003539E4  EF A1 07 B2 */	fmuls f29, f1, f30
/* 80356A88 003539E8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80356A8C 003539EC  4B FB E3 65 */	bl FastSinR__5CMathFf
/* 80356A90 003539F0  FF C0 08 90 */	fmr f30, f1
/* 80356A94 003539F4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80356A98 003539F8  4B FB E2 AD */	bl FastCosR__5CMathFf
/* 80356A9C 003539FC  FF E0 08 90 */	fmr f31, f1
/* 80356AA0 00353A00  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80356AA4 00353A04  4B FB E3 4D */	bl FastSinR__5CMathFf
/* 80356AA8 00353A08  FC 40 08 50 */	fneg f2, f1
/* 80356AAC 00353A0C  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 80356AB0 00353A10  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80356AB4 00353A14  38 61 00 2C */	addi r3, r1, 0x2c
/* 80356AB8 00353A18  EC 06 07 B2 */	fmuls f0, f6, f30
/* 80356ABC 00353A1C  C0 81 00 3C */	lfs f4, 0x3c(r1)
/* 80356AC0 00353A20  EC A2 07 F2 */	fmuls f5, f2, f31
/* 80356AC4 00353A24  C0 61 00 40 */	lfs f3, 0x40(r1)
/* 80356AC8 00353A28  EC 46 07 72 */	fmuls f2, f6, f29
/* 80356ACC 00353A2C  38 81 00 20 */	addi r4, r1, 0x20
/* 80356AD0 00353A30  EC 84 00 2A */	fadds f4, f4, f0
/* 80356AD4 00353A34  EC 06 01 72 */	fmuls f0, f6, f5
/* 80356AD8 00353A38  EC 43 10 2A */	fadds f2, f3, f2
/* 80356ADC 00353A3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80356AE0 00353A40  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80356AE4 00353A44  D0 9E 00 04 */	stfs f4, 4(r30)
/* 80356AE8 00353A48  D0 5E 00 08 */	stfs f2, 8(r30)
/* 80356AEC 00353A4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80356AF0 00353A50  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80356AF4 00353A54  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80356AF8 00353A58  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80356AFC 00353A5C  EC 81 00 28 */	fsubs f4, f1, f0
/* 80356B00 00353A60  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80356B04 00353A64  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80356B08 00353A68  EC 43 10 28 */	fsubs f2, f3, f2
/* 80356B0C 00353A6C  D0 81 00 24 */	stfs f4, 0x24(r1)
/* 80356B10 00353A70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80356B14 00353A74  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80356B18 00353A78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80356B1C 00353A7C  4B FB DD 35 */	bl AsNormalized__9CVector3fCFv
/* 80356B20 00353A80  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80356B24 00353A84  7F A4 EB 78 */	mr r4, r29
/* 80356B28 00353A88  38 A1 00 18 */	addi r5, r1, 0x18
/* 80356B2C 00353A8C  C3 A1 00 2C */	lfs f29, 0x2c(r1)
/* 80356B30 00353A90  81 83 00 00 */	lwz r12, 0(r3)
/* 80356B34 00353A94  C3 C1 00 30 */	lfs f30, 0x30(r1)
/* 80356B38 00353A98  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80356B3C 00353A9C  C3 E1 00 34 */	lfs f31, 0x34(r1)
/* 80356B40 00353AA0  7D 89 03 A6 */	mtctr r12
/* 80356B44 00353AA4  4E 80 04 21 */	bctrl 
/* 80356B48 00353AA8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80356B4C 00353AAC  38 60 00 00 */	li r3, 0
/* 80356B50 00353AB0  EC 40 07 72 */	fmuls f2, f0, f29
/* 80356B54 00353AB4  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80356B58 00353AB8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80356B5C 00353ABC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80356B60 00353AC0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80356B64 00353AC4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80356B68 00353AC8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, qr0
/* 80356B6C 00353ACC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80356B70 00353AD0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, qr0
/* 80356B74 00353AD4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80356B78 00353AD8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, qr0
/* 80356B7C 00353ADC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80356B80 00353AE0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80356B84 00353AE4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80356B88 00353AE8  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80356B8C 00353AEC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80356B90 00353AF0  83 81 00 50 */	lwz r28, 0x50(r1)
/* 80356B94 00353AF4  7C 08 03 A6 */	mtlr r0
/* 80356B98 00353AF8  38 21 00 90 */	addi r1, r1, 0x90
/* 80356B9C 00353AFC  4E 80 00 20 */	blr 

.global __dt__14CVEAngleSphereFv
__dt__14CVEAngleSphereFv:
/* 80356BA0 00353B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356BA4 00353B04  7C 08 02 A6 */	mflr r0
/* 80356BA8 00353B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356BAC 00353B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356BB0 00353B10  7C 9F 23 78 */	mr r31, r4
/* 80356BB4 00353B14  93 C1 00 08 */	stw r30, 8(r1)
/* 80356BB8 00353B18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80356BBC 00353B1C  41 82 01 28 */	beq lbl_80356CE4
/* 80356BC0 00353B20  3C 60 80 3F */	lis r3, lbl_803EF748@ha
/* 80356BC4 00353B24  38 03 F7 48 */	addi r0, r3, lbl_803EF748@l
/* 80356BC8 00353B28  90 1E 00 00 */	stw r0, 0(r30)
/* 80356BCC 00353B2C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80356BD0 00353B30  28 03 00 00 */	cmplwi r3, 0
/* 80356BD4 00353B34  41 82 00 18 */	beq lbl_80356BEC
/* 80356BD8 00353B38  81 83 00 00 */	lwz r12, 0(r3)
/* 80356BDC 00353B3C  38 80 00 01 */	li r4, 1
/* 80356BE0 00353B40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356BE4 00353B44  7D 89 03 A6 */	mtctr r12
/* 80356BE8 00353B48  4E 80 04 21 */	bctrl 
lbl_80356BEC:
/* 80356BEC 00353B4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80356BF0 00353B50  28 03 00 00 */	cmplwi r3, 0
/* 80356BF4 00353B54  41 82 00 18 */	beq lbl_80356C0C
/* 80356BF8 00353B58  81 83 00 00 */	lwz r12, 0(r3)
/* 80356BFC 00353B5C  38 80 00 01 */	li r4, 1
/* 80356C00 00353B60  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356C04 00353B64  7D 89 03 A6 */	mtctr r12
/* 80356C08 00353B68  4E 80 04 21 */	bctrl 
lbl_80356C0C:
/* 80356C0C 00353B6C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80356C10 00353B70  28 03 00 00 */	cmplwi r3, 0
/* 80356C14 00353B74  41 82 00 18 */	beq lbl_80356C2C
/* 80356C18 00353B78  81 83 00 00 */	lwz r12, 0(r3)
/* 80356C1C 00353B7C  38 80 00 01 */	li r4, 1
/* 80356C20 00353B80  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356C24 00353B84  7D 89 03 A6 */	mtctr r12
/* 80356C28 00353B88  4E 80 04 21 */	bctrl 
lbl_80356C2C:
/* 80356C2C 00353B8C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80356C30 00353B90  28 03 00 00 */	cmplwi r3, 0
/* 80356C34 00353B94  41 82 00 18 */	beq lbl_80356C4C
/* 80356C38 00353B98  81 83 00 00 */	lwz r12, 0(r3)
/* 80356C3C 00353B9C  38 80 00 01 */	li r4, 1
/* 80356C40 00353BA0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356C44 00353BA4  7D 89 03 A6 */	mtctr r12
/* 80356C48 00353BA8  4E 80 04 21 */	bctrl 
lbl_80356C4C:
/* 80356C4C 00353BAC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80356C50 00353BB0  28 03 00 00 */	cmplwi r3, 0
/* 80356C54 00353BB4  41 82 00 18 */	beq lbl_80356C6C
/* 80356C58 00353BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80356C5C 00353BBC  38 80 00 01 */	li r4, 1
/* 80356C60 00353BC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356C64 00353BC4  7D 89 03 A6 */	mtctr r12
/* 80356C68 00353BC8  4E 80 04 21 */	bctrl 
lbl_80356C6C:
/* 80356C6C 00353BCC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80356C70 00353BD0  28 03 00 00 */	cmplwi r3, 0
/* 80356C74 00353BD4  41 82 00 18 */	beq lbl_80356C8C
/* 80356C78 00353BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80356C7C 00353BDC  38 80 00 01 */	li r4, 1
/* 80356C80 00353BE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356C84 00353BE4  7D 89 03 A6 */	mtctr r12
/* 80356C88 00353BE8  4E 80 04 21 */	bctrl 
lbl_80356C8C:
/* 80356C8C 00353BEC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80356C90 00353BF0  28 03 00 00 */	cmplwi r3, 0
/* 80356C94 00353BF4  41 82 00 18 */	beq lbl_80356CAC
/* 80356C98 00353BF8  81 83 00 00 */	lwz r12, 0(r3)
/* 80356C9C 00353BFC  38 80 00 01 */	li r4, 1
/* 80356CA0 00353C00  81 8C 00 08 */	lwz r12, 8(r12)
/* 80356CA4 00353C04  7D 89 03 A6 */	mtctr r12
/* 80356CA8 00353C08  4E 80 04 21 */	bctrl 
lbl_80356CAC:
/* 80356CAC 00353C0C  28 1E 00 00 */	cmplwi r30, 0
/* 80356CB0 00353C10  41 82 00 20 */	beq lbl_80356CD0
/* 80356CB4 00353C14  3C 60 80 3F */	lis r3, lbl_803EF758@ha
/* 80356CB8 00353C18  38 03 F7 58 */	addi r0, r3, lbl_803EF758@l
/* 80356CBC 00353C1C  90 1E 00 00 */	stw r0, 0(r30)
/* 80356CC0 00353C20  41 82 00 10 */	beq lbl_80356CD0
/* 80356CC4 00353C24  3C 60 80 3F */	lis r3, lbl_803EC5A8@ha
/* 80356CC8 00353C28  38 03 C5 A8 */	addi r0, r3, lbl_803EC5A8@l
/* 80356CCC 00353C2C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80356CD0:
/* 80356CD0 00353C30  7F E0 07 35 */	extsh. r0, r31
/* 80356CD4 00353C34  40 81 00 10 */	ble lbl_80356CE4
/* 80356CD8 00353C38  7F C3 F3 78 */	mr r3, r30
/* 80356CDC 00353C3C  38 80 00 20 */	li r4, 0x20
/* 80356CE0 00353C40  48 01 5D 85 */	bl sub_8036ca64
lbl_80356CE4:
/* 80356CE4 00353C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356CE8 00353C48  7F C3 F3 78 */	mr r3, r30
/* 80356CEC 00353C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356CF0 00353C50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80356CF4 00353C54  7C 08 03 A6 */	mtlr r0
/* 80356CF8 00353C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80356CFC 00353C5C  4E 80 00 20 */	blr 

.global __ct__14CVEAngleSphereFP14CVectorElementP12CRealElementP12CRealElementP12CRealElementP12CRealElementP12CRealElementP12CRealElement
__ct__14CVEAngleSphereFP14CVectorElementP12CRealElementP12CRealElementP12CRealElementP12CRealElementP12CRealElementP12CRealElement:
/* 80356D00 00353C60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356D04 00353C64  3D 80 80 3F */	lis r12, lbl_803EF758@ha
/* 80356D08 00353C68  39 8C F7 58 */	addi r12, r12, lbl_803EF758@l
/* 80356D0C 00353C6C  3D 60 80 3F */	lis r11, lbl_803EF748@ha
/* 80356D10 00353C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356D14 00353C74  3F E0 80 3F */	lis r31, lbl_803EC5A8@ha
/* 80356D18 00353C78  38 1F C5 A8 */	addi r0, r31, lbl_803EC5A8@l
/* 80356D1C 00353C7C  90 03 00 00 */	stw r0, 0(r3)
/* 80356D20 00353C80  38 0B F7 48 */	addi r0, r11, lbl_803EF748@l
/* 80356D24 00353C84  91 83 00 00 */	stw r12, 0(r3)
/* 80356D28 00353C88  90 03 00 00 */	stw r0, 0(r3)
/* 80356D2C 00353C8C  90 83 00 04 */	stw r4, 4(r3)
/* 80356D30 00353C90  90 A3 00 08 */	stw r5, 8(r3)
/* 80356D34 00353C94  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80356D38 00353C98  90 E3 00 10 */	stw r7, 0x10(r3)
/* 80356D3C 00353C9C  91 03 00 14 */	stw r8, 0x14(r3)
/* 80356D40 00353CA0  91 23 00 18 */	stw r9, 0x18(r3)
/* 80356D44 00353CA4  91 43 00 1C */	stw r10, 0x1c(r3)
/* 80356D48 00353CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356D4C 00353CAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80356D50 00353CB0  4E 80 00 20 */	blr 

.global __dt__15CEmitterElement
__dt__15CEmitterElement:
/* 80356D54 00353CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80356D58 00353CB8  7C 08 02 A6 */	mflr r0
/* 80356D5C 00353CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80356D60 00353CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80356D64 00353CC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80356D68 00353CC8  41 82 00 34 */	beq lbl_80356D9C
/* 80356D6C 00353CCC  3C 60 80 3F */	lis r3, lbl_803EF758@ha
/* 80356D70 00353CD0  38 03 F7 58 */	addi r0, r3, lbl_803EF758@l
/* 80356D74 00353CD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80356D78 00353CD8  41 82 00 10 */	beq lbl_80356D88
/* 80356D7C 00353CDC  3C 60 80 3F */	lis r3, lbl_803EC5A8@ha
/* 80356D80 00353CE0  38 03 C5 A8 */	addi r0, r3, lbl_803EC5A8@l
/* 80356D84 00353CE4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80356D88:
/* 80356D88 00353CE8  7C 80 07 35 */	extsh. r0, r4
/* 80356D8C 00353CEC  40 81 00 10 */	ble lbl_80356D9C
/* 80356D90 00353CF0  7F E3 FB 78 */	mr r3, r31
/* 80356D94 00353CF4  38 80 00 04 */	li r4, 4
/* 80356D98 00353CF8  48 01 5C CD */	bl sub_8036ca64
lbl_80356D9C:
/* 80356D9C 00353CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80356DA0 00353D00  7F E3 FB 78 */	mr r3, r31
/* 80356DA4 00353D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80356DA8 00353D08  7C 08 03 A6 */	mtlr r0
/* 80356DAC 00353D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80356DB0 00353D10  4E 80 00 20 */	blr 

.global GetValue__9CVESphereCFiR9CVector3fR9CVector3f
GetValue__9CVESphereCFiR9CVector3fR9CVector3f:
/* 80356DB4 00353D14  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80356DB8 00353D18  7C 08 02 A6 */	mflr r0
/* 80356DBC 00353D1C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80356DC0 00353D20  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80356DC4 00353D24  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, qr0
/* 80356DC8 00353D28  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80356DCC 00353D2C  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, qr0
/* 80356DD0 00353D30  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80356DD4 00353D34  F3 A1 00 98 */	psq_st f29, 152(r1), 0, qr0
/* 80356DD8 00353D38  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80356DDC 00353D3C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80356DE0 00353D40  93 A1 00 84 */	stw r29, 0x84(r1)
/* 80356DE4 00353D44  93 81 00 80 */	stw r28, 0x80(r1)
/* 80356DE8 00353D48  3C E0 80 5A */	lis r7, skZero3f@ha
/* 80356DEC 00353D4C  7C 7C 1B 78 */	mr r28, r3
/* 80356DF0 00353D50  38 67 66 A0 */	addi r3, r7, skZero3f@l
/* 80356DF4 00353D54  7C BE 2B 78 */	mr r30, r5
/* 80356DF8 00353D58  C0 43 00 00 */	lfs f2, 0(r3)
/* 80356DFC 00353D5C  7C 9D 23 78 */	mr r29, r4
/* 80356E00 00353D60  C0 23 00 04 */	lfs f1, 4(r3)
/* 80356E04 00353D64  7C DF 33 78 */	mr r31, r6
/* 80356E08 00353D68  C0 03 00 08 */	lfs f0, 8(r3)
/* 80356E0C 00353D6C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80356E10 00353D70  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80356E14 00353D74  80 7C 00 04 */	lwz r3, 4(r28)
/* 80356E18 00353D78  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80356E1C 00353D7C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80356E20 00353D80  81 83 00 00 */	lwz r12, 0(r3)
/* 80356E24 00353D84  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80356E28 00353D88  7D 89 03 A6 */	mtctr r12
/* 80356E2C 00353D8C  4E 80 04 21 */	bctrl 
/* 80356E30 00353D90  80 7C 00 08 */	lwz r3, 8(r28)
/* 80356E34 00353D94  7F A4 EB 78 */	mr r4, r29
/* 80356E38 00353D98  38 A1 00 0C */	addi r5, r1, 0xc
/* 80356E3C 00353D9C  81 83 00 00 */	lwz r12, 0(r3)
/* 80356E40 00353DA0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80356E44 00353DA4  7D 89 03 A6 */	mtctr r12
/* 80356E48 00353DA8  4E 80 04 21 */	bctrl 
/* 80356E4C 00353DAC  4B FB B7 B1 */	bl GetRandomNumber__9CRandom16Fv
/* 80356E50 00353DB0  38 80 FF 9C */	li r4, -100
/* 80356E54 00353DB4  38 A0 00 64 */	li r5, 0x64
/* 80356E58 00353DB8  4B FB B7 3D */	bl Range__9CRandom16Fii
/* 80356E5C 00353DBC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80356E60 00353DC0  3C 00 43 30 */	lis r0, 0x4330
/* 80356E64 00353DC4  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80356E68 00353DC8  C8 22 CC B8 */	lfd f1, lbl_805AE9D8@sda21(r2)
/* 80356E6C 00353DCC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80356E70 00353DD0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80356E74 00353DD4  EF C0 08 28 */	fsubs f30, f0, f1
/* 80356E78 00353DD8  4B FB B7 85 */	bl GetRandomNumber__9CRandom16Fv
/* 80356E7C 00353DDC  38 80 FF 9C */	li r4, -100
/* 80356E80 00353DE0  38 A0 00 64 */	li r5, 0x64
/* 80356E84 00353DE4  4B FB B7 11 */	bl Range__9CRandom16Fii
/* 80356E88 00353DE8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80356E8C 00353DEC  3C 00 43 30 */	lis r0, 0x4330
/* 80356E90 00353DF0  90 61 00 74 */	stw r3, 0x74(r1)
/* 80356E94 00353DF4  C8 22 CC B8 */	lfd f1, lbl_805AE9D8@sda21(r2)
/* 80356E98 00353DF8  90 01 00 70 */	stw r0, 0x70(r1)
/* 80356E9C 00353DFC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80356EA0 00353E00  EF E0 08 28 */	fsubs f31, f0, f1
/* 80356EA4 00353E04  4B FB B7 59 */	bl GetRandomNumber__9CRandom16Fv
/* 80356EA8 00353E08  38 80 FF 9C */	li r4, -100
/* 80356EAC 00353E0C  38 A0 00 64 */	li r5, 0x64
/* 80356EB0 00353E10  4B FB B6 E5 */	bl Range__9CRandom16Fii
/* 80356EB4 00353E14  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 80356EB8 00353E18  3C 00 43 30 */	lis r0, 0x4330
/* 80356EBC 00353E1C  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80356EC0 00353E20  38 61 00 4C */	addi r3, r1, 0x4c
/* 80356EC4 00353E24  C8 22 CC B8 */	lfd f1, lbl_805AE9D8@sda21(r2)
/* 80356EC8 00353E28  90 01 00 78 */	stw r0, 0x78(r1)
/* 80356ECC 00353E2C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80356ED0 00353E30  D3 E1 00 50 */	stfs f31, 0x50(r1)
/* 80356ED4 00353E34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80356ED8 00353E38  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 80356EDC 00353E3C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80356EE0 00353E40  4B FB D8 19 */	bl CanBeNormalized__9CVector3fCFv
/* 80356EE4 00353E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80356EE8 00353E48  41 82 00 40 */	beq lbl_80356F28
/* 80356EEC 00353E4C  C0 62 CC B0 */	lfs f3, lbl_805AE9D0@sda21(r2)
/* 80356EF0 00353E50  38 61 00 28 */	addi r3, r1, 0x28
/* 80356EF4 00353E54  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80356EF8 00353E58  38 81 00 34 */	addi r4, r1, 0x34
/* 80356EFC 00353E5C  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80356F00 00353E60  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80356F04 00353E64  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80356F08 00353E68  EC 23 00 72 */	fmuls f1, f3, f1
/* 80356F0C 00353E6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80356F10 00353E70  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80356F14 00353E74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80356F18 00353E78  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80356F1C 00353E7C  4B FB D9 35 */	bl AsNormalized__9CVector3fCFv
/* 80356F20 00353E80  38 81 00 28 */	addi r4, r1, 0x28
/* 80356F24 00353E84  48 00 00 30 */	b lbl_80356F54
lbl_80356F28:
/* 80356F28 00353E88  C0 62 CC B0 */	lfs f3, lbl_805AE9D0@sda21(r2)
/* 80356F2C 00353E8C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80356F30 00353E90  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80356F34 00353E94  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 80356F38 00353E98  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80356F3C 00353E9C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80356F40 00353EA0  EC 23 00 72 */	fmuls f1, f3, f1
/* 80356F44 00353EA4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80356F48 00353EA8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80356F4C 00353EAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80356F50 00353EB0  D0 21 00 24 */	stfs f1, 0x24(r1)
lbl_80356F54:
/* 80356F54 00353EB4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80356F58 00353EB8  38 61 00 40 */	addi r3, r1, 0x40
/* 80356F5C 00353EBC  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80356F60 00353EC0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80356F64 00353EC4  EC 05 00 32 */	fmuls f0, f5, f0
/* 80356F68 00353EC8  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 80356F6C 00353ECC  C0 44 00 04 */	lfs f2, 4(r4)
/* 80356F70 00353ED0  C0 81 00 5C */	lfs f4, 0x5c(r1)
/* 80356F74 00353ED4  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80356F78 00353ED8  EC 65 00 B2 */	fmuls f3, f5, f2
/* 80356F7C 00353EDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80356F80 00353EE0  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80356F84 00353EE4  C0 24 00 08 */	lfs f1, 8(r4)
/* 80356F88 00353EE8  EC 64 18 2A */	fadds f3, f4, f3
/* 80356F8C 00353EEC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80356F90 00353EF0  EC 25 00 72 */	fmuls f1, f5, f1
/* 80356F94 00353EF4  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80356F98 00353EF8  EC 02 08 2A */	fadds f0, f2, f1
/* 80356F9C 00353EFC  D0 7E 00 04 */	stfs f3, 4(r30)
/* 80356FA0 00353F00  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80356FA4 00353F04  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80356FA8 00353F08  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80356FAC 00353F0C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80356FB0 00353F10  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 80356FB4 00353F14  EC 81 00 28 */	fsubs f4, f1, f0
/* 80356FB8 00353F18  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80356FBC 00353F1C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80356FC0 00353F20  EC 43 10 28 */	fsubs f2, f3, f2
/* 80356FC4 00353F24  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 80356FC8 00353F28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80356FCC 00353F2C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80356FD0 00353F30  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80356FD4 00353F34  4B FB D7 25 */	bl CanBeNormalized__9CVector3fCFv
/* 80356FD8 00353F38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80356FDC 00353F3C  41 82 00 18 */	beq lbl_80356FF4
/* 80356FE0 00353F40  38 61 00 10 */	addi r3, r1, 0x10
/* 80356FE4 00353F44  38 81 00 40 */	addi r4, r1, 0x40
/* 80356FE8 00353F48  4B FB D8 69 */	bl AsNormalized__9CVector3fCFv
/* 80356FEC 00353F4C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80356FF0 00353F50  48 00 00 08 */	b lbl_80356FF8
lbl_80356FF4:
/* 80356FF4 00353F54  38 C1 00 40 */	addi r6, r1, 0x40
lbl_80356FF8:
/* 80356FF8 00353F58  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80356FFC 00353F5C  7F A4 EB 78 */	mr r4, r29
/* 80357000 00353F60  38 A1 00 08 */	addi r5, r1, 8
/* 80357004 00353F64  C3 C6 00 00 */	lfs f30, 0(r6)
/* 80357008 00353F68  81 83 00 00 */	lwz r12, 0(r3)
/* 8035700C 00353F6C  C3 E6 00 04 */	lfs f31, 4(r6)
/* 80357010 00353F70  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80357014 00353F74  C3 A6 00 08 */	lfs f29, 8(r6)
/* 80357018 00353F78  7D 89 03 A6 */	mtctr r12
/* 8035701C 00353F7C  4E 80 04 21 */	bctrl 
/* 80357020 00353F80  C0 01 00 08 */	lfs f0, 8(r1)
/* 80357024 00353F84  38 60 00 00 */	li r3, 0
/* 80357028 00353F88  EC 40 07 B2 */	fmuls f2, f0, f30
/* 8035702C 00353F8C  EC 20 07 F2 */	fmuls f1, f0, f31
/* 80357030 00353F90  EC 00 07 72 */	fmuls f0, f0, f29
/* 80357034 00353F94  D0 5F 00 00 */	stfs f2, 0(r31)
/* 80357038 00353F98  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8035703C 00353F9C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80357040 00353FA0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, qr0
/* 80357044 00353FA4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80357048 00353FA8  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, qr0
/* 8035704C 00353FAC  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80357050 00353FB0  E3 A1 00 98 */	psq_l f29, 152(r1), 0, qr0
/* 80357054 00353FB4  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80357058 00353FB8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8035705C 00353FBC  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80357060 00353FC0  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 80357064 00353FC4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80357068 00353FC8  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8035706C 00353FCC  7C 08 03 A6 */	mtlr r0
/* 80357070 00353FD0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80357074 00353FD4  4E 80 00 20 */	blr 

.global __dt__9CVESphereFv
__dt__9CVESphereFv:
/* 80357078 00353FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035707C 00353FDC  7C 08 02 A6 */	mflr r0
/* 80357080 00353FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357084 00353FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357088 00353FE8  7C 9F 23 78 */	mr r31, r4
/* 8035708C 00353FEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80357090 00353FF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80357094 00353FF4  41 82 00 A8 */	beq lbl_8035713C
/* 80357098 00353FF8  3C 60 80 3F */	lis r3, lbl_803EF768@ha
/* 8035709C 00353FFC  38 03 F7 68 */	addi r0, r3, lbl_803EF768@l
/* 803570A0 00354000  90 1E 00 00 */	stw r0, 0(r30)
/* 803570A4 00354004  80 7E 00 04 */	lwz r3, 4(r30)
/* 803570A8 00354008  28 03 00 00 */	cmplwi r3, 0
/* 803570AC 0035400C  41 82 00 18 */	beq lbl_803570C4
/* 803570B0 00354010  81 83 00 00 */	lwz r12, 0(r3)
/* 803570B4 00354014  38 80 00 01 */	li r4, 1
/* 803570B8 00354018  81 8C 00 08 */	lwz r12, 8(r12)
/* 803570BC 0035401C  7D 89 03 A6 */	mtctr r12
/* 803570C0 00354020  4E 80 04 21 */	bctrl 
lbl_803570C4:
/* 803570C4 00354024  80 7E 00 08 */	lwz r3, 8(r30)
/* 803570C8 00354028  28 03 00 00 */	cmplwi r3, 0
/* 803570CC 0035402C  41 82 00 18 */	beq lbl_803570E4
/* 803570D0 00354030  81 83 00 00 */	lwz r12, 0(r3)
/* 803570D4 00354034  38 80 00 01 */	li r4, 1
/* 803570D8 00354038  81 8C 00 08 */	lwz r12, 8(r12)
/* 803570DC 0035403C  7D 89 03 A6 */	mtctr r12
/* 803570E0 00354040  4E 80 04 21 */	bctrl 
lbl_803570E4:
/* 803570E4 00354044  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 803570E8 00354048  28 03 00 00 */	cmplwi r3, 0
/* 803570EC 0035404C  41 82 00 18 */	beq lbl_80357104
/* 803570F0 00354050  81 83 00 00 */	lwz r12, 0(r3)
/* 803570F4 00354054  38 80 00 01 */	li r4, 1
/* 803570F8 00354058  81 8C 00 08 */	lwz r12, 8(r12)
/* 803570FC 0035405C  7D 89 03 A6 */	mtctr r12
/* 80357100 00354060  4E 80 04 21 */	bctrl 
lbl_80357104:
/* 80357104 00354064  28 1E 00 00 */	cmplwi r30, 0
/* 80357108 00354068  41 82 00 20 */	beq lbl_80357128
/* 8035710C 0035406C  3C 60 80 3F */	lis r3, lbl_803EF758@ha
/* 80357110 00354070  38 03 F7 58 */	addi r0, r3, lbl_803EF758@l
/* 80357114 00354074  90 1E 00 00 */	stw r0, 0(r30)
/* 80357118 00354078  41 82 00 10 */	beq lbl_80357128
/* 8035711C 0035407C  3C 60 80 3F */	lis r3, lbl_803EC5A8@ha
/* 80357120 00354080  38 03 C5 A8 */	addi r0, r3, lbl_803EC5A8@l
/* 80357124 00354084  90 1E 00 00 */	stw r0, 0(r30)
lbl_80357128:
/* 80357128 00354088  7F E0 07 35 */	extsh. r0, r31
/* 8035712C 0035408C  40 81 00 10 */	ble lbl_8035713C
/* 80357130 00354090  7F C3 F3 78 */	mr r3, r30
/* 80357134 00354094  38 80 00 10 */	li r4, 0x10
/* 80357138 00354098  48 01 59 2D */	bl sub_8036ca64
lbl_8035713C:
/* 8035713C 0035409C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80357140 003540A0  7F C3 F3 78 */	mr r3, r30
/* 80357144 003540A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80357148 003540A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035714C 003540AC  7C 08 03 A6 */	mtlr r0
/* 80357150 003540B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80357154 003540B4  4E 80 00 20 */	blr 

.global __ct__9CVESphereFP14CVectorElementP12CRealElementP12CRealElement
__ct__9CVESphereFP14CVectorElementP12CRealElementP12CRealElement:
/* 80357158 003540B8  3D 20 80 3F */	lis r9, lbl_803EC5A8@ha
/* 8035715C 003540BC  3D 00 80 3F */	lis r8, lbl_803EF758@ha
/* 80357160 003540C0  38 09 C5 A8 */	addi r0, r9, lbl_803EC5A8@l
/* 80357164 003540C4  3C E0 80 3F */	lis r7, lbl_803EF768@ha
/* 80357168 003540C8  90 03 00 00 */	stw r0, 0(r3)
/* 8035716C 003540CC  39 08 F7 58 */	addi r8, r8, lbl_803EF758@l
/* 80357170 003540D0  38 07 F7 68 */	addi r0, r7, lbl_803EF768@l
/* 80357174 003540D4  91 03 00 00 */	stw r8, 0(r3)
/* 80357178 003540D8  90 03 00 00 */	stw r0, 0(r3)
/* 8035717C 003540DC  90 83 00 04 */	stw r4, 4(r3)
/* 80357180 003540E0  90 A3 00 08 */	stw r5, 8(r3)
/* 80357184 003540E4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80357188 003540E8  4E 80 00 20 */	blr 

.global GetValue__16CEESimpleEmitterCFiR9CVector3fR9CVector3f
GetValue__16CEESimpleEmitterCFiR9CVector3fR9CVector3f:
/* 8035718C 003540EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80357190 003540F0  7C 08 02 A6 */	mflr r0
/* 80357194 003540F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80357198 003540F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035719C 003540FC  7C DF 33 78 */	mr r31, r6
/* 803571A0 00354100  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803571A4 00354104  7C 9E 23 78 */	mr r30, r4
/* 803571A8 00354108  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803571AC 0035410C  7C 7D 1B 78 */	mr r29, r3
/* 803571B0 00354110  80 63 00 04 */	lwz r3, 4(r3)
/* 803571B4 00354114  81 83 00 00 */	lwz r12, 0(r3)
/* 803571B8 00354118  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803571BC 0035411C  7D 89 03 A6 */	mtctr r12
/* 803571C0 00354120  4E 80 04 21 */	bctrl 
/* 803571C4 00354124  80 7D 00 08 */	lwz r3, 8(r29)
/* 803571C8 00354128  28 03 00 00 */	cmplwi r3, 0
/* 803571CC 0035412C  41 82 00 20 */	beq lbl_803571EC
/* 803571D0 00354130  81 83 00 00 */	lwz r12, 0(r3)
/* 803571D4 00354134  7F C4 F3 78 */	mr r4, r30
/* 803571D8 00354138  7F E5 FB 78 */	mr r5, r31
/* 803571DC 0035413C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803571E0 00354140  7D 89 03 A6 */	mtctr r12
/* 803571E4 00354144  4E 80 04 21 */	bctrl 
/* 803571E8 00354148  48 00 00 20 */	b lbl_80357208
lbl_803571EC:
/* 803571EC 0035414C  3C 60 80 5A */	lis r3, skZero3f@ha
/* 803571F0 00354150  C4 03 66 A0 */	lfsu f0, skZero3f@l(r3)
/* 803571F4 00354154  D0 1F 00 00 */	stfs f0, 0(r31)
/* 803571F8 00354158  C0 03 00 04 */	lfs f0, 4(r3)
/* 803571FC 0035415C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80357200 00354160  C0 03 00 08 */	lfs f0, 8(r3)
/* 80357204 00354164  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80357208:
/* 80357208 00354168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035720C 0035416C  38 60 00 00 */	li r3, 0
/* 80357210 00354170  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80357214 00354174  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80357218 00354178  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035721C 0035417C  7C 08 03 A6 */	mtlr r0
/* 80357220 00354180  38 21 00 20 */	addi r1, r1, 0x20
/* 80357224 00354184  4E 80 00 20 */	blr 

.global __dt__16CEESimpleEmitterFv
__dt__16CEESimpleEmitterFv:
/* 80357228 00354188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035722C 0035418C  7C 08 02 A6 */	mflr r0
/* 80357230 00354190  90 01 00 14 */	stw r0, 0x14(r1)
/* 80357234 00354194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80357238 00354198  7C 9F 23 78 */	mr r31, r4
/* 8035723C 0035419C  93 C1 00 08 */	stw r30, 8(r1)
/* 80357240 003541A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80357244 003541A4  41 82 00 88 */	beq lbl_803572CC
/* 80357248 003541A8  3C 60 80 3F */	lis r3, lbl_803EF778@ha
/* 8035724C 003541AC  38 03 F7 78 */	addi r0, r3, lbl_803EF778@l
/* 80357250 003541B0  90 1E 00 00 */	stw r0, 0(r30)
/* 80357254 003541B4  80 7E 00 04 */	lwz r3, 4(r30)
/* 80357258 003541B8  28 03 00 00 */	cmplwi r3, 0
/* 8035725C 003541BC  41 82 00 18 */	beq lbl_80357274
/* 80357260 003541C0  81 83 00 00 */	lwz r12, 0(r3)
/* 80357264 003541C4  38 80 00 01 */	li r4, 1
/* 80357268 003541C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8035726C 003541CC  7D 89 03 A6 */	mtctr r12
/* 80357270 003541D0  4E 80 04 21 */	bctrl 
lbl_80357274:
/* 80357274 003541D4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80357278 003541D8  28 03 00 00 */	cmplwi r3, 0
/* 8035727C 003541DC  41 82 00 18 */	beq lbl_80357294
/* 80357280 003541E0  81 83 00 00 */	lwz r12, 0(r3)
/* 80357284 003541E4  38 80 00 01 */	li r4, 1
/* 80357288 003541E8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8035728C 003541EC  7D 89 03 A6 */	mtctr r12
/* 80357290 003541F0  4E 80 04 21 */	bctrl 
lbl_80357294:
/* 80357294 003541F4  28 1E 00 00 */	cmplwi r30, 0
/* 80357298 003541F8  41 82 00 20 */	beq lbl_803572B8
/* 8035729C 003541FC  3C 60 80 3F */	lis r3, lbl_803EF758@ha
/* 803572A0 00354200  38 03 F7 58 */	addi r0, r3, lbl_803EF758@l
/* 803572A4 00354204  90 1E 00 00 */	stw r0, 0(r30)
/* 803572A8 00354208  41 82 00 10 */	beq lbl_803572B8
/* 803572AC 0035420C  3C 60 80 3F */	lis r3, lbl_803EC5A8@ha
/* 803572B0 00354210  38 03 C5 A8 */	addi r0, r3, lbl_803EC5A8@l
/* 803572B4 00354214  90 1E 00 00 */	stw r0, 0(r30)
lbl_803572B8:
/* 803572B8 00354218  7F E0 07 35 */	extsh. r0, r31
/* 803572BC 0035421C  40 81 00 10 */	ble lbl_803572CC
/* 803572C0 00354220  7F C3 F3 78 */	mr r3, r30
/* 803572C4 00354224  38 80 00 0C */	li r4, 0xc
/* 803572C8 00354228  48 01 57 9D */	bl sub_8036ca64
lbl_803572CC:
/* 803572CC 0035422C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803572D0 00354230  7F C3 F3 78 */	mr r3, r30
/* 803572D4 00354234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803572D8 00354238  83 C1 00 08 */	lwz r30, 8(r1)
/* 803572DC 0035423C  7C 08 03 A6 */	mtlr r0
/* 803572E0 00354240  38 21 00 10 */	addi r1, r1, 0x10
/* 803572E4 00354244  4E 80 00 20 */	blr 

.global __ct__16CEESimpleEmitterFP14CVectorElementP14CVectorElement
__ct__16CEESimpleEmitterFP14CVectorElementP14CVectorElement:
/* 803572E8 00354248  3D 00 80 3F */	lis r8, lbl_803EC5A8@ha
/* 803572EC 0035424C  3C E0 80 3F */	lis r7, lbl_803EF758@ha
/* 803572F0 00354250  38 08 C5 A8 */	addi r0, r8, lbl_803EC5A8@l
/* 803572F4 00354254  3C C0 80 3F */	lis r6, lbl_803EF778@ha
/* 803572F8 00354258  90 03 00 00 */	stw r0, 0(r3)
/* 803572FC 0035425C  38 E7 F7 58 */	addi r7, r7, lbl_803EF758@l
/* 80357300 00354260  38 06 F7 78 */	addi r0, r6, lbl_803EF778@l
/* 80357304 00354264  90 E3 00 00 */	stw r7, 0(r3)
/* 80357308 00354268  90 03 00 00 */	stw r0, 0(r3)
/* 8035730C 0035426C  90 83 00 04 */	stw r4, 4(r3)
/* 80357310 00354270  90 A3 00 08 */	stw r5, 8(r3)
/* 80357314 00354274  4E 80 00 20 */	blr 

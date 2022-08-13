.include "macros.inc"

.section .data
.balign 8

.global lbl_803DF498
lbl_803DF498:
	# ROM: 0x3DC498
	.4byte 0
	.4byte 0
	.4byte __dt__16CParticleGenInfoFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata2, "a"
.balign 8

.global lbl_805AAA30
lbl_805AAA30:
	# ROM: 0x3F72D0
	.float 0.0

.global lbl_805AAA34
lbl_805AAA34:
	# ROM: 0x3F72D4
	.float 0.016666668

.global lbl_805AAA38
lbl_805AAA38:
	# ROM: 0x3F72D8
	.double 4.503601774854144E15

.section .text, "ax"

.global __dt__16CParticleGenInfoFv
__dt__16CParticleGenInfoFv:
/* 800B7720 000B4680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7724 000B4684  7C 08 02 A6 */	mflr r0
/* 800B7728 000B4688  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B772C 000B468C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7730 000B4690  7C 9F 23 78 */	mr r31, r4
/* 800B7734 000B4694  93 C1 00 08 */	stw r30, 8(r1)
/* 800B7738 000B4698  7C 7E 1B 79 */	or. r30, r3, r3
/* 800B773C 000B469C  41 82 00 30 */	beq lbl_800B776C
/* 800B7740 000B46A0  3C 60 80 3E */	lis r3, lbl_803DF498@ha
/* 800B7744 000B46A4  34 1E 00 10 */	addic. r0, r30, 0x10
/* 800B7748 000B46A8  38 03 F4 98 */	addi r0, r3, lbl_803DF498@l
/* 800B774C 000B46AC  90 1E 00 00 */	stw r0, 0(r30)
/* 800B7750 000B46B0  41 82 00 0C */	beq lbl_800B775C
/* 800B7754 000B46B4  38 7E 00 10 */	addi r3, r30, 0x10
/* 800B7758 000B46B8  48 28 63 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B775C:
/* 800B775C 000B46BC  7F E0 07 35 */	extsh. r0, r31
/* 800B7760 000B46C0  40 81 00 0C */	ble lbl_800B776C
/* 800B7764 000B46C4  7F C3 F3 78 */	mr r3, r30
/* 800B7768 000B46C8  48 25 E1 C9 */	bl Free__7CMemoryFPCv
lbl_800B776C:
/* 800B776C 000B46CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7770 000B46D0  7F C3 F3 78 */	mr r3, r30
/* 800B7774 000B46D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7778 000B46D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B777C 000B46DC  7C 08 03 A6 */	mtlr r0
/* 800B7780 000B46E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7784 000B46E4  4E 80 00 20 */	blr

.global "_initializeLight__FRCQ24rstl24ncrc_ptr<12CParticleGen>R13CStateManageri"
"_initializeLight__FRCQ24rstl24ncrc_ptr<12CParticleGen>R13CStateManageri":
/* 800B7788 000B46E8  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 800B778C 000B46EC  7C 08 02 A6 */	mflr r0
/* 800B7790 000B46F0  90 01 01 04 */	stw r0, 0x104(r1)
/* 800B7794 000B46F4  BF 21 00 E4 */	stmw r25, 0xe4(r1)
/* 800B7798 000B46F8  7C 7C 1B 78 */	mr r28, r3
/* 800B779C 000B46FC  7C 99 23 78 */	mr r25, r4
/* 800B77A0 000B4700  7C BD 2B 78 */	mr r29, r5
/* 800B77A4 000B4704  7C DE 33 78 */	mr r30, r6
/* 800B77A8 000B4708  7C FF 3B 78 */	mr r31, r7
/* 800B77AC 000B470C  80 64 00 00 */	lwz r3, 0(r4)
/* 800B77B0 000B4710  80 63 00 00 */	lwz r3, 0(r3)
/* 800B77B4 000B4714  81 83 00 00 */	lwz r12, 0(r3)
/* 800B77B8 000B4718  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 800B77BC 000B471C  7D 89 03 A6 */	mtctr r12
/* 800B77C0 000B4720  4E 80 04 21 */	bctrl
/* 800B77C4 000B4724  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B77C8 000B4728  41 82 01 34 */	beq lbl_800B78FC
/* 800B77CC 000B472C  7F A4 EB 78 */	mr r4, r29
/* 800B77D0 000B4730  38 61 00 18 */	addi r3, r1, 0x18
/* 800B77D4 000B4734  4B F9 59 09 */	bl AllocateUniqueId__13CStateManagerFv
/* 800B77D8 000B4738  A0 01 00 18 */	lhz r0, 0x18(r1)
/* 800B77DC 000B473C  3C 60 80 3D */	lis r3, lbl_803CDE88@ha
/* 800B77E0 000B4740  38 83 DE 88 */	addi r4, r3, lbl_803CDE88@l
/* 800B77E4 000B4744  3B 60 00 00 */	li r27, 0
/* 800B77E8 000B4748  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 800B77EC 000B474C  38 60 01 48 */	li r3, 0x148
/* 800B77F0 000B4750  38 A0 00 00 */	li r5, 0
/* 800B77F4 000B4754  48 25 E0 79 */	bl __nw__FUlPCcPCc
/* 800B77F8 000B4758  7C 7A 1B 79 */	or. r26, r3, r3
/* 800B77FC 000B475C  41 82 00 D8 */	beq lbl_800B78D4
/* 800B7800 000B4760  80 B9 00 00 */	lwz r5, 0(r25)
/* 800B7804 000B4764  3C 60 80 3D */	lis r3, lbl_803CDE88@ha
/* 800B7808 000B4768  38 83 DE 88 */	addi r4, r3, lbl_803CDE88@l
/* 800B780C 000B476C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7810 000B4770  83 65 00 00 */	lwz r27, 0(r5)
/* 800B7814 000B4774  38 61 00 24 */	addi r3, r1, 0x24
/* 800B7818 000B4778  38 84 00 07 */	addi r4, r4, 7
/* 800B781C 000B477C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 800B7820 000B4780  83 25 00 00 */	lwz r25, 0(r5)
/* 800B7824 000B4784  4B F4 D4 95 */	bl string_l__4rstlFPCc
/* 800B7828 000B4788  80 BE 00 00 */	lwz r5, 0(r30)
/* 800B782C 000B478C  7F 64 DB 78 */	mr r4, r27
/* 800B7830 000B4790  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 800B7834 000B4794  38 61 00 88 */	addi r3, r1, 0x88
/* 800B7838 000B4798  90 A1 00 20 */	stw r5, 0x20(r1)
/* 800B783C 000B479C  3B 60 00 01 */	li r27, 1
/* 800B7840 000B47A0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 800B7844 000B47A4  81 84 00 00 */	lwz r12, 0(r4)
/* 800B7848 000B47A8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 800B784C 000B47AC  7D 89 03 A6 */	mtctr r12
/* 800B7850 000B47B0  4E 80 04 21 */	bctrl
/* 800B7854 000B47B4  7F 23 CB 78 */	mr r3, r25
/* 800B7858 000B47B8  81 99 00 00 */	lwz r12, 0(r25)
/* 800B785C 000B47BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 800B7860 000B47C0  7D 89 03 A6 */	mtctr r12
/* 800B7864 000B47C4  4E 80 04 21 */	bctrl
/* 800B7868 000B47C8  7C 7E 1B 78 */	mr r30, r3
/* 800B786C 000B47CC  7F 23 CB 78 */	mr r3, r25
/* 800B7870 000B47D0  81 99 00 00 */	lwz r12, 0(r25)
/* 800B7874 000B47D4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800B7878 000B47D8  7D 89 03 A6 */	mtctr r12
/* 800B787C 000B47DC  4E 80 04 21 */	bctrl
/* 800B7880 000B47E0  7C 64 1B 78 */	mr r4, r3
/* 800B7884 000B47E4  38 61 00 64 */	addi r3, r1, 0x64
/* 800B7888 000B47E8  48 25 B8 6D */	bl BuildMatrix3f__12CTransform4fCFv
/* 800B788C 000B47EC  7F C5 F3 78 */	mr r5, r30
/* 800B7890 000B47F0  38 61 00 34 */	addi r3, r1, 0x34
/* 800B7894 000B47F4  38 81 00 64 */	addi r4, r1, 0x64
/* 800B7898 000B47F8  48 25 B9 E1 */	bl __ct__12CTransform4fFRC9CMatrix3fRC9CVector3f
/* 800B789C 000B47FC  93 E1 00 08 */	stw r31, 8(r1)
/* 800B78A0 000B4800  38 00 00 00 */	li r0, 0
/* 800B78A4 000B4804  7C 68 1B 78 */	mr r8, r3
/* 800B78A8 000B4808  C0 22 8D 10 */	lfs f1, lbl_805AAA30@sda21(r2)
/* 800B78AC 000B480C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800B78B0 000B4810  7F 43 D3 78 */	mr r3, r26
/* 800B78B4 000B4814  38 81 00 10 */	addi r4, r1, 0x10
/* 800B78B8 000B4818  38 A1 00 20 */	addi r5, r1, 0x20
/* 800B78BC 000B481C  38 E1 00 24 */	addi r7, r1, 0x24
/* 800B78C0 000B4820  39 21 00 14 */	addi r9, r1, 0x14
/* 800B78C4 000B4824  39 41 00 88 */	addi r10, r1, 0x88
/* 800B78C8 000B4828  38 C0 00 00 */	li r6, 0
/* 800B78CC 000B482C  4B FF DF 59 */	bl "__ct__10CGameLightF9TUniqueIdbRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC12CTransform4f9TUniqueIdRC6CLightUiUif"
/* 800B78D0 000B4830  7C 7A 1B 78 */	mr r26, r3
lbl_800B78D4:
/* 800B78D4 000B4834  7F A3 EB 78 */	mr r3, r29
/* 800B78D8 000B4838  7F 44 D3 78 */	mr r4, r26
/* 800B78DC 000B483C  4B F9 54 19 */	bl AddObject__13CStateManagerFP7CEntityQ213CStateManager18EScriptPersistence
/* 800B78E0 000B4840  7F 60 07 75 */	extsb. r0, r27
/* 800B78E4 000B4844  41 82 00 0C */	beq lbl_800B78F0
/* 800B78E8 000B4848  38 61 00 24 */	addi r3, r1, 0x24
/* 800B78EC 000B484C  48 28 61 F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_800B78F0:
/* 800B78F0 000B4850  A0 01 00 1C */	lhz r0, 0x1c(r1)
/* 800B78F4 000B4854  B0 1C 00 00 */	sth r0, 0(r28)
/* 800B78F8 000B4858  48 00 00 0C */	b lbl_800B7904
lbl_800B78FC:
/* 800B78FC 000B485C  A0 0D A3 8C */	lhz r0, kInvalidUniqueId@sda21(r13)
/* 800B7900 000B4860  B0 1C 00 00 */	sth r0, 0(r28)
lbl_800B7904:
/* 800B7904 000B4864  BB 21 00 E4 */	lmw r25, 0xe4(r1)
/* 800B7908 000B4868  80 01 01 04 */	lwz r0, 0x104(r1)
/* 800B790C 000B486C  7C 08 03 A6 */	mtlr r0
/* 800B7910 000B4870  38 21 01 00 */	addi r1, r1, 0x100
/* 800B7914 000B4874  4E 80 00 20 */	blr

.global "__ct__16CParticleGenInfoFRC10SObjectTagiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC9CVector3fQ213CParticleData13EParentedModei"
"__ct__16CParticleGenInfoFRC10SObjectTagiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC9CVector3fQ213CParticleData13EParentedModei":
/* 800B7918 000B4878  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800B791C 000B487C  7C 08 02 A6 */	mflr r0
/* 800B7920 000B4880  3D 60 80 3E */	lis r11, lbl_803DF498@ha
/* 800B7924 000B4884  C8 22 8D 18 */	lfd f1, lbl_805AAA38@sda21(r2)
/* 800B7928 000B4888  90 01 00 34 */	stw r0, 0x34(r1)
/* 800B792C 000B488C  3C 00 43 30 */	lis r0, 0x4330
/* 800B7930 000B4890  39 6B F4 98 */	addi r11, r11, lbl_803DF498@l
/* 800B7934 000B4894  C0 42 8D 14 */	lfs f2, lbl_805AAA34@sda21(r2)
/* 800B7938 000B4898  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 800B793C 000B489C  7C 7B 1B 78 */	mr r27, r3
/* 800B7940 000B48A0  6C A3 80 00 */	xoris r3, r5, 0x8000
/* 800B7944 000B48A4  7C FC 3B 78 */	mr r28, r7
/* 800B7948 000B48A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 800B794C 000B48AC  7D 1D 43 78 */	mr r29, r8
/* 800B7950 000B48B0  7D 3E 4B 78 */	mr r30, r9
/* 800B7954 000B48B4  7D 5F 53 78 */	mr r31, r10
/* 800B7958 000B48B8  90 01 00 08 */	stw r0, 8(r1)
/* 800B795C 000B48BC  38 7B 00 10 */	addi r3, r27, 0x10
/* 800B7960 000B48C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 800B7964 000B48C4  91 7B 00 00 */	stw r11, 0(r27)
/* 800B7968 000B48C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 800B796C 000B48CC  80 A4 00 00 */	lwz r5, 0(r4)
/* 800B7970 000B48D0  90 BB 00 04 */	stw r5, 4(r27)
/* 800B7974 000B48D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B7978 000B48D8  80 04 00 04 */	lwz r0, 4(r4)
/* 800B797C 000B48DC  7C C4 33 78 */	mr r4, r6
/* 800B7980 000B48E0  90 1B 00 08 */	stw r0, 8(r27)
/* 800B7984 000B48E4  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 800B7988 000B48E8  48 28 67 D9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800B798C 000B48EC  C0 22 8D 10 */	lfs f1, lbl_805AAA30@sda21(r2)
/* 800B7990 000B48F0  3C 60 80 5A */	lis r3, sIdentity__12CTransform4f@ha
/* 800B7994 000B48F4  38 83 66 70 */	addi r4, r3, sIdentity__12CTransform4f@l
/* 800B7998 000B48F8  38 00 00 00 */	li r0, 0
/* 800B799C 000B48FC  D0 3B 00 20 */	stfs f1, 0x20(r27)
/* 800B79A0 000B4900  38 7B 00 44 */	addi r3, r27, 0x44
/* 800B79A4 000B4904  98 1B 00 24 */	stb r0, 0x24(r27)
/* 800B79A8 000B4908  93 BB 00 28 */	stw r29, 0x28(r27)
/* 800B79AC 000B490C  93 DB 00 2C */	stw r30, 0x2c(r27)
/* 800B79B0 000B4910  C0 1C 00 00 */	lfs f0, 0(r28)
/* 800B79B4 000B4914  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 800B79B8 000B4918  C0 1C 00 04 */	lfs f0, 4(r28)
/* 800B79BC 000B491C  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 800B79C0 000B4920  C0 1C 00 08 */	lfs f0, 8(r28)
/* 800B79C4 000B4924  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 800B79C8 000B4928  D0 3B 00 3C */	stfs f1, 0x3c(r27)
/* 800B79CC 000B492C  98 1B 00 40 */	stb r0, 0x40(r27)
/* 800B79D0 000B4930  48 25 B1 A5 */	bl __ct__12CTransform4fFRC12CTransform4f
/* 800B79D4 000B4934  C0 02 8D 10 */	lfs f0, lbl_805AAA30@sda21(r2)
/* 800B79D8 000B4938  7F 63 DB 78 */	mr r3, r27
/* 800B79DC 000B493C  D0 1B 00 74 */	stfs f0, 0x74(r27)
/* 800B79E0 000B4940  D0 1B 00 78 */	stfs f0, 0x78(r27)
/* 800B79E4 000B4944  D0 1B 00 7C */	stfs f0, 0x7c(r27)
/* 800B79E8 000B4948  93 FB 00 80 */	stw r31, 0x80(r27)
/* 800B79EC 000B494C  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800B79F0 000B4950  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800B79F4 000B4954  7C 08 03 A6 */	mtlr r0
/* 800B79F8 000B4958  38 21 00 30 */	addi r1, r1, 0x30
/* 800B79FC 000B495C  4E 80 00 20 */	blr

.global sub_800b7a00
sub_800b7a00:
/* 800B7A00 000B4960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7A04 000B4964  7C 08 02 A6 */	mflr r0
/* 800B7A08 000B4968  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B7A0C 000B496C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B7A10 000B4970  7C 7F 1B 78 */	mr r31, r3
/* 800B7A14 000B4974  80 83 00 00 */	lwz r4, 0(r3)
/* 800B7A18 000B4978  80 64 00 04 */	lwz r3, 4(r4)
/* 800B7A1C 000B497C  34 03 FF FF */	addic. r0, r3, -1
/* 800B7A20 000B4980  90 04 00 04 */	stw r0, 4(r4)
/* 800B7A24 000B4984  41 81 00 38 */	bgt lbl_800B7A5C
/* 800B7A28 000B4988  80 7F 00 00 */	lwz r3, 0(r31)
/* 800B7A2C 000B498C  80 63 00 00 */	lwz r3, 0(r3)
/* 800B7A30 000B4990  28 03 00 00 */	cmplwi r3, 0
/* 800B7A34 000B4994  41 82 00 18 */	beq lbl_800B7A4C
/* 800B7A38 000B4998  81 83 00 00 */	lwz r12, 0(r3)
/* 800B7A3C 000B499C  38 80 00 01 */	li r4, 1
/* 800B7A40 000B49A0  81 8C 00 08 */	lwz r12, 8(r12)
/* 800B7A44 000B49A4  7D 89 03 A6 */	mtctr r12
/* 800B7A48 000B49A8  4E 80 04 21 */	bctrl
lbl_800B7A4C:
/* 800B7A4C 000B49AC  80 7F 00 00 */	lwz r3, 0(r31)
/* 800B7A50 000B49B0  28 03 00 00 */	cmplwi r3, 0
/* 800B7A54 000B49B4  41 82 00 08 */	beq lbl_800B7A5C
/* 800B7A58 000B49B8  48 25 DE D9 */	bl Free__7CMemoryFPCv
lbl_800B7A5C:
/* 800B7A5C 000B49BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7A60 000B49C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7A64 000B49C4  7C 08 03 A6 */	mtlr r0
/* 800B7A68 000B49C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7A6C 000B49CC  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803CDE88
lbl_803CDE88:
	# ROM: 0x3CAE88
	.asciz "??(??)"
	.byte 0x50
	.asciz "articleLight"
	.balign 4


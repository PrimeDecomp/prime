.include "macros.inc"

.section .data

.global lbl_803DFCA0
lbl_803DFCA0:
	# ROM: 0x3DCCA0
	.4byte 0
	.4byte 0
	.4byte __dt__25CScriptCameraBlurKeyframeFv
	.4byte Accept__25CScriptCameraBlurKeyframeFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__25CScriptCameraBlurKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFb

.section .text, "ax"

.global Accept__25CScriptCameraBlurKeyframeFR8IVisitor
Accept__25CScriptCameraBlurKeyframeFR8IVisitor:
/* 800EA758 000E76B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA75C 000E76BC  7C 08 02 A6 */	mflr r0
/* 800EA760 000E76C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA764 000E76C4  7C 60 1B 78 */	mr r0, r3
/* 800EA768 000E76C8  7C 83 23 78 */	mr r3, r4
/* 800EA76C 000E76CC  81 84 00 00 */	lwz r12, 0(r4)
/* 800EA770 000E76D0  7C 04 03 78 */	mr r4, r0
/* 800EA774 000E76D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 800EA778 000E76D8  7D 89 03 A6 */	mtctr r12
/* 800EA77C 000E76DC  4E 80 04 21 */	bctrl
/* 800EA780 000E76E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA784 000E76E4  7C 08 03 A6 */	mtlr r0
/* 800EA788 000E76E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA78C 000E76EC  4E 80 00 20 */	blr

.global AcceptScriptMsg__25CScriptCameraBlurKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__25CScriptCameraBlurKeyframeF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 800EA790 000E76F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EA794 000E76F4  7C 08 02 A6 */	mflr r0
/* 800EA798 000E76F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800EA79C 000E76FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EA7A0 000E7700  7C DF 33 78 */	mr r31, r6
/* 800EA7A4 000E7704  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EA7A8 000E7708  7C 9E 23 78 */	mr r30, r4
/* 800EA7AC 000E770C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EA7B0 000E7710  7C 7D 1B 78 */	mr r29, r3
/* 800EA7B4 000E7714  A0 05 00 00 */	lhz r0, 0(r5)
/* 800EA7B8 000E7718  38 A1 00 08 */	addi r5, r1, 8
/* 800EA7BC 000E771C  B0 01 00 08 */	sth r0, 8(r1)
/* 800EA7C0 000E7720  4B F6 69 9D */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 800EA7C4 000E7724  2C 1E 00 06 */	cmpwi r30, 6
/* 800EA7C8 000E7728  41 82 00 5C */	beq lbl_800EA824
/* 800EA7CC 000E772C  40 80 00 10 */	bge lbl_800EA7DC
/* 800EA7D0 000E7730  2C 1E 00 05 */	cmpwi r30, 5
/* 800EA7D4 000E7734  40 80 00 38 */	bge lbl_800EA80C
/* 800EA7D8 000E7738  48 00 00 4C */	b lbl_800EA824
lbl_800EA7DC:
/* 800EA7DC 000E773C  2C 1E 00 08 */	cmpwi r30, 8
/* 800EA7E0 000E7740  40 80 00 44 */	bge lbl_800EA824
/* 800EA7E4 000E7744  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 800EA7E8 000E7748  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800EA7EC 000E774C  41 82 00 38 */	beq lbl_800EA824
/* 800EA7F0 000E7750  80 9D 00 34 */	lwz r4, 0x34(r29)
/* 800EA7F4 000E7754  38 7F 0D B4 */	addi r3, r31, 0xdb4
/* 800EA7F8 000E7758  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 800EA7FC 000E775C  38 A0 00 00 */	li r5, 0
/* 800EA800 000E7760  C0 5D 00 40 */	lfs f2, 0x40(r29)
/* 800EA804 000E7764  48 00 11 A1 */	bl SetBlur__15CCameraBlurPassFQ215CCameraBlurPass9EBlurTypeffb
/* 800EA808 000E7768  48 00 00 1C */	b lbl_800EA824
lbl_800EA80C:
/* 800EA80C 000E776C  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 800EA810 000E7770  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 800EA814 000E7774  41 82 00 10 */	beq lbl_800EA824
/* 800EA818 000E7778  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 800EA81C 000E777C  38 7F 0D B4 */	addi r3, r31, 0xdb4
/* 800EA820 000E7780  48 00 11 55 */	bl DisableBlur__15CCameraBlurPassFf
lbl_800EA824:
/* 800EA824 000E7784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EA828 000E7788  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EA82C 000E778C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EA830 000E7790  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EA834 000E7794  7C 08 03 A6 */	mtlr r0
/* 800EA838 000E7798  38 21 00 20 */	addi r1, r1, 0x20
/* 800EA83C 000E779C  4E 80 00 20 */	blr

.global __dt__25CScriptCameraBlurKeyframeFv
__dt__25CScriptCameraBlurKeyframeFv:
/* 800EA840 000E77A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EA844 000E77A4  7C 08 02 A6 */	mflr r0
/* 800EA848 000E77A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EA84C 000E77AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EA850 000E77B0  7C 9F 23 78 */	mr r31, r4
/* 800EA854 000E77B4  93 C1 00 08 */	stw r30, 8(r1)
/* 800EA858 000E77B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 800EA85C 000E77BC  41 82 00 28 */	beq lbl_800EA884
/* 800EA860 000E77C0  3C A0 80 3E */	lis r5, lbl_803DFCA0@ha
/* 800EA864 000E77C4  38 80 00 00 */	li r4, 0
/* 800EA868 000E77C8  38 05 FC A0 */	addi r0, r5, lbl_803DFCA0@l
/* 800EA86C 000E77CC  90 1E 00 00 */	stw r0, 0(r30)
/* 800EA870 000E77D0  4B F6 6A 05 */	bl __dt__7CEntityFv
/* 800EA874 000E77D4  7F E0 07 35 */	extsh. r0, r31
/* 800EA878 000E77D8  40 81 00 0C */	ble lbl_800EA884
/* 800EA87C 000E77DC  7F C3 F3 78 */	mr r3, r30
/* 800EA880 000E77E0  48 22 B0 B1 */	bl Free__7CMemoryFPCv
lbl_800EA884:
/* 800EA884 000E77E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EA888 000E77E8  7F C3 F3 78 */	mr r3, r30
/* 800EA88C 000E77EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EA890 000E77F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EA894 000E77F4  7C 08 03 A6 */	mtlr r0
/* 800EA898 000E77F8  38 21 00 10 */	addi r1, r1, 0x10
/* 800EA89C 000E77FC  4E 80 00 20 */	blr

.global "__ct__25CScriptCameraBlurKeyframeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoUifUiffb"
"__ct__25CScriptCameraBlurKeyframeF9TUniqueIdRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RC11CEntityInfoUifUiffb":
/* 800EA8A0 000E7800  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EA8A4 000E7804  7C 08 02 A6 */	mflr r0
/* 800EA8A8 000E7808  90 01 00 44 */	stw r0, 0x44(r1)
/* 800EA8AC 000E780C  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 800EA8B0 000E7810  FF E0 18 90 */	fmr f31, f3
/* 800EA8B4 000E7814  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 800EA8B8 000E7818  FF C0 10 90 */	fmr f30, f2
/* 800EA8BC 000E781C  DB A1 00 28 */	stfd f29, 0x28(r1)
/* 800EA8C0 000E7820  FF A0 08 90 */	fmr f29, f1
/* 800EA8C4 000E7824  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800EA8C8 000E7828  7D 1F 43 78 */	mr r31, r8
/* 800EA8CC 000E782C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800EA8D0 000E7830  7C FE 3B 78 */	mr r30, r7
/* 800EA8D4 000E7834  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800EA8D8 000E7838  7C 7D 1B 78 */	mr r29, r3
/* 800EA8DC 000E783C  A0 04 00 00 */	lhz r0, 0(r4)
/* 800EA8E0 000E7840  7C A4 2B 78 */	mr r4, r5
/* 800EA8E4 000E7844  7C C5 33 78 */	mr r5, r6
/* 800EA8E8 000E7848  7D 26 4B 78 */	mr r6, r9
/* 800EA8EC 000E784C  B0 01 00 08 */	sth r0, 8(r1)
/* 800EA8F0 000E7850  7C 87 23 78 */	mr r7, r4
/* 800EA8F4 000E7854  38 81 00 08 */	addi r4, r1, 8
/* 800EA8F8 000E7858  4B F6 6A 2D */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 800EA8FC 000E785C  3C 80 80 3E */	lis r4, lbl_803DFCA0@ha
/* 800EA900 000E7860  7F A3 EB 78 */	mr r3, r29
/* 800EA904 000E7864  38 04 FC A0 */	addi r0, r4, lbl_803DFCA0@l
/* 800EA908 000E7868  90 1D 00 00 */	stw r0, 0(r29)
/* 800EA90C 000E786C  93 DD 00 34 */	stw r30, 0x34(r29)
/* 800EA910 000E7870  D3 BD 00 38 */	stfs f29, 0x38(r29)
/* 800EA914 000E7874  93 FD 00 3C */	stw r31, 0x3c(r29)
/* 800EA918 000E7878  D3 DD 00 40 */	stfs f30, 0x40(r29)
/* 800EA91C 000E787C  D3 FD 00 44 */	stfs f31, 0x44(r29)
/* 800EA920 000E7880  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 800EA924 000E7884  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 800EA928 000E7888  CB A1 00 28 */	lfd f29, 0x28(r1)
/* 800EA92C 000E788C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800EA930 000E7890  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800EA934 000E7894  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800EA938 000E7898  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EA93C 000E789C  7C 08 03 A6 */	mtlr r0
/* 800EA940 000E78A0  38 21 00 40 */	addi r1, r1, 0x40
/* 800EA944 000E78A4  4E 80 00 20 */	blr

.include "macros.inc"

.section .sdata
.balign 8

.global lbl_805A7CD8
lbl_805A7CD8:
	# ROM: 0x3F5678
	.4byte 0

.global lbl_805A7CDC
lbl_805A7CDC:
	# ROM: 0x3F567C
	.float 1.0

.global lbl_805A7CE0
lbl_805A7CE0:
	# ROM: 0x3F5680
	.float 1.0
	.4byte 0

.section .text, "ax"

.global Update__19CStaticInterferenceFR13CStateManagerf
Update__19CStaticInterferenceFR13CStateManagerf:
/* 801C07A8 001BD708  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801C07AC 001BD70C  7C 08 02 A6 */	mflr r0
/* 801C07B0 001BD710  90 01 00 64 */	stw r0, 0x64(r1)
/* 801C07B4 001BD714  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801C07B8 001BD718  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801C07BC 001BD71C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 801C07C0 001BD720  F3 C1 00 48 */	psq_st f30, 72(r1), 0, qr0
/* 801C07C4 001BD724  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 801C07C8 001BD728  93 C1 00 38 */	stw r30, 0x38(r1)
/* 801C07CC 001BD72C  7C 7F 1B 78 */	mr r31, r3
/* 801C07D0 001BD730  38 00 00 00 */	li r0, 0
/* 801C07D4 001BD734  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 801C07D8 001BD738  FF C0 08 90 */	fmr f30, f1
/* 801C07DC 001BD73C  38 61 00 20 */	addi r3, r1, 0x20
/* 801C07E0 001BD740  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C07E4 001BD744  90 01 00 28 */	stw r0, 0x28(r1)
/* 801C07E8 001BD748  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801C07EC 001BD74C  80 9F 00 04 */	lwz r4, 4(r31)
/* 801C07F0 001BD750  48 00 04 9D */	bl "reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi"
/* 801C07F4 001BD754  C3 E2 AA 78 */	lfs f31, lbl_805AC798@sda21(r2)
/* 801C07F8 001BD758  48 00 00 80 */	b lbl_801C0878
lbl_801C07FC:
/* 801C07FC 001BD75C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801C0800 001BD760  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801C0804 001BD764  40 80 00 68 */	bge lbl_801C086C
/* 801C0808 001BD768  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C080C 001BD76C  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 801C0810 001BD770  7C 00 28 00 */	cmpw r0, r5
/* 801C0814 001BD774  41 80 00 1C */	blt lbl_801C0830
/* 801C0818 001BD778  2C 05 00 00 */	cmpwi r5, 0
/* 801C081C 001BD77C  38 61 00 20 */	addi r3, r1, 0x20
/* 801C0820 001BD780  38 80 00 04 */	li r4, 4
/* 801C0824 001BD784  41 82 00 08 */	beq lbl_801C082C
/* 801C0828 001BD788  54 A4 08 3C */	slwi r4, r5, 1
lbl_801C082C:
/* 801C082C 001BD78C  48 00 04 61 */	bl "reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi"
lbl_801C0830:
/* 801C0830 001BD790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0834 001BD794  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801C0838 001BD798  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C083C 001BD79C  7C 63 02 15 */	add. r3, r3, r0
/* 801C0840 001BD7A0  41 82 00 1C */	beq lbl_801C085C
/* 801C0844 001BD7A4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C0848 001BD7A8  B0 03 00 00 */	sth r0, 0(r3)
/* 801C084C 001BD7AC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801C0850 001BD7B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801C0854 001BD7B4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 801C0858 001BD7B8  D0 03 00 08 */	stfs f0, 8(r3)
lbl_801C085C:
/* 801C085C 001BD7BC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 801C0860 001BD7C0  38 03 00 01 */	addi r0, r3, 1
/* 801C0864 001BD7C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0868 001BD7C8  48 00 00 0C */	b lbl_801C0874
lbl_801C086C:
/* 801C086C 001BD7CC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801C0870 001BD7D0  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_801C0874:
/* 801C0874 001BD7D4  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801C0878:
/* 801C0878 001BD7D8  80 1F 00 04 */	lwz r0, 4(r31)
/* 801C087C 001BD7DC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801C0880 001BD7E0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0884 001BD7E4  7C 03 02 14 */	add r0, r3, r0
/* 801C0888 001BD7E8  7C 1E 00 40 */	cmplw r30, r0
/* 801C088C 001BD7EC  40 82 FF 70 */	bne lbl_801C07FC
/* 801C0890 001BD7F0  83 C1 00 2C */	lwz r30, 0x2c(r1)
/* 801C0894 001BD7F4  48 00 00 20 */	b lbl_801C08B4
lbl_801C0898:
/* 801C0898 001BD7F8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C089C 001BD7FC  7F E3 FB 78 */	mr r3, r31
/* 801C08A0 001BD800  38 81 00 0C */	addi r4, r1, 0xc
/* 801C08A4 001BD804  B0 01 00 08 */	sth r0, 8(r1)
/* 801C08A8 001BD808  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C08AC 001BD80C  48 00 01 09 */	bl RemoveSource__19CStaticInterferenceF9TUniqueId
/* 801C08B0 001BD810  3B DE 00 0C */	addi r30, r30, 0xc
lbl_801C08B4:
/* 801C08B4 001BD814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C08B8 001BD818  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 801C08BC 001BD81C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C08C0 001BD820  7C 03 02 14 */	add r0, r3, r0
/* 801C08C4 001BD824  7C 1E 00 40 */	cmplw r30, r0
/* 801C08C8 001BD828  40 82 FF D0 */	bne lbl_801C0898
/* 801C08CC 001BD82C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C08D0 001BD830  7C 64 1B 78 */	mr r4, r3
/* 801C08D4 001BD834  90 01 00 18 */	stw r0, 0x18(r1)
/* 801C08D8 001BD838  90 61 00 14 */	stw r3, 0x14(r1)
/* 801C08DC 001BD83C  90 61 00 10 */	stw r3, 0x10(r1)
/* 801C08E0 001BD840  48 00 00 08 */	b lbl_801C08E8
lbl_801C08E4:
/* 801C08E4 001BD844  38 84 00 0C */	addi r4, r4, 0xc
lbl_801C08E8:
/* 801C08E8 001BD848  7C 04 00 40 */	cmplw r4, r0
/* 801C08EC 001BD84C  40 82 FF F8 */	bne lbl_801C08E4
/* 801C08F0 001BD850  28 03 00 00 */	cmplwi r3, 0
/* 801C08F4 001BD854  41 82 00 08 */	beq lbl_801C08FC
/* 801C08F8 001BD858  48 15 50 39 */	bl Free__7CMemoryFPCv
lbl_801C08FC:
/* 801C08FC 001BD85C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 801C0900 001BD860  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 801C0904 001BD864  E3 C1 00 48 */	psq_l f30, 72(r1), 0, qr0
/* 801C0908 001BD868  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 801C090C 001BD86C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 801C0910 001BD870  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801C0914 001BD874  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 801C0918 001BD878  7C 08 03 A6 */	mtlr r0
/* 801C091C 001BD87C  38 21 00 60 */	addi r1, r1, 0x60
/* 801C0920 001BD880  4E 80 00 20 */	blr

.global GetTotalInterference__19CStaticInterferenceCFv
GetTotalInterference__19CStaticInterferenceCFv:
/* 801C0924 001BD884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0928 001BD888  C0 22 AA 78 */	lfs f1, lbl_805AC798@sda21(r2)
/* 801C092C 001BD88C  80 03 00 04 */	lwz r0, 4(r3)
/* 801C0930 001BD890  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 801C0934 001BD894  FC 40 08 90 */	fmr f2, f1
/* 801C0938 001BD898  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C093C 001BD89C  A0 6D A3 8C */	lhz r3, kInvalidUniqueId@sda21(r13)
/* 801C0940 001BD8A0  7C 85 02 14 */	add r4, r5, r0
/* 801C0944 001BD8A4  48 00 00 2C */	b lbl_801C0970
lbl_801C0948:
/* 801C0948 001BD8A8  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C094C 001BD8AC  C0 05 00 04 */	lfs f0, 4(r5)
/* 801C0950 001BD8B0  7C 00 18 40 */	cmplw r0, r3
/* 801C0954 001BD8B4  40 82 00 08 */	bne lbl_801C095C
/* 801C0958 001BD8B8  EC 42 00 2A */	fadds f2, f2, f0
lbl_801C095C:
/* 801C095C 001BD8BC  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C0960 001BD8C0  7C 00 18 40 */	cmplw r0, r3
/* 801C0964 001BD8C4  41 82 00 08 */	beq lbl_801C096C
/* 801C0968 001BD8C8  EC 21 00 2A */	fadds f1, f1, f0
lbl_801C096C:
/* 801C096C 001BD8CC  38 A5 00 0C */	addi r5, r5, 0xc
lbl_801C0970:
/* 801C0970 001BD8D0  7C 05 20 40 */	cmplw r5, r4
/* 801C0974 001BD8D4  40 82 FF D4 */	bne lbl_801C0948
/* 801C0978 001BD8D8  C0 02 AA 7C */	lfs f0, lbl_805AC79C@sda21(r2)
/* 801C097C 001BD8DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801C0980 001BD8E0  40 81 00 08 */	ble lbl_801C0988
/* 801C0984 001BD8E4  FC 20 00 90 */	fmr f1, f0
lbl_801C0988:
/* 801C0988 001BD8E8  EC 21 10 2A */	fadds f1, f1, f2
/* 801C098C 001BD8EC  C0 0D 91 20 */	lfs f0, lbl_805A7CE0@sda21(r13)
/* 801C0990 001BD8F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C0994 001BD8F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801C0998 001BD8F8  40 80 00 0C */	bge lbl_801C09A4
/* 801C099C 001BD8FC  38 6D 91 20 */	addi r3, r13, lbl_805A7CE0@sda21
/* 801C09A0 001BD900  48 00 00 08 */	b lbl_801C09A8
lbl_801C09A4:
/* 801C09A4 001BD904  38 61 00 08 */	addi r3, r1, 8
lbl_801C09A8:
/* 801C09A8 001BD908  C0 23 00 00 */	lfs f1, 0(r3)
/* 801C09AC 001BD90C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C09B0 001BD910  4E 80 00 20 */	blr

.global RemoveSource__19CStaticInterferenceF9TUniqueId
RemoveSource__19CStaticInterferenceF9TUniqueId:
/* 801C09B4 001BD914  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C09B8 001BD918  7C 08 02 A6 */	mflr r0
/* 801C09BC 001BD91C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C09C0 001BD920  80 03 00 04 */	lwz r0, 4(r3)
/* 801C09C4 001BD924  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 801C09C8 001BD928  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C09CC 001BD92C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801C09D0 001BD930  7C C5 02 14 */	add r6, r5, r0
/* 801C09D4 001BD934  48 00 00 24 */	b lbl_801C09F8
lbl_801C09D8:
/* 801C09D8 001BD938  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801C09DC 001BD93C  A0 04 00 00 */	lhz r0, 0(r4)
/* 801C09E0 001BD940  A0 A5 00 00 */	lhz r5, 0(r5)
/* 801C09E4 001BD944  7C 05 00 40 */	cmplw r5, r0
/* 801C09E8 001BD948  41 82 00 1C */	beq lbl_801C0A04
/* 801C09EC 001BD94C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801C09F0 001BD950  38 05 00 0C */	addi r0, r5, 0xc
/* 801C09F4 001BD954  90 01 00 10 */	stw r0, 0x10(r1)
lbl_801C09F8:
/* 801C09F8 001BD958  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C09FC 001BD95C  7C 00 30 40 */	cmplw r0, r6
/* 801C0A00 001BD960  40 82 FF D8 */	bne lbl_801C09D8
lbl_801C0A04:
/* 801C0A04 001BD964  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C0A08 001BD968  7C 00 30 40 */	cmplw r0, r6
/* 801C0A0C 001BD96C  41 82 00 1C */	beq lbl_801C0A28
/* 801C0A10 001BD970  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C0A14 001BD974  7C 64 1B 78 */	mr r4, r3
/* 801C0A18 001BD978  38 61 00 0C */	addi r3, r1, 0xc
/* 801C0A1C 001BD97C  38 A1 00 08 */	addi r5, r1, 8
/* 801C0A20 001BD980  90 01 00 08 */	stw r0, 8(r1)
/* 801C0A24 001BD984  48 00 00 15 */	bl "erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
lbl_801C0A28:
/* 801C0A28 001BD988  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0A2C 001BD98C  7C 08 03 A6 */	mtlr r0
/* 801C0A30 001BD990  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0A34 001BD994  4E 80 00 20 */	blr

.global "erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 801C0A38 001BD998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0A3C 001BD99C  7C 08 02 A6 */	mflr r0
/* 801C0A40 001BD9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0A44 001BD9A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C0A48 001BD9A8  7C 7F 1B 78 */	mr r31, r3
/* 801C0A4C 001BD9AC  80 C5 00 00 */	lwz r6, 0(r5)
/* 801C0A50 001BD9B0  80 05 00 00 */	lwz r0, 0(r5)
/* 801C0A54 001BD9B4  38 A1 00 10 */	addi r5, r1, 0x10
/* 801C0A58 001BD9B8  38 E6 00 0C */	addi r7, r6, 0xc
/* 801C0A5C 001BD9BC  38 C1 00 0C */	addi r6, r1, 0xc
/* 801C0A60 001BD9C0  90 E1 00 08 */	stw r7, 8(r1)
/* 801C0A64 001BD9C4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801C0A68 001BD9C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C0A6C 001BD9CC  48 00 00 19 */	bl "erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 801C0A70 001BD9D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0A74 001BD9D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C0A78 001BD9D8  7C 08 03 A6 */	mtlr r0
/* 801C0A7C 001BD9DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0A80 001BD9E0  4E 80 00 20 */	blr

.global "erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"erase__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>FQ24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl144pointer_iterator<25CStaticInterferenceSource,Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 801C0A84 001BD9E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0A88 001BD9E8  80 E5 00 00 */	lwz r7, 0(r5)
/* 801C0A8C 001BD9EC  80 06 00 00 */	lwz r0, 0(r6)
/* 801C0A90 001BD9F0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801C0A94 001BD9F4  90 01 00 08 */	stw r0, 8(r1)
/* 801C0A98 001BD9F8  48 00 00 08 */	b lbl_801C0AA0
lbl_801C0A9C:
/* 801C0A9C 001BD9FC  38 E7 00 0C */	addi r7, r7, 0xc
lbl_801C0AA0:
/* 801C0AA0 001BDA00  7C 07 00 40 */	cmplw r7, r0
/* 801C0AA4 001BDA04  40 82 FF F8 */	bne lbl_801C0A9C
/* 801C0AA8 001BDA08  81 24 00 0C */	lwz r9, 0xc(r4)
/* 801C0AAC 001BDA0C  3C E0 2A AB */	lis r7, 0x2AAAAAAB@ha
/* 801C0AB0 001BDA10  80 05 00 00 */	lwz r0, 0(r5)
/* 801C0AB4 001BDA14  38 E7 AA AB */	addi r7, r7, 0x2AAAAAAB@l
/* 801C0AB8 001BDA18  81 06 00 00 */	lwz r8, 0(r6)
/* 801C0ABC 001BDA1C  7C 09 00 50 */	subf r0, r9, r0
/* 801C0AC0 001BDA20  7C 07 00 96 */	mulhw r0, r7, r0
/* 801C0AC4 001BDA24  7C 00 0E 70 */	srawi r0, r0, 1
/* 801C0AC8 001BDA28  54 06 0F FE */	srwi r6, r0, 0x1f
/* 801C0ACC 001BDA2C  7C C0 32 14 */	add r6, r0, r6
/* 801C0AD0 001BDA30  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801C0AD4 001BDA34  7C CA 33 78 */	mr r10, r6
/* 801C0AD8 001BDA38  7C E9 02 14 */	add r7, r9, r0
/* 801C0ADC 001BDA3C  48 00 00 30 */	b lbl_801C0B0C
lbl_801C0AE0:
/* 801C0AE0 001BDA40  28 07 00 00 */	cmplwi r7, 0
/* 801C0AE4 001BDA44  41 82 00 1C */	beq lbl_801C0B00
/* 801C0AE8 001BDA48  A0 08 00 00 */	lhz r0, 0(r8)
/* 801C0AEC 001BDA4C  B0 07 00 00 */	sth r0, 0(r7)
/* 801C0AF0 001BDA50  C0 08 00 04 */	lfs f0, 4(r8)
/* 801C0AF4 001BDA54  D0 07 00 04 */	stfs f0, 4(r7)
/* 801C0AF8 001BDA58  C0 08 00 08 */	lfs f0, 8(r8)
/* 801C0AFC 001BDA5C  D0 07 00 08 */	stfs f0, 8(r7)
lbl_801C0B00:
/* 801C0B00 001BDA60  38 E7 00 0C */	addi r7, r7, 0xc
/* 801C0B04 001BDA64  39 4A 00 01 */	addi r10, r10, 1
/* 801C0B08 001BDA68  39 08 00 0C */	addi r8, r8, 0xc
lbl_801C0B0C:
/* 801C0B0C 001BDA6C  80 04 00 04 */	lwz r0, 4(r4)
/* 801C0B10 001BDA70  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 801C0B14 001BDA74  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0B18 001BDA78  7C 06 02 14 */	add r0, r6, r0
/* 801C0B1C 001BDA7C  7C 08 00 40 */	cmplw r8, r0
/* 801C0B20 001BDA80  40 82 FF C0 */	bne lbl_801C0AE0
/* 801C0B24 001BDA84  91 44 00 04 */	stw r10, 4(r4)
/* 801C0B28 001BDA88  80 05 00 00 */	lwz r0, 0(r5)
/* 801C0B2C 001BDA8C  90 03 00 00 */	stw r0, 0(r3)
/* 801C0B30 001BDA90  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0B34 001BDA94  4E 80 00 20 */	blr

.global AddSource__19CStaticInterferenceF9TUniqueIdff
AddSource__19CStaticInterferenceF9TUniqueIdff:
/* 801C0B38 001BDA98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801C0B3C 001BDA9C  7C 08 02 A6 */	mflr r0
/* 801C0B40 001BDAA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801C0B44 001BDAA4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801C0B48 001BDAA8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801C0B4C 001BDAAC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801C0B50 001BDAB0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, qr0
/* 801C0B54 001BDAB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C0B58 001BDAB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C0B5C 001BDABC  FF C0 10 90 */	fmr f30, f2
/* 801C0B60 001BDAC0  7C 7F 1B 78 */	mr r31, r3
/* 801C0B64 001BDAC4  D0 21 00 08 */	stfs f1, 8(r1)
/* 801C0B68 001BDAC8  7C 9E 23 78 */	mr r30, r4
/* 801C0B6C 001BDACC  38 81 00 08 */	addi r4, r1, 8
/* 801C0B70 001BDAD0  38 6D 91 18 */	addi r3, r13, lbl_805A7CD8@sda21
/* 801C0B74 001BDAD4  38 AD 91 1C */	addi r5, r13, lbl_805A7CDC@sda21
/* 801C0B78 001BDAD8  4B E4 B7 3D */	bl "Clamp<f>__5CMathFRCfRCfRCf"
/* 801C0B7C 001BDADC  80 DF 00 04 */	lwz r6, 4(r31)
/* 801C0B80 001BDAE0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 801C0B84 001BDAE4  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801C0B88 001BDAE8  C3 E3 00 00 */	lfs f31, 0(r3)
/* 801C0B8C 001BDAEC  7C A4 02 14 */	add r5, r4, r0
/* 801C0B90 001BDAF0  48 00 00 18 */	b lbl_801C0BA8
lbl_801C0B94:
/* 801C0B94 001BDAF4  A0 64 00 00 */	lhz r3, 0(r4)
/* 801C0B98 001BDAF8  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C0B9C 001BDAFC  7C 03 00 40 */	cmplw r3, r0
/* 801C0BA0 001BDB00  41 82 00 10 */	beq lbl_801C0BB0
/* 801C0BA4 001BDB04  38 84 00 0C */	addi r4, r4, 0xc
lbl_801C0BA8:
/* 801C0BA8 001BDB08  7C 04 28 40 */	cmplw r4, r5
/* 801C0BAC 001BDB0C  40 82 FF E8 */	bne lbl_801C0B94
lbl_801C0BB0:
/* 801C0BB0 001BDB10  7C 04 28 40 */	cmplw r4, r5
/* 801C0BB4 001BDB14  41 82 00 10 */	beq lbl_801C0BC4
/* 801C0BB8 001BDB18  D3 E4 00 04 */	stfs f31, 4(r4)
/* 801C0BBC 001BDB1C  D3 C4 00 08 */	stfs f30, 8(r4)
/* 801C0BC0 001BDB20  48 00 00 64 */	b lbl_801C0C24
lbl_801C0BC4:
/* 801C0BC4 001BDB24  80 BF 00 08 */	lwz r5, 8(r31)
/* 801C0BC8 001BDB28  7C 06 28 00 */	cmpw r6, r5
/* 801C0BCC 001BDB2C  40 80 00 58 */	bge lbl_801C0C24
/* 801C0BD0 001BDB30  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801C0BD4 001BDB34  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801C0BD8 001BDB38  41 80 00 1C */	blt lbl_801C0BF4
/* 801C0BDC 001BDB3C  2C 05 00 00 */	cmpwi r5, 0
/* 801C0BE0 001BDB40  7F E3 FB 78 */	mr r3, r31
/* 801C0BE4 001BDB44  38 80 00 04 */	li r4, 4
/* 801C0BE8 001BDB48  41 82 00 08 */	beq lbl_801C0BF0
/* 801C0BEC 001BDB4C  54 A4 08 3C */	slwi r4, r5, 1
lbl_801C0BF0:
/* 801C0BF0 001BDB50  48 00 00 9D */	bl "reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi"
lbl_801C0BF4:
/* 801C0BF4 001BDB54  80 1F 00 04 */	lwz r0, 4(r31)
/* 801C0BF8 001BDB58  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801C0BFC 001BDB5C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0C00 001BDB60  7C 63 02 15 */	add. r3, r3, r0
/* 801C0C04 001BDB64  41 82 00 14 */	beq lbl_801C0C18
/* 801C0C08 001BDB68  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801C0C0C 001BDB6C  B0 03 00 00 */	sth r0, 0(r3)
/* 801C0C10 001BDB70  D3 E3 00 04 */	stfs f31, 4(r3)
/* 801C0C14 001BDB74  D3 C3 00 08 */	stfs f30, 8(r3)
lbl_801C0C18:
/* 801C0C18 001BDB78  80 7F 00 04 */	lwz r3, 4(r31)
/* 801C0C1C 001BDB7C  38 03 00 01 */	addi r0, r3, 1
/* 801C0C20 001BDB80  90 1F 00 04 */	stw r0, 4(r31)
lbl_801C0C24:
/* 801C0C24 001BDB84  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801C0C28 001BDB88  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801C0C2C 001BDB8C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, qr0
/* 801C0C30 001BDB90  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801C0C34 001BDB94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C0C38 001BDB98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801C0C3C 001BDB9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C0C40 001BDBA0  7C 08 03 A6 */	mtlr r0
/* 801C0C44 001BDBA4  38 21 00 40 */	addi r1, r1, 0x40
/* 801C0C48 001BDBA8  4E 80 00 20 */	blr

.global __ct__19CStaticInterferenceFi
__ct__19CStaticInterferenceFi:
/* 801C0C4C 001BDBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0C50 001BDBB0  7C 08 02 A6 */	mflr r0
/* 801C0C54 001BDBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0C58 001BDBB8  38 00 00 00 */	li r0, 0
/* 801C0C5C 001BDBBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0C60 001BDBC0  7C 7F 1B 78 */	mr r31, r3
/* 801C0C64 001BDBC4  90 03 00 04 */	stw r0, 4(r3)
/* 801C0C68 001BDBC8  90 03 00 08 */	stw r0, 8(r3)
/* 801C0C6C 001BDBCC  90 03 00 0C */	stw r0, 0xc(r3)
/* 801C0C70 001BDBD0  48 00 00 1D */	bl "reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi"
/* 801C0C74 001BDBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0C78 001BDBD8  7F E3 FB 78 */	mr r3, r31
/* 801C0C7C 001BDBDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0C80 001BDBE0  7C 08 03 A6 */	mtlr r0
/* 801C0C84 001BDBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0C88 001BDBE8  4E 80 00 20 */	blr

.global "reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl62vector<25CStaticInterferenceSource,Q24rstl17rmemory_allocator>Fi":
/* 801C0C8C 001BDBEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C0C90 001BDBF0  7C 08 02 A6 */	mflr r0
/* 801C0C94 001BDBF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C0C98 001BDBF8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801C0C9C 001BDBFC  7C 9F 23 78 */	mr r31, r4
/* 801C0CA0 001BDC00  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801C0CA4 001BDC04  7C 7E 1B 78 */	mr r30, r3
/* 801C0CA8 001BDC08  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801C0CAC 001BDC0C  80 03 00 08 */	lwz r0, 8(r3)
/* 801C0CB0 001BDC10  7C 1F 00 00 */	cmpw r31, r0
/* 801C0CB4 001BDC14  40 81 00 BC */	ble lbl_801C0D70
/* 801C0CB8 001BDC18  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 801C0CBC 001BDC1C  2C 03 00 00 */	cmpwi r3, 0
/* 801C0CC0 001BDC20  40 82 00 0C */	bne lbl_801C0CCC
/* 801C0CC4 001BDC24  3B A0 00 00 */	li r29, 0
/* 801C0CC8 001BDC28  48 00 00 18 */	b lbl_801C0CE0
lbl_801C0CCC:
/* 801C0CCC 001BDC2C  3C 80 80 3D */	lis r4, lbl_803D1A78@ha
/* 801C0CD0 001BDC30  38 A0 00 00 */	li r5, 0
/* 801C0CD4 001BDC34  38 84 1A 78 */	addi r4, r4, lbl_803D1A78@l
/* 801C0CD8 001BDC38  48 15 4B 41 */	bl __nwa__FUlPCcPCc
/* 801C0CDC 001BDC3C  7C 7D 1B 78 */	mr r29, r3
lbl_801C0CE0:
/* 801C0CE0 001BDC40  80 1E 00 04 */	lwz r0, 4(r30)
/* 801C0CE4 001BDC44  7F A4 EB 78 */	mr r4, r29
/* 801C0CE8 001BDC48  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801C0CEC 001BDC4C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0CF0 001BDC50  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801C0CF4 001BDC54  7C 65 02 14 */	add r3, r5, r0
/* 801C0CF8 001BDC58  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801C0CFC 001BDC5C  90 61 00 08 */	stw r3, 8(r1)
/* 801C0D00 001BDC60  90 61 00 0C */	stw r3, 0xc(r1)
/* 801C0D04 001BDC64  48 00 00 2C */	b lbl_801C0D30
lbl_801C0D08:
/* 801C0D08 001BDC68  28 04 00 00 */	cmplwi r4, 0
/* 801C0D0C 001BDC6C  41 82 00 1C */	beq lbl_801C0D28
/* 801C0D10 001BDC70  A0 05 00 00 */	lhz r0, 0(r5)
/* 801C0D14 001BDC74  B0 04 00 00 */	sth r0, 0(r4)
/* 801C0D18 001BDC78  C0 05 00 04 */	lfs f0, 4(r5)
/* 801C0D1C 001BDC7C  D0 04 00 04 */	stfs f0, 4(r4)
/* 801C0D20 001BDC80  C0 05 00 08 */	lfs f0, 8(r5)
/* 801C0D24 001BDC84  D0 04 00 08 */	stfs f0, 8(r4)
lbl_801C0D28:
/* 801C0D28 001BDC88  38 84 00 0C */	addi r4, r4, 0xc
/* 801C0D2C 001BDC8C  38 A5 00 0C */	addi r5, r5, 0xc
lbl_801C0D30:
/* 801C0D30 001BDC90  7C 05 18 40 */	cmplw r5, r3
/* 801C0D34 001BDC94  40 82 FF D4 */	bne lbl_801C0D08
/* 801C0D38 001BDC98  80 1E 00 04 */	lwz r0, 4(r30)
/* 801C0D3C 001BDC9C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801C0D40 001BDCA0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801C0D44 001BDCA4  7C 64 1B 78 */	mr r4, r3
/* 801C0D48 001BDCA8  7C 03 02 14 */	add r0, r3, r0
/* 801C0D4C 001BDCAC  48 00 00 08 */	b lbl_801C0D54
lbl_801C0D50:
/* 801C0D50 001BDCB0  38 84 00 0C */	addi r4, r4, 0xc
lbl_801C0D54:
/* 801C0D54 001BDCB4  7C 04 00 40 */	cmplw r4, r0
/* 801C0D58 001BDCB8  40 82 FF F8 */	bne lbl_801C0D50
/* 801C0D5C 001BDCBC  28 03 00 00 */	cmplwi r3, 0
/* 801C0D60 001BDCC0  41 82 00 08 */	beq lbl_801C0D68
/* 801C0D64 001BDCC4  48 15 4B CD */	bl Free__7CMemoryFPCv
lbl_801C0D68:
/* 801C0D68 001BDCC8  93 BE 00 0C */	stw r29, 0xc(r30)
/* 801C0D6C 001BDCCC  93 FE 00 08 */	stw r31, 8(r30)
lbl_801C0D70:
/* 801C0D70 001BDCD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C0D74 001BDCD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801C0D78 001BDCD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801C0D7C 001BDCDC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801C0D80 001BDCE0  7C 08 03 A6 */	mtlr r0
/* 801C0D84 001BDCE4  38 21 00 30 */	addi r1, r1, 0x30
/* 801C0D88 001BDCE8  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AC798
lbl_805AC798:
	# ROM: 0x3F9038
	.4byte 0

.global lbl_805AC79C
lbl_805AC79C:
	# ROM: 0x3F903C
	.4byte 0x3F4CCCCD


.section .rodata
.balign 8
.global lbl_803D1A78
lbl_803D1A78:
	# ROM: 0x3CEA78
	.asciz "??(??)"
	.balign 4

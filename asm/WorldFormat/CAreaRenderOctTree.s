.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global TestBit__13CCubeRendererFPCUii
TestBit__13CCubeRendererFPCUii:
/* 802AE6C4 002AB624  7C 80 2E 70 */	srawi r0, r4, 5
/* 802AE6C8 002AB628  54 84 06 FE */	clrlwi r4, r4, 0x1b
/* 802AE6CC 002AB62C  54 00 10 3A */	slwi r0, r0, 2
/* 802AE6D0 002AB630  38 A0 00 01 */	li r5, 1
/* 802AE6D4 002AB634  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AE6D8 002AB638  7C A3 20 30 */	slw r3, r5, r4
/* 802AE6DC 002AB63C  7C 63 00 38 */	and r3, r3, r0
/* 802AE6E0 002AB640  7C 03 00 D0 */	neg r0, r3
/* 802AE6E4 002AB644  7C 00 1B 78 */	or r0, r0, r3
/* 802AE6E8 002AB648  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802AE6EC 002AB64C  4E 80 00 20 */	blr 

.global RecursiveBuildOverlaps__18CAreaRenderOctTreeFPUiRC18CAreaRenderOctTreeRC6CAABoxRC6CAABox
RecursiveBuildOverlaps__18CAreaRenderOctTreeFPUiRC18CAreaRenderOctTreeRC6CAABoxRC6CAABox:
/* 802AE6F0 002AB650  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802AE6F4 002AB654  7C 08 02 A6 */	mflr r0
/* 802AE6F8 002AB658  90 01 00 54 */	stw r0, 0x54(r1)
/* 802AE6FC 002AB65C  BE E1 00 2C */	stmw r23, 0x2c(r1)
/* 802AE700 002AB660  7C D9 33 78 */	mr r25, r6
/* 802AE704 002AB664  7C 98 23 78 */	mr r24, r4
/* 802AE708 002AB668  7C FA 3B 78 */	mr r26, r7
/* 802AE70C 002AB66C  7C 77 1B 78 */	mr r23, r3
/* 802AE710 002AB670  7C BF 2B 78 */	mr r31, r5
/* 802AE714 002AB674  7F 43 D3 78 */	mr r3, r26
/* 802AE718 002AB678  7F 24 CB 78 */	mr r4, r25
/* 802AE71C 002AB67C  48 08 94 69 */	bl DoBoundsOverlap__6CAABoxCFRC6CAABox
/* 802AE720 002AB680  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AE724 002AB684  41 82 00 E0 */	beq lbl_802AE804
/* 802AE728 002AB688  88 17 00 03 */	lbz r0, 3(r23)
/* 802AE72C 002AB68C  28 00 00 00 */	cmplwi r0, 0
/* 802AE730 002AB690  41 82 00 18 */	beq lbl_802AE748
/* 802AE734 002AB694  7F 23 CB 78 */	mr r3, r25
/* 802AE738 002AB698  7F 44 D3 78 */	mr r4, r26
/* 802AE73C 002AB69C  48 08 93 45 */	bl Inside__6CAABoxCFRC6CAABox
/* 802AE740 002AB6A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AE744 002AB6A4  41 82 00 54 */	beq lbl_802AE798
lbl_802AE748:
/* 802AE748 002AB6A8  A0 77 00 00 */	lhz r3, 0(r23)
/* 802AE74C 002AB6AC  7F 05 C3 78 */	mr r5, r24
/* 802AE750 002AB6B0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802AE754 002AB6B4  38 C0 00 00 */	li r6, 0
/* 802AE758 002AB6B8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 802AE75C 002AB6BC  7C 03 01 D6 */	mullw r0, r3, r0
/* 802AE760 002AB6C0  54 00 10 3A */	slwi r0, r0, 2
/* 802AE764 002AB6C4  7C 84 02 14 */	add r4, r4, r0
/* 802AE768 002AB6C8  48 00 00 20 */	b lbl_802AE788
lbl_802AE76C:
/* 802AE76C 002AB6CC  80 04 00 00 */	lwz r0, 0(r4)
/* 802AE770 002AB6D0  38 84 00 04 */	addi r4, r4, 4
/* 802AE774 002AB6D4  80 65 00 00 */	lwz r3, 0(r5)
/* 802AE778 002AB6D8  38 C6 00 01 */	addi r6, r6, 1
/* 802AE77C 002AB6DC  7C 60 03 78 */	or r0, r3, r0
/* 802AE780 002AB6E0  90 05 00 00 */	stw r0, 0(r5)
/* 802AE784 002AB6E4  38 A5 00 04 */	addi r5, r5, 4
lbl_802AE788:
/* 802AE788 002AB6E8  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802AE78C 002AB6EC  7C 06 00 40 */	cmplw r6, r0
/* 802AE790 002AB6F0  41 80 FF DC */	blt lbl_802AE76C
/* 802AE794 002AB6F4  48 00 00 70 */	b lbl_802AE804
lbl_802AE798:
/* 802AE798 002AB6F8  7E E3 BB 78 */	mr r3, r23
/* 802AE79C 002AB6FC  48 00 04 95 */	bl sub_802aec30
/* 802AE7A0 002AB700  7C 7E 1B 78 */	mr r30, r3
/* 802AE7A4 002AB704  7E FC BB 78 */	mr r28, r23
/* 802AE7A8 002AB708  3B 60 00 00 */	li r27, 0
/* 802AE7AC 002AB70C  48 00 00 50 */	b lbl_802AE7FC
lbl_802AE7B0:
/* 802AE7B0 002AB710  A0 1C 00 04 */	lhz r0, 4(r28)
/* 802AE7B4 002AB714  7E E4 BB 78 */	mr r4, r23
/* 802AE7B8 002AB718  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 802AE7BC 002AB71C  7F 25 CB 78 */	mr r5, r25
/* 802AE7C0 002AB720  54 00 10 3A */	slwi r0, r0, 2
/* 802AE7C4 002AB724  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 802AE7C8 002AB728  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AE7CC 002AB72C  7F 66 DB 78 */	mr r6, r27
/* 802AE7D0 002AB730  38 61 00 08 */	addi r3, r1, 8
/* 802AE7D4 002AB734  7F A7 02 14 */	add r29, r7, r0
/* 802AE7D8 002AB738  48 00 01 B9 */	bl sub_802ae990
/* 802AE7DC 002AB73C  7F A3 EB 78 */	mr r3, r29
/* 802AE7E0 002AB740  7F 04 C3 78 */	mr r4, r24
/* 802AE7E4 002AB744  7F E5 FB 78 */	mr r5, r31
/* 802AE7E8 002AB748  7F 47 D3 78 */	mr r7, r26
/* 802AE7EC 002AB74C  38 C1 00 08 */	addi r6, r1, 8
/* 802AE7F0 002AB750  4B FF FF 01 */	bl RecursiveBuildOverlaps__18CAreaRenderOctTreeFPUiRC18CAreaRenderOctTreeRC6CAABoxRC6CAABox
/* 802AE7F4 002AB754  3B 9C 00 02 */	addi r28, r28, 2
/* 802AE7F8 002AB758  3B 7B 00 01 */	addi r27, r27, 1
lbl_802AE7FC:
/* 802AE7FC 002AB75C  7C 1B F0 00 */	cmpw r27, r30
/* 802AE800 002AB760  41 80 FF B0 */	blt lbl_802AE7B0
lbl_802AE804:
/* 802AE804 002AB764  BA E1 00 2C */	lmw r23, 0x2c(r1)
/* 802AE808 002AB768  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802AE80C 002AB76C  7C 08 03 A6 */	mtlr r0
/* 802AE810 002AB770  38 21 00 50 */	addi r1, r1, 0x50
/* 802AE814 002AB774  4E 80 00 20 */	blr 

.global FindOverlappingModels__18CAreaRenderOctTreeFPUiRC6CAABox
FindOverlappingModels__18CAreaRenderOctTreeFPUiRC6CAABox:
/* 802AE818 002AB778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AE81C 002AB77C  7C 08 02 A6 */	mflr r0
/* 802AE820 002AB780  7C A7 2B 78 */	mr r7, r5
/* 802AE824 002AB784  7C 65 1B 78 */	mr r5, r3
/* 802AE828 002AB788  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AE82C 002AB78C  80 C3 00 34 */	lwz r6, 0x34(r3)
/* 802AE830 002AB790  81 03 00 38 */	lwz r8, 0x38(r3)
/* 802AE834 002AB794  80 06 00 00 */	lwz r0, 0(r6)
/* 802AE838 002AB798  38 C3 00 18 */	addi r6, r3, 0x18
/* 802AE83C 002AB79C  7C 68 02 14 */	add r3, r8, r0
/* 802AE840 002AB7A0  4B FF FE B1 */	bl RecursiveBuildOverlaps__18CAreaRenderOctTreeFPUiRC18CAreaRenderOctTreeRC6CAABoxRC6CAABox
/* 802AE844 002AB7A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AE848 002AB7A8  7C 08 03 A6 */	mtlr r0
/* 802AE84C 002AB7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AE850 002AB7B0  4E 80 00 20 */	blr 

.global "FindOverlappingModels__18CAreaRenderOctTreeFRQ24rstl10vector<Ui>RC6CAABox"
"FindOverlappingModels__18CAreaRenderOctTreeFRQ24rstl10vector<Ui>RC6CAABox":
/* 802AE854 002AB7B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE858 002AB7B8  7C 08 02 A6 */	mflr r0
/* 802AE85C 002AB7BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE860 002AB7C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AE864 002AB7C4  7C BF 2B 78 */	mr r31, r5
/* 802AE868 002AB7C8  38 AD 9A 80 */	addi r5, r13, lbl_805A8640@sda21
/* 802AE86C 002AB7CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AE870 002AB7D0  7C 9E 23 78 */	mr r30, r4
/* 802AE874 002AB7D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AE878 002AB7D8  7C 7D 1B 78 */	mr r29, r3
/* 802AE87C 002AB7DC  80 83 00 14 */	lwz r4, 0x14(r3)
/* 802AE880 002AB7E0  7F C3 F3 78 */	mr r3, r30
/* 802AE884 002AB7E4  48 00 00 45 */	bl sub_802ae8c8
/* 802AE888 002AB7E8  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 802AE88C 002AB7EC  7F A5 EB 78 */	mr r5, r29
/* 802AE890 002AB7F0  81 1D 00 38 */	lwz r8, 0x38(r29)
/* 802AE894 002AB7F4  7F E7 FB 78 */	mr r7, r31
/* 802AE898 002AB7F8  80 03 00 00 */	lwz r0, 0(r3)
/* 802AE89C 002AB7FC  38 DD 00 18 */	addi r6, r29, 0x18
/* 802AE8A0 002AB800  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802AE8A4 002AB804  7C 68 02 14 */	add r3, r8, r0
/* 802AE8A8 002AB808  4B FF FE 49 */	bl RecursiveBuildOverlaps__18CAreaRenderOctTreeFPUiRC18CAreaRenderOctTreeRC6CAABoxRC6CAABox
/* 802AE8AC 002AB80C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AE8B0 002AB810  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AE8B4 002AB814  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AE8B8 002AB818  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AE8BC 002AB81C  7C 08 03 A6 */	mtlr r0
/* 802AE8C0 002AB820  38 21 00 20 */	addi r1, r1, 0x20
/* 802AE8C4 002AB824  4E 80 00 20 */	blr 

.global sub_802ae8c8
sub_802ae8c8:
/* 802AE8C8 002AB828  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AE8CC 002AB82C  7C 08 02 A6 */	mflr r0
/* 802AE8D0 002AB830  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AE8D4 002AB834  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802AE8D8 002AB838  7C BF 2B 78 */	mr r31, r5
/* 802AE8DC 002AB83C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802AE8E0 002AB840  7C 9E 23 78 */	mr r30, r4
/* 802AE8E4 002AB844  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802AE8E8 002AB848  7C 7D 1B 78 */	mr r29, r3
/* 802AE8EC 002AB84C  80 03 00 04 */	lwz r0, 4(r3)
/* 802AE8F0 002AB850  7C 00 F0 00 */	cmpw r0, r30
/* 802AE8F4 002AB854  41 82 00 80 */	beq lbl_802AE974
/* 802AE8F8 002AB858  7C 1E 00 00 */	cmpw r30, r0
/* 802AE8FC 002AB85C  40 81 00 40 */	ble lbl_802AE93C
/* 802AE900 002AB860  4B DB 52 25 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 802AE904 002AB864  80 9D 00 04 */	lwz r4, 4(r29)
/* 802AE908 002AB868  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802AE90C 002AB86C  54 80 10 3A */	slwi r0, r4, 2
/* 802AE910 002AB870  7C 84 F0 51 */	subf. r4, r4, r30
/* 802AE914 002AB874  7C 63 02 14 */	add r3, r3, r0
/* 802AE918 002AB878  7C 89 03 A6 */	mtctr r4
/* 802AE91C 002AB87C  40 81 00 54 */	ble lbl_802AE970
lbl_802AE920:
/* 802AE920 002AB880  28 03 00 00 */	cmplwi r3, 0
/* 802AE924 002AB884  41 82 00 0C */	beq lbl_802AE930
/* 802AE928 002AB888  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AE92C 002AB88C  90 03 00 00 */	stw r0, 0(r3)
lbl_802AE930:
/* 802AE930 002AB890  38 63 00 04 */	addi r3, r3, 4
/* 802AE934 002AB894  42 00 FF EC */	bdnz lbl_802AE920
/* 802AE938 002AB898  48 00 00 38 */	b lbl_802AE970
lbl_802AE93C:
/* 802AE93C 002AB89C  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 802AE940 002AB8A0  54 03 10 3A */	slwi r3, r0, 2
/* 802AE944 002AB8A4  57 C0 10 3A */	slwi r0, r30, 2
/* 802AE948 002AB8A8  7C A4 02 14 */	add r5, r4, r0
/* 802AE94C 002AB8AC  7C 04 1A 14 */	add r0, r4, r3
/* 802AE950 002AB8B0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802AE954 002AB8B4  90 01 00 08 */	stw r0, 8(r1)
/* 802AE958 002AB8B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AE95C 002AB8BC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802AE960 002AB8C0  48 00 00 08 */	b lbl_802AE968
lbl_802AE964:
/* 802AE964 002AB8C4  38 A5 00 04 */	addi r5, r5, 4
lbl_802AE968:
/* 802AE968 002AB8C8  7C 05 00 40 */	cmplw r5, r0
/* 802AE96C 002AB8CC  40 82 FF F8 */	bne lbl_802AE964
lbl_802AE970:
/* 802AE970 002AB8D0  93 DD 00 04 */	stw r30, 4(r29)
lbl_802AE974:
/* 802AE974 002AB8D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AE978 002AB8D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802AE97C 002AB8DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802AE980 002AB8E0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802AE984 002AB8E4  7C 08 03 A6 */	mtlr r0
/* 802AE988 002AB8E8  38 21 00 30 */	addi r1, r1, 0x30
/* 802AE98C 002AB8EC  4E 80 00 20 */	blr 

.global sub_802ae990
sub_802ae990:
/* 802AE990 002AB8F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802AE994 002AB8F4  7C 08 02 A6 */	mflr r0
/* 802AE998 002AB8F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 802AE99C 002AB8FC  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802AE9A0 002AB900  7C DF 33 78 */	mr r31, r6
/* 802AE9A4 002AB904  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802AE9A8 002AB908  7C 7E 1B 78 */	mr r30, r3
/* 802AE9AC 002AB90C  93 A1 00 54 */	stw r29, 0x54(r1)
/* 802AE9B0 002AB910  8B A4 00 03 */	lbz r29, 3(r4)
/* 802AE9B4 002AB914  C0 A5 00 00 */	lfs f5, 0(r5)
/* 802AE9B8 002AB918  C0 85 00 04 */	lfs f4, 4(r5)
/* 802AE9BC 002AB91C  28 1D 00 07 */	cmplwi r29, 7
/* 802AE9C0 002AB920  C0 65 00 08 */	lfs f3, 8(r5)
/* 802AE9C4 002AB924  C0 45 00 0C */	lfs f2, 0xc(r5)
/* 802AE9C8 002AB928  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 802AE9CC 002AB92C  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802AE9D0 002AB930  D0 A1 00 44 */	stfs f5, 0x44(r1)
/* 802AE9D4 002AB934  D0 81 00 48 */	stfs f4, 0x48(r1)
/* 802AE9D8 002AB938  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 802AE9DC 002AB93C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 802AE9E0 002AB940  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 802AE9E4 002AB944  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802AE9E8 002AB948  41 81 02 1C */	bgt lbl_802AEC04
/* 802AE9EC 002AB94C  3C 60 80 3F */	lis r3, lbl_803EC4A8@ha
/* 802AE9F0 002AB950  57 A0 10 3A */	slwi r0, r29, 2
/* 802AE9F4 002AB954  38 63 C4 A8 */	addi r3, r3, lbl_803EC4A8@l
/* 802AE9F8 002AB958  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AE9FC 002AB95C  7C 09 03 A6 */	mtctr r0
/* 802AEA00 002AB960  4E 80 04 20 */	bctr 
/* 802AEA04 002AB964  EC 02 28 2A */	fadds f0, f2, f5
/* 802AEA08 002AB968  C0 22 C1 E8 */	lfs f1, lbl_805ADF08@sda21(r2)
/* 802AEA0C 002AB96C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AEA10 002AB970  EC 01 00 32 */	fmuls f0, f1, f0
/* 802AEA14 002AB974  40 82 00 0C */	bne lbl_802AEA20
/* 802AEA18 002AB978  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802AEA1C 002AB97C  48 00 01 E8 */	b lbl_802AEC04
lbl_802AEA20:
/* 802AEA20 002AB980  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802AEA24 002AB984  48 00 01 E0 */	b lbl_802AEC04
/* 802AEA28 002AB988  EC 01 20 2A */	fadds f0, f1, f4
/* 802AEA2C 002AB98C  C0 22 C1 E8 */	lfs f1, lbl_805ADF08@sda21(r2)
/* 802AEA30 002AB990  2C 1F 00 00 */	cmpwi r31, 0
/* 802AEA34 002AB994  EC 01 00 32 */	fmuls f0, f1, f0
/* 802AEA38 002AB998  40 82 00 0C */	bne lbl_802AEA44
/* 802AEA3C 002AB99C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 802AEA40 002AB9A0  48 00 01 C4 */	b lbl_802AEC04
lbl_802AEA44:
/* 802AEA44 002AB9A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802AEA48 002AB9A8  48 00 01 BC */	b lbl_802AEC04
/* 802AEA4C 002AB9AC  EC 00 18 2A */	fadds f0, f0, f3
/* 802AEA50 002AB9B0  C0 22 C1 E8 */	lfs f1, lbl_805ADF08@sda21(r2)
/* 802AEA54 002AB9B4  2C 1F 00 00 */	cmpwi r31, 0
/* 802AEA58 002AB9B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 802AEA5C 002AB9BC  40 82 00 0C */	bne lbl_802AEA68
/* 802AEA60 002AB9C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 802AEA64 002AB9C4  48 00 01 A0 */	b lbl_802AEC04
lbl_802AEA68:
/* 802AEA68 002AB9C8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802AEA6C 002AB9CC  48 00 01 98 */	b lbl_802AEC04
/* 802AEA70 002AB9D0  7C A4 2B 78 */	mr r4, r5
/* 802AEA74 002AB9D4  38 61 00 14 */	addi r3, r1, 0x14
/* 802AEA78 002AB9D8  48 08 8B 95 */	bl GetCenterPoint__6CAABoxCFv
/* 802AEA7C 002AB9DC  1C 1D 00 03 */	mulli r0, r29, 3
/* 802AEA80 002AB9E0  3C 60 80 3D */	lis r3, lbl_803D6138@ha
/* 802AEA84 002AB9E4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 802AEA88 002AB9E8  2C 1F 00 02 */	cmpwi r31, 2
/* 802AEA8C 002AB9EC  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 802AEA90 002AB9F0  38 83 61 38 */	addi r4, r3, lbl_803D6138@l
/* 802AEA94 002AB9F4  54 00 10 3A */	slwi r0, r0, 2
/* 802AEA98 002AB9F8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802AEA9C 002AB9FC  7C 64 02 14 */	add r3, r4, r0
/* 802AEAA0 002ABA00  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 802AEAA4 002ABA04  7C 84 00 2E */	lwzx r4, r4, r0
/* 802AEAA8 002ABA08  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 802AEAAC 002ABA0C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802AEAB0 002ABA10  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802AEAB4 002ABA14  41 82 00 70 */	beq lbl_802AEB24
/* 802AEAB8 002ABA18  40 80 00 14 */	bge lbl_802AEACC
/* 802AEABC 002ABA1C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AEAC0 002ABA20  41 82 00 18 */	beq lbl_802AEAD8
/* 802AEAC4 002ABA24  40 80 00 38 */	bge lbl_802AEAFC
/* 802AEAC8 002ABA28  48 00 01 3C */	b lbl_802AEC04
lbl_802AEACC:
/* 802AEACC 002ABA2C  2C 1F 00 04 */	cmpwi r31, 4
/* 802AEAD0 002ABA30  40 80 01 34 */	bge lbl_802AEC04
/* 802AEAD4 002ABA34  48 00 00 78 */	b lbl_802AEB4C
lbl_802AEAD8:
/* 802AEAD8 002ABA38  54 80 10 3A */	slwi r0, r4, 2
/* 802AEADC 002ABA3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 802AEAE0 002ABA40  7C 04 04 2E */	lfsx f0, r4, r0
/* 802AEAE4 002ABA44  38 61 00 38 */	addi r3, r1, 0x38
/* 802AEAE8 002ABA48  54 A5 10 3A */	slwi r5, r5, 2
/* 802AEAEC 002ABA4C  7C 03 05 2E */	stfsx f0, r3, r0
/* 802AEAF0 002ABA50  7C 04 2C 2E */	lfsx f0, r4, r5
/* 802AEAF4 002ABA54  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802AEAF8 002ABA58  48 00 01 0C */	b lbl_802AEC04
lbl_802AEAFC:
/* 802AEAFC 002ABA5C  54 80 10 3A */	slwi r0, r4, 2
/* 802AEB00 002ABA60  38 61 00 2C */	addi r3, r1, 0x2c
/* 802AEB04 002ABA64  54 A5 10 3A */	slwi r5, r5, 2
/* 802AEB08 002ABA68  7C 23 04 2E */	lfsx f1, r3, r0
/* 802AEB0C 002ABA6C  38 81 00 44 */	addi r4, r1, 0x44
/* 802AEB10 002ABA70  7C 03 2C 2E */	lfsx f0, r3, r5
/* 802AEB14 002ABA74  38 61 00 38 */	addi r3, r1, 0x38
/* 802AEB18 002ABA78  7C 24 05 2E */	stfsx f1, r4, r0
/* 802AEB1C 002ABA7C  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802AEB20 002ABA80  48 00 00 E4 */	b lbl_802AEC04
lbl_802AEB24:
/* 802AEB24 002ABA84  54 A0 10 3A */	slwi r0, r5, 2
/* 802AEB28 002ABA88  38 61 00 2C */	addi r3, r1, 0x2c
/* 802AEB2C 002ABA8C  54 85 10 3A */	slwi r5, r4, 2
/* 802AEB30 002ABA90  7C 23 04 2E */	lfsx f1, r3, r0
/* 802AEB34 002ABA94  38 81 00 44 */	addi r4, r1, 0x44
/* 802AEB38 002ABA98  7C 03 2C 2E */	lfsx f0, r3, r5
/* 802AEB3C 002ABA9C  38 61 00 38 */	addi r3, r1, 0x38
/* 802AEB40 002ABAA0  7C 24 05 2E */	stfsx f1, r4, r0
/* 802AEB44 002ABAA4  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802AEB48 002ABAA8  48 00 00 BC */	b lbl_802AEC04
lbl_802AEB4C:
/* 802AEB4C 002ABAAC  54 80 10 3A */	slwi r0, r4, 2
/* 802AEB50 002ABAB0  38 81 00 2C */	addi r4, r1, 0x2c
/* 802AEB54 002ABAB4  7C 04 04 2E */	lfsx f0, r4, r0
/* 802AEB58 002ABAB8  38 61 00 44 */	addi r3, r1, 0x44
/* 802AEB5C 002ABABC  54 A5 10 3A */	slwi r5, r5, 2
/* 802AEB60 002ABAC0  7C 03 05 2E */	stfsx f0, r3, r0
/* 802AEB64 002ABAC4  7C 04 2C 2E */	lfsx f0, r4, r5
/* 802AEB68 002ABAC8  7C 03 2D 2E */	stfsx f0, r3, r5
/* 802AEB6C 002ABACC  48 00 00 98 */	b lbl_802AEC04
/* 802AEB70 002ABAD0  7C A4 2B 78 */	mr r4, r5
/* 802AEB74 002ABAD4  38 61 00 08 */	addi r3, r1, 8
/* 802AEB78 002ABAD8  48 08 8A 95 */	bl GetCenterPoint__6CAABoxCFv
/* 802AEB7C 002ABADC  38 00 00 00 */	li r0, 0
/* 802AEB80 002ABAE0  38 60 00 01 */	li r3, 1
/* 802AEB84 002ABAE4  7C 60 00 30 */	slw r0, r3, r0
/* 802AEB88 002ABAE8  C0 41 00 08 */	lfs f2, 8(r1)
/* 802AEB8C 002ABAEC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 802AEB90 002ABAF0  7F E0 00 39 */	and. r0, r31, r0
/* 802AEB94 002ABAF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802AEB98 002ABAF8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 802AEB9C 002ABAFC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 802AEBA0 002ABB00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802AEBA4 002ABB04  41 82 00 10 */	beq lbl_802AEBB4
/* 802AEBA8 002ABB08  FC 00 10 18 */	frsp f0, f2
/* 802AEBAC 002ABB0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 802AEBB0 002ABB10  48 00 00 0C */	b lbl_802AEBBC
lbl_802AEBB4:
/* 802AEBB4 002ABB14  FC 00 10 18 */	frsp f0, f2
/* 802AEBB8 002ABB18  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_802AEBBC:
/* 802AEBBC 002ABB1C  38 00 00 01 */	li r0, 1
/* 802AEBC0 002ABB20  7C 60 00 30 */	slw r0, r3, r0
/* 802AEBC4 002ABB24  7F E0 00 39 */	and. r0, r31, r0
/* 802AEBC8 002ABB28  41 82 00 10 */	beq lbl_802AEBD8
/* 802AEBCC 002ABB2C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802AEBD0 002ABB30  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 802AEBD4 002ABB34  48 00 00 0C */	b lbl_802AEBE0
lbl_802AEBD8:
/* 802AEBD8 002ABB38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802AEBDC 002ABB3C  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_802AEBE0:
/* 802AEBE0 002ABB40  38 00 00 02 */	li r0, 2
/* 802AEBE4 002ABB44  7C 60 00 30 */	slw r0, r3, r0
/* 802AEBE8 002ABB48  7F E0 00 39 */	and. r0, r31, r0
/* 802AEBEC 002ABB4C  41 82 00 10 */	beq lbl_802AEBFC
/* 802AEBF0 002ABB50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802AEBF4 002ABB54  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 802AEBF8 002ABB58  48 00 00 0C */	b lbl_802AEC04
lbl_802AEBFC:
/* 802AEBFC 002ABB5C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802AEC00 002ABB60  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_802AEC04:
/* 802AEC04 002ABB64  7F C3 F3 78 */	mr r3, r30
/* 802AEC08 002ABB68  38 81 00 44 */	addi r4, r1, 0x44
/* 802AEC0C 002ABB6C  38 A1 00 38 */	addi r5, r1, 0x38
/* 802AEC10 002ABB70  48 08 98 F9 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
/* 802AEC14 002ABB74  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802AEC18 002ABB78  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802AEC1C 002ABB7C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802AEC20 002ABB80  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 802AEC24 002ABB84  7C 08 03 A6 */	mtlr r0
/* 802AEC28 002ABB88  38 21 00 60 */	addi r1, r1, 0x60
/* 802AEC2C 002ABB8C  4E 80 00 20 */	blr 

.global sub_802aec30
sub_802aec30:
/* 802AEC30 002ABB90  88 03 00 03 */	lbz r0, 3(r3)
/* 802AEC34 002ABB94  3C 60 80 3D */	lis r3, lbl_803D6118@ha
/* 802AEC38 002ABB98  38 63 61 18 */	addi r3, r3, lbl_803D6118@l
/* 802AEC3C 002ABB9C  54 00 10 3A */	slwi r0, r0, 2
/* 802AEC40 002ABBA0  7C 63 00 2E */	lwzx r3, r3, r0
/* 802AEC44 002ABBA4  4E 80 00 20 */	blr 

.global sub_802aec48
sub_802aec48:
/* 802AEC48 002ABBA8  88 A4 00 00 */	lbz r5, 0(r4)
/* 802AEC4C 002ABBAC  38 00 00 00 */	li r0, 0
/* 802AEC50 002ABBB0  98 A3 00 00 */	stb r5, 0(r3)
/* 802AEC54 002ABBB4  80 A4 00 04 */	lwz r5, 4(r4)
/* 802AEC58 002ABBB8  90 A3 00 04 */	stw r5, 4(r3)
/* 802AEC5C 002ABBBC  98 04 00 00 */	stb r0, 0(r4)
/* 802AEC60 002ABBC0  80 A4 00 04 */	lwz r5, 4(r4)
/* 802AEC64 002ABBC4  80 05 00 08 */	lwz r0, 8(r5)
/* 802AEC68 002ABBC8  90 03 00 08 */	stw r0, 8(r3)
/* 802AEC6C 002ABBCC  80 A4 00 04 */	lwz r5, 4(r4)
/* 802AEC70 002ABBD0  80 05 00 0C */	lwz r0, 0xc(r5)
/* 802AEC74 002ABBD4  90 03 00 0C */	stw r0, 0xc(r3)
/* 802AEC78 002ABBD8  80 A4 00 04 */	lwz r5, 4(r4)
/* 802AEC7C 002ABBDC  80 05 00 10 */	lwz r0, 0x10(r5)
/* 802AEC80 002ABBE0  90 03 00 10 */	stw r0, 0x10(r3)
/* 802AEC84 002ABBE4  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 802AEC88 002ABBE8  38 05 00 1F */	addi r0, r5, 0x1f
/* 802AEC8C 002ABBEC  54 00 D9 7E */	srwi r0, r0, 5
/* 802AEC90 002ABBF0  90 03 00 14 */	stw r0, 0x14(r3)
/* 802AEC94 002ABBF4  80 A4 00 04 */	lwz r5, 4(r4)
/* 802AEC98 002ABBF8  C0 05 00 14 */	lfs f0, 0x14(r5)
/* 802AEC9C 002ABBFC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 802AECA0 002ABC00  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 802AECA4 002ABC04  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802AECA8 002ABC08  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 802AECAC 002ABC0C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 802AECB0 002ABC10  C0 05 00 20 */	lfs f0, 0x20(r5)
/* 802AECB4 002ABC14  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 802AECB8 002ABC18  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 802AECBC 002ABC1C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 802AECC0 002ABC20  C0 05 00 28 */	lfs f0, 0x28(r5)
/* 802AECC4 002ABC24  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802AECC8 002ABC28  80 84 00 04 */	lwz r4, 4(r4)
/* 802AECCC 002ABC2C  38 04 00 40 */	addi r0, r4, 0x40
/* 802AECD0 002ABC30  90 03 00 30 */	stw r0, 0x30(r3)
/* 802AECD4 002ABC34  80 83 00 08 */	lwz r4, 8(r3)
/* 802AECD8 002ABC38  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802AECDC 002ABC3C  80 A3 00 30 */	lwz r5, 0x30(r3)
/* 802AECE0 002ABC40  7C 04 01 D6 */	mullw r0, r4, r0
/* 802AECE4 002ABC44  54 00 10 3A */	slwi r0, r0, 2
/* 802AECE8 002ABC48  7C 05 02 14 */	add r0, r5, r0
/* 802AECEC 002ABC4C  90 03 00 34 */	stw r0, 0x34(r3)
/* 802AECF0 002ABC50  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802AECF4 002ABC54  80 83 00 34 */	lwz r4, 0x34(r3)
/* 802AECF8 002ABC58  54 00 10 3A */	slwi r0, r0, 2
/* 802AECFC 002ABC5C  7C 04 02 14 */	add r0, r4, r0
/* 802AED00 002ABC60  90 03 00 38 */	stw r0, 0x38(r3)
/* 802AED04 002ABC64  4E 80 00 20 */	blr

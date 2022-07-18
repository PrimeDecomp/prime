.include "macros.inc"

.section .text, "ax"

.global ProcessEnergyDrain__18CPlayerEnergyDrainFRC13CStateManagerf
ProcessEnergyDrain__18CPlayerEnergyDrainFRC13CStateManagerf:
/* 801B45CC 001B152C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801B45D0 001B1530  7C 08 02 A6 */	mflr r0
/* 801B45D4 001B1534  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B45D8 001B1538  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801B45DC 001B153C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, qr0
/* 801B45E0 001B1540  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B45E4 001B1544  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B45E8 001B1548  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801B45EC 001B154C  7C 7D 1B 78 */	mr r29, r3
/* 801B45F0 001B1550  FF E0 08 90 */	fmr f31, f1
/* 801B45F4 001B1554  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 801B45F8 001B1558  7C 9E 23 78 */	mr r30, r4
/* 801B45FC 001B155C  48 00 00 40 */	b lbl_801B463C
lbl_801B4600:
/* 801B4600 001B1560  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801B4604 001B1564  7F C3 F3 78 */	mr r3, r30
/* 801B4608 001B1568  38 81 00 14 */	addi r4, r1, 0x14
/* 801B460C 001B156C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801B4610 001B1570  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801B4614 001B1574  4B E9 7F 91 */	bl GetObjectById__13CStateManagerCF9TUniqueId
/* 801B4618 001B1578  28 03 00 00 */	cmplwi r3, 0
/* 801B461C 001B157C  40 82 00 1C */	bne lbl_801B4638
/* 801B4620 001B1580  A0 1F 00 00 */	lhz r0, 0(r31)
/* 801B4624 001B1584  7F A3 EB 78 */	mr r3, r29
/* 801B4628 001B1588  38 81 00 0C */	addi r4, r1, 0xc
/* 801B462C 001B158C  B0 01 00 08 */	sth r0, 8(r1)
/* 801B4630 001B1590  B0 01 00 0C */	sth r0, 0xc(r1)
/* 801B4634 001B1594  48 00 00 91 */	bl RemoveEnergyDrainSource__18CPlayerEnergyDrainF9TUniqueId
lbl_801B4638:
/* 801B4638 001B1598  3B FF 00 08 */	addi r31, r31, 8
lbl_801B463C:
/* 801B463C 001B159C  80 9D 00 04 */	lwz r4, 4(r29)
/* 801B4640 001B15A0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 801B4644 001B15A4  54 80 18 38 */	slwi r0, r4, 3
/* 801B4648 001B15A8  7C 03 02 14 */	add r0, r3, r0
/* 801B464C 001B15AC  7C 1F 00 40 */	cmplw r31, r0
/* 801B4650 001B15B0  40 82 FF B0 */	bne lbl_801B4600
/* 801B4654 001B15B4  2C 04 00 00 */	cmpwi r4, 0
/* 801B4658 001B15B8  40 81 00 10 */	ble lbl_801B4668
/* 801B465C 001B15BC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 801B4660 001B15C0  EC 00 F8 2A */	fadds f0, f0, f31
/* 801B4664 001B15C4  48 00 00 08 */	b lbl_801B466C
lbl_801B4668:
/* 801B4668 001B15C8  C0 02 A9 40 */	lfs f0, lbl_805AC660@sda21(r2)
lbl_801B466C:
/* 801B466C 001B15CC  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 801B4670 001B15D0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, qr0
/* 801B4674 001B15D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801B4678 001B15D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801B467C 001B15DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B4680 001B15E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B4684 001B15E4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801B4688 001B15E8  7C 08 03 A6 */	mtlr r0
/* 801B468C 001B15EC  38 21 00 40 */	addi r1, r1, 0x40
/* 801B4690 001B15F0  4E 80 00 20 */	blr

.global GetEnergyDrainIntensity__18CPlayerEnergyDrainCFv
GetEnergyDrainIntensity__18CPlayerEnergyDrainCFv:
/* 801B4694 001B15F4  80 03 00 04 */	lwz r0, 4(r3)
/* 801B4698 001B15F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801B469C 001B15FC  54 00 18 38 */	slwi r0, r0, 3
/* 801B46A0 001B1600  C0 22 A9 40 */	lfs f1, lbl_805AC660@sda21(r2)
/* 801B46A4 001B1604  7C 03 02 14 */	add r0, r3, r0
/* 801B46A8 001B1608  48 00 00 10 */	b lbl_801B46B8
lbl_801B46AC:
/* 801B46AC 001B160C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B46B0 001B1610  38 63 00 08 */	addi r3, r3, 8
/* 801B46B4 001B1614  EC 21 00 2A */	fadds f1, f1, f0
lbl_801B46B8:
/* 801B46B8 001B1618  7C 03 00 40 */	cmplw r3, r0
/* 801B46BC 001B161C  40 82 FF F0 */	bne lbl_801B46AC
/* 801B46C0 001B1620  4E 80 00 20 */	blr

.global RemoveEnergyDrainSource__18CPlayerEnergyDrainF9TUniqueId
RemoveEnergyDrainSource__18CPlayerEnergyDrainF9TUniqueId:
/* 801B46C4 001B1624  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801B46C8 001B1628  7C 08 02 A6 */	mflr r0
/* 801B46CC 001B162C  C0 02 A9 40 */	lfs f0, lbl_805AC660@sda21(r2)
/* 801B46D0 001B1630  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B46D4 001B1634  38 A1 00 18 */	addi r5, r1, 0x18
/* 801B46D8 001B1638  38 C1 00 34 */	addi r6, r1, 0x34
/* 801B46DC 001B163C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801B46E0 001B1640  7C 7F 1B 78 */	mr r31, r3
/* 801B46E4 001B1644  38 61 00 10 */	addi r3, r1, 0x10
/* 801B46E8 001B1648  A1 04 00 00 */	lhz r8, 0(r4)
/* 801B46EC 001B164C  38 81 00 14 */	addi r4, r1, 0x14
/* 801B46F0 001B1650  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801B46F4 001B1654  B1 01 00 34 */	sth r8, 0x34(r1)
/* 801B46F8 001B1658  80 1F 00 04 */	lwz r0, 4(r31)
/* 801B46FC 001B165C  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 801B4700 001B1660  54 00 18 38 */	slwi r0, r0, 3
/* 801B4704 001B1664  B1 01 00 08 */	sth r8, 8(r1)
/* 801B4708 001B1668  7C E7 02 14 */	add r7, r7, r0
/* 801B470C 001B166C  90 E1 00 28 */	stw r7, 0x28(r1)
/* 801B4710 001B1670  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801B4714 001B1674  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801B4718 001B1678  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B471C 001B167C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 801B4720 001B1680  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4724 001B1684  48 00 05 E9 */	bl "lower_bound<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,18CEnergyDrainSource>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC18CEnergyDrainSource"
/* 801B4728 001B1688  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801B472C 001B168C  38 80 00 00 */	li r4, 0
/* 801B4730 001B1690  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801B4734 001B1694  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801B4738 001B1698  7C 05 00 40 */	cmplw r5, r0
/* 801B473C 001B169C  41 82 00 18 */	beq lbl_801B4754
/* 801B4740 001B16A0  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 801B4744 001B16A4  A0 05 00 00 */	lhz r0, 0(r5)
/* 801B4748 001B16A8  7C 03 00 40 */	cmplw r3, r0
/* 801B474C 001B16AC  41 80 00 08 */	blt lbl_801B4754
/* 801B4750 001B16B0  38 80 00 01 */	li r4, 1
lbl_801B4754:
/* 801B4754 001B16B4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801B4758 001B16B8  38 81 00 28 */	addi r4, r1, 0x28
/* 801B475C 001B16BC  41 82 00 08 */	beq lbl_801B4764
/* 801B4760 001B16C0  38 81 00 0C */	addi r4, r1, 0xc
lbl_801B4764:
/* 801B4764 001B16C4  80 1F 00 04 */	lwz r0, 4(r31)
/* 801B4768 001B16C8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801B476C 001B16CC  54 00 18 38 */	slwi r0, r0, 3
/* 801B4770 001B16D0  80 84 00 00 */	lwz r4, 0(r4)
/* 801B4774 001B16D4  7C 03 02 14 */	add r0, r3, r0
/* 801B4778 001B16D8  7C 04 00 40 */	cmplw r4, r0
/* 801B477C 001B16DC  90 81 00 30 */	stw r4, 0x30(r1)
/* 801B4780 001B16E0  41 82 00 18 */	beq lbl_801B4798
/* 801B4784 001B16E4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 801B4788 001B16E8  7F E4 FB 78 */	mr r4, r31
/* 801B478C 001B16EC  38 61 00 20 */	addi r3, r1, 0x20
/* 801B4790 001B16F0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801B4794 001B16F4  48 00 00 19 */	bl sub_801b47ac
lbl_801B4798:
/* 801B4798 001B16F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B479C 001B16FC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 801B47A0 001B1700  7C 08 03 A6 */	mtlr r0
/* 801B47A4 001B1704  38 21 00 50 */	addi r1, r1, 0x50
/* 801B47A8 001B1708  4E 80 00 20 */	blr

.global sub_801b47ac
sub_801b47ac:
/* 801B47AC 001B170C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B47B0 001B1710  7C 08 02 A6 */	mflr r0
/* 801B47B4 001B1714  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B47B8 001B1718  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B47BC 001B171C  7C 7F 1B 78 */	mr r31, r3
/* 801B47C0 001B1720  80 C5 00 00 */	lwz r6, 0(r5)
/* 801B47C4 001B1724  80 05 00 00 */	lwz r0, 0(r5)
/* 801B47C8 001B1728  38 A1 00 10 */	addi r5, r1, 0x10
/* 801B47CC 001B172C  38 E6 00 08 */	addi r7, r6, 8
/* 801B47D0 001B1730  38 C1 00 0C */	addi r6, r1, 0xc
/* 801B47D4 001B1734  90 E1 00 08 */	stw r7, 8(r1)
/* 801B47D8 001B1738  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801B47DC 001B173C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B47E0 001B1740  48 00 00 19 */	bl sub_801b47f8
/* 801B47E4 001B1744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B47E8 001B1748  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B47EC 001B174C  7C 08 03 A6 */	mtlr r0
/* 801B47F0 001B1750  38 21 00 20 */	addi r1, r1, 0x20
/* 801B47F4 001B1754  4E 80 00 20 */	blr

.global sub_801b47f8
sub_801b47f8:
/* 801B47F8 001B1758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B47FC 001B175C  80 E5 00 00 */	lwz r7, 0(r5)
/* 801B4800 001B1760  80 06 00 00 */	lwz r0, 0(r6)
/* 801B4804 001B1764  90 E1 00 0C */	stw r7, 0xc(r1)
/* 801B4808 001B1768  90 01 00 08 */	stw r0, 8(r1)
/* 801B480C 001B176C  48 00 00 08 */	b lbl_801B4814
lbl_801B4810:
/* 801B4810 001B1770  38 E7 00 08 */	addi r7, r7, 8
lbl_801B4814:
/* 801B4814 001B1774  7C 07 00 40 */	cmplw r7, r0
/* 801B4818 001B1778  40 82 FF F8 */	bne lbl_801B4810
/* 801B481C 001B177C  81 04 00 0C */	lwz r8, 0xc(r4)
/* 801B4820 001B1780  80 05 00 00 */	lwz r0, 0(r5)
/* 801B4824 001B1784  80 E6 00 00 */	lwz r7, 0(r6)
/* 801B4828 001B1788  7C 08 00 50 */	subf r0, r8, r0
/* 801B482C 001B178C  7C 00 1E 70 */	srawi r0, r0, 3
/* 801B4830 001B1790  7C C0 01 94 */	addze r6, r0
/* 801B4834 001B1794  54 C0 18 38 */	slwi r0, r6, 3
/* 801B4838 001B1798  7C C9 33 78 */	mr r9, r6
/* 801B483C 001B179C  7D 08 02 14 */	add r8, r8, r0
/* 801B4840 001B17A0  48 00 00 28 */	b lbl_801B4868
lbl_801B4844:
/* 801B4844 001B17A4  28 08 00 00 */	cmplwi r8, 0
/* 801B4848 001B17A8  41 82 00 14 */	beq lbl_801B485C
/* 801B484C 001B17AC  A0 07 00 00 */	lhz r0, 0(r7)
/* 801B4850 001B17B0  B0 08 00 00 */	sth r0, 0(r8)
/* 801B4854 001B17B4  C0 07 00 04 */	lfs f0, 4(r7)
/* 801B4858 001B17B8  D0 08 00 04 */	stfs f0, 4(r8)
lbl_801B485C:
/* 801B485C 001B17BC  39 08 00 08 */	addi r8, r8, 8
/* 801B4860 001B17C0  39 29 00 01 */	addi r9, r9, 1
/* 801B4864 001B17C4  38 E7 00 08 */	addi r7, r7, 8
lbl_801B4868:
/* 801B4868 001B17C8  80 04 00 04 */	lwz r0, 4(r4)
/* 801B486C 001B17CC  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 801B4870 001B17D0  54 00 18 38 */	slwi r0, r0, 3
/* 801B4874 001B17D4  7C 06 02 14 */	add r0, r6, r0
/* 801B4878 001B17D8  7C 07 00 40 */	cmplw r7, r0
/* 801B487C 001B17DC  40 82 FF C8 */	bne lbl_801B4844
/* 801B4880 001B17E0  91 24 00 04 */	stw r9, 4(r4)
/* 801B4884 001B17E4  80 05 00 00 */	lwz r0, 0(r5)
/* 801B4888 001B17E8  90 03 00 00 */	stw r0, 0(r3)
/* 801B488C 001B17EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4890 001B17F0  4E 80 00 20 */	blr

.global sub_801b4894
sub_801b4894:
/* 801B4894 001B17F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B4898 001B17F8  7C 08 02 A6 */	mflr r0
/* 801B489C 001B17FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B48A0 001B1800  38 A1 00 18 */	addi r5, r1, 0x18
/* 801B48A4 001B1804  38 C1 00 48 */	addi r6, r1, 0x48
/* 801B48A8 001B1808  DB E1 00 58 */	stfd f31, 0x58(r1)
/* 801B48AC 001B180C  FF E0 08 90 */	fmr f31, f1
/* 801B48B0 001B1810  93 E1 00 54 */	stw r31, 0x54(r1)
/* 801B48B4 001B1814  7C 7F 1B 78 */	mr r31, r3
/* 801B48B8 001B1818  38 61 00 10 */	addi r3, r1, 0x10
/* 801B48BC 001B181C  A1 04 00 00 */	lhz r8, 0(r4)
/* 801B48C0 001B1820  38 81 00 14 */	addi r4, r1, 0x14
/* 801B48C4 001B1824  D3 E1 00 4C */	stfs f31, 0x4c(r1)
/* 801B48C8 001B1828  B1 01 00 48 */	sth r8, 0x48(r1)
/* 801B48CC 001B182C  80 1F 00 04 */	lwz r0, 4(r31)
/* 801B48D0 001B1830  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 801B48D4 001B1834  54 00 18 38 */	slwi r0, r0, 3
/* 801B48D8 001B1838  B1 01 00 08 */	sth r8, 8(r1)
/* 801B48DC 001B183C  7C E7 02 14 */	add r7, r7, r0
/* 801B48E0 001B1840  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 801B48E4 001B1844  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801B48E8 001B1848  90 E1 00 38 */	stw r7, 0x38(r1)
/* 801B48EC 001B184C  90 01 00 40 */	stw r0, 0x40(r1)
/* 801B48F0 001B1850  90 E1 00 18 */	stw r7, 0x18(r1)
/* 801B48F4 001B1854  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B48F8 001B1858  48 00 04 15 */	bl "lower_bound<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,18CEnergyDrainSource>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC18CEnergyDrainSource"
/* 801B48FC 001B185C  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 801B4900 001B1860  38 80 00 00 */	li r4, 0
/* 801B4904 001B1864  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 801B4908 001B1868  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801B490C 001B186C  7C 05 00 40 */	cmplw r5, r0
/* 801B4910 001B1870  41 82 00 18 */	beq lbl_801B4928
/* 801B4914 001B1874  A0 61 00 48 */	lhz r3, 0x48(r1)
/* 801B4918 001B1878  A0 05 00 00 */	lhz r0, 0(r5)
/* 801B491C 001B187C  7C 03 00 40 */	cmplw r3, r0
/* 801B4920 001B1880  41 80 00 08 */	blt lbl_801B4928
/* 801B4924 001B1884  38 80 00 01 */	li r4, 1
lbl_801B4928:
/* 801B4928 001B1888  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801B492C 001B188C  38 81 00 3C */	addi r4, r1, 0x3c
/* 801B4930 001B1890  41 82 00 08 */	beq lbl_801B4938
/* 801B4934 001B1894  38 81 00 0C */	addi r4, r1, 0xc
lbl_801B4938:
/* 801B4938 001B1898  80 BF 00 04 */	lwz r5, 4(r31)
/* 801B493C 001B189C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801B4940 001B18A0  54 A0 18 38 */	slwi r0, r5, 3
/* 801B4944 001B18A4  80 84 00 00 */	lwz r4, 0(r4)
/* 801B4948 001B18A8  7C E3 02 14 */	add r7, r3, r0
/* 801B494C 001B18AC  7C 04 38 40 */	cmplw r4, r7
/* 801B4950 001B18B0  41 82 00 10 */	beq lbl_801B4960
/* 801B4954 001B18B4  D3 E4 00 04 */	stfs f31, 4(r4)
/* 801B4958 001B18B8  38 60 00 01 */	li r3, 1
/* 801B495C 001B18BC  48 00 00 64 */	b lbl_801B49C0
lbl_801B4960:
/* 801B4960 001B18C0  80 1F 00 08 */	lwz r0, 8(r31)
/* 801B4964 001B18C4  7C 05 00 00 */	cmpw r5, r0
/* 801B4968 001B18C8  40 80 00 54 */	bge lbl_801B49BC
/* 801B496C 001B18CC  90 E1 00 28 */	stw r7, 0x28(r1)
/* 801B4970 001B18D0  38 61 00 34 */	addi r3, r1, 0x34
/* 801B4974 001B18D4  38 81 00 30 */	addi r4, r1, 0x30
/* 801B4978 001B18D8  38 A1 00 28 */	addi r5, r1, 0x28
/* 801B497C 001B18DC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 801B4980 001B18E0  38 C1 00 48 */	addi r6, r1, 0x48
/* 801B4984 001B18E4  90 E1 00 24 */	stw r7, 0x24(r1)
/* 801B4988 001B18E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B498C 001B18EC  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B4990 001B18F0  48 00 03 7D */	bl "lower_bound<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,18CEnergyDrainSource>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC18CEnergyDrainSource"
/* 801B4994 001B18F4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B4998 001B18F8  7F E4 FB 78 */	mr r4, r31
/* 801B499C 001B18FC  38 61 00 20 */	addi r3, r1, 0x20
/* 801B49A0 001B1900  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801B49A4 001B1904  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B49A8 001B1908  38 C1 00 48 */	addi r6, r1, 0x48
/* 801B49AC 001B190C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B49B0 001B1910  48 00 00 29 */	bl sub_801b49d8
/* 801B49B4 001B1914  38 60 00 01 */	li r3, 1
/* 801B49B8 001B1918  48 00 00 08 */	b lbl_801B49C0
lbl_801B49BC:
/* 801B49BC 001B191C  38 60 00 00 */	li r3, 0
lbl_801B49C0:
/* 801B49C0 001B1920  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B49C4 001B1924  CB E1 00 58 */	lfd f31, 0x58(r1)
/* 801B49C8 001B1928  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 801B49CC 001B192C  7C 08 03 A6 */	mtlr r0
/* 801B49D0 001B1930  38 21 00 60 */	addi r1, r1, 0x60
/* 801B49D4 001B1934  4E 80 00 20 */	blr

.global sub_801b49d8
sub_801b49d8:
/* 801B49D8 001B1938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B49DC 001B193C  7C 08 02 A6 */	mflr r0
/* 801B49E0 001B1940  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B49E4 001B1944  38 00 00 00 */	li r0, 0
/* 801B49E8 001B1948  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B49EC 001B194C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B49F0 001B1950  7C 9E 23 78 */	mr r30, r4
/* 801B49F4 001B1954  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801B49F8 001B1958  7C 7D 1B 78 */	mr r29, r3
/* 801B49FC 001B195C  7F C3 F3 78 */	mr r3, r30
/* 801B4A00 001B1960  80 84 00 0C */	lwz r4, 0xc(r4)
/* 801B4A04 001B1964  80 E5 00 00 */	lwz r7, 0(r5)
/* 801B4A08 001B1968  38 A0 00 01 */	li r5, 1
/* 801B4A0C 001B196C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 801B4A10 001B1970  7C 84 38 50 */	subf r4, r4, r7
/* 801B4A14 001B1974  90 C1 00 0C */	stw r6, 0xc(r1)
/* 801B4A18 001B1978  7C 84 1E 70 */	srawi r4, r4, 3
/* 801B4A1C 001B197C  7F E4 01 94 */	addze r31, r4
/* 801B4A20 001B1980  38 C1 00 0C */	addi r6, r1, 0xc
/* 801B4A24 001B1984  90 01 00 18 */	stw r0, 0x18(r1)
/* 801B4A28 001B1988  38 81 00 08 */	addi r4, r1, 8
/* 801B4A2C 001B198C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B4A30 001B1990  90 E1 00 08 */	stw r7, 8(r1)
/* 801B4A34 001B1994  48 00 00 31 */	bl sub_801b4a64
/* 801B4A38 001B1998  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801B4A3C 001B199C  57 E0 18 38 */	slwi r0, r31, 3
/* 801B4A40 001B19A0  7C 63 02 14 */	add r3, r3, r0
/* 801B4A44 001B19A4  90 7D 00 00 */	stw r3, 0(r29)
/* 801B4A48 001B19A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B4A4C 001B19AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B4A50 001B19B0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B4A54 001B19B4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801B4A58 001B19B8  7C 08 03 A6 */	mtlr r0
/* 801B4A5C 001B19BC  38 21 00 30 */	addi r1, r1, 0x30
/* 801B4A60 001B19C0  4E 80 00 20 */	blr

.global sub_801b4a64
sub_801b4a64:
/* 801B4A64 001B19C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B4A68 001B19C8  7C 08 02 A6 */	mflr r0
/* 801B4A6C 001B19CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B4A70 001B19D0  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 801B4A74 001B19D4  7C 7A 1B 78 */	mr r26, r3
/* 801B4A78 001B19D8  7C 99 23 78 */	mr r25, r4
/* 801B4A7C 001B19DC  7C BB 2B 78 */	mr r27, r5
/* 801B4A80 001B19E0  80 63 00 04 */	lwz r3, 4(r3)
/* 801B4A84 001B19E4  80 9A 00 08 */	lwz r4, 8(r26)
/* 801B4A88 001B19E8  7C A3 DA 14 */	add r5, r3, r27
/* 801B4A8C 001B19EC  80 FA 00 0C */	lwz r7, 0xc(r26)
/* 801B4A90 001B19F0  7C 05 20 00 */	cmpw r5, r4
/* 801B4A94 001B19F4  83 C6 00 00 */	lwz r30, 0(r6)
/* 801B4A98 001B19F8  7C FD 3B 78 */	mr r29, r7
/* 801B4A9C 001B19FC  41 81 00 B0 */	bgt lbl_801B4B4C
/* 801B4AA0 001B1A00  80 19 00 00 */	lwz r0, 0(r25)
/* 801B4AA4 001B1A04  57 64 18 38 */	slwi r4, r27, 3
/* 801B4AA8 001B1A08  7C 07 00 50 */	subf r0, r7, r0
/* 801B4AAC 001B1A0C  7C 00 1E 70 */	srawi r0, r0, 3
/* 801B4AB0 001B1A10  7C A0 01 94 */	addze r5, r0
/* 801B4AB4 001B1A14  7C 65 18 50 */	subf r3, r5, r3
/* 801B4AB8 001B1A18  35 03 FF FF */	addic. r8, r3, -1
/* 801B4ABC 001B1A1C  54 A0 18 38 */	slwi r0, r5, 3
/* 801B4AC0 001B1A20  7C C7 02 14 */	add r6, r7, r0
/* 801B4AC4 001B1A24  55 03 18 38 */	slwi r3, r8, 3
/* 801B4AC8 001B1A28  38 08 00 01 */	addi r0, r8, 1
/* 801B4ACC 001B1A2C  7C 84 1A 14 */	add r4, r4, r3
/* 801B4AD0 001B1A30  7C 86 22 14 */	add r4, r6, r4
/* 801B4AD4 001B1A34  7C 09 03 A6 */	mtctr r0
/* 801B4AD8 001B1A38  41 80 00 38 */	blt lbl_801B4B10
lbl_801B4ADC:
/* 801B4ADC 001B1A3C  7C 05 42 14 */	add r0, r5, r8
/* 801B4AE0 001B1A40  28 04 00 00 */	cmplwi r4, 0
/* 801B4AE4 001B1A44  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 801B4AE8 001B1A48  54 00 18 38 */	slwi r0, r0, 3
/* 801B4AEC 001B1A4C  7C 63 02 14 */	add r3, r3, r0
/* 801B4AF0 001B1A50  41 82 00 14 */	beq lbl_801B4B04
/* 801B4AF4 001B1A54  A0 03 00 00 */	lhz r0, 0(r3)
/* 801B4AF8 001B1A58  B0 04 00 00 */	sth r0, 0(r4)
/* 801B4AFC 001B1A5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B4B00 001B1A60  D0 04 00 04 */	stfs f0, 4(r4)
lbl_801B4B04:
/* 801B4B04 001B1A64  38 84 FF F8 */	addi r4, r4, -8
/* 801B4B08 001B1A68  39 08 FF FF */	addi r8, r8, -1
/* 801B4B0C 001B1A6C  42 00 FF D0 */	bdnz lbl_801B4ADC
lbl_801B4B10:
/* 801B4B10 001B1A70  7F 69 03 A6 */	mtctr r27
/* 801B4B14 001B1A74  2C 1B 00 00 */	cmpwi r27, 0
/* 801B4B18 001B1A78  40 81 00 24 */	ble lbl_801B4B3C
lbl_801B4B1C:
/* 801B4B1C 001B1A7C  28 06 00 00 */	cmplwi r6, 0
/* 801B4B20 001B1A80  41 82 00 14 */	beq lbl_801B4B34
/* 801B4B24 001B1A84  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801B4B28 001B1A88  B0 06 00 00 */	sth r0, 0(r6)
/* 801B4B2C 001B1A8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801B4B30 001B1A90  D0 06 00 04 */	stfs f0, 4(r6)
lbl_801B4B34:
/* 801B4B34 001B1A94  38 C6 00 08 */	addi r6, r6, 8
/* 801B4B38 001B1A98  42 00 FF E4 */	bdnz lbl_801B4B1C
lbl_801B4B3C:
/* 801B4B3C 001B1A9C  80 1A 00 04 */	lwz r0, 4(r26)
/* 801B4B40 001B1AA0  7C 00 DA 14 */	add r0, r0, r27
/* 801B4B44 001B1AA4  90 1A 00 04 */	stw r0, 4(r26)
/* 801B4B48 001B1AA8  48 00 01 68 */	b lbl_801B4CB0
lbl_801B4B4C:
/* 801B4B4C 001B1AAC  2C 04 00 00 */	cmpwi r4, 0
/* 801B4B50 001B1AB0  38 00 00 04 */	li r0, 4
/* 801B4B54 001B1AB4  41 82 00 08 */	beq lbl_801B4B5C
/* 801B4B58 001B1AB8  54 80 08 3C */	slwi r0, r4, 1
lbl_801B4B5C:
/* 801B4B5C 001B1ABC  7C 1C 03 78 */	mr r28, r0
/* 801B4B60 001B1AC0  48 00 00 08 */	b lbl_801B4B68
lbl_801B4B64:
/* 801B4B64 001B1AC4  57 9C 08 3C */	slwi r28, r28, 1
lbl_801B4B68:
/* 801B4B68 001B1AC8  7C 1C 28 00 */	cmpw r28, r5
/* 801B4B6C 001B1ACC  41 80 FF F8 */	blt lbl_801B4B64
/* 801B4B70 001B1AD0  57 83 18 39 */	rlwinm. r3, r28, 3, 0, 0x1c
/* 801B4B74 001B1AD4  40 82 00 0C */	bne lbl_801B4B80
/* 801B4B78 001B1AD8  3B E0 00 00 */	li r31, 0
/* 801B4B7C 001B1ADC  48 00 00 18 */	b lbl_801B4B94
lbl_801B4B80:
/* 801B4B80 001B1AE0  3C 80 80 3D */	lis r4, lbl_803D1630@ha
/* 801B4B84 001B1AE4  38 A0 00 00 */	li r5, 0
/* 801B4B88 001B1AE8  38 84 16 30 */	addi r4, r4, lbl_803D1630@l
/* 801B4B8C 001B1AEC  48 16 0C 8D */	bl __nwa__FUlPCcPCc
/* 801B4B90 001B1AF0  7C 7F 1B 78 */	mr r31, r3
lbl_801B4B94:
/* 801B4B94 001B1AF4  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 801B4B98 001B1AF8  7F E6 FB 78 */	mr r6, r31
/* 801B4B9C 001B1AFC  80 19 00 00 */	lwz r0, 0(r25)
/* 801B4BA0 001B1B00  38 E0 00 00 */	li r7, 0
/* 801B4BA4 001B1B04  38 A0 00 00 */	li r5, 0
/* 801B4BA8 001B1B08  7C 03 00 50 */	subf r0, r3, r0
/* 801B4BAC 001B1B0C  7C 00 1E 70 */	srawi r0, r0, 3
/* 801B4BB0 001B1B10  7C 80 01 95 */	addze. r4, r0
/* 801B4BB4 001B1B14  7C 89 03 A6 */	mtctr r4
/* 801B4BB8 001B1B18  40 81 00 34 */	ble lbl_801B4BEC
lbl_801B4BBC:
/* 801B4BBC 001B1B1C  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 801B4BC0 001B1B20  28 06 00 00 */	cmplwi r6, 0
/* 801B4BC4 001B1B24  7C 60 2A 14 */	add r3, r0, r5
/* 801B4BC8 001B1B28  41 82 00 14 */	beq lbl_801B4BDC
/* 801B4BCC 001B1B2C  A0 03 00 00 */	lhz r0, 0(r3)
/* 801B4BD0 001B1B30  B0 06 00 00 */	sth r0, 0(r6)
/* 801B4BD4 001B1B34  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B4BD8 001B1B38  D0 06 00 04 */	stfs f0, 4(r6)
lbl_801B4BDC:
/* 801B4BDC 001B1B3C  38 C6 00 08 */	addi r6, r6, 8
/* 801B4BE0 001B1B40  38 E7 00 01 */	addi r7, r7, 1
/* 801B4BE4 001B1B44  38 A5 00 08 */	addi r5, r5, 8
/* 801B4BE8 001B1B48  42 00 FF D4 */	bdnz lbl_801B4BBC
lbl_801B4BEC:
/* 801B4BEC 001B1B4C  54 E0 18 38 */	slwi r0, r7, 3
/* 801B4BF0 001B1B50  7C 7F 02 14 */	add r3, r31, r0
/* 801B4BF4 001B1B54  7F 69 03 A6 */	mtctr r27
/* 801B4BF8 001B1B58  2C 1B 00 00 */	cmpwi r27, 0
/* 801B4BFC 001B1B5C  40 81 00 28 */	ble lbl_801B4C24
lbl_801B4C00:
/* 801B4C00 001B1B60  28 03 00 00 */	cmplwi r3, 0
/* 801B4C04 001B1B64  41 82 00 14 */	beq lbl_801B4C18
/* 801B4C08 001B1B68  A0 1E 00 00 */	lhz r0, 0(r30)
/* 801B4C0C 001B1B6C  B0 03 00 00 */	sth r0, 0(r3)
/* 801B4C10 001B1B70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 801B4C14 001B1B74  D0 03 00 04 */	stfs f0, 4(r3)
lbl_801B4C18:
/* 801B4C18 001B1B78  38 63 00 08 */	addi r3, r3, 8
/* 801B4C1C 001B1B7C  38 E7 00 01 */	addi r7, r7, 1
/* 801B4C20 001B1B80  42 00 FF E0 */	bdnz lbl_801B4C00
lbl_801B4C24:
/* 801B4C24 001B1B84  54 E0 18 38 */	slwi r0, r7, 3
/* 801B4C28 001B1B88  7C 86 23 78 */	mr r6, r4
/* 801B4C2C 001B1B8C  54 84 18 38 */	slwi r4, r4, 3
/* 801B4C30 001B1B90  7C BF 02 14 */	add r5, r31, r0
/* 801B4C34 001B1B94  48 00 00 30 */	b lbl_801B4C64
lbl_801B4C38:
/* 801B4C38 001B1B98  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 801B4C3C 001B1B9C  28 05 00 00 */	cmplwi r5, 0
/* 801B4C40 001B1BA0  7C 60 22 14 */	add r3, r0, r4
/* 801B4C44 001B1BA4  41 82 00 14 */	beq lbl_801B4C58
/* 801B4C48 001B1BA8  A0 03 00 00 */	lhz r0, 0(r3)
/* 801B4C4C 001B1BAC  B0 05 00 00 */	sth r0, 0(r5)
/* 801B4C50 001B1BB0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801B4C54 001B1BB4  D0 05 00 04 */	stfs f0, 4(r5)
lbl_801B4C58:
/* 801B4C58 001B1BB8  38 A5 00 08 */	addi r5, r5, 8
/* 801B4C5C 001B1BBC  38 84 00 08 */	addi r4, r4, 8
/* 801B4C60 001B1BC0  38 C6 00 01 */	addi r6, r6, 1
lbl_801B4C64:
/* 801B4C64 001B1BC4  80 1A 00 04 */	lwz r0, 4(r26)
/* 801B4C68 001B1BC8  7C 06 00 00 */	cmpw r6, r0
/* 801B4C6C 001B1BCC  41 80 FF CC */	blt lbl_801B4C38
/* 801B4C70 001B1BD0  54 00 18 38 */	slwi r0, r0, 3
/* 801B4C74 001B1BD4  7F A3 EB 78 */	mr r3, r29
/* 801B4C78 001B1BD8  7C 1D 02 14 */	add r0, r29, r0
/* 801B4C7C 001B1BDC  48 00 00 08 */	b lbl_801B4C84
lbl_801B4C80:
/* 801B4C80 001B1BE0  38 63 00 08 */	addi r3, r3, 8
lbl_801B4C84:
/* 801B4C84 001B1BE4  7C 03 00 40 */	cmplw r3, r0
/* 801B4C88 001B1BE8  40 82 FF F8 */	bne lbl_801B4C80
/* 801B4C8C 001B1BEC  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 801B4C90 001B1BF0  28 03 00 00 */	cmplwi r3, 0
/* 801B4C94 001B1BF4  41 82 00 08 */	beq lbl_801B4C9C
/* 801B4C98 001B1BF8  48 16 0C 99 */	bl Free__7CMemoryFPCv
lbl_801B4C9C:
/* 801B4C9C 001B1BFC  93 FA 00 0C */	stw r31, 0xc(r26)
/* 801B4CA0 001B1C00  93 9A 00 08 */	stw r28, 8(r26)
/* 801B4CA4 001B1C04  80 1A 00 04 */	lwz r0, 4(r26)
/* 801B4CA8 001B1C08  7C 00 DA 14 */	add r0, r0, r27
/* 801B4CAC 001B1C0C  90 1A 00 04 */	stw r0, 4(r26)
lbl_801B4CB0:
/* 801B4CB0 001B1C10  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 801B4CB4 001B1C14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B4CB8 001B1C18  7C 08 03 A6 */	mtlr r0
/* 801B4CBC 001B1C1C  38 21 00 30 */	addi r1, r1, 0x30
/* 801B4CC0 001B1C20  4E 80 00 20 */	blr

.global __ct__18CPlayerEnergyDrainFUi
__ct__18CPlayerEnergyDrainFUi:
/* 801B4CC4 001B1C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4CC8 001B1C28  7C 08 02 A6 */	mflr r0
/* 801B4CCC 001B1C2C  C0 02 A9 40 */	lfs f0, lbl_805AC660@sda21(r2)
/* 801B4CD0 001B1C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4CD4 001B1C34  38 00 00 00 */	li r0, 0
/* 801B4CD8 001B1C38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4CDC 001B1C3C  7C 7F 1B 78 */	mr r31, r3
/* 801B4CE0 001B1C40  90 03 00 04 */	stw r0, 4(r3)
/* 801B4CE4 001B1C44  90 03 00 08 */	stw r0, 8(r3)
/* 801B4CE8 001B1C48  90 03 00 0C */	stw r0, 0xc(r3)
/* 801B4CEC 001B1C4C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801B4CF0 001B1C50  48 00 00 DD */	bl "reserve__Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>Fi"
/* 801B4CF4 001B1C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4CF8 001B1C58  7F E3 FB 78 */	mr r3, r31
/* 801B4CFC 001B1C5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4D00 001B1C60  7C 08 03 A6 */	mtlr r0
/* 801B4D04 001B1C64  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4D08 001B1C68  4E 80 00 20 */	blr

.global "lower_bound<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,18CEnergyDrainSource>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC18CEnergyDrainSource"
"lower_bound<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,18CEnergyDrainSource>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>RC18CEnergyDrainSource":
/* 801B4D0C 001B1C6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B4D10 001B1C70  7C 08 02 A6 */	mflr r0
/* 801B4D14 001B1C74  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B4D18 001B1C78  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 801B4D1C 001B1C7C  7C 9F 23 78 */	mr r31, r4
/* 801B4D20 001B1C80  7C 7E 1B 78 */	mr r30, r3
/* 801B4D24 001B1C84  7C DB 33 78 */	mr r27, r6
/* 801B4D28 001B1C88  38 61 00 0C */	addi r3, r1, 0xc
/* 801B4D2C 001B1C8C  80 85 00 00 */	lwz r4, 0(r5)
/* 801B4D30 001B1C90  80 1F 00 00 */	lwz r0, 0(r31)
/* 801B4D34 001B1C94  90 81 00 08 */	stw r4, 8(r1)
/* 801B4D38 001B1C98  38 81 00 08 */	addi r4, r1, 8
/* 801B4D3C 001B1C9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B4D40 001B1CA0  48 00 01 C1 */	bl "distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
/* 801B4D44 001B1CA4  80 1F 00 00 */	lwz r0, 0(r31)
/* 801B4D48 001B1CA8  7C 7D 1B 78 */	mr r29, r3
/* 801B4D4C 001B1CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B4D50 001B1CB0  48 00 00 58 */	b lbl_801B4DA8
lbl_801B4D54:
/* 801B4D54 001B1CB4  57 A3 0F FE */	srwi r3, r29, 0x1f
/* 801B4D58 001B1CB8  80 1F 00 00 */	lwz r0, 0(r31)
/* 801B4D5C 001B1CBC  7C 83 EA 14 */	add r4, r3, r29
/* 801B4D60 001B1CC0  38 61 00 10 */	addi r3, r1, 0x10
/* 801B4D64 001B1CC4  7C 9C 0E 70 */	srawi r28, r4, 1
/* 801B4D68 001B1CC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B4D6C 001B1CCC  7F 84 E3 78 */	mr r4, r28
/* 801B4D70 001B1CD0  48 00 01 51 */	bl "advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
/* 801B4D74 001B1CD4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801B4D78 001B1CD8  A0 1B 00 00 */	lhz r0, 0(r27)
/* 801B4D7C 001B1CDC  A0 64 00 00 */	lhz r3, 0(r4)
/* 801B4D80 001B1CE0  7C 03 00 40 */	cmplw r3, r0
/* 801B4D84 001B1CE4  40 80 00 20 */	bge lbl_801B4DA4
/* 801B4D88 001B1CE8  90 9F 00 00 */	stw r4, 0(r31)
/* 801B4D8C 001B1CEC  7C 7C E8 50 */	subf r3, r28, r29
/* 801B4D90 001B1CF0  3B A3 FF FF */	addi r29, r3, -1
/* 801B4D94 001B1CF4  80 7F 00 00 */	lwz r3, 0(r31)
/* 801B4D98 001B1CF8  38 03 00 08 */	addi r0, r3, 8
/* 801B4D9C 001B1CFC  90 1F 00 00 */	stw r0, 0(r31)
/* 801B4DA0 001B1D00  48 00 00 08 */	b lbl_801B4DA8
lbl_801B4DA4:
/* 801B4DA4 001B1D04  7F 9D E3 78 */	mr r29, r28
lbl_801B4DA8:
/* 801B4DA8 001B1D08  2C 1D 00 00 */	cmpwi r29, 0
/* 801B4DAC 001B1D0C  41 81 FF A8 */	bgt lbl_801B4D54
/* 801B4DB0 001B1D10  80 1F 00 00 */	lwz r0, 0(r31)
/* 801B4DB4 001B1D14  90 1E 00 00 */	stw r0, 0(r30)
/* 801B4DB8 001B1D18  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 801B4DBC 001B1D1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B4DC0 001B1D20  7C 08 03 A6 */	mtlr r0
/* 801B4DC4 001B1D24  38 21 00 30 */	addi r1, r1, 0x30
/* 801B4DC8 001B1D28  4E 80 00 20 */	blr

.global "reserve__Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>Fi":
/* 801B4DCC 001B1D2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B4DD0 001B1D30  7C 08 02 A6 */	mflr r0
/* 801B4DD4 001B1D34  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B4DD8 001B1D38  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801B4DDC 001B1D3C  7C 9F 23 78 */	mr r31, r4
/* 801B4DE0 001B1D40  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801B4DE4 001B1D44  7C 7E 1B 78 */	mr r30, r3
/* 801B4DE8 001B1D48  93 A1 00 24 */	stw r29, 0x24(r1)
/* 801B4DEC 001B1D4C  80 03 00 08 */	lwz r0, 8(r3)
/* 801B4DF0 001B1D50  7C 1F 00 00 */	cmpw r31, r0
/* 801B4DF4 001B1D54  40 81 00 B0 */	ble lbl_801B4EA4
/* 801B4DF8 001B1D58  57 E3 18 39 */	rlwinm. r3, r31, 3, 0, 0x1c
/* 801B4DFC 001B1D5C  40 82 00 0C */	bne lbl_801B4E08
/* 801B4E00 001B1D60  3B A0 00 00 */	li r29, 0
/* 801B4E04 001B1D64  48 00 00 18 */	b lbl_801B4E1C
lbl_801B4E08:
/* 801B4E08 001B1D68  3C 80 80 3D */	lis r4, lbl_803D1630@ha
/* 801B4E0C 001B1D6C  38 A0 00 00 */	li r5, 0
/* 801B4E10 001B1D70  38 84 16 30 */	addi r4, r4, lbl_803D1630@l
/* 801B4E14 001B1D74  48 16 0A 05 */	bl __nwa__FUlPCcPCc
/* 801B4E18 001B1D78  7C 7D 1B 78 */	mr r29, r3
lbl_801B4E1C:
/* 801B4E1C 001B1D7C  80 1E 00 04 */	lwz r0, 4(r30)
/* 801B4E20 001B1D80  7F A4 EB 78 */	mr r4, r29
/* 801B4E24 001B1D84  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 801B4E28 001B1D88  54 00 18 38 */	slwi r0, r0, 3
/* 801B4E2C 001B1D8C  7C 65 02 14 */	add r3, r5, r0
/* 801B4E30 001B1D90  90 A1 00 10 */	stw r5, 0x10(r1)
/* 801B4E34 001B1D94  90 61 00 08 */	stw r3, 8(r1)
/* 801B4E38 001B1D98  90 61 00 0C */	stw r3, 0xc(r1)
/* 801B4E3C 001B1D9C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 801B4E40 001B1DA0  48 00 00 24 */	b lbl_801B4E64
lbl_801B4E44:
/* 801B4E44 001B1DA4  28 04 00 00 */	cmplwi r4, 0
/* 801B4E48 001B1DA8  41 82 00 14 */	beq lbl_801B4E5C
/* 801B4E4C 001B1DAC  A0 05 00 00 */	lhz r0, 0(r5)
/* 801B4E50 001B1DB0  B0 04 00 00 */	sth r0, 0(r4)
/* 801B4E54 001B1DB4  C0 05 00 04 */	lfs f0, 4(r5)
/* 801B4E58 001B1DB8  D0 04 00 04 */	stfs f0, 4(r4)
lbl_801B4E5C:
/* 801B4E5C 001B1DBC  38 84 00 08 */	addi r4, r4, 8
/* 801B4E60 001B1DC0  38 A5 00 08 */	addi r5, r5, 8
lbl_801B4E64:
/* 801B4E64 001B1DC4  7C 05 18 40 */	cmplw r5, r3
/* 801B4E68 001B1DC8  40 82 FF DC */	bne lbl_801B4E44
/* 801B4E6C 001B1DCC  80 1E 00 04 */	lwz r0, 4(r30)
/* 801B4E70 001B1DD0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 801B4E74 001B1DD4  54 00 18 38 */	slwi r0, r0, 3
/* 801B4E78 001B1DD8  7C 64 1B 78 */	mr r4, r3
/* 801B4E7C 001B1DDC  7C 03 02 14 */	add r0, r3, r0
/* 801B4E80 001B1DE0  48 00 00 08 */	b lbl_801B4E88
lbl_801B4E84:
/* 801B4E84 001B1DE4  38 84 00 08 */	addi r4, r4, 8
lbl_801B4E88:
/* 801B4E88 001B1DE8  7C 04 00 40 */	cmplw r4, r0
/* 801B4E8C 001B1DEC  40 82 FF F8 */	bne lbl_801B4E84
/* 801B4E90 001B1DF0  28 03 00 00 */	cmplwi r3, 0
/* 801B4E94 001B1DF4  41 82 00 08 */	beq lbl_801B4E9C
/* 801B4E98 001B1DF8  48 16 0A 99 */	bl Free__7CMemoryFPCv
lbl_801B4E9C:
/* 801B4E9C 001B1DFC  93 BE 00 0C */	stw r29, 0xc(r30)
/* 801B4EA0 001B1E00  93 FE 00 08 */	stw r31, 8(r30)
lbl_801B4EA4:
/* 801B4EA4 001B1E04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B4EA8 001B1E08  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801B4EAC 001B1E0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801B4EB0 001B1E10  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 801B4EB4 001B1E14  7C 08 03 A6 */	mtlr r0
/* 801B4EB8 001B1E18  38 21 00 30 */	addi r1, r1, 0x30
/* 801B4EBC 001B1E1C  4E 80 00 20 */	blr

.global "advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i"
"advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>i":
/* 801B4EC0 001B1E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4EC4 001B1E24  7C 08 02 A6 */	mflr r0
/* 801B4EC8 001B1E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4ECC 001B1E2C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B4ED0 001B1E30  88 01 00 08 */	lbz r0, 8(r1)
/* 801B4ED4 001B1E34  98 01 00 0C */	stb r0, 0xc(r1)
/* 801B4ED8 001B1E38  48 00 00 15 */	bl "__advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
/* 801B4EDC 001B1E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4EE0 001B1E40  7C 08 03 A6 */	mtlr r0
/* 801B4EE4 001B1E44  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4EE8 001B1E48  4E 80 00 20 */	blr

.global "__advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag"
"__advance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>,i>__4rstlFRQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>iQ24rstl26random_access_iterator_tag":
/* 801B4EEC 001B1E4C  80 A3 00 00 */	lwz r5, 0(r3)
/* 801B4EF0 001B1E50  54 80 18 38 */	slwi r0, r4, 3
/* 801B4EF4 001B1E54  7C 05 02 14 */	add r0, r5, r0
/* 801B4EF8 001B1E58  90 03 00 00 */	stw r0, 0(r3)
/* 801B4EFC 001B1E5C  4E 80 00 20 */	blr

.global "distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>"
"distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>":
/* 801B4F00 001B1E60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B4F04 001B1E64  7C 08 02 A6 */	mflr r0
/* 801B4F08 001B1E68  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B4F0C 001B1E6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B4F10 001B1E70  88 E1 00 08 */	lbz r7, 8(r1)
/* 801B4F14 001B1E74  80 C4 00 00 */	lwz r6, 0(r4)
/* 801B4F18 001B1E78  38 81 00 10 */	addi r4, r1, 0x10
/* 801B4F1C 001B1E7C  80 03 00 00 */	lwz r0, 0(r3)
/* 801B4F20 001B1E80  38 61 00 14 */	addi r3, r1, 0x14
/* 801B4F24 001B1E84  90 C1 00 10 */	stw r6, 0x10(r1)
/* 801B4F28 001B1E88  98 E1 00 0C */	stb r7, 0xc(r1)
/* 801B4F2C 001B1E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4F30 001B1E90  48 00 00 15 */	bl "__distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
/* 801B4F34 001B1E94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B4F38 001B1E98  7C 08 03 A6 */	mtlr r0
/* 801B4F3C 001B1E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B4F40 001B1EA0  4E 80 00 20 */	blr

.global "__distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag"
"__distance<Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>>__4rstlFQ24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl130pointer_iterator<18CEnergyDrainSource,Q24rstl55vector<18CEnergyDrainSource,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Q24rstl26random_access_iterator_tag":
/* 801B4F44 001B1EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 801B4F48 001B1EA8  80 04 00 00 */	lwz r0, 0(r4)
/* 801B4F4C 001B1EAC  7C 03 00 50 */	subf r0, r3, r0
/* 801B4F50 001B1EB0  7C 00 1E 70 */	srawi r0, r0, 3
/* 801B4F54 001B1EB4  7C 60 01 94 */	addze r3, r0
/* 801B4F58 001B1EB8  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AC660
lbl_805AC660:
	# ROM: 0x3F8F00
	.4byte 0
	.4byte 0


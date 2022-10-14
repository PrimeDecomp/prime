.include "macros.inc"

.section .data
.balign 8
.global lbl_803E6758
lbl_803E6758:
	# ROM: 0x3E3758
	.4byte 0
	.4byte 0
	.4byte __dt__12CABSReactionFv
	.4byte ApplyHeadTracking__18CAdditiveBodyStateCFv
	.4byte CanShoot__18CAdditiveBodyStateCFv
	.4byte Start__12CABSReactionFR15CBodyControllerR13CStateManager
	.4byte UpdateBody__12CABSReactionFfR15CBodyControllerR13CStateManager
	.4byte Shutdown__12CABSReactionFR15CBodyController

.section .text, "ax"

.global __dt__12CABSReactionFv
__dt__12CABSReactionFv:
/* 801F1540 001EE4A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1544 001EE4A4  7C 08 02 A6 */	mflr r0
/* 801F1548 001EE4A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F154C 001EE4AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1550 001EE4B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F1554 001EE4B4  41 82 00 30 */	beq lbl_801F1584
/* 801F1558 001EE4B8  3C 60 80 3E */	lis r3, lbl_803E6758@ha
/* 801F155C 001EE4BC  38 03 67 58 */	addi r0, r3, lbl_803E6758@l
/* 801F1560 001EE4C0  90 1F 00 00 */	stw r0, 0(r31)
/* 801F1564 001EE4C4  41 82 00 10 */	beq lbl_801F1574
/* 801F1568 001EE4C8  3C 60 80 3E */	lis r3, __vt__18CAdditiveBodyState@ha
/* 801F156C 001EE4CC  38 03 13 50 */	addi r0, r3, __vt__18CAdditiveBodyState@l
/* 801F1570 001EE4D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_801F1574:
/* 801F1574 001EE4D4  7C 80 07 35 */	extsh. r0, r4
/* 801F1578 001EE4D8  40 81 00 0C */	ble lbl_801F1584
/* 801F157C 001EE4DC  7F E3 FB 78 */	mr r3, r31
/* 801F1580 001EE4E0  48 12 43 B1 */	bl Free__7CMemoryFPCv
lbl_801F1584:
/* 801F1584 001EE4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1588 001EE4E8  7F E3 FB 78 */	mr r3, r31
/* 801F158C 001EE4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1590 001EE4F0  7C 08 03 A6 */	mtlr r0
/* 801F1594 001EE4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1598 001EE4F8  4E 80 00 20 */	blr

.global StopAnimation__12CABSReactionFR15CBodyController
StopAnimation__12CABSReactionFR15CBodyController:
/* 801F159C 001EE4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F15A0 001EE500  7C 08 02 A6 */	mflr r0
/* 801F15A4 001EE504  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F15A8 001EE508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F15AC 001EE50C  7C 7F 1B 78 */	mr r31, r3
/* 801F15B0 001EE510  80 03 00 08 */	lwz r0, 8(r3)
/* 801F15B4 001EE514  2C 00 FF FF */	cmpwi r0, -1
/* 801F15B8 001EE518  41 82 00 20 */	beq lbl_801F15D8
/* 801F15BC 001EE51C  80 64 00 00 */	lwz r3, 0(r4)
/* 801F15C0 001EE520  7C 04 03 78 */	mr r4, r0
/* 801F15C4 001EE524  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801F15C8 001EE528  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F15CC 001EE52C  4B E3 8B 8D */	bl DelAdditiveAnimation__9CAnimDataFUi
/* 801F15D0 001EE530  38 00 FF FF */	li r0, -1
/* 801F15D4 001EE534  90 1F 00 08 */	stw r0, 8(r31)
lbl_801F15D8:
/* 801F15D8 001EE538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F15DC 001EE53C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F15E0 001EE540  7C 08 03 A6 */	mtlr r0
/* 801F15E4 001EE544  38 21 00 10 */	addi r1, r1, 0x10
/* 801F15E8 001EE548  4E 80 00 20 */	blr

.global GetBodyStateTransition__12CABSReactionFfR15CBodyController
GetBodyStateTransition__12CABSReactionFfR15CBodyController:
/* 801F15EC 001EE54C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F15F0 001EE550  7C 08 02 A6 */	mflr r0
/* 801F15F4 001EE554  38 64 00 04 */	addi r3, r4, 4
/* 801F15F8 001EE558  38 80 00 1A */	li r4, 0x1a
/* 801F15FC 001EE55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1600 001EE560  4B F3 FE 51 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F1604 001EE564  28 03 00 00 */	cmplwi r3, 0
/* 801F1608 001EE568  41 82 00 18 */	beq lbl_801F1620
/* 801F160C 001EE56C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801F1610 001EE570  2C 00 00 03 */	cmpwi r0, 3
/* 801F1614 001EE574  40 82 00 0C */	bne lbl_801F1620
/* 801F1618 001EE578  38 60 00 18 */	li r3, 0x18
/* 801F161C 001EE57C  48 00 00 08 */	b lbl_801F1624
lbl_801F1620:
/* 801F1620 001EE580  38 60 FF FF */	li r3, -1
lbl_801F1624:
/* 801F1624 001EE584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1628 001EE588  7C 08 03 A6 */	mtlr r0
/* 801F162C 001EE58C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1630 001EE590  4E 80 00 20 */	blr

.global HasIceBreakoutState__15CBodyControllerFv
HasIceBreakoutState__15CBodyControllerFv:
/* 801F1634 001EE594  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801F1638 001EE598  7C 08 02 A6 */	mflr r0
/* 801F163C 001EE59C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801F1640 001EE5A0  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801F1644 001EE5A4  7C 7F 1B 78 */	mr r31, r3
/* 801F1648 001EE5A8  38 61 00 18 */	addi r3, r1, 0x18
/* 801F164C 001EE5AC  48 0F 1A 31 */	bl NoParameter__12CPASAnimParmFv
/* 801F1650 001EE5B0  38 61 00 20 */	addi r3, r1, 0x20
/* 801F1654 001EE5B4  48 0F 1A 29 */	bl NoParameter__12CPASAnimParmFv
/* 801F1658 001EE5B8  38 61 00 28 */	addi r3, r1, 0x28
/* 801F165C 001EE5BC  48 0F 1A 21 */	bl NoParameter__12CPASAnimParmFv
/* 801F1660 001EE5C0  38 61 00 30 */	addi r3, r1, 0x30
/* 801F1664 001EE5C4  48 0F 1A 19 */	bl NoParameter__12CPASAnimParmFv
/* 801F1668 001EE5C8  38 61 00 38 */	addi r3, r1, 0x38
/* 801F166C 001EE5CC  48 0F 1A 11 */	bl NoParameter__12CPASAnimParmFv
/* 801F1670 001EE5D0  38 61 00 40 */	addi r3, r1, 0x40
/* 801F1674 001EE5D4  48 0F 1A 09 */	bl NoParameter__12CPASAnimParmFv
/* 801F1678 001EE5D8  38 61 00 48 */	addi r3, r1, 0x48
/* 801F167C 001EE5DC  48 0F 1A 01 */	bl NoParameter__12CPASAnimParmFv
/* 801F1680 001EE5E0  38 61 00 50 */	addi r3, r1, 0x50
/* 801F1684 001EE5E4  38 80 00 03 */	li r4, 3
/* 801F1688 001EE5E8  48 0F 18 FD */	bl FromEnum__12CPASAnimParmFi
/* 801F168C 001EE5EC  38 61 00 20 */	addi r3, r1, 0x20
/* 801F1690 001EE5F0  38 01 00 18 */	addi r0, r1, 0x18
/* 801F1694 001EE5F4  90 61 00 08 */	stw r3, 8(r1)
/* 801F1698 001EE5F8  38 61 00 58 */	addi r3, r1, 0x58
/* 801F169C 001EE5FC  38 A1 00 50 */	addi r5, r1, 0x50
/* 801F16A0 001EE600  38 C1 00 48 */	addi r6, r1, 0x48
/* 801F16A4 001EE604  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F16A8 001EE608  38 E1 00 40 */	addi r7, r1, 0x40
/* 801F16AC 001EE60C  39 01 00 38 */	addi r8, r1, 0x38
/* 801F16B0 001EE610  39 21 00 30 */	addi r9, r1, 0x30
/* 801F16B4 001EE614  39 41 00 28 */	addi r10, r1, 0x28
/* 801F16B8 001EE618  38 80 00 18 */	li r4, 0x18
/* 801F16BC 001EE61C  4B E8 BC 09 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801F16C0 001EE620  7F E3 FB 78 */	mr r3, r31
/* 801F16C4 001EE624  4B F4 8D 91 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801F16C8 001EE628  7C 60 1B 78 */	mr r0, r3
/* 801F16CC 001EE62C  38 61 00 10 */	addi r3, r1, 0x10
/* 801F16D0 001EE630  7C 04 03 78 */	mr r4, r0
/* 801F16D4 001EE634  38 A1 00 58 */	addi r5, r1, 0x58
/* 801F16D8 001EE638  38 C0 FF FF */	li r6, -1
/* 801F16DC 001EE63C  48 0F 3A 91 */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDatai
/* 801F16E0 001EE640  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 801F16E4 001EE644  C0 02 AE D0 */	lfs f0, lbl_805ACBF0@sda21(r2)
/* 801F16E8 001EE648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F16EC 001EE64C  7C 00 00 26 */	mfcr r0
/* 801F16F0 001EE650  34 C1 00 5C */	addic. r6, r1, 0x5c
/* 801F16F4 001EE654  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
/* 801F16F8 001EE658  41 82 00 58 */	beq lbl_801F1750
/* 801F16FC 001EE65C  80 E6 00 00 */	lwz r7, 0(r6)
/* 801F1700 001EE660  38 80 00 00 */	li r4, 0
/* 801F1704 001EE664  2C 07 00 00 */	cmpwi r7, 0
/* 801F1708 001EE668  40 81 00 40 */	ble lbl_801F1748
/* 801F170C 001EE66C  2C 07 00 08 */	cmpwi r7, 8
/* 801F1710 001EE670  38 A7 FF F8 */	addi r5, r7, -8
/* 801F1714 001EE674  40 81 00 20 */	ble lbl_801F1734
/* 801F1718 001EE678  38 05 00 07 */	addi r0, r5, 7
/* 801F171C 001EE67C  54 00 E8 FE */	srwi r0, r0, 3
/* 801F1720 001EE680  7C 09 03 A6 */	mtctr r0
/* 801F1724 001EE684  2C 05 00 00 */	cmpwi r5, 0
/* 801F1728 001EE688  40 81 00 0C */	ble lbl_801F1734
lbl_801F172C:
/* 801F172C 001EE68C  38 84 00 08 */	addi r4, r4, 8
/* 801F1730 001EE690  42 00 FF FC */	bdnz lbl_801F172C
lbl_801F1734:
/* 801F1734 001EE694  7C 04 38 50 */	subf r0, r4, r7
/* 801F1738 001EE698  7C 09 03 A6 */	mtctr r0
/* 801F173C 001EE69C  7C 04 38 00 */	cmpw r4, r7
/* 801F1740 001EE6A0  40 80 00 08 */	bge lbl_801F1748
lbl_801F1744:
/* 801F1744 001EE6A4  42 00 00 00 */	bdnz lbl_801F1744
lbl_801F1748:
/* 801F1748 001EE6A8  38 00 00 00 */	li r0, 0
/* 801F174C 001EE6AC  90 06 00 00 */	stw r0, 0(r6)
lbl_801F1750:
/* 801F1750 001EE6B0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801F1754 001EE6B4  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801F1758 001EE6B8  7C 08 03 A6 */	mtlr r0
/* 801F175C 001EE6BC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801F1760 001EE6C0  4E 80 00 20 */	blr

.global Shutdown__12CABSReactionFR15CBodyController
Shutdown__12CABSReactionFR15CBodyController:
/* 801F1764 001EE6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F1768 001EE6C8  7C 08 02 A6 */	mflr r0
/* 801F176C 001EE6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1770 001EE6D0  4B FF FE 2D */	bl StopAnimation__12CABSReactionFR15CBodyController
/* 801F1774 001EE6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1778 001EE6D8  7C 08 03 A6 */	mtlr r0
/* 801F177C 001EE6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1780 001EE6E0  4E 80 00 20 */	blr

.global UpdateBody__12CABSReactionFfR15CBodyControllerR13CStateManager
UpdateBody__12CABSReactionFfR15CBodyControllerR13CStateManager:
/* 801F1784 001EE6E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F1788 001EE6E8  7C 08 02 A6 */	mflr r0
/* 801F178C 001EE6EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1790 001EE6F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1794 001EE6F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F1798 001EE6F8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 801F179C 001EE6FC  7C 9D 23 78 */	mr r29, r4
/* 801F17A0 001EE700  93 81 00 10 */	stw r28, 0x10(r1)
/* 801F17A4 001EE704  7C 7C 1B 78 */	mr r28, r3
/* 801F17A8 001EE708  4B FF FE 45 */	bl GetBodyStateTransition__12CABSReactionFfR15CBodyController
/* 801F17AC 001EE70C  7C 7E 1B 78 */	mr r30, r3
/* 801F17B0 001EE710  2C 1E FF FF */	cmpwi r30, -1
/* 801F17B4 001EE714  40 82 00 D0 */	bne lbl_801F1884
/* 801F17B8 001EE718  80 9C 00 08 */	lwz r4, 8(r28)
/* 801F17BC 001EE71C  2C 04 FF FF */	cmpwi r4, -1
/* 801F17C0 001EE720  40 82 00 0C */	bne lbl_801F17CC
/* 801F17C4 001EE724  38 60 00 15 */	li r3, 0x15
/* 801F17C8 001EE728  48 00 00 C0 */	b lbl_801F1888
lbl_801F17CC:
/* 801F17CC 001EE72C  80 7D 00 00 */	lwz r3, 0(r29)
/* 801F17D0 001EE730  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 801F17D4 001EE734  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801F17D8 001EE738  28 00 00 00 */	cmplwi r0, 0
/* 801F17DC 001EE73C  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 801F17E0 001EE740  41 82 00 34 */	beq lbl_801F1814
/* 801F17E4 001EE744  38 7D 00 04 */	addi r3, r29, 4
/* 801F17E8 001EE748  38 80 00 1B */	li r4, 0x1b
/* 801F17EC 001EE74C  4B F3 FC 65 */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F17F0 001EE750  28 03 00 00 */	cmplwi r3, 0
/* 801F17F4 001EE754  41 82 00 90 */	beq lbl_801F1884
/* 801F17F8 001EE758  7F 83 E3 78 */	mr r3, r28
/* 801F17FC 001EE75C  7F A4 EB 78 */	mr r4, r29
/* 801F1800 001EE760  4B FF FD 9D */	bl StopAnimation__12CABSReactionFR15CBodyController
/* 801F1804 001EE764  80 7D 00 00 */	lwz r3, 0(r29)
/* 801F1808 001EE768  3B C0 00 15 */	li r30, 0x15
/* 801F180C 001EE76C  4B E6 3A 39 */	bl RemoveEmitter__6CActorFv
/* 801F1810 001EE770  48 00 00 74 */	b lbl_801F1884
lbl_801F1814:
/* 801F1814 001EE774  7F E3 FB 78 */	mr r3, r31
/* 801F1818 001EE778  4B E3 88 B1 */	bl IsAdditiveAnimationAdded__9CAnimDataCFUi
/* 801F181C 001EE77C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F1820 001EE780  41 82 00 60 */	beq lbl_801F1880
/* 801F1824 001EE784  80 9C 00 08 */	lwz r4, 8(r28)
/* 801F1828 001EE788  7F E3 FB 78 */	mr r3, r31
/* 801F182C 001EE78C  4B E3 88 5D */	bl GetAdditiveAnimationTree__9CAnimDataCFUi
/* 801F1830 001EE790  7C 64 1B 78 */	mr r4, r3
/* 801F1834 001EE794  38 61 00 08 */	addi r3, r1, 8
/* 801F1838 001EE798  80 84 00 00 */	lwz r4, 0(r4)
/* 801F183C 001EE79C  80 84 00 00 */	lwz r4, 0(r4)
/* 801F1840 001EE7A0  81 84 00 00 */	lwz r12, 0(r4)
/* 801F1844 001EE7A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801F1848 001EE7A8  7D 89 03 A6 */	mtctr r12
/* 801F184C 001EE7AC  4E 80 04 21 */	bctrl
/* 801F1850 001EE7B0  C0 41 00 08 */	lfs f2, 8(r1)
/* 801F1854 001EE7B4  C0 22 AE D0 */	lfs f1, lbl_805ACBF0@sda21(r2)
/* 801F1858 001EE7B8  C0 02 AE D4 */	lfs f0, lbl_805ACBF4@sda21(r2)
/* 801F185C 001EE7BC  EC 22 08 28 */	fsubs f1, f2, f1
/* 801F1860 001EE7C0  FC 20 0A 10 */	fabs f1, f1
/* 801F1864 001EE7C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801F1868 001EE7C8  40 80 00 1C */	bge lbl_801F1884
/* 801F186C 001EE7CC  7F 83 E3 78 */	mr r3, r28
/* 801F1870 001EE7D0  7F A4 EB 78 */	mr r4, r29
/* 801F1874 001EE7D4  4B FF FD 29 */	bl StopAnimation__12CABSReactionFR15CBodyController
/* 801F1878 001EE7D8  3B C0 00 15 */	li r30, 0x15
/* 801F187C 001EE7DC  48 00 00 08 */	b lbl_801F1884
lbl_801F1880:
/* 801F1880 001EE7E0  3B C0 00 15 */	li r30, 0x15
lbl_801F1884:
/* 801F1884 001EE7E4  7F C3 F3 78 */	mr r3, r30
lbl_801F1888:
/* 801F1888 001EE7E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F188C 001EE7EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F1890 001EE7F0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F1894 001EE7F4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 801F1898 001EE7F8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 801F189C 001EE7FC  7C 08 03 A6 */	mtlr r0
/* 801F18A0 001EE800  38 21 00 20 */	addi r1, r1, 0x20
/* 801F18A4 001EE804  4E 80 00 20 */	blr

.global Start__12CABSReactionFR15CBodyControllerR13CStateManager
Start__12CABSReactionFR15CBodyControllerR13CStateManager:
/* 801F18A8 001EE808  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 801F18AC 001EE80C  7C 08 02 A6 */	mflr r0
/* 801F18B0 001EE810  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801F18B4 001EE814  93 E1 00 AC */	stw r31, 0xac(r1)
/* 801F18B8 001EE818  7C BF 2B 78 */	mr r31, r5
/* 801F18BC 001EE81C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 801F18C0 001EE820  7C 9E 23 78 */	mr r30, r4
/* 801F18C4 001EE824  38 80 00 1A */	li r4, 0x1a
/* 801F18C8 001EE828  93 A1 00 A4 */	stw r29, 0xa4(r1)
/* 801F18CC 001EE82C  7C 7D 1B 78 */	mr r29, r3
/* 801F18D0 001EE830  38 7E 00 04 */	addi r3, r30, 4
/* 801F18D4 001EE834  4B F3 FB 7D */	bl GetCmd__16CBodyStateCmdMgrF13EBodyStateCmd
/* 801F18D8 001EE838  C0 03 00 08 */	lfs f0, 8(r3)
/* 801F18DC 001EE83C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 801F18E0 001EE840  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801F18E4 001EE844  90 1D 00 0C */	stw r0, 0xc(r29)
/* 801F18E8 001EE848  88 03 00 10 */	lbz r0, 0x10(r3)
/* 801F18EC 001EE84C  38 61 00 18 */	addi r3, r1, 0x18
/* 801F18F0 001EE850  98 1D 00 10 */	stb r0, 0x10(r29)
/* 801F18F4 001EE854  48 0F 17 89 */	bl NoParameter__12CPASAnimParmFv
/* 801F18F8 001EE858  38 61 00 20 */	addi r3, r1, 0x20
/* 801F18FC 001EE85C  48 0F 17 81 */	bl NoParameter__12CPASAnimParmFv
/* 801F1900 001EE860  38 61 00 28 */	addi r3, r1, 0x28
/* 801F1904 001EE864  48 0F 17 79 */	bl NoParameter__12CPASAnimParmFv
/* 801F1908 001EE868  38 61 00 30 */	addi r3, r1, 0x30
/* 801F190C 001EE86C  48 0F 17 71 */	bl NoParameter__12CPASAnimParmFv
/* 801F1910 001EE870  38 61 00 38 */	addi r3, r1, 0x38
/* 801F1914 001EE874  48 0F 17 69 */	bl NoParameter__12CPASAnimParmFv
/* 801F1918 001EE878  38 61 00 40 */	addi r3, r1, 0x40
/* 801F191C 001EE87C  48 0F 17 61 */	bl NoParameter__12CPASAnimParmFv
/* 801F1920 001EE880  38 61 00 48 */	addi r3, r1, 0x48
/* 801F1924 001EE884  48 0F 17 59 */	bl NoParameter__12CPASAnimParmFv
/* 801F1928 001EE888  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 801F192C 001EE88C  38 61 00 50 */	addi r3, r1, 0x50
/* 801F1930 001EE890  48 0F 16 55 */	bl FromEnum__12CPASAnimParmFi
/* 801F1934 001EE894  38 61 00 20 */	addi r3, r1, 0x20
/* 801F1938 001EE898  38 01 00 18 */	addi r0, r1, 0x18
/* 801F193C 001EE89C  90 61 00 08 */	stw r3, 8(r1)
/* 801F1940 001EE8A0  38 61 00 58 */	addi r3, r1, 0x58
/* 801F1944 001EE8A4  38 A1 00 50 */	addi r5, r1, 0x50
/* 801F1948 001EE8A8  38 C1 00 48 */	addi r6, r1, 0x48
/* 801F194C 001EE8AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F1950 001EE8B0  38 E1 00 40 */	addi r7, r1, 0x40
/* 801F1954 001EE8B4  39 01 00 38 */	addi r8, r1, 0x38
/* 801F1958 001EE8B8  39 21 00 30 */	addi r9, r1, 0x30
/* 801F195C 001EE8BC  39 41 00 28 */	addi r10, r1, 0x28
/* 801F1960 001EE8C0  38 80 00 18 */	li r4, 0x18
/* 801F1964 001EE8C4  4B E8 B9 61 */	bl __ct__16CPASAnimParmDataFQ23pas15EAnimationStateRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParmRC12CPASAnimParm
/* 801F1968 001EE8C8  7F C3 F3 78 */	mr r3, r30
/* 801F196C 001EE8CC  4B F4 8A E9 */	bl GetPASDatabase__15CBodyControllerCFv
/* 801F1970 001EE8D0  80 DF 09 00 */	lwz r6, 0x900(r31)
/* 801F1974 001EE8D4  7C 64 1B 78 */	mr r4, r3
/* 801F1978 001EE8D8  38 61 00 10 */	addi r3, r1, 0x10
/* 801F197C 001EE8DC  38 A1 00 58 */	addi r5, r1, 0x58
/* 801F1980 001EE8E0  38 E0 FF FF */	li r7, -1
/* 801F1984 001EE8E4  48 0F 36 DD */	bl FindBestAnimation__12CPASDatabaseCFRC16CPASAnimParmDataR9CRandom16i
/* 801F1988 001EE8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F198C 001EE8EC  90 1D 00 08 */	stw r0, 8(r29)
/* 801F1990 001EE8F0  80 9D 00 08 */	lwz r4, 8(r29)
/* 801F1994 001EE8F4  2C 04 FF FF */	cmpwi r4, -1
/* 801F1998 001EE8F8  41 82 00 20 */	beq lbl_801F19B8
/* 801F199C 001EE8FC  80 7E 00 00 */	lwz r3, 0(r30)
/* 801F19A0 001EE900  38 C0 00 00 */	li r6, 0
/* 801F19A4 001EE904  88 BD 00 10 */	lbz r5, 0x10(r29)
/* 801F19A8 001EE908  80 63 00 64 */	lwz r3, 0x64(r3)
/* 801F19AC 001EE90C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 801F19B0 001EE910  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F19B4 001EE914  4B E3 88 1D */	bl AddAdditiveAnimation__9CAnimDataFUifbb
lbl_801F19B8:
/* 801F19B8 001EE918  34 A1 00 5C */	addic. r5, r1, 0x5c
/* 801F19BC 001EE91C  41 82 00 58 */	beq lbl_801F1A14
/* 801F19C0 001EE920  80 C5 00 00 */	lwz r6, 0(r5)
/* 801F19C4 001EE924  38 60 00 00 */	li r3, 0
/* 801F19C8 001EE928  2C 06 00 00 */	cmpwi r6, 0
/* 801F19CC 001EE92C  40 81 00 40 */	ble lbl_801F1A0C
/* 801F19D0 001EE930  2C 06 00 08 */	cmpwi r6, 8
/* 801F19D4 001EE934  38 86 FF F8 */	addi r4, r6, -8
/* 801F19D8 001EE938  40 81 00 20 */	ble lbl_801F19F8
/* 801F19DC 001EE93C  38 04 00 07 */	addi r0, r4, 7
/* 801F19E0 001EE940  54 00 E8 FE */	srwi r0, r0, 3
/* 801F19E4 001EE944  7C 09 03 A6 */	mtctr r0
/* 801F19E8 001EE948  2C 04 00 00 */	cmpwi r4, 0
/* 801F19EC 001EE94C  40 81 00 0C */	ble lbl_801F19F8
lbl_801F19F0:
/* 801F19F0 001EE950  38 63 00 08 */	addi r3, r3, 8
/* 801F19F4 001EE954  42 00 FF FC */	bdnz lbl_801F19F0
lbl_801F19F8:
/* 801F19F8 001EE958  7C 03 30 50 */	subf r0, r3, r6
/* 801F19FC 001EE95C  7C 09 03 A6 */	mtctr r0
/* 801F1A00 001EE960  7C 03 30 00 */	cmpw r3, r6
/* 801F1A04 001EE964  40 80 00 08 */	bge lbl_801F1A0C
lbl_801F1A08:
/* 801F1A08 001EE968  42 00 00 00 */	bdnz lbl_801F1A08
lbl_801F1A0C:
/* 801F1A0C 001EE96C  38 00 00 00 */	li r0, 0
/* 801F1A10 001EE970  90 05 00 00 */	stw r0, 0(r5)
lbl_801F1A14:
/* 801F1A14 001EE974  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801F1A18 001EE978  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 801F1A1C 001EE97C  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 801F1A20 001EE980  83 A1 00 A4 */	lwz r29, 0xa4(r1)
/* 801F1A24 001EE984  7C 08 03 A6 */	mtlr r0
/* 801F1A28 001EE988  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801F1A2C 001EE98C  4E 80 00 20 */	blr

.global __ct__12CABSReactionFv
__ct__12CABSReactionFv:
/* 801F1A30 001EE990  3C A0 80 3E */	lis r5, __vt__18CAdditiveBodyState@ha
/* 801F1A34 001EE994  3C 80 80 3E */	lis r4, lbl_803E6758@ha
/* 801F1A38 001EE998  38 05 13 50 */	addi r0, r5, __vt__18CAdditiveBodyState@l
/* 801F1A3C 001EE99C  C0 02 AE D8 */	lfs f0, lbl_805ACBF8@sda21(r2)
/* 801F1A40 001EE9A0  90 03 00 00 */	stw r0, 0(r3)
/* 801F1A44 001EE9A4  38 A4 67 58 */	addi r5, r4, lbl_803E6758@l
/* 801F1A48 001EE9A8  38 80 FF FF */	li r4, -1
/* 801F1A4C 001EE9AC  38 00 00 00 */	li r0, 0
/* 801F1A50 001EE9B0  90 A3 00 00 */	stw r5, 0(r3)
/* 801F1A54 001EE9B4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801F1A58 001EE9B8  90 83 00 08 */	stw r4, 8(r3)
/* 801F1A5C 001EE9BC  90 83 00 0C */	stw r4, 0xc(r3)
/* 801F1A60 001EE9C0  98 03 00 10 */	stb r0, 0x10(r3)
/* 801F1A64 001EE9C4  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ACBF0
lbl_805ACBF0:
	# ROM: 0x3F9490
	.4byte 0

.global lbl_805ACBF4
lbl_805ACBF4:
	# ROM: 0x3F9494
	.4byte 0x3727C5AC

.global lbl_805ACBF8
lbl_805ACBF8:
	# ROM: 0x3F9498
	.float 1.0
	.4byte 0

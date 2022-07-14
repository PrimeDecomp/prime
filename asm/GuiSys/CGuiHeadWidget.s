.include "macros.inc"

.section .data

.global lbl_803EC808
lbl_803EC808:
	# ROM: 0x3E9808
	.4byte 0
	.4byte 0
	.4byte __dt__14CGuiHeadWidgetFv
	.4byte Update__10CGuiWidgetFf
	.4byte Draw__10CGuiWidgetCFRC19CGuiWidgetDrawParms
	.4byte Initialize__10CGuiWidgetFv
	.4byte ProcessUserInput__10CGuiWidgetFRC11CFinalInput
	.4byte Touch__10CGuiWidgetCFv
	.4byte GetIsVisible__10CGuiWidgetCFv
	.4byte sub_80020464
	.4byte GetWidgetTypeID__14CGuiHeadWidgetCFv
	.4byte AddWorkerWidget__10CGuiWidgetFP10CGuiWidget
	.4byte GetIsFinishedLoadingWidgetSpecific__10CGuiWidgetCFv
	.4byte OnVisible__10CGuiWidgetFv
	.4byte OnActivate__10CGuiWidgetFv
	.4byte 0

.section .text, "ax"

.global __ct__14CGuiHeadWidgetFRCQ210CGuiWidget15CGuiWidgetParms
__ct__14CGuiHeadWidgetFRCQ210CGuiWidget15CGuiWidgetParms:
/* 802C35B8 002C0518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C35BC 002C051C  7C 08 02 A6 */	mflr r0
/* 802C35C0 002C0520  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C35C4 002C0524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C35C8 002C0528  7C 7F 1B 78 */	mr r31, r3
/* 802C35CC 002C052C  48 00 76 59 */	bl __ct__10CGuiWidgetFRCQ210CGuiWidget15CGuiWidgetParms
/* 802C35D0 002C0530  3C 80 80 3F */	lis r4, lbl_803EC808@ha
/* 802C35D4 002C0534  7F E3 FB 78 */	mr r3, r31
/* 802C35D8 002C0538  38 04 C8 08 */	addi r0, r4, lbl_803EC808@l
/* 802C35DC 002C053C  90 1F 00 00 */	stw r0, 0(r31)
/* 802C35E0 002C0540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C35E4 002C0544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C35E8 002C0548  7C 08 03 A6 */	mtlr r0
/* 802C35EC 002C054C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C35F0 002C0550  4E 80 00 20 */	blr 

.global Create__14CGuiHeadWidgetFP9CGuiFrameR12CInputStreamb
Create__14CGuiHeadWidgetFP9CGuiFrameR12CInputStreamb:
/* 802C35F4 002C0554  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C35F8 002C0558  7C 08 02 A6 */	mflr r0
/* 802C35FC 002C055C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C3600 002C0560  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802C3604 002C0564  7C 7E 1B 78 */	mr r30, r3
/* 802C3608 002C0568  7C 9F 23 78 */	mr r31, r4
/* 802C360C 002C056C  38 61 00 08 */	addi r3, r1, 8
/* 802C3610 002C0570  7F C4 F3 78 */	mr r4, r30
/* 802C3614 002C0574  7F E5 FB 78 */	mr r5, r31
/* 802C3618 002C0578  48 00 77 39 */	bl ReadWidgetHeader__10CGuiWidgetFP9CGuiFrameR12CInputStreamb
/* 802C361C 002C057C  83 61 00 08 */	lwz r27, 8(r1)
/* 802C3620 002C0580  3C 60 80 3D */	lis r3, lbl_803D68A0@ha
/* 802C3624 002C0584  8B 81 00 0C */	lbz r28, 0xc(r1)
/* 802C3628 002C0588  38 83 68 A0 */	addi r4, r3, lbl_803D68A0@l
/* 802C362C 002C058C  AB A1 00 0E */	lha r29, 0xe(r1)
/* 802C3630 002C0590  38 60 00 B8 */	li r3, 0xb8
/* 802C3634 002C0594  A9 81 00 10 */	lha r12, 0x10(r1)
/* 802C3638 002C0598  38 A0 00 00 */	li r5, 0
/* 802C363C 002C059C  89 61 00 12 */	lbz r11, 0x12(r1)
/* 802C3640 002C05A0  89 41 00 13 */	lbz r10, 0x13(r1)
/* 802C3644 002C05A4  89 21 00 14 */	lbz r9, 0x14(r1)
/* 802C3648 002C05A8  89 01 00 15 */	lbz r8, 0x15(r1)
/* 802C364C 002C05AC  88 E1 00 16 */	lbz r7, 0x16(r1)
/* 802C3650 002C05B0  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 802C3654 002C05B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C3658 002C05B8  93 61 00 20 */	stw r27, 0x20(r1)
/* 802C365C 002C05BC  9B 81 00 24 */	stb r28, 0x24(r1)
/* 802C3660 002C05C0  B3 A1 00 26 */	sth r29, 0x26(r1)
/* 802C3664 002C05C4  B1 81 00 28 */	sth r12, 0x28(r1)
/* 802C3668 002C05C8  99 61 00 2A */	stb r11, 0x2a(r1)
/* 802C366C 002C05CC  99 41 00 2B */	stb r10, 0x2b(r1)
/* 802C3670 002C05D0  99 21 00 2C */	stb r9, 0x2c(r1)
/* 802C3674 002C05D4  99 01 00 2D */	stb r8, 0x2d(r1)
/* 802C3678 002C05D8  98 E1 00 2E */	stb r7, 0x2e(r1)
/* 802C367C 002C05DC  90 C1 00 30 */	stw r6, 0x30(r1)
/* 802C3680 002C05E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C3684 002C05E4  48 05 21 E9 */	bl __nw__FUlPCcPCc
/* 802C3688 002C05E8  7C 7B 1B 79 */	or. r27, r3, r3
/* 802C368C 002C05EC  41 82 00 10 */	beq lbl_802C369C
/* 802C3690 002C05F0  38 81 00 20 */	addi r4, r1, 0x20
/* 802C3694 002C05F4  4B FF FF 25 */	bl __ct__14CGuiHeadWidgetFRCQ210CGuiWidget15CGuiWidgetParms
/* 802C3698 002C05F8  7C 7B 1B 78 */	mr r27, r3
lbl_802C369C:
/* 802C369C 002C05FC  7F C3 F3 78 */	mr r3, r30
/* 802C36A0 002C0600  7F 64 DB 78 */	mr r4, r27
/* 802C36A4 002C0604  4B FF EB 05 */	bl SetHeadWidget__9CGuiFrameFP14CGuiHeadWidget
/* 802C36A8 002C0608  7F 63 DB 78 */	mr r3, r27
/* 802C36AC 002C060C  7F C4 F3 78 */	mr r4, r30
/* 802C36B0 002C0610  7F E5 FB 78 */	mr r5, r31
/* 802C36B4 002C0614  38 C1 00 20 */	addi r6, r1, 0x20
/* 802C36B8 002C0618  48 00 73 D1 */	bl ParseBaseInfo__10CGuiWidgetFP9CGuiFrameR12CInputStreamRCQ210CGuiWidget15CGuiWidgetParms
/* 802C36BC 002C061C  7F 63 DB 78 */	mr r3, r27
/* 802C36C0 002C0620  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802C36C4 002C0624  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C36C8 002C0628  7C 08 03 A6 */	mtlr r0
/* 802C36CC 002C062C  38 21 00 50 */	addi r1, r1, 0x50
/* 802C36D0 002C0630  4E 80 00 20 */	blr 

.global __dt__14CGuiHeadWidgetFv
__dt__14CGuiHeadWidgetFv:
/* 802C36D4 002C0634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C36D8 002C0638  7C 08 02 A6 */	mflr r0
/* 802C36DC 002C063C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C36E0 002C0640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C36E4 002C0644  7C 9F 23 78 */	mr r31, r4
/* 802C36E8 002C0648  93 C1 00 08 */	stw r30, 8(r1)
/* 802C36EC 002C064C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C36F0 002C0650  41 82 00 28 */	beq lbl_802C3718
/* 802C36F4 002C0654  3C A0 80 3F */	lis r5, lbl_803EC808@ha
/* 802C36F8 002C0658  38 80 00 00 */	li r4, 0
/* 802C36FC 002C065C  38 05 C8 08 */	addi r0, r5, lbl_803EC808@l
/* 802C3700 002C0660  90 1E 00 00 */	stw r0, 0(r30)
/* 802C3704 002C0664  48 00 74 B1 */	bl __dt__10CGuiWidgetFv
/* 802C3708 002C0668  7F E0 07 35 */	extsh. r0, r31
/* 802C370C 002C066C  40 81 00 0C */	ble lbl_802C3718
/* 802C3710 002C0670  7F C3 F3 78 */	mr r3, r30
/* 802C3714 002C0674  48 05 22 1D */	bl Free__7CMemoryFPCv
lbl_802C3718:
/* 802C3718 002C0678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C371C 002C067C  7F C3 F3 78 */	mr r3, r30
/* 802C3720 002C0680  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3724 002C0684  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C3728 002C0688  7C 08 03 A6 */	mtlr r0
/* 802C372C 002C068C  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3730 002C0690  4E 80 00 20 */	blr 

.global GetWidgetTypeID__14CGuiHeadWidgetCFv
GetWidgetTypeID__14CGuiHeadWidgetCFv:
/* 802C3734 002C0694  3C 60 48 57 */	lis r3, 0x48574947@ha
/* 802C3738 002C0698  38 63 49 47 */	addi r3, r3, 0x48574947@l
/* 802C373C 002C069C  4E 80 00 20 */	blr 

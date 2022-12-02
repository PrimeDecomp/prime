.include "macros.inc"

# Moved from kEnvPassthru__9CGraphics in retail
.comm kEnvPassthru__13CTevCombiners, 0x4C, 4

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CTevCombiners_cpp

.section .sdata
.balign 8

.global lbl_805A8820
lbl_805A8820:
	# ROM: 0x3F61C0
	.4byte 0

.global lbl_805A8824
lbl_805A8824:
	# ROM: 0x3F61C4
	.4byte 0xFFFFFFFF

.section .sbss, "wa"
.balign 8

.global lbl_805A9358
lbl_805A9358:
	.skip 0x4
.global lbl_805A935C
lbl_805A935C:
	.skip 0x4
.global lbl_805A9360
lbl_805A9360:
	.skip 0x8

.section .text, "ax"

.global ResetStates__13CTevCombinersFv
ResetStates__13CTevCombinersFv:
/* 80308EA8 00305E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308EAC 00305E0C  7C 08 02 A6 */	mflr r0
/* 80308EB0 00305E10  3C 60 80 5A */	lis r3, kEnvPassthru__13CTevCombiners@ha
/* 80308EB4 00305E14  38 AD 9C 60 */	addi r5, r13, lbl_805A8820@sda21
/* 80308EB8 00305E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308EBC 00305E1C  38 00 00 00 */	li r0, 0
/* 80308EC0 00305E20  38 63 56 4C */	addi r3, r3, kEnvPassthru__13CTevCombiners@l
/* 80308EC4 00305E24  38 80 00 00 */	li r4, 0
/* 80308EC8 00305E28  98 0D 9C 60 */	stb r0, lbl_805A8820@sda21(r13)
/* 80308ECC 00305E2C  98 05 00 01 */	stb r0, 1(r5)
/* 80308ED0 00305E30  48 00 00 25 */	bl Execute__Q213CTevCombiners8CTevPassCFi
/* 80308ED4 00305E34  38 00 00 01 */	li r0, 1
/* 80308ED8 00305E38  38 60 00 01 */	li r3, 1
/* 80308EDC 00305E3C  90 0D 9C 64 */	stw r0, lbl_805A8824@sda21(r13)
/* 80308EE0 00305E40  4B FF FD B1 */	bl SetNumTevStages__3CGXFUc
/* 80308EE4 00305E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308EE8 00305E48  7C 08 03 A6 */	mtlr r0
/* 80308EEC 00305E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80308EF0 00305E50  4E 80 00 20 */	blr

.global Execute__Q213CTevCombiners8CTevPassCFi
Execute__Q213CTevCombiners8CTevPassCFi:
/* 80308EF4 00305E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308EF8 00305E58  7C 08 02 A6 */	mflr r0
/* 80308EFC 00305E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308F00 00305E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80308F04 00305E64  7C 9F 23 78 */	mr r31, r4
/* 80308F08 00305E68  93 C1 00 08 */	stw r30, 8(r1)
/* 80308F0C 00305E6C  7C 7E 1B 78 */	mr r30, r3
/* 80308F10 00305E70  80 E3 00 10 */	lwz r7, 0x10(r3)
/* 80308F14 00305E74  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 80308F18 00305E78  7F E3 FB 78 */	mr r3, r31
/* 80308F1C 00305E7C  80 BE 00 08 */	lwz r5, 8(r30)
/* 80308F20 00305E80  80 9E 00 04 */	lwz r4, 4(r30)
/* 80308F24 00305E84  4B FF FC C9 */	bl SetTevColorIn__3CGXF13_GXTevStageID14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg14_GXTevColorArg
/* 80308F28 00305E88  80 FE 00 20 */	lwz r7, 0x20(r30)
/* 80308F2C 00305E8C  7F E3 FB 78 */	mr r3, r31
/* 80308F30 00305E90  80 DE 00 1C */	lwz r6, 0x1c(r30)
/* 80308F34 00305E94  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 80308F38 00305E98  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 80308F3C 00305E9C  4B FF FC 59 */	bl SetTevAlphaIn__3CGXF13_GXTevStageID14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg14_GXTevAlphaArg
/* 80308F40 00305EA0  88 FE 00 24 */	lbz r7, 0x24(r30)
/* 80308F44 00305EA4  7F E3 FB 78 */	mr r3, r31
/* 80308F48 00305EA8  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80308F4C 00305EAC  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 80308F50 00305EB0  80 DE 00 30 */	lwz r6, 0x30(r30)
/* 80308F54 00305EB4  81 1E 00 34 */	lwz r8, 0x34(r30)
/* 80308F58 00305EB8  4B FF FB E1 */	bl SetTevColorOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 80308F5C 00305EBC  88 FE 00 38 */	lbz r7, 0x38(r30)
/* 80308F60 00305EC0  7F E3 FB 78 */	mr r3, r31
/* 80308F64 00305EC4  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 80308F68 00305EC8  80 BE 00 40 */	lwz r5, 0x40(r30)
/* 80308F6C 00305ECC  80 DE 00 44 */	lwz r6, 0x44(r30)
/* 80308F70 00305ED0  81 1E 00 48 */	lwz r8, 0x48(r30)
/* 80308F74 00305ED4  4B FF FB 0D */	bl SetTevAlphaOp__3CGXF13_GXTevStageID8_GXTevOp10_GXTevBias11_GXTevScaleUc11_GXTevRegID
/* 80308F78 00305ED8  7F E3 FB 78 */	mr r3, r31
/* 80308F7C 00305EDC  38 80 00 00 */	li r4, 0
/* 80308F80 00305EE0  4B FF FA 61 */	bl SetTevKColorSel__3CGXF13_GXTevStageID15_GXTevKColorSel
/* 80308F84 00305EE4  7F E3 FB 78 */	mr r3, r31
/* 80308F88 00305EE8  38 80 00 00 */	li r4, 0
/* 80308F8C 00305EEC  4B FF FA 11 */	bl SetTevKAlphaSel__3CGXF13_GXTevStageID15_GXTevKAlphaSel
/* 80308F90 00305EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308F94 00305EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80308F98 00305EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80308F9C 00305EFC  7C 08 03 A6 */	mtlr r0
/* 80308FA0 00305F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80308FA4 00305F04  4E 80 00 20 */	blr

.global SetPassCombiners__13CTevCombinersFiRCQ213CTevCombiners8CTevPass
SetPassCombiners__13CTevCombinersFiRCQ213CTevCombiners8CTevPass:
/* 80308FA8 00305F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308FAC 00305F0C  7C 08 02 A6 */	mflr r0
/* 80308FB0 00305F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308FB4 00305F14  7C 60 1B 78 */	mr r0, r3
/* 80308FB8 00305F18  7C 83 23 78 */	mr r3, r4
/* 80308FBC 00305F1C  7C 04 03 78 */	mr r4, r0
/* 80308FC0 00305F20  4B FF FF 35 */	bl Execute__Q213CTevCombiners8CTevPassCFi
/* 80308FC4 00305F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80308FC8 00305F28  38 60 00 01 */	li r3, 1
/* 80308FCC 00305F2C  7C 08 03 A6 */	mtlr r0
/* 80308FD0 00305F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80308FD4 00305F34  4E 80 00 20 */	blr

.global SetupPass__13CTevCombinersFiRCQ213CTevCombiners8CTevPass
SetupPass__13CTevCombinersFiRCQ213CTevCombiners8CTevPass:
/* 80308FD8 00305F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80308FDC 00305F3C  7C 08 02 A6 */	mflr r0
/* 80308FE0 00305F40  3C A0 80 5A */	lis r5, kEnvPassthru__13CTevCombiners@ha
/* 80308FE4 00305F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80308FE8 00305F48  38 05 56 4C */	addi r0, r5, kEnvPassthru__13CTevCombiners@l
/* 80308FEC 00305F4C  7C 04 00 40 */	cmplw r4, r0
/* 80308FF0 00305F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80308FF4 00305F54  7C 7F 1B 78 */	mr r31, r3
/* 80308FF8 00305F58  40 82 00 0C */	bne lbl_80309004
/* 80308FFC 00305F5C  48 00 00 39 */	bl DeletePass__13CTevCombinersFi
/* 80309000 00305F60  48 00 00 20 */	b lbl_80309020
lbl_80309004:
/* 80309004 00305F64  4B FF FF A5 */	bl SetPassCombiners__13CTevCombinersFiRCQ213CTevCombiners8CTevPass
/* 80309008 00305F68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8030900C 00305F6C  41 82 00 14 */	beq lbl_80309020
/* 80309010 00305F70  38 00 00 01 */	li r0, 1
/* 80309014 00305F74  38 6D 9C 60 */	addi r3, r13, lbl_805A8820@sda21
/* 80309018 00305F78  7C 03 F9 AE */	stbx r0, r3, r31
/* 8030901C 00305F7C  48 00 00 C9 */	bl RecomputePasses__13CTevCombinersFv
lbl_80309020:
/* 80309020 00305F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309024 00305F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309028 00305F88  7C 08 03 A6 */	mtlr r0
/* 8030902C 00305F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309030 00305F90  4E 80 00 20 */	blr

.global DeletePass__13CTevCombinersFi
DeletePass__13CTevCombinersFi:
/* 80309034 00305F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309038 00305F98  7C 08 02 A6 */	mflr r0
/* 8030903C 00305F9C  3C 80 80 5A */	lis r4, kEnvPassthru__13CTevCombiners@ha
/* 80309040 00305FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309044 00305FA4  38 84 56 4C */	addi r4, r4, kEnvPassthru__13CTevCombiners@l
/* 80309048 00305FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030904C 00305FAC  7C 7F 1B 78 */	mr r31, r3
/* 80309050 00305FB0  4B FF FF 59 */	bl SetPassCombiners__13CTevCombinersFiRCQ213CTevCombiners8CTevPass
/* 80309054 00305FB4  38 00 00 00 */	li r0, 0
/* 80309058 00305FB8  38 6D 9C 60 */	addi r3, r13, lbl_805A8820@sda21
/* 8030905C 00305FBC  7C 03 F9 AE */	stbx r0, r3, r31
/* 80309060 00305FC0  48 00 00 85 */	bl RecomputePasses__13CTevCombinersFv
/* 80309064 00305FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309068 00305FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030906C 00305FCC  7C 08 03 A6 */	mtlr r0
/* 80309070 00305FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80309074 00305FD4  4E 80 00 20 */	blr

.global Init__13CTevCombinersFv
Init__13CTevCombinersFv:
/* 80309078 00305FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030907C 00305FDC  7C 08 02 A6 */	mflr r0
/* 80309080 00305FE0  38 60 00 01 */	li r3, 1
/* 80309084 00305FE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309088 00305FE8  38 00 00 02 */	li r0, 2
/* 8030908C 00305FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309090 00305FF0  3B ED 9C 60 */	addi r31, r13, lbl_805A8820@sda21
/* 80309094 00305FF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80309098 00305FF8  3B C0 00 00 */	li r30, 0
/* 8030909C 00305FFC  90 0D 9C 64 */	stw r0, lbl_805A8824@sda21(r13)
/* 803090A0 00306000  98 6D 9C 60 */	stb r3, lbl_805A8820@sda21(r13)
/* 803090A4 00306004  98 7F 00 01 */	stb r3, 1(r31)
lbl_803090A8:
/* 803090A8 00306008  7F C3 F3 78 */	mr r3, r30
/* 803090AC 0030600C  4B FF FF 89 */	bl DeletePass__13CTevCombinersFi
/* 803090B0 00306010  3B DE 00 01 */	addi r30, r30, 1
/* 803090B4 00306014  2C 1E 00 02 */	cmpwi r30, 2
/* 803090B8 00306018  41 80 FF F0 */	blt lbl_803090A8
/* 803090BC 0030601C  38 00 00 00 */	li r0, 0
/* 803090C0 00306020  98 1F 00 00 */	stb r0, 0(r31)
/* 803090C4 00306024  98 1F 00 01 */	stb r0, 1(r31)
/* 803090C8 00306028  48 00 00 1D */	bl RecomputePasses__13CTevCombinersFv
/* 803090CC 0030602C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803090D0 00306030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803090D4 00306034  83 C1 00 08 */	lwz r30, 8(r1)
/* 803090D8 00306038  7C 08 03 A6 */	mtlr r0
/* 803090DC 0030603C  38 21 00 10 */	addi r1, r1, 0x10
/* 803090E0 00306040  4E 80 00 20 */	blr

.global RecomputePasses__13CTevCombinersFv
RecomputePasses__13CTevCombinersFv:
/* 803090E4 00306044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803090E8 00306048  7C 08 02 A6 */	mflr r0
/* 803090EC 0030604C  38 6D 9C 60 */	addi r3, r13, lbl_805A8820@sda21
/* 803090F0 00306050  90 01 00 14 */	stw r0, 0x14(r1)
/* 803090F4 00306054  88 63 00 01 */	lbz r3, 1(r3)
/* 803090F8 00306058  7C 03 00 D0 */	neg r0, r3
/* 803090FC 0030605C  7C 00 1B 78 */	or r0, r0, r3
/* 80309100 00306060  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80309104 00306064  38 63 00 01 */	addi r3, r3, 1
/* 80309108 00306068  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8030910C 0030606C  90 0D 9C 64 */	stw r0, lbl_805A8824@sda21(r13)
/* 80309110 00306070  4B FF FB 81 */	bl SetNumTevStages__3CGXFUc
/* 80309114 00306074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309118 00306078  7C 08 03 A6 */	mtlr r0
/* 8030911C 0030607C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309120 00306080  4E 80 00 20 */	blr

.global __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
__ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc:
/* 80309124 00306084  90 83 00 00 */	stw r4, 0(r3)
/* 80309128 00306088  4E 80 00 20 */	blr

.global __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
__ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc:
/* 8030912C 0030608C  90 83 00 00 */	stw r4, 0(r3)
/* 80309130 00306090  4E 80 00 20 */	blr

.global __sinit_CTevCombiners_cpp
__sinit_CTevCombiners_cpp:
/* 80309134 00306094  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80309138 00306098  7C 08 02 A6 */	mflr r0
/* 8030913C 0030609C  38 6D A7 9C */	addi r3, r13, lbl_805A935C@sda21
/* 80309140 003060A0  38 80 00 06 */	li r4, 6
/* 80309144 003060A4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80309148 003060A8  4B FF FF E5 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 8030914C 003060AC  38 6D A7 A0 */	addi r3, r13, lbl_805A9360@sda21
/* 80309150 003060B0  38 80 00 0C */	li r4, 0xc
/* 80309154 003060B4  4B FF FF D1 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 80309158 003060B8  38 00 00 00 */	li r0, 0
/* 8030915C 003060BC  38 A0 00 01 */	li r5, 1
/* 80309160 003060C0  98 A1 00 48 */	stb r5, 0x48(r1)
/* 80309164 003060C4  38 61 00 08 */	addi r3, r1, 8
/* 80309168 003060C8  38 80 00 05 */	li r4, 5
/* 8030916C 003060CC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80309170 003060D0  90 01 00 50 */	stw r0, 0x50(r1)
/* 80309174 003060D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80309178 003060D8  90 01 00 58 */	stw r0, 0x58(r1)
/* 8030917C 003060DC  98 A1 00 5C */	stb r5, 0x5c(r1)
/* 80309180 003060E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 80309184 003060E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80309188 003060E8  90 01 00 68 */	stw r0, 0x68(r1)
/* 8030918C 003060EC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80309190 003060F0  4B FF FF 9D */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 80309194 003060F4  38 61 00 0C */	addi r3, r1, 0xc
/* 80309198 003060F8  38 80 00 07 */	li r4, 7
/* 8030919C 003060FC  4B FF FF 91 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 803091A0 00306100  38 61 00 10 */	addi r3, r1, 0x10
/* 803091A4 00306104  38 80 00 07 */	li r4, 7
/* 803091A8 00306108  4B FF FF 85 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 803091AC 0030610C  38 61 00 14 */	addi r3, r1, 0x14
/* 803091B0 00306110  38 80 00 07 */	li r4, 7
/* 803091B4 00306114  4B FF FF 79 */	bl __ct__Q213CTevCombiners8AlphaVarFQ213CTevCombiners9EAlphaSrc
/* 803091B8 00306118  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 803091BC 0030611C  38 61 00 18 */	addi r3, r1, 0x18
/* 803091C0 00306120  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 803091C4 00306124  38 80 00 0A */	li r4, 0xa
/* 803091C8 00306128  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 803091CC 0030612C  80 01 00 08 */	lwz r0, 8(r1)
/* 803091D0 00306130  90 E1 00 28 */	stw r7, 0x28(r1)
/* 803091D4 00306134  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 803091D8 00306138  90 A1 00 30 */	stw r5, 0x30(r1)
/* 803091DC 0030613C  90 01 00 34 */	stw r0, 0x34(r1)
/* 803091E0 00306140  4B FF FF 45 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 803091E4 00306144  38 61 00 1C */	addi r3, r1, 0x1c
/* 803091E8 00306148  38 80 00 0F */	li r4, 0xf
/* 803091EC 0030614C  4B FF FF 39 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 803091F0 00306150  38 61 00 20 */	addi r3, r1, 0x20
/* 803091F4 00306154  38 80 00 0F */	li r4, 0xf
/* 803091F8 00306158  4B FF FF 2D */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 803091FC 0030615C  38 61 00 24 */	addi r3, r1, 0x24
/* 80309200 00306160  38 80 00 0F */	li r4, 0xf
/* 80309204 00306164  4B FF FF 21 */	bl __ct__Q213CTevCombiners8ColorVarFQ213CTevCombiners9EColorSrc
/* 80309208 00306168  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8030920C 0030616C  3C 60 80 5A */	lis r3, kEnvPassthru__13CTevCombiners@ha
/* 80309210 00306170  81 21 00 20 */	lwz r9, 0x20(r1)
/* 80309214 00306174  38 63 56 4C */	addi r3, r3, kEnvPassthru__13CTevCombiners@l
/* 80309218 00306178  81 01 00 1C */	lwz r8, 0x1c(r1)
/* 8030921C 0030617C  38 81 00 38 */	addi r4, r1, 0x38
/* 80309220 00306180  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80309224 00306184  38 C1 00 5C */	addi r6, r1, 0x5c
/* 80309228 00306188  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8030922C 0030618C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80309230 00306190  38 E1 00 48 */	addi r7, r1, 0x48
/* 80309234 00306194  91 21 00 3C */	stw r9, 0x3c(r1)
/* 80309238 00306198  91 01 00 40 */	stw r8, 0x40(r1)
/* 8030923C 0030619C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80309240 003061A0  48 00 00 15 */	bl __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
/* 80309244 003061A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80309248 003061A8  7C 08 03 A6 */	mtlr r0
/* 8030924C 003061AC  38 21 00 70 */	addi r1, r1, 0x70
/* 80309250 003061B0  4E 80 00 20 */	blr

.global __ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp
__ct__Q213CTevCombiners8CTevPassFRCQ213CTevCombiners9ColorPassRCQ213CTevCombiners9AlphaPassRCQ213CTevCombiners6CTevOpRCQ213CTevCombiners6CTevOp:
/* 80309254 003061B4  81 0D A7 98 */	lwz r8, lbl_805A9358@sda21(r13)
/* 80309258 003061B8  38 08 00 01 */	addi r0, r8, 1
/* 8030925C 003061BC  90 0D A7 98 */	stw r0, lbl_805A9358@sda21(r13)
/* 80309260 003061C0  91 03 00 00 */	stw r8, 0(r3)
/* 80309264 003061C4  80 04 00 00 */	lwz r0, 0(r4)
/* 80309268 003061C8  90 03 00 04 */	stw r0, 4(r3)
/* 8030926C 003061CC  80 04 00 04 */	lwz r0, 4(r4)
/* 80309270 003061D0  90 03 00 08 */	stw r0, 8(r3)
/* 80309274 003061D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80309278 003061D8  90 03 00 0C */	stw r0, 0xc(r3)
/* 8030927C 003061DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80309280 003061E0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80309284 003061E4  80 05 00 00 */	lwz r0, 0(r5)
/* 80309288 003061E8  90 03 00 14 */	stw r0, 0x14(r3)
/* 8030928C 003061EC  80 05 00 04 */	lwz r0, 4(r5)
/* 80309290 003061F0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80309294 003061F4  80 05 00 08 */	lwz r0, 8(r5)
/* 80309298 003061F8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8030929C 003061FC  80 05 00 0C */	lwz r0, 0xc(r5)
/* 803092A0 00306200  90 03 00 20 */	stw r0, 0x20(r3)
/* 803092A4 00306204  88 06 00 00 */	lbz r0, 0(r6)
/* 803092A8 00306208  98 03 00 24 */	stb r0, 0x24(r3)
/* 803092AC 0030620C  80 06 00 04 */	lwz r0, 4(r6)
/* 803092B0 00306210  90 03 00 28 */	stw r0, 0x28(r3)
/* 803092B4 00306214  80 06 00 08 */	lwz r0, 8(r6)
/* 803092B8 00306218  90 03 00 2C */	stw r0, 0x2c(r3)
/* 803092BC 0030621C  80 06 00 0C */	lwz r0, 0xc(r6)
/* 803092C0 00306220  90 03 00 30 */	stw r0, 0x30(r3)
/* 803092C4 00306224  80 06 00 10 */	lwz r0, 0x10(r6)
/* 803092C8 00306228  90 03 00 34 */	stw r0, 0x34(r3)
/* 803092CC 0030622C  88 07 00 00 */	lbz r0, 0(r7)
/* 803092D0 00306230  98 03 00 38 */	stb r0, 0x38(r3)
/* 803092D4 00306234  80 07 00 04 */	lwz r0, 4(r7)
/* 803092D8 00306238  90 03 00 3C */	stw r0, 0x3c(r3)
/* 803092DC 0030623C  80 07 00 08 */	lwz r0, 8(r7)
/* 803092E0 00306240  90 03 00 40 */	stw r0, 0x40(r3)
/* 803092E4 00306244  80 07 00 0C */	lwz r0, 0xc(r7)
/* 803092E8 00306248  90 03 00 44 */	stw r0, 0x44(r3)
/* 803092EC 0030624C  80 07 00 10 */	lwz r0, 0x10(r7)
/* 803092F0 00306250  90 03 00 48 */	stw r0, 0x48(r3)
/* 803092F4 00306254  4E 80 00 20 */	blr

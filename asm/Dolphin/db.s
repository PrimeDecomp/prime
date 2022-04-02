.include "macros.inc"

.section .text, "ax"

.global DBInit
DBInit:
/* 8036F8CC 0036C82C  3C 80 80 00 */	lis r4, 0x80000040@ha
/* 8036F8D0 0036C830  38 04 00 40 */	addi r0, r4, 0x80000040@l
/* 8036F8D4 0036C834  3C 60 80 37 */	lis r3, __DBExceptionDestination@ha
/* 8036F8D8 0036C838  90 0D AB 80 */	stw r0, lbl_805A9740@sda21(r13)
/* 8036F8DC 0036C83C  38 63 F9 3C */	addi r3, r3, __DBExceptionDestination@l
/* 8036F8E0 0036C840  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8036F8E4 0036C844  90 04 00 48 */	stw r0, 0x48(r4)
/* 8036F8E8 0036C848  38 00 00 01 */	li r0, 1
/* 8036F8EC 0036C84C  90 0D AB 84 */	stw r0, lbl_805A9744@sda21(r13)
/* 8036F8F0 0036C850  4E 80 00 20 */	blr 

.global __DBExceptionDestinationAux
__DBExceptionDestinationAux:
/* 8036F8F4 0036C854  7C 08 02 A6 */	mflr r0
/* 8036F8F8 0036C858  3C 60 80 3F */	lis r3, lbl_803EF9B8@ha
/* 8036F8FC 0036C85C  90 01 00 04 */	stw r0, 4(r1)
/* 8036F900 0036C860  38 63 F9 B8 */	addi r3, r3, lbl_803EF9B8@l
/* 8036F904 0036C864  4C C6 31 82 */	crclr 6
/* 8036F908 0036C868  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036F90C 0036C86C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036F910 0036C870  80 80 00 C0 */	lwz r4, 0xc0(0)
/* 8036F914 0036C874  3F E4 80 00 */	addis r31, r4, 0x8000
/* 8036F918 0036C878  48 01 00 95 */	bl OSReport
/* 8036F91C 0036C87C  7F E3 FB 78 */	mr r3, r31
/* 8036F920 0036C880  48 00 FD 19 */	bl OSDumpContext
/* 8036F924 0036C884  4B FF FE F1 */	bl PPCHalt
/* 8036F928 0036C888  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036F92C 0036C88C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036F930 0036C890  38 21 00 18 */	addi r1, r1, 0x18
/* 8036F934 0036C894  7C 08 03 A6 */	mtlr r0
/* 8036F938 0036C898  4E 80 00 20 */	blr 

.global __DBExceptionDestination
__DBExceptionDestination:
/* 8036F93C 0036C89C  7C 60 00 A6 */	mfmsr r3
/* 8036F940 0036C8A0  60 63 00 30 */	ori r3, r3, 0x30
/* 8036F944 0036C8A4  7C 60 01 24 */	mtmsr r3
/* 8036F948 0036C8A8  4B FF FF AC */	b __DBExceptionDestinationAux

.global __DBIsExceptionMarked
__DBIsExceptionMarked:
/* 8036F94C 0036C8AC  80 8D AB 80 */	lwz r4, lbl_805A9740@sda21(r13)
/* 8036F950 0036C8B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8036F954 0036C8B4  38 60 00 01 */	li r3, 1
/* 8036F958 0036C8B8  80 84 00 04 */	lwz r4, 4(r4)
/* 8036F95C 0036C8BC  7C 60 00 30 */	slw r0, r3, r0
/* 8036F960 0036C8C0  7C 83 00 38 */	and r3, r4, r0
/* 8036F964 0036C8C4  4E 80 00 20 */	blr 

.global DBPrintf
DBPrintf:
/* 8036F968 0036C8C8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8036F96C 0036C8CC  40 86 00 24 */	bne cr1, lbl_8036F990
/* 8036F970 0036C8D0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8036F974 0036C8D4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8036F978 0036C8D8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8036F97C 0036C8DC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8036F980 0036C8E0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8036F984 0036C8E4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8036F988 0036C8E8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8036F98C 0036C8EC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8036F990:
/* 8036F990 0036C8F0  90 61 00 08 */	stw r3, 8(r1)
/* 8036F994 0036C8F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 8036F998 0036C8F8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8036F99C 0036C8FC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8036F9A0 0036C900  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8036F9A4 0036C904  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8036F9A8 0036C908  91 21 00 20 */	stw r9, 0x20(r1)
/* 8036F9AC 0036C90C  91 41 00 24 */	stw r10, 0x24(r1)
/* 8036F9B0 0036C910  38 21 00 70 */	addi r1, r1, 0x70
/* 8036F9B4 0036C914  4E 80 00 20 */	blr 

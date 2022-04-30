.include "macros.inc"

.section .sdata
.global __DSPVersion
__DSPVersion:
	.4byte __DSPVersionString
	.balign 8
	
.section .sbss
.global __DSP_init_flag
__DSP_init_flag:
	.skip 0x8
	
.section .data
__DSPVersionString:
	.asciz "<< Dolphin SDK - DSP\trelease build: Sep  5 2002 05:35:13 (0x2301) >>"
	.balign 4
	.asciz "DSPInit(): Build Date: %s %s\n"
	.balign 4
	.asciz "Sep  5 2002"
	.asciz "05:35:13"
	.balign 4
	
.section .text, "ax"

.global DSPCheckMailToDSP
DSPCheckMailToDSP:
/* 8036F9B8 0036C918  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036F9BC 0036C91C  A0 03 50 00 */	lhz r0, 0xCC005000@l(r3)
/* 8036F9C0 0036C920  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8036F9C4 0036C924  4E 80 00 20 */	blr 

.global DSPCheckMailFromDSP
DSPCheckMailFromDSP:
/* 8036F9C8 0036C928  3C 60 CC 00 */	lis r3, 0xCC005004@ha
/* 8036F9CC 0036C92C  A0 03 50 04 */	lhz r0, 0xCC005004@l(r3)
/* 8036F9D0 0036C930  54 03 8F FE */	rlwinm r3, r0, 0x11, 0x1f, 0x1f
/* 8036F9D4 0036C934  4E 80 00 20 */	blr 

.global DSPReadMailFromDSP
DSPReadMailFromDSP:
/* 8036F9D8 0036C938  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036F9DC 0036C93C  38 63 50 00 */	addi r3, r3, 0xCC005000@l
/* 8036F9E0 0036C940  A0 03 00 04 */	lhz r0, 4(r3)
/* 8036F9E4 0036C944  A0 63 00 06 */	lhz r3, 6(r3)
/* 8036F9E8 0036C948  50 03 80 1E */	rlwimi r3, r0, 0x10, 0, 0xf
/* 8036F9EC 0036C94C  4E 80 00 20 */	blr 

.global DSPSendMailToDSP
DSPSendMailToDSP:
/* 8036F9F0 0036C950  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8036F9F4 0036C954  54 60 84 3E */	srwi r0, r3, 0x10
/* 8036F9F8 0036C958  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
/* 8036F9FC 0036C95C  B0 64 50 02 */	sth r3, 0x5002(r4)
/* 8036FA00 0036C960  4E 80 00 20 */	blr 

.global DSPInit
DSPInit:
/* 8036FA04 0036C964  7C 08 02 A6 */	mflr r0
/* 8036FA08 0036C968  3C 60 80 3F */	lis r3, __DSPVersionString@ha
/* 8036FA0C 0036C96C  90 01 00 04 */	stw r0, 4(r1)
/* 8036FA10 0036C970  38 A3 F9 D0 */	addi r5, r3, __DSPVersionString@l
/* 8036FA14 0036C974  4C C6 31 82 */	crclr 6
/* 8036FA18 0036C978  38 65 00 48 */	addi r3, r5, 0x48
/* 8036FA1C 0036C97C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036FA20 0036C980  38 85 00 68 */	addi r4, r5, 0x68
/* 8036FA24 0036C984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036FA28 0036C988  38 A5 00 74 */	addi r5, r5, 0x74
/* 8036FA2C 0036C98C  48 00 01 A5 */	bl __DSP_debug_printf
/* 8036FA30 0036C990  80 0D AB 88 */	lwz r0, __DSP_init_flag@sda21(r13)
/* 8036FA34 0036C994  2C 00 00 01 */	cmpwi r0, 1
/* 8036FA38 0036C998  41 82 00 7C */	beq lbl_8036FAB4
/* 8036FA3C 0036C99C  80 6D 9E C0 */	lwz r3, __DSPVersion@sda21(r13)
/* 8036FA40 0036C9A0  48 00 E5 F9 */	bl OSRegisterVersion
/* 8036FA44 0036C9A4  48 01 1C 1D */	bl OSDisableInterrupts
/* 8036FA48 0036C9A8  3C 80 80 37 */	lis r4, __DSPHandler@ha
/* 8036FA4C 0036C9AC  3B E3 00 00 */	addi r31, r3, 0
/* 8036FA50 0036C9B0  38 84 FC 20 */	addi r4, r4, __DSPHandler@l
/* 8036FA54 0036C9B4  38 60 00 07 */	li r3, 7
/* 8036FA58 0036C9B8  48 01 1C 55 */	bl __OSSetInterruptHandler
/* 8036FA5C 0036C9BC  3C 60 01 00 */	lis r3, 0x100
/* 8036FA60 0036C9C0  48 01 20 51 */	bl __OSUnmaskInterrupts
/* 8036FA64 0036C9C4  3C 60 CC 00 */	lis r3, 0xCC005000@ha
/* 8036FA68 0036C9C8  38 C3 50 00 */	addi r6, r3, 0xCC005000@l
/* 8036FA6C 0036C9CC  A0 63 50 0A */	lhz r3, 0x500a(r3)
/* 8036FA70 0036C9D0  38 00 FF 57 */	li r0, -169
/* 8036FA74 0036C9D4  7C 60 00 38 */	and r0, r3, r0
/* 8036FA78 0036C9D8  60 00 08 00 */	ori r0, r0, 0x800
/* 8036FA7C 0036C9DC  B0 06 00 0A */	sth r0, 0xa(r6)
/* 8036FA80 0036C9E0  38 A0 FF 53 */	li r5, -173
/* 8036FA84 0036C9E4  38 80 00 00 */	li r4, 0
/* 8036FA88 0036C9E8  A0 E6 00 0A */	lhz r7, 0xa(r6)
/* 8036FA8C 0036C9EC  38 00 00 01 */	li r0, 1
/* 8036FA90 0036C9F0  38 7F 00 00 */	addi r3, r31, 0
/* 8036FA94 0036C9F4  7C E5 28 38 */	and r5, r7, r5
/* 8036FA98 0036C9F8  B0 A6 00 0A */	sth r5, 0xa(r6)
/* 8036FA9C 0036C9FC  90 8D AB 98 */	stw r4, __DSP_tmp_task@sda21(r13)
/* 8036FAA0 0036CA00  90 8D AB A4 */	stw r4, __DSP_curr_task@sda21(r13)
/* 8036FAA4 0036CA04  90 8D AB 9C */	stw r4, __DSP_last_task@sda21(r13)
/* 8036FAA8 0036CA08  90 8D AB A0 */	stw r4, __DSP_first_task@sda21(r13)
/* 8036FAAC 0036CA0C  90 0D AB 88 */	stw r0, __DSP_init_flag@sda21(r13)
/* 8036FAB0 0036CA10  48 01 1B D9 */	bl OSRestoreInterrupts
lbl_8036FAB4:
/* 8036FAB4 0036CA14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036FAB8 0036CA18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036FABC 0036CA1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036FAC0 0036CA20  7C 08 03 A6 */	mtlr r0
/* 8036FAC4 0036CA24  4E 80 00 20 */	blr 

.global DSPReset
DSPReset:
/* 8036FAC8 0036CA28  7C 08 02 A6 */	mflr r0
/* 8036FACC 0036CA2C  90 01 00 04 */	stw r0, 4(r1)
/* 8036FAD0 0036CA30  94 21 FF F8 */	stwu r1, -8(r1)
/* 8036FAD4 0036CA34  48 01 1B 8D */	bl OSDisableInterrupts
/* 8036FAD8 0036CA38  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8036FADC 0036CA3C  38 84 50 00 */	addi r4, r4, 0xCC005000@l
/* 8036FAE0 0036CA40  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 8036FAE4 0036CA44  38 00 FF 57 */	li r0, -169
/* 8036FAE8 0036CA48  7C A0 00 38 */	and r0, r5, r0
/* 8036FAEC 0036CA4C  60 00 08 01 */	ori r0, r0, 0x801
/* 8036FAF0 0036CA50  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8036FAF4 0036CA54  38 00 00 00 */	li r0, 0
/* 8036FAF8 0036CA58  90 0D AB 88 */	stw r0, __DSP_init_flag@sda21(r13)
/* 8036FAFC 0036CA5C  48 01 1B 8D */	bl OSRestoreInterrupts
/* 8036FB00 0036CA60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FB04 0036CA64  38 21 00 08 */	addi r1, r1, 8
/* 8036FB08 0036CA68  7C 08 03 A6 */	mtlr r0
/* 8036FB0C 0036CA6C  4E 80 00 20 */	blr 

.global DSPHalt
DSPHalt:
/* 8036FB10 0036CA70  7C 08 02 A6 */	mflr r0
/* 8036FB14 0036CA74  90 01 00 04 */	stw r0, 4(r1)
/* 8036FB18 0036CA78  94 21 FF F8 */	stwu r1, -8(r1)
/* 8036FB1C 0036CA7C  48 01 1B 45 */	bl OSDisableInterrupts
/* 8036FB20 0036CA80  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 8036FB24 0036CA84  38 84 50 00 */	addi r4, r4, 0xCC005000@l
/* 8036FB28 0036CA88  A0 A4 00 0A */	lhz r5, 0xa(r4)
/* 8036FB2C 0036CA8C  38 00 FF 57 */	li r0, -169
/* 8036FB30 0036CA90  7C A0 00 38 */	and r0, r5, r0
/* 8036FB34 0036CA94  60 00 00 04 */	ori r0, r0, 4
/* 8036FB38 0036CA98  B0 04 00 0A */	sth r0, 0xa(r4)
/* 8036FB3C 0036CA9C  48 01 1B 4D */	bl OSRestoreInterrupts
/* 8036FB40 0036CAA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8036FB44 0036CAA4  38 21 00 08 */	addi r1, r1, 8
/* 8036FB48 0036CAA8  7C 08 03 A6 */	mtlr r0
/* 8036FB4C 0036CAAC  4E 80 00 20 */	blr 

.global DSPGetDMAStatus
DSPGetDMAStatus:
/* 8036FB50 0036CAB0  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 8036FB54 0036CAB4  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 8036FB58 0036CAB8  54 03 05 AC */	rlwinm r3, r0, 0, 0x16, 0x16
/* 8036FB5C 0036CABC  4E 80 00 20 */	blr 

.global DSPAddTask
DSPAddTask:
/* 8036FB60 0036CAC0  7C 08 02 A6 */	mflr r0
/* 8036FB64 0036CAC4  90 01 00 04 */	stw r0, 4(r1)
/* 8036FB68 0036CAC8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8036FB6C 0036CACC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8036FB70 0036CAD0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8036FB74 0036CAD4  7C 7E 1B 78 */	mr r30, r3
/* 8036FB78 0036CAD8  48 01 1A E9 */	bl OSDisableInterrupts
/* 8036FB7C 0036CADC  3B E3 00 00 */	addi r31, r3, 0
/* 8036FB80 0036CAE0  38 7E 00 00 */	addi r3, r30, 0
/* 8036FB84 0036CAE4  48 00 07 ED */	bl __DSP_insert_task
/* 8036FB88 0036CAE8  38 00 00 00 */	li r0, 0
/* 8036FB8C 0036CAEC  90 1E 00 00 */	stw r0, 0(r30)
/* 8036FB90 0036CAF0  38 00 00 01 */	li r0, 1
/* 8036FB94 0036CAF4  38 7F 00 00 */	addi r3, r31, 0
/* 8036FB98 0036CAF8  90 1E 00 08 */	stw r0, 8(r30)
/* 8036FB9C 0036CAFC  48 01 1A ED */	bl OSRestoreInterrupts
/* 8036FBA0 0036CB00  80 0D AB A0 */	lwz r0, __DSP_first_task@sda21(r13)
/* 8036FBA4 0036CB04  7C 1E 00 40 */	cmplw r30, r0
/* 8036FBA8 0036CB08  40 82 00 0C */	bne lbl_8036FBB4
/* 8036FBAC 0036CB0C  7F C3 F3 78 */	mr r3, r30
/* 8036FBB0 0036CB10  48 00 06 35 */	bl __DSP_boot_task
lbl_8036FBB4:
/* 8036FBB4 0036CB14  7F C3 F3 78 */	mr r3, r30
/* 8036FBB8 0036CB18  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8036FBBC 0036CB1C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8036FBC0 0036CB20  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8036FBC4 0036CB24  38 21 00 18 */	addi r1, r1, 0x18
/* 8036FBC8 0036CB28  7C 08 03 A6 */	mtlr r0
/* 8036FBCC 0036CB2C  4E 80 00 20 */	blr 

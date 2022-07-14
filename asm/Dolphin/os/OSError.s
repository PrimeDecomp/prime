.include "macros.inc"

.section .bss
.global lbl_80541250
lbl_80541250:
	.skip 0x48

.section .data
.balign 8

.global lbl_803F1430
lbl_803F1430:
	.asciz " in \"%s\" on line %d.\n"
.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"
.balign 4
	.asciz "Non-recoverable Exception %d"
.balign 4
	.asciz "Unhandled Exception %d"
.balign 4
	.asciz "\nDSISR = 0x%08x                   DAR  = 0x%08x\n"
.balign 4
	.asciz "TB = 0x%016llx\n"
.balign 4
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read from DAR)\n"
.balign 4
	.asciz "\nAttempted to fetch instruction from invalid address 0x%x (read from SRR0)\n"
.balign 4
	.asciz "\nInstruction at 0x%x (read from SRR0) attempted to access unaligned address 0x%x (read from DAR)\n"
.balign 4
	.asciz "\nProgram exception : Possible illegal instruction/operation at or around 0x%x (read from SRR0)\n"
.balign 4
	.asciz "AI DMA Address =   0x%04x%04x\n"
.balign 4
	.asciz "ARAM DMA Address = 0x%04x%04x\n"
.balign 4
	.asciz "DI DMA Address =   0x%08x\n"
.balign 4
	.asciz "\nLast interrupt (%d): SRR0 = 0x%08x  TB = 0x%016llx\n"
.balign 4
.global lbl_803F170C
lbl_803F170C:
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_8037FF7C
    .4byte lbl_8037FF94
    .4byte lbl_80380024
    .4byte lbl_8037FFA8
    .4byte lbl_8037FFC0
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_80380024
    .4byte lbl_8037FFD8
.section .sdata
.global lbl_805A8B38
lbl_805A8B38:
	# ROM: 0x3F64D8
	.4byte 0x000000F8

.global lbl_805A8B3C
lbl_805A8B3C:
	# ROM: 0x3F64DC
	.4byte 0x0A000000


.section .text, "ax"

.global OSReport
OSReport:
/* 8037F9AC 0037C90C  7C 08 02 A6 */	mflr r0
/* 8037F9B0 0037C910  90 01 00 04 */	stw r0, 4(r1)
/* 8037F9B4 0037C914  94 21 FF 88 */	stwu r1, -0x78(r1)
/* 8037F9B8 0037C918  40 86 00 24 */	bne cr1, lbl_8037F9DC
/* 8037F9BC 0037C91C  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8037F9C0 0037C920  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8037F9C4 0037C924  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8037F9C8 0037C928  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8037F9CC 0037C92C  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8037F9D0 0037C930  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8037F9D4 0037C934  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8037F9D8 0037C938  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8037F9DC:
/* 8037F9DC 0037C93C  90 61 00 08 */	stw r3, 8(r1)
/* 8037F9E0 0037C940  3C 00 01 00 */	lis r0, 0x100
/* 8037F9E4 0037C944  90 81 00 0C */	stw r4, 0xc(r1)
/* 8037F9E8 0037C948  38 81 00 6C */	addi r4, r1, 0x6c
/* 8037F9EC 0037C94C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8037F9F0 0037C950  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8037F9F4 0037C954  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8037F9F8 0037C958  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8037F9FC 0037C95C  91 21 00 20 */	stw r9, 0x20(r1)
/* 8037FA00 0037C960  91 41 00 24 */	stw r10, 0x24(r1)
/* 8037FA04 0037C964  90 01 00 6C */	stw r0, 0x6c(r1)
/* 8037FA08 0037C968  38 01 00 80 */	addi r0, r1, 0x80
/* 8037FA0C 0037C96C  90 01 00 70 */	stw r0, 0x70(r1)
/* 8037FA10 0037C970  38 01 00 08 */	addi r0, r1, 8
/* 8037FA14 0037C974  90 01 00 74 */	stw r0, 0x74(r1)
/* 8037FA18 0037C978  48 00 E4 1D */	bl vprintf
/* 8037FA1C 0037C97C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8037FA20 0037C980  38 21 00 78 */	addi r1, r1, 0x78
/* 8037FA24 0037C984  7C 08 03 A6 */	mtlr r0
/* 8037FA28 0037C988  4E 80 00 20 */	blr

.global OSPanic
OSPanic:
/* 8037FA2C 0037C98C  7C 08 02 A6 */	mflr r0
/* 8037FA30 0037C990  90 01 00 04 */	stw r0, 4(r1)
/* 8037FA34 0037C994  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8037FA38 0037C998  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8037FA3C 0037C99C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8037FA40 0037C9A0  93 A1 00 84 */	stw r29, 0x84(r1)
/* 8037FA44 0037C9A4  93 81 00 80 */	stw r28, 0x80(r1)
/* 8037FA48 0037C9A8  40 86 00 24 */	bne cr1, lbl_8037FA6C
/* 8037FA4C 0037C9AC  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8037FA50 0037C9B0  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8037FA54 0037C9B4  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8037FA58 0037C9B8  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8037FA5C 0037C9BC  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8037FA60 0037C9C0  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8037FA64 0037C9C4  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8037FA68 0037C9C8  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8037FA6C:
/* 8037FA6C 0037C9CC  90 61 00 08 */	stw r3, 8(r1)
/* 8037FA70 0037C9D0  3B 83 00 00 */	addi r28, r3, 0
/* 8037FA74 0037C9D4  3B C4 00 00 */	addi r30, r4, 0
/* 8037FA78 0037C9D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8037FA7C 0037C9DC  3B A5 00 00 */	addi r29, r5, 0
/* 8037FA80 0037C9E0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8037FA84 0037C9E4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8037FA88 0037C9E8  3C C0 80 3F */	lis r6, lbl_803F1430@ha
/* 8037FA8C 0037C9EC  3B E6 14 30 */	addi r31, r6, lbl_803F1430@l
/* 8037FA90 0037C9F0  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8037FA94 0037C9F4  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8037FA98 0037C9F8  91 21 00 20 */	stw r9, 0x20(r1)
/* 8037FA9C 0037C9FC  91 41 00 24 */	stw r10, 0x24(r1)
/* 8037FAA0 0037CA00  48 00 1B C1 */	bl OSDisableInterrupts
/* 8037FAA4 0037CA04  3C 00 03 00 */	lis r0, 0x300
/* 8037FAA8 0037CA08  90 01 00 74 */	stw r0, 0x74(r1)
/* 8037FAAC 0037CA0C  38 01 00 98 */	addi r0, r1, 0x98
/* 8037FAB0 0037CA10  38 81 00 74 */	addi r4, r1, 0x74
/* 8037FAB4 0037CA14  90 01 00 78 */	stw r0, 0x78(r1)
/* 8037FAB8 0037CA18  38 01 00 08 */	addi r0, r1, 8
/* 8037FABC 0037CA1C  38 7D 00 00 */	addi r3, r29, 0
/* 8037FAC0 0037CA20  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8037FAC4 0037CA24  48 00 E3 71 */	bl vprintf
/* 8037FAC8 0037CA28  38 7F 00 00 */	addi r3, r31, 0
/* 8037FACC 0037CA2C  4C C6 31 82 */	crclr 6
/* 8037FAD0 0037CA30  38 9C 00 00 */	addi r4, r28, 0
/* 8037FAD4 0037CA34  38 BE 00 00 */	addi r5, r30, 0
/* 8037FAD8 0037CA38  4B FF FE D5 */	bl OSReport
/* 8037FADC 0037CA3C  38 7F 00 18 */	addi r3, r31, 0x18
/* 8037FAE0 0037CA40  4C C6 31 82 */	crclr 6
/* 8037FAE4 0037CA44  4B FF FE C9 */	bl OSReport
/* 8037FAE8 0037CA48  3B C0 00 00 */	li r30, 0
/* 8037FAEC 0037CA4C  4B FF FA F1 */	bl OSGetStackPointer
/* 8037FAF0 0037CA50  7C 7D 1B 78 */	mr r29, r3
/* 8037FAF4 0037CA54  48 00 00 20 */	b lbl_8037FB14
lbl_8037FAF8:
/* 8037FAF8 0037CA58  80 BD 00 00 */	lwz r5, 0(r29)
/* 8037FAFC 0037CA5C  7F A4 EB 78 */	mr r4, r29
/* 8037FB00 0037CA60  80 DD 00 04 */	lwz r6, 4(r29)
/* 8037FB04 0037CA64  38 7F 00 40 */	addi r3, r31, 0x40
/* 8037FB08 0037CA68  4C C6 31 82 */	crclr 6
/* 8037FB0C 0037CA6C  4B FF FE A1 */	bl OSReport
/* 8037FB10 0037CA70  83 BD 00 00 */	lwz r29, 0(r29)
lbl_8037FB14:
/* 8037FB14 0037CA74  28 1D 00 00 */	cmplwi r29, 0
/* 8037FB18 0037CA78  41 82 00 1C */	beq lbl_8037FB34
/* 8037FB1C 0037CA7C  3C 1D 00 01 */	addis r0, r29, 1
/* 8037FB20 0037CA80  28 00 FF FF */	cmplwi r0, 0xffff
/* 8037FB24 0037CA84  41 82 00 10 */	beq lbl_8037FB34
/* 8037FB28 0037CA88  28 1E 00 10 */	cmplwi r30, 0x10
/* 8037FB2C 0037CA8C  3B DE 00 01 */	addi r30, r30, 1
/* 8037FB30 0037CA90  41 80 FF C8 */	blt lbl_8037FAF8
lbl_8037FB34:
/* 8037FB34 0037CA94  4B FE FC E1 */	bl PPCHalt
/* 8037FB38 0037CA98  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8037FB3C 0037CA9C  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8037FB40 0037CAA0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8037FB44 0037CAA4  83 A1 00 84 */	lwz r29, 0x84(r1)
/* 8037FB48 0037CAA8  83 81 00 80 */	lwz r28, 0x80(r1)
/* 8037FB4C 0037CAAC  38 21 00 90 */	addi r1, r1, 0x90
/* 8037FB50 0037CAB0  7C 08 03 A6 */	mtlr r0
/* 8037FB54 0037CAB4  4E 80 00 20 */	blr

.global OSSetErrorHandler
OSSetErrorHandler:
/* 8037FB58 0037CAB8  7C 08 02 A6 */	mflr r0
/* 8037FB5C 0037CABC  90 01 00 04 */	stw r0, 4(r1)
/* 8037FB60 0037CAC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8037FB64 0037CAC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8037FB68 0037CAC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8037FB6C 0037CACC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8037FB70 0037CAD0  3B A3 00 00 */	addi r29, r3, 0
/* 8037FB74 0037CAD4  93 81 00 20 */	stw r28, 0x20(r1)
/* 8037FB78 0037CAD8  3B 84 00 00 */	addi r28, r4, 0
/* 8037FB7C 0037CADC  48 00 1A E5 */	bl OSDisableInterrupts
/* 8037FB80 0037CAE0  3C 80 80 54 */	lis r4, lbl_80541250@ha
/* 8037FB84 0037CAE4  57 A5 13 BA */	rlwinm r5, r29, 2, 0xe, 0x1d
/* 8037FB88 0037CAE8  38 04 12 50 */	addi r0, r4, lbl_80541250@l
/* 8037FB8C 0037CAEC  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 8037FB90 0037CAF0  7C 80 2A 14 */	add r4, r0, r5
/* 8037FB94 0037CAF4  83 C4 00 00 */	lwz r30, 0(r4)
/* 8037FB98 0037CAF8  28 06 00 10 */	cmplwi r6, 0x10
/* 8037FB9C 0037CAFC  7C 7D 1B 78 */	mr r29, r3
/* 8037FBA0 0037CB00  93 84 00 00 */	stw r28, 0(r4)
/* 8037FBA4 0037CB04  40 82 01 A0 */	bne lbl_8037FD44
/* 8037FBA8 0037CB08  4B FE FC 2D */	bl PPCMfmsr
/* 8037FBAC 0037CB0C  3B E3 00 00 */	addi r31, r3, 0
/* 8037FBB0 0037CB10  63 E3 20 00 */	ori r3, r31, 0x2000
/* 8037FBB4 0037CB14  4B FE FC 29 */	bl PPCMtmsr
/* 8037FBB8 0037CB18  4B FE FC 71 */	bl PPCMffpscr
/* 8037FBBC 0037CB1C  28 1C 00 00 */	cmplwi r28, 0
/* 8037FBC0 0037CB20  41 82 01 18 */	beq lbl_8037FCD8
/* 8037FBC4 0037CB24  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 8037FBC8 0037CB28  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8037FBCC 0037CB2C  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 8037FBD0 0037CB30  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 8037FBD4 0037CB34  48 00 00 E8 */	b lbl_8037FCBC
lbl_8037FBD8:
/* 8037FBD8 0037CB38  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 8037FBDC 0037CB3C  60 00 09 00 */	ori r0, r0, 0x900
/* 8037FBE0 0037CB40  90 06 01 9C */	stw r0, 0x19c(r6)
/* 8037FBE4 0037CB44  A0 A6 01 A2 */	lhz r5, 0x1a2(r6)
/* 8037FBE8 0037CB48  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 8037FBEC 0037CB4C  40 82 00 AC */	bne lbl_8037FC98
/* 8037FBF0 0037CB50  60 A5 00 01 */	ori r5, r5, 1
/* 8037FBF4 0037CB54  38 00 00 04 */	li r0, 4
/* 8037FBF8 0037CB58  B0 A6 01 A2 */	sth r5, 0x1a2(r6)
/* 8037FBFC 0037CB5C  7C 09 03 A6 */	mtctr r0
/* 8037FC00 0037CB60  38 A6 00 00 */	addi r5, r6, 0
lbl_8037FC04:
/* 8037FC04 0037CB64  38 00 FF FF */	li r0, -1
/* 8037FC08 0037CB68  90 05 00 94 */	stw r0, 0x94(r5)
/* 8037FC0C 0037CB6C  90 05 00 90 */	stw r0, 0x90(r5)
/* 8037FC10 0037CB70  90 05 01 CC */	stw r0, 0x1cc(r5)
/* 8037FC14 0037CB74  90 05 01 C8 */	stw r0, 0x1c8(r5)
/* 8037FC18 0037CB78  90 05 00 9C */	stw r0, 0x9c(r5)
/* 8037FC1C 0037CB7C  90 05 00 98 */	stw r0, 0x98(r5)
/* 8037FC20 0037CB80  90 05 01 D4 */	stw r0, 0x1d4(r5)
/* 8037FC24 0037CB84  90 05 01 D0 */	stw r0, 0x1d0(r5)
/* 8037FC28 0037CB88  90 05 00 A4 */	stw r0, 0xa4(r5)
/* 8037FC2C 0037CB8C  90 05 00 A0 */	stw r0, 0xa0(r5)
/* 8037FC30 0037CB90  90 05 01 DC */	stw r0, 0x1dc(r5)
/* 8037FC34 0037CB94  90 05 01 D8 */	stw r0, 0x1d8(r5)
/* 8037FC38 0037CB98  90 05 00 AC */	stw r0, 0xac(r5)
/* 8037FC3C 0037CB9C  90 05 00 A8 */	stw r0, 0xa8(r5)
/* 8037FC40 0037CBA0  90 05 01 E4 */	stw r0, 0x1e4(r5)
/* 8037FC44 0037CBA4  90 05 01 E0 */	stw r0, 0x1e0(r5)
/* 8037FC48 0037CBA8  90 05 00 B4 */	stw r0, 0xb4(r5)
/* 8037FC4C 0037CBAC  90 05 00 B0 */	stw r0, 0xb0(r5)
/* 8037FC50 0037CBB0  90 05 01 EC */	stw r0, 0x1ec(r5)
/* 8037FC54 0037CBB4  90 05 01 E8 */	stw r0, 0x1e8(r5)
/* 8037FC58 0037CBB8  90 05 00 BC */	stw r0, 0xbc(r5)
/* 8037FC5C 0037CBBC  90 05 00 B8 */	stw r0, 0xb8(r5)
/* 8037FC60 0037CBC0  90 05 01 F4 */	stw r0, 0x1f4(r5)
/* 8037FC64 0037CBC4  90 05 01 F0 */	stw r0, 0x1f0(r5)
/* 8037FC68 0037CBC8  90 05 00 C4 */	stw r0, 0xc4(r5)
/* 8037FC6C 0037CBCC  90 05 00 C0 */	stw r0, 0xc0(r5)
/* 8037FC70 0037CBD0  90 05 01 FC */	stw r0, 0x1fc(r5)
/* 8037FC74 0037CBD4  90 05 01 F8 */	stw r0, 0x1f8(r5)
/* 8037FC78 0037CBD8  90 05 00 CC */	stw r0, 0xcc(r5)
/* 8037FC7C 0037CBDC  90 05 00 C8 */	stw r0, 0xc8(r5)
/* 8037FC80 0037CBE0  90 05 02 04 */	stw r0, 0x204(r5)
/* 8037FC84 0037CBE4  90 05 02 00 */	stw r0, 0x200(r5)
/* 8037FC88 0037CBE8  38 A5 00 40 */	addi r5, r5, 0x40
/* 8037FC8C 0037CBEC  42 00 FF 78 */	bdnz lbl_8037FC04
/* 8037FC90 0037CBF0  38 00 00 04 */	li r0, 4
/* 8037FC94 0037CBF4  90 06 01 94 */	stw r0, 0x194(r6)
lbl_8037FC98:
/* 8037FC98 0037CBF8  80 0D 9F 78 */	lwz r0, lbl_805A8B38@sda21(r13)
/* 8037FC9C 0037CBFC  80 A6 01 94 */	lwz r5, 0x194(r6)
/* 8037FCA0 0037CC00  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 8037FCA4 0037CC04  7C A0 03 78 */	or r0, r5, r0
/* 8037FCA8 0037CC08  90 06 01 94 */	stw r0, 0x194(r6)
/* 8037FCAC 0037CC0C  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8037FCB0 0037CC10  7C 00 20 38 */	and r0, r0, r4
/* 8037FCB4 0037CC14  90 06 01 94 */	stw r0, 0x194(r6)
/* 8037FCB8 0037CC18  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_8037FCBC:
/* 8037FCBC 0037CC1C  28 06 00 00 */	cmplwi r6, 0
/* 8037FCC0 0037CC20  40 82 FF 18 */	bne lbl_8037FBD8
/* 8037FCC4 0037CC24  80 0D 9F 78 */	lwz r0, lbl_805A8B38@sda21(r13)
/* 8037FCC8 0037CC28  63 FF 09 00 */	ori r31, r31, 0x900
/* 8037FCCC 0037CC2C  54 00 06 38 */	rlwinm r0, r0, 0, 0x18, 0x1c
/* 8037FCD0 0037CC30  7C 63 03 78 */	or r3, r3, r0
/* 8037FCD4 0037CC34  48 00 00 58 */	b lbl_8037FD2C
lbl_8037FCD8:
/* 8037FCD8 0037CC38  3C A0 80 00 */	lis r5, 0x800000DC@ha
/* 8037FCDC 0037CC3C  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8037FCE0 0037CC40  80 C5 00 DC */	lwz r6, 0x800000DC@l(r5)
/* 8037FCE4 0037CC44  38 84 F8 FF */	addi r4, r4, 0x6005F8FF@l
/* 8037FCE8 0037CC48  38 A0 F6 FF */	li r5, -2305
/* 8037FCEC 0037CC4C  48 00 00 2C */	b lbl_8037FD18
lbl_8037FCF0:
/* 8037FCF0 0037CC50  80 06 01 9C */	lwz r0, 0x19c(r6)
/* 8037FCF4 0037CC54  7C 00 28 38 */	and r0, r0, r5
/* 8037FCF8 0037CC58  90 06 01 9C */	stw r0, 0x19c(r6)
/* 8037FCFC 0037CC5C  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8037FD00 0037CC60  54 00 07 6E */	rlwinm r0, r0, 0, 0x1d, 0x17
/* 8037FD04 0037CC64  90 06 01 94 */	stw r0, 0x194(r6)
/* 8037FD08 0037CC68  80 06 01 94 */	lwz r0, 0x194(r6)
/* 8037FD0C 0037CC6C  7C 00 20 38 */	and r0, r0, r4
/* 8037FD10 0037CC70  90 06 01 94 */	stw r0, 0x194(r6)
/* 8037FD14 0037CC74  80 C6 02 FC */	lwz r6, 0x2fc(r6)
lbl_8037FD18:
/* 8037FD18 0037CC78  28 06 00 00 */	cmplwi r6, 0
/* 8037FD1C 0037CC7C  40 82 FF D4 */	bne lbl_8037FCF0
/* 8037FD20 0037CC80  38 00 F6 FF */	li r0, -2305
/* 8037FD24 0037CC84  54 63 07 6E */	rlwinm r3, r3, 0, 0x1d, 0x17
/* 8037FD28 0037CC88  7F FF 00 38 */	and r31, r31, r0
lbl_8037FD2C:
/* 8037FD2C 0037CC8C  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8037FD30 0037CC90  38 04 F8 FF */	addi r0, r4, 0x6005F8FF@l
/* 8037FD34 0037CC94  7C 63 00 38 */	and r3, r3, r0
/* 8037FD38 0037CC98  4B FE FB 11 */	bl PPCMtfpscr
/* 8037FD3C 0037CC9C  7F E3 FB 78 */	mr r3, r31
/* 8037FD40 0037CCA0  4B FE FA 9D */	bl PPCMtmsr
lbl_8037FD44:
/* 8037FD44 0037CCA4  7F A3 EB 78 */	mr r3, r29
/* 8037FD48 0037CCA8  48 00 19 41 */	bl OSRestoreInterrupts
/* 8037FD4C 0037CCAC  7F C3 F3 78 */	mr r3, r30
/* 8037FD50 0037CCB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8037FD54 0037CCB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8037FD58 0037CCB8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8037FD5C 0037CCBC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8037FD60 0037CCC0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8037FD64 0037CCC4  38 21 00 30 */	addi r1, r1, 0x30
/* 8037FD68 0037CCC8  7C 08 03 A6 */	mtlr r0
/* 8037FD6C 0037CCCC  4E 80 00 20 */	blr

.global __OSUnhandledException
__OSUnhandledException:
/* 8037FD70 0037CCD0  7C 08 02 A6 */	mflr r0
/* 8037FD74 0037CCD4  3D 00 80 54 */	lis r8, lbl_80541250@ha
/* 8037FD78 0037CCD8  90 01 00 04 */	stw r0, 4(r1)
/* 8037FD7C 0037CCDC  3C E0 80 3F */	lis r7, lbl_803F1430@ha
/* 8037FD80 0037CCE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8037FD84 0037CCE4  BE C1 00 18 */	stmw r22, 0x18(r1)
/* 8037FD88 0037CCE8  3B 03 00 00 */	addi r24, r3, 0
/* 8037FD8C 0037CCEC  3B 24 00 00 */	addi r25, r4, 0
/* 8037FD90 0037CCF0  3B 45 00 00 */	addi r26, r5, 0
/* 8037FD94 0037CCF4  3B 66 00 00 */	addi r27, r6, 0
/* 8037FD98 0037CCF8  3B C8 12 50 */	addi r30, r8, lbl_80541250@l
/* 8037FD9C 0037CCFC  3B E7 14 30 */	addi r31, r7, lbl_803F1430@l
/* 8037FDA0 0037CD00  48 00 56 09 */	bl OSGetTime
/* 8037FDA4 0037CD04  80 B9 01 9C */	lwz r5, 0x19c(r25)
/* 8037FDA8 0037CD08  3B 84 00 00 */	addi r28, r4, 0
/* 8037FDAC 0037CD0C  3B A3 00 00 */	addi r29, r3, 0
/* 8037FDB0 0037CD10  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 8037FDB4 0037CD14  40 82 00 18 */	bne lbl_8037FDCC
/* 8037FDB8 0037CD18  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8037FDBC 0037CD1C  4C C6 31 82 */	crclr 6
/* 8037FDC0 0037CD20  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 8037FDC4 0037CD24  4B FF FB E9 */	bl OSReport
/* 8037FDC8 0037CD28  48 00 01 54 */	b lbl_8037FF1C
lbl_8037FDCC:
/* 8037FDCC 0037CD2C  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8037FDD0 0037CD30  28 00 00 06 */	cmplwi r0, 6
/* 8037FDD4 0037CD34  40 82 00 D8 */	bne lbl_8037FEAC
/* 8037FDD8 0037CD38  54 A0 02 D7 */	rlwinm. r0, r5, 0, 0xb, 0xb
/* 8037FDDC 0037CD3C  41 82 00 D0 */	beq lbl_8037FEAC
/* 8037FDE0 0037CD40  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 8037FDE4 0037CD44  28 00 00 00 */	cmplwi r0, 0
/* 8037FDE8 0037CD48  41 82 00 C4 */	beq lbl_8037FEAC
/* 8037FDEC 0037CD4C  3B 00 00 10 */	li r24, 0x10
/* 8037FDF0 0037CD50  4B FE F9 E5 */	bl PPCMfmsr
/* 8037FDF4 0037CD54  3A E3 00 00 */	addi r23, r3, 0
/* 8037FDF8 0037CD58  62 E3 20 00 */	ori r3, r23, 0x2000
/* 8037FDFC 0037CD5C  4B FE F9 E1 */	bl PPCMtmsr
/* 8037FE00 0037CD60  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 8037FE04 0037CD64  80 63 00 D8 */	lwz r3, 0x800000D8@l(r3)
/* 8037FE08 0037CD68  28 03 00 00 */	cmplwi r3, 0
/* 8037FE0C 0037CD6C  41 82 00 08 */	beq lbl_8037FE14
/* 8037FE10 0037CD70  4B FF F6 05 */	bl OSSaveFPUContext
lbl_8037FE14:
/* 8037FE14 0037CD74  4B FE FA 15 */	bl PPCMffpscr
/* 8037FE18 0037CD78  3C 80 60 06 */	lis r4, 0x6005F8FF@ha
/* 8037FE1C 0037CD7C  3A C4 F8 FF */	addi r22, r4, 0x6005F8FF@l
/* 8037FE20 0037CD80  7C 63 B0 38 */	and r3, r3, r22
/* 8037FE24 0037CD84  4B FE FA 25 */	bl PPCMtfpscr
/* 8037FE28 0037CD88  7E E3 BB 78 */	mr r3, r23
/* 8037FE2C 0037CD8C  4B FE F9 B1 */	bl PPCMtmsr
/* 8037FE30 0037CD90  3E E0 80 00 */	lis r23, 0x800000D8@ha
/* 8037FE34 0037CD94  80 17 00 D8 */	lwz r0, 0x800000D8@l(r23)
/* 8037FE38 0037CD98  7C 00 C8 40 */	cmplw r0, r25
/* 8037FE3C 0037CD9C  40 82 00 54 */	bne lbl_8037FE90
/* 8037FE40 0037CDA0  48 00 47 A1 */	bl OSDisableScheduler
/* 8037FE44 0037CDA4  81 9E 00 40 */	lwz r12, 0x40(r30)
/* 8037FE48 0037CDA8  38 99 00 00 */	addi r4, r25, 0
/* 8037FE4C 0037CDAC  38 BA 00 00 */	addi r5, r26, 0
/* 8037FE50 0037CDB0  4C C6 31 82 */	crclr 6
/* 8037FE54 0037CDB4  7D 88 03 A6 */	mtlr r12
/* 8037FE58 0037CDB8  38 DB 00 00 */	addi r6, r27, 0
/* 8037FE5C 0037CDBC  38 60 00 10 */	li r3, 0x10
/* 8037FE60 0037CDC0  4E 80 00 21 */	blrl
/* 8037FE64 0037CDC4  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 8037FE68 0037CDC8  38 00 00 00 */	li r0, 0
/* 8037FE6C 0037CDCC  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 8037FE70 0037CDD0  90 79 01 9C */	stw r3, 0x19c(r25)
/* 8037FE74 0037CDD4  90 17 00 D8 */	stw r0, 0xd8(r23)
/* 8037FE78 0037CDD8  80 19 01 94 */	lwz r0, 0x194(r25)
/* 8037FE7C 0037CDDC  7C 00 B0 38 */	and r0, r0, r22
/* 8037FE80 0037CDE0  90 19 01 94 */	stw r0, 0x194(r25)
/* 8037FE84 0037CDE4  48 00 47 9D */	bl OSEnableScheduler
/* 8037FE88 0037CDE8  48 00 4C 65 */	bl __OSReschedule
/* 8037FE8C 0037CDEC  48 00 00 18 */	b lbl_8037FEA4
lbl_8037FE90:
/* 8037FE90 0037CDF0  80 79 01 9C */	lwz r3, 0x19c(r25)
/* 8037FE94 0037CDF4  38 00 00 00 */	li r0, 0
/* 8037FE98 0037CDF8  54 63 04 E2 */	rlwinm r3, r3, 0, 0x13, 0x11
/* 8037FE9C 0037CDFC  90 79 01 9C */	stw r3, 0x19c(r25)
/* 8037FEA0 0037CE00  90 17 00 D8 */	stw r0, 0xd8(r23)
lbl_8037FEA4:
/* 8037FEA4 0037CE04  7F 23 CB 78 */	mr r3, r25
/* 8037FEA8 0037CE08  4B FF F6 5D */	bl OSLoadContext
lbl_8037FEAC:
/* 8037FEAC 0037CE0C  57 17 06 3E */	clrlwi r23, r24, 0x18
/* 8037FEB0 0037CE10  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 8037FEB4 0037CE14  7E DE 02 14 */	add r22, r30, r0
/* 8037FEB8 0037CE18  80 16 00 00 */	lwz r0, 0(r22)
/* 8037FEBC 0037CE1C  28 00 00 00 */	cmplwi r0, 0
/* 8037FEC0 0037CE20  41 82 00 38 */	beq lbl_8037FEF8
/* 8037FEC4 0037CE24  48 00 47 1D */	bl OSDisableScheduler
/* 8037FEC8 0037CE28  81 96 00 00 */	lwz r12, 0(r22)
/* 8037FECC 0037CE2C  38 77 00 00 */	addi r3, r23, 0
/* 8037FED0 0037CE30  38 99 00 00 */	addi r4, r25, 0
/* 8037FED4 0037CE34  4C C6 31 82 */	crclr 6
/* 8037FED8 0037CE38  7D 88 03 A6 */	mtlr r12
/* 8037FEDC 0037CE3C  38 BA 00 00 */	addi r5, r26, 0
/* 8037FEE0 0037CE40  38 DB 00 00 */	addi r6, r27, 0
/* 8037FEE4 0037CE44  4E 80 00 21 */	blrl
/* 8037FEE8 0037CE48  48 00 47 39 */	bl OSEnableScheduler
/* 8037FEEC 0037CE4C  48 00 4C 01 */	bl __OSReschedule
/* 8037FEF0 0037CE50  7F 23 CB 78 */	mr r3, r25
/* 8037FEF4 0037CE54  4B FF F6 11 */	bl OSLoadContext
lbl_8037FEF8:
/* 8037FEF8 0037CE58  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8037FEFC 0037CE5C  28 00 00 08 */	cmplwi r0, 8
/* 8037FF00 0037CE60  40 82 00 0C */	bne lbl_8037FF0C
/* 8037FF04 0037CE64  7F 23 CB 78 */	mr r3, r25
/* 8037FF08 0037CE68  4B FF F5 FD */	bl OSLoadContext
lbl_8037FF0C:
/* 8037FF0C 0037CE6C  38 7F 00 7C */	addi r3, r31, 0x7c
/* 8037FF10 0037CE70  4C C6 31 82 */	crclr 6
/* 8037FF14 0037CE74  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 8037FF18 0037CE78  4B FF FA 95 */	bl OSReport
lbl_8037FF1C:
/* 8037FF1C 0037CE7C  38 6D 9F 7C */	addi r3, r13, lbl_805A8B3C@sda21
/* 8037FF20 0037CE80  4C C6 31 82 */	crclr 6
/* 8037FF24 0037CE84  4B FF FA 89 */	bl OSReport
/* 8037FF28 0037CE88  7F 23 CB 78 */	mr r3, r25
/* 8037FF2C 0037CE8C  4B FF F7 0D */	bl OSDumpContext
/* 8037FF30 0037CE90  38 9A 00 00 */	addi r4, r26, 0
/* 8037FF34 0037CE94  4C C6 31 82 */	crclr 6
/* 8037FF38 0037CE98  38 BB 00 00 */	addi r5, r27, 0
/* 8037FF3C 0037CE9C  38 7F 00 94 */	addi r3, r31, 0x94
/* 8037FF40 0037CEA0  4B FF FA 6D */	bl OSReport
/* 8037FF44 0037CEA4  38 DC 00 00 */	addi r6, r28, 0
/* 8037FF48 0037CEA8  4C C6 31 82 */	crclr 6
/* 8037FF4C 0037CEAC  38 BD 00 00 */	addi r5, r29, 0
/* 8037FF50 0037CEB0  38 7F 00 C8 */	addi r3, r31, 0xc8
/* 8037FF54 0037CEB4  4B FF FA 59 */	bl OSReport
/* 8037FF58 0037CEB8  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 8037FF5C 0037CEBC  28 00 00 0F */	cmplwi r0, 0xf
/* 8037FF60 0037CEC0  41 81 00 C4 */	bgt lbl_80380024
/* 8037FF64 0037CEC4  3C 60 80 3F */	lis r3, lbl_803F170C@ha
/* 8037FF68 0037CEC8  38 63 17 0C */	addi r3, r3, lbl_803F170C@l
/* 8037FF6C 0037CECC  54 00 10 3A */	slwi r0, r0, 2
/* 8037FF70 0037CED0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8037FF74 0037CED4  7C 09 03 A6 */	mtctr r0
/* 8037FF78 0037CED8  4E 80 04 20 */	bctr
lbl_8037FF7C:
/* 8037FF7C 0037CEDC  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8037FF80 0037CEE0  38 BB 00 00 */	addi r5, r27, 0
/* 8037FF84 0037CEE4  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 8037FF88 0037CEE8  4C C6 31 82 */	crclr 6
/* 8037FF8C 0037CEEC  4B FF FA 21 */	bl OSReport
/* 8037FF90 0037CEF0  48 00 00 94 */	b lbl_80380024
lbl_8037FF94:
/* 8037FF94 0037CEF4  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8037FF98 0037CEF8  38 7F 01 38 */	addi r3, r31, 0x138
/* 8037FF9C 0037CEFC  4C C6 31 82 */	crclr 6
/* 8037FFA0 0037CF00  4B FF FA 0D */	bl OSReport
/* 8037FFA4 0037CF04  48 00 00 80 */	b lbl_80380024
lbl_8037FFA8:
/* 8037FFA8 0037CF08  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8037FFAC 0037CF0C  38 BB 00 00 */	addi r5, r27, 0
/* 8037FFB0 0037CF10  38 7F 01 84 */	addi r3, r31, 0x184
/* 8037FFB4 0037CF14  4C C6 31 82 */	crclr 6
/* 8037FFB8 0037CF18  4B FF F9 F5 */	bl OSReport
/* 8037FFBC 0037CF1C  48 00 00 68 */	b lbl_80380024
lbl_8037FFC0:
/* 8037FFC0 0037CF20  80 99 01 98 */	lwz r4, 0x198(r25)
/* 8037FFC4 0037CF24  38 BB 00 00 */	addi r5, r27, 0
/* 8037FFC8 0037CF28  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 8037FFCC 0037CF2C  4C C6 31 82 */	crclr 6
/* 8037FFD0 0037CF30  4B FF F9 DD */	bl OSReport
/* 8037FFD4 0037CF34  48 00 00 50 */	b lbl_80380024
lbl_8037FFD8:
/* 8037FFD8 0037CF38  38 6D 9F 7C */	addi r3, r13, lbl_805A8B3C@sda21
/* 8037FFDC 0037CF3C  4C C6 31 82 */	crclr 6
/* 8037FFE0 0037CF40  4B FF F9 CD */	bl OSReport
/* 8037FFE4 0037CF44  3F 20 CC 00 */	lis r25, 0xCC005000@ha
/* 8037FFE8 0037CF48  4C C6 31 82 */	crclr 6
/* 8037FFEC 0037CF4C  3B 19 50 00 */	addi r24, r25, 0xCC005000@l
/* 8037FFF0 0037CF50  A0 99 50 30 */	lhz r4, 0x5030(r25)
/* 8037FFF4 0037CF54  38 7F 02 48 */	addi r3, r31, 0x248
/* 8037FFF8 0037CF58  A0 B9 50 32 */	lhz r5, 0x5032(r25)
/* 8037FFFC 0037CF5C  4B FF F9 B1 */	bl OSReport
/* 80380000 0037CF60  A0 98 00 20 */	lhz r4, 0x20(r24)
/* 80380004 0037CF64  38 7F 02 68 */	addi r3, r31, 0x268
/* 80380008 0037CF68  A0 B8 00 22 */	lhz r5, 0x22(r24)
/* 8038000C 0037CF6C  4C C6 31 82 */	crclr 6
/* 80380010 0037CF70  4B FF F9 9D */	bl OSReport
/* 80380014 0037CF74  80 99 60 14 */	lwz r4, 0x6014(r25)
/* 80380018 0037CF78  4C C6 31 82 */	crclr 6
/* 8038001C 0037CF7C  38 7F 02 88 */	addi r3, r31, 0x288
/* 80380020 0037CF80  4B FF F9 8D */	bl OSReport
lbl_80380024:
/* 80380024 0037CF84  A8 8D AD 18 */	lha r4, lbl_805A98D8@sda21(r13)
/* 80380028 0037CF88  38 7F 02 A4 */	addi r3, r31, 0x2a4
/* 8038002C 0037CF8C  4C C6 31 82 */	crclr 6
/* 80380030 0037CF90  80 AD AD 14 */	lwz r5, lbl_805A98D4@sda21(r13)
/* 80380034 0037CF94  80 ED AD 20 */	lwz r7, lbl_805A98E0@sda21(r13)
/* 80380038 0037CF98  81 0D AD 24 */	lwz r8, lbl_805A98E4@sda21(r13)
/* 8038003C 0037CF9C  4B FF F9 71 */	bl OSReport
/* 80380040 0037CFA0  4B FE F7 D5 */	bl PPCHalt
/* 80380044 0037CFA4  BA C1 00 18 */	lmw r22, 0x18(r1)
/* 80380048 0037CFA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8038004C 0037CFAC  38 21 00 40 */	addi r1, r1, 0x40
/* 80380050 0037CFB0  7C 08 03 A6 */	mtlr r0
/* 80380054 0037CFB4  4E 80 00 20 */	blr

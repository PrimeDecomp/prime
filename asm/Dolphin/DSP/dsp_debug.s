.include "macros.inc"

.section .text, "ax"

.global __DSP_debug_printf
__DSP_debug_printf:
/* 8036FBD0 0036CB30  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8036FBD4 0036CB34  40 86 00 24 */	bne cr1, lbl_8036FBF8
/* 8036FBD8 0036CB38  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 8036FBDC 0036CB3C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8036FBE0 0036CB40  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 8036FBE4 0036CB44  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 8036FBE8 0036CB48  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 8036FBEC 0036CB4C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8036FBF0 0036CB50  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 8036FBF4 0036CB54  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_8036FBF8:
/* 8036FBF8 0036CB58  90 61 00 08 */	stw r3, 8(r1)
/* 8036FBFC 0036CB5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8036FC00 0036CB60  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8036FC04 0036CB64  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8036FC08 0036CB68  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8036FC0C 0036CB6C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 8036FC10 0036CB70  91 21 00 20 */	stw r9, 0x20(r1)
/* 8036FC14 0036CB74  91 41 00 24 */	stw r10, 0x24(r1)
/* 8036FC18 0036CB78  38 21 00 70 */	addi r1, r1, 0x70
/* 8036FC1C 0036CB7C  4E 80 00 20 */	blr 

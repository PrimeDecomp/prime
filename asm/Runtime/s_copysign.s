.include "macros.inc"

.section .text, "ax"

.global copysign
copysign:
/* 803943C8 00391328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803943CC 0039132C  D8 21 00 08 */	stfd f1, 8(r1)
/* 803943D0 00391330  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 803943D4 00391334  80 61 00 08 */	lwz r3, 8(r1)
/* 803943D8 00391338  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803943DC 0039133C  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 803943E0 00391340  90 01 00 08 */	stw r0, 8(r1)
/* 803943E4 00391344  C8 21 00 08 */	lfd f1, 8(r1)
/* 803943E8 00391348  38 21 00 20 */	addi r1, r1, 0x20
/* 803943EC 0039134C  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"

.global __ct__9CVector3iFiii
__ct__9CVector3iFiii:
/* 80314C48 00311BA8  90 83 00 00 */	stw r4, 0(r3)
/* 80314C4C 00311BAC  90 A3 00 04 */	stw r5, 4(r3)
/* 80314C50 00311BB0  90 C3 00 08 */	stw r6, 8(r3)
/* 80314C54 00311BB4  4E 80 00 20 */	blr

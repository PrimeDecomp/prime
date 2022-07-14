.include "macros.inc"

.section .text, "ax"

.global acos
acos:
/* 80394C2C 00391B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394C30 00391B90  7C 08 02 A6 */	mflr r0
/* 80394C34 00391B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394C38 00391B98  4B FF C7 91 */	bl __ieee754_acos
/* 80394C3C 00391B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394C40 00391BA0  7C 08 03 A6 */	mtlr r0
/* 80394C44 00391BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80394C48 00391BA8  4E 80 00 20 */	blr

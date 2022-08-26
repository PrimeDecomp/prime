.include "macros.inc"

.section .text, "ax"

.global pow
pow:
/* 80394CEC 00391C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394CF0 00391C50  7C 08 02 A6 */	mflr r0
/* 80394CF4 00391C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394CF8 00391C58  4B FF D6 A9 */	bl __ieee754_pow
/* 80394CFC 00391C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394D00 00391C60  7C 08 03 A6 */	mtlr r0
/* 80394D04 00391C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80394D08 00391C68  4E 80 00 20 */	blr

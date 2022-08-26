.include "macros.inc"

.section .text, "ax"

.global fmod
fmod:
/* 80394CAC 00391C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394CB0 00391C10  7C 08 02 A6 */	mflr r0
/* 80394CB4 00391C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394CB8 00391C18  4B FF D1 31 */	bl __ieee754_fmod
/* 80394CBC 00391C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394CC0 00391C20  7C 08 03 A6 */	mtlr r0
/* 80394CC4 00391C24  38 21 00 10 */	addi r1, r1, 0x10
/* 80394CC8 00391C28  4E 80 00 20 */	blr

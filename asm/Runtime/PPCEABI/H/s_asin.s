.include "macros.inc"

.section .text, "ax" 

.global asin
asin:
/* 80394C4C 00391BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394C50 00391BB0  7C 08 02 A6 */	mflr r0
/* 80394C54 00391BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394C58 00391BB8  4B FF CA 81 */	bl __ieee754_asin
/* 80394C5C 00391BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394C60 00391BC0  7C 08 03 A6 */	mtlr r0
/* 80394C64 00391BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80394C68 00391BC8  4E 80 00 20 */	blr 
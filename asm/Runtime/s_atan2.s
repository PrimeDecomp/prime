.include "macros.inc"

.section .text, "ax" 

.global atan2
atan2:
/* 80394C6C 00391BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394C70 00391BD0  7C 08 02 A6 */	mflr r0
/* 80394C74 00391BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394C78 00391BD8  4B FF CC C5 */	bl __ieee754_atan2
/* 80394C7C 00391BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394C80 00391BE0  7C 08 03 A6 */	mtlr r0
/* 80394C84 00391BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80394C88 00391BE8  4E 80 00 20 */	blr 
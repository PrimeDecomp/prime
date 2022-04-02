.include "macros.inc"

.section .text, "ax" 

.global exp
exp:
/* 80394C8C 00391BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394C90 00391BF0  7C 08 02 A6 */	mflr r0
/* 80394C94 00391BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394C98 00391BF8  4B FF CF 35 */	bl __ieee754_exp
/* 80394C9C 00391BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394CA0 00391C00  7C 08 03 A6 */	mtlr r0
/* 80394CA4 00391C04  38 21 00 10 */	addi r1, r1, 0x10
/* 80394CA8 00391C08  4E 80 00 20 */	blr 
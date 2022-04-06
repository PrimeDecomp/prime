.include "macros.inc"

.section .text, "ax" 

.global log
log:
/* 80394CCC 00391C2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394CD0 00391C30  7C 08 02 A6 */	mflr r0
/* 80394CD4 00391C34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394CD8 00391C38  4B FF D4 4D */	bl __ieee754_log
/* 80394CDC 00391C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394CE0 00391C40  7C 08 03 A6 */	mtlr r0
/* 80394CE4 00391C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80394CE8 00391C48  4E 80 00 20 */	blr 
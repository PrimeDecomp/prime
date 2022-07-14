.include "macros.inc"

.section .text, "ax"

.global cosf
cosf:
/* 80394D0C 00391C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80394D10 00391C70  7C 08 02 A6 */	mflr r0
/* 80394D14 00391C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80394D18 00391C78  4B FF F6 D9 */	bl cos
/* 80394D1C 00391C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80394D20 00391C80  FC 20 08 18 */	frsp f1, f1
/* 80394D24 00391C84  7C 08 03 A6 */	mtlr r0
/* 80394D28 00391C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80394D2C 00391C8C  4E 80 00 20 */	blr

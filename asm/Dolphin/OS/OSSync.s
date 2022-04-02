.include "macros.inc"

.section .text, "ax"

__OSSystemCallVectorStart:
.global SystemCallVector
SystemCallVector:
/* 803843E4 00381344  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 803843E8 00381348  61 2A 00 08 */	ori r10, r9, 8
/* 803843EC 0038134C  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 803843F0 00381350  4C 00 01 2C */	isync 
/* 803843F4 00381354  7C 00 04 AC */	sync 0
/* 803843F8 00381358  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 803843FC 0038135C  4C 00 00 64 */	rfi 
__OSSystemCallVectorEnd:
/* 80384400 00381360  60 00 00 00 */	nop 

.global __OSInitSystemCall
__OSInitSystemCall:
/* 80384404 00381364  7C 08 02 A6 */	mflr r0
/* 80384408 00381368  90 01 00 04 */	stw r0, 4(r1)
/* 8038440C 0038136C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80384410 00381370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80384414 00381374  3C A0 80 00 */	lis r5, 0x80000C00@ha
/* 80384418 00381378  3C 80 80 38 */	lis r4, __OSSystemCallVectorStart@ha
/* 8038441C 0038137C  3C 60 80 38 */	lis r3, __OSSystemCallVectorEnd@ha
/* 80384420 00381380  3B E5 0C 00 */	addi r31, r5, 0x80000C00@l
/* 80384424 00381384  38 03 44 00 */	addi r0, r3, __OSSystemCallVectorEnd@l
/* 80384428 00381388  38 84 43 E4 */	addi r4, r4, __OSSystemCallVectorStart@l
/* 8038442C 0038138C  7F E3 FB 78 */	mr r3, r31
/* 80384430 00381390  7C A4 00 50 */	subf r5, r4, r0
/* 80384434 00381394  4B C7 F0 5D */	bl memcpy
/* 80384438 00381398  7F E3 FB 78 */	mr r3, r31
/* 8038443C 0038139C  38 80 01 00 */	li r4, 0x100
/* 80384440 003813A0  4B FF A6 D1 */	bl DCFlushRangeNoSync
/* 80384444 003813A4  7C 00 04 AC */	sync 0
/* 80384448 003813A8  7F E3 FB 78 */	mr r3, r31
/* 8038444C 003813AC  38 80 01 00 */	li r4, 0x100
/* 80384450 003813B0  4B FF A7 45 */	bl ICInvalidateRange
/* 80384454 003813B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80384458 003813B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038445C 003813BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80384460 003813C0  7C 08 03 A6 */	mtlr r0
/* 80384464 003813C4  4E 80 00 20 */	blr 

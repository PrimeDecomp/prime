.include "macros.inc"

.section .text, "ax" 

.global salMalloc
salMalloc:
/* 803B5134 003B2094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5138 003B2098  7C 08 02 A6 */	mflr r0
/* 803B513C 003B209C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5140 003B20A0  81 8D AF 84 */	lwz r12, salHooks@sda21(r13)
/* 803B5144 003B20A4  7D 89 03 A6 */	mtctr r12
/* 803B5148 003B20A8  4E 80 04 21 */	bctrl 
/* 803B514C 003B20AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B5150 003B20B0  7C 08 03 A6 */	mtlr r0
/* 803B5154 003B20B4  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5158 003B20B8  4E 80 00 20 */	blr 

.global salFree
salFree:
/* 803B515C 003B20BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5160 003B20C0  7C 08 02 A6 */	mflr r0
/* 803B5164 003B20C4  38 8D AF 84 */	addi r4, r13, salHooks@sda21
/* 803B5168 003B20C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B516C 003B20CC  81 84 00 04 */	lwz r12, 4(r4)
/* 803B5170 003B20D0  7D 89 03 A6 */	mtctr r12
/* 803B5174 003B20D4  4E 80 04 21 */	bctrl 
/* 803B5178 003B20D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B517C 003B20DC  7C 08 03 A6 */	mtlr r0
/* 803B5180 003B20E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803B5184 003B20E4  4E 80 00 20 */	blr 

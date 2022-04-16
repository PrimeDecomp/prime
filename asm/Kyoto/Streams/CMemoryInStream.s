.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

.global Read__15CMemoryInStreamFPvUl
Read__15CMemoryInStreamFPvUl:
/* 8033F1C4 0033C124  38 60 00 00 */	li r3, 0
/* 8033F1C8 0033C128  4E 80 00 20 */	blr 

.global __ct__15CMemoryInStreamFPCvUl
__ct__15CMemoryInStreamFPCvUl:
/* 8033F1CC 0033C12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F1D0 0033C130  7C 08 02 A6 */	mflr r0
/* 8033F1D4 0033C134  38 C0 00 00 */	li r6, 0
/* 8033F1D8 0033C138  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F1DC 0033C13C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F1E0 0033C140  7C 7F 1B 78 */	mr r31, r3
/* 8033F1E4 0033C144  4B FF FF 35 */	bl __ct__12CInputStreamFPCvib
/* 8033F1E8 0033C148  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 8033F1EC 0033C14C  7F E3 FB 78 */	mr r3, r31
/* 8033F1F0 0033C150  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 8033F1F4 0033C154  90 1F 00 00 */	stw r0, 0(r31)
/* 8033F1F8 0033C158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F1FC 0033C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F200 0033C160  7C 08 03 A6 */	mtlr r0
/* 8033F204 0033C164  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F208 0033C168  4E 80 00 20 */	blr 

.global __ct__15CMemoryInStreamFPvUlQ215CMemoryInStream10EOwnerShip
__ct__15CMemoryInStreamFPvUlQ215CMemoryInStream10EOwnerShip:
/* 8033F20C 0033C16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033F210 0033C170  7C 08 02 A6 */	mflr r0
/* 8033F214 0033C174  90 01 00 14 */	stw r0, 0x14(r1)
/* 8033F218 0033C178  7C C0 00 34 */	cntlzw r0, r6
/* 8033F21C 0033C17C  54 06 D9 7E */	srwi r6, r0, 5
/* 8033F220 0033C180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033F224 0033C184  7C 7F 1B 78 */	mr r31, r3
/* 8033F228 0033C188  4B FF FE F1 */	bl __ct__12CInputStreamFPCvib
/* 8033F22C 0033C18C  3C 80 80 3F */	lis r4, __vt__15CMemoryInStream@ha
/* 8033F230 0033C190  7F E3 FB 78 */	mr r3, r31
/* 8033F234 0033C194  38 04 E3 98 */	addi r0, r4, __vt__15CMemoryInStream@l
/* 8033F238 0033C198  90 1F 00 00 */	stw r0, 0(r31)
/* 8033F23C 0033C19C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033F240 0033C1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033F244 0033C1A4  7C 08 03 A6 */	mtlr r0
/* 8033F248 0033C1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033F24C 0033C1AC  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

.global sub_8002940c
sub_8002940c:
/* 8002940C 0002636C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80029410 00026370  7C 08 02 A6 */	mflr r0
/* 80029414 00026374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80029418 00026378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002941C 0002637C  7C 7F 1B 78 */	mr r31, r3
/* 80029420 00026380  80 83 00 00 */	lwz r4, 0(r3)
/* 80029424 00026384  80 64 00 04 */	lwz r3, 4(r4)
/* 80029428 00026388  34 03 FF FF */	addic. r0, r3, -1
/* 8002942C 0002638C  90 04 00 04 */	stw r0, 4(r4)
/* 80029430 00026390  41 81 00 38 */	bgt lbl_80029468
/* 80029434 00026394  80 7F 00 00 */	lwz r3, 0(r31)
/* 80029438 00026398  80 63 00 00 */	lwz r3, 0(r3)
/* 8002943C 0002639C  28 03 00 00 */	cmplwi r3, 0
/* 80029440 000263A0  41 82 00 18 */	beq lbl_80029458
/* 80029444 000263A4  81 83 00 00 */	lwz r12, 0(r3)
/* 80029448 000263A8  38 80 00 01 */	li r4, 1
/* 8002944C 000263AC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80029450 000263B0  7D 89 03 A6 */	mtctr r12
/* 80029454 000263B4  4E 80 04 21 */	bctrl 
lbl_80029458:
/* 80029458 000263B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8002945C 000263BC  28 03 00 00 */	cmplwi r3, 0
/* 80029460 000263C0  41 82 00 08 */	beq lbl_80029468
/* 80029464 000263C4  48 2E C4 CD */	bl Free__7CMemoryFPCv
lbl_80029468:
/* 80029468 000263C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002946C 000263CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80029470 000263D0  7C 08 03 A6 */	mtlr r0
/* 80029474 000263D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80029478 000263D8  4E 80 00 20 */	blr 

.global PageInvoke__12CInstructionCFR16CFontRenderStateP17CTextRenderBuffer
PageInvoke__12CInstructionCFR16CFontRenderStateP17CTextRenderBuffer:
/* 8002947C 000263DC  4E 80 00 20 */	blr 

.global "GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>"
"GetAssets__12CInstructionCFRQ24rstl42vector<6CToken,Q24rstl17rmemory_allocator>":
/* 80029480 000263E0  4E 80 00 20 */	blr 

.global GetAssetCount__12CInstructionCFv
GetAssetCount__12CInstructionCFv:
/* 80029484 000263E4  38 60 00 00 */	li r3, 0
/* 80029488 000263E8  4E 80 00 20 */	blr 

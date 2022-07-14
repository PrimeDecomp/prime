.include "macros.inc"

.section .text, "ax"

.global __ct__15CHalfTransitionFR12CInputStream
__ct__15CHalfTransitionFR12CInputStream:
/* 80366748 003636A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036674C 003636AC  7C 08 02 A6 */	mflr r0
/* 80366750 003636B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80366754 003636B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80366758 003636B8  7C 9F 23 78 */	mr r31, r4
/* 8036675C 003636BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80366760 003636C0  7C 7E 1B 78 */	mr r30, r3
/* 80366764 003636C4  7F E3 FB 78 */	mr r3, r31
/* 80366768 003636C8  4B FD 85 1D */	bl ReadLong__12CInputStreamFv
/* 8036676C 003636CC  90 7E 00 00 */	stw r3, 0(r30)
/* 80366770 003636D0  7F E4 FB 78 */	mr r4, r31
/* 80366774 003636D4  38 61 00 08 */	addi r3, r1, 8
/* 80366778 003636D8  4B F7 B6 75 */	bl CreateMetaTrans__17CMetaTransFactoryFR12CInputStream
/* 8036677C 003636DC  80 01 00 08 */	lwz r0, 8(r1)
/* 80366780 003636E0  38 61 00 08 */	addi r3, r1, 8
/* 80366784 003636E4  90 1E 00 04 */	stw r0, 4(r30)
/* 80366788 003636E8  80 BE 00 04 */	lwz r5, 4(r30)
/* 8036678C 003636EC  80 85 00 04 */	lwz r4, 4(r5)
/* 80366790 003636F0  38 04 00 01 */	addi r0, r4, 1
/* 80366794 003636F4  90 05 00 04 */	stw r0, 4(r5)
/* 80366798 003636F8  4B CC DA FD */	bl __dt__17CMetaTransFactoryFv
/* 8036679C 003636FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803667A0 00363700  7F C3 F3 78 */	mr r3, r30
/* 803667A4 00363704  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803667A8 00363708  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803667AC 0036370C  7C 08 03 A6 */	mtlr r0
/* 803667B0 00363710  38 21 00 20 */	addi r1, r1, 0x20
/* 803667B4 00363714  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

.global PutTo__10CPrimitiveCFR13COutputStream
PutTo__10CPrimitiveCFR13COutputStream:
/* 802E58A8 002E2808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E58AC 002E280C  7C 08 02 A6 */	mflr r0
/* 802E58B0 002E2810  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E58B4 002E2814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E58B8 002E2818  7C 9F 23 78 */	mr r31, r4
/* 802E58BC 002E281C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E58C0 002E2820  7C 7E 1B 78 */	mr r30, r3
/* 802E58C4 002E2824  80 03 00 00 */	lwz r0, 0(r3)
/* 802E58C8 002E2828  7F E3 FB 78 */	mr r3, r31
/* 802E58CC 002E282C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E58D0 002E2830  48 05 9B E9 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E58D4 002E2834  7F E3 FB 78 */	mr r3, r31
/* 802E58D8 002E2838  38 81 00 0C */	addi r4, r1, 0xc
/* 802E58DC 002E283C  38 A0 00 04 */	li r5, 4
/* 802E58E0 002E2840  48 05 9C C9 */	bl DoPut__13COutputStreamFPCvUl
/* 802E58E4 002E2844  80 1E 00 04 */	lwz r0, 4(r30)
/* 802E58E8 002E2848  7F E3 FB 78 */	mr r3, r31
/* 802E58EC 002E284C  90 01 00 08 */	stw r0, 8(r1)
/* 802E58F0 002E2850  48 05 9B C9 */	bl FlushShiftRegister__13COutputStreamFv
/* 802E58F4 002E2854  7F E3 FB 78 */	mr r3, r31
/* 802E58F8 002E2858  38 81 00 08 */	addi r4, r1, 8
/* 802E58FC 002E285C  38 A0 00 04 */	li r5, 4
/* 802E5900 002E2860  48 05 9C A9 */	bl DoPut__13COutputStreamFPCvUl
/* 802E5904 002E2864  7F E4 FB 78 */	mr r4, r31
/* 802E5908 002E2868  38 7E 00 08 */	addi r3, r30, 8
/* 802E590C 002E286C  48 05 83 A9 */	bl "PutTo__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>CFR13COutputStream"
/* 802E5910 002E2870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E5914 002E2874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E5918 002E2878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E591C 002E287C  7C 08 03 A6 */	mtlr r0
/* 802E5920 002E2880  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5924 002E2884  4E 80 00 20 */	blr

.global __ct__10CPrimitiveFR12CInputStream
__ct__10CPrimitiveFR12CInputStream:
/* 802E5928 002E2888  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E592C 002E288C  7C 08 02 A6 */	mflr r0
/* 802E5930 002E2890  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E5934 002E2894  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E5938 002E2898  7C 9F 23 78 */	mr r31, r4
/* 802E593C 002E289C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E5940 002E28A0  7C 7E 1B 78 */	mr r30, r3
/* 802E5944 002E28A4  7F E3 FB 78 */	mr r3, r31
/* 802E5948 002E28A8  48 05 93 3D */	bl ReadLong__12CInputStreamFv
/* 802E594C 002E28AC  90 7E 00 00 */	stw r3, 0(r30)
/* 802E5950 002E28B0  7F E3 FB 78 */	mr r3, r31
/* 802E5954 002E28B4  48 05 93 31 */	bl ReadLong__12CInputStreamFv
/* 802E5958 002E28B8  90 7E 00 04 */	stw r3, 4(r30)
/* 802E595C 002E28BC  7F E4 FB 78 */	mr r4, r31
/* 802E5960 002E28C0  38 7E 00 08 */	addi r3, r30, 8
/* 802E5964 002E28C4  38 A1 00 08 */	addi r5, r1, 8
/* 802E5968 002E28C8  48 05 89 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802E596C 002E28CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E5970 002E28D0  7F C3 F3 78 */	mr r3, r30
/* 802E5974 002E28D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E5978 002E28D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E597C 002E28DC  7C 08 03 A6 */	mtlr r0
/* 802E5980 002E28E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802E5984 002E28E4  4E 80 00 20 */	blr

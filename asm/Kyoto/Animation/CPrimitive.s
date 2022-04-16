.include "macros.inc"

.section .text, "ax"  # 0x80003640 - 0x803CB1C0

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

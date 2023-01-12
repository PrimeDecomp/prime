.include "macros.inc"

.section .text, "ax"

.global CopyNodeMinusStartTime__12CBoolPOINodeFRC12CBoolPOINodeRC13CCharAnimTime
CopyNodeMinusStartTime__12CBoolPOINodeFRC12CBoolPOINodeRC13CCharAnimTime:
/* 802F7AB4 002F4A14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802F7AB8 002F4A18  7C 08 02 A6 */	mflr r0
/* 802F7ABC 002F4A1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F7AC0 002F4A20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802F7AC4 002F4A24  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802F7AC8 002F4A28  7C BE 2B 78 */	mr r30, r5
/* 802F7ACC 002F4A2C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802F7AD0 002F4A30  7C 9D 23 78 */	mr r29, r4
/* 802F7AD4 002F4A34  38 9D 00 08 */	addi r4, r29, 8
/* 802F7AD8 002F4A38  93 81 00 30 */	stw r28, 0x30(r1)
/* 802F7ADC 002F4A3C  7C 7C 1B 78 */	mr r28, r3
/* 802F7AE0 002F4A40  38 61 00 18 */	addi r3, r1, 0x18
/* 802F7AE4 002F4A44  48 04 66 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F7AE8 002F4A48  A3 FD 00 18 */	lhz r31, 0x18(r29)
/* 802F7AEC 002F4A4C  7F C5 F3 78 */	mr r5, r30
/* 802F7AF0 002F4A50  38 61 00 10 */	addi r3, r1, 0x10
/* 802F7AF4 002F4A54  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802F7AF8 002F4A58  48 05 0C 6D */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F7AFC 002F4A5C  88 1D 00 38 */	lbz r0, 0x38(r29)
/* 802F7B00 002F4A60  7F 83 E3 78 */	mr r3, r28
/* 802F7B04 002F4A64  7F E5 FB 78 */	mr r5, r31
/* 802F7B08 002F4A68  38 81 00 18 */	addi r4, r1, 0x18
/* 802F7B0C 002F4A6C  90 01 00 08 */	stw r0, 8(r1)
/* 802F7B10 002F4A70  38 C1 00 10 */	addi r6, r1, 0x10
/* 802F7B14 002F4A74  80 FD 00 24 */	lwz r7, 0x24(r29)
/* 802F7B18 002F4A78  89 1D 00 28 */	lbz r8, 0x28(r29)
/* 802F7B1C 002F4A7C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 802F7B20 002F4A80  81 3D 00 30 */	lwz r9, 0x30(r29)
/* 802F7B24 002F4A84  81 5D 00 34 */	lwz r10, 0x34(r29)
/* 802F7B28 002F4A88  4B D3 89 5D */	bl "__ct__12CBoolPOINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiib"
/* 802F7B2C 002F4A8C  38 61 00 18 */	addi r3, r1, 0x18
/* 802F7B30 002F4A90  48 04 5F B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802F7B34 002F4A94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F7B38 002F4A98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802F7B3C 002F4A9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802F7B40 002F4AA0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802F7B44 002F4AA4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802F7B48 002F4AA8  7C 08 03 A6 */	mtlr r0
/* 802F7B4C 002F4AAC  38 21 00 40 */	addi r1, r1, 0x40
/* 802F7B50 002F4AB0  4E 80 00 20 */	blr

.global __ct__12CBoolPOINodeFR12CInputStream
__ct__12CBoolPOINodeFR12CInputStream:
/* 802F7B54 002F4AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7B58 002F4AB8  7C 08 02 A6 */	mflr r0
/* 802F7B5C 002F4ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F7B60 002F4AC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F7B64 002F4AC4  7C 9F 23 78 */	mr r31, r4
/* 802F7B68 002F4AC8  93 C1 00 08 */	stw r30, 8(r1)
/* 802F7B6C 002F4ACC  7C 7E 1B 78 */	mr r30, r3
/* 802F7B70 002F4AD0  48 00 55 ED */	bl __ct__8CPOINodeFR12CInputStream
/* 802F7B74 002F4AD4  3C 80 80 3E */	lis r4, __vt__12CBoolPOINode@ha
/* 802F7B78 002F4AD8  7F E3 FB 78 */	mr r3, r31
/* 802F7B7C 002F4ADC  38 04 9B 68 */	addi r0, r4, __vt__12CBoolPOINode@l
/* 802F7B80 002F4AE0  90 1E 00 00 */	stw r0, 0(r30)
/* 802F7B84 002F4AE4  48 04 71 59 */	bl ReadBool__12CInputStreamFv
/* 802F7B88 002F4AE8  98 7E 00 38 */	stb r3, 0x38(r30)
/* 802F7B8C 002F4AEC  7F C3 F3 78 */	mr r3, r30
/* 802F7B90 002F4AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F7B94 002F4AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F7B98 002F4AF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F7B9C 002F4AFC  7C 08 03 A6 */	mtlr r0
/* 802F7BA0 002F4B00  38 21 00 10 */	addi r1, r1, 0x10
/* 802F7BA4 002F4B04  4E 80 00 20 */	blr

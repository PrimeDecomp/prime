.include "macros.inc"

.section .text, "ax"

.global CopyNodeMinusStartTime__13CInt32POINodeFRC13CInt32POINodeRC13CCharAnimTime
CopyNodeMinusStartTime__13CInt32POINodeFRC13CInt32POINodeRC13CCharAnimTime:
/* 802FCEA8 002F9E08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FCEAC 002F9E0C  7C 08 02 A6 */	mflr r0
/* 802FCEB0 002F9E10  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FCEB4 002F9E14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FCEB8 002F9E18  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802FCEBC 002F9E1C  7C BE 2B 78 */	mr r30, r5
/* 802FCEC0 002F9E20  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802FCEC4 002F9E24  7C 9D 23 78 */	mr r29, r4
/* 802FCEC8 002F9E28  38 9D 00 08 */	addi r4, r29, 8
/* 802FCECC 002F9E2C  93 81 00 30 */	stw r28, 0x30(r1)
/* 802FCED0 002F9E30  7C 7C 1B 78 */	mr r28, r3
/* 802FCED4 002F9E34  38 61 00 18 */	addi r3, r1, 0x18
/* 802FCED8 002F9E38  48 04 12 89 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802FCEDC 002F9E3C  A3 FD 00 18 */	lhz r31, 0x18(r29)
/* 802FCEE0 002F9E40  7F C5 F3 78 */	mr r5, r30
/* 802FCEE4 002F9E44  38 61 00 10 */	addi r3, r1, 0x10
/* 802FCEE8 002F9E48  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802FCEEC 002F9E4C  48 04 B8 79 */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FCEF0 002F9E50  80 9D 00 38 */	lwz r4, 0x38(r29)
/* 802FCEF4 002F9E54  38 1D 00 3C */	addi r0, r29, 0x3c
/* 802FCEF8 002F9E58  7F 83 E3 78 */	mr r3, r28
/* 802FCEFC 002F9E5C  7F E5 FB 78 */	mr r5, r31
/* 802FCF00 002F9E60  90 81 00 08 */	stw r4, 8(r1)
/* 802FCF04 002F9E64  38 81 00 18 */	addi r4, r1, 0x18
/* 802FCF08 002F9E68  38 C1 00 10 */	addi r6, r1, 0x10
/* 802FCF0C 002F9E6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802FCF10 002F9E70  80 FD 00 24 */	lwz r7, 0x24(r29)
/* 802FCF14 002F9E74  89 1D 00 28 */	lbz r8, 0x28(r29)
/* 802FCF18 002F9E78  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 802FCF1C 002F9E7C  81 3D 00 30 */	lwz r9, 0x30(r29)
/* 802FCF20 002F9E80  81 5D 00 34 */	lwz r10, 0x34(r29)
/* 802FCF24 002F9E84  4B D2 E4 69 */	bl "__ct__13CInt32POINodeFQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>UsRC13CCharAnimTimeibfiiiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802FCF28 002F9E88  38 61 00 18 */	addi r3, r1, 0x18
/* 802FCF2C 002F9E8C  48 04 0B B5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802FCF30 002F9E90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FCF34 002F9E94  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FCF38 002F9E98  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802FCF3C 002F9E9C  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802FCF40 002F9EA0  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802FCF44 002F9EA4  7C 08 03 A6 */	mtlr r0
/* 802FCF48 002F9EA8  38 21 00 40 */	addi r1, r1, 0x40
/* 802FCF4C 002F9EAC  4E 80 00 20 */	blr

.global __ct__13CInt32POINodeFR12CInputStream
__ct__13CInt32POINodeFR12CInputStream:
/* 802FCF50 002F9EB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FCF54 002F9EB4  7C 08 02 A6 */	mflr r0
/* 802FCF58 002F9EB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FCF5C 002F9EBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802FCF60 002F9EC0  7C 9F 23 78 */	mr r31, r4
/* 802FCF64 002F9EC4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802FCF68 002F9EC8  7C 7E 1B 78 */	mr r30, r3
/* 802FCF6C 002F9ECC  48 00 01 F1 */	bl __ct__8CPOINodeFR12CInputStream
/* 802FCF70 002F9ED0  3C 80 80 3E */	lis r4, __vt__13CInt32POINode@ha
/* 802FCF74 002F9ED4  7F E3 FB 78 */	mr r3, r31
/* 802FCF78 002F9ED8  38 04 9B 98 */	addi r0, r4, __vt__13CInt32POINode@l
/* 802FCF7C 002F9EDC  90 1E 00 00 */	stw r0, 0(r30)
/* 802FCF80 002F9EE0  48 04 1D 05 */	bl ReadLong__12CInputStreamFv
/* 802FCF84 002F9EE4  90 7E 00 38 */	stw r3, 0x38(r30)
/* 802FCF88 002F9EE8  7F E4 FB 78 */	mr r4, r31
/* 802FCF8C 002F9EEC  38 7E 00 3C */	addi r3, r30, 0x3c
/* 802FCF90 002F9EF0  38 A1 00 08 */	addi r5, r1, 8
/* 802FCF94 002F9EF4  48 04 13 65 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802FCF98 002F9EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FCF9C 002F9EFC  7F C3 F3 78 */	mr r3, r30
/* 802FCFA0 002F9F00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802FCFA4 002F9F04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802FCFA8 002F9F08  7C 08 03 A6 */	mtlr r0
/* 802FCFAC 002F9F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802FCFB0 002F9F10  4E 80 00 20 */	blr

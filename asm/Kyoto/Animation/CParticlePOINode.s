.include "macros.inc"

.section .text, "ax"

.global CopyNodeMinusStartTime__16CParticlePOINodeFRC16CParticlePOINodeRC13CCharAnimTime
CopyNodeMinusStartTime__16CParticlePOINodeFRC16CParticlePOINodeRC13CCharAnimTime:
/* 802FCFB4 002F9F14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802FCFB8 002F9F18  7C 08 02 A6 */	mflr r0
/* 802FCFBC 002F9F1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802FCFC0 002F9F20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802FCFC4 002F9F24  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802FCFC8 002F9F28  7C BE 2B 78 */	mr r30, r5
/* 802FCFCC 002F9F2C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802FCFD0 002F9F30  7C 9D 23 78 */	mr r29, r4
/* 802FCFD4 002F9F34  38 9D 00 08 */	addi r4, r29, 8
/* 802FCFD8 002F9F38  93 81 00 30 */	stw r28, 0x30(r1)
/* 802FCFDC 002F9F3C  7C 7C 1B 78 */	mr r28, r3
/* 802FCFE0 002F9F40  38 61 00 18 */	addi r3, r1, 0x18
/* 802FCFE4 002F9F44  48 04 11 7D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802FCFE8 002F9F48  A3 FD 00 18 */	lhz r31, 0x18(r29)
/* 802FCFEC 002F9F4C  7F C5 F3 78 */	mr r5, r30
/* 802FCFF0 002F9F50  38 61 00 10 */	addi r3, r1, 0x10
/* 802FCFF4 002F9F54  38 9D 00 1C */	addi r4, r29, 0x1c
/* 802FCFF8 002F9F58  48 04 B7 6D */	bl __mi__13CCharAnimTimeCFRC13CCharAnimTime
/* 802FCFFC 002F9F5C  38 1D 00 38 */	addi r0, r29, 0x38
/* 802FD000 002F9F60  7F 83 E3 78 */	mr r3, r28
/* 802FD004 002F9F64  90 01 00 08 */	stw r0, 8(r1)
/* 802FD008 002F9F68  7F E5 FB 78 */	mr r5, r31
/* 802FD00C 002F9F6C  38 81 00 18 */	addi r4, r1, 0x18
/* 802FD010 002F9F70  38 C1 00 10 */	addi r6, r1, 0x10
/* 802FD014 002F9F74  80 FD 00 24 */	lwz r7, 0x24(r29)
/* 802FD018 002F9F78  89 1D 00 28 */	lbz r8, 0x28(r29)
/* 802FD01C 002F9F7C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 802FD020 002F9F80  81 3D 00 30 */	lwz r9, 0x30(r29)
/* 802FD024 002F9F84  81 5D 00 34 */	lwz r10, 0x34(r29)
/* 802FD028 002F9F88  4B D3 33 E1 */	bl sub_80030408
/* 802FD02C 002F9F8C  38 61 00 18 */	addi r3, r1, 0x18
/* 802FD030 002F9F90  48 04 0A B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802FD034 002F9F94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802FD038 002F9F98  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802FD03C 002F9F9C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802FD040 002F9FA0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802FD044 002F9FA4  83 81 00 30 */	lwz r28, 0x30(r1)
/* 802FD048 002F9FA8  7C 08 03 A6 */	mtlr r0
/* 802FD04C 002F9FAC  38 21 00 40 */	addi r1, r1, 0x40
/* 802FD050 002F9FB0  4E 80 00 20 */	blr 

.global __ct__16CParticlePOINodeFR12CInputStream
__ct__16CParticlePOINodeFR12CInputStream:
/* 802FD054 002F9FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FD058 002F9FB8  7C 08 02 A6 */	mflr r0
/* 802FD05C 002F9FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FD060 002F9FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FD064 002F9FC4  7C 9F 23 78 */	mr r31, r4
/* 802FD068 002F9FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 802FD06C 002F9FCC  7C 7E 1B 78 */	mr r30, r3
/* 802FD070 002F9FD0  48 00 00 ED */	bl __ct__8CPOINodeFR12CInputStream
/* 802FD074 002F9FD4  3C 60 80 3E */	lis r3, lbl_803D9B74@ha
/* 802FD078 002F9FD8  7F E4 FB 78 */	mr r4, r31
/* 802FD07C 002F9FDC  38 03 9B 74 */	addi r0, r3, lbl_803D9B74@l
/* 802FD080 002F9FE0  38 7E 00 38 */	addi r3, r30, 0x38
/* 802FD084 002F9FE4  90 1E 00 00 */	stw r0, 0(r30)
/* 802FD088 002F9FE8  48 05 A3 7D */	bl __ct__13CParticleDataFR12CInputStream
/* 802FD08C 002F9FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FD090 002F9FF0  7F C3 F3 78 */	mr r3, r30
/* 802FD094 002F9FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FD098 002F9FF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FD09C 002F9FFC  7C 08 03 A6 */	mtlr r0
/* 802FD0A0 002FA000  38 21 00 10 */	addi r1, r1, 0x10
/* 802FD0A4 002FA004  4E 80 00 20 */	blr 

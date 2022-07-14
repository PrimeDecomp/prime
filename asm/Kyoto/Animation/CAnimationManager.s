.include "macros.inc"

.section .text, "ax"

.global "NonConstCopy__28TToken<18CAnimationDatabase>CFv"
"NonConstCopy__28TToken<18CAnimationDatabase>CFv":
/* 802D6DF0 002D3D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6DF4 002D3D54  7C 08 02 A6 */	mflr r0
/* 802D6DF8 002D3D58  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6DFC 002D3D5C  48 06 A0 AD */	bl __ct__6CTokenFRC6CToken
/* 802D6E00 002D3D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6E04 002D3D64  7C 08 03 A6 */	mtlr r0
/* 802D6E08 002D3D68  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6E0C 002D3D6C  4E 80 00 20 */	blr

.global GetMetaAnimation__17CAnimationManagerCFUi
GetMetaAnimation__17CAnimationManagerCFUi:
/* 802D6E10 002D3D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6E14 002D3D74  7C 08 02 A6 */	mflr r0
/* 802D6E18 002D3D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6E1C 002D3D7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6E20 002D3D80  7C BF 2B 78 */	mr r31, r5
/* 802D6E24 002D3D84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6E28 002D3D88  7C 7E 1B 78 */	mr r30, r3
/* 802D6E2C 002D3D8C  38 61 00 08 */	addi r3, r1, 8
/* 802D6E30 002D3D90  4B FF FF C1 */	bl "NonConstCopy__28TToken<18CAnimationDatabase>CFv"
/* 802D6E34 002D3D94  38 61 00 08 */	addi r3, r1, 8
/* 802D6E38 002D3D98  48 06 9F D5 */	bl GetObj__6CTokenFv
/* 802D6E3C 002D3D9C  80 63 00 04 */	lwz r3, 4(r3)
/* 802D6E40 002D3DA0  7F E4 FB 78 */	mr r4, r31
/* 802D6E44 002D3DA4  81 83 00 00 */	lwz r12, 0(r3)
/* 802D6E48 002D3DA8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D6E4C 002D3DAC  7D 89 03 A6 */	mtctr r12
/* 802D6E50 002D3DB0  4E 80 04 21 */	bctrl
/* 802D6E54 002D3DB4  80 03 00 00 */	lwz r0, 0(r3)
/* 802D6E58 002D3DB8  38 61 00 08 */	addi r3, r1, 8
/* 802D6E5C 002D3DBC  38 80 00 00 */	li r4, 0
/* 802D6E60 002D3DC0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D6E64 002D3DC4  80 DE 00 00 */	lwz r6, 0(r30)
/* 802D6E68 002D3DC8  80 A6 00 04 */	lwz r5, 4(r6)
/* 802D6E6C 002D3DCC  38 05 00 01 */	addi r0, r5, 1
/* 802D6E70 002D3DD0  90 06 00 04 */	stw r0, 4(r6)
/* 802D6E74 002D3DD4  48 06 9F CD */	bl __dt__6CTokenFv
/* 802D6E78 002D3DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6E7C 002D3DDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6E80 002D3DE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D6E84 002D3DE4  7C 08 03 A6 */	mtlr r0
/* 802D6E88 002D3DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6E8C 002D3DEC  4E 80 00 20 */	blr

.global GetAnimationTree__17CAnimationManagerCFUiRC24CMetaAnimTreeBuildOrders
GetAnimationTree__17CAnimationManagerCFUiRC24CMetaAnimTreeBuildOrders:
/* 802D6E90 002D3DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6E94 002D3DF4  7C 08 02 A6 */	mflr r0
/* 802D6E98 002D3DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6E9C 002D3DFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6EA0 002D3E00  7C BF 2B 78 */	mr r31, r5
/* 802D6EA4 002D3E04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6EA8 002D3E08  7C DE 33 78 */	mr r30, r6
/* 802D6EAC 002D3E0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D6EB0 002D3E10  7C 9D 23 78 */	mr r29, r4
/* 802D6EB4 002D3E14  93 81 00 10 */	stw r28, 0x10(r1)
/* 802D6EB8 002D3E18  7C 7C 1B 78 */	mr r28, r3
/* 802D6EBC 002D3E1C  38 61 00 08 */	addi r3, r1, 8
/* 802D6EC0 002D3E20  4B FF FF 31 */	bl "NonConstCopy__28TToken<18CAnimationDatabase>CFv"
/* 802D6EC4 002D3E24  38 61 00 08 */	addi r3, r1, 8
/* 802D6EC8 002D3E28  48 06 9F 45 */	bl GetObj__6CTokenFv
/* 802D6ECC 002D3E2C  80 63 00 04 */	lwz r3, 4(r3)
/* 802D6ED0 002D3E30  7F E4 FB 78 */	mr r4, r31
/* 802D6ED4 002D3E34  81 83 00 00 */	lwz r12, 0(r3)
/* 802D6ED8 002D3E38  81 8C 00 08 */	lwz r12, 8(r12)
/* 802D6EDC 002D3E3C  7D 89 03 A6 */	mtctr r12
/* 802D6EE0 002D3E40  4E 80 04 21 */	bctrl
/* 802D6EE4 002D3E44  7C 7F 1B 78 */	mr r31, r3
/* 802D6EE8 002D3E48  38 61 00 08 */	addi r3, r1, 8
/* 802D6EEC 002D3E4C  38 80 00 00 */	li r4, 0
/* 802D6EF0 002D3E50  48 06 9F 51 */	bl __dt__6CTokenFv
/* 802D6EF4 002D3E54  80 9F 00 00 */	lwz r4, 0(r31)
/* 802D6EF8 002D3E58  7F 83 E3 78 */	mr r3, r28
/* 802D6EFC 002D3E5C  7F C6 F3 78 */	mr r6, r30
/* 802D6F00 002D3E60  38 BD 00 08 */	addi r5, r29, 8
/* 802D6F04 002D3E64  80 84 00 00 */	lwz r4, 0(r4)
/* 802D6F08 002D3E68  81 84 00 00 */	lwz r12, 0(r4)
/* 802D6F0C 002D3E6C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D6F10 002D3E70  7D 89 03 A6 */	mtctr r12
/* 802D6F14 002D3E74  4E 80 04 21 */	bctrl
/* 802D6F18 002D3E78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6F1C 002D3E7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6F20 002D3E80  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D6F24 002D3E84  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D6F28 002D3E88  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802D6F2C 002D3E8C  7C 08 03 A6 */	mtlr r0
/* 802D6F30 002D3E90  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6F34 002D3E94  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"

.global __ct__10CAnimationFR12CInputStream
__ct__10CAnimationFR12CInputStream:
/* 802D6D84 002D3CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6D88 002D3CE8  7C 08 02 A6 */	mflr r0
/* 802D6D8C 002D3CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6D90 002D3CF0  38 A1 00 08 */	addi r5, r1, 8
/* 802D6D94 002D3CF4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6D98 002D3CF8  7C 9F 23 78 */	mr r31, r4
/* 802D6D9C 002D3CFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D6DA0 002D3D00  7C 7E 1B 78 */	mr r30, r3
/* 802D6DA4 002D3D04  48 06 75 55 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802D6DA8 002D3D08  7F E4 FB 78 */	mr r4, r31
/* 802D6DAC 002D3D0C  38 61 00 0C */	addi r3, r1, 0xc
/* 802D6DB0 002D3D10  48 00 92 2D */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802D6DB4 002D3D14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D6DB8 002D3D18  38 61 00 0C */	addi r3, r1, 0xc
/* 802D6DBC 002D3D1C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802D6DC0 002D3D20  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 802D6DC4 002D3D24  80 85 00 04 */	lwz r4, 4(r5)
/* 802D6DC8 002D3D28  38 04 00 01 */	addi r0, r4, 1
/* 802D6DCC 002D3D2C  90 05 00 04 */	stw r0, 4(r5)
/* 802D6DD0 002D3D30  4B D5 A1 61 */	bl "ReleaseData__Q24rstl18rc_ptr<9IMetaAnim>Fv"
/* 802D6DD4 002D3D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6DD8 002D3D38  7F C3 F3 78 */	mr r3, r30
/* 802D6DDC 002D3D3C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6DE0 002D3D40  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D6DE4 002D3D44  7C 08 03 A6 */	mtlr r0
/* 802D6DE8 002D3D48  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6DEC 002D3D4C  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"

.global __ct__12CAreaBspTreeFR12CInputStreamRC12CTransform4f
__ct__12CAreaBspTreeFR12CInputStreamRC12CTransform4f:
/* 802A2920 0029F880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2924 0029F884  7C 08 02 A6 */	mflr r0
/* 802A2928 0029F888  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A292C 0029F88C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A2930 0029F890  7C 9F 23 78 */	mr r31, r4
/* 802A2934 0029F894  93 C1 00 08 */	stw r30, 8(r1)
/* 802A2938 0029F898  7C 7E 1B 78 */	mr r30, r3
/* 802A293C 0029F89C  7F E3 FB 78 */	mr r3, r31
/* 802A2940 0029F8A0  48 09 C3 45 */	bl ReadLong__12CInputStreamFv
/* 802A2944 0029F8A4  7F E3 FB 78 */	mr r3, r31
/* 802A2948 0029F8A8  48 09 C3 69 */	bl ReadShort__12CInputStreamFv
/* 802A294C 0029F8AC  7F E3 FB 78 */	mr r3, r31
/* 802A2950 0029F8B0  48 09 C3 61 */	bl ReadShort__12CInputStreamFv
/* 802A2954 0029F8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A2958 0029F8B8  7F C3 F3 78 */	mr r3, r30
/* 802A295C 0029F8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A2960 0029F8C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A2964 0029F8C4  7C 08 03 A6 */	mtlr r0
/* 802A2968 0029F8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A296C 0029F8CC  4E 80 00 20 */	blr 

.include "macros.inc"

.section .text, "ax"

.global GetR2__Fv
GetR2__Fv:
/* 8038A0E4 00387044  7C 43 13 78 */	mr r3, r2
/* 8038A0E8 00387048  4E 80 00 20 */	blr

.global __fini_cpp_exceptions
__fini_cpp_exceptions:
/* 8038A0EC 0038704C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A0F0 00387050  7C 08 02 A6 */	mflr r0
/* 8038A0F4 00387054  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A0F8 00387058  80 6D 9F C8 */	lwz r3, lbl_805A8B88@sda21(r13)
/* 8038A0FC 0038705C  2C 03 FF FE */	cmpwi r3, -2
/* 8038A100 00387060  41 82 00 10 */	beq lbl_8038A110
/* 8038A104 00387064  48 00 00 5D */	bl __unregister_fragment
/* 8038A108 00387068  38 00 FF FE */	li r0, -2
/* 8038A10C 0038706C  90 0D 9F C8 */	stw r0, lbl_805A8B88@sda21(r13)
lbl_8038A110:
/* 8038A110 00387070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A114 00387074  7C 08 03 A6 */	mtlr r0
/* 8038A118 00387078  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A11C 0038707C  4E 80 00 20 */	blr

.global __init_cpp_exceptions
__init_cpp_exceptions:
/* 8038A120 00387080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038A124 00387084  7C 08 02 A6 */	mflr r0
/* 8038A128 00387088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038A12C 0038708C  80 0D 9F C8 */	lwz r0, lbl_805A8B88@sda21(r13)
/* 8038A130 00387090  2C 00 FF FE */	cmpwi r0, -2
/* 8038A134 00387094  40 82 00 1C */	bne lbl_8038A150
/* 8038A138 00387098  4B FF FF AD */	bl GetR2__Fv
/* 8038A13C 0038709C  3C A0 80 00 */	lis r5, lbl_80003604@ha
/* 8038A140 003870A0  7C 64 1B 78 */	mr r4, r3
/* 8038A144 003870A4  38 65 36 04 */	addi r3, r5, lbl_80003604@l
/* 8038A148 003870A8  48 00 00 4D */	bl __register_fragment
/* 8038A14C 003870AC  90 6D 9F C8 */	stw r3, lbl_805A8B88@sda21(r13)
lbl_8038A150:
/* 8038A150 003870B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038A154 003870B4  7C 08 03 A6 */	mtlr r0
/* 8038A158 003870B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8038A15C 003870BC  4E 80 00 20 */	blr

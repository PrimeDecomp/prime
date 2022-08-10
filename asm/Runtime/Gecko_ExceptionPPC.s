.include "macros.inc"

.section .bss
.balign 8
lbl_80542188:
	.skip 0x10

.section .text, "ax"

.global __unregister_fragment
__unregister_fragment:
/* 8038A160 003870C0  2C 03 00 00 */	cmpwi r3, 0
/* 8038A164 003870C4  4D 80 00 20 */	bltlr
/* 8038A168 003870C8  2C 03 00 01 */	cmpwi r3, 1
/* 8038A16C 003870CC  4C 80 00 20 */	bgelr
/* 8038A170 003870D0  1C 83 00 0C */	mulli r4, r3, 0xc
/* 8038A174 003870D4  3C 60 80 54 */	lis r3, lbl_80542188@ha
/* 8038A178 003870D8  38 00 00 00 */	li r0, 0
/* 8038A17C 003870DC  38 63 21 88 */	addi r3, r3, lbl_80542188@l
/* 8038A180 003870E0  7C 63 22 14 */	add r3, r3, r4
/* 8038A184 003870E4  90 03 00 00 */	stw r0, 0(r3)
/* 8038A188 003870E8  90 03 00 04 */	stw r0, 4(r3)
/* 8038A18C 003870EC  90 03 00 08 */	stw r0, 8(r3)
/* 8038A190 003870F0  4E 80 00 20 */	blr

.global __register_fragment
__register_fragment:
/* 8038A194 003870F4  3C A0 80 54 */	lis r5, lbl_80542188@ha
/* 8038A198 003870F8  38 A5 21 88 */	addi r5, r5, lbl_80542188@l
/* 8038A19C 003870FC  80 05 00 08 */	lwz r0, 8(r5)
/* 8038A1A0 00387100  2C 00 00 00 */	cmpwi r0, 0
/* 8038A1A4 00387104  40 82 00 1C */	bne lbl_8038A1C0
/* 8038A1A8 00387108  90 65 00 00 */	stw r3, 0(r5)
/* 8038A1AC 0038710C  38 00 00 01 */	li r0, 1
/* 8038A1B0 00387110  38 60 00 00 */	li r3, 0
/* 8038A1B4 00387114  90 85 00 04 */	stw r4, 4(r5)
/* 8038A1B8 00387118  90 05 00 08 */	stw r0, 8(r5)
/* 8038A1BC 0038711C  4E 80 00 20 */	blr
lbl_8038A1C0:
/* 8038A1C0 00387120  38 60 FF FF */	li r3, -1
/* 8038A1C4 00387124  4E 80 00 20 */	blr

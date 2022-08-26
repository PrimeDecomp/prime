.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_IObj_cpp

.section .sbss, "wa"
.balign 8

.global lbl_805A9510
lbl_805A9510:
	.skip 0x8
.global lbl_805A9518
lbl_805A9518:
	.skip 0x8

.section .text, "ax"

.global Type2Text__10SObjectTagFUi
Type2Text__10SObjectTagFUi:
/* 80341004 0033DF64  54 60 46 3E */	srwi r0, r3, 0x18
/* 80341008 0033DF68  2C 00 FF FF */	cmpwi r0, -1
/* 8034100C 0033DF6C  40 82 00 0C */	bne lbl_80341018
/* 80341010 0033DF70  38 00 FF FF */	li r0, -1
/* 80341014 0033DF74  48 00 00 10 */	b lbl_80341024
lbl_80341018:
/* 80341018 0033DF78  3C 80 80 3F */	lis r4, __upper_map@ha
/* 8034101C 0033DF7C  38 84 2C 20 */	addi r4, r4, __upper_map@l
/* 80341020 0033DF80  7C 04 00 AE */	lbzx r0, r4, r0
lbl_80341024:
/* 80341024 0033DF84  54 65 86 3E */	rlwinm r5, r3, 0x10, 0x18, 0x1f
/* 80341028 0033DF88  98 0D A9 58 */	stb r0, lbl_805A9518@sda21(r13)
/* 8034102C 0033DF8C  2C 05 FF FF */	cmpwi r5, -1
/* 80341030 0033DF90  40 82 00 0C */	bne lbl_8034103C
/* 80341034 0033DF94  38 00 FF FF */	li r0, -1
/* 80341038 0033DF98  48 00 00 10 */	b lbl_80341048
lbl_8034103C:
/* 8034103C 0033DF9C  3C 80 80 3F */	lis r4, __upper_map@ha
/* 80341040 0033DFA0  38 84 2C 20 */	addi r4, r4, __upper_map@l
/* 80341044 0033DFA4  7C 04 28 AE */	lbzx r0, r4, r5
lbl_80341048:
/* 80341048 0033DFA8  54 65 C6 3E */	rlwinm r5, r3, 0x18, 0x18, 0x1f
/* 8034104C 0033DFAC  38 8D A9 58 */	addi r4, r13, lbl_805A9518@sda21
/* 80341050 0033DFB0  2C 05 FF FF */	cmpwi r5, -1
/* 80341054 0033DFB4  98 04 00 01 */	stb r0, 1(r4)
/* 80341058 0033DFB8  40 82 00 0C */	bne lbl_80341064
/* 8034105C 0033DFBC  38 00 FF FF */	li r0, -1
/* 80341060 0033DFC0  48 00 00 10 */	b lbl_80341070
lbl_80341064:
/* 80341064 0033DFC4  3C 80 80 3F */	lis r4, __upper_map@ha
/* 80341068 0033DFC8  38 84 2C 20 */	addi r4, r4, __upper_map@l
/* 8034106C 0033DFCC  7C 04 28 AE */	lbzx r0, r4, r5
lbl_80341070:
/* 80341070 0033DFD0  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80341074 0033DFD4  38 6D A9 58 */	addi r3, r13, lbl_805A9518@sda21
/* 80341078 0033DFD8  2C 04 FF FF */	cmpwi r4, -1
/* 8034107C 0033DFDC  98 03 00 02 */	stb r0, 2(r3)
/* 80341080 0033DFE0  40 82 00 0C */	bne lbl_8034108C
/* 80341084 0033DFE4  38 60 FF FF */	li r3, -1
/* 80341088 0033DFE8  48 00 00 10 */	b lbl_80341098
lbl_8034108C:
/* 8034108C 0033DFEC  3C 60 80 3F */	lis r3, __upper_map@ha
/* 80341090 0033DFF0  38 63 2C 20 */	addi r3, r3, __upper_map@l
/* 80341094 0033DFF4  7C 63 20 AE */	lbzx r3, r3, r4
lbl_80341098:
/* 80341098 0033DFF8  38 AD A9 58 */	addi r5, r13, lbl_805A9518@sda21
/* 8034109C 0033DFFC  38 00 00 00 */	li r0, 0
/* 803410A0 0033E000  98 65 00 03 */	stb r3, 3(r5)
/* 803410A4 0033E004  3C 60 80 3F */	lis r3, __ctype_map@ha
/* 803410A8 0033E008  38 83 2A 20 */	addi r4, r3, __ctype_map@l
/* 803410AC 0033E00C  98 05 00 04 */	stb r0, 4(r5)
/* 803410B0 0033E010  38 00 00 2D */	li r0, 0x2d
/* 803410B4 0033E014  88 6D A9 58 */	lbz r3, lbl_805A9518@sda21(r13)
/* 803410B8 0033E018  7C 64 18 AE */	lbzx r3, r4, r3
/* 803410BC 0033E01C  70 63 00 DC */	andi. r3, r3, 0xdc
/* 803410C0 0033E020  40 82 00 08 */	bne lbl_803410C8
/* 803410C4 0033E024  98 05 00 00 */	stb r0, 0(r5)
lbl_803410C8:
/* 803410C8 0033E028  8C 65 00 01 */	lbzu r3, 1(r5)
/* 803410CC 0033E02C  7C 64 18 AE */	lbzx r3, r4, r3
/* 803410D0 0033E030  70 63 00 DC */	andi. r3, r3, 0xdc
/* 803410D4 0033E034  40 82 00 08 */	bne lbl_803410DC
/* 803410D8 0033E038  98 05 00 00 */	stb r0, 0(r5)
lbl_803410DC:
/* 803410DC 0033E03C  8C 65 00 01 */	lbzu r3, 1(r5)
/* 803410E0 0033E040  7C 64 18 AE */	lbzx r3, r4, r3
/* 803410E4 0033E044  70 63 00 DC */	andi. r3, r3, 0xdc
/* 803410E8 0033E048  40 82 00 08 */	bne lbl_803410F0
/* 803410EC 0033E04C  98 05 00 00 */	stb r0, 0(r5)
lbl_803410F0:
/* 803410F0 0033E050  8C 65 00 01 */	lbzu r3, 1(r5)
/* 803410F4 0033E054  7C 64 18 AE */	lbzx r3, r4, r3
/* 803410F8 0033E058  70 63 00 DC */	andi. r3, r3, 0xdc
/* 803410FC 0033E05C  40 82 00 08 */	bne lbl_80341104
/* 80341100 0033E060  98 05 00 00 */	stb r0, 0(r5)
lbl_80341104:
/* 80341104 0033E064  38 6D A9 58 */	addi r3, r13, lbl_805A9518@sda21
/* 80341108 0033E068  4E 80 00 20 */	blr

.global __sinit_IObj_cpp
__sinit_IObj_cpp:
/* 8034110C 0033E06C  38 00 FF FF */	li r0, -1
/* 80341110 0033E070  38 6D A9 50 */	addi r3, r13, lbl_805A9510@sda21
/* 80341114 0033E074  90 0D A9 50 */	stw r0, lbl_805A9510@sda21(r13)
/* 80341118 0033E078  90 03 00 04 */	stw r0, 4(r3)
/* 8034111C 0033E07C  4E 80 00 20 */	blr

.include "macros.inc"

.section .text, "ax"

.global tolower
tolower:
/* 8038CF24 00389E84  2C 03 FF FF */	cmpwi r3, -1
/* 8038CF28 00389E88  40 82 00 0C */	bne lbl_8038CF34
/* 8038CF2C 00389E8C  38 60 FF FF */	li r3, -1
/* 8038CF30 00389E90  4E 80 00 20 */	blr
lbl_8038CF34:
/* 8038CF34 00389E94  3C 80 80 3F */	lis r4, lbl_803F2B20@ha
/* 8038CF38 00389E98  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8038CF3C 00389E9C  38 64 2B 20 */	addi r3, r4, lbl_803F2B20@l
/* 8038CF40 00389EA0  7C 63 00 AE */	lbzx r3, r3, r0
/* 8038CF44 00389EA4  4E 80 00 20 */	blr

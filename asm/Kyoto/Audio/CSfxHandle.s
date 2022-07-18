.include "macros.inc"

.section .sbss, "wa"

.global lbl_805A92B8
lbl_805A92B8:
	.skip 0x8

.section .text, "ax"

.global __ct__10CSfxHandleFUi
__ct__10CSfxHandleFUi:
/* 802E786C 002E47CC  80 AD A6 F8 */	lwz r5, lbl_805A92B8@sda21(r13)
/* 802E7870 002E47D0  54 80 05 3E */	clrlwi r0, r4, 0x14
/* 802E7874 002E47D4  38 85 00 01 */	addi r4, r5, 1
/* 802E7878 002E47D8  90 8D A6 F8 */	stw r4, lbl_805A92B8@sda21(r13)
/* 802E787C 002E47DC  50 80 70 22 */	rlwimi r0, r4, 0xe, 0, 0x11
/* 802E7880 002E47E0  90 03 00 00 */	stw r0, 0(r3)
/* 802E7884 002E47E4  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE318
lbl_805AE318:
	# ROM: 0x3FABB8
	.2byte 0x000000FF

.global lbl_805AE31A
lbl_805AE31A:
	# ROM: 0x3FABBA
	.2byte 0x0000007F

.global lbl_805AE31C
lbl_805AE31C:
	# ROM: 0x3FABBC
	.4byte 0xFFFF0000


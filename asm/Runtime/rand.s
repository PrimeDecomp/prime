.include "macros.inc"

.section .sdata, "wa"
.balign 8
.global lbl_805A8B98
lbl_805A8B98:
	# ROM: 0x3F6538
	.4byte 0x00000001

.section .text, "ax"

.global srand
srand:
/* 8038FE74 0038CDD4  90 6D 9F D8 */	stw r3, lbl_805A8B98@sda21(r13)
/* 8038FE78 0038CDD8  4E 80 00 20 */	blr

.global rand
rand:
/* 8038FE7C 0038CDDC  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 8038FE80 0038CDE0  80 8D 9F D8 */	lwz r4, lbl_805A8B98@sda21(r13)
/* 8038FE84 0038CDE4  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 8038FE88 0038CDE8  7C 64 01 D6 */	mullw r3, r4, r0
/* 8038FE8C 0038CDEC  38 03 30 39 */	addi r0, r3, 0x3039
/* 8038FE90 0038CDF0  90 0D 9F D8 */	stw r0, lbl_805A8B98@sda21(r13)
/* 8038FE94 0038CDF4  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 8038FE98 0038CDF8  4E 80 00 20 */	blr

.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CGuiWidgetDrawParms_cpp

.section .text, "ax"

.global __sinit_CGuiWidgetDrawParms_cpp
__sinit_CGuiWidgetDrawParms_cpp:
/* 802CB1B0 002C8110  C0 22 C4 18 */	lfs f1, lbl_805AE138@sda21(r2)
/* 802CB1B4 002C8114  3C 60 80 5A */	lis r3, lbl_8059FD08@ha
/* 802CB1B8 002C8118  C0 02 C4 1C */	lfs f0, lbl_805AE13C@sda21(r2)
/* 802CB1BC 002C811C  D4 23 FD 08 */	stfsu f1, lbl_8059FD08@l(r3)
/* 802CB1C0 002C8120  D0 03 00 04 */	stfs f0, 4(r3)
/* 802CB1C4 002C8124  D0 03 00 08 */	stfs f0, 8(r3)
/* 802CB1C8 002C8128  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802CB1CC 002C812C  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AE138
lbl_805AE138:
	# ROM: 0x3FA9D8
	.float 1.0

.global lbl_805AE13C
lbl_805AE13C:
	# ROM: 0x3FA9DC
	.4byte 0


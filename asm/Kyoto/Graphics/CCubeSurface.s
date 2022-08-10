.include "macros.inc"

.section .ctors, "wa"
lbl_ctor:
.4byte __sinit_CCubeSurface_cpp

.section .text, "ax"

.global GetBounds__12CCubeSurfaceCFv
GetBounds__12CCubeSurfaceCFv:
/* 803482B0 00345210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803482B4 00345214  7C 08 02 A6 */	mflr r0
/* 803482B8 00345218  90 01 00 14 */	stw r0, 0x14(r1)
/* 803482BC 0034521C  80 84 00 00 */	lwz r4, 0(r4)
/* 803482C0 00345220  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 803482C4 00345224  28 00 00 00 */	cmplwi r0, 0
/* 803482C8 00345228  41 82 00 38 */	beq lbl_80348300
/* 803482CC 0034522C  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 803482D0 00345230  D0 03 00 00 */	stfs f0, 0(r3)
/* 803482D4 00345234  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 803482D8 00345238  D0 03 00 04 */	stfs f0, 4(r3)
/* 803482DC 0034523C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 803482E0 00345240  D0 03 00 08 */	stfs f0, 8(r3)
/* 803482E4 00345244  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 803482E8 00345248  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803482EC 0034524C  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 803482F0 00345250  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 803482F4 00345254  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 803482F8 00345258  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 803482FC 0034525C  48 00 00 0C */	b lbl_80348308
lbl_80348300:
/* 80348300 00345260  7C 85 23 78 */	mr r5, r4
/* 80348304 00345264  4B FF 02 05 */	bl __ct__6CAABoxFRC9CVector3fRC9CVector3f
lbl_80348308:
/* 80348308 00345268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034830C 0034526C  7C 08 03 A6 */	mtlr r0
/* 80348310 00345270  38 21 00 10 */	addi r1, r1, 0x10
/* 80348314 00345274  4E 80 00 20 */	blr

.global __sinit_CCubeSurface_cpp
__sinit_CCubeSurface_cpp:
/* 80348318 00345278  C0 22 CC 18 */	lfs f1, lbl_805AE938@sda21(r2)
/* 8034831C 0034527C  3C 60 80 5A */	lis r3, lbl_805A67C0@ha
/* 80348320 00345280  C0 02 CC 1C */	lfs f0, lbl_805AE93C@sda21(r2)
/* 80348324 00345284  D4 23 67 C0 */	stfsu f1, lbl_805A67C0@l(r3)
/* 80348328 00345288  D0 03 00 04 */	stfs f0, 4(r3)
/* 8034832C 0034528C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80348330 00345290  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE938
lbl_805AE938:
	# ROM: 0x3FB1D8
	.float 1.0

.global lbl_805AE93C
lbl_805AE93C:
	# ROM: 0x3FB1DC
	.4byte 0


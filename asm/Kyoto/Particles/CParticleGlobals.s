.include "macros.inc"

.section .sbss, "wa"
.balign 8

.global lbl_805A9490
lbl_805A9490:
	.skip 0x4
.global lbl_805A9494
lbl_805A9494:
	.skip 0x4
.global lbl_805A9498
lbl_805A9498:
	.skip 0x4
.global lbl_805A949C
lbl_805A949C:
	.skip 0x4
.global lbl_805A94A0
lbl_805A94A0:
	.skip 0x4
.global lbl_805A94A4
lbl_805A94A4:
	.skip 0x4
.global lbl_805A94A8
lbl_805A94A8:
	.skip 0x4
.global lbl_805A94AC
lbl_805A94AC:
	.skip 0x4
.global lbl_805A94B0
lbl_805A94B0:
	.skip 0x4
.global lbl_805A94B4
lbl_805A94B4:
	.skip 0x4
.global lbl_805A94B8
lbl_805A94B8:
	.skip 0x8

.section .text, "ax"

.global UpdateParticleLifetimeTweenValues__16CParticleGlobalsFi
UpdateParticleLifetimeTweenValues__16CParticleGlobalsFi:
/* 8032A67C 003275DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032A680 003275E0  3C 00 43 30 */	lis r0, 0x4330
/* 8032A684 003275E4  C8 22 CA 88 */	lfd f1, lbl_805AE7A8@sda21(r2)
/* 8032A688 003275E8  80 8D A8 D0 */	lwz r4, lbl_805A9490@sda21(r13)
/* 8032A68C 003275EC  90 01 00 08 */	stw r0, 8(r1)
/* 8032A690 003275F0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 8032A694 003275F4  C0 42 CA 7C */	lfs f2, lbl_805AE79C@sda21(r2)
/* 8032A698 003275F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8032A69C 003275FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032A6A0 00327600  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032A6A4 00327604  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 8032A6A8 00327608  41 82 00 18 */	beq lbl_8032A6C0
/* 8032A6AC 0032760C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8032A6B0 00327610  90 01 00 10 */	stw r0, 0x10(r1)
/* 8032A6B4 00327614  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8032A6B8 00327618  EC 60 08 28 */	fsubs f3, f0, f1
/* 8032A6BC 0032761C  48 00 00 08 */	b lbl_8032A6C4
lbl_8032A6C0:
/* 8032A6C0 00327620  C0 62 CA 78 */	lfs f3, lbl_805AE798@sda21(r2)
lbl_8032A6C4:
/* 8032A6C4 00327624  3C 00 43 30 */	lis r0, 0x4330
/* 8032A6C8 00327628  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8032A6CC 0032762C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8032A6D0 00327630  C8 42 CA 88 */	lfd f2, lbl_805AE7A8@sda21(r2)
/* 8032A6D4 00327634  90 01 00 18 */	stw r0, 0x18(r1)
/* 8032A6D8 00327638  C0 22 CA 80 */	lfs f1, lbl_805AE7A0@sda21(r2)
/* 8032A6DC 0032763C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8032A6E0 00327640  90 01 00 28 */	stw r0, 0x28(r1)
/* 8032A6E4 00327644  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032A6E8 00327648  EC 01 00 32 */	fmuls f0, f1, f0
/* 8032A6EC 0032764C  EC 20 18 24 */	fdivs f1, f0, f3
/* 8032A6F0 00327650  FC 00 08 1E */	fctiwz f0, f1
/* 8032A6F4 00327654  D0 2D A8 E4 */	stfs f1, lbl_805A94A4@sda21(r13)
/* 8032A6F8 00327658  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8032A6FC 0032765C  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8032A700 00327660  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8032A704 00327664  2C 03 00 00 */	cmpwi r3, 0
/* 8032A708 00327668  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8032A70C 0032766C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8032A710 00327670  90 6D A8 E0 */	stw r3, lbl_805A94A0@sda21(r13)
/* 8032A714 00327674  EC 00 10 28 */	fsubs f0, f0, f2
/* 8032A718 00327678  EC 01 00 28 */	fsubs f0, f1, f0
/* 8032A71C 0032767C  D0 0D A8 E8 */	stfs f0, lbl_805A94A8@sda21(r13)
/* 8032A720 00327680  40 80 00 10 */	bge lbl_8032A730
/* 8032A724 00327684  38 00 00 00 */	li r0, 0
/* 8032A728 00327688  90 0D A8 E0 */	stw r0, lbl_805A94A0@sda21(r13)
/* 8032A72C 0032768C  48 00 00 14 */	b lbl_8032A740
lbl_8032A730:
/* 8032A730 00327690  2C 03 00 64 */	cmpwi r3, 0x64
/* 8032A734 00327694  40 81 00 0C */	ble lbl_8032A740
/* 8032A738 00327698  38 00 00 64 */	li r0, 0x64
/* 8032A73C 0032769C  90 0D A8 E0 */	stw r0, lbl_805A94A0@sda21(r13)
lbl_8032A740:
/* 8032A740 003276A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8032A744 003276A4  4E 80 00 20 */	blr

.global SetEmitterTime__16CParticleGlobalsFi
SetEmitterTime__16CParticleGlobalsFi:
/* 8032A748 003276A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A74C 003276AC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8032A750 003276B0  3C 00 43 30 */	lis r0, 0x4330
/* 8032A754 003276B4  C8 22 CA 88 */	lfd f1, lbl_805AE7A8@sda21(r2)
/* 8032A758 003276B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8032A75C 003276BC  90 01 00 08 */	stw r0, 8(r1)
/* 8032A760 003276C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032A764 003276C4  90 6D A8 D8 */	stw r3, lbl_805A9498@sda21(r13)
/* 8032A768 003276C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032A76C 003276CC  D0 0D A8 DC */	stfs f0, lbl_805A949C@sda21(r13)
/* 8032A770 003276D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A774 003276D4  4E 80 00 20 */	blr

.global SetParticleLifetime__16CParticleGlobalsFi
SetParticleLifetime__16CParticleGlobalsFi:
/* 8032A778 003276D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032A77C 003276DC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 8032A780 003276E0  3C 00 43 30 */	lis r0, 0x4330
/* 8032A784 003276E4  C8 22 CA 88 */	lfd f1, lbl_805AE7A8@sda21(r2)
/* 8032A788 003276E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 8032A78C 003276EC  90 01 00 08 */	stw r0, 8(r1)
/* 8032A790 003276F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8032A794 003276F4  90 6D A8 D0 */	stw r3, lbl_805A9490@sda21(r13)
/* 8032A798 003276F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8032A79C 003276FC  D0 0D A8 D4 */	stfs f0, lbl_805A9494@sda21(r13)
/* 8032A7A0 00327700  38 21 00 10 */	addi r1, r1, 0x10
/* 8032A7A4 00327704  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE798
lbl_805AE798:
	# ROM: 0x3FB038
	.float 1.0

.global lbl_805AE79C
lbl_805AE79C:
	# ROM: 0x3FB03C
	.4byte 0

.global lbl_805AE7A0
lbl_805AE7A0:
	# ROM: 0x3FB040
	.4byte 0x42C80000
	.4byte 0

.global lbl_805AE7A8
lbl_805AE7A8:
	# ROM: 0x3FB048
	.double 4.503601774854144E15


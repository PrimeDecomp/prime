.include "macros.inc"

.section .text, "ax"

.global __ieee754_asin
__ieee754_asin:
/* 803916D8 0038E638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803916DC 0038E63C  3C 00 3F F0 */	lis r0, 0x3ff0
/* 803916E0 0038E640  D8 21 00 08 */	stfd f1, 8(r1)
/* 803916E4 0038E644  80 81 00 08 */	lwz r4, 8(r1)
/* 803916E8 0038E648  54 85 00 7E */	clrlwi r5, r4, 1
/* 803916EC 0038E64C  7C 05 00 00 */	cmpw r5, r0
/* 803916F0 0038E650  41 80 00 34 */	blt lbl_80391724
/* 803916F4 0038E654  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803916F8 0038E658  3C 65 C0 10 */	addis r3, r5, 0xc010
/* 803916FC 0038E65C  7C 60 03 79 */	or. r0, r3, r0
/* 80391700 0038E660  40 82 00 18 */	bne lbl_80391718
/* 80391704 0038E664  C8 02 D0 30 */	lfd f0, lbl_805AED50@sda21(r2)
/* 80391708 0038E668  C8 42 D0 28 */	lfd f2, lbl_805AED48@sda21(r2)
/* 8039170C 0038E66C  FC 00 00 72 */	fmul f0, f0, f1
/* 80391710 0038E670  FC 22 00 7A */	fmadd f1, f2, f1, f0
/* 80391714 0038E674  48 00 02 20 */	b lbl_80391934
lbl_80391718:
/* 80391718 0038E678  3C 60 80 5B */	lis r3, lbl_805A8BA0@ha
/* 8039171C 0038E67C  C0 23 8B A0 */	lfs f1, lbl_805A8BA0@l(r3)
/* 80391720 0038E680  48 00 02 14 */	b lbl_80391934
lbl_80391724:
/* 80391724 0038E684  3C 00 3F E0 */	lis r0, 0x3fe0
/* 80391728 0038E688  7C 05 00 00 */	cmpw r5, r0
/* 8039172C 0038E68C  40 80 00 94 */	bge lbl_803917C0
/* 80391730 0038E690  3C 00 3E 40 */	lis r0, 0x3e40
/* 80391734 0038E694  7C 05 00 00 */	cmpw r5, r0
/* 80391738 0038E698  40 80 00 1C */	bge lbl_80391754
/* 8039173C 0038E69C  C8 62 D0 38 */	lfd f3, lbl_805AED58@sda21(r2)
/* 80391740 0038E6A0  C8 02 D0 40 */	lfd f0, lbl_805AED60@sda21(r2)
/* 80391744 0038E6A4  FC 63 08 2A */	fadd f3, f3, f1
/* 80391748 0038E6A8  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8039174C 0038E6AC  40 81 00 0C */	ble lbl_80391758
/* 80391750 0038E6B0  48 00 01 E4 */	b lbl_80391934
lbl_80391754:
/* 80391754 0038E6B4  FC 41 00 72 */	fmul f2, f1, f1
lbl_80391758:
/* 80391758 0038E6B8  C8 22 D0 70 */	lfd f1, lbl_805AED90@sda21(r2)
/* 8039175C 0038E6BC  C8 02 D0 68 */	lfd f0, lbl_805AED88@sda21(r2)
/* 80391760 0038E6C0  C8 62 D0 60 */	lfd f3, lbl_805AED80@sda21(r2)
/* 80391764 0038E6C4  FC 81 00 BA */	fmadd f4, f1, f2, f0
/* 80391768 0038E6C8  C8 E2 D0 58 */	lfd f7, lbl_805AED78@sda21(r2)
/* 8039176C 0038E6CC  C8 22 D0 90 */	lfd f1, lbl_805AEDB0@sda21(r2)
/* 80391770 0038E6D0  C8 02 D0 88 */	lfd f0, lbl_805AEDA8@sda21(r2)
/* 80391774 0038E6D4  C8 C2 D0 50 */	lfd f6, lbl_805AED70@sda21(r2)
/* 80391778 0038E6D8  FD 02 19 3A */	fmadd f8, f2, f4, f3
/* 8039177C 0038E6DC  C8 62 D0 80 */	lfd f3, lbl_805AEDA0@sda21(r2)
/* 80391780 0038E6E0  FC 81 00 BA */	fmadd f4, f1, f2, f0
/* 80391784 0038E6E4  C8 A2 D0 48 */	lfd f5, lbl_805AED68@sda21(r2)
/* 80391788 0038E6E8  C8 22 D0 78 */	lfd f1, lbl_805AED98@sda21(r2)
/* 8039178C 0038E6EC  FC E2 3A 3A */	fmadd f7, f2, f8, f7
/* 80391790 0038E6F0  C8 02 D0 40 */	lfd f0, lbl_805AED60@sda21(r2)
/* 80391794 0038E6F4  FC 62 19 3A */	fmadd f3, f2, f4, f3
/* 80391798 0038E6F8  C9 01 00 08 */	lfd f8, 8(r1)
/* 8039179C 0038E6FC  FC 82 31 FA */	fmadd f4, f2, f7, f6
/* 803917A0 0038E700  FC 22 08 FA */	fmadd f1, f2, f3, f1
/* 803917A4 0038E704  FC 62 29 3A */	fmadd f3, f2, f4, f5
/* 803917A8 0038E708  FC 02 00 7A */	fmadd f0, f2, f1, f0
/* 803917AC 0038E70C  FC 22 00 F2 */	fmul f1, f2, f3
/* 803917B0 0038E710  FC 01 00 24 */	fdiv f0, f1, f0
/* 803917B4 0038E714  FC 28 40 3A */	fmadd f1, f8, f0, f8
/* 803917B8 0038E718  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803917BC 0038E71C  48 00 01 78 */	b lbl_80391934
lbl_803917C0:
/* 803917C0 0038E720  FC 20 0A 10 */	fabs f1, f1
/* 803917C4 0038E724  C9 82 D0 40 */	lfd f12, lbl_805AED60@sda21(r2)
/* 803917C8 0038E728  C8 02 D0 98 */	lfd f0, lbl_805AEDB8@sda21(r2)
/* 803917CC 0038E72C  C8 C2 D0 70 */	lfd f6, lbl_805AED90@sda21(r2)
/* 803917D0 0038E730  FD 6C 08 28 */	fsub f11, f12, f1
/* 803917D4 0038E734  C8 82 D0 68 */	lfd f4, lbl_805AED88@sda21(r2)
/* 803917D8 0038E738  C9 22 D0 60 */	lfd f9, lbl_805AED80@sda21(r2)
/* 803917DC 0038E73C  C9 02 D0 58 */	lfd f8, lbl_805AED78@sda21(r2)
/* 803917E0 0038E740  FC 40 02 F2 */	fmul f2, f0, f11
/* 803917E4 0038E744  C8 22 D0 A0 */	lfd f1, lbl_805AEDC0@sda21(r2)
/* 803917E8 0038E748  C8 A2 D0 90 */	lfd f5, lbl_805AEDB0@sda21(r2)
/* 803917EC 0038E74C  C8 62 D0 88 */	lfd f3, lbl_805AEDA8@sda21(r2)
/* 803917F0 0038E750  C8 E2 D0 50 */	lfd f7, lbl_805AED70@sda21(r2)
/* 803917F4 0038E754  FD 46 20 BA */	fmadd f10, f6, f2, f4
/* 803917F8 0038E758  C8 82 D0 80 */	lfd f4, lbl_805AEDA0@sda21(r2)
/* 803917FC 0038E75C  FC A5 18 BA */	fmadd f5, f5, f2, f3
/* 80391800 0038E760  C8 C2 D0 48 */	lfd f6, lbl_805AED68@sda21(r2)
/* 80391804 0038E764  C8 62 D0 78 */	lfd f3, lbl_805AED98@sda21(r2)
/* 80391808 0038E768  FD 22 4A BA */	fmadd f9, f2, f10, f9
/* 8039180C 0038E76C  D9 61 00 10 */	stfd f11, 0x10(r1)
/* 80391810 0038E770  FC 82 21 7A */	fmadd f4, f2, f5, f4
/* 80391814 0038E774  FC A2 42 7A */	fmadd f5, f2, f9, f8
/* 80391818 0038E778  FC 62 19 3A */	fmadd f3, f2, f4, f3
/* 8039181C 0038E77C  FC 82 39 7A */	fmadd f4, f2, f5, f7
/* 80391820 0038E780  FD 02 60 FA */	fmadd f8, f2, f3, f12
/* 80391824 0038E784  FC 62 31 3A */	fmadd f3, f2, f4, f6
/* 80391828 0038E788  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8039182C 0038E78C  FC A2 00 F2 */	fmul f5, f2, f3
/* 80391830 0038E790  40 81 00 54 */	ble lbl_80391884
/* 80391834 0038E794  FC 60 10 34 */	frsqrte f3, f2
/* 80391838 0038E798  C8 82 D0 A8 */	lfd f4, lbl_805AEDC8@sda21(r2)
/* 8039183C 0038E79C  FC 23 00 F2 */	fmul f1, f3, f3
/* 80391840 0038E7A0  FC 60 00 F2 */	fmul f3, f0, f3
/* 80391844 0038E7A4  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80391848 0038E7A8  FC 63 00 72 */	fmul f3, f3, f1
/* 8039184C 0038E7AC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80391850 0038E7B0  FC 60 00 F2 */	fmul f3, f0, f3
/* 80391854 0038E7B4  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80391858 0038E7B8  FC 63 00 72 */	fmul f3, f3, f1
/* 8039185C 0038E7BC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80391860 0038E7C0  FC 60 00 F2 */	fmul f3, f0, f3
/* 80391864 0038E7C4  FC 22 20 7C */	fnmsub f1, f2, f1, f4
/* 80391868 0038E7C8  FC 63 00 72 */	fmul f3, f3, f1
/* 8039186C 0038E7CC  FC 23 00 F2 */	fmul f1, f3, f3
/* 80391870 0038E7D0  FC 60 00 F2 */	fmul f3, f0, f3
/* 80391874 0038E7D4  FC 02 20 7C */	fnmsub f0, f2, f1, f4
/* 80391878 0038E7D8  FC 03 00 32 */	fmul f0, f3, f0
/* 8039187C 0038E7DC  FC 22 00 32 */	fmul f1, f2, f0
/* 80391880 0038E7E0  48 00 00 2C */	b lbl_803918AC
lbl_80391884:
/* 80391884 0038E7E4  FC 01 10 00 */	fcmpu cr0, f1, f2
/* 80391888 0038E7E8  40 82 00 08 */	bne lbl_80391890
/* 8039188C 0038E7EC  48 00 00 20 */	b lbl_803918AC
lbl_80391890:
/* 80391890 0038E7F0  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 80391894 0038E7F4  41 82 00 10 */	beq lbl_803918A4
/* 80391898 0038E7F8  3C 60 80 5B */	lis r3, lbl_805A8BA0@ha
/* 8039189C 0038E7FC  C0 23 8B A0 */	lfs f1, lbl_805A8BA0@l(r3)
/* 803918A0 0038E800  48 00 00 0C */	b lbl_803918AC
lbl_803918A4:
/* 803918A4 0038E804  3C 60 80 5B */	lis r3, lbl_805A8BA4@ha
/* 803918A8 0038E808  C0 23 8B A4 */	lfs f1, lbl_805A8BA4@l(r3)
lbl_803918AC:
/* 803918AC 0038E80C  3C 60 3F EF */	lis r3, 0x3FEF3333@ha
/* 803918B0 0038E810  38 03 33 33 */	addi r0, r3, 0x3FEF3333@l
/* 803918B4 0038E814  7C 05 00 00 */	cmpw r5, r0
/* 803918B8 0038E818  41 80 00 28 */	blt lbl_803918E0
/* 803918BC 0038E81C  FC 85 40 24 */	fdiv f4, f5, f8
/* 803918C0 0038E820  C8 42 D0 B0 */	lfd f2, lbl_805AEDD0@sda21(r2)
/* 803918C4 0038E824  C8 02 D0 30 */	lfd f0, lbl_805AED50@sda21(r2)
/* 803918C8 0038E828  C8 62 D0 28 */	lfd f3, lbl_805AED48@sda21(r2)
/* 803918CC 0038E82C  FC 21 09 3A */	fmadd f1, f1, f4, f1
/* 803918D0 0038E830  D8 81 00 10 */	stfd f4, 0x10(r1)
/* 803918D4 0038E834  FC 02 00 78 */	fmsub f0, f2, f1, f0
/* 803918D8 0038E838  FC 23 00 28 */	fsub f1, f3, f0
/* 803918DC 0038E83C  48 00 00 48 */	b lbl_80391924
lbl_803918E0:
/* 803918E0 0038E840  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 803918E4 0038E844  38 00 00 00 */	li r0, 0
/* 803918E8 0038E848  C8 E2 D0 B0 */	lfd f7, lbl_805AEDD0@sda21(r2)
/* 803918EC 0038E84C  FC A5 40 24 */	fdiv f5, f5, f8
/* 803918F0 0038E850  90 01 00 14 */	stw r0, 0x14(r1)
/* 803918F4 0038E854  C8 02 D0 30 */	lfd f0, lbl_805AED50@sda21(r2)
/* 803918F8 0038E858  C9 01 00 10 */	lfd f8, 0x10(r1)
/* 803918FC 0038E85C  C8 62 D0 B8 */	lfd f3, lbl_805AEDD8@sda21(r2)
/* 80391900 0038E860  FC 88 12 3C */	fnmsub f4, f8, f8, f2
/* 80391904 0038E864  FC 41 40 2A */	fadd f2, f1, f8
/* 80391908 0038E868  FC C7 00 72 */	fmul f6, f7, f1
/* 8039190C 0038E86C  FC 24 10 24 */	fdiv f1, f4, f2
/* 80391910 0038E870  FC 27 00 7C */	fnmsub f1, f7, f1, f0
/* 80391914 0038E874  FC 07 1A 3C */	fnmsub f0, f7, f8, f3
/* 80391918 0038E878  FC 26 09 78 */	fmsub f1, f6, f5, f1
/* 8039191C 0038E87C  FC 01 00 28 */	fsub f0, f1, f0
/* 80391920 0038E880  FC 23 00 28 */	fsub f1, f3, f0
lbl_80391924:
/* 80391924 0038E884  2C 04 00 00 */	cmpwi r4, 0
/* 80391928 0038E888  40 81 00 08 */	ble lbl_80391930
/* 8039192C 0038E88C  48 00 00 08 */	b lbl_80391934
lbl_80391930:
/* 80391930 0038E890  FC 20 08 50 */	fneg f1, f1
lbl_80391934:
/* 80391934 0038E894  38 21 00 20 */	addi r1, r1, 0x20
/* 80391938 0038E898  4E 80 00 20 */	blr

.section .sdata2, "a"
.global lbl_805AED48
lbl_805AED48:
	# ROM: 0x3FB5E8
	.4byte 0x3FF921FB
	.4byte 0x54442D18

.global lbl_805AED50
lbl_805AED50:
	# ROM: 0x3FB5F0
	.4byte 0x3C91A626
	.4byte 0x33145C07

.global lbl_805AED58
lbl_805AED58:
	# ROM: 0x3FB5F8
	.4byte 0x7E37E43C
	.4byte 0x8800759C

.global lbl_805AED60
lbl_805AED60:
	# ROM: 0x3FB600
	.double 1.0

.global lbl_805AED68
lbl_805AED68:
	# ROM: 0x3FB608
	.4byte 0x3FC55555
	.4byte 0x55555555

.global lbl_805AED70
lbl_805AED70:
	# ROM: 0x3FB610
	.4byte 0xBFD4D612
	.4byte 0x03EB6F7D

.global lbl_805AED78
lbl_805AED78:
	# ROM: 0x3FB618
	.4byte 0x3FC9C155
	.4byte 0x0E884455

.global lbl_805AED80
lbl_805AED80:
	# ROM: 0x3FB620
	.4byte 0xBFA48228
	.4byte 0xB5688F3B

.global lbl_805AED88
lbl_805AED88:
	# ROM: 0x3FB628
	.4byte 0x3F49EFE0
	.4byte 0x7501B288

.global lbl_805AED90
lbl_805AED90:
	# ROM: 0x3FB630
	.4byte 0x3F023DE1
	.4byte 0x0DFDF709

.global lbl_805AED98
lbl_805AED98:
	# ROM: 0x3FB638
	.4byte 0xC0033A27
	.4byte 0x1C8A2D4B

.global lbl_805AEDA0
lbl_805AEDA0:
	# ROM: 0x3FB640
	.4byte 0x40002AE5
	.4byte 0x9C598AC8

.global lbl_805AEDA8
lbl_805AEDA8:
	# ROM: 0x3FB648
	.4byte 0xBFE6066C
	.4byte 0x1B8D0159

.global lbl_805AEDB0
lbl_805AEDB0:
	# ROM: 0x3FB650
	.4byte 0x3FB3B8C5
	.4byte 0xB12E9282

.global lbl_805AEDB8
lbl_805AEDB8:
	# ROM: 0x3FB658
	.4byte 0x3FE00000
	.4byte 0

.global lbl_805AEDC0
lbl_805AEDC0:
	# ROM: 0x3FB660
	.4byte 0
	.4byte 0

.global lbl_805AEDC8
lbl_805AEDC8:
	# ROM: 0x3FB668
	.4byte 0x40080000
	.4byte 0

.global lbl_805AEDD0
lbl_805AEDD0:
	# ROM: 0x3FB670
	.float 2.0
	.4byte 0

.global lbl_805AEDD8
lbl_805AEDD8:
	# ROM: 0x3FB678
	.4byte 0x3FE921FB
	.4byte 0x54442D18


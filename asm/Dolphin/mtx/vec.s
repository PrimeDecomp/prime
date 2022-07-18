.include "macros.inc"

.section .sdata2
.global lbl_805AEC10
lbl_805AEC10:
	# ROM: 0x3FB4B0
	.float 0.5

.global lbl_805AEC14
lbl_805AEC14:
	# ROM: 0x3FB4B4
	.4byte 0x40400000


.section .text, "ax"

.global C_VECNormalize
C_VECNormalize:
/* 8037D650 0037A5B0  C0 02 CE F0 */	lfs f0, lbl_805AEC10@sda21(r2)
/* 8037D654 0037A5B4  C0 22 CE F4 */	lfs f1, lbl_805AEC14@sda21(r2)
/* 8037D658 0037A5B8  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8037D65C 0037A5BC  10 A2 00 B2 */	ps_mul f5, f2, f2
/* 8037D660 0037A5C0  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8037D664 0037A5C4  10 83 28 FA */	ps_madd f4, f3, f3, f5
/* 8037D668 0037A5C8  10 84 28 D4 */	ps_sum0 f4, f4, f3, f5
/* 8037D66C 0037A5CC  FC A0 20 34 */	frsqrte f5, f4
/* 8037D670 0037A5D0  EC C5 01 72 */	fmuls f6, f5, f5
/* 8037D674 0037A5D4  EC 05 00 32 */	fmuls f0, f5, f0
/* 8037D678 0037A5D8  EC C6 09 3C */	fnmsubs f6, f6, f4, f1
/* 8037D67C 0037A5DC  EC A6 00 32 */	fmuls f5, f6, f0
/* 8037D680 0037A5E0  10 42 01 58 */	ps_muls0 f2, f2, f5
/* 8037D684 0037A5E4  F0 44 00 00 */	psq_st f2, 0(r4), 0, qr0
/* 8037D688 0037A5E8  10 63 01 58 */	ps_muls0 f3, f3, f5
/* 8037D68C 0037A5EC  F0 64 80 08 */	psq_st f3, 8(r4), 1, qr0
/* 8037D690 0037A5F0  4E 80 00 20 */	blr

.global C_VECCrossProduct
C_VECCrossProduct:
/* 8037D694 0037A5F4  E0 24 00 00 */	psq_l f1, 0(r4), 0, qr0
/* 8037D698 0037A5F8  C0 43 00 08 */	lfs f2, 8(r3)
/* 8037D69C 0037A5FC  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8037D6A0 0037A600  10 C1 0C A0 */	ps_merge10 f6, f1, f1
/* 8037D6A4 0037A604  C0 64 00 08 */	lfs f3, 8(r4)
/* 8037D6A8 0037A608  10 81 00 B2 */	ps_mul f4, f1, f2
/* 8037D6AC 0037A60C  10 E1 00 18 */	ps_muls0 f7, f1, f0
/* 8037D6B0 0037A610  10 A0 20 F8 */	ps_msub f5, f0, f3, f4
/* 8037D6B4 0037A614  11 00 39 B8 */	ps_msub f8, f0, f6, f7
/* 8037D6B8 0037A618  11 25 2C E0 */	ps_merge11 f9, f5, f5
/* 8037D6BC 0037A61C  11 45 44 60 */	ps_merge01 f10, f5, f8
/* 8037D6C0 0037A620  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 8037D6C4 0037A624  11 40 50 50 */	ps_neg f10, f10
/* 8037D6C8 0037A628  F1 45 00 04 */	psq_st f10, 4(r5), 0, qr0
/* 8037D6CC 0037A62C  4E 80 00 20 */	blr


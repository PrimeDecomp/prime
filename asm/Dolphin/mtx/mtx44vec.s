.include "macros.inc"

.section .text, "ax"

.global PSMTXMultVec
PSMTXMultVec:
/* 8037D474 0037A3D4  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 8037D478 0037A3D8  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 8037D47C 0037A3DC  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 8037D480 0037A3E0  10 82 00 32 */	ps_mul f4, f2, f0
/* 8037D484 0037A3E4  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 8037D488 0037A3E8  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8037D48C 0037A3EC  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 8037D490 0037A3F0  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8037D494 0037A3F4  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 8037D498 0037A3F8  11 48 00 32 */	ps_mul f10, f8, f0
/* 8037D49C 0037A3FC  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 8037D4A0 0037A400  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8037D4A4 0037A404  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 8037D4A8 0037A408  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8037D4AC 0037A40C  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 8037D4B0 0037A410  10 82 00 32 */	ps_mul f4, f2, f0
/* 8037D4B4 0037A414  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 8037D4B8 0037A418  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8037D4BC 0037A41C  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8037D4C0 0037A420  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 8037D4C4 0037A424  4E 80 00 20 */	blr 

.global PSMTXMultVecSR
PSMTXMultVecSR:
/* 8037D4C8 0037A428  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8037D4CC 0037A42C  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 8037D4D0 0037A430  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8037D4D4 0037A434  11 00 01 B2 */	ps_mul f8, f0, f6
/* 8037D4D8 0037A438  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8037D4DC 0037A43C  11 42 01 B2 */	ps_mul f10, f2, f6
/* 8037D4E0 0037A440  E0 E4 80 08 */	psq_l f7, 8(r4), 1, qr0
/* 8037D4E4 0037A444  11 84 01 B2 */	ps_mul f12, f4, f6
/* 8037D4E8 0037A448  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8037D4EC 0037A44C  11 08 42 14 */	ps_sum0 f8, f8, f8, f8
/* 8037D4F0 0037A450  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8037D4F4 0037A454  11 4A 52 94 */	ps_sum0 f10, f10, f10, f10
/* 8037D4F8 0037A458  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8037D4FC 0037A45C  11 8C 63 14 */	ps_sum0 f12, f12, f12, f12
/* 8037D500 0037A460  11 21 41 FA */	ps_madd f9, f1, f7, f8
/* 8037D504 0037A464  F1 25 80 00 */	psq_st f9, 0(r5), 1, qr0
/* 8037D508 0037A468  11 63 51 FA */	ps_madd f11, f3, f7, f10
/* 8037D50C 0037A46C  F1 65 80 04 */	psq_st f11, 4(r5), 1, qr0
/* 8037D510 0037A470  11 A5 61 FA */	ps_madd f13, f5, f7, f12
/* 8037D514 0037A474  F1 A5 80 08 */	psq_st f13, 8(r5), 1, qr0
/* 8037D518 0037A478  4E 80 00 20 */	blr 

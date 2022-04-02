.include "macros.inc"

.section .text, "ax"

.global PSMTXReorder
PSMTXReorder:
/* 8037D6D0 0037A630  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 8037D6D4 0037A634  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 8037D6D8 0037A638  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 8037D6DC 0037A63C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 8037D6E0 0037A640  10 C0 14 20 */	ps_merge00 f6, f0, f2
/* 8037D6E4 0037A644  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 8037D6E8 0037A648  11 84 04 60 */	ps_merge01 f12, f4, f0
/* 8037D6EC 0037A64C  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 8037D6F0 0037A650  10 E2 24 E0 */	ps_merge11 f7, f2, f4
/* 8037D6F4 0037A654  F0 C4 00 00 */	psq_st f6, 0(r4), 0, qr0
/* 8037D6F8 0037A658  11 01 1C 20 */	ps_merge00 f8, f1, f3
/* 8037D6FC 0037A65C  F1 84 00 08 */	psq_st f12, 8(r4), 0, qr0
/* 8037D700 0037A660  11 25 0C 60 */	ps_merge01 f9, f5, f1
/* 8037D704 0037A664  F0 E4 00 10 */	psq_st f7, 16(r4), 0, qr0
/* 8037D708 0037A668  11 43 2C E0 */	ps_merge11 f10, f3, f5
/* 8037D70C 0037A66C  F1 04 00 18 */	psq_st f8, 24(r4), 0, qr0
/* 8037D710 0037A670  F1 24 00 20 */	psq_st f9, 32(r4), 0, qr0
/* 8037D714 0037A674  F1 44 00 28 */	psq_st f10, 40(r4), 0, qr0
/* 8037D718 0037A678  4E 80 00 20 */	blr 

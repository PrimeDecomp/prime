.include "macros.inc"

.section .text, "ax"

.global IsUser__Fi
IsUser__Fi:
/* 800B44F8 000B1458  20 03 00 01 */	subfic r0, r3, 1
/* 800B44FC 000B145C  7C 00 00 34 */	cntlzw r0, r0
/* 800B4500 000B1460  54 03 D9 7E */	srwi r3, r0, 5
/* 800B4504 000B1464  4E 80 00 20 */	blr 

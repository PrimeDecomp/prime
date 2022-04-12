.include "macros.inc"

.section .text, "ax"

.global "Clamp<i>__5CMathFRCiRCiRCi"
"Clamp<i>__5CMathFRCiRCiRCi":
/* 8005A064 00056FC4  80 03 00 00 */	lwz r0, 0(r3)
/* 8005A068 00056FC8  80 C4 00 00 */	lwz r6, 0(r4)
/* 8005A06C 00056FCC  7C 00 30 00 */	cmpw r0, r6
/* 8005A070 00056FD0  4D 81 00 20 */	bgtlr 
/* 8005A074 00056FD4  80 05 00 00 */	lwz r0, 0(r5)
/* 8005A078 00056FD8  7C 00 30 00 */	cmpw r0, r6
/* 8005A07C 00056FDC  40 80 00 0C */	bge lbl_8005A088
/* 8005A080 00056FE0  7C A3 2B 78 */	mr r3, r5
/* 8005A084 00056FE4  4E 80 00 20 */	blr 
lbl_8005A088:
/* 8005A088 00056FE8  7C 83 23 78 */	mr r3, r4
/* 8005A08C 00056FEC  4E 80 00 20 */	blr 

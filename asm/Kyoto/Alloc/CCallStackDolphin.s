.include "macros.inc"

.section .text, "ax"

.global GetTypeText__10CCallStackCFv
GetTypeText__10CCallStackCFv:
/* 802D63C4 002D3324  80 63 00 04 */	lwz r3, 4(r3)
/* 802D63C8 002D3328  4E 80 00 20 */	blr

.global GetFileAndLineText__10CCallStackCFv
GetFileAndLineText__10CCallStackCFv:
/* 802D63CC 002D332C  80 63 00 00 */	lwz r3, 0(r3)
/* 802D63D0 002D3330  4E 80 00 20 */	blr

.global __ct__10CCallStackFUiPCcPCc
__ct__10CCallStackFUiPCcPCc:
/* 802D63D4 002D3334  90 A3 00 00 */	stw r5, 0(r3)
/* 802D63D8 002D3338  90 C3 00 04 */	stw r6, 4(r3)
/* 802D63DC 002D333C  4E 80 00 20 */	blr

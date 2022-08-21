.include "macros.inc"

.section .text, "ax"

.global EnableMetroTRKInterrupts
EnableMetroTRKInterrupts:
/* 80003640 000005A0  4E 80 00 20 */	blr 

.global InitMetroTRK
InitMetroTRK:
/* 80003644 000005A4  4E 80 00 20 */	blr 

.global __read_console
__read_console:
/* 80003648 000005A8  38 60 00 00 */	li r3, 0
/* 8000364C 000005AC  4E 80 00 20 */	blr 

.global __TRK_write_console
__TRK_write_console:
/* 80003650 000005B0  38 60 00 00 */	li r3, 0
/* 80003654 000005B4  4E 80 00 20 */	blr

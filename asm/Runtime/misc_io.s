.include "macros.inc"

.section .text, "ax"

.global __stdio_atexit
__stdio_atexit:
/* 8038DCCC 0038AC2C  3C 60 80 39 */	lis r3, __close_all@ha
/* 8038DCD0 0038AC30  38 03 B1 18 */	addi r0, r3, __close_all@l
/* 8038DCD4 0038AC34  90 0D AE 00 */	stw r0, __stdio_exit@sda21(r13)
/* 8038DCD8 0038AC38  4E 80 00 20 */	blr

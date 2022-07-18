.include "macros.inc"

.section .text, "ax"

# .global abs
# abs:
# /* 8038CE1C 00389D7C  7C 64 FE 70 */	srawi r4, r3, 0x1f
# /* 8038CE20 00389D80  7C 80 1A 78 */	xor r0, r4, r3
# /* 8038CE24 00389D84  7C 64 00 50 */	subf r3, r4, r0
# /* 8038CE28 00389D88  4E 80 00 20 */	blr

.include "macros.inc"

.section .data, "wa"
.balign 8

.global __lconv
__lconv:
	# ROM: 0x3EFD20
	.4byte lbl_803D86B8
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte lbl_803D86BA
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00
	.4byte lbl_803D86BA
	.4byte 0x7F7F7F7F
	.4byte 0x7F7F7F00

.section .rodata
.balign 8

.global lbl_803D86B8
lbl_803D86B8:

	# ROM: 0x3D56B8
	.asciz "."

.global lbl_803D86BA
lbl_803D86BA:

	# ROM: 0x3D56BA
  .asciz ""
  .asciz "C"
  .balign 4

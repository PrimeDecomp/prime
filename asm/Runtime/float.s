.include "macros.inc"

.section .sdata, "wa"
.balign 8

.global __float_nan
__float_nan:
	# ROM: 0x3F6540
	.4byte 0x7FFFFFFF

.global __float_huge
__float_huge:
	# ROM: 0x3F6544
	.4byte 0x7F800000

.global __double_min
__double_min:
	# ROM: 0x3F6548
	.4byte 0x00100000
	.4byte 0

.global __double_max
__double_max:
	# ROM: 0x3F6550
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF

.global __double_huge
__double_huge:
	# ROM: 0x3F6558
	.4byte 0x7FF00000
	.4byte 0

.global __extended_min
__extended_min:
	# ROM: 0x3F6560
	.4byte 0x00100000
	.4byte 0

.global __extended_max
__extended_max:
	# ROM: 0x3F6568
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF
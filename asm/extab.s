.include "macros.inc"

.section .extab, "wa"  # 0x800035A0 - 0x800035E0
.global __destroy_arr_extab
__destroy_arr_extab:
	# ROM: 0x3C8120
	.4byte 0x20080000
	.4byte 0
.global __construct_array_extab
__construct_array_extab:
	.4byte 0x20080000
	.4byte 0x00000060
	.4byte 0x00000010
	.4byte 0
	.4byte 0x82000008
	.4byte 0x80389844
.global __partial_array_destructor_extab
__partial_array_destructor_extab:
	.4byte 0x18080000
	.4byte 0

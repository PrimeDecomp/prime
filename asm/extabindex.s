.include "macros.inc"

.section .extabindex, "wa"  # 0x800035E0 - 0x80003640
lbl_extabindex:
	# ROM: 0x3C8160
	.4byte __destroy_arr
	.4byte 0x00000078
	.4byte __destroy_arr_extab
	.4byte __construct_array
	.4byte 0x000000F8
	.4byte __construct_array_extab
	.4byte __partial_array_destructor
	.4byte 0x000000B8
	.4byte __partial_array_destructor_extab

.global lbl_80003604
lbl_80003604:
	# ROM: 0x3C8184
	.4byte lbl_extabindex
	.4byte lbl_80003604
	.4byte __destroy_arr
	.4byte 0x00000228
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

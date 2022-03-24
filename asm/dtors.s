.include "macros.inc"

.section .dtors, "wa"  # 0x803CB380 - 0x803CB3A0
.global __destroy_global_chain_reference
__destroy_global_chain_reference:
	# ROM: 0x3C8380
	.4byte __destroy_global_chain
	.4byte __fini_cpp_exceptions
	.4byte __destroy_global_chain
	.4byte 0

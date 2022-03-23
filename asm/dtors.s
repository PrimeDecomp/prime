.include "macros.inc"

.section .dtors, "wa"  # 0x803CB380 - 0x803CB3A0
.global lbl_803CB380
lbl_803CB380:
	.incbin "baserom.dol", 0x3C8380, 0x10

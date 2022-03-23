.include "macros.inc"

.section .ctors, "wa"  # 0x803CB1C0 - 0x803CB380
.global lbl_803CB1C0
lbl_803CB1C0:
	.incbin "baserom.dol", 0x3C81C0, 0x1C0

.include "macros.inc"

.section extab_, "wa"  # 0x800035A0 - 0x800035E0
.global lbl_extab
lbl_extab:
	.incbin "baserom.dol", 0x3C8120, 0x28

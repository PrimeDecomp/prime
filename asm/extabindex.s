.include "macros.inc"

.section extabindex_, "wa"  # 0x800035E0 - 0x80003640
lbl_extabindex:
	.incbin "baserom.dol", 0x3C8160, 0x24
.global lbl_80003604
lbl_80003604:
	.incbin "baserom.dol", 0x3C8184, 0x20

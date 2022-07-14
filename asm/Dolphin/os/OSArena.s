.include "macros.inc"

.section .sdata
.global lbl_805A8B30
lbl_805A8B30:
	# ROM: 0x3F64D0
	.4byte 0xFFFFFFFF
	.4byte 0


.section .sbss
.global lbl_805A98B8
lbl_805A98B8:
	.skip 0x8

.section .text, "ax"

.global OSGetArenaHi
OSGetArenaHi:
/* 8037E790 0037B6F0  80 6D AC F8 */	lwz r3, lbl_805A98B8@sda21(r13)
/* 8037E794 0037B6F4  4E 80 00 20 */	blr

.global OSGetArenaLo
OSGetArenaLo:
/* 8037E798 0037B6F8  80 6D 9F 70 */	lwz r3, lbl_805A8B30@sda21(r13)
/* 8037E79C 0037B6FC  4E 80 00 20 */	blr

.global OSSetArenaHi
OSSetArenaHi:
/* 8037E7A0 0037B700  90 6D AC F8 */	stw r3, lbl_805A98B8@sda21(r13)
/* 8037E7A4 0037B704  4E 80 00 20 */	blr

.global OSSetArenaLo
OSSetArenaLo:
/* 8037E7A8 0037B708  90 6D 9F 70 */	stw r3, lbl_805A8B30@sda21(r13)
/* 8037E7AC 0037B70C  4E 80 00 20 */	blr

.global OSAllocFromArenaLo
OSAllocFromArenaLo:
/* 8037E7B0 0037B710  80 0D 9F 70 */	lwz r0, lbl_805A8B30@sda21(r13)
/* 8037E7B4 0037B714  38 84 FF FF */	addi r4, r4, -1
/* 8037E7B8 0037B718  7C 85 20 F8 */	nor r5, r4, r4
/* 8037E7BC 0037B71C  7C 00 22 14 */	add r0, r0, r4
/* 8037E7C0 0037B720  7C A6 00 38 */	and r6, r5, r0
/* 8037E7C4 0037B724  7C 06 1A 14 */	add r0, r6, r3
/* 8037E7C8 0037B728  7C 00 22 14 */	add r0, r0, r4
/* 8037E7CC 0037B72C  7C A0 00 38 */	and r0, r5, r0
/* 8037E7D0 0037B730  90 0D 9F 70 */	stw r0, lbl_805A8B30@sda21(r13)
/* 8037E7D4 0037B734  7C C3 33 78 */	mr r3, r6
/* 8037E7D8 0037B738  4E 80 00 20 */	blr



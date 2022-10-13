.include "macros.inc"

.section .bss
.balign 8
.global stderr_buff
stderr_buff:
  .skip 0x100
.global stdout_buff
stdout_buff:
  .skip 0x100
.global stdin_buff
stdin_buff:
  .skip 0x100

.section .data, "wa"
.balign 8

.global __files
__files:
	# ROM: 0x3EF778
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stdin_buff
	.4byte 0x00000100
	.4byte stdin_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_803F27C8

.global lbl_803F27C8
lbl_803F27C8:

	# ROM: 0x3EF7C8
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stdout_buff
	.4byte 0x00000100
	.4byte stdout_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_803F2818

.global lbl_803F2818
lbl_803F2818:

	# ROM: 0x3EF818
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte stderr_buff
	.4byte 0x00000100
	.4byte stderr_buff
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_803F2868

.global lbl_803F2868
lbl_803F2868:

	# ROM: 0x3EF868
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.section .text, "ax"

.global __flush_all
__flush_all:
/* 8038B0A8 00388008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038B0AC 0038800C  7C 08 02 A6 */	mflr r0
/* 8038B0B0 00388010  3C 60 80 3F */	lis r3, __files@ha
/* 8038B0B4 00388014  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038B0B8 00388018  38 03 27 78 */	addi r0, r3, __files@l
/* 8038B0BC 0038801C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038B0C0 00388020  3B E0 00 00 */	li r31, 0
/* 8038B0C4 00388024  93 C1 00 08 */	stw r30, 8(r1)
/* 8038B0C8 00388028  7C 1E 03 78 */	mr r30, r0
/* 8038B0CC 0038802C  48 00 00 28 */	b lbl_8038B0F4
lbl_8038B0D0:
/* 8038B0D0 00388030  A0 1E 00 04 */	lhz r0, 4(r30)
/* 8038B0D4 00388034  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 8038B0D8 00388038  41 82 00 18 */	beq lbl_8038B0F0
/* 8038B0DC 0038803C  7F C3 F3 78 */	mr r3, r30
/* 8038B0E0 00388040  48 00 21 95 */	bl fflush
/* 8038B0E4 00388044  2C 03 00 00 */	cmpwi r3, 0
/* 8038B0E8 00388048  41 82 00 08 */	beq lbl_8038B0F0
/* 8038B0EC 0038804C  3B E0 FF FF */	li r31, -1
lbl_8038B0F0:
/* 8038B0F0 00388050  83 DE 00 4C */	lwz r30, 0x4c(r30)
lbl_8038B0F4:
/* 8038B0F4 00388054  28 1E 00 00 */	cmplwi r30, 0
/* 8038B0F8 00388058  40 82 FF D8 */	bne lbl_8038B0D0
/* 8038B0FC 0038805C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038B100 00388060  7F E3 FB 78 */	mr r3, r31
/* 8038B104 00388064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038B108 00388068  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038B10C 0038806C  7C 08 03 A6 */	mtlr r0
/* 8038B110 00388070  38 21 00 10 */	addi r1, r1, 0x10
/* 8038B114 00388074  4E 80 00 20 */	blr

.global __close_all
__close_all:
/* 8038B118 00388078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038B11C 0038807C  7C 08 02 A6 */	mflr r0
/* 8038B120 00388080  3C 60 80 3F */	lis r3, __files@ha
/* 8038B124 00388084  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038B128 00388088  38 03 27 78 */	addi r0, r3, __files@l
/* 8038B12C 0038808C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038B130 00388090  7C 1F 03 78 */	mr r31, r0
/* 8038B134 00388094  48 00 00 60 */	b lbl_8038B194
lbl_8038B138:
/* 8038B138 00388098  A0 1F 00 04 */	lhz r0, 4(r31)
/* 8038B13C 0038809C  54 00 D7 7F */	rlwinm. r0, r0, 0x1a, 0x1d, 0x1f
/* 8038B140 003880A0  41 82 00 0C */	beq lbl_8038B14C
/* 8038B144 003880A4  7F E3 FB 78 */	mr r3, r31
/* 8038B148 003880A8  48 00 22 65 */	bl fclose
lbl_8038B14C:
/* 8038B14C 003880AC  7F E3 FB 78 */	mr r3, r31
/* 8038B150 003880B0  83 FF 00 4C */	lwz r31, 0x4c(r31)
/* 8038B154 003880B4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8038B158 003880B8  28 00 00 00 */	cmplwi r0, 0
/* 8038B15C 003880BC  41 82 00 0C */	beq lbl_8038B168
/* 8038B160 003880C0  4B FF F1 F9 */	bl free
/* 8038B164 003880C4  48 00 00 30 */	b lbl_8038B194
lbl_8038B168:
/* 8038B168 003880C8  A0 03 00 04 */	lhz r0, 4(r3)
/* 8038B16C 003880CC  38 80 00 03 */	li r4, 3
/* 8038B170 003880D0  50 80 35 F2 */	rlwimi r0, r4, 6, 0x17, 0x19
/* 8038B174 003880D4  28 1F 00 00 */	cmplwi r31, 0
/* 8038B178 003880D8  B0 03 00 04 */	sth r0, 4(r3)
/* 8038B17C 003880DC  41 82 00 18 */	beq lbl_8038B194
/* 8038B180 003880E0  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8038B184 003880E4  28 00 00 00 */	cmplwi r0, 0
/* 8038B188 003880E8  41 82 00 0C */	beq lbl_8038B194
/* 8038B18C 003880EC  38 00 00 00 */	li r0, 0
/* 8038B190 003880F0  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_8038B194:
/* 8038B194 003880F4  28 1F 00 00 */	cmplwi r31, 0
/* 8038B198 003880F8  40 82 FF A0 */	bne lbl_8038B138
/* 8038B19C 003880FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038B1A0 00388100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038B1A4 00388104  7C 08 03 A6 */	mtlr r0
/* 8038B1A8 00388108  38 21 00 10 */	addi r1, r1, 0x10
/* 8038B1AC 0038810C  4E 80 00 20 */	blr

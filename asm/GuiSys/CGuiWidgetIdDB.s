.include "macros.inc"

.section .text, "ax"

.global "FindWidgetID__14CGuiWidgetIdDBCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"FindWidgetID__14CGuiWidgetIdDBCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802CAF74 002C7ED4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CAF78 002C7ED8  7C 08 02 A6 */	mflr r0
/* 802CAF7C 002C7EDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CAF80 002C7EE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CAF84 002C7EE4  3B E0 00 00 */	li r31, 0
/* 802CAF88 002C7EE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802CAF8C 002C7EEC  3B C0 00 00 */	li r30, 0
/* 802CAF90 002C7EF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802CAF94 002C7EF4  7C 9D 23 78 */	mr r29, r4
/* 802CAF98 002C7EF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802CAF9C 002C7EFC  7C 7C 1B 78 */	mr r28, r3
/* 802CAFA0 002C7F00  48 00 00 2C */	b lbl_802CAFCC
lbl_802CAFA4:
/* 802CAFA4 002C7F04  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802CAFA8 002C7F08  7F A4 EB 78 */	mr r4, r29
/* 802CAFAC 002C7F0C  7C 60 FA 14 */	add r3, r0, r31
/* 802CAFB0 002C7F10  4B D8 76 31 */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 802CAFB4 002C7F14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802CAFB8 002C7F18  41 82 00 0C */	beq lbl_802CAFC4
/* 802CAFBC 002C7F1C  7F C3 07 34 */	extsh r3, r30
/* 802CAFC0 002C7F20  48 00 00 1C */	b lbl_802CAFDC
lbl_802CAFC4:
/* 802CAFC4 002C7F24  3B FF 00 10 */	addi r31, r31, 0x10
/* 802CAFC8 002C7F28  3B DE 00 01 */	addi r30, r30, 1
lbl_802CAFCC:
/* 802CAFCC 002C7F2C  80 1C 00 04 */	lwz r0, 4(r28)
/* 802CAFD0 002C7F30  7C 1E 00 00 */	cmpw r30, r0
/* 802CAFD4 002C7F34  41 80 FF D0 */	blt lbl_802CAFA4
/* 802CAFD8 002C7F38  A8 62 C4 12 */	lha r3, lbl_805AE132@sda21(r2)
lbl_802CAFDC:
/* 802CAFDC 002C7F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CAFE0 002C7F40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CAFE4 002C7F44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802CAFE8 002C7F48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802CAFEC 002C7F4C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802CAFF0 002C7F50  7C 08 03 A6 */	mtlr r0
/* 802CAFF4 002C7F54  38 21 00 20 */	addi r1, r1, 0x20
/* 802CAFF8 002C7F58  4E 80 00 20 */	blr

.global "AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802CAFFC 002C7F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB000 002C7F60  7C 08 02 A6 */	mflr r0
/* 802CB004 002C7F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB008 002C7F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CB00C 002C7F6C  7C 9F 23 78 */	mr r31, r4
/* 802CB010 002C7F70  93 C1 00 08 */	stw r30, 8(r1)
/* 802CB014 002C7F74  7C 7E 1B 78 */	mr r30, r3
/* 802CB018 002C7F78  4B FF FF 5D */	bl "FindWidgetID__14CGuiWidgetIdDBCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802CB01C 002C7F7C  A8 02 C4 12 */	lha r0, lbl_805AE132@sda21(r2)
/* 802CB020 002C7F80  7C 64 07 34 */	extsh r4, r3
/* 802CB024 002C7F84  7C 04 00 00 */	cmpw r4, r0
/* 802CB028 002C7F88  40 82 00 60 */	bne lbl_802CB088
/* 802CB02C 002C7F8C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CB030 002C7F90  80 BE 00 08 */	lwz r5, 8(r30)
/* 802CB034 002C7F94  7C 00 28 00 */	cmpw r0, r5
/* 802CB038 002C7F98  41 80 00 1C */	blt lbl_802CB054
/* 802CB03C 002C7F9C  2C 05 00 00 */	cmpwi r5, 0
/* 802CB040 002C7FA0  7F C3 F3 78 */	mr r3, r30
/* 802CB044 002C7FA4  38 80 00 04 */	li r4, 4
/* 802CB048 002C7FA8  41 82 00 08 */	beq lbl_802CB050
/* 802CB04C 002C7FAC  54 A4 08 3C */	slwi r4, r5, 1
lbl_802CB050:
/* 802CB050 002C7FB0  4B D8 EB 65 */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
lbl_802CB054:
/* 802CB054 002C7FB4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802CB058 002C7FB8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802CB05C 002C7FBC  54 00 20 36 */	slwi r0, r0, 4
/* 802CB060 002C7FC0  7C 63 02 15 */	add. r3, r3, r0
/* 802CB064 002C7FC4  41 82 00 0C */	beq lbl_802CB070
/* 802CB068 002C7FC8  7F E4 FB 78 */	mr r4, r31
/* 802CB06C 002C7FCC  48 07 30 F5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802CB070:
/* 802CB070 002C7FD0  80 7E 00 04 */	lwz r3, 4(r30)
/* 802CB074 002C7FD4  38 03 00 01 */	addi r0, r3, 1
/* 802CB078 002C7FD8  90 1E 00 04 */	stw r0, 4(r30)
/* 802CB07C 002C7FDC  80 7E 00 04 */	lwz r3, 4(r30)
/* 802CB080 002C7FE0  38 03 FF FF */	addi r0, r3, -1
/* 802CB084 002C7FE4  7C 03 07 34 */	extsh r3, r0
lbl_802CB088:
/* 802CB088 002C7FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB08C 002C7FEC  7C 63 07 34 */	extsh r3, r3
/* 802CB090 002C7FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CB094 002C7FF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CB098 002C7FF8  7C 08 03 A6 */	mtlr r0
/* 802CB09C 002C7FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB0A0 002C8000  4E 80 00 20 */	blr

.global sub_802cb0a4
sub_802cb0a4:
/* 802CB0A4 002C8004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CB0A8 002C8008  7C 08 02 A6 */	mflr r0
/* 802CB0AC 002C800C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB0B0 002C8010  80 03 00 04 */	lwz r0, 4(r3)
/* 802CB0B4 002C8014  7C 84 02 14 */	add r4, r4, r0
/* 802CB0B8 002C8018  4B D8 EA FD */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
/* 802CB0BC 002C801C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CB0C0 002C8020  7C 08 03 A6 */	mtlr r0
/* 802CB0C4 002C8024  38 21 00 10 */	addi r1, r1, 0x10
/* 802CB0C8 002C8028  4E 80 00 20 */	blr

.global __ct__14CGuiWidgetIdDBFv
__ct__14CGuiWidgetIdDBFv:
/* 802CB0CC 002C802C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802CB0D0 002C8030  7C 08 02 A6 */	mflr r0
/* 802CB0D4 002C8034  38 80 00 04 */	li r4, 4
/* 802CB0D8 002C8038  90 01 00 54 */	stw r0, 0x54(r1)
/* 802CB0DC 002C803C  38 00 00 00 */	li r0, 0
/* 802CB0E0 002C8040  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802CB0E4 002C8044  7C 7F 1B 78 */	mr r31, r3
/* 802CB0E8 002C8048  90 03 00 04 */	stw r0, 4(r3)
/* 802CB0EC 002C804C  90 03 00 08 */	stw r0, 8(r3)
/* 802CB0F0 002C8050  90 03 00 0C */	stw r0, 0xc(r3)
/* 802CB0F4 002C8054  4B D8 EA C1 */	bl "reserve__Q24rstl110vector<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl17rmemory_allocator>Fi"
/* 802CB0F8 002C8058  3C 80 80 3D */	lis r4, lbl_803D6948@ha
/* 802CB0FC 002C805C  38 61 00 38 */	addi r3, r1, 0x38
/* 802CB100 002C8060  38 84 69 48 */	addi r4, r4, lbl_803D6948@l
/* 802CB104 002C8064  38 84 00 0A */	addi r4, r4, 0xa
/* 802CB108 002C8068  4B D3 9B B1 */	bl string_l__4rstlFPCc
/* 802CB10C 002C806C  7F E3 FB 78 */	mr r3, r31
/* 802CB110 002C8070  38 81 00 38 */	addi r4, r1, 0x38
/* 802CB114 002C8074  4B FF FE E9 */	bl "AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802CB118 002C8078  38 61 00 38 */	addi r3, r1, 0x38
/* 802CB11C 002C807C  48 07 29 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802CB120 002C8080  3C 80 80 3D */	lis r4, lbl_803D6948@ha
/* 802CB124 002C8084  38 61 00 28 */	addi r3, r1, 0x28
/* 802CB128 002C8088  38 84 69 48 */	addi r4, r4, lbl_803D6948@l
/* 802CB12C 002C808C  38 84 00 1E */	addi r4, r4, 0x1e
/* 802CB130 002C8090  4B D3 9B 89 */	bl string_l__4rstlFPCc
/* 802CB134 002C8094  7F E3 FB 78 */	mr r3, r31
/* 802CB138 002C8098  38 81 00 28 */	addi r4, r1, 0x28
/* 802CB13C 002C809C  4B FF FE C1 */	bl "AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802CB140 002C80A0  38 61 00 28 */	addi r3, r1, 0x28
/* 802CB144 002C80A4  48 07 29 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802CB148 002C80A8  3C 80 80 3D */	lis r4, lbl_803D6948@ha
/* 802CB14C 002C80AC  38 61 00 18 */	addi r3, r1, 0x18
/* 802CB150 002C80B0  38 84 69 48 */	addi r4, r4, lbl_803D6948@l
/* 802CB154 002C80B4  38 84 00 31 */	addi r4, r4, 0x31
/* 802CB158 002C80B8  4B D3 9B 61 */	bl string_l__4rstlFPCc
/* 802CB15C 002C80BC  7F E3 FB 78 */	mr r3, r31
/* 802CB160 002C80C0  38 81 00 18 */	addi r4, r1, 0x18
/* 802CB164 002C80C4  4B FF FE 99 */	bl "AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802CB168 002C80C8  38 61 00 18 */	addi r3, r1, 0x18
/* 802CB16C 002C80CC  48 07 29 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802CB170 002C80D0  3C 80 80 3D */	lis r4, lbl_803D6948@ha
/* 802CB174 002C80D4  38 61 00 08 */	addi r3, r1, 8
/* 802CB178 002C80D8  38 84 69 48 */	addi r4, r4, lbl_803D6948@l
/* 802CB17C 002C80DC  38 84 00 47 */	addi r4, r4, 0x47
/* 802CB180 002C80E0  4B D3 9B 39 */	bl string_l__4rstlFPCc
/* 802CB184 002C80E4  7F E3 FB 78 */	mr r3, r31
/* 802CB188 002C80E8  38 81 00 08 */	addi r4, r1, 8
/* 802CB18C 002C80EC  4B FF FE 71 */	bl "AddWidget__14CGuiWidgetIdDBFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802CB190 002C80F0  38 61 00 08 */	addi r3, r1, 8
/* 802CB194 002C80F4  48 07 29 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802CB198 002C80F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802CB19C 002C80FC  7F E3 FB 78 */	mr r3, r31
/* 802CB1A0 002C8100  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802CB1A4 002C8104  7C 08 03 A6 */	mtlr r0
/* 802CB1A8 002C8108  38 21 00 50 */	addi r1, r1, 0x50
/* 802CB1AC 002C810C  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805AE130
lbl_805AE130:
	# ROM: 0x3FA9D0
	.2byte 0x00000000

.global lbl_805AE132
lbl_805AE132:
	# ROM: 0x3FA9D2
	.byte 0xFF, 0xFF
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D6948
lbl_803D6948:
	# ROM: 0x3D3948
	.asciz "not found"
	.byte 0x6B, 0x47
	.asciz "SYS_DummyWidgetID"
	.byte 0x6B, 0x47
	.asciz "SYS_HeadWidgetID"
	.byte 0x6B, 0x47, 0x53
	.asciz "YS_DefaultCameraID"
	.byte 0x6B
	.asciz "GSYS_DefaultLightID"
	.asciz "??(??)"
	.balign 4
	.4byte 0


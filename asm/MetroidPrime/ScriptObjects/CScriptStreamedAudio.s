.include "macros.inc"

.section .data
.balign 8

.global __vt__20CScriptStreamedMusic
__vt__20CScriptStreamedMusic:
	# ROM: 0x3E4068
	.4byte 0
	.4byte 0
	.4byte __dt__20CScriptStreamedMusicFv
	.4byte Accept__20CScriptStreamedMusicFR8IVisitor
	.4byte PreThink__7CEntityFfR13CStateManager
	.4byte Think__7CEntityFfR13CStateManager
	.4byte AcceptScriptMsg__20CScriptStreamedMusicF20EScriptObjectMessage9TUniqueIdR13CStateManager
	.4byte SetActive__7CEntityFUc

.global lbl_803E7088
lbl_803E7088:
	# ROM: 0x3E4088
	.4byte lbl_8020C5D0
	.4byte lbl_8020C62C
	.4byte lbl_8020C654
	.4byte lbl_8020C600
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C5B4
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C654
	.4byte lbl_8020C598
	.4byte 0

.section .text, "ax"

.global __dt__20CScriptStreamedMusicFv
__dt__20CScriptStreamedMusicFv:
/* 8020BE1C 00208D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BE20 00208D80  7C 08 02 A6 */	mflr r0
/* 8020BE24 00208D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BE28 00208D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BE2C 00208D8C  7C 9F 23 78 */	mr r31, r4
/* 8020BE30 00208D90  93 C1 00 08 */	stw r30, 8(r1)
/* 8020BE34 00208D94  7C 7E 1B 79 */	or. r30, r3, r3
/* 8020BE38 00208D98  41 82 00 3C */	beq lbl_8020BE74
/* 8020BE3C 00208D9C  3C 60 80 3E */	lis r3, __vt__20CScriptStreamedMusic@ha
/* 8020BE40 00208DA0  34 1E 00 34 */	addic. r0, r30, 0x34
/* 8020BE44 00208DA4  38 03 70 68 */	addi r0, r3, __vt__20CScriptStreamedMusic@l
/* 8020BE48 00208DA8  90 1E 00 00 */	stw r0, 0(r30)
/* 8020BE4C 00208DAC  41 82 00 0C */	beq lbl_8020BE58
/* 8020BE50 00208DB0  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020BE54 00208DB4  48 13 1C 8D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8020BE58:
/* 8020BE58 00208DB8  7F C3 F3 78 */	mr r3, r30
/* 8020BE5C 00208DBC  38 80 00 00 */	li r4, 0
/* 8020BE60 00208DC0  4B E4 54 15 */	bl __dt__7CEntityFv
/* 8020BE64 00208DC4  7F E0 07 35 */	extsh. r0, r31
/* 8020BE68 00208DC8  40 81 00 0C */	ble lbl_8020BE74
/* 8020BE6C 00208DCC  7F C3 F3 78 */	mr r3, r30
/* 8020BE70 00208DD0  48 10 9A C1 */	bl Free__7CMemoryFPCv
lbl_8020BE74:
/* 8020BE74 00208DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BE78 00208DD8  7F C3 F3 78 */	mr r3, r30
/* 8020BE7C 00208DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BE80 00208DE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020BE84 00208DE4  7C 08 03 A6 */	mtlr r0
/* 8020BE88 00208DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BE8C 00208DEC  4E 80 00 20 */	blr

.global sub_8020be90
sub_8020be90:
/* 8020BE90 00208DF0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8020BE94 00208DF4  7C 08 02 A6 */	mflr r0
/* 8020BE98 00208DF8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8020BE9C 00208DFC  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 8020BEA0 00208E00  7C 7F 1B 78 */	mr r31, r3
/* 8020BEA4 00208E04  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 8020BEA8 00208E08  88 03 00 45 */	lbz r0, 0x45(r3)
/* 8020BEAC 00208E0C  28 00 00 00 */	cmplwi r0, 0
/* 8020BEB0 00208E10  41 82 01 CC */	beq lbl_8020C07C
/* 8020BEB4 00208E14  38 7F 00 34 */	addi r3, r31, 0x34
/* 8020BEB8 00208E18  38 80 00 7C */	li r4, 0x7c
/* 8020BEBC 00208E1C  38 A0 00 00 */	li r5, 0
/* 8020BEC0 00208E20  48 00 02 95 */	bl sub_8020c154
/* 8020BEC4 00208E24  2C 03 FF FF */	cmpwi r3, -1
/* 8020BEC8 00208E28  40 82 01 B4 */	bne lbl_8020C07C
/* 8020BECC 00208E2C  80 7F 00 3C */	lwz r3, 0x3c(r31)
/* 8020BED0 00208E30  2C 03 00 05 */	cmpwi r3, 5
/* 8020BED4 00208E34  41 80 01 A8 */	blt lbl_8020C07C
/* 8020BED8 00208E38  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8020BEDC 00208E3C  38 83 FF FB */	addi r4, r3, -5
/* 8020BEE0 00208E40  38 61 00 98 */	addi r3, r1, 0x98
/* 8020BEE4 00208E44  7C 80 22 14 */	add r4, r0, r4
/* 8020BEE8 00208E48  4B DF 8D D1 */	bl string_l__4rstlFPCc
/* 8020BEEC 00208E4C  3C 80 80 3D */	lis r4, lbl_803D2778@ha
/* 8020BEF0 00208E50  38 61 00 88 */	addi r3, r1, 0x88
/* 8020BEF4 00208E54  38 84 27 78 */	addi r4, r4, lbl_803D2778@l
/* 8020BEF8 00208E58  4B DF 8D C1 */	bl string_l__4rstlFPCc
/* 8020BEFC 00208E5C  38 61 00 98 */	addi r3, r1, 0x98
/* 8020BF00 00208E60  38 81 00 88 */	addi r4, r1, 0x88
/* 8020BF04 00208E64  48 13 2A E9 */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020BF08 00208E68  7C 7E 1B 78 */	mr r30, r3
/* 8020BF0C 00208E6C  38 61 00 88 */	addi r3, r1, 0x88
/* 8020BF10 00208E70  48 13 1B D1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020BF14 00208E74  38 61 00 98 */	addi r3, r1, 0x98
/* 8020BF18 00208E78  48 13 1B C9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020BF1C 00208E7C  2C 1E 00 00 */	cmpwi r30, 0
/* 8020BF20 00208E80  40 82 01 5C */	bne lbl_8020C07C
/* 8020BF24 00208E84  80 FF 00 3C */	lwz r7, 0x3c(r31)
/* 8020BF28 00208E88  38 DF 00 34 */	addi r6, r31, 0x34
/* 8020BF2C 00208E8C  38 00 00 00 */	li r0, 0
/* 8020BF30 00208E90  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8020BF34 00208E94  38 A7 FF FB */	addi r5, r7, -5
/* 8020BF38 00208E98  38 61 00 10 */	addi r3, r1, 0x10
/* 8020BF3C 00208E9C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8020BF40 00208EA0  38 81 00 18 */	addi r4, r1, 0x18
/* 8020BF44 00208EA4  90 E1 00 24 */	stw r7, 0x24(r1)
/* 8020BF48 00208EA8  90 C1 00 08 */	stw r6, 8(r1)
/* 8020BF4C 00208EAC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8020BF50 00208EB0  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8020BF54 00208EB4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8020BF58 00208EB8  90 C1 00 30 */	stw r6, 0x30(r1)
/* 8020BF5C 00208EBC  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8020BF60 00208EC0  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8020BF64 00208EC4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8020BF68 00208EC8  90 C1 00 40 */	stw r6, 0x40(r1)
/* 8020BF6C 00208ECC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020BF70 00208ED0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8020BF74 00208ED4  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8020BF78 00208ED8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8020BF7C 00208EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BF80 00208EE0  48 00 08 71 */	bl sub_8020c7f0
/* 8020BF84 00208EE4  7C 7E 1B 78 */	mr r30, r3
/* 8020BF88 00208EE8  38 61 00 78 */	addi r3, r1, 0x78
/* 8020BF8C 00208EEC  38 9E 00 01 */	addi r4, r30, 1
/* 8020BF90 00208EF0  48 13 1B 99 */	bl "internal_allocate__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fi"
/* 8020BF94 00208EF4  81 01 00 44 */	lwz r8, 0x44(r1)
/* 8020BF98 00208EF8  38 E0 00 00 */	li r7, 0
/* 8020BF9C 00208EFC  81 21 00 34 */	lwz r9, 0x34(r1)
/* 8020BFA0 00208F00  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 8020BFA4 00208F04  80 61 00 30 */	lwz r3, 0x30(r1)
/* 8020BFA8 00208F08  48 00 00 1C */	b lbl_8020BFC4
lbl_8020BFAC:
/* 8020BFAC 00208F0C  80 85 00 00 */	lwz r4, 0(r5)
/* 8020BFB0 00208F10  80 C1 00 78 */	lwz r6, 0x78(r1)
/* 8020BFB4 00208F14  7C 04 40 AE */	lbzx r0, r4, r8
/* 8020BFB8 00208F18  39 08 00 01 */	addi r8, r8, 1
/* 8020BFBC 00208F1C  7C 06 39 AE */	stbx r0, r6, r7
/* 8020BFC0 00208F20  38 E7 00 01 */	addi r7, r7, 1
lbl_8020BFC4:
/* 8020BFC4 00208F24  7C 05 18 40 */	cmplw r5, r3
/* 8020BFC8 00208F28  38 00 00 00 */	li r0, 0
/* 8020BFCC 00208F2C  40 82 00 0C */	bne lbl_8020BFD8
/* 8020BFD0 00208F30  7C 08 48 00 */	cmpw r8, r9
/* 8020BFD4 00208F34  41 82 00 08 */	beq lbl_8020BFDC
lbl_8020BFD8:
/* 8020BFD8 00208F38  38 00 00 01 */	li r0, 1
lbl_8020BFDC:
/* 8020BFDC 00208F3C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020BFE0 00208F40  40 82 FF CC */	bne lbl_8020BFAC
/* 8020BFE4 00208F44  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 8020BFE8 00208F48  38 00 00 00 */	li r0, 0
/* 8020BFEC 00208F4C  3C 80 80 3D */	lis r4, lbl_803D2778@ha
/* 8020BFF0 00208F50  38 61 00 68 */	addi r3, r1, 0x68
/* 8020BFF4 00208F54  7C 05 39 AE */	stbx r0, r5, r7
/* 8020BFF8 00208F58  38 A4 27 78 */	addi r5, r4, lbl_803D2778@l
/* 8020BFFC 00208F5C  38 81 00 78 */	addi r4, r1, 0x78
/* 8020C000 00208F60  93 C1 00 80 */	stw r30, 0x80(r1)
/* 8020C004 00208F64  38 A5 00 06 */	addi r5, r5, 6
/* 8020C008 00208F68  48 00 00 ED */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PCc"
/* 8020C00C 00208F6C  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8020C010 00208F70  38 81 00 68 */	addi r4, r1, 0x68
/* 8020C014 00208F74  48 13 21 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C018 00208F78  38 61 00 68 */	addi r3, r1, 0x68
/* 8020C01C 00208F7C  48 13 1A C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C020 00208F80  38 61 00 78 */	addi r3, r1, 0x78
/* 8020C024 00208F84  48 13 1A BD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C028 00208F88  80 61 00 A8 */	lwz r3, 0xa8(r1)
/* 8020C02C 00208F8C  48 14 39 21 */	bl FileExists__8CDvdFileFPCc
/* 8020C030 00208F90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020C034 00208F94  41 82 00 40 */	beq lbl_8020C074
/* 8020C038 00208F98  38 61 00 58 */	addi r3, r1, 0x58
/* 8020C03C 00208F9C  38 9F 00 34 */	addi r4, r31, 0x34
/* 8020C040 00208FA0  38 A0 00 7C */	li r5, 0x7c
/* 8020C044 00208FA4  48 00 00 51 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>c"
/* 8020C048 00208FA8  38 61 00 48 */	addi r3, r1, 0x48
/* 8020C04C 00208FAC  38 81 00 58 */	addi r4, r1, 0x58
/* 8020C050 00208FB0  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8020C054 00208FB4  4B DF 8C 09 */	bl "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C058 00208FB8  38 7F 00 34 */	addi r3, r31, 0x34
/* 8020C05C 00208FBC  38 81 00 48 */	addi r4, r1, 0x48
/* 8020C060 00208FC0  48 13 1C FD */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C064 00208FC4  38 61 00 48 */	addi r3, r1, 0x48
/* 8020C068 00208FC8  48 13 1A 79 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C06C 00208FCC  38 61 00 58 */	addi r3, r1, 0x58
/* 8020C070 00208FD0  48 13 1A 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8020C074:
/* 8020C074 00208FD4  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8020C078 00208FD8  48 13 1A 69 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8020C07C:
/* 8020C07C 00208FDC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8020C080 00208FE0  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 8020C084 00208FE4  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 8020C088 00208FE8  7C 08 03 A6 */	mtlr r0
/* 8020C08C 00208FEC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8020C090 00208FF0  4E 80 00 20 */	blr

.global "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>c"
"__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>c":
/* 8020C094 00208FF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C098 00208FF8  7C 08 02 A6 */	mflr r0
/* 8020C09C 00208FFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C0A0 00209000  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020C0A4 00209004  7C BF 2B 78 */	mr r31, r5
/* 8020C0A8 00209008  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020C0AC 0020900C  7C 7E 1B 78 */	mr r30, r3
/* 8020C0B0 00209010  38 61 00 08 */	addi r3, r1, 8
/* 8020C0B4 00209014  48 13 20 AD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C0B8 00209018  7F E5 FB 78 */	mr r5, r31
/* 8020C0BC 0020901C  38 61 00 08 */	addi r3, r1, 8
/* 8020C0C0 00209020  38 80 00 01 */	li r4, 1
/* 8020C0C4 00209024  48 13 1D 25 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fic"
/* 8020C0C8 00209028  7F C3 F3 78 */	mr r3, r30
/* 8020C0CC 0020902C  38 81 00 08 */	addi r4, r1, 8
/* 8020C0D0 00209030  48 13 20 91 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C0D4 00209034  38 61 00 08 */	addi r3, r1, 8
/* 8020C0D8 00209038  48 13 1A 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C0DC 0020903C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C0E0 00209040  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020C0E4 00209044  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020C0E8 00209048  7C 08 03 A6 */	mtlr r0
/* 8020C0EC 0020904C  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C0F0 00209050  4E 80 00 20 */	blr

.global "__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PCc"
"__pl__4rstlFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>PCc":
/* 8020C0F4 00209054  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C0F8 00209058  7C 08 02 A6 */	mflr r0
/* 8020C0FC 0020905C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C100 00209060  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020C104 00209064  7C BF 2B 78 */	mr r31, r5
/* 8020C108 00209068  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020C10C 0020906C  7C 7E 1B 78 */	mr r30, r3
/* 8020C110 00209070  38 61 00 08 */	addi r3, r1, 8
/* 8020C114 00209074  48 13 20 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C118 00209078  7F E4 FB 78 */	mr r4, r31
/* 8020C11C 0020907C  38 61 00 08 */	addi r3, r1, 8
/* 8020C120 00209080  38 A0 FF FF */	li r5, -1
/* 8020C124 00209084  48 13 1D C1 */	bl "append__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FPCci"
/* 8020C128 00209088  7F C3 F3 78 */	mr r3, r30
/* 8020C12C 0020908C  38 81 00 08 */	addi r4, r1, 8
/* 8020C130 00209090  48 13 20 31 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C134 00209094  38 61 00 08 */	addi r3, r1, 8
/* 8020C138 00209098  48 13 19 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C13C 0020909C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C140 002090A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020C144 002090A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020C148 002090A8  7C 08 03 A6 */	mtlr r0
/* 8020C14C 002090AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C150 002090B0  4E 80 00 20 */	blr

.global sub_8020c154
sub_8020c154:
/* 8020C154 002090B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8020C158 002090B8  2C 05 FF FF */	cmpwi r5, -1
/* 8020C15C 002090BC  98 81 00 08 */	stb r4, 8(r1)
/* 8020C160 002090C0  41 82 00 10 */	beq lbl_8020C170
/* 8020C164 002090C4  80 03 00 08 */	lwz r0, 8(r3)
/* 8020C168 002090C8  7C 05 00 00 */	cmpw r5, r0
/* 8020C16C 002090CC  41 80 00 08 */	blt lbl_8020C174
lbl_8020C170:
/* 8020C170 002090D0  80 A3 00 08 */	lwz r5, 8(r3)
lbl_8020C174:
/* 8020C174 002090D4  80 C3 00 08 */	lwz r6, 8(r3)
/* 8020C178 002090D8  38 E1 00 08 */	addi r7, r1, 8
/* 8020C17C 002090DC  39 41 00 09 */	addi r10, r1, 9
/* 8020C180 002090E0  39 00 00 00 */	li r8, 0
/* 8020C184 002090E4  7C 07 50 40 */	cmplw r7, r10
/* 8020C188 002090E8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8020C18C 002090EC  91 01 00 20 */	stw r8, 0x20(r1)
/* 8020C190 002090F0  90 61 00 24 */	stw r3, 0x24(r1)
/* 8020C194 002090F4  90 A1 00 28 */	stw r5, 0x28(r1)
/* 8020C198 002090F8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 8020C19C 002090FC  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8020C1A0 00209100  90 61 00 0C */	stw r3, 0xc(r1)
/* 8020C1A4 00209104  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8020C1A8 00209108  90 61 00 14 */	stw r3, 0x14(r1)
/* 8020C1AC 0020910C  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8020C1B0 00209110  40 82 00 08 */	bne lbl_8020C1B8
/* 8020C1B4 00209114  48 00 00 78 */	b lbl_8020C22C
lbl_8020C1B8:
/* 8020C1B8 00209118  7C A9 2B 78 */	mr r9, r5
/* 8020C1BC 0020911C  48 00 00 4C */	b lbl_8020C208
lbl_8020C1C0:
/* 8020C1C0 00209120  80 83 00 00 */	lwz r4, 0(r3)
/* 8020C1C4 00209124  88 07 00 00 */	lbz r0, 0(r7)
/* 8020C1C8 00209128  7C 84 48 AE */	lbzx r4, r4, r9
/* 8020C1CC 0020912C  7C 00 07 74 */	extsb r0, r0
/* 8020C1D0 00209130  7C 84 07 74 */	extsb r4, r4
/* 8020C1D4 00209134  7C 04 00 00 */	cmpw r4, r0
/* 8020C1D8 00209138  40 82 00 24 */	bne lbl_8020C1FC
/* 8020C1DC 0020913C  38 E7 00 01 */	addi r7, r7, 1
/* 8020C1E0 00209140  39 08 00 01 */	addi r8, r8, 1
/* 8020C1E4 00209144  7C 07 50 40 */	cmplw r7, r10
/* 8020C1E8 00209148  40 82 00 1C */	bne lbl_8020C204
/* 8020C1EC 0020914C  7C 05 48 50 */	subf r0, r5, r9
/* 8020C1F0 00209150  7C 68 00 50 */	subf r3, r8, r0
/* 8020C1F4 00209154  39 03 00 01 */	addi r8, r3, 1
/* 8020C1F8 00209158  48 00 00 34 */	b lbl_8020C22C
lbl_8020C1FC:
/* 8020C1FC 0020915C  38 E1 00 08 */	addi r7, r1, 8
/* 8020C200 00209160  39 00 00 00 */	li r8, 0
lbl_8020C204:
/* 8020C204 00209164  39 29 00 01 */	addi r9, r9, 1
lbl_8020C208:
/* 8020C208 00209168  7C 03 18 40 */	cmplw r3, r3
/* 8020C20C 0020916C  38 00 00 00 */	li r0, 0
/* 8020C210 00209170  40 82 00 0C */	bne lbl_8020C21C
/* 8020C214 00209174  7C 09 30 00 */	cmpw r9, r6
/* 8020C218 00209178  41 82 00 08 */	beq lbl_8020C220
lbl_8020C21C:
/* 8020C21C 0020917C  38 00 00 01 */	li r0, 1
lbl_8020C220:
/* 8020C220 00209180  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020C224 00209184  40 82 FF 9C */	bne lbl_8020C1C0
/* 8020C228 00209188  39 00 FF FF */	li r8, -1
lbl_8020C22C:
/* 8020C22C 0020918C  2C 08 FF FF */	cmpwi r8, -1
/* 8020C230 00209190  7C 68 2A 14 */	add r3, r8, r5
/* 8020C234 00209194  40 82 00 08 */	bne lbl_8020C23C
/* 8020C238 00209198  7D 03 43 78 */	mr r3, r8
lbl_8020C23C:
/* 8020C23C 0020919C  38 21 00 40 */	addi r1, r1, 0x40
/* 8020C240 002091A0  4E 80 00 20 */	blr

.global TweakOverride__20CScriptStreamedMusicFR13CStateManager
TweakOverride__20CScriptStreamedMusicFR13CStateManager:
/* 8020C244 002091A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8020C248 002091A8  7C 08 02 A6 */	mflr r0
/* 8020C24C 002091AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8020C250 002091B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8020C254 002091B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 8020C258 002091B8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8020C25C 002091BC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, qr0
/* 8020C260 002091C0  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8020C264 002091C4  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8020C268 002091C8  7C 7E 1B 78 */	mr r30, r3
/* 8020C26C 002091CC  80 84 08 50 */	lwz r4, 0x850(r4)
/* 8020C270 002091D0  80 E3 00 04 */	lwz r7, 4(r3)
/* 8020C274 002091D4  38 61 00 14 */	addi r3, r1, 0x14
/* 8020C278 002091D8  80 C4 00 20 */	lwz r6, 0x20(r4)
/* 8020C27C 002091DC  38 BE 00 10 */	addi r5, r30, 0x10
/* 8020C280 002091E0  54 E4 18 38 */	slwi r4, r7, 3
/* 8020C284 002091E4  90 E1 00 0C */	stw r7, 0xc(r1)
/* 8020C288 002091E8  38 04 00 04 */	addi r0, r4, 4
/* 8020C28C 002091EC  7C 86 00 2E */	lwzx r4, r6, r0
/* 8020C290 002091F0  90 E1 00 10 */	stw r7, 0x10(r1)
/* 8020C294 002091F4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8020C298 002091F8  48 01 08 A1 */	bl sub_8021cb38__19CInGameTweakManagerFv
/* 8020C29C 002091FC  38 61 00 34 */	addi r3, r1, 0x34
/* 8020C2A0 00209200  38 81 00 14 */	addi r4, r1, 0x14
/* 8020C2A4 00209204  48 13 1E BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C2A8 00209208  38 61 00 14 */	addi r3, r1, 0x14
/* 8020C2AC 0020920C  48 13 18 35 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C2B0 00209210  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020C2B4 00209214  38 81 00 34 */	addi r4, r1, 0x34
/* 8020C2B8 00209218  48 01 0D 39 */	bl "HasTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C2BC 0020921C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020C2C0 00209220  41 82 00 7C */	beq lbl_8020C33C
/* 8020C2C4 00209224  80 6D A0 88 */	lwz r3, gpTweakManager@sda21(r13)
/* 8020C2C8 00209228  38 81 00 34 */	addi r4, r1, 0x34
/* 8020C2CC 0020922C  48 01 09 D9 */	bl "GetTweakValue__19CInGameTweakManagerCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C2D0 00209230  7C 7F 1B 78 */	mr r31, r3
/* 8020C2D4 00209234  38 61 00 24 */	addi r3, r1, 0x24
/* 8020C2D8 00209238  38 9F 00 30 */	addi r4, r31, 0x30
/* 8020C2DC 0020923C  48 13 1E 85 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C2E0 00209240  C0 22 B1 B8 */	lfs f1, lbl_805ACED8@sda21(r2)
/* 8020C2E4 00209244  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8020C2E8 00209248  C3 DF 00 24 */	lfs f30, 0x24(r31)
/* 8020C2EC 0020924C  EF E1 00 32 */	fmuls f31, f1, f0
/* 8020C2F0 00209250  F3 E1 C0 08 */	psq_st f31, 8(r1), 1, qr4
/* 8020C2F4 00209254  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020C2F8 00209258  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 8020C2FC 0020925C  38 81 00 24 */	addi r4, r1, 0x24
/* 8020C300 00209260  8B E1 00 08 */	lbz r31, 8(r1)
/* 8020C304 00209264  48 13 1A 59 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C308 00209268  38 7E 00 34 */	addi r3, r30, 0x34
/* 8020C30C 0020926C  48 00 03 65 */	bl "IsDSPFile__20CScriptStreamedMusicFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C310 00209270  98 7E 00 45 */	stb r3, 0x45(r30)
/* 8020C314 00209274  7F E0 07 74 */	extsb r0, r31
/* 8020C318 00209278  7F C3 F3 78 */	mr r3, r30
/* 8020C31C 0020927C  D3 DE 00 48 */	stfs f30, 0x48(r30)
/* 8020C320 00209280  90 1E 00 50 */	stw r0, 0x50(r30)
/* 8020C324 00209284  D3 FE 00 4C */	stfs f31, 0x4c(r30)
/* 8020C328 00209288  48 00 03 FD */	bl nullsub_42
/* 8020C32C 0020928C  7F C3 F3 78 */	mr r3, r30
/* 8020C330 00209290  4B FF FB 61 */	bl sub_8020be90
/* 8020C334 00209294  38 61 00 24 */	addi r3, r1, 0x24
/* 8020C338 00209298  48 13 17 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8020C33C:
/* 8020C33C 0020929C  38 61 00 34 */	addi r3, r1, 0x34
/* 8020C340 002092A0  48 13 17 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C344 002092A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 8020C348 002092A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8020C34C 002092AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, qr0
/* 8020C350 002092B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8020C354 002092B4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8020C358 002092B8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8020C35C 002092BC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8020C360 002092C0  7C 08 03 A6 */	mtlr r0
/* 8020C364 002092C4  38 21 00 70 */	addi r1, r1, 0x70
/* 8020C368 002092C8  4E 80 00 20 */	blr

.global StopStream__20CScriptStreamedMusicFR13CStateManager
StopStream__20CScriptStreamedMusicFR13CStateManager:
/* 8020C36C 002092CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C370 002092D0  7C 08 02 A6 */	mflr r0
/* 8020C374 002092D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C378 002092D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C37C 002092DC  7C 7F 1B 78 */	mr r31, r3
/* 8020C380 002092E0  88 63 00 46 */	lbz r3, 0x46(r3)
/* 8020C384 002092E4  48 00 04 5D */	bl IsOneShot__20CScriptStreamedMusicFb
/* 8020C388 002092E8  38 9F 00 34 */	addi r4, r31, 0x34
/* 8020C38C 002092EC  48 15 9C 39 */	bl "Stop__19CStreamAudioManagerFiRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C390 002092F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C394 002092F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C398 002092F8  7C 08 03 A6 */	mtlr r0
/* 8020C39C 002092FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C3A0 00209300  4E 80 00 20 */	blr

.global StartStream__20CScriptStreamedMusicFR13CStateManager
StartStream__20CScriptStreamedMusicFR13CStateManager:
/* 8020C3A4 00209304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C3A8 00209308  7C 08 02 A6 */	mflr r0
/* 8020C3AC 0020930C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C3B0 00209310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C3B4 00209314  7C 7F 1B 78 */	mr r31, r3
/* 8020C3B8 00209318  88 63 00 46 */	lbz r3, 0x46(r3)
/* 8020C3BC 0020931C  48 00 04 25 */	bl IsOneShot__20CScriptStreamedMusicFb
/* 8020C3C0 00209320  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 8020C3C4 00209324  38 9F 00 34 */	addi r4, r31, 0x34
/* 8020C3C8 00209328  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8020C3CC 0020932C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8020C3D0 00209330  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8020C3D4 00209334  88 DF 00 47 */	lbz r6, 0x47(r31)
/* 8020C3D8 00209338  48 15 99 A9 */	bl Start__19CStreamAudioManagerFiRCQ24rstl6stringib
/* 8020C3DC 0020933C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C3E0 00209340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C3E4 00209344  7C 08 03 A6 */	mtlr r0
/* 8020C3E8 00209348  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C3EC 0020934C  4E 80 00 20 */	blr

.global sub_8020c3f0
sub_8020c3f0:
/* 8020C3F0 00209350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C3F4 00209354  7C 08 02 A6 */	mflr r0
/* 8020C3F8 00209358  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C3FC 0020935C  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 8020C400 00209360  48 15 95 0D */	bl sub_8036590c
/* 8020C404 00209364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C408 00209368  7C 08 03 A6 */	mtlr r0
/* 8020C40C 0020936C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C410 00209370  4E 80 00 20 */	blr

.global sub_8020c414
sub_8020c414:
/* 8020C414 00209374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C418 00209378  7C 08 02 A6 */	mflr r0
/* 8020C41C 0020937C  7C 64 1B 78 */	mr r4, r3
/* 8020C420 00209380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C424 00209384  88 03 00 44 */	lbz r0, 0x44(r3)
/* 8020C428 00209388  80 63 00 50 */	lwz r3, 0x50(r3)
/* 8020C42C 0020938C  28 00 00 00 */	cmplwi r0, 0
/* 8020C430 00209390  7C 60 07 74 */	extsb r0, r3
/* 8020C434 00209394  41 82 00 1C */	beq lbl_8020C450
/* 8020C438 00209398  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 8020C43C 0020939C  38 64 00 34 */	addi r3, r4, 0x34
/* 8020C440 002093A0  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 8020C444 002093A4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8020C448 002093A8  48 15 97 71 */	bl "SetDefaultAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc"
/* 8020C44C 002093AC  48 00 00 18 */	b lbl_8020C464
lbl_8020C450:
/* 8020C450 002093B0  C0 24 00 4C */	lfs f1, 0x4c(r4)
/* 8020C454 002093B4  38 64 00 34 */	addi r3, r4, 0x34
/* 8020C458 002093B8  C0 44 00 48 */	lfs f2, 0x48(r4)
/* 8020C45C 002093BC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8020C460 002093C0  48 15 96 0D */	bl "SetCurrentAudio__19CStreamAudioManagerFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>fUc"
lbl_8020C464:
/* 8020C464 002093C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C468 002093C8  7C 08 03 A6 */	mtlr r0
/* 8020C46C 002093CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C470 002093D0  4E 80 00 20 */	blr

.global Stop__20CScriptStreamedMusicFR13CStateManager
Stop__20CScriptStreamedMusicFR13CStateManager:
/* 8020C474 002093D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C478 002093D8  7C 08 02 A6 */	mflr r0
/* 8020C47C 002093DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C480 002093E0  88 03 00 45 */	lbz r0, 0x45(r3)
/* 8020C484 002093E4  28 00 00 00 */	cmplwi r0, 0
/* 8020C488 002093E8  41 82 00 0C */	beq lbl_8020C494
/* 8020C48C 002093EC  4B FF FE E1 */	bl StopStream__20CScriptStreamedMusicFR13CStateManager
/* 8020C490 002093F0  48 00 00 08 */	b lbl_8020C498
lbl_8020C494:
/* 8020C494 002093F4  4B FF FF 5D */	bl sub_8020c3f0
lbl_8020C498:
/* 8020C498 002093F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C49C 002093FC  7C 08 03 A6 */	mtlr r0
/* 8020C4A0 00209400  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C4A4 00209404  4E 80 00 20 */	blr

.global Play__20CScriptStreamedMusicFR13CStateManager
Play__20CScriptStreamedMusicFR13CStateManager:
/* 8020C4A8 00209408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C4AC 0020940C  7C 08 02 A6 */	mflr r0
/* 8020C4B0 00209410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C4B4 00209414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020C4B8 00209418  7C 9F 23 78 */	mr r31, r4
/* 8020C4BC 0020941C  93 C1 00 08 */	stw r30, 8(r1)
/* 8020C4C0 00209420  7C 7E 1B 78 */	mr r30, r3
/* 8020C4C4 00209424  4B FF FD 81 */	bl TweakOverride__20CScriptStreamedMusicFR13CStateManager
/* 8020C4C8 00209428  88 1E 00 45 */	lbz r0, 0x45(r30)
/* 8020C4CC 0020942C  28 00 00 00 */	cmplwi r0, 0
/* 8020C4D0 00209430  41 82 00 14 */	beq lbl_8020C4E4
/* 8020C4D4 00209434  7F C3 F3 78 */	mr r3, r30
/* 8020C4D8 00209438  7F E4 FB 78 */	mr r4, r31
/* 8020C4DC 0020943C  4B FF FE C9 */	bl StartStream__20CScriptStreamedMusicFR13CStateManager
/* 8020C4E0 00209440  48 00 00 10 */	b lbl_8020C4F0
lbl_8020C4E4:
/* 8020C4E4 00209444  7F C3 F3 78 */	mr r3, r30
/* 8020C4E8 00209448  7F E4 FB 78 */	mr r4, r31
/* 8020C4EC 0020944C  4B FF FF 29 */	bl sub_8020c414
lbl_8020C4F0:
/* 8020C4F0 00209450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C4F4 00209454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020C4F8 00209458  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020C4FC 0020945C  7C 08 03 A6 */	mtlr r0
/* 8020C500 00209460  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C504 00209464  4E 80 00 20 */	blr

.global Accept__20CScriptStreamedMusicFR8IVisitor
Accept__20CScriptStreamedMusicFR8IVisitor:
/* 8020C508 00209468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020C50C 0020946C  7C 08 02 A6 */	mflr r0
/* 8020C510 00209470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020C514 00209474  7C 60 1B 78 */	mr r0, r3
/* 8020C518 00209478  7C 83 23 78 */	mr r3, r4
/* 8020C51C 0020947C  81 84 00 00 */	lwz r12, 0(r4)
/* 8020C520 00209480  7C 04 03 78 */	mr r4, r0
/* 8020C524 00209484  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8020C528 00209488  7D 89 03 A6 */	mtctr r12
/* 8020C52C 0020948C  4E 80 04 21 */	bctrl
/* 8020C530 00209490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020C534 00209494  7C 08 03 A6 */	mtlr r0
/* 8020C538 00209498  38 21 00 10 */	addi r1, r1, 0x10
/* 8020C53C 0020949C  4E 80 00 20 */	blr

.global AcceptScriptMsg__20CScriptStreamedMusicF20EScriptObjectMessage9TUniqueIdR13CStateManager
AcceptScriptMsg__20CScriptStreamedMusicF20EScriptObjectMessage9TUniqueIdR13CStateManager:
/* 8020C540 002094A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C544 002094A4  7C 08 02 A6 */	mflr r0
/* 8020C548 002094A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C54C 002094AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8020C550 002094B0  7C DF 33 78 */	mr r31, r6
/* 8020C554 002094B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8020C558 002094B8  7C 9E 23 78 */	mr r30, r4
/* 8020C55C 002094BC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8020C560 002094C0  7C 7D 1B 78 */	mr r29, r3
/* 8020C564 002094C4  A0 05 00 00 */	lhz r0, 0(r5)
/* 8020C568 002094C8  38 A1 00 08 */	addi r5, r1, 8
/* 8020C56C 002094CC  B0 01 00 08 */	sth r0, 8(r1)
/* 8020C570 002094D0  4B E4 4B ED */	bl AcceptScriptMsg__7CEntityF20EScriptObjectMessage9TUniqueIdR13CStateManager
/* 8020C574 002094D4  38 1E FF FC */	addi r0, r30, -4
/* 8020C578 002094D8  28 00 00 10 */	cmplwi r0, 0x10
/* 8020C57C 002094DC  41 81 00 D8 */	bgt lbl_8020C654
/* 8020C580 002094E0  3C 60 80 3E */	lis r3, lbl_803E7088@ha
/* 8020C584 002094E4  54 00 10 3A */	slwi r0, r0, 2
/* 8020C588 002094E8  38 63 70 88 */	addi r3, r3, lbl_803E7088@l
/* 8020C58C 002094EC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8020C590 002094F0  7C 09 03 A6 */	mtctr r0
/* 8020C594 002094F4  4E 80 04 20 */	bctr
lbl_8020C598:
/* 8020C598 002094F8  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8020C59C 002094FC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8020C5A0 00209500  41 82 00 B4 */	beq lbl_8020C654
/* 8020C5A4 00209504  7F A3 EB 78 */	mr r3, r29
/* 8020C5A8 00209508  7F E4 FB 78 */	mr r4, r31
/* 8020C5AC 0020950C  4B FF FE FD */	bl Play__20CScriptStreamedMusicFR13CStateManager
/* 8020C5B0 00209510  48 00 00 A4 */	b lbl_8020C654
lbl_8020C5B4:
/* 8020C5B4 00209514  88 1D 00 30 */	lbz r0, 0x30(r29)
/* 8020C5B8 00209518  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8020C5BC 0020951C  41 82 00 98 */	beq lbl_8020C654
/* 8020C5C0 00209520  7F A3 EB 78 */	mr r3, r29
/* 8020C5C4 00209524  7F E4 FB 78 */	mr r4, r31
/* 8020C5C8 00209528  4B FF FE AD */	bl Stop__20CScriptStreamedMusicFR13CStateManager
/* 8020C5CC 0020952C  48 00 00 88 */	b lbl_8020C654
lbl_8020C5D0:
/* 8020C5D0 00209530  88 7D 00 45 */	lbz r3, 0x45(r29)
/* 8020C5D4 00209534  28 03 00 00 */	cmplwi r3, 0
/* 8020C5D8 00209538  40 82 00 10 */	bne lbl_8020C5E8
/* 8020C5DC 0020953C  88 1D 00 44 */	lbz r0, 0x44(r29)
/* 8020C5E0 00209540  28 00 00 00 */	cmplwi r0, 0
/* 8020C5E4 00209544  41 82 00 0C */	beq lbl_8020C5F0
lbl_8020C5E8:
/* 8020C5E8 00209548  28 03 00 00 */	cmplwi r3, 0
/* 8020C5EC 0020954C  41 82 00 68 */	beq lbl_8020C654
lbl_8020C5F0:
/* 8020C5F0 00209550  7F A3 EB 78 */	mr r3, r29
/* 8020C5F4 00209554  7F E4 FB 78 */	mr r4, r31
/* 8020C5F8 00209558  4B FF FE 7D */	bl Stop__20CScriptStreamedMusicFR13CStateManager
/* 8020C5FC 0020955C  48 00 00 58 */	b lbl_8020C654
lbl_8020C600:
/* 8020C600 00209560  88 1D 00 45 */	lbz r0, 0x45(r29)
/* 8020C604 00209564  28 00 00 00 */	cmplwi r0, 0
/* 8020C608 00209568  41 82 00 18 */	beq lbl_8020C620
/* 8020C60C 0020956C  88 7D 00 46 */	lbz r3, 0x46(r29)
/* 8020C610 00209570  48 00 01 D1 */	bl IsOneShot__20CScriptStreamedMusicFb
/* 8020C614 00209574  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8020C618 00209578  48 15 9A D5 */	bl FadeBackIn__19CStreamAudioManagerFif
/* 8020C61C 0020957C  48 00 00 38 */	b lbl_8020C654
lbl_8020C620:
/* 8020C620 00209580  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8020C624 00209584  48 15 8D D5 */	bl sub_803653f8
/* 8020C628 00209588  48 00 00 2C */	b lbl_8020C654
lbl_8020C62C:
/* 8020C62C 0020958C  88 1D 00 45 */	lbz r0, 0x45(r29)
/* 8020C630 00209590  28 00 00 00 */	cmplwi r0, 0
/* 8020C634 00209594  41 82 00 18 */	beq lbl_8020C64C
/* 8020C638 00209598  88 7D 00 46 */	lbz r3, 0x46(r29)
/* 8020C63C 0020959C  48 00 01 A5 */	bl IsOneShot__20CScriptStreamedMusicFb
/* 8020C640 002095A0  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 8020C644 002095A4  48 15 9A DD */	bl TemporaryFadeOut__19CStreamAudioManagerFif
/* 8020C648 002095A8  48 00 00 0C */	b lbl_8020C654
lbl_8020C64C:
/* 8020C64C 002095AC  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 8020C650 002095B0  48 15 8D D5 */	bl sub_80365424
lbl_8020C654:
/* 8020C654 002095B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C658 002095B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8020C65C 002095BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8020C660 002095C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8020C664 002095C4  7C 08 03 A6 */	mtlr r0
/* 8020C668 002095C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C66C 002095CC  4E 80 00 20 */	blr

.global "IsDSPFile__20CScriptStreamedMusicFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"IsDSPFile__20CScriptStreamedMusicFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 8020C670 002095D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8020C674 002095D4  7C 08 02 A6 */	mflr r0
/* 8020C678 002095D8  3C 80 80 3D */	lis r4, lbl_803D2778@ha
/* 8020C67C 002095DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020C680 002095E0  38 84 27 78 */	addi r4, r4, lbl_803D2778@l
/* 8020C684 002095E4  38 84 00 0C */	addi r4, r4, 0xc
/* 8020C688 002095E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8020C68C 002095EC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8020C690 002095F0  7C 7E 1B 78 */	mr r30, r3
/* 8020C694 002095F4  38 61 00 18 */	addi r3, r1, 0x18
/* 8020C698 002095F8  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8020C69C 002095FC  4B DF 86 1D */	bl string_l__4rstlFPCc
/* 8020C6A0 00209600  7F C3 F3 78 */	mr r3, r30
/* 8020C6A4 00209604  38 81 00 18 */	addi r4, r1, 0x18
/* 8020C6A8 00209608  3B A0 00 00 */	li r29, 0
/* 8020C6AC 0020960C  3B E0 00 01 */	li r31, 1
/* 8020C6B0 00209610  48 13 23 3D */	bl "CompareCaseInsensitive__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C6B4 00209614  2C 03 00 00 */	cmpwi r3, 0
/* 8020C6B8 00209618  41 82 00 34 */	beq lbl_8020C6EC
/* 8020C6BC 0020961C  3C 80 80 3D */	lis r4, lbl_803D2778@ha
/* 8020C6C0 00209620  38 61 00 08 */	addi r3, r1, 8
/* 8020C6C4 00209624  38 84 27 78 */	addi r4, r4, lbl_803D2778@l
/* 8020C6C8 00209628  38 84 00 0F */	addi r4, r4, 0xf
/* 8020C6CC 0020962C  4B DF 85 ED */	bl string_l__4rstlFPCc
/* 8020C6D0 00209630  7F C3 F3 78 */	mr r3, r30
/* 8020C6D4 00209634  38 81 00 08 */	addi r4, r1, 8
/* 8020C6D8 00209638  3B A0 00 01 */	li r29, 1
/* 8020C6DC 0020963C  48 13 24 01 */	bl "IndexOfSubstring__13CStringExtrasFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>RCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C6E0 00209640  2C 03 FF FF */	cmpwi r3, -1
/* 8020C6E4 00209644  40 82 00 08 */	bne lbl_8020C6EC
/* 8020C6E8 00209648  3B E0 00 00 */	li r31, 0
lbl_8020C6EC:
/* 8020C6EC 0020964C  7F A0 07 75 */	extsb. r0, r29
/* 8020C6F0 00209650  41 82 00 0C */	beq lbl_8020C6FC
/* 8020C6F4 00209654  38 61 00 08 */	addi r3, r1, 8
/* 8020C6F8 00209658  48 13 13 E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_8020C6FC:
/* 8020C6FC 0020965C  38 61 00 18 */	addi r3, r1, 0x18
/* 8020C700 00209660  48 13 13 E1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 8020C704 00209664  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8020C708 00209668  7F E3 FB 78 */	mr r3, r31
/* 8020C70C 0020966C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8020C710 00209670  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8020C714 00209674  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8020C718 00209678  7C 08 03 A6 */	mtlr r0
/* 8020C71C 0020967C  38 21 00 40 */	addi r1, r1, 0x40
/* 8020C720 00209680  4E 80 00 20 */	blr

.global nullsub_42
nullsub_42:
/* 8020C724 00209684  4E 80 00 20 */	blr

.global "__ct__20CScriptStreamedMusicF9TUniqueIdRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bffUibb"
"__ct__20CScriptStreamedMusicF9TUniqueIdRC11CEntityInfoRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>bffUibb":
/* 8020C728 00209688  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8020C72C 0020968C  7C 08 02 A6 */	mflr r0
/* 8020C730 00209690  90 01 00 44 */	stw r0, 0x44(r1)
/* 8020C734 00209694  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 8020C738 00209698  FF E0 10 90 */	fmr f31, f2
/* 8020C73C 0020969C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8020C740 002096A0  FF C0 08 90 */	fmr f30, f1
/* 8020C744 002096A4  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8020C748 002096A8  7C 7A 1B 78 */	mr r26, r3
/* 8020C74C 002096AC  8B C1 00 4B */	lbz r30, 0x4b(r1)
/* 8020C750 002096B0  7D 1B 43 78 */	mr r27, r8
/* 8020C754 002096B4  8B E1 00 4F */	lbz r31, 0x4f(r1)
/* 8020C758 002096B8  7D 3C 4B 78 */	mr r28, r9
/* 8020C75C 002096BC  7D 5D 53 78 */	mr r29, r10
/* 8020C760 002096C0  A0 04 00 00 */	lhz r0, 0(r4)
/* 8020C764 002096C4  7C C4 33 78 */	mr r4, r6
/* 8020C768 002096C8  7C E6 3B 78 */	mr r6, r7
/* 8020C76C 002096CC  B0 01 00 08 */	sth r0, 8(r1)
/* 8020C770 002096D0  7C 87 23 78 */	mr r7, r4
/* 8020C774 002096D4  38 81 00 08 */	addi r4, r1, 8
/* 8020C778 002096D8  4B E4 4B AD */	bl "__ct__7CEntityF9TUniqueIdRC11CEntityInfobRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C77C 002096DC  3C 60 80 3E */	lis r3, __vt__20CScriptStreamedMusic@ha
/* 8020C780 002096E0  7F 64 DB 78 */	mr r4, r27
/* 8020C784 002096E4  38 03 70 68 */	addi r0, r3, __vt__20CScriptStreamedMusic@l
/* 8020C788 002096E8  38 7A 00 34 */	addi r3, r26, 0x34
/* 8020C78C 002096EC  90 1A 00 00 */	stw r0, 0(r26)
/* 8020C790 002096F0  48 13 19 D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C794 002096F4  9B 9A 00 44 */	stb r28, 0x44(r26)
/* 8020C798 002096F8  7F 63 DB 78 */	mr r3, r27
/* 8020C79C 002096FC  4B FF FE D5 */	bl "IsDSPFile__20CScriptStreamedMusicFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 8020C7A0 00209700  98 7A 00 45 */	stb r3, 0x45(r26)
/* 8020C7A4 00209704  7F 43 D3 78 */	mr r3, r26
/* 8020C7A8 00209708  9B DA 00 46 */	stb r30, 0x46(r26)
/* 8020C7AC 0020970C  9B FA 00 47 */	stb r31, 0x47(r26)
/* 8020C7B0 00209710  D3 DA 00 48 */	stfs f30, 0x48(r26)
/* 8020C7B4 00209714  D3 FA 00 4C */	stfs f31, 0x4c(r26)
/* 8020C7B8 00209718  93 BA 00 50 */	stw r29, 0x50(r26)
/* 8020C7BC 0020971C  4B FF FF 69 */	bl nullsub_42
/* 8020C7C0 00209720  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 8020C7C4 00209724  7F 43 D3 78 */	mr r3, r26
/* 8020C7C8 00209728  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8020C7CC 0020972C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8020C7D0 00209730  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8020C7D4 00209734  7C 08 03 A6 */	mtlr r0
/* 8020C7D8 00209738  38 21 00 40 */	addi r1, r1, 0x40
/* 8020C7DC 0020973C  4E 80 00 20 */	blr

.global IsOneShot__20CScriptStreamedMusicFb
IsOneShot__20CScriptStreamedMusicFb:
/* 8020C7E0 00209740  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8020C7E4 00209744  7C 00 00 34 */	cntlzw r0, r0
/* 8020C7E8 00209748  54 03 D9 7E */	srwi r3, r0, 5
/* 8020C7EC 0020974C  4E 80 00 20 */	blr

.global sub_8020c7f0
sub_8020c7f0:
/* 8020C7F0 00209750  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020C7F4 00209754  7C 08 02 A6 */	mflr r0
/* 8020C7F8 00209758  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020C7FC 0020975C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8020C800 00209760  89 21 00 08 */	lbz r9, 8(r1)
/* 8020C804 00209764  81 04 00 00 */	lwz r8, 0(r4)
/* 8020C808 00209768  80 E4 00 04 */	lwz r7, 4(r4)
/* 8020C80C 0020976C  38 81 00 10 */	addi r4, r1, 0x10
/* 8020C810 00209770  80 C3 00 00 */	lwz r6, 0(r3)
/* 8020C814 00209774  80 03 00 04 */	lwz r0, 4(r3)
/* 8020C818 00209778  38 61 00 18 */	addi r3, r1, 0x18
/* 8020C81C 0020977C  99 21 00 0C */	stb r9, 0xc(r1)
/* 8020C820 00209780  91 01 00 10 */	stw r8, 0x10(r1)
/* 8020C824 00209784  90 E1 00 14 */	stw r7, 0x14(r1)
/* 8020C828 00209788  90 C1 00 18 */	stw r6, 0x18(r1)
/* 8020C82C 0020978C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8020C830 00209790  48 00 00 15 */	bl sub_8020c844
/* 8020C834 00209794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020C838 00209798  7C 08 03 A6 */	mtlr r0
/* 8020C83C 0020979C  38 21 00 20 */	addi r1, r1, 0x20
/* 8020C840 002097A0  4E 80 00 20 */	blr

.global sub_8020c844
sub_8020c844:
/* 8020C844 002097A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8020C848 002097A8  80 04 00 04 */	lwz r0, 4(r4)
/* 8020C84C 002097AC  7C 63 00 50 */	subf r3, r3, r0
/* 8020C850 002097B0  4E 80 00 20 */	blr

.section .sdata2, "a"
.balign 8
.global lbl_805ACED8
lbl_805ACED8:
	# ROM: 0x3F9778
	.4byte 0x42FE0000
	.4byte 0


.section .rodata
.balign 8
.global lbl_803D2778
lbl_803D2778:
	# ROM: 0x3CF778
	.asciz "L.dsp"
	.byte 0x52, 0x2E
	.4byte 0x64737000
	.4byte 0x7377002E
	.4byte 0x64737000
	.4byte 0

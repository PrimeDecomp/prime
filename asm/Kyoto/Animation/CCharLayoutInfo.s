.include "macros.inc"

.section .data
.balign 8

.global lbl_803ED420
lbl_803ED420:
	# ROM: 0x3EA420
	.4byte 0
	.4byte 0
	.4byte sub_802f8294
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A87D0
lbl_805A87D0:
	# ROM: 0x3F6170
	.byte 0xFF

.global lbl_805A87D1
lbl_805A87D1:
	# ROM: 0x3F6171
	.byte 0xFF

.global lbl_805A87D2
lbl_805A87D2:
	# ROM: 0x3F6172
	.byte 0x01

.global lbl_805A87D3
lbl_805A87D3:
	# ROM: 0x3F6173
	.byte 0x00

.global lbl_805A87D4
lbl_805A87D4:
	# ROM: 0x3F6174
	.4byte 0x01000000

.section .sbss, "wa"
.balign 8

.global lbl_805A9320
lbl_805A9320:
	.skip 0x4
.global lbl_805A9324
lbl_805A9324:
	.skip 0x4
.global lbl_805A9328
lbl_805A9328:
	.skip 0x4
.global lbl_805A932C
lbl_805A932C:
	.skip 0x4

.section .text, "ax"

.global "GetSegIdFromString__15CCharLayoutInfoCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
"GetSegIdFromString__15CCharLayoutInfoCFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>":
/* 802F7C64 002F4BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7C68 002F4BC8  7C 08 02 A6 */	mflr r0
/* 802F7C6C 002F4BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7C70 002F4BD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7C74 002F4BD4  7C 9F 23 78 */	mr r31, r4
/* 802F7C78 002F4BD8  38 9F 00 18 */	addi r4, r31, 0x18
/* 802F7C7C 002F4BDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F7C80 002F4BE0  7C 7E 1B 78 */	mr r30, r3
/* 802F7C84 002F4BE4  38 61 00 08 */	addi r3, r1, 8
/* 802F7C88 002F4BE8  48 00 00 5D */	bl "find__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rme"
/* 802F7C8C 002F4BEC  80 A1 00 08 */	lwz r5, 8(r1)
/* 802F7C90 002F4BF0  38 9F 00 20 */	addi r4, r31, 0x20
/* 802F7C94 002F4BF4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802F7C98 002F4BF8  38 00 00 00 */	li r0, 0
/* 802F7C9C 002F4BFC  28 05 00 00 */	cmplwi r5, 0
/* 802F7CA0 002F4C00  40 82 00 0C */	bne lbl_802F7CAC
/* 802F7CA4 002F4C04  7C 03 20 40 */	cmplw r3, r4
/* 802F7CA8 002F4C08  41 82 00 08 */	beq lbl_802F7CB0
lbl_802F7CAC:
/* 802F7CAC 002F4C0C  38 00 00 01 */	li r0, 1
lbl_802F7CB0:
/* 802F7CB0 002F4C10  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802F7CB4 002F4C14  41 82 00 10 */	beq lbl_802F7CC4
/* 802F7CB8 002F4C18  88 05 00 20 */	lbz r0, 0x20(r5)
/* 802F7CBC 002F4C1C  98 1E 00 00 */	stb r0, 0(r30)
/* 802F7CC0 002F4C20  48 00 00 0C */	b lbl_802F7CCC
lbl_802F7CC4:
/* 802F7CC4 002F4C24  38 00 00 FF */	li r0, 0xff
/* 802F7CC8 002F4C28  98 1E 00 00 */	stb r0, 0(r30)
lbl_802F7CCC:
/* 802F7CCC 002F4C2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7CD0 002F4C30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7CD4 002F4C34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F7CD8 002F4C38  7C 08 03 A6 */	mtlr r0
/* 802F7CDC 002F4C3C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7CE0 002F4C40  4E 80 00 20 */	blr

.global "find__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rme"
"find__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rme":
/* 802F7CE4 002F4C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F7CE8 002F4C48  7C 08 02 A6 */	mflr r0
/* 802F7CEC 002F4C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F7CF0 002F4C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F7CF4 002F4C54  7C 9F 23 78 */	mr r31, r4
/* 802F7CF8 002F4C58  7C A4 2B 78 */	mr r4, r5
/* 802F7CFC 002F4C5C  93 C1 00 08 */	stw r30, 8(r1)
/* 802F7D00 002F4C60  7C 7E 1B 78 */	mr r30, r3
/* 802F7D04 002F4C64  7F E3 FB 78 */	mr r3, r31
/* 802F7D08 002F4C68  48 00 00 29 */	bl "find_node__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl"
/* 802F7D0C 002F4C6C  90 7E 00 00 */	stw r3, 0(r30)
/* 802F7D10 002F4C70  38 1F 00 08 */	addi r0, r31, 8
/* 802F7D14 002F4C74  90 1E 00 04 */	stw r0, 4(r30)
/* 802F7D18 002F4C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F7D1C 002F4C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F7D20 002F4C80  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F7D24 002F4C84  7C 08 03 A6 */	mtlr r0
/* 802F7D28 002F4C88  38 21 00 10 */	addi r1, r1, 0x10
/* 802F7D2C 002F4C8C  4E 80 00 20 */	blr

.global "find_node__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl"
"find_node__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl":
/* 802F7D30 002F4C90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7D34 002F4C94  7C 08 02 A6 */	mflr r0
/* 802F7D38 002F4C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7D3C 002F4C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7D40 002F4CA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F7D44 002F4CA4  3B C0 00 00 */	li r30, 0
/* 802F7D48 002F4CA8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F7D4C 002F4CAC  7C 9D 23 78 */	mr r29, r4
/* 802F7D50 002F4CB0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802F7D54 002F4CB4  7C 7C 1B 78 */	mr r28, r3
/* 802F7D58 002F4CB8  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 802F7D5C 002F4CBC  48 00 00 2C */	b lbl_802F7D88
lbl_802F7D60:
/* 802F7D60 002F4CC0  7F A5 EB 78 */	mr r5, r29
/* 802F7D64 002F4CC4  38 7C 00 01 */	addi r3, r28, 1
/* 802F7D68 002F4CC8  38 9F 00 10 */	addi r4, r31, 0x10
/* 802F7D6C 002F4CCC  4B D3 29 BD */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 802F7D70 002F4CD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F7D74 002F4CD4  40 82 00 10 */	bne lbl_802F7D84
/* 802F7D78 002F4CD8  7F FE FB 78 */	mr r30, r31
/* 802F7D7C 002F4CDC  83 FF 00 00 */	lwz r31, 0(r31)
/* 802F7D80 002F4CE0  48 00 00 08 */	b lbl_802F7D88
lbl_802F7D84:
/* 802F7D84 002F4CE4  83 FF 00 04 */	lwz r31, 4(r31)
lbl_802F7D88:
/* 802F7D88 002F4CE8  28 1F 00 00 */	cmplwi r31, 0
/* 802F7D8C 002F4CEC  40 82 FF D4 */	bne lbl_802F7D60
/* 802F7D90 002F4CF0  28 1E 00 00 */	cmplwi r30, 0
/* 802F7D94 002F4CF4  3B E0 00 00 */	li r31, 0
/* 802F7D98 002F4CF8  41 82 00 1C */	beq lbl_802F7DB4
/* 802F7D9C 002F4CFC  7F A4 EB 78 */	mr r4, r29
/* 802F7DA0 002F4D00  38 7C 00 01 */	addi r3, r28, 1
/* 802F7DA4 002F4D04  38 BE 00 10 */	addi r5, r30, 0x10
/* 802F7DA8 002F4D08  4B D3 29 81 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 802F7DAC 002F4D0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F7DB0 002F4D10  41 82 00 08 */	beq lbl_802F7DB8
lbl_802F7DB4:
/* 802F7DB4 002F4D14  3B E0 00 01 */	li r31, 1
lbl_802F7DB8:
/* 802F7DB8 002F4D18  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F7DBC 002F4D1C  41 82 00 0C */	beq lbl_802F7DC8
/* 802F7DC0 002F4D20  38 60 00 00 */	li r3, 0
/* 802F7DC4 002F4D24  48 00 00 08 */	b lbl_802F7DCC
lbl_802F7DC8:
/* 802F7DC8 002F4D28  7F C3 F3 78 */	mr r3, r30
lbl_802F7DCC:
/* 802F7DCC 002F4D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7DD0 002F4D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7DD4 002F4D34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F7DD8 002F4D38  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802F7DDC 002F4D3C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802F7DE0 002F4D40  7C 08 03 A6 */	mtlr r0
/* 802F7DE4 002F4D44  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7DE8 002F4D48  4E 80 00 20 */	blr

.global __ct__15CCharLayoutInfoFR12CInputStream
__ct__15CCharLayoutInfoFR12CInputStream:
/* 802F7DEC 002F4D4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7DF0 002F4D50  7C 08 02 A6 */	mflr r0
/* 802F7DF4 002F4D54  3C A0 80 3D */	lis r5, lbl_803D6E28@ha
/* 802F7DF8 002F4D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7DFC 002F4D5C  38 05 6E 28 */	addi r0, r5, lbl_803D6E28@l
/* 802F7E00 002F4D60  38 A0 00 00 */	li r5, 0
/* 802F7E04 002F4D64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7E08 002F4D68  7C 9F 23 78 */	mr r31, r4
/* 802F7E0C 002F4D6C  7C 04 03 78 */	mr r4, r0
/* 802F7E10 002F4D70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F7E14 002F4D74  7C 7E 1B 78 */	mr r30, r3
/* 802F7E18 002F4D78  38 60 00 D8 */	li r3, 0xd8
/* 802F7E1C 002F4D7C  48 01 DA 51 */	bl __nw__FUlPCcPCc
/* 802F7E20 002F4D80  7C 64 1B 79 */	or. r4, r3, r3
/* 802F7E24 002F4D84  41 82 00 10 */	beq lbl_802F7E34
/* 802F7E28 002F4D88  7F E4 FB 78 */	mr r4, r31
/* 802F7E2C 002F4D8C  48 00 06 C9 */	bl "__ct__28TSegIdMap<15CCharLayoutNode>FR12CInputStream"
/* 802F7E30 002F4D90  7C 64 1B 78 */	mr r4, r3
lbl_802F7E34:
/* 802F7E34 002F4D94  7C 64 00 D0 */	neg r3, r4
/* 802F7E38 002F4D98  38 00 00 00 */	li r0, 0
/* 802F7E3C 002F4D9C  7C 63 23 78 */	or r3, r3, r4
/* 802F7E40 002F4DA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 802F7E44 002F4DA4  54 63 0F FE */	srwi r3, r3, 0x1f
/* 802F7E48 002F4DA8  98 61 00 10 */	stb r3, 0x10(r1)
/* 802F7E4C 002F4DAC  98 01 00 10 */	stb r0, 0x10(r1)
/* 802F7E50 002F4DB0  90 9E 00 00 */	stw r4, 0(r30)
/* 802F7E54 002F4DB4  48 00 00 08 */	b lbl_802F7E5C
/* 802F7E58 002F4DB8  48 00 0D B5 */	bl sub_802f8c0c
lbl_802F7E5C:
/* 802F7E5C 002F4DBC  7F E4 FB 78 */	mr r4, r31
/* 802F7E60 002F4DC0  38 7E 00 08 */	addi r3, r30, 8
/* 802F7E64 002F4DC4  48 05 10 01 */	bl __ct__10CSegIdListFR12CInputStream
/* 802F7E68 002F4DC8  7F E4 FB 78 */	mr r4, r31
/* 802F7E6C 002F4DCC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802F7E70 002F4DD0  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F7E74 002F4DD4  38 C1 00 08 */	addi r6, r1, 8
/* 802F7E78 002F4DD8  48 00 00 21 */	bl "__ct__Q24rstl206map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>RCQ24rstl17rmemory_allocator"
/* 802F7E7C 002F4DDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7E80 002F4DE0  7F C3 F3 78 */	mr r3, r30
/* 802F7E84 002F4DE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7E88 002F4DE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F7E8C 002F4DEC  7C 08 03 A6 */	mtlr r0
/* 802F7E90 002F4DF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7E94 002F4DF4  4E 80 00 20 */	blr

.global "__ct__Q24rstl206map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>RCQ24rstl17rmemory_allocator"
"__ct__Q24rstl206map<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>RCQ24rstl17rmemory_allocator":
/* 802F7E98 002F4DF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7E9C 002F4DFC  7C 08 02 A6 */	mflr r0
/* 802F7EA0 002F4E00  7C C7 33 78 */	mr r7, r6
/* 802F7EA4 002F4E04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7EA8 002F4E08  7C A0 2B 78 */	mr r0, r5
/* 802F7EAC 002F4E0C  38 A1 00 08 */	addi r5, r1, 8
/* 802F7EB0 002F4E10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7EB4 002F4E14  7C 7F 1B 78 */	mr r31, r3
/* 802F7EB8 002F4E18  7C 06 03 78 */	mr r6, r0
/* 802F7EBC 002F4E1C  48 00 00 1D */	bl "__ct__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl109select1st<Q24rstl89pair<Q24rstl66bas"
/* 802F7EC0 002F4E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7EC4 002F4E24  7F E3 FB 78 */	mr r3, r31
/* 802F7EC8 002F4E28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7ECC 002F4E2C  7C 08 03 A6 */	mtlr r0
/* 802F7ED0 002F4E30  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7ED4 002F4E34  4E 80 00 20 */	blr

.global "__ct__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl109select1st<Q24rstl89pair<Q24rstl66bas"
"__ct__Q24rstl430red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>,0,Q24rstl109select1st<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl109select1st<Q24rstl89pair<Q24rstl66bas":
/* 802F7ED8 002F4E38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802F7EDC 002F4E3C  7C 08 02 A6 */	mflr r0
/* 802F7EE0 002F4E40  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F7EE4 002F4E44  38 00 00 00 */	li r0, 0
/* 802F7EE8 002F4E48  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802F7EEC 002F4E4C  7C 9C 23 78 */	mr r28, r4
/* 802F7EF0 002F4E50  7C 7B 1B 78 */	mr r27, r3
/* 802F7EF4 002F4E54  88 A5 00 00 */	lbz r5, 0(r5)
/* 802F7EF8 002F4E58  98 A3 00 00 */	stb r5, 0(r3)
/* 802F7EFC 002F4E5C  7F 83 E3 78 */	mr r3, r28
/* 802F7F00 002F4E60  88 86 00 00 */	lbz r4, 0(r6)
/* 802F7F04 002F4E64  98 9B 00 01 */	stb r4, 1(r27)
/* 802F7F08 002F4E68  90 1B 00 04 */	stw r0, 4(r27)
/* 802F7F0C 002F4E6C  90 1B 00 08 */	stw r0, 8(r27)
/* 802F7F10 002F4E70  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802F7F14 002F4E74  90 1B 00 10 */	stw r0, 0x10(r27)
/* 802F7F18 002F4E78  48 04 6D 6D */	bl ReadLong__12CInputStreamFv
/* 802F7F1C 002F4E7C  7C 7F 1B 78 */	mr r31, r3
/* 802F7F20 002F4E80  3B C1 00 08 */	addi r30, r1, 8
/* 802F7F24 002F4E84  3B A0 00 00 */	li r29, 0
/* 802F7F28 002F4E88  48 00 00 3C */	b lbl_802F7F64
lbl_802F7F2C:
/* 802F7F2C 002F4E8C  88 0D A7 60 */	lbz r0, lbl_805A9320@sda21(r13)
/* 802F7F30 002F4E90  7F 84 E3 78 */	mr r4, r28
/* 802F7F34 002F4E94  7F C5 F3 78 */	mr r5, r30
/* 802F7F38 002F4E98  38 61 00 18 */	addi r3, r1, 0x18
/* 802F7F3C 002F4E9C  98 01 00 08 */	stb r0, 8(r1)
/* 802F7F40 002F4EA0  48 00 00 45 */	bl "Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>"
/* 802F7F44 002F4EA4  80 BB 00 10 */	lwz r5, 0x10(r27)
/* 802F7F48 002F4EA8  7F 64 DB 78 */	mr r4, r27
/* 802F7F4C 002F4EAC  38 61 00 0C */	addi r3, r1, 0xc
/* 802F7F50 002F4EB0  38 C1 00 18 */	addi r6, r1, 0x18
/* 802F7F54 002F4EB4  48 00 09 01 */	bl sub_802f8854
/* 802F7F58 002F4EB8  38 61 00 18 */	addi r3, r1, 0x18
/* 802F7F5C 002F4EBC  48 04 5B 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802F7F60 002F4EC0  3B BD 00 01 */	addi r29, r29, 1
lbl_802F7F64:
/* 802F7F64 002F4EC4  7C 1D F8 00 */	cmpw r29, r31
/* 802F7F68 002F4EC8  41 80 FF C4 */	blt lbl_802F7F2C
/* 802F7F6C 002F4ECC  7F 63 DB 78 */	mr r3, r27
/* 802F7F70 002F4ED0  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802F7F74 002F4ED4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F7F78 002F4ED8  7C 08 03 A6 */	mtlr r0
/* 802F7F7C 002F4EDC  38 21 00 50 */	addi r1, r1, 0x50
/* 802F7F80 002F4EE0  4E 80 00 20 */	blr

.global "Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>"
"Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>":
/* 802F7F84 002F4EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7F88 002F4EE8  7C 08 02 A6 */	mflr r0
/* 802F7F8C 002F4EEC  7C 85 23 78 */	mr r5, r4
/* 802F7F90 002F4EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F7F94 002F4EF4  38 81 00 08 */	addi r4, r1, 8
/* 802F7F98 002F4EF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F7F9C 002F4EFC  7C 7F 1B 78 */	mr r31, r3
/* 802F7FA0 002F4F00  88 0D A7 64 */	lbz r0, lbl_805A9324@sda21(r13)
/* 802F7FA4 002F4F04  98 01 00 08 */	stb r0, 8(r1)
/* 802F7FA8 002F4F08  48 00 00 19 */	bl "cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>R12CInputStream"
/* 802F7FAC 002F4F0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F7FB0 002F4F10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F7FB4 002F4F14  7C 08 03 A6 */	mtlr r0
/* 802F7FB8 002F4F18  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7FBC 002F4F1C  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>R12CInputStream"
"cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>>R12CInputStream":
/* 802F7FC0 002F4F20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F7FC4 002F4F24  7C 08 02 A6 */	mflr r0
/* 802F7FC8 002F4F28  7C 64 1B 78 */	mr r4, r3
/* 802F7FCC 002F4F2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F7FD0 002F4F30  38 61 00 0C */	addi r3, r1, 0xc
/* 802F7FD4 002F4F34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F7FD8 002F4F38  7C BF 2B 78 */	mr r31, r5
/* 802F7FDC 002F4F3C  38 A1 00 08 */	addi r5, r1, 8
/* 802F7FE0 002F4F40  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802F7FE4 002F4F44  7C 9E 23 78 */	mr r30, r4
/* 802F7FE8 002F4F48  7F E4 FB 78 */	mr r4, r31
/* 802F7FEC 002F4F4C  88 0D A7 68 */	lbz r0, lbl_805A9328@sda21(r13)
/* 802F7FF0 002F4F50  98 01 00 08 */	stb r0, 8(r1)
/* 802F7FF4 002F4F54  48 00 00 3D */	bl "__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>FR12CInputStream"
/* 802F7FF8 002F4F58  7F C3 F3 78 */	mr r3, r30
/* 802F7FFC 002F4F5C  38 81 00 0C */	addi r4, r1, 0xc
/* 802F8000 002F4F60  48 04 61 61 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F8004 002F4F64  38 61 00 0C */	addi r3, r1, 0xc
/* 802F8008 002F4F68  48 04 5A D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802F800C 002F4F6C  7F E3 FB 78 */	mr r3, r31
/* 802F8010 002F4F70  48 04 6C 75 */	bl ReadLong__12CInputStreamFv
/* 802F8014 002F4F74  98 7E 00 10 */	stb r3, 0x10(r30)
/* 802F8018 002F4F78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F801C 002F4F7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F8020 002F4F80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802F8024 002F4F84  7C 08 03 A6 */	mtlr r0
/* 802F8028 002F4F88  38 21 00 30 */	addi r1, r1, 0x30
/* 802F802C 002F4F8C  4E 80 00 20 */	blr

.global "__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>FR12CInputStream"
"__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CSegId>FR12CInputStream":
/* 802F8030 002F4F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F8034 002F4F94  7C 08 02 A6 */	mflr r0
/* 802F8038 002F4F98  7C 85 23 78 */	mr r5, r4
/* 802F803C 002F4F9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8040 002F4FA0  38 81 00 08 */	addi r4, r1, 8
/* 802F8044 002F4FA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F8048 002F4FA8  7C 7F 1B 78 */	mr r31, r3
/* 802F804C 002F4FAC  88 0D A7 6C */	lbz r0, lbl_805A932C@sda21(r13)
/* 802F8050 002F4FB0  98 01 00 08 */	stb r0, 8(r1)
/* 802F8054 002F4FB4  4B D6 14 A5 */	bl sub_800594f8
/* 802F8058 002F4FB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F805C 002F4FBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F8060 002F4FC0  7C 08 03 A6 */	mtlr r0
/* 802F8064 002F4FC4  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8068 002F4FC8  4E 80 00 20 */	blr

.global __ct__15CCharLayoutNodeFR12CInputStream
__ct__15CCharLayoutNodeFR12CInputStream:
/* 802F806C 002F4FCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F8070 002F4FD0  7C 08 02 A6 */	mflr r0
/* 802F8074 002F4FD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8078 002F4FD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F807C 002F4FDC  7C 9F 23 78 */	mr r31, r4
/* 802F8080 002F4FE0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802F8084 002F4FE4  7C 7E 1B 78 */	mr r30, r3
/* 802F8088 002F4FE8  7F E3 FB 78 */	mr r3, r31
/* 802F808C 002F4FEC  48 04 6B F9 */	bl ReadLong__12CInputStreamFv
/* 802F8090 002F4FF0  98 7E 00 00 */	stb r3, 0(r30)
/* 802F8094 002F4FF4  7F E4 FB 78 */	mr r4, r31
/* 802F8098 002F4FF8  38 7E 00 04 */	addi r3, r30, 4
/* 802F809C 002F4FFC  48 01 CA F1 */	bl __ct__9CVector3fFR12CInputStream
/* 802F80A0 002F5000  7F E4 FB 78 */	mr r4, r31
/* 802F80A4 002F5004  38 7E 00 10 */	addi r3, r30, 0x10
/* 802F80A8 002F5008  38 A1 00 08 */	addi r5, r1, 8
/* 802F80AC 002F500C  48 00 00 21 */	bl "__ct__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802F80B0 002F5010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F80B4 002F5014  7F C3 F3 78 */	mr r3, r30
/* 802F80B8 002F5018  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F80BC 002F501C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802F80C0 002F5020  7C 08 03 A6 */	mtlr r0
/* 802F80C4 002F5024  38 21 00 20 */	addi r1, r1, 0x20
/* 802F80C8 002F5028  4E 80 00 20 */	blr

.global "__ct__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
"__ct__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator":
/* 802F80CC 002F502C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F80D0 002F5030  7C 08 02 A6 */	mflr r0
/* 802F80D4 002F5034  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F80D8 002F5038  38 00 00 00 */	li r0, 0
/* 802F80DC 002F503C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802F80E0 002F5040  7C 7B 1B 78 */	mr r27, r3
/* 802F80E4 002F5044  7C 9C 23 78 */	mr r28, r4
/* 802F80E8 002F5048  90 03 00 04 */	stw r0, 4(r3)
/* 802F80EC 002F504C  7F 83 E3 78 */	mr r3, r28
/* 802F80F0 002F5050  90 1B 00 08 */	stw r0, 8(r27)
/* 802F80F4 002F5054  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802F80F8 002F5058  48 04 6B 8D */	bl ReadLong__12CInputStreamFv
/* 802F80FC 002F505C  7C 7F 1B 78 */	mr r31, r3
/* 802F8100 002F5060  7F 63 DB 78 */	mr r3, r27
/* 802F8104 002F5064  7F E4 FB 78 */	mr r4, r31
/* 802F8108 002F5068  48 00 05 D9 */	bl "reserve__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>Fi"
/* 802F810C 002F506C  3B A0 00 00 */	li r29, 0
/* 802F8110 002F5070  48 00 00 5C */	b lbl_802F816C
lbl_802F8114:
/* 802F8114 002F5074  7F 83 E3 78 */	mr r3, r28
/* 802F8118 002F5078  48 04 6B 6D */	bl ReadLong__12CInputStreamFv
/* 802F811C 002F507C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802F8120 002F5080  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 802F8124 002F5084  80 BB 00 08 */	lwz r5, 8(r27)
/* 802F8128 002F5088  7C 00 28 00 */	cmpw r0, r5
/* 802F812C 002F508C  41 80 00 1C */	blt lbl_802F8148
/* 802F8130 002F5090  2C 05 00 00 */	cmpwi r5, 0
/* 802F8134 002F5094  7F 63 DB 78 */	mr r3, r27
/* 802F8138 002F5098  38 80 00 04 */	li r4, 4
/* 802F813C 002F509C  41 82 00 08 */	beq lbl_802F8144
/* 802F8140 002F50A0  54 A4 08 3C */	slwi r4, r5, 1
lbl_802F8144:
/* 802F8144 002F50A4  48 00 05 9D */	bl "reserve__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>Fi"
lbl_802F8148:
/* 802F8148 002F50A8  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802F814C 002F50AC  80 1B 00 04 */	lwz r0, 4(r27)
/* 802F8150 002F50B0  7C 63 02 15 */	add. r3, r3, r0
/* 802F8154 002F50B4  41 82 00 08 */	beq lbl_802F815C
/* 802F8158 002F50B8  9B C3 00 00 */	stb r30, 0(r3)
lbl_802F815C:
/* 802F815C 002F50BC  80 7B 00 04 */	lwz r3, 4(r27)
/* 802F8160 002F50C0  3B BD 00 01 */	addi r29, r29, 1
/* 802F8164 002F50C4  38 03 00 01 */	addi r0, r3, 1
/* 802F8168 002F50C8  90 1B 00 04 */	stw r0, 4(r27)
lbl_802F816C:
/* 802F816C 002F50CC  7C 1D F8 00 */	cmpw r29, r31
/* 802F8170 002F50D0  41 80 FF A4 */	blt lbl_802F8114
/* 802F8174 002F50D4  7F 63 DB 78 */	mr r3, r27
/* 802F8178 002F50D8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802F817C 002F50DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F8180 002F50E0  7C 08 03 A6 */	mtlr r0
/* 802F8184 002F50E4  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8188 002F50E8  4E 80 00 20 */	blr

.global FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer
FCharLayoutInfo__FRC10SObjectTagR12CInputStreamRC15CVParamTransfer:
/* 802F818C 002F50EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8190 002F50F0  7C 08 02 A6 */	mflr r0
/* 802F8194 002F50F4  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F8198 002F50F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F819C 002F50FC  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F81A0 002F5100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F81A4 002F5104  7C BF 2B 78 */	mr r31, r5
/* 802F81A8 002F5108  38 A0 00 00 */	li r5, 0
/* 802F81AC 002F510C  93 C1 00 08 */	stw r30, 8(r1)
/* 802F81B0 002F5110  7C 7E 1B 78 */	mr r30, r3
/* 802F81B4 002F5114  38 60 00 2C */	li r3, 0x2c
/* 802F81B8 002F5118  48 01 D6 B5 */	bl __nw__FUlPCcPCc
/* 802F81BC 002F511C  7C 64 1B 79 */	or. r4, r3, r3
/* 802F81C0 002F5120  41 82 00 10 */	beq lbl_802F81D0
/* 802F81C4 002F5124  7F E4 FB 78 */	mr r4, r31
/* 802F81C8 002F5128  4B FF FC 25 */	bl __ct__15CCharLayoutInfoFR12CInputStream
/* 802F81CC 002F512C  7C 64 1B 78 */	mr r4, r3
lbl_802F81D0:
/* 802F81D0 002F5130  7F C3 F3 78 */	mr r3, r30
/* 802F81D4 002F5134  48 00 00 1D */	bl sub_802f81f0
/* 802F81D8 002F5138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F81DC 002F513C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F81E0 002F5140  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F81E4 002F5144  7C 08 03 A6 */	mtlr r0
/* 802F81E8 002F5148  38 21 00 10 */	addi r1, r1, 0x10
/* 802F81EC 002F514C  4E 80 00 20 */	blr

.global sub_802f81f0
sub_802f81f0:
/* 802F81F0 002F5150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F81F4 002F5154  7C 08 02 A6 */	mflr r0
/* 802F81F8 002F5158  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F81FC 002F515C  7C 04 00 D0 */	neg r0, r4
/* 802F8200 002F5160  7C 00 23 78 */	or r0, r0, r4
/* 802F8204 002F5164  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802F8208 002F5168  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F820C 002F516C  7C 7F 1B 78 */	mr r31, r3
/* 802F8210 002F5170  38 61 00 08 */	addi r3, r1, 8
/* 802F8214 002F5174  90 81 00 14 */	stw r4, 0x14(r1)
/* 802F8218 002F5178  38 81 00 10 */	addi r4, r1, 0x10
/* 802F821C 002F517C  98 01 00 10 */	stb r0, 0x10(r1)
/* 802F8220 002F5180  48 00 01 A9 */	bl sub_802f83c8
/* 802F8224 002F5184  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802F8228 002F5188  38 00 00 00 */	li r0, 0
/* 802F822C 002F518C  98 01 00 08 */	stb r0, 8(r1)
/* 802F8230 002F5190  7C 03 00 D0 */	neg r0, r3
/* 802F8234 002F5194  7C 00 1B 78 */	or r0, r0, r3
/* 802F8238 002F5198  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F823C 002F519C  98 1F 00 00 */	stb r0, 0(r31)
/* 802F8240 002F51A0  90 7F 00 04 */	stw r3, 4(r31)
/* 802F8244 002F51A4  88 01 00 08 */	lbz r0, 8(r1)
/* 802F8248 002F51A8  28 00 00 00 */	cmplwi r0, 0
/* 802F824C 002F51AC  41 82 00 24 */	beq lbl_802F8270
/* 802F8250 002F51B0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802F8254 002F51B4  28 03 00 00 */	cmplwi r3, 0
/* 802F8258 002F51B8  41 82 00 18 */	beq lbl_802F8270
/* 802F825C 002F51BC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F8260 002F51C0  38 80 00 01 */	li r4, 1
/* 802F8264 002F51C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F8268 002F51C8  7D 89 03 A6 */	mtctr r12
/* 802F826C 002F51CC  4E 80 04 21 */	bctrl
lbl_802F8270:
/* 802F8270 002F51D0  38 61 00 10 */	addi r3, r1, 0x10
/* 802F8274 002F51D4  38 80 FF FF */	li r4, -1
/* 802F8278 002F51D8  48 00 02 19 */	bl sub_802f8490
/* 802F827C 002F51DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F8280 002F51E0  7F E3 FB 78 */	mr r3, r31
/* 802F8284 002F51E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802F8288 002F51E8  7C 08 03 A6 */	mtlr r0
/* 802F828C 002F51EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8290 002F51F0  4E 80 00 20 */	blr

.global sub_802f8294
sub_802f8294:
/* 802F8294 002F51F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8298 002F51F8  7C 08 02 A6 */	mflr r0
/* 802F829C 002F51FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F82A0 002F5200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F82A4 002F5204  7C 9F 23 78 */	mr r31, r4
/* 802F82A8 002F5208  93 C1 00 08 */	stw r30, 8(r1)
/* 802F82AC 002F520C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F82B0 002F5210  41 82 00 58 */	beq lbl_802F8308
/* 802F82B4 002F5214  3C 60 80 3F */	lis r3, lbl_803ED420@ha
/* 802F82B8 002F5218  38 03 D4 20 */	addi r0, r3, lbl_803ED420@l
/* 802F82BC 002F521C  90 1E 00 00 */	stw r0, 0(r30)
/* 802F82C0 002F5220  80 7E 00 04 */	lwz r3, 4(r30)
/* 802F82C4 002F5224  28 03 00 00 */	cmplwi r3, 0
/* 802F82C8 002F5228  41 82 00 0C */	beq lbl_802F82D4
/* 802F82CC 002F522C  38 80 00 01 */	li r4, 1
/* 802F82D0 002F5230  48 00 00 55 */	bl sub_802f8324
lbl_802F82D4:
/* 802F82D4 002F5234  28 1E 00 00 */	cmplwi r30, 0
/* 802F82D8 002F5238  41 82 00 20 */	beq lbl_802F82F8
/* 802F82DC 002F523C  3C 60 80 3E */	lis r3, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 802F82E0 002F5240  38 03 8D 78 */	addi r0, r3, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 802F82E4 002F5244  90 1E 00 00 */	stw r0, 0(r30)
/* 802F82E8 002F5248  41 82 00 10 */	beq lbl_802F82F8
/* 802F82EC 002F524C  3C 60 80 3E */	lis r3, __vt__4IObj@ha
/* 802F82F0 002F5250  38 03 8D 6C */	addi r0, r3, __vt__4IObj@l
/* 802F82F4 002F5254  90 1E 00 00 */	stw r0, 0(r30)
lbl_802F82F8:
/* 802F82F8 002F5258  7F E0 07 35 */	extsh. r0, r31
/* 802F82FC 002F525C  40 81 00 0C */	ble lbl_802F8308
/* 802F8300 002F5260  7F C3 F3 78 */	mr r3, r30
/* 802F8304 002F5264  48 01 D6 2D */	bl Free__7CMemoryFPCv
lbl_802F8308:
/* 802F8308 002F5268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F830C 002F526C  7F C3 F3 78 */	mr r3, r30
/* 802F8310 002F5270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F8314 002F5274  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8318 002F5278  7C 08 03 A6 */	mtlr r0
/* 802F831C 002F527C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8320 002F5280  4E 80 00 20 */	blr

.global sub_802f8324
sub_802f8324:
/* 802F8324 002F5284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8328 002F5288  7C 08 02 A6 */	mflr r0
/* 802F832C 002F528C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F8330 002F5290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F8334 002F5294  7C 9F 23 78 */	mr r31, r4
/* 802F8338 002F5298  93 C1 00 08 */	stw r30, 8(r1)
/* 802F833C 002F529C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F8340 002F52A0  41 82 00 6C */	beq lbl_802F83AC
/* 802F8344 002F52A4  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802F8348 002F52A8  41 82 00 34 */	beq lbl_802F837C
/* 802F834C 002F52AC  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802F8350 002F52B0  41 82 00 2C */	beq lbl_802F837C
/* 802F8354 002F52B4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 802F8358 002F52B8  28 04 00 00 */	cmplwi r4, 0
/* 802F835C 002F52BC  41 82 00 0C */	beq lbl_802F8368
/* 802F8360 002F52C0  38 7E 00 18 */	addi r3, r30, 0x18
/* 802F8364 002F52C4  48 00 04 69 */	bl sub_802f87cc
lbl_802F8368:
/* 802F8368 002F52C8  38 00 00 00 */	li r0, 0
/* 802F836C 002F52CC  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802F8370 002F52D0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 802F8374 002F52D4  90 1E 00 24 */	stw r0, 0x24(r30)
/* 802F8378 002F52D8  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_802F837C:
/* 802F837C 002F52DC  38 7E 00 08 */	addi r3, r30, 8
/* 802F8380 002F52E0  38 80 FF FF */	li r4, -1
/* 802F8384 002F52E4  4B FF F8 45 */	bl sub_802f7bc8
/* 802F8388 002F52E8  28 1E 00 00 */	cmplwi r30, 0
/* 802F838C 002F52EC  41 82 00 10 */	beq lbl_802F839C
/* 802F8390 002F52F0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F8394 002F52F4  38 80 00 01 */	li r4, 1
/* 802F8398 002F52F8  48 00 08 75 */	bl sub_802f8c0c
lbl_802F839C:
/* 802F839C 002F52FC  7F E0 07 35 */	extsh. r0, r31
/* 802F83A0 002F5300  40 81 00 0C */	ble lbl_802F83AC
/* 802F83A4 002F5304  7F C3 F3 78 */	mr r3, r30
/* 802F83A8 002F5308  48 01 D5 89 */	bl Free__7CMemoryFPCv
lbl_802F83AC:
/* 802F83AC 002F530C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F83B0 002F5310  7F C3 F3 78 */	mr r3, r30
/* 802F83B4 002F5314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F83B8 002F5318  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F83BC 002F531C  7C 08 03 A6 */	mtlr r0
/* 802F83C0 002F5320  38 21 00 10 */	addi r1, r1, 0x10
/* 802F83C4 002F5324  4E 80 00 20 */	blr

.global sub_802f83c8
sub_802f83c8:
/* 802F83C8 002F5328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F83CC 002F532C  7C 08 02 A6 */	mflr r0
/* 802F83D0 002F5330  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F83D4 002F5334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F83D8 002F5338  7C 7F 1B 78 */	mr r31, r3
/* 802F83DC 002F533C  48 00 00 19 */	bl sub_802f83f4
/* 802F83E0 002F5340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F83E4 002F5344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F83E8 002F5348  7C 08 03 A6 */	mtlr r0
/* 802F83EC 002F534C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F83F0 002F5350  4E 80 00 20 */	blr

.global sub_802f83f4
sub_802f83f4:
/* 802F83F4 002F5354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F83F8 002F5358  7C 08 02 A6 */	mflr r0
/* 802F83FC 002F535C  3C A0 80 3D */	lis r5, lbl_803D6E28@ha
/* 802F8400 002F5360  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F8404 002F5364  38 05 6E 28 */	addi r0, r5, lbl_803D6E28@l
/* 802F8408 002F5368  38 A0 00 00 */	li r5, 0
/* 802F840C 002F536C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F8410 002F5370  7C 9F 23 78 */	mr r31, r4
/* 802F8414 002F5374  7C 04 03 78 */	mr r4, r0
/* 802F8418 002F5378  93 C1 00 08 */	stw r30, 8(r1)
/* 802F841C 002F537C  7C 7E 1B 78 */	mr r30, r3
/* 802F8420 002F5380  38 60 00 08 */	li r3, 8
/* 802F8424 002F5384  48 01 D4 49 */	bl __nw__FUlPCcPCc
/* 802F8428 002F5388  28 03 00 00 */	cmplwi r3, 0
/* 802F842C 002F538C  41 82 00 38 */	beq lbl_802F8464
/* 802F8430 002F5390  3C 80 80 3E */	lis r4, __vt__4IObj@ha
/* 802F8434 002F5394  3C A0 80 3E */	lis r5, __vt__31CObjOwnerDerivedFromIObjUntyped@ha
/* 802F8438 002F5398  38 04 8D 6C */	addi r0, r4, __vt__4IObj@l
/* 802F843C 002F539C  3C 80 80 3F */	lis r4, lbl_803ED420@ha
/* 802F8440 002F53A0  90 03 00 00 */	stw r0, 0(r3)
/* 802F8444 002F53A4  38 C5 8D 78 */	addi r6, r5, __vt__31CObjOwnerDerivedFromIObjUntyped@l
/* 802F8448 002F53A8  38 A0 00 00 */	li r5, 0
/* 802F844C 002F53AC  38 04 D4 20 */	addi r0, r4, lbl_803ED420@l
/* 802F8450 002F53B0  90 C3 00 00 */	stw r6, 0(r3)
/* 802F8454 002F53B4  98 BF 00 00 */	stb r5, 0(r31)
/* 802F8458 002F53B8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802F845C 002F53BC  90 83 00 04 */	stw r4, 4(r3)
/* 802F8460 002F53C0  90 03 00 00 */	stw r0, 0(r3)
lbl_802F8464:
/* 802F8464 002F53C4  7C 03 00 D0 */	neg r0, r3
/* 802F8468 002F53C8  7C 00 1B 78 */	or r0, r0, r3
/* 802F846C 002F53CC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802F8470 002F53D0  98 1E 00 00 */	stb r0, 0(r30)
/* 802F8474 002F53D4  90 7E 00 04 */	stw r3, 4(r30)
/* 802F8478 002F53D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F847C 002F53DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8480 002F53E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F8484 002F53E4  7C 08 03 A6 */	mtlr r0
/* 802F8488 002F53E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F848C 002F53EC  4E 80 00 20 */	blr

.global sub_802f8490
sub_802f8490:
/* 802F8490 002F53F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8494 002F53F4  7C 08 02 A6 */	mflr r0
/* 802F8498 002F53F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F849C 002F53FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F84A0 002F5400  7C 9F 23 78 */	mr r31, r4
/* 802F84A4 002F5404  93 C1 00 08 */	stw r30, 8(r1)
/* 802F84A8 002F5408  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F84AC 002F540C  41 82 00 2C */	beq lbl_802F84D8
/* 802F84B0 002F5410  88 1E 00 00 */	lbz r0, 0(r30)
/* 802F84B4 002F5414  28 00 00 00 */	cmplwi r0, 0
/* 802F84B8 002F5418  41 82 00 10 */	beq lbl_802F84C8
/* 802F84BC 002F541C  80 7E 00 04 */	lwz r3, 4(r30)
/* 802F84C0 002F5420  38 80 00 01 */	li r4, 1
/* 802F84C4 002F5424  4B FF FE 61 */	bl sub_802f8324
lbl_802F84C8:
/* 802F84C8 002F5428  7F E0 07 35 */	extsh. r0, r31
/* 802F84CC 002F542C  40 81 00 0C */	ble lbl_802F84D8
/* 802F84D0 002F5430  7F C3 F3 78 */	mr r3, r30
/* 802F84D4 002F5434  48 01 D4 5D */	bl Free__7CMemoryFPCv
lbl_802F84D8:
/* 802F84D8 002F5438  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F84DC 002F543C  7F C3 F3 78 */	mr r3, r30
/* 802F84E0 002F5440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F84E4 002F5444  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F84E8 002F5448  7C 08 03 A6 */	mtlr r0
/* 802F84EC 002F544C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F84F0 002F5450  4E 80 00 20 */	blr

.global "__ct__28TSegIdMap<15CCharLayoutNode>FR12CInputStream"
"__ct__28TSegIdMap<15CCharLayoutNode>FR12CInputStream":
/* 802F84F4 002F5454  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802F84F8 002F5458  7C 08 02 A6 */	mflr r0
/* 802F84FC 002F545C  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F8500 002F5460  38 00 00 00 */	li r0, 0
/* 802F8504 002F5464  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 802F8508 002F5468  7C 9F 23 78 */	mr r31, r4
/* 802F850C 002F546C  93 C1 00 48 */	stw r30, 0x48(r1)
/* 802F8510 002F5470  7C 7E 1B 78 */	mr r30, r3
/* 802F8514 002F5474  93 A1 00 44 */	stw r29, 0x44(r1)
/* 802F8518 002F5478  93 81 00 40 */	stw r28, 0x40(r1)
/* 802F851C 002F547C  98 03 00 00 */	stb r0, 0(r3)
/* 802F8520 002F5480  7F E3 FB 78 */	mr r3, r31
/* 802F8524 002F5484  48 04 67 61 */	bl ReadLong__12CInputStreamFv
/* 802F8528 002F5488  98 7E 00 01 */	stb r3, 1(r30)
/* 802F852C 002F548C  38 60 00 64 */	li r3, 0x64
/* 802F8530 002F5490  38 00 00 0A */	li r0, 0xa
/* 802F8534 002F5494  38 FE 00 08 */	addi r7, r30, 8
/* 802F8538 002F5498  88 AD 9C 10 */	lbz r5, lbl_805A87D0@sda21(r13)
/* 802F853C 002F549C  38 C0 00 00 */	li r6, 0
/* 802F8540 002F54A0  88 8D 9C 11 */	lbz r4, lbl_805A87D1@sda21(r13)
/* 802F8544 002F54A4  7C A5 07 74 */	extsb r5, r5
/* 802F8548 002F54A8  90 7E 00 04 */	stw r3, 4(r30)
/* 802F854C 002F54AC  7C 83 07 74 */	extsb r3, r4
/* 802F8550 002F54B0  7C 09 03 A6 */	mtctr r0
lbl_802F8554:
/* 802F8554 002F54B4  28 07 00 00 */	cmplwi r7, 0
/* 802F8558 002F54B8  41 82 00 0C */	beq lbl_802F8564
/* 802F855C 002F54BC  98 A7 00 00 */	stb r5, 0(r7)
/* 802F8560 002F54C0  98 67 00 01 */	stb r3, 1(r7)
lbl_802F8564:
/* 802F8564 002F54C4  34 E7 00 02 */	addic. r7, r7, 2
/* 802F8568 002F54C8  41 82 00 0C */	beq lbl_802F8574
/* 802F856C 002F54CC  98 A7 00 00 */	stb r5, 0(r7)
/* 802F8570 002F54D0  98 67 00 01 */	stb r3, 1(r7)
lbl_802F8574:
/* 802F8574 002F54D4  34 E7 00 02 */	addic. r7, r7, 2
/* 802F8578 002F54D8  41 82 00 0C */	beq lbl_802F8584
/* 802F857C 002F54DC  98 A7 00 00 */	stb r5, 0(r7)
/* 802F8580 002F54E0  98 67 00 01 */	stb r3, 1(r7)
lbl_802F8584:
/* 802F8584 002F54E4  34 E7 00 02 */	addic. r7, r7, 2
/* 802F8588 002F54E8  41 82 00 0C */	beq lbl_802F8594
/* 802F858C 002F54EC  98 A7 00 00 */	stb r5, 0(r7)
/* 802F8590 002F54F0  98 67 00 01 */	stb r3, 1(r7)
lbl_802F8594:
/* 802F8594 002F54F4  34 E7 00 02 */	addic. r7, r7, 2
/* 802F8598 002F54F8  41 82 00 0C */	beq lbl_802F85A4
/* 802F859C 002F54FC  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85A0 002F5500  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85A4:
/* 802F85A4 002F5504  34 E7 00 02 */	addic. r7, r7, 2
/* 802F85A8 002F5508  41 82 00 0C */	beq lbl_802F85B4
/* 802F85AC 002F550C  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85B0 002F5510  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85B4:
/* 802F85B4 002F5514  34 E7 00 02 */	addic. r7, r7, 2
/* 802F85B8 002F5518  41 82 00 0C */	beq lbl_802F85C4
/* 802F85BC 002F551C  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85C0 002F5520  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85C4:
/* 802F85C4 002F5524  34 E7 00 02 */	addic. r7, r7, 2
/* 802F85C8 002F5528  41 82 00 0C */	beq lbl_802F85D4
/* 802F85CC 002F552C  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85D0 002F5530  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85D4:
/* 802F85D4 002F5534  34 E7 00 02 */	addic. r7, r7, 2
/* 802F85D8 002F5538  41 82 00 0C */	beq lbl_802F85E4
/* 802F85DC 002F553C  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85E0 002F5540  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85E4:
/* 802F85E4 002F5544  34 E7 00 02 */	addic. r7, r7, 2
/* 802F85E8 002F5548  41 82 00 0C */	beq lbl_802F85F4
/* 802F85EC 002F554C  98 A7 00 00 */	stb r5, 0(r7)
/* 802F85F0 002F5550  98 67 00 01 */	stb r3, 1(r7)
lbl_802F85F4:
/* 802F85F4 002F5554  38 C6 00 09 */	addi r6, r6, 9
/* 802F85F8 002F5558  38 E7 00 02 */	addi r7, r7, 2
/* 802F85FC 002F555C  42 00 FF 58 */	bdnz lbl_802F8554
/* 802F8600 002F5560  88 1E 00 01 */	lbz r0, 1(r30)
/* 802F8604 002F5564  3C 60 80 3D */	lis r3, lbl_803D6E28@ha
/* 802F8608 002F5568  38 83 6E 28 */	addi r4, r3, lbl_803D6E28@l
/* 802F860C 002F556C  38 A0 00 00 */	li r5, 0
/* 802F8610 002F5570  7C 00 07 74 */	extsb r0, r0
/* 802F8614 002F5574  54 03 28 34 */	slwi r3, r0, 5
/* 802F8618 002F5578  48 01 D2 01 */	bl __nwa__FUlPCcPCc
/* 802F861C 002F557C  90 7E 00 D0 */	stw r3, 0xd0(r30)
/* 802F8620 002F5580  38 00 00 00 */	li r0, 0
/* 802F8624 002F5584  3B A1 00 2C */	addi r29, r1, 0x2c
/* 802F8628 002F5588  3B 80 00 00 */	li r28, 0
/* 802F862C 002F558C  98 1E 00 D4 */	stb r0, 0xd4(r30)
/* 802F8630 002F5590  48 00 00 7C */	b lbl_802F86AC
lbl_802F8634:
/* 802F8634 002F5594  7F E3 FB 78 */	mr r3, r31
/* 802F8638 002F5598  48 04 66 4D */	bl ReadLong__12CInputStreamFv
/* 802F863C 002F559C  98 61 00 08 */	stb r3, 8(r1)
/* 802F8640 002F55A0  7F E4 FB 78 */	mr r4, r31
/* 802F8644 002F55A4  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F8648 002F55A8  4B FF FA 25 */	bl __ct__15CCharLayoutNodeFR12CInputStream
/* 802F864C 002F55AC  7F C3 F3 78 */	mr r3, r30
/* 802F8650 002F55B0  38 81 00 08 */	addi r4, r1, 8
/* 802F8654 002F55B4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 802F8658 002F55B8  48 00 04 4D */	bl "insert__28TSegIdMap<15CCharLayoutNode>FRC6CSegIdRC15CCharLayoutNode"
/* 802F865C 002F55BC  28 1D 00 00 */	cmplwi r29, 0
/* 802F8660 002F55C0  41 82 00 48 */	beq lbl_802F86A8
/* 802F8664 002F55C4  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802F8668 002F55C8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802F866C 002F55CC  7C 65 1B 78 */	mr r5, r3
/* 802F8670 002F55D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802F8674 002F55D4  7C 83 02 14 */	add r4, r3, r0
/* 802F8678 002F55D8  7C 03 20 50 */	subf r0, r3, r4
/* 802F867C 002F55DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 802F8680 002F55E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 802F8684 002F55E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F8688 002F55E8  7C 09 03 A6 */	mtctr r0
/* 802F868C 002F55EC  7C 03 20 40 */	cmplw r3, r4
/* 802F8690 002F55F0  41 82 00 0C */	beq lbl_802F869C
lbl_802F8694:
/* 802F8694 002F55F4  38 A5 00 01 */	addi r5, r5, 1
/* 802F8698 002F55F8  42 00 FF FC */	bdnz lbl_802F8694
lbl_802F869C:
/* 802F869C 002F55FC  28 03 00 00 */	cmplwi r3, 0
/* 802F86A0 002F5600  41 82 00 08 */	beq lbl_802F86A8
/* 802F86A4 002F5604  48 01 D2 8D */	bl Free__7CMemoryFPCv
lbl_802F86A8:
/* 802F86A8 002F5608  3B 9C 00 01 */	addi r28, r28, 1
lbl_802F86AC:
/* 802F86AC 002F560C  88 1E 00 01 */	lbz r0, 1(r30)
/* 802F86B0 002F5610  7C 00 07 74 */	extsb r0, r0
/* 802F86B4 002F5614  7C 1C 00 00 */	cmpw r28, r0
/* 802F86B8 002F5618  41 80 FF 7C */	blt lbl_802F8634
/* 802F86BC 002F561C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F86C0 002F5620  7F C3 F3 78 */	mr r3, r30
/* 802F86C4 002F5624  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 802F86C8 002F5628  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 802F86CC 002F562C  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 802F86D0 002F5630  83 81 00 40 */	lwz r28, 0x40(r1)
/* 802F86D4 002F5634  7C 08 03 A6 */	mtlr r0
/* 802F86D8 002F5638  38 21 00 50 */	addi r1, r1, 0x50
/* 802F86DC 002F563C  4E 80 00 20 */	blr

.global "reserve__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl42vector<6CSegId,Q24rstl17rmemory_allocator>Fi":
/* 802F86E0 002F5640  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F86E4 002F5644  7C 08 02 A6 */	mflr r0
/* 802F86E8 002F5648  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F86EC 002F564C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F86F0 002F5650  7C 9F 23 78 */	mr r31, r4
/* 802F86F4 002F5654  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802F86F8 002F5658  7C 7E 1B 78 */	mr r30, r3
/* 802F86FC 002F565C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802F8700 002F5660  80 03 00 08 */	lwz r0, 8(r3)
/* 802F8704 002F5664  7C 1F 00 00 */	cmpw r31, r0
/* 802F8708 002F5668  40 81 00 A8 */	ble lbl_802F87B0
/* 802F870C 002F566C  7F E3 FB 79 */	or. r3, r31, r31
/* 802F8710 002F5670  40 82 00 0C */	bne lbl_802F871C
/* 802F8714 002F5674  3B A0 00 00 */	li r29, 0
/* 802F8718 002F5678  48 00 00 18 */	b lbl_802F8730
lbl_802F871C:
/* 802F871C 002F567C  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F8720 002F5680  38 A0 00 00 */	li r5, 0
/* 802F8724 002F5684  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F8728 002F5688  48 01 D0 F1 */	bl __nwa__FUlPCcPCc
/* 802F872C 002F568C  7C 7D 1B 78 */	mr r29, r3
lbl_802F8730:
/* 802F8730 002F5690  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802F8734 002F5694  7F A4 EB 78 */	mr r4, r29
/* 802F8738 002F5698  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F873C 002F569C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 802F8740 002F56A0  7C 65 02 14 */	add r3, r5, r0
/* 802F8744 002F56A4  7C 05 18 50 */	subf r0, r5, r3
/* 802F8748 002F56A8  90 61 00 08 */	stw r3, 8(r1)
/* 802F874C 002F56AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F8750 002F56B0  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802F8754 002F56B4  7C 09 03 A6 */	mtctr r0
/* 802F8758 002F56B8  7C 05 18 40 */	cmplw r5, r3
/* 802F875C 002F56BC  41 82 00 20 */	beq lbl_802F877C
lbl_802F8760:
/* 802F8760 002F56C0  28 04 00 00 */	cmplwi r4, 0
/* 802F8764 002F56C4  41 82 00 0C */	beq lbl_802F8770
/* 802F8768 002F56C8  88 05 00 00 */	lbz r0, 0(r5)
/* 802F876C 002F56CC  98 04 00 00 */	stb r0, 0(r4)
lbl_802F8770:
/* 802F8770 002F56D0  38 84 00 01 */	addi r4, r4, 1
/* 802F8774 002F56D4  38 A5 00 01 */	addi r5, r5, 1
/* 802F8778 002F56D8  42 00 FF E8 */	bdnz lbl_802F8760
lbl_802F877C:
/* 802F877C 002F56DC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F8780 002F56E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F8784 002F56E4  7C 83 02 14 */	add r4, r3, r0
/* 802F8788 002F56E8  7C 03 20 50 */	subf r0, r3, r4
/* 802F878C 002F56EC  7C 09 03 A6 */	mtctr r0
/* 802F8790 002F56F0  7C 03 20 40 */	cmplw r3, r4
/* 802F8794 002F56F4  41 82 00 08 */	beq lbl_802F879C
lbl_802F8798:
/* 802F8798 002F56F8  42 00 00 00 */	bdnz lbl_802F8798
lbl_802F879C:
/* 802F879C 002F56FC  28 03 00 00 */	cmplwi r3, 0
/* 802F87A0 002F5700  41 82 00 08 */	beq lbl_802F87A8
/* 802F87A4 002F5704  48 01 D1 8D */	bl Free__7CMemoryFPCv
lbl_802F87A8:
/* 802F87A8 002F5708  93 BE 00 0C */	stw r29, 0xc(r30)
/* 802F87AC 002F570C  93 FE 00 08 */	stw r31, 8(r30)
lbl_802F87B0:
/* 802F87B0 002F5710  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F87B4 002F5714  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F87B8 002F5718  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802F87BC 002F571C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802F87C0 002F5720  7C 08 03 A6 */	mtlr r0
/* 802F87C4 002F5724  38 21 00 30 */	addi r1, r1, 0x30
/* 802F87C8 002F5728  4E 80 00 20 */	blr

.global sub_802f87cc
sub_802f87cc:
/* 802F87CC 002F572C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F87D0 002F5730  7C 08 02 A6 */	mflr r0
/* 802F87D4 002F5734  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F87D8 002F5738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F87DC 002F573C  7C 9F 23 78 */	mr r31, r4
/* 802F87E0 002F5740  93 C1 00 08 */	stw r30, 8(r1)
/* 802F87E4 002F5744  7C 7E 1B 78 */	mr r30, r3
/* 802F87E8 002F5748  80 84 00 00 */	lwz r4, 0(r4)
/* 802F87EC 002F574C  28 04 00 00 */	cmplwi r4, 0
/* 802F87F0 002F5750  41 82 00 08 */	beq lbl_802F87F8
/* 802F87F4 002F5754  4B FF FF D9 */	bl sub_802f87cc
lbl_802F87F8:
/* 802F87F8 002F5758  80 9F 00 04 */	lwz r4, 4(r31)
/* 802F87FC 002F575C  28 04 00 00 */	cmplwi r4, 0
/* 802F8800 002F5760  41 82 00 0C */	beq lbl_802F880C
/* 802F8804 002F5764  7F C3 F3 78 */	mr r3, r30
/* 802F8808 002F5768  4B FF FF C5 */	bl sub_802f87cc
lbl_802F880C:
/* 802F880C 002F576C  28 1F 00 00 */	cmplwi r31, 0
/* 802F8810 002F5770  41 82 00 1C */	beq lbl_802F882C
/* 802F8814 002F5774  34 1F 00 10 */	addic. r0, r31, 0x10
/* 802F8818 002F5778  41 82 00 14 */	beq lbl_802F882C
/* 802F881C 002F577C  34 1F 00 10 */	addic. r0, r31, 0x10
/* 802F8820 002F5780  41 82 00 0C */	beq lbl_802F882C
/* 802F8824 002F5784  38 7F 00 10 */	addi r3, r31, 0x10
/* 802F8828 002F5788  48 04 52 B9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F882C:
/* 802F882C 002F578C  28 1F 00 00 */	cmplwi r31, 0
/* 802F8830 002F5790  41 82 00 0C */	beq lbl_802F883C
/* 802F8834 002F5794  7F E3 FB 78 */	mr r3, r31
/* 802F8838 002F5798  48 01 D0 F9 */	bl Free__7CMemoryFPCv
lbl_802F883C:
/* 802F883C 002F579C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F8840 002F57A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F8844 002F57A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8848 002F57A8  7C 08 03 A6 */	mtlr r0
/* 802F884C 002F57AC  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8850 002F57B0  4E 80 00 20 */	blr

.global sub_802f8854
sub_802f8854:
/* 802F8854 002F57B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F8858 002F57B8  7C 08 02 A6 */	mflr r0
/* 802F885C 002F57BC  28 05 00 00 */	cmplwi r5, 0
/* 802F8860 002F57C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F8864 002F57C4  BF 41 00 08 */	stmw r26, 8(r1)
/* 802F8868 002F57C8  7C 7C 1B 78 */	mr r28, r3
/* 802F886C 002F57CC  7C 9D 23 78 */	mr r29, r4
/* 802F8870 002F57D0  7C DE 33 78 */	mr r30, r6
/* 802F8874 002F57D4  40 82 00 8C */	bne lbl_802F8900
/* 802F8878 002F57D8  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F887C 002F57DC  38 60 00 24 */	li r3, 0x24
/* 802F8880 002F57E0  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F8884 002F57E4  38 A0 00 00 */	li r5, 0
/* 802F8888 002F57E8  48 01 CF 91 */	bl __nwa__FUlPCcPCc
/* 802F888C 002F57EC  7C 7B 1B 79 */	or. r27, r3, r3
/* 802F8890 002F57F0  41 82 00 34 */	beq lbl_802F88C4
/* 802F8894 002F57F4  38 00 00 00 */	li r0, 0
/* 802F8898 002F57F8  37 FB 00 10 */	addic. r31, r27, 0x10
/* 802F889C 002F57FC  90 1B 00 00 */	stw r0, 0(r27)
/* 802F88A0 002F5800  90 1B 00 04 */	stw r0, 4(r27)
/* 802F88A4 002F5804  90 1B 00 08 */	stw r0, 8(r27)
/* 802F88A8 002F5808  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802F88AC 002F580C  41 82 00 18 */	beq lbl_802F88C4
/* 802F88B0 002F5810  7F E3 FB 78 */	mr r3, r31
/* 802F88B4 002F5814  7F C4 F3 78 */	mr r4, r30
/* 802F88B8 002F5818  48 04 58 A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F88BC 002F581C  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 802F88C0 002F5820  98 1F 00 10 */	stb r0, 0x10(r31)
lbl_802F88C4:
/* 802F88C4 002F5824  93 7D 00 10 */	stw r27, 0x10(r29)
/* 802F88C8 002F5828  38 1D 00 08 */	addi r0, r29, 8
/* 802F88CC 002F582C  80 7D 00 04 */	lwz r3, 4(r29)
/* 802F88D0 002F5830  38 63 00 01 */	addi r3, r3, 1
/* 802F88D4 002F5834  90 7D 00 04 */	stw r3, 4(r29)
/* 802F88D8 002F5838  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802F88DC 002F583C  90 7D 00 08 */	stw r3, 8(r29)
/* 802F88E0 002F5840  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802F88E4 002F5844  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802F88E8 002F5848  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802F88EC 002F584C  90 7C 00 00 */	stw r3, 0(r28)
/* 802F88F0 002F5850  90 1C 00 04 */	stw r0, 4(r28)
/* 802F88F4 002F5854  88 0D 9C 12 */	lbz r0, lbl_805A87D2@sda21(r13)
/* 802F88F8 002F5858  98 1C 00 08 */	stb r0, 8(r28)
/* 802F88FC 002F585C  48 00 01 94 */	b lbl_802F8A90
lbl_802F8900:
/* 802F8900 002F5860  7C BF 2B 78 */	mr r31, r5
/* 802F8904 002F5864  3B 40 00 00 */	li r26, 0
/* 802F8908 002F5868  48 00 01 54 */	b lbl_802F8A5C
lbl_802F890C:
/* 802F890C 002F586C  7F C4 F3 78 */	mr r4, r30
/* 802F8910 002F5870  38 7D 00 01 */	addi r3, r29, 1
/* 802F8914 002F5874  38 BF 00 10 */	addi r5, r31, 0x10
/* 802F8918 002F5878  4B D3 1E 11 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 802F891C 002F587C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F8920 002F5880  7C 7B 1B 78 */	mr r27, r3
/* 802F8924 002F5884  40 82 00 34 */	bne lbl_802F8958
/* 802F8928 002F5888  7F C5 F3 78 */	mr r5, r30
/* 802F892C 002F588C  38 7D 00 01 */	addi r3, r29, 1
/* 802F8930 002F5890  38 9F 00 10 */	addi r4, r31, 0x10
/* 802F8934 002F5894  4B D3 1D F5 */	bl "__cl__Q24rstl140select1st<Q24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>>CFRCQ24rstl119pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl28auto_ptr<16CParticleGenInfo>>"
/* 802F8938 002F5898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F893C 002F589C  40 82 00 1C */	bne lbl_802F8958
/* 802F8940 002F58A0  93 FC 00 00 */	stw r31, 0(r28)
/* 802F8944 002F58A4  38 1D 00 08 */	addi r0, r29, 8
/* 802F8948 002F58A8  90 1C 00 04 */	stw r0, 4(r28)
/* 802F894C 002F58AC  88 0D 9C 13 */	lbz r0, lbl_805A87D3@sda21(r13)
/* 802F8950 002F58B0  98 1C 00 08 */	stb r0, 8(r28)
/* 802F8954 002F58B4  48 00 01 3C */	b lbl_802F8A90
lbl_802F8958:
/* 802F8958 002F58B8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802F895C 002F58BC  41 82 00 84 */	beq lbl_802F89E0
/* 802F8960 002F58C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802F8964 002F58C4  28 00 00 00 */	cmplwi r0, 0
/* 802F8968 002F58C8  40 82 00 70 */	bne lbl_802F89D8
/* 802F896C 002F58CC  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F8970 002F58D0  38 60 00 24 */	li r3, 0x24
/* 802F8974 002F58D4  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F8978 002F58D8  38 A0 00 00 */	li r5, 0
/* 802F897C 002F58DC  48 01 CE 9D */	bl __nwa__FUlPCcPCc
/* 802F8980 002F58E0  7C 7B 1B 79 */	or. r27, r3, r3
/* 802F8984 002F58E4  41 82 00 38 */	beq lbl_802F89BC
/* 802F8988 002F58E8  38 60 00 00 */	li r3, 0
/* 802F898C 002F58EC  37 5B 00 10 */	addic. r26, r27, 0x10
/* 802F8990 002F58F0  90 7B 00 00 */	stw r3, 0(r27)
/* 802F8994 002F58F4  38 00 00 01 */	li r0, 1
/* 802F8998 002F58F8  90 7B 00 04 */	stw r3, 4(r27)
/* 802F899C 002F58FC  93 FB 00 08 */	stw r31, 8(r27)
/* 802F89A0 002F5900  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802F89A4 002F5904  41 82 00 18 */	beq lbl_802F89BC
/* 802F89A8 002F5908  7F 43 D3 78 */	mr r3, r26
/* 802F89AC 002F590C  7F C4 F3 78 */	mr r4, r30
/* 802F89B0 002F5910  48 04 57 B1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F89B4 002F5914  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 802F89B8 002F5918  98 1A 00 10 */	stb r0, 0x10(r26)
lbl_802F89BC:
/* 802F89BC 002F591C  93 7F 00 00 */	stw r27, 0(r31)
/* 802F89C0 002F5920  7F 7A DB 78 */	mr r26, r27
/* 802F89C4 002F5924  80 1D 00 08 */	lwz r0, 8(r29)
/* 802F89C8 002F5928  7C 1F 00 40 */	cmplw r31, r0
/* 802F89CC 002F592C  40 82 00 90 */	bne lbl_802F8A5C
/* 802F89D0 002F5930  93 7D 00 08 */	stw r27, 8(r29)
/* 802F89D4 002F5934  48 00 00 88 */	b lbl_802F8A5C
lbl_802F89D8:
/* 802F89D8 002F5938  7C 1F 03 78 */	mr r31, r0
/* 802F89DC 002F593C  48 00 00 80 */	b lbl_802F8A5C
lbl_802F89E0:
/* 802F89E0 002F5940  80 1F 00 04 */	lwz r0, 4(r31)
/* 802F89E4 002F5944  28 00 00 00 */	cmplwi r0, 0
/* 802F89E8 002F5948  40 82 00 70 */	bne lbl_802F8A58
/* 802F89EC 002F594C  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F89F0 002F5950  38 60 00 24 */	li r3, 0x24
/* 802F89F4 002F5954  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F89F8 002F5958  38 A0 00 00 */	li r5, 0
/* 802F89FC 002F595C  48 01 CE 1D */	bl __nwa__FUlPCcPCc
/* 802F8A00 002F5960  7C 7B 1B 79 */	or. r27, r3, r3
/* 802F8A04 002F5964  41 82 00 38 */	beq lbl_802F8A3C
/* 802F8A08 002F5968  38 60 00 00 */	li r3, 0
/* 802F8A0C 002F596C  37 5B 00 10 */	addic. r26, r27, 0x10
/* 802F8A10 002F5970  90 7B 00 00 */	stw r3, 0(r27)
/* 802F8A14 002F5974  38 00 00 01 */	li r0, 1
/* 802F8A18 002F5978  90 7B 00 04 */	stw r3, 4(r27)
/* 802F8A1C 002F597C  93 FB 00 08 */	stw r31, 8(r27)
/* 802F8A20 002F5980  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802F8A24 002F5984  41 82 00 18 */	beq lbl_802F8A3C
/* 802F8A28 002F5988  7F 43 D3 78 */	mr r3, r26
/* 802F8A2C 002F598C  7F C4 F3 78 */	mr r4, r30
/* 802F8A30 002F5990  48 04 57 31 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F8A34 002F5994  88 1E 00 10 */	lbz r0, 0x10(r30)
/* 802F8A38 002F5998  98 1A 00 10 */	stb r0, 0x10(r26)
lbl_802F8A3C:
/* 802F8A3C 002F599C  93 7F 00 04 */	stw r27, 4(r31)
/* 802F8A40 002F59A0  7F 7A DB 78 */	mr r26, r27
/* 802F8A44 002F59A4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802F8A48 002F59A8  7C 1F 00 40 */	cmplw r31, r0
/* 802F8A4C 002F59AC  40 82 00 10 */	bne lbl_802F8A5C
/* 802F8A50 002F59B0  93 7D 00 0C */	stw r27, 0xc(r29)
/* 802F8A54 002F59B4  48 00 00 08 */	b lbl_802F8A5C
lbl_802F8A58:
/* 802F8A58 002F59B8  7C 1F 03 78 */	mr r31, r0
lbl_802F8A5C:
/* 802F8A5C 002F59BC  28 1A 00 00 */	cmplwi r26, 0
/* 802F8A60 002F59C0  41 82 FE AC */	beq lbl_802F890C
/* 802F8A64 002F59C4  80 BD 00 04 */	lwz r5, 4(r29)
/* 802F8A68 002F59C8  7F 44 D3 78 */	mr r4, r26
/* 802F8A6C 002F59CC  38 7D 00 08 */	addi r3, r29, 8
/* 802F8A70 002F59D0  38 05 00 01 */	addi r0, r5, 1
/* 802F8A74 002F59D4  90 1D 00 04 */	stw r0, 4(r29)
/* 802F8A78 002F59D8  48 04 40 21 */	bl rbtree_rebalance__4rstlFPvPv
/* 802F8A7C 002F59DC  93 5C 00 00 */	stw r26, 0(r28)
/* 802F8A80 002F59E0  38 1D 00 08 */	addi r0, r29, 8
/* 802F8A84 002F59E4  90 1C 00 04 */	stw r0, 4(r28)
/* 802F8A88 002F59E8  88 0D 9C 14 */	lbz r0, lbl_805A87D4@sda21(r13)
/* 802F8A8C 002F59EC  98 1C 00 08 */	stb r0, 8(r28)
lbl_802F8A90:
/* 802F8A90 002F59F0  BB 41 00 08 */	lmw r26, 8(r1)
/* 802F8A94 002F59F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F8A98 002F59F8  7C 08 03 A6 */	mtlr r0
/* 802F8A9C 002F59FC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F8AA0 002F5A00  4E 80 00 20 */	blr

.global "insert__28TSegIdMap<15CCharLayoutNode>FRC6CSegIdRC15CCharLayoutNode"
"insert__28TSegIdMap<15CCharLayoutNode>FRC6CSegIdRC15CCharLayoutNode":
/* 802F8AA4 002F5A04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8AA8 002F5A08  7C 08 02 A6 */	mflr r0
/* 802F8AAC 002F5A0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F8AB0 002F5A10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F8AB4 002F5A14  93 C1 00 08 */	stw r30, 8(r1)
/* 802F8AB8 002F5A18  7C 7E 1B 78 */	mr r30, r3
/* 802F8ABC 002F5A1C  88 03 00 00 */	lbz r0, 0(r3)
/* 802F8AC0 002F5A20  80 63 00 D0 */	lwz r3, 0xd0(r3)
/* 802F8AC4 002F5A24  7C 00 07 74 */	extsb r0, r0
/* 802F8AC8 002F5A28  8B E4 00 00 */	lbz r31, 0(r4)
/* 802F8ACC 002F5A2C  54 00 28 34 */	slwi r0, r0, 5
/* 802F8AD0 002F5A30  7C 63 02 15 */	add. r3, r3, r0
/* 802F8AD4 002F5A34  41 82 00 0C */	beq lbl_802F8AE0
/* 802F8AD8 002F5A38  7C A4 2B 78 */	mr r4, r5
/* 802F8ADC 002F5A3C  48 00 00 45 */	bl __ct__15CCharLayoutNodeFRC15CCharLayoutNode
lbl_802F8AE0:
/* 802F8AE0 002F5A40  57 E3 0D FC */	rlwinm r3, r31, 1, 0x17, 0x1e
/* 802F8AE4 002F5A44  88 9E 00 00 */	lbz r4, 0(r30)
/* 802F8AE8 002F5A48  88 1E 00 D4 */	lbz r0, 0xd4(r30)
/* 802F8AEC 002F5A4C  7C 7E 1A 14 */	add r3, r30, r3
/* 802F8AF0 002F5A50  98 03 00 08 */	stb r0, 8(r3)
/* 802F8AF4 002F5A54  98 83 00 09 */	stb r4, 9(r3)
/* 802F8AF8 002F5A58  9B FE 00 D4 */	stb r31, 0xd4(r30)
/* 802F8AFC 002F5A5C  88 7E 00 00 */	lbz r3, 0(r30)
/* 802F8B00 002F5A60  38 03 00 01 */	addi r0, r3, 1
/* 802F8B04 002F5A64  98 1E 00 00 */	stb r0, 0(r30)
/* 802F8B08 002F5A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F8B0C 002F5A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F8B10 002F5A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8B14 002F5A74  7C 08 03 A6 */	mtlr r0
/* 802F8B18 002F5A78  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8B1C 002F5A7C  4E 80 00 20 */	blr

.global __ct__15CCharLayoutNodeFRC15CCharLayoutNode
__ct__15CCharLayoutNodeFRC15CCharLayoutNode:
/* 802F8B20 002F5A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F8B24 002F5A84  7C 08 02 A6 */	mflr r0
/* 802F8B28 002F5A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F8B2C 002F5A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F8B30 002F5A90  7C 9F 23 78 */	mr r31, r4
/* 802F8B34 002F5A94  93 C1 00 08 */	stw r30, 8(r1)
/* 802F8B38 002F5A98  7C 7E 1B 78 */	mr r30, r3
/* 802F8B3C 002F5A9C  88 04 00 00 */	lbz r0, 0(r4)
/* 802F8B40 002F5AA0  98 03 00 00 */	stb r0, 0(r3)
/* 802F8B44 002F5AA4  C0 04 00 04 */	lfs f0, 4(r4)
/* 802F8B48 002F5AA8  D0 03 00 04 */	stfs f0, 4(r3)
/* 802F8B4C 002F5AAC  C0 04 00 08 */	lfs f0, 8(r4)
/* 802F8B50 002F5AB0  D0 03 00 08 */	stfs f0, 8(r3)
/* 802F8B54 002F5AB4  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 802F8B58 002F5AB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802F8B5C 002F5ABC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802F8B60 002F5AC0  90 03 00 14 */	stw r0, 0x14(r3)
/* 802F8B64 002F5AC4  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802F8B68 002F5AC8  90 03 00 18 */	stw r0, 0x18(r3)
/* 802F8B6C 002F5ACC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802F8B70 002F5AD0  2C 00 00 00 */	cmpwi r0, 0
/* 802F8B74 002F5AD4  40 82 00 1C */	bne lbl_802F8B90
/* 802F8B78 002F5AD8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 802F8B7C 002F5ADC  2C 00 00 00 */	cmpwi r0, 0
/* 802F8B80 002F5AE0  40 82 00 10 */	bne lbl_802F8B90
/* 802F8B84 002F5AE4  38 00 00 00 */	li r0, 0
/* 802F8B88 002F5AE8  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802F8B8C 002F5AEC  48 00 00 64 */	b lbl_802F8BF0
lbl_802F8B90:
/* 802F8B90 002F5AF0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802F8B94 002F5AF4  2C 03 00 00 */	cmpwi r3, 0
/* 802F8B98 002F5AF8  40 82 00 10 */	bne lbl_802F8BA8
/* 802F8B9C 002F5AFC  38 00 00 00 */	li r0, 0
/* 802F8BA0 002F5B00  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802F8BA4 002F5B04  48 00 00 18 */	b lbl_802F8BBC
lbl_802F8BA8:
/* 802F8BA8 002F5B08  3C 80 80 3D */	lis r4, lbl_803D6E28@ha
/* 802F8BAC 002F5B0C  38 A0 00 00 */	li r5, 0
/* 802F8BB0 002F5B10  38 84 6E 28 */	addi r4, r4, lbl_803D6E28@l
/* 802F8BB4 002F5B14  48 01 CC 65 */	bl __nwa__FUlPCcPCc
/* 802F8BB8 002F5B18  90 7E 00 1C */	stw r3, 0x1c(r30)
lbl_802F8BBC:
/* 802F8BBC 002F5B1C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802F8BC0 002F5B20  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802F8BC4 002F5B24  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802F8BC8 002F5B28  7C 09 03 A6 */	mtctr r0
/* 802F8BCC 002F5B2C  2C 00 00 00 */	cmpwi r0, 0
/* 802F8BD0 002F5B30  40 81 00 20 */	ble lbl_802F8BF0
lbl_802F8BD4:
/* 802F8BD4 002F5B34  28 03 00 00 */	cmplwi r3, 0
/* 802F8BD8 002F5B38  41 82 00 0C */	beq lbl_802F8BE4
/* 802F8BDC 002F5B3C  88 04 00 00 */	lbz r0, 0(r4)
/* 802F8BE0 002F5B40  98 03 00 00 */	stb r0, 0(r3)
lbl_802F8BE4:
/* 802F8BE4 002F5B44  38 63 00 01 */	addi r3, r3, 1
/* 802F8BE8 002F5B48  38 84 00 01 */	addi r4, r4, 1
/* 802F8BEC 002F5B4C  42 00 FF E8 */	bdnz lbl_802F8BD4
lbl_802F8BF0:
/* 802F8BF0 002F5B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F8BF4 002F5B54  7F C3 F3 78 */	mr r3, r30
/* 802F8BF8 002F5B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F8BFC 002F5B5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F8C00 002F5B60  7C 08 03 A6 */	mtlr r0
/* 802F8C04 002F5B64  38 21 00 10 */	addi r1, r1, 0x10
/* 802F8C08 002F5B68  4E 80 00 20 */	blr

.global sub_802f8c0c
sub_802f8c0c:
/* 802F8C0C 002F5B6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F8C10 002F5B70  7C 08 02 A6 */	mflr r0
/* 802F8C14 002F5B74  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F8C18 002F5B78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F8C1C 002F5B7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802F8C20 002F5B80  7C 9E 23 78 */	mr r30, r4
/* 802F8C24 002F5B84  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802F8C28 002F5B88  7C 7D 1B 79 */	or. r29, r3, r3
/* 802F8C2C 002F5B8C  93 81 00 20 */	stw r28, 0x20(r1)
/* 802F8C30 002F5B90  41 82 00 F8 */	beq lbl_802F8D28
/* 802F8C34 002F5B94  88 7D 00 D4 */	lbz r3, 0xd4(r29)
/* 802F8C38 002F5B98  3B FD 00 08 */	addi r31, r29, 8
/* 802F8C3C 002F5B9C  48 00 00 70 */	b lbl_802F8CAC
lbl_802F8C40:
/* 802F8C40 002F5BA0  54 7C 0D FC */	rlwinm r28, r3, 1, 0x17, 0x1e
/* 802F8C44 002F5BA4  80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 802F8C48 002F5BA8  7C 9F E2 14 */	add r4, r31, r28
/* 802F8C4C 002F5BAC  88 04 00 01 */	lbz r0, 1(r4)
/* 802F8C50 002F5BB0  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 802F8C54 002F5BB4  7C 83 02 15 */	add. r4, r3, r0
/* 802F8C58 002F5BB8  41 82 00 50 */	beq lbl_802F8CA8
/* 802F8C5C 002F5BBC  34 04 00 10 */	addic. r0, r4, 0x10
/* 802F8C60 002F5BC0  41 82 00 48 */	beq lbl_802F8CA8
/* 802F8C64 002F5BC4  80 64 00 1C */	lwz r3, 0x1c(r4)
/* 802F8C68 002F5BC8  80 04 00 14 */	lwz r0, 0x14(r4)
/* 802F8C6C 002F5BCC  7C 65 1B 78 */	mr r5, r3
/* 802F8C70 002F5BD0  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F8C74 002F5BD4  7C 83 02 14 */	add r4, r3, r0
/* 802F8C78 002F5BD8  7C 03 20 50 */	subf r0, r3, r4
/* 802F8C7C 002F5BDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 802F8C80 002F5BE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 802F8C84 002F5BE4  90 61 00 08 */	stw r3, 8(r1)
/* 802F8C88 002F5BE8  7C 09 03 A6 */	mtctr r0
/* 802F8C8C 002F5BEC  7C 03 20 40 */	cmplw r3, r4
/* 802F8C90 002F5BF0  41 82 00 0C */	beq lbl_802F8C9C
lbl_802F8C94:
/* 802F8C94 002F5BF4  38 A5 00 01 */	addi r5, r5, 1
/* 802F8C98 002F5BF8  42 00 FF FC */	bdnz lbl_802F8C94
lbl_802F8C9C:
/* 802F8C9C 002F5BFC  28 03 00 00 */	cmplwi r3, 0
/* 802F8CA0 002F5C00  41 82 00 08 */	beq lbl_802F8CA8
/* 802F8CA4 002F5C04  48 01 CC 8D */	bl Free__7CMemoryFPCv
lbl_802F8CA8:
/* 802F8CA8 002F5C08  7C 7F E0 AE */	lbzx r3, r31, r28
lbl_802F8CAC:
/* 802F8CAC 002F5C0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F8CB0 002F5C10  40 82 FF 90 */	bne lbl_802F8C40
/* 802F8CB4 002F5C14  80 7D 00 D0 */	lwz r3, 0xd0(r29)
/* 802F8CB8 002F5C18  48 01 CC 79 */	bl Free__7CMemoryFPCv
/* 802F8CBC 002F5C1C  34 1D 00 04 */	addic. r0, r29, 4
/* 802F8CC0 002F5C20  41 82 00 58 */	beq lbl_802F8D18
/* 802F8CC4 002F5C24  80 BD 00 04 */	lwz r5, 4(r29)
/* 802F8CC8 002F5C28  38 60 00 00 */	li r3, 0
/* 802F8CCC 002F5C2C  2C 05 00 00 */	cmpwi r5, 0
/* 802F8CD0 002F5C30  40 81 00 40 */	ble lbl_802F8D10
/* 802F8CD4 002F5C34  2C 05 00 08 */	cmpwi r5, 8
/* 802F8CD8 002F5C38  38 85 FF F8 */	addi r4, r5, -8
/* 802F8CDC 002F5C3C  40 81 00 20 */	ble lbl_802F8CFC
/* 802F8CE0 002F5C40  38 04 00 07 */	addi r0, r4, 7
/* 802F8CE4 002F5C44  54 00 E8 FE */	srwi r0, r0, 3
/* 802F8CE8 002F5C48  7C 09 03 A6 */	mtctr r0
/* 802F8CEC 002F5C4C  2C 04 00 00 */	cmpwi r4, 0
/* 802F8CF0 002F5C50  40 81 00 0C */	ble lbl_802F8CFC
lbl_802F8CF4:
/* 802F8CF4 002F5C54  38 63 00 08 */	addi r3, r3, 8
/* 802F8CF8 002F5C58  42 00 FF FC */	bdnz lbl_802F8CF4
lbl_802F8CFC:
/* 802F8CFC 002F5C5C  7C 03 28 50 */	subf r0, r3, r5
/* 802F8D00 002F5C60  7C 09 03 A6 */	mtctr r0
/* 802F8D04 002F5C64  7C 03 28 00 */	cmpw r3, r5
/* 802F8D08 002F5C68  40 80 00 08 */	bge lbl_802F8D10
lbl_802F8D0C:
/* 802F8D0C 002F5C6C  42 00 00 00 */	bdnz lbl_802F8D0C
lbl_802F8D10:
/* 802F8D10 002F5C70  38 00 00 00 */	li r0, 0
/* 802F8D14 002F5C74  90 1D 00 04 */	stw r0, 4(r29)
lbl_802F8D18:
/* 802F8D18 002F5C78  7F C0 07 35 */	extsh. r0, r30
/* 802F8D1C 002F5C7C  40 81 00 0C */	ble lbl_802F8D28
/* 802F8D20 002F5C80  7F A3 EB 78 */	mr r3, r29
/* 802F8D24 002F5C84  48 01 CC 0D */	bl Free__7CMemoryFPCv
lbl_802F8D28:
/* 802F8D28 002F5C88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F8D2C 002F5C8C  7F A3 EB 78 */	mr r3, r29
/* 802F8D30 002F5C90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F8D34 002F5C94  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802F8D38 002F5C98  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802F8D3C 002F5C9C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802F8D40 002F5CA0  7C 08 03 A6 */	mtlr r0
/* 802F8D44 002F5CA4  38 21 00 30 */	addi r1, r1, 0x30
/* 802F8D48 002F5CA8  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6E28
lbl_803D6E28:
	# ROM: 0x3D3E28
	.asciz "??(??)"
	.balign 4


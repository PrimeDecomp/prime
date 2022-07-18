.include "macros.inc"

.section .data

.global lbl_803ECD90
lbl_803ECD90:
	# ROM: 0x3E9D90
	.4byte 0
	.4byte 0
	.4byte __dt__18CMetaTransMetaAnimFv
	.4byte "VGetTransitionTree__18CMetaTransMetaAnimCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
	.4byte GetType__18CMetaTransMetaAnimCFv
	.4byte WriteTransData__18CMetaTransMetaAnimCFR13COutputStream

.section .text, "ax"

.global __dt__18CMetaTransMetaAnimFv
__dt__18CMetaTransMetaAnimFv:
/* 802E1FDC 002DEF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1FE0 002DEF40  7C 08 02 A6 */	mflr r0
/* 802E1FE4 002DEF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1FE8 002DEF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1FEC 002DEF4C  7C 9F 23 78 */	mr r31, r4
/* 802E1FF0 002DEF50  93 C1 00 08 */	stw r30, 8(r1)
/* 802E1FF4 002DEF54  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E1FF8 002DEF58  41 82 00 44 */	beq lbl_802E203C
/* 802E1FFC 002DEF5C  3C 60 80 3F */	lis r3, lbl_803ECD90@ha
/* 802E2000 002DEF60  34 1E 00 04 */	addic. r0, r30, 4
/* 802E2004 002DEF64  38 03 CD 90 */	addi r0, r3, lbl_803ECD90@l
/* 802E2008 002DEF68  90 1E 00 00 */	stw r0, 0(r30)
/* 802E200C 002DEF6C  41 82 00 0C */	beq lbl_802E2018
/* 802E2010 002DEF70  38 7E 00 04 */	addi r3, r30, 4
/* 802E2014 002DEF74  4B D4 EF 1D */	bl sub_80030f30
lbl_802E2018:
/* 802E2018 002DEF78  28 1E 00 00 */	cmplwi r30, 0
/* 802E201C 002DEF7C  41 82 00 10 */	beq lbl_802E202C
/* 802E2020 002DEF80  3C 60 80 3E */	lis r3, lbl_803D9C70@ha
/* 802E2024 002DEF84  38 03 9C 70 */	addi r0, r3, lbl_803D9C70@l
/* 802E2028 002DEF88  90 1E 00 00 */	stw r0, 0(r30)
lbl_802E202C:
/* 802E202C 002DEF8C  7F E0 07 35 */	extsh. r0, r31
/* 802E2030 002DEF90  40 81 00 0C */	ble lbl_802E203C
/* 802E2034 002DEF94  7F C3 F3 78 */	mr r3, r30
/* 802E2038 002DEF98  48 03 38 F9 */	bl Free__7CMemoryFPCv
lbl_802E203C:
/* 802E203C 002DEF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E2040 002DEFA0  7F C3 F3 78 */	mr r3, r30
/* 802E2044 002DEFA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E2048 002DEFA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E204C 002DEFAC  7C 08 03 A6 */	mtlr r0
/* 802E2050 002DEFB0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2054 002DEFB4  4E 80 00 20 */	blr

.global GetType__18CMetaTransMetaAnimCFv
GetType__18CMetaTransMetaAnimCFv:
/* 802E2058 002DEFB8  38 60 00 00 */	li r3, 0
/* 802E205C 002DEFBC  4E 80 00 20 */	blr

.global WriteTransData__18CMetaTransMetaAnimCFR13COutputStream
WriteTransData__18CMetaTransMetaAnimCFR13COutputStream:
/* 802E2060 002DEFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E2064 002DEFC4  7C 08 02 A6 */	mflr r0
/* 802E2068 002DEFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E206C 002DEFCC  80 63 00 04 */	lwz r3, 4(r3)
/* 802E2070 002DEFD0  80 63 00 00 */	lwz r3, 0(r3)
/* 802E2074 002DEFD4  48 00 52 AD */	bl PutTo__9IMetaAnimCFR13COutputStream
/* 802E2078 002DEFD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E207C 002DEFDC  7C 08 03 A6 */	mtlr r0
/* 802E2080 002DEFE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802E2084 002DEFE4  4E 80 00 20 */	blr

.global "VGetTransitionTree__18CMetaTransMetaAnimCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext"
"VGetTransitionTree__18CMetaTransMetaAnimCFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContext":
/* 802E2088 002DEFE8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802E208C 002DEFEC  7C 08 02 A6 */	mflr r0
/* 802E2090 002DEFF0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802E2094 002DEFF4  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 802E2098 002DEFF8  7C 7F 1B 78 */	mr r31, r3
/* 802E209C 002DEFFC  7C 9E 23 78 */	mr r30, r4
/* 802E20A0 002DF000  7C BB 2B 78 */	mr r27, r5
/* 802E20A4 002DF004  7C DC 33 78 */	mr r28, r6
/* 802E20A8 002DF008  7C FD 3B 78 */	mr r29, r7
/* 802E20AC 002DF00C  38 61 00 20 */	addi r3, r1, 0x20
/* 802E20B0 002DF010  48 00 57 69 */	bl NoSpecialOrders__24CMetaAnimTreeBuildOrdersFv
/* 802E20B4 002DF014  80 9E 00 04 */	lwz r4, 4(r30)
/* 802E20B8 002DF018  7F A5 EB 78 */	mr r5, r29
/* 802E20BC 002DF01C  38 61 00 08 */	addi r3, r1, 8
/* 802E20C0 002DF020  38 C1 00 20 */	addi r6, r1, 0x20
/* 802E20C4 002DF024  80 84 00 00 */	lwz r4, 0(r4)
/* 802E20C8 002DF028  81 84 00 00 */	lwz r12, 0(r4)
/* 802E20CC 002DF02C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E20D0 002DF030  7D 89 03 A6 */	mtctr r12
/* 802E20D4 002DF034  4E 80 04 21 */	bctrl
/* 802E20D8 002DF038  80 A1 00 08 */	lwz r5, 8(r1)
/* 802E20DC 002DF03C  38 61 00 08 */	addi r3, r1, 8
/* 802E20E0 002DF040  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802E20E4 002DF044  80 85 00 04 */	lwz r4, 4(r5)
/* 802E20E8 002DF048  38 04 00 01 */	addi r0, r4, 1
/* 802E20EC 002DF04C  90 05 00 04 */	stw r0, 4(r5)
/* 802E20F0 002DF050  4B D4 EE B1 */	bl sub_80030fa0
/* 802E20F4 002DF054  38 00 00 00 */	li r0, 0
/* 802E20F8 002DF058  3C 60 80 3D */	lis r3, lbl_803D6D90@ha
/* 802E20FC 002DF05C  98 01 00 A4 */	stb r0, 0xa4(r1)
/* 802E2100 002DF060  38 83 6D 90 */	addi r4, r3, lbl_803D6D90@l
/* 802E2104 002DF064  3B 40 00 00 */	li r26, 0
/* 802E2108 002DF068  38 60 00 90 */	li r3, 0x90
/* 802E210C 002DF06C  98 01 00 60 */	stb r0, 0x60(r1)
/* 802E2110 002DF070  38 A0 00 00 */	li r5, 0
/* 802E2114 002DF074  48 03 37 59 */	bl __nw__FUlPCcPCc
/* 802E2118 002DF078  7C 7E 1B 79 */	or. r30, r3, r3
/* 802E211C 002DF07C  41 82 00 3C */	beq lbl_802E2158
/* 802E2120 002DF080  7F 64 DB 78 */	mr r4, r27
/* 802E2124 002DF084  7F 85 E3 78 */	mr r5, r28
/* 802E2128 002DF088  38 61 00 10 */	addi r3, r1, 0x10
/* 802E212C 002DF08C  38 C1 00 0C */	addi r6, r1, 0xc
/* 802E2130 002DF090  4B FF 68 F5 */	bl "CreatePrimitiveName__15CAnimTreeLoopInFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>"
/* 802E2134 002DF094  7F C3 F3 78 */	mr r3, r30
/* 802E2138 002DF098  7F 64 DB 78 */	mr r4, r27
/* 802E213C 002DF09C  7F 85 E3 78 */	mr r5, r28
/* 802E2140 002DF0A0  7F A7 EB 78 */	mr r7, r29
/* 802E2144 002DF0A4  38 C1 00 0C */	addi r6, r1, 0xc
/* 802E2148 002DF0A8  39 01 00 10 */	addi r8, r1, 0x10
/* 802E214C 002DF0AC  3B 40 00 01 */	li r26, 1
/* 802E2150 002DF0B0  4B FF 79 A1 */	bl "__ct__15CAnimTreeLoopInFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC15CAnimSysContextRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802E2154 002DF0B4  7C 7E 1B 78 */	mr r30, r3
lbl_802E2158:
/* 802E2158 002DF0B8  3C 80 80 3D */	lis r4, lbl_803D6D90@ha
/* 802E215C 002DF0BC  38 60 00 08 */	li r3, 8
/* 802E2160 002DF0C0  38 84 6D 90 */	addi r4, r4, lbl_803D6D90@l
/* 802E2164 002DF0C4  38 A0 00 00 */	li r5, 0
/* 802E2168 002DF0C8  48 03 37 05 */	bl __nw__FUlPCcPCc
/* 802E216C 002DF0CC  28 03 00 00 */	cmplwi r3, 0
/* 802E2170 002DF0D0  41 82 00 10 */	beq lbl_802E2180
/* 802E2174 002DF0D4  93 C3 00 00 */	stw r30, 0(r3)
/* 802E2178 002DF0D8  38 00 00 01 */	li r0, 1
/* 802E217C 002DF0DC  90 03 00 04 */	stw r0, 4(r3)
lbl_802E2180:
/* 802E2180 002DF0E0  7F 40 07 75 */	extsb. r0, r26
/* 802E2184 002DF0E4  90 7F 00 00 */	stw r3, 0(r31)
/* 802E2188 002DF0E8  41 82 00 0C */	beq lbl_802E2194
/* 802E218C 002DF0EC  38 61 00 10 */	addi r3, r1, 0x10
/* 802E2190 002DF0F0  48 05 B9 51 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802E2194:
/* 802E2194 002DF0F4  38 61 00 0C */	addi r3, r1, 0xc
/* 802E2198 002DF0F8  4B D4 EE 09 */	bl sub_80030fa0
/* 802E219C 002DF0FC  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 802E21A0 002DF100  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802E21A4 002DF104  7C 08 03 A6 */	mtlr r0
/* 802E21A8 002DF108  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802E21AC 002DF10C  4E 80 00 20 */	blr

.global __ct__18CMetaTransMetaAnimFR12CInputStream
__ct__18CMetaTransMetaAnimFR12CInputStream:
/* 802E21B0 002DF110  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E21B4 002DF114  7C 08 02 A6 */	mflr r0
/* 802E21B8 002DF118  3C A0 80 3E */	lis r5, lbl_803D9C70@ha
/* 802E21BC 002DF11C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E21C0 002DF120  38 05 9C 70 */	addi r0, r5, lbl_803D9C70@l
/* 802E21C4 002DF124  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E21C8 002DF128  7C 7F 1B 78 */	mr r31, r3
/* 802E21CC 002DF12C  3C 60 80 3F */	lis r3, lbl_803ECD90@ha
/* 802E21D0 002DF130  90 1F 00 00 */	stw r0, 0(r31)
/* 802E21D4 002DF134  38 03 CD 90 */	addi r0, r3, lbl_803ECD90@l
/* 802E21D8 002DF138  38 61 00 08 */	addi r3, r1, 8
/* 802E21DC 002DF13C  90 1F 00 00 */	stw r0, 0(r31)
/* 802E21E0 002DF140  4B FF DD FD */	bl CreateMetaAnim__16CMetaAnimFactoryFR12CInputStream
/* 802E21E4 002DF144  80 01 00 08 */	lwz r0, 8(r1)
/* 802E21E8 002DF148  38 61 00 08 */	addi r3, r1, 8
/* 802E21EC 002DF14C  90 1F 00 04 */	stw r0, 4(r31)
/* 802E21F0 002DF150  80 BF 00 04 */	lwz r5, 4(r31)
/* 802E21F4 002DF154  80 85 00 04 */	lwz r4, 4(r5)
/* 802E21F8 002DF158  38 04 00 01 */	addi r0, r4, 1
/* 802E21FC 002DF15C  90 05 00 04 */	stw r0, 4(r5)
/* 802E2200 002DF160  4B D4 ED 31 */	bl sub_80030f30
/* 802E2204 002DF164  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2208 002DF168  7F E3 FB 78 */	mr r3, r31
/* 802E220C 002DF16C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E2210 002DF170  7C 08 03 A6 */	mtlr r0
/* 802E2214 002DF174  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2218 002DF178  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D6D90
lbl_803D6D90:
	# ROM: 0x3D3D90
	.asciz "??(??)"
	.balign 4


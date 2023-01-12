.include "macros.inc"

.section .data
.balign 8

.global lbl_803ED008
lbl_803ED008:
	# ROM: 0x3EA008
	.4byte 0
	.4byte 0
	.4byte sub_802edff0
	.4byte IsCAnimTreeNode__11IAnimReaderCFv
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte VGetBoolPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
	.4byte VGetInt32POIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CInt32POINodeUiUii
	.4byte VGetParticlePOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
	.4byte VGetSoundPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
	.4byte VGetBoolPOIState__21CAnimSourceReaderBaseCFPCc
	.4byte VGetInt32POIState__21CAnimSourceReaderBaseCFPCc
	.4byte VGetParticlePOIState__21CAnimSourceReaderBaseCFPCc
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte VSimplified__11IAnimReaderFv
	.4byte 0
	.4byte VGetAdvancementResults__11IAnimReaderCFRC13CCharAnimTimeRC13CCharAnimTime
	.4byte 0

.section .sdata
.balign 8

.global lbl_805A8790
lbl_805A8790:
	# ROM: 0x3F6130
	.4byte 0

.global lbl_805A8794
lbl_805A8794:
	# ROM: 0x3F6134
	.4byte 0

.global lbl_805A8798
lbl_805A8798:
	# ROM: 0x3F6138
	.4byte 0

.global lbl_805A879C
lbl_805A879C:
	# ROM: 0x3F613C
	.4byte 0

.global lbl_805A87A0
lbl_805A87A0:
	# ROM: 0x3F6140
	.4byte 0

.global lbl_805A87A4
lbl_805A87A4:
	# ROM: 0x3F6144
	.4byte 0

.section .text, "ax"

.global PostConstruct__21CAnimSourceReaderBaseFRC13CCharAnimTime
PostConstruct__21CAnimSourceReaderBaseFRC13CCharAnimTime:
/* 802EF8B0 002EC810  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 802EF8B4 002EC814  7C 08 02 A6 */	mflr r0
/* 802EF8B8 002EC818  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 802EF8BC 002EC81C  38 00 00 00 */	li r0, 0
/* 802EF8C0 002EC820  BE E1 01 8C */	stmw r23, 0x18c(r1)
/* 802EF8C4 002EC824  7C 7F 1B 78 */	mr r31, r3
/* 802EF8C8 002EC828  7C 9D 23 78 */	mr r29, r4
/* 802EF8CC 002EC82C  90 03 00 14 */	stw r0, 0x14(r3)
/* 802EF8D0 002EC830  90 03 00 18 */	stw r0, 0x18(r3)
/* 802EF8D4 002EC834  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802EF8D8 002EC838  90 03 00 20 */	stw r0, 0x20(r3)
/* 802EF8DC 002EC83C  83 63 00 04 */	lwz r27, 4(r3)
/* 802EF8E0 002EC840  81 9B 00 00 */	lwz r12, 0(r27)
/* 802EF8E4 002EC844  7F 63 DB 78 */	mr r3, r27
/* 802EF8E8 002EC848  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EF8EC 002EC84C  7D 89 03 A6 */	mtctr r12
/* 802EF8F0 002EC850  4E 80 04 21 */	bctrl
/* 802EF8F4 002EC854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EF8F8 002EC858  41 82 05 14 */	beq lbl_802EFE0C
/* 802EF8FC 002EC85C  7F E4 FB 78 */	mr r4, r31
/* 802EF900 002EC860  38 61 01 10 */	addi r3, r1, 0x110
/* 802EF904 002EC864  48 00 0B 39 */	bl GetUniqueBoolPOIs__21CAnimSourceReaderBaseCFv
/* 802EF908 002EC868  88 81 01 10 */	lbz r4, 0x110(r1)
/* 802EF90C 002EC86C  38 00 00 00 */	li r0, 0
/* 802EF910 002EC870  88 C1 01 11 */	lbz r6, 0x111(r1)
/* 802EF914 002EC874  38 61 01 4C */	addi r3, r1, 0x14c
/* 802EF918 002EC878  80 A1 01 14 */	lwz r5, 0x114(r1)
/* 802EF91C 002EC87C  3B C1 01 54 */	addi r30, r1, 0x154
/* 802EF920 002EC880  98 81 01 4C */	stb r4, 0x14c(r1)
/* 802EF924 002EC884  80 81 01 20 */	lwz r4, 0x120(r1)
/* 802EF928 002EC888  98 C1 01 4D */	stb r6, 0x14d(r1)
/* 802EF92C 002EC88C  90 A1 01 50 */	stw r5, 0x150(r1)
/* 802EF930 002EC890  90 01 01 54 */	stw r0, 0x154(r1)
/* 802EF934 002EC894  90 01 01 58 */	stw r0, 0x158(r1)
/* 802EF938 002EC898  90 01 01 5C */	stw r0, 0x15c(r1)
/* 802EF93C 002EC89C  4B FF E1 D9 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802EF940 002EC8A0  7C 64 1B 79 */	or. r4, r3, r3
/* 802EF944 002EC8A4  41 82 00 18 */	beq lbl_802EF95C
/* 802EF948 002EC8A8  48 00 00 08 */	b lbl_802EF950
lbl_802EF94C:
/* 802EF94C 002EC8AC  7C 04 03 78 */	mr r4, r0
lbl_802EF950:
/* 802EF950 002EC8B0  80 04 00 00 */	lwz r0, 0(r4)
/* 802EF954 002EC8B4  28 00 00 00 */	cmplwi r0, 0
/* 802EF958 002EC8B8  40 82 FF F4 */	bne lbl_802EF94C
lbl_802EF95C:
/* 802EF95C 002EC8BC  28 03 00 00 */	cmplwi r3, 0
/* 802EF960 002EC8C0  90 81 01 54 */	stw r4, 0x154(r1)
/* 802EF964 002EC8C4  7C 65 1B 78 */	mr r5, r3
/* 802EF968 002EC8C8  41 82 00 18 */	beq lbl_802EF980
/* 802EF96C 002EC8CC  48 00 00 08 */	b lbl_802EF974
lbl_802EF970:
/* 802EF970 002EC8D0  7C 05 03 78 */	mr r5, r0
lbl_802EF974:
/* 802EF974 002EC8D4  80 05 00 04 */	lwz r0, 4(r5)
/* 802EF978 002EC8D8  28 00 00 00 */	cmplwi r0, 0
/* 802EF97C 002EC8DC  40 82 FF F4 */	bne lbl_802EF970
lbl_802EF980:
/* 802EF980 002EC8E0  80 81 01 20 */	lwz r4, 0x120(r1)
/* 802EF984 002EC8E4  90 A1 01 58 */	stw r5, 0x158(r1)
/* 802EF988 002EC8E8  28 04 00 00 */	cmplwi r4, 0
/* 802EF98C 002EC8EC  90 61 01 5C */	stw r3, 0x15c(r1)
/* 802EF990 002EC8F0  41 82 00 0C */	beq lbl_802EF99C
/* 802EF994 002EC8F4  38 61 01 10 */	addi r3, r1, 0x110
/* 802EF998 002EC8F8  4B FF E2 59 */	bl sub_802edbf0
lbl_802EF99C:
/* 802EF99C 002EC8FC  38 00 00 00 */	li r0, 0
/* 802EF9A0 002EC900  7F E4 FB 78 */	mr r4, r31
/* 802EF9A4 002EC904  90 01 01 20 */	stw r0, 0x120(r1)
/* 802EF9A8 002EC908  38 61 00 FC */	addi r3, r1, 0xfc
/* 802EF9AC 002EC90C  90 01 01 18 */	stw r0, 0x118(r1)
/* 802EF9B0 002EC910  90 01 01 1C */	stw r0, 0x11c(r1)
/* 802EF9B4 002EC914  90 01 01 14 */	stw r0, 0x114(r1)
/* 802EF9B8 002EC918  48 00 09 1D */	bl GetUniqueInt32POIs__21CAnimSourceReaderBaseCFv
/* 802EF9BC 002EC91C  88 81 00 FC */	lbz r4, 0xfc(r1)
/* 802EF9C0 002EC920  38 00 00 00 */	li r0, 0
/* 802EF9C4 002EC924  88 C1 00 FD */	lbz r6, 0xfd(r1)
/* 802EF9C8 002EC928  38 61 01 38 */	addi r3, r1, 0x138
/* 802EF9CC 002EC92C  80 A1 01 00 */	lwz r5, 0x100(r1)
/* 802EF9D0 002EC930  3B 81 01 40 */	addi r28, r1, 0x140
/* 802EF9D4 002EC934  98 81 01 38 */	stb r4, 0x138(r1)
/* 802EF9D8 002EC938  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 802EF9DC 002EC93C  98 C1 01 39 */	stb r6, 0x139(r1)
/* 802EF9E0 002EC940  90 A1 01 3C */	stw r5, 0x13c(r1)
/* 802EF9E4 002EC944  90 01 01 40 */	stw r0, 0x140(r1)
/* 802EF9E8 002EC948  90 01 01 44 */	stw r0, 0x144(r1)
/* 802EF9EC 002EC94C  90 01 01 48 */	stw r0, 0x148(r1)
/* 802EF9F0 002EC950  4B FF E1 25 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802EF9F4 002EC954  7C 64 1B 79 */	or. r4, r3, r3
/* 802EF9F8 002EC958  41 82 00 18 */	beq lbl_802EFA10
/* 802EF9FC 002EC95C  48 00 00 08 */	b lbl_802EFA04
lbl_802EFA00:
/* 802EFA00 002EC960  7C 04 03 78 */	mr r4, r0
lbl_802EFA04:
/* 802EFA04 002EC964  80 04 00 00 */	lwz r0, 0(r4)
/* 802EFA08 002EC968  28 00 00 00 */	cmplwi r0, 0
/* 802EFA0C 002EC96C  40 82 FF F4 */	bne lbl_802EFA00
lbl_802EFA10:
/* 802EFA10 002EC970  28 03 00 00 */	cmplwi r3, 0
/* 802EFA14 002EC974  90 81 01 40 */	stw r4, 0x140(r1)
/* 802EFA18 002EC978  7C 65 1B 78 */	mr r5, r3
/* 802EFA1C 002EC97C  41 82 00 18 */	beq lbl_802EFA34
/* 802EFA20 002EC980  48 00 00 08 */	b lbl_802EFA28
lbl_802EFA24:
/* 802EFA24 002EC984  7C 05 03 78 */	mr r5, r0
lbl_802EFA28:
/* 802EFA28 002EC988  80 05 00 04 */	lwz r0, 4(r5)
/* 802EFA2C 002EC98C  28 00 00 00 */	cmplwi r0, 0
/* 802EFA30 002EC990  40 82 FF F4 */	bne lbl_802EFA24
lbl_802EFA34:
/* 802EFA34 002EC994  80 81 01 0C */	lwz r4, 0x10c(r1)
/* 802EFA38 002EC998  90 A1 01 44 */	stw r5, 0x144(r1)
/* 802EFA3C 002EC99C  28 04 00 00 */	cmplwi r4, 0
/* 802EFA40 002EC9A0  90 61 01 48 */	stw r3, 0x148(r1)
/* 802EFA44 002EC9A4  41 82 00 0C */	beq lbl_802EFA50
/* 802EFA48 002EC9A8  38 61 00 FC */	addi r3, r1, 0xfc
/* 802EFA4C 002EC9AC  4B FF E1 A5 */	bl sub_802edbf0
lbl_802EFA50:
/* 802EFA50 002EC9B0  38 00 00 00 */	li r0, 0
/* 802EFA54 002EC9B4  7F E4 FB 78 */	mr r4, r31
/* 802EFA58 002EC9B8  90 01 01 0C */	stw r0, 0x10c(r1)
/* 802EFA5C 002EC9BC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802EFA60 002EC9C0  90 01 01 04 */	stw r0, 0x104(r1)
/* 802EFA64 002EC9C4  90 01 01 08 */	stw r0, 0x108(r1)
/* 802EFA68 002EC9C8  90 01 01 00 */	stw r0, 0x100(r1)
/* 802EFA6C 002EC9CC  48 00 07 01 */	bl GetUniqueParticlePOIs__21CAnimSourceReaderBaseCFv
/* 802EFA70 002EC9D0  88 81 00 E8 */	lbz r4, 0xe8(r1)
/* 802EFA74 002EC9D4  38 00 00 00 */	li r0, 0
/* 802EFA78 002EC9D8  88 C1 00 E9 */	lbz r6, 0xe9(r1)
/* 802EFA7C 002EC9DC  38 61 01 24 */	addi r3, r1, 0x124
/* 802EFA80 002EC9E0  80 A1 00 EC */	lwz r5, 0xec(r1)
/* 802EFA84 002EC9E4  3B 41 01 2C */	addi r26, r1, 0x12c
/* 802EFA88 002EC9E8  98 81 01 24 */	stb r4, 0x124(r1)
/* 802EFA8C 002EC9EC  80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 802EFA90 002EC9F0  98 C1 01 25 */	stb r6, 0x125(r1)
/* 802EFA94 002EC9F4  90 A1 01 28 */	stw r5, 0x128(r1)
/* 802EFA98 002EC9F8  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802EFA9C 002EC9FC  90 01 01 30 */	stw r0, 0x130(r1)
/* 802EFAA0 002ECA00  90 01 01 34 */	stw r0, 0x134(r1)
/* 802EFAA4 002ECA04  4B FF E0 71 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802EFAA8 002ECA08  7C 64 1B 79 */	or. r4, r3, r3
/* 802EFAAC 002ECA0C  41 82 00 18 */	beq lbl_802EFAC4
/* 802EFAB0 002ECA10  48 00 00 08 */	b lbl_802EFAB8
lbl_802EFAB4:
/* 802EFAB4 002ECA14  7C 04 03 78 */	mr r4, r0
lbl_802EFAB8:
/* 802EFAB8 002ECA18  80 04 00 00 */	lwz r0, 0(r4)
/* 802EFABC 002ECA1C  28 00 00 00 */	cmplwi r0, 0
/* 802EFAC0 002ECA20  40 82 FF F4 */	bne lbl_802EFAB4
lbl_802EFAC4:
/* 802EFAC4 002ECA24  28 03 00 00 */	cmplwi r3, 0
/* 802EFAC8 002ECA28  90 81 01 2C */	stw r4, 0x12c(r1)
/* 802EFACC 002ECA2C  7C 65 1B 78 */	mr r5, r3
/* 802EFAD0 002ECA30  41 82 00 18 */	beq lbl_802EFAE8
/* 802EFAD4 002ECA34  48 00 00 08 */	b lbl_802EFADC
lbl_802EFAD8:
/* 802EFAD8 002ECA38  7C 05 03 78 */	mr r5, r0
lbl_802EFADC:
/* 802EFADC 002ECA3C  80 05 00 04 */	lwz r0, 4(r5)
/* 802EFAE0 002ECA40  28 00 00 00 */	cmplwi r0, 0
/* 802EFAE4 002ECA44  40 82 FF F4 */	bne lbl_802EFAD8
lbl_802EFAE8:
/* 802EFAE8 002ECA48  80 81 00 F8 */	lwz r4, 0xf8(r1)
/* 802EFAEC 002ECA4C  90 A1 01 30 */	stw r5, 0x130(r1)
/* 802EFAF0 002ECA50  28 04 00 00 */	cmplwi r4, 0
/* 802EFAF4 002ECA54  90 61 01 34 */	stw r3, 0x134(r1)
/* 802EFAF8 002ECA58  41 82 00 0C */	beq lbl_802EFB04
/* 802EFAFC 002ECA5C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802EFB00 002ECA60  4B FF E0 F1 */	bl sub_802edbf0
lbl_802EFB04:
/* 802EFB04 002ECA64  38 00 00 00 */	li r0, 0
/* 802EFB08 002ECA68  3C 60 80 3D */	lis r3, lbl_803D6DE8@ha
/* 802EFB0C 002ECA6C  90 01 00 F8 */	stw r0, 0xf8(r1)
/* 802EFB10 002ECA70  38 83 6D E8 */	addi r4, r3, lbl_803D6DE8@l
/* 802EFB14 002ECA74  83 21 01 50 */	lwz r25, 0x150(r1)
/* 802EFB18 002ECA78  38 61 00 30 */	addi r3, r1, 0x30
/* 802EFB1C 002ECA7C  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 802EFB20 002ECA80  83 01 01 3C */	lwz r24, 0x13c(r1)
/* 802EFB24 002ECA84  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802EFB28 002ECA88  82 E1 01 28 */	lwz r23, 0x128(r1)
/* 802EFB2C 002ECA8C  90 01 00 EC */	stw r0, 0xec(r1)
/* 802EFB30 002ECA90  4B D1 51 89 */	bl string_l__4rstlFPCc
/* 802EFB34 002ECA94  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802EFB38 002ECA98  38 81 00 30 */	addi r4, r1, 0x30
/* 802EFB3C 002ECA9C  48 04 E6 25 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFB40 002ECAA0  88 0D 9B D0 */	lbz r0, lbl_805A8790@sda21(r13)
/* 802EFB44 002ECAA4  7F 24 CB 78 */	mr r4, r25
/* 802EFB48 002ECAA8  38 7F 00 24 */	addi r3, r31, 0x24
/* 802EFB4C 002ECAAC  38 A1 00 D4 */	addi r5, r1, 0xd4
/* 802EFB50 002ECAB0  98 01 00 E4 */	stb r0, 0xe4(r1)
/* 802EFB54 002ECAB4  48 00 05 39 */	bl sub_802f008c
/* 802EFB58 002ECAB8  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802EFB5C 002ECABC  48 04 DF 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFB60 002ECAC0  38 61 00 30 */	addi r3, r1, 0x30
/* 802EFB64 002ECAC4  48 04 DF 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFB68 002ECAC8  3C 80 80 3D */	lis r4, lbl_803D6DE8@ha
/* 802EFB6C 002ECACC  38 61 00 20 */	addi r3, r1, 0x20
/* 802EFB70 002ECAD0  38 84 6D E8 */	addi r4, r4, lbl_803D6DE8@l
/* 802EFB74 002ECAD4  4B D1 51 45 */	bl string_l__4rstlFPCc
/* 802EFB78 002ECAD8  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802EFB7C 002ECADC  38 81 00 20 */	addi r4, r1, 0x20
/* 802EFB80 002ECAE0  48 04 E5 E1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFB84 002ECAE4  80 0D 9B D4 */	lwz r0, lbl_805A8794@sda21(r13)
/* 802EFB88 002ECAE8  7F 04 C3 78 */	mr r4, r24
/* 802EFB8C 002ECAEC  38 7F 00 34 */	addi r3, r31, 0x34
/* 802EFB90 002ECAF0  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 802EFB94 002ECAF4  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 802EFB98 002ECAF8  48 00 04 15 */	bl sub_802effac
/* 802EFB9C 002ECAFC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802EFBA0 002ECB00  48 04 DF 41 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFBA4 002ECB04  38 61 00 20 */	addi r3, r1, 0x20
/* 802EFBA8 002ECB08  48 04 DF 39 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFBAC 002ECB0C  3C 80 80 3D */	lis r4, lbl_803D6DE8@ha
/* 802EFBB0 002ECB10  38 61 00 10 */	addi r3, r1, 0x10
/* 802EFBB4 002ECB14  38 84 6D E8 */	addi r4, r4, lbl_803D6DE8@l
/* 802EFBB8 002ECB18  4B D1 51 01 */	bl string_l__4rstlFPCc
/* 802EFBBC 002ECB1C  38 61 00 AC */	addi r3, r1, 0xac
/* 802EFBC0 002ECB20  38 81 00 10 */	addi r4, r1, 0x10
/* 802EFBC4 002ECB24  48 04 E5 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFBC8 002ECB28  80 0D 9B D8 */	lwz r0, lbl_805A8798@sda21(r13)
/* 802EFBCC 002ECB2C  7E E4 BB 78 */	mr r4, r23
/* 802EFBD0 002ECB30  38 7F 00 44 */	addi r3, r31, 0x44
/* 802EFBD4 002ECB34  38 A1 00 AC */	addi r5, r1, 0xac
/* 802EFBD8 002ECB38  90 01 00 BC */	stw r0, 0xbc(r1)
/* 802EFBDC 002ECB3C  48 00 02 F1 */	bl sub_802efecc
/* 802EFBE0 002ECB40  38 61 00 AC */	addi r3, r1, 0xac
/* 802EFBE4 002ECB44  48 04 DE FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFBE8 002ECB48  38 61 00 10 */	addi r3, r1, 0x10
/* 802EFBEC 002ECB4C  48 04 DE F5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFBF0 002ECB50  83 01 01 54 */	lwz r24, 0x154(r1)
/* 802EFBF4 002ECB54  48 00 00 68 */	b lbl_802EFC5C
lbl_802EFBF8:
/* 802EFBF8 002ECB58  38 61 00 60 */	addi r3, r1, 0x60
/* 802EFBFC 002ECB5C  38 98 00 10 */	addi r4, r24, 0x10
/* 802EFC00 002ECB60  48 04 E5 61 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFC04 002ECB64  82 F8 00 20 */	lwz r23, 0x20(r24)
/* 802EFC08 002ECB68  38 61 00 98 */	addi r3, r1, 0x98
/* 802EFC0C 002ECB6C  38 81 00 60 */	addi r4, r1, 0x60
/* 802EFC10 002ECB70  48 04 E5 51 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFC14 002ECB74  88 6D 9B DC */	lbz r3, lbl_805A879C@sda21(r13)
/* 802EFC18 002ECB78  1C 17 00 14 */	mulli r0, r23, 0x14
/* 802EFC1C 002ECB7C  38 81 00 98 */	addi r4, r1, 0x98
/* 802EFC20 002ECB80  98 61 00 A8 */	stb r3, 0xa8(r1)
/* 802EFC24 002ECB84  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 802EFC28 002ECB88  7E E3 02 14 */	add r23, r3, r0
/* 802EFC2C 002ECB8C  7E E3 BB 78 */	mr r3, r23
/* 802EFC30 002ECB90  48 04 E1 2D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFC34 002ECB94  88 01 00 A8 */	lbz r0, 0xa8(r1)
/* 802EFC38 002ECB98  38 61 00 98 */	addi r3, r1, 0x98
/* 802EFC3C 002ECB9C  98 17 00 10 */	stb r0, 0x10(r23)
/* 802EFC40 002ECBA0  48 04 DE A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFC44 002ECBA4  7F C3 F3 78 */	mr r3, r30
/* 802EFC48 002ECBA8  7F 04 C3 78 */	mr r4, r24
/* 802EFC4C 002ECBAC  48 04 C9 95 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 802EFC50 002ECBB0  7C 78 1B 78 */	mr r24, r3
/* 802EFC54 002ECBB4  38 61 00 60 */	addi r3, r1, 0x60
/* 802EFC58 002ECBB8  48 04 DE 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802EFC5C:
/* 802EFC5C 002ECBBC  28 18 00 00 */	cmplwi r24, 0
/* 802EFC60 002ECBC0  38 00 00 00 */	li r0, 0
/* 802EFC64 002ECBC4  40 82 00 0C */	bne lbl_802EFC70
/* 802EFC68 002ECBC8  7C 1E F0 40 */	cmplw r30, r30
/* 802EFC6C 002ECBCC  41 82 00 08 */	beq lbl_802EFC74
lbl_802EFC70:
/* 802EFC70 002ECBD0  38 00 00 01 */	li r0, 1
lbl_802EFC74:
/* 802EFC74 002ECBD4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802EFC78 002ECBD8  40 82 FF 80 */	bne lbl_802EFBF8
/* 802EFC7C 002ECBDC  83 01 01 40 */	lwz r24, 0x140(r1)
/* 802EFC80 002ECBE0  48 00 00 68 */	b lbl_802EFCE8
lbl_802EFC84:
/* 802EFC84 002ECBE4  38 61 00 50 */	addi r3, r1, 0x50
/* 802EFC88 002ECBE8  38 98 00 10 */	addi r4, r24, 0x10
/* 802EFC8C 002ECBEC  48 04 E4 D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFC90 002ECBF0  82 F8 00 20 */	lwz r23, 0x20(r24)
/* 802EFC94 002ECBF4  38 61 00 84 */	addi r3, r1, 0x84
/* 802EFC98 002ECBF8  38 81 00 50 */	addi r4, r1, 0x50
/* 802EFC9C 002ECBFC  48 04 E4 C5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFCA0 002ECC00  80 6D 9B E0 */	lwz r3, lbl_805A87A0@sda21(r13)
/* 802EFCA4 002ECC04  1C 17 00 14 */	mulli r0, r23, 0x14
/* 802EFCA8 002ECC08  38 81 00 84 */	addi r4, r1, 0x84
/* 802EFCAC 002ECC0C  90 61 00 94 */	stw r3, 0x94(r1)
/* 802EFCB0 002ECC10  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802EFCB4 002ECC14  7E E3 02 14 */	add r23, r3, r0
/* 802EFCB8 002ECC18  7E E3 BB 78 */	mr r3, r23
/* 802EFCBC 002ECC1C  48 04 E0 A1 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFCC0 002ECC20  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802EFCC4 002ECC24  38 61 00 84 */	addi r3, r1, 0x84
/* 802EFCC8 002ECC28  90 17 00 10 */	stw r0, 0x10(r23)
/* 802EFCCC 002ECC2C  48 04 DE 15 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFCD0 002ECC30  7F 83 E3 78 */	mr r3, r28
/* 802EFCD4 002ECC34  7F 04 C3 78 */	mr r4, r24
/* 802EFCD8 002ECC38  48 04 C9 09 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 802EFCDC 002ECC3C  7C 78 1B 78 */	mr r24, r3
/* 802EFCE0 002ECC40  38 61 00 50 */	addi r3, r1, 0x50
/* 802EFCE4 002ECC44  48 04 DD FD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802EFCE8:
/* 802EFCE8 002ECC48  28 18 00 00 */	cmplwi r24, 0
/* 802EFCEC 002ECC4C  38 00 00 00 */	li r0, 0
/* 802EFCF0 002ECC50  40 82 00 0C */	bne lbl_802EFCFC
/* 802EFCF4 002ECC54  7C 1C E0 40 */	cmplw r28, r28
/* 802EFCF8 002ECC58  41 82 00 08 */	beq lbl_802EFD00
lbl_802EFCFC:
/* 802EFCFC 002ECC5C  38 00 00 01 */	li r0, 1
lbl_802EFD00:
/* 802EFD00 002ECC60  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802EFD04 002ECC64  40 82 FF 80 */	bne lbl_802EFC84
/* 802EFD08 002ECC68  83 01 01 2C */	lwz r24, 0x12c(r1)
/* 802EFD0C 002ECC6C  48 00 00 68 */	b lbl_802EFD74
lbl_802EFD10:
/* 802EFD10 002ECC70  38 61 00 40 */	addi r3, r1, 0x40
/* 802EFD14 002ECC74  38 98 00 10 */	addi r4, r24, 0x10
/* 802EFD18 002ECC78  48 04 E4 49 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFD1C 002ECC7C  82 F8 00 20 */	lwz r23, 0x20(r24)
/* 802EFD20 002ECC80  38 61 00 70 */	addi r3, r1, 0x70
/* 802EFD24 002ECC84  38 81 00 40 */	addi r4, r1, 0x40
/* 802EFD28 002ECC88  48 04 E4 39 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFD2C 002ECC8C  80 6D 9B E4 */	lwz r3, lbl_805A87A4@sda21(r13)
/* 802EFD30 002ECC90  1C 17 00 14 */	mulli r0, r23, 0x14
/* 802EFD34 002ECC94  38 81 00 70 */	addi r4, r1, 0x70
/* 802EFD38 002ECC98  90 61 00 80 */	stw r3, 0x80(r1)
/* 802EFD3C 002ECC9C  80 7F 00 50 */	lwz r3, 0x50(r31)
/* 802EFD40 002ECCA0  7E E3 02 14 */	add r23, r3, r0
/* 802EFD44 002ECCA4  7E E3 BB 78 */	mr r3, r23
/* 802EFD48 002ECCA8  48 04 E0 15 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFD4C 002ECCAC  80 01 00 80 */	lwz r0, 0x80(r1)
/* 802EFD50 002ECCB0  38 61 00 70 */	addi r3, r1, 0x70
/* 802EFD54 002ECCB4  90 17 00 10 */	stw r0, 0x10(r23)
/* 802EFD58 002ECCB8  48 04 DD 89 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802EFD5C 002ECCBC  7F 43 D3 78 */	mr r3, r26
/* 802EFD60 002ECCC0  7F 04 C3 78 */	mr r4, r24
/* 802EFD64 002ECCC4  48 04 C8 7D */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 802EFD68 002ECCC8  7C 78 1B 78 */	mr r24, r3
/* 802EFD6C 002ECCCC  38 61 00 40 */	addi r3, r1, 0x40
/* 802EFD70 002ECCD0  48 04 DD 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802EFD74:
/* 802EFD74 002ECCD4  28 18 00 00 */	cmplwi r24, 0
/* 802EFD78 002ECCD8  38 00 00 00 */	li r0, 0
/* 802EFD7C 002ECCDC  40 82 00 0C */	bne lbl_802EFD88
/* 802EFD80 002ECCE0  7C 1A D0 40 */	cmplw r26, r26
/* 802EFD84 002ECCE4  41 82 00 08 */	beq lbl_802EFD8C
lbl_802EFD88:
/* 802EFD88 002ECCE8  38 00 00 01 */	li r0, 1
lbl_802EFD8C:
/* 802EFD8C 002ECCEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802EFD90 002ECCF0  40 82 FF 80 */	bne lbl_802EFD10
/* 802EFD94 002ECCF4  80 81 01 34 */	lwz r4, 0x134(r1)
/* 802EFD98 002ECCF8  28 04 00 00 */	cmplwi r4, 0
/* 802EFD9C 002ECCFC  41 82 00 0C */	beq lbl_802EFDA8
/* 802EFDA0 002ECD00  38 61 01 24 */	addi r3, r1, 0x124
/* 802EFDA4 002ECD04  4B FF DE 4D */	bl sub_802edbf0
lbl_802EFDA8:
/* 802EFDA8 002ECD08  80 81 01 48 */	lwz r4, 0x148(r1)
/* 802EFDAC 002ECD0C  38 00 00 00 */	li r0, 0
/* 802EFDB0 002ECD10  90 01 01 34 */	stw r0, 0x134(r1)
/* 802EFDB4 002ECD14  28 04 00 00 */	cmplwi r4, 0
/* 802EFDB8 002ECD18  90 01 01 2C */	stw r0, 0x12c(r1)
/* 802EFDBC 002ECD1C  90 01 01 30 */	stw r0, 0x130(r1)
/* 802EFDC0 002ECD20  90 01 01 28 */	stw r0, 0x128(r1)
/* 802EFDC4 002ECD24  41 82 00 0C */	beq lbl_802EFDD0
/* 802EFDC8 002ECD28  38 61 01 38 */	addi r3, r1, 0x138
/* 802EFDCC 002ECD2C  4B FF DE 25 */	bl sub_802edbf0
lbl_802EFDD0:
/* 802EFDD0 002ECD30  80 81 01 5C */	lwz r4, 0x15c(r1)
/* 802EFDD4 002ECD34  38 00 00 00 */	li r0, 0
/* 802EFDD8 002ECD38  90 01 01 48 */	stw r0, 0x148(r1)
/* 802EFDDC 002ECD3C  28 04 00 00 */	cmplwi r4, 0
/* 802EFDE0 002ECD40  90 01 01 40 */	stw r0, 0x140(r1)
/* 802EFDE4 002ECD44  90 01 01 44 */	stw r0, 0x144(r1)
/* 802EFDE8 002ECD48  90 01 01 3C */	stw r0, 0x13c(r1)
/* 802EFDEC 002ECD4C  41 82 00 0C */	beq lbl_802EFDF8
/* 802EFDF0 002ECD50  38 61 01 4C */	addi r3, r1, 0x14c
/* 802EFDF4 002ECD54  4B FF DD FD */	bl sub_802edbf0
lbl_802EFDF8:
/* 802EFDF8 002ECD58  38 00 00 00 */	li r0, 0
/* 802EFDFC 002ECD5C  90 01 01 5C */	stw r0, 0x15c(r1)
/* 802EFE00 002ECD60  90 01 01 54 */	stw r0, 0x154(r1)
/* 802EFE04 002ECD64  90 01 01 58 */	stw r0, 0x158(r1)
/* 802EFE08 002ECD68  90 01 01 50 */	stw r0, 0x150(r1)
lbl_802EFE0C:
/* 802EFE0C 002ECD6C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 802EFE10 002ECD70  38 61 00 08 */	addi r3, r1, 8
/* 802EFE14 002ECD74  80 1D 00 04 */	lwz r0, 4(r29)
/* 802EFE18 002ECD78  D0 01 00 08 */	stfs f0, 8(r1)
/* 802EFE1C 002ECD7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802EFE20 002ECD80  48 05 85 CD */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802EFE24 002ECD84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EFE28 002ECD88  41 82 00 48 */	beq lbl_802EFE70
/* 802EFE2C 002ECD8C  48 00 00 30 */	b lbl_802EFE5C
lbl_802EFE30:
/* 802EFE30 002ECD90  7F E4 FB 78 */	mr r4, r31
/* 802EFE34 002ECD94  38 61 01 60 */	addi r3, r1, 0x160
/* 802EFE38 002ECD98  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EFE3C 002ECD9C  38 A1 00 08 */	addi r5, r1, 8
/* 802EFE40 002ECDA0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802EFE44 002ECDA4  7D 89 03 A6 */	mtctr r12
/* 802EFE48 002ECDA8  4E 80 04 21 */	bctrl
/* 802EFE4C 002ECDAC  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 802EFE50 002ECDB0  80 01 01 64 */	lwz r0, 0x164(r1)
/* 802EFE54 002ECDB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 802EFE58 002ECDB8  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802EFE5C:
/* 802EFE5C 002ECDBC  38 61 00 08 */	addi r3, r1, 8
/* 802EFE60 002ECDC0  48 05 85 8D */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802EFE64 002ECDC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EFE68 002ECDC8  40 82 FF C8 */	bne lbl_802EFE30
/* 802EFE6C 002ECDCC  48 00 00 4C */	b lbl_802EFEB8
lbl_802EFE70:
/* 802EFE70 002ECDD0  7F 63 DB 78 */	mr r3, r27
/* 802EFE74 002ECDD4  81 9B 00 00 */	lwz r12, 0(r27)
/* 802EFE78 002ECDD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EFE7C 002ECDDC  7D 89 03 A6 */	mtctr r12
/* 802EFE80 002ECDE0  4E 80 04 21 */	bctrl
/* 802EFE84 002ECDE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EFE88 002ECDE8  41 82 00 30 */	beq lbl_802EFEB8
/* 802EFE8C 002ECDEC  7F E3 FB 78 */	mr r3, r31
/* 802EFE90 002ECDF0  48 00 07 15 */	bl UpdatePOIStates__21CAnimSourceReaderBaseFv
/* 802EFE94 002ECDF4  7F A3 EB 78 */	mr r3, r29
/* 802EFE98 002ECDF8  48 05 85 55 */	bl GreaterThanZero__13CCharAnimTimeCFv
/* 802EFE9C 002ECDFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802EFEA0 002ECE00  40 82 00 18 */	bne lbl_802EFEB8
/* 802EFEA4 002ECE04  38 00 00 00 */	li r0, 0
/* 802EFEA8 002ECE08  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802EFEAC 002ECE0C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802EFEB0 002ECE10  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 802EFEB4 002ECE14  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_802EFEB8:
/* 802EFEB8 002ECE18  BA E1 01 8C */	lmw r23, 0x18c(r1)
/* 802EFEBC 002ECE1C  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 802EFEC0 002ECE20  7C 08 03 A6 */	mtlr r0
/* 802EFEC4 002ECE24  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 802EFEC8 002ECE28  4E 80 00 20 */	blr

.global sub_802efecc
sub_802efecc:
/* 802EFECC 002ECE2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EFED0 002ECE30  7C 08 02 A6 */	mflr r0
/* 802EFED4 002ECE34  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EFED8 002ECE38  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802EFEDC 002ECE3C  7C 9B 23 78 */	mr r27, r4
/* 802EFEE0 002ECE40  7C 7A 1B 78 */	mr r26, r3
/* 802EFEE4 002ECE44  7C BC 2B 78 */	mr r28, r5
/* 802EFEE8 002ECE48  80 03 00 04 */	lwz r0, 4(r3)
/* 802EFEEC 002ECE4C  7C 00 D8 00 */	cmpw r0, r27
/* 802EFEF0 002ECE50  41 82 00 A8 */	beq lbl_802EFF98
/* 802EFEF4 002ECE54  7C 1B 00 00 */	cmpw r27, r0
/* 802EFEF8 002ECE58  40 81 00 54 */	ble lbl_802EFF4C
/* 802EFEFC 002ECE5C  48 00 18 39 */	bl "reserve__Q24rstl159vector<Q24rstl114pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q213CParticleData13EParentedMode>,Q24rstl17rmemory_allocator>Fi"
/* 802EFF00 002ECE60  80 9A 00 04 */	lwz r4, 4(r26)
/* 802EFF04 002ECE64  3B E0 00 00 */	li r31, 0
/* 802EFF08 002ECE68  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802EFF0C 002ECE6C  1C 04 00 14 */	mulli r0, r4, 0x14
/* 802EFF10 002ECE70  7F A4 D8 50 */	subf r29, r4, r27
/* 802EFF14 002ECE74  7F C3 02 14 */	add r30, r3, r0
/* 802EFF18 002ECE78  48 00 00 28 */	b lbl_802EFF40
lbl_802EFF1C:
/* 802EFF1C 002ECE7C  28 1E 00 00 */	cmplwi r30, 0
/* 802EFF20 002ECE80  41 82 00 18 */	beq lbl_802EFF38
/* 802EFF24 002ECE84  7F C3 F3 78 */	mr r3, r30
/* 802EFF28 002ECE88  7F 84 E3 78 */	mr r4, r28
/* 802EFF2C 002ECE8C  48 04 E2 35 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802EFF30 002ECE90  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802EFF34 002ECE94  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_802EFF38:
/* 802EFF38 002ECE98  3B FF 00 01 */	addi r31, r31, 1
/* 802EFF3C 002ECE9C  3B DE 00 14 */	addi r30, r30, 0x14
lbl_802EFF40:
/* 802EFF40 002ECEA0  7C 1F E8 00 */	cmpw r31, r29
/* 802EFF44 002ECEA4  41 80 FF D8 */	blt lbl_802EFF1C
/* 802EFF48 002ECEA8  48 00 00 4C */	b lbl_802EFF94
lbl_802EFF4C:
/* 802EFF4C 002ECEAC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802EFF50 002ECEB0  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802EFF54 002ECEB4  7F E3 02 14 */	add r31, r3, r0
/* 802EFF58 002ECEB8  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 802EFF5C 002ECEBC  93 E1 00 08 */	stw r31, 8(r1)
/* 802EFF60 002ECEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EFF64 002ECEC4  7F A3 02 14 */	add r29, r3, r0
/* 802EFF68 002ECEC8  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802EFF6C 002ECECC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802EFF70 002ECED0  48 00 00 1C */	b lbl_802EFF8C
lbl_802EFF74:
/* 802EFF74 002ECED4  28 1D 00 00 */	cmplwi r29, 0
/* 802EFF78 002ECED8  41 82 00 10 */	beq lbl_802EFF88
/* 802EFF7C 002ECEDC  41 82 00 0C */	beq lbl_802EFF88
/* 802EFF80 002ECEE0  7F A3 EB 78 */	mr r3, r29
/* 802EFF84 002ECEE4  48 04 DB 5D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802EFF88:
/* 802EFF88 002ECEE8  3B BD 00 14 */	addi r29, r29, 0x14
lbl_802EFF8C:
/* 802EFF8C 002ECEEC  7C 1D F8 40 */	cmplw r29, r31
/* 802EFF90 002ECEF0  40 82 FF E4 */	bne lbl_802EFF74
lbl_802EFF94:
/* 802EFF94 002ECEF4  93 7A 00 04 */	stw r27, 4(r26)
lbl_802EFF98:
/* 802EFF98 002ECEF8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802EFF9C 002ECEFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802EFFA0 002ECF00  7C 08 03 A6 */	mtlr r0
/* 802EFFA4 002ECF04  38 21 00 30 */	addi r1, r1, 0x30
/* 802EFFA8 002ECF08  4E 80 00 20 */	blr

.global sub_802effac
sub_802effac:
/* 802EFFAC 002ECF0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802EFFB0 002ECF10  7C 08 02 A6 */	mflr r0
/* 802EFFB4 002ECF14  90 01 00 34 */	stw r0, 0x34(r1)
/* 802EFFB8 002ECF18  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802EFFBC 002ECF1C  7C 9B 23 78 */	mr r27, r4
/* 802EFFC0 002ECF20  7C 7A 1B 78 */	mr r26, r3
/* 802EFFC4 002ECF24  7C BC 2B 78 */	mr r28, r5
/* 802EFFC8 002ECF28  80 03 00 04 */	lwz r0, 4(r3)
/* 802EFFCC 002ECF2C  7C 00 D8 00 */	cmpw r0, r27
/* 802EFFD0 002ECF30  41 82 00 A8 */	beq lbl_802F0078
/* 802EFFD4 002ECF34  7C 1B 00 00 */	cmpw r27, r0
/* 802EFFD8 002ECF38  40 81 00 54 */	ble lbl_802F002C
/* 802EFFDC 002ECF3C  48 00 16 55 */	bl "reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl17rmemory_allocator>Fi"
/* 802EFFE0 002ECF40  80 9A 00 04 */	lwz r4, 4(r26)
/* 802EFFE4 002ECF44  3B E0 00 00 */	li r31, 0
/* 802EFFE8 002ECF48  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802EFFEC 002ECF4C  1C 04 00 14 */	mulli r0, r4, 0x14
/* 802EFFF0 002ECF50  7F A4 D8 50 */	subf r29, r4, r27
/* 802EFFF4 002ECF54  7F C3 02 14 */	add r30, r3, r0
/* 802EFFF8 002ECF58  48 00 00 28 */	b lbl_802F0020
lbl_802EFFFC:
/* 802EFFFC 002ECF5C  28 1E 00 00 */	cmplwi r30, 0
/* 802F0000 002ECF60  41 82 00 18 */	beq lbl_802F0018
/* 802F0004 002ECF64  7F C3 F3 78 */	mr r3, r30
/* 802F0008 002ECF68  7F 84 E3 78 */	mr r4, r28
/* 802F000C 002ECF6C  48 04 E1 55 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0010 002ECF70  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 802F0014 002ECF74  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_802F0018:
/* 802F0018 002ECF78  3B FF 00 01 */	addi r31, r31, 1
/* 802F001C 002ECF7C  3B DE 00 14 */	addi r30, r30, 0x14
lbl_802F0020:
/* 802F0020 002ECF80  7C 1F E8 00 */	cmpw r31, r29
/* 802F0024 002ECF84  41 80 FF D8 */	blt lbl_802EFFFC
/* 802F0028 002ECF88  48 00 00 4C */	b lbl_802F0074
lbl_802F002C:
/* 802F002C 002ECF8C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F0030 002ECF90  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802F0034 002ECF94  7F E3 02 14 */	add r31, r3, r0
/* 802F0038 002ECF98  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 802F003C 002ECF9C  93 E1 00 08 */	stw r31, 8(r1)
/* 802F0040 002ECFA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0044 002ECFA4  7F A3 02 14 */	add r29, r3, r0
/* 802F0048 002ECFA8  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802F004C 002ECFAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F0050 002ECFB0  48 00 00 1C */	b lbl_802F006C
lbl_802F0054:
/* 802F0054 002ECFB4  28 1D 00 00 */	cmplwi r29, 0
/* 802F0058 002ECFB8  41 82 00 10 */	beq lbl_802F0068
/* 802F005C 002ECFBC  41 82 00 0C */	beq lbl_802F0068
/* 802F0060 002ECFC0  7F A3 EB 78 */	mr r3, r29
/* 802F0064 002ECFC4  48 04 DA 7D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F0068:
/* 802F0068 002ECFC8  3B BD 00 14 */	addi r29, r29, 0x14
lbl_802F006C:
/* 802F006C 002ECFCC  7C 1D F8 40 */	cmplw r29, r31
/* 802F0070 002ECFD0  40 82 FF E4 */	bne lbl_802F0054
lbl_802F0074:
/* 802F0074 002ECFD4  93 7A 00 04 */	stw r27, 4(r26)
lbl_802F0078:
/* 802F0078 002ECFD8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802F007C 002ECFDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0080 002ECFE0  7C 08 03 A6 */	mtlr r0
/* 802F0084 002ECFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0088 002ECFE8  4E 80 00 20 */	blr

.global sub_802f008c
sub_802f008c:
/* 802F008C 002ECFEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0090 002ECFF0  7C 08 02 A6 */	mflr r0
/* 802F0094 002ECFF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0098 002ECFF8  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802F009C 002ECFFC  7C 9B 23 78 */	mr r27, r4
/* 802F00A0 002ED000  7C 7A 1B 78 */	mr r26, r3
/* 802F00A4 002ED004  7C BC 2B 78 */	mr r28, r5
/* 802F00A8 002ED008  80 03 00 04 */	lwz r0, 4(r3)
/* 802F00AC 002ED00C  7C 00 D8 00 */	cmpw r0, r27
/* 802F00B0 002ED010  41 82 00 A8 */	beq lbl_802F0158
/* 802F00B4 002ED014  7C 1B 00 00 */	cmpw r27, r0
/* 802F00B8 002ED018  40 81 00 54 */	ble lbl_802F010C
/* 802F00BC 002ED01C  48 00 14 71 */	bl "reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,b>,Q24rstl17rmemory_allocator>Fi"
/* 802F00C0 002ED020  80 9A 00 04 */	lwz r4, 4(r26)
/* 802F00C4 002ED024  3B E0 00 00 */	li r31, 0
/* 802F00C8 002ED028  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802F00CC 002ED02C  1C 04 00 14 */	mulli r0, r4, 0x14
/* 802F00D0 002ED030  7F A4 D8 50 */	subf r29, r4, r27
/* 802F00D4 002ED034  7F C3 02 14 */	add r30, r3, r0
/* 802F00D8 002ED038  48 00 00 28 */	b lbl_802F0100
lbl_802F00DC:
/* 802F00DC 002ED03C  28 1E 00 00 */	cmplwi r30, 0
/* 802F00E0 002ED040  41 82 00 18 */	beq lbl_802F00F8
/* 802F00E4 002ED044  7F C3 F3 78 */	mr r3, r30
/* 802F00E8 002ED048  7F 84 E3 78 */	mr r4, r28
/* 802F00EC 002ED04C  48 04 E0 75 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F00F0 002ED050  88 1C 00 10 */	lbz r0, 0x10(r28)
/* 802F00F4 002ED054  98 1E 00 10 */	stb r0, 0x10(r30)
lbl_802F00F8:
/* 802F00F8 002ED058  3B FF 00 01 */	addi r31, r31, 1
/* 802F00FC 002ED05C  3B DE 00 14 */	addi r30, r30, 0x14
lbl_802F0100:
/* 802F0100 002ED060  7C 1F E8 00 */	cmpw r31, r29
/* 802F0104 002ED064  41 80 FF D8 */	blt lbl_802F00DC
/* 802F0108 002ED068  48 00 00 4C */	b lbl_802F0154
lbl_802F010C:
/* 802F010C 002ED06C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F0110 002ED070  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802F0114 002ED074  7F E3 02 14 */	add r31, r3, r0
/* 802F0118 002ED078  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 802F011C 002ED07C  93 E1 00 08 */	stw r31, 8(r1)
/* 802F0120 002ED080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F0124 002ED084  7F A3 02 14 */	add r29, r3, r0
/* 802F0128 002ED088  93 A1 00 10 */	stw r29, 0x10(r1)
/* 802F012C 002ED08C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802F0130 002ED090  48 00 00 1C */	b lbl_802F014C
lbl_802F0134:
/* 802F0134 002ED094  28 1D 00 00 */	cmplwi r29, 0
/* 802F0138 002ED098  41 82 00 10 */	beq lbl_802F0148
/* 802F013C 002ED09C  41 82 00 0C */	beq lbl_802F0148
/* 802F0140 002ED0A0  7F A3 EB 78 */	mr r3, r29
/* 802F0144 002ED0A4  48 04 D9 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F0148:
/* 802F0148 002ED0A8  3B BD 00 14 */	addi r29, r29, 0x14
lbl_802F014C:
/* 802F014C 002ED0AC  7C 1D F8 40 */	cmplw r29, r31
/* 802F0150 002ED0B0  40 82 FF E4 */	bne lbl_802F0134
lbl_802F0154:
/* 802F0154 002ED0B4  93 7A 00 04 */	stw r27, 4(r26)
lbl_802F0158:
/* 802F0158 002ED0B8  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802F015C 002ED0BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0160 002ED0C0  7C 08 03 A6 */	mtlr r0
/* 802F0164 002ED0C4  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0168 002ED0C8  4E 80 00 20 */	blr

.global GetUniqueParticlePOIs__21CAnimSourceReaderBaseCFv
GetUniqueParticlePOIs__21CAnimSourceReaderBaseCFv:
/* 802F016C 002ED0CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802F0170 002ED0D0  7C 08 02 A6 */	mflr r0
/* 802F0174 002ED0D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802F0178 002ED0D8  BF 41 00 48 */	stmw r26, 0x48(r1)
/* 802F017C 002ED0DC  7C 7F 1B 78 */	mr r31, r3
/* 802F0180 002ED0E0  80 64 00 04 */	lwz r3, 4(r4)
/* 802F0184 002ED0E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0188 002ED0E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F018C 002ED0EC  7D 89 03 A6 */	mtctr r12
/* 802F0190 002ED0F0  4E 80 04 21 */	bctrl
/* 802F0194 002ED0F4  7C 7E 1B 78 */	mr r30, r3
/* 802F0198 002ED0F8  83 A3 00 04 */	lwz r29, 4(r3)
/* 802F019C 002ED0FC  3B 60 00 00 */	li r27, 0
/* 802F01A0 002ED100  88 61 00 08 */	lbz r3, 8(r1)
/* 802F01A4 002ED104  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F01A8 002ED108  3B 40 00 00 */	li r26, 0
/* 802F01AC 002ED10C  98 61 00 30 */	stb r3, 0x30(r1)
/* 802F01B0 002ED110  98 01 00 31 */	stb r0, 0x31(r1)
/* 802F01B4 002ED114  93 61 00 34 */	stw r27, 0x34(r1)
/* 802F01B8 002ED118  93 61 00 38 */	stw r27, 0x38(r1)
/* 802F01BC 002ED11C  93 61 00 3C */	stw r27, 0x3c(r1)
/* 802F01C0 002ED120  93 61 00 40 */	stw r27, 0x40(r1)
/* 802F01C4 002ED124  48 00 00 50 */	b lbl_802F0214
lbl_802F01C8:
/* 802F01C8 002ED128  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F01CC 002ED12C  7C 80 DA 14 */	add r4, r0, r27
/* 802F01D0 002ED130  88 04 00 28 */	lbz r0, 0x28(r4)
/* 802F01D4 002ED134  28 00 00 00 */	cmplwi r0, 0
/* 802F01D8 002ED138  41 82 00 34 */	beq lbl_802F020C
/* 802F01DC 002ED13C  83 84 00 24 */	lwz r28, 0x24(r4)
/* 802F01E0 002ED140  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F01E4 002ED144  38 84 00 08 */	addi r4, r4, 8
/* 802F01E8 002ED148  48 04 DF 79 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F01EC 002ED14C  93 81 00 2C */	stw r28, 0x2c(r1)
/* 802F01F0 002ED150  38 61 00 10 */	addi r3, r1, 0x10
/* 802F01F4 002ED154  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 802F01F8 002ED158  38 81 00 30 */	addi r4, r1, 0x30
/* 802F01FC 002ED15C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 802F0200 002ED160  4B FF DA 79 */	bl sub_802edc78
/* 802F0204 002ED164  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F0208 002ED168  48 04 D8 D9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F020C:
/* 802F020C 002ED16C  3B 7B 00 5C */	addi r27, r27, 0x5c
/* 802F0210 002ED170  3B 5A 00 01 */	addi r26, r26, 1
lbl_802F0214:
/* 802F0214 002ED174  7C 1A E8 00 */	cmpw r26, r29
/* 802F0218 002ED178  41 80 FF B0 */	blt lbl_802F01C8
/* 802F021C 002ED17C  88 81 00 30 */	lbz r4, 0x30(r1)
/* 802F0220 002ED180  38 00 00 00 */	li r0, 0
/* 802F0224 002ED184  7F E3 FB 78 */	mr r3, r31
/* 802F0228 002ED188  98 9F 00 00 */	stb r4, 0(r31)
/* 802F022C 002ED18C  88 81 00 31 */	lbz r4, 0x31(r1)
/* 802F0230 002ED190  98 9F 00 01 */	stb r4, 1(r31)
/* 802F0234 002ED194  80 81 00 34 */	lwz r4, 0x34(r1)
/* 802F0238 002ED198  90 9F 00 04 */	stw r4, 4(r31)
/* 802F023C 002ED19C  90 1F 00 08 */	stw r0, 8(r31)
/* 802F0240 002ED1A0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802F0244 002ED1A4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802F0248 002ED1A8  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F024C 002ED1AC  4B FF D8 C9 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802F0250 002ED1B0  7C 64 1B 79 */	or. r4, r3, r3
/* 802F0254 002ED1B4  41 82 00 18 */	beq lbl_802F026C
/* 802F0258 002ED1B8  48 00 00 08 */	b lbl_802F0260
lbl_802F025C:
/* 802F025C 002ED1BC  7C 04 03 78 */	mr r4, r0
lbl_802F0260:
/* 802F0260 002ED1C0  80 04 00 00 */	lwz r0, 0(r4)
/* 802F0264 002ED1C4  28 00 00 00 */	cmplwi r0, 0
/* 802F0268 002ED1C8  40 82 FF F4 */	bne lbl_802F025C
lbl_802F026C:
/* 802F026C 002ED1CC  28 03 00 00 */	cmplwi r3, 0
/* 802F0270 002ED1D0  90 9F 00 08 */	stw r4, 8(r31)
/* 802F0274 002ED1D4  7C 64 1B 78 */	mr r4, r3
/* 802F0278 002ED1D8  41 82 00 18 */	beq lbl_802F0290
/* 802F027C 002ED1DC  48 00 00 08 */	b lbl_802F0284
lbl_802F0280:
/* 802F0280 002ED1E0  7C 04 03 78 */	mr r4, r0
lbl_802F0284:
/* 802F0284 002ED1E4  80 04 00 04 */	lwz r0, 4(r4)
/* 802F0288 002ED1E8  28 00 00 00 */	cmplwi r0, 0
/* 802F028C 002ED1EC  40 82 FF F4 */	bne lbl_802F0280
lbl_802F0290:
/* 802F0290 002ED1F0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802F0294 002ED1F4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802F0298 002ED1F8  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F029C 002ED1FC  28 04 00 00 */	cmplwi r4, 0
/* 802F02A0 002ED200  41 82 00 0C */	beq lbl_802F02AC
/* 802F02A4 002ED204  38 61 00 30 */	addi r3, r1, 0x30
/* 802F02A8 002ED208  4B FF D9 49 */	bl sub_802edbf0
lbl_802F02AC:
/* 802F02AC 002ED20C  38 00 00 00 */	li r0, 0
/* 802F02B0 002ED210  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F02B4 002ED214  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F02B8 002ED218  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F02BC 002ED21C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F02C0 002ED220  BB 41 00 48 */	lmw r26, 0x48(r1)
/* 802F02C4 002ED224  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F02C8 002ED228  7C 08 03 A6 */	mtlr r0
/* 802F02CC 002ED22C  38 21 00 60 */	addi r1, r1, 0x60
/* 802F02D0 002ED230  4E 80 00 20 */	blr

.global GetUniqueInt32POIs__21CAnimSourceReaderBaseCFv
GetUniqueInt32POIs__21CAnimSourceReaderBaseCFv:
/* 802F02D4 002ED234  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802F02D8 002ED238  7C 08 02 A6 */	mflr r0
/* 802F02DC 002ED23C  90 01 00 64 */	stw r0, 0x64(r1)
/* 802F02E0 002ED240  BF 41 00 48 */	stmw r26, 0x48(r1)
/* 802F02E4 002ED244  7C 7F 1B 78 */	mr r31, r3
/* 802F02E8 002ED248  80 64 00 04 */	lwz r3, 4(r4)
/* 802F02EC 002ED24C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F02F0 002ED250  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F02F4 002ED254  7D 89 03 A6 */	mtctr r12
/* 802F02F8 002ED258  4E 80 04 21 */	bctrl
/* 802F02FC 002ED25C  7C 7E 1B 78 */	mr r30, r3
/* 802F0300 002ED260  83 A3 00 04 */	lwz r29, 4(r3)
/* 802F0304 002ED264  3B 60 00 00 */	li r27, 0
/* 802F0308 002ED268  88 61 00 08 */	lbz r3, 8(r1)
/* 802F030C 002ED26C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F0310 002ED270  3B 40 00 00 */	li r26, 0
/* 802F0314 002ED274  98 61 00 30 */	stb r3, 0x30(r1)
/* 802F0318 002ED278  98 01 00 31 */	stb r0, 0x31(r1)
/* 802F031C 002ED27C  93 61 00 34 */	stw r27, 0x34(r1)
/* 802F0320 002ED280  93 61 00 38 */	stw r27, 0x38(r1)
/* 802F0324 002ED284  93 61 00 3C */	stw r27, 0x3c(r1)
/* 802F0328 002ED288  93 61 00 40 */	stw r27, 0x40(r1)
/* 802F032C 002ED28C  48 00 00 50 */	b lbl_802F037C
lbl_802F0330:
/* 802F0330 002ED290  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F0334 002ED294  7C 80 DA 14 */	add r4, r0, r27
/* 802F0338 002ED298  88 04 00 28 */	lbz r0, 0x28(r4)
/* 802F033C 002ED29C  28 00 00 00 */	cmplwi r0, 0
/* 802F0340 002ED2A0  41 82 00 34 */	beq lbl_802F0374
/* 802F0344 002ED2A4  83 84 00 24 */	lwz r28, 0x24(r4)
/* 802F0348 002ED2A8  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F034C 002ED2AC  38 84 00 08 */	addi r4, r4, 8
/* 802F0350 002ED2B0  48 04 DE 11 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0354 002ED2B4  93 81 00 2C */	stw r28, 0x2c(r1)
/* 802F0358 002ED2B8  38 61 00 10 */	addi r3, r1, 0x10
/* 802F035C 002ED2BC  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 802F0360 002ED2C0  38 81 00 30 */	addi r4, r1, 0x30
/* 802F0364 002ED2C4  38 C1 00 1C */	addi r6, r1, 0x1c
/* 802F0368 002ED2C8  4B FF D9 11 */	bl sub_802edc78
/* 802F036C 002ED2CC  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F0370 002ED2D0  48 04 D7 71 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F0374:
/* 802F0374 002ED2D4  3B 7B 00 4C */	addi r27, r27, 0x4c
/* 802F0378 002ED2D8  3B 5A 00 01 */	addi r26, r26, 1
lbl_802F037C:
/* 802F037C 002ED2DC  7C 1A E8 00 */	cmpw r26, r29
/* 802F0380 002ED2E0  41 80 FF B0 */	blt lbl_802F0330
/* 802F0384 002ED2E4  88 81 00 30 */	lbz r4, 0x30(r1)
/* 802F0388 002ED2E8  38 00 00 00 */	li r0, 0
/* 802F038C 002ED2EC  7F E3 FB 78 */	mr r3, r31
/* 802F0390 002ED2F0  98 9F 00 00 */	stb r4, 0(r31)
/* 802F0394 002ED2F4  88 81 00 31 */	lbz r4, 0x31(r1)
/* 802F0398 002ED2F8  98 9F 00 01 */	stb r4, 1(r31)
/* 802F039C 002ED2FC  80 81 00 34 */	lwz r4, 0x34(r1)
/* 802F03A0 002ED300  90 9F 00 04 */	stw r4, 4(r31)
/* 802F03A4 002ED304  90 1F 00 08 */	stw r0, 8(r31)
/* 802F03A8 002ED308  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802F03AC 002ED30C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802F03B0 002ED310  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F03B4 002ED314  4B FF D7 61 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802F03B8 002ED318  7C 64 1B 79 */	or. r4, r3, r3
/* 802F03BC 002ED31C  41 82 00 18 */	beq lbl_802F03D4
/* 802F03C0 002ED320  48 00 00 08 */	b lbl_802F03C8
lbl_802F03C4:
/* 802F03C4 002ED324  7C 04 03 78 */	mr r4, r0
lbl_802F03C8:
/* 802F03C8 002ED328  80 04 00 00 */	lwz r0, 0(r4)
/* 802F03CC 002ED32C  28 00 00 00 */	cmplwi r0, 0
/* 802F03D0 002ED330  40 82 FF F4 */	bne lbl_802F03C4
lbl_802F03D4:
/* 802F03D4 002ED334  28 03 00 00 */	cmplwi r3, 0
/* 802F03D8 002ED338  90 9F 00 08 */	stw r4, 8(r31)
/* 802F03DC 002ED33C  7C 64 1B 78 */	mr r4, r3
/* 802F03E0 002ED340  41 82 00 18 */	beq lbl_802F03F8
/* 802F03E4 002ED344  48 00 00 08 */	b lbl_802F03EC
lbl_802F03E8:
/* 802F03E8 002ED348  7C 04 03 78 */	mr r4, r0
lbl_802F03EC:
/* 802F03EC 002ED34C  80 04 00 04 */	lwz r0, 4(r4)
/* 802F03F0 002ED350  28 00 00 00 */	cmplwi r0, 0
/* 802F03F4 002ED354  40 82 FF F4 */	bne lbl_802F03E8
lbl_802F03F8:
/* 802F03F8 002ED358  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802F03FC 002ED35C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802F0400 002ED360  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F0404 002ED364  28 04 00 00 */	cmplwi r4, 0
/* 802F0408 002ED368  41 82 00 0C */	beq lbl_802F0414
/* 802F040C 002ED36C  38 61 00 30 */	addi r3, r1, 0x30
/* 802F0410 002ED370  4B FF D7 E1 */	bl sub_802edbf0
lbl_802F0414:
/* 802F0414 002ED374  38 00 00 00 */	li r0, 0
/* 802F0418 002ED378  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F041C 002ED37C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F0420 002ED380  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F0424 002ED384  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0428 002ED388  BB 41 00 48 */	lmw r26, 0x48(r1)
/* 802F042C 002ED38C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F0430 002ED390  7C 08 03 A6 */	mtlr r0
/* 802F0434 002ED394  38 21 00 60 */	addi r1, r1, 0x60
/* 802F0438 002ED398  4E 80 00 20 */	blr

.global GetUniqueBoolPOIs__21CAnimSourceReaderBaseCFv
GetUniqueBoolPOIs__21CAnimSourceReaderBaseCFv:
/* 802F043C 002ED39C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802F0440 002ED3A0  7C 08 02 A6 */	mflr r0
/* 802F0444 002ED3A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 802F0448 002ED3A8  BF 41 00 48 */	stmw r26, 0x48(r1)
/* 802F044C 002ED3AC  7C 7F 1B 78 */	mr r31, r3
/* 802F0450 002ED3B0  80 64 00 04 */	lwz r3, 4(r4)
/* 802F0454 002ED3B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0458 002ED3B8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F045C 002ED3BC  7D 89 03 A6 */	mtctr r12
/* 802F0460 002ED3C0  4E 80 04 21 */	bctrl
/* 802F0464 002ED3C4  7C 7E 1B 78 */	mr r30, r3
/* 802F0468 002ED3C8  83 A3 00 04 */	lwz r29, 4(r3)
/* 802F046C 002ED3CC  3B 60 00 00 */	li r27, 0
/* 802F0470 002ED3D0  88 61 00 08 */	lbz r3, 8(r1)
/* 802F0474 002ED3D4  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F0478 002ED3D8  3B 40 00 00 */	li r26, 0
/* 802F047C 002ED3DC  98 61 00 30 */	stb r3, 0x30(r1)
/* 802F0480 002ED3E0  98 01 00 31 */	stb r0, 0x31(r1)
/* 802F0484 002ED3E4  93 61 00 34 */	stw r27, 0x34(r1)
/* 802F0488 002ED3E8  93 61 00 38 */	stw r27, 0x38(r1)
/* 802F048C 002ED3EC  93 61 00 3C */	stw r27, 0x3c(r1)
/* 802F0490 002ED3F0  93 61 00 40 */	stw r27, 0x40(r1)
/* 802F0494 002ED3F4  48 00 00 50 */	b lbl_802F04E4
lbl_802F0498:
/* 802F0498 002ED3F8  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F049C 002ED3FC  7C 80 DA 14 */	add r4, r0, r27
/* 802F04A0 002ED400  88 04 00 28 */	lbz r0, 0x28(r4)
/* 802F04A4 002ED404  28 00 00 00 */	cmplwi r0, 0
/* 802F04A8 002ED408  41 82 00 34 */	beq lbl_802F04DC
/* 802F04AC 002ED40C  83 84 00 24 */	lwz r28, 0x24(r4)
/* 802F04B0 002ED410  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F04B4 002ED414  38 84 00 08 */	addi r4, r4, 8
/* 802F04B8 002ED418  48 04 DC A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F04BC 002ED41C  93 81 00 2C */	stw r28, 0x2c(r1)
/* 802F04C0 002ED420  38 61 00 10 */	addi r3, r1, 0x10
/* 802F04C4 002ED424  80 A1 00 40 */	lwz r5, 0x40(r1)
/* 802F04C8 002ED428  38 81 00 30 */	addi r4, r1, 0x30
/* 802F04CC 002ED42C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 802F04D0 002ED430  4B FF D7 A9 */	bl sub_802edc78
/* 802F04D4 002ED434  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F04D8 002ED438  48 04 D6 09 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F04DC:
/* 802F04DC 002ED43C  3B 7B 00 3C */	addi r27, r27, 0x3c
/* 802F04E0 002ED440  3B 5A 00 01 */	addi r26, r26, 1
lbl_802F04E4:
/* 802F04E4 002ED444  7C 1A E8 00 */	cmpw r26, r29
/* 802F04E8 002ED448  41 80 FF B0 */	blt lbl_802F0498
/* 802F04EC 002ED44C  88 81 00 30 */	lbz r4, 0x30(r1)
/* 802F04F0 002ED450  38 00 00 00 */	li r0, 0
/* 802F04F4 002ED454  7F E3 FB 78 */	mr r3, r31
/* 802F04F8 002ED458  98 9F 00 00 */	stb r4, 0(r31)
/* 802F04FC 002ED45C  88 81 00 31 */	lbz r4, 0x31(r1)
/* 802F0500 002ED460  98 9F 00 01 */	stb r4, 1(r31)
/* 802F0504 002ED464  80 81 00 34 */	lwz r4, 0x34(r1)
/* 802F0508 002ED468  90 9F 00 04 */	stw r4, 4(r31)
/* 802F050C 002ED46C  90 1F 00 08 */	stw r0, 8(r31)
/* 802F0510 002ED470  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802F0514 002ED474  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802F0518 002ED478  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F051C 002ED47C  4B FF D5 F9 */	bl "copy_from__Q24rstl451red_black_tree<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,0,Q24rstl102identity<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl98less<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>>,Q24rstl17rmemory_allocator>FPQ34rstl451red_black_tree<Q24rstl83pa"
/* 802F0520 002ED480  7C 64 1B 79 */	or. r4, r3, r3
/* 802F0524 002ED484  41 82 00 18 */	beq lbl_802F053C
/* 802F0528 002ED488  48 00 00 08 */	b lbl_802F0530
lbl_802F052C:
/* 802F052C 002ED48C  7C 04 03 78 */	mr r4, r0
lbl_802F0530:
/* 802F0530 002ED490  80 04 00 00 */	lwz r0, 0(r4)
/* 802F0534 002ED494  28 00 00 00 */	cmplwi r0, 0
/* 802F0538 002ED498  40 82 FF F4 */	bne lbl_802F052C
lbl_802F053C:
/* 802F053C 002ED49C  28 03 00 00 */	cmplwi r3, 0
/* 802F0540 002ED4A0  90 9F 00 08 */	stw r4, 8(r31)
/* 802F0544 002ED4A4  7C 64 1B 78 */	mr r4, r3
/* 802F0548 002ED4A8  41 82 00 18 */	beq lbl_802F0560
/* 802F054C 002ED4AC  48 00 00 08 */	b lbl_802F0554
lbl_802F0550:
/* 802F0550 002ED4B0  7C 04 03 78 */	mr r4, r0
lbl_802F0554:
/* 802F0554 002ED4B4  80 04 00 04 */	lwz r0, 4(r4)
/* 802F0558 002ED4B8  28 00 00 00 */	cmplwi r0, 0
/* 802F055C 002ED4BC  40 82 FF F4 */	bne lbl_802F0550
lbl_802F0560:
/* 802F0560 002ED4C0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 802F0564 002ED4C4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 802F0568 002ED4C8  80 81 00 40 */	lwz r4, 0x40(r1)
/* 802F056C 002ED4CC  28 04 00 00 */	cmplwi r4, 0
/* 802F0570 002ED4D0  41 82 00 0C */	beq lbl_802F057C
/* 802F0574 002ED4D4  38 61 00 30 */	addi r3, r1, 0x30
/* 802F0578 002ED4D8  4B FF D6 79 */	bl sub_802edbf0
lbl_802F057C:
/* 802F057C 002ED4DC  38 00 00 00 */	li r0, 0
/* 802F0580 002ED4E0  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F0584 002ED4E4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F0588 002ED4E8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F058C 002ED4EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0590 002ED4F0  BB 41 00 48 */	lmw r26, 0x48(r1)
/* 802F0594 002ED4F4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F0598 002ED4F8  7C 08 03 A6 */	mtlr r0
/* 802F059C 002ED4FC  38 21 00 60 */	addi r1, r1, 0x60
/* 802F05A0 002ED500  4E 80 00 20 */	blr

.global UpdatePOIStates__21CAnimSourceReaderBaseFv
UpdatePOIStates__21CAnimSourceReaderBaseFv:
/* 802F05A4 002ED504  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 802F05A8 002ED508  7C 08 02 A6 */	mflr r0
/* 802F05AC 002ED50C  90 01 00 84 */	stw r0, 0x84(r1)
/* 802F05B0 002ED510  BE A1 00 54 */	stmw r21, 0x54(r1)
/* 802F05B4 002ED514  7C 77 1B 78 */	mr r23, r3
/* 802F05B8 002ED518  83 03 00 04 */	lwz r24, 4(r3)
/* 802F05BC 002ED51C  81 98 00 00 */	lwz r12, 0(r24)
/* 802F05C0 002ED520  7F 03 C3 78 */	mr r3, r24
/* 802F05C4 002ED524  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F05C8 002ED528  7D 89 03 A6 */	mtctr r12
/* 802F05CC 002ED52C  4E 80 04 21 */	bctrl
/* 802F05D0 002ED530  7C 7C 1B 78 */	mr r28, r3
/* 802F05D4 002ED534  7F 03 C3 78 */	mr r3, r24
/* 802F05D8 002ED538  81 98 00 00 */	lwz r12, 0(r24)
/* 802F05DC 002ED53C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F05E0 002ED540  7D 89 03 A6 */	mtctr r12
/* 802F05E4 002ED544  4E 80 04 21 */	bctrl
/* 802F05E8 002ED548  7C 7D 1B 78 */	mr r29, r3
/* 802F05EC 002ED54C  7F 03 C3 78 */	mr r3, r24
/* 802F05F0 002ED550  81 98 00 00 */	lwz r12, 0(r24)
/* 802F05F4 002ED554  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F05F8 002ED558  7D 89 03 A6 */	mtctr r12
/* 802F05FC 002ED55C  4E 80 04 21 */	bctrl
/* 802F0600 002ED560  7C 7E 1B 78 */	mr r30, r3
/* 802F0604 002ED564  7F 03 C3 78 */	mr r3, r24
/* 802F0608 002ED568  81 98 00 00 */	lwz r12, 0(r24)
/* 802F060C 002ED56C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802F0610 002ED570  7D 89 03 A6 */	mtctr r12
/* 802F0614 002ED574  4E 80 04 21 */	bctrl
/* 802F0618 002ED578  7C 7F 1B 78 */	mr r31, r3
/* 802F061C 002ED57C  83 7C 00 04 */	lwz r27, 4(r28)
/* 802F0620 002ED580  83 5D 00 04 */	lwz r26, 4(r29)
/* 802F0624 002ED584  83 3E 00 04 */	lwz r25, 4(r30)
/* 802F0628 002ED588  83 03 00 04 */	lwz r24, 4(r3)
/* 802F062C 002ED58C  48 00 00 6C */	b lbl_802F0698
lbl_802F0630:
/* 802F0630 002ED590  80 17 00 14 */	lwz r0, 0x14(r23)
/* 802F0634 002ED594  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 802F0638 002ED598  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 802F063C 002ED59C  7C 63 02 14 */	add r3, r3, r0
/* 802F0640 002ED5A0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802F0644 002ED5A4  2C 00 00 00 */	cmpwi r0, 0
/* 802F0648 002ED5A8  41 80 00 44 */	blt lbl_802F068C
/* 802F064C 002ED5AC  1E A0 00 14 */	mulli r21, r0, 0x14
/* 802F0650 002ED5B0  80 17 00 30 */	lwz r0, 0x30(r23)
/* 802F0654 002ED5B4  8A C3 00 38 */	lbz r22, 0x38(r3)
/* 802F0658 002ED5B8  38 61 00 30 */	addi r3, r1, 0x30
/* 802F065C 002ED5BC  7C 80 AA 14 */	add r4, r0, r21
/* 802F0660 002ED5C0  48 04 DB 01 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0664 002ED5C4  9A C1 00 40 */	stb r22, 0x40(r1)
/* 802F0668 002ED5C8  38 81 00 30 */	addi r4, r1, 0x30
/* 802F066C 002ED5CC  80 17 00 30 */	lwz r0, 0x30(r23)
/* 802F0670 002ED5D0  7E C0 AA 14 */	add r22, r0, r21
/* 802F0674 002ED5D4  7E C3 B3 78 */	mr r3, r22
/* 802F0678 002ED5D8  48 04 D6 E5 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F067C 002ED5DC  88 01 00 40 */	lbz r0, 0x40(r1)
/* 802F0680 002ED5E0  38 61 00 30 */	addi r3, r1, 0x30
/* 802F0684 002ED5E4  98 16 00 10 */	stb r0, 0x10(r22)
/* 802F0688 002ED5E8  48 04 D4 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F068C:
/* 802F068C 002ED5EC  80 77 00 14 */	lwz r3, 0x14(r23)
/* 802F0690 002ED5F0  38 03 00 01 */	addi r0, r3, 1
/* 802F0694 002ED5F4  90 17 00 14 */	stw r0, 0x14(r23)
lbl_802F0698:
/* 802F0698 002ED5F8  80 17 00 14 */	lwz r0, 0x14(r23)
/* 802F069C 002ED5FC  7C 00 D8 00 */	cmpw r0, r27
/* 802F06A0 002ED600  40 80 00 90 */	bge lbl_802F0730
/* 802F06A4 002ED604  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 802F06A8 002ED608  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802F06AC 002ED60C  38 97 00 0C */	addi r4, r23, 0xc
/* 802F06B0 002ED610  38 63 00 1C */	addi r3, r3, 0x1c
/* 802F06B4 002ED614  7C 60 1A 14 */	add r3, r0, r3
/* 802F06B8 002ED618  48 05 7D ED */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F06BC 002ED61C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F06C0 002ED620  40 82 FF 70 */	bne lbl_802F0630
/* 802F06C4 002ED624  48 00 00 6C */	b lbl_802F0730
lbl_802F06C8:
/* 802F06C8 002ED628  80 17 00 18 */	lwz r0, 0x18(r23)
/* 802F06CC 002ED62C  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802F06D0 002ED630  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 802F06D4 002ED634  7C 63 02 14 */	add r3, r3, r0
/* 802F06D8 002ED638  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802F06DC 002ED63C  2C 00 00 00 */	cmpwi r0, 0
/* 802F06E0 002ED640  41 80 00 44 */	blt lbl_802F0724
/* 802F06E4 002ED644  1E A0 00 14 */	mulli r21, r0, 0x14
/* 802F06E8 002ED648  80 17 00 40 */	lwz r0, 0x40(r23)
/* 802F06EC 002ED64C  82 C3 00 38 */	lwz r22, 0x38(r3)
/* 802F06F0 002ED650  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F06F4 002ED654  7C 80 AA 14 */	add r4, r0, r21
/* 802F06F8 002ED658  48 04 DA 69 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F06FC 002ED65C  92 C1 00 2C */	stw r22, 0x2c(r1)
/* 802F0700 002ED660  38 81 00 1C */	addi r4, r1, 0x1c
/* 802F0704 002ED664  80 17 00 40 */	lwz r0, 0x40(r23)
/* 802F0708 002ED668  7E C0 AA 14 */	add r22, r0, r21
/* 802F070C 002ED66C  7E C3 B3 78 */	mr r3, r22
/* 802F0710 002ED670  48 04 D6 4D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0714 002ED674  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F0718 002ED678  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F071C 002ED67C  90 16 00 10 */	stw r0, 0x10(r22)
/* 802F0720 002ED680  48 04 D3 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F0724:
/* 802F0724 002ED684  80 77 00 18 */	lwz r3, 0x18(r23)
/* 802F0728 002ED688  38 03 00 01 */	addi r0, r3, 1
/* 802F072C 002ED68C  90 17 00 18 */	stw r0, 0x18(r23)
lbl_802F0730:
/* 802F0730 002ED690  80 17 00 18 */	lwz r0, 0x18(r23)
/* 802F0734 002ED694  7C 00 D0 00 */	cmpw r0, r26
/* 802F0738 002ED698  40 80 00 90 */	bge lbl_802F07C8
/* 802F073C 002ED69C  1C 60 00 4C */	mulli r3, r0, 0x4c
/* 802F0740 002ED6A0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802F0744 002ED6A4  38 97 00 0C */	addi r4, r23, 0xc
/* 802F0748 002ED6A8  38 63 00 1C */	addi r3, r3, 0x1c
/* 802F074C 002ED6AC  7C 60 1A 14 */	add r3, r0, r3
/* 802F0750 002ED6B0  48 05 7D 55 */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0754 002ED6B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0758 002ED6B8  40 82 FF 70 */	bne lbl_802F06C8
/* 802F075C 002ED6BC  48 00 00 6C */	b lbl_802F07C8
lbl_802F0760:
/* 802F0760 002ED6C0  80 17 00 1C */	lwz r0, 0x1c(r23)
/* 802F0764 002ED6C4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F0768 002ED6C8  1C 00 00 5C */	mulli r0, r0, 0x5c
/* 802F076C 002ED6CC  7C 63 02 14 */	add r3, r3, r0
/* 802F0770 002ED6D0  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802F0774 002ED6D4  2C 00 00 00 */	cmpwi r0, 0
/* 802F0778 002ED6D8  41 80 00 44 */	blt lbl_802F07BC
/* 802F077C 002ED6DC  1E A0 00 14 */	mulli r21, r0, 0x14
/* 802F0780 002ED6E0  80 17 00 50 */	lwz r0, 0x50(r23)
/* 802F0784 002ED6E4  82 C3 00 58 */	lwz r22, 0x58(r3)
/* 802F0788 002ED6E8  38 61 00 08 */	addi r3, r1, 8
/* 802F078C 002ED6EC  7C 80 AA 14 */	add r4, r0, r21
/* 802F0790 002ED6F0  48 04 D9 D1 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0794 002ED6F4  92 C1 00 18 */	stw r22, 0x18(r1)
/* 802F0798 002ED6F8  38 81 00 08 */	addi r4, r1, 8
/* 802F079C 002ED6FC  80 17 00 50 */	lwz r0, 0x50(r23)
/* 802F07A0 002ED700  7E C0 AA 14 */	add r22, r0, r21
/* 802F07A4 002ED704  7E C3 B3 78 */	mr r3, r22
/* 802F07A8 002ED708  48 04 D5 B5 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F07AC 002ED70C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802F07B0 002ED710  38 61 00 08 */	addi r3, r1, 8
/* 802F07B4 002ED714  90 16 00 10 */	stw r0, 0x10(r22)
/* 802F07B8 002ED718  48 04 D3 29 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F07BC:
/* 802F07BC 002ED71C  80 77 00 1C */	lwz r3, 0x1c(r23)
/* 802F07C0 002ED720  38 03 00 01 */	addi r0, r3, 1
/* 802F07C4 002ED724  90 17 00 1C */	stw r0, 0x1c(r23)
lbl_802F07C8:
/* 802F07C8 002ED728  80 17 00 1C */	lwz r0, 0x1c(r23)
/* 802F07CC 002ED72C  7C 00 C8 00 */	cmpw r0, r25
/* 802F07D0 002ED730  40 80 00 34 */	bge lbl_802F0804
/* 802F07D4 002ED734  1C 60 00 5C */	mulli r3, r0, 0x5c
/* 802F07D8 002ED738  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F07DC 002ED73C  38 97 00 0C */	addi r4, r23, 0xc
/* 802F07E0 002ED740  38 63 00 1C */	addi r3, r3, 0x1c
/* 802F07E4 002ED744  7C 60 1A 14 */	add r3, r0, r3
/* 802F07E8 002ED748  48 05 7C BD */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F07EC 002ED74C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F07F0 002ED750  40 82 FF 70 */	bne lbl_802F0760
/* 802F07F4 002ED754  48 00 00 10 */	b lbl_802F0804
lbl_802F07F8:
/* 802F07F8 002ED758  80 77 00 20 */	lwz r3, 0x20(r23)
/* 802F07FC 002ED75C  38 03 00 01 */	addi r0, r3, 1
/* 802F0800 002ED760  90 17 00 20 */	stw r0, 0x20(r23)
lbl_802F0804:
/* 802F0804 002ED764  80 17 00 20 */	lwz r0, 0x20(r23)
/* 802F0808 002ED768  7C 00 C0 00 */	cmpw r0, r24
/* 802F080C 002ED76C  40 80 00 24 */	bge lbl_802F0830
/* 802F0810 002ED770  1C 60 00 44 */	mulli r3, r0, 0x44
/* 802F0814 002ED774  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802F0818 002ED778  38 97 00 0C */	addi r4, r23, 0xc
/* 802F081C 002ED77C  38 63 00 1C */	addi r3, r3, 0x1c
/* 802F0820 002ED780  7C 60 1A 14 */	add r3, r0, r3
/* 802F0824 002ED784  48 05 7C 81 */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0828 002ED788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F082C 002ED78C  40 82 FF CC */	bne lbl_802F07F8
lbl_802F0830:
/* 802F0830 002ED790  BA A1 00 54 */	lmw r21, 0x54(r1)
/* 802F0834 002ED794  80 01 00 84 */	lwz r0, 0x84(r1)
/* 802F0838 002ED798  7C 08 03 A6 */	mtlr r0
/* 802F083C 002ED79C  38 21 00 80 */	addi r1, r1, 0x80
/* 802F0840 002ED7A0  4E 80 00 20 */	blr

.global VGetParticlePOIState__21CAnimSourceReaderBaseCFPCc
VGetParticlePOIState__21CAnimSourceReaderBaseCFPCc:
/* 802F0844 002ED7A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F0848 002ED7A8  7C 08 02 A6 */	mflr r0
/* 802F084C 002ED7AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0850 002ED7B0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802F0854 002ED7B4  7C 7B 1B 78 */	mr r27, r3
/* 802F0858 002ED7B8  7C 9C 23 78 */	mr r28, r4
/* 802F085C 002ED7BC  3B A0 00 00 */	li r29, 0
/* 802F0860 002ED7C0  3B C0 00 00 */	li r30, 0
/* 802F0864 002ED7C4  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 802F0868 002ED7C8  48 00 00 38 */	b lbl_802F08A0
lbl_802F086C:
/* 802F086C 002ED7CC  80 1B 00 50 */	lwz r0, 0x50(r27)
/* 802F0870 002ED7D0  7F 84 E3 78 */	mr r4, r28
/* 802F0874 002ED7D4  7C 60 F2 14 */	add r3, r0, r30
/* 802F0878 002ED7D8  48 00 00 49 */	bl AreStringsEqual__21CAnimSourceReaderBaseFPCcPCc
/* 802F087C 002ED7DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0880 002ED7E0  41 82 00 18 */	beq lbl_802F0898
/* 802F0884 002ED7E4  1C 7D 00 14 */	mulli r3, r29, 0x14
/* 802F0888 002ED7E8  80 9B 00 50 */	lwz r4, 0x50(r27)
/* 802F088C 002ED7EC  38 03 00 10 */	addi r0, r3, 0x10
/* 802F0890 002ED7F0  7C 64 00 2E */	lwzx r3, r4, r0
/* 802F0894 002ED7F4  48 00 00 18 */	b lbl_802F08AC
lbl_802F0898:
/* 802F0898 002ED7F8  3B DE 00 14 */	addi r30, r30, 0x14
/* 802F089C 002ED7FC  3B BD 00 01 */	addi r29, r29, 1
lbl_802F08A0:
/* 802F08A0 002ED800  7C 1D F8 00 */	cmpw r29, r31
/* 802F08A4 002ED804  41 80 FF C8 */	blt lbl_802F086C
/* 802F08A8 002ED808  38 60 00 00 */	li r3, 0
lbl_802F08AC:
/* 802F08AC 002ED80C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802F08B0 002ED810  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F08B4 002ED814  7C 08 03 A6 */	mtlr r0
/* 802F08B8 002ED818  38 21 00 20 */	addi r1, r1, 0x20
/* 802F08BC 002ED81C  4E 80 00 20 */	blr

.global AreStringsEqual__21CAnimSourceReaderBaseFPCcPCc
AreStringsEqual__21CAnimSourceReaderBaseFPCcPCc:
/* 802F08C0 002ED820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F08C4 002ED824  7C 08 02 A6 */	mflr r0
/* 802F08C8 002ED828  38 A0 FF FF */	li r5, -1
/* 802F08CC 002ED82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F08D0 002ED830  4B D8 9B BD */	bl CompareStateString__10CPatternedFPCcPCci
/* 802F08D4 002ED834  7C 60 00 34 */	cntlzw r0, r3
/* 802F08D8 002ED838  54 03 D9 7E */	srwi r3, r0, 5
/* 802F08DC 002ED83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F08E0 002ED840  7C 08 03 A6 */	mtlr r0
/* 802F08E4 002ED844  38 21 00 10 */	addi r1, r1, 0x10
/* 802F08E8 002ED848  4E 80 00 20 */	blr

.global VGetInt32POIState__21CAnimSourceReaderBaseCFPCc
VGetInt32POIState__21CAnimSourceReaderBaseCFPCc:
/* 802F08EC 002ED84C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F08F0 002ED850  7C 08 02 A6 */	mflr r0
/* 802F08F4 002ED854  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F08F8 002ED858  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802F08FC 002ED85C  7C 7B 1B 78 */	mr r27, r3
/* 802F0900 002ED860  7C 9C 23 78 */	mr r28, r4
/* 802F0904 002ED864  3B A0 00 00 */	li r29, 0
/* 802F0908 002ED868  3B C0 00 00 */	li r30, 0
/* 802F090C 002ED86C  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 802F0910 002ED870  48 00 00 38 */	b lbl_802F0948
lbl_802F0914:
/* 802F0914 002ED874  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 802F0918 002ED878  7F 84 E3 78 */	mr r4, r28
/* 802F091C 002ED87C  7C 60 F2 14 */	add r3, r0, r30
/* 802F0920 002ED880  4B FF FF A1 */	bl AreStringsEqual__21CAnimSourceReaderBaseFPCcPCc
/* 802F0924 002ED884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0928 002ED888  41 82 00 18 */	beq lbl_802F0940
/* 802F092C 002ED88C  1C 7D 00 14 */	mulli r3, r29, 0x14
/* 802F0930 002ED890  80 9B 00 40 */	lwz r4, 0x40(r27)
/* 802F0934 002ED894  38 03 00 10 */	addi r0, r3, 0x10
/* 802F0938 002ED898  7C 64 00 2E */	lwzx r3, r4, r0
/* 802F093C 002ED89C  48 00 00 18 */	b lbl_802F0954
lbl_802F0940:
/* 802F0940 002ED8A0  3B DE 00 14 */	addi r30, r30, 0x14
/* 802F0944 002ED8A4  3B BD 00 01 */	addi r29, r29, 1
lbl_802F0948:
/* 802F0948 002ED8A8  7C 1D F8 00 */	cmpw r29, r31
/* 802F094C 002ED8AC  41 80 FF C8 */	blt lbl_802F0914
/* 802F0950 002ED8B0  38 60 00 00 */	li r3, 0
lbl_802F0954:
/* 802F0954 002ED8B4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802F0958 002ED8B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F095C 002ED8BC  7C 08 03 A6 */	mtlr r0
/* 802F0960 002ED8C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F0964 002ED8C4  4E 80 00 20 */	blr

.global VGetBoolPOIState__21CAnimSourceReaderBaseCFPCc
VGetBoolPOIState__21CAnimSourceReaderBaseCFPCc:
/* 802F0968 002ED8C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F096C 002ED8CC  7C 08 02 A6 */	mflr r0
/* 802F0970 002ED8D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0974 002ED8D4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802F0978 002ED8D8  7C 7B 1B 78 */	mr r27, r3
/* 802F097C 002ED8DC  7C 9C 23 78 */	mr r28, r4
/* 802F0980 002ED8E0  3B A0 00 00 */	li r29, 0
/* 802F0984 002ED8E4  3B C0 00 00 */	li r30, 0
/* 802F0988 002ED8E8  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 802F098C 002ED8EC  48 00 00 38 */	b lbl_802F09C4
lbl_802F0990:
/* 802F0990 002ED8F0  80 1B 00 30 */	lwz r0, 0x30(r27)
/* 802F0994 002ED8F4  7F 84 E3 78 */	mr r4, r28
/* 802F0998 002ED8F8  7C 60 F2 14 */	add r3, r0, r30
/* 802F099C 002ED8FC  4B FF FF 25 */	bl AreStringsEqual__21CAnimSourceReaderBaseFPCcPCc
/* 802F09A0 002ED900  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F09A4 002ED904  41 82 00 18 */	beq lbl_802F09BC
/* 802F09A8 002ED908  1C 7D 00 14 */	mulli r3, r29, 0x14
/* 802F09AC 002ED90C  80 9B 00 30 */	lwz r4, 0x30(r27)
/* 802F09B0 002ED910  38 03 00 10 */	addi r0, r3, 0x10
/* 802F09B4 002ED914  7C 64 00 AE */	lbzx r3, r4, r0
/* 802F09B8 002ED918  48 00 00 18 */	b lbl_802F09D0
lbl_802F09BC:
/* 802F09BC 002ED91C  3B DE 00 14 */	addi r30, r30, 0x14
/* 802F09C0 002ED920  3B BD 00 01 */	addi r29, r29, 1
lbl_802F09C4:
/* 802F09C4 002ED924  7C 1D F8 00 */	cmpw r29, r31
/* 802F09C8 002ED928  41 80 FF C8 */	blt lbl_802F0990
/* 802F09CC 002ED92C  38 60 00 00 */	li r3, 0
lbl_802F09D0:
/* 802F09D0 002ED930  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802F09D4 002ED934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F09D8 002ED938  7C 08 03 A6 */	mtlr r0
/* 802F09DC 002ED93C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F09E0 002ED940  4E 80 00 20 */	blr

.global VGetSoundPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CSoundPOINodeUiUii
VGetSoundPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CSoundPOINodeUiUii:
/* 802F09E4 002ED944  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F09E8 002ED948  7C 08 02 A6 */	mflr r0
/* 802F09EC 002ED94C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F09F0 002ED950  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802F09F4 002ED954  7C 79 1B 78 */	mr r25, r3
/* 802F09F8 002ED958  7C 9A 23 78 */	mr r26, r4
/* 802F09FC 002ED95C  7C BB 2B 78 */	mr r27, r5
/* 802F0A00 002ED960  7C DC 33 78 */	mr r28, r6
/* 802F0A04 002ED964  7C FD 3B 78 */	mr r29, r7
/* 802F0A08 002ED968  7D 1E 43 78 */	mr r30, r8
/* 802F0A0C 002ED96C  80 63 00 04 */	lwz r3, 4(r3)
/* 802F0A10 002ED970  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0A14 002ED974  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0A18 002ED978  7D 89 03 A6 */	mtctr r12
/* 802F0A1C 002ED97C  4E 80 04 21 */	bctrl
/* 802F0A20 002ED980  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0A24 002ED984  41 82 00 4C */	beq lbl_802F0A70
/* 802F0A28 002ED988  83 F9 00 04 */	lwz r31, 4(r25)
/* 802F0A2C 002ED98C  7F E3 FB 78 */	mr r3, r31
/* 802F0A30 002ED990  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F0A34 002ED994  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802F0A38 002ED998  7D 89 03 A6 */	mtctr r12
/* 802F0A3C 002ED99C  4E 80 04 21 */	bctrl
/* 802F0A40 002ED9A0  80 19 00 20 */	lwz r0, 0x20(r25)
/* 802F0A44 002ED9A4  7C 68 1B 78 */	mr r8, r3
/* 802F0A48 002ED9A8  7F 43 D3 78 */	mr r3, r26
/* 802F0A4C 002ED9AC  7F 64 DB 78 */	mr r4, r27
/* 802F0A50 002ED9B0  90 01 00 08 */	stw r0, 8(r1)
/* 802F0A54 002ED9B4  7F 85 E3 78 */	mr r5, r28
/* 802F0A58 002ED9B8  7F A6 EB 78 */	mr r6, r29
/* 802F0A5C 002ED9BC  7F C7 F3 78 */	mr r7, r30
/* 802F0A60 002ED9C0  7F EA FB 78 */	mr r10, r31
/* 802F0A64 002ED9C4  39 39 00 0C */	addi r9, r25, 0xc
/* 802F0A68 002ED9C8  48 00 08 A5 */	bl "_getPOIList<13CSoundPOINode>__FRC13CCharAnimTimeP13CSoundPOINodeUiUiiRCQ24rstl50vector<13CSoundPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
/* 802F0A6C 002ED9CC  48 00 00 08 */	b lbl_802F0A74
lbl_802F0A70:
/* 802F0A70 002ED9D0  38 60 00 00 */	li r3, 0
lbl_802F0A74:
/* 802F0A74 002ED9D4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802F0A78 002ED9D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0A7C 002ED9DC  7C 08 03 A6 */	mtlr r0
/* 802F0A80 002ED9E0  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0A84 002ED9E4  4E 80 00 20 */	blr

.global VGetParticlePOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP16CParticlePOINodeUiUii
VGetParticlePOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP16CParticlePOINodeUiUii:
/* 802F0A88 002ED9E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0A8C 002ED9EC  7C 08 02 A6 */	mflr r0
/* 802F0A90 002ED9F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0A94 002ED9F4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802F0A98 002ED9F8  7C 79 1B 78 */	mr r25, r3
/* 802F0A9C 002ED9FC  7C 9A 23 78 */	mr r26, r4
/* 802F0AA0 002EDA00  7C BB 2B 78 */	mr r27, r5
/* 802F0AA4 002EDA04  7C DC 33 78 */	mr r28, r6
/* 802F0AA8 002EDA08  7C FD 3B 78 */	mr r29, r7
/* 802F0AAC 002EDA0C  7D 1E 43 78 */	mr r30, r8
/* 802F0AB0 002EDA10  80 63 00 04 */	lwz r3, 4(r3)
/* 802F0AB4 002EDA14  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0AB8 002EDA18  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0ABC 002EDA1C  7D 89 03 A6 */	mtctr r12
/* 802F0AC0 002EDA20  4E 80 04 21 */	bctrl
/* 802F0AC4 002EDA24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0AC8 002EDA28  41 82 00 4C */	beq lbl_802F0B14
/* 802F0ACC 002EDA2C  83 F9 00 04 */	lwz r31, 4(r25)
/* 802F0AD0 002EDA30  7F E3 FB 78 */	mr r3, r31
/* 802F0AD4 002EDA34  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F0AD8 002EDA38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F0ADC 002EDA3C  7D 89 03 A6 */	mtctr r12
/* 802F0AE0 002EDA40  4E 80 04 21 */	bctrl
/* 802F0AE4 002EDA44  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 802F0AE8 002EDA48  7C 68 1B 78 */	mr r8, r3
/* 802F0AEC 002EDA4C  7F 43 D3 78 */	mr r3, r26
/* 802F0AF0 002EDA50  7F 64 DB 78 */	mr r4, r27
/* 802F0AF4 002EDA54  90 01 00 08 */	stw r0, 8(r1)
/* 802F0AF8 002EDA58  7F 85 E3 78 */	mr r5, r28
/* 802F0AFC 002EDA5C  7F A6 EB 78 */	mr r6, r29
/* 802F0B00 002EDA60  7F C7 F3 78 */	mr r7, r30
/* 802F0B04 002EDA64  7F EA FB 78 */	mr r10, r31
/* 802F0B08 002EDA68  39 39 00 0C */	addi r9, r25, 0xc
/* 802F0B0C 002EDA6C  48 00 05 A9 */	bl "_getPOIList<16CParticlePOINode>__FRC13CCharAnimTimeP16CParticlePOINodeUiUiiRCQ24rstl53vector<16CParticlePOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
/* 802F0B10 002EDA70  48 00 00 08 */	b lbl_802F0B18
lbl_802F0B14:
/* 802F0B14 002EDA74  38 60 00 00 */	li r3, 0
lbl_802F0B18:
/* 802F0B18 002EDA78  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802F0B1C 002EDA7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0B20 002EDA80  7C 08 03 A6 */	mtlr r0
/* 802F0B24 002EDA84  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0B28 002EDA88  4E 80 00 20 */	blr

.global VGetInt32POIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CInt32POINodeUiUii
VGetInt32POIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP13CInt32POINodeUiUii:
/* 802F0B2C 002EDA8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0B30 002EDA90  7C 08 02 A6 */	mflr r0
/* 802F0B34 002EDA94  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0B38 002EDA98  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802F0B3C 002EDA9C  7C 79 1B 78 */	mr r25, r3
/* 802F0B40 002EDAA0  7C 9A 23 78 */	mr r26, r4
/* 802F0B44 002EDAA4  7C BB 2B 78 */	mr r27, r5
/* 802F0B48 002EDAA8  7C DC 33 78 */	mr r28, r6
/* 802F0B4C 002EDAAC  7C FD 3B 78 */	mr r29, r7
/* 802F0B50 002EDAB0  7D 1E 43 78 */	mr r30, r8
/* 802F0B54 002EDAB4  80 63 00 04 */	lwz r3, 4(r3)
/* 802F0B58 002EDAB8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0B5C 002EDABC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0B60 002EDAC0  7D 89 03 A6 */	mtctr r12
/* 802F0B64 002EDAC4  4E 80 04 21 */	bctrl
/* 802F0B68 002EDAC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0B6C 002EDACC  41 82 00 4C */	beq lbl_802F0BB8
/* 802F0B70 002EDAD0  83 F9 00 04 */	lwz r31, 4(r25)
/* 802F0B74 002EDAD4  7F E3 FB 78 */	mr r3, r31
/* 802F0B78 002EDAD8  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F0B7C 002EDADC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F0B80 002EDAE0  7D 89 03 A6 */	mtctr r12
/* 802F0B84 002EDAE4  4E 80 04 21 */	bctrl
/* 802F0B88 002EDAE8  80 19 00 18 */	lwz r0, 0x18(r25)
/* 802F0B8C 002EDAEC  7C 68 1B 78 */	mr r8, r3
/* 802F0B90 002EDAF0  7F 43 D3 78 */	mr r3, r26
/* 802F0B94 002EDAF4  7F 64 DB 78 */	mr r4, r27
/* 802F0B98 002EDAF8  90 01 00 08 */	stw r0, 8(r1)
/* 802F0B9C 002EDAFC  7F 85 E3 78 */	mr r5, r28
/* 802F0BA0 002EDB00  7F A6 EB 78 */	mr r6, r29
/* 802F0BA4 002EDB04  7F C7 F3 78 */	mr r7, r30
/* 802F0BA8 002EDB08  7F EA FB 78 */	mr r10, r31
/* 802F0BAC 002EDB0C  39 39 00 0C */	addi r9, r25, 0xc
/* 802F0BB0 002EDB10  48 00 02 D5 */	bl "_getPOIList<13CInt32POINode>__FRC13CCharAnimTimeP13CInt32POINodeUiUiiRCQ24rstl50vector<13CInt32POINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
/* 802F0BB4 002EDB14  48 00 00 08 */	b lbl_802F0BBC
lbl_802F0BB8:
/* 802F0BB8 002EDB18  38 60 00 00 */	li r3, 0
lbl_802F0BBC:
/* 802F0BBC 002EDB1C  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802F0BC0 002EDB20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0BC4 002EDB24  7C 08 03 A6 */	mtlr r0
/* 802F0BC8 002EDB28  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0BCC 002EDB2C  4E 80 00 20 */	blr

.global VGetBoolPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP12CBoolPOINodeUiUii
VGetBoolPOIList__21CAnimSourceReaderBaseCFRC13CCharAnimTimeP12CBoolPOINodeUiUii:
/* 802F0BD0 002EDB30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0BD4 002EDB34  7C 08 02 A6 */	mflr r0
/* 802F0BD8 002EDB38  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0BDC 002EDB3C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 802F0BE0 002EDB40  7C 79 1B 78 */	mr r25, r3
/* 802F0BE4 002EDB44  7C 9A 23 78 */	mr r26, r4
/* 802F0BE8 002EDB48  7C BB 2B 78 */	mr r27, r5
/* 802F0BEC 002EDB4C  7C DC 33 78 */	mr r28, r6
/* 802F0BF0 002EDB50  7C FD 3B 78 */	mr r29, r7
/* 802F0BF4 002EDB54  7D 1E 43 78 */	mr r30, r8
/* 802F0BF8 002EDB58  80 63 00 04 */	lwz r3, 4(r3)
/* 802F0BFC 002EDB5C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F0C00 002EDB60  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0C04 002EDB64  7D 89 03 A6 */	mtctr r12
/* 802F0C08 002EDB68  4E 80 04 21 */	bctrl
/* 802F0C0C 002EDB6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0C10 002EDB70  41 82 00 4C */	beq lbl_802F0C5C
/* 802F0C14 002EDB74  83 F9 00 04 */	lwz r31, 4(r25)
/* 802F0C18 002EDB78  7F E3 FB 78 */	mr r3, r31
/* 802F0C1C 002EDB7C  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F0C20 002EDB80  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802F0C24 002EDB84  7D 89 03 A6 */	mtctr r12
/* 802F0C28 002EDB88  4E 80 04 21 */	bctrl
/* 802F0C2C 002EDB8C  80 19 00 14 */	lwz r0, 0x14(r25)
/* 802F0C30 002EDB90  7C 68 1B 78 */	mr r8, r3
/* 802F0C34 002EDB94  7F 43 D3 78 */	mr r3, r26
/* 802F0C38 002EDB98  7F 64 DB 78 */	mr r4, r27
/* 802F0C3C 002EDB9C  90 01 00 08 */	stw r0, 8(r1)
/* 802F0C40 002EDBA0  7F 85 E3 78 */	mr r5, r28
/* 802F0C44 002EDBA4  7F A6 EB 78 */	mr r6, r29
/* 802F0C48 002EDBA8  7F C7 F3 78 */	mr r7, r30
/* 802F0C4C 002EDBAC  7F EA FB 78 */	mr r10, r31
/* 802F0C50 002EDBB0  39 39 00 0C */	addi r9, r25, 0xc
/* 802F0C54 002EDBB4  48 00 00 21 */	bl "_getPOIList<12CBoolPOINode>__FRC13CCharAnimTimeP12CBoolPOINodeUiUiiRCQ24rstl49vector<12CBoolPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
/* 802F0C58 002EDBB8  48 00 00 08 */	b lbl_802F0C60
lbl_802F0C5C:
/* 802F0C5C 002EDBBC  38 60 00 00 */	li r3, 0
lbl_802F0C60:
/* 802F0C60 002EDBC0  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 802F0C64 002EDBC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0C68 002EDBC8  7C 08 03 A6 */	mtlr r0
/* 802F0C6C 002EDBCC  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0C70 002EDBD0  4E 80 00 20 */	blr

.global "_getPOIList<12CBoolPOINode>__FRC13CCharAnimTimeP12CBoolPOINodeUiUiiRCQ24rstl49vector<12CBoolPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
"_getPOIList<12CBoolPOINode>__FRC13CCharAnimTimeP12CBoolPOINodeUiUiiRCQ24rstl49vector<12CBoolPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi":
/* 802F0C74 002EDBD4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802F0C78 002EDBD8  7C 08 02 A6 */	mflr r0
/* 802F0C7C 002EDBDC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802F0C80 002EDBE0  BE A1 00 74 */	stmw r21, 0x74(r1)
/* 802F0C84 002EDBE4  7D 5A 53 78 */	mr r26, r10
/* 802F0C88 002EDBE8  7C 7D 1B 78 */	mr r29, r3
/* 802F0C8C 002EDBEC  7C 95 23 78 */	mr r21, r4
/* 802F0C90 002EDBF0  7F 43 D3 78 */	mr r3, r26
/* 802F0C94 002EDBF4  7C B6 2B 78 */	mr r22, r5
/* 802F0C98 002EDBF8  7C D7 33 78 */	mr r23, r6
/* 802F0C9C 002EDBFC  7D 18 43 78 */	mr r24, r8
/* 802F0CA0 002EDC00  7D 39 4B 78 */	mr r25, r9
/* 802F0CA4 002EDC04  83 81 00 A8 */	lwz r28, 0xa8(r1)
/* 802F0CA8 002EDC08  3B 60 00 00 */	li r27, 0
/* 802F0CAC 002EDC0C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F0CB0 002EDC10  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0CB4 002EDC14  7D 89 03 A6 */	mtctr r12
/* 802F0CB8 002EDC18  4E 80 04 21 */	bctrl
/* 802F0CBC 002EDC1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0CC0 002EDC20  41 82 01 AC */	beq lbl_802F0E6C
/* 802F0CC4 002EDC24  83 F8 00 04 */	lwz r31, 4(r24)
/* 802F0CC8 002EDC28  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0CCC 002EDC2C  40 81 01 A0 */	ble lbl_802F0E6C
/* 802F0CD0 002EDC30  7F 44 D3 78 */	mr r4, r26
/* 802F0CD4 002EDC34  38 61 00 10 */	addi r3, r1, 0x10
/* 802F0CD8 002EDC38  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F0CDC 002EDC3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F0CE0 002EDC40  7D 89 03 A6 */	mtctr r12
/* 802F0CE4 002EDC44  4E 80 04 21 */	bctrl
/* 802F0CE8 002EDC48  7F 24 CB 78 */	mr r4, r25
/* 802F0CEC 002EDC4C  7F A5 EB 78 */	mr r5, r29
/* 802F0CF0 002EDC50  3B 41 00 10 */	addi r26, r1, 0x10
/* 802F0CF4 002EDC54  38 61 00 08 */	addi r3, r1, 8
/* 802F0CF8 002EDC58  48 05 78 AD */	bl __pl__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0CFC 002EDC5C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F0D00 002EDC60  7F 44 D3 78 */	mr r4, r26
/* 802F0D04 002EDC64  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F0D08 002EDC68  38 61 00 28 */	addi r3, r1, 0x28
/* 802F0D0C 002EDC6C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802F0D10 002EDC70  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F0D14 002EDC74  48 05 7F 29 */	bl __lt__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0D18 002EDC78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0D1C 002EDC7C  41 82 00 0C */	beq lbl_802F0D28
/* 802F0D20 002EDC80  38 61 00 28 */	addi r3, r1, 0x28
/* 802F0D24 002EDC84  48 00 00 08 */	b lbl_802F0D2C
lbl_802F0D28:
/* 802F0D28 002EDC88  7F 43 D3 78 */	mr r3, r26
lbl_802F0D2C:
/* 802F0D2C 002EDC8C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F0D30 002EDC90  7C 1C F8 00 */	cmpw r28, r31
/* 802F0D34 002EDC94  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802F0D38 002EDC98  80 03 00 04 */	lwz r0, 4(r3)
/* 802F0D3C 002EDC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0D40 002EDCA0  40 80 01 2C */	bge lbl_802F0E6C
/* 802F0D44 002EDCA4  1F DC 00 3C */	mulli r30, r28, 0x3c
/* 802F0D48 002EDCA8  80 18 00 0C */	lwz r0, 0xc(r24)
/* 802F0D4C 002EDCAC  7F 9A E3 78 */	mr r26, r28
/* 802F0D50 002EDCB0  3B A1 00 38 */	addi r29, r1, 0x38
/* 802F0D54 002EDCB4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F0D58 002EDCB8  7C 60 1A 14 */	add r3, r0, r3
/* 802F0D5C 002EDCBC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F0D60 002EDCC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F0D64 002EDCC4  80 03 00 04 */	lwz r0, 4(r3)
/* 802F0D68 002EDCC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F0D6C 002EDCCC  48 00 00 E4 */	b lbl_802F0E50
lbl_802F0D70:
/* 802F0D70 002EDCD0  7C 1B BA 14 */	add r0, r27, r23
/* 802F0D74 002EDCD4  80 78 00 0C */	lwz r3, 0xc(r24)
/* 802F0D78 002EDCD8  7C 00 B0 40 */	cmplw r0, r22
/* 802F0D7C 002EDCDC  7C 83 F2 14 */	add r4, r3, r30
/* 802F0D80 002EDCE0  40 80 00 A4 */	bge lbl_802F0E24
/* 802F0D84 002EDCE4  7F 25 CB 78 */	mr r5, r25
/* 802F0D88 002EDCE8  38 61 00 30 */	addi r3, r1, 0x30
/* 802F0D8C 002EDCEC  48 00 6D 29 */	bl CopyNodeMinusStartTime__12CBoolPOINodeFRC12CBoolPOINodeRC13CCharAnimTime
/* 802F0D90 002EDCF0  7C 17 DA 14 */	add r0, r23, r27
/* 802F0D94 002EDCF4  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 802F0D98 002EDCF8  1C 00 00 3C */	mulli r0, r0, 0x3c
/* 802F0D9C 002EDCFC  7F A4 EB 78 */	mr r4, r29
/* 802F0DA0 002EDD00  7F 95 02 14 */	add r28, r21, r0
/* 802F0DA4 002EDD04  B0 7C 00 04 */	sth r3, 4(r28)
/* 802F0DA8 002EDD08  38 7C 00 08 */	addi r3, r28, 8
/* 802F0DAC 002EDD0C  48 04 CF B1 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0DB0 002EDD10  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 802F0DB4 002EDD14  3C 80 80 3E */	lis r4, __vt__12CBoolPOINode@ha
/* 802F0DB8 002EDD18  3C 60 80 3E */	lis r3, __vt__8CPOINode@ha
/* 802F0DBC 002EDD1C  28 1D 00 00 */	cmplwi r29, 0
/* 802F0DC0 002EDD20  B0 1C 00 18 */	sth r0, 0x18(r28)
/* 802F0DC4 002EDD24  38 84 9B 68 */	addi r4, r4, __vt__12CBoolPOINode@l
/* 802F0DC8 002EDD28  38 03 9B 8C */	addi r0, r3, __vt__8CPOINode@l
/* 802F0DCC 002EDD2C  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 802F0DD0 002EDD30  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802F0DD4 002EDD34  90 BC 00 1C */	stw r5, 0x1c(r28)
/* 802F0DD8 002EDD38  90 7C 00 20 */	stw r3, 0x20(r28)
/* 802F0DDC 002EDD3C  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802F0DE0 002EDD40  90 7C 00 24 */	stw r3, 0x24(r28)
/* 802F0DE4 002EDD44  88 61 00 58 */	lbz r3, 0x58(r1)
/* 802F0DE8 002EDD48  98 7C 00 28 */	stb r3, 0x28(r28)
/* 802F0DEC 002EDD4C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802F0DF0 002EDD50  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 802F0DF4 002EDD54  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802F0DF8 002EDD58  90 7C 00 30 */	stw r3, 0x30(r28)
/* 802F0DFC 002EDD5C  80 61 00 64 */	lwz r3, 0x64(r1)
/* 802F0E00 002EDD60  90 7C 00 34 */	stw r3, 0x34(r28)
/* 802F0E04 002EDD64  88 61 00 68 */	lbz r3, 0x68(r1)
/* 802F0E08 002EDD68  98 7C 00 38 */	stb r3, 0x38(r28)
/* 802F0E0C 002EDD6C  90 81 00 30 */	stw r4, 0x30(r1)
/* 802F0E10 002EDD70  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F0E14 002EDD74  41 82 00 0C */	beq lbl_802F0E20
/* 802F0E18 002EDD78  7F A3 EB 78 */	mr r3, r29
/* 802F0E1C 002EDD7C  48 04 CC C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F0E20:
/* 802F0E20 002EDD80  3B 7B 00 01 */	addi r27, r27, 1
lbl_802F0E24:
/* 802F0E24 002EDD84  3B 5A 00 01 */	addi r26, r26, 1
/* 802F0E28 002EDD88  3B DE 00 3C */	addi r30, r30, 0x3c
/* 802F0E2C 002EDD8C  7C 1A F8 00 */	cmpw r26, r31
/* 802F0E30 002EDD90  40 80 00 20 */	bge lbl_802F0E50
/* 802F0E34 002EDD94  80 18 00 0C */	lwz r0, 0xc(r24)
/* 802F0E38 002EDD98  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F0E3C 002EDD9C  7C 60 1A 14 */	add r3, r0, r3
/* 802F0E40 002EDDA0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F0E44 002EDDA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F0E48 002EDDA8  80 03 00 04 */	lwz r0, 4(r3)
/* 802F0E4C 002EDDAC  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802F0E50:
/* 802F0E50 002EDDB0  7C 1A F8 00 */	cmpw r26, r31
/* 802F0E54 002EDDB4  40 80 00 18 */	bge lbl_802F0E6C
/* 802F0E58 002EDDB8  38 61 00 18 */	addi r3, r1, 0x18
/* 802F0E5C 002EDDBC  38 81 00 20 */	addi r4, r1, 0x20
/* 802F0E60 002EDDC0  48 05 76 45 */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0E64 002EDDC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0E68 002EDDC8  40 82 FF 08 */	bne lbl_802F0D70
lbl_802F0E6C:
/* 802F0E6C 002EDDCC  7F 63 DB 78 */	mr r3, r27
/* 802F0E70 002EDDD0  BA A1 00 74 */	lmw r21, 0x74(r1)
/* 802F0E74 002EDDD4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802F0E78 002EDDD8  7C 08 03 A6 */	mtlr r0
/* 802F0E7C 002EDDDC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802F0E80 002EDDE0  4E 80 00 20 */	blr

.global "_getPOIList<13CInt32POINode>__FRC13CCharAnimTimeP13CInt32POINodeUiUiiRCQ24rstl50vector<13CInt32POINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
"_getPOIList<13CInt32POINode>__FRC13CCharAnimTimeP13CInt32POINodeUiUiiRCQ24rstl50vector<13CInt32POINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi":
/* 802F0E84 002EDDE4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802F0E88 002EDDE8  7C 08 02 A6 */	mflr r0
/* 802F0E8C 002EDDEC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802F0E90 002EDDF0  BE 81 00 80 */	stmw r20, 0x80(r1)
/* 802F0E94 002EDDF4  7D 59 53 78 */	mr r25, r10
/* 802F0E98 002EDDF8  7C 7C 1B 78 */	mr r28, r3
/* 802F0E9C 002EDDFC  7C 94 23 78 */	mr r20, r4
/* 802F0EA0 002EDE00  7F 23 CB 78 */	mr r3, r25
/* 802F0EA4 002EDE04  7C B5 2B 78 */	mr r21, r5
/* 802F0EA8 002EDE08  7C D6 33 78 */	mr r22, r6
/* 802F0EAC 002EDE0C  7D 17 43 78 */	mr r23, r8
/* 802F0EB0 002EDE10  7D 38 4B 78 */	mr r24, r9
/* 802F0EB4 002EDE14  83 61 00 B8 */	lwz r27, 0xb8(r1)
/* 802F0EB8 002EDE18  3B 40 00 00 */	li r26, 0
/* 802F0EBC 002EDE1C  81 99 00 00 */	lwz r12, 0(r25)
/* 802F0EC0 002EDE20  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F0EC4 002EDE24  7D 89 03 A6 */	mtctr r12
/* 802F0EC8 002EDE28  4E 80 04 21 */	bctrl
/* 802F0ECC 002EDE2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0ED0 002EDE30  41 82 01 CC */	beq lbl_802F109C
/* 802F0ED4 002EDE34  83 F7 00 04 */	lwz r31, 4(r23)
/* 802F0ED8 002EDE38  2C 1F 00 00 */	cmpwi r31, 0
/* 802F0EDC 002EDE3C  40 81 01 C0 */	ble lbl_802F109C
/* 802F0EE0 002EDE40  7F 24 CB 78 */	mr r4, r25
/* 802F0EE4 002EDE44  38 61 00 10 */	addi r3, r1, 0x10
/* 802F0EE8 002EDE48  81 99 00 00 */	lwz r12, 0(r25)
/* 802F0EEC 002EDE4C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F0EF0 002EDE50  7D 89 03 A6 */	mtctr r12
/* 802F0EF4 002EDE54  4E 80 04 21 */	bctrl
/* 802F0EF8 002EDE58  7F 04 C3 78 */	mr r4, r24
/* 802F0EFC 002EDE5C  7F 85 E3 78 */	mr r5, r28
/* 802F0F00 002EDE60  3B 21 00 10 */	addi r25, r1, 0x10
/* 802F0F04 002EDE64  38 61 00 08 */	addi r3, r1, 8
/* 802F0F08 002EDE68  48 05 76 9D */	bl __pl__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0F0C 002EDE6C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F0F10 002EDE70  7F 24 CB 78 */	mr r4, r25
/* 802F0F14 002EDE74  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F0F18 002EDE78  38 61 00 28 */	addi r3, r1, 0x28
/* 802F0F1C 002EDE7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802F0F20 002EDE80  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F0F24 002EDE84  48 05 7D 19 */	bl __lt__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F0F28 002EDE88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F0F2C 002EDE8C  41 82 00 0C */	beq lbl_802F0F38
/* 802F0F30 002EDE90  38 61 00 28 */	addi r3, r1, 0x28
/* 802F0F34 002EDE94  48 00 00 08 */	b lbl_802F0F3C
lbl_802F0F38:
/* 802F0F38 002EDE98  7F 23 CB 78 */	mr r3, r25
lbl_802F0F3C:
/* 802F0F3C 002EDE9C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F0F40 002EDEA0  7C 1B F8 00 */	cmpw r27, r31
/* 802F0F44 002EDEA4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802F0F48 002EDEA8  80 03 00 04 */	lwz r0, 4(r3)
/* 802F0F4C 002EDEAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F0F50 002EDEB0  40 80 01 4C */	bge lbl_802F109C
/* 802F0F54 002EDEB4  1F DB 00 4C */	mulli r30, r27, 0x4c
/* 802F0F58 002EDEB8  80 17 00 0C */	lwz r0, 0xc(r23)
/* 802F0F5C 002EDEBC  7F 79 DB 78 */	mr r25, r27
/* 802F0F60 002EDEC0  3B A1 00 38 */	addi r29, r1, 0x38
/* 802F0F64 002EDEC4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F0F68 002EDEC8  3B 81 00 6C */	addi r28, r1, 0x6c
/* 802F0F6C 002EDECC  7C 60 1A 14 */	add r3, r0, r3
/* 802F0F70 002EDED0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F0F74 002EDED4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F0F78 002EDED8  80 03 00 04 */	lwz r0, 4(r3)
/* 802F0F7C 002EDEDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F0F80 002EDEE0  48 00 01 00 */	b lbl_802F1080
lbl_802F0F84:
/* 802F0F84 002EDEE4  7C 1A B2 14 */	add r0, r26, r22
/* 802F0F88 002EDEE8  80 77 00 0C */	lwz r3, 0xc(r23)
/* 802F0F8C 002EDEEC  7C 00 A8 40 */	cmplw r0, r21
/* 802F0F90 002EDEF0  7C 83 F2 14 */	add r4, r3, r30
/* 802F0F94 002EDEF4  40 80 00 C0 */	bge lbl_802F1054
/* 802F0F98 002EDEF8  7F 05 C3 78 */	mr r5, r24
/* 802F0F9C 002EDEFC  38 61 00 30 */	addi r3, r1, 0x30
/* 802F0FA0 002EDF00  48 00 BF 09 */	bl CopyNodeMinusStartTime__13CInt32POINodeFRC13CInt32POINodeRC13CCharAnimTime
/* 802F0FA4 002EDF04  7C 16 D2 14 */	add r0, r22, r26
/* 802F0FA8 002EDF08  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 802F0FAC 002EDF0C  1C 00 00 4C */	mulli r0, r0, 0x4c
/* 802F0FB0 002EDF10  7F A4 EB 78 */	mr r4, r29
/* 802F0FB4 002EDF14  7F 74 02 14 */	add r27, r20, r0
/* 802F0FB8 002EDF18  B0 7B 00 04 */	sth r3, 4(r27)
/* 802F0FBC 002EDF1C  38 7B 00 08 */	addi r3, r27, 8
/* 802F0FC0 002EDF20  48 04 CD 9D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F0FC4 002EDF24  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 802F0FC8 002EDF28  7F 84 E3 78 */	mr r4, r28
/* 802F0FCC 002EDF2C  38 7B 00 3C */	addi r3, r27, 0x3c
/* 802F0FD0 002EDF30  B0 1B 00 18 */	sth r0, 0x18(r27)
/* 802F0FD4 002EDF34  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 802F0FD8 002EDF38  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802F0FDC 002EDF3C  90 BB 00 1C */	stw r5, 0x1c(r27)
/* 802F0FE0 002EDF40  90 1B 00 20 */	stw r0, 0x20(r27)
/* 802F0FE4 002EDF44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F0FE8 002EDF48  90 1B 00 24 */	stw r0, 0x24(r27)
/* 802F0FEC 002EDF4C  88 01 00 58 */	lbz r0, 0x58(r1)
/* 802F0FF0 002EDF50  98 1B 00 28 */	stb r0, 0x28(r27)
/* 802F0FF4 002EDF54  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802F0FF8 002EDF58  D0 1B 00 2C */	stfs f0, 0x2c(r27)
/* 802F0FFC 002EDF5C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802F1000 002EDF60  90 1B 00 30 */	stw r0, 0x30(r27)
/* 802F1004 002EDF64  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F1008 002EDF68  90 1B 00 34 */	stw r0, 0x34(r27)
/* 802F100C 002EDF6C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802F1010 002EDF70  90 1B 00 38 */	stw r0, 0x38(r27)
/* 802F1014 002EDF74  48 04 CD 49 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F1018 002EDF78  3C 60 80 3E */	lis r3, __vt__13CInt32POINode@ha
/* 802F101C 002EDF7C  28 1C 00 00 */	cmplwi r28, 0
/* 802F1020 002EDF80  38 03 9B 98 */	addi r0, r3, __vt__13CInt32POINode@l
/* 802F1024 002EDF84  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F1028 002EDF88  41 82 00 0C */	beq lbl_802F1034
/* 802F102C 002EDF8C  7F 83 E3 78 */	mr r3, r28
/* 802F1030 002EDF90  48 04 CA B1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F1034:
/* 802F1034 002EDF94  3C 60 80 3E */	lis r3, __vt__8CPOINode@ha
/* 802F1038 002EDF98  28 1D 00 00 */	cmplwi r29, 0
/* 802F103C 002EDF9C  38 03 9B 8C */	addi r0, r3, __vt__8CPOINode@l
/* 802F1040 002EDFA0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F1044 002EDFA4  41 82 00 0C */	beq lbl_802F1050
/* 802F1048 002EDFA8  7F A3 EB 78 */	mr r3, r29
/* 802F104C 002EDFAC  48 04 CA 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F1050:
/* 802F1050 002EDFB0  3B 5A 00 01 */	addi r26, r26, 1
lbl_802F1054:
/* 802F1054 002EDFB4  3B 39 00 01 */	addi r25, r25, 1
/* 802F1058 002EDFB8  3B DE 00 4C */	addi r30, r30, 0x4c
/* 802F105C 002EDFBC  7C 19 F8 00 */	cmpw r25, r31
/* 802F1060 002EDFC0  40 80 00 20 */	bge lbl_802F1080
/* 802F1064 002EDFC4  80 17 00 0C */	lwz r0, 0xc(r23)
/* 802F1068 002EDFC8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F106C 002EDFCC  7C 60 1A 14 */	add r3, r0, r3
/* 802F1070 002EDFD0  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F1074 002EDFD4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F1078 002EDFD8  80 03 00 04 */	lwz r0, 4(r3)
/* 802F107C 002EDFDC  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802F1080:
/* 802F1080 002EDFE0  7C 19 F8 00 */	cmpw r25, r31
/* 802F1084 002EDFE4  40 80 00 18 */	bge lbl_802F109C
/* 802F1088 002EDFE8  38 61 00 18 */	addi r3, r1, 0x18
/* 802F108C 002EDFEC  38 81 00 20 */	addi r4, r1, 0x20
/* 802F1090 002EDFF0  48 05 74 15 */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F1094 002EDFF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F1098 002EDFF8  40 82 FE EC */	bne lbl_802F0F84
lbl_802F109C:
/* 802F109C 002EDFFC  7F 43 D3 78 */	mr r3, r26
/* 802F10A0 002EE000  BA 81 00 80 */	lmw r20, 0x80(r1)
/* 802F10A4 002EE004  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802F10A8 002EE008  7C 08 03 A6 */	mtlr r0
/* 802F10AC 002EE00C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802F10B0 002EE010  4E 80 00 20 */	blr

.global "_getPOIList<16CParticlePOINode>__FRC13CCharAnimTimeP16CParticlePOINodeUiUiiRCQ24rstl53vector<16CParticlePOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
"_getPOIList<16CParticlePOINode>__FRC13CCharAnimTimeP16CParticlePOINodeUiUiiRCQ24rstl53vector<16CParticlePOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi":
/* 802F10B4 002EE014  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 802F10B8 002EE018  7C 08 02 A6 */	mflr r0
/* 802F10BC 002EE01C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 802F10C0 002EE020  BE 61 00 9C */	stmw r19, 0x9c(r1)
/* 802F10C4 002EE024  7D 5A 53 78 */	mr r26, r10
/* 802F10C8 002EE028  7C 7B 1B 78 */	mr r27, r3
/* 802F10CC 002EE02C  7C 93 23 78 */	mr r19, r4
/* 802F10D0 002EE030  7F 43 D3 78 */	mr r3, r26
/* 802F10D4 002EE034  7C B4 2B 78 */	mr r20, r5
/* 802F10D8 002EE038  7C D5 33 78 */	mr r21, r6
/* 802F10DC 002EE03C  7D 16 43 78 */	mr r22, r8
/* 802F10E0 002EE040  7D 37 4B 78 */	mr r23, r9
/* 802F10E4 002EE044  83 01 00 D8 */	lwz r24, 0xd8(r1)
/* 802F10E8 002EE048  3B 20 00 00 */	li r25, 0
/* 802F10EC 002EE04C  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F10F0 002EE050  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F10F4 002EE054  7D 89 03 A6 */	mtctr r12
/* 802F10F8 002EE058  4E 80 04 21 */	bctrl
/* 802F10FC 002EE05C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F1100 002EE060  41 82 01 F4 */	beq lbl_802F12F4
/* 802F1104 002EE064  83 F6 00 04 */	lwz r31, 4(r22)
/* 802F1108 002EE068  2C 1F 00 00 */	cmpwi r31, 0
/* 802F110C 002EE06C  40 81 01 E8 */	ble lbl_802F12F4
/* 802F1110 002EE070  7F 44 D3 78 */	mr r4, r26
/* 802F1114 002EE074  38 61 00 10 */	addi r3, r1, 0x10
/* 802F1118 002EE078  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F111C 002EE07C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F1120 002EE080  7D 89 03 A6 */	mtctr r12
/* 802F1124 002EE084  4E 80 04 21 */	bctrl
/* 802F1128 002EE088  7E E4 BB 78 */	mr r4, r23
/* 802F112C 002EE08C  7F 65 DB 78 */	mr r5, r27
/* 802F1130 002EE090  3B 41 00 10 */	addi r26, r1, 0x10
/* 802F1134 002EE094  38 61 00 08 */	addi r3, r1, 8
/* 802F1138 002EE098  48 05 74 6D */	bl __pl__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F113C 002EE09C  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F1140 002EE0A0  7F 44 D3 78 */	mr r4, r26
/* 802F1144 002EE0A4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F1148 002EE0A8  38 61 00 28 */	addi r3, r1, 0x28
/* 802F114C 002EE0AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802F1150 002EE0B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F1154 002EE0B4  48 05 7A E9 */	bl __lt__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F1158 002EE0B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F115C 002EE0BC  41 82 00 0C */	beq lbl_802F1168
/* 802F1160 002EE0C0  38 61 00 28 */	addi r3, r1, 0x28
/* 802F1164 002EE0C4  48 00 00 08 */	b lbl_802F116C
lbl_802F1168:
/* 802F1168 002EE0C8  7F 43 D3 78 */	mr r3, r26
lbl_802F116C:
/* 802F116C 002EE0CC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F1170 002EE0D0  7C 18 F8 00 */	cmpw r24, r31
/* 802F1174 002EE0D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802F1178 002EE0D8  80 03 00 04 */	lwz r0, 4(r3)
/* 802F117C 002EE0DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F1180 002EE0E0  40 80 01 74 */	bge lbl_802F12F4
/* 802F1184 002EE0E4  1F D8 00 5C */	mulli r30, r24, 0x5c
/* 802F1188 002EE0E8  3B 61 00 68 */	addi r27, r1, 0x68
/* 802F118C 002EE0EC  80 16 00 0C */	lwz r0, 0xc(r22)
/* 802F1190 002EE0F0  3B A1 00 38 */	addi r29, r1, 0x38
/* 802F1194 002EE0F4  3B 9B 00 0C */	addi r28, r27, 0xc
/* 802F1198 002EE0F8  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F119C 002EE0FC  7C 60 1A 14 */	add r3, r0, r3
/* 802F11A0 002EE100  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F11A4 002EE104  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F11A8 002EE108  80 03 00 04 */	lwz r0, 4(r3)
/* 802F11AC 002EE10C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F11B0 002EE110  48 00 01 28 */	b lbl_802F12D8
lbl_802F11B4:
/* 802F11B4 002EE114  7C 19 AA 14 */	add r0, r25, r21
/* 802F11B8 002EE118  80 76 00 0C */	lwz r3, 0xc(r22)
/* 802F11BC 002EE11C  7C 00 A0 40 */	cmplw r0, r20
/* 802F11C0 002EE120  7C 83 F2 14 */	add r4, r3, r30
/* 802F11C4 002EE124  40 80 00 E8 */	bge lbl_802F12AC
/* 802F11C8 002EE128  7E E5 BB 78 */	mr r5, r23
/* 802F11CC 002EE12C  38 61 00 30 */	addi r3, r1, 0x30
/* 802F11D0 002EE130  48 00 BD E5 */	bl CopyNodeMinusStartTime__16CParticlePOINodeFRC16CParticlePOINodeRC13CCharAnimTime
/* 802F11D4 002EE134  7C 15 CA 14 */	add r0, r21, r25
/* 802F11D8 002EE138  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 802F11DC 002EE13C  1C 00 00 5C */	mulli r0, r0, 0x5c
/* 802F11E0 002EE140  7F A4 EB 78 */	mr r4, r29
/* 802F11E4 002EE144  7F 53 02 14 */	add r26, r19, r0
/* 802F11E8 002EE148  B0 7A 00 04 */	sth r3, 4(r26)
/* 802F11EC 002EE14C  38 7A 00 08 */	addi r3, r26, 8
/* 802F11F0 002EE150  48 04 CB 6D */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F11F4 002EE154  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 802F11F8 002EE158  7F 84 E3 78 */	mr r4, r28
/* 802F11FC 002EE15C  38 7A 00 44 */	addi r3, r26, 0x44
/* 802F1200 002EE160  B0 1A 00 18 */	sth r0, 0x18(r26)
/* 802F1204 002EE164  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 802F1208 002EE168  80 01 00 50 */	lwz r0, 0x50(r1)
/* 802F120C 002EE16C  90 BA 00 1C */	stw r5, 0x1c(r26)
/* 802F1210 002EE170  90 1A 00 20 */	stw r0, 0x20(r26)
/* 802F1214 002EE174  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802F1218 002EE178  90 1A 00 24 */	stw r0, 0x24(r26)
/* 802F121C 002EE17C  88 01 00 58 */	lbz r0, 0x58(r1)
/* 802F1220 002EE180  98 1A 00 28 */	stb r0, 0x28(r26)
/* 802F1224 002EE184  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802F1228 002EE188  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 802F122C 002EE18C  80 01 00 60 */	lwz r0, 0x60(r1)
/* 802F1230 002EE190  90 1A 00 30 */	stw r0, 0x30(r26)
/* 802F1234 002EE194  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F1238 002EE198  90 1A 00 34 */	stw r0, 0x34(r26)
/* 802F123C 002EE19C  80 01 00 68 */	lwz r0, 0x68(r1)
/* 802F1240 002EE1A0  90 1A 00 38 */	stw r0, 0x38(r26)
/* 802F1244 002EE1A4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 802F1248 002EE1A8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 802F124C 002EE1AC  80 01 00 70 */	lwz r0, 0x70(r1)
/* 802F1250 002EE1B0  90 1A 00 40 */	stw r0, 0x40(r26)
/* 802F1254 002EE1B4  48 04 CB 09 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F1258 002EE1B8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 802F125C 002EE1BC  3C 60 80 3E */	lis r3, __vt__16CParticlePOINode@ha
/* 802F1260 002EE1C0  28 1B 00 00 */	cmplwi r27, 0
/* 802F1264 002EE1C4  D0 1A 00 54 */	stfs f0, 0x54(r26)
/* 802F1268 002EE1C8  38 03 9B 74 */	addi r0, r3, __vt__16CParticlePOINode@l
/* 802F126C 002EE1CC  80 61 00 88 */	lwz r3, 0x88(r1)
/* 802F1270 002EE1D0  90 7A 00 58 */	stw r3, 0x58(r26)
/* 802F1274 002EE1D4  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F1278 002EE1D8  41 82 00 14 */	beq lbl_802F128C
/* 802F127C 002EE1DC  28 1C 00 00 */	cmplwi r28, 0
/* 802F1280 002EE1E0  41 82 00 0C */	beq lbl_802F128C
/* 802F1284 002EE1E4  7F 83 E3 78 */	mr r3, r28
/* 802F1288 002EE1E8  48 04 C8 59 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F128C:
/* 802F128C 002EE1EC  3C 60 80 3E */	lis r3, __vt__8CPOINode@ha
/* 802F1290 002EE1F0  28 1D 00 00 */	cmplwi r29, 0
/* 802F1294 002EE1F4  38 03 9B 8C */	addi r0, r3, __vt__8CPOINode@l
/* 802F1298 002EE1F8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F129C 002EE1FC  41 82 00 0C */	beq lbl_802F12A8
/* 802F12A0 002EE200  7F A3 EB 78 */	mr r3, r29
/* 802F12A4 002EE204  48 04 C8 3D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F12A8:
/* 802F12A8 002EE208  3B 39 00 01 */	addi r25, r25, 1
lbl_802F12AC:
/* 802F12AC 002EE20C  3B 18 00 01 */	addi r24, r24, 1
/* 802F12B0 002EE210  3B DE 00 5C */	addi r30, r30, 0x5c
/* 802F12B4 002EE214  7C 18 F8 00 */	cmpw r24, r31
/* 802F12B8 002EE218  40 80 00 20 */	bge lbl_802F12D8
/* 802F12BC 002EE21C  80 16 00 0C */	lwz r0, 0xc(r22)
/* 802F12C0 002EE220  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F12C4 002EE224  7C 60 1A 14 */	add r3, r0, r3
/* 802F12C8 002EE228  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F12CC 002EE22C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F12D0 002EE230  80 03 00 04 */	lwz r0, 4(r3)
/* 802F12D4 002EE234  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802F12D8:
/* 802F12D8 002EE238  7C 18 F8 00 */	cmpw r24, r31
/* 802F12DC 002EE23C  40 80 00 18 */	bge lbl_802F12F4
/* 802F12E0 002EE240  38 61 00 18 */	addi r3, r1, 0x18
/* 802F12E4 002EE244  38 81 00 20 */	addi r4, r1, 0x20
/* 802F12E8 002EE248  48 05 71 BD */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F12EC 002EE24C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F12F0 002EE250  40 82 FE C4 */	bne lbl_802F11B4
lbl_802F12F4:
/* 802F12F4 002EE254  7F 23 CB 78 */	mr r3, r25
/* 802F12F8 002EE258  BA 61 00 9C */	lmw r19, 0x9c(r1)
/* 802F12FC 002EE25C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 802F1300 002EE260  7C 08 03 A6 */	mtlr r0
/* 802F1304 002EE264  38 21 00 D0 */	addi r1, r1, 0xd0
/* 802F1308 002EE268  4E 80 00 20 */	blr

.global "_getPOIList<13CSoundPOINode>__FRC13CCharAnimTimeP13CSoundPOINodeUiUiiRCQ24rstl50vector<13CSoundPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi"
"_getPOIList<13CSoundPOINode>__FRC13CCharAnimTimeP13CSoundPOINodeUiUiiRCQ24rstl50vector<13CSoundPOINode,Q24rstl17rmemory_allocator>RC13CCharAnimTimeRC15IAnimSourceInfoi":
/* 802F130C 002EE26C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802F1310 002EE270  7C 08 02 A6 */	mflr r0
/* 802F1314 002EE274  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802F1318 002EE278  BE A1 00 84 */	stmw r21, 0x84(r1)
/* 802F131C 002EE27C  7D 5A 53 78 */	mr r26, r10
/* 802F1320 002EE280  7C 7D 1B 78 */	mr r29, r3
/* 802F1324 002EE284  7C 95 23 78 */	mr r21, r4
/* 802F1328 002EE288  7F 43 D3 78 */	mr r3, r26
/* 802F132C 002EE28C  7C B6 2B 78 */	mr r22, r5
/* 802F1330 002EE290  7C D7 33 78 */	mr r23, r6
/* 802F1334 002EE294  7D 18 43 78 */	mr r24, r8
/* 802F1338 002EE298  7D 39 4B 78 */	mr r25, r9
/* 802F133C 002EE29C  83 81 00 B8 */	lwz r28, 0xb8(r1)
/* 802F1340 002EE2A0  3B 60 00 00 */	li r27, 0
/* 802F1344 002EE2A4  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F1348 002EE2A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802F134C 002EE2AC  7D 89 03 A6 */	mtctr r12
/* 802F1350 002EE2B0  4E 80 04 21 */	bctrl
/* 802F1354 002EE2B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F1358 002EE2B8  41 82 01 BC */	beq lbl_802F1514
/* 802F135C 002EE2BC  83 F8 00 04 */	lwz r31, 4(r24)
/* 802F1360 002EE2C0  2C 1F 00 00 */	cmpwi r31, 0
/* 802F1364 002EE2C4  40 81 01 B0 */	ble lbl_802F1514
/* 802F1368 002EE2C8  7F 44 D3 78 */	mr r4, r26
/* 802F136C 002EE2CC  38 61 00 10 */	addi r3, r1, 0x10
/* 802F1370 002EE2D0  81 9A 00 00 */	lwz r12, 0(r26)
/* 802F1374 002EE2D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F1378 002EE2D8  7D 89 03 A6 */	mtctr r12
/* 802F137C 002EE2DC  4E 80 04 21 */	bctrl
/* 802F1380 002EE2E0  7F 24 CB 78 */	mr r4, r25
/* 802F1384 002EE2E4  7F A5 EB 78 */	mr r5, r29
/* 802F1388 002EE2E8  3B 41 00 10 */	addi r26, r1, 0x10
/* 802F138C 002EE2EC  38 61 00 08 */	addi r3, r1, 8
/* 802F1390 002EE2F0  48 05 72 15 */	bl __pl__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F1394 002EE2F4  C0 01 00 08 */	lfs f0, 8(r1)
/* 802F1398 002EE2F8  7F 44 D3 78 */	mr r4, r26
/* 802F139C 002EE2FC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802F13A0 002EE300  38 61 00 28 */	addi r3, r1, 0x28
/* 802F13A4 002EE304  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802F13A8 002EE308  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F13AC 002EE30C  48 05 78 91 */	bl __lt__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F13B0 002EE310  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F13B4 002EE314  41 82 00 0C */	beq lbl_802F13C0
/* 802F13B8 002EE318  38 61 00 28 */	addi r3, r1, 0x28
/* 802F13BC 002EE31C  48 00 00 08 */	b lbl_802F13C4
lbl_802F13C0:
/* 802F13C0 002EE320  7F 43 D3 78 */	mr r3, r26
lbl_802F13C4:
/* 802F13C4 002EE324  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F13C8 002EE328  7C 1C F8 00 */	cmpw r28, r31
/* 802F13CC 002EE32C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802F13D0 002EE330  80 03 00 04 */	lwz r0, 4(r3)
/* 802F13D4 002EE334  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F13D8 002EE338  40 80 01 3C */	bge lbl_802F1514
/* 802F13DC 002EE33C  1F DC 00 44 */	mulli r30, r28, 0x44
/* 802F13E0 002EE340  80 18 00 0C */	lwz r0, 0xc(r24)
/* 802F13E4 002EE344  7F 9A E3 78 */	mr r26, r28
/* 802F13E8 002EE348  3B A1 00 38 */	addi r29, r1, 0x38
/* 802F13EC 002EE34C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F13F0 002EE350  7C 60 1A 14 */	add r3, r0, r3
/* 802F13F4 002EE354  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F13F8 002EE358  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F13FC 002EE35C  80 03 00 04 */	lwz r0, 4(r3)
/* 802F1400 002EE360  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F1404 002EE364  48 00 00 F4 */	b lbl_802F14F8
lbl_802F1408:
/* 802F1408 002EE368  7C 1B BA 14 */	add r0, r27, r23
/* 802F140C 002EE36C  80 78 00 0C */	lwz r3, 0xc(r24)
/* 802F1410 002EE370  7C 00 B0 40 */	cmplw r0, r22
/* 802F1414 002EE374  7C 83 F2 14 */	add r4, r3, r30
/* 802F1418 002EE378  40 80 00 B4 */	bge lbl_802F14CC
/* 802F141C 002EE37C  7F 25 CB 78 */	mr r5, r25
/* 802F1420 002EE380  38 61 00 30 */	addi r3, r1, 0x30
/* 802F1424 002EE384  4B FE 96 69 */	bl CopyNodeMinusStartTime__13CSoundPOINodeFRC13CSoundPOINodeRC13CCharAnimTime
/* 802F1428 002EE388  7C 17 DA 14 */	add r0, r23, r27
/* 802F142C 002EE38C  A0 61 00 34 */	lhz r3, 0x34(r1)
/* 802F1430 002EE390  1C 00 00 44 */	mulli r0, r0, 0x44
/* 802F1434 002EE394  7F A4 EB 78 */	mr r4, r29
/* 802F1438 002EE398  7F 95 02 14 */	add r28, r21, r0
/* 802F143C 002EE39C  B0 7C 00 04 */	sth r3, 4(r28)
/* 802F1440 002EE3A0  38 7C 00 08 */	addi r3, r28, 8
/* 802F1444 002EE3A4  48 04 C9 19 */	bl "assign__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F1448 002EE3A8  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 802F144C 002EE3AC  3C 80 80 3E */	lis r4, lbl_803D9B80@ha
/* 802F1450 002EE3B0  3C 60 80 3E */	lis r3, __vt__8CPOINode@ha
/* 802F1454 002EE3B4  28 1D 00 00 */	cmplwi r29, 0
/* 802F1458 002EE3B8  B0 1C 00 18 */	sth r0, 0x18(r28)
/* 802F145C 002EE3BC  38 84 9B 80 */	addi r4, r4, lbl_803D9B80@l
/* 802F1460 002EE3C0  38 03 9B 8C */	addi r0, r3, __vt__8CPOINode@l
/* 802F1464 002EE3C4  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 802F1468 002EE3C8  80 61 00 50 */	lwz r3, 0x50(r1)
/* 802F146C 002EE3CC  90 BC 00 1C */	stw r5, 0x1c(r28)
/* 802F1470 002EE3D0  90 7C 00 20 */	stw r3, 0x20(r28)
/* 802F1474 002EE3D4  80 61 00 54 */	lwz r3, 0x54(r1)
/* 802F1478 002EE3D8  90 7C 00 24 */	stw r3, 0x24(r28)
/* 802F147C 002EE3DC  88 61 00 58 */	lbz r3, 0x58(r1)
/* 802F1480 002EE3E0  98 7C 00 28 */	stb r3, 0x28(r28)
/* 802F1484 002EE3E4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 802F1488 002EE3E8  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 802F148C 002EE3EC  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802F1490 002EE3F0  90 7C 00 30 */	stw r3, 0x30(r28)
/* 802F1494 002EE3F4  80 61 00 64 */	lwz r3, 0x64(r1)
/* 802F1498 002EE3F8  90 7C 00 34 */	stw r3, 0x34(r28)
/* 802F149C 002EE3FC  80 61 00 68 */	lwz r3, 0x68(r1)
/* 802F14A0 002EE400  90 7C 00 38 */	stw r3, 0x38(r28)
/* 802F14A4 002EE404  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 802F14A8 002EE408  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 802F14AC 002EE40C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 802F14B0 002EE410  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 802F14B4 002EE414  90 81 00 30 */	stw r4, 0x30(r1)
/* 802F14B8 002EE418  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F14BC 002EE41C  41 82 00 0C */	beq lbl_802F14C8
/* 802F14C0 002EE420  7F A3 EB 78 */	mr r3, r29
/* 802F14C4 002EE424  48 04 C6 1D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F14C8:
/* 802F14C8 002EE428  3B 7B 00 01 */	addi r27, r27, 1
lbl_802F14CC:
/* 802F14CC 002EE42C  3B 5A 00 01 */	addi r26, r26, 1
/* 802F14D0 002EE430  3B DE 00 44 */	addi r30, r30, 0x44
/* 802F14D4 002EE434  7C 1A F8 00 */	cmpw r26, r31
/* 802F14D8 002EE438  40 80 00 20 */	bge lbl_802F14F8
/* 802F14DC 002EE43C  80 18 00 0C */	lwz r0, 0xc(r24)
/* 802F14E0 002EE440  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802F14E4 002EE444  7C 60 1A 14 */	add r3, r0, r3
/* 802F14E8 002EE448  C0 03 00 00 */	lfs f0, 0(r3)
/* 802F14EC 002EE44C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802F14F0 002EE450  80 03 00 04 */	lwz r0, 4(r3)
/* 802F14F4 002EE454  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802F14F8:
/* 802F14F8 002EE458  7C 1A F8 00 */	cmpw r26, r31
/* 802F14FC 002EE45C  40 80 00 18 */	bge lbl_802F1514
/* 802F1500 002EE460  38 61 00 18 */	addi r3, r1, 0x18
/* 802F1504 002EE464  38 81 00 20 */	addi r4, r1, 0x20
/* 802F1508 002EE468  48 05 6F 9D */	bl __le__13CCharAnimTimeCFRC13CCharAnimTime
/* 802F150C 002EE46C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F1510 002EE470  40 82 FE F8 */	bne lbl_802F1408
lbl_802F1514:
/* 802F1514 002EE474  7F 63 DB 78 */	mr r3, r27
/* 802F1518 002EE478  BA A1 00 84 */	lmw r21, 0x84(r1)
/* 802F151C 002EE47C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802F1520 002EE480  7C 08 03 A6 */	mtlr r0
/* 802F1524 002EE484  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802F1528 002EE488  4E 80 00 20 */	blr

.global "reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,b>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,b>,Q24rstl17rmemory_allocator>Fi":
/* 802F152C 002EE48C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F1530 002EE490  7C 08 02 A6 */	mflr r0
/* 802F1534 002EE494  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F1538 002EE498  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802F153C 002EE49C  7C 9F 23 78 */	mr r31, r4
/* 802F1540 002EE4A0  7C 7E 1B 78 */	mr r30, r3
/* 802F1544 002EE4A4  80 03 00 08 */	lwz r0, 8(r3)
/* 802F1548 002EE4A8  7C 1F 00 00 */	cmpw r31, r0
/* 802F154C 002EE4AC  40 81 00 D0 */	ble lbl_802F161C
/* 802F1550 002EE4B0  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 802F1554 002EE4B4  2C 03 00 00 */	cmpwi r3, 0
/* 802F1558 002EE4B8  40 82 00 0C */	bne lbl_802F1564
/* 802F155C 002EE4BC  3B 80 00 00 */	li r28, 0
/* 802F1560 002EE4C0  48 00 00 1C */	b lbl_802F157C
lbl_802F1564:
/* 802F1564 002EE4C4  3C 80 80 3D */	lis r4, lbl_803D6DE8@ha
/* 802F1568 002EE4C8  38 A0 00 00 */	li r5, 0
/* 802F156C 002EE4CC  38 84 6D E8 */	addi r4, r4, lbl_803D6DE8@l
/* 802F1570 002EE4D0  38 84 00 01 */	addi r4, r4, 1
/* 802F1574 002EE4D4  48 02 42 A5 */	bl __nwa__FUlPCcPCc
/* 802F1578 002EE4D8  7C 7C 1B 78 */	mr r28, r3
lbl_802F157C:
/* 802F157C 002EE4DC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F1580 002EE4E0  7F 9B E3 78 */	mr r27, r28
/* 802F1584 002EE4E4  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F1588 002EE4E8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F158C 002EE4EC  93 41 00 10 */	stw r26, 0x10(r1)
/* 802F1590 002EE4F0  7F BA 02 14 */	add r29, r26, r0
/* 802F1594 002EE4F4  93 41 00 14 */	stw r26, 0x14(r1)
/* 802F1598 002EE4F8  93 A1 00 08 */	stw r29, 8(r1)
/* 802F159C 002EE4FC  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802F15A0 002EE500  48 00 00 28 */	b lbl_802F15C8
lbl_802F15A4:
/* 802F15A4 002EE504  28 1B 00 00 */	cmplwi r27, 0
/* 802F15A8 002EE508  41 82 00 18 */	beq lbl_802F15C0
/* 802F15AC 002EE50C  7F 63 DB 78 */	mr r3, r27
/* 802F15B0 002EE510  7F 44 D3 78 */	mr r4, r26
/* 802F15B4 002EE514  48 04 CB AD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F15B8 002EE518  88 1A 00 10 */	lbz r0, 0x10(r26)
/* 802F15BC 002EE51C  98 1B 00 10 */	stb r0, 0x10(r27)
lbl_802F15C0:
/* 802F15C0 002EE520  3B 7B 00 14 */	addi r27, r27, 0x14
/* 802F15C4 002EE524  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F15C8:
/* 802F15C8 002EE528  7C 1A E8 40 */	cmplw r26, r29
/* 802F15CC 002EE52C  40 82 FF D8 */	bne lbl_802F15A4
/* 802F15D0 002EE530  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F15D4 002EE534  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F15D8 002EE538  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F15DC 002EE53C  7F 7A 02 14 */	add r27, r26, r0
/* 802F15E0 002EE540  48 00 00 1C */	b lbl_802F15FC
lbl_802F15E4:
/* 802F15E4 002EE544  28 1A 00 00 */	cmplwi r26, 0
/* 802F15E8 002EE548  41 82 00 10 */	beq lbl_802F15F8
/* 802F15EC 002EE54C  41 82 00 0C */	beq lbl_802F15F8
/* 802F15F0 002EE550  7F 43 D3 78 */	mr r3, r26
/* 802F15F4 002EE554  48 04 C4 ED */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F15F8:
/* 802F15F8 002EE558  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F15FC:
/* 802F15FC 002EE55C  7C 1A D8 40 */	cmplw r26, r27
/* 802F1600 002EE560  40 82 FF E4 */	bne lbl_802F15E4
/* 802F1604 002EE564  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F1608 002EE568  28 03 00 00 */	cmplwi r3, 0
/* 802F160C 002EE56C  41 82 00 08 */	beq lbl_802F1614
/* 802F1610 002EE570  48 02 43 21 */	bl Free__7CMemoryFPCv
lbl_802F1614:
/* 802F1614 002EE574  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802F1618 002EE578  93 FE 00 08 */	stw r31, 8(r30)
lbl_802F161C:
/* 802F161C 002EE57C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802F1620 002EE580  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F1624 002EE584  7C 08 03 A6 */	mtlr r0
/* 802F1628 002EE588  38 21 00 30 */	addi r1, r1, 0x30
/* 802F162C 002EE58C  4E 80 00 20 */	blr

.global "reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl127vector<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,i>,Q24rstl17rmemory_allocator>Fi":
/* 802F1630 002EE590  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F1634 002EE594  7C 08 02 A6 */	mflr r0
/* 802F1638 002EE598  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F163C 002EE59C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802F1640 002EE5A0  7C 9F 23 78 */	mr r31, r4
/* 802F1644 002EE5A4  7C 7E 1B 78 */	mr r30, r3
/* 802F1648 002EE5A8  80 03 00 08 */	lwz r0, 8(r3)
/* 802F164C 002EE5AC  7C 1F 00 00 */	cmpw r31, r0
/* 802F1650 002EE5B0  40 81 00 D0 */	ble lbl_802F1720
/* 802F1654 002EE5B4  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 802F1658 002EE5B8  2C 03 00 00 */	cmpwi r3, 0
/* 802F165C 002EE5BC  40 82 00 0C */	bne lbl_802F1668
/* 802F1660 002EE5C0  3B 80 00 00 */	li r28, 0
/* 802F1664 002EE5C4  48 00 00 1C */	b lbl_802F1680
lbl_802F1668:
/* 802F1668 002EE5C8  3C 80 80 3D */	lis r4, lbl_803D6DE8@ha
/* 802F166C 002EE5CC  38 A0 00 00 */	li r5, 0
/* 802F1670 002EE5D0  38 84 6D E8 */	addi r4, r4, lbl_803D6DE8@l
/* 802F1674 002EE5D4  38 84 00 01 */	addi r4, r4, 1
/* 802F1678 002EE5D8  48 02 41 A1 */	bl __nwa__FUlPCcPCc
/* 802F167C 002EE5DC  7C 7C 1B 78 */	mr r28, r3
lbl_802F1680:
/* 802F1680 002EE5E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F1684 002EE5E4  7F 9B E3 78 */	mr r27, r28
/* 802F1688 002EE5E8  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F168C 002EE5EC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F1690 002EE5F0  93 41 00 10 */	stw r26, 0x10(r1)
/* 802F1694 002EE5F4  7F BA 02 14 */	add r29, r26, r0
/* 802F1698 002EE5F8  93 41 00 14 */	stw r26, 0x14(r1)
/* 802F169C 002EE5FC  93 A1 00 08 */	stw r29, 8(r1)
/* 802F16A0 002EE600  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802F16A4 002EE604  48 00 00 28 */	b lbl_802F16CC
lbl_802F16A8:
/* 802F16A8 002EE608  28 1B 00 00 */	cmplwi r27, 0
/* 802F16AC 002EE60C  41 82 00 18 */	beq lbl_802F16C4
/* 802F16B0 002EE610  7F 63 DB 78 */	mr r3, r27
/* 802F16B4 002EE614  7F 44 D3 78 */	mr r4, r26
/* 802F16B8 002EE618  48 04 CA A9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F16BC 002EE61C  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 802F16C0 002EE620  90 1B 00 10 */	stw r0, 0x10(r27)
lbl_802F16C4:
/* 802F16C4 002EE624  3B 7B 00 14 */	addi r27, r27, 0x14
/* 802F16C8 002EE628  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F16CC:
/* 802F16CC 002EE62C  7C 1A E8 40 */	cmplw r26, r29
/* 802F16D0 002EE630  40 82 FF D8 */	bne lbl_802F16A8
/* 802F16D4 002EE634  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F16D8 002EE638  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F16DC 002EE63C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F16E0 002EE640  7F 7A 02 14 */	add r27, r26, r0
/* 802F16E4 002EE644  48 00 00 1C */	b lbl_802F1700
lbl_802F16E8:
/* 802F16E8 002EE648  28 1A 00 00 */	cmplwi r26, 0
/* 802F16EC 002EE64C  41 82 00 10 */	beq lbl_802F16FC
/* 802F16F0 002EE650  41 82 00 0C */	beq lbl_802F16FC
/* 802F16F4 002EE654  7F 43 D3 78 */	mr r3, r26
/* 802F16F8 002EE658  48 04 C3 E9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F16FC:
/* 802F16FC 002EE65C  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F1700:
/* 802F1700 002EE660  7C 1A D8 40 */	cmplw r26, r27
/* 802F1704 002EE664  40 82 FF E4 */	bne lbl_802F16E8
/* 802F1708 002EE668  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F170C 002EE66C  28 03 00 00 */	cmplwi r3, 0
/* 802F1710 002EE670  41 82 00 08 */	beq lbl_802F1718
/* 802F1714 002EE674  48 02 42 1D */	bl Free__7CMemoryFPCv
lbl_802F1718:
/* 802F1718 002EE678  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802F171C 002EE67C  93 FE 00 08 */	stw r31, 8(r30)
lbl_802F1720:
/* 802F1720 002EE680  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802F1724 002EE684  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F1728 002EE688  7C 08 03 A6 */	mtlr r0
/* 802F172C 002EE68C  38 21 00 30 */	addi r1, r1, 0x30
/* 802F1730 002EE690  4E 80 00 20 */	blr

.global "reserve__Q24rstl159vector<Q24rstl114pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q213CParticleData13EParentedMode>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl159vector<Q24rstl114pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q213CParticleData13EParentedMode>,Q24rstl17rmemory_allocator>Fi":
/* 802F1734 002EE694  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F1738 002EE698  7C 08 02 A6 */	mflr r0
/* 802F173C 002EE69C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F1740 002EE6A0  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802F1744 002EE6A4  7C 9F 23 78 */	mr r31, r4
/* 802F1748 002EE6A8  7C 7E 1B 78 */	mr r30, r3
/* 802F174C 002EE6AC  80 03 00 08 */	lwz r0, 8(r3)
/* 802F1750 002EE6B0  7C 1F 00 00 */	cmpw r31, r0
/* 802F1754 002EE6B4  40 81 00 D0 */	ble lbl_802F1824
/* 802F1758 002EE6B8  1C 7F 00 14 */	mulli r3, r31, 0x14
/* 802F175C 002EE6BC  2C 03 00 00 */	cmpwi r3, 0
/* 802F1760 002EE6C0  40 82 00 0C */	bne lbl_802F176C
/* 802F1764 002EE6C4  3B 80 00 00 */	li r28, 0
/* 802F1768 002EE6C8  48 00 00 1C */	b lbl_802F1784
lbl_802F176C:
/* 802F176C 002EE6CC  3C 80 80 3D */	lis r4, lbl_803D6DE8@ha
/* 802F1770 002EE6D0  38 A0 00 00 */	li r5, 0
/* 802F1774 002EE6D4  38 84 6D E8 */	addi r4, r4, lbl_803D6DE8@l
/* 802F1778 002EE6D8  38 84 00 01 */	addi r4, r4, 1
/* 802F177C 002EE6DC  48 02 40 9D */	bl __nwa__FUlPCcPCc
/* 802F1780 002EE6E0  7C 7C 1B 78 */	mr r28, r3
lbl_802F1784:
/* 802F1784 002EE6E4  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F1788 002EE6E8  7F 9B E3 78 */	mr r27, r28
/* 802F178C 002EE6EC  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F1790 002EE6F0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F1794 002EE6F4  93 41 00 10 */	stw r26, 0x10(r1)
/* 802F1798 002EE6F8  7F BA 02 14 */	add r29, r26, r0
/* 802F179C 002EE6FC  93 41 00 14 */	stw r26, 0x14(r1)
/* 802F17A0 002EE700  93 A1 00 08 */	stw r29, 8(r1)
/* 802F17A4 002EE704  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802F17A8 002EE708  48 00 00 28 */	b lbl_802F17D0
lbl_802F17AC:
/* 802F17AC 002EE70C  28 1B 00 00 */	cmplwi r27, 0
/* 802F17B0 002EE710  41 82 00 18 */	beq lbl_802F17C8
/* 802F17B4 002EE714  7F 63 DB 78 */	mr r3, r27
/* 802F17B8 002EE718  7F 44 D3 78 */	mr r4, r26
/* 802F17BC 002EE71C  48 04 C9 A5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802F17C0 002EE720  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 802F17C4 002EE724  90 1B 00 10 */	stw r0, 0x10(r27)
lbl_802F17C8:
/* 802F17C8 002EE728  3B 7B 00 14 */	addi r27, r27, 0x14
/* 802F17CC 002EE72C  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F17D0:
/* 802F17D0 002EE730  7C 1A E8 40 */	cmplw r26, r29
/* 802F17D4 002EE734  40 82 FF D8 */	bne lbl_802F17AC
/* 802F17D8 002EE738  80 1E 00 04 */	lwz r0, 4(r30)
/* 802F17DC 002EE73C  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802F17E0 002EE740  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802F17E4 002EE744  7F 7A 02 14 */	add r27, r26, r0
/* 802F17E8 002EE748  48 00 00 1C */	b lbl_802F1804
lbl_802F17EC:
/* 802F17EC 002EE74C  28 1A 00 00 */	cmplwi r26, 0
/* 802F17F0 002EE750  41 82 00 10 */	beq lbl_802F1800
/* 802F17F4 002EE754  41 82 00 0C */	beq lbl_802F1800
/* 802F17F8 002EE758  7F 43 D3 78 */	mr r3, r26
/* 802F17FC 002EE75C  48 04 C2 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802F1800:
/* 802F1800 002EE760  3B 5A 00 14 */	addi r26, r26, 0x14
lbl_802F1804:
/* 802F1804 002EE764  7C 1A D8 40 */	cmplw r26, r27
/* 802F1808 002EE768  40 82 FF E4 */	bne lbl_802F17EC
/* 802F180C 002EE76C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802F1810 002EE770  28 03 00 00 */	cmplwi r3, 0
/* 802F1814 002EE774  41 82 00 08 */	beq lbl_802F181C
/* 802F1818 002EE778  48 02 41 19 */	bl Free__7CMemoryFPCv
lbl_802F181C:
/* 802F181C 002EE77C  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802F1820 002EE780  93 FE 00 08 */	stw r31, 8(r30)
lbl_802F1824:
/* 802F1824 002EE784  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802F1828 002EE788  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F182C 002EE78C  7C 08 03 A6 */	mtlr r0
/* 802F1830 002EE790  38 21 00 30 */	addi r1, r1, 0x30
/* 802F1834 002EE794  4E 80 00 20 */	blr

.section .rodata
.balign 8
.global lbl_803D6DE8
lbl_803D6DE8:
	# ROM: 0x3D3DE8
	.4byte 0x003F3F28
	.4byte 0x3F3F2900

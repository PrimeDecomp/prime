.include "macros.inc"

.section .sdata

.global lbl_805A8708
lbl_805A8708:
	# ROM: 0x3F60A8
	.byte 0x01

.global lbl_805A8709
lbl_805A8709:
	# ROM: 0x3F60A9
	.byte 0x00

.global lbl_805A870A
lbl_805A870A:
	# ROM: 0x3F60AA
	.byte 0x01, 0x00
	.4byte 0

.section .sbss, "wa"

.global lbl_805A9270
lbl_805A9270:
	.skip 0x4
.global lbl_805A9274
lbl_805A9274:
	.skip 0x4
.global lbl_805A9278
lbl_805A9278:
	.skip 0x4
.global lbl_805A927C
lbl_805A927C:
	.skip 0x4
.global lbl_805A9280
lbl_805A9280:
	.skip 0x4
.global lbl_805A9284
lbl_805A9284:
	.skip 0x4
.global lbl_805A9288
lbl_805A9288:
	.skip 0x4
.global lbl_805A928C
lbl_805A928C:
	.skip 0x4
.global lbl_805A9290
lbl_805A9290:
	.skip 0x4
.global lbl_805A9294
lbl_805A9294:
	.skip 0x4
.global lbl_805A9298
lbl_805A9298:
	.skip 0x4
.global lbl_805A929C
lbl_805A929C:
	.skip 0x4
.global lbl_805A92A0
lbl_805A92A0:
	.skip 0x4
.global lbl_805A92A4
lbl_805A92A4:
	.skip 0x4
.global lbl_805A92A8
lbl_805A92A8:
	.skip 0x4
.global lbl_805A92AC
lbl_805A92AC:
	.skip 0x4
.global lbl_805A92B0
lbl_805A92B0:
	.skip 0x4
.global lbl_805A92B4
lbl_805A92B4:
	.skip 0x4

.section .text, "ax"

.global sub_802dd89c
sub_802dd89c:
/* 802DD89C 002DA7FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DD8A0 002DA800  7C 08 02 A6 */	mflr r0
/* 802DD8A4 002DA804  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DD8A8 002DA808  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DD8AC 002DA80C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DD8B0 002DA810  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DD8B4 002DA814  7C 9D 23 78 */	mr r29, r4
/* 802DD8B8 002DA818  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802DD8BC 002DA81C  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 802DD8C0 002DA820  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802DD8C4 002DA824  7F FE 02 14 */	add r31, r30, r0
/* 802DD8C8 002DA828  48 00 00 24 */	b lbl_802DD8EC
lbl_802DD8CC:
/* 802DD8CC 002DA82C  7F A4 EB 78 */	mr r4, r29
/* 802DD8D0 002DA830  38 7E 00 14 */	addi r3, r30, 0x14
/* 802DD8D4 002DA834  4B D7 4D 0D */	bl "find__Q24rstl418red_black_tree<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>,0,Q24rstl103select1st<Q24rstl83pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,s>>,Q24rstl81less<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>CFRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocat"
/* 802DD8D8 002DA838  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DD8DC 002DA83C  41 82 00 0C */	beq lbl_802DD8E8
/* 802DD8E0 002DA840  80 7E 00 00 */	lwz r3, 0(r30)
/* 802DD8E4 002DA844  48 00 00 14 */	b lbl_802DD8F8
lbl_802DD8E8:
/* 802DD8E8 002DA848  3B DE 00 24 */	addi r30, r30, 0x24
lbl_802DD8EC:
/* 802DD8EC 002DA84C  7C 1E F8 40 */	cmplw r30, r31
/* 802DD8F0 002DA850  40 82 FF DC */	bne lbl_802DD8CC
/* 802DD8F4 002DA854  38 60 FF FF */	li r3, -1
lbl_802DD8F8:
/* 802DD8F8 002DA858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DD8FC 002DA85C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DD900 002DA860  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DD904 002DA864  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DD908 002DA868  7C 08 03 A6 */	mtlr r0
/* 802DD90C 002DA86C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DD910 002DA870  4E 80 00 20 */	blr

.global sub_802dd914
sub_802dd914:
/* 802DD914 002DA874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD918 002DA878  7C 08 02 A6 */	mflr r0
/* 802DD91C 002DA87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD920 002DA880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DD924 002DA884  93 C1 00 08 */	stw r30, 8(r1)
/* 802DD928 002DA888  7C 9E 23 78 */	mr r30, r4
/* 802DD92C 002DA88C  83 E3 00 00 */	lwz r31, 0(r3)
/* 802DD930 002DA890  48 00 00 10 */	b lbl_802DD940
lbl_802DD934:
/* 802DD934 002DA894  7F E3 FB 78 */	mr r3, r31
/* 802DD938 002DA898  48 00 00 2D */	bl sub_802dd964
/* 802DD93C 002DA89C  3B FF 00 20 */	addi r31, r31, 0x20
lbl_802DD940:
/* 802DD940 002DA8A0  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DD944 002DA8A4  7C 1F 00 40 */	cmplw r31, r0
/* 802DD948 002DA8A8  40 82 FF EC */	bne lbl_802DD934
/* 802DD94C 002DA8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD950 002DA8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DD954 002DA8B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DD958 002DA8B8  7C 08 03 A6 */	mtlr r0
/* 802DD95C 002DA8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD960 002DA8C0  4E 80 00 20 */	blr

.global sub_802dd964
sub_802dd964:
/* 802DD964 002DA8C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD968 002DA8C8  7C 08 02 A6 */	mflr r0
/* 802DD96C 002DA8CC  38 80 FF FF */	li r4, -1
/* 802DD970 002DA8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD974 002DA8D4  4B D4 D0 91 */	bl sub_8002aa04
/* 802DD978 002DA8D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD97C 002DA8DC  7C 08 03 A6 */	mtlr r0
/* 802DD980 002DA8E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD984 002DA8E4  4E 80 00 20 */	blr

.global sub_802dd988
sub_802dd988:
/* 802DD988 002DA8E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DD98C 002DA8EC  7C 08 02 A6 */	mflr r0
/* 802DD990 002DA8F0  28 03 00 00 */	cmplwi r3, 0
/* 802DD994 002DA8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DD998 002DA8F8  41 82 00 08 */	beq lbl_802DD9A0
/* 802DD99C 002DA8FC  4B D4 D2 D9 */	bl sub_8002ac74
lbl_802DD9A0:
/* 802DD9A0 002DA900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DD9A4 002DA904  7C 08 03 A6 */	mtlr r0
/* 802DD9A8 002DA908  38 21 00 10 */	addi r1, r1, 0x10
/* 802DD9AC 002DA90C  4E 80 00 20 */	blr

.global __ct__14CCharacterInfoFR12CInputStream
__ct__14CCharacterInfoFR12CInputStream:
/* 802DD9B0 002DA910  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802DD9B4 002DA914  7C 08 02 A6 */	mflr r0
/* 802DD9B8 002DA918  90 01 00 94 */	stw r0, 0x94(r1)
/* 802DD9BC 002DA91C  BF 61 00 7C */	stmw r27, 0x7c(r1)
/* 802DD9C0 002DA920  7C 9F 23 78 */	mr r31, r4
/* 802DD9C4 002DA924  7C 7E 1B 78 */	mr r30, r3
/* 802DD9C8 002DA928  7F E3 FB 78 */	mr r3, r31
/* 802DD9CC 002DA92C  48 06 12 E5 */	bl ReadShort__12CInputStreamFv
/* 802DD9D0 002DA930  B0 7E 00 00 */	sth r3, 0(r30)
/* 802DD9D4 002DA934  7F E4 FB 78 */	mr r4, r31
/* 802DD9D8 002DA938  38 7E 00 04 */	addi r3, r30, 4
/* 802DD9DC 002DA93C  38 A1 00 18 */	addi r5, r1, 0x18
/* 802DD9E0 002DA940  48 06 09 19 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802DD9E4 002DA944  7F E3 FB 78 */	mr r3, r31
/* 802DD9E8 002DA948  48 06 12 9D */	bl ReadLong__12CInputStreamFv
/* 802DD9EC 002DA94C  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802DD9F0 002DA950  7F E3 FB 78 */	mr r3, r31
/* 802DD9F4 002DA954  48 06 12 91 */	bl ReadLong__12CInputStreamFv
/* 802DD9F8 002DA958  90 7E 00 18 */	stw r3, 0x18(r30)
/* 802DD9FC 002DA95C  7F E3 FB 78 */	mr r3, r31
/* 802DDA00 002DA960  48 06 12 85 */	bl ReadLong__12CInputStreamFv
/* 802DDA04 002DA964  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802DDA08 002DA968  7F E4 FB 78 */	mr r4, r31
/* 802DDA0C 002DA96C  38 7E 00 20 */	addi r3, r30, 0x20
/* 802DDA10 002DA970  38 A1 00 14 */	addi r5, r1, 0x14
/* 802DDA14 002DA974  48 00 0B 39 */	bl "_ct__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802DDA18 002DA978  88 0D A6 C8 */	lbz r0, lbl_805A9288@sda21(r13)
/* 802DDA1C 002DA97C  7F E4 FB 78 */	mr r4, r31
/* 802DDA20 002DA980  38 61 00 5C */	addi r3, r1, 0x5c
/* 802DDA24 002DA984  38 A1 00 10 */	addi r5, r1, 0x10
/* 802DDA28 002DA988  98 01 00 10 */	stb r0, 0x10(r1)
/* 802DDA2C 002DA98C  48 00 0A C1 */	bl "Get<12CPASDatabase>__12CInputStreamFRC21TType<12CPASDatabase>"
/* 802DDA30 002DA990  38 7E 00 30 */	addi r3, r30, 0x30
/* 802DDA34 002DA994  38 81 00 5C */	addi r4, r1, 0x5c
/* 802DDA38 002DA998  4B D5 30 11 */	bl __ct__12CPASDatabaseFRC12CPASDatabase
/* 802DDA3C 002DA99C  38 61 00 5C */	addi r3, r1, 0x5c
/* 802DDA40 002DA9A0  38 80 FF FF */	li r4, -1
/* 802DDA44 002DA9A4  4B D5 16 29 */	bl __dt__12CPASDatabaseFv
/* 802DDA48 002DA9A8  A0 BE 00 00 */	lhz r5, 0(r30)
/* 802DDA4C 002DA9AC  7F E4 FB 78 */	mr r4, r31
/* 802DDA50 002DA9B0  38 7E 00 44 */	addi r3, r30, 0x44
/* 802DDA54 002DA9B4  48 00 0E ED */	bl __ct__Q214CCharacterInfo16CParticleResDataFR12CInputStreamUs
/* 802DDA58 002DA9B8  7F E3 FB 78 */	mr r3, r31
/* 802DDA5C 002DA9BC  48 06 12 29 */	bl ReadLong__12CInputStreamFv
/* 802DDA60 002DA9C0  90 7E 00 84 */	stw r3, 0x84(r30)
/* 802DDA64 002DA9C4  38 00 00 00 */	li r0, 0
/* 802DDA68 002DA9C8  90 1E 00 8C */	stw r0, 0x8c(r30)
/* 802DDA6C 002DA9CC  90 1E 00 90 */	stw r0, 0x90(r30)
/* 802DDA70 002DA9D0  90 1E 00 94 */	stw r0, 0x94(r30)
/* 802DDA74 002DA9D4  90 1E 00 9C */	stw r0, 0x9c(r30)
/* 802DDA78 002DA9D8  90 1E 00 A0 */	stw r0, 0xa0(r30)
/* 802DDA7C 002DA9DC  90 1E 00 A4 */	stw r0, 0xa4(r30)
/* 802DDA80 002DA9E0  90 1E 00 B4 */	stw r0, 0xb4(r30)
/* 802DDA84 002DA9E4  90 1E 00 B8 */	stw r0, 0xb8(r30)
/* 802DDA88 002DA9E8  90 1E 00 BC */	stw r0, 0xbc(r30)
/* 802DDA8C 002DA9EC  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802DDA90 002DA9F0  28 00 00 01 */	cmplwi r0, 1
/* 802DDA94 002DA9F4  40 81 00 2C */	ble lbl_802DDAC0
/* 802DDA98 002DA9F8  7F E4 FB 78 */	mr r4, r31
/* 802DDA9C 002DA9FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 802DDAA0 002DAA00  38 A1 00 0C */	addi r5, r1, 0xc
/* 802DDAA4 002DAA04  48 00 08 59 */	bl "Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>"
/* 802DDAA8 002DAA08  38 7E 00 88 */	addi r3, r30, 0x88
/* 802DDAAC 002DAA0C  38 81 00 4C */	addi r4, r1, 0x4c
/* 802DDAB0 002DAA10  48 00 07 19 */	bl "__ct__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>FRCQ24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>"
/* 802DDAB4 002DAA14  38 61 00 4C */	addi r3, r1, 0x4c
/* 802DDAB8 002DAA18  38 80 FF FF */	li r4, -1
/* 802DDABC 002DAA1C  4B D5 1A 4D */	bl "__dt__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fv"
lbl_802DDAC0:
/* 802DDAC0 002DAA20  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802DDAC4 002DAA24  28 00 00 02 */	cmplwi r0, 2
/* 802DDAC8 002DAA28  40 81 00 2C */	ble lbl_802DDAF4
/* 802DDACC 002DAA2C  7F E4 FB 78 */	mr r4, r31
/* 802DDAD0 002DAA30  38 61 00 3C */	addi r3, r1, 0x3c
/* 802DDAD4 002DAA34  38 A1 00 08 */	addi r5, r1, 8
/* 802DDAD8 002DAA38  48 00 02 B9 */	bl "__ct__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802DDADC 002DAA3C  38 7E 00 98 */	addi r3, r30, 0x98
/* 802DDAE0 002DAA40  38 81 00 3C */	addi r4, r1, 0x3c
/* 802DDAE4 002DAA44  48 00 01 49 */	bl sub_802ddc2c
/* 802DDAE8 002DAA48  38 61 00 3C */	addi r3, r1, 0x3c
/* 802DDAEC 002DAA4C  38 80 FF FF */	li r4, -1
/* 802DDAF0 002DAA50  4B D4 CE 15 */	bl sub_8002a904
lbl_802DDAF4:
/* 802DDAF4 002DAA54  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802DDAF8 002DAA58  28 00 00 03 */	cmplwi r0, 3
/* 802DDAFC 002DAA5C  40 81 00 20 */	ble lbl_802DDB1C
/* 802DDB00 002DAA60  7F E3 FB 78 */	mr r3, r31
/* 802DDB04 002DAA64  48 06 11 81 */	bl ReadLong__12CInputStreamFv
/* 802DDB08 002DAA68  90 7E 00 A8 */	stw r3, 0xa8(r30)
/* 802DDB0C 002DAA6C  7F E3 FB 78 */	mr r3, r31
/* 802DDB10 002DAA70  48 06 11 75 */	bl ReadLong__12CInputStreamFv
/* 802DDB14 002DAA74  90 7E 00 AC */	stw r3, 0xac(r30)
/* 802DDB18 002DAA78  48 00 00 10 */	b lbl_802DDB28
lbl_802DDB1C:
/* 802DDB1C 002DAA7C  38 00 00 00 */	li r0, 0
/* 802DDB20 002DAA80  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 802DDB24 002DAA84  90 1E 00 AC */	stw r0, 0xac(r30)
lbl_802DDB28:
/* 802DDB28 002DAA88  A0 1E 00 00 */	lhz r0, 0(r30)
/* 802DDB2C 002DAA8C  28 00 00 04 */	cmplwi r0, 4
/* 802DDB30 002DAA90  40 81 00 E4 */	ble lbl_802DDC14
/* 802DDB34 002DAA94  38 00 00 00 */	li r0, 0
/* 802DDB38 002DAA98  7F E3 FB 78 */	mr r3, r31
/* 802DDB3C 002DAA9C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802DDB40 002DAAA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DDB44 002DAAA4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802DDB48 002DAAA8  48 06 11 3D */	bl ReadLong__12CInputStreamFv
/* 802DDB4C 002DAAAC  7C 7B 1B 78 */	mr r27, r3
/* 802DDB50 002DAAB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 802DDB54 002DAAB4  7F 64 DB 78 */	mr r4, r27
/* 802DDB58 002DAAB8  4B D8 5F CD */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 802DDB5C 002DAABC  3B 80 00 00 */	li r28, 0
/* 802DDB60 002DAAC0  48 00 00 60 */	b lbl_802DDBC0
lbl_802DDB64:
/* 802DDB64 002DAAC4  7F E3 FB 78 */	mr r3, r31
/* 802DDB68 002DAAC8  48 06 11 1D */	bl ReadLong__12CInputStreamFv
/* 802DDB6C 002DAACC  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802DDB70 002DAAD0  7C 7D 1B 78 */	mr r29, r3
/* 802DDB74 002DAAD4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 802DDB78 002DAAD8  7C 00 28 00 */	cmpw r0, r5
/* 802DDB7C 002DAADC  41 80 00 1C */	blt lbl_802DDB98
/* 802DDB80 002DAAE0  2C 05 00 00 */	cmpwi r5, 0
/* 802DDB84 002DAAE4  38 61 00 2C */	addi r3, r1, 0x2c
/* 802DDB88 002DAAE8  38 80 00 04 */	li r4, 4
/* 802DDB8C 002DAAEC  41 82 00 08 */	beq lbl_802DDB94
/* 802DDB90 002DAAF0  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DDB94:
/* 802DDB94 002DAAF4  4B D8 5F 91 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_802DDB98:
/* 802DDB98 002DAAF8  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802DDB9C 002DAAFC  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802DDBA0 002DAB00  54 00 10 3A */	slwi r0, r0, 2
/* 802DDBA4 002DAB04  7C 63 02 15 */	add. r3, r3, r0
/* 802DDBA8 002DAB08  41 82 00 08 */	beq lbl_802DDBB0
/* 802DDBAC 002DAB0C  93 A3 00 00 */	stw r29, 0(r3)
lbl_802DDBB0:
/* 802DDBB0 002DAB10  80 61 00 30 */	lwz r3, 0x30(r1)
/* 802DDBB4 002DAB14  3B 9C 00 01 */	addi r28, r28, 1
/* 802DDBB8 002DAB18  38 03 00 01 */	addi r0, r3, 1
/* 802DDBBC 002DAB1C  90 01 00 30 */	stw r0, 0x30(r1)
lbl_802DDBC0:
/* 802DDBC0 002DAB20  7C 1C D8 00 */	cmpw r28, r27
/* 802DDBC4 002DAB24  41 80 FF A0 */	blt lbl_802DDB64
/* 802DDBC8 002DAB28  38 7E 00 B0 */	addi r3, r30, 0xb0
/* 802DDBCC 002DAB2C  38 81 00 2C */	addi r4, r1, 0x2c
/* 802DDBD0 002DAB30  4B D8 5B 2D */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 802DDBD4 002DAB34  80 01 00 30 */	lwz r0, 0x30(r1)
/* 802DDBD8 002DAB38  80 61 00 38 */	lwz r3, 0x38(r1)
/* 802DDBDC 002DAB3C  54 00 10 3A */	slwi r0, r0, 2
/* 802DDBE0 002DAB40  7C 03 02 14 */	add r0, r3, r0
/* 802DDBE4 002DAB44  90 61 00 20 */	stw r3, 0x20(r1)
/* 802DDBE8 002DAB48  7C 64 1B 78 */	mr r4, r3
/* 802DDBEC 002DAB4C  90 01 00 28 */	stw r0, 0x28(r1)
/* 802DDBF0 002DAB50  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDBF4 002DAB54  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802DDBF8 002DAB58  48 00 00 08 */	b lbl_802DDC00
lbl_802DDBFC:
/* 802DDBFC 002DAB5C  38 84 00 04 */	addi r4, r4, 4
lbl_802DDC00:
/* 802DDC00 002DAB60  7C 04 00 40 */	cmplw r4, r0
/* 802DDC04 002DAB64  40 82 FF F8 */	bne lbl_802DDBFC
/* 802DDC08 002DAB68  28 03 00 00 */	cmplwi r3, 0
/* 802DDC0C 002DAB6C  41 82 00 08 */	beq lbl_802DDC14
/* 802DDC10 002DAB70  48 03 7D 21 */	bl Free__7CMemoryFPCv
lbl_802DDC14:
/* 802DDC14 002DAB74  7F C3 F3 78 */	mr r3, r30
/* 802DDC18 002DAB78  BB 61 00 7C */	lmw r27, 0x7c(r1)
/* 802DDC1C 002DAB7C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802DDC20 002DAB80  7C 08 03 A6 */	mtlr r0
/* 802DDC24 002DAB84  38 21 00 90 */	addi r1, r1, 0x90
/* 802DDC28 002DAB88  4E 80 00 20 */	blr

.global sub_802ddc2c
sub_802ddc2c:
/* 802DDC2C 002DAB8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDC30 002DAB90  7C 08 02 A6 */	mflr r0
/* 802DDC34 002DAB94  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDC38 002DAB98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DDC3C 002DAB9C  7C 9F 23 78 */	mr r31, r4
/* 802DDC40 002DABA0  93 C1 00 08 */	stw r30, 8(r1)
/* 802DDC44 002DABA4  7C 7E 1B 78 */	mr r30, r3
/* 802DDC48 002DABA8  7C 1E F8 40 */	cmplw r30, r31
/* 802DDC4C 002DABAC  40 82 00 08 */	bne lbl_802DDC54
/* 802DDC50 002DABB0  48 00 00 64 */	b lbl_802DDCB4
lbl_802DDC54:
/* 802DDC54 002DABB4  48 00 00 DD */	bl sub_802ddd30
/* 802DDC58 002DABB8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802DDC5C 002DABBC  2C 04 00 00 */	cmpwi r4, 0
/* 802DDC60 002DABC0  40 82 00 28 */	bne lbl_802DDC88
/* 802DDC64 002DABC4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DDC68 002DABC8  28 03 00 00 */	cmplwi r3, 0
/* 802DDC6C 002DABCC  41 82 00 08 */	beq lbl_802DDC74
/* 802DDC70 002DABD0  48 03 7C C1 */	bl Free__7CMemoryFPCv
lbl_802DDC74:
/* 802DDC74 002DABD4  38 00 00 00 */	li r0, 0
/* 802DDC78 002DABD8  90 1E 00 04 */	stw r0, 4(r30)
/* 802DDC7C 002DABDC  90 1E 00 08 */	stw r0, 8(r30)
/* 802DDC80 002DABE0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802DDC84 002DABE4  48 00 00 2C */	b lbl_802DDCB0
lbl_802DDC88:
/* 802DDC88 002DABE8  7F C3 F3 78 */	mr r3, r30
/* 802DDC8C 002DABEC  48 00 14 45 */	bl "reserve__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
/* 802DDC90 002DABF0  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DDC94 002DABF4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802DDC98 002DABF8  54 00 28 34 */	slwi r0, r0, 5
/* 802DDC9C 002DABFC  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802DDCA0 002DAC00  7C 83 02 14 */	add r4, r3, r0
/* 802DDCA4 002DAC04  48 00 00 29 */	bl sub_802ddccc
/* 802DDCA8 002DAC08  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DDCAC 002DAC0C  90 1E 00 04 */	stw r0, 4(r30)
lbl_802DDCB0:
/* 802DDCB0 002DAC10  7F C3 F3 78 */	mr r3, r30
lbl_802DDCB4:
/* 802DDCB4 002DAC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDCB8 002DAC18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DDCBC 002DAC1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DDCC0 002DAC20  7C 08 03 A6 */	mtlr r0
/* 802DDCC4 002DAC24  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDCC8 002DAC28  4E 80 00 20 */	blr

.global sub_802ddccc
sub_802ddccc:
/* 802DDCCC 002DAC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDCD0 002DAC30  7C 08 02 A6 */	mflr r0
/* 802DDCD4 002DAC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDCD8 002DAC38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DDCDC 002DAC3C  7C BF 2B 78 */	mr r31, r5
/* 802DDCE0 002DAC40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DDCE4 002DAC44  7C 7E 1B 78 */	mr r30, r3
/* 802DDCE8 002DAC48  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DDCEC 002DAC4C  7C 9D 23 78 */	mr r29, r4
/* 802DDCF0 002DAC50  48 00 00 18 */	b lbl_802DDD08
lbl_802DDCF4:
/* 802DDCF4 002DAC54  7F E3 FB 78 */	mr r3, r31
/* 802DDCF8 002DAC58  7F C4 F3 78 */	mr r4, r30
/* 802DDCFC 002DAC5C  4B FF FC 8D */	bl sub_802dd988
/* 802DDD00 002DAC60  3B FF 00 20 */	addi r31, r31, 0x20
/* 802DDD04 002DAC64  3B DE 00 20 */	addi r30, r30, 0x20
lbl_802DDD08:
/* 802DDD08 002DAC68  7C 1E E8 40 */	cmplw r30, r29
/* 802DDD0C 002DAC6C  40 82 FF E8 */	bne lbl_802DDCF4
/* 802DDD10 002DAC70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDD14 002DAC74  7F E3 FB 78 */	mr r3, r31
/* 802DDD18 002DAC78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DDD1C 002DAC7C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DDD20 002DAC80  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DDD24 002DAC84  7C 08 03 A6 */	mtlr r0
/* 802DDD28 002DAC88  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDD2C 002DAC8C  4E 80 00 20 */	blr

.global sub_802ddd30
sub_802ddd30:
/* 802DDD30 002DAC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDD34 002DAC94  7C 08 02 A6 */	mflr r0
/* 802DDD38 002DAC98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDD3C 002DAC9C  38 81 00 0C */	addi r4, r1, 0xc
/* 802DDD40 002DACA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DDD44 002DACA4  7C 7F 1B 78 */	mr r31, r3
/* 802DDD48 002DACA8  38 61 00 14 */	addi r3, r1, 0x14
/* 802DDD4C 002DACAC  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DDD50 002DACB0  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802DDD54 002DACB4  54 00 28 34 */	slwi r0, r0, 5
/* 802DDD58 002DACB8  7C A5 02 14 */	add r5, r5, r0
/* 802DDD5C 002DACBC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 802DDD60 002DACC0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802DDD64 002DACC4  90 A1 00 08 */	stw r5, 8(r1)
/* 802DDD68 002DACC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DDD6C 002DACCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDD70 002DACD0  4B FF FB A5 */	bl sub_802dd914
/* 802DDD74 002DACD4  38 00 00 00 */	li r0, 0
/* 802DDD78 002DACD8  90 1F 00 04 */	stw r0, 4(r31)
/* 802DDD7C 002DACDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDD80 002DACE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DDD84 002DACE4  7C 08 03 A6 */	mtlr r0
/* 802DDD88 002DACE8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDD8C 002DACEC  4E 80 00 20 */	blr

.global "__ct__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
"__ct__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator":
/* 802DDD90 002DACF0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802DDD94 002DACF4  7C 08 02 A6 */	mflr r0
/* 802DDD98 002DACF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 802DDD9C 002DACFC  38 00 00 00 */	li r0, 0
/* 802DDDA0 002DAD00  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 802DDDA4 002DAD04  7C 7B 1B 78 */	mr r27, r3
/* 802DDDA8 002DAD08  7C 9C 23 78 */	mr r28, r4
/* 802DDDAC 002DAD0C  90 03 00 04 */	stw r0, 4(r3)
/* 802DDDB0 002DAD10  7F 83 E3 78 */	mr r3, r28
/* 802DDDB4 002DAD14  90 1B 00 08 */	stw r0, 8(r27)
/* 802DDDB8 002DAD18  90 1B 00 0C */	stw r0, 0xc(r27)
/* 802DDDBC 002DAD1C  48 06 0E C9 */	bl ReadLong__12CInputStreamFv
/* 802DDDC0 002DAD20  7C 7E 1B 78 */	mr r30, r3
/* 802DDDC4 002DAD24  7F 63 DB 78 */	mr r3, r27
/* 802DDDC8 002DAD28  7F C4 F3 78 */	mr r4, r30
/* 802DDDCC 002DAD2C  48 00 13 05 */	bl "reserve__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
/* 802DDDD0 002DAD30  3B E1 00 08 */	addi r31, r1, 8
/* 802DDDD4 002DAD34  3B A0 00 00 */	li r29, 0
/* 802DDDD8 002DAD38  48 00 00 38 */	b lbl_802DDE10
lbl_802DDDDC:
/* 802DDDDC 002DAD3C  88 0D A6 D8 */	lbz r0, lbl_805A9298@sda21(r13)
/* 802DDDE0 002DAD40  7F 84 E3 78 */	mr r4, r28
/* 802DDDE4 002DAD44  7F E5 FB 78 */	mr r5, r31
/* 802DDDE8 002DAD48  38 61 00 0C */	addi r3, r1, 0xc
/* 802DDDEC 002DAD4C  98 01 00 08 */	stb r0, 8(r1)
/* 802DDDF0 002DAD50  48 00 00 BD */	bl "Get<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>"
/* 802DDDF4 002DAD54  7F 63 DB 78 */	mr r3, r27
/* 802DDDF8 002DAD58  38 81 00 0C */	addi r4, r1, 0xc
/* 802DDDFC 002DAD5C  48 00 00 35 */	bl sub_802dde30
/* 802DDE00 002DAD60  38 61 00 0C */	addi r3, r1, 0xc
/* 802DDE04 002DAD64  38 80 FF FF */	li r4, -1
/* 802DDE08 002DAD68  4B D4 CB FD */	bl sub_8002aa04
/* 802DDE0C 002DAD6C  3B BD 00 01 */	addi r29, r29, 1
lbl_802DDE10:
/* 802DDE10 002DAD70  7C 1D F0 00 */	cmpw r29, r30
/* 802DDE14 002DAD74  41 80 FF C8 */	blt lbl_802DDDDC
/* 802DDE18 002DAD78  7F 63 DB 78 */	mr r3, r27
/* 802DDE1C 002DAD7C  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 802DDE20 002DAD80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802DDE24 002DAD84  7C 08 03 A6 */	mtlr r0
/* 802DDE28 002DAD88  38 21 00 50 */	addi r1, r1, 0x50
/* 802DDE2C 002DAD8C  4E 80 00 20 */	blr

.global sub_802dde30
sub_802dde30:
/* 802DDE30 002DAD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDE34 002DAD94  7C 08 02 A6 */	mflr r0
/* 802DDE38 002DAD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDE3C 002DAD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DDE40 002DADA0  7C 9F 23 78 */	mr r31, r4
/* 802DDE44 002DADA4  93 C1 00 08 */	stw r30, 8(r1)
/* 802DDE48 002DADA8  7C 7E 1B 78 */	mr r30, r3
/* 802DDE4C 002DADAC  80 03 00 04 */	lwz r0, 4(r3)
/* 802DDE50 002DADB0  80 A3 00 08 */	lwz r5, 8(r3)
/* 802DDE54 002DADB4  7C 00 28 00 */	cmpw r0, r5
/* 802DDE58 002DADB8  41 80 00 18 */	blt lbl_802DDE70
/* 802DDE5C 002DADBC  2C 05 00 00 */	cmpwi r5, 0
/* 802DDE60 002DADC0  38 80 00 04 */	li r4, 4
/* 802DDE64 002DADC4  41 82 00 08 */	beq lbl_802DDE6C
/* 802DDE68 002DADC8  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DDE6C:
/* 802DDE6C 002DADCC  48 00 12 65 */	bl "reserve__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
lbl_802DDE70:
/* 802DDE70 002DADD0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DDE74 002DADD4  7F E4 FB 78 */	mr r4, r31
/* 802DDE78 002DADD8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DDE7C 002DADDC  54 00 28 34 */	slwi r0, r0, 5
/* 802DDE80 002DADE0  7C 63 02 14 */	add r3, r3, r0
/* 802DDE84 002DADE4  4B FF FB 05 */	bl sub_802dd988
/* 802DDE88 002DADE8  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DDE8C 002DADEC  38 03 00 01 */	addi r0, r3, 1
/* 802DDE90 002DADF0  90 1E 00 04 */	stw r0, 4(r30)
/* 802DDE94 002DADF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DDE98 002DADF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DDE9C 002DADFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDEA0 002DAE00  7C 08 03 A6 */	mtlr r0
/* 802DDEA4 002DAE04  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDEA8 002DAE08  4E 80 00 20 */	blr

.global "Get<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>"
"Get<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>":
/* 802DDEAC 002DAE0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDEB0 002DAE10  7C 08 02 A6 */	mflr r0
/* 802DDEB4 002DAE14  7C 85 23 78 */	mr r5, r4
/* 802DDEB8 002DAE18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDEBC 002DAE1C  38 81 00 08 */	addi r4, r1, 8
/* 802DDEC0 002DAE20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DDEC4 002DAE24  7C 7F 1B 78 */	mr r31, r3
/* 802DDEC8 002DAE28  88 0D A6 DC */	lbz r0, lbl_805A929C@sda21(r13)
/* 802DDECC 002DAE2C  98 01 00 08 */	stb r0, 8(r1)
/* 802DDED0 002DAE30  48 00 00 19 */	bl "cinput_stream_helper<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__FRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>R12CInputStream"
/* 802DDED4 002DAE34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDED8 002DAE38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DDEDC 002DAE3C  7C 08 03 A6 */	mtlr r0
/* 802DDEE0 002DAE40  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDEE4 002DAE44  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__FRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>R12CInputStream"
"cinput_stream_helper<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>__FRC161TType<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>>R12CInputStream":
/* 802DDEE8 002DAE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDEEC 002DAE4C  7C 08 02 A6 */	mflr r0
/* 802DDEF0 002DAE50  7C A4 2B 78 */	mr r4, r5
/* 802DDEF4 002DAE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDEF8 002DAE58  48 00 00 15 */	bl "__ct__Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>FR12CInputStream"
/* 802DDEFC 002DAE5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDF00 002DAE60  7C 08 03 A6 */	mtlr r0
/* 802DDF04 002DAE64  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDF08 002DAE68  4E 80 00 20 */	blr

.global "__ct__Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>FR12CInputStream"
"__ct__Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>FR12CInputStream":
/* 802DDF0C 002DAE6C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DDF10 002DAE70  7C 08 02 A6 */	mflr r0
/* 802DDF14 002DAE74  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DDF18 002DAE78  38 A1 00 0C */	addi r5, r1, 0xc
/* 802DDF1C 002DAE7C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802DDF20 002DAE80  7C 9F 23 78 */	mr r31, r4
/* 802DDF24 002DAE84  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802DDF28 002DAE88  7C 7E 1B 78 */	mr r30, r3
/* 802DDF2C 002DAE8C  38 61 00 20 */	addi r3, r1, 0x20
/* 802DDF30 002DAE90  88 0D A6 C0 */	lbz r0, lbl_805A9280@sda21(r13)
/* 802DDF34 002DAE94  98 01 00 0C */	stb r0, 0xc(r1)
/* 802DDF38 002DAE98  48 00 02 55 */	bl sub_802de18c
/* 802DDF3C 002DAE9C  7F C3 F3 78 */	mr r3, r30
/* 802DDF40 002DAEA0  38 81 00 20 */	addi r4, r1, 0x20
/* 802DDF44 002DAEA4  48 06 02 1D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DDF48 002DAEA8  38 61 00 20 */	addi r3, r1, 0x20
/* 802DDF4C 002DAEAC  48 05 FB 95 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DDF50 002DAEB0  88 0D A6 E0 */	lbz r0, lbl_805A92A0@sda21(r13)
/* 802DDF54 002DAEB4  7F E4 FB 78 */	mr r4, r31
/* 802DDF58 002DAEB8  38 61 00 10 */	addi r3, r1, 0x10
/* 802DDF5C 002DAEBC  38 A1 00 08 */	addi r5, r1, 8
/* 802DDF60 002DAEC0  98 01 00 08 */	stb r0, 8(r1)
/* 802DDF64 002DAEC4  48 00 00 39 */	bl "Get<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__12CInputStreamFRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>"
/* 802DDF68 002DAEC8  38 7E 00 10 */	addi r3, r30, 0x10
/* 802DDF6C 002DAECC  38 81 00 10 */	addi r4, r1, 0x10
/* 802DDF70 002DAED0  4B D4 CD 4D */	bl sub_8002acbc
/* 802DDF74 002DAED4  38 61 00 10 */	addi r3, r1, 0x10
/* 802DDF78 002DAED8  38 80 FF FF */	li r4, -1
/* 802DDF7C 002DAEDC  4B D4 CA F1 */	bl sub_8002aa6c
/* 802DDF80 002DAEE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DDF84 002DAEE4  7F C3 F3 78 */	mr r3, r30
/* 802DDF88 002DAEE8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802DDF8C 002DAEEC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802DDF90 002DAEF0  7C 08 03 A6 */	mtlr r0
/* 802DDF94 002DAEF4  38 21 00 40 */	addi r1, r1, 0x40
/* 802DDF98 002DAEF8  4E 80 00 20 */	blr

.global "Get<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__12CInputStreamFRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>"
"Get<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__12CInputStreamFRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>":
/* 802DDF9C 002DAEFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DDFA0 002DAF00  7C 08 02 A6 */	mflr r0
/* 802DDFA4 002DAF04  7C 85 23 78 */	mr r5, r4
/* 802DDFA8 002DAF08  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DDFAC 002DAF0C  38 81 00 08 */	addi r4, r1, 8
/* 802DDFB0 002DAF10  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DDFB4 002DAF14  7C 7F 1B 78 */	mr r31, r3
/* 802DDFB8 002DAF18  88 0D A6 E4 */	lbz r0, lbl_805A92A4@sda21(r13)
/* 802DDFBC 002DAF1C  98 01 00 08 */	stb r0, 8(r1)
/* 802DDFC0 002DAF20  48 00 00 19 */	bl "cinput_stream_helper<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__FRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>R12CInputStream"
/* 802DDFC4 002DAF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DDFC8 002DAF28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DDFCC 002DAF2C  7C 08 03 A6 */	mtlr r0
/* 802DDFD0 002DAF30  38 21 00 20 */	addi r1, r1, 0x20
/* 802DDFD4 002DAF34  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__FRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>R12CInputStream"
"cinput_stream_helper<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>__FRC69TType<Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>R12CInputStream":
/* 802DDFD8 002DAF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDFDC 002DAF3C  7C 08 02 A6 */	mflr r0
/* 802DDFE0 002DAF40  7C A4 2B 78 */	mr r4, r5
/* 802DDFE4 002DAF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDFE8 002DAF48  38 A1 00 08 */	addi r5, r1, 8
/* 802DDFEC 002DAF4C  48 00 00 15 */	bl "__ct__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
/* 802DDFF0 002DAF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDFF4 002DAF54  7C 08 03 A6 */	mtlr r0
/* 802DDFF8 002DAF58  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDFFC 002DAF5C  4E 80 00 20 */	blr

.global "__ct__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
"__ct__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator":
/* 802DE000 002DAF60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802DE004 002DAF64  7C 08 02 A6 */	mflr r0
/* 802DE008 002DAF68  90 01 00 64 */	stw r0, 0x64(r1)
/* 802DE00C 002DAF6C  38 00 00 00 */	li r0, 0
/* 802DE010 002DAF70  BF 21 00 44 */	stmw r25, 0x44(r1)
/* 802DE014 002DAF74  7C 7A 1B 78 */	mr r26, r3
/* 802DE018 002DAF78  7C 9B 23 78 */	mr r27, r4
/* 802DE01C 002DAF7C  90 03 00 04 */	stw r0, 4(r3)
/* 802DE020 002DAF80  7F 63 DB 78 */	mr r3, r27
/* 802DE024 002DAF84  90 1A 00 08 */	stw r0, 8(r26)
/* 802DE028 002DAF88  90 1A 00 0C */	stw r0, 0xc(r26)
/* 802DE02C 002DAF8C  48 06 0C 59 */	bl ReadLong__12CInputStreamFv
/* 802DE030 002DAF90  7C 7E 1B 78 */	mr r30, r3
/* 802DE034 002DAF94  7F 43 D3 78 */	mr r3, r26
/* 802DE038 002DAF98  7F C4 F3 78 */	mr r4, r30
/* 802DE03C 002DAF9C  48 00 0D 05 */	bl "reserve__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>Fi"
/* 802DE040 002DAFA0  3B A1 00 24 */	addi r29, r1, 0x24
/* 802DE044 002DAFA4  3B E1 00 08 */	addi r31, r1, 8
/* 802DE048 002DAFA8  3B 80 00 00 */	li r28, 0
/* 802DE04C 002DAFAC  48 00 00 C0 */	b lbl_802DE10C
lbl_802DE050:
/* 802DE050 002DAFB0  88 0D A6 E8 */	lbz r0, lbl_805A92A8@sda21(r13)
/* 802DE054 002DAFB4  7F 64 DB 78 */	mr r4, r27
/* 802DE058 002DAFB8  7F E5 FB 78 */	mr r5, r31
/* 802DE05C 002DAFBC  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE060 002DAFC0  98 01 00 08 */	stb r0, 8(r1)
/* 802DE064 002DAFC4  48 00 00 C9 */	bl "Get<16CEffectComponent>__12CInputStreamFRC25TType<16CEffectComponent>"
/* 802DE068 002DAFC8  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DE06C 002DAFCC  80 BA 00 08 */	lwz r5, 8(r26)
/* 802DE070 002DAFD0  7C 00 28 00 */	cmpw r0, r5
/* 802DE074 002DAFD4  41 80 00 1C */	blt lbl_802DE090
/* 802DE078 002DAFD8  2C 05 00 00 */	cmpwi r5, 0
/* 802DE07C 002DAFDC  7F 43 D3 78 */	mr r3, r26
/* 802DE080 002DAFE0  38 80 00 04 */	li r4, 4
/* 802DE084 002DAFE4  41 82 00 08 */	beq lbl_802DE08C
/* 802DE088 002DAFE8  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DE08C:
/* 802DE08C 002DAFEC  48 00 0C B5 */	bl "reserve__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>Fi"
lbl_802DE090:
/* 802DE090 002DAFF0  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DE094 002DAFF4  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802DE098 002DAFF8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802DE09C 002DAFFC  7F 23 02 15 */	add. r25, r3, r0
/* 802DE0A0 002DB000  41 82 00 44 */	beq lbl_802DE0E4
/* 802DE0A4 002DB004  7F 23 CB 78 */	mr r3, r25
/* 802DE0A8 002DB008  38 81 00 0C */	addi r4, r1, 0xc
/* 802DE0AC 002DB00C  48 06 00 B5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE0B0 002DB010  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802DE0B4 002DB014  7F A4 EB 78 */	mr r4, r29
/* 802DE0B8 002DB018  38 79 00 18 */	addi r3, r25, 0x18
/* 802DE0BC 002DB01C  90 19 00 10 */	stw r0, 0x10(r25)
/* 802DE0C0 002DB020  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802DE0C4 002DB024  90 19 00 14 */	stw r0, 0x14(r25)
/* 802DE0C8 002DB028  48 06 00 99 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE0CC 002DB02C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 802DE0D0 002DB030  D0 19 00 28 */	stfs f0, 0x28(r25)
/* 802DE0D4 002DB034  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802DE0D8 002DB038  90 19 00 2C */	stw r0, 0x2c(r25)
/* 802DE0DC 002DB03C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802DE0E0 002DB040  90 19 00 30 */	stw r0, 0x30(r25)
lbl_802DE0E4:
/* 802DE0E4 002DB044  80 7A 00 04 */	lwz r3, 4(r26)
/* 802DE0E8 002DB048  28 1D 00 00 */	cmplwi r29, 0
/* 802DE0EC 002DB04C  38 03 00 01 */	addi r0, r3, 1
/* 802DE0F0 002DB050  90 1A 00 04 */	stw r0, 4(r26)
/* 802DE0F4 002DB054  41 82 00 0C */	beq lbl_802DE100
/* 802DE0F8 002DB058  7F A3 EB 78 */	mr r3, r29
/* 802DE0FC 002DB05C  48 05 F9 E5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DE100:
/* 802DE100 002DB060  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE104 002DB064  48 05 F9 DD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE108 002DB068  3B 9C 00 01 */	addi r28, r28, 1
lbl_802DE10C:
/* 802DE10C 002DB06C  7C 1C F0 00 */	cmpw r28, r30
/* 802DE110 002DB070  41 80 FF 40 */	blt lbl_802DE050
/* 802DE114 002DB074  7F 43 D3 78 */	mr r3, r26
/* 802DE118 002DB078  BB 21 00 44 */	lmw r25, 0x44(r1)
/* 802DE11C 002DB07C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802DE120 002DB080  7C 08 03 A6 */	mtlr r0
/* 802DE124 002DB084  38 21 00 60 */	addi r1, r1, 0x60
/* 802DE128 002DB088  4E 80 00 20 */	blr

.global "Get<16CEffectComponent>__12CInputStreamFRC25TType<16CEffectComponent>"
"Get<16CEffectComponent>__12CInputStreamFRC25TType<16CEffectComponent>":
/* 802DE12C 002DB08C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE130 002DB090  7C 08 02 A6 */	mflr r0
/* 802DE134 002DB094  7C 85 23 78 */	mr r5, r4
/* 802DE138 002DB098  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE13C 002DB09C  38 81 00 08 */	addi r4, r1, 8
/* 802DE140 002DB0A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE144 002DB0A4  7C 7F 1B 78 */	mr r31, r3
/* 802DE148 002DB0A8  88 0D A6 EC */	lbz r0, lbl_805A92AC@sda21(r13)
/* 802DE14C 002DB0AC  98 01 00 08 */	stb r0, 8(r1)
/* 802DE150 002DB0B0  48 00 00 19 */	bl "cinput_stream_helper<16CEffectComponent>__FRC25TType<16CEffectComponent>R12CInputStream"
/* 802DE154 002DB0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE158 002DB0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE15C 002DB0BC  7C 08 03 A6 */	mtlr r0
/* 802DE160 002DB0C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE164 002DB0C4  4E 80 00 20 */	blr

.global "cinput_stream_helper<16CEffectComponent>__FRC25TType<16CEffectComponent>R12CInputStream"
"cinput_stream_helper<16CEffectComponent>__FRC25TType<16CEffectComponent>R12CInputStream":
/* 802DE168 002DB0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE16C 002DB0CC  7C 08 02 A6 */	mflr r0
/* 802DE170 002DB0D0  7C A4 2B 78 */	mr r4, r5
/* 802DE174 002DB0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE178 002DB0D8  48 07 91 F9 */	bl __ct__16CEffectComponentFR12CInputStream
/* 802DE17C 002DB0DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE180 002DB0E0  7C 08 03 A6 */	mtlr r0
/* 802DE184 002DB0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE188 002DB0E8  4E 80 00 20 */	blr

.global sub_802de18c
sub_802de18c:
/* 802DE18C 002DB0EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE190 002DB0F0  7C 08 02 A6 */	mflr r0
/* 802DE194 002DB0F4  7C 85 23 78 */	mr r5, r4
/* 802DE198 002DB0F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE19C 002DB0FC  38 81 00 08 */	addi r4, r1, 8
/* 802DE1A0 002DB100  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE1A4 002DB104  7C 7F 1B 78 */	mr r31, r3
/* 802DE1A8 002DB108  88 0D A6 C4 */	lbz r0, lbl_805A9284@sda21(r13)
/* 802DE1AC 002DB10C  98 01 00 08 */	stb r0, 8(r1)
/* 802DE1B0 002DB110  4B D7 B3 49 */	bl sub_800594f8
/* 802DE1B4 002DB114  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE1B8 002DB118  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE1BC 002DB11C  7C 08 03 A6 */	mtlr r0
/* 802DE1C0 002DB120  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE1C4 002DB124  4E 80 00 20 */	blr

.global "__ct__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>FRCQ24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>"
"__ct__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>FRCQ24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>":
/* 802DE1C8 002DB128  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DE1CC 002DB12C  7C 08 02 A6 */	mflr r0
/* 802DE1D0 002DB130  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DE1D4 002DB134  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802DE1D8 002DB138  7C 7F 1B 78 */	mr r31, r3
/* 802DE1DC 002DB13C  7C 9B 23 78 */	mr r27, r4
/* 802DE1E0 002DB140  7C 1F D8 40 */	cmplw r31, r27
/* 802DE1E4 002DB144  40 82 00 08 */	bne lbl_802DE1EC
/* 802DE1E8 002DB148  48 00 01 00 */	b lbl_802DE2E8
lbl_802DE1EC:
/* 802DE1EC 002DB14C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DE1F0 002DB150  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 802DE1F4 002DB154  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802DE1F8 002DB158  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802DE1FC 002DB15C  7F DD 02 14 */	add r30, r29, r0
/* 802DE200 002DB160  93 A1 00 08 */	stw r29, 8(r1)
/* 802DE204 002DB164  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802DE208 002DB168  93 C1 00 10 */	stw r30, 0x10(r1)
/* 802DE20C 002DB16C  48 00 00 1C */	b lbl_802DE228
lbl_802DE210:
/* 802DE210 002DB170  28 1D 00 00 */	cmplwi r29, 0
/* 802DE214 002DB174  41 82 00 10 */	beq lbl_802DE224
/* 802DE218 002DB178  41 82 00 0C */	beq lbl_802DE224
/* 802DE21C 002DB17C  7F A3 EB 78 */	mr r3, r29
/* 802DE220 002DB180  48 05 F8 C1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DE224:
/* 802DE224 002DB184  3B BD 00 28 */	addi r29, r29, 0x28
lbl_802DE228:
/* 802DE228 002DB188  7C 1D F0 40 */	cmplw r29, r30
/* 802DE22C 002DB18C  40 82 FF E4 */	bne lbl_802DE210
/* 802DE230 002DB190  38 00 00 00 */	li r0, 0
/* 802DE234 002DB194  90 1F 00 04 */	stw r0, 4(r31)
/* 802DE238 002DB198  80 9B 00 04 */	lwz r4, 4(r27)
/* 802DE23C 002DB19C  2C 04 00 00 */	cmpwi r4, 0
/* 802DE240 002DB1A0  40 82 00 28 */	bne lbl_802DE268
/* 802DE244 002DB1A4  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802DE248 002DB1A8  28 03 00 00 */	cmplwi r3, 0
/* 802DE24C 002DB1AC  41 82 00 08 */	beq lbl_802DE254
/* 802DE250 002DB1B0  48 03 76 E1 */	bl Free__7CMemoryFPCv
lbl_802DE254:
/* 802DE254 002DB1B4  38 00 00 00 */	li r0, 0
/* 802DE258 002DB1B8  90 1F 00 04 */	stw r0, 4(r31)
/* 802DE25C 002DB1BC  90 1F 00 08 */	stw r0, 8(r31)
/* 802DE260 002DB1C0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802DE264 002DB1C4  48 00 00 80 */	b lbl_802DE2E4
lbl_802DE268:
/* 802DE268 002DB1C8  7F E3 FB 78 */	mr r3, r31
/* 802DE26C 002DB1CC  48 00 0D 3D */	bl "reserve__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fi"
/* 802DE270 002DB1D0  80 1B 00 04 */	lwz r0, 4(r27)
/* 802DE274 002DB1D4  83 9B 00 0C */	lwz r28, 0xc(r27)
/* 802DE278 002DB1D8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802DE27C 002DB1DC  83 DF 00 0C */	lwz r30, 0xc(r31)
/* 802DE280 002DB1E0  7F BC 02 14 */	add r29, r28, r0
/* 802DE284 002DB1E4  48 00 00 50 */	b lbl_802DE2D4
lbl_802DE288:
/* 802DE288 002DB1E8  28 1E 00 00 */	cmplwi r30, 0
/* 802DE28C 002DB1EC  41 82 00 40 */	beq lbl_802DE2CC
/* 802DE290 002DB1F0  7F C3 F3 78 */	mr r3, r30
/* 802DE294 002DB1F4  7F 84 E3 78 */	mr r4, r28
/* 802DE298 002DB1F8  48 05 FE C9 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE29C 002DB1FC  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 802DE2A0 002DB200  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802DE2A4 002DB204  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 802DE2A8 002DB208  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802DE2AC 002DB20C  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 802DE2B0 002DB210  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802DE2B4 002DB214  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 802DE2B8 002DB218  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 802DE2BC 002DB21C  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 802DE2C0 002DB220  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802DE2C4 002DB224  C0 1C 00 24 */	lfs f0, 0x24(r28)
/* 802DE2C8 002DB228  D0 1E 00 24 */	stfs f0, 0x24(r30)
lbl_802DE2CC:
/* 802DE2CC 002DB22C  3B DE 00 28 */	addi r30, r30, 0x28
/* 802DE2D0 002DB230  3B 9C 00 28 */	addi r28, r28, 0x28
lbl_802DE2D4:
/* 802DE2D4 002DB234  7C 1C E8 40 */	cmplw r28, r29
/* 802DE2D8 002DB238  40 82 FF B0 */	bne lbl_802DE288
/* 802DE2DC 002DB23C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802DE2E0 002DB240  90 1F 00 04 */	stw r0, 4(r31)
lbl_802DE2E4:
/* 802DE2E4 002DB244  7F E3 FB 78 */	mr r3, r31
lbl_802DE2E8:
/* 802DE2E8 002DB248  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802DE2EC 002DB24C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DE2F0 002DB250  7C 08 03 A6 */	mtlr r0
/* 802DE2F4 002DB254  38 21 00 30 */	addi r1, r1, 0x30
/* 802DE2F8 002DB258  4E 80 00 20 */	blr

.global "Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>"
"Get<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__12CInputStreamFRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>":
/* 802DE2FC 002DB25C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802DE300 002DB260  7C 08 02 A6 */	mflr r0
/* 802DE304 002DB264  90 01 00 54 */	stw r0, 0x54(r1)
/* 802DE308 002DB268  38 00 00 00 */	li r0, 0
/* 802DE30C 002DB26C  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 802DE310 002DB270  7C 7A 1B 78 */	mr r26, r3
/* 802DE314 002DB274  7C 9B 23 78 */	mr r27, r4
/* 802DE318 002DB278  90 03 00 04 */	stw r0, 4(r3)
/* 802DE31C 002DB27C  7F 63 DB 78 */	mr r3, r27
/* 802DE320 002DB280  90 1A 00 08 */	stw r0, 8(r26)
/* 802DE324 002DB284  90 1A 00 0C */	stw r0, 0xc(r26)
/* 802DE328 002DB288  48 06 09 5D */	bl ReadLong__12CInputStreamFv
/* 802DE32C 002DB28C  7C 7D 1B 78 */	mr r29, r3
/* 802DE330 002DB290  7F 43 D3 78 */	mr r3, r26
/* 802DE334 002DB294  7F A4 EB 78 */	mr r4, r29
/* 802DE338 002DB298  48 00 0C 71 */	bl "reserve__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fi"
/* 802DE33C 002DB29C  3B E1 00 08 */	addi r31, r1, 8
/* 802DE340 002DB2A0  3B 80 00 00 */	li r28, 0
/* 802DE344 002DB2A4  48 00 00 AC */	b lbl_802DE3F0
lbl_802DE348:
/* 802DE348 002DB2A8  88 0D A6 D0 */	lbz r0, lbl_805A9290@sda21(r13)
/* 802DE34C 002DB2AC  7F 64 DB 78 */	mr r4, r27
/* 802DE350 002DB2B0  7F E5 FB 78 */	mr r5, r31
/* 802DE354 002DB2B4  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE358 002DB2B8  98 01 00 08 */	stb r0, 8(r1)
/* 802DE35C 002DB2BC  48 00 00 B5 */	bl "cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>R12CInputStream"
/* 802DE360 002DB2C0  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DE364 002DB2C4  80 BA 00 08 */	lwz r5, 8(r26)
/* 802DE368 002DB2C8  7C 00 28 00 */	cmpw r0, r5
/* 802DE36C 002DB2CC  41 80 00 1C */	blt lbl_802DE388
/* 802DE370 002DB2D0  2C 05 00 00 */	cmpwi r5, 0
/* 802DE374 002DB2D4  7F 43 D3 78 */	mr r3, r26
/* 802DE378 002DB2D8  38 80 00 04 */	li r4, 4
/* 802DE37C 002DB2DC  41 82 00 08 */	beq lbl_802DE384
/* 802DE380 002DB2E0  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DE384:
/* 802DE384 002DB2E4  48 00 0C 25 */	bl "reserve__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fi"
lbl_802DE388:
/* 802DE388 002DB2E8  80 1A 00 04 */	lwz r0, 4(r26)
/* 802DE38C 002DB2EC  80 7A 00 0C */	lwz r3, 0xc(r26)
/* 802DE390 002DB2F0  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802DE394 002DB2F4  7F C3 02 15 */	add. r30, r3, r0
/* 802DE398 002DB2F8  41 82 00 40 */	beq lbl_802DE3D8
/* 802DE39C 002DB2FC  7F C3 F3 78 */	mr r3, r30
/* 802DE3A0 002DB300  38 81 00 0C */	addi r4, r1, 0xc
/* 802DE3A4 002DB304  48 05 FD BD */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE3A8 002DB308  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802DE3AC 002DB30C  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802DE3B0 002DB310  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802DE3B4 002DB314  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802DE3B8 002DB318  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802DE3BC 002DB31C  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802DE3C0 002DB320  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802DE3C4 002DB324  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 802DE3C8 002DB328  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802DE3CC 002DB32C  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802DE3D0 002DB330  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802DE3D4 002DB334  D0 1E 00 24 */	stfs f0, 0x24(r30)
lbl_802DE3D8:
/* 802DE3D8 002DB338  80 9A 00 04 */	lwz r4, 4(r26)
/* 802DE3DC 002DB33C  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE3E0 002DB340  38 04 00 01 */	addi r0, r4, 1
/* 802DE3E4 002DB344  90 1A 00 04 */	stw r0, 4(r26)
/* 802DE3E8 002DB348  48 05 F6 F9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE3EC 002DB34C  3B 9C 00 01 */	addi r28, r28, 1
lbl_802DE3F0:
/* 802DE3F0 002DB350  7C 1C E8 00 */	cmpw r28, r29
/* 802DE3F4 002DB354  41 80 FF 54 */	blt lbl_802DE348
/* 802DE3F8 002DB358  7F 43 D3 78 */	mr r3, r26
/* 802DE3FC 002DB35C  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 802DE400 002DB360  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802DE404 002DB364  7C 08 03 A6 */	mtlr r0
/* 802DE408 002DB368  38 21 00 50 */	addi r1, r1, 0x50
/* 802DE40C 002DB36C  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>R12CInputStream"
"cinput_stream_helper<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>__FRC105TType<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>>R12CInputStream":
/* 802DE410 002DB370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE414 002DB374  7C 08 02 A6 */	mflr r0
/* 802DE418 002DB378  7C 85 23 78 */	mr r5, r4
/* 802DE41C 002DB37C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE420 002DB380  38 81 00 08 */	addi r4, r1, 8
/* 802DE424 002DB384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE428 002DB388  7C 7F 1B 78 */	mr r31, r3
/* 802DE42C 002DB38C  88 0D A6 D4 */	lbz r0, lbl_805A9294@sda21(r13)
/* 802DE430 002DB390  98 01 00 08 */	stb r0, 8(r1)
/* 802DE434 002DB394  48 00 00 19 */	bl "__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>FR12CInputStream"
/* 802DE438 002DB398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE43C 002DB39C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE440 002DB3A0  7C 08 03 A6 */	mtlr r0
/* 802DE444 002DB3A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE448 002DB3A8  4E 80 00 20 */	blr

.global "__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>FR12CInputStream"
"__ct__Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>FR12CInputStream":
/* 802DE44C 002DB3AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DE450 002DB3B0  7C 08 02 A6 */	mflr r0
/* 802DE454 002DB3B4  7C 64 1B 78 */	mr r4, r3
/* 802DE458 002DB3B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DE45C 002DB3BC  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE460 002DB3C0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802DE464 002DB3C4  7C BF 2B 78 */	mr r31, r5
/* 802DE468 002DB3C8  38 A1 00 08 */	addi r5, r1, 8
/* 802DE46C 002DB3CC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802DE470 002DB3D0  7C 9E 23 78 */	mr r30, r4
/* 802DE474 002DB3D4  7F E4 FB 78 */	mr r4, r31
/* 802DE478 002DB3D8  88 0D A6 C0 */	lbz r0, lbl_805A9280@sda21(r13)
/* 802DE47C 002DB3DC  98 01 00 08 */	stb r0, 8(r1)
/* 802DE480 002DB3E0  4B FF FD 0D */	bl sub_802de18c
/* 802DE484 002DB3E4  7F C3 F3 78 */	mr r3, r30
/* 802DE488 002DB3E8  38 81 00 0C */	addi r4, r1, 0xc
/* 802DE48C 002DB3EC  48 05 FC D5 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE490 002DB3F0  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE494 002DB3F4  48 05 F6 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE498 002DB3F8  7F E4 FB 78 */	mr r4, r31
/* 802DE49C 002DB3FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 802DE4A0 002DB400  48 05 A0 9D */	bl __ct__6CAABoxFR12CInputStream
/* 802DE4A4 002DB404  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 802DE4A8 002DB408  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802DE4AC 002DB40C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802DE4B0 002DB410  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802DE4B4 002DB414  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802DE4B8 002DB418  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 802DE4BC 002DB41C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 802DE4C0 002DB420  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 802DE4C4 002DB424  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 802DE4C8 002DB428  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 802DE4CC 002DB42C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 802DE4D0 002DB430  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 802DE4D4 002DB434  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DE4D8 002DB438  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802DE4DC 002DB43C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802DE4E0 002DB440  7C 08 03 A6 */	mtlr r0
/* 802DE4E4 002DB444  38 21 00 40 */	addi r1, r1, 0x40
/* 802DE4E8 002DB448  4E 80 00 20 */	blr

.global "Get<12CPASDatabase>__12CInputStreamFRC21TType<12CPASDatabase>"
"Get<12CPASDatabase>__12CInputStreamFRC21TType<12CPASDatabase>":
/* 802DE4EC 002DB44C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE4F0 002DB450  7C 08 02 A6 */	mflr r0
/* 802DE4F4 002DB454  7C 85 23 78 */	mr r5, r4
/* 802DE4F8 002DB458  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE4FC 002DB45C  38 81 00 08 */	addi r4, r1, 8
/* 802DE500 002DB460  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE504 002DB464  7C 7F 1B 78 */	mr r31, r3
/* 802DE508 002DB468  88 0D A6 CC */	lbz r0, lbl_805A928C@sda21(r13)
/* 802DE50C 002DB46C  98 01 00 08 */	stb r0, 8(r1)
/* 802DE510 002DB470  48 00 00 19 */	bl "cinput_stream_helper<12CPASDatabase>__FRC21TType<12CPASDatabase>R12CInputStream"
/* 802DE514 002DB474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE518 002DB478  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE51C 002DB47C  7C 08 03 A6 */	mtlr r0
/* 802DE520 002DB480  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE524 002DB484  4E 80 00 20 */	blr

.global "cinput_stream_helper<12CPASDatabase>__FRC21TType<12CPASDatabase>R12CInputStream"
"cinput_stream_helper<12CPASDatabase>__FRC21TType<12CPASDatabase>R12CInputStream":
/* 802DE528 002DB488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE52C 002DB48C  7C 08 02 A6 */	mflr r0
/* 802DE530 002DB490  7C A4 2B 78 */	mr r4, r5
/* 802DE534 002DB494  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE538 002DB498  48 00 6D 49 */	bl __ct__12CPASDatabaseFR12CInputStream
/* 802DE53C 002DB49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE540 002DB4A0  7C 08 03 A6 */	mtlr r0
/* 802DE544 002DB4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE548 002DB4A8  4E 80 00 20 */	blr

.global "_ct__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator"
"_ct__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>FR12CInputStreamRCQ24rstl17rmemory_allocator":
/* 802DE54C 002DB4AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802DE550 002DB4B0  7C 08 02 A6 */	mflr r0
/* 802DE554 002DB4B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 802DE558 002DB4B8  38 00 00 00 */	li r0, 0
/* 802DE55C 002DB4BC  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 802DE560 002DB4C0  7C 7D 1B 78 */	mr r29, r3
/* 802DE564 002DB4C4  7C 9E 23 78 */	mr r30, r4
/* 802DE568 002DB4C8  90 03 00 04 */	stw r0, 4(r3)
/* 802DE56C 002DB4CC  7F C3 F3 78 */	mr r3, r30
/* 802DE570 002DB4D0  90 1D 00 08 */	stw r0, 8(r29)
/* 802DE574 002DB4D4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 802DE578 002DB4D8  48 06 07 0D */	bl ReadLong__12CInputStreamFv
/* 802DE57C 002DB4DC  7C 7B 1B 78 */	mr r27, r3
/* 802DE580 002DB4E0  7F A3 EB 78 */	mr r3, r29
/* 802DE584 002DB4E4  7F 64 DB 78 */	mr r4, r27
/* 802DE588 002DB4E8  48 00 08 F9 */	bl "reserve__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>Fi"
/* 802DE58C 002DB4EC  3B 21 00 10 */	addi r25, r1, 0x10
/* 802DE590 002DB4F0  3B 81 00 08 */	addi r28, r1, 8
/* 802DE594 002DB4F4  3B E0 00 00 */	li r31, 0
/* 802DE598 002DB4F8  3B 59 00 10 */	addi r26, r25, 0x10
/* 802DE59C 002DB4FC  48 00 00 B4 */	b lbl_802DE650
lbl_802DE5A0:
/* 802DE5A0 002DB500  88 0D A6 B0 */	lbz r0, lbl_805A9270@sda21(r13)
/* 802DE5A4 002DB504  7F C4 F3 78 */	mr r4, r30
/* 802DE5A8 002DB508  7F 85 E3 78 */	mr r5, r28
/* 802DE5AC 002DB50C  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE5B0 002DB510  98 01 00 08 */	stb r0, 8(r1)
/* 802DE5B4 002DB514  48 00 00 BD */	bl "Get<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__12CInputStreamFRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>"
/* 802DE5B8 002DB518  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DE5BC 002DB51C  80 BD 00 08 */	lwz r5, 8(r29)
/* 802DE5C0 002DB520  7C 00 28 00 */	cmpw r0, r5
/* 802DE5C4 002DB524  41 80 00 1C */	blt lbl_802DE5E0
/* 802DE5C8 002DB528  2C 05 00 00 */	cmpwi r5, 0
/* 802DE5CC 002DB52C  7F A3 EB 78 */	mr r3, r29
/* 802DE5D0 002DB530  38 80 00 04 */	li r4, 4
/* 802DE5D4 002DB534  41 82 00 08 */	beq lbl_802DE5DC
/* 802DE5D8 002DB538  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DE5DC:
/* 802DE5DC 002DB53C  48 00 08 A5 */	bl "reserve__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>Fi"
lbl_802DE5E0:
/* 802DE5E0 002DB540  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DE5E4 002DB544  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DE5E8 002DB548  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802DE5EC 002DB54C  7C A3 02 15 */	add. r5, r3, r0
/* 802DE5F0 002DB550  41 82 00 28 */	beq lbl_802DE618
/* 802DE5F4 002DB554  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802DE5F8 002DB558  3B 05 00 04 */	addi r24, r5, 4
/* 802DE5FC 002DB55C  7F 03 C3 78 */	mr r3, r24
/* 802DE600 002DB560  7F 24 CB 78 */	mr r4, r25
/* 802DE604 002DB564  90 05 00 00 */	stw r0, 0(r5)
/* 802DE608 002DB568  48 05 FB 59 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE60C 002DB56C  7F 44 D3 78 */	mr r4, r26
/* 802DE610 002DB570  38 78 00 10 */	addi r3, r24, 0x10
/* 802DE614 002DB574  48 05 FB 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802DE618:
/* 802DE618 002DB578  80 7D 00 04 */	lwz r3, 4(r29)
/* 802DE61C 002DB57C  28 19 00 00 */	cmplwi r25, 0
/* 802DE620 002DB580  38 03 00 01 */	addi r0, r3, 1
/* 802DE624 002DB584  90 1D 00 04 */	stw r0, 4(r29)
/* 802DE628 002DB588  41 82 00 24 */	beq lbl_802DE64C
/* 802DE62C 002DB58C  28 1A 00 00 */	cmplwi r26, 0
/* 802DE630 002DB590  41 82 00 0C */	beq lbl_802DE63C
/* 802DE634 002DB594  7F 43 D3 78 */	mr r3, r26
/* 802DE638 002DB598  48 05 F4 A9 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DE63C:
/* 802DE63C 002DB59C  28 19 00 00 */	cmplwi r25, 0
/* 802DE640 002DB5A0  41 82 00 0C */	beq lbl_802DE64C
/* 802DE644 002DB5A4  7F 23 CB 78 */	mr r3, r25
/* 802DE648 002DB5A8  48 05 F4 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DE64C:
/* 802DE64C 002DB5AC  3B FF 00 01 */	addi r31, r31, 1
lbl_802DE650:
/* 802DE650 002DB5B0  7C 1F D8 00 */	cmpw r31, r27
/* 802DE654 002DB5B4  41 80 FF 4C */	blt lbl_802DE5A0
/* 802DE658 002DB5B8  7F A3 EB 78 */	mr r3, r29
/* 802DE65C 002DB5BC  BB 01 00 30 */	lmw r24, 0x30(r1)
/* 802DE660 002DB5C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802DE664 002DB5C4  7C 08 03 A6 */	mtlr r0
/* 802DE668 002DB5C8  38 21 00 50 */	addi r1, r1, 0x50
/* 802DE66C 002DB5CC  4E 80 00 20 */	blr

.global "Get<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__12CInputStreamFRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>"
"Get<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__12CInputStreamFRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>":
/* 802DE670 002DB5D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE674 002DB5D4  7C 08 02 A6 */	mflr r0
/* 802DE678 002DB5D8  7C 85 23 78 */	mr r5, r4
/* 802DE67C 002DB5DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE680 002DB5E0  38 81 00 08 */	addi r4, r1, 8
/* 802DE684 002DB5E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE688 002DB5E8  7C 7F 1B 78 */	mr r31, r3
/* 802DE68C 002DB5EC  88 0D A6 B4 */	lbz r0, lbl_805A9274@sda21(r13)
/* 802DE690 002DB5F0  98 01 00 08 */	stb r0, 8(r1)
/* 802DE694 002DB5F4  48 00 00 19 */	bl "cinput_stream_helper<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__FRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>R12CInputStream"
/* 802DE698 002DB5F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE69C 002DB5FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE6A0 002DB600  7C 08 03 A6 */	mtlr r0
/* 802DE6A4 002DB604  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE6A8 002DB608  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__FRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>R12CInputStream"
"cinput_stream_helper<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>__FRC192TType<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>>R12CInputStream":
/* 802DE6AC 002DB60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE6B0 002DB610  7C 08 02 A6 */	mflr r0
/* 802DE6B4 002DB614  7C A4 2B 78 */	mr r4, r5
/* 802DE6B8 002DB618  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE6BC 002DB61C  48 00 00 15 */	bl "__ct__Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>FR12CInputStream"
/* 802DE6C0 002DB620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE6C4 002DB624  7C 08 03 A6 */	mtlr r0
/* 802DE6C8 002DB628  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE6CC 002DB62C  4E 80 00 20 */	blr

.global "__ct__Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>FR12CInputStream"
"__ct__Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>FR12CInputStream":
/* 802DE6D0 002DB630  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DE6D4 002DB634  7C 08 02 A6 */	mflr r0
/* 802DE6D8 002DB638  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DE6DC 002DB63C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802DE6E0 002DB640  7C 9F 23 78 */	mr r31, r4
/* 802DE6E4 002DB644  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802DE6E8 002DB648  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802DE6EC 002DB64C  7C 7D 1B 78 */	mr r29, r3
/* 802DE6F0 002DB650  7F E3 FB 78 */	mr r3, r31
/* 802DE6F4 002DB654  48 06 05 91 */	bl ReadLong__12CInputStreamFv
/* 802DE6F8 002DB658  90 7D 00 00 */	stw r3, 0(r29)
/* 802DE6FC 002DB65C  7F E4 FB 78 */	mr r4, r31
/* 802DE700 002DB660  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE704 002DB664  38 A1 00 08 */	addi r5, r1, 8
/* 802DE708 002DB668  88 0D A6 B8 */	lbz r0, lbl_805A9278@sda21(r13)
/* 802DE70C 002DB66C  98 01 00 08 */	stb r0, 8(r1)
/* 802DE710 002DB670  48 00 00 5D */	bl "Get<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>"
/* 802DE714 002DB674  3B DD 00 04 */	addi r30, r29, 4
/* 802DE718 002DB678  38 81 00 0C */	addi r4, r1, 0xc
/* 802DE71C 002DB67C  7F C3 F3 78 */	mr r3, r30
/* 802DE720 002DB680  48 05 FA 41 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE724 002DB684  3B E1 00 1C */	addi r31, r1, 0x1c
/* 802DE728 002DB688  38 7E 00 10 */	addi r3, r30, 0x10
/* 802DE72C 002DB68C  7F E4 FB 78 */	mr r4, r31
/* 802DE730 002DB690  48 05 FA 31 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE734 002DB694  28 1F 00 00 */	cmplwi r31, 0
/* 802DE738 002DB698  41 82 00 0C */	beq lbl_802DE744
/* 802DE73C 002DB69C  7F E3 FB 78 */	mr r3, r31
/* 802DE740 002DB6A0  48 05 F3 A1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DE744:
/* 802DE744 002DB6A4  38 61 00 0C */	addi r3, r1, 0xc
/* 802DE748 002DB6A8  48 05 F3 99 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE74C 002DB6AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DE750 002DB6B0  7F A3 EB 78 */	mr r3, r29
/* 802DE754 002DB6B4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802DE758 002DB6B8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802DE75C 002DB6BC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802DE760 002DB6C0  7C 08 03 A6 */	mtlr r0
/* 802DE764 002DB6C4  38 21 00 40 */	addi r1, r1, 0x40
/* 802DE768 002DB6C8  4E 80 00 20 */	blr

.global "Get<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>"
"Get<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__12CInputStreamFRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>":
/* 802DE76C 002DB6CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE770 002DB6D0  7C 08 02 A6 */	mflr r0
/* 802DE774 002DB6D4  7C 85 23 78 */	mr r5, r4
/* 802DE778 002DB6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE77C 002DB6DC  38 81 00 08 */	addi r4, r1, 8
/* 802DE780 002DB6E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE784 002DB6E4  7C 7F 1B 78 */	mr r31, r3
/* 802DE788 002DB6E8  88 0D A6 BC */	lbz r0, lbl_805A927C@sda21(r13)
/* 802DE78C 002DB6EC  98 01 00 08 */	stb r0, 8(r1)
/* 802DE790 002DB6F0  48 00 00 19 */	bl "cinput_stream_helper<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__FRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>R12CInputStream"
/* 802DE794 002DB6F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE798 002DB6F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE79C 002DB6FC  7C 08 03 A6 */	mtlr r0
/* 802DE7A0 002DB700  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE7A4 002DB704  4E 80 00 20 */	blr

.global "cinput_stream_helper<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__FRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>R12CInputStream"
"cinput_stream_helper<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>__FRC174TType<Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>R12CInputStream":
/* 802DE7A8 002DB708  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DE7AC 002DB70C  7C 08 02 A6 */	mflr r0
/* 802DE7B0 002DB710  7C 64 1B 78 */	mr r4, r3
/* 802DE7B4 002DB714  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DE7B8 002DB718  38 61 00 10 */	addi r3, r1, 0x10
/* 802DE7BC 002DB71C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802DE7C0 002DB720  7C BF 2B 78 */	mr r31, r5
/* 802DE7C4 002DB724  38 A1 00 08 */	addi r5, r1, 8
/* 802DE7C8 002DB728  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802DE7CC 002DB72C  7C 9E 23 78 */	mr r30, r4
/* 802DE7D0 002DB730  7F E4 FB 78 */	mr r4, r31
/* 802DE7D4 002DB734  88 0D A6 C0 */	lbz r0, lbl_805A9280@sda21(r13)
/* 802DE7D8 002DB738  98 01 00 08 */	stb r0, 8(r1)
/* 802DE7DC 002DB73C  4B FF F9 B1 */	bl sub_802de18c
/* 802DE7E0 002DB740  7F C3 F3 78 */	mr r3, r30
/* 802DE7E4 002DB744  38 81 00 10 */	addi r4, r1, 0x10
/* 802DE7E8 002DB748  48 05 F9 79 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE7EC 002DB74C  38 61 00 10 */	addi r3, r1, 0x10
/* 802DE7F0 002DB750  48 05 F2 F1 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE7F4 002DB754  88 0D A6 C0 */	lbz r0, lbl_805A9280@sda21(r13)
/* 802DE7F8 002DB758  7F E4 FB 78 */	mr r4, r31
/* 802DE7FC 002DB75C  38 61 00 20 */	addi r3, r1, 0x20
/* 802DE800 002DB760  38 A1 00 0C */	addi r5, r1, 0xc
/* 802DE804 002DB764  98 01 00 0C */	stb r0, 0xc(r1)
/* 802DE808 002DB768  4B FF F9 85 */	bl sub_802de18c
/* 802DE80C 002DB76C  38 7E 00 10 */	addi r3, r30, 0x10
/* 802DE810 002DB770  38 81 00 20 */	addi r4, r1, 0x20
/* 802DE814 002DB774  48 05 F9 4D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DE818 002DB778  38 61 00 20 */	addi r3, r1, 0x20
/* 802DE81C 002DB77C  48 05 F2 C5 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
/* 802DE820 002DB780  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DE824 002DB784  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802DE828 002DB788  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802DE82C 002DB78C  7C 08 03 A6 */	mtlr r0
/* 802DE830 002DB790  38 21 00 40 */	addi r1, r1, 0x40
/* 802DE834 002DB794  4E 80 00 20 */	blr

.global sub_802de838
sub_802de838:
/* 802DE838 002DB798  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DE83C 002DB79C  7C 08 02 A6 */	mflr r0
/* 802DE840 002DB7A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DE844 002DB7A4  38 00 00 00 */	li r0, 0
/* 802DE848 002DB7A8  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 802DE84C 002DB7AC  7C 9B 23 78 */	mr r27, r4
/* 802DE850 002DB7B0  7C 7F 1B 78 */	mr r31, r3
/* 802DE854 002DB7B4  7C BC 2B 78 */	mr r28, r5
/* 802DE858 002DB7B8  38 81 00 18 */	addi r4, r1, 0x18
/* 802DE85C 002DB7BC  90 03 00 04 */	stw r0, 4(r3)
/* 802DE860 002DB7C0  38 61 00 20 */	addi r3, r1, 0x20
/* 802DE864 002DB7C4  90 1F 00 08 */	stw r0, 8(r31)
/* 802DE868 002DB7C8  80 E5 00 00 */	lwz r7, 0(r5)
/* 802DE86C 002DB7CC  80 C5 00 04 */	lwz r6, 4(r5)
/* 802DE870 002DB7D0  80 BB 00 00 */	lwz r5, 0(r27)
/* 802DE874 002DB7D4  80 1B 00 04 */	lwz r0, 4(r27)
/* 802DE878 002DB7D8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 802DE87C 002DB7DC  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 802DE880 002DB7E0  90 A1 00 20 */	stw r5, 0x20(r1)
/* 802DE884 002DB7E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE888 002DB7E8  48 00 03 DD */	bl "distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator"
/* 802DE88C 002DB7EC  90 7F 00 08 */	stw r3, 8(r31)
/* 802DE890 002DB7F0  90 7F 00 04 */	stw r3, 4(r31)
/* 802DE894 002DB7F4  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DE898 002DB7F8  54 03 10 3B */	rlwinm. r3, r0, 2, 0, 0x1d
/* 802DE89C 002DB7FC  40 82 00 10 */	bne lbl_802DE8AC
/* 802DE8A0 002DB800  38 00 00 00 */	li r0, 0
/* 802DE8A4 002DB804  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802DE8A8 002DB808  48 00 00 18 */	b lbl_802DE8C0
lbl_802DE8AC:
/* 802DE8AC 002DB80C  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DE8B0 002DB810  38 A0 00 00 */	li r5, 0
/* 802DE8B4 002DB814  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DE8B8 002DB818  48 03 6F 61 */	bl __nwa__FUlPCcPCc
/* 802DE8BC 002DB81C  90 7F 00 0C */	stw r3, 0xc(r31)
lbl_802DE8C0:
/* 802DE8C0 002DB820  80 9B 00 00 */	lwz r4, 0(r27)
/* 802DE8C4 002DB824  83 7B 00 04 */	lwz r27, 4(r27)
/* 802DE8C8 002DB828  83 BC 00 00 */	lwz r29, 0(r28)
/* 802DE8CC 002DB82C  83 DC 00 04 */	lwz r30, 4(r28)
/* 802DE8D0 002DB830  93 A1 00 08 */	stw r29, 8(r1)
/* 802DE8D4 002DB834  83 9F 00 0C */	lwz r28, 0xc(r31)
/* 802DE8D8 002DB838  93 C1 00 0C */	stw r30, 0xc(r1)
/* 802DE8DC 002DB83C  90 81 00 10 */	stw r4, 0x10(r1)
/* 802DE8E0 002DB840  93 61 00 14 */	stw r27, 0x14(r1)
/* 802DE8E4 002DB844  48 00 00 24 */	b lbl_802DE908
lbl_802DE8E8:
/* 802DE8E8 002DB848  28 1C 00 00 */	cmplwi r28, 0
/* 802DE8EC 002DB84C  41 82 00 0C */	beq lbl_802DE8F8
/* 802DE8F0 002DB850  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802DE8F4 002DB854  90 1C 00 00 */	stw r0, 0(r28)
lbl_802DE8F8:
/* 802DE8F8 002DB858  7F 63 DB 78 */	mr r3, r27
/* 802DE8FC 002DB85C  3B 9C 00 04 */	addi r28, r28, 4
/* 802DE900 002DB860  48 05 DC E1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 802DE904 002DB864  7C 64 1B 78 */	mr r4, r3
lbl_802DE908:
/* 802DE908 002DB868  7C 04 E8 40 */	cmplw r4, r29
/* 802DE90C 002DB86C  38 00 00 00 */	li r0, 0
/* 802DE910 002DB870  40 82 00 0C */	bne lbl_802DE91C
/* 802DE914 002DB874  7C 1B F0 40 */	cmplw r27, r30
/* 802DE918 002DB878  41 82 00 08 */	beq lbl_802DE920
lbl_802DE91C:
/* 802DE91C 002DB87C  38 00 00 01 */	li r0, 1
lbl_802DE920:
/* 802DE920 002DB880  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802DE924 002DB884  40 82 FF C4 */	bne lbl_802DE8E8
/* 802DE928 002DB888  7F E3 FB 78 */	mr r3, r31
/* 802DE92C 002DB88C  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 802DE930 002DB890  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DE934 002DB894  7C 08 03 A6 */	mtlr r0
/* 802DE938 002DB898  38 21 00 40 */	addi r1, r1, 0x40
/* 802DE93C 002DB89C  4E 80 00 20 */	blr

.global __ct__Q214CCharacterInfo16CParticleResDataFR12CInputStreamUs
__ct__Q214CCharacterInfo16CParticleResDataFR12CInputStreamUs:
/* 802DE940 002DB8A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802DE944 002DB8A4  7C 08 02 A6 */	mflr r0
/* 802DE948 002DB8A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 802DE94C 002DB8AC  38 00 00 00 */	li r0, 0
/* 802DE950 002DB8B0  BF 41 00 78 */	stmw r26, 0x78(r1)
/* 802DE954 002DB8B4  7C 7D 1B 78 */	mr r29, r3
/* 802DE958 002DB8B8  7C 9E 23 78 */	mr r30, r4
/* 802DE95C 002DB8BC  7C BF 2B 78 */	mr r31, r5
/* 802DE960 002DB8C0  90 03 00 04 */	stw r0, 4(r3)
/* 802DE964 002DB8C4  90 03 00 08 */	stw r0, 8(r3)
/* 802DE968 002DB8C8  7F C3 F3 78 */	mr r3, r30
/* 802DE96C 002DB8CC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 802DE970 002DB8D0  48 06 03 15 */	bl ReadLong__12CInputStreamFv
/* 802DE974 002DB8D4  7C 7A 1B 78 */	mr r26, r3
/* 802DE978 002DB8D8  7F A3 EB 78 */	mr r3, r29
/* 802DE97C 002DB8DC  7F 44 D3 78 */	mr r4, r26
/* 802DE980 002DB8E0  4B D8 51 A5 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 802DE984 002DB8E4  3B 60 00 00 */	li r27, 0
/* 802DE988 002DB8E8  48 00 00 60 */	b lbl_802DE9E8
lbl_802DE98C:
/* 802DE98C 002DB8EC  7F C3 F3 78 */	mr r3, r30
/* 802DE990 002DB8F0  48 06 02 F5 */	bl ReadLong__12CInputStreamFv
/* 802DE994 002DB8F4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DE998 002DB8F8  7C 7C 1B 78 */	mr r28, r3
/* 802DE99C 002DB8FC  80 BD 00 08 */	lwz r5, 8(r29)
/* 802DE9A0 002DB900  7C 00 28 00 */	cmpw r0, r5
/* 802DE9A4 002DB904  41 80 00 1C */	blt lbl_802DE9C0
/* 802DE9A8 002DB908  2C 05 00 00 */	cmpwi r5, 0
/* 802DE9AC 002DB90C  7F A3 EB 78 */	mr r3, r29
/* 802DE9B0 002DB910  38 80 00 04 */	li r4, 4
/* 802DE9B4 002DB914  41 82 00 08 */	beq lbl_802DE9BC
/* 802DE9B8 002DB918  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DE9BC:
/* 802DE9BC 002DB91C  4B D8 51 69 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_802DE9C0:
/* 802DE9C0 002DB920  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DE9C4 002DB924  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DE9C8 002DB928  54 00 10 3A */	slwi r0, r0, 2
/* 802DE9CC 002DB92C  7C 63 02 15 */	add. r3, r3, r0
/* 802DE9D0 002DB930  41 82 00 08 */	beq lbl_802DE9D8
/* 802DE9D4 002DB934  93 83 00 00 */	stw r28, 0(r3)
lbl_802DE9D8:
/* 802DE9D8 002DB938  80 7D 00 04 */	lwz r3, 4(r29)
/* 802DE9DC 002DB93C  3B 7B 00 01 */	addi r27, r27, 1
/* 802DE9E0 002DB940  38 03 00 01 */	addi r0, r3, 1
/* 802DE9E4 002DB944  90 1D 00 04 */	stw r0, 4(r29)
lbl_802DE9E8:
/* 802DE9E8 002DB948  7C 1B D0 00 */	cmpw r27, r26
/* 802DE9EC 002DB94C  41 80 FF A0 */	blt lbl_802DE98C
/* 802DE9F0 002DB950  38 00 00 00 */	li r0, 0
/* 802DE9F4 002DB954  7F C3 F3 78 */	mr r3, r30
/* 802DE9F8 002DB958  90 1D 00 14 */	stw r0, 0x14(r29)
/* 802DE9FC 002DB95C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 802DEA00 002DB960  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 802DEA04 002DB964  48 06 02 81 */	bl ReadLong__12CInputStreamFv
/* 802DEA08 002DB968  7C 7A 1B 78 */	mr r26, r3
/* 802DEA0C 002DB96C  38 7D 00 10 */	addi r3, r29, 0x10
/* 802DEA10 002DB970  7F 44 D3 78 */	mr r4, r26
/* 802DEA14 002DB974  4B D8 51 11 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 802DEA18 002DB978  3B 60 00 00 */	li r27, 0
/* 802DEA1C 002DB97C  48 00 00 60 */	b lbl_802DEA7C
lbl_802DEA20:
/* 802DEA20 002DB980  7F C3 F3 78 */	mr r3, r30
/* 802DEA24 002DB984  48 06 02 61 */	bl ReadLong__12CInputStreamFv
/* 802DEA28 002DB988  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 802DEA2C 002DB98C  7C 7C 1B 78 */	mr r28, r3
/* 802DEA30 002DB990  80 BD 00 18 */	lwz r5, 0x18(r29)
/* 802DEA34 002DB994  7C 00 28 00 */	cmpw r0, r5
/* 802DEA38 002DB998  41 80 00 1C */	blt lbl_802DEA54
/* 802DEA3C 002DB99C  2C 05 00 00 */	cmpwi r5, 0
/* 802DEA40 002DB9A0  38 7D 00 10 */	addi r3, r29, 0x10
/* 802DEA44 002DB9A4  38 80 00 04 */	li r4, 4
/* 802DEA48 002DB9A8  41 82 00 08 */	beq lbl_802DEA50
/* 802DEA4C 002DB9AC  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DEA50:
/* 802DEA50 002DB9B0  4B D8 50 D5 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_802DEA54:
/* 802DEA54 002DB9B4  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 802DEA58 002DB9B8  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 802DEA5C 002DB9BC  54 00 10 3A */	slwi r0, r0, 2
/* 802DEA60 002DB9C0  7C 63 02 15 */	add. r3, r3, r0
/* 802DEA64 002DB9C4  41 82 00 08 */	beq lbl_802DEA6C
/* 802DEA68 002DB9C8  93 83 00 00 */	stw r28, 0(r3)
lbl_802DEA6C:
/* 802DEA6C 002DB9CC  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 802DEA70 002DB9D0  3B 7B 00 01 */	addi r27, r27, 1
/* 802DEA74 002DB9D4  38 03 00 01 */	addi r0, r3, 1
/* 802DEA78 002DB9D8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_802DEA7C:
/* 802DEA7C 002DB9DC  7C 1B D0 00 */	cmpw r27, r26
/* 802DEA80 002DB9E0  41 80 FF A0 */	blt lbl_802DEA20
/* 802DEA84 002DB9E4  38 00 00 00 */	li r0, 0
/* 802DEA88 002DB9E8  7F C3 F3 78 */	mr r3, r30
/* 802DEA8C 002DB9EC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 802DEA90 002DB9F0  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802DEA94 002DB9F4  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802DEA98 002DB9F8  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802DEA9C 002DB9FC  90 1D 00 38 */	stw r0, 0x38(r29)
/* 802DEAA0 002DBA00  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 802DEAA4 002DBA04  48 06 01 E1 */	bl ReadLong__12CInputStreamFv
/* 802DEAA8 002DBA08  7C 7A 1B 78 */	mr r26, r3
/* 802DEAAC 002DBA0C  38 7D 00 30 */	addi r3, r29, 0x30
/* 802DEAB0 002DBA10  7F 44 D3 78 */	mr r4, r26
/* 802DEAB4 002DBA14  4B D8 50 71 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
/* 802DEAB8 002DBA18  3B 60 00 00 */	li r27, 0
/* 802DEABC 002DBA1C  48 00 00 60 */	b lbl_802DEB1C
lbl_802DEAC0:
/* 802DEAC0 002DBA20  7F C3 F3 78 */	mr r3, r30
/* 802DEAC4 002DBA24  48 06 01 C1 */	bl ReadLong__12CInputStreamFv
/* 802DEAC8 002DBA28  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802DEACC 002DBA2C  7C 7C 1B 78 */	mr r28, r3
/* 802DEAD0 002DBA30  80 BD 00 38 */	lwz r5, 0x38(r29)
/* 802DEAD4 002DBA34  7C 00 28 00 */	cmpw r0, r5
/* 802DEAD8 002DBA38  41 80 00 1C */	blt lbl_802DEAF4
/* 802DEADC 002DBA3C  2C 05 00 00 */	cmpwi r5, 0
/* 802DEAE0 002DBA40  38 7D 00 30 */	addi r3, r29, 0x30
/* 802DEAE4 002DBA44  38 80 00 04 */	li r4, 4
/* 802DEAE8 002DBA48  41 82 00 08 */	beq lbl_802DEAF0
/* 802DEAEC 002DBA4C  54 A4 08 3C */	slwi r4, r5, 1
lbl_802DEAF0:
/* 802DEAF0 002DBA50  4B D8 50 35 */	bl "reserve__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fi"
lbl_802DEAF4:
/* 802DEAF4 002DBA54  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 802DEAF8 002DBA58  80 7D 00 3C */	lwz r3, 0x3c(r29)
/* 802DEAFC 002DBA5C  54 00 10 3A */	slwi r0, r0, 2
/* 802DEB00 002DBA60  7C 63 02 15 */	add. r3, r3, r0
/* 802DEB04 002DBA64  41 82 00 08 */	beq lbl_802DEB0C
/* 802DEB08 002DBA68  93 83 00 00 */	stw r28, 0(r3)
lbl_802DEB0C:
/* 802DEB0C 002DBA6C  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 802DEB10 002DBA70  3B 7B 00 01 */	addi r27, r27, 1
/* 802DEB14 002DBA74  38 03 00 01 */	addi r0, r3, 1
/* 802DEB18 002DBA78  90 1D 00 34 */	stw r0, 0x34(r29)
lbl_802DEB1C:
/* 802DEB1C 002DBA7C  7C 1B D0 00 */	cmpw r27, r26
/* 802DEB20 002DBA80  41 80 FF A0 */	blt lbl_802DEAC0
/* 802DEB24 002DBA84  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 802DEB28 002DBA88  28 00 00 05 */	cmplwi r0, 5
/* 802DEB2C 002DBA8C  40 81 01 20 */	ble lbl_802DEC4C
/* 802DEB30 002DBA90  88 A1 00 08 */	lbz r5, 8(r1)
/* 802DEB34 002DBA94  38 00 00 00 */	li r0, 0
/* 802DEB38 002DBA98  88 81 00 10 */	lbz r4, 0x10(r1)
/* 802DEB3C 002DBA9C  7F C3 F3 78 */	mr r3, r30
/* 802DEB40 002DBAA0  98 A1 00 64 */	stb r5, 0x64(r1)
/* 802DEB44 002DBAA4  3B 61 00 64 */	addi r27, r1, 0x64
/* 802DEB48 002DBAA8  3B 41 00 6C */	addi r26, r1, 0x6c
/* 802DEB4C 002DBAAC  98 81 00 65 */	stb r4, 0x65(r1)
/* 802DEB50 002DBAB0  90 01 00 68 */	stw r0, 0x68(r1)
/* 802DEB54 002DBAB4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802DEB58 002DBAB8  90 01 00 70 */	stw r0, 0x70(r1)
/* 802DEB5C 002DBABC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802DEB60 002DBAC0  48 06 01 25 */	bl ReadLong__12CInputStreamFv
/* 802DEB64 002DBAC4  7C 7F 1B 78 */	mr r31, r3
/* 802DEB68 002DBAC8  3B 80 00 00 */	li r28, 0
/* 802DEB6C 002DBACC  48 00 00 28 */	b lbl_802DEB94
lbl_802DEB70:
/* 802DEB70 002DBAD0  7F C3 F3 78 */	mr r3, r30
/* 802DEB74 002DBAD4  48 06 01 11 */	bl ReadLong__12CInputStreamFv
/* 802DEB78 002DBAD8  90 61 00 14 */	stw r3, 0x14(r1)
/* 802DEB7C 002DBADC  7F 64 DB 78 */	mr r4, r27
/* 802DEB80 002DBAE0  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 802DEB84 002DBAE4  38 61 00 48 */	addi r3, r1, 0x48
/* 802DEB88 002DBAE8  38 C1 00 14 */	addi r6, r1, 0x14
/* 802DEB8C 002DBAEC  48 00 07 2D */	bl "insert_into__Q24rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>FPQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>4nodeRCUi"
/* 802DEB90 002DBAF0  3B 9C 00 01 */	addi r28, r28, 1
lbl_802DEB94:
/* 802DEB94 002DBAF4  7C 1C F8 00 */	cmpw r28, r31
/* 802DEB98 002DBAF8  41 80 FF D8 */	blt lbl_802DEB70
/* 802DEB9C 002DBAFC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 802DEBA0 002DBB00  38 E0 00 00 */	li r7, 0
/* 802DEBA4 002DBB04  90 E1 00 28 */	stw r7, 0x28(r1)
/* 802DEBA8 002DBB08  38 61 00 54 */	addi r3, r1, 0x54
/* 802DEBAC 002DBB0C  38 81 00 40 */	addi r4, r1, 0x40
/* 802DEBB0 002DBB10  38 A1 00 30 */	addi r5, r1, 0x30
/* 802DEBB4 002DBB14  93 41 00 2C */	stw r26, 0x2c(r1)
/* 802DEBB8 002DBB18  38 C1 00 0C */	addi r6, r1, 0xc
/* 802DEBBC 002DBB1C  90 E1 00 30 */	stw r7, 0x30(r1)
/* 802DEBC0 002DBB20  93 41 00 34 */	stw r26, 0x34(r1)
/* 802DEBC4 002DBB24  90 01 00 38 */	stw r0, 0x38(r1)
/* 802DEBC8 002DBB28  93 41 00 3C */	stw r26, 0x3c(r1)
/* 802DEBCC 002DBB2C  90 01 00 40 */	stw r0, 0x40(r1)
/* 802DEBD0 002DBB30  93 41 00 44 */	stw r26, 0x44(r1)
/* 802DEBD4 002DBB34  4B FF FC 65 */	bl sub_802de838
/* 802DEBD8 002DBB38  38 7D 00 20 */	addi r3, r29, 0x20
/* 802DEBDC 002DBB3C  38 81 00 54 */	addi r4, r1, 0x54
/* 802DEBE0 002DBB40  4B D8 4B 1D */	bl "clear__Q24rstl37vector<Ui,Q24rstl17rmemory_allocator>Fv"
/* 802DEBE4 002DBB44  80 01 00 58 */	lwz r0, 0x58(r1)
/* 802DEBE8 002DBB48  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802DEBEC 002DBB4C  54 00 10 3A */	slwi r0, r0, 2
/* 802DEBF0 002DBB50  7C 03 02 14 */	add r0, r3, r0
/* 802DEBF4 002DBB54  90 61 00 1C */	stw r3, 0x1c(r1)
/* 802DEBF8 002DBB58  7C 64 1B 78 */	mr r4, r3
/* 802DEBFC 002DBB5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEC00 002DBB60  90 01 00 20 */	stw r0, 0x20(r1)
/* 802DEC04 002DBB64  90 61 00 18 */	stw r3, 0x18(r1)
/* 802DEC08 002DBB68  48 00 00 08 */	b lbl_802DEC10
lbl_802DEC0C:
/* 802DEC0C 002DBB6C  38 84 00 04 */	addi r4, r4, 4
lbl_802DEC10:
/* 802DEC10 002DBB70  7C 04 00 40 */	cmplw r4, r0
/* 802DEC14 002DBB74  40 82 FF F8 */	bne lbl_802DEC0C
/* 802DEC18 002DBB78  28 03 00 00 */	cmplwi r3, 0
/* 802DEC1C 002DBB7C  41 82 00 08 */	beq lbl_802DEC24
/* 802DEC20 002DBB80  48 03 6D 11 */	bl Free__7CMemoryFPCv
lbl_802DEC24:
/* 802DEC24 002DBB84  80 81 00 74 */	lwz r4, 0x74(r1)
/* 802DEC28 002DBB88  28 04 00 00 */	cmplwi r4, 0
/* 802DEC2C 002DBB8C  41 82 00 0C */	beq lbl_802DEC38
/* 802DEC30 002DBB90  38 61 00 64 */	addi r3, r1, 0x64
/* 802DEC34 002DBB94  48 00 06 1D */	bl sub_802df250
lbl_802DEC38:
/* 802DEC38 002DBB98  38 00 00 00 */	li r0, 0
/* 802DEC3C 002DBB9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 802DEC40 002DBBA0  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802DEC44 002DBBA4  90 01 00 70 */	stw r0, 0x70(r1)
/* 802DEC48 002DBBA8  90 01 00 68 */	stw r0, 0x68(r1)
lbl_802DEC4C:
/* 802DEC4C 002DBBAC  7F A3 EB 78 */	mr r3, r29
/* 802DEC50 002DBBB0  BB 41 00 78 */	lmw r26, 0x78(r1)
/* 802DEC54 002DBBB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802DEC58 002DBBB8  7C 08 03 A6 */	mtlr r0
/* 802DEC5C 002DBBBC  38 21 00 90 */	addi r1, r1, 0x90
/* 802DEC60 002DBBC0  4E 80 00 20 */	blr

.global "distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator"
"distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator":
/* 802DEC64 002DBBC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEC68 002DBBC8  7C 08 02 A6 */	mflr r0
/* 802DEC6C 002DBBCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEC70 002DBBD0  38 A1 00 0C */	addi r5, r1, 0xc
/* 802DEC74 002DBBD4  89 21 00 08 */	lbz r9, 8(r1)
/* 802DEC78 002DBBD8  81 04 00 00 */	lwz r8, 0(r4)
/* 802DEC7C 002DBBDC  80 E4 00 04 */	lwz r7, 4(r4)
/* 802DEC80 002DBBE0  38 81 00 10 */	addi r4, r1, 0x10
/* 802DEC84 002DBBE4  80 C3 00 00 */	lwz r6, 0(r3)
/* 802DEC88 002DBBE8  80 03 00 04 */	lwz r0, 4(r3)
/* 802DEC8C 002DBBEC  38 61 00 18 */	addi r3, r1, 0x18
/* 802DEC90 002DBBF0  99 21 00 0C */	stb r9, 0xc(r1)
/* 802DEC94 002DBBF4  91 01 00 10 */	stw r8, 0x10(r1)
/* 802DEC98 002DBBF8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 802DEC9C 002DBBFC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802DECA0 002DBC00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802DECA4 002DBC04  48 00 00 15 */	bl "__distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ24rstl20forward_iterator_tag"
/* 802DECA8 002DBC08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DECAC 002DBC0C  7C 08 03 A6 */	mtlr r0
/* 802DECB0 002DBC10  38 21 00 20 */	addi r1, r1, 0x20
/* 802DECB4 002DBC14  4E 80 00 20 */	blr

.global "__distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ24rstl20forward_iterator_tag"
"__distance<Q34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iterator>__4rstlFQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>14const_iteratorQ24rstl20forward_iterator_tag":
/* 802DECB8 002DBC18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DECBC 002DBC1C  7C 08 02 A6 */	mflr r0
/* 802DECC0 002DBC20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DECC4 002DBC24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DECC8 002DBC28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DECCC 002DBC2C  3B C0 00 00 */	li r30, 0
/* 802DECD0 002DBC30  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DECD4 002DBC34  7C 9D 23 78 */	mr r29, r4
/* 802DECD8 002DBC38  80 A3 00 00 */	lwz r5, 0(r3)
/* 802DECDC 002DBC3C  83 E3 00 04 */	lwz r31, 4(r3)
/* 802DECE0 002DBC40  48 00 00 18 */	b lbl_802DECF8
lbl_802DECE4:
/* 802DECE4 002DBC44  7F E3 FB 78 */	mr r3, r31
/* 802DECE8 002DBC48  7C A4 2B 78 */	mr r4, r5
/* 802DECEC 002DBC4C  3B DE 00 01 */	addi r30, r30, 1
/* 802DECF0 002DBC50  48 05 D8 F1 */	bl rbtree_traverse_forward__4rstlFPCvPv
/* 802DECF4 002DBC54  7C 65 1B 78 */	mr r5, r3
lbl_802DECF8:
/* 802DECF8 002DBC58  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DECFC 002DBC5C  38 60 00 00 */	li r3, 0
/* 802DED00 002DBC60  7C 05 00 40 */	cmplw r5, r0
/* 802DED04 002DBC64  40 82 00 10 */	bne lbl_802DED14
/* 802DED08 002DBC68  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DED0C 002DBC6C  7C 1F 00 40 */	cmplw r31, r0
/* 802DED10 002DBC70  41 82 00 08 */	beq lbl_802DED18
lbl_802DED14:
/* 802DED14 002DBC74  38 60 00 01 */	li r3, 1
lbl_802DED18:
/* 802DED18 002DBC78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DED1C 002DBC7C  40 82 FF C8 */	bne lbl_802DECE4
/* 802DED20 002DBC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DED24 002DBC84  7F C3 F3 78 */	mr r3, r30
/* 802DED28 002DBC88  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DED2C 002DBC8C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DED30 002DBC90  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DED34 002DBC94  7C 08 03 A6 */	mtlr r0
/* 802DED38 002DBC98  38 21 00 20 */	addi r1, r1, 0x20
/* 802DED3C 002DBC9C  4E 80 00 20 */	blr

.global "reserve__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>Fi":
/* 802DED40 002DBCA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DED44 002DBCA4  7C 08 02 A6 */	mflr r0
/* 802DED48 002DBCA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DED4C 002DBCAC  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802DED50 002DBCB0  7C 9F 23 78 */	mr r31, r4
/* 802DED54 002DBCB4  7C 7E 1B 78 */	mr r30, r3
/* 802DED58 002DBCB8  80 03 00 08 */	lwz r0, 8(r3)
/* 802DED5C 002DBCBC  7C 1F 00 00 */	cmpw r31, r0
/* 802DED60 002DBCC0  40 81 01 0C */	ble lbl_802DEE6C
/* 802DED64 002DBCC4  1C 7F 00 34 */	mulli r3, r31, 0x34
/* 802DED68 002DBCC8  2C 03 00 00 */	cmpwi r3, 0
/* 802DED6C 002DBCCC  40 82 00 0C */	bne lbl_802DED78
/* 802DED70 002DBCD0  3B 80 00 00 */	li r28, 0
/* 802DED74 002DBCD4  48 00 00 18 */	b lbl_802DED8C
lbl_802DED78:
/* 802DED78 002DBCD8  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DED7C 002DBCDC  38 A0 00 00 */	li r5, 0
/* 802DED80 002DBCE0  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DED84 002DBCE4  48 03 6A 95 */	bl __nwa__FUlPCcPCc
/* 802DED88 002DBCE8  7C 7C 1B 78 */	mr r28, r3
lbl_802DED8C:
/* 802DED8C 002DBCEC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DED90 002DBCF0  7F 9B E3 78 */	mr r27, r28
/* 802DED94 002DBCF4  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DED98 002DBCF8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802DED9C 002DBCFC  93 41 00 10 */	stw r26, 0x10(r1)
/* 802DEDA0 002DBD00  7F BA 02 14 */	add r29, r26, r0
/* 802DEDA4 002DBD04  93 41 00 14 */	stw r26, 0x14(r1)
/* 802DEDA8 002DBD08  93 A1 00 08 */	stw r29, 8(r1)
/* 802DEDAC 002DBD0C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802DEDB0 002DBD10  48 00 00 54 */	b lbl_802DEE04
lbl_802DEDB4:
/* 802DEDB4 002DBD14  28 1B 00 00 */	cmplwi r27, 0
/* 802DEDB8 002DBD18  41 82 00 44 */	beq lbl_802DEDFC
/* 802DEDBC 002DBD1C  7F 63 DB 78 */	mr r3, r27
/* 802DEDC0 002DBD20  7F 44 D3 78 */	mr r4, r26
/* 802DEDC4 002DBD24  48 05 F3 9D */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DEDC8 002DBD28  80 1A 00 10 */	lwz r0, 0x10(r26)
/* 802DEDCC 002DBD2C  38 7B 00 18 */	addi r3, r27, 0x18
/* 802DEDD0 002DBD30  38 9A 00 18 */	addi r4, r26, 0x18
/* 802DEDD4 002DBD34  90 1B 00 10 */	stw r0, 0x10(r27)
/* 802DEDD8 002DBD38  80 1A 00 14 */	lwz r0, 0x14(r26)
/* 802DEDDC 002DBD3C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 802DEDE0 002DBD40  48 05 F3 81 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DEDE4 002DBD44  C0 1A 00 28 */	lfs f0, 0x28(r26)
/* 802DEDE8 002DBD48  D0 1B 00 28 */	stfs f0, 0x28(r27)
/* 802DEDEC 002DBD4C  80 1A 00 2C */	lwz r0, 0x2c(r26)
/* 802DEDF0 002DBD50  90 1B 00 2C */	stw r0, 0x2c(r27)
/* 802DEDF4 002DBD54  80 1A 00 30 */	lwz r0, 0x30(r26)
/* 802DEDF8 002DBD58  90 1B 00 30 */	stw r0, 0x30(r27)
lbl_802DEDFC:
/* 802DEDFC 002DBD5C  3B 7B 00 34 */	addi r27, r27, 0x34
/* 802DEE00 002DBD60  3B 5A 00 34 */	addi r26, r26, 0x34
lbl_802DEE04:
/* 802DEE04 002DBD64  7C 1A E8 40 */	cmplw r26, r29
/* 802DEE08 002DBD68  40 82 FF AC */	bne lbl_802DEDB4
/* 802DEE0C 002DBD6C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DEE10 002DBD70  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DEE14 002DBD74  1C 00 00 34 */	mulli r0, r0, 0x34
/* 802DEE18 002DBD78  7F 7A 02 14 */	add r27, r26, r0
/* 802DEE1C 002DBD7C  48 00 00 30 */	b lbl_802DEE4C
lbl_802DEE20:
/* 802DEE20 002DBD80  28 1A 00 00 */	cmplwi r26, 0
/* 802DEE24 002DBD84  41 82 00 24 */	beq lbl_802DEE48
/* 802DEE28 002DBD88  34 1A 00 18 */	addic. r0, r26, 0x18
/* 802DEE2C 002DBD8C  41 82 00 0C */	beq lbl_802DEE38
/* 802DEE30 002DBD90  38 7A 00 18 */	addi r3, r26, 0x18
/* 802DEE34 002DBD94  48 05 EC AD */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DEE38:
/* 802DEE38 002DBD98  28 1A 00 00 */	cmplwi r26, 0
/* 802DEE3C 002DBD9C  41 82 00 0C */	beq lbl_802DEE48
/* 802DEE40 002DBDA0  7F 43 D3 78 */	mr r3, r26
/* 802DEE44 002DBDA4  48 05 EC 9D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DEE48:
/* 802DEE48 002DBDA8  3B 5A 00 34 */	addi r26, r26, 0x34
lbl_802DEE4C:
/* 802DEE4C 002DBDAC  7C 1A D8 40 */	cmplw r26, r27
/* 802DEE50 002DBDB0  40 82 FF D0 */	bne lbl_802DEE20
/* 802DEE54 002DBDB4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DEE58 002DBDB8  28 03 00 00 */	cmplwi r3, 0
/* 802DEE5C 002DBDBC  41 82 00 08 */	beq lbl_802DEE64
/* 802DEE60 002DBDC0  48 03 6A D1 */	bl Free__7CMemoryFPCv
lbl_802DEE64:
/* 802DEE64 002DBDC4  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802DEE68 002DBDC8  93 FE 00 08 */	stw r31, 8(r30)
lbl_802DEE6C:
/* 802DEE6C 002DBDCC  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802DEE70 002DBDD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DEE74 002DBDD4  7C 08 03 A6 */	mtlr r0
/* 802DEE78 002DBDD8  38 21 00 30 */	addi r1, r1, 0x30
/* 802DEE7C 002DBDDC  4E 80 00 20 */	blr

.global "reserve__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl220vector<Q24rstl175pair<i,Q24rstl157pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>>>,Q24rstl17rmemory_allocator>Fi":
/* 802DEE80 002DBDE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802DEE84 002DBDE4  7C 08 02 A6 */	mflr r0
/* 802DEE88 002DBDE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802DEE8C 002DBDEC  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 802DEE90 002DBDF0  7C 9F 23 78 */	mr r31, r4
/* 802DEE94 002DBDF4  7C 7E 1B 78 */	mr r30, r3
/* 802DEE98 002DBDF8  80 03 00 08 */	lwz r0, 8(r3)
/* 802DEE9C 002DBDFC  7C 1F 00 00 */	cmpw r31, r0
/* 802DEEA0 002DBE00  40 81 00 F4 */	ble lbl_802DEF94
/* 802DEEA4 002DBE04  1C 7F 00 24 */	mulli r3, r31, 0x24
/* 802DEEA8 002DBE08  2C 03 00 00 */	cmpwi r3, 0
/* 802DEEAC 002DBE0C  40 82 00 0C */	bne lbl_802DEEB8
/* 802DEEB0 002DBE10  3B 80 00 00 */	li r28, 0
/* 802DEEB4 002DBE14  48 00 00 18 */	b lbl_802DEECC
lbl_802DEEB8:
/* 802DEEB8 002DBE18  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DEEBC 002DBE1C  38 A0 00 00 */	li r5, 0
/* 802DEEC0 002DBE20  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DEEC4 002DBE24  48 03 69 55 */	bl __nwa__FUlPCcPCc
/* 802DEEC8 002DBE28  7C 7C 1B 78 */	mr r28, r3
lbl_802DEECC:
/* 802DEECC 002DBE2C  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DEED0 002DBE30  7F 9B E3 78 */	mr r27, r28
/* 802DEED4 002DBE34  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DEED8 002DBE38  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802DEEDC 002DBE3C  93 41 00 10 */	stw r26, 0x10(r1)
/* 802DEEE0 002DBE40  7F BA 02 14 */	add r29, r26, r0
/* 802DEEE4 002DBE44  93 41 00 14 */	stw r26, 0x14(r1)
/* 802DEEE8 002DBE48  93 A1 00 08 */	stw r29, 8(r1)
/* 802DEEEC 002DBE4C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802DEEF0 002DBE50  48 00 00 38 */	b lbl_802DEF28
lbl_802DEEF4:
/* 802DEEF4 002DBE54  28 1B 00 00 */	cmplwi r27, 0
/* 802DEEF8 002DBE58  41 82 00 28 */	beq lbl_802DEF20
/* 802DEEFC 002DBE5C  80 1A 00 00 */	lwz r0, 0(r26)
/* 802DEF00 002DBE60  3B 3B 00 04 */	addi r25, r27, 4
/* 802DEF04 002DBE64  7F 23 CB 78 */	mr r3, r25
/* 802DEF08 002DBE68  38 9A 00 04 */	addi r4, r26, 4
/* 802DEF0C 002DBE6C  90 1B 00 00 */	stw r0, 0(r27)
/* 802DEF10 002DBE70  48 05 F2 51 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DEF14 002DBE74  38 79 00 10 */	addi r3, r25, 0x10
/* 802DEF18 002DBE78  38 9A 00 14 */	addi r4, r26, 0x14
/* 802DEF1C 002DBE7C  48 05 F2 45 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
lbl_802DEF20:
/* 802DEF20 002DBE80  3B 7B 00 24 */	addi r27, r27, 0x24
/* 802DEF24 002DBE84  3B 5A 00 24 */	addi r26, r26, 0x24
lbl_802DEF28:
/* 802DEF28 002DBE88  7C 1A E8 40 */	cmplw r26, r29
/* 802DEF2C 002DBE8C  40 82 FF C8 */	bne lbl_802DEEF4
/* 802DEF30 002DBE90  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DEF34 002DBE94  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DEF38 002DBE98  1C 00 00 24 */	mulli r0, r0, 0x24
/* 802DEF3C 002DBE9C  7F 7A 02 14 */	add r27, r26, r0
/* 802DEF40 002DBEA0  48 00 00 34 */	b lbl_802DEF74
lbl_802DEF44:
/* 802DEF44 002DBEA4  28 1A 00 00 */	cmplwi r26, 0
/* 802DEF48 002DBEA8  41 82 00 28 */	beq lbl_802DEF70
/* 802DEF4C 002DBEAC  34 1A 00 04 */	addic. r0, r26, 4
/* 802DEF50 002DBEB0  41 82 00 20 */	beq lbl_802DEF70
/* 802DEF54 002DBEB4  34 7A 00 14 */	addic. r3, r26, 0x14
/* 802DEF58 002DBEB8  41 82 00 08 */	beq lbl_802DEF60
/* 802DEF5C 002DBEBC  48 05 EB 85 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DEF60:
/* 802DEF60 002DBEC0  34 1A 00 04 */	addic. r0, r26, 4
/* 802DEF64 002DBEC4  41 82 00 0C */	beq lbl_802DEF70
/* 802DEF68 002DBEC8  38 7A 00 04 */	addi r3, r26, 4
/* 802DEF6C 002DBECC  48 05 EB 75 */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DEF70:
/* 802DEF70 002DBED0  3B 5A 00 24 */	addi r26, r26, 0x24
lbl_802DEF74:
/* 802DEF74 002DBED4  7C 1A D8 40 */	cmplw r26, r27
/* 802DEF78 002DBED8  40 82 FF CC */	bne lbl_802DEF44
/* 802DEF7C 002DBEDC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DEF80 002DBEE0  28 03 00 00 */	cmplwi r3, 0
/* 802DEF84 002DBEE4  41 82 00 08 */	beq lbl_802DEF8C
/* 802DEF88 002DBEE8  48 03 69 A9 */	bl Free__7CMemoryFPCv
lbl_802DEF8C:
/* 802DEF8C 002DBEEC  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802DEF90 002DBEF0  93 FE 00 08 */	stw r31, 8(r30)
lbl_802DEF94:
/* 802DEF94 002DBEF4  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 802DEF98 002DBEF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802DEF9C 002DBEFC  7C 08 03 A6 */	mtlr r0
/* 802DEFA0 002DBF00  38 21 00 40 */	addi r1, r1, 0x40
/* 802DEFA4 002DBF04  4E 80 00 20 */	blr

.global "reserve__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl133vector<Q24rstl89pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,6CAABox>,Q24rstl17rmemory_allocator>Fi":
/* 802DEFA8 002DBF08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DEFAC 002DBF0C  7C 08 02 A6 */	mflr r0
/* 802DEFB0 002DBF10  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DEFB4 002DBF14  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802DEFB8 002DBF18  7C 9F 23 78 */	mr r31, r4
/* 802DEFBC 002DBF1C  7C 7E 1B 78 */	mr r30, r3
/* 802DEFC0 002DBF20  80 03 00 08 */	lwz r0, 8(r3)
/* 802DEFC4 002DBF24  7C 1F 00 00 */	cmpw r31, r0
/* 802DEFC8 002DBF28  40 81 00 F4 */	ble lbl_802DF0BC
/* 802DEFCC 002DBF2C  1C 7F 00 28 */	mulli r3, r31, 0x28
/* 802DEFD0 002DBF30  2C 03 00 00 */	cmpwi r3, 0
/* 802DEFD4 002DBF34  40 82 00 0C */	bne lbl_802DEFE0
/* 802DEFD8 002DBF38  3B 80 00 00 */	li r28, 0
/* 802DEFDC 002DBF3C  48 00 00 18 */	b lbl_802DEFF4
lbl_802DEFE0:
/* 802DEFE0 002DBF40  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DEFE4 002DBF44  38 A0 00 00 */	li r5, 0
/* 802DEFE8 002DBF48  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DEFEC 002DBF4C  48 03 68 2D */	bl __nwa__FUlPCcPCc
/* 802DEFF0 002DBF50  7C 7C 1B 78 */	mr r28, r3
lbl_802DEFF4:
/* 802DEFF4 002DBF54  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DEFF8 002DBF58  7F 9B E3 78 */	mr r27, r28
/* 802DEFFC 002DBF5C  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DF000 002DBF60  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802DF004 002DBF64  93 41 00 10 */	stw r26, 0x10(r1)
/* 802DF008 002DBF68  7F BA 02 14 */	add r29, r26, r0
/* 802DF00C 002DBF6C  93 41 00 14 */	stw r26, 0x14(r1)
/* 802DF010 002DBF70  93 A1 00 08 */	stw r29, 8(r1)
/* 802DF014 002DBF74  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802DF018 002DBF78  48 00 00 50 */	b lbl_802DF068
lbl_802DF01C:
/* 802DF01C 002DBF7C  28 1B 00 00 */	cmplwi r27, 0
/* 802DF020 002DBF80  41 82 00 40 */	beq lbl_802DF060
/* 802DF024 002DBF84  7F 63 DB 78 */	mr r3, r27
/* 802DF028 002DBF88  7F 44 D3 78 */	mr r4, r26
/* 802DF02C 002DBF8C  48 05 F1 35 */	bl "__ct__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>FRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>"
/* 802DF030 002DBF90  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 802DF034 002DBF94  D0 1B 00 10 */	stfs f0, 0x10(r27)
/* 802DF038 002DBF98  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 802DF03C 002DBF9C  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 802DF040 002DBFA0  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 802DF044 002DBFA4  D0 1B 00 18 */	stfs f0, 0x18(r27)
/* 802DF048 002DBFA8  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 802DF04C 002DBFAC  D0 1B 00 1C */	stfs f0, 0x1c(r27)
/* 802DF050 002DBFB0  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 802DF054 002DBFB4  D0 1B 00 20 */	stfs f0, 0x20(r27)
/* 802DF058 002DBFB8  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 802DF05C 002DBFBC  D0 1B 00 24 */	stfs f0, 0x24(r27)
lbl_802DF060:
/* 802DF060 002DBFC0  3B 7B 00 28 */	addi r27, r27, 0x28
/* 802DF064 002DBFC4  3B 5A 00 28 */	addi r26, r26, 0x28
lbl_802DF068:
/* 802DF068 002DBFC8  7C 1A E8 40 */	cmplw r26, r29
/* 802DF06C 002DBFCC  40 82 FF B0 */	bne lbl_802DF01C
/* 802DF070 002DBFD0  80 1E 00 04 */	lwz r0, 4(r30)
/* 802DF074 002DBFD4  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 802DF078 002DBFD8  1C 00 00 28 */	mulli r0, r0, 0x28
/* 802DF07C 002DBFDC  7F 7A 02 14 */	add r27, r26, r0
/* 802DF080 002DBFE0  48 00 00 1C */	b lbl_802DF09C
lbl_802DF084:
/* 802DF084 002DBFE4  28 1A 00 00 */	cmplwi r26, 0
/* 802DF088 002DBFE8  41 82 00 10 */	beq lbl_802DF098
/* 802DF08C 002DBFEC  41 82 00 0C */	beq lbl_802DF098
/* 802DF090 002DBFF0  7F 43 D3 78 */	mr r3, r26
/* 802DF094 002DBFF4  48 05 EA 4D */	bl "internal_dereference__Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>Fv"
lbl_802DF098:
/* 802DF098 002DBFF8  3B 5A 00 28 */	addi r26, r26, 0x28
lbl_802DF09C:
/* 802DF09C 002DBFFC  7C 1A D8 40 */	cmplw r26, r27
/* 802DF0A0 002DC000  40 82 FF E4 */	bne lbl_802DF084
/* 802DF0A4 002DC004  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802DF0A8 002DC008  28 03 00 00 */	cmplwi r3, 0
/* 802DF0AC 002DC00C  41 82 00 08 */	beq lbl_802DF0B4
/* 802DF0B0 002DC010  48 03 68 81 */	bl Free__7CMemoryFPCv
lbl_802DF0B4:
/* 802DF0B4 002DC014  93 9E 00 0C */	stw r28, 0xc(r30)
/* 802DF0B8 002DC018  93 FE 00 08 */	stw r31, 8(r30)
lbl_802DF0BC:
/* 802DF0BC 002DC01C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802DF0C0 002DC020  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DF0C4 002DC024  7C 08 03 A6 */	mtlr r0
/* 802DF0C8 002DC028  38 21 00 30 */	addi r1, r1, 0x30
/* 802DF0CC 002DC02C  4E 80 00 20 */	blr

.global "reserve__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi"
"reserve__Q24rstl189vector<Q24rstl144pair<Q24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>,Q24rstl53vector<16CEffectComponent,Q24rstl17rmemory_allocator>>,Q24rstl17rmemory_allocator>Fi":
/* 802DF0D0 002DC030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802DF0D4 002DC034  7C 08 02 A6 */	mflr r0
/* 802DF0D8 002DC038  90 01 00 34 */	stw r0, 0x34(r1)
/* 802DF0DC 002DC03C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802DF0E0 002DC040  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802DF0E4 002DC044  7C 9E 23 78 */	mr r30, r4
/* 802DF0E8 002DC048  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802DF0EC 002DC04C  7C 7D 1B 78 */	mr r29, r3
/* 802DF0F0 002DC050  80 03 00 08 */	lwz r0, 8(r3)
/* 802DF0F4 002DC054  7C 1E 00 00 */	cmpw r30, r0
/* 802DF0F8 002DC058  40 81 00 88 */	ble lbl_802DF180
/* 802DF0FC 002DC05C  57 C3 28 35 */	rlwinm. r3, r30, 5, 0, 0x1a
/* 802DF100 002DC060  40 82 00 0C */	bne lbl_802DF10C
/* 802DF104 002DC064  3B E0 00 00 */	li r31, 0
/* 802DF108 002DC068  48 00 00 18 */	b lbl_802DF120
lbl_802DF10C:
/* 802DF10C 002DC06C  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DF110 002DC070  38 A0 00 00 */	li r5, 0
/* 802DF114 002DC074  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DF118 002DC078  48 03 67 01 */	bl __nwa__FUlPCcPCc
/* 802DF11C 002DC07C  7C 7F 1B 78 */	mr r31, r3
lbl_802DF120:
/* 802DF120 002DC080  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DF124 002DC084  7F E5 FB 78 */	mr r5, r31
/* 802DF128 002DC088  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 802DF12C 002DC08C  38 61 00 14 */	addi r3, r1, 0x14
/* 802DF130 002DC090  54 00 28 34 */	slwi r0, r0, 5
/* 802DF134 002DC094  38 81 00 0C */	addi r4, r1, 0xc
/* 802DF138 002DC098  7C C6 02 14 */	add r6, r6, r0
/* 802DF13C 002DC09C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802DF140 002DC0A0  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DF144 002DC0A4  90 C1 00 08 */	stw r6, 8(r1)
/* 802DF148 002DC0A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802DF14C 002DC0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF150 002DC0B0  48 00 00 99 */	bl sub_802df1e8
/* 802DF154 002DC0B4  80 1D 00 04 */	lwz r0, 4(r29)
/* 802DF158 002DC0B8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DF15C 002DC0BC  54 00 28 34 */	slwi r0, r0, 5
/* 802DF160 002DC0C0  7C 83 02 14 */	add r4, r3, r0
/* 802DF164 002DC0C4  48 00 00 39 */	bl sub_802df19c
/* 802DF168 002DC0C8  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 802DF16C 002DC0CC  28 03 00 00 */	cmplwi r3, 0
/* 802DF170 002DC0D0  41 82 00 08 */	beq lbl_802DF178
/* 802DF174 002DC0D4  48 03 67 BD */	bl Free__7CMemoryFPCv
lbl_802DF178:
/* 802DF178 002DC0D8  93 FD 00 0C */	stw r31, 0xc(r29)
/* 802DF17C 002DC0DC  93 DD 00 08 */	stw r30, 8(r29)
lbl_802DF180:
/* 802DF180 002DC0E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802DF184 002DC0E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802DF188 002DC0E8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802DF18C 002DC0EC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802DF190 002DC0F0  7C 08 03 A6 */	mtlr r0
/* 802DF194 002DC0F4  38 21 00 30 */	addi r1, r1, 0x30
/* 802DF198 002DC0F8  4E 80 00 20 */	blr

.global sub_802df19c
sub_802df19c:
/* 802DF19C 002DC0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF1A0 002DC100  7C 08 02 A6 */	mflr r0
/* 802DF1A4 002DC104  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF1A8 002DC108  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF1AC 002DC10C  7C 7F 1B 78 */	mr r31, r3
/* 802DF1B0 002DC110  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF1B4 002DC114  7C 9E 23 78 */	mr r30, r4
/* 802DF1B8 002DC118  48 00 00 10 */	b lbl_802DF1C8
lbl_802DF1BC:
/* 802DF1BC 002DC11C  7F E3 FB 78 */	mr r3, r31
/* 802DF1C0 002DC120  4B FF E7 A5 */	bl sub_802dd964
/* 802DF1C4 002DC124  3B FF 00 20 */	addi r31, r31, 0x20
lbl_802DF1C8:
/* 802DF1C8 002DC128  7C 1F F0 40 */	cmplw r31, r30
/* 802DF1CC 002DC12C  40 82 FF F0 */	bne lbl_802DF1BC
/* 802DF1D0 002DC130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF1D4 002DC134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF1D8 002DC138  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF1DC 002DC13C  7C 08 03 A6 */	mtlr r0
/* 802DF1E0 002DC140  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF1E4 002DC144  4E 80 00 20 */	blr

.global sub_802df1e8
sub_802df1e8:
/* 802DF1E8 002DC148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF1EC 002DC14C  7C 08 02 A6 */	mflr r0
/* 802DF1F0 002DC150  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF1F4 002DC154  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DF1F8 002DC158  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DF1FC 002DC15C  7C BE 2B 78 */	mr r30, r5
/* 802DF200 002DC160  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DF204 002DC164  7C 9D 23 78 */	mr r29, r4
/* 802DF208 002DC168  83 E3 00 00 */	lwz r31, 0(r3)
/* 802DF20C 002DC16C  48 00 00 18 */	b lbl_802DF224
lbl_802DF210:
/* 802DF210 002DC170  7F C3 F3 78 */	mr r3, r30
/* 802DF214 002DC174  7F E4 FB 78 */	mr r4, r31
/* 802DF218 002DC178  4B FF E7 71 */	bl sub_802dd988
/* 802DF21C 002DC17C  3B DE 00 20 */	addi r30, r30, 0x20
/* 802DF220 002DC180  3B FF 00 20 */	addi r31, r31, 0x20
lbl_802DF224:
/* 802DF224 002DC184  80 1D 00 00 */	lwz r0, 0(r29)
/* 802DF228 002DC188  7C 1F 00 40 */	cmplw r31, r0
/* 802DF22C 002DC18C  40 82 FF E4 */	bne lbl_802DF210
/* 802DF230 002DC190  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF234 002DC194  7F C3 F3 78 */	mr r3, r30
/* 802DF238 002DC198  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DF23C 002DC19C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DF240 002DC1A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DF244 002DC1A4  7C 08 03 A6 */	mtlr r0
/* 802DF248 002DC1A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF24C 002DC1AC  4E 80 00 20 */	blr

.global sub_802df250
sub_802df250:
/* 802DF250 002DC1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF254 002DC1B4  7C 08 02 A6 */	mflr r0
/* 802DF258 002DC1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF25C 002DC1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF260 002DC1C0  7C 9F 23 78 */	mr r31, r4
/* 802DF264 002DC1C4  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF268 002DC1C8  7C 7E 1B 78 */	mr r30, r3
/* 802DF26C 002DC1CC  80 84 00 00 */	lwz r4, 0(r4)
/* 802DF270 002DC1D0  28 04 00 00 */	cmplwi r4, 0
/* 802DF274 002DC1D4  41 82 00 08 */	beq lbl_802DF27C
/* 802DF278 002DC1D8  4B FF FF D9 */	bl sub_802df250
lbl_802DF27C:
/* 802DF27C 002DC1DC  80 9F 00 04 */	lwz r4, 4(r31)
/* 802DF280 002DC1E0  28 04 00 00 */	cmplwi r4, 0
/* 802DF284 002DC1E4  41 82 00 0C */	beq lbl_802DF290
/* 802DF288 002DC1E8  7F C3 F3 78 */	mr r3, r30
/* 802DF28C 002DC1EC  4B FF FF C5 */	bl sub_802df250
lbl_802DF290:
/* 802DF290 002DC1F0  28 1F 00 00 */	cmplwi r31, 0
/* 802DF294 002DC1F4  41 82 00 0C */	beq lbl_802DF2A0
/* 802DF298 002DC1F8  7F E3 FB 78 */	mr r3, r31
/* 802DF29C 002DC1FC  48 03 66 95 */	bl Free__7CMemoryFPCv
lbl_802DF2A0:
/* 802DF2A0 002DC200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF2A4 002DC204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF2A8 002DC208  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF2AC 002DC20C  7C 08 03 A6 */	mtlr r0
/* 802DF2B0 002DC210  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF2B4 002DC214  4E 80 00 20 */	blr

.global "insert_into__Q24rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>FPQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>4nodeRCUi"
"insert_into__Q24rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>FPQ34rstl89red_black_tree<Ui,Ui,0,Q24rstl12identity<Ui>,Q24rstl8less<Ui>,Q24rstl17rmemory_allocator>4nodeRCUi":
/* 802DF2B8 002DC218  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DF2BC 002DC21C  7C 08 02 A6 */	mflr r0
/* 802DF2C0 002DC220  28 05 00 00 */	cmplwi r5, 0
/* 802DF2C4 002DC224  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DF2C8 002DC228  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802DF2CC 002DC22C  7C 7C 1B 78 */	mr r28, r3
/* 802DF2D0 002DC230  7C 9D 23 78 */	mr r29, r4
/* 802DF2D4 002DC234  7C DE 33 78 */	mr r30, r6
/* 802DF2D8 002DC238  40 82 00 80 */	bne lbl_802DF358
/* 802DF2DC 002DC23C  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DF2E0 002DC240  38 60 00 14 */	li r3, 0x14
/* 802DF2E4 002DC244  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DF2E8 002DC248  38 A0 00 00 */	li r5, 0
/* 802DF2EC 002DC24C  48 03 65 2D */	bl __nwa__FUlPCcPCc
/* 802DF2F0 002DC250  28 03 00 00 */	cmplwi r3, 0
/* 802DF2F4 002DC254  41 82 00 28 */	beq lbl_802DF31C
/* 802DF2F8 002DC258  38 00 00 00 */	li r0, 0
/* 802DF2FC 002DC25C  34 83 00 10 */	addic. r4, r3, 0x10
/* 802DF300 002DC260  90 03 00 00 */	stw r0, 0(r3)
/* 802DF304 002DC264  90 03 00 04 */	stw r0, 4(r3)
/* 802DF308 002DC268  90 03 00 08 */	stw r0, 8(r3)
/* 802DF30C 002DC26C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DF310 002DC270  41 82 00 0C */	beq lbl_802DF31C
/* 802DF314 002DC274  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DF318 002DC278  90 04 00 00 */	stw r0, 0(r4)
lbl_802DF31C:
/* 802DF31C 002DC27C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 802DF320 002DC280  38 1D 00 08 */	addi r0, r29, 8
/* 802DF324 002DC284  80 7D 00 04 */	lwz r3, 4(r29)
/* 802DF328 002DC288  38 63 00 01 */	addi r3, r3, 1
/* 802DF32C 002DC28C  90 7D 00 04 */	stw r3, 4(r29)
/* 802DF330 002DC290  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802DF334 002DC294  90 7D 00 08 */	stw r3, 8(r29)
/* 802DF338 002DC298  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802DF33C 002DC29C  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802DF340 002DC2A0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802DF344 002DC2A4  90 7C 00 00 */	stw r3, 0(r28)
/* 802DF348 002DC2A8  90 1C 00 04 */	stw r0, 4(r28)
/* 802DF34C 002DC2AC  88 0D 9B 48 */	lbz r0, lbl_805A8708@sda21(r13)
/* 802DF350 002DC2B0  98 1C 00 08 */	stb r0, 8(r28)
/* 802DF354 002DC2B4  48 00 01 6C */	b lbl_802DF4C0
lbl_802DF358:
/* 802DF358 002DC2B8  7C BF 2B 78 */	mr r31, r5
/* 802DF35C 002DC2BC  3B 60 00 00 */	li r27, 0
/* 802DF360 002DC2C0  48 00 01 2C */	b lbl_802DF48C
lbl_802DF364:
/* 802DF364 002DC2C4  80 7E 00 00 */	lwz r3, 0(r30)
/* 802DF368 002DC2C8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802DF36C 002DC2CC  7C 80 1A 78 */	xor r0, r4, r3
/* 802DF370 002DC2D0  7C 00 00 34 */	cntlzw r0, r0
/* 802DF374 002DC2D4  7C 80 00 30 */	slw r0, r4, r0
/* 802DF378 002DC2D8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 802DF37C 002DC2DC  40 82 00 24 */	bne lbl_802DF3A0
/* 802DF380 002DC2E0  7C 04 18 40 */	cmplw r4, r3
/* 802DF384 002DC2E4  41 80 00 1C */	blt lbl_802DF3A0
/* 802DF388 002DC2E8  93 FC 00 00 */	stw r31, 0(r28)
/* 802DF38C 002DC2EC  38 1D 00 08 */	addi r0, r29, 8
/* 802DF390 002DC2F0  90 1C 00 04 */	stw r0, 4(r28)
/* 802DF394 002DC2F4  88 0D 9B 49 */	lbz r0, lbl_805A8709@sda21(r13)
/* 802DF398 002DC2F8  98 1C 00 08 */	stb r0, 8(r28)
/* 802DF39C 002DC2FC  48 00 01 24 */	b lbl_802DF4C0
lbl_802DF3A0:
/* 802DF3A0 002DC300  28 00 00 00 */	cmplwi r0, 0
/* 802DF3A4 002DC304  41 82 00 78 */	beq lbl_802DF41C
/* 802DF3A8 002DC308  80 1F 00 00 */	lwz r0, 0(r31)
/* 802DF3AC 002DC30C  28 00 00 00 */	cmplwi r0, 0
/* 802DF3B0 002DC310  40 82 00 64 */	bne lbl_802DF414
/* 802DF3B4 002DC314  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DF3B8 002DC318  38 60 00 14 */	li r3, 0x14
/* 802DF3BC 002DC31C  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DF3C0 002DC320  38 A0 00 00 */	li r5, 0
/* 802DF3C4 002DC324  48 03 64 55 */	bl __nwa__FUlPCcPCc
/* 802DF3C8 002DC328  28 03 00 00 */	cmplwi r3, 0
/* 802DF3CC 002DC32C  41 82 00 2C */	beq lbl_802DF3F8
/* 802DF3D0 002DC330  38 80 00 00 */	li r4, 0
/* 802DF3D4 002DC334  34 A3 00 10 */	addic. r5, r3, 0x10
/* 802DF3D8 002DC338  90 83 00 00 */	stw r4, 0(r3)
/* 802DF3DC 002DC33C  38 00 00 01 */	li r0, 1
/* 802DF3E0 002DC340  90 83 00 04 */	stw r4, 4(r3)
/* 802DF3E4 002DC344  93 E3 00 08 */	stw r31, 8(r3)
/* 802DF3E8 002DC348  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DF3EC 002DC34C  41 82 00 0C */	beq lbl_802DF3F8
/* 802DF3F0 002DC350  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DF3F4 002DC354  90 05 00 00 */	stw r0, 0(r5)
lbl_802DF3F8:
/* 802DF3F8 002DC358  90 7F 00 00 */	stw r3, 0(r31)
/* 802DF3FC 002DC35C  7C 7B 1B 78 */	mr r27, r3
/* 802DF400 002DC360  80 1D 00 08 */	lwz r0, 8(r29)
/* 802DF404 002DC364  7C 1F 00 40 */	cmplw r31, r0
/* 802DF408 002DC368  40 82 00 84 */	bne lbl_802DF48C
/* 802DF40C 002DC36C  90 7D 00 08 */	stw r3, 8(r29)
/* 802DF410 002DC370  48 00 00 7C */	b lbl_802DF48C
lbl_802DF414:
/* 802DF414 002DC374  7C 1F 03 78 */	mr r31, r0
/* 802DF418 002DC378  48 00 00 74 */	b lbl_802DF48C
lbl_802DF41C:
/* 802DF41C 002DC37C  80 1F 00 04 */	lwz r0, 4(r31)
/* 802DF420 002DC380  28 00 00 00 */	cmplwi r0, 0
/* 802DF424 002DC384  40 82 00 64 */	bne lbl_802DF488
/* 802DF428 002DC388  3C 80 80 3D */	lis r4, lbl_803D6D48@ha
/* 802DF42C 002DC38C  38 60 00 14 */	li r3, 0x14
/* 802DF430 002DC390  38 84 6D 48 */	addi r4, r4, lbl_803D6D48@l
/* 802DF434 002DC394  38 A0 00 00 */	li r5, 0
/* 802DF438 002DC398  48 03 63 E1 */	bl __nwa__FUlPCcPCc
/* 802DF43C 002DC39C  28 03 00 00 */	cmplwi r3, 0
/* 802DF440 002DC3A0  41 82 00 2C */	beq lbl_802DF46C
/* 802DF444 002DC3A4  38 80 00 00 */	li r4, 0
/* 802DF448 002DC3A8  34 A3 00 10 */	addic. r5, r3, 0x10
/* 802DF44C 002DC3AC  90 83 00 00 */	stw r4, 0(r3)
/* 802DF450 002DC3B0  38 00 00 01 */	li r0, 1
/* 802DF454 002DC3B4  90 83 00 04 */	stw r4, 4(r3)
/* 802DF458 002DC3B8  93 E3 00 08 */	stw r31, 8(r3)
/* 802DF45C 002DC3BC  90 03 00 0C */	stw r0, 0xc(r3)
/* 802DF460 002DC3C0  41 82 00 0C */	beq lbl_802DF46C
/* 802DF464 002DC3C4  80 1E 00 00 */	lwz r0, 0(r30)
/* 802DF468 002DC3C8  90 05 00 00 */	stw r0, 0(r5)
lbl_802DF46C:
/* 802DF46C 002DC3CC  90 7F 00 04 */	stw r3, 4(r31)
/* 802DF470 002DC3D0  7C 7B 1B 78 */	mr r27, r3
/* 802DF474 002DC3D4  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 802DF478 002DC3D8  7C 1F 00 40 */	cmplw r31, r0
/* 802DF47C 002DC3DC  40 82 00 10 */	bne lbl_802DF48C
/* 802DF480 002DC3E0  90 7D 00 0C */	stw r3, 0xc(r29)
/* 802DF484 002DC3E4  48 00 00 08 */	b lbl_802DF48C
lbl_802DF488:
/* 802DF488 002DC3E8  7C 1F 03 78 */	mr r31, r0
lbl_802DF48C:
/* 802DF48C 002DC3EC  28 1B 00 00 */	cmplwi r27, 0
/* 802DF490 002DC3F0  41 82 FE D4 */	beq lbl_802DF364
/* 802DF494 002DC3F4  80 BD 00 04 */	lwz r5, 4(r29)
/* 802DF498 002DC3F8  7F 64 DB 78 */	mr r4, r27
/* 802DF49C 002DC3FC  38 7D 00 08 */	addi r3, r29, 8
/* 802DF4A0 002DC400  38 05 00 01 */	addi r0, r5, 1
/* 802DF4A4 002DC404  90 1D 00 04 */	stw r0, 4(r29)
/* 802DF4A8 002DC408  48 05 D5 F1 */	bl rbtree_rebalance__4rstlFPvPv
/* 802DF4AC 002DC40C  93 7C 00 00 */	stw r27, 0(r28)
/* 802DF4B0 002DC410  38 1D 00 08 */	addi r0, r29, 8
/* 802DF4B4 002DC414  90 1C 00 04 */	stw r0, 4(r28)
/* 802DF4B8 002DC418  88 0D 9B 4A */	lbz r0, lbl_805A870A@sda21(r13)
/* 802DF4BC 002DC41C  98 1C 00 08 */	stb r0, 8(r28)
lbl_802DF4C0:
/* 802DF4C0 002DC420  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 802DF4C4 002DC424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DF4C8 002DC428  7C 08 03 A6 */	mtlr r0
/* 802DF4CC 002DC42C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DF4D0 002DC430  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D6D48
lbl_803D6D48:
	# ROM: 0x3D3D48
	.asciz "??(??)"
	.balign 4


.include "macros.inc"

.section .sbss, "wa"

.global lbl_805A9338
lbl_805A9338:
	.skip 0x4
.global lbl_805A933C
lbl_805A933C:
	.skip 0x4

.section .text, "ax"

.global GetEndRank__16CWordBreakTablesFw
GetEndRank__16CWordBreakTablesFw:
/* 803059A0 00302900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803059A4 00302904  7C 08 02 A6 */	mflr r0
/* 803059A8 00302908  3C 80 80 3D */	lis r4, lbl_803D70C0@ha
/* 803059AC 0030290C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803059B0 00302910  38 84 70 C0 */	addi r4, r4, lbl_803D70C0@l
/* 803059B4 00302914  38 A1 00 08 */	addi r5, r1, 8
/* 803059B8 00302918  38 C1 00 0C */	addi r6, r1, 0xc
/* 803059BC 0030291C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803059C0 00302920  3B E4 02 C8 */	addi r31, r4, 0x2c8
/* 803059C4 00302924  88 0D A7 7C */	lbz r0, lbl_805A933C@sda21(r13)
/* 803059C8 00302928  B0 61 00 08 */	sth r3, 8(r1)
/* 803059CC 0030292C  7C 83 23 78 */	mr r3, r4
/* 803059D0 00302930  7F E4 FB 78 */	mr r4, r31
/* 803059D4 00302934  98 01 00 0C */	stb r0, 0xc(r1)
/* 803059D8 00302938  48 00 00 F1 */	bl "lower_bound<PC20CCharacterIdentifier,w,Q220CCharacterIdentifier7Compare>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierRCwQ220CCharacterIdentifier7Compare"
/* 803059DC 0030293C  7C 03 F8 40 */	cmplw r3, r31
/* 803059E0 00302940  38 A0 00 00 */	li r5, 0
/* 803059E4 00302944  41 82 00 18 */	beq lbl_803059FC
/* 803059E8 00302948  A0 81 00 08 */	lhz r4, 8(r1)
/* 803059EC 0030294C  A0 03 00 00 */	lhz r0, 0(r3)
/* 803059F0 00302950  7C 04 00 40 */	cmplw r4, r0
/* 803059F4 00302954  41 80 00 08 */	blt lbl_803059FC
/* 803059F8 00302958  38 A0 00 01 */	li r5, 1
lbl_803059FC:
/* 803059FC 0030295C  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80305A00 00302960  41 82 00 08 */	beq lbl_80305A08
/* 80305A04 00302964  48 00 00 08 */	b lbl_80305A0C
lbl_80305A08:
/* 80305A08 00302968  7F E3 FB 78 */	mr r3, r31
lbl_80305A0C:
/* 80305A0C 0030296C  7C 03 F8 40 */	cmplw r3, r31
/* 80305A10 00302970  41 82 00 0C */	beq lbl_80305A1C
/* 80305A14 00302974  80 63 00 04 */	lwz r3, 4(r3)
/* 80305A18 00302978  48 00 00 08 */	b lbl_80305A20
lbl_80305A1C:
/* 80305A1C 0030297C  38 60 00 05 */	li r3, 5
lbl_80305A20:
/* 80305A20 00302980  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80305A24 00302984  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80305A28 00302988  7C 08 03 A6 */	mtlr r0
/* 80305A2C 0030298C  38 21 00 20 */	addi r1, r1, 0x20
/* 80305A30 00302990  4E 80 00 20 */	blr

.global GetBeginRank__16CWordBreakTablesFw
GetBeginRank__16CWordBreakTablesFw:
/* 80305A34 00302994  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80305A38 00302998  7C 08 02 A6 */	mflr r0
/* 80305A3C 0030299C  3C 80 80 3D */	lis r4, lbl_803D6EC8@ha
/* 80305A40 003029A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80305A44 003029A4  38 84 6E C8 */	addi r4, r4, lbl_803D6EC8@l
/* 80305A48 003029A8  38 A1 00 08 */	addi r5, r1, 8
/* 80305A4C 003029AC  38 C1 00 0C */	addi r6, r1, 0xc
/* 80305A50 003029B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80305A54 003029B4  3B E4 01 F8 */	addi r31, r4, 0x1f8
/* 80305A58 003029B8  88 0D A7 78 */	lbz r0, lbl_805A9338@sda21(r13)
/* 80305A5C 003029BC  B0 61 00 08 */	sth r3, 8(r1)
/* 80305A60 003029C0  7C 83 23 78 */	mr r3, r4
/* 80305A64 003029C4  7F E4 FB 78 */	mr r4, r31
/* 80305A68 003029C8  98 01 00 0C */	stb r0, 0xc(r1)
/* 80305A6C 003029CC  48 00 00 5D */	bl "lower_bound<PC20CCharacterIdentifier,w,Q220CCharacterIdentifier7Compare>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierRCwQ220CCharacterIdentifier7Compare"
/* 80305A70 003029D0  7C 03 F8 40 */	cmplw r3, r31
/* 80305A74 003029D4  38 A0 00 00 */	li r5, 0
/* 80305A78 003029D8  41 82 00 18 */	beq lbl_80305A90
/* 80305A7C 003029DC  A0 81 00 08 */	lhz r4, 8(r1)
/* 80305A80 003029E0  A0 03 00 00 */	lhz r0, 0(r3)
/* 80305A84 003029E4  7C 04 00 40 */	cmplw r4, r0
/* 80305A88 003029E8  41 80 00 08 */	blt lbl_80305A90
/* 80305A8C 003029EC  38 A0 00 01 */	li r5, 1
lbl_80305A90:
/* 80305A90 003029F0  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80305A94 003029F4  41 82 00 08 */	beq lbl_80305A9C
/* 80305A98 003029F8  48 00 00 08 */	b lbl_80305AA0
lbl_80305A9C:
/* 80305A9C 003029FC  7F E3 FB 78 */	mr r3, r31
lbl_80305AA0:
/* 80305AA0 00302A00  7C 03 F8 40 */	cmplw r3, r31
/* 80305AA4 00302A04  41 82 00 0C */	beq lbl_80305AB0
/* 80305AA8 00302A08  80 63 00 04 */	lwz r3, 4(r3)
/* 80305AAC 00302A0C  48 00 00 08 */	b lbl_80305AB4
lbl_80305AB0:
/* 80305AB0 00302A10  38 60 00 05 */	li r3, 5
lbl_80305AB4:
/* 80305AB4 00302A14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80305AB8 00302A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80305ABC 00302A1C  7C 08 03 A6 */	mtlr r0
/* 80305AC0 00302A20  38 21 00 20 */	addi r1, r1, 0x20
/* 80305AC4 00302A24  4E 80 00 20 */	blr

.global "lower_bound<PC20CCharacterIdentifier,w,Q220CCharacterIdentifier7Compare>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierRCwQ220CCharacterIdentifier7Compare"
"lower_bound<PC20CCharacterIdentifier,w,Q220CCharacterIdentifier7Compare>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierRCwQ220CCharacterIdentifier7Compare":
/* 80305AC8 00302A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80305ACC 00302A2C  7C 08 02 A6 */	mflr r0
/* 80305AD0 00302A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80305AD4 00302A34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80305AD8 00302A38  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80305ADC 00302A3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80305AE0 00302A40  7C BD 2B 78 */	mr r29, r5
/* 80305AE4 00302A44  93 81 00 10 */	stw r28, 0x10(r1)
/* 80305AE8 00302A48  7C 7C 1B 78 */	mr r28, r3
/* 80305AEC 00302A4C  48 00 00 C1 */	bl "distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifier"
/* 80305AF0 00302A50  93 81 00 08 */	stw r28, 8(r1)
/* 80305AF4 00302A54  7C 7F 1B 78 */	mr r31, r3
/* 80305AF8 00302A58  48 00 00 48 */	b lbl_80305B40
lbl_80305AFC:
/* 80305AFC 00302A5C  57 E0 0F FE */	srwi r0, r31, 0x1f
/* 80305B00 00302A60  93 81 00 08 */	stw r28, 8(r1)
/* 80305B04 00302A64  7C 00 FA 14 */	add r0, r0, r31
/* 80305B08 00302A68  38 61 00 08 */	addi r3, r1, 8
/* 80305B0C 00302A6C  7C 1E 0E 70 */	srawi r30, r0, 1
/* 80305B10 00302A70  7F C4 F3 78 */	mr r4, r30
/* 80305B14 00302A74  48 00 00 59 */	bl "advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieri"
/* 80305B18 00302A78  80 81 00 08 */	lwz r4, 8(r1)
/* 80305B1C 00302A7C  A0 1D 00 00 */	lhz r0, 0(r29)
/* 80305B20 00302A80  A0 64 00 00 */	lhz r3, 0(r4)
/* 80305B24 00302A84  7C 03 00 40 */	cmplw r3, r0
/* 80305B28 00302A88  40 80 00 14 */	bge lbl_80305B3C
/* 80305B2C 00302A8C  7C 7E F8 50 */	subf r3, r30, r31
/* 80305B30 00302A90  3B 84 00 08 */	addi r28, r4, 8
/* 80305B34 00302A94  3B E3 FF FF */	addi r31, r3, -1
/* 80305B38 00302A98  48 00 00 08 */	b lbl_80305B40
lbl_80305B3C:
/* 80305B3C 00302A9C  7F DF F3 78 */	mr r31, r30
lbl_80305B40:
/* 80305B40 00302AA0  2C 1F 00 00 */	cmpwi r31, 0
/* 80305B44 00302AA4  41 81 FF B8 */	bgt lbl_80305AFC
/* 80305B48 00302AA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80305B4C 00302AAC  7F 83 E3 78 */	mr r3, r28
/* 80305B50 00302AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80305B54 00302AB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80305B58 00302AB8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80305B5C 00302ABC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80305B60 00302AC0  7C 08 03 A6 */	mtlr r0
/* 80305B64 00302AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80305B68 00302AC8  4E 80 00 20 */	blr

.global "advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieri"
"advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieri":
/* 80305B6C 00302ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305B70 00302AD0  7C 08 02 A6 */	mflr r0
/* 80305B74 00302AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305B78 00302AD8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80305B7C 00302ADC  88 01 00 08 */	lbz r0, 8(r1)
/* 80305B80 00302AE0  98 01 00 0C */	stb r0, 0xc(r1)
/* 80305B84 00302AE4  48 00 00 15 */	bl "__advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieriQ24rstl26random_access_iterator_tag"
/* 80305B88 00302AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305B8C 00302AEC  7C 08 03 A6 */	mtlr r0
/* 80305B90 00302AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80305B94 00302AF4  4E 80 00 20 */	blr

.global "__advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieriQ24rstl26random_access_iterator_tag"
"__advance<PC20CCharacterIdentifier,i>__4rstlFRPC20CCharacterIdentifieriQ24rstl26random_access_iterator_tag":
/* 80305B98 00302AF8  80 A3 00 00 */	lwz r5, 0(r3)
/* 80305B9C 00302AFC  54 80 18 38 */	slwi r0, r4, 3
/* 80305BA0 00302B00  7C 05 02 14 */	add r0, r5, r0
/* 80305BA4 00302B04  90 03 00 00 */	stw r0, 0(r3)
/* 80305BA8 00302B08  4E 80 00 20 */	blr

.global "distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifier"
"distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifier":
/* 80305BAC 00302B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80305BB0 00302B10  7C 08 02 A6 */	mflr r0
/* 80305BB4 00302B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80305BB8 00302B18  38 A1 00 0C */	addi r5, r1, 0xc
/* 80305BBC 00302B1C  88 01 00 08 */	lbz r0, 8(r1)
/* 80305BC0 00302B20  98 01 00 0C */	stb r0, 0xc(r1)
/* 80305BC4 00302B24  48 00 00 15 */	bl "__distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierQ24rstl26random_access_iterator_tag"
/* 80305BC8 00302B28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80305BCC 00302B2C  7C 08 03 A6 */	mtlr r0
/* 80305BD0 00302B30  38 21 00 10 */	addi r1, r1, 0x10
/* 80305BD4 00302B34  4E 80 00 20 */	blr

.global "__distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierQ24rstl26random_access_iterator_tag"
"__distance<PC20CCharacterIdentifier>__4rstlFPC20CCharacterIdentifierPC20CCharacterIdentifierQ24rstl26random_access_iterator_tag":
/* 80305BD8 00302B38  7C 03 20 50 */	subf r0, r3, r4
/* 80305BDC 00302B3C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80305BE0 00302B40  7C 60 01 94 */	addze r3, r0
/* 80305BE4 00302B44  4E 80 00 20 */	blr

.section .rodata
.global lbl_803D6EC8
lbl_803D6EC8:
	# ROM: 0x3D3EC8
	.4byte 0x00210000
	.4byte 0x00000001
	.4byte 0x00290000
	.4byte 0x00000001
	.4byte 0x002C0000
	.4byte 0x00000001
	.4byte 0x002D0000
	.4byte 0x00000001
	.4byte 0x002E0000
	.4byte 0x00000001
	.4byte 0x003A0000
	.4byte 0x00000001
	.4byte 0x003B0000
	.4byte 0x00000001
	.4byte 0x003F0000
	.4byte 0x00000001
	.4byte 0x005D0000
	.4byte 0x00000001
	.4byte 0x007D0000
	.4byte 0x00000001
	.4byte 0x00920000
	.4byte 0x00000001
	.4byte 0x00940000
	.4byte 0x00000001
	.4byte 0x00BB0000
	.4byte 0x00000001
	.4byte 0x30010000
	.4byte 0x00000001
	.4byte 0x30020000
	.4byte 0x00000001
	.4byte 0x30050000
	.4byte 0x00000001
	.4byte 0x300D0000
	.4byte 0x00000001
	.4byte 0x300F0000
	.4byte 0x00000001
	.4byte 0x30110000
	.4byte 0x00000001
	.4byte 0x30150000
	.4byte 0x00000001
	.4byte 0x30170000
	.4byte 0x00000001
	.4byte 0x30190000
	.4byte 0x00000001
	.4byte 0x301B0000
	.4byte 0x00000001
	.4byte 0x301C0000
	.4byte 0x00000003
	.4byte 0x301E0000
	.4byte 0x00000001
	.4byte 0x302B0000
	.4byte 0x00000003
	.4byte 0x30410000
	.4byte 0x00000002
	.4byte 0x30430000
	.4byte 0x00000002
	.4byte 0x30450000
	.4byte 0x00000002
	.4byte 0x30470000
	.4byte 0x00000002
	.4byte 0x30490000
	.4byte 0x00000002
	.4byte 0x30630000
	.4byte 0x00000002
	.4byte 0x30830000
	.4byte 0x00000002
	.4byte 0x30850000
	.4byte 0x00000002
	.4byte 0x30870000
	.4byte 0x00000002
	.4byte 0x308E0000
	.4byte 0x00000002
	.4byte 0x309D0000
	.4byte 0x00000003
	.4byte 0x309E0000
	.4byte 0x00000003
	.4byte 0x30A10000
	.4byte 0x00000002
	.4byte 0x30A30000
	.4byte 0x00000002
	.4byte 0x30A50000
	.4byte 0x00000002
	.4byte 0x30A70000
	.4byte 0x00000002
	.4byte 0x30A90000
	.4byte 0x00000002
	.4byte 0x30C30000
	.4byte 0x00000002
	.4byte 0x30E30000
	.4byte 0x00000002
	.4byte 0x30E50000
	.4byte 0x00000002
	.4byte 0x30E70000
	.4byte 0x00000002
	.4byte 0x30EE0000
	.4byte 0x00000002
	.4byte 0x30F50000
	.4byte 0x00000002
	.4byte 0x30F60000
	.4byte 0x00000002
	.4byte 0x30FC0000
	.4byte 0x00000002
	.4byte 0x30FD0000
	.4byte 0x00000003
	.4byte 0x30FE0000
	.4byte 0x00000003
	.4byte 0xFF010000
	.4byte 0x00000001
	.4byte 0xFF050000
	.4byte 0x00000003
	.4byte 0xFF090000
	.4byte 0x00000001
	.4byte 0xFF0D0000
	.4byte 0x00000001
	.4byte 0xFF3D0000
	.4byte 0x00000001
	.4byte 0xFF5D0000
	.4byte 0x00000001
	.4byte 0xFF610000
	.4byte 0x00000001
	.4byte 0xFF630000
	.4byte 0x00000001
	.4byte 0xFF640000
	.4byte 0x00000001
	.4byte 0xFF1F0000
	.4byte 0x00000001

.global lbl_803D70C0
lbl_803D70C0:
	# ROM: 0x3D40C0
	.4byte 0x00230000
	.4byte 0x00000002
	.4byte 0x00240000
	.4byte 0x00000002
	.4byte 0x00280000
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x00000002
	.4byte 0x00420000
	.4byte 0x00000004
	.4byte 0x00430000
	.4byte 0x00000004
	.4byte 0x00440000
	.4byte 0x00000004
	.4byte 0x00460000
	.4byte 0x00000004
	.4byte 0x00470000
	.4byte 0x00000004
	.4byte 0x00480000
	.4byte 0x00000004
	.4byte 0x004A0000
	.4byte 0x00000004
	.4byte 0x004B0000
	.4byte 0x00000004
	.4byte 0x004C0000
	.4byte 0x00000004
	.4byte 0x004D0000
	.4byte 0x00000004
	.4byte 0x004E0000
	.4byte 0x00000004
	.4byte 0x00500000
	.4byte 0x00000004
	.4byte 0x00510000
	.4byte 0x00000004
	.4byte 0x00520000
	.4byte 0x00000004
	.4byte 0x00530000
	.4byte 0x00000004
	.4byte 0x00540000
	.4byte 0x00000004
	.4byte 0x00560000
	.4byte 0x00000004
	.4byte 0x00570000
	.4byte 0x00000004
	.4byte 0x00580000
	.4byte 0x00000004
	.4byte 0x00590000
	.4byte 0x00000004
	.4byte 0x005A0000
	.4byte 0x00000004
	.4byte 0x00620000
	.4byte 0x00000004
	.4byte 0x00630000
	.4byte 0x00000004
	.4byte 0x00640000
	.4byte 0x00000004
	.4byte 0x00660000
	.4byte 0x00000004
	.4byte 0x00670000
	.4byte 0x00000004
	.4byte 0x00680000
	.4byte 0x00000004
	.4byte 0x006A0000
	.4byte 0x00000004
	.4byte 0x006B0000
	.4byte 0x00000004
	.4byte 0x006C0000
	.4byte 0x00000004
	.4byte 0x006D0000
	.4byte 0x00000004
	.4byte 0x006E0000
	.4byte 0x00000004
	.4byte 0x00700000
	.4byte 0x00000004
	.4byte 0x00710000
	.4byte 0x00000004
	.4byte 0x00720000
	.4byte 0x00000004
	.4byte 0x00730000
	.4byte 0x00000004
	.4byte 0x00740000
	.4byte 0x00000004
	.4byte 0x00760000
	.4byte 0x00000004
	.4byte 0x00770000
	.4byte 0x00000004
	.4byte 0x00780000
	.4byte 0x00000004
	.4byte 0x00790000
	.4byte 0x00000004
	.4byte 0x007A0000
	.4byte 0x00000004
	.4byte 0x00D10000
	.4byte 0x00000004
	.4byte 0x00F10000
	.4byte 0x00000004
	.4byte 0x005B0000
	.4byte 0x00000001
	.4byte 0x007B0000
	.4byte 0x00000001
	.4byte 0x00910000
	.4byte 0x00000001
	.4byte 0x00930000
	.4byte 0x00000001
	.4byte 0x00910000
	.4byte 0x00000001
	.4byte 0x00930000
	.4byte 0x00000001
	.4byte 0x00A20000
	.4byte 0x00000002
	.4byte 0x00A30000
	.4byte 0x00000002
	.4byte 0x00A50000
	.4byte 0x00000002
	.4byte 0x00A70000
	.4byte 0x00000002
	.4byte 0x00A90000
	.4byte 0x00000002
	.4byte 0x00AB0000
	.4byte 0x00000001
	.4byte 0x20A00000
	.4byte 0x00000002
	.4byte 0x20A10000
	.4byte 0x00000002
	.4byte 0x20A20000
	.4byte 0x00000002
	.4byte 0x20A30000
	.4byte 0x00000002
	.4byte 0x20A40000
	.4byte 0x00000002
	.4byte 0x20A50000
	.4byte 0x00000002
	.4byte 0x20A60000
	.4byte 0x00000002
	.4byte 0x20A70000
	.4byte 0x00000002
	.4byte 0x20A80000
	.4byte 0x00000002
	.4byte 0x20A90000
	.4byte 0x00000002
	.4byte 0x20AA0000
	.4byte 0x00000002
	.4byte 0x20AB0000
	.4byte 0x00000002
	.4byte 0x20AC0000
	.4byte 0x00000002
	.4byte 0x300C0000
	.4byte 0x00000001
	.4byte 0x300E0000
	.4byte 0x00000001
	.4byte 0x30100000
	.4byte 0x00000001
	.4byte 0x30120000
	.4byte 0x00000002
	.4byte 0x30140000
	.4byte 0x00000001
	.4byte 0x30160000
	.4byte 0x00000001
	.4byte 0x30180000
	.4byte 0x00000001
	.4byte 0x301A0000
	.4byte 0x00000001
	.4byte 0xFF030000
	.4byte 0x00000002
	.4byte 0xFF040000
	.4byte 0x00000002
	.4byte 0xFF200000
	.4byte 0x00000002
	.4byte 0xFF3C0000
	.4byte 0x00000001
	.4byte 0xFF5C0000
	.4byte 0x00000001
	.4byte 0xFFE00000
	.4byte 0x00000002
	.4byte 0xFFE10000
	.4byte 0x00000002
	.4byte 0xFFEF0000
	.4byte 0x00000002

